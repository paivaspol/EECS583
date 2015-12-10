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
  tail call void @llvm.dbg.value(metadata !{i8* %s}, i64 0, metadata !158), !dbg !769
  tail call void @llvm.dbg.value(metadata !{i32 %i}, i64 0, metadata !159), !dbg !769
  tail call void @llvm.dbg.value(metadata !{i32 %nr}, i64 0, metadata !160), !dbg !769
  tail call void @llvm.dbg.value(metadata !{i8* %file}, i64 0, metadata !161), !dbg !769
  tail call void @llvm.dbg.value(metadata !{i32 %line}, i64 0, metadata !162), !dbg !769
  %cmp = icmp sgt i32 %i, -1, !dbg !770
  %cmp1 = icmp slt i32 %i, %nr, !dbg !770
  %or.cond = and i1 %cmp, %cmp1, !dbg !770
  br i1 %or.cond, label %if.end, label %if.then, !dbg !770

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stdlog, align 8, !dbg !771, !tbaa !773
  %sub = add nsw i32 %nr, -1, !dbg !771
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([49 x i8]* @.str, i64 0, i64 0), i8* %s, i32 %i, i32 %sub, i8* %file, i32 %line) #5, !dbg !771
  br label %if.end, !dbg !776

if.end:                                           ; preds = %entry, %if.then
  ret void, !dbg !777
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #2

; Function Attrs: nounwind optsize uwtable
define void @calc_recipbox([3 x float]* nocapture %box, [3 x float]* nocapture %recipbox) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{[3 x float]* %box}, i64 0, metadata !174), !dbg !778
  tail call void @llvm.dbg.value(metadata !{[3 x float]* %recipbox}, i64 0, metadata !175), !dbg !778
  %arrayidx1 = getelementptr inbounds [3 x float]* %box, i64 0, i64 0, !dbg !779
  %0 = load float* %arrayidx1, align 4, !dbg !779, !tbaa !780
  %arrayidx3 = getelementptr inbounds [3 x float]* %box, i64 1, i64 1, !dbg !779
  %1 = load float* %arrayidx3, align 4, !dbg !779, !tbaa !780
  %mul = fmul float %0, %1, !dbg !779
  %arrayidx5 = getelementptr inbounds [3 x float]* %box, i64 2, i64 2, !dbg !779
  %2 = load float* %arrayidx5, align 4, !dbg !779, !tbaa !780
  %mul6 = fmul float %mul, %2, !dbg !779
  %conv7 = fdiv float 1.000000e+00, %mul6, !dbg !779
  tail call void @llvm.dbg.value(metadata !{float %conv7}, i64 0, metadata !176), !dbg !779
  %mul12 = fmul float %1, %2, !dbg !781
  %mul13 = fmul float %mul12, %conv7, !dbg !781
  %arrayidx15 = getelementptr inbounds [3 x float]* %recipbox, i64 0, i64 0, !dbg !781
  store float %mul13, float* %arrayidx15, align 4, !dbg !781, !tbaa !780
  %arrayidx17 = getelementptr inbounds [3 x float]* %recipbox, i64 0, i64 1, !dbg !782
  store float 0.000000e+00, float* %arrayidx17, align 4, !dbg !782, !tbaa !780
  %arrayidx19 = getelementptr inbounds [3 x float]* %recipbox, i64 0, i64 2, !dbg !783
  store float 0.000000e+00, float* %arrayidx19, align 4, !dbg !783, !tbaa !780
  %arrayidx21 = getelementptr inbounds [3 x float]* %box, i64 1, i64 0, !dbg !784
  %3 = load float* %arrayidx21, align 4, !dbg !784, !tbaa !780
  %4 = load float* %arrayidx5, align 4, !dbg !784, !tbaa !780
  %5 = fmul float %3, %4, !dbg !784
  %6 = fmul float %conv7, %5, !dbg !784
  %mul25 = fsub float -0.000000e+00, %6, !dbg !784
  %arrayidx27 = getelementptr inbounds [3 x float]* %recipbox, i64 1, i64 0, !dbg !784
  store float %mul25, float* %arrayidx27, align 4, !dbg !784, !tbaa !780
  %7 = load float* %arrayidx1, align 4, !dbg !785, !tbaa !780
  %8 = load float* %arrayidx5, align 4, !dbg !785, !tbaa !780
  %mul32 = fmul float %7, %8, !dbg !785
  %mul33 = fmul float %conv7, %mul32, !dbg !785
  %arrayidx35 = getelementptr inbounds [3 x float]* %recipbox, i64 1, i64 1, !dbg !785
  store float %mul33, float* %arrayidx35, align 4, !dbg !785, !tbaa !780
  %arrayidx37 = getelementptr inbounds [3 x float]* %recipbox, i64 1, i64 2, !dbg !786
  store float 0.000000e+00, float* %arrayidx37, align 4, !dbg !786, !tbaa !780
  %9 = load float* %arrayidx21, align 4, !dbg !787, !tbaa !780
  %arrayidx41 = getelementptr inbounds [3 x float]* %box, i64 2, i64 1, !dbg !787
  %10 = load float* %arrayidx41, align 4, !dbg !787, !tbaa !780
  %mul42 = fmul float %9, %10, !dbg !787
  %11 = load float* %arrayidx3, align 4, !dbg !787, !tbaa !780
  %arrayidx46 = getelementptr inbounds [3 x float]* %box, i64 2, i64 0, !dbg !787
  %12 = load float* %arrayidx46, align 4, !dbg !787, !tbaa !780
  %mul47 = fmul float %11, %12, !dbg !787
  %sub48 = fsub float %mul42, %mul47, !dbg !787
  %mul49 = fmul float %conv7, %sub48, !dbg !787
  %arrayidx51 = getelementptr inbounds [3 x float]* %recipbox, i64 2, i64 0, !dbg !787
  store float %mul49, float* %arrayidx51, align 4, !dbg !787, !tbaa !780
  %13 = load float* %arrayidx41, align 4, !dbg !788, !tbaa !780
  %14 = load float* %arrayidx1, align 4, !dbg !788, !tbaa !780
  %15 = fmul float %13, %14, !dbg !788
  %16 = fmul float %conv7, %15, !dbg !788
  %mul58 = fsub float -0.000000e+00, %16, !dbg !788
  %arrayidx60 = getelementptr inbounds [3 x float]* %recipbox, i64 2, i64 1, !dbg !788
  store float %mul58, float* %arrayidx60, align 4, !dbg !788, !tbaa !780
  %17 = load float* %arrayidx1, align 4, !dbg !789, !tbaa !780
  %18 = load float* %arrayidx3, align 4, !dbg !789, !tbaa !780
  %mul65 = fmul float %17, %18, !dbg !789
  %mul66 = fmul float %conv7, %mul65, !dbg !789
  %arrayidx68 = getelementptr inbounds [3 x float]* %recipbox, i64 2, i64 2, !dbg !789
  store float %mul66, float* %arrayidx68, align 4, !dbg !789, !tbaa !780
  ret void, !dbg !790
}

; Function Attrs: nounwind optsize uwtable
define void @calc_idx(i32 %natoms, [3 x float]* nocapture %recipbox, [3 x float]* nocapture %x, [3 x float]* nocapture %fractx, [3 x i32]* nocapture %idx, i32 %nx, i32 %ny, i32 %nz, i32* nocapture %nnx, i32* nocapture %nny, i32* nocapture %nnz) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %natoms}, i64 0, metadata !187), !dbg !791
  tail call void @llvm.dbg.value(metadata !{[3 x float]* %recipbox}, i64 0, metadata !188), !dbg !791
  tail call void @llvm.dbg.value(metadata !{[3 x float]* %x}, i64 0, metadata !189), !dbg !792
  tail call void @llvm.dbg.value(metadata !{[3 x float]* %fractx}, i64 0, metadata !190), !dbg !792
  tail call void @llvm.dbg.value(metadata !{[3 x i32]* %idx}, i64 0, metadata !191), !dbg !792
  tail call void @llvm.dbg.value(metadata !{i32 %nx}, i64 0, metadata !192), !dbg !792
  tail call void @llvm.dbg.value(metadata !{i32 %ny}, i64 0, metadata !193), !dbg !792
  tail call void @llvm.dbg.value(metadata !{i32 %nz}, i64 0, metadata !194), !dbg !792
  tail call void @llvm.dbg.value(metadata !{i32* %nnx}, i64 0, metadata !195), !dbg !793
  tail call void @llvm.dbg.value(metadata !{i32* %nny}, i64 0, metadata !196), !dbg !793
  tail call void @llvm.dbg.value(metadata !{i32* %nnz}, i64 0, metadata !197), !dbg !793
  %arrayidx1 = getelementptr inbounds [3 x float]* %recipbox, i64 0, i64 0, !dbg !794
  %0 = load float* %arrayidx1, align 4, !dbg !794, !tbaa !780
  tail call void @llvm.dbg.value(metadata !{float %0}, i64 0, metadata !208), !dbg !794
  %arrayidx3 = getelementptr inbounds [3 x float]* %recipbox, i64 1, i64 0, !dbg !795
  %1 = load float* %arrayidx3, align 4, !dbg !795, !tbaa !780
  tail call void @llvm.dbg.value(metadata !{float %1}, i64 0, metadata !209), !dbg !795
  %arrayidx5 = getelementptr inbounds [3 x float]* %recipbox, i64 1, i64 1, !dbg !796
  %2 = load float* %arrayidx5, align 4, !dbg !796, !tbaa !780
  tail call void @llvm.dbg.value(metadata !{float %2}, i64 0, metadata !210), !dbg !796
  %arrayidx7 = getelementptr inbounds [3 x float]* %recipbox, i64 2, i64 0, !dbg !797
  %3 = load float* %arrayidx7, align 4, !dbg !797, !tbaa !780
  tail call void @llvm.dbg.value(metadata !{float %3}, i64 0, metadata !211), !dbg !797
  %arrayidx9 = getelementptr inbounds [3 x float]* %recipbox, i64 2, i64 1, !dbg !798
  %4 = load float* %arrayidx9, align 4, !dbg !798, !tbaa !780
  tail call void @llvm.dbg.value(metadata !{float %4}, i64 0, metadata !212), !dbg !798
  %arrayidx11 = getelementptr inbounds [3 x float]* %recipbox, i64 2, i64 2, !dbg !799
  %5 = load float* %arrayidx11, align 4, !dbg !799, !tbaa !780
  tail call void @llvm.dbg.value(metadata !{float %5}, i64 0, metadata !213), !dbg !799
  tail call void @llvm.dbg.value(metadata !148, i64 0, metadata !198), !dbg !800
  %cmp95 = icmp sgt i32 %natoms, 0, !dbg !800
  br i1 %cmp95, label %for.body.lr.ph, label %for.end, !dbg !800

for.body.lr.ph:                                   ; preds = %entry
  %conv = sitofp i32 %nx to float, !dbg !802
  %conv25 = sitofp i32 %ny to float, !dbg !804
  %conv34 = sitofp i32 %nz to float, !dbg !805
  br label %for.body, !dbg !800

for.body:                                         ; preds = %for.body, %for.body.lr.ph
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.body ]
  %arraydecay = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv, i64 0, !dbg !806
  tail call void @llvm.dbg.value(metadata !{float* %arraydecay}, i64 0, metadata !203), !dbg !806
  %arraydecay15 = getelementptr inbounds [3 x i32]* %idx, i64 %indvars.iv, i64 0, !dbg !807
  tail call void @llvm.dbg.value(metadata !{i32* %arraydecay15}, i64 0, metadata !199), !dbg !807
  %6 = load float* %arraydecay, align 4, !dbg !802, !tbaa !780
  %mul = fmul float %0, %6, !dbg !802
  %arrayidx18 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv, i64 1, !dbg !802
  %7 = load float* %arrayidx18, align 4, !dbg !802, !tbaa !780
  %mul19 = fmul float %1, %7, !dbg !802
  %add = fadd float %mul, %mul19, !dbg !802
  %arrayidx20 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv, i64 2, !dbg !802
  %8 = load float* %arrayidx20, align 4, !dbg !802, !tbaa !780
  %mul21 = fmul float %3, %8, !dbg !802
  %add22 = fadd float %add, %mul21, !dbg !802
  %mul23 = fmul float %conv, %add22, !dbg !802
  %add24 = fadd float %conv, %mul23, !dbg !802
  tail call void @llvm.dbg.value(metadata !{float %add24}, i64 0, metadata !205), !dbg !802
  %mul28 = fmul float %2, %7, !dbg !804
  %mul30 = fmul float %4, %8, !dbg !804
  %add31 = fadd float %mul28, %mul30, !dbg !804
  %mul32 = fmul float %conv25, %add31, !dbg !804
  %add33 = fadd float %conv25, %mul32, !dbg !804
  tail call void @llvm.dbg.value(metadata !{float %add33}, i64 0, metadata !206), !dbg !804
  %mul37 = fmul float %5, %8, !dbg !805
  %mul38 = fmul float %conv34, %mul37, !dbg !805
  %add39 = fadd float %conv34, %mul38, !dbg !805
  tail call void @llvm.dbg.value(metadata !{float %add39}, i64 0, metadata !207), !dbg !805
  %conv40 = fptosi float %add24 to i32, !dbg !808
  tail call void @llvm.dbg.value(metadata !{i32 %conv40}, i64 0, metadata !200), !dbg !808
  %conv41 = fptosi float %add33 to i32, !dbg !809
  tail call void @llvm.dbg.value(metadata !{i32 %conv41}, i64 0, metadata !201), !dbg !809
  %conv42 = fptosi float %add39 to i32, !dbg !810
  tail call void @llvm.dbg.value(metadata !{i32 %conv42}, i64 0, metadata !202), !dbg !810
  %conv43 = sitofp i32 %conv40 to float, !dbg !811
  %sub = fsub float %add24, %conv43, !dbg !811
  %arrayidx46 = getelementptr inbounds [3 x float]* %fractx, i64 %indvars.iv, i64 0, !dbg !811
  store float %sub, float* %arrayidx46, align 4, !dbg !811, !tbaa !780
  %conv47 = sitofp i32 %conv41 to float, !dbg !812
  %sub48 = fsub float %add33, %conv47, !dbg !812
  %arrayidx51 = getelementptr inbounds [3 x float]* %fractx, i64 %indvars.iv, i64 1, !dbg !812
  store float %sub48, float* %arrayidx51, align 4, !dbg !812, !tbaa !780
  %conv52 = sitofp i32 %conv42 to float, !dbg !813
  %sub53 = fsub float %add39, %conv52, !dbg !813
  %arrayidx56 = getelementptr inbounds [3 x float]* %fractx, i64 %indvars.iv, i64 2, !dbg !813
  store float %sub53, float* %arrayidx56, align 4, !dbg !813, !tbaa !780
  %idxprom57 = sext i32 %conv40 to i64, !dbg !814
  %arrayidx58 = getelementptr inbounds i32* %nnx, i64 %idxprom57, !dbg !814
  %9 = load i32* %arrayidx58, align 4, !dbg !814, !tbaa !815
  store i32 %9, i32* %arraydecay15, align 4, !dbg !814, !tbaa !815
  %idxprom60 = sext i32 %conv41 to i64, !dbg !816
  %arrayidx61 = getelementptr inbounds i32* %nny, i64 %idxprom60, !dbg !816
  %10 = load i32* %arrayidx61, align 4, !dbg !816, !tbaa !815
  %arrayidx62 = getelementptr inbounds [3 x i32]* %idx, i64 %indvars.iv, i64 1, !dbg !816
  store i32 %10, i32* %arrayidx62, align 4, !dbg !816, !tbaa !815
  %idxprom63 = sext i32 %conv42 to i64, !dbg !817
  %arrayidx64 = getelementptr inbounds i32* %nnz, i64 %idxprom63, !dbg !817
  %11 = load i32* %arrayidx64, align 4, !dbg !817, !tbaa !815
  %arrayidx65 = getelementptr inbounds [3 x i32]* %idx, i64 %indvars.iv, i64 2, !dbg !817
  store i32 %11, i32* %arrayidx65, align 4, !dbg !817, !tbaa !815
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !800
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !800
  %exitcond = icmp eq i32 %lftr.wideiv, %natoms, !dbg !800
  br i1 %exitcond, label %for.end, label %for.body, !dbg !800

for.end:                                          ; preds = %for.body, %entry
  ret void, !dbg !818
}

; Function Attrs: nounwind optsize uwtable
define void @sum_qgrid(%struct.t_commrec* nocapture %cr, %struct.t_nsborder* nocapture %nsb, %struct.t_fftgrid* nocapture %grid, i32 %bForward) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.t_commrec* %cr}, i64 0, metadata !266), !dbg !819
  tail call void @llvm.dbg.value(metadata !{%struct.t_nsborder* %nsb}, i64 0, metadata !267), !dbg !819
  tail call void @llvm.dbg.value(metadata !{%struct.t_fftgrid* %grid}, i64 0, metadata !268), !dbg !819
  tail call void @llvm.dbg.value(metadata !{i32 %bForward}, i64 0, metadata !269), !dbg !819
  tail call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([48 x i8]* @.str1, i64 0, i64 0)) #5, !dbg !820
  ret void, !dbg !821
}

; Function Attrs: optsize
declare void @fatal_error(i32, i8*, ...) #3

; Function Attrs: nounwind optsize uwtable
define void @spread_q_bsplines(%struct.t_fftgrid* %grid, [3 x i32]* nocapture %idx, float* nocapture %charge, float** nocapture %theta, i32 %nr, i32 %order, i32* nocapture %nnx, i32* nocapture %nny, i32* nocapture %nnz) #0 {
entry:
  %ptr = alloca float*, align 8
  %nx = alloca i32, align 4
  %ny = alloca i32, align 4
  %nz = alloca i32, align 4
  %la2 = alloca i32, align 4
  %la12 = alloca i32, align 4
  call void @llvm.dbg.value(metadata !{%struct.t_fftgrid* %grid}, i64 0, metadata !276), !dbg !822
  call void @llvm.dbg.value(metadata !{[3 x i32]* %idx}, i64 0, metadata !277), !dbg !822
  call void @llvm.dbg.value(metadata !{float* %charge}, i64 0, metadata !278), !dbg !822
  call void @llvm.dbg.value(metadata !{float** %theta}, i64 0, metadata !279), !dbg !823
  call void @llvm.dbg.value(metadata !{i32 %nr}, i64 0, metadata !280), !dbg !823
  call void @llvm.dbg.value(metadata !{i32 %order}, i64 0, metadata !281), !dbg !823
  call void @llvm.dbg.value(metadata !{i32* %nnx}, i64 0, metadata !282), !dbg !824
  call void @llvm.dbg.value(metadata !{i32* %nny}, i64 0, metadata !283), !dbg !824
  call void @llvm.dbg.value(metadata !{i32* %nnz}, i64 0, metadata !284), !dbg !824
  call void @llvm.dbg.declare(metadata !{float** %ptr}, metadata !285), !dbg !825
  call void @llvm.dbg.declare(metadata !{i32* %nx}, metadata !299), !dbg !826
  call void @llvm.dbg.declare(metadata !{i32* %ny}, metadata !300), !dbg !826
  call void @llvm.dbg.declare(metadata !{i32* %nz}, metadata !301), !dbg !826
  call void @llvm.dbg.declare(metadata !{i32* %la2}, metadata !302), !dbg !826
  call void @llvm.dbg.declare(metadata !{i32* %la12}, metadata !303), !dbg !826
  call void @clear_fftgrid(%struct.t_fftgrid* %grid) #5, !dbg !827
  call void @unpack_fftgrid(%struct.t_fftgrid* %grid, i32* %nx, i32* %ny, i32* %nz, i32* %la2, i32* %la12, i32 1, float** %ptr) #5, !dbg !828
  call void @llvm.dbg.value(metadata !{i32* %nx}, i64 0, metadata !299), !dbg !829
  call void @llvm.dbg.value(metadata !{i32* %ny}, i64 0, metadata !300), !dbg !830
  call void @llvm.dbg.value(metadata !{i32* %nz}, i64 0, metadata !301), !dbg !831
  %0 = load float** %theta, align 8, !dbg !832, !tbaa !773
  call void @llvm.dbg.value(metadata !{float* %0}, i64 0, metadata !314), !dbg !832
  %arrayidx16 = getelementptr inbounds float** %theta, i64 1, !dbg !833
  %1 = load float** %arrayidx16, align 8, !dbg !833, !tbaa !773
  call void @llvm.dbg.value(metadata !{float* %1}, i64 0, metadata !315), !dbg !833
  %arrayidx17 = getelementptr inbounds float** %theta, i64 2, !dbg !834
  %2 = load float** %arrayidx17, align 8, !dbg !834, !tbaa !773
  call void @llvm.dbg.value(metadata !{float* %2}, i64 0, metadata !316), !dbg !834
  call void @llvm.dbg.value(metadata !148, i64 0, metadata !289), !dbg !835
  %cmp109 = icmp sgt i32 %nr, 0, !dbg !835
  br i1 %cmp109, label %for.body.lr.ph, label %for.end71, !dbg !835

for.body.lr.ph:                                   ; preds = %entry
  %idx.ext2 = sext i32 %order to i64, !dbg !829
  call void @llvm.dbg.value(metadata !{i32* %nz}, i64 0, metadata !301), !dbg !831
  %3 = load i32* %nz, align 4, !dbg !831, !tbaa !815
  call void @llvm.dbg.value(metadata !{i32* %ny}, i64 0, metadata !300), !dbg !830
  %4 = load i32* %ny, align 4, !dbg !830, !tbaa !815
  call void @llvm.dbg.value(metadata !{i32* %nx}, i64 0, metadata !299), !dbg !829
  %5 = load i32* %nx, align 4, !dbg !829, !tbaa !815
  %idx.ext10 = sext i32 %3 to i64, !dbg !831
  %idx.ext4 = sext i32 %4 to i64, !dbg !830
  %idx.ext = sext i32 %5 to i64, !dbg !829
  %add.ptr.sum = sub i64 1, %idx.ext2, !dbg !829
  %add.ptr1.sum = add i64 %add.ptr.sum, %idx.ext, !dbg !829
  %add.ptr6.sum = add i64 %add.ptr.sum, %idx.ext4, !dbg !830
  %add.ptr12.sum = add i64 %add.ptr.sum, %idx.ext10, !dbg !831
  call void @llvm.dbg.value(metadata !{i32* %la12}, i64 0, metadata !303), !dbg !837
  %6 = load i32* %la12, align 4, !dbg !837, !tbaa !815
  call void @llvm.dbg.value(metadata !{i32* %la2}, i64 0, metadata !302), !dbg !837
  %7 = load i32* %la2, align 4, !dbg !837, !tbaa !815
  call void @llvm.dbg.value(metadata !{float** %ptr}, i64 0, metadata !285), !dbg !844
  %8 = load float** %ptr, align 8, !dbg !844, !tbaa !773
  br label %for.body, !dbg !835

for.body:                                         ; preds = %for.inc69, %for.body.lr.ph
  %indvars.iv124 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next125, %for.inc69 ]
  %indvars.iv119 = phi i32 [ 0, %for.body.lr.ph ], [ %indvars.iv.next120, %for.inc69 ]
  %9 = sext i32 %indvars.iv119 to i64, !dbg !835
  %arrayidx18 = getelementptr inbounds float* %charge, i64 %indvars.iv124, !dbg !847
  %10 = load float* %arrayidx18, align 4, !dbg !847, !tbaa !780
  call void @llvm.dbg.value(metadata !{float %10}, i64 0, metadata !313), !dbg !847
  call void @llvm.dbg.value(metadata !{i32* %arraydecay}, i64 0, metadata !309), !dbg !848
  %fabsf = call float @fabsf(float %10) #6, !dbg !849
  %11 = fpext float %fabsf to double, !dbg !849
  %cmp21 = fcmp ogt double %11, 1.200000e-38, !dbg !849
  br i1 %cmp21, label %if.then, label %for.inc69, !dbg !849

if.then:                                          ; preds = %for.body
  call void @llvm.dbg.value(metadata !{i32 %13}, i64 0, metadata !304), !dbg !850
  call void @llvm.dbg.value(metadata !{i32 %15}, i64 0, metadata !305), !dbg !851
  call void @llvm.dbg.value(metadata !{i32 %14}, i64 0, metadata !306), !dbg !852
  call void @llvm.dbg.value(metadata !{i32* %add.ptr27}, i64 0, metadata !290), !dbg !853
  %12 = trunc i64 %indvars.iv124 to i32, !dbg !854
  %mul = mul nsw i32 %12, %order, !dbg !854
  call void @llvm.dbg.value(metadata !{i32 %mul}, i64 0, metadata !307), !dbg !854
  %add = add nsw i32 %mul, %order, !dbg !855
  call void @llvm.dbg.value(metadata !{i32 %add}, i64 0, metadata !308), !dbg !855
  call void @llvm.dbg.value(metadata !{i32 %mul}, i64 0, metadata !296), !dbg !856
  %cmp29106 = icmp sgt i32 %order, 0, !dbg !856
  br i1 %cmp29106, label %for.body31.lr.ph, label %for.inc69, !dbg !856

for.body31.lr.ph:                                 ; preds = %if.then
  %arraydecay = getelementptr inbounds [3 x i32]* %idx, i64 %indvars.iv124, i64 0, !dbg !848
  %13 = load i32* %arraydecay, align 4, !dbg !850, !tbaa !815
  %idx.ext26 = sext i32 %13 to i64, !dbg !853
  %add.ptr3.sum = add i64 %add.ptr1.sum, %idx.ext26, !dbg !853
  %arrayidx25 = getelementptr inbounds [3 x i32]* %idx, i64 %indvars.iv124, i64 2, !dbg !852
  %arrayidx24 = getelementptr inbounds [3 x i32]* %idx, i64 %indvars.iv124, i64 1, !dbg !851
  %add.ptr27 = getelementptr inbounds i32* %nnx, i64 %add.ptr3.sum, !dbg !853
  %14 = load i32* %arrayidx25, align 4, !dbg !852, !tbaa !815
  %15 = load i32* %arrayidx24, align 4, !dbg !851, !tbaa !815
  %idx.ext32 = sext i32 %15 to i64, !dbg !857
  %add.ptr9.sum = add i64 %add.ptr6.sum, %idx.ext32, !dbg !857
  %add.ptr33 = getelementptr inbounds i32* %nny, i64 %add.ptr9.sum, !dbg !857
  %idx.ext41 = sext i32 %14 to i64, !dbg !858
  %add.ptr15.sum = add i64 %add.ptr12.sum, %idx.ext41, !dbg !858
  %add.ptr42 = getelementptr inbounds i32* %nnz, i64 %add.ptr15.sum, !dbg !858
  br label %for.body40.lr.ph, !dbg !856

for.body40.lr.ph:                                 ; preds = %for.inc65, %for.body31.lr.ph
  %indvars.iv121 = phi i64 [ %9, %for.body31.lr.ph ], [ %indvars.iv.next122, %for.inc65 ], !dbg !835
  %i0.0108 = phi i32* [ %add.ptr27, %for.body31.lr.ph ], [ %incdec.ptr67, %for.inc65 ]
  %ithx.0107 = phi i32 [ %mul, %for.body31.lr.ph ], [ %inc66, %for.inc65 ]
  call void @llvm.dbg.value(metadata !{i32 %17}, i64 0, metadata !286), !dbg !859
  call void @llvm.dbg.value(metadata !{i32* %add.ptr33}, i64 0, metadata !291), !dbg !857
  %arrayidx35 = getelementptr inbounds float* %0, i64 %indvars.iv121, !dbg !860
  %16 = load float* %arrayidx35, align 4, !dbg !860, !tbaa !780
  %mul36 = fmul float %10, %16, !dbg !860
  call void @llvm.dbg.value(metadata !{float %mul36}, i64 0, metadata !311), !dbg !860
  call void @llvm.dbg.value(metadata !{i32 %mul}, i64 0, metadata !297), !dbg !861
  %17 = load i32* %i0.0108, align 4, !dbg !859, !tbaa !815
  %mul46 = mul nsw i32 %6, %17, !dbg !837
  br label %for.body53.lr.ph, !dbg !861

for.body53.lr.ph:                                 ; preds = %for.inc61, %for.body40.lr.ph
  %indvars.iv116 = phi i64 [ %9, %for.body40.lr.ph ], [ %indvars.iv.next117, %for.inc61 ], !dbg !835
  %j0.0105 = phi i32* [ %add.ptr33, %for.body40.lr.ph ], [ %incdec.ptr63, %for.inc61 ]
  %ithy.0104 = phi i32 [ %mul, %for.body40.lr.ph ], [ %inc62, %for.inc61 ]
  %18 = load i32* %j0.0105, align 4, !dbg !862, !tbaa !815
  call void @llvm.dbg.value(metadata !{i32 %18}, i64 0, metadata !287), !dbg !862
  call void @llvm.dbg.value(metadata !{i32* %add.ptr42}, i64 0, metadata !292), !dbg !858
  %arrayidx44 = getelementptr inbounds float* %1, i64 %indvars.iv116, !dbg !863
  %19 = load float* %arrayidx44, align 4, !dbg !863, !tbaa !780
  %mul45 = fmul float %mul36, %19, !dbg !863
  call void @llvm.dbg.value(metadata !{float %mul45}, i64 0, metadata !312), !dbg !863
  call void @llvm.dbg.value(metadata !{i32* %la12}, i64 0, metadata !303), !dbg !837
  call void @llvm.dbg.value(metadata !{i32* %la2}, i64 0, metadata !302), !dbg !837
  %mul47 = mul nsw i32 %7, %18, !dbg !837
  %add48 = add nsw i32 %mul47, %mul46, !dbg !837
  call void @llvm.dbg.value(metadata !{i32 %add48}, i64 0, metadata !310), !dbg !837
  call void @llvm.dbg.value(metadata !{i32 %mul}, i64 0, metadata !298), !dbg !864
  br label %for.body53, !dbg !864

for.body53:                                       ; preds = %for.body53.lr.ph, %for.body53
  %indvars.iv111 = phi i64 [ %9, %for.body53.lr.ph ], [ %indvars.iv.next112, %for.body53 ], !dbg !835
  %k0.0102 = phi i32* [ %add.ptr42, %for.body53.lr.ph ], [ %incdec.ptr, %for.body53 ]
  %ithz.0101 = phi i32 [ %mul, %for.body53.lr.ph ], [ %inc, %for.body53 ]
  %20 = load i32* %k0.0102, align 4, !dbg !865, !tbaa !815
  call void @llvm.dbg.value(metadata !{i32 %20}, i64 0, metadata !288), !dbg !865
  %arrayidx55 = getelementptr inbounds float* %2, i64 %indvars.iv111, !dbg !844
  %21 = load float* %arrayidx55, align 4, !dbg !844, !tbaa !780
  %mul56 = fmul float %mul45, %21, !dbg !844
  %add57 = add nsw i32 %add48, %20, !dbg !844
  %idxprom58 = sext i32 %add57 to i64, !dbg !844
  call void @llvm.dbg.value(metadata !{float** %ptr}, i64 0, metadata !285), !dbg !844
  %arrayidx59 = getelementptr inbounds float* %8, i64 %idxprom58, !dbg !844
  %22 = load float* %arrayidx59, align 4, !dbg !844, !tbaa !780
  %add60 = fadd float %mul56, %22, !dbg !844
  store float %add60, float* %arrayidx59, align 4, !dbg !844, !tbaa !780
  %inc = add nsw i32 %ithz.0101, 1, !dbg !864
  call void @llvm.dbg.value(metadata !{i32 %inc}, i64 0, metadata !298), !dbg !864
  %incdec.ptr = getelementptr inbounds i32* %k0.0102, i64 1, !dbg !864
  call void @llvm.dbg.value(metadata !{i32* %incdec.ptr}, i64 0, metadata !292), !dbg !864
  %cmp51 = icmp slt i32 %inc, %add, !dbg !864
  %indvars.iv.next112 = add i64 %indvars.iv111, 1, !dbg !864
  br i1 %cmp51, label %for.body53, label %for.inc61, !dbg !864

for.inc61:                                        ; preds = %for.body53
  %inc62 = add nsw i32 %ithy.0104, 1, !dbg !861
  call void @llvm.dbg.value(metadata !{i32 %inc62}, i64 0, metadata !297), !dbg !861
  %incdec.ptr63 = getelementptr inbounds i32* %j0.0105, i64 1, !dbg !861
  call void @llvm.dbg.value(metadata !{i32* %incdec.ptr63}, i64 0, metadata !291), !dbg !861
  %cmp38 = icmp slt i32 %inc62, %add, !dbg !861
  %indvars.iv.next117 = add i64 %indvars.iv116, 1, !dbg !861
  br i1 %cmp38, label %for.body53.lr.ph, label %for.inc65, !dbg !861

for.inc65:                                        ; preds = %for.inc61
  %inc66 = add nsw i32 %ithx.0107, 1, !dbg !856
  call void @llvm.dbg.value(metadata !{i32 %inc66}, i64 0, metadata !296), !dbg !856
  %incdec.ptr67 = getelementptr inbounds i32* %i0.0108, i64 1, !dbg !856
  call void @llvm.dbg.value(metadata !{i32* %incdec.ptr67}, i64 0, metadata !290), !dbg !856
  %cmp29 = icmp slt i32 %inc66, %add, !dbg !856
  %indvars.iv.next122 = add i64 %indvars.iv121, 1, !dbg !856
  br i1 %cmp29, label %for.body40.lr.ph, label %for.inc69, !dbg !856

for.inc69:                                        ; preds = %if.then, %for.inc65, %for.body
  %indvars.iv.next125 = add i64 %indvars.iv124, 1, !dbg !835
  %indvars.iv.next120 = add i32 %indvars.iv119, %order, !dbg !835
  %lftr.wideiv = trunc i64 %indvars.iv.next125 to i32, !dbg !835
  %exitcond = icmp eq i32 %lftr.wideiv, %nr, !dbg !835
  br i1 %exitcond, label %for.end71, label %for.body, !dbg !835

for.end71:                                        ; preds = %for.inc69, %entry
  ret void, !dbg !866
}

; Function Attrs: optsize
declare void @clear_fftgrid(%struct.t_fftgrid*) #3

; Function Attrs: optsize
declare void @unpack_fftgrid(%struct.t_fftgrid*, i32*, i32*, i32*, i32*, i32*, i32, float**) #3

; Function Attrs: nounwind optsize uwtable
define float @solve_pme(%struct.t_fftgrid* %grid, float %ewaldcoeff, float %vol, float** nocapture %bsp_mod, [3 x float]* nocapture %recipbox, [3 x float]* nocapture %vir, %struct.t_commrec* nocapture %cr) #0 {
entry:
  %ptr = alloca %struct.t_fft_c*, align 8
  %nx = alloca i32, align 4
  %ny = alloca i32, align 4
  %nz = alloca i32, align 4
  %la2 = alloca i32, align 4
  %la12 = alloca i32, align 4
  call void @llvm.dbg.value(metadata !{%struct.t_fftgrid* %grid}, i64 0, metadata !321), !dbg !867
  call void @llvm.dbg.value(metadata !{float %ewaldcoeff}, i64 0, metadata !322), !dbg !867
  call void @llvm.dbg.value(metadata !{float %vol}, i64 0, metadata !323), !dbg !867
  call void @llvm.dbg.value(metadata !{float** %bsp_mod}, i64 0, metadata !324), !dbg !868
  call void @llvm.dbg.value(metadata !{[3 x float]* %recipbox}, i64 0, metadata !325), !dbg !868
  call void @llvm.dbg.value(metadata !{[3 x float]* %vir}, i64 0, metadata !326), !dbg !869
  call void @llvm.dbg.value(metadata !{%struct.t_commrec* %cr}, i64 0, metadata !327), !dbg !869
  call void @llvm.dbg.declare(metadata !{%struct.t_fft_c** %ptr}, metadata !328), !dbg !870
  call void @llvm.dbg.declare(metadata !{i32* %nx}, metadata !336), !dbg !871
  call void @llvm.dbg.declare(metadata !{i32* %ny}, metadata !337), !dbg !871
  call void @llvm.dbg.declare(metadata !{i32* %nz}, metadata !338), !dbg !871
  call void @llvm.dbg.declare(metadata !{i32* %la2}, metadata !339), !dbg !871
  call void @llvm.dbg.declare(metadata !{i32* %la12}, metadata !340), !dbg !871
  call void @llvm.dbg.value(metadata !148, i64 0, metadata !349), !dbg !872
  call void @llvm.dbg.value(metadata !148, i64 0, metadata !350), !dbg !872
  %mul = fmul float %ewaldcoeff, %ewaldcoeff, !dbg !873
  %conv = fpext float %mul to double, !dbg !873
  %div = fdiv double 0x4023BD3CC9BE45DE, %conv, !dbg !873
  %conv1 = fptrunc double %div to float, !dbg !873
  call void @llvm.dbg.value(metadata !{float %conv1}, i64 0, metadata !355), !dbg !873
  call void @llvm.dbg.value(metadata !874, i64 0, metadata !363), !dbg !875
  call void @llvm.dbg.value(metadata !874, i64 0, metadata !370), !dbg !876
  call void @llvm.dbg.value(metadata !874, i64 0, metadata !371), !dbg !876
  call void @llvm.dbg.value(metadata !874, i64 0, metadata !372), !dbg !876
  call void @llvm.dbg.value(metadata !874, i64 0, metadata !373), !dbg !876
  call void @llvm.dbg.value(metadata !874, i64 0, metadata !374), !dbg !876
  call void @llvm.dbg.value(metadata !874, i64 0, metadata !375), !dbg !876
  %nnodes = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 1, !dbg !877
  %0 = load i32* %nnodes, align 4, !dbg !877, !tbaa !815
  %cmp = icmp sgt i32 %0, 1, !dbg !877
  br i1 %cmp, label %lor.end, label %lor.rhs, !dbg !877

lor.rhs:                                          ; preds = %entry
  %nthreads = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 5, !dbg !877
  %1 = load i32* %nthreads, align 4, !dbg !877, !tbaa !815
  %cmp3 = icmp sgt i32 %1, 1, !dbg !877
  br label %lor.end, !dbg !877

lor.end:                                          ; preds = %lor.rhs, %entry
  %2 = phi i1 [ true, %entry ], [ %cmp3, %lor.rhs ]
  %3 = bitcast %struct.t_fft_c** %ptr to float**, !dbg !878
  call void @unpack_fftgrid(%struct.t_fftgrid* %grid, i32* %nx, i32* %ny, i32* %nz, i32* %la2, i32* %la12, i32 0, float** %3) #5, !dbg !878
  %arrayidx5 = getelementptr inbounds [3 x float]* %recipbox, i64 0, i64 0, !dbg !879
  %4 = load float* %arrayidx5, align 4, !dbg !879, !tbaa !780
  call void @llvm.dbg.value(metadata !{float %4}, i64 0, metadata !377), !dbg !879
  %arrayidx7 = getelementptr inbounds [3 x float]* %recipbox, i64 1, i64 0, !dbg !880
  %5 = load float* %arrayidx7, align 4, !dbg !880, !tbaa !780
  call void @llvm.dbg.value(metadata !{float %5}, i64 0, metadata !378), !dbg !880
  %arrayidx9 = getelementptr inbounds [3 x float]* %recipbox, i64 1, i64 1, !dbg !881
  %6 = load float* %arrayidx9, align 4, !dbg !881, !tbaa !780
  call void @llvm.dbg.value(metadata !{float %6}, i64 0, metadata !379), !dbg !881
  %arrayidx11 = getelementptr inbounds [3 x float]* %recipbox, i64 2, i64 0, !dbg !882
  %7 = load float* %arrayidx11, align 4, !dbg !882, !tbaa !780
  call void @llvm.dbg.value(metadata !{float %7}, i64 0, metadata !380), !dbg !882
  %arrayidx13 = getelementptr inbounds [3 x float]* %recipbox, i64 2, i64 1, !dbg !883
  %8 = load float* %arrayidx13, align 4, !dbg !883, !tbaa !780
  call void @llvm.dbg.value(metadata !{float %8}, i64 0, metadata !381), !dbg !883
  %arrayidx15 = getelementptr inbounds [3 x float]* %recipbox, i64 2, i64 2, !dbg !884
  %9 = load float* %arrayidx15, align 4, !dbg !884, !tbaa !780
  call void @llvm.dbg.value(metadata !{float %9}, i64 0, metadata !382), !dbg !884
  call void @llvm.dbg.value(metadata !{i32* %nx}, i64 0, metadata !336), !dbg !885
  %10 = load i32* %nx, align 4, !dbg !885, !tbaa !815
  %add = add nsw i32 %10, 1, !dbg !885
  %div16 = sdiv i32 %add, 2, !dbg !885
  call void @llvm.dbg.value(metadata !{i32 %div16}, i64 0, metadata !346), !dbg !885
  call void @llvm.dbg.value(metadata !{i32* %ny}, i64 0, metadata !337), !dbg !886
  %11 = load i32* %ny, align 4, !dbg !886, !tbaa !815
  %add17 = add nsw i32 %11, 1, !dbg !886
  %div18 = sdiv i32 %add17, 2, !dbg !886
  call void @llvm.dbg.value(metadata !{i32 %div18}, i64 0, metadata !347), !dbg !886
  call void @llvm.dbg.value(metadata !{i32* %nz}, i64 0, metadata !338), !dbg !887
  %12 = load i32* %nz, align 4, !dbg !887, !tbaa !815
  %div19 = sdiv i32 %12, 2, !dbg !887
  br i1 %2, label %if.end.thread, label %if.end, !dbg !888

if.end.thread:                                    ; preds = %lor.end
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([44 x i8]* @.str2, i64 0, i64 0)) #5, !dbg !889
  call void @llvm.dbg.value(metadata !148, i64 0, metadata !342), !dbg !891
  br label %for.end160, !dbg !891

if.end:                                           ; preds = %lor.end
  call void @llvm.dbg.value(metadata !148, i64 0, metadata !342), !dbg !891
  %cmp21319 = icmp sgt i32 %11, 0, !dbg !891
  br i1 %cmp21319, label %for.body.lr.ph, label %for.end160, !dbg !891

for.body.lr.ph:                                   ; preds = %if.end
  %conv30 = fpext float %vol to double, !dbg !893
  %mul31 = fmul double %conv30, 0x400921FB54442D18, !dbg !893
  %arrayidx32 = getelementptr inbounds float** %bsp_mod, i64 1, !dbg !893
  %cmp71287 = icmp sgt i32 %12, -2, !dbg !895
  %arrayidx97 = getelementptr inbounds float** %bsp_mod, i64 2, !dbg !899
  br label %for.body, !dbg !891

for.body:                                         ; preds = %for.inc158, %for.body.lr.ph
  %indvars.iv338 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next339, %for.inc158 ]
  %virzz.0326 = phi float [ 0.000000e+00, %for.body.lr.ph ], [ %virzz.1.lcssa, %for.inc158 ]
  %viryz.0325 = phi float [ 0.000000e+00, %for.body.lr.ph ], [ %viryz.1.lcssa, %for.inc158 ]
  %viryy.0324 = phi float [ 0.000000e+00, %for.body.lr.ph ], [ %viryy.1.lcssa, %for.inc158 ]
  %virxz.0323 = phi float [ 0.000000e+00, %for.body.lr.ph ], [ %virxz.1.lcssa, %for.inc158 ]
  %virxy.0322 = phi float [ 0.000000e+00, %for.body.lr.ph ], [ %virxy.1.lcssa, %for.inc158 ]
  %virxx.0321 = phi float [ 0.000000e+00, %for.body.lr.ph ], [ %virxx.1.lcssa, %for.inc158 ]
  %energy.0320 = phi float [ 0.000000e+00, %for.body.lr.ph ], [ %energy.1.lcssa, %for.inc158 ]
  %13 = trunc i64 %indvars.iv338 to i32, !dbg !901
  %cmp23 = icmp slt i32 %13, %div18, !dbg !901
  br i1 %cmp23, label %if.end29, label %if.else27, !dbg !901

if.else27:                                        ; preds = %for.body
  call void @llvm.dbg.value(metadata !{i32* %ny}, i64 0, metadata !337), !dbg !902
  %14 = load i32* %ny, align 4, !dbg !902, !tbaa !815
  %sub = sub nsw i32 %13, %14, !dbg !902
  br label %if.end29

if.end29:                                         ; preds = %for.body, %if.else27
  %my.0.in = phi i32 [ %sub, %if.else27 ], [ %13, %for.body ]
  %my.0 = sitofp i32 %my.0.in to float, !dbg !903
  %15 = load float** %arrayidx32, align 8, !dbg !893, !tbaa !773
  %arrayidx33 = getelementptr inbounds float* %15, i64 %indvars.iv338, !dbg !893
  %16 = load float* %arrayidx33, align 4, !dbg !893, !tbaa !780
  %conv34 = fpext float %16 to double, !dbg !893
  %mul35 = fmul double %mul31, %conv34, !dbg !893
  %conv36 = fptrunc double %mul35 to float, !dbg !893
  call void @llvm.dbg.value(metadata !{float %conv36}, i64 0, metadata !366), !dbg !893
  call void @llvm.dbg.value(metadata !148, i64 0, metadata !341), !dbg !904
  call void @llvm.dbg.value(metadata !{i32* %nx}, i64 0, metadata !336), !dbg !904
  %17 = load i32* %nx, align 4, !dbg !904, !tbaa !815
  %cmp38303 = icmp sgt i32 %17, 0, !dbg !904
  br i1 %cmp38303, label %for.body40.lr.ph, label %for.inc158, !dbg !904

for.body40.lr.ph:                                 ; preds = %if.end29
  %mul51 = fmul float %6, %my.0, !dbg !905
  %mul85 = fmul float %8, %my.0, !dbg !906
  br label %for.body40, !dbg !904

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
  %19 = trunc i64 %indvars.iv336 to i32, !dbg !907
  %cmp41 = icmp slt i32 %19, %div16, !dbg !907
  %sub46 = select i1 %cmp41, i32 0, i32 %18, !dbg !907
  %mx.0.in = sub nsw i32 %19, %sub46, !dbg !907
  %mx.0 = sitofp i32 %mx.0.in to float, !dbg !908
  %mul49 = fmul float %4, %mx.0, !dbg !909
  call void @llvm.dbg.value(metadata !{float %mul49}, i64 0, metadata !367), !dbg !909
  %mul50 = fmul float %5, %mx.0, !dbg !905
  %add52 = fadd float %mul51, %mul50, !dbg !905
  call void @llvm.dbg.value(metadata !{float %add52}, i64 0, metadata !368), !dbg !905
  %20 = load float** %bsp_mod, align 8, !dbg !910, !tbaa !773
  %arrayidx55 = getelementptr inbounds float* %20, i64 %indvars.iv336, !dbg !910
  %21 = load float* %arrayidx55, align 4, !dbg !910, !tbaa !780
  call void @llvm.dbg.value(metadata !{float %21}, i64 0, metadata !365), !dbg !910
  call void @llvm.dbg.value(metadata !{%struct.t_fft_c** %ptr}, i64 0, metadata !328), !dbg !911
  %22 = load %struct.t_fft_c** %ptr, align 8, !dbg !911, !tbaa !773
  call void @llvm.dbg.value(metadata !{i32* %la12}, i64 0, metadata !340), !dbg !911
  %23 = load i32* %la12, align 4, !dbg !911, !tbaa !815
  br i1 %2, label %if.then57, label %if.else62, !dbg !912

if.then57:                                        ; preds = %for.body40
  %mul58 = mul nsw i32 %23, %13, !dbg !911
  call void @llvm.dbg.value(metadata !{i32* %la2}, i64 0, metadata !339), !dbg !911
  %24 = load i32* %la2, align 4, !dbg !911, !tbaa !815
  %mul59 = mul nsw i32 %24, %19, !dbg !911
  %add60 = add nsw i32 %mul59, %mul58, !dbg !911
  br label %if.end69, !dbg !911

if.else62:                                        ; preds = %for.body40
  %mul63 = mul nsw i32 %23, %19, !dbg !913
  call void @llvm.dbg.value(metadata !{i32* %la2}, i64 0, metadata !339), !dbg !913
  %25 = load i32* %la2, align 4, !dbg !913, !tbaa !815
  %mul64 = mul nsw i32 %25, %13, !dbg !913
  %add65 = add nsw i32 %mul64, %mul63, !dbg !913
  br label %if.end69

if.end69:                                         ; preds = %if.else62, %if.then57
  %idx.ext.pn.in = phi i32 [ %add60, %if.then57 ], [ %add65, %if.else62 ]
  call void @llvm.dbg.value(metadata !148, i64 0, metadata !343), !dbg !895
  br i1 %cmp71287, label %for.body73.lr.ph, label %for.inc155, !dbg !895

for.body73.lr.ph:                                 ; preds = %if.end69
  %idx.ext.pn = sext i32 %idx.ext.pn.in to i64, !dbg !911
  %p0.0 = getelementptr inbounds %struct.t_fft_c* %22, i64 %idx.ext.pn, !dbg !911
  %26 = or i64 %indvars.iv336, %indvars.iv338, !dbg !914
  %mul84 = fmul float %7, %mx.0, !dbg !906
  %add86 = fadd float %mul85, %mul84, !dbg !906
  %mul89 = fmul float %mul49, %mul49, !dbg !915
  %mul90 = fmul float %add52, %add52, !dbg !915
  %add91 = fadd float %mul89, %mul90, !dbg !915
  br label %for.body73, !dbg !895

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
  %27 = trunc i64 %indvars.iv to i32, !dbg !914
  %28 = or i64 %26, %indvars.iv, !dbg !914
  %29 = trunc i64 %28 to i32, !dbg !914
  %30 = icmp eq i32 %29, 0, !dbg !914
  br i1 %30, label %for.inc, label %if.end82, !dbg !914

if.end82:                                         ; preds = %for.body73
  %re = getelementptr inbounds %struct.t_fft_c* %p0.1296, i64 0, i32 0, !dbg !916
  %31 = load float* %re, align 4, !dbg !916, !tbaa !780
  call void @llvm.dbg.value(metadata !{float %31}, i64 0, metadata !361), !dbg !916
  %im = getelementptr inbounds %struct.t_fft_c* %p0.1296, i64 0, i32 1, !dbg !917
  %32 = load float* %im, align 4, !dbg !917, !tbaa !780
  call void @llvm.dbg.value(metadata !{float %32}, i64 0, metadata !362), !dbg !917
  %conv83 = sitofp i32 %27 to float, !dbg !918
  call void @llvm.dbg.value(metadata !{float %conv83}, i64 0, metadata !354), !dbg !918
  %mul87 = fmul float %9, %conv83, !dbg !906
  %add88 = fadd float %add86, %mul87, !dbg !906
  call void @llvm.dbg.value(metadata !{float %add88}, i64 0, metadata !369), !dbg !906
  %mul92 = fmul float %add88, %add88, !dbg !915
  %add93 = fadd float %add91, %mul92, !dbg !915
  call void @llvm.dbg.value(metadata !{float %add93}, i64 0, metadata !351), !dbg !915
  %mul94 = fmul float %21, %add93, !dbg !899
  %mul95 = fmul float %conv36, %mul94, !dbg !899
  %33 = load float** %arrayidx97, align 8, !dbg !899, !tbaa !773
  %arrayidx98 = getelementptr inbounds float* %33, i64 %indvars.iv, !dbg !899
  %34 = load float* %arrayidx98, align 4, !dbg !899, !tbaa !780
  %mul99 = fmul float %mul95, %34, !dbg !899
  call void @llvm.dbg.value(metadata !{float %mul99}, i64 0, metadata !364), !dbg !899
  %35 = fmul float %conv1, %add93, !dbg !919
  %mul101 = fsub float -0.000000e+00, %35, !dbg !919
  %conv102 = fpext float %mul101 to double, !dbg !919
  %call = call double @exp(double %conv102) #5, !dbg !919
  %mul103 = fmul double %call, 0x40615DEEE174A498, !dbg !919
  %conv104 = fpext float %mul99 to double, !dbg !919
  %div105 = fdiv double %mul103, %conv104, !dbg !919
  %conv106 = fptrunc double %div105 to float, !dbg !919
  call void @llvm.dbg.value(metadata !{float %conv106}, i64 0, metadata !360), !dbg !919
  %mul107 = fmul float %31, %conv106, !dbg !920
  store float %mul107, float* %re, align 4, !dbg !920, !tbaa !780
  %mul109 = fmul float %32, %conv106, !dbg !921
  store float %mul109, float* %im, align 4, !dbg !921, !tbaa !780
  %mul111 = fmul float %31, %31, !dbg !922
  %mul112 = fmul float %32, %32, !dbg !922
  %add113 = fadd float %mul111, %mul112, !dbg !922
  call void @llvm.dbg.value(metadata !{float %add113}, i64 0, metadata !357), !dbg !922
  %cmp114 = icmp sgt i32 %27, 0, !dbg !923
  br i1 %cmp114, label %land.lhs.true116, label %if.end123, !dbg !923

land.lhs.true116:                                 ; preds = %if.end82
  call void @llvm.dbg.value(metadata !{i32* %nz}, i64 0, metadata !338), !dbg !923
  %36 = load i32* %nz, align 4, !dbg !923, !tbaa !815
  %add117 = add nsw i32 %36, 1, !dbg !923
  %div118 = sdiv i32 %add117, 2, !dbg !923
  %cmp119 = icmp slt i32 %27, %div118, !dbg !923
  br i1 %cmp119, label %if.then121, label %if.end123, !dbg !923

if.then121:                                       ; preds = %land.lhs.true116
  %mul122 = fmul float %add113, 2.000000e+00, !dbg !924
  call void @llvm.dbg.value(metadata !{float %mul122}, i64 0, metadata !357), !dbg !924
  br label %if.end123, !dbg !924

if.end123:                                        ; preds = %if.then121, %land.lhs.true116, %if.end82
  %struct2.0 = phi float [ %mul122, %if.then121 ], [ %add113, %land.lhs.true116 ], [ %add113, %if.end82 ]
  %mul124 = fmul float %conv106, %struct2.0, !dbg !925
  call void @llvm.dbg.value(metadata !{float %mul124}, i64 0, metadata !356), !dbg !925
  %add126 = fadd float %35, 1.000000e+00, !dbg !926
  %conv127 = fpext float %add126 to double, !dbg !926
  %mul128 = fmul double %conv127, 2.000000e+00, !dbg !926
  %conv129 = fpext float %add93 to double, !dbg !926
  %div130 = fdiv double %mul128, %conv129, !dbg !926
  %conv131 = fptrunc double %div130 to float, !dbg !926
  call void @llvm.dbg.value(metadata !{float %conv131}, i64 0, metadata !358), !dbg !926
  %add132 = fadd float %energy.2288, %mul124, !dbg !927
  call void @llvm.dbg.value(metadata !{float %add132}, i64 0, metadata !363), !dbg !927
  %mul133 = fmul float %mul124, %conv131, !dbg !928
  call void @llvm.dbg.value(metadata !{float %mul133}, i64 0, metadata !359), !dbg !928
  %mul134 = fmul float %mul49, %mul133, !dbg !929
  %mul135 = fmul float %mul49, %mul134, !dbg !929
  %sub136 = fsub float %mul135, %mul124, !dbg !929
  %add137 = fadd float %virxx.2289, %sub136, !dbg !929
  call void @llvm.dbg.value(metadata !{float %add137}, i64 0, metadata !370), !dbg !929
  %mul139 = fmul float %add52, %mul134, !dbg !930
  %add140 = fadd float %virxy.2290, %mul139, !dbg !930
  call void @llvm.dbg.value(metadata !{float %add140}, i64 0, metadata !371), !dbg !930
  %mul142 = fmul float %add88, %mul134, !dbg !931
  %add143 = fadd float %virxz.2291, %mul142, !dbg !931
  call void @llvm.dbg.value(metadata !{float %add143}, i64 0, metadata !372), !dbg !931
  %mul144 = fmul float %add52, %mul133, !dbg !932
  %mul145 = fmul float %add52, %mul144, !dbg !932
  %sub146 = fsub float %mul145, %mul124, !dbg !932
  %add147 = fadd float %viryy.2292, %sub146, !dbg !932
  call void @llvm.dbg.value(metadata !{float %add147}, i64 0, metadata !373), !dbg !932
  %mul149 = fmul float %add88, %mul144, !dbg !933
  %add150 = fadd float %viryz.2293, %mul149, !dbg !933
  call void @llvm.dbg.value(metadata !{float %add150}, i64 0, metadata !374), !dbg !933
  %mul151 = fmul float %add88, %mul133, !dbg !934
  %mul152 = fmul float %add88, %mul151, !dbg !934
  %sub153 = fsub float %mul152, %mul124, !dbg !934
  %add154 = fadd float %virzz.2294, %sub153, !dbg !934
  call void @llvm.dbg.value(metadata !{float %add154}, i64 0, metadata !375), !dbg !934
  br label %for.inc, !dbg !935

for.inc:                                          ; preds = %for.body73, %if.end123
  %energy.3 = phi float [ %add132, %if.end123 ], [ %energy.2288, %for.body73 ]
  %virxx.3 = phi float [ %add137, %if.end123 ], [ %virxx.2289, %for.body73 ]
  %virxy.3 = phi float [ %add140, %if.end123 ], [ %virxy.2290, %for.body73 ]
  %virxz.3 = phi float [ %add143, %if.end123 ], [ %virxz.2291, %for.body73 ]
  %viryy.3 = phi float [ %add147, %if.end123 ], [ %viryy.2292, %for.body73 ]
  %viryz.3 = phi float [ %add150, %if.end123 ], [ %viryz.2293, %for.body73 ]
  %virzz.3 = phi float [ %add154, %if.end123 ], [ %virzz.2294, %for.body73 ]
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !895
  %incdec.ptr = getelementptr inbounds %struct.t_fft_c* %p0.1296, i64 1, !dbg !895
  call void @llvm.dbg.value(metadata !{%struct.t_fft_c* %incdec.ptr}, i64 0, metadata !335), !dbg !895
  %cmp71 = icmp slt i32 %27, %div19, !dbg !895
  br i1 %cmp71, label %for.body73, label %for.cond70.for.inc155_crit_edge, !dbg !895

for.cond70.for.inc155_crit_edge:                  ; preds = %for.inc
  call void @llvm.dbg.value(metadata !{i32* %nx}, i64 0, metadata !336), !dbg !904
  %.pre = load i32* %nx, align 4, !dbg !904, !tbaa !815
  br label %for.inc155, !dbg !895

for.inc155:                                       ; preds = %if.end69, %for.cond70.for.inc155_crit_edge
  %37 = phi i32 [ %.pre, %for.cond70.for.inc155_crit_edge ], [ %18, %if.end69 ], !dbg !904
  %virzz.2.lcssa = phi float [ %virzz.3, %for.cond70.for.inc155_crit_edge ], [ %virzz.1310, %if.end69 ]
  %viryz.2.lcssa = phi float [ %viryz.3, %for.cond70.for.inc155_crit_edge ], [ %viryz.1309, %if.end69 ]
  %viryy.2.lcssa = phi float [ %viryy.3, %for.cond70.for.inc155_crit_edge ], [ %viryy.1308, %if.end69 ]
  %virxz.2.lcssa = phi float [ %virxz.3, %for.cond70.for.inc155_crit_edge ], [ %virxz.1307, %if.end69 ]
  %virxy.2.lcssa = phi float [ %virxy.3, %for.cond70.for.inc155_crit_edge ], [ %virxy.1306, %if.end69 ]
  %virxx.2.lcssa = phi float [ %virxx.3, %for.cond70.for.inc155_crit_edge ], [ %virxx.1305, %if.end69 ]
  %energy.2.lcssa = phi float [ %energy.3, %for.cond70.for.inc155_crit_edge ], [ %energy.1304, %if.end69 ]
  %indvars.iv.next337 = add i64 %indvars.iv336, 1, !dbg !904
  call void @llvm.dbg.value(metadata !{i32* %nx}, i64 0, metadata !336), !dbg !904
  %38 = trunc i64 %indvars.iv.next337 to i32, !dbg !904
  %cmp38 = icmp slt i32 %38, %37, !dbg !904
  br i1 %cmp38, label %for.body40, label %for.inc158, !dbg !904

for.inc158:                                       ; preds = %for.inc155, %if.end29
  %virzz.1.lcssa = phi float [ %virzz.0326, %if.end29 ], [ %virzz.2.lcssa, %for.inc155 ]
  %viryz.1.lcssa = phi float [ %viryz.0325, %if.end29 ], [ %viryz.2.lcssa, %for.inc155 ]
  %viryy.1.lcssa = phi float [ %viryy.0324, %if.end29 ], [ %viryy.2.lcssa, %for.inc155 ]
  %virxz.1.lcssa = phi float [ %virxz.0323, %if.end29 ], [ %virxz.2.lcssa, %for.inc155 ]
  %virxy.1.lcssa = phi float [ %virxy.0322, %if.end29 ], [ %virxy.2.lcssa, %for.inc155 ]
  %virxx.1.lcssa = phi float [ %virxx.0321, %if.end29 ], [ %virxx.2.lcssa, %for.inc155 ]
  %energy.1.lcssa = phi float [ %energy.0320, %if.end29 ], [ %energy.2.lcssa, %for.inc155 ]
  %indvars.iv.next339 = add i64 %indvars.iv338, 1, !dbg !891
  %lftr.wideiv = trunc i64 %indvars.iv.next339 to i32, !dbg !891
  %exitcond = icmp eq i32 %lftr.wideiv, %11, !dbg !891
  br i1 %exitcond, label %for.end160, label %for.body, !dbg !891

for.end160:                                       ; preds = %for.inc158, %if.end.thread, %if.end
  %virzz.0.lcssa = phi float [ 0.000000e+00, %if.end ], [ 0.000000e+00, %if.end.thread ], [ %virzz.1.lcssa, %for.inc158 ]
  %viryz.0.lcssa = phi float [ 0.000000e+00, %if.end ], [ 0.000000e+00, %if.end.thread ], [ %viryz.1.lcssa, %for.inc158 ]
  %viryy.0.lcssa = phi float [ 0.000000e+00, %if.end ], [ 0.000000e+00, %if.end.thread ], [ %viryy.1.lcssa, %for.inc158 ]
  %virxz.0.lcssa = phi float [ 0.000000e+00, %if.end ], [ 0.000000e+00, %if.end.thread ], [ %virxz.1.lcssa, %for.inc158 ]
  %virxy.0.lcssa = phi float [ 0.000000e+00, %if.end ], [ 0.000000e+00, %if.end.thread ], [ %virxy.1.lcssa, %for.inc158 ]
  %virxx.0.lcssa = phi float [ 0.000000e+00, %if.end ], [ 0.000000e+00, %if.end.thread ], [ %virxx.1.lcssa, %for.inc158 ]
  %energy.0.lcssa = phi float [ 0.000000e+00, %if.end ], [ 0.000000e+00, %if.end.thread ], [ %energy.1.lcssa, %for.inc158 ]
  %conv163 = fmul float %virxx.0.lcssa, 2.500000e-01, !dbg !936
  %arrayidx165 = getelementptr inbounds [3 x float]* %vir, i64 0, i64 0, !dbg !936
  store float %conv163, float* %arrayidx165, align 4, !dbg !936, !tbaa !780
  %conv168 = fmul float %viryy.0.lcssa, 2.500000e-01, !dbg !937
  %arrayidx170 = getelementptr inbounds [3 x float]* %vir, i64 1, i64 1, !dbg !937
  store float %conv168, float* %arrayidx170, align 4, !dbg !937, !tbaa !780
  %conv173 = fmul float %virzz.0.lcssa, 2.500000e-01, !dbg !938
  %arrayidx175 = getelementptr inbounds [3 x float]* %vir, i64 2, i64 2, !dbg !938
  store float %conv173, float* %arrayidx175, align 4, !dbg !938, !tbaa !780
  %conv178 = fmul float %virxy.0.lcssa, 2.500000e-01, !dbg !939
  %arrayidx180 = getelementptr inbounds [3 x float]* %vir, i64 1, i64 0, !dbg !939
  store float %conv178, float* %arrayidx180, align 4, !dbg !939, !tbaa !780
  %arrayidx182 = getelementptr inbounds [3 x float]* %vir, i64 0, i64 1, !dbg !939
  store float %conv178, float* %arrayidx182, align 4, !dbg !939, !tbaa !780
  %conv185 = fmul float %virxz.0.lcssa, 2.500000e-01, !dbg !940
  %arrayidx187 = getelementptr inbounds [3 x float]* %vir, i64 2, i64 0, !dbg !940
  store float %conv185, float* %arrayidx187, align 4, !dbg !940, !tbaa !780
  %arrayidx189 = getelementptr inbounds [3 x float]* %vir, i64 0, i64 2, !dbg !940
  store float %conv185, float* %arrayidx189, align 4, !dbg !940, !tbaa !780
  %conv192 = fmul float %viryz.0.lcssa, 2.500000e-01, !dbg !941
  %arrayidx194 = getelementptr inbounds [3 x float]* %vir, i64 2, i64 1, !dbg !941
  store float %conv192, float* %arrayidx194, align 4, !dbg !941, !tbaa !780
  %arrayidx196 = getelementptr inbounds [3 x float]* %vir, i64 1, i64 2, !dbg !941
  store float %conv192, float* %arrayidx196, align 4, !dbg !941, !tbaa !780
  %conv199 = fmul float %energy.0.lcssa, 5.000000e-01, !dbg !942
  ret float %conv199, !dbg !942
}

; Function Attrs: nounwind optsize
declare double @exp(double) #2

; Function Attrs: nounwind optsize uwtable
define void @gather_f_bsplines(%struct.t_fftgrid* %grid, [3 x float]* nocapture %recipbox, [3 x i32]* nocapture %idx, [3 x float]* nocapture %f, float* nocapture %charge, float** nocapture %theta, float** nocapture %dtheta, i32 %nr, i32 %order, i32* nocapture %nnx, i32* nocapture %nny, i32* nocapture %nnz) #0 {
entry:
  %nx = alloca i32, align 4
  %ny = alloca i32, align 4
  %nz = alloca i32, align 4
  %la2 = alloca i32, align 4
  %la12 = alloca i32, align 4
  %ptr = alloca float*, align 8
  call void @llvm.dbg.value(metadata !{%struct.t_fftgrid* %grid}, i64 0, metadata !387), !dbg !943
  call void @llvm.dbg.value(metadata !{[3 x float]* %recipbox}, i64 0, metadata !388), !dbg !943
  call void @llvm.dbg.value(metadata !{[3 x i32]* %idx}, i64 0, metadata !389), !dbg !944
  call void @llvm.dbg.value(metadata !{[3 x float]* %f}, i64 0, metadata !390), !dbg !944
  call void @llvm.dbg.value(metadata !{float* %charge}, i64 0, metadata !391), !dbg !944
  call void @llvm.dbg.value(metadata !{float** %theta}, i64 0, metadata !392), !dbg !944
  call void @llvm.dbg.value(metadata !{float** %dtheta}, i64 0, metadata !393), !dbg !945
  call void @llvm.dbg.value(metadata !{i32 %nr}, i64 0, metadata !394), !dbg !945
  call void @llvm.dbg.value(metadata !{i32 %order}, i64 0, metadata !395), !dbg !945
  call void @llvm.dbg.value(metadata !{i32* %nnx}, i64 0, metadata !396), !dbg !946
  call void @llvm.dbg.value(metadata !{i32* %nny}, i64 0, metadata !397), !dbg !946
  call void @llvm.dbg.value(metadata !{i32* %nnz}, i64 0, metadata !398), !dbg !946
  call void @llvm.dbg.declare(metadata !{i32* %nx}, metadata !412), !dbg !947
  call void @llvm.dbg.declare(metadata !{i32* %ny}, metadata !413), !dbg !947
  call void @llvm.dbg.declare(metadata !{i32* %nz}, metadata !414), !dbg !947
  call void @llvm.dbg.declare(metadata !{i32* %la2}, metadata !415), !dbg !947
  call void @llvm.dbg.declare(metadata !{i32* %la12}, metadata !416), !dbg !947
  call void @llvm.dbg.declare(metadata !{float** %ptr}, metadata !417), !dbg !948
  call void @unpack_fftgrid(%struct.t_fftgrid* %grid, i32* %nx, i32* %ny, i32* %nz, i32* %la2, i32* %la12, i32 1, float** %ptr) #5, !dbg !949
  %0 = load float** %theta, align 8, !dbg !950, !tbaa !773
  call void @llvm.dbg.value(metadata !{float* %0}, i64 0, metadata !438), !dbg !950
  %arrayidx1 = getelementptr inbounds float** %theta, i64 1, !dbg !951
  %1 = load float** %arrayidx1, align 8, !dbg !951, !tbaa !773
  call void @llvm.dbg.value(metadata !{float* %1}, i64 0, metadata !439), !dbg !951
  %arrayidx2 = getelementptr inbounds float** %theta, i64 2, !dbg !952
  %2 = load float** %arrayidx2, align 8, !dbg !952, !tbaa !773
  call void @llvm.dbg.value(metadata !{float* %2}, i64 0, metadata !440), !dbg !952
  %3 = load float** %dtheta, align 8, !dbg !953, !tbaa !773
  call void @llvm.dbg.value(metadata !{float* %3}, i64 0, metadata !441), !dbg !953
  %arrayidx4 = getelementptr inbounds float** %dtheta, i64 1, !dbg !954
  %4 = load float** %arrayidx4, align 8, !dbg !954, !tbaa !773
  call void @llvm.dbg.value(metadata !{float* %4}, i64 0, metadata !442), !dbg !954
  %arrayidx5 = getelementptr inbounds float** %dtheta, i64 2, !dbg !955
  %5 = load float** %arrayidx5, align 8, !dbg !955, !tbaa !773
  call void @llvm.dbg.value(metadata !{float* %5}, i64 0, metadata !443), !dbg !955
  call void @llvm.dbg.value(metadata !{i32* %nx}, i64 0, metadata !412), !dbg !956
  %idx.ext7 = sext i32 %order to i64, !dbg !956
  call void @llvm.dbg.value(metadata !{i32* %ny}, i64 0, metadata !413), !dbg !957
  call void @llvm.dbg.value(metadata !{i32* %nz}, i64 0, metadata !414), !dbg !958
  %6 = load i32* %nz, align 4, !dbg !958, !tbaa !815
  %idx.ext15 = sext i32 %6 to i64, !dbg !958
  %add.ptr16.sum = sub i64 1, %idx.ext7, !dbg !958
  %add.ptr17.sum = add i64 %add.ptr16.sum, %idx.ext15, !dbg !958
  %arrayidx22 = getelementptr inbounds [3 x float]* %recipbox, i64 0, i64 0, !dbg !959
  %7 = load float* %arrayidx22, align 4, !dbg !959, !tbaa !780
  call void @llvm.dbg.value(metadata !{float %7}, i64 0, metadata !449), !dbg !959
  %arrayidx24 = getelementptr inbounds [3 x float]* %recipbox, i64 1, i64 0, !dbg !960
  %8 = load float* %arrayidx24, align 4, !dbg !960, !tbaa !780
  call void @llvm.dbg.value(metadata !{float %8}, i64 0, metadata !450), !dbg !960
  %arrayidx26 = getelementptr inbounds [3 x float]* %recipbox, i64 1, i64 1, !dbg !961
  %9 = load float* %arrayidx26, align 4, !dbg !961, !tbaa !780
  call void @llvm.dbg.value(metadata !{float %9}, i64 0, metadata !451), !dbg !961
  %arrayidx28 = getelementptr inbounds [3 x float]* %recipbox, i64 2, i64 0, !dbg !962
  %10 = load float* %arrayidx28, align 4, !dbg !962, !tbaa !780
  call void @llvm.dbg.value(metadata !{float %10}, i64 0, metadata !452), !dbg !962
  %arrayidx30 = getelementptr inbounds [3 x float]* %recipbox, i64 2, i64 1, !dbg !963
  %11 = load float* %arrayidx30, align 4, !dbg !963, !tbaa !780
  call void @llvm.dbg.value(metadata !{float %11}, i64 0, metadata !453), !dbg !963
  %arrayidx32 = getelementptr inbounds [3 x float]* %recipbox, i64 2, i64 2, !dbg !964
  %12 = load float* %arrayidx32, align 4, !dbg !964, !tbaa !780
  call void @llvm.dbg.value(metadata !{float %12}, i64 0, metadata !454), !dbg !964
  call void @llvm.dbg.value(metadata !148, i64 0, metadata !402), !dbg !965
  %cmp374 = icmp sgt i32 %nr, 0, !dbg !965
  br i1 %cmp374, label %for.body.lr.ph, label %for.end216, !dbg !965

for.body.lr.ph:                                   ; preds = %entry
  call void @llvm.dbg.value(metadata !{i32* %ny}, i64 0, metadata !413), !dbg !957
  %13 = load i32* %ny, align 4, !dbg !957, !tbaa !815
  call void @llvm.dbg.value(metadata !{i32* %nx}, i64 0, metadata !412), !dbg !956
  %14 = load i32* %nx, align 4, !dbg !956, !tbaa !815
  %idx.ext9 = sext i32 %13 to i64, !dbg !957
  %idx.ext = sext i32 %14 to i64, !dbg !956
  %add.ptr6.sum = add i64 %add.ptr16.sum, %idx.ext, !dbg !956
  call void @llvm.dbg.value(metadata !{i32* %nx}, i64 0, metadata !412), !dbg !967
  %conv178 = sitofp i32 %14 to float, !dbg !967
  call void @llvm.dbg.value(metadata !{i32* %nx}, i64 0, metadata !412), !dbg !970
  call void @llvm.dbg.value(metadata !{i32* %ny}, i64 0, metadata !413), !dbg !970
  %conv188 = sitofp i32 %13 to float, !dbg !970
  call void @llvm.dbg.value(metadata !{i32* %nx}, i64 0, metadata !412), !dbg !971
  call void @llvm.dbg.value(metadata !{i32* %ny}, i64 0, metadata !413), !dbg !971
  call void @llvm.dbg.value(metadata !{i32* %nz}, i64 0, metadata !414), !dbg !971
  %conv204 = sitofp i32 %6 to float, !dbg !971
  %add.ptr11.sum = add i64 %add.ptr16.sum, %idx.ext9, !dbg !957
  %cmp53 = icmp eq i32 %order, 4, !dbg !972
  call void @llvm.dbg.value(metadata !{i32* %la12}, i64 0, metadata !416), !dbg !975
  %15 = load i32* %la12, align 4, !dbg !975, !tbaa !815
  call void @llvm.dbg.value(metadata !{i32* %la2}, i64 0, metadata !415), !dbg !975
  %16 = load i32* %la2, align 4, !dbg !975, !tbaa !815
  call void @llvm.dbg.value(metadata !{float** %ptr}, i64 0, metadata !417), !dbg !979
  %17 = load float** %ptr, align 8, !dbg !979, !tbaa !773
  call void @llvm.dbg.value(metadata !{i32* %la12}, i64 0, metadata !416), !dbg !982
  call void @llvm.dbg.value(metadata !{i32* %la2}, i64 0, metadata !415), !dbg !982
  call void @llvm.dbg.value(metadata !{float** %ptr}, i64 0, metadata !417), !dbg !986
  br label %for.body, !dbg !965

for.body:                                         ; preds = %for.inc214, %for.body.lr.ph
  %indvars.iv394 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next395, %for.inc214 ]
  %indvars.iv389 = phi i32 [ 0, %for.body.lr.ph ], [ %indvars.iv.next390, %for.inc214 ]
  %18 = sext i32 %indvars.iv389 to i64, !dbg !965
  %arrayidx33 = getelementptr inbounds float* %charge, i64 %indvars.iv394, !dbg !987
  %19 = load float* %arrayidx33, align 4, !dbg !987, !tbaa !780
  call void @llvm.dbg.value(metadata !{float %19}, i64 0, metadata !425), !dbg !987
  call void @llvm.dbg.value(metadata !874, i64 0, metadata !426), !dbg !988
  call void @llvm.dbg.value(metadata !874, i64 0, metadata !427), !dbg !989
  call void @llvm.dbg.value(metadata !874, i64 0, metadata !428), !dbg !990
  %fabsf = call float @fabsf(float %19) #6, !dbg !991
  %20 = fpext float %fabsf to double, !dbg !991
  %cmp34 = fcmp ogt double %20, 1.200000e-38, !dbg !991
  br i1 %cmp34, label %if.then, label %for.inc214, !dbg !991

if.then:                                          ; preds = %for.body
  call void @llvm.dbg.value(metadata !{i32* %arraydecay}, i64 0, metadata !447), !dbg !992
  call void @llvm.dbg.value(metadata !{i32 %23}, i64 0, metadata !418), !dbg !993
  call void @llvm.dbg.value(metadata !{i32 %24}, i64 0, metadata !419), !dbg !994
  call void @llvm.dbg.value(metadata !{i32 %22}, i64 0, metadata !420), !dbg !995
  call void @llvm.dbg.value(metadata !{i32* %add.ptr42}, i64 0, metadata !403), !dbg !996
  %21 = trunc i64 %indvars.iv394 to i32, !dbg !997
  %mul = mul nsw i32 %21, %order, !dbg !997
  call void @llvm.dbg.value(metadata !{i32 %mul}, i64 0, metadata !445), !dbg !997
  %add = add nsw i32 %mul, %order, !dbg !998
  call void @llvm.dbg.value(metadata !{i32 %add}, i64 0, metadata !446), !dbg !998
  call void @llvm.dbg.value(metadata !{i32 %mul}, i64 0, metadata !409), !dbg !999
  %cmp44365 = icmp sgt i32 %order, 0, !dbg !999
  br i1 %cmp44365, label %for.body46.lr.ph, label %for.end177, !dbg !999

for.body46.lr.ph:                                 ; preds = %if.then
  %arrayidx40 = getelementptr inbounds [3 x i32]* %idx, i64 %indvars.iv394, i64 2, !dbg !995
  %22 = load i32* %arrayidx40, align 4, !dbg !995, !tbaa !815
  %arraydecay = getelementptr inbounds [3 x i32]* %idx, i64 %indvars.iv394, i64 0, !dbg !992
  %23 = load i32* %arraydecay, align 4, !dbg !993, !tbaa !815
  %idx.ext41 = sext i32 %23 to i64, !dbg !996
  %add.ptr8.sum = add i64 %add.ptr6.sum, %idx.ext41, !dbg !996
  %arrayidx39 = getelementptr inbounds [3 x i32]* %idx, i64 %indvars.iv394, i64 1, !dbg !994
  %add.ptr42 = getelementptr inbounds i32* %nnx, i64 %add.ptr8.sum, !dbg !996
  %24 = load i32* %arrayidx39, align 4, !dbg !994, !tbaa !815
  %idx.ext51 = sext i32 %24 to i64, !dbg !1000
  %add.ptr14.sum = add i64 %add.ptr11.sum, %idx.ext51, !dbg !1000
  %add.ptr52 = getelementptr inbounds i32* %nny, i64 %add.ptr14.sum, !dbg !1000
  %idx.ext136 = sext i32 %22 to i64, !dbg !1001
  %add.ptr20.sum = add i64 %idx.ext136, %add.ptr17.sum, !dbg !1001
  %add.ptr137 = getelementptr inbounds i32* %nnz, i64 %add.ptr20.sum, !dbg !1001
  %add.ptr65.sum = add i64 %add.ptr20.sum, 1, !dbg !1002
  %arrayidx74 = getelementptr inbounds i32* %nnz, i64 %add.ptr65.sum, !dbg !1002
  %add.ptr65.sum338 = add i64 %add.ptr20.sum, 2, !dbg !1003
  %arrayidx78 = getelementptr inbounds i32* %nnz, i64 %add.ptr65.sum338, !dbg !1003
  %add.ptr65.sum339 = add i64 %add.ptr20.sum, 3, !dbg !1004
  %arrayidx82 = getelementptr inbounds i32* %nnz, i64 %add.ptr65.sum339, !dbg !1004
  %idxprom86 = sext i32 %mul to i64, !dbg !1005
  %arrayidx87 = getelementptr inbounds float* %2, i64 %idxprom86, !dbg !1005
  %arrayidx90 = getelementptr inbounds float* %5, i64 %idxprom86, !dbg !1006
  %inc = add nsw i32 %mul, 1, !dbg !1007
  %idxprom92 = sext i32 %inc to i64, !dbg !1008
  %arrayidx93 = getelementptr inbounds float* %2, i64 %idxprom92, !dbg !1008
  %arrayidx97 = getelementptr inbounds float* %5, i64 %idxprom92, !dbg !1009
  %inc100 = add nsw i32 %mul, 2, !dbg !1010
  %idxprom101 = sext i32 %inc100 to i64, !dbg !1011
  %arrayidx102 = getelementptr inbounds float* %2, i64 %idxprom101, !dbg !1011
  %arrayidx106 = getelementptr inbounds float* %5, i64 %idxprom101, !dbg !1012
  %inc109 = add nsw i32 %mul, 3, !dbg !1013
  %idxprom110 = sext i32 %inc109 to i64, !dbg !1014
  %arrayidx111 = getelementptr inbounds float* %2, i64 %idxprom110, !dbg !1014
  %arrayidx115 = getelementptr inbounds float* %5, i64 %idxprom110, !dbg !1015
  br label %for.body46, !dbg !999

for.body46:                                       ; preds = %for.body46.lr.ph, %for.inc174
  %indvars.iv391 = phi i64 [ %18, %for.body46.lr.ph ], [ %indvars.iv.next392, %for.inc174 ], !dbg !965
  %i0.0370 = phi i32* [ %add.ptr42, %for.body46.lr.ph ], [ %incdec.ptr176, %for.inc174 ]
  %ithx.0369 = phi i32 [ %mul, %for.body46.lr.ph ], [ %inc175, %for.inc174 ]
  %fx.0368 = phi float [ 0.000000e+00, %for.body46.lr.ph ], [ %fx.3, %for.inc174 ]
  %fy.0367 = phi float [ 0.000000e+00, %for.body46.lr.ph ], [ %fy.3, %for.inc174 ]
  %fz.0366 = phi float [ 0.000000e+00, %for.body46.lr.ph ], [ %fz.3, %for.inc174 ]
  %25 = load i32* %i0.0370, align 4, !dbg !1016, !tbaa !815
  call void @llvm.dbg.value(metadata !{i32 %25}, i64 0, metadata !399), !dbg !1016
  %arrayidx48 = getelementptr inbounds float* %0, i64 %indvars.iv391, !dbg !1017
  %26 = load float* %arrayidx48, align 4, !dbg !1017, !tbaa !780
  call void @llvm.dbg.value(metadata !{float %26}, i64 0, metadata !421), !dbg !1017
  %arrayidx50 = getelementptr inbounds float* %3, i64 %indvars.iv391, !dbg !1018
  %27 = load float* %arrayidx50, align 4, !dbg !1018, !tbaa !780
  call void @llvm.dbg.value(metadata !{float %27}, i64 0, metadata !423), !dbg !1018
  call void @llvm.dbg.value(metadata !{i32* %add.ptr52}, i64 0, metadata !404), !dbg !1000
  call void @llvm.dbg.value(metadata !{i32 %mul}, i64 0, metadata !410), !dbg !1019
  %mul66 = mul nsw i32 %15, %25, !dbg !982
  br i1 %cmp53, label %for.body59.lr.ph, label %for.body145.lr.ph, !dbg !972

for.body59.lr.ph:                                 ; preds = %for.body46
  %28 = load i32* %add.ptr137, align 4, !dbg !986, !tbaa !815
  %29 = load i32* %arrayidx74, align 4, !dbg !1002, !tbaa !815
  %30 = load i32* %arrayidx78, align 4, !dbg !1003, !tbaa !815
  %31 = load i32* %arrayidx82, align 4, !dbg !1004, !tbaa !815
  %32 = load float* %arrayidx87, align 4, !dbg !1005, !tbaa !780
  %33 = load float* %arrayidx90, align 4, !dbg !1006, !tbaa !780
  %34 = load float* %arrayidx93, align 4, !dbg !1008, !tbaa !780
  %35 = load float* %arrayidx97, align 4, !dbg !1009, !tbaa !780
  %36 = load float* %arrayidx102, align 4, !dbg !1011, !tbaa !780
  %37 = load float* %arrayidx106, align 4, !dbg !1012, !tbaa !780
  %38 = load float* %arrayidx111, align 4, !dbg !1014, !tbaa !780
  %39 = load float* %arrayidx115, align 4, !dbg !1015, !tbaa !780
  br label %for.body59, !dbg !1019

for.body59:                                       ; preds = %for.body59.lr.ph, %for.body59
  %indvars.iv386 = phi i64 [ %18, %for.body59.lr.ph ], [ %indvars.iv.next387, %for.body59 ], !dbg !965
  %j0.0361 = phi i32* [ %add.ptr52, %for.body59.lr.ph ], [ %incdec.ptr, %for.body59 ]
  %ithy.0360 = phi i32 [ %mul, %for.body59.lr.ph ], [ %inc127, %for.body59 ]
  %fx.1359 = phi float [ %fx.0368, %for.body59.lr.ph ], [ %add120, %for.body59 ]
  %fy.1358 = phi float [ %fy.0367, %for.body59.lr.ph ], [ %add123, %for.body59 ]
  %fz.1357 = phi float [ %fz.0366, %for.body59.lr.ph ], [ %add126, %for.body59 ]
  %40 = load i32* %j0.0361, align 4, !dbg !1020, !tbaa !815
  call void @llvm.dbg.value(metadata !{i32 %40}, i64 0, metadata !400), !dbg !1020
  %arrayidx61 = getelementptr inbounds float* %1, i64 %indvars.iv386, !dbg !1021
  %41 = load float* %arrayidx61, align 4, !dbg !1021, !tbaa !780
  call void @llvm.dbg.value(metadata !{float %41}, i64 0, metadata !422), !dbg !1021
  %arrayidx63 = getelementptr inbounds float* %4, i64 %indvars.iv386, !dbg !1022
  %42 = load float* %arrayidx63, align 4, !dbg !1022, !tbaa !780
  call void @llvm.dbg.value(metadata !{float %42}, i64 0, metadata !424), !dbg !1022
  call void @llvm.dbg.value(metadata !{i32* %add.ptr137}, i64 0, metadata !405), !dbg !1023
  call void @llvm.dbg.value(metadata !{i32* %la12}, i64 0, metadata !416), !dbg !982
  call void @llvm.dbg.value(metadata !{i32* %la2}, i64 0, metadata !415), !dbg !982
  %mul67 = mul nsw i32 %16, %40, !dbg !982
  %add68 = add nsw i32 %mul67, %mul66, !dbg !982
  call void @llvm.dbg.value(metadata !{i32 %add68}, i64 0, metadata !448), !dbg !982
  %add71 = add nsw i32 %add68, %28, !dbg !986
  %idxprom72 = sext i32 %add71 to i64, !dbg !986
  call void @llvm.dbg.value(metadata !{float** %ptr}, i64 0, metadata !417), !dbg !986
  %arrayidx73 = getelementptr inbounds float* %17, i64 %idxprom72, !dbg !986
  %43 = load float* %arrayidx73, align 4, !dbg !986, !tbaa !780
  call void @llvm.dbg.value(metadata !{float %43}, i64 0, metadata !432), !dbg !986
  %add75 = add nsw i32 %29, %add68, !dbg !1002
  %idxprom76 = sext i32 %add75 to i64, !dbg !1002
  %arrayidx77 = getelementptr inbounds float* %17, i64 %idxprom76, !dbg !1002
  %44 = load float* %arrayidx77, align 4, !dbg !1002, !tbaa !780
  call void @llvm.dbg.value(metadata !{float %44}, i64 0, metadata !433), !dbg !1002
  %add79 = add nsw i32 %30, %add68, !dbg !1003
  %idxprom80 = sext i32 %add79 to i64, !dbg !1003
  %arrayidx81 = getelementptr inbounds float* %17, i64 %idxprom80, !dbg !1003
  %45 = load float* %arrayidx81, align 4, !dbg !1003, !tbaa !780
  call void @llvm.dbg.value(metadata !{float %45}, i64 0, metadata !434), !dbg !1003
  %add83 = add nsw i32 %31, %add68, !dbg !1004
  %idxprom84 = sext i32 %add83 to i64, !dbg !1004
  %arrayidx85 = getelementptr inbounds float* %17, i64 %idxprom84, !dbg !1004
  %46 = load float* %arrayidx85, align 4, !dbg !1004, !tbaa !780
  call void @llvm.dbg.value(metadata !{float %46}, i64 0, metadata !435), !dbg !1004
  call void @llvm.dbg.value(metadata !{i32 %mul}, i64 0, metadata !411), !dbg !1024
  %mul88 = fmul float %43, %32, !dbg !1005
  call void @llvm.dbg.value(metadata !{float %mul88}, i64 0, metadata !436), !dbg !1005
  %mul91 = fmul float %43, %33, !dbg !1006
  call void @llvm.dbg.value(metadata !{float %mul91}, i64 0, metadata !437), !dbg !1006
  call void @llvm.dbg.value(metadata !{i32 %inc}, i64 0, metadata !411), !dbg !1007
  %mul94 = fmul float %44, %34, !dbg !1008
  %add95 = fadd float %mul88, %mul94, !dbg !1008
  call void @llvm.dbg.value(metadata !{float %add95}, i64 0, metadata !436), !dbg !1008
  %mul98 = fmul float %44, %35, !dbg !1009
  %add99 = fadd float %mul91, %mul98, !dbg !1009
  call void @llvm.dbg.value(metadata !{float %add99}, i64 0, metadata !437), !dbg !1009
  call void @llvm.dbg.value(metadata !{i32 %inc100}, i64 0, metadata !411), !dbg !1010
  %mul103 = fmul float %45, %36, !dbg !1011
  %add104 = fadd float %add95, %mul103, !dbg !1011
  call void @llvm.dbg.value(metadata !{float %add104}, i64 0, metadata !436), !dbg !1011
  %mul107 = fmul float %45, %37, !dbg !1012
  %add108 = fadd float %add99, %mul107, !dbg !1012
  call void @llvm.dbg.value(metadata !{float %add108}, i64 0, metadata !437), !dbg !1012
  call void @llvm.dbg.value(metadata !{i32 %inc109}, i64 0, metadata !411), !dbg !1013
  %mul112 = fmul float %46, %38, !dbg !1014
  %add113 = fadd float %add104, %mul112, !dbg !1014
  call void @llvm.dbg.value(metadata !{float %add113}, i64 0, metadata !436), !dbg !1014
  %mul116 = fmul float %46, %39, !dbg !1015
  %add117 = fadd float %add108, %mul116, !dbg !1015
  call void @llvm.dbg.value(metadata !{float %add117}, i64 0, metadata !437), !dbg !1015
  %mul118 = fmul float %27, %41, !dbg !1025
  %mul119 = fmul float %mul118, %add113, !dbg !1025
  %add120 = fadd float %fx.1359, %mul119, !dbg !1025
  call void @llvm.dbg.value(metadata !{float %add120}, i64 0, metadata !426), !dbg !1025
  %mul121 = fmul float %26, %42, !dbg !1026
  %mul122 = fmul float %mul121, %add113, !dbg !1026
  %add123 = fadd float %fy.1358, %mul122, !dbg !1026
  call void @llvm.dbg.value(metadata !{float %add123}, i64 0, metadata !427), !dbg !1026
  %mul124 = fmul float %26, %41, !dbg !1027
  %mul125 = fmul float %mul124, %add117, !dbg !1027
  %add126 = fadd float %fz.1357, %mul125, !dbg !1027
  call void @llvm.dbg.value(metadata !{float %add126}, i64 0, metadata !428), !dbg !1027
  %inc127 = add nsw i32 %ithy.0360, 1, !dbg !1019
  call void @llvm.dbg.value(metadata !{i32 %inc127}, i64 0, metadata !410), !dbg !1019
  %incdec.ptr = getelementptr inbounds i32* %j0.0361, i64 1, !dbg !1019
  call void @llvm.dbg.value(metadata !{i32* %incdec.ptr}, i64 0, metadata !404), !dbg !1019
  %cmp57 = icmp slt i32 %inc127, %add, !dbg !1019
  %indvars.iv.next387 = add i64 %indvars.iv386, 1, !dbg !1019
  br i1 %cmp57, label %for.body59, label %for.inc174, !dbg !1019

for.body145.lr.ph:                                ; preds = %for.body46, %for.end160
  %indvars.iv381 = phi i64 [ %indvars.iv.next382, %for.end160 ], [ %18, %for.body46 ], !dbg !965
  %j0.1351 = phi i32* [ %incdec.ptr172, %for.end160 ], [ %add.ptr52, %for.body46 ]
  %ithy.1350 = phi i32 [ %inc171, %for.end160 ], [ %mul, %for.body46 ]
  %fx.2349 = phi float [ %add163, %for.end160 ], [ %fx.0368, %for.body46 ]
  %fy.2348 = phi float [ %add166, %for.end160 ], [ %fy.0367, %for.body46 ]
  %fz.2347 = phi float [ %add169, %for.end160 ], [ %fz.0366, %for.body46 ]
  %47 = load i32* %j0.1351, align 4, !dbg !1028, !tbaa !815
  call void @llvm.dbg.value(metadata !{i32 %47}, i64 0, metadata !400), !dbg !1028
  %arrayidx133 = getelementptr inbounds float* %1, i64 %indvars.iv381, !dbg !1029
  %48 = load float* %arrayidx133, align 4, !dbg !1029, !tbaa !780
  call void @llvm.dbg.value(metadata !{float %48}, i64 0, metadata !422), !dbg !1029
  %arrayidx135 = getelementptr inbounds float* %4, i64 %indvars.iv381, !dbg !1030
  %49 = load float* %arrayidx135, align 4, !dbg !1030, !tbaa !780
  call void @llvm.dbg.value(metadata !{float %49}, i64 0, metadata !424), !dbg !1030
  call void @llvm.dbg.value(metadata !{i32* %add.ptr137}, i64 0, metadata !405), !dbg !1001
  call void @llvm.dbg.value(metadata !{i32* %la12}, i64 0, metadata !416), !dbg !975
  call void @llvm.dbg.value(metadata !{i32* %la2}, i64 0, metadata !415), !dbg !975
  %mul139 = mul nsw i32 %16, %47, !dbg !975
  %add140 = add nsw i32 %mul139, %mul66, !dbg !975
  call void @llvm.dbg.value(metadata !{i32 %add140}, i64 0, metadata !448), !dbg !975
  call void @llvm.dbg.value(metadata !874, i64 0, metadata !437), !dbg !1031
  call void @llvm.dbg.value(metadata !874, i64 0, metadata !436), !dbg !1031
  call void @llvm.dbg.value(metadata !{i32 %mul}, i64 0, metadata !411), !dbg !1032
  br label %for.body145, !dbg !1032

for.body145:                                      ; preds = %for.body145.for.body145_crit_edge, %for.body145.lr.ph
  %indvars.iv376 = phi i64 [ %18, %for.body145.lr.ph ], [ %indvars.iv.next377, %for.body145.for.body145_crit_edge ], !dbg !965
  %k0.0344 = phi i32* [ %add.ptr137, %for.body145.lr.ph ], [ %incdec.ptr159, %for.body145.for.body145_crit_edge ]
  %ithz.0343 = phi i32 [ %mul, %for.body145.lr.ph ], [ %inc158, %for.body145.for.body145_crit_edge ]
  %fxy1.0342 = phi float [ 0.000000e+00, %for.body145.lr.ph ], [ %add152, %for.body145.for.body145_crit_edge ]
  %fz1.0341 = phi float [ 0.000000e+00, %for.body145.lr.ph ], [ %add156, %for.body145.for.body145_crit_edge ]
  %50 = load i32* %k0.0344, align 4, !dbg !1033, !tbaa !815
  call void @llvm.dbg.value(metadata !{i32 %50}, i64 0, metadata !401), !dbg !1033
  %add146 = add nsw i32 %add140, %50, !dbg !979
  %idxprom147 = sext i32 %add146 to i64, !dbg !979
  call void @llvm.dbg.value(metadata !{float** %ptr}, i64 0, metadata !417), !dbg !979
  %arrayidx148 = getelementptr inbounds float* %17, i64 %idxprom147, !dbg !979
  %51 = load float* %arrayidx148, align 4, !dbg !979, !tbaa !780
  call void @llvm.dbg.value(metadata !{float %51}, i64 0, metadata !429), !dbg !979
  %arrayidx150 = getelementptr inbounds float* %2, i64 %indvars.iv376, !dbg !1034
  %52 = load float* %arrayidx150, align 4, !dbg !1034, !tbaa !780
  %mul151 = fmul float %51, %52, !dbg !1034
  %add152 = fadd float %fxy1.0342, %mul151, !dbg !1034
  call void @llvm.dbg.value(metadata !{float %add152}, i64 0, metadata !436), !dbg !1034
  %arrayidx154 = getelementptr inbounds float* %5, i64 %indvars.iv376, !dbg !1035
  %53 = load float* %arrayidx154, align 4, !dbg !1035, !tbaa !780
  %mul155 = fmul float %51, %53, !dbg !1035
  %add156 = fadd float %fz1.0341, %mul155, !dbg !1035
  call void @llvm.dbg.value(metadata !{float %add156}, i64 0, metadata !437), !dbg !1035
  %inc158 = add nsw i32 %ithz.0343, 1, !dbg !1032
  call void @llvm.dbg.value(metadata !{i32 %inc158}, i64 0, metadata !411), !dbg !1032
  call void @llvm.dbg.value(metadata !{i32* %incdec.ptr159}, i64 0, metadata !405), !dbg !1032
  %cmp143 = icmp slt i32 %inc158, %add, !dbg !1032
  br i1 %cmp143, label %for.body145.for.body145_crit_edge, label %for.end160, !dbg !1032

for.body145.for.body145_crit_edge:                ; preds = %for.body145
  %indvars.iv.next377 = add i64 %indvars.iv376, 1, !dbg !1032
  %incdec.ptr159 = getelementptr inbounds i32* %k0.0344, i64 1, !dbg !1032
  br label %for.body145, !dbg !1032

for.end160:                                       ; preds = %for.body145
  %mul161 = fmul float %27, %48, !dbg !1036
  %mul162 = fmul float %mul161, %add152, !dbg !1036
  %add163 = fadd float %fx.2349, %mul162, !dbg !1036
  call void @llvm.dbg.value(metadata !{float %add163}, i64 0, metadata !426), !dbg !1036
  %mul164 = fmul float %26, %49, !dbg !1037
  %mul165 = fmul float %mul164, %add152, !dbg !1037
  %add166 = fadd float %fy.2348, %mul165, !dbg !1037
  call void @llvm.dbg.value(metadata !{float %add166}, i64 0, metadata !427), !dbg !1037
  %mul167 = fmul float %26, %48, !dbg !1038
  %mul168 = fmul float %mul167, %add156, !dbg !1038
  %add169 = fadd float %fz.2347, %mul168, !dbg !1038
  call void @llvm.dbg.value(metadata !{float %add169}, i64 0, metadata !428), !dbg !1038
  %inc171 = add nsw i32 %ithy.1350, 1, !dbg !1039
  call void @llvm.dbg.value(metadata !{i32 %inc171}, i64 0, metadata !410), !dbg !1039
  %incdec.ptr172 = getelementptr inbounds i32* %j0.1351, i64 1, !dbg !1039
  call void @llvm.dbg.value(metadata !{i32* %incdec.ptr172}, i64 0, metadata !404), !dbg !1039
  %cmp129 = icmp slt i32 %inc171, %add, !dbg !1039
  %indvars.iv.next382 = add i64 %indvars.iv381, 1, !dbg !1039
  br i1 %cmp129, label %for.body145.lr.ph, label %for.inc174, !dbg !1039

for.inc174:                                       ; preds = %for.body59, %for.end160
  %fz.3 = phi float [ %add169, %for.end160 ], [ %add126, %for.body59 ]
  %fy.3 = phi float [ %add166, %for.end160 ], [ %add123, %for.body59 ]
  %fx.3 = phi float [ %add163, %for.end160 ], [ %add120, %for.body59 ]
  %inc175 = add nsw i32 %ithx.0369, 1, !dbg !999
  call void @llvm.dbg.value(metadata !{i32 %inc175}, i64 0, metadata !409), !dbg !999
  %incdec.ptr176 = getelementptr inbounds i32* %i0.0370, i64 1, !dbg !999
  call void @llvm.dbg.value(metadata !{i32* %incdec.ptr176}, i64 0, metadata !403), !dbg !999
  %cmp44 = icmp slt i32 %inc175, %add, !dbg !999
  %indvars.iv.next392 = add i64 %indvars.iv391, 1, !dbg !999
  br i1 %cmp44, label %for.body46, label %for.end177, !dbg !999

for.end177:                                       ; preds = %for.inc174, %if.then
  %fx.0.lcssa = phi float [ 0.000000e+00, %if.then ], [ %fx.3, %for.inc174 ]
  %fy.0.lcssa = phi float [ 0.000000e+00, %if.then ], [ %fy.3, %for.inc174 ]
  %fz.0.lcssa = phi float [ 0.000000e+00, %if.then ], [ %fz.3, %for.inc174 ]
  call void @llvm.dbg.value(metadata !{i32* %nx}, i64 0, metadata !412), !dbg !967
  %mul179 = fmul float %fx.0.lcssa, %conv178, !dbg !967
  %mul180 = fmul float %7, %mul179, !dbg !967
  %mul181 = fmul float %19, %mul180, !dbg !967
  %arrayidx184 = getelementptr inbounds [3 x float]* %f, i64 %indvars.iv394, i64 0, !dbg !967
  %54 = load float* %arrayidx184, align 4, !dbg !967, !tbaa !780
  %sub = fsub float %54, %mul181, !dbg !967
  store float %sub, float* %arrayidx184, align 4, !dbg !967, !tbaa !780
  call void @llvm.dbg.value(metadata !{i32* %nx}, i64 0, metadata !412), !dbg !970
  %mul187 = fmul float %8, %mul179, !dbg !970
  call void @llvm.dbg.value(metadata !{i32* %ny}, i64 0, metadata !413), !dbg !970
  %mul189 = fmul float %fy.0.lcssa, %conv188, !dbg !970
  %mul190 = fmul float %9, %mul189, !dbg !970
  %add191 = fadd float %mul187, %mul190, !dbg !970
  %mul192 = fmul float %19, %add191, !dbg !970
  %arrayidx195 = getelementptr inbounds [3 x float]* %f, i64 %indvars.iv394, i64 1, !dbg !970
  %55 = load float* %arrayidx195, align 4, !dbg !970, !tbaa !780
  %sub196 = fsub float %55, %mul192, !dbg !970
  store float %sub196, float* %arrayidx195, align 4, !dbg !970, !tbaa !780
  call void @llvm.dbg.value(metadata !{i32* %nx}, i64 0, metadata !412), !dbg !971
  %mul199 = fmul float %10, %mul179, !dbg !971
  call void @llvm.dbg.value(metadata !{i32* %ny}, i64 0, metadata !413), !dbg !971
  %mul202 = fmul float %11, %mul189, !dbg !971
  %add203 = fadd float %mul199, %mul202, !dbg !971
  call void @llvm.dbg.value(metadata !{i32* %nz}, i64 0, metadata !414), !dbg !971
  %mul205 = fmul float %fz.0.lcssa, %conv204, !dbg !971
  %mul206 = fmul float %12, %mul205, !dbg !971
  %add207 = fadd float %add203, %mul206, !dbg !971
  %mul208 = fmul float %19, %add207, !dbg !971
  %arrayidx211 = getelementptr inbounds [3 x float]* %f, i64 %indvars.iv394, i64 2, !dbg !971
  %56 = load float* %arrayidx211, align 4, !dbg !971, !tbaa !780
  %sub212 = fsub float %56, %mul208, !dbg !971
  store float %sub212, float* %arrayidx211, align 4, !dbg !971, !tbaa !780
  br label %for.inc214, !dbg !1040

for.inc214:                                       ; preds = %for.body, %for.end177
  %indvars.iv.next395 = add i64 %indvars.iv394, 1, !dbg !965
  %indvars.iv.next390 = add i32 %indvars.iv389, %order, !dbg !965
  %lftr.wideiv = trunc i64 %indvars.iv.next395 to i32, !dbg !965
  %exitcond = icmp eq i32 %lftr.wideiv, %nr, !dbg !965
  br i1 %exitcond, label %for.end216, label %for.body, !dbg !965

for.end216:                                       ; preds = %for.inc214, %entry
  ret void, !dbg !1041
}

; Function Attrs: nounwind optsize uwtable
define void @make_bsplines(float** nocapture %theta, float** nocapture %dtheta, i32 %order, i32 %nx, i32 %ny, i32 %nz, [3 x float]* nocapture %fractx, [3 x i32]* nocapture %idx, float* nocapture %charge, i32 %nr) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{float** %theta}, i64 0, metadata !459), !dbg !1042
  tail call void @llvm.dbg.value(metadata !{float** %dtheta}, i64 0, metadata !460), !dbg !1042
  tail call void @llvm.dbg.value(metadata !{i32 %order}, i64 0, metadata !461), !dbg !1042
  tail call void @llvm.dbg.value(metadata !{i32 %nx}, i64 0, metadata !462), !dbg !1042
  tail call void @llvm.dbg.value(metadata !{i32 %ny}, i64 0, metadata !463), !dbg !1042
  tail call void @llvm.dbg.value(metadata !{i32 %nz}, i64 0, metadata !464), !dbg !1043
  tail call void @llvm.dbg.value(metadata !{[3 x float]* %fractx}, i64 0, metadata !465), !dbg !1043
  tail call void @llvm.dbg.value(metadata !{[3 x i32]* %idx}, i64 0, metadata !466), !dbg !1043
  tail call void @llvm.dbg.value(metadata !{float* %charge}, i64 0, metadata !467), !dbg !1043
  tail call void @llvm.dbg.value(metadata !{i32 %nr}, i64 0, metadata !468), !dbg !1043
  tail call void @llvm.dbg.value(metadata !148, i64 0, metadata !469), !dbg !1044
  %cmp241 = icmp sgt i32 %nr, 0, !dbg !1044
  br i1 %cmp241, label %for.body.lr.ph, label %for.end143, !dbg !1044

for.body.lr.ph:                                   ; preds = %entry
  %sub = add i32 %order, -1, !dbg !1046
  %idxprom15 = sext i32 %sub to i64, !dbg !1046
  %cmp21234 = icmp sgt i32 %order, 3, !dbg !1051
  %cmp78236 = icmp sgt i32 %order, 1, !dbg !1053
  %conv93 = sitofp i32 %sub to double, !dbg !1055
  %div94 = fdiv double 1.000000e+00, %conv93, !dbg !1055
  %conv95 = fptrunc double %div94 to float, !dbg !1055
  %sub97 = add nsw i32 %order, -2, !dbg !1056
  %idxprom98 = sext i32 %sub97 to i64, !dbg !1056
  %cmp106238 = icmp sgt i32 %sub, 1, !dbg !1057
  br label %for.body, !dbg !1044

for.body:                                         ; preds = %for.inc141, %for.body.lr.ph
  %indvars.iv267 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next268, %for.inc141 ]
  %arrayidx = getelementptr inbounds float* %charge, i64 %indvars.iv267, !dbg !1059
  %0 = load float* %arrayidx, align 4, !dbg !1059, !tbaa !780
  %fabsf = tail call float @fabsf(float %0) #6, !dbg !1059
  %1 = fpext float %fabsf to double, !dbg !1059
  %cmp1 = fcmp ogt double %1, 1.200000e-38, !dbg !1059
  br i1 %cmp1, label %for.cond5.preheader, label %for.inc141, !dbg !1059

for.cond5.preheader:                              ; preds = %for.body
  %2 = trunc i64 %indvars.iv267 to i32, !dbg !1060
  %mul = mul nsw i32 %2, %order, !dbg !1060
  %idxprom11 = sext i32 %mul to i64, !dbg !1060
  %arrayidx14.sum = add i64 %idxprom11, %idxprom15, !dbg !1046
  %arrayidx14.sum222 = add i64 %idxprom11, 1, !dbg !1061
  %arrayidx14.sum223 = add i64 %idxprom11, %idxprom98, !dbg !1056
  br label %for.body8, !dbg !1062

for.body8:                                        ; preds = %for.end132, %for.cond5.preheader
  %indvars.iv263 = phi i64 [ 0, %for.cond5.preheader ], [ %indvars.iv.next264, %for.end132 ]
  %arrayidx10 = getelementptr inbounds [3 x float]* %fractx, i64 %indvars.iv267, i64 %indvars.iv263, !dbg !1063
  %3 = load float* %arrayidx10, align 4, !dbg !1063, !tbaa !780
  tail call void @llvm.dbg.value(metadata !{float %3}, i64 0, metadata !473), !dbg !1063
  %arrayidx13 = getelementptr inbounds float** %theta, i64 %indvars.iv263, !dbg !1060
  %4 = load float** %arrayidx13, align 8, !dbg !1060, !tbaa !773
  %arrayidx14 = getelementptr inbounds float* %4, i64 %idxprom11, !dbg !1060
  tail call void @llvm.dbg.value(metadata !{float* %arrayidx14}, i64 0, metadata !476), !dbg !1060
  %arrayidx16 = getelementptr inbounds float* %4, i64 %arrayidx14.sum, !dbg !1046
  store float 0.000000e+00, float* %arrayidx16, align 4, !dbg !1046, !tbaa !780
  %arrayidx17 = getelementptr inbounds float* %4, i64 %arrayidx14.sum222, !dbg !1061
  store float %3, float* %arrayidx17, align 4, !dbg !1061, !tbaa !780
  %sub18 = fsub float 1.000000e+00, %3, !dbg !1064
  store float %sub18, float* %arrayidx14, align 4, !dbg !1064, !tbaa !780
  tail call void @llvm.dbg.value(metadata !1065, i64 0, metadata !471), !dbg !1051
  br i1 %cmp21234, label %for.body40.lr.ph, label %for.end68, !dbg !1051

for.body40.lr.ph:                                 ; preds = %for.end, %for.body8
  %indvars.iv248 = phi i64 [ %indvars.iv.next249, %for.end ], [ 3, %for.body8 ]
  %indvars.iv246 = phi i32 [ %indvars.iv.next247, %for.end ], [ 2, %for.body8 ], !dbg !1066
  %5 = trunc i64 %indvars.iv248 to i32, !dbg !1069
  %conv24 = sitofp i32 %5 to double, !dbg !1069
  %sub25 = fadd double %conv24, -1.000000e+00, !dbg !1069
  %div26 = fdiv double 1.000000e+00, %sub25, !dbg !1069
  %conv27 = fptrunc double %div26 to float, !dbg !1069
  tail call void @llvm.dbg.value(metadata !{float %conv27}, i64 0, metadata !474), !dbg !1069
  %mul28 = fmul float %3, %conv27, !dbg !1070
  %6 = add nsw i64 %indvars.iv248, -2, !dbg !1070
  %arrayidx14.sum228 = add i64 %6, %idxprom11, !dbg !1070
  %arrayidx31 = getelementptr inbounds float* %4, i64 %arrayidx14.sum228, !dbg !1070
  %7 = load float* %arrayidx31, align 4, !dbg !1070, !tbaa !780
  %mul32 = fmul float %7, %mul28, !dbg !1070
  %8 = add nsw i64 %indvars.iv248, -1, !dbg !1070
  %arrayidx14.sum229 = add i64 %8, %idxprom11, !dbg !1070
  %arrayidx35 = getelementptr inbounds float* %4, i64 %arrayidx14.sum229, !dbg !1070
  store float %mul32, float* %arrayidx35, align 4, !dbg !1070, !tbaa !780
  tail call void @llvm.dbg.value(metadata !1071, i64 0, metadata !472), !dbg !1066
  br label %for.body40, !dbg !1066

for.body40:                                       ; preds = %for.body40, %for.body40.lr.ph
  %indvars.iv = phi i64 [ 1, %for.body40.lr.ph ], [ %indvars.iv.next, %for.body40 ]
  %9 = trunc i64 %indvars.iv to i32, !dbg !1072
  %conv41 = sitofp i32 %9 to float, !dbg !1072
  %add = fadd float %3, %conv41, !dbg !1072
  %10 = sub nsw i64 %indvars.iv248, %indvars.iv, !dbg !1072
  %11 = add nsw i64 %10, -2, !dbg !1072
  %arrayidx14.sum230 = add i64 %11, %idxprom11, !dbg !1072
  %arrayidx45 = getelementptr inbounds float* %4, i64 %arrayidx14.sum230, !dbg !1072
  %12 = load float* %arrayidx45, align 4, !dbg !1072, !tbaa !780
  %mul46 = fmul float %add, %12, !dbg !1072
  %13 = trunc i64 %10 to i32, !dbg !1072
  %conv48 = sitofp i32 %13 to float, !dbg !1072
  %sub49 = fsub float %conv48, %3, !dbg !1072
  %14 = add nsw i64 %10, -1, !dbg !1072
  %arrayidx14.sum231 = add i64 %14, %idxprom11, !dbg !1072
  %arrayidx53 = getelementptr inbounds float* %4, i64 %arrayidx14.sum231, !dbg !1072
  %15 = load float* %arrayidx53, align 4, !dbg !1072, !tbaa !780
  %mul54 = fmul float %sub49, %15, !dbg !1072
  %add55 = fadd float %mul46, %mul54, !dbg !1072
  %mul56 = fmul float %conv27, %add55, !dbg !1072
  store float %mul56, float* %arrayidx53, align 4, !dbg !1072, !tbaa !780
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !1066
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !1066
  %exitcond = icmp eq i32 %lftr.wideiv, %indvars.iv246, !dbg !1066
  br i1 %exitcond, label %for.end, label %for.body40, !dbg !1066

for.end:                                          ; preds = %for.body40
  %mul62 = fmul float %sub18, %conv27, !dbg !1073
  %16 = load float* %arrayidx14, align 4, !dbg !1073, !tbaa !780
  %mul64 = fmul float %mul62, %16, !dbg !1073
  store float %mul64, float* %arrayidx14, align 4, !dbg !1073, !tbaa !780
  %indvars.iv.next249 = add i64 %indvars.iv248, 1, !dbg !1051
  %indvars.iv.next247 = add i32 %indvars.iv246, 1, !dbg !1051
  %lftr.wideiv252 = trunc i64 %indvars.iv.next249 to i32, !dbg !1051
  %exitcond253 = icmp eq i32 %lftr.wideiv252, %order, !dbg !1051
  br i1 %exitcond253, label %for.end68, label %for.body40.lr.ph, !dbg !1051

for.end68:                                        ; preds = %for.end, %for.body8
  %17 = phi float [ %sub18, %for.body8 ], [ %mul64, %for.end ]
  %arrayidx72 = getelementptr inbounds float** %dtheta, i64 %indvars.iv263, !dbg !1074
  %18 = load float** %arrayidx72, align 8, !dbg !1074, !tbaa !773
  %arrayidx73 = getelementptr inbounds float* %18, i64 %idxprom11, !dbg !1074
  tail call void @llvm.dbg.value(metadata !{float* %arrayidx73}, i64 0, metadata !477), !dbg !1074
  %sub75 = fsub float -0.000000e+00, %17, !dbg !1075
  store float %sub75, float* %arrayidx73, align 4, !dbg !1075, !tbaa !780
  tail call void @llvm.dbg.value(metadata !1071, i64 0, metadata !471), !dbg !1053
  br i1 %cmp78236, label %for.body80, label %for.end91, !dbg !1053

for.body80:                                       ; preds = %for.end68, %for.body80
  %indvars.iv254 = phi i64 [ %indvars.iv.next255, %for.body80 ], [ 1, %for.end68 ]
  %19 = add nsw i64 %indvars.iv254, -1, !dbg !1076
  %arrayidx14.sum226 = add i64 %19, %idxprom11, !dbg !1076
  %arrayidx83 = getelementptr inbounds float* %4, i64 %arrayidx14.sum226, !dbg !1076
  %20 = load float* %arrayidx83, align 4, !dbg !1076, !tbaa !780
  %arrayidx14.sum227 = add i64 %indvars.iv254, %idxprom11, !dbg !1076
  %arrayidx85 = getelementptr inbounds float* %4, i64 %arrayidx14.sum227, !dbg !1076
  %21 = load float* %arrayidx85, align 4, !dbg !1076, !tbaa !780
  %sub86 = fsub float %20, %21, !dbg !1076
  %arrayidx88 = getelementptr inbounds float* %18, i64 %arrayidx14.sum227, !dbg !1076
  store float %sub86, float* %arrayidx88, align 4, !dbg !1076, !tbaa !780
  %indvars.iv.next255 = add i64 %indvars.iv254, 1, !dbg !1053
  %lftr.wideiv257 = trunc i64 %indvars.iv.next255 to i32, !dbg !1053
  %exitcond258 = icmp eq i32 %lftr.wideiv257, %order, !dbg !1053
  br i1 %exitcond258, label %for.end91, label %for.body80, !dbg !1053

for.end91:                                        ; preds = %for.body80, %for.end68
  tail call void @llvm.dbg.value(metadata !{float %conv95}, i64 0, metadata !474), !dbg !1055
  %mul96 = fmul float %3, %conv95, !dbg !1056
  %arrayidx99 = getelementptr inbounds float* %4, i64 %arrayidx14.sum223, !dbg !1056
  %22 = load float* %arrayidx99, align 4, !dbg !1056, !tbaa !780
  %mul100 = fmul float %22, %mul96, !dbg !1056
  store float %mul100, float* %arrayidx16, align 4, !dbg !1056, !tbaa !780
  tail call void @llvm.dbg.value(metadata !1071, i64 0, metadata !472), !dbg !1057
  br i1 %cmp106238, label %for.body108, label %for.end132, !dbg !1057

for.body108:                                      ; preds = %for.end91, %for.body108
  %indvars.iv259 = phi i64 [ %indvars.iv.next260, %for.body108 ], [ 1, %for.end91 ]
  %23 = trunc i64 %indvars.iv259 to i32, !dbg !1077
  %conv109 = sitofp i32 %23 to float, !dbg !1077
  %add110 = fadd float %3, %conv109, !dbg !1077
  %sub111 = sub nsw i32 %order, %23, !dbg !1077
  %sub112 = add nsw i32 %sub111, -2, !dbg !1077
  %idxprom113 = sext i32 %sub112 to i64, !dbg !1077
  %arrayidx14.sum224 = add i64 %idxprom113, %idxprom11, !dbg !1077
  %arrayidx114 = getelementptr inbounds float* %4, i64 %arrayidx14.sum224, !dbg !1077
  %24 = load float* %arrayidx114, align 4, !dbg !1077, !tbaa !780
  %mul115 = fmul float %add110, %24, !dbg !1077
  %conv117 = sitofp i32 %sub111 to float, !dbg !1077
  %sub118 = fsub float %conv117, %3, !dbg !1077
  %sub120 = add nsw i32 %sub111, -1, !dbg !1077
  %idxprom121 = sext i32 %sub120 to i64, !dbg !1077
  %arrayidx14.sum225 = add i64 %idxprom121, %idxprom11, !dbg !1077
  %arrayidx122 = getelementptr inbounds float* %4, i64 %arrayidx14.sum225, !dbg !1077
  %25 = load float* %arrayidx122, align 4, !dbg !1077, !tbaa !780
  %mul123 = fmul float %sub118, %25, !dbg !1077
  %add124 = fadd float %mul115, %mul123, !dbg !1077
  %mul125 = fmul float %conv95, %add124, !dbg !1077
  store float %mul125, float* %arrayidx122, align 4, !dbg !1077, !tbaa !780
  %indvars.iv.next260 = add i64 %indvars.iv259, 1, !dbg !1057
  %lftr.wideiv261 = trunc i64 %indvars.iv.next260 to i32, !dbg !1057
  %exitcond262 = icmp eq i32 %lftr.wideiv261, %sub, !dbg !1057
  br i1 %exitcond262, label %for.end132, label %for.body108, !dbg !1057

for.end132:                                       ; preds = %for.body108, %for.end91
  %mul134 = fmul float %sub18, %conv95, !dbg !1078
  %26 = load float* %arrayidx14, align 4, !dbg !1078, !tbaa !780
  %mul136 = fmul float %mul134, %26, !dbg !1078
  store float %mul136, float* %arrayidx14, align 4, !dbg !1078, !tbaa !780
  %indvars.iv.next264 = add i64 %indvars.iv263, 1, !dbg !1062
  %lftr.wideiv265 = trunc i64 %indvars.iv.next264 to i32, !dbg !1062
  %exitcond266 = icmp eq i32 %lftr.wideiv265, 3, !dbg !1062
  br i1 %exitcond266, label %for.inc141, label %for.body8, !dbg !1062

for.inc141:                                       ; preds = %for.end132, %for.body
  %indvars.iv.next268 = add i64 %indvars.iv267, 1, !dbg !1044
  %lftr.wideiv269 = trunc i64 %indvars.iv.next268 to i32, !dbg !1044
  %exitcond270 = icmp eq i32 %lftr.wideiv269, %nr, !dbg !1044
  br i1 %exitcond270, label %for.end143, label %for.body, !dbg !1044

for.end143:                                       ; preds = %for.inc141, %entry
  ret void, !dbg !1079
}

; Function Attrs: nounwind optsize uwtable
define void @make_dft_mod(float* nocapture %mod, float* nocapture %data, i32 %ndata) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{float* %mod}, i64 0, metadata !483), !dbg !1080
  tail call void @llvm.dbg.value(metadata !{float* %data}, i64 0, metadata !484), !dbg !1080
  tail call void @llvm.dbg.value(metadata !{i32 %ndata}, i64 0, metadata !485), !dbg !1080
  tail call void @llvm.dbg.value(metadata !148, i64 0, metadata !486), !dbg !1081
  %cmp86 = icmp sgt i32 %ndata, 0, !dbg !1081
  br i1 %cmp86, label %for.cond1.preheader.lr.ph, label %for.end52, !dbg !1081

for.cond1.preheader.lr.ph:                        ; preds = %entry
  %conv6 = sitofp i32 %ndata to double, !dbg !1083
  br label %for.body3.lr.ph, !dbg !1081

for.body3.lr.ph:                                  ; preds = %for.cond1.preheader.lr.ph, %for.end
  %indvars.iv94 = phi i64 [ 0, %for.cond1.preheader.lr.ph ], [ %indvars.iv.next95, %for.end ]
  %0 = trunc i64 %indvars.iv94 to i32, !dbg !1083
  %conv = sitofp i32 %0 to double, !dbg !1083
  %mul = fmul double %conv, 0x401921FB54442D18, !dbg !1083
  br label %for.body3, !dbg !1087

for.cond30.preheader:                             ; preds = %for.end
  br i1 %cmp86, label %for.body33, label %for.end52, !dbg !1088

for.body3:                                        ; preds = %for.body3, %for.body3.lr.ph
  %indvars.iv90 = phi i64 [ 0, %for.body3.lr.ph ], [ %indvars.iv.next91, %for.body3 ]
  %ss.084 = phi float [ 0.000000e+00, %for.body3.lr.ph ], [ %conv21, %for.body3 ]
  %sc.083 = phi float [ 0.000000e+00, %for.body3.lr.ph ], [ %conv12, %for.body3 ]
  %1 = trunc i64 %indvars.iv90 to i32, !dbg !1083
  %conv4 = sitofp i32 %1 to double, !dbg !1083
  %mul5 = fmul double %mul, %conv4, !dbg !1083
  %div = fdiv double %mul5, %conv6, !dbg !1083
  %conv7 = fptrunc double %div to float, !dbg !1083
  tail call void @llvm.dbg.value(metadata !{float %conv7}, i64 0, metadata !490), !dbg !1083
  %arrayidx = getelementptr inbounds float* %data, i64 %indvars.iv90, !dbg !1090
  %2 = load float* %arrayidx, align 4, !dbg !1090, !tbaa !780
  %conv8 = fpext float %2 to double, !dbg !1090
  %conv9 = fpext float %conv7 to double, !dbg !1090
  %call = tail call double @cos(double %conv9) #5, !dbg !1090
  %mul10 = fmul double %conv8, %call, !dbg !1090
  %conv11 = fpext float %sc.083 to double, !dbg !1090
  %add = fadd double %conv11, %mul10, !dbg !1090
  %conv12 = fptrunc double %add to float, !dbg !1090
  tail call void @llvm.dbg.value(metadata !{float %conv12}, i64 0, metadata !488), !dbg !1090
  %3 = load float* %arrayidx, align 4, !dbg !1091, !tbaa !780
  %conv15 = fpext float %3 to double, !dbg !1091
  %call17 = tail call double @sin(double %conv9) #5, !dbg !1091
  %mul18 = fmul double %conv15, %call17, !dbg !1091
  %conv19 = fpext float %ss.084 to double, !dbg !1091
  %add20 = fadd double %conv19, %mul18, !dbg !1091
  %conv21 = fptrunc double %add20 to float, !dbg !1091
  tail call void @llvm.dbg.value(metadata !{float %conv21}, i64 0, metadata !489), !dbg !1091
  %indvars.iv.next91 = add i64 %indvars.iv90, 1, !dbg !1087
  %lftr.wideiv92 = trunc i64 %indvars.iv.next91 to i32, !dbg !1087
  %exitcond93 = icmp eq i32 %lftr.wideiv92, %ndata, !dbg !1087
  br i1 %exitcond93, label %for.end, label %for.body3, !dbg !1087

for.end:                                          ; preds = %for.body3
  %mul22 = fmul float %conv12, %conv12, !dbg !1092
  %mul23 = fmul float %conv21, %conv21, !dbg !1092
  %add24 = fadd float %mul22, %mul23, !dbg !1092
  %arrayidx26 = getelementptr inbounds float* %mod, i64 %indvars.iv94, !dbg !1092
  store float %add24, float* %arrayidx26, align 4, !dbg !1092, !tbaa !780
  %indvars.iv.next95 = add i64 %indvars.iv94, 1, !dbg !1081
  %lftr.wideiv96 = trunc i64 %indvars.iv.next95 to i32, !dbg !1081
  %exitcond97 = icmp eq i32 %lftr.wideiv96, %ndata, !dbg !1081
  br i1 %exitcond97, label %for.cond30.preheader, label %for.body3.lr.ph, !dbg !1081

for.body33:                                       ; preds = %for.cond30.preheader, %for.inc50
  %indvars.iv = phi i64 [ %indvars.iv.next.pre-phi, %for.inc50 ], [ 0, %for.cond30.preheader ]
  %arrayidx35 = getelementptr inbounds float* %mod, i64 %indvars.iv, !dbg !1093
  %4 = load float* %arrayidx35, align 4, !dbg !1093, !tbaa !780
  %conv36 = fpext float %4 to double, !dbg !1093
  %cmp37 = fcmp olt double %conv36, 1.000000e-07, !dbg !1093
  br i1 %cmp37, label %if.then, label %for.body33.for.inc50_crit_edge, !dbg !1093

for.body33.for.inc50_crit_edge:                   ; preds = %for.body33
  %indvars.iv.next.pre = add i64 %indvars.iv, 1, !dbg !1088
  br label %for.inc50, !dbg !1093

if.then:                                          ; preds = %for.body33
  %5 = add nsw i64 %indvars.iv, -1, !dbg !1094
  %arrayidx40 = getelementptr inbounds float* %mod, i64 %5, !dbg !1094
  %6 = load float* %arrayidx40, align 4, !dbg !1094, !tbaa !780
  %7 = add nsw i64 %indvars.iv, 1, !dbg !1094
  %arrayidx43 = getelementptr inbounds float* %mod, i64 %7, !dbg !1094
  %8 = load float* %arrayidx43, align 4, !dbg !1094, !tbaa !780
  %add44 = fadd float %6, %8, !dbg !1094
  %conv47 = fmul float %add44, 5.000000e-01, !dbg !1094
  store float %conv47, float* %arrayidx35, align 4, !dbg !1094, !tbaa !780
  br label %for.inc50, !dbg !1094

for.inc50:                                        ; preds = %for.body33.for.inc50_crit_edge, %if.then
  %indvars.iv.next.pre-phi = phi i64 [ %indvars.iv.next.pre, %for.body33.for.inc50_crit_edge ], [ %7, %if.then ], !dbg !1088
  %lftr.wideiv = trunc i64 %indvars.iv.next.pre-phi to i32, !dbg !1088
  %exitcond = icmp eq i32 %lftr.wideiv, %ndata, !dbg !1088
  br i1 %exitcond, label %for.end52, label %for.body33, !dbg !1088

for.end52:                                        ; preds = %entry, %for.inc50, %for.cond30.preheader
  ret void, !dbg !1095
}

; Function Attrs: nounwind optsize
declare double @cos(double) #2

; Function Attrs: nounwind optsize
declare double @sin(double) #2

; Function Attrs: nounwind optsize uwtable
define void @make_bspline_moduli(float** nocapture %bsp_mod, i32 %nx, i32 %ny, i32 %nz, i32 %order) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{float** %bsp_mod}, i64 0, metadata !495), !dbg !1096
  tail call void @llvm.dbg.value(metadata !{i32 %nx}, i64 0, metadata !496), !dbg !1096
  tail call void @llvm.dbg.value(metadata !{i32 %ny}, i64 0, metadata !497), !dbg !1096
  tail call void @llvm.dbg.value(metadata !{i32 %nz}, i64 0, metadata !498), !dbg !1096
  tail call void @llvm.dbg.value(metadata !{i32 %order}, i64 0, metadata !499), !dbg !1096
  %cmp = icmp sgt i32 %ny, %nz, !dbg !1097
  %cond = select i1 %cmp, i32 %ny, i32 %nz, !dbg !1097
  %cmp1 = icmp slt i32 %cond, %nx, !dbg !1097
  %nx.cond = select i1 %cmp1, i32 %nx, i32 %cond, !dbg !1097
  tail call void @llvm.dbg.value(metadata !{i32 %nx.cond}, i64 0, metadata !500), !dbg !1097
  %call = tail call i8* @save_calloc(i8* getelementptr inbounds ([5 x i8]* @.str3, i64 0, i64 0), i8* getelementptr inbounds ([51 x i8]* @.str4, i64 0, i64 0), i32 614, i32 %order, i32 4) #5, !dbg !1098
  %0 = bitcast i8* %call to float*, !dbg !1098
  tail call void @llvm.dbg.value(metadata !{float* %0}, i64 0, metadata !501), !dbg !1098
  %call11 = tail call i8* @save_calloc(i8* getelementptr inbounds ([6 x i8]* @.str5, i64 0, i64 0), i8* getelementptr inbounds ([51 x i8]* @.str4, i64 0, i64 0), i32 615, i32 %order, i32 4) #5, !dbg !1099
  %1 = bitcast i8* %call11 to float*, !dbg !1099
  tail call void @llvm.dbg.value(metadata !{float* %1}, i64 0, metadata !502), !dbg !1099
  %call12 = tail call i8* @save_calloc(i8* getelementptr inbounds ([9 x i8]* @.str6, i64 0, i64 0), i8* getelementptr inbounds ([51 x i8]* @.str4, i64 0, i64 0), i32 616, i32 %nx.cond, i32 4) #5, !dbg !1100
  %2 = bitcast i8* %call12 to float*, !dbg !1100
  tail call void @llvm.dbg.value(metadata !{float* %2}, i64 0, metadata !503), !dbg !1100
  %sub = add i32 %order, -1, !dbg !1101
  %idxprom = sext i32 %sub to i64, !dbg !1101
  %arrayidx = getelementptr inbounds float* %0, i64 %idxprom, !dbg !1101
  store float 0.000000e+00, float* %arrayidx, align 4, !dbg !1101, !tbaa !780
  %arrayidx13 = getelementptr inbounds i8* %call, i64 4, !dbg !1102
  %3 = bitcast i8* %arrayidx13 to float*, !dbg !1102
  store float 0.000000e+00, float* %3, align 4, !dbg !1102, !tbaa !780
  store float 1.000000e+00, float* %0, align 4, !dbg !1103, !tbaa !780
  tail call void @llvm.dbg.value(metadata !1065, i64 0, metadata !505), !dbg !1104
  %cmp15223 = icmp sgt i32 %order, 3, !dbg !1104
  br i1 %cmp15223, label %for.body26.lr.ph, label %for.end49, !dbg !1104

for.body26.lr.ph:                                 ; preds = %for.end, %entry
  %indvars.iv247 = phi i64 [ %indvars.iv.next248, %for.end ], [ 3, %entry ]
  %indvars.iv243 = phi i32 [ %indvars.iv.next244, %for.end ], [ 2, %entry ], !dbg !1106
  %4 = trunc i64 %indvars.iv247 to i32, !dbg !1109
  %conv = sitofp i32 %4 to double, !dbg !1109
  %sub16 = fadd double %conv, -1.000000e+00, !dbg !1109
  %div17 = fdiv double 1.000000e+00, %sub16, !dbg !1109
  %conv18 = fptrunc double %div17 to float, !dbg !1109
  tail call void @llvm.dbg.value(metadata !{float %conv18}, i64 0, metadata !507), !dbg !1109
  %5 = add nsw i64 %indvars.iv247, -1, !dbg !1110
  %arrayidx21 = getelementptr inbounds float* %0, i64 %5, !dbg !1110
  store float 0.000000e+00, float* %arrayidx21, align 4, !dbg !1110, !tbaa !780
  tail call void @llvm.dbg.value(metadata !1071, i64 0, metadata !506), !dbg !1106
  br label %for.body26, !dbg !1106

for.body26:                                       ; preds = %for.body26, %for.body26.lr.ph
  %indvars.iv238 = phi i64 [ 1, %for.body26.lr.ph ], [ %indvars.iv.next239, %for.body26 ]
  %6 = trunc i64 %indvars.iv238 to i32, !dbg !1111
  %conv27 = sitofp i32 %6 to float, !dbg !1111
  %7 = sub nsw i64 %indvars.iv247, %indvars.iv238, !dbg !1111
  %8 = add nsw i64 %7, -2, !dbg !1111
  %arrayidx31 = getelementptr inbounds float* %0, i64 %8, !dbg !1111
  %9 = load float* %arrayidx31, align 4, !dbg !1111, !tbaa !780
  %mul = fmul float %conv27, %9, !dbg !1111
  %10 = trunc i64 %7 to i32, !dbg !1111
  %conv33 = sitofp i32 %10 to float, !dbg !1111
  %11 = add nsw i64 %7, -1, !dbg !1111
  %arrayidx37 = getelementptr inbounds float* %0, i64 %11, !dbg !1111
  %12 = load float* %arrayidx37, align 4, !dbg !1111, !tbaa !780
  %mul38 = fmul float %conv33, %12, !dbg !1111
  %add = fadd float %mul, %mul38, !dbg !1111
  %mul39 = fmul float %conv18, %add, !dbg !1111
  store float %mul39, float* %arrayidx37, align 4, !dbg !1111, !tbaa !780
  %indvars.iv.next239 = add i64 %indvars.iv238, 1, !dbg !1106
  %lftr.wideiv245 = trunc i64 %indvars.iv.next239 to i32, !dbg !1106
  %exitcond246 = icmp eq i32 %lftr.wideiv245, %indvars.iv243, !dbg !1106
  br i1 %exitcond246, label %for.end, label %for.body26, !dbg !1106

for.end:                                          ; preds = %for.body26
  %13 = load float* %0, align 4, !dbg !1112, !tbaa !780
  %mul45 = fmul float %conv18, %13, !dbg !1112
  store float %mul45, float* %0, align 4, !dbg !1112, !tbaa !780
  %indvars.iv.next248 = add i64 %indvars.iv247, 1, !dbg !1104
  %indvars.iv.next244 = add i32 %indvars.iv243, 1, !dbg !1104
  %lftr.wideiv250 = trunc i64 %indvars.iv.next248 to i32, !dbg !1104
  %exitcond251 = icmp eq i32 %lftr.wideiv250, %order, !dbg !1104
  br i1 %exitcond251, label %for.end49, label %for.body26.lr.ph, !dbg !1104

for.end49:                                        ; preds = %for.end, %entry
  %14 = phi float [ 1.000000e+00, %entry ], [ %mul45, %for.end ]
  %sub51 = fsub float -0.000000e+00, %14, !dbg !1113
  store float %sub51, float* %1, align 4, !dbg !1113, !tbaa !780
  tail call void @llvm.dbg.value(metadata !1071, i64 0, metadata !505), !dbg !1114
  %cmp54219 = icmp sgt i32 %order, 1, !dbg !1114
  br i1 %cmp54219, label %for.body56, label %for.end67, !dbg !1114

for.body56:                                       ; preds = %for.end49, %for.body56
  %indvars.iv233 = phi i64 [ %indvars.iv.next234, %for.body56 ], [ 1, %for.end49 ]
  %15 = add nsw i64 %indvars.iv233, -1, !dbg !1116
  %arrayidx59 = getelementptr inbounds float* %0, i64 %15, !dbg !1116
  %16 = load float* %arrayidx59, align 4, !dbg !1116, !tbaa !780
  %arrayidx61 = getelementptr inbounds float* %0, i64 %indvars.iv233, !dbg !1116
  %17 = load float* %arrayidx61, align 4, !dbg !1116, !tbaa !780
  %sub62 = fsub float %16, %17, !dbg !1116
  %arrayidx64 = getelementptr inbounds float* %1, i64 %indvars.iv233, !dbg !1116
  store float %sub62, float* %arrayidx64, align 4, !dbg !1116, !tbaa !780
  %indvars.iv.next234 = add i64 %indvars.iv233, 1, !dbg !1114
  %lftr.wideiv236 = trunc i64 %indvars.iv.next234 to i32, !dbg !1114
  %exitcond237 = icmp eq i32 %lftr.wideiv236, %order, !dbg !1114
  br i1 %exitcond237, label %for.end67, label %for.body56, !dbg !1114

for.end67:                                        ; preds = %for.body56, %for.end49
  %conv69 = sitofp i32 %sub to double, !dbg !1117
  %div70 = fdiv double 1.000000e+00, %conv69, !dbg !1117
  %conv71 = fptrunc double %div70 to float, !dbg !1117
  tail call void @llvm.dbg.value(metadata !{float %conv71}, i64 0, metadata !507), !dbg !1117
  store float 0.000000e+00, float* %arrayidx, align 4, !dbg !1118, !tbaa !780
  tail call void @llvm.dbg.value(metadata !1071, i64 0, metadata !506), !dbg !1119
  %cmp77217 = icmp sgt i32 %sub, 1, !dbg !1119
  br i1 %cmp77217, label %for.body79, label %for.end101, !dbg !1119

for.body79:                                       ; preds = %for.end67, %for.body79
  %indvars.iv229 = phi i64 [ %indvars.iv.next230, %for.body79 ], [ 1, %for.end67 ]
  %18 = trunc i64 %indvars.iv229 to i32, !dbg !1121
  %conv80 = sitofp i32 %18 to float, !dbg !1121
  %sub81 = sub nsw i32 %order, %18, !dbg !1121
  %sub82 = add nsw i32 %sub81, -2, !dbg !1121
  %idxprom83 = sext i32 %sub82 to i64, !dbg !1121
  %arrayidx84 = getelementptr inbounds float* %0, i64 %idxprom83, !dbg !1121
  %19 = load float* %arrayidx84, align 4, !dbg !1121, !tbaa !780
  %mul85 = fmul float %conv80, %19, !dbg !1121
  %conv87 = sitofp i32 %sub81 to float, !dbg !1121
  %sub89 = add nsw i32 %sub81, -1, !dbg !1121
  %idxprom90 = sext i32 %sub89 to i64, !dbg !1121
  %arrayidx91 = getelementptr inbounds float* %0, i64 %idxprom90, !dbg !1121
  %20 = load float* %arrayidx91, align 4, !dbg !1121, !tbaa !780
  %mul92 = fmul float %conv87, %20, !dbg !1121
  %add93 = fadd float %mul85, %mul92, !dbg !1121
  %mul94 = fmul float %conv71, %add93, !dbg !1121
  store float %mul94, float* %arrayidx91, align 4, !dbg !1121, !tbaa !780
  %indvars.iv.next230 = add i64 %indvars.iv229, 1, !dbg !1119
  %lftr.wideiv231 = trunc i64 %indvars.iv.next230 to i32, !dbg !1119
  %exitcond232 = icmp eq i32 %lftr.wideiv231, %sub, !dbg !1119
  br i1 %exitcond232, label %for.end101, label %for.body79, !dbg !1119

for.end101:                                       ; preds = %for.body79, %for.end67
  %21 = load float* %0, align 4, !dbg !1122, !tbaa !780
  %mul103 = fmul float %conv71, %21, !dbg !1122
  store float %mul103, float* %0, align 4, !dbg !1122, !tbaa !780
  tail call void @llvm.dbg.value(metadata !148, i64 0, metadata !504), !dbg !1123
  %cmp106215 = icmp sgt i32 %nx.cond, 0, !dbg !1123
  br i1 %cmp106215, label %for.body108.lr.ph, label %for.cond114.preheader, !dbg !1123

for.body108.lr.ph:                                ; preds = %for.end101
  %22 = icmp sgt i32 %nz, %ny
  %smax = select i1 %22, i32 %nz, i32 %ny
  %23 = icmp sgt i32 %smax, %nx
  %smax228 = select i1 %23, i32 %smax, i32 %nx
  %24 = add i32 %smax228, -1, !dbg !1123
  %25 = zext i32 %24 to i64
  %26 = shl nuw nsw i64 %25, 2, !dbg !1123
  %27 = add i64 %26, 4, !dbg !1123
  call void @llvm.memset.p0i8.i64(i8* %call12, i8 0, i64 %27, i32 4, i1 false), !dbg !1125
  br label %for.cond114.preheader, !dbg !1123

for.cond114.preheader:                            ; preds = %for.body108.lr.ph, %for.end101
  %cmp115213 = icmp slt i32 %order, 1, !dbg !1126
  br i1 %cmp115213, label %for.end125, label %for.body117.lr.ph, !dbg !1126

for.body117.lr.ph:                                ; preds = %for.cond114.preheader
  %28 = add i32 %order, 1, !dbg !1126
  br label %for.body117, !dbg !1126

for.body117:                                      ; preds = %for.body117, %for.body117.lr.ph
  %indvars.iv = phi i64 [ 1, %for.body117.lr.ph ], [ %indvars.iv.next, %for.body117 ]
  %29 = add nsw i64 %indvars.iv, -1, !dbg !1128
  %arrayidx120 = getelementptr inbounds float* %0, i64 %29, !dbg !1128
  %30 = load float* %arrayidx120, align 4, !dbg !1128, !tbaa !780
  %arrayidx122 = getelementptr inbounds float* %2, i64 %indvars.iv, !dbg !1128
  store float %30, float* %arrayidx122, align 4, !dbg !1128, !tbaa !780
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !1126
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !1126
  %exitcond = icmp eq i32 %lftr.wideiv, %28, !dbg !1126
  br i1 %exitcond, label %for.end125, label %for.body117, !dbg !1126

for.end125:                                       ; preds = %for.body117, %for.cond114.preheader
  %31 = load float** %bsp_mod, align 8, !dbg !1129, !tbaa !773
  tail call void @make_dft_mod(float* %31, float* %2, i32 %nx) #7, !dbg !1129
  %arrayidx127 = getelementptr inbounds float** %bsp_mod, i64 1, !dbg !1130
  %32 = load float** %arrayidx127, align 8, !dbg !1130, !tbaa !773
  tail call void @make_dft_mod(float* %32, float* %2, i32 %ny) #7, !dbg !1130
  %arrayidx128 = getelementptr inbounds float** %bsp_mod, i64 2, !dbg !1131
  %33 = load float** %arrayidx128, align 8, !dbg !1131, !tbaa !773
  tail call void @make_dft_mod(float* %33, float* %2, i32 %nz) #7, !dbg !1131
  tail call void @save_free(i8* getelementptr inbounds ([5 x i8]* @.str3, i64 0, i64 0), i8* getelementptr inbounds ([51 x i8]* @.str4, i64 0, i64 0), i32 648, i8* %call) #5, !dbg !1132
  tail call void @save_free(i8* getelementptr inbounds ([6 x i8]* @.str5, i64 0, i64 0), i8* getelementptr inbounds ([51 x i8]* @.str4, i64 0, i64 0), i32 649, i8* %call11) #5, !dbg !1133
  tail call void @save_free(i8* getelementptr inbounds ([9 x i8]* @.str6, i64 0, i64 0), i8* getelementptr inbounds ([51 x i8]* @.str4, i64 0, i64 0), i32 650, i8* %call12) #5, !dbg !1134
  ret void, !dbg !1135
}

; Function Attrs: optsize
declare i8* @save_calloc(i8*, i8*, i32, i32, i32) #3

; Function Attrs: optsize
declare void @save_free(i8*, i8*, i32, i8*) #3

; Function Attrs: nounwind optsize uwtable
define void @init_pme(%struct._IO_FILE* %log, %struct.t_commrec* %cr, i32 %nkx, i32 %nky, i32 %nkz, i32 %pme_order, i32 %homenr, i32 %bOptFFT, i32 %ewald_geometry) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %log}, i64 0, metadata !567), !dbg !1136
  tail call void @llvm.dbg.value(metadata !{%struct.t_commrec* %cr}, i64 0, metadata !568), !dbg !1136
  tail call void @llvm.dbg.value(metadata !{i32 %nkx}, i64 0, metadata !569), !dbg !1137
  tail call void @llvm.dbg.value(metadata !{i32 %nky}, i64 0, metadata !570), !dbg !1137
  tail call void @llvm.dbg.value(metadata !{i32 %nkz}, i64 0, metadata !571), !dbg !1137
  tail call void @llvm.dbg.value(metadata !{i32 %pme_order}, i64 0, metadata !572), !dbg !1137
  tail call void @llvm.dbg.value(metadata !{i32 %homenr}, i64 0, metadata !573), !dbg !1137
  tail call void @llvm.dbg.value(metadata !{i32 %bOptFFT}, i64 0, metadata !574), !dbg !1138
  tail call void @llvm.dbg.value(metadata !{i32 %ewald_geometry}, i64 0, metadata !575), !dbg !1138
  tail call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([58 x i8]* @.str7, i64 0, i64 0)) #5, !dbg !1139
  %0 = tail call i64 @fwrite(i8* getelementptr inbounds ([38 x i8]* @.str8, i64 0, i64 0), i64 37, i64 1, %struct._IO_FILE* %log), !dbg !1140
  tail call void @please_cite(%struct._IO_FILE* %log, i8* getelementptr inbounds ([10 x i8]* @.str9, i64 0, i64 0)) #5, !dbg !1141
  %cmp = icmp eq i32 %ewald_geometry, 1, !dbg !1142
  br i1 %cmp, label %if.then, label %if.end, !dbg !1142

if.then:                                          ; preds = %entry
  %1 = tail call i64 @fwrite(i8* getelementptr inbounds ([65 x i8]* @.str10, i64 0, i64 0), i64 64, i64 1, %struct._IO_FILE* %log), !dbg !1143
  tail call void @please_cite(%struct._IO_FILE* %log, i8* getelementptr inbounds ([11 x i8]* @.str11, i64 0, i64 0)) #5, !dbg !1145
  br label %if.end, !dbg !1146

if.end:                                           ; preds = %if.then, %entry
  %tobool = icmp eq %struct.t_commrec* %cr, null, !dbg !1147
  br i1 %tobool, label %if.end11, label %land.end, !dbg !1147

land.end:                                         ; preds = %if.end
  %nnodes = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 1, !dbg !1147
  %2 = load i32* %nnodes, align 4, !dbg !1147, !tbaa !815
  %cmp2 = icmp sgt i32 %2, 1, !dbg !1147
  %land.ext = zext i1 %cmp2 to i32
  tail call void @llvm.dbg.value(metadata !{i32 %land.ext106}, i64 0, metadata !577), !dbg !1148
  br i1 %cmp2, label %if.then4, label %if.end11, !dbg !1149

if.then4:                                         ; preds = %land.end
  %3 = tail call i64 @fwrite(i8* getelementptr inbounds ([28 x i8]* @.str12, i64 0, i64 0), i64 27, i64 1, %struct._IO_FILE* %log), !dbg !1150
  %4 = load i32* %nnodes, align 4, !dbg !1152, !tbaa !815
  %rem = srem i32 %nkx, %4, !dbg !1152
  %cmp7 = icmp eq i32 %rem, 0, !dbg !1152
  br i1 %cmp7, label %if.end11, label %if.then8, !dbg !1152

if.then8:                                         ; preds = %if.then4
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([69 x i8]* @.str13, i64 0, i64 0), i64 68, i64 1, %struct._IO_FILE* %log), !dbg !1153
  br label %if.end11, !dbg !1153

if.end11:                                         ; preds = %if.end, %if.then4, %if.then8, %land.end
  %land.ext106 = phi i32 [ %land.ext, %if.then4 ], [ %land.ext, %if.then8 ], [ %land.ext, %land.end ], [ 0, %if.end ]
  %call12 = tail call i8* @save_calloc(i8* getelementptr inbounds ([12 x i8]* @.str14, i64 0, i64 0), i8* getelementptr inbounds ([51 x i8]* @.str4, i64 0, i64 0), i32 694, i32 %nkx, i32 4) #5, !dbg !1154
  %6 = bitcast i8* %call12 to float*, !dbg !1154
  store float* %6, float** getelementptr inbounds ([3 x float*]* @bsp_mod, i64 0, i64 0), align 16, !dbg !1154, !tbaa !773
  %call13 = tail call i8* @save_calloc(i8* getelementptr inbounds ([12 x i8]* @.str15, i64 0, i64 0), i8* getelementptr inbounds ([51 x i8]* @.str4, i64 0, i64 0), i32 695, i32 %nky, i32 4) #5, !dbg !1155
  %7 = bitcast i8* %call13 to float*, !dbg !1155
  store float* %7, float** getelementptr inbounds ([3 x float*]* @bsp_mod, i64 0, i64 1), align 8, !dbg !1155, !tbaa !773
  %call14 = tail call i8* @save_calloc(i8* getelementptr inbounds ([12 x i8]* @.str16, i64 0, i64 0), i8* getelementptr inbounds ([51 x i8]* @.str4, i64 0, i64 0), i32 696, i32 %nkz, i32 4) #5, !dbg !1156
  %8 = bitcast i8* %call14 to float*, !dbg !1156
  store float* %8, float** getelementptr inbounds ([3 x float*]* @bsp_mod, i64 0, i64 2), align 16, !dbg !1156, !tbaa !773
  tail call void @llvm.dbg.value(metadata !148, i64 0, metadata !576), !dbg !1157
  %mul = mul nsw i32 %homenr, %pme_order, !dbg !1159
  br label %for.body, !dbg !1157

for.body:                                         ; preds = %for.body, %if.end11
  %indvars.iv118 = phi i64 [ 0, %if.end11 ], [ %indvars.iv.next119, %for.body ]
  %call16 = tail call i8* @save_calloc(i8* getelementptr inbounds ([9 x i8]* @.str17, i64 0, i64 0), i8* getelementptr inbounds ([51 x i8]* @.str4, i64 0, i64 0), i32 698, i32 %mul, i32 4) #5, !dbg !1159
  %9 = bitcast i8* %call16 to float*, !dbg !1159
  %arrayidx = getelementptr inbounds [3 x float*]* @theta, i64 0, i64 %indvars.iv118, !dbg !1159
  store float* %9, float** %arrayidx, align 8, !dbg !1159, !tbaa !773
  %call18 = tail call i8* @save_calloc(i8* getelementptr inbounds ([10 x i8]* @.str18, i64 0, i64 0), i8* getelementptr inbounds ([51 x i8]* @.str4, i64 0, i64 0), i32 699, i32 %mul, i32 4) #5, !dbg !1161
  %10 = bitcast i8* %call18 to float*, !dbg !1161
  %arrayidx20 = getelementptr inbounds [3 x float*]* @dtheta, i64 0, i64 %indvars.iv118, !dbg !1161
  store float* %10, float** %arrayidx20, align 8, !dbg !1161, !tbaa !773
  %indvars.iv.next119 = add i64 %indvars.iv118, 1, !dbg !1157
  %lftr.wideiv = trunc i64 %indvars.iv.next119 to i32, !dbg !1157
  %exitcond = icmp eq i32 %lftr.wideiv, 3, !dbg !1157
  br i1 %exitcond, label %for.end, label %for.body, !dbg !1157

for.end:                                          ; preds = %for.body
  %call21 = tail call i8* @save_calloc(i8* getelementptr inbounds ([7 x i8]* @.str19, i64 0, i64 0), i8* getelementptr inbounds ([51 x i8]* @.str4, i64 0, i64 0), i32 701, i32 %homenr, i32 12) #5, !dbg !1162
  %11 = bitcast i8* %call21 to [3 x float]*, !dbg !1162
  store [3 x float]* %11, [3 x float]** @fractx, align 8, !dbg !1162, !tbaa !773
  %call22 = tail call i8* @save_calloc(i8* getelementptr inbounds ([4 x i8]* @.str20, i64 0, i64 0), i8* getelementptr inbounds ([51 x i8]* @.str4, i64 0, i64 0), i32 703, i32 %homenr, i32 12) #5, !dbg !1163
  %12 = bitcast i8* %call22 to [3 x i32]*, !dbg !1163
  store [3 x i32]* %12, [3 x i32]** @idx, align 8, !dbg !1163, !tbaa !773
  %mul23 = mul nsw i32 %nkx, 3, !dbg !1164
  %call24 = tail call i8* @save_calloc(i8* getelementptr inbounds ([4 x i8]* @.str21, i64 0, i64 0), i8* getelementptr inbounds ([51 x i8]* @.str4, i64 0, i64 0), i32 704, i32 %mul23, i32 4) #5, !dbg !1164
  %13 = bitcast i8* %call24 to i32*, !dbg !1164
  store i32* %13, i32** @nnx, align 8, !dbg !1164, !tbaa !773
  %mul25 = mul nsw i32 %nky, 3, !dbg !1165
  %call26 = tail call i8* @save_calloc(i8* getelementptr inbounds ([4 x i8]* @.str22, i64 0, i64 0), i8* getelementptr inbounds ([51 x i8]* @.str4, i64 0, i64 0), i32 705, i32 %mul25, i32 4) #5, !dbg !1165
  %14 = bitcast i8* %call26 to i32*, !dbg !1165
  store i32* %14, i32** @nny, align 8, !dbg !1165, !tbaa !773
  %mul27 = mul nsw i32 %nkz, 3, !dbg !1166
  %call28 = tail call i8* @save_calloc(i8* getelementptr inbounds ([4 x i8]* @.str23, i64 0, i64 0), i8* getelementptr inbounds ([51 x i8]* @.str4, i64 0, i64 0), i32 706, i32 %mul27, i32 4) #5, !dbg !1166
  %15 = bitcast i8* %call28 to i32*, !dbg !1166
  store i32* %15, i32** @nnz, align 8, !dbg !1166, !tbaa !773
  tail call void @llvm.dbg.value(metadata !148, i64 0, metadata !576), !dbg !1167
  %cmp31111 = icmp sgt i32 %nkx, 0, !dbg !1167
  br i1 %cmp31111, label %for.body32.lr.ph, label %for.cond39.preheader, !dbg !1167

for.body32.lr.ph:                                 ; preds = %for.end
  %16 = load i32** @nnx, align 8, !dbg !1169, !tbaa !773
  br label %for.body32, !dbg !1167

for.cond39.preheader:                             ; preds = %for.body32, %for.end
  %cmp41109 = icmp sgt i32 %nky, 0, !dbg !1170
  br i1 %cmp41109, label %for.body42.lr.ph, label %for.cond49.preheader, !dbg !1170

for.body42.lr.ph:                                 ; preds = %for.cond39.preheader
  %17 = load i32** @nny, align 8, !dbg !1172, !tbaa !773
  br label %for.body42, !dbg !1170

for.body32:                                       ; preds = %for.body32.lr.ph, %for.body32
  %indvars.iv116 = phi i64 [ 0, %for.body32.lr.ph ], [ %indvars.iv.next117, %for.body32 ]
  %18 = trunc i64 %indvars.iv116 to i32, !dbg !1169
  %rem33 = srem i32 %18, %nkx, !dbg !1169
  %arrayidx35 = getelementptr inbounds i32* %16, i64 %indvars.iv116, !dbg !1169
  store i32 %rem33, i32* %arrayidx35, align 4, !dbg !1169, !tbaa !815
  %indvars.iv.next117 = add i64 %indvars.iv116, 1, !dbg !1167
  %19 = trunc i64 %indvars.iv.next117 to i32, !dbg !1167
  %cmp31 = icmp slt i32 %19, %mul23, !dbg !1167
  br i1 %cmp31, label %for.body32, label %for.cond39.preheader, !dbg !1167

for.cond49.preheader:                             ; preds = %for.body42, %for.cond39.preheader
  %cmp51107 = icmp sgt i32 %nkz, 0, !dbg !1173
  br i1 %cmp51107, label %for.body52, label %for.end58, !dbg !1173

for.body42:                                       ; preds = %for.body42.lr.ph, %for.body42
  %indvars.iv114 = phi i64 [ 0, %for.body42.lr.ph ], [ %indvars.iv.next115, %for.body42 ]
  %20 = trunc i64 %indvars.iv114 to i32, !dbg !1172
  %rem43 = srem i32 %20, %nky, !dbg !1172
  %arrayidx45 = getelementptr inbounds i32* %17, i64 %indvars.iv114, !dbg !1172
  store i32 %rem43, i32* %arrayidx45, align 4, !dbg !1172, !tbaa !815
  %indvars.iv.next115 = add i64 %indvars.iv114, 1, !dbg !1170
  %21 = trunc i64 %indvars.iv.next115 to i32, !dbg !1170
  %cmp41 = icmp slt i32 %21, %mul25, !dbg !1170
  br i1 %cmp41, label %for.body42, label %for.cond49.preheader, !dbg !1170

for.body52:                                       ; preds = %for.cond49.preheader, %for.body52
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body52 ], [ 0, %for.cond49.preheader ]
  %22 = trunc i64 %indvars.iv to i32, !dbg !1175
  %rem53 = srem i32 %22, %nkz, !dbg !1175
  %arrayidx55 = getelementptr inbounds i32* %15, i64 %indvars.iv, !dbg !1175
  store i32 %rem53, i32* %arrayidx55, align 4, !dbg !1175, !tbaa !815
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !1173
  %23 = trunc i64 %indvars.iv.next to i32, !dbg !1173
  %cmp51 = icmp slt i32 %23, %mul27, !dbg !1173
  br i1 %cmp51, label %for.body52, label %for.end58, !dbg !1173

for.end58:                                        ; preds = %for.body52, %for.cond49.preheader
  %call59 = tail call %struct.t_fftgrid* @mk_fftgrid(%struct._IO_FILE* %log, i32 %land.ext106, i32 %nkx, i32 %nky, i32 %nkz, i32 %bOptFFT) #5, !dbg !1176
  store %struct.t_fftgrid* %call59, %struct.t_fftgrid** @grid, align 8, !dbg !1176, !tbaa !773
  tail call void @make_bspline_moduli(float** getelementptr inbounds ([3 x float*]* @bsp_mod, i64 0, i64 0), i32 %nkx, i32 %nky, i32 %nkz, i32 %pme_order) #7, !dbg !1177
  ret void, !dbg !1178
}

; Function Attrs: optsize
declare void @please_cite(%struct._IO_FILE*, i8*) #3

; Function Attrs: optsize
declare %struct.t_fftgrid* @mk_fftgrid(%struct._IO_FILE*, i32, i32, i32, i32, i32) #3

; Function Attrs: nounwind optsize uwtable
define %struct.t_fftgrid* @spread_on_grid(%struct._IO_FILE* nocapture %logfile, i32 %homenr, i32 %pme_order, [3 x float]* nocapture %x, float* nocapture %charge, [3 x float]* nocapture %box, i32 %bGatherOnly) #0 {
entry:
  %nx = alloca i32, align 4
  %ny = alloca i32, align 4
  %nz = alloca i32, align 4
  %la2 = alloca i32, align 4
  %la12 = alloca i32, align 4
  %ptr = alloca float*, align 8
  call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %logfile}, i64 0, metadata !582), !dbg !1179
  call void @llvm.dbg.value(metadata !{i32 %homenr}, i64 0, metadata !583), !dbg !1179
  call void @llvm.dbg.value(metadata !{i32 %pme_order}, i64 0, metadata !584), !dbg !1180
  call void @llvm.dbg.value(metadata !{[3 x float]* %x}, i64 0, metadata !585), !dbg !1180
  call void @llvm.dbg.value(metadata !{float* %charge}, i64 0, metadata !586), !dbg !1181
  call void @llvm.dbg.value(metadata !{[3 x float]* %box}, i64 0, metadata !587), !dbg !1181
  call void @llvm.dbg.value(metadata !{i32 %bGatherOnly}, i64 0, metadata !588), !dbg !1182
  call void @llvm.dbg.declare(metadata !{i32* %nx}, metadata !589), !dbg !1183
  call void @llvm.dbg.declare(metadata !{i32* %ny}, metadata !590), !dbg !1183
  call void @llvm.dbg.declare(metadata !{i32* %nz}, metadata !591), !dbg !1183
  call void @llvm.dbg.declare(metadata !{i32* %la2}, metadata !592), !dbg !1183
  call void @llvm.dbg.declare(metadata !{i32* %la12}, metadata !593), !dbg !1183
  call void @llvm.dbg.declare(metadata !{float** %ptr}, metadata !594), !dbg !1184
  %0 = load %struct.t_fftgrid** @grid, align 8, !dbg !1185, !tbaa !773
  call void @unpack_fftgrid(%struct.t_fftgrid* %0, i32* %nx, i32* %ny, i32* %nz, i32* %la2, i32* %la12, i32 1, float** %ptr) #5, !dbg !1185
  call void @calc_recipbox([3 x float]* %box, [3 x float]* getelementptr inbounds ([3 x [3 x float]]* @recipbox, i64 0, i64 0)) #7, !dbg !1186
  %tobool = icmp eq i32 %bGatherOnly, 0, !dbg !1187
  br i1 %tobool, label %if.then, label %if.end, !dbg !1187

if.then:                                          ; preds = %entry
  %1 = load [3 x float]** @fractx, align 8, !dbg !1188, !tbaa !773
  %2 = load [3 x i32]** @idx, align 8, !dbg !1188, !tbaa !773
  call void @llvm.dbg.value(metadata !{i32* %nx}, i64 0, metadata !589), !dbg !1188
  %3 = load i32* %nx, align 4, !dbg !1188, !tbaa !815
  call void @llvm.dbg.value(metadata !{i32* %ny}, i64 0, metadata !590), !dbg !1188
  %4 = load i32* %ny, align 4, !dbg !1188, !tbaa !815
  call void @llvm.dbg.value(metadata !{i32* %nz}, i64 0, metadata !591), !dbg !1188
  %5 = load i32* %nz, align 4, !dbg !1188, !tbaa !815
  %6 = load i32** @nnx, align 8, !dbg !1188, !tbaa !773
  %7 = load i32** @nny, align 8, !dbg !1188, !tbaa !773
  %8 = load i32** @nnz, align 8, !dbg !1188, !tbaa !773
  call void @calc_idx(i32 %homenr, [3 x float]* getelementptr inbounds ([3 x [3 x float]]* @recipbox, i64 0, i64 0), [3 x float]* %x, [3 x float]* %1, [3 x i32]* %2, i32 %3, i32 %4, i32 %5, i32* %6, i32* %7, i32* %8) #7, !dbg !1188
  call void @llvm.dbg.value(metadata !{i32* %nx}, i64 0, metadata !589), !dbg !1190
  call void @llvm.dbg.value(metadata !{i32* %ny}, i64 0, metadata !590), !dbg !1190
  call void @llvm.dbg.value(metadata !{i32* %nz}, i64 0, metadata !591), !dbg !1190
  %9 = load [3 x float]** @fractx, align 8, !dbg !1190, !tbaa !773
  call void @make_bsplines(float** getelementptr inbounds ([3 x float*]* @theta, i64 0, i64 0), float** getelementptr inbounds ([3 x float*]* @dtheta, i64 0, i64 0), i32 %pme_order, i32 undef, i32 undef, i32 undef, [3 x float]* %9, [3 x i32]* undef, float* %charge, i32 %homenr) #7, !dbg !1190
  %10 = load %struct.t_fftgrid** @grid, align 8, !dbg !1191, !tbaa !773
  %11 = load [3 x i32]** @idx, align 8, !dbg !1191, !tbaa !773
  %12 = load i32** @nnx, align 8, !dbg !1191, !tbaa !773
  %13 = load i32** @nny, align 8, !dbg !1191, !tbaa !773
  %14 = load i32** @nnz, align 8, !dbg !1191, !tbaa !773
  call void @spread_q_bsplines(%struct.t_fftgrid* %10, [3 x i32]* %11, float* %charge, float** getelementptr inbounds ([3 x float*]* @theta, i64 0, i64 0), i32 %homenr, i32 %pme_order, i32* %12, i32* %13, i32* %14) #7, !dbg !1191
  br label %if.end, !dbg !1192

if.end:                                           ; preds = %entry, %if.then
  %15 = load %struct.t_fftgrid** @grid, align 8, !dbg !1193, !tbaa !773
  ret %struct.t_fftgrid* %15, !dbg !1193
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
  call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %logfile}, i64 0, metadata !719), !dbg !1194
  call void @llvm.dbg.value(metadata !{i32 %bVerbose}, i64 0, metadata !720), !dbg !1194
  call void @llvm.dbg.value(metadata !{%struct.t_inputrec* %ir}, i64 0, metadata !721), !dbg !1195
  call void @llvm.dbg.value(metadata !{[3 x float]* %x}, i64 0, metadata !722), !dbg !1195
  call void @llvm.dbg.value(metadata !{[3 x float]* %f}, i64 0, metadata !723), !dbg !1196
  call void @llvm.dbg.value(metadata !{float* %charge}, i64 0, metadata !724), !dbg !1196
  call void @llvm.dbg.value(metadata !{[3 x float]* %box}, i64 0, metadata !725), !dbg !1197
  call void @llvm.dbg.value(metadata !{%struct.t_commrec* %cr}, i64 0, metadata !726), !dbg !1197
  call void @llvm.dbg.value(metadata !{%struct.t_nsborder* %nsb}, i64 0, metadata !727), !dbg !1198
  call void @llvm.dbg.value(metadata !{%struct.t_nrnb* %nrnb}, i64 0, metadata !728), !dbg !1198
  call void @llvm.dbg.value(metadata !{[3 x float]* %vir}, i64 0, metadata !729), !dbg !1199
  call void @llvm.dbg.value(metadata !{float %ewaldcoeff}, i64 0, metadata !730), !dbg !1199
  call void @llvm.dbg.value(metadata !{i32 %bGatherOnly}, i64 0, metadata !731), !dbg !1200
  call void @llvm.dbg.declare(metadata !{i32* %nx}, metadata !735), !dbg !1201
  call void @llvm.dbg.declare(metadata !{i32* %ny}, metadata !736), !dbg !1201
  call void @llvm.dbg.declare(metadata !{i32* %nz}, metadata !737), !dbg !1201
  call void @llvm.dbg.declare(metadata !{i32* %la12}, metadata !738), !dbg !1201
  call void @llvm.dbg.declare(metadata !{i32* %la2}, metadata !739), !dbg !1201
  call void @llvm.dbg.declare(metadata !{float** %ptr}, metadata !740), !dbg !1202
  %0 = load %struct.t_fftgrid** @grid, align 8, !dbg !1203, !tbaa !773
  call void @unpack_fftgrid(%struct.t_fftgrid* %0, i32* %nx, i32* %ny, i32* %nz, i32* %la2, i32* %la12, i32 1, float** %ptr) #5, !dbg !1203
  %nodeid = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 0, !dbg !1204
  %1 = load i32* %nodeid, align 4, !dbg !1204, !tbaa !815
  %idxprom = sext i32 %1 to i64, !dbg !1204
  %arrayidx = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 7, i64 %idxprom, !dbg !1204
  %2 = load i32* %arrayidx, align 4, !dbg !1204, !tbaa !815
  %pme_order = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 20, !dbg !1204
  %3 = load i32* %pme_order, align 4, !dbg !1204, !tbaa !815
  %arrayidx3 = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 8, i64 %idxprom, !dbg !1204
  %4 = load i32* %arrayidx3, align 4, !dbg !1204, !tbaa !815
  %idx.ext = sext i32 %4 to i64, !dbg !1204
  %add.ptr = getelementptr inbounds [3 x float]* %x, i64 %idx.ext, !dbg !1204
  %add.ptr9 = getelementptr inbounds float* %charge, i64 %idx.ext, !dbg !1204
  %call = call %struct.t_fftgrid* @spread_on_grid(%struct._IO_FILE* undef, i32 %2, i32 %3, [3 x float]* %add.ptr, float* %add.ptr9, [3 x float]* %box, i32 %bGatherOnly) #7, !dbg !1204
  %tobool = icmp eq i32 %bGatherOnly, 0, !dbg !1205
  br i1 %tobool, label %if.then, label %if.end57, !dbg !1205

if.then:                                          ; preds = %entry
  %5 = load i32* %pme_order, align 4, !dbg !1206, !tbaa !815
  %mul = mul nsw i32 %5, %5, !dbg !1206
  %mul13 = mul nsw i32 %mul, %5, !dbg !1206
  %6 = load i32* %nodeid, align 4, !dbg !1206, !tbaa !815
  %idxprom15 = sext i32 %6 to i64, !dbg !1206
  %arrayidx17 = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 7, i64 %idxprom15, !dbg !1206
  %7 = load i32* %arrayidx17, align 4, !dbg !1206, !tbaa !815
  %mul18 = mul nsw i32 %mul13, %7, !dbg !1206
  %conv = sitofp i32 %mul18 to double, !dbg !1206
  %arrayidx19 = getelementptr inbounds %struct.t_nrnb* %nrnb, i64 0, i32 0, i64 81, !dbg !1206
  %8 = load double* %arrayidx19, align 8, !dbg !1206, !tbaa !1208
  %add = fadd double %8, %conv, !dbg !1206
  store double %add, double* %arrayidx19, align 8, !dbg !1206, !tbaa !1208
  %nnodes = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 1, !dbg !1209
  %9 = load i32* %nnodes, align 4, !dbg !1209, !tbaa !815
  %cmp = icmp sgt i32 %9, 1, !dbg !1209
  br i1 %cmp, label %if.then23, label %lor.lhs.false, !dbg !1209

lor.lhs.false:                                    ; preds = %if.then
  %nthreads = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 5, !dbg !1209
  %10 = load i32* %nthreads, align 4, !dbg !1209, !tbaa !815
  %cmp21 = icmp sgt i32 %10, 1, !dbg !1209
  br i1 %cmp21, label %if.then23, label %if.end, !dbg !1209

if.then23:                                        ; preds = %lor.lhs.false, %if.then
  call void @llvm.dbg.value(metadata !1210, i64 0, metadata !1211) #4, !dbg !1213
  call void @llvm.dbg.value(metadata !1214, i64 0, metadata !1215) #4, !dbg !1213
  call void @llvm.dbg.value(metadata !1216, i64 0, metadata !1217) #4, !dbg !1213
  call void @llvm.dbg.value(metadata !1218, i64 0, metadata !1219) #4, !dbg !1213
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([48 x i8]* @.str1, i64 0, i64 0)) #5, !dbg !1220
  br label %if.end, !dbg !1212

if.end:                                           ; preds = %if.then23, %lor.lhs.false
  %11 = load %struct.t_fftgrid** @grid, align 8, !dbg !1221, !tbaa !773
  call void @gmxfft3D(%struct.t_fftgrid* %11, i32 -1, %struct.t_commrec* %cr) #5, !dbg !1221
  tail call void @llvm.dbg.value(metadata !{[3 x float]* %box}, i64 0, metadata !1222), !dbg !1224
  %arrayidx1.i = getelementptr inbounds [3 x float]* %box, i64 0, i64 0, !dbg !1225
  %12 = load float* %arrayidx1.i, align 4, !dbg !1225, !tbaa !780
  %arrayidx3.i = getelementptr inbounds [3 x float]* %box, i64 1, i64 1, !dbg !1225
  %13 = load float* %arrayidx3.i, align 4, !dbg !1225, !tbaa !780
  %arrayidx5.i = getelementptr inbounds [3 x float]* %box, i64 2, i64 2, !dbg !1225
  %14 = load float* %arrayidx5.i, align 4, !dbg !1225, !tbaa !780
  %mul.i = fmul float %13, %14, !dbg !1225
  %arrayidx7.i = getelementptr inbounds [3 x float]* %box, i64 2, i64 1, !dbg !1225
  %15 = load float* %arrayidx7.i, align 4, !dbg !1225, !tbaa !780
  %arrayidx9.i = getelementptr inbounds [3 x float]* %box, i64 1, i64 2, !dbg !1225
  %16 = load float* %arrayidx9.i, align 4, !dbg !1225, !tbaa !780
  %mul10.i = fmul float %15, %16, !dbg !1225
  %sub.i = fsub float %mul.i, %mul10.i, !dbg !1225
  %mul11.i = fmul float %12, %sub.i, !dbg !1225
  %arrayidx13.i = getelementptr inbounds [3 x float]* %box, i64 1, i64 0, !dbg !1225
  %17 = load float* %arrayidx13.i, align 4, !dbg !1225, !tbaa !780
  %arrayidx15.i = getelementptr inbounds [3 x float]* %box, i64 0, i64 1, !dbg !1225
  %18 = load float* %arrayidx15.i, align 4, !dbg !1225, !tbaa !780
  %mul18.i = fmul float %14, %18, !dbg !1225
  %arrayidx22.i = getelementptr inbounds [3 x float]* %box, i64 0, i64 2, !dbg !1225
  %19 = load float* %arrayidx22.i, align 4, !dbg !1225, !tbaa !780
  %mul23.i = fmul float %15, %19, !dbg !1225
  %sub24.i = fsub float %mul18.i, %mul23.i, !dbg !1225
  %mul25.i = fmul float %17, %sub24.i, !dbg !1225
  %sub26.i = fsub float %mul11.i, %mul25.i, !dbg !1225
  %arrayidx28.i = getelementptr inbounds [3 x float]* %box, i64 2, i64 0, !dbg !1225
  %20 = load float* %arrayidx28.i, align 4, !dbg !1225, !tbaa !780
  %mul33.i = fmul float %16, %18, !dbg !1225
  %mul38.i = fmul float %13, %19, !dbg !1225
  %sub39.i = fsub float %mul33.i, %mul38.i, !dbg !1225
  %mul40.i = fmul float %20, %sub39.i, !dbg !1225
  %add.i = fadd float %mul40.i, %sub26.i, !dbg !1225
  call void @llvm.dbg.value(metadata !{float %add.i}, i64 0, metadata !741), !dbg !1223
  %21 = load %struct.t_fftgrid** @grid, align 8, !dbg !1227, !tbaa !773
  %call25 = call float @solve_pme(%struct.t_fftgrid* %21, float %ewaldcoeff, float %add.i, float** getelementptr inbounds ([3 x float*]* @bsp_mod, i64 0, i64 0), [3 x float]* getelementptr inbounds ([3 x [3 x float]]* @recipbox, i64 0, i64 0), [3 x float]* %vir, %struct.t_commrec* %cr) #7, !dbg !1227
  store float %call25, float* @do_pme.energy, align 4, !dbg !1227, !tbaa !780
  call void @llvm.dbg.value(metadata !{i32* %nx}, i64 0, metadata !735), !dbg !1228
  %22 = load i32* %nx, align 4, !dbg !1228, !tbaa !815
  call void @llvm.dbg.value(metadata !{i32* %ny}, i64 0, metadata !736), !dbg !1228
  %23 = load i32* %ny, align 4, !dbg !1228, !tbaa !815
  %mul26 = mul nsw i32 %23, %22, !dbg !1228
  call void @llvm.dbg.value(metadata !{i32* %nz}, i64 0, metadata !737), !dbg !1228
  %24 = load i32* %nz, align 4, !dbg !1228, !tbaa !815
  %mul27 = mul nsw i32 %mul26, %24, !dbg !1228
  %conv28 = sitofp i32 %mul27 to double, !dbg !1228
  %mul29 = fmul double %conv28, 5.000000e-01, !dbg !1228
  %arrayidx31 = getelementptr inbounds %struct.t_nrnb* %nrnb, i64 0, i32 0, i64 86, !dbg !1228
  %25 = load double* %arrayidx31, align 8, !dbg !1228, !tbaa !1208
  %add32 = fadd double %25, %mul29, !dbg !1228
  store double %add32, double* %arrayidx31, align 8, !dbg !1228, !tbaa !1208
  %26 = load %struct.t_fftgrid** @grid, align 8, !dbg !1229, !tbaa !773
  call void @gmxfft3D(%struct.t_fftgrid* %26, i32 1, %struct.t_commrec* %cr) #5, !dbg !1229
  %27 = load i32* %nnodes, align 4, !dbg !1230, !tbaa !815
  %cmp34 = icmp sgt i32 %27, 1, !dbg !1230
  br i1 %cmp34, label %if.then40, label %lor.lhs.false36, !dbg !1230

lor.lhs.false36:                                  ; preds = %if.end
  %nthreads37 = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 5, !dbg !1230
  %28 = load i32* %nthreads37, align 4, !dbg !1230, !tbaa !815
  %cmp38 = icmp sgt i32 %28, 1, !dbg !1230
  br i1 %cmp38, label %if.then40, label %if.end41, !dbg !1230

if.then40:                                        ; preds = %lor.lhs.false36, %if.end
  call void @llvm.dbg.value(metadata !1210, i64 0, metadata !1231) #4, !dbg !1233
  call void @llvm.dbg.value(metadata !1214, i64 0, metadata !1234) #4, !dbg !1233
  call void @llvm.dbg.value(metadata !1216, i64 0, metadata !1235) #4, !dbg !1233
  call void @llvm.dbg.value(metadata !1218, i64 0, metadata !1236) #4, !dbg !1233
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([48 x i8]* @.str1, i64 0, i64 0)) #5, !dbg !1237
  br label %if.end41, !dbg !1232

if.end41:                                         ; preds = %if.then40, %lor.lhs.false36
  %29 = load %struct.t_fftgrid** @grid, align 8, !dbg !1238, !tbaa !773
  %nxyz = getelementptr inbounds %struct.t_fftgrid* %29, i64 0, i32 11, !dbg !1238
  %30 = load i32* %nxyz, align 4, !dbg !1238, !tbaa !815
  call void @llvm.dbg.value(metadata !{i32 %30}, i64 0, metadata !733), !dbg !1238
  %conv42 = sitofp i32 %30 to double, !dbg !1239
  %conv43 = sitofp i32 %30 to float, !dbg !1239
  %conv44 = fpext float %conv43 to double, !dbg !1239
  %call45 = call double @log(double %conv44) #5, !dbg !1239
  %mul46 = fmul double %conv42, %call45, !dbg !1239
  %31 = load i32* %nnodes, align 4, !dbg !1239, !tbaa !815
  %conv48 = sitofp i32 %31 to double, !dbg !1239
  %mul50 = fmul double %conv48, 0x3FE62E42FEFA39EF, !dbg !1239
  %div = fdiv double %mul46, %mul50, !dbg !1239
  %conv51 = fptosi double %div to i32, !dbg !1239
  call void @llvm.dbg.value(metadata !{i32 %conv51}, i64 0, metadata !734), !dbg !1239
  %mul52 = shl nsw i32 %conv51, 1, !dbg !1240
  %conv53 = sitofp i32 %mul52 to double, !dbg !1240
  %arrayidx55 = getelementptr inbounds %struct.t_nrnb* %nrnb, i64 0, i32 0, i64 84, !dbg !1240
  %32 = load double* %arrayidx55, align 8, !dbg !1240, !tbaa !1208
  %add56 = fadd double %32, %conv53, !dbg !1240
  store double %add56, double* %arrayidx55, align 8, !dbg !1240, !tbaa !1208
  br label %if.end57, !dbg !1241

if.end57:                                         ; preds = %entry, %if.end41
  %33 = load %struct.t_fftgrid** @grid, align 8, !dbg !1242, !tbaa !773
  %34 = load [3 x i32]** @idx, align 8, !dbg !1242, !tbaa !773
  %35 = load i32* %nodeid, align 4, !dbg !1242, !tbaa !815
  %idxprom59 = sext i32 %35 to i64, !dbg !1242
  %arrayidx61 = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 8, i64 %idxprom59, !dbg !1242
  %36 = load i32* %arrayidx61, align 4, !dbg !1242, !tbaa !815
  %idx.ext62 = sext i32 %36 to i64, !dbg !1242
  %add.ptr63 = getelementptr inbounds [3 x float]* %f, i64 %idx.ext62, !dbg !1242
  %add.ptr69 = getelementptr inbounds float* %charge, i64 %idx.ext62, !dbg !1242
  %arrayidx73 = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 7, i64 %idxprom59, !dbg !1242
  %37 = load i32* %arrayidx73, align 4, !dbg !1242, !tbaa !815
  %38 = load i32* %pme_order, align 4, !dbg !1242, !tbaa !815
  %39 = load i32** @nnx, align 8, !dbg !1242, !tbaa !773
  %40 = load i32** @nny, align 8, !dbg !1242, !tbaa !773
  %41 = load i32** @nnz, align 8, !dbg !1242, !tbaa !773
  call void @gather_f_bsplines(%struct.t_fftgrid* %33, [3 x float]* getelementptr inbounds ([3 x [3 x float]]* @recipbox, i64 0, i64 0), [3 x i32]* %34, [3 x float]* %add.ptr63, float* %add.ptr69, float** getelementptr inbounds ([3 x float*]* @theta, i64 0, i64 0), float** getelementptr inbounds ([3 x float*]* @dtheta, i64 0, i64 0), i32 %37, i32 %38, i32* %39, i32* %40, i32* %41) #7, !dbg !1242
  %42 = load i32* %pme_order, align 4, !dbg !1243, !tbaa !815
  %mul77 = mul nsw i32 %42, %42, !dbg !1243
  %mul79 = mul nsw i32 %mul77, %42, !dbg !1243
  %43 = load i32* %nodeid, align 4, !dbg !1243, !tbaa !815
  %idxprom81 = sext i32 %43 to i64, !dbg !1243
  %arrayidx83 = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 7, i64 %idxprom81, !dbg !1243
  %44 = load i32* %arrayidx83, align 4, !dbg !1243, !tbaa !815
  %mul84 = mul nsw i32 %mul79, %44, !dbg !1243
  %conv85 = sitofp i32 %mul84 to double, !dbg !1243
  %arrayidx87 = getelementptr inbounds %struct.t_nrnb* %nrnb, i64 0, i32 0, i64 83, !dbg !1243
  %45 = load double* %arrayidx87, align 8, !dbg !1243, !tbaa !1208
  %add88 = fadd double %45, %conv85, !dbg !1243
  store double %add88, double* %arrayidx87, align 8, !dbg !1243, !tbaa !1208
  %46 = load float* @do_pme.energy, align 4, !dbg !1244, !tbaa !780
  ret float %46, !dbg !1244
}

; Function Attrs: optsize
declare void @gmxfft3D(%struct.t_fftgrid*, i32, %struct.t_commrec*) #3

; Function Attrs: nounwind optsize
declare double @log(double) #2

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #1

declare float @fabsf(float)

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #4

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #4

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind optsize }
attributes #6 = { nounwind optsize readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { optsize }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !148, metadata !149, metadata !749, metadata !148, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/pme.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/435.gromacs/src/pme.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{metadata !3, metadata !9, metadata !143}
!3 = metadata !{i32 786436, metadata !4, null, metadata !"", i32 65, i64 32, i64 32, i32 0, i32 0, null, metadata !5, i32 0, i32 0} ; [ DW_TAG_enumeration_type ] [line 65, size 32, align 32, offset 0] [from ]
!4 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/435.gromacs/src/types/enums.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!5 = metadata !{metadata !6, metadata !7, metadata !8}
!6 = metadata !{i32 786472, metadata !"eewg3D", i64 0} ; [ DW_TAG_enumerator ] [eewg3D :: 0]
!7 = metadata !{i32 786472, metadata !"eewg3DC", i64 1} ; [ DW_TAG_enumerator ] [eewg3DC :: 1]
!8 = metadata !{i32 786472, metadata !"eewgNR", i64 2} ; [ DW_TAG_enumerator ] [eewgNR :: 2]
!9 = metadata !{i32 786436, metadata !10, null, metadata !"", i32 51, i64 32, i64 32, i32 0, i32 0, null, metadata !11, i32 0, i32 0} ; [ DW_TAG_enumeration_type ] [line 51, size 32, align 32, offset 0] [from ]
!10 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/435.gromacs/src/types/nrnb.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!11 = metadata !{metadata !12, metadata !13, metadata !14, metadata !15, metadata !16, metadata !17, metadata !18, metadata !19, metadata !20, metadata !21, metadata !22, metadata !23, metadata !24, metadata !25, metadata !26, metadata !27, metadata !28, metadata !29, metadata !30, metadata !31, metadata !32, metadata !33, metadata !34, metadata !35, metadata !36, metadata !37, metadata !38, metadata !39, metadata !40, metadata !41, metadata !42, metadata !43, metadata !44, metadata !45, metadata !46, metadata !47, metadata !48, metadata !49, metadata !50, metadata !51, metadata !52, metadata !53, metadata !54, metadata !55, metadata !56, metadata !57, metadata !58, metadata !59, metadata !60, metadata !61, metadata !62, metadata !63, metadata !64, metadata !65, metadata !66, metadata !67, metadata !68, metadata !69, metadata !70, metadata !71, metadata !72, metadata !73, metadata !74, metadata !75, metadata !76, metadata !77, metadata !78, metadata !79, metadata !80, metadata !81, metadata !82, metadata !83, metadata !84, metadata !85, metadata !86, metadata !87, metadata !88, metadata !89, metadata !90, metadata !91, metadata !92, metadata !93, metadata !94, metadata !95, metadata !96, metadata !97, metadata !98, metadata !99, metadata !100, metadata !101, metadata !102, metadata !103, metadata !104, metadata !105, metadata !106, metadata !107, metadata !108, metadata !109, metadata !110, metadata !111, metadata !112, metadata !113, metadata !114, metadata !115, metadata !116, metadata !117, metadata !118, metadata !119, metadata !120, metadata !121, metadata !122, metadata !123, metadata !124, metadata !125, metadata !126, metadata !127, metadata !128, metadata !129, metadata !130, metadata !131, metadata !132, metadata !133, metadata !134, metadata !135, metadata !136, metadata !137, metadata !138, metadata !139, metadata !140, metadata !141, metadata !142}
!12 = metadata !{i32 786472, metadata !"eNR_INL0100", i64 0} ; [ DW_TAG_enumerator ] [eNR_INL0100 :: 0]
!13 = metadata !{i32 786472, metadata !"eNR_INL0110", i64 1} ; [ DW_TAG_enumerator ] [eNR_INL0110 :: 1]
!14 = metadata !{i32 786472, metadata !"eNR_INL0200", i64 2} ; [ DW_TAG_enumerator ] [eNR_INL0200 :: 2]
!15 = metadata !{i32 786472, metadata !"eNR_INL0210", i64 3} ; [ DW_TAG_enumerator ] [eNR_INL0210 :: 3]
!16 = metadata !{i32 786472, metadata !"eNR_INL0300", i64 4} ; [ DW_TAG_enumerator ] [eNR_INL0300 :: 4]
!17 = metadata !{i32 786472, metadata !"eNR_INL0310", i64 5} ; [ DW_TAG_enumerator ] [eNR_INL0310 :: 5]
!18 = metadata !{i32 786472, metadata !"eNR_INL0301", i64 6} ; [ DW_TAG_enumerator ] [eNR_INL0301 :: 6]
!19 = metadata !{i32 786472, metadata !"eNR_INL0302", i64 7} ; [ DW_TAG_enumerator ] [eNR_INL0302 :: 7]
!20 = metadata !{i32 786472, metadata !"eNR_INL0400", i64 8} ; [ DW_TAG_enumerator ] [eNR_INL0400 :: 8]
!21 = metadata !{i32 786472, metadata !"eNR_INL0410", i64 9} ; [ DW_TAG_enumerator ] [eNR_INL0410 :: 9]
!22 = metadata !{i32 786472, metadata !"eNR_INL0401", i64 10} ; [ DW_TAG_enumerator ] [eNR_INL0401 :: 10]
!23 = metadata !{i32 786472, metadata !"eNR_INL0402", i64 11} ; [ DW_TAG_enumerator ] [eNR_INL0402 :: 11]
!24 = metadata !{i32 786472, metadata !"eNR_INL1000", i64 12} ; [ DW_TAG_enumerator ] [eNR_INL1000 :: 12]
!25 = metadata !{i32 786472, metadata !"eNR_INL1010", i64 13} ; [ DW_TAG_enumerator ] [eNR_INL1010 :: 13]
!26 = metadata !{i32 786472, metadata !"eNR_INL1020", i64 14} ; [ DW_TAG_enumerator ] [eNR_INL1020 :: 14]
!27 = metadata !{i32 786472, metadata !"eNR_INL1030", i64 15} ; [ DW_TAG_enumerator ] [eNR_INL1030 :: 15]
!28 = metadata !{i32 786472, metadata !"eNR_INL1100", i64 16} ; [ DW_TAG_enumerator ] [eNR_INL1100 :: 16]
!29 = metadata !{i32 786472, metadata !"eNR_INL1110", i64 17} ; [ DW_TAG_enumerator ] [eNR_INL1110 :: 17]
!30 = metadata !{i32 786472, metadata !"eNR_INL1120", i64 18} ; [ DW_TAG_enumerator ] [eNR_INL1120 :: 18]
!31 = metadata !{i32 786472, metadata !"eNR_INL1130", i64 19} ; [ DW_TAG_enumerator ] [eNR_INL1130 :: 19]
!32 = metadata !{i32 786472, metadata !"eNR_INL1200", i64 20} ; [ DW_TAG_enumerator ] [eNR_INL1200 :: 20]
!33 = metadata !{i32 786472, metadata !"eNR_INL1210", i64 21} ; [ DW_TAG_enumerator ] [eNR_INL1210 :: 21]
!34 = metadata !{i32 786472, metadata !"eNR_INL1220", i64 22} ; [ DW_TAG_enumerator ] [eNR_INL1220 :: 22]
!35 = metadata !{i32 786472, metadata !"eNR_INL1230", i64 23} ; [ DW_TAG_enumerator ] [eNR_INL1230 :: 23]
!36 = metadata !{i32 786472, metadata !"eNR_INL1300", i64 24} ; [ DW_TAG_enumerator ] [eNR_INL1300 :: 24]
!37 = metadata !{i32 786472, metadata !"eNR_INL1310", i64 25} ; [ DW_TAG_enumerator ] [eNR_INL1310 :: 25]
!38 = metadata !{i32 786472, metadata !"eNR_INL1320", i64 26} ; [ DW_TAG_enumerator ] [eNR_INL1320 :: 26]
!39 = metadata !{i32 786472, metadata !"eNR_INL1330", i64 27} ; [ DW_TAG_enumerator ] [eNR_INL1330 :: 27]
!40 = metadata !{i32 786472, metadata !"eNR_INL1400", i64 28} ; [ DW_TAG_enumerator ] [eNR_INL1400 :: 28]
!41 = metadata !{i32 786472, metadata !"eNR_INL1410", i64 29} ; [ DW_TAG_enumerator ] [eNR_INL1410 :: 29]
!42 = metadata !{i32 786472, metadata !"eNR_INL1420", i64 30} ; [ DW_TAG_enumerator ] [eNR_INL1420 :: 30]
!43 = metadata !{i32 786472, metadata !"eNR_INL1430", i64 31} ; [ DW_TAG_enumerator ] [eNR_INL1430 :: 31]
!44 = metadata !{i32 786472, metadata !"eNR_INL2000", i64 32} ; [ DW_TAG_enumerator ] [eNR_INL2000 :: 32]
!45 = metadata !{i32 786472, metadata !"eNR_INL2010", i64 33} ; [ DW_TAG_enumerator ] [eNR_INL2010 :: 33]
!46 = metadata !{i32 786472, metadata !"eNR_INL2020", i64 34} ; [ DW_TAG_enumerator ] [eNR_INL2020 :: 34]
!47 = metadata !{i32 786472, metadata !"eNR_INL2030", i64 35} ; [ DW_TAG_enumerator ] [eNR_INL2030 :: 35]
!48 = metadata !{i32 786472, metadata !"eNR_INL2100", i64 36} ; [ DW_TAG_enumerator ] [eNR_INL2100 :: 36]
!49 = metadata !{i32 786472, metadata !"eNR_INL2110", i64 37} ; [ DW_TAG_enumerator ] [eNR_INL2110 :: 37]
!50 = metadata !{i32 786472, metadata !"eNR_INL2120", i64 38} ; [ DW_TAG_enumerator ] [eNR_INL2120 :: 38]
!51 = metadata !{i32 786472, metadata !"eNR_INL2130", i64 39} ; [ DW_TAG_enumerator ] [eNR_INL2130 :: 39]
!52 = metadata !{i32 786472, metadata !"eNR_INL2200", i64 40} ; [ DW_TAG_enumerator ] [eNR_INL2200 :: 40]
!53 = metadata !{i32 786472, metadata !"eNR_INL2210", i64 41} ; [ DW_TAG_enumerator ] [eNR_INL2210 :: 41]
!54 = metadata !{i32 786472, metadata !"eNR_INL2220", i64 42} ; [ DW_TAG_enumerator ] [eNR_INL2220 :: 42]
!55 = metadata !{i32 786472, metadata !"eNR_INL2230", i64 43} ; [ DW_TAG_enumerator ] [eNR_INL2230 :: 43]
!56 = metadata !{i32 786472, metadata !"eNR_INL2300", i64 44} ; [ DW_TAG_enumerator ] [eNR_INL2300 :: 44]
!57 = metadata !{i32 786472, metadata !"eNR_INL2310", i64 45} ; [ DW_TAG_enumerator ] [eNR_INL2310 :: 45]
!58 = metadata !{i32 786472, metadata !"eNR_INL2320", i64 46} ; [ DW_TAG_enumerator ] [eNR_INL2320 :: 46]
!59 = metadata !{i32 786472, metadata !"eNR_INL2330", i64 47} ; [ DW_TAG_enumerator ] [eNR_INL2330 :: 47]
!60 = metadata !{i32 786472, metadata !"eNR_INL2400", i64 48} ; [ DW_TAG_enumerator ] [eNR_INL2400 :: 48]
!61 = metadata !{i32 786472, metadata !"eNR_INL2410", i64 49} ; [ DW_TAG_enumerator ] [eNR_INL2410 :: 49]
!62 = metadata !{i32 786472, metadata !"eNR_INL2420", i64 50} ; [ DW_TAG_enumerator ] [eNR_INL2420 :: 50]
!63 = metadata !{i32 786472, metadata !"eNR_INL2430", i64 51} ; [ DW_TAG_enumerator ] [eNR_INL2430 :: 51]
!64 = metadata !{i32 786472, metadata !"eNR_INL3000", i64 52} ; [ DW_TAG_enumerator ] [eNR_INL3000 :: 52]
!65 = metadata !{i32 786472, metadata !"eNR_INL3001", i64 53} ; [ DW_TAG_enumerator ] [eNR_INL3001 :: 53]
!66 = metadata !{i32 786472, metadata !"eNR_INL3002", i64 54} ; [ DW_TAG_enumerator ] [eNR_INL3002 :: 54]
!67 = metadata !{i32 786472, metadata !"eNR_INL3010", i64 55} ; [ DW_TAG_enumerator ] [eNR_INL3010 :: 55]
!68 = metadata !{i32 786472, metadata !"eNR_INL3020", i64 56} ; [ DW_TAG_enumerator ] [eNR_INL3020 :: 56]
!69 = metadata !{i32 786472, metadata !"eNR_INL3030", i64 57} ; [ DW_TAG_enumerator ] [eNR_INL3030 :: 57]
!70 = metadata !{i32 786472, metadata !"eNR_INL3100", i64 58} ; [ DW_TAG_enumerator ] [eNR_INL3100 :: 58]
!71 = metadata !{i32 786472, metadata !"eNR_INL3110", i64 59} ; [ DW_TAG_enumerator ] [eNR_INL3110 :: 59]
!72 = metadata !{i32 786472, metadata !"eNR_INL3120", i64 60} ; [ DW_TAG_enumerator ] [eNR_INL3120 :: 60]
!73 = metadata !{i32 786472, metadata !"eNR_INL3130", i64 61} ; [ DW_TAG_enumerator ] [eNR_INL3130 :: 61]
!74 = metadata !{i32 786472, metadata !"eNR_INL3200", i64 62} ; [ DW_TAG_enumerator ] [eNR_INL3200 :: 62]
!75 = metadata !{i32 786472, metadata !"eNR_INL3210", i64 63} ; [ DW_TAG_enumerator ] [eNR_INL3210 :: 63]
!76 = metadata !{i32 786472, metadata !"eNR_INL3220", i64 64} ; [ DW_TAG_enumerator ] [eNR_INL3220 :: 64]
!77 = metadata !{i32 786472, metadata !"eNR_INL3230", i64 65} ; [ DW_TAG_enumerator ] [eNR_INL3230 :: 65]
!78 = metadata !{i32 786472, metadata !"eNR_INL3300", i64 66} ; [ DW_TAG_enumerator ] [eNR_INL3300 :: 66]
!79 = metadata !{i32 786472, metadata !"eNR_INL3301", i64 67} ; [ DW_TAG_enumerator ] [eNR_INL3301 :: 67]
!80 = metadata !{i32 786472, metadata !"eNR_INL3302", i64 68} ; [ DW_TAG_enumerator ] [eNR_INL3302 :: 68]
!81 = metadata !{i32 786472, metadata !"eNR_INL3310", i64 69} ; [ DW_TAG_enumerator ] [eNR_INL3310 :: 69]
!82 = metadata !{i32 786472, metadata !"eNR_INL3320", i64 70} ; [ DW_TAG_enumerator ] [eNR_INL3320 :: 70]
!83 = metadata !{i32 786472, metadata !"eNR_INL3330", i64 71} ; [ DW_TAG_enumerator ] [eNR_INL3330 :: 71]
!84 = metadata !{i32 786472, metadata !"eNR_INL3400", i64 72} ; [ DW_TAG_enumerator ] [eNR_INL3400 :: 72]
!85 = metadata !{i32 786472, metadata !"eNR_INL3401", i64 73} ; [ DW_TAG_enumerator ] [eNR_INL3401 :: 73]
!86 = metadata !{i32 786472, metadata !"eNR_INL3402", i64 74} ; [ DW_TAG_enumerator ] [eNR_INL3402 :: 74]
!87 = metadata !{i32 786472, metadata !"eNR_INL3410", i64 75} ; [ DW_TAG_enumerator ] [eNR_INL3410 :: 75]
!88 = metadata !{i32 786472, metadata !"eNR_INL3420", i64 76} ; [ DW_TAG_enumerator ] [eNR_INL3420 :: 76]
!89 = metadata !{i32 786472, metadata !"eNR_INL3430", i64 77} ; [ DW_TAG_enumerator ] [eNR_INL3430 :: 77]
!90 = metadata !{i32 786472, metadata !"eNR_INLOOP", i64 78} ; [ DW_TAG_enumerator ] [eNR_INLOOP :: 78]
!91 = metadata !{i32 786472, metadata !"eNR_INL_IATOM", i64 78} ; [ DW_TAG_enumerator ] [eNR_INL_IATOM :: 78]
!92 = metadata !{i32 786472, metadata !"eNR_WEIGHTS", i64 79} ; [ DW_TAG_enumerator ] [eNR_WEIGHTS :: 79]
!93 = metadata !{i32 786472, metadata !"eNR_SPREADQ", i64 80} ; [ DW_TAG_enumerator ] [eNR_SPREADQ :: 80]
!94 = metadata !{i32 786472, metadata !"eNR_SPREADQBSP", i64 81} ; [ DW_TAG_enumerator ] [eNR_SPREADQBSP :: 81]
!95 = metadata !{i32 786472, metadata !"eNR_GATHERF", i64 82} ; [ DW_TAG_enumerator ] [eNR_GATHERF :: 82]
!96 = metadata !{i32 786472, metadata !"eNR_GATHERFBSP", i64 83} ; [ DW_TAG_enumerator ] [eNR_GATHERFBSP :: 83]
!97 = metadata !{i32 786472, metadata !"eNR_FFT", i64 84} ; [ DW_TAG_enumerator ] [eNR_FFT :: 84]
!98 = metadata !{i32 786472, metadata !"eNR_CONV", i64 85} ; [ DW_TAG_enumerator ] [eNR_CONV :: 85]
!99 = metadata !{i32 786472, metadata !"eNR_SOLVEPME", i64 86} ; [ DW_TAG_enumerator ] [eNR_SOLVEPME :: 86]
!100 = metadata !{i32 786472, metadata !"eNR_NS", i64 87} ; [ DW_TAG_enumerator ] [eNR_NS :: 87]
!101 = metadata !{i32 786472, metadata !"eNR_RESETX", i64 88} ; [ DW_TAG_enumerator ] [eNR_RESETX :: 88]
!102 = metadata !{i32 786472, metadata !"eNR_SHIFTX", i64 89} ; [ DW_TAG_enumerator ] [eNR_SHIFTX :: 89]
!103 = metadata !{i32 786472, metadata !"eNR_CGCM", i64 90} ; [ DW_TAG_enumerator ] [eNR_CGCM :: 90]
!104 = metadata !{i32 786472, metadata !"eNR_FSUM", i64 91} ; [ DW_TAG_enumerator ] [eNR_FSUM :: 91]
!105 = metadata !{i32 786472, metadata !"eNR_BONDS", i64 92} ; [ DW_TAG_enumerator ] [eNR_BONDS :: 92]
!106 = metadata !{i32 786472, metadata !"eNR_G96BONDS", i64 93} ; [ DW_TAG_enumerator ] [eNR_G96BONDS :: 93]
!107 = metadata !{i32 786472, metadata !"eNR_ANGLES", i64 94} ; [ DW_TAG_enumerator ] [eNR_ANGLES :: 94]
!108 = metadata !{i32 786472, metadata !"eNR_G96ANGLES", i64 95} ; [ DW_TAG_enumerator ] [eNR_G96ANGLES :: 95]
!109 = metadata !{i32 786472, metadata !"eNR_PROPER", i64 96} ; [ DW_TAG_enumerator ] [eNR_PROPER :: 96]
!110 = metadata !{i32 786472, metadata !"eNR_IMPROPER", i64 97} ; [ DW_TAG_enumerator ] [eNR_IMPROPER :: 97]
!111 = metadata !{i32 786472, metadata !"eNR_RB", i64 98} ; [ DW_TAG_enumerator ] [eNR_RB :: 98]
!112 = metadata !{i32 786472, metadata !"eNR_DISRES", i64 99} ; [ DW_TAG_enumerator ] [eNR_DISRES :: 99]
!113 = metadata !{i32 786472, metadata !"eNR_ORIRES", i64 100} ; [ DW_TAG_enumerator ] [eNR_ORIRES :: 100]
!114 = metadata !{i32 786472, metadata !"eNR_POSRES", i64 101} ; [ DW_TAG_enumerator ] [eNR_POSRES :: 101]
!115 = metadata !{i32 786472, metadata !"eNR_ANGRES", i64 102} ; [ DW_TAG_enumerator ] [eNR_ANGRES :: 102]
!116 = metadata !{i32 786472, metadata !"eNR_ANGRESZ", i64 103} ; [ DW_TAG_enumerator ] [eNR_ANGRESZ :: 103]
!117 = metadata !{i32 786472, metadata !"eNR_MORSE", i64 104} ; [ DW_TAG_enumerator ] [eNR_MORSE :: 104]
!118 = metadata !{i32 786472, metadata !"eNR_CUBICBONDS", i64 105} ; [ DW_TAG_enumerator ] [eNR_CUBICBONDS :: 105]
!119 = metadata !{i32 786472, metadata !"eNR_WPOL", i64 106} ; [ DW_TAG_enumerator ] [eNR_WPOL :: 106]
!120 = metadata !{i32 786472, metadata !"eNR_VIRIAL", i64 107} ; [ DW_TAG_enumerator ] [eNR_VIRIAL :: 107]
!121 = metadata !{i32 786472, metadata !"eNR_UPDATE", i64 108} ; [ DW_TAG_enumerator ] [eNR_UPDATE :: 108]
!122 = metadata !{i32 786472, metadata !"eNR_EXTUPDATE", i64 109} ; [ DW_TAG_enumerator ] [eNR_EXTUPDATE :: 109]
!123 = metadata !{i32 786472, metadata !"eNR_STOPCM", i64 110} ; [ DW_TAG_enumerator ] [eNR_STOPCM :: 110]
!124 = metadata !{i32 786472, metadata !"eNR_PCOUPL", i64 111} ; [ DW_TAG_enumerator ] [eNR_PCOUPL :: 111]
!125 = metadata !{i32 786472, metadata !"eNR_EKIN", i64 112} ; [ DW_TAG_enumerator ] [eNR_EKIN :: 112]
!126 = metadata !{i32 786472, metadata !"eNR_LINCS", i64 113} ; [ DW_TAG_enumerator ] [eNR_LINCS :: 113]
!127 = metadata !{i32 786472, metadata !"eNR_LINCSMAT", i64 114} ; [ DW_TAG_enumerator ] [eNR_LINCSMAT :: 114]
!128 = metadata !{i32 786472, metadata !"eNR_SHAKE", i64 115} ; [ DW_TAG_enumerator ] [eNR_SHAKE :: 115]
!129 = metadata !{i32 786472, metadata !"eNR_SHAKE_V", i64 116} ; [ DW_TAG_enumerator ] [eNR_SHAKE_V :: 116]
!130 = metadata !{i32 786472, metadata !"eNR_SHAKE_RIJ", i64 117} ; [ DW_TAG_enumerator ] [eNR_SHAKE_RIJ :: 117]
!131 = metadata !{i32 786472, metadata !"eNR_SHAKE_VIR", i64 118} ; [ DW_TAG_enumerator ] [eNR_SHAKE_VIR :: 118]
!132 = metadata !{i32 786472, metadata !"eNR_SETTLE", i64 119} ; [ DW_TAG_enumerator ] [eNR_SETTLE :: 119]
!133 = metadata !{i32 786472, metadata !"eNR_PSHAKEINITLD", i64 120} ; [ DW_TAG_enumerator ] [eNR_PSHAKEINITLD :: 120]
!134 = metadata !{i32 786472, metadata !"eNR_PSHAKEINITMD", i64 121} ; [ DW_TAG_enumerator ] [eNR_PSHAKEINITMD :: 121]
!135 = metadata !{i32 786472, metadata !"eNR_PSHAKE", i64 122} ; [ DW_TAG_enumerator ] [eNR_PSHAKE :: 122]
!136 = metadata !{i32 786472, metadata !"eNR_DUM2", i64 123} ; [ DW_TAG_enumerator ] [eNR_DUM2 :: 123]
!137 = metadata !{i32 786472, metadata !"eNR_DUM3", i64 124} ; [ DW_TAG_enumerator ] [eNR_DUM3 :: 124]
!138 = metadata !{i32 786472, metadata !"eNR_DUM3FD", i64 125} ; [ DW_TAG_enumerator ] [eNR_DUM3FD :: 125]
!139 = metadata !{i32 786472, metadata !"eNR_DUM3FAD", i64 126} ; [ DW_TAG_enumerator ] [eNR_DUM3FAD :: 126]
!140 = metadata !{i32 786472, metadata !"eNR_DUM3OUT", i64 127} ; [ DW_TAG_enumerator ] [eNR_DUM3OUT :: 127]
!141 = metadata !{i32 786472, metadata !"eNR_DUM4FD", i64 128} ; [ DW_TAG_enumerator ] [eNR_DUM4FD :: 128]
!142 = metadata !{i32 786472, metadata !"eNRNB", i64 129} ; [ DW_TAG_enumerator ] [eNRNB :: 129]
!143 = metadata !{i32 786436, metadata !144, null, metadata !"", i32 59, i64 32, i64 32, i32 0, i32 0, null, metadata !145, i32 0, i32 0} ; [ DW_TAG_enumeration_type ] [line 59, size 32, align 32, offset 0] [from ]
!144 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/435.gromacs/src/fftgrid.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!145 = metadata !{metadata !146, metadata !147}
!146 = metadata !{i32 786472, metadata !"FFTW_FORWARD", i64 4294967295} ; [ DW_TAG_enumerator ] [FFTW_FORWARD :: 4294967295]
!147 = metadata !{i32 786472, metadata !"FFTW_BACKWARD", i64 1} ; [ DW_TAG_enumerator ] [FFTW_BACKWARD :: 1]
!148 = metadata !{i32 0}
!149 = metadata !{metadata !150, metadata !164, metadata !177, metadata !214, metadata !271, metadata !317, metadata !383, metadata !455, metadata !479, metadata !491, metadata !508, metadata !578, metadata !595, metadata !742}
!150 = metadata !{i32 786478, metadata !1, metadata !151, metadata !"my_range_check", metadata !"my_range_check", metadata !"", i32 77, metadata !152, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i8*, i32, i32, i8*, i32)* @my_range_check, null, null, metadata !157, i32 78} ; [ DW_TAG_subprogram ] [line 77] [def] [scope 78] [my_range_check]
!151 = metadata !{i32 786473, metadata !1}        ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/pme.c]
!152 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !153, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!153 = metadata !{null, metadata !154, metadata !156, metadata !156, metadata !154, metadata !156}
!154 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !155} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from char]
!155 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!156 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!157 = metadata !{metadata !158, metadata !159, metadata !160, metadata !161, metadata !162, metadata !163}
!158 = metadata !{i32 786689, metadata !150, metadata !"s", metadata !151, i32 16777293, metadata !154, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [s] [line 77]
!159 = metadata !{i32 786689, metadata !150, metadata !"i", metadata !151, i32 33554509, metadata !156, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [i] [line 77]
!160 = metadata !{i32 786689, metadata !150, metadata !"nr", metadata !151, i32 50331725, metadata !156, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nr] [line 77]
!161 = metadata !{i32 786689, metadata !150, metadata !"file", metadata !151, i32 67108941, metadata !154, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [file] [line 77]
!162 = metadata !{i32 786689, metadata !150, metadata !"line", metadata !151, i32 83886157, metadata !156, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [line] [line 77]
!163 = metadata !{i32 786688, metadata !150, metadata !"c", metadata !151, i32 79, metadata !156, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [c] [line 79]
!164 = metadata !{i32 786478, metadata !1, metadata !151, metadata !"calc_recipbox", metadata !"calc_recipbox", metadata !"", i32 88, metadata !165, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void ([3 x float]*, [3 x float]*)* @calc_recipbox, null, null, metadata !173, i32 89} ; [ DW_TAG_subprogram ] [line 88] [def] [scope 89] [calc_recipbox]
!165 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !166, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!166 = metadata !{null, metadata !167, metadata !167}
!167 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !168} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!168 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 96, i64 32, i32 0, i32 0, metadata !169, metadata !171, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 96, align 32, offset 0] [from real]
!169 = metadata !{i32 786454, metadata !1, null, metadata !"real", i32 87, i64 0, i64 0, i64 0, i32 0, metadata !170} ; [ DW_TAG_typedef ] [real] [line 87, size 0, align 0, offset 0] [from float]
!170 = metadata !{i32 786468, null, null, metadata !"float", i32 0, i64 32, i64 32, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [float] [line 0, size 32, align 32, offset 0, enc DW_ATE_float]
!171 = metadata !{metadata !172}
!172 = metadata !{i32 786465, i64 0, i64 3}       ; [ DW_TAG_subrange_type ] [0, 2]
!173 = metadata !{metadata !174, metadata !175, metadata !176}
!174 = metadata !{i32 786689, metadata !164, metadata !"box", metadata !151, i32 16777304, metadata !167, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [box] [line 88]
!175 = metadata !{i32 786689, metadata !164, metadata !"recipbox", metadata !151, i32 33554520, metadata !167, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [recipbox] [line 88]
!176 = metadata !{i32 786688, metadata !164, metadata !"tmp", metadata !151, i32 92, metadata !169, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [tmp] [line 92]
!177 = metadata !{i32 786478, metadata !1, metadata !151, metadata !"calc_idx", metadata !"calc_idx", metadata !"", i32 106, metadata !178, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i32, [3 x float]*, [3 x float]*, [3 x float]*, [3 x i32]*, i32, i32, i32, i32*, i32*, i32*)* @calc_idx, null, null, metadata !186, i32 109} ; [ DW_TAG_subprogram ] [line 106] [def] [scope 109] [calc_idx]
!178 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !179, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!179 = metadata !{null, metadata !156, metadata !167, metadata !180, metadata !180, metadata !182, metadata !156, metadata !156, metadata !156, metadata !185, metadata !185, metadata !185}
!180 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !181} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from rvec]
!181 = metadata !{i32 786454, metadata !1, null, metadata !"rvec", i32 101, i64 0, i64 0, i64 0, i32 0, metadata !168} ; [ DW_TAG_typedef ] [rvec] [line 101, size 0, align 0, offset 0] [from ]
!182 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !183} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ivec]
!183 = metadata !{i32 786454, metadata !1, null, metadata !"ivec", i32 107, i64 0, i64 0, i64 0, i32 0, metadata !184} ; [ DW_TAG_typedef ] [ivec] [line 107, size 0, align 0, offset 0] [from ]
!184 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 96, i64 32, i32 0, i32 0, metadata !156, metadata !171, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 96, align 32, offset 0] [from int]
!185 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !156} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from int]
!186 = metadata !{metadata !187, metadata !188, metadata !189, metadata !190, metadata !191, metadata !192, metadata !193, metadata !194, metadata !195, metadata !196, metadata !197, metadata !198, metadata !199, metadata !200, metadata !201, metadata !202, metadata !203, metadata !205, metadata !206, metadata !207, metadata !208, metadata !209, metadata !210, metadata !211, metadata !212, metadata !213}
!187 = metadata !{i32 786689, metadata !177, metadata !"natoms", metadata !151, i32 16777322, metadata !156, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [natoms] [line 106]
!188 = metadata !{i32 786689, metadata !177, metadata !"recipbox", metadata !151, i32 33554538, metadata !167, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [recipbox] [line 106]
!189 = metadata !{i32 786689, metadata !177, metadata !"x", metadata !151, i32 50331755, metadata !180, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [x] [line 107]
!190 = metadata !{i32 786689, metadata !177, metadata !"fractx", metadata !151, i32 67108971, metadata !180, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fractx] [line 107]
!191 = metadata !{i32 786689, metadata !177, metadata !"idx", metadata !151, i32 83886187, metadata !182, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [idx] [line 107]
!192 = metadata !{i32 786689, metadata !177, metadata !"nx", metadata !151, i32 100663403, metadata !156, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nx] [line 107]
!193 = metadata !{i32 786689, metadata !177, metadata !"ny", metadata !151, i32 117440619, metadata !156, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ny] [line 107]
!194 = metadata !{i32 786689, metadata !177, metadata !"nz", metadata !151, i32 134217835, metadata !156, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nz] [line 107]
!195 = metadata !{i32 786689, metadata !177, metadata !"nnx", metadata !151, i32 150995052, metadata !185, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nnx] [line 108]
!196 = metadata !{i32 786689, metadata !177, metadata !"nny", metadata !151, i32 167772268, metadata !185, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nny] [line 108]
!197 = metadata !{i32 786689, metadata !177, metadata !"nnz", metadata !151, i32 184549484, metadata !185, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nnz] [line 108]
!198 = metadata !{i32 786688, metadata !177, metadata !"i", metadata !151, i32 110, metadata !156, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 110]
!199 = metadata !{i32 786688, metadata !177, metadata !"idxptr", metadata !151, i32 111, metadata !185, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [idxptr] [line 111]
!200 = metadata !{i32 786688, metadata !177, metadata !"tix", metadata !151, i32 111, metadata !156, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [tix] [line 111]
!201 = metadata !{i32 786688, metadata !177, metadata !"tiy", metadata !151, i32 111, metadata !156, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [tiy] [line 111]
!202 = metadata !{i32 786688, metadata !177, metadata !"tiz", metadata !151, i32 111, metadata !156, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [tiz] [line 111]
!203 = metadata !{i32 786688, metadata !177, metadata !"xptr", metadata !151, i32 112, metadata !204, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [xptr] [line 112]
!204 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !169} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from real]
!205 = metadata !{i32 786688, metadata !177, metadata !"tx", metadata !151, i32 112, metadata !169, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [tx] [line 112]
!206 = metadata !{i32 786688, metadata !177, metadata !"ty", metadata !151, i32 112, metadata !169, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ty] [line 112]
!207 = metadata !{i32 786688, metadata !177, metadata !"tz", metadata !151, i32 112, metadata !169, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [tz] [line 112]
!208 = metadata !{i32 786688, metadata !177, metadata !"rxx", metadata !151, i32 113, metadata !169, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rxx] [line 113]
!209 = metadata !{i32 786688, metadata !177, metadata !"ryx", metadata !151, i32 113, metadata !169, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ryx] [line 113]
!210 = metadata !{i32 786688, metadata !177, metadata !"ryy", metadata !151, i32 113, metadata !169, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ryy] [line 113]
!211 = metadata !{i32 786688, metadata !177, metadata !"rzx", metadata !151, i32 113, metadata !169, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rzx] [line 113]
!212 = metadata !{i32 786688, metadata !177, metadata !"rzy", metadata !151, i32 113, metadata !169, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rzy] [line 113]
!213 = metadata !{i32 786688, metadata !177, metadata !"rzz", metadata !151, i32 113, metadata !169, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rzz] [line 113]
!214 = metadata !{i32 786478, metadata !1, metadata !151, metadata !"sum_qgrid", metadata !"sum_qgrid", metadata !"", i32 168, metadata !215, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct.t_commrec*, %struct.t_nsborder*, %struct.t_fftgrid*, i32)* @sum_qgrid, null, null, metadata !265, i32 169} ; [ DW_TAG_subprogram ] [line 168] [def] [scope 169] [sum_qgrid]
!215 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !216, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!216 = metadata !{null, metadata !217, metadata !228, metadata !247, metadata !156}
!217 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !218} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from t_commrec]
!218 = metadata !{i32 786454, metadata !1, null, metadata !"t_commrec", i32 40, i64 0, i64 0, i64 0, i32 0, metadata !219} ; [ DW_TAG_typedef ] [t_commrec] [line 40, size 0, align 0, offset 0] [from ]
!219 = metadata !{i32 786451, metadata !220, null, metadata !"", i32 36, i64 192, i64 32, i32 0, i32 0, null, metadata !221, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 36, size 192, align 32, offset 0] [from ]
!220 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/435.gromacs/src/types/commrec.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!221 = metadata !{metadata !222, metadata !223, metadata !224, metadata !225, metadata !226, metadata !227}
!222 = metadata !{i32 786445, metadata !220, metadata !219, metadata !"nodeid", i32 37, i64 32, i64 32, i64 0, i32 0, metadata !156} ; [ DW_TAG_member ] [nodeid] [line 37, size 32, align 32, offset 0] [from int]
!223 = metadata !{i32 786445, metadata !220, metadata !219, metadata !"nnodes", i32 37, i64 32, i64 32, i64 32, i32 0, metadata !156} ; [ DW_TAG_member ] [nnodes] [line 37, size 32, align 32, offset 32] [from int]
!224 = metadata !{i32 786445, metadata !220, metadata !219, metadata !"left", i32 38, i64 32, i64 32, i64 64, i32 0, metadata !156} ; [ DW_TAG_member ] [left] [line 38, size 32, align 32, offset 64] [from int]
!225 = metadata !{i32 786445, metadata !220, metadata !219, metadata !"right", i32 38, i64 32, i64 32, i64 96, i32 0, metadata !156} ; [ DW_TAG_member ] [right] [line 38, size 32, align 32, offset 96] [from int]
!226 = metadata !{i32 786445, metadata !220, metadata !219, metadata !"threadid", i32 39, i64 32, i64 32, i64 128, i32 0, metadata !156} ; [ DW_TAG_member ] [threadid] [line 39, size 32, align 32, offset 128] [from int]
!227 = metadata !{i32 786445, metadata !220, metadata !219, metadata !"nthreads", i32 39, i64 32, i64 32, i64 160, i32 0, metadata !156} ; [ DW_TAG_member ] [nthreads] [line 39, size 32, align 32, offset 160] [from int]
!228 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !229} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from t_nsborder]
!229 = metadata !{i32 786454, metadata !1, null, metadata !"t_nsborder", i32 59, i64 0, i64 0, i64 0, i32 0, metadata !230} ; [ DW_TAG_typedef ] [t_nsborder] [line 59, size 0, align 0, offset 0] [from ]
!230 = metadata !{i32 786451, metadata !231, null, metadata !"", i32 36, i64 32992, i64 32, i32 0, i32 0, null, metadata !232, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 36, size 32992, align 32, offset 0] [from ]
!231 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/435.gromacs/src/types/nsborder.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!232 = metadata !{metadata !233, metadata !234, metadata !235, metadata !236, metadata !237, metadata !238, metadata !239, metadata !240, metadata !244, metadata !245, metadata !246}
!233 = metadata !{i32 786445, metadata !231, metadata !230, metadata !"nodeid", i32 37, i64 32, i64 32, i64 0, i32 0, metadata !156} ; [ DW_TAG_member ] [nodeid] [line 37, size 32, align 32, offset 0] [from int]
!234 = metadata !{i32 786445, metadata !231, metadata !230, metadata !"nnodes", i32 38, i64 32, i64 32, i64 32, i32 0, metadata !156} ; [ DW_TAG_member ] [nnodes] [line 38, size 32, align 32, offset 32] [from int]
!235 = metadata !{i32 786445, metadata !231, metadata !230, metadata !"cgtotal", i32 39, i64 32, i64 32, i64 64, i32 0, metadata !156} ; [ DW_TAG_member ] [cgtotal] [line 39, size 32, align 32, offset 64] [from int]
!236 = metadata !{i32 786445, metadata !231, metadata !230, metadata !"natoms", i32 40, i64 32, i64 32, i64 96, i32 0, metadata !156} ; [ DW_TAG_member ] [natoms] [line 40, size 32, align 32, offset 96] [from int]
!237 = metadata !{i32 786445, metadata !231, metadata !230, metadata !"nstDlb", i32 41, i64 32, i64 32, i64 128, i32 0, metadata !156} ; [ DW_TAG_member ] [nstDlb] [line 41, size 32, align 32, offset 128] [from int]
!238 = metadata !{i32 786445, metadata !231, metadata !230, metadata !"shift", i32 43, i64 32, i64 32, i64 160, i32 0, metadata !156} ; [ DW_TAG_member ] [shift] [line 43, size 32, align 32, offset 160] [from int]
!239 = metadata !{i32 786445, metadata !231, metadata !230, metadata !"bshift", i32 43, i64 32, i64 32, i64 192, i32 0, metadata !156} ; [ DW_TAG_member ] [bshift] [line 43, size 32, align 32, offset 192] [from int]
!240 = metadata !{i32 786445, metadata !231, metadata !230, metadata !"homenr", i32 50, i64 8192, i64 32, i64 224, i32 0, metadata !241} ; [ DW_TAG_member ] [homenr] [line 50, size 8192, align 32, offset 224] [from ]
!241 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 8192, i64 32, i32 0, i32 0, metadata !156, metadata !242, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 8192, align 32, offset 0] [from int]
!242 = metadata !{metadata !243}
!243 = metadata !{i32 786465, i64 0, i64 256}     ; [ DW_TAG_subrange_type ] [0, 255]
!244 = metadata !{i32 786445, metadata !231, metadata !230, metadata !"index", i32 51, i64 8192, i64 32, i64 8416, i32 0, metadata !241} ; [ DW_TAG_member ] [index] [line 51, size 8192, align 32, offset 8416] [from ]
!245 = metadata !{i32 786445, metadata !231, metadata !230, metadata !"cgload", i32 52, i64 8192, i64 32, i64 16608, i32 0, metadata !241} ; [ DW_TAG_member ] [cgload] [line 52, size 8192, align 32, offset 16608] [from ]
!246 = metadata !{i32 786445, metadata !231, metadata !230, metadata !"workload", i32 55, i64 8192, i64 32, i64 24800, i32 0, metadata !241} ; [ DW_TAG_member ] [workload] [line 55, size 8192, align 32, offset 24800] [from ]
!247 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !248} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from t_fftgrid]
!248 = metadata !{i32 786454, metadata !1, null, metadata !"t_fftgrid", i32 86, i64 0, i64 0, i64 0, i32 0, metadata !249} ; [ DW_TAG_typedef ] [t_fftgrid] [line 86, size 0, align 0, offset 0] [from ]
!249 = metadata !{i32 786451, metadata !144, null, metadata !"", i32 71, i64 512, i64 64, i32 0, i32 0, null, metadata !250, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 71, size 512, align 64, offset 0] [from ]
!250 = metadata !{metadata !251, metadata !254, metadata !255, metadata !256, metadata !257, metadata !258, metadata !259, metadata !260, metadata !261, metadata !262, metadata !263, metadata !264}
!251 = metadata !{i32 786445, metadata !144, metadata !249, metadata !"ptr", i32 72, i64 64, i64 64, i64 0, i32 0, metadata !252} ; [ DW_TAG_member ] [ptr] [line 72, size 64, align 64, offset 0] [from ]
!252 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !253} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from t_fft_r]
!253 = metadata !{i32 786454, metadata !144, null, metadata !"t_fft_r", i32 58, i64 0, i64 0, i64 0, i32 0, metadata !169} ; [ DW_TAG_typedef ] [t_fft_r] [line 58, size 0, align 0, offset 0] [from real]
!254 = metadata !{i32 786445, metadata !144, metadata !249, metadata !"localptr", i32 73, i64 64, i64 64, i64 64, i32 0, metadata !252} ; [ DW_TAG_member ] [localptr] [line 73, size 64, align 64, offset 64] [from ]
!255 = metadata !{i32 786445, metadata !144, metadata !249, metadata !"workspace", i32 74, i64 64, i64 64, i64 128, i32 0, metadata !252} ; [ DW_TAG_member ] [workspace] [line 74, size 64, align 64, offset 128] [from ]
!256 = metadata !{i32 786445, metadata !144, metadata !249, metadata !"nx", i32 75, i64 32, i64 32, i64 192, i32 0, metadata !156} ; [ DW_TAG_member ] [nx] [line 75, size 32, align 32, offset 192] [from int]
!257 = metadata !{i32 786445, metadata !144, metadata !249, metadata !"ny", i32 75, i64 32, i64 32, i64 224, i32 0, metadata !156} ; [ DW_TAG_member ] [ny] [line 75, size 32, align 32, offset 224] [from int]
!258 = metadata !{i32 786445, metadata !144, metadata !249, metadata !"nz", i32 75, i64 32, i64 32, i64 256, i32 0, metadata !156} ; [ DW_TAG_member ] [nz] [line 75, size 32, align 32, offset 256] [from int]
!259 = metadata !{i32 786445, metadata !144, metadata !249, metadata !"la2r", i32 75, i64 32, i64 32, i64 288, i32 0, metadata !156} ; [ DW_TAG_member ] [la2r] [line 75, size 32, align 32, offset 288] [from int]
!260 = metadata !{i32 786445, metadata !144, metadata !249, metadata !"la2c", i32 75, i64 32, i64 32, i64 320, i32 0, metadata !156} ; [ DW_TAG_member ] [la2c] [line 75, size 32, align 32, offset 320] [from int]
!261 = metadata !{i32 786445, metadata !144, metadata !249, metadata !"la12r", i32 75, i64 32, i64 32, i64 352, i32 0, metadata !156} ; [ DW_TAG_member ] [la12r] [line 75, size 32, align 32, offset 352] [from int]
!262 = metadata !{i32 786445, metadata !144, metadata !249, metadata !"la12c", i32 75, i64 32, i64 32, i64 384, i32 0, metadata !156} ; [ DW_TAG_member ] [la12c] [line 75, size 32, align 32, offset 384] [from int]
!263 = metadata !{i32 786445, metadata !144, metadata !249, metadata !"nptr", i32 76, i64 32, i64 32, i64 416, i32 0, metadata !156} ; [ DW_TAG_member ] [nptr] [line 76, size 32, align 32, offset 416] [from int]
!264 = metadata !{i32 786445, metadata !144, metadata !249, metadata !"nxyz", i32 76, i64 32, i64 32, i64 448, i32 0, metadata !156} ; [ DW_TAG_member ] [nxyz] [line 76, size 32, align 32, offset 448] [from int]
!265 = metadata !{metadata !266, metadata !267, metadata !268, metadata !269, metadata !270}
!266 = metadata !{i32 786689, metadata !214, metadata !"cr", metadata !151, i32 16777384, metadata !217, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cr] [line 168]
!267 = metadata !{i32 786689, metadata !214, metadata !"nsb", metadata !151, i32 33554600, metadata !228, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nsb] [line 168]
!268 = metadata !{i32 786689, metadata !214, metadata !"grid", metadata !151, i32 50331816, metadata !247, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [grid] [line 168]
!269 = metadata !{i32 786689, metadata !214, metadata !"bForward", metadata !151, i32 67109032, metadata !156, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [bForward] [line 168]
!270 = metadata !{i32 786688, metadata !214, metadata !"i", metadata !151, i32 172, metadata !156, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 172]
!271 = metadata !{i32 786478, metadata !1, metadata !151, metadata !"spread_q_bsplines", metadata !"spread_q_bsplines", metadata !"", i32 211, metadata !272, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct.t_fftgrid*, [3 x i32]*, float*, float**, i32, i32, i32*, i32*, i32*)* @spread_q_bsplines, null, null, metadata !275, i32 214} ; [ DW_TAG_subprogram ] [line 211] [def] [scope 214] [spread_q_bsplines]
!272 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !273, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!273 = metadata !{null, metadata !247, metadata !182, metadata !204, metadata !274, metadata !156, metadata !156, metadata !185, metadata !185, metadata !185}
!274 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !204} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!275 = metadata !{metadata !276, metadata !277, metadata !278, metadata !279, metadata !280, metadata !281, metadata !282, metadata !283, metadata !284, metadata !285, metadata !286, metadata !287, metadata !288, metadata !289, metadata !290, metadata !291, metadata !292, metadata !293, metadata !294, metadata !295, metadata !296, metadata !297, metadata !298, metadata !299, metadata !300, metadata !301, metadata !302, metadata !303, metadata !304, metadata !305, metadata !306, metadata !307, metadata !308, metadata !309, metadata !310, metadata !311, metadata !312, metadata !313, metadata !314, metadata !315, metadata !316}
!276 = metadata !{i32 786689, metadata !271, metadata !"grid", metadata !151, i32 16777427, metadata !247, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [grid] [line 211]
!277 = metadata !{i32 786689, metadata !271, metadata !"idx", metadata !151, i32 33554643, metadata !182, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [idx] [line 211]
!278 = metadata !{i32 786689, metadata !271, metadata !"charge", metadata !151, i32 50331859, metadata !204, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [charge] [line 211]
!279 = metadata !{i32 786689, metadata !271, metadata !"theta", metadata !151, i32 67109076, metadata !274, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [theta] [line 212]
!280 = metadata !{i32 786689, metadata !271, metadata !"nr", metadata !151, i32 83886292, metadata !156, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nr] [line 212]
!281 = metadata !{i32 786689, metadata !271, metadata !"order", metadata !151, i32 100663508, metadata !156, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [order] [line 212]
!282 = metadata !{i32 786689, metadata !271, metadata !"nnx", metadata !151, i32 117440725, metadata !185, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nnx] [line 213]
!283 = metadata !{i32 786689, metadata !271, metadata !"nny", metadata !151, i32 134217941, metadata !185, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nny] [line 213]
!284 = metadata !{i32 786689, metadata !271, metadata !"nnz", metadata !151, i32 150995157, metadata !185, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nnz] [line 213]
!285 = metadata !{i32 786688, metadata !271, metadata !"ptr", metadata !151, i32 216, metadata !252, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ptr] [line 216]
!286 = metadata !{i32 786688, metadata !271, metadata !"i", metadata !151, i32 217, metadata !156, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 217]
!287 = metadata !{i32 786688, metadata !271, metadata !"j", metadata !151, i32 217, metadata !156, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [j] [line 217]
!288 = metadata !{i32 786688, metadata !271, metadata !"k", metadata !151, i32 217, metadata !156, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [k] [line 217]
!289 = metadata !{i32 786688, metadata !271, metadata !"n", metadata !151, i32 217, metadata !156, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [n] [line 217]
!290 = metadata !{i32 786688, metadata !271, metadata !"i0", metadata !151, i32 217, metadata !185, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i0] [line 217]
!291 = metadata !{i32 786688, metadata !271, metadata !"j0", metadata !151, i32 217, metadata !185, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [j0] [line 217]
!292 = metadata !{i32 786688, metadata !271, metadata !"k0", metadata !151, i32 217, metadata !185, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [k0] [line 217]
!293 = metadata !{i32 786688, metadata !271, metadata !"ii0", metadata !151, i32 217, metadata !185, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ii0] [line 217]
!294 = metadata !{i32 786688, metadata !271, metadata !"jj0", metadata !151, i32 217, metadata !185, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [jj0] [line 217]
!295 = metadata !{i32 786688, metadata !271, metadata !"kk0", metadata !151, i32 217, metadata !185, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [kk0] [line 217]
!296 = metadata !{i32 786688, metadata !271, metadata !"ithx", metadata !151, i32 217, metadata !156, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ithx] [line 217]
!297 = metadata !{i32 786688, metadata !271, metadata !"ithy", metadata !151, i32 217, metadata !156, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ithy] [line 217]
!298 = metadata !{i32 786688, metadata !271, metadata !"ithz", metadata !151, i32 217, metadata !156, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ithz] [line 217]
!299 = metadata !{i32 786688, metadata !271, metadata !"nx", metadata !151, i32 218, metadata !156, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nx] [line 218]
!300 = metadata !{i32 786688, metadata !271, metadata !"ny", metadata !151, i32 218, metadata !156, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ny] [line 218]
!301 = metadata !{i32 786688, metadata !271, metadata !"nz", metadata !151, i32 218, metadata !156, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nz] [line 218]
!302 = metadata !{i32 786688, metadata !271, metadata !"la2", metadata !151, i32 218, metadata !156, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [la2] [line 218]
!303 = metadata !{i32 786688, metadata !271, metadata !"la12", metadata !151, i32 218, metadata !156, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [la12] [line 218]
!304 = metadata !{i32 786688, metadata !271, metadata !"xidx", metadata !151, i32 218, metadata !156, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [xidx] [line 218]
!305 = metadata !{i32 786688, metadata !271, metadata !"yidx", metadata !151, i32 218, metadata !156, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [yidx] [line 218]
!306 = metadata !{i32 786688, metadata !271, metadata !"zidx", metadata !151, i32 218, metadata !156, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [zidx] [line 218]
!307 = metadata !{i32 786688, metadata !271, metadata !"norder", metadata !151, i32 219, metadata !156, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [norder] [line 219]
!308 = metadata !{i32 786688, metadata !271, metadata !"norder1", metadata !151, i32 219, metadata !156, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [norder1] [line 219]
!309 = metadata !{i32 786688, metadata !271, metadata !"idxptr", metadata !151, i32 219, metadata !185, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [idxptr] [line 219]
!310 = metadata !{i32 786688, metadata !271, metadata !"ind0", metadata !151, i32 219, metadata !156, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ind0] [line 219]
!311 = metadata !{i32 786688, metadata !271, metadata !"valx", metadata !151, i32 220, metadata !169, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [valx] [line 220]
!312 = metadata !{i32 786688, metadata !271, metadata !"valxy", metadata !151, i32 220, metadata !169, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [valxy] [line 220]
!313 = metadata !{i32 786688, metadata !271, metadata !"qn", metadata !151, i32 220, metadata !169, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [qn] [line 220]
!314 = metadata !{i32 786688, metadata !271, metadata !"thx", metadata !151, i32 221, metadata !204, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [thx] [line 221]
!315 = metadata !{i32 786688, metadata !271, metadata !"thy", metadata !151, i32 221, metadata !204, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [thy] [line 221]
!316 = metadata !{i32 786688, metadata !271, metadata !"thz", metadata !151, i32 221, metadata !204, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [thz] [line 221]
!317 = metadata !{i32 786478, metadata !1, metadata !151, metadata !"solve_pme", metadata !"solve_pme", metadata !"", i32 276, metadata !318, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, float (%struct.t_fftgrid*, float, float, float**, [3 x float]*, [3 x float]*, %struct.t_commrec*)* @solve_pme, null, null, metadata !320, i32 279} ; [ DW_TAG_subprogram ] [line 276] [def] [scope 279] [solve_pme]
!318 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !319, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!319 = metadata !{metadata !169, metadata !247, metadata !169, metadata !169, metadata !274, metadata !167, metadata !167, metadata !217}
!320 = metadata !{metadata !321, metadata !322, metadata !323, metadata !324, metadata !325, metadata !326, metadata !327, metadata !328, metadata !335, metadata !336, metadata !337, metadata !338, metadata !339, metadata !340, metadata !341, metadata !342, metadata !343, metadata !344, metadata !345, metadata !346, metadata !347, metadata !348, metadata !349, metadata !350, metadata !351, metadata !352, metadata !353, metadata !354, metadata !355, metadata !356, metadata !357, metadata !358, metadata !359, metadata !360, metadata !361, metadata !362, metadata !363, metadata !364, metadata !365, metadata !366, metadata !367, metadata !368, metadata !369, metadata !370, metadata !371, metadata !372, metadata !373, metadata !374, metadata !375, metadata !376, metadata !377, metadata !378, metadata !379, metadata !380, metadata !381, metadata !382}
!321 = metadata !{i32 786689, metadata !317, metadata !"grid", metadata !151, i32 16777492, metadata !247, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [grid] [line 276]
!322 = metadata !{i32 786689, metadata !317, metadata !"ewaldcoeff", metadata !151, i32 33554708, metadata !169, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ewaldcoeff] [line 276]
!323 = metadata !{i32 786689, metadata !317, metadata !"vol", metadata !151, i32 50331924, metadata !169, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [vol] [line 276]
!324 = metadata !{i32 786689, metadata !317, metadata !"bsp_mod", metadata !151, i32 67109141, metadata !274, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [bsp_mod] [line 277]
!325 = metadata !{i32 786689, metadata !317, metadata !"recipbox", metadata !151, i32 83886357, metadata !167, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [recipbox] [line 277]
!326 = metadata !{i32 786689, metadata !317, metadata !"vir", metadata !151, i32 100663574, metadata !167, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [vir] [line 278]
!327 = metadata !{i32 786689, metadata !317, metadata !"cr", metadata !151, i32 117440790, metadata !217, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cr] [line 278]
!328 = metadata !{i32 786688, metadata !317, metadata !"ptr", metadata !151, i32 281, metadata !329, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ptr] [line 281]
!329 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !330} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from t_fft_c]
!330 = metadata !{i32 786454, metadata !1, null, metadata !"t_fft_c", i32 57, i64 0, i64 0, i64 0, i32 0, metadata !331} ; [ DW_TAG_typedef ] [t_fft_c] [line 57, size 0, align 0, offset 0] [from ]
!331 = metadata !{i32 786451, metadata !144, null, metadata !"", i32 55, i64 64, i64 32, i32 0, i32 0, null, metadata !332, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 55, size 64, align 32, offset 0] [from ]
!332 = metadata !{metadata !333, metadata !334}
!333 = metadata !{i32 786445, metadata !144, metadata !331, metadata !"re", i32 56, i64 32, i64 32, i64 0, i32 0, metadata !169} ; [ DW_TAG_member ] [re] [line 56, size 32, align 32, offset 0] [from real]
!334 = metadata !{i32 786445, metadata !144, metadata !331, metadata !"im", i32 56, i64 32, i64 32, i64 32, i32 0, metadata !169} ; [ DW_TAG_member ] [im] [line 56, size 32, align 32, offset 32] [from real]
!335 = metadata !{i32 786688, metadata !317, metadata !"p0", metadata !151, i32 281, metadata !329, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [p0] [line 281]
!336 = metadata !{i32 786688, metadata !317, metadata !"nx", metadata !151, i32 282, metadata !156, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nx] [line 282]
!337 = metadata !{i32 786688, metadata !317, metadata !"ny", metadata !151, i32 282, metadata !156, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ny] [line 282]
!338 = metadata !{i32 786688, metadata !317, metadata !"nz", metadata !151, i32 282, metadata !156, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nz] [line 282]
!339 = metadata !{i32 786688, metadata !317, metadata !"la2", metadata !151, i32 282, metadata !156, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [la2] [line 282]
!340 = metadata !{i32 786688, metadata !317, metadata !"la12", metadata !151, i32 282, metadata !156, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [la12] [line 282]
!341 = metadata !{i32 786688, metadata !317, metadata !"kx", metadata !151, i32 283, metadata !156, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [kx] [line 283]
!342 = metadata !{i32 786688, metadata !317, metadata !"ky", metadata !151, i32 283, metadata !156, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ky] [line 283]
!343 = metadata !{i32 786688, metadata !317, metadata !"kz", metadata !151, i32 283, metadata !156, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [kz] [line 283]
!344 = metadata !{i32 786688, metadata !317, metadata !"idx", metadata !151, i32 283, metadata !156, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [idx] [line 283]
!345 = metadata !{i32 786688, metadata !317, metadata !"idx0", metadata !151, i32 283, metadata !156, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [idx0] [line 283]
!346 = metadata !{i32 786688, metadata !317, metadata !"maxkx", metadata !151, i32 283, metadata !156, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [maxkx] [line 283]
!347 = metadata !{i32 786688, metadata !317, metadata !"maxky", metadata !151, i32 283, metadata !156, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [maxky] [line 283]
!348 = metadata !{i32 786688, metadata !317, metadata !"maxkz", metadata !151, i32 283, metadata !156, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [maxkz] [line 283]
!349 = metadata !{i32 786688, metadata !317, metadata !"kystart", metadata !151, i32 283, metadata !156, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [kystart] [line 283]
!350 = metadata !{i32 786688, metadata !317, metadata !"kyend", metadata !151, i32 283, metadata !156, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [kyend] [line 283]
!351 = metadata !{i32 786688, metadata !317, metadata !"m2", metadata !151, i32 284, metadata !169, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [m2] [line 284]
!352 = metadata !{i32 786688, metadata !317, metadata !"mx", metadata !151, i32 284, metadata !169, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [mx] [line 284]
!353 = metadata !{i32 786688, metadata !317, metadata !"my", metadata !151, i32 284, metadata !169, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [my] [line 284]
!354 = metadata !{i32 786688, metadata !317, metadata !"mz", metadata !151, i32 284, metadata !169, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [mz] [line 284]
!355 = metadata !{i32 786688, metadata !317, metadata !"factor", metadata !151, i32 285, metadata !169, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [factor] [line 285]
!356 = metadata !{i32 786688, metadata !317, metadata !"ets2", metadata !151, i32 286, metadata !169, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ets2] [line 286]
!357 = metadata !{i32 786688, metadata !317, metadata !"struct2", metadata !151, i32 286, metadata !169, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [struct2] [line 286]
!358 = metadata !{i32 786688, metadata !317, metadata !"vfactor", metadata !151, i32 286, metadata !169, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [vfactor] [line 286]
!359 = metadata !{i32 786688, metadata !317, metadata !"ets2vf", metadata !151, i32 286, metadata !169, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ets2vf] [line 286]
!360 = metadata !{i32 786688, metadata !317, metadata !"eterm", metadata !151, i32 287, metadata !169, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [eterm] [line 287]
!361 = metadata !{i32 786688, metadata !317, metadata !"d1", metadata !151, i32 287, metadata !169, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [d1] [line 287]
!362 = metadata !{i32 786688, metadata !317, metadata !"d2", metadata !151, i32 287, metadata !169, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [d2] [line 287]
!363 = metadata !{i32 786688, metadata !317, metadata !"energy", metadata !151, i32 287, metadata !169, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [energy] [line 287]
!364 = metadata !{i32 786688, metadata !317, metadata !"denom", metadata !151, i32 288, metadata !169, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [denom] [line 288]
!365 = metadata !{i32 786688, metadata !317, metadata !"bx", metadata !151, i32 289, metadata !169, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [bx] [line 289]
!366 = metadata !{i32 786688, metadata !317, metadata !"by", metadata !151, i32 289, metadata !169, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [by] [line 289]
!367 = metadata !{i32 786688, metadata !317, metadata !"mhx", metadata !151, i32 290, metadata !169, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [mhx] [line 290]
!368 = metadata !{i32 786688, metadata !317, metadata !"mhy", metadata !151, i32 290, metadata !169, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [mhy] [line 290]
!369 = metadata !{i32 786688, metadata !317, metadata !"mhz", metadata !151, i32 290, metadata !169, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [mhz] [line 290]
!370 = metadata !{i32 786688, metadata !317, metadata !"virxx", metadata !151, i32 291, metadata !169, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [virxx] [line 291]
!371 = metadata !{i32 786688, metadata !317, metadata !"virxy", metadata !151, i32 291, metadata !169, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [virxy] [line 291]
!372 = metadata !{i32 786688, metadata !317, metadata !"virxz", metadata !151, i32 291, metadata !169, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [virxz] [line 291]
!373 = metadata !{i32 786688, metadata !317, metadata !"viryy", metadata !151, i32 291, metadata !169, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [viryy] [line 291]
!374 = metadata !{i32 786688, metadata !317, metadata !"viryz", metadata !151, i32 291, metadata !169, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [viryz] [line 291]
!375 = metadata !{i32 786688, metadata !317, metadata !"virzz", metadata !151, i32 291, metadata !169, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [virzz] [line 291]
!376 = metadata !{i32 786688, metadata !317, metadata !"bPar", metadata !151, i32 292, metadata !156, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [bPar] [line 292]
!377 = metadata !{i32 786688, metadata !317, metadata !"rxx", metadata !151, i32 293, metadata !169, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rxx] [line 293]
!378 = metadata !{i32 786688, metadata !317, metadata !"ryx", metadata !151, i32 293, metadata !169, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ryx] [line 293]
!379 = metadata !{i32 786688, metadata !317, metadata !"ryy", metadata !151, i32 293, metadata !169, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ryy] [line 293]
!380 = metadata !{i32 786688, metadata !317, metadata !"rzx", metadata !151, i32 293, metadata !169, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rzx] [line 293]
!381 = metadata !{i32 786688, metadata !317, metadata !"rzy", metadata !151, i32 293, metadata !169, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rzy] [line 293]
!382 = metadata !{i32 786688, metadata !317, metadata !"rzz", metadata !151, i32 293, metadata !169, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rzz] [line 293]
!383 = metadata !{i32 786478, metadata !1, metadata !151, metadata !"gather_f_bsplines", metadata !"gather_f_bsplines", metadata !"", i32 396, metadata !384, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct.t_fftgrid*, [3 x float]*, [3 x i32]*, [3 x float]*, float*, float**, float**, i32, i32, i32*, i32*, i32*)* @gather_f_bsplines, null, null, metadata !386, i32 400} ; [ DW_TAG_subprogram ] [line 396] [def] [scope 400] [gather_f_bsplines]
!384 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !385, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!385 = metadata !{null, metadata !247, metadata !167, metadata !182, metadata !180, metadata !204, metadata !274, metadata !274, metadata !156, metadata !156, metadata !185, metadata !185, metadata !185}
!386 = metadata !{metadata !387, metadata !388, metadata !389, metadata !390, metadata !391, metadata !392, metadata !393, metadata !394, metadata !395, metadata !396, metadata !397, metadata !398, metadata !399, metadata !400, metadata !401, metadata !402, metadata !403, metadata !404, metadata !405, metadata !406, metadata !407, metadata !408, metadata !409, metadata !410, metadata !411, metadata !412, metadata !413, metadata !414, metadata !415, metadata !416, metadata !417, metadata !418, metadata !419, metadata !420, metadata !421, metadata !422, metadata !423, metadata !424, metadata !425, metadata !426, metadata !427, metadata !428, metadata !429, metadata !430, metadata !431, metadata !432, metadata !433, metadata !434, metadata !435, metadata !436, metadata !437, metadata !438, metadata !439, metadata !440, metadata !441, metadata !442, metadata !443, metadata !444, metadata !445, metadata !446, metadata !447, metadata !448, metadata !449, metadata !450, metadata !451, metadata !452, metadata !453, metadata !454}
!387 = metadata !{i32 786689, metadata !383, metadata !"grid", metadata !151, i32 16777612, metadata !247, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [grid] [line 396]
!388 = metadata !{i32 786689, metadata !383, metadata !"recipbox", metadata !151, i32 33554828, metadata !167, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [recipbox] [line 396]
!389 = metadata !{i32 786689, metadata !383, metadata !"idx", metadata !151, i32 50332045, metadata !182, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [idx] [line 397]
!390 = metadata !{i32 786689, metadata !383, metadata !"f", metadata !151, i32 67109261, metadata !180, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [f] [line 397]
!391 = metadata !{i32 786689, metadata !383, metadata !"charge", metadata !151, i32 83886477, metadata !204, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [charge] [line 397]
!392 = metadata !{i32 786689, metadata !383, metadata !"theta", metadata !151, i32 100663693, metadata !274, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [theta] [line 397]
!393 = metadata !{i32 786689, metadata !383, metadata !"dtheta", metadata !151, i32 117440910, metadata !274, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dtheta] [line 398]
!394 = metadata !{i32 786689, metadata !383, metadata !"nr", metadata !151, i32 134218126, metadata !156, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nr] [line 398]
!395 = metadata !{i32 786689, metadata !383, metadata !"order", metadata !151, i32 150995342, metadata !156, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [order] [line 398]
!396 = metadata !{i32 786689, metadata !383, metadata !"nnx", metadata !151, i32 167772559, metadata !185, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nnx] [line 399]
!397 = metadata !{i32 786689, metadata !383, metadata !"nny", metadata !151, i32 184549775, metadata !185, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nny] [line 399]
!398 = metadata !{i32 786689, metadata !383, metadata !"nnz", metadata !151, i32 201326991, metadata !185, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nnz] [line 399]
!399 = metadata !{i32 786688, metadata !383, metadata !"i", metadata !151, i32 402, metadata !156, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 402]
!400 = metadata !{i32 786688, metadata !383, metadata !"j", metadata !151, i32 402, metadata !156, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [j] [line 402]
!401 = metadata !{i32 786688, metadata !383, metadata !"k", metadata !151, i32 402, metadata !156, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [k] [line 402]
!402 = metadata !{i32 786688, metadata !383, metadata !"n", metadata !151, i32 402, metadata !156, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [n] [line 402]
!403 = metadata !{i32 786688, metadata !383, metadata !"i0", metadata !151, i32 402, metadata !185, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i0] [line 402]
!404 = metadata !{i32 786688, metadata !383, metadata !"j0", metadata !151, i32 402, metadata !185, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [j0] [line 402]
!405 = metadata !{i32 786688, metadata !383, metadata !"k0", metadata !151, i32 402, metadata !185, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [k0] [line 402]
!406 = metadata !{i32 786688, metadata !383, metadata !"ii0", metadata !151, i32 402, metadata !185, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ii0] [line 402]
!407 = metadata !{i32 786688, metadata !383, metadata !"jj0", metadata !151, i32 402, metadata !185, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [jj0] [line 402]
!408 = metadata !{i32 786688, metadata !383, metadata !"kk0", metadata !151, i32 402, metadata !185, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [kk0] [line 402]
!409 = metadata !{i32 786688, metadata !383, metadata !"ithx", metadata !151, i32 402, metadata !156, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ithx] [line 402]
!410 = metadata !{i32 786688, metadata !383, metadata !"ithy", metadata !151, i32 402, metadata !156, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ithy] [line 402]
!411 = metadata !{i32 786688, metadata !383, metadata !"ithz", metadata !151, i32 402, metadata !156, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ithz] [line 402]
!412 = metadata !{i32 786688, metadata !383, metadata !"nx", metadata !151, i32 403, metadata !156, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nx] [line 403]
!413 = metadata !{i32 786688, metadata !383, metadata !"ny", metadata !151, i32 403, metadata !156, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ny] [line 403]
!414 = metadata !{i32 786688, metadata !383, metadata !"nz", metadata !151, i32 403, metadata !156, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nz] [line 403]
!415 = metadata !{i32 786688, metadata !383, metadata !"la2", metadata !151, i32 403, metadata !156, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [la2] [line 403]
!416 = metadata !{i32 786688, metadata !383, metadata !"la12", metadata !151, i32 403, metadata !156, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [la12] [line 403]
!417 = metadata !{i32 786688, metadata !383, metadata !"ptr", metadata !151, i32 404, metadata !252, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ptr] [line 404]
!418 = metadata !{i32 786688, metadata !383, metadata !"xidx", metadata !151, i32 405, metadata !156, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [xidx] [line 405]
!419 = metadata !{i32 786688, metadata !383, metadata !"yidx", metadata !151, i32 405, metadata !156, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [yidx] [line 405]
!420 = metadata !{i32 786688, metadata !383, metadata !"zidx", metadata !151, i32 405, metadata !156, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [zidx] [line 405]
!421 = metadata !{i32 786688, metadata !383, metadata !"tx", metadata !151, i32 406, metadata !169, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [tx] [line 406]
!422 = metadata !{i32 786688, metadata !383, metadata !"ty", metadata !151, i32 406, metadata !169, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ty] [line 406]
!423 = metadata !{i32 786688, metadata !383, metadata !"dx", metadata !151, i32 406, metadata !169, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dx] [line 406]
!424 = metadata !{i32 786688, metadata !383, metadata !"dy", metadata !151, i32 406, metadata !169, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dy] [line 406]
!425 = metadata !{i32 786688, metadata !383, metadata !"qn", metadata !151, i32 406, metadata !169, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [qn] [line 406]
!426 = metadata !{i32 786688, metadata !383, metadata !"fx", metadata !151, i32 407, metadata !169, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [fx] [line 407]
!427 = metadata !{i32 786688, metadata !383, metadata !"fy", metadata !151, i32 407, metadata !169, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [fy] [line 407]
!428 = metadata !{i32 786688, metadata !383, metadata !"fz", metadata !151, i32 407, metadata !169, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [fz] [line 407]
!429 = metadata !{i32 786688, metadata !383, metadata !"gval", metadata !151, i32 407, metadata !169, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [gval] [line 407]
!430 = metadata !{i32 786688, metadata !383, metadata !"tgz", metadata !151, i32 407, metadata !169, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [tgz] [line 407]
!431 = metadata !{i32 786688, metadata !383, metadata !"dgz", metadata !151, i32 407, metadata !169, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dgz] [line 407]
!432 = metadata !{i32 786688, metadata !383, metadata !"gval1", metadata !151, i32 408, metadata !169, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [gval1] [line 408]
!433 = metadata !{i32 786688, metadata !383, metadata !"gval2", metadata !151, i32 408, metadata !169, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [gval2] [line 408]
!434 = metadata !{i32 786688, metadata !383, metadata !"gval3", metadata !151, i32 408, metadata !169, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [gval3] [line 408]
!435 = metadata !{i32 786688, metadata !383, metadata !"gval4", metadata !151, i32 408, metadata !169, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [gval4] [line 408]
!436 = metadata !{i32 786688, metadata !383, metadata !"fxy1", metadata !151, i32 409, metadata !169, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [fxy1] [line 409]
!437 = metadata !{i32 786688, metadata !383, metadata !"fz1", metadata !151, i32 409, metadata !169, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [fz1] [line 409]
!438 = metadata !{i32 786688, metadata !383, metadata !"thx", metadata !151, i32 410, metadata !204, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [thx] [line 410]
!439 = metadata !{i32 786688, metadata !383, metadata !"thy", metadata !151, i32 410, metadata !204, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [thy] [line 410]
!440 = metadata !{i32 786688, metadata !383, metadata !"thz", metadata !151, i32 410, metadata !204, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [thz] [line 410]
!441 = metadata !{i32 786688, metadata !383, metadata !"dthx", metadata !151, i32 410, metadata !204, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dthx] [line 410]
!442 = metadata !{i32 786688, metadata !383, metadata !"dthy", metadata !151, i32 410, metadata !204, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dthy] [line 410]
!443 = metadata !{i32 786688, metadata !383, metadata !"dthz", metadata !151, i32 410, metadata !204, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dthz] [line 410]
!444 = metadata !{i32 786688, metadata !383, metadata !"sn", metadata !151, i32 411, metadata !156, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sn] [line 411]
!445 = metadata !{i32 786688, metadata !383, metadata !"norder", metadata !151, i32 411, metadata !156, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [norder] [line 411]
!446 = metadata !{i32 786688, metadata !383, metadata !"norder1", metadata !151, i32 411, metadata !156, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [norder1] [line 411]
!447 = metadata !{i32 786688, metadata !383, metadata !"idxptr", metadata !151, i32 411, metadata !185, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [idxptr] [line 411]
!448 = metadata !{i32 786688, metadata !383, metadata !"ind0", metadata !151, i32 411, metadata !156, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ind0] [line 411]
!449 = metadata !{i32 786688, metadata !383, metadata !"rxx", metadata !151, i32 412, metadata !169, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rxx] [line 412]
!450 = metadata !{i32 786688, metadata !383, metadata !"ryx", metadata !151, i32 412, metadata !169, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ryx] [line 412]
!451 = metadata !{i32 786688, metadata !383, metadata !"ryy", metadata !151, i32 412, metadata !169, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ryy] [line 412]
!452 = metadata !{i32 786688, metadata !383, metadata !"rzx", metadata !151, i32 412, metadata !169, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rzx] [line 412]
!453 = metadata !{i32 786688, metadata !383, metadata !"rzy", metadata !151, i32 412, metadata !169, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rzy] [line 412]
!454 = metadata !{i32 786688, metadata !383, metadata !"rzz", metadata !151, i32 412, metadata !169, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rzz] [line 412]
!455 = metadata !{i32 786478, metadata !1, metadata !151, metadata !"make_bsplines", metadata !"make_bsplines", metadata !"", i32 540, metadata !456, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (float**, float**, i32, i32, i32, i32, [3 x float]*, [3 x i32]*, float*, i32)* @make_bsplines, null, null, metadata !458, i32 542} ; [ DW_TAG_subprogram ] [line 540] [def] [scope 542] [make_bsplines]
!456 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !457, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!457 = metadata !{null, metadata !274, metadata !274, metadata !156, metadata !156, metadata !156, metadata !156, metadata !180, metadata !182, metadata !204, metadata !156}
!458 = metadata !{metadata !459, metadata !460, metadata !461, metadata !462, metadata !463, metadata !464, metadata !465, metadata !466, metadata !467, metadata !468, metadata !469, metadata !470, metadata !471, metadata !472, metadata !473, metadata !474, metadata !475, metadata !476, metadata !477, metadata !478}
!459 = metadata !{i32 786689, metadata !455, metadata !"theta", metadata !151, i32 16777756, metadata !274, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [theta] [line 540]
!460 = metadata !{i32 786689, metadata !455, metadata !"dtheta", metadata !151, i32 33554972, metadata !274, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dtheta] [line 540]
!461 = metadata !{i32 786689, metadata !455, metadata !"order", metadata !151, i32 50332188, metadata !156, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [order] [line 540]
!462 = metadata !{i32 786689, metadata !455, metadata !"nx", metadata !151, i32 67109404, metadata !156, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nx] [line 540]
!463 = metadata !{i32 786689, metadata !455, metadata !"ny", metadata !151, i32 83886620, metadata !156, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ny] [line 540]
!464 = metadata !{i32 786689, metadata !455, metadata !"nz", metadata !151, i32 100663837, metadata !156, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nz] [line 541]
!465 = metadata !{i32 786689, metadata !455, metadata !"fractx", metadata !151, i32 117441053, metadata !180, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fractx] [line 541]
!466 = metadata !{i32 786689, metadata !455, metadata !"idx", metadata !151, i32 134218269, metadata !182, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [idx] [line 541]
!467 = metadata !{i32 786689, metadata !455, metadata !"charge", metadata !151, i32 150995485, metadata !204, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [charge] [line 541]
!468 = metadata !{i32 786689, metadata !455, metadata !"nr", metadata !151, i32 167772701, metadata !156, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nr] [line 541]
!469 = metadata !{i32 786688, metadata !455, metadata !"i", metadata !151, i32 544, metadata !156, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 544]
!470 = metadata !{i32 786688, metadata !455, metadata !"j", metadata !151, i32 544, metadata !156, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [j] [line 544]
!471 = metadata !{i32 786688, metadata !455, metadata !"k", metadata !151, i32 544, metadata !156, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [k] [line 544]
!472 = metadata !{i32 786688, metadata !455, metadata !"l", metadata !151, i32 544, metadata !156, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [l] [line 544]
!473 = metadata !{i32 786688, metadata !455, metadata !"dr", metadata !151, i32 545, metadata !169, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dr] [line 545]
!474 = metadata !{i32 786688, metadata !455, metadata !"div", metadata !151, i32 545, metadata !169, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [div] [line 545]
!475 = metadata !{i32 786688, metadata !455, metadata !"rcons", metadata !151, i32 545, metadata !169, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rcons] [line 545]
!476 = metadata !{i32 786688, metadata !455, metadata !"data", metadata !151, i32 546, metadata !204, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [data] [line 546]
!477 = metadata !{i32 786688, metadata !455, metadata !"ddata", metadata !151, i32 546, metadata !204, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ddata] [line 546]
!478 = metadata !{i32 786688, metadata !455, metadata !"xptr", metadata !151, i32 546, metadata !204, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [xptr] [line 546]
!479 = metadata !{i32 786478, metadata !1, metadata !151, metadata !"make_dft_mod", metadata !"make_dft_mod", metadata !"", i32 586, metadata !480, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (float*, float*, i32)* @make_dft_mod, null, null, metadata !482, i32 587} ; [ DW_TAG_subprogram ] [line 586] [def] [scope 587] [make_dft_mod]
!480 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !481, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!481 = metadata !{null, metadata !204, metadata !204, metadata !156}
!482 = metadata !{metadata !483, metadata !484, metadata !485, metadata !486, metadata !487, metadata !488, metadata !489, metadata !490}
!483 = metadata !{i32 786689, metadata !479, metadata !"mod", metadata !151, i32 16777802, metadata !204, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mod] [line 586]
!484 = metadata !{i32 786689, metadata !479, metadata !"data", metadata !151, i32 33555018, metadata !204, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [data] [line 586]
!485 = metadata !{i32 786689, metadata !479, metadata !"ndata", metadata !151, i32 50332234, metadata !156, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ndata] [line 586]
!486 = metadata !{i32 786688, metadata !479, metadata !"i", metadata !151, i32 588, metadata !156, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 588]
!487 = metadata !{i32 786688, metadata !479, metadata !"j", metadata !151, i32 588, metadata !156, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [j] [line 588]
!488 = metadata !{i32 786688, metadata !479, metadata !"sc", metadata !151, i32 589, metadata !169, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sc] [line 589]
!489 = metadata !{i32 786688, metadata !479, metadata !"ss", metadata !151, i32 589, metadata !169, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ss] [line 589]
!490 = metadata !{i32 786688, metadata !479, metadata !"arg", metadata !151, i32 589, metadata !169, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [arg] [line 589]
!491 = metadata !{i32 786478, metadata !1, metadata !151, metadata !"make_bspline_moduli", metadata !"make_bspline_moduli", metadata !"", i32 607, metadata !492, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (float**, i32, i32, i32, i32)* @make_bspline_moduli, null, null, metadata !494, i32 608} ; [ DW_TAG_subprogram ] [line 607] [def] [scope 608] [make_bspline_moduli]
!492 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !493, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!493 = metadata !{null, metadata !274, metadata !156, metadata !156, metadata !156, metadata !156}
!494 = metadata !{metadata !495, metadata !496, metadata !497, metadata !498, metadata !499, metadata !500, metadata !501, metadata !502, metadata !503, metadata !504, metadata !505, metadata !506, metadata !507}
!495 = metadata !{i32 786689, metadata !491, metadata !"bsp_mod", metadata !151, i32 16777823, metadata !274, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [bsp_mod] [line 607]
!496 = metadata !{i32 786689, metadata !491, metadata !"nx", metadata !151, i32 33555039, metadata !156, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nx] [line 607]
!497 = metadata !{i32 786689, metadata !491, metadata !"ny", metadata !151, i32 50332255, metadata !156, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ny] [line 607]
!498 = metadata !{i32 786689, metadata !491, metadata !"nz", metadata !151, i32 67109471, metadata !156, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nz] [line 607]
!499 = metadata !{i32 786689, metadata !491, metadata !"order", metadata !151, i32 83886687, metadata !156, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [order] [line 607]
!500 = metadata !{i32 786688, metadata !491, metadata !"nmax", metadata !151, i32 609, metadata !156, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nmax] [line 609]
!501 = metadata !{i32 786688, metadata !491, metadata !"data", metadata !151, i32 610, metadata !204, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [data] [line 610]
!502 = metadata !{i32 786688, metadata !491, metadata !"ddata", metadata !151, i32 610, metadata !204, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ddata] [line 610]
!503 = metadata !{i32 786688, metadata !491, metadata !"bsp_data", metadata !151, i32 610, metadata !204, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [bsp_data] [line 610]
!504 = metadata !{i32 786688, metadata !491, metadata !"i", metadata !151, i32 611, metadata !156, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 611]
!505 = metadata !{i32 786688, metadata !491, metadata !"k", metadata !151, i32 611, metadata !156, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [k] [line 611]
!506 = metadata !{i32 786688, metadata !491, metadata !"l", metadata !151, i32 611, metadata !156, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [l] [line 611]
!507 = metadata !{i32 786688, metadata !491, metadata !"div", metadata !151, i32 612, metadata !169, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [div] [line 612]
!508 = metadata !{i32 786478, metadata !1, metadata !151, metadata !"init_pme", metadata !"init_pme", metadata !"", i32 667, metadata !509, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._IO_FILE*, %struct.t_commrec*, i32, i32, i32, i32, i32, i32, i32)* @init_pme, null, null, metadata !566, i32 670} ; [ DW_TAG_subprogram ] [line 667] [def] [scope 670] [init_pme]
!509 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !510, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!510 = metadata !{null, metadata !511, metadata !217, metadata !156, metadata !156, metadata !156, metadata !156, metadata !156, metadata !156, metadata !156}
!511 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !512} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from FILE]
!512 = metadata !{i32 786454, metadata !1, null, metadata !"FILE", i32 48, i64 0, i64 0, i64 0, i32 0, metadata !513} ; [ DW_TAG_typedef ] [FILE] [line 48, size 0, align 0, offset 0] [from _IO_FILE]
!513 = metadata !{i32 786451, metadata !514, null, metadata !"_IO_FILE", i32 245, i64 1728, i64 64, i32 0, i32 0, null, metadata !515, i32 0, null, null} ; [ DW_TAG_structure_type ] [_IO_FILE] [line 245, size 1728, align 64, offset 0] [from ]
!514 = metadata !{metadata !"/usr/include/libio.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!515 = metadata !{metadata !516, metadata !517, metadata !518, metadata !519, metadata !520, metadata !521, metadata !522, metadata !523, metadata !524, metadata !525, metadata !526, metadata !527, metadata !528, metadata !536, metadata !537, metadata !538, metadata !539, metadata !542, metadata !544, metadata !546, metadata !550, metadata !552, metadata !554, metadata !555, metadata !556, metadata !557, metadata !558, metadata !561, metadata !562}
!516 = metadata !{i32 786445, metadata !514, metadata !513, metadata !"_flags", i32 246, i64 32, i64 32, i64 0, i32 0, metadata !156} ; [ DW_TAG_member ] [_flags] [line 246, size 32, align 32, offset 0] [from int]
!517 = metadata !{i32 786445, metadata !514, metadata !513, metadata !"_IO_read_ptr", i32 251, i64 64, i64 64, i64 64, i32 0, metadata !154} ; [ DW_TAG_member ] [_IO_read_ptr] [line 251, size 64, align 64, offset 64] [from ]
!518 = metadata !{i32 786445, metadata !514, metadata !513, metadata !"_IO_read_end", i32 252, i64 64, i64 64, i64 128, i32 0, metadata !154} ; [ DW_TAG_member ] [_IO_read_end] [line 252, size 64, align 64, offset 128] [from ]
!519 = metadata !{i32 786445, metadata !514, metadata !513, metadata !"_IO_read_base", i32 253, i64 64, i64 64, i64 192, i32 0, metadata !154} ; [ DW_TAG_member ] [_IO_read_base] [line 253, size 64, align 64, offset 192] [from ]
!520 = metadata !{i32 786445, metadata !514, metadata !513, metadata !"_IO_write_base", i32 254, i64 64, i64 64, i64 256, i32 0, metadata !154} ; [ DW_TAG_member ] [_IO_write_base] [line 254, size 64, align 64, offset 256] [from ]
!521 = metadata !{i32 786445, metadata !514, metadata !513, metadata !"_IO_write_ptr", i32 255, i64 64, i64 64, i64 320, i32 0, metadata !154} ; [ DW_TAG_member ] [_IO_write_ptr] [line 255, size 64, align 64, offset 320] [from ]
!522 = metadata !{i32 786445, metadata !514, metadata !513, metadata !"_IO_write_end", i32 256, i64 64, i64 64, i64 384, i32 0, metadata !154} ; [ DW_TAG_member ] [_IO_write_end] [line 256, size 64, align 64, offset 384] [from ]
!523 = metadata !{i32 786445, metadata !514, metadata !513, metadata !"_IO_buf_base", i32 257, i64 64, i64 64, i64 448, i32 0, metadata !154} ; [ DW_TAG_member ] [_IO_buf_base] [line 257, size 64, align 64, offset 448] [from ]
!524 = metadata !{i32 786445, metadata !514, metadata !513, metadata !"_IO_buf_end", i32 258, i64 64, i64 64, i64 512, i32 0, metadata !154} ; [ DW_TAG_member ] [_IO_buf_end] [line 258, size 64, align 64, offset 512] [from ]
!525 = metadata !{i32 786445, metadata !514, metadata !513, metadata !"_IO_save_base", i32 260, i64 64, i64 64, i64 576, i32 0, metadata !154} ; [ DW_TAG_member ] [_IO_save_base] [line 260, size 64, align 64, offset 576] [from ]
!526 = metadata !{i32 786445, metadata !514, metadata !513, metadata !"_IO_backup_base", i32 261, i64 64, i64 64, i64 640, i32 0, metadata !154} ; [ DW_TAG_member ] [_IO_backup_base] [line 261, size 64, align 64, offset 640] [from ]
!527 = metadata !{i32 786445, metadata !514, metadata !513, metadata !"_IO_save_end", i32 262, i64 64, i64 64, i64 704, i32 0, metadata !154} ; [ DW_TAG_member ] [_IO_save_end] [line 262, size 64, align 64, offset 704] [from ]
!528 = metadata !{i32 786445, metadata !514, metadata !513, metadata !"_markers", i32 264, i64 64, i64 64, i64 768, i32 0, metadata !529} ; [ DW_TAG_member ] [_markers] [line 264, size 64, align 64, offset 768] [from ]
!529 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !530} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from _IO_marker]
!530 = metadata !{i32 786451, metadata !514, null, metadata !"_IO_marker", i32 160, i64 192, i64 64, i32 0, i32 0, null, metadata !531, i32 0, null, null} ; [ DW_TAG_structure_type ] [_IO_marker] [line 160, size 192, align 64, offset 0] [from ]
!531 = metadata !{metadata !532, metadata !533, metadata !535}
!532 = metadata !{i32 786445, metadata !514, metadata !530, metadata !"_next", i32 161, i64 64, i64 64, i64 0, i32 0, metadata !529} ; [ DW_TAG_member ] [_next] [line 161, size 64, align 64, offset 0] [from ]
!533 = metadata !{i32 786445, metadata !514, metadata !530, metadata !"_sbuf", i32 162, i64 64, i64 64, i64 64, i32 0, metadata !534} ; [ DW_TAG_member ] [_sbuf] [line 162, size 64, align 64, offset 64] [from ]
!534 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !513} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from _IO_FILE]
!535 = metadata !{i32 786445, metadata !514, metadata !530, metadata !"_pos", i32 166, i64 32, i64 32, i64 128, i32 0, metadata !156} ; [ DW_TAG_member ] [_pos] [line 166, size 32, align 32, offset 128] [from int]
!536 = metadata !{i32 786445, metadata !514, metadata !513, metadata !"_chain", i32 266, i64 64, i64 64, i64 832, i32 0, metadata !534} ; [ DW_TAG_member ] [_chain] [line 266, size 64, align 64, offset 832] [from ]
!537 = metadata !{i32 786445, metadata !514, metadata !513, metadata !"_fileno", i32 268, i64 32, i64 32, i64 896, i32 0, metadata !156} ; [ DW_TAG_member ] [_fileno] [line 268, size 32, align 32, offset 896] [from int]
!538 = metadata !{i32 786445, metadata !514, metadata !513, metadata !"_flags2", i32 272, i64 32, i64 32, i64 928, i32 0, metadata !156} ; [ DW_TAG_member ] [_flags2] [line 272, size 32, align 32, offset 928] [from int]
!539 = metadata !{i32 786445, metadata !514, metadata !513, metadata !"_old_offset", i32 274, i64 64, i64 64, i64 960, i32 0, metadata !540} ; [ DW_TAG_member ] [_old_offset] [line 274, size 64, align 64, offset 960] [from __off_t]
!540 = metadata !{i32 786454, metadata !514, null, metadata !"__off_t", i32 131, i64 0, i64 0, i64 0, i32 0, metadata !541} ; [ DW_TAG_typedef ] [__off_t] [line 131, size 0, align 0, offset 0] [from long int]
!541 = metadata !{i32 786468, null, null, metadata !"long int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [long int] [line 0, size 64, align 64, offset 0, enc DW_ATE_signed]
!542 = metadata !{i32 786445, metadata !514, metadata !513, metadata !"_cur_column", i32 278, i64 16, i64 16, i64 1024, i32 0, metadata !543} ; [ DW_TAG_member ] [_cur_column] [line 278, size 16, align 16, offset 1024] [from unsigned short]
!543 = metadata !{i32 786468, null, null, metadata !"unsigned short", i32 0, i64 16, i64 16, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned short] [line 0, size 16, align 16, offset 0, enc DW_ATE_unsigned]
!544 = metadata !{i32 786445, metadata !514, metadata !513, metadata !"_vtable_offset", i32 279, i64 8, i64 8, i64 1040, i32 0, metadata !545} ; [ DW_TAG_member ] [_vtable_offset] [line 279, size 8, align 8, offset 1040] [from signed char]
!545 = metadata !{i32 786468, null, null, metadata !"signed char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [signed char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!546 = metadata !{i32 786445, metadata !514, metadata !513, metadata !"_shortbuf", i32 280, i64 8, i64 8, i64 1048, i32 0, metadata !547} ; [ DW_TAG_member ] [_shortbuf] [line 280, size 8, align 8, offset 1048] [from ]
!547 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 8, i64 8, i32 0, i32 0, metadata !155, metadata !548, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 8, align 8, offset 0] [from char]
!548 = metadata !{metadata !549}
!549 = metadata !{i32 786465, i64 0, i64 1}       ; [ DW_TAG_subrange_type ] [0, 0]
!550 = metadata !{i32 786445, metadata !514, metadata !513, metadata !"_lock", i32 284, i64 64, i64 64, i64 1088, i32 0, metadata !551} ; [ DW_TAG_member ] [_lock] [line 284, size 64, align 64, offset 1088] [from ]
!551 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, null} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!552 = metadata !{i32 786445, metadata !514, metadata !513, metadata !"_offset", i32 293, i64 64, i64 64, i64 1152, i32 0, metadata !553} ; [ DW_TAG_member ] [_offset] [line 293, size 64, align 64, offset 1152] [from __off64_t]
!553 = metadata !{i32 786454, metadata !514, null, metadata !"__off64_t", i32 132, i64 0, i64 0, i64 0, i32 0, metadata !541} ; [ DW_TAG_typedef ] [__off64_t] [line 132, size 0, align 0, offset 0] [from long int]
!554 = metadata !{i32 786445, metadata !514, metadata !513, metadata !"__pad1", i32 302, i64 64, i64 64, i64 1216, i32 0, metadata !551} ; [ DW_TAG_member ] [__pad1] [line 302, size 64, align 64, offset 1216] [from ]
!555 = metadata !{i32 786445, metadata !514, metadata !513, metadata !"__pad2", i32 303, i64 64, i64 64, i64 1280, i32 0, metadata !551} ; [ DW_TAG_member ] [__pad2] [line 303, size 64, align 64, offset 1280] [from ]
!556 = metadata !{i32 786445, metadata !514, metadata !513, metadata !"__pad3", i32 304, i64 64, i64 64, i64 1344, i32 0, metadata !551} ; [ DW_TAG_member ] [__pad3] [line 304, size 64, align 64, offset 1344] [from ]
!557 = metadata !{i32 786445, metadata !514, metadata !513, metadata !"__pad4", i32 305, i64 64, i64 64, i64 1408, i32 0, metadata !551} ; [ DW_TAG_member ] [__pad4] [line 305, size 64, align 64, offset 1408] [from ]
!558 = metadata !{i32 786445, metadata !514, metadata !513, metadata !"__pad5", i32 306, i64 64, i64 64, i64 1472, i32 0, metadata !559} ; [ DW_TAG_member ] [__pad5] [line 306, size 64, align 64, offset 1472] [from size_t]
!559 = metadata !{i32 786454, metadata !514, null, metadata !"size_t", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !560} ; [ DW_TAG_typedef ] [size_t] [line 42, size 0, align 0, offset 0] [from long unsigned int]
!560 = metadata !{i32 786468, null, null, metadata !"long unsigned int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [long unsigned int] [line 0, size 64, align 64, offset 0, enc DW_ATE_unsigned]
!561 = metadata !{i32 786445, metadata !514, metadata !513, metadata !"_mode", i32 308, i64 32, i64 32, i64 1536, i32 0, metadata !156} ; [ DW_TAG_member ] [_mode] [line 308, size 32, align 32, offset 1536] [from int]
!562 = metadata !{i32 786445, metadata !514, metadata !513, metadata !"_unused2", i32 310, i64 160, i64 8, i64 1568, i32 0, metadata !563} ; [ DW_TAG_member ] [_unused2] [line 310, size 160, align 8, offset 1568] [from ]
!563 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 160, i64 8, i32 0, i32 0, metadata !155, metadata !564, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 160, align 8, offset 0] [from char]
!564 = metadata !{metadata !565}
!565 = metadata !{i32 786465, i64 0, i64 20}      ; [ DW_TAG_subrange_type ] [0, 19]
!566 = metadata !{metadata !567, metadata !568, metadata !569, metadata !570, metadata !571, metadata !572, metadata !573, metadata !574, metadata !575, metadata !576, metadata !577}
!567 = metadata !{i32 786689, metadata !508, metadata !"log", metadata !151, i32 16777883, metadata !511, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [log] [line 667]
!568 = metadata !{i32 786689, metadata !508, metadata !"cr", metadata !151, i32 33555099, metadata !217, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cr] [line 667]
!569 = metadata !{i32 786689, metadata !508, metadata !"nkx", metadata !151, i32 50332316, metadata !156, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nkx] [line 668]
!570 = metadata !{i32 786689, metadata !508, metadata !"nky", metadata !151, i32 67109532, metadata !156, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nky] [line 668]
!571 = metadata !{i32 786689, metadata !508, metadata !"nkz", metadata !151, i32 83886748, metadata !156, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nkz] [line 668]
!572 = metadata !{i32 786689, metadata !508, metadata !"pme_order", metadata !151, i32 100663964, metadata !156, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [pme_order] [line 668]
!573 = metadata !{i32 786689, metadata !508, metadata !"homenr", metadata !151, i32 117441180, metadata !156, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [homenr] [line 668]
!574 = metadata !{i32 786689, metadata !508, metadata !"bOptFFT", metadata !151, i32 134218397, metadata !156, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [bOptFFT] [line 669]
!575 = metadata !{i32 786689, metadata !508, metadata !"ewald_geometry", metadata !151, i32 150995613, metadata !156, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ewald_geometry] [line 669]
!576 = metadata !{i32 786688, metadata !508, metadata !"i", metadata !151, i32 671, metadata !156, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 671]
!577 = metadata !{i32 786688, metadata !508, metadata !"bPar", metadata !151, i32 672, metadata !156, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [bPar] [line 672]
!578 = metadata !{i32 786478, metadata !1, metadata !151, metadata !"spread_on_grid", metadata !"spread_on_grid", metadata !"", i32 719, metadata !579, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, %struct.t_fftgrid* (%struct._IO_FILE*, i32, i32, [3 x float]*, float*, [3 x float]*, i32)* @spread_on_grid, null, null, metadata !581, i32 723} ; [ DW_TAG_subprogram ] [line 719] [def] [scope 723] [spread_on_grid]
!579 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !580, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!580 = metadata !{metadata !247, metadata !511, metadata !156, metadata !156, metadata !180, metadata !204, metadata !167, metadata !156}
!581 = metadata !{metadata !582, metadata !583, metadata !584, metadata !585, metadata !586, metadata !587, metadata !588, metadata !589, metadata !590, metadata !591, metadata !592, metadata !593, metadata !594}
!582 = metadata !{i32 786689, metadata !578, metadata !"logfile", metadata !151, i32 16777935, metadata !511, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [logfile] [line 719]
!583 = metadata !{i32 786689, metadata !578, metadata !"homenr", metadata !151, i32 33555151, metadata !156, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [homenr] [line 719]
!584 = metadata !{i32 786689, metadata !578, metadata !"pme_order", metadata !151, i32 50332368, metadata !156, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [pme_order] [line 720]
!585 = metadata !{i32 786689, metadata !578, metadata !"x", metadata !151, i32 67109584, metadata !180, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [x] [line 720]
!586 = metadata !{i32 786689, metadata !578, metadata !"charge", metadata !151, i32 83886801, metadata !204, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [charge] [line 721]
!587 = metadata !{i32 786689, metadata !578, metadata !"box", metadata !151, i32 100664017, metadata !167, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [box] [line 721]
!588 = metadata !{i32 786689, metadata !578, metadata !"bGatherOnly", metadata !151, i32 117441234, metadata !156, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [bGatherOnly] [line 722]
!589 = metadata !{i32 786688, metadata !578, metadata !"nx", metadata !151, i32 724, metadata !156, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nx] [line 724]
!590 = metadata !{i32 786688, metadata !578, metadata !"ny", metadata !151, i32 724, metadata !156, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ny] [line 724]
!591 = metadata !{i32 786688, metadata !578, metadata !"nz", metadata !151, i32 724, metadata !156, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nz] [line 724]
!592 = metadata !{i32 786688, metadata !578, metadata !"la2", metadata !151, i32 724, metadata !156, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [la2] [line 724]
!593 = metadata !{i32 786688, metadata !578, metadata !"la12", metadata !151, i32 724, metadata !156, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [la12] [line 724]
!594 = metadata !{i32 786688, metadata !578, metadata !"ptr", metadata !151, i32 725, metadata !252, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ptr] [line 725]
!595 = metadata !{i32 786478, metadata !1, metadata !151, metadata !"do_pme", metadata !"do_pme", metadata !"", i32 746, metadata !596, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, float (%struct._IO_FILE*, i32, %struct.t_inputrec*, [3 x float]*, [3 x float]*, float*, [3 x float]*, %struct.t_commrec*, %struct.t_nsborder*, %struct.t_nrnb*, [3 x float]*, float, i32)* @do_pme, null, null, metadata !718, i32 753} ; [ DW_TAG_subprogram ] [line 746] [def] [scope 753] [do_pme]
!596 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !597, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!597 = metadata !{metadata !169, metadata !511, metadata !156, metadata !598, metadata !180, metadata !180, metadata !204, metadata !167, metadata !217, metadata !228, metadata !709, metadata !167, metadata !169, metadata !156}
!598 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !599} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from t_inputrec]
!599 = metadata !{i32 786454, metadata !1, null, metadata !"t_inputrec", i32 143, i64 0, i64 0, i64 0, i32 0, metadata !600} ; [ DW_TAG_typedef ] [t_inputrec] [line 143, size 0, align 0, offset 0] [from ]
!600 = metadata !{i32 786451, metadata !601, null, metadata !"", i32 55, i64 4736, i64 64, i32 0, i32 0, null, metadata !602, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 55, size 4736, align 64, offset 0] [from ]
!601 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/435.gromacs/src/types/inputrec.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!602 = metadata !{metadata !603, metadata !604, metadata !605, metadata !606, metadata !607, metadata !608, metadata !609, metadata !610, metadata !611, metadata !612, metadata !613, metadata !614, metadata !615, metadata !616, metadata !617, metadata !618, metadata !619, metadata !620, metadata !621, metadata !622, metadata !623, metadata !624, metadata !625, metadata !626, metadata !627, metadata !628, metadata !629, metadata !630, metadata !631, metadata !632, metadata !633, metadata !634, metadata !638, metadata !639, metadata !640, metadata !641, metadata !642, metadata !643, metadata !644, metadata !645, metadata !646, metadata !647, metadata !648, metadata !649, metadata !650, metadata !651, metadata !652, metadata !653, metadata !654, metadata !655, metadata !656, metadata !657, metadata !658, metadata !659, metadata !660, metadata !661, metadata !662, metadata !663, metadata !664, metadata !665, metadata !666, metadata !667, metadata !668, metadata !669, metadata !670, metadata !671, metadata !672, metadata !673, metadata !674, metadata !675, metadata !676, metadata !677, metadata !678, metadata !679, metadata !680, metadata !681, metadata !682, metadata !683, metadata !684, metadata !685, metadata !686, metadata !700, metadata !708}
!603 = metadata !{i32 786445, metadata !601, metadata !600, metadata !"eI", i32 56, i64 32, i64 32, i64 0, i32 0, metadata !156} ; [ DW_TAG_member ] [eI] [line 56, size 32, align 32, offset 0] [from int]
!604 = metadata !{i32 786445, metadata !601, metadata !600, metadata !"nsteps", i32 57, i64 32, i64 32, i64 32, i32 0, metadata !156} ; [ DW_TAG_member ] [nsteps] [line 57, size 32, align 32, offset 32] [from int]
!605 = metadata !{i32 786445, metadata !601, metadata !600, metadata !"ns_type", i32 58, i64 32, i64 32, i64 64, i32 0, metadata !156} ; [ DW_TAG_member ] [ns_type] [line 58, size 32, align 32, offset 64] [from int]
!606 = metadata !{i32 786445, metadata !601, metadata !600, metadata !"nstlist", i32 59, i64 32, i64 32, i64 96, i32 0, metadata !156} ; [ DW_TAG_member ] [nstlist] [line 59, size 32, align 32, offset 96] [from int]
!607 = metadata !{i32 786445, metadata !601, metadata !600, metadata !"ndelta", i32 60, i64 32, i64 32, i64 128, i32 0, metadata !156} ; [ DW_TAG_member ] [ndelta] [line 60, size 32, align 32, offset 128] [from int]
!608 = metadata !{i32 786445, metadata !601, metadata !600, metadata !"bDomDecomp", i32 61, i64 32, i64 32, i64 160, i32 0, metadata !156} ; [ DW_TAG_member ] [bDomDecomp] [line 61, size 32, align 32, offset 160] [from int]
!609 = metadata !{i32 786445, metadata !601, metadata !600, metadata !"decomp_dir", i32 62, i64 32, i64 32, i64 192, i32 0, metadata !156} ; [ DW_TAG_member ] [decomp_dir] [line 62, size 32, align 32, offset 192] [from int]
!610 = metadata !{i32 786445, metadata !601, metadata !600, metadata !"nstcomm", i32 63, i64 32, i64 32, i64 224, i32 0, metadata !156} ; [ DW_TAG_member ] [nstcomm] [line 63, size 32, align 32, offset 224] [from int]
!611 = metadata !{i32 786445, metadata !601, metadata !600, metadata !"nstlog", i32 65, i64 32, i64 32, i64 256, i32 0, metadata !156} ; [ DW_TAG_member ] [nstlog] [line 65, size 32, align 32, offset 256] [from int]
!612 = metadata !{i32 786445, metadata !601, metadata !600, metadata !"nstxout", i32 66, i64 32, i64 32, i64 288, i32 0, metadata !156} ; [ DW_TAG_member ] [nstxout] [line 66, size 32, align 32, offset 288] [from int]
!613 = metadata !{i32 786445, metadata !601, metadata !600, metadata !"nstvout", i32 67, i64 32, i64 32, i64 320, i32 0, metadata !156} ; [ DW_TAG_member ] [nstvout] [line 67, size 32, align 32, offset 320] [from int]
!614 = metadata !{i32 786445, metadata !601, metadata !600, metadata !"nstfout", i32 68, i64 32, i64 32, i64 352, i32 0, metadata !156} ; [ DW_TAG_member ] [nstfout] [line 68, size 32, align 32, offset 352] [from int]
!615 = metadata !{i32 786445, metadata !601, metadata !600, metadata !"nstenergy", i32 69, i64 32, i64 32, i64 384, i32 0, metadata !156} ; [ DW_TAG_member ] [nstenergy] [line 69, size 32, align 32, offset 384] [from int]
!616 = metadata !{i32 786445, metadata !601, metadata !600, metadata !"nstxtcout", i32 70, i64 32, i64 32, i64 416, i32 0, metadata !156} ; [ DW_TAG_member ] [nstxtcout] [line 70, size 32, align 32, offset 416] [from int]
!617 = metadata !{i32 786445, metadata !601, metadata !600, metadata !"init_t", i32 71, i64 32, i64 32, i64 448, i32 0, metadata !169} ; [ DW_TAG_member ] [init_t] [line 71, size 32, align 32, offset 448] [from real]
!618 = metadata !{i32 786445, metadata !601, metadata !600, metadata !"delta_t", i32 72, i64 32, i64 32, i64 480, i32 0, metadata !169} ; [ DW_TAG_member ] [delta_t] [line 72, size 32, align 32, offset 480] [from real]
!619 = metadata !{i32 786445, metadata !601, metadata !600, metadata !"xtcprec", i32 73, i64 32, i64 32, i64 512, i32 0, metadata !169} ; [ DW_TAG_member ] [xtcprec] [line 73, size 32, align 32, offset 512] [from real]
!620 = metadata !{i32 786445, metadata !601, metadata !600, metadata !"nkx", i32 74, i64 32, i64 32, i64 544, i32 0, metadata !156} ; [ DW_TAG_member ] [nkx] [line 74, size 32, align 32, offset 544] [from int]
!621 = metadata !{i32 786445, metadata !601, metadata !600, metadata !"nky", i32 74, i64 32, i64 32, i64 576, i32 0, metadata !156} ; [ DW_TAG_member ] [nky] [line 74, size 32, align 32, offset 576] [from int]
!622 = metadata !{i32 786445, metadata !601, metadata !600, metadata !"nkz", i32 74, i64 32, i64 32, i64 608, i32 0, metadata !156} ; [ DW_TAG_member ] [nkz] [line 74, size 32, align 32, offset 608] [from int]
!623 = metadata !{i32 786445, metadata !601, metadata !600, metadata !"pme_order", i32 76, i64 32, i64 32, i64 640, i32 0, metadata !156} ; [ DW_TAG_member ] [pme_order] [line 76, size 32, align 32, offset 640] [from int]
!624 = metadata !{i32 786445, metadata !601, metadata !600, metadata !"ewald_rtol", i32 77, i64 32, i64 32, i64 672, i32 0, metadata !169} ; [ DW_TAG_member ] [ewald_rtol] [line 77, size 32, align 32, offset 672] [from real]
!625 = metadata !{i32 786445, metadata !601, metadata !600, metadata !"ewald_geometry", i32 79, i64 32, i64 32, i64 704, i32 0, metadata !156} ; [ DW_TAG_member ] [ewald_geometry] [line 79, size 32, align 32, offset 704] [from int]
!626 = metadata !{i32 786445, metadata !601, metadata !600, metadata !"epsilon_surface", i32 80, i64 32, i64 32, i64 736, i32 0, metadata !156} ; [ DW_TAG_member ] [epsilon_surface] [line 80, size 32, align 32, offset 736] [from int]
!627 = metadata !{i32 786445, metadata !601, metadata !600, metadata !"bOptFFT", i32 81, i64 32, i64 32, i64 768, i32 0, metadata !156} ; [ DW_TAG_member ] [bOptFFT] [line 81, size 32, align 32, offset 768] [from int]
!628 = metadata !{i32 786445, metadata !601, metadata !600, metadata !"ePBC", i32 82, i64 32, i64 32, i64 800, i32 0, metadata !156} ; [ DW_TAG_member ] [ePBC] [line 82, size 32, align 32, offset 800] [from int]
!629 = metadata !{i32 786445, metadata !601, metadata !600, metadata !"bUncStart", i32 83, i64 32, i64 32, i64 832, i32 0, metadata !156} ; [ DW_TAG_member ] [bUncStart] [line 83, size 32, align 32, offset 832] [from int]
!630 = metadata !{i32 786445, metadata !601, metadata !600, metadata !"etc", i32 84, i64 32, i64 32, i64 864, i32 0, metadata !156} ; [ DW_TAG_member ] [etc] [line 84, size 32, align 32, offset 864] [from int]
!631 = metadata !{i32 786445, metadata !601, metadata !600, metadata !"epc", i32 85, i64 32, i64 32, i64 896, i32 0, metadata !156} ; [ DW_TAG_member ] [epc] [line 85, size 32, align 32, offset 896] [from int]
!632 = metadata !{i32 786445, metadata !601, metadata !600, metadata !"epct", i32 86, i64 32, i64 32, i64 928, i32 0, metadata !156} ; [ DW_TAG_member ] [epct] [line 86, size 32, align 32, offset 928] [from int]
!633 = metadata !{i32 786445, metadata !601, metadata !600, metadata !"tau_p", i32 87, i64 32, i64 32, i64 960, i32 0, metadata !169} ; [ DW_TAG_member ] [tau_p] [line 87, size 32, align 32, offset 960] [from real]
!634 = metadata !{i32 786445, metadata !601, metadata !600, metadata !"ref_p", i32 88, i64 288, i64 32, i64 992, i32 0, metadata !635} ; [ DW_TAG_member ] [ref_p] [line 88, size 288, align 32, offset 992] [from tensor]
!635 = metadata !{i32 786454, metadata !601, null, metadata !"tensor", i32 105, i64 0, i64 0, i64 0, i32 0, metadata !636} ; [ DW_TAG_typedef ] [tensor] [line 105, size 0, align 0, offset 0] [from ]
!636 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 288, i64 32, i32 0, i32 0, metadata !169, metadata !637, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 288, align 32, offset 0] [from real]
!637 = metadata !{metadata !172, metadata !172}
!638 = metadata !{i32 786445, metadata !601, metadata !600, metadata !"compress", i32 89, i64 288, i64 32, i64 1280, i32 0, metadata !635} ; [ DW_TAG_member ] [compress] [line 89, size 288, align 32, offset 1280] [from tensor]
!639 = metadata !{i32 786445, metadata !601, metadata !600, metadata !"bSimAnn", i32 90, i64 32, i64 32, i64 1568, i32 0, metadata !156} ; [ DW_TAG_member ] [bSimAnn] [line 90, size 32, align 32, offset 1568] [from int]
!640 = metadata !{i32 786445, metadata !601, metadata !600, metadata !"zero_temp_time", i32 91, i64 32, i64 32, i64 1600, i32 0, metadata !169} ; [ DW_TAG_member ] [zero_temp_time] [line 91, size 32, align 32, offset 1600] [from real]
!641 = metadata !{i32 786445, metadata !601, metadata !600, metadata !"rlist", i32 92, i64 32, i64 32, i64 1632, i32 0, metadata !169} ; [ DW_TAG_member ] [rlist] [line 92, size 32, align 32, offset 1632] [from real]
!642 = metadata !{i32 786445, metadata !601, metadata !600, metadata !"coulombtype", i32 93, i64 32, i64 32, i64 1664, i32 0, metadata !156} ; [ DW_TAG_member ] [coulombtype] [line 93, size 32, align 32, offset 1664] [from int]
!643 = metadata !{i32 786445, metadata !601, metadata !600, metadata !"rcoulomb_switch", i32 94, i64 32, i64 32, i64 1696, i32 0, metadata !169} ; [ DW_TAG_member ] [rcoulomb_switch] [line 94, size 32, align 32, offset 1696] [from real]
!644 = metadata !{i32 786445, metadata !601, metadata !600, metadata !"rcoulomb", i32 95, i64 32, i64 32, i64 1728, i32 0, metadata !169} ; [ DW_TAG_member ] [rcoulomb] [line 95, size 32, align 32, offset 1728] [from real]
!645 = metadata !{i32 786445, metadata !601, metadata !600, metadata !"vdwtype", i32 96, i64 32, i64 32, i64 1760, i32 0, metadata !156} ; [ DW_TAG_member ] [vdwtype] [line 96, size 32, align 32, offset 1760] [from int]
!646 = metadata !{i32 786445, metadata !601, metadata !600, metadata !"rvdw_switch", i32 97, i64 32, i64 32, i64 1792, i32 0, metadata !169} ; [ DW_TAG_member ] [rvdw_switch] [line 97, size 32, align 32, offset 1792] [from real]
!647 = metadata !{i32 786445, metadata !601, metadata !600, metadata !"rvdw", i32 98, i64 32, i64 32, i64 1824, i32 0, metadata !169} ; [ DW_TAG_member ] [rvdw] [line 98, size 32, align 32, offset 1824] [from real]
!648 = metadata !{i32 786445, metadata !601, metadata !600, metadata !"epsilon_r", i32 99, i64 32, i64 32, i64 1856, i32 0, metadata !169} ; [ DW_TAG_member ] [epsilon_r] [line 99, size 32, align 32, offset 1856] [from real]
!649 = metadata !{i32 786445, metadata !601, metadata !600, metadata !"eDispCorr", i32 100, i64 32, i64 32, i64 1888, i32 0, metadata !156} ; [ DW_TAG_member ] [eDispCorr] [line 100, size 32, align 32, offset 1888] [from int]
!650 = metadata !{i32 786445, metadata !601, metadata !600, metadata !"shake_tol", i32 101, i64 32, i64 32, i64 1920, i32 0, metadata !169} ; [ DW_TAG_member ] [shake_tol] [line 101, size 32, align 32, offset 1920] [from real]
!651 = metadata !{i32 786445, metadata !601, metadata !600, metadata !"fudgeQQ", i32 102, i64 32, i64 32, i64 1952, i32 0, metadata !169} ; [ DW_TAG_member ] [fudgeQQ] [line 102, size 32, align 32, offset 1952] [from real]
!652 = metadata !{i32 786445, metadata !601, metadata !600, metadata !"efep", i32 103, i64 32, i64 32, i64 1984, i32 0, metadata !156} ; [ DW_TAG_member ] [efep] [line 103, size 32, align 32, offset 1984] [from int]
!653 = metadata !{i32 786445, metadata !601, metadata !600, metadata !"init_lambda", i32 104, i64 32, i64 32, i64 2016, i32 0, metadata !169} ; [ DW_TAG_member ] [init_lambda] [line 104, size 32, align 32, offset 2016] [from real]
!654 = metadata !{i32 786445, metadata !601, metadata !600, metadata !"delta_lambda", i32 105, i64 32, i64 32, i64 2048, i32 0, metadata !169} ; [ DW_TAG_member ] [delta_lambda] [line 105, size 32, align 32, offset 2048] [from real]
!655 = metadata !{i32 786445, metadata !601, metadata !600, metadata !"sc_alpha", i32 106, i64 32, i64 32, i64 2080, i32 0, metadata !169} ; [ DW_TAG_member ] [sc_alpha] [line 106, size 32, align 32, offset 2080] [from real]
!656 = metadata !{i32 786445, metadata !601, metadata !600, metadata !"sc_sigma", i32 107, i64 32, i64 32, i64 2112, i32 0, metadata !169} ; [ DW_TAG_member ] [sc_sigma] [line 107, size 32, align 32, offset 2112] [from real]
!657 = metadata !{i32 786445, metadata !601, metadata !600, metadata !"dr_fc", i32 108, i64 32, i64 32, i64 2144, i32 0, metadata !169} ; [ DW_TAG_member ] [dr_fc] [line 108, size 32, align 32, offset 2144] [from real]
!658 = metadata !{i32 786445, metadata !601, metadata !600, metadata !"eDisreWeighting", i32 109, i64 32, i64 32, i64 2176, i32 0, metadata !156} ; [ DW_TAG_member ] [eDisreWeighting] [line 109, size 32, align 32, offset 2176] [from int]
!659 = metadata !{i32 786445, metadata !601, metadata !600, metadata !"bDisreMixed", i32 110, i64 32, i64 32, i64 2208, i32 0, metadata !156} ; [ DW_TAG_member ] [bDisreMixed] [line 110, size 32, align 32, offset 2208] [from int]
!660 = metadata !{i32 786445, metadata !601, metadata !600, metadata !"nstdisreout", i32 111, i64 32, i64 32, i64 2240, i32 0, metadata !156} ; [ DW_TAG_member ] [nstdisreout] [line 111, size 32, align 32, offset 2240] [from int]
!661 = metadata !{i32 786445, metadata !601, metadata !600, metadata !"dr_tau", i32 112, i64 32, i64 32, i64 2272, i32 0, metadata !169} ; [ DW_TAG_member ] [dr_tau] [line 112, size 32, align 32, offset 2272] [from real]
!662 = metadata !{i32 786445, metadata !601, metadata !600, metadata !"orires_fc", i32 113, i64 32, i64 32, i64 2304, i32 0, metadata !169} ; [ DW_TAG_member ] [orires_fc] [line 113, size 32, align 32, offset 2304] [from real]
!663 = metadata !{i32 786445, metadata !601, metadata !600, metadata !"orires_tau", i32 114, i64 32, i64 32, i64 2336, i32 0, metadata !169} ; [ DW_TAG_member ] [orires_tau] [line 114, size 32, align 32, offset 2336] [from real]
!664 = metadata !{i32 786445, metadata !601, metadata !600, metadata !"nstorireout", i32 115, i64 32, i64 32, i64 2368, i32 0, metadata !156} ; [ DW_TAG_member ] [nstorireout] [line 115, size 32, align 32, offset 2368] [from int]
!665 = metadata !{i32 786445, metadata !601, metadata !600, metadata !"em_stepsize", i32 116, i64 32, i64 32, i64 2400, i32 0, metadata !169} ; [ DW_TAG_member ] [em_stepsize] [line 116, size 32, align 32, offset 2400] [from real]
!666 = metadata !{i32 786445, metadata !601, metadata !600, metadata !"em_tol", i32 117, i64 32, i64 32, i64 2432, i32 0, metadata !169} ; [ DW_TAG_member ] [em_tol] [line 117, size 32, align 32, offset 2432] [from real]
!667 = metadata !{i32 786445, metadata !601, metadata !600, metadata !"niter", i32 118, i64 32, i64 32, i64 2464, i32 0, metadata !156} ; [ DW_TAG_member ] [niter] [line 118, size 32, align 32, offset 2464] [from int]
!668 = metadata !{i32 786445, metadata !601, metadata !600, metadata !"fc_stepsize", i32 120, i64 32, i64 32, i64 2496, i32 0, metadata !156} ; [ DW_TAG_member ] [fc_stepsize] [line 120, size 32, align 32, offset 2496] [from int]
!669 = metadata !{i32 786445, metadata !601, metadata !600, metadata !"nstcgsteep", i32 122, i64 32, i64 32, i64 2528, i32 0, metadata !156} ; [ DW_TAG_member ] [nstcgsteep] [line 122, size 32, align 32, offset 2528] [from int]
!670 = metadata !{i32 786445, metadata !601, metadata !600, metadata !"eConstrAlg", i32 124, i64 32, i64 32, i64 2560, i32 0, metadata !156} ; [ DW_TAG_member ] [eConstrAlg] [line 124, size 32, align 32, offset 2560] [from int]
!671 = metadata !{i32 786445, metadata !601, metadata !600, metadata !"nProjOrder", i32 125, i64 32, i64 32, i64 2592, i32 0, metadata !156} ; [ DW_TAG_member ] [nProjOrder] [line 125, size 32, align 32, offset 2592] [from int]
!672 = metadata !{i32 786445, metadata !601, metadata !600, metadata !"LincsWarnAngle", i32 126, i64 32, i64 32, i64 2624, i32 0, metadata !169} ; [ DW_TAG_member ] [LincsWarnAngle] [line 126, size 32, align 32, offset 2624] [from real]
!673 = metadata !{i32 786445, metadata !601, metadata !600, metadata !"bShakeSOR", i32 127, i64 32, i64 32, i64 2656, i32 0, metadata !156} ; [ DW_TAG_member ] [bShakeSOR] [line 127, size 32, align 32, offset 2656] [from int]
!674 = metadata !{i32 786445, metadata !601, metadata !600, metadata !"bd_temp", i32 128, i64 32, i64 32, i64 2688, i32 0, metadata !169} ; [ DW_TAG_member ] [bd_temp] [line 128, size 32, align 32, offset 2688] [from real]
!675 = metadata !{i32 786445, metadata !601, metadata !600, metadata !"bd_fric", i32 129, i64 32, i64 32, i64 2720, i32 0, metadata !169} ; [ DW_TAG_member ] [bd_fric] [line 129, size 32, align 32, offset 2720] [from real]
!676 = metadata !{i32 786445, metadata !601, metadata !600, metadata !"ld_seed", i32 130, i64 32, i64 32, i64 2752, i32 0, metadata !156} ; [ DW_TAG_member ] [ld_seed] [line 130, size 32, align 32, offset 2752] [from int]
!677 = metadata !{i32 786445, metadata !601, metadata !600, metadata !"cos_accel", i32 131, i64 32, i64 32, i64 2784, i32 0, metadata !169} ; [ DW_TAG_member ] [cos_accel] [line 131, size 32, align 32, offset 2784] [from real]
!678 = metadata !{i32 786445, metadata !601, metadata !600, metadata !"userint1", i32 132, i64 32, i64 32, i64 2816, i32 0, metadata !156} ; [ DW_TAG_member ] [userint1] [line 132, size 32, align 32, offset 2816] [from int]
!679 = metadata !{i32 786445, metadata !601, metadata !600, metadata !"userint2", i32 133, i64 32, i64 32, i64 2848, i32 0, metadata !156} ; [ DW_TAG_member ] [userint2] [line 133, size 32, align 32, offset 2848] [from int]
!680 = metadata !{i32 786445, metadata !601, metadata !600, metadata !"userint3", i32 134, i64 32, i64 32, i64 2880, i32 0, metadata !156} ; [ DW_TAG_member ] [userint3] [line 134, size 32, align 32, offset 2880] [from int]
!681 = metadata !{i32 786445, metadata !601, metadata !600, metadata !"userint4", i32 135, i64 32, i64 32, i64 2912, i32 0, metadata !156} ; [ DW_TAG_member ] [userint4] [line 135, size 32, align 32, offset 2912] [from int]
!682 = metadata !{i32 786445, metadata !601, metadata !600, metadata !"userreal1", i32 136, i64 32, i64 32, i64 2944, i32 0, metadata !169} ; [ DW_TAG_member ] [userreal1] [line 136, size 32, align 32, offset 2944] [from real]
!683 = metadata !{i32 786445, metadata !601, metadata !600, metadata !"userreal2", i32 137, i64 32, i64 32, i64 2976, i32 0, metadata !169} ; [ DW_TAG_member ] [userreal2] [line 137, size 32, align 32, offset 2976] [from real]
!684 = metadata !{i32 786445, metadata !601, metadata !600, metadata !"userreal3", i32 138, i64 32, i64 32, i64 3008, i32 0, metadata !169} ; [ DW_TAG_member ] [userreal3] [line 138, size 32, align 32, offset 3008] [from real]
!685 = metadata !{i32 786445, metadata !601, metadata !600, metadata !"userreal4", i32 139, i64 32, i64 32, i64 3040, i32 0, metadata !169} ; [ DW_TAG_member ] [userreal4] [line 139, size 32, align 32, offset 3040] [from real]
!686 = metadata !{i32 786445, metadata !601, metadata !600, metadata !"opts", i32 140, i64 512, i64 64, i64 3072, i32 0, metadata !687} ; [ DW_TAG_member ] [opts] [line 140, size 512, align 64, offset 3072] [from t_grpopts]
!687 = metadata !{i32 786454, metadata !601, null, metadata !"t_grpopts", i32 53, i64 0, i64 0, i64 0, i32 0, metadata !688} ; [ DW_TAG_typedef ] [t_grpopts] [line 53, size 0, align 0, offset 0] [from ]
!688 = metadata !{i32 786451, metadata !601, null, metadata !"", i32 42, i64 512, i64 64, i32 0, i32 0, null, metadata !689, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 42, size 512, align 64, offset 0] [from ]
!689 = metadata !{metadata !690, metadata !691, metadata !692, metadata !693, metadata !694, metadata !695, metadata !696, metadata !697, metadata !698, metadata !699}
!690 = metadata !{i32 786445, metadata !601, metadata !688, metadata !"ngtc", i32 43, i64 32, i64 32, i64 0, i32 0, metadata !156} ; [ DW_TAG_member ] [ngtc] [line 43, size 32, align 32, offset 0] [from int]
!691 = metadata !{i32 786445, metadata !601, metadata !688, metadata !"ngacc", i32 44, i64 32, i64 32, i64 32, i32 0, metadata !156} ; [ DW_TAG_member ] [ngacc] [line 44, size 32, align 32, offset 32] [from int]
!692 = metadata !{i32 786445, metadata !601, metadata !688, metadata !"ngfrz", i32 45, i64 32, i64 32, i64 64, i32 0, metadata !156} ; [ DW_TAG_member ] [ngfrz] [line 45, size 32, align 32, offset 64] [from int]
!693 = metadata !{i32 786445, metadata !601, metadata !688, metadata !"ngener", i32 46, i64 32, i64 32, i64 96, i32 0, metadata !156} ; [ DW_TAG_member ] [ngener] [line 46, size 32, align 32, offset 96] [from int]
!694 = metadata !{i32 786445, metadata !601, metadata !688, metadata !"nrdf", i32 47, i64 64, i64 64, i64 128, i32 0, metadata !204} ; [ DW_TAG_member ] [nrdf] [line 47, size 64, align 64, offset 128] [from ]
!695 = metadata !{i32 786445, metadata !601, metadata !688, metadata !"ref_t", i32 48, i64 64, i64 64, i64 192, i32 0, metadata !204} ; [ DW_TAG_member ] [ref_t] [line 48, size 64, align 64, offset 192] [from ]
!696 = metadata !{i32 786445, metadata !601, metadata !688, metadata !"tau_t", i32 49, i64 64, i64 64, i64 256, i32 0, metadata !204} ; [ DW_TAG_member ] [tau_t] [line 49, size 64, align 64, offset 256] [from ]
!697 = metadata !{i32 786445, metadata !601, metadata !688, metadata !"acc", i32 50, i64 64, i64 64, i64 320, i32 0, metadata !180} ; [ DW_TAG_member ] [acc] [line 50, size 64, align 64, offset 320] [from ]
!698 = metadata !{i32 786445, metadata !601, metadata !688, metadata !"nFreeze", i32 51, i64 64, i64 64, i64 384, i32 0, metadata !182} ; [ DW_TAG_member ] [nFreeze] [line 51, size 64, align 64, offset 384] [from ]
!699 = metadata !{i32 786445, metadata !601, metadata !688, metadata !"eg_excl", i32 52, i64 64, i64 64, i64 448, i32 0, metadata !185} ; [ DW_TAG_member ] [eg_excl] [line 52, size 64, align 64, offset 448] [from ]
!700 = metadata !{i32 786445, metadata !601, metadata !600, metadata !"ex", i32 141, i64 576, i64 64, i64 3584, i32 0, metadata !701} ; [ DW_TAG_member ] [ex] [line 141, size 576, align 64, offset 3584] [from ]
!701 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 576, i64 64, i32 0, i32 0, metadata !702, metadata !171, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 576, align 64, offset 0] [from t_cosines]
!702 = metadata !{i32 786454, metadata !601, null, metadata !"t_cosines", i32 40, i64 0, i64 0, i64 0, i32 0, metadata !703} ; [ DW_TAG_typedef ] [t_cosines] [line 40, size 0, align 0, offset 0] [from ]
!703 = metadata !{i32 786451, metadata !601, null, metadata !"", i32 36, i64 192, i64 64, i32 0, i32 0, null, metadata !704, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 36, size 192, align 64, offset 0] [from ]
!704 = metadata !{metadata !705, metadata !706, metadata !707}
!705 = metadata !{i32 786445, metadata !601, metadata !703, metadata !"n", i32 37, i64 32, i64 32, i64 0, i32 0, metadata !156} ; [ DW_TAG_member ] [n] [line 37, size 32, align 32, offset 0] [from int]
!706 = metadata !{i32 786445, metadata !601, metadata !703, metadata !"a", i32 38, i64 64, i64 64, i64 64, i32 0, metadata !204} ; [ DW_TAG_member ] [a] [line 38, size 64, align 64, offset 64] [from ]
!707 = metadata !{i32 786445, metadata !601, metadata !703, metadata !"phi", i32 39, i64 64, i64 64, i64 128, i32 0, metadata !204} ; [ DW_TAG_member ] [phi] [line 39, size 64, align 64, offset 128] [from ]
!708 = metadata !{i32 786445, metadata !601, metadata !600, metadata !"et", i32 142, i64 576, i64 64, i64 4160, i32 0, metadata !701} ; [ DW_TAG_member ] [et] [line 142, size 576, align 64, offset 4160] [from ]
!709 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !710} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from t_nrnb]
!710 = metadata !{i32 786454, metadata !1, null, metadata !"t_nrnb", i32 95, i64 0, i64 0, i64 0, i32 0, metadata !711} ; [ DW_TAG_typedef ] [t_nrnb] [line 95, size 0, align 0, offset 0] [from ]
!711 = metadata !{i32 786451, metadata !10, null, metadata !"", i32 93, i64 8256, i64 64, i32 0, i32 0, null, metadata !712, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 93, size 8256, align 64, offset 0] [from ]
!712 = metadata !{metadata !713}
!713 = metadata !{i32 786445, metadata !10, metadata !711, metadata !"n", i32 94, i64 8256, i64 64, i64 0, i32 0, metadata !714} ; [ DW_TAG_member ] [n] [line 94, size 8256, align 64, offset 0] [from ]
!714 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 8256, i64 64, i32 0, i32 0, metadata !715, metadata !716, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 8256, align 64, offset 0] [from double]
!715 = metadata !{i32 786468, null, null, metadata !"double", i32 0, i64 64, i64 64, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [double] [line 0, size 64, align 64, offset 0, enc DW_ATE_float]
!716 = metadata !{metadata !717}
!717 = metadata !{i32 786465, i64 0, i64 129}     ; [ DW_TAG_subrange_type ] [0, 128]
!718 = metadata !{metadata !719, metadata !720, metadata !721, metadata !722, metadata !723, metadata !724, metadata !725, metadata !726, metadata !727, metadata !728, metadata !729, metadata !730, metadata !731, metadata !732, metadata !733, metadata !734, metadata !735, metadata !736, metadata !737, metadata !738, metadata !739, metadata !740, metadata !741}
!719 = metadata !{i32 786689, metadata !595, metadata !"logfile", metadata !151, i32 16777962, metadata !511, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [logfile] [line 746]
!720 = metadata !{i32 786689, metadata !595, metadata !"bVerbose", metadata !151, i32 33555178, metadata !156, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [bVerbose] [line 746]
!721 = metadata !{i32 786689, metadata !595, metadata !"ir", metadata !151, i32 50332395, metadata !598, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ir] [line 747]
!722 = metadata !{i32 786689, metadata !595, metadata !"x", metadata !151, i32 67109611, metadata !180, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [x] [line 747]
!723 = metadata !{i32 786689, metadata !595, metadata !"f", metadata !151, i32 83886828, metadata !180, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [f] [line 748]
!724 = metadata !{i32 786689, metadata !595, metadata !"charge", metadata !151, i32 100664044, metadata !204, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [charge] [line 748]
!725 = metadata !{i32 786689, metadata !595, metadata !"box", metadata !151, i32 117441261, metadata !167, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [box] [line 749]
!726 = metadata !{i32 786689, metadata !595, metadata !"cr", metadata !151, i32 134218477, metadata !217, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cr] [line 749]
!727 = metadata !{i32 786689, metadata !595, metadata !"nsb", metadata !151, i32 150995694, metadata !228, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nsb] [line 750]
!728 = metadata !{i32 786689, metadata !595, metadata !"nrnb", metadata !151, i32 167772910, metadata !709, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nrnb] [line 750]
!729 = metadata !{i32 786689, metadata !595, metadata !"vir", metadata !151, i32 184550127, metadata !167, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [vir] [line 751]
!730 = metadata !{i32 786689, metadata !595, metadata !"ewaldcoeff", metadata !151, i32 201327343, metadata !169, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ewaldcoeff] [line 751]
!731 = metadata !{i32 786689, metadata !595, metadata !"bGatherOnly", metadata !151, i32 218104560, metadata !156, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [bGatherOnly] [line 752]
!732 = metadata !{i32 786688, metadata !595, metadata !"i", metadata !151, i32 755, metadata !156, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 755]
!733 = metadata !{i32 786688, metadata !595, metadata !"ntot", metadata !151, i32 755, metadata !156, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ntot] [line 755]
!734 = metadata !{i32 786688, metadata !595, metadata !"npme", metadata !151, i32 755, metadata !156, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [npme] [line 755]
!735 = metadata !{i32 786688, metadata !595, metadata !"nx", metadata !151, i32 756, metadata !156, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nx] [line 756]
!736 = metadata !{i32 786688, metadata !595, metadata !"ny", metadata !151, i32 756, metadata !156, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ny] [line 756]
!737 = metadata !{i32 786688, metadata !595, metadata !"nz", metadata !151, i32 756, metadata !156, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nz] [line 756]
!738 = metadata !{i32 786688, metadata !595, metadata !"la12", metadata !151, i32 756, metadata !156, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [la12] [line 756]
!739 = metadata !{i32 786688, metadata !595, metadata !"la2", metadata !151, i32 756, metadata !156, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [la2] [line 756]
!740 = metadata !{i32 786688, metadata !595, metadata !"ptr", metadata !151, i32 757, metadata !252, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ptr] [line 757]
!741 = metadata !{i32 786688, metadata !595, metadata !"vol", metadata !151, i32 758, metadata !169, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [vol] [line 758]
!742 = metadata !{i32 786478, metadata !743, metadata !744, metadata !"det", metadata !"det", metadata !"", i32 478, metadata !745, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !747, i32 479} ; [ DW_TAG_subprogram ] [line 478] [local] [def] [scope 479] [det]
!743 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/435.gromacs/src/vec.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!744 = metadata !{i32 786473, metadata !743}      ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/vec.h]
!745 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !746, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!746 = metadata !{metadata !169, metadata !167}
!747 = metadata !{metadata !748}
!748 = metadata !{i32 786689, metadata !742, metadata !"a", metadata !744, i32 16777694, metadata !167, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [a] [line 478]
!749 = metadata !{metadata !750, metadata !751, metadata !752, metadata !753, metadata !754, metadata !755, metadata !756, metadata !757, metadata !758, metadata !759, metadata !760, metadata !762, metadata !765, metadata !766, metadata !767, metadata !768}
!750 = metadata !{i32 786484, i32 0, metadata !214, metadata !"bFirst", metadata !"bFirst", metadata !"", metadata !151, i32 170, metadata !156, i32 1, i32 1, null, null}
!751 = metadata !{i32 786484, i32 0, metadata !214, metadata !"tmp", metadata !"tmp", metadata !"", metadata !151, i32 171, metadata !252, i32 1, i32 1, null, null}
!752 = metadata !{i32 786484, i32 0, metadata !214, metadata !"localsize", metadata !"localsize", metadata !"", metadata !151, i32 173, metadata !156, i32 1, i32 1, null, null}
!753 = metadata !{i32 786484, i32 0, metadata !214, metadata !"maxproc", metadata !"maxproc", metadata !"", metadata !151, i32 174, metadata !156, i32 1, i32 1, null, null}
!754 = metadata !{i32 786484, i32 0, metadata !595, metadata !"energy", metadata !"energy", metadata !"", metadata !151, i32 754, metadata !169, i32 1, i32 1, float* @do_pme.energy, null} ; [ DW_TAG_variable ] [energy] [line 754] [local] [def]
!755 = metadata !{i32 786484, i32 0, metadata !595, metadata !"orderlist", metadata !"orderlist", metadata !"", metadata !151, i32 759, metadata !185, i32 1, i32 1, null, null}
!756 = metadata !{i32 786484, i32 0, null, metadata !"nnx", metadata !"nnx", metadata !"", metadata !151, i32 656, metadata !185, i32 1, i32 1, i32** @nnx, null} ; [ DW_TAG_variable ] [nnx] [line 656] [local] [def]
!757 = metadata !{i32 786484, i32 0, null, metadata !"nny", metadata !"nny", metadata !"", metadata !151, i32 656, metadata !185, i32 1, i32 1, i32** @nny, null} ; [ DW_TAG_variable ] [nny] [line 656] [local] [def]
!758 = metadata !{i32 786484, i32 0, null, metadata !"nnz", metadata !"nnz", metadata !"", metadata !151, i32 656, metadata !185, i32 1, i32 1, i32** @nnz, null} ; [ DW_TAG_variable ] [nnz] [line 656] [local] [def]
!759 = metadata !{i32 786484, i32 0, null, metadata !"fractx", metadata !"fractx", metadata !"", metadata !151, i32 658, metadata !180, i32 1, i32 1, [3 x float]** @fractx, null} ; [ DW_TAG_variable ] [fractx] [line 658] [local] [def]
!760 = metadata !{i32 786484, i32 0, null, metadata !"recipbox", metadata !"recipbox", metadata !"", metadata !151, i32 661, metadata !761, i32 1, i32 1, [3 x [3 x float]]* @recipbox, null} ; [ DW_TAG_variable ] [recipbox] [line 661] [local] [def]
!761 = metadata !{i32 786454, metadata !1, null, metadata !"matrix", i32 103, i64 0, i64 0, i64 0, i32 0, metadata !636} ; [ DW_TAG_typedef ] [matrix] [line 103, size 0, align 0, offset 0] [from ]
!762 = metadata !{i32 786484, i32 0, null, metadata !"theta", metadata !"theta", metadata !"", metadata !151, i32 662, metadata !763, i32 1, i32 1, [3 x float*]* @theta, null} ; [ DW_TAG_variable ] [theta] [line 662] [local] [def]
!763 = metadata !{i32 786454, metadata !1, null, metadata !"splinevec", i32 46, i64 0, i64 0, i64 0, i32 0, metadata !764} ; [ DW_TAG_typedef ] [splinevec] [line 46, size 0, align 0, offset 0] [from ]
!764 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 192, i64 64, i32 0, i32 0, metadata !204, metadata !171, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 192, align 64, offset 0] [from ]
!765 = metadata !{i32 786484, i32 0, null, metadata !"dtheta", metadata !"dtheta", metadata !"", metadata !151, i32 663, metadata !763, i32 1, i32 1, [3 x float*]* @dtheta, null} ; [ DW_TAG_variable ] [dtheta] [line 663] [local] [def]
!766 = metadata !{i32 786484, i32 0, null, metadata !"bsp_mod", metadata !"bsp_mod", metadata !"", metadata !151, i32 664, metadata !763, i32 1, i32 1, [3 x float*]* @bsp_mod, null} ; [ DW_TAG_variable ] [bsp_mod] [line 664] [local] [def]
!767 = metadata !{i32 786484, i32 0, null, metadata !"grid", metadata !"grid", metadata !"", metadata !151, i32 654, metadata !247, i32 1, i32 1, %struct.t_fftgrid** @grid, null} ; [ DW_TAG_variable ] [grid] [line 654] [local] [def]
!768 = metadata !{i32 786484, i32 0, null, metadata !"idx", metadata !"idx", metadata !"", metadata !151, i32 657, metadata !182, i32 1, i32 1, [3 x i32]** @idx, null} ; [ DW_TAG_variable ] [idx] [line 657] [local] [def]
!769 = metadata !{i32 77, i32 0, metadata !150, null}
!770 = metadata !{i32 81, i32 0, metadata !150, null}
!771 = metadata !{i32 82, i32 0, metadata !772, null}
!772 = metadata !{i32 786443, metadata !1, metadata !150, i32 81, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/pme.c]
!773 = metadata !{metadata !"any pointer", metadata !774}
!774 = metadata !{metadata !"omnipotent char", metadata !775}
!775 = metadata !{metadata !"Simple C/C++ TBAA"}
!776 = metadata !{i32 84, i32 0, metadata !772, null}
!777 = metadata !{i32 85, i32 0, metadata !150, null}
!778 = metadata !{i32 88, i32 0, metadata !164, null}
!779 = metadata !{i32 92, i32 0, metadata !164, null}
!780 = metadata !{metadata !"float", metadata !774}
!781 = metadata !{i32 94, i32 0, metadata !164, null}
!782 = metadata !{i32 95, i32 0, metadata !164, null}
!783 = metadata !{i32 96, i32 0, metadata !164, null}
!784 = metadata !{i32 97, i32 0, metadata !164, null}
!785 = metadata !{i32 98, i32 0, metadata !164, null}
!786 = metadata !{i32 99, i32 0, metadata !164, null}
!787 = metadata !{i32 100, i32 0, metadata !164, null}
!788 = metadata !{i32 101, i32 0, metadata !164, null}
!789 = metadata !{i32 102, i32 0, metadata !164, null}
!790 = metadata !{i32 103, i32 0, metadata !164, null}
!791 = metadata !{i32 106, i32 0, metadata !177, null}
!792 = metadata !{i32 107, i32 0, metadata !177, null}
!793 = metadata !{i32 108, i32 0, metadata !177, null}
!794 = metadata !{i32 123, i32 0, metadata !177, null}
!795 = metadata !{i32 124, i32 0, metadata !177, null}
!796 = metadata !{i32 125, i32 0, metadata !177, null}
!797 = metadata !{i32 126, i32 0, metadata !177, null}
!798 = metadata !{i32 127, i32 0, metadata !177, null}
!799 = metadata !{i32 128, i32 0, metadata !177, null}
!800 = metadata !{i32 130, i32 0, metadata !801, null}
!801 = metadata !{i32 786443, metadata !1, metadata !177, i32 130, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/pme.c]
!802 = metadata !{i32 135, i32 0, metadata !803, null}
!803 = metadata !{i32 786443, metadata !1, metadata !801, i32 130, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/pme.c]
!804 = metadata !{i32 136, i32 0, metadata !803, null}
!805 = metadata !{i32 137, i32 0, metadata !803, null}
!806 = metadata !{i32 131, i32 0, metadata !803, null}
!807 = metadata !{i32 132, i32 0, metadata !803, null}
!808 = metadata !{i32 144, i32 0, metadata !803, null}
!809 = metadata !{i32 145, i32 0, metadata !803, null}
!810 = metadata !{i32 146, i32 0, metadata !803, null}
!811 = metadata !{i32 149, i32 0, metadata !803, null}
!812 = metadata !{i32 150, i32 0, metadata !803, null}
!813 = metadata !{i32 151, i32 0, metadata !803, null}
!814 = metadata !{i32 153, i32 0, metadata !803, null}
!815 = metadata !{metadata !"int", metadata !774}
!816 = metadata !{i32 154, i32 0, metadata !803, null}
!817 = metadata !{i32 155, i32 0, metadata !803, null}
!818 = metadata !{i32 166, i32 0, metadata !177, null}
!819 = metadata !{i32 168, i32 0, metadata !214, null}
!820 = metadata !{i32 207, i32 0, metadata !214, null}
!821 = metadata !{i32 209, i32 0, metadata !214, null}
!822 = metadata !{i32 211, i32 0, metadata !271, null}
!823 = metadata !{i32 212, i32 0, metadata !271, null}
!824 = metadata !{i32 213, i32 0, metadata !271, null}
!825 = metadata !{i32 216, i32 0, metadata !271, null}
!826 = metadata !{i32 218, i32 0, metadata !271, null}
!827 = metadata !{i32 223, i32 0, metadata !271, null}
!828 = metadata !{i32 224, i32 0, metadata !271, null}
!829 = metadata !{i32 225, i32 0, metadata !271, null}
!830 = metadata !{i32 226, i32 0, metadata !271, null}
!831 = metadata !{i32 227, i32 0, metadata !271, null}
!832 = metadata !{i32 228, i32 0, metadata !271, null}
!833 = metadata !{i32 229, i32 0, metadata !271, null}
!834 = metadata !{i32 230, i32 0, metadata !271, null}
!835 = metadata !{i32 232, i32 0, metadata !836, null}
!836 = metadata !{i32 786443, metadata !1, metadata !271, i32 232, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/pme.c]
!837 = metadata !{i32 258, i32 0, metadata !838, null}
!838 = metadata !{i32 786443, metadata !1, metadata !839, i32 254, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/pme.c]
!839 = metadata !{i32 786443, metadata !1, metadata !840, i32 254, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/pme.c]
!840 = metadata !{i32 786443, metadata !1, metadata !841, i32 249, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/pme.c]
!841 = metadata !{i32 786443, metadata !1, metadata !842, i32 249, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/pme.c]
!842 = metadata !{i32 786443, metadata !1, metadata !843, i32 236, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/pme.c]
!843 = metadata !{i32 786443, metadata !1, metadata !836, i32 232, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/pme.c]
!844 = metadata !{i32 268, i32 0, metadata !845, null}
!845 = metadata !{i32 786443, metadata !1, metadata !846, i32 260, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/pme.c]
!846 = metadata !{i32 786443, metadata !1, metadata !838, i32 260, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/pme.c]
!847 = metadata !{i32 233, i32 0, metadata !843, null}
!848 = metadata !{i32 234, i32 0, metadata !843, null}
!849 = metadata !{i32 236, i32 0, metadata !843, null}
!850 = metadata !{i32 237, i32 0, metadata !842, null}
!851 = metadata !{i32 238, i32 0, metadata !842, null}
!852 = metadata !{i32 239, i32 0, metadata !842, null}
!853 = metadata !{i32 245, i32 0, metadata !842, null}
!854 = metadata !{i32 246, i32 0, metadata !842, null}
!855 = metadata !{i32 247, i32 0, metadata !842, null}
!856 = metadata !{i32 249, i32 0, metadata !841, null}
!857 = metadata !{i32 251, i32 0, metadata !840, null}
!858 = metadata !{i32 256, i32 0, metadata !838, null}
!859 = metadata !{i32 250, i32 0, metadata !840, null}
!860 = metadata !{i32 252, i32 0, metadata !840, null}
!861 = metadata !{i32 254, i32 0, metadata !839, null}
!862 = metadata !{i32 255, i32 0, metadata !838, null}
!863 = metadata !{i32 257, i32 0, metadata !838, null}
!864 = metadata !{i32 260, i32 0, metadata !846, null}
!865 = metadata !{i32 261, i32 0, metadata !845, null}
!866 = metadata !{i32 274, i32 0, metadata !271, null}
!867 = metadata !{i32 276, i32 0, metadata !317, null}
!868 = metadata !{i32 277, i32 0, metadata !317, null}
!869 = metadata !{i32 278, i32 0, metadata !317, null}
!870 = metadata !{i32 281, i32 0, metadata !317, null}
!871 = metadata !{i32 282, i32 0, metadata !317, null}
!872 = metadata !{i32 283, i32 0, metadata !317, null}
!873 = metadata !{i32 285, i32 0, metadata !317, null}
!874 = metadata !{float 0.000000e+00}
!875 = metadata !{i32 287, i32 0, metadata !317, null}
!876 = metadata !{i32 291, i32 0, metadata !317, null}
!877 = metadata !{i32 292, i32 0, metadata !317, null}
!878 = metadata !{i32 295, i32 0, metadata !317, null}
!879 = metadata !{i32 297, i32 0, metadata !317, null}
!880 = metadata !{i32 298, i32 0, metadata !317, null}
!881 = metadata !{i32 299, i32 0, metadata !317, null}
!882 = metadata !{i32 300, i32 0, metadata !317, null}
!883 = metadata !{i32 301, i32 0, metadata !317, null}
!884 = metadata !{i32 302, i32 0, metadata !317, null}
!885 = metadata !{i32 304, i32 0, metadata !317, null}
!886 = metadata !{i32 305, i32 0, metadata !317, null}
!887 = metadata !{i32 306, i32 0, metadata !317, null}
!888 = metadata !{i32 308, i32 0, metadata !317, null}
!889 = metadata !{i32 315, i32 0, metadata !890, null}
!890 = metadata !{i32 786443, metadata !1, metadata !317, i32 308, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/pme.c]
!891 = metadata !{i32 323, i32 0, metadata !892, null}
!892 = metadata !{i32 786443, metadata !1, metadata !317, i32 323, i32 0, i32 14} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/pme.c]
!893 = metadata !{i32 329, i32 0, metadata !894, null}
!894 = metadata !{i32 786443, metadata !1, metadata !892, i32 323, i32 0, i32 15} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/pme.c]
!895 = metadata !{i32 347, i32 0, metadata !896, null}
!896 = metadata !{i32 786443, metadata !1, metadata !897, i32 347, i32 0, i32 18} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/pme.c]
!897 = metadata !{i32 786443, metadata !1, metadata !898, i32 331, i32 0, i32 17} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/pme.c]
!898 = metadata !{i32 786443, metadata !1, metadata !894, i32 331, i32 0, i32 16} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/pme.c]
!899 = metadata !{i32 357, i32 0, metadata !900, null}
!900 = metadata !{i32 786443, metadata !1, metadata !896, i32 347, i32 0, i32 19} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/pme.c]
!901 = metadata !{i32 325, i32 0, metadata !894, null}
!902 = metadata !{i32 328, i32 0, metadata !894, null}
!903 = metadata !{i32 326, i32 0, metadata !894, null}
!904 = metadata !{i32 331, i32 0, metadata !898, null}
!905 = metadata !{i32 338, i32 0, metadata !897, null}
!906 = metadata !{i32 354, i32 0, metadata !900, null}
!907 = metadata !{i32 332, i32 0, metadata !897, null}
!908 = metadata !{i32 333, i32 0, metadata !897, null}
!909 = metadata !{i32 337, i32 0, metadata !897, null}
!910 = metadata !{i32 340, i32 0, metadata !897, null}
!911 = metadata !{i32 343, i32 0, metadata !897, null}
!912 = metadata !{i32 342, i32 0, metadata !897, null}
!913 = metadata !{i32 345, i32 0, metadata !897, null}
!914 = metadata !{i32 348, i32 0, metadata !900, null}
!915 = metadata !{i32 356, i32 0, metadata !900, null}
!916 = metadata !{i32 350, i32 0, metadata !900, null}
!917 = metadata !{i32 351, i32 0, metadata !900, null}
!918 = metadata !{i32 352, i32 0, metadata !900, null}
!919 = metadata !{i32 358, i32 0, metadata !900, null}
!920 = metadata !{i32 359, i32 0, metadata !900, null}
!921 = metadata !{i32 360, i32 0, metadata !900, null}
!922 = metadata !{i32 362, i32 0, metadata !900, null}
!923 = metadata !{i32 363, i32 0, metadata !900, null}
!924 = metadata !{i32 364, i32 0, metadata !900, null}
!925 = metadata !{i32 365, i32 0, metadata !900, null}
!926 = metadata !{i32 366, i32 0, metadata !900, null}
!927 = metadata !{i32 367, i32 0, metadata !900, null}
!928 = metadata !{i32 369, i32 0, metadata !900, null}
!929 = metadata !{i32 370, i32 0, metadata !900, null}
!930 = metadata !{i32 371, i32 0, metadata !900, null}
!931 = metadata !{i32 372, i32 0, metadata !900, null}
!932 = metadata !{i32 373, i32 0, metadata !900, null}
!933 = metadata !{i32 374, i32 0, metadata !900, null}
!934 = metadata !{i32 375, i32 0, metadata !900, null}
!935 = metadata !{i32 376, i32 0, metadata !900, null}
!936 = metadata !{i32 385, i32 0, metadata !317, null}
!937 = metadata !{i32 386, i32 0, metadata !317, null}
!938 = metadata !{i32 387, i32 0, metadata !317, null}
!939 = metadata !{i32 388, i32 0, metadata !317, null}
!940 = metadata !{i32 389, i32 0, metadata !317, null}
!941 = metadata !{i32 390, i32 0, metadata !317, null}
!942 = metadata !{i32 393, i32 0, metadata !317, null}
!943 = metadata !{i32 396, i32 0, metadata !383, null}
!944 = metadata !{i32 397, i32 0, metadata !383, null}
!945 = metadata !{i32 398, i32 0, metadata !383, null}
!946 = metadata !{i32 399, i32 0, metadata !383, null}
!947 = metadata !{i32 403, i32 0, metadata !383, null}
!948 = metadata !{i32 404, i32 0, metadata !383, null}
!949 = metadata !{i32 414, i32 0, metadata !383, null}
!950 = metadata !{i32 416, i32 0, metadata !383, null}
!951 = metadata !{i32 417, i32 0, metadata !383, null}
!952 = metadata !{i32 418, i32 0, metadata !383, null}
!953 = metadata !{i32 419, i32 0, metadata !383, null}
!954 = metadata !{i32 420, i32 0, metadata !383, null}
!955 = metadata !{i32 421, i32 0, metadata !383, null}
!956 = metadata !{i32 422, i32 0, metadata !383, null}
!957 = metadata !{i32 423, i32 0, metadata !383, null}
!958 = metadata !{i32 424, i32 0, metadata !383, null}
!959 = metadata !{i32 426, i32 0, metadata !383, null}
!960 = metadata !{i32 427, i32 0, metadata !383, null}
!961 = metadata !{i32 428, i32 0, metadata !383, null}
!962 = metadata !{i32 429, i32 0, metadata !383, null}
!963 = metadata !{i32 430, i32 0, metadata !383, null}
!964 = metadata !{i32 431, i32 0, metadata !383, null}
!965 = metadata !{i32 434, i32 0, metadata !966, null}
!966 = metadata !{i32 786443, metadata !1, metadata !383, i32 434, i32 0, i32 20} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/pme.c]
!967 = metadata !{i32 523, i32 0, metadata !968, null}
!968 = metadata !{i32 786443, metadata !1, metadata !969, i32 440, i32 0, i32 22} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/pme.c]
!969 = metadata !{i32 786443, metadata !1, metadata !966, i32 434, i32 0, i32 21} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/pme.c]
!970 = metadata !{i32 524, i32 0, metadata !968, null}
!971 = metadata !{i32 525, i32 0, metadata !968, null}
!972 = metadata !{i32 460, i32 0, metadata !973, null}
!973 = metadata !{i32 786443, metadata !1, metadata !974, i32 454, i32 0, i32 24} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/pme.c]
!974 = metadata !{i32 786443, metadata !1, metadata !968, i32 454, i32 0, i32 23} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/pme.c]
!975 = metadata !{i32 503, i32 0, metadata !976, null}
!976 = metadata !{i32 786443, metadata !1, metadata !977, i32 498, i32 0, i32 30} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/pme.c]
!977 = metadata !{i32 786443, metadata !1, metadata !978, i32 498, i32 0, i32 29} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/pme.c]
!978 = metadata !{i32 786443, metadata !1, metadata !973, i32 497, i32 0, i32 28} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/pme.c]
!979 = metadata !{i32 513, i32 0, metadata !980, null}
!980 = metadata !{i32 786443, metadata !1, metadata !981, i32 505, i32 0, i32 32} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/pme.c]
!981 = metadata !{i32 786443, metadata !1, metadata !976, i32 505, i32 0, i32 31} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/pme.c]
!982 = metadata !{i32 466, i32 0, metadata !983, null}
!983 = metadata !{i32 786443, metadata !1, metadata !984, i32 461, i32 0, i32 27} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/pme.c]
!984 = metadata !{i32 786443, metadata !1, metadata !985, i32 461, i32 0, i32 26} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/pme.c]
!985 = metadata !{i32 786443, metadata !1, metadata !973, i32 460, i32 0, i32 25} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/pme.c]
!986 = metadata !{i32 467, i32 0, metadata !983, null}
!987 = metadata !{i32 435, i32 0, metadata !969, null}
!988 = metadata !{i32 436, i32 0, metadata !969, null}
!989 = metadata !{i32 437, i32 0, metadata !969, null}
!990 = metadata !{i32 438, i32 0, metadata !969, null}
!991 = metadata !{i32 440, i32 0, metadata !969, null}
!992 = metadata !{i32 441, i32 0, metadata !968, null}
!993 = metadata !{i32 442, i32 0, metadata !968, null}
!994 = metadata !{i32 443, i32 0, metadata !968, null}
!995 = metadata !{i32 444, i32 0, metadata !968, null}
!996 = metadata !{i32 451, i32 0, metadata !968, null}
!997 = metadata !{i32 452, i32 0, metadata !968, null}
!998 = metadata !{i32 453, i32 0, metadata !968, null}
!999 = metadata !{i32 454, i32 0, metadata !974, null}
!1000 = metadata !{i32 458, i32 0, metadata !973, null}
!1001 = metadata !{i32 502, i32 0, metadata !976, null}
!1002 = metadata !{i32 468, i32 0, metadata !983, null}
!1003 = metadata !{i32 469, i32 0, metadata !983, null}
!1004 = metadata !{i32 470, i32 0, metadata !983, null}
!1005 = metadata !{i32 475, i32 0, metadata !983, null}
!1006 = metadata !{i32 476, i32 0, metadata !983, null}
!1007 = metadata !{i32 477, i32 0, metadata !983, null}
!1008 = metadata !{i32 480, i32 0, metadata !983, null}
!1009 = metadata !{i32 481, i32 0, metadata !983, null}
!1010 = metadata !{i32 482, i32 0, metadata !983, null}
!1011 = metadata !{i32 485, i32 0, metadata !983, null}
!1012 = metadata !{i32 486, i32 0, metadata !983, null}
!1013 = metadata !{i32 487, i32 0, metadata !983, null}
!1014 = metadata !{i32 490, i32 0, metadata !983, null}
!1015 = metadata !{i32 491, i32 0, metadata !983, null}
!1016 = metadata !{i32 455, i32 0, metadata !973, null}
!1017 = metadata !{i32 456, i32 0, metadata !973, null}
!1018 = metadata !{i32 457, i32 0, metadata !973, null}
!1019 = metadata !{i32 461, i32 0, metadata !984, null}
!1020 = metadata !{i32 462, i32 0, metadata !983, null}
!1021 = metadata !{i32 463, i32 0, metadata !983, null}
!1022 = metadata !{i32 464, i32 0, metadata !983, null}
!1023 = metadata !{i32 465, i32 0, metadata !983, null}
!1024 = metadata !{i32 472, i32 0, metadata !983, null}
!1025 = metadata !{i32 492, i32 0, metadata !983, null}
!1026 = metadata !{i32 493, i32 0, metadata !983, null}
!1027 = metadata !{i32 494, i32 0, metadata !983, null}
!1028 = metadata !{i32 499, i32 0, metadata !976, null}
!1029 = metadata !{i32 500, i32 0, metadata !976, null}
!1030 = metadata !{i32 501, i32 0, metadata !976, null}
!1031 = metadata !{i32 504, i32 0, metadata !976, null}
!1032 = metadata !{i32 505, i32 0, metadata !981, null}
!1033 = metadata !{i32 506, i32 0, metadata !980, null}
!1034 = metadata !{i32 514, i32 0, metadata !980, null}
!1035 = metadata !{i32 515, i32 0, metadata !980, null}
!1036 = metadata !{i32 517, i32 0, metadata !976, null}
!1037 = metadata !{i32 518, i32 0, metadata !976, null}
!1038 = metadata !{i32 519, i32 0, metadata !976, null}
!1039 = metadata !{i32 498, i32 0, metadata !977, null}
!1040 = metadata !{i32 526, i32 0, metadata !968, null}
!1041 = metadata !{i32 537, i32 0, metadata !383, null}
!1042 = metadata !{i32 540, i32 0, metadata !455, null}
!1043 = metadata !{i32 541, i32 0, metadata !455, null}
!1044 = metadata !{i32 548, i32 0, metadata !1045, null}
!1045 = metadata !{i32 786443, metadata !1, metadata !455, i32 548, i32 0, i32 33} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/pme.c]
!1046 = metadata !{i32 556, i32 0, metadata !1047, null}
!1047 = metadata !{i32 786443, metadata !1, metadata !1048, i32 551, i32 0, i32 37} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/pme.c]
!1048 = metadata !{i32 786443, metadata !1, metadata !1049, i32 551, i32 0, i32 36} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/pme.c]
!1049 = metadata !{i32 786443, metadata !1, metadata !1050, i32 549, i32 0, i32 35} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/pme.c]
!1050 = metadata !{i32 786443, metadata !1, metadata !1045, i32 548, i32 0, i32 34} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/pme.c]
!1051 = metadata !{i32 560, i32 0, metadata !1052, null}
!1052 = metadata !{i32 786443, metadata !1, metadata !1047, i32 560, i32 0, i32 38} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/pme.c]
!1053 = metadata !{i32 571, i32 0, metadata !1054, null}
!1054 = metadata !{i32 786443, metadata !1, metadata !1047, i32 571, i32 0, i32 41} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/pme.c]
!1055 = metadata !{i32 574, i32 0, metadata !1047, null}
!1056 = metadata !{i32 575, i32 0, metadata !1047, null}
!1057 = metadata !{i32 576, i32 0, metadata !1058, null}
!1058 = metadata !{i32 786443, metadata !1, metadata !1047, i32 576, i32 0, i32 42} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/pme.c]
!1059 = metadata !{i32 549, i32 0, metadata !1050, null}
!1060 = metadata !{i32 555, i32 0, metadata !1047, null}
!1061 = metadata !{i32 557, i32 0, metadata !1047, null}
!1062 = metadata !{i32 551, i32 0, metadata !1048, null}
!1063 = metadata !{i32 552, i32 0, metadata !1047, null}
!1064 = metadata !{i32 558, i32 0, metadata !1047, null}
!1065 = metadata !{i32 3}
!1066 = metadata !{i32 563, i32 0, metadata !1067, null}
!1067 = metadata !{i32 786443, metadata !1, metadata !1068, i32 563, i32 0, i32 40} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/pme.c]
!1068 = metadata !{i32 786443, metadata !1, metadata !1052, i32 560, i32 0, i32 39} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/pme.c]
!1069 = metadata !{i32 561, i32 0, metadata !1068, null}
!1070 = metadata !{i32 562, i32 0, metadata !1068, null}
!1071 = metadata !{i32 1}
!1072 = metadata !{i32 564, i32 0, metadata !1067, null}
!1073 = metadata !{i32 566, i32 0, metadata !1068, null}
!1074 = metadata !{i32 569, i32 0, metadata !1047, null}
!1075 = metadata !{i32 570, i32 0, metadata !1047, null}
!1076 = metadata !{i32 572, i32 0, metadata !1054, null}
!1077 = metadata !{i32 577, i32 0, metadata !1058, null}
!1078 = metadata !{i32 579, i32 0, metadata !1047, null}
!1079 = metadata !{i32 583, i32 0, metadata !455, null}
!1080 = metadata !{i32 586, i32 0, metadata !479, null}
!1081 = metadata !{i32 591, i32 0, metadata !1082, null}
!1082 = metadata !{i32 786443, metadata !1, metadata !479, i32 591, i32 0, i32 43} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/pme.c]
!1083 = metadata !{i32 594, i32 0, metadata !1084, null}
!1084 = metadata !{i32 786443, metadata !1, metadata !1085, i32 593, i32 0, i32 46} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/pme.c]
!1085 = metadata !{i32 786443, metadata !1, metadata !1086, i32 593, i32 0, i32 45} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/pme.c]
!1086 = metadata !{i32 786443, metadata !1, metadata !1082, i32 591, i32 0, i32 44} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/pme.c]
!1087 = metadata !{i32 593, i32 0, metadata !1085, null}
!1088 = metadata !{i32 600, i32 0, metadata !1089, null}
!1089 = metadata !{i32 786443, metadata !1, metadata !479, i32 600, i32 0, i32 47} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/pme.c]
!1090 = metadata !{i32 595, i32 0, metadata !1084, null}
!1091 = metadata !{i32 596, i32 0, metadata !1084, null}
!1092 = metadata !{i32 598, i32 0, metadata !1086, null}
!1093 = metadata !{i32 601, i32 0, metadata !1089, null}
!1094 = metadata !{i32 602, i32 0, metadata !1089, null}
!1095 = metadata !{i32 603, i32 0, metadata !479, null}
!1096 = metadata !{i32 607, i32 0, metadata !491, null}
!1097 = metadata !{i32 609, i32 0, metadata !491, null}
!1098 = metadata !{i32 614, i32 0, metadata !491, null}
!1099 = metadata !{i32 615, i32 0, metadata !491, null}
!1100 = metadata !{i32 616, i32 0, metadata !491, null}
!1101 = metadata !{i32 618, i32 0, metadata !491, null}
!1102 = metadata !{i32 619, i32 0, metadata !491, null}
!1103 = metadata !{i32 620, i32 0, metadata !491, null}
!1104 = metadata !{i32 622, i32 0, metadata !1105, null}
!1105 = metadata !{i32 786443, metadata !1, metadata !491, i32 622, i32 0, i32 48} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/pme.c]
!1106 = metadata !{i32 625, i32 0, metadata !1107, null}
!1107 = metadata !{i32 786443, metadata !1, metadata !1108, i32 625, i32 0, i32 50} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/pme.c]
!1108 = metadata !{i32 786443, metadata !1, metadata !1105, i32 622, i32 0, i32 49} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/pme.c]
!1109 = metadata !{i32 623, i32 0, metadata !1108, null}
!1110 = metadata !{i32 624, i32 0, metadata !1108, null}
!1111 = metadata !{i32 626, i32 0, metadata !1107, null}
!1112 = metadata !{i32 627, i32 0, metadata !1108, null}
!1113 = metadata !{i32 630, i32 0, metadata !491, null}
!1114 = metadata !{i32 631, i32 0, metadata !1115, null}
!1115 = metadata !{i32 786443, metadata !1, metadata !491, i32 631, i32 0, i32 51} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/pme.c]
!1116 = metadata !{i32 632, i32 0, metadata !1115, null}
!1117 = metadata !{i32 633, i32 0, metadata !491, null}
!1118 = metadata !{i32 634, i32 0, metadata !491, null}
!1119 = metadata !{i32 635, i32 0, metadata !1120, null}
!1120 = metadata !{i32 786443, metadata !1, metadata !491, i32 635, i32 0, i32 52} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/pme.c]
!1121 = metadata !{i32 636, i32 0, metadata !1120, null}
!1122 = metadata !{i32 637, i32 0, metadata !491, null}
!1123 = metadata !{i32 639, i32 0, metadata !1124, null}
!1124 = metadata !{i32 786443, metadata !1, metadata !491, i32 639, i32 0, i32 53} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/pme.c]
!1125 = metadata !{i32 640, i32 0, metadata !1124, null}
!1126 = metadata !{i32 641, i32 0, metadata !1127, null}
!1127 = metadata !{i32 786443, metadata !1, metadata !491, i32 641, i32 0, i32 54} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/pme.c]
!1128 = metadata !{i32 642, i32 0, metadata !1127, null}
!1129 = metadata !{i32 644, i32 0, metadata !491, null}
!1130 = metadata !{i32 645, i32 0, metadata !491, null}
!1131 = metadata !{i32 646, i32 0, metadata !491, null}
!1132 = metadata !{i32 648, i32 0, metadata !491, null}
!1133 = metadata !{i32 649, i32 0, metadata !491, null}
!1134 = metadata !{i32 650, i32 0, metadata !491, null}
!1135 = metadata !{i32 651, i32 0, metadata !491, null}
!1136 = metadata !{i32 667, i32 0, metadata !508, null}
!1137 = metadata !{i32 668, i32 0, metadata !508, null}
!1138 = metadata !{i32 669, i32 0, metadata !508, null}
!1139 = metadata !{i32 675, i32 0, metadata !508, null}
!1140 = metadata !{i32 677, i32 0, metadata !508, null}
!1141 = metadata !{i32 678, i32 0, metadata !508, null}
!1142 = metadata !{i32 680, i32 0, metadata !508, null}
!1143 = metadata !{i32 681, i32 0, metadata !1144, null}
!1144 = metadata !{i32 786443, metadata !1, metadata !508, i32 680, i32 0, i32 55} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/pme.c]
!1145 = metadata !{i32 682, i32 0, metadata !1144, null}
!1146 = metadata !{i32 683, i32 0, metadata !1144, null}
!1147 = metadata !{i32 685, i32 0, metadata !508, null}
!1148 = metadata !{i32 672, i32 0, metadata !508, null}
!1149 = metadata !{i32 686, i32 0, metadata !508, null}
!1150 = metadata !{i32 687, i32 0, metadata !1151, null}
!1151 = metadata !{i32 786443, metadata !1, metadata !508, i32 686, i32 0, i32 56} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/pme.c]
!1152 = metadata !{i32 688, i32 0, metadata !1151, null}
!1153 = metadata !{i32 689, i32 0, metadata !1151, null}
!1154 = metadata !{i32 694, i32 0, metadata !508, null}
!1155 = metadata !{i32 695, i32 0, metadata !508, null}
!1156 = metadata !{i32 696, i32 0, metadata !508, null}
!1157 = metadata !{i32 697, i32 0, metadata !1158, null}
!1158 = metadata !{i32 786443, metadata !1, metadata !508, i32 697, i32 0, i32 57} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/pme.c]
!1159 = metadata !{i32 698, i32 0, metadata !1160, null}
!1160 = metadata !{i32 786443, metadata !1, metadata !1158, i32 697, i32 0, i32 58} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/pme.c]
!1161 = metadata !{i32 699, i32 0, metadata !1160, null}
!1162 = metadata !{i32 701, i32 0, metadata !508, null}
!1163 = metadata !{i32 703, i32 0, metadata !508, null}
!1164 = metadata !{i32 704, i32 0, metadata !508, null}
!1165 = metadata !{i32 705, i32 0, metadata !508, null}
!1166 = metadata !{i32 706, i32 0, metadata !508, null}
!1167 = metadata !{i32 707, i32 0, metadata !1168, null}
!1168 = metadata !{i32 786443, metadata !1, metadata !508, i32 707, i32 0, i32 59} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/pme.c]
!1169 = metadata !{i32 708, i32 0, metadata !1168, null}
!1170 = metadata !{i32 709, i32 0, metadata !1171, null}
!1171 = metadata !{i32 786443, metadata !1, metadata !508, i32 709, i32 0, i32 60} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/pme.c]
!1172 = metadata !{i32 710, i32 0, metadata !1171, null}
!1173 = metadata !{i32 711, i32 0, metadata !1174, null}
!1174 = metadata !{i32 786443, metadata !1, metadata !508, i32 711, i32 0, i32 61} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/pme.c]
!1175 = metadata !{i32 712, i32 0, metadata !1174, null}
!1176 = metadata !{i32 714, i32 0, metadata !508, null}
!1177 = metadata !{i32 716, i32 0, metadata !508, null}
!1178 = metadata !{i32 717, i32 0, metadata !508, null}
!1179 = metadata !{i32 719, i32 0, metadata !578, null}
!1180 = metadata !{i32 720, i32 0, metadata !578, null}
!1181 = metadata !{i32 721, i32 0, metadata !578, null}
!1182 = metadata !{i32 722, i32 0, metadata !578, null}
!1183 = metadata !{i32 724, i32 0, metadata !578, null}
!1184 = metadata !{i32 725, i32 0, metadata !578, null}
!1185 = metadata !{i32 728, i32 0, metadata !578, null}
!1186 = metadata !{i32 731, i32 0, metadata !578, null}
!1187 = metadata !{i32 733, i32 0, metadata !578, null}
!1188 = metadata !{i32 735, i32 0, metadata !1189, null}
!1189 = metadata !{i32 786443, metadata !1, metadata !578, i32 733, i32 0, i32 62} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/pme.c]
!1190 = metadata !{i32 738, i32 0, metadata !1189, null}
!1191 = metadata !{i32 741, i32 0, metadata !1189, null}
!1192 = metadata !{i32 742, i32 0, metadata !1189, null}
!1193 = metadata !{i32 743, i32 0, metadata !578, null}
!1194 = metadata !{i32 746, i32 0, metadata !595, null}
!1195 = metadata !{i32 747, i32 0, metadata !595, null}
!1196 = metadata !{i32 748, i32 0, metadata !595, null}
!1197 = metadata !{i32 749, i32 0, metadata !595, null}
!1198 = metadata !{i32 750, i32 0, metadata !595, null}
!1199 = metadata !{i32 751, i32 0, metadata !595, null}
!1200 = metadata !{i32 752, i32 0, metadata !595, null}
!1201 = metadata !{i32 756, i32 0, metadata !595, null}
!1202 = metadata !{i32 757, i32 0, metadata !595, null}
!1203 = metadata !{i32 762, i32 0, metadata !595, null}
!1204 = metadata !{i32 765, i32 0, metadata !595, null}
!1205 = metadata !{i32 768, i32 0, metadata !595, null}
!1206 = metadata !{i32 769, i32 0, metadata !1207, null}
!1207 = metadata !{i32 786443, metadata !1, metadata !595, i32 768, i32 0, i32 63} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/pme.c]
!1208 = metadata !{metadata !"double", metadata !774}
!1209 = metadata !{i32 774, i32 0, metadata !1207, null}
!1210 = metadata !{%struct.t_commrec* undef}
!1211 = metadata !{i32 786689, metadata !214, metadata !"cr", metadata !151, i32 16777384, metadata !217, i32 0, metadata !1212} ; [ DW_TAG_arg_variable ] [cr] [line 168]
!1212 = metadata !{i32 775, i32 0, metadata !1207, null}
!1213 = metadata !{i32 168, i32 0, metadata !214, metadata !1212}
!1214 = metadata !{%struct.t_nsborder* undef}
!1215 = metadata !{i32 786689, metadata !214, metadata !"nsb", metadata !151, i32 33554600, metadata !228, i32 0, metadata !1212} ; [ DW_TAG_arg_variable ] [nsb] [line 168]
!1216 = metadata !{%struct.t_fftgrid* undef}
!1217 = metadata !{i32 786689, metadata !214, metadata !"grid", metadata !151, i32 50331816, metadata !247, i32 0, metadata !1212} ; [ DW_TAG_arg_variable ] [grid] [line 168]
!1218 = metadata !{i32 undef}
!1219 = metadata !{i32 786689, metadata !214, metadata !"bForward", metadata !151, i32 67109032, metadata !156, i32 0, metadata !1212} ; [ DW_TAG_arg_variable ] [bForward] [line 168]
!1220 = metadata !{i32 207, i32 0, metadata !214, metadata !1212}
!1221 = metadata !{i32 778, i32 0, metadata !1207, null}
!1222 = metadata !{i32 786689, metadata !742, metadata !"a", metadata !744, i32 16777694, metadata !167, i32 0, metadata !1223} ; [ DW_TAG_arg_variable ] [a] [line 478]
!1223 = metadata !{i32 781, i32 0, metadata !1207, null}
!1224 = metadata !{i32 478, i32 0, metadata !742, metadata !1223}
!1225 = metadata !{i32 480, i32 0, metadata !1226, metadata !1223}
!1226 = metadata !{i32 786443, metadata !743, metadata !742} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/vec.h]
!1227 = metadata !{i32 782, i32 0, metadata !1207, null}
!1228 = metadata !{i32 783, i32 0, metadata !1207, null}
!1229 = metadata !{i32 785, i32 0, metadata !1207, null}
!1230 = metadata !{i32 788, i32 0, metadata !1207, null}
!1231 = metadata !{i32 786689, metadata !214, metadata !"cr", metadata !151, i32 16777384, metadata !217, i32 0, metadata !1232} ; [ DW_TAG_arg_variable ] [cr] [line 168]
!1232 = metadata !{i32 789, i32 0, metadata !1207, null}
!1233 = metadata !{i32 168, i32 0, metadata !214, metadata !1232}
!1234 = metadata !{i32 786689, metadata !214, metadata !"nsb", metadata !151, i32 33554600, metadata !228, i32 0, metadata !1232} ; [ DW_TAG_arg_variable ] [nsb] [line 168]
!1235 = metadata !{i32 786689, metadata !214, metadata !"grid", metadata !151, i32 50331816, metadata !247, i32 0, metadata !1232} ; [ DW_TAG_arg_variable ] [grid] [line 168]
!1236 = metadata !{i32 786689, metadata !214, metadata !"bForward", metadata !151, i32 67109032, metadata !156, i32 0, metadata !1232} ; [ DW_TAG_arg_variable ] [bForward] [line 168]
!1237 = metadata !{i32 207, i32 0, metadata !214, metadata !1232}
!1238 = metadata !{i32 791, i32 0, metadata !1207, null}
!1239 = metadata !{i32 792, i32 0, metadata !1207, null}
!1240 = metadata !{i32 793, i32 0, metadata !1207, null}
!1241 = metadata !{i32 794, i32 0, metadata !1207, null}
!1242 = metadata !{i32 796, i32 0, metadata !595, null}
!1243 = metadata !{i32 800, i32 0, metadata !595, null}
!1244 = metadata !{i32 803, i32 0, metadata !595, null}
