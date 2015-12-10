; ModuleID = '../../SPEC/benchspec/CPU2006/456.hmmer/src/plan7.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.plan7_s = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i8*, i32*, i32, i32*, i32*, i32*, float, float, float, float, float, float, i32, float**, float**, float**, float, [4 x [2 x float]], float*, float*, [20 x float], float, i32**, i32**, i32**, [4 x [2 x i32]], i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32**, i32**, i32, i32, float, float, i32 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.p7trace_s = type { i32, i8*, i32*, i32* }
%struct.plan9_s = type { i32, %struct.basic_state*, %struct.basic_state*, %struct.basic_state*, [20 x float], i8*, i8*, i8*, float*, i32 }
%struct.basic_state = type { [3 x float], [20 x float] }

@.str = private unnamed_addr constant [51 x i8] c"../../SPEC/benchspec/CPU2006/456.hmmer/src/plan7.c\00", align 1
@Alphabet_size = external global i32
@Alphabet_iupac = external global i32
@.str3 = private unnamed_addr constant [29 x i8] c"Average score:  %10.2f bits\0A\00", align 1
@.str4 = private unnamed_addr constant [29 x i8] c"Minimum score:  %10.2f bits\0A\00", align 1
@.str5 = private unnamed_addr constant [29 x i8] c"Maximum score:  %10.2f bits\0A\00", align 1
@.str6 = private unnamed_addr constant [29 x i8] c"Std. deviation: %10.2f bits\0A\00", align 1
@Degenerate = external global [24 x [20 x i8]]

; Function Attrs: nounwind optsize uwtable
define %struct.plan7_s* @AllocPlan7(i32 %M) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %M}, i64 0, metadata !77), !dbg !315
  %call.i = tail call i8* @sre_malloc(i8* getelementptr inbounds ([51 x i8]* @.str, i64 0, i64 0), i32 54, i64 464) #8, !dbg !316
  %0 = bitcast i8* %call.i to %struct.plan7_s*, !dbg !316
  tail call void @llvm.dbg.value(metadata !{%struct.plan7_s* %0}, i64 0, metadata !318) #7, !dbg !316
  %ctime.i = getelementptr inbounds i8* %call.i, i64 64, !dbg !319
  %tpri.i = getelementptr inbounds i8* %call.i, i64 88, !dbg !320
  %t.i = getelementptr inbounds i8* %call.i, i64 144, !dbg !321
  %tsc.i = getelementptr inbounds i8* %call.i, i64 312, !dbg !322
  %begin.i = getelementptr inbounds i8* %call.i, i64 208, !dbg !323
  %bsc_mem.i = getelementptr inbounds i8* %call.i, i64 408, !dbg !324
  %bsc.i = getelementptr inbounds i8* %call.i, i64 368, !dbg !324
  %dna2.i = getelementptr inbounds i8* %call.i, i64 440, !dbg !325
  %1 = bitcast i8* %dna2.i to i32*, !dbg !325
  tail call void @llvm.memset.p0i8.i64(i8* %call.i, i8 0, i64 60, i32 8, i1 false) #7, !dbg !326
  tail call void @llvm.memset.p0i8.i64(i8* %ctime.i, i8 0, i64 20, i32 8, i1 false) #7, !dbg !319
  tail call void @llvm.memset.p0i8.i64(i8* %tpri.i, i8 0, i64 52, i32 8, i1 false) #7, !dbg !320
  tail call void @llvm.memset.p0i8.i64(i8* %t.i, i8 0, i64 24, i32 8, i1 false) #7, !dbg !321
  tail call void @llvm.memset.p0i8.i64(i8* %begin.i, i8 0, i64 16, i32 8, i1 false) #7, !dbg !323
  tail call void @llvm.memset.p0i8.i64(i8* %tsc.i, i8 0, i64 24, i32 8, i1 false) #7, !dbg !322
  tail call void @llvm.memset.p0i8.i64(i8* %bsc.i, i8 0, i64 32, i32 8, i1 false) #7, !dbg !324
  tail call void @llvm.memset.p0i8.i64(i8* %bsc_mem.i, i8 0, i64 32, i32 8, i1 false) #7, !dbg !324
  store i32 -987654321, i32* %1, align 4, !dbg !325, !tbaa !327
  %dna4.i = getelementptr inbounds i8* %call.i, i64 444, !dbg !330
  %2 = bitcast i8* %dna4.i to i32*, !dbg !330
  store i32 -987654321, i32* %2, align 4, !dbg !330, !tbaa !327
  %mu.i = getelementptr inbounds i8* %call.i, i64 448, !dbg !331
  %3 = bitcast i8* %mu.i to float*, !dbg !331
  store float 0.000000e+00, float* %3, align 4, !dbg !331, !tbaa !332
  %lambda.i = getelementptr inbounds i8* %call.i, i64 452, !dbg !333
  %4 = bitcast i8* %lambda.i to float*, !dbg !333
  store float 0.000000e+00, float* %4, align 4, !dbg !333, !tbaa !332
  %flags.i = getelementptr inbounds i8* %call.i, i64 456, !dbg !334
  %5 = bitcast i8* %flags.i to i32*, !dbg !334
  store i32 0, i32* %5, align 4, !dbg !334, !tbaa !327
  tail call void @llvm.dbg.value(metadata !{%struct.plan7_s* %0}, i64 0, metadata !78), !dbg !317
  tail call void @AllocPlan7Body(%struct.plan7_s* %0, i32 %M) #9, !dbg !335
  ret %struct.plan7_s* %0, !dbg !336
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

; Function Attrs: nounwind optsize uwtable
define %struct.plan7_s* @AllocPlan7Shell() #0 {
entry:
  %call = tail call i8* @sre_malloc(i8* getelementptr inbounds ([51 x i8]* @.str, i64 0, i64 0), i32 54, i64 464) #8, !dbg !337
  %0 = bitcast i8* %call to %struct.plan7_s*, !dbg !337
  tail call void @llvm.dbg.value(metadata !{%struct.plan7_s* %0}, i64 0, metadata !83), !dbg !337
  %ctime = getelementptr inbounds i8* %call, i64 64, !dbg !338
  %tpri = getelementptr inbounds i8* %call, i64 88, !dbg !339
  %t = getelementptr inbounds i8* %call, i64 144, !dbg !340
  %tsc = getelementptr inbounds i8* %call, i64 312, !dbg !341
  %begin = getelementptr inbounds i8* %call, i64 208, !dbg !342
  %bsc_mem = getelementptr inbounds i8* %call, i64 408, !dbg !343
  %bsc = getelementptr inbounds i8* %call, i64 368, !dbg !343
  %dna2 = getelementptr inbounds i8* %call, i64 440, !dbg !344
  %1 = bitcast i8* %dna2 to i32*, !dbg !344
  call void @llvm.memset.p0i8.i64(i8* %call, i8 0, i64 60, i32 8, i1 false), !dbg !345
  call void @llvm.memset.p0i8.i64(i8* %ctime, i8 0, i64 20, i32 8, i1 false), !dbg !338
  call void @llvm.memset.p0i8.i64(i8* %tpri, i8 0, i64 52, i32 8, i1 false), !dbg !339
  call void @llvm.memset.p0i8.i64(i8* %t, i8 0, i64 24, i32 8, i1 false), !dbg !340
  call void @llvm.memset.p0i8.i64(i8* %begin, i8 0, i64 16, i32 8, i1 false), !dbg !342
  call void @llvm.memset.p0i8.i64(i8* %tsc, i8 0, i64 24, i32 8, i1 false), !dbg !341
  call void @llvm.memset.p0i8.i64(i8* %bsc, i8 0, i64 32, i32 8, i1 false), !dbg !343
  call void @llvm.memset.p0i8.i64(i8* %bsc_mem, i8 0, i64 32, i32 8, i1 false), !dbg !343
  store i32 -987654321, i32* %1, align 4, !dbg !344, !tbaa !327
  %dna4 = getelementptr inbounds i8* %call, i64 444, !dbg !346
  %2 = bitcast i8* %dna4 to i32*, !dbg !346
  store i32 -987654321, i32* %2, align 4, !dbg !346, !tbaa !327
  %mu = getelementptr inbounds i8* %call, i64 448, !dbg !347
  %3 = bitcast i8* %mu to float*, !dbg !347
  store float 0.000000e+00, float* %3, align 4, !dbg !347, !tbaa !332
  %lambda = getelementptr inbounds i8* %call, i64 452, !dbg !348
  %4 = bitcast i8* %lambda to float*, !dbg !348
  store float 0.000000e+00, float* %4, align 4, !dbg !348, !tbaa !332
  %flags = getelementptr inbounds i8* %call, i64 456, !dbg !349
  %5 = bitcast i8* %flags to i32*, !dbg !349
  store i32 0, i32* %5, align 4, !dbg !349, !tbaa !327
  ret %struct.plan7_s* %0, !dbg !350
}

; Function Attrs: nounwind optsize uwtable
define void @AllocPlan7Body(%struct.plan7_s* nocapture %hmm, i32 %M) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.plan7_s* %hmm}, i64 0, metadata !88), !dbg !351
  tail call void @llvm.dbg.value(metadata !{i32 %M}, i64 0, metadata !89), !dbg !351
  %M1 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 20, !dbg !352
  store i32 %M, i32* %M1, align 4, !dbg !352, !tbaa !327
  %add = add nsw i32 %M, 2, !dbg !353
  %conv = sext i32 %add to i64, !dbg !353
  %call = tail call i8* @sre_malloc(i8* getelementptr inbounds ([51 x i8]* @.str, i64 0, i64 0), i32 111, i64 %conv) #8, !dbg !353
  %rf = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 3, !dbg !353
  store i8* %call, i8** %rf, align 8, !dbg !353, !tbaa !354
  %call5 = tail call i8* @sre_malloc(i8* getelementptr inbounds ([51 x i8]* @.str, i64 0, i64 0), i32 112, i64 %conv) #8, !dbg !355
  %cs = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 4, !dbg !355
  store i8* %call5, i8** %cs, align 8, !dbg !355, !tbaa !354
  %call9 = tail call i8* @sre_malloc(i8* getelementptr inbounds ([51 x i8]* @.str, i64 0, i64 0), i32 113, i64 %conv) #8, !dbg !356
  %ca = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 5, !dbg !356
  store i8* %call9, i8** %ca, align 8, !dbg !356, !tbaa !354
  %add10 = add i32 %M, 1, !dbg !357
  %conv11 = sext i32 %add10 to i64, !dbg !357
  %mul12 = shl nsw i64 %conv11, 2, !dbg !357
  %call13 = tail call i8* @sre_malloc(i8* getelementptr inbounds ([51 x i8]* @.str, i64 0, i64 0), i32 114, i64 %mul12) #8, !dbg !357
  %0 = bitcast i8* %call13 to i32*, !dbg !357
  %map = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 9, !dbg !357
  store i32* %0, i32** %map, align 8, !dbg !357, !tbaa !354
  %conv14 = sext i32 %M to i64, !dbg !358
  %mul15 = shl nsw i64 %conv14, 3, !dbg !358
  %call16 = tail call i8* @sre_malloc(i8* getelementptr inbounds ([51 x i8]* @.str, i64 0, i64 0), i32 116, i64 %mul15) #8, !dbg !358
  %1 = bitcast i8* %call16 to float**, !dbg !358
  %t = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 21, !dbg !358
  store float** %1, float*** %t, align 8, !dbg !358, !tbaa !354
  %mul19 = shl nsw i64 %conv11, 3, !dbg !359
  %call20 = tail call i8* @sre_malloc(i8* getelementptr inbounds ([51 x i8]* @.str, i64 0, i64 0), i32 117, i64 %mul19) #8, !dbg !359
  %2 = bitcast i8* %call20 to float**, !dbg !359
  %mat = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 22, !dbg !359
  store float** %2, float*** %mat, align 8, !dbg !359, !tbaa !354
  %call23 = tail call i8* @sre_malloc(i8* getelementptr inbounds ([51 x i8]* @.str, i64 0, i64 0), i32 118, i64 %mul15) #8, !dbg !360
  %3 = bitcast i8* %call23 to float**, !dbg !360
  %ins = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 23, !dbg !360
  store float** %3, float*** %ins, align 8, !dbg !360, !tbaa !354
  %mul24 = mul nsw i32 %M, 7, !dbg !361
  %conv25 = sext i32 %mul24 to i64, !dbg !361
  %mul26 = shl nsw i64 %conv25, 2, !dbg !361
  %call27 = tail call i8* @sre_malloc(i8* getelementptr inbounds ([51 x i8]* @.str, i64 0, i64 0), i32 119, i64 %mul26) #8, !dbg !361
  %4 = bitcast i8* %call27 to float*, !dbg !361
  %5 = load float*** %t, align 8, !dbg !361, !tbaa !354
  store float* %4, float** %5, align 8, !dbg !361, !tbaa !354
  %mul30 = mul nsw i32 %add10, 20, !dbg !362
  %conv31 = sext i32 %mul30 to i64, !dbg !362
  %mul32 = shl nsw i64 %conv31, 2, !dbg !362
  %call33 = tail call i8* @sre_malloc(i8* getelementptr inbounds ([51 x i8]* @.str, i64 0, i64 0), i32 120, i64 %mul32) #8, !dbg !362
  %6 = bitcast i8* %call33 to float*, !dbg !362
  %7 = load float*** %mat, align 8, !dbg !362, !tbaa !354
  store float* %6, float** %7, align 8, !dbg !362, !tbaa !354
  %mul36 = mul nsw i32 %M, 20, !dbg !363
  %conv37 = sext i32 %mul36 to i64, !dbg !363
  %mul38 = shl nsw i64 %conv37, 2, !dbg !363
  %call39 = tail call i8* @sre_malloc(i8* getelementptr inbounds ([51 x i8]* @.str, i64 0, i64 0), i32 121, i64 %mul38) #8, !dbg !363
  %8 = bitcast i8* %call39 to float*, !dbg !363
  %9 = load float*** %ins, align 8, !dbg !363, !tbaa !354
  store float* %8, float** %9, align 8, !dbg !363, !tbaa !354
  %call42 = tail call i8* @sre_malloc(i8* getelementptr inbounds ([51 x i8]* @.str, i64 0, i64 0), i32 123, i64 56) #8, !dbg !364
  %10 = bitcast i8* %call42 to i32**, !dbg !364
  %tsc = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 30, !dbg !364
  store i32** %10, i32*** %tsc, align 8, !dbg !364, !tbaa !354
  %call43 = tail call i8* @sre_malloc(i8* getelementptr inbounds ([51 x i8]* @.str, i64 0, i64 0), i32 124, i64 192) #8, !dbg !365
  %11 = bitcast i8* %call43 to i32**, !dbg !365
  %msc = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 31, !dbg !365
  store i32** %11, i32*** %msc, align 8, !dbg !365, !tbaa !354
  %call44 = tail call i8* @sre_malloc(i8* getelementptr inbounds ([51 x i8]* @.str, i64 0, i64 0), i32 125, i64 192) #8, !dbg !366
  %12 = bitcast i8* %call44 to i32**, !dbg !366
  %isc = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 32, !dbg !366
  store i32** %12, i32*** %isc, align 8, !dbg !366, !tbaa !354
  %call48 = tail call i8* @sre_malloc(i8* getelementptr inbounds ([51 x i8]* @.str, i64 0, i64 0), i32 126, i64 %mul26) #8, !dbg !367
  %13 = bitcast i8* %call48 to i32*, !dbg !367
  %tsc_mem = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 36, !dbg !367
  store i32* %13, i32** %tsc_mem, align 8, !dbg !367, !tbaa !354
  %mul50 = mul nsw i32 %add10, 24, !dbg !368
  %conv51 = sext i32 %mul50 to i64, !dbg !368
  %mul52 = shl nsw i64 %conv51, 2, !dbg !368
  %call53 = tail call i8* @sre_malloc(i8* getelementptr inbounds ([51 x i8]* @.str, i64 0, i64 0), i32 127, i64 %mul52) #8, !dbg !368
  %14 = bitcast i8* %call53 to i32*, !dbg !368
  %msc_mem = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 37, !dbg !368
  store i32* %14, i32** %msc_mem, align 8, !dbg !368, !tbaa !354
  %mul54 = mul nsw i32 %M, 24, !dbg !369
  %conv55 = sext i32 %mul54 to i64, !dbg !369
  %mul56 = shl nsw i64 %conv55, 2, !dbg !369
  %call57 = tail call i8* @sre_malloc(i8* getelementptr inbounds ([51 x i8]* @.str, i64 0, i64 0), i32 128, i64 %mul56) #8, !dbg !369
  %15 = bitcast i8* %call57 to i32*, !dbg !369
  %isc_mem = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 38, !dbg !369
  store i32* %15, i32** %isc_mem, align 8, !dbg !369, !tbaa !354
  %16 = load i32** %tsc_mem, align 8, !dbg !370, !tbaa !354
  %17 = load i32*** %tsc, align 8, !dbg !370, !tbaa !354
  store i32* %16, i32** %17, align 8, !dbg !370, !tbaa !354
  %18 = load i32** %msc_mem, align 8, !dbg !371, !tbaa !354
  %19 = load i32*** %msc, align 8, !dbg !371, !tbaa !354
  store i32* %18, i32** %19, align 8, !dbg !371, !tbaa !354
  %20 = load i32** %isc_mem, align 8, !dbg !372, !tbaa !354
  %21 = load i32*** %isc, align 8, !dbg !372, !tbaa !354
  store i32* %20, i32** %21, align 8, !dbg !372, !tbaa !354
  tail call void @llvm.dbg.value(metadata !373, i64 0, metadata !90), !dbg !374
  %cmp247 = icmp slt i32 %M, 1, !dbg !374
  br i1 %cmp247, label %for.body94, label %for.body, !dbg !374

for.body:                                         ; preds = %entry, %for.inc
  %indvars.iv257 = phi i64 [ %indvars.iv.next258, %for.inc ], [ 1, %entry ]
  %22 = load float*** %mat, align 8, !dbg !376, !tbaa !354
  %23 = load float** %22, align 8, !dbg !376, !tbaa !354
  %24 = trunc i64 %indvars.iv257 to i32, !dbg !376
  %sext = mul i64 %indvars.iv257, 85899345920, !dbg !376
  %idx.ext = ashr exact i64 %sext, 32, !dbg !376
  %add.ptr = getelementptr inbounds float* %23, i64 %idx.ext, !dbg !376
  %arrayidx72 = getelementptr inbounds float** %22, i64 %indvars.iv257, !dbg !376
  store float* %add.ptr, float** %arrayidx72, align 8, !dbg !376, !tbaa !354
  %cmp73 = icmp slt i32 %24, %M, !dbg !378
  br i1 %cmp73, label %if.then, label %for.inc, !dbg !378

if.then:                                          ; preds = %for.body
  %25 = load float*** %ins, align 8, !dbg !379, !tbaa !354
  %26 = load float** %25, align 8, !dbg !379, !tbaa !354
  %add.ptr79 = getelementptr inbounds float* %26, i64 %idx.ext, !dbg !379
  %arrayidx82 = getelementptr inbounds float** %25, i64 %indvars.iv257, !dbg !379
  store float* %add.ptr79, float** %arrayidx82, align 8, !dbg !379, !tbaa !354
  %27 = load float*** %t, align 8, !dbg !381, !tbaa !354
  %28 = load float** %27, align 8, !dbg !381, !tbaa !354
  %sext261 = mul i64 %indvars.iv257, 30064771072, !dbg !381
  %idx.ext86 = ashr exact i64 %sext261, 32, !dbg !381
  %add.ptr87 = getelementptr inbounds float* %28, i64 %idx.ext86, !dbg !381
  %arrayidx90 = getelementptr inbounds float** %27, i64 %indvars.iv257, !dbg !381
  store float* %add.ptr87, float** %arrayidx90, align 8, !dbg !381, !tbaa !354
  br label %for.inc, !dbg !382

for.inc:                                          ; preds = %for.body, %if.then
  %indvars.iv.next258 = add i64 %indvars.iv257, 1, !dbg !374
  %lftr.wideiv259 = trunc i64 %indvars.iv.next258 to i32, !dbg !374
  %exitcond260 = icmp eq i32 %lftr.wideiv259, %add10, !dbg !374
  br i1 %exitcond260, label %for.body94, label %for.body, !dbg !374

for.body94:                                       ; preds = %entry, %for.inc, %for.body94
  %indvars.iv253 = phi i64 [ %indvars.iv.next254, %for.body94 ], [ 1, %for.inc ], [ 1, %entry ]
  %29 = load i32*** %msc, align 8, !dbg !383, !tbaa !354
  %30 = load i32** %29, align 8, !dbg !383, !tbaa !354
  %31 = trunc i64 %indvars.iv253 to i32, !dbg !383
  %mul98 = mul nsw i32 %31, %add10, !dbg !383
  %idx.ext99 = sext i32 %mul98 to i64, !dbg !383
  %add.ptr100 = getelementptr inbounds i32* %30, i64 %idx.ext99, !dbg !383
  %arrayidx103 = getelementptr inbounds i32** %29, i64 %indvars.iv253, !dbg !383
  store i32* %add.ptr100, i32** %arrayidx103, align 8, !dbg !383, !tbaa !354
  %32 = load i32*** %isc, align 8, !dbg !386, !tbaa !354
  %33 = load i32** %32, align 8, !dbg !386, !tbaa !354
  %mul106 = mul nsw i32 %31, %M, !dbg !386
  %idx.ext107 = sext i32 %mul106 to i64, !dbg !386
  %add.ptr108 = getelementptr inbounds i32* %33, i64 %idx.ext107, !dbg !386
  %arrayidx111 = getelementptr inbounds i32** %32, i64 %indvars.iv253, !dbg !386
  store i32* %add.ptr108, i32** %arrayidx111, align 8, !dbg !386, !tbaa !354
  %indvars.iv.next254 = add i64 %indvars.iv253, 1, !dbg !387
  %lftr.wideiv255 = trunc i64 %indvars.iv.next254 to i32, !dbg !387
  %exitcond256 = icmp eq i32 %lftr.wideiv255, 24, !dbg !387
  br i1 %exitcond256, label %for.body118, label %for.body94, !dbg !387

for.cond130.preheader:                            ; preds = %for.body118
  %34 = load i32*** %tsc, align 8, !dbg !388, !tbaa !354
  br label %for.body133, !dbg !390

for.body118:                                      ; preds = %for.body94, %for.body118
  %indvars.iv249 = phi i64 [ %indvars.iv.next250, %for.body118 ], [ 0, %for.body94 ]
  %35 = load i32*** %tsc, align 8, !dbg !391, !tbaa !354
  %36 = load i32** %35, align 8, !dbg !391, !tbaa !354
  %37 = trunc i64 %indvars.iv249 to i32, !dbg !391
  %mul121 = mul nsw i32 %37, %M, !dbg !391
  %idx.ext122 = sext i32 %mul121 to i64, !dbg !391
  %add.ptr123 = getelementptr inbounds i32* %36, i64 %idx.ext122, !dbg !391
  %arrayidx126 = getelementptr inbounds i32** %35, i64 %indvars.iv249, !dbg !391
  store i32* %add.ptr123, i32** %arrayidx126, align 8, !dbg !391, !tbaa !354
  %indvars.iv.next250 = add i64 %indvars.iv249, 1, !dbg !393
  %lftr.wideiv251 = trunc i64 %indvars.iv.next250 to i32, !dbg !393
  %exitcond252 = icmp eq i32 %lftr.wideiv251, 7, !dbg !393
  br i1 %exitcond252, label %for.cond130.preheader, label %for.body118, !dbg !393

for.body133:                                      ; preds = %for.body133, %for.cond130.preheader
  %indvars.iv = phi i64 [ 0, %for.cond130.preheader ], [ %indvars.iv.next, %for.body133 ]
  %arrayidx136 = getelementptr inbounds i32** %34, i64 %indvars.iv, !dbg !388
  %38 = load i32** %arrayidx136, align 8, !dbg !388, !tbaa !354
  store i32 -987654321, i32* %38, align 4, !dbg !388, !tbaa !327
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !390
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !390
  %exitcond = icmp eq i32 %lftr.wideiv, 7, !dbg !390
  br i1 %exitcond, label %for.end140, label %for.body133, !dbg !390

for.end140:                                       ; preds = %for.body133
  %call144 = tail call i8* @sre_malloc(i8* getelementptr inbounds ([51 x i8]* @.str, i64 0, i64 0), i32 157, i64 %mul12) #8, !dbg !394
  %39 = bitcast i8* %call144 to float*, !dbg !394
  %begin = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 26, !dbg !394
  store float* %39, float** %begin, align 8, !dbg !394, !tbaa !354
  %call148 = tail call i8* @sre_malloc(i8* getelementptr inbounds ([51 x i8]* @.str, i64 0, i64 0), i32 158, i64 %mul12) #8, !dbg !395
  %40 = bitcast i8* %call148 to float*, !dbg !395
  %end = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 27, !dbg !395
  store float* %40, float** %end, align 8, !dbg !395, !tbaa !354
  %call152 = tail call i8* @sre_malloc(i8* getelementptr inbounds ([51 x i8]* @.str, i64 0, i64 0), i32 160, i64 %mul12) #8, !dbg !396
  %41 = bitcast i8* %call152 to i32*, !dbg !396
  %bsc_mem = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 39, !dbg !396
  store i32* %41, i32** %bsc_mem, align 8, !dbg !396, !tbaa !354
  %call156 = tail call i8* @sre_malloc(i8* getelementptr inbounds ([51 x i8]* @.str, i64 0, i64 0), i32 161, i64 %mul12) #8, !dbg !397
  %42 = bitcast i8* %call156 to i32*, !dbg !397
  %esc_mem = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 40, !dbg !397
  store i32* %42, i32** %esc_mem, align 8, !dbg !397, !tbaa !354
  %43 = load i32** %bsc_mem, align 8, !dbg !398, !tbaa !354
  %bsc = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 34, !dbg !398
  store i32* %43, i32** %bsc, align 8, !dbg !398, !tbaa !354
  %esc = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 35, !dbg !399
  store i32* %42, i32** %esc, align 8, !dbg !399, !tbaa !354
  ret void, !dbg !400
}

; Function Attrs: optsize
declare i8* @sre_malloc(i8*, i32, i64) #2

; Function Attrs: nounwind optsize uwtable
define void @FreePlan7(%struct.plan7_s* %hmm) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.plan7_s* %hmm}, i64 0, metadata !96), !dbg !401
  %name = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 0, !dbg !402
  %0 = load i8** %name, align 8, !dbg !402, !tbaa !354
  %cmp = icmp eq i8* %0, null, !dbg !402
  br i1 %cmp, label %if.end, label %if.then, !dbg !402

if.then:                                          ; preds = %entry
  tail call void @free(i8* %0) #8, !dbg !402
  br label %if.end, !dbg !402

if.end:                                           ; preds = %entry, %if.then
  %acc = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 1, !dbg !403
  %1 = load i8** %acc, align 8, !dbg !403, !tbaa !354
  %cmp2 = icmp eq i8* %1, null, !dbg !403
  br i1 %cmp2, label %if.end5, label %if.then3, !dbg !403

if.then3:                                         ; preds = %if.end
  tail call void @free(i8* %1) #8, !dbg !403
  br label %if.end5, !dbg !403

if.end5:                                          ; preds = %if.end, %if.then3
  %desc = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 2, !dbg !404
  %2 = load i8** %desc, align 8, !dbg !404, !tbaa !354
  %cmp6 = icmp eq i8* %2, null, !dbg !404
  br i1 %cmp6, label %if.end9, label %if.then7, !dbg !404

if.then7:                                         ; preds = %if.end5
  tail call void @free(i8* %2) #8, !dbg !404
  br label %if.end9, !dbg !404

if.end9:                                          ; preds = %if.end5, %if.then7
  %rf = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 3, !dbg !405
  %3 = load i8** %rf, align 8, !dbg !405, !tbaa !354
  %cmp10 = icmp eq i8* %3, null, !dbg !405
  br i1 %cmp10, label %if.end13, label %if.then11, !dbg !405

if.then11:                                        ; preds = %if.end9
  tail call void @free(i8* %3) #8, !dbg !405
  br label %if.end13, !dbg !405

if.end13:                                         ; preds = %if.end9, %if.then11
  %cs = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 4, !dbg !406
  %4 = load i8** %cs, align 8, !dbg !406, !tbaa !354
  %cmp14 = icmp eq i8* %4, null, !dbg !406
  br i1 %cmp14, label %if.end17, label %if.then15, !dbg !406

if.then15:                                        ; preds = %if.end13
  tail call void @free(i8* %4) #8, !dbg !406
  br label %if.end17, !dbg !406

if.end17:                                         ; preds = %if.end13, %if.then15
  %ca = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 5, !dbg !407
  %5 = load i8** %ca, align 8, !dbg !407, !tbaa !354
  %cmp18 = icmp eq i8* %5, null, !dbg !407
  br i1 %cmp18, label %if.end21, label %if.then19, !dbg !407

if.then19:                                        ; preds = %if.end17
  tail call void @free(i8* %5) #8, !dbg !407
  br label %if.end21, !dbg !407

if.end21:                                         ; preds = %if.end17, %if.then19
  %comlog = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 6, !dbg !408
  %6 = load i8** %comlog, align 8, !dbg !408, !tbaa !354
  %cmp22 = icmp eq i8* %6, null, !dbg !408
  br i1 %cmp22, label %if.end25, label %if.then23, !dbg !408

if.then23:                                        ; preds = %if.end21
  tail call void @free(i8* %6) #8, !dbg !408
  br label %if.end25, !dbg !408

if.end25:                                         ; preds = %if.end21, %if.then23
  %ctime = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 8, !dbg !409
  %7 = load i8** %ctime, align 8, !dbg !409, !tbaa !354
  %cmp26 = icmp eq i8* %7, null, !dbg !409
  br i1 %cmp26, label %if.end29, label %if.then27, !dbg !409

if.then27:                                        ; preds = %if.end25
  tail call void @free(i8* %7) #8, !dbg !409
  br label %if.end29, !dbg !409

if.end29:                                         ; preds = %if.end25, %if.then27
  %map = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 9, !dbg !410
  %8 = load i32** %map, align 8, !dbg !410, !tbaa !354
  %cmp30 = icmp eq i32* %8, null, !dbg !410
  br i1 %cmp30, label %if.end33, label %if.then31, !dbg !410

if.then31:                                        ; preds = %if.end29
  %9 = bitcast i32* %8 to i8*, !dbg !410
  tail call void @free(i8* %9) #8, !dbg !410
  br label %if.end33, !dbg !410

if.end33:                                         ; preds = %if.end29, %if.then31
  %tpri = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 11, !dbg !411
  %10 = load i32** %tpri, align 8, !dbg !411, !tbaa !354
  %cmp34 = icmp eq i32* %10, null, !dbg !411
  br i1 %cmp34, label %if.end37, label %if.then35, !dbg !411

if.then35:                                        ; preds = %if.end33
  %11 = bitcast i32* %10 to i8*, !dbg !411
  tail call void @free(i8* %11) #8, !dbg !411
  br label %if.end37, !dbg !411

if.end37:                                         ; preds = %if.end33, %if.then35
  %mpri = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 12, !dbg !412
  %12 = load i32** %mpri, align 8, !dbg !412, !tbaa !354
  %cmp38 = icmp eq i32* %12, null, !dbg !412
  br i1 %cmp38, label %if.end41, label %if.then39, !dbg !412

if.then39:                                        ; preds = %if.end37
  %13 = bitcast i32* %12 to i8*, !dbg !412
  tail call void @free(i8* %13) #8, !dbg !412
  br label %if.end41, !dbg !412

if.end41:                                         ; preds = %if.end37, %if.then39
  %ipri = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 13, !dbg !413
  %14 = load i32** %ipri, align 8, !dbg !413, !tbaa !354
  %cmp42 = icmp eq i32* %14, null, !dbg !413
  br i1 %cmp42, label %if.end45, label %if.then43, !dbg !413

if.then43:                                        ; preds = %if.end41
  %15 = bitcast i32* %14 to i8*, !dbg !413
  tail call void @free(i8* %15) #8, !dbg !413
  br label %if.end45, !dbg !413

if.end45:                                         ; preds = %if.end41, %if.then43
  %bsc_mem = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 39, !dbg !414
  %16 = load i32** %bsc_mem, align 8, !dbg !414, !tbaa !354
  %cmp46 = icmp eq i32* %16, null, !dbg !414
  br i1 %cmp46, label %if.end49, label %if.then47, !dbg !414

if.then47:                                        ; preds = %if.end45
  %17 = bitcast i32* %16 to i8*, !dbg !414
  tail call void @free(i8* %17) #8, !dbg !414
  br label %if.end49, !dbg !414

if.end49:                                         ; preds = %if.end45, %if.then47
  %begin = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 26, !dbg !415
  %18 = load float** %begin, align 8, !dbg !415, !tbaa !354
  %cmp50 = icmp eq float* %18, null, !dbg !415
  br i1 %cmp50, label %if.end53, label %if.then51, !dbg !415

if.then51:                                        ; preds = %if.end49
  %19 = bitcast float* %18 to i8*, !dbg !415
  tail call void @free(i8* %19) #8, !dbg !415
  br label %if.end53, !dbg !415

if.end53:                                         ; preds = %if.end49, %if.then51
  %esc_mem = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 40, !dbg !416
  %20 = load i32** %esc_mem, align 8, !dbg !416, !tbaa !354
  %cmp54 = icmp eq i32* %20, null, !dbg !416
  br i1 %cmp54, label %if.end57, label %if.then55, !dbg !416

if.then55:                                        ; preds = %if.end53
  %21 = bitcast i32* %20 to i8*, !dbg !416
  tail call void @free(i8* %21) #8, !dbg !416
  br label %if.end57, !dbg !416

if.end57:                                         ; preds = %if.end53, %if.then55
  %end = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 27, !dbg !417
  %22 = load float** %end, align 8, !dbg !417, !tbaa !354
  %cmp58 = icmp eq float* %22, null, !dbg !417
  br i1 %cmp58, label %if.end61, label %if.then59, !dbg !417

if.then59:                                        ; preds = %if.end57
  %23 = bitcast float* %22 to i8*, !dbg !417
  tail call void @free(i8* %23) #8, !dbg !417
  br label %if.end61, !dbg !417

if.end61:                                         ; preds = %if.end57, %if.then59
  %msc_mem = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 37, !dbg !418
  %24 = load i32** %msc_mem, align 8, !dbg !418, !tbaa !354
  %cmp62 = icmp eq i32* %24, null, !dbg !418
  br i1 %cmp62, label %if.end65, label %if.then63, !dbg !418

if.then63:                                        ; preds = %if.end61
  %25 = bitcast i32* %24 to i8*, !dbg !418
  tail call void @free(i8* %25) #8, !dbg !418
  br label %if.end65, !dbg !418

if.end65:                                         ; preds = %if.end61, %if.then63
  %isc_mem = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 38, !dbg !419
  %26 = load i32** %isc_mem, align 8, !dbg !419, !tbaa !354
  %cmp66 = icmp eq i32* %26, null, !dbg !419
  br i1 %cmp66, label %if.end69, label %if.then67, !dbg !419

if.then67:                                        ; preds = %if.end65
  %27 = bitcast i32* %26 to i8*, !dbg !419
  tail call void @free(i8* %27) #8, !dbg !419
  br label %if.end69, !dbg !419

if.end69:                                         ; preds = %if.end65, %if.then67
  %tsc_mem = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 36, !dbg !420
  %28 = load i32** %tsc_mem, align 8, !dbg !420, !tbaa !354
  %cmp70 = icmp eq i32* %28, null, !dbg !420
  br i1 %cmp70, label %if.end73, label %if.then71, !dbg !420

if.then71:                                        ; preds = %if.end69
  %29 = bitcast i32* %28 to i8*, !dbg !420
  tail call void @free(i8* %29) #8, !dbg !420
  br label %if.end73, !dbg !420

if.end73:                                         ; preds = %if.end69, %if.then71
  %mat = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 22, !dbg !421
  %30 = load float*** %mat, align 8, !dbg !421, !tbaa !354
  %cmp74 = icmp eq float** %30, null, !dbg !421
  br i1 %cmp74, label %if.end77, label %if.then75, !dbg !421

if.then75:                                        ; preds = %if.end73
  %31 = load float** %30, align 8, !dbg !421, !tbaa !354
  %32 = bitcast float* %31 to i8*, !dbg !421
  tail call void @free(i8* %32) #8, !dbg !421
  br label %if.end77, !dbg !421

if.end77:                                         ; preds = %if.end73, %if.then75
  %ins = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 23, !dbg !422
  %33 = load float*** %ins, align 8, !dbg !422, !tbaa !354
  %cmp78 = icmp eq float** %33, null, !dbg !422
  br i1 %cmp78, label %if.end82, label %if.then79, !dbg !422

if.then79:                                        ; preds = %if.end77
  %34 = load float** %33, align 8, !dbg !422, !tbaa !354
  %35 = bitcast float* %34 to i8*, !dbg !422
  tail call void @free(i8* %35) #8, !dbg !422
  br label %if.end82, !dbg !422

if.end82:                                         ; preds = %if.end77, %if.then79
  %t = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 21, !dbg !423
  %36 = load float*** %t, align 8, !dbg !423, !tbaa !354
  %cmp83 = icmp eq float** %36, null, !dbg !423
  br i1 %cmp83, label %if.end87, label %if.then84, !dbg !423

if.then84:                                        ; preds = %if.end82
  %37 = load float** %36, align 8, !dbg !423, !tbaa !354
  %38 = bitcast float* %37 to i8*, !dbg !423
  tail call void @free(i8* %38) #8, !dbg !423
  br label %if.end87, !dbg !423

if.end87:                                         ; preds = %if.end82, %if.then84
  %msc = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 31, !dbg !424
  %39 = load i32*** %msc, align 8, !dbg !424, !tbaa !354
  %cmp88 = icmp eq i32** %39, null, !dbg !424
  br i1 %cmp88, label %if.end91, label %if.then89, !dbg !424

if.then89:                                        ; preds = %if.end87
  %40 = bitcast i32** %39 to i8*, !dbg !424
  tail call void @free(i8* %40) #8, !dbg !424
  br label %if.end91, !dbg !424

if.end91:                                         ; preds = %if.end87, %if.then89
  %isc = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 32, !dbg !425
  %41 = load i32*** %isc, align 8, !dbg !425, !tbaa !354
  %cmp92 = icmp eq i32** %41, null, !dbg !425
  br i1 %cmp92, label %if.end95, label %if.then93, !dbg !425

if.then93:                                        ; preds = %if.end91
  %42 = bitcast i32** %41 to i8*, !dbg !425
  tail call void @free(i8* %42) #8, !dbg !425
  br label %if.end95, !dbg !425

if.end95:                                         ; preds = %if.end91, %if.then93
  %tsc = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 30, !dbg !426
  %43 = load i32*** %tsc, align 8, !dbg !426, !tbaa !354
  %cmp96 = icmp eq i32** %43, null, !dbg !426
  br i1 %cmp96, label %if.end99, label %if.then97, !dbg !426

if.then97:                                        ; preds = %if.end95
  %44 = bitcast i32** %43 to i8*, !dbg !426
  tail call void @free(i8* %44) #8, !dbg !426
  br label %if.end99, !dbg !426

if.end99:                                         ; preds = %if.end95, %if.then97
  %45 = load float*** %mat, align 8, !dbg !427, !tbaa !354
  %cmp101 = icmp eq float** %45, null, !dbg !427
  br i1 %cmp101, label %if.end104, label %if.then102, !dbg !427

if.then102:                                       ; preds = %if.end99
  %46 = bitcast float** %45 to i8*, !dbg !427
  tail call void @free(i8* %46) #8, !dbg !427
  br label %if.end104, !dbg !427

if.end104:                                        ; preds = %if.end99, %if.then102
  %47 = load float*** %ins, align 8, !dbg !428, !tbaa !354
  %cmp106 = icmp eq float** %47, null, !dbg !428
  br i1 %cmp106, label %if.end109, label %if.then107, !dbg !428

if.then107:                                       ; preds = %if.end104
  %48 = bitcast float** %47 to i8*, !dbg !428
  tail call void @free(i8* %48) #8, !dbg !428
  br label %if.end109, !dbg !428

if.end109:                                        ; preds = %if.end104, %if.then107
  %49 = load float*** %t, align 8, !dbg !429, !tbaa !354
  %cmp111 = icmp eq float** %49, null, !dbg !429
  br i1 %cmp111, label %if.end114, label %if.then112, !dbg !429

if.then112:                                       ; preds = %if.end109
  %50 = bitcast float** %49 to i8*, !dbg !429
  tail call void @free(i8* %50) #8, !dbg !429
  br label %if.end114, !dbg !429

if.end114:                                        ; preds = %if.end109, %if.then112
  %dnam = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 41, !dbg !430
  %51 = load i32*** %dnam, align 8, !dbg !430, !tbaa !354
  %cmp115 = icmp eq i32** %51, null, !dbg !430
  br i1 %cmp115, label %if.end118, label %if.then116, !dbg !430

if.then116:                                       ; preds = %if.end114
  %52 = bitcast i32** %51 to i8*, !dbg !430
  tail call void @free(i8* %52) #8, !dbg !430
  br label %if.end118, !dbg !430

if.end118:                                        ; preds = %if.end114, %if.then116
  %dnai = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 42, !dbg !431
  %53 = load i32*** %dnai, align 8, !dbg !431, !tbaa !354
  %cmp119 = icmp eq i32** %53, null, !dbg !431
  br i1 %cmp119, label %if.end122, label %if.then120, !dbg !431

if.then120:                                       ; preds = %if.end118
  %54 = bitcast i32** %53 to i8*, !dbg !431
  tail call void @free(i8* %54) #8, !dbg !431
  br label %if.end122, !dbg !431

if.end122:                                        ; preds = %if.end118, %if.then120
  %55 = bitcast %struct.plan7_s* %hmm to i8*, !dbg !432
  tail call void @free(i8* %55) #8, !dbg !432
  ret void, !dbg !433
}

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) #3

; Function Attrs: nounwind optsize uwtable
define void @ZeroPlan7(%struct.plan7_s* %hmm) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.plan7_s* %hmm}, i64 0, metadata !99), !dbg !434
  tail call void @llvm.dbg.value(metadata !373, i64 0, metadata !100), !dbg !435
  %M = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 20, !dbg !435
  %0 = load i32* %M, align 4, !dbg !435, !tbaa !327
  %cmp43 = icmp sgt i32 %0, 1, !dbg !435
  br i1 %cmp43, label %for.body.lr.ph, label %entry.for.end_crit_edge, !dbg !435

entry.for.end_crit_edge:                          ; preds = %entry
  %mat7.pre = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 22, !dbg !437
  br label %for.end, !dbg !435

for.body.lr.ph:                                   ; preds = %entry
  %t = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 21, !dbg !438
  %mat = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 22, !dbg !440
  %ins = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 23, !dbg !441
  br label %for.body, !dbg !435

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %indvars.iv47 = phi i64 [ 1, %for.body.lr.ph ], [ %indvars.iv.next48, %for.body ]
  %1 = load float*** %t, align 8, !dbg !438, !tbaa !354
  %arrayidx = getelementptr inbounds float** %1, i64 %indvars.iv47, !dbg !438
  %2 = load float** %arrayidx, align 8, !dbg !438, !tbaa !354
  tail call void @FSet(float* %2, i32 7, float 0.000000e+00) #8, !dbg !438
  %3 = load float*** %mat, align 8, !dbg !440, !tbaa !354
  %arrayidx2 = getelementptr inbounds float** %3, i64 %indvars.iv47, !dbg !440
  %4 = load float** %arrayidx2, align 8, !dbg !440, !tbaa !354
  %5 = load i32* @Alphabet_size, align 4, !dbg !440, !tbaa !327
  tail call void @FSet(float* %4, i32 %5, float 0.000000e+00) #8, !dbg !440
  %6 = load float*** %ins, align 8, !dbg !441, !tbaa !354
  %arrayidx4 = getelementptr inbounds float** %6, i64 %indvars.iv47, !dbg !441
  %7 = load float** %arrayidx4, align 8, !dbg !441, !tbaa !354
  %8 = load i32* @Alphabet_size, align 4, !dbg !441, !tbaa !327
  tail call void @FSet(float* %7, i32 %8, float 0.000000e+00) #8, !dbg !441
  %indvars.iv.next48 = add i64 %indvars.iv47, 1, !dbg !435
  %9 = load i32* %M, align 4, !dbg !435, !tbaa !327
  %10 = trunc i64 %indvars.iv.next48 to i32, !dbg !435
  %cmp = icmp slt i32 %10, %9, !dbg !435
  br i1 %cmp, label %for.body, label %for.end, !dbg !435

for.end:                                          ; preds = %for.body, %entry.for.end_crit_edge
  %mat7.pre-phi = phi float*** [ %mat7.pre, %entry.for.end_crit_edge ], [ %mat, %for.body ], !dbg !437
  %.lcssa = phi i32 [ %0, %entry.for.end_crit_edge ], [ %9, %for.body ]
  %idxprom6 = sext i32 %.lcssa to i64, !dbg !437
  %11 = load float*** %mat7.pre-phi, align 8, !dbg !437, !tbaa !354
  %arrayidx8 = getelementptr inbounds float** %11, i64 %idxprom6, !dbg !437
  %12 = load float** %arrayidx8, align 8, !dbg !437, !tbaa !354
  %13 = load i32* @Alphabet_size, align 4, !dbg !437, !tbaa !327
  tail call void @FSet(float* %12, i32 %13, float 0.000000e+00) #8, !dbg !437
  %tbd1 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 24, !dbg !442
  store float 0.000000e+00, float* %tbd1, align 4, !dbg !442, !tbaa !332
  %begin = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 26, !dbg !443
  %14 = load float** %begin, align 8, !dbg !443, !tbaa !354
  %add.ptr = getelementptr inbounds float* %14, i64 1, !dbg !443
  %15 = load i32* %M, align 4, !dbg !443, !tbaa !327
  tail call void @FSet(float* %add.ptr, i32 %15, float 0.000000e+00) #8, !dbg !443
  %end = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 27, !dbg !444
  %16 = load float** %end, align 8, !dbg !444, !tbaa !354
  %add.ptr10 = getelementptr inbounds float* %16, i64 1, !dbg !444
  %17 = load i32* %M, align 4, !dbg !444, !tbaa !327
  tail call void @FSet(float* %add.ptr10, i32 %17, float 0.000000e+00) #8, !dbg !444
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !100), !dbg !445
  br label %for.body14, !dbg !445

for.body14:                                       ; preds = %for.body14, %for.end
  %indvars.iv = phi i64 [ 0, %for.end ], [ %indvars.iv.next, %for.body14 ]
  %arraydecay = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 25, i64 %indvars.iv, i64 0, !dbg !447
  tail call void @FSet(float* %arraydecay, i32 2, float 0.000000e+00) #8, !dbg !447
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !445
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !445
  %exitcond = icmp eq i32 %lftr.wideiv, 4, !dbg !445
  br i1 %exitcond, label %for.end19, label %for.body14, !dbg !445

for.end19:                                        ; preds = %for.body14
  %flags = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 47, !dbg !448
  %18 = load i32* %flags, align 4, !dbg !448, !tbaa !327
  %and21 = and i32 %18, -34, !dbg !449
  store i32 %and21, i32* %flags, align 4, !dbg !449, !tbaa !327
  ret void, !dbg !450
}

; Function Attrs: optsize
declare void @FSet(float*, i32, float) #2

; Function Attrs: nounwind optsize uwtable
define void @Plan7SetName(%struct.plan7_s* nocapture %hmm, i8* %name) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.plan7_s* %hmm}, i64 0, metadata !105), !dbg !451
  tail call void @llvm.dbg.value(metadata !{i8* %name}, i64 0, metadata !106), !dbg !451
  %name1 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 0, !dbg !452
  %0 = load i8** %name1, align 8, !dbg !452, !tbaa !354
  %cmp = icmp eq i8* %0, null, !dbg !452
  br i1 %cmp, label %if.end, label %if.then, !dbg !452

if.then:                                          ; preds = %entry
  tail call void @free(i8* %0) #8, !dbg !452
  br label %if.end, !dbg !452

if.end:                                           ; preds = %entry, %if.then
  %call = tail call i8* @Strdup(i8* %name) #8, !dbg !453
  store i8* %call, i8** %name1, align 8, !dbg !453, !tbaa !354
  tail call void @StringChop(i8* %call) #8, !dbg !454
  ret void, !dbg !455
}

; Function Attrs: optsize
declare i8* @Strdup(i8*) #2

; Function Attrs: optsize
declare void @StringChop(i8*) #2

; Function Attrs: nounwind optsize uwtable
define void @Plan7SetAccession(%struct.plan7_s* nocapture %hmm, i8* %acc) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.plan7_s* %hmm}, i64 0, metadata !109), !dbg !456
  tail call void @llvm.dbg.value(metadata !{i8* %acc}, i64 0, metadata !110), !dbg !456
  %acc1 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 1, !dbg !457
  %0 = load i8** %acc1, align 8, !dbg !457, !tbaa !354
  %cmp = icmp eq i8* %0, null, !dbg !457
  br i1 %cmp, label %if.end, label %if.then, !dbg !457

if.then:                                          ; preds = %entry
  tail call void @free(i8* %0) #8, !dbg !457
  br label %if.end, !dbg !457

if.end:                                           ; preds = %entry, %if.then
  %call = tail call i8* @Strdup(i8* %acc) #8, !dbg !458
  store i8* %call, i8** %acc1, align 8, !dbg !458, !tbaa !354
  tail call void @StringChop(i8* %call) #8, !dbg !459
  %flags = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 47, !dbg !460
  %1 = load i32* %flags, align 4, !dbg !460, !tbaa !327
  %or = or i32 %1, 512, !dbg !460
  store i32 %or, i32* %flags, align 4, !dbg !460, !tbaa !327
  ret void, !dbg !461
}

; Function Attrs: nounwind optsize uwtable
define void @Plan7SetDescription(%struct.plan7_s* nocapture %hmm, i8* %desc) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.plan7_s* %hmm}, i64 0, metadata !113), !dbg !462
  tail call void @llvm.dbg.value(metadata !{i8* %desc}, i64 0, metadata !114), !dbg !462
  %desc1 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 2, !dbg !463
  %0 = load i8** %desc1, align 8, !dbg !463, !tbaa !354
  %cmp = icmp eq i8* %0, null, !dbg !463
  br i1 %cmp, label %if.end, label %if.then, !dbg !463

if.then:                                          ; preds = %entry
  tail call void @free(i8* %0) #8, !dbg !463
  br label %if.end, !dbg !463

if.end:                                           ; preds = %entry, %if.then
  %call = tail call i8* @Strdup(i8* %desc) #8, !dbg !464
  store i8* %call, i8** %desc1, align 8, !dbg !464, !tbaa !354
  tail call void @StringChop(i8* %call) #8, !dbg !465
  %flags = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 47, !dbg !466
  %1 = load i32* %flags, align 4, !dbg !466, !tbaa !327
  %or = or i32 %1, 2, !dbg !466
  store i32 %or, i32* %flags, align 4, !dbg !466, !tbaa !327
  ret void, !dbg !467
}

; Function Attrs: nounwind optsize uwtable
define void @Plan7ComlogAppend(%struct.plan7_s* nocapture %hmm, i32 %argc, i8** nocapture %argv) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.plan7_s* %hmm}, i64 0, metadata !120), !dbg !468
  tail call void @llvm.dbg.value(metadata !{i32 %argc}, i64 0, metadata !121), !dbg !468
  tail call void @llvm.dbg.value(metadata !{i8** %argv}, i64 0, metadata !122), !dbg !468
  tail call void @llvm.dbg.value(metadata !{i32 %argc}, i64 0, metadata !123), !dbg !469
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !124), !dbg !470
  %cmp66 = icmp sgt i32 %argc, 0, !dbg !470
  br i1 %cmp66, label %for.body, label %for.end, !dbg !470

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv69 = phi i64 [ %indvars.iv.next70, %for.body ], [ 0, %entry ]
  %len.067 = phi i32 [ %conv1, %for.body ], [ %argc, %entry ]
  %arrayidx = getelementptr inbounds i8** %argv, i64 %indvars.iv69, !dbg !472
  %0 = load i8** %arrayidx, align 8, !dbg !472, !tbaa !354
  %call = tail call i64 @strlen(i8* %0) #10, !dbg !472
  %conv63 = zext i32 %len.067 to i64, !dbg !472
  %add = add i64 %call, %conv63, !dbg !472
  %conv1 = trunc i64 %add to i32, !dbg !472
  tail call void @llvm.dbg.value(metadata !{i32 %conv1}, i64 0, metadata !123), !dbg !472
  %indvars.iv.next70 = add i64 %indvars.iv69, 1, !dbg !470
  %lftr.wideiv71 = trunc i64 %indvars.iv.next70 to i32, !dbg !470
  %exitcond72 = icmp eq i32 %lftr.wideiv71, %argc, !dbg !470
  br i1 %exitcond72, label %for.end, label %for.body, !dbg !470

for.end:                                          ; preds = %for.body, %entry
  %len.0.lcssa = phi i32 [ %argc, %entry ], [ %conv1, %for.body ]
  %comlog = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 6, !dbg !473
  %1 = load i8** %comlog, align 8, !dbg !473, !tbaa !354
  %cmp2 = icmp eq i8* %1, null, !dbg !473
  br i1 %cmp2, label %if.else, label %if.then, !dbg !473

if.then:                                          ; preds = %for.end
  %call5 = tail call i64 @strlen(i8* %1) #10, !dbg !474
  %conv662 = zext i32 %len.0.lcssa to i64, !dbg !474
  %add7 = add i64 %call5, %conv662, !dbg !474
  %add10 = shl i64 %add7, 32, !dbg !476
  %sext = add i64 %add10, 4294967296, !dbg !476
  %conv11 = ashr exact i64 %sext, 32, !dbg !476
  %call12 = tail call i8* @sre_realloc(i8* getelementptr inbounds ([51 x i8]* @.str, i64 0, i64 0), i32 296, i8* %1, i64 %conv11) #8, !dbg !476
  store i8* %call12, i8** %comlog, align 8, !dbg !476, !tbaa !354
  br label %if.end, !dbg !477

if.else:                                          ; preds = %for.end
  %add14 = add nsw i32 %len.0.lcssa, 1, !dbg !478
  %conv15 = sext i32 %add14 to i64, !dbg !478
  %call17 = tail call i8* @sre_malloc(i8* getelementptr inbounds ([51 x i8]* @.str, i64 0, i64 0), i32 300, i64 %conv15) #8, !dbg !478
  store i8* %call17, i8** %comlog, align 8, !dbg !478, !tbaa !354
  store i8 0, i8* %call17, align 1, !dbg !480, !tbaa !328
  %.pre = load i8** %comlog, align 8, !dbg !481, !tbaa !354
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %2 = phi i8* [ %.pre, %if.else ], [ %call12, %if.then ]
  %strlen = tail call i64 @strlen(i8* %2), !dbg !481
  %endptr = getelementptr i8* %2, i64 %strlen, !dbg !481
  %3 = bitcast i8* %endptr to i16*, !dbg !481
  store i16 10, i16* %3, align 1, !dbg !481
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !124), !dbg !482
  br i1 %cmp66, label %for.body25.lr.ph, label %for.end38, !dbg !482

for.body25.lr.ph:                                 ; preds = %if.end
  %sub = add nsw i32 %argc, -1, !dbg !484
  br label %for.body25, !dbg !482

for.body25:                                       ; preds = %for.inc36, %for.body25.lr.ph
  %indvars.iv = phi i64 [ 0, %for.body25.lr.ph ], [ %indvars.iv.next, %for.inc36 ]
  %4 = load i8** %comlog, align 8, !dbg !486, !tbaa !354
  %arrayidx28 = getelementptr inbounds i8** %argv, i64 %indvars.iv, !dbg !486
  %5 = load i8** %arrayidx28, align 8, !dbg !486, !tbaa !354
  %call29 = tail call i8* @strcat(i8* %4, i8* %5) #8, !dbg !486
  %6 = trunc i64 %indvars.iv to i32, !dbg !484
  %cmp30 = icmp slt i32 %6, %sub, !dbg !484
  br i1 %cmp30, label %if.then32, label %for.inc36, !dbg !484

if.then32:                                        ; preds = %for.body25
  %7 = load i8** %comlog, align 8, !dbg !484, !tbaa !354
  %strlen60 = tail call i64 @strlen(i8* %7), !dbg !484
  %endptr61 = getelementptr i8* %7, i64 %strlen60, !dbg !484
  %8 = bitcast i8* %endptr61 to i16*, !dbg !484
  store i16 32, i16* %8, align 1, !dbg !484
  br label %for.inc36, !dbg !484

for.inc36:                                        ; preds = %for.body25, %if.then32
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !482
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !482
  %exitcond = icmp eq i32 %lftr.wideiv, %argc, !dbg !482
  br i1 %exitcond, label %for.end38, label %for.body25, !dbg !482

for.end38:                                        ; preds = %for.inc36, %if.end
  ret void, !dbg !487
}

; Function Attrs: nounwind optsize readonly
declare i64 @strlen(i8* nocapture) #4

; Function Attrs: optsize
declare i8* @sre_realloc(i8*, i32, i8*, i64) #2

; Function Attrs: nounwind optsize
declare i8* @strcat(i8*, i8* nocapture) #3

; Function Attrs: nounwind optsize uwtable
define void @Plan7SetCtime(%struct.plan7_s* nocapture %hmm) #0 {
entry:
  %date = alloca i64, align 8
  call void @llvm.dbg.value(metadata !{%struct.plan7_s* %hmm}, i64 0, metadata !127), !dbg !488
  call void @llvm.dbg.declare(metadata !{i64* %date}, metadata !128), !dbg !489
  %call = call i64 @time(i64* null) #8, !dbg !489
  call void @llvm.dbg.value(metadata !{i64 %call}, i64 0, metadata !128), !dbg !489
  store i64 %call, i64* %date, align 8, !dbg !489, !tbaa !490
  %ctime = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 8, !dbg !491
  %0 = load i8** %ctime, align 8, !dbg !491, !tbaa !354
  %cmp = icmp eq i8* %0, null, !dbg !491
  br i1 %cmp, label %if.end, label %if.then, !dbg !491

if.then:                                          ; preds = %entry
  call void @free(i8* %0) #8, !dbg !491
  br label %if.end, !dbg !491

if.end:                                           ; preds = %entry, %if.then
  %call2 = call i8* @ctime(i64* %date) #8, !dbg !492
  %call3 = call i8* @Strdup(i8* %call2) #8, !dbg !492
  store i8* %call3, i8** %ctime, align 8, !dbg !492, !tbaa !354
  call void @StringChop(i8* %call3) #8, !dbg !493
  ret void, !dbg !494
}

; Function Attrs: nounwind optsize
declare i64 @time(i64*) #3

; Function Attrs: nounwind optsize
declare i8* @ctime(i64*) #3

; Function Attrs: nounwind optsize uwtable
define void @Plan7SetNullModel(%struct.plan7_s* nocapture %hmm, float* nocapture %null, float %p1) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.plan7_s* %hmm}, i64 0, metadata !136), !dbg !495
  tail call void @llvm.dbg.value(metadata !{float* %null}, i64 0, metadata !137), !dbg !495
  tail call void @llvm.dbg.value(metadata !{float %p1}, i64 0, metadata !138), !dbg !495
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !139), !dbg !496
  %0 = load i32* @Alphabet_size, align 4, !dbg !496, !tbaa !327
  %cmp9 = icmp sgt i32 %0, 0, !dbg !496
  br i1 %cmp9, label %for.body, label %for.end, !dbg !496

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  %arrayidx = getelementptr inbounds float* %null, i64 %indvars.iv, !dbg !498
  %1 = load float* %arrayidx, align 4, !dbg !498, !tbaa !332
  %arrayidx3 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 28, i64 %indvars.iv, !dbg !498
  store float %1, float* %arrayidx3, align 4, !dbg !498, !tbaa !332
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !496
  %2 = trunc i64 %indvars.iv.next to i32, !dbg !496
  %cmp = icmp slt i32 %2, %0, !dbg !496
  br i1 %cmp, label %for.body, label %for.end, !dbg !496

for.end:                                          ; preds = %for.body, %entry
  %p14 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 29, !dbg !499
  store float %p1, float* %p14, align 4, !dbg !499, !tbaa !332
  ret void, !dbg !500
}

; Function Attrs: nounwind optsize uwtable
define void @P7Logoddsify(%struct.plan7_s* %hmm, i32 %viterbi_mode) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.plan7_s* %hmm}, i64 0, metadata !142), !dbg !501
  tail call void @llvm.dbg.value(metadata !{i32 %viterbi_mode}, i64 0, metadata !143), !dbg !501
  %flags = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 47, !dbg !502
  %0 = load i32* %flags, align 4, !dbg !502, !tbaa !327
  %and = and i32 %0, 1, !dbg !502
  %tobool = icmp eq i32 %and, 0, !dbg !502
  br i1 %tobool, label %for.cond.preheader, label %return, !dbg !502

for.cond.preheader:                               ; preds = %entry
  %M = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 20, !dbg !503
  %1 = load i32* %M, align 4, !dbg !503, !tbaa !327
  %cmp616 = icmp slt i32 %1, 1, !dbg !503
  br i1 %cmp616, label %for.end133, label %for.cond1.preheader.lr.ph, !dbg !503

for.cond1.preheader.lr.ph:                        ; preds = %for.cond.preheader
  %mat32 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 22, !dbg !505
  %arraydecay = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 28, i64 0, !dbg !505
  %msc38 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 31, !dbg !505
  %ins45 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 23, !dbg !509
  %isc52 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 32, !dbg !509
  br label %for.cond1.preheader, !dbg !503

for.cond1.preheader:                              ; preds = %for.inc59.for.cond1.preheader_crit_edge, %for.cond1.preheader.lr.ph
  %indvars.iv632 = phi i64 [ %indvars.iv.next633, %for.inc59.for.cond1.preheader_crit_edge ], [ 1, %for.cond1.preheader.lr.ph ]
  %2 = load i32* @Alphabet_size, align 4, !dbg !510, !tbaa !327
  %cmp2611 = icmp sgt i32 %2, 0, !dbg !510
  br i1 %cmp2611, label %for.body3, label %for.cond28.loopexit, !dbg !510

for.cond62.preheader:                             ; preds = %for.inc59
  %cmp64608 = icmp sgt i32 %34, 1, !dbg !512
  br i1 %cmp64608, label %for.body65.lr.ph, label %for.end133, !dbg !512

for.body65.lr.ph:                                 ; preds = %for.cond62.preheader
  %t = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 21, !dbg !514
  %p1 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 29, !dbg !514
  %tsc = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 30, !dbg !514
  br label %for.body65, !dbg !512

for.body3:                                        ; preds = %for.cond1.preheader, %for.inc
  %indvars.iv628 = phi i64 [ %indvars.iv.next629, %for.inc ], [ 0, %for.cond1.preheader ]
  %3 = load float*** %mat32, align 8, !dbg !516, !tbaa !354
  %arrayidx = getelementptr inbounds float** %3, i64 %indvars.iv632, !dbg !516
  %4 = load float** %arrayidx, align 8, !dbg !516, !tbaa !354
  %arrayidx5 = getelementptr inbounds float* %4, i64 %indvars.iv628, !dbg !516
  %5 = load float* %arrayidx5, align 4, !dbg !516, !tbaa !332
  %arrayidx7 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 28, i64 %indvars.iv628, !dbg !516
  %6 = load float* %arrayidx7, align 4, !dbg !516, !tbaa !332
  %call = tail call i32 @Prob2Score(float %5, float %6) #8, !dbg !516
  %7 = load i32*** %msc38, align 8, !dbg !516, !tbaa !354
  %arrayidx10 = getelementptr inbounds i32** %7, i64 %indvars.iv628, !dbg !516
  %8 = load i32** %arrayidx10, align 8, !dbg !516, !tbaa !354
  %arrayidx11 = getelementptr inbounds i32* %8, i64 %indvars.iv632, !dbg !516
  store i32 %call, i32* %arrayidx11, align 4, !dbg !516, !tbaa !327
  %9 = load i32* %M, align 4, !dbg !518, !tbaa !327
  %10 = trunc i64 %indvars.iv632 to i32, !dbg !518
  %cmp13 = icmp slt i32 %10, %9, !dbg !518
  br i1 %cmp13, label %if.then14, label %for.inc, !dbg !518

if.then14:                                        ; preds = %for.body3
  %11 = load float*** %ins45, align 8, !dbg !519, !tbaa !354
  %arrayidx17 = getelementptr inbounds float** %11, i64 %indvars.iv632, !dbg !519
  %12 = load float** %arrayidx17, align 8, !dbg !519, !tbaa !354
  %arrayidx18 = getelementptr inbounds float* %12, i64 %indvars.iv628, !dbg !519
  %13 = load float* %arrayidx18, align 4, !dbg !519, !tbaa !332
  %14 = load float* %arrayidx7, align 4, !dbg !519, !tbaa !332
  %call22 = tail call i32 @Prob2Score(float %13, float %14) #8, !dbg !519
  %15 = load i32*** %isc52, align 8, !dbg !519, !tbaa !354
  %arrayidx25 = getelementptr inbounds i32** %15, i64 %indvars.iv628, !dbg !519
  %16 = load i32** %arrayidx25, align 8, !dbg !519, !tbaa !354
  %arrayidx26 = getelementptr inbounds i32* %16, i64 %indvars.iv632, !dbg !519
  store i32 %call22, i32* %arrayidx26, align 4, !dbg !519, !tbaa !327
  br label %for.inc, !dbg !519

for.inc:                                          ; preds = %for.body3, %if.then14
  %indvars.iv.next629 = add i64 %indvars.iv628, 1, !dbg !510
  %17 = load i32* @Alphabet_size, align 4, !dbg !510, !tbaa !327
  %18 = trunc i64 %indvars.iv.next629 to i32, !dbg !510
  %cmp2 = icmp slt i32 %18, %17, !dbg !510
  br i1 %cmp2, label %for.body3, label %for.cond28.loopexit, !dbg !510

for.cond28.loopexit:                              ; preds = %for.inc, %for.cond1.preheader
  %.lcssa610 = phi i32 [ %2, %for.cond1.preheader ], [ %17, %for.inc ]
  %19 = load i32* @Alphabet_iupac, align 4, !dbg !520, !tbaa !327
  %cmp29614 = icmp slt i32 %.lcssa610, %19, !dbg !520
  br i1 %cmp29614, label %for.body30.lr.ph, label %for.cond28.loopexit.for.inc59_crit_edge, !dbg !520

for.cond28.loopexit.for.inc59_crit_edge:          ; preds = %for.cond28.loopexit
  %.pre634 = trunc i64 %indvars.iv632 to i32, !dbg !503
  br label %for.inc59, !dbg !520

for.body30.lr.ph:                                 ; preds = %for.cond28.loopexit
  %20 = sext i32 %.lcssa610 to i64
  br label %for.body30, !dbg !520

for.body30:                                       ; preds = %for.body30.lr.ph, %for.inc56
  %indvars.iv630 = phi i64 [ %20, %for.body30.lr.ph ], [ %indvars.iv.next631, %for.inc56 ]
  %21 = load float*** %mat32, align 8, !dbg !505, !tbaa !354
  %arrayidx33 = getelementptr inbounds float** %21, i64 %indvars.iv632, !dbg !505
  %22 = load float** %arrayidx33, align 8, !dbg !505, !tbaa !354
  %23 = trunc i64 %indvars.iv630 to i32, !dbg !505
  %call35 = tail call i32 @DegenerateSymbolScore(float* %22, float* %arraydecay, i32 %23) #9, !dbg !505
  %24 = load i32*** %msc38, align 8, !dbg !505, !tbaa !354
  %arrayidx39 = getelementptr inbounds i32** %24, i64 %indvars.iv630, !dbg !505
  %25 = load i32** %arrayidx39, align 8, !dbg !505, !tbaa !354
  %arrayidx40 = getelementptr inbounds i32* %25, i64 %indvars.iv632, !dbg !505
  store i32 %call35, i32* %arrayidx40, align 4, !dbg !505, !tbaa !327
  %26 = load i32* %M, align 4, !dbg !521, !tbaa !327
  %27 = trunc i64 %indvars.iv632 to i32, !dbg !521
  %cmp42 = icmp slt i32 %27, %26, !dbg !521
  br i1 %cmp42, label %if.then43, label %for.inc56, !dbg !521

if.then43:                                        ; preds = %for.body30
  %28 = load float*** %ins45, align 8, !dbg !509, !tbaa !354
  %arrayidx46 = getelementptr inbounds float** %28, i64 %indvars.iv632, !dbg !509
  %29 = load float** %arrayidx46, align 8, !dbg !509, !tbaa !354
  %call49 = tail call i32 @DegenerateSymbolScore(float* %29, float* %arraydecay, i32 %23) #9, !dbg !509
  %30 = load i32*** %isc52, align 8, !dbg !509, !tbaa !354
  %arrayidx53 = getelementptr inbounds i32** %30, i64 %indvars.iv630, !dbg !509
  %31 = load i32** %arrayidx53, align 8, !dbg !509, !tbaa !354
  %arrayidx54 = getelementptr inbounds i32* %31, i64 %indvars.iv632, !dbg !509
  store i32 %call49, i32* %arrayidx54, align 4, !dbg !509, !tbaa !327
  br label %for.inc56, !dbg !509

for.inc56:                                        ; preds = %for.body30, %if.then43
  %indvars.iv.next631 = add i64 %indvars.iv630, 1, !dbg !520
  %32 = load i32* @Alphabet_iupac, align 4, !dbg !520, !tbaa !327
  %33 = trunc i64 %indvars.iv.next631 to i32, !dbg !520
  %cmp29 = icmp slt i32 %33, %32, !dbg !520
  br i1 %cmp29, label %for.body30, label %for.inc59, !dbg !520

for.inc59:                                        ; preds = %for.inc56, %for.cond28.loopexit.for.inc59_crit_edge
  %.pre-phi = phi i32 [ %.pre634, %for.cond28.loopexit.for.inc59_crit_edge ], [ %27, %for.inc56 ], !dbg !503
  %34 = load i32* %M, align 4, !dbg !503, !tbaa !327
  %cmp = icmp slt i32 %.pre-phi, %34, !dbg !503
  br i1 %cmp, label %for.inc59.for.cond1.preheader_crit_edge, label %for.cond62.preheader, !dbg !503

for.inc59.for.cond1.preheader_crit_edge:          ; preds = %for.inc59
  %indvars.iv.next633 = add i64 %indvars.iv632, 1, !dbg !503
  br label %for.cond1.preheader, !dbg !503

for.body65:                                       ; preds = %for.body65.lr.ph, %for.body65
  %indvars.iv625 = phi i64 [ 1, %for.body65.lr.ph ], [ %indvars.iv.next626, %for.body65 ]
  %35 = load float*** %t, align 8, !dbg !514, !tbaa !354
  %arrayidx67 = getelementptr inbounds float** %35, i64 %indvars.iv625, !dbg !514
  %36 = load float** %arrayidx67, align 8, !dbg !514, !tbaa !354
  %37 = load float* %36, align 4, !dbg !514, !tbaa !332
  %38 = load float* %p1, align 4, !dbg !514, !tbaa !332
  %call69 = tail call i32 @Prob2Score(float %37, float %38) #8, !dbg !514
  %39 = load i32*** %tsc, align 8, !dbg !514, !tbaa !354
  %40 = load i32** %39, align 8, !dbg !514, !tbaa !354
  %arrayidx72 = getelementptr inbounds i32* %40, i64 %indvars.iv625, !dbg !514
  store i32 %call69, i32* %arrayidx72, align 4, !dbg !514, !tbaa !327
  %41 = load float*** %t, align 8, !dbg !522, !tbaa !354
  %arrayidx75 = getelementptr inbounds float** %41, i64 %indvars.iv625, !dbg !522
  %42 = load float** %arrayidx75, align 8, !dbg !522, !tbaa !354
  %arrayidx76 = getelementptr inbounds float* %42, i64 1, !dbg !522
  %43 = load float* %arrayidx76, align 4, !dbg !522, !tbaa !332
  %44 = load float* %p1, align 4, !dbg !522, !tbaa !332
  %call78 = tail call i32 @Prob2Score(float %43, float %44) #8, !dbg !522
  %45 = load i32*** %tsc, align 8, !dbg !522, !tbaa !354
  %arrayidx81 = getelementptr inbounds i32** %45, i64 1, !dbg !522
  %46 = load i32** %arrayidx81, align 8, !dbg !522, !tbaa !354
  %arrayidx82 = getelementptr inbounds i32* %46, i64 %indvars.iv625, !dbg !522
  store i32 %call78, i32* %arrayidx82, align 4, !dbg !522, !tbaa !327
  %47 = load float*** %t, align 8, !dbg !523, !tbaa !354
  %arrayidx85 = getelementptr inbounds float** %47, i64 %indvars.iv625, !dbg !523
  %48 = load float** %arrayidx85, align 8, !dbg !523, !tbaa !354
  %arrayidx86 = getelementptr inbounds float* %48, i64 2, !dbg !523
  %49 = load float* %arrayidx86, align 4, !dbg !523, !tbaa !332
  %call87 = tail call i32 @Prob2Score(float %49, float 1.000000e+00) #8, !dbg !523
  %50 = load i32*** %tsc, align 8, !dbg !523, !tbaa !354
  %arrayidx90 = getelementptr inbounds i32** %50, i64 2, !dbg !523
  %51 = load i32** %arrayidx90, align 8, !dbg !523, !tbaa !354
  %arrayidx91 = getelementptr inbounds i32* %51, i64 %indvars.iv625, !dbg !523
  store i32 %call87, i32* %arrayidx91, align 4, !dbg !523, !tbaa !327
  %52 = load float*** %t, align 8, !dbg !524, !tbaa !354
  %arrayidx94 = getelementptr inbounds float** %52, i64 %indvars.iv625, !dbg !524
  %53 = load float** %arrayidx94, align 8, !dbg !524, !tbaa !354
  %arrayidx95 = getelementptr inbounds float* %53, i64 3, !dbg !524
  %54 = load float* %arrayidx95, align 4, !dbg !524, !tbaa !332
  %55 = load float* %p1, align 4, !dbg !524, !tbaa !332
  %call97 = tail call i32 @Prob2Score(float %54, float %55) #8, !dbg !524
  %56 = load i32*** %tsc, align 8, !dbg !524, !tbaa !354
  %arrayidx100 = getelementptr inbounds i32** %56, i64 3, !dbg !524
  %57 = load i32** %arrayidx100, align 8, !dbg !524, !tbaa !354
  %arrayidx101 = getelementptr inbounds i32* %57, i64 %indvars.iv625, !dbg !524
  store i32 %call97, i32* %arrayidx101, align 4, !dbg !524, !tbaa !327
  %58 = load float*** %t, align 8, !dbg !525, !tbaa !354
  %arrayidx104 = getelementptr inbounds float** %58, i64 %indvars.iv625, !dbg !525
  %59 = load float** %arrayidx104, align 8, !dbg !525, !tbaa !354
  %arrayidx105 = getelementptr inbounds float* %59, i64 4, !dbg !525
  %60 = load float* %arrayidx105, align 4, !dbg !525, !tbaa !332
  %61 = load float* %p1, align 4, !dbg !525, !tbaa !332
  %call107 = tail call i32 @Prob2Score(float %60, float %61) #8, !dbg !525
  %62 = load i32*** %tsc, align 8, !dbg !525, !tbaa !354
  %arrayidx110 = getelementptr inbounds i32** %62, i64 4, !dbg !525
  %63 = load i32** %arrayidx110, align 8, !dbg !525, !tbaa !354
  %arrayidx111 = getelementptr inbounds i32* %63, i64 %indvars.iv625, !dbg !525
  store i32 %call107, i32* %arrayidx111, align 4, !dbg !525, !tbaa !327
  %64 = load float*** %t, align 8, !dbg !526, !tbaa !354
  %arrayidx114 = getelementptr inbounds float** %64, i64 %indvars.iv625, !dbg !526
  %65 = load float** %arrayidx114, align 8, !dbg !526, !tbaa !354
  %arrayidx115 = getelementptr inbounds float* %65, i64 5, !dbg !526
  %66 = load float* %arrayidx115, align 4, !dbg !526, !tbaa !332
  %67 = load float* %p1, align 4, !dbg !526, !tbaa !332
  %call117 = tail call i32 @Prob2Score(float %66, float %67) #8, !dbg !526
  %68 = load i32*** %tsc, align 8, !dbg !526, !tbaa !354
  %arrayidx120 = getelementptr inbounds i32** %68, i64 5, !dbg !526
  %69 = load i32** %arrayidx120, align 8, !dbg !526, !tbaa !354
  %arrayidx121 = getelementptr inbounds i32* %69, i64 %indvars.iv625, !dbg !526
  store i32 %call117, i32* %arrayidx121, align 4, !dbg !526, !tbaa !327
  %70 = load float*** %t, align 8, !dbg !527, !tbaa !354
  %arrayidx124 = getelementptr inbounds float** %70, i64 %indvars.iv625, !dbg !527
  %71 = load float** %arrayidx124, align 8, !dbg !527, !tbaa !354
  %arrayidx125 = getelementptr inbounds float* %71, i64 6, !dbg !527
  %72 = load float* %arrayidx125, align 4, !dbg !527, !tbaa !332
  %call126 = tail call i32 @Prob2Score(float %72, float 1.000000e+00) #8, !dbg !527
  %73 = load i32*** %tsc, align 8, !dbg !527, !tbaa !354
  %arrayidx129 = getelementptr inbounds i32** %73, i64 6, !dbg !527
  %74 = load i32** %arrayidx129, align 8, !dbg !527, !tbaa !354
  %arrayidx130 = getelementptr inbounds i32* %74, i64 %indvars.iv625, !dbg !527
  store i32 %call126, i32* %arrayidx130, align 4, !dbg !527, !tbaa !327
  %indvars.iv.next626 = add i64 %indvars.iv625, 1, !dbg !512
  %75 = load i32* %M, align 4, !dbg !512, !tbaa !327
  %76 = trunc i64 %indvars.iv.next626 to i32, !dbg !512
  %cmp64 = icmp slt i32 %76, %75, !dbg !512
  br i1 %cmp64, label %for.body65, label %for.end133, !dbg !512

for.end133:                                       ; preds = %for.cond.preheader, %for.body65, %for.cond62.preheader
  %77 = phi i32 [ %34, %for.cond62.preheader ], [ %75, %for.body65 ], [ %1, %for.cond.preheader ]
  %tbd1 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 24, !dbg !528
  %78 = load float* %tbd1, align 4, !dbg !528, !tbaa !332
  %cmp134 = fcmp ogt float %78, 0.000000e+00, !dbg !528
  br i1 %cmp134, label %cond.true, label %for.cond140.preheader, !dbg !528

cond.true:                                        ; preds = %for.end133
  %conv = fpext float %78 to double, !dbg !528
  %call138 = tail call double @log(double %conv) #8, !dbg !528
  %phitmp = fptrunc double %call138 to float, !dbg !528
  %.pre = load i32* %M, align 4, !dbg !529, !tbaa !327
  br label %for.cond140.preheader, !dbg !528

for.cond140.preheader:                            ; preds = %for.end133, %cond.true
  %79 = phi i32 [ %.pre, %cond.true ], [ %77, %for.end133 ]
  %accum.0.ph = phi float [ %phitmp, %cond.true ], [ -9.999000e+03, %for.end133 ]
  %cmp142605 = icmp slt i32 %79, 1, !dbg !529
  br i1 %cmp142605, label %for.end259, label %for.body144.lr.ph, !dbg !529

for.body144.lr.ph:                                ; preds = %for.cond140.preheader
  %begin = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 26, !dbg !531
  %t167 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 21, !dbg !533
  %tobool174 = icmp eq i32 %viterbi_mode, 0, !dbg !535
  %p1243 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 29, !dbg !537
  %bsc = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 34, !dbg !537
  br label %for.body144, !dbg !529

for.body144:                                      ; preds = %for.inc257.for.body144_crit_edge, %for.body144.lr.ph
  %indvars.iv622 = phi i64 [ %indvars.iv.next623, %for.inc257.for.body144_crit_edge ], [ 1, %for.body144.lr.ph ]
  %accum.0607 = phi float [ %accum.1, %for.inc257.for.body144_crit_edge ], [ %accum.0.ph, %for.body144.lr.ph ]
  %80 = load float** %begin, align 8, !dbg !531, !tbaa !354
  %arrayidx146 = getelementptr inbounds float* %80, i64 %indvars.iv622, !dbg !531
  %81 = load float* %arrayidx146, align 4, !dbg !531, !tbaa !332
  %cmp148 = fcmp ogt float %81, 0.000000e+00, !dbg !531
  br i1 %cmp148, label %cond.true150, label %cond.end157, !dbg !531

cond.true150:                                     ; preds = %for.body144
  %conv147 = fpext float %81 to double, !dbg !531
  %call155 = tail call double @log(double %conv147) #8, !dbg !531
  %phitmp599 = fptrunc double %call155 to float, !dbg !531
  br label %cond.end157, !dbg !531

cond.end157:                                      ; preds = %for.body144, %cond.true150
  %cond158 = phi float [ %phitmp599, %cond.true150 ], [ -9.999000e+03, %for.body144 ]
  tail call void @llvm.dbg.value(metadata !{float %cond158}, i64 0, metadata !147), !dbg !531
  %82 = trunc i64 %indvars.iv622 to i32, !dbg !538
  %cmp160 = icmp sgt i32 %82, 1, !dbg !538
  br i1 %cmp160, label %land.lhs.true, label %if.end237, !dbg !538

land.lhs.true:                                    ; preds = %cond.end157
  %conv162 = fpext float %accum.0607 to double, !dbg !538
  %cmp163 = fcmp ogt float %accum.0607, -9.999000e+03, !dbg !538
  br i1 %cmp163, label %if.then165, label %if.end237, !dbg !538

if.then165:                                       ; preds = %land.lhs.true
  %83 = add nsw i64 %indvars.iv622, -1, !dbg !533
  %84 = load float*** %t167, align 8, !dbg !533, !tbaa !354
  %arrayidx168 = getelementptr inbounds float** %84, i64 %83, !dbg !533
  %85 = load float** %arrayidx168, align 8, !dbg !533, !tbaa !354
  %arrayidx169 = getelementptr inbounds float* %85, i64 5, !dbg !533
  %86 = load float* %arrayidx169, align 4, !dbg !533, !tbaa !332
  %conv170 = fpext float %86 to double, !dbg !533
  %cmp171 = fcmp ogt float %86, 0.000000e+00, !dbg !533
  br i1 %cmp171, label %if.then173, label %if.end214, !dbg !533

if.then173:                                       ; preds = %if.then165
  br i1 %tobool174, label %if.else, label %if.then175, !dbg !535

if.then175:                                       ; preds = %if.then173
  %conv176 = fpext float %cond158 to double, !dbg !535
  %call184 = tail call double @log(double %conv170) #8, !dbg !535
  %add = fadd double %conv162, %call184, !dbg !535
  %cmp185 = fcmp ogt double %conv176, %add, !dbg !535
  br i1 %cmp185, label %cond.end199, label %cond.false189, !dbg !535

cond.false189:                                    ; preds = %if.then175
  %87 = load float*** %t167, align 8, !dbg !535, !tbaa !354
  %arrayidx194 = getelementptr inbounds float** %87, i64 %83, !dbg !535
  %88 = load float** %arrayidx194, align 8, !dbg !535, !tbaa !354
  %arrayidx195 = getelementptr inbounds float* %88, i64 5, !dbg !535
  %89 = load float* %arrayidx195, align 4, !dbg !535, !tbaa !332
  %conv196 = fpext float %89 to double, !dbg !535
  %call197 = tail call double @log(double %conv196) #8, !dbg !535
  %add198 = fadd double %conv162, %call197, !dbg !535
  br label %cond.end199, !dbg !535

cond.end199:                                      ; preds = %if.then175, %cond.false189
  %cond200 = phi double [ %add198, %cond.false189 ], [ %conv176, %if.then175 ], !dbg !535
  %conv201 = fptrunc double %cond200 to float, !dbg !535
  tail call void @llvm.dbg.value(metadata !{float %conv201}, i64 0, metadata !147), !dbg !535
  br label %if.end214, !dbg !535

if.else:                                          ; preds = %if.then173
  %call209 = tail call double @log(double %conv170) #8, !dbg !539
  %add210 = fadd double %conv162, %call209, !dbg !539
  %conv211 = fptrunc double %add210 to float, !dbg !539
  %call212 = tail call float @LogSum(float %cond158, float %conv211) #8, !dbg !539
  tail call void @llvm.dbg.value(metadata !{float %call212}, i64 0, metadata !147), !dbg !539
  br label %if.end214

if.end214:                                        ; preds = %cond.end199, %if.else, %if.then165
  %tbm.0 = phi float [ %conv201, %cond.end199 ], [ %call212, %if.else ], [ %cond158, %if.then165 ]
  %90 = load float*** %t167, align 8, !dbg !540, !tbaa !354
  %arrayidx218 = getelementptr inbounds float** %90, i64 %83, !dbg !540
  %91 = load float** %arrayidx218, align 8, !dbg !540, !tbaa !354
  %arrayidx219 = getelementptr inbounds float* %91, i64 6, !dbg !540
  %92 = load float* %arrayidx219, align 4, !dbg !540, !tbaa !332
  %cmp221 = fcmp ogt float %92, 0.000000e+00, !dbg !540
  br i1 %cmp221, label %cond.true223, label %if.end237, !dbg !540

cond.true223:                                     ; preds = %if.end214
  %conv220 = fpext float %92 to double, !dbg !540
  %call231 = tail call double @log(double %conv220) #8, !dbg !540
  %add232 = fadd double %conv162, %call231, !dbg !540
  %phitmp600 = fptrunc double %add232 to float, !dbg !540
  br label %if.end237, !dbg !540

if.end237:                                        ; preds = %cond.true223, %if.end214, %land.lhs.true, %cond.end157
  %accum.1 = phi float [ %accum.0607, %land.lhs.true ], [ %accum.0607, %cond.end157 ], [ %phitmp600, %cond.true223 ], [ -9.999000e+03, %if.end214 ]
  %tbm.1 = phi float [ %cond158, %land.lhs.true ], [ %cond158, %cond.end157 ], [ %tbm.0, %cond.true223 ], [ %tbm.0, %if.end214 ]
  %cmp239 = fcmp ogt float %tbm.1, -9.999000e+03, !dbg !541
  br i1 %cmp239, label %if.then241, label %if.else252, !dbg !541

if.then241:                                       ; preds = %if.end237
  %conv238 = fpext float %tbm.1 to double, !dbg !541
  %93 = load float* %p1243, align 4, !dbg !537, !tbaa !332
  %conv244 = fpext float %93 to double, !dbg !537
  %call245 = tail call double @log(double %conv244) #8, !dbg !537
  %sub246 = fsub double %conv238, %call245, !dbg !537
  %mul = fmul double %sub246, 0x40968AC7B890D5A6, !dbg !537
  %add247 = fadd double %mul, 5.000000e-01, !dbg !537
  %call248 = tail call double @floor(double %add247) #11, !dbg !537
  %conv249 = fptosi double %call248 to i32, !dbg !537
  %94 = load i32** %bsc, align 8, !dbg !537, !tbaa !354
  %arrayidx251 = getelementptr inbounds i32* %94, i64 %indvars.iv622, !dbg !537
  store i32 %conv249, i32* %arrayidx251, align 4, !dbg !537, !tbaa !327
  br label %for.inc257, !dbg !537

if.else252:                                       ; preds = %if.end237
  %95 = load i32** %bsc, align 8, !dbg !542, !tbaa !354
  %arrayidx255 = getelementptr inbounds i32* %95, i64 %indvars.iv622, !dbg !542
  store i32 -987654321, i32* %arrayidx255, align 4, !dbg !542, !tbaa !327
  br label %for.inc257

for.inc257:                                       ; preds = %if.then241, %if.else252
  %96 = load i32* %M, align 4, !dbg !529, !tbaa !327
  %cmp142 = icmp slt i32 %82, %96, !dbg !529
  br i1 %cmp142, label %for.inc257.for.body144_crit_edge, label %for.end259, !dbg !529

for.inc257.for.body144_crit_edge:                 ; preds = %for.inc257
  %indvars.iv.next623 = add i64 %indvars.iv622, 1, !dbg !529
  br label %for.body144, !dbg !529

for.end259:                                       ; preds = %for.inc257, %for.cond140.preheader
  %.lcssa = phi i32 [ %79, %for.cond140.preheader ], [ %96, %for.inc257 ]
  %idxprom261 = sext i32 %.lcssa to i64, !dbg !543
  %esc = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 35, !dbg !543
  %97 = load i32** %esc, align 8, !dbg !543, !tbaa !354
  %arrayidx262 = getelementptr inbounds i32* %97, i64 %idxprom261, !dbg !543
  store i32 0, i32* %arrayidx262, align 4, !dbg !543, !tbaa !327
  tail call void @llvm.dbg.value(metadata !544, i64 0, metadata !146), !dbg !545
  %98 = load i32* %M, align 4, !dbg !546, !tbaa !327
  %k.3601 = add i32 %98, -1, !dbg !546
  %cmp266602 = icmp sgt i32 %k.3601, 0, !dbg !546
  br i1 %cmp266602, label %for.body268.lr.ph, label %for.end373, !dbg !546

for.body268.lr.ph:                                ; preds = %for.end259
  %end = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 27, !dbg !548
  %t289 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 21, !dbg !550
  %tobool296 = icmp eq i32 %viterbi_mode, 0, !dbg !552
  %99 = sext i32 %k.3601 to i64
  br label %for.body268, !dbg !546

for.body268:                                      ; preds = %cond.end367.for.body268_crit_edge, %for.body268.lr.ph
  %indvars.iv = phi i64 [ %99, %for.body268.lr.ph ], [ %indvars.iv.next, %cond.end367.for.body268_crit_edge ]
  %k.3604 = phi i32 [ %k.3601, %for.body268.lr.ph ], [ %k.3, %cond.end367.for.body268_crit_edge ]
  %accum.2603 = phi float [ 0.000000e+00, %for.body268.lr.ph ], [ %accum.3, %cond.end367.for.body268_crit_edge ]
  %100 = load float** %end, align 8, !dbg !548, !tbaa !354
  %arrayidx270 = getelementptr inbounds float* %100, i64 %indvars.iv, !dbg !548
  %101 = load float* %arrayidx270, align 4, !dbg !548, !tbaa !332
  %cmp272 = fcmp ogt float %101, 0.000000e+00, !dbg !548
  br i1 %cmp272, label %cond.true274, label %cond.end281, !dbg !548

cond.true274:                                     ; preds = %for.body268
  %conv271 = fpext float %101 to double, !dbg !548
  %call279 = tail call double @log(double %conv271) #8, !dbg !548
  %phitmp597 = fptrunc double %call279 to float, !dbg !548
  br label %cond.end281, !dbg !548

cond.end281:                                      ; preds = %for.body268, %cond.true274
  %cond282 = phi float [ %phitmp597, %cond.true274 ], [ -9.999000e+03, %for.body268 ]
  tail call void @llvm.dbg.value(metadata !{float %cond282}, i64 0, metadata !148), !dbg !548
  %conv284 = fpext float %accum.2603 to double, !dbg !554
  %cmp285 = fcmp ogt float %accum.2603, -9.999000e+03, !dbg !554
  br i1 %cmp285, label %if.then287, label %if.end356, !dbg !554

if.then287:                                       ; preds = %cond.end281
  %102 = load float*** %t289, align 8, !dbg !550, !tbaa !354
  %arrayidx290 = getelementptr inbounds float** %102, i64 %indvars.iv, !dbg !550
  %103 = load float** %arrayidx290, align 8, !dbg !550, !tbaa !354
  %arrayidx291 = getelementptr inbounds float* %103, i64 2, !dbg !550
  %104 = load float* %arrayidx291, align 4, !dbg !550, !tbaa !332
  %conv292 = fpext float %104 to double, !dbg !550
  %cmp293 = fcmp ogt float %104, 0.000000e+00, !dbg !550
  br i1 %cmp293, label %if.then295, label %if.end335, !dbg !550

if.then295:                                       ; preds = %if.then287
  br i1 %tobool296, label %if.else323, label %if.then297, !dbg !552

if.then297:                                       ; preds = %if.then295
  %conv298 = fpext float %cond282 to double, !dbg !552
  %call305 = tail call double @log(double %conv292) #8, !dbg !552
  %add306 = fadd double %conv284, %call305, !dbg !552
  %cmp307 = fcmp ogt double %conv298, %add306, !dbg !552
  br i1 %cmp307, label %cond.end320, label %cond.false311, !dbg !552

cond.false311:                                    ; preds = %if.then297
  %105 = load float*** %t289, align 8, !dbg !552, !tbaa !354
  %arrayidx315 = getelementptr inbounds float** %105, i64 %indvars.iv, !dbg !552
  %106 = load float** %arrayidx315, align 8, !dbg !552, !tbaa !354
  %arrayidx316 = getelementptr inbounds float* %106, i64 2, !dbg !552
  %107 = load float* %arrayidx316, align 4, !dbg !552, !tbaa !332
  %conv317 = fpext float %107 to double, !dbg !552
  %call318 = tail call double @log(double %conv317) #8, !dbg !552
  %add319 = fadd double %conv284, %call318, !dbg !552
  br label %cond.end320, !dbg !552

cond.end320:                                      ; preds = %if.then297, %cond.false311
  %cond321 = phi double [ %add319, %cond.false311 ], [ %conv298, %if.then297 ], !dbg !552
  %conv322 = fptrunc double %cond321 to float, !dbg !552
  tail call void @llvm.dbg.value(metadata !{float %conv322}, i64 0, metadata !148), !dbg !552
  br label %if.end335, !dbg !552

if.else323:                                       ; preds = %if.then295
  %call330 = tail call double @log(double %conv292) #8, !dbg !555
  %add331 = fadd double %conv284, %call330, !dbg !555
  %conv332 = fptrunc double %add331 to float, !dbg !555
  %call333 = tail call float @LogSum(float %cond282, float %conv332) #8, !dbg !555
  tail call void @llvm.dbg.value(metadata !{float %call333}, i64 0, metadata !148), !dbg !555
  br label %if.end335

if.end335:                                        ; preds = %cond.end320, %if.else323, %if.then287
  %tme.0 = phi float [ %conv322, %cond.end320 ], [ %call333, %if.else323 ], [ %cond282, %if.then287 ]
  %108 = load float*** %t289, align 8, !dbg !556, !tbaa !354
  %arrayidx338 = getelementptr inbounds float** %108, i64 %indvars.iv, !dbg !556
  %109 = load float** %arrayidx338, align 8, !dbg !556, !tbaa !354
  %arrayidx339 = getelementptr inbounds float* %109, i64 6, !dbg !556
  %110 = load float* %arrayidx339, align 4, !dbg !556, !tbaa !332
  %cmp341 = fcmp ogt float %110, 0.000000e+00, !dbg !556
  br i1 %cmp341, label %cond.true343, label %if.end356, !dbg !556

cond.true343:                                     ; preds = %if.end335
  %conv340 = fpext float %110 to double, !dbg !556
  %call350 = tail call double @log(double %conv340) #8, !dbg !556
  %add351 = fadd double %conv284, %call350, !dbg !556
  %phitmp598 = fptrunc double %add351 to float, !dbg !556
  br label %if.end356, !dbg !556

if.end356:                                        ; preds = %cond.true343, %if.end335, %cond.end281
  %accum.3 = phi float [ %accum.2603, %cond.end281 ], [ %phitmp598, %cond.true343 ], [ -9.999000e+03, %if.end335 ]
  %tme.1 = phi float [ %cond282, %cond.end281 ], [ %tme.0, %cond.true343 ], [ %tme.0, %if.end335 ]
  %cmp358 = fcmp ogt float %tme.1, -9.999000e+03, !dbg !557
  br i1 %cmp358, label %cond.true360, label %cond.end367, !dbg !557

cond.true360:                                     ; preds = %if.end356
  %conv357 = fpext float %tme.1 to double, !dbg !557
  %mul362 = fmul double %conv357, 0x40968AC7B890D5A6, !dbg !557
  %add363 = fadd double %mul362, 5.000000e-01, !dbg !557
  %call364 = tail call double @floor(double %add363) #11, !dbg !557
  %conv365 = fptosi double %call364 to i32, !dbg !557
  br label %cond.end367, !dbg !557

cond.end367:                                      ; preds = %if.end356, %cond.true360
  %cond368 = phi i32 [ %conv365, %cond.true360 ], [ -987654321, %if.end356 ], !dbg !557
  %111 = load i32** %esc, align 8, !dbg !557, !tbaa !354
  %arrayidx371 = getelementptr inbounds i32* %111, i64 %indvars.iv, !dbg !557
  store i32 %cond368, i32* %arrayidx371, align 4, !dbg !557, !tbaa !327
  %k.3 = add nsw i32 %k.3604, -1, !dbg !546
  %cmp266 = icmp sgt i32 %k.3, 0, !dbg !546
  br i1 %cmp266, label %cond.end367.for.body268_crit_edge, label %for.end373, !dbg !546

cond.end367.for.body268_crit_edge:                ; preds = %cond.end367
  %indvars.iv.next = add i64 %indvars.iv, -1, !dbg !546
  br label %for.body268, !dbg !546

for.end373:                                       ; preds = %cond.end367, %for.end259
  %arrayidx375 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 25, i64 0, i64 1, !dbg !558
  %112 = load float* %arrayidx375, align 4, !dbg !558, !tbaa !332
  %p1376 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 29, !dbg !558
  %113 = load float* %p1376, align 4, !dbg !558, !tbaa !332
  %call377 = tail call i32 @Prob2Score(float %112, float %113) #8, !dbg !558
  %arrayidx379 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 33, i64 0, i64 1, !dbg !558
  store i32 %call377, i32* %arrayidx379, align 4, !dbg !558, !tbaa !327
  %arrayidx382 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 25, i64 0, i64 0, !dbg !559
  %114 = load float* %arrayidx382, align 4, !dbg !559, !tbaa !332
  %call383 = tail call i32 @Prob2Score(float %114, float 1.000000e+00) #8, !dbg !559
  %arrayidx386 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 33, i64 0, i64 0, !dbg !559
  store i32 %call383, i32* %arrayidx386, align 4, !dbg !559, !tbaa !327
  %arrayidx389 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 25, i64 1, i64 1, !dbg !560
  %115 = load float* %arrayidx389, align 4, !dbg !560, !tbaa !332
  %call390 = tail call i32 @Prob2Score(float %115, float 1.000000e+00) #8, !dbg !560
  %arrayidx393 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 33, i64 1, i64 1, !dbg !560
  store i32 %call390, i32* %arrayidx393, align 4, !dbg !560, !tbaa !327
  %arrayidx396 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 25, i64 1, i64 0, !dbg !561
  %116 = load float* %arrayidx396, align 4, !dbg !561, !tbaa !332
  %call397 = tail call i32 @Prob2Score(float %116, float 1.000000e+00) #8, !dbg !561
  %arrayidx400 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 33, i64 1, i64 0, !dbg !561
  store i32 %call397, i32* %arrayidx400, align 4, !dbg !561, !tbaa !327
  %arrayidx403 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 25, i64 2, i64 1, !dbg !562
  %117 = load float* %arrayidx403, align 4, !dbg !562, !tbaa !332
  %118 = load float* %p1376, align 4, !dbg !562, !tbaa !332
  %call405 = tail call i32 @Prob2Score(float %117, float %118) #8, !dbg !562
  %arrayidx408 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 33, i64 2, i64 1, !dbg !562
  store i32 %call405, i32* %arrayidx408, align 4, !dbg !562, !tbaa !327
  %arrayidx411 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 25, i64 2, i64 0, !dbg !563
  %119 = load float* %arrayidx411, align 4, !dbg !563, !tbaa !332
  %120 = load float* %p1376, align 4, !dbg !563, !tbaa !332
  %conv415 = fsub float 1.000000e+00, %120, !dbg !563
  %call416 = tail call i32 @Prob2Score(float %119, float %conv415) #8, !dbg !563
  %arrayidx419 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 33, i64 2, i64 0, !dbg !563
  store i32 %call416, i32* %arrayidx419, align 4, !dbg !563, !tbaa !327
  %arrayidx422 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 25, i64 3, i64 1, !dbg !564
  %121 = load float* %arrayidx422, align 4, !dbg !564, !tbaa !332
  %122 = load float* %p1376, align 4, !dbg !564, !tbaa !332
  %call424 = tail call i32 @Prob2Score(float %121, float %122) #8, !dbg !564
  %arrayidx427 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 33, i64 3, i64 1, !dbg !564
  store i32 %call424, i32* %arrayidx427, align 4, !dbg !564, !tbaa !327
  %arrayidx430 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 25, i64 3, i64 0, !dbg !565
  %123 = load float* %arrayidx430, align 4, !dbg !565, !tbaa !332
  %call431 = tail call i32 @Prob2Score(float %123, float 1.000000e+00) #8, !dbg !565
  %arrayidx434 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 33, i64 3, i64 0, !dbg !565
  store i32 %call431, i32* %arrayidx434, align 4, !dbg !565, !tbaa !327
  %124 = load i32* %flags, align 4, !dbg !566, !tbaa !327
  %or = or i32 %124, 1, !dbg !566
  store i32 %or, i32* %flags, align 4, !dbg !566, !tbaa !327
  br label %return, !dbg !566

return:                                           ; preds = %entry, %for.end373
  ret void, !dbg !566
}

; Function Attrs: optsize
declare i32 @Prob2Score(float, float) #2

; Function Attrs: nounwind optsize uwtable
define i32 @DegenerateSymbolScore(float* nocapture %p, float* nocapture %null, i32 %ambig) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{float* %p}, i64 0, metadata !278), !dbg !567
  tail call void @llvm.dbg.value(metadata !{float* %null}, i64 0, metadata !279), !dbg !567
  tail call void @llvm.dbg.value(metadata !{i32 %ambig}, i64 0, metadata !280), !dbg !567
  tail call void @llvm.dbg.value(metadata !544, i64 0, metadata !282), !dbg !568
  tail call void @llvm.dbg.value(metadata !544, i64 0, metadata !283), !dbg !569
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !281), !dbg !570
  %0 = load i32* @Alphabet_size, align 4, !dbg !570, !tbaa !327
  %cmp42 = icmp sgt i32 %0, 0, !dbg !570
  br i1 %cmp42, label %for.body.lr.ph, label %for.end, !dbg !570

for.body.lr.ph:                                   ; preds = %entry
  %idxprom1 = sext i32 %ambig to i64, !dbg !572
  br label %for.body, !dbg !570

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %1 = phi i32 [ %0, %for.body.lr.ph ], [ %6, %for.inc ]
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.inc ]
  %denom.045 = phi float [ 0.000000e+00, %for.body.lr.ph ], [ %denom.1, %for.inc ]
  %numer.044 = phi float [ 0.000000e+00, %for.body.lr.ph ], [ %numer.1, %for.inc ]
  %arrayidx2 = getelementptr inbounds [24 x [20 x i8]]* @Degenerate, i64 0, i64 %idxprom1, i64 %indvars.iv, !dbg !572
  %2 = load i8* %arrayidx2, align 1, !dbg !572, !tbaa !328
  %tobool = icmp eq i8 %2, 0, !dbg !572
  br i1 %tobool, label %for.inc, label %if.then, !dbg !572

if.then:                                          ; preds = %for.body
  %arrayidx4 = getelementptr inbounds float* %null, i64 %indvars.iv, !dbg !574
  %3 = load float* %arrayidx4, align 4, !dbg !574, !tbaa !332
  %conv = fpext float %3 to double, !dbg !574
  %arrayidx6 = getelementptr inbounds float* %p, i64 %indvars.iv, !dbg !574
  %4 = load float* %arrayidx6, align 4, !dbg !574, !tbaa !332
  %div = fdiv float %4, %3, !dbg !574
  %cmp9 = fcmp ogt float %div, 0.000000e+00, !dbg !574
  br i1 %cmp9, label %cond.true, label %cond.end, !dbg !574

cond.true:                                        ; preds = %if.then
  %conv16 = fpext float %div to double, !dbg !574
  %call = tail call double @log(double %conv16) #8, !dbg !574
  %mul = fmul double %call, 0x3FF7154764EE6C2F, !dbg !574
  %.pre47 = load float* %arrayidx4, align 4, !dbg !576, !tbaa !332
  %.pre.pre = load i32* @Alphabet_size, align 4, !dbg !570, !tbaa !327
  br label %cond.end, !dbg !574

cond.end:                                         ; preds = %if.then, %cond.true
  %.pre = phi i32 [ %.pre.pre, %cond.true ], [ %1, %if.then ], !dbg !574
  %5 = phi float [ %.pre47, %cond.true ], [ %3, %if.then ]
  %cond = phi double [ %mul, %cond.true ], [ -9.999000e+03, %if.then ], !dbg !574
  %mul17 = fmul double %conv, %cond, !dbg !574
  %conv18 = fpext float %numer.044 to double, !dbg !574
  %add = fadd double %conv18, %mul17, !dbg !574
  %conv19 = fptrunc double %add to float, !dbg !574
  tail call void @llvm.dbg.value(metadata !{float %conv19}, i64 0, metadata !282), !dbg !574
  %add22 = fadd float %denom.045, %5, !dbg !576
  tail call void @llvm.dbg.value(metadata !{float %add22}, i64 0, metadata !283), !dbg !576
  br label %for.inc, !dbg !577

for.inc:                                          ; preds = %for.body, %cond.end
  %6 = phi i32 [ %.pre, %cond.end ], [ %1, %for.body ], !dbg !570
  %numer.1 = phi float [ %conv19, %cond.end ], [ %numer.044, %for.body ]
  %denom.1 = phi float [ %add22, %cond.end ], [ %denom.045, %for.body ]
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !570
  %7 = trunc i64 %indvars.iv.next to i32, !dbg !570
  %cmp = icmp slt i32 %7, %6, !dbg !570
  br i1 %cmp, label %for.body, label %for.end, !dbg !570

for.end:                                          ; preds = %for.inc, %entry
  %denom.0.lcssa = phi float [ 0.000000e+00, %entry ], [ %denom.1, %for.inc ]
  %numer.0.lcssa = phi float [ 0.000000e+00, %entry ], [ %numer.1, %for.inc ]
  %conv23 = fpext float %numer.0.lcssa to double, !dbg !578
  %mul24 = fmul double %conv23, 1.000000e+03, !dbg !578
  %conv25 = fpext float %denom.0.lcssa to double, !dbg !578
  %div26 = fdiv double %mul24, %conv25, !dbg !578
  %conv27 = fptosi double %div26 to i32, !dbg !578
  ret i32 %conv27, !dbg !578
}

; Function Attrs: nounwind optsize
declare double @log(double) #3

; Function Attrs: optsize
declare float @LogSum(float, float) #2

; Function Attrs: nounwind optsize readnone
declare double @floor(double) #5

; Function Attrs: nounwind optsize uwtable
define void @Plan7Renormalize(%struct.plan7_s* %hmm) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.plan7_s* %hmm}, i64 0, metadata !151), !dbg !579
  tail call void @llvm.dbg.value(metadata !373, i64 0, metadata !152), !dbg !580
  %M = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 20, !dbg !580
  %0 = load i32* %M, align 4, !dbg !580, !tbaa !327
  %cmp111 = icmp slt i32 %0, 1, !dbg !580
  br i1 %cmp111, label %for.end9, label %for.body.lr.ph, !dbg !580

for.body.lr.ph:                                   ; preds = %entry
  %mat = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 22, !dbg !582
  br label %for.body, !dbg !580

for.cond1.preheader:                              ; preds = %for.body
  %cmp3109 = icmp sgt i32 %4, 1, !dbg !583
  br i1 %cmp3109, label %for.body4.lr.ph, label %for.end9, !dbg !583

for.body4.lr.ph:                                  ; preds = %for.cond1.preheader
  %ins = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 23, !dbg !585
  br label %for.body4, !dbg !583

for.body:                                         ; preds = %for.body, %for.body.lr.ph
  %indvars.iv119 = phi i64 [ %indvars.iv.next120, %for.body ], [ 1, %for.body.lr.ph ]
  %1 = load float*** %mat, align 8, !dbg !582, !tbaa !354
  %arrayidx = getelementptr inbounds float** %1, i64 %indvars.iv119, !dbg !582
  %2 = load float** %arrayidx, align 8, !dbg !582, !tbaa !354
  %3 = load i32* @Alphabet_size, align 4, !dbg !582, !tbaa !327
  tail call void @FNorm(float* %2, i32 %3) #8, !dbg !582
  %indvars.iv.next120 = add i64 %indvars.iv119, 1, !dbg !580
  %4 = load i32* %M, align 4, !dbg !580, !tbaa !327
  %5 = trunc i64 %indvars.iv119 to i32, !dbg !580
  %cmp = icmp slt i32 %5, %4, !dbg !580
  br i1 %cmp, label %for.body, label %for.cond1.preheader, !dbg !580

for.body4:                                        ; preds = %for.body4.lr.ph, %for.body4
  %indvars.iv117 = phi i64 [ 1, %for.body4.lr.ph ], [ %indvars.iv.next118, %for.body4 ]
  %6 = load float*** %ins, align 8, !dbg !585, !tbaa !354
  %arrayidx6 = getelementptr inbounds float** %6, i64 %indvars.iv117, !dbg !585
  %7 = load float** %arrayidx6, align 8, !dbg !585, !tbaa !354
  %8 = load i32* @Alphabet_size, align 4, !dbg !585, !tbaa !327
  tail call void @FNorm(float* %7, i32 %8) #8, !dbg !585
  %indvars.iv.next118 = add i64 %indvars.iv117, 1, !dbg !583
  %9 = load i32* %M, align 4, !dbg !583, !tbaa !327
  %10 = trunc i64 %indvars.iv.next118 to i32, !dbg !583
  %cmp3 = icmp slt i32 %10, %9, !dbg !583
  br i1 %cmp3, label %for.body4, label %for.end9, !dbg !583

for.end9:                                         ; preds = %entry, %for.body4, %for.cond1.preheader
  %.lcssa = phi i32 [ %4, %for.cond1.preheader ], [ %9, %for.body4 ], [ %0, %entry ]
  %begin = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 26, !dbg !586
  %11 = load float** %begin, align 8, !dbg !586, !tbaa !354
  %add.ptr = getelementptr inbounds float* %11, i64 1, !dbg !586
  %call = tail call float @FSum(float* %add.ptr, i32 %.lcssa) #8, !dbg !586
  %tbd1 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 24, !dbg !586
  %12 = load float* %tbd1, align 4, !dbg !586, !tbaa !332
  %add = fadd float %call, %12, !dbg !586
  tail call void @llvm.dbg.value(metadata !{float %add}, i64 0, metadata !154), !dbg !586
  %13 = load float** %begin, align 8, !dbg !587, !tbaa !354
  %add.ptr12 = getelementptr inbounds float* %13, i64 1, !dbg !587
  %14 = load i32* %M, align 4, !dbg !587, !tbaa !327
  %conv14 = fdiv float 1.000000e+00, %add, !dbg !587
  tail call void @FScale(float* %add.ptr12, i32 %14, float %conv14) #8, !dbg !587
  %15 = load float* %tbd1, align 4, !dbg !588, !tbaa !332
  %div16 = fdiv float %15, %add, !dbg !588
  store float %div16, float* %tbd1, align 4, !dbg !588, !tbaa !332
  tail call void @llvm.dbg.value(metadata !373, i64 0, metadata !152), !dbg !589
  %16 = load i32* %M, align 4, !dbg !589, !tbaa !327
  %cmp19107 = icmp sgt i32 %16, 1, !dbg !589
  br i1 %cmp19107, label %for.body21.lr.ph, label %for.end48, !dbg !589

for.body21.lr.ph:                                 ; preds = %for.end9
  %t = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 21, !dbg !591
  %end = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 27, !dbg !591
  br label %for.body21, !dbg !589

for.body21:                                       ; preds = %for.body21.lr.ph, %for.body21
  %indvars.iv114 = phi i64 [ 1, %for.body21.lr.ph ], [ %indvars.iv.next115, %for.body21 ]
  %17 = load float*** %t, align 8, !dbg !591, !tbaa !354
  %arrayidx23 = getelementptr inbounds float** %17, i64 %indvars.iv114, !dbg !591
  %18 = load float** %arrayidx23, align 8, !dbg !591, !tbaa !354
  %call24 = tail call float @FSum(float* %18, i32 3) #8, !dbg !591
  %19 = load float** %end, align 8, !dbg !591, !tbaa !354
  %arrayidx26 = getelementptr inbounds float* %19, i64 %indvars.iv114, !dbg !591
  %20 = load float* %arrayidx26, align 4, !dbg !591, !tbaa !332
  %add27 = fadd float %call24, %20, !dbg !591
  tail call void @llvm.dbg.value(metadata !{float %add27}, i64 0, metadata !154), !dbg !591
  %21 = load float*** %t, align 8, !dbg !593, !tbaa !354
  %arrayidx30 = getelementptr inbounds float** %21, i64 %indvars.iv114, !dbg !593
  %22 = load float** %arrayidx30, align 8, !dbg !593, !tbaa !354
  %conv33 = fdiv float 1.000000e+00, %add27, !dbg !593
  tail call void @FScale(float* %22, i32 3, float %conv33) #8, !dbg !593
  %23 = load float** %end, align 8, !dbg !594, !tbaa !354
  %arrayidx36 = getelementptr inbounds float* %23, i64 %indvars.iv114, !dbg !594
  %24 = load float* %arrayidx36, align 4, !dbg !594, !tbaa !332
  %div37 = fdiv float %24, %add27, !dbg !594
  store float %div37, float* %arrayidx36, align 4, !dbg !594, !tbaa !332
  %25 = load float*** %t, align 8, !dbg !595, !tbaa !354
  %arrayidx40 = getelementptr inbounds float** %25, i64 %indvars.iv114, !dbg !595
  %26 = load float** %arrayidx40, align 8, !dbg !595, !tbaa !354
  %add.ptr41 = getelementptr inbounds float* %26, i64 3, !dbg !595
  tail call void @FNorm(float* %add.ptr41, i32 2) #8, !dbg !595
  %27 = load float*** %t, align 8, !dbg !596, !tbaa !354
  %arrayidx44 = getelementptr inbounds float** %27, i64 %indvars.iv114, !dbg !596
  %28 = load float** %arrayidx44, align 8, !dbg !596, !tbaa !354
  %add.ptr45 = getelementptr inbounds float* %28, i64 5, !dbg !596
  tail call void @FNorm(float* %add.ptr45, i32 2) #8, !dbg !596
  %indvars.iv.next115 = add i64 %indvars.iv114, 1, !dbg !589
  %29 = load i32* %M, align 4, !dbg !589, !tbaa !327
  %30 = trunc i64 %indvars.iv.next115 to i32, !dbg !589
  %cmp19 = icmp slt i32 %30, %29, !dbg !589
  br i1 %cmp19, label %for.body21, label %for.end48, !dbg !589

for.end48:                                        ; preds = %for.body21, %for.end9
  %arraydecay = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 28, i64 0, !dbg !597
  %31 = load i32* @Alphabet_size, align 4, !dbg !597, !tbaa !327
  tail call void @FNorm(float* %arraydecay, i32 %31) #8, !dbg !597
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !153), !dbg !598
  br label %for.body52, !dbg !598

for.body52:                                       ; preds = %for.body52, %for.end48
  %indvars.iv = phi i64 [ 0, %for.end48 ], [ %indvars.iv.next, %for.body52 ]
  %arraydecay55 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 25, i64 %indvars.iv, i64 0, !dbg !600
  tail call void @FNorm(float* %arraydecay55, i32 2) #8, !dbg !600
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !598
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !598
  %exitcond = icmp eq i32 %lftr.wideiv, 4, !dbg !598
  br i1 %exitcond, label %for.end58, label %for.body52, !dbg !598

for.end58:                                        ; preds = %for.body52
  %t59 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 21, !dbg !601
  %32 = load float*** %t59, align 8, !dbg !601, !tbaa !354
  %33 = load float** %32, align 8, !dbg !601, !tbaa !354
  %arrayidx61 = getelementptr inbounds float* %33, i64 6, !dbg !601
  store float 0.000000e+00, float* %arrayidx61, align 4, !dbg !601, !tbaa !332
  %arrayidx64 = getelementptr inbounds float* %33, i64 5, !dbg !601
  store float 0.000000e+00, float* %arrayidx64, align 4, !dbg !601, !tbaa !332
  %flags = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 47, !dbg !602
  %34 = load i32* %flags, align 4, !dbg !602, !tbaa !327
  %and = and i32 %34, -34, !dbg !602
  %or = or i32 %and, 32, !dbg !603
  store i32 %or, i32* %flags, align 4, !dbg !603, !tbaa !327
  ret void, !dbg !604
}

; Function Attrs: optsize
declare void @FNorm(float*, i32) #2

; Function Attrs: optsize
declare float @FSum(float*, i32) #2

; Function Attrs: optsize
declare void @FScale(float*, i32, float) #2

; Function Attrs: nounwind optsize uwtable
define void @Plan7RenormalizeExits(%struct.plan7_s* nocapture %hmm) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.plan7_s* %hmm}, i64 0, metadata !157), !dbg !605
  tail call void @llvm.dbg.value(metadata !373, i64 0, metadata !158), !dbg !606
  %M = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 20, !dbg !606
  %0 = load i32* %M, align 4, !dbg !606, !tbaa !327
  %cmp15 = icmp sgt i32 %0, 1, !dbg !606
  br i1 %cmp15, label %for.body.lr.ph, label %for.end, !dbg !606

for.body.lr.ph:                                   ; preds = %entry
  %t = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 21, !dbg !608
  %end = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 27, !dbg !610
  br label %for.body, !dbg !606

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %indvars.iv = phi i64 [ 1, %for.body.lr.ph ], [ %indvars.iv.next, %for.body ]
  %1 = load float*** %t, align 8, !dbg !608, !tbaa !354
  %arrayidx = getelementptr inbounds float** %1, i64 %indvars.iv, !dbg !608
  %2 = load float** %arrayidx, align 8, !dbg !608, !tbaa !354
  %call = tail call float @FSum(float* %2, i32 3) #8, !dbg !608
  tail call void @llvm.dbg.value(metadata !{float %call}, i64 0, metadata !159), !dbg !608
  %3 = load float*** %t, align 8, !dbg !610, !tbaa !354
  %arrayidx3 = getelementptr inbounds float** %3, i64 %indvars.iv, !dbg !610
  %4 = load float** %arrayidx3, align 8, !dbg !610, !tbaa !354
  %5 = load float** %end, align 8, !dbg !610, !tbaa !354
  %arrayidx5 = getelementptr inbounds float* %5, i64 %indvars.iv, !dbg !610
  %6 = load float* %arrayidx5, align 4, !dbg !610, !tbaa !332
  %mul = fmul float %call, %6, !dbg !610
  %add = fadd float %call, %mul, !dbg !610
  %conv6 = fdiv float 1.000000e+00, %add, !dbg !610
  tail call void @FScale(float* %4, i32 3, float %conv6) #8, !dbg !610
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !606
  %7 = load i32* %M, align 4, !dbg !606, !tbaa !327
  %8 = trunc i64 %indvars.iv.next to i32, !dbg !606
  %cmp = icmp slt i32 %8, %7, !dbg !606
  br i1 %cmp, label %for.body, label %for.end, !dbg !606

for.end:                                          ; preds = %for.body, %entry
  ret void, !dbg !611
}

; Function Attrs: nounwind optsize uwtable
define void @Plan7NakedConfig(%struct.plan7_s* nocapture %hmm) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.plan7_s* %hmm}, i64 0, metadata !162), !dbg !612
  %arrayidx1 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 25, i64 0, i64 0, !dbg !613
  store float 1.000000e+00, float* %arrayidx1, align 4, !dbg !613, !tbaa !332
  %arrayidx4 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 25, i64 0, i64 1, !dbg !614
  store float 0.000000e+00, float* %arrayidx4, align 4, !dbg !614, !tbaa !332
  %arrayidx7 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 25, i64 1, i64 0, !dbg !615
  store float 1.000000e+00, float* %arrayidx7, align 4, !dbg !615, !tbaa !332
  %arrayidx10 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 25, i64 1, i64 1, !dbg !616
  store float 0.000000e+00, float* %arrayidx10, align 4, !dbg !616, !tbaa !332
  %arrayidx13 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 25, i64 2, i64 0, !dbg !617
  store float 1.000000e+00, float* %arrayidx13, align 4, !dbg !617, !tbaa !332
  %arrayidx16 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 25, i64 2, i64 1, !dbg !618
  store float 0.000000e+00, float* %arrayidx16, align 4, !dbg !618, !tbaa !332
  %arrayidx19 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 25, i64 3, i64 0, !dbg !619
  store float 0.000000e+00, float* %arrayidx19, align 4, !dbg !619, !tbaa !332
  %arrayidx22 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 25, i64 3, i64 1, !dbg !620
  store float 1.000000e+00, float* %arrayidx22, align 4, !dbg !620, !tbaa !332
  %begin = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 26, !dbg !621
  %0 = load float** %begin, align 8, !dbg !621, !tbaa !354
  %add.ptr = getelementptr inbounds float* %0, i64 2, !dbg !621
  %M = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 20, !dbg !621
  %1 = load i32* %M, align 4, !dbg !621, !tbaa !327
  %sub = add nsw i32 %1, -1, !dbg !621
  tail call void @FSet(float* %add.ptr, i32 %sub, float 0.000000e+00) #8, !dbg !621
  %tbd1 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 24, !dbg !622
  %2 = load float* %tbd1, align 4, !dbg !622, !tbaa !332
  %conv24 = fsub float 1.000000e+00, %2, !dbg !622
  %3 = load float** %begin, align 8, !dbg !622, !tbaa !354
  %arrayidx26 = getelementptr inbounds float* %3, i64 1, !dbg !622
  store float %conv24, float* %arrayidx26, align 4, !dbg !622, !tbaa !332
  %end = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 27, !dbg !623
  %4 = load float** %end, align 8, !dbg !623, !tbaa !354
  %add.ptr27 = getelementptr inbounds float* %4, i64 1, !dbg !623
  %5 = load i32* %M, align 4, !dbg !623, !tbaa !327
  %sub29 = add nsw i32 %5, -1, !dbg !623
  tail call void @FSet(float* %add.ptr27, i32 %sub29, float 0.000000e+00) #8, !dbg !623
  %6 = load i32* %M, align 4, !dbg !624, !tbaa !327
  %idxprom = sext i32 %6 to i64, !dbg !624
  %7 = load float** %end, align 8, !dbg !624, !tbaa !354
  %arrayidx32 = getelementptr inbounds float* %7, i64 %idxprom, !dbg !624
  store float 1.000000e+00, float* %arrayidx32, align 4, !dbg !624, !tbaa !332
  tail call void @Plan7RenormalizeExits(%struct.plan7_s* %hmm) #9, !dbg !625
  %flags = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 47, !dbg !626
  %8 = load i32* %flags, align 4, !dbg !626, !tbaa !327
  %and = and i32 %8, -2, !dbg !626
  store i32 %and, i32* %flags, align 4, !dbg !626, !tbaa !327
  ret void, !dbg !627
}

; Function Attrs: nounwind optsize uwtable
define void @Plan7GlobalConfig(%struct.plan7_s* nocapture %hmm) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.plan7_s* %hmm}, i64 0, metadata !165), !dbg !628
  %p1 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 29, !dbg !629
  %0 = load float* %p1, align 4, !dbg !629, !tbaa !332
  %conv1 = fsub float 1.000000e+00, %0, !dbg !629
  %arrayidx2 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 25, i64 0, i64 0, !dbg !629
  store float %conv1, float* %arrayidx2, align 4, !dbg !629, !tbaa !332
  %arrayidx6 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 25, i64 0, i64 1, !dbg !630
  store float %0, float* %arrayidx6, align 4, !dbg !630, !tbaa !332
  %arrayidx9 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 25, i64 1, i64 0, !dbg !631
  store float 1.000000e+00, float* %arrayidx9, align 4, !dbg !631, !tbaa !332
  %arrayidx12 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 25, i64 1, i64 1, !dbg !632
  store float 0.000000e+00, float* %arrayidx12, align 4, !dbg !632, !tbaa !332
  %arrayidx19 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 25, i64 2, i64 0, !dbg !633
  store float %conv1, float* %arrayidx19, align 4, !dbg !633, !tbaa !332
  %arrayidx23 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 25, i64 2, i64 1, !dbg !634
  store float %0, float* %arrayidx23, align 4, !dbg !634, !tbaa !332
  %arrayidx26 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 25, i64 3, i64 0, !dbg !635
  store float 0.000000e+00, float* %arrayidx26, align 4, !dbg !635, !tbaa !332
  %arrayidx29 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 25, i64 3, i64 1, !dbg !636
  store float 1.000000e+00, float* %arrayidx29, align 4, !dbg !636, !tbaa !332
  %begin = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 26, !dbg !637
  %1 = load float** %begin, align 8, !dbg !637, !tbaa !354
  %add.ptr = getelementptr inbounds float* %1, i64 2, !dbg !637
  %M = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 20, !dbg !637
  %2 = load i32* %M, align 4, !dbg !637, !tbaa !327
  %sub30 = add nsw i32 %2, -1, !dbg !637
  tail call void @FSet(float* %add.ptr, i32 %sub30, float 0.000000e+00) #8, !dbg !637
  %tbd1 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 24, !dbg !638
  %3 = load float* %tbd1, align 4, !dbg !638, !tbaa !332
  %conv33 = fsub float 1.000000e+00, %3, !dbg !638
  %4 = load float** %begin, align 8, !dbg !638, !tbaa !354
  %arrayidx35 = getelementptr inbounds float* %4, i64 1, !dbg !638
  store float %conv33, float* %arrayidx35, align 4, !dbg !638, !tbaa !332
  %end = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 27, !dbg !639
  %5 = load float** %end, align 8, !dbg !639, !tbaa !354
  %add.ptr36 = getelementptr inbounds float* %5, i64 1, !dbg !639
  %6 = load i32* %M, align 4, !dbg !639, !tbaa !327
  %sub38 = add nsw i32 %6, -1, !dbg !639
  tail call void @FSet(float* %add.ptr36, i32 %sub38, float 0.000000e+00) #8, !dbg !639
  %7 = load i32* %M, align 4, !dbg !640, !tbaa !327
  %idxprom = sext i32 %7 to i64, !dbg !640
  %8 = load float** %end, align 8, !dbg !640, !tbaa !354
  %arrayidx41 = getelementptr inbounds float* %8, i64 %idxprom, !dbg !640
  store float 1.000000e+00, float* %arrayidx41, align 4, !dbg !640, !tbaa !332
  tail call void @Plan7RenormalizeExits(%struct.plan7_s* %hmm) #9, !dbg !641
  %flags = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 47, !dbg !642
  %9 = load i32* %flags, align 4, !dbg !642, !tbaa !327
  %and = and i32 %9, -2, !dbg !642
  store i32 %and, i32* %flags, align 4, !dbg !642, !tbaa !327
  ret void, !dbg !643
}

; Function Attrs: nounwind optsize uwtable
define void @Plan7LSConfig(%struct.plan7_s* nocapture %hmm) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.plan7_s* %hmm}, i64 0, metadata !168), !dbg !644
  %p1 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 29, !dbg !645
  %0 = load float* %p1, align 4, !dbg !645, !tbaa !332
  %conv1 = fsub float 1.000000e+00, %0, !dbg !645
  %arrayidx2 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 25, i64 0, i64 0, !dbg !645
  store float %conv1, float* %arrayidx2, align 4, !dbg !645, !tbaa !332
  %arrayidx6 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 25, i64 0, i64 1, !dbg !646
  store float %0, float* %arrayidx6, align 4, !dbg !646, !tbaa !332
  %arrayidx9 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 25, i64 1, i64 0, !dbg !647
  store float 5.000000e-01, float* %arrayidx9, align 4, !dbg !647, !tbaa !332
  %arrayidx12 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 25, i64 1, i64 1, !dbg !648
  store float 5.000000e-01, float* %arrayidx12, align 4, !dbg !648, !tbaa !332
  %arrayidx19 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 25, i64 2, i64 0, !dbg !649
  store float %conv1, float* %arrayidx19, align 4, !dbg !649, !tbaa !332
  %arrayidx23 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 25, i64 2, i64 1, !dbg !650
  store float %0, float* %arrayidx23, align 4, !dbg !650, !tbaa !332
  %arrayidx30 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 25, i64 3, i64 0, !dbg !651
  store float %conv1, float* %arrayidx30, align 4, !dbg !651, !tbaa !332
  %arrayidx34 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 25, i64 3, i64 1, !dbg !652
  store float %0, float* %arrayidx34, align 4, !dbg !652, !tbaa !332
  %begin = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 26, !dbg !653
  %1 = load float** %begin, align 8, !dbg !653, !tbaa !354
  %add.ptr = getelementptr inbounds float* %1, i64 2, !dbg !653
  %M = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 20, !dbg !653
  %2 = load i32* %M, align 4, !dbg !653, !tbaa !327
  %sub35 = add nsw i32 %2, -1, !dbg !653
  tail call void @FSet(float* %add.ptr, i32 %sub35, float 0.000000e+00) #8, !dbg !653
  %tbd1 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 24, !dbg !654
  %3 = load float* %tbd1, align 4, !dbg !654, !tbaa !332
  %conv38 = fsub float 1.000000e+00, %3, !dbg !654
  %4 = load float** %begin, align 8, !dbg !654, !tbaa !354
  %arrayidx40 = getelementptr inbounds float* %4, i64 1, !dbg !654
  store float %conv38, float* %arrayidx40, align 4, !dbg !654, !tbaa !332
  %end = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 27, !dbg !655
  %5 = load float** %end, align 8, !dbg !655, !tbaa !354
  %add.ptr41 = getelementptr inbounds float* %5, i64 1, !dbg !655
  %6 = load i32* %M, align 4, !dbg !655, !tbaa !327
  %sub43 = add nsw i32 %6, -1, !dbg !655
  tail call void @FSet(float* %add.ptr41, i32 %sub43, float 0.000000e+00) #8, !dbg !655
  %7 = load i32* %M, align 4, !dbg !656, !tbaa !327
  %idxprom = sext i32 %7 to i64, !dbg !656
  %8 = load float** %end, align 8, !dbg !656, !tbaa !354
  %arrayidx46 = getelementptr inbounds float* %8, i64 %idxprom, !dbg !656
  store float 1.000000e+00, float* %arrayidx46, align 4, !dbg !656, !tbaa !332
  tail call void @Plan7RenormalizeExits(%struct.plan7_s* %hmm) #9, !dbg !657
  %flags = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 47, !dbg !658
  %9 = load i32* %flags, align 4, !dbg !658, !tbaa !327
  %and = and i32 %9, -2, !dbg !658
  store i32 %and, i32* %flags, align 4, !dbg !658, !tbaa !327
  ret void, !dbg !659
}

; Function Attrs: nounwind optsize uwtable
define void @Plan7SWConfig(%struct.plan7_s* nocapture %hmm, float %pentry, float %pexit) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.plan7_s* %hmm}, i64 0, metadata !173), !dbg !660
  tail call void @llvm.dbg.value(metadata !{float %pentry}, i64 0, metadata !174), !dbg !660
  tail call void @llvm.dbg.value(metadata !{float %pexit}, i64 0, metadata !175), !dbg !660
  %p1 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 29, !dbg !661
  %0 = load float* %p1, align 4, !dbg !661, !tbaa !332
  %sub = fsub float 1.000000e+00, %0, !dbg !661
  %arrayidx1 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 25, i64 0, i64 0, !dbg !661
  store float %sub, float* %arrayidx1, align 4, !dbg !661, !tbaa !332
  %arrayidx5 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 25, i64 0, i64 1, !dbg !662
  store float %0, float* %arrayidx5, align 4, !dbg !662, !tbaa !332
  %arrayidx8 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 25, i64 1, i64 0, !dbg !663
  store float 1.000000e+00, float* %arrayidx8, align 4, !dbg !663, !tbaa !332
  %arrayidx11 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 25, i64 1, i64 1, !dbg !664
  store float 0.000000e+00, float* %arrayidx11, align 4, !dbg !664, !tbaa !332
  %arrayidx16 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 25, i64 2, i64 0, !dbg !665
  store float %sub, float* %arrayidx16, align 4, !dbg !665, !tbaa !332
  %arrayidx20 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 25, i64 2, i64 1, !dbg !666
  store float %0, float* %arrayidx20, align 4, !dbg !666, !tbaa !332
  %arrayidx23 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 25, i64 3, i64 0, !dbg !667
  store float 1.000000e+00, float* %arrayidx23, align 4, !dbg !667, !tbaa !332
  %arrayidx26 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 25, i64 3, i64 1, !dbg !668
  store float 0.000000e+00, float* %arrayidx26, align 4, !dbg !668, !tbaa !332
  %conv = fpext float %pentry to double, !dbg !669
  %sub27 = fsub double 1.000000e+00, %conv, !dbg !669
  %tbd1 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 24, !dbg !669
  %1 = load float* %tbd1, align 4, !dbg !669, !tbaa !332
  %conv28 = fpext float %1 to double, !dbg !669
  %sub29 = fsub double 1.000000e+00, %conv28, !dbg !669
  %mul = fmul double %sub27, %sub29, !dbg !669
  %conv30 = fptrunc double %mul to float, !dbg !669
  %begin = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 26, !dbg !669
  %2 = load float** %begin, align 8, !dbg !669, !tbaa !354
  %arrayidx31 = getelementptr inbounds float* %2, i64 1, !dbg !669
  store float %conv30, float* %arrayidx31, align 4, !dbg !669, !tbaa !332
  %add.ptr = getelementptr inbounds float* %2, i64 2, !dbg !670
  %M = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 20, !dbg !670
  %3 = load i32* %M, align 4, !dbg !670, !tbaa !327
  %sub33 = add nsw i32 %3, -1, !dbg !670
  %4 = load float* %tbd1, align 4, !dbg !670, !tbaa !332
  %conv36 = fpext float %4 to double, !dbg !670
  %sub37 = fsub double 1.000000e+00, %conv36, !dbg !670
  %mul38 = fmul double %conv, %sub37, !dbg !670
  %conv41 = sitofp i32 %sub33 to float, !dbg !670
  %conv42 = fpext float %conv41 to double, !dbg !670
  %div = fdiv double %mul38, %conv42, !dbg !670
  %conv43 = fptrunc double %div to float, !dbg !670
  tail call void @FSet(float* %add.ptr, i32 %sub33, float %conv43) #8, !dbg !670
  %5 = load i32* %M, align 4, !dbg !671, !tbaa !327
  %idxprom = sext i32 %5 to i64, !dbg !671
  %end = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 27, !dbg !671
  %6 = load float** %end, align 8, !dbg !671, !tbaa !354
  %arrayidx45 = getelementptr inbounds float* %6, i64 %idxprom, !dbg !671
  store float 1.000000e+00, float* %arrayidx45, align 4, !dbg !671, !tbaa !332
  %sub47 = add nsw i32 %5, -1, !dbg !672
  %conv48 = sitofp i32 %sub47 to float, !dbg !672
  %div49 = fdiv float %pexit, %conv48, !dbg !672
  tail call void @llvm.dbg.value(metadata !{float %div49}, i64 0, metadata !176), !dbg !672
  tail call void @llvm.dbg.value(metadata !373, i64 0, metadata !177), !dbg !673
  %cmp92 = icmp sgt i32 %5, 1, !dbg !673
  br i1 %cmp92, label %for.body.lr.ph, label %for.end, !dbg !673

for.body.lr.ph:                                   ; preds = %entry
  %conv52 = fpext float %div49 to double, !dbg !675
  br label %for.body, !dbg !673

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %indvars.iv = phi i64 [ 1, %for.body.lr.ph ], [ %indvars.iv.next, %for.body ]
  %7 = add nsw i64 %indvars.iv, 4294967295, !dbg !675
  %8 = trunc i64 %7 to i32, !dbg !675
  %conv54 = sitofp i32 %8 to float, !dbg !675
  %mul55 = fmul float %div49, %conv54, !dbg !675
  %conv56 = fpext float %mul55 to double, !dbg !675
  %sub57 = fsub double 1.000000e+00, %conv56, !dbg !675
  %div58 = fdiv double %conv52, %sub57, !dbg !675
  %conv59 = fptrunc double %div58 to float, !dbg !675
  %arrayidx62 = getelementptr inbounds float* %6, i64 %indvars.iv, !dbg !675
  store float %conv59, float* %arrayidx62, align 4, !dbg !675, !tbaa !332
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !673
  %9 = trunc i64 %indvars.iv.next to i32, !dbg !673
  %cmp = icmp slt i32 %9, %5, !dbg !673
  br i1 %cmp, label %for.body, label %for.end, !dbg !673

for.end:                                          ; preds = %for.body, %entry
  tail call void @Plan7RenormalizeExits(%struct.plan7_s* %hmm) #9, !dbg !676
  %flags = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 47, !dbg !677
  %10 = load i32* %flags, align 4, !dbg !677, !tbaa !327
  %and = and i32 %10, -2, !dbg !677
  store i32 %and, i32* %flags, align 4, !dbg !677, !tbaa !327
  ret void, !dbg !678
}

; Function Attrs: nounwind optsize uwtable
define void @Plan7FSConfig(%struct.plan7_s* nocapture %hmm, float %pentry, float %pexit) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.plan7_s* %hmm}, i64 0, metadata !180), !dbg !679
  tail call void @llvm.dbg.value(metadata !{float %pentry}, i64 0, metadata !181), !dbg !679
  tail call void @llvm.dbg.value(metadata !{float %pexit}, i64 0, metadata !182), !dbg !679
  %p1 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 29, !dbg !680
  %0 = load float* %p1, align 4, !dbg !680, !tbaa !332
  %sub = fsub float 1.000000e+00, %0, !dbg !680
  %arrayidx1 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 25, i64 0, i64 0, !dbg !680
  store float %sub, float* %arrayidx1, align 4, !dbg !680, !tbaa !332
  %arrayidx5 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 25, i64 0, i64 1, !dbg !681
  store float %0, float* %arrayidx5, align 4, !dbg !681, !tbaa !332
  %arrayidx8 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 25, i64 1, i64 0, !dbg !682
  store float 5.000000e-01, float* %arrayidx8, align 4, !dbg !682, !tbaa !332
  %arrayidx11 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 25, i64 1, i64 1, !dbg !683
  store float 5.000000e-01, float* %arrayidx11, align 4, !dbg !683, !tbaa !332
  %arrayidx16 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 25, i64 2, i64 0, !dbg !684
  store float %sub, float* %arrayidx16, align 4, !dbg !684, !tbaa !332
  %arrayidx20 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 25, i64 2, i64 1, !dbg !685
  store float %0, float* %arrayidx20, align 4, !dbg !685, !tbaa !332
  %arrayidx26 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 25, i64 3, i64 0, !dbg !686
  store float %sub, float* %arrayidx26, align 4, !dbg !686, !tbaa !332
  %arrayidx30 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 25, i64 3, i64 1, !dbg !687
  store float %0, float* %arrayidx30, align 4, !dbg !687, !tbaa !332
  %conv31 = fpext float %pentry to double, !dbg !688
  %sub32 = fsub double 1.000000e+00, %conv31, !dbg !688
  %tbd1 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 24, !dbg !688
  %1 = load float* %tbd1, align 4, !dbg !688, !tbaa !332
  %conv33 = fpext float %1 to double, !dbg !688
  %sub34 = fsub double 1.000000e+00, %conv33, !dbg !688
  %mul = fmul double %sub32, %sub34, !dbg !688
  %conv35 = fptrunc double %mul to float, !dbg !688
  %begin = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 26, !dbg !688
  %2 = load float** %begin, align 8, !dbg !688, !tbaa !354
  %arrayidx36 = getelementptr inbounds float* %2, i64 1, !dbg !688
  store float %conv35, float* %arrayidx36, align 4, !dbg !688, !tbaa !332
  %add.ptr = getelementptr inbounds float* %2, i64 2, !dbg !689
  %M = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 20, !dbg !689
  %3 = load i32* %M, align 4, !dbg !689, !tbaa !327
  %sub38 = add nsw i32 %3, -1, !dbg !689
  %4 = load float* %tbd1, align 4, !dbg !689, !tbaa !332
  %conv41 = fpext float %4 to double, !dbg !689
  %sub42 = fsub double 1.000000e+00, %conv41, !dbg !689
  %mul43 = fmul double %conv31, %sub42, !dbg !689
  %conv46 = sitofp i32 %sub38 to float, !dbg !689
  %conv47 = fpext float %conv46 to double, !dbg !689
  %div = fdiv double %mul43, %conv47, !dbg !689
  %conv48 = fptrunc double %div to float, !dbg !689
  tail call void @FSet(float* %add.ptr, i32 %sub38, float %conv48) #8, !dbg !689
  %5 = load i32* %M, align 4, !dbg !690, !tbaa !327
  %idxprom = sext i32 %5 to i64, !dbg !690
  %end = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 27, !dbg !690
  %6 = load float** %end, align 8, !dbg !690, !tbaa !354
  %arrayidx50 = getelementptr inbounds float* %6, i64 %idxprom, !dbg !690
  store float 1.000000e+00, float* %arrayidx50, align 4, !dbg !690, !tbaa !332
  %sub52 = add nsw i32 %5, -1, !dbg !691
  %conv53 = sitofp i32 %sub52 to float, !dbg !691
  %div54 = fdiv float %pexit, %conv53, !dbg !691
  tail call void @llvm.dbg.value(metadata !{float %div54}, i64 0, metadata !183), !dbg !691
  tail call void @llvm.dbg.value(metadata !373, i64 0, metadata !184), !dbg !692
  %cmp99 = icmp sgt i32 %5, 1, !dbg !692
  br i1 %cmp99, label %for.body.lr.ph, label %for.end, !dbg !692

for.body.lr.ph:                                   ; preds = %entry
  %conv57 = fpext float %div54 to double, !dbg !694
  br label %for.body, !dbg !692

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %indvars.iv = phi i64 [ 1, %for.body.lr.ph ], [ %indvars.iv.next, %for.body ]
  %7 = add nsw i64 %indvars.iv, 4294967295, !dbg !694
  %8 = trunc i64 %7 to i32, !dbg !694
  %conv59 = sitofp i32 %8 to float, !dbg !694
  %mul60 = fmul float %div54, %conv59, !dbg !694
  %conv61 = fpext float %mul60 to double, !dbg !694
  %sub62 = fsub double 1.000000e+00, %conv61, !dbg !694
  %div63 = fdiv double %conv57, %sub62, !dbg !694
  %conv64 = fptrunc double %div63 to float, !dbg !694
  %arrayidx67 = getelementptr inbounds float* %6, i64 %indvars.iv, !dbg !694
  store float %conv64, float* %arrayidx67, align 4, !dbg !694, !tbaa !332
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !692
  %9 = trunc i64 %indvars.iv.next to i32, !dbg !692
  %cmp = icmp slt i32 %9, %5, !dbg !692
  br i1 %cmp, label %for.body, label %for.end, !dbg !692

for.end:                                          ; preds = %for.body, %entry
  tail call void @Plan7RenormalizeExits(%struct.plan7_s* %hmm) #9, !dbg !695
  %flags = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 47, !dbg !696
  %10 = load i32* %flags, align 4, !dbg !696, !tbaa !327
  %and = and i32 %10, -2, !dbg !696
  store i32 %and, i32* %flags, align 4, !dbg !696, !tbaa !327
  ret void, !dbg !697
}

; Function Attrs: nounwind optsize uwtable
define void @Plan7ESTConfig(%struct.plan7_s* nocapture %hmm, i32* nocapture %aacode, float** nocapture %estmodel, float %dna2, float %dna4) #0 {
for.cond:
  tail call void @llvm.dbg.value(metadata !{%struct.plan7_s* %hmm}, i64 0, metadata !189), !dbg !698
  tail call void @llvm.dbg.value(metadata !{i32* %aacode}, i64 0, metadata !190), !dbg !698
  tail call void @llvm.dbg.value(metadata !{float** %estmodel}, i64 0, metadata !191), !dbg !698
  tail call void @llvm.dbg.value(metadata !{float %dna2}, i64 0, metadata !192), !dbg !699
  tail call void @llvm.dbg.value(metadata !{float %dna4}, i64 0, metadata !193), !dbg !699
  tail call void @llvm.dbg.value(metadata !700, i64 0, metadata !197), !dbg !701
  %arrayidx1 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 25, i64 0, i64 0, !dbg !702
  store float 0x3F6756CAC0000000, float* %arrayidx1, align 4, !dbg !702, !tbaa !332
  %arrayidx4 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 25, i64 0, i64 1, !dbg !703
  store float 0x3FEFE8A940000000, float* %arrayidx4, align 4, !dbg !703, !tbaa !332
  %arrayidx7 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 25, i64 1, i64 0, !dbg !704
  store float 1.000000e+00, float* %arrayidx7, align 4, !dbg !704, !tbaa !332
  %arrayidx10 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 25, i64 1, i64 1, !dbg !705
  store float 0.000000e+00, float* %arrayidx10, align 4, !dbg !705, !tbaa !332
  %arrayidx13 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 25, i64 2, i64 0, !dbg !706
  store float 0x3F6756CAC0000000, float* %arrayidx13, align 4, !dbg !706, !tbaa !332
  %arrayidx16 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 25, i64 2, i64 1, !dbg !707
  store float 0x3FEFE8A940000000, float* %arrayidx16, align 4, !dbg !707, !tbaa !332
  %arrayidx19 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 25, i64 3, i64 0, !dbg !708
  store float 1.000000e+00, float* %arrayidx19, align 4, !dbg !708, !tbaa !332
  %arrayidx22 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 25, i64 3, i64 1, !dbg !709
  store float 0.000000e+00, float* %arrayidx22, align 4, !dbg !709, !tbaa !332
  %begin = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 26, !dbg !710
  %0 = load float** %begin, align 8, !dbg !710, !tbaa !354
  %arrayidx23 = getelementptr inbounds float* %0, i64 1, !dbg !710
  store float 5.000000e-01, float* %arrayidx23, align 4, !dbg !710, !tbaa !332
  %add.ptr = getelementptr inbounds float* %0, i64 2, !dbg !711
  %M = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 20, !dbg !711
  %1 = load i32* %M, align 4, !dbg !711, !tbaa !327
  %sub = add nsw i32 %1, -1, !dbg !711
  %conv = sitofp i32 %1 to float, !dbg !711
  %conv26 = fpext float %conv to double, !dbg !711
  %sub27 = fadd double %conv26, -1.000000e+00, !dbg !711
  %div = fdiv double 5.000000e-01, %sub27, !dbg !711
  %conv28 = fptrunc double %div to float, !dbg !711
  tail call void @FSet(float* %add.ptr, i32 %sub, float %conv28) #8, !dbg !711
  %2 = load i32* %M, align 4, !dbg !712, !tbaa !327
  %idxprom = sext i32 %2 to i64, !dbg !712
  %end = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 27, !dbg !712
  %3 = load float** %end, align 8, !dbg !712, !tbaa !354
  %arrayidx30 = getelementptr inbounds float* %3, i64 %idxprom, !dbg !712
  store float 1.000000e+00, float* %arrayidx30, align 4, !dbg !712, !tbaa !332
  %sub33 = add nsw i32 %2, -1, !dbg !713
  %conv35 = sitofp i32 %2 to float, !dbg !713
  %conv36 = fpext float %conv35 to double, !dbg !713
  %sub37 = fadd double %conv36, -1.000000e+00, !dbg !713
  %div38 = fdiv double 5.000000e-01, %sub37, !dbg !713
  %conv39 = fptrunc double %div38 to float, !dbg !713
  tail call void @FSet(float* %3, i32 %sub33, float %conv39) #8, !dbg !713
  tail call void @llvm.dbg.value(metadata !373, i64 0, metadata !194), !dbg !714
  %4 = load i32* %M, align 4, !dbg !714, !tbaa !327
  %cmp = icmp slt i32 %4, 1, !dbg !714
  br i1 %cmp, label %for.end108, label %for.body45, !dbg !714

for.body45:                                       ; preds = %for.cond
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !195), !dbg !716
  tail call void @llvm.trap()
  unreachable

for.end108:                                       ; preds = %for.cond
  ret void, !dbg !719
}

; Function Attrs: nounwind optsize uwtable
define void @PrintPlan7Stats(%struct._IO_FILE* nocapture %fp, %struct.plan7_s* %hmm, i8** nocapture %dsq, i32 %nseq, %struct.p7trace_s** nocapture %tr) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %fp}, i64 0, metadata !262), !dbg !720
  tail call void @llvm.dbg.value(metadata !{%struct.plan7_s* %hmm}, i64 0, metadata !263), !dbg !720
  tail call void @llvm.dbg.value(metadata !{i8** %dsq}, i64 0, metadata !264), !dbg !720
  tail call void @llvm.dbg.value(metadata !{i32 %nseq}, i64 0, metadata !265), !dbg !720
  tail call void @llvm.dbg.value(metadata !{%struct.p7trace_s** %tr}, i64 0, metadata !266), !dbg !721
  tail call void @P7Logoddsify(%struct.plan7_s* %hmm, i32 1) #9, !dbg !722
  %0 = load i8** %dsq, align 8, !dbg !723, !tbaa !354
  %1 = load %struct.p7trace_s** %tr, align 8, !dbg !723, !tbaa !354
  %call = tail call float @P7TraceScore(%struct.plan7_s* %hmm, i8* %0, %struct.p7trace_s* %1) #8, !dbg !723
  tail call void @llvm.dbg.value(metadata !{float %call}, i64 0, metadata !268), !dbg !723
  tail call void @llvm.dbg.value(metadata !{float %call}, i64 0, metadata !271), !dbg !724
  tail call void @llvm.dbg.value(metadata !{float %call}, i64 0, metadata !270), !dbg !724
  tail call void @llvm.dbg.value(metadata !{float %call}, i64 0, metadata !269), !dbg !724
  %mul = fmul float %call, %call, !dbg !725
  tail call void @llvm.dbg.value(metadata !{float %mul}, i64 0, metadata !272), !dbg !725
  tail call void @llvm.dbg.value(metadata !373, i64 0, metadata !267), !dbg !726
  %cmp70 = icmp sgt i32 %nseq, 1, !dbg !726
  br i1 %cmp70, label %for.body, label %for.end.if.end26_crit_edge, !dbg !726

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 1, %entry ]
  %sqsum.075 = phi float [ %add7, %for.body ], [ %mul, %entry ]
  %worst.074 = phi float [ %worst.1, %for.body ], [ %call, %entry ]
  %best.073 = phi float [ %best.1, %for.body ], [ %call, %entry ]
  %total.072 = phi float [ %add, %for.body ], [ %call, %entry ]
  %arrayidx2 = getelementptr inbounds i8** %dsq, i64 %indvars.iv, !dbg !728
  %2 = load i8** %arrayidx2, align 8, !dbg !728, !tbaa !354
  %arrayidx4 = getelementptr inbounds %struct.p7trace_s** %tr, i64 %indvars.iv, !dbg !728
  %3 = load %struct.p7trace_s** %arrayidx4, align 8, !dbg !728, !tbaa !354
  %call5 = tail call float @P7TraceScore(%struct.plan7_s* %hmm, i8* %2, %struct.p7trace_s* %3) #8, !dbg !728
  tail call void @llvm.dbg.value(metadata !{float %call5}, i64 0, metadata !268), !dbg !728
  %add = fadd float %total.072, %call5, !dbg !730
  tail call void @llvm.dbg.value(metadata !{float %add}, i64 0, metadata !269), !dbg !730
  %mul6 = fmul float %call5, %call5, !dbg !731
  %add7 = fadd float %sqsum.075, %mul6, !dbg !731
  tail call void @llvm.dbg.value(metadata !{float %add7}, i64 0, metadata !272), !dbg !731
  %cmp8 = fcmp ogt float %call5, %best.073, !dbg !732
  tail call void @llvm.dbg.value(metadata !{float %call5}, i64 0, metadata !270), !dbg !732
  %best.1 = select i1 %cmp8, float %call5, float %best.073, !dbg !732
  %cmp9 = fcmp olt float %call5, %worst.074, !dbg !733
  tail call void @llvm.dbg.value(metadata !{float %call5}, i64 0, metadata !271), !dbg !733
  %worst.1 = select i1 %cmp9, float %call5, float %worst.074, !dbg !733
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !726
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !726
  %exitcond = icmp eq i32 %lftr.wideiv, %nseq, !dbg !726
  br i1 %exitcond, label %for.end, label %for.body, !dbg !726

for.end:                                          ; preds = %for.body
  br i1 %cmp70, label %if.then13, label %for.end.if.end26_crit_edge, !dbg !734

for.end.if.end26_crit_edge:                       ; preds = %entry, %for.end
  %total.0.lcssa84 = phi float [ %add, %for.end ], [ %call, %entry ]
  %best.0.lcssa82 = phi float [ %best.1, %for.end ], [ %call, %entry ]
  %worst.0.lcssa80 = phi float [ %worst.1, %for.end ], [ %call, %entry ]
  %conv27.pre = sitofp i32 %nseq to float, !dbg !735
  br label %if.end26, !dbg !734

if.then13:                                        ; preds = %for.end
  %mul14 = fmul float %add, %add, !dbg !736
  %conv = sitofp i32 %nseq to float, !dbg !736
  %div = fdiv float %mul14, %conv, !dbg !736
  %sub = fsub float %add7, %div, !dbg !736
  %conv15 = fpext float %sub to double, !dbg !736
  %conv17 = fpext float %conv to double, !dbg !736
  %sub18 = fadd double %conv17, -1.000000e+00, !dbg !736
  %div19 = fdiv double %conv15, %sub18, !dbg !736
  %conv20 = fptrunc double %div19 to float, !dbg !736
  tail call void @llvm.dbg.value(metadata !{float %conv20}, i64 0, metadata !273), !dbg !736
  %cmp21 = fcmp ogt float %conv20, 0.000000e+00, !dbg !738
  br i1 %cmp21, label %cond.true, label %if.end26, !dbg !738

cond.true:                                        ; preds = %if.then13
  %phitmp68 = tail call float @sqrtf(float %conv20) #3, !dbg !738
  %phitmp69 = fpext float %phitmp68 to double, !dbg !738
  br label %if.end26, !dbg !738

if.end26:                                         ; preds = %for.end.if.end26_crit_edge, %cond.true, %if.then13
  %total.0.lcssa83 = phi float [ %total.0.lcssa84, %for.end.if.end26_crit_edge ], [ %add, %cond.true ], [ %add, %if.then13 ]
  %best.0.lcssa81 = phi float [ %best.0.lcssa82, %for.end.if.end26_crit_edge ], [ %best.1, %cond.true ], [ %best.1, %if.then13 ]
  %worst.0.lcssa79 = phi float [ %worst.0.lcssa80, %for.end.if.end26_crit_edge ], [ %worst.1, %cond.true ], [ %worst.1, %if.then13 ]
  %conv27.pre-phi = phi float [ %conv27.pre, %for.end.if.end26_crit_edge ], [ %conv, %cond.true ], [ %conv, %if.then13 ], !dbg !735
  %stddev.0 = phi double [ 0.000000e+00, %for.end.if.end26_crit_edge ], [ %phitmp69, %cond.true ], [ 0.000000e+00, %if.then13 ]
  %div28 = fdiv float %total.0.lcssa83, %conv27.pre-phi, !dbg !735
  %conv29 = fpext float %div28 to double, !dbg !735
  %call30 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([29 x i8]* @.str3, i64 0, i64 0), double %conv29) #8, !dbg !735
  %conv31 = fpext float %worst.0.lcssa79 to double, !dbg !739
  %call32 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([29 x i8]* @.str4, i64 0, i64 0), double %conv31) #8, !dbg !739
  %conv33 = fpext float %best.0.lcssa81 to double, !dbg !740
  %call34 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([29 x i8]* @.str5, i64 0, i64 0), double %conv33) #8, !dbg !740
  %call36 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([29 x i8]* @.str6, i64 0, i64 0), double %stddev.0) #8, !dbg !741
  ret void, !dbg !742
}

; Function Attrs: optsize
declare float @P7TraceScore(%struct.plan7_s*, i8*, %struct.p7trace_s*) #2

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #3

; Function Attrs: nounwind optsize uwtable
define void @Plan9toPlan7(%struct.plan9_s* nocapture %hmm, %struct.plan7_s** nocapture %ret_plan7) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.plan9_s* %hmm}, i64 0, metadata !310), !dbg !743
  tail call void @llvm.dbg.value(metadata !{%struct.plan7_s** %ret_plan7}, i64 0, metadata !311), !dbg !743
  %M = getelementptr inbounds %struct.plan9_s* %hmm, i64 0, i32 0, !dbg !744
  %0 = load i32* %M, align 4, !dbg !744, !tbaa !327
  %call = tail call %struct.plan7_s* @AllocPlan7(i32 %0) #9, !dbg !744
  tail call void @llvm.dbg.value(metadata !{%struct.plan7_s* %call}, i64 0, metadata !312), !dbg !744
  tail call void @llvm.dbg.value(metadata !373, i64 0, metadata !313), !dbg !745
  %1 = load i32* %M, align 4, !dbg !745, !tbaa !327
  %cmp237 = icmp sgt i32 %1, 1, !dbg !745
  br i1 %cmp237, label %for.body.lr.ph, label %for.cond59.preheader, !dbg !745

for.body.lr.ph:                                   ; preds = %entry
  %mat = getelementptr inbounds %struct.plan9_s* %hmm, i64 0, i32 2, !dbg !747
  %2 = load %struct.basic_state** %mat, align 8, !dbg !747, !tbaa !354
  %t4 = getelementptr inbounds %struct.plan7_s* %call, i64 0, i32 21, !dbg !747
  %3 = load float*** %t4, align 8, !dbg !747, !tbaa !354
  %del = getelementptr inbounds %struct.plan9_s* %hmm, i64 0, i32 3, !dbg !749
  %4 = load %struct.basic_state** %del, align 8, !dbg !749, !tbaa !354
  %ins = getelementptr inbounds %struct.plan9_s* %hmm, i64 0, i32 1, !dbg !750
  %5 = load %struct.basic_state** %ins, align 8, !dbg !750, !tbaa !354
  br label %for.body, !dbg !745

for.cond59.preheader:                             ; preds = %for.body, %entry
  %cmp61235 = icmp slt i32 %1, 1, !dbg !751
  br i1 %cmp61235, label %for.cond82.preheader, label %for.cond63.preheader.lr.ph, !dbg !751

for.cond63.preheader.lr.ph:                       ; preds = %for.cond59.preheader
  %6 = load i32* @Alphabet_size, align 4, !dbg !753, !tbaa !327
  %cmp64233 = icmp sgt i32 %6, 0, !dbg !753
  %mat68 = getelementptr inbounds %struct.plan9_s* %hmm, i64 0, i32 2, !dbg !755
  %mat73 = getelementptr inbounds %struct.plan7_s* %call, i64 0, i32 22, !dbg !755
  br label %for.cond63.preheader, !dbg !751

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %indvars.iv250 = phi i64 [ 1, %for.body.lr.ph ], [ %indvars.iv.next251, %for.body ]
  %arrayidx2 = getelementptr inbounds %struct.basic_state* %2, i64 %indvars.iv250, i32 0, i64 0, !dbg !747
  %7 = load float* %arrayidx2, align 4, !dbg !747, !tbaa !332
  %arrayidx5 = getelementptr inbounds float** %3, i64 %indvars.iv250, !dbg !747
  %8 = load float** %arrayidx5, align 8, !dbg !747, !tbaa !354
  store float %7, float* %8, align 4, !dbg !747, !tbaa !332
  %arrayidx11 = getelementptr inbounds %struct.basic_state* %2, i64 %indvars.iv250, i32 0, i64 2, !dbg !756
  %9 = load float* %arrayidx11, align 4, !dbg !756, !tbaa !332
  %arrayidx15 = getelementptr inbounds float* %8, i64 2, !dbg !756
  store float %9, float* %arrayidx15, align 4, !dbg !756, !tbaa !332
  %arrayidx20 = getelementptr inbounds %struct.basic_state* %2, i64 %indvars.iv250, i32 0, i64 1, !dbg !757
  %10 = load float* %arrayidx20, align 4, !dbg !757, !tbaa !332
  %arrayidx24 = getelementptr inbounds float* %8, i64 1, !dbg !757
  store float %10, float* %arrayidx24, align 4, !dbg !757, !tbaa !332
  %arrayidx28 = getelementptr inbounds %struct.basic_state* %4, i64 %indvars.iv250, i32 0, i64 0, !dbg !749
  %11 = load float* %arrayidx28, align 4, !dbg !749, !tbaa !332
  %arrayidx32 = getelementptr inbounds float* %8, i64 5, !dbg !749
  store float %11, float* %arrayidx32, align 4, !dbg !749, !tbaa !332
  %arrayidx37 = getelementptr inbounds %struct.basic_state* %4, i64 %indvars.iv250, i32 0, i64 2, !dbg !758
  %12 = load float* %arrayidx37, align 4, !dbg !758, !tbaa !332
  %arrayidx41 = getelementptr inbounds float* %8, i64 6, !dbg !758
  store float %12, float* %arrayidx41, align 4, !dbg !758, !tbaa !332
  %arrayidx45 = getelementptr inbounds %struct.basic_state* %5, i64 %indvars.iv250, i32 0, i64 0, !dbg !750
  %13 = load float* %arrayidx45, align 4, !dbg !750, !tbaa !332
  %arrayidx49 = getelementptr inbounds float* %8, i64 3, !dbg !750
  store float %13, float* %arrayidx49, align 4, !dbg !750, !tbaa !332
  %arrayidx54 = getelementptr inbounds %struct.basic_state* %5, i64 %indvars.iv250, i32 0, i64 1, !dbg !759
  %14 = load float* %arrayidx54, align 4, !dbg !759, !tbaa !332
  %arrayidx58 = getelementptr inbounds float* %8, i64 4, !dbg !759
  store float %14, float* %arrayidx58, align 4, !dbg !759, !tbaa !332
  %indvars.iv.next251 = add i64 %indvars.iv250, 1, !dbg !745
  %15 = trunc i64 %indvars.iv.next251 to i32, !dbg !745
  %cmp = icmp slt i32 %15, %1, !dbg !745
  br i1 %cmp, label %for.body, label %for.cond59.preheader, !dbg !745

for.cond63.preheader:                             ; preds = %for.inc79, %for.cond63.preheader.lr.ph
  %indvars.iv248 = phi i64 [ %indvars.iv.next249, %for.inc79 ], [ 1, %for.cond63.preheader.lr.ph ]
  br i1 %cmp64233, label %for.body65.lr.ph, label %for.inc79, !dbg !753

for.body65.lr.ph:                                 ; preds = %for.cond63.preheader
  %16 = load %struct.basic_state** %mat68, align 8, !dbg !755, !tbaa !354
  %17 = load float*** %mat73, align 8, !dbg !755, !tbaa !354
  %arrayidx74 = getelementptr inbounds float** %17, i64 %indvars.iv248, !dbg !755
  %18 = load float** %arrayidx74, align 8, !dbg !755, !tbaa !354
  br label %for.body65, !dbg !753

for.cond82.preheader:                             ; preds = %for.inc79, %for.cond59.preheader
  br i1 %cmp237, label %for.cond86.preheader.lr.ph, label %for.end105, !dbg !760

for.cond86.preheader.lr.ph:                       ; preds = %for.cond82.preheader
  %19 = load i32* @Alphabet_size, align 4, !dbg !762, !tbaa !327
  %cmp87229 = icmp sgt i32 %19, 0, !dbg !762
  %ins91 = getelementptr inbounds %struct.plan9_s* %hmm, i64 0, i32 1, !dbg !764
  %ins97 = getelementptr inbounds %struct.plan7_s* %call, i64 0, i32 23, !dbg !764
  br label %for.cond86.preheader, !dbg !760

for.body65:                                       ; preds = %for.body65, %for.body65.lr.ph
  %indvars.iv244 = phi i64 [ 0, %for.body65.lr.ph ], [ %indvars.iv.next245, %for.body65 ]
  %arrayidx70 = getelementptr inbounds %struct.basic_state* %16, i64 %indvars.iv248, i32 1, i64 %indvars.iv244, !dbg !755
  %20 = load float* %arrayidx70, align 4, !dbg !755, !tbaa !332
  %arrayidx75 = getelementptr inbounds float* %18, i64 %indvars.iv244, !dbg !755
  store float %20, float* %arrayidx75, align 4, !dbg !755, !tbaa !332
  %indvars.iv.next245 = add i64 %indvars.iv244, 1, !dbg !753
  %lftr.wideiv246 = trunc i64 %indvars.iv.next245 to i32, !dbg !753
  %exitcond247 = icmp eq i32 %lftr.wideiv246, %6, !dbg !753
  br i1 %exitcond247, label %for.inc79, label %for.body65, !dbg !753

for.inc79:                                        ; preds = %for.body65, %for.cond63.preheader
  %indvars.iv.next249 = add i64 %indvars.iv248, 1, !dbg !751
  %21 = trunc i64 %indvars.iv248 to i32, !dbg !751
  %cmp61 = icmp slt i32 %21, %1, !dbg !751
  br i1 %cmp61, label %for.cond63.preheader, label %for.cond82.preheader, !dbg !751

for.cond86.preheader:                             ; preds = %for.cond86.preheader.lr.ph, %for.inc103
  %indvars.iv242 = phi i64 [ 1, %for.cond86.preheader.lr.ph ], [ %indvars.iv.next243, %for.inc103 ]
  br i1 %cmp87229, label %for.body88.lr.ph, label %for.inc103, !dbg !762

for.body88.lr.ph:                                 ; preds = %for.cond86.preheader
  %22 = load %struct.basic_state** %ins91, align 8, !dbg !764, !tbaa !354
  %23 = load float*** %ins97, align 8, !dbg !764, !tbaa !354
  %arrayidx98 = getelementptr inbounds float** %23, i64 %indvars.iv242, !dbg !764
  %24 = load float** %arrayidx98, align 8, !dbg !764, !tbaa !354
  br label %for.body88, !dbg !762

for.body88:                                       ; preds = %for.body88, %for.body88.lr.ph
  %indvars.iv240 = phi i64 [ 0, %for.body88.lr.ph ], [ %indvars.iv.next241, %for.body88 ]
  %arrayidx94 = getelementptr inbounds %struct.basic_state* %22, i64 %indvars.iv242, i32 1, i64 %indvars.iv240, !dbg !764
  %25 = load float* %arrayidx94, align 4, !dbg !764, !tbaa !332
  %arrayidx99 = getelementptr inbounds float* %24, i64 %indvars.iv240, !dbg !764
  store float %25, float* %arrayidx99, align 4, !dbg !764, !tbaa !332
  %indvars.iv.next241 = add i64 %indvars.iv240, 1, !dbg !762
  %lftr.wideiv = trunc i64 %indvars.iv.next241 to i32, !dbg !762
  %exitcond = icmp eq i32 %lftr.wideiv, %19, !dbg !762
  br i1 %exitcond, label %for.inc103, label %for.body88, !dbg !762

for.inc103:                                       ; preds = %for.body88, %for.cond86.preheader
  %indvars.iv.next243 = add i64 %indvars.iv242, 1, !dbg !760
  %26 = trunc i64 %indvars.iv.next243 to i32, !dbg !760
  %cmp84 = icmp slt i32 %26, %1, !dbg !760
  br i1 %cmp84, label %for.cond86.preheader, label %for.end105, !dbg !760

for.end105:                                       ; preds = %for.inc103, %for.cond82.preheader
  %mat106 = getelementptr inbounds %struct.plan9_s* %hmm, i64 0, i32 2, !dbg !765
  %27 = load %struct.basic_state** %mat106, align 8, !dbg !765, !tbaa !354
  %arrayidx109 = getelementptr inbounds %struct.basic_state* %27, i64 0, i32 0, i64 2, !dbg !765
  %28 = load float* %arrayidx109, align 4, !dbg !765, !tbaa !332
  %arrayidx117 = getelementptr inbounds %struct.basic_state* %27, i64 0, i32 0, i64 0, !dbg !765
  %29 = load float* %arrayidx117, align 4, !dbg !765, !tbaa !332
  %add = fadd float %28, %29, !dbg !765
  %div = fdiv float %28, %add, !dbg !765
  %tbd1 = getelementptr inbounds %struct.plan7_s* %call, i64 0, i32 24, !dbg !765
  store float %div, float* %tbd1, align 4, !dbg !765, !tbaa !332
  %arraydecay = getelementptr inbounds %struct.plan7_s* %call, i64 0, i32 28, i64 0, !dbg !766
  %p1 = getelementptr inbounds %struct.plan7_s* %call, i64 0, i32 29, !dbg !766
  tail call void @P7DefaultNullModel(float* %arraydecay, float* %p1) #8, !dbg !766
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !314), !dbg !767
  %30 = load i32* @Alphabet_size, align 4, !dbg !767, !tbaa !327
  %cmp119227 = icmp sgt i32 %30, 0, !dbg !767
  br i1 %cmp119227, label %for.body120, label %for.end129, !dbg !767

for.body120:                                      ; preds = %for.end105, %for.body120
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body120 ], [ 0, %for.end105 ]
  %arrayidx123 = getelementptr inbounds %struct.plan9_s* %hmm, i64 0, i32 4, i64 %indvars.iv, !dbg !769
  %31 = load float* %arrayidx123, align 4, !dbg !769, !tbaa !332
  %arrayidx126 = getelementptr inbounds %struct.plan7_s* %call, i64 0, i32 28, i64 %indvars.iv, !dbg !769
  store float %31, float* %arrayidx126, align 4, !dbg !769, !tbaa !332
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !767
  %32 = trunc i64 %indvars.iv.next to i32, !dbg !767
  %cmp119 = icmp slt i32 %32, %30, !dbg !767
  br i1 %cmp119, label %for.body120, label %for.end129, !dbg !767

for.end129:                                       ; preds = %for.body120, %for.end105
  %name = getelementptr inbounds %struct.plan9_s* %hmm, i64 0, i32 5, !dbg !770
  %33 = load i8** %name, align 8, !dbg !770, !tbaa !354
  %cmp130 = icmp eq i8* %33, null, !dbg !770
  br i1 %cmp130, label %if.end, label %if.then, !dbg !770

if.then:                                          ; preds = %for.end129
  tail call void @Plan7SetName(%struct.plan7_s* %call, i8* %33) #9, !dbg !771
  br label %if.end, !dbg !771

if.end:                                           ; preds = %for.end129, %if.then
  %flags = getelementptr inbounds %struct.plan9_s* %hmm, i64 0, i32 9, !dbg !772
  %34 = load i32* %flags, align 4, !dbg !772, !tbaa !327
  %and = and i32 %34, 1, !dbg !772
  %tobool = icmp eq i32 %and, 0, !dbg !772
  br i1 %tobool, label %if.end135, label %if.then132, !dbg !772

if.then132:                                       ; preds = %if.end
  %rf = getelementptr inbounds %struct.plan7_s* %call, i64 0, i32 3, !dbg !773
  %35 = load i8** %rf, align 8, !dbg !773, !tbaa !354
  %ref = getelementptr inbounds %struct.plan9_s* %hmm, i64 0, i32 6, !dbg !773
  %36 = load i8** %ref, align 8, !dbg !773, !tbaa !354
  %call133 = tail call i8* @strcpy(i8* %35, i8* %36) #8, !dbg !773
  %flags134 = getelementptr inbounds %struct.plan7_s* %call, i64 0, i32 47, !dbg !775
  %37 = load i32* %flags134, align 4, !dbg !775, !tbaa !327
  %or = or i32 %37, 4, !dbg !775
  store i32 %or, i32* %flags134, align 4, !dbg !775, !tbaa !327
  %.pre = load i32* %flags, align 4, !dbg !776, !tbaa !327
  br label %if.end135, !dbg !777

if.end135:                                        ; preds = %if.end, %if.then132
  %38 = phi i32 [ %34, %if.end ], [ %.pre, %if.then132 ]
  %and137 = and i32 %38, 2, !dbg !776
  %tobool138 = icmp eq i32 %and137, 0, !dbg !776
  br i1 %tobool138, label %if.end135.if.end144_crit_edge, label %if.then139, !dbg !776

if.end135.if.end144_crit_edge:                    ; preds = %if.end135
  %flags145.pre = getelementptr inbounds %struct.plan7_s* %call, i64 0, i32 47, !dbg !778
  br label %if.end144, !dbg !776

if.then139:                                       ; preds = %if.end135
  %cs = getelementptr inbounds %struct.plan7_s* %call, i64 0, i32 4, !dbg !779
  %39 = load i8** %cs, align 8, !dbg !779, !tbaa !354
  %cs140 = getelementptr inbounds %struct.plan9_s* %hmm, i64 0, i32 7, !dbg !779
  %40 = load i8** %cs140, align 8, !dbg !779, !tbaa !354
  %call141 = tail call i8* @strcpy(i8* %39, i8* %40) #8, !dbg !779
  %flags142 = getelementptr inbounds %struct.plan7_s* %call, i64 0, i32 47, !dbg !781
  %41 = load i32* %flags142, align 4, !dbg !781, !tbaa !327
  %or143 = or i32 %41, 8, !dbg !781
  store i32 %or143, i32* %flags142, align 4, !dbg !781, !tbaa !327
  br label %if.end144, !dbg !782

if.end144:                                        ; preds = %if.end135.if.end144_crit_edge, %if.then139
  %flags145.pre-phi = phi i32* [ %flags145.pre, %if.end135.if.end144_crit_edge ], [ %flags142, %if.then139 ], !dbg !778
  tail call void @Plan7LSConfig(%struct.plan7_s* %call) #9, !dbg !783
  tail call void @Plan7Renormalize(%struct.plan7_s* %call) #9, !dbg !784
  %42 = load i32* %flags145.pre-phi, align 4, !dbg !778, !tbaa !327
  %or146 = and i32 %42, -34, !dbg !785
  %and148 = or i32 %or146, 32, !dbg !785
  store i32 %and148, i32* %flags145.pre-phi, align 4, !dbg !785, !tbaa !327
  store %struct.plan7_s* %call, %struct.plan7_s** %ret_plan7, align 8, !dbg !786, !tbaa !354
  ret void, !dbg !787
}

; Function Attrs: optsize
declare void @P7DefaultNullModel(float*, float*) #2

; Function Attrs: nounwind optsize
declare i8* @strcpy(i8*, i8* nocapture) #3

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #1

; Function Attrs: noreturn nounwind
declare void @llvm.trap() #6

; Function Attrs: nounwind optsize
declare float @sqrtf(float) #3

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #7

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind optsize readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { noreturn nounwind }
attributes #7 = { nounwind }
attributes #8 = { nounwind optsize }
attributes #9 = { optsize }
attributes #10 = { nounwind optsize readonly }
attributes #11 = { nounwind optsize readnone }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/plan7.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/456.hmmer/src/plan7.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4, metadata !79, metadata !84, metadata !92, metadata !97, metadata !101, metadata !107, metadata !111, metadata !115, metadata !125, metadata !132, metadata !140, metadata !149, metadata !155, metadata !160, metadata !163, metadata !166, metadata !169, metadata !178, metadata !185, metadata !198, metadata !274, metadata !284}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"AllocPlan7", metadata !"AllocPlan7", metadata !"", i32 41, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, %struct.plan7_s* (i32)* @AllocPlan7, null, null, metadata !76, i32 42} ; [ DW_TAG_subprogram ] [line 41] [def] [scope 42] [AllocPlan7]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/plan7.c]
!6 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8, metadata !22}
!8 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !9} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from plan7_s]
!9 = metadata !{i32 786451, metadata !10, null, metadata !"plan7_s", i32 101, i64 3712, i64 64, i32 0, i32 0, null, metadata !11, i32 0, null, null} ; [ DW_TAG_structure_type ] [plan7_s] [line 101, size 3712, align 64, offset 0] [from ]
!10 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/456.hmmer/src/structs.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!11 = metadata !{metadata !12, metadata !15, metadata !16, metadata !17, metadata !18, metadata !19, metadata !20, metadata !21, metadata !23, metadata !24, metadata !26, metadata !27, metadata !28, metadata !29, metadata !30, metadata !32, metadata !33, metadata !34, metadata !35, metadata !36, metadata !37, metadata !38, metadata !41, metadata !42, metadata !43, metadata !44, metadata !49, metadata !50, metadata !51, metadata !55, metadata !56, metadata !58, metadata !59, metadata !60, metadata !62, metadata !63, metadata !64, metadata !65, metadata !66, metadata !67, metadata !68, metadata !69, metadata !70, metadata !71, metadata !72, metadata !73, metadata !74, metadata !75}
!12 = metadata !{i32 786445, metadata !10, metadata !9, metadata !"name", i32 113, i64 64, i64 64, i64 0, i32 0, metadata !13} ; [ DW_TAG_member ] [name] [line 113, size 64, align 64, offset 0] [from ]
!13 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !14} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from char]
!14 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!15 = metadata !{i32 786445, metadata !10, metadata !9, metadata !"acc", i32 114, i64 64, i64 64, i64 64, i32 0, metadata !13} ; [ DW_TAG_member ] [acc] [line 114, size 64, align 64, offset 64] [from ]
!16 = metadata !{i32 786445, metadata !10, metadata !9, metadata !"desc", i32 115, i64 64, i64 64, i64 128, i32 0, metadata !13} ; [ DW_TAG_member ] [desc] [line 115, size 64, align 64, offset 128] [from ]
!17 = metadata !{i32 786445, metadata !10, metadata !9, metadata !"rf", i32 116, i64 64, i64 64, i64 192, i32 0, metadata !13} ; [ DW_TAG_member ] [rf] [line 116, size 64, align 64, offset 192] [from ]
!18 = metadata !{i32 786445, metadata !10, metadata !9, metadata !"cs", i32 117, i64 64, i64 64, i64 256, i32 0, metadata !13} ; [ DW_TAG_member ] [cs] [line 117, size 64, align 64, offset 256] [from ]
!19 = metadata !{i32 786445, metadata !10, metadata !9, metadata !"ca", i32 118, i64 64, i64 64, i64 320, i32 0, metadata !13} ; [ DW_TAG_member ] [ca] [line 118, size 64, align 64, offset 320] [from ]
!20 = metadata !{i32 786445, metadata !10, metadata !9, metadata !"comlog", i32 119, i64 64, i64 64, i64 384, i32 0, metadata !13} ; [ DW_TAG_member ] [comlog] [line 119, size 64, align 64, offset 384] [from ]
!21 = metadata !{i32 786445, metadata !10, metadata !9, metadata !"nseq", i32 120, i64 32, i64 32, i64 448, i32 0, metadata !22} ; [ DW_TAG_member ] [nseq] [line 120, size 32, align 32, offset 448] [from int]
!22 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!23 = metadata !{i32 786445, metadata !10, metadata !9, metadata !"ctime", i32 121, i64 64, i64 64, i64 512, i32 0, metadata !13} ; [ DW_TAG_member ] [ctime] [line 121, size 64, align 64, offset 512] [from ]
!24 = metadata !{i32 786445, metadata !10, metadata !9, metadata !"map", i32 122, i64 64, i64 64, i64 576, i32 0, metadata !25} ; [ DW_TAG_member ] [map] [line 122, size 64, align 64, offset 576] [from ]
!25 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !22} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from int]
!26 = metadata !{i32 786445, metadata !10, metadata !9, metadata !"checksum", i32 123, i64 32, i64 32, i64 640, i32 0, metadata !22} ; [ DW_TAG_member ] [checksum] [line 123, size 32, align 32, offset 640] [from int]
!27 = metadata !{i32 786445, metadata !10, metadata !9, metadata !"tpri", i32 134, i64 64, i64 64, i64 704, i32 0, metadata !25} ; [ DW_TAG_member ] [tpri] [line 134, size 64, align 64, offset 704] [from ]
!28 = metadata !{i32 786445, metadata !10, metadata !9, metadata !"mpri", i32 135, i64 64, i64 64, i64 768, i32 0, metadata !25} ; [ DW_TAG_member ] [mpri] [line 135, size 64, align 64, offset 768] [from ]
!29 = metadata !{i32 786445, metadata !10, metadata !9, metadata !"ipri", i32 136, i64 64, i64 64, i64 832, i32 0, metadata !25} ; [ DW_TAG_member ] [ipri] [line 136, size 64, align 64, offset 832] [from ]
!30 = metadata !{i32 786445, metadata !10, metadata !9, metadata !"ga1", i32 144, i64 32, i64 32, i64 896, i32 0, metadata !31} ; [ DW_TAG_member ] [ga1] [line 144, size 32, align 32, offset 896] [from float]
!31 = metadata !{i32 786468, null, null, metadata !"float", i32 0, i64 32, i64 32, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [float] [line 0, size 32, align 32, offset 0, enc DW_ATE_float]
!32 = metadata !{i32 786445, metadata !10, metadata !9, metadata !"ga2", i32 144, i64 32, i64 32, i64 928, i32 0, metadata !31} ; [ DW_TAG_member ] [ga2] [line 144, size 32, align 32, offset 928] [from float]
!33 = metadata !{i32 786445, metadata !10, metadata !9, metadata !"tc1", i32 145, i64 32, i64 32, i64 960, i32 0, metadata !31} ; [ DW_TAG_member ] [tc1] [line 145, size 32, align 32, offset 960] [from float]
!34 = metadata !{i32 786445, metadata !10, metadata !9, metadata !"tc2", i32 145, i64 32, i64 32, i64 992, i32 0, metadata !31} ; [ DW_TAG_member ] [tc2] [line 145, size 32, align 32, offset 992] [from float]
!35 = metadata !{i32 786445, metadata !10, metadata !9, metadata !"nc1", i32 146, i64 32, i64 32, i64 1024, i32 0, metadata !31} ; [ DW_TAG_member ] [nc1] [line 146, size 32, align 32, offset 1024] [from float]
!36 = metadata !{i32 786445, metadata !10, metadata !9, metadata !"nc2", i32 146, i64 32, i64 32, i64 1056, i32 0, metadata !31} ; [ DW_TAG_member ] [nc2] [line 146, size 32, align 32, offset 1056] [from float]
!37 = metadata !{i32 786445, metadata !10, metadata !9, metadata !"M", i32 155, i64 32, i64 32, i64 1088, i32 0, metadata !22} ; [ DW_TAG_member ] [M] [line 155, size 32, align 32, offset 1088] [from int]
!38 = metadata !{i32 786445, metadata !10, metadata !9, metadata !"t", i32 156, i64 64, i64 64, i64 1152, i32 0, metadata !39} ; [ DW_TAG_member ] [t] [line 156, size 64, align 64, offset 1152] [from ]
!39 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !40} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!40 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !31} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from float]
!41 = metadata !{i32 786445, metadata !10, metadata !9, metadata !"mat", i32 157, i64 64, i64 64, i64 1216, i32 0, metadata !39} ; [ DW_TAG_member ] [mat] [line 157, size 64, align 64, offset 1216] [from ]
!42 = metadata !{i32 786445, metadata !10, metadata !9, metadata !"ins", i32 158, i64 64, i64 64, i64 1280, i32 0, metadata !39} ; [ DW_TAG_member ] [ins] [line 158, size 64, align 64, offset 1280] [from ]
!43 = metadata !{i32 786445, metadata !10, metadata !9, metadata !"tbd1", i32 159, i64 32, i64 32, i64 1344, i32 0, metadata !31} ; [ DW_TAG_member ] [tbd1] [line 159, size 32, align 32, offset 1344] [from float]
!44 = metadata !{i32 786445, metadata !10, metadata !9, metadata !"xt", i32 168, i64 256, i64 32, i64 1376, i32 0, metadata !45} ; [ DW_TAG_member ] [xt] [line 168, size 256, align 32, offset 1376] [from ]
!45 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 256, i64 32, i32 0, i32 0, metadata !31, metadata !46, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 256, align 32, offset 0] [from float]
!46 = metadata !{metadata !47, metadata !48}
!47 = metadata !{i32 786465, i64 0, i64 4}        ; [ DW_TAG_subrange_type ] [0, 3]
!48 = metadata !{i32 786465, i64 0, i64 2}        ; [ DW_TAG_subrange_type ] [0, 1]
!49 = metadata !{i32 786445, metadata !10, metadata !9, metadata !"begin", i32 169, i64 64, i64 64, i64 1664, i32 0, metadata !40} ; [ DW_TAG_member ] [begin] [line 169, size 64, align 64, offset 1664] [from ]
!50 = metadata !{i32 786445, metadata !10, metadata !9, metadata !"end", i32 170, i64 64, i64 64, i64 1728, i32 0, metadata !40} ; [ DW_TAG_member ] [end] [line 170, size 64, align 64, offset 1728] [from ]
!51 = metadata !{i32 786445, metadata !10, metadata !9, metadata !"null", i32 174, i64 640, i64 32, i64 1792, i32 0, metadata !52} ; [ DW_TAG_member ] [null] [line 174, size 640, align 32, offset 1792] [from ]
!52 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 640, i64 32, i32 0, i32 0, metadata !31, metadata !53, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 640, align 32, offset 0] [from float]
!53 = metadata !{metadata !54}
!54 = metadata !{i32 786465, i64 0, i64 20}       ; [ DW_TAG_subrange_type ] [0, 19]
!55 = metadata !{i32 786445, metadata !10, metadata !9, metadata !"p1", i32 175, i64 32, i64 32, i64 2432, i32 0, metadata !31} ; [ DW_TAG_member ] [p1] [line 175, size 32, align 32, offset 2432] [from float]
!56 = metadata !{i32 786445, metadata !10, metadata !9, metadata !"tsc", i32 197, i64 64, i64 64, i64 2496, i32 0, metadata !57} ; [ DW_TAG_member ] [tsc] [line 197, size 64, align 64, offset 2496] [from ]
!57 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !25} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!58 = metadata !{i32 786445, metadata !10, metadata !9, metadata !"msc", i32 198, i64 64, i64 64, i64 2560, i32 0, metadata !57} ; [ DW_TAG_member ] [msc] [line 198, size 64, align 64, offset 2560] [from ]
!59 = metadata !{i32 786445, metadata !10, metadata !9, metadata !"isc", i32 199, i64 64, i64 64, i64 2624, i32 0, metadata !57} ; [ DW_TAG_member ] [isc] [line 199, size 64, align 64, offset 2624] [from ]
!60 = metadata !{i32 786445, metadata !10, metadata !9, metadata !"xsc", i32 200, i64 256, i64 32, i64 2688, i32 0, metadata !61} ; [ DW_TAG_member ] [xsc] [line 200, size 256, align 32, offset 2688] [from ]
!61 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 256, i64 32, i32 0, i32 0, metadata !22, metadata !46, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 256, align 32, offset 0] [from int]
!62 = metadata !{i32 786445, metadata !10, metadata !9, metadata !"bsc", i32 201, i64 64, i64 64, i64 2944, i32 0, metadata !25} ; [ DW_TAG_member ] [bsc] [line 201, size 64, align 64, offset 2944] [from ]
!63 = metadata !{i32 786445, metadata !10, metadata !9, metadata !"esc", i32 202, i64 64, i64 64, i64 3008, i32 0, metadata !25} ; [ DW_TAG_member ] [esc] [line 202, size 64, align 64, offset 3008] [from ]
!64 = metadata !{i32 786445, metadata !10, metadata !9, metadata !"tsc_mem", i32 203, i64 64, i64 64, i64 3072, i32 0, metadata !25} ; [ DW_TAG_member ] [tsc_mem] [line 203, size 64, align 64, offset 3072] [from ]
!65 = metadata !{i32 786445, metadata !10, metadata !9, metadata !"msc_mem", i32 203, i64 64, i64 64, i64 3136, i32 0, metadata !25} ; [ DW_TAG_member ] [msc_mem] [line 203, size 64, align 64, offset 3136] [from ]
!66 = metadata !{i32 786445, metadata !10, metadata !9, metadata !"isc_mem", i32 203, i64 64, i64 64, i64 3200, i32 0, metadata !25} ; [ DW_TAG_member ] [isc_mem] [line 203, size 64, align 64, offset 3200] [from ]
!67 = metadata !{i32 786445, metadata !10, metadata !9, metadata !"bsc_mem", i32 203, i64 64, i64 64, i64 3264, i32 0, metadata !25} ; [ DW_TAG_member ] [bsc_mem] [line 203, size 64, align 64, offset 3264] [from ]
!68 = metadata !{i32 786445, metadata !10, metadata !9, metadata !"esc_mem", i32 203, i64 64, i64 64, i64 3328, i32 0, metadata !25} ; [ DW_TAG_member ] [esc_mem] [line 203, size 64, align 64, offset 3328] [from ]
!69 = metadata !{i32 786445, metadata !10, metadata !9, metadata !"dnam", i32 214, i64 64, i64 64, i64 3392, i32 0, metadata !57} ; [ DW_TAG_member ] [dnam] [line 214, size 64, align 64, offset 3392] [from ]
!70 = metadata !{i32 786445, metadata !10, metadata !9, metadata !"dnai", i32 215, i64 64, i64 64, i64 3456, i32 0, metadata !57} ; [ DW_TAG_member ] [dnai] [line 215, size 64, align 64, offset 3456] [from ]
!71 = metadata !{i32 786445, metadata !10, metadata !9, metadata !"dna2", i32 216, i64 32, i64 32, i64 3520, i32 0, metadata !22} ; [ DW_TAG_member ] [dna2] [line 216, size 32, align 32, offset 3520] [from int]
!72 = metadata !{i32 786445, metadata !10, metadata !9, metadata !"dna4", i32 217, i64 32, i64 32, i64 3552, i32 0, metadata !22} ; [ DW_TAG_member ] [dna4] [line 217, size 32, align 32, offset 3552] [from int]
!73 = metadata !{i32 786445, metadata !10, metadata !9, metadata !"mu", i32 222, i64 32, i64 32, i64 3584, i32 0, metadata !31} ; [ DW_TAG_member ] [mu] [line 222, size 32, align 32, offset 3584] [from float]
!74 = metadata !{i32 786445, metadata !10, metadata !9, metadata !"lambda", i32 223, i64 32, i64 32, i64 3616, i32 0, metadata !31} ; [ DW_TAG_member ] [lambda] [line 223, size 32, align 32, offset 3616] [from float]
!75 = metadata !{i32 786445, metadata !10, metadata !9, metadata !"flags", i32 225, i64 32, i64 32, i64 3648, i32 0, metadata !22} ; [ DW_TAG_member ] [flags] [line 225, size 32, align 32, offset 3648] [from int]
!76 = metadata !{metadata !77, metadata !78}
!77 = metadata !{i32 786689, metadata !4, metadata !"M", metadata !5, i32 16777257, metadata !22, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [M] [line 41]
!78 = metadata !{i32 786688, metadata !4, metadata !"hmm", metadata !5, i32 43, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [hmm] [line 43]
!79 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"AllocPlan7Shell", metadata !"AllocPlan7Shell", metadata !"", i32 50, metadata !80, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, %struct.plan7_s* ()* @AllocPlan7Shell, null, null, metadata !82, i32 51} ; [ DW_TAG_subprogram ] [line 50] [def] [scope 51] [AllocPlan7Shell]
!80 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !81, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!81 = metadata !{metadata !8}
!82 = metadata !{metadata !83}
!83 = metadata !{i32 786688, metadata !79, metadata !"hmm", metadata !5, i32 52, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [hmm] [line 52]
!84 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"AllocPlan7Body", metadata !"AllocPlan7Body", metadata !"", i32 105, metadata !85, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct.plan7_s*, i32)* @AllocPlan7Body, null, null, metadata !87, i32 106} ; [ DW_TAG_subprogram ] [line 105] [def] [scope 106] [AllocPlan7Body]
!85 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !86, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!86 = metadata !{null, metadata !8, metadata !22}
!87 = metadata !{metadata !88, metadata !89, metadata !90, metadata !91}
!88 = metadata !{i32 786689, metadata !84, metadata !"hmm", metadata !5, i32 16777321, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [hmm] [line 105]
!89 = metadata !{i32 786689, metadata !84, metadata !"M", metadata !5, i32 33554537, metadata !22, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [M] [line 105]
!90 = metadata !{i32 786688, metadata !84, metadata !"k", metadata !5, i32 107, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [k] [line 107]
!91 = metadata !{i32 786688, metadata !84, metadata !"x", metadata !5, i32 107, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [x] [line 107]
!92 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"FreePlan7", metadata !"FreePlan7", metadata !"", i32 171, metadata !93, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct.plan7_s*)* @FreePlan7, null, null, metadata !95, i32 172} ; [ DW_TAG_subprogram ] [line 171] [def] [scope 172] [FreePlan7]
!93 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !94, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!94 = metadata !{null, metadata !8}
!95 = metadata !{metadata !96}
!96 = metadata !{i32 786689, metadata !92, metadata !"hmm", metadata !5, i32 16777387, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [hmm] [line 171]
!97 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"ZeroPlan7", metadata !"ZeroPlan7", metadata !"", i32 212, metadata !93, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct.plan7_s*)* @ZeroPlan7, null, null, metadata !98, i32 213} ; [ DW_TAG_subprogram ] [line 212] [def] [scope 213] [ZeroPlan7]
!98 = metadata !{metadata !99, metadata !100}
!99 = metadata !{i32 786689, metadata !97, metadata !"hmm", metadata !5, i32 16777428, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [hmm] [line 212]
!100 = metadata !{i32 786688, metadata !97, metadata !"k", metadata !5, i32 214, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [k] [line 214]
!101 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"Plan7SetName", metadata !"Plan7SetName", metadata !"", i32 239, metadata !102, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct.plan7_s*, i8*)* @Plan7SetName, null, null, metadata !104, i32 240} ; [ DW_TAG_subprogram ] [line 239] [def] [scope 240] [Plan7SetName]
!102 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !103, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!103 = metadata !{null, metadata !8, metadata !13}
!104 = metadata !{metadata !105, metadata !106}
!105 = metadata !{i32 786689, metadata !101, metadata !"hmm", metadata !5, i32 16777455, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [hmm] [line 239]
!106 = metadata !{i32 786689, metadata !101, metadata !"name", metadata !5, i32 33554671, metadata !13, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [name] [line 239]
!107 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"Plan7SetAccession", metadata !"Plan7SetAccession", metadata !"", i32 252, metadata !102, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct.plan7_s*, i8*)* @Plan7SetAccession, null, null, metadata !108, i32 253} ; [ DW_TAG_subprogram ] [line 252] [def] [scope 253] [Plan7SetAccession]
!108 = metadata !{metadata !109, metadata !110}
!109 = metadata !{i32 786689, metadata !107, metadata !"hmm", metadata !5, i32 16777468, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [hmm] [line 252]
!110 = metadata !{i32 786689, metadata !107, metadata !"acc", metadata !5, i32 33554684, metadata !13, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [acc] [line 252]
!111 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"Plan7SetDescription", metadata !"Plan7SetDescription", metadata !"", i32 267, metadata !102, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct.plan7_s*, i8*)* @Plan7SetDescription, null, null, metadata !112, i32 268} ; [ DW_TAG_subprogram ] [line 267] [def] [scope 268] [Plan7SetDescription]
!112 = metadata !{metadata !113, metadata !114}
!113 = metadata !{i32 786689, metadata !111, metadata !"hmm", metadata !5, i32 16777483, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [hmm] [line 267]
!114 = metadata !{i32 786689, metadata !111, metadata !"desc", metadata !5, i32 33554699, metadata !13, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [desc] [line 267]
!115 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"Plan7ComlogAppend", metadata !"Plan7ComlogAppend", metadata !"", i32 282, metadata !116, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct.plan7_s*, i32, i8**)* @Plan7ComlogAppend, null, null, metadata !119, i32 283} ; [ DW_TAG_subprogram ] [line 282] [def] [scope 283] [Plan7ComlogAppend]
!116 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !117, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!117 = metadata !{null, metadata !8, metadata !22, metadata !118}
!118 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !13} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!119 = metadata !{metadata !120, metadata !121, metadata !122, metadata !123, metadata !124}
!120 = metadata !{i32 786689, metadata !115, metadata !"hmm", metadata !5, i32 16777498, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [hmm] [line 282]
!121 = metadata !{i32 786689, metadata !115, metadata !"argc", metadata !5, i32 33554714, metadata !22, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [argc] [line 282]
!122 = metadata !{i32 786689, metadata !115, metadata !"argv", metadata !5, i32 50331930, metadata !118, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [argv] [line 282]
!123 = metadata !{i32 786688, metadata !115, metadata !"len", metadata !5, i32 284, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [len] [line 284]
!124 = metadata !{i32 786688, metadata !115, metadata !"i", metadata !5, i32 285, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 285]
!125 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"Plan7SetCtime", metadata !"Plan7SetCtime", metadata !"", i32 319, metadata !93, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct.plan7_s*)* @Plan7SetCtime, null, null, metadata !126, i32 320} ; [ DW_TAG_subprogram ] [line 319] [def] [scope 320] [Plan7SetCtime]
!126 = metadata !{metadata !127, metadata !128}
!127 = metadata !{i32 786689, metadata !125, metadata !"hmm", metadata !5, i32 16777535, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [hmm] [line 319]
!128 = metadata !{i32 786688, metadata !125, metadata !"date", metadata !5, i32 321, metadata !129, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [date] [line 321]
!129 = metadata !{i32 786454, metadata !1, null, metadata !"time_t", i32 75, i64 0, i64 0, i64 0, i32 0, metadata !130} ; [ DW_TAG_typedef ] [time_t] [line 75, size 0, align 0, offset 0] [from __time_t]
!130 = metadata !{i32 786454, metadata !1, null, metadata !"__time_t", i32 139, i64 0, i64 0, i64 0, i32 0, metadata !131} ; [ DW_TAG_typedef ] [__time_t] [line 139, size 0, align 0, offset 0] [from long int]
!131 = metadata !{i32 786468, null, null, metadata !"long int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [long int] [line 0, size 64, align 64, offset 0, enc DW_ATE_signed]
!132 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"Plan7SetNullModel", metadata !"Plan7SetNullModel", metadata !"", i32 334, metadata !133, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct.plan7_s*, float*, float)* @Plan7SetNullModel, null, null, metadata !135, i32 335} ; [ DW_TAG_subprogram ] [line 334] [def] [scope 335] [Plan7SetNullModel]
!133 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !134, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!134 = metadata !{null, metadata !8, metadata !40, metadata !31}
!135 = metadata !{metadata !136, metadata !137, metadata !138, metadata !139}
!136 = metadata !{i32 786689, metadata !132, metadata !"hmm", metadata !5, i32 16777550, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [hmm] [line 334]
!137 = metadata !{i32 786689, metadata !132, metadata !"null", metadata !5, i32 33554766, metadata !40, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [null] [line 334]
!138 = metadata !{i32 786689, metadata !132, metadata !"p1", metadata !5, i32 50331982, metadata !31, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [p1] [line 334]
!139 = metadata !{i32 786688, metadata !132, metadata !"x", metadata !5, i32 336, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [x] [line 336]
!140 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"P7Logoddsify", metadata !"P7Logoddsify", metadata !"", i32 388, metadata !85, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct.plan7_s*, i32)* @P7Logoddsify, null, null, metadata !141, i32 389} ; [ DW_TAG_subprogram ] [line 388] [def] [scope 389] [P7Logoddsify]
!141 = metadata !{metadata !142, metadata !143, metadata !144, metadata !145, metadata !146, metadata !147, metadata !148}
!142 = metadata !{i32 786689, metadata !140, metadata !"hmm", metadata !5, i32 16777604, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [hmm] [line 388]
!143 = metadata !{i32 786689, metadata !140, metadata !"viterbi_mode", metadata !5, i32 33554820, metadata !22, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [viterbi_mode] [line 388]
!144 = metadata !{i32 786688, metadata !140, metadata !"k", metadata !5, i32 390, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [k] [line 390]
!145 = metadata !{i32 786688, metadata !140, metadata !"x", metadata !5, i32 391, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [x] [line 391]
!146 = metadata !{i32 786688, metadata !140, metadata !"accum", metadata !5, i32 392, metadata !31, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [accum] [line 392]
!147 = metadata !{i32 786688, metadata !140, metadata !"tbm", metadata !5, i32 393, metadata !31, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [tbm] [line 393]
!148 = metadata !{i32 786688, metadata !140, metadata !"tme", metadata !5, i32 393, metadata !31, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [tme] [line 393]
!149 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"Plan7Renormalize", metadata !"Plan7Renormalize", metadata !"", i32 529, metadata !93, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct.plan7_s*)* @Plan7Renormalize, null, null, metadata !150, i32 530} ; [ DW_TAG_subprogram ] [line 529] [def] [scope 530] [Plan7Renormalize]
!150 = metadata !{metadata !151, metadata !152, metadata !153, metadata !154}
!151 = metadata !{i32 786689, metadata !149, metadata !"hmm", metadata !5, i32 16777745, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [hmm] [line 529]
!152 = metadata !{i32 786688, metadata !149, metadata !"k", metadata !5, i32 531, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [k] [line 531]
!153 = metadata !{i32 786688, metadata !149, metadata !"st", metadata !5, i32 532, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [st] [line 532]
!154 = metadata !{i32 786688, metadata !149, metadata !"d", metadata !5, i32 533, metadata !31, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [d] [line 533]
!155 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"Plan7RenormalizeExits", metadata !"Plan7RenormalizeExits", metadata !"", i32 581, metadata !93, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct.plan7_s*)* @Plan7RenormalizeExits, null, null, metadata !156, i32 582} ; [ DW_TAG_subprogram ] [line 581] [def] [scope 582] [Plan7RenormalizeExits]
!156 = metadata !{metadata !157, metadata !158, metadata !159}
!157 = metadata !{i32 786689, metadata !155, metadata !"hmm", metadata !5, i32 16777797, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [hmm] [line 581]
!158 = metadata !{i32 786688, metadata !155, metadata !"k", metadata !5, i32 583, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [k] [line 583]
!159 = metadata !{i32 786688, metadata !155, metadata !"d", metadata !5, i32 584, metadata !31, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [d] [line 584]
!160 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"Plan7NakedConfig", metadata !"Plan7NakedConfig", metadata !"", i32 633, metadata !93, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct.plan7_s*)* @Plan7NakedConfig, null, null, metadata !161, i32 634} ; [ DW_TAG_subprogram ] [line 633] [def] [scope 634] [Plan7NakedConfig]
!161 = metadata !{metadata !162}
!162 = metadata !{i32 786689, metadata !160, metadata !"hmm", metadata !5, i32 16777849, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [hmm] [line 633]
!163 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"Plan7GlobalConfig", metadata !"Plan7GlobalConfig", metadata !"", i32 666, metadata !93, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct.plan7_s*)* @Plan7GlobalConfig, null, null, metadata !164, i32 667} ; [ DW_TAG_subprogram ] [line 666] [def] [scope 667] [Plan7GlobalConfig]
!164 = metadata !{metadata !165}
!165 = metadata !{i32 786689, metadata !163, metadata !"hmm", metadata !5, i32 16777882, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [hmm] [line 666]
!166 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"Plan7LSConfig", metadata !"Plan7LSConfig", metadata !"", i32 695, metadata !93, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct.plan7_s*)* @Plan7LSConfig, null, null, metadata !167, i32 696} ; [ DW_TAG_subprogram ] [line 695] [def] [scope 696] [Plan7LSConfig]
!167 = metadata !{metadata !168}
!168 = metadata !{i32 786689, metadata !166, metadata !"hmm", metadata !5, i32 16777911, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [hmm] [line 695]
!169 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"Plan7SWConfig", metadata !"Plan7SWConfig", metadata !"", i32 740, metadata !170, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct.plan7_s*, float, float)* @Plan7SWConfig, null, null, metadata !172, i32 741} ; [ DW_TAG_subprogram ] [line 740] [def] [scope 741] [Plan7SWConfig]
!170 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !171, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!171 = metadata !{null, metadata !8, metadata !31, metadata !31}
!172 = metadata !{metadata !173, metadata !174, metadata !175, metadata !176, metadata !177}
!173 = metadata !{i32 786689, metadata !169, metadata !"hmm", metadata !5, i32 16777956, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [hmm] [line 740]
!174 = metadata !{i32 786689, metadata !169, metadata !"pentry", metadata !5, i32 33555172, metadata !31, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [pentry] [line 740]
!175 = metadata !{i32 786689, metadata !169, metadata !"pexit", metadata !5, i32 50332388, metadata !31, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [pexit] [line 740]
!176 = metadata !{i32 786688, metadata !169, metadata !"basep", metadata !5, i32 742, metadata !31, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [basep] [line 742]
!177 = metadata !{i32 786688, metadata !169, metadata !"k", metadata !5, i32 743, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [k] [line 743]
!178 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"Plan7FSConfig", metadata !"Plan7FSConfig", metadata !"", i32 790, metadata !170, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct.plan7_s*, float, float)* @Plan7FSConfig, null, null, metadata !179, i32 791} ; [ DW_TAG_subprogram ] [line 790] [def] [scope 791] [Plan7FSConfig]
!179 = metadata !{metadata !180, metadata !181, metadata !182, metadata !183, metadata !184}
!180 = metadata !{i32 786689, metadata !178, metadata !"hmm", metadata !5, i32 16778006, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [hmm] [line 790]
!181 = metadata !{i32 786689, metadata !178, metadata !"pentry", metadata !5, i32 33555222, metadata !31, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [pentry] [line 790]
!182 = metadata !{i32 786689, metadata !178, metadata !"pexit", metadata !5, i32 50332438, metadata !31, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [pexit] [line 790]
!183 = metadata !{i32 786688, metadata !178, metadata !"basep", metadata !5, i32 792, metadata !31, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [basep] [line 792]
!184 = metadata !{i32 786688, metadata !178, metadata !"k", metadata !5, i32 793, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [k] [line 793]
!185 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"Plan7ESTConfig", metadata !"Plan7ESTConfig", metadata !"", i32 838, metadata !186, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct.plan7_s*, i32*, float**, float, float)* @Plan7ESTConfig, null, null, metadata !188, i32 840} ; [ DW_TAG_subprogram ] [line 838] [def] [scope 840] [Plan7ESTConfig]
!186 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !187, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!187 = metadata !{null, metadata !8, metadata !25, metadata !39, metadata !31, metadata !31}
!188 = metadata !{metadata !189, metadata !190, metadata !191, metadata !192, metadata !193, metadata !194, metadata !195, metadata !196, metadata !197}
!189 = metadata !{i32 786689, metadata !185, metadata !"hmm", metadata !5, i32 16778054, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [hmm] [line 838]
!190 = metadata !{i32 786689, metadata !185, metadata !"aacode", metadata !5, i32 33555270, metadata !25, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [aacode] [line 838]
!191 = metadata !{i32 786689, metadata !185, metadata !"estmodel", metadata !5, i32 50332486, metadata !39, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [estmodel] [line 838]
!192 = metadata !{i32 786689, metadata !185, metadata !"dna2", metadata !5, i32 67109703, metadata !31, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dna2] [line 839]
!193 = metadata !{i32 786689, metadata !185, metadata !"dna4", metadata !5, i32 83886919, metadata !31, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dna4] [line 839]
!194 = metadata !{i32 786688, metadata !185, metadata !"k", metadata !5, i32 841, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [k] [line 841]
!195 = metadata !{i32 786688, metadata !185, metadata !"x", metadata !5, i32 842, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [x] [line 842]
!196 = metadata !{i32 786688, metadata !185, metadata !"p", metadata !5, i32 843, metadata !31, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [p] [line 843]
!197 = metadata !{i32 786688, metadata !185, metadata !"tripnull", metadata !5, i32 846, metadata !40, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [tripnull] [line 846]
!198 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"PrintPlan7Stats", metadata !"PrintPlan7Stats", metadata !"", i32 897, metadata !199, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._IO_FILE*, %struct.plan7_s*, i8**, i32, %struct.p7trace_s**)* @PrintPlan7Stats, null, null, metadata !261, i32 899} ; [ DW_TAG_subprogram ] [line 897] [def] [scope 899] [PrintPlan7Stats]
!199 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !200, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!200 = metadata !{null, metadata !201, metadata !8, metadata !118, metadata !22, metadata !253}
!201 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !202} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from FILE]
!202 = metadata !{i32 786454, metadata !1, null, metadata !"FILE", i32 48, i64 0, i64 0, i64 0, i32 0, metadata !203} ; [ DW_TAG_typedef ] [FILE] [line 48, size 0, align 0, offset 0] [from _IO_FILE]
!203 = metadata !{i32 786451, metadata !204, null, metadata !"_IO_FILE", i32 245, i64 1728, i64 64, i32 0, i32 0, null, metadata !205, i32 0, null, null} ; [ DW_TAG_structure_type ] [_IO_FILE] [line 245, size 1728, align 64, offset 0] [from ]
!204 = metadata !{metadata !"/usr/include/libio.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!205 = metadata !{metadata !206, metadata !207, metadata !208, metadata !209, metadata !210, metadata !211, metadata !212, metadata !213, metadata !214, metadata !215, metadata !216, metadata !217, metadata !218, metadata !226, metadata !227, metadata !228, metadata !229, metadata !231, metadata !233, metadata !235, metadata !239, metadata !241, metadata !243, metadata !244, metadata !245, metadata !246, metadata !247, metadata !250, metadata !251}
!206 = metadata !{i32 786445, metadata !204, metadata !203, metadata !"_flags", i32 246, i64 32, i64 32, i64 0, i32 0, metadata !22} ; [ DW_TAG_member ] [_flags] [line 246, size 32, align 32, offset 0] [from int]
!207 = metadata !{i32 786445, metadata !204, metadata !203, metadata !"_IO_read_ptr", i32 251, i64 64, i64 64, i64 64, i32 0, metadata !13} ; [ DW_TAG_member ] [_IO_read_ptr] [line 251, size 64, align 64, offset 64] [from ]
!208 = metadata !{i32 786445, metadata !204, metadata !203, metadata !"_IO_read_end", i32 252, i64 64, i64 64, i64 128, i32 0, metadata !13} ; [ DW_TAG_member ] [_IO_read_end] [line 252, size 64, align 64, offset 128] [from ]
!209 = metadata !{i32 786445, metadata !204, metadata !203, metadata !"_IO_read_base", i32 253, i64 64, i64 64, i64 192, i32 0, metadata !13} ; [ DW_TAG_member ] [_IO_read_base] [line 253, size 64, align 64, offset 192] [from ]
!210 = metadata !{i32 786445, metadata !204, metadata !203, metadata !"_IO_write_base", i32 254, i64 64, i64 64, i64 256, i32 0, metadata !13} ; [ DW_TAG_member ] [_IO_write_base] [line 254, size 64, align 64, offset 256] [from ]
!211 = metadata !{i32 786445, metadata !204, metadata !203, metadata !"_IO_write_ptr", i32 255, i64 64, i64 64, i64 320, i32 0, metadata !13} ; [ DW_TAG_member ] [_IO_write_ptr] [line 255, size 64, align 64, offset 320] [from ]
!212 = metadata !{i32 786445, metadata !204, metadata !203, metadata !"_IO_write_end", i32 256, i64 64, i64 64, i64 384, i32 0, metadata !13} ; [ DW_TAG_member ] [_IO_write_end] [line 256, size 64, align 64, offset 384] [from ]
!213 = metadata !{i32 786445, metadata !204, metadata !203, metadata !"_IO_buf_base", i32 257, i64 64, i64 64, i64 448, i32 0, metadata !13} ; [ DW_TAG_member ] [_IO_buf_base] [line 257, size 64, align 64, offset 448] [from ]
!214 = metadata !{i32 786445, metadata !204, metadata !203, metadata !"_IO_buf_end", i32 258, i64 64, i64 64, i64 512, i32 0, metadata !13} ; [ DW_TAG_member ] [_IO_buf_end] [line 258, size 64, align 64, offset 512] [from ]
!215 = metadata !{i32 786445, metadata !204, metadata !203, metadata !"_IO_save_base", i32 260, i64 64, i64 64, i64 576, i32 0, metadata !13} ; [ DW_TAG_member ] [_IO_save_base] [line 260, size 64, align 64, offset 576] [from ]
!216 = metadata !{i32 786445, metadata !204, metadata !203, metadata !"_IO_backup_base", i32 261, i64 64, i64 64, i64 640, i32 0, metadata !13} ; [ DW_TAG_member ] [_IO_backup_base] [line 261, size 64, align 64, offset 640] [from ]
!217 = metadata !{i32 786445, metadata !204, metadata !203, metadata !"_IO_save_end", i32 262, i64 64, i64 64, i64 704, i32 0, metadata !13} ; [ DW_TAG_member ] [_IO_save_end] [line 262, size 64, align 64, offset 704] [from ]
!218 = metadata !{i32 786445, metadata !204, metadata !203, metadata !"_markers", i32 264, i64 64, i64 64, i64 768, i32 0, metadata !219} ; [ DW_TAG_member ] [_markers] [line 264, size 64, align 64, offset 768] [from ]
!219 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !220} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from _IO_marker]
!220 = metadata !{i32 786451, metadata !204, null, metadata !"_IO_marker", i32 160, i64 192, i64 64, i32 0, i32 0, null, metadata !221, i32 0, null, null} ; [ DW_TAG_structure_type ] [_IO_marker] [line 160, size 192, align 64, offset 0] [from ]
!221 = metadata !{metadata !222, metadata !223, metadata !225}
!222 = metadata !{i32 786445, metadata !204, metadata !220, metadata !"_next", i32 161, i64 64, i64 64, i64 0, i32 0, metadata !219} ; [ DW_TAG_member ] [_next] [line 161, size 64, align 64, offset 0] [from ]
!223 = metadata !{i32 786445, metadata !204, metadata !220, metadata !"_sbuf", i32 162, i64 64, i64 64, i64 64, i32 0, metadata !224} ; [ DW_TAG_member ] [_sbuf] [line 162, size 64, align 64, offset 64] [from ]
!224 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !203} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from _IO_FILE]
!225 = metadata !{i32 786445, metadata !204, metadata !220, metadata !"_pos", i32 166, i64 32, i64 32, i64 128, i32 0, metadata !22} ; [ DW_TAG_member ] [_pos] [line 166, size 32, align 32, offset 128] [from int]
!226 = metadata !{i32 786445, metadata !204, metadata !203, metadata !"_chain", i32 266, i64 64, i64 64, i64 832, i32 0, metadata !224} ; [ DW_TAG_member ] [_chain] [line 266, size 64, align 64, offset 832] [from ]
!227 = metadata !{i32 786445, metadata !204, metadata !203, metadata !"_fileno", i32 268, i64 32, i64 32, i64 896, i32 0, metadata !22} ; [ DW_TAG_member ] [_fileno] [line 268, size 32, align 32, offset 896] [from int]
!228 = metadata !{i32 786445, metadata !204, metadata !203, metadata !"_flags2", i32 272, i64 32, i64 32, i64 928, i32 0, metadata !22} ; [ DW_TAG_member ] [_flags2] [line 272, size 32, align 32, offset 928] [from int]
!229 = metadata !{i32 786445, metadata !204, metadata !203, metadata !"_old_offset", i32 274, i64 64, i64 64, i64 960, i32 0, metadata !230} ; [ DW_TAG_member ] [_old_offset] [line 274, size 64, align 64, offset 960] [from __off_t]
!230 = metadata !{i32 786454, metadata !204, null, metadata !"__off_t", i32 131, i64 0, i64 0, i64 0, i32 0, metadata !131} ; [ DW_TAG_typedef ] [__off_t] [line 131, size 0, align 0, offset 0] [from long int]
!231 = metadata !{i32 786445, metadata !204, metadata !203, metadata !"_cur_column", i32 278, i64 16, i64 16, i64 1024, i32 0, metadata !232} ; [ DW_TAG_member ] [_cur_column] [line 278, size 16, align 16, offset 1024] [from unsigned short]
!232 = metadata !{i32 786468, null, null, metadata !"unsigned short", i32 0, i64 16, i64 16, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned short] [line 0, size 16, align 16, offset 0, enc DW_ATE_unsigned]
!233 = metadata !{i32 786445, metadata !204, metadata !203, metadata !"_vtable_offset", i32 279, i64 8, i64 8, i64 1040, i32 0, metadata !234} ; [ DW_TAG_member ] [_vtable_offset] [line 279, size 8, align 8, offset 1040] [from signed char]
!234 = metadata !{i32 786468, null, null, metadata !"signed char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [signed char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!235 = metadata !{i32 786445, metadata !204, metadata !203, metadata !"_shortbuf", i32 280, i64 8, i64 8, i64 1048, i32 0, metadata !236} ; [ DW_TAG_member ] [_shortbuf] [line 280, size 8, align 8, offset 1048] [from ]
!236 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 8, i64 8, i32 0, i32 0, metadata !14, metadata !237, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 8, align 8, offset 0] [from char]
!237 = metadata !{metadata !238}
!238 = metadata !{i32 786465, i64 0, i64 1}       ; [ DW_TAG_subrange_type ] [0, 0]
!239 = metadata !{i32 786445, metadata !204, metadata !203, metadata !"_lock", i32 284, i64 64, i64 64, i64 1088, i32 0, metadata !240} ; [ DW_TAG_member ] [_lock] [line 284, size 64, align 64, offset 1088] [from ]
!240 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, null} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!241 = metadata !{i32 786445, metadata !204, metadata !203, metadata !"_offset", i32 293, i64 64, i64 64, i64 1152, i32 0, metadata !242} ; [ DW_TAG_member ] [_offset] [line 293, size 64, align 64, offset 1152] [from __off64_t]
!242 = metadata !{i32 786454, metadata !204, null, metadata !"__off64_t", i32 132, i64 0, i64 0, i64 0, i32 0, metadata !131} ; [ DW_TAG_typedef ] [__off64_t] [line 132, size 0, align 0, offset 0] [from long int]
!243 = metadata !{i32 786445, metadata !204, metadata !203, metadata !"__pad1", i32 302, i64 64, i64 64, i64 1216, i32 0, metadata !240} ; [ DW_TAG_member ] [__pad1] [line 302, size 64, align 64, offset 1216] [from ]
!244 = metadata !{i32 786445, metadata !204, metadata !203, metadata !"__pad2", i32 303, i64 64, i64 64, i64 1280, i32 0, metadata !240} ; [ DW_TAG_member ] [__pad2] [line 303, size 64, align 64, offset 1280] [from ]
!245 = metadata !{i32 786445, metadata !204, metadata !203, metadata !"__pad3", i32 304, i64 64, i64 64, i64 1344, i32 0, metadata !240} ; [ DW_TAG_member ] [__pad3] [line 304, size 64, align 64, offset 1344] [from ]
!246 = metadata !{i32 786445, metadata !204, metadata !203, metadata !"__pad4", i32 305, i64 64, i64 64, i64 1408, i32 0, metadata !240} ; [ DW_TAG_member ] [__pad4] [line 305, size 64, align 64, offset 1408] [from ]
!247 = metadata !{i32 786445, metadata !204, metadata !203, metadata !"__pad5", i32 306, i64 64, i64 64, i64 1472, i32 0, metadata !248} ; [ DW_TAG_member ] [__pad5] [line 306, size 64, align 64, offset 1472] [from size_t]
!248 = metadata !{i32 786454, metadata !204, null, metadata !"size_t", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !249} ; [ DW_TAG_typedef ] [size_t] [line 42, size 0, align 0, offset 0] [from long unsigned int]
!249 = metadata !{i32 786468, null, null, metadata !"long unsigned int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [long unsigned int] [line 0, size 64, align 64, offset 0, enc DW_ATE_unsigned]
!250 = metadata !{i32 786445, metadata !204, metadata !203, metadata !"_mode", i32 308, i64 32, i64 32, i64 1536, i32 0, metadata !22} ; [ DW_TAG_member ] [_mode] [line 308, size 32, align 32, offset 1536] [from int]
!251 = metadata !{i32 786445, metadata !204, metadata !203, metadata !"_unused2", i32 310, i64 160, i64 8, i64 1568, i32 0, metadata !252} ; [ DW_TAG_member ] [_unused2] [line 310, size 160, align 8, offset 1568] [from ]
!252 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 160, i64 8, i32 0, i32 0, metadata !14, metadata !53, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 160, align 8, offset 0] [from char]
!253 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !254} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!254 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !255} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from p7trace_s]
!255 = metadata !{i32 786451, metadata !10, null, metadata !"p7trace_s", i32 374, i64 256, i64 64, i32 0, i32 0, null, metadata !256, i32 0, null, null} ; [ DW_TAG_structure_type ] [p7trace_s] [line 374, size 256, align 64, offset 0] [from ]
!256 = metadata !{metadata !257, metadata !258, metadata !259, metadata !260}
!257 = metadata !{i32 786445, metadata !10, metadata !255, metadata !"tlen", i32 375, i64 32, i64 32, i64 0, i32 0, metadata !22} ; [ DW_TAG_member ] [tlen] [line 375, size 32, align 32, offset 0] [from int]
!258 = metadata !{i32 786445, metadata !10, metadata !255, metadata !"statetype", i32 376, i64 64, i64 64, i64 64, i32 0, metadata !13} ; [ DW_TAG_member ] [statetype] [line 376, size 64, align 64, offset 64] [from ]
!259 = metadata !{i32 786445, metadata !10, metadata !255, metadata !"nodeidx", i32 377, i64 64, i64 64, i64 128, i32 0, metadata !25} ; [ DW_TAG_member ] [nodeidx] [line 377, size 64, align 64, offset 128] [from ]
!260 = metadata !{i32 786445, metadata !10, metadata !255, metadata !"pos", i32 378, i64 64, i64 64, i64 192, i32 0, metadata !25} ; [ DW_TAG_member ] [pos] [line 378, size 64, align 64, offset 192] [from ]
!261 = metadata !{metadata !262, metadata !263, metadata !264, metadata !265, metadata !266, metadata !267, metadata !268, metadata !269, metadata !270, metadata !271, metadata !272, metadata !273}
!262 = metadata !{i32 786689, metadata !198, metadata !"fp", metadata !5, i32 16778113, metadata !201, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fp] [line 897]
!263 = metadata !{i32 786689, metadata !198, metadata !"hmm", metadata !5, i32 33555329, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [hmm] [line 897]
!264 = metadata !{i32 786689, metadata !198, metadata !"dsq", metadata !5, i32 50332545, metadata !118, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dsq] [line 897]
!265 = metadata !{i32 786689, metadata !198, metadata !"nseq", metadata !5, i32 67109761, metadata !22, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nseq] [line 897]
!266 = metadata !{i32 786689, metadata !198, metadata !"tr", metadata !5, i32 83886978, metadata !253, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [tr] [line 898]
!267 = metadata !{i32 786688, metadata !198, metadata !"idx", metadata !5, i32 900, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [idx] [line 900]
!268 = metadata !{i32 786688, metadata !198, metadata !"score", metadata !5, i32 901, metadata !31, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [score] [line 901]
!269 = metadata !{i32 786688, metadata !198, metadata !"total", metadata !5, i32 902, metadata !31, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [total] [line 902]
!270 = metadata !{i32 786688, metadata !198, metadata !"best", metadata !5, i32 902, metadata !31, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [best] [line 902]
!271 = metadata !{i32 786688, metadata !198, metadata !"worst", metadata !5, i32 902, metadata !31, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [worst] [line 902]
!272 = metadata !{i32 786688, metadata !198, metadata !"sqsum", metadata !5, i32 903, metadata !31, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sqsum] [line 903]
!273 = metadata !{i32 786688, metadata !198, metadata !"stddev", metadata !5, i32 903, metadata !31, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [stddev] [line 903]
!274 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"DegenerateSymbolScore", metadata !"DegenerateSymbolScore", metadata !"", i32 971, metadata !275, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (float*, float*, i32)* @DegenerateSymbolScore, null, null, metadata !277, i32 972} ; [ DW_TAG_subprogram ] [line 971] [def] [scope 972] [DegenerateSymbolScore]
!275 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !276, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!276 = metadata !{metadata !22, metadata !40, metadata !40, metadata !22}
!277 = metadata !{metadata !278, metadata !279, metadata !280, metadata !281, metadata !282, metadata !283}
!278 = metadata !{i32 786689, metadata !274, metadata !"p", metadata !5, i32 16778187, metadata !40, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [p] [line 971]
!279 = metadata !{i32 786689, metadata !274, metadata !"null", metadata !5, i32 33555403, metadata !40, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [null] [line 971]
!280 = metadata !{i32 786689, metadata !274, metadata !"ambig", metadata !5, i32 50332619, metadata !22, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ambig] [line 971]
!281 = metadata !{i32 786688, metadata !274, metadata !"x", metadata !5, i32 973, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [x] [line 973]
!282 = metadata !{i32 786688, metadata !274, metadata !"numer", metadata !5, i32 974, metadata !31, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [numer] [line 974]
!283 = metadata !{i32 786688, metadata !274, metadata !"denom", metadata !5, i32 975, metadata !31, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [denom] [line 975]
!284 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"Plan9toPlan7", metadata !"Plan9toPlan7", metadata !"", i32 1006, metadata !285, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct.plan9_s*, %struct.plan7_s**)* @Plan9toPlan7, null, null, metadata !309, i32 1007} ; [ DW_TAG_subprogram ] [line 1006] [def] [scope 1007] [Plan9toPlan7]
!285 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !286, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!286 = metadata !{null, metadata !287, metadata !308}
!287 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !288} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from plan9_s]
!288 = metadata !{i32 786451, metadata !10, null, metadata !"plan9_s", i32 567, i64 1216, i64 64, i32 0, i32 0, null, metadata !289, i32 0, null, null} ; [ DW_TAG_structure_type ] [plan9_s] [line 567, size 1216, align 64, offset 0] [from ]
!289 = metadata !{metadata !290, metadata !291, metadata !300, metadata !301, metadata !302, metadata !303, metadata !304, metadata !305, metadata !306, metadata !307}
!290 = metadata !{i32 786445, metadata !10, metadata !288, metadata !"M", i32 568, i64 32, i64 32, i64 0, i32 0, metadata !22} ; [ DW_TAG_member ] [M] [line 568, size 32, align 32, offset 0] [from int]
!291 = metadata !{i32 786445, metadata !10, metadata !288, metadata !"ins", i32 569, i64 64, i64 64, i64 64, i32 0, metadata !292} ; [ DW_TAG_member ] [ins] [line 569, size 64, align 64, offset 64] [from ]
!292 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !293} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from basic_state]
!293 = metadata !{i32 786451, metadata !10, null, metadata !"basic_state", i32 560, i64 736, i64 32, i32 0, i32 0, null, metadata !294, i32 0, null, null} ; [ DW_TAG_structure_type ] [basic_state] [line 560, size 736, align 32, offset 0] [from ]
!294 = metadata !{metadata !295, metadata !299}
!295 = metadata !{i32 786445, metadata !10, metadata !293, metadata !"t", i32 561, i64 96, i64 32, i64 0, i32 0, metadata !296} ; [ DW_TAG_member ] [t] [line 561, size 96, align 32, offset 0] [from ]
!296 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 96, i64 32, i32 0, i32 0, metadata !31, metadata !297, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 96, align 32, offset 0] [from float]
!297 = metadata !{metadata !298}
!298 = metadata !{i32 786465, i64 0, i64 3}       ; [ DW_TAG_subrange_type ] [0, 2]
!299 = metadata !{i32 786445, metadata !10, metadata !293, metadata !"p", i32 562, i64 640, i64 32, i64 96, i32 0, metadata !52} ; [ DW_TAG_member ] [p] [line 562, size 640, align 32, offset 96] [from ]
!300 = metadata !{i32 786445, metadata !10, metadata !288, metadata !"mat", i32 570, i64 64, i64 64, i64 128, i32 0, metadata !292} ; [ DW_TAG_member ] [mat] [line 570, size 64, align 64, offset 128] [from ]
!301 = metadata !{i32 786445, metadata !10, metadata !288, metadata !"del", i32 571, i64 64, i64 64, i64 192, i32 0, metadata !292} ; [ DW_TAG_member ] [del] [line 571, size 64, align 64, offset 192] [from ]
!302 = metadata !{i32 786445, metadata !10, metadata !288, metadata !"null", i32 573, i64 640, i64 32, i64 256, i32 0, metadata !52} ; [ DW_TAG_member ] [null] [line 573, size 640, align 32, offset 256] [from ]
!303 = metadata !{i32 786445, metadata !10, metadata !288, metadata !"name", i32 577, i64 64, i64 64, i64 896, i32 0, metadata !13} ; [ DW_TAG_member ] [name] [line 577, size 64, align 64, offset 896] [from ]
!304 = metadata !{i32 786445, metadata !10, metadata !288, metadata !"ref", i32 578, i64 64, i64 64, i64 960, i32 0, metadata !13} ; [ DW_TAG_member ] [ref] [line 578, size 64, align 64, offset 960] [from ]
!305 = metadata !{i32 786445, metadata !10, metadata !288, metadata !"cs", i32 579, i64 64, i64 64, i64 1024, i32 0, metadata !13} ; [ DW_TAG_member ] [cs] [line 579, size 64, align 64, offset 1024] [from ]
!306 = metadata !{i32 786445, metadata !10, metadata !288, metadata !"xray", i32 580, i64 64, i64 64, i64 1088, i32 0, metadata !40} ; [ DW_TAG_member ] [xray] [line 580, size 64, align 64, offset 1088] [from ]
!307 = metadata !{i32 786445, metadata !10, metadata !288, metadata !"flags", i32 582, i64 32, i64 32, i64 1152, i32 0, metadata !22} ; [ DW_TAG_member ] [flags] [line 582, size 32, align 32, offset 1152] [from int]
!308 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !8} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!309 = metadata !{metadata !310, metadata !311, metadata !312, metadata !313, metadata !314}
!310 = metadata !{i32 786689, metadata !284, metadata !"hmm", metadata !5, i32 16778222, metadata !287, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [hmm] [line 1006]
!311 = metadata !{i32 786689, metadata !284, metadata !"ret_plan7", metadata !5, i32 33555438, metadata !308, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ret_plan7] [line 1006]
!312 = metadata !{i32 786688, metadata !284, metadata !"plan7", metadata !5, i32 1008, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [plan7] [line 1008]
!313 = metadata !{i32 786688, metadata !284, metadata !"k", metadata !5, i32 1009, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [k] [line 1009]
!314 = metadata !{i32 786688, metadata !284, metadata !"x", metadata !5, i32 1009, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [x] [line 1009]
!315 = metadata !{i32 41, i32 0, metadata !4, null}
!316 = metadata !{i32 54, i32 0, metadata !79, metadata !317}
!317 = metadata !{i32 45, i32 0, metadata !4, null}
!318 = metadata !{i32 786688, metadata !79, metadata !"hmm", metadata !5, i32 52, metadata !8, i32 0, metadata !317} ; [ DW_TAG_auto_variable ] [hmm] [line 52]
!319 = metadata !{i32 65, i32 0, metadata !79, metadata !317}
!320 = metadata !{i32 69, i32 0, metadata !79, metadata !317}
!321 = metadata !{i32 77, i32 0, metadata !79, metadata !317}
!322 = metadata !{i32 81, i32 0, metadata !79, metadata !317}
!323 = metadata !{i32 84, i32 0, metadata !79, metadata !317}
!324 = metadata !{i32 87, i32 0, metadata !79, metadata !317}
!325 = metadata !{i32 93, i32 0, metadata !79, metadata !317}
!326 = metadata !{i32 57, i32 0, metadata !79, metadata !317}
!327 = metadata !{metadata !"int", metadata !328}
!328 = metadata !{metadata !"omnipotent char", metadata !329}
!329 = metadata !{metadata !"Simple C/C++ TBAA"}
!330 = metadata !{i32 94, i32 0, metadata !79, metadata !317}
!331 = metadata !{i32 96, i32 0, metadata !79, metadata !317}
!332 = metadata !{metadata !"float", metadata !328}
!333 = metadata !{i32 97, i32 0, metadata !79, metadata !317}
!334 = metadata !{i32 99, i32 0, metadata !79, metadata !317}
!335 = metadata !{i32 46, i32 0, metadata !4, null}
!336 = metadata !{i32 47, i32 0, metadata !4, null}
!337 = metadata !{i32 54, i32 0, metadata !79, null}
!338 = metadata !{i32 65, i32 0, metadata !79, null}
!339 = metadata !{i32 69, i32 0, metadata !79, null}
!340 = metadata !{i32 77, i32 0, metadata !79, null}
!341 = metadata !{i32 81, i32 0, metadata !79, null}
!342 = metadata !{i32 84, i32 0, metadata !79, null}
!343 = metadata !{i32 87, i32 0, metadata !79, null}
!344 = metadata !{i32 93, i32 0, metadata !79, null}
!345 = metadata !{i32 57, i32 0, metadata !79, null}
!346 = metadata !{i32 94, i32 0, metadata !79, null}
!347 = metadata !{i32 96, i32 0, metadata !79, null}
!348 = metadata !{i32 97, i32 0, metadata !79, null}
!349 = metadata !{i32 99, i32 0, metadata !79, null}
!350 = metadata !{i32 100, i32 0, metadata !79, null}
!351 = metadata !{i32 105, i32 0, metadata !84, null}
!352 = metadata !{i32 109, i32 0, metadata !84, null}
!353 = metadata !{i32 111, i32 0, metadata !84, null}
!354 = metadata !{metadata !"any pointer", metadata !328}
!355 = metadata !{i32 112, i32 0, metadata !84, null}
!356 = metadata !{i32 113, i32 0, metadata !84, null}
!357 = metadata !{i32 114, i32 0, metadata !84, null}
!358 = metadata !{i32 116, i32 0, metadata !84, null}
!359 = metadata !{i32 117, i32 0, metadata !84, null}
!360 = metadata !{i32 118, i32 0, metadata !84, null}
!361 = metadata !{i32 119, i32 0, metadata !84, null}
!362 = metadata !{i32 120, i32 0, metadata !84, null}
!363 = metadata !{i32 121, i32 0, metadata !84, null}
!364 = metadata !{i32 123, i32 0, metadata !84, null}
!365 = metadata !{i32 124, i32 0, metadata !84, null}
!366 = metadata !{i32 125, i32 0, metadata !84, null}
!367 = metadata !{i32 126, i32 0, metadata !84, null}
!368 = metadata !{i32 127, i32 0, metadata !84, null}
!369 = metadata !{i32 128, i32 0, metadata !84, null}
!370 = metadata !{i32 130, i32 0, metadata !84, null}
!371 = metadata !{i32 131, i32 0, metadata !84, null}
!372 = metadata !{i32 132, i32 0, metadata !84, null}
!373 = metadata !{i32 1}
!374 = metadata !{i32 137, i32 0, metadata !375, null}
!375 = metadata !{i32 786443, metadata !1, metadata !84, i32 137, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/plan7.c]
!376 = metadata !{i32 138, i32 0, metadata !377, null}
!377 = metadata !{i32 786443, metadata !1, metadata !375, i32 137, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/plan7.c]
!378 = metadata !{i32 139, i32 0, metadata !377, null}
!379 = metadata !{i32 140, i32 0, metadata !380, null}
!380 = metadata !{i32 786443, metadata !1, metadata !377, i32 139, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/plan7.c]
!381 = metadata !{i32 141, i32 0, metadata !380, null}
!382 = metadata !{i32 142, i32 0, metadata !380, null}
!383 = metadata !{i32 145, i32 0, metadata !384, null}
!384 = metadata !{i32 786443, metadata !1, metadata !385, i32 144, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/plan7.c]
!385 = metadata !{i32 786443, metadata !1, metadata !84, i32 144, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/plan7.c]
!386 = metadata !{i32 146, i32 0, metadata !384, null}
!387 = metadata !{i32 144, i32 0, metadata !385, null}
!388 = metadata !{i32 155, i32 0, metadata !389, null}
!389 = metadata !{i32 786443, metadata !1, metadata !84, i32 154, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/plan7.c]
!390 = metadata !{i32 154, i32 0, metadata !389, null}
!391 = metadata !{i32 149, i32 0, metadata !392, null}
!392 = metadata !{i32 786443, metadata !1, metadata !84, i32 148, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/plan7.c]
!393 = metadata !{i32 148, i32 0, metadata !392, null}
!394 = metadata !{i32 157, i32 0, metadata !84, null}
!395 = metadata !{i32 158, i32 0, metadata !84, null}
!396 = metadata !{i32 160, i32 0, metadata !84, null}
!397 = metadata !{i32 161, i32 0, metadata !84, null}
!398 = metadata !{i32 163, i32 0, metadata !84, null}
!399 = metadata !{i32 164, i32 0, metadata !84, null}
!400 = metadata !{i32 166, i32 0, metadata !84, null}
!401 = metadata !{i32 171, i32 0, metadata !92, null}
!402 = metadata !{i32 173, i32 0, metadata !92, null}
!403 = metadata !{i32 174, i32 0, metadata !92, null}
!404 = metadata !{i32 175, i32 0, metadata !92, null}
!405 = metadata !{i32 176, i32 0, metadata !92, null}
!406 = metadata !{i32 177, i32 0, metadata !92, null}
!407 = metadata !{i32 178, i32 0, metadata !92, null}
!408 = metadata !{i32 179, i32 0, metadata !92, null}
!409 = metadata !{i32 180, i32 0, metadata !92, null}
!410 = metadata !{i32 181, i32 0, metadata !92, null}
!411 = metadata !{i32 182, i32 0, metadata !92, null}
!412 = metadata !{i32 183, i32 0, metadata !92, null}
!413 = metadata !{i32 184, i32 0, metadata !92, null}
!414 = metadata !{i32 185, i32 0, metadata !92, null}
!415 = metadata !{i32 186, i32 0, metadata !92, null}
!416 = metadata !{i32 187, i32 0, metadata !92, null}
!417 = metadata !{i32 188, i32 0, metadata !92, null}
!418 = metadata !{i32 189, i32 0, metadata !92, null}
!419 = metadata !{i32 190, i32 0, metadata !92, null}
!420 = metadata !{i32 191, i32 0, metadata !92, null}
!421 = metadata !{i32 192, i32 0, metadata !92, null}
!422 = metadata !{i32 193, i32 0, metadata !92, null}
!423 = metadata !{i32 194, i32 0, metadata !92, null}
!424 = metadata !{i32 195, i32 0, metadata !92, null}
!425 = metadata !{i32 196, i32 0, metadata !92, null}
!426 = metadata !{i32 197, i32 0, metadata !92, null}
!427 = metadata !{i32 198, i32 0, metadata !92, null}
!428 = metadata !{i32 199, i32 0, metadata !92, null}
!429 = metadata !{i32 200, i32 0, metadata !92, null}
!430 = metadata !{i32 201, i32 0, metadata !92, null}
!431 = metadata !{i32 202, i32 0, metadata !92, null}
!432 = metadata !{i32 203, i32 0, metadata !92, null}
!433 = metadata !{i32 204, i32 0, metadata !92, null}
!434 = metadata !{i32 212, i32 0, metadata !97, null}
!435 = metadata !{i32 215, i32 0, metadata !436, null}
!436 = metadata !{i32 786443, metadata !1, metadata !97, i32 215, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/plan7.c]
!437 = metadata !{i32 221, i32 0, metadata !97, null}
!438 = metadata !{i32 217, i32 0, metadata !439, null}
!439 = metadata !{i32 786443, metadata !1, metadata !436, i32 216, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/plan7.c]
!440 = metadata !{i32 218, i32 0, metadata !439, null}
!441 = metadata !{i32 219, i32 0, metadata !439, null}
!442 = metadata !{i32 222, i32 0, metadata !97, null}
!443 = metadata !{i32 223, i32 0, metadata !97, null}
!444 = metadata !{i32 224, i32 0, metadata !97, null}
!445 = metadata !{i32 225, i32 0, metadata !446, null}
!446 = metadata !{i32 786443, metadata !1, metadata !97, i32 225, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/plan7.c]
!447 = metadata !{i32 226, i32 0, metadata !446, null}
!448 = metadata !{i32 227, i32 0, metadata !97, null}
!449 = metadata !{i32 228, i32 0, metadata !97, null}
!450 = metadata !{i32 229, i32 0, metadata !97, null}
!451 = metadata !{i32 239, i32 0, metadata !101, null}
!452 = metadata !{i32 241, i32 0, metadata !101, null}
!453 = metadata !{i32 242, i32 0, metadata !101, null}
!454 = metadata !{i32 243, i32 0, metadata !101, null}
!455 = metadata !{i32 244, i32 0, metadata !101, null}
!456 = metadata !{i32 252, i32 0, metadata !107, null}
!457 = metadata !{i32 254, i32 0, metadata !107, null}
!458 = metadata !{i32 255, i32 0, metadata !107, null}
!459 = metadata !{i32 256, i32 0, metadata !107, null}
!460 = metadata !{i32 257, i32 0, metadata !107, null}
!461 = metadata !{i32 258, i32 0, metadata !107, null}
!462 = metadata !{i32 267, i32 0, metadata !111, null}
!463 = metadata !{i32 269, i32 0, metadata !111, null}
!464 = metadata !{i32 270, i32 0, metadata !111, null}
!465 = metadata !{i32 271, i32 0, metadata !111, null}
!466 = metadata !{i32 272, i32 0, metadata !111, null}
!467 = metadata !{i32 273, i32 0, metadata !111, null}
!468 = metadata !{i32 282, i32 0, metadata !115, null}
!469 = metadata !{i32 288, i32 0, metadata !115, null}
!470 = metadata !{i32 289, i32 0, metadata !471, null}
!471 = metadata !{i32 786443, metadata !1, metadata !115, i32 289, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/plan7.c]
!472 = metadata !{i32 290, i32 0, metadata !471, null}
!473 = metadata !{i32 293, i32 0, metadata !115, null}
!474 = metadata !{i32 295, i32 0, metadata !475, null}
!475 = metadata !{i32 786443, metadata !1, metadata !115, i32 294, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/plan7.c]
!476 = metadata !{i32 296, i32 0, metadata !475, null}
!477 = metadata !{i32 297, i32 0, metadata !475, null}
!478 = metadata !{i32 300, i32 0, metadata !479, null}
!479 = metadata !{i32 786443, metadata !1, metadata !115, i32 299, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/plan7.c]
!480 = metadata !{i32 301, i32 0, metadata !479, null}
!481 = metadata !{i32 305, i32 0, metadata !115, null}
!482 = metadata !{i32 306, i32 0, metadata !483, null}
!483 = metadata !{i32 786443, metadata !1, metadata !115, i32 306, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/plan7.c]
!484 = metadata !{i32 309, i32 0, metadata !485, null}
!485 = metadata !{i32 786443, metadata !1, metadata !483, i32 307, i32 0, i32 14} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/plan7.c]
!486 = metadata !{i32 308, i32 0, metadata !485, null}
!487 = metadata !{i32 311, i32 0, metadata !115, null}
!488 = metadata !{i32 319, i32 0, metadata !125, null}
!489 = metadata !{i32 321, i32 0, metadata !125, null}
!490 = metadata !{metadata !"long", metadata !328}
!491 = metadata !{i32 322, i32 0, metadata !125, null}
!492 = metadata !{i32 323, i32 0, metadata !125, null}
!493 = metadata !{i32 324, i32 0, metadata !125, null}
!494 = metadata !{i32 325, i32 0, metadata !125, null}
!495 = metadata !{i32 334, i32 0, metadata !132, null}
!496 = metadata !{i32 337, i32 0, metadata !497, null}
!497 = metadata !{i32 786443, metadata !1, metadata !132, i32 337, i32 0, i32 15} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/plan7.c]
!498 = metadata !{i32 338, i32 0, metadata !497, null}
!499 = metadata !{i32 339, i32 0, metadata !132, null}
!500 = metadata !{i32 340, i32 0, metadata !132, null}
!501 = metadata !{i32 388, i32 0, metadata !140, null}
!502 = metadata !{i32 395, i32 0, metadata !140, null}
!503 = metadata !{i32 399, i32 0, metadata !504, null}
!504 = metadata !{i32 786443, metadata !1, metadata !140, i32 399, i32 0, i32 16} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/plan7.c]
!505 = metadata !{i32 411, i32 0, metadata !506, null}
!506 = metadata !{i32 786443, metadata !1, metadata !507, i32 410, i32 0, i32 21} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/plan7.c]
!507 = metadata !{i32 786443, metadata !1, metadata !508, i32 409, i32 0, i32 20} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/plan7.c]
!508 = metadata !{i32 786443, metadata !1, metadata !504, i32 400, i32 0, i32 17} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/plan7.c]
!509 = metadata !{i32 413, i32 0, metadata !506, null}
!510 = metadata !{i32 402, i32 0, metadata !511, null}
!511 = metadata !{i32 786443, metadata !1, metadata !508, i32 402, i32 0, i32 18} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/plan7.c]
!512 = metadata !{i32 433, i32 0, metadata !513, null}
!513 = metadata !{i32 786443, metadata !1, metadata !140, i32 433, i32 0, i32 22} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/plan7.c]
!514 = metadata !{i32 435, i32 0, metadata !515, null}
!515 = metadata !{i32 786443, metadata !1, metadata !513, i32 434, i32 0, i32 23} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/plan7.c]
!516 = metadata !{i32 404, i32 0, metadata !517, null}
!517 = metadata !{i32 786443, metadata !1, metadata !511, i32 403, i32 0, i32 19} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/plan7.c]
!518 = metadata !{i32 405, i32 0, metadata !517, null}
!519 = metadata !{i32 406, i32 0, metadata !517, null}
!520 = metadata !{i32 409, i32 0, metadata !507, null}
!521 = metadata !{i32 412, i32 0, metadata !506, null}
!522 = metadata !{i32 436, i32 0, metadata !515, null}
!523 = metadata !{i32 437, i32 0, metadata !515, null}
!524 = metadata !{i32 438, i32 0, metadata !515, null}
!525 = metadata !{i32 439, i32 0, metadata !515, null}
!526 = metadata !{i32 440, i32 0, metadata !515, null}
!527 = metadata !{i32 441, i32 0, metadata !515, null}
!528 = metadata !{i32 453, i32 0, metadata !140, null}
!529 = metadata !{i32 454, i32 0, metadata !530, null}
!530 = metadata !{i32 786443, metadata !1, metadata !140, i32 454, i32 0, i32 24} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/plan7.c]
!531 = metadata !{i32 456, i32 0, metadata !532, null}
!532 = metadata !{i32 786443, metadata !1, metadata !530, i32 455, i32 0, i32 25} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/plan7.c]
!533 = metadata !{i32 461, i32 0, metadata !534, null}
!534 = metadata !{i32 786443, metadata !1, metadata !532, i32 460, i32 0, i32 26} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/plan7.c]
!535 = metadata !{i32 463, i32 0, metadata !536, null}
!536 = metadata !{i32 786443, metadata !1, metadata !534, i32 462, i32 0, i32 27} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/plan7.c]
!537 = metadata !{i32 471, i32 0, metadata !532, null}
!538 = metadata !{i32 459, i32 0, metadata !532, null}
!539 = metadata !{i32 464, i32 0, metadata !536, null}
!540 = metadata !{i32 467, i32 0, metadata !534, null}
!541 = metadata !{i32 470, i32 0, metadata !532, null}
!542 = metadata !{i32 473, i32 0, metadata !532, null}
!543 = metadata !{i32 484, i32 0, metadata !140, null}
!544 = metadata !{float 0.000000e+00}
!545 = metadata !{i32 485, i32 0, metadata !140, null}
!546 = metadata !{i32 486, i32 0, metadata !547, null}
!547 = metadata !{i32 786443, metadata !1, metadata !140, i32 486, i32 0, i32 28} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/plan7.c]
!548 = metadata !{i32 488, i32 0, metadata !549, null}
!549 = metadata !{i32 786443, metadata !1, metadata !547, i32 487, i32 0, i32 29} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/plan7.c]
!550 = metadata !{i32 491, i32 0, metadata !551, null}
!551 = metadata !{i32 786443, metadata !1, metadata !549, i32 490, i32 0, i32 30} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/plan7.c]
!552 = metadata !{i32 493, i32 0, metadata !553, null}
!553 = metadata !{i32 786443, metadata !1, metadata !551, i32 492, i32 0, i32 31} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/plan7.c]
!554 = metadata !{i32 489, i32 0, metadata !549, null}
!555 = metadata !{i32 494, i32 0, metadata !553, null}
!556 = metadata !{i32 496, i32 0, metadata !551, null}
!557 = metadata !{i32 499, i32 0, metadata !549, null}
!558 = metadata !{i32 503, i32 0, metadata !140, null}
!559 = metadata !{i32 504, i32 0, metadata !140, null}
!560 = metadata !{i32 505, i32 0, metadata !140, null}
!561 = metadata !{i32 506, i32 0, metadata !140, null}
!562 = metadata !{i32 507, i32 0, metadata !140, null}
!563 = metadata !{i32 508, i32 0, metadata !140, null}
!564 = metadata !{i32 509, i32 0, metadata !140, null}
!565 = metadata !{i32 510, i32 0, metadata !140, null}
!566 = metadata !{i32 512, i32 0, metadata !140, null}
!567 = metadata !{i32 971, i32 0, metadata !274, null}
!568 = metadata !{i32 974, i32 0, metadata !274, null}
!569 = metadata !{i32 975, i32 0, metadata !274, null}
!570 = metadata !{i32 977, i32 0, metadata !571, null}
!571 = metadata !{i32 786443, metadata !1, metadata !274, i32 977, i32 0, i32 48} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/plan7.c]
!572 = metadata !{i32 978, i32 0, metadata !573, null}
!573 = metadata !{i32 786443, metadata !1, metadata !571, i32 977, i32 0, i32 49} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/plan7.c]
!574 = metadata !{i32 979, i32 0, metadata !575, null}
!575 = metadata !{i32 786443, metadata !1, metadata !573, i32 978, i32 0, i32 50} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/plan7.c]
!576 = metadata !{i32 980, i32 0, metadata !575, null}
!577 = metadata !{i32 981, i32 0, metadata !575, null}
!578 = metadata !{i32 983, i32 0, metadata !274, null}
!579 = metadata !{i32 529, i32 0, metadata !149, null}
!580 = metadata !{i32 536, i32 0, metadata !581, null}
!581 = metadata !{i32 786443, metadata !1, metadata !149, i32 536, i32 0, i32 32} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/plan7.c]
!582 = metadata !{i32 537, i32 0, metadata !581, null}
!583 = metadata !{i32 539, i32 0, metadata !584, null}
!584 = metadata !{i32 786443, metadata !1, metadata !149, i32 539, i32 0, i32 33} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/plan7.c]
!585 = metadata !{i32 540, i32 0, metadata !584, null}
!586 = metadata !{i32 542, i32 0, metadata !149, null}
!587 = metadata !{i32 543, i32 0, metadata !149, null}
!588 = metadata !{i32 544, i32 0, metadata !149, null}
!589 = metadata !{i32 546, i32 0, metadata !590, null}
!590 = metadata !{i32 786443, metadata !1, metadata !149, i32 546, i32 0, i32 34} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/plan7.c]
!591 = metadata !{i32 548, i32 0, metadata !592, null}
!592 = metadata !{i32 786443, metadata !1, metadata !590, i32 547, i32 0, i32 35} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/plan7.c]
!593 = metadata !{i32 549, i32 0, metadata !592, null}
!594 = metadata !{i32 550, i32 0, metadata !592, null}
!595 = metadata !{i32 552, i32 0, metadata !592, null}
!596 = metadata !{i32 553, i32 0, metadata !592, null}
!597 = metadata !{i32 556, i32 0, metadata !149, null}
!598 = metadata !{i32 558, i32 0, metadata !599, null}
!599 = metadata !{i32 786443, metadata !1, metadata !149, i32 558, i32 0, i32 36} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/plan7.c]
!600 = metadata !{i32 559, i32 0, metadata !599, null}
!601 = metadata !{i32 562, i32 0, metadata !149, null}
!602 = metadata !{i32 564, i32 0, metadata !149, null}
!603 = metadata !{i32 565, i32 0, metadata !149, null}
!604 = metadata !{i32 566, i32 0, metadata !149, null}
!605 = metadata !{i32 581, i32 0, metadata !155, null}
!606 = metadata !{i32 586, i32 0, metadata !607, null}
!607 = metadata !{i32 786443, metadata !1, metadata !155, i32 586, i32 0, i32 37} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/plan7.c]
!608 = metadata !{i32 588, i32 0, metadata !609, null}
!609 = metadata !{i32 786443, metadata !1, metadata !607, i32 587, i32 0, i32 38} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/plan7.c]
!610 = metadata !{i32 589, i32 0, metadata !609, null}
!611 = metadata !{i32 591, i32 0, metadata !155, null}
!612 = metadata !{i32 633, i32 0, metadata !160, null}
!613 = metadata !{i32 635, i32 0, metadata !160, null}
!614 = metadata !{i32 636, i32 0, metadata !160, null}
!615 = metadata !{i32 637, i32 0, metadata !160, null}
!616 = metadata !{i32 638, i32 0, metadata !160, null}
!617 = metadata !{i32 639, i32 0, metadata !160, null}
!618 = metadata !{i32 640, i32 0, metadata !160, null}
!619 = metadata !{i32 641, i32 0, metadata !160, null}
!620 = metadata !{i32 642, i32 0, metadata !160, null}
!621 = metadata !{i32 643, i32 0, metadata !160, null}
!622 = metadata !{i32 644, i32 0, metadata !160, null}
!623 = metadata !{i32 645, i32 0, metadata !160, null}
!624 = metadata !{i32 646, i32 0, metadata !160, null}
!625 = metadata !{i32 647, i32 0, metadata !160, null}
!626 = metadata !{i32 648, i32 0, metadata !160, null}
!627 = metadata !{i32 649, i32 0, metadata !160, null}
!628 = metadata !{i32 666, i32 0, metadata !163, null}
!629 = metadata !{i32 668, i32 0, metadata !163, null}
!630 = metadata !{i32 669, i32 0, metadata !163, null}
!631 = metadata !{i32 670, i32 0, metadata !163, null}
!632 = metadata !{i32 671, i32 0, metadata !163, null}
!633 = metadata !{i32 672, i32 0, metadata !163, null}
!634 = metadata !{i32 673, i32 0, metadata !163, null}
!635 = metadata !{i32 674, i32 0, metadata !163, null}
!636 = metadata !{i32 675, i32 0, metadata !163, null}
!637 = metadata !{i32 676, i32 0, metadata !163, null}
!638 = metadata !{i32 677, i32 0, metadata !163, null}
!639 = metadata !{i32 678, i32 0, metadata !163, null}
!640 = metadata !{i32 679, i32 0, metadata !163, null}
!641 = metadata !{i32 680, i32 0, metadata !163, null}
!642 = metadata !{i32 681, i32 0, metadata !163, null}
!643 = metadata !{i32 682, i32 0, metadata !163, null}
!644 = metadata !{i32 695, i32 0, metadata !166, null}
!645 = metadata !{i32 697, i32 0, metadata !166, null}
!646 = metadata !{i32 698, i32 0, metadata !166, null}
!647 = metadata !{i32 699, i32 0, metadata !166, null}
!648 = metadata !{i32 700, i32 0, metadata !166, null}
!649 = metadata !{i32 701, i32 0, metadata !166, null}
!650 = metadata !{i32 702, i32 0, metadata !166, null}
!651 = metadata !{i32 703, i32 0, metadata !166, null}
!652 = metadata !{i32 704, i32 0, metadata !166, null}
!653 = metadata !{i32 705, i32 0, metadata !166, null}
!654 = metadata !{i32 706, i32 0, metadata !166, null}
!655 = metadata !{i32 707, i32 0, metadata !166, null}
!656 = metadata !{i32 708, i32 0, metadata !166, null}
!657 = metadata !{i32 709, i32 0, metadata !166, null}
!658 = metadata !{i32 710, i32 0, metadata !166, null}
!659 = metadata !{i32 711, i32 0, metadata !166, null}
!660 = metadata !{i32 740, i32 0, metadata !169, null}
!661 = metadata !{i32 747, i32 0, metadata !169, null}
!662 = metadata !{i32 748, i32 0, metadata !169, null}
!663 = metadata !{i32 749, i32 0, metadata !169, null}
!664 = metadata !{i32 750, i32 0, metadata !169, null}
!665 = metadata !{i32 751, i32 0, metadata !169, null}
!666 = metadata !{i32 752, i32 0, metadata !169, null}
!667 = metadata !{i32 753, i32 0, metadata !169, null}
!668 = metadata !{i32 754, i32 0, metadata !169, null}
!669 = metadata !{i32 758, i32 0, metadata !169, null}
!670 = metadata !{i32 759, i32 0, metadata !169, null}
!671 = metadata !{i32 763, i32 0, metadata !169, null}
!672 = metadata !{i32 764, i32 0, metadata !169, null}
!673 = metadata !{i32 765, i32 0, metadata !674, null}
!674 = metadata !{i32 786443, metadata !1, metadata !169, i32 765, i32 0, i32 39} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/plan7.c]
!675 = metadata !{i32 766, i32 0, metadata !674, null}
!676 = metadata !{i32 767, i32 0, metadata !169, null}
!677 = metadata !{i32 768, i32 0, metadata !169, null}
!678 = metadata !{i32 769, i32 0, metadata !169, null}
!679 = metadata !{i32 790, i32 0, metadata !178, null}
!680 = metadata !{i32 797, i32 0, metadata !178, null}
!681 = metadata !{i32 798, i32 0, metadata !178, null}
!682 = metadata !{i32 799, i32 0, metadata !178, null}
!683 = metadata !{i32 800, i32 0, metadata !178, null}
!684 = metadata !{i32 801, i32 0, metadata !178, null}
!685 = metadata !{i32 802, i32 0, metadata !178, null}
!686 = metadata !{i32 803, i32 0, metadata !178, null}
!687 = metadata !{i32 804, i32 0, metadata !178, null}
!688 = metadata !{i32 808, i32 0, metadata !178, null}
!689 = metadata !{i32 809, i32 0, metadata !178, null}
!690 = metadata !{i32 813, i32 0, metadata !178, null}
!691 = metadata !{i32 814, i32 0, metadata !178, null}
!692 = metadata !{i32 815, i32 0, metadata !693, null}
!693 = metadata !{i32 786443, metadata !1, metadata !178, i32 815, i32 0, i32 40} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/plan7.c]
!694 = metadata !{i32 816, i32 0, metadata !693, null}
!695 = metadata !{i32 817, i32 0, metadata !178, null}
!696 = metadata !{i32 818, i32 0, metadata !178, null}
!697 = metadata !{i32 819, i32 0, metadata !178, null}
!698 = metadata !{i32 838, i32 0, metadata !185, null}
!699 = metadata !{i32 839, i32 0, metadata !185, null}
!700 = metadata !{float* null}
!701 = metadata !{i32 846, i32 0, metadata !185, null}
!702 = metadata !{i32 849, i32 0, metadata !185, null}
!703 = metadata !{i32 850, i32 0, metadata !185, null}
!704 = metadata !{i32 851, i32 0, metadata !185, null}
!705 = metadata !{i32 852, i32 0, metadata !185, null}
!706 = metadata !{i32 853, i32 0, metadata !185, null}
!707 = metadata !{i32 854, i32 0, metadata !185, null}
!708 = metadata !{i32 855, i32 0, metadata !185, null}
!709 = metadata !{i32 856, i32 0, metadata !185, null}
!710 = metadata !{i32 858, i32 0, metadata !185, null}
!711 = metadata !{i32 859, i32 0, metadata !185, null}
!712 = metadata !{i32 860, i32 0, metadata !185, null}
!713 = metadata !{i32 861, i32 0, metadata !185, null}
!714 = metadata !{i32 864, i32 0, metadata !715, null}
!715 = metadata !{i32 786443, metadata !1, metadata !185, i32 864, i32 0, i32 41} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/plan7.c]
!716 = metadata !{i32 867, i32 0, metadata !717, null}
!717 = metadata !{i32 786443, metadata !1, metadata !718, i32 867, i32 0, i32 43} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/plan7.c]
!718 = metadata !{i32 786443, metadata !1, metadata !715, i32 865, i32 0, i32 42} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/plan7.c]
!719 = metadata !{i32 878, i32 0, metadata !185, null}
!720 = metadata !{i32 897, i32 0, metadata !198, null}
!721 = metadata !{i32 898, i32 0, metadata !198, null}
!722 = metadata !{i32 905, i32 0, metadata !198, null}
!723 = metadata !{i32 908, i32 0, metadata !198, null}
!724 = metadata !{i32 909, i32 0, metadata !198, null}
!725 = metadata !{i32 910, i32 0, metadata !198, null}
!726 = metadata !{i32 911, i32 0, metadata !727, null}
!727 = metadata !{i32 786443, metadata !1, metadata !198, i32 911, i32 0, i32 45} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/plan7.c]
!728 = metadata !{i32 913, i32 0, metadata !729, null}
!729 = metadata !{i32 786443, metadata !1, metadata !727, i32 911, i32 0, i32 46} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/plan7.c]
!730 = metadata !{i32 914, i32 0, metadata !729, null}
!731 = metadata !{i32 915, i32 0, metadata !729, null}
!732 = metadata !{i32 916, i32 0, metadata !729, null}
!733 = metadata !{i32 917, i32 0, metadata !729, null}
!734 = metadata !{i32 919, i32 0, metadata !198, null}
!735 = metadata !{i32 924, i32 0, metadata !198, null}
!736 = metadata !{i32 920, i32 0, metadata !737, null}
!737 = metadata !{i32 786443, metadata !1, metadata !198, i32 919, i32 0, i32 47} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/plan7.c]
!738 = metadata !{i32 921, i32 0, metadata !737, null}
!739 = metadata !{i32 925, i32 0, metadata !198, null}
!740 = metadata !{i32 926, i32 0, metadata !198, null}
!741 = metadata !{i32 927, i32 0, metadata !198, null}
!742 = metadata !{i32 928, i32 0, metadata !198, null}
!743 = metadata !{i32 1006, i32 0, metadata !284, null}
!744 = metadata !{i32 1011, i32 0, metadata !284, null}
!745 = metadata !{i32 1013, i32 0, metadata !746, null}
!746 = metadata !{i32 786443, metadata !1, metadata !284, i32 1013, i32 0, i32 51} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/plan7.c]
!747 = metadata !{i32 1015, i32 0, metadata !748, null}
!748 = metadata !{i32 786443, metadata !1, metadata !746, i32 1014, i32 0, i32 52} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/plan7.c]
!749 = metadata !{i32 1018, i32 0, metadata !748, null}
!750 = metadata !{i32 1020, i32 0, metadata !748, null}
!751 = metadata !{i32 1024, i32 0, metadata !752, null}
!752 = metadata !{i32 786443, metadata !1, metadata !284, i32 1024, i32 0, i32 53} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/plan7.c]
!753 = metadata !{i32 1025, i32 0, metadata !754, null}
!754 = metadata !{i32 786443, metadata !1, metadata !752, i32 1025, i32 0, i32 54} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/plan7.c]
!755 = metadata !{i32 1026, i32 0, metadata !754, null}
!756 = metadata !{i32 1016, i32 0, metadata !748, null}
!757 = metadata !{i32 1017, i32 0, metadata !748, null}
!758 = metadata !{i32 1019, i32 0, metadata !748, null}
!759 = metadata !{i32 1021, i32 0, metadata !748, null}
!760 = metadata !{i32 1028, i32 0, metadata !761, null}
!761 = metadata !{i32 786443, metadata !1, metadata !284, i32 1028, i32 0, i32 55} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/plan7.c]
!762 = metadata !{i32 1029, i32 0, metadata !763, null}
!763 = metadata !{i32 786443, metadata !1, metadata !761, i32 1029, i32 0, i32 56} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/plan7.c]
!764 = metadata !{i32 1030, i32 0, metadata !763, null}
!765 = metadata !{i32 1032, i32 0, metadata !284, null}
!766 = metadata !{i32 1035, i32 0, metadata !284, null}
!767 = metadata !{i32 1036, i32 0, metadata !768, null}
!768 = metadata !{i32 786443, metadata !1, metadata !284, i32 1036, i32 0, i32 57} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/plan7.c]
!769 = metadata !{i32 1037, i32 0, metadata !768, null}
!770 = metadata !{i32 1039, i32 0, metadata !284, null}
!771 = metadata !{i32 1040, i32 0, metadata !284, null}
!772 = metadata !{i32 1041, i32 0, metadata !284, null}
!773 = metadata !{i32 1042, i32 0, metadata !774, null}
!774 = metadata !{i32 786443, metadata !1, metadata !284, i32 1041, i32 0, i32 58} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/plan7.c]
!775 = metadata !{i32 1043, i32 0, metadata !774, null}
!776 = metadata !{i32 1045, i32 0, metadata !284, null}
!777 = metadata !{i32 1044, i32 0, metadata !774, null}
!778 = metadata !{i32 1052, i32 0, metadata !284, null}
!779 = metadata !{i32 1046, i32 0, metadata !780, null}
!780 = metadata !{i32 786443, metadata !1, metadata !284, i32 1045, i32 0, i32 59} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/plan7.c]
!781 = metadata !{i32 1047, i32 0, metadata !780, null}
!782 = metadata !{i32 1048, i32 0, metadata !780, null}
!783 = metadata !{i32 1050, i32 0, metadata !284, null}
!784 = metadata !{i32 1051, i32 0, metadata !284, null}
!785 = metadata !{i32 1053, i32 0, metadata !284, null}
!786 = metadata !{i32 1054, i32 0, metadata !284, null}
!787 = metadata !{i32 1055, i32 0, metadata !284, null}
