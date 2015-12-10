; ModuleID = '../../SPEC/benchspec/CPU2006/435.gromacs/src/shakef.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%union.t_iparams = type { %struct.anon.2 }
%struct.anon.2 = type { float, float, float, float, float, float }
%struct.t_idef = type { i32, i32, i32, i32*, %union.t_iparams*, [44 x %struct.t_ilist] }
%struct.t_ilist = type { i32, [256 x i32], i32* }
%struct.t_inputrec = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, float, float, float, i32, i32, i32, i32, float, i32, i32, i32, i32, i32, i32, i32, i32, float, [3 x [3 x float]], [3 x [3 x float]], i32, float, float, i32, float, float, i32, float, float, float, i32, float, float, i32, float, float, float, float, float, i32, i32, i32, float, float, float, i32, float, float, i32, i32, i32, i32, i32, float, i32, float, float, i32, float, i32, i32, i32, i32, float, float, float, float, %struct.t_grpopts, [3 x %struct.t_cosines], [3 x %struct.t_cosines] }
%struct.t_grpopts = type { i32, i32, i32, i32, float*, float*, float*, [3 x float]*, [3 x i32]*, i32* }
%struct.t_cosines = type { i32, float*, float* }
%struct.t_nrnb = type { [129 x double] }

@.str = private unnamed_addr constant [51 x i8] c"Constraint between two massless particles %d and %\00", align 1
@vec_shakef.rij = internal unnamed_addr global [3 x float]* null, align 8
@vec_shakef.M2 = internal unnamed_addr global float* null, align 8
@vec_shakef.tt = internal unnamed_addr global float* null, align 8
@vec_shakef.dist2 = internal unnamed_addr global float* null, align 8
@vec_shakef.maxcon = internal unnamed_addr global i32 0, align 4
@.str1 = private unnamed_addr constant [4 x i8] c"rij\00", align 1
@.str2 = private unnamed_addr constant [54 x i8] c"../../SPEC/benchspec/CPU2006/435.gromacs/src/shakef.c\00", align 1
@.str3 = private unnamed_addr constant [3 x i8] c"M2\00", align 1
@.str4 = private unnamed_addr constant [3 x i8] c"tt\00", align 1
@.str5 = private unnamed_addr constant [6 x i8] c"dist2\00", align 1
@.str6 = private unnamed_addr constant [36 x i8] c"Shake did not converge in %d steps\0A\00", align 1
@.str7 = private unnamed_addr constant [81 x i8] c"Inner product between old and new vector <= 0.0!\0Aconstraint #%d atoms %u and %u\0A\00", align 1
@bshakef.bFirst = internal unnamed_addr global i1 false
@bshakef.lagr = internal unnamed_addr global float* null, align 8
@bshakef.delta = internal unnamed_addr global float 0x3FB99999A0000000, align 4
@bshakef.omega = internal unnamed_addr global float 1.000000e+00, align 4
@bshakef.gamma = internal unnamed_addr global i32 1000000, align 4
@.str8 = private unnamed_addr constant [9 x i8] c"Barth95a\00", align 1
@.str9 = private unnamed_addr constant [5 x i8] c"lagr\00", align 1
@.str10 = private unnamed_addr constant [64 x i8] c"    i     mi      j     mj      before       after   should be\0A\00", align 1
@.str11 = private unnamed_addr constant [48 x i8] c"%5d  %5.2f  %5d  %5.2f  %10.5f  %10.5f  %10.5f\0A\00", align 1

; Function Attrs: nounwind optsize uwtable
define void @cshake(i32* nocapture %iatom, i32 %ncon, i32* nocapture %nnit, i32 %maxnit, float* nocapture %dist2, float* nocapture %xp, float* nocapture %rij, float* nocapture %m2, float %omega, float* nocapture %invmass, float* nocapture %tt, float* nocapture %lagr, i32* nocapture %nerror) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32* %iatom}, i64 0, metadata !205), !dbg !692
  tail call void @llvm.dbg.value(metadata !{i32 %ncon}, i64 0, metadata !206), !dbg !692
  tail call void @llvm.dbg.value(metadata !{i32* %nnit}, i64 0, metadata !207), !dbg !692
  tail call void @llvm.dbg.value(metadata !{i32 %maxnit}, i64 0, metadata !208), !dbg !692
  tail call void @llvm.dbg.value(metadata !{float* %dist2}, i64 0, metadata !209), !dbg !693
  tail call void @llvm.dbg.value(metadata !{float* %xp}, i64 0, metadata !210), !dbg !693
  tail call void @llvm.dbg.value(metadata !{float* %rij}, i64 0, metadata !211), !dbg !693
  tail call void @llvm.dbg.value(metadata !{float* %m2}, i64 0, metadata !212), !dbg !693
  tail call void @llvm.dbg.value(metadata !{float %omega}, i64 0, metadata !213), !dbg !693
  tail call void @llvm.dbg.value(metadata !{float* %invmass}, i64 0, metadata !214), !dbg !694
  tail call void @llvm.dbg.value(metadata !{float* %tt}, i64 0, metadata !215), !dbg !694
  tail call void @llvm.dbg.value(metadata !{float* %lagr}, i64 0, metadata !216), !dbg !694
  tail call void @llvm.dbg.value(metadata !{i32* %nerror}, i64 0, metadata !217), !dbg !694
  tail call void @llvm.dbg.value(metadata !695, i64 0, metadata !218), !dbg !696
  tail call void @llvm.dbg.value(metadata !191, i64 0, metadata !255), !dbg !697
  tail call void @llvm.dbg.value(metadata !698, i64 0, metadata !257), !dbg !699
  tail call void @llvm.dbg.value(metadata !191, i64 0, metadata !254), !dbg !700
  %notlhs284 = icmp sgt i32 %maxnit, 0, !dbg !700
  br i1 %notlhs284, label %for.cond3.preheader.lr.ph, label %for.end171, !dbg !700

for.cond3.preheader.lr.ph:                        ; preds = %entry
  %cmp4277 = icmp sgt i32 %ncon, 0, !dbg !702
  br label %for.cond3.preheader, !dbg !700

for.cond3.preheader:                              ; preds = %for.cond3.preheader.lr.ph, %for.inc169
  %nit.0285 = phi i32 [ 0, %for.cond3.preheader.lr.ph ], [ %inc170, %for.inc169 ]
  br i1 %cmp4277, label %for.body8, label %for.inc169.thread, !dbg !702

for.inc169.thread:                                ; preds = %for.cond3.preheader
  %inc170289 = add nsw i32 %nit.0285, 1, !dbg !700
  br label %for.end171, !dbg !700

for.body8:                                        ; preds = %for.cond3.preheader, %for.inc
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %for.cond3.preheader ]
  %nconv.1282 = phi i32 [ %nconv.2, %for.inc ], [ 0, %for.cond3.preheader ]
  %0 = trunc i64 %indvars.iv to i32, !dbg !705
  %mul = mul nsw i32 %0, 3, !dbg !705
  tail call void @llvm.dbg.value(metadata !{i32 %mul}, i64 0, metadata !225), !dbg !705
  %idxprom = sext i32 %mul to i64, !dbg !707
  %arrayidx = getelementptr inbounds float* %rij, i64 %idxprom, !dbg !707
  %1 = load float* %arrayidx, align 4, !dbg !707, !tbaa !708
  tail call void @llvm.dbg.value(metadata !{float %1}, i64 0, metadata !245), !dbg !707
  %add9 = add nsw i32 %mul, 1, !dbg !711
  %idxprom10 = sext i32 %add9 to i64, !dbg !711
  %arrayidx11 = getelementptr inbounds float* %rij, i64 %idxprom10, !dbg !711
  %2 = load float* %arrayidx11, align 4, !dbg !711, !tbaa !708
  tail call void @llvm.dbg.value(metadata !{float %2}, i64 0, metadata !246), !dbg !711
  %add12 = add nsw i32 %mul, 2, !dbg !712
  %idxprom13 = sext i32 %add12 to i64, !dbg !712
  %arrayidx14 = getelementptr inbounds float* %rij, i64 %idxprom13, !dbg !712
  %3 = load float* %arrayidx14, align 4, !dbg !712, !tbaa !708
  tail call void @llvm.dbg.value(metadata !{float %3}, i64 0, metadata !247), !dbg !712
  %arrayidx17 = getelementptr inbounds i32* %iatom, i64 %idxprom10, !dbg !713
  %4 = load i32* %arrayidx17, align 4, !dbg !713, !tbaa !714
  tail call void @llvm.dbg.value(metadata !{i32 %4}, i64 0, metadata !221), !dbg !713
  %arrayidx20 = getelementptr inbounds i32* %iatom, i64 %idxprom13, !dbg !715
  %5 = load i32* %arrayidx20, align 4, !dbg !715, !tbaa !714
  tail call void @llvm.dbg.value(metadata !{i32 %5}, i64 0, metadata !222), !dbg !715
  %mul21 = mul nsw i32 %4, 3, !dbg !716
  tail call void @llvm.dbg.value(metadata !{i32 %mul21}, i64 0, metadata !223), !dbg !716
  %mul22 = mul nsw i32 %5, 3, !dbg !717
  tail call void @llvm.dbg.value(metadata !{i32 %mul22}, i64 0, metadata !224), !dbg !717
  tail call void @llvm.dbg.value(metadata !{i32 %mul21}, i64 0, metadata !226), !dbg !718
  %add24 = add nsw i32 %mul21, 1, !dbg !719
  tail call void @llvm.dbg.value(metadata !{i32 %add24}, i64 0, metadata !227), !dbg !719
  %add25 = add nsw i32 %mul21, 2, !dbg !720
  tail call void @llvm.dbg.value(metadata !{i32 %add25}, i64 0, metadata !228), !dbg !720
  tail call void @llvm.dbg.value(metadata !{i32 %mul22}, i64 0, metadata !229), !dbg !721
  %add27 = add nsw i32 %mul22, 1, !dbg !722
  tail call void @llvm.dbg.value(metadata !{i32 %add27}, i64 0, metadata !230), !dbg !722
  %add28 = add nsw i32 %mul22, 2, !dbg !723
  tail call void @llvm.dbg.value(metadata !{i32 %add28}, i64 0, metadata !231), !dbg !723
  %idxprom29 = sext i32 %mul21 to i64, !dbg !724
  %arrayidx30 = getelementptr inbounds float* %xp, i64 %idxprom29, !dbg !724
  %6 = load float* %arrayidx30, align 4, !dbg !724, !tbaa !708
  %idxprom31 = sext i32 %mul22 to i64, !dbg !724
  %arrayidx32 = getelementptr inbounds float* %xp, i64 %idxprom31, !dbg !724
  %7 = load float* %arrayidx32, align 4, !dbg !724, !tbaa !708
  %sub = fsub float %6, %7, !dbg !724
  tail call void @llvm.dbg.value(metadata !{float %sub}, i64 0, metadata !235), !dbg !724
  %idxprom33 = sext i32 %add24 to i64, !dbg !725
  %arrayidx34 = getelementptr inbounds float* %xp, i64 %idxprom33, !dbg !725
  %8 = load float* %arrayidx34, align 4, !dbg !725, !tbaa !708
  %idxprom35 = sext i32 %add27 to i64, !dbg !725
  %arrayidx36 = getelementptr inbounds float* %xp, i64 %idxprom35, !dbg !725
  %9 = load float* %arrayidx36, align 4, !dbg !725, !tbaa !708
  %sub37 = fsub float %8, %9, !dbg !725
  tail call void @llvm.dbg.value(metadata !{float %sub37}, i64 0, metadata !236), !dbg !725
  %idxprom38 = sext i32 %add25 to i64, !dbg !726
  %arrayidx39 = getelementptr inbounds float* %xp, i64 %idxprom38, !dbg !726
  %10 = load float* %arrayidx39, align 4, !dbg !726, !tbaa !708
  %idxprom40 = sext i32 %add28 to i64, !dbg !726
  %arrayidx41 = getelementptr inbounds float* %xp, i64 %idxprom40, !dbg !726
  %11 = load float* %arrayidx41, align 4, !dbg !726, !tbaa !708
  %sub42 = fsub float %10, %11, !dbg !726
  tail call void @llvm.dbg.value(metadata !{float %sub42}, i64 0, metadata !237), !dbg !726
  %mul43 = fmul float %sub, %sub, !dbg !727
  %mul44 = fmul float %sub37, %sub37, !dbg !727
  %add45 = fadd float %mul43, %mul44, !dbg !727
  %mul46 = fmul float %sub42, %sub42, !dbg !727
  %add47 = fadd float %add45, %mul46, !dbg !727
  tail call void @llvm.dbg.value(metadata !{float %add47}, i64 0, metadata !233), !dbg !727
  %arrayidx49 = getelementptr inbounds float* %dist2, i64 %indvars.iv, !dbg !728
  %12 = load float* %arrayidx49, align 4, !dbg !728, !tbaa !708
  tail call void @llvm.dbg.value(metadata !{float %12}, i64 0, metadata !232), !dbg !728
  %sub50 = fsub float %12, %add47, !dbg !729
  tail call void @llvm.dbg.value(metadata !{float %sub50}, i64 0, metadata !238), !dbg !729
  %fabsf = tail call float @fabsf(float %sub50) #5, !dbg !730
  %13 = fpext float %fabsf to double, !dbg !730
  %arrayidx52 = getelementptr inbounds float* %tt, i64 %indvars.iv, !dbg !730
  %14 = load float* %arrayidx52, align 4, !dbg !730, !tbaa !708
  %conv53 = fpext float %14 to double, !dbg !730
  %mul54 = fmul double %13, %conv53, !dbg !730
  %conv55 = fptosi double %mul54 to i32, !dbg !730
  tail call void @llvm.dbg.value(metadata !{i32 %conv55}, i64 0, metadata !256), !dbg !730
  %cmp56 = icmp eq i32 %conv55, 0, !dbg !731
  br i1 %cmp56, label %for.inc, label %if.then, !dbg !731

if.then:                                          ; preds = %for.body8
  %add58 = add nsw i32 %conv55, %nconv.1282, !dbg !732
  tail call void @llvm.dbg.value(metadata !{i32 %add58}, i64 0, metadata !257), !dbg !732
  %mul59 = fmul float %1, %sub, !dbg !734
  %mul60 = fmul float %2, %sub37, !dbg !734
  %add61 = fadd float %mul59, %mul60, !dbg !734
  %mul62 = fmul float %3, %sub42, !dbg !734
  %add63 = fadd float %add61, %mul62, !dbg !734
  tail call void @llvm.dbg.value(metadata !{float %add63}, i64 0, metadata !234), !dbg !734
  %mul64 = fmul float %12, 0x3EB0C6F7A0000000, !dbg !735
  %cmp65 = fcmp olt float %add63, %mul64, !dbg !735
  br i1 %cmp65, label %for.inc, label %if.else, !dbg !735

if.else:                                          ; preds = %if.then
  %mul68 = fmul float %sub50, %omega, !dbg !736
  %arrayidx70 = getelementptr inbounds float* %m2, i64 %indvars.iv, !dbg !736
  %15 = load float* %arrayidx70, align 4, !dbg !736, !tbaa !708
  %mul71 = fmul float %mul68, %15, !dbg !736
  %div = fdiv float %mul71, %add63, !dbg !736
  tail call void @llvm.dbg.value(metadata !{float %div}, i64 0, metadata !239), !dbg !736
  %arrayidx73 = getelementptr inbounds float* %lagr, i64 %indvars.iv, !dbg !738
  %16 = load float* %arrayidx73, align 4, !dbg !738, !tbaa !708
  %add74 = fadd float %div, %16, !dbg !738
  store float %add74, float* %arrayidx73, align 4, !dbg !738, !tbaa !708
  %mul75 = fmul float %1, %div, !dbg !739
  tail call void @llvm.dbg.value(metadata !{float %mul75}, i64 0, metadata !242), !dbg !739
  %mul76 = fmul float %2, %div, !dbg !740
  tail call void @llvm.dbg.value(metadata !{float %mul76}, i64 0, metadata !243), !dbg !740
  %mul77 = fmul float %3, %div, !dbg !741
  tail call void @llvm.dbg.value(metadata !{float %mul77}, i64 0, metadata !244), !dbg !741
  %idxprom78 = sext i32 %4 to i64, !dbg !742
  %arrayidx79 = getelementptr inbounds float* %invmass, i64 %idxprom78, !dbg !742
  %17 = load float* %arrayidx79, align 4, !dbg !742, !tbaa !708
  tail call void @llvm.dbg.value(metadata !{float %17}, i64 0, metadata !240), !dbg !742
  %idxprom80 = sext i32 %5 to i64, !dbg !743
  %arrayidx81 = getelementptr inbounds float* %invmass, i64 %idxprom80, !dbg !743
  %18 = load float* %arrayidx81, align 4, !dbg !743, !tbaa !708
  tail call void @llvm.dbg.value(metadata !{float %18}, i64 0, metadata !241), !dbg !743
  %conv82 = fpext float %17 to double, !dbg !744
  %fabsf271 = tail call float @fabsf(float %17) #5, !dbg !744
  %19 = fpext float %fabsf271 to double, !dbg !744
  %cmp84 = fcmp ogt double %19, 1.200000e-38, !dbg !744
  br i1 %cmp84, label %land.lhs.true86, label %if.else116, !dbg !744

land.lhs.true86:                                  ; preds = %if.else
  %fabsf274 = tail call float @fabsf(float %18) #5, !dbg !744
  %20 = fpext float %fabsf274 to double, !dbg !744
  %cmp89 = fcmp ogt double %20, 1.200000e-38, !dbg !744
  br i1 %cmp89, label %if.then91, label %if.else116, !dbg !744

if.then91:                                        ; preds = %land.lhs.true86
  %mul92 = fmul float %mul75, %17, !dbg !745
  %21 = load float* %arrayidx30, align 4, !dbg !745, !tbaa !708
  %add95 = fadd float %mul92, %21, !dbg !745
  store float %add95, float* %arrayidx30, align 4, !dbg !745, !tbaa !708
  %mul96 = fmul float %mul76, %17, !dbg !747
  %22 = load float* %arrayidx34, align 4, !dbg !747, !tbaa !708
  %add99 = fadd float %mul96, %22, !dbg !747
  store float %add99, float* %arrayidx34, align 4, !dbg !747, !tbaa !708
  %mul100 = fmul float %mul77, %17, !dbg !748
  %23 = load float* %arrayidx39, align 4, !dbg !748, !tbaa !708
  %add103 = fadd float %mul100, %23, !dbg !748
  store float %add103, float* %arrayidx39, align 4, !dbg !748, !tbaa !708
  %mul104 = fmul float %mul75, %18, !dbg !749
  %24 = load float* %arrayidx32, align 4, !dbg !749, !tbaa !708
  %sub107 = fsub float %24, %mul104, !dbg !749
  store float %sub107, float* %arrayidx32, align 4, !dbg !749, !tbaa !708
  %mul108 = fmul float %mul76, %18, !dbg !750
  %25 = load float* %arrayidx36, align 4, !dbg !750, !tbaa !708
  %sub111 = fsub float %25, %mul108, !dbg !750
  store float %sub111, float* %arrayidx36, align 4, !dbg !750, !tbaa !708
  %mul112 = fmul float %mul77, %18, !dbg !751
  %26 = load float* %arrayidx41, align 4, !dbg !751, !tbaa !708
  %sub115 = fsub float %26, %mul112, !dbg !751
  store float %sub115, float* %arrayidx41, align 4, !dbg !751, !tbaa !708
  br label %for.inc, !dbg !752

if.else116:                                       ; preds = %land.lhs.true86, %if.else
  %cmp119 = fcmp olt double %19, 1.200000e-38, !dbg !753
  %fabsf273 = tail call float @fabsf(float %18) #5, !dbg !753
  %27 = fpext float %fabsf273 to double, !dbg !753
  %cmp124 = fcmp ogt double %27, 1.200000e-38, !dbg !753
  %or.cond = and i1 %cmp119, %cmp124, !dbg !753
  br i1 %or.cond, label %if.then126, label %if.else139, !dbg !753

if.then126:                                       ; preds = %if.else116
  %mul127 = fmul float %mul75, %18, !dbg !754
  %28 = load float* %arrayidx30, align 4, !dbg !754, !tbaa !708
  %add130 = fadd float %mul127, %28, !dbg !754
  store float %add130, float* %arrayidx30, align 4, !dbg !754, !tbaa !708
  %mul131 = fmul float %mul76, %18, !dbg !756
  %29 = load float* %arrayidx34, align 4, !dbg !756, !tbaa !708
  %add134 = fadd float %mul131, %29, !dbg !756
  store float %add134, float* %arrayidx34, align 4, !dbg !756, !tbaa !708
  %mul135 = fmul float %mul77, %18, !dbg !757
  %30 = load float* %arrayidx39, align 4, !dbg !757, !tbaa !708
  %add138 = fadd float %mul135, %30, !dbg !757
  store float %add138, float* %arrayidx39, align 4, !dbg !757, !tbaa !708
  br label %for.inc, !dbg !758

if.else139:                                       ; preds = %if.else116
  %cmp142.not = fcmp uge double %27, 1.200000e-38, !dbg !759
  %cmp84.not = xor i1 %cmp84, true, !dbg !759
  %brmerge = or i1 %cmp142.not, %cmp84.not, !dbg !759
  br i1 %brmerge, label %if.else162, label %if.then149, !dbg !759

if.then149:                                       ; preds = %if.else139
  %mul150 = fmul float %mul75, %17, !dbg !760
  %31 = load float* %arrayidx32, align 4, !dbg !760, !tbaa !708
  %sub153 = fsub float %31, %mul150, !dbg !760
  store float %sub153, float* %arrayidx32, align 4, !dbg !760, !tbaa !708
  %mul154 = fmul float %mul76, %17, !dbg !762
  %32 = load float* %arrayidx36, align 4, !dbg !762, !tbaa !708
  %sub157 = fsub float %32, %mul154, !dbg !762
  store float %sub157, float* %arrayidx36, align 4, !dbg !762, !tbaa !708
  %mul158 = fmul float %mul77, %17, !dbg !763
  %33 = load float* %arrayidx41, align 4, !dbg !763, !tbaa !708
  %sub161 = fsub float %33, %mul158, !dbg !763
  store float %sub161, float* %arrayidx41, align 4, !dbg !763, !tbaa !708
  br label %for.inc, !dbg !764

if.else162:                                       ; preds = %if.else139
  %conv140 = fpext float %18 to double, !dbg !759
  tail call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([51 x i8]* @.str, i64 0, i64 0), double %conv82, double %conv140) #6, !dbg !765
  br label %for.inc

for.inc:                                          ; preds = %if.then, %for.body8, %if.then91, %if.then149, %if.else162, %if.then126
  %error.2 = phi i32 [ 0, %if.then91 ], [ 0, %if.then126 ], [ 0, %if.then149 ], [ 0, %if.else162 ], [ 0, %for.body8 ], [ %0, %if.then ]
  %nconv.2 = phi i32 [ %add58, %if.then91 ], [ %add58, %if.then126 ], [ %add58, %if.then149 ], [ %add58, %if.else162 ], [ %nconv.1282, %for.body8 ], [ %add58, %if.then ]
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !702
  %34 = trunc i64 %indvars.iv.next to i32, !dbg !702
  %cmp4 = icmp slt i32 %34, %ncon, !dbg !702
  %cmp6 = icmp eq i32 %error.2, 0, !dbg !702
  %or.cond276 = and i1 %cmp4, %cmp6, !dbg !702
  br i1 %or.cond276, label %for.body8, label %for.inc169, !dbg !702

for.inc169:                                       ; preds = %for.inc
  %inc170 = add nsw i32 %nit.0285, 1, !dbg !700
  %notlhs = icmp slt i32 %inc170, %maxnit, !dbg !700
  %notrhs = icmp ne i32 %nconv.2, 0, !dbg !700
  %or.cond.not = and i1 %notrhs, %notlhs, !dbg !700
  %cmp2 = icmp eq i32 %error.2, 0, !dbg !700
  %or.cond275 = and i1 %or.cond.not, %cmp2, !dbg !700
  br i1 %or.cond275, label %for.cond3.preheader, label %for.end171, !dbg !700

for.end171:                                       ; preds = %for.inc169, %for.inc169.thread, %entry
  %error.0.lcssa = phi i32 [ 0, %entry ], [ 0, %for.inc169.thread ], [ %error.2, %for.inc169 ]
  %nit.0.lcssa = phi i32 [ 0, %entry ], [ %inc170289, %for.inc169.thread ], [ %inc170, %for.inc169 ]
  store i32 %nit.0.lcssa, i32* %nnit, align 4, !dbg !766, !tbaa !714
  store i32 %error.0.lcssa, i32* %nerror, align 4, !dbg !767, !tbaa !714
  ret void, !dbg !768
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

; Function Attrs: optsize
declare void @fatal_error(i32, i8*, ...) #2

; Function Attrs: nounwind optsize uwtable
define i32 @vec_shakef(%struct._IO_FILE* %log, i32 %natoms, float* %invmass, i32 %ncon, %union.t_iparams* nocapture %ip, i32* %iatom, float %tol, [3 x float]* nocapture %x, [3 x float]* %xp, float %omega, i32 %bFEP, float %lambda, float* %lagr) #0 {
entry:
  %ncon.addr = alloca i32, align 4
  %omega.addr = alloca float, align 4
  %maxnit = alloca i32, align 4
  %nit = alloca i32, align 4
  %error = alloca i32, align 4
  call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %log}, i64 0, metadata !437), !dbg !769
  call void @llvm.dbg.value(metadata !{i32 %natoms}, i64 0, metadata !438), !dbg !770
  call void @llvm.dbg.value(metadata !{float* %invmass}, i64 0, metadata !439), !dbg !770
  call void @llvm.dbg.value(metadata !{i32 %ncon}, i64 0, metadata !440), !dbg !770
  store i32 %ncon, i32* %ncon.addr, align 4, !tbaa !714
  call void @llvm.dbg.declare(metadata !{i32* %ncon.addr}, metadata !440), !dbg !770
  call void @llvm.dbg.value(metadata !{%union.t_iparams* %ip}, i64 0, metadata !441), !dbg !771
  call void @llvm.dbg.value(metadata !{i32* %iatom}, i64 0, metadata !442), !dbg !771
  call void @llvm.dbg.value(metadata !{float %tol}, i64 0, metadata !443), !dbg !772
  call void @llvm.dbg.value(metadata !{[3 x float]* %x}, i64 0, metadata !444), !dbg !772
  call void @llvm.dbg.value(metadata !{[3 x float]* %xp}, i64 0, metadata !445), !dbg !772
  call void @llvm.dbg.value(metadata !{float %omega}, i64 0, metadata !446), !dbg !772
  store float %omega, float* %omega.addr, align 4, !tbaa !708
  call void @llvm.dbg.declare(metadata !{float* %omega.addr}, metadata !446), !dbg !772
  call void @llvm.dbg.value(metadata !{i32 %bFEP}, i64 0, metadata !447), !dbg !773
  call void @llvm.dbg.value(metadata !{float %lambda}, i64 0, metadata !448), !dbg !773
  call void @llvm.dbg.value(metadata !{float* %lagr}, i64 0, metadata !449), !dbg !773
  call void @llvm.dbg.declare(metadata !{i32* %maxnit}, metadata !450), !dbg !774
  call void @llvm.dbg.value(metadata !775, i64 0, metadata !450), !dbg !774
  store i32 1000, i32* %maxnit, align 4, !dbg !774, !tbaa !714
  call void @llvm.dbg.declare(metadata !{i32* %nit}, metadata !451), !dbg !776
  call void @llvm.dbg.declare(metadata !{i32* %error}, metadata !461), !dbg !777
  call void @llvm.dbg.value(metadata !{i32* %ncon.addr}, i64 0, metadata !440), !dbg !778
  %0 = load i32* @vec_shakef.maxcon, align 4, !dbg !778, !tbaa !714
  %cmp = icmp slt i32 %0, %ncon, !dbg !778
  br i1 %cmp, label %if.then, label %if.end, !dbg !778

if.then:                                          ; preds = %entry
  %1 = load [3 x float]** @vec_shakef.rij, align 8, !dbg !779, !tbaa !781
  %2 = bitcast [3 x float]* %1 to i8*, !dbg !779
  %mul = mul i32 %ncon, 12, !dbg !779
  %call = call i8* @save_realloc(i8* getelementptr inbounds ([4 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str2, i64 0, i64 0), i32 169, i8* %2, i32 %mul) #6, !dbg !779
  %3 = bitcast i8* %call to [3 x float]*, !dbg !779
  store [3 x float]* %3, [3 x float]** @vec_shakef.rij, align 8, !dbg !779, !tbaa !781
  %4 = load float** @vec_shakef.M2, align 8, !dbg !782, !tbaa !781
  %5 = bitcast float* %4 to i8*, !dbg !782
  call void @llvm.dbg.value(metadata !{i32* %ncon.addr}, i64 0, metadata !440), !dbg !782
  %6 = load i32* %ncon.addr, align 4, !dbg !782, !tbaa !714
  %mul3 = shl i32 %6, 2, !dbg !782
  %call5 = call i8* @save_realloc(i8* getelementptr inbounds ([3 x i8]* @.str3, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str2, i64 0, i64 0), i32 170, i8* %5, i32 %mul3) #6, !dbg !782
  %7 = bitcast i8* %call5 to float*, !dbg !782
  store float* %7, float** @vec_shakef.M2, align 8, !dbg !782, !tbaa !781
  %8 = load float** @vec_shakef.tt, align 8, !dbg !783, !tbaa !781
  %9 = bitcast float* %8 to i8*, !dbg !783
  call void @llvm.dbg.value(metadata !{i32* %ncon.addr}, i64 0, metadata !440), !dbg !783
  %10 = load i32* %ncon.addr, align 4, !dbg !783, !tbaa !714
  %mul7 = shl i32 %10, 2, !dbg !783
  %call9 = call i8* @save_realloc(i8* getelementptr inbounds ([3 x i8]* @.str4, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str2, i64 0, i64 0), i32 171, i8* %9, i32 %mul7) #6, !dbg !783
  %11 = bitcast i8* %call9 to float*, !dbg !783
  store float* %11, float** @vec_shakef.tt, align 8, !dbg !783, !tbaa !781
  %12 = load float** @vec_shakef.dist2, align 8, !dbg !784, !tbaa !781
  %13 = bitcast float* %12 to i8*, !dbg !784
  call void @llvm.dbg.value(metadata !{i32* %ncon.addr}, i64 0, metadata !440), !dbg !784
  %14 = load i32* %ncon.addr, align 4, !dbg !784, !tbaa !714
  %mul11 = shl i32 %14, 2, !dbg !784
  %call13 = call i8* @save_realloc(i8* getelementptr inbounds ([6 x i8]* @.str5, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str2, i64 0, i64 0), i32 172, i8* %13, i32 %mul11) #6, !dbg !784
  %15 = bitcast i8* %call13 to float*, !dbg !784
  store float* %15, float** @vec_shakef.dist2, align 8, !dbg !784, !tbaa !781
  call void @llvm.dbg.value(metadata !{i32* %ncon.addr}, i64 0, metadata !440), !dbg !785
  %16 = load i32* %ncon.addr, align 4, !dbg !785, !tbaa !714
  store i32 %16, i32* @vec_shakef.maxcon, align 4, !dbg !785, !tbaa !714
  br label %if.end, !dbg !786

if.end:                                           ; preds = %if.then, %entry
  %17 = phi i32 [ %16, %if.then ], [ %ncon, %entry ]
  %conv15 = fsub float 1.000000e+00, %lambda, !dbg !787
  call void @llvm.dbg.value(metadata !{float %conv15}, i64 0, metadata !457), !dbg !787
  %conv18 = fmul float %tol, 2.000000e+00, !dbg !788
  call void @llvm.dbg.value(metadata !{float %conv18}, i64 0, metadata !458), !dbg !788
  call void @llvm.dbg.value(metadata !{i32* %iatom}, i64 0, metadata !456), !dbg !789
  call void @llvm.dbg.value(metadata !191, i64 0, metadata !452), !dbg !790
  call void @llvm.dbg.value(metadata !{i32* %ncon.addr}, i64 0, metadata !440), !dbg !790
  %cmp19154 = icmp sgt i32 %17, 0, !dbg !790
  br i1 %cmp19154, label %for.body.lr.ph, label %if.end.for.end_crit_edge, !dbg !790

if.end.for.end_crit_edge:                         ; preds = %if.end
  %.pre = load float** @vec_shakef.dist2, align 8, !dbg !792, !tbaa !781
  %.pre157 = load [3 x float]** @vec_shakef.rij, align 8, !dbg !792, !tbaa !781
  %.pre158 = load float** @vec_shakef.M2, align 8, !dbg !792, !tbaa !781
  %.pre159 = load float** @vec_shakef.tt, align 8, !dbg !792, !tbaa !781
  br label %for.end, !dbg !790

for.body.lr.ph:                                   ; preds = %if.end
  %18 = load [3 x float]** @vec_shakef.rij, align 8, !dbg !793, !tbaa !781
  %19 = load float** @vec_shakef.M2, align 8, !dbg !795, !tbaa !781
  %tobool = icmp eq i32 %bFEP, 0, !dbg !796
  %20 = load float** @vec_shakef.dist2, align 8, !dbg !797, !tbaa !781
  %21 = load float** @vec_shakef.tt, align 8, !dbg !798, !tbaa !781
  call void @llvm.dbg.value(metadata !{i32* %ncon.addr}, i64 0, metadata !440), !dbg !790
  br label %for.body, !dbg !790

for.body:                                         ; preds = %for.body.lr.ph, %if.end76
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %if.end76 ]
  %ia.0155 = phi i32* [ %iatom, %for.body.lr.ph ], [ %add.ptr, %if.end76 ]
  %22 = load i32* %ia.0155, align 4, !dbg !799, !tbaa !714
  call void @llvm.dbg.value(metadata !{i32 %22}, i64 0, metadata !455), !dbg !799
  %arrayidx21 = getelementptr inbounds i32* %ia.0155, i64 1, !dbg !800
  %23 = load i32* %arrayidx21, align 4, !dbg !800, !tbaa !714
  call void @llvm.dbg.value(metadata !{i32 %23}, i64 0, metadata !453), !dbg !800
  %arrayidx22 = getelementptr inbounds i32* %ia.0155, i64 2, !dbg !801
  %24 = load i32* %arrayidx22, align 4, !dbg !801, !tbaa !714
  call void @llvm.dbg.value(metadata !{i32 %24}, i64 0, metadata !454), !dbg !801
  %idxprom = sext i32 %23 to i64, !dbg !802
  %arrayidx23 = getelementptr inbounds float* %invmass, i64 %idxprom, !dbg !802
  %25 = load float* %arrayidx23, align 4, !dbg !802, !tbaa !708
  %idxprom24 = sext i32 %24 to i64, !dbg !802
  %arrayidx25 = getelementptr inbounds float* %invmass, i64 %idxprom24, !dbg !802
  %26 = load float* %arrayidx25, align 4, !dbg !802, !tbaa !708
  %add = fadd float %25, %26, !dbg !802
  %mul26 = fmul float %add, 2.000000e+00, !dbg !802
  call void @llvm.dbg.value(metadata !{float %mul26}, i64 0, metadata !460), !dbg !802
  %arrayidx29 = getelementptr inbounds [3 x float]* %x, i64 %idxprom, i64 0, !dbg !793
  %27 = load float* %arrayidx29, align 4, !dbg !793, !tbaa !708
  %arrayidx32 = getelementptr inbounds [3 x float]* %x, i64 %idxprom24, i64 0, !dbg !793
  %28 = load float* %arrayidx32, align 4, !dbg !793, !tbaa !708
  %sub33 = fsub float %27, %28, !dbg !793
  %arrayidx36 = getelementptr inbounds [3 x float]* %18, i64 %indvars.iv, i64 0, !dbg !793
  store float %sub33, float* %arrayidx36, align 4, !dbg !793, !tbaa !708
  %arrayidx39 = getelementptr inbounds [3 x float]* %x, i64 %idxprom, i64 1, !dbg !803
  %29 = load float* %arrayidx39, align 4, !dbg !803, !tbaa !708
  %arrayidx42 = getelementptr inbounds [3 x float]* %x, i64 %idxprom24, i64 1, !dbg !803
  %30 = load float* %arrayidx42, align 4, !dbg !803, !tbaa !708
  %sub43 = fsub float %29, %30, !dbg !803
  %arrayidx46 = getelementptr inbounds [3 x float]* %18, i64 %indvars.iv, i64 1, !dbg !803
  store float %sub43, float* %arrayidx46, align 4, !dbg !803, !tbaa !708
  %arrayidx49 = getelementptr inbounds [3 x float]* %x, i64 %idxprom, i64 2, !dbg !804
  %31 = load float* %arrayidx49, align 4, !dbg !804, !tbaa !708
  %arrayidx52 = getelementptr inbounds [3 x float]* %x, i64 %idxprom24, i64 2, !dbg !804
  %32 = load float* %arrayidx52, align 4, !dbg !804, !tbaa !708
  %sub53 = fsub float %31, %32, !dbg !804
  %arrayidx56 = getelementptr inbounds [3 x float]* %18, i64 %indvars.iv, i64 2, !dbg !804
  store float %sub53, float* %arrayidx56, align 4, !dbg !804, !tbaa !708
  %conv58 = fdiv float 1.000000e+00, %mul26, !dbg !795
  %arrayidx60 = getelementptr inbounds float* %19, i64 %indvars.iv, !dbg !795
  store float %conv58, float* %arrayidx60, align 4, !dbg !795, !tbaa !708
  %idxprom71 = sext i32 %22 to i64, !dbg !805
  %dA74 = getelementptr inbounds %union.t_iparams* %ip, i64 %idxprom71, i32 0, i32 0, !dbg !805
  %33 = load float* %dA74, align 4, !dbg !805, !tbaa !708
  br i1 %tobool, label %if.else, label %if.then61, !dbg !796

if.then61:                                        ; preds = %for.body
  %mul64 = fmul float %conv15, %33, !dbg !806
  %34 = getelementptr inbounds %union.t_iparams* %ip, i64 %idxprom71, i32 0, i32 1, !dbg !806
  %35 = load float* %34, align 4, !dbg !806, !tbaa !708
  %mul68 = fmul float %35, %lambda, !dbg !806
  %add69 = fadd float %mul64, %mul68, !dbg !806
  tail call void @llvm.dbg.value(metadata !{float %add69}, i64 0, metadata !807), !dbg !808
  %mul.i = fmul float %add69, %add69, !dbg !809
  call void @llvm.dbg.value(metadata !{float %mul.i}, i64 0, metadata !459), !dbg !806
  br label %if.end76, !dbg !806

if.else:                                          ; preds = %for.body
  tail call void @llvm.dbg.value(metadata !{float %33}, i64 0, metadata !810), !dbg !811
  %mul.i153 = fmul float %33, %33, !dbg !812
  call void @llvm.dbg.value(metadata !{float %mul.i153}, i64 0, metadata !459), !dbg !805
  br label %if.end76

if.end76:                                         ; preds = %if.else, %if.then61
  %toler.0 = phi float [ %mul.i, %if.then61 ], [ %mul.i153, %if.else ]
  %arrayidx78 = getelementptr inbounds float* %20, i64 %indvars.iv, !dbg !797
  store float %toler.0, float* %arrayidx78, align 4, !dbg !797, !tbaa !708
  %mul79 = fmul float %conv18, %toler.0, !dbg !798
  %conv82 = fdiv float 1.000000e+00, %mul79, !dbg !798
  %arrayidx84 = getelementptr inbounds float* %21, i64 %indvars.iv, !dbg !798
  store float %conv82, float* %arrayidx84, align 4, !dbg !798, !tbaa !708
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !790
  %add.ptr = getelementptr inbounds i32* %ia.0155, i64 3, !dbg !790
  call void @llvm.dbg.value(metadata !{i32* %add.ptr}, i64 0, metadata !456), !dbg !790
  call void @llvm.dbg.value(metadata !{i32* %ncon.addr}, i64 0, metadata !440), !dbg !790
  %36 = trunc i64 %indvars.iv.next to i32, !dbg !790
  %cmp19 = icmp slt i32 %36, %17, !dbg !790
  br i1 %cmp19, label %for.body, label %for.end, !dbg !790

for.end:                                          ; preds = %if.end76, %if.end.for.end_crit_edge
  %37 = phi float* [ %.pre159, %if.end.for.end_crit_edge ], [ %21, %if.end76 ]
  %38 = phi float* [ %.pre158, %if.end.for.end_crit_edge ], [ %19, %if.end76 ]
  %39 = phi [3 x float]* [ %.pre157, %if.end.for.end_crit_edge ], [ %18, %if.end76 ]
  %40 = phi float* [ %.pre, %if.end.for.end_crit_edge ], [ %20, %if.end76 ]
  %arraydecay = getelementptr inbounds [3 x float]* %xp, i64 0, i64 0, !dbg !792
  %arraydecay87 = getelementptr inbounds [3 x float]* %39, i64 0, i64 0, !dbg !792
  call void @fshake_(i32* %iatom, i32* %ncon.addr, i32* %nit, i32* %maxnit, float* %40, float* %arraydecay, float* %arraydecay87, float* %38, float* %omega.addr, float* %invmass, float* %37, float* %lagr, i32* %error) #6, !dbg !792
  call void @llvm.dbg.value(metadata !{i32* %nit}, i64 0, metadata !451), !dbg !813
  %41 = load i32* %nit, align 4, !dbg !813, !tbaa !714
  call void @llvm.dbg.value(metadata !{i32* %maxnit}, i64 0, metadata !450), !dbg !813
  %42 = load i32* %maxnit, align 4, !dbg !813, !tbaa !714
  %cmp88 = icmp slt i32 %41, %42, !dbg !813
  br i1 %cmp88, label %if.else95, label %if.then90, !dbg !813

if.then90:                                        ; preds = %for.end
  %tobool91 = icmp eq %struct._IO_FILE* %log, null, !dbg !814
  br i1 %tobool91, label %if.end94, label %if.then92, !dbg !814

if.then92:                                        ; preds = %if.then90
  %call93 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %log, i8* getelementptr inbounds ([36 x i8]* @.str6, i64 0, i64 0), i32 %42) #6, !dbg !816
  br label %if.end94, !dbg !816

if.end94:                                         ; preds = %if.then90, %if.then92
  call void @llvm.dbg.value(metadata !191, i64 0, metadata !451), !dbg !817
  store i32 0, i32* %nit, align 4, !dbg !817, !tbaa !714
  br label %if.end117, !dbg !818

if.else95:                                        ; preds = %for.end
  call void @llvm.dbg.value(metadata !{i32* %error}, i64 0, metadata !461), !dbg !819
  %43 = load i32* %error, align 4, !dbg !819, !tbaa !714
  %cmp96 = icmp eq i32 %43, 0, !dbg !819
  br i1 %cmp96, label %if.end117, label %if.then98, !dbg !819

if.then98:                                        ; preds = %if.else95
  %tobool99 = icmp eq %struct._IO_FILE* %log, null, !dbg !820
  br i1 %tobool99, label %if.end115, label %if.then100, !dbg !820

if.then100:                                       ; preds = %if.then98
  %sub101 = add nsw i32 %43, -1, !dbg !822
  %mul103 = mul nsw i32 %sub101, 3, !dbg !822
  %add104 = add nsw i32 %mul103, 1, !dbg !822
  %idxprom105 = sext i32 %add104 to i64, !dbg !822
  %arrayidx106 = getelementptr inbounds i32* %iatom, i64 %idxprom105, !dbg !822
  %44 = load i32* %arrayidx106, align 4, !dbg !822, !tbaa !714
  %add107 = add nsw i32 %44, 1, !dbg !822
  %add110 = add nsw i32 %mul103, 2, !dbg !822
  %idxprom111 = sext i32 %add110 to i64, !dbg !822
  %arrayidx112 = getelementptr inbounds i32* %iatom, i64 %idxprom111, !dbg !822
  %45 = load i32* %arrayidx112, align 4, !dbg !822, !tbaa !714
  %add113 = add nsw i32 %45, 1, !dbg !822
  %call114 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %log, i8* getelementptr inbounds ([81 x i8]* @.str7, i64 0, i64 0), i32 %sub101, i32 %add107, i32 %add113) #6, !dbg !822
  br label %if.end115, !dbg !822

if.end115:                                        ; preds = %if.then98, %if.then100
  call void @llvm.dbg.value(metadata !191, i64 0, metadata !451), !dbg !823
  store i32 0, i32* %nit, align 4, !dbg !823, !tbaa !714
  br label %if.end117, !dbg !824

if.end117:                                        ; preds = %if.else95, %if.end115, %if.end94
  %46 = phi i32 [ %41, %if.else95 ], [ 0, %if.end115 ], [ 0, %if.end94 ]
  call void @llvm.dbg.value(metadata !{i32* %nit}, i64 0, metadata !451), !dbg !825
  ret i32 %46, !dbg !825
}

; Function Attrs: optsize
declare i8* @save_realloc(i8*, i8*, i32, i8*, i32) #2

; Function Attrs: optsize
declare void @fshake_(i32*, i32*, i32*, i32*, float*, float*, float*, float*, float*, float*, float*, float*, i32*) #2

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #3

; Function Attrs: nounwind optsize uwtable
define i32 @bshakef(%struct._IO_FILE* %log, i32 %natoms, float* %invmass, i32 %nblocks, i32* nocapture %sblock, %struct.t_idef* nocapture %idef, %struct.t_inputrec* nocapture %ir, [3 x float]* nocapture %box, [3 x float]* nocapture %x_s, [3 x float]* %xp, %struct.t_nrnb* nocapture %nrnb, float %lambda, float* nocapture %dvdlambda, i32 %bDumpOnError) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %log}, i64 0, metadata !614), !dbg !826
  tail call void @llvm.dbg.value(metadata !{i32 %natoms}, i64 0, metadata !615), !dbg !826
  tail call void @llvm.dbg.value(metadata !{float* %invmass}, i64 0, metadata !616), !dbg !826
  tail call void @llvm.dbg.value(metadata !{i32 %nblocks}, i64 0, metadata !617), !dbg !826
  tail call void @llvm.dbg.value(metadata !{i32* %sblock}, i64 0, metadata !618), !dbg !826
  tail call void @llvm.dbg.value(metadata !{%struct.t_idef* %idef}, i64 0, metadata !619), !dbg !827
  tail call void @llvm.dbg.value(metadata !{%struct.t_inputrec* %ir}, i64 0, metadata !620), !dbg !827
  tail call void @llvm.dbg.value(metadata !{[3 x float]* %box}, i64 0, metadata !621), !dbg !827
  tail call void @llvm.dbg.value(metadata !{[3 x float]* %x_s}, i64 0, metadata !622), !dbg !827
  tail call void @llvm.dbg.value(metadata !{[3 x float]* %xp}, i64 0, metadata !623), !dbg !827
  tail call void @llvm.dbg.value(metadata !{%struct.t_nrnb* %nrnb}, i64 0, metadata !624), !dbg !828
  tail call void @llvm.dbg.value(metadata !{float %lambda}, i64 0, metadata !625), !dbg !828
  tail call void @llvm.dbg.value(metadata !{float* %dvdlambda}, i64 0, metadata !626), !dbg !828
  tail call void @llvm.dbg.value(metadata !{i32 %bDumpOnError}, i64 0, metadata !627), !dbg !828
  tail call void @llvm.dbg.value(metadata !191, i64 0, metadata !637), !dbg !829
  tail call void @llvm.dbg.value(metadata !191, i64 0, metadata !638), !dbg !829
  %nr = getelementptr inbounds %struct.t_idef* %idef, i64 0, i32 5, i64 27, i32 0, !dbg !830
  %0 = load i32* %nr, align 4, !dbg !830, !tbaa !714
  %div = sdiv i32 %0, 3, !dbg !830
  tail call void @llvm.dbg.value(metadata !{i32 %div}, i64 0, metadata !634), !dbg !830
  %.b = load i1* @bshakef.bFirst, align 1
  br i1 %.b, label %for.cond.preheader, label %if.then, !dbg !831

if.then:                                          ; preds = %entry
  %bShakeSOR = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 67, !dbg !832
  %1 = load i32* %bShakeSOR, align 4, !dbg !832, !tbaa !714
  %tobool1 = icmp eq i32 %1, 0, !dbg !832
  br i1 %tobool1, label %if.end, label %if.then2, !dbg !832

if.then2:                                         ; preds = %if.then
  tail call void @please_cite(%struct._IO_FILE* %log, i8* getelementptr inbounds ([9 x i8]* @.str8, i64 0, i64 0)) #6, !dbg !834
  br label %if.end, !dbg !834

if.end:                                           ; preds = %if.then, %if.then2
  %call = tail call i8* @save_calloc(i8* getelementptr inbounds ([5 x i8]* @.str9, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str2, i64 0, i64 0), i32 280, i32 %div, i32 4) #6, !dbg !835
  %2 = bitcast i8* %call to float*, !dbg !835
  store float* %2, float** @bshakef.lagr, align 8, !dbg !835, !tbaa !781
  store i1 true, i1* @bshakef.bFirst, align 1
  br label %for.cond.preheader, !dbg !836

for.cond.preheader:                               ; preds = %entry, %if.end
  %cmp150 = icmp sgt i32 %0, 2, !dbg !837
  br i1 %cmp150, label %for.body.lr.ph, label %for.end, !dbg !837

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %3 = load float** @bshakef.lagr, align 8, !dbg !839, !tbaa !781
  %4 = bitcast float* %3 to i8*
  %5 = icmp sgt i32 %0, 5
  %div.op = add i32 %div, -1, !dbg !837
  %6 = zext i32 %div.op to i64
  %.op = shl nuw nsw i64 %6, 2, !dbg !837
  %.op.op = add i64 %.op, 4, !dbg !837
  %7 = select i1 %5, i64 %.op.op, i64 4, !dbg !837
  call void @llvm.memset.p0i8.i64(i8* %4, i8 0, i64 %7, i32 4, i1 false), !dbg !839
  br label %for.end, !dbg !837

for.end:                                          ; preds = %for.body.lr.ph, %for.cond.preheader
  %iatoms9 = getelementptr inbounds %struct.t_idef* %idef, i64 0, i32 5, i64 27, i32 2, !dbg !840
  tail call void @llvm.dbg.value(metadata !{i32* %arrayidx10}, i64 0, metadata !628), !dbg !840
  tail call void @llvm.dbg.value(metadata !{float* %10}, i64 0, metadata !629), !dbg !841
  tail call void @llvm.dbg.value(metadata !191, i64 0, metadata !632), !dbg !842
  %cmp12142 = icmp sgt i32 %nblocks, 0, !dbg !842
  br i1 %cmp12142, label %for.body13.lr.ph, label %for.end.for.end35_crit_edge, !dbg !842

for.end.for.end35_crit_edge:                      ; preds = %for.end
  %efep36.pre = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 46, !dbg !844
  br label %for.end35, !dbg !842

for.body13.lr.ph:                                 ; preds = %for.end
  %8 = load i32* %sblock, align 4, !dbg !840, !tbaa !714
  %9 = load i32** %iatoms9, align 8, !dbg !840, !tbaa !781
  %idxprom6 = sext i32 %8 to i64, !dbg !840
  %10 = load float** @bshakef.lagr, align 8, !dbg !841, !tbaa !781
  %arrayidx10 = getelementptr inbounds i32* %9, i64 %idxprom6, !dbg !840
  %iparams = getelementptr inbounds %struct.t_idef* %idef, i64 0, i32 4, !dbg !845
  %shake_tol = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 44, !dbg !845
  %efep = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 46, !dbg !845
  br label %for.body13, !dbg !842

for.body13:                                       ; preds = %if.end28.for.body13_crit_edge, %for.body13.lr.ph
  %11 = phi i32 [ %8, %for.body13.lr.ph ], [ %.pre159, %if.end28.for.body13_crit_edge ]
  %indvars.iv155 = phi i64 [ 1, %for.body13.lr.ph ], [ %phitmp160, %if.end28.for.body13_crit_edge ]
  %trij.0147 = phi i32 [ 0, %for.body13.lr.ph ], [ %add30, %if.end28.for.body13_crit_edge ]
  %tnit.0146 = phi i32 [ 0, %for.body13.lr.ph ], [ %add29, %if.end28.for.body13_crit_edge ]
  %iatoms.0145 = phi i32* [ %arrayidx10, %for.body13.lr.ph ], [ %add.ptr, %if.end28.for.body13_crit_edge ]
  %lam.0144 = phi float* [ %10, %for.body13.lr.ph ], [ %add.ptr33, %if.end28.for.body13_crit_edge ]
  %arrayidx15 = getelementptr inbounds i32* %sblock, i64 %indvars.iv155, !dbg !847
  %12 = load i32* %arrayidx15, align 4, !dbg !847, !tbaa !714
  %sub = sub nsw i32 %12, %11, !dbg !847
  tail call void @llvm.dbg.value(metadata !{i32 %sub}, i64 0, metadata !635), !dbg !847
  %div18 = sdiv i32 %sub, 3, !dbg !848
  tail call void @llvm.dbg.value(metadata !{i32 %div18}, i64 0, metadata !635), !dbg !848
  %13 = load %union.t_iparams** %iparams, align 8, !dbg !845, !tbaa !781
  %14 = load float* %shake_tol, align 4, !dbg !845, !tbaa !708
  %15 = load float* @bshakef.omega, align 4, !dbg !845, !tbaa !708
  %16 = load i32* %efep, align 4, !dbg !845, !tbaa !714
  %cmp19 = icmp ne i32 %16, 0, !dbg !845
  %conv = zext i1 %cmp19 to i32, !dbg !845
  %call20 = tail call i32 @vec_shakef(%struct._IO_FILE* %log, i32 undef, float* %invmass, i32 %div18, %union.t_iparams* %13, i32* %iatoms.0145, float %14, [3 x float]* %x_s, [3 x float]* %xp, float %15, i32 %conv, float %lambda, float* %lam.0144) #7, !dbg !845
  tail call void @llvm.dbg.value(metadata !{i32 %call20}, i64 0, metadata !633), !dbg !845
  %cmp21 = icmp eq i32 %call20, 0, !dbg !849
  br i1 %cmp21, label %if.then23, label %if.end28, !dbg !849

if.then23:                                        ; preds = %for.body13
  %tobool24 = icmp eq i32 %bDumpOnError, 0, !dbg !850
  br i1 %tobool24, label %return, label %if.then25, !dbg !850

if.then25:                                        ; preds = %if.then23
  %17 = load %union.t_iparams** %iparams, align 8, !dbg !852, !tbaa !781
  tail call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %log}, i64 0, metadata !853) #4, !dbg !854
  tail call void @llvm.dbg.value(metadata !{i32 %div18}, i64 0, metadata !855) #4, !dbg !854
  tail call void @llvm.dbg.value(metadata !{[3 x float]* %x_s}, i64 0, metadata !856) #4, !dbg !854
  tail call void @llvm.dbg.value(metadata !{[3 x float]* %xp}, i64 0, metadata !857) #4, !dbg !854
  tail call void @llvm.dbg.value(metadata !{%union.t_iparams* %17}, i64 0, metadata !858) #4, !dbg !859
  tail call void @llvm.dbg.value(metadata !{i32* %iatoms.0145}, i64 0, metadata !860) #4, !dbg !859
  tail call void @llvm.dbg.value(metadata !{float* %invmass}, i64 0, metadata !861) #4, !dbg !862
  tail call void @llvm.dbg.declare(metadata !863, metadata !656) #4, !dbg !864
  %tobool.i = icmp ne %struct._IO_FILE* %log, null, !dbg !865
  br i1 %tobool.i, label %if.then.i, label %for.cond.preheader.i, !dbg !865

if.then.i:                                        ; preds = %if.then25
  %18 = tail call i64 @fwrite(i8* getelementptr inbounds ([64 x i8]* @.str10, i64 0, i64 0), i64 63, i64 1, %struct._IO_FILE* %log) #4, !dbg !866
  br label %for.cond.preheader.i, !dbg !866

for.cond.preheader.i:                             ; preds = %if.then.i, %if.then25
  %cmp73.i = icmp sgt i32 %sub, 2, !dbg !867
  br i1 %cmp73.i, label %for.body.i, label %return, !dbg !867

for.body.i:                                       ; preds = %for.cond.preheader.i, %for.inc.i
  %ia.075.i = phi i32* [ %add.ptr.i, %for.inc.i ], [ %iatoms.0145, %for.cond.preheader.i ]
  %i.074.i = phi i32 [ %inc.i, %for.inc.i ], [ 0, %for.cond.preheader.i ]
  %arrayidx.i = getelementptr inbounds i32* %ia.075.i, i64 1, !dbg !869
  %19 = load i32* %arrayidx.i, align 4, !dbg !869, !tbaa !714
  tail call void @llvm.dbg.value(metadata !{i32 %19}, i64 0, metadata !871) #4, !dbg !869
  %arrayidx1.i = getelementptr inbounds i32* %ia.075.i, i64 2, !dbg !872
  %20 = load i32* %arrayidx1.i, align 4, !dbg !872, !tbaa !714
  tail call void @llvm.dbg.value(metadata !{i32 %20}, i64 0, metadata !873) #4, !dbg !872
  %idxprom.i = sext i32 %19 to i64, !dbg !874
  %arraydecay.i = getelementptr inbounds [3 x float]* %x_s, i64 %idxprom.i, i64 0, !dbg !874
  %idxprom3.i = sext i32 %20 to i64, !dbg !874
  %arraydecay5.i = getelementptr inbounds [3 x float]* %x_s, i64 %idxprom3.i, i64 0, !dbg !874
  tail call void @llvm.dbg.value(metadata !{float* %arraydecay.i}, i64 0, metadata !875) #4, !dbg !876
  tail call void @llvm.dbg.value(metadata !{float* %arraydecay5.i}, i64 0, metadata !877) #4, !dbg !876
  tail call void @llvm.dbg.value(metadata !878, i64 0, metadata !879) #4, !dbg !876
  %21 = load float* %arraydecay.i, align 4, !dbg !880, !tbaa !708
  %22 = load float* %arraydecay5.i, align 4, !dbg !880, !tbaa !708
  %sub.i.i = fsub float %21, %22, !dbg !880
  tail call void @llvm.dbg.value(metadata !{float %sub.i.i}, i64 0, metadata !881) #4, !dbg !880
  %arrayidx2.i.i = getelementptr inbounds [3 x float]* %x_s, i64 %idxprom.i, i64 1, !dbg !882
  %23 = load float* %arrayidx2.i.i, align 4, !dbg !882, !tbaa !708
  %arrayidx3.i.i = getelementptr inbounds [3 x float]* %x_s, i64 %idxprom3.i, i64 1, !dbg !882
  %24 = load float* %arrayidx3.i.i, align 4, !dbg !882, !tbaa !708
  %sub4.i.i = fsub float %23, %24, !dbg !882
  tail call void @llvm.dbg.value(metadata !{float %sub4.i.i}, i64 0, metadata !883) #4, !dbg !882
  %arrayidx5.i.i = getelementptr inbounds [3 x float]* %x_s, i64 %idxprom.i, i64 2, !dbg !884
  %25 = load float* %arrayidx5.i.i, align 4, !dbg !884, !tbaa !708
  %arrayidx6.i.i = getelementptr inbounds [3 x float]* %x_s, i64 %idxprom3.i, i64 2, !dbg !884
  %26 = load float* %arrayidx6.i.i, align 4, !dbg !884, !tbaa !708
  %sub7.i.i = fsub float %25, %26, !dbg !884
  tail call void @llvm.dbg.value(metadata !{float %sub7.i.i}, i64 0, metadata !885) #4, !dbg !884
  tail call void @llvm.dbg.value(metadata !878, i64 0, metadata !886) #4, !dbg !888
  %mul.i53.i = fmul float %sub.i.i, %sub.i.i, !dbg !889
  %mul4.i55.i = fmul float %sub4.i.i, %sub4.i.i, !dbg !889
  %add.i56.i = fadd float %mul.i53.i, %mul4.i55.i, !dbg !889
  %mul7.i58.i = fmul float %sub7.i.i, %sub7.i.i, !dbg !889
  %add8.i59.i = fadd float %add.i56.i, %mul7.i58.i, !dbg !889
  %conv9.i60.i = tail call float @sqrtf(float %add8.i59.i) #3, !dbg !889
  tail call void @llvm.dbg.value(metadata !{float %conv9.i60.i}, i64 0, metadata !891) #4, !dbg !887
  %arraydecay11.i = getelementptr inbounds [3 x float]* %xp, i64 %idxprom.i, i64 0, !dbg !892
  %arraydecay14.i = getelementptr inbounds [3 x float]* %xp, i64 %idxprom3.i, i64 0, !dbg !892
  tail call void @llvm.dbg.value(metadata !{float* %arraydecay11.i}, i64 0, metadata !893) #4, !dbg !894
  tail call void @llvm.dbg.value(metadata !{float* %arraydecay14.i}, i64 0, metadata !895) #4, !dbg !894
  tail call void @llvm.dbg.value(metadata !878, i64 0, metadata !896) #4, !dbg !894
  %27 = load float* %arraydecay11.i, align 4, !dbg !897, !tbaa !708
  %28 = load float* %arraydecay14.i, align 4, !dbg !897, !tbaa !708
  %sub.i61.i = fsub float %27, %28, !dbg !897
  tail call void @llvm.dbg.value(metadata !{float %sub.i61.i}, i64 0, metadata !898) #4, !dbg !897
  %arrayidx2.i62.i = getelementptr inbounds [3 x float]* %xp, i64 %idxprom.i, i64 1, !dbg !899
  %29 = load float* %arrayidx2.i62.i, align 4, !dbg !899, !tbaa !708
  %arrayidx3.i63.i = getelementptr inbounds [3 x float]* %xp, i64 %idxprom3.i, i64 1, !dbg !899
  %30 = load float* %arrayidx3.i63.i, align 4, !dbg !899, !tbaa !708
  %sub4.i64.i = fsub float %29, %30, !dbg !899
  tail call void @llvm.dbg.value(metadata !{float %sub4.i64.i}, i64 0, metadata !900) #4, !dbg !899
  %arrayidx5.i65.i = getelementptr inbounds [3 x float]* %xp, i64 %idxprom.i, i64 2, !dbg !901
  %31 = load float* %arrayidx5.i65.i, align 4, !dbg !901, !tbaa !708
  %arrayidx6.i66.i = getelementptr inbounds [3 x float]* %xp, i64 %idxprom3.i, i64 2, !dbg !901
  %32 = load float* %arrayidx6.i66.i, align 4, !dbg !901, !tbaa !708
  %sub7.i67.i = fsub float %31, %32, !dbg !901
  tail call void @llvm.dbg.value(metadata !{float %sub7.i67.i}, i64 0, metadata !902) #4, !dbg !901
  tail call void @llvm.dbg.value(metadata !878, i64 0, metadata !903) #4, !dbg !905
  %mul.i.i = fmul float %sub.i61.i, %sub.i61.i, !dbg !906
  %mul4.i.i = fmul float %sub4.i64.i, %sub4.i64.i, !dbg !906
  %add.i.i = fadd float %mul.i.i, %mul4.i.i, !dbg !906
  %mul7.i.i = fmul float %sub7.i67.i, %sub7.i67.i, !dbg !906
  %add8.i.i = fadd float %add.i.i, %mul7.i.i, !dbg !906
  %conv9.i.i = tail call float @sqrtf(float %add8.i.i) #3, !dbg !906
  tail call void @llvm.dbg.value(metadata !{float %conv9.i.i}, i64 0, metadata !907) #4, !dbg !904
  br i1 %tobool.i, label %if.then19.i, label %for.inc.i, !dbg !908

if.then19.i:                                      ; preds = %for.body.i
  %add.i = add nsw i32 %19, 1, !dbg !909
  %arrayidx21.i = getelementptr inbounds float* %invmass, i64 %idxprom.i, !dbg !909
  %33 = load float* %arrayidx21.i, align 4, !dbg !909, !tbaa !708
  %conv.i = fpext float %33 to double, !dbg !909
  %div.i = fdiv double 1.000000e+00, %conv.i, !dbg !909
  %add22.i = add nsw i32 %20, 1, !dbg !909
  %arrayidx24.i = getelementptr inbounds float* %invmass, i64 %idxprom3.i, !dbg !909
  %34 = load float* %arrayidx24.i, align 4, !dbg !909, !tbaa !708
  %conv25.i = fpext float %34 to double, !dbg !909
  %div26.i = fdiv double 1.000000e+00, %conv25.i, !dbg !909
  %conv27.i = fpext float %conv9.i60.i to double, !dbg !909
  %conv28.i = fpext float %conv9.i.i to double, !dbg !909
  %35 = load i32* %ia.075.i, align 4, !dbg !909, !tbaa !714
  %idxprom30.i = sext i32 %35 to i64, !dbg !909
  %dA.i = getelementptr inbounds %union.t_iparams* %17, i64 %idxprom30.i, i32 0, i32 0, !dbg !909
  %36 = load float* %dA.i, align 4, !dbg !909, !tbaa !708
  %conv32.i = fpext float %36 to double, !dbg !909
  %call33.i = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %log, i8* getelementptr inbounds ([48 x i8]* @.str11, i64 0, i64 0), i32 %add.i, double %div.i, i32 %add22.i, double %div26.i, double %conv27.i, double %conv28.i, double %conv32.i) #6, !dbg !909
  br label %for.inc.i, !dbg !909

for.inc.i:                                        ; preds = %if.then19.i, %for.body.i
  %inc.i = add nsw i32 %i.074.i, 1, !dbg !867
  tail call void @llvm.dbg.value(metadata !{i32 %inc.i}, i64 0, metadata !910) #4, !dbg !867
  %add.ptr.i = getelementptr inbounds i32* %ia.075.i, i64 3, !dbg !867
  tail call void @llvm.dbg.value(metadata !{i32* %add.ptr.i}, i64 0, metadata !911) #4, !dbg !867
  %exitcond.i = icmp eq i32 %inc.i, %div18, !dbg !867
  br i1 %exitcond.i, label %return, label %for.body.i, !dbg !867

if.end28:                                         ; preds = %for.body13
  %mul = mul nsw i32 %call20, %div18, !dbg !912
  %add29 = add nsw i32 %mul, %tnit.0146, !dbg !912
  tail call void @llvm.dbg.value(metadata !{i32 %add29}, i64 0, metadata !637), !dbg !912
  %add30 = add nsw i32 %div18, %trij.0147, !dbg !913
  tail call void @llvm.dbg.value(metadata !{i32 %add30}, i64 0, metadata !638), !dbg !913
  tail call void @llvm.dbg.value(metadata !{i32* %add.ptr}, i64 0, metadata !628), !dbg !914
  tail call void @llvm.dbg.value(metadata !{float* %add.ptr33}, i64 0, metadata !629), !dbg !915
  %37 = trunc i64 %indvars.iv155 to i32, !dbg !842
  %cmp12 = icmp slt i32 %37, %nblocks, !dbg !842
  br i1 %cmp12, label %if.end28.for.body13_crit_edge, label %for.cond11.for.end35_crit_edge, !dbg !842

if.end28.for.body13_crit_edge:                    ; preds = %if.end28
  %mul31 = mul nsw i32 %div18, 3, !dbg !914
  %idx.ext32 = sext i32 %div18 to i64, !dbg !915
  %idx.ext = sext i32 %mul31 to i64, !dbg !914
  %add.ptr33 = getelementptr inbounds float* %lam.0144, i64 %idx.ext32, !dbg !915
  %add.ptr = getelementptr inbounds i32* %iatoms.0145, i64 %idx.ext, !dbg !914
  %.pre159 = load i32* %arrayidx15, align 4, !dbg !847, !tbaa !714
  %phitmp160 = add i64 %indvars.iv155, 1, !dbg !842
  br label %for.body13, !dbg !842

for.cond11.for.end35_crit_edge:                   ; preds = %if.end28
  %phitmp = sitofp i32 %add30 to double, !dbg !842
  br label %for.end35, !dbg !842

for.end35:                                        ; preds = %for.end.for.end35_crit_edge, %for.cond11.for.end35_crit_edge
  %efep36.pre-phi = phi i32* [ %efep36.pre, %for.end.for.end35_crit_edge ], [ %efep, %for.cond11.for.end35_crit_edge ], !dbg !844
  %trij.0.lcssa = phi double [ 0.000000e+00, %for.end.for.end35_crit_edge ], [ %phitmp, %for.cond11.for.end35_crit_edge ]
  %tnit.0.lcssa = phi i32 [ 0, %for.end.for.end35_crit_edge ], [ %add29, %for.cond11.for.end35_crit_edge ]
  %38 = load i32* %efep36.pre-phi, align 4, !dbg !844, !tbaa !714
  %cmp37 = icmp eq i32 %38, 0, !dbg !844
  br i1 %cmp37, label %if.end69, label %if.then39, !dbg !844

if.then39:                                        ; preds = %for.end35
  %delta_t = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 15, !dbg !916
  %39 = load float* %delta_t, align 4, !dbg !916, !tbaa !708
  tail call void @llvm.dbg.value(metadata !{float %39}, i64 0, metadata !918), !dbg !919
  %mul.i = fmul float %39, %39, !dbg !920
  %div41 = fdiv float 1.000000e+00, %mul.i, !dbg !916
  tail call void @llvm.dbg.value(metadata !{float %div41}, i64 0, metadata !630), !dbg !916
  tail call void @llvm.dbg.value(metadata !921, i64 0, metadata !631), !dbg !922
  tail call void @llvm.dbg.value(metadata !191, i64 0, metadata !632), !dbg !923
  br i1 %cmp150, label %for.body45.lr.ph, label %for.end67, !dbg !923

for.body45.lr.ph:                                 ; preds = %if.then39
  %40 = load i32** %iatoms9, align 8, !dbg !925, !tbaa !781
  %41 = load float** @bshakef.lagr, align 8, !dbg !927, !tbaa !781
  %iparams56 = getelementptr inbounds %struct.t_idef* %idef, i64 0, i32 4, !dbg !927
  %42 = load %union.t_iparams** %iparams56, align 8, !dbg !927, !tbaa !781
  br label %for.body45, !dbg !923

for.body45:                                       ; preds = %for.body45.lr.ph, %for.body45
  %indvars.iv = phi i64 [ 0, %for.body45.lr.ph ], [ %indvars.iv.next, %for.body45 ]
  %dvdl.0137 = phi float [ 0.000000e+00, %for.body45.lr.ph ], [ %add64, %for.body45 ]
  %sext = mul i64 %indvars.iv, 12884901888, !dbg !925
  %idxprom47 = ashr exact i64 %sext, 32, !dbg !925
  %arrayidx51 = getelementptr inbounds i32* %40, i64 %idxprom47, !dbg !925
  %43 = load i32* %arrayidx51, align 4, !dbg !925, !tbaa !714
  tail call void @llvm.dbg.value(metadata !{i32 %43}, i64 0, metadata !636), !dbg !925
  %arrayidx53 = getelementptr inbounds float* %41, i64 %indvars.iv, !dbg !927
  %44 = load float* %arrayidx53, align 4, !dbg !927, !tbaa !708
  %mul54 = fmul float %div41, %44, !dbg !927
  %idxprom55 = sext i32 %43 to i64, !dbg !927
  %45 = getelementptr inbounds %union.t_iparams* %42, i64 %idxprom55, i32 0, i32 1, !dbg !927
  %46 = load float* %45, align 4, !dbg !927, !tbaa !708
  %dA = getelementptr inbounds %union.t_iparams* %42, i64 %idxprom55, i32 0, i32 0, !dbg !927
  %47 = load float* %dA, align 4, !dbg !927, !tbaa !708
  %sub62 = fsub float %46, %47, !dbg !927
  %mul63 = fmul float %mul54, %sub62, !dbg !927
  %add64 = fadd float %dvdl.0137, %mul63, !dbg !927
  tail call void @llvm.dbg.value(metadata !{float %add64}, i64 0, metadata !631), !dbg !927
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !923
  %48 = trunc i64 %indvars.iv.next to i32, !dbg !923
  %cmp43 = icmp slt i32 %48, %div, !dbg !923
  br i1 %cmp43, label %for.body45, label %for.end67, !dbg !923

for.end67:                                        ; preds = %for.body45, %if.then39
  %dvdl.0.lcssa = phi float [ 0.000000e+00, %if.then39 ], [ %add64, %for.body45 ]
  %49 = load float* %dvdlambda, align 4, !dbg !928, !tbaa !708
  %add68 = fadd float %dvdl.0.lcssa, %49, !dbg !928
  store float %add68, float* %dvdlambda, align 4, !dbg !928, !tbaa !708
  br label %if.end69, !dbg !929

if.end69:                                         ; preds = %for.end35, %for.end67
  %bShakeSOR70 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 67, !dbg !930
  %50 = load i32* %bShakeSOR70, align 4, !dbg !930, !tbaa !714
  %tobool71 = icmp eq i32 %50, 0, !dbg !930
  br i1 %tobool71, label %if.end81, label %if.then72, !dbg !930

if.then72:                                        ; preds = %if.end69
  %51 = load i32* @bshakef.gamma, align 4, !dbg !931, !tbaa !714
  %cmp73 = icmp sgt i32 %tnit.0.lcssa, %51, !dbg !931
  %52 = load float* @bshakef.delta, align 4, !dbg !933, !tbaa !708
  br i1 %cmp73, label %if.then75, label %if.end79, !dbg !931

if.then75:                                        ; preds = %if.then72
  %conv78 = fmul float %52, -5.000000e-01, !dbg !933
  store float %conv78, float* @bshakef.delta, align 4, !dbg !933, !tbaa !708
  br label %if.end79, !dbg !935

if.end79:                                         ; preds = %if.then72, %if.then75
  %53 = phi float [ %conv78, %if.then75 ], [ %52, %if.then72 ]
  %54 = load float* @bshakef.omega, align 4, !dbg !936, !tbaa !708
  %add80 = fadd float %54, %53, !dbg !936
  store float %add80, float* @bshakef.omega, align 4, !dbg !936, !tbaa !708
  store i32 %tnit.0.lcssa, i32* @bshakef.gamma, align 4, !dbg !937, !tbaa !714
  br label %if.end81, !dbg !938

if.end81:                                         ; preds = %if.end69, %if.end79
  %conv82 = sitofp i32 %tnit.0.lcssa to double, !dbg !939
  %arrayidx83 = getelementptr inbounds %struct.t_nrnb* %nrnb, i64 0, i32 0, i64 115, !dbg !939
  %55 = load double* %arrayidx83, align 8, !dbg !939, !tbaa !940
  %add84 = fadd double %conv82, %55, !dbg !939
  store double %add84, double* %arrayidx83, align 8, !dbg !939, !tbaa !940
  %arrayidx87 = getelementptr inbounds %struct.t_nrnb* %nrnb, i64 0, i32 0, i64 117, !dbg !941
  %56 = load double* %arrayidx87, align 8, !dbg !941, !tbaa !940
  %add88 = fadd double %trij.0.lcssa, %56, !dbg !941
  store double %add88, double* %arrayidx87, align 8, !dbg !941, !tbaa !940
  br label %return, !dbg !942

return:                                           ; preds = %for.inc.i, %for.cond.preheader.i, %if.then23, %if.end81
  %retval.0 = phi i32 [ 1, %if.end81 ], [ 0, %if.then23 ], [ 0, %for.cond.preheader.i ], [ 0, %for.inc.i ]
  ret i32 %retval.0, !dbg !942
}

; Function Attrs: optsize
declare void @please_cite(%struct._IO_FILE*, i8*) #2

; Function Attrs: optsize
declare i8* @save_calloc(i8*, i8*, i32, i32, i32) #2

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #1

declare float @fabsf(float)

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #4

; Function Attrs: nounwind optsize
declare float @sqrtf(float) #3

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #4

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind optsize readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind optsize }
attributes #7 = { optsize }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !191, metadata !192, metadata !680, metadata !191, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/shakef.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/435.gromacs/src/shakef.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{metadata !3, metadata !51, metadata !57}
!3 = metadata !{i32 786436, metadata !4, null, metadata !"", i32 49, i64 32, i64 32, i32 0, i32 0, null, metadata !5, i32 0, i32 0} ; [ DW_TAG_enumeration_type ] [line 49, size 32, align 32, offset 0] [from ]
!4 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/435.gromacs/src/types/idef.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!5 = metadata !{metadata !6, metadata !7, metadata !8, metadata !9, metadata !10, metadata !11, metadata !12, metadata !13, metadata !14, metadata !15, metadata !16, metadata !17, metadata !18, metadata !19, metadata !20, metadata !21, metadata !22, metadata !23, metadata !24, metadata !25, metadata !26, metadata !27, metadata !28, metadata !29, metadata !30, metadata !31, metadata !32, metadata !33, metadata !34, metadata !35, metadata !36, metadata !37, metadata !38, metadata !39, metadata !40, metadata !41, metadata !42, metadata !43, metadata !44, metadata !45, metadata !46, metadata !47, metadata !48, metadata !49, metadata !50}
!6 = metadata !{i32 786472, metadata !"F_BONDS", i64 0} ; [ DW_TAG_enumerator ] [F_BONDS :: 0]
!7 = metadata !{i32 786472, metadata !"F_G96BONDS", i64 1} ; [ DW_TAG_enumerator ] [F_G96BONDS :: 1]
!8 = metadata !{i32 786472, metadata !"F_MORSE", i64 2} ; [ DW_TAG_enumerator ] [F_MORSE :: 2]
!9 = metadata !{i32 786472, metadata !"F_CUBICBONDS", i64 3} ; [ DW_TAG_enumerator ] [F_CUBICBONDS :: 3]
!10 = metadata !{i32 786472, metadata !"F_CONNBONDS", i64 4} ; [ DW_TAG_enumerator ] [F_CONNBONDS :: 4]
!11 = metadata !{i32 786472, metadata !"F_HARMONIC", i64 5} ; [ DW_TAG_enumerator ] [F_HARMONIC :: 5]
!12 = metadata !{i32 786472, metadata !"F_ANGLES", i64 6} ; [ DW_TAG_enumerator ] [F_ANGLES :: 6]
!13 = metadata !{i32 786472, metadata !"F_G96ANGLES", i64 7} ; [ DW_TAG_enumerator ] [F_G96ANGLES :: 7]
!14 = metadata !{i32 786472, metadata !"F_PDIHS", i64 8} ; [ DW_TAG_enumerator ] [F_PDIHS :: 8]
!15 = metadata !{i32 786472, metadata !"F_RBDIHS", i64 9} ; [ DW_TAG_enumerator ] [F_RBDIHS :: 9]
!16 = metadata !{i32 786472, metadata !"F_IDIHS", i64 10} ; [ DW_TAG_enumerator ] [F_IDIHS :: 10]
!17 = metadata !{i32 786472, metadata !"F_LJ14", i64 11} ; [ DW_TAG_enumerator ] [F_LJ14 :: 11]
!18 = metadata !{i32 786472, metadata !"F_COUL14", i64 12} ; [ DW_TAG_enumerator ] [F_COUL14 :: 12]
!19 = metadata !{i32 786472, metadata !"F_LJ", i64 13} ; [ DW_TAG_enumerator ] [F_LJ :: 13]
!20 = metadata !{i32 786472, metadata !"F_BHAM", i64 14} ; [ DW_TAG_enumerator ] [F_BHAM :: 14]
!21 = metadata !{i32 786472, metadata !"F_LJLR", i64 15} ; [ DW_TAG_enumerator ] [F_LJLR :: 15]
!22 = metadata !{i32 786472, metadata !"F_DISPCORR", i64 16} ; [ DW_TAG_enumerator ] [F_DISPCORR :: 16]
!23 = metadata !{i32 786472, metadata !"F_SR", i64 17} ; [ DW_TAG_enumerator ] [F_SR :: 17]
!24 = metadata !{i32 786472, metadata !"F_LR", i64 18} ; [ DW_TAG_enumerator ] [F_LR :: 18]
!25 = metadata !{i32 786472, metadata !"F_WPOL", i64 19} ; [ DW_TAG_enumerator ] [F_WPOL :: 19]
!26 = metadata !{i32 786472, metadata !"F_POSRES", i64 20} ; [ DW_TAG_enumerator ] [F_POSRES :: 20]
!27 = metadata !{i32 786472, metadata !"F_DISRES", i64 21} ; [ DW_TAG_enumerator ] [F_DISRES :: 21]
!28 = metadata !{i32 786472, metadata !"F_DISRESVIOL", i64 22} ; [ DW_TAG_enumerator ] [F_DISRESVIOL :: 22]
!29 = metadata !{i32 786472, metadata !"F_ORIRES", i64 23} ; [ DW_TAG_enumerator ] [F_ORIRES :: 23]
!30 = metadata !{i32 786472, metadata !"F_ORIRESDEV", i64 24} ; [ DW_TAG_enumerator ] [F_ORIRESDEV :: 24]
!31 = metadata !{i32 786472, metadata !"F_ANGRES", i64 25} ; [ DW_TAG_enumerator ] [F_ANGRES :: 25]
!32 = metadata !{i32 786472, metadata !"F_ANGRESZ", i64 26} ; [ DW_TAG_enumerator ] [F_ANGRESZ :: 26]
!33 = metadata !{i32 786472, metadata !"F_SHAKE", i64 27} ; [ DW_TAG_enumerator ] [F_SHAKE :: 27]
!34 = metadata !{i32 786472, metadata !"F_SHAKENC", i64 28} ; [ DW_TAG_enumerator ] [F_SHAKENC :: 28]
!35 = metadata !{i32 786472, metadata !"F_SETTLE", i64 29} ; [ DW_TAG_enumerator ] [F_SETTLE :: 29]
!36 = metadata !{i32 786472, metadata !"F_DUMMY2", i64 30} ; [ DW_TAG_enumerator ] [F_DUMMY2 :: 30]
!37 = metadata !{i32 786472, metadata !"F_DUMMY3", i64 31} ; [ DW_TAG_enumerator ] [F_DUMMY3 :: 31]
!38 = metadata !{i32 786472, metadata !"F_DUMMY3FD", i64 32} ; [ DW_TAG_enumerator ] [F_DUMMY3FD :: 32]
!39 = metadata !{i32 786472, metadata !"F_DUMMY3FAD", i64 33} ; [ DW_TAG_enumerator ] [F_DUMMY3FAD :: 33]
!40 = metadata !{i32 786472, metadata !"F_DUMMY3OUT", i64 34} ; [ DW_TAG_enumerator ] [F_DUMMY3OUT :: 34]
!41 = metadata !{i32 786472, metadata !"F_DUMMY4FD", i64 35} ; [ DW_TAG_enumerator ] [F_DUMMY4FD :: 35]
!42 = metadata !{i32 786472, metadata !"F_EQM", i64 36} ; [ DW_TAG_enumerator ] [F_EQM :: 36]
!43 = metadata !{i32 786472, metadata !"F_EPOT", i64 37} ; [ DW_TAG_enumerator ] [F_EPOT :: 37]
!44 = metadata !{i32 786472, metadata !"F_EKIN", i64 38} ; [ DW_TAG_enumerator ] [F_EKIN :: 38]
!45 = metadata !{i32 786472, metadata !"F_ETOT", i64 39} ; [ DW_TAG_enumerator ] [F_ETOT :: 39]
!46 = metadata !{i32 786472, metadata !"F_TEMP", i64 40} ; [ DW_TAG_enumerator ] [F_TEMP :: 40]
!47 = metadata !{i32 786472, metadata !"F_PRES", i64 41} ; [ DW_TAG_enumerator ] [F_PRES :: 41]
!48 = metadata !{i32 786472, metadata !"F_DVDL", i64 42} ; [ DW_TAG_enumerator ] [F_DVDL :: 42]
!49 = metadata !{i32 786472, metadata !"F_DVDLKIN", i64 43} ; [ DW_TAG_enumerator ] [F_DVDLKIN :: 43]
!50 = metadata !{i32 786472, metadata !"F_NRE", i64 44} ; [ DW_TAG_enumerator ] [F_NRE :: 44]
!51 = metadata !{i32 786436, metadata !52, null, metadata !"", i32 106, i64 32, i64 32, i32 0, i32 0, null, metadata !53, i32 0, i32 0} ; [ DW_TAG_enumeration_type ] [line 106, size 32, align 32, offset 0] [from ]
!52 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/435.gromacs/src/types/enums.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!53 = metadata !{metadata !54, metadata !55, metadata !56}
!54 = metadata !{i32 786472, metadata !"efepNO", i64 0} ; [ DW_TAG_enumerator ] [efepNO :: 0]
!55 = metadata !{i32 786472, metadata !"efepYES", i64 1} ; [ DW_TAG_enumerator ] [efepYES :: 1]
!56 = metadata !{i32 786472, metadata !"efepNR", i64 2} ; [ DW_TAG_enumerator ] [efepNR :: 2]
!57 = metadata !{i32 786436, metadata !58, null, metadata !"", i32 51, i64 32, i64 32, i32 0, i32 0, null, metadata !59, i32 0, i32 0} ; [ DW_TAG_enumeration_type ] [line 51, size 32, align 32, offset 0] [from ]
!58 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/435.gromacs/src/types/nrnb.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!59 = metadata !{metadata !60, metadata !61, metadata !62, metadata !63, metadata !64, metadata !65, metadata !66, metadata !67, metadata !68, metadata !69, metadata !70, metadata !71, metadata !72, metadata !73, metadata !74, metadata !75, metadata !76, metadata !77, metadata !78, metadata !79, metadata !80, metadata !81, metadata !82, metadata !83, metadata !84, metadata !85, metadata !86, metadata !87, metadata !88, metadata !89, metadata !90, metadata !91, metadata !92, metadata !93, metadata !94, metadata !95, metadata !96, metadata !97, metadata !98, metadata !99, metadata !100, metadata !101, metadata !102, metadata !103, metadata !104, metadata !105, metadata !106, metadata !107, metadata !108, metadata !109, metadata !110, metadata !111, metadata !112, metadata !113, metadata !114, metadata !115, metadata !116, metadata !117, metadata !118, metadata !119, metadata !120, metadata !121, metadata !122, metadata !123, metadata !124, metadata !125, metadata !126, metadata !127, metadata !128, metadata !129, metadata !130, metadata !131, metadata !132, metadata !133, metadata !134, metadata !135, metadata !136, metadata !137, metadata !138, metadata !139, metadata !140, metadata !141, metadata !142, metadata !143, metadata !144, metadata !145, metadata !146, metadata !147, metadata !148, metadata !149, metadata !150, metadata !151, metadata !152, metadata !153, metadata !154, metadata !155, metadata !156, metadata !157, metadata !158, metadata !159, metadata !160, metadata !161, metadata !162, metadata !163, metadata !164, metadata !165, metadata !166, metadata !167, metadata !168, metadata !169, metadata !170, metadata !171, metadata !172, metadata !173, metadata !174, metadata !175, metadata !176, metadata !177, metadata !178, metadata !179, metadata !180, metadata !181, metadata !182, metadata !183, metadata !184, metadata !185, metadata !186, metadata !187, metadata !188, metadata !189, metadata !190}
!60 = metadata !{i32 786472, metadata !"eNR_INL0100", i64 0} ; [ DW_TAG_enumerator ] [eNR_INL0100 :: 0]
!61 = metadata !{i32 786472, metadata !"eNR_INL0110", i64 1} ; [ DW_TAG_enumerator ] [eNR_INL0110 :: 1]
!62 = metadata !{i32 786472, metadata !"eNR_INL0200", i64 2} ; [ DW_TAG_enumerator ] [eNR_INL0200 :: 2]
!63 = metadata !{i32 786472, metadata !"eNR_INL0210", i64 3} ; [ DW_TAG_enumerator ] [eNR_INL0210 :: 3]
!64 = metadata !{i32 786472, metadata !"eNR_INL0300", i64 4} ; [ DW_TAG_enumerator ] [eNR_INL0300 :: 4]
!65 = metadata !{i32 786472, metadata !"eNR_INL0310", i64 5} ; [ DW_TAG_enumerator ] [eNR_INL0310 :: 5]
!66 = metadata !{i32 786472, metadata !"eNR_INL0301", i64 6} ; [ DW_TAG_enumerator ] [eNR_INL0301 :: 6]
!67 = metadata !{i32 786472, metadata !"eNR_INL0302", i64 7} ; [ DW_TAG_enumerator ] [eNR_INL0302 :: 7]
!68 = metadata !{i32 786472, metadata !"eNR_INL0400", i64 8} ; [ DW_TAG_enumerator ] [eNR_INL0400 :: 8]
!69 = metadata !{i32 786472, metadata !"eNR_INL0410", i64 9} ; [ DW_TAG_enumerator ] [eNR_INL0410 :: 9]
!70 = metadata !{i32 786472, metadata !"eNR_INL0401", i64 10} ; [ DW_TAG_enumerator ] [eNR_INL0401 :: 10]
!71 = metadata !{i32 786472, metadata !"eNR_INL0402", i64 11} ; [ DW_TAG_enumerator ] [eNR_INL0402 :: 11]
!72 = metadata !{i32 786472, metadata !"eNR_INL1000", i64 12} ; [ DW_TAG_enumerator ] [eNR_INL1000 :: 12]
!73 = metadata !{i32 786472, metadata !"eNR_INL1010", i64 13} ; [ DW_TAG_enumerator ] [eNR_INL1010 :: 13]
!74 = metadata !{i32 786472, metadata !"eNR_INL1020", i64 14} ; [ DW_TAG_enumerator ] [eNR_INL1020 :: 14]
!75 = metadata !{i32 786472, metadata !"eNR_INL1030", i64 15} ; [ DW_TAG_enumerator ] [eNR_INL1030 :: 15]
!76 = metadata !{i32 786472, metadata !"eNR_INL1100", i64 16} ; [ DW_TAG_enumerator ] [eNR_INL1100 :: 16]
!77 = metadata !{i32 786472, metadata !"eNR_INL1110", i64 17} ; [ DW_TAG_enumerator ] [eNR_INL1110 :: 17]
!78 = metadata !{i32 786472, metadata !"eNR_INL1120", i64 18} ; [ DW_TAG_enumerator ] [eNR_INL1120 :: 18]
!79 = metadata !{i32 786472, metadata !"eNR_INL1130", i64 19} ; [ DW_TAG_enumerator ] [eNR_INL1130 :: 19]
!80 = metadata !{i32 786472, metadata !"eNR_INL1200", i64 20} ; [ DW_TAG_enumerator ] [eNR_INL1200 :: 20]
!81 = metadata !{i32 786472, metadata !"eNR_INL1210", i64 21} ; [ DW_TAG_enumerator ] [eNR_INL1210 :: 21]
!82 = metadata !{i32 786472, metadata !"eNR_INL1220", i64 22} ; [ DW_TAG_enumerator ] [eNR_INL1220 :: 22]
!83 = metadata !{i32 786472, metadata !"eNR_INL1230", i64 23} ; [ DW_TAG_enumerator ] [eNR_INL1230 :: 23]
!84 = metadata !{i32 786472, metadata !"eNR_INL1300", i64 24} ; [ DW_TAG_enumerator ] [eNR_INL1300 :: 24]
!85 = metadata !{i32 786472, metadata !"eNR_INL1310", i64 25} ; [ DW_TAG_enumerator ] [eNR_INL1310 :: 25]
!86 = metadata !{i32 786472, metadata !"eNR_INL1320", i64 26} ; [ DW_TAG_enumerator ] [eNR_INL1320 :: 26]
!87 = metadata !{i32 786472, metadata !"eNR_INL1330", i64 27} ; [ DW_TAG_enumerator ] [eNR_INL1330 :: 27]
!88 = metadata !{i32 786472, metadata !"eNR_INL1400", i64 28} ; [ DW_TAG_enumerator ] [eNR_INL1400 :: 28]
!89 = metadata !{i32 786472, metadata !"eNR_INL1410", i64 29} ; [ DW_TAG_enumerator ] [eNR_INL1410 :: 29]
!90 = metadata !{i32 786472, metadata !"eNR_INL1420", i64 30} ; [ DW_TAG_enumerator ] [eNR_INL1420 :: 30]
!91 = metadata !{i32 786472, metadata !"eNR_INL1430", i64 31} ; [ DW_TAG_enumerator ] [eNR_INL1430 :: 31]
!92 = metadata !{i32 786472, metadata !"eNR_INL2000", i64 32} ; [ DW_TAG_enumerator ] [eNR_INL2000 :: 32]
!93 = metadata !{i32 786472, metadata !"eNR_INL2010", i64 33} ; [ DW_TAG_enumerator ] [eNR_INL2010 :: 33]
!94 = metadata !{i32 786472, metadata !"eNR_INL2020", i64 34} ; [ DW_TAG_enumerator ] [eNR_INL2020 :: 34]
!95 = metadata !{i32 786472, metadata !"eNR_INL2030", i64 35} ; [ DW_TAG_enumerator ] [eNR_INL2030 :: 35]
!96 = metadata !{i32 786472, metadata !"eNR_INL2100", i64 36} ; [ DW_TAG_enumerator ] [eNR_INL2100 :: 36]
!97 = metadata !{i32 786472, metadata !"eNR_INL2110", i64 37} ; [ DW_TAG_enumerator ] [eNR_INL2110 :: 37]
!98 = metadata !{i32 786472, metadata !"eNR_INL2120", i64 38} ; [ DW_TAG_enumerator ] [eNR_INL2120 :: 38]
!99 = metadata !{i32 786472, metadata !"eNR_INL2130", i64 39} ; [ DW_TAG_enumerator ] [eNR_INL2130 :: 39]
!100 = metadata !{i32 786472, metadata !"eNR_INL2200", i64 40} ; [ DW_TAG_enumerator ] [eNR_INL2200 :: 40]
!101 = metadata !{i32 786472, metadata !"eNR_INL2210", i64 41} ; [ DW_TAG_enumerator ] [eNR_INL2210 :: 41]
!102 = metadata !{i32 786472, metadata !"eNR_INL2220", i64 42} ; [ DW_TAG_enumerator ] [eNR_INL2220 :: 42]
!103 = metadata !{i32 786472, metadata !"eNR_INL2230", i64 43} ; [ DW_TAG_enumerator ] [eNR_INL2230 :: 43]
!104 = metadata !{i32 786472, metadata !"eNR_INL2300", i64 44} ; [ DW_TAG_enumerator ] [eNR_INL2300 :: 44]
!105 = metadata !{i32 786472, metadata !"eNR_INL2310", i64 45} ; [ DW_TAG_enumerator ] [eNR_INL2310 :: 45]
!106 = metadata !{i32 786472, metadata !"eNR_INL2320", i64 46} ; [ DW_TAG_enumerator ] [eNR_INL2320 :: 46]
!107 = metadata !{i32 786472, metadata !"eNR_INL2330", i64 47} ; [ DW_TAG_enumerator ] [eNR_INL2330 :: 47]
!108 = metadata !{i32 786472, metadata !"eNR_INL2400", i64 48} ; [ DW_TAG_enumerator ] [eNR_INL2400 :: 48]
!109 = metadata !{i32 786472, metadata !"eNR_INL2410", i64 49} ; [ DW_TAG_enumerator ] [eNR_INL2410 :: 49]
!110 = metadata !{i32 786472, metadata !"eNR_INL2420", i64 50} ; [ DW_TAG_enumerator ] [eNR_INL2420 :: 50]
!111 = metadata !{i32 786472, metadata !"eNR_INL2430", i64 51} ; [ DW_TAG_enumerator ] [eNR_INL2430 :: 51]
!112 = metadata !{i32 786472, metadata !"eNR_INL3000", i64 52} ; [ DW_TAG_enumerator ] [eNR_INL3000 :: 52]
!113 = metadata !{i32 786472, metadata !"eNR_INL3001", i64 53} ; [ DW_TAG_enumerator ] [eNR_INL3001 :: 53]
!114 = metadata !{i32 786472, metadata !"eNR_INL3002", i64 54} ; [ DW_TAG_enumerator ] [eNR_INL3002 :: 54]
!115 = metadata !{i32 786472, metadata !"eNR_INL3010", i64 55} ; [ DW_TAG_enumerator ] [eNR_INL3010 :: 55]
!116 = metadata !{i32 786472, metadata !"eNR_INL3020", i64 56} ; [ DW_TAG_enumerator ] [eNR_INL3020 :: 56]
!117 = metadata !{i32 786472, metadata !"eNR_INL3030", i64 57} ; [ DW_TAG_enumerator ] [eNR_INL3030 :: 57]
!118 = metadata !{i32 786472, metadata !"eNR_INL3100", i64 58} ; [ DW_TAG_enumerator ] [eNR_INL3100 :: 58]
!119 = metadata !{i32 786472, metadata !"eNR_INL3110", i64 59} ; [ DW_TAG_enumerator ] [eNR_INL3110 :: 59]
!120 = metadata !{i32 786472, metadata !"eNR_INL3120", i64 60} ; [ DW_TAG_enumerator ] [eNR_INL3120 :: 60]
!121 = metadata !{i32 786472, metadata !"eNR_INL3130", i64 61} ; [ DW_TAG_enumerator ] [eNR_INL3130 :: 61]
!122 = metadata !{i32 786472, metadata !"eNR_INL3200", i64 62} ; [ DW_TAG_enumerator ] [eNR_INL3200 :: 62]
!123 = metadata !{i32 786472, metadata !"eNR_INL3210", i64 63} ; [ DW_TAG_enumerator ] [eNR_INL3210 :: 63]
!124 = metadata !{i32 786472, metadata !"eNR_INL3220", i64 64} ; [ DW_TAG_enumerator ] [eNR_INL3220 :: 64]
!125 = metadata !{i32 786472, metadata !"eNR_INL3230", i64 65} ; [ DW_TAG_enumerator ] [eNR_INL3230 :: 65]
!126 = metadata !{i32 786472, metadata !"eNR_INL3300", i64 66} ; [ DW_TAG_enumerator ] [eNR_INL3300 :: 66]
!127 = metadata !{i32 786472, metadata !"eNR_INL3301", i64 67} ; [ DW_TAG_enumerator ] [eNR_INL3301 :: 67]
!128 = metadata !{i32 786472, metadata !"eNR_INL3302", i64 68} ; [ DW_TAG_enumerator ] [eNR_INL3302 :: 68]
!129 = metadata !{i32 786472, metadata !"eNR_INL3310", i64 69} ; [ DW_TAG_enumerator ] [eNR_INL3310 :: 69]
!130 = metadata !{i32 786472, metadata !"eNR_INL3320", i64 70} ; [ DW_TAG_enumerator ] [eNR_INL3320 :: 70]
!131 = metadata !{i32 786472, metadata !"eNR_INL3330", i64 71} ; [ DW_TAG_enumerator ] [eNR_INL3330 :: 71]
!132 = metadata !{i32 786472, metadata !"eNR_INL3400", i64 72} ; [ DW_TAG_enumerator ] [eNR_INL3400 :: 72]
!133 = metadata !{i32 786472, metadata !"eNR_INL3401", i64 73} ; [ DW_TAG_enumerator ] [eNR_INL3401 :: 73]
!134 = metadata !{i32 786472, metadata !"eNR_INL3402", i64 74} ; [ DW_TAG_enumerator ] [eNR_INL3402 :: 74]
!135 = metadata !{i32 786472, metadata !"eNR_INL3410", i64 75} ; [ DW_TAG_enumerator ] [eNR_INL3410 :: 75]
!136 = metadata !{i32 786472, metadata !"eNR_INL3420", i64 76} ; [ DW_TAG_enumerator ] [eNR_INL3420 :: 76]
!137 = metadata !{i32 786472, metadata !"eNR_INL3430", i64 77} ; [ DW_TAG_enumerator ] [eNR_INL3430 :: 77]
!138 = metadata !{i32 786472, metadata !"eNR_INLOOP", i64 78} ; [ DW_TAG_enumerator ] [eNR_INLOOP :: 78]
!139 = metadata !{i32 786472, metadata !"eNR_INL_IATOM", i64 78} ; [ DW_TAG_enumerator ] [eNR_INL_IATOM :: 78]
!140 = metadata !{i32 786472, metadata !"eNR_WEIGHTS", i64 79} ; [ DW_TAG_enumerator ] [eNR_WEIGHTS :: 79]
!141 = metadata !{i32 786472, metadata !"eNR_SPREADQ", i64 80} ; [ DW_TAG_enumerator ] [eNR_SPREADQ :: 80]
!142 = metadata !{i32 786472, metadata !"eNR_SPREADQBSP", i64 81} ; [ DW_TAG_enumerator ] [eNR_SPREADQBSP :: 81]
!143 = metadata !{i32 786472, metadata !"eNR_GATHERF", i64 82} ; [ DW_TAG_enumerator ] [eNR_GATHERF :: 82]
!144 = metadata !{i32 786472, metadata !"eNR_GATHERFBSP", i64 83} ; [ DW_TAG_enumerator ] [eNR_GATHERFBSP :: 83]
!145 = metadata !{i32 786472, metadata !"eNR_FFT", i64 84} ; [ DW_TAG_enumerator ] [eNR_FFT :: 84]
!146 = metadata !{i32 786472, metadata !"eNR_CONV", i64 85} ; [ DW_TAG_enumerator ] [eNR_CONV :: 85]
!147 = metadata !{i32 786472, metadata !"eNR_SOLVEPME", i64 86} ; [ DW_TAG_enumerator ] [eNR_SOLVEPME :: 86]
!148 = metadata !{i32 786472, metadata !"eNR_NS", i64 87} ; [ DW_TAG_enumerator ] [eNR_NS :: 87]
!149 = metadata !{i32 786472, metadata !"eNR_RESETX", i64 88} ; [ DW_TAG_enumerator ] [eNR_RESETX :: 88]
!150 = metadata !{i32 786472, metadata !"eNR_SHIFTX", i64 89} ; [ DW_TAG_enumerator ] [eNR_SHIFTX :: 89]
!151 = metadata !{i32 786472, metadata !"eNR_CGCM", i64 90} ; [ DW_TAG_enumerator ] [eNR_CGCM :: 90]
!152 = metadata !{i32 786472, metadata !"eNR_FSUM", i64 91} ; [ DW_TAG_enumerator ] [eNR_FSUM :: 91]
!153 = metadata !{i32 786472, metadata !"eNR_BONDS", i64 92} ; [ DW_TAG_enumerator ] [eNR_BONDS :: 92]
!154 = metadata !{i32 786472, metadata !"eNR_G96BONDS", i64 93} ; [ DW_TAG_enumerator ] [eNR_G96BONDS :: 93]
!155 = metadata !{i32 786472, metadata !"eNR_ANGLES", i64 94} ; [ DW_TAG_enumerator ] [eNR_ANGLES :: 94]
!156 = metadata !{i32 786472, metadata !"eNR_G96ANGLES", i64 95} ; [ DW_TAG_enumerator ] [eNR_G96ANGLES :: 95]
!157 = metadata !{i32 786472, metadata !"eNR_PROPER", i64 96} ; [ DW_TAG_enumerator ] [eNR_PROPER :: 96]
!158 = metadata !{i32 786472, metadata !"eNR_IMPROPER", i64 97} ; [ DW_TAG_enumerator ] [eNR_IMPROPER :: 97]
!159 = metadata !{i32 786472, metadata !"eNR_RB", i64 98} ; [ DW_TAG_enumerator ] [eNR_RB :: 98]
!160 = metadata !{i32 786472, metadata !"eNR_DISRES", i64 99} ; [ DW_TAG_enumerator ] [eNR_DISRES :: 99]
!161 = metadata !{i32 786472, metadata !"eNR_ORIRES", i64 100} ; [ DW_TAG_enumerator ] [eNR_ORIRES :: 100]
!162 = metadata !{i32 786472, metadata !"eNR_POSRES", i64 101} ; [ DW_TAG_enumerator ] [eNR_POSRES :: 101]
!163 = metadata !{i32 786472, metadata !"eNR_ANGRES", i64 102} ; [ DW_TAG_enumerator ] [eNR_ANGRES :: 102]
!164 = metadata !{i32 786472, metadata !"eNR_ANGRESZ", i64 103} ; [ DW_TAG_enumerator ] [eNR_ANGRESZ :: 103]
!165 = metadata !{i32 786472, metadata !"eNR_MORSE", i64 104} ; [ DW_TAG_enumerator ] [eNR_MORSE :: 104]
!166 = metadata !{i32 786472, metadata !"eNR_CUBICBONDS", i64 105} ; [ DW_TAG_enumerator ] [eNR_CUBICBONDS :: 105]
!167 = metadata !{i32 786472, metadata !"eNR_WPOL", i64 106} ; [ DW_TAG_enumerator ] [eNR_WPOL :: 106]
!168 = metadata !{i32 786472, metadata !"eNR_VIRIAL", i64 107} ; [ DW_TAG_enumerator ] [eNR_VIRIAL :: 107]
!169 = metadata !{i32 786472, metadata !"eNR_UPDATE", i64 108} ; [ DW_TAG_enumerator ] [eNR_UPDATE :: 108]
!170 = metadata !{i32 786472, metadata !"eNR_EXTUPDATE", i64 109} ; [ DW_TAG_enumerator ] [eNR_EXTUPDATE :: 109]
!171 = metadata !{i32 786472, metadata !"eNR_STOPCM", i64 110} ; [ DW_TAG_enumerator ] [eNR_STOPCM :: 110]
!172 = metadata !{i32 786472, metadata !"eNR_PCOUPL", i64 111} ; [ DW_TAG_enumerator ] [eNR_PCOUPL :: 111]
!173 = metadata !{i32 786472, metadata !"eNR_EKIN", i64 112} ; [ DW_TAG_enumerator ] [eNR_EKIN :: 112]
!174 = metadata !{i32 786472, metadata !"eNR_LINCS", i64 113} ; [ DW_TAG_enumerator ] [eNR_LINCS :: 113]
!175 = metadata !{i32 786472, metadata !"eNR_LINCSMAT", i64 114} ; [ DW_TAG_enumerator ] [eNR_LINCSMAT :: 114]
!176 = metadata !{i32 786472, metadata !"eNR_SHAKE", i64 115} ; [ DW_TAG_enumerator ] [eNR_SHAKE :: 115]
!177 = metadata !{i32 786472, metadata !"eNR_SHAKE_V", i64 116} ; [ DW_TAG_enumerator ] [eNR_SHAKE_V :: 116]
!178 = metadata !{i32 786472, metadata !"eNR_SHAKE_RIJ", i64 117} ; [ DW_TAG_enumerator ] [eNR_SHAKE_RIJ :: 117]
!179 = metadata !{i32 786472, metadata !"eNR_SHAKE_VIR", i64 118} ; [ DW_TAG_enumerator ] [eNR_SHAKE_VIR :: 118]
!180 = metadata !{i32 786472, metadata !"eNR_SETTLE", i64 119} ; [ DW_TAG_enumerator ] [eNR_SETTLE :: 119]
!181 = metadata !{i32 786472, metadata !"eNR_PSHAKEINITLD", i64 120} ; [ DW_TAG_enumerator ] [eNR_PSHAKEINITLD :: 120]
!182 = metadata !{i32 786472, metadata !"eNR_PSHAKEINITMD", i64 121} ; [ DW_TAG_enumerator ] [eNR_PSHAKEINITMD :: 121]
!183 = metadata !{i32 786472, metadata !"eNR_PSHAKE", i64 122} ; [ DW_TAG_enumerator ] [eNR_PSHAKE :: 122]
!184 = metadata !{i32 786472, metadata !"eNR_DUM2", i64 123} ; [ DW_TAG_enumerator ] [eNR_DUM2 :: 123]
!185 = metadata !{i32 786472, metadata !"eNR_DUM3", i64 124} ; [ DW_TAG_enumerator ] [eNR_DUM3 :: 124]
!186 = metadata !{i32 786472, metadata !"eNR_DUM3FD", i64 125} ; [ DW_TAG_enumerator ] [eNR_DUM3FD :: 125]
!187 = metadata !{i32 786472, metadata !"eNR_DUM3FAD", i64 126} ; [ DW_TAG_enumerator ] [eNR_DUM3FAD :: 126]
!188 = metadata !{i32 786472, metadata !"eNR_DUM3OUT", i64 127} ; [ DW_TAG_enumerator ] [eNR_DUM3OUT :: 127]
!189 = metadata !{i32 786472, metadata !"eNR_DUM4FD", i64 128} ; [ DW_TAG_enumerator ] [eNR_DUM4FD :: 128]
!190 = metadata !{i32 786472, metadata !"eNRNB", i64 129} ; [ DW_TAG_enumerator ] [eNRNB :: 129]
!191 = metadata !{i32 0}
!192 = metadata !{metadata !193, metadata !258, metadata !462, metadata !639, metadata !657, metadata !664, metadata !675}
!193 = metadata !{i32 786478, metadata !1, metadata !194, metadata !"cshake", metadata !"cshake", metadata !"", i32 59, metadata !195, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i32*, i32, i32*, i32, float*, float*, float*, float*, float, float*, float*, float*, i32*)* @cshake, null, null, metadata !204, i32 62} ; [ DW_TAG_subprogram ] [line 59] [def] [scope 62] [cshake]
!194 = metadata !{i32 786473, metadata !1}        ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/shakef.c]
!195 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !196, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!196 = metadata !{null, metadata !197, metadata !199, metadata !200, metadata !199, metadata !201, metadata !201, metadata !201, metadata !201, metadata !202, metadata !201, metadata !201, metadata !201, metadata !200}
!197 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !198} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from atom_id]
!198 = metadata !{i32 786454, metadata !1, null, metadata !"atom_id", i32 73, i64 0, i64 0, i64 0, i32 0, metadata !199} ; [ DW_TAG_typedef ] [atom_id] [line 73, size 0, align 0, offset 0] [from int]
!199 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!200 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !199} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from int]
!201 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !202} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from real]
!202 = metadata !{i32 786454, metadata !1, null, metadata !"real", i32 87, i64 0, i64 0, i64 0, i32 0, metadata !203} ; [ DW_TAG_typedef ] [real] [line 87, size 0, align 0, offset 0] [from float]
!203 = metadata !{i32 786468, null, null, metadata !"float", i32 0, i64 32, i64 32, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [float] [line 0, size 32, align 32, offset 0, enc DW_ATE_float]
!204 = metadata !{metadata !205, metadata !206, metadata !207, metadata !208, metadata !209, metadata !210, metadata !211, metadata !212, metadata !213, metadata !214, metadata !215, metadata !216, metadata !217, metadata !218, metadata !220, metadata !221, metadata !222, metadata !223, metadata !224, metadata !225, metadata !226, metadata !227, metadata !228, metadata !229, metadata !230, metadata !231, metadata !232, metadata !233, metadata !234, metadata !235, metadata !236, metadata !237, metadata !238, metadata !239, metadata !240, metadata !241, metadata !242, metadata !243, metadata !244, metadata !245, metadata !246, metadata !247, metadata !248, metadata !249, metadata !250, metadata !251, metadata !252, metadata !253, metadata !254, metadata !255, metadata !256, metadata !257}
!205 = metadata !{i32 786689, metadata !193, metadata !"iatom", metadata !194, i32 16777275, metadata !197, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [iatom] [line 59]
!206 = metadata !{i32 786689, metadata !193, metadata !"ncon", metadata !194, i32 33554491, metadata !199, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ncon] [line 59]
!207 = metadata !{i32 786689, metadata !193, metadata !"nnit", metadata !194, i32 50331707, metadata !200, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nnit] [line 59]
!208 = metadata !{i32 786689, metadata !193, metadata !"maxnit", metadata !194, i32 67108923, metadata !199, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [maxnit] [line 59]
!209 = metadata !{i32 786689, metadata !193, metadata !"dist2", metadata !194, i32 83886140, metadata !201, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dist2] [line 60]
!210 = metadata !{i32 786689, metadata !193, metadata !"xp", metadata !194, i32 100663356, metadata !201, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [xp] [line 60]
!211 = metadata !{i32 786689, metadata !193, metadata !"rij", metadata !194, i32 117440572, metadata !201, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [rij] [line 60]
!212 = metadata !{i32 786689, metadata !193, metadata !"m2", metadata !194, i32 134217788, metadata !201, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [m2] [line 60]
!213 = metadata !{i32 786689, metadata !193, metadata !"omega", metadata !194, i32 150995004, metadata !202, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [omega] [line 60]
!214 = metadata !{i32 786689, metadata !193, metadata !"invmass", metadata !194, i32 167772221, metadata !201, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [invmass] [line 61]
!215 = metadata !{i32 786689, metadata !193, metadata !"tt", metadata !194, i32 184549437, metadata !201, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [tt] [line 61]
!216 = metadata !{i32 786689, metadata !193, metadata !"lagr", metadata !194, i32 201326653, metadata !201, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [lagr] [line 61]
!217 = metadata !{i32 786689, metadata !193, metadata !"nerror", metadata !194, i32 218103869, metadata !200, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nerror] [line 61]
!218 = metadata !{i32 786688, metadata !193, metadata !"mytol", metadata !194, i32 69, metadata !219, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [mytol] [line 69]
!219 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !202} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from real]
!220 = metadata !{i32 786688, metadata !193, metadata !"ll", metadata !194, i32 71, metadata !199, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ll] [line 71]
!221 = metadata !{i32 786688, metadata !193, metadata !"i", metadata !194, i32 71, metadata !199, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 71]
!222 = metadata !{i32 786688, metadata !193, metadata !"j", metadata !194, i32 71, metadata !199, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [j] [line 71]
!223 = metadata !{i32 786688, metadata !193, metadata !"i3", metadata !194, i32 71, metadata !199, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i3] [line 71]
!224 = metadata !{i32 786688, metadata !193, metadata !"j3", metadata !194, i32 71, metadata !199, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [j3] [line 71]
!225 = metadata !{i32 786688, metadata !193, metadata !"l3", metadata !194, i32 71, metadata !199, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [l3] [line 71]
!226 = metadata !{i32 786688, metadata !193, metadata !"ix", metadata !194, i32 72, metadata !199, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ix] [line 72]
!227 = metadata !{i32 786688, metadata !193, metadata !"iy", metadata !194, i32 72, metadata !199, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [iy] [line 72]
!228 = metadata !{i32 786688, metadata !193, metadata !"iz", metadata !194, i32 72, metadata !199, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [iz] [line 72]
!229 = metadata !{i32 786688, metadata !193, metadata !"jx", metadata !194, i32 72, metadata !199, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [jx] [line 72]
!230 = metadata !{i32 786688, metadata !193, metadata !"jy", metadata !194, i32 72, metadata !199, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [jy] [line 72]
!231 = metadata !{i32 786688, metadata !193, metadata !"jz", metadata !194, i32 72, metadata !199, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [jz] [line 72]
!232 = metadata !{i32 786688, metadata !193, metadata !"toler", metadata !194, i32 73, metadata !202, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [toler] [line 73]
!233 = metadata !{i32 786688, metadata !193, metadata !"rpij2", metadata !194, i32 73, metadata !202, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rpij2] [line 73]
!234 = metadata !{i32 786688, metadata !193, metadata !"rrpr", metadata !194, i32 73, metadata !202, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rrpr] [line 73]
!235 = metadata !{i32 786688, metadata !193, metadata !"tx", metadata !194, i32 73, metadata !202, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [tx] [line 73]
!236 = metadata !{i32 786688, metadata !193, metadata !"ty", metadata !194, i32 73, metadata !202, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ty] [line 73]
!237 = metadata !{i32 786688, metadata !193, metadata !"tz", metadata !194, i32 73, metadata !202, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [tz] [line 73]
!238 = metadata !{i32 786688, metadata !193, metadata !"diff", metadata !194, i32 73, metadata !202, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [diff] [line 73]
!239 = metadata !{i32 786688, metadata !193, metadata !"acor", metadata !194, i32 73, metadata !202, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [acor] [line 73]
!240 = metadata !{i32 786688, metadata !193, metadata !"im", metadata !194, i32 73, metadata !202, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [im] [line 73]
!241 = metadata !{i32 786688, metadata !193, metadata !"jm", metadata !194, i32 73, metadata !202, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [jm] [line 73]
!242 = metadata !{i32 786688, metadata !193, metadata !"xh", metadata !194, i32 74, metadata !202, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [xh] [line 74]
!243 = metadata !{i32 786688, metadata !193, metadata !"yh", metadata !194, i32 74, metadata !202, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [yh] [line 74]
!244 = metadata !{i32 786688, metadata !193, metadata !"zh", metadata !194, i32 74, metadata !202, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [zh] [line 74]
!245 = metadata !{i32 786688, metadata !193, metadata !"rijx", metadata !194, i32 74, metadata !202, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rijx] [line 74]
!246 = metadata !{i32 786688, metadata !193, metadata !"rijy", metadata !194, i32 74, metadata !202, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rijy] [line 74]
!247 = metadata !{i32 786688, metadata !193, metadata !"rijz", metadata !194, i32 74, metadata !202, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rijz] [line 74]
!248 = metadata !{i32 786688, metadata !193, metadata !"tix", metadata !194, i32 75, metadata !202, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [tix] [line 75]
!249 = metadata !{i32 786688, metadata !193, metadata !"tiy", metadata !194, i32 75, metadata !202, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [tiy] [line 75]
!250 = metadata !{i32 786688, metadata !193, metadata !"tiz", metadata !194, i32 75, metadata !202, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [tiz] [line 75]
!251 = metadata !{i32 786688, metadata !193, metadata !"tjx", metadata !194, i32 76, metadata !202, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [tjx] [line 76]
!252 = metadata !{i32 786688, metadata !193, metadata !"tjy", metadata !194, i32 76, metadata !202, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [tjy] [line 76]
!253 = metadata !{i32 786688, metadata !193, metadata !"tjz", metadata !194, i32 76, metadata !202, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [tjz] [line 76]
!254 = metadata !{i32 786688, metadata !193, metadata !"nit", metadata !194, i32 77, metadata !199, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nit] [line 77]
!255 = metadata !{i32 786688, metadata !193, metadata !"error", metadata !194, i32 77, metadata !199, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [error] [line 77]
!256 = metadata !{i32 786688, metadata !193, metadata !"iconv", metadata !194, i32 77, metadata !199, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [iconv] [line 77]
!257 = metadata !{i32 786688, metadata !193, metadata !"nconv", metadata !194, i32 77, metadata !199, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nconv] [line 77]
!258 = metadata !{i32 786478, metadata !1, metadata !194, metadata !"vec_shakef", metadata !"vec_shakef", metadata !"", i32 152, metadata !259, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct._IO_FILE*, i32, float*, i32, %union.t_iparams*, i32*, float, [3 x float]*, [3 x float]*, float, i32, float, float*)* @vec_shakef, null, null, metadata !436, i32 157} ; [ DW_TAG_subprogram ] [line 152] [def] [scope 157] [vec_shakef]
!259 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !260, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!260 = metadata !{metadata !199, metadata !261, metadata !199, metadata !201, metadata !199, metadata !318, metadata !432, metadata !202, metadata !434, metadata !434, metadata !202, metadata !199, metadata !202, metadata !201}
!261 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !262} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from FILE]
!262 = metadata !{i32 786454, metadata !1, null, metadata !"FILE", i32 48, i64 0, i64 0, i64 0, i32 0, metadata !263} ; [ DW_TAG_typedef ] [FILE] [line 48, size 0, align 0, offset 0] [from _IO_FILE]
!263 = metadata !{i32 786451, metadata !264, null, metadata !"_IO_FILE", i32 245, i64 1728, i64 64, i32 0, i32 0, null, metadata !265, i32 0, null, null} ; [ DW_TAG_structure_type ] [_IO_FILE] [line 245, size 1728, align 64, offset 0] [from ]
!264 = metadata !{metadata !"/usr/include/libio.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!265 = metadata !{metadata !266, metadata !267, metadata !270, metadata !271, metadata !272, metadata !273, metadata !274, metadata !275, metadata !276, metadata !277, metadata !278, metadata !279, metadata !280, metadata !288, metadata !289, metadata !290, metadata !291, metadata !294, metadata !296, metadata !298, metadata !302, metadata !304, metadata !306, metadata !307, metadata !308, metadata !309, metadata !310, metadata !313, metadata !314}
!266 = metadata !{i32 786445, metadata !264, metadata !263, metadata !"_flags", i32 246, i64 32, i64 32, i64 0, i32 0, metadata !199} ; [ DW_TAG_member ] [_flags] [line 246, size 32, align 32, offset 0] [from int]
!267 = metadata !{i32 786445, metadata !264, metadata !263, metadata !"_IO_read_ptr", i32 251, i64 64, i64 64, i64 64, i32 0, metadata !268} ; [ DW_TAG_member ] [_IO_read_ptr] [line 251, size 64, align 64, offset 64] [from ]
!268 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !269} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from char]
!269 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!270 = metadata !{i32 786445, metadata !264, metadata !263, metadata !"_IO_read_end", i32 252, i64 64, i64 64, i64 128, i32 0, metadata !268} ; [ DW_TAG_member ] [_IO_read_end] [line 252, size 64, align 64, offset 128] [from ]
!271 = metadata !{i32 786445, metadata !264, metadata !263, metadata !"_IO_read_base", i32 253, i64 64, i64 64, i64 192, i32 0, metadata !268} ; [ DW_TAG_member ] [_IO_read_base] [line 253, size 64, align 64, offset 192] [from ]
!272 = metadata !{i32 786445, metadata !264, metadata !263, metadata !"_IO_write_base", i32 254, i64 64, i64 64, i64 256, i32 0, metadata !268} ; [ DW_TAG_member ] [_IO_write_base] [line 254, size 64, align 64, offset 256] [from ]
!273 = metadata !{i32 786445, metadata !264, metadata !263, metadata !"_IO_write_ptr", i32 255, i64 64, i64 64, i64 320, i32 0, metadata !268} ; [ DW_TAG_member ] [_IO_write_ptr] [line 255, size 64, align 64, offset 320] [from ]
!274 = metadata !{i32 786445, metadata !264, metadata !263, metadata !"_IO_write_end", i32 256, i64 64, i64 64, i64 384, i32 0, metadata !268} ; [ DW_TAG_member ] [_IO_write_end] [line 256, size 64, align 64, offset 384] [from ]
!275 = metadata !{i32 786445, metadata !264, metadata !263, metadata !"_IO_buf_base", i32 257, i64 64, i64 64, i64 448, i32 0, metadata !268} ; [ DW_TAG_member ] [_IO_buf_base] [line 257, size 64, align 64, offset 448] [from ]
!276 = metadata !{i32 786445, metadata !264, metadata !263, metadata !"_IO_buf_end", i32 258, i64 64, i64 64, i64 512, i32 0, metadata !268} ; [ DW_TAG_member ] [_IO_buf_end] [line 258, size 64, align 64, offset 512] [from ]
!277 = metadata !{i32 786445, metadata !264, metadata !263, metadata !"_IO_save_base", i32 260, i64 64, i64 64, i64 576, i32 0, metadata !268} ; [ DW_TAG_member ] [_IO_save_base] [line 260, size 64, align 64, offset 576] [from ]
!278 = metadata !{i32 786445, metadata !264, metadata !263, metadata !"_IO_backup_base", i32 261, i64 64, i64 64, i64 640, i32 0, metadata !268} ; [ DW_TAG_member ] [_IO_backup_base] [line 261, size 64, align 64, offset 640] [from ]
!279 = metadata !{i32 786445, metadata !264, metadata !263, metadata !"_IO_save_end", i32 262, i64 64, i64 64, i64 704, i32 0, metadata !268} ; [ DW_TAG_member ] [_IO_save_end] [line 262, size 64, align 64, offset 704] [from ]
!280 = metadata !{i32 786445, metadata !264, metadata !263, metadata !"_markers", i32 264, i64 64, i64 64, i64 768, i32 0, metadata !281} ; [ DW_TAG_member ] [_markers] [line 264, size 64, align 64, offset 768] [from ]
!281 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !282} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from _IO_marker]
!282 = metadata !{i32 786451, metadata !264, null, metadata !"_IO_marker", i32 160, i64 192, i64 64, i32 0, i32 0, null, metadata !283, i32 0, null, null} ; [ DW_TAG_structure_type ] [_IO_marker] [line 160, size 192, align 64, offset 0] [from ]
!283 = metadata !{metadata !284, metadata !285, metadata !287}
!284 = metadata !{i32 786445, metadata !264, metadata !282, metadata !"_next", i32 161, i64 64, i64 64, i64 0, i32 0, metadata !281} ; [ DW_TAG_member ] [_next] [line 161, size 64, align 64, offset 0] [from ]
!285 = metadata !{i32 786445, metadata !264, metadata !282, metadata !"_sbuf", i32 162, i64 64, i64 64, i64 64, i32 0, metadata !286} ; [ DW_TAG_member ] [_sbuf] [line 162, size 64, align 64, offset 64] [from ]
!286 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !263} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from _IO_FILE]
!287 = metadata !{i32 786445, metadata !264, metadata !282, metadata !"_pos", i32 166, i64 32, i64 32, i64 128, i32 0, metadata !199} ; [ DW_TAG_member ] [_pos] [line 166, size 32, align 32, offset 128] [from int]
!288 = metadata !{i32 786445, metadata !264, metadata !263, metadata !"_chain", i32 266, i64 64, i64 64, i64 832, i32 0, metadata !286} ; [ DW_TAG_member ] [_chain] [line 266, size 64, align 64, offset 832] [from ]
!289 = metadata !{i32 786445, metadata !264, metadata !263, metadata !"_fileno", i32 268, i64 32, i64 32, i64 896, i32 0, metadata !199} ; [ DW_TAG_member ] [_fileno] [line 268, size 32, align 32, offset 896] [from int]
!290 = metadata !{i32 786445, metadata !264, metadata !263, metadata !"_flags2", i32 272, i64 32, i64 32, i64 928, i32 0, metadata !199} ; [ DW_TAG_member ] [_flags2] [line 272, size 32, align 32, offset 928] [from int]
!291 = metadata !{i32 786445, metadata !264, metadata !263, metadata !"_old_offset", i32 274, i64 64, i64 64, i64 960, i32 0, metadata !292} ; [ DW_TAG_member ] [_old_offset] [line 274, size 64, align 64, offset 960] [from __off_t]
!292 = metadata !{i32 786454, metadata !264, null, metadata !"__off_t", i32 131, i64 0, i64 0, i64 0, i32 0, metadata !293} ; [ DW_TAG_typedef ] [__off_t] [line 131, size 0, align 0, offset 0] [from long int]
!293 = metadata !{i32 786468, null, null, metadata !"long int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [long int] [line 0, size 64, align 64, offset 0, enc DW_ATE_signed]
!294 = metadata !{i32 786445, metadata !264, metadata !263, metadata !"_cur_column", i32 278, i64 16, i64 16, i64 1024, i32 0, metadata !295} ; [ DW_TAG_member ] [_cur_column] [line 278, size 16, align 16, offset 1024] [from unsigned short]
!295 = metadata !{i32 786468, null, null, metadata !"unsigned short", i32 0, i64 16, i64 16, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned short] [line 0, size 16, align 16, offset 0, enc DW_ATE_unsigned]
!296 = metadata !{i32 786445, metadata !264, metadata !263, metadata !"_vtable_offset", i32 279, i64 8, i64 8, i64 1040, i32 0, metadata !297} ; [ DW_TAG_member ] [_vtable_offset] [line 279, size 8, align 8, offset 1040] [from signed char]
!297 = metadata !{i32 786468, null, null, metadata !"signed char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [signed char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!298 = metadata !{i32 786445, metadata !264, metadata !263, metadata !"_shortbuf", i32 280, i64 8, i64 8, i64 1048, i32 0, metadata !299} ; [ DW_TAG_member ] [_shortbuf] [line 280, size 8, align 8, offset 1048] [from ]
!299 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 8, i64 8, i32 0, i32 0, metadata !269, metadata !300, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 8, align 8, offset 0] [from char]
!300 = metadata !{metadata !301}
!301 = metadata !{i32 786465, i64 0, i64 1}       ; [ DW_TAG_subrange_type ] [0, 0]
!302 = metadata !{i32 786445, metadata !264, metadata !263, metadata !"_lock", i32 284, i64 64, i64 64, i64 1088, i32 0, metadata !303} ; [ DW_TAG_member ] [_lock] [line 284, size 64, align 64, offset 1088] [from ]
!303 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, null} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!304 = metadata !{i32 786445, metadata !264, metadata !263, metadata !"_offset", i32 293, i64 64, i64 64, i64 1152, i32 0, metadata !305} ; [ DW_TAG_member ] [_offset] [line 293, size 64, align 64, offset 1152] [from __off64_t]
!305 = metadata !{i32 786454, metadata !264, null, metadata !"__off64_t", i32 132, i64 0, i64 0, i64 0, i32 0, metadata !293} ; [ DW_TAG_typedef ] [__off64_t] [line 132, size 0, align 0, offset 0] [from long int]
!306 = metadata !{i32 786445, metadata !264, metadata !263, metadata !"__pad1", i32 302, i64 64, i64 64, i64 1216, i32 0, metadata !303} ; [ DW_TAG_member ] [__pad1] [line 302, size 64, align 64, offset 1216] [from ]
!307 = metadata !{i32 786445, metadata !264, metadata !263, metadata !"__pad2", i32 303, i64 64, i64 64, i64 1280, i32 0, metadata !303} ; [ DW_TAG_member ] [__pad2] [line 303, size 64, align 64, offset 1280] [from ]
!308 = metadata !{i32 786445, metadata !264, metadata !263, metadata !"__pad3", i32 304, i64 64, i64 64, i64 1344, i32 0, metadata !303} ; [ DW_TAG_member ] [__pad3] [line 304, size 64, align 64, offset 1344] [from ]
!309 = metadata !{i32 786445, metadata !264, metadata !263, metadata !"__pad4", i32 305, i64 64, i64 64, i64 1408, i32 0, metadata !303} ; [ DW_TAG_member ] [__pad4] [line 305, size 64, align 64, offset 1408] [from ]
!310 = metadata !{i32 786445, metadata !264, metadata !263, metadata !"__pad5", i32 306, i64 64, i64 64, i64 1472, i32 0, metadata !311} ; [ DW_TAG_member ] [__pad5] [line 306, size 64, align 64, offset 1472] [from size_t]
!311 = metadata !{i32 786454, metadata !264, null, metadata !"size_t", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !312} ; [ DW_TAG_typedef ] [size_t] [line 42, size 0, align 0, offset 0] [from long unsigned int]
!312 = metadata !{i32 786468, null, null, metadata !"long unsigned int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [long unsigned int] [line 0, size 64, align 64, offset 0, enc DW_ATE_unsigned]
!313 = metadata !{i32 786445, metadata !264, metadata !263, metadata !"_mode", i32 308, i64 32, i64 32, i64 1536, i32 0, metadata !199} ; [ DW_TAG_member ] [_mode] [line 308, size 32, align 32, offset 1536] [from int]
!314 = metadata !{i32 786445, metadata !264, metadata !263, metadata !"_unused2", i32 310, i64 160, i64 8, i64 1568, i32 0, metadata !315} ; [ DW_TAG_member ] [_unused2] [line 310, size 160, align 8, offset 1568] [from ]
!315 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 160, i64 8, i32 0, i32 0, metadata !269, metadata !316, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 160, align 8, offset 0] [from char]
!316 = metadata !{metadata !317}
!317 = metadata !{i32 786465, i64 0, i64 20}      ; [ DW_TAG_subrange_type ] [0, 19]
!318 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !319} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from t_iparams]
!319 = metadata !{i32 786454, metadata !1, null, metadata !"t_iparams", i32 131, i64 0, i64 0, i64 0, i32 0, metadata !320} ; [ DW_TAG_typedef ] [t_iparams] [line 131, size 0, align 0, offset 0] [from ]
!320 = metadata !{i32 786455, metadata !4, null, metadata !"", i32 97, i64 192, i64 32, i64 0, i32 0, null, metadata !321, i32 0, i32 0, null} ; [ DW_TAG_union_type ] [line 97, size 192, align 32, offset 0] [from ]
!321 = metadata !{metadata !322, metadata !328, metadata !335, metadata !341, metadata !350, metadata !355, metadata !362, metadata !370, metadata !375, metadata !380, metadata !386, metadata !394, metadata !401, metadata !410, metadata !419, metadata !428}
!322 = metadata !{i32 786445, metadata !4, metadata !320, metadata !"bham", i32 105, i64 96, i64 32, i64 0, i32 0, metadata !323} ; [ DW_TAG_member ] [bham] [line 105, size 96, align 32, offset 0] [from ]
!323 = metadata !{i32 786451, metadata !4, metadata !320, metadata !"", i32 105, i64 96, i64 32, i32 0, i32 0, null, metadata !324, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 105, size 96, align 32, offset 0] [from ]
!324 = metadata !{metadata !325, metadata !326, metadata !327}
!325 = metadata !{i32 786445, metadata !4, metadata !323, metadata !"a", i32 105, i64 32, i64 32, i64 0, i32 0, metadata !202} ; [ DW_TAG_member ] [a] [line 105, size 32, align 32, offset 0] [from real]
!326 = metadata !{i32 786445, metadata !4, metadata !323, metadata !"b", i32 105, i64 32, i64 32, i64 32, i32 0, metadata !202} ; [ DW_TAG_member ] [b] [line 105, size 32, align 32, offset 32] [from real]
!327 = metadata !{i32 786445, metadata !4, metadata !323, metadata !"c", i32 105, i64 32, i64 32, i64 64, i32 0, metadata !202} ; [ DW_TAG_member ] [c] [line 105, size 32, align 32, offset 64] [from real]
!328 = metadata !{i32 786445, metadata !4, metadata !320, metadata !"harmonic", i32 106, i64 128, i64 32, i64 0, i32 0, metadata !329} ; [ DW_TAG_member ] [harmonic] [line 106, size 128, align 32, offset 0] [from ]
!329 = metadata !{i32 786451, metadata !4, metadata !320, metadata !"", i32 106, i64 128, i64 32, i32 0, i32 0, null, metadata !330, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 106, size 128, align 32, offset 0] [from ]
!330 = metadata !{metadata !331, metadata !332, metadata !333, metadata !334}
!331 = metadata !{i32 786445, metadata !4, metadata !329, metadata !"rA", i32 106, i64 32, i64 32, i64 0, i32 0, metadata !202} ; [ DW_TAG_member ] [rA] [line 106, size 32, align 32, offset 0] [from real]
!332 = metadata !{i32 786445, metadata !4, metadata !329, metadata !"krA", i32 106, i64 32, i64 32, i64 32, i32 0, metadata !202} ; [ DW_TAG_member ] [krA] [line 106, size 32, align 32, offset 32] [from real]
!333 = metadata !{i32 786445, metadata !4, metadata !329, metadata !"rB", i32 106, i64 32, i64 32, i64 64, i32 0, metadata !202} ; [ DW_TAG_member ] [rB] [line 106, size 32, align 32, offset 64] [from real]
!334 = metadata !{i32 786445, metadata !4, metadata !329, metadata !"krB", i32 106, i64 32, i64 32, i64 96, i32 0, metadata !202} ; [ DW_TAG_member ] [krB] [line 106, size 32, align 32, offset 96] [from real]
!335 = metadata !{i32 786445, metadata !4, metadata !320, metadata !"cubic", i32 108, i64 96, i64 32, i64 0, i32 0, metadata !336} ; [ DW_TAG_member ] [cubic] [line 108, size 96, align 32, offset 0] [from ]
!336 = metadata !{i32 786451, metadata !4, metadata !320, metadata !"", i32 108, i64 96, i64 32, i32 0, i32 0, null, metadata !337, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 108, size 96, align 32, offset 0] [from ]
!337 = metadata !{metadata !338, metadata !339, metadata !340}
!338 = metadata !{i32 786445, metadata !4, metadata !336, metadata !"b0", i32 108, i64 32, i64 32, i64 0, i32 0, metadata !202} ; [ DW_TAG_member ] [b0] [line 108, size 32, align 32, offset 0] [from real]
!339 = metadata !{i32 786445, metadata !4, metadata !336, metadata !"kb", i32 108, i64 32, i64 32, i64 32, i32 0, metadata !202} ; [ DW_TAG_member ] [kb] [line 108, size 32, align 32, offset 32] [from real]
!340 = metadata !{i32 786445, metadata !4, metadata !336, metadata !"kcub", i32 108, i64 32, i64 32, i64 64, i32 0, metadata !202} ; [ DW_TAG_member ] [kcub] [line 108, size 32, align 32, offset 64] [from real]
!341 = metadata !{i32 786445, metadata !4, metadata !320, metadata !"wpol", i32 110, i64 192, i64 32, i64 0, i32 0, metadata !342} ; [ DW_TAG_member ] [wpol] [line 110, size 192, align 32, offset 0] [from ]
!342 = metadata !{i32 786451, metadata !4, metadata !320, metadata !"", i32 110, i64 192, i64 32, i32 0, i32 0, null, metadata !343, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 110, size 192, align 32, offset 0] [from ]
!343 = metadata !{metadata !344, metadata !345, metadata !346, metadata !347, metadata !348, metadata !349}
!344 = metadata !{i32 786445, metadata !4, metadata !342, metadata !"kx", i32 110, i64 32, i64 32, i64 0, i32 0, metadata !202} ; [ DW_TAG_member ] [kx] [line 110, size 32, align 32, offset 0] [from real]
!345 = metadata !{i32 786445, metadata !4, metadata !342, metadata !"ky", i32 110, i64 32, i64 32, i64 32, i32 0, metadata !202} ; [ DW_TAG_member ] [ky] [line 110, size 32, align 32, offset 32] [from real]
!346 = metadata !{i32 786445, metadata !4, metadata !342, metadata !"kz", i32 110, i64 32, i64 32, i64 64, i32 0, metadata !202} ; [ DW_TAG_member ] [kz] [line 110, size 32, align 32, offset 64] [from real]
!347 = metadata !{i32 786445, metadata !4, metadata !342, metadata !"rOH", i32 110, i64 32, i64 32, i64 96, i32 0, metadata !202} ; [ DW_TAG_member ] [rOH] [line 110, size 32, align 32, offset 96] [from real]
!348 = metadata !{i32 786445, metadata !4, metadata !342, metadata !"rHH", i32 110, i64 32, i64 32, i64 128, i32 0, metadata !202} ; [ DW_TAG_member ] [rHH] [line 110, size 32, align 32, offset 128] [from real]
!349 = metadata !{i32 786445, metadata !4, metadata !342, metadata !"rOD", i32 110, i64 32, i64 32, i64 160, i32 0, metadata !202} ; [ DW_TAG_member ] [rOD] [line 110, size 32, align 32, offset 160] [from real]
!350 = metadata !{i32 786445, metadata !4, metadata !320, metadata !"lj", i32 111, i64 64, i64 32, i64 0, i32 0, metadata !351} ; [ DW_TAG_member ] [lj] [line 111, size 64, align 32, offset 0] [from ]
!351 = metadata !{i32 786451, metadata !4, metadata !320, metadata !"", i32 111, i64 64, i64 32, i32 0, i32 0, null, metadata !352, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 111, size 64, align 32, offset 0] [from ]
!352 = metadata !{metadata !353, metadata !354}
!353 = metadata !{i32 786445, metadata !4, metadata !351, metadata !"c6", i32 111, i64 32, i64 32, i64 0, i32 0, metadata !202} ; [ DW_TAG_member ] [c6] [line 111, size 32, align 32, offset 0] [from real]
!354 = metadata !{i32 786445, metadata !4, metadata !351, metadata !"c12", i32 111, i64 32, i64 32, i64 32, i32 0, metadata !202} ; [ DW_TAG_member ] [c12] [line 111, size 32, align 32, offset 32] [from real]
!355 = metadata !{i32 786445, metadata !4, metadata !320, metadata !"lj14", i32 112, i64 128, i64 32, i64 0, i32 0, metadata !356} ; [ DW_TAG_member ] [lj14] [line 112, size 128, align 32, offset 0] [from ]
!356 = metadata !{i32 786451, metadata !4, metadata !320, metadata !"", i32 112, i64 128, i64 32, i32 0, i32 0, null, metadata !357, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 112, size 128, align 32, offset 0] [from ]
!357 = metadata !{metadata !358, metadata !359, metadata !360, metadata !361}
!358 = metadata !{i32 786445, metadata !4, metadata !356, metadata !"c6A", i32 112, i64 32, i64 32, i64 0, i32 0, metadata !202} ; [ DW_TAG_member ] [c6A] [line 112, size 32, align 32, offset 0] [from real]
!359 = metadata !{i32 786445, metadata !4, metadata !356, metadata !"c12A", i32 112, i64 32, i64 32, i64 32, i32 0, metadata !202} ; [ DW_TAG_member ] [c12A] [line 112, size 32, align 32, offset 32] [from real]
!360 = metadata !{i32 786445, metadata !4, metadata !356, metadata !"c6B", i32 112, i64 32, i64 32, i64 64, i32 0, metadata !202} ; [ DW_TAG_member ] [c6B] [line 112, size 32, align 32, offset 64] [from real]
!361 = metadata !{i32 786445, metadata !4, metadata !356, metadata !"c12B", i32 112, i64 32, i64 32, i64 96, i32 0, metadata !202} ; [ DW_TAG_member ] [c12B] [line 112, size 32, align 32, offset 96] [from real]
!362 = metadata !{i32 786445, metadata !4, metadata !320, metadata !"pdihs", i32 117, i64 160, i64 32, i64 0, i32 0, metadata !363} ; [ DW_TAG_member ] [pdihs] [line 117, size 160, align 32, offset 0] [from ]
!363 = metadata !{i32 786451, metadata !4, metadata !320, metadata !"", i32 117, i64 160, i64 32, i32 0, i32 0, null, metadata !364, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 117, size 160, align 32, offset 0] [from ]
!364 = metadata !{metadata !365, metadata !366, metadata !367, metadata !368, metadata !369}
!365 = metadata !{i32 786445, metadata !4, metadata !363, metadata !"phiA", i32 117, i64 32, i64 32, i64 0, i32 0, metadata !202} ; [ DW_TAG_member ] [phiA] [line 117, size 32, align 32, offset 0] [from real]
!366 = metadata !{i32 786445, metadata !4, metadata !363, metadata !"cpA", i32 117, i64 32, i64 32, i64 32, i32 0, metadata !202} ; [ DW_TAG_member ] [cpA] [line 117, size 32, align 32, offset 32] [from real]
!367 = metadata !{i32 786445, metadata !4, metadata !363, metadata !"mult", i32 117, i64 32, i64 32, i64 64, i32 0, metadata !199} ; [ DW_TAG_member ] [mult] [line 117, size 32, align 32, offset 64] [from int]
!368 = metadata !{i32 786445, metadata !4, metadata !363, metadata !"phiB", i32 117, i64 32, i64 32, i64 96, i32 0, metadata !202} ; [ DW_TAG_member ] [phiB] [line 117, size 32, align 32, offset 96] [from real]
!369 = metadata !{i32 786445, metadata !4, metadata !363, metadata !"cpB", i32 117, i64 32, i64 32, i64 128, i32 0, metadata !202} ; [ DW_TAG_member ] [cpB] [line 117, size 32, align 32, offset 128] [from real]
!370 = metadata !{i32 786445, metadata !4, metadata !320, metadata !"shake", i32 118, i64 64, i64 32, i64 0, i32 0, metadata !371} ; [ DW_TAG_member ] [shake] [line 118, size 64, align 32, offset 0] [from ]
!371 = metadata !{i32 786451, metadata !4, metadata !320, metadata !"", i32 118, i64 64, i64 32, i32 0, i32 0, null, metadata !372, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 118, size 64, align 32, offset 0] [from ]
!372 = metadata !{metadata !373, metadata !374}
!373 = metadata !{i32 786445, metadata !4, metadata !371, metadata !"dA", i32 118, i64 32, i64 32, i64 0, i32 0, metadata !202} ; [ DW_TAG_member ] [dA] [line 118, size 32, align 32, offset 0] [from real]
!374 = metadata !{i32 786445, metadata !4, metadata !371, metadata !"dB", i32 118, i64 32, i64 32, i64 32, i32 0, metadata !202} ; [ DW_TAG_member ] [dB] [line 118, size 32, align 32, offset 32] [from real]
!375 = metadata !{i32 786445, metadata !4, metadata !320, metadata !"settle", i32 123, i64 64, i64 32, i64 0, i32 0, metadata !376} ; [ DW_TAG_member ] [settle] [line 123, size 64, align 32, offset 0] [from ]
!376 = metadata !{i32 786451, metadata !4, metadata !320, metadata !"", i32 123, i64 64, i64 32, i32 0, i32 0, null, metadata !377, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 123, size 64, align 32, offset 0] [from ]
!377 = metadata !{metadata !378, metadata !379}
!378 = metadata !{i32 786445, metadata !4, metadata !376, metadata !"doh", i32 123, i64 32, i64 32, i64 0, i32 0, metadata !202} ; [ DW_TAG_member ] [doh] [line 123, size 32, align 32, offset 0] [from real]
!379 = metadata !{i32 786445, metadata !4, metadata !376, metadata !"dhh", i32 123, i64 32, i64 32, i64 32, i32 0, metadata !202} ; [ DW_TAG_member ] [dhh] [line 123, size 32, align 32, offset 32] [from real]
!380 = metadata !{i32 786445, metadata !4, metadata !320, metadata !"morse", i32 124, i64 96, i64 32, i64 0, i32 0, metadata !381} ; [ DW_TAG_member ] [morse] [line 124, size 96, align 32, offset 0] [from ]
!381 = metadata !{i32 786451, metadata !4, metadata !320, metadata !"", i32 124, i64 96, i64 32, i32 0, i32 0, null, metadata !382, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 124, size 96, align 32, offset 0] [from ]
!382 = metadata !{metadata !383, metadata !384, metadata !385}
!383 = metadata !{i32 786445, metadata !4, metadata !381, metadata !"b0", i32 124, i64 32, i64 32, i64 0, i32 0, metadata !202} ; [ DW_TAG_member ] [b0] [line 124, size 32, align 32, offset 0] [from real]
!384 = metadata !{i32 786445, metadata !4, metadata !381, metadata !"cb", i32 124, i64 32, i64 32, i64 32, i32 0, metadata !202} ; [ DW_TAG_member ] [cb] [line 124, size 32, align 32, offset 32] [from real]
!385 = metadata !{i32 786445, metadata !4, metadata !381, metadata !"beta", i32 124, i64 32, i64 32, i64 64, i32 0, metadata !202} ; [ DW_TAG_member ] [beta] [line 124, size 32, align 32, offset 64] [from real]
!386 = metadata !{i32 786445, metadata !4, metadata !320, metadata !"posres", i32 125, i64 192, i64 32, i64 0, i32 0, metadata !387} ; [ DW_TAG_member ] [posres] [line 125, size 192, align 32, offset 0] [from ]
!387 = metadata !{i32 786451, metadata !4, metadata !320, metadata !"", i32 125, i64 192, i64 32, i32 0, i32 0, null, metadata !388, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 125, size 192, align 32, offset 0] [from ]
!388 = metadata !{metadata !389, metadata !393}
!389 = metadata !{i32 786445, metadata !4, metadata !387, metadata !"pos0", i32 125, i64 96, i64 32, i64 0, i32 0, metadata !390} ; [ DW_TAG_member ] [pos0] [line 125, size 96, align 32, offset 0] [from ]
!390 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 96, i64 32, i32 0, i32 0, metadata !202, metadata !391, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 96, align 32, offset 0] [from real]
!391 = metadata !{metadata !392}
!392 = metadata !{i32 786465, i64 0, i64 3}       ; [ DW_TAG_subrange_type ] [0, 2]
!393 = metadata !{i32 786445, metadata !4, metadata !387, metadata !"fc", i32 125, i64 96, i64 32, i64 96, i32 0, metadata !390} ; [ DW_TAG_member ] [fc] [line 125, size 96, align 32, offset 96] [from ]
!394 = metadata !{i32 786445, metadata !4, metadata !320, metadata !"rbdihs", i32 126, i64 192, i64 32, i64 0, i32 0, metadata !395} ; [ DW_TAG_member ] [rbdihs] [line 126, size 192, align 32, offset 0] [from ]
!395 = metadata !{i32 786451, metadata !4, metadata !320, metadata !"", i32 126, i64 192, i64 32, i32 0, i32 0, null, metadata !396, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 126, size 192, align 32, offset 0] [from ]
!396 = metadata !{metadata !397}
!397 = metadata !{i32 786445, metadata !4, metadata !395, metadata !"rbc", i32 126, i64 192, i64 32, i64 0, i32 0, metadata !398} ; [ DW_TAG_member ] [rbc] [line 126, size 192, align 32, offset 0] [from ]
!398 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 192, i64 32, i32 0, i32 0, metadata !202, metadata !399, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 192, align 32, offset 0] [from real]
!399 = metadata !{metadata !400}
!400 = metadata !{i32 786465, i64 0, i64 6}       ; [ DW_TAG_subrange_type ] [0, 5]
!401 = metadata !{i32 786445, metadata !4, metadata !320, metadata !"dummy", i32 127, i64 192, i64 32, i64 0, i32 0, metadata !402} ; [ DW_TAG_member ] [dummy] [line 127, size 192, align 32, offset 0] [from ]
!402 = metadata !{i32 786451, metadata !4, metadata !320, metadata !"", i32 127, i64 192, i64 32, i32 0, i32 0, null, metadata !403, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 127, size 192, align 32, offset 0] [from ]
!403 = metadata !{metadata !404, metadata !405, metadata !406, metadata !407, metadata !408, metadata !409}
!404 = metadata !{i32 786445, metadata !4, metadata !402, metadata !"a", i32 127, i64 32, i64 32, i64 0, i32 0, metadata !202} ; [ DW_TAG_member ] [a] [line 127, size 32, align 32, offset 0] [from real]
!405 = metadata !{i32 786445, metadata !4, metadata !402, metadata !"b", i32 127, i64 32, i64 32, i64 32, i32 0, metadata !202} ; [ DW_TAG_member ] [b] [line 127, size 32, align 32, offset 32] [from real]
!406 = metadata !{i32 786445, metadata !4, metadata !402, metadata !"c", i32 127, i64 32, i64 32, i64 64, i32 0, metadata !202} ; [ DW_TAG_member ] [c] [line 127, size 32, align 32, offset 64] [from real]
!407 = metadata !{i32 786445, metadata !4, metadata !402, metadata !"d", i32 127, i64 32, i64 32, i64 96, i32 0, metadata !202} ; [ DW_TAG_member ] [d] [line 127, size 32, align 32, offset 96] [from real]
!408 = metadata !{i32 786445, metadata !4, metadata !402, metadata !"e", i32 127, i64 32, i64 32, i64 128, i32 0, metadata !202} ; [ DW_TAG_member ] [e] [line 127, size 32, align 32, offset 128] [from real]
!409 = metadata !{i32 786445, metadata !4, metadata !402, metadata !"f", i32 127, i64 32, i64 32, i64 160, i32 0, metadata !202} ; [ DW_TAG_member ] [f] [line 127, size 32, align 32, offset 160] [from real]
!410 = metadata !{i32 786445, metadata !4, metadata !320, metadata !"disres", i32 128, i64 192, i64 32, i64 0, i32 0, metadata !411} ; [ DW_TAG_member ] [disres] [line 128, size 192, align 32, offset 0] [from ]
!411 = metadata !{i32 786451, metadata !4, metadata !320, metadata !"", i32 128, i64 192, i64 32, i32 0, i32 0, null, metadata !412, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 128, size 192, align 32, offset 0] [from ]
!412 = metadata !{metadata !413, metadata !414, metadata !415, metadata !416, metadata !417, metadata !418}
!413 = metadata !{i32 786445, metadata !4, metadata !411, metadata !"low", i32 128, i64 32, i64 32, i64 0, i32 0, metadata !202} ; [ DW_TAG_member ] [low] [line 128, size 32, align 32, offset 0] [from real]
!414 = metadata !{i32 786445, metadata !4, metadata !411, metadata !"up1", i32 128, i64 32, i64 32, i64 32, i32 0, metadata !202} ; [ DW_TAG_member ] [up1] [line 128, size 32, align 32, offset 32] [from real]
!415 = metadata !{i32 786445, metadata !4, metadata !411, metadata !"up2", i32 128, i64 32, i64 32, i64 64, i32 0, metadata !202} ; [ DW_TAG_member ] [up2] [line 128, size 32, align 32, offset 64] [from real]
!416 = metadata !{i32 786445, metadata !4, metadata !411, metadata !"kfac", i32 128, i64 32, i64 32, i64 96, i32 0, metadata !202} ; [ DW_TAG_member ] [kfac] [line 128, size 32, align 32, offset 96] [from real]
!417 = metadata !{i32 786445, metadata !4, metadata !411, metadata !"type", i32 128, i64 32, i64 32, i64 128, i32 0, metadata !199} ; [ DW_TAG_member ] [type] [line 128, size 32, align 32, offset 128] [from int]
!418 = metadata !{i32 786445, metadata !4, metadata !411, metadata !"label", i32 128, i64 32, i64 32, i64 160, i32 0, metadata !199} ; [ DW_TAG_member ] [label] [line 128, size 32, align 32, offset 160] [from int]
!419 = metadata !{i32 786445, metadata !4, metadata !320, metadata !"orires", i32 129, i64 192, i64 32, i64 0, i32 0, metadata !420} ; [ DW_TAG_member ] [orires] [line 129, size 192, align 32, offset 0] [from ]
!420 = metadata !{i32 786451, metadata !4, metadata !320, metadata !"", i32 129, i64 192, i64 32, i32 0, i32 0, null, metadata !421, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 129, size 192, align 32, offset 0] [from ]
!421 = metadata !{metadata !422, metadata !423, metadata !424, metadata !425, metadata !426, metadata !427}
!422 = metadata !{i32 786445, metadata !4, metadata !420, metadata !"ex", i32 129, i64 32, i64 32, i64 0, i32 0, metadata !199} ; [ DW_TAG_member ] [ex] [line 129, size 32, align 32, offset 0] [from int]
!423 = metadata !{i32 786445, metadata !4, metadata !420, metadata !"pow", i32 129, i64 32, i64 32, i64 32, i32 0, metadata !199} ; [ DW_TAG_member ] [pow] [line 129, size 32, align 32, offset 32] [from int]
!424 = metadata !{i32 786445, metadata !4, metadata !420, metadata !"label", i32 129, i64 32, i64 32, i64 64, i32 0, metadata !199} ; [ DW_TAG_member ] [label] [line 129, size 32, align 32, offset 64] [from int]
!425 = metadata !{i32 786445, metadata !4, metadata !420, metadata !"c", i32 129, i64 32, i64 32, i64 96, i32 0, metadata !202} ; [ DW_TAG_member ] [c] [line 129, size 32, align 32, offset 96] [from real]
!426 = metadata !{i32 786445, metadata !4, metadata !420, metadata !"obs", i32 129, i64 32, i64 32, i64 128, i32 0, metadata !202} ; [ DW_TAG_member ] [obs] [line 129, size 32, align 32, offset 128] [from real]
!427 = metadata !{i32 786445, metadata !4, metadata !420, metadata !"kfac", i32 129, i64 32, i64 32, i64 160, i32 0, metadata !202} ; [ DW_TAG_member ] [kfac] [line 129, size 32, align 32, offset 160] [from real]
!428 = metadata !{i32 786445, metadata !4, metadata !320, metadata !"generic", i32 130, i64 192, i64 32, i64 0, i32 0, metadata !429} ; [ DW_TAG_member ] [generic] [line 130, size 192, align 32, offset 0] [from ]
!429 = metadata !{i32 786451, metadata !4, metadata !320, metadata !"", i32 130, i64 192, i64 32, i32 0, i32 0, null, metadata !430, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 130, size 192, align 32, offset 0] [from ]
!430 = metadata !{metadata !431}
!431 = metadata !{i32 786445, metadata !4, metadata !429, metadata !"buf", i32 130, i64 192, i64 32, i64 0, i32 0, metadata !398} ; [ DW_TAG_member ] [buf] [line 130, size 192, align 32, offset 0] [from ]
!432 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !433} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from t_iatom]
!433 = metadata !{i32 786454, metadata !1, null, metadata !"t_iatom", i32 45, i64 0, i64 0, i64 0, i32 0, metadata !198} ; [ DW_TAG_typedef ] [t_iatom] [line 45, size 0, align 0, offset 0] [from atom_id]
!434 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !435} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from rvec]
!435 = metadata !{i32 786454, metadata !1, null, metadata !"rvec", i32 101, i64 0, i64 0, i64 0, i32 0, metadata !390} ; [ DW_TAG_typedef ] [rvec] [line 101, size 0, align 0, offset 0] [from ]
!436 = metadata !{metadata !437, metadata !438, metadata !439, metadata !440, metadata !441, metadata !442, metadata !443, metadata !444, metadata !445, metadata !446, metadata !447, metadata !448, metadata !449, metadata !450, metadata !451, metadata !452, metadata !453, metadata !454, metadata !455, metadata !456, metadata !457, metadata !458, metadata !459, metadata !460, metadata !461}
!437 = metadata !{i32 786689, metadata !258, metadata !"log", metadata !194, i32 16777368, metadata !261, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [log] [line 152]
!438 = metadata !{i32 786689, metadata !258, metadata !"natoms", metadata !194, i32 33554585, metadata !199, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [natoms] [line 153]
!439 = metadata !{i32 786689, metadata !258, metadata !"invmass", metadata !194, i32 50331801, metadata !201, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [invmass] [line 153]
!440 = metadata !{i32 786689, metadata !258, metadata !"ncon", metadata !194, i32 67109017, metadata !199, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ncon] [line 153]
!441 = metadata !{i32 786689, metadata !258, metadata !"ip", metadata !194, i32 83886234, metadata !318, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ip] [line 154]
!442 = metadata !{i32 786689, metadata !258, metadata !"iatom", metadata !194, i32 100663450, metadata !432, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [iatom] [line 154]
!443 = metadata !{i32 786689, metadata !258, metadata !"tol", metadata !194, i32 117440667, metadata !202, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [tol] [line 155]
!444 = metadata !{i32 786689, metadata !258, metadata !"x", metadata !194, i32 134217883, metadata !434, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [x] [line 155]
!445 = metadata !{i32 786689, metadata !258, metadata !"xp", metadata !194, i32 150995099, metadata !434, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [xp] [line 155]
!446 = metadata !{i32 786689, metadata !258, metadata !"omega", metadata !194, i32 167772315, metadata !202, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [omega] [line 155]
!447 = metadata !{i32 786689, metadata !258, metadata !"bFEP", metadata !194, i32 184549532, metadata !199, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [bFEP] [line 156]
!448 = metadata !{i32 786689, metadata !258, metadata !"lambda", metadata !194, i32 201326748, metadata !202, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [lambda] [line 156]
!449 = metadata !{i32 786689, metadata !258, metadata !"lagr", metadata !194, i32 218103964, metadata !201, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [lagr] [line 156]
!450 = metadata !{i32 786688, metadata !258, metadata !"maxnit", metadata !194, i32 161, metadata !199, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [maxnit] [line 161]
!451 = metadata !{i32 786688, metadata !258, metadata !"nit", metadata !194, i32 162, metadata !199, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nit] [line 162]
!452 = metadata !{i32 786688, metadata !258, metadata !"ll", metadata !194, i32 162, metadata !199, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ll] [line 162]
!453 = metadata !{i32 786688, metadata !258, metadata !"i", metadata !194, i32 162, metadata !199, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 162]
!454 = metadata !{i32 786688, metadata !258, metadata !"j", metadata !194, i32 162, metadata !199, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [j] [line 162]
!455 = metadata !{i32 786688, metadata !258, metadata !"type", metadata !194, i32 162, metadata !199, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [type] [line 162]
!456 = metadata !{i32 786688, metadata !258, metadata !"ia", metadata !194, i32 163, metadata !432, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ia] [line 163]
!457 = metadata !{i32 786688, metadata !258, metadata !"L1", metadata !194, i32 164, metadata !202, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [L1] [line 164]
!458 = metadata !{i32 786688, metadata !258, metadata !"tol2", metadata !194, i32 164, metadata !202, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [tol2] [line 164]
!459 = metadata !{i32 786688, metadata !258, metadata !"toler", metadata !194, i32 164, metadata !202, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [toler] [line 164]
!460 = metadata !{i32 786688, metadata !258, metadata !"mm", metadata !194, i32 165, metadata !202, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [mm] [line 165]
!461 = metadata !{i32 786688, metadata !258, metadata !"error", metadata !194, i32 166, metadata !199, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [error] [line 166]
!462 = metadata !{i32 786478, metadata !1, metadata !194, metadata !"bshakef", metadata !"bshakef", metadata !"", i32 257, metadata !463, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct._IO_FILE*, i32, float*, i32, i32*, %struct.t_idef*, %struct.t_inputrec*, [3 x float]*, [3 x float]*, [3 x float]*, %struct.t_nrnb*, float, float*, i32)* @bshakef, null, null, metadata !613, i32 260} ; [ DW_TAG_subprogram ] [line 257] [def] [scope 260] [bshakef]
!463 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !464, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!464 = metadata !{metadata !199, metadata !261, metadata !199, metadata !201, metadata !199, metadata !200, metadata !465, metadata !489, metadata !603, metadata !434, metadata !434, metadata !604, metadata !202, metadata !201, metadata !199}
!465 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !466} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from t_idef]
!466 = metadata !{i32 786454, metadata !1, null, metadata !"t_idef", i32 188, i64 0, i64 0, i64 0, i32 0, metadata !467} ; [ DW_TAG_typedef ] [t_idef] [line 188, size 0, align 0, offset 0] [from ]
!467 = metadata !{i32 786451, metadata !4, null, metadata !"", i32 179, i64 366336, i64 64, i32 0, i32 0, null, metadata !468, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 179, size 366336, align 64, offset 0] [from ]
!468 = metadata !{metadata !469, metadata !470, metadata !471, metadata !472, metadata !475, metadata !476}
!469 = metadata !{i32 786445, metadata !4, metadata !467, metadata !"ntypes", i32 181, i64 32, i64 32, i64 0, i32 0, metadata !199} ; [ DW_TAG_member ] [ntypes] [line 181, size 32, align 32, offset 0] [from int]
!470 = metadata !{i32 786445, metadata !4, metadata !467, metadata !"nodeid", i32 182, i64 32, i64 32, i64 32, i32 0, metadata !199} ; [ DW_TAG_member ] [nodeid] [line 182, size 32, align 32, offset 32] [from int]
!471 = metadata !{i32 786445, metadata !4, metadata !467, metadata !"atnr", i32 183, i64 32, i64 32, i64 64, i32 0, metadata !199} ; [ DW_TAG_member ] [atnr] [line 183, size 32, align 32, offset 64] [from int]
!472 = metadata !{i32 786445, metadata !4, metadata !467, metadata !"functype", i32 184, i64 64, i64 64, i64 128, i32 0, metadata !473} ; [ DW_TAG_member ] [functype] [line 184, size 64, align 64, offset 128] [from ]
!473 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !474} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from t_functype]
!474 = metadata !{i32 786454, metadata !4, null, metadata !"t_functype", i32 133, i64 0, i64 0, i64 0, i32 0, metadata !199} ; [ DW_TAG_typedef ] [t_functype] [line 133, size 0, align 0, offset 0] [from int]
!475 = metadata !{i32 786445, metadata !4, metadata !467, metadata !"iparams", i32 185, i64 64, i64 64, i64 192, i32 0, metadata !318} ; [ DW_TAG_member ] [iparams] [line 185, size 64, align 64, offset 192] [from ]
!476 = metadata !{i32 786445, metadata !4, metadata !467, metadata !"il", i32 187, i64 366080, i64 64, i64 256, i32 0, metadata !477} ; [ DW_TAG_member ] [il] [line 187, size 366080, align 64, offset 256] [from ]
!477 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 366080, i64 64, i32 0, i32 0, metadata !478, metadata !487, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 366080, align 64, offset 0] [from t_ilist]
!478 = metadata !{i32 786454, metadata !4, null, metadata !"t_ilist", i32 140, i64 0, i64 0, i64 0, i32 0, metadata !479} ; [ DW_TAG_typedef ] [t_ilist] [line 140, size 0, align 0, offset 0] [from ]
!479 = metadata !{i32 786451, metadata !4, null, metadata !"", i32 135, i64 8320, i64 64, i32 0, i32 0, null, metadata !480, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 135, size 8320, align 64, offset 0] [from ]
!480 = metadata !{metadata !481, metadata !482, metadata !486}
!481 = metadata !{i32 786445, metadata !4, metadata !479, metadata !"nr", i32 137, i64 32, i64 32, i64 0, i32 0, metadata !199} ; [ DW_TAG_member ] [nr] [line 137, size 32, align 32, offset 0] [from int]
!482 = metadata !{i32 786445, metadata !4, metadata !479, metadata !"multinr", i32 138, i64 8192, i64 32, i64 32, i32 0, metadata !483} ; [ DW_TAG_member ] [multinr] [line 138, size 8192, align 32, offset 32] [from ]
!483 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 8192, i64 32, i32 0, i32 0, metadata !199, metadata !484, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 8192, align 32, offset 0] [from int]
!484 = metadata !{metadata !485}
!485 = metadata !{i32 786465, i64 0, i64 256}     ; [ DW_TAG_subrange_type ] [0, 255]
!486 = metadata !{i32 786445, metadata !4, metadata !479, metadata !"iatoms", i32 139, i64 64, i64 64, i64 8256, i32 0, metadata !432} ; [ DW_TAG_member ] [iatoms] [line 139, size 64, align 64, offset 8256] [from ]
!487 = metadata !{metadata !488}
!488 = metadata !{i32 786465, i64 0, i64 44}      ; [ DW_TAG_subrange_type ] [0, 43]
!489 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !490} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from t_inputrec]
!490 = metadata !{i32 786454, metadata !1, null, metadata !"t_inputrec", i32 143, i64 0, i64 0, i64 0, i32 0, metadata !491} ; [ DW_TAG_typedef ] [t_inputrec] [line 143, size 0, align 0, offset 0] [from ]
!491 = metadata !{i32 786451, metadata !492, null, metadata !"", i32 55, i64 4736, i64 64, i32 0, i32 0, null, metadata !493, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 55, size 4736, align 64, offset 0] [from ]
!492 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/435.gromacs/src/types/inputrec.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!493 = metadata !{metadata !494, metadata !495, metadata !496, metadata !497, metadata !498, metadata !499, metadata !500, metadata !501, metadata !502, metadata !503, metadata !504, metadata !505, metadata !506, metadata !507, metadata !508, metadata !509, metadata !510, metadata !511, metadata !512, metadata !513, metadata !514, metadata !515, metadata !516, metadata !517, metadata !518, metadata !519, metadata !520, metadata !521, metadata !522, metadata !523, metadata !524, metadata !525, metadata !529, metadata !530, metadata !531, metadata !532, metadata !533, metadata !534, metadata !535, metadata !536, metadata !537, metadata !538, metadata !539, metadata !540, metadata !541, metadata !542, metadata !543, metadata !544, metadata !545, metadata !546, metadata !547, metadata !548, metadata !549, metadata !550, metadata !551, metadata !552, metadata !553, metadata !554, metadata !555, metadata !556, metadata !557, metadata !558, metadata !559, metadata !560, metadata !561, metadata !562, metadata !563, metadata !564, metadata !565, metadata !566, metadata !567, metadata !568, metadata !569, metadata !570, metadata !571, metadata !572, metadata !573, metadata !574, metadata !575, metadata !576, metadata !577, metadata !594, metadata !602}
!494 = metadata !{i32 786445, metadata !492, metadata !491, metadata !"eI", i32 56, i64 32, i64 32, i64 0, i32 0, metadata !199} ; [ DW_TAG_member ] [eI] [line 56, size 32, align 32, offset 0] [from int]
!495 = metadata !{i32 786445, metadata !492, metadata !491, metadata !"nsteps", i32 57, i64 32, i64 32, i64 32, i32 0, metadata !199} ; [ DW_TAG_member ] [nsteps] [line 57, size 32, align 32, offset 32] [from int]
!496 = metadata !{i32 786445, metadata !492, metadata !491, metadata !"ns_type", i32 58, i64 32, i64 32, i64 64, i32 0, metadata !199} ; [ DW_TAG_member ] [ns_type] [line 58, size 32, align 32, offset 64] [from int]
!497 = metadata !{i32 786445, metadata !492, metadata !491, metadata !"nstlist", i32 59, i64 32, i64 32, i64 96, i32 0, metadata !199} ; [ DW_TAG_member ] [nstlist] [line 59, size 32, align 32, offset 96] [from int]
!498 = metadata !{i32 786445, metadata !492, metadata !491, metadata !"ndelta", i32 60, i64 32, i64 32, i64 128, i32 0, metadata !199} ; [ DW_TAG_member ] [ndelta] [line 60, size 32, align 32, offset 128] [from int]
!499 = metadata !{i32 786445, metadata !492, metadata !491, metadata !"bDomDecomp", i32 61, i64 32, i64 32, i64 160, i32 0, metadata !199} ; [ DW_TAG_member ] [bDomDecomp] [line 61, size 32, align 32, offset 160] [from int]
!500 = metadata !{i32 786445, metadata !492, metadata !491, metadata !"decomp_dir", i32 62, i64 32, i64 32, i64 192, i32 0, metadata !199} ; [ DW_TAG_member ] [decomp_dir] [line 62, size 32, align 32, offset 192] [from int]
!501 = metadata !{i32 786445, metadata !492, metadata !491, metadata !"nstcomm", i32 63, i64 32, i64 32, i64 224, i32 0, metadata !199} ; [ DW_TAG_member ] [nstcomm] [line 63, size 32, align 32, offset 224] [from int]
!502 = metadata !{i32 786445, metadata !492, metadata !491, metadata !"nstlog", i32 65, i64 32, i64 32, i64 256, i32 0, metadata !199} ; [ DW_TAG_member ] [nstlog] [line 65, size 32, align 32, offset 256] [from int]
!503 = metadata !{i32 786445, metadata !492, metadata !491, metadata !"nstxout", i32 66, i64 32, i64 32, i64 288, i32 0, metadata !199} ; [ DW_TAG_member ] [nstxout] [line 66, size 32, align 32, offset 288] [from int]
!504 = metadata !{i32 786445, metadata !492, metadata !491, metadata !"nstvout", i32 67, i64 32, i64 32, i64 320, i32 0, metadata !199} ; [ DW_TAG_member ] [nstvout] [line 67, size 32, align 32, offset 320] [from int]
!505 = metadata !{i32 786445, metadata !492, metadata !491, metadata !"nstfout", i32 68, i64 32, i64 32, i64 352, i32 0, metadata !199} ; [ DW_TAG_member ] [nstfout] [line 68, size 32, align 32, offset 352] [from int]
!506 = metadata !{i32 786445, metadata !492, metadata !491, metadata !"nstenergy", i32 69, i64 32, i64 32, i64 384, i32 0, metadata !199} ; [ DW_TAG_member ] [nstenergy] [line 69, size 32, align 32, offset 384] [from int]
!507 = metadata !{i32 786445, metadata !492, metadata !491, metadata !"nstxtcout", i32 70, i64 32, i64 32, i64 416, i32 0, metadata !199} ; [ DW_TAG_member ] [nstxtcout] [line 70, size 32, align 32, offset 416] [from int]
!508 = metadata !{i32 786445, metadata !492, metadata !491, metadata !"init_t", i32 71, i64 32, i64 32, i64 448, i32 0, metadata !202} ; [ DW_TAG_member ] [init_t] [line 71, size 32, align 32, offset 448] [from real]
!509 = metadata !{i32 786445, metadata !492, metadata !491, metadata !"delta_t", i32 72, i64 32, i64 32, i64 480, i32 0, metadata !202} ; [ DW_TAG_member ] [delta_t] [line 72, size 32, align 32, offset 480] [from real]
!510 = metadata !{i32 786445, metadata !492, metadata !491, metadata !"xtcprec", i32 73, i64 32, i64 32, i64 512, i32 0, metadata !202} ; [ DW_TAG_member ] [xtcprec] [line 73, size 32, align 32, offset 512] [from real]
!511 = metadata !{i32 786445, metadata !492, metadata !491, metadata !"nkx", i32 74, i64 32, i64 32, i64 544, i32 0, metadata !199} ; [ DW_TAG_member ] [nkx] [line 74, size 32, align 32, offset 544] [from int]
!512 = metadata !{i32 786445, metadata !492, metadata !491, metadata !"nky", i32 74, i64 32, i64 32, i64 576, i32 0, metadata !199} ; [ DW_TAG_member ] [nky] [line 74, size 32, align 32, offset 576] [from int]
!513 = metadata !{i32 786445, metadata !492, metadata !491, metadata !"nkz", i32 74, i64 32, i64 32, i64 608, i32 0, metadata !199} ; [ DW_TAG_member ] [nkz] [line 74, size 32, align 32, offset 608] [from int]
!514 = metadata !{i32 786445, metadata !492, metadata !491, metadata !"pme_order", i32 76, i64 32, i64 32, i64 640, i32 0, metadata !199} ; [ DW_TAG_member ] [pme_order] [line 76, size 32, align 32, offset 640] [from int]
!515 = metadata !{i32 786445, metadata !492, metadata !491, metadata !"ewald_rtol", i32 77, i64 32, i64 32, i64 672, i32 0, metadata !202} ; [ DW_TAG_member ] [ewald_rtol] [line 77, size 32, align 32, offset 672] [from real]
!516 = metadata !{i32 786445, metadata !492, metadata !491, metadata !"ewald_geometry", i32 79, i64 32, i64 32, i64 704, i32 0, metadata !199} ; [ DW_TAG_member ] [ewald_geometry] [line 79, size 32, align 32, offset 704] [from int]
!517 = metadata !{i32 786445, metadata !492, metadata !491, metadata !"epsilon_surface", i32 80, i64 32, i64 32, i64 736, i32 0, metadata !199} ; [ DW_TAG_member ] [epsilon_surface] [line 80, size 32, align 32, offset 736] [from int]
!518 = metadata !{i32 786445, metadata !492, metadata !491, metadata !"bOptFFT", i32 81, i64 32, i64 32, i64 768, i32 0, metadata !199} ; [ DW_TAG_member ] [bOptFFT] [line 81, size 32, align 32, offset 768] [from int]
!519 = metadata !{i32 786445, metadata !492, metadata !491, metadata !"ePBC", i32 82, i64 32, i64 32, i64 800, i32 0, metadata !199} ; [ DW_TAG_member ] [ePBC] [line 82, size 32, align 32, offset 800] [from int]
!520 = metadata !{i32 786445, metadata !492, metadata !491, metadata !"bUncStart", i32 83, i64 32, i64 32, i64 832, i32 0, metadata !199} ; [ DW_TAG_member ] [bUncStart] [line 83, size 32, align 32, offset 832] [from int]
!521 = metadata !{i32 786445, metadata !492, metadata !491, metadata !"etc", i32 84, i64 32, i64 32, i64 864, i32 0, metadata !199} ; [ DW_TAG_member ] [etc] [line 84, size 32, align 32, offset 864] [from int]
!522 = metadata !{i32 786445, metadata !492, metadata !491, metadata !"epc", i32 85, i64 32, i64 32, i64 896, i32 0, metadata !199} ; [ DW_TAG_member ] [epc] [line 85, size 32, align 32, offset 896] [from int]
!523 = metadata !{i32 786445, metadata !492, metadata !491, metadata !"epct", i32 86, i64 32, i64 32, i64 928, i32 0, metadata !199} ; [ DW_TAG_member ] [epct] [line 86, size 32, align 32, offset 928] [from int]
!524 = metadata !{i32 786445, metadata !492, metadata !491, metadata !"tau_p", i32 87, i64 32, i64 32, i64 960, i32 0, metadata !202} ; [ DW_TAG_member ] [tau_p] [line 87, size 32, align 32, offset 960] [from real]
!525 = metadata !{i32 786445, metadata !492, metadata !491, metadata !"ref_p", i32 88, i64 288, i64 32, i64 992, i32 0, metadata !526} ; [ DW_TAG_member ] [ref_p] [line 88, size 288, align 32, offset 992] [from tensor]
!526 = metadata !{i32 786454, metadata !492, null, metadata !"tensor", i32 105, i64 0, i64 0, i64 0, i32 0, metadata !527} ; [ DW_TAG_typedef ] [tensor] [line 105, size 0, align 0, offset 0] [from ]
!527 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 288, i64 32, i32 0, i32 0, metadata !202, metadata !528, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 288, align 32, offset 0] [from real]
!528 = metadata !{metadata !392, metadata !392}
!529 = metadata !{i32 786445, metadata !492, metadata !491, metadata !"compress", i32 89, i64 288, i64 32, i64 1280, i32 0, metadata !526} ; [ DW_TAG_member ] [compress] [line 89, size 288, align 32, offset 1280] [from tensor]
!530 = metadata !{i32 786445, metadata !492, metadata !491, metadata !"bSimAnn", i32 90, i64 32, i64 32, i64 1568, i32 0, metadata !199} ; [ DW_TAG_member ] [bSimAnn] [line 90, size 32, align 32, offset 1568] [from int]
!531 = metadata !{i32 786445, metadata !492, metadata !491, metadata !"zero_temp_time", i32 91, i64 32, i64 32, i64 1600, i32 0, metadata !202} ; [ DW_TAG_member ] [zero_temp_time] [line 91, size 32, align 32, offset 1600] [from real]
!532 = metadata !{i32 786445, metadata !492, metadata !491, metadata !"rlist", i32 92, i64 32, i64 32, i64 1632, i32 0, metadata !202} ; [ DW_TAG_member ] [rlist] [line 92, size 32, align 32, offset 1632] [from real]
!533 = metadata !{i32 786445, metadata !492, metadata !491, metadata !"coulombtype", i32 93, i64 32, i64 32, i64 1664, i32 0, metadata !199} ; [ DW_TAG_member ] [coulombtype] [line 93, size 32, align 32, offset 1664] [from int]
!534 = metadata !{i32 786445, metadata !492, metadata !491, metadata !"rcoulomb_switch", i32 94, i64 32, i64 32, i64 1696, i32 0, metadata !202} ; [ DW_TAG_member ] [rcoulomb_switch] [line 94, size 32, align 32, offset 1696] [from real]
!535 = metadata !{i32 786445, metadata !492, metadata !491, metadata !"rcoulomb", i32 95, i64 32, i64 32, i64 1728, i32 0, metadata !202} ; [ DW_TAG_member ] [rcoulomb] [line 95, size 32, align 32, offset 1728] [from real]
!536 = metadata !{i32 786445, metadata !492, metadata !491, metadata !"vdwtype", i32 96, i64 32, i64 32, i64 1760, i32 0, metadata !199} ; [ DW_TAG_member ] [vdwtype] [line 96, size 32, align 32, offset 1760] [from int]
!537 = metadata !{i32 786445, metadata !492, metadata !491, metadata !"rvdw_switch", i32 97, i64 32, i64 32, i64 1792, i32 0, metadata !202} ; [ DW_TAG_member ] [rvdw_switch] [line 97, size 32, align 32, offset 1792] [from real]
!538 = metadata !{i32 786445, metadata !492, metadata !491, metadata !"rvdw", i32 98, i64 32, i64 32, i64 1824, i32 0, metadata !202} ; [ DW_TAG_member ] [rvdw] [line 98, size 32, align 32, offset 1824] [from real]
!539 = metadata !{i32 786445, metadata !492, metadata !491, metadata !"epsilon_r", i32 99, i64 32, i64 32, i64 1856, i32 0, metadata !202} ; [ DW_TAG_member ] [epsilon_r] [line 99, size 32, align 32, offset 1856] [from real]
!540 = metadata !{i32 786445, metadata !492, metadata !491, metadata !"eDispCorr", i32 100, i64 32, i64 32, i64 1888, i32 0, metadata !199} ; [ DW_TAG_member ] [eDispCorr] [line 100, size 32, align 32, offset 1888] [from int]
!541 = metadata !{i32 786445, metadata !492, metadata !491, metadata !"shake_tol", i32 101, i64 32, i64 32, i64 1920, i32 0, metadata !202} ; [ DW_TAG_member ] [shake_tol] [line 101, size 32, align 32, offset 1920] [from real]
!542 = metadata !{i32 786445, metadata !492, metadata !491, metadata !"fudgeQQ", i32 102, i64 32, i64 32, i64 1952, i32 0, metadata !202} ; [ DW_TAG_member ] [fudgeQQ] [line 102, size 32, align 32, offset 1952] [from real]
!543 = metadata !{i32 786445, metadata !492, metadata !491, metadata !"efep", i32 103, i64 32, i64 32, i64 1984, i32 0, metadata !199} ; [ DW_TAG_member ] [efep] [line 103, size 32, align 32, offset 1984] [from int]
!544 = metadata !{i32 786445, metadata !492, metadata !491, metadata !"init_lambda", i32 104, i64 32, i64 32, i64 2016, i32 0, metadata !202} ; [ DW_TAG_member ] [init_lambda] [line 104, size 32, align 32, offset 2016] [from real]
!545 = metadata !{i32 786445, metadata !492, metadata !491, metadata !"delta_lambda", i32 105, i64 32, i64 32, i64 2048, i32 0, metadata !202} ; [ DW_TAG_member ] [delta_lambda] [line 105, size 32, align 32, offset 2048] [from real]
!546 = metadata !{i32 786445, metadata !492, metadata !491, metadata !"sc_alpha", i32 106, i64 32, i64 32, i64 2080, i32 0, metadata !202} ; [ DW_TAG_member ] [sc_alpha] [line 106, size 32, align 32, offset 2080] [from real]
!547 = metadata !{i32 786445, metadata !492, metadata !491, metadata !"sc_sigma", i32 107, i64 32, i64 32, i64 2112, i32 0, metadata !202} ; [ DW_TAG_member ] [sc_sigma] [line 107, size 32, align 32, offset 2112] [from real]
!548 = metadata !{i32 786445, metadata !492, metadata !491, metadata !"dr_fc", i32 108, i64 32, i64 32, i64 2144, i32 0, metadata !202} ; [ DW_TAG_member ] [dr_fc] [line 108, size 32, align 32, offset 2144] [from real]
!549 = metadata !{i32 786445, metadata !492, metadata !491, metadata !"eDisreWeighting", i32 109, i64 32, i64 32, i64 2176, i32 0, metadata !199} ; [ DW_TAG_member ] [eDisreWeighting] [line 109, size 32, align 32, offset 2176] [from int]
!550 = metadata !{i32 786445, metadata !492, metadata !491, metadata !"bDisreMixed", i32 110, i64 32, i64 32, i64 2208, i32 0, metadata !199} ; [ DW_TAG_member ] [bDisreMixed] [line 110, size 32, align 32, offset 2208] [from int]
!551 = metadata !{i32 786445, metadata !492, metadata !491, metadata !"nstdisreout", i32 111, i64 32, i64 32, i64 2240, i32 0, metadata !199} ; [ DW_TAG_member ] [nstdisreout] [line 111, size 32, align 32, offset 2240] [from int]
!552 = metadata !{i32 786445, metadata !492, metadata !491, metadata !"dr_tau", i32 112, i64 32, i64 32, i64 2272, i32 0, metadata !202} ; [ DW_TAG_member ] [dr_tau] [line 112, size 32, align 32, offset 2272] [from real]
!553 = metadata !{i32 786445, metadata !492, metadata !491, metadata !"orires_fc", i32 113, i64 32, i64 32, i64 2304, i32 0, metadata !202} ; [ DW_TAG_member ] [orires_fc] [line 113, size 32, align 32, offset 2304] [from real]
!554 = metadata !{i32 786445, metadata !492, metadata !491, metadata !"orires_tau", i32 114, i64 32, i64 32, i64 2336, i32 0, metadata !202} ; [ DW_TAG_member ] [orires_tau] [line 114, size 32, align 32, offset 2336] [from real]
!555 = metadata !{i32 786445, metadata !492, metadata !491, metadata !"nstorireout", i32 115, i64 32, i64 32, i64 2368, i32 0, metadata !199} ; [ DW_TAG_member ] [nstorireout] [line 115, size 32, align 32, offset 2368] [from int]
!556 = metadata !{i32 786445, metadata !492, metadata !491, metadata !"em_stepsize", i32 116, i64 32, i64 32, i64 2400, i32 0, metadata !202} ; [ DW_TAG_member ] [em_stepsize] [line 116, size 32, align 32, offset 2400] [from real]
!557 = metadata !{i32 786445, metadata !492, metadata !491, metadata !"em_tol", i32 117, i64 32, i64 32, i64 2432, i32 0, metadata !202} ; [ DW_TAG_member ] [em_tol] [line 117, size 32, align 32, offset 2432] [from real]
!558 = metadata !{i32 786445, metadata !492, metadata !491, metadata !"niter", i32 118, i64 32, i64 32, i64 2464, i32 0, metadata !199} ; [ DW_TAG_member ] [niter] [line 118, size 32, align 32, offset 2464] [from int]
!559 = metadata !{i32 786445, metadata !492, metadata !491, metadata !"fc_stepsize", i32 120, i64 32, i64 32, i64 2496, i32 0, metadata !199} ; [ DW_TAG_member ] [fc_stepsize] [line 120, size 32, align 32, offset 2496] [from int]
!560 = metadata !{i32 786445, metadata !492, metadata !491, metadata !"nstcgsteep", i32 122, i64 32, i64 32, i64 2528, i32 0, metadata !199} ; [ DW_TAG_member ] [nstcgsteep] [line 122, size 32, align 32, offset 2528] [from int]
!561 = metadata !{i32 786445, metadata !492, metadata !491, metadata !"eConstrAlg", i32 124, i64 32, i64 32, i64 2560, i32 0, metadata !199} ; [ DW_TAG_member ] [eConstrAlg] [line 124, size 32, align 32, offset 2560] [from int]
!562 = metadata !{i32 786445, metadata !492, metadata !491, metadata !"nProjOrder", i32 125, i64 32, i64 32, i64 2592, i32 0, metadata !199} ; [ DW_TAG_member ] [nProjOrder] [line 125, size 32, align 32, offset 2592] [from int]
!563 = metadata !{i32 786445, metadata !492, metadata !491, metadata !"LincsWarnAngle", i32 126, i64 32, i64 32, i64 2624, i32 0, metadata !202} ; [ DW_TAG_member ] [LincsWarnAngle] [line 126, size 32, align 32, offset 2624] [from real]
!564 = metadata !{i32 786445, metadata !492, metadata !491, metadata !"bShakeSOR", i32 127, i64 32, i64 32, i64 2656, i32 0, metadata !199} ; [ DW_TAG_member ] [bShakeSOR] [line 127, size 32, align 32, offset 2656] [from int]
!565 = metadata !{i32 786445, metadata !492, metadata !491, metadata !"bd_temp", i32 128, i64 32, i64 32, i64 2688, i32 0, metadata !202} ; [ DW_TAG_member ] [bd_temp] [line 128, size 32, align 32, offset 2688] [from real]
!566 = metadata !{i32 786445, metadata !492, metadata !491, metadata !"bd_fric", i32 129, i64 32, i64 32, i64 2720, i32 0, metadata !202} ; [ DW_TAG_member ] [bd_fric] [line 129, size 32, align 32, offset 2720] [from real]
!567 = metadata !{i32 786445, metadata !492, metadata !491, metadata !"ld_seed", i32 130, i64 32, i64 32, i64 2752, i32 0, metadata !199} ; [ DW_TAG_member ] [ld_seed] [line 130, size 32, align 32, offset 2752] [from int]
!568 = metadata !{i32 786445, metadata !492, metadata !491, metadata !"cos_accel", i32 131, i64 32, i64 32, i64 2784, i32 0, metadata !202} ; [ DW_TAG_member ] [cos_accel] [line 131, size 32, align 32, offset 2784] [from real]
!569 = metadata !{i32 786445, metadata !492, metadata !491, metadata !"userint1", i32 132, i64 32, i64 32, i64 2816, i32 0, metadata !199} ; [ DW_TAG_member ] [userint1] [line 132, size 32, align 32, offset 2816] [from int]
!570 = metadata !{i32 786445, metadata !492, metadata !491, metadata !"userint2", i32 133, i64 32, i64 32, i64 2848, i32 0, metadata !199} ; [ DW_TAG_member ] [userint2] [line 133, size 32, align 32, offset 2848] [from int]
!571 = metadata !{i32 786445, metadata !492, metadata !491, metadata !"userint3", i32 134, i64 32, i64 32, i64 2880, i32 0, metadata !199} ; [ DW_TAG_member ] [userint3] [line 134, size 32, align 32, offset 2880] [from int]
!572 = metadata !{i32 786445, metadata !492, metadata !491, metadata !"userint4", i32 135, i64 32, i64 32, i64 2912, i32 0, metadata !199} ; [ DW_TAG_member ] [userint4] [line 135, size 32, align 32, offset 2912] [from int]
!573 = metadata !{i32 786445, metadata !492, metadata !491, metadata !"userreal1", i32 136, i64 32, i64 32, i64 2944, i32 0, metadata !202} ; [ DW_TAG_member ] [userreal1] [line 136, size 32, align 32, offset 2944] [from real]
!574 = metadata !{i32 786445, metadata !492, metadata !491, metadata !"userreal2", i32 137, i64 32, i64 32, i64 2976, i32 0, metadata !202} ; [ DW_TAG_member ] [userreal2] [line 137, size 32, align 32, offset 2976] [from real]
!575 = metadata !{i32 786445, metadata !492, metadata !491, metadata !"userreal3", i32 138, i64 32, i64 32, i64 3008, i32 0, metadata !202} ; [ DW_TAG_member ] [userreal3] [line 138, size 32, align 32, offset 3008] [from real]
!576 = metadata !{i32 786445, metadata !492, metadata !491, metadata !"userreal4", i32 139, i64 32, i64 32, i64 3040, i32 0, metadata !202} ; [ DW_TAG_member ] [userreal4] [line 139, size 32, align 32, offset 3040] [from real]
!577 = metadata !{i32 786445, metadata !492, metadata !491, metadata !"opts", i32 140, i64 512, i64 64, i64 3072, i32 0, metadata !578} ; [ DW_TAG_member ] [opts] [line 140, size 512, align 64, offset 3072] [from t_grpopts]
!578 = metadata !{i32 786454, metadata !492, null, metadata !"t_grpopts", i32 53, i64 0, i64 0, i64 0, i32 0, metadata !579} ; [ DW_TAG_typedef ] [t_grpopts] [line 53, size 0, align 0, offset 0] [from ]
!579 = metadata !{i32 786451, metadata !492, null, metadata !"", i32 42, i64 512, i64 64, i32 0, i32 0, null, metadata !580, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 42, size 512, align 64, offset 0] [from ]
!580 = metadata !{metadata !581, metadata !582, metadata !583, metadata !584, metadata !585, metadata !586, metadata !587, metadata !588, metadata !589, metadata !593}
!581 = metadata !{i32 786445, metadata !492, metadata !579, metadata !"ngtc", i32 43, i64 32, i64 32, i64 0, i32 0, metadata !199} ; [ DW_TAG_member ] [ngtc] [line 43, size 32, align 32, offset 0] [from int]
!582 = metadata !{i32 786445, metadata !492, metadata !579, metadata !"ngacc", i32 44, i64 32, i64 32, i64 32, i32 0, metadata !199} ; [ DW_TAG_member ] [ngacc] [line 44, size 32, align 32, offset 32] [from int]
!583 = metadata !{i32 786445, metadata !492, metadata !579, metadata !"ngfrz", i32 45, i64 32, i64 32, i64 64, i32 0, metadata !199} ; [ DW_TAG_member ] [ngfrz] [line 45, size 32, align 32, offset 64] [from int]
!584 = metadata !{i32 786445, metadata !492, metadata !579, metadata !"ngener", i32 46, i64 32, i64 32, i64 96, i32 0, metadata !199} ; [ DW_TAG_member ] [ngener] [line 46, size 32, align 32, offset 96] [from int]
!585 = metadata !{i32 786445, metadata !492, metadata !579, metadata !"nrdf", i32 47, i64 64, i64 64, i64 128, i32 0, metadata !201} ; [ DW_TAG_member ] [nrdf] [line 47, size 64, align 64, offset 128] [from ]
!586 = metadata !{i32 786445, metadata !492, metadata !579, metadata !"ref_t", i32 48, i64 64, i64 64, i64 192, i32 0, metadata !201} ; [ DW_TAG_member ] [ref_t] [line 48, size 64, align 64, offset 192] [from ]
!587 = metadata !{i32 786445, metadata !492, metadata !579, metadata !"tau_t", i32 49, i64 64, i64 64, i64 256, i32 0, metadata !201} ; [ DW_TAG_member ] [tau_t] [line 49, size 64, align 64, offset 256] [from ]
!588 = metadata !{i32 786445, metadata !492, metadata !579, metadata !"acc", i32 50, i64 64, i64 64, i64 320, i32 0, metadata !434} ; [ DW_TAG_member ] [acc] [line 50, size 64, align 64, offset 320] [from ]
!589 = metadata !{i32 786445, metadata !492, metadata !579, metadata !"nFreeze", i32 51, i64 64, i64 64, i64 384, i32 0, metadata !590} ; [ DW_TAG_member ] [nFreeze] [line 51, size 64, align 64, offset 384] [from ]
!590 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !591} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ivec]
!591 = metadata !{i32 786454, metadata !492, null, metadata !"ivec", i32 107, i64 0, i64 0, i64 0, i32 0, metadata !592} ; [ DW_TAG_typedef ] [ivec] [line 107, size 0, align 0, offset 0] [from ]
!592 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 96, i64 32, i32 0, i32 0, metadata !199, metadata !391, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 96, align 32, offset 0] [from int]
!593 = metadata !{i32 786445, metadata !492, metadata !579, metadata !"eg_excl", i32 52, i64 64, i64 64, i64 448, i32 0, metadata !200} ; [ DW_TAG_member ] [eg_excl] [line 52, size 64, align 64, offset 448] [from ]
!594 = metadata !{i32 786445, metadata !492, metadata !491, metadata !"ex", i32 141, i64 576, i64 64, i64 3584, i32 0, metadata !595} ; [ DW_TAG_member ] [ex] [line 141, size 576, align 64, offset 3584] [from ]
!595 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 576, i64 64, i32 0, i32 0, metadata !596, metadata !391, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 576, align 64, offset 0] [from t_cosines]
!596 = metadata !{i32 786454, metadata !492, null, metadata !"t_cosines", i32 40, i64 0, i64 0, i64 0, i32 0, metadata !597} ; [ DW_TAG_typedef ] [t_cosines] [line 40, size 0, align 0, offset 0] [from ]
!597 = metadata !{i32 786451, metadata !492, null, metadata !"", i32 36, i64 192, i64 64, i32 0, i32 0, null, metadata !598, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 36, size 192, align 64, offset 0] [from ]
!598 = metadata !{metadata !599, metadata !600, metadata !601}
!599 = metadata !{i32 786445, metadata !492, metadata !597, metadata !"n", i32 37, i64 32, i64 32, i64 0, i32 0, metadata !199} ; [ DW_TAG_member ] [n] [line 37, size 32, align 32, offset 0] [from int]
!600 = metadata !{i32 786445, metadata !492, metadata !597, metadata !"a", i32 38, i64 64, i64 64, i64 64, i32 0, metadata !201} ; [ DW_TAG_member ] [a] [line 38, size 64, align 64, offset 64] [from ]
!601 = metadata !{i32 786445, metadata !492, metadata !597, metadata !"phi", i32 39, i64 64, i64 64, i64 128, i32 0, metadata !201} ; [ DW_TAG_member ] [phi] [line 39, size 64, align 64, offset 128] [from ]
!602 = metadata !{i32 786445, metadata !492, metadata !491, metadata !"et", i32 142, i64 576, i64 64, i64 4160, i32 0, metadata !595} ; [ DW_TAG_member ] [et] [line 142, size 576, align 64, offset 4160] [from ]
!603 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !390} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!604 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !605} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from t_nrnb]
!605 = metadata !{i32 786454, metadata !1, null, metadata !"t_nrnb", i32 95, i64 0, i64 0, i64 0, i32 0, metadata !606} ; [ DW_TAG_typedef ] [t_nrnb] [line 95, size 0, align 0, offset 0] [from ]
!606 = metadata !{i32 786451, metadata !58, null, metadata !"", i32 93, i64 8256, i64 64, i32 0, i32 0, null, metadata !607, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 93, size 8256, align 64, offset 0] [from ]
!607 = metadata !{metadata !608}
!608 = metadata !{i32 786445, metadata !58, metadata !606, metadata !"n", i32 94, i64 8256, i64 64, i64 0, i32 0, metadata !609} ; [ DW_TAG_member ] [n] [line 94, size 8256, align 64, offset 0] [from ]
!609 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 8256, i64 64, i32 0, i32 0, metadata !610, metadata !611, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 8256, align 64, offset 0] [from double]
!610 = metadata !{i32 786468, null, null, metadata !"double", i32 0, i64 64, i64 64, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [double] [line 0, size 64, align 64, offset 0, enc DW_ATE_float]
!611 = metadata !{metadata !612}
!612 = metadata !{i32 786465, i64 0, i64 129}     ; [ DW_TAG_subrange_type ] [0, 128]
!613 = metadata !{metadata !614, metadata !615, metadata !616, metadata !617, metadata !618, metadata !619, metadata !620, metadata !621, metadata !622, metadata !623, metadata !624, metadata !625, metadata !626, metadata !627, metadata !628, metadata !629, metadata !630, metadata !631, metadata !632, metadata !633, metadata !634, metadata !635, metadata !636, metadata !637, metadata !638}
!614 = metadata !{i32 786689, metadata !462, metadata !"log", metadata !194, i32 16777473, metadata !261, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [log] [line 257]
!615 = metadata !{i32 786689, metadata !462, metadata !"natoms", metadata !194, i32 33554689, metadata !199, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [natoms] [line 257]
!616 = metadata !{i32 786689, metadata !462, metadata !"invmass", metadata !194, i32 50331905, metadata !201, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [invmass] [line 257]
!617 = metadata !{i32 786689, metadata !462, metadata !"nblocks", metadata !194, i32 67109121, metadata !199, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nblocks] [line 257]
!618 = metadata !{i32 786689, metadata !462, metadata !"sblock", metadata !194, i32 83886337, metadata !200, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [sblock] [line 257]
!619 = metadata !{i32 786689, metadata !462, metadata !"idef", metadata !194, i32 100663554, metadata !465, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [idef] [line 258]
!620 = metadata !{i32 786689, metadata !462, metadata !"ir", metadata !194, i32 117440770, metadata !489, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ir] [line 258]
!621 = metadata !{i32 786689, metadata !462, metadata !"box", metadata !194, i32 134217986, metadata !603, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [box] [line 258]
!622 = metadata !{i32 786689, metadata !462, metadata !"x_s", metadata !194, i32 150995202, metadata !434, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [x_s] [line 258]
!623 = metadata !{i32 786689, metadata !462, metadata !"xp", metadata !194, i32 167772418, metadata !434, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [xp] [line 258]
!624 = metadata !{i32 786689, metadata !462, metadata !"nrnb", metadata !194, i32 184549635, metadata !604, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nrnb] [line 259]
!625 = metadata !{i32 786689, metadata !462, metadata !"lambda", metadata !194, i32 201326851, metadata !202, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [lambda] [line 259]
!626 = metadata !{i32 786689, metadata !462, metadata !"dvdlambda", metadata !194, i32 218104067, metadata !201, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dvdlambda] [line 259]
!627 = metadata !{i32 786689, metadata !462, metadata !"bDumpOnError", metadata !194, i32 234881283, metadata !199, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [bDumpOnError] [line 259]
!628 = metadata !{i32 786688, metadata !462, metadata !"iatoms", metadata !194, i32 268, metadata !432, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [iatoms] [line 268]
!629 = metadata !{i32 786688, metadata !462, metadata !"lam", metadata !194, i32 269, metadata !201, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [lam] [line 269]
!630 = metadata !{i32 786688, metadata !462, metadata !"dt_2", metadata !194, i32 269, metadata !202, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dt_2] [line 269]
!631 = metadata !{i32 786688, metadata !462, metadata !"dvdl", metadata !194, i32 269, metadata !202, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dvdl] [line 269]
!632 = metadata !{i32 786688, metadata !462, metadata !"i", metadata !194, i32 270, metadata !199, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 270]
!633 = metadata !{i32 786688, metadata !462, metadata !"n0", metadata !194, i32 270, metadata !199, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [n0] [line 270]
!634 = metadata !{i32 786688, metadata !462, metadata !"ncons", metadata !194, i32 270, metadata !199, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ncons] [line 270]
!635 = metadata !{i32 786688, metadata !462, metadata !"blen", metadata !194, i32 270, metadata !199, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [blen] [line 270]
!636 = metadata !{i32 786688, metadata !462, metadata !"type", metadata !194, i32 270, metadata !199, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [type] [line 270]
!637 = metadata !{i32 786688, metadata !462, metadata !"tnit", metadata !194, i32 271, metadata !199, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [tnit] [line 271]
!638 = metadata !{i32 786688, metadata !462, metadata !"trij", metadata !194, i32 271, metadata !199, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [trij] [line 271]
!639 = metadata !{i32 786478, metadata !1, metadata !194, metadata !"check_cons", metadata !"check_cons", metadata !"", i32 229, metadata !640, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !642, i32 232} ; [ DW_TAG_subprogram ] [line 229] [local] [def] [scope 232] [check_cons]
!640 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !641, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!641 = metadata !{null, metadata !261, metadata !199, metadata !434, metadata !434, metadata !318, metadata !432, metadata !201}
!642 = metadata !{metadata !643, metadata !644, metadata !645, metadata !646, metadata !647, metadata !648, metadata !649, metadata !650, metadata !651, metadata !652, metadata !653, metadata !654, metadata !655, metadata !656}
!643 = metadata !{i32 786689, metadata !639, metadata !"log", metadata !194, i32 16777445, metadata !261, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [log] [line 229]
!644 = metadata !{i32 786689, metadata !639, metadata !"nc", metadata !194, i32 33554661, metadata !199, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nc] [line 229]
!645 = metadata !{i32 786689, metadata !639, metadata !"x", metadata !194, i32 50331877, metadata !434, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [x] [line 229]
!646 = metadata !{i32 786689, metadata !639, metadata !"xp", metadata !194, i32 67109093, metadata !434, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [xp] [line 229]
!647 = metadata !{i32 786689, metadata !639, metadata !"ip", metadata !194, i32 83886310, metadata !318, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ip] [line 230]
!648 = metadata !{i32 786689, metadata !639, metadata !"iatom", metadata !194, i32 100663526, metadata !432, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [iatom] [line 230]
!649 = metadata !{i32 786689, metadata !639, metadata !"invmass", metadata !194, i32 117440743, metadata !201, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [invmass] [line 231]
!650 = metadata !{i32 786688, metadata !639, metadata !"ia", metadata !194, i32 233, metadata !432, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ia] [line 233]
!651 = metadata !{i32 786688, metadata !639, metadata !"ai", metadata !194, i32 234, metadata !199, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ai] [line 234]
!652 = metadata !{i32 786688, metadata !639, metadata !"aj", metadata !194, i32 234, metadata !199, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [aj] [line 234]
!653 = metadata !{i32 786688, metadata !639, metadata !"i", metadata !194, i32 235, metadata !199, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 235]
!654 = metadata !{i32 786688, metadata !639, metadata !"d", metadata !194, i32 236, metadata !202, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [d] [line 236]
!655 = metadata !{i32 786688, metadata !639, metadata !"dp", metadata !194, i32 236, metadata !202, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dp] [line 236]
!656 = metadata !{i32 786688, metadata !639, metadata !"dx", metadata !194, i32 237, metadata !435, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dx] [line 237]
!657 = metadata !{i32 786478, metadata !658, metadata !659, metadata !"norm", metadata !"norm", metadata !"", i32 358, metadata !660, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !662, i32 359} ; [ DW_TAG_subprogram ] [line 358] [local] [def] [scope 359] [norm]
!658 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/435.gromacs/src/vec.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!659 = metadata !{i32 786473, metadata !658}      ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/vec.h]
!660 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !661, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!661 = metadata !{metadata !202, metadata !201}
!662 = metadata !{metadata !663}
!663 = metadata !{i32 786689, metadata !657, metadata !"a", metadata !659, i32 16777574, metadata !201, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [a] [line 358]
!664 = metadata !{i32 786478, metadata !658, metadata !659, metadata !"rvec_sub", metadata !"rvec_sub", metadata !"", i32 244, metadata !665, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !668, i32 245} ; [ DW_TAG_subprogram ] [line 244] [local] [def] [scope 245] [rvec_sub]
!665 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !666, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!666 = metadata !{null, metadata !667, metadata !667, metadata !201}
!667 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !219} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!668 = metadata !{metadata !669, metadata !670, metadata !671, metadata !672, metadata !673, metadata !674}
!669 = metadata !{i32 786689, metadata !664, metadata !"a", metadata !659, i32 16777460, metadata !667, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [a] [line 244]
!670 = metadata !{i32 786689, metadata !664, metadata !"b", metadata !659, i32 33554676, metadata !667, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [b] [line 244]
!671 = metadata !{i32 786689, metadata !664, metadata !"c", metadata !659, i32 50331892, metadata !201, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [c] [line 244]
!672 = metadata !{i32 786688, metadata !664, metadata !"x", metadata !659, i32 246, metadata !202, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [x] [line 246]
!673 = metadata !{i32 786688, metadata !664, metadata !"y", metadata !659, i32 246, metadata !202, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [y] [line 246]
!674 = metadata !{i32 786688, metadata !664, metadata !"z", metadata !659, i32 246, metadata !202, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [z] [line 246]
!675 = metadata !{i32 786478, metadata !658, metadata !659, metadata !"sqr", metadata !"sqr", metadata !"", i32 197, metadata !676, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !678, i32 198} ; [ DW_TAG_subprogram ] [line 197] [local] [def] [scope 198] [sqr]
!676 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !677, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!677 = metadata !{metadata !202, metadata !202}
!678 = metadata !{metadata !679}
!679 = metadata !{i32 786689, metadata !675, metadata !"x", metadata !659, i32 16777413, metadata !202, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [x] [line 197]
!680 = metadata !{metadata !681, metadata !682, metadata !683, metadata !684, metadata !685, metadata !686, metadata !687, metadata !688, metadata !689, metadata !690, metadata !691}
!681 = metadata !{i32 786484, i32 0, metadata !194, metadata !"mytol", metadata !"mytol", metadata !"mytol", metadata !194, i32 69, metadata !219, i32 1, i32 1, float 0x3EB0C6F7A0000000, null} ; [ DW_TAG_variable ] [mytol] [line 69] [local] [def]
!682 = metadata !{i32 786484, i32 0, metadata !258, metadata !"rij", metadata !"rij", metadata !"", metadata !194, i32 158, metadata !434, i32 1, i32 1, [3 x float]** @vec_shakef.rij, null} ; [ DW_TAG_variable ] [rij] [line 158] [local] [def]
!683 = metadata !{i32 786484, i32 0, metadata !258, metadata !"M2", metadata !"M2", metadata !"", metadata !194, i32 159, metadata !201, i32 1, i32 1, float** @vec_shakef.M2, null} ; [ DW_TAG_variable ] [M2] [line 159] [local] [def]
!684 = metadata !{i32 786484, i32 0, metadata !258, metadata !"tt", metadata !"tt", metadata !"", metadata !194, i32 159, metadata !201, i32 1, i32 1, float** @vec_shakef.tt, null} ; [ DW_TAG_variable ] [tt] [line 159] [local] [def]
!685 = metadata !{i32 786484, i32 0, metadata !258, metadata !"dist2", metadata !"dist2", metadata !"", metadata !194, i32 159, metadata !201, i32 1, i32 1, float** @vec_shakef.dist2, null} ; [ DW_TAG_variable ] [dist2] [line 159] [local] [def]
!686 = metadata !{i32 786484, i32 0, metadata !258, metadata !"maxcon", metadata !"maxcon", metadata !"", metadata !194, i32 160, metadata !199, i32 1, i32 1, i32* @vec_shakef.maxcon, null} ; [ DW_TAG_variable ] [maxcon] [line 160] [local] [def]
!687 = metadata !{i32 786484, i32 0, metadata !462, metadata !"bFirst", metadata !"bFirst", metadata !"", metadata !194, i32 261, metadata !199, i32 1, i32 1, null, null}
!688 = metadata !{i32 786484, i32 0, metadata !462, metadata !"lagr", metadata !"lagr", metadata !"", metadata !194, i32 262, metadata !201, i32 1, i32 1, float** @bshakef.lagr, null} ; [ DW_TAG_variable ] [lagr] [line 262] [local] [def]
!689 = metadata !{i32 786484, i32 0, metadata !462, metadata !"delta", metadata !"delta", metadata !"", metadata !194, i32 264, metadata !202, i32 1, i32 1, float* @bshakef.delta, null} ; [ DW_TAG_variable ] [delta] [line 264] [local] [def]
!690 = metadata !{i32 786484, i32 0, metadata !462, metadata !"omega", metadata !"omega", metadata !"", metadata !194, i32 265, metadata !202, i32 1, i32 1, float* @bshakef.omega, null} ; [ DW_TAG_variable ] [omega] [line 265] [local] [def]
!691 = metadata !{i32 786484, i32 0, metadata !462, metadata !"gamma", metadata !"gamma", metadata !"", metadata !194, i32 266, metadata !199, i32 1, i32 1, i32* @bshakef.gamma, null} ; [ DW_TAG_variable ] [gamma] [line 266] [local] [def]
!692 = metadata !{i32 59, i32 0, metadata !193, null}
!693 = metadata !{i32 60, i32 0, metadata !193, null}
!694 = metadata !{i32 61, i32 0, metadata !193, null}
!695 = metadata !{float 0x3EB0C6F7A0000000}
!696 = metadata !{i32 69, i32 0, metadata !193, null}
!697 = metadata !{i32 79, i32 0, metadata !193, null}
!698 = metadata !{i32 1}
!699 = metadata !{i32 80, i32 0, metadata !193, null}
!700 = metadata !{i32 81, i32 0, metadata !701, null}
!701 = metadata !{i32 786443, metadata !1, metadata !193, i32 81, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/shakef.c]
!702 = metadata !{i32 83, i32 0, metadata !703, null}
!703 = metadata !{i32 786443, metadata !1, metadata !704, i32 83, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/shakef.c]
!704 = metadata !{i32 786443, metadata !1, metadata !701, i32 81, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/shakef.c]
!705 = metadata !{i32 84, i32 0, metadata !706, null}
!706 = metadata !{i32 786443, metadata !1, metadata !703, i32 83, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/shakef.c]
!707 = metadata !{i32 85, i32 0, metadata !706, null}
!708 = metadata !{metadata !"float", metadata !709}
!709 = metadata !{metadata !"omnipotent char", metadata !710}
!710 = metadata !{metadata !"Simple C/C++ TBAA"}
!711 = metadata !{i32 86, i32 0, metadata !706, null}
!712 = metadata !{i32 87, i32 0, metadata !706, null}
!713 = metadata !{i32 88, i32 0, metadata !706, null}
!714 = metadata !{metadata !"int", metadata !709}
!715 = metadata !{i32 89, i32 0, metadata !706, null}
!716 = metadata !{i32 90, i32 0, metadata !706, null}
!717 = metadata !{i32 91, i32 0, metadata !706, null}
!718 = metadata !{i32 92, i32 0, metadata !706, null}
!719 = metadata !{i32 93, i32 0, metadata !706, null}
!720 = metadata !{i32 94, i32 0, metadata !706, null}
!721 = metadata !{i32 95, i32 0, metadata !706, null}
!722 = metadata !{i32 96, i32 0, metadata !706, null}
!723 = metadata !{i32 97, i32 0, metadata !706, null}
!724 = metadata !{i32 99, i32 0, metadata !706, null}
!725 = metadata !{i32 100, i32 0, metadata !706, null}
!726 = metadata !{i32 101, i32 0, metadata !706, null}
!727 = metadata !{i32 102, i32 0, metadata !706, null}
!728 = metadata !{i32 103, i32 0, metadata !706, null}
!729 = metadata !{i32 104, i32 0, metadata !706, null}
!730 = metadata !{i32 107, i32 0, metadata !706, null}
!731 = metadata !{i32 109, i32 0, metadata !706, null}
!732 = metadata !{i32 110, i32 0, metadata !733, null}
!733 = metadata !{i32 786443, metadata !1, metadata !706, i32 109, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/shakef.c]
!734 = metadata !{i32 111, i32 0, metadata !733, null}
!735 = metadata !{i32 113, i32 0, metadata !733, null}
!736 = metadata !{i32 116, i32 0, metadata !737, null}
!737 = metadata !{i32 786443, metadata !1, metadata !733, i32 115, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/shakef.c]
!738 = metadata !{i32 117, i32 0, metadata !737, null}
!739 = metadata !{i32 118, i32 0, metadata !737, null}
!740 = metadata !{i32 119, i32 0, metadata !737, null}
!741 = metadata !{i32 120, i32 0, metadata !737, null}
!742 = metadata !{i32 121, i32 0, metadata !737, null}
!743 = metadata !{i32 122, i32 0, metadata !737, null}
!744 = metadata !{i32 123, i32 0, metadata !737, null}
!745 = metadata !{i32 124, i32 0, metadata !746, null}
!746 = metadata !{i32 786443, metadata !1, metadata !737, i32 123, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/shakef.c]
!747 = metadata !{i32 125, i32 0, metadata !746, null}
!748 = metadata !{i32 126, i32 0, metadata !746, null}
!749 = metadata !{i32 127, i32 0, metadata !746, null}
!750 = metadata !{i32 128, i32 0, metadata !746, null}
!751 = metadata !{i32 129, i32 0, metadata !746, null}
!752 = metadata !{i32 130, i32 0, metadata !746, null}
!753 = metadata !{i32 131, i32 0, metadata !737, null}
!754 = metadata !{i32 132, i32 0, metadata !755, null}
!755 = metadata !{i32 786443, metadata !1, metadata !737, i32 131, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/shakef.c]
!756 = metadata !{i32 133, i32 0, metadata !755, null}
!757 = metadata !{i32 134, i32 0, metadata !755, null}
!758 = metadata !{i32 135, i32 0, metadata !755, null}
!759 = metadata !{i32 136, i32 0, metadata !737, null}
!760 = metadata !{i32 137, i32 0, metadata !761, null}
!761 = metadata !{i32 786443, metadata !1, metadata !737, i32 136, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/shakef.c]
!762 = metadata !{i32 138, i32 0, metadata !761, null}
!763 = metadata !{i32 139, i32 0, metadata !761, null}
!764 = metadata !{i32 140, i32 0, metadata !761, null}
!765 = metadata !{i32 142, i32 0, metadata !737, null}
!766 = metadata !{i32 148, i32 0, metadata !193, null}
!767 = metadata !{i32 149, i32 0, metadata !193, null}
!768 = metadata !{i32 150, i32 0, metadata !193, null}
!769 = metadata !{i32 152, i32 0, metadata !258, null}
!770 = metadata !{i32 153, i32 0, metadata !258, null}
!771 = metadata !{i32 154, i32 0, metadata !258, null}
!772 = metadata !{i32 155, i32 0, metadata !258, null}
!773 = metadata !{i32 156, i32 0, metadata !258, null}
!774 = metadata !{i32 161, i32 0, metadata !258, null}
!775 = metadata !{i32 1000}
!776 = metadata !{i32 162, i32 0, metadata !258, null}
!777 = metadata !{i32 166, i32 0, metadata !258, null}
!778 = metadata !{i32 168, i32 0, metadata !258, null}
!779 = metadata !{i32 169, i32 0, metadata !780, null}
!780 = metadata !{i32 786443, metadata !1, metadata !258, i32 168, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/shakef.c]
!781 = metadata !{metadata !"any pointer", metadata !709}
!782 = metadata !{i32 170, i32 0, metadata !780, null}
!783 = metadata !{i32 171, i32 0, metadata !780, null}
!784 = metadata !{i32 172, i32 0, metadata !780, null}
!785 = metadata !{i32 173, i32 0, metadata !780, null}
!786 = metadata !{i32 177, i32 0, metadata !780, null}
!787 = metadata !{i32 179, i32 0, metadata !258, null}
!788 = metadata !{i32 180, i32 0, metadata !258, null}
!789 = metadata !{i32 181, i32 0, metadata !258, null}
!790 = metadata !{i32 182, i32 0, metadata !791, null}
!791 = metadata !{i32 786443, metadata !1, metadata !258, i32 182, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/shakef.c]
!792 = metadata !{i32 206, i32 0, metadata !258, null}
!793 = metadata !{i32 188, i32 0, metadata !794, null}
!794 = metadata !{i32 786443, metadata !1, metadata !791, i32 182, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/shakef.c]
!795 = metadata !{i32 191, i32 0, metadata !794, null}
!796 = metadata !{i32 192, i32 0, metadata !794, null}
!797 = metadata !{i32 196, i32 0, metadata !794, null}
!798 = metadata !{i32 197, i32 0, metadata !794, null}
!799 = metadata !{i32 183, i32 0, metadata !794, null}
!800 = metadata !{i32 184, i32 0, metadata !794, null}
!801 = metadata !{i32 185, i32 0, metadata !794, null}
!802 = metadata !{i32 187, i32 0, metadata !794, null}
!803 = metadata !{i32 189, i32 0, metadata !794, null}
!804 = metadata !{i32 190, i32 0, metadata !794, null}
!805 = metadata !{i32 195, i32 0, metadata !794, null}
!806 = metadata !{i32 193, i32 0, metadata !794, null}
!807 = metadata !{i32 786689, metadata !675, metadata !"x", metadata !659, i32 16777413, metadata !202, i32 0, metadata !806} ; [ DW_TAG_arg_variable ] [x] [line 197]
!808 = metadata !{i32 197, i32 0, metadata !675, metadata !806}
!809 = metadata !{i32 199, i32 0, metadata !675, metadata !806}
!810 = metadata !{i32 786689, metadata !675, metadata !"x", metadata !659, i32 16777413, metadata !202, i32 0, metadata !805} ; [ DW_TAG_arg_variable ] [x] [line 197]
!811 = metadata !{i32 197, i32 0, metadata !675, metadata !805}
!812 = metadata !{i32 199, i32 0, metadata !675, metadata !805}
!813 = metadata !{i32 213, i32 0, metadata !258, null}
!814 = metadata !{i32 214, i32 0, metadata !815, null}
!815 = metadata !{i32 786443, metadata !1, metadata !258, i32 213, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/shakef.c]
!816 = metadata !{i32 215, i32 0, metadata !815, null}
!817 = metadata !{i32 216, i32 0, metadata !815, null}
!818 = metadata !{i32 217, i32 0, metadata !815, null}
!819 = metadata !{i32 218, i32 0, metadata !258, null}
!820 = metadata !{i32 219, i32 0, metadata !821, null}
!821 = metadata !{i32 786443, metadata !1, metadata !258, i32 218, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/shakef.c]
!822 = metadata !{i32 220, i32 0, metadata !821, null}
!823 = metadata !{i32 223, i32 0, metadata !821, null}
!824 = metadata !{i32 224, i32 0, metadata !821, null}
!825 = metadata !{i32 226, i32 0, metadata !258, null}
!826 = metadata !{i32 257, i32 0, metadata !462, null}
!827 = metadata !{i32 258, i32 0, metadata !462, null}
!828 = metadata !{i32 259, i32 0, metadata !462, null}
!829 = metadata !{i32 271, i32 0, metadata !462, null}
!830 = metadata !{i32 276, i32 0, metadata !462, null}
!831 = metadata !{i32 277, i32 0, metadata !462, null}
!832 = metadata !{i32 278, i32 0, metadata !833, null}
!833 = metadata !{i32 786443, metadata !1, metadata !462, i32 277, i32 0, i32 14} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/shakef.c]
!834 = metadata !{i32 279, i32 0, metadata !833, null}
!835 = metadata !{i32 280, i32 0, metadata !833, null}
!836 = metadata !{i32 282, i32 0, metadata !833, null}
!837 = metadata !{i32 283, i32 0, metadata !838, null}
!838 = metadata !{i32 786443, metadata !1, metadata !462, i32 283, i32 0, i32 15} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/shakef.c]
!839 = metadata !{i32 284, i32 0, metadata !838, null}
!840 = metadata !{i32 286, i32 0, metadata !462, null}
!841 = metadata !{i32 287, i32 0, metadata !462, null}
!842 = metadata !{i32 288, i32 0, metadata !843, null}
!843 = metadata !{i32 786443, metadata !1, metadata !462, i32 288, i32 0, i32 16} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/shakef.c]
!844 = metadata !{i32 309, i32 0, metadata !462, null}
!845 = metadata !{i32 291, i32 0, metadata !846, null}
!846 = metadata !{i32 786443, metadata !1, metadata !843, i32 288, i32 0, i32 17} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/shakef.c]
!847 = metadata !{i32 289, i32 0, metadata !846, null}
!848 = metadata !{i32 290, i32 0, metadata !846, null}
!849 = metadata !{i32 298, i32 0, metadata !846, null}
!850 = metadata !{i32 299, i32 0, metadata !851, null}
!851 = metadata !{i32 786443, metadata !1, metadata !846, i32 298, i32 0, i32 18} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/shakef.c]
!852 = metadata !{i32 300, i32 0, metadata !851, null}
!853 = metadata !{i32 786689, metadata !639, metadata !"log", metadata !194, i32 16777445, metadata !261, i32 0, metadata !852} ; [ DW_TAG_arg_variable ] [log] [line 229]
!854 = metadata !{i32 229, i32 0, metadata !639, metadata !852}
!855 = metadata !{i32 786689, metadata !639, metadata !"nc", metadata !194, i32 33554661, metadata !199, i32 0, metadata !852} ; [ DW_TAG_arg_variable ] [nc] [line 229]
!856 = metadata !{i32 786689, metadata !639, metadata !"x", metadata !194, i32 50331877, metadata !434, i32 0, metadata !852} ; [ DW_TAG_arg_variable ] [x] [line 229]
!857 = metadata !{i32 786689, metadata !639, metadata !"xp", metadata !194, i32 67109093, metadata !434, i32 0, metadata !852} ; [ DW_TAG_arg_variable ] [xp] [line 229]
!858 = metadata !{i32 786689, metadata !639, metadata !"ip", metadata !194, i32 83886310, metadata !318, i32 0, metadata !852} ; [ DW_TAG_arg_variable ] [ip] [line 230]
!859 = metadata !{i32 230, i32 0, metadata !639, metadata !852}
!860 = metadata !{i32 786689, metadata !639, metadata !"iatom", metadata !194, i32 100663526, metadata !432, i32 0, metadata !852} ; [ DW_TAG_arg_variable ] [iatom] [line 230]
!861 = metadata !{i32 786689, metadata !639, metadata !"invmass", metadata !194, i32 117440743, metadata !201, i32 0, metadata !852} ; [ DW_TAG_arg_variable ] [invmass] [line 231]
!862 = metadata !{i32 231, i32 0, metadata !639, metadata !852}
!863 = metadata !{[3 x float]* undef}
!864 = metadata !{i32 237, i32 0, metadata !639, metadata !852}
!865 = metadata !{i32 239, i32 0, metadata !639, metadata !852}
!866 = metadata !{i32 240, i32 0, metadata !639, metadata !852}
!867 = metadata !{i32 243, i32 0, metadata !868, metadata !852}
!868 = metadata !{i32 786443, metadata !1, metadata !639, i32 243, i32 0, i32 24} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/shakef.c]
!869 = metadata !{i32 244, i32 0, metadata !870, metadata !852}
!870 = metadata !{i32 786443, metadata !1, metadata !868, i32 243, i32 0, i32 25} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/shakef.c]
!871 = metadata !{i32 786688, metadata !639, metadata !"ai", metadata !194, i32 234, metadata !199, i32 0, metadata !852} ; [ DW_TAG_auto_variable ] [ai] [line 234]
!872 = metadata !{i32 245, i32 0, metadata !870, metadata !852}
!873 = metadata !{i32 786688, metadata !639, metadata !"aj", metadata !194, i32 234, metadata !199, i32 0, metadata !852} ; [ DW_TAG_auto_variable ] [aj] [line 234]
!874 = metadata !{i32 246, i32 0, metadata !870, metadata !852}
!875 = metadata !{i32 786689, metadata !664, metadata !"a", metadata !659, i32 16777460, metadata !667, i32 0, metadata !874} ; [ DW_TAG_arg_variable ] [a] [line 244]
!876 = metadata !{i32 244, i32 0, metadata !664, metadata !874}
!877 = metadata !{i32 786689, metadata !664, metadata !"b", metadata !659, i32 33554676, metadata !667, i32 0, metadata !874} ; [ DW_TAG_arg_variable ] [b] [line 244]
!878 = metadata !{float* undef}
!879 = metadata !{i32 786689, metadata !664, metadata !"c", metadata !659, i32 50331892, metadata !201, i32 0, metadata !874} ; [ DW_TAG_arg_variable ] [c] [line 244]
!880 = metadata !{i32 248, i32 0, metadata !664, metadata !874}
!881 = metadata !{i32 786688, metadata !664, metadata !"x", metadata !659, i32 246, metadata !202, i32 0, metadata !874} ; [ DW_TAG_auto_variable ] [x] [line 246]
!882 = metadata !{i32 249, i32 0, metadata !664, metadata !874}
!883 = metadata !{i32 786688, metadata !664, metadata !"y", metadata !659, i32 246, metadata !202, i32 0, metadata !874} ; [ DW_TAG_auto_variable ] [y] [line 246]
!884 = metadata !{i32 250, i32 0, metadata !664, metadata !874}
!885 = metadata !{i32 786688, metadata !664, metadata !"z", metadata !659, i32 246, metadata !202, i32 0, metadata !874} ; [ DW_TAG_auto_variable ] [z] [line 246]
!886 = metadata !{i32 786689, metadata !657, metadata !"a", metadata !659, i32 16777574, metadata !201, i32 0, metadata !887} ; [ DW_TAG_arg_variable ] [a] [line 358]
!887 = metadata !{i32 247, i32 0, metadata !870, metadata !852}
!888 = metadata !{i32 358, i32 0, metadata !657, metadata !887}
!889 = metadata !{i32 360, i32 0, metadata !890, metadata !887}
!890 = metadata !{i32 786443, metadata !658, metadata !657} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/vec.h]
!891 = metadata !{i32 786688, metadata !639, metadata !"d", metadata !194, i32 236, metadata !202, i32 0, metadata !852} ; [ DW_TAG_auto_variable ] [d] [line 236]
!892 = metadata !{i32 248, i32 0, metadata !870, metadata !852}
!893 = metadata !{i32 786689, metadata !664, metadata !"a", metadata !659, i32 16777460, metadata !667, i32 0, metadata !892} ; [ DW_TAG_arg_variable ] [a] [line 244]
!894 = metadata !{i32 244, i32 0, metadata !664, metadata !892}
!895 = metadata !{i32 786689, metadata !664, metadata !"b", metadata !659, i32 33554676, metadata !667, i32 0, metadata !892} ; [ DW_TAG_arg_variable ] [b] [line 244]
!896 = metadata !{i32 786689, metadata !664, metadata !"c", metadata !659, i32 50331892, metadata !201, i32 0, metadata !892} ; [ DW_TAG_arg_variable ] [c] [line 244]
!897 = metadata !{i32 248, i32 0, metadata !664, metadata !892}
!898 = metadata !{i32 786688, metadata !664, metadata !"x", metadata !659, i32 246, metadata !202, i32 0, metadata !892} ; [ DW_TAG_auto_variable ] [x] [line 246]
!899 = metadata !{i32 249, i32 0, metadata !664, metadata !892}
!900 = metadata !{i32 786688, metadata !664, metadata !"y", metadata !659, i32 246, metadata !202, i32 0, metadata !892} ; [ DW_TAG_auto_variable ] [y] [line 246]
!901 = metadata !{i32 250, i32 0, metadata !664, metadata !892}
!902 = metadata !{i32 786688, metadata !664, metadata !"z", metadata !659, i32 246, metadata !202, i32 0, metadata !892} ; [ DW_TAG_auto_variable ] [z] [line 246]
!903 = metadata !{i32 786689, metadata !657, metadata !"a", metadata !659, i32 16777574, metadata !201, i32 0, metadata !904} ; [ DW_TAG_arg_variable ] [a] [line 358]
!904 = metadata !{i32 249, i32 0, metadata !870, metadata !852}
!905 = metadata !{i32 358, i32 0, metadata !657, metadata !904}
!906 = metadata !{i32 360, i32 0, metadata !890, metadata !904}
!907 = metadata !{i32 786688, metadata !639, metadata !"dp", metadata !194, i32 236, metadata !202, i32 0, metadata !852} ; [ DW_TAG_auto_variable ] [dp] [line 236]
!908 = metadata !{i32 250, i32 0, metadata !870, metadata !852}
!909 = metadata !{i32 251, i32 0, metadata !870, metadata !852}
!910 = metadata !{i32 786688, metadata !639, metadata !"i", metadata !194, i32 235, metadata !199, i32 0, metadata !852} ; [ DW_TAG_auto_variable ] [i] [line 235]
!911 = metadata !{i32 786688, metadata !639, metadata !"ia", metadata !194, i32 233, metadata !432, i32 0, metadata !852} ; [ DW_TAG_auto_variable ] [ia] [line 233]
!912 = metadata !{i32 303, i32 0, metadata !846, null}
!913 = metadata !{i32 304, i32 0, metadata !846, null}
!914 = metadata !{i32 305, i32 0, metadata !846, null}
!915 = metadata !{i32 306, i32 0, metadata !846, null}
!916 = metadata !{i32 310, i32 0, metadata !917, null}
!917 = metadata !{i32 786443, metadata !1, metadata !462, i32 309, i32 0, i32 19} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/shakef.c]
!918 = metadata !{i32 786689, metadata !675, metadata !"x", metadata !659, i32 16777413, metadata !202, i32 0, metadata !916} ; [ DW_TAG_arg_variable ] [x] [line 197]
!919 = metadata !{i32 197, i32 0, metadata !675, metadata !916}
!920 = metadata !{i32 199, i32 0, metadata !675, metadata !916}
!921 = metadata !{float 0.000000e+00}
!922 = metadata !{i32 311, i32 0, metadata !917, null}
!923 = metadata !{i32 312, i32 0, metadata !924, null}
!924 = metadata !{i32 786443, metadata !1, metadata !917, i32 312, i32 0, i32 20} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/shakef.c]
!925 = metadata !{i32 313, i32 0, metadata !926, null}
!926 = metadata !{i32 786443, metadata !1, metadata !924, i32 312, i32 0, i32 21} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/shakef.c]
!927 = metadata !{i32 314, i32 0, metadata !926, null}
!928 = metadata !{i32 317, i32 0, metadata !917, null}
!929 = metadata !{i32 318, i32 0, metadata !917, null}
!930 = metadata !{i32 322, i32 0, metadata !462, null}
!931 = metadata !{i32 323, i32 0, metadata !932, null}
!932 = metadata !{i32 786443, metadata !1, metadata !462, i32 322, i32 0, i32 22} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/shakef.c]
!933 = metadata !{i32 324, i32 0, metadata !934, null}
!934 = metadata !{i32 786443, metadata !1, metadata !932, i32 323, i32 0, i32 23} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/shakef.c]
!935 = metadata !{i32 325, i32 0, metadata !934, null}
!936 = metadata !{i32 326, i32 0, metadata !932, null}
!937 = metadata !{i32 327, i32 0, metadata !932, null}
!938 = metadata !{i32 328, i32 0, metadata !932, null}
!939 = metadata !{i32 329, i32 0, metadata !462, null}
!940 = metadata !{metadata !"double", metadata !709}
!941 = metadata !{i32 330, i32 0, metadata !462, null}
!942 = metadata !{i32 332, i32 0, metadata !462, null}
