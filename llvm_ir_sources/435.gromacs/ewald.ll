; ModuleID = '../../SPEC/benchspec/CPU2006/435.gromacs/src/ewald.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.t_complex = type { float, float }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.t_inputrec = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, float, float, float, i32, i32, i32, i32, float, i32, i32, i32, i32, i32, i32, i32, i32, float, [3 x [3 x float]], [3 x [3 x float]], i32, float, float, i32, float, float, i32, float, float, float, i32, float, float, i32, float, float, float, float, float, i32, i32, i32, float, float, float, i32, float, float, i32, i32, i32, i32, i32, float, i32, float, float, i32, float, i32, i32, i32, i32, float, float, float, float, %struct.t_grpopts, [3 x %struct.t_cosines], [3 x %struct.t_cosines] }
%struct.t_grpopts = type { i32, i32, i32, i32, float*, float*, float*, [3 x float]*, [3 x i32]*, i32* }
%struct.t_cosines = type { i32, float*, float* }
%struct.t_commrec = type { i32, i32, i32, i32, i32, i32 }
%struct.t_nsborder = type { i32, i32, i32, i32, i32, i32, i32, [256 x i32], [256 x i32], [256 x i32], [256 x i32] }

@do_ewald.bFirst = internal unnamed_addr global i1 false
@do_ewald.nx = internal unnamed_addr global i32 0, align 4
@do_ewald.ny = internal unnamed_addr global i32 0, align 4
@do_ewald.nz = internal unnamed_addr global i32 0, align 4
@do_ewald.kmax = internal unnamed_addr global i32 0, align 4
@do_ewald.eir = internal unnamed_addr global [3 x %struct.t_complex]** null, align 8
@do_ewald.tab_xy = internal unnamed_addr global %struct.t_complex* null, align 8
@do_ewald.tab_qxyz = internal unnamed_addr global %struct.t_complex* null, align 8
@.str = private unnamed_addr constant [46 x i8] c"Will do ordinary reciprocal space Ewald sum.\0A\00", align 1
@.str1 = private unnamed_addr constant [37 x i8] c"No parallel Ewald. Use PME instead.\0A\00", align 1
@.str2 = private unnamed_addr constant [4 x i8] c"eir\00", align 1
@.str3 = private unnamed_addr constant [53 x i8] c"../../SPEC/benchspec/CPU2006/435.gromacs/src/ewald.c\00", align 1
@.str4 = private unnamed_addr constant [7 x i8] c"eir[n]\00", align 1
@.str5 = private unnamed_addr constant [7 x i8] c"tab_xy\00", align 1
@.str6 = private unnamed_addr constant [9 x i8] c"tab_qxyz\00", align 1
@.str7 = private unnamed_addr constant [20 x i8] c"Go away! kmax = %d\0A\00", align 1

; Function Attrs: nounwind optsize uwtable
define float @do_ewald(%struct._IO_FILE* nocapture %log, i32 %bVerbose, %struct.t_inputrec* nocapture %ir, [3 x float]* nocapture %x, [3 x float]* nocapture %f, float* nocapture %charge, float* nocapture %box, %struct.t_commrec* %cr, %struct.t_nsborder* nocapture %nsb, [3 x float]* nocapture %lrvir, float %ewaldcoeff) #0 {
entry:
  %lll = alloca [3 x float], align 4
  %mul = fmul float %ewaldcoeff, 4.000000e+00
  %mul1 = fmul float %mul, %ewaldcoeff
  %conv2 = fdiv float -1.000000e+00, %mul1
  %.b = load i1* @do_ewald.bFirst, align 1
  br i1 %.b, label %entry.if.end54_crit_edge, label %if.then

entry.if.end54_crit_edge:                         ; preds = %entry
  %nodeid55.pre = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 0
  br label %if.end54

if.then:                                          ; preds = %entry
  %tobool11 = icmp eq i32 %bVerbose, 0
  br i1 %tobool11, label %if.end, label %if.then12

if.then12:                                        ; preds = %if.then
  %0 = call i64 @fwrite(i8* getelementptr inbounds ([46 x i8]* @.str, i64 0, i64 0), i64 45, i64 1, %struct._IO_FILE* %log)
  br label %if.end

if.end:                                           ; preds = %if.then, %if.then12
  %cmp = icmp eq %struct.t_commrec* %cr, null
  br i1 %cmp, label %if.end21, label %if.then14

if.then14:                                        ; preds = %if.end
  %nnodes = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 1
  %1 = load i32* %nnodes, align 4, !tbaa !0
  %cmp15 = icmp sgt i32 %1, 1
  br i1 %cmp15, label %if.then19, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then14
  %nthreads = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 5
  %2 = load i32* %nthreads, align 4, !tbaa !0
  %cmp17 = icmp sgt i32 %2, 1
  br i1 %cmp17, label %if.then19, label %if.end21

if.then19:                                        ; preds = %lor.lhs.false, %if.then14
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([37 x i8]* @.str1, i64 0, i64 0)) #5
  br label %if.end21

if.end21:                                         ; preds = %if.end, %lor.lhs.false, %if.then19
  %nkx = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 17
  %3 = load i32* %nkx, align 4, !tbaa !0
  %add = add nsw i32 %3, 1
  store i32 %add, i32* @do_ewald.nx, align 4, !tbaa !0
  %nky = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 18
  %4 = load i32* %nky, align 4, !tbaa !0
  %add22 = add nsw i32 %4, 1
  store i32 %add22, i32* @do_ewald.ny, align 4, !tbaa !0
  %nkz = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 19
  %5 = load i32* %nkz, align 4, !tbaa !0
  %add23 = add nsw i32 %5, 1
  store i32 %add23, i32* @do_ewald.nz, align 4, !tbaa !0
  %cmp24 = icmp sgt i32 %add22, %add23
  %cond = select i1 %cmp24, i32 %add22, i32 %add23
  %cmp26 = icmp sgt i32 %add, %cond
  %.cond = select i1 %cmp26, i32 %add, i32 %cond
  store i32 %.cond, i32* @do_ewald.kmax, align 4, !tbaa !0
  %call38 = call i8* @save_calloc(i8* getelementptr inbounds ([4 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str3, i64 0, i64 0), i32 124, i32 %.cond, i32 8) #5
  %6 = bitcast i8* %call38 to [3 x %struct.t_complex]**
  store [3 x %struct.t_complex]** %6, [3 x %struct.t_complex]*** @do_ewald.eir, align 8, !tbaa !3
  %7 = load i32* @do_ewald.kmax, align 4, !tbaa !0
  %cmp39718 = icmp sgt i32 %7, 0
  %nodeid = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 0
  %8 = load i32* %nodeid, align 4, !tbaa !0
  %idxprom719 = sext i32 %8 to i64
  %arrayidx720 = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 7, i64 %idxprom719
  %9 = load i32* %arrayidx720, align 4, !tbaa !0
  br i1 %cmp39718, label %for.body, label %for.end

for.body:                                         ; preds = %if.end21, %for.body
  %indvars.iv753 = phi i64 [ %indvars.iv.next754, %for.body ], [ 0, %if.end21 ]
  %10 = phi i32 [ %16, %for.body ], [ %9, %if.end21 ]
  %call41 = call i8* @save_calloc(i8* getelementptr inbounds ([7 x i8]* @.str4, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str3, i64 0, i64 0), i32 126, i32 %10, i32 24) #5
  %11 = bitcast i8* %call41 to [3 x %struct.t_complex]*
  %12 = load [3 x %struct.t_complex]*** @do_ewald.eir, align 8, !tbaa !3
  %arrayidx43 = getelementptr inbounds [3 x %struct.t_complex]** %12, i64 %indvars.iv753
  store [3 x %struct.t_complex]* %11, [3 x %struct.t_complex]** %arrayidx43, align 8, !tbaa !3
  %indvars.iv.next754 = add i64 %indvars.iv753, 1
  %13 = load i32* @do_ewald.kmax, align 4, !tbaa !0
  %14 = trunc i64 %indvars.iv.next754 to i32
  %cmp39 = icmp slt i32 %14, %13
  %15 = load i32* %nodeid, align 4, !tbaa !0
  %idxprom = sext i32 %15 to i64
  %arrayidx = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 7, i64 %idxprom
  %16 = load i32* %arrayidx, align 4, !tbaa !0
  br i1 %cmp39, label %for.body, label %for.end

for.end:                                          ; preds = %for.body, %if.end21
  %.lcssa = phi i32 [ %9, %if.end21 ], [ %16, %for.body ]
  %call48 = call i8* @save_calloc(i8* getelementptr inbounds ([7 x i8]* @.str5, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str3, i64 0, i64 0), i32 127, i32 %.lcssa, i32 8) #5
  %17 = bitcast i8* %call48 to %struct.t_complex*
  store %struct.t_complex* %17, %struct.t_complex** @do_ewald.tab_xy, align 8, !tbaa !3
  %18 = load i32* %nodeid, align 4, !tbaa !0
  %idxprom50 = sext i32 %18 to i64
  %arrayidx52 = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 7, i64 %idxprom50
  %19 = load i32* %arrayidx52, align 4, !tbaa !0
  %call53 = call i8* @save_calloc(i8* getelementptr inbounds ([9 x i8]* @.str6, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str3, i64 0, i64 0), i32 128, i32 %19, i32 8) #5
  %20 = bitcast i8* %call53 to %struct.t_complex*
  store %struct.t_complex* %20, %struct.t_complex** @do_ewald.tab_qxyz, align 8, !tbaa !3
  store i1 true, i1* @do_ewald.bFirst, align 1
  br label %if.end54

if.end54:                                         ; preds = %entry.if.end54_crit_edge, %for.end
  %nodeid55.pre-phi = phi i32* [ %nodeid55.pre, %entry.if.end54_crit_edge ], [ %nodeid, %for.end ]
  %21 = bitcast [3 x float]* %lrvir to i8*
  call void @llvm.memset.p0i8.i64(i8* %21, i8 0, i64 36, i32 4, i1 false) #4
  %arraydecay = getelementptr inbounds [3 x float]* %lll, i64 0, i64 0
  %22 = load float* %box, align 4, !tbaa !4
  %conv.i634 = fpext float %22 to double
  %div.i = fdiv double 0x401921FB54442D18, %conv.i634
  %conv1.i = fptrunc double %div.i to float
  store float %conv1.i, float* %arraydecay, align 4, !tbaa !4
  %arrayidx3.i = getelementptr inbounds float* %box, i64 1
  %23 = load float* %arrayidx3.i, align 4, !tbaa !4
  %conv4.i = fpext float %23 to double
  %div5.i = fdiv double 0x401921FB54442D18, %conv4.i
  %conv6.i = fptrunc double %div5.i to float
  %arrayidx7.i = getelementptr inbounds [3 x float]* %lll, i64 0, i64 1
  store float %conv6.i, float* %arrayidx7.i, align 4, !tbaa !4
  %arrayidx8.i = getelementptr inbounds float* %box, i64 2
  %24 = load float* %arrayidx8.i, align 4, !tbaa !4
  %conv9.i = fpext float %24 to double
  %div10.i = fdiv double 0x401921FB54442D18, %conv9.i
  %conv11.i = fptrunc double %div10.i to float
  %arrayidx12.i = getelementptr inbounds [3 x float]* %lll, i64 0, i64 2
  store float %conv11.i, float* %arrayidx12.i, align 4, !tbaa !4
  %25 = load i32* %nodeid55.pre-phi, align 4, !tbaa !0
  %idxprom56 = sext i32 %25 to i64
  %arrayidx58 = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 7, i64 %idxprom56
  %26 = load i32* %arrayidx58, align 4, !tbaa !0
  %27 = load i32* @do_ewald.kmax, align 4, !tbaa !0
  %28 = load [3 x %struct.t_complex]*** @do_ewald.eir, align 8, !tbaa !3
  %cmp.i = icmp slt i32 %27, 1
  br i1 %cmp.i, label %if.then.i, label %for.cond.preheader.i

for.cond.preheader.i:                             ; preds = %if.end54
  %cmp1128.i = icmp sgt i32 %26, 0
  br i1 %cmp1128.i, label %for.cond2.preheader.lr.ph.i, label %for.cond60.preheader

for.cond2.preheader.lr.ph.i:                      ; preds = %for.cond.preheader.i
  %arrayidx26.i = getelementptr inbounds [3 x %struct.t_complex]** %28, i64 1
  %cmp50126.i = icmp sgt i32 %27, 2
  br label %for.cond2.preheader.i

if.then.i:                                        ; preds = %if.end54
  %call.i = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([20 x i8]* @.str7, i64 0, i64 0), i32 %27) #5
  call void @exit(i32 1) #6
  unreachable

for.cond2.preheader.i:                            ; preds = %for.inc81.i, %for.cond2.preheader.lr.ph.i
  %indvars.iv144.i = phi i64 [ 0, %for.cond2.preheader.lr.ph.i ], [ %indvars.iv.next145.i, %for.inc81.i ]
  %29 = load [3 x %struct.t_complex]** %28, align 8, !tbaa !3
  br label %for.body4.i

for.body4.i:                                      ; preds = %for.body4.i, %for.cond2.preheader.i
  %indvars.iv.i = phi i64 [ 0, %for.cond2.preheader.i ], [ %indvars.iv.next.i, %for.body4.i ]
  %re.i = getelementptr inbounds [3 x %struct.t_complex]* %29, i64 %indvars.iv144.i, i64 %indvars.iv.i, i32 0
  store float 1.000000e+00, float* %re.i, align 4, !tbaa !4
  %im.i = getelementptr inbounds [3 x %struct.t_complex]* %29, i64 %indvars.iv144.i, i64 %indvars.iv.i, i32 1
  store float 0.000000e+00, float* %im.i, align 4, !tbaa !4
  %indvars.iv.next.i = add i64 %indvars.iv.i, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next.i to i32
  %exitcond = icmp eq i32 %lftr.wideiv, 3
  br i1 %exitcond, label %for.body15.i, label %for.body4.i

for.body15.i:                                     ; preds = %for.body15.i, %for.body4.i
  %indvars.iv131.i = phi i64 [ 0, %for.body4.i ], [ %indvars.iv.next132.i, %for.body15.i ]
  %arrayidx19.i = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv144.i, i64 %indvars.iv131.i
  %30 = load float* %arrayidx19.i, align 4, !tbaa !4
  %arrayidx21.i = getelementptr inbounds [3 x float]* %lll, i64 0, i64 %indvars.iv131.i
  %31 = load float* %arrayidx21.i, align 4, !tbaa !4
  %mul.i633 = fmul float %30, %31
  %conv.i = fpext float %mul.i633 to double
  %call22.i = call double @cos(double %conv.i) #5
  %conv23.i = fptrunc double %call22.i to float
  %32 = load [3 x %struct.t_complex]** %arrayidx26.i, align 8, !tbaa !3
  %re29.i = getelementptr inbounds [3 x %struct.t_complex]* %32, i64 %indvars.iv144.i, i64 %indvars.iv131.i, i32 0
  store float %conv23.i, float* %re29.i, align 4, !tbaa !4
  %33 = load float* %arrayidx19.i, align 4, !tbaa !4
  %mul36.i = fmul float %33, %31
  %conv37.i = fpext float %mul36.i to double
  %call38.i = call double @sin(double %conv37.i) #5
  %conv39.i = fptrunc double %call38.i to float
  %34 = load [3 x %struct.t_complex]** %arrayidx26.i, align 8, !tbaa !3
  %im45.i = getelementptr inbounds [3 x %struct.t_complex]* %34, i64 %indvars.iv144.i, i64 %indvars.iv131.i, i32 1
  store float %conv39.i, float* %im45.i, align 4, !tbaa !4
  %indvars.iv.next132.i = add i64 %indvars.iv131.i, 1
  %lftr.wideiv744 = trunc i64 %indvars.iv.next132.i to i32
  %exitcond745 = icmp eq i32 %lftr.wideiv744, 3
  br i1 %exitcond745, label %for.cond49.loopexit.i, label %for.body15.i

for.cond49.loopexit.i:                            ; preds = %for.body15.i
  br i1 %cmp50126.i, label %for.cond53.preheader.i, label %for.inc81.i

for.cond53.preheader.i:                           ; preds = %for.cond49.loopexit.i, %for.inc78.i
  %indvars.iv139.i = phi i64 [ %indvars.iv.next140.i, %for.inc78.i ], [ 2, %for.cond49.loopexit.i ]
  %arrayidx60.i = getelementptr inbounds [3 x %struct.t_complex]** %28, i64 %indvars.iv139.i
  %35 = add nsw i64 %indvars.iv139.i, -1
  %arrayidx66.i = getelementptr inbounds [3 x %struct.t_complex]** %28, i64 %35
  br label %for.body56.i

for.body56.i:                                     ; preds = %for.body56.i, %for.cond53.preheader.i
  %indvars.iv135.i = phi i64 [ 0, %for.cond53.preheader.i ], [ %indvars.iv.next136.i, %for.body56.i ]
  %36 = load [3 x %struct.t_complex]** %arrayidx60.i, align 8, !tbaa !3
  %arrayidx62.i = getelementptr inbounds [3 x %struct.t_complex]* %36, i64 %indvars.iv144.i, i64 %indvars.iv135.i
  %37 = load [3 x %struct.t_complex]** %arrayidx66.i, align 8, !tbaa !3
  %arrayidx68.i = getelementptr inbounds [3 x %struct.t_complex]* %37, i64 %indvars.iv144.i, i64 %indvars.iv135.i
  %38 = load [3 x %struct.t_complex]** %arrayidx26.i, align 8, !tbaa !3
  %arrayidx73.i = getelementptr inbounds [3 x %struct.t_complex]* %38, i64 %indvars.iv144.i, i64 %indvars.iv135.i
  %39 = bitcast %struct.t_complex* %arrayidx68.i to <2 x float>*
  %40 = load <2 x float>* %39, align 1
  %41 = bitcast %struct.t_complex* %arrayidx73.i to <2 x float>*
  %42 = load <2 x float>* %41, align 1
  %a.sroa.0.0.vec.extract.i.i = extractelement <2 x float> %40, i32 0
  %b.sroa.0.0.vec.extract.i.i = extractelement <2 x float> %42, i32 0
  %mul.i.i = fmul float %a.sroa.0.0.vec.extract.i.i, %b.sroa.0.0.vec.extract.i.i
  %a.sroa.0.4.vec.extract.i.i = extractelement <2 x float> %40, i32 1
  %b.sroa.0.4.vec.extract.i.i = extractelement <2 x float> %42, i32 1
  %mul3.i.i = fmul float %a.sroa.0.4.vec.extract.i.i, %b.sroa.0.4.vec.extract.i.i
  %sub.i.i = fsub float %mul.i.i, %mul3.i.i
  %mul7.i.i = fmul float %a.sroa.0.0.vec.extract.i.i, %b.sroa.0.4.vec.extract.i.i
  %mul10.i.i = fmul float %a.sroa.0.4.vec.extract.i.i, %b.sroa.0.0.vec.extract.i.i
  %add.i.i = fadd float %mul7.i.i, %mul10.i.i
  %retval.sroa.0.0.vec.insert.i.i = insertelement <2 x float> undef, float %sub.i.i, i32 0
  %retval.sroa.0.4.vec.insert.i.i = insertelement <2 x float> %retval.sroa.0.0.vec.insert.i.i, float %add.i.i, i32 1
  %coerce.sroa.0.0.cast.i = bitcast %struct.t_complex* %arrayidx62.i to <2 x float>*
  store <2 x float> %retval.sroa.0.4.vec.insert.i.i, <2 x float>* %coerce.sroa.0.0.cast.i, align 4
  %indvars.iv.next136.i = add i64 %indvars.iv135.i, 1
  %lftr.wideiv746 = trunc i64 %indvars.iv.next136.i to i32
  %exitcond747 = icmp eq i32 %lftr.wideiv746, 3
  br i1 %exitcond747, label %for.inc78.i, label %for.body56.i

for.inc78.i:                                      ; preds = %for.body56.i
  %indvars.iv.next140.i = add i64 %indvars.iv139.i, 1
  %lftr.wideiv748 = trunc i64 %indvars.iv.next140.i to i32
  %exitcond749 = icmp eq i32 %lftr.wideiv748, %27
  br i1 %exitcond749, label %for.inc81.i, label %for.cond53.preheader.i

for.inc81.i:                                      ; preds = %for.inc78.i, %for.cond49.loopexit.i
  %indvars.iv.next145.i = add i64 %indvars.iv144.i, 1
  %lftr.wideiv750 = trunc i64 %indvars.iv.next145.i to i32
  %exitcond751 = icmp eq i32 %lftr.wideiv750, %26
  br i1 %exitcond751, label %for.cond60.preheader, label %for.cond2.preheader.i

for.cond60.preheader:                             ; preds = %for.inc81.i, %for.cond.preheader.i
  %43 = load i32* @do_ewald.nx, align 4, !tbaa !0
  %cmp61706 = icmp sgt i32 %43, 0
  br i1 %cmp61706, label %for.body63.lr.ph, label %for.end312

for.body63.lr.ph:                                 ; preds = %for.cond60.preheader
  %44 = load float* %arraydecay, align 4, !tbaa !4
  %conv149 = fpext float %conv2 to double
  %arrayidx239 = getelementptr inbounds [3 x float]* %lrvir, i64 0, i64 0
  %arrayidx244 = getelementptr inbounds [3 x float]* %lrvir, i64 0, i64 1
  %arrayidx249 = getelementptr inbounds [3 x float]* %lrvir, i64 0, i64 2
  %arrayidx254 = getelementptr inbounds [3 x float]* %lrvir, i64 1, i64 1
  %arrayidx259 = getelementptr inbounds [3 x float]* %lrvir, i64 1, i64 2
  %arrayidx264 = getelementptr inbounds [3 x float]* %lrvir, i64 2, i64 2
  %.pre756 = load i32* @do_ewald.ny, align 4, !tbaa !0
  br label %for.body63

for.body63:                                       ; preds = %for.inc310, %for.body63.lr.ph
  %45 = phi i32 [ %.pre756, %for.body63.lr.ph ], [ %127, %for.inc310 ]
  %46 = phi i32 [ %43, %for.body63.lr.ph ], [ %128, %for.inc310 ]
  %indvars.iv742 = phi i64 [ 0, %for.body63.lr.ph ], [ %indvars.iv.next743, %for.inc310 ]
  %energy.0710 = phi float [ 0.000000e+00, %for.body63.lr.ph ], [ %energy.1.lcssa, %for.inc310 ]
  %lowiy.0709 = phi i32 [ 0, %for.body63.lr.ph ], [ %lowiy.1.lcssa, %for.inc310 ]
  %lowiz.0708 = phi i32 [ 1, %for.body63.lr.ph ], [ %lowiz.1.lcssa, %for.inc310 ]
  %47 = trunc i64 %indvars.iv742 to i32
  %conv64 = sitofp i32 %47 to float
  %mul66 = fmul float %conv64, %44
  %cmp68687 = icmp slt i32 %lowiy.0709, %45
  br i1 %cmp68687, label %for.body70.lr.ph, label %for.inc310

for.body70.lr.ph:                                 ; preds = %for.body63
  %mul134 = fmul float %mul66, %mul66
  %48 = sext i32 %lowiy.0709 to i64
  br label %for.body70

for.body70:                                       ; preds = %for.body70.lr.ph, %for.end305
  %49 = phi i32 [ %45, %for.body70.lr.ph ], [ %125, %for.end305 ]
  %indvars.iv740 = phi i64 [ %48, %for.body70.lr.ph ], [ %indvars.iv.next741, %for.end305 ]
  %energy.1690 = phi float [ %energy.0710, %for.body70.lr.ph ], [ %energy.2.lcssa, %for.end305 ]
  %lowiz.1689 = phi i32 [ %lowiz.0708, %for.body70.lr.ph ], [ %lowiz.2.lcssa, %for.end305 ]
  %50 = trunc i64 %indvars.iv740 to i32
  %conv71 = sitofp i32 %50 to float
  %mul73 = fmul float %conv71, %conv6.i
  %cmp74 = icmp sgt i32 %50, -1
  %51 = load i32* %nodeid55.pre-phi, align 4, !tbaa !0
  %idxprom79644 = sext i32 %51 to i64
  %arrayidx81645 = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 7, i64 %idxprom79644
  %52 = load i32* %arrayidx81645, align 4, !tbaa !0
  %cmp82646 = icmp sgt i32 %52, 0
  br i1 %cmp74, label %for.cond77.preheader, label %for.cond101.preheader

for.cond77.preheader:                             ; preds = %for.body70
  br i1 %cmp82646, label %for.body84, label %if.end126

for.cond101.preheader:                            ; preds = %for.body70
  br i1 %cmp82646, label %for.body108.lr.ph, label %if.end126

for.body108.lr.ph:                                ; preds = %for.cond101.preheader
  %sub = sub i64 0, %indvars.iv740
  %sext757 = shl i64 %sub, 32
  %idxprom117 = ashr exact i64 %sext757, 32
  br label %for.body108

for.body84:                                       ; preds = %for.body84, %for.cond77.preheader
  %indvars.iv726 = phi i64 [ 0, %for.cond77.preheader ], [ %indvars.iv.next727, %for.body84 ]
  %53 = load %struct.t_complex** @do_ewald.tab_xy, align 8, !tbaa !3
  %arrayidx86 = getelementptr inbounds %struct.t_complex* %53, i64 %indvars.iv726
  %54 = load [3 x %struct.t_complex]*** @do_ewald.eir, align 8, !tbaa !3
  %arrayidx89 = getelementptr inbounds [3 x %struct.t_complex]** %54, i64 %indvars.iv742
  %55 = load [3 x %struct.t_complex]** %arrayidx89, align 8, !tbaa !3
  %arrayidx91 = getelementptr inbounds [3 x %struct.t_complex]* %55, i64 %indvars.iv726, i64 0
  %arrayidx94 = getelementptr inbounds [3 x %struct.t_complex]** %54, i64 %indvars.iv740
  %56 = load [3 x %struct.t_complex]** %arrayidx94, align 8, !tbaa !3
  %arrayidx96 = getelementptr inbounds [3 x %struct.t_complex]* %56, i64 %indvars.iv726, i64 1
  %57 = bitcast %struct.t_complex* %arrayidx91 to <2 x float>*
  %58 = load <2 x float>* %57, align 1
  %59 = bitcast %struct.t_complex* %arrayidx96 to <2 x float>*
  %60 = load <2 x float>* %59, align 1
  %a.sroa.0.0.vec.extract.i621 = extractelement <2 x float> %58, i32 0
  %b.sroa.0.0.vec.extract.i622 = extractelement <2 x float> %60, i32 0
  %mul.i623 = fmul float %a.sroa.0.0.vec.extract.i621, %b.sroa.0.0.vec.extract.i622
  %a.sroa.0.4.vec.extract.i624 = extractelement <2 x float> %58, i32 1
  %b.sroa.0.4.vec.extract.i625 = extractelement <2 x float> %60, i32 1
  %mul3.i626 = fmul float %a.sroa.0.4.vec.extract.i624, %b.sroa.0.4.vec.extract.i625
  %sub.i627 = fsub float %mul.i623, %mul3.i626
  %mul7.i628 = fmul float %a.sroa.0.0.vec.extract.i621, %b.sroa.0.4.vec.extract.i625
  %mul10.i629 = fmul float %a.sroa.0.4.vec.extract.i624, %b.sroa.0.0.vec.extract.i622
  %add.i630 = fadd float %mul7.i628, %mul10.i629
  %retval.sroa.0.0.vec.insert.i631 = insertelement <2 x float> undef, float %sub.i627, i32 0
  %retval.sroa.0.4.vec.insert.i632 = insertelement <2 x float> %retval.sroa.0.0.vec.insert.i631, float %add.i630, i32 1
  %coerce.sroa.0.0.cast = bitcast %struct.t_complex* %arrayidx86 to <2 x float>*
  store <2 x float> %retval.sroa.0.4.vec.insert.i632, <2 x float>* %coerce.sroa.0.0.cast, align 4
  %indvars.iv.next727 = add i64 %indvars.iv726, 1
  %61 = load i32* %nodeid55.pre-phi, align 4, !tbaa !0
  %idxprom79 = sext i32 %61 to i64
  %arrayidx81 = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 7, i64 %idxprom79
  %62 = load i32* %arrayidx81, align 4, !tbaa !0
  %63 = trunc i64 %indvars.iv.next727 to i32
  %cmp82 = icmp slt i32 %63, %62
  br i1 %cmp82, label %for.body84, label %if.end126

for.body108:                                      ; preds = %for.body108, %for.body108.lr.ph
  %indvars.iv724 = phi i64 [ 0, %for.body108.lr.ph ], [ %indvars.iv.next725, %for.body108 ]
  %64 = load %struct.t_complex** @do_ewald.tab_xy, align 8, !tbaa !3
  %arrayidx110 = getelementptr inbounds %struct.t_complex* %64, i64 %indvars.iv724
  %65 = load [3 x %struct.t_complex]*** @do_ewald.eir, align 8, !tbaa !3
  %arrayidx113 = getelementptr inbounds [3 x %struct.t_complex]** %65, i64 %indvars.iv742
  %66 = load [3 x %struct.t_complex]** %arrayidx113, align 8, !tbaa !3
  %arrayidx115 = getelementptr inbounds [3 x %struct.t_complex]* %66, i64 %indvars.iv724, i64 0
  %arrayidx118 = getelementptr inbounds [3 x %struct.t_complex]** %65, i64 %idxprom117
  %67 = load [3 x %struct.t_complex]** %arrayidx118, align 8, !tbaa !3
  %arrayidx120 = getelementptr inbounds [3 x %struct.t_complex]* %67, i64 %indvars.iv724, i64 1
  %68 = bitcast %struct.t_complex* %arrayidx115 to <2 x float>*
  %69 = load <2 x float>* %68, align 1
  %70 = bitcast %struct.t_complex* %arrayidx120 to <2 x float>*
  %71 = load <2 x float>* %70, align 1
  %a.sroa.0.0.vec.extract.i609 = extractelement <2 x float> %69, i32 0
  %b.sroa.0.0.vec.extract.i610 = extractelement <2 x float> %71, i32 0
  %mul.i611 = fmul float %a.sroa.0.0.vec.extract.i609, %b.sroa.0.0.vec.extract.i610
  %a.sroa.0.4.vec.extract.i612 = extractelement <2 x float> %69, i32 1
  %b.sroa.0.4.vec.extract.i613 = extractelement <2 x float> %71, i32 1
  %mul3.i614 = fmul float %a.sroa.0.4.vec.extract.i612, %b.sroa.0.4.vec.extract.i613
  %add.i615 = fadd float %mul.i611, %mul3.i614
  %mul7.i616 = fmul float %a.sroa.0.4.vec.extract.i612, %b.sroa.0.0.vec.extract.i610
  %mul10.i617 = fmul float %a.sroa.0.0.vec.extract.i609, %b.sroa.0.4.vec.extract.i613
  %sub.i618 = fsub float %mul7.i616, %mul10.i617
  %retval.sroa.0.0.vec.insert.i619 = insertelement <2 x float> undef, float %add.i615, i32 0
  %retval.sroa.0.4.vec.insert.i620 = insertelement <2 x float> %retval.sroa.0.0.vec.insert.i619, float %sub.i618, i32 1
  %coerce122.sroa.0.0.cast = bitcast %struct.t_complex* %arrayidx110 to <2 x float>*
  store <2 x float> %retval.sroa.0.4.vec.insert.i620, <2 x float>* %coerce122.sroa.0.0.cast, align 4
  %indvars.iv.next725 = add i64 %indvars.iv724, 1
  %72 = load i32* %nodeid55.pre-phi, align 4, !tbaa !0
  %idxprom103 = sext i32 %72 to i64
  %arrayidx105 = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 7, i64 %idxprom103
  %73 = load i32* %arrayidx105, align 4, !tbaa !0
  %74 = trunc i64 %indvars.iv.next725 to i32
  %cmp106 = icmp slt i32 %74, %73
  br i1 %cmp106, label %for.body108, label %if.end126

if.end126:                                        ; preds = %for.cond77.preheader, %for.body84, %for.cond101.preheader, %for.body108
  %75 = load i32* @do_ewald.nz, align 4, !tbaa !0
  %cmp128674 = icmp slt i32 %lowiz.1689, %75
  br i1 %cmp128674, label %for.body130.lr.ph, label %for.end305

for.body130.lr.ph:                                ; preds = %if.end126
  %mul135 = fmul float %mul73, %mul73
  %add136 = fadd float %mul134, %mul135
  %76 = sext i32 %lowiz.1689 to i64
  br label %for.body130

for.body130:                                      ; preds = %for.body130.lr.ph, %for.end301
  %indvars.iv737 = phi i64 [ %76, %for.body130.lr.ph ], [ %indvars.iv.next738, %for.end301 ]
  %energy.2676 = phi float [ %energy.1690, %for.body130.lr.ph ], [ %add231, %for.end301 ]
  %77 = trunc i64 %indvars.iv737 to i32
  %conv131 = sitofp i32 %77 to float
  %mul133 = fmul float %conv131, %conv11.i
  %mul137 = fmul float %mul133, %mul133
  %add138 = fadd float %add136, %mul137
  %mul139 = fmul float %conv2, %add138
  %conv140 = fpext float %mul139 to double
  %call141 = call double @exp(double %conv140) #5
  %conv142 = fpext float %add138 to double
  %div143 = fdiv double %call141, %conv142
  %conv144 = fptrunc double %div143 to float
  %conv145 = fpext float %conv144 to double
  %mul146 = fmul double %conv145, 2.000000e+00
  %div148 = fdiv double 1.000000e+00, %conv142
  %sub150 = fsub double %div148, %conv149
  %mul151 = fmul double %sub150, %mul146
  %conv152 = fptrunc double %mul151 to float
  %cmp153 = icmp sgt i32 %77, -1
  %78 = load i32* %nodeid55.pre-phi, align 4, !tbaa !0
  %idxprom158656 = sext i32 %78 to i64
  %arrayidx160657 = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 7, i64 %idxprom158656
  %79 = load i32* %arrayidx160657, align 4, !tbaa !0
  %cmp161658 = icmp sgt i32 %79, 0
  br i1 %cmp153, label %for.cond156.preheader, label %for.cond182.preheader

for.cond156.preheader:                            ; preds = %for.body130
  br i1 %cmp161658, label %for.body163, label %if.end209

for.cond182.preheader:                            ; preds = %for.body130
  br i1 %cmp161658, label %for.body189.lr.ph, label %if.end209

for.body189.lr.ph:                                ; preds = %for.cond182.preheader
  %sub198 = sub i64 0, %indvars.iv737
  %sext = shl i64 %sub198, 32
  %idxprom199 = ashr exact i64 %sext, 32
  br label %for.body189

for.body163:                                      ; preds = %for.cond156.preheader, %for.body163
  %indvars.iv730 = phi i64 [ %indvars.iv.next731, %for.body163 ], [ 0, %for.cond156.preheader ]
  %80 = load %struct.t_complex** @do_ewald.tab_qxyz, align 8, !tbaa !3
  %arrayidx165 = getelementptr inbounds %struct.t_complex* %80, i64 %indvars.iv730
  %arrayidx167 = getelementptr inbounds float* %charge, i64 %indvars.iv730
  %81 = load float* %arrayidx167, align 4, !tbaa !4
  %82 = load %struct.t_complex** @do_ewald.tab_xy, align 8, !tbaa !3
  %arrayidx169 = getelementptr inbounds %struct.t_complex* %82, i64 %indvars.iv730
  %83 = load [3 x %struct.t_complex]*** @do_ewald.eir, align 8, !tbaa !3
  %arrayidx172 = getelementptr inbounds [3 x %struct.t_complex]** %83, i64 %indvars.iv737
  %84 = load [3 x %struct.t_complex]** %arrayidx172, align 8, !tbaa !3
  %arrayidx174 = getelementptr inbounds [3 x %struct.t_complex]* %84, i64 %indvars.iv730, i64 2
  %85 = bitcast %struct.t_complex* %arrayidx169 to <2 x float>*
  %86 = load <2 x float>* %85, align 1
  %87 = bitcast %struct.t_complex* %arrayidx174 to <2 x float>*
  %88 = load <2 x float>* %87, align 1
  %a.sroa.0.0.vec.extract.i597 = extractelement <2 x float> %86, i32 0
  %b.sroa.0.0.vec.extract.i598 = extractelement <2 x float> %88, i32 0
  %mul.i599 = fmul float %a.sroa.0.0.vec.extract.i597, %b.sroa.0.0.vec.extract.i598
  %a.sroa.0.4.vec.extract.i600 = extractelement <2 x float> %86, i32 1
  %b.sroa.0.4.vec.extract.i601 = extractelement <2 x float> %88, i32 1
  %mul3.i602 = fmul float %a.sroa.0.4.vec.extract.i600, %b.sroa.0.4.vec.extract.i601
  %sub.i603 = fsub float %mul.i599, %mul3.i602
  %mul7.i604 = fmul float %a.sroa.0.0.vec.extract.i597, %b.sroa.0.4.vec.extract.i601
  %mul10.i605 = fmul float %a.sroa.0.4.vec.extract.i600, %b.sroa.0.0.vec.extract.i598
  %add.i606 = fadd float %mul7.i604, %mul10.i605
  %mul.i592 = fmul float %81, %sub.i603
  %mul2.i594 = fmul float %81, %add.i606
  %retval.sroa.0.0.vec.insert.i595 = insertelement <2 x float> undef, float %mul.i592, i32 0
  %retval.sroa.0.4.vec.insert.i596 = insertelement <2 x float> %retval.sroa.0.0.vec.insert.i595, float %mul2.i594, i32 1
  %coerce177.sroa.0.0.cast = bitcast %struct.t_complex* %arrayidx165 to <2 x float>*
  store <2 x float> %retval.sroa.0.4.vec.insert.i596, <2 x float>* %coerce177.sroa.0.0.cast, align 4
  %indvars.iv.next731 = add i64 %indvars.iv730, 1
  %89 = load i32* %nodeid55.pre-phi, align 4, !tbaa !0
  %idxprom158 = sext i32 %89 to i64
  %arrayidx160 = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 7, i64 %idxprom158
  %90 = load i32* %arrayidx160, align 4, !tbaa !0
  %91 = trunc i64 %indvars.iv.next731 to i32
  %cmp161 = icmp slt i32 %91, %90
  br i1 %cmp161, label %for.body163, label %if.end209

for.body189:                                      ; preds = %for.body189.lr.ph, %for.body189
  %indvars.iv728 = phi i64 [ 0, %for.body189.lr.ph ], [ %indvars.iv.next729, %for.body189 ]
  %92 = load %struct.t_complex** @do_ewald.tab_qxyz, align 8, !tbaa !3
  %arrayidx191 = getelementptr inbounds %struct.t_complex* %92, i64 %indvars.iv728
  %arrayidx193 = getelementptr inbounds float* %charge, i64 %indvars.iv728
  %93 = load float* %arrayidx193, align 4, !tbaa !4
  %94 = load %struct.t_complex** @do_ewald.tab_xy, align 8, !tbaa !3
  %arrayidx196 = getelementptr inbounds %struct.t_complex* %94, i64 %indvars.iv728
  %95 = load [3 x %struct.t_complex]*** @do_ewald.eir, align 8, !tbaa !3
  %arrayidx200 = getelementptr inbounds [3 x %struct.t_complex]** %95, i64 %idxprom199
  %96 = load [3 x %struct.t_complex]** %arrayidx200, align 8, !tbaa !3
  %arrayidx202 = getelementptr inbounds [3 x %struct.t_complex]* %96, i64 %indvars.iv728, i64 2
  %97 = bitcast %struct.t_complex* %arrayidx196 to <2 x float>*
  %98 = load <2 x float>* %97, align 1
  %99 = bitcast %struct.t_complex* %arrayidx202 to <2 x float>*
  %100 = load <2 x float>* %99, align 1
  %a.sroa.0.0.vec.extract.i = extractelement <2 x float> %98, i32 0
  %b.sroa.0.0.vec.extract.i = extractelement <2 x float> %100, i32 0
  %mul.i588 = fmul float %a.sroa.0.0.vec.extract.i, %b.sroa.0.0.vec.extract.i
  %a.sroa.0.4.vec.extract.i = extractelement <2 x float> %98, i32 1
  %b.sroa.0.4.vec.extract.i = extractelement <2 x float> %100, i32 1
  %mul3.i = fmul float %a.sroa.0.4.vec.extract.i, %b.sroa.0.4.vec.extract.i
  %add.i = fadd float %mul.i588, %mul3.i
  %mul7.i = fmul float %a.sroa.0.4.vec.extract.i, %b.sroa.0.0.vec.extract.i
  %mul10.i = fmul float %a.sroa.0.0.vec.extract.i, %b.sroa.0.4.vec.extract.i
  %sub.i = fsub float %mul7.i, %mul10.i
  %mul.i = fmul float %93, %add.i
  %mul2.i = fmul float %93, %sub.i
  %retval.sroa.0.0.vec.insert.i = insertelement <2 x float> undef, float %mul.i, i32 0
  %retval.sroa.0.4.vec.insert.i = insertelement <2 x float> %retval.sroa.0.0.vec.insert.i, float %mul2.i, i32 1
  %coerce205.sroa.0.0.cast = bitcast %struct.t_complex* %arrayidx191 to <2 x float>*
  store <2 x float> %retval.sroa.0.4.vec.insert.i, <2 x float>* %coerce205.sroa.0.0.cast, align 4
  %indvars.iv.next729 = add i64 %indvars.iv728, 1
  %101 = load i32* %nodeid55.pre-phi, align 4, !tbaa !0
  %idxprom184 = sext i32 %101 to i64
  %arrayidx186 = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 7, i64 %idxprom184
  %102 = load i32* %arrayidx186, align 4, !tbaa !0
  %103 = trunc i64 %indvars.iv.next729 to i32
  %cmp187 = icmp slt i32 %103, %102
  br i1 %cmp187, label %for.body189, label %if.end209

if.end209:                                        ; preds = %for.body163, %for.body189, %for.cond156.preheader, %for.cond182.preheader
  %104 = phi i32 [ %78, %for.cond182.preheader ], [ %78, %for.cond156.preheader ], [ %101, %for.body189 ], [ %89, %for.body163 ]
  %idxprom212662 = sext i32 %104 to i64
  %arrayidx214663 = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 7, i64 %idxprom212662
  %105 = load i32* %arrayidx214663, align 4, !tbaa !0
  %cmp215664 = icmp sgt i32 %105, 0
  br i1 %cmp215664, label %for.body217.lr.ph, label %for.end226

for.body217.lr.ph:                                ; preds = %if.end209
  %106 = load %struct.t_complex** @do_ewald.tab_qxyz, align 8, !tbaa !3
  br label %for.body217

for.body217:                                      ; preds = %for.body217.lr.ph, %for.body217
  %indvars.iv732 = phi i64 [ 0, %for.body217.lr.ph ], [ %indvars.iv.next733, %for.body217 ]
  %ss.0667 = phi float [ 0.000000e+00, %for.body217.lr.ph ], [ %add223, %for.body217 ]
  %cs.0666 = phi float [ 0.000000e+00, %for.body217.lr.ph ], [ %add220, %for.body217 ]
  %re = getelementptr inbounds %struct.t_complex* %106, i64 %indvars.iv732, i32 0
  %107 = load float* %re, align 4, !tbaa !4
  %add220 = fadd float %cs.0666, %107
  %im = getelementptr inbounds %struct.t_complex* %106, i64 %indvars.iv732, i32 1
  %108 = load float* %im, align 4, !tbaa !4
  %add223 = fadd float %ss.0667, %108
  %indvars.iv.next733 = add i64 %indvars.iv732, 1
  %109 = trunc i64 %indvars.iv.next733 to i32
  %cmp215 = icmp slt i32 %109, %105
  br i1 %cmp215, label %for.body217, label %for.end226

for.end226:                                       ; preds = %for.body217, %if.end209
  %ss.0.lcssa = phi float [ 0.000000e+00, %if.end209 ], [ %add223, %for.body217 ]
  %cs.0.lcssa = phi float [ 0.000000e+00, %if.end209 ], [ %add220, %for.body217 ]
  %mul227 = fmul float %cs.0.lcssa, %cs.0.lcssa
  %mul228 = fmul float %ss.0.lcssa, %ss.0.lcssa
  %add229 = fadd float %mul227, %mul228
  %mul230 = fmul float %conv144, %add229
  %add231 = fadd float %energy.2676, %mul230
  %mul235 = fmul float %conv152, %add229
  %mul236 = fmul float %mul66, %mul235
  %mul237 = fmul float %mul66, %mul236
  %110 = load float* %arrayidx239, align 4, !tbaa !4
  %sub240 = fsub float %110, %mul237
  store float %sub240, float* %arrayidx239, align 4, !tbaa !4
  %mul242 = fmul float %mul73, %mul236
  %111 = load float* %arrayidx244, align 4, !tbaa !4
  %sub245 = fsub float %111, %mul242
  store float %sub245, float* %arrayidx244, align 4, !tbaa !4
  %mul247 = fmul float %mul133, %mul236
  %112 = load float* %arrayidx249, align 4, !tbaa !4
  %sub250 = fsub float %112, %mul247
  store float %sub250, float* %arrayidx249, align 4, !tbaa !4
  %mul251 = fmul float %mul73, %mul235
  %mul252 = fmul float %mul73, %mul251
  %113 = load float* %arrayidx254, align 4, !tbaa !4
  %sub255 = fsub float %113, %mul252
  store float %sub255, float* %arrayidx254, align 4, !tbaa !4
  %mul257 = fmul float %mul133, %mul251
  %114 = load float* %arrayidx259, align 4, !tbaa !4
  %sub260 = fsub float %114, %mul257
  store float %sub260, float* %arrayidx259, align 4, !tbaa !4
  %mul261 = fmul float %mul133, %mul235
  %mul262 = fmul float %mul133, %mul261
  %115 = load float* %arrayidx264, align 4, !tbaa !4
  %sub265 = fsub float %115, %mul262
  store float %sub265, float* %arrayidx264, align 4, !tbaa !4
  br i1 %cmp215664, label %for.body273.lr.ph, label %for.end301

for.body273.lr.ph:                                ; preds = %for.end226
  %116 = load %struct.t_complex** @do_ewald.tab_qxyz, align 8, !tbaa !3
  br label %for.body273

for.body273:                                      ; preds = %for.body273.lr.ph, %for.body273
  %indvars.iv734 = phi i64 [ 0, %for.body273.lr.ph ], [ %indvars.iv.next735, %for.body273 ]
  %im276 = getelementptr inbounds %struct.t_complex* %116, i64 %indvars.iv734, i32 1
  %117 = load float* %im276, align 4, !tbaa !4
  %mul277 = fmul float %cs.0.lcssa, %117
  %re280 = getelementptr inbounds %struct.t_complex* %116, i64 %indvars.iv734, i32 0
  %118 = load float* %re280, align 4, !tbaa !4
  %mul281 = fmul float %ss.0.lcssa, %118
  %sub282 = fsub float %mul277, %mul281
  %mul283 = fmul float %conv144, %sub282
  %mul284 = fmul float %mul66, %mul283
  %arrayidx287 = getelementptr inbounds [3 x float]* %f, i64 %indvars.iv734, i64 0
  %119 = load float* %arrayidx287, align 4, !tbaa !4
  %add288 = fadd float %119, %mul284
  store float %add288, float* %arrayidx287, align 4, !tbaa !4
  %mul289 = fmul float %mul73, %mul283
  %arrayidx292 = getelementptr inbounds [3 x float]* %f, i64 %indvars.iv734, i64 1
  %120 = load float* %arrayidx292, align 4, !tbaa !4
  %add293 = fadd float %120, %mul289
  store float %add293, float* %arrayidx292, align 4, !tbaa !4
  %mul294 = fmul float %mul133, %mul283
  %arrayidx297 = getelementptr inbounds [3 x float]* %f, i64 %indvars.iv734, i64 2
  %121 = load float* %arrayidx297, align 4, !tbaa !4
  %add298 = fadd float %121, %mul294
  store float %add298, float* %arrayidx297, align 4, !tbaa !4
  %indvars.iv.next735 = add i64 %indvars.iv734, 1
  %122 = trunc i64 %indvars.iv.next735 to i32
  %cmp271 = icmp slt i32 %122, %105
  br i1 %cmp271, label %for.body273, label %for.end301

for.end301:                                       ; preds = %for.body273, %for.end226
  %123 = load i32* @do_ewald.nz, align 4, !tbaa !0
  %indvars.iv.next738 = add i64 %indvars.iv737, 1
  %124 = trunc i64 %indvars.iv.next738 to i32
  %cmp128 = icmp slt i32 %124, %123
  br i1 %cmp128, label %for.body130, label %for.cond127.for.end305_crit_edge

for.cond127.for.end305_crit_edge:                 ; preds = %for.end301
  %sub302 = sub nsw i32 1, %123
  %.pre755 = load i32* @do_ewald.ny, align 4, !tbaa !0
  br label %for.end305

for.end305:                                       ; preds = %for.cond127.for.end305_crit_edge, %if.end126
  %125 = phi i32 [ %.pre755, %for.cond127.for.end305_crit_edge ], [ %49, %if.end126 ]
  %energy.2.lcssa = phi float [ %add231, %for.cond127.for.end305_crit_edge ], [ %energy.1690, %if.end126 ]
  %lowiz.2.lcssa = phi i32 [ %sub302, %for.cond127.for.end305_crit_edge ], [ %lowiz.1689, %if.end126 ]
  %indvars.iv.next741 = add i64 %indvars.iv740, 1
  %126 = trunc i64 %indvars.iv.next741 to i32
  %cmp68 = icmp slt i32 %126, %125
  br i1 %cmp68, label %for.body70, label %for.cond67.for.inc310_crit_edge

for.cond67.for.inc310_crit_edge:                  ; preds = %for.end305
  %sub306 = sub nsw i32 1, %125
  %.pre = load i32* @do_ewald.nx, align 4, !tbaa !0
  br label %for.inc310

for.inc310:                                       ; preds = %for.cond67.for.inc310_crit_edge, %for.body63
  %127 = phi i32 [ %125, %for.cond67.for.inc310_crit_edge ], [ %45, %for.body63 ]
  %128 = phi i32 [ %.pre, %for.cond67.for.inc310_crit_edge ], [ %46, %for.body63 ]
  %energy.1.lcssa = phi float [ %energy.2.lcssa, %for.cond67.for.inc310_crit_edge ], [ %energy.0710, %for.body63 ]
  %lowiy.1.lcssa = phi i32 [ %sub306, %for.cond67.for.inc310_crit_edge ], [ %lowiy.0709, %for.body63 ]
  %lowiz.1.lcssa = phi i32 [ %lowiz.2.lcssa, %for.cond67.for.inc310_crit_edge ], [ %lowiz.0708, %for.body63 ]
  %indvars.iv.next743 = add i64 %indvars.iv742, 1
  %129 = trunc i64 %indvars.iv.next743 to i32
  %cmp61 = icmp slt i32 %129, %128
  br i1 %cmp61, label %for.body63, label %for.end312

for.end312:                                       ; preds = %for.inc310, %for.cond60.preheader
  %energy.0.lcssa = phi float [ 0.000000e+00, %for.cond60.preheader ], [ %energy.1.lcssa, %for.inc310 ]
  %130 = load float* %box, align 4, !tbaa !4
  %131 = load float* %arrayidx3.i, align 4, !tbaa !4
  %mul315 = fmul float %130, %131
  %132 = load float* %arrayidx8.i, align 4, !tbaa !4
  %mul317 = fmul float %mul315, %132
  %conv318 = fpext float %mul317 to double
  %div319 = fdiv double 0x402921FB54442D18, %conv318
  %mul320 = fmul double %div319, 3.320636e+02
  %mul321 = fmul double %mul320, 4.184000e+00
  %mul322 = fmul double %mul321, 1.000000e-01
  %conv323 = fptrunc double %mul322 to float
  %133 = load i32* %nodeid55.pre-phi, align 4, !tbaa !0
  %idxprom326635 = sext i32 %133 to i64
  %arrayidx328636 = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 7, i64 %idxprom326635
  %134 = load i32* %arrayidx328636, align 4, !tbaa !0
  %cmp329637 = icmp sgt i32 %134, 0
  br i1 %cmp329637, label %for.body331.lr.ph, label %for.end349

for.body331.lr.ph:                                ; preds = %for.end312
  %mul332 = fmul float %conv323, 2.000000e+00
  br label %for.body331

for.body331:                                      ; preds = %for.body331.lr.ph, %for.body331
  %indvars.iv = phi i64 [ 0, %for.body331.lr.ph ], [ %indvars.iv.next, %for.body331 ]
  %arrayidx335 = getelementptr inbounds [3 x float]* %f, i64 %indvars.iv, i64 0
  %135 = load float* %arrayidx335, align 4, !tbaa !4
  %mul336 = fmul float %mul332, %135
  store float %mul336, float* %arrayidx335, align 4, !tbaa !4
  %arrayidx340 = getelementptr inbounds [3 x float]* %f, i64 %indvars.iv, i64 1
  %136 = load float* %arrayidx340, align 4, !tbaa !4
  %mul341 = fmul float %mul332, %136
  store float %mul341, float* %arrayidx340, align 4, !tbaa !4
  %arrayidx345 = getelementptr inbounds [3 x float]* %f, i64 %indvars.iv, i64 2
  %137 = load float* %arrayidx345, align 4, !tbaa !4
  %mul346 = fmul float %mul332, %137
  store float %mul346, float* %arrayidx345, align 4, !tbaa !4
  %indvars.iv.next = add i64 %indvars.iv, 1
  %138 = trunc i64 %indvars.iv.next to i32
  %cmp329 = icmp slt i32 %138, %134
  br i1 %cmp329, label %for.body331, label %for.end349

for.end349:                                       ; preds = %for.body331, %for.end312
  %conv350 = fpext float %conv323 to double
  %mul351 = fmul double %conv350, -5.000000e-01
  %arrayidx353 = getelementptr inbounds [3 x float]* %lrvir, i64 0, i64 0
  %139 = load float* %arrayidx353, align 4, !tbaa !4
  %add354 = fadd float %energy.0.lcssa, %139
  %conv355 = fpext float %add354 to double
  %mul356 = fmul double %mul351, %conv355
  %conv357 = fptrunc double %mul356 to float
  store float %conv357, float* %arrayidx353, align 4, !tbaa !4
  %arrayidx363 = getelementptr inbounds [3 x float]* %lrvir, i64 0, i64 1
  %140 = load float* %arrayidx363, align 4, !tbaa !4
  %conv364 = fpext float %140 to double
  %mul365 = fmul double %mul351, %conv364
  %conv366 = fptrunc double %mul365 to float
  store float %conv366, float* %arrayidx363, align 4, !tbaa !4
  %arrayidx372 = getelementptr inbounds [3 x float]* %lrvir, i64 0, i64 2
  %141 = load float* %arrayidx372, align 4, !tbaa !4
  %conv373 = fpext float %141 to double
  %mul374 = fmul double %mul351, %conv373
  %conv375 = fptrunc double %mul374 to float
  store float %conv375, float* %arrayidx372, align 4, !tbaa !4
  %arrayidx381 = getelementptr inbounds [3 x float]* %lrvir, i64 1, i64 1
  %142 = load float* %arrayidx381, align 4, !tbaa !4
  %add382 = fadd float %energy.0.lcssa, %142
  %conv383 = fpext float %add382 to double
  %mul384 = fmul double %mul351, %conv383
  %conv385 = fptrunc double %mul384 to float
  store float %conv385, float* %arrayidx381, align 4, !tbaa !4
  %arrayidx391 = getelementptr inbounds [3 x float]* %lrvir, i64 1, i64 2
  %143 = load float* %arrayidx391, align 4, !tbaa !4
  %conv392 = fpext float %143 to double
  %mul393 = fmul double %mul351, %conv392
  %conv394 = fptrunc double %mul393 to float
  store float %conv394, float* %arrayidx391, align 4, !tbaa !4
  %arrayidx400 = getelementptr inbounds [3 x float]* %lrvir, i64 2, i64 2
  %144 = load float* %arrayidx400, align 4, !tbaa !4
  %add401 = fadd float %energy.0.lcssa, %144
  %conv402 = fpext float %add401 to double
  %mul403 = fmul double %mul351, %conv402
  %conv404 = fptrunc double %mul403 to float
  store float %conv404, float* %arrayidx400, align 4, !tbaa !4
  %arrayidx410 = getelementptr inbounds [3 x float]* %lrvir, i64 1, i64 0
  store float %conv366, float* %arrayidx410, align 4, !tbaa !4
  %arrayidx414 = getelementptr inbounds [3 x float]* %lrvir, i64 2, i64 0
  store float %conv375, float* %arrayidx414, align 4, !tbaa !4
  %arrayidx418 = getelementptr inbounds [3 x float]* %lrvir, i64 2, i64 1
  store float %conv394, float* %arrayidx418, align 4, !tbaa !4
  %mul419 = fmul float %energy.0.lcssa, %conv323
  ret float %mul419
}

; Function Attrs: optsize
declare void @fatal_error(i32, i8*, ...) #1

; Function Attrs: optsize
declare i8* @save_calloc(i8*, i8*, i32, i32, i32) #1

; Function Attrs: nounwind optsize
declare double @exp(double) #2

; Function Attrs: nounwind optsize
declare i32 @printf(i8* nocapture, ...) #2

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32) #3

; Function Attrs: nounwind optsize
declare double @cos(double) #2

; Function Attrs: nounwind optsize
declare double @sin(double) #2

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #4

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #4

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind optsize }
attributes #6 = { noreturn nounwind optsize }

!0 = metadata !{metadata !"int", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"any pointer", metadata !1}
!4 = metadata !{metadata !"float", metadata !1}
