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
  tail call void @llvm.dbg.value(metadata !{float* %box}, i64 0, metadata !153), !dbg !682
  tail call void @llvm.dbg.value(metadata !{i32 %nx}, i64 0, metadata !154), !dbg !682
  tail call void @llvm.dbg.value(metadata !{i32 %ny}, i64 0, metadata !155), !dbg !682
  tail call void @llvm.dbg.value(metadata !{i32 %nz}, i64 0, metadata !156), !dbg !682
  tail call void @llvm.dbg.value(metadata !{float* %invh}, i64 0, metadata !157), !dbg !682
  %conv = sitofp i32 %nx to float, !dbg !683
  %0 = load float* %box, align 4, !dbg !683, !tbaa !684
  %div = fdiv float %conv, %0, !dbg !683
  store float %div, float* %invh, align 4, !dbg !683, !tbaa !684
  %conv2 = sitofp i32 %ny to float, !dbg !687
  %arrayidx3 = getelementptr inbounds float* %box, i64 1, !dbg !687
  %1 = load float* %arrayidx3, align 4, !dbg !687, !tbaa !684
  %div4 = fdiv float %conv2, %1, !dbg !687
  %arrayidx5 = getelementptr inbounds float* %invh, i64 1, !dbg !687
  store float %div4, float* %arrayidx5, align 4, !dbg !687, !tbaa !684
  %conv6 = sitofp i32 %nz to float, !dbg !688
  %arrayidx7 = getelementptr inbounds float* %box, i64 2, !dbg !688
  %2 = load float* %arrayidx7, align 4, !dbg !688, !tbaa !684
  %div8 = fdiv float %conv6, %2, !dbg !688
  %arrayidx9 = getelementptr inbounds float* %invh, i64 2, !dbg !688
  store float %div8, float* %arrayidx9, align 4, !dbg !688, !tbaa !684
  ret void, !dbg !689
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

; Function Attrs: nounwind optsize uwtable
define void @calc_weights(i32 %iatom, i32 %nx, i32 %ny, i32 %nz, float* nocapture %x, float* nocapture %box, float* nocapture %invh, i32* nocapture %ixyz, float* nocapture %WXYZ) #0 {
entry:
  %wxyz = alloca [3 x [3 x float]], align 16
  %nxyz = alloca [3 x i32], align 4
  call void @llvm.dbg.value(metadata !{i32 %iatom}, i64 0, metadata !163), !dbg !690
  call void @llvm.dbg.value(metadata !{i32 %nx}, i64 0, metadata !164), !dbg !690
  call void @llvm.dbg.value(metadata !{i32 %ny}, i64 0, metadata !165), !dbg !690
  call void @llvm.dbg.value(metadata !{i32 %nz}, i64 0, metadata !166), !dbg !690
  call void @llvm.dbg.value(metadata !{float* %x}, i64 0, metadata !167), !dbg !691
  call void @llvm.dbg.value(metadata !{float* %box}, i64 0, metadata !168), !dbg !691
  call void @llvm.dbg.value(metadata !{float* %invh}, i64 0, metadata !169), !dbg !691
  call void @llvm.dbg.value(metadata !{i32* %ixyz}, i64 0, metadata !170), !dbg !691
  call void @llvm.dbg.value(metadata !{float* %WXYZ}, i64 0, metadata !171), !dbg !691
  call void @llvm.dbg.value(metadata !692, i64 0, metadata !172), !dbg !693
  %0 = bitcast [3 x [3 x float]]* %wxyz to i8*, !dbg !694
  call void @llvm.lifetime.start(i64 36, i8* %0) #2, !dbg !694
  call void @llvm.dbg.declare(metadata !{[3 x [3 x float]]* %wxyz}, metadata !174), !dbg !694
  call void @llvm.dbg.declare(metadata !{[3 x i32]* %nxyz}, metadata !182), !dbg !695
  call void @llvm.dbg.value(metadata !696, i64 0, metadata !181), !dbg !697
  %arrayidx = getelementptr inbounds [3 x i32]* %nxyz, i64 0, i64 0, !dbg !698
  store i32 %nx, i32* %arrayidx, align 4, !dbg !698, !tbaa !699
  %arrayidx1 = getelementptr inbounds [3 x i32]* %nxyz, i64 0, i64 1, !dbg !700
  store i32 %ny, i32* %arrayidx1, align 4, !dbg !700, !tbaa !699
  %arrayidx2 = getelementptr inbounds [3 x i32]* %nxyz, i64 0, i64 2, !dbg !701
  store i32 %nz, i32* %arrayidx2, align 4, !dbg !701, !tbaa !699
  call void @llvm.dbg.value(metadata !142, i64 0, metadata !189), !dbg !702
  br label %for.body, !dbg !702

for.body:                                         ; preds = %if.end31.for.body_crit_edge, %entry
  %1 = phi i32 [ %nx, %entry ], [ %.pre, %if.end31.for.body_crit_edge ]
  %indvars.iv161 = phi i64 [ 0, %entry ], [ %indvars.iv.next162, %if.end31.for.body_crit_edge ]
  %arrayidx3 = getelementptr inbounds float* %x, i64 %indvars.iv161, !dbg !704
  %2 = load float* %arrayidx3, align 4, !dbg !704, !tbaa !684
  %arrayidx5 = getelementptr inbounds float* %invh, i64 %indvars.iv161, !dbg !704
  %3 = load float* %arrayidx5, align 4, !dbg !704, !tbaa !684
  %mul = fmul float %2, %3, !dbg !704
  call void @llvm.dbg.value(metadata !{float %mul}, i64 0, metadata !180), !dbg !704
  %conv = fpext float %mul to double, !dbg !706
  %add = fadd double %conv, 5.000000e-01, !dbg !706
  %conv6 = fptosi double %add to i32, !dbg !706
  call void @llvm.dbg.value(metadata !{i32 %conv6}, i64 0, metadata !186), !dbg !706
  call void @llvm.dbg.value(metadata !{i32 %1}, i64 0, metadata !190), !dbg !707
  %cmp9 = icmp slt i32 %conv6, 0, !dbg !708
  br i1 %cmp9, label %if.then, label %if.else, !dbg !708

if.then:                                          ; preds = %for.body
  %conv11 = sitofp i32 %1 to float, !dbg !709
  %add12 = fadd float %mul, %conv11, !dbg !709
  call void @llvm.dbg.value(metadata !{float %add12}, i64 0, metadata !180), !dbg !709
  %add13 = add nsw i32 %conv6, %1, !dbg !711
  call void @llvm.dbg.value(metadata !{i32 %add13}, i64 0, metadata !186), !dbg !711
  br label %if.end19, !dbg !712

if.else:                                          ; preds = %for.body
  %cmp14 = icmp slt i32 %conv6, %1, !dbg !713
  br i1 %cmp14, label %lor.lhs.false, label %if.then16, !dbg !713

if.then16:                                        ; preds = %if.else
  %conv17 = sitofp i32 %1 to float, !dbg !714
  %sub = fsub float %mul, %conv17, !dbg !714
  call void @llvm.dbg.value(metadata !{float %sub}, i64 0, metadata !180), !dbg !714
  %sub18 = sub nsw i32 %conv6, %1, !dbg !716
  call void @llvm.dbg.value(metadata !{i32 %sub18}, i64 0, metadata !186), !dbg !716
  br label %if.end19, !dbg !717

if.end19:                                         ; preds = %if.then16, %if.then
  %it.0 = phi i32 [ %add13, %if.then ], [ %sub18, %if.then16 ]
  %ttt.0 = phi float [ %add12, %if.then ], [ %sub, %if.then16 ]
  %cmp20 = icmp slt i32 %it.0, 0, !dbg !718
  br i1 %cmp20, label %if.then26, label %lor.lhs.false, !dbg !718

lor.lhs.false:                                    ; preds = %if.else, %if.end19
  %ttt.0143 = phi float [ %ttt.0, %if.end19 ], [ %mul, %if.else ]
  %it.0140 = phi i32 [ %it.0, %if.end19 ], [ %conv6, %if.else ]
  %cmp24 = icmp slt i32 %it.0140, %1, !dbg !718
  br i1 %cmp24, label %if.end31, label %if.then26, !dbg !718

if.then26:                                        ; preds = %lor.lhs.false, %if.end19
  %ttt.0144 = phi float [ %ttt.0143, %lor.lhs.false ], [ %ttt.0, %if.end19 ]
  %it.0141 = phi i32 [ %it.0140, %lor.lhs.false ], [ %it.0, %if.end19 ]
  %conv29 = fpext float %2 to double, !dbg !719
  %conv30 = fpext float %ttt.0144 to double, !dbg !719
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([34 x i8]* @.str, i64 0, i64 0), i32 %iatom, i32 %it.0141, double %conv29, double %conv30) #5, !dbg !719
  br label %if.end31, !dbg !719

if.end31:                                         ; preds = %lor.lhs.false, %if.then26
  %ttt.0145 = phi float [ %ttt.0143, %lor.lhs.false ], [ %ttt.0144, %if.then26 ]
  %it.0142 = phi i32 [ %it.0140, %lor.lhs.false ], [ %it.0141, %if.then26 ]
  %arrayidx33 = getelementptr inbounds i32* %ixyz, i64 %indvars.iv161, !dbg !720
  store i32 %it.0142, i32* %arrayidx33, align 4, !dbg !720, !tbaa !699
  %conv36 = sitofp i32 %it.0142 to float, !dbg !721
  %sub37 = fsub float %ttt.0145, %conv36, !dbg !721
  call void @llvm.dbg.value(metadata !{float %sub37}, i64 0, metadata !179), !dbg !721
  %sub38 = fsub float 5.000000e-01, %sub37, !dbg !722
  tail call void @llvm.dbg.value(metadata !{float %sub38}, i64 0, metadata !723), !dbg !724
  %mul.i = fmul float %sub38, %sub38, !dbg !725
  %arrayidx41 = getelementptr inbounds [3 x [3 x float]]* %wxyz, i64 0, i64 %indvars.iv161, i64 0, !dbg !722
  store float %mul.i, float* %arrayidx41, align 4, !dbg !722, !tbaa !684
  tail call void @llvm.dbg.value(metadata !{float %sub37}, i64 0, metadata !727), !dbg !729
  %mul.i138 = fmul float %sub37, %sub37, !dbg !730
  %conv43 = fpext float %mul.i138 to double, !dbg !728
  %mul44 = fmul double %conv43, 2.000000e+00, !dbg !728
  %sub45 = fsub double 1.500000e+00, %mul44, !dbg !728
  %conv46 = fptrunc double %sub45 to float, !dbg !728
  %arrayidx49 = getelementptr inbounds [3 x [3 x float]]* %wxyz, i64 0, i64 %indvars.iv161, i64 1, !dbg !728
  store float %conv46, float* %arrayidx49, align 4, !dbg !728, !tbaa !684
  %add50 = fadd float %sub37, 5.000000e-01, !dbg !731
  tail call void @llvm.dbg.value(metadata !{float %add50}, i64 0, metadata !732), !dbg !733
  %mul.i137 = fmul float %add50, %add50, !dbg !734
  %arrayidx54 = getelementptr inbounds [3 x [3 x float]]* %wxyz, i64 0, i64 %indvars.iv161, i64 2, !dbg !731
  store float %mul.i137, float* %arrayidx54, align 4, !dbg !731, !tbaa !684
  %indvars.iv.next162 = add i64 %indvars.iv161, 1, !dbg !702
  %lftr.wideiv163 = trunc i64 %indvars.iv.next162 to i32, !dbg !702
  %exitcond164 = icmp eq i32 %lftr.wideiv163, 3, !dbg !702
  br i1 %exitcond164, label %for.end, label %if.end31.for.body_crit_edge, !dbg !702

if.end31.for.body_crit_edge:                      ; preds = %if.end31
  %arrayidx8.phi.trans.insert = getelementptr inbounds [3 x i32]* %nxyz, i64 0, i64 %indvars.iv.next162
  %.pre = load i32* %arrayidx8.phi.trans.insert, align 4, !dbg !707, !tbaa !699
  br label %for.body, !dbg !702

for.end:                                          ; preds = %if.end31
  %arrayidx56 = getelementptr inbounds [3 x [3 x float]]* %wxyz, i64 0, i64 2, i64 0, !dbg !735
  %4 = load float* %arrayidx56, align 8, !dbg !735, !tbaa !684
  call void @llvm.dbg.value(metadata !{float %4}, i64 0, metadata !193), !dbg !735
  %arrayidx58 = getelementptr inbounds [3 x [3 x float]]* %wxyz, i64 0, i64 2, i64 1, !dbg !736
  %5 = load float* %arrayidx58, align 4, !dbg !736, !tbaa !684
  call void @llvm.dbg.value(metadata !{float %5}, i64 0, metadata !194), !dbg !736
  %arrayidx60 = getelementptr inbounds [3 x [3 x float]]* %wxyz, i64 0, i64 2, i64 2, !dbg !737
  %6 = load float* %arrayidx60, align 8, !dbg !737, !tbaa !684
  call void @llvm.dbg.value(metadata !{float %6}, i64 0, metadata !195), !dbg !737
  call void @llvm.dbg.value(metadata !142, i64 0, metadata !189), !dbg !738
  call void @llvm.dbg.value(metadata !142, i64 0, metadata !187), !dbg !738
  br label %for.body64, !dbg !738

for.body64:                                       ; preds = %for.inc92, %for.end
  %indvars.iv157 = phi i64 [ 0, %for.end ], [ %indvars.iv.next158, %for.inc92 ], !dbg !738
  %indvars.iv155 = phi i64 [ 0, %for.end ], [ %indvars.iv.next156, %for.inc92 ]
  %arrayidx67 = getelementptr inbounds [3 x [3 x float]]* %wxyz, i64 0, i64 0, i64 %indvars.iv155, !dbg !740
  %7 = load float* %arrayidx67, align 4, !dbg !740, !tbaa !684
  %mul68 = fmul float %7, 1.250000e-01, !dbg !740
  call void @llvm.dbg.value(metadata !{float %mul68}, i64 0, metadata !191), !dbg !740
  call void @llvm.dbg.value(metadata !142, i64 0, metadata !188), !dbg !742
  br label %for.body72, !dbg !742

for.body72:                                       ; preds = %for.body72, %for.body64
  %indvars.iv151 = phi i64 [ %indvars.iv157, %for.body64 ], [ %indvars.iv.next152, %for.body72 ], !dbg !742
  %indvars.iv = phi i64 [ 0, %for.body64 ], [ %indvars.iv.next, %for.body72 ]
  %arrayidx75 = getelementptr inbounds [3 x [3 x float]]* %wxyz, i64 0, i64 1, i64 %indvars.iv, !dbg !744
  %8 = load float* %arrayidx75, align 4, !dbg !744, !tbaa !684
  %mul76 = fmul float %mul68, %8, !dbg !744
  call void @llvm.dbg.value(metadata !{float %mul76}, i64 0, metadata !192), !dbg !744
  %mul77 = fmul float %4, %mul76, !dbg !746
  %arrayidx79 = getelementptr inbounds float* %WXYZ, i64 %indvars.iv151, !dbg !746
  store float %mul77, float* %arrayidx79, align 4, !dbg !746, !tbaa !684
  %mul80 = fmul float %5, %mul76, !dbg !747
  %9 = add nsw i64 %indvars.iv151, 1, !dbg !747
  %arrayidx83 = getelementptr inbounds float* %WXYZ, i64 %9, !dbg !747
  store float %mul80, float* %arrayidx83, align 4, !dbg !747, !tbaa !684
  %mul84 = fmul float %6, %mul76, !dbg !748
  %10 = add nsw i64 %indvars.iv151, 2, !dbg !748
  %arrayidx87 = getelementptr inbounds float* %WXYZ, i64 %10, !dbg !748
  store float %mul84, float* %arrayidx87, align 4, !dbg !748, !tbaa !684
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !742
  %indvars.iv.next152 = add i64 %indvars.iv151, 3, !dbg !742
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !742
  %exitcond = icmp eq i32 %lftr.wideiv, 3, !dbg !742
  br i1 %exitcond, label %for.inc92, label %for.body72, !dbg !742

for.inc92:                                        ; preds = %for.body72
  %indvars.iv.next158 = add i64 %indvars.iv157, 9, !dbg !738
  %indvars.iv.next156 = add i64 %indvars.iv155, 1, !dbg !738
  %lftr.wideiv159 = trunc i64 %indvars.iv.next156 to i32, !dbg !738
  %exitcond160 = icmp eq i32 %lftr.wideiv159, 3, !dbg !738
  br i1 %exitcond160, label %for.end94, label %for.body64, !dbg !738

for.end94:                                        ; preds = %for.inc92
  call void @llvm.lifetime.end(i64 36, i8* %0) #2, !dbg !749
  ret void, !dbg !749
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #2

; Function Attrs: optsize
declare void @fatal_error(i32, i8*, ...) #3

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #2

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
  call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %log}, i64 0, metadata !287), !dbg !750
  call void @llvm.dbg.value(metadata !{i32 %bVerbose}, i64 0, metadata !288), !dbg !750
  call void @llvm.dbg.value(metadata !{i32 %start}, i64 0, metadata !289), !dbg !751
  call void @llvm.dbg.value(metadata !{i32 %nr}, i64 0, metadata !290), !dbg !751
  call void @llvm.dbg.value(metadata !{[3 x float]* %x}, i64 0, metadata !291), !dbg !752
  call void @llvm.dbg.value(metadata !{float* %charge}, i64 0, metadata !292), !dbg !752
  call void @llvm.dbg.value(metadata !{float* %box}, i64 0, metadata !293), !dbg !752
  call void @llvm.dbg.value(metadata !{%struct.t_fftgrid* %grid}, i64 0, metadata !294), !dbg !753
  call void @llvm.dbg.value(metadata !{%struct.t_nrnb* %nrnb}, i64 0, metadata !295), !dbg !753
  call void @llvm.dbg.declare(metadata !{[3 x float]* %invh}, metadata !296), !dbg !754
  %0 = bitcast [27 x float]* %WXYZ to i8*, !dbg !755
  call void @llvm.lifetime.start(i64 108, i8* %0) #2, !dbg !755
  call void @llvm.dbg.declare(metadata !{[27 x float]* %WXYZ}, metadata !299), !dbg !755
  call void @llvm.dbg.declare(metadata !{[3 x i32]* %ixyz}, metadata !303), !dbg !756
  call void @llvm.dbg.declare(metadata !{i32* %nx}, metadata !316), !dbg !757
  call void @llvm.dbg.declare(metadata !{i32* %ny}, metadata !317), !dbg !757
  call void @llvm.dbg.declare(metadata !{i32* %nz}, metadata !318), !dbg !757
  call void @llvm.dbg.declare(metadata !{i32* %la2}, metadata !319), !dbg !757
  call void @llvm.dbg.declare(metadata !{i32* %la12}, metadata !320), !dbg !757
  call void @llvm.dbg.declare(metadata !{float** %ptr}, metadata !321), !dbg !758
  call void @unpack_fftgrid(%struct.t_fftgrid* %grid, i32* %nx, i32* %ny, i32* %nz, i32* %la2, i32* %la12, i32 1, float** %ptr) #5, !dbg !759
  call void @llvm.dbg.value(metadata !{i32* %nx}, i64 0, metadata !316), !dbg !760
  %1 = load i32* %nx, align 4, !dbg !760, !tbaa !699
  call void @llvm.dbg.value(metadata !{i32* %ny}, i64 0, metadata !317), !dbg !760
  %2 = load i32* %ny, align 4, !dbg !760, !tbaa !699
  call void @llvm.dbg.value(metadata !{i32* %nz}, i64 0, metadata !318), !dbg !760
  %3 = load i32* %nz, align 4, !dbg !760, !tbaa !699
  %arraydecay = getelementptr inbounds [3 x float]* %invh, i64 0, i64 0, !dbg !760
  tail call void @llvm.dbg.value(metadata !{float* %box}, i64 0, metadata !761), !dbg !762
  tail call void @llvm.dbg.value(metadata !{i32 %1}, i64 0, metadata !763), !dbg !762
  tail call void @llvm.dbg.value(metadata !{i32 %2}, i64 0, metadata !764), !dbg !762
  tail call void @llvm.dbg.value(metadata !{i32 %3}, i64 0, metadata !765), !dbg !762
  tail call void @llvm.dbg.value(metadata !{float* %arraydecay}, i64 0, metadata !766), !dbg !762
  %conv.i = sitofp i32 %1 to float, !dbg !767
  %4 = load float* %box, align 4, !dbg !767, !tbaa !684
  %div.i = fdiv float %conv.i, %4, !dbg !767
  store float %div.i, float* %arraydecay, align 4, !dbg !767, !tbaa !684
  %conv2.i = sitofp i32 %2 to float, !dbg !768
  %arrayidx3.i = getelementptr inbounds float* %box, i64 1, !dbg !768
  %5 = load float* %arrayidx3.i, align 4, !dbg !768, !tbaa !684
  %div4.i = fdiv float %conv2.i, %5, !dbg !768
  %arrayidx5.i = getelementptr inbounds [3 x float]* %invh, i64 0, i64 1, !dbg !768
  store float %div4.i, float* %arrayidx5.i, align 4, !dbg !768, !tbaa !684
  %conv6.i = sitofp i32 %3 to float, !dbg !769
  %arrayidx7.i = getelementptr inbounds float* %box, i64 2, !dbg !769
  %6 = load float* %arrayidx7.i, align 4, !dbg !769, !tbaa !684
  %div8.i = fdiv float %conv6.i, %6, !dbg !769
  %arrayidx9.i = getelementptr inbounds [3 x float]* %invh, i64 0, i64 2, !dbg !769
  store float %div8.i, float* %arrayidx9.i, align 4, !dbg !769, !tbaa !684
  %.b = load i1* @spread_q.bFirst, align 1
  br i1 %.b, label %for.cond.preheader, label %if.then, !dbg !770

if.then:                                          ; preds = %entry
  call void @llvm.dbg.value(metadata !{i32* %nx}, i64 0, metadata !316), !dbg !771
  call void @llvm.dbg.value(metadata !{i32* %ny}, i64 0, metadata !317), !dbg !771
  call void @llvm.dbg.value(metadata !{i32* %nz}, i64 0, metadata !318), !dbg !771
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %log, i8* getelementptr inbounds ([58 x i8]* @.str1, i64 0, i64 0), i32 %1, i32 %2, i32 %3) #5, !dbg !771
  %conv = fpext float %div.i to double, !dbg !773
  %conv2 = fpext float %div4.i to double, !dbg !773
  %conv4 = fpext float %div8.i to double, !dbg !773
  %call5 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %log, i8* getelementptr inbounds ([23 x i8]* @.str2, i64 0, i64 0), double %conv, double %conv2, double %conv4) #5, !dbg !773
  call void @llvm.dbg.value(metadata !{i32* %nx}, i64 0, metadata !316), !dbg !774
  %7 = load i32* %nx, align 4, !dbg !774, !tbaa !699
  call void @llvm.dbg.value(metadata !{i32* %ny}, i64 0, metadata !317), !dbg !774
  %8 = load i32* %ny, align 4, !dbg !774, !tbaa !699
  call void @llvm.dbg.value(metadata !{i32* %nz}, i64 0, metadata !318), !dbg !774
  %9 = load i32* %nz, align 4, !dbg !774, !tbaa !699
  call fastcc void @calc_nxyz(i32 %7, i32 %8, i32 %9, i32** @spread_q.nnx, i32** @spread_q.nny, i32** @spread_q.nnz) #6, !dbg !774
  store i1 true, i1* @spread_q.bFirst, align 1
  br label %for.cond.preheader, !dbg !775

for.cond.preheader:                               ; preds = %entry, %if.then
  %add = add nsw i32 %nr, %start, !dbg !776
  %cmp101 = icmp sgt i32 %nr, 0, !dbg !776
  br i1 %cmp101, label %for.body.lr.ph, label %for.end66, !dbg !776

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %arraydecay17 = getelementptr inbounds [3 x i32]* %ixyz, i64 0, i64 0, !dbg !778
  %arraydecay18 = getelementptr inbounds [27 x float]* %WXYZ, i64 0, i64 0, !dbg !778
  %arrayidx21 = getelementptr inbounds [3 x i32]* %ixyz, i64 0, i64 1, !dbg !781
  %arrayidx23 = getelementptr inbounds [3 x i32]* %ixyz, i64 0, i64 2, !dbg !782
  %ptr53 = getelementptr inbounds %struct.t_fftgrid* %grid, i64 0, i32 0, !dbg !783
  %10 = sext i32 %start to i64
  br label %for.body, !dbg !776

for.body:                                         ; preds = %for.body.lr.ph, %for.inc64
  %indvars.iv116 = phi i64 [ %10, %for.body.lr.ph ], [ %indvars.iv.next117, %for.inc64 ]
  %arrayidx7 = getelementptr inbounds float* %charge, i64 %indvars.iv116, !dbg !790
  %11 = load float* %arrayidx7, align 4, !dbg !790, !tbaa !684
  call void @llvm.dbg.value(metadata !{float %11}, i64 0, metadata !297), !dbg !790
  %fabsf = call float @fabsf(float %11) #7, !dbg !791
  %12 = fpext float %fabsf to double, !dbg !791
  %cmp10 = fcmp ogt double %12, 1.200000e-38, !dbg !791
  br i1 %cmp10, label %if.then12, label %for.inc64, !dbg !791

if.then12:                                        ; preds = %for.body
  call void @llvm.dbg.value(metadata !{i32* %nx}, i64 0, metadata !316), !dbg !778
  %13 = load i32* %nx, align 4, !dbg !778, !tbaa !699
  call void @llvm.dbg.value(metadata !{i32* %ny}, i64 0, metadata !317), !dbg !778
  %14 = load i32* %ny, align 4, !dbg !778, !tbaa !699
  call void @llvm.dbg.value(metadata !{i32* %nz}, i64 0, metadata !318), !dbg !778
  %15 = load i32* %nz, align 4, !dbg !778, !tbaa !699
  %arraydecay15 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv116, i64 0, !dbg !778
  %16 = trunc i64 %indvars.iv116 to i32, !dbg !778
  call void @calc_weights(i32 %16, i32 %13, i32 %14, i32 %15, float* %arraydecay15, float* undef, float* %arraydecay, i32* %arraydecay17, float* %arraydecay18) #6, !dbg !778
  %17 = load i32* %arraydecay17, align 4, !dbg !792, !tbaa !699
  call void @llvm.dbg.value(metadata !{i32* %nx}, i64 0, metadata !316), !dbg !792
  %18 = load i32* %nx, align 4, !dbg !792, !tbaa !699
  %add20 = add nsw i32 %18, %17, !dbg !792
  call void @llvm.dbg.value(metadata !{i32 %add20}, i64 0, metadata !305), !dbg !792
  %19 = load i32* %arrayidx21, align 4, !dbg !781, !tbaa !699
  call void @llvm.dbg.value(metadata !{i32* %ny}, i64 0, metadata !317), !dbg !781
  %20 = load i32* %ny, align 4, !dbg !781, !tbaa !699
  %add22 = add nsw i32 %20, %19, !dbg !781
  call void @llvm.dbg.value(metadata !{i32 %add22}, i64 0, metadata !306), !dbg !781
  %21 = load i32* %arrayidx23, align 4, !dbg !782, !tbaa !699
  call void @llvm.dbg.value(metadata !{i32* %nz}, i64 0, metadata !318), !dbg !782
  %22 = load i32* %nz, align 4, !dbg !782, !tbaa !699
  %add24 = add nsw i32 %22, %21, !dbg !782
  call void @llvm.dbg.value(metadata !{i32 %add24}, i64 0, metadata !307), !dbg !782
  call void @llvm.dbg.value(metadata !142, i64 0, metadata !315), !dbg !793
  call void @llvm.dbg.value(metadata !794, i64 0, metadata !309), !dbg !795
  %23 = load i32** @spread_q.nnx, align 8, !dbg !796, !tbaa !797
  %24 = load i32** @spread_q.nny, align 8, !dbg !798, !tbaa !797
  %25 = load i32** @spread_q.nnz, align 8, !dbg !799, !tbaa !797
  call void @llvm.dbg.value(metadata !{i32* %la12}, i64 0, metadata !320), !dbg !800
  %26 = load i32* %la12, align 4, !dbg !800, !tbaa !699
  call void @llvm.dbg.value(metadata !{i32* %la2}, i64 0, metadata !319), !dbg !800
  %27 = load i32* %la2, align 4, !dbg !800, !tbaa !699
  %28 = load float** %ptr53, align 8, !dbg !783, !tbaa !797
  %29 = sext i32 %add24 to i64, !dbg !795
  %30 = sext i32 %add22 to i64, !dbg !795
  %31 = sext i32 %add20 to i64, !dbg !795
  br label %for.body28, !dbg !795

for.body28:                                       ; preds = %for.inc60, %if.then12
  %indvars.iv111 = phi i64 [ -1, %if.then12 ], [ %indvars.iv.next112, %for.inc60 ]
  %nxyz.0100 = phi i32 [ 0, %if.then12 ], [ %42, %for.inc60 ]
  %32 = add nsw i64 %31, %indvars.iv111, !dbg !796
  %arrayidx31 = getelementptr inbounds i32* %23, i64 %32, !dbg !796
  %33 = load i32* %arrayidx31, align 4, !dbg !796, !tbaa !699
  call void @llvm.dbg.value(metadata !{i32 %33}, i64 0, metadata !312), !dbg !796
  call void @llvm.dbg.value(metadata !794, i64 0, metadata !310), !dbg !801
  %mul = mul nsw i32 %26, %33, !dbg !800
  br label %for.body35, !dbg !801

for.body35:                                       ; preds = %for.inc57, %for.body28
  %indvars.iv106 = phi i64 [ -1, %for.body28 ], [ %indvars.iv.next107, %for.inc57 ]
  %nxyz.198 = phi i32 [ %nxyz.0100, %for.body28 ], [ %41, %for.inc57 ]
  %34 = add nsw i64 %30, %indvars.iv106, !dbg !798
  %arrayidx38 = getelementptr inbounds i32* %24, i64 %34, !dbg !798
  %35 = load i32* %arrayidx38, align 4, !dbg !798, !tbaa !699
  call void @llvm.dbg.value(metadata !{i32 %35}, i64 0, metadata !313), !dbg !798
  call void @llvm.dbg.value(metadata !794, i64 0, metadata !311), !dbg !802
  %mul46 = mul nsw i32 %27, %35, !dbg !800
  %36 = sext i32 %nxyz.198 to i64
  br label %for.body42, !dbg !802

for.body42:                                       ; preds = %for.body42, %for.body35
  %indvars.iv103 = phi i64 [ -1, %for.body35 ], [ %indvars.iv.next104, %for.body42 ], !dbg !802
  %indvars.iv = phi i64 [ %36, %for.body35 ], [ %indvars.iv.next, %for.body42 ]
  %37 = add nsw i64 %29, %indvars.iv103, !dbg !799
  %arrayidx45 = getelementptr inbounds i32* %25, i64 %37, !dbg !799
  %38 = load i32* %arrayidx45, align 4, !dbg !799, !tbaa !699
  call void @llvm.dbg.value(metadata !{i32 %38}, i64 0, metadata !314), !dbg !799
  call void @llvm.dbg.value(metadata !{i32* %la12}, i64 0, metadata !320), !dbg !800
  call void @llvm.dbg.value(metadata !{i32* %la2}, i64 0, metadata !319), !dbg !800
  %add47 = add i32 %mul, %38, !dbg !800
  %add48 = add i32 %add47, %mul46, !dbg !800
  call void @llvm.dbg.value(metadata !{i32 %add48}, i64 0, metadata !308), !dbg !800
  %arrayidx50 = getelementptr inbounds [27 x float]* %WXYZ, i64 0, i64 %indvars.iv, !dbg !803
  %39 = load float* %arrayidx50, align 4, !dbg !803, !tbaa !684
  %mul51 = fmul float %11, %39, !dbg !803
  call void @llvm.dbg.value(metadata !{float %mul51}, i64 0, metadata !298), !dbg !803
  %idxprom52 = sext i32 %add48 to i64, !dbg !783
  %arrayidx54 = getelementptr inbounds float* %28, i64 %idxprom52, !dbg !783
  %40 = load float* %arrayidx54, align 4, !dbg !783, !tbaa !684
  %add55 = fadd float %mul51, %40, !dbg !783
  store float %add55, float* %arrayidx54, align 4, !dbg !783, !tbaa !684
  %indvars.iv.next104 = add i64 %indvars.iv103, 1, !dbg !802
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !802
  call void @llvm.dbg.value(metadata !{i32 %42}, i64 0, metadata !315), !dbg !802
  %lftr.wideiv = trunc i64 %indvars.iv.next104 to i32, !dbg !802
  %exitcond = icmp eq i32 %lftr.wideiv, 2, !dbg !802
  br i1 %exitcond, label %for.inc57, label %for.body42, !dbg !802

for.inc57:                                        ; preds = %for.body42
  %41 = add i32 %nxyz.198, 3, !dbg !802
  %indvars.iv.next107 = add i64 %indvars.iv106, 1, !dbg !801
  %lftr.wideiv109 = trunc i64 %indvars.iv.next107 to i32, !dbg !801
  %exitcond110 = icmp eq i32 %lftr.wideiv109, 2, !dbg !801
  br i1 %exitcond110, label %for.inc60, label %for.body35, !dbg !801

for.inc60:                                        ; preds = %for.inc57
  %42 = add i32 %nxyz.0100, 9, !dbg !801
  %indvars.iv.next112 = add i64 %indvars.iv111, 1, !dbg !795
  %lftr.wideiv114 = trunc i64 %indvars.iv.next112 to i32, !dbg !795
  %exitcond115 = icmp eq i32 %lftr.wideiv114, 2, !dbg !795
  br i1 %exitcond115, label %for.inc64, label %for.body28, !dbg !795

for.inc64:                                        ; preds = %for.inc60, %for.body
  %indvars.iv.next117 = add i64 %indvars.iv116, 1, !dbg !776
  %43 = trunc i64 %indvars.iv.next117 to i32, !dbg !776
  %cmp = icmp slt i32 %43, %add, !dbg !776
  br i1 %cmp, label %for.body, label %for.end66, !dbg !776

for.end66:                                        ; preds = %for.inc64, %for.cond.preheader
  %mul67 = mul nsw i32 %nr, 9, !dbg !804
  %conv68 = sitofp i32 %mul67 to double, !dbg !804
  %arrayidx69 = getelementptr inbounds %struct.t_nrnb* %nrnb, i64 0, i32 0, i64 80, !dbg !804
  %44 = load double* %arrayidx69, align 8, !dbg !804, !tbaa !805
  %add70 = fadd double %conv68, %44, !dbg !804
  store double %add70, double* %arrayidx69, align 8, !dbg !804, !tbaa !805
  %mul71 = mul nsw i32 %nr, 3, !dbg !806
  %conv72 = sitofp i32 %mul71 to double, !dbg !806
  %arrayidx74 = getelementptr inbounds %struct.t_nrnb* %nrnb, i64 0, i32 0, i64 79, !dbg !806
  %45 = load double* %arrayidx74, align 8, !dbg !806, !tbaa !805
  %add75 = fadd double %conv72, %45, !dbg !806
  store double %add75, double* %arrayidx74, align 8, !dbg !806, !tbaa !805
  call void @llvm.lifetime.end(i64 108, i8* %0) #2, !dbg !807
  ret void, !dbg !807
}

; Function Attrs: optsize
declare void @unpack_fftgrid(%struct.t_fftgrid*, i32*, i32*, i32*, i32*, i32*, i32, float**) #3

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #4

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @calc_nxyz(i32 %nx, i32 %ny, i32 %nz, i32** nocapture %nnx, i32** nocapture %nny, i32** nocapture %nnz) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %nx}, i64 0, metadata !650), !dbg !808
  tail call void @llvm.dbg.value(metadata !{i32 %ny}, i64 0, metadata !651), !dbg !808
  tail call void @llvm.dbg.value(metadata !{i32 %nz}, i64 0, metadata !652), !dbg !808
  tail call void @llvm.dbg.value(metadata !{i32** %nnx}, i64 0, metadata !653), !dbg !809
  tail call void @llvm.dbg.value(metadata !{i32** %nny}, i64 0, metadata !654), !dbg !809
  tail call void @llvm.dbg.value(metadata !{i32** %nnz}, i64 0, metadata !655), !dbg !809
  %mul = mul nsw i32 %nx, 3, !dbg !810
  %call = tail call i8* @save_calloc(i8* getelementptr inbounds ([5 x i8]* @.str25, i64 0, i64 0), i8* getelementptr inbounds ([52 x i8]* @.str4, i64 0, i64 0), i32 138, i32 %mul, i32 4) #5, !dbg !810
  %0 = bitcast i8* %call to i32*, !dbg !810
  store i32* %0, i32** %nnx, align 8, !dbg !810, !tbaa !797
  %mul1 = mul nsw i32 %ny, 3, !dbg !811
  %call2 = tail call i8* @save_calloc(i8* getelementptr inbounds ([5 x i8]* @.str26, i64 0, i64 0), i8* getelementptr inbounds ([52 x i8]* @.str4, i64 0, i64 0), i32 139, i32 %mul1, i32 4) #5, !dbg !811
  %1 = bitcast i8* %call2 to i32*, !dbg !811
  store i32* %1, i32** %nny, align 8, !dbg !811, !tbaa !797
  %mul3 = mul nsw i32 %nz, 3, !dbg !812
  %call4 = tail call i8* @save_calloc(i8* getelementptr inbounds ([5 x i8]* @.str27, i64 0, i64 0), i8* getelementptr inbounds ([52 x i8]* @.str4, i64 0, i64 0), i32 140, i32 %mul3, i32 4) #5, !dbg !812
  %2 = bitcast i8* %call4 to i32*, !dbg !812
  store i32* %2, i32** %nnz, align 8, !dbg !812, !tbaa !797
  tail call void @llvm.dbg.value(metadata !142, i64 0, metadata !656), !dbg !813
  %cmp50 = icmp sgt i32 %nx, 0, !dbg !813
  br i1 %cmp50, label %for.body.lr.ph, label %for.cond6.preheader, !dbg !813

for.body.lr.ph:                                   ; preds = %entry
  %3 = load i32** %nnx, align 8, !dbg !815, !tbaa !797
  br label %for.body, !dbg !813

for.cond6.preheader:                              ; preds = %for.body, %entry
  %cmp848 = icmp sgt i32 %ny, 0, !dbg !816
  br i1 %cmp848, label %for.body9.lr.ph, label %for.cond16.preheader, !dbg !816

for.body9.lr.ph:                                  ; preds = %for.cond6.preheader
  %4 = load i32** %nny, align 8, !dbg !818, !tbaa !797
  br label %for.body9, !dbg !816

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %indvars.iv54 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next55, %for.body ]
  %5 = trunc i64 %indvars.iv54 to i32, !dbg !815
  %rem = srem i32 %5, %nx, !dbg !815
  %arrayidx = getelementptr inbounds i32* %3, i64 %indvars.iv54, !dbg !815
  store i32 %rem, i32* %arrayidx, align 4, !dbg !815, !tbaa !699
  %indvars.iv.next55 = add i64 %indvars.iv54, 1, !dbg !813
  %6 = trunc i64 %indvars.iv.next55 to i32, !dbg !813
  %cmp = icmp slt i32 %6, %mul, !dbg !813
  br i1 %cmp, label %for.body, label %for.cond6.preheader, !dbg !813

for.cond16.preheader:                             ; preds = %for.body9, %for.cond6.preheader
  %cmp1846 = icmp sgt i32 %nz, 0, !dbg !819
  br i1 %cmp1846, label %for.body19, label %for.end25, !dbg !819

for.body9:                                        ; preds = %for.body9.lr.ph, %for.body9
  %indvars.iv52 = phi i64 [ 0, %for.body9.lr.ph ], [ %indvars.iv.next53, %for.body9 ]
  %7 = trunc i64 %indvars.iv52 to i32, !dbg !818
  %rem10 = srem i32 %7, %ny, !dbg !818
  %arrayidx12 = getelementptr inbounds i32* %4, i64 %indvars.iv52, !dbg !818
  store i32 %rem10, i32* %arrayidx12, align 4, !dbg !818, !tbaa !699
  %indvars.iv.next53 = add i64 %indvars.iv52, 1, !dbg !816
  %8 = trunc i64 %indvars.iv.next53 to i32, !dbg !816
  %cmp8 = icmp slt i32 %8, %mul1, !dbg !816
  br i1 %cmp8, label %for.body9, label %for.cond16.preheader, !dbg !816

for.body19:                                       ; preds = %for.cond16.preheader, %for.body19
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body19 ], [ 0, %for.cond16.preheader ]
  %9 = trunc i64 %indvars.iv to i32, !dbg !821
  %rem20 = srem i32 %9, %nz, !dbg !821
  %arrayidx22 = getelementptr inbounds i32* %2, i64 %indvars.iv, !dbg !821
  store i32 %rem20, i32* %arrayidx22, align 4, !dbg !821, !tbaa !699
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !819
  %10 = trunc i64 %indvars.iv.next to i32, !dbg !819
  %cmp18 = icmp slt i32 %10, %mul3, !dbg !819
  br i1 %cmp18, label %for.body19, label %for.end25, !dbg !819

for.end25:                                        ; preds = %for.body19, %for.cond16.preheader
  ret void, !dbg !822
}

; Function Attrs: nounwind optsize uwtable
define float @gather_inner(i32* nocapture %JCXYZ, float* nocapture %WXYZ, i32* nocapture %ixw, i32* nocapture %iyw, i32* nocapture %izw, i32 %la2, i32 %la12, float %c1x, float %c1y, float %c1z, float %c2x, float %c2y, float %c2z, float %qi, float* nocapture %f, float* nocapture %ptr) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32* %JCXYZ}, i64 0, metadata !326), !dbg !823
  tail call void @llvm.dbg.value(metadata !{float* %WXYZ}, i64 0, metadata !327), !dbg !823
  tail call void @llvm.dbg.value(metadata !{i32* %ixw}, i64 0, metadata !328), !dbg !823
  tail call void @llvm.dbg.value(metadata !{i32* %iyw}, i64 0, metadata !329), !dbg !823
  tail call void @llvm.dbg.value(metadata !{i32* %izw}, i64 0, metadata !330), !dbg !823
  tail call void @llvm.dbg.value(metadata !{i32 %la2}, i64 0, metadata !331), !dbg !824
  tail call void @llvm.dbg.value(metadata !{i32 %la12}, i64 0, metadata !332), !dbg !824
  tail call void @llvm.dbg.value(metadata !{float %c1x}, i64 0, metadata !333), !dbg !825
  tail call void @llvm.dbg.value(metadata !{float %c1y}, i64 0, metadata !334), !dbg !825
  tail call void @llvm.dbg.value(metadata !{float %c1z}, i64 0, metadata !335), !dbg !825
  tail call void @llvm.dbg.value(metadata !{float %c2x}, i64 0, metadata !336), !dbg !825
  tail call void @llvm.dbg.value(metadata !{float %c2y}, i64 0, metadata !337), !dbg !825
  tail call void @llvm.dbg.value(metadata !{float %c2z}, i64 0, metadata !338), !dbg !825
  tail call void @llvm.dbg.value(metadata !{float %qi}, i64 0, metadata !339), !dbg !826
  tail call void @llvm.dbg.value(metadata !{float* %f}, i64 0, metadata !340), !dbg !826
  tail call void @llvm.dbg.value(metadata !{float* %ptr}, i64 0, metadata !341), !dbg !826
  tail call void @llvm.dbg.value(metadata !827, i64 0, metadata !342), !dbg !828
  tail call void @llvm.dbg.value(metadata !827, i64 0, metadata !343), !dbg !829
  tail call void @llvm.dbg.value(metadata !827, i64 0, metadata !344), !dbg !830
  tail call void @llvm.dbg.value(metadata !827, i64 0, metadata !345), !dbg !831
  tail call void @llvm.dbg.value(metadata !142, i64 0, metadata !348), !dbg !832
  tail call void @llvm.dbg.value(metadata !142, i64 0, metadata !347), !dbg !832
  br label %for.body, !dbg !832

for.body:                                         ; preds = %for.body, %entry
  %indvars.iv267 = phi i64 [ 0, %entry ], [ %indvars.iv.next268, %for.body ], !dbg !832
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %for.body ]
  %pi.0266 = phi float [ 0.000000e+00, %entry ], [ %add20, %for.body ]
  %fX.0265 = phi float [ 0.000000e+00, %entry ], [ %add62, %for.body ]
  %fY.0264 = phi float [ 0.000000e+00, %entry ], [ %add105, %for.body ]
  %fZ.0263 = phi float [ 0.000000e+00, %entry ], [ %add148, %for.body ]
  %arrayidx = getelementptr inbounds i32* %JCXYZ, i64 %indvars.iv267, !dbg !834
  %0 = load i32* %arrayidx, align 4, !dbg !834, !tbaa !699
  tail call void @llvm.dbg.value(metadata !{i32 %0}, i64 0, metadata !349), !dbg !834
  %1 = add nsw i64 %indvars.iv267, 1, !dbg !836
  %arrayidx2 = getelementptr inbounds i32* %JCXYZ, i64 %1, !dbg !836
  %2 = load i32* %arrayidx2, align 4, !dbg !836, !tbaa !699
  tail call void @llvm.dbg.value(metadata !{i32 %2}, i64 0, metadata !350), !dbg !836
  %3 = add nsw i64 %indvars.iv267, 2, !dbg !837
  %arrayidx5 = getelementptr inbounds i32* %JCXYZ, i64 %3, !dbg !837
  %4 = load i32* %arrayidx5, align 4, !dbg !837, !tbaa !699
  tail call void @llvm.dbg.value(metadata !{i32 %4}, i64 0, metadata !351), !dbg !837
  %arrayidx7 = getelementptr inbounds float* %WXYZ, i64 %indvars.iv, !dbg !838
  %5 = load float* %arrayidx7, align 4, !dbg !838, !tbaa !684
  tail call void @llvm.dbg.value(metadata !{float %5}, i64 0, metadata !346), !dbg !838
  %idxprom8 = sext i32 %0 to i64, !dbg !839
  %arrayidx9 = getelementptr inbounds i32* %ixw, i64 %idxprom8, !dbg !839
  %6 = load i32* %arrayidx9, align 4, !dbg !839, !tbaa !699
  tail call void @llvm.dbg.value(metadata !{i32 %6}, i64 0, metadata !352), !dbg !839
  %idxprom10 = sext i32 %2 to i64, !dbg !840
  %arrayidx11 = getelementptr inbounds i32* %iyw, i64 %idxprom10, !dbg !840
  %7 = load i32* %arrayidx11, align 4, !dbg !840, !tbaa !699
  tail call void @llvm.dbg.value(metadata !{i32 %7}, i64 0, metadata !353), !dbg !840
  %idxprom12 = sext i32 %4 to i64, !dbg !841
  %arrayidx13 = getelementptr inbounds i32* %izw, i64 %idxprom12, !dbg !841
  %8 = load i32* %arrayidx13, align 4, !dbg !841, !tbaa !699
  tail call void @llvm.dbg.value(metadata !{i32 %8}, i64 0, metadata !354), !dbg !841
  %mul = mul nsw i32 %6, %la12, !dbg !842
  %mul14 = mul nsw i32 %7, %la2, !dbg !842
  %add15 = add nsw i32 %mul14, %mul, !dbg !842
  %add16 = add nsw i32 %add15, %8, !dbg !842
  %idxprom17 = sext i32 %add16 to i64, !dbg !842
  %arrayidx18 = getelementptr inbounds float* %ptr, i64 %idxprom17, !dbg !842
  %9 = load float* %arrayidx18, align 4, !dbg !842, !tbaa !684
  %mul19 = fmul float %5, %9, !dbg !842
  %add20 = fadd float %pi.0266, %mul19, !dbg !842
  tail call void @llvm.dbg.value(metadata !{float %add20}, i64 0, metadata !342), !dbg !842
  %sub = add nsw i32 %0, -1, !dbg !843
  %idxprom21 = sext i32 %sub to i64, !dbg !843
  %arrayidx22 = getelementptr inbounds i32* %ixw, i64 %idxprom21, !dbg !843
  %10 = load i32* %arrayidx22, align 4, !dbg !843, !tbaa !699
  %mul23 = mul nsw i32 %10, %la12, !dbg !843
  %add25 = add i32 %8, %mul14, !dbg !843
  %add26 = add i32 %add25, %mul23, !dbg !843
  %idxprom27 = sext i32 %add26 to i64, !dbg !843
  %arrayidx28 = getelementptr inbounds float* %ptr, i64 %idxprom27, !dbg !843
  %11 = load float* %arrayidx28, align 4, !dbg !843, !tbaa !684
  %add29 = add nsw i32 %0, 1, !dbg !843
  %idxprom30 = sext i32 %add29 to i64, !dbg !843
  %arrayidx31 = getelementptr inbounds i32* %ixw, i64 %idxprom30, !dbg !843
  %12 = load i32* %arrayidx31, align 4, !dbg !843, !tbaa !699
  %mul32 = mul nsw i32 %12, %la12, !dbg !843
  %add35 = add i32 %add25, %mul32, !dbg !843
  %idxprom36 = sext i32 %add35 to i64, !dbg !843
  %arrayidx37 = getelementptr inbounds float* %ptr, i64 %idxprom36, !dbg !843
  %13 = load float* %arrayidx37, align 4, !dbg !843, !tbaa !684
  %sub38 = fsub float %11, %13, !dbg !843
  %mul39 = fmul float %sub38, %c1x, !dbg !843
  %sub40 = add nsw i32 %0, -2, !dbg !843
  %idxprom41 = sext i32 %sub40 to i64, !dbg !843
  %arrayidx42 = getelementptr inbounds i32* %ixw, i64 %idxprom41, !dbg !843
  %14 = load i32* %arrayidx42, align 4, !dbg !843, !tbaa !699
  %mul43 = mul nsw i32 %14, %la12, !dbg !843
  %add46 = add i32 %add25, %mul43, !dbg !843
  %idxprom47 = sext i32 %add46 to i64, !dbg !843
  %arrayidx48 = getelementptr inbounds float* %ptr, i64 %idxprom47, !dbg !843
  %15 = load float* %arrayidx48, align 4, !dbg !843, !tbaa !684
  %add49 = add nsw i32 %0, 2, !dbg !843
  %idxprom50 = sext i32 %add49 to i64, !dbg !843
  %arrayidx51 = getelementptr inbounds i32* %ixw, i64 %idxprom50, !dbg !843
  %16 = load i32* %arrayidx51, align 4, !dbg !843, !tbaa !699
  %mul52 = mul nsw i32 %16, %la12, !dbg !843
  %add55 = add i32 %add25, %mul52, !dbg !843
  %idxprom56 = sext i32 %add55 to i64, !dbg !843
  %arrayidx57 = getelementptr inbounds float* %ptr, i64 %idxprom56, !dbg !843
  %17 = load float* %arrayidx57, align 4, !dbg !843, !tbaa !684
  %sub58 = fsub float %15, %17, !dbg !843
  %mul59 = fmul float %sub58, %c2x, !dbg !843
  %add60 = fadd float %mul39, %mul59, !dbg !843
  %mul61 = fmul float %5, %add60, !dbg !843
  %add62 = fadd float %fX.0265, %mul61, !dbg !843
  tail call void @llvm.dbg.value(metadata !{float %add62}, i64 0, metadata !343), !dbg !843
  %sub64 = add nsw i32 %2, -1, !dbg !844
  %idxprom65 = sext i32 %sub64 to i64, !dbg !844
  %arrayidx66 = getelementptr inbounds i32* %iyw, i64 %idxprom65, !dbg !844
  %18 = load i32* %arrayidx66, align 4, !dbg !844, !tbaa !699
  %mul67 = mul nsw i32 %18, %la2, !dbg !844
  %add68 = add i32 %8, %mul, !dbg !844
  %add69 = add i32 %add68, %mul67, !dbg !844
  %idxprom70 = sext i32 %add69 to i64, !dbg !844
  %arrayidx71 = getelementptr inbounds float* %ptr, i64 %idxprom70, !dbg !844
  %19 = load float* %arrayidx71, align 4, !dbg !844, !tbaa !684
  %add73 = add nsw i32 %2, 1, !dbg !844
  %idxprom74 = sext i32 %add73 to i64, !dbg !844
  %arrayidx75 = getelementptr inbounds i32* %iyw, i64 %idxprom74, !dbg !844
  %20 = load i32* %arrayidx75, align 4, !dbg !844, !tbaa !699
  %mul76 = mul nsw i32 %20, %la2, !dbg !844
  %add78 = add i32 %add68, %mul76, !dbg !844
  %idxprom79 = sext i32 %add78 to i64, !dbg !844
  %arrayidx80 = getelementptr inbounds float* %ptr, i64 %idxprom79, !dbg !844
  %21 = load float* %arrayidx80, align 4, !dbg !844, !tbaa !684
  %sub81 = fsub float %19, %21, !dbg !844
  %mul82 = fmul float %sub81, %c1y, !dbg !844
  %sub84 = add nsw i32 %2, -2, !dbg !844
  %idxprom85 = sext i32 %sub84 to i64, !dbg !844
  %arrayidx86 = getelementptr inbounds i32* %iyw, i64 %idxprom85, !dbg !844
  %22 = load i32* %arrayidx86, align 4, !dbg !844, !tbaa !699
  %mul87 = mul nsw i32 %22, %la2, !dbg !844
  %add89 = add i32 %add68, %mul87, !dbg !844
  %idxprom90 = sext i32 %add89 to i64, !dbg !844
  %arrayidx91 = getelementptr inbounds float* %ptr, i64 %idxprom90, !dbg !844
  %23 = load float* %arrayidx91, align 4, !dbg !844, !tbaa !684
  %add93 = add nsw i32 %2, 2, !dbg !844
  %idxprom94 = sext i32 %add93 to i64, !dbg !844
  %arrayidx95 = getelementptr inbounds i32* %iyw, i64 %idxprom94, !dbg !844
  %24 = load i32* %arrayidx95, align 4, !dbg !844, !tbaa !699
  %mul96 = mul nsw i32 %24, %la2, !dbg !844
  %add98 = add i32 %add68, %mul96, !dbg !844
  %idxprom99 = sext i32 %add98 to i64, !dbg !844
  %arrayidx100 = getelementptr inbounds float* %ptr, i64 %idxprom99, !dbg !844
  %25 = load float* %arrayidx100, align 4, !dbg !844, !tbaa !684
  %sub101 = fsub float %23, %25, !dbg !844
  %mul102 = fmul float %sub101, %c2y, !dbg !844
  %add103 = fadd float %mul82, %mul102, !dbg !844
  %mul104 = fmul float %5, %add103, !dbg !844
  %add105 = fadd float %fY.0264, %mul104, !dbg !844
  tail call void @llvm.dbg.value(metadata !{float %add105}, i64 0, metadata !344), !dbg !844
  %sub109 = add nsw i32 %4, -1, !dbg !845
  %idxprom110 = sext i32 %sub109 to i64, !dbg !845
  %arrayidx111 = getelementptr inbounds i32* %izw, i64 %idxprom110, !dbg !845
  %26 = load i32* %arrayidx111, align 4, !dbg !845, !tbaa !699
  %add112 = add nsw i32 %26, %add15, !dbg !845
  %idxprom113 = sext i32 %add112 to i64, !dbg !845
  %arrayidx114 = getelementptr inbounds float* %ptr, i64 %idxprom113, !dbg !845
  %27 = load float* %arrayidx114, align 4, !dbg !845, !tbaa !684
  %add118 = add nsw i32 %4, 1, !dbg !845
  %idxprom119 = sext i32 %add118 to i64, !dbg !845
  %arrayidx120 = getelementptr inbounds i32* %izw, i64 %idxprom119, !dbg !845
  %28 = load i32* %arrayidx120, align 4, !dbg !845, !tbaa !699
  %add121 = add nsw i32 %28, %add15, !dbg !845
  %idxprom122 = sext i32 %add121 to i64, !dbg !845
  %arrayidx123 = getelementptr inbounds float* %ptr, i64 %idxprom122, !dbg !845
  %29 = load float* %arrayidx123, align 4, !dbg !845, !tbaa !684
  %sub124 = fsub float %27, %29, !dbg !845
  %mul125 = fmul float %sub124, %c1z, !dbg !845
  %sub129 = add nsw i32 %4, -2, !dbg !845
  %idxprom130 = sext i32 %sub129 to i64, !dbg !845
  %arrayidx131 = getelementptr inbounds i32* %izw, i64 %idxprom130, !dbg !845
  %30 = load i32* %arrayidx131, align 4, !dbg !845, !tbaa !699
  %add132 = add nsw i32 %30, %add15, !dbg !845
  %idxprom133 = sext i32 %add132 to i64, !dbg !845
  %arrayidx134 = getelementptr inbounds float* %ptr, i64 %idxprom133, !dbg !845
  %31 = load float* %arrayidx134, align 4, !dbg !845, !tbaa !684
  %add138 = add nsw i32 %4, 2, !dbg !845
  %idxprom139 = sext i32 %add138 to i64, !dbg !845
  %arrayidx140 = getelementptr inbounds i32* %izw, i64 %idxprom139, !dbg !845
  %32 = load i32* %arrayidx140, align 4, !dbg !845, !tbaa !699
  %add141 = add nsw i32 %32, %add15, !dbg !845
  %idxprom142 = sext i32 %add141 to i64, !dbg !845
  %arrayidx143 = getelementptr inbounds float* %ptr, i64 %idxprom142, !dbg !845
  %33 = load float* %arrayidx143, align 4, !dbg !845, !tbaa !684
  %sub144 = fsub float %31, %33, !dbg !845
  %mul145 = fmul float %sub144, %c2z, !dbg !845
  %add146 = fadd float %mul125, %mul145, !dbg !845
  %mul147 = fmul float %5, %add146, !dbg !845
  %add148 = fadd float %fZ.0263, %mul147, !dbg !845
  tail call void @llvm.dbg.value(metadata !{float %add148}, i64 0, metadata !345), !dbg !845
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !832
  %indvars.iv.next268 = add i64 %indvars.iv267, 3, !dbg !832
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !832
  %exitcond = icmp eq i32 %lftr.wideiv, 27, !dbg !832
  br i1 %exitcond, label %for.end, label %for.body, !dbg !832

for.end:                                          ; preds = %for.body
  %mul150 = fmul float %add62, %qi, !dbg !846
  %34 = load float* %f, align 4, !dbg !846, !tbaa !684
  %add152 = fadd float %mul150, %34, !dbg !846
  store float %add152, float* %f, align 4, !dbg !846, !tbaa !684
  %mul153 = fmul float %add105, %qi, !dbg !847
  %arrayidx154 = getelementptr inbounds float* %f, i64 1, !dbg !847
  %35 = load float* %arrayidx154, align 4, !dbg !847, !tbaa !684
  %add155 = fadd float %mul153, %35, !dbg !847
  store float %add155, float* %arrayidx154, align 4, !dbg !847, !tbaa !684
  %mul156 = fmul float %add148, %qi, !dbg !848
  %arrayidx157 = getelementptr inbounds float* %f, i64 2, !dbg !848
  %36 = load float* %arrayidx157, align 4, !dbg !848, !tbaa !684
  %add158 = fadd float %mul156, %36, !dbg !848
  store float %add158, float* %arrayidx157, align 4, !dbg !848, !tbaa !684
  ret float %add20, !dbg !849
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
  call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %fp}, i64 0, metadata !372), !dbg !850
  call void @llvm.dbg.value(metadata !{i32 %bVerbose}, i64 0, metadata !373), !dbg !850
  call void @llvm.dbg.value(metadata !{%struct.t_fftgrid* %grid}, i64 0, metadata !374), !dbg !850
  call void @llvm.dbg.value(metadata !{float*** %ghat}, i64 0, metadata !375), !dbg !850
  call void @llvm.dbg.value(metadata !{%struct.t_commrec* %cr}, i64 0, metadata !376), !dbg !851
  call void @llvm.dbg.declare(metadata !{i32* %nx}, metadata !382), !dbg !852
  call void @llvm.dbg.declare(metadata !{i32* %ny}, metadata !383), !dbg !852
  call void @llvm.dbg.declare(metadata !{i32* %nz}, metadata !384), !dbg !852
  call void @llvm.dbg.declare(metadata !{i32* %la2}, metadata !385), !dbg !852
  call void @llvm.dbg.declare(metadata !{i32* %la12}, metadata !386), !dbg !852
  call void @llvm.dbg.declare(metadata !{%struct.t_fft_c** %ptr}, metadata !387), !dbg !853
  %0 = bitcast %struct.t_fft_c** %ptr to float**, !dbg !854
  call void @unpack_fftgrid(%struct.t_fftgrid* %grid, i32* %nx, i32* %ny, i32* %nz, i32* %la2, i32* %la12, i32 0, float** %0) #5, !dbg !854
  %nptr = getelementptr inbounds %struct.t_fftgrid* %grid, i64 0, i32 10, !dbg !855
  %1 = load i32* %nptr, align 4, !dbg !855, !tbaa !699
  %call = call i8* @save_calloc(i8* getelementptr inbounds ([6 x i8]* @.str3, i64 0, i64 0), i8* getelementptr inbounds ([52 x i8]* @.str4, i64 0, i64 0), i32 373, i32 %1, i32 4) #5, !dbg !855
  %2 = bitcast i8* %call to i32*, !dbg !855
  call void @llvm.dbg.value(metadata !{i32* %2}, i64 0, metadata !394), !dbg !855
  %nnodes = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 1, !dbg !856
  %3 = load i32* %nnodes, align 4, !dbg !856, !tbaa !699
  %cmp = icmp sgt i32 %3, 1, !dbg !856
  br i1 %cmp, label %if.end, label %lor.lhs.false, !dbg !856

lor.lhs.false:                                    ; preds = %entry
  %nthreads = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 5, !dbg !856
  %4 = load i32* %nthreads, align 4, !dbg !856, !tbaa !699
  %cmp1 = icmp sgt i32 %4, 1, !dbg !856
  br i1 %cmp1, label %if.end, label %for.cond.preheader, !dbg !856

for.cond.preheader:                               ; preds = %lor.lhs.false
  call void @llvm.dbg.value(metadata !{i32* %nx}, i64 0, metadata !382), !dbg !857
  %5 = load i32* %nx, align 4, !dbg !857, !tbaa !699
  %cmp253 = icmp sgt i32 %5, 0, !dbg !857
  br i1 %cmp253, label %for.cond3.preheader.lr.ph, label %if.end, !dbg !857

for.cond3.preheader.lr.ph:                        ; preds = %for.cond.preheader
  call void @llvm.dbg.value(metadata !{%struct.t_fft_c** %ptr}, i64 0, metadata !387), !dbg !860
  %6 = load %struct.t_fft_c** %ptr, align 8, !dbg !860, !tbaa !797
  call void @llvm.dbg.value(metadata !{%struct.t_fft_c** %ptr}, i64 0, metadata !387), !dbg !866
  call void @llvm.dbg.value(metadata !{i32* %ny}, i64 0, metadata !383), !dbg !867
  %.pre = load i32* %ny, align 4, !dbg !867, !tbaa !699
  br label %for.cond3.preheader, !dbg !857

for.cond3.preheader:                              ; preds = %for.cond3.preheader.lr.ph, %for.inc28
  %7 = phi i32 [ %5, %for.cond3.preheader.lr.ph ], [ %26, %for.inc28 ]
  %8 = phi i32 [ %.pre, %for.cond3.preheader.lr.ph ], [ %27, %for.inc28 ], !dbg !867
  %indvars.iv58 = phi i64 [ 0, %for.cond3.preheader.lr.ph ], [ %indvars.iv.next59, %for.inc28 ]
  call void @llvm.dbg.value(metadata !{i32* %ny}, i64 0, metadata !383), !dbg !867
  %cmp450 = icmp sgt i32 %8, 0, !dbg !867
  br i1 %cmp450, label %for.cond6.preheader.lr.ph, label %for.inc28, !dbg !867

for.cond6.preheader.lr.ph:                        ; preds = %for.cond3.preheader
  %arrayidx = getelementptr inbounds float*** %ghat, i64 %indvars.iv58, !dbg !868
  call void @llvm.dbg.value(metadata !{i32* %nz}, i64 0, metadata !384), !dbg !869
  %.pre61 = load i32* %nz, align 4, !dbg !869, !tbaa !699
  br label %for.cond6.preheader, !dbg !867

for.cond6.preheader:                              ; preds = %for.cond6.preheader.lr.ph, %for.inc25
  %9 = phi i32 [ %8, %for.cond6.preheader.lr.ph ], [ %23, %for.inc25 ]
  %10 = phi i32 [ %.pre61, %for.cond6.preheader.lr.ph ], [ %24, %for.inc25 ], !dbg !869
  %indvars.iv56 = phi i64 [ 0, %for.cond6.preheader.lr.ph ], [ %indvars.iv.next57, %for.inc25 ]
  call void @llvm.dbg.value(metadata !{i32* %nz}, i64 0, metadata !384), !dbg !869
  %cmp748 = icmp sgt i32 %10, -2, !dbg !869
  br i1 %cmp748, label %for.body8.lr.ph, label %for.inc25, !dbg !869

for.body8.lr.ph:                                  ; preds = %for.cond6.preheader
  %11 = load float*** %arrayidx, align 8, !dbg !868, !tbaa !797
  %arrayidx11 = getelementptr inbounds float** %11, i64 %indvars.iv56, !dbg !868
  %12 = load float** %arrayidx11, align 8, !dbg !868, !tbaa !797
  br label %for.body8, !dbg !869

for.body8:                                        ; preds = %for.body8.lr.ph, %for.body8
  %indvars.iv = phi i64 [ 0, %for.body8.lr.ph ], [ %indvars.iv.next, %for.body8 ]
  %arrayidx12 = getelementptr inbounds float* %12, i64 %indvars.iv, !dbg !868
  %13 = load float* %arrayidx12, align 4, !dbg !868, !tbaa !684
  call void @llvm.dbg.value(metadata !{float %13}, i64 0, metadata !381), !dbg !868
  call void @llvm.dbg.value(metadata !{i32* %la12}, i64 0, metadata !386), !dbg !870
  %14 = load i32* %la12, align 4, !dbg !870, !tbaa !699
  %15 = trunc i64 %indvars.iv58 to i32, !dbg !870
  %mul = mul nsw i32 %14, %15, !dbg !870
  call void @llvm.dbg.value(metadata !{i32* %la2}, i64 0, metadata !385), !dbg !870
  %16 = load i32* %la2, align 4, !dbg !870, !tbaa !699
  %17 = trunc i64 %indvars.iv56 to i32, !dbg !870
  %mul13 = mul nsw i32 %16, %17, !dbg !870
  %18 = trunc i64 %indvars.iv to i32, !dbg !870
  %add14 = add i32 %mul, %18, !dbg !870
  %add15 = add i32 %add14, %mul13, !dbg !870
  call void @llvm.dbg.value(metadata !{i32 %add15}, i64 0, metadata !380), !dbg !870
  %idxprom16 = sext i32 %add15 to i64, !dbg !860
  call void @llvm.dbg.value(metadata !{%struct.t_fft_c** %ptr}, i64 0, metadata !387), !dbg !860
  %re = getelementptr inbounds %struct.t_fft_c* %6, i64 %idxprom16, i32 0, !dbg !860
  %19 = load float* %re, align 4, !dbg !860, !tbaa !684
  %mul18 = fmul float %13, %19, !dbg !860
  store float %mul18, float* %re, align 4, !dbg !860, !tbaa !684
  call void @llvm.dbg.value(metadata !{%struct.t_fft_c** %ptr}, i64 0, metadata !387), !dbg !866
  %im = getelementptr inbounds %struct.t_fft_c* %6, i64 %idxprom16, i32 1, !dbg !866
  %20 = load float* %im, align 4, !dbg !866, !tbaa !684
  %mul21 = fmul float %13, %20, !dbg !866
  store float %mul21, float* %im, align 4, !dbg !866, !tbaa !684
  %arrayidx23 = getelementptr inbounds i32* %2, i64 %idxprom16, !dbg !871
  %21 = load i32* %arrayidx23, align 4, !dbg !871, !tbaa !699
  %inc = add nsw i32 %21, 1, !dbg !871
  store i32 %inc, i32* %arrayidx23, align 4, !dbg !871, !tbaa !699
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !869
  call void @llvm.dbg.value(metadata !{i32* %nz}, i64 0, metadata !384), !dbg !869
  %22 = load i32* %nz, align 4, !dbg !869, !tbaa !699
  %div = sdiv i32 %22, 2, !dbg !869
  %cmp7 = icmp slt i32 %18, %div, !dbg !869
  br i1 %cmp7, label %for.body8, label %for.cond6.for.inc25_crit_edge, !dbg !869

for.cond6.for.inc25_crit_edge:                    ; preds = %for.body8
  call void @llvm.dbg.value(metadata !{i32* %ny}, i64 0, metadata !383), !dbg !867
  %.pre62 = load i32* %ny, align 4, !dbg !867, !tbaa !699
  br label %for.inc25, !dbg !869

for.inc25:                                        ; preds = %for.cond6.for.inc25_crit_edge, %for.cond6.preheader
  %23 = phi i32 [ %.pre62, %for.cond6.for.inc25_crit_edge ], [ %9, %for.cond6.preheader ], !dbg !867
  %24 = phi i32 [ %22, %for.cond6.for.inc25_crit_edge ], [ %10, %for.cond6.preheader ]
  %indvars.iv.next57 = add i64 %indvars.iv56, 1, !dbg !867
  call void @llvm.dbg.value(metadata !{i32* %ny}, i64 0, metadata !383), !dbg !867
  %25 = trunc i64 %indvars.iv.next57 to i32, !dbg !867
  %cmp4 = icmp slt i32 %25, %23, !dbg !867
  br i1 %cmp4, label %for.cond6.preheader, label %for.cond3.for.inc28_crit_edge, !dbg !867

for.cond3.for.inc28_crit_edge:                    ; preds = %for.inc25
  call void @llvm.dbg.value(metadata !{i32* %nx}, i64 0, metadata !382), !dbg !857
  %.pre60 = load i32* %nx, align 4, !dbg !857, !tbaa !699
  br label %for.inc28, !dbg !867

for.inc28:                                        ; preds = %for.cond3.for.inc28_crit_edge, %for.cond3.preheader
  %26 = phi i32 [ %.pre60, %for.cond3.for.inc28_crit_edge ], [ %7, %for.cond3.preheader ], !dbg !857
  %27 = phi i32 [ %23, %for.cond3.for.inc28_crit_edge ], [ %8, %for.cond3.preheader ]
  %indvars.iv.next59 = add i64 %indvars.iv58, 1, !dbg !857
  call void @llvm.dbg.value(metadata !{i32* %nx}, i64 0, metadata !382), !dbg !857
  %28 = trunc i64 %indvars.iv.next59 to i32, !dbg !857
  %cmp2 = icmp slt i32 %28, %26, !dbg !857
  br i1 %cmp2, label %for.cond3.preheader, label %if.end, !dbg !857

if.end:                                           ; preds = %for.cond.preheader, %for.inc28, %entry, %lor.lhs.false
  call void @save_free(i8* getelementptr inbounds ([6 x i8]* @.str3, i64 0, i64 0), i8* getelementptr inbounds ([52 x i8]* @.str4, i64 0, i64 0), i32 427, i8* %call) #5, !dbg !872
  ret void, !dbg !873
}

; Function Attrs: optsize
declare i8* @save_calloc(i8*, i8*, i32, i32, i32) #3

; Function Attrs: optsize
declare void @save_free(i8*, i8*, i32, i8*) #3

; Function Attrs: nounwind optsize uwtable
define void @solve_pppm(%struct._IO_FILE* nocapture %fp, %struct.t_commrec* %cr, %struct.t_fftgrid* %grid, float*** nocapture %ghat, float* nocapture %box, i32 %bVerbose, %struct.t_nrnb* nocapture %nrnb) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %fp}, i64 0, metadata !401), !dbg !874
  tail call void @llvm.dbg.value(metadata !{%struct.t_commrec* %cr}, i64 0, metadata !402), !dbg !874
  tail call void @llvm.dbg.value(metadata !{%struct.t_fftgrid* %grid}, i64 0, metadata !403), !dbg !875
  tail call void @llvm.dbg.value(metadata !{float*** %ghat}, i64 0, metadata !404), !dbg !875
  tail call void @llvm.dbg.value(metadata !{float* %box}, i64 0, metadata !405), !dbg !875
  tail call void @llvm.dbg.value(metadata !{i32 %bVerbose}, i64 0, metadata !406), !dbg !876
  tail call void @llvm.dbg.value(metadata !{%struct.t_nrnb* %nrnb}, i64 0, metadata !407), !dbg !876
  tail call void @gmxfft3D(%struct.t_fftgrid* %grid, i32 -1, %struct.t_commrec* %cr) #5, !dbg !877
  tail call void @convolution(%struct._IO_FILE* undef, i32 undef, %struct.t_fftgrid* %grid, float*** %ghat, %struct.t_commrec* %cr) #6, !dbg !878
  %tobool = icmp eq i32 %bVerbose, 0, !dbg !879
  br i1 %tobool, label %if.end, label %if.then, !dbg !879

if.then:                                          ; preds = %entry
  tail call void @gmxfft3D(%struct.t_fftgrid* %grid, i32 1, %struct.t_commrec* %cr) #5, !dbg !880
  br label %if.end, !dbg !880

if.end:                                           ; preds = %entry, %if.then
  %nxyz = getelementptr inbounds %struct.t_fftgrid* %grid, i64 0, i32 11, !dbg !881
  %0 = load i32* %nxyz, align 4, !dbg !881, !tbaa !699
  tail call void @llvm.dbg.value(metadata !{i32 %0}, i64 0, metadata !408), !dbg !881
  %conv = sitofp i32 %0 to double, !dbg !882
  %conv1 = sitofp i32 %0 to float, !dbg !882
  %conv2 = fpext float %conv1 to double, !dbg !882
  %call = tail call double @log(double %conv2) #5, !dbg !882
  %mul = fmul double %conv, %call, !dbg !882
  %div = fdiv double %mul, 0x3FE62E42FEFA39EF, !dbg !882
  %conv4 = fptosi double %div to i32, !dbg !882
  tail call void @llvm.dbg.value(metadata !{i32 %conv4}, i64 0, metadata !409), !dbg !882
  %mul5 = shl nsw i32 %conv4, 1, !dbg !883
  %conv6 = sitofp i32 %mul5 to double, !dbg !883
  %arrayidx = getelementptr inbounds %struct.t_nrnb* %nrnb, i64 0, i32 0, i64 84, !dbg !883
  %1 = load double* %arrayidx, align 8, !dbg !883, !tbaa !805
  %add = fadd double %1, %conv6, !dbg !883
  store double %add, double* %arrayidx, align 8, !dbg !883, !tbaa !805
  %arrayidx9 = getelementptr inbounds %struct.t_nrnb* %nrnb, i64 0, i32 0, i64 85, !dbg !884
  %2 = load double* %arrayidx9, align 8, !dbg !884, !tbaa !805
  %add10 = fadd double %conv, %2, !dbg !884
  store double %add10, double* %arrayidx9, align 8, !dbg !884, !tbaa !805
  ret void, !dbg !885
}

; Function Attrs: optsize
declare void @gmxfft3D(%struct.t_fftgrid*, i32, %struct.t_commrec*) #3

; Function Attrs: nounwind optsize
declare double @log(double) #4

; Function Attrs: nounwind optsize uwtable
define void @init_pppm(%struct._IO_FILE* %log, %struct.t_commrec* %cr, %struct.t_nsborder* nocapture %nsb, i32 %bVerbose, i32 %bOld, float* %box, i8* %ghatfn, %struct.t_inputrec* nocapture %ir) #0 {
entry:
  %porder = alloca i32, align 4
  %grids = alloca [3 x i32], align 4
  %r1 = alloca float, align 4
  %rc = alloca float, align 4
  %spacing = alloca [3 x float], align 4
  call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %log}, i64 0, metadata !542), !dbg !886
  call void @llvm.dbg.value(metadata !{%struct.t_commrec* %cr}, i64 0, metadata !543), !dbg !886
  call void @llvm.dbg.value(metadata !{%struct.t_nsborder* %nsb}, i64 0, metadata !544), !dbg !886
  call void @llvm.dbg.value(metadata !{i32 %bVerbose}, i64 0, metadata !545), !dbg !887
  call void @llvm.dbg.value(metadata !{i32 %bOld}, i64 0, metadata !546), !dbg !887
  call void @llvm.dbg.value(metadata !{float* %box}, i64 0, metadata !547), !dbg !887
  call void @llvm.dbg.value(metadata !{i8* %ghatfn}, i64 0, metadata !548), !dbg !887
  call void @llvm.dbg.value(metadata !{%struct.t_inputrec* %ir}, i64 0, metadata !549), !dbg !887
  call void @llvm.dbg.declare(metadata !{i32* %porder}, metadata !554), !dbg !888
  call void @llvm.dbg.declare(metadata !{[3 x i32]* %grids}, metadata !555), !dbg !889
  call void @llvm.dbg.declare(metadata !{float* %r1}, metadata !556), !dbg !890
  call void @llvm.dbg.declare(metadata !{float* %rc}, metadata !557), !dbg !890
  call void @llvm.dbg.value(metadata !891, i64 0, metadata !558), !dbg !892
  call void @llvm.dbg.declare(metadata !{[3 x float]* %spacing}, metadata !559), !dbg !893
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([59 x i8]* @.str5, i64 0, i64 0)) #5, !dbg !894
  %cmp = icmp eq %struct.t_commrec* %cr, null, !dbg !895
  br i1 %cmp, label %if.end3, label %if.then, !dbg !895

if.then:                                          ; preds = %entry
  %nnodes = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 1, !dbg !896
  %0 = load i32* %nnodes, align 4, !dbg !896, !tbaa !699
  %cmp1 = icmp sgt i32 %0, 1, !dbg !896
  br i1 %cmp1, label %if.then2, label %if.end3, !dbg !896

if.then2:                                         ; preds = %if.then
  %1 = call i64 @fwrite(i8* getelementptr inbounds ([29 x i8]* @.str6, i64 0, i64 0), i64 28, i64 1, %struct._IO_FILE* %log), !dbg !898
  br label %if.end3, !dbg !898

if.end3:                                          ; preds = %entry, %if.then, %if.then2
  %2 = call i64 @fwrite(i8* getelementptr inbounds ([59 x i8]* @.str7, i64 0, i64 0), i64 58, i64 1, %struct._IO_FILE* %log), !dbg !899
  %call5 = call i32 @fexist(i8* %ghatfn) #5, !dbg !900
  %tobool = icmp eq i32 %call5, 0, !dbg !900
  br i1 %tobool, label %if.then6, label %if.else, !dbg !900

if.then6:                                         ; preds = %if.end3
  store float 0x3FFD9999A0000000, float* getelementptr inbounds ([3 x float]* @beta, i64 0, i64 2), align 4, !dbg !901, !tbaa !684
  store float 0x3FFD9999A0000000, float* getelementptr inbounds ([3 x float]* @beta, i64 0, i64 1), align 4, !dbg !901, !tbaa !684
  store float 0x3FFD9999A0000000, float* getelementptr inbounds ([3 x float]* @beta, i64 0, i64 0), align 4, !dbg !901, !tbaa !684
  %nkx = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 17, !dbg !903
  %3 = load i32* %nkx, align 4, !dbg !903, !tbaa !699
  call void @llvm.dbg.value(metadata !{i32 %3}, i64 0, metadata !550), !dbg !903
  %nky = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 18, !dbg !904
  %4 = load i32* %nky, align 4, !dbg !904, !tbaa !699
  call void @llvm.dbg.value(metadata !{i32 %4}, i64 0, metadata !551), !dbg !904
  %nkz = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 19, !dbg !905
  %5 = load i32* %nkz, align 4, !dbg !905, !tbaa !699
  call void @llvm.dbg.value(metadata !{i32 %5}, i64 0, metadata !552), !dbg !905
  %6 = call i64 @fwrite(i8* getelementptr inbounds ([26 x i8]* @.str8, i64 0, i64 0), i64 25, i64 1, %struct._IO_FILE* %log), !dbg !906
  %call8 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %log, i8* getelementptr inbounds ([27 x i8]* @.str9, i64 0, i64 0), i32 %3, i32 %4, i32 %5) #5, !dbg !907
  %cmp9 = icmp slt i32 %3, 4, !dbg !908
  %cmp10 = icmp slt i32 %4, 4, !dbg !908
  %or.cond = or i1 %cmp9, %cmp10, !dbg !908
  %cmp12 = icmp slt i32 %5, 4, !dbg !908
  %or.cond134 = or i1 %or.cond, %cmp12, !dbg !908
  br i1 %or.cond134, label %if.then13, label %if.end14, !dbg !908

if.then13:                                        ; preds = %if.then6
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([49 x i8]* @.str10, i64 0, i64 0)) #5, !dbg !909
  br label %if.end14, !dbg !909

if.end14:                                         ; preds = %if.then6, %if.then13
  %call15 = call float*** @mk_rgrid(i32 %3, i32 %4, i32 %5) #5, !dbg !910
  store float*** %call15, float**** @ghat, align 8, !dbg !910, !tbaa !797
  %rcoulomb_switch = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 37, !dbg !911
  %7 = load float* %rcoulomb_switch, align 4, !dbg !911, !tbaa !684
  %rcoulomb = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 38, !dbg !911
  %8 = load float* %rcoulomb, align 4, !dbg !911, !tbaa !684
  call void @mk_ghat(%struct._IO_FILE* null, i32 %3, i32 %4, i32 %5, float*** %call15, float* %box, float %7, float %8, i32 1, i32 %bOld) #5, !dbg !911
  %tobool16 = icmp eq i32 %bVerbose, 0, !dbg !912
  br i1 %tobool16, label %if.end70, label %if.then17, !dbg !912

if.then17:                                        ; preds = %if.end14
  %9 = load float**** @ghat, align 8, !dbg !913, !tbaa !797
  call void @pr_scalar_gk(i8* getelementptr inbounds ([14 x i8]* @.str11, i64 0, i64 0), i32 %3, i32 %4, i32 %5, float* %box, float*** %9) #5, !dbg !913
  br label %if.end70, !dbg !913

if.else:                                          ; preds = %if.end3
  %10 = load %struct._IO_FILE** @stderr, align 8, !dbg !914, !tbaa !797
  %call19 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %10, i8* getelementptr inbounds ([31 x i8]* @.str12, i64 0, i64 0), i8* %ghatfn) #5, !dbg !914
  %arraydecay = getelementptr inbounds [3 x i32]* %grids, i64 0, i64 0, !dbg !916
  %arraydecay20 = getelementptr inbounds [3 x float]* %spacing, i64 0, i64 0, !dbg !916
  %call21 = call float*** @rd_ghat(%struct._IO_FILE* %log, i8* %ghatfn, i32* %arraydecay, float* %arraydecay20, float* getelementptr inbounds ([3 x float]* @beta, i64 0, i64 0), i32* %porder, float* %r1, float* %rc) #5, !dbg !916
  store float*** %call21, float**** @ghat, align 8, !dbg !916, !tbaa !797
  call void @llvm.dbg.value(metadata !{float* %r1}, i64 0, metadata !556), !dbg !917
  %11 = load float* %r1, align 4, !dbg !917, !tbaa !684
  %rcoulomb_switch22 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 37, !dbg !917
  %12 = load float* %rcoulomb_switch22, align 4, !dbg !917, !tbaa !684
  %sub = fsub float %11, %12, !dbg !917
  %fabsf = call float @fabsf(float %sub) #7, !dbg !917
  %cmp24 = fcmp ogt float %fabsf, 0x3EE4F8B580000000, !dbg !917
  br i1 %cmp24, label %if.else.if.then33_crit_edge, label %lor.lhs.false26, !dbg !917

if.else.if.then33_crit_edge:                      ; preds = %if.else
  %rcoulomb36.phi.trans.insert = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 38
  %.pre = load float* %rcoulomb36.phi.trans.insert, align 4, !dbg !918, !tbaa !684
  call void @llvm.dbg.value(metadata !{float* %rc}, i64 0, metadata !557), !dbg !918
  %.pre136 = load float* %rc, align 4, !dbg !918, !tbaa !684
  br label %if.then33, !dbg !917

lor.lhs.false26:                                  ; preds = %if.else
  call void @llvm.dbg.value(metadata !{float* %rc}, i64 0, metadata !557), !dbg !917
  %13 = load float* %rc, align 4, !dbg !917, !tbaa !684
  %rcoulomb27 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 38, !dbg !917
  %14 = load float* %rcoulomb27, align 4, !dbg !917, !tbaa !684
  %sub28 = fsub float %13, %14, !dbg !917
  %fabsf132 = call float @fabsf(float %sub28) #7, !dbg !917
  %cmp31 = fcmp ogt float %fabsf132, 0x3EE4F8B580000000, !dbg !917
  br i1 %cmp31, label %if.then33, label %for.body, !dbg !917

if.then33:                                        ; preds = %if.else.if.then33_crit_edge, %lor.lhs.false26
  %15 = phi float [ %.pre136, %if.else.if.then33_crit_edge ], [ %13, %lor.lhs.false26 ]
  %16 = phi float [ %.pre, %if.else.if.then33_crit_edge ], [ %14, %lor.lhs.false26 ]
  %conv35 = fpext float %12 to double, !dbg !918
  %conv37 = fpext float %16 to double, !dbg !918
  call void @llvm.dbg.value(metadata !{float* %r1}, i64 0, metadata !556), !dbg !918
  %conv38 = fpext float %11 to double, !dbg !918
  call void @llvm.dbg.value(metadata !{float* %rc}, i64 0, metadata !557), !dbg !918
  %conv39 = fpext float %15 to double, !dbg !918
  %call40 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %log, i8* getelementptr inbounds ([71 x i8]* @.str13, i64 0, i64 0), double %conv35, double %conv37, double %conv38, double %conv39) #5, !dbg !918
  %call41 = call i32 @fflush(%struct._IO_FILE* %log) #5, !dbg !920
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([79 x i8]* @.str14, i64 0, i64 0), i8* %ghatfn) #5, !dbg !921
  br label %for.body, !dbg !922

for.body:                                         ; preds = %lor.lhs.false26, %if.then33, %for.inc
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %if.then33 ], [ 0, %lor.lhs.false26 ]
  %arrayidx = getelementptr inbounds float* %box, i64 %indvars.iv, !dbg !923
  %17 = load float* %arrayidx, align 4, !dbg !923, !tbaa !684
  %arrayidx46 = getelementptr inbounds [3 x i32]* %grids, i64 0, i64 %indvars.iv, !dbg !923
  %18 = load i32* %arrayidx46, align 4, !dbg !923, !tbaa !699
  %conv47 = sitofp i32 %18 to float, !dbg !923
  %arrayidx49 = getelementptr inbounds [3 x float]* %spacing, i64 0, i64 %indvars.iv, !dbg !923
  %19 = load float* %arrayidx49, align 4, !dbg !923, !tbaa !684
  %mul = fmul float %conv47, %19, !dbg !923
  %sub50 = fsub float %17, %mul, !dbg !923
  %fabsf133 = call float @fabsf(float %sub50) #7, !dbg !923
  %cmp53 = fcmp ogt float %fabsf133, 0x3EE4F8B580000000, !dbg !923
  br i1 %cmp53, label %if.then55, label %for.inc, !dbg !923

if.then55:                                        ; preds = %for.body
  call void @pr_rvec(%struct._IO_FILE* %log, i32 0, i8* getelementptr inbounds ([4 x i8]* @.str15, i64 0, i64 0), float* %box, i32 3) #5, !dbg !925
  call void @pr_rvec(%struct._IO_FILE* %log, i32 0, i8* getelementptr inbounds ([13 x i8]* @.str16, i64 0, i64 0), float* %arraydecay20, i32 3) #5, !dbg !927
  call void @pr_ivec(%struct._IO_FILE* %log, i32 0, i8* getelementptr inbounds ([10 x i8]* @.str17, i64 0, i64 0), i32* %arraydecay, i32 3) #5, !dbg !928
  %call58 = call i32 @fflush(%struct._IO_FILE* %log) #5, !dbg !929
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([73 x i8]* @.str18, i64 0, i64 0), i8* %ghatfn) #5, !dbg !930
  br label %for.inc, !dbg !931

for.inc:                                          ; preds = %for.body, %if.then55
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !932
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !932
  %exitcond = icmp eq i32 %lftr.wideiv, 3, !dbg !932
  br i1 %exitcond, label %for.end, label %for.body, !dbg !932

for.end:                                          ; preds = %for.inc
  call void @llvm.dbg.value(metadata !{i32* %porder}, i64 0, metadata !554), !dbg !933
  %20 = load i32* %porder, align 4, !dbg !933, !tbaa !699
  %cmp60 = icmp eq i32 %20, 2, !dbg !933
  br i1 %cmp60, label %if.end63, label %if.then62, !dbg !933

if.then62:                                        ; preds = %for.end
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([31 x i8]* @.str19, i64 0, i64 0), i32 %20, i8* %ghatfn) #5, !dbg !934
  br label %if.end63, !dbg !934

if.end63:                                         ; preds = %for.end, %if.then62
  %21 = load i32* %arraydecay, align 4, !dbg !935, !tbaa !699
  call void @llvm.dbg.value(metadata !{i32 %21}, i64 0, metadata !550), !dbg !935
  %arrayidx65 = getelementptr inbounds [3 x i32]* %grids, i64 0, i64 1, !dbg !936
  %22 = load i32* %arrayidx65, align 4, !dbg !936, !tbaa !699
  call void @llvm.dbg.value(metadata !{i32 %22}, i64 0, metadata !551), !dbg !936
  %arrayidx66 = getelementptr inbounds [3 x i32]* %grids, i64 0, i64 2, !dbg !937
  %23 = load i32* %arrayidx66, align 4, !dbg !937, !tbaa !699
  call void @llvm.dbg.value(metadata !{i32 %23}, i64 0, metadata !552), !dbg !937
  %tobool67 = icmp eq i32 %bVerbose, 0, !dbg !938
  br i1 %tobool67, label %if.end70, label %if.then68, !dbg !938

if.then68:                                        ; preds = %if.end63
  %24 = load float**** @ghat, align 8, !dbg !939, !tbaa !797
  call void @pr_scalar_gk(i8* getelementptr inbounds ([14 x i8]* @.str20, i64 0, i64 0), i32 %21, i32 %22, i32 %23, float* %box, float*** %24) #5, !dbg !939
  br label %if.end70, !dbg !939

if.end70:                                         ; preds = %if.end63, %if.end14, %if.then68, %if.then17
  %ny.0 = phi i32 [ %22, %if.then68 ], [ %22, %if.end63 ], [ %4, %if.then17 ], [ %4, %if.end14 ]
  %nz.0 = phi i32 [ %23, %if.then68 ], [ %23, %if.end63 ], [ %5, %if.then17 ], [ %5, %if.end14 ]
  %nx.0 = phi i32 [ %21, %if.then68 ], [ %21, %if.end63 ], [ %3, %if.then17 ], [ %3, %if.end14 ]
  %nnodes71 = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 1, !dbg !940
  %25 = load i32* %nnodes71, align 4, !dbg !940, !tbaa !699
  %cmp72 = icmp sgt i32 %25, 1, !dbg !940
  br i1 %cmp72, label %lor.end, label %lor.rhs, !dbg !940

lor.rhs:                                          ; preds = %if.end70
  %nthreads = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 5, !dbg !940
  %26 = load i32* %nthreads, align 4, !dbg !940, !tbaa !699
  %cmp74 = icmp sgt i32 %26, 1, !dbg !940
  br label %lor.end, !dbg !940

lor.end:                                          ; preds = %lor.rhs, %if.end70
  %27 = phi i1 [ true, %if.end70 ], [ %cmp74, %lor.rhs ]
  %lor.ext = zext i1 %27 to i32, !dbg !940
  %bOptFFT = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 24, !dbg !940
  %28 = load i32* %bOptFFT, align 4, !dbg !940, !tbaa !699
  %call76 = call %struct.t_fftgrid* @mk_fftgrid(%struct._IO_FILE* %log, i32 %lor.ext, i32 %nx.0, i32 %ny.0, i32 %nz.0, i32 %28) #5, !dbg !940
  store %struct.t_fftgrid* %call76, %struct.t_fftgrid** @grid, align 8, !dbg !940, !tbaa !797
  ret void, !dbg !941
}

; Function Attrs: optsize
declare i32 @fexist(i8*) #3

; Function Attrs: optsize
declare float*** @mk_rgrid(i32, i32, i32) #3

; Function Attrs: optsize
declare void @mk_ghat(%struct._IO_FILE*, i32, i32, i32, float***, float*, float, float, i32, i32) #3

; Function Attrs: optsize
declare void @pr_scalar_gk(i8*, i32, i32, i32, float*, float***) #3

; Function Attrs: optsize
declare float*** @rd_ghat(%struct._IO_FILE*, i8*, i32*, float*, float*, i32*, float*, float*) #3

; Function Attrs: nounwind optsize
declare i32 @fflush(%struct._IO_FILE* nocapture) #4

; Function Attrs: optsize
declare void @pr_rvec(%struct._IO_FILE*, i32, i8*, float*, i32) #3

; Function Attrs: optsize
declare void @pr_ivec(%struct._IO_FILE*, i32, i8*, i32*, i32) #3

; Function Attrs: optsize
declare %struct.t_fftgrid* @mk_fftgrid(%struct._IO_FILE*, i32, i32, i32, i32, i32) #3

; Function Attrs: nounwind optsize uwtable
define float @do_pppm(%struct._IO_FILE* nocapture %log, i32 %bVerbose, [3 x float]* nocapture %x, [3 x float]* nocapture %f, float* nocapture %charge, float* nocapture %box, float* nocapture %phi, %struct.t_commrec* %cr, %struct.t_nsborder* %nsb, %struct.t_nrnb* nocapture %nrnb) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %log}, i64 0, metadata !564), !dbg !942
  tail call void @llvm.dbg.value(metadata !{i32 %bVerbose}, i64 0, metadata !565), !dbg !942
  tail call void @llvm.dbg.value(metadata !{[3 x float]* %x}, i64 0, metadata !566), !dbg !943
  tail call void @llvm.dbg.value(metadata !{[3 x float]* %f}, i64 0, metadata !567), !dbg !943
  tail call void @llvm.dbg.value(metadata !{float* %charge}, i64 0, metadata !568), !dbg !944
  tail call void @llvm.dbg.value(metadata !{float* %box}, i64 0, metadata !569), !dbg !944
  tail call void @llvm.dbg.value(metadata !{float* %phi}, i64 0, metadata !570), !dbg !945
  tail call void @llvm.dbg.value(metadata !{%struct.t_commrec* %cr}, i64 0, metadata !571), !dbg !945
  tail call void @llvm.dbg.value(metadata !{%struct.t_nsborder* %nsb}, i64 0, metadata !572), !dbg !946
  tail call void @llvm.dbg.value(metadata !{%struct.t_nrnb* %nrnb}, i64 0, metadata !573), !dbg !946
  %nodeid = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 0, !dbg !947
  %0 = load i32* %nodeid, align 4, !dbg !947, !tbaa !699
  %idxprom = sext i32 %0 to i64, !dbg !947
  %arrayidx = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 8, i64 %idxprom, !dbg !947
  %1 = load i32* %arrayidx, align 4, !dbg !947, !tbaa !699
  tail call void @llvm.dbg.value(metadata !{i32 %1}, i64 0, metadata !575), !dbg !947
  %arrayidx3 = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 7, i64 %idxprom, !dbg !948
  %2 = load i32* %arrayidx3, align 4, !dbg !948, !tbaa !699
  tail call void @llvm.dbg.value(metadata !{i32 %2}, i64 0, metadata !576), !dbg !948
  %3 = load %struct.t_fftgrid** @grid, align 8, !dbg !949, !tbaa !797
  tail call void @clear_fftgrid(%struct.t_fftgrid* %3) #5, !dbg !949
  %4 = load %struct.t_fftgrid** @grid, align 8, !dbg !950, !tbaa !797
  tail call void @spread_q(%struct._IO_FILE* %log, i32 undef, i32 %1, i32 %2, [3 x float]* %x, float* %charge, float* %box, %struct.t_fftgrid* %4, %struct.t_nrnb* %nrnb) #6, !dbg !950
  %nnodes = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 1, !dbg !951
  %5 = load i32* %nnodes, align 4, !dbg !951, !tbaa !699
  %cmp = icmp sgt i32 %5, 1, !dbg !951
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !951

lor.lhs.false:                                    ; preds = %entry
  %nthreads = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 5, !dbg !951
  %6 = load i32* %nthreads, align 4, !dbg !951, !tbaa !699
  %cmp4 = icmp sgt i32 %6, 1, !dbg !951
  br i1 %cmp4, label %if.then, label %if.end, !dbg !951

if.then:                                          ; preds = %lor.lhs.false, %entry
  %7 = load %struct.t_fftgrid** @grid, align 8, !dbg !952, !tbaa !797
  tail call void @sum_qgrid(%struct.t_commrec* %cr, %struct.t_nsborder* %nsb, %struct.t_fftgrid* %7, i32 1) #5, !dbg !952
  br label %if.end, !dbg !952

if.end:                                           ; preds = %if.then, %lor.lhs.false
  %8 = load %struct.t_fftgrid** @grid, align 8, !dbg !953, !tbaa !797
  %9 = load float**** @ghat, align 8, !dbg !953, !tbaa !797
  tail call void @solve_pppm(%struct._IO_FILE* undef, %struct.t_commrec* %cr, %struct.t_fftgrid* %8, float*** %9, float* undef, i32 %bVerbose, %struct.t_nrnb* %nrnb) #6, !dbg !953
  %10 = load i32* %nnodes, align 4, !dbg !954, !tbaa !699
  %cmp6 = icmp sgt i32 %10, 1, !dbg !954
  br i1 %cmp6, label %if.then10, label %lor.lhs.false7, !dbg !954

lor.lhs.false7:                                   ; preds = %if.end
  %nthreads8 = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 5, !dbg !954
  %11 = load i32* %nthreads8, align 4, !dbg !954, !tbaa !699
  %cmp9 = icmp sgt i32 %11, 1, !dbg !954
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !954

if.then10:                                        ; preds = %lor.lhs.false7, %if.end
  %12 = load %struct.t_fftgrid** @grid, align 8, !dbg !955, !tbaa !797
  tail call void @sum_qgrid(%struct.t_commrec* %cr, %struct.t_nsborder* %nsb, %struct.t_fftgrid* %12, i32 0) #5, !dbg !955
  br label %if.end11, !dbg !955

if.end11:                                         ; preds = %if.then10, %lor.lhs.false7
  %13 = load %struct.t_fftgrid** @grid, align 8, !dbg !956, !tbaa !797
  %call = tail call fastcc float @gather_f(%struct._IO_FILE* %log, i32 %1, i32 %2, [3 x float]* %x, [3 x float]* %f, float* %charge, float* %box, float* %phi, %struct.t_fftgrid* %13, float* getelementptr inbounds ([3 x float]* @beta, i64 0, i64 0), %struct.t_nrnb* %nrnb) #6, !dbg !956
  tail call void @llvm.dbg.value(metadata !{float %call}, i64 0, metadata !574), !dbg !956
  ret float %call, !dbg !957
}

; Function Attrs: optsize
declare void @clear_fftgrid(%struct.t_fftgrid*) #3

; Function Attrs: optsize
declare void @sum_qgrid(%struct.t_commrec*, %struct.t_nsborder*, %struct.t_fftgrid*, i32) #3

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
  call void @llvm.dbg.value(metadata !142, i64 0, metadata !605), !dbg !958
  call void @llvm.dbg.declare(metadata !{[3 x i32]* %ixyz}, metadata !621), !dbg !959
  call void @llvm.dbg.declare(metadata !{[3 x float]* %invh}, metadata !622), !dbg !960
  call void @llvm.dbg.declare(metadata !{[3 x float]* %c1}, metadata !623), !dbg !960
  call void @llvm.dbg.declare(metadata !{[3 x float]* %c2}, metadata !624), !dbg !960
  %0 = bitcast [27 x float]* %WXYZ to i8*, !dbg !961
  call void @llvm.lifetime.start(i64 108, i8* %0) #2, !dbg !961
  call void @llvm.dbg.declare(metadata !{[27 x float]* %WXYZ}, metadata !625), !dbg !961
  call void @llvm.dbg.declare(metadata !{[7 x i32]* %ixw}, metadata !632), !dbg !962
  call void @llvm.dbg.declare(metadata !{[7 x i32]* %iyw}, metadata !636), !dbg !962
  call void @llvm.dbg.declare(metadata !{[7 x i32]* %izw}, metadata !637), !dbg !962
  call void @llvm.dbg.declare(metadata !{i32* %nx}, metadata !639), !dbg !963
  call void @llvm.dbg.declare(metadata !{i32* %ny}, metadata !640), !dbg !963
  call void @llvm.dbg.declare(metadata !{i32* %nz}, metadata !641), !dbg !963
  call void @llvm.dbg.declare(metadata !{i32* %la2}, metadata !642), !dbg !963
  call void @llvm.dbg.declare(metadata !{i32* %la12}, metadata !643), !dbg !963
  call void @llvm.dbg.declare(metadata !{float** %ptr}, metadata !644), !dbg !964
  call void @unpack_fftgrid(%struct.t_fftgrid* %grid, i32* %nx, i32* %ny, i32* %nz, i32* %la2, i32* %la12, i32 1, float** %ptr) #5, !dbg !965
  call void @llvm.dbg.value(metadata !{i32* %nx}, i64 0, metadata !639), !dbg !966
  %1 = load i32* %nx, align 4, !dbg !966, !tbaa !699
  call void @llvm.dbg.value(metadata !{i32* %ny}, i64 0, metadata !640), !dbg !966
  %2 = load i32* %ny, align 4, !dbg !966, !tbaa !699
  call void @llvm.dbg.value(metadata !{i32* %nz}, i64 0, metadata !641), !dbg !966
  %3 = load i32* %nz, align 4, !dbg !966, !tbaa !699
  %arraydecay = getelementptr inbounds [3 x float]* %invh, i64 0, i64 0, !dbg !966
  tail call void @llvm.dbg.value(metadata !{float* %box}, i64 0, metadata !967), !dbg !968
  tail call void @llvm.dbg.value(metadata !{i32 %1}, i64 0, metadata !969), !dbg !968
  tail call void @llvm.dbg.value(metadata !{i32 %2}, i64 0, metadata !970), !dbg !968
  tail call void @llvm.dbg.value(metadata !{i32 %3}, i64 0, metadata !971), !dbg !968
  tail call void @llvm.dbg.value(metadata !{float* %arraydecay}, i64 0, metadata !972), !dbg !968
  %conv.i = sitofp i32 %1 to float, !dbg !973
  %4 = load float* %box, align 4, !dbg !973, !tbaa !684
  %div.i = fdiv float %conv.i, %4, !dbg !973
  store float %div.i, float* %arraydecay, align 4, !dbg !973, !tbaa !684
  %conv2.i = sitofp i32 %2 to float, !dbg !974
  %arrayidx3.i = getelementptr inbounds float* %box, i64 1, !dbg !974
  %5 = load float* %arrayidx3.i, align 4, !dbg !974, !tbaa !684
  %div4.i = fdiv float %conv2.i, %5, !dbg !974
  %arrayidx5.i = getelementptr inbounds [3 x float]* %invh, i64 0, i64 1, !dbg !974
  store float %div4.i, float* %arrayidx5.i, align 4, !dbg !974, !tbaa !684
  %conv6.i = sitofp i32 %3 to float, !dbg !975
  %arrayidx7.i = getelementptr inbounds float* %box, i64 2, !dbg !975
  %6 = load float* %arrayidx7.i, align 4, !dbg !975, !tbaa !684
  %div8.i = fdiv float %conv6.i, %6, !dbg !975
  %arrayidx9.i = getelementptr inbounds [3 x float]* %invh, i64 0, i64 2, !dbg !975
  store float %div8.i, float* %arrayidx9.i, align 4, !dbg !975, !tbaa !684
  call void @llvm.dbg.value(metadata !142, i64 0, metadata !617), !dbg !976
  br label %for.body, !dbg !976

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %7 = phi float [ %div.i, %entry ], [ %.pre, %for.body.for.body_crit_edge ]
  %indvars.iv30 = phi i64 [ 0, %entry ], [ %indvars.iv.next31, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr inbounds float* %beta, i64 %indvars.iv30, !dbg !978
  %8 = load float* %arrayidx, align 4, !dbg !978, !tbaa !684
  %conv = fpext float %8 to double, !dbg !978
  %div = fmul double %conv, 5.000000e-01, !dbg !978
  %conv3 = fpext float %7 to double, !dbg !978
  %mul = fmul double %div, %conv3, !dbg !978
  %conv4 = fptrunc double %mul to float, !dbg !978
  %arrayidx6 = getelementptr inbounds [3 x float]* %c1, i64 0, i64 %indvars.iv30, !dbg !978
  store float %conv4, float* %arrayidx6, align 4, !dbg !978, !tbaa !684
  %sub = fsub double 1.000000e+00, %conv, !dbg !980
  %div10 = fmul double %sub, 2.500000e-01, !dbg !980
  %mul14 = fmul double %conv3, %div10, !dbg !980
  %conv15 = fptrunc double %mul14 to float, !dbg !980
  %arrayidx17 = getelementptr inbounds [3 x float]* %c2, i64 0, i64 %indvars.iv30, !dbg !980
  store float %conv15, float* %arrayidx17, align 4, !dbg !980, !tbaa !684
  %indvars.iv.next31 = add i64 %indvars.iv30, 1, !dbg !976
  %lftr.wideiv32 = trunc i64 %indvars.iv.next31 to i32, !dbg !976
  %exitcond33 = icmp eq i32 %lftr.wideiv32, 3, !dbg !976
  br i1 %exitcond33, label %for.end, label %for.body.for.body_crit_edge, !dbg !976

for.body.for.body_crit_edge:                      ; preds = %for.body
  %arrayidx2.phi.trans.insert = getelementptr inbounds [3 x float]* %invh, i64 0, i64 %indvars.iv.next31
  %.pre = load float* %arrayidx2.phi.trans.insert, align 4, !dbg !978, !tbaa !684
  br label %for.body, !dbg !976

for.end:                                          ; preds = %for.body
  %ixw14 = bitcast [7 x i32]* %ixw to i8*
  %iyw17 = bitcast [7 x i32]* %iyw to i8*
  %izw21 = bitcast [7 x i32]* %izw to i8*
  %arrayidx18 = getelementptr inbounds [3 x float]* %c1, i64 0, i64 0, !dbg !981
  %9 = load float* %arrayidx18, align 4, !dbg !981, !tbaa !684
  call void @llvm.dbg.value(metadata !{float %9}, i64 0, metadata !626), !dbg !981
  %arrayidx19 = getelementptr inbounds [3 x float]* %c1, i64 0, i64 1, !dbg !982
  %10 = load float* %arrayidx19, align 4, !dbg !982, !tbaa !684
  call void @llvm.dbg.value(metadata !{float %10}, i64 0, metadata !627), !dbg !982
  %arrayidx20 = getelementptr inbounds [3 x float]* %c1, i64 0, i64 2, !dbg !983
  %11 = load float* %arrayidx20, align 4, !dbg !983, !tbaa !684
  call void @llvm.dbg.value(metadata !{float %11}, i64 0, metadata !628), !dbg !983
  %arrayidx21 = getelementptr inbounds [3 x float]* %c2, i64 0, i64 0, !dbg !984
  %12 = load float* %arrayidx21, align 4, !dbg !984, !tbaa !684
  call void @llvm.dbg.value(metadata !{float %12}, i64 0, metadata !629), !dbg !984
  %arrayidx22 = getelementptr inbounds [3 x float]* %c2, i64 0, i64 1, !dbg !985
  %13 = load float* %arrayidx22, align 4, !dbg !985, !tbaa !684
  call void @llvm.dbg.value(metadata !{float %13}, i64 0, metadata !630), !dbg !985
  %arrayidx23 = getelementptr inbounds [3 x float]* %c2, i64 0, i64 2, !dbg !986
  %14 = load float* %arrayidx23, align 4, !dbg !986, !tbaa !684
  call void @llvm.dbg.value(metadata !{float %14}, i64 0, metadata !631), !dbg !986
  %.b = load i1* @gather_f.bFirst, align 1
  br i1 %.b, label %for.cond75.preheader, label %if.then, !dbg !987

if.then:                                          ; preds = %for.end
  call void @llvm.dbg.value(metadata !{i32* %nx}, i64 0, metadata !639), !dbg !988
  call void @llvm.dbg.value(metadata !{i32* %ny}, i64 0, metadata !640), !dbg !988
  call void @llvm.dbg.value(metadata !{i32* %nz}, i64 0, metadata !641), !dbg !988
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %log, i8* getelementptr inbounds ([57 x i8]* @.str21, i64 0, i64 0), i32 %1, i32 %2, i32 %3) #5, !dbg !988
  %15 = load float* %beta, align 4, !dbg !990, !tbaa !684
  %conv25 = fpext float %15 to double, !dbg !990
  %arrayidx26 = getelementptr inbounds float* %beta, i64 1, !dbg !990
  %16 = load float* %arrayidx26, align 4, !dbg !990, !tbaa !684
  %conv27 = fpext float %16 to double, !dbg !990
  %arrayidx28 = getelementptr inbounds float* %beta, i64 2, !dbg !990
  %17 = load float* %arrayidx28, align 4, !dbg !990, !tbaa !684
  %conv29 = fpext float %17 to double, !dbg !990
  %call30 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %log, i8* getelementptr inbounds ([23 x i8]* @.str22, i64 0, i64 0), double %conv25, double %conv27, double %conv29) #5, !dbg !990
  %conv32 = fpext float %9 to double, !dbg !991
  %conv34 = fpext float %10 to double, !dbg !991
  %conv36 = fpext float %11 to double, !dbg !991
  %call37 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %log, i8* getelementptr inbounds ([23 x i8]* @.str23, i64 0, i64 0), double %conv32, double %conv34, double %conv36) #5, !dbg !991
  %conv39 = fpext float %12 to double, !dbg !992
  %conv41 = fpext float %13 to double, !dbg !992
  %conv43 = fpext float %14 to double, !dbg !992
  %call44 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %log, i8* getelementptr inbounds ([23 x i8]* @.str24, i64 0, i64 0), double %conv39, double %conv41, double %conv43) #5, !dbg !992
  %conv46 = fpext float %div.i to double, !dbg !993
  %conv48 = fpext float %div4.i to double, !dbg !993
  %conv50 = fpext float %div8.i to double, !dbg !993
  %call51 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %log, i8* getelementptr inbounds ([23 x i8]* @.str2, i64 0, i64 0), double %conv46, double %conv48, double %conv50) #5, !dbg !993
  call void @llvm.dbg.value(metadata !{i32* %nx}, i64 0, metadata !639), !dbg !994
  %18 = load i32* %nx, align 4, !dbg !994, !tbaa !699
  call void @llvm.dbg.value(metadata !{i32* %ny}, i64 0, metadata !640), !dbg !994
  %19 = load i32* %ny, align 4, !dbg !994, !tbaa !699
  call void @llvm.dbg.value(metadata !{i32* %nz}, i64 0, metadata !641), !dbg !994
  %20 = load i32* %nz, align 4, !dbg !994, !tbaa !699
  call fastcc void @calc_nxyz(i32 %18, i32 %19, i32 %20, i32** @gather_f.nnx, i32** @gather_f.nny, i32** @gather_f.nnz) #6, !dbg !994
  call void @llvm.dbg.value(metadata !142, i64 0, metadata !616), !dbg !995
  br label %for.body55, !dbg !995

for.body55:                                       ; preds = %for.body55, %if.then
  %indvars.iv25 = phi i64 [ 0, %if.then ], [ %indvars.iv.next26, %for.body55 ]
  %21 = trunc i64 %indvars.iv25 to i32, !dbg !997
  %div56 = sdiv i32 %21, 9, !dbg !997
  %add = add nsw i32 %div56, 2, !dbg !997
  %22 = mul nsw i64 %indvars.iv25, 3, !dbg !997
  %arrayidx59 = getelementptr inbounds [81 x i32]* @gather_f.JCXYZ, i64 0, i64 %22, !dbg !997
  store i32 %add, i32* %arrayidx59, align 4, !dbg !997, !tbaa !699
  %div60 = sdiv i32 %21, 3, !dbg !999
  %rem = srem i32 %div60, 3, !dbg !999
  %add61 = add nsw i32 %rem, 2, !dbg !999
  %23 = add nsw i64 %22, 1, !dbg !999
  %arrayidx65 = getelementptr inbounds [81 x i32]* @gather_f.JCXYZ, i64 0, i64 %23, !dbg !999
  store i32 %add61, i32* %arrayidx65, align 4, !dbg !999, !tbaa !699
  %rem66 = srem i32 %21, 3, !dbg !1000
  %add67 = add nsw i32 %rem66, 2, !dbg !1000
  %24 = add nsw i64 %22, 2, !dbg !1000
  %arrayidx71 = getelementptr inbounds [81 x i32]* @gather_f.JCXYZ, i64 0, i64 %24, !dbg !1000
  store i32 %add67, i32* %arrayidx71, align 4, !dbg !1000, !tbaa !699
  %indvars.iv.next26 = add i64 %indvars.iv25, 1, !dbg !995
  %lftr.wideiv = trunc i64 %indvars.iv.next26 to i32, !dbg !995
  %exitcond = icmp eq i32 %lftr.wideiv, 27, !dbg !995
  br i1 %exitcond, label %for.end74, label %for.body55, !dbg !995

for.end74:                                        ; preds = %for.body55
  store i1 true, i1* @gather_f.bFirst, align 1
  br label %for.cond75.preheader, !dbg !1001

for.cond75.preheader:                             ; preds = %for.end, %for.end74
  %add76 = add nsw i32 %nr, %start, !dbg !1002
  %cmp772 = icmp sgt i32 %nr, 0, !dbg !1002
  br i1 %cmp772, label %for.body79.lr.ph, label %for.end133, !dbg !1002

for.body79.lr.ph:                                 ; preds = %for.cond75.preheader
  %arraydecay84 = getelementptr inbounds [3 x i32]* %ixyz, i64 0, i64 0, !dbg !1004
  %arraydecay85 = getelementptr inbounds [27 x float]* %WXYZ, i64 0, i64 0, !dbg !1004
  %arrayidx98 = getelementptr inbounds [3 x i32]* %ixyz, i64 0, i64 1, !dbg !1006
  %arrayidx106 = getelementptr inbounds [3 x i32]* %ixyz, i64 0, i64 2, !dbg !1009
  %arraydecay120 = getelementptr inbounds [7 x i32]* %ixw, i64 0, i64 0, !dbg !1010
  %arraydecay121 = getelementptr inbounds [7 x i32]* %iyw, i64 0, i64 0, !dbg !1010
  %arraydecay122 = getelementptr inbounds [7 x i32]* %izw, i64 0, i64 0, !dbg !1010
  %25 = sext i32 %start to i64
  br label %for.body79, !dbg !1002

for.body79:                                       ; preds = %for.body79, %for.body79.lr.ph
  %indvars.iv = phi i64 [ %25, %for.body79.lr.ph ], [ %indvars.iv.next, %for.body79 ]
  %energy.03 = phi float [ 0.000000e+00, %for.body79.lr.ph ], [ %add128, %for.body79 ]
  call void @llvm.dbg.value(metadata !{i32* %nx}, i64 0, metadata !639), !dbg !1004
  %26 = load i32* %nx, align 4, !dbg !1004, !tbaa !699
  call void @llvm.dbg.value(metadata !{i32* %ny}, i64 0, metadata !640), !dbg !1004
  %27 = load i32* %ny, align 4, !dbg !1004, !tbaa !699
  call void @llvm.dbg.value(metadata !{i32* %nz}, i64 0, metadata !641), !dbg !1004
  %28 = load i32* %nz, align 4, !dbg !1004, !tbaa !699
  %arraydecay82 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv, i64 0, !dbg !1004
  %29 = trunc i64 %indvars.iv to i32, !dbg !1004
  call void @calc_weights(i32 %29, i32 %26, i32 %27, i32 %28, float* %arraydecay82, float* undef, float* %arraydecay, i32* %arraydecay84, float* %arraydecay85) #6, !dbg !1004
  call void @llvm.dbg.value(metadata !1011, i64 0, metadata !638), !dbg !1012
  %30 = load i32* %arraydecay84, align 4, !dbg !1013, !tbaa !699
  call void @llvm.dbg.value(metadata !{i32* %nx}, i64 0, metadata !639), !dbg !1013
  %31 = load i32* %nx, align 4, !dbg !1013, !tbaa !699
  %32 = load i32** @gather_f.nnx, align 8, !dbg !1013, !tbaa !797
  %33 = load i32* %arrayidx98, align 4, !dbg !1006, !tbaa !699
  call void @llvm.dbg.value(metadata !{i32* %ny}, i64 0, metadata !640), !dbg !1006
  %34 = load i32* %ny, align 4, !dbg !1006, !tbaa !699
  %35 = load i32** @gather_f.nny, align 8, !dbg !1006, !tbaa !797
  %36 = load i32* %arrayidx106, align 4, !dbg !1009, !tbaa !699
  call void @llvm.dbg.value(metadata !{i32* %nz}, i64 0, metadata !641), !dbg !1009
  %37 = load i32* %nz, align 4, !dbg !1009, !tbaa !699
  %38 = load i32** @gather_f.nnz, align 8, !dbg !1009, !tbaa !797
  %39 = sext i32 %30 to i64
  %40 = sext i32 %31 to i64
  %41 = add i64 %39, %40, !dbg !1012
  %scevgep.sum = add i64 %41, -3
  %scevgep15 = getelementptr i32* %32, i64 %scevgep.sum
  %scevgep1516 = bitcast i32* %scevgep15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %ixw14, i8* %scevgep1516, i64 28, i32 4, i1 false), !dbg !1013
  %42 = sext i32 %33 to i64
  %43 = sext i32 %34 to i64
  %44 = add i64 %42, %43, !dbg !1012
  %scevgep18.sum = add i64 %44, -3
  %scevgep19 = getelementptr i32* %35, i64 %scevgep18.sum
  %scevgep1920 = bitcast i32* %scevgep19 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %iyw17, i8* %scevgep1920, i64 28, i32 4, i1 false), !dbg !1006
  %45 = sext i32 %36 to i64
  %46 = sext i32 %37 to i64
  %47 = add i64 %45, %46, !dbg !1012
  %scevgep22.sum = add i64 %47, -3
  %scevgep23 = getelementptr i32* %38, i64 %scevgep22.sum
  %scevgep2324 = bitcast i32* %scevgep23 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %izw21, i8* %scevgep2324, i64 28, i32 4, i1 false), !dbg !1009
  %arrayidx118 = getelementptr inbounds float* %charge, i64 %indvars.iv, !dbg !1014
  %48 = load float* %arrayidx118, align 4, !dbg !1014, !tbaa !684
  call void @llvm.dbg.value(metadata !{float %48}, i64 0, metadata !619), !dbg !1014
  call void @llvm.dbg.value(metadata !{i32* %la2}, i64 0, metadata !642), !dbg !1010
  %49 = load i32* %la2, align 4, !dbg !1010, !tbaa !699
  call void @llvm.dbg.value(metadata !{i32* %la12}, i64 0, metadata !643), !dbg !1010
  %50 = load i32* %la12, align 4, !dbg !1010, !tbaa !699
  %arraydecay125 = getelementptr inbounds [3 x float]* %f, i64 %indvars.iv, i64 0, !dbg !1010
  call void @llvm.dbg.value(metadata !{float** %ptr}, i64 0, metadata !644), !dbg !1010
  %51 = load float** %ptr, align 8, !dbg !1010, !tbaa !797
  %call126 = call float @gather_inner(i32* getelementptr inbounds ([81 x i32]* @gather_f.JCXYZ, i64 0, i64 0), float* %arraydecay85, i32* %arraydecay120, i32* %arraydecay121, i32* %arraydecay122, i32 %49, i32 %50, float %9, float %10, float %11, float %12, float %13, float %14, float %48, float* %arraydecay125, float* %51) #6, !dbg !1010
  call void @llvm.dbg.value(metadata !{float %call126}, i64 0, metadata !620), !dbg !1010
  %mul127 = fmul float %48, %call126, !dbg !1015
  %add128 = fadd float %energy.03, %mul127, !dbg !1015
  call void @llvm.dbg.value(metadata !{float %add128}, i64 0, metadata !618), !dbg !1015
  %arrayidx130 = getelementptr inbounds float* %pot, i64 %indvars.iv, !dbg !1016
  store float %call126, float* %arrayidx130, align 4, !dbg !1016, !tbaa !684
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !1002
  %52 = trunc i64 %indvars.iv.next to i32, !dbg !1002
  %cmp77 = icmp slt i32 %52, %add76, !dbg !1002
  br i1 %cmp77, label %for.body79, label %for.cond75.for.end133_crit_edge, !dbg !1002

for.cond75.for.end133_crit_edge:                  ; preds = %for.body79
  %phitmp = fmul float %add128, 5.000000e-01, !dbg !1002
  br label %for.end133, !dbg !1002

for.end133:                                       ; preds = %for.cond75.for.end133_crit_edge, %for.cond75.preheader
  %energy.0.lcssa = phi float [ %phitmp, %for.cond75.for.end133_crit_edge ], [ 0.000000e+00, %for.cond75.preheader ]
  %mul134 = mul nsw i32 %nr, 27, !dbg !1017
  %conv135 = sitofp i32 %mul134 to double, !dbg !1017
  %arrayidx136 = getelementptr inbounds %struct.t_nrnb* %nrnb, i64 0, i32 0, i64 82, !dbg !1017
  %53 = load double* %arrayidx136, align 8, !dbg !1017, !tbaa !805
  %add137 = fadd double %conv135, %53, !dbg !1017
  store double %add137, double* %arrayidx136, align 8, !dbg !1017, !tbaa !805
  %mul138 = mul nsw i32 %nr, 3, !dbg !1018
  %conv139 = sitofp i32 %mul138 to double, !dbg !1018
  %arrayidx141 = getelementptr inbounds %struct.t_nrnb* %nrnb, i64 0, i32 0, i64 79, !dbg !1018
  %54 = load double* %arrayidx141, align 8, !dbg !1018, !tbaa !805
  %add142 = fadd double %conv139, %54, !dbg !1018
  store double %add142, double* %arrayidx141, align 8, !dbg !1018, !tbaa !805
  call void @llvm.lifetime.end(i64 108, i8* %0) #2, !dbg !1019
  ret float %energy.0.lcssa, !dbg !1019
}

; Function Attrs: nounwind optsize uwtable
define float @do_opt_pppm(%struct._IO_FILE* nocapture %log, i32 %bVerbose, %struct.t_inputrec* nocapture %ir, i32 %natoms, [3 x float]* nocapture %x, [3 x float]* nocapture %f, float* nocapture %charge, float* %box, float* nocapture %phi, %struct.t_commrec* %cr, %struct.t_nrnb* nocapture %nrnb, float* nocapture %beta, %struct.t_fftgrid* %grid, i32 %bOld) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %log}, i64 0, metadata !581), !dbg !1020
  tail call void @llvm.dbg.value(metadata !{i32 %bVerbose}, i64 0, metadata !582), !dbg !1020
  tail call void @llvm.dbg.value(metadata !{%struct.t_inputrec* %ir}, i64 0, metadata !583), !dbg !1021
  tail call void @llvm.dbg.value(metadata !{i32 %natoms}, i64 0, metadata !584), !dbg !1021
  tail call void @llvm.dbg.value(metadata !{[3 x float]* %x}, i64 0, metadata !585), !dbg !1022
  tail call void @llvm.dbg.value(metadata !{[3 x float]* %f}, i64 0, metadata !586), !dbg !1022
  tail call void @llvm.dbg.value(metadata !{float* %charge}, i64 0, metadata !587), !dbg !1023
  tail call void @llvm.dbg.value(metadata !{float* %box}, i64 0, metadata !588), !dbg !1023
  tail call void @llvm.dbg.value(metadata !{float* %phi}, i64 0, metadata !589), !dbg !1024
  tail call void @llvm.dbg.value(metadata !{%struct.t_commrec* %cr}, i64 0, metadata !590), !dbg !1024
  tail call void @llvm.dbg.value(metadata !{%struct.t_nrnb* %nrnb}, i64 0, metadata !591), !dbg !1025
  tail call void @llvm.dbg.value(metadata !{float* %beta}, i64 0, metadata !592), !dbg !1025
  tail call void @llvm.dbg.value(metadata !{%struct.t_fftgrid* %grid}, i64 0, metadata !593), !dbg !1026
  tail call void @llvm.dbg.value(metadata !{i32 %bOld}, i64 0, metadata !594), !dbg !1026
  tail call void @llvm.dbg.value(metadata !827, i64 0, metadata !599), !dbg !1027
  %0 = tail call i64 @fwrite(i8* getelementptr inbounds ([26 x i8]* @.str8, i64 0, i64 0), i64 25, i64 1, %struct._IO_FILE* %log), !dbg !1028
  %nkx = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 17, !dbg !1029
  %1 = load i32* %nkx, align 4, !dbg !1029, !tbaa !699
  tail call void @llvm.dbg.value(metadata !{i32 %1}, i64 0, metadata !596), !dbg !1029
  %nky = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 18, !dbg !1030
  %2 = load i32* %nky, align 4, !dbg !1030, !tbaa !699
  tail call void @llvm.dbg.value(metadata !{i32 %2}, i64 0, metadata !597), !dbg !1030
  %nkz = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 19, !dbg !1031
  %3 = load i32* %nkz, align 4, !dbg !1031, !tbaa !699
  tail call void @llvm.dbg.value(metadata !{i32 %3}, i64 0, metadata !598), !dbg !1031
  %call1 = tail call float*** @mk_rgrid(i32 %1, i32 %2, i32 %3) #5, !dbg !1032
  tail call void @llvm.dbg.value(metadata !{float*** %call1}, i64 0, metadata !595), !dbg !1032
  %rcoulomb_switch = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 37, !dbg !1033
  %4 = load float* %rcoulomb_switch, align 4, !dbg !1033, !tbaa !684
  %rcoulomb = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 38, !dbg !1033
  %5 = load float* %rcoulomb, align 4, !dbg !1033, !tbaa !684
  tail call void @mk_ghat(%struct._IO_FILE* null, i32 %1, i32 %2, i32 %3, float*** %call1, float* %box, float %4, float %5, i32 1, i32 %bOld) #5, !dbg !1033
  tail call void @clear_fftgrid(%struct.t_fftgrid* %grid) #5, !dbg !1034
  tail call void @spread_q(%struct._IO_FILE* %log, i32 undef, i32 0, i32 %natoms, [3 x float]* %x, float* %charge, float* %box, %struct.t_fftgrid* %grid, %struct.t_nrnb* %nrnb) #6, !dbg !1035
  tail call void @solve_pppm(%struct._IO_FILE* undef, %struct.t_commrec* %cr, %struct.t_fftgrid* %grid, float*** %call1, float* undef, i32 %bVerbose, %struct.t_nrnb* %nrnb) #6, !dbg !1036
  %call2 = tail call fastcc float @gather_f(%struct._IO_FILE* %log, i32 0, i32 %natoms, [3 x float]* %x, [3 x float]* %f, float* %charge, float* %box, float* %phi, %struct.t_fftgrid* %grid, float* %beta, %struct.t_nrnb* %nrnb) #6, !dbg !1037
  tail call void @llvm.dbg.value(metadata !{float %call2}, i64 0, metadata !599), !dbg !1037
  tail call void @free_rgrid(float*** %call1, i32 %1, i32 %2) #5, !dbg !1038
  ret float %call2, !dbg !1039
}

; Function Attrs: optsize
declare void @free_rgrid(float***, i32, i32) #3

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #1

declare float @fabsf(float)

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #2

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture, i64, i32, i1) #2

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind }
attributes #3 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind optsize }
attributes #6 = { optsize }
attributes #7 = { nounwind optsize readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !142, metadata !143, metadata !664, metadata !142, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/pppm.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/435.gromacs/src/pppm.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{metadata !3, metadata !137}
!3 = metadata !{i32 786436, metadata !4, null, metadata !"", i32 51, i64 32, i64 32, i32 0, i32 0, null, metadata !5, i32 0, i32 0} ; [ DW_TAG_enumeration_type ] [line 51, size 32, align 32, offset 0] [from ]
!4 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/435.gromacs/src/types/nrnb.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!5 = metadata !{metadata !6, metadata !7, metadata !8, metadata !9, metadata !10, metadata !11, metadata !12, metadata !13, metadata !14, metadata !15, metadata !16, metadata !17, metadata !18, metadata !19, metadata !20, metadata !21, metadata !22, metadata !23, metadata !24, metadata !25, metadata !26, metadata !27, metadata !28, metadata !29, metadata !30, metadata !31, metadata !32, metadata !33, metadata !34, metadata !35, metadata !36, metadata !37, metadata !38, metadata !39, metadata !40, metadata !41, metadata !42, metadata !43, metadata !44, metadata !45, metadata !46, metadata !47, metadata !48, metadata !49, metadata !50, metadata !51, metadata !52, metadata !53, metadata !54, metadata !55, metadata !56, metadata !57, metadata !58, metadata !59, metadata !60, metadata !61, metadata !62, metadata !63, metadata !64, metadata !65, metadata !66, metadata !67, metadata !68, metadata !69, metadata !70, metadata !71, metadata !72, metadata !73, metadata !74, metadata !75, metadata !76, metadata !77, metadata !78, metadata !79, metadata !80, metadata !81, metadata !82, metadata !83, metadata !84, metadata !85, metadata !86, metadata !87, metadata !88, metadata !89, metadata !90, metadata !91, metadata !92, metadata !93, metadata !94, metadata !95, metadata !96, metadata !97, metadata !98, metadata !99, metadata !100, metadata !101, metadata !102, metadata !103, metadata !104, metadata !105, metadata !106, metadata !107, metadata !108, metadata !109, metadata !110, metadata !111, metadata !112, metadata !113, metadata !114, metadata !115, metadata !116, metadata !117, metadata !118, metadata !119, metadata !120, metadata !121, metadata !122, metadata !123, metadata !124, metadata !125, metadata !126, metadata !127, metadata !128, metadata !129, metadata !130, metadata !131, metadata !132, metadata !133, metadata !134, metadata !135, metadata !136}
!6 = metadata !{i32 786472, metadata !"eNR_INL0100", i64 0} ; [ DW_TAG_enumerator ] [eNR_INL0100 :: 0]
!7 = metadata !{i32 786472, metadata !"eNR_INL0110", i64 1} ; [ DW_TAG_enumerator ] [eNR_INL0110 :: 1]
!8 = metadata !{i32 786472, metadata !"eNR_INL0200", i64 2} ; [ DW_TAG_enumerator ] [eNR_INL0200 :: 2]
!9 = metadata !{i32 786472, metadata !"eNR_INL0210", i64 3} ; [ DW_TAG_enumerator ] [eNR_INL0210 :: 3]
!10 = metadata !{i32 786472, metadata !"eNR_INL0300", i64 4} ; [ DW_TAG_enumerator ] [eNR_INL0300 :: 4]
!11 = metadata !{i32 786472, metadata !"eNR_INL0310", i64 5} ; [ DW_TAG_enumerator ] [eNR_INL0310 :: 5]
!12 = metadata !{i32 786472, metadata !"eNR_INL0301", i64 6} ; [ DW_TAG_enumerator ] [eNR_INL0301 :: 6]
!13 = metadata !{i32 786472, metadata !"eNR_INL0302", i64 7} ; [ DW_TAG_enumerator ] [eNR_INL0302 :: 7]
!14 = metadata !{i32 786472, metadata !"eNR_INL0400", i64 8} ; [ DW_TAG_enumerator ] [eNR_INL0400 :: 8]
!15 = metadata !{i32 786472, metadata !"eNR_INL0410", i64 9} ; [ DW_TAG_enumerator ] [eNR_INL0410 :: 9]
!16 = metadata !{i32 786472, metadata !"eNR_INL0401", i64 10} ; [ DW_TAG_enumerator ] [eNR_INL0401 :: 10]
!17 = metadata !{i32 786472, metadata !"eNR_INL0402", i64 11} ; [ DW_TAG_enumerator ] [eNR_INL0402 :: 11]
!18 = metadata !{i32 786472, metadata !"eNR_INL1000", i64 12} ; [ DW_TAG_enumerator ] [eNR_INL1000 :: 12]
!19 = metadata !{i32 786472, metadata !"eNR_INL1010", i64 13} ; [ DW_TAG_enumerator ] [eNR_INL1010 :: 13]
!20 = metadata !{i32 786472, metadata !"eNR_INL1020", i64 14} ; [ DW_TAG_enumerator ] [eNR_INL1020 :: 14]
!21 = metadata !{i32 786472, metadata !"eNR_INL1030", i64 15} ; [ DW_TAG_enumerator ] [eNR_INL1030 :: 15]
!22 = metadata !{i32 786472, metadata !"eNR_INL1100", i64 16} ; [ DW_TAG_enumerator ] [eNR_INL1100 :: 16]
!23 = metadata !{i32 786472, metadata !"eNR_INL1110", i64 17} ; [ DW_TAG_enumerator ] [eNR_INL1110 :: 17]
!24 = metadata !{i32 786472, metadata !"eNR_INL1120", i64 18} ; [ DW_TAG_enumerator ] [eNR_INL1120 :: 18]
!25 = metadata !{i32 786472, metadata !"eNR_INL1130", i64 19} ; [ DW_TAG_enumerator ] [eNR_INL1130 :: 19]
!26 = metadata !{i32 786472, metadata !"eNR_INL1200", i64 20} ; [ DW_TAG_enumerator ] [eNR_INL1200 :: 20]
!27 = metadata !{i32 786472, metadata !"eNR_INL1210", i64 21} ; [ DW_TAG_enumerator ] [eNR_INL1210 :: 21]
!28 = metadata !{i32 786472, metadata !"eNR_INL1220", i64 22} ; [ DW_TAG_enumerator ] [eNR_INL1220 :: 22]
!29 = metadata !{i32 786472, metadata !"eNR_INL1230", i64 23} ; [ DW_TAG_enumerator ] [eNR_INL1230 :: 23]
!30 = metadata !{i32 786472, metadata !"eNR_INL1300", i64 24} ; [ DW_TAG_enumerator ] [eNR_INL1300 :: 24]
!31 = metadata !{i32 786472, metadata !"eNR_INL1310", i64 25} ; [ DW_TAG_enumerator ] [eNR_INL1310 :: 25]
!32 = metadata !{i32 786472, metadata !"eNR_INL1320", i64 26} ; [ DW_TAG_enumerator ] [eNR_INL1320 :: 26]
!33 = metadata !{i32 786472, metadata !"eNR_INL1330", i64 27} ; [ DW_TAG_enumerator ] [eNR_INL1330 :: 27]
!34 = metadata !{i32 786472, metadata !"eNR_INL1400", i64 28} ; [ DW_TAG_enumerator ] [eNR_INL1400 :: 28]
!35 = metadata !{i32 786472, metadata !"eNR_INL1410", i64 29} ; [ DW_TAG_enumerator ] [eNR_INL1410 :: 29]
!36 = metadata !{i32 786472, metadata !"eNR_INL1420", i64 30} ; [ DW_TAG_enumerator ] [eNR_INL1420 :: 30]
!37 = metadata !{i32 786472, metadata !"eNR_INL1430", i64 31} ; [ DW_TAG_enumerator ] [eNR_INL1430 :: 31]
!38 = metadata !{i32 786472, metadata !"eNR_INL2000", i64 32} ; [ DW_TAG_enumerator ] [eNR_INL2000 :: 32]
!39 = metadata !{i32 786472, metadata !"eNR_INL2010", i64 33} ; [ DW_TAG_enumerator ] [eNR_INL2010 :: 33]
!40 = metadata !{i32 786472, metadata !"eNR_INL2020", i64 34} ; [ DW_TAG_enumerator ] [eNR_INL2020 :: 34]
!41 = metadata !{i32 786472, metadata !"eNR_INL2030", i64 35} ; [ DW_TAG_enumerator ] [eNR_INL2030 :: 35]
!42 = metadata !{i32 786472, metadata !"eNR_INL2100", i64 36} ; [ DW_TAG_enumerator ] [eNR_INL2100 :: 36]
!43 = metadata !{i32 786472, metadata !"eNR_INL2110", i64 37} ; [ DW_TAG_enumerator ] [eNR_INL2110 :: 37]
!44 = metadata !{i32 786472, metadata !"eNR_INL2120", i64 38} ; [ DW_TAG_enumerator ] [eNR_INL2120 :: 38]
!45 = metadata !{i32 786472, metadata !"eNR_INL2130", i64 39} ; [ DW_TAG_enumerator ] [eNR_INL2130 :: 39]
!46 = metadata !{i32 786472, metadata !"eNR_INL2200", i64 40} ; [ DW_TAG_enumerator ] [eNR_INL2200 :: 40]
!47 = metadata !{i32 786472, metadata !"eNR_INL2210", i64 41} ; [ DW_TAG_enumerator ] [eNR_INL2210 :: 41]
!48 = metadata !{i32 786472, metadata !"eNR_INL2220", i64 42} ; [ DW_TAG_enumerator ] [eNR_INL2220 :: 42]
!49 = metadata !{i32 786472, metadata !"eNR_INL2230", i64 43} ; [ DW_TAG_enumerator ] [eNR_INL2230 :: 43]
!50 = metadata !{i32 786472, metadata !"eNR_INL2300", i64 44} ; [ DW_TAG_enumerator ] [eNR_INL2300 :: 44]
!51 = metadata !{i32 786472, metadata !"eNR_INL2310", i64 45} ; [ DW_TAG_enumerator ] [eNR_INL2310 :: 45]
!52 = metadata !{i32 786472, metadata !"eNR_INL2320", i64 46} ; [ DW_TAG_enumerator ] [eNR_INL2320 :: 46]
!53 = metadata !{i32 786472, metadata !"eNR_INL2330", i64 47} ; [ DW_TAG_enumerator ] [eNR_INL2330 :: 47]
!54 = metadata !{i32 786472, metadata !"eNR_INL2400", i64 48} ; [ DW_TAG_enumerator ] [eNR_INL2400 :: 48]
!55 = metadata !{i32 786472, metadata !"eNR_INL2410", i64 49} ; [ DW_TAG_enumerator ] [eNR_INL2410 :: 49]
!56 = metadata !{i32 786472, metadata !"eNR_INL2420", i64 50} ; [ DW_TAG_enumerator ] [eNR_INL2420 :: 50]
!57 = metadata !{i32 786472, metadata !"eNR_INL2430", i64 51} ; [ DW_TAG_enumerator ] [eNR_INL2430 :: 51]
!58 = metadata !{i32 786472, metadata !"eNR_INL3000", i64 52} ; [ DW_TAG_enumerator ] [eNR_INL3000 :: 52]
!59 = metadata !{i32 786472, metadata !"eNR_INL3001", i64 53} ; [ DW_TAG_enumerator ] [eNR_INL3001 :: 53]
!60 = metadata !{i32 786472, metadata !"eNR_INL3002", i64 54} ; [ DW_TAG_enumerator ] [eNR_INL3002 :: 54]
!61 = metadata !{i32 786472, metadata !"eNR_INL3010", i64 55} ; [ DW_TAG_enumerator ] [eNR_INL3010 :: 55]
!62 = metadata !{i32 786472, metadata !"eNR_INL3020", i64 56} ; [ DW_TAG_enumerator ] [eNR_INL3020 :: 56]
!63 = metadata !{i32 786472, metadata !"eNR_INL3030", i64 57} ; [ DW_TAG_enumerator ] [eNR_INL3030 :: 57]
!64 = metadata !{i32 786472, metadata !"eNR_INL3100", i64 58} ; [ DW_TAG_enumerator ] [eNR_INL3100 :: 58]
!65 = metadata !{i32 786472, metadata !"eNR_INL3110", i64 59} ; [ DW_TAG_enumerator ] [eNR_INL3110 :: 59]
!66 = metadata !{i32 786472, metadata !"eNR_INL3120", i64 60} ; [ DW_TAG_enumerator ] [eNR_INL3120 :: 60]
!67 = metadata !{i32 786472, metadata !"eNR_INL3130", i64 61} ; [ DW_TAG_enumerator ] [eNR_INL3130 :: 61]
!68 = metadata !{i32 786472, metadata !"eNR_INL3200", i64 62} ; [ DW_TAG_enumerator ] [eNR_INL3200 :: 62]
!69 = metadata !{i32 786472, metadata !"eNR_INL3210", i64 63} ; [ DW_TAG_enumerator ] [eNR_INL3210 :: 63]
!70 = metadata !{i32 786472, metadata !"eNR_INL3220", i64 64} ; [ DW_TAG_enumerator ] [eNR_INL3220 :: 64]
!71 = metadata !{i32 786472, metadata !"eNR_INL3230", i64 65} ; [ DW_TAG_enumerator ] [eNR_INL3230 :: 65]
!72 = metadata !{i32 786472, metadata !"eNR_INL3300", i64 66} ; [ DW_TAG_enumerator ] [eNR_INL3300 :: 66]
!73 = metadata !{i32 786472, metadata !"eNR_INL3301", i64 67} ; [ DW_TAG_enumerator ] [eNR_INL3301 :: 67]
!74 = metadata !{i32 786472, metadata !"eNR_INL3302", i64 68} ; [ DW_TAG_enumerator ] [eNR_INL3302 :: 68]
!75 = metadata !{i32 786472, metadata !"eNR_INL3310", i64 69} ; [ DW_TAG_enumerator ] [eNR_INL3310 :: 69]
!76 = metadata !{i32 786472, metadata !"eNR_INL3320", i64 70} ; [ DW_TAG_enumerator ] [eNR_INL3320 :: 70]
!77 = metadata !{i32 786472, metadata !"eNR_INL3330", i64 71} ; [ DW_TAG_enumerator ] [eNR_INL3330 :: 71]
!78 = metadata !{i32 786472, metadata !"eNR_INL3400", i64 72} ; [ DW_TAG_enumerator ] [eNR_INL3400 :: 72]
!79 = metadata !{i32 786472, metadata !"eNR_INL3401", i64 73} ; [ DW_TAG_enumerator ] [eNR_INL3401 :: 73]
!80 = metadata !{i32 786472, metadata !"eNR_INL3402", i64 74} ; [ DW_TAG_enumerator ] [eNR_INL3402 :: 74]
!81 = metadata !{i32 786472, metadata !"eNR_INL3410", i64 75} ; [ DW_TAG_enumerator ] [eNR_INL3410 :: 75]
!82 = metadata !{i32 786472, metadata !"eNR_INL3420", i64 76} ; [ DW_TAG_enumerator ] [eNR_INL3420 :: 76]
!83 = metadata !{i32 786472, metadata !"eNR_INL3430", i64 77} ; [ DW_TAG_enumerator ] [eNR_INL3430 :: 77]
!84 = metadata !{i32 786472, metadata !"eNR_INLOOP", i64 78} ; [ DW_TAG_enumerator ] [eNR_INLOOP :: 78]
!85 = metadata !{i32 786472, metadata !"eNR_INL_IATOM", i64 78} ; [ DW_TAG_enumerator ] [eNR_INL_IATOM :: 78]
!86 = metadata !{i32 786472, metadata !"eNR_WEIGHTS", i64 79} ; [ DW_TAG_enumerator ] [eNR_WEIGHTS :: 79]
!87 = metadata !{i32 786472, metadata !"eNR_SPREADQ", i64 80} ; [ DW_TAG_enumerator ] [eNR_SPREADQ :: 80]
!88 = metadata !{i32 786472, metadata !"eNR_SPREADQBSP", i64 81} ; [ DW_TAG_enumerator ] [eNR_SPREADQBSP :: 81]
!89 = metadata !{i32 786472, metadata !"eNR_GATHERF", i64 82} ; [ DW_TAG_enumerator ] [eNR_GATHERF :: 82]
!90 = metadata !{i32 786472, metadata !"eNR_GATHERFBSP", i64 83} ; [ DW_TAG_enumerator ] [eNR_GATHERFBSP :: 83]
!91 = metadata !{i32 786472, metadata !"eNR_FFT", i64 84} ; [ DW_TAG_enumerator ] [eNR_FFT :: 84]
!92 = metadata !{i32 786472, metadata !"eNR_CONV", i64 85} ; [ DW_TAG_enumerator ] [eNR_CONV :: 85]
!93 = metadata !{i32 786472, metadata !"eNR_SOLVEPME", i64 86} ; [ DW_TAG_enumerator ] [eNR_SOLVEPME :: 86]
!94 = metadata !{i32 786472, metadata !"eNR_NS", i64 87} ; [ DW_TAG_enumerator ] [eNR_NS :: 87]
!95 = metadata !{i32 786472, metadata !"eNR_RESETX", i64 88} ; [ DW_TAG_enumerator ] [eNR_RESETX :: 88]
!96 = metadata !{i32 786472, metadata !"eNR_SHIFTX", i64 89} ; [ DW_TAG_enumerator ] [eNR_SHIFTX :: 89]
!97 = metadata !{i32 786472, metadata !"eNR_CGCM", i64 90} ; [ DW_TAG_enumerator ] [eNR_CGCM :: 90]
!98 = metadata !{i32 786472, metadata !"eNR_FSUM", i64 91} ; [ DW_TAG_enumerator ] [eNR_FSUM :: 91]
!99 = metadata !{i32 786472, metadata !"eNR_BONDS", i64 92} ; [ DW_TAG_enumerator ] [eNR_BONDS :: 92]
!100 = metadata !{i32 786472, metadata !"eNR_G96BONDS", i64 93} ; [ DW_TAG_enumerator ] [eNR_G96BONDS :: 93]
!101 = metadata !{i32 786472, metadata !"eNR_ANGLES", i64 94} ; [ DW_TAG_enumerator ] [eNR_ANGLES :: 94]
!102 = metadata !{i32 786472, metadata !"eNR_G96ANGLES", i64 95} ; [ DW_TAG_enumerator ] [eNR_G96ANGLES :: 95]
!103 = metadata !{i32 786472, metadata !"eNR_PROPER", i64 96} ; [ DW_TAG_enumerator ] [eNR_PROPER :: 96]
!104 = metadata !{i32 786472, metadata !"eNR_IMPROPER", i64 97} ; [ DW_TAG_enumerator ] [eNR_IMPROPER :: 97]
!105 = metadata !{i32 786472, metadata !"eNR_RB", i64 98} ; [ DW_TAG_enumerator ] [eNR_RB :: 98]
!106 = metadata !{i32 786472, metadata !"eNR_DISRES", i64 99} ; [ DW_TAG_enumerator ] [eNR_DISRES :: 99]
!107 = metadata !{i32 786472, metadata !"eNR_ORIRES", i64 100} ; [ DW_TAG_enumerator ] [eNR_ORIRES :: 100]
!108 = metadata !{i32 786472, metadata !"eNR_POSRES", i64 101} ; [ DW_TAG_enumerator ] [eNR_POSRES :: 101]
!109 = metadata !{i32 786472, metadata !"eNR_ANGRES", i64 102} ; [ DW_TAG_enumerator ] [eNR_ANGRES :: 102]
!110 = metadata !{i32 786472, metadata !"eNR_ANGRESZ", i64 103} ; [ DW_TAG_enumerator ] [eNR_ANGRESZ :: 103]
!111 = metadata !{i32 786472, metadata !"eNR_MORSE", i64 104} ; [ DW_TAG_enumerator ] [eNR_MORSE :: 104]
!112 = metadata !{i32 786472, metadata !"eNR_CUBICBONDS", i64 105} ; [ DW_TAG_enumerator ] [eNR_CUBICBONDS :: 105]
!113 = metadata !{i32 786472, metadata !"eNR_WPOL", i64 106} ; [ DW_TAG_enumerator ] [eNR_WPOL :: 106]
!114 = metadata !{i32 786472, metadata !"eNR_VIRIAL", i64 107} ; [ DW_TAG_enumerator ] [eNR_VIRIAL :: 107]
!115 = metadata !{i32 786472, metadata !"eNR_UPDATE", i64 108} ; [ DW_TAG_enumerator ] [eNR_UPDATE :: 108]
!116 = metadata !{i32 786472, metadata !"eNR_EXTUPDATE", i64 109} ; [ DW_TAG_enumerator ] [eNR_EXTUPDATE :: 109]
!117 = metadata !{i32 786472, metadata !"eNR_STOPCM", i64 110} ; [ DW_TAG_enumerator ] [eNR_STOPCM :: 110]
!118 = metadata !{i32 786472, metadata !"eNR_PCOUPL", i64 111} ; [ DW_TAG_enumerator ] [eNR_PCOUPL :: 111]
!119 = metadata !{i32 786472, metadata !"eNR_EKIN", i64 112} ; [ DW_TAG_enumerator ] [eNR_EKIN :: 112]
!120 = metadata !{i32 786472, metadata !"eNR_LINCS", i64 113} ; [ DW_TAG_enumerator ] [eNR_LINCS :: 113]
!121 = metadata !{i32 786472, metadata !"eNR_LINCSMAT", i64 114} ; [ DW_TAG_enumerator ] [eNR_LINCSMAT :: 114]
!122 = metadata !{i32 786472, metadata !"eNR_SHAKE", i64 115} ; [ DW_TAG_enumerator ] [eNR_SHAKE :: 115]
!123 = metadata !{i32 786472, metadata !"eNR_SHAKE_V", i64 116} ; [ DW_TAG_enumerator ] [eNR_SHAKE_V :: 116]
!124 = metadata !{i32 786472, metadata !"eNR_SHAKE_RIJ", i64 117} ; [ DW_TAG_enumerator ] [eNR_SHAKE_RIJ :: 117]
!125 = metadata !{i32 786472, metadata !"eNR_SHAKE_VIR", i64 118} ; [ DW_TAG_enumerator ] [eNR_SHAKE_VIR :: 118]
!126 = metadata !{i32 786472, metadata !"eNR_SETTLE", i64 119} ; [ DW_TAG_enumerator ] [eNR_SETTLE :: 119]
!127 = metadata !{i32 786472, metadata !"eNR_PSHAKEINITLD", i64 120} ; [ DW_TAG_enumerator ] [eNR_PSHAKEINITLD :: 120]
!128 = metadata !{i32 786472, metadata !"eNR_PSHAKEINITMD", i64 121} ; [ DW_TAG_enumerator ] [eNR_PSHAKEINITMD :: 121]
!129 = metadata !{i32 786472, metadata !"eNR_PSHAKE", i64 122} ; [ DW_TAG_enumerator ] [eNR_PSHAKE :: 122]
!130 = metadata !{i32 786472, metadata !"eNR_DUM2", i64 123} ; [ DW_TAG_enumerator ] [eNR_DUM2 :: 123]
!131 = metadata !{i32 786472, metadata !"eNR_DUM3", i64 124} ; [ DW_TAG_enumerator ] [eNR_DUM3 :: 124]
!132 = metadata !{i32 786472, metadata !"eNR_DUM3FD", i64 125} ; [ DW_TAG_enumerator ] [eNR_DUM3FD :: 125]
!133 = metadata !{i32 786472, metadata !"eNR_DUM3FAD", i64 126} ; [ DW_TAG_enumerator ] [eNR_DUM3FAD :: 126]
!134 = metadata !{i32 786472, metadata !"eNR_DUM3OUT", i64 127} ; [ DW_TAG_enumerator ] [eNR_DUM3OUT :: 127]
!135 = metadata !{i32 786472, metadata !"eNR_DUM4FD", i64 128} ; [ DW_TAG_enumerator ] [eNR_DUM4FD :: 128]
!136 = metadata !{i32 786472, metadata !"eNRNB", i64 129} ; [ DW_TAG_enumerator ] [eNRNB :: 129]
!137 = metadata !{i32 786436, metadata !138, null, metadata !"", i32 59, i64 32, i64 32, i32 0, i32 0, null, metadata !139, i32 0, i32 0} ; [ DW_TAG_enumeration_type ] [line 59, size 32, align 32, offset 0] [from ]
!138 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/435.gromacs/src/fftgrid.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!139 = metadata !{metadata !140, metadata !141}
!140 = metadata !{i32 786472, metadata !"FFTW_FORWARD", i64 4294967295} ; [ DW_TAG_enumerator ] [FFTW_FORWARD :: 4294967295]
!141 = metadata !{i32 786472, metadata !"FFTW_BACKWARD", i64 1} ; [ DW_TAG_enumerator ] [FFTW_BACKWARD :: 1]
!142 = metadata !{i32 0}
!143 = metadata !{metadata !144, metadata !158, metadata !196, metadata !322, metadata !355, metadata !397, metadata !410, metadata !560, metadata !577, metadata !600, metadata !645, metadata !657}
!144 = metadata !{i32 786478, metadata !1, metadata !145, metadata !"calc_invh", metadata !"calc_invh", metadata !"", i32 57, metadata !146, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (float*, i32, i32, i32, float*)* @calc_invh, null, null, metadata !152, i32 58} ; [ DW_TAG_subprogram ] [line 57] [def] [scope 58] [calc_invh]
!145 = metadata !{i32 786473, metadata !1}        ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/pppm.c]
!146 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !147, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!147 = metadata !{null, metadata !148, metadata !151, metadata !151, metadata !151, metadata !148}
!148 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !149} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from real]
!149 = metadata !{i32 786454, metadata !1, null, metadata !"real", i32 87, i64 0, i64 0, i64 0, i32 0, metadata !150} ; [ DW_TAG_typedef ] [real] [line 87, size 0, align 0, offset 0] [from float]
!150 = metadata !{i32 786468, null, null, metadata !"float", i32 0, i64 32, i64 32, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [float] [line 0, size 32, align 32, offset 0, enc DW_ATE_float]
!151 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!152 = metadata !{metadata !153, metadata !154, metadata !155, metadata !156, metadata !157}
!153 = metadata !{i32 786689, metadata !144, metadata !"box", metadata !145, i32 16777273, metadata !148, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [box] [line 57]
!154 = metadata !{i32 786689, metadata !144, metadata !"nx", metadata !145, i32 33554489, metadata !151, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nx] [line 57]
!155 = metadata !{i32 786689, metadata !144, metadata !"ny", metadata !145, i32 50331705, metadata !151, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ny] [line 57]
!156 = metadata !{i32 786689, metadata !144, metadata !"nz", metadata !145, i32 67108921, metadata !151, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nz] [line 57]
!157 = metadata !{i32 786689, metadata !144, metadata !"invh", metadata !145, i32 83886137, metadata !148, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [invh] [line 57]
!158 = metadata !{i32 786478, metadata !1, metadata !145, metadata !"calc_weights", metadata !"calc_weights", metadata !"", i32 64, metadata !159, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i32, i32, i32, i32, float*, float*, float*, i32*, float*)* @calc_weights, null, null, metadata !162, i32 66} ; [ DW_TAG_subprogram ] [line 64] [def] [scope 66] [calc_weights]
!159 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !160, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!160 = metadata !{null, metadata !151, metadata !151, metadata !151, metadata !151, metadata !148, metadata !148, metadata !148, metadata !161, metadata !148}
!161 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !151} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from int]
!162 = metadata !{metadata !163, metadata !164, metadata !165, metadata !166, metadata !167, metadata !168, metadata !169, metadata !170, metadata !171, metadata !172, metadata !174, metadata !179, metadata !180, metadata !181, metadata !182, metadata !186, metadata !187, metadata !188, metadata !189, metadata !190, metadata !191, metadata !192, metadata !193, metadata !194, metadata !195}
!163 = metadata !{i32 786689, metadata !158, metadata !"iatom", metadata !145, i32 16777280, metadata !151, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [iatom] [line 64]
!164 = metadata !{i32 786689, metadata !158, metadata !"nx", metadata !145, i32 33554496, metadata !151, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nx] [line 64]
!165 = metadata !{i32 786689, metadata !158, metadata !"ny", metadata !145, i32 50331712, metadata !151, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ny] [line 64]
!166 = metadata !{i32 786689, metadata !158, metadata !"nz", metadata !145, i32 67108928, metadata !151, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nz] [line 64]
!167 = metadata !{i32 786689, metadata !158, metadata !"x", metadata !145, i32 83886145, metadata !148, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [x] [line 65]
!168 = metadata !{i32 786689, metadata !158, metadata !"box", metadata !145, i32 100663361, metadata !148, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [box] [line 65]
!169 = metadata !{i32 786689, metadata !158, metadata !"invh", metadata !145, i32 117440577, metadata !148, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [invh] [line 65]
!170 = metadata !{i32 786689, metadata !158, metadata !"ixyz", metadata !145, i32 134217793, metadata !161, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ixyz] [line 65]
!171 = metadata !{i32 786689, metadata !158, metadata !"WXYZ", metadata !145, i32 150995009, metadata !148, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [WXYZ] [line 65]
!172 = metadata !{i32 786688, metadata !158, metadata !"half", metadata !145, i32 67, metadata !173, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [half] [line 67]
!173 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !149} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from real]
!174 = metadata !{i32 786688, metadata !158, metadata !"wxyz", metadata !145, i32 68, metadata !175, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [wxyz] [line 68]
!175 = metadata !{i32 786454, metadata !1, null, metadata !"tensor", i32 105, i64 0, i64 0, i64 0, i32 0, metadata !176} ; [ DW_TAG_typedef ] [tensor] [line 105, size 0, align 0, offset 0] [from ]
!176 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 288, i64 32, i32 0, i32 0, metadata !149, metadata !177, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 288, align 32, offset 0] [from real]
!177 = metadata !{metadata !178, metadata !178}
!178 = metadata !{i32 786465, i64 0, i64 3}       ; [ DW_TAG_subrange_type ] [0, 2]
!179 = metadata !{i32 786688, metadata !158, metadata !"abc", metadata !145, i32 69, metadata !149, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [abc] [line 69]
!180 = metadata !{i32 786688, metadata !158, metadata !"ttt", metadata !145, i32 69, metadata !149, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ttt] [line 69]
!181 = metadata !{i32 786688, metadata !158, metadata !"fact", metadata !145, i32 69, metadata !149, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [fact] [line 69]
!182 = metadata !{i32 786688, metadata !158, metadata !"nxyz", metadata !145, i32 73, metadata !183, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nxyz] [line 73]
!183 = metadata !{i32 786454, metadata !1, null, metadata !"ivec", i32 107, i64 0, i64 0, i64 0, i32 0, metadata !184} ; [ DW_TAG_typedef ] [ivec] [line 107, size 0, align 0, offset 0] [from ]
!184 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 96, i64 32, i32 0, i32 0, metadata !151, metadata !185, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 96, align 32, offset 0] [from int]
!185 = metadata !{metadata !178}
!186 = metadata !{i32 786688, metadata !158, metadata !"it", metadata !145, i32 74, metadata !151, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [it] [line 74]
!187 = metadata !{i32 786688, metadata !158, metadata !"j", metadata !145, i32 74, metadata !151, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [j] [line 74]
!188 = metadata !{i32 786688, metadata !158, metadata !"k", metadata !145, i32 74, metadata !151, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [k] [line 74]
!189 = metadata !{i32 786688, metadata !158, metadata !"m", metadata !145, i32 74, metadata !151, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [m] [line 74]
!190 = metadata !{i32 786688, metadata !158, metadata !"nm", metadata !145, i32 74, metadata !151, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nm] [line 74]
!191 = metadata !{i32 786688, metadata !158, metadata !"Wx", metadata !145, i32 75, metadata !149, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [Wx] [line 75]
!192 = metadata !{i32 786688, metadata !158, metadata !"Wy", metadata !145, i32 75, metadata !149, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [Wy] [line 75]
!193 = metadata !{i32 786688, metadata !158, metadata !"Wzx", metadata !145, i32 75, metadata !149, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [Wzx] [line 75]
!194 = metadata !{i32 786688, metadata !158, metadata !"Wzy", metadata !145, i32 75, metadata !149, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [Wzy] [line 75]
!195 = metadata !{i32 786688, metadata !158, metadata !"Wzz", metadata !145, i32 75, metadata !149, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [Wzz] [line 75]
!196 = metadata !{i32 786478, metadata !1, metadata !145, metadata !"spread_q", metadata !"spread_q", metadata !"", i32 149, metadata !197, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._IO_FILE*, i32, i32, i32, [3 x float]*, float*, float*, %struct.t_fftgrid*, %struct.t_nrnb*)* @spread_q, null, null, metadata !286, i32 153} ; [ DW_TAG_subprogram ] [line 149] [def] [scope 153] [spread_q]
!197 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !198, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!198 = metadata !{null, metadata !199, metadata !151, metadata !151, metadata !151, metadata !256, metadata !148, metadata !148, metadata !259, metadata !277}
!199 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !200} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from FILE]
!200 = metadata !{i32 786454, metadata !1, null, metadata !"FILE", i32 48, i64 0, i64 0, i64 0, i32 0, metadata !201} ; [ DW_TAG_typedef ] [FILE] [line 48, size 0, align 0, offset 0] [from _IO_FILE]
!201 = metadata !{i32 786451, metadata !202, null, metadata !"_IO_FILE", i32 245, i64 1728, i64 64, i32 0, i32 0, null, metadata !203, i32 0, null, null} ; [ DW_TAG_structure_type ] [_IO_FILE] [line 245, size 1728, align 64, offset 0] [from ]
!202 = metadata !{metadata !"/usr/include/libio.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!203 = metadata !{metadata !204, metadata !205, metadata !208, metadata !209, metadata !210, metadata !211, metadata !212, metadata !213, metadata !214, metadata !215, metadata !216, metadata !217, metadata !218, metadata !226, metadata !227, metadata !228, metadata !229, metadata !232, metadata !234, metadata !236, metadata !240, metadata !242, metadata !244, metadata !245, metadata !246, metadata !247, metadata !248, metadata !251, metadata !252}
!204 = metadata !{i32 786445, metadata !202, metadata !201, metadata !"_flags", i32 246, i64 32, i64 32, i64 0, i32 0, metadata !151} ; [ DW_TAG_member ] [_flags] [line 246, size 32, align 32, offset 0] [from int]
!205 = metadata !{i32 786445, metadata !202, metadata !201, metadata !"_IO_read_ptr", i32 251, i64 64, i64 64, i64 64, i32 0, metadata !206} ; [ DW_TAG_member ] [_IO_read_ptr] [line 251, size 64, align 64, offset 64] [from ]
!206 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !207} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from char]
!207 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!208 = metadata !{i32 786445, metadata !202, metadata !201, metadata !"_IO_read_end", i32 252, i64 64, i64 64, i64 128, i32 0, metadata !206} ; [ DW_TAG_member ] [_IO_read_end] [line 252, size 64, align 64, offset 128] [from ]
!209 = metadata !{i32 786445, metadata !202, metadata !201, metadata !"_IO_read_base", i32 253, i64 64, i64 64, i64 192, i32 0, metadata !206} ; [ DW_TAG_member ] [_IO_read_base] [line 253, size 64, align 64, offset 192] [from ]
!210 = metadata !{i32 786445, metadata !202, metadata !201, metadata !"_IO_write_base", i32 254, i64 64, i64 64, i64 256, i32 0, metadata !206} ; [ DW_TAG_member ] [_IO_write_base] [line 254, size 64, align 64, offset 256] [from ]
!211 = metadata !{i32 786445, metadata !202, metadata !201, metadata !"_IO_write_ptr", i32 255, i64 64, i64 64, i64 320, i32 0, metadata !206} ; [ DW_TAG_member ] [_IO_write_ptr] [line 255, size 64, align 64, offset 320] [from ]
!212 = metadata !{i32 786445, metadata !202, metadata !201, metadata !"_IO_write_end", i32 256, i64 64, i64 64, i64 384, i32 0, metadata !206} ; [ DW_TAG_member ] [_IO_write_end] [line 256, size 64, align 64, offset 384] [from ]
!213 = metadata !{i32 786445, metadata !202, metadata !201, metadata !"_IO_buf_base", i32 257, i64 64, i64 64, i64 448, i32 0, metadata !206} ; [ DW_TAG_member ] [_IO_buf_base] [line 257, size 64, align 64, offset 448] [from ]
!214 = metadata !{i32 786445, metadata !202, metadata !201, metadata !"_IO_buf_end", i32 258, i64 64, i64 64, i64 512, i32 0, metadata !206} ; [ DW_TAG_member ] [_IO_buf_end] [line 258, size 64, align 64, offset 512] [from ]
!215 = metadata !{i32 786445, metadata !202, metadata !201, metadata !"_IO_save_base", i32 260, i64 64, i64 64, i64 576, i32 0, metadata !206} ; [ DW_TAG_member ] [_IO_save_base] [line 260, size 64, align 64, offset 576] [from ]
!216 = metadata !{i32 786445, metadata !202, metadata !201, metadata !"_IO_backup_base", i32 261, i64 64, i64 64, i64 640, i32 0, metadata !206} ; [ DW_TAG_member ] [_IO_backup_base] [line 261, size 64, align 64, offset 640] [from ]
!217 = metadata !{i32 786445, metadata !202, metadata !201, metadata !"_IO_save_end", i32 262, i64 64, i64 64, i64 704, i32 0, metadata !206} ; [ DW_TAG_member ] [_IO_save_end] [line 262, size 64, align 64, offset 704] [from ]
!218 = metadata !{i32 786445, metadata !202, metadata !201, metadata !"_markers", i32 264, i64 64, i64 64, i64 768, i32 0, metadata !219} ; [ DW_TAG_member ] [_markers] [line 264, size 64, align 64, offset 768] [from ]
!219 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !220} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from _IO_marker]
!220 = metadata !{i32 786451, metadata !202, null, metadata !"_IO_marker", i32 160, i64 192, i64 64, i32 0, i32 0, null, metadata !221, i32 0, null, null} ; [ DW_TAG_structure_type ] [_IO_marker] [line 160, size 192, align 64, offset 0] [from ]
!221 = metadata !{metadata !222, metadata !223, metadata !225}
!222 = metadata !{i32 786445, metadata !202, metadata !220, metadata !"_next", i32 161, i64 64, i64 64, i64 0, i32 0, metadata !219} ; [ DW_TAG_member ] [_next] [line 161, size 64, align 64, offset 0] [from ]
!223 = metadata !{i32 786445, metadata !202, metadata !220, metadata !"_sbuf", i32 162, i64 64, i64 64, i64 64, i32 0, metadata !224} ; [ DW_TAG_member ] [_sbuf] [line 162, size 64, align 64, offset 64] [from ]
!224 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !201} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from _IO_FILE]
!225 = metadata !{i32 786445, metadata !202, metadata !220, metadata !"_pos", i32 166, i64 32, i64 32, i64 128, i32 0, metadata !151} ; [ DW_TAG_member ] [_pos] [line 166, size 32, align 32, offset 128] [from int]
!226 = metadata !{i32 786445, metadata !202, metadata !201, metadata !"_chain", i32 266, i64 64, i64 64, i64 832, i32 0, metadata !224} ; [ DW_TAG_member ] [_chain] [line 266, size 64, align 64, offset 832] [from ]
!227 = metadata !{i32 786445, metadata !202, metadata !201, metadata !"_fileno", i32 268, i64 32, i64 32, i64 896, i32 0, metadata !151} ; [ DW_TAG_member ] [_fileno] [line 268, size 32, align 32, offset 896] [from int]
!228 = metadata !{i32 786445, metadata !202, metadata !201, metadata !"_flags2", i32 272, i64 32, i64 32, i64 928, i32 0, metadata !151} ; [ DW_TAG_member ] [_flags2] [line 272, size 32, align 32, offset 928] [from int]
!229 = metadata !{i32 786445, metadata !202, metadata !201, metadata !"_old_offset", i32 274, i64 64, i64 64, i64 960, i32 0, metadata !230} ; [ DW_TAG_member ] [_old_offset] [line 274, size 64, align 64, offset 960] [from __off_t]
!230 = metadata !{i32 786454, metadata !202, null, metadata !"__off_t", i32 131, i64 0, i64 0, i64 0, i32 0, metadata !231} ; [ DW_TAG_typedef ] [__off_t] [line 131, size 0, align 0, offset 0] [from long int]
!231 = metadata !{i32 786468, null, null, metadata !"long int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [long int] [line 0, size 64, align 64, offset 0, enc DW_ATE_signed]
!232 = metadata !{i32 786445, metadata !202, metadata !201, metadata !"_cur_column", i32 278, i64 16, i64 16, i64 1024, i32 0, metadata !233} ; [ DW_TAG_member ] [_cur_column] [line 278, size 16, align 16, offset 1024] [from unsigned short]
!233 = metadata !{i32 786468, null, null, metadata !"unsigned short", i32 0, i64 16, i64 16, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned short] [line 0, size 16, align 16, offset 0, enc DW_ATE_unsigned]
!234 = metadata !{i32 786445, metadata !202, metadata !201, metadata !"_vtable_offset", i32 279, i64 8, i64 8, i64 1040, i32 0, metadata !235} ; [ DW_TAG_member ] [_vtable_offset] [line 279, size 8, align 8, offset 1040] [from signed char]
!235 = metadata !{i32 786468, null, null, metadata !"signed char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [signed char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!236 = metadata !{i32 786445, metadata !202, metadata !201, metadata !"_shortbuf", i32 280, i64 8, i64 8, i64 1048, i32 0, metadata !237} ; [ DW_TAG_member ] [_shortbuf] [line 280, size 8, align 8, offset 1048] [from ]
!237 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 8, i64 8, i32 0, i32 0, metadata !207, metadata !238, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 8, align 8, offset 0] [from char]
!238 = metadata !{metadata !239}
!239 = metadata !{i32 786465, i64 0, i64 1}       ; [ DW_TAG_subrange_type ] [0, 0]
!240 = metadata !{i32 786445, metadata !202, metadata !201, metadata !"_lock", i32 284, i64 64, i64 64, i64 1088, i32 0, metadata !241} ; [ DW_TAG_member ] [_lock] [line 284, size 64, align 64, offset 1088] [from ]
!241 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, null} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!242 = metadata !{i32 786445, metadata !202, metadata !201, metadata !"_offset", i32 293, i64 64, i64 64, i64 1152, i32 0, metadata !243} ; [ DW_TAG_member ] [_offset] [line 293, size 64, align 64, offset 1152] [from __off64_t]
!243 = metadata !{i32 786454, metadata !202, null, metadata !"__off64_t", i32 132, i64 0, i64 0, i64 0, i32 0, metadata !231} ; [ DW_TAG_typedef ] [__off64_t] [line 132, size 0, align 0, offset 0] [from long int]
!244 = metadata !{i32 786445, metadata !202, metadata !201, metadata !"__pad1", i32 302, i64 64, i64 64, i64 1216, i32 0, metadata !241} ; [ DW_TAG_member ] [__pad1] [line 302, size 64, align 64, offset 1216] [from ]
!245 = metadata !{i32 786445, metadata !202, metadata !201, metadata !"__pad2", i32 303, i64 64, i64 64, i64 1280, i32 0, metadata !241} ; [ DW_TAG_member ] [__pad2] [line 303, size 64, align 64, offset 1280] [from ]
!246 = metadata !{i32 786445, metadata !202, metadata !201, metadata !"__pad3", i32 304, i64 64, i64 64, i64 1344, i32 0, metadata !241} ; [ DW_TAG_member ] [__pad3] [line 304, size 64, align 64, offset 1344] [from ]
!247 = metadata !{i32 786445, metadata !202, metadata !201, metadata !"__pad4", i32 305, i64 64, i64 64, i64 1408, i32 0, metadata !241} ; [ DW_TAG_member ] [__pad4] [line 305, size 64, align 64, offset 1408] [from ]
!248 = metadata !{i32 786445, metadata !202, metadata !201, metadata !"__pad5", i32 306, i64 64, i64 64, i64 1472, i32 0, metadata !249} ; [ DW_TAG_member ] [__pad5] [line 306, size 64, align 64, offset 1472] [from size_t]
!249 = metadata !{i32 786454, metadata !202, null, metadata !"size_t", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !250} ; [ DW_TAG_typedef ] [size_t] [line 42, size 0, align 0, offset 0] [from long unsigned int]
!250 = metadata !{i32 786468, null, null, metadata !"long unsigned int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [long unsigned int] [line 0, size 64, align 64, offset 0, enc DW_ATE_unsigned]
!251 = metadata !{i32 786445, metadata !202, metadata !201, metadata !"_mode", i32 308, i64 32, i64 32, i64 1536, i32 0, metadata !151} ; [ DW_TAG_member ] [_mode] [line 308, size 32, align 32, offset 1536] [from int]
!252 = metadata !{i32 786445, metadata !202, metadata !201, metadata !"_unused2", i32 310, i64 160, i64 8, i64 1568, i32 0, metadata !253} ; [ DW_TAG_member ] [_unused2] [line 310, size 160, align 8, offset 1568] [from ]
!253 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 160, i64 8, i32 0, i32 0, metadata !207, metadata !254, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 160, align 8, offset 0] [from char]
!254 = metadata !{metadata !255}
!255 = metadata !{i32 786465, i64 0, i64 20}      ; [ DW_TAG_subrange_type ] [0, 19]
!256 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !257} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from rvec]
!257 = metadata !{i32 786454, metadata !1, null, metadata !"rvec", i32 101, i64 0, i64 0, i64 0, i32 0, metadata !258} ; [ DW_TAG_typedef ] [rvec] [line 101, size 0, align 0, offset 0] [from ]
!258 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 96, i64 32, i32 0, i32 0, metadata !149, metadata !185, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 96, align 32, offset 0] [from real]
!259 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !260} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from t_fftgrid]
!260 = metadata !{i32 786454, metadata !1, null, metadata !"t_fftgrid", i32 86, i64 0, i64 0, i64 0, i32 0, metadata !261} ; [ DW_TAG_typedef ] [t_fftgrid] [line 86, size 0, align 0, offset 0] [from ]
!261 = metadata !{i32 786451, metadata !138, null, metadata !"", i32 71, i64 512, i64 64, i32 0, i32 0, null, metadata !262, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 71, size 512, align 64, offset 0] [from ]
!262 = metadata !{metadata !263, metadata !266, metadata !267, metadata !268, metadata !269, metadata !270, metadata !271, metadata !272, metadata !273, metadata !274, metadata !275, metadata !276}
!263 = metadata !{i32 786445, metadata !138, metadata !261, metadata !"ptr", i32 72, i64 64, i64 64, i64 0, i32 0, metadata !264} ; [ DW_TAG_member ] [ptr] [line 72, size 64, align 64, offset 0] [from ]
!264 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !265} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from t_fft_r]
!265 = metadata !{i32 786454, metadata !138, null, metadata !"t_fft_r", i32 58, i64 0, i64 0, i64 0, i32 0, metadata !149} ; [ DW_TAG_typedef ] [t_fft_r] [line 58, size 0, align 0, offset 0] [from real]
!266 = metadata !{i32 786445, metadata !138, metadata !261, metadata !"localptr", i32 73, i64 64, i64 64, i64 64, i32 0, metadata !264} ; [ DW_TAG_member ] [localptr] [line 73, size 64, align 64, offset 64] [from ]
!267 = metadata !{i32 786445, metadata !138, metadata !261, metadata !"workspace", i32 74, i64 64, i64 64, i64 128, i32 0, metadata !264} ; [ DW_TAG_member ] [workspace] [line 74, size 64, align 64, offset 128] [from ]
!268 = metadata !{i32 786445, metadata !138, metadata !261, metadata !"nx", i32 75, i64 32, i64 32, i64 192, i32 0, metadata !151} ; [ DW_TAG_member ] [nx] [line 75, size 32, align 32, offset 192] [from int]
!269 = metadata !{i32 786445, metadata !138, metadata !261, metadata !"ny", i32 75, i64 32, i64 32, i64 224, i32 0, metadata !151} ; [ DW_TAG_member ] [ny] [line 75, size 32, align 32, offset 224] [from int]
!270 = metadata !{i32 786445, metadata !138, metadata !261, metadata !"nz", i32 75, i64 32, i64 32, i64 256, i32 0, metadata !151} ; [ DW_TAG_member ] [nz] [line 75, size 32, align 32, offset 256] [from int]
!271 = metadata !{i32 786445, metadata !138, metadata !261, metadata !"la2r", i32 75, i64 32, i64 32, i64 288, i32 0, metadata !151} ; [ DW_TAG_member ] [la2r] [line 75, size 32, align 32, offset 288] [from int]
!272 = metadata !{i32 786445, metadata !138, metadata !261, metadata !"la2c", i32 75, i64 32, i64 32, i64 320, i32 0, metadata !151} ; [ DW_TAG_member ] [la2c] [line 75, size 32, align 32, offset 320] [from int]
!273 = metadata !{i32 786445, metadata !138, metadata !261, metadata !"la12r", i32 75, i64 32, i64 32, i64 352, i32 0, metadata !151} ; [ DW_TAG_member ] [la12r] [line 75, size 32, align 32, offset 352] [from int]
!274 = metadata !{i32 786445, metadata !138, metadata !261, metadata !"la12c", i32 75, i64 32, i64 32, i64 384, i32 0, metadata !151} ; [ DW_TAG_member ] [la12c] [line 75, size 32, align 32, offset 384] [from int]
!275 = metadata !{i32 786445, metadata !138, metadata !261, metadata !"nptr", i32 76, i64 32, i64 32, i64 416, i32 0, metadata !151} ; [ DW_TAG_member ] [nptr] [line 76, size 32, align 32, offset 416] [from int]
!276 = metadata !{i32 786445, metadata !138, metadata !261, metadata !"nxyz", i32 76, i64 32, i64 32, i64 448, i32 0, metadata !151} ; [ DW_TAG_member ] [nxyz] [line 76, size 32, align 32, offset 448] [from int]
!277 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !278} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from t_nrnb]
!278 = metadata !{i32 786454, metadata !1, null, metadata !"t_nrnb", i32 95, i64 0, i64 0, i64 0, i32 0, metadata !279} ; [ DW_TAG_typedef ] [t_nrnb] [line 95, size 0, align 0, offset 0] [from ]
!279 = metadata !{i32 786451, metadata !4, null, metadata !"", i32 93, i64 8256, i64 64, i32 0, i32 0, null, metadata !280, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 93, size 8256, align 64, offset 0] [from ]
!280 = metadata !{metadata !281}
!281 = metadata !{i32 786445, metadata !4, metadata !279, metadata !"n", i32 94, i64 8256, i64 64, i64 0, i32 0, metadata !282} ; [ DW_TAG_member ] [n] [line 94, size 8256, align 64, offset 0] [from ]
!282 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 8256, i64 64, i32 0, i32 0, metadata !283, metadata !284, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 8256, align 64, offset 0] [from double]
!283 = metadata !{i32 786468, null, null, metadata !"double", i32 0, i64 64, i64 64, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [double] [line 0, size 64, align 64, offset 0, enc DW_ATE_float]
!284 = metadata !{metadata !285}
!285 = metadata !{i32 786465, i64 0, i64 129}     ; [ DW_TAG_subrange_type ] [0, 128]
!286 = metadata !{metadata !287, metadata !288, metadata !289, metadata !290, metadata !291, metadata !292, metadata !293, metadata !294, metadata !295, metadata !296, metadata !297, metadata !298, metadata !299, metadata !303, metadata !304, metadata !305, metadata !306, metadata !307, metadata !308, metadata !309, metadata !310, metadata !311, metadata !312, metadata !313, metadata !314, metadata !315, metadata !316, metadata !317, metadata !318, metadata !319, metadata !320, metadata !321}
!287 = metadata !{i32 786689, metadata !196, metadata !"log", metadata !145, i32 16777365, metadata !199, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [log] [line 149]
!288 = metadata !{i32 786689, metadata !196, metadata !"bVerbose", metadata !145, i32 33554581, metadata !151, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [bVerbose] [line 149]
!289 = metadata !{i32 786689, metadata !196, metadata !"start", metadata !145, i32 50331798, metadata !151, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [start] [line 150]
!290 = metadata !{i32 786689, metadata !196, metadata !"nr", metadata !145, i32 67109014, metadata !151, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nr] [line 150]
!291 = metadata !{i32 786689, metadata !196, metadata !"x", metadata !145, i32 83886231, metadata !256, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [x] [line 151]
!292 = metadata !{i32 786689, metadata !196, metadata !"charge", metadata !145, i32 100663447, metadata !148, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [charge] [line 151]
!293 = metadata !{i32 786689, metadata !196, metadata !"box", metadata !145, i32 117440663, metadata !148, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [box] [line 151]
!294 = metadata !{i32 786689, metadata !196, metadata !"grid", metadata !145, i32 134217880, metadata !259, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [grid] [line 152]
!295 = metadata !{i32 786689, metadata !196, metadata !"nrnb", metadata !145, i32 150995096, metadata !277, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nrnb] [line 152]
!296 = metadata !{i32 786688, metadata !196, metadata !"invh", metadata !145, i32 156, metadata !257, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [invh] [line 156]
!297 = metadata !{i32 786688, metadata !196, metadata !"qi", metadata !145, i32 157, metadata !149, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [qi] [line 157]
!298 = metadata !{i32 786688, metadata !196, metadata !"qwt", metadata !145, i32 157, metadata !149, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [qwt] [line 157]
!299 = metadata !{i32 786688, metadata !196, metadata !"WXYZ", metadata !145, i32 161, metadata !300, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [WXYZ] [line 161]
!300 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 864, i64 32, i32 0, i32 0, metadata !149, metadata !301, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 864, align 32, offset 0] [from real]
!301 = metadata !{metadata !302}
!302 = metadata !{i32 786465, i64 0, i64 27}      ; [ DW_TAG_subrange_type ] [0, 26]
!303 = metadata !{i32 786688, metadata !196, metadata !"ixyz", metadata !145, i32 162, metadata !183, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ixyz] [line 162]
!304 = metadata !{i32 786688, metadata !196, metadata !"i", metadata !145, i32 163, metadata !151, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 163]
!305 = metadata !{i32 786688, metadata !196, metadata !"iX", metadata !145, i32 163, metadata !151, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [iX] [line 163]
!306 = metadata !{i32 786688, metadata !196, metadata !"iY", metadata !145, i32 163, metadata !151, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [iY] [line 163]
!307 = metadata !{i32 786688, metadata !196, metadata !"iZ", metadata !145, i32 163, metadata !151, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [iZ] [line 163]
!308 = metadata !{i32 786688, metadata !196, metadata !"index", metadata !145, i32 163, metadata !151, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [index] [line 163]
!309 = metadata !{i32 786688, metadata !196, metadata !"jx", metadata !145, i32 164, metadata !151, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [jx] [line 164]
!310 = metadata !{i32 786688, metadata !196, metadata !"jy", metadata !145, i32 164, metadata !151, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [jy] [line 164]
!311 = metadata !{i32 786688, metadata !196, metadata !"jz", metadata !145, i32 164, metadata !151, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [jz] [line 164]
!312 = metadata !{i32 786688, metadata !196, metadata !"jcx", metadata !145, i32 164, metadata !151, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [jcx] [line 164]
!313 = metadata !{i32 786688, metadata !196, metadata !"jcy", metadata !145, i32 164, metadata !151, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [jcy] [line 164]
!314 = metadata !{i32 786688, metadata !196, metadata !"jcz", metadata !145, i32 164, metadata !151, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [jcz] [line 164]
!315 = metadata !{i32 786688, metadata !196, metadata !"nxyz", metadata !145, i32 165, metadata !151, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nxyz] [line 165]
!316 = metadata !{i32 786688, metadata !196, metadata !"nx", metadata !145, i32 166, metadata !151, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nx] [line 166]
!317 = metadata !{i32 786688, metadata !196, metadata !"ny", metadata !145, i32 166, metadata !151, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ny] [line 166]
!318 = metadata !{i32 786688, metadata !196, metadata !"nz", metadata !145, i32 166, metadata !151, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nz] [line 166]
!319 = metadata !{i32 786688, metadata !196, metadata !"la2", metadata !145, i32 166, metadata !151, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [la2] [line 166]
!320 = metadata !{i32 786688, metadata !196, metadata !"la12", metadata !145, i32 166, metadata !151, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [la12] [line 166]
!321 = metadata !{i32 786688, metadata !196, metadata !"ptr", metadata !145, i32 167, metadata !264, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ptr] [line 167]
!322 = metadata !{i32 786478, metadata !1, metadata !145, metadata !"gather_inner", metadata !"gather_inner", metadata !"", i32 229, metadata !323, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, float (i32*, float*, i32*, i32*, i32*, i32, i32, float, float, float, float, float, float, float, float*, float*)* @gather_inner, null, null, metadata !325, i32 233} ; [ DW_TAG_subprogram ] [line 229] [def] [scope 233] [gather_inner]
!323 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !324, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!324 = metadata !{metadata !149, metadata !161, metadata !148, metadata !161, metadata !161, metadata !161, metadata !151, metadata !151, metadata !149, metadata !149, metadata !149, metadata !149, metadata !149, metadata !149, metadata !149, metadata !148, metadata !264}
!325 = metadata !{metadata !326, metadata !327, metadata !328, metadata !329, metadata !330, metadata !331, metadata !332, metadata !333, metadata !334, metadata !335, metadata !336, metadata !337, metadata !338, metadata !339, metadata !340, metadata !341, metadata !342, metadata !343, metadata !344, metadata !345, metadata !346, metadata !347, metadata !348, metadata !349, metadata !350, metadata !351, metadata !352, metadata !353, metadata !354}
!326 = metadata !{i32 786689, metadata !322, metadata !"JCXYZ", metadata !145, i32 16777445, metadata !161, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [JCXYZ] [line 229]
!327 = metadata !{i32 786689, metadata !322, metadata !"WXYZ", metadata !145, i32 33554661, metadata !148, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [WXYZ] [line 229]
!328 = metadata !{i32 786689, metadata !322, metadata !"ixw", metadata !145, i32 50331877, metadata !161, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ixw] [line 229]
!329 = metadata !{i32 786689, metadata !322, metadata !"iyw", metadata !145, i32 67109093, metadata !161, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [iyw] [line 229]
!330 = metadata !{i32 786689, metadata !322, metadata !"izw", metadata !145, i32 83886309, metadata !161, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [izw] [line 229]
!331 = metadata !{i32 786689, metadata !322, metadata !"la2", metadata !145, i32 100663526, metadata !151, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [la2] [line 230]
!332 = metadata !{i32 786689, metadata !322, metadata !"la12", metadata !145, i32 117440742, metadata !151, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [la12] [line 230]
!333 = metadata !{i32 786689, metadata !322, metadata !"c1x", metadata !145, i32 134217959, metadata !149, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [c1x] [line 231]
!334 = metadata !{i32 786689, metadata !322, metadata !"c1y", metadata !145, i32 150995175, metadata !149, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [c1y] [line 231]
!335 = metadata !{i32 786689, metadata !322, metadata !"c1z", metadata !145, i32 167772391, metadata !149, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [c1z] [line 231]
!336 = metadata !{i32 786689, metadata !322, metadata !"c2x", metadata !145, i32 184549607, metadata !149, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [c2x] [line 231]
!337 = metadata !{i32 786689, metadata !322, metadata !"c2y", metadata !145, i32 201326823, metadata !149, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [c2y] [line 231]
!338 = metadata !{i32 786689, metadata !322, metadata !"c2z", metadata !145, i32 218104039, metadata !149, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [c2z] [line 231]
!339 = metadata !{i32 786689, metadata !322, metadata !"qi", metadata !145, i32 234881256, metadata !149, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [qi] [line 232]
!340 = metadata !{i32 786689, metadata !322, metadata !"f", metadata !145, i32 251658472, metadata !148, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [f] [line 232]
!341 = metadata !{i32 786689, metadata !322, metadata !"ptr", metadata !145, i32 268435688, metadata !264, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ptr] [line 232]
!342 = metadata !{i32 786688, metadata !322, metadata !"pi", metadata !145, i32 234, metadata !149, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [pi] [line 234]
!343 = metadata !{i32 786688, metadata !322, metadata !"fX", metadata !145, i32 234, metadata !149, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [fX] [line 234]
!344 = metadata !{i32 786688, metadata !322, metadata !"fY", metadata !145, i32 234, metadata !149, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [fY] [line 234]
!345 = metadata !{i32 786688, metadata !322, metadata !"fZ", metadata !145, i32 234, metadata !149, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [fZ] [line 234]
!346 = metadata !{i32 786688, metadata !322, metadata !"weight", metadata !145, i32 234, metadata !149, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [weight] [line 234]
!347 = metadata !{i32 786688, metadata !322, metadata !"jxyz", metadata !145, i32 235, metadata !151, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [jxyz] [line 235]
!348 = metadata !{i32 786688, metadata !322, metadata !"m", metadata !145, i32 235, metadata !151, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [m] [line 235]
!349 = metadata !{i32 786688, metadata !322, metadata !"jcx", metadata !145, i32 235, metadata !151, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [jcx] [line 235]
!350 = metadata !{i32 786688, metadata !322, metadata !"jcy", metadata !145, i32 235, metadata !151, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [jcy] [line 235]
!351 = metadata !{i32 786688, metadata !322, metadata !"jcz", metadata !145, i32 235, metadata !151, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [jcz] [line 235]
!352 = metadata !{i32 786688, metadata !322, metadata !"jcx0", metadata !145, i32 236, metadata !151, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [jcx0] [line 236]
!353 = metadata !{i32 786688, metadata !322, metadata !"jcy0", metadata !145, i32 236, metadata !151, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [jcy0] [line 236]
!354 = metadata !{i32 786688, metadata !322, metadata !"jcz0", metadata !145, i32 236, metadata !151, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [jcz0] [line 236]
!355 = metadata !{i32 786478, metadata !1, metadata !145, metadata !"convolution", metadata !"convolution", metadata !"", i32 362, metadata !356, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._IO_FILE*, i32, %struct.t_fftgrid*, float***, %struct.t_commrec*)* @convolution, null, null, metadata !371, i32 364} ; [ DW_TAG_subprogram ] [line 362] [def] [scope 364] [convolution]
!356 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !357, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!357 = metadata !{null, metadata !199, metadata !151, metadata !259, metadata !358, metadata !360}
!358 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !359} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!359 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !148} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!360 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !361} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from t_commrec]
!361 = metadata !{i32 786454, metadata !1, null, metadata !"t_commrec", i32 40, i64 0, i64 0, i64 0, i32 0, metadata !362} ; [ DW_TAG_typedef ] [t_commrec] [line 40, size 0, align 0, offset 0] [from ]
!362 = metadata !{i32 786451, metadata !363, null, metadata !"", i32 36, i64 192, i64 32, i32 0, i32 0, null, metadata !364, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 36, size 192, align 32, offset 0] [from ]
!363 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/435.gromacs/src/types/commrec.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!364 = metadata !{metadata !365, metadata !366, metadata !367, metadata !368, metadata !369, metadata !370}
!365 = metadata !{i32 786445, metadata !363, metadata !362, metadata !"nodeid", i32 37, i64 32, i64 32, i64 0, i32 0, metadata !151} ; [ DW_TAG_member ] [nodeid] [line 37, size 32, align 32, offset 0] [from int]
!366 = metadata !{i32 786445, metadata !363, metadata !362, metadata !"nnodes", i32 37, i64 32, i64 32, i64 32, i32 0, metadata !151} ; [ DW_TAG_member ] [nnodes] [line 37, size 32, align 32, offset 32] [from int]
!367 = metadata !{i32 786445, metadata !363, metadata !362, metadata !"left", i32 38, i64 32, i64 32, i64 64, i32 0, metadata !151} ; [ DW_TAG_member ] [left] [line 38, size 32, align 32, offset 64] [from int]
!368 = metadata !{i32 786445, metadata !363, metadata !362, metadata !"right", i32 38, i64 32, i64 32, i64 96, i32 0, metadata !151} ; [ DW_TAG_member ] [right] [line 38, size 32, align 32, offset 96] [from int]
!369 = metadata !{i32 786445, metadata !363, metadata !362, metadata !"threadid", i32 39, i64 32, i64 32, i64 128, i32 0, metadata !151} ; [ DW_TAG_member ] [threadid] [line 39, size 32, align 32, offset 128] [from int]
!370 = metadata !{i32 786445, metadata !363, metadata !362, metadata !"nthreads", i32 39, i64 32, i64 32, i64 160, i32 0, metadata !151} ; [ DW_TAG_member ] [nthreads] [line 39, size 32, align 32, offset 160] [from int]
!371 = metadata !{metadata !372, metadata !373, metadata !374, metadata !375, metadata !376, metadata !377, metadata !378, metadata !379, metadata !380, metadata !381, metadata !382, metadata !383, metadata !384, metadata !385, metadata !386, metadata !387, metadata !394, metadata !395, metadata !396}
!372 = metadata !{i32 786689, metadata !355, metadata !"fp", metadata !145, i32 16777578, metadata !199, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fp] [line 362]
!373 = metadata !{i32 786689, metadata !355, metadata !"bVerbose", metadata !145, i32 33554794, metadata !151, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [bVerbose] [line 362]
!374 = metadata !{i32 786689, metadata !355, metadata !"grid", metadata !145, i32 50332010, metadata !259, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [grid] [line 362]
!375 = metadata !{i32 786689, metadata !355, metadata !"ghat", metadata !145, i32 67109226, metadata !358, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ghat] [line 362]
!376 = metadata !{i32 786689, metadata !355, metadata !"cr", metadata !145, i32 83886443, metadata !360, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cr] [line 363]
!377 = metadata !{i32 786688, metadata !355, metadata !"i", metadata !145, i32 365, metadata !151, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 365]
!378 = metadata !{i32 786688, metadata !355, metadata !"j", metadata !145, i32 365, metadata !151, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [j] [line 365]
!379 = metadata !{i32 786688, metadata !355, metadata !"k", metadata !145, i32 365, metadata !151, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [k] [line 365]
!380 = metadata !{i32 786688, metadata !355, metadata !"index", metadata !145, i32 365, metadata !151, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [index] [line 365]
!381 = metadata !{i32 786688, metadata !355, metadata !"gk", metadata !145, i32 366, metadata !149, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [gk] [line 366]
!382 = metadata !{i32 786688, metadata !355, metadata !"nx", metadata !145, i32 367, metadata !151, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nx] [line 367]
!383 = metadata !{i32 786688, metadata !355, metadata !"ny", metadata !145, i32 367, metadata !151, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ny] [line 367]
!384 = metadata !{i32 786688, metadata !355, metadata !"nz", metadata !145, i32 367, metadata !151, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nz] [line 367]
!385 = metadata !{i32 786688, metadata !355, metadata !"la2", metadata !145, i32 367, metadata !151, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [la2] [line 367]
!386 = metadata !{i32 786688, metadata !355, metadata !"la12", metadata !145, i32 367, metadata !151, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [la12] [line 367]
!387 = metadata !{i32 786688, metadata !355, metadata !"ptr", metadata !145, i32 368, metadata !388, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ptr] [line 368]
!388 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !389} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from t_fft_c]
!389 = metadata !{i32 786454, metadata !1, null, metadata !"t_fft_c", i32 57, i64 0, i64 0, i64 0, i32 0, metadata !390} ; [ DW_TAG_typedef ] [t_fft_c] [line 57, size 0, align 0, offset 0] [from ]
!390 = metadata !{i32 786451, metadata !138, null, metadata !"", i32 55, i64 64, i64 32, i32 0, i32 0, null, metadata !391, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 55, size 64, align 32, offset 0] [from ]
!391 = metadata !{metadata !392, metadata !393}
!392 = metadata !{i32 786445, metadata !138, metadata !390, metadata !"re", i32 56, i64 32, i64 32, i64 0, i32 0, metadata !149} ; [ DW_TAG_member ] [re] [line 56, size 32, align 32, offset 0] [from real]
!393 = metadata !{i32 786445, metadata !138, metadata !390, metadata !"im", i32 56, i64 32, i64 32, i64 32, i32 0, metadata !149} ; [ DW_TAG_member ] [im] [line 56, size 32, align 32, offset 32] [from real]
!394 = metadata !{i32 786688, metadata !355, metadata !"nTest", metadata !145, i32 369, metadata !161, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nTest] [line 369]
!395 = metadata !{i32 786688, metadata !355, metadata !"jstart", metadata !145, i32 370, metadata !151, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [jstart] [line 370]
!396 = metadata !{i32 786688, metadata !355, metadata !"jend", metadata !145, i32 370, metadata !151, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [jend] [line 370]
!397 = metadata !{i32 786478, metadata !1, metadata !145, metadata !"solve_pppm", metadata !"solve_pppm", metadata !"", i32 430, metadata !398, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._IO_FILE*, %struct.t_commrec*, %struct.t_fftgrid*, float***, float*, i32, %struct.t_nrnb*)* @solve_pppm, null, null, metadata !400, i32 433} ; [ DW_TAG_subprogram ] [line 430] [def] [scope 433] [solve_pppm]
!398 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !399, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!399 = metadata !{null, metadata !199, metadata !360, metadata !259, metadata !358, metadata !148, metadata !151, metadata !277}
!400 = metadata !{metadata !401, metadata !402, metadata !403, metadata !404, metadata !405, metadata !406, metadata !407, metadata !408, metadata !409}
!401 = metadata !{i32 786689, metadata !397, metadata !"fp", metadata !145, i32 16777646, metadata !199, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fp] [line 430]
!402 = metadata !{i32 786689, metadata !397, metadata !"cr", metadata !145, i32 33554862, metadata !360, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cr] [line 430]
!403 = metadata !{i32 786689, metadata !397, metadata !"grid", metadata !145, i32 50332079, metadata !259, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [grid] [line 431]
!404 = metadata !{i32 786689, metadata !397, metadata !"ghat", metadata !145, i32 67109295, metadata !358, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ghat] [line 431]
!405 = metadata !{i32 786689, metadata !397, metadata !"box", metadata !145, i32 83886511, metadata !148, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [box] [line 431]
!406 = metadata !{i32 786689, metadata !397, metadata !"bVerbose", metadata !145, i32 100663728, metadata !151, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [bVerbose] [line 432]
!407 = metadata !{i32 786689, metadata !397, metadata !"nrnb", metadata !145, i32 117440944, metadata !277, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nrnb] [line 432]
!408 = metadata !{i32 786688, metadata !397, metadata !"ntot", metadata !145, i32 434, metadata !151, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ntot] [line 434]
!409 = metadata !{i32 786688, metadata !397, metadata !"npppm", metadata !145, i32 434, metadata !151, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [npppm] [line 434]
!410 = metadata !{i32 786478, metadata !1, metadata !145, metadata !"init_pppm", metadata !"init_pppm", metadata !"", i32 469, metadata !411, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._IO_FILE*, %struct.t_commrec*, %struct.t_nsborder*, i32, i32, float*, i8*, %struct.t_inputrec*)* @init_pppm, null, null, metadata !541, i32 471} ; [ DW_TAG_subprogram ] [line 469] [def] [scope 471] [init_pppm]
!411 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !412, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!412 = metadata !{null, metadata !199, metadata !360, metadata !413, metadata !151, metadata !151, metadata !148, metadata !206, metadata !432}
!413 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !414} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from t_nsborder]
!414 = metadata !{i32 786454, metadata !1, null, metadata !"t_nsborder", i32 59, i64 0, i64 0, i64 0, i32 0, metadata !415} ; [ DW_TAG_typedef ] [t_nsborder] [line 59, size 0, align 0, offset 0] [from ]
!415 = metadata !{i32 786451, metadata !416, null, metadata !"", i32 36, i64 32992, i64 32, i32 0, i32 0, null, metadata !417, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 36, size 32992, align 32, offset 0] [from ]
!416 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/435.gromacs/src/types/nsborder.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!417 = metadata !{metadata !418, metadata !419, metadata !420, metadata !421, metadata !422, metadata !423, metadata !424, metadata !425, metadata !429, metadata !430, metadata !431}
!418 = metadata !{i32 786445, metadata !416, metadata !415, metadata !"nodeid", i32 37, i64 32, i64 32, i64 0, i32 0, metadata !151} ; [ DW_TAG_member ] [nodeid] [line 37, size 32, align 32, offset 0] [from int]
!419 = metadata !{i32 786445, metadata !416, metadata !415, metadata !"nnodes", i32 38, i64 32, i64 32, i64 32, i32 0, metadata !151} ; [ DW_TAG_member ] [nnodes] [line 38, size 32, align 32, offset 32] [from int]
!420 = metadata !{i32 786445, metadata !416, metadata !415, metadata !"cgtotal", i32 39, i64 32, i64 32, i64 64, i32 0, metadata !151} ; [ DW_TAG_member ] [cgtotal] [line 39, size 32, align 32, offset 64] [from int]
!421 = metadata !{i32 786445, metadata !416, metadata !415, metadata !"natoms", i32 40, i64 32, i64 32, i64 96, i32 0, metadata !151} ; [ DW_TAG_member ] [natoms] [line 40, size 32, align 32, offset 96] [from int]
!422 = metadata !{i32 786445, metadata !416, metadata !415, metadata !"nstDlb", i32 41, i64 32, i64 32, i64 128, i32 0, metadata !151} ; [ DW_TAG_member ] [nstDlb] [line 41, size 32, align 32, offset 128] [from int]
!423 = metadata !{i32 786445, metadata !416, metadata !415, metadata !"shift", i32 43, i64 32, i64 32, i64 160, i32 0, metadata !151} ; [ DW_TAG_member ] [shift] [line 43, size 32, align 32, offset 160] [from int]
!424 = metadata !{i32 786445, metadata !416, metadata !415, metadata !"bshift", i32 43, i64 32, i64 32, i64 192, i32 0, metadata !151} ; [ DW_TAG_member ] [bshift] [line 43, size 32, align 32, offset 192] [from int]
!425 = metadata !{i32 786445, metadata !416, metadata !415, metadata !"homenr", i32 50, i64 8192, i64 32, i64 224, i32 0, metadata !426} ; [ DW_TAG_member ] [homenr] [line 50, size 8192, align 32, offset 224] [from ]
!426 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 8192, i64 32, i32 0, i32 0, metadata !151, metadata !427, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 8192, align 32, offset 0] [from int]
!427 = metadata !{metadata !428}
!428 = metadata !{i32 786465, i64 0, i64 256}     ; [ DW_TAG_subrange_type ] [0, 255]
!429 = metadata !{i32 786445, metadata !416, metadata !415, metadata !"index", i32 51, i64 8192, i64 32, i64 8416, i32 0, metadata !426} ; [ DW_TAG_member ] [index] [line 51, size 8192, align 32, offset 8416] [from ]
!430 = metadata !{i32 786445, metadata !416, metadata !415, metadata !"cgload", i32 52, i64 8192, i64 32, i64 16608, i32 0, metadata !426} ; [ DW_TAG_member ] [cgload] [line 52, size 8192, align 32, offset 16608] [from ]
!431 = metadata !{i32 786445, metadata !416, metadata !415, metadata !"workload", i32 55, i64 8192, i64 32, i64 24800, i32 0, metadata !426} ; [ DW_TAG_member ] [workload] [line 55, size 8192, align 32, offset 24800] [from ]
!432 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !433} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from t_inputrec]
!433 = metadata !{i32 786454, metadata !1, null, metadata !"t_inputrec", i32 143, i64 0, i64 0, i64 0, i32 0, metadata !434} ; [ DW_TAG_typedef ] [t_inputrec] [line 143, size 0, align 0, offset 0] [from ]
!434 = metadata !{i32 786451, metadata !435, null, metadata !"", i32 55, i64 4736, i64 64, i32 0, i32 0, null, metadata !436, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 55, size 4736, align 64, offset 0] [from ]
!435 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/435.gromacs/src/types/inputrec.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!436 = metadata !{metadata !437, metadata !438, metadata !439, metadata !440, metadata !441, metadata !442, metadata !443, metadata !444, metadata !445, metadata !446, metadata !447, metadata !448, metadata !449, metadata !450, metadata !451, metadata !452, metadata !453, metadata !454, metadata !455, metadata !456, metadata !457, metadata !458, metadata !459, metadata !460, metadata !461, metadata !462, metadata !463, metadata !464, metadata !465, metadata !466, metadata !467, metadata !468, metadata !469, metadata !470, metadata !471, metadata !472, metadata !473, metadata !474, metadata !475, metadata !476, metadata !477, metadata !478, metadata !479, metadata !480, metadata !481, metadata !482, metadata !483, metadata !484, metadata !485, metadata !486, metadata !487, metadata !488, metadata !489, metadata !490, metadata !491, metadata !492, metadata !493, metadata !494, metadata !495, metadata !496, metadata !497, metadata !498, metadata !499, metadata !500, metadata !501, metadata !502, metadata !503, metadata !504, metadata !505, metadata !506, metadata !507, metadata !508, metadata !509, metadata !510, metadata !511, metadata !512, metadata !513, metadata !514, metadata !515, metadata !516, metadata !517, metadata !532, metadata !540}
!437 = metadata !{i32 786445, metadata !435, metadata !434, metadata !"eI", i32 56, i64 32, i64 32, i64 0, i32 0, metadata !151} ; [ DW_TAG_member ] [eI] [line 56, size 32, align 32, offset 0] [from int]
!438 = metadata !{i32 786445, metadata !435, metadata !434, metadata !"nsteps", i32 57, i64 32, i64 32, i64 32, i32 0, metadata !151} ; [ DW_TAG_member ] [nsteps] [line 57, size 32, align 32, offset 32] [from int]
!439 = metadata !{i32 786445, metadata !435, metadata !434, metadata !"ns_type", i32 58, i64 32, i64 32, i64 64, i32 0, metadata !151} ; [ DW_TAG_member ] [ns_type] [line 58, size 32, align 32, offset 64] [from int]
!440 = metadata !{i32 786445, metadata !435, metadata !434, metadata !"nstlist", i32 59, i64 32, i64 32, i64 96, i32 0, metadata !151} ; [ DW_TAG_member ] [nstlist] [line 59, size 32, align 32, offset 96] [from int]
!441 = metadata !{i32 786445, metadata !435, metadata !434, metadata !"ndelta", i32 60, i64 32, i64 32, i64 128, i32 0, metadata !151} ; [ DW_TAG_member ] [ndelta] [line 60, size 32, align 32, offset 128] [from int]
!442 = metadata !{i32 786445, metadata !435, metadata !434, metadata !"bDomDecomp", i32 61, i64 32, i64 32, i64 160, i32 0, metadata !151} ; [ DW_TAG_member ] [bDomDecomp] [line 61, size 32, align 32, offset 160] [from int]
!443 = metadata !{i32 786445, metadata !435, metadata !434, metadata !"decomp_dir", i32 62, i64 32, i64 32, i64 192, i32 0, metadata !151} ; [ DW_TAG_member ] [decomp_dir] [line 62, size 32, align 32, offset 192] [from int]
!444 = metadata !{i32 786445, metadata !435, metadata !434, metadata !"nstcomm", i32 63, i64 32, i64 32, i64 224, i32 0, metadata !151} ; [ DW_TAG_member ] [nstcomm] [line 63, size 32, align 32, offset 224] [from int]
!445 = metadata !{i32 786445, metadata !435, metadata !434, metadata !"nstlog", i32 65, i64 32, i64 32, i64 256, i32 0, metadata !151} ; [ DW_TAG_member ] [nstlog] [line 65, size 32, align 32, offset 256] [from int]
!446 = metadata !{i32 786445, metadata !435, metadata !434, metadata !"nstxout", i32 66, i64 32, i64 32, i64 288, i32 0, metadata !151} ; [ DW_TAG_member ] [nstxout] [line 66, size 32, align 32, offset 288] [from int]
!447 = metadata !{i32 786445, metadata !435, metadata !434, metadata !"nstvout", i32 67, i64 32, i64 32, i64 320, i32 0, metadata !151} ; [ DW_TAG_member ] [nstvout] [line 67, size 32, align 32, offset 320] [from int]
!448 = metadata !{i32 786445, metadata !435, metadata !434, metadata !"nstfout", i32 68, i64 32, i64 32, i64 352, i32 0, metadata !151} ; [ DW_TAG_member ] [nstfout] [line 68, size 32, align 32, offset 352] [from int]
!449 = metadata !{i32 786445, metadata !435, metadata !434, metadata !"nstenergy", i32 69, i64 32, i64 32, i64 384, i32 0, metadata !151} ; [ DW_TAG_member ] [nstenergy] [line 69, size 32, align 32, offset 384] [from int]
!450 = metadata !{i32 786445, metadata !435, metadata !434, metadata !"nstxtcout", i32 70, i64 32, i64 32, i64 416, i32 0, metadata !151} ; [ DW_TAG_member ] [nstxtcout] [line 70, size 32, align 32, offset 416] [from int]
!451 = metadata !{i32 786445, metadata !435, metadata !434, metadata !"init_t", i32 71, i64 32, i64 32, i64 448, i32 0, metadata !149} ; [ DW_TAG_member ] [init_t] [line 71, size 32, align 32, offset 448] [from real]
!452 = metadata !{i32 786445, metadata !435, metadata !434, metadata !"delta_t", i32 72, i64 32, i64 32, i64 480, i32 0, metadata !149} ; [ DW_TAG_member ] [delta_t] [line 72, size 32, align 32, offset 480] [from real]
!453 = metadata !{i32 786445, metadata !435, metadata !434, metadata !"xtcprec", i32 73, i64 32, i64 32, i64 512, i32 0, metadata !149} ; [ DW_TAG_member ] [xtcprec] [line 73, size 32, align 32, offset 512] [from real]
!454 = metadata !{i32 786445, metadata !435, metadata !434, metadata !"nkx", i32 74, i64 32, i64 32, i64 544, i32 0, metadata !151} ; [ DW_TAG_member ] [nkx] [line 74, size 32, align 32, offset 544] [from int]
!455 = metadata !{i32 786445, metadata !435, metadata !434, metadata !"nky", i32 74, i64 32, i64 32, i64 576, i32 0, metadata !151} ; [ DW_TAG_member ] [nky] [line 74, size 32, align 32, offset 576] [from int]
!456 = metadata !{i32 786445, metadata !435, metadata !434, metadata !"nkz", i32 74, i64 32, i64 32, i64 608, i32 0, metadata !151} ; [ DW_TAG_member ] [nkz] [line 74, size 32, align 32, offset 608] [from int]
!457 = metadata !{i32 786445, metadata !435, metadata !434, metadata !"pme_order", i32 76, i64 32, i64 32, i64 640, i32 0, metadata !151} ; [ DW_TAG_member ] [pme_order] [line 76, size 32, align 32, offset 640] [from int]
!458 = metadata !{i32 786445, metadata !435, metadata !434, metadata !"ewald_rtol", i32 77, i64 32, i64 32, i64 672, i32 0, metadata !149} ; [ DW_TAG_member ] [ewald_rtol] [line 77, size 32, align 32, offset 672] [from real]
!459 = metadata !{i32 786445, metadata !435, metadata !434, metadata !"ewald_geometry", i32 79, i64 32, i64 32, i64 704, i32 0, metadata !151} ; [ DW_TAG_member ] [ewald_geometry] [line 79, size 32, align 32, offset 704] [from int]
!460 = metadata !{i32 786445, metadata !435, metadata !434, metadata !"epsilon_surface", i32 80, i64 32, i64 32, i64 736, i32 0, metadata !151} ; [ DW_TAG_member ] [epsilon_surface] [line 80, size 32, align 32, offset 736] [from int]
!461 = metadata !{i32 786445, metadata !435, metadata !434, metadata !"bOptFFT", i32 81, i64 32, i64 32, i64 768, i32 0, metadata !151} ; [ DW_TAG_member ] [bOptFFT] [line 81, size 32, align 32, offset 768] [from int]
!462 = metadata !{i32 786445, metadata !435, metadata !434, metadata !"ePBC", i32 82, i64 32, i64 32, i64 800, i32 0, metadata !151} ; [ DW_TAG_member ] [ePBC] [line 82, size 32, align 32, offset 800] [from int]
!463 = metadata !{i32 786445, metadata !435, metadata !434, metadata !"bUncStart", i32 83, i64 32, i64 32, i64 832, i32 0, metadata !151} ; [ DW_TAG_member ] [bUncStart] [line 83, size 32, align 32, offset 832] [from int]
!464 = metadata !{i32 786445, metadata !435, metadata !434, metadata !"etc", i32 84, i64 32, i64 32, i64 864, i32 0, metadata !151} ; [ DW_TAG_member ] [etc] [line 84, size 32, align 32, offset 864] [from int]
!465 = metadata !{i32 786445, metadata !435, metadata !434, metadata !"epc", i32 85, i64 32, i64 32, i64 896, i32 0, metadata !151} ; [ DW_TAG_member ] [epc] [line 85, size 32, align 32, offset 896] [from int]
!466 = metadata !{i32 786445, metadata !435, metadata !434, metadata !"epct", i32 86, i64 32, i64 32, i64 928, i32 0, metadata !151} ; [ DW_TAG_member ] [epct] [line 86, size 32, align 32, offset 928] [from int]
!467 = metadata !{i32 786445, metadata !435, metadata !434, metadata !"tau_p", i32 87, i64 32, i64 32, i64 960, i32 0, metadata !149} ; [ DW_TAG_member ] [tau_p] [line 87, size 32, align 32, offset 960] [from real]
!468 = metadata !{i32 786445, metadata !435, metadata !434, metadata !"ref_p", i32 88, i64 288, i64 32, i64 992, i32 0, metadata !175} ; [ DW_TAG_member ] [ref_p] [line 88, size 288, align 32, offset 992] [from tensor]
!469 = metadata !{i32 786445, metadata !435, metadata !434, metadata !"compress", i32 89, i64 288, i64 32, i64 1280, i32 0, metadata !175} ; [ DW_TAG_member ] [compress] [line 89, size 288, align 32, offset 1280] [from tensor]
!470 = metadata !{i32 786445, metadata !435, metadata !434, metadata !"bSimAnn", i32 90, i64 32, i64 32, i64 1568, i32 0, metadata !151} ; [ DW_TAG_member ] [bSimAnn] [line 90, size 32, align 32, offset 1568] [from int]
!471 = metadata !{i32 786445, metadata !435, metadata !434, metadata !"zero_temp_time", i32 91, i64 32, i64 32, i64 1600, i32 0, metadata !149} ; [ DW_TAG_member ] [zero_temp_time] [line 91, size 32, align 32, offset 1600] [from real]
!472 = metadata !{i32 786445, metadata !435, metadata !434, metadata !"rlist", i32 92, i64 32, i64 32, i64 1632, i32 0, metadata !149} ; [ DW_TAG_member ] [rlist] [line 92, size 32, align 32, offset 1632] [from real]
!473 = metadata !{i32 786445, metadata !435, metadata !434, metadata !"coulombtype", i32 93, i64 32, i64 32, i64 1664, i32 0, metadata !151} ; [ DW_TAG_member ] [coulombtype] [line 93, size 32, align 32, offset 1664] [from int]
!474 = metadata !{i32 786445, metadata !435, metadata !434, metadata !"rcoulomb_switch", i32 94, i64 32, i64 32, i64 1696, i32 0, metadata !149} ; [ DW_TAG_member ] [rcoulomb_switch] [line 94, size 32, align 32, offset 1696] [from real]
!475 = metadata !{i32 786445, metadata !435, metadata !434, metadata !"rcoulomb", i32 95, i64 32, i64 32, i64 1728, i32 0, metadata !149} ; [ DW_TAG_member ] [rcoulomb] [line 95, size 32, align 32, offset 1728] [from real]
!476 = metadata !{i32 786445, metadata !435, metadata !434, metadata !"vdwtype", i32 96, i64 32, i64 32, i64 1760, i32 0, metadata !151} ; [ DW_TAG_member ] [vdwtype] [line 96, size 32, align 32, offset 1760] [from int]
!477 = metadata !{i32 786445, metadata !435, metadata !434, metadata !"rvdw_switch", i32 97, i64 32, i64 32, i64 1792, i32 0, metadata !149} ; [ DW_TAG_member ] [rvdw_switch] [line 97, size 32, align 32, offset 1792] [from real]
!478 = metadata !{i32 786445, metadata !435, metadata !434, metadata !"rvdw", i32 98, i64 32, i64 32, i64 1824, i32 0, metadata !149} ; [ DW_TAG_member ] [rvdw] [line 98, size 32, align 32, offset 1824] [from real]
!479 = metadata !{i32 786445, metadata !435, metadata !434, metadata !"epsilon_r", i32 99, i64 32, i64 32, i64 1856, i32 0, metadata !149} ; [ DW_TAG_member ] [epsilon_r] [line 99, size 32, align 32, offset 1856] [from real]
!480 = metadata !{i32 786445, metadata !435, metadata !434, metadata !"eDispCorr", i32 100, i64 32, i64 32, i64 1888, i32 0, metadata !151} ; [ DW_TAG_member ] [eDispCorr] [line 100, size 32, align 32, offset 1888] [from int]
!481 = metadata !{i32 786445, metadata !435, metadata !434, metadata !"shake_tol", i32 101, i64 32, i64 32, i64 1920, i32 0, metadata !149} ; [ DW_TAG_member ] [shake_tol] [line 101, size 32, align 32, offset 1920] [from real]
!482 = metadata !{i32 786445, metadata !435, metadata !434, metadata !"fudgeQQ", i32 102, i64 32, i64 32, i64 1952, i32 0, metadata !149} ; [ DW_TAG_member ] [fudgeQQ] [line 102, size 32, align 32, offset 1952] [from real]
!483 = metadata !{i32 786445, metadata !435, metadata !434, metadata !"efep", i32 103, i64 32, i64 32, i64 1984, i32 0, metadata !151} ; [ DW_TAG_member ] [efep] [line 103, size 32, align 32, offset 1984] [from int]
!484 = metadata !{i32 786445, metadata !435, metadata !434, metadata !"init_lambda", i32 104, i64 32, i64 32, i64 2016, i32 0, metadata !149} ; [ DW_TAG_member ] [init_lambda] [line 104, size 32, align 32, offset 2016] [from real]
!485 = metadata !{i32 786445, metadata !435, metadata !434, metadata !"delta_lambda", i32 105, i64 32, i64 32, i64 2048, i32 0, metadata !149} ; [ DW_TAG_member ] [delta_lambda] [line 105, size 32, align 32, offset 2048] [from real]
!486 = metadata !{i32 786445, metadata !435, metadata !434, metadata !"sc_alpha", i32 106, i64 32, i64 32, i64 2080, i32 0, metadata !149} ; [ DW_TAG_member ] [sc_alpha] [line 106, size 32, align 32, offset 2080] [from real]
!487 = metadata !{i32 786445, metadata !435, metadata !434, metadata !"sc_sigma", i32 107, i64 32, i64 32, i64 2112, i32 0, metadata !149} ; [ DW_TAG_member ] [sc_sigma] [line 107, size 32, align 32, offset 2112] [from real]
!488 = metadata !{i32 786445, metadata !435, metadata !434, metadata !"dr_fc", i32 108, i64 32, i64 32, i64 2144, i32 0, metadata !149} ; [ DW_TAG_member ] [dr_fc] [line 108, size 32, align 32, offset 2144] [from real]
!489 = metadata !{i32 786445, metadata !435, metadata !434, metadata !"eDisreWeighting", i32 109, i64 32, i64 32, i64 2176, i32 0, metadata !151} ; [ DW_TAG_member ] [eDisreWeighting] [line 109, size 32, align 32, offset 2176] [from int]
!490 = metadata !{i32 786445, metadata !435, metadata !434, metadata !"bDisreMixed", i32 110, i64 32, i64 32, i64 2208, i32 0, metadata !151} ; [ DW_TAG_member ] [bDisreMixed] [line 110, size 32, align 32, offset 2208] [from int]
!491 = metadata !{i32 786445, metadata !435, metadata !434, metadata !"nstdisreout", i32 111, i64 32, i64 32, i64 2240, i32 0, metadata !151} ; [ DW_TAG_member ] [nstdisreout] [line 111, size 32, align 32, offset 2240] [from int]
!492 = metadata !{i32 786445, metadata !435, metadata !434, metadata !"dr_tau", i32 112, i64 32, i64 32, i64 2272, i32 0, metadata !149} ; [ DW_TAG_member ] [dr_tau] [line 112, size 32, align 32, offset 2272] [from real]
!493 = metadata !{i32 786445, metadata !435, metadata !434, metadata !"orires_fc", i32 113, i64 32, i64 32, i64 2304, i32 0, metadata !149} ; [ DW_TAG_member ] [orires_fc] [line 113, size 32, align 32, offset 2304] [from real]
!494 = metadata !{i32 786445, metadata !435, metadata !434, metadata !"orires_tau", i32 114, i64 32, i64 32, i64 2336, i32 0, metadata !149} ; [ DW_TAG_member ] [orires_tau] [line 114, size 32, align 32, offset 2336] [from real]
!495 = metadata !{i32 786445, metadata !435, metadata !434, metadata !"nstorireout", i32 115, i64 32, i64 32, i64 2368, i32 0, metadata !151} ; [ DW_TAG_member ] [nstorireout] [line 115, size 32, align 32, offset 2368] [from int]
!496 = metadata !{i32 786445, metadata !435, metadata !434, metadata !"em_stepsize", i32 116, i64 32, i64 32, i64 2400, i32 0, metadata !149} ; [ DW_TAG_member ] [em_stepsize] [line 116, size 32, align 32, offset 2400] [from real]
!497 = metadata !{i32 786445, metadata !435, metadata !434, metadata !"em_tol", i32 117, i64 32, i64 32, i64 2432, i32 0, metadata !149} ; [ DW_TAG_member ] [em_tol] [line 117, size 32, align 32, offset 2432] [from real]
!498 = metadata !{i32 786445, metadata !435, metadata !434, metadata !"niter", i32 118, i64 32, i64 32, i64 2464, i32 0, metadata !151} ; [ DW_TAG_member ] [niter] [line 118, size 32, align 32, offset 2464] [from int]
!499 = metadata !{i32 786445, metadata !435, metadata !434, metadata !"fc_stepsize", i32 120, i64 32, i64 32, i64 2496, i32 0, metadata !151} ; [ DW_TAG_member ] [fc_stepsize] [line 120, size 32, align 32, offset 2496] [from int]
!500 = metadata !{i32 786445, metadata !435, metadata !434, metadata !"nstcgsteep", i32 122, i64 32, i64 32, i64 2528, i32 0, metadata !151} ; [ DW_TAG_member ] [nstcgsteep] [line 122, size 32, align 32, offset 2528] [from int]
!501 = metadata !{i32 786445, metadata !435, metadata !434, metadata !"eConstrAlg", i32 124, i64 32, i64 32, i64 2560, i32 0, metadata !151} ; [ DW_TAG_member ] [eConstrAlg] [line 124, size 32, align 32, offset 2560] [from int]
!502 = metadata !{i32 786445, metadata !435, metadata !434, metadata !"nProjOrder", i32 125, i64 32, i64 32, i64 2592, i32 0, metadata !151} ; [ DW_TAG_member ] [nProjOrder] [line 125, size 32, align 32, offset 2592] [from int]
!503 = metadata !{i32 786445, metadata !435, metadata !434, metadata !"LincsWarnAngle", i32 126, i64 32, i64 32, i64 2624, i32 0, metadata !149} ; [ DW_TAG_member ] [LincsWarnAngle] [line 126, size 32, align 32, offset 2624] [from real]
!504 = metadata !{i32 786445, metadata !435, metadata !434, metadata !"bShakeSOR", i32 127, i64 32, i64 32, i64 2656, i32 0, metadata !151} ; [ DW_TAG_member ] [bShakeSOR] [line 127, size 32, align 32, offset 2656] [from int]
!505 = metadata !{i32 786445, metadata !435, metadata !434, metadata !"bd_temp", i32 128, i64 32, i64 32, i64 2688, i32 0, metadata !149} ; [ DW_TAG_member ] [bd_temp] [line 128, size 32, align 32, offset 2688] [from real]
!506 = metadata !{i32 786445, metadata !435, metadata !434, metadata !"bd_fric", i32 129, i64 32, i64 32, i64 2720, i32 0, metadata !149} ; [ DW_TAG_member ] [bd_fric] [line 129, size 32, align 32, offset 2720] [from real]
!507 = metadata !{i32 786445, metadata !435, metadata !434, metadata !"ld_seed", i32 130, i64 32, i64 32, i64 2752, i32 0, metadata !151} ; [ DW_TAG_member ] [ld_seed] [line 130, size 32, align 32, offset 2752] [from int]
!508 = metadata !{i32 786445, metadata !435, metadata !434, metadata !"cos_accel", i32 131, i64 32, i64 32, i64 2784, i32 0, metadata !149} ; [ DW_TAG_member ] [cos_accel] [line 131, size 32, align 32, offset 2784] [from real]
!509 = metadata !{i32 786445, metadata !435, metadata !434, metadata !"userint1", i32 132, i64 32, i64 32, i64 2816, i32 0, metadata !151} ; [ DW_TAG_member ] [userint1] [line 132, size 32, align 32, offset 2816] [from int]
!510 = metadata !{i32 786445, metadata !435, metadata !434, metadata !"userint2", i32 133, i64 32, i64 32, i64 2848, i32 0, metadata !151} ; [ DW_TAG_member ] [userint2] [line 133, size 32, align 32, offset 2848] [from int]
!511 = metadata !{i32 786445, metadata !435, metadata !434, metadata !"userint3", i32 134, i64 32, i64 32, i64 2880, i32 0, metadata !151} ; [ DW_TAG_member ] [userint3] [line 134, size 32, align 32, offset 2880] [from int]
!512 = metadata !{i32 786445, metadata !435, metadata !434, metadata !"userint4", i32 135, i64 32, i64 32, i64 2912, i32 0, metadata !151} ; [ DW_TAG_member ] [userint4] [line 135, size 32, align 32, offset 2912] [from int]
!513 = metadata !{i32 786445, metadata !435, metadata !434, metadata !"userreal1", i32 136, i64 32, i64 32, i64 2944, i32 0, metadata !149} ; [ DW_TAG_member ] [userreal1] [line 136, size 32, align 32, offset 2944] [from real]
!514 = metadata !{i32 786445, metadata !435, metadata !434, metadata !"userreal2", i32 137, i64 32, i64 32, i64 2976, i32 0, metadata !149} ; [ DW_TAG_member ] [userreal2] [line 137, size 32, align 32, offset 2976] [from real]
!515 = metadata !{i32 786445, metadata !435, metadata !434, metadata !"userreal3", i32 138, i64 32, i64 32, i64 3008, i32 0, metadata !149} ; [ DW_TAG_member ] [userreal3] [line 138, size 32, align 32, offset 3008] [from real]
!516 = metadata !{i32 786445, metadata !435, metadata !434, metadata !"userreal4", i32 139, i64 32, i64 32, i64 3040, i32 0, metadata !149} ; [ DW_TAG_member ] [userreal4] [line 139, size 32, align 32, offset 3040] [from real]
!517 = metadata !{i32 786445, metadata !435, metadata !434, metadata !"opts", i32 140, i64 512, i64 64, i64 3072, i32 0, metadata !518} ; [ DW_TAG_member ] [opts] [line 140, size 512, align 64, offset 3072] [from t_grpopts]
!518 = metadata !{i32 786454, metadata !435, null, metadata !"t_grpopts", i32 53, i64 0, i64 0, i64 0, i32 0, metadata !519} ; [ DW_TAG_typedef ] [t_grpopts] [line 53, size 0, align 0, offset 0] [from ]
!519 = metadata !{i32 786451, metadata !435, null, metadata !"", i32 42, i64 512, i64 64, i32 0, i32 0, null, metadata !520, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 42, size 512, align 64, offset 0] [from ]
!520 = metadata !{metadata !521, metadata !522, metadata !523, metadata !524, metadata !525, metadata !526, metadata !527, metadata !528, metadata !529, metadata !531}
!521 = metadata !{i32 786445, metadata !435, metadata !519, metadata !"ngtc", i32 43, i64 32, i64 32, i64 0, i32 0, metadata !151} ; [ DW_TAG_member ] [ngtc] [line 43, size 32, align 32, offset 0] [from int]
!522 = metadata !{i32 786445, metadata !435, metadata !519, metadata !"ngacc", i32 44, i64 32, i64 32, i64 32, i32 0, metadata !151} ; [ DW_TAG_member ] [ngacc] [line 44, size 32, align 32, offset 32] [from int]
!523 = metadata !{i32 786445, metadata !435, metadata !519, metadata !"ngfrz", i32 45, i64 32, i64 32, i64 64, i32 0, metadata !151} ; [ DW_TAG_member ] [ngfrz] [line 45, size 32, align 32, offset 64] [from int]
!524 = metadata !{i32 786445, metadata !435, metadata !519, metadata !"ngener", i32 46, i64 32, i64 32, i64 96, i32 0, metadata !151} ; [ DW_TAG_member ] [ngener] [line 46, size 32, align 32, offset 96] [from int]
!525 = metadata !{i32 786445, metadata !435, metadata !519, metadata !"nrdf", i32 47, i64 64, i64 64, i64 128, i32 0, metadata !148} ; [ DW_TAG_member ] [nrdf] [line 47, size 64, align 64, offset 128] [from ]
!526 = metadata !{i32 786445, metadata !435, metadata !519, metadata !"ref_t", i32 48, i64 64, i64 64, i64 192, i32 0, metadata !148} ; [ DW_TAG_member ] [ref_t] [line 48, size 64, align 64, offset 192] [from ]
!527 = metadata !{i32 786445, metadata !435, metadata !519, metadata !"tau_t", i32 49, i64 64, i64 64, i64 256, i32 0, metadata !148} ; [ DW_TAG_member ] [tau_t] [line 49, size 64, align 64, offset 256] [from ]
!528 = metadata !{i32 786445, metadata !435, metadata !519, metadata !"acc", i32 50, i64 64, i64 64, i64 320, i32 0, metadata !256} ; [ DW_TAG_member ] [acc] [line 50, size 64, align 64, offset 320] [from ]
!529 = metadata !{i32 786445, metadata !435, metadata !519, metadata !"nFreeze", i32 51, i64 64, i64 64, i64 384, i32 0, metadata !530} ; [ DW_TAG_member ] [nFreeze] [line 51, size 64, align 64, offset 384] [from ]
!530 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !183} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ivec]
!531 = metadata !{i32 786445, metadata !435, metadata !519, metadata !"eg_excl", i32 52, i64 64, i64 64, i64 448, i32 0, metadata !161} ; [ DW_TAG_member ] [eg_excl] [line 52, size 64, align 64, offset 448] [from ]
!532 = metadata !{i32 786445, metadata !435, metadata !434, metadata !"ex", i32 141, i64 576, i64 64, i64 3584, i32 0, metadata !533} ; [ DW_TAG_member ] [ex] [line 141, size 576, align 64, offset 3584] [from ]
!533 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 576, i64 64, i32 0, i32 0, metadata !534, metadata !185, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 576, align 64, offset 0] [from t_cosines]
!534 = metadata !{i32 786454, metadata !435, null, metadata !"t_cosines", i32 40, i64 0, i64 0, i64 0, i32 0, metadata !535} ; [ DW_TAG_typedef ] [t_cosines] [line 40, size 0, align 0, offset 0] [from ]
!535 = metadata !{i32 786451, metadata !435, null, metadata !"", i32 36, i64 192, i64 64, i32 0, i32 0, null, metadata !536, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 36, size 192, align 64, offset 0] [from ]
!536 = metadata !{metadata !537, metadata !538, metadata !539}
!537 = metadata !{i32 786445, metadata !435, metadata !535, metadata !"n", i32 37, i64 32, i64 32, i64 0, i32 0, metadata !151} ; [ DW_TAG_member ] [n] [line 37, size 32, align 32, offset 0] [from int]
!538 = metadata !{i32 786445, metadata !435, metadata !535, metadata !"a", i32 38, i64 64, i64 64, i64 64, i32 0, metadata !148} ; [ DW_TAG_member ] [a] [line 38, size 64, align 64, offset 64] [from ]
!539 = metadata !{i32 786445, metadata !435, metadata !535, metadata !"phi", i32 39, i64 64, i64 64, i64 128, i32 0, metadata !148} ; [ DW_TAG_member ] [phi] [line 39, size 64, align 64, offset 128] [from ]
!540 = metadata !{i32 786445, metadata !435, metadata !434, metadata !"et", i32 142, i64 576, i64 64, i64 4160, i32 0, metadata !533} ; [ DW_TAG_member ] [et] [line 142, size 576, align 64, offset 4160] [from ]
!541 = metadata !{metadata !542, metadata !543, metadata !544, metadata !545, metadata !546, metadata !547, metadata !548, metadata !549, metadata !550, metadata !551, metadata !552, metadata !553, metadata !554, metadata !555, metadata !556, metadata !557, metadata !558, metadata !559}
!542 = metadata !{i32 786689, metadata !410, metadata !"log", metadata !145, i32 16777685, metadata !199, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [log] [line 469]
!543 = metadata !{i32 786689, metadata !410, metadata !"cr", metadata !145, i32 33554901, metadata !360, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cr] [line 469]
!544 = metadata !{i32 786689, metadata !410, metadata !"nsb", metadata !145, i32 50332117, metadata !413, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nsb] [line 469]
!545 = metadata !{i32 786689, metadata !410, metadata !"bVerbose", metadata !145, i32 67109334, metadata !151, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [bVerbose] [line 470]
!546 = metadata !{i32 786689, metadata !410, metadata !"bOld", metadata !145, i32 83886550, metadata !151, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [bOld] [line 470]
!547 = metadata !{i32 786689, metadata !410, metadata !"box", metadata !145, i32 100663766, metadata !148, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [box] [line 470]
!548 = metadata !{i32 786689, metadata !410, metadata !"ghatfn", metadata !145, i32 117440982, metadata !206, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ghatfn] [line 470]
!549 = metadata !{i32 786689, metadata !410, metadata !"ir", metadata !145, i32 134218198, metadata !432, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ir] [line 470]
!550 = metadata !{i32 786688, metadata !410, metadata !"nx", metadata !145, i32 472, metadata !151, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nx] [line 472]
!551 = metadata !{i32 786688, metadata !410, metadata !"ny", metadata !145, i32 472, metadata !151, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ny] [line 472]
!552 = metadata !{i32 786688, metadata !410, metadata !"nz", metadata !145, i32 472, metadata !151, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nz] [line 472]
!553 = metadata !{i32 786688, metadata !410, metadata !"m", metadata !145, i32 472, metadata !151, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [m] [line 472]
!554 = metadata !{i32 786688, metadata !410, metadata !"porder", metadata !145, i32 472, metadata !151, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [porder] [line 472]
!555 = metadata !{i32 786688, metadata !410, metadata !"grids", metadata !145, i32 473, metadata !183, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [grids] [line 473]
!556 = metadata !{i32 786688, metadata !410, metadata !"r1", metadata !145, i32 474, metadata !149, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [r1] [line 474]
!557 = metadata !{i32 786688, metadata !410, metadata !"rc", metadata !145, i32 474, metadata !149, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rc] [line 474]
!558 = metadata !{i32 786688, metadata !410, metadata !"tol", metadata !145, i32 475, metadata !173, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [tol] [line 475]
!559 = metadata !{i32 786688, metadata !410, metadata !"spacing", metadata !145, i32 476, metadata !257, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [spacing] [line 476]
!560 = metadata !{i32 786478, metadata !1, metadata !145, metadata !"do_pppm", metadata !"do_pppm", metadata !"", i32 545, metadata !561, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, float (%struct._IO_FILE*, i32, [3 x float]*, [3 x float]*, float*, float*, float*, %struct.t_commrec*, %struct.t_nsborder*, %struct.t_nrnb*)* @do_pppm, null, null, metadata !563, i32 550} ; [ DW_TAG_subprogram ] [line 545] [def] [scope 550] [do_pppm]
!561 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !562, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!562 = metadata !{metadata !149, metadata !199, metadata !151, metadata !256, metadata !256, metadata !148, metadata !148, metadata !148, metadata !360, metadata !413, metadata !277}
!563 = metadata !{metadata !564, metadata !565, metadata !566, metadata !567, metadata !568, metadata !569, metadata !570, metadata !571, metadata !572, metadata !573, metadata !574, metadata !575, metadata !576}
!564 = metadata !{i32 786689, metadata !560, metadata !"log", metadata !145, i32 16777761, metadata !199, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [log] [line 545]
!565 = metadata !{i32 786689, metadata !560, metadata !"bVerbose", metadata !145, i32 33554977, metadata !151, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [bVerbose] [line 545]
!566 = metadata !{i32 786689, metadata !560, metadata !"x", metadata !145, i32 50332194, metadata !256, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [x] [line 546]
!567 = metadata !{i32 786689, metadata !560, metadata !"f", metadata !145, i32 67109410, metadata !256, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [f] [line 546]
!568 = metadata !{i32 786689, metadata !560, metadata !"charge", metadata !145, i32 83886627, metadata !148, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [charge] [line 547]
!569 = metadata !{i32 786689, metadata !560, metadata !"box", metadata !145, i32 100663843, metadata !148, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [box] [line 547]
!570 = metadata !{i32 786689, metadata !560, metadata !"phi", metadata !145, i32 117441060, metadata !148, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [phi] [line 548]
!571 = metadata !{i32 786689, metadata !560, metadata !"cr", metadata !145, i32 134218276, metadata !360, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cr] [line 548]
!572 = metadata !{i32 786689, metadata !560, metadata !"nsb", metadata !145, i32 150995493, metadata !413, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nsb] [line 549]
!573 = metadata !{i32 786689, metadata !560, metadata !"nrnb", metadata !145, i32 167772709, metadata !277, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nrnb] [line 549]
!574 = metadata !{i32 786688, metadata !560, metadata !"ener", metadata !145, i32 551, metadata !149, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ener] [line 551]
!575 = metadata !{i32 786688, metadata !560, metadata !"start", metadata !145, i32 552, metadata !151, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [start] [line 552]
!576 = metadata !{i32 786688, metadata !560, metadata !"nr", metadata !145, i32 552, metadata !151, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nr] [line 552]
!577 = metadata !{i32 786478, metadata !1, metadata !145, metadata !"do_opt_pppm", metadata !"do_opt_pppm", metadata !"", i32 582, metadata !578, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, float (%struct._IO_FILE*, i32, %struct.t_inputrec*, i32, [3 x float]*, [3 x float]*, float*, float*, float*, %struct.t_commrec*, %struct.t_nrnb*, float*, %struct.t_fftgrid*, i32)* @do_opt_pppm, null, null, metadata !580, i32 589} ; [ DW_TAG_subprogram ] [line 582] [def] [scope 589] [do_opt_pppm]
!578 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !579, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!579 = metadata !{metadata !149, metadata !199, metadata !151, metadata !432, metadata !151, metadata !256, metadata !256, metadata !148, metadata !148, metadata !148, metadata !360, metadata !277, metadata !148, metadata !259, metadata !151}
!580 = metadata !{metadata !581, metadata !582, metadata !583, metadata !584, metadata !585, metadata !586, metadata !587, metadata !588, metadata !589, metadata !590, metadata !591, metadata !592, metadata !593, metadata !594, metadata !595, metadata !596, metadata !597, metadata !598, metadata !599}
!581 = metadata !{i32 786689, metadata !577, metadata !"log", metadata !145, i32 16777798, metadata !199, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [log] [line 582]
!582 = metadata !{i32 786689, metadata !577, metadata !"bVerbose", metadata !145, i32 33555014, metadata !151, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [bVerbose] [line 582]
!583 = metadata !{i32 786689, metadata !577, metadata !"ir", metadata !145, i32 50332231, metadata !432, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ir] [line 583]
!584 = metadata !{i32 786689, metadata !577, metadata !"natoms", metadata !145, i32 67109447, metadata !151, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [natoms] [line 583]
!585 = metadata !{i32 786689, metadata !577, metadata !"x", metadata !145, i32 83886664, metadata !256, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [x] [line 584]
!586 = metadata !{i32 786689, metadata !577, metadata !"f", metadata !145, i32 100663880, metadata !256, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [f] [line 584]
!587 = metadata !{i32 786689, metadata !577, metadata !"charge", metadata !145, i32 117441097, metadata !148, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [charge] [line 585]
!588 = metadata !{i32 786689, metadata !577, metadata !"box", metadata !145, i32 134218313, metadata !148, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [box] [line 585]
!589 = metadata !{i32 786689, metadata !577, metadata !"phi", metadata !145, i32 150995530, metadata !148, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [phi] [line 586]
!590 = metadata !{i32 786689, metadata !577, metadata !"cr", metadata !145, i32 167772746, metadata !360, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cr] [line 586]
!591 = metadata !{i32 786689, metadata !577, metadata !"nrnb", metadata !145, i32 184549963, metadata !277, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nrnb] [line 587]
!592 = metadata !{i32 786689, metadata !577, metadata !"beta", metadata !145, i32 201327179, metadata !148, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [beta] [line 587]
!593 = metadata !{i32 786689, metadata !577, metadata !"grid", metadata !145, i32 218104396, metadata !259, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [grid] [line 588]
!594 = metadata !{i32 786689, metadata !577, metadata !"bOld", metadata !145, i32 234881612, metadata !151, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [bOld] [line 588]
!595 = metadata !{i32 786688, metadata !577, metadata !"ghat", metadata !145, i32 590, metadata !358, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ghat] [line 590]
!596 = metadata !{i32 786688, metadata !577, metadata !"nx", metadata !145, i32 591, metadata !151, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nx] [line 591]
!597 = metadata !{i32 786688, metadata !577, metadata !"ny", metadata !145, i32 591, metadata !151, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ny] [line 591]
!598 = metadata !{i32 786688, metadata !577, metadata !"nz", metadata !145, i32 591, metadata !151, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nz] [line 591]
!599 = metadata !{i32 786688, metadata !577, metadata !"ener", metadata !145, i32 592, metadata !149, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ener] [line 592]
!600 = metadata !{i32 786478, metadata !1, metadata !145, metadata !"gather_f", metadata !"gather_f", metadata !"", i32 278, metadata !601, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, float (%struct._IO_FILE*, i32, i32, [3 x float]*, [3 x float]*, float*, float*, float*, %struct.t_fftgrid*, float*, %struct.t_nrnb*)* @gather_f, null, null, metadata !603, i32 281} ; [ DW_TAG_subprogram ] [line 278] [local] [def] [scope 281] [gather_f]
!601 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !602, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!602 = metadata !{metadata !149, metadata !199, metadata !151, metadata !151, metadata !151, metadata !256, metadata !256, metadata !148, metadata !148, metadata !148, metadata !259, metadata !148, metadata !277}
!603 = metadata !{metadata !604, metadata !605, metadata !606, metadata !607, metadata !608, metadata !609, metadata !610, metadata !611, metadata !612, metadata !613, metadata !614, metadata !615, metadata !616, metadata !617, metadata !618, metadata !619, metadata !620, metadata !621, metadata !622, metadata !623, metadata !624, metadata !625, metadata !626, metadata !627, metadata !628, metadata !629, metadata !630, metadata !631, metadata !632, metadata !636, metadata !637, metadata !638, metadata !639, metadata !640, metadata !641, metadata !642, metadata !643, metadata !644}
!604 = metadata !{i32 786689, metadata !600, metadata !"log", metadata !145, i32 16777494, metadata !199, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [log] [line 278]
!605 = metadata !{i32 786689, metadata !600, metadata !"bVerbose", metadata !145, i32 33554710, metadata !151, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [bVerbose] [line 278]
!606 = metadata !{i32 786689, metadata !600, metadata !"start", metadata !145, i32 50331927, metadata !151, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [start] [line 279]
!607 = metadata !{i32 786689, metadata !600, metadata !"nr", metadata !145, i32 67109143, metadata !151, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nr] [line 279]
!608 = metadata !{i32 786689, metadata !600, metadata !"x", metadata !145, i32 83886359, metadata !256, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [x] [line 279]
!609 = metadata !{i32 786689, metadata !600, metadata !"f", metadata !145, i32 100663575, metadata !256, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [f] [line 279]
!610 = metadata !{i32 786689, metadata !600, metadata !"charge", metadata !145, i32 117440791, metadata !148, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [charge] [line 279]
!611 = metadata !{i32 786689, metadata !600, metadata !"box", metadata !145, i32 134218007, metadata !148, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [box] [line 279]
!612 = metadata !{i32 786689, metadata !600, metadata !"pot", metadata !145, i32 150995224, metadata !148, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [pot] [line 280]
!613 = metadata !{i32 786689, metadata !600, metadata !"grid", metadata !145, i32 167772440, metadata !259, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [grid] [line 280]
!614 = metadata !{i32 786689, metadata !600, metadata !"beta", metadata !145, i32 184549656, metadata !148, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [beta] [line 280]
!615 = metadata !{i32 786689, metadata !600, metadata !"nrnb", metadata !145, i32 201326872, metadata !277, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nrnb] [line 280]
!616 = metadata !{i32 786688, metadata !600, metadata !"i", metadata !145, i32 285, metadata !151, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 285]
!617 = metadata !{i32 786688, metadata !600, metadata !"m", metadata !145, i32 285, metadata !151, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [m] [line 285]
!618 = metadata !{i32 786688, metadata !600, metadata !"energy", metadata !145, i32 286, metadata !149, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [energy] [line 286]
!619 = metadata !{i32 786688, metadata !600, metadata !"qi", metadata !145, i32 287, metadata !149, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [qi] [line 287]
!620 = metadata !{i32 786688, metadata !600, metadata !"pi", metadata !145, i32 287, metadata !149, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [pi] [line 287]
!621 = metadata !{i32 786688, metadata !600, metadata !"ixyz", metadata !145, i32 288, metadata !183, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ixyz] [line 288]
!622 = metadata !{i32 786688, metadata !600, metadata !"invh", metadata !145, i32 289, metadata !257, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [invh] [line 289]
!623 = metadata !{i32 786688, metadata !600, metadata !"c1", metadata !145, i32 289, metadata !257, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [c1] [line 289]
!624 = metadata !{i32 786688, metadata !600, metadata !"c2", metadata !145, i32 289, metadata !257, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [c2] [line 289]
!625 = metadata !{i32 786688, metadata !600, metadata !"WXYZ", metadata !145, i32 290, metadata !300, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [WXYZ] [line 290]
!626 = metadata !{i32 786688, metadata !600, metadata !"c1x", metadata !145, i32 291, metadata !149, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [c1x] [line 291]
!627 = metadata !{i32 786688, metadata !600, metadata !"c1y", metadata !145, i32 291, metadata !149, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [c1y] [line 291]
!628 = metadata !{i32 786688, metadata !600, metadata !"c1z", metadata !145, i32 291, metadata !149, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [c1z] [line 291]
!629 = metadata !{i32 786688, metadata !600, metadata !"c2x", metadata !145, i32 291, metadata !149, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [c2x] [line 291]
!630 = metadata !{i32 786688, metadata !600, metadata !"c2y", metadata !145, i32 291, metadata !149, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [c2y] [line 291]
!631 = metadata !{i32 786688, metadata !600, metadata !"c2z", metadata !145, i32 291, metadata !149, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [c2z] [line 291]
!632 = metadata !{i32 786688, metadata !600, metadata !"ixw", metadata !145, i32 292, metadata !633, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ixw] [line 292]
!633 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 224, i64 32, i32 0, i32 0, metadata !151, metadata !634, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 224, align 32, offset 0] [from int]
!634 = metadata !{metadata !635}
!635 = metadata !{i32 786465, i64 0, i64 7}       ; [ DW_TAG_subrange_type ] [0, 6]
!636 = metadata !{i32 786688, metadata !600, metadata !"iyw", metadata !145, i32 292, metadata !633, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [iyw] [line 292]
!637 = metadata !{i32 786688, metadata !600, metadata !"izw", metadata !145, i32 292, metadata !633, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [izw] [line 292]
!638 = metadata !{i32 786688, metadata !600, metadata !"ll", metadata !145, i32 293, metadata !151, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ll] [line 293]
!639 = metadata !{i32 786688, metadata !600, metadata !"nx", metadata !145, i32 294, metadata !151, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nx] [line 294]
!640 = metadata !{i32 786688, metadata !600, metadata !"ny", metadata !145, i32 294, metadata !151, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ny] [line 294]
!641 = metadata !{i32 786688, metadata !600, metadata !"nz", metadata !145, i32 294, metadata !151, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nz] [line 294]
!642 = metadata !{i32 786688, metadata !600, metadata !"la2", metadata !145, i32 294, metadata !151, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [la2] [line 294]
!643 = metadata !{i32 786688, metadata !600, metadata !"la12", metadata !145, i32 294, metadata !151, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [la12] [line 294]
!644 = metadata !{i32 786688, metadata !600, metadata !"ptr", metadata !145, i32 295, metadata !264, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ptr] [line 295]
!645 = metadata !{i32 786478, metadata !1, metadata !145, metadata !"calc_nxyz", metadata !"calc_nxyz", metadata !"", i32 133, metadata !646, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i32, i32, i32, i32**, i32**, i32**)* @calc_nxyz, null, null, metadata !649, i32 135} ; [ DW_TAG_subprogram ] [line 133] [local] [def] [scope 135] [calc_nxyz]
!646 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !647, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!647 = metadata !{null, metadata !151, metadata !151, metadata !151, metadata !648, metadata !648, metadata !648}
!648 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !161} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!649 = metadata !{metadata !650, metadata !651, metadata !652, metadata !653, metadata !654, metadata !655, metadata !656}
!650 = metadata !{i32 786689, metadata !645, metadata !"nx", metadata !145, i32 16777349, metadata !151, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nx] [line 133]
!651 = metadata !{i32 786689, metadata !645, metadata !"ny", metadata !145, i32 33554565, metadata !151, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ny] [line 133]
!652 = metadata !{i32 786689, metadata !645, metadata !"nz", metadata !145, i32 50331781, metadata !151, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nz] [line 133]
!653 = metadata !{i32 786689, metadata !645, metadata !"nnx", metadata !145, i32 67108998, metadata !648, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nnx] [line 134]
!654 = metadata !{i32 786689, metadata !645, metadata !"nny", metadata !145, i32 83886214, metadata !648, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nny] [line 134]
!655 = metadata !{i32 786689, metadata !645, metadata !"nnz", metadata !145, i32 100663430, metadata !648, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nnz] [line 134]
!656 = metadata !{i32 786688, metadata !645, metadata !"i", metadata !145, i32 136, metadata !151, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 136]
!657 = metadata !{i32 786478, metadata !658, metadata !659, metadata !"sqr", metadata !"sqr", metadata !"", i32 197, metadata !660, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !662, i32 198} ; [ DW_TAG_subprogram ] [line 197] [local] [def] [scope 198] [sqr]
!658 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/435.gromacs/src/vec.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!659 = metadata !{i32 786473, metadata !658}      ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/vec.h]
!660 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !661, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!661 = metadata !{metadata !149, metadata !149}
!662 = metadata !{metadata !663}
!663 = metadata !{i32 786689, metadata !657, metadata !"x", metadata !659, i32 16777413, metadata !149, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [x] [line 197]
!664 = metadata !{metadata !665, metadata !665, metadata !666, metadata !667, metadata !668, metadata !669, metadata !670, metadata !670, metadata !670, metadata !671, metadata !672, metadata !673, metadata !674, metadata !675, metadata !676, metadata !680, metadata !681}
!665 = metadata !{i32 786484, i32 0, metadata !145, metadata !"half", metadata !"half", metadata !"half", metadata !145, i32 67, metadata !173, i32 1, i32 1, float 5.000000e-01, null} ; [ DW_TAG_variable ] [half] [line 67] [local] [def]
!666 = metadata !{i32 786484, i32 0, metadata !196, metadata !"bFirst", metadata !"bFirst", metadata !"", metadata !145, i32 154, metadata !151, i32 1, i32 1, null, null}
!667 = metadata !{i32 786484, i32 0, metadata !196, metadata !"nnx", metadata !"nnx", metadata !"", metadata !145, i32 155, metadata !161, i32 1, i32 1, i32** @spread_q.nnx, null} ; [ DW_TAG_variable ] [nnx] [line 155] [local] [def]
!668 = metadata !{i32 786484, i32 0, metadata !196, metadata !"nny", metadata !"nny", metadata !"", metadata !145, i32 155, metadata !161, i32 1, i32 1, i32** @spread_q.nny, null} ; [ DW_TAG_variable ] [nny] [line 155] [local] [def]
!669 = metadata !{i32 786484, i32 0, metadata !196, metadata !"nnz", metadata !"nnz", metadata !"", metadata !145, i32 155, metadata !161, i32 1, i32 1, i32** @spread_q.nnz, null} ; [ DW_TAG_variable ] [nnz] [line 155] [local] [def]
!670 = metadata !{i32 786484, i32 0, metadata !145, metadata !"tol", metadata !"tol", metadata !"tol", metadata !145, i32 475, metadata !173, i32 1, i32 1, float 0x3EE4F8B580000000, null} ; [ DW_TAG_variable ] [tol] [line 475] [local] [def]
!671 = metadata !{i32 786484, i32 0, null, metadata !"beta", metadata !"beta", metadata !"", metadata !145, i32 465, metadata !257, i32 1, i32 1, [3 x float]* @beta, null} ; [ DW_TAG_variable ] [beta] [line 465] [local] [def]
!672 = metadata !{i32 786484, i32 0, metadata !600, metadata !"bFirst", metadata !"bFirst", metadata !"", metadata !145, i32 282, metadata !151, i32 1, i32 1, null, null}
!673 = metadata !{i32 786484, i32 0, metadata !600, metadata !"nnx", metadata !"nnx", metadata !"", metadata !145, i32 283, metadata !161, i32 1, i32 1, i32** @gather_f.nnx, null} ; [ DW_TAG_variable ] [nnx] [line 283] [local] [def]
!674 = metadata !{i32 786484, i32 0, metadata !600, metadata !"nny", metadata !"nny", metadata !"", metadata !145, i32 283, metadata !161, i32 1, i32 1, i32** @gather_f.nny, null} ; [ DW_TAG_variable ] [nny] [line 283] [local] [def]
!675 = metadata !{i32 786484, i32 0, metadata !600, metadata !"nnz", metadata !"nnz", metadata !"", metadata !145, i32 283, metadata !161, i32 1, i32 1, i32** @gather_f.nnz, null} ; [ DW_TAG_variable ] [nnz] [line 283] [local] [def]
!676 = metadata !{i32 786484, i32 0, metadata !600, metadata !"JCXYZ", metadata !"JCXYZ", metadata !"", metadata !145, i32 284, metadata !677, i32 1, i32 1, [81 x i32]* @gather_f.JCXYZ, null} ; [ DW_TAG_variable ] [JCXYZ] [line 284] [local] [def]
!677 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 2592, i64 32, i32 0, i32 0, metadata !151, metadata !678, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 2592, align 32, offset 0] [from int]
!678 = metadata !{metadata !679}
!679 = metadata !{i32 786465, i64 0, i64 81}      ; [ DW_TAG_subrange_type ] [0, 80]
!680 = metadata !{i32 786484, i32 0, null, metadata !"grid", metadata !"grid", metadata !"", metadata !145, i32 467, metadata !259, i32 1, i32 1, %struct.t_fftgrid** @grid, null} ; [ DW_TAG_variable ] [grid] [line 467] [local] [def]
!681 = metadata !{i32 786484, i32 0, null, metadata !"ghat", metadata !"ghat", metadata !"", metadata !145, i32 466, metadata !358, i32 1, i32 1, float**** @ghat, null} ; [ DW_TAG_variable ] [ghat] [line 466] [local] [def]
!682 = metadata !{i32 57, i32 0, metadata !144, null}
!683 = metadata !{i32 59, i32 0, metadata !144, null}
!684 = metadata !{metadata !"float", metadata !685}
!685 = metadata !{metadata !"omnipotent char", metadata !686}
!686 = metadata !{metadata !"Simple C/C++ TBAA"}
!687 = metadata !{i32 60, i32 0, metadata !144, null}
!688 = metadata !{i32 61, i32 0, metadata !144, null}
!689 = metadata !{i32 62, i32 0, metadata !144, null}
!690 = metadata !{i32 64, i32 0, metadata !158, null}
!691 = metadata !{i32 65, i32 0, metadata !158, null}
!692 = metadata !{float 5.000000e-01}
!693 = metadata !{i32 67, i32 0, metadata !158, null}
!694 = metadata !{i32 68, i32 0, metadata !158, null}
!695 = metadata !{i32 73, i32 0, metadata !158, null}
!696 = metadata !{float 1.250000e-01}
!697 = metadata !{i32 77, i32 0, metadata !158, null}
!698 = metadata !{i32 79, i32 0, metadata !158, null}
!699 = metadata !{metadata !"int", metadata !685}
!700 = metadata !{i32 80, i32 0, metadata !158, null}
!701 = metadata !{i32 81, i32 0, metadata !158, null}
!702 = metadata !{i32 82, i32 0, metadata !703, null}
!703 = metadata !{i32 786443, metadata !1, metadata !158, i32 82, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/pppm.c]
!704 = metadata !{i32 84, i32 0, metadata !705, null}
!705 = metadata !{i32 786443, metadata !1, metadata !703, i32 82, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/pppm.c]
!706 = metadata !{i32 87, i32 0, metadata !705, null}
!707 = metadata !{i32 88, i32 0, metadata !705, null}
!708 = metadata !{i32 89, i32 0, metadata !705, null}
!709 = metadata !{i32 90, i32 0, metadata !710, null}
!710 = metadata !{i32 786443, metadata !1, metadata !705, i32 89, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/pppm.c]
!711 = metadata !{i32 91, i32 0, metadata !710, null}
!712 = metadata !{i32 92, i32 0, metadata !710, null}
!713 = metadata !{i32 93, i32 0, metadata !705, null}
!714 = metadata !{i32 94, i32 0, metadata !715, null}
!715 = metadata !{i32 786443, metadata !1, metadata !705, i32 93, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/pppm.c]
!716 = metadata !{i32 95, i32 0, metadata !715, null}
!717 = metadata !{i32 96, i32 0, metadata !715, null}
!718 = metadata !{i32 97, i32 0, metadata !705, null}
!719 = metadata !{i32 98, i32 0, metadata !705, null}
!720 = metadata !{i32 99, i32 0, metadata !705, null}
!721 = metadata !{i32 102, i32 0, metadata !705, null}
!722 = metadata !{i32 104, i32 0, metadata !705, null}
!723 = metadata !{i32 786689, metadata !657, metadata !"x", metadata !659, i32 16777413, metadata !149, i32 0, metadata !722} ; [ DW_TAG_arg_variable ] [x] [line 197]
!724 = metadata !{i32 197, i32 0, metadata !657, metadata !722}
!725 = metadata !{i32 199, i32 0, metadata !726, metadata !722}
!726 = metadata !{i32 786443, metadata !658, metadata !657} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/vec.h]
!727 = metadata !{i32 786689, metadata !657, metadata !"x", metadata !659, i32 16777413, metadata !149, i32 0, metadata !728} ; [ DW_TAG_arg_variable ] [x] [line 197]
!728 = metadata !{i32 105, i32 0, metadata !705, null}
!729 = metadata !{i32 197, i32 0, metadata !657, metadata !728}
!730 = metadata !{i32 199, i32 0, metadata !726, metadata !728}
!731 = metadata !{i32 106, i32 0, metadata !705, null}
!732 = metadata !{i32 786689, metadata !657, metadata !"x", metadata !659, i32 16777413, metadata !149, i32 0, metadata !731} ; [ DW_TAG_arg_variable ] [x] [line 197]
!733 = metadata !{i32 197, i32 0, metadata !657, metadata !731}
!734 = metadata !{i32 199, i32 0, metadata !726, metadata !731}
!735 = metadata !{i32 108, i32 0, metadata !158, null}
!736 = metadata !{i32 109, i32 0, metadata !158, null}
!737 = metadata !{i32 110, i32 0, metadata !158, null}
!738 = metadata !{i32 111, i32 0, metadata !739, null}
!739 = metadata !{i32 786443, metadata !1, metadata !158, i32 111, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/pppm.c]
!740 = metadata !{i32 112, i32 0, metadata !741, null}
!741 = metadata !{i32 786443, metadata !1, metadata !739, i32 111, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/pppm.c]
!742 = metadata !{i32 113, i32 0, metadata !743, null}
!743 = metadata !{i32 786443, metadata !1, metadata !741, i32 113, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/pppm.c]
!744 = metadata !{i32 114, i32 0, metadata !745, null}
!745 = metadata !{i32 786443, metadata !1, metadata !743, i32 113, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/pppm.c]
!746 = metadata !{i32 115, i32 0, metadata !745, null}
!747 = metadata !{i32 116, i32 0, metadata !745, null}
!748 = metadata !{i32 117, i32 0, metadata !745, null}
!749 = metadata !{i32 131, i32 0, metadata !158, null}
!750 = metadata !{i32 149, i32 0, metadata !196, null}
!751 = metadata !{i32 150, i32 0, metadata !196, null}
!752 = metadata !{i32 151, i32 0, metadata !196, null}
!753 = metadata !{i32 152, i32 0, metadata !196, null}
!754 = metadata !{i32 156, i32 0, metadata !196, null}
!755 = metadata !{i32 161, i32 0, metadata !196, null}
!756 = metadata !{i32 162, i32 0, metadata !196, null}
!757 = metadata !{i32 166, i32 0, metadata !196, null}
!758 = metadata !{i32 167, i32 0, metadata !196, null}
!759 = metadata !{i32 169, i32 0, metadata !196, null}
!760 = metadata !{i32 171, i32 0, metadata !196, null}
!761 = metadata !{i32 786689, metadata !144, metadata !"box", metadata !145, i32 16777273, metadata !148, i32 0, metadata !760} ; [ DW_TAG_arg_variable ] [box] [line 57]
!762 = metadata !{i32 57, i32 0, metadata !144, metadata !760}
!763 = metadata !{i32 786689, metadata !144, metadata !"nx", metadata !145, i32 33554489, metadata !151, i32 0, metadata !760} ; [ DW_TAG_arg_variable ] [nx] [line 57]
!764 = metadata !{i32 786689, metadata !144, metadata !"ny", metadata !145, i32 50331705, metadata !151, i32 0, metadata !760} ; [ DW_TAG_arg_variable ] [ny] [line 57]
!765 = metadata !{i32 786689, metadata !144, metadata !"nz", metadata !145, i32 67108921, metadata !151, i32 0, metadata !760} ; [ DW_TAG_arg_variable ] [nz] [line 57]
!766 = metadata !{i32 786689, metadata !144, metadata !"invh", metadata !145, i32 83886137, metadata !148, i32 0, metadata !760} ; [ DW_TAG_arg_variable ] [invh] [line 57]
!767 = metadata !{i32 59, i32 0, metadata !144, metadata !760}
!768 = metadata !{i32 60, i32 0, metadata !144, metadata !760}
!769 = metadata !{i32 61, i32 0, metadata !144, metadata !760}
!770 = metadata !{i32 173, i32 0, metadata !196, null}
!771 = metadata !{i32 174, i32 0, metadata !772, null}
!772 = metadata !{i32 786443, metadata !1, metadata !196, i32 173, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/pppm.c]
!773 = metadata !{i32 176, i32 0, metadata !772, null}
!774 = metadata !{i32 178, i32 0, metadata !772, null}
!775 = metadata !{i32 181, i32 0, metadata !772, null}
!776 = metadata !{i32 183, i32 0, metadata !777, null}
!777 = metadata !{i32 786443, metadata !1, metadata !196, i32 183, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/pppm.c]
!778 = metadata !{i32 193, i32 0, metadata !779, null}
!779 = metadata !{i32 786443, metadata !1, metadata !780, i32 192, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/pppm.c]
!780 = metadata !{i32 786443, metadata !1, metadata !777, i32 183, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/pppm.c]
!781 = metadata !{i32 195, i32 0, metadata !779, null}
!782 = metadata !{i32 196, i32 0, metadata !779, null}
!783 = metadata !{i32 210, i32 0, metadata !784, null}
!784 = metadata !{i32 786443, metadata !1, metadata !785, i32 206, i32 0, i32 17} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/pppm.c]
!785 = metadata !{i32 786443, metadata !1, metadata !786, i32 206, i32 0, i32 16} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/pppm.c]
!786 = metadata !{i32 786443, metadata !1, metadata !787, i32 204, i32 0, i32 15} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/pppm.c]
!787 = metadata !{i32 786443, metadata !1, metadata !788, i32 204, i32 0, i32 14} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/pppm.c]
!788 = metadata !{i32 786443, metadata !1, metadata !789, i32 202, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/pppm.c]
!789 = metadata !{i32 786443, metadata !1, metadata !779, i32 202, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/pppm.c]
!790 = metadata !{i32 184, i32 0, metadata !780, null}
!791 = metadata !{i32 192, i32 0, metadata !780, null}
!792 = metadata !{i32 194, i32 0, metadata !779, null}
!793 = metadata !{i32 201, i32 0, metadata !779, null}
!794 = metadata !{i32 -1}
!795 = metadata !{i32 202, i32 0, metadata !789, null}
!796 = metadata !{i32 203, i32 0, metadata !788, null}
!797 = metadata !{metadata !"any pointer", metadata !685}
!798 = metadata !{i32 205, i32 0, metadata !786, null}
!799 = metadata !{i32 207, i32 0, metadata !784, null}
!800 = metadata !{i32 208, i32 0, metadata !784, null}
!801 = metadata !{i32 204, i32 0, metadata !787, null}
!802 = metadata !{i32 206, i32 0, metadata !785, null}
!803 = metadata !{i32 209, i32 0, metadata !784, null}
!804 = metadata !{i32 225, i32 0, metadata !196, null}
!805 = metadata !{metadata !"double", metadata !685}
!806 = metadata !{i32 226, i32 0, metadata !196, null}
!807 = metadata !{i32 227, i32 0, metadata !196, null}
!808 = metadata !{i32 133, i32 0, metadata !645, null}
!809 = metadata !{i32 134, i32 0, metadata !645, null}
!810 = metadata !{i32 138, i32 0, metadata !645, null}
!811 = metadata !{i32 139, i32 0, metadata !645, null}
!812 = metadata !{i32 140, i32 0, metadata !645, null}
!813 = metadata !{i32 141, i32 0, metadata !814, null}
!814 = metadata !{i32 786443, metadata !1, metadata !645, i32 141, i32 0, i32 43} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/pppm.c]
!815 = metadata !{i32 142, i32 0, metadata !814, null}
!816 = metadata !{i32 143, i32 0, metadata !817, null}
!817 = metadata !{i32 786443, metadata !1, metadata !645, i32 143, i32 0, i32 44} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/pppm.c]
!818 = metadata !{i32 144, i32 0, metadata !817, null}
!819 = metadata !{i32 145, i32 0, metadata !820, null}
!820 = metadata !{i32 786443, metadata !1, metadata !645, i32 145, i32 0, i32 45} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/pppm.c]
!821 = metadata !{i32 146, i32 0, metadata !820, null}
!822 = metadata !{i32 147, i32 0, metadata !645, null}
!823 = metadata !{i32 229, i32 0, metadata !322, null}
!824 = metadata !{i32 230, i32 0, metadata !322, null}
!825 = metadata !{i32 231, i32 0, metadata !322, null}
!826 = metadata !{i32 232, i32 0, metadata !322, null}
!827 = metadata !{float 0.000000e+00}
!828 = metadata !{i32 238, i32 0, metadata !322, null}
!829 = metadata !{i32 239, i32 0, metadata !322, null}
!830 = metadata !{i32 240, i32 0, metadata !322, null}
!831 = metadata !{i32 241, i32 0, metadata !322, null}
!832 = metadata !{i32 244, i32 0, metadata !833, null}
!833 = metadata !{i32 786443, metadata !1, metadata !322, i32 244, i32 0, i32 18} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/pppm.c]
!834 = metadata !{i32 245, i32 0, metadata !835, null}
!835 = metadata !{i32 786443, metadata !1, metadata !833, i32 244, i32 0, i32 19} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/pppm.c]
!836 = metadata !{i32 246, i32 0, metadata !835, null}
!837 = metadata !{i32 247, i32 0, metadata !835, null}
!838 = metadata !{i32 248, i32 0, metadata !835, null}
!839 = metadata !{i32 250, i32 0, metadata !835, null}
!840 = metadata !{i32 251, i32 0, metadata !835, null}
!841 = metadata !{i32 252, i32 0, metadata !835, null}
!842 = metadata !{i32 255, i32 0, metadata !835, null}
!843 = metadata !{i32 258, i32 0, metadata !835, null}
!844 = metadata !{i32 262, i32 0, metadata !835, null}
!845 = metadata !{i32 266, i32 0, metadata !835, null}
!846 = metadata !{i32 271, i32 0, metadata !322, null}
!847 = metadata !{i32 272, i32 0, metadata !322, null}
!848 = metadata !{i32 273, i32 0, metadata !322, null}
!849 = metadata !{i32 275, i32 0, metadata !322, null}
!850 = metadata !{i32 362, i32 0, metadata !355, null}
!851 = metadata !{i32 363, i32 0, metadata !355, null}
!852 = metadata !{i32 367, i32 0, metadata !355, null}
!853 = metadata !{i32 368, i32 0, metadata !355, null}
!854 = metadata !{i32 372, i32 0, metadata !355, null}
!855 = metadata !{i32 373, i32 0, metadata !355, null}
!856 = metadata !{i32 375, i32 0, metadata !355, null}
!857 = metadata !{i32 404, i32 0, metadata !858, null}
!858 = metadata !{i32 786443, metadata !1, metadata !859, i32 404, i32 0, i32 22} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/pppm.c]
!859 = metadata !{i32 786443, metadata !1, metadata !355, i32 403, i32 0, i32 21} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/pppm.c]
!860 = metadata !{i32 409, i32 0, metadata !861, null}
!861 = metadata !{i32 786443, metadata !1, metadata !862, i32 406, i32 0, i32 27} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/pppm.c]
!862 = metadata !{i32 786443, metadata !1, metadata !863, i32 406, i32 0, i32 26} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/pppm.c]
!863 = metadata !{i32 786443, metadata !1, metadata !864, i32 405, i32 0, i32 25} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/pppm.c]
!864 = metadata !{i32 786443, metadata !1, metadata !865, i32 405, i32 0, i32 24} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/pppm.c]
!865 = metadata !{i32 786443, metadata !1, metadata !858, i32 404, i32 0, i32 23} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/pppm.c]
!866 = metadata !{i32 410, i32 0, metadata !861, null}
!867 = metadata !{i32 405, i32 0, metadata !864, null}
!868 = metadata !{i32 407, i32 0, metadata !861, null}
!869 = metadata !{i32 406, i32 0, metadata !862, null}
!870 = metadata !{i32 408, i32 0, metadata !861, null}
!871 = metadata !{i32 411, i32 0, metadata !861, null}
!872 = metadata !{i32 427, i32 0, metadata !355, null}
!873 = metadata !{i32 428, i32 0, metadata !355, null}
!874 = metadata !{i32 430, i32 0, metadata !397, null}
!875 = metadata !{i32 431, i32 0, metadata !397, null}
!876 = metadata !{i32 432, i32 0, metadata !397, null}
!877 = metadata !{i32 439, i32 0, metadata !397, null}
!878 = metadata !{i32 447, i32 0, metadata !397, null}
!879 = metadata !{i32 449, i32 0, metadata !397, null}
!880 = metadata !{i32 453, i32 0, metadata !397, null}
!881 = metadata !{i32 458, i32 0, metadata !397, null}
!882 = metadata !{i32 459, i32 0, metadata !397, null}
!883 = metadata !{i32 460, i32 0, metadata !397, null}
!884 = metadata !{i32 461, i32 0, metadata !397, null}
!885 = metadata !{i32 462, i32 0, metadata !397, null}
!886 = metadata !{i32 469, i32 0, metadata !410, null}
!887 = metadata !{i32 470, i32 0, metadata !410, null}
!888 = metadata !{i32 472, i32 0, metadata !410, null}
!889 = metadata !{i32 473, i32 0, metadata !410, null}
!890 = metadata !{i32 474, i32 0, metadata !410, null}
!891 = metadata !{float 0x3EE4F8B580000000}
!892 = metadata !{i32 475, i32 0, metadata !410, null}
!893 = metadata !{i32 476, i32 0, metadata !410, null}
!894 = metadata !{i32 479, i32 0, metadata !410, null}
!895 = metadata !{i32 482, i32 0, metadata !410, null}
!896 = metadata !{i32 483, i32 0, metadata !897, null}
!897 = metadata !{i32 786443, metadata !1, metadata !410, i32 482, i32 0, i32 28} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/pppm.c]
!898 = metadata !{i32 484, i32 0, metadata !897, null}
!899 = metadata !{i32 486, i32 0, metadata !410, null}
!900 = metadata !{i32 488, i32 0, metadata !410, null}
!901 = metadata !{i32 489, i32 0, metadata !902, null}
!902 = metadata !{i32 786443, metadata !1, metadata !410, i32 488, i32 0, i32 29} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/pppm.c]
!903 = metadata !{i32 490, i32 0, metadata !902, null}
!904 = metadata !{i32 491, i32 0, metadata !902, null}
!905 = metadata !{i32 492, i32 0, metadata !902, null}
!906 = metadata !{i32 494, i32 0, metadata !902, null}
!907 = metadata !{i32 495, i32 0, metadata !902, null}
!908 = metadata !{i32 497, i32 0, metadata !902, null}
!909 = metadata !{i32 498, i32 0, metadata !902, null}
!910 = metadata !{i32 500, i32 0, metadata !902, null}
!911 = metadata !{i32 501, i32 0, metadata !902, null}
!912 = metadata !{i32 503, i32 0, metadata !902, null}
!913 = metadata !{i32 504, i32 0, metadata !902, null}
!914 = metadata !{i32 507, i32 0, metadata !915, null}
!915 = metadata !{i32 786443, metadata !1, metadata !410, i32 506, i32 0, i32 30} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/pppm.c]
!916 = metadata !{i32 508, i32 0, metadata !915, null}
!917 = metadata !{i32 511, i32 0, metadata !915, null}
!918 = metadata !{i32 512, i32 0, metadata !919, null}
!919 = metadata !{i32 786443, metadata !1, metadata !915, i32 511, i32 0, i32 31} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/pppm.c]
!920 = metadata !{i32 515, i32 0, metadata !919, null}
!921 = metadata !{i32 516, i32 0, metadata !919, null}
!922 = metadata !{i32 518, i32 0, metadata !919, null}
!923 = metadata !{i32 522, i32 0, metadata !924, null}
!924 = metadata !{i32 786443, metadata !1, metadata !915, i32 521, i32 0, i32 32} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/pppm.c]
!925 = metadata !{i32 523, i32 0, metadata !926, null}
!926 = metadata !{i32 786443, metadata !1, metadata !924, i32 522, i32 0, i32 33} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/pppm.c]
!927 = metadata !{i32 524, i32 0, metadata !926, null}
!928 = metadata !{i32 525, i32 0, metadata !926, null}
!929 = metadata !{i32 526, i32 0, metadata !926, null}
!930 = metadata !{i32 527, i32 0, metadata !926, null}
!931 = metadata !{i32 529, i32 0, metadata !926, null}
!932 = metadata !{i32 521, i32 0, metadata !924, null}
!933 = metadata !{i32 531, i32 0, metadata !915, null}
!934 = metadata !{i32 532, i32 0, metadata !915, null}
!935 = metadata !{i32 534, i32 0, metadata !915, null}
!936 = metadata !{i32 535, i32 0, metadata !915, null}
!937 = metadata !{i32 536, i32 0, metadata !915, null}
!938 = metadata !{i32 538, i32 0, metadata !915, null}
!939 = metadata !{i32 539, i32 0, metadata !915, null}
!940 = metadata !{i32 542, i32 0, metadata !410, null}
!941 = metadata !{i32 543, i32 0, metadata !410, null}
!942 = metadata !{i32 545, i32 0, metadata !560, null}
!943 = metadata !{i32 546, i32 0, metadata !560, null}
!944 = metadata !{i32 547, i32 0, metadata !560, null}
!945 = metadata !{i32 548, i32 0, metadata !560, null}
!946 = metadata !{i32 549, i32 0, metadata !560, null}
!947 = metadata !{i32 554, i32 0, metadata !560, null}
!948 = metadata !{i32 555, i32 0, metadata !560, null}
!949 = metadata !{i32 558, i32 0, metadata !560, null}
!950 = metadata !{i32 561, i32 0, metadata !560, null}
!951 = metadata !{i32 564, i32 0, metadata !560, null}
!952 = metadata !{i32 565, i32 0, metadata !560, null}
!953 = metadata !{i32 568, i32 0, metadata !560, null}
!954 = metadata !{i32 571, i32 0, metadata !560, null}
!955 = metadata !{i32 572, i32 0, metadata !560, null}
!956 = metadata !{i32 577, i32 0, metadata !560, null}
!957 = metadata !{i32 579, i32 0, metadata !560, null}
!958 = metadata !{i32 278, i32 0, metadata !600, null}
!959 = metadata !{i32 288, i32 0, metadata !600, null}
!960 = metadata !{i32 289, i32 0, metadata !600, null}
!961 = metadata !{i32 290, i32 0, metadata !600, null}
!962 = metadata !{i32 292, i32 0, metadata !600, null}
!963 = metadata !{i32 294, i32 0, metadata !600, null}
!964 = metadata !{i32 295, i32 0, metadata !600, null}
!965 = metadata !{i32 297, i32 0, metadata !600, null}
!966 = metadata !{i32 299, i32 0, metadata !600, null}
!967 = metadata !{i32 786689, metadata !144, metadata !"box", metadata !145, i32 16777273, metadata !148, i32 0, metadata !966} ; [ DW_TAG_arg_variable ] [box] [line 57]
!968 = metadata !{i32 57, i32 0, metadata !144, metadata !966}
!969 = metadata !{i32 786689, metadata !144, metadata !"nx", metadata !145, i32 33554489, metadata !151, i32 0, metadata !966} ; [ DW_TAG_arg_variable ] [nx] [line 57]
!970 = metadata !{i32 786689, metadata !144, metadata !"ny", metadata !145, i32 50331705, metadata !151, i32 0, metadata !966} ; [ DW_TAG_arg_variable ] [ny] [line 57]
!971 = metadata !{i32 786689, metadata !144, metadata !"nz", metadata !145, i32 67108921, metadata !151, i32 0, metadata !966} ; [ DW_TAG_arg_variable ] [nz] [line 57]
!972 = metadata !{i32 786689, metadata !144, metadata !"invh", metadata !145, i32 83886137, metadata !148, i32 0, metadata !966} ; [ DW_TAG_arg_variable ] [invh] [line 57]
!973 = metadata !{i32 59, i32 0, metadata !144, metadata !966}
!974 = metadata !{i32 60, i32 0, metadata !144, metadata !966}
!975 = metadata !{i32 61, i32 0, metadata !144, metadata !966}
!976 = metadata !{i32 301, i32 0, metadata !977, null}
!977 = metadata !{i32 786443, metadata !1, metadata !600, i32 301, i32 0, i32 34} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/pppm.c]
!978 = metadata !{i32 302, i32 0, metadata !979, null}
!979 = metadata !{i32 786443, metadata !1, metadata !977, i32 301, i32 0, i32 35} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/pppm.c]
!980 = metadata !{i32 303, i32 0, metadata !979, null}
!981 = metadata !{i32 305, i32 0, metadata !600, null}
!982 = metadata !{i32 306, i32 0, metadata !600, null}
!983 = metadata !{i32 307, i32 0, metadata !600, null}
!984 = metadata !{i32 308, i32 0, metadata !600, null}
!985 = metadata !{i32 309, i32 0, metadata !600, null}
!986 = metadata !{i32 310, i32 0, metadata !600, null}
!987 = metadata !{i32 312, i32 0, metadata !600, null}
!988 = metadata !{i32 313, i32 0, metadata !989, null}
!989 = metadata !{i32 786443, metadata !1, metadata !600, i32 312, i32 0, i32 36} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/pppm.c]
!990 = metadata !{i32 315, i32 0, metadata !989, null}
!991 = metadata !{i32 316, i32 0, metadata !989, null}
!992 = metadata !{i32 317, i32 0, metadata !989, null}
!993 = metadata !{i32 318, i32 0, metadata !989, null}
!994 = metadata !{i32 320, i32 0, metadata !989, null}
!995 = metadata !{i32 322, i32 0, metadata !996, null}
!996 = metadata !{i32 786443, metadata !1, metadata !989, i32 322, i32 0, i32 37} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/pppm.c]
!997 = metadata !{i32 323, i32 0, metadata !998, null}
!998 = metadata !{i32 786443, metadata !1, metadata !996, i32 322, i32 0, i32 38} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/pppm.c]
!999 = metadata !{i32 324, i32 0, metadata !998, null}
!1000 = metadata !{i32 325, i32 0, metadata !998, null}
!1001 = metadata !{i32 329, i32 0, metadata !989, null}
!1002 = metadata !{i32 332, i32 0, metadata !1003, null}
!1003 = metadata !{i32 786443, metadata !1, metadata !600, i32 332, i32 0, i32 39} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/pppm.c]
!1004 = metadata !{i32 339, i32 0, metadata !1005, null}
!1005 = metadata !{i32 786443, metadata !1, metadata !1003, i32 332, i32 0, i32 40} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/pppm.c]
!1006 = metadata !{i32 343, i32 0, metadata !1007, null}
!1007 = metadata !{i32 786443, metadata !1, metadata !1008, i32 341, i32 0, i32 42} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/pppm.c]
!1008 = metadata !{i32 786443, metadata !1, metadata !1005, i32 341, i32 0, i32 41} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/pppm.c]
!1009 = metadata !{i32 344, i32 0, metadata !1007, null}
!1010 = metadata !{i32 348, i32 0, metadata !1005, null}
!1011 = metadata !{i32 -3}
!1012 = metadata !{i32 341, i32 0, metadata !1008, null}
!1013 = metadata !{i32 342, i32 0, metadata !1007, null}
!1014 = metadata !{i32 347, i32 0, metadata !1005, null}
!1015 = metadata !{i32 352, i32 0, metadata !1005, null}
!1016 = metadata !{i32 353, i32 0, metadata !1005, null}
!1017 = metadata !{i32 356, i32 0, metadata !600, null}
!1018 = metadata !{i32 357, i32 0, metadata !600, null}
!1019 = metadata !{i32 360, i32 0, metadata !600, null}
!1020 = metadata !{i32 582, i32 0, metadata !577, null}
!1021 = metadata !{i32 583, i32 0, metadata !577, null}
!1022 = metadata !{i32 584, i32 0, metadata !577, null}
!1023 = metadata !{i32 585, i32 0, metadata !577, null}
!1024 = metadata !{i32 586, i32 0, metadata !577, null}
!1025 = metadata !{i32 587, i32 0, metadata !577, null}
!1026 = metadata !{i32 588, i32 0, metadata !577, null}
!1027 = metadata !{i32 594, i32 0, metadata !577, null}
!1028 = metadata !{i32 596, i32 0, metadata !577, null}
!1029 = metadata !{i32 597, i32 0, metadata !577, null}
!1030 = metadata !{i32 598, i32 0, metadata !577, null}
!1031 = metadata !{i32 599, i32 0, metadata !577, null}
!1032 = metadata !{i32 600, i32 0, metadata !577, null}
!1033 = metadata !{i32 601, i32 0, metadata !577, null}
!1034 = metadata !{i32 609, i32 0, metadata !577, null}
!1035 = metadata !{i32 611, i32 0, metadata !577, null}
!1036 = metadata !{i32 614, i32 0, metadata !577, null}
!1037 = metadata !{i32 619, i32 0, metadata !577, null}
!1038 = metadata !{i32 621, i32 0, metadata !577, null}
!1039 = metadata !{i32 623, i32 0, metadata !577, null}
