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
  call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %log}, i64 0, metadata !221), !dbg !325
  call void @llvm.dbg.value(metadata !{i32 %bVerbose}, i64 0, metadata !222), !dbg !325
  call void @llvm.dbg.value(metadata !{%struct.t_inputrec* %ir}, i64 0, metadata !223), !dbg !326
  call void @llvm.dbg.value(metadata !{[3 x float]* %x}, i64 0, metadata !224), !dbg !327
  call void @llvm.dbg.value(metadata !{[3 x float]* %f}, i64 0, metadata !225), !dbg !327
  call void @llvm.dbg.value(metadata !{float* %charge}, i64 0, metadata !226), !dbg !328
  call void @llvm.dbg.value(metadata !{float* %box}, i64 0, metadata !227), !dbg !328
  call void @llvm.dbg.value(metadata !{%struct.t_commrec* %cr}, i64 0, metadata !228), !dbg !329
  call void @llvm.dbg.value(metadata !{%struct.t_nsborder* %nsb}, i64 0, metadata !229), !dbg !329
  call void @llvm.dbg.value(metadata !{[3 x float]* %lrvir}, i64 0, metadata !230), !dbg !330
  call void @llvm.dbg.value(metadata !{float %ewaldcoeff}, i64 0, metadata !231), !dbg !330
  %mul = fmul float %ewaldcoeff, 4.000000e+00, !dbg !331
  %mul1 = fmul float %mul, %ewaldcoeff, !dbg !331
  %conv2 = fdiv float -1.000000e+00, %mul1, !dbg !331
  call void @llvm.dbg.value(metadata !{float %conv2}, i64 0, metadata !232), !dbg !331
  call void @llvm.dbg.declare(metadata !{[3 x float]* %lll}, metadata !234), !dbg !332
  %.b = load i1* @do_ewald.bFirst, align 1
  br i1 %.b, label %entry.if.end54_crit_edge, label %if.then, !dbg !333

entry.if.end54_crit_edge:                         ; preds = %entry
  %nodeid55.pre = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 0, !dbg !334
  br label %if.end54, !dbg !333

if.then:                                          ; preds = %entry
  %tobool11 = icmp eq i32 %bVerbose, 0, !dbg !335
  br i1 %tobool11, label %if.end, label %if.then12, !dbg !335

if.then12:                                        ; preds = %if.then
  %0 = call i64 @fwrite(i8* getelementptr inbounds ([46 x i8]* @.str, i64 0, i64 0), i64 45, i64 1, %struct._IO_FILE* %log), !dbg !337
  br label %if.end, !dbg !337

if.end:                                           ; preds = %if.then, %if.then12
  %cmp = icmp eq %struct.t_commrec* %cr, null, !dbg !338
  br i1 %cmp, label %if.end21, label %if.then14, !dbg !338

if.then14:                                        ; preds = %if.end
  %nnodes = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 1, !dbg !339
  %1 = load i32* %nnodes, align 4, !dbg !339, !tbaa !341
  %cmp15 = icmp sgt i32 %1, 1, !dbg !339
  br i1 %cmp15, label %if.then19, label %lor.lhs.false, !dbg !339

lor.lhs.false:                                    ; preds = %if.then14
  %nthreads = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 5, !dbg !339
  %2 = load i32* %nthreads, align 4, !dbg !339, !tbaa !341
  %cmp17 = icmp sgt i32 %2, 1, !dbg !339
  br i1 %cmp17, label %if.then19, label %if.end21, !dbg !339

if.then19:                                        ; preds = %lor.lhs.false, %if.then14
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([37 x i8]* @.str1, i64 0, i64 0)) #6, !dbg !344
  br label %if.end21, !dbg !344

if.end21:                                         ; preds = %if.end, %lor.lhs.false, %if.then19
  %nkx = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 17, !dbg !345
  %3 = load i32* %nkx, align 4, !dbg !345, !tbaa !341
  %add = add nsw i32 %3, 1, !dbg !345
  store i32 %add, i32* @do_ewald.nx, align 4, !dbg !345, !tbaa !341
  %nky = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 18, !dbg !346
  %4 = load i32* %nky, align 4, !dbg !346, !tbaa !341
  %add22 = add nsw i32 %4, 1, !dbg !346
  store i32 %add22, i32* @do_ewald.ny, align 4, !dbg !346, !tbaa !341
  %nkz = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 19, !dbg !347
  %5 = load i32* %nkz, align 4, !dbg !347, !tbaa !341
  %add23 = add nsw i32 %5, 1, !dbg !347
  store i32 %add23, i32* @do_ewald.nz, align 4, !dbg !347, !tbaa !341
  %cmp24 = icmp sgt i32 %add22, %add23, !dbg !348
  %cond = select i1 %cmp24, i32 %add22, i32 %add23, !dbg !348
  %cmp26 = icmp sgt i32 %add, %cond, !dbg !348
  %.cond = select i1 %cmp26, i32 %add, i32 %cond, !dbg !348
  store i32 %.cond, i32* @do_ewald.kmax, align 4, !dbg !348, !tbaa !341
  %call38 = call i8* @save_calloc(i8* getelementptr inbounds ([4 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str3, i64 0, i64 0), i32 124, i32 %.cond, i32 8) #6, !dbg !349
  %6 = bitcast i8* %call38 to [3 x %struct.t_complex]**, !dbg !349
  store [3 x %struct.t_complex]** %6, [3 x %struct.t_complex]*** @do_ewald.eir, align 8, !dbg !349, !tbaa !350
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !240), !dbg !351
  %7 = load i32* @do_ewald.kmax, align 4, !dbg !351, !tbaa !341
  %cmp39718 = icmp sgt i32 %7, 0, !dbg !351
  %nodeid = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 0, !dbg !353
  %8 = load i32* %nodeid, align 4, !dbg !353, !tbaa !341
  %idxprom719 = sext i32 %8 to i64, !dbg !353
  %arrayidx720 = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 7, i64 %idxprom719, !dbg !353
  %9 = load i32* %arrayidx720, align 4, !dbg !353, !tbaa !341
  br i1 %cmp39718, label %for.body, label %for.end, !dbg !351

for.body:                                         ; preds = %if.end21, %for.body
  %indvars.iv753 = phi i64 [ %indvars.iv.next754, %for.body ], [ 0, %if.end21 ]
  %10 = phi i32 [ %16, %for.body ], [ %9, %if.end21 ]
  %call41 = call i8* @save_calloc(i8* getelementptr inbounds ([7 x i8]* @.str4, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str3, i64 0, i64 0), i32 126, i32 %10, i32 24) #6, !dbg !353
  %11 = bitcast i8* %call41 to [3 x %struct.t_complex]*, !dbg !353
  %12 = load [3 x %struct.t_complex]*** @do_ewald.eir, align 8, !dbg !353, !tbaa !350
  %arrayidx43 = getelementptr inbounds [3 x %struct.t_complex]** %12, i64 %indvars.iv753, !dbg !353
  store [3 x %struct.t_complex]* %11, [3 x %struct.t_complex]** %arrayidx43, align 8, !dbg !353, !tbaa !350
  %indvars.iv.next754 = add i64 %indvars.iv753, 1, !dbg !351
  %13 = load i32* @do_ewald.kmax, align 4, !dbg !351, !tbaa !341
  %14 = trunc i64 %indvars.iv.next754 to i32, !dbg !351
  %cmp39 = icmp slt i32 %14, %13, !dbg !351
  %15 = load i32* %nodeid, align 4, !dbg !353, !tbaa !341
  %idxprom = sext i32 %15 to i64, !dbg !353
  %arrayidx = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 7, i64 %idxprom, !dbg !353
  %16 = load i32* %arrayidx, align 4, !dbg !353, !tbaa !341
  br i1 %cmp39, label %for.body, label %for.end, !dbg !351

for.end:                                          ; preds = %for.body, %if.end21
  %.lcssa = phi i32 [ %9, %if.end21 ], [ %16, %for.body ]
  %call48 = call i8* @save_calloc(i8* getelementptr inbounds ([7 x i8]* @.str5, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str3, i64 0, i64 0), i32 127, i32 %.lcssa, i32 8) #6, !dbg !354
  %17 = bitcast i8* %call48 to %struct.t_complex*, !dbg !354
  store %struct.t_complex* %17, %struct.t_complex** @do_ewald.tab_xy, align 8, !dbg !354, !tbaa !350
  %18 = load i32* %nodeid, align 4, !dbg !355, !tbaa !341
  %idxprom50 = sext i32 %18 to i64, !dbg !355
  %arrayidx52 = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 7, i64 %idxprom50, !dbg !355
  %19 = load i32* %arrayidx52, align 4, !dbg !355, !tbaa !341
  %call53 = call i8* @save_calloc(i8* getelementptr inbounds ([9 x i8]* @.str6, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str3, i64 0, i64 0), i32 128, i32 %19, i32 8) #6, !dbg !355
  %20 = bitcast i8* %call53 to %struct.t_complex*, !dbg !355
  store %struct.t_complex* %20, %struct.t_complex** @do_ewald.tab_qxyz, align 8, !dbg !355, !tbaa !350
  store i1 true, i1* @do_ewald.bFirst, align 1
  br label %if.end54, !dbg !356

if.end54:                                         ; preds = %entry.if.end54_crit_edge, %for.end
  %nodeid55.pre-phi = phi i32* [ %nodeid55.pre, %entry.if.end54_crit_edge ], [ %nodeid, %for.end ], !dbg !334
  call void @llvm.dbg.value(metadata !{[3 x float]* %lrvir}, i64 0, metadata !357) #5, !dbg !359
  call void @llvm.dbg.value(metadata !360, i64 0, metadata !361) #5, !dbg !362
  %21 = bitcast [3 x float]* %lrvir to i8*, !dbg !363
  call void @llvm.memset.p0i8.i64(i8* %21, i8 0, i64 36, i32 4, i1 false) #5, !dbg !364
  %arraydecay = getelementptr inbounds [3 x float]* %lll, i64 0, i64 0, !dbg !365
  tail call void @llvm.dbg.value(metadata !{float* %box}, i64 0, metadata !366), !dbg !367
  tail call void @llvm.dbg.value(metadata !{float* %arraydecay}, i64 0, metadata !368), !dbg !367
  %22 = load float* %box, align 4, !dbg !369, !tbaa !371
  %conv.i634 = fpext float %22 to double, !dbg !369
  %div.i = fdiv double 0x401921FB54442D18, %conv.i634, !dbg !369
  %conv1.i = fptrunc double %div.i to float, !dbg !369
  store float %conv1.i, float* %arraydecay, align 4, !dbg !369, !tbaa !371
  %arrayidx3.i = getelementptr inbounds float* %box, i64 1, !dbg !372
  %23 = load float* %arrayidx3.i, align 4, !dbg !372, !tbaa !371
  %conv4.i = fpext float %23 to double, !dbg !372
  %div5.i = fdiv double 0x401921FB54442D18, %conv4.i, !dbg !372
  %conv6.i = fptrunc double %div5.i to float, !dbg !372
  %arrayidx7.i = getelementptr inbounds [3 x float]* %lll, i64 0, i64 1, !dbg !372
  store float %conv6.i, float* %arrayidx7.i, align 4, !dbg !372, !tbaa !371
  %arrayidx8.i = getelementptr inbounds float* %box, i64 2, !dbg !373
  %24 = load float* %arrayidx8.i, align 4, !dbg !373, !tbaa !371
  %conv9.i = fpext float %24 to double, !dbg !373
  %div10.i = fdiv double 0x401921FB54442D18, %conv9.i, !dbg !373
  %conv11.i = fptrunc double %div10.i to float, !dbg !373
  %arrayidx12.i = getelementptr inbounds [3 x float]* %lll, i64 0, i64 2, !dbg !373
  store float %conv11.i, float* %arrayidx12.i, align 4, !dbg !373, !tbaa !371
  %25 = load i32* %nodeid55.pre-phi, align 4, !dbg !334, !tbaa !341
  %idxprom56 = sext i32 %25 to i64, !dbg !334
  %arrayidx58 = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 7, i64 %idxprom56, !dbg !334
  %26 = load i32* %arrayidx58, align 4, !dbg !334, !tbaa !341
  %27 = load i32* @do_ewald.kmax, align 4, !dbg !334, !tbaa !341
  %28 = load [3 x %struct.t_complex]*** @do_ewald.eir, align 8, !dbg !334, !tbaa !350
  call void @llvm.dbg.value(metadata !{i32 %26}, i64 0, metadata !374) #5, !dbg !375
  call void @llvm.dbg.value(metadata !{[3 x float]* %x}, i64 0, metadata !376) #5, !dbg !375
  call void @llvm.dbg.value(metadata !{i32 %27}, i64 0, metadata !377) #5, !dbg !375
  call void @llvm.dbg.value(metadata !{[3 x %struct.t_complex]** %28}, i64 0, metadata !378) #5, !dbg !375
  call void @llvm.dbg.value(metadata !{float* %arraydecay}, i64 0, metadata !379) #5, !dbg !375
  %cmp.i = icmp slt i32 %27, 1, !dbg !380
  br i1 %cmp.i, label %if.then.i, label %for.cond.preheader.i, !dbg !380

for.cond.preheader.i:                             ; preds = %if.end54
  %cmp1128.i = icmp sgt i32 %26, 0, !dbg !381
  br i1 %cmp1128.i, label %for.cond2.preheader.lr.ph.i, label %for.cond60.preheader, !dbg !381

for.cond2.preheader.lr.ph.i:                      ; preds = %for.cond.preheader.i
  %arrayidx26.i = getelementptr inbounds [3 x %struct.t_complex]** %28, i64 1, !dbg !383
  %cmp50126.i = icmp sgt i32 %27, 2, !dbg !387
  br label %for.cond2.preheader.i, !dbg !381

if.then.i:                                        ; preds = %if.end54
  %call.i = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([20 x i8]* @.str7, i64 0, i64 0), i32 %27) #6, !dbg !389
  call void @exit(i32 1) #7, !dbg !391
  unreachable, !dbg !391

for.cond2.preheader.i:                            ; preds = %for.inc81.i, %for.cond2.preheader.lr.ph.i
  %indvars.iv144.i = phi i64 [ 0, %for.cond2.preheader.lr.ph.i ], [ %indvars.iv.next145.i, %for.inc81.i ]
  %29 = load [3 x %struct.t_complex]** %28, align 8, !dbg !392, !tbaa !350
  br label %for.body4.i, !dbg !395

for.body4.i:                                      ; preds = %for.body4.i, %for.cond2.preheader.i
  %indvars.iv.i = phi i64 [ 0, %for.cond2.preheader.i ], [ %indvars.iv.next.i, %for.body4.i ]
  %re.i = getelementptr inbounds [3 x %struct.t_complex]* %29, i64 %indvars.iv144.i, i64 %indvars.iv.i, i32 0, !dbg !392
  store float 1.000000e+00, float* %re.i, align 4, !dbg !392, !tbaa !371
  %im.i = getelementptr inbounds [3 x %struct.t_complex]* %29, i64 %indvars.iv144.i, i64 %indvars.iv.i, i32 1, !dbg !396
  store float 0.000000e+00, float* %im.i, align 4, !dbg !396, !tbaa !371
  %indvars.iv.next.i = add i64 %indvars.iv.i, 1, !dbg !395
  %lftr.wideiv = trunc i64 %indvars.iv.next.i to i32, !dbg !395
  %exitcond = icmp eq i32 %lftr.wideiv, 3, !dbg !395
  br i1 %exitcond, label %for.body15.i, label %for.body4.i, !dbg !395

for.body15.i:                                     ; preds = %for.body15.i, %for.body4.i
  %indvars.iv131.i = phi i64 [ 0, %for.body4.i ], [ %indvars.iv.next132.i, %for.body15.i ]
  %arrayidx19.i = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv144.i, i64 %indvars.iv131.i, !dbg !383
  %30 = load float* %arrayidx19.i, align 4, !dbg !383, !tbaa !371
  %arrayidx21.i = getelementptr inbounds [3 x float]* %lll, i64 0, i64 %indvars.iv131.i, !dbg !383
  %31 = load float* %arrayidx21.i, align 4, !dbg !383, !tbaa !371
  %mul.i633 = fmul float %30, %31, !dbg !383
  %conv.i = fpext float %mul.i633 to double, !dbg !383
  %call22.i = call double @cos(double %conv.i) #6, !dbg !383
  %conv23.i = fptrunc double %call22.i to float, !dbg !383
  %32 = load [3 x %struct.t_complex]** %arrayidx26.i, align 8, !dbg !383, !tbaa !350
  %re29.i = getelementptr inbounds [3 x %struct.t_complex]* %32, i64 %indvars.iv144.i, i64 %indvars.iv131.i, i32 0, !dbg !383
  store float %conv23.i, float* %re29.i, align 4, !dbg !383, !tbaa !371
  %33 = load float* %arrayidx19.i, align 4, !dbg !397, !tbaa !371
  %mul36.i = fmul float %33, %31, !dbg !397
  %conv37.i = fpext float %mul36.i to double, !dbg !397
  %call38.i = call double @sin(double %conv37.i) #6, !dbg !397
  %conv39.i = fptrunc double %call38.i to float, !dbg !397
  %34 = load [3 x %struct.t_complex]** %arrayidx26.i, align 8, !dbg !397, !tbaa !350
  %im45.i = getelementptr inbounds [3 x %struct.t_complex]* %34, i64 %indvars.iv144.i, i64 %indvars.iv131.i, i32 1, !dbg !397
  store float %conv39.i, float* %im45.i, align 4, !dbg !397, !tbaa !371
  %indvars.iv.next132.i = add i64 %indvars.iv131.i, 1, !dbg !398
  %lftr.wideiv744 = trunc i64 %indvars.iv.next132.i to i32, !dbg !398
  %exitcond745 = icmp eq i32 %lftr.wideiv744, 3, !dbg !398
  br i1 %exitcond745, label %for.cond49.loopexit.i, label %for.body15.i, !dbg !398

for.cond49.loopexit.i:                            ; preds = %for.body15.i
  br i1 %cmp50126.i, label %for.cond53.preheader.i, label %for.inc81.i, !dbg !387

for.cond53.preheader.i:                           ; preds = %for.cond49.loopexit.i, %for.inc78.i
  %indvars.iv139.i = phi i64 [ %indvars.iv.next140.i, %for.inc78.i ], [ 2, %for.cond49.loopexit.i ]
  %arrayidx60.i = getelementptr inbounds [3 x %struct.t_complex]** %28, i64 %indvars.iv139.i, !dbg !399
  %35 = add nsw i64 %indvars.iv139.i, -1, !dbg !399
  %arrayidx66.i = getelementptr inbounds [3 x %struct.t_complex]** %28, i64 %35, !dbg !399
  br label %for.body56.i, !dbg !401

for.body56.i:                                     ; preds = %for.body56.i, %for.cond53.preheader.i
  %indvars.iv135.i = phi i64 [ 0, %for.cond53.preheader.i ], [ %indvars.iv.next136.i, %for.body56.i ]
  %36 = load [3 x %struct.t_complex]** %arrayidx60.i, align 8, !dbg !399, !tbaa !350
  %arrayidx62.i = getelementptr inbounds [3 x %struct.t_complex]* %36, i64 %indvars.iv144.i, i64 %indvars.iv135.i, !dbg !399
  %37 = load [3 x %struct.t_complex]** %arrayidx66.i, align 8, !dbg !399, !tbaa !350
  %arrayidx68.i = getelementptr inbounds [3 x %struct.t_complex]* %37, i64 %indvars.iv144.i, i64 %indvars.iv135.i, !dbg !399
  %38 = load [3 x %struct.t_complex]** %arrayidx26.i, align 8, !dbg !399, !tbaa !350
  %arrayidx73.i = getelementptr inbounds [3 x %struct.t_complex]* %38, i64 %indvars.iv144.i, i64 %indvars.iv135.i, !dbg !399
  %39 = bitcast %struct.t_complex* %arrayidx68.i to <2 x float>*, !dbg !399
  %40 = load <2 x float>* %39, align 1, !dbg !399
  %41 = bitcast %struct.t_complex* %arrayidx73.i to <2 x float>*, !dbg !399
  %42 = load <2 x float>* %41, align 1, !dbg !399
  call void @llvm.dbg.declare(metadata !402, metadata !275) #5, !dbg !403
  call void @llvm.dbg.declare(metadata !402, metadata !276) #5, !dbg !403
  call void @llvm.dbg.declare(metadata !402, metadata !277) #5, !dbg !404
  %a.sroa.0.0.vec.extract.i.i = extractelement <2 x float> %40, i32 0, !dbg !405
  %b.sroa.0.0.vec.extract.i.i = extractelement <2 x float> %42, i32 0, !dbg !405
  %mul.i.i = fmul float %a.sroa.0.0.vec.extract.i.i, %b.sroa.0.0.vec.extract.i.i, !dbg !405
  %a.sroa.0.4.vec.extract.i.i = extractelement <2 x float> %40, i32 1, !dbg !405
  %b.sroa.0.4.vec.extract.i.i = extractelement <2 x float> %42, i32 1, !dbg !405
  %mul3.i.i = fmul float %a.sroa.0.4.vec.extract.i.i, %b.sroa.0.4.vec.extract.i.i, !dbg !405
  %sub.i.i = fsub float %mul.i.i, %mul3.i.i, !dbg !405
  %mul7.i.i = fmul float %a.sroa.0.0.vec.extract.i.i, %b.sroa.0.4.vec.extract.i.i, !dbg !406
  %mul10.i.i = fmul float %a.sroa.0.4.vec.extract.i.i, %b.sroa.0.0.vec.extract.i.i, !dbg !406
  %add.i.i = fadd float %mul7.i.i, %mul10.i.i, !dbg !406
  %retval.sroa.0.0.vec.insert.i.i = insertelement <2 x float> undef, float %sub.i.i, i32 0, !dbg !407
  %retval.sroa.0.4.vec.insert.i.i = insertelement <2 x float> %retval.sroa.0.0.vec.insert.i.i, float %add.i.i, i32 1, !dbg !407
  %coerce.sroa.0.0.cast.i = bitcast %struct.t_complex* %arrayidx62.i to <2 x float>*, !dbg !399
  store <2 x float> %retval.sroa.0.4.vec.insert.i.i, <2 x float>* %coerce.sroa.0.0.cast.i, align 4, !dbg !399
  %indvars.iv.next136.i = add i64 %indvars.iv135.i, 1, !dbg !401
  %lftr.wideiv746 = trunc i64 %indvars.iv.next136.i to i32, !dbg !401
  %exitcond747 = icmp eq i32 %lftr.wideiv746, 3, !dbg !401
  br i1 %exitcond747, label %for.inc78.i, label %for.body56.i, !dbg !401

for.inc78.i:                                      ; preds = %for.body56.i
  %indvars.iv.next140.i = add i64 %indvars.iv139.i, 1, !dbg !387
  %lftr.wideiv748 = trunc i64 %indvars.iv.next140.i to i32, !dbg !387
  %exitcond749 = icmp eq i32 %lftr.wideiv748, %27, !dbg !387
  br i1 %exitcond749, label %for.inc81.i, label %for.cond53.preheader.i, !dbg !387

for.inc81.i:                                      ; preds = %for.inc78.i, %for.cond49.loopexit.i
  %indvars.iv.next145.i = add i64 %indvars.iv144.i, 1, !dbg !381
  %lftr.wideiv750 = trunc i64 %indvars.iv.next145.i to i32, !dbg !381
  %exitcond751 = icmp eq i32 %lftr.wideiv750, %26, !dbg !381
  br i1 %exitcond751, label %for.cond60.preheader, label %for.cond2.preheader.i, !dbg !381

for.cond60.preheader:                             ; preds = %for.inc81.i, %for.cond.preheader.i
  %43 = load i32* @do_ewald.nx, align 4, !dbg !408, !tbaa !341
  %cmp61706 = icmp sgt i32 %43, 0, !dbg !408
  br i1 %cmp61706, label %for.body63.lr.ph, label %for.end312, !dbg !408

for.body63.lr.ph:                                 ; preds = %for.cond60.preheader
  %44 = load float* %arraydecay, align 4, !dbg !410, !tbaa !371
  %conv149 = fpext float %conv2 to double, !dbg !412
  %arrayidx239 = getelementptr inbounds [3 x float]* %lrvir, i64 0, i64 0, !dbg !417
  %arrayidx244 = getelementptr inbounds [3 x float]* %lrvir, i64 0, i64 1, !dbg !418
  %arrayidx249 = getelementptr inbounds [3 x float]* %lrvir, i64 0, i64 2, !dbg !419
  %arrayidx254 = getelementptr inbounds [3 x float]* %lrvir, i64 1, i64 1, !dbg !420
  %arrayidx259 = getelementptr inbounds [3 x float]* %lrvir, i64 1, i64 2, !dbg !421
  %arrayidx264 = getelementptr inbounds [3 x float]* %lrvir, i64 2, i64 2, !dbg !422
  %.pre756 = load i32* @do_ewald.ny, align 4, !dbg !423, !tbaa !341
  br label %for.body63, !dbg !408

for.body63:                                       ; preds = %for.inc310, %for.body63.lr.ph
  %45 = phi i32 [ %.pre756, %for.body63.lr.ph ], [ %127, %for.inc310 ], !dbg !410
  %46 = phi i32 [ %43, %for.body63.lr.ph ], [ %128, %for.inc310 ]
  %indvars.iv742 = phi i64 [ 0, %for.body63.lr.ph ], [ %indvars.iv.next743, %for.inc310 ]
  %energy.0710 = phi float [ 0.000000e+00, %for.body63.lr.ph ], [ %energy.1.lcssa, %for.inc310 ]
  %lowiy.0709 = phi i32 [ 0, %for.body63.lr.ph ], [ %lowiy.1.lcssa, %for.inc310 ]
  %lowiz.0708 = phi i32 [ 1, %for.body63.lr.ph ], [ %lowiz.1.lcssa, %for.inc310 ]
  %47 = trunc i64 %indvars.iv742 to i32, !dbg !410
  %conv64 = sitofp i32 %47 to float, !dbg !410
  %mul66 = fmul float %conv64, %44, !dbg !410
  call void @llvm.dbg.value(metadata !{float %mul66}, i64 0, metadata !246), !dbg !410
  call void @llvm.dbg.value(metadata !{i32 %lowiy.0709}, i64 0, metadata !238), !dbg !423
  %cmp68687 = icmp slt i32 %lowiy.0709, %45, !dbg !423
  br i1 %cmp68687, label %for.body70.lr.ph, label %for.inc310, !dbg !423

for.body70.lr.ph:                                 ; preds = %for.body63
  %mul134 = fmul float %mul66, %mul66, !dbg !424
  %48 = sext i32 %lowiy.0709 to i64
  br label %for.body70, !dbg !423

for.body70:                                       ; preds = %for.body70.lr.ph, %for.end305
  %49 = phi i32 [ %45, %for.body70.lr.ph ], [ %125, %for.end305 ]
  %indvars.iv740 = phi i64 [ %48, %for.body70.lr.ph ], [ %indvars.iv.next741, %for.end305 ]
  %energy.1690 = phi float [ %energy.0710, %for.body70.lr.ph ], [ %energy.2.lcssa, %for.end305 ]
  %lowiz.1689 = phi i32 [ %lowiz.0708, %for.body70.lr.ph ], [ %lowiz.2.lcssa, %for.end305 ]
  %50 = trunc i64 %indvars.iv740 to i32, !dbg !425
  %conv71 = sitofp i32 %50 to float, !dbg !425
  %mul73 = fmul float %conv71, %conv6.i, !dbg !425
  call void @llvm.dbg.value(metadata !{float %mul73}, i64 0, metadata !247), !dbg !425
  %cmp74 = icmp sgt i32 %50, -1, !dbg !426
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !240), !dbg !427
  %51 = load i32* %nodeid55.pre-phi, align 4, !dbg !427, !tbaa !341
  %idxprom79644 = sext i32 %51 to i64, !dbg !427
  %arrayidx81645 = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 7, i64 %idxprom79644, !dbg !427
  %52 = load i32* %arrayidx81645, align 4, !dbg !427, !tbaa !341
  %cmp82646 = icmp sgt i32 %52, 0, !dbg !427
  br i1 %cmp74, label %for.cond77.preheader, label %for.cond101.preheader, !dbg !426

for.cond77.preheader:                             ; preds = %for.body70
  br i1 %cmp82646, label %for.body84, label %if.end126, !dbg !427

for.cond101.preheader:                            ; preds = %for.body70
  br i1 %cmp82646, label %for.body108.lr.ph, label %if.end126, !dbg !429

for.body108.lr.ph:                                ; preds = %for.cond101.preheader
  %sub = sub i64 0, %indvars.iv740, !dbg !431
  %sext757 = shl i64 %sub, 32, !dbg !431
  %idxprom117 = ashr exact i64 %sext757, 32, !dbg !431
  br label %for.body108, !dbg !429

for.body84:                                       ; preds = %for.body84, %for.cond77.preheader
  %indvars.iv726 = phi i64 [ 0, %for.cond77.preheader ], [ %indvars.iv.next727, %for.body84 ]
  %53 = load %struct.t_complex** @do_ewald.tab_xy, align 8, !dbg !432, !tbaa !350
  %arrayidx86 = getelementptr inbounds %struct.t_complex* %53, i64 %indvars.iv726, !dbg !432
  %54 = load [3 x %struct.t_complex]*** @do_ewald.eir, align 8, !dbg !432, !tbaa !350
  %arrayidx89 = getelementptr inbounds [3 x %struct.t_complex]** %54, i64 %indvars.iv742, !dbg !432
  %55 = load [3 x %struct.t_complex]** %arrayidx89, align 8, !dbg !432, !tbaa !350
  %arrayidx91 = getelementptr inbounds [3 x %struct.t_complex]* %55, i64 %indvars.iv726, i64 0, !dbg !432
  %arrayidx94 = getelementptr inbounds [3 x %struct.t_complex]** %54, i64 %indvars.iv740, !dbg !432
  %56 = load [3 x %struct.t_complex]** %arrayidx94, align 8, !dbg !432, !tbaa !350
  %arrayidx96 = getelementptr inbounds [3 x %struct.t_complex]* %56, i64 %indvars.iv726, i64 1, !dbg !432
  %57 = bitcast %struct.t_complex* %arrayidx91 to <2 x float>*, !dbg !432
  %58 = load <2 x float>* %57, align 1, !dbg !432
  %59 = bitcast %struct.t_complex* %arrayidx96 to <2 x float>*, !dbg !432
  %60 = load <2 x float>* %59, align 1, !dbg !432
  tail call void @llvm.dbg.declare(metadata !402, metadata !275), !dbg !433
  tail call void @llvm.dbg.declare(metadata !402, metadata !276), !dbg !433
  tail call void @llvm.dbg.declare(metadata !402, metadata !277), !dbg !434
  %a.sroa.0.0.vec.extract.i621 = extractelement <2 x float> %58, i32 0, !dbg !435
  %b.sroa.0.0.vec.extract.i622 = extractelement <2 x float> %60, i32 0, !dbg !435
  %mul.i623 = fmul float %a.sroa.0.0.vec.extract.i621, %b.sroa.0.0.vec.extract.i622, !dbg !435
  %a.sroa.0.4.vec.extract.i624 = extractelement <2 x float> %58, i32 1, !dbg !435
  %b.sroa.0.4.vec.extract.i625 = extractelement <2 x float> %60, i32 1, !dbg !435
  %mul3.i626 = fmul float %a.sroa.0.4.vec.extract.i624, %b.sroa.0.4.vec.extract.i625, !dbg !435
  %sub.i627 = fsub float %mul.i623, %mul3.i626, !dbg !435
  %mul7.i628 = fmul float %a.sroa.0.0.vec.extract.i621, %b.sroa.0.4.vec.extract.i625, !dbg !436
  %mul10.i629 = fmul float %a.sroa.0.4.vec.extract.i624, %b.sroa.0.0.vec.extract.i622, !dbg !436
  %add.i630 = fadd float %mul7.i628, %mul10.i629, !dbg !436
  %retval.sroa.0.0.vec.insert.i631 = insertelement <2 x float> undef, float %sub.i627, i32 0, !dbg !437
  %retval.sroa.0.4.vec.insert.i632 = insertelement <2 x float> %retval.sroa.0.0.vec.insert.i631, float %add.i630, i32 1, !dbg !437
  %coerce.sroa.0.0.cast = bitcast %struct.t_complex* %arrayidx86 to <2 x float>*, !dbg !432
  store <2 x float> %retval.sroa.0.4.vec.insert.i632, <2 x float>* %coerce.sroa.0.0.cast, align 4, !dbg !432
  %indvars.iv.next727 = add i64 %indvars.iv726, 1, !dbg !427
  %61 = load i32* %nodeid55.pre-phi, align 4, !dbg !427, !tbaa !341
  %idxprom79 = sext i32 %61 to i64, !dbg !427
  %arrayidx81 = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 7, i64 %idxprom79, !dbg !427
  %62 = load i32* %arrayidx81, align 4, !dbg !427, !tbaa !341
  %63 = trunc i64 %indvars.iv.next727 to i32, !dbg !427
  %cmp82 = icmp slt i32 %63, %62, !dbg !427
  br i1 %cmp82, label %for.body84, label %if.end126, !dbg !427

for.body108:                                      ; preds = %for.body108, %for.body108.lr.ph
  %indvars.iv724 = phi i64 [ 0, %for.body108.lr.ph ], [ %indvars.iv.next725, %for.body108 ]
  %64 = load %struct.t_complex** @do_ewald.tab_xy, align 8, !dbg !431, !tbaa !350
  %arrayidx110 = getelementptr inbounds %struct.t_complex* %64, i64 %indvars.iv724, !dbg !431
  %65 = load [3 x %struct.t_complex]*** @do_ewald.eir, align 8, !dbg !431, !tbaa !350
  %arrayidx113 = getelementptr inbounds [3 x %struct.t_complex]** %65, i64 %indvars.iv742, !dbg !431
  %66 = load [3 x %struct.t_complex]** %arrayidx113, align 8, !dbg !431, !tbaa !350
  %arrayidx115 = getelementptr inbounds [3 x %struct.t_complex]* %66, i64 %indvars.iv724, i64 0, !dbg !431
  %arrayidx118 = getelementptr inbounds [3 x %struct.t_complex]** %65, i64 %idxprom117, !dbg !431
  %67 = load [3 x %struct.t_complex]** %arrayidx118, align 8, !dbg !431, !tbaa !350
  %arrayidx120 = getelementptr inbounds [3 x %struct.t_complex]* %67, i64 %indvars.iv724, i64 1, !dbg !431
  %68 = bitcast %struct.t_complex* %arrayidx115 to <2 x float>*, !dbg !431
  %69 = load <2 x float>* %68, align 1, !dbg !431
  %70 = bitcast %struct.t_complex* %arrayidx120 to <2 x float>*, !dbg !431
  %71 = load <2 x float>* %70, align 1, !dbg !431
  tail call void @llvm.dbg.declare(metadata !402, metadata !269), !dbg !438
  tail call void @llvm.dbg.declare(metadata !402, metadata !270), !dbg !438
  tail call void @llvm.dbg.declare(metadata !402, metadata !271), !dbg !439
  %a.sroa.0.0.vec.extract.i609 = extractelement <2 x float> %69, i32 0, !dbg !440
  %b.sroa.0.0.vec.extract.i610 = extractelement <2 x float> %71, i32 0, !dbg !440
  %mul.i611 = fmul float %a.sroa.0.0.vec.extract.i609, %b.sroa.0.0.vec.extract.i610, !dbg !440
  %a.sroa.0.4.vec.extract.i612 = extractelement <2 x float> %69, i32 1, !dbg !440
  %b.sroa.0.4.vec.extract.i613 = extractelement <2 x float> %71, i32 1, !dbg !440
  %mul3.i614 = fmul float %a.sroa.0.4.vec.extract.i612, %b.sroa.0.4.vec.extract.i613, !dbg !440
  %add.i615 = fadd float %mul.i611, %mul3.i614, !dbg !440
  %mul7.i616 = fmul float %a.sroa.0.4.vec.extract.i612, %b.sroa.0.0.vec.extract.i610, !dbg !441
  %mul10.i617 = fmul float %a.sroa.0.0.vec.extract.i609, %b.sroa.0.4.vec.extract.i613, !dbg !441
  %sub.i618 = fsub float %mul7.i616, %mul10.i617, !dbg !441
  %retval.sroa.0.0.vec.insert.i619 = insertelement <2 x float> undef, float %add.i615, i32 0, !dbg !442
  %retval.sroa.0.4.vec.insert.i620 = insertelement <2 x float> %retval.sroa.0.0.vec.insert.i619, float %sub.i618, i32 1, !dbg !442
  %coerce122.sroa.0.0.cast = bitcast %struct.t_complex* %arrayidx110 to <2 x float>*, !dbg !431
  store <2 x float> %retval.sroa.0.4.vec.insert.i620, <2 x float>* %coerce122.sroa.0.0.cast, align 4, !dbg !431
  %indvars.iv.next725 = add i64 %indvars.iv724, 1, !dbg !429
  %72 = load i32* %nodeid55.pre-phi, align 4, !dbg !429, !tbaa !341
  %idxprom103 = sext i32 %72 to i64, !dbg !429
  %arrayidx105 = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 7, i64 %idxprom103, !dbg !429
  %73 = load i32* %arrayidx105, align 4, !dbg !429, !tbaa !341
  %74 = trunc i64 %indvars.iv.next725 to i32, !dbg !429
  %cmp106 = icmp slt i32 %74, %73, !dbg !429
  br i1 %cmp106, label %for.body108, label %if.end126, !dbg !429

if.end126:                                        ; preds = %for.cond77.preheader, %for.body84, %for.cond101.preheader, %for.body108
  call void @llvm.dbg.value(metadata !{i32 %lowiz.1.lcssa}, i64 0, metadata !239), !dbg !443
  %75 = load i32* @do_ewald.nz, align 4, !dbg !443, !tbaa !341
  %cmp128674 = icmp slt i32 %lowiz.1689, %75, !dbg !443
  br i1 %cmp128674, label %for.body130.lr.ph, label %for.end305, !dbg !443

for.body130.lr.ph:                                ; preds = %if.end126
  %mul135 = fmul float %mul73, %mul73, !dbg !424
  %add136 = fadd float %mul134, %mul135, !dbg !424
  %76 = sext i32 %lowiz.1689 to i64
  br label %for.body130, !dbg !443

for.body130:                                      ; preds = %for.body130.lr.ph, %for.end301
  %indvars.iv737 = phi i64 [ %76, %for.body130.lr.ph ], [ %indvars.iv.next738, %for.end301 ]
  %energy.2676 = phi float [ %energy.1690, %for.body130.lr.ph ], [ %add231, %for.end301 ]
  %77 = trunc i64 %indvars.iv737 to i32, !dbg !444
  %conv131 = sitofp i32 %77 to float, !dbg !444
  %mul133 = fmul float %conv131, %conv11.i, !dbg !444
  call void @llvm.dbg.value(metadata !{float %mul133}, i64 0, metadata !248), !dbg !444
  %mul137 = fmul float %mul133, %mul133, !dbg !424
  %add138 = fadd float %add136, %mul137, !dbg !424
  call void @llvm.dbg.value(metadata !{float %add138}, i64 0, metadata !249), !dbg !424
  %mul139 = fmul float %conv2, %add138, !dbg !445
  %conv140 = fpext float %mul139 to double, !dbg !445
  %call141 = call double @exp(double %conv140) #6, !dbg !445
  %conv142 = fpext float %add138 to double, !dbg !445
  %div143 = fdiv double %call141, %conv142, !dbg !445
  %conv144 = fptrunc double %div143 to float, !dbg !445
  call void @llvm.dbg.value(metadata !{float %conv144}, i64 0, metadata !244), !dbg !445
  %conv145 = fpext float %conv144 to double, !dbg !412
  %mul146 = fmul double %conv145, 2.000000e+00, !dbg !412
  %div148 = fdiv double 1.000000e+00, %conv142, !dbg !412
  %sub150 = fsub double %div148, %conv149, !dbg !412
  %mul151 = fmul double %sub150, %mul146, !dbg !412
  %conv152 = fptrunc double %mul151 to float, !dbg !412
  call void @llvm.dbg.value(metadata !{float %conv152}, i64 0, metadata !245), !dbg !412
  %cmp153 = icmp sgt i32 %77, -1, !dbg !446
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !240), !dbg !447
  %78 = load i32* %nodeid55.pre-phi, align 4, !dbg !447, !tbaa !341
  %idxprom158656 = sext i32 %78 to i64, !dbg !447
  %arrayidx160657 = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 7, i64 %idxprom158656, !dbg !447
  %79 = load i32* %arrayidx160657, align 4, !dbg !447, !tbaa !341
  %cmp161658 = icmp sgt i32 %79, 0, !dbg !447
  br i1 %cmp153, label %for.cond156.preheader, label %for.cond182.preheader, !dbg !446

for.cond156.preheader:                            ; preds = %for.body130
  br i1 %cmp161658, label %for.body163, label %if.end209, !dbg !447

for.cond182.preheader:                            ; preds = %for.body130
  br i1 %cmp161658, label %for.body189.lr.ph, label %if.end209, !dbg !449

for.body189.lr.ph:                                ; preds = %for.cond182.preheader
  %sub198 = sub i64 0, %indvars.iv737, !dbg !451
  %sext = shl i64 %sub198, 32, !dbg !451
  %idxprom199 = ashr exact i64 %sext, 32, !dbg !451
  br label %for.body189, !dbg !449

for.body163:                                      ; preds = %for.cond156.preheader, %for.body163
  %indvars.iv730 = phi i64 [ %indvars.iv.next731, %for.body163 ], [ 0, %for.cond156.preheader ]
  %80 = load %struct.t_complex** @do_ewald.tab_qxyz, align 8, !dbg !452, !tbaa !350
  %arrayidx165 = getelementptr inbounds %struct.t_complex* %80, i64 %indvars.iv730, !dbg !452
  %arrayidx167 = getelementptr inbounds float* %charge, i64 %indvars.iv730, !dbg !452
  %81 = load float* %arrayidx167, align 4, !dbg !452, !tbaa !371
  %82 = load %struct.t_complex** @do_ewald.tab_xy, align 8, !dbg !452, !tbaa !350
  %arrayidx169 = getelementptr inbounds %struct.t_complex* %82, i64 %indvars.iv730, !dbg !452
  %83 = load [3 x %struct.t_complex]*** @do_ewald.eir, align 8, !dbg !452, !tbaa !350
  %arrayidx172 = getelementptr inbounds [3 x %struct.t_complex]** %83, i64 %indvars.iv737, !dbg !452
  %84 = load [3 x %struct.t_complex]** %arrayidx172, align 8, !dbg !452, !tbaa !350
  %arrayidx174 = getelementptr inbounds [3 x %struct.t_complex]* %84, i64 %indvars.iv730, i64 2, !dbg !452
  %85 = bitcast %struct.t_complex* %arrayidx169 to <2 x float>*, !dbg !452
  %86 = load <2 x float>* %85, align 1, !dbg !452
  %87 = bitcast %struct.t_complex* %arrayidx174 to <2 x float>*, !dbg !452
  %88 = load <2 x float>* %87, align 1, !dbg !452
  tail call void @llvm.dbg.declare(metadata !402, metadata !275), !dbg !453
  tail call void @llvm.dbg.declare(metadata !402, metadata !276), !dbg !453
  tail call void @llvm.dbg.declare(metadata !402, metadata !277), !dbg !454
  %a.sroa.0.0.vec.extract.i597 = extractelement <2 x float> %86, i32 0, !dbg !455
  %b.sroa.0.0.vec.extract.i598 = extractelement <2 x float> %88, i32 0, !dbg !455
  %mul.i599 = fmul float %a.sroa.0.0.vec.extract.i597, %b.sroa.0.0.vec.extract.i598, !dbg !455
  %a.sroa.0.4.vec.extract.i600 = extractelement <2 x float> %86, i32 1, !dbg !455
  %b.sroa.0.4.vec.extract.i601 = extractelement <2 x float> %88, i32 1, !dbg !455
  %mul3.i602 = fmul float %a.sroa.0.4.vec.extract.i600, %b.sroa.0.4.vec.extract.i601, !dbg !455
  %sub.i603 = fsub float %mul.i599, %mul3.i602, !dbg !455
  %mul7.i604 = fmul float %a.sroa.0.0.vec.extract.i597, %b.sroa.0.4.vec.extract.i601, !dbg !456
  %mul10.i605 = fmul float %a.sroa.0.4.vec.extract.i600, %b.sroa.0.0.vec.extract.i598, !dbg !456
  %add.i606 = fadd float %mul7.i604, %mul10.i605, !dbg !456
  tail call void @llvm.dbg.value(metadata !{float %81}, i64 0, metadata !457), !dbg !458
  tail call void @llvm.dbg.declare(metadata !402, metadata !262), !dbg !458
  tail call void @llvm.dbg.declare(metadata !402, metadata !263), !dbg !459
  %mul.i592 = fmul float %81, %sub.i603, !dbg !460
  %mul2.i594 = fmul float %81, %add.i606, !dbg !461
  %retval.sroa.0.0.vec.insert.i595 = insertelement <2 x float> undef, float %mul.i592, i32 0, !dbg !462
  %retval.sroa.0.4.vec.insert.i596 = insertelement <2 x float> %retval.sroa.0.0.vec.insert.i595, float %mul2.i594, i32 1, !dbg !462
  %coerce177.sroa.0.0.cast = bitcast %struct.t_complex* %arrayidx165 to <2 x float>*, !dbg !452
  store <2 x float> %retval.sroa.0.4.vec.insert.i596, <2 x float>* %coerce177.sroa.0.0.cast, align 4, !dbg !452
  %indvars.iv.next731 = add i64 %indvars.iv730, 1, !dbg !447
  %89 = load i32* %nodeid55.pre-phi, align 4, !dbg !447, !tbaa !341
  %idxprom158 = sext i32 %89 to i64, !dbg !447
  %arrayidx160 = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 7, i64 %idxprom158, !dbg !447
  %90 = load i32* %arrayidx160, align 4, !dbg !447, !tbaa !341
  %91 = trunc i64 %indvars.iv.next731 to i32, !dbg !447
  %cmp161 = icmp slt i32 %91, %90, !dbg !447
  br i1 %cmp161, label %for.body163, label %if.end209, !dbg !447

for.body189:                                      ; preds = %for.body189.lr.ph, %for.body189
  %indvars.iv728 = phi i64 [ 0, %for.body189.lr.ph ], [ %indvars.iv.next729, %for.body189 ]
  %92 = load %struct.t_complex** @do_ewald.tab_qxyz, align 8, !dbg !451, !tbaa !350
  %arrayidx191 = getelementptr inbounds %struct.t_complex* %92, i64 %indvars.iv728, !dbg !451
  %arrayidx193 = getelementptr inbounds float* %charge, i64 %indvars.iv728, !dbg !451
  %93 = load float* %arrayidx193, align 4, !dbg !451, !tbaa !371
  %94 = load %struct.t_complex** @do_ewald.tab_xy, align 8, !dbg !451, !tbaa !350
  %arrayidx196 = getelementptr inbounds %struct.t_complex* %94, i64 %indvars.iv728, !dbg !451
  %95 = load [3 x %struct.t_complex]*** @do_ewald.eir, align 8, !dbg !451, !tbaa !350
  %arrayidx200 = getelementptr inbounds [3 x %struct.t_complex]** %95, i64 %idxprom199, !dbg !451
  %96 = load [3 x %struct.t_complex]** %arrayidx200, align 8, !dbg !451, !tbaa !350
  %arrayidx202 = getelementptr inbounds [3 x %struct.t_complex]* %96, i64 %indvars.iv728, i64 2, !dbg !451
  %97 = bitcast %struct.t_complex* %arrayidx196 to <2 x float>*, !dbg !451
  %98 = load <2 x float>* %97, align 1, !dbg !451
  %99 = bitcast %struct.t_complex* %arrayidx202 to <2 x float>*, !dbg !451
  %100 = load <2 x float>* %99, align 1, !dbg !451
  tail call void @llvm.dbg.declare(metadata !402, metadata !269), !dbg !463
  tail call void @llvm.dbg.declare(metadata !402, metadata !270), !dbg !463
  tail call void @llvm.dbg.declare(metadata !402, metadata !271), !dbg !464
  %a.sroa.0.0.vec.extract.i = extractelement <2 x float> %98, i32 0, !dbg !465
  %b.sroa.0.0.vec.extract.i = extractelement <2 x float> %100, i32 0, !dbg !465
  %mul.i588 = fmul float %a.sroa.0.0.vec.extract.i, %b.sroa.0.0.vec.extract.i, !dbg !465
  %a.sroa.0.4.vec.extract.i = extractelement <2 x float> %98, i32 1, !dbg !465
  %b.sroa.0.4.vec.extract.i = extractelement <2 x float> %100, i32 1, !dbg !465
  %mul3.i = fmul float %a.sroa.0.4.vec.extract.i, %b.sroa.0.4.vec.extract.i, !dbg !465
  %add.i = fadd float %mul.i588, %mul3.i, !dbg !465
  %mul7.i = fmul float %a.sroa.0.4.vec.extract.i, %b.sroa.0.0.vec.extract.i, !dbg !466
  %mul10.i = fmul float %a.sroa.0.0.vec.extract.i, %b.sroa.0.4.vec.extract.i, !dbg !466
  %sub.i = fsub float %mul7.i, %mul10.i, !dbg !466
  tail call void @llvm.dbg.value(metadata !{float %93}, i64 0, metadata !467), !dbg !468
  tail call void @llvm.dbg.declare(metadata !402, metadata !262), !dbg !468
  tail call void @llvm.dbg.declare(metadata !402, metadata !263), !dbg !469
  %mul.i = fmul float %93, %add.i, !dbg !470
  %mul2.i = fmul float %93, %sub.i, !dbg !471
  %retval.sroa.0.0.vec.insert.i = insertelement <2 x float> undef, float %mul.i, i32 0, !dbg !472
  %retval.sroa.0.4.vec.insert.i = insertelement <2 x float> %retval.sroa.0.0.vec.insert.i, float %mul2.i, i32 1, !dbg !472
  %coerce205.sroa.0.0.cast = bitcast %struct.t_complex* %arrayidx191 to <2 x float>*, !dbg !451
  store <2 x float> %retval.sroa.0.4.vec.insert.i, <2 x float>* %coerce205.sroa.0.0.cast, align 4, !dbg !451
  %indvars.iv.next729 = add i64 %indvars.iv728, 1, !dbg !449
  %101 = load i32* %nodeid55.pre-phi, align 4, !dbg !449, !tbaa !341
  %idxprom184 = sext i32 %101 to i64, !dbg !449
  %arrayidx186 = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 7, i64 %idxprom184, !dbg !449
  %102 = load i32* %arrayidx186, align 4, !dbg !449, !tbaa !341
  %103 = trunc i64 %indvars.iv.next729 to i32, !dbg !449
  %cmp187 = icmp slt i32 %103, %102, !dbg !449
  br i1 %cmp187, label %for.body189, label %if.end209, !dbg !449

if.end209:                                        ; preds = %for.body163, %for.body189, %for.cond156.preheader, %for.cond182.preheader
  %104 = phi i32 [ %78, %for.cond182.preheader ], [ %78, %for.cond156.preheader ], [ %101, %for.body189 ], [ %89, %for.body163 ]
  call void @llvm.dbg.value(metadata !360, i64 0, metadata !243), !dbg !473
  call void @llvm.dbg.value(metadata !360, i64 0, metadata !242), !dbg !473
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !240), !dbg !474
  %idxprom212662 = sext i32 %104 to i64, !dbg !474
  %arrayidx214663 = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 7, i64 %idxprom212662, !dbg !474
  %105 = load i32* %arrayidx214663, align 4, !dbg !474, !tbaa !341
  %cmp215664 = icmp sgt i32 %105, 0, !dbg !474
  br i1 %cmp215664, label %for.body217.lr.ph, label %for.end226, !dbg !474

for.body217.lr.ph:                                ; preds = %if.end209
  %106 = load %struct.t_complex** @do_ewald.tab_qxyz, align 8, !dbg !476, !tbaa !350
  br label %for.body217, !dbg !474

for.body217:                                      ; preds = %for.body217.lr.ph, %for.body217
  %indvars.iv732 = phi i64 [ 0, %for.body217.lr.ph ], [ %indvars.iv.next733, %for.body217 ]
  %ss.0667 = phi float [ 0.000000e+00, %for.body217.lr.ph ], [ %add223, %for.body217 ]
  %cs.0666 = phi float [ 0.000000e+00, %for.body217.lr.ph ], [ %add220, %for.body217 ]
  %re = getelementptr inbounds %struct.t_complex* %106, i64 %indvars.iv732, i32 0, !dbg !476
  %107 = load float* %re, align 4, !dbg !476, !tbaa !371
  %add220 = fadd float %cs.0666, %107, !dbg !476
  call void @llvm.dbg.value(metadata !{float %add220}, i64 0, metadata !242), !dbg !476
  %im = getelementptr inbounds %struct.t_complex* %106, i64 %indvars.iv732, i32 1, !dbg !478
  %108 = load float* %im, align 4, !dbg !478, !tbaa !371
  %add223 = fadd float %ss.0667, %108, !dbg !478
  call void @llvm.dbg.value(metadata !{float %add223}, i64 0, metadata !243), !dbg !478
  %indvars.iv.next733 = add i64 %indvars.iv732, 1, !dbg !474
  %109 = trunc i64 %indvars.iv.next733 to i32, !dbg !474
  %cmp215 = icmp slt i32 %109, %105, !dbg !474
  br i1 %cmp215, label %for.body217, label %for.end226, !dbg !474

for.end226:                                       ; preds = %for.body217, %if.end209
  %ss.0.lcssa = phi float [ 0.000000e+00, %if.end209 ], [ %add223, %for.body217 ]
  %cs.0.lcssa = phi float [ 0.000000e+00, %if.end209 ], [ %add220, %for.body217 ]
  %mul227 = fmul float %cs.0.lcssa, %cs.0.lcssa, !dbg !479
  %mul228 = fmul float %ss.0.lcssa, %ss.0.lcssa, !dbg !479
  %add229 = fadd float %mul227, %mul228, !dbg !479
  %mul230 = fmul float %conv144, %add229, !dbg !479
  %add231 = fadd float %energy.2676, %mul230, !dbg !479
  call void @llvm.dbg.value(metadata !{float %add231}, i64 0, metadata !233), !dbg !479
  %mul235 = fmul float %conv152, %add229, !dbg !480
  call void @llvm.dbg.value(metadata !{float %mul235}, i64 0, metadata !241), !dbg !480
  %mul236 = fmul float %mul66, %mul235, !dbg !417
  %mul237 = fmul float %mul66, %mul236, !dbg !417
  %110 = load float* %arrayidx239, align 4, !dbg !417, !tbaa !371
  %sub240 = fsub float %110, %mul237, !dbg !417
  store float %sub240, float* %arrayidx239, align 4, !dbg !417, !tbaa !371
  %mul242 = fmul float %mul73, %mul236, !dbg !418
  %111 = load float* %arrayidx244, align 4, !dbg !418, !tbaa !371
  %sub245 = fsub float %111, %mul242, !dbg !418
  store float %sub245, float* %arrayidx244, align 4, !dbg !418, !tbaa !371
  %mul247 = fmul float %mul133, %mul236, !dbg !419
  %112 = load float* %arrayidx249, align 4, !dbg !419, !tbaa !371
  %sub250 = fsub float %112, %mul247, !dbg !419
  store float %sub250, float* %arrayidx249, align 4, !dbg !419, !tbaa !371
  %mul251 = fmul float %mul73, %mul235, !dbg !420
  %mul252 = fmul float %mul73, %mul251, !dbg !420
  %113 = load float* %arrayidx254, align 4, !dbg !420, !tbaa !371
  %sub255 = fsub float %113, %mul252, !dbg !420
  store float %sub255, float* %arrayidx254, align 4, !dbg !420, !tbaa !371
  %mul257 = fmul float %mul133, %mul251, !dbg !421
  %114 = load float* %arrayidx259, align 4, !dbg !421, !tbaa !371
  %sub260 = fsub float %114, %mul257, !dbg !421
  store float %sub260, float* %arrayidx259, align 4, !dbg !421, !tbaa !371
  %mul261 = fmul float %mul133, %mul235, !dbg !422
  %mul262 = fmul float %mul133, %mul261, !dbg !422
  %115 = load float* %arrayidx264, align 4, !dbg !422, !tbaa !371
  %sub265 = fsub float %115, %mul262, !dbg !422
  store float %sub265, float* %arrayidx264, align 4, !dbg !422, !tbaa !371
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !240), !dbg !481
  br i1 %cmp215664, label %for.body273.lr.ph, label %for.end301, !dbg !481

for.body273.lr.ph:                                ; preds = %for.end226
  %116 = load %struct.t_complex** @do_ewald.tab_qxyz, align 8, !dbg !483, !tbaa !350
  br label %for.body273, !dbg !481

for.body273:                                      ; preds = %for.body273.lr.ph, %for.body273
  %indvars.iv734 = phi i64 [ 0, %for.body273.lr.ph ], [ %indvars.iv.next735, %for.body273 ]
  %im276 = getelementptr inbounds %struct.t_complex* %116, i64 %indvars.iv734, i32 1, !dbg !483
  %117 = load float* %im276, align 4, !dbg !483, !tbaa !371
  %mul277 = fmul float %cs.0.lcssa, %117, !dbg !483
  %re280 = getelementptr inbounds %struct.t_complex* %116, i64 %indvars.iv734, i32 0, !dbg !483
  %118 = load float* %re280, align 4, !dbg !483, !tbaa !371
  %mul281 = fmul float %ss.0.lcssa, %118, !dbg !483
  %sub282 = fsub float %mul277, %mul281, !dbg !483
  %mul283 = fmul float %conv144, %sub282, !dbg !483
  call void @llvm.dbg.value(metadata !{float %mul283}, i64 0, metadata !241), !dbg !483
  %mul284 = fmul float %mul66, %mul283, !dbg !485
  %arrayidx287 = getelementptr inbounds [3 x float]* %f, i64 %indvars.iv734, i64 0, !dbg !485
  %119 = load float* %arrayidx287, align 4, !dbg !485, !tbaa !371
  %add288 = fadd float %119, %mul284, !dbg !485
  store float %add288, float* %arrayidx287, align 4, !dbg !485, !tbaa !371
  %mul289 = fmul float %mul73, %mul283, !dbg !486
  %arrayidx292 = getelementptr inbounds [3 x float]* %f, i64 %indvars.iv734, i64 1, !dbg !486
  %120 = load float* %arrayidx292, align 4, !dbg !486, !tbaa !371
  %add293 = fadd float %120, %mul289, !dbg !486
  store float %add293, float* %arrayidx292, align 4, !dbg !486, !tbaa !371
  %mul294 = fmul float %mul133, %mul283, !dbg !487
  %arrayidx297 = getelementptr inbounds [3 x float]* %f, i64 %indvars.iv734, i64 2, !dbg !487
  %121 = load float* %arrayidx297, align 4, !dbg !487, !tbaa !371
  %add298 = fadd float %121, %mul294, !dbg !487
  store float %add298, float* %arrayidx297, align 4, !dbg !487, !tbaa !371
  %indvars.iv.next735 = add i64 %indvars.iv734, 1, !dbg !481
  %122 = trunc i64 %indvars.iv.next735 to i32, !dbg !481
  %cmp271 = icmp slt i32 %122, %105, !dbg !481
  br i1 %cmp271, label %for.body273, label %for.end301, !dbg !481

for.end301:                                       ; preds = %for.body273, %for.end226
  %123 = load i32* @do_ewald.nz, align 4, !dbg !488, !tbaa !341
  call void @llvm.dbg.value(metadata !{i32 %sub302}, i64 0, metadata !236), !dbg !488
  %indvars.iv.next738 = add i64 %indvars.iv737, 1, !dbg !443
  %124 = trunc i64 %indvars.iv.next738 to i32, !dbg !443
  %cmp128 = icmp slt i32 %124, %123, !dbg !443
  br i1 %cmp128, label %for.body130, label %for.cond127.for.end305_crit_edge, !dbg !443

for.cond127.for.end305_crit_edge:                 ; preds = %for.end301
  %sub302 = sub nsw i32 1, %123, !dbg !488
  %.pre755 = load i32* @do_ewald.ny, align 4, !dbg !489, !tbaa !341
  br label %for.end305, !dbg !443

for.end305:                                       ; preds = %for.cond127.for.end305_crit_edge, %if.end126
  %125 = phi i32 [ %.pre755, %for.cond127.for.end305_crit_edge ], [ %49, %if.end126 ], !dbg !489
  %energy.2.lcssa = phi float [ %add231, %for.cond127.for.end305_crit_edge ], [ %energy.1690, %if.end126 ]
  %lowiz.2.lcssa = phi i32 [ %sub302, %for.cond127.for.end305_crit_edge ], [ %lowiz.1689, %if.end126 ]
  call void @llvm.dbg.value(metadata !{i32 %sub306}, i64 0, metadata !235), !dbg !489
  %indvars.iv.next741 = add i64 %indvars.iv740, 1, !dbg !423
  %126 = trunc i64 %indvars.iv.next741 to i32, !dbg !423
  %cmp68 = icmp slt i32 %126, %125, !dbg !423
  br i1 %cmp68, label %for.body70, label %for.cond67.for.inc310_crit_edge, !dbg !423

for.cond67.for.inc310_crit_edge:                  ; preds = %for.end305
  %sub306 = sub nsw i32 1, %125, !dbg !489
  %.pre = load i32* @do_ewald.nx, align 4, !dbg !408, !tbaa !341
  br label %for.inc310, !dbg !423

for.inc310:                                       ; preds = %for.cond67.for.inc310_crit_edge, %for.body63
  %127 = phi i32 [ %125, %for.cond67.for.inc310_crit_edge ], [ %45, %for.body63 ]
  %128 = phi i32 [ %.pre, %for.cond67.for.inc310_crit_edge ], [ %46, %for.body63 ], !dbg !408
  %energy.1.lcssa = phi float [ %energy.2.lcssa, %for.cond67.for.inc310_crit_edge ], [ %energy.0710, %for.body63 ]
  %lowiy.1.lcssa = phi i32 [ %sub306, %for.cond67.for.inc310_crit_edge ], [ %lowiy.0709, %for.body63 ]
  %lowiz.1.lcssa = phi i32 [ %lowiz.2.lcssa, %for.cond67.for.inc310_crit_edge ], [ %lowiz.0708, %for.body63 ]
  %indvars.iv.next743 = add i64 %indvars.iv742, 1, !dbg !408
  %129 = trunc i64 %indvars.iv.next743 to i32, !dbg !408
  %cmp61 = icmp slt i32 %129, %128, !dbg !408
  br i1 %cmp61, label %for.body63, label %for.end312, !dbg !408

for.end312:                                       ; preds = %for.inc310, %for.cond60.preheader
  %energy.0.lcssa = phi float [ 0.000000e+00, %for.cond60.preheader ], [ %energy.1.lcssa, %for.inc310 ]
  %130 = load float* %box, align 4, !dbg !490, !tbaa !371
  %131 = load float* %arrayidx3.i, align 4, !dbg !490, !tbaa !371
  %mul315 = fmul float %130, %131, !dbg !490
  %132 = load float* %arrayidx8.i, align 4, !dbg !490, !tbaa !371
  %mul317 = fmul float %mul315, %132, !dbg !490
  %conv318 = fpext float %mul317 to double, !dbg !490
  %div319 = fdiv double 0x402921FB54442D18, %conv318, !dbg !490
  %mul320 = fmul double %div319, 3.320636e+02, !dbg !490
  %mul321 = fmul double %mul320, 4.184000e+00, !dbg !490
  %mul322 = fmul double %mul321, 1.000000e-01, !dbg !490
  %conv323 = fptrunc double %mul322 to float, !dbg !490
  call void @llvm.dbg.value(metadata !{float %conv323}, i64 0, metadata !241), !dbg !490
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !240), !dbg !491
  %133 = load i32* %nodeid55.pre-phi, align 4, !dbg !491, !tbaa !341
  %idxprom326635 = sext i32 %133 to i64, !dbg !491
  %arrayidx328636 = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 7, i64 %idxprom326635, !dbg !491
  %134 = load i32* %arrayidx328636, align 4, !dbg !491, !tbaa !341
  %cmp329637 = icmp sgt i32 %134, 0, !dbg !491
  br i1 %cmp329637, label %for.body331.lr.ph, label %for.end349, !dbg !491

for.body331.lr.ph:                                ; preds = %for.end312
  %mul332 = fmul float %conv323, 2.000000e+00, !dbg !493
  br label %for.body331, !dbg !491

for.body331:                                      ; preds = %for.body331.lr.ph, %for.body331
  %indvars.iv = phi i64 [ 0, %for.body331.lr.ph ], [ %indvars.iv.next, %for.body331 ]
  %arrayidx335 = getelementptr inbounds [3 x float]* %f, i64 %indvars.iv, i64 0, !dbg !493
  %135 = load float* %arrayidx335, align 4, !dbg !493, !tbaa !371
  %mul336 = fmul float %mul332, %135, !dbg !493
  store float %mul336, float* %arrayidx335, align 4, !dbg !493, !tbaa !371
  %arrayidx340 = getelementptr inbounds [3 x float]* %f, i64 %indvars.iv, i64 1, !dbg !495
  %136 = load float* %arrayidx340, align 4, !dbg !495, !tbaa !371
  %mul341 = fmul float %mul332, %136, !dbg !495
  store float %mul341, float* %arrayidx340, align 4, !dbg !495, !tbaa !371
  %arrayidx345 = getelementptr inbounds [3 x float]* %f, i64 %indvars.iv, i64 2, !dbg !496
  %137 = load float* %arrayidx345, align 4, !dbg !496, !tbaa !371
  %mul346 = fmul float %mul332, %137, !dbg !496
  store float %mul346, float* %arrayidx345, align 4, !dbg !496, !tbaa !371
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !491
  %138 = trunc i64 %indvars.iv.next to i32, !dbg !491
  %cmp329 = icmp slt i32 %138, %134, !dbg !491
  br i1 %cmp329, label %for.body331, label %for.end349, !dbg !491

for.end349:                                       ; preds = %for.body331, %for.end312
  %conv350 = fpext float %conv323 to double, !dbg !497
  %mul351 = fmul double %conv350, -5.000000e-01, !dbg !497
  %arrayidx353 = getelementptr inbounds [3 x float]* %lrvir, i64 0, i64 0, !dbg !497
  %139 = load float* %arrayidx353, align 4, !dbg !497, !tbaa !371
  %add354 = fadd float %energy.0.lcssa, %139, !dbg !497
  %conv355 = fpext float %add354 to double, !dbg !497
  %mul356 = fmul double %mul351, %conv355, !dbg !497
  %conv357 = fptrunc double %mul356 to float, !dbg !497
  store float %conv357, float* %arrayidx353, align 4, !dbg !497, !tbaa !371
  %arrayidx363 = getelementptr inbounds [3 x float]* %lrvir, i64 0, i64 1, !dbg !498
  %140 = load float* %arrayidx363, align 4, !dbg !498, !tbaa !371
  %conv364 = fpext float %140 to double, !dbg !498
  %mul365 = fmul double %mul351, %conv364, !dbg !498
  %conv366 = fptrunc double %mul365 to float, !dbg !498
  store float %conv366, float* %arrayidx363, align 4, !dbg !498, !tbaa !371
  %arrayidx372 = getelementptr inbounds [3 x float]* %lrvir, i64 0, i64 2, !dbg !499
  %141 = load float* %arrayidx372, align 4, !dbg !499, !tbaa !371
  %conv373 = fpext float %141 to double, !dbg !499
  %mul374 = fmul double %mul351, %conv373, !dbg !499
  %conv375 = fptrunc double %mul374 to float, !dbg !499
  store float %conv375, float* %arrayidx372, align 4, !dbg !499, !tbaa !371
  %arrayidx381 = getelementptr inbounds [3 x float]* %lrvir, i64 1, i64 1, !dbg !500
  %142 = load float* %arrayidx381, align 4, !dbg !500, !tbaa !371
  %add382 = fadd float %energy.0.lcssa, %142, !dbg !500
  %conv383 = fpext float %add382 to double, !dbg !500
  %mul384 = fmul double %mul351, %conv383, !dbg !500
  %conv385 = fptrunc double %mul384 to float, !dbg !500
  store float %conv385, float* %arrayidx381, align 4, !dbg !500, !tbaa !371
  %arrayidx391 = getelementptr inbounds [3 x float]* %lrvir, i64 1, i64 2, !dbg !501
  %143 = load float* %arrayidx391, align 4, !dbg !501, !tbaa !371
  %conv392 = fpext float %143 to double, !dbg !501
  %mul393 = fmul double %mul351, %conv392, !dbg !501
  %conv394 = fptrunc double %mul393 to float, !dbg !501
  store float %conv394, float* %arrayidx391, align 4, !dbg !501, !tbaa !371
  %arrayidx400 = getelementptr inbounds [3 x float]* %lrvir, i64 2, i64 2, !dbg !502
  %144 = load float* %arrayidx400, align 4, !dbg !502, !tbaa !371
  %add401 = fadd float %energy.0.lcssa, %144, !dbg !502
  %conv402 = fpext float %add401 to double, !dbg !502
  %mul403 = fmul double %mul351, %conv402, !dbg !502
  %conv404 = fptrunc double %mul403 to float, !dbg !502
  store float %conv404, float* %arrayidx400, align 4, !dbg !502, !tbaa !371
  %arrayidx410 = getelementptr inbounds [3 x float]* %lrvir, i64 1, i64 0, !dbg !503
  store float %conv366, float* %arrayidx410, align 4, !dbg !503, !tbaa !371
  %arrayidx414 = getelementptr inbounds [3 x float]* %lrvir, i64 2, i64 0, !dbg !504
  store float %conv375, float* %arrayidx414, align 4, !dbg !504, !tbaa !371
  %arrayidx418 = getelementptr inbounds [3 x float]* %lrvir, i64 2, i64 1, !dbg !505
  store float %conv394, float* %arrayidx418, align 4, !dbg !505, !tbaa !371
  %mul419 = fmul float %energy.0.lcssa, %conv323, !dbg !506
  call void @llvm.dbg.value(metadata !{float %mul419}, i64 0, metadata !233), !dbg !506
  ret float %mul419, !dbg !507
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

; Function Attrs: optsize
declare void @fatal_error(i32, i8*, ...) #2

; Function Attrs: optsize
declare i8* @save_calloc(i8*, i8*, i32, i32, i32) #2

; Function Attrs: nounwind optsize
declare double @exp(double) #3

; Function Attrs: nounwind optsize
declare i32 @printf(i8* nocapture, ...) #3

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32) #4

; Function Attrs: nounwind optsize
declare double @cos(double) #3

; Function Attrs: nounwind optsize
declare double @sin(double) #3

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #1

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #5

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #5

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { nounwind optsize }
attributes #7 = { noreturn nounwind optsize }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !314, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/ewald.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/435.gromacs/src/ewald.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4, metadata !250, metadata !265, metadata !273, metadata !279, metadata !296, metadata !304}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"do_ewald", metadata !"do_ewald", metadata !"", i32 94, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, float (%struct._IO_FILE*, i32, %struct.t_inputrec*, [3 x float]*, [3 x float]*, float*, float*, %struct.t_commrec*, %struct.t_nsborder*, [3 x float]*, float)* @do_ewald, null, null, metadata !220, i32 100} ; [ DW_TAG_subprogram ] [line 94] [def] [scope 100] [do_ewald]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/ewald.c]
!6 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8, metadata !10, metadata !16, metadata !68, metadata !170, metadata !170, metadata !166, metadata !166, metadata !189, metadata !200, metadata !219, metadata !8}
!8 = metadata !{i32 786454, metadata !1, null, metadata !"real", i32 87, i64 0, i64 0, i64 0, i32 0, metadata !9} ; [ DW_TAG_typedef ] [real] [line 87, size 0, align 0, offset 0] [from float]
!9 = metadata !{i32 786468, null, null, metadata !"float", i32 0, i64 32, i64 32, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [float] [line 0, size 32, align 32, offset 0, enc DW_ATE_float]
!10 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !11} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from FILE]
!11 = metadata !{i32 786454, metadata !1, null, metadata !"FILE", i32 48, i64 0, i64 0, i64 0, i32 0, metadata !12} ; [ DW_TAG_typedef ] [FILE] [line 48, size 0, align 0, offset 0] [from _IO_FILE]
!12 = metadata !{i32 786451, metadata !13, null, metadata !"_IO_FILE", i32 245, i64 1728, i64 64, i32 0, i32 0, null, metadata !14, i32 0, null, null} ; [ DW_TAG_structure_type ] [_IO_FILE] [line 245, size 1728, align 64, offset 0] [from ]
!13 = metadata !{metadata !"/usr/include/libio.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!14 = metadata !{metadata !15, metadata !17, metadata !20, metadata !21, metadata !22, metadata !23, metadata !24, metadata !25, metadata !26, metadata !27, metadata !28, metadata !29, metadata !30, metadata !38, metadata !39, metadata !40, metadata !41, metadata !44, metadata !46, metadata !48, metadata !52, metadata !54, metadata !56, metadata !57, metadata !58, metadata !59, metadata !60, metadata !63, metadata !64}
!15 = metadata !{i32 786445, metadata !13, metadata !12, metadata !"_flags", i32 246, i64 32, i64 32, i64 0, i32 0, metadata !16} ; [ DW_TAG_member ] [_flags] [line 246, size 32, align 32, offset 0] [from int]
!16 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!17 = metadata !{i32 786445, metadata !13, metadata !12, metadata !"_IO_read_ptr", i32 251, i64 64, i64 64, i64 64, i32 0, metadata !18} ; [ DW_TAG_member ] [_IO_read_ptr] [line 251, size 64, align 64, offset 64] [from ]
!18 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !19} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from char]
!19 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!20 = metadata !{i32 786445, metadata !13, metadata !12, metadata !"_IO_read_end", i32 252, i64 64, i64 64, i64 128, i32 0, metadata !18} ; [ DW_TAG_member ] [_IO_read_end] [line 252, size 64, align 64, offset 128] [from ]
!21 = metadata !{i32 786445, metadata !13, metadata !12, metadata !"_IO_read_base", i32 253, i64 64, i64 64, i64 192, i32 0, metadata !18} ; [ DW_TAG_member ] [_IO_read_base] [line 253, size 64, align 64, offset 192] [from ]
!22 = metadata !{i32 786445, metadata !13, metadata !12, metadata !"_IO_write_base", i32 254, i64 64, i64 64, i64 256, i32 0, metadata !18} ; [ DW_TAG_member ] [_IO_write_base] [line 254, size 64, align 64, offset 256] [from ]
!23 = metadata !{i32 786445, metadata !13, metadata !12, metadata !"_IO_write_ptr", i32 255, i64 64, i64 64, i64 320, i32 0, metadata !18} ; [ DW_TAG_member ] [_IO_write_ptr] [line 255, size 64, align 64, offset 320] [from ]
!24 = metadata !{i32 786445, metadata !13, metadata !12, metadata !"_IO_write_end", i32 256, i64 64, i64 64, i64 384, i32 0, metadata !18} ; [ DW_TAG_member ] [_IO_write_end] [line 256, size 64, align 64, offset 384] [from ]
!25 = metadata !{i32 786445, metadata !13, metadata !12, metadata !"_IO_buf_base", i32 257, i64 64, i64 64, i64 448, i32 0, metadata !18} ; [ DW_TAG_member ] [_IO_buf_base] [line 257, size 64, align 64, offset 448] [from ]
!26 = metadata !{i32 786445, metadata !13, metadata !12, metadata !"_IO_buf_end", i32 258, i64 64, i64 64, i64 512, i32 0, metadata !18} ; [ DW_TAG_member ] [_IO_buf_end] [line 258, size 64, align 64, offset 512] [from ]
!27 = metadata !{i32 786445, metadata !13, metadata !12, metadata !"_IO_save_base", i32 260, i64 64, i64 64, i64 576, i32 0, metadata !18} ; [ DW_TAG_member ] [_IO_save_base] [line 260, size 64, align 64, offset 576] [from ]
!28 = metadata !{i32 786445, metadata !13, metadata !12, metadata !"_IO_backup_base", i32 261, i64 64, i64 64, i64 640, i32 0, metadata !18} ; [ DW_TAG_member ] [_IO_backup_base] [line 261, size 64, align 64, offset 640] [from ]
!29 = metadata !{i32 786445, metadata !13, metadata !12, metadata !"_IO_save_end", i32 262, i64 64, i64 64, i64 704, i32 0, metadata !18} ; [ DW_TAG_member ] [_IO_save_end] [line 262, size 64, align 64, offset 704] [from ]
!30 = metadata !{i32 786445, metadata !13, metadata !12, metadata !"_markers", i32 264, i64 64, i64 64, i64 768, i32 0, metadata !31} ; [ DW_TAG_member ] [_markers] [line 264, size 64, align 64, offset 768] [from ]
!31 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !32} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from _IO_marker]
!32 = metadata !{i32 786451, metadata !13, null, metadata !"_IO_marker", i32 160, i64 192, i64 64, i32 0, i32 0, null, metadata !33, i32 0, null, null} ; [ DW_TAG_structure_type ] [_IO_marker] [line 160, size 192, align 64, offset 0] [from ]
!33 = metadata !{metadata !34, metadata !35, metadata !37}
!34 = metadata !{i32 786445, metadata !13, metadata !32, metadata !"_next", i32 161, i64 64, i64 64, i64 0, i32 0, metadata !31} ; [ DW_TAG_member ] [_next] [line 161, size 64, align 64, offset 0] [from ]
!35 = metadata !{i32 786445, metadata !13, metadata !32, metadata !"_sbuf", i32 162, i64 64, i64 64, i64 64, i32 0, metadata !36} ; [ DW_TAG_member ] [_sbuf] [line 162, size 64, align 64, offset 64] [from ]
!36 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !12} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from _IO_FILE]
!37 = metadata !{i32 786445, metadata !13, metadata !32, metadata !"_pos", i32 166, i64 32, i64 32, i64 128, i32 0, metadata !16} ; [ DW_TAG_member ] [_pos] [line 166, size 32, align 32, offset 128] [from int]
!38 = metadata !{i32 786445, metadata !13, metadata !12, metadata !"_chain", i32 266, i64 64, i64 64, i64 832, i32 0, metadata !36} ; [ DW_TAG_member ] [_chain] [line 266, size 64, align 64, offset 832] [from ]
!39 = metadata !{i32 786445, metadata !13, metadata !12, metadata !"_fileno", i32 268, i64 32, i64 32, i64 896, i32 0, metadata !16} ; [ DW_TAG_member ] [_fileno] [line 268, size 32, align 32, offset 896] [from int]
!40 = metadata !{i32 786445, metadata !13, metadata !12, metadata !"_flags2", i32 272, i64 32, i64 32, i64 928, i32 0, metadata !16} ; [ DW_TAG_member ] [_flags2] [line 272, size 32, align 32, offset 928] [from int]
!41 = metadata !{i32 786445, metadata !13, metadata !12, metadata !"_old_offset", i32 274, i64 64, i64 64, i64 960, i32 0, metadata !42} ; [ DW_TAG_member ] [_old_offset] [line 274, size 64, align 64, offset 960] [from __off_t]
!42 = metadata !{i32 786454, metadata !13, null, metadata !"__off_t", i32 131, i64 0, i64 0, i64 0, i32 0, metadata !43} ; [ DW_TAG_typedef ] [__off_t] [line 131, size 0, align 0, offset 0] [from long int]
!43 = metadata !{i32 786468, null, null, metadata !"long int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [long int] [line 0, size 64, align 64, offset 0, enc DW_ATE_signed]
!44 = metadata !{i32 786445, metadata !13, metadata !12, metadata !"_cur_column", i32 278, i64 16, i64 16, i64 1024, i32 0, metadata !45} ; [ DW_TAG_member ] [_cur_column] [line 278, size 16, align 16, offset 1024] [from unsigned short]
!45 = metadata !{i32 786468, null, null, metadata !"unsigned short", i32 0, i64 16, i64 16, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned short] [line 0, size 16, align 16, offset 0, enc DW_ATE_unsigned]
!46 = metadata !{i32 786445, metadata !13, metadata !12, metadata !"_vtable_offset", i32 279, i64 8, i64 8, i64 1040, i32 0, metadata !47} ; [ DW_TAG_member ] [_vtable_offset] [line 279, size 8, align 8, offset 1040] [from signed char]
!47 = metadata !{i32 786468, null, null, metadata !"signed char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [signed char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!48 = metadata !{i32 786445, metadata !13, metadata !12, metadata !"_shortbuf", i32 280, i64 8, i64 8, i64 1048, i32 0, metadata !49} ; [ DW_TAG_member ] [_shortbuf] [line 280, size 8, align 8, offset 1048] [from ]
!49 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 8, i64 8, i32 0, i32 0, metadata !19, metadata !50, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 8, align 8, offset 0] [from char]
!50 = metadata !{metadata !51}
!51 = metadata !{i32 786465, i64 0, i64 1}        ; [ DW_TAG_subrange_type ] [0, 0]
!52 = metadata !{i32 786445, metadata !13, metadata !12, metadata !"_lock", i32 284, i64 64, i64 64, i64 1088, i32 0, metadata !53} ; [ DW_TAG_member ] [_lock] [line 284, size 64, align 64, offset 1088] [from ]
!53 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, null} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!54 = metadata !{i32 786445, metadata !13, metadata !12, metadata !"_offset", i32 293, i64 64, i64 64, i64 1152, i32 0, metadata !55} ; [ DW_TAG_member ] [_offset] [line 293, size 64, align 64, offset 1152] [from __off64_t]
!55 = metadata !{i32 786454, metadata !13, null, metadata !"__off64_t", i32 132, i64 0, i64 0, i64 0, i32 0, metadata !43} ; [ DW_TAG_typedef ] [__off64_t] [line 132, size 0, align 0, offset 0] [from long int]
!56 = metadata !{i32 786445, metadata !13, metadata !12, metadata !"__pad1", i32 302, i64 64, i64 64, i64 1216, i32 0, metadata !53} ; [ DW_TAG_member ] [__pad1] [line 302, size 64, align 64, offset 1216] [from ]
!57 = metadata !{i32 786445, metadata !13, metadata !12, metadata !"__pad2", i32 303, i64 64, i64 64, i64 1280, i32 0, metadata !53} ; [ DW_TAG_member ] [__pad2] [line 303, size 64, align 64, offset 1280] [from ]
!58 = metadata !{i32 786445, metadata !13, metadata !12, metadata !"__pad3", i32 304, i64 64, i64 64, i64 1344, i32 0, metadata !53} ; [ DW_TAG_member ] [__pad3] [line 304, size 64, align 64, offset 1344] [from ]
!59 = metadata !{i32 786445, metadata !13, metadata !12, metadata !"__pad4", i32 305, i64 64, i64 64, i64 1408, i32 0, metadata !53} ; [ DW_TAG_member ] [__pad4] [line 305, size 64, align 64, offset 1408] [from ]
!60 = metadata !{i32 786445, metadata !13, metadata !12, metadata !"__pad5", i32 306, i64 64, i64 64, i64 1472, i32 0, metadata !61} ; [ DW_TAG_member ] [__pad5] [line 306, size 64, align 64, offset 1472] [from size_t]
!61 = metadata !{i32 786454, metadata !13, null, metadata !"size_t", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !62} ; [ DW_TAG_typedef ] [size_t] [line 42, size 0, align 0, offset 0] [from long unsigned int]
!62 = metadata !{i32 786468, null, null, metadata !"long unsigned int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [long unsigned int] [line 0, size 64, align 64, offset 0, enc DW_ATE_unsigned]
!63 = metadata !{i32 786445, metadata !13, metadata !12, metadata !"_mode", i32 308, i64 32, i64 32, i64 1536, i32 0, metadata !16} ; [ DW_TAG_member ] [_mode] [line 308, size 32, align 32, offset 1536] [from int]
!64 = metadata !{i32 786445, metadata !13, metadata !12, metadata !"_unused2", i32 310, i64 160, i64 8, i64 1568, i32 0, metadata !65} ; [ DW_TAG_member ] [_unused2] [line 310, size 160, align 8, offset 1568] [from ]
!65 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 160, i64 8, i32 0, i32 0, metadata !19, metadata !66, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 160, align 8, offset 0] [from char]
!66 = metadata !{metadata !67}
!67 = metadata !{i32 786465, i64 0, i64 20}       ; [ DW_TAG_subrange_type ] [0, 19]
!68 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !69} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from t_inputrec]
!69 = metadata !{i32 786454, metadata !1, null, metadata !"t_inputrec", i32 143, i64 0, i64 0, i64 0, i32 0, metadata !70} ; [ DW_TAG_typedef ] [t_inputrec] [line 143, size 0, align 0, offset 0] [from ]
!70 = metadata !{i32 786451, metadata !71, null, metadata !"", i32 55, i64 4736, i64 64, i32 0, i32 0, null, metadata !72, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 55, size 4736, align 64, offset 0] [from ]
!71 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/435.gromacs/src/types/inputrec.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!72 = metadata !{metadata !73, metadata !74, metadata !75, metadata !76, metadata !77, metadata !78, metadata !79, metadata !80, metadata !81, metadata !82, metadata !83, metadata !84, metadata !85, metadata !86, metadata !87, metadata !88, metadata !89, metadata !90, metadata !91, metadata !92, metadata !93, metadata !94, metadata !95, metadata !96, metadata !97, metadata !98, metadata !99, metadata !100, metadata !101, metadata !102, metadata !103, metadata !104, metadata !109, metadata !110, metadata !111, metadata !112, metadata !113, metadata !114, metadata !115, metadata !116, metadata !117, metadata !118, metadata !119, metadata !120, metadata !121, metadata !122, metadata !123, metadata !124, metadata !125, metadata !126, metadata !127, metadata !128, metadata !129, metadata !130, metadata !131, metadata !132, metadata !133, metadata !134, metadata !135, metadata !136, metadata !137, metadata !138, metadata !139, metadata !140, metadata !141, metadata !142, metadata !143, metadata !144, metadata !145, metadata !146, metadata !147, metadata !148, metadata !149, metadata !150, metadata !151, metadata !152, metadata !153, metadata !154, metadata !155, metadata !156, metadata !157, metadata !180, metadata !188}
!73 = metadata !{i32 786445, metadata !71, metadata !70, metadata !"eI", i32 56, i64 32, i64 32, i64 0, i32 0, metadata !16} ; [ DW_TAG_member ] [eI] [line 56, size 32, align 32, offset 0] [from int]
!74 = metadata !{i32 786445, metadata !71, metadata !70, metadata !"nsteps", i32 57, i64 32, i64 32, i64 32, i32 0, metadata !16} ; [ DW_TAG_member ] [nsteps] [line 57, size 32, align 32, offset 32] [from int]
!75 = metadata !{i32 786445, metadata !71, metadata !70, metadata !"ns_type", i32 58, i64 32, i64 32, i64 64, i32 0, metadata !16} ; [ DW_TAG_member ] [ns_type] [line 58, size 32, align 32, offset 64] [from int]
!76 = metadata !{i32 786445, metadata !71, metadata !70, metadata !"nstlist", i32 59, i64 32, i64 32, i64 96, i32 0, metadata !16} ; [ DW_TAG_member ] [nstlist] [line 59, size 32, align 32, offset 96] [from int]
!77 = metadata !{i32 786445, metadata !71, metadata !70, metadata !"ndelta", i32 60, i64 32, i64 32, i64 128, i32 0, metadata !16} ; [ DW_TAG_member ] [ndelta] [line 60, size 32, align 32, offset 128] [from int]
!78 = metadata !{i32 786445, metadata !71, metadata !70, metadata !"bDomDecomp", i32 61, i64 32, i64 32, i64 160, i32 0, metadata !16} ; [ DW_TAG_member ] [bDomDecomp] [line 61, size 32, align 32, offset 160] [from int]
!79 = metadata !{i32 786445, metadata !71, metadata !70, metadata !"decomp_dir", i32 62, i64 32, i64 32, i64 192, i32 0, metadata !16} ; [ DW_TAG_member ] [decomp_dir] [line 62, size 32, align 32, offset 192] [from int]
!80 = metadata !{i32 786445, metadata !71, metadata !70, metadata !"nstcomm", i32 63, i64 32, i64 32, i64 224, i32 0, metadata !16} ; [ DW_TAG_member ] [nstcomm] [line 63, size 32, align 32, offset 224] [from int]
!81 = metadata !{i32 786445, metadata !71, metadata !70, metadata !"nstlog", i32 65, i64 32, i64 32, i64 256, i32 0, metadata !16} ; [ DW_TAG_member ] [nstlog] [line 65, size 32, align 32, offset 256] [from int]
!82 = metadata !{i32 786445, metadata !71, metadata !70, metadata !"nstxout", i32 66, i64 32, i64 32, i64 288, i32 0, metadata !16} ; [ DW_TAG_member ] [nstxout] [line 66, size 32, align 32, offset 288] [from int]
!83 = metadata !{i32 786445, metadata !71, metadata !70, metadata !"nstvout", i32 67, i64 32, i64 32, i64 320, i32 0, metadata !16} ; [ DW_TAG_member ] [nstvout] [line 67, size 32, align 32, offset 320] [from int]
!84 = metadata !{i32 786445, metadata !71, metadata !70, metadata !"nstfout", i32 68, i64 32, i64 32, i64 352, i32 0, metadata !16} ; [ DW_TAG_member ] [nstfout] [line 68, size 32, align 32, offset 352] [from int]
!85 = metadata !{i32 786445, metadata !71, metadata !70, metadata !"nstenergy", i32 69, i64 32, i64 32, i64 384, i32 0, metadata !16} ; [ DW_TAG_member ] [nstenergy] [line 69, size 32, align 32, offset 384] [from int]
!86 = metadata !{i32 786445, metadata !71, metadata !70, metadata !"nstxtcout", i32 70, i64 32, i64 32, i64 416, i32 0, metadata !16} ; [ DW_TAG_member ] [nstxtcout] [line 70, size 32, align 32, offset 416] [from int]
!87 = metadata !{i32 786445, metadata !71, metadata !70, metadata !"init_t", i32 71, i64 32, i64 32, i64 448, i32 0, metadata !8} ; [ DW_TAG_member ] [init_t] [line 71, size 32, align 32, offset 448] [from real]
!88 = metadata !{i32 786445, metadata !71, metadata !70, metadata !"delta_t", i32 72, i64 32, i64 32, i64 480, i32 0, metadata !8} ; [ DW_TAG_member ] [delta_t] [line 72, size 32, align 32, offset 480] [from real]
!89 = metadata !{i32 786445, metadata !71, metadata !70, metadata !"xtcprec", i32 73, i64 32, i64 32, i64 512, i32 0, metadata !8} ; [ DW_TAG_member ] [xtcprec] [line 73, size 32, align 32, offset 512] [from real]
!90 = metadata !{i32 786445, metadata !71, metadata !70, metadata !"nkx", i32 74, i64 32, i64 32, i64 544, i32 0, metadata !16} ; [ DW_TAG_member ] [nkx] [line 74, size 32, align 32, offset 544] [from int]
!91 = metadata !{i32 786445, metadata !71, metadata !70, metadata !"nky", i32 74, i64 32, i64 32, i64 576, i32 0, metadata !16} ; [ DW_TAG_member ] [nky] [line 74, size 32, align 32, offset 576] [from int]
!92 = metadata !{i32 786445, metadata !71, metadata !70, metadata !"nkz", i32 74, i64 32, i64 32, i64 608, i32 0, metadata !16} ; [ DW_TAG_member ] [nkz] [line 74, size 32, align 32, offset 608] [from int]
!93 = metadata !{i32 786445, metadata !71, metadata !70, metadata !"pme_order", i32 76, i64 32, i64 32, i64 640, i32 0, metadata !16} ; [ DW_TAG_member ] [pme_order] [line 76, size 32, align 32, offset 640] [from int]
!94 = metadata !{i32 786445, metadata !71, metadata !70, metadata !"ewald_rtol", i32 77, i64 32, i64 32, i64 672, i32 0, metadata !8} ; [ DW_TAG_member ] [ewald_rtol] [line 77, size 32, align 32, offset 672] [from real]
!95 = metadata !{i32 786445, metadata !71, metadata !70, metadata !"ewald_geometry", i32 79, i64 32, i64 32, i64 704, i32 0, metadata !16} ; [ DW_TAG_member ] [ewald_geometry] [line 79, size 32, align 32, offset 704] [from int]
!96 = metadata !{i32 786445, metadata !71, metadata !70, metadata !"epsilon_surface", i32 80, i64 32, i64 32, i64 736, i32 0, metadata !16} ; [ DW_TAG_member ] [epsilon_surface] [line 80, size 32, align 32, offset 736] [from int]
!97 = metadata !{i32 786445, metadata !71, metadata !70, metadata !"bOptFFT", i32 81, i64 32, i64 32, i64 768, i32 0, metadata !16} ; [ DW_TAG_member ] [bOptFFT] [line 81, size 32, align 32, offset 768] [from int]
!98 = metadata !{i32 786445, metadata !71, metadata !70, metadata !"ePBC", i32 82, i64 32, i64 32, i64 800, i32 0, metadata !16} ; [ DW_TAG_member ] [ePBC] [line 82, size 32, align 32, offset 800] [from int]
!99 = metadata !{i32 786445, metadata !71, metadata !70, metadata !"bUncStart", i32 83, i64 32, i64 32, i64 832, i32 0, metadata !16} ; [ DW_TAG_member ] [bUncStart] [line 83, size 32, align 32, offset 832] [from int]
!100 = metadata !{i32 786445, metadata !71, metadata !70, metadata !"etc", i32 84, i64 32, i64 32, i64 864, i32 0, metadata !16} ; [ DW_TAG_member ] [etc] [line 84, size 32, align 32, offset 864] [from int]
!101 = metadata !{i32 786445, metadata !71, metadata !70, metadata !"epc", i32 85, i64 32, i64 32, i64 896, i32 0, metadata !16} ; [ DW_TAG_member ] [epc] [line 85, size 32, align 32, offset 896] [from int]
!102 = metadata !{i32 786445, metadata !71, metadata !70, metadata !"epct", i32 86, i64 32, i64 32, i64 928, i32 0, metadata !16} ; [ DW_TAG_member ] [epct] [line 86, size 32, align 32, offset 928] [from int]
!103 = metadata !{i32 786445, metadata !71, metadata !70, metadata !"tau_p", i32 87, i64 32, i64 32, i64 960, i32 0, metadata !8} ; [ DW_TAG_member ] [tau_p] [line 87, size 32, align 32, offset 960] [from real]
!104 = metadata !{i32 786445, metadata !71, metadata !70, metadata !"ref_p", i32 88, i64 288, i64 32, i64 992, i32 0, metadata !105} ; [ DW_TAG_member ] [ref_p] [line 88, size 288, align 32, offset 992] [from tensor]
!105 = metadata !{i32 786454, metadata !71, null, metadata !"tensor", i32 105, i64 0, i64 0, i64 0, i32 0, metadata !106} ; [ DW_TAG_typedef ] [tensor] [line 105, size 0, align 0, offset 0] [from ]
!106 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 288, i64 32, i32 0, i32 0, metadata !8, metadata !107, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 288, align 32, offset 0] [from real]
!107 = metadata !{metadata !108, metadata !108}
!108 = metadata !{i32 786465, i64 0, i64 3}       ; [ DW_TAG_subrange_type ] [0, 2]
!109 = metadata !{i32 786445, metadata !71, metadata !70, metadata !"compress", i32 89, i64 288, i64 32, i64 1280, i32 0, metadata !105} ; [ DW_TAG_member ] [compress] [line 89, size 288, align 32, offset 1280] [from tensor]
!110 = metadata !{i32 786445, metadata !71, metadata !70, metadata !"bSimAnn", i32 90, i64 32, i64 32, i64 1568, i32 0, metadata !16} ; [ DW_TAG_member ] [bSimAnn] [line 90, size 32, align 32, offset 1568] [from int]
!111 = metadata !{i32 786445, metadata !71, metadata !70, metadata !"zero_temp_time", i32 91, i64 32, i64 32, i64 1600, i32 0, metadata !8} ; [ DW_TAG_member ] [zero_temp_time] [line 91, size 32, align 32, offset 1600] [from real]
!112 = metadata !{i32 786445, metadata !71, metadata !70, metadata !"rlist", i32 92, i64 32, i64 32, i64 1632, i32 0, metadata !8} ; [ DW_TAG_member ] [rlist] [line 92, size 32, align 32, offset 1632] [from real]
!113 = metadata !{i32 786445, metadata !71, metadata !70, metadata !"coulombtype", i32 93, i64 32, i64 32, i64 1664, i32 0, metadata !16} ; [ DW_TAG_member ] [coulombtype] [line 93, size 32, align 32, offset 1664] [from int]
!114 = metadata !{i32 786445, metadata !71, metadata !70, metadata !"rcoulomb_switch", i32 94, i64 32, i64 32, i64 1696, i32 0, metadata !8} ; [ DW_TAG_member ] [rcoulomb_switch] [line 94, size 32, align 32, offset 1696] [from real]
!115 = metadata !{i32 786445, metadata !71, metadata !70, metadata !"rcoulomb", i32 95, i64 32, i64 32, i64 1728, i32 0, metadata !8} ; [ DW_TAG_member ] [rcoulomb] [line 95, size 32, align 32, offset 1728] [from real]
!116 = metadata !{i32 786445, metadata !71, metadata !70, metadata !"vdwtype", i32 96, i64 32, i64 32, i64 1760, i32 0, metadata !16} ; [ DW_TAG_member ] [vdwtype] [line 96, size 32, align 32, offset 1760] [from int]
!117 = metadata !{i32 786445, metadata !71, metadata !70, metadata !"rvdw_switch", i32 97, i64 32, i64 32, i64 1792, i32 0, metadata !8} ; [ DW_TAG_member ] [rvdw_switch] [line 97, size 32, align 32, offset 1792] [from real]
!118 = metadata !{i32 786445, metadata !71, metadata !70, metadata !"rvdw", i32 98, i64 32, i64 32, i64 1824, i32 0, metadata !8} ; [ DW_TAG_member ] [rvdw] [line 98, size 32, align 32, offset 1824] [from real]
!119 = metadata !{i32 786445, metadata !71, metadata !70, metadata !"epsilon_r", i32 99, i64 32, i64 32, i64 1856, i32 0, metadata !8} ; [ DW_TAG_member ] [epsilon_r] [line 99, size 32, align 32, offset 1856] [from real]
!120 = metadata !{i32 786445, metadata !71, metadata !70, metadata !"eDispCorr", i32 100, i64 32, i64 32, i64 1888, i32 0, metadata !16} ; [ DW_TAG_member ] [eDispCorr] [line 100, size 32, align 32, offset 1888] [from int]
!121 = metadata !{i32 786445, metadata !71, metadata !70, metadata !"shake_tol", i32 101, i64 32, i64 32, i64 1920, i32 0, metadata !8} ; [ DW_TAG_member ] [shake_tol] [line 101, size 32, align 32, offset 1920] [from real]
!122 = metadata !{i32 786445, metadata !71, metadata !70, metadata !"fudgeQQ", i32 102, i64 32, i64 32, i64 1952, i32 0, metadata !8} ; [ DW_TAG_member ] [fudgeQQ] [line 102, size 32, align 32, offset 1952] [from real]
!123 = metadata !{i32 786445, metadata !71, metadata !70, metadata !"efep", i32 103, i64 32, i64 32, i64 1984, i32 0, metadata !16} ; [ DW_TAG_member ] [efep] [line 103, size 32, align 32, offset 1984] [from int]
!124 = metadata !{i32 786445, metadata !71, metadata !70, metadata !"init_lambda", i32 104, i64 32, i64 32, i64 2016, i32 0, metadata !8} ; [ DW_TAG_member ] [init_lambda] [line 104, size 32, align 32, offset 2016] [from real]
!125 = metadata !{i32 786445, metadata !71, metadata !70, metadata !"delta_lambda", i32 105, i64 32, i64 32, i64 2048, i32 0, metadata !8} ; [ DW_TAG_member ] [delta_lambda] [line 105, size 32, align 32, offset 2048] [from real]
!126 = metadata !{i32 786445, metadata !71, metadata !70, metadata !"sc_alpha", i32 106, i64 32, i64 32, i64 2080, i32 0, metadata !8} ; [ DW_TAG_member ] [sc_alpha] [line 106, size 32, align 32, offset 2080] [from real]
!127 = metadata !{i32 786445, metadata !71, metadata !70, metadata !"sc_sigma", i32 107, i64 32, i64 32, i64 2112, i32 0, metadata !8} ; [ DW_TAG_member ] [sc_sigma] [line 107, size 32, align 32, offset 2112] [from real]
!128 = metadata !{i32 786445, metadata !71, metadata !70, metadata !"dr_fc", i32 108, i64 32, i64 32, i64 2144, i32 0, metadata !8} ; [ DW_TAG_member ] [dr_fc] [line 108, size 32, align 32, offset 2144] [from real]
!129 = metadata !{i32 786445, metadata !71, metadata !70, metadata !"eDisreWeighting", i32 109, i64 32, i64 32, i64 2176, i32 0, metadata !16} ; [ DW_TAG_member ] [eDisreWeighting] [line 109, size 32, align 32, offset 2176] [from int]
!130 = metadata !{i32 786445, metadata !71, metadata !70, metadata !"bDisreMixed", i32 110, i64 32, i64 32, i64 2208, i32 0, metadata !16} ; [ DW_TAG_member ] [bDisreMixed] [line 110, size 32, align 32, offset 2208] [from int]
!131 = metadata !{i32 786445, metadata !71, metadata !70, metadata !"nstdisreout", i32 111, i64 32, i64 32, i64 2240, i32 0, metadata !16} ; [ DW_TAG_member ] [nstdisreout] [line 111, size 32, align 32, offset 2240] [from int]
!132 = metadata !{i32 786445, metadata !71, metadata !70, metadata !"dr_tau", i32 112, i64 32, i64 32, i64 2272, i32 0, metadata !8} ; [ DW_TAG_member ] [dr_tau] [line 112, size 32, align 32, offset 2272] [from real]
!133 = metadata !{i32 786445, metadata !71, metadata !70, metadata !"orires_fc", i32 113, i64 32, i64 32, i64 2304, i32 0, metadata !8} ; [ DW_TAG_member ] [orires_fc] [line 113, size 32, align 32, offset 2304] [from real]
!134 = metadata !{i32 786445, metadata !71, metadata !70, metadata !"orires_tau", i32 114, i64 32, i64 32, i64 2336, i32 0, metadata !8} ; [ DW_TAG_member ] [orires_tau] [line 114, size 32, align 32, offset 2336] [from real]
!135 = metadata !{i32 786445, metadata !71, metadata !70, metadata !"nstorireout", i32 115, i64 32, i64 32, i64 2368, i32 0, metadata !16} ; [ DW_TAG_member ] [nstorireout] [line 115, size 32, align 32, offset 2368] [from int]
!136 = metadata !{i32 786445, metadata !71, metadata !70, metadata !"em_stepsize", i32 116, i64 32, i64 32, i64 2400, i32 0, metadata !8} ; [ DW_TAG_member ] [em_stepsize] [line 116, size 32, align 32, offset 2400] [from real]
!137 = metadata !{i32 786445, metadata !71, metadata !70, metadata !"em_tol", i32 117, i64 32, i64 32, i64 2432, i32 0, metadata !8} ; [ DW_TAG_member ] [em_tol] [line 117, size 32, align 32, offset 2432] [from real]
!138 = metadata !{i32 786445, metadata !71, metadata !70, metadata !"niter", i32 118, i64 32, i64 32, i64 2464, i32 0, metadata !16} ; [ DW_TAG_member ] [niter] [line 118, size 32, align 32, offset 2464] [from int]
!139 = metadata !{i32 786445, metadata !71, metadata !70, metadata !"fc_stepsize", i32 120, i64 32, i64 32, i64 2496, i32 0, metadata !16} ; [ DW_TAG_member ] [fc_stepsize] [line 120, size 32, align 32, offset 2496] [from int]
!140 = metadata !{i32 786445, metadata !71, metadata !70, metadata !"nstcgsteep", i32 122, i64 32, i64 32, i64 2528, i32 0, metadata !16} ; [ DW_TAG_member ] [nstcgsteep] [line 122, size 32, align 32, offset 2528] [from int]
!141 = metadata !{i32 786445, metadata !71, metadata !70, metadata !"eConstrAlg", i32 124, i64 32, i64 32, i64 2560, i32 0, metadata !16} ; [ DW_TAG_member ] [eConstrAlg] [line 124, size 32, align 32, offset 2560] [from int]
!142 = metadata !{i32 786445, metadata !71, metadata !70, metadata !"nProjOrder", i32 125, i64 32, i64 32, i64 2592, i32 0, metadata !16} ; [ DW_TAG_member ] [nProjOrder] [line 125, size 32, align 32, offset 2592] [from int]
!143 = metadata !{i32 786445, metadata !71, metadata !70, metadata !"LincsWarnAngle", i32 126, i64 32, i64 32, i64 2624, i32 0, metadata !8} ; [ DW_TAG_member ] [LincsWarnAngle] [line 126, size 32, align 32, offset 2624] [from real]
!144 = metadata !{i32 786445, metadata !71, metadata !70, metadata !"bShakeSOR", i32 127, i64 32, i64 32, i64 2656, i32 0, metadata !16} ; [ DW_TAG_member ] [bShakeSOR] [line 127, size 32, align 32, offset 2656] [from int]
!145 = metadata !{i32 786445, metadata !71, metadata !70, metadata !"bd_temp", i32 128, i64 32, i64 32, i64 2688, i32 0, metadata !8} ; [ DW_TAG_member ] [bd_temp] [line 128, size 32, align 32, offset 2688] [from real]
!146 = metadata !{i32 786445, metadata !71, metadata !70, metadata !"bd_fric", i32 129, i64 32, i64 32, i64 2720, i32 0, metadata !8} ; [ DW_TAG_member ] [bd_fric] [line 129, size 32, align 32, offset 2720] [from real]
!147 = metadata !{i32 786445, metadata !71, metadata !70, metadata !"ld_seed", i32 130, i64 32, i64 32, i64 2752, i32 0, metadata !16} ; [ DW_TAG_member ] [ld_seed] [line 130, size 32, align 32, offset 2752] [from int]
!148 = metadata !{i32 786445, metadata !71, metadata !70, metadata !"cos_accel", i32 131, i64 32, i64 32, i64 2784, i32 0, metadata !8} ; [ DW_TAG_member ] [cos_accel] [line 131, size 32, align 32, offset 2784] [from real]
!149 = metadata !{i32 786445, metadata !71, metadata !70, metadata !"userint1", i32 132, i64 32, i64 32, i64 2816, i32 0, metadata !16} ; [ DW_TAG_member ] [userint1] [line 132, size 32, align 32, offset 2816] [from int]
!150 = metadata !{i32 786445, metadata !71, metadata !70, metadata !"userint2", i32 133, i64 32, i64 32, i64 2848, i32 0, metadata !16} ; [ DW_TAG_member ] [userint2] [line 133, size 32, align 32, offset 2848] [from int]
!151 = metadata !{i32 786445, metadata !71, metadata !70, metadata !"userint3", i32 134, i64 32, i64 32, i64 2880, i32 0, metadata !16} ; [ DW_TAG_member ] [userint3] [line 134, size 32, align 32, offset 2880] [from int]
!152 = metadata !{i32 786445, metadata !71, metadata !70, metadata !"userint4", i32 135, i64 32, i64 32, i64 2912, i32 0, metadata !16} ; [ DW_TAG_member ] [userint4] [line 135, size 32, align 32, offset 2912] [from int]
!153 = metadata !{i32 786445, metadata !71, metadata !70, metadata !"userreal1", i32 136, i64 32, i64 32, i64 2944, i32 0, metadata !8} ; [ DW_TAG_member ] [userreal1] [line 136, size 32, align 32, offset 2944] [from real]
!154 = metadata !{i32 786445, metadata !71, metadata !70, metadata !"userreal2", i32 137, i64 32, i64 32, i64 2976, i32 0, metadata !8} ; [ DW_TAG_member ] [userreal2] [line 137, size 32, align 32, offset 2976] [from real]
!155 = metadata !{i32 786445, metadata !71, metadata !70, metadata !"userreal3", i32 138, i64 32, i64 32, i64 3008, i32 0, metadata !8} ; [ DW_TAG_member ] [userreal3] [line 138, size 32, align 32, offset 3008] [from real]
!156 = metadata !{i32 786445, metadata !71, metadata !70, metadata !"userreal4", i32 139, i64 32, i64 32, i64 3040, i32 0, metadata !8} ; [ DW_TAG_member ] [userreal4] [line 139, size 32, align 32, offset 3040] [from real]
!157 = metadata !{i32 786445, metadata !71, metadata !70, metadata !"opts", i32 140, i64 512, i64 64, i64 3072, i32 0, metadata !158} ; [ DW_TAG_member ] [opts] [line 140, size 512, align 64, offset 3072] [from t_grpopts]
!158 = metadata !{i32 786454, metadata !71, null, metadata !"t_grpopts", i32 53, i64 0, i64 0, i64 0, i32 0, metadata !159} ; [ DW_TAG_typedef ] [t_grpopts] [line 53, size 0, align 0, offset 0] [from ]
!159 = metadata !{i32 786451, metadata !71, null, metadata !"", i32 42, i64 512, i64 64, i32 0, i32 0, null, metadata !160, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 42, size 512, align 64, offset 0] [from ]
!160 = metadata !{metadata !161, metadata !162, metadata !163, metadata !164, metadata !165, metadata !167, metadata !168, metadata !169, metadata !174, metadata !178}
!161 = metadata !{i32 786445, metadata !71, metadata !159, metadata !"ngtc", i32 43, i64 32, i64 32, i64 0, i32 0, metadata !16} ; [ DW_TAG_member ] [ngtc] [line 43, size 32, align 32, offset 0] [from int]
!162 = metadata !{i32 786445, metadata !71, metadata !159, metadata !"ngacc", i32 44, i64 32, i64 32, i64 32, i32 0, metadata !16} ; [ DW_TAG_member ] [ngacc] [line 44, size 32, align 32, offset 32] [from int]
!163 = metadata !{i32 786445, metadata !71, metadata !159, metadata !"ngfrz", i32 45, i64 32, i64 32, i64 64, i32 0, metadata !16} ; [ DW_TAG_member ] [ngfrz] [line 45, size 32, align 32, offset 64] [from int]
!164 = metadata !{i32 786445, metadata !71, metadata !159, metadata !"ngener", i32 46, i64 32, i64 32, i64 96, i32 0, metadata !16} ; [ DW_TAG_member ] [ngener] [line 46, size 32, align 32, offset 96] [from int]
!165 = metadata !{i32 786445, metadata !71, metadata !159, metadata !"nrdf", i32 47, i64 64, i64 64, i64 128, i32 0, metadata !166} ; [ DW_TAG_member ] [nrdf] [line 47, size 64, align 64, offset 128] [from ]
!166 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !8} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from real]
!167 = metadata !{i32 786445, metadata !71, metadata !159, metadata !"ref_t", i32 48, i64 64, i64 64, i64 192, i32 0, metadata !166} ; [ DW_TAG_member ] [ref_t] [line 48, size 64, align 64, offset 192] [from ]
!168 = metadata !{i32 786445, metadata !71, metadata !159, metadata !"tau_t", i32 49, i64 64, i64 64, i64 256, i32 0, metadata !166} ; [ DW_TAG_member ] [tau_t] [line 49, size 64, align 64, offset 256] [from ]
!169 = metadata !{i32 786445, metadata !71, metadata !159, metadata !"acc", i32 50, i64 64, i64 64, i64 320, i32 0, metadata !170} ; [ DW_TAG_member ] [acc] [line 50, size 64, align 64, offset 320] [from ]
!170 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !171} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from rvec]
!171 = metadata !{i32 786454, metadata !71, null, metadata !"rvec", i32 101, i64 0, i64 0, i64 0, i32 0, metadata !172} ; [ DW_TAG_typedef ] [rvec] [line 101, size 0, align 0, offset 0] [from ]
!172 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 96, i64 32, i32 0, i32 0, metadata !8, metadata !173, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 96, align 32, offset 0] [from real]
!173 = metadata !{metadata !108}
!174 = metadata !{i32 786445, metadata !71, metadata !159, metadata !"nFreeze", i32 51, i64 64, i64 64, i64 384, i32 0, metadata !175} ; [ DW_TAG_member ] [nFreeze] [line 51, size 64, align 64, offset 384] [from ]
!175 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !176} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ivec]
!176 = metadata !{i32 786454, metadata !71, null, metadata !"ivec", i32 107, i64 0, i64 0, i64 0, i32 0, metadata !177} ; [ DW_TAG_typedef ] [ivec] [line 107, size 0, align 0, offset 0] [from ]
!177 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 96, i64 32, i32 0, i32 0, metadata !16, metadata !173, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 96, align 32, offset 0] [from int]
!178 = metadata !{i32 786445, metadata !71, metadata !159, metadata !"eg_excl", i32 52, i64 64, i64 64, i64 448, i32 0, metadata !179} ; [ DW_TAG_member ] [eg_excl] [line 52, size 64, align 64, offset 448] [from ]
!179 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !16} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from int]
!180 = metadata !{i32 786445, metadata !71, metadata !70, metadata !"ex", i32 141, i64 576, i64 64, i64 3584, i32 0, metadata !181} ; [ DW_TAG_member ] [ex] [line 141, size 576, align 64, offset 3584] [from ]
!181 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 576, i64 64, i32 0, i32 0, metadata !182, metadata !173, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 576, align 64, offset 0] [from t_cosines]
!182 = metadata !{i32 786454, metadata !71, null, metadata !"t_cosines", i32 40, i64 0, i64 0, i64 0, i32 0, metadata !183} ; [ DW_TAG_typedef ] [t_cosines] [line 40, size 0, align 0, offset 0] [from ]
!183 = metadata !{i32 786451, metadata !71, null, metadata !"", i32 36, i64 192, i64 64, i32 0, i32 0, null, metadata !184, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 36, size 192, align 64, offset 0] [from ]
!184 = metadata !{metadata !185, metadata !186, metadata !187}
!185 = metadata !{i32 786445, metadata !71, metadata !183, metadata !"n", i32 37, i64 32, i64 32, i64 0, i32 0, metadata !16} ; [ DW_TAG_member ] [n] [line 37, size 32, align 32, offset 0] [from int]
!186 = metadata !{i32 786445, metadata !71, metadata !183, metadata !"a", i32 38, i64 64, i64 64, i64 64, i32 0, metadata !166} ; [ DW_TAG_member ] [a] [line 38, size 64, align 64, offset 64] [from ]
!187 = metadata !{i32 786445, metadata !71, metadata !183, metadata !"phi", i32 39, i64 64, i64 64, i64 128, i32 0, metadata !166} ; [ DW_TAG_member ] [phi] [line 39, size 64, align 64, offset 128] [from ]
!188 = metadata !{i32 786445, metadata !71, metadata !70, metadata !"et", i32 142, i64 576, i64 64, i64 4160, i32 0, metadata !181} ; [ DW_TAG_member ] [et] [line 142, size 576, align 64, offset 4160] [from ]
!189 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !190} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from t_commrec]
!190 = metadata !{i32 786454, metadata !1, null, metadata !"t_commrec", i32 40, i64 0, i64 0, i64 0, i32 0, metadata !191} ; [ DW_TAG_typedef ] [t_commrec] [line 40, size 0, align 0, offset 0] [from ]
!191 = metadata !{i32 786451, metadata !192, null, metadata !"", i32 36, i64 192, i64 32, i32 0, i32 0, null, metadata !193, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 36, size 192, align 32, offset 0] [from ]
!192 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/435.gromacs/src/types/commrec.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!193 = metadata !{metadata !194, metadata !195, metadata !196, metadata !197, metadata !198, metadata !199}
!194 = metadata !{i32 786445, metadata !192, metadata !191, metadata !"nodeid", i32 37, i64 32, i64 32, i64 0, i32 0, metadata !16} ; [ DW_TAG_member ] [nodeid] [line 37, size 32, align 32, offset 0] [from int]
!195 = metadata !{i32 786445, metadata !192, metadata !191, metadata !"nnodes", i32 37, i64 32, i64 32, i64 32, i32 0, metadata !16} ; [ DW_TAG_member ] [nnodes] [line 37, size 32, align 32, offset 32] [from int]
!196 = metadata !{i32 786445, metadata !192, metadata !191, metadata !"left", i32 38, i64 32, i64 32, i64 64, i32 0, metadata !16} ; [ DW_TAG_member ] [left] [line 38, size 32, align 32, offset 64] [from int]
!197 = metadata !{i32 786445, metadata !192, metadata !191, metadata !"right", i32 38, i64 32, i64 32, i64 96, i32 0, metadata !16} ; [ DW_TAG_member ] [right] [line 38, size 32, align 32, offset 96] [from int]
!198 = metadata !{i32 786445, metadata !192, metadata !191, metadata !"threadid", i32 39, i64 32, i64 32, i64 128, i32 0, metadata !16} ; [ DW_TAG_member ] [threadid] [line 39, size 32, align 32, offset 128] [from int]
!199 = metadata !{i32 786445, metadata !192, metadata !191, metadata !"nthreads", i32 39, i64 32, i64 32, i64 160, i32 0, metadata !16} ; [ DW_TAG_member ] [nthreads] [line 39, size 32, align 32, offset 160] [from int]
!200 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !201} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from t_nsborder]
!201 = metadata !{i32 786454, metadata !1, null, metadata !"t_nsborder", i32 59, i64 0, i64 0, i64 0, i32 0, metadata !202} ; [ DW_TAG_typedef ] [t_nsborder] [line 59, size 0, align 0, offset 0] [from ]
!202 = metadata !{i32 786451, metadata !203, null, metadata !"", i32 36, i64 32992, i64 32, i32 0, i32 0, null, metadata !204, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 36, size 32992, align 32, offset 0] [from ]
!203 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/435.gromacs/src/types/nsborder.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!204 = metadata !{metadata !205, metadata !206, metadata !207, metadata !208, metadata !209, metadata !210, metadata !211, metadata !212, metadata !216, metadata !217, metadata !218}
!205 = metadata !{i32 786445, metadata !203, metadata !202, metadata !"nodeid", i32 37, i64 32, i64 32, i64 0, i32 0, metadata !16} ; [ DW_TAG_member ] [nodeid] [line 37, size 32, align 32, offset 0] [from int]
!206 = metadata !{i32 786445, metadata !203, metadata !202, metadata !"nnodes", i32 38, i64 32, i64 32, i64 32, i32 0, metadata !16} ; [ DW_TAG_member ] [nnodes] [line 38, size 32, align 32, offset 32] [from int]
!207 = metadata !{i32 786445, metadata !203, metadata !202, metadata !"cgtotal", i32 39, i64 32, i64 32, i64 64, i32 0, metadata !16} ; [ DW_TAG_member ] [cgtotal] [line 39, size 32, align 32, offset 64] [from int]
!208 = metadata !{i32 786445, metadata !203, metadata !202, metadata !"natoms", i32 40, i64 32, i64 32, i64 96, i32 0, metadata !16} ; [ DW_TAG_member ] [natoms] [line 40, size 32, align 32, offset 96] [from int]
!209 = metadata !{i32 786445, metadata !203, metadata !202, metadata !"nstDlb", i32 41, i64 32, i64 32, i64 128, i32 0, metadata !16} ; [ DW_TAG_member ] [nstDlb] [line 41, size 32, align 32, offset 128] [from int]
!210 = metadata !{i32 786445, metadata !203, metadata !202, metadata !"shift", i32 43, i64 32, i64 32, i64 160, i32 0, metadata !16} ; [ DW_TAG_member ] [shift] [line 43, size 32, align 32, offset 160] [from int]
!211 = metadata !{i32 786445, metadata !203, metadata !202, metadata !"bshift", i32 43, i64 32, i64 32, i64 192, i32 0, metadata !16} ; [ DW_TAG_member ] [bshift] [line 43, size 32, align 32, offset 192] [from int]
!212 = metadata !{i32 786445, metadata !203, metadata !202, metadata !"homenr", i32 50, i64 8192, i64 32, i64 224, i32 0, metadata !213} ; [ DW_TAG_member ] [homenr] [line 50, size 8192, align 32, offset 224] [from ]
!213 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 8192, i64 32, i32 0, i32 0, metadata !16, metadata !214, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 8192, align 32, offset 0] [from int]
!214 = metadata !{metadata !215}
!215 = metadata !{i32 786465, i64 0, i64 256}     ; [ DW_TAG_subrange_type ] [0, 255]
!216 = metadata !{i32 786445, metadata !203, metadata !202, metadata !"index", i32 51, i64 8192, i64 32, i64 8416, i32 0, metadata !213} ; [ DW_TAG_member ] [index] [line 51, size 8192, align 32, offset 8416] [from ]
!217 = metadata !{i32 786445, metadata !203, metadata !202, metadata !"cgload", i32 52, i64 8192, i64 32, i64 16608, i32 0, metadata !213} ; [ DW_TAG_member ] [cgload] [line 52, size 8192, align 32, offset 16608] [from ]
!218 = metadata !{i32 786445, metadata !203, metadata !202, metadata !"workload", i32 55, i64 8192, i64 32, i64 24800, i32 0, metadata !213} ; [ DW_TAG_member ] [workload] [line 55, size 8192, align 32, offset 24800] [from ]
!219 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !172} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!220 = metadata !{metadata !221, metadata !222, metadata !223, metadata !224, metadata !225, metadata !226, metadata !227, metadata !228, metadata !229, metadata !230, metadata !231, metadata !232, metadata !233, metadata !234, metadata !235, metadata !236, metadata !237, metadata !238, metadata !239, metadata !240, metadata !241, metadata !242, metadata !243, metadata !244, metadata !245, metadata !246, metadata !247, metadata !248, metadata !249}
!221 = metadata !{i32 786689, metadata !4, metadata !"log", metadata !5, i32 16777310, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [log] [line 94]
!222 = metadata !{i32 786689, metadata !4, metadata !"bVerbose", metadata !5, i32 33554526, metadata !16, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [bVerbose] [line 94]
!223 = metadata !{i32 786689, metadata !4, metadata !"ir", metadata !5, i32 50331743, metadata !68, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ir] [line 95]
!224 = metadata !{i32 786689, metadata !4, metadata !"x", metadata !5, i32 67108960, metadata !170, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [x] [line 96]
!225 = metadata !{i32 786689, metadata !4, metadata !"f", metadata !5, i32 83886176, metadata !170, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [f] [line 96]
!226 = metadata !{i32 786689, metadata !4, metadata !"charge", metadata !5, i32 100663393, metadata !166, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [charge] [line 97]
!227 = metadata !{i32 786689, metadata !4, metadata !"box", metadata !5, i32 117440609, metadata !166, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [box] [line 97]
!228 = metadata !{i32 786689, metadata !4, metadata !"cr", metadata !5, i32 134217826, metadata !189, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cr] [line 98]
!229 = metadata !{i32 786689, metadata !4, metadata !"nsb", metadata !5, i32 150995042, metadata !200, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nsb] [line 98]
!230 = metadata !{i32 786689, metadata !4, metadata !"lrvir", metadata !5, i32 167772259, metadata !219, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [lrvir] [line 99]
!231 = metadata !{i32 786689, metadata !4, metadata !"ewaldcoeff", metadata !5, i32 184549475, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ewaldcoeff] [line 99]
!232 = metadata !{i32 786688, metadata !4, metadata !"factor", metadata !5, i32 105, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [factor] [line 105]
!233 = metadata !{i32 786688, metadata !4, metadata !"energy", metadata !5, i32 106, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [energy] [line 106]
!234 = metadata !{i32 786688, metadata !4, metadata !"lll", metadata !5, i32 107, metadata !171, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [lll] [line 107]
!235 = metadata !{i32 786688, metadata !4, metadata !"lowiy", metadata !5, i32 108, metadata !16, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [lowiy] [line 108]
!236 = metadata !{i32 786688, metadata !4, metadata !"lowiz", metadata !5, i32 108, metadata !16, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [lowiz] [line 108]
!237 = metadata !{i32 786688, metadata !4, metadata !"ix", metadata !5, i32 108, metadata !16, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ix] [line 108]
!238 = metadata !{i32 786688, metadata !4, metadata !"iy", metadata !5, i32 108, metadata !16, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [iy] [line 108]
!239 = metadata !{i32 786688, metadata !4, metadata !"iz", metadata !5, i32 108, metadata !16, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [iz] [line 108]
!240 = metadata !{i32 786688, metadata !4, metadata !"n", metadata !5, i32 108, metadata !16, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [n] [line 108]
!241 = metadata !{i32 786688, metadata !4, metadata !"tmp", metadata !5, i32 109, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [tmp] [line 109]
!242 = metadata !{i32 786688, metadata !4, metadata !"cs", metadata !5, i32 109, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cs] [line 109]
!243 = metadata !{i32 786688, metadata !4, metadata !"ss", metadata !5, i32 109, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ss] [line 109]
!244 = metadata !{i32 786688, metadata !4, metadata !"ak", metadata !5, i32 109, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ak] [line 109]
!245 = metadata !{i32 786688, metadata !4, metadata !"akv", metadata !5, i32 109, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [akv] [line 109]
!246 = metadata !{i32 786688, metadata !4, metadata !"mx", metadata !5, i32 109, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [mx] [line 109]
!247 = metadata !{i32 786688, metadata !4, metadata !"my", metadata !5, i32 109, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [my] [line 109]
!248 = metadata !{i32 786688, metadata !4, metadata !"mz", metadata !5, i32 109, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [mz] [line 109]
!249 = metadata !{i32 786688, metadata !4, metadata !"m2", metadata !5, i32 109, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [m2] [line 109]
!250 = metadata !{i32 786478, metadata !251, metadata !252, metadata !"rcmul", metadata !"rcmul", metadata !"", i32 52, metadata !253, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !260, i32 53} ; [ DW_TAG_subprogram ] [line 52] [local] [def] [scope 53] [rcmul]
!251 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/435.gromacs/src/gmxcomplex.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!252 = metadata !{i32 786473, metadata !251}      ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/gmxcomplex.h]
!253 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !254, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!254 = metadata !{metadata !255, metadata !8, metadata !255}
!255 = metadata !{i32 786454, metadata !1, null, metadata !"t_complex", i32 46, i64 0, i64 0, i64 0, i32 0, metadata !256} ; [ DW_TAG_typedef ] [t_complex] [line 46, size 0, align 0, offset 0] [from ]
!256 = metadata !{i32 786451, metadata !251, null, metadata !"", i32 44, i64 64, i64 32, i32 0, i32 0, null, metadata !257, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 44, size 64, align 32, offset 0] [from ]
!257 = metadata !{metadata !258, metadata !259}
!258 = metadata !{i32 786445, metadata !251, metadata !256, metadata !"re", i32 45, i64 32, i64 32, i64 0, i32 0, metadata !8} ; [ DW_TAG_member ] [re] [line 45, size 32, align 32, offset 0] [from real]
!259 = metadata !{i32 786445, metadata !251, metadata !256, metadata !"im", i32 45, i64 32, i64 32, i64 32, i32 0, metadata !8} ; [ DW_TAG_member ] [im] [line 45, size 32, align 32, offset 32] [from real]
!260 = metadata !{metadata !261, metadata !262, metadata !263}
!261 = metadata !{i32 786689, metadata !250, metadata !"r", metadata !252, i32 16777268, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [r] [line 52]
!262 = metadata !{i32 786689, metadata !250, metadata !"c", metadata !252, i32 33554484, metadata !255, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [c] [line 52]
!263 = metadata !{i32 786688, metadata !264, metadata !"d", metadata !252, i32 54, metadata !255, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [d] [line 54]
!264 = metadata !{i32 786443, metadata !251, metadata !250} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/gmxcomplex.h]
!265 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"conjmul", metadata !"conjmul", metadata !"", i32 53, metadata !266, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !268, i32 54} ; [ DW_TAG_subprogram ] [line 53] [local] [def] [scope 54] [conjmul]
!266 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !267, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!267 = metadata !{metadata !255, metadata !255, metadata !255}
!268 = metadata !{metadata !269, metadata !270, metadata !271}
!269 = metadata !{i32 786689, metadata !265, metadata !"a", metadata !5, i32 16777269, metadata !255, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [a] [line 53]
!270 = metadata !{i32 786689, metadata !265, metadata !"b", metadata !5, i32 33554485, metadata !255, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [b] [line 53]
!271 = metadata !{i32 786688, metadata !272, metadata !"c", metadata !5, i32 55, metadata !255, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [c] [line 55]
!272 = metadata !{i32 786443, metadata !1, metadata !265} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/ewald.c]
!273 = metadata !{i32 786478, metadata !251, metadata !252, metadata !"cmul", metadata !"cmul", metadata !"", i32 93, metadata !266, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !274, i32 94} ; [ DW_TAG_subprogram ] [line 93] [local] [def] [scope 94] [cmul]
!274 = metadata !{metadata !275, metadata !276, metadata !277}
!275 = metadata !{i32 786689, metadata !273, metadata !"a", metadata !252, i32 16777309, metadata !255, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [a] [line 93]
!276 = metadata !{i32 786689, metadata !273, metadata !"b", metadata !252, i32 33554525, metadata !255, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [b] [line 93]
!277 = metadata !{i32 786688, metadata !278, metadata !"c", metadata !252, i32 95, metadata !255, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [c] [line 95]
!278 = metadata !{i32 786443, metadata !251, metadata !273} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/gmxcomplex.h]
!279 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"tabulate_eir", metadata !"tabulate_eir", metadata !"", i32 66, metadata !280, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !286, i32 67} ; [ DW_TAG_subprogram ] [line 66] [local] [def] [scope 67] [tabulate_eir]
!280 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !281, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!281 = metadata !{null, metadata !16, metadata !170, metadata !16, metadata !282, metadata !166}
!282 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !283} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!283 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !284} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from cvec]
!284 = metadata !{i32 786454, metadata !1, null, metadata !"cvec", i32 48, i64 0, i64 0, i64 0, i32 0, metadata !285} ; [ DW_TAG_typedef ] [cvec] [line 48, size 0, align 0, offset 0] [from ]
!285 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 192, i64 32, i32 0, i32 0, metadata !255, metadata !173, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 192, align 32, offset 0] [from t_complex]
!286 = metadata !{metadata !287, metadata !288, metadata !289, metadata !290, metadata !291, metadata !292, metadata !294, metadata !295}
!287 = metadata !{i32 786689, metadata !279, metadata !"natom", metadata !5, i32 16777282, metadata !16, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [natom] [line 66]
!288 = metadata !{i32 786689, metadata !279, metadata !"x", metadata !5, i32 33554498, metadata !170, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [x] [line 66]
!289 = metadata !{i32 786689, metadata !279, metadata !"kmax", metadata !5, i32 50331714, metadata !16, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [kmax] [line 66]
!290 = metadata !{i32 786689, metadata !279, metadata !"eir", metadata !5, i32 67108930, metadata !282, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [eir] [line 66]
!291 = metadata !{i32 786689, metadata !279, metadata !"lll", metadata !5, i32 83886146, metadata !166, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [lll] [line 66]
!292 = metadata !{i32 786688, metadata !293, metadata !"i", metadata !5, i32 68, metadata !16, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 68]
!293 = metadata !{i32 786443, metadata !1, metadata !279} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/ewald.c]
!294 = metadata !{i32 786688, metadata !293, metadata !"j", metadata !5, i32 68, metadata !16, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [j] [line 68]
!295 = metadata !{i32 786688, metadata !293, metadata !"m", metadata !5, i32 68, metadata !16, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [m] [line 68]
!296 = metadata !{i32 786478, metadata !297, metadata !298, metadata !"calc_lll", metadata !"calc_lll", metadata !"", i32 90, metadata !299, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !301, i32 91} ; [ DW_TAG_subprogram ] [line 90] [local] [def] [scope 91] [calc_lll]
!297 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/435.gromacs/src/shift_util.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!298 = metadata !{i32 786473, metadata !297}      ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/shift_util.h]
!299 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !300, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!300 = metadata !{null, metadata !166, metadata !166}
!301 = metadata !{metadata !302, metadata !303}
!302 = metadata !{i32 786689, metadata !296, metadata !"box", metadata !298, i32 16777306, metadata !166, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [box] [line 90]
!303 = metadata !{i32 786689, metadata !296, metadata !"lll", metadata !298, i32 33554522, metadata !166, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [lll] [line 90]
!304 = metadata !{i32 786478, metadata !305, metadata !306, metadata !"clear_mat", metadata !"clear_mat", metadata !"", i32 334, metadata !307, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !309, i32 335} ; [ DW_TAG_subprogram ] [line 334] [local] [def] [scope 335] [clear_mat]
!305 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/435.gromacs/src/vec.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!306 = metadata !{i32 786473, metadata !305}      ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/vec.h]
!307 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !308, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!308 = metadata !{null, metadata !219}
!309 = metadata !{metadata !310, metadata !311}
!310 = metadata !{i32 786689, metadata !304, metadata !"a", metadata !306, i32 16777550, metadata !219, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [a] [line 334]
!311 = metadata !{i32 786688, metadata !312, metadata !"nul", metadata !306, i32 336, metadata !313, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nul] [line 336]
!312 = metadata !{i32 786443, metadata !305, metadata !304} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/vec.h]
!313 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !8} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from real]
!314 = metadata !{metadata !315, metadata !316, metadata !317, metadata !318, metadata !319, metadata !320, metadata !321, metadata !323, metadata !324, metadata !324, metadata !324}
!315 = metadata !{i32 786484, i32 0, metadata !4, metadata !"bFirst", metadata !"bFirst", metadata !"", metadata !5, i32 101, metadata !16, i32 1, i32 1, null, null}
!316 = metadata !{i32 786484, i32 0, metadata !4, metadata !"nx", metadata !"nx", metadata !"", metadata !5, i32 102, metadata !16, i32 1, i32 1, i32* @do_ewald.nx, null} ; [ DW_TAG_variable ] [nx] [line 102] [local] [def]
!317 = metadata !{i32 786484, i32 0, metadata !4, metadata !"ny", metadata !"ny", metadata !"", metadata !5, i32 102, metadata !16, i32 1, i32 1, i32* @do_ewald.ny, null} ; [ DW_TAG_variable ] [ny] [line 102] [local] [def]
!318 = metadata !{i32 786484, i32 0, metadata !4, metadata !"nz", metadata !"nz", metadata !"", metadata !5, i32 102, metadata !16, i32 1, i32 1, i32* @do_ewald.nz, null} ; [ DW_TAG_variable ] [nz] [line 102] [local] [def]
!319 = metadata !{i32 786484, i32 0, metadata !4, metadata !"kmax", metadata !"kmax", metadata !"", metadata !5, i32 102, metadata !16, i32 1, i32 1, i32* @do_ewald.kmax, null} ; [ DW_TAG_variable ] [kmax] [line 102] [local] [def]
!320 = metadata !{i32 786484, i32 0, metadata !4, metadata !"eir", metadata !"eir", metadata !"", metadata !5, i32 103, metadata !282, i32 1, i32 1, [3 x %struct.t_complex]*** @do_ewald.eir, null} ; [ DW_TAG_variable ] [eir] [line 103] [local] [def]
!321 = metadata !{i32 786484, i32 0, metadata !4, metadata !"tab_xy", metadata !"tab_xy", metadata !"", metadata !5, i32 104, metadata !322, i32 1, i32 1, %struct.t_complex** @do_ewald.tab_xy, null} ; [ DW_TAG_variable ] [tab_xy] [line 104] [local] [def]
!322 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !255} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from t_complex]
!323 = metadata !{i32 786484, i32 0, metadata !4, metadata !"tab_qxyz", metadata !"tab_qxyz", metadata !"", metadata !5, i32 104, metadata !322, i32 1, i32 1, %struct.t_complex** @do_ewald.tab_qxyz, null} ; [ DW_TAG_variable ] [tab_qxyz] [line 104] [local] [def]
!324 = metadata !{i32 786484, i32 0, metadata !306, metadata !"nul", metadata !"nul", metadata !"nul", metadata !306, i32 336, metadata !313, i32 1, i32 1, float 0.000000e+00, null} ; [ DW_TAG_variable ] [nul] [line 336] [local] [def]
!325 = metadata !{i32 94, i32 0, metadata !4, null}
!326 = metadata !{i32 95, i32 0, metadata !4, null}
!327 = metadata !{i32 96, i32 0, metadata !4, null}
!328 = metadata !{i32 97, i32 0, metadata !4, null}
!329 = metadata !{i32 98, i32 0, metadata !4, null}
!330 = metadata !{i32 99, i32 0, metadata !4, null}
!331 = metadata !{i32 105, i32 0, metadata !4, null}
!332 = metadata !{i32 107, i32 0, metadata !4, null}
!333 = metadata !{i32 111, i32 0, metadata !4, null}
!334 = metadata !{i32 135, i32 0, metadata !4, null}
!335 = metadata !{i32 112, i32 0, metadata !336, null}
!336 = metadata !{i32 786443, metadata !1, metadata !4, i32 111, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/ewald.c]
!337 = metadata !{i32 113, i32 0, metadata !336, null}
!338 = metadata !{i32 115, i32 0, metadata !336, null}
!339 = metadata !{i32 116, i32 0, metadata !340, null}
!340 = metadata !{i32 786443, metadata !1, metadata !336, i32 115, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/ewald.c]
!341 = metadata !{metadata !"int", metadata !342}
!342 = metadata !{metadata !"omnipotent char", metadata !343}
!343 = metadata !{metadata !"Simple C/C++ TBAA"}
!344 = metadata !{i32 117, i32 0, metadata !340, null}
!345 = metadata !{i32 120, i32 0, metadata !336, null}
!346 = metadata !{i32 121, i32 0, metadata !336, null}
!347 = metadata !{i32 122, i32 0, metadata !336, null}
!348 = metadata !{i32 123, i32 0, metadata !336, null}
!349 = metadata !{i32 124, i32 0, metadata !336, null}
!350 = metadata !{metadata !"any pointer", metadata !342}
!351 = metadata !{i32 125, i32 0, metadata !352, null}
!352 = metadata !{i32 786443, metadata !1, metadata !336, i32 125, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/ewald.c]
!353 = metadata !{i32 126, i32 0, metadata !352, null}
!354 = metadata !{i32 127, i32 0, metadata !336, null}
!355 = metadata !{i32 128, i32 0, metadata !336, null}
!356 = metadata !{i32 130, i32 0, metadata !336, null}
!357 = metadata !{i32 786689, metadata !304, metadata !"a", metadata !306, i32 16777550, metadata !219, i32 0, metadata !358} ; [ DW_TAG_arg_variable ] [a] [line 334]
!358 = metadata !{i32 131, i32 0, metadata !4, null}
!359 = metadata !{i32 334, i32 0, metadata !304, metadata !358}
!360 = metadata !{float 0.000000e+00}
!361 = metadata !{i32 786688, metadata !312, metadata !"nul", metadata !306, i32 336, metadata !313, i32 0, metadata !358} ; [ DW_TAG_auto_variable ] [nul] [line 336]
!362 = metadata !{i32 336, i32 0, metadata !312, metadata !358}
!363 = metadata !{i32 341, i32 0, metadata !312, metadata !358}
!364 = metadata !{i32 338, i32 0, metadata !312, metadata !358}
!365 = metadata !{i32 133, i32 0, metadata !4, null}
!366 = metadata !{i32 786689, metadata !296, metadata !"box", metadata !298, i32 16777306, metadata !166, i32 0, metadata !365} ; [ DW_TAG_arg_variable ] [box] [line 90]
!367 = metadata !{i32 90, i32 0, metadata !296, metadata !365}
!368 = metadata !{i32 786689, metadata !296, metadata !"lll", metadata !298, i32 33554522, metadata !166, i32 0, metadata !365} ; [ DW_TAG_arg_variable ] [lll] [line 90]
!369 = metadata !{i32 92, i32 0, metadata !370, metadata !365}
!370 = metadata !{i32 786443, metadata !297, metadata !296} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/shift_util.h]
!371 = metadata !{metadata !"float", metadata !342}
!372 = metadata !{i32 93, i32 0, metadata !370, metadata !365}
!373 = metadata !{i32 94, i32 0, metadata !370, metadata !365}
!374 = metadata !{i32 786689, metadata !279, metadata !"natom", metadata !5, i32 16777282, metadata !16, i32 0, metadata !334} ; [ DW_TAG_arg_variable ] [natom] [line 66]
!375 = metadata !{i32 66, i32 0, metadata !279, metadata !334}
!376 = metadata !{i32 786689, metadata !279, metadata !"x", metadata !5, i32 33554498, metadata !170, i32 0, metadata !334} ; [ DW_TAG_arg_variable ] [x] [line 66]
!377 = metadata !{i32 786689, metadata !279, metadata !"kmax", metadata !5, i32 50331714, metadata !16, i32 0, metadata !334} ; [ DW_TAG_arg_variable ] [kmax] [line 66]
!378 = metadata !{i32 786689, metadata !279, metadata !"eir", metadata !5, i32 67108930, metadata !282, i32 0, metadata !334} ; [ DW_TAG_arg_variable ] [eir] [line 66]
!379 = metadata !{i32 786689, metadata !279, metadata !"lll", metadata !5, i32 83886146, metadata !166, i32 0, metadata !334} ; [ DW_TAG_arg_variable ] [lll] [line 66]
!380 = metadata !{i32 70, i32 0, metadata !293, metadata !334}
!381 = metadata !{i32 75, i32 0, metadata !382, metadata !334}
!382 = metadata !{i32 786443, metadata !1, metadata !293, i32 75, i32 0, i32 20} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/ewald.c]
!383 = metadata !{i32 82, i32 0, metadata !384, metadata !334}
!384 = metadata !{i32 786443, metadata !1, metadata !385, i32 81, i32 0, i32 25} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/ewald.c]
!385 = metadata !{i32 786443, metadata !1, metadata !386, i32 81, i32 0, i32 24} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/ewald.c]
!386 = metadata !{i32 786443, metadata !1, metadata !382, i32 75, i32 0, i32 21} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/ewald.c]
!387 = metadata !{i32 85, i32 0, metadata !388, metadata !334}
!388 = metadata !{i32 786443, metadata !1, metadata !386, i32 85, i32 0, i32 26} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/ewald.c]
!389 = metadata !{i32 71, i32 0, metadata !390, metadata !334}
!390 = metadata !{i32 786443, metadata !1, metadata !293, i32 70, i32 0, i32 19} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/ewald.c]
!391 = metadata !{i32 72, i32 0, metadata !390, metadata !334}
!392 = metadata !{i32 77, i32 0, metadata !393, metadata !334}
!393 = metadata !{i32 786443, metadata !1, metadata !394, i32 76, i32 0, i32 23} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/ewald.c]
!394 = metadata !{i32 786443, metadata !1, metadata !386, i32 76, i32 0, i32 22} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/ewald.c]
!395 = metadata !{i32 76, i32 0, metadata !394, metadata !334}
!396 = metadata !{i32 78, i32 0, metadata !393, metadata !334}
!397 = metadata !{i32 83, i32 0, metadata !384, metadata !334}
!398 = metadata !{i32 81, i32 0, metadata !385, metadata !334}
!399 = metadata !{i32 87, i32 0, metadata !400, metadata !334}
!400 = metadata !{i32 786443, metadata !1, metadata !388, i32 86, i32 0, i32 27} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/ewald.c]
!401 = metadata !{i32 86, i32 0, metadata !400, metadata !334}
!402 = metadata !{%struct.t_complex* undef}
!403 = metadata !{i32 93, i32 0, metadata !273, metadata !399}
!404 = metadata !{i32 95, i32 0, metadata !278, metadata !399}
!405 = metadata !{i32 97, i32 0, metadata !278, metadata !399}
!406 = metadata !{i32 98, i32 0, metadata !278, metadata !399}
!407 = metadata !{i32 100, i32 0, metadata !278, metadata !399}
!408 = metadata !{i32 140, i32 0, metadata !409, null}
!409 = metadata !{i32 786443, metadata !1, metadata !4, i32 140, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/ewald.c]
!410 = metadata !{i32 141, i32 0, metadata !411, null}
!411 = metadata !{i32 786443, metadata !1, metadata !409, i32 140, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/ewald.c]
!412 = metadata !{i32 154, i32 0, metadata !413, null}
!413 = metadata !{i32 786443, metadata !1, metadata !414, i32 150, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/ewald.c]
!414 = metadata !{i32 786443, metadata !1, metadata !415, i32 150, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/ewald.c]
!415 = metadata !{i32 786443, metadata !1, metadata !416, i32 142, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/ewald.c]
!416 = metadata !{i32 786443, metadata !1, metadata !411, i32 142, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/ewald.c]
!417 = metadata !{i32 169, i32 0, metadata !413, null}
!418 = metadata !{i32 170, i32 0, metadata !413, null}
!419 = metadata !{i32 171, i32 0, metadata !413, null}
!420 = metadata !{i32 172, i32 0, metadata !413, null}
!421 = metadata !{i32 173, i32 0, metadata !413, null}
!422 = metadata !{i32 174, i32 0, metadata !413, null}
!423 = metadata !{i32 142, i32 0, metadata !416, null}
!424 = metadata !{i32 152, i32 0, metadata !413, null}
!425 = metadata !{i32 143, i32 0, metadata !415, null}
!426 = metadata !{i32 144, i32 0, metadata !415, null}
!427 = metadata !{i32 145, i32 0, metadata !428, null}
!428 = metadata !{i32 786443, metadata !1, metadata !415, i32 145, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/ewald.c]
!429 = metadata !{i32 148, i32 0, metadata !430, null}
!430 = metadata !{i32 786443, metadata !1, metadata !415, i32 148, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/ewald.c]
!431 = metadata !{i32 149, i32 0, metadata !430, null}
!432 = metadata !{i32 146, i32 0, metadata !428, null}
!433 = metadata !{i32 93, i32 0, metadata !273, metadata !432}
!434 = metadata !{i32 95, i32 0, metadata !278, metadata !432}
!435 = metadata !{i32 97, i32 0, metadata !278, metadata !432}
!436 = metadata !{i32 98, i32 0, metadata !278, metadata !432}
!437 = metadata !{i32 100, i32 0, metadata !278, metadata !432}
!438 = metadata !{i32 53, i32 0, metadata !265, metadata !431}
!439 = metadata !{i32 55, i32 0, metadata !272, metadata !431}
!440 = metadata !{i32 57, i32 0, metadata !272, metadata !431}
!441 = metadata !{i32 58, i32 0, metadata !272, metadata !431} ; [ DW_TAG_imported_module ]
!442 = metadata !{i32 60, i32 0, metadata !272, metadata !431}
!443 = metadata !{i32 150, i32 0, metadata !414, null}
!444 = metadata !{i32 151, i32 0, metadata !413, null}
!445 = metadata !{i32 153, i32 0, metadata !413, null}
!446 = metadata !{i32 155, i32 0, metadata !413, null}
!447 = metadata !{i32 156, i32 0, metadata !448, null}
!448 = metadata !{i32 786443, metadata !1, metadata !413, i32 156, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/ewald.c]
!449 = metadata !{i32 159, i32 0, metadata !450, null}
!450 = metadata !{i32 786443, metadata !1, metadata !413, i32 159, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/ewald.c]
!451 = metadata !{i32 160, i32 0, metadata !450, null}
!452 = metadata !{i32 157, i32 0, metadata !448, null}
!453 = metadata !{i32 93, i32 0, metadata !273, metadata !452}
!454 = metadata !{i32 95, i32 0, metadata !278, metadata !452}
!455 = metadata !{i32 97, i32 0, metadata !278, metadata !452}
!456 = metadata !{i32 98, i32 0, metadata !278, metadata !452}
!457 = metadata !{i32 786689, metadata !250, metadata !"r", metadata !252, i32 16777268, metadata !8, i32 0, metadata !452} ; [ DW_TAG_arg_variable ] [r] [line 52]
!458 = metadata !{i32 52, i32 0, metadata !250, metadata !452}
!459 = metadata !{i32 54, i32 0, metadata !264, metadata !452}
!460 = metadata !{i32 56, i32 0, metadata !264, metadata !452}
!461 = metadata !{i32 57, i32 0, metadata !264, metadata !452}
!462 = metadata !{i32 59, i32 0, metadata !264, metadata !452}
!463 = metadata !{i32 53, i32 0, metadata !265, metadata !451}
!464 = metadata !{i32 55, i32 0, metadata !272, metadata !451}
!465 = metadata !{i32 57, i32 0, metadata !272, metadata !451}
!466 = metadata !{i32 58, i32 0, metadata !272, metadata !451} ; [ DW_TAG_imported_module ]
!467 = metadata !{i32 786689, metadata !250, metadata !"r", metadata !252, i32 16777268, metadata !8, i32 0, metadata !451} ; [ DW_TAG_arg_variable ] [r] [line 52]
!468 = metadata !{i32 52, i32 0, metadata !250, metadata !451}
!469 = metadata !{i32 54, i32 0, metadata !264, metadata !451}
!470 = metadata !{i32 56, i32 0, metadata !264, metadata !451}
!471 = metadata !{i32 57, i32 0, metadata !264, metadata !451}
!472 = metadata !{i32 59, i32 0, metadata !264, metadata !451}
!473 = metadata !{i32 162, i32 0, metadata !413, null}
!474 = metadata !{i32 163, i32 0, metadata !475, null}
!475 = metadata !{i32 786443, metadata !1, metadata !413, i32 163, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/ewald.c]
!476 = metadata !{i32 164, i32 0, metadata !477, null}
!477 = metadata !{i32 786443, metadata !1, metadata !475, i32 163, i32 0, i32 14} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/ewald.c]
!478 = metadata !{i32 165, i32 0, metadata !477, null}
!479 = metadata !{i32 167, i32 0, metadata !413, null}
!480 = metadata !{i32 168, i32 0, metadata !413, null}
!481 = metadata !{i32 175, i32 0, metadata !482, null}
!482 = metadata !{i32 786443, metadata !1, metadata !413, i32 175, i32 0, i32 15} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/ewald.c]
!483 = metadata !{i32 176, i32 0, metadata !484, null}
!484 = metadata !{i32 786443, metadata !1, metadata !482, i32 175, i32 0, i32 16} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/ewald.c]
!485 = metadata !{i32 177, i32 0, metadata !484, null}
!486 = metadata !{i32 178, i32 0, metadata !484, null}
!487 = metadata !{i32 179, i32 0, metadata !484, null}
!488 = metadata !{i32 181, i32 0, metadata !413, null}
!489 = metadata !{i32 183, i32 0, metadata !415, null}
!490 = metadata !{i32 186, i32 0, metadata !4, null}
!491 = metadata !{i32 187, i32 0, metadata !492, null}
!492 = metadata !{i32 786443, metadata !1, metadata !4, i32 187, i32 0, i32 17} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/ewald.c]
!493 = metadata !{i32 188, i32 0, metadata !494, null}
!494 = metadata !{i32 786443, metadata !1, metadata !492, i32 187, i32 0, i32 18} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/ewald.c]
!495 = metadata !{i32 189, i32 0, metadata !494, null}
!496 = metadata !{i32 190, i32 0, metadata !494, null}
!497 = metadata !{i32 192, i32 0, metadata !4, null}
!498 = metadata !{i32 193, i32 0, metadata !4, null}
!499 = metadata !{i32 194, i32 0, metadata !4, null}
!500 = metadata !{i32 195, i32 0, metadata !4, null}
!501 = metadata !{i32 196, i32 0, metadata !4, null}
!502 = metadata !{i32 197, i32 0, metadata !4, null}
!503 = metadata !{i32 199, i32 0, metadata !4, null}
!504 = metadata !{i32 200, i32 0, metadata !4, null}
!505 = metadata !{i32 201, i32 0, metadata !4, null}
!506 = metadata !{i32 203, i32 0, metadata !4, null}
!507 = metadata !{i32 205, i32 0, metadata !4, null}
