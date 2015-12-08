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
  %call.i = tail call i8* @sre_malloc(i8* getelementptr inbounds ([51 x i8]* @.str, i64 0, i64 0), i32 54, i64 464) #7
  %0 = bitcast i8* %call.i to %struct.plan7_s*
  %ctime.i = getelementptr inbounds i8* %call.i, i64 64
  %tpri.i = getelementptr inbounds i8* %call.i, i64 88
  %t.i = getelementptr inbounds i8* %call.i, i64 144
  %tsc.i = getelementptr inbounds i8* %call.i, i64 312
  %begin.i = getelementptr inbounds i8* %call.i, i64 208
  %bsc_mem.i = getelementptr inbounds i8* %call.i, i64 408
  %bsc.i = getelementptr inbounds i8* %call.i, i64 368
  %dna2.i = getelementptr inbounds i8* %call.i, i64 440
  %1 = bitcast i8* %dna2.i to i32*
  tail call void @llvm.memset.p0i8.i64(i8* %call.i, i8 0, i64 60, i32 8, i1 false) #6
  tail call void @llvm.memset.p0i8.i64(i8* %ctime.i, i8 0, i64 20, i32 8, i1 false) #6
  tail call void @llvm.memset.p0i8.i64(i8* %tpri.i, i8 0, i64 52, i32 8, i1 false) #6
  tail call void @llvm.memset.p0i8.i64(i8* %t.i, i8 0, i64 24, i32 8, i1 false) #6
  tail call void @llvm.memset.p0i8.i64(i8* %begin.i, i8 0, i64 16, i32 8, i1 false) #6
  tail call void @llvm.memset.p0i8.i64(i8* %tsc.i, i8 0, i64 24, i32 8, i1 false) #6
  tail call void @llvm.memset.p0i8.i64(i8* %bsc.i, i8 0, i64 32, i32 8, i1 false) #6
  tail call void @llvm.memset.p0i8.i64(i8* %bsc_mem.i, i8 0, i64 32, i32 8, i1 false) #6
  store i32 -987654321, i32* %1, align 4, !tbaa !0
  %dna4.i = getelementptr inbounds i8* %call.i, i64 444
  %2 = bitcast i8* %dna4.i to i32*
  store i32 -987654321, i32* %2, align 4, !tbaa !0
  %mu.i = getelementptr inbounds i8* %call.i, i64 448
  %3 = bitcast i8* %mu.i to float*
  store float 0.000000e+00, float* %3, align 4, !tbaa !3
  %lambda.i = getelementptr inbounds i8* %call.i, i64 452
  %4 = bitcast i8* %lambda.i to float*
  store float 0.000000e+00, float* %4, align 4, !tbaa !3
  %flags.i = getelementptr inbounds i8* %call.i, i64 456
  %5 = bitcast i8* %flags.i to i32*
  store i32 0, i32* %5, align 4, !tbaa !0
  tail call void @AllocPlan7Body(%struct.plan7_s* %0, i32 %M) #8
  ret %struct.plan7_s* %0
}

; Function Attrs: nounwind optsize uwtable
define %struct.plan7_s* @AllocPlan7Shell() #0 {
entry:
  %call = tail call i8* @sre_malloc(i8* getelementptr inbounds ([51 x i8]* @.str, i64 0, i64 0), i32 54, i64 464) #7
  %0 = bitcast i8* %call to %struct.plan7_s*
  %ctime = getelementptr inbounds i8* %call, i64 64
  %tpri = getelementptr inbounds i8* %call, i64 88
  %t = getelementptr inbounds i8* %call, i64 144
  %tsc = getelementptr inbounds i8* %call, i64 312
  %begin = getelementptr inbounds i8* %call, i64 208
  %bsc_mem = getelementptr inbounds i8* %call, i64 408
  %bsc = getelementptr inbounds i8* %call, i64 368
  %dna2 = getelementptr inbounds i8* %call, i64 440
  %1 = bitcast i8* %dna2 to i32*
  call void @llvm.memset.p0i8.i64(i8* %call, i8 0, i64 60, i32 8, i1 false)
  call void @llvm.memset.p0i8.i64(i8* %ctime, i8 0, i64 20, i32 8, i1 false)
  call void @llvm.memset.p0i8.i64(i8* %tpri, i8 0, i64 52, i32 8, i1 false)
  call void @llvm.memset.p0i8.i64(i8* %t, i8 0, i64 24, i32 8, i1 false)
  call void @llvm.memset.p0i8.i64(i8* %begin, i8 0, i64 16, i32 8, i1 false)
  call void @llvm.memset.p0i8.i64(i8* %tsc, i8 0, i64 24, i32 8, i1 false)
  call void @llvm.memset.p0i8.i64(i8* %bsc, i8 0, i64 32, i32 8, i1 false)
  call void @llvm.memset.p0i8.i64(i8* %bsc_mem, i8 0, i64 32, i32 8, i1 false)
  store i32 -987654321, i32* %1, align 4, !tbaa !0
  %dna4 = getelementptr inbounds i8* %call, i64 444
  %2 = bitcast i8* %dna4 to i32*
  store i32 -987654321, i32* %2, align 4, !tbaa !0
  %mu = getelementptr inbounds i8* %call, i64 448
  %3 = bitcast i8* %mu to float*
  store float 0.000000e+00, float* %3, align 4, !tbaa !3
  %lambda = getelementptr inbounds i8* %call, i64 452
  %4 = bitcast i8* %lambda to float*
  store float 0.000000e+00, float* %4, align 4, !tbaa !3
  %flags = getelementptr inbounds i8* %call, i64 456
  %5 = bitcast i8* %flags to i32*
  store i32 0, i32* %5, align 4, !tbaa !0
  ret %struct.plan7_s* %0
}

; Function Attrs: nounwind optsize uwtable
define void @AllocPlan7Body(%struct.plan7_s* nocapture %hmm, i32 %M) #0 {
entry:
  %M1 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 20
  store i32 %M, i32* %M1, align 4, !tbaa !0
  %add = add nsw i32 %M, 2
  %conv = sext i32 %add to i64
  %call = tail call i8* @sre_malloc(i8* getelementptr inbounds ([51 x i8]* @.str, i64 0, i64 0), i32 111, i64 %conv) #7
  %rf = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 3
  store i8* %call, i8** %rf, align 8, !tbaa !4
  %call5 = tail call i8* @sre_malloc(i8* getelementptr inbounds ([51 x i8]* @.str, i64 0, i64 0), i32 112, i64 %conv) #7
  %cs = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 4
  store i8* %call5, i8** %cs, align 8, !tbaa !4
  %call9 = tail call i8* @sre_malloc(i8* getelementptr inbounds ([51 x i8]* @.str, i64 0, i64 0), i32 113, i64 %conv) #7
  %ca = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 5
  store i8* %call9, i8** %ca, align 8, !tbaa !4
  %add10 = add i32 %M, 1
  %conv11 = sext i32 %add10 to i64
  %mul12 = shl nsw i64 %conv11, 2
  %call13 = tail call i8* @sre_malloc(i8* getelementptr inbounds ([51 x i8]* @.str, i64 0, i64 0), i32 114, i64 %mul12) #7
  %0 = bitcast i8* %call13 to i32*
  %map = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 9
  store i32* %0, i32** %map, align 8, !tbaa !4
  %conv14 = sext i32 %M to i64
  %mul15 = shl nsw i64 %conv14, 3
  %call16 = tail call i8* @sre_malloc(i8* getelementptr inbounds ([51 x i8]* @.str, i64 0, i64 0), i32 116, i64 %mul15) #7
  %1 = bitcast i8* %call16 to float**
  %t = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 21
  store float** %1, float*** %t, align 8, !tbaa !4
  %mul19 = shl nsw i64 %conv11, 3
  %call20 = tail call i8* @sre_malloc(i8* getelementptr inbounds ([51 x i8]* @.str, i64 0, i64 0), i32 117, i64 %mul19) #7
  %2 = bitcast i8* %call20 to float**
  %mat = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 22
  store float** %2, float*** %mat, align 8, !tbaa !4
  %call23 = tail call i8* @sre_malloc(i8* getelementptr inbounds ([51 x i8]* @.str, i64 0, i64 0), i32 118, i64 %mul15) #7
  %3 = bitcast i8* %call23 to float**
  %ins = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 23
  store float** %3, float*** %ins, align 8, !tbaa !4
  %mul24 = mul nsw i32 %M, 7
  %conv25 = sext i32 %mul24 to i64
  %mul26 = shl nsw i64 %conv25, 2
  %call27 = tail call i8* @sre_malloc(i8* getelementptr inbounds ([51 x i8]* @.str, i64 0, i64 0), i32 119, i64 %mul26) #7
  %4 = bitcast i8* %call27 to float*
  %5 = load float*** %t, align 8, !tbaa !4
  store float* %4, float** %5, align 8, !tbaa !4
  %mul30 = mul nsw i32 %add10, 20
  %conv31 = sext i32 %mul30 to i64
  %mul32 = shl nsw i64 %conv31, 2
  %call33 = tail call i8* @sre_malloc(i8* getelementptr inbounds ([51 x i8]* @.str, i64 0, i64 0), i32 120, i64 %mul32) #7
  %6 = bitcast i8* %call33 to float*
  %7 = load float*** %mat, align 8, !tbaa !4
  store float* %6, float** %7, align 8, !tbaa !4
  %mul36 = mul nsw i32 %M, 20
  %conv37 = sext i32 %mul36 to i64
  %mul38 = shl nsw i64 %conv37, 2
  %call39 = tail call i8* @sre_malloc(i8* getelementptr inbounds ([51 x i8]* @.str, i64 0, i64 0), i32 121, i64 %mul38) #7
  %8 = bitcast i8* %call39 to float*
  %9 = load float*** %ins, align 8, !tbaa !4
  store float* %8, float** %9, align 8, !tbaa !4
  %call42 = tail call i8* @sre_malloc(i8* getelementptr inbounds ([51 x i8]* @.str, i64 0, i64 0), i32 123, i64 56) #7
  %10 = bitcast i8* %call42 to i32**
  %tsc = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 30
  store i32** %10, i32*** %tsc, align 8, !tbaa !4
  %call43 = tail call i8* @sre_malloc(i8* getelementptr inbounds ([51 x i8]* @.str, i64 0, i64 0), i32 124, i64 192) #7
  %11 = bitcast i8* %call43 to i32**
  %msc = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 31
  store i32** %11, i32*** %msc, align 8, !tbaa !4
  %call44 = tail call i8* @sre_malloc(i8* getelementptr inbounds ([51 x i8]* @.str, i64 0, i64 0), i32 125, i64 192) #7
  %12 = bitcast i8* %call44 to i32**
  %isc = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 32
  store i32** %12, i32*** %isc, align 8, !tbaa !4
  %call48 = tail call i8* @sre_malloc(i8* getelementptr inbounds ([51 x i8]* @.str, i64 0, i64 0), i32 126, i64 %mul26) #7
  %13 = bitcast i8* %call48 to i32*
  %tsc_mem = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 36
  store i32* %13, i32** %tsc_mem, align 8, !tbaa !4
  %mul50 = mul nsw i32 %add10, 24
  %conv51 = sext i32 %mul50 to i64
  %mul52 = shl nsw i64 %conv51, 2
  %call53 = tail call i8* @sre_malloc(i8* getelementptr inbounds ([51 x i8]* @.str, i64 0, i64 0), i32 127, i64 %mul52) #7
  %14 = bitcast i8* %call53 to i32*
  %msc_mem = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 37
  store i32* %14, i32** %msc_mem, align 8, !tbaa !4
  %mul54 = mul nsw i32 %M, 24
  %conv55 = sext i32 %mul54 to i64
  %mul56 = shl nsw i64 %conv55, 2
  %call57 = tail call i8* @sre_malloc(i8* getelementptr inbounds ([51 x i8]* @.str, i64 0, i64 0), i32 128, i64 %mul56) #7
  %15 = bitcast i8* %call57 to i32*
  %isc_mem = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 38
  store i32* %15, i32** %isc_mem, align 8, !tbaa !4
  %16 = load i32** %tsc_mem, align 8, !tbaa !4
  %17 = load i32*** %tsc, align 8, !tbaa !4
  store i32* %16, i32** %17, align 8, !tbaa !4
  %18 = load i32** %msc_mem, align 8, !tbaa !4
  %19 = load i32*** %msc, align 8, !tbaa !4
  store i32* %18, i32** %19, align 8, !tbaa !4
  %20 = load i32** %isc_mem, align 8, !tbaa !4
  %21 = load i32*** %isc, align 8, !tbaa !4
  store i32* %20, i32** %21, align 8, !tbaa !4
  %cmp247 = icmp slt i32 %M, 1
  br i1 %cmp247, label %for.body94, label %for.body

for.body:                                         ; preds = %entry, %for.inc
  %indvars.iv257 = phi i64 [ %indvars.iv.next258, %for.inc ], [ 1, %entry ]
  %22 = load float*** %mat, align 8, !tbaa !4
  %23 = load float** %22, align 8, !tbaa !4
  %24 = trunc i64 %indvars.iv257 to i32
  %sext = mul i64 %indvars.iv257, 85899345920
  %idx.ext = ashr exact i64 %sext, 32
  %add.ptr = getelementptr inbounds float* %23, i64 %idx.ext
  %arrayidx72 = getelementptr inbounds float** %22, i64 %indvars.iv257
  store float* %add.ptr, float** %arrayidx72, align 8, !tbaa !4
  %cmp73 = icmp slt i32 %24, %M
  br i1 %cmp73, label %if.then, label %for.inc

if.then:                                          ; preds = %for.body
  %25 = load float*** %ins, align 8, !tbaa !4
  %26 = load float** %25, align 8, !tbaa !4
  %add.ptr79 = getelementptr inbounds float* %26, i64 %idx.ext
  %arrayidx82 = getelementptr inbounds float** %25, i64 %indvars.iv257
  store float* %add.ptr79, float** %arrayidx82, align 8, !tbaa !4
  %27 = load float*** %t, align 8, !tbaa !4
  %28 = load float** %27, align 8, !tbaa !4
  %sext261 = mul i64 %indvars.iv257, 30064771072
  %idx.ext86 = ashr exact i64 %sext261, 32
  %add.ptr87 = getelementptr inbounds float* %28, i64 %idx.ext86
  %arrayidx90 = getelementptr inbounds float** %27, i64 %indvars.iv257
  store float* %add.ptr87, float** %arrayidx90, align 8, !tbaa !4
  br label %for.inc

for.inc:                                          ; preds = %for.body, %if.then
  %indvars.iv.next258 = add i64 %indvars.iv257, 1
  %lftr.wideiv259 = trunc i64 %indvars.iv.next258 to i32
  %exitcond260 = icmp eq i32 %lftr.wideiv259, %add10
  br i1 %exitcond260, label %for.body94, label %for.body

for.body94:                                       ; preds = %entry, %for.inc, %for.body94
  %indvars.iv253 = phi i64 [ %indvars.iv.next254, %for.body94 ], [ 1, %for.inc ], [ 1, %entry ]
  %29 = load i32*** %msc, align 8, !tbaa !4
  %30 = load i32** %29, align 8, !tbaa !4
  %31 = trunc i64 %indvars.iv253 to i32
  %mul98 = mul nsw i32 %31, %add10
  %idx.ext99 = sext i32 %mul98 to i64
  %add.ptr100 = getelementptr inbounds i32* %30, i64 %idx.ext99
  %arrayidx103 = getelementptr inbounds i32** %29, i64 %indvars.iv253
  store i32* %add.ptr100, i32** %arrayidx103, align 8, !tbaa !4
  %32 = load i32*** %isc, align 8, !tbaa !4
  %33 = load i32** %32, align 8, !tbaa !4
  %mul106 = mul nsw i32 %31, %M
  %idx.ext107 = sext i32 %mul106 to i64
  %add.ptr108 = getelementptr inbounds i32* %33, i64 %idx.ext107
  %arrayidx111 = getelementptr inbounds i32** %32, i64 %indvars.iv253
  store i32* %add.ptr108, i32** %arrayidx111, align 8, !tbaa !4
  %indvars.iv.next254 = add i64 %indvars.iv253, 1
  %lftr.wideiv255 = trunc i64 %indvars.iv.next254 to i32
  %exitcond256 = icmp eq i32 %lftr.wideiv255, 24
  br i1 %exitcond256, label %for.body118, label %for.body94

for.cond130.preheader:                            ; preds = %for.body118
  %34 = load i32*** %tsc, align 8, !tbaa !4
  br label %for.body133

for.body118:                                      ; preds = %for.body94, %for.body118
  %indvars.iv249 = phi i64 [ %indvars.iv.next250, %for.body118 ], [ 0, %for.body94 ]
  %35 = load i32*** %tsc, align 8, !tbaa !4
  %36 = load i32** %35, align 8, !tbaa !4
  %37 = trunc i64 %indvars.iv249 to i32
  %mul121 = mul nsw i32 %37, %M
  %idx.ext122 = sext i32 %mul121 to i64
  %add.ptr123 = getelementptr inbounds i32* %36, i64 %idx.ext122
  %arrayidx126 = getelementptr inbounds i32** %35, i64 %indvars.iv249
  store i32* %add.ptr123, i32** %arrayidx126, align 8, !tbaa !4
  %indvars.iv.next250 = add i64 %indvars.iv249, 1
  %lftr.wideiv251 = trunc i64 %indvars.iv.next250 to i32
  %exitcond252 = icmp eq i32 %lftr.wideiv251, 7
  br i1 %exitcond252, label %for.cond130.preheader, label %for.body118

for.body133:                                      ; preds = %for.body133, %for.cond130.preheader
  %indvars.iv = phi i64 [ 0, %for.cond130.preheader ], [ %indvars.iv.next, %for.body133 ]
  %arrayidx136 = getelementptr inbounds i32** %34, i64 %indvars.iv
  %38 = load i32** %arrayidx136, align 8, !tbaa !4
  store i32 -987654321, i32* %38, align 4, !tbaa !0
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, 7
  br i1 %exitcond, label %for.end140, label %for.body133

for.end140:                                       ; preds = %for.body133
  %call144 = tail call i8* @sre_malloc(i8* getelementptr inbounds ([51 x i8]* @.str, i64 0, i64 0), i32 157, i64 %mul12) #7
  %39 = bitcast i8* %call144 to float*
  %begin = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 26
  store float* %39, float** %begin, align 8, !tbaa !4
  %call148 = tail call i8* @sre_malloc(i8* getelementptr inbounds ([51 x i8]* @.str, i64 0, i64 0), i32 158, i64 %mul12) #7
  %40 = bitcast i8* %call148 to float*
  %end = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 27
  store float* %40, float** %end, align 8, !tbaa !4
  %call152 = tail call i8* @sre_malloc(i8* getelementptr inbounds ([51 x i8]* @.str, i64 0, i64 0), i32 160, i64 %mul12) #7
  %41 = bitcast i8* %call152 to i32*
  %bsc_mem = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 39
  store i32* %41, i32** %bsc_mem, align 8, !tbaa !4
  %call156 = tail call i8* @sre_malloc(i8* getelementptr inbounds ([51 x i8]* @.str, i64 0, i64 0), i32 161, i64 %mul12) #7
  %42 = bitcast i8* %call156 to i32*
  %esc_mem = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 40
  store i32* %42, i32** %esc_mem, align 8, !tbaa !4
  %43 = load i32** %bsc_mem, align 8, !tbaa !4
  %bsc = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 34
  store i32* %43, i32** %bsc, align 8, !tbaa !4
  %esc = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 35
  store i32* %42, i32** %esc, align 8, !tbaa !4
  ret void
}

; Function Attrs: optsize
declare i8* @sre_malloc(i8*, i32, i64) #1

; Function Attrs: nounwind optsize uwtable
define void @FreePlan7(%struct.plan7_s* %hmm) #0 {
entry:
  %name = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 0
  %0 = load i8** %name, align 8, !tbaa !4
  %cmp = icmp eq i8* %0, null
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  tail call void @free(i8* %0) #7
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  %acc = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 1
  %1 = load i8** %acc, align 8, !tbaa !4
  %cmp2 = icmp eq i8* %1, null
  br i1 %cmp2, label %if.end5, label %if.then3

if.then3:                                         ; preds = %if.end
  tail call void @free(i8* %1) #7
  br label %if.end5

if.end5:                                          ; preds = %if.end, %if.then3
  %desc = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 2
  %2 = load i8** %desc, align 8, !tbaa !4
  %cmp6 = icmp eq i8* %2, null
  br i1 %cmp6, label %if.end9, label %if.then7

if.then7:                                         ; preds = %if.end5
  tail call void @free(i8* %2) #7
  br label %if.end9

if.end9:                                          ; preds = %if.end5, %if.then7
  %rf = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 3
  %3 = load i8** %rf, align 8, !tbaa !4
  %cmp10 = icmp eq i8* %3, null
  br i1 %cmp10, label %if.end13, label %if.then11

if.then11:                                        ; preds = %if.end9
  tail call void @free(i8* %3) #7
  br label %if.end13

if.end13:                                         ; preds = %if.end9, %if.then11
  %cs = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 4
  %4 = load i8** %cs, align 8, !tbaa !4
  %cmp14 = icmp eq i8* %4, null
  br i1 %cmp14, label %if.end17, label %if.then15

if.then15:                                        ; preds = %if.end13
  tail call void @free(i8* %4) #7
  br label %if.end17

if.end17:                                         ; preds = %if.end13, %if.then15
  %ca = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 5
  %5 = load i8** %ca, align 8, !tbaa !4
  %cmp18 = icmp eq i8* %5, null
  br i1 %cmp18, label %if.end21, label %if.then19

if.then19:                                        ; preds = %if.end17
  tail call void @free(i8* %5) #7
  br label %if.end21

if.end21:                                         ; preds = %if.end17, %if.then19
  %comlog = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 6
  %6 = load i8** %comlog, align 8, !tbaa !4
  %cmp22 = icmp eq i8* %6, null
  br i1 %cmp22, label %if.end25, label %if.then23

if.then23:                                        ; preds = %if.end21
  tail call void @free(i8* %6) #7
  br label %if.end25

if.end25:                                         ; preds = %if.end21, %if.then23
  %ctime = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 8
  %7 = load i8** %ctime, align 8, !tbaa !4
  %cmp26 = icmp eq i8* %7, null
  br i1 %cmp26, label %if.end29, label %if.then27

if.then27:                                        ; preds = %if.end25
  tail call void @free(i8* %7) #7
  br label %if.end29

if.end29:                                         ; preds = %if.end25, %if.then27
  %map = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 9
  %8 = load i32** %map, align 8, !tbaa !4
  %cmp30 = icmp eq i32* %8, null
  br i1 %cmp30, label %if.end33, label %if.then31

if.then31:                                        ; preds = %if.end29
  %9 = bitcast i32* %8 to i8*
  tail call void @free(i8* %9) #7
  br label %if.end33

if.end33:                                         ; preds = %if.end29, %if.then31
  %tpri = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 11
  %10 = load i32** %tpri, align 8, !tbaa !4
  %cmp34 = icmp eq i32* %10, null
  br i1 %cmp34, label %if.end37, label %if.then35

if.then35:                                        ; preds = %if.end33
  %11 = bitcast i32* %10 to i8*
  tail call void @free(i8* %11) #7
  br label %if.end37

if.end37:                                         ; preds = %if.end33, %if.then35
  %mpri = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 12
  %12 = load i32** %mpri, align 8, !tbaa !4
  %cmp38 = icmp eq i32* %12, null
  br i1 %cmp38, label %if.end41, label %if.then39

if.then39:                                        ; preds = %if.end37
  %13 = bitcast i32* %12 to i8*
  tail call void @free(i8* %13) #7
  br label %if.end41

if.end41:                                         ; preds = %if.end37, %if.then39
  %ipri = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 13
  %14 = load i32** %ipri, align 8, !tbaa !4
  %cmp42 = icmp eq i32* %14, null
  br i1 %cmp42, label %if.end45, label %if.then43

if.then43:                                        ; preds = %if.end41
  %15 = bitcast i32* %14 to i8*
  tail call void @free(i8* %15) #7
  br label %if.end45

if.end45:                                         ; preds = %if.end41, %if.then43
  %bsc_mem = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 39
  %16 = load i32** %bsc_mem, align 8, !tbaa !4
  %cmp46 = icmp eq i32* %16, null
  br i1 %cmp46, label %if.end49, label %if.then47

if.then47:                                        ; preds = %if.end45
  %17 = bitcast i32* %16 to i8*
  tail call void @free(i8* %17) #7
  br label %if.end49

if.end49:                                         ; preds = %if.end45, %if.then47
  %begin = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 26
  %18 = load float** %begin, align 8, !tbaa !4
  %cmp50 = icmp eq float* %18, null
  br i1 %cmp50, label %if.end53, label %if.then51

if.then51:                                        ; preds = %if.end49
  %19 = bitcast float* %18 to i8*
  tail call void @free(i8* %19) #7
  br label %if.end53

if.end53:                                         ; preds = %if.end49, %if.then51
  %esc_mem = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 40
  %20 = load i32** %esc_mem, align 8, !tbaa !4
  %cmp54 = icmp eq i32* %20, null
  br i1 %cmp54, label %if.end57, label %if.then55

if.then55:                                        ; preds = %if.end53
  %21 = bitcast i32* %20 to i8*
  tail call void @free(i8* %21) #7
  br label %if.end57

if.end57:                                         ; preds = %if.end53, %if.then55
  %end = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 27
  %22 = load float** %end, align 8, !tbaa !4
  %cmp58 = icmp eq float* %22, null
  br i1 %cmp58, label %if.end61, label %if.then59

if.then59:                                        ; preds = %if.end57
  %23 = bitcast float* %22 to i8*
  tail call void @free(i8* %23) #7
  br label %if.end61

if.end61:                                         ; preds = %if.end57, %if.then59
  %msc_mem = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 37
  %24 = load i32** %msc_mem, align 8, !tbaa !4
  %cmp62 = icmp eq i32* %24, null
  br i1 %cmp62, label %if.end65, label %if.then63

if.then63:                                        ; preds = %if.end61
  %25 = bitcast i32* %24 to i8*
  tail call void @free(i8* %25) #7
  br label %if.end65

if.end65:                                         ; preds = %if.end61, %if.then63
  %isc_mem = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 38
  %26 = load i32** %isc_mem, align 8, !tbaa !4
  %cmp66 = icmp eq i32* %26, null
  br i1 %cmp66, label %if.end69, label %if.then67

if.then67:                                        ; preds = %if.end65
  %27 = bitcast i32* %26 to i8*
  tail call void @free(i8* %27) #7
  br label %if.end69

if.end69:                                         ; preds = %if.end65, %if.then67
  %tsc_mem = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 36
  %28 = load i32** %tsc_mem, align 8, !tbaa !4
  %cmp70 = icmp eq i32* %28, null
  br i1 %cmp70, label %if.end73, label %if.then71

if.then71:                                        ; preds = %if.end69
  %29 = bitcast i32* %28 to i8*
  tail call void @free(i8* %29) #7
  br label %if.end73

if.end73:                                         ; preds = %if.end69, %if.then71
  %mat = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 22
  %30 = load float*** %mat, align 8, !tbaa !4
  %cmp74 = icmp eq float** %30, null
  br i1 %cmp74, label %if.end77, label %if.then75

if.then75:                                        ; preds = %if.end73
  %31 = load float** %30, align 8, !tbaa !4
  %32 = bitcast float* %31 to i8*
  tail call void @free(i8* %32) #7
  br label %if.end77

if.end77:                                         ; preds = %if.end73, %if.then75
  %ins = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 23
  %33 = load float*** %ins, align 8, !tbaa !4
  %cmp78 = icmp eq float** %33, null
  br i1 %cmp78, label %if.end82, label %if.then79

if.then79:                                        ; preds = %if.end77
  %34 = load float** %33, align 8, !tbaa !4
  %35 = bitcast float* %34 to i8*
  tail call void @free(i8* %35) #7
  br label %if.end82

if.end82:                                         ; preds = %if.end77, %if.then79
  %t = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 21
  %36 = load float*** %t, align 8, !tbaa !4
  %cmp83 = icmp eq float** %36, null
  br i1 %cmp83, label %if.end87, label %if.then84

if.then84:                                        ; preds = %if.end82
  %37 = load float** %36, align 8, !tbaa !4
  %38 = bitcast float* %37 to i8*
  tail call void @free(i8* %38) #7
  br label %if.end87

if.end87:                                         ; preds = %if.end82, %if.then84
  %msc = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 31
  %39 = load i32*** %msc, align 8, !tbaa !4
  %cmp88 = icmp eq i32** %39, null
  br i1 %cmp88, label %if.end91, label %if.then89

if.then89:                                        ; preds = %if.end87
  %40 = bitcast i32** %39 to i8*
  tail call void @free(i8* %40) #7
  br label %if.end91

if.end91:                                         ; preds = %if.end87, %if.then89
  %isc = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 32
  %41 = load i32*** %isc, align 8, !tbaa !4
  %cmp92 = icmp eq i32** %41, null
  br i1 %cmp92, label %if.end95, label %if.then93

if.then93:                                        ; preds = %if.end91
  %42 = bitcast i32** %41 to i8*
  tail call void @free(i8* %42) #7
  br label %if.end95

if.end95:                                         ; preds = %if.end91, %if.then93
  %tsc = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 30
  %43 = load i32*** %tsc, align 8, !tbaa !4
  %cmp96 = icmp eq i32** %43, null
  br i1 %cmp96, label %if.end99, label %if.then97

if.then97:                                        ; preds = %if.end95
  %44 = bitcast i32** %43 to i8*
  tail call void @free(i8* %44) #7
  br label %if.end99

if.end99:                                         ; preds = %if.end95, %if.then97
  %45 = load float*** %mat, align 8, !tbaa !4
  %cmp101 = icmp eq float** %45, null
  br i1 %cmp101, label %if.end104, label %if.then102

if.then102:                                       ; preds = %if.end99
  %46 = bitcast float** %45 to i8*
  tail call void @free(i8* %46) #7
  br label %if.end104

if.end104:                                        ; preds = %if.end99, %if.then102
  %47 = load float*** %ins, align 8, !tbaa !4
  %cmp106 = icmp eq float** %47, null
  br i1 %cmp106, label %if.end109, label %if.then107

if.then107:                                       ; preds = %if.end104
  %48 = bitcast float** %47 to i8*
  tail call void @free(i8* %48) #7
  br label %if.end109

if.end109:                                        ; preds = %if.end104, %if.then107
  %49 = load float*** %t, align 8, !tbaa !4
  %cmp111 = icmp eq float** %49, null
  br i1 %cmp111, label %if.end114, label %if.then112

if.then112:                                       ; preds = %if.end109
  %50 = bitcast float** %49 to i8*
  tail call void @free(i8* %50) #7
  br label %if.end114

if.end114:                                        ; preds = %if.end109, %if.then112
  %dnam = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 41
  %51 = load i32*** %dnam, align 8, !tbaa !4
  %cmp115 = icmp eq i32** %51, null
  br i1 %cmp115, label %if.end118, label %if.then116

if.then116:                                       ; preds = %if.end114
  %52 = bitcast i32** %51 to i8*
  tail call void @free(i8* %52) #7
  br label %if.end118

if.end118:                                        ; preds = %if.end114, %if.then116
  %dnai = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 42
  %53 = load i32*** %dnai, align 8, !tbaa !4
  %cmp119 = icmp eq i32** %53, null
  br i1 %cmp119, label %if.end122, label %if.then120

if.then120:                                       ; preds = %if.end118
  %54 = bitcast i32** %53 to i8*
  tail call void @free(i8* %54) #7
  br label %if.end122

if.end122:                                        ; preds = %if.end118, %if.then120
  %55 = bitcast %struct.plan7_s* %hmm to i8*
  tail call void @free(i8* %55) #7
  ret void
}

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) #2

; Function Attrs: nounwind optsize uwtable
define void @ZeroPlan7(%struct.plan7_s* %hmm) #0 {
entry:
  %M = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 20
  %0 = load i32* %M, align 4, !tbaa !0
  %cmp43 = icmp sgt i32 %0, 1
  br i1 %cmp43, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  %mat7.pre = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 22
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %t = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 21
  %mat = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 22
  %ins = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 23
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %indvars.iv47 = phi i64 [ 1, %for.body.lr.ph ], [ %indvars.iv.next48, %for.body ]
  %1 = load float*** %t, align 8, !tbaa !4
  %arrayidx = getelementptr inbounds float** %1, i64 %indvars.iv47
  %2 = load float** %arrayidx, align 8, !tbaa !4
  tail call void @FSet(float* %2, i32 7, float 0.000000e+00) #7
  %3 = load float*** %mat, align 8, !tbaa !4
  %arrayidx2 = getelementptr inbounds float** %3, i64 %indvars.iv47
  %4 = load float** %arrayidx2, align 8, !tbaa !4
  %5 = load i32* @Alphabet_size, align 4, !tbaa !0
  tail call void @FSet(float* %4, i32 %5, float 0.000000e+00) #7
  %6 = load float*** %ins, align 8, !tbaa !4
  %arrayidx4 = getelementptr inbounds float** %6, i64 %indvars.iv47
  %7 = load float** %arrayidx4, align 8, !tbaa !4
  %8 = load i32* @Alphabet_size, align 4, !tbaa !0
  tail call void @FSet(float* %7, i32 %8, float 0.000000e+00) #7
  %indvars.iv.next48 = add i64 %indvars.iv47, 1
  %9 = load i32* %M, align 4, !tbaa !0
  %10 = trunc i64 %indvars.iv.next48 to i32
  %cmp = icmp slt i32 %10, %9
  br i1 %cmp, label %for.body, label %for.end

for.end:                                          ; preds = %for.body, %entry.for.end_crit_edge
  %mat7.pre-phi = phi float*** [ %mat7.pre, %entry.for.end_crit_edge ], [ %mat, %for.body ]
  %.lcssa = phi i32 [ %0, %entry.for.end_crit_edge ], [ %9, %for.body ]
  %idxprom6 = sext i32 %.lcssa to i64
  %11 = load float*** %mat7.pre-phi, align 8, !tbaa !4
  %arrayidx8 = getelementptr inbounds float** %11, i64 %idxprom6
  %12 = load float** %arrayidx8, align 8, !tbaa !4
  %13 = load i32* @Alphabet_size, align 4, !tbaa !0
  tail call void @FSet(float* %12, i32 %13, float 0.000000e+00) #7
  %tbd1 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 24
  store float 0.000000e+00, float* %tbd1, align 4, !tbaa !3
  %begin = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 26
  %14 = load float** %begin, align 8, !tbaa !4
  %add.ptr = getelementptr inbounds float* %14, i64 1
  %15 = load i32* %M, align 4, !tbaa !0
  tail call void @FSet(float* %add.ptr, i32 %15, float 0.000000e+00) #7
  %end = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 27
  %16 = load float** %end, align 8, !tbaa !4
  %add.ptr10 = getelementptr inbounds float* %16, i64 1
  %17 = load i32* %M, align 4, !tbaa !0
  tail call void @FSet(float* %add.ptr10, i32 %17, float 0.000000e+00) #7
  br label %for.body14

for.body14:                                       ; preds = %for.body14, %for.end
  %indvars.iv = phi i64 [ 0, %for.end ], [ %indvars.iv.next, %for.body14 ]
  %arraydecay = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 25, i64 %indvars.iv, i64 0
  tail call void @FSet(float* %arraydecay, i32 2, float 0.000000e+00) #7
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, 4
  br i1 %exitcond, label %for.end19, label %for.body14

for.end19:                                        ; preds = %for.body14
  %flags = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 47
  %18 = load i32* %flags, align 4, !tbaa !0
  %and21 = and i32 %18, -34
  store i32 %and21, i32* %flags, align 4, !tbaa !0
  ret void
}

; Function Attrs: optsize
declare void @FSet(float*, i32, float) #1

; Function Attrs: nounwind optsize uwtable
define void @Plan7SetName(%struct.plan7_s* nocapture %hmm, i8* %name) #0 {
entry:
  %name1 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 0
  %0 = load i8** %name1, align 8, !tbaa !4
  %cmp = icmp eq i8* %0, null
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  tail call void @free(i8* %0) #7
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  %call = tail call i8* @Strdup(i8* %name) #7
  store i8* %call, i8** %name1, align 8, !tbaa !4
  tail call void @StringChop(i8* %call) #7
  ret void
}

; Function Attrs: optsize
declare i8* @Strdup(i8*) #1

; Function Attrs: optsize
declare void @StringChop(i8*) #1

; Function Attrs: nounwind optsize uwtable
define void @Plan7SetAccession(%struct.plan7_s* nocapture %hmm, i8* %acc) #0 {
entry:
  %acc1 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 1
  %0 = load i8** %acc1, align 8, !tbaa !4
  %cmp = icmp eq i8* %0, null
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  tail call void @free(i8* %0) #7
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  %call = tail call i8* @Strdup(i8* %acc) #7
  store i8* %call, i8** %acc1, align 8, !tbaa !4
  tail call void @StringChop(i8* %call) #7
  %flags = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 47
  %1 = load i32* %flags, align 4, !tbaa !0
  %or = or i32 %1, 512
  store i32 %or, i32* %flags, align 4, !tbaa !0
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @Plan7SetDescription(%struct.plan7_s* nocapture %hmm, i8* %desc) #0 {
entry:
  %desc1 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 2
  %0 = load i8** %desc1, align 8, !tbaa !4
  %cmp = icmp eq i8* %0, null
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  tail call void @free(i8* %0) #7
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  %call = tail call i8* @Strdup(i8* %desc) #7
  store i8* %call, i8** %desc1, align 8, !tbaa !4
  tail call void @StringChop(i8* %call) #7
  %flags = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 47
  %1 = load i32* %flags, align 4, !tbaa !0
  %or = or i32 %1, 2
  store i32 %or, i32* %flags, align 4, !tbaa !0
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @Plan7ComlogAppend(%struct.plan7_s* nocapture %hmm, i32 %argc, i8** nocapture %argv) #0 {
entry:
  %cmp66 = icmp sgt i32 %argc, 0
  br i1 %cmp66, label %for.body, label %for.end

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv69 = phi i64 [ %indvars.iv.next70, %for.body ], [ 0, %entry ]
  %len.067 = phi i32 [ %conv1, %for.body ], [ %argc, %entry ]
  %arrayidx = getelementptr inbounds i8** %argv, i64 %indvars.iv69
  %0 = load i8** %arrayidx, align 8, !tbaa !4
  %call = tail call i64 @strlen(i8* %0) #9
  %conv63 = zext i32 %len.067 to i64
  %add = add i64 %call, %conv63
  %conv1 = trunc i64 %add to i32
  %indvars.iv.next70 = add i64 %indvars.iv69, 1
  %lftr.wideiv71 = trunc i64 %indvars.iv.next70 to i32
  %exitcond72 = icmp eq i32 %lftr.wideiv71, %argc
  br i1 %exitcond72, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %entry
  %len.0.lcssa = phi i32 [ %argc, %entry ], [ %conv1, %for.body ]
  %comlog = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 6
  %1 = load i8** %comlog, align 8, !tbaa !4
  %cmp2 = icmp eq i8* %1, null
  br i1 %cmp2, label %if.else, label %if.then

if.then:                                          ; preds = %for.end
  %call5 = tail call i64 @strlen(i8* %1) #9
  %conv662 = zext i32 %len.0.lcssa to i64
  %add7 = add i64 %call5, %conv662
  %add10 = shl i64 %add7, 32
  %sext = add i64 %add10, 4294967296
  %conv11 = ashr exact i64 %sext, 32
  %call12 = tail call i8* @sre_realloc(i8* getelementptr inbounds ([51 x i8]* @.str, i64 0, i64 0), i32 296, i8* %1, i64 %conv11) #7
  store i8* %call12, i8** %comlog, align 8, !tbaa !4
  br label %if.end

if.else:                                          ; preds = %for.end
  %add14 = add nsw i32 %len.0.lcssa, 1
  %conv15 = sext i32 %add14 to i64
  %call17 = tail call i8* @sre_malloc(i8* getelementptr inbounds ([51 x i8]* @.str, i64 0, i64 0), i32 300, i64 %conv15) #7
  store i8* %call17, i8** %comlog, align 8, !tbaa !4
  store i8 0, i8* %call17, align 1, !tbaa !1
  %.pre = load i8** %comlog, align 8, !tbaa !4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %2 = phi i8* [ %.pre, %if.else ], [ %call12, %if.then ]
  %strlen = tail call i64 @strlen(i8* %2)
  %endptr = getelementptr i8* %2, i64 %strlen
  %3 = bitcast i8* %endptr to i16*
  store i16 10, i16* %3, align 1
  br i1 %cmp66, label %for.body25.lr.ph, label %for.end38

for.body25.lr.ph:                                 ; preds = %if.end
  %sub = add nsw i32 %argc, -1
  br label %for.body25

for.body25:                                       ; preds = %for.inc36, %for.body25.lr.ph
  %indvars.iv = phi i64 [ 0, %for.body25.lr.ph ], [ %indvars.iv.next, %for.inc36 ]
  %4 = load i8** %comlog, align 8, !tbaa !4
  %arrayidx28 = getelementptr inbounds i8** %argv, i64 %indvars.iv
  %5 = load i8** %arrayidx28, align 8, !tbaa !4
  %call29 = tail call i8* @strcat(i8* %4, i8* %5) #7
  %6 = trunc i64 %indvars.iv to i32
  %cmp30 = icmp slt i32 %6, %sub
  br i1 %cmp30, label %if.then32, label %for.inc36

if.then32:                                        ; preds = %for.body25
  %7 = load i8** %comlog, align 8, !tbaa !4
  %strlen60 = tail call i64 @strlen(i8* %7)
  %endptr61 = getelementptr i8* %7, i64 %strlen60
  %8 = bitcast i8* %endptr61 to i16*
  store i16 32, i16* %8, align 1
  br label %for.inc36

for.inc36:                                        ; preds = %for.body25, %if.then32
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %argc
  br i1 %exitcond, label %for.end38, label %for.body25

for.end38:                                        ; preds = %for.inc36, %if.end
  ret void
}

; Function Attrs: nounwind optsize readonly
declare i64 @strlen(i8* nocapture) #3

; Function Attrs: optsize
declare i8* @sre_realloc(i8*, i32, i8*, i64) #1

; Function Attrs: nounwind optsize
declare i8* @strcat(i8*, i8* nocapture) #2

; Function Attrs: nounwind optsize uwtable
define void @Plan7SetCtime(%struct.plan7_s* nocapture %hmm) #0 {
entry:
  %date = alloca i64, align 8
  %call = call i64 @time(i64* null) #7
  store i64 %call, i64* %date, align 8, !tbaa !5
  %ctime = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 8
  %0 = load i8** %ctime, align 8, !tbaa !4
  %cmp = icmp eq i8* %0, null
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @free(i8* %0) #7
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  %call2 = call i8* @ctime(i64* %date) #7
  %call3 = call i8* @Strdup(i8* %call2) #7
  store i8* %call3, i8** %ctime, align 8, !tbaa !4
  call void @StringChop(i8* %call3) #7
  ret void
}

; Function Attrs: nounwind optsize
declare i64 @time(i64*) #2

; Function Attrs: nounwind optsize
declare i8* @ctime(i64*) #2

; Function Attrs: nounwind optsize uwtable
define void @Plan7SetNullModel(%struct.plan7_s* nocapture %hmm, float* nocapture %null, float %p1) #0 {
entry:
  %0 = load i32* @Alphabet_size, align 4, !tbaa !0
  %cmp9 = icmp sgt i32 %0, 0
  br i1 %cmp9, label %for.body, label %for.end

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  %arrayidx = getelementptr inbounds float* %null, i64 %indvars.iv
  %1 = load float* %arrayidx, align 4, !tbaa !3
  %arrayidx3 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 28, i64 %indvars.iv
  store float %1, float* %arrayidx3, align 4, !tbaa !3
  %indvars.iv.next = add i64 %indvars.iv, 1
  %2 = trunc i64 %indvars.iv.next to i32
  %cmp = icmp slt i32 %2, %0
  br i1 %cmp, label %for.body, label %for.end

for.end:                                          ; preds = %for.body, %entry
  %p14 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 29
  store float %p1, float* %p14, align 4, !tbaa !3
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @P7Logoddsify(%struct.plan7_s* %hmm, i32 %viterbi_mode) #0 {
entry:
  %flags = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 47
  %0 = load i32* %flags, align 4, !tbaa !0
  %and = and i32 %0, 1
  %tobool = icmp eq i32 %and, 0
  br i1 %tobool, label %for.cond.preheader, label %return

for.cond.preheader:                               ; preds = %entry
  %M = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 20
  %1 = load i32* %M, align 4, !tbaa !0
  %cmp616 = icmp slt i32 %1, 1
  br i1 %cmp616, label %for.end133, label %for.cond1.preheader.lr.ph

for.cond1.preheader.lr.ph:                        ; preds = %for.cond.preheader
  %mat32 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 22
  %arraydecay = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 28, i64 0
  %msc38 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 31
  %ins45 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 23
  %isc52 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 32
  br label %for.cond1.preheader

for.cond1.preheader:                              ; preds = %for.inc59.for.cond1.preheader_crit_edge, %for.cond1.preheader.lr.ph
  %indvars.iv632 = phi i64 [ %indvars.iv.next633, %for.inc59.for.cond1.preheader_crit_edge ], [ 1, %for.cond1.preheader.lr.ph ]
  %2 = load i32* @Alphabet_size, align 4, !tbaa !0
  %cmp2611 = icmp sgt i32 %2, 0
  br i1 %cmp2611, label %for.body3, label %for.cond28.loopexit

for.cond62.preheader:                             ; preds = %for.inc59
  %cmp64608 = icmp sgt i32 %34, 1
  br i1 %cmp64608, label %for.body65.lr.ph, label %for.end133

for.body65.lr.ph:                                 ; preds = %for.cond62.preheader
  %t = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 21
  %p1 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 29
  %tsc = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 30
  br label %for.body65

for.body3:                                        ; preds = %for.cond1.preheader, %for.inc
  %indvars.iv628 = phi i64 [ %indvars.iv.next629, %for.inc ], [ 0, %for.cond1.preheader ]
  %3 = load float*** %mat32, align 8, !tbaa !4
  %arrayidx = getelementptr inbounds float** %3, i64 %indvars.iv632
  %4 = load float** %arrayidx, align 8, !tbaa !4
  %arrayidx5 = getelementptr inbounds float* %4, i64 %indvars.iv628
  %5 = load float* %arrayidx5, align 4, !tbaa !3
  %arrayidx7 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 28, i64 %indvars.iv628
  %6 = load float* %arrayidx7, align 4, !tbaa !3
  %call = tail call i32 @Prob2Score(float %5, float %6) #7
  %7 = load i32*** %msc38, align 8, !tbaa !4
  %arrayidx10 = getelementptr inbounds i32** %7, i64 %indvars.iv628
  %8 = load i32** %arrayidx10, align 8, !tbaa !4
  %arrayidx11 = getelementptr inbounds i32* %8, i64 %indvars.iv632
  store i32 %call, i32* %arrayidx11, align 4, !tbaa !0
  %9 = load i32* %M, align 4, !tbaa !0
  %10 = trunc i64 %indvars.iv632 to i32
  %cmp13 = icmp slt i32 %10, %9
  br i1 %cmp13, label %if.then14, label %for.inc

if.then14:                                        ; preds = %for.body3
  %11 = load float*** %ins45, align 8, !tbaa !4
  %arrayidx17 = getelementptr inbounds float** %11, i64 %indvars.iv632
  %12 = load float** %arrayidx17, align 8, !tbaa !4
  %arrayidx18 = getelementptr inbounds float* %12, i64 %indvars.iv628
  %13 = load float* %arrayidx18, align 4, !tbaa !3
  %14 = load float* %arrayidx7, align 4, !tbaa !3
  %call22 = tail call i32 @Prob2Score(float %13, float %14) #7
  %15 = load i32*** %isc52, align 8, !tbaa !4
  %arrayidx25 = getelementptr inbounds i32** %15, i64 %indvars.iv628
  %16 = load i32** %arrayidx25, align 8, !tbaa !4
  %arrayidx26 = getelementptr inbounds i32* %16, i64 %indvars.iv632
  store i32 %call22, i32* %arrayidx26, align 4, !tbaa !0
  br label %for.inc

for.inc:                                          ; preds = %for.body3, %if.then14
  %indvars.iv.next629 = add i64 %indvars.iv628, 1
  %17 = load i32* @Alphabet_size, align 4, !tbaa !0
  %18 = trunc i64 %indvars.iv.next629 to i32
  %cmp2 = icmp slt i32 %18, %17
  br i1 %cmp2, label %for.body3, label %for.cond28.loopexit

for.cond28.loopexit:                              ; preds = %for.inc, %for.cond1.preheader
  %.lcssa610 = phi i32 [ %2, %for.cond1.preheader ], [ %17, %for.inc ]
  %19 = load i32* @Alphabet_iupac, align 4, !tbaa !0
  %cmp29614 = icmp slt i32 %.lcssa610, %19
  br i1 %cmp29614, label %for.body30.lr.ph, label %for.cond28.loopexit.for.inc59_crit_edge

for.cond28.loopexit.for.inc59_crit_edge:          ; preds = %for.cond28.loopexit
  %.pre634 = trunc i64 %indvars.iv632 to i32
  br label %for.inc59

for.body30.lr.ph:                                 ; preds = %for.cond28.loopexit
  %20 = sext i32 %.lcssa610 to i64
  br label %for.body30

for.body30:                                       ; preds = %for.body30.lr.ph, %for.inc56
  %indvars.iv630 = phi i64 [ %20, %for.body30.lr.ph ], [ %indvars.iv.next631, %for.inc56 ]
  %21 = load float*** %mat32, align 8, !tbaa !4
  %arrayidx33 = getelementptr inbounds float** %21, i64 %indvars.iv632
  %22 = load float** %arrayidx33, align 8, !tbaa !4
  %23 = trunc i64 %indvars.iv630 to i32
  %call35 = tail call i32 @DegenerateSymbolScore(float* %22, float* %arraydecay, i32 %23) #8
  %24 = load i32*** %msc38, align 8, !tbaa !4
  %arrayidx39 = getelementptr inbounds i32** %24, i64 %indvars.iv630
  %25 = load i32** %arrayidx39, align 8, !tbaa !4
  %arrayidx40 = getelementptr inbounds i32* %25, i64 %indvars.iv632
  store i32 %call35, i32* %arrayidx40, align 4, !tbaa !0
  %26 = load i32* %M, align 4, !tbaa !0
  %27 = trunc i64 %indvars.iv632 to i32
  %cmp42 = icmp slt i32 %27, %26
  br i1 %cmp42, label %if.then43, label %for.inc56

if.then43:                                        ; preds = %for.body30
  %28 = load float*** %ins45, align 8, !tbaa !4
  %arrayidx46 = getelementptr inbounds float** %28, i64 %indvars.iv632
  %29 = load float** %arrayidx46, align 8, !tbaa !4
  %call49 = tail call i32 @DegenerateSymbolScore(float* %29, float* %arraydecay, i32 %23) #8
  %30 = load i32*** %isc52, align 8, !tbaa !4
  %arrayidx53 = getelementptr inbounds i32** %30, i64 %indvars.iv630
  %31 = load i32** %arrayidx53, align 8, !tbaa !4
  %arrayidx54 = getelementptr inbounds i32* %31, i64 %indvars.iv632
  store i32 %call49, i32* %arrayidx54, align 4, !tbaa !0
  br label %for.inc56

for.inc56:                                        ; preds = %for.body30, %if.then43
  %indvars.iv.next631 = add i64 %indvars.iv630, 1
  %32 = load i32* @Alphabet_iupac, align 4, !tbaa !0
  %33 = trunc i64 %indvars.iv.next631 to i32
  %cmp29 = icmp slt i32 %33, %32
  br i1 %cmp29, label %for.body30, label %for.inc59

for.inc59:                                        ; preds = %for.inc56, %for.cond28.loopexit.for.inc59_crit_edge
  %.pre-phi = phi i32 [ %.pre634, %for.cond28.loopexit.for.inc59_crit_edge ], [ %27, %for.inc56 ]
  %34 = load i32* %M, align 4, !tbaa !0
  %cmp = icmp slt i32 %.pre-phi, %34
  br i1 %cmp, label %for.inc59.for.cond1.preheader_crit_edge, label %for.cond62.preheader

for.inc59.for.cond1.preheader_crit_edge:          ; preds = %for.inc59
  %indvars.iv.next633 = add i64 %indvars.iv632, 1
  br label %for.cond1.preheader

for.body65:                                       ; preds = %for.body65.lr.ph, %for.body65
  %indvars.iv625 = phi i64 [ 1, %for.body65.lr.ph ], [ %indvars.iv.next626, %for.body65 ]
  %35 = load float*** %t, align 8, !tbaa !4
  %arrayidx67 = getelementptr inbounds float** %35, i64 %indvars.iv625
  %36 = load float** %arrayidx67, align 8, !tbaa !4
  %37 = load float* %36, align 4, !tbaa !3
  %38 = load float* %p1, align 4, !tbaa !3
  %call69 = tail call i32 @Prob2Score(float %37, float %38) #7
  %39 = load i32*** %tsc, align 8, !tbaa !4
  %40 = load i32** %39, align 8, !tbaa !4
  %arrayidx72 = getelementptr inbounds i32* %40, i64 %indvars.iv625
  store i32 %call69, i32* %arrayidx72, align 4, !tbaa !0
  %41 = load float*** %t, align 8, !tbaa !4
  %arrayidx75 = getelementptr inbounds float** %41, i64 %indvars.iv625
  %42 = load float** %arrayidx75, align 8, !tbaa !4
  %arrayidx76 = getelementptr inbounds float* %42, i64 1
  %43 = load float* %arrayidx76, align 4, !tbaa !3
  %44 = load float* %p1, align 4, !tbaa !3
  %call78 = tail call i32 @Prob2Score(float %43, float %44) #7
  %45 = load i32*** %tsc, align 8, !tbaa !4
  %arrayidx81 = getelementptr inbounds i32** %45, i64 1
  %46 = load i32** %arrayidx81, align 8, !tbaa !4
  %arrayidx82 = getelementptr inbounds i32* %46, i64 %indvars.iv625
  store i32 %call78, i32* %arrayidx82, align 4, !tbaa !0
  %47 = load float*** %t, align 8, !tbaa !4
  %arrayidx85 = getelementptr inbounds float** %47, i64 %indvars.iv625
  %48 = load float** %arrayidx85, align 8, !tbaa !4
  %arrayidx86 = getelementptr inbounds float* %48, i64 2
  %49 = load float* %arrayidx86, align 4, !tbaa !3
  %call87 = tail call i32 @Prob2Score(float %49, float 1.000000e+00) #7
  %50 = load i32*** %tsc, align 8, !tbaa !4
  %arrayidx90 = getelementptr inbounds i32** %50, i64 2
  %51 = load i32** %arrayidx90, align 8, !tbaa !4
  %arrayidx91 = getelementptr inbounds i32* %51, i64 %indvars.iv625
  store i32 %call87, i32* %arrayidx91, align 4, !tbaa !0
  %52 = load float*** %t, align 8, !tbaa !4
  %arrayidx94 = getelementptr inbounds float** %52, i64 %indvars.iv625
  %53 = load float** %arrayidx94, align 8, !tbaa !4
  %arrayidx95 = getelementptr inbounds float* %53, i64 3
  %54 = load float* %arrayidx95, align 4, !tbaa !3
  %55 = load float* %p1, align 4, !tbaa !3
  %call97 = tail call i32 @Prob2Score(float %54, float %55) #7
  %56 = load i32*** %tsc, align 8, !tbaa !4
  %arrayidx100 = getelementptr inbounds i32** %56, i64 3
  %57 = load i32** %arrayidx100, align 8, !tbaa !4
  %arrayidx101 = getelementptr inbounds i32* %57, i64 %indvars.iv625
  store i32 %call97, i32* %arrayidx101, align 4, !tbaa !0
  %58 = load float*** %t, align 8, !tbaa !4
  %arrayidx104 = getelementptr inbounds float** %58, i64 %indvars.iv625
  %59 = load float** %arrayidx104, align 8, !tbaa !4
  %arrayidx105 = getelementptr inbounds float* %59, i64 4
  %60 = load float* %arrayidx105, align 4, !tbaa !3
  %61 = load float* %p1, align 4, !tbaa !3
  %call107 = tail call i32 @Prob2Score(float %60, float %61) #7
  %62 = load i32*** %tsc, align 8, !tbaa !4
  %arrayidx110 = getelementptr inbounds i32** %62, i64 4
  %63 = load i32** %arrayidx110, align 8, !tbaa !4
  %arrayidx111 = getelementptr inbounds i32* %63, i64 %indvars.iv625
  store i32 %call107, i32* %arrayidx111, align 4, !tbaa !0
  %64 = load float*** %t, align 8, !tbaa !4
  %arrayidx114 = getelementptr inbounds float** %64, i64 %indvars.iv625
  %65 = load float** %arrayidx114, align 8, !tbaa !4
  %arrayidx115 = getelementptr inbounds float* %65, i64 5
  %66 = load float* %arrayidx115, align 4, !tbaa !3
  %67 = load float* %p1, align 4, !tbaa !3
  %call117 = tail call i32 @Prob2Score(float %66, float %67) #7
  %68 = load i32*** %tsc, align 8, !tbaa !4
  %arrayidx120 = getelementptr inbounds i32** %68, i64 5
  %69 = load i32** %arrayidx120, align 8, !tbaa !4
  %arrayidx121 = getelementptr inbounds i32* %69, i64 %indvars.iv625
  store i32 %call117, i32* %arrayidx121, align 4, !tbaa !0
  %70 = load float*** %t, align 8, !tbaa !4
  %arrayidx124 = getelementptr inbounds float** %70, i64 %indvars.iv625
  %71 = load float** %arrayidx124, align 8, !tbaa !4
  %arrayidx125 = getelementptr inbounds float* %71, i64 6
  %72 = load float* %arrayidx125, align 4, !tbaa !3
  %call126 = tail call i32 @Prob2Score(float %72, float 1.000000e+00) #7
  %73 = load i32*** %tsc, align 8, !tbaa !4
  %arrayidx129 = getelementptr inbounds i32** %73, i64 6
  %74 = load i32** %arrayidx129, align 8, !tbaa !4
  %arrayidx130 = getelementptr inbounds i32* %74, i64 %indvars.iv625
  store i32 %call126, i32* %arrayidx130, align 4, !tbaa !0
  %indvars.iv.next626 = add i64 %indvars.iv625, 1
  %75 = load i32* %M, align 4, !tbaa !0
  %76 = trunc i64 %indvars.iv.next626 to i32
  %cmp64 = icmp slt i32 %76, %75
  br i1 %cmp64, label %for.body65, label %for.end133

for.end133:                                       ; preds = %for.cond.preheader, %for.body65, %for.cond62.preheader
  %77 = phi i32 [ %34, %for.cond62.preheader ], [ %75, %for.body65 ], [ %1, %for.cond.preheader ]
  %tbd1 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 24
  %78 = load float* %tbd1, align 4, !tbaa !3
  %cmp134 = fcmp ogt float %78, 0.000000e+00
  br i1 %cmp134, label %cond.true, label %for.cond140.preheader

cond.true:                                        ; preds = %for.end133
  %conv = fpext float %78 to double
  %call138 = tail call double @log(double %conv) #7
  %phitmp = fptrunc double %call138 to float
  %.pre = load i32* %M, align 4, !tbaa !0
  br label %for.cond140.preheader

for.cond140.preheader:                            ; preds = %for.end133, %cond.true
  %79 = phi i32 [ %.pre, %cond.true ], [ %77, %for.end133 ]
  %accum.0.ph = phi float [ %phitmp, %cond.true ], [ -9.999000e+03, %for.end133 ]
  %cmp142605 = icmp slt i32 %79, 1
  br i1 %cmp142605, label %for.end259, label %for.body144.lr.ph

for.body144.lr.ph:                                ; preds = %for.cond140.preheader
  %begin = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 26
  %t167 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 21
  %tobool174 = icmp eq i32 %viterbi_mode, 0
  %p1243 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 29
  %bsc = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 34
  br label %for.body144

for.body144:                                      ; preds = %for.inc257.for.body144_crit_edge, %for.body144.lr.ph
  %indvars.iv622 = phi i64 [ %indvars.iv.next623, %for.inc257.for.body144_crit_edge ], [ 1, %for.body144.lr.ph ]
  %accum.0607 = phi float [ %accum.1, %for.inc257.for.body144_crit_edge ], [ %accum.0.ph, %for.body144.lr.ph ]
  %80 = load float** %begin, align 8, !tbaa !4
  %arrayidx146 = getelementptr inbounds float* %80, i64 %indvars.iv622
  %81 = load float* %arrayidx146, align 4, !tbaa !3
  %cmp148 = fcmp ogt float %81, 0.000000e+00
  br i1 %cmp148, label %cond.true150, label %cond.end157

cond.true150:                                     ; preds = %for.body144
  %conv147 = fpext float %81 to double
  %call155 = tail call double @log(double %conv147) #7
  %phitmp599 = fptrunc double %call155 to float
  br label %cond.end157

cond.end157:                                      ; preds = %for.body144, %cond.true150
  %cond158 = phi float [ %phitmp599, %cond.true150 ], [ -9.999000e+03, %for.body144 ]
  %82 = trunc i64 %indvars.iv622 to i32
  %cmp160 = icmp sgt i32 %82, 1
  br i1 %cmp160, label %land.lhs.true, label %if.end237

land.lhs.true:                                    ; preds = %cond.end157
  %conv162 = fpext float %accum.0607 to double
  %cmp163 = fcmp ogt float %accum.0607, -9.999000e+03
  br i1 %cmp163, label %if.then165, label %if.end237

if.then165:                                       ; preds = %land.lhs.true
  %83 = add nsw i64 %indvars.iv622, -1
  %84 = load float*** %t167, align 8, !tbaa !4
  %arrayidx168 = getelementptr inbounds float** %84, i64 %83
  %85 = load float** %arrayidx168, align 8, !tbaa !4
  %arrayidx169 = getelementptr inbounds float* %85, i64 5
  %86 = load float* %arrayidx169, align 4, !tbaa !3
  %conv170 = fpext float %86 to double
  %cmp171 = fcmp ogt float %86, 0.000000e+00
  br i1 %cmp171, label %if.then173, label %if.end214

if.then173:                                       ; preds = %if.then165
  br i1 %tobool174, label %if.else, label %if.then175

if.then175:                                       ; preds = %if.then173
  %conv176 = fpext float %cond158 to double
  %call184 = tail call double @log(double %conv170) #7
  %add = fadd double %conv162, %call184
  %cmp185 = fcmp ogt double %conv176, %add
  br i1 %cmp185, label %cond.end199, label %cond.false189

cond.false189:                                    ; preds = %if.then175
  %87 = load float*** %t167, align 8, !tbaa !4
  %arrayidx194 = getelementptr inbounds float** %87, i64 %83
  %88 = load float** %arrayidx194, align 8, !tbaa !4
  %arrayidx195 = getelementptr inbounds float* %88, i64 5
  %89 = load float* %arrayidx195, align 4, !tbaa !3
  %conv196 = fpext float %89 to double
  %call197 = tail call double @log(double %conv196) #7
  %add198 = fadd double %conv162, %call197
  br label %cond.end199

cond.end199:                                      ; preds = %if.then175, %cond.false189
  %cond200 = phi double [ %add198, %cond.false189 ], [ %conv176, %if.then175 ]
  %conv201 = fptrunc double %cond200 to float
  br label %if.end214

if.else:                                          ; preds = %if.then173
  %call209 = tail call double @log(double %conv170) #7
  %add210 = fadd double %conv162, %call209
  %conv211 = fptrunc double %add210 to float
  %call212 = tail call float @LogSum(float %cond158, float %conv211) #7
  br label %if.end214

if.end214:                                        ; preds = %cond.end199, %if.else, %if.then165
  %tbm.0 = phi float [ %conv201, %cond.end199 ], [ %call212, %if.else ], [ %cond158, %if.then165 ]
  %90 = load float*** %t167, align 8, !tbaa !4
  %arrayidx218 = getelementptr inbounds float** %90, i64 %83
  %91 = load float** %arrayidx218, align 8, !tbaa !4
  %arrayidx219 = getelementptr inbounds float* %91, i64 6
  %92 = load float* %arrayidx219, align 4, !tbaa !3
  %cmp221 = fcmp ogt float %92, 0.000000e+00
  br i1 %cmp221, label %cond.true223, label %if.end237

cond.true223:                                     ; preds = %if.end214
  %conv220 = fpext float %92 to double
  %call231 = tail call double @log(double %conv220) #7
  %add232 = fadd double %conv162, %call231
  %phitmp600 = fptrunc double %add232 to float
  br label %if.end237

if.end237:                                        ; preds = %cond.true223, %if.end214, %land.lhs.true, %cond.end157
  %accum.1 = phi float [ %accum.0607, %land.lhs.true ], [ %accum.0607, %cond.end157 ], [ %phitmp600, %cond.true223 ], [ -9.999000e+03, %if.end214 ]
  %tbm.1 = phi float [ %cond158, %land.lhs.true ], [ %cond158, %cond.end157 ], [ %tbm.0, %cond.true223 ], [ %tbm.0, %if.end214 ]
  %cmp239 = fcmp ogt float %tbm.1, -9.999000e+03
  br i1 %cmp239, label %if.then241, label %if.else252

if.then241:                                       ; preds = %if.end237
  %conv238 = fpext float %tbm.1 to double
  %93 = load float* %p1243, align 4, !tbaa !3
  %conv244 = fpext float %93 to double
  %call245 = tail call double @log(double %conv244) #7
  %sub246 = fsub double %conv238, %call245
  %mul = fmul double %sub246, 0x40968AC7B890D5A6
  %add247 = fadd double %mul, 5.000000e-01
  %call248 = tail call double @floor(double %add247) #10
  %conv249 = fptosi double %call248 to i32
  %94 = load i32** %bsc, align 8, !tbaa !4
  %arrayidx251 = getelementptr inbounds i32* %94, i64 %indvars.iv622
  store i32 %conv249, i32* %arrayidx251, align 4, !tbaa !0
  br label %for.inc257

if.else252:                                       ; preds = %if.end237
  %95 = load i32** %bsc, align 8, !tbaa !4
  %arrayidx255 = getelementptr inbounds i32* %95, i64 %indvars.iv622
  store i32 -987654321, i32* %arrayidx255, align 4, !tbaa !0
  br label %for.inc257

for.inc257:                                       ; preds = %if.then241, %if.else252
  %96 = load i32* %M, align 4, !tbaa !0
  %cmp142 = icmp slt i32 %82, %96
  br i1 %cmp142, label %for.inc257.for.body144_crit_edge, label %for.end259

for.inc257.for.body144_crit_edge:                 ; preds = %for.inc257
  %indvars.iv.next623 = add i64 %indvars.iv622, 1
  br label %for.body144

for.end259:                                       ; preds = %for.inc257, %for.cond140.preheader
  %.lcssa = phi i32 [ %79, %for.cond140.preheader ], [ %96, %for.inc257 ]
  %idxprom261 = sext i32 %.lcssa to i64
  %esc = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 35
  %97 = load i32** %esc, align 8, !tbaa !4
  %arrayidx262 = getelementptr inbounds i32* %97, i64 %idxprom261
  store i32 0, i32* %arrayidx262, align 4, !tbaa !0
  %98 = load i32* %M, align 4, !tbaa !0
  %k.3601 = add i32 %98, -1
  %cmp266602 = icmp sgt i32 %k.3601, 0
  br i1 %cmp266602, label %for.body268.lr.ph, label %for.end373

for.body268.lr.ph:                                ; preds = %for.end259
  %end = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 27
  %t289 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 21
  %tobool296 = icmp eq i32 %viterbi_mode, 0
  %99 = sext i32 %k.3601 to i64
  br label %for.body268

for.body268:                                      ; preds = %cond.end367.for.body268_crit_edge, %for.body268.lr.ph
  %indvars.iv = phi i64 [ %99, %for.body268.lr.ph ], [ %indvars.iv.next, %cond.end367.for.body268_crit_edge ]
  %k.3604 = phi i32 [ %k.3601, %for.body268.lr.ph ], [ %k.3, %cond.end367.for.body268_crit_edge ]
  %accum.2603 = phi float [ 0.000000e+00, %for.body268.lr.ph ], [ %accum.3, %cond.end367.for.body268_crit_edge ]
  %100 = load float** %end, align 8, !tbaa !4
  %arrayidx270 = getelementptr inbounds float* %100, i64 %indvars.iv
  %101 = load float* %arrayidx270, align 4, !tbaa !3
  %cmp272 = fcmp ogt float %101, 0.000000e+00
  br i1 %cmp272, label %cond.true274, label %cond.end281

cond.true274:                                     ; preds = %for.body268
  %conv271 = fpext float %101 to double
  %call279 = tail call double @log(double %conv271) #7
  %phitmp597 = fptrunc double %call279 to float
  br label %cond.end281

cond.end281:                                      ; preds = %for.body268, %cond.true274
  %cond282 = phi float [ %phitmp597, %cond.true274 ], [ -9.999000e+03, %for.body268 ]
  %conv284 = fpext float %accum.2603 to double
  %cmp285 = fcmp ogt float %accum.2603, -9.999000e+03
  br i1 %cmp285, label %if.then287, label %if.end356

if.then287:                                       ; preds = %cond.end281
  %102 = load float*** %t289, align 8, !tbaa !4
  %arrayidx290 = getelementptr inbounds float** %102, i64 %indvars.iv
  %103 = load float** %arrayidx290, align 8, !tbaa !4
  %arrayidx291 = getelementptr inbounds float* %103, i64 2
  %104 = load float* %arrayidx291, align 4, !tbaa !3
  %conv292 = fpext float %104 to double
  %cmp293 = fcmp ogt float %104, 0.000000e+00
  br i1 %cmp293, label %if.then295, label %if.end335

if.then295:                                       ; preds = %if.then287
  br i1 %tobool296, label %if.else323, label %if.then297

if.then297:                                       ; preds = %if.then295
  %conv298 = fpext float %cond282 to double
  %call305 = tail call double @log(double %conv292) #7
  %add306 = fadd double %conv284, %call305
  %cmp307 = fcmp ogt double %conv298, %add306
  br i1 %cmp307, label %cond.end320, label %cond.false311

cond.false311:                                    ; preds = %if.then297
  %105 = load float*** %t289, align 8, !tbaa !4
  %arrayidx315 = getelementptr inbounds float** %105, i64 %indvars.iv
  %106 = load float** %arrayidx315, align 8, !tbaa !4
  %arrayidx316 = getelementptr inbounds float* %106, i64 2
  %107 = load float* %arrayidx316, align 4, !tbaa !3
  %conv317 = fpext float %107 to double
  %call318 = tail call double @log(double %conv317) #7
  %add319 = fadd double %conv284, %call318
  br label %cond.end320

cond.end320:                                      ; preds = %if.then297, %cond.false311
  %cond321 = phi double [ %add319, %cond.false311 ], [ %conv298, %if.then297 ]
  %conv322 = fptrunc double %cond321 to float
  br label %if.end335

if.else323:                                       ; preds = %if.then295
  %call330 = tail call double @log(double %conv292) #7
  %add331 = fadd double %conv284, %call330
  %conv332 = fptrunc double %add331 to float
  %call333 = tail call float @LogSum(float %cond282, float %conv332) #7
  br label %if.end335

if.end335:                                        ; preds = %cond.end320, %if.else323, %if.then287
  %tme.0 = phi float [ %conv322, %cond.end320 ], [ %call333, %if.else323 ], [ %cond282, %if.then287 ]
  %108 = load float*** %t289, align 8, !tbaa !4
  %arrayidx338 = getelementptr inbounds float** %108, i64 %indvars.iv
  %109 = load float** %arrayidx338, align 8, !tbaa !4
  %arrayidx339 = getelementptr inbounds float* %109, i64 6
  %110 = load float* %arrayidx339, align 4, !tbaa !3
  %cmp341 = fcmp ogt float %110, 0.000000e+00
  br i1 %cmp341, label %cond.true343, label %if.end356

cond.true343:                                     ; preds = %if.end335
  %conv340 = fpext float %110 to double
  %call350 = tail call double @log(double %conv340) #7
  %add351 = fadd double %conv284, %call350
  %phitmp598 = fptrunc double %add351 to float
  br label %if.end356

if.end356:                                        ; preds = %cond.true343, %if.end335, %cond.end281
  %accum.3 = phi float [ %accum.2603, %cond.end281 ], [ %phitmp598, %cond.true343 ], [ -9.999000e+03, %if.end335 ]
  %tme.1 = phi float [ %cond282, %cond.end281 ], [ %tme.0, %cond.true343 ], [ %tme.0, %if.end335 ]
  %cmp358 = fcmp ogt float %tme.1, -9.999000e+03
  br i1 %cmp358, label %cond.true360, label %cond.end367

cond.true360:                                     ; preds = %if.end356
  %conv357 = fpext float %tme.1 to double
  %mul362 = fmul double %conv357, 0x40968AC7B890D5A6
  %add363 = fadd double %mul362, 5.000000e-01
  %call364 = tail call double @floor(double %add363) #10
  %conv365 = fptosi double %call364 to i32
  br label %cond.end367

cond.end367:                                      ; preds = %if.end356, %cond.true360
  %cond368 = phi i32 [ %conv365, %cond.true360 ], [ -987654321, %if.end356 ]
  %111 = load i32** %esc, align 8, !tbaa !4
  %arrayidx371 = getelementptr inbounds i32* %111, i64 %indvars.iv
  store i32 %cond368, i32* %arrayidx371, align 4, !tbaa !0
  %k.3 = add nsw i32 %k.3604, -1
  %cmp266 = icmp sgt i32 %k.3, 0
  br i1 %cmp266, label %cond.end367.for.body268_crit_edge, label %for.end373

cond.end367.for.body268_crit_edge:                ; preds = %cond.end367
  %indvars.iv.next = add i64 %indvars.iv, -1
  br label %for.body268

for.end373:                                       ; preds = %cond.end367, %for.end259
  %arrayidx375 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 25, i64 0, i64 1
  %112 = load float* %arrayidx375, align 4, !tbaa !3
  %p1376 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 29
  %113 = load float* %p1376, align 4, !tbaa !3
  %call377 = tail call i32 @Prob2Score(float %112, float %113) #7
  %arrayidx379 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 33, i64 0, i64 1
  store i32 %call377, i32* %arrayidx379, align 4, !tbaa !0
  %arrayidx382 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 25, i64 0, i64 0
  %114 = load float* %arrayidx382, align 4, !tbaa !3
  %call383 = tail call i32 @Prob2Score(float %114, float 1.000000e+00) #7
  %arrayidx386 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 33, i64 0, i64 0
  store i32 %call383, i32* %arrayidx386, align 4, !tbaa !0
  %arrayidx389 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 25, i64 1, i64 1
  %115 = load float* %arrayidx389, align 4, !tbaa !3
  %call390 = tail call i32 @Prob2Score(float %115, float 1.000000e+00) #7
  %arrayidx393 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 33, i64 1, i64 1
  store i32 %call390, i32* %arrayidx393, align 4, !tbaa !0
  %arrayidx396 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 25, i64 1, i64 0
  %116 = load float* %arrayidx396, align 4, !tbaa !3
  %call397 = tail call i32 @Prob2Score(float %116, float 1.000000e+00) #7
  %arrayidx400 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 33, i64 1, i64 0
  store i32 %call397, i32* %arrayidx400, align 4, !tbaa !0
  %arrayidx403 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 25, i64 2, i64 1
  %117 = load float* %arrayidx403, align 4, !tbaa !3
  %118 = load float* %p1376, align 4, !tbaa !3
  %call405 = tail call i32 @Prob2Score(float %117, float %118) #7
  %arrayidx408 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 33, i64 2, i64 1
  store i32 %call405, i32* %arrayidx408, align 4, !tbaa !0
  %arrayidx411 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 25, i64 2, i64 0
  %119 = load float* %arrayidx411, align 4, !tbaa !3
  %120 = load float* %p1376, align 4, !tbaa !3
  %conv415 = fsub float 1.000000e+00, %120
  %call416 = tail call i32 @Prob2Score(float %119, float %conv415) #7
  %arrayidx419 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 33, i64 2, i64 0
  store i32 %call416, i32* %arrayidx419, align 4, !tbaa !0
  %arrayidx422 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 25, i64 3, i64 1
  %121 = load float* %arrayidx422, align 4, !tbaa !3
  %122 = load float* %p1376, align 4, !tbaa !3
  %call424 = tail call i32 @Prob2Score(float %121, float %122) #7
  %arrayidx427 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 33, i64 3, i64 1
  store i32 %call424, i32* %arrayidx427, align 4, !tbaa !0
  %arrayidx430 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 25, i64 3, i64 0
  %123 = load float* %arrayidx430, align 4, !tbaa !3
  %call431 = tail call i32 @Prob2Score(float %123, float 1.000000e+00) #7
  %arrayidx434 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 33, i64 3, i64 0
  store i32 %call431, i32* %arrayidx434, align 4, !tbaa !0
  %124 = load i32* %flags, align 4, !tbaa !0
  %or = or i32 %124, 1
  store i32 %or, i32* %flags, align 4, !tbaa !0
  br label %return

return:                                           ; preds = %entry, %for.end373
  ret void
}

; Function Attrs: optsize
declare i32 @Prob2Score(float, float) #1

; Function Attrs: nounwind optsize uwtable
define i32 @DegenerateSymbolScore(float* nocapture %p, float* nocapture %null, i32 %ambig) #0 {
entry:
  %0 = load i32* @Alphabet_size, align 4, !tbaa !0
  %cmp42 = icmp sgt i32 %0, 0
  br i1 %cmp42, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %idxprom1 = sext i32 %ambig to i64
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %1 = phi i32 [ %0, %for.body.lr.ph ], [ %6, %for.inc ]
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.inc ]
  %denom.045 = phi float [ 0.000000e+00, %for.body.lr.ph ], [ %denom.1, %for.inc ]
  %numer.044 = phi float [ 0.000000e+00, %for.body.lr.ph ], [ %numer.1, %for.inc ]
  %arrayidx2 = getelementptr inbounds [24 x [20 x i8]]* @Degenerate, i64 0, i64 %idxprom1, i64 %indvars.iv
  %2 = load i8* %arrayidx2, align 1, !tbaa !1
  %tobool = icmp eq i8 %2, 0
  br i1 %tobool, label %for.inc, label %if.then

if.then:                                          ; preds = %for.body
  %arrayidx4 = getelementptr inbounds float* %null, i64 %indvars.iv
  %3 = load float* %arrayidx4, align 4, !tbaa !3
  %conv = fpext float %3 to double
  %arrayidx6 = getelementptr inbounds float* %p, i64 %indvars.iv
  %4 = load float* %arrayidx6, align 4, !tbaa !3
  %div = fdiv float %4, %3
  %cmp9 = fcmp ogt float %div, 0.000000e+00
  br i1 %cmp9, label %cond.true, label %cond.end

cond.true:                                        ; preds = %if.then
  %conv16 = fpext float %div to double
  %call = tail call double @log(double %conv16) #7
  %mul = fmul double %call, 0x3FF7154764EE6C2F
  %.pre47 = load float* %arrayidx4, align 4, !tbaa !3
  %.pre.pre = load i32* @Alphabet_size, align 4, !tbaa !0
  br label %cond.end

cond.end:                                         ; preds = %if.then, %cond.true
  %.pre = phi i32 [ %.pre.pre, %cond.true ], [ %1, %if.then ]
  %5 = phi float [ %.pre47, %cond.true ], [ %3, %if.then ]
  %cond = phi double [ %mul, %cond.true ], [ -9.999000e+03, %if.then ]
  %mul17 = fmul double %conv, %cond
  %conv18 = fpext float %numer.044 to double
  %add = fadd double %conv18, %mul17
  %conv19 = fptrunc double %add to float
  %add22 = fadd float %denom.045, %5
  br label %for.inc

for.inc:                                          ; preds = %for.body, %cond.end
  %6 = phi i32 [ %.pre, %cond.end ], [ %1, %for.body ]
  %numer.1 = phi float [ %conv19, %cond.end ], [ %numer.044, %for.body ]
  %denom.1 = phi float [ %add22, %cond.end ], [ %denom.045, %for.body ]
  %indvars.iv.next = add i64 %indvars.iv, 1
  %7 = trunc i64 %indvars.iv.next to i32
  %cmp = icmp slt i32 %7, %6
  br i1 %cmp, label %for.body, label %for.end

for.end:                                          ; preds = %for.inc, %entry
  %denom.0.lcssa = phi float [ 0.000000e+00, %entry ], [ %denom.1, %for.inc ]
  %numer.0.lcssa = phi float [ 0.000000e+00, %entry ], [ %numer.1, %for.inc ]
  %conv23 = fpext float %numer.0.lcssa to double
  %mul24 = fmul double %conv23, 1.000000e+03
  %conv25 = fpext float %denom.0.lcssa to double
  %div26 = fdiv double %mul24, %conv25
  %conv27 = fptosi double %div26 to i32
  ret i32 %conv27
}

; Function Attrs: nounwind optsize
declare double @log(double) #2

; Function Attrs: optsize
declare float @LogSum(float, float) #1

; Function Attrs: nounwind optsize readnone
declare double @floor(double) #4

; Function Attrs: nounwind optsize uwtable
define void @Plan7Renormalize(%struct.plan7_s* %hmm) #0 {
entry:
  %M = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 20
  %0 = load i32* %M, align 4, !tbaa !0
  %cmp111 = icmp slt i32 %0, 1
  br i1 %cmp111, label %for.end9, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %entry
  %mat = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 22
  br label %for.body

for.cond1.preheader:                              ; preds = %for.body
  %cmp3109 = icmp sgt i32 %4, 1
  br i1 %cmp3109, label %for.body4.lr.ph, label %for.end9

for.body4.lr.ph:                                  ; preds = %for.cond1.preheader
  %ins = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 23
  br label %for.body4

for.body:                                         ; preds = %for.body, %for.body.lr.ph
  %indvars.iv119 = phi i64 [ %indvars.iv.next120, %for.body ], [ 1, %for.body.lr.ph ]
  %1 = load float*** %mat, align 8, !tbaa !4
  %arrayidx = getelementptr inbounds float** %1, i64 %indvars.iv119
  %2 = load float** %arrayidx, align 8, !tbaa !4
  %3 = load i32* @Alphabet_size, align 4, !tbaa !0
  tail call void @FNorm(float* %2, i32 %3) #7
  %indvars.iv.next120 = add i64 %indvars.iv119, 1
  %4 = load i32* %M, align 4, !tbaa !0
  %5 = trunc i64 %indvars.iv119 to i32
  %cmp = icmp slt i32 %5, %4
  br i1 %cmp, label %for.body, label %for.cond1.preheader

for.body4:                                        ; preds = %for.body4.lr.ph, %for.body4
  %indvars.iv117 = phi i64 [ 1, %for.body4.lr.ph ], [ %indvars.iv.next118, %for.body4 ]
  %6 = load float*** %ins, align 8, !tbaa !4
  %arrayidx6 = getelementptr inbounds float** %6, i64 %indvars.iv117
  %7 = load float** %arrayidx6, align 8, !tbaa !4
  %8 = load i32* @Alphabet_size, align 4, !tbaa !0
  tail call void @FNorm(float* %7, i32 %8) #7
  %indvars.iv.next118 = add i64 %indvars.iv117, 1
  %9 = load i32* %M, align 4, !tbaa !0
  %10 = trunc i64 %indvars.iv.next118 to i32
  %cmp3 = icmp slt i32 %10, %9
  br i1 %cmp3, label %for.body4, label %for.end9

for.end9:                                         ; preds = %entry, %for.body4, %for.cond1.preheader
  %.lcssa = phi i32 [ %4, %for.cond1.preheader ], [ %9, %for.body4 ], [ %0, %entry ]
  %begin = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 26
  %11 = load float** %begin, align 8, !tbaa !4
  %add.ptr = getelementptr inbounds float* %11, i64 1
  %call = tail call float @FSum(float* %add.ptr, i32 %.lcssa) #7
  %tbd1 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 24
  %12 = load float* %tbd1, align 4, !tbaa !3
  %add = fadd float %call, %12
  %13 = load float** %begin, align 8, !tbaa !4
  %add.ptr12 = getelementptr inbounds float* %13, i64 1
  %14 = load i32* %M, align 4, !tbaa !0
  %conv14 = fdiv float 1.000000e+00, %add
  tail call void @FScale(float* %add.ptr12, i32 %14, float %conv14) #7
  %15 = load float* %tbd1, align 4, !tbaa !3
  %div16 = fdiv float %15, %add
  store float %div16, float* %tbd1, align 4, !tbaa !3
  %16 = load i32* %M, align 4, !tbaa !0
  %cmp19107 = icmp sgt i32 %16, 1
  br i1 %cmp19107, label %for.body21.lr.ph, label %for.end48

for.body21.lr.ph:                                 ; preds = %for.end9
  %t = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 21
  %end = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 27
  br label %for.body21

for.body21:                                       ; preds = %for.body21.lr.ph, %for.body21
  %indvars.iv114 = phi i64 [ 1, %for.body21.lr.ph ], [ %indvars.iv.next115, %for.body21 ]
  %17 = load float*** %t, align 8, !tbaa !4
  %arrayidx23 = getelementptr inbounds float** %17, i64 %indvars.iv114
  %18 = load float** %arrayidx23, align 8, !tbaa !4
  %call24 = tail call float @FSum(float* %18, i32 3) #7
  %19 = load float** %end, align 8, !tbaa !4
  %arrayidx26 = getelementptr inbounds float* %19, i64 %indvars.iv114
  %20 = load float* %arrayidx26, align 4, !tbaa !3
  %add27 = fadd float %call24, %20
  %21 = load float*** %t, align 8, !tbaa !4
  %arrayidx30 = getelementptr inbounds float** %21, i64 %indvars.iv114
  %22 = load float** %arrayidx30, align 8, !tbaa !4
  %conv33 = fdiv float 1.000000e+00, %add27
  tail call void @FScale(float* %22, i32 3, float %conv33) #7
  %23 = load float** %end, align 8, !tbaa !4
  %arrayidx36 = getelementptr inbounds float* %23, i64 %indvars.iv114
  %24 = load float* %arrayidx36, align 4, !tbaa !3
  %div37 = fdiv float %24, %add27
  store float %div37, float* %arrayidx36, align 4, !tbaa !3
  %25 = load float*** %t, align 8, !tbaa !4
  %arrayidx40 = getelementptr inbounds float** %25, i64 %indvars.iv114
  %26 = load float** %arrayidx40, align 8, !tbaa !4
  %add.ptr41 = getelementptr inbounds float* %26, i64 3
  tail call void @FNorm(float* %add.ptr41, i32 2) #7
  %27 = load float*** %t, align 8, !tbaa !4
  %arrayidx44 = getelementptr inbounds float** %27, i64 %indvars.iv114
  %28 = load float** %arrayidx44, align 8, !tbaa !4
  %add.ptr45 = getelementptr inbounds float* %28, i64 5
  tail call void @FNorm(float* %add.ptr45, i32 2) #7
  %indvars.iv.next115 = add i64 %indvars.iv114, 1
  %29 = load i32* %M, align 4, !tbaa !0
  %30 = trunc i64 %indvars.iv.next115 to i32
  %cmp19 = icmp slt i32 %30, %29
  br i1 %cmp19, label %for.body21, label %for.end48

for.end48:                                        ; preds = %for.body21, %for.end9
  %arraydecay = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 28, i64 0
  %31 = load i32* @Alphabet_size, align 4, !tbaa !0
  tail call void @FNorm(float* %arraydecay, i32 %31) #7
  br label %for.body52

for.body52:                                       ; preds = %for.body52, %for.end48
  %indvars.iv = phi i64 [ 0, %for.end48 ], [ %indvars.iv.next, %for.body52 ]
  %arraydecay55 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 25, i64 %indvars.iv, i64 0
  tail call void @FNorm(float* %arraydecay55, i32 2) #7
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, 4
  br i1 %exitcond, label %for.end58, label %for.body52

for.end58:                                        ; preds = %for.body52
  %t59 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 21
  %32 = load float*** %t59, align 8, !tbaa !4
  %33 = load float** %32, align 8, !tbaa !4
  %arrayidx61 = getelementptr inbounds float* %33, i64 6
  store float 0.000000e+00, float* %arrayidx61, align 4, !tbaa !3
  %arrayidx64 = getelementptr inbounds float* %33, i64 5
  store float 0.000000e+00, float* %arrayidx64, align 4, !tbaa !3
  %flags = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 47
  %34 = load i32* %flags, align 4, !tbaa !0
  %and = and i32 %34, -34
  %or = or i32 %and, 32
  store i32 %or, i32* %flags, align 4, !tbaa !0
  ret void
}

; Function Attrs: optsize
declare void @FNorm(float*, i32) #1

; Function Attrs: optsize
declare float @FSum(float*, i32) #1

; Function Attrs: optsize
declare void @FScale(float*, i32, float) #1

; Function Attrs: nounwind optsize uwtable
define void @Plan7RenormalizeExits(%struct.plan7_s* nocapture %hmm) #0 {
entry:
  %M = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 20
  %0 = load i32* %M, align 4, !tbaa !0
  %cmp15 = icmp sgt i32 %0, 1
  br i1 %cmp15, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %t = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 21
  %end = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 27
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %indvars.iv = phi i64 [ 1, %for.body.lr.ph ], [ %indvars.iv.next, %for.body ]
  %1 = load float*** %t, align 8, !tbaa !4
  %arrayidx = getelementptr inbounds float** %1, i64 %indvars.iv
  %2 = load float** %arrayidx, align 8, !tbaa !4
  %call = tail call float @FSum(float* %2, i32 3) #7
  %3 = load float*** %t, align 8, !tbaa !4
  %arrayidx3 = getelementptr inbounds float** %3, i64 %indvars.iv
  %4 = load float** %arrayidx3, align 8, !tbaa !4
  %5 = load float** %end, align 8, !tbaa !4
  %arrayidx5 = getelementptr inbounds float* %5, i64 %indvars.iv
  %6 = load float* %arrayidx5, align 4, !tbaa !3
  %mul = fmul float %call, %6
  %add = fadd float %call, %mul
  %conv6 = fdiv float 1.000000e+00, %add
  tail call void @FScale(float* %4, i32 3, float %conv6) #7
  %indvars.iv.next = add i64 %indvars.iv, 1
  %7 = load i32* %M, align 4, !tbaa !0
  %8 = trunc i64 %indvars.iv.next to i32
  %cmp = icmp slt i32 %8, %7
  br i1 %cmp, label %for.body, label %for.end

for.end:                                          ; preds = %for.body, %entry
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @Plan7NakedConfig(%struct.plan7_s* nocapture %hmm) #0 {
entry:
  %arrayidx1 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 25, i64 0, i64 0
  store float 1.000000e+00, float* %arrayidx1, align 4, !tbaa !3
  %arrayidx4 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 25, i64 0, i64 1
  store float 0.000000e+00, float* %arrayidx4, align 4, !tbaa !3
  %arrayidx7 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 25, i64 1, i64 0
  store float 1.000000e+00, float* %arrayidx7, align 4, !tbaa !3
  %arrayidx10 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 25, i64 1, i64 1
  store float 0.000000e+00, float* %arrayidx10, align 4, !tbaa !3
  %arrayidx13 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 25, i64 2, i64 0
  store float 1.000000e+00, float* %arrayidx13, align 4, !tbaa !3
  %arrayidx16 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 25, i64 2, i64 1
  store float 0.000000e+00, float* %arrayidx16, align 4, !tbaa !3
  %arrayidx19 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 25, i64 3, i64 0
  store float 0.000000e+00, float* %arrayidx19, align 4, !tbaa !3
  %arrayidx22 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 25, i64 3, i64 1
  store float 1.000000e+00, float* %arrayidx22, align 4, !tbaa !3
  %begin = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 26
  %0 = load float** %begin, align 8, !tbaa !4
  %add.ptr = getelementptr inbounds float* %0, i64 2
  %M = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 20
  %1 = load i32* %M, align 4, !tbaa !0
  %sub = add nsw i32 %1, -1
  tail call void @FSet(float* %add.ptr, i32 %sub, float 0.000000e+00) #7
  %tbd1 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 24
  %2 = load float* %tbd1, align 4, !tbaa !3
  %conv24 = fsub float 1.000000e+00, %2
  %3 = load float** %begin, align 8, !tbaa !4
  %arrayidx26 = getelementptr inbounds float* %3, i64 1
  store float %conv24, float* %arrayidx26, align 4, !tbaa !3
  %end = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 27
  %4 = load float** %end, align 8, !tbaa !4
  %add.ptr27 = getelementptr inbounds float* %4, i64 1
  %5 = load i32* %M, align 4, !tbaa !0
  %sub29 = add nsw i32 %5, -1
  tail call void @FSet(float* %add.ptr27, i32 %sub29, float 0.000000e+00) #7
  %6 = load i32* %M, align 4, !tbaa !0
  %idxprom = sext i32 %6 to i64
  %7 = load float** %end, align 8, !tbaa !4
  %arrayidx32 = getelementptr inbounds float* %7, i64 %idxprom
  store float 1.000000e+00, float* %arrayidx32, align 4, !tbaa !3
  tail call void @Plan7RenormalizeExits(%struct.plan7_s* %hmm) #8
  %flags = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 47
  %8 = load i32* %flags, align 4, !tbaa !0
  %and = and i32 %8, -2
  store i32 %and, i32* %flags, align 4, !tbaa !0
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @Plan7GlobalConfig(%struct.plan7_s* nocapture %hmm) #0 {
entry:
  %p1 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 29
  %0 = load float* %p1, align 4, !tbaa !3
  %conv1 = fsub float 1.000000e+00, %0
  %arrayidx2 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 25, i64 0, i64 0
  store float %conv1, float* %arrayidx2, align 4, !tbaa !3
  %arrayidx6 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 25, i64 0, i64 1
  store float %0, float* %arrayidx6, align 4, !tbaa !3
  %arrayidx9 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 25, i64 1, i64 0
  store float 1.000000e+00, float* %arrayidx9, align 4, !tbaa !3
  %arrayidx12 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 25, i64 1, i64 1
  store float 0.000000e+00, float* %arrayidx12, align 4, !tbaa !3
  %arrayidx19 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 25, i64 2, i64 0
  store float %conv1, float* %arrayidx19, align 4, !tbaa !3
  %arrayidx23 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 25, i64 2, i64 1
  store float %0, float* %arrayidx23, align 4, !tbaa !3
  %arrayidx26 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 25, i64 3, i64 0
  store float 0.000000e+00, float* %arrayidx26, align 4, !tbaa !3
  %arrayidx29 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 25, i64 3, i64 1
  store float 1.000000e+00, float* %arrayidx29, align 4, !tbaa !3
  %begin = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 26
  %1 = load float** %begin, align 8, !tbaa !4
  %add.ptr = getelementptr inbounds float* %1, i64 2
  %M = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 20
  %2 = load i32* %M, align 4, !tbaa !0
  %sub30 = add nsw i32 %2, -1
  tail call void @FSet(float* %add.ptr, i32 %sub30, float 0.000000e+00) #7
  %tbd1 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 24
  %3 = load float* %tbd1, align 4, !tbaa !3
  %conv33 = fsub float 1.000000e+00, %3
  %4 = load float** %begin, align 8, !tbaa !4
  %arrayidx35 = getelementptr inbounds float* %4, i64 1
  store float %conv33, float* %arrayidx35, align 4, !tbaa !3
  %end = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 27
  %5 = load float** %end, align 8, !tbaa !4
  %add.ptr36 = getelementptr inbounds float* %5, i64 1
  %6 = load i32* %M, align 4, !tbaa !0
  %sub38 = add nsw i32 %6, -1
  tail call void @FSet(float* %add.ptr36, i32 %sub38, float 0.000000e+00) #7
  %7 = load i32* %M, align 4, !tbaa !0
  %idxprom = sext i32 %7 to i64
  %8 = load float** %end, align 8, !tbaa !4
  %arrayidx41 = getelementptr inbounds float* %8, i64 %idxprom
  store float 1.000000e+00, float* %arrayidx41, align 4, !tbaa !3
  tail call void @Plan7RenormalizeExits(%struct.plan7_s* %hmm) #8
  %flags = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 47
  %9 = load i32* %flags, align 4, !tbaa !0
  %and = and i32 %9, -2
  store i32 %and, i32* %flags, align 4, !tbaa !0
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @Plan7LSConfig(%struct.plan7_s* nocapture %hmm) #0 {
entry:
  %p1 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 29
  %0 = load float* %p1, align 4, !tbaa !3
  %conv1 = fsub float 1.000000e+00, %0
  %arrayidx2 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 25, i64 0, i64 0
  store float %conv1, float* %arrayidx2, align 4, !tbaa !3
  %arrayidx6 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 25, i64 0, i64 1
  store float %0, float* %arrayidx6, align 4, !tbaa !3
  %arrayidx9 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 25, i64 1, i64 0
  store float 5.000000e-01, float* %arrayidx9, align 4, !tbaa !3
  %arrayidx12 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 25, i64 1, i64 1
  store float 5.000000e-01, float* %arrayidx12, align 4, !tbaa !3
  %arrayidx19 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 25, i64 2, i64 0
  store float %conv1, float* %arrayidx19, align 4, !tbaa !3
  %arrayidx23 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 25, i64 2, i64 1
  store float %0, float* %arrayidx23, align 4, !tbaa !3
  %arrayidx30 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 25, i64 3, i64 0
  store float %conv1, float* %arrayidx30, align 4, !tbaa !3
  %arrayidx34 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 25, i64 3, i64 1
  store float %0, float* %arrayidx34, align 4, !tbaa !3
  %begin = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 26
  %1 = load float** %begin, align 8, !tbaa !4
  %add.ptr = getelementptr inbounds float* %1, i64 2
  %M = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 20
  %2 = load i32* %M, align 4, !tbaa !0
  %sub35 = add nsw i32 %2, -1
  tail call void @FSet(float* %add.ptr, i32 %sub35, float 0.000000e+00) #7
  %tbd1 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 24
  %3 = load float* %tbd1, align 4, !tbaa !3
  %conv38 = fsub float 1.000000e+00, %3
  %4 = load float** %begin, align 8, !tbaa !4
  %arrayidx40 = getelementptr inbounds float* %4, i64 1
  store float %conv38, float* %arrayidx40, align 4, !tbaa !3
  %end = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 27
  %5 = load float** %end, align 8, !tbaa !4
  %add.ptr41 = getelementptr inbounds float* %5, i64 1
  %6 = load i32* %M, align 4, !tbaa !0
  %sub43 = add nsw i32 %6, -1
  tail call void @FSet(float* %add.ptr41, i32 %sub43, float 0.000000e+00) #7
  %7 = load i32* %M, align 4, !tbaa !0
  %idxprom = sext i32 %7 to i64
  %8 = load float** %end, align 8, !tbaa !4
  %arrayidx46 = getelementptr inbounds float* %8, i64 %idxprom
  store float 1.000000e+00, float* %arrayidx46, align 4, !tbaa !3
  tail call void @Plan7RenormalizeExits(%struct.plan7_s* %hmm) #8
  %flags = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 47
  %9 = load i32* %flags, align 4, !tbaa !0
  %and = and i32 %9, -2
  store i32 %and, i32* %flags, align 4, !tbaa !0
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @Plan7SWConfig(%struct.plan7_s* nocapture %hmm, float %pentry, float %pexit) #0 {
entry:
  %p1 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 29
  %0 = load float* %p1, align 4, !tbaa !3
  %sub = fsub float 1.000000e+00, %0
  %arrayidx1 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 25, i64 0, i64 0
  store float %sub, float* %arrayidx1, align 4, !tbaa !3
  %arrayidx5 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 25, i64 0, i64 1
  store float %0, float* %arrayidx5, align 4, !tbaa !3
  %arrayidx8 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 25, i64 1, i64 0
  store float 1.000000e+00, float* %arrayidx8, align 4, !tbaa !3
  %arrayidx11 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 25, i64 1, i64 1
  store float 0.000000e+00, float* %arrayidx11, align 4, !tbaa !3
  %arrayidx16 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 25, i64 2, i64 0
  store float %sub, float* %arrayidx16, align 4, !tbaa !3
  %arrayidx20 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 25, i64 2, i64 1
  store float %0, float* %arrayidx20, align 4, !tbaa !3
  %arrayidx23 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 25, i64 3, i64 0
  store float 1.000000e+00, float* %arrayidx23, align 4, !tbaa !3
  %arrayidx26 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 25, i64 3, i64 1
  store float 0.000000e+00, float* %arrayidx26, align 4, !tbaa !3
  %conv = fpext float %pentry to double
  %sub27 = fsub double 1.000000e+00, %conv
  %tbd1 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 24
  %1 = load float* %tbd1, align 4, !tbaa !3
  %conv28 = fpext float %1 to double
  %sub29 = fsub double 1.000000e+00, %conv28
  %mul = fmul double %sub27, %sub29
  %conv30 = fptrunc double %mul to float
  %begin = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 26
  %2 = load float** %begin, align 8, !tbaa !4
  %arrayidx31 = getelementptr inbounds float* %2, i64 1
  store float %conv30, float* %arrayidx31, align 4, !tbaa !3
  %add.ptr = getelementptr inbounds float* %2, i64 2
  %M = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 20
  %3 = load i32* %M, align 4, !tbaa !0
  %sub33 = add nsw i32 %3, -1
  %4 = load float* %tbd1, align 4, !tbaa !3
  %conv36 = fpext float %4 to double
  %sub37 = fsub double 1.000000e+00, %conv36
  %mul38 = fmul double %conv, %sub37
  %conv41 = sitofp i32 %sub33 to float
  %conv42 = fpext float %conv41 to double
  %div = fdiv double %mul38, %conv42
  %conv43 = fptrunc double %div to float
  tail call void @FSet(float* %add.ptr, i32 %sub33, float %conv43) #7
  %5 = load i32* %M, align 4, !tbaa !0
  %idxprom = sext i32 %5 to i64
  %end = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 27
  %6 = load float** %end, align 8, !tbaa !4
  %arrayidx45 = getelementptr inbounds float* %6, i64 %idxprom
  store float 1.000000e+00, float* %arrayidx45, align 4, !tbaa !3
  %sub47 = add nsw i32 %5, -1
  %conv48 = sitofp i32 %sub47 to float
  %div49 = fdiv float %pexit, %conv48
  %cmp92 = icmp sgt i32 %5, 1
  br i1 %cmp92, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %conv52 = fpext float %div49 to double
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %indvars.iv = phi i64 [ 1, %for.body.lr.ph ], [ %indvars.iv.next, %for.body ]
  %7 = add nsw i64 %indvars.iv, 4294967295
  %8 = trunc i64 %7 to i32
  %conv54 = sitofp i32 %8 to float
  %mul55 = fmul float %div49, %conv54
  %conv56 = fpext float %mul55 to double
  %sub57 = fsub double 1.000000e+00, %conv56
  %div58 = fdiv double %conv52, %sub57
  %conv59 = fptrunc double %div58 to float
  %arrayidx62 = getelementptr inbounds float* %6, i64 %indvars.iv
  store float %conv59, float* %arrayidx62, align 4, !tbaa !3
  %indvars.iv.next = add i64 %indvars.iv, 1
  %9 = trunc i64 %indvars.iv.next to i32
  %cmp = icmp slt i32 %9, %5
  br i1 %cmp, label %for.body, label %for.end

for.end:                                          ; preds = %for.body, %entry
  tail call void @Plan7RenormalizeExits(%struct.plan7_s* %hmm) #8
  %flags = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 47
  %10 = load i32* %flags, align 4, !tbaa !0
  %and = and i32 %10, -2
  store i32 %and, i32* %flags, align 4, !tbaa !0
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @Plan7FSConfig(%struct.plan7_s* nocapture %hmm, float %pentry, float %pexit) #0 {
entry:
  %p1 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 29
  %0 = load float* %p1, align 4, !tbaa !3
  %sub = fsub float 1.000000e+00, %0
  %arrayidx1 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 25, i64 0, i64 0
  store float %sub, float* %arrayidx1, align 4, !tbaa !3
  %arrayidx5 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 25, i64 0, i64 1
  store float %0, float* %arrayidx5, align 4, !tbaa !3
  %arrayidx8 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 25, i64 1, i64 0
  store float 5.000000e-01, float* %arrayidx8, align 4, !tbaa !3
  %arrayidx11 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 25, i64 1, i64 1
  store float 5.000000e-01, float* %arrayidx11, align 4, !tbaa !3
  %arrayidx16 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 25, i64 2, i64 0
  store float %sub, float* %arrayidx16, align 4, !tbaa !3
  %arrayidx20 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 25, i64 2, i64 1
  store float %0, float* %arrayidx20, align 4, !tbaa !3
  %arrayidx26 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 25, i64 3, i64 0
  store float %sub, float* %arrayidx26, align 4, !tbaa !3
  %arrayidx30 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 25, i64 3, i64 1
  store float %0, float* %arrayidx30, align 4, !tbaa !3
  %conv31 = fpext float %pentry to double
  %sub32 = fsub double 1.000000e+00, %conv31
  %tbd1 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 24
  %1 = load float* %tbd1, align 4, !tbaa !3
  %conv33 = fpext float %1 to double
  %sub34 = fsub double 1.000000e+00, %conv33
  %mul = fmul double %sub32, %sub34
  %conv35 = fptrunc double %mul to float
  %begin = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 26
  %2 = load float** %begin, align 8, !tbaa !4
  %arrayidx36 = getelementptr inbounds float* %2, i64 1
  store float %conv35, float* %arrayidx36, align 4, !tbaa !3
  %add.ptr = getelementptr inbounds float* %2, i64 2
  %M = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 20
  %3 = load i32* %M, align 4, !tbaa !0
  %sub38 = add nsw i32 %3, -1
  %4 = load float* %tbd1, align 4, !tbaa !3
  %conv41 = fpext float %4 to double
  %sub42 = fsub double 1.000000e+00, %conv41
  %mul43 = fmul double %conv31, %sub42
  %conv46 = sitofp i32 %sub38 to float
  %conv47 = fpext float %conv46 to double
  %div = fdiv double %mul43, %conv47
  %conv48 = fptrunc double %div to float
  tail call void @FSet(float* %add.ptr, i32 %sub38, float %conv48) #7
  %5 = load i32* %M, align 4, !tbaa !0
  %idxprom = sext i32 %5 to i64
  %end = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 27
  %6 = load float** %end, align 8, !tbaa !4
  %arrayidx50 = getelementptr inbounds float* %6, i64 %idxprom
  store float 1.000000e+00, float* %arrayidx50, align 4, !tbaa !3
  %sub52 = add nsw i32 %5, -1
  %conv53 = sitofp i32 %sub52 to float
  %div54 = fdiv float %pexit, %conv53
  %cmp99 = icmp sgt i32 %5, 1
  br i1 %cmp99, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %conv57 = fpext float %div54 to double
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %indvars.iv = phi i64 [ 1, %for.body.lr.ph ], [ %indvars.iv.next, %for.body ]
  %7 = add nsw i64 %indvars.iv, 4294967295
  %8 = trunc i64 %7 to i32
  %conv59 = sitofp i32 %8 to float
  %mul60 = fmul float %div54, %conv59
  %conv61 = fpext float %mul60 to double
  %sub62 = fsub double 1.000000e+00, %conv61
  %div63 = fdiv double %conv57, %sub62
  %conv64 = fptrunc double %div63 to float
  %arrayidx67 = getelementptr inbounds float* %6, i64 %indvars.iv
  store float %conv64, float* %arrayidx67, align 4, !tbaa !3
  %indvars.iv.next = add i64 %indvars.iv, 1
  %9 = trunc i64 %indvars.iv.next to i32
  %cmp = icmp slt i32 %9, %5
  br i1 %cmp, label %for.body, label %for.end

for.end:                                          ; preds = %for.body, %entry
  tail call void @Plan7RenormalizeExits(%struct.plan7_s* %hmm) #8
  %flags = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 47
  %10 = load i32* %flags, align 4, !tbaa !0
  %and = and i32 %10, -2
  store i32 %and, i32* %flags, align 4, !tbaa !0
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @Plan7ESTConfig(%struct.plan7_s* nocapture %hmm, i32* nocapture %aacode, float** nocapture %estmodel, float %dna2, float %dna4) #0 {
for.cond:
  %arrayidx1 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 25, i64 0, i64 0
  store float 0x3F6756CAC0000000, float* %arrayidx1, align 4, !tbaa !3
  %arrayidx4 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 25, i64 0, i64 1
  store float 0x3FEFE8A940000000, float* %arrayidx4, align 4, !tbaa !3
  %arrayidx7 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 25, i64 1, i64 0
  store float 1.000000e+00, float* %arrayidx7, align 4, !tbaa !3
  %arrayidx10 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 25, i64 1, i64 1
  store float 0.000000e+00, float* %arrayidx10, align 4, !tbaa !3
  %arrayidx13 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 25, i64 2, i64 0
  store float 0x3F6756CAC0000000, float* %arrayidx13, align 4, !tbaa !3
  %arrayidx16 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 25, i64 2, i64 1
  store float 0x3FEFE8A940000000, float* %arrayidx16, align 4, !tbaa !3
  %arrayidx19 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 25, i64 3, i64 0
  store float 1.000000e+00, float* %arrayidx19, align 4, !tbaa !3
  %arrayidx22 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 25, i64 3, i64 1
  store float 0.000000e+00, float* %arrayidx22, align 4, !tbaa !3
  %begin = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 26
  %0 = load float** %begin, align 8, !tbaa !4
  %arrayidx23 = getelementptr inbounds float* %0, i64 1
  store float 5.000000e-01, float* %arrayidx23, align 4, !tbaa !3
  %add.ptr = getelementptr inbounds float* %0, i64 2
  %M = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 20
  %1 = load i32* %M, align 4, !tbaa !0
  %sub = add nsw i32 %1, -1
  %conv = sitofp i32 %1 to float
  %conv26 = fpext float %conv to double
  %sub27 = fadd double %conv26, -1.000000e+00
  %div = fdiv double 5.000000e-01, %sub27
  %conv28 = fptrunc double %div to float
  tail call void @FSet(float* %add.ptr, i32 %sub, float %conv28) #7
  %2 = load i32* %M, align 4, !tbaa !0
  %idxprom = sext i32 %2 to i64
  %end = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 27
  %3 = load float** %end, align 8, !tbaa !4
  %arrayidx30 = getelementptr inbounds float* %3, i64 %idxprom
  store float 1.000000e+00, float* %arrayidx30, align 4, !tbaa !3
  %sub33 = add nsw i32 %2, -1
  %conv35 = sitofp i32 %2 to float
  %conv36 = fpext float %conv35 to double
  %sub37 = fadd double %conv36, -1.000000e+00
  %div38 = fdiv double 5.000000e-01, %sub37
  %conv39 = fptrunc double %div38 to float
  tail call void @FSet(float* %3, i32 %sub33, float %conv39) #7
  %4 = load i32* %M, align 4, !tbaa !0
  %cmp = icmp slt i32 %4, 1
  br i1 %cmp, label %for.end108, label %for.body45

for.body45:                                       ; preds = %for.cond
  tail call void @llvm.trap()
  unreachable

for.end108:                                       ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @PrintPlan7Stats(%struct._IO_FILE* nocapture %fp, %struct.plan7_s* %hmm, i8** nocapture %dsq, i32 %nseq, %struct.p7trace_s** nocapture %tr) #0 {
entry:
  tail call void @P7Logoddsify(%struct.plan7_s* %hmm, i32 1) #8
  %0 = load i8** %dsq, align 8, !tbaa !4
  %1 = load %struct.p7trace_s** %tr, align 8, !tbaa !4
  %call = tail call float @P7TraceScore(%struct.plan7_s* %hmm, i8* %0, %struct.p7trace_s* %1) #7
  %mul = fmul float %call, %call
  %cmp70 = icmp sgt i32 %nseq, 1
  br i1 %cmp70, label %for.body, label %for.end.if.end26_crit_edge

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 1, %entry ]
  %sqsum.075 = phi float [ %add7, %for.body ], [ %mul, %entry ]
  %worst.074 = phi float [ %worst.1, %for.body ], [ %call, %entry ]
  %best.073 = phi float [ %best.1, %for.body ], [ %call, %entry ]
  %total.072 = phi float [ %add, %for.body ], [ %call, %entry ]
  %arrayidx2 = getelementptr inbounds i8** %dsq, i64 %indvars.iv
  %2 = load i8** %arrayidx2, align 8, !tbaa !4
  %arrayidx4 = getelementptr inbounds %struct.p7trace_s** %tr, i64 %indvars.iv
  %3 = load %struct.p7trace_s** %arrayidx4, align 8, !tbaa !4
  %call5 = tail call float @P7TraceScore(%struct.plan7_s* %hmm, i8* %2, %struct.p7trace_s* %3) #7
  %add = fadd float %total.072, %call5
  %mul6 = fmul float %call5, %call5
  %add7 = fadd float %sqsum.075, %mul6
  %cmp8 = fcmp ogt float %call5, %best.073
  %best.1 = select i1 %cmp8, float %call5, float %best.073
  %cmp9 = fcmp olt float %call5, %worst.074
  %worst.1 = select i1 %cmp9, float %call5, float %worst.074
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %nseq
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          ; preds = %for.body
  br i1 %cmp70, label %if.then13, label %for.end.if.end26_crit_edge

for.end.if.end26_crit_edge:                       ; preds = %entry, %for.end
  %total.0.lcssa84 = phi float [ %add, %for.end ], [ %call, %entry ]
  %best.0.lcssa82 = phi float [ %best.1, %for.end ], [ %call, %entry ]
  %worst.0.lcssa80 = phi float [ %worst.1, %for.end ], [ %call, %entry ]
  %conv27.pre = sitofp i32 %nseq to float
  br label %if.end26

if.then13:                                        ; preds = %for.end
  %mul14 = fmul float %add, %add
  %conv = sitofp i32 %nseq to float
  %div = fdiv float %mul14, %conv
  %sub = fsub float %add7, %div
  %conv15 = fpext float %sub to double
  %conv17 = fpext float %conv to double
  %sub18 = fadd double %conv17, -1.000000e+00
  %div19 = fdiv double %conv15, %sub18
  %conv20 = fptrunc double %div19 to float
  %cmp21 = fcmp ogt float %conv20, 0.000000e+00
  br i1 %cmp21, label %cond.true, label %if.end26

cond.true:                                        ; preds = %if.then13
  %phitmp68 = tail call float @sqrtf(float %conv20) #2
  %phitmp69 = fpext float %phitmp68 to double
  br label %if.end26

if.end26:                                         ; preds = %for.end.if.end26_crit_edge, %cond.true, %if.then13
  %total.0.lcssa83 = phi float [ %total.0.lcssa84, %for.end.if.end26_crit_edge ], [ %add, %cond.true ], [ %add, %if.then13 ]
  %best.0.lcssa81 = phi float [ %best.0.lcssa82, %for.end.if.end26_crit_edge ], [ %best.1, %cond.true ], [ %best.1, %if.then13 ]
  %worst.0.lcssa79 = phi float [ %worst.0.lcssa80, %for.end.if.end26_crit_edge ], [ %worst.1, %cond.true ], [ %worst.1, %if.then13 ]
  %conv27.pre-phi = phi float [ %conv27.pre, %for.end.if.end26_crit_edge ], [ %conv, %cond.true ], [ %conv, %if.then13 ]
  %stddev.0 = phi double [ 0.000000e+00, %for.end.if.end26_crit_edge ], [ %phitmp69, %cond.true ], [ 0.000000e+00, %if.then13 ]
  %div28 = fdiv float %total.0.lcssa83, %conv27.pre-phi
  %conv29 = fpext float %div28 to double
  %call30 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([29 x i8]* @.str3, i64 0, i64 0), double %conv29) #7
  %conv31 = fpext float %worst.0.lcssa79 to double
  %call32 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([29 x i8]* @.str4, i64 0, i64 0), double %conv31) #7
  %conv33 = fpext float %best.0.lcssa81 to double
  %call34 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([29 x i8]* @.str5, i64 0, i64 0), double %conv33) #7
  %call36 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([29 x i8]* @.str6, i64 0, i64 0), double %stddev.0) #7
  ret void
}

; Function Attrs: optsize
declare float @P7TraceScore(%struct.plan7_s*, i8*, %struct.p7trace_s*) #1

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #2

; Function Attrs: nounwind optsize uwtable
define void @Plan9toPlan7(%struct.plan9_s* nocapture %hmm, %struct.plan7_s** nocapture %ret_plan7) #0 {
entry:
  %M = getelementptr inbounds %struct.plan9_s* %hmm, i64 0, i32 0
  %0 = load i32* %M, align 4, !tbaa !0
  %call = tail call %struct.plan7_s* @AllocPlan7(i32 %0) #8
  %1 = load i32* %M, align 4, !tbaa !0
  %cmp237 = icmp sgt i32 %1, 1
  br i1 %cmp237, label %for.body.lr.ph, label %for.cond59.preheader

for.body.lr.ph:                                   ; preds = %entry
  %mat = getelementptr inbounds %struct.plan9_s* %hmm, i64 0, i32 2
  %2 = load %struct.basic_state** %mat, align 8, !tbaa !4
  %t4 = getelementptr inbounds %struct.plan7_s* %call, i64 0, i32 21
  %3 = load float*** %t4, align 8, !tbaa !4
  %del = getelementptr inbounds %struct.plan9_s* %hmm, i64 0, i32 3
  %4 = load %struct.basic_state** %del, align 8, !tbaa !4
  %ins = getelementptr inbounds %struct.plan9_s* %hmm, i64 0, i32 1
  %5 = load %struct.basic_state** %ins, align 8, !tbaa !4
  br label %for.body

for.cond59.preheader:                             ; preds = %for.body, %entry
  %cmp61235 = icmp slt i32 %1, 1
  br i1 %cmp61235, label %for.cond82.preheader, label %for.cond63.preheader.lr.ph

for.cond63.preheader.lr.ph:                       ; preds = %for.cond59.preheader
  %6 = load i32* @Alphabet_size, align 4, !tbaa !0
  %cmp64233 = icmp sgt i32 %6, 0
  %mat68 = getelementptr inbounds %struct.plan9_s* %hmm, i64 0, i32 2
  %mat73 = getelementptr inbounds %struct.plan7_s* %call, i64 0, i32 22
  br label %for.cond63.preheader

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %indvars.iv250 = phi i64 [ 1, %for.body.lr.ph ], [ %indvars.iv.next251, %for.body ]
  %arrayidx2 = getelementptr inbounds %struct.basic_state* %2, i64 %indvars.iv250, i32 0, i64 0
  %7 = load float* %arrayidx2, align 4, !tbaa !3
  %arrayidx5 = getelementptr inbounds float** %3, i64 %indvars.iv250
  %8 = load float** %arrayidx5, align 8, !tbaa !4
  store float %7, float* %8, align 4, !tbaa !3
  %arrayidx11 = getelementptr inbounds %struct.basic_state* %2, i64 %indvars.iv250, i32 0, i64 2
  %9 = load float* %arrayidx11, align 4, !tbaa !3
  %arrayidx15 = getelementptr inbounds float* %8, i64 2
  store float %9, float* %arrayidx15, align 4, !tbaa !3
  %arrayidx20 = getelementptr inbounds %struct.basic_state* %2, i64 %indvars.iv250, i32 0, i64 1
  %10 = load float* %arrayidx20, align 4, !tbaa !3
  %arrayidx24 = getelementptr inbounds float* %8, i64 1
  store float %10, float* %arrayidx24, align 4, !tbaa !3
  %arrayidx28 = getelementptr inbounds %struct.basic_state* %4, i64 %indvars.iv250, i32 0, i64 0
  %11 = load float* %arrayidx28, align 4, !tbaa !3
  %arrayidx32 = getelementptr inbounds float* %8, i64 5
  store float %11, float* %arrayidx32, align 4, !tbaa !3
  %arrayidx37 = getelementptr inbounds %struct.basic_state* %4, i64 %indvars.iv250, i32 0, i64 2
  %12 = load float* %arrayidx37, align 4, !tbaa !3
  %arrayidx41 = getelementptr inbounds float* %8, i64 6
  store float %12, float* %arrayidx41, align 4, !tbaa !3
  %arrayidx45 = getelementptr inbounds %struct.basic_state* %5, i64 %indvars.iv250, i32 0, i64 0
  %13 = load float* %arrayidx45, align 4, !tbaa !3
  %arrayidx49 = getelementptr inbounds float* %8, i64 3
  store float %13, float* %arrayidx49, align 4, !tbaa !3
  %arrayidx54 = getelementptr inbounds %struct.basic_state* %5, i64 %indvars.iv250, i32 0, i64 1
  %14 = load float* %arrayidx54, align 4, !tbaa !3
  %arrayidx58 = getelementptr inbounds float* %8, i64 4
  store float %14, float* %arrayidx58, align 4, !tbaa !3
  %indvars.iv.next251 = add i64 %indvars.iv250, 1
  %15 = trunc i64 %indvars.iv.next251 to i32
  %cmp = icmp slt i32 %15, %1
  br i1 %cmp, label %for.body, label %for.cond59.preheader

for.cond63.preheader:                             ; preds = %for.inc79, %for.cond63.preheader.lr.ph
  %indvars.iv248 = phi i64 [ %indvars.iv.next249, %for.inc79 ], [ 1, %for.cond63.preheader.lr.ph ]
  br i1 %cmp64233, label %for.body65.lr.ph, label %for.inc79

for.body65.lr.ph:                                 ; preds = %for.cond63.preheader
  %16 = load %struct.basic_state** %mat68, align 8, !tbaa !4
  %17 = load float*** %mat73, align 8, !tbaa !4
  %arrayidx74 = getelementptr inbounds float** %17, i64 %indvars.iv248
  %18 = load float** %arrayidx74, align 8, !tbaa !4
  br label %for.body65

for.cond82.preheader:                             ; preds = %for.inc79, %for.cond59.preheader
  br i1 %cmp237, label %for.cond86.preheader.lr.ph, label %for.end105

for.cond86.preheader.lr.ph:                       ; preds = %for.cond82.preheader
  %19 = load i32* @Alphabet_size, align 4, !tbaa !0
  %cmp87229 = icmp sgt i32 %19, 0
  %ins91 = getelementptr inbounds %struct.plan9_s* %hmm, i64 0, i32 1
  %ins97 = getelementptr inbounds %struct.plan7_s* %call, i64 0, i32 23
  br label %for.cond86.preheader

for.body65:                                       ; preds = %for.body65, %for.body65.lr.ph
  %indvars.iv244 = phi i64 [ 0, %for.body65.lr.ph ], [ %indvars.iv.next245, %for.body65 ]
  %arrayidx70 = getelementptr inbounds %struct.basic_state* %16, i64 %indvars.iv248, i32 1, i64 %indvars.iv244
  %20 = load float* %arrayidx70, align 4, !tbaa !3
  %arrayidx75 = getelementptr inbounds float* %18, i64 %indvars.iv244
  store float %20, float* %arrayidx75, align 4, !tbaa !3
  %indvars.iv.next245 = add i64 %indvars.iv244, 1
  %lftr.wideiv246 = trunc i64 %indvars.iv.next245 to i32
  %exitcond247 = icmp eq i32 %lftr.wideiv246, %6
  br i1 %exitcond247, label %for.inc79, label %for.body65

for.inc79:                                        ; preds = %for.body65, %for.cond63.preheader
  %indvars.iv.next249 = add i64 %indvars.iv248, 1
  %21 = trunc i64 %indvars.iv248 to i32
  %cmp61 = icmp slt i32 %21, %1
  br i1 %cmp61, label %for.cond63.preheader, label %for.cond82.preheader

for.cond86.preheader:                             ; preds = %for.cond86.preheader.lr.ph, %for.inc103
  %indvars.iv242 = phi i64 [ 1, %for.cond86.preheader.lr.ph ], [ %indvars.iv.next243, %for.inc103 ]
  br i1 %cmp87229, label %for.body88.lr.ph, label %for.inc103

for.body88.lr.ph:                                 ; preds = %for.cond86.preheader
  %22 = load %struct.basic_state** %ins91, align 8, !tbaa !4
  %23 = load float*** %ins97, align 8, !tbaa !4
  %arrayidx98 = getelementptr inbounds float** %23, i64 %indvars.iv242
  %24 = load float** %arrayidx98, align 8, !tbaa !4
  br label %for.body88

for.body88:                                       ; preds = %for.body88, %for.body88.lr.ph
  %indvars.iv240 = phi i64 [ 0, %for.body88.lr.ph ], [ %indvars.iv.next241, %for.body88 ]
  %arrayidx94 = getelementptr inbounds %struct.basic_state* %22, i64 %indvars.iv242, i32 1, i64 %indvars.iv240
  %25 = load float* %arrayidx94, align 4, !tbaa !3
  %arrayidx99 = getelementptr inbounds float* %24, i64 %indvars.iv240
  store float %25, float* %arrayidx99, align 4, !tbaa !3
  %indvars.iv.next241 = add i64 %indvars.iv240, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next241 to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %19
  br i1 %exitcond, label %for.inc103, label %for.body88

for.inc103:                                       ; preds = %for.body88, %for.cond86.preheader
  %indvars.iv.next243 = add i64 %indvars.iv242, 1
  %26 = trunc i64 %indvars.iv.next243 to i32
  %cmp84 = icmp slt i32 %26, %1
  br i1 %cmp84, label %for.cond86.preheader, label %for.end105

for.end105:                                       ; preds = %for.inc103, %for.cond82.preheader
  %mat106 = getelementptr inbounds %struct.plan9_s* %hmm, i64 0, i32 2
  %27 = load %struct.basic_state** %mat106, align 8, !tbaa !4
  %arrayidx109 = getelementptr inbounds %struct.basic_state* %27, i64 0, i32 0, i64 2
  %28 = load float* %arrayidx109, align 4, !tbaa !3
  %arrayidx117 = getelementptr inbounds %struct.basic_state* %27, i64 0, i32 0, i64 0
  %29 = load float* %arrayidx117, align 4, !tbaa !3
  %add = fadd float %28, %29
  %div = fdiv float %28, %add
  %tbd1 = getelementptr inbounds %struct.plan7_s* %call, i64 0, i32 24
  store float %div, float* %tbd1, align 4, !tbaa !3
  %arraydecay = getelementptr inbounds %struct.plan7_s* %call, i64 0, i32 28, i64 0
  %p1 = getelementptr inbounds %struct.plan7_s* %call, i64 0, i32 29
  tail call void @P7DefaultNullModel(float* %arraydecay, float* %p1) #7
  %30 = load i32* @Alphabet_size, align 4, !tbaa !0
  %cmp119227 = icmp sgt i32 %30, 0
  br i1 %cmp119227, label %for.body120, label %for.end129

for.body120:                                      ; preds = %for.end105, %for.body120
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body120 ], [ 0, %for.end105 ]
  %arrayidx123 = getelementptr inbounds %struct.plan9_s* %hmm, i64 0, i32 4, i64 %indvars.iv
  %31 = load float* %arrayidx123, align 4, !tbaa !3
  %arrayidx126 = getelementptr inbounds %struct.plan7_s* %call, i64 0, i32 28, i64 %indvars.iv
  store float %31, float* %arrayidx126, align 4, !tbaa !3
  %indvars.iv.next = add i64 %indvars.iv, 1
  %32 = trunc i64 %indvars.iv.next to i32
  %cmp119 = icmp slt i32 %32, %30
  br i1 %cmp119, label %for.body120, label %for.end129

for.end129:                                       ; preds = %for.body120, %for.end105
  %name = getelementptr inbounds %struct.plan9_s* %hmm, i64 0, i32 5
  %33 = load i8** %name, align 8, !tbaa !4
  %cmp130 = icmp eq i8* %33, null
  br i1 %cmp130, label %if.end, label %if.then

if.then:                                          ; preds = %for.end129
  tail call void @Plan7SetName(%struct.plan7_s* %call, i8* %33) #8
  br label %if.end

if.end:                                           ; preds = %for.end129, %if.then
  %flags = getelementptr inbounds %struct.plan9_s* %hmm, i64 0, i32 9
  %34 = load i32* %flags, align 4, !tbaa !0
  %and = and i32 %34, 1
  %tobool = icmp eq i32 %and, 0
  br i1 %tobool, label %if.end135, label %if.then132

if.then132:                                       ; preds = %if.end
  %rf = getelementptr inbounds %struct.plan7_s* %call, i64 0, i32 3
  %35 = load i8** %rf, align 8, !tbaa !4
  %ref = getelementptr inbounds %struct.plan9_s* %hmm, i64 0, i32 6
  %36 = load i8** %ref, align 8, !tbaa !4
  %call133 = tail call i8* @strcpy(i8* %35, i8* %36) #7
  %flags134 = getelementptr inbounds %struct.plan7_s* %call, i64 0, i32 47
  %37 = load i32* %flags134, align 4, !tbaa !0
  %or = or i32 %37, 4
  store i32 %or, i32* %flags134, align 4, !tbaa !0
  %.pre = load i32* %flags, align 4, !tbaa !0
  br label %if.end135

if.end135:                                        ; preds = %if.end, %if.then132
  %38 = phi i32 [ %34, %if.end ], [ %.pre, %if.then132 ]
  %and137 = and i32 %38, 2
  %tobool138 = icmp eq i32 %and137, 0
  br i1 %tobool138, label %if.end135.if.end144_crit_edge, label %if.then139

if.end135.if.end144_crit_edge:                    ; preds = %if.end135
  %flags145.pre = getelementptr inbounds %struct.plan7_s* %call, i64 0, i32 47
  br label %if.end144

if.then139:                                       ; preds = %if.end135
  %cs = getelementptr inbounds %struct.plan7_s* %call, i64 0, i32 4
  %39 = load i8** %cs, align 8, !tbaa !4
  %cs140 = getelementptr inbounds %struct.plan9_s* %hmm, i64 0, i32 7
  %40 = load i8** %cs140, align 8, !tbaa !4
  %call141 = tail call i8* @strcpy(i8* %39, i8* %40) #7
  %flags142 = getelementptr inbounds %struct.plan7_s* %call, i64 0, i32 47
  %41 = load i32* %flags142, align 4, !tbaa !0
  %or143 = or i32 %41, 8
  store i32 %or143, i32* %flags142, align 4, !tbaa !0
  br label %if.end144

if.end144:                                        ; preds = %if.end135.if.end144_crit_edge, %if.then139
  %flags145.pre-phi = phi i32* [ %flags145.pre, %if.end135.if.end144_crit_edge ], [ %flags142, %if.then139 ]
  tail call void @Plan7LSConfig(%struct.plan7_s* %call) #8
  tail call void @Plan7Renormalize(%struct.plan7_s* %call) #8
  %42 = load i32* %flags145.pre-phi, align 4, !tbaa !0
  %or146 = and i32 %42, -34
  %and148 = or i32 %or146, 32
  store i32 %and148, i32* %flags145.pre-phi, align 4, !tbaa !0
  store %struct.plan7_s* %call, %struct.plan7_s** %ret_plan7, align 8, !tbaa !4
  ret void
}

; Function Attrs: optsize
declare void @P7DefaultNullModel(float*, float*) #1

; Function Attrs: nounwind optsize
declare i8* @strcpy(i8*, i8* nocapture) #2

; Function Attrs: noreturn nounwind
declare void @llvm.trap() #5

; Function Attrs: nounwind optsize
declare float @sqrtf(float) #2

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #6

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn nounwind }
attributes #6 = { nounwind }
attributes #7 = { nounwind optsize }
attributes #8 = { optsize }
attributes #9 = { nounwind optsize readonly }
attributes #10 = { nounwind optsize readnone }

!0 = metadata !{metadata !"int", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"float", metadata !1}
!4 = metadata !{metadata !"any pointer", metadata !1}
!5 = metadata !{metadata !"long", metadata !1}
