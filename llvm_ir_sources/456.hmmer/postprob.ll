; ModuleID = '../../SPEC/benchspec/CPU2006/456.hmmer/src/postprob.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.plan7_s = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i8*, i32*, i32, i32*, i32*, i32*, float, float, float, float, float, float, i32, float**, float**, float**, float, [4 x [2 x float]], float*, float*, [20 x float], float, i32**, i32**, i32**, [4 x [2 x i32]], i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32**, i32**, i32, i32, float, float, i32 }
%struct.p7trace_s = type { i32, i8*, i32*, i32* }
%struct.dpmatrix_s = type { i32**, i32**, i32**, i32**, i8*, i8*, i8*, i8*, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [17 x i8] c"traceback failed\00", align 1
@.str1 = private unnamed_addr constant [18 x i8] c"Traceback failed.\00", align 1
@.str2 = private unnamed_addr constant [54 x i8] c"../../SPEC/benchspec/CPU2006/456.hmmer/src/postprob.c\00", align 1

; Function Attrs: nounwind optsize uwtable
define float @P7OptimalAccuracy(i8* %dsq, i32 %L, %struct.plan7_s* %hmm, %struct.p7trace_s** %ret_tr) #0 {
entry:
  %forward = alloca %struct.dpmatrix_s*, align 8
  %backward = alloca %struct.dpmatrix_s*, align 8
  call void @llvm.dbg.value(metadata !{i8* %dsq}, i64 0, metadata !85), !dbg !191
  call void @llvm.dbg.value(metadata !{i32 %L}, i64 0, metadata !86), !dbg !191
  call void @llvm.dbg.value(metadata !{%struct.plan7_s* %hmm}, i64 0, metadata !87), !dbg !191
  call void @llvm.dbg.value(metadata !{%struct.p7trace_s** %ret_tr}, i64 0, metadata !88), !dbg !191
  call void @llvm.dbg.declare(metadata !{%struct.dpmatrix_s** %forward}, metadata !91), !dbg !192
  call void @llvm.dbg.declare(metadata !{%struct.dpmatrix_s** %backward}, metadata !108), !dbg !193
  %call = call float @P7Forward(i8* %dsq, i32 %L, %struct.plan7_s* %hmm, %struct.dpmatrix_s** %forward) #3, !dbg !194
  %call1 = call float @P7Backward(i8* %dsq, i32 %L, %struct.plan7_s* %hmm, %struct.dpmatrix_s** %backward) #4, !dbg !195
  call void @llvm.dbg.value(metadata !{%struct.dpmatrix_s** %forward}, i64 0, metadata !91), !dbg !196
  %0 = load %struct.dpmatrix_s** %forward, align 8, !dbg !196, !tbaa !197
  call void @llvm.dbg.value(metadata !{%struct.dpmatrix_s** %backward}, i64 0, metadata !108), !dbg !196
  %1 = load %struct.dpmatrix_s** %backward, align 8, !dbg !196, !tbaa !197
  call void @P7EmitterPosterior(i32 %L, %struct.plan7_s* %hmm, %struct.dpmatrix_s* %0, %struct.dpmatrix_s* %1, %struct.dpmatrix_s* %1) #4, !dbg !196
  %M = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 20, !dbg !200
  %2 = load i32* %M, align 4, !dbg !200, !tbaa !201
  call void @llvm.dbg.value(metadata !{%struct.dpmatrix_s** %backward}, i64 0, metadata !108), !dbg !200
  %3 = load %struct.dpmatrix_s** %backward, align 8, !dbg !200, !tbaa !197
  call void @llvm.dbg.value(metadata !{%struct.dpmatrix_s** %forward}, i64 0, metadata !91), !dbg !200
  %4 = load %struct.dpmatrix_s** %forward, align 8, !dbg !200, !tbaa !197
  %call2 = call float @P7FillOptimalAccuracy(i32 %L, i32 %2, %struct.dpmatrix_s* %3, %struct.dpmatrix_s* %4, %struct.p7trace_s** %ret_tr) #4, !dbg !200
  call void @llvm.dbg.value(metadata !{%struct.dpmatrix_s** %forward}, i64 0, metadata !91), !dbg !202
  %5 = load %struct.dpmatrix_s** %forward, align 8, !dbg !202, !tbaa !197
  call void @FreePlan7Matrix(%struct.dpmatrix_s* %5) #3, !dbg !202
  call void @llvm.dbg.value(metadata !{%struct.dpmatrix_s** %backward}, i64 0, metadata !108), !dbg !203
  %6 = load %struct.dpmatrix_s** %backward, align 8, !dbg !203, !tbaa !197
  call void @FreePlan7Matrix(%struct.dpmatrix_s* %6) #3, !dbg !203
  ret float %call2, !dbg !204
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

; Function Attrs: optsize
declare float @P7Forward(i8*, i32, %struct.plan7_s*, %struct.dpmatrix_s**) #2

; Function Attrs: nounwind optsize uwtable
define float @P7Backward(i8* nocapture %dsq, i32 %L, %struct.plan7_s* nocapture %hmm, %struct.dpmatrix_s** %ret_mx) #0 {
entry:
  %xmx = alloca i32**, align 8
  %mmx = alloca i32**, align 8
  %imx = alloca i32**, align 8
  %dmx = alloca i32**, align 8
  call void @llvm.dbg.value(metadata !{i8* %dsq}, i64 0, metadata !114), !dbg !205
  call void @llvm.dbg.value(metadata !{i32 %L}, i64 0, metadata !115), !dbg !205
  call void @llvm.dbg.value(metadata !{%struct.plan7_s* %hmm}, i64 0, metadata !116), !dbg !205
  call void @llvm.dbg.value(metadata !{%struct.dpmatrix_s** %ret_mx}, i64 0, metadata !117), !dbg !205
  call void @llvm.dbg.declare(metadata !{i32*** %xmx}, metadata !119), !dbg !206
  call void @llvm.dbg.declare(metadata !{i32*** %mmx}, metadata !120), !dbg !207
  call void @llvm.dbg.declare(metadata !{i32*** %imx}, metadata !121), !dbg !208
  call void @llvm.dbg.declare(metadata !{i32*** %dmx}, metadata !122), !dbg !209
  %add = add nsw i32 %L, 1, !dbg !210
  %M = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 20, !dbg !210
  %0 = load i32* %M, align 4, !dbg !210, !tbaa !201
  %call = call %struct.dpmatrix_s* @AllocPlan7Matrix(i32 %add, i32 %0, i32*** %xmx, i32*** %mmx, i32*** %imx, i32*** %dmx) #3, !dbg !210
  call void @llvm.dbg.value(metadata !{%struct.dpmatrix_s* %call}, i64 0, metadata !118), !dbg !210
  %arrayidx1 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 33, i64 2, i64 0, !dbg !211
  %1 = load i32* %arrayidx1, align 4, !dbg !211, !tbaa !201
  %idxprom = sext i32 %L to i64, !dbg !211
  call void @llvm.dbg.value(metadata !{i32*** %xmx}, i64 0, metadata !119), !dbg !211
  %2 = load i32*** %xmx, align 8, !dbg !211, !tbaa !197
  %arrayidx2 = getelementptr inbounds i32** %2, i64 %idxprom, !dbg !211
  %3 = load i32** %arrayidx2, align 8, !dbg !211, !tbaa !197
  %arrayidx3 = getelementptr inbounds i32* %3, i64 2, !dbg !211
  store i32 %1, i32* %arrayidx3, align 4, !dbg !211, !tbaa !201
  call void @llvm.dbg.value(metadata !{i32*** %xmx}, i64 0, metadata !119), !dbg !212
  %arrayidx9 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 33, i64 1, i64 0, !dbg !212
  %4 = load i32* %arrayidx9, align 4, !dbg !212, !tbaa !201
  %add10 = add nsw i32 %4, %1, !dbg !212
  %arrayidx13 = getelementptr inbounds i32* %3, i64 1, !dbg !212
  store i32 %add10, i32* %arrayidx13, align 4, !dbg !212, !tbaa !201
  call void @llvm.dbg.value(metadata !{i32*** %xmx}, i64 0, metadata !119), !dbg !213
  %arrayidx16 = getelementptr inbounds i32* %3, i64 4, !dbg !213
  store i32 -987654321, i32* %arrayidx16, align 4, !dbg !213, !tbaa !201
  call void @llvm.dbg.value(metadata !{i32*** %xmx}, i64 0, metadata !119), !dbg !213
  store i32 -987654321, i32* %3, align 4, !dbg !213, !tbaa !201
  call void @llvm.dbg.value(metadata !{i32*** %xmx}, i64 0, metadata !119), !dbg !213
  %arrayidx22 = getelementptr inbounds i32* %3, i64 3, !dbg !213
  store i32 -987654321, i32* %arrayidx22, align 4, !dbg !213, !tbaa !201
  %5 = load i32* %M, align 4, !dbg !214, !tbaa !201
  call void @llvm.dbg.value(metadata !{i32 %5}, i64 0, metadata !124), !dbg !214
  %cmp494 = icmp sgt i32 %5, 0, !dbg !214
  br i1 %cmp494, label %for.body.lr.ph, label %for.end, !dbg !214

for.body.lr.ph:                                   ; preds = %entry
  %esc = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 35, !dbg !216
  %arrayidx36 = getelementptr inbounds i8* %dsq, i64 %idxprom, !dbg !218
  %msc = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 31, !dbg !218
  %6 = sext i32 %5 to i64
  %.pre507 = load i32** %esc, align 8, !dbg !216, !tbaa !197
  call void @llvm.dbg.value(metadata !{i32*** %mmx}, i64 0, metadata !120), !dbg !216
  %.pre508 = load i32*** %mmx, align 8, !dbg !216, !tbaa !197
  %arrayidx32.phi.trans.insert = getelementptr inbounds i32** %.pre508, i64 %idxprom
  %.pre509 = load i32** %arrayidx32.phi.trans.insert, align 8, !dbg !216, !tbaa !197
  %.pre510 = load i32*** %msc, align 8, !dbg !218, !tbaa !197
  call void @llvm.dbg.value(metadata !{i32*** %dmx}, i64 0, metadata !122), !dbg !219
  %.pre511 = load i32*** %dmx, align 8, !dbg !219, !tbaa !197
  %arrayidx47.phi.trans.insert = getelementptr inbounds i32** %.pre511, i64 %idxprom
  %.pre512 = load i32** %arrayidx47.phi.trans.insert, align 8, !dbg !219, !tbaa !197
  call void @llvm.dbg.value(metadata !{i32*** %imx}, i64 0, metadata !121), !dbg !219
  %.pre513 = load i32*** %imx, align 8, !dbg !219, !tbaa !197
  %arrayidx51.phi.trans.insert = getelementptr inbounds i32** %.pre513, i64 %idxprom
  %.pre514 = load i32** %arrayidx51.phi.trans.insert, align 8, !dbg !219, !tbaa !197
  br label %for.body, !dbg !214

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %7 = phi i32 [ %add10, %for.body.lr.ph ], [ %.pre521, %for.body.for.body_crit_edge ]
  %indvars.iv504 = phi i64 [ %6, %for.body.lr.ph ], [ %indvars.iv.next505, %for.body.for.body_crit_edge ]
  call void @llvm.dbg.value(metadata !{i32*** %xmx}, i64 0, metadata !119), !dbg !216
  %arrayidx28 = getelementptr inbounds i32* %.pre507, i64 %indvars.iv504, !dbg !216
  %8 = load i32* %arrayidx28, align 4, !dbg !216, !tbaa !201
  %add29 = add nsw i32 %8, %7, !dbg !216
  call void @llvm.dbg.value(metadata !{i32*** %mmx}, i64 0, metadata !120), !dbg !216
  %arrayidx33 = getelementptr inbounds i32* %.pre509, i64 %indvars.iv504, !dbg !216
  store i32 %add29, i32* %arrayidx33, align 4, !dbg !216, !tbaa !201
  %9 = load i8* %arrayidx36, align 1, !dbg !218, !tbaa !198
  %idxprom37 = sext i8 %9 to i64, !dbg !218
  %arrayidx38 = getelementptr inbounds i32** %.pre510, i64 %idxprom37, !dbg !218
  %10 = load i32** %arrayidx38, align 8, !dbg !218, !tbaa !197
  %arrayidx39 = getelementptr inbounds i32* %10, i64 %indvars.iv504, !dbg !218
  %11 = load i32* %arrayidx39, align 4, !dbg !218, !tbaa !201
  call void @llvm.dbg.value(metadata !{i32*** %mmx}, i64 0, metadata !120), !dbg !218
  %add44 = add nsw i32 %add29, %11, !dbg !218
  store i32 %add44, i32* %arrayidx33, align 4, !dbg !218, !tbaa !201
  call void @llvm.dbg.value(metadata !{i32*** %dmx}, i64 0, metadata !122), !dbg !219
  %arrayidx48 = getelementptr inbounds i32* %.pre512, i64 %indvars.iv504, !dbg !219
  store i32 -987654321, i32* %arrayidx48, align 4, !dbg !219, !tbaa !201
  call void @llvm.dbg.value(metadata !{i32*** %imx}, i64 0, metadata !121), !dbg !219
  %arrayidx52 = getelementptr inbounds i32* %.pre514, i64 %indvars.iv504, !dbg !219
  store i32 -987654321, i32* %arrayidx52, align 4, !dbg !219, !tbaa !201
  %indvars.iv.next505 = add i64 %indvars.iv504, -1, !dbg !214
  %12 = trunc i64 %indvars.iv.next505 to i32, !dbg !214
  %cmp = icmp sgt i32 %12, 0, !dbg !214
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.cond.for.end_crit_edge, !dbg !214

for.body.for.body_crit_edge:                      ; preds = %for.body
  %.pre521 = load i32* %arrayidx13, align 4, !dbg !216, !tbaa !201
  br label %for.body, !dbg !214

for.cond.for.end_crit_edge:                       ; preds = %for.body
  %.pre = load i32* %M, align 4, !dbg !220, !tbaa !201
  br label %for.end, !dbg !214

for.end:                                          ; preds = %for.cond.for.end_crit_edge, %entry
  %13 = phi i32 [ %.pre, %for.cond.for.end_crit_edge ], [ %5, %entry ]
  %sub = add nsw i32 %13, -1, !dbg !220
  %idxprom54 = sext i32 %sub to i64, !dbg !220
  %tsc = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 30, !dbg !220
  %14 = load i32*** %tsc, align 8, !dbg !220, !tbaa !197
  %arrayidx55 = getelementptr inbounds i32** %14, i64 2, !dbg !220
  %15 = load i32** %arrayidx55, align 8, !dbg !220, !tbaa !197
  %arrayidx56 = getelementptr inbounds i32* %15, i64 %idxprom54, !dbg !220
  store i32 -987654321, i32* %arrayidx56, align 4, !dbg !220, !tbaa !201
  %16 = load i32* %M, align 4, !dbg !220, !tbaa !201
  %sub58 = add nsw i32 %16, -1, !dbg !220
  %idxprom59 = sext i32 %sub58 to i64, !dbg !220
  %arrayidx61 = getelementptr inbounds i32** %14, i64 6, !dbg !220
  %17 = load i32** %arrayidx61, align 8, !dbg !220, !tbaa !197
  %arrayidx62 = getelementptr inbounds i32* %17, i64 %idxprom59, !dbg !220
  store i32 -987654321, i32* %arrayidx62, align 4, !dbg !220, !tbaa !201
  %cmp65491 = icmp sgt i32 %L, 0, !dbg !221
  br i1 %cmp65491, label %for.body67.lr.ph, label %for.end344, !dbg !221

for.body67.lr.ph:                                 ; preds = %for.end
  %arrayidx74 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 33, i64 2, i64 1, !dbg !223
  %bsc = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 34, !dbg !225
  %arrayidx130 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 33, i64 3, i64 0, !dbg !226
  %arrayidx138 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 33, i64 3, i64 1, !dbg !226
  %arrayidx156 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 33, i64 1, i64 1, !dbg !227
  %arrayidx167 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 33, i64 0, i64 0, !dbg !228
  %arrayidx175 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 33, i64 0, i64 1, !dbg !228
  %esc188 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 35, !dbg !229
  %msc197 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 31, !dbg !229
  %isc = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 32, !dbg !231
  br label %for.body67, !dbg !221

for.body67:                                       ; preds = %for.cond64.backedge.for.body67_crit_edge, %for.body67.lr.ph
  %18 = phi i32* [ %3, %for.body67.lr.ph ], [ %.pre516, %for.cond64.backedge.for.body67_crit_edge ]
  %19 = phi i32** [ %2, %for.body67.lr.ph ], [ %.pre515, %for.cond64.backedge.for.body67_crit_edge ]
  %indvars.iv502 = phi i64 [ %idxprom, %for.body67.lr.ph ], [ %indvars.iv.next503, %for.cond64.backedge.for.body67_crit_edge ]
  %indvars.iv.next503 = add i64 %indvars.iv502, -1, !dbg !221
  call void @llvm.dbg.value(metadata !{i32*** %xmx}, i64 0, metadata !119), !dbg !223
  %arrayidx71 = getelementptr inbounds i32* %18, i64 2, !dbg !223
  %20 = load i32* %arrayidx71, align 4, !dbg !223, !tbaa !201
  %21 = load i32* %arrayidx74, align 4, !dbg !223, !tbaa !201
  %add75 = add nsw i32 %21, %20, !dbg !223
  %arrayidx77 = getelementptr inbounds i32** %19, i64 %indvars.iv.next503, !dbg !223
  %22 = load i32** %arrayidx77, align 8, !dbg !223, !tbaa !197
  %arrayidx78 = getelementptr inbounds i32* %22, i64 2, !dbg !223
  store i32 %add75, i32* %arrayidx78, align 4, !dbg !223, !tbaa !201
  call void @llvm.dbg.value(metadata !{i32*** %xmx}, i64 0, metadata !119), !dbg !234
  store i32 -987654321, i32* %22, align 4, !dbg !234, !tbaa !201
  call void @llvm.dbg.value(metadata !{i32*** %xmx}, i64 0, metadata !119), !dbg !225
  %23 = load i32* %M, align 4, !dbg !225, !tbaa !201
  %idxprom86 = sext i32 %23 to i64, !dbg !225
  call void @llvm.dbg.value(metadata !{i32*** %mmx}, i64 0, metadata !120), !dbg !225
  %24 = load i32*** %mmx, align 8, !dbg !225, !tbaa !197
  %arrayidx89 = getelementptr inbounds i32** %24, i64 %indvars.iv502, !dbg !225
  %25 = load i32** %arrayidx89, align 8, !dbg !225, !tbaa !197
  %arrayidx90 = getelementptr inbounds i32* %25, i64 %idxprom86, !dbg !225
  %26 = load i32* %arrayidx90, align 4, !dbg !225, !tbaa !201
  %sub92 = add nsw i32 %23, -1, !dbg !225
  %idxprom93 = sext i32 %sub92 to i64, !dbg !225
  %27 = load i32** %bsc, align 8, !dbg !225, !tbaa !197
  %arrayidx94 = getelementptr inbounds i32* %27, i64 %idxprom93, !dbg !225
  %28 = load i32* %arrayidx94, align 4, !dbg !225, !tbaa !201
  %add95 = add nsw i32 %28, %26, !dbg !225
  %call96 = call i32 @ILogsum(i32 -987654321, i32 %add95) #3, !dbg !225
  call void @llvm.dbg.value(metadata !{i32*** %xmx}, i64 0, metadata !119), !dbg !225
  %29 = load i32*** %xmx, align 8, !dbg !225, !tbaa !197
  %arrayidx98 = getelementptr inbounds i32** %29, i64 %indvars.iv.next503, !dbg !225
  %30 = load i32** %arrayidx98, align 8, !dbg !225, !tbaa !197
  store i32 %call96, i32* %30, align 4, !dbg !225, !tbaa !201
  %31 = load i32* %M, align 4, !dbg !235, !tbaa !201
  %k.1481 = add i32 %31, -1, !dbg !235
  %cmp103482 = icmp sgt i32 %k.1481, 0, !dbg !235
  call void @llvm.dbg.value(metadata !{i32*** %xmx}, i64 0, metadata !119), !dbg !237
  br i1 %cmp103482, label %for.body105.lr.ph, label %for.end124, !dbg !235

for.body105.lr.ph:                                ; preds = %for.body67
  %32 = sext i32 %k.1481 to i64
  br label %for.body105, !dbg !235

for.body105:                                      ; preds = %for.body105.lr.ph, %for.body105
  %indvars.iv = phi i64 [ %32, %for.body105.lr.ph ], [ %indvars.iv.next, %for.body105 ]
  %33 = phi i32 [ %call96, %for.body105.lr.ph ], [ %call118, %for.body105 ]
  %k.1484 = phi i32 [ %k.1481, %for.body105.lr.ph ], [ %k.1, %for.body105 ]
  call void @llvm.dbg.value(metadata !{i32*** %mmx}, i64 0, metadata !120), !dbg !237
  %34 = load i32*** %mmx, align 8, !dbg !237, !tbaa !197
  %arrayidx112 = getelementptr inbounds i32** %34, i64 %indvars.iv502, !dbg !237
  %35 = load i32** %arrayidx112, align 8, !dbg !237, !tbaa !197
  %arrayidx113 = getelementptr inbounds i32* %35, i64 %indvars.iv, !dbg !237
  %36 = load i32* %arrayidx113, align 4, !dbg !237, !tbaa !201
  %37 = load i32** %bsc, align 8, !dbg !237, !tbaa !197
  %arrayidx116 = getelementptr inbounds i32* %37, i64 %indvars.iv, !dbg !237
  %38 = load i32* %arrayidx116, align 4, !dbg !237, !tbaa !201
  %add117 = add nsw i32 %38, %36, !dbg !237
  %call118 = call i32 @ILogsum(i32 %33, i32 %add117) #3, !dbg !237
  call void @llvm.dbg.value(metadata !{i32*** %xmx}, i64 0, metadata !119), !dbg !237
  %39 = load i32*** %xmx, align 8, !dbg !237, !tbaa !197
  %arrayidx120 = getelementptr inbounds i32** %39, i64 %indvars.iv.next503, !dbg !237
  %40 = load i32** %arrayidx120, align 8, !dbg !237, !tbaa !197
  store i32 %call118, i32* %40, align 4, !dbg !237, !tbaa !201
  %k.1 = add nsw i32 %k.1484, -1, !dbg !235
  %cmp103 = icmp sgt i32 %k.1, 0, !dbg !235
  call void @llvm.dbg.value(metadata !{i32*** %xmx}, i64 0, metadata !119), !dbg !237
  %indvars.iv.next = add i64 %indvars.iv, -1, !dbg !235
  br i1 %cmp103, label %for.body105, label %for.end124, !dbg !235

for.end124:                                       ; preds = %for.body105, %for.body67
  %.lcssa480 = phi i32 [ %call96, %for.body67 ], [ %call118, %for.body105 ]
  %.lcssa = phi i32** [ %29, %for.body67 ], [ %39, %for.body105 ]
  %41 = load i32* %arrayidx130, align 4, !dbg !226, !tbaa !201
  %add131 = add nsw i32 %41, %.lcssa480, !dbg !226
  %arrayidx134 = getelementptr inbounds i32** %.lcssa, i64 %indvars.iv502, !dbg !226
  %42 = load i32** %arrayidx134, align 8, !dbg !226, !tbaa !197
  %arrayidx135 = getelementptr inbounds i32* %42, i64 3, !dbg !226
  %43 = load i32* %arrayidx135, align 4, !dbg !226, !tbaa !201
  %44 = load i32* %arrayidx138, align 4, !dbg !226, !tbaa !201
  %add139 = add nsw i32 %44, %43, !dbg !226
  %call140 = call i32 @ILogsum(i32 %add131, i32 %add139) #3, !dbg !226
  call void @llvm.dbg.value(metadata !{i32*** %xmx}, i64 0, metadata !119), !dbg !226
  %45 = load i32*** %xmx, align 8, !dbg !226, !tbaa !197
  %arrayidx142 = getelementptr inbounds i32** %45, i64 %indvars.iv.next503, !dbg !226
  %46 = load i32** %arrayidx142, align 8, !dbg !226, !tbaa !197
  %arrayidx143 = getelementptr inbounds i32* %46, i64 3, !dbg !226
  store i32 %call140, i32* %arrayidx143, align 4, !dbg !226, !tbaa !201
  call void @llvm.dbg.value(metadata !{i32*** %xmx}, i64 0, metadata !119), !dbg !227
  %arrayidx146 = getelementptr inbounds i32* %46, i64 2, !dbg !227
  %47 = load i32* %arrayidx146, align 4, !dbg !227, !tbaa !201
  %48 = load i32* %arrayidx9, align 4, !dbg !227, !tbaa !201
  %add150 = add nsw i32 %48, %47, !dbg !227
  %49 = load i32* %arrayidx156, align 4, !dbg !227, !tbaa !201
  %add157 = add nsw i32 %49, %call140, !dbg !227
  %call158 = call i32 @ILogsum(i32 %add150, i32 %add157) #3, !dbg !227
  call void @llvm.dbg.value(metadata !{i32*** %xmx}, i64 0, metadata !119), !dbg !227
  %50 = load i32*** %xmx, align 8, !dbg !227, !tbaa !197
  %arrayidx160 = getelementptr inbounds i32** %50, i64 %indvars.iv.next503, !dbg !227
  %51 = load i32** %arrayidx160, align 8, !dbg !227, !tbaa !197
  %arrayidx161 = getelementptr inbounds i32* %51, i64 1, !dbg !227
  store i32 %call158, i32* %arrayidx161, align 4, !dbg !227, !tbaa !201
  call void @llvm.dbg.value(metadata !{i32*** %xmx}, i64 0, metadata !119), !dbg !228
  %52 = load i32* %51, align 4, !dbg !228, !tbaa !201
  %53 = load i32* %arrayidx167, align 4, !dbg !228, !tbaa !201
  %add168 = add nsw i32 %53, %52, !dbg !228
  %arrayidx171 = getelementptr inbounds i32** %50, i64 %indvars.iv502, !dbg !228
  %54 = load i32** %arrayidx171, align 8, !dbg !228, !tbaa !197
  %arrayidx172 = getelementptr inbounds i32* %54, i64 4, !dbg !228
  %55 = load i32* %arrayidx172, align 4, !dbg !228, !tbaa !201
  %56 = load i32* %arrayidx175, align 4, !dbg !228, !tbaa !201
  %add176 = add nsw i32 %56, %55, !dbg !228
  %call177 = call i32 @ILogsum(i32 %add168, i32 %add176) #3, !dbg !228
  call void @llvm.dbg.value(metadata !{i32*** %xmx}, i64 0, metadata !119), !dbg !228
  %57 = load i32*** %xmx, align 8, !dbg !228, !tbaa !197
  %arrayidx179 = getelementptr inbounds i32** %57, i64 %indvars.iv.next503, !dbg !228
  %58 = load i32** %arrayidx179, align 8, !dbg !228, !tbaa !197
  %arrayidx180 = getelementptr inbounds i32* %58, i64 4, !dbg !228
  store i32 %call177, i32* %arrayidx180, align 4, !dbg !228, !tbaa !201
  %59 = trunc i64 %indvars.iv.next503 to i32, !dbg !238
  %cmp181 = icmp sgt i32 %59, 0, !dbg !238
  br i1 %cmp181, label %if.then, label %for.cond64.for.end344_crit_edge, !dbg !238

for.cond64.backedge:                              ; preds = %for.body216
  br i1 %cmp181, label %for.cond64.backedge.for.body67_crit_edge, label %for.cond64.for.end344_crit_edge, !dbg !221

for.cond64.backedge.for.body67_crit_edge:         ; preds = %if.then, %for.cond64.backedge
  call void @llvm.dbg.value(metadata !{i32*** %xmx}, i64 0, metadata !119), !dbg !223
  %.pre515 = load i32*** %xmx, align 8, !dbg !223, !tbaa !197
  %arrayidx70.phi.trans.insert = getelementptr inbounds i32** %.pre515, i64 %indvars.iv.next503
  %.pre516 = load i32** %arrayidx70.phi.trans.insert, align 8, !dbg !223, !tbaa !197
  br label %for.body67, !dbg !221

if.then:                                          ; preds = %for.end124
  call void @llvm.dbg.value(metadata !{i32*** %xmx}, i64 0, metadata !119), !dbg !229
  %arrayidx185 = getelementptr inbounds i32* %58, i64 1, !dbg !229
  %60 = load i32* %arrayidx185, align 4, !dbg !229, !tbaa !201
  %61 = load i32* %M, align 4, !dbg !229, !tbaa !201
  %idxprom187 = sext i32 %61 to i64, !dbg !229
  %62 = load i32** %esc188, align 8, !dbg !229, !tbaa !197
  %arrayidx189 = getelementptr inbounds i32* %62, i64 %idxprom187, !dbg !229
  %63 = load i32* %arrayidx189, align 4, !dbg !229, !tbaa !201
  %add190 = add nsw i32 %63, %60, !dbg !229
  %arrayidx194 = getelementptr inbounds i8* %dsq, i64 %indvars.iv.next503, !dbg !229
  %64 = load i8* %arrayidx194, align 1, !dbg !229, !tbaa !198
  %idxprom196 = sext i8 %64 to i64, !dbg !229
  %65 = load i32*** %msc197, align 8, !dbg !229, !tbaa !197
  %arrayidx198 = getelementptr inbounds i32** %65, i64 %idxprom196, !dbg !229
  %66 = load i32** %arrayidx198, align 8, !dbg !229, !tbaa !197
  %arrayidx199 = getelementptr inbounds i32* %66, i64 %idxprom187, !dbg !229
  %67 = load i32* %arrayidx199, align 4, !dbg !229, !tbaa !201
  %add200 = add nsw i32 %add190, %67, !dbg !229
  call void @llvm.dbg.value(metadata !{i32*** %mmx}, i64 0, metadata !120), !dbg !229
  %68 = load i32*** %mmx, align 8, !dbg !229, !tbaa !197
  %arrayidx204 = getelementptr inbounds i32** %68, i64 %indvars.iv.next503, !dbg !229
  %69 = load i32** %arrayidx204, align 8, !dbg !229, !tbaa !197
  %arrayidx205 = getelementptr inbounds i32* %69, i64 %idxprom187, !dbg !229
  store i32 %add200, i32* %arrayidx205, align 4, !dbg !229, !tbaa !201
  %70 = load i32* %M, align 4, !dbg !239, !tbaa !201
  %idxprom207 = sext i32 %70 to i64, !dbg !239
  call void @llvm.dbg.value(metadata !{i32*** %dmx}, i64 0, metadata !122), !dbg !239
  %71 = load i32*** %dmx, align 8, !dbg !239, !tbaa !197
  %arrayidx209 = getelementptr inbounds i32** %71, i64 %indvars.iv.next503, !dbg !239
  %72 = load i32** %arrayidx209, align 8, !dbg !239, !tbaa !197
  %arrayidx210 = getelementptr inbounds i32* %72, i64 %idxprom207, !dbg !239
  store i32 -987654321, i32* %arrayidx210, align 4, !dbg !239, !tbaa !201
  %73 = load i32* %M, align 4, !dbg !240, !tbaa !201
  %k.2486 = add i32 %73, -1, !dbg !240
  %cmp214487 = icmp sgt i32 %k.2486, 0, !dbg !240
  br i1 %cmp214487, label %for.body216.lr.ph, label %for.cond64.backedge.for.body67_crit_edge, !dbg !240

for.body216.lr.ph:                                ; preds = %if.then
  %74 = sext i32 %k.2486 to i64
  br label %for.body216, !dbg !240

for.body216:                                      ; preds = %for.body216.for.body216_crit_edge, %for.body216.lr.ph
  %75 = phi i32** [ %68, %for.body216.lr.ph ], [ %.pre520, %for.body216.for.body216_crit_edge ]
  %76 = phi i32* [ %62, %for.body216.lr.ph ], [ %.pre519, %for.body216.for.body216_crit_edge ]
  %77 = phi i32* [ %58, %for.body216.lr.ph ], [ %.pre518, %for.body216.for.body216_crit_edge ]
  %indvars.iv499 = phi i64 [ %74, %for.body216.lr.ph ], [ %indvars.iv.next500, %for.body216.for.body216_crit_edge ]
  %k.2489 = phi i32 [ %k.2486, %for.body216.lr.ph ], [ %k.2, %for.body216.for.body216_crit_edge ]
  %k.2.in488 = phi i32 [ %73, %for.body216.lr.ph ], [ %131, %for.body216.for.body216_crit_edge ]
  call void @llvm.dbg.value(metadata !{i32*** %xmx}, i64 0, metadata !119), !dbg !241
  %arrayidx219 = getelementptr inbounds i32* %77, i64 1, !dbg !241
  %78 = load i32* %arrayidx219, align 4, !dbg !241, !tbaa !201
  %arrayidx222 = getelementptr inbounds i32* %76, i64 %indvars.iv499, !dbg !241
  %79 = load i32* %arrayidx222, align 4, !dbg !241, !tbaa !201
  %add223 = add nsw i32 %79, %78, !dbg !241
  %idxprom225 = sext i32 %k.2.in488 to i64, !dbg !241
  call void @llvm.dbg.value(metadata !{i32*** %mmx}, i64 0, metadata !120), !dbg !241
  %arrayidx228 = getelementptr inbounds i32** %75, i64 %indvars.iv502, !dbg !241
  %80 = load i32** %arrayidx228, align 8, !dbg !241, !tbaa !197
  %arrayidx229 = getelementptr inbounds i32* %80, i64 %idxprom225, !dbg !241
  %81 = load i32* %arrayidx229, align 4, !dbg !241, !tbaa !201
  %82 = load i32*** %tsc, align 8, !dbg !241, !tbaa !197
  %83 = load i32** %82, align 8, !dbg !241, !tbaa !197
  %arrayidx233 = getelementptr inbounds i32* %83, i64 %indvars.iv499, !dbg !241
  %84 = load i32* %arrayidx233, align 4, !dbg !241, !tbaa !201
  %add234 = add nsw i32 %84, %81, !dbg !241
  %call235 = call i32 @ILogsum(i32 %add223, i32 %add234) #3, !dbg !241
  call void @llvm.dbg.value(metadata !{i32*** %imx}, i64 0, metadata !121), !dbg !242
  %85 = load i32*** %imx, align 8, !dbg !242, !tbaa !197
  %arrayidx239 = getelementptr inbounds i32** %85, i64 %indvars.iv502, !dbg !242
  %86 = load i32** %arrayidx239, align 8, !dbg !242, !tbaa !197
  %arrayidx240 = getelementptr inbounds i32* %86, i64 %indvars.iv499, !dbg !242
  %87 = load i32* %arrayidx240, align 4, !dbg !242, !tbaa !201
  %88 = load i32*** %tsc, align 8, !dbg !242, !tbaa !197
  %arrayidx243 = getelementptr inbounds i32** %88, i64 1, !dbg !242
  %89 = load i32** %arrayidx243, align 8, !dbg !242, !tbaa !197
  %arrayidx244 = getelementptr inbounds i32* %89, i64 %indvars.iv499, !dbg !242
  %90 = load i32* %arrayidx244, align 4, !dbg !242, !tbaa !201
  %add245 = add nsw i32 %90, %87, !dbg !242
  call void @llvm.dbg.value(metadata !{i32*** %dmx}, i64 0, metadata !122), !dbg !242
  %91 = load i32*** %dmx, align 8, !dbg !242, !tbaa !197
  %arrayidx249 = getelementptr inbounds i32** %91, i64 %indvars.iv.next503, !dbg !242
  %92 = load i32** %arrayidx249, align 8, !dbg !242, !tbaa !197
  %arrayidx250 = getelementptr inbounds i32* %92, i64 %idxprom225, !dbg !242
  %93 = load i32* %arrayidx250, align 4, !dbg !242, !tbaa !201
  %arrayidx253 = getelementptr inbounds i32** %88, i64 2, !dbg !242
  %94 = load i32** %arrayidx253, align 8, !dbg !242, !tbaa !197
  %arrayidx254 = getelementptr inbounds i32* %94, i64 %indvars.iv499, !dbg !242
  %95 = load i32* %arrayidx254, align 4, !dbg !242, !tbaa !201
  %add255 = add nsw i32 %95, %93, !dbg !242
  %call256 = call i32 @ILogsum(i32 %add245, i32 %add255) #3, !dbg !242
  %call257 = call i32 @ILogsum(i32 %call235, i32 %call256) #3, !dbg !242
  call void @llvm.dbg.value(metadata !{i32*** %mmx}, i64 0, metadata !120), !dbg !242
  %96 = load i32*** %mmx, align 8, !dbg !242, !tbaa !197
  %arrayidx260 = getelementptr inbounds i32** %96, i64 %indvars.iv.next503, !dbg !242
  %97 = load i32** %arrayidx260, align 8, !dbg !242, !tbaa !197
  %arrayidx261 = getelementptr inbounds i32* %97, i64 %indvars.iv499, !dbg !242
  store i32 %call257, i32* %arrayidx261, align 4, !dbg !242, !tbaa !201
  %98 = load i8* %arrayidx194, align 1, !dbg !243, !tbaa !198
  %idxprom266 = sext i8 %98 to i64, !dbg !243
  %99 = load i32*** %msc197, align 8, !dbg !243, !tbaa !197
  %arrayidx268 = getelementptr inbounds i32** %99, i64 %idxprom266, !dbg !243
  %100 = load i32** %arrayidx268, align 8, !dbg !243, !tbaa !197
  %arrayidx269 = getelementptr inbounds i32* %100, i64 %indvars.iv499, !dbg !243
  %101 = load i32* %arrayidx269, align 4, !dbg !243, !tbaa !201
  call void @llvm.dbg.value(metadata !{i32*** %mmx}, i64 0, metadata !120), !dbg !243
  %add274 = add nsw i32 %call257, %101, !dbg !243
  store i32 %add274, i32* %arrayidx261, align 4, !dbg !243, !tbaa !201
  call void @llvm.dbg.value(metadata !{i32*** %imx}, i64 0, metadata !121), !dbg !244
  %102 = load i32*** %imx, align 8, !dbg !244, !tbaa !197
  %arrayidx278 = getelementptr inbounds i32** %102, i64 %indvars.iv502, !dbg !244
  %103 = load i32** %arrayidx278, align 8, !dbg !244, !tbaa !197
  %arrayidx279 = getelementptr inbounds i32* %103, i64 %indvars.iv499, !dbg !244
  %104 = load i32* %arrayidx279, align 4, !dbg !244, !tbaa !201
  %105 = load i32*** %tsc, align 8, !dbg !244, !tbaa !197
  %arrayidx282 = getelementptr inbounds i32** %105, i64 4, !dbg !244
  %106 = load i32** %arrayidx282, align 8, !dbg !244, !tbaa !197
  %arrayidx283 = getelementptr inbounds i32* %106, i64 %indvars.iv499, !dbg !244
  %107 = load i32* %arrayidx283, align 4, !dbg !244, !tbaa !201
  %add284 = add nsw i32 %107, %104, !dbg !244
  call void @llvm.dbg.value(metadata !{i32*** %mmx}, i64 0, metadata !120), !dbg !244
  %arrayidx289 = getelementptr inbounds i32** %96, i64 %indvars.iv502, !dbg !244
  %108 = load i32** %arrayidx289, align 8, !dbg !244, !tbaa !197
  %arrayidx290 = getelementptr inbounds i32* %108, i64 %idxprom225, !dbg !244
  %109 = load i32* %arrayidx290, align 4, !dbg !244, !tbaa !201
  %arrayidx293 = getelementptr inbounds i32** %105, i64 3, !dbg !244
  %110 = load i32** %arrayidx293, align 8, !dbg !244, !tbaa !197
  %arrayidx294 = getelementptr inbounds i32* %110, i64 %indvars.iv499, !dbg !244
  %111 = load i32* %arrayidx294, align 4, !dbg !244, !tbaa !201
  %add295 = add nsw i32 %111, %109, !dbg !244
  %call296 = call i32 @ILogsum(i32 %add284, i32 %add295) #3, !dbg !244
  call void @llvm.dbg.value(metadata !{i32*** %imx}, i64 0, metadata !121), !dbg !244
  %112 = load i32*** %imx, align 8, !dbg !244, !tbaa !197
  %arrayidx299 = getelementptr inbounds i32** %112, i64 %indvars.iv.next503, !dbg !244
  %113 = load i32** %arrayidx299, align 8, !dbg !244, !tbaa !197
  %arrayidx300 = getelementptr inbounds i32* %113, i64 %indvars.iv499, !dbg !244
  store i32 %call296, i32* %arrayidx300, align 4, !dbg !244, !tbaa !201
  %114 = load i8* %arrayidx194, align 1, !dbg !231, !tbaa !198
  %idxprom305 = sext i8 %114 to i64, !dbg !231
  %115 = load i32*** %isc, align 8, !dbg !231, !tbaa !197
  %arrayidx306 = getelementptr inbounds i32** %115, i64 %idxprom305, !dbg !231
  %116 = load i32** %arrayidx306, align 8, !dbg !231, !tbaa !197
  %arrayidx307 = getelementptr inbounds i32* %116, i64 %indvars.iv499, !dbg !231
  %117 = load i32* %arrayidx307, align 4, !dbg !231, !tbaa !201
  call void @llvm.dbg.value(metadata !{i32*** %imx}, i64 0, metadata !121), !dbg !231
  %add312 = add nsw i32 %call296, %117, !dbg !231
  store i32 %add312, i32* %arrayidx300, align 4, !dbg !231, !tbaa !201
  call void @llvm.dbg.value(metadata !{i32*** %dmx}, i64 0, metadata !122), !dbg !245
  %118 = load i32*** %dmx, align 8, !dbg !245, !tbaa !197
  %arrayidx316 = getelementptr inbounds i32** %118, i64 %indvars.iv.next503, !dbg !245
  %119 = load i32** %arrayidx316, align 8, !dbg !245, !tbaa !197
  %arrayidx317 = getelementptr inbounds i32* %119, i64 %idxprom225, !dbg !245
  %120 = load i32* %arrayidx317, align 4, !dbg !245, !tbaa !201
  %121 = load i32*** %tsc, align 8, !dbg !245, !tbaa !197
  %arrayidx320 = getelementptr inbounds i32** %121, i64 6, !dbg !245
  %122 = load i32** %arrayidx320, align 8, !dbg !245, !tbaa !197
  %arrayidx321 = getelementptr inbounds i32* %122, i64 %indvars.iv499, !dbg !245
  %123 = load i32* %arrayidx321, align 4, !dbg !245, !tbaa !201
  %add322 = add nsw i32 %123, %120, !dbg !245
  call void @llvm.dbg.value(metadata !{i32*** %mmx}, i64 0, metadata !120), !dbg !245
  %124 = load i32*** %mmx, align 8, !dbg !245, !tbaa !197
  %arrayidx327 = getelementptr inbounds i32** %124, i64 %indvars.iv502, !dbg !245
  %125 = load i32** %arrayidx327, align 8, !dbg !245, !tbaa !197
  %arrayidx328 = getelementptr inbounds i32* %125, i64 %idxprom225, !dbg !245
  %126 = load i32* %arrayidx328, align 4, !dbg !245, !tbaa !201
  %arrayidx331 = getelementptr inbounds i32** %121, i64 5, !dbg !245
  %127 = load i32** %arrayidx331, align 8, !dbg !245, !tbaa !197
  %arrayidx332 = getelementptr inbounds i32* %127, i64 %indvars.iv499, !dbg !245
  %128 = load i32* %arrayidx332, align 4, !dbg !245, !tbaa !201
  %add333 = add nsw i32 %128, %126, !dbg !245
  %call334 = call i32 @ILogsum(i32 %add322, i32 %add333) #3, !dbg !245
  call void @llvm.dbg.value(metadata !{i32*** %dmx}, i64 0, metadata !122), !dbg !245
  %129 = load i32*** %dmx, align 8, !dbg !245, !tbaa !197
  %arrayidx337 = getelementptr inbounds i32** %129, i64 %indvars.iv.next503, !dbg !245
  %130 = load i32** %arrayidx337, align 8, !dbg !245, !tbaa !197
  %arrayidx338 = getelementptr inbounds i32* %130, i64 %indvars.iv499, !dbg !245
  store i32 %call334, i32* %arrayidx338, align 4, !dbg !245, !tbaa !201
  %k.2 = add nsw i32 %k.2489, -1, !dbg !240
  %cmp214 = icmp sgt i32 %k.2, 0, !dbg !240
  br i1 %cmp214, label %for.body216.for.body216_crit_edge, label %for.cond64.backedge, !dbg !240

for.body216.for.body216_crit_edge:                ; preds = %for.body216
  %131 = trunc i64 %indvars.iv499 to i32, !dbg !240
  %indvars.iv.next500 = add i64 %indvars.iv499, -1, !dbg !240
  call void @llvm.dbg.value(metadata !{i32*** %xmx}, i64 0, metadata !119), !dbg !241
  %.pre517 = load i32*** %xmx, align 8, !dbg !241, !tbaa !197
  %arrayidx218.phi.trans.insert = getelementptr inbounds i32** %.pre517, i64 %indvars.iv.next503
  %.pre518 = load i32** %arrayidx218.phi.trans.insert, align 8, !dbg !241, !tbaa !197
  %.pre519 = load i32** %esc188, align 8, !dbg !241, !tbaa !197
  call void @llvm.dbg.value(metadata !{i32*** %mmx}, i64 0, metadata !120), !dbg !241
  %.pre520 = load i32*** %mmx, align 8, !dbg !241, !tbaa !197
  br label %for.body216, !dbg !240

for.cond64.for.end344_crit_edge:                  ; preds = %for.end124, %for.cond64.backedge
  call void @llvm.dbg.value(metadata !{i32*** %xmx}, i64 0, metadata !119), !dbg !246
  %.pre506 = load i32*** %xmx, align 8, !dbg !246, !tbaa !197
  br label %for.end344, !dbg !221

for.end344:                                       ; preds = %for.cond64.for.end344_crit_edge, %for.end
  %132 = phi i32** [ %.pre506, %for.cond64.for.end344_crit_edge ], [ %2, %for.end ]
  call void @llvm.dbg.value(metadata !{i32*** %xmx}, i64 0, metadata !119), !dbg !246
  %133 = load i32** %132, align 8, !dbg !246, !tbaa !197
  %arrayidx346 = getelementptr inbounds i32* %133, i64 4, !dbg !246
  %134 = load i32* %arrayidx346, align 4, !dbg !246, !tbaa !201
  call void @llvm.dbg.value(metadata !{i32 %134}, i64 0, metadata !125), !dbg !246
  %cmp347 = icmp eq %struct.dpmatrix_s** %ret_mx, null, !dbg !247
  br i1 %cmp347, label %if.else, label %if.then349, !dbg !247

if.then349:                                       ; preds = %for.end344
  store %struct.dpmatrix_s* %call, %struct.dpmatrix_s** %ret_mx, align 8, !dbg !247, !tbaa !197
  br label %if.end350, !dbg !247

if.else:                                          ; preds = %for.end344
  call void @FreePlan7Matrix(%struct.dpmatrix_s* %call) #3, !dbg !248
  br label %if.end350

if.end350:                                        ; preds = %if.else, %if.then349
  %call351 = call float @Scorify(i32 %134) #3, !dbg !249
  ret float %call351, !dbg !249
}

; Function Attrs: nounwind optsize uwtable
define void @P7EmitterPosterior(i32 %L, %struct.plan7_s* nocapture %hmm, %struct.dpmatrix_s* nocapture %forward, %struct.dpmatrix_s* nocapture %backward, %struct.dpmatrix_s* nocapture %mx) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %L}, i64 0, metadata !130), !dbg !250
  tail call void @llvm.dbg.value(metadata !{%struct.plan7_s* %hmm}, i64 0, metadata !131), !dbg !251
  tail call void @llvm.dbg.value(metadata !{%struct.dpmatrix_s* %forward}, i64 0, metadata !132), !dbg !252
  tail call void @llvm.dbg.value(metadata !{%struct.dpmatrix_s* %backward}, i64 0, metadata !133), !dbg !253
  tail call void @llvm.dbg.value(metadata !{%struct.dpmatrix_s* %mx}, i64 0, metadata !134), !dbg !254
  %xmx = getelementptr inbounds %struct.dpmatrix_s* %backward, i64 0, i32 0, !dbg !255
  %0 = load i32*** %xmx, align 8, !dbg !255, !tbaa !197
  %1 = load i32** %0, align 8, !dbg !255, !tbaa !197
  %arrayidx1 = getelementptr inbounds i32* %1, i64 4, !dbg !255
  %2 = load i32* %arrayidx1, align 4, !dbg !255, !tbaa !201
  tail call void @llvm.dbg.value(metadata !{i32 %2}, i64 0, metadata !137), !dbg !255
  tail call void @llvm.dbg.value(metadata !{i32 %L}, i64 0, metadata !135), !dbg !256
  %cmp413 = icmp sgt i32 %L, 0, !dbg !256
  br i1 %cmp413, label %for.body.lr.ph, label %for.end284, !dbg !256

for.body.lr.ph:                                   ; preds = %entry
  %xmx2 = getelementptr inbounds %struct.dpmatrix_s* %forward, i64 0, i32 0, !dbg !258
  %arrayidx6 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 33, i64 2, i64 1, !dbg !258
  %xmx14 = getelementptr inbounds %struct.dpmatrix_s* %mx, i64 0, i32 0, !dbg !258
  %arrayidx24 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 33, i64 3, i64 1, !dbg !260
  %arrayidx43 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 33, i64 0, i64 1, !dbg !261
  %M = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 20, !dbg !262
  %mmx186 = getelementptr inbounds %struct.dpmatrix_s* %backward, i64 0, i32 1, !dbg !264
  %mmx192 = getelementptr inbounds %struct.dpmatrix_s* %mx, i64 0, i32 1, !dbg !264
  %mmx200 = getelementptr inbounds %struct.dpmatrix_s* %forward, i64 0, i32 1, !dbg !265
  %tsc206 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 30, !dbg !265
  %imx215 = getelementptr inbounds %struct.dpmatrix_s* %forward, i64 0, i32 2, !dbg !265
  %bsc233 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 34, !dbg !266
  %dmx241 = getelementptr inbounds %struct.dpmatrix_s* %forward, i64 0, i32 3, !dbg !266
  %dmx268 = getelementptr inbounds %struct.dpmatrix_s* %mx, i64 0, i32 3, !dbg !267
  %imx280 = getelementptr inbounds %struct.dpmatrix_s* %mx, i64 0, i32 2, !dbg !267
  %imx135 = getelementptr inbounds %struct.dpmatrix_s* %backward, i64 0, i32 2, !dbg !268
  %3 = sext i32 %L to i64
  br label %for.body, !dbg !256

for.body:                                         ; preds = %for.end.for.body_crit_edge, %for.body.lr.ph
  %4 = phi i32** [ %0, %for.body.lr.ph ], [ %.pre, %for.end.for.body_crit_edge ]
  %indvars.iv417 = phi i64 [ %3, %for.body.lr.ph ], [ %indvars.iv.next418, %for.end.for.body_crit_edge ]
  %indvars.iv.next418 = add i64 %indvars.iv417, -1, !dbg !256
  %5 = load i32*** %xmx2, align 8, !dbg !258, !tbaa !197
  %arrayidx3 = getelementptr inbounds i32** %5, i64 %indvars.iv.next418, !dbg !258
  %6 = load i32** %arrayidx3, align 8, !dbg !258, !tbaa !197
  %arrayidx4 = getelementptr inbounds i32* %6, i64 2, !dbg !258
  %7 = load i32* %arrayidx4, align 4, !dbg !258, !tbaa !201
  %8 = load i32* %arrayidx6, align 4, !dbg !258, !tbaa !201
  %arrayidx9 = getelementptr inbounds i32** %4, i64 %indvars.iv417, !dbg !258
  %9 = load i32** %arrayidx9, align 8, !dbg !258, !tbaa !197
  %arrayidx10 = getelementptr inbounds i32* %9, i64 2, !dbg !258
  %10 = load i32* %arrayidx10, align 4, !dbg !258, !tbaa !201
  %add = sub i32 %7, %2, !dbg !258
  %add11 = add i32 %add, %8, !dbg !258
  %sub12 = add i32 %add11, %10, !dbg !258
  %11 = load i32*** %xmx14, align 8, !dbg !258, !tbaa !197
  %arrayidx15 = getelementptr inbounds i32** %11, i64 %indvars.iv417, !dbg !258
  %12 = load i32** %arrayidx15, align 8, !dbg !258, !tbaa !197
  %arrayidx16 = getelementptr inbounds i32* %12, i64 2, !dbg !258
  store i32 %sub12, i32* %arrayidx16, align 4, !dbg !258, !tbaa !201
  %arrayidx21 = getelementptr inbounds i32* %6, i64 3, !dbg !260
  %13 = load i32* %arrayidx21, align 4, !dbg !260, !tbaa !201
  %14 = load i32* %arrayidx24, align 4, !dbg !260, !tbaa !201
  %arrayidx29 = getelementptr inbounds i32* %9, i64 3, !dbg !260
  %15 = load i32* %arrayidx29, align 4, !dbg !260, !tbaa !201
  %add25 = sub i32 %13, %2, !dbg !260
  %add30 = add i32 %add25, %14, !dbg !260
  %sub31 = add i32 %add30, %15, !dbg !260
  %arrayidx35 = getelementptr inbounds i32* %12, i64 3, !dbg !260
  store i32 %sub31, i32* %arrayidx35, align 4, !dbg !260, !tbaa !201
  %arrayidx40 = getelementptr inbounds i32* %6, i64 4, !dbg !261
  %16 = load i32* %arrayidx40, align 4, !dbg !261, !tbaa !201
  %17 = load i32* %arrayidx43, align 4, !dbg !261, !tbaa !201
  %arrayidx48 = getelementptr inbounds i32* %9, i64 4, !dbg !261
  %18 = load i32* %arrayidx48, align 4, !dbg !261, !tbaa !201
  %add44 = sub i32 %16, %2, !dbg !261
  %add49 = add i32 %add44, %17, !dbg !261
  %sub50 = add i32 %add49, %18, !dbg !261
  %arrayidx54 = getelementptr inbounds i32* %12, i64 4, !dbg !261
  store i32 %sub50, i32* %arrayidx54, align 4, !dbg !261, !tbaa !201
  %arrayidx58 = getelementptr inbounds i32* %12, i64 1, !dbg !270
  store i32 -987654321, i32* %arrayidx58, align 4, !dbg !270, !tbaa !201
  store i32 -987654321, i32* %12, align 4, !dbg !270, !tbaa !201
  tail call void @llvm.dbg.value(metadata !271, i64 0, metadata !136), !dbg !262
  %19 = load i32* %M, align 4, !dbg !262, !tbaa !201
  %cmp64410 = icmp sgt i32 %19, 1, !dbg !262
  br i1 %cmp64410, label %for.body65, label %for.end, !dbg !262

for.body65:                                       ; preds = %for.body65, %for.body
  %indvars.iv = phi i64 [ 1, %for.body ], [ %indvars.iv.next, %for.body65 ]
  %20 = load i32*** %mmx186, align 8, !dbg !272, !tbaa !197
  %arrayidx68 = getelementptr inbounds i32** %20, i64 %indvars.iv417, !dbg !272
  %21 = load i32** %arrayidx68, align 8, !dbg !272, !tbaa !197
  %arrayidx69 = getelementptr inbounds i32* %21, i64 %indvars.iv, !dbg !272
  %22 = load i32* %arrayidx69, align 4, !dbg !272, !tbaa !201
  %23 = load i32*** %mmx192, align 8, !dbg !272, !tbaa !197
  %arrayidx73 = getelementptr inbounds i32** %23, i64 %indvars.iv417, !dbg !272
  %24 = load i32** %arrayidx73, align 8, !dbg !272, !tbaa !197
  %arrayidx74 = getelementptr inbounds i32* %24, i64 %indvars.iv, !dbg !272
  store i32 %22, i32* %arrayidx74, align 4, !dbg !272, !tbaa !201
  %25 = add nsw i64 %indvars.iv, -1, !dbg !273
  %26 = load i32*** %mmx200, align 8, !dbg !273, !tbaa !197
  %arrayidx80 = getelementptr inbounds i32** %26, i64 %indvars.iv.next418, !dbg !273
  %27 = load i32** %arrayidx80, align 8, !dbg !273, !tbaa !197
  %arrayidx81 = getelementptr inbounds i32* %27, i64 %25, !dbg !273
  %28 = load i32* %arrayidx81, align 4, !dbg !273, !tbaa !201
  %29 = load i32*** %tsc206, align 8, !dbg !273, !tbaa !197
  %30 = load i32** %29, align 8, !dbg !273, !tbaa !197
  %arrayidx85 = getelementptr inbounds i32* %30, i64 %25, !dbg !273
  %31 = load i32* %arrayidx85, align 4, !dbg !273, !tbaa !201
  %add86 = add nsw i32 %31, %28, !dbg !273
  %32 = load i32*** %imx215, align 8, !dbg !273, !tbaa !197
  %arrayidx91 = getelementptr inbounds i32** %32, i64 %indvars.iv.next418, !dbg !273
  %33 = load i32** %arrayidx91, align 8, !dbg !273, !tbaa !197
  %arrayidx92 = getelementptr inbounds i32* %33, i64 %25, !dbg !273
  %34 = load i32* %arrayidx92, align 4, !dbg !273, !tbaa !201
  %arrayidx96 = getelementptr inbounds i32** %29, i64 3, !dbg !273
  %35 = load i32** %arrayidx96, align 8, !dbg !273, !tbaa !197
  %arrayidx97 = getelementptr inbounds i32* %35, i64 %25, !dbg !273
  %36 = load i32* %arrayidx97, align 4, !dbg !273, !tbaa !201
  %add98 = add nsw i32 %36, %34, !dbg !273
  %call = tail call i32 @ILogsum(i32 %add86, i32 %add98) #3, !dbg !273
  %37 = load i32*** %xmx2, align 8, !dbg !274, !tbaa !197
  %arrayidx102 = getelementptr inbounds i32** %37, i64 %indvars.iv.next418, !dbg !274
  %38 = load i32** %arrayidx102, align 8, !dbg !274, !tbaa !197
  %39 = load i32* %38, align 4, !dbg !274, !tbaa !201
  %40 = load i32** %bsc233, align 8, !dbg !274, !tbaa !197
  %arrayidx105 = getelementptr inbounds i32* %40, i64 %indvars.iv, !dbg !274
  %41 = load i32* %arrayidx105, align 4, !dbg !274, !tbaa !201
  %add106 = add nsw i32 %41, %39, !dbg !274
  %42 = load i32*** %dmx241, align 8, !dbg !274, !tbaa !197
  %arrayidx111 = getelementptr inbounds i32** %42, i64 %indvars.iv.next418, !dbg !274
  %43 = load i32** %arrayidx111, align 8, !dbg !274, !tbaa !197
  %arrayidx112 = getelementptr inbounds i32* %43, i64 %25, !dbg !274
  %44 = load i32* %arrayidx112, align 4, !dbg !274, !tbaa !201
  %45 = load i32*** %tsc206, align 8, !dbg !274, !tbaa !197
  %arrayidx116 = getelementptr inbounds i32** %45, i64 5, !dbg !274
  %46 = load i32** %arrayidx116, align 8, !dbg !274, !tbaa !197
  %arrayidx117 = getelementptr inbounds i32* %46, i64 %25, !dbg !274
  %47 = load i32* %arrayidx117, align 4, !dbg !274, !tbaa !201
  %add118 = add nsw i32 %47, %44, !dbg !274
  %call119 = tail call i32 @ILogsum(i32 %add106, i32 %add118) #3, !dbg !274
  %call120 = tail call i32 @ILogsum(i32 %call, i32 %call119) #3, !dbg !274
  %48 = load i32*** %mmx192, align 8, !dbg !274, !tbaa !197
  %arrayidx124 = getelementptr inbounds i32** %48, i64 %indvars.iv417, !dbg !274
  %49 = load i32** %arrayidx124, align 8, !dbg !274, !tbaa !197
  %arrayidx125 = getelementptr inbounds i32* %49, i64 %indvars.iv, !dbg !274
  %50 = load i32* %arrayidx125, align 4, !dbg !274, !tbaa !201
  %add126 = add nsw i32 %50, %call120, !dbg !274
  %sub132 = sub nsw i32 %add126, %2, !dbg !275
  store i32 %sub132, i32* %arrayidx125, align 4, !dbg !275, !tbaa !201
  %51 = load i32*** %imx135, align 8, !dbg !268, !tbaa !197
  %arrayidx136 = getelementptr inbounds i32** %51, i64 %indvars.iv417, !dbg !268
  %52 = load i32** %arrayidx136, align 8, !dbg !268, !tbaa !197
  %arrayidx137 = getelementptr inbounds i32* %52, i64 %indvars.iv, !dbg !268
  %53 = load i32* %arrayidx137, align 4, !dbg !268, !tbaa !201
  %54 = load i32*** %imx280, align 8, !dbg !268, !tbaa !197
  %arrayidx141 = getelementptr inbounds i32** %54, i64 %indvars.iv417, !dbg !268
  %55 = load i32** %arrayidx141, align 8, !dbg !268, !tbaa !197
  %arrayidx142 = getelementptr inbounds i32* %55, i64 %indvars.iv, !dbg !268
  store i32 %53, i32* %arrayidx142, align 4, !dbg !268, !tbaa !201
  %56 = load i32*** %mmx200, align 8, !dbg !276, !tbaa !197
  %arrayidx147 = getelementptr inbounds i32** %56, i64 %indvars.iv.next418, !dbg !276
  %57 = load i32** %arrayidx147, align 8, !dbg !276, !tbaa !197
  %arrayidx148 = getelementptr inbounds i32* %57, i64 %indvars.iv, !dbg !276
  %58 = load i32* %arrayidx148, align 4, !dbg !276, !tbaa !201
  %59 = load i32*** %tsc206, align 8, !dbg !276, !tbaa !197
  %arrayidx151 = getelementptr inbounds i32** %59, i64 1, !dbg !276
  %60 = load i32** %arrayidx151, align 8, !dbg !276, !tbaa !197
  %arrayidx152 = getelementptr inbounds i32* %60, i64 %indvars.iv, !dbg !276
  %61 = load i32* %arrayidx152, align 4, !dbg !276, !tbaa !201
  %add153 = add nsw i32 %61, %58, !dbg !276
  %62 = load i32*** %imx215, align 8, !dbg !276, !tbaa !197
  %arrayidx158 = getelementptr inbounds i32** %62, i64 %indvars.iv.next418, !dbg !276
  %63 = load i32** %arrayidx158, align 8, !dbg !276, !tbaa !197
  %arrayidx159 = getelementptr inbounds i32* %63, i64 %indvars.iv, !dbg !276
  %64 = load i32* %arrayidx159, align 4, !dbg !276, !tbaa !201
  %arrayidx162 = getelementptr inbounds i32** %59, i64 4, !dbg !276
  %65 = load i32** %arrayidx162, align 8, !dbg !276, !tbaa !197
  %arrayidx163 = getelementptr inbounds i32* %65, i64 %indvars.iv, !dbg !276
  %66 = load i32* %arrayidx163, align 4, !dbg !276, !tbaa !201
  %add164 = add nsw i32 %66, %64, !dbg !276
  %call165 = tail call i32 @ILogsum(i32 %add153, i32 %add164) #3, !dbg !276
  %67 = load i32*** %imx280, align 8, !dbg !276, !tbaa !197
  %arrayidx169 = getelementptr inbounds i32** %67, i64 %indvars.iv417, !dbg !276
  %68 = load i32** %arrayidx169, align 8, !dbg !276, !tbaa !197
  %arrayidx170 = getelementptr inbounds i32* %68, i64 %indvars.iv, !dbg !276
  %69 = load i32* %arrayidx170, align 4, !dbg !276, !tbaa !201
  %add171 = add nsw i32 %69, %call165, !dbg !276
  %sub177 = sub nsw i32 %add171, %2, !dbg !277
  store i32 %sub177, i32* %arrayidx170, align 4, !dbg !277, !tbaa !201
  %70 = load i32*** %dmx268, align 8, !dbg !278, !tbaa !197
  %arrayidx181 = getelementptr inbounds i32** %70, i64 %indvars.iv417, !dbg !278
  %71 = load i32** %arrayidx181, align 8, !dbg !278, !tbaa !197
  %arrayidx182 = getelementptr inbounds i32* %71, i64 %indvars.iv, !dbg !278
  store i32 -987654321, i32* %arrayidx182, align 4, !dbg !278, !tbaa !201
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !262
  %72 = load i32* %M, align 4, !dbg !262, !tbaa !201
  %73 = trunc i64 %indvars.iv.next to i32, !dbg !262
  %cmp64 = icmp slt i32 %73, %72, !dbg !262
  br i1 %cmp64, label %for.body65, label %for.end, !dbg !262

for.end:                                          ; preds = %for.body65, %for.body
  %.lcssa = phi i32 [ %19, %for.body ], [ %72, %for.body65 ]
  %idxprom184 = sext i32 %.lcssa to i64, !dbg !264
  %74 = load i32*** %mmx186, align 8, !dbg !264, !tbaa !197
  %arrayidx187 = getelementptr inbounds i32** %74, i64 %indvars.iv417, !dbg !264
  %75 = load i32** %arrayidx187, align 8, !dbg !264, !tbaa !197
  %arrayidx188 = getelementptr inbounds i32* %75, i64 %idxprom184, !dbg !264
  %76 = load i32* %arrayidx188, align 4, !dbg !264, !tbaa !201
  %77 = load i32*** %mmx192, align 8, !dbg !264, !tbaa !197
  %arrayidx193 = getelementptr inbounds i32** %77, i64 %indvars.iv417, !dbg !264
  %78 = load i32** %arrayidx193, align 8, !dbg !264, !tbaa !197
  %arrayidx194 = getelementptr inbounds i32* %78, i64 %idxprom184, !dbg !264
  store i32 %76, i32* %arrayidx194, align 4, !dbg !264, !tbaa !201
  %79 = load i32* %M, align 4, !dbg !265, !tbaa !201
  %sub196 = add nsw i32 %79, -1, !dbg !265
  %idxprom197 = sext i32 %sub196 to i64, !dbg !265
  %80 = load i32*** %mmx200, align 8, !dbg !265, !tbaa !197
  %arrayidx201 = getelementptr inbounds i32** %80, i64 %indvars.iv.next418, !dbg !265
  %81 = load i32** %arrayidx201, align 8, !dbg !265, !tbaa !197
  %arrayidx202 = getelementptr inbounds i32* %81, i64 %idxprom197, !dbg !265
  %82 = load i32* %arrayidx202, align 4, !dbg !265, !tbaa !201
  %83 = load i32*** %tsc206, align 8, !dbg !265, !tbaa !197
  %84 = load i32** %83, align 8, !dbg !265, !tbaa !197
  %arrayidx208 = getelementptr inbounds i32* %84, i64 %idxprom197, !dbg !265
  %85 = load i32* %arrayidx208, align 4, !dbg !265, !tbaa !201
  %add209 = add nsw i32 %85, %82, !dbg !265
  %86 = load i32*** %imx215, align 8, !dbg !265, !tbaa !197
  %arrayidx216 = getelementptr inbounds i32** %86, i64 %indvars.iv.next418, !dbg !265
  %87 = load i32** %arrayidx216, align 8, !dbg !265, !tbaa !197
  %arrayidx217 = getelementptr inbounds i32* %87, i64 %idxprom197, !dbg !265
  %88 = load i32* %arrayidx217, align 4, !dbg !265, !tbaa !201
  %arrayidx222 = getelementptr inbounds i32** %83, i64 3, !dbg !265
  %89 = load i32** %arrayidx222, align 8, !dbg !265, !tbaa !197
  %arrayidx223 = getelementptr inbounds i32* %89, i64 %idxprom197, !dbg !265
  %90 = load i32* %arrayidx223, align 4, !dbg !265, !tbaa !201
  %add224 = add nsw i32 %90, %88, !dbg !265
  %call225 = tail call i32 @ILogsum(i32 %add209, i32 %add224) #3, !dbg !265
  %91 = load i32*** %xmx2, align 8, !dbg !266, !tbaa !197
  %arrayidx229 = getelementptr inbounds i32** %91, i64 %indvars.iv.next418, !dbg !266
  %92 = load i32** %arrayidx229, align 8, !dbg !266, !tbaa !197
  %93 = load i32* %92, align 4, !dbg !266, !tbaa !201
  %94 = load i32* %M, align 4, !dbg !266, !tbaa !201
  %idxprom232 = sext i32 %94 to i64, !dbg !266
  %95 = load i32** %bsc233, align 8, !dbg !266, !tbaa !197
  %arrayidx234 = getelementptr inbounds i32* %95, i64 %idxprom232, !dbg !266
  %96 = load i32* %arrayidx234, align 4, !dbg !266, !tbaa !201
  %add235 = add nsw i32 %96, %93, !dbg !266
  %sub237 = add nsw i32 %94, -1, !dbg !266
  %idxprom238 = sext i32 %sub237 to i64, !dbg !266
  %97 = load i32*** %dmx241, align 8, !dbg !266, !tbaa !197
  %arrayidx242 = getelementptr inbounds i32** %97, i64 %indvars.iv.next418, !dbg !266
  %98 = load i32** %arrayidx242, align 8, !dbg !266, !tbaa !197
  %arrayidx243 = getelementptr inbounds i32* %98, i64 %idxprom238, !dbg !266
  %99 = load i32* %arrayidx243, align 4, !dbg !266, !tbaa !201
  %100 = load i32*** %tsc206, align 8, !dbg !266, !tbaa !197
  %arrayidx248 = getelementptr inbounds i32** %100, i64 5, !dbg !266
  %101 = load i32** %arrayidx248, align 8, !dbg !266, !tbaa !197
  %arrayidx249 = getelementptr inbounds i32* %101, i64 %idxprom238, !dbg !266
  %102 = load i32* %arrayidx249, align 4, !dbg !266, !tbaa !201
  %add250 = add nsw i32 %102, %99, !dbg !266
  %call251 = tail call i32 @ILogsum(i32 %add235, i32 %add250) #3, !dbg !266
  %call252 = tail call i32 @ILogsum(i32 %call225, i32 %call251) #3, !dbg !266
  %103 = load i32* %M, align 4, !dbg !266, !tbaa !201
  %idxprom254 = sext i32 %103 to i64, !dbg !266
  %104 = load i32*** %mmx192, align 8, !dbg !266, !tbaa !197
  %arrayidx257 = getelementptr inbounds i32** %104, i64 %indvars.iv417, !dbg !266
  %105 = load i32** %arrayidx257, align 8, !dbg !266, !tbaa !197
  %arrayidx258 = getelementptr inbounds i32* %105, i64 %idxprom254, !dbg !266
  %106 = load i32* %arrayidx258, align 4, !dbg !266, !tbaa !201
  %add259 = add nsw i32 %106, %call252, !dbg !266
  store i32 %add259, i32* %arrayidx258, align 4, !dbg !266, !tbaa !201
  %107 = load i32* %M, align 4, !dbg !279, !tbaa !201
  %idxprom261 = sext i32 %107 to i64, !dbg !279
  %arrayidx265 = getelementptr inbounds i32* %105, i64 %idxprom261, !dbg !279
  %108 = load i32* %arrayidx265, align 4, !dbg !279, !tbaa !201
  %sub266 = sub nsw i32 %108, %2, !dbg !279
  store i32 %sub266, i32* %arrayidx265, align 4, !dbg !279, !tbaa !201
  %109 = load i32*** %dmx268, align 8, !dbg !267, !tbaa !197
  %arrayidx269 = getelementptr inbounds i32** %109, i64 %indvars.iv417, !dbg !267
  %110 = load i32** %arrayidx269, align 8, !dbg !267, !tbaa !197
  store i32 -987654321, i32* %110, align 4, !dbg !267, !tbaa !201
  %111 = load i32* %M, align 4, !dbg !267, !tbaa !201
  %idxprom272 = sext i32 %111 to i64, !dbg !267
  %arrayidx276 = getelementptr inbounds i32* %110, i64 %idxprom272, !dbg !267
  store i32 -987654321, i32* %arrayidx276, align 4, !dbg !267, !tbaa !201
  %112 = load i32* %M, align 4, !dbg !267, !tbaa !201
  %idxprom278 = sext i32 %112 to i64, !dbg !267
  %113 = load i32*** %imx280, align 8, !dbg !267, !tbaa !197
  %arrayidx281 = getelementptr inbounds i32** %113, i64 %indvars.iv417, !dbg !267
  %114 = load i32** %arrayidx281, align 8, !dbg !267, !tbaa !197
  %arrayidx282 = getelementptr inbounds i32* %114, i64 %idxprom278, !dbg !267
  store i32 -987654321, i32* %arrayidx282, align 4, !dbg !267, !tbaa !201
  %115 = trunc i64 %indvars.iv.next418 to i32, !dbg !256
  %cmp = icmp sgt i32 %115, 0, !dbg !256
  br i1 %cmp, label %for.end.for.body_crit_edge, label %for.end284, !dbg !256

for.end.for.body_crit_edge:                       ; preds = %for.end
  %.pre = load i32*** %xmx, align 8, !dbg !258, !tbaa !197
  br label %for.body, !dbg !256

for.end284:                                       ; preds = %for.end, %entry
  ret void, !dbg !280
}

; Function Attrs: nounwind optsize uwtable
define float @P7FillOptimalAccuracy(i32 %L, i32 %M, %struct.dpmatrix_s* nocapture %posterior, %struct.dpmatrix_s* nocapture %mx, %struct.p7trace_s** %ret_tr) #0 {
entry:
  %tr = alloca %struct.p7trace_s*, align 8
  call void @llvm.dbg.value(metadata !{i32 %L}, i64 0, metadata !142), !dbg !281
  call void @llvm.dbg.value(metadata !{i32 %M}, i64 0, metadata !143), !dbg !282
  call void @llvm.dbg.value(metadata !{%struct.dpmatrix_s* %posterior}, i64 0, metadata !144), !dbg !283
  call void @llvm.dbg.value(metadata !{%struct.dpmatrix_s* %mx}, i64 0, metadata !145), !dbg !284
  call void @llvm.dbg.value(metadata !{%struct.p7trace_s** %ret_tr}, i64 0, metadata !146), !dbg !285
  call void @llvm.dbg.declare(metadata !{%struct.p7trace_s** %tr}, metadata !147), !dbg !286
  %xmx1 = getelementptr inbounds %struct.dpmatrix_s* %mx, i64 0, i32 0, !dbg !287
  %0 = load i32*** %xmx1, align 8, !dbg !287, !tbaa !197
  call void @llvm.dbg.value(metadata !{i32** %0}, i64 0, metadata !148), !dbg !287
  %mmx2 = getelementptr inbounds %struct.dpmatrix_s* %mx, i64 0, i32 1, !dbg !288
  %1 = load i32*** %mmx2, align 8, !dbg !288, !tbaa !197
  call void @llvm.dbg.value(metadata !{i32** %1}, i64 0, metadata !149), !dbg !288
  %imx3 = getelementptr inbounds %struct.dpmatrix_s* %mx, i64 0, i32 2, !dbg !289
  %2 = load i32*** %imx3, align 8, !dbg !289, !tbaa !197
  call void @llvm.dbg.value(metadata !{i32** %2}, i64 0, metadata !150), !dbg !289
  %dmx4 = getelementptr inbounds %struct.dpmatrix_s* %mx, i64 0, i32 3, !dbg !290
  %3 = load i32*** %dmx4, align 8, !dbg !290, !tbaa !197
  call void @llvm.dbg.value(metadata !{i32** %3}, i64 0, metadata !151), !dbg !290
  %4 = load i32** %0, align 8, !dbg !291, !tbaa !197
  %arrayidx5 = getelementptr inbounds i32* %4, i64 3, !dbg !291
  store i32 -987654321, i32* %arrayidx5, align 4, !dbg !291, !tbaa !201
  %arrayidx7 = getelementptr inbounds i32* %4, i64 2, !dbg !291
  store i32 -987654321, i32* %arrayidx7, align 4, !dbg !291, !tbaa !201
  %arrayidx9 = getelementptr inbounds i32* %4, i64 1, !dbg !291
  store i32 -987654321, i32* %arrayidx9, align 4, !dbg !291, !tbaa !201
  store i32 -987654321, i32* %4, align 4, !dbg !291, !tbaa !201
  %arrayidx13 = getelementptr inbounds i32* %4, i64 4, !dbg !291
  store i32 -987654321, i32* %arrayidx13, align 4, !dbg !291, !tbaa !201
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !153), !dbg !292
  %cmp547 = icmp slt i32 %M, 0, !dbg !292
  br i1 %cmp547, label %for.cond22.preheader, label %for.body.lr.ph, !dbg !292

for.body.lr.ph:                                   ; preds = %entry
  %5 = load i32** %3, align 8, !dbg !294, !tbaa !197
  %6 = load i32** %2, align 8, !dbg !294, !tbaa !197
  %7 = load i32** %1, align 8, !dbg !294, !tbaa !197
  %8 = add i32 %M, 1, !dbg !292
  br label %for.body, !dbg !292

for.cond22.preheader:                             ; preds = %for.body, %entry
  %cmp23545 = icmp slt i32 %L, 1, !dbg !295
  br i1 %cmp23545, label %for.end332, label %for.body24.lr.ph, !dbg !295

for.body24.lr.ph:                                 ; preds = %for.cond22.preheader
  %cmp35541 = icmp slt i32 %M, 1, !dbg !297
  %xmx214 = getelementptr inbounds %struct.dpmatrix_s* %posterior, i64 0, i32 0, !dbg !300
  %mmx110 = getelementptr inbounds %struct.dpmatrix_s* %posterior, i64 0, i32 1, !dbg !301
  %imx195 = getelementptr inbounds %struct.dpmatrix_s* %posterior, i64 0, i32 2, !dbg !303
  %9 = add i32 %M, 1, !dbg !295
  %10 = add i32 %L, 1, !dbg !295
  br label %for.body24, !dbg !295

for.body:                                         ; preds = %for.body, %for.body.lr.ph
  %indvars.iv560 = phi i64 [ %indvars.iv.next561, %for.body ], [ 0, %for.body.lr.ph ]
  %arrayidx15 = getelementptr inbounds i32* %5, i64 %indvars.iv560, !dbg !294
  store i32 -987654321, i32* %arrayidx15, align 4, !dbg !294, !tbaa !201
  %arrayidx18 = getelementptr inbounds i32* %6, i64 %indvars.iv560, !dbg !294
  store i32 -987654321, i32* %arrayidx18, align 4, !dbg !294, !tbaa !201
  %arrayidx21 = getelementptr inbounds i32* %7, i64 %indvars.iv560, !dbg !294
  store i32 -987654321, i32* %arrayidx21, align 4, !dbg !294, !tbaa !201
  %indvars.iv.next561 = add i64 %indvars.iv560, 1, !dbg !292
  %lftr.wideiv562 = trunc i64 %indvars.iv.next561 to i32, !dbg !292
  %exitcond563 = icmp eq i32 %lftr.wideiv562, %8, !dbg !292
  br i1 %exitcond563, label %for.cond22.preheader, label %for.body, !dbg !292

for.body24:                                       ; preds = %for.inc330, %for.body24.lr.ph
  %indvars.iv554 = phi i64 [ %indvars.iv.next555, %for.inc330 ], [ 1, %for.body24.lr.ph ]
  %arrayidx26 = getelementptr inbounds i32** %3, i64 %indvars.iv554, !dbg !304
  %11 = load i32** %arrayidx26, align 8, !dbg !304, !tbaa !197
  store i32 -987654321, i32* %11, align 4, !dbg !304, !tbaa !201
  %arrayidx29 = getelementptr inbounds i32** %2, i64 %indvars.iv554, !dbg !304
  %12 = load i32** %arrayidx29, align 8, !dbg !304, !tbaa !197
  store i32 -987654321, i32* %12, align 4, !dbg !304, !tbaa !201
  %arrayidx32 = getelementptr inbounds i32** %1, i64 %indvars.iv554, !dbg !304
  %13 = load i32** %arrayidx32, align 8, !dbg !304, !tbaa !197
  store i32 -987654321, i32* %13, align 4, !dbg !304, !tbaa !201
  call void @llvm.dbg.value(metadata !271, i64 0, metadata !153), !dbg !297
  %.pre569 = add nsw i64 %indvars.iv554, -1, !dbg !300
  br i1 %cmp35541, label %for.body24.for.end205_crit_edge, label %for.body36.lr.ph, !dbg !297

for.body24.for.end205_crit_edge:                  ; preds = %for.body24
  %arrayidx211.pre = getelementptr inbounds i32** %0, i64 %.pre569, !dbg !300
  br label %for.end205, !dbg !297

for.body36.lr.ph:                                 ; preds = %for.body24
  %arrayidx44 = getelementptr inbounds i32** %1, i64 %.pre569, !dbg !305
  %arrayidx59 = getelementptr inbounds i32** %2, i64 %.pre569, !dbg !306
  %arrayidx76 = getelementptr inbounds i32** %3, i64 %.pre569, !dbg !307
  %arrayidx91 = getelementptr inbounds i32** %0, i64 %.pre569, !dbg !308
  br label %for.body36, !dbg !297

for.body36:                                       ; preds = %if.end188.for.body36_crit_edge, %for.body36.lr.ph
  %14 = phi i32* [ %.pre568, %if.end188.for.body36_crit_edge ], [ %13, %for.body36.lr.ph ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %if.end188.for.body36_crit_edge ], [ 1, %for.body36.lr.ph ]
  %arrayidx40 = getelementptr inbounds i32* %14, i64 %indvars.iv, !dbg !309
  store i32 -987654321, i32* %arrayidx40, align 4, !dbg !309, !tbaa !201
  %15 = add nsw i64 %indvars.iv, -1, !dbg !305
  %16 = load i32** %arrayidx44, align 8, !dbg !305, !tbaa !197
  %arrayidx45 = getelementptr inbounds i32* %16, i64 %15, !dbg !305
  %17 = load i32* %arrayidx45, align 4, !dbg !305, !tbaa !201
  call void @llvm.dbg.value(metadata !{i32 %17}, i64 0, metadata !154), !dbg !305
  %cmp50 = icmp sgt i32 %17, -987654321, !dbg !305
  %. = select i1 %cmp50, i32 %17, i32 -987654321, !dbg !305
  store i32 %., i32* %arrayidx40, align 4, !dbg !310, !tbaa !201
  %.570 = select i1 %cmp50, i32 %17, i32 -987654321, !dbg !305
  %18 = load i32** %arrayidx59, align 8, !dbg !306, !tbaa !197
  %arrayidx60 = getelementptr inbounds i32* %18, i64 %15, !dbg !306
  %19 = load i32* %arrayidx60, align 4, !dbg !306, !tbaa !201
  call void @llvm.dbg.value(metadata !{i32 %19}, i64 0, metadata !154), !dbg !306
  %cmp65 = icmp sgt i32 %19, %.570, !dbg !306
  %.. = select i1 %cmp65, i32 %19, i32 %., !dbg !306
  store i32 %.., i32* %arrayidx40, align 4, !dbg !311, !tbaa !201
  %..570 = select i1 %cmp65, i32 %19, i32 %.570, !dbg !306
  %20 = load i32** %arrayidx76, align 8, !dbg !307, !tbaa !197
  %arrayidx77 = getelementptr inbounds i32* %20, i64 %15, !dbg !307
  %21 = load i32* %arrayidx77, align 4, !dbg !307, !tbaa !201
  call void @llvm.dbg.value(metadata !{i32 %21}, i64 0, metadata !154), !dbg !307
  %cmp82 = icmp sgt i32 %21, %..570, !dbg !307
  %... = select i1 %cmp82, i32 %21, i32 %.., !dbg !307
  store i32 %..., i32* %arrayidx40, align 4, !dbg !312, !tbaa !201
  %...570 = select i1 %cmp82, i32 %21, i32 %..570, !dbg !307
  %22 = load i32** %arrayidx91, align 8, !dbg !308, !tbaa !197
  %23 = load i32* %22, align 4, !dbg !308, !tbaa !201
  call void @llvm.dbg.value(metadata !{i32 %23}, i64 0, metadata !154), !dbg !308
  %cmp97 = icmp sgt i32 %23, %...570, !dbg !308
  %.... = select i1 %cmp97, i32 %23, i32 %..., !dbg !308
  store i32 %...., i32* %arrayidx40, align 4, !dbg !313, !tbaa !201
  %....570 = select i1 %cmp97, i32 %23, i32 %...570, !dbg !308
  %24 = load i32*** %mmx110, align 8, !dbg !301, !tbaa !197
  %arrayidx111 = getelementptr inbounds i32** %24, i64 %indvars.iv554, !dbg !301
  %25 = load i32** %arrayidx111, align 8, !dbg !301, !tbaa !197
  %arrayidx112 = getelementptr inbounds i32* %25, i64 %indvars.iv, !dbg !301
  %26 = load i32* %arrayidx112, align 4, !dbg !301, !tbaa !201
  %call = call i32 @ILogsum(i32 %....570, i32 %26) #3, !dbg !301
  %27 = load i32** %arrayidx32, align 8, !dbg !301, !tbaa !197
  %arrayidx116 = getelementptr inbounds i32* %27, i64 %indvars.iv, !dbg !301
  store i32 %call, i32* %arrayidx116, align 4, !dbg !301, !tbaa !201
  %28 = load i32** %arrayidx26, align 8, !dbg !314, !tbaa !197
  %arrayidx120 = getelementptr inbounds i32* %28, i64 %indvars.iv, !dbg !314
  store i32 -987654321, i32* %arrayidx120, align 4, !dbg !314, !tbaa !201
  %arrayidx125 = getelementptr inbounds i32* %27, i64 %15, !dbg !315
  %29 = load i32* %arrayidx125, align 4, !dbg !315, !tbaa !201
  call void @llvm.dbg.value(metadata !{i32 %29}, i64 0, metadata !154), !dbg !315
  %cmp130 = icmp sgt i32 %29, -987654321, !dbg !315
  %.571 = select i1 %cmp130, i32 %29, i32 -987654321, !dbg !315
  store i32 %.571, i32* %arrayidx120, align 4, !dbg !316, !tbaa !201
  %.572 = select i1 %cmp130, i32 %29, i32 -987654321, !dbg !315
  %arrayidx141 = getelementptr inbounds i32* %28, i64 %15, !dbg !317
  %30 = load i32* %arrayidx141, align 4, !dbg !317, !tbaa !201
  call void @llvm.dbg.value(metadata !{i32 %30}, i64 0, metadata !154), !dbg !317
  %cmp146 = icmp sgt i32 %30, %.572, !dbg !317
  %..571 = select i1 %cmp146, i32 %30, i32 %.571, !dbg !317
  store i32 %..571, i32* %arrayidx120, align 4, !dbg !318, !tbaa !201
  %31 = load i32** %arrayidx29, align 8, !dbg !319, !tbaa !197
  %arrayidx156 = getelementptr inbounds i32* %31, i64 %indvars.iv, !dbg !319
  store i32 -987654321, i32* %arrayidx156, align 4, !dbg !319, !tbaa !201
  %32 = load i32** %arrayidx44, align 8, !dbg !320, !tbaa !197
  %arrayidx161 = getelementptr inbounds i32* %32, i64 %indvars.iv, !dbg !320
  %33 = load i32* %arrayidx161, align 4, !dbg !320, !tbaa !201
  call void @llvm.dbg.value(metadata !{i32 %33}, i64 0, metadata !154), !dbg !320
  %cmp166 = icmp sgt i32 %33, -987654321, !dbg !320
  %.573 = select i1 %cmp166, i32 %33, i32 -987654321, !dbg !320
  store i32 %.573, i32* %arrayidx156, align 4, !dbg !321, !tbaa !201
  %.574 = select i1 %cmp166, i32 %33, i32 -987654321, !dbg !320
  %34 = load i32** %arrayidx59, align 8, !dbg !322, !tbaa !197
  %arrayidx177 = getelementptr inbounds i32* %34, i64 %indvars.iv, !dbg !322
  %35 = load i32* %arrayidx177, align 4, !dbg !322, !tbaa !201
  call void @llvm.dbg.value(metadata !{i32 %35}, i64 0, metadata !154), !dbg !322
  %cmp182 = icmp sgt i32 %35, %.574, !dbg !322
  %..573 = select i1 %cmp182, i32 %35, i32 %.573, !dbg !322
  store i32 %..573, i32* %arrayidx156, align 4, !dbg !323, !tbaa !201
  %..574 = select i1 %cmp182, i32 %35, i32 %.574, !dbg !322
  %36 = load i32*** %imx195, align 8, !dbg !303, !tbaa !197
  %arrayidx196 = getelementptr inbounds i32** %36, i64 %indvars.iv554, !dbg !303
  %37 = load i32** %arrayidx196, align 8, !dbg !303, !tbaa !197
  %arrayidx197 = getelementptr inbounds i32* %37, i64 %indvars.iv, !dbg !303
  %38 = load i32* %arrayidx197, align 4, !dbg !303, !tbaa !201
  %call198 = call i32 @ILogsum(i32 %..574, i32 %38) #3, !dbg !303
  %39 = load i32** %arrayidx29, align 8, !dbg !303, !tbaa !197
  %arrayidx202 = getelementptr inbounds i32* %39, i64 %indvars.iv, !dbg !303
  store i32 %call198, i32* %arrayidx202, align 4, !dbg !303, !tbaa !201
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !297
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !297
  %exitcond = icmp eq i32 %lftr.wideiv, %9, !dbg !297
  br i1 %exitcond, label %for.end205, label %if.end188.for.body36_crit_edge, !dbg !297

if.end188.for.body36_crit_edge:                   ; preds = %for.body36
  %.pre568 = load i32** %arrayidx32, align 8, !dbg !309, !tbaa !197
  br label %for.body36, !dbg !297

for.end205:                                       ; preds = %for.body36, %for.body24.for.end205_crit_edge
  %arrayidx211.pre-phi = phi i32** [ %arrayidx211.pre, %for.body24.for.end205_crit_edge ], [ %arrayidx91, %for.body36 ], !dbg !300
  %arrayidx207 = getelementptr inbounds i32** %0, i64 %indvars.iv554, !dbg !324
  %40 = load i32** %arrayidx207, align 8, !dbg !324, !tbaa !197
  %arrayidx208 = getelementptr inbounds i32* %40, i64 4, !dbg !324
  store i32 -987654321, i32* %arrayidx208, align 4, !dbg !324, !tbaa !201
  %41 = load i32** %arrayidx211.pre-phi, align 8, !dbg !300, !tbaa !197
  %arrayidx212 = getelementptr inbounds i32* %41, i64 4, !dbg !300
  %42 = load i32* %arrayidx212, align 4, !dbg !300, !tbaa !201
  %43 = load i32*** %xmx214, align 8, !dbg !300, !tbaa !197
  %arrayidx215 = getelementptr inbounds i32** %43, i64 %indvars.iv554, !dbg !300
  %44 = load i32** %arrayidx215, align 8, !dbg !300, !tbaa !197
  %arrayidx216 = getelementptr inbounds i32* %44, i64 4, !dbg !300
  %45 = load i32* %arrayidx216, align 4, !dbg !300, !tbaa !201
  %call217 = call i32 @ILogsum(i32 %42, i32 %45) #3, !dbg !300
  call void @llvm.dbg.value(metadata !{i32 %call217}, i64 0, metadata !154), !dbg !300
  %cmp218 = icmp sgt i32 %call217, -987654321, !dbg !300
  %46 = load i32** %arrayidx207, align 8, !dbg !325, !tbaa !197
  br i1 %cmp218, label %if.then219, label %if.end223, !dbg !300

if.then219:                                       ; preds = %for.end205
  %arrayidx222 = getelementptr inbounds i32* %46, i64 4, !dbg !325
  store i32 %call217, i32* %arrayidx222, align 4, !dbg !325, !tbaa !201
  br label %if.end223, !dbg !325

if.end223:                                        ; preds = %for.end205, %if.then219
  %arrayidx226 = getelementptr inbounds i32* %46, i64 1, !dbg !326
  store i32 -987654321, i32* %arrayidx226, align 4, !dbg !326, !tbaa !201
  call void @llvm.dbg.value(metadata !271, i64 0, metadata !153), !dbg !327
  br i1 %cmp35541, label %for.end245, label %for.body229.lr.ph, !dbg !327

for.body229.lr.ph:                                ; preds = %if.end223
  %47 = load i32** %arrayidx32, align 8, !dbg !329, !tbaa !197
  br label %for.body229, !dbg !327

for.body229:                                      ; preds = %for.inc243, %for.body229.lr.ph
  %48 = phi i32 [ %50, %for.inc243 ], [ -987654321, %for.body229.lr.ph ], !dbg !329
  %indvars.iv550 = phi i64 [ %indvars.iv.next551, %for.inc243 ], [ 1, %for.body229.lr.ph ]
  %arrayidx233 = getelementptr inbounds i32* %47, i64 %indvars.iv550, !dbg !329
  %49 = load i32* %arrayidx233, align 4, !dbg !329, !tbaa !201
  call void @llvm.dbg.value(metadata !{i32 %49}, i64 0, metadata !154), !dbg !329
  %cmp237 = icmp sgt i32 %49, %48, !dbg !329
  br i1 %cmp237, label %if.then238, label %for.inc243, !dbg !329

if.then238:                                       ; preds = %for.body229
  store i32 %49, i32* %arrayidx226, align 4, !dbg !330, !tbaa !201
  br label %for.inc243, !dbg !330

for.inc243:                                       ; preds = %for.body229, %if.then238
  %50 = phi i32 [ %48, %for.body229 ], [ %49, %if.then238 ]
  %indvars.iv.next551 = add i64 %indvars.iv550, 1, !dbg !327
  %lftr.wideiv552 = trunc i64 %indvars.iv.next551 to i32, !dbg !327
  %exitcond553 = icmp eq i32 %lftr.wideiv552, %9, !dbg !327
  br i1 %exitcond553, label %for.end245, label %for.body229, !dbg !327

for.end245:                                       ; preds = %for.inc243, %if.end223
  %arrayidx248 = getelementptr inbounds i32* %46, i64 3, !dbg !331
  store i32 -987654321, i32* %arrayidx248, align 4, !dbg !331, !tbaa !201
  %51 = load i32** %arrayidx211.pre-phi, align 8, !dbg !332, !tbaa !197
  %arrayidx252 = getelementptr inbounds i32* %51, i64 3, !dbg !332
  %52 = load i32* %arrayidx252, align 4, !dbg !332, !tbaa !201
  %53 = load i32*** %xmx214, align 8, !dbg !332, !tbaa !197
  %arrayidx255 = getelementptr inbounds i32** %53, i64 %indvars.iv554, !dbg !332
  %54 = load i32** %arrayidx255, align 8, !dbg !332, !tbaa !197
  %arrayidx256 = getelementptr inbounds i32* %54, i64 3, !dbg !332
  %55 = load i32* %arrayidx256, align 4, !dbg !332, !tbaa !201
  %call257 = call i32 @ILogsum(i32 %52, i32 %55) #3, !dbg !332
  call void @llvm.dbg.value(metadata !{i32 %call257}, i64 0, metadata !154), !dbg !332
  %cmp258 = icmp sgt i32 %call257, -987654321, !dbg !332
  %56 = load i32** %arrayidx207, align 8, !dbg !333, !tbaa !197
  %arrayidx262 = getelementptr inbounds i32* %56, i64 3, !dbg !333
  br i1 %cmp258, label %if.then259, label %for.end245.if.end263_crit_edge, !dbg !332

for.end245.if.end263_crit_edge:                   ; preds = %for.end245
  %.pre565 = load i32* %arrayidx262, align 4, !dbg !334, !tbaa !201
  br label %if.end263, !dbg !332

if.then259:                                       ; preds = %for.end245
  store i32 %call257, i32* %arrayidx262, align 4, !dbg !333, !tbaa !201
  br label %if.end263, !dbg !333

if.end263:                                        ; preds = %for.end245.if.end263_crit_edge, %if.then259
  %57 = phi i32 [ %.pre565, %for.end245.if.end263_crit_edge ], [ %call257, %if.then259 ]
  %arrayidx266 = getelementptr inbounds i32* %56, i64 1, !dbg !334
  %58 = load i32* %arrayidx266, align 4, !dbg !334, !tbaa !201
  call void @llvm.dbg.value(metadata !{i32 %58}, i64 0, metadata !154), !dbg !334
  %cmp270 = icmp sgt i32 %58, %57, !dbg !334
  br i1 %cmp270, label %if.then271, label %if.end275, !dbg !334

if.then271:                                       ; preds = %if.end263
  %arrayidx269 = getelementptr inbounds i32* %56, i64 3, !dbg !334
  store i32 %58, i32* %arrayidx269, align 4, !dbg !335, !tbaa !201
  br label %if.end275, !dbg !335

if.end275:                                        ; preds = %if.then271, %if.end263
  %59 = phi i32 [ %58, %if.then271 ], [ %57, %if.end263 ]
  store i32 -987654321, i32* %56, align 4, !dbg !336, !tbaa !201
  %arrayidx281 = getelementptr inbounds i32* %56, i64 4, !dbg !337
  %60 = load i32* %arrayidx281, align 4, !dbg !337, !tbaa !201
  call void @llvm.dbg.value(metadata !{i32 %60}, i64 0, metadata !154), !dbg !337
  %cmp282 = icmp sgt i32 %60, -987654321, !dbg !337
  %.575 = select i1 %cmp282, i32 %60, i32 -987654321, !dbg !337
  %.576 = select i1 %cmp282, i32 %60, i32 -987654321, !dbg !337
  call void @llvm.dbg.value(metadata !{i32 %59}, i64 0, metadata !154), !dbg !338
  %cmp294 = icmp sgt i32 %59, %.576, !dbg !338
  %..575 = select i1 %cmp294, i32 %59, i32 %.575, !dbg !338
  store i32 %..575, i32* %56, align 4, !dbg !339, !tbaa !201
  %arrayidx302 = getelementptr inbounds i32* %56, i64 2, !dbg !340
  store i32 -987654321, i32* %arrayidx302, align 4, !dbg !340, !tbaa !201
  %61 = load i32** %arrayidx211.pre-phi, align 8, !dbg !341, !tbaa !197
  %arrayidx306 = getelementptr inbounds i32* %61, i64 2, !dbg !341
  %62 = load i32* %arrayidx306, align 4, !dbg !341, !tbaa !201
  %63 = load i32*** %xmx214, align 8, !dbg !341, !tbaa !197
  %arrayidx309 = getelementptr inbounds i32** %63, i64 %indvars.iv554, !dbg !341
  %64 = load i32** %arrayidx309, align 8, !dbg !341, !tbaa !197
  %arrayidx310 = getelementptr inbounds i32* %64, i64 2, !dbg !341
  %65 = load i32* %arrayidx310, align 4, !dbg !341, !tbaa !201
  %call311 = call i32 @ILogsum(i32 %62, i32 %65) #3, !dbg !341
  call void @llvm.dbg.value(metadata !{i32 %call311}, i64 0, metadata !154), !dbg !341
  %cmp312 = icmp sgt i32 %call311, -987654321, !dbg !341
  %66 = load i32** %arrayidx207, align 8, !dbg !342, !tbaa !197
  %arrayidx316 = getelementptr inbounds i32* %66, i64 2, !dbg !342
  br i1 %cmp312, label %if.then313, label %if.end299.if.end317_crit_edge, !dbg !341

if.end299.if.end317_crit_edge:                    ; preds = %if.end275
  %.pre567 = load i32* %arrayidx316, align 4, !dbg !343, !tbaa !201
  br label %if.end317, !dbg !341

if.then313:                                       ; preds = %if.end275
  store i32 %call311, i32* %arrayidx316, align 4, !dbg !342, !tbaa !201
  br label %if.end317, !dbg !342

if.end317:                                        ; preds = %if.end299.if.end317_crit_edge, %if.then313
  %67 = phi i32 [ %.pre567, %if.end299.if.end317_crit_edge ], [ %call311, %if.then313 ]
  %arrayidx320 = getelementptr inbounds i32* %66, i64 1, !dbg !343
  %68 = load i32* %arrayidx320, align 4, !dbg !343, !tbaa !201
  call void @llvm.dbg.value(metadata !{i32 %68}, i64 0, metadata !154), !dbg !343
  %cmp324 = icmp sgt i32 %68, %67, !dbg !343
  br i1 %cmp324, label %if.then325, label %for.inc330, !dbg !343

if.then325:                                       ; preds = %if.end317
  %arrayidx323 = getelementptr inbounds i32* %66, i64 2, !dbg !343
  store i32 %68, i32* %arrayidx323, align 4, !dbg !344, !tbaa !201
  br label %for.inc330, !dbg !344

for.inc330:                                       ; preds = %if.end317, %if.then325
  %indvars.iv.next555 = add i64 %indvars.iv554, 1, !dbg !295
  %lftr.wideiv558 = trunc i64 %indvars.iv.next555 to i32, !dbg !295
  %exitcond559 = icmp eq i32 %lftr.wideiv558, %10, !dbg !295
  br i1 %exitcond559, label %for.end332, label %for.body24, !dbg !295

for.end332:                                       ; preds = %for.inc330, %for.cond22.preheader
  %idxprom333 = sext i32 %L to i64, !dbg !345
  %arrayidx334 = getelementptr inbounds i32** %0, i64 %idxprom333, !dbg !345
  %69 = load i32** %arrayidx334, align 8, !dbg !345, !tbaa !197
  %arrayidx335 = getelementptr inbounds i32* %69, i64 2, !dbg !345
  %70 = load i32* %arrayidx335, align 4, !dbg !345, !tbaa !201
  call void @llvm.dbg.value(metadata !{i32 %70}, i64 0, metadata !154), !dbg !345
  %cmp336 = icmp eq %struct.p7trace_s** %ret_tr, null, !dbg !346
  br i1 %cmp336, label %if.end338, label %if.then337, !dbg !346

if.then337:                                       ; preds = %for.end332
  call void @P7OptimalAccuracyTrace(i32 %L, i32 %M, %struct.dpmatrix_s* %posterior, %struct.dpmatrix_s* %mx, %struct.p7trace_s** %tr) #4, !dbg !347
  call void @llvm.dbg.value(metadata !{%struct.p7trace_s** %tr}, i64 0, metadata !147), !dbg !349
  %71 = load %struct.p7trace_s** %tr, align 8, !dbg !349, !tbaa !197
  store %struct.p7trace_s* %71, %struct.p7trace_s** %ret_tr, align 8, !dbg !349, !tbaa !197
  br label %if.end338, !dbg !350

if.end338:                                        ; preds = %for.end332, %if.then337
  %call339 = call float @Score2Prob(i32 %70, float 1.000000e+00) #3, !dbg !351
  ret float %call339, !dbg !351
}

; Function Attrs: optsize
declare void @FreePlan7Matrix(%struct.dpmatrix_s*) #2

; Function Attrs: optsize
declare %struct.dpmatrix_s* @AllocPlan7Matrix(i32, i32, i32***, i32***, i32***, i32***) #2

; Function Attrs: optsize
declare i32 @ILogsum(i32, i32) #2

; Function Attrs: optsize
declare float @Scorify(i32) #2

; Function Attrs: nounwind optsize uwtable
define void @P7OptimalAccuracyTrace(i32 %L, i32 %M, %struct.dpmatrix_s* nocapture %posterior, %struct.dpmatrix_s* nocapture %mx, %struct.p7trace_s** nocapture %ret_tr) #0 {
entry:
  %tr = alloca %struct.p7trace_s*, align 8
  call void @llvm.dbg.value(metadata !{i32 %L}, i64 0, metadata !159), !dbg !352
  call void @llvm.dbg.value(metadata !{i32 %M}, i64 0, metadata !160), !dbg !353
  call void @llvm.dbg.value(metadata !{%struct.dpmatrix_s* %posterior}, i64 0, metadata !161), !dbg !354
  call void @llvm.dbg.value(metadata !{%struct.dpmatrix_s* %mx}, i64 0, metadata !162), !dbg !355
  call void @llvm.dbg.value(metadata !{%struct.p7trace_s** %ret_tr}, i64 0, metadata !163), !dbg !356
  call void @llvm.dbg.declare(metadata !{%struct.p7trace_s** %tr}, metadata !164), !dbg !357
  %mul = shl nsw i32 %L, 1, !dbg !358
  %add = add nsw i32 %mul, 6, !dbg !358
  call void @llvm.dbg.value(metadata !{i32 %add}, i64 0, metadata !165), !dbg !358
  call void @P7AllocTrace(i32 %add, %struct.p7trace_s** %tr) #3, !dbg !359
  %xmx1 = getelementptr inbounds %struct.dpmatrix_s* %mx, i64 0, i32 0, !dbg !360
  %0 = load i32*** %xmx1, align 8, !dbg !360, !tbaa !197
  call void @llvm.dbg.value(metadata !{i32** %0}, i64 0, metadata !169), !dbg !360
  %mmx2 = getelementptr inbounds %struct.dpmatrix_s* %mx, i64 0, i32 1, !dbg !361
  %1 = load i32*** %mmx2, align 8, !dbg !361, !tbaa !197
  call void @llvm.dbg.value(metadata !{i32** %1}, i64 0, metadata !170), !dbg !361
  %imx3 = getelementptr inbounds %struct.dpmatrix_s* %mx, i64 0, i32 2, !dbg !362
  %2 = load i32*** %imx3, align 8, !dbg !362, !tbaa !197
  call void @llvm.dbg.value(metadata !{i32** %2}, i64 0, metadata !171), !dbg !362
  %dmx4 = getelementptr inbounds %struct.dpmatrix_s* %mx, i64 0, i32 3, !dbg !363
  %3 = load i32*** %dmx4, align 8, !dbg !363, !tbaa !197
  call void @llvm.dbg.value(metadata !{i32** %3}, i64 0, metadata !172), !dbg !363
  call void @llvm.dbg.value(metadata !{%struct.p7trace_s** %tr}, i64 0, metadata !164), !dbg !364
  %4 = load %struct.p7trace_s** %tr, align 8, !dbg !364, !tbaa !197
  %statetype = getelementptr inbounds %struct.p7trace_s* %4, i64 0, i32 1, !dbg !364
  %5 = load i8** %statetype, align 8, !dbg !364, !tbaa !197
  store i8 9, i8* %5, align 1, !dbg !364, !tbaa !198
  call void @llvm.dbg.value(metadata !{%struct.p7trace_s** %tr}, i64 0, metadata !164), !dbg !365
  %6 = load %struct.p7trace_s** %tr, align 8, !dbg !365, !tbaa !197
  %nodeidx = getelementptr inbounds %struct.p7trace_s* %6, i64 0, i32 2, !dbg !365
  %7 = load i32** %nodeidx, align 8, !dbg !365, !tbaa !197
  store i32 0, i32* %7, align 4, !dbg !365, !tbaa !201
  call void @llvm.dbg.value(metadata !{%struct.p7trace_s** %tr}, i64 0, metadata !164), !dbg !366
  %pos = getelementptr inbounds %struct.p7trace_s* %6, i64 0, i32 3, !dbg !366
  %8 = load i32** %pos, align 8, !dbg !366, !tbaa !197
  store i32 0, i32* %8, align 4, !dbg !366, !tbaa !201
  call void @llvm.dbg.value(metadata !{%struct.p7trace_s** %tr}, i64 0, metadata !164), !dbg !367
  %statetype7 = getelementptr inbounds %struct.p7trace_s* %6, i64 0, i32 1, !dbg !367
  %9 = load i8** %statetype7, align 8, !dbg !367, !tbaa !197
  %arrayidx8 = getelementptr inbounds i8* %9, i64 1, !dbg !367
  store i8 8, i8* %arrayidx8, align 1, !dbg !367, !tbaa !198
  call void @llvm.dbg.value(metadata !{%struct.p7trace_s** %tr}, i64 0, metadata !164), !dbg !368
  %10 = load %struct.p7trace_s** %tr, align 8, !dbg !368, !tbaa !197
  %nodeidx9 = getelementptr inbounds %struct.p7trace_s* %10, i64 0, i32 2, !dbg !368
  %11 = load i32** %nodeidx9, align 8, !dbg !368, !tbaa !197
  %arrayidx10 = getelementptr inbounds i32* %11, i64 1, !dbg !368
  store i32 0, i32* %arrayidx10, align 4, !dbg !368, !tbaa !201
  call void @llvm.dbg.value(metadata !{%struct.p7trace_s** %tr}, i64 0, metadata !164), !dbg !369
  %pos11 = getelementptr inbounds %struct.p7trace_s* %10, i64 0, i32 3, !dbg !369
  %12 = load i32** %pos11, align 8, !dbg !369, !tbaa !197
  %arrayidx12 = getelementptr inbounds i32* %12, i64 1, !dbg !369
  store i32 0, i32* %arrayidx12, align 4, !dbg !369, !tbaa !201
  call void @llvm.dbg.value(metadata !370, i64 0, metadata !166), !dbg !371
  call void @llvm.dbg.value(metadata !{i32 %L}, i64 0, metadata !167), !dbg !372
  %mmx35 = getelementptr inbounds %struct.dpmatrix_s* %posterior, i64 0, i32 1, !dbg !373
  %imx218 = getelementptr inbounds %struct.dpmatrix_s* %posterior, i64 0, i32 2, !dbg !376
  %xmx308 = getelementptr inbounds %struct.dpmatrix_s* %posterior, i64 0, i32 0, !dbg !377
  %cmp377740 = icmp sgt i32 %M, 0, !dbg !378
  %13 = sext i32 %M to i64
  br label %while.cond.outer, !dbg !380

while.cond.outer:                                 ; preds = %if.then521, %entry
  %k.0.ph = phi i32 [ undef, %entry ], [ %k.3, %if.then521 ]
  %i.0.ph = phi i32 [ %L, %entry ], [ %i.2, %if.then521 ]
  %tpos.0.ph = phi i32 [ 2, %entry ], [ %inc, %if.then521 ]
  %curralloc.0.ph = phi i32 [ %add, %entry ], [ %add522, %if.then521 ]
  %14 = sext i32 %tpos.0.ph to i64
  br label %while.cond

while.cond:                                       ; preds = %sw.epilog, %while.cond.outer
  %indvars.iv748 = phi i64 [ %14, %while.cond.outer ], [ %indvars.iv.next749, %sw.epilog ]
  %k.0 = phi i32 [ %k.0.ph, %while.cond.outer ], [ %k.3, %sw.epilog ]
  %i.0 = phi i32 [ %i.0.ph, %while.cond.outer ], [ %i.2, %sw.epilog ]
  %tpos.0 = phi i32 [ %tpos.0.ph, %while.cond.outer ], [ %inc, %sw.epilog ]
  %15 = add nsw i64 %indvars.iv748, -1, !dbg !380
  call void @llvm.dbg.value(metadata !{%struct.p7trace_s** %tr}, i64 0, metadata !164), !dbg !380
  %16 = load %struct.p7trace_s** %tr, align 8, !dbg !380, !tbaa !197
  %statetype13 = getelementptr inbounds %struct.p7trace_s* %16, i64 0, i32 1, !dbg !380
  %17 = load i8** %statetype13, align 8, !dbg !380, !tbaa !197
  %arrayidx14 = getelementptr inbounds i8* %17, i64 %15, !dbg !380
  %18 = load i8* %arrayidx14, align 1, !dbg !380, !tbaa !198
  %cmp = icmp eq i8 %18, 4, !dbg !380
  br i1 %cmp, label %while.end, label %while.body, !dbg !380

while.body:                                       ; preds = %while.cond
  %conv = sext i8 %18 to i32, !dbg !380
  switch i32 %conv, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb146
    i32 3, label %sw.bb205
    i32 5, label %sw.bb276
    i32 6, label %sw.bb335
    i32 7, label %for.cond.preheader
    i32 8, label %sw.bb409
    i32 10, label %sw.bb464
  ], !dbg !381

for.cond.preheader:                               ; preds = %while.body
  br i1 %cmp377740, label %for.body.lr.ph, label %if.then407, !dbg !378

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %idxprom379 = sext i32 %i.0 to i64, !dbg !382
  %arrayidx380 = getelementptr inbounds i32** %0, i64 %idxprom379, !dbg !382
  %19 = load i32** %arrayidx380, align 8, !dbg !382, !tbaa !197
  %arrayidx381 = getelementptr inbounds i32* %19, i64 1, !dbg !382
  %20 = load i32* %arrayidx381, align 4, !dbg !382, !tbaa !201
  %arrayidx384 = getelementptr inbounds i32** %1, i64 %idxprom379, !dbg !382
  %21 = load i32** %arrayidx384, align 8, !dbg !382, !tbaa !197
  %cmp389 = icmp sgt i32 %i.0, 0, !dbg !382
  br label %for.body, !dbg !378

sw.bb:                                            ; preds = %while.body
  %add21 = add nsw i32 %k.0, 1, !dbg !383
  %idxprom22 = sext i32 %add21 to i64, !dbg !383
  %add23 = add nsw i32 %i.0, 1, !dbg !383
  %idxprom24 = sext i32 %add23 to i64, !dbg !383
  %arrayidx25 = getelementptr inbounds i32** %1, i64 %idxprom24, !dbg !383
  %22 = load i32** %arrayidx25, align 8, !dbg !383, !tbaa !197
  %arrayidx26 = getelementptr inbounds i32* %22, i64 %idxprom22, !dbg !383
  %23 = load i32* %arrayidx26, align 4, !dbg !383, !tbaa !201
  call void @llvm.dbg.value(metadata !{i32 %23}, i64 0, metadata !173), !dbg !383
  %idxprom27 = sext i32 %k.0 to i64, !dbg !373
  %idxprom28 = sext i32 %i.0 to i64, !dbg !373
  %arrayidx29 = getelementptr inbounds i32** %1, i64 %idxprom28, !dbg !373
  %24 = load i32** %arrayidx29, align 8, !dbg !373, !tbaa !197
  %arrayidx30 = getelementptr inbounds i32* %24, i64 %idxprom27, !dbg !373
  %25 = load i32* %arrayidx30, align 4, !dbg !373, !tbaa !201
  %26 = load i32*** %mmx35, align 8, !dbg !373, !tbaa !197
  %arrayidx36 = getelementptr inbounds i32** %26, i64 %idxprom24, !dbg !373
  %27 = load i32** %arrayidx36, align 8, !dbg !373, !tbaa !197
  %arrayidx37 = getelementptr inbounds i32* %27, i64 %idxprom22, !dbg !373
  %28 = load i32* %arrayidx37, align 4, !dbg !373, !tbaa !201
  %call = call i32 @ILogsum(i32 %25, i32 %28) #3, !dbg !373
  %cmp38 = icmp eq i32 %23, %call, !dbg !373
  %cmp40 = icmp sgt i32 %i.0, 0, !dbg !373
  %or.cond = and i1 %cmp38, %cmp40, !dbg !373
  %cmp43 = icmp sgt i32 %k.0, 0, !dbg !373
  %or.cond720 = and i1 %or.cond, %cmp43, !dbg !373
  br i1 %or.cond720, label %if.then, label %if.else, !dbg !373

if.then:                                          ; preds = %sw.bb
  call void @llvm.dbg.value(metadata !{%struct.p7trace_s** %tr}, i64 0, metadata !164), !dbg !384
  %29 = load %struct.p7trace_s** %tr, align 8, !dbg !384, !tbaa !197
  %statetype46 = getelementptr inbounds %struct.p7trace_s* %29, i64 0, i32 1, !dbg !384
  %30 = load i8** %statetype46, align 8, !dbg !384, !tbaa !197
  %arrayidx47 = getelementptr inbounds i8* %30, i64 %indvars.iv748, !dbg !384
  store i8 1, i8* %arrayidx47, align 1, !dbg !384, !tbaa !198
  %dec = add nsw i32 %k.0, -1, !dbg !386
  call void @llvm.dbg.value(metadata !{i32 %dec}, i64 0, metadata !168), !dbg !386
  call void @llvm.dbg.value(metadata !{%struct.p7trace_s** %tr}, i64 0, metadata !164), !dbg !386
  %31 = load %struct.p7trace_s** %tr, align 8, !dbg !386, !tbaa !197
  %nodeidx49 = getelementptr inbounds %struct.p7trace_s* %31, i64 0, i32 2, !dbg !386
  %32 = load i32** %nodeidx49, align 8, !dbg !386, !tbaa !197
  %arrayidx50 = getelementptr inbounds i32* %32, i64 %indvars.iv748, !dbg !386
  store i32 %k.0, i32* %arrayidx50, align 4, !dbg !386, !tbaa !201
  %dec51 = add nsw i32 %i.0, -1, !dbg !387
  call void @llvm.dbg.value(metadata !{i32 %dec51}, i64 0, metadata !167), !dbg !387
  call void @llvm.dbg.value(metadata !{%struct.p7trace_s** %tr}, i64 0, metadata !164), !dbg !387
  %pos53 = getelementptr inbounds %struct.p7trace_s* %31, i64 0, i32 3, !dbg !387
  %33 = load i32** %pos53, align 8, !dbg !387, !tbaa !197
  %arrayidx54 = getelementptr inbounds i32* %33, i64 %indvars.iv748, !dbg !387
  store i32 %i.0, i32* %arrayidx54, align 4, !dbg !387, !tbaa !201
  br label %sw.epilog, !dbg !388

if.else:                                          ; preds = %sw.bb
  %arrayidx57 = getelementptr inbounds i32** %2, i64 %idxprom28, !dbg !389
  %34 = load i32** %arrayidx57, align 8, !dbg !389, !tbaa !197
  %arrayidx58 = getelementptr inbounds i32* %34, i64 %idxprom27, !dbg !389
  %35 = load i32* %arrayidx58, align 4, !dbg !389, !tbaa !201
  %36 = load i32*** %mmx35, align 8, !dbg !389, !tbaa !197
  %arrayidx64 = getelementptr inbounds i32** %36, i64 %idxprom24, !dbg !389
  %37 = load i32** %arrayidx64, align 8, !dbg !389, !tbaa !197
  %arrayidx65 = getelementptr inbounds i32* %37, i64 %idxprom22, !dbg !389
  %38 = load i32* %arrayidx65, align 4, !dbg !389, !tbaa !201
  %call66 = call i32 @ILogsum(i32 %35, i32 %38) #3, !dbg !389
  %cmp67 = icmp eq i32 %23, %call66, !dbg !389
  %or.cond721 = and i1 %cmp67, %cmp40, !dbg !389
  %or.cond722 = and i1 %or.cond721, %cmp43, !dbg !389
  br i1 %or.cond722, label %if.then75, label %if.else86, !dbg !389

if.then75:                                        ; preds = %if.else
  call void @llvm.dbg.value(metadata !{%struct.p7trace_s** %tr}, i64 0, metadata !164), !dbg !390
  %39 = load %struct.p7trace_s** %tr, align 8, !dbg !390, !tbaa !197
  %statetype77 = getelementptr inbounds %struct.p7trace_s* %39, i64 0, i32 1, !dbg !390
  %40 = load i8** %statetype77, align 8, !dbg !390, !tbaa !197
  %arrayidx78 = getelementptr inbounds i8* %40, i64 %indvars.iv748, !dbg !390
  store i8 3, i8* %arrayidx78, align 1, !dbg !390, !tbaa !198
  call void @llvm.dbg.value(metadata !{%struct.p7trace_s** %tr}, i64 0, metadata !164), !dbg !392
  %41 = load %struct.p7trace_s** %tr, align 8, !dbg !392, !tbaa !197
  %nodeidx80 = getelementptr inbounds %struct.p7trace_s* %41, i64 0, i32 2, !dbg !392
  %42 = load i32** %nodeidx80, align 8, !dbg !392, !tbaa !197
  %arrayidx81 = getelementptr inbounds i32* %42, i64 %indvars.iv748, !dbg !392
  store i32 %k.0, i32* %arrayidx81, align 4, !dbg !392, !tbaa !201
  %dec82 = add nsw i32 %i.0, -1, !dbg !393
  call void @llvm.dbg.value(metadata !{i32 %dec82}, i64 0, metadata !167), !dbg !393
  call void @llvm.dbg.value(metadata !{%struct.p7trace_s** %tr}, i64 0, metadata !164), !dbg !393
  %pos84 = getelementptr inbounds %struct.p7trace_s* %41, i64 0, i32 3, !dbg !393
  %43 = load i32** %pos84, align 8, !dbg !393, !tbaa !197
  %arrayidx85 = getelementptr inbounds i32* %43, i64 %indvars.iv748, !dbg !393
  store i32 %i.0, i32* %arrayidx85, align 4, !dbg !393, !tbaa !201
  br label %sw.epilog, !dbg !394

if.else86:                                        ; preds = %if.else
  %arrayidx89 = getelementptr inbounds i32** %3, i64 %idxprom28, !dbg !395
  %44 = load i32** %arrayidx89, align 8, !dbg !395, !tbaa !197
  %arrayidx90 = getelementptr inbounds i32* %44, i64 %idxprom27, !dbg !395
  %45 = load i32* %arrayidx90, align 4, !dbg !395, !tbaa !201
  %46 = load i32*** %mmx35, align 8, !dbg !395, !tbaa !197
  %arrayidx96 = getelementptr inbounds i32** %46, i64 %idxprom24, !dbg !395
  %47 = load i32** %arrayidx96, align 8, !dbg !395, !tbaa !197
  %arrayidx97 = getelementptr inbounds i32* %47, i64 %idxprom22, !dbg !395
  %48 = load i32* %arrayidx97, align 4, !dbg !395, !tbaa !201
  %call98 = call i32 @ILogsum(i32 %45, i32 %48) #3, !dbg !395
  %cmp99 = icmp eq i32 %23, %call98, !dbg !395
  %or.cond723 = and i1 %cmp99, %cmp40, !dbg !395
  %cmp105 = icmp sgt i32 %k.0, 1, !dbg !395
  %or.cond724 = and i1 %or.cond723, %cmp105, !dbg !395
  br i1 %or.cond724, label %if.then107, label %if.else118, !dbg !395

if.then107:                                       ; preds = %if.else86
  call void @llvm.dbg.value(metadata !{%struct.p7trace_s** %tr}, i64 0, metadata !164), !dbg !396
  %49 = load %struct.p7trace_s** %tr, align 8, !dbg !396, !tbaa !197
  %statetype109 = getelementptr inbounds %struct.p7trace_s* %49, i64 0, i32 1, !dbg !396
  %50 = load i8** %statetype109, align 8, !dbg !396, !tbaa !197
  %arrayidx110 = getelementptr inbounds i8* %50, i64 %indvars.iv748, !dbg !396
  store i8 2, i8* %arrayidx110, align 1, !dbg !396, !tbaa !198
  %dec111 = add nsw i32 %k.0, -1, !dbg !398
  call void @llvm.dbg.value(metadata !{i32 %dec111}, i64 0, metadata !168), !dbg !398
  call void @llvm.dbg.value(metadata !{%struct.p7trace_s** %tr}, i64 0, metadata !164), !dbg !398
  %51 = load %struct.p7trace_s** %tr, align 8, !dbg !398, !tbaa !197
  %nodeidx113 = getelementptr inbounds %struct.p7trace_s* %51, i64 0, i32 2, !dbg !398
  %52 = load i32** %nodeidx113, align 8, !dbg !398, !tbaa !197
  %arrayidx114 = getelementptr inbounds i32* %52, i64 %indvars.iv748, !dbg !398
  store i32 %k.0, i32* %arrayidx114, align 4, !dbg !398, !tbaa !201
  call void @llvm.dbg.value(metadata !{%struct.p7trace_s** %tr}, i64 0, metadata !164), !dbg !399
  %pos116 = getelementptr inbounds %struct.p7trace_s* %51, i64 0, i32 3, !dbg !399
  %53 = load i32** %pos116, align 8, !dbg !399, !tbaa !197
  %arrayidx117 = getelementptr inbounds i32* %53, i64 %indvars.iv748, !dbg !399
  store i32 0, i32* %arrayidx117, align 4, !dbg !399, !tbaa !201
  br label %sw.epilog, !dbg !400

if.else118:                                       ; preds = %if.else86
  %arrayidx120 = getelementptr inbounds i32** %0, i64 %idxprom28, !dbg !401
  %54 = load i32** %arrayidx120, align 8, !dbg !401, !tbaa !197
  %55 = load i32* %54, align 4, !dbg !401, !tbaa !201
  %56 = load i32*** %mmx35, align 8, !dbg !401, !tbaa !197
  %arrayidx127 = getelementptr inbounds i32** %56, i64 %idxprom24, !dbg !401
  %57 = load i32** %arrayidx127, align 8, !dbg !401, !tbaa !197
  %arrayidx128 = getelementptr inbounds i32* %57, i64 %idxprom22, !dbg !401
  %58 = load i32* %arrayidx128, align 4, !dbg !401, !tbaa !201
  %call129 = call i32 @ILogsum(i32 %55, i32 %58) #3, !dbg !401
  %cmp130 = icmp eq i32 %23, %call129, !dbg !401
  br i1 %cmp130, label %if.then132, label %if.else142, !dbg !401

if.then132:                                       ; preds = %if.else118
  call void @llvm.dbg.value(metadata !{%struct.p7trace_s** %tr}, i64 0, metadata !164), !dbg !402
  %59 = load %struct.p7trace_s** %tr, align 8, !dbg !402, !tbaa !197
  %statetype134 = getelementptr inbounds %struct.p7trace_s* %59, i64 0, i32 1, !dbg !402
  %60 = load i8** %statetype134, align 8, !dbg !402, !tbaa !197
  %arrayidx135 = getelementptr inbounds i8* %60, i64 %indvars.iv748, !dbg !402
  store i8 6, i8* %arrayidx135, align 1, !dbg !402, !tbaa !198
  call void @llvm.dbg.value(metadata !{%struct.p7trace_s** %tr}, i64 0, metadata !164), !dbg !404
  %61 = load %struct.p7trace_s** %tr, align 8, !dbg !404, !tbaa !197
  %nodeidx137 = getelementptr inbounds %struct.p7trace_s* %61, i64 0, i32 2, !dbg !404
  %62 = load i32** %nodeidx137, align 8, !dbg !404, !tbaa !197
  %arrayidx138 = getelementptr inbounds i32* %62, i64 %indvars.iv748, !dbg !404
  store i32 0, i32* %arrayidx138, align 4, !dbg !404, !tbaa !201
  call void @llvm.dbg.value(metadata !{%struct.p7trace_s** %tr}, i64 0, metadata !164), !dbg !405
  %pos140 = getelementptr inbounds %struct.p7trace_s* %61, i64 0, i32 3, !dbg !405
  %63 = load i32** %pos140, align 8, !dbg !405, !tbaa !197
  %arrayidx141 = getelementptr inbounds i32* %63, i64 %indvars.iv748, !dbg !405
  store i32 0, i32* %arrayidx141, align 4, !dbg !405, !tbaa !201
  br label %sw.epilog, !dbg !406

if.else142:                                       ; preds = %if.else118
  call void (i8*, ...)* @Die(i8* getelementptr inbounds ([17 x i8]* @.str, i64 0, i64 0)) #3, !dbg !407
  br label %sw.epilog

sw.bb146:                                         ; preds = %while.body
  %add147 = add nsw i32 %k.0, 1, !dbg !408
  %idxprom148 = sext i32 %add147 to i64, !dbg !408
  %idxprom149 = sext i32 %i.0 to i64, !dbg !408
  %arrayidx150 = getelementptr inbounds i32** %3, i64 %idxprom149, !dbg !408
  %64 = load i32** %arrayidx150, align 8, !dbg !408, !tbaa !197
  %arrayidx151 = getelementptr inbounds i32* %64, i64 %idxprom148, !dbg !408
  %65 = load i32* %arrayidx151, align 4, !dbg !408, !tbaa !201
  %idxprom152 = sext i32 %k.0 to i64, !dbg !408
  %arrayidx154 = getelementptr inbounds i32** %1, i64 %idxprom149, !dbg !408
  %66 = load i32** %arrayidx154, align 8, !dbg !408, !tbaa !197
  %arrayidx155 = getelementptr inbounds i32* %66, i64 %idxprom152, !dbg !408
  %67 = load i32* %arrayidx155, align 4, !dbg !408, !tbaa !201
  %cmp156 = icmp eq i32 %65, %67, !dbg !408
  %cmp159 = icmp sgt i32 %i.0, 0, !dbg !408
  %or.cond725 = and i1 %cmp156, %cmp159, !dbg !408
  %cmp162 = icmp sgt i32 %k.0, 0, !dbg !408
  %or.cond726 = and i1 %or.cond725, %cmp162, !dbg !408
  br i1 %or.cond726, label %if.then164, label %if.else176, !dbg !408

if.then164:                                       ; preds = %sw.bb146
  %arrayidx167 = getelementptr inbounds i8* %17, i64 %indvars.iv748, !dbg !409
  store i8 1, i8* %arrayidx167, align 1, !dbg !409, !tbaa !198
  %dec168 = add nsw i32 %k.0, -1, !dbg !411
  call void @llvm.dbg.value(metadata !{i32 %dec168}, i64 0, metadata !168), !dbg !411
  call void @llvm.dbg.value(metadata !{%struct.p7trace_s** %tr}, i64 0, metadata !164), !dbg !411
  %68 = load %struct.p7trace_s** %tr, align 8, !dbg !411, !tbaa !197
  %nodeidx170 = getelementptr inbounds %struct.p7trace_s* %68, i64 0, i32 2, !dbg !411
  %69 = load i32** %nodeidx170, align 8, !dbg !411, !tbaa !197
  %arrayidx171 = getelementptr inbounds i32* %69, i64 %indvars.iv748, !dbg !411
  store i32 %k.0, i32* %arrayidx171, align 4, !dbg !411, !tbaa !201
  %dec172 = add nsw i32 %i.0, -1, !dbg !412
  call void @llvm.dbg.value(metadata !{i32 %dec172}, i64 0, metadata !167), !dbg !412
  call void @llvm.dbg.value(metadata !{%struct.p7trace_s** %tr}, i64 0, metadata !164), !dbg !412
  %pos174 = getelementptr inbounds %struct.p7trace_s* %68, i64 0, i32 3, !dbg !412
  %70 = load i32** %pos174, align 8, !dbg !412, !tbaa !197
  %arrayidx175 = getelementptr inbounds i32* %70, i64 %indvars.iv748, !dbg !412
  store i32 %i.0, i32* %arrayidx175, align 4, !dbg !412, !tbaa !201
  br label %sw.epilog, !dbg !413

if.else176:                                       ; preds = %sw.bb146
  %arrayidx185 = getelementptr inbounds i32* %64, i64 %idxprom152, !dbg !414
  %71 = load i32* %arrayidx185, align 4, !dbg !414, !tbaa !201
  %cmp186 = icmp eq i32 %65, %71, !dbg !414
  %cmp189 = icmp sgt i32 %k.0, 1, !dbg !414
  %or.cond727 = and i1 %cmp186, %cmp189, !dbg !414
  br i1 %or.cond727, label %if.then191, label %if.else202, !dbg !414

if.then191:                                       ; preds = %if.else176
  call void @llvm.dbg.value(metadata !{%struct.p7trace_s** %tr}, i64 0, metadata !164), !dbg !415
  %arrayidx194 = getelementptr inbounds i8* %17, i64 %indvars.iv748, !dbg !415
  store i8 2, i8* %arrayidx194, align 1, !dbg !415, !tbaa !198
  %dec195 = add nsw i32 %k.0, -1, !dbg !417
  call void @llvm.dbg.value(metadata !{i32 %dec195}, i64 0, metadata !168), !dbg !417
  call void @llvm.dbg.value(metadata !{%struct.p7trace_s** %tr}, i64 0, metadata !164), !dbg !417
  %72 = load %struct.p7trace_s** %tr, align 8, !dbg !417, !tbaa !197
  %nodeidx197 = getelementptr inbounds %struct.p7trace_s* %72, i64 0, i32 2, !dbg !417
  %73 = load i32** %nodeidx197, align 8, !dbg !417, !tbaa !197
  %arrayidx198 = getelementptr inbounds i32* %73, i64 %indvars.iv748, !dbg !417
  store i32 %k.0, i32* %arrayidx198, align 4, !dbg !417, !tbaa !201
  call void @llvm.dbg.value(metadata !{%struct.p7trace_s** %tr}, i64 0, metadata !164), !dbg !418
  %pos200 = getelementptr inbounds %struct.p7trace_s* %72, i64 0, i32 3, !dbg !418
  %74 = load i32** %pos200, align 8, !dbg !418, !tbaa !197
  %arrayidx201 = getelementptr inbounds i32* %74, i64 %indvars.iv748, !dbg !418
  store i32 0, i32* %arrayidx201, align 4, !dbg !418, !tbaa !201
  br label %sw.epilog, !dbg !419

if.else202:                                       ; preds = %if.else176
  call void (i8*, ...)* @Die(i8* getelementptr inbounds ([17 x i8]* @.str, i64 0, i64 0)) #3, !dbg !420
  br label %sw.epilog

sw.bb205:                                         ; preds = %while.body
  %idxprom206 = sext i32 %k.0 to i64, !dbg !421
  %add207 = add nsw i32 %i.0, 1, !dbg !421
  %idxprom208 = sext i32 %add207 to i64, !dbg !421
  %arrayidx209 = getelementptr inbounds i32** %2, i64 %idxprom208, !dbg !421
  %75 = load i32** %arrayidx209, align 8, !dbg !421, !tbaa !197
  %arrayidx210 = getelementptr inbounds i32* %75, i64 %idxprom206, !dbg !421
  %76 = load i32* %arrayidx210, align 4, !dbg !421, !tbaa !201
  call void @llvm.dbg.value(metadata !{i32 %76}, i64 0, metadata !173), !dbg !421
  %idxprom212 = sext i32 %i.0 to i64, !dbg !376
  %arrayidx213 = getelementptr inbounds i32** %1, i64 %idxprom212, !dbg !376
  %77 = load i32** %arrayidx213, align 8, !dbg !376, !tbaa !197
  %arrayidx214 = getelementptr inbounds i32* %77, i64 %idxprom206, !dbg !376
  %78 = load i32* %arrayidx214, align 4, !dbg !376, !tbaa !201
  %79 = load i32*** %imx218, align 8, !dbg !376, !tbaa !197
  %arrayidx219 = getelementptr inbounds i32** %79, i64 %idxprom208, !dbg !376
  %80 = load i32** %arrayidx219, align 8, !dbg !376, !tbaa !197
  %arrayidx220 = getelementptr inbounds i32* %80, i64 %idxprom206, !dbg !376
  %81 = load i32* %arrayidx220, align 4, !dbg !376, !tbaa !201
  %call221 = call i32 @ILogsum(i32 %78, i32 %81) #3, !dbg !376
  %cmp222 = icmp eq i32 %76, %call221, !dbg !376
  %cmp225 = icmp sgt i32 %i.0, 0, !dbg !376
  %or.cond728 = and i1 %cmp222, %cmp225, !dbg !376
  %cmp228 = icmp sgt i32 %k.0, 0, !dbg !376
  %or.cond729 = and i1 %or.cond728, %cmp228, !dbg !376
  br i1 %or.cond729, label %if.then230, label %if.else242, !dbg !376

if.then230:                                       ; preds = %sw.bb205
  call void @llvm.dbg.value(metadata !{%struct.p7trace_s** %tr}, i64 0, metadata !164), !dbg !422
  %82 = load %struct.p7trace_s** %tr, align 8, !dbg !422, !tbaa !197
  %statetype232 = getelementptr inbounds %struct.p7trace_s* %82, i64 0, i32 1, !dbg !422
  %83 = load i8** %statetype232, align 8, !dbg !422, !tbaa !197
  %arrayidx233 = getelementptr inbounds i8* %83, i64 %indvars.iv748, !dbg !422
  store i8 1, i8* %arrayidx233, align 1, !dbg !422, !tbaa !198
  %dec234 = add nsw i32 %k.0, -1, !dbg !424
  call void @llvm.dbg.value(metadata !{i32 %dec234}, i64 0, metadata !168), !dbg !424
  call void @llvm.dbg.value(metadata !{%struct.p7trace_s** %tr}, i64 0, metadata !164), !dbg !424
  %84 = load %struct.p7trace_s** %tr, align 8, !dbg !424, !tbaa !197
  %nodeidx236 = getelementptr inbounds %struct.p7trace_s* %84, i64 0, i32 2, !dbg !424
  %85 = load i32** %nodeidx236, align 8, !dbg !424, !tbaa !197
  %arrayidx237 = getelementptr inbounds i32* %85, i64 %indvars.iv748, !dbg !424
  store i32 %k.0, i32* %arrayidx237, align 4, !dbg !424, !tbaa !201
  %dec238 = add nsw i32 %i.0, -1, !dbg !425
  call void @llvm.dbg.value(metadata !{i32 %dec238}, i64 0, metadata !167), !dbg !425
  call void @llvm.dbg.value(metadata !{%struct.p7trace_s** %tr}, i64 0, metadata !164), !dbg !425
  %pos240 = getelementptr inbounds %struct.p7trace_s* %84, i64 0, i32 3, !dbg !425
  %86 = load i32** %pos240, align 8, !dbg !425, !tbaa !197
  %arrayidx241 = getelementptr inbounds i32* %86, i64 %indvars.iv748, !dbg !425
  store i32 %i.0, i32* %arrayidx241, align 4, !dbg !425, !tbaa !201
  br label %sw.epilog, !dbg !426

if.else242:                                       ; preds = %sw.bb205
  %arrayidx245 = getelementptr inbounds i32** %2, i64 %idxprom212, !dbg !427
  %87 = load i32** %arrayidx245, align 8, !dbg !427, !tbaa !197
  %arrayidx246 = getelementptr inbounds i32* %87, i64 %idxprom206, !dbg !427
  %88 = load i32* %arrayidx246, align 4, !dbg !427, !tbaa !201
  %89 = load i32*** %imx218, align 8, !dbg !427, !tbaa !197
  %arrayidx251 = getelementptr inbounds i32** %89, i64 %idxprom208, !dbg !427
  %90 = load i32** %arrayidx251, align 8, !dbg !427, !tbaa !197
  %arrayidx252 = getelementptr inbounds i32* %90, i64 %idxprom206, !dbg !427
  %91 = load i32* %arrayidx252, align 4, !dbg !427, !tbaa !201
  %call253 = call i32 @ILogsum(i32 %88, i32 %91) #3, !dbg !427
  %cmp254 = icmp eq i32 %76, %call253, !dbg !427
  %or.cond730 = and i1 %cmp254, %cmp225, !dbg !427
  %or.cond731 = and i1 %or.cond730, %cmp228, !dbg !427
  br i1 %or.cond731, label %if.then262, label %if.else273, !dbg !427

if.then262:                                       ; preds = %if.else242
  call void @llvm.dbg.value(metadata !{%struct.p7trace_s** %tr}, i64 0, metadata !164), !dbg !428
  %92 = load %struct.p7trace_s** %tr, align 8, !dbg !428, !tbaa !197
  %statetype264 = getelementptr inbounds %struct.p7trace_s* %92, i64 0, i32 1, !dbg !428
  %93 = load i8** %statetype264, align 8, !dbg !428, !tbaa !197
  %arrayidx265 = getelementptr inbounds i8* %93, i64 %indvars.iv748, !dbg !428
  store i8 3, i8* %arrayidx265, align 1, !dbg !428, !tbaa !198
  call void @llvm.dbg.value(metadata !{%struct.p7trace_s** %tr}, i64 0, metadata !164), !dbg !430
  %94 = load %struct.p7trace_s** %tr, align 8, !dbg !430, !tbaa !197
  %nodeidx267 = getelementptr inbounds %struct.p7trace_s* %94, i64 0, i32 2, !dbg !430
  %95 = load i32** %nodeidx267, align 8, !dbg !430, !tbaa !197
  %arrayidx268 = getelementptr inbounds i32* %95, i64 %indvars.iv748, !dbg !430
  store i32 %k.0, i32* %arrayidx268, align 4, !dbg !430, !tbaa !201
  %dec269 = add nsw i32 %i.0, -1, !dbg !431
  call void @llvm.dbg.value(metadata !{i32 %dec269}, i64 0, metadata !167), !dbg !431
  call void @llvm.dbg.value(metadata !{%struct.p7trace_s** %tr}, i64 0, metadata !164), !dbg !431
  %pos271 = getelementptr inbounds %struct.p7trace_s* %94, i64 0, i32 3, !dbg !431
  %96 = load i32** %pos271, align 8, !dbg !431, !tbaa !197
  %arrayidx272 = getelementptr inbounds i32* %96, i64 %indvars.iv748, !dbg !431
  store i32 %i.0, i32* %arrayidx272, align 4, !dbg !431, !tbaa !201
  br label %sw.epilog, !dbg !432

if.else273:                                       ; preds = %if.else242
  call void (i8*, ...)* @Die(i8* getelementptr inbounds ([17 x i8]* @.str, i64 0, i64 0)) #3, !dbg !433
  br label %sw.epilog

sw.bb276:                                         ; preds = %while.body
  %cmp277 = icmp eq i32 %i.0, 0, !dbg !434
  br i1 %cmp277, label %land.lhs.true279, label %if.else295, !dbg !434

land.lhs.true279:                                 ; preds = %sw.bb276
  %97 = load i32** %0, align 8, !dbg !434, !tbaa !197
  %arrayidx282 = getelementptr inbounds i32* %97, i64 4, !dbg !434
  %98 = load i32* %arrayidx282, align 4, !dbg !434, !tbaa !201
  %cmp283 = icmp eq i32 %98, -987654321, !dbg !434
  br i1 %cmp283, label %if.then285, label %if.else332, !dbg !434

if.then285:                                       ; preds = %land.lhs.true279
  %arrayidx288 = getelementptr inbounds i8* %17, i64 %indvars.iv748, !dbg !435
  store i8 4, i8* %arrayidx288, align 1, !dbg !435, !tbaa !198
  call void @llvm.dbg.value(metadata !{%struct.p7trace_s** %tr}, i64 0, metadata !164), !dbg !437
  %99 = load %struct.p7trace_s** %tr, align 8, !dbg !437, !tbaa !197
  %nodeidx290 = getelementptr inbounds %struct.p7trace_s* %99, i64 0, i32 2, !dbg !437
  %100 = load i32** %nodeidx290, align 8, !dbg !437, !tbaa !197
  %arrayidx291 = getelementptr inbounds i32* %100, i64 %indvars.iv748, !dbg !437
  store i32 0, i32* %arrayidx291, align 4, !dbg !437, !tbaa !201
  call void @llvm.dbg.value(metadata !{%struct.p7trace_s** %tr}, i64 0, metadata !164), !dbg !438
  %pos293 = getelementptr inbounds %struct.p7trace_s* %99, i64 0, i32 3, !dbg !438
  %101 = load i32** %pos293, align 8, !dbg !438, !tbaa !197
  %arrayidx294 = getelementptr inbounds i32* %101, i64 %indvars.iv748, !dbg !438
  store i32 0, i32* %arrayidx294, align 4, !dbg !438, !tbaa !201
  br label %sw.epilog, !dbg !439

if.else295:                                       ; preds = %sw.bb276
  %cmp296 = icmp sgt i32 %i.0, 0, !dbg !377
  br i1 %cmp296, label %land.lhs.true298, label %if.else332, !dbg !377

land.lhs.true298:                                 ; preds = %if.else295
  %add299 = add nsw i32 %i.0, 1, !dbg !377
  %idxprom300 = sext i32 %add299 to i64, !dbg !377
  %arrayidx301 = getelementptr inbounds i32** %0, i64 %idxprom300, !dbg !377
  %102 = load i32** %arrayidx301, align 8, !dbg !377, !tbaa !197
  %arrayidx302 = getelementptr inbounds i32* %102, i64 4, !dbg !377
  %103 = load i32* %arrayidx302, align 4, !dbg !377, !tbaa !201
  %idxprom303 = sext i32 %i.0 to i64, !dbg !377
  %arrayidx304 = getelementptr inbounds i32** %0, i64 %idxprom303, !dbg !377
  %104 = load i32** %arrayidx304, align 8, !dbg !377, !tbaa !197
  %arrayidx305 = getelementptr inbounds i32* %104, i64 4, !dbg !377
  %105 = load i32* %arrayidx305, align 4, !dbg !377, !tbaa !201
  %106 = load i32*** %xmx308, align 8, !dbg !377, !tbaa !197
  %arrayidx309 = getelementptr inbounds i32** %106, i64 %idxprom300, !dbg !377
  %107 = load i32** %arrayidx309, align 8, !dbg !377, !tbaa !197
  %arrayidx310 = getelementptr inbounds i32* %107, i64 4, !dbg !377
  %108 = load i32* %arrayidx310, align 4, !dbg !377, !tbaa !201
  %call311 = call i32 @ILogsum(i32 %105, i32 %108) #3, !dbg !377
  %cmp312.not = icmp eq i32 %103, %call311, !dbg !377
  br i1 %cmp312.not, label %if.then317, label %if.else332, !dbg !377

if.then317:                                       ; preds = %land.lhs.true298
  call void @llvm.dbg.value(metadata !{%struct.p7trace_s** %tr}, i64 0, metadata !164), !dbg !440
  %109 = load %struct.p7trace_s** %tr, align 8, !dbg !440, !tbaa !197
  %statetype319 = getelementptr inbounds %struct.p7trace_s* %109, i64 0, i32 1, !dbg !440
  %110 = load i8** %statetype319, align 8, !dbg !440, !tbaa !197
  %arrayidx320 = getelementptr inbounds i8* %110, i64 %indvars.iv748, !dbg !440
  store i8 5, i8* %arrayidx320, align 1, !dbg !440, !tbaa !198
  call void @llvm.dbg.value(metadata !{%struct.p7trace_s** %tr}, i64 0, metadata !164), !dbg !442
  %111 = load %struct.p7trace_s** %tr, align 8, !dbg !442, !tbaa !197
  %nodeidx322 = getelementptr inbounds %struct.p7trace_s* %111, i64 0, i32 2, !dbg !442
  %112 = load i32** %nodeidx322, align 8, !dbg !442, !tbaa !197
  %arrayidx323 = getelementptr inbounds i32* %112, i64 %indvars.iv748, !dbg !442
  store i32 0, i32* %arrayidx323, align 4, !dbg !442, !tbaa !201
  call void @llvm.dbg.value(metadata !{%struct.p7trace_s** %tr}, i64 0, metadata !164), !dbg !443
  %pos325 = getelementptr inbounds %struct.p7trace_s* %111, i64 0, i32 3, !dbg !443
  %113 = load i32** %pos325, align 8, !dbg !443, !tbaa !197
  %arrayidx326 = getelementptr inbounds i32* %113, i64 %indvars.iv748, !dbg !443
  store i32 0, i32* %arrayidx326, align 4, !dbg !443, !tbaa !201
  %dec327 = add nsw i32 %i.0, -1, !dbg !444
  call void @llvm.dbg.value(metadata !{i32 %dec327}, i64 0, metadata !167), !dbg !444
  call void @llvm.dbg.value(metadata !{%struct.p7trace_s** %tr}, i64 0, metadata !164), !dbg !444
  %arrayidx331 = getelementptr inbounds i32* %113, i64 %15, !dbg !444
  store i32 %i.0, i32* %arrayidx331, align 4, !dbg !444, !tbaa !201
  br label %sw.epilog, !dbg !445

if.else332:                                       ; preds = %land.lhs.true298, %land.lhs.true279, %if.else295
  call void (i8*, ...)* @Die(i8* getelementptr inbounds ([17 x i8]* @.str, i64 0, i64 0)) #3, !dbg !446
  br label %sw.epilog

sw.bb335:                                         ; preds = %while.body
  %idxprom336 = sext i32 %i.0 to i64, !dbg !447
  %arrayidx337 = getelementptr inbounds i32** %0, i64 %idxprom336, !dbg !447
  %114 = load i32** %arrayidx337, align 8, !dbg !447, !tbaa !197
  %115 = load i32* %114, align 4, !dbg !447, !tbaa !201
  %arrayidx341 = getelementptr inbounds i32* %114, i64 4, !dbg !447
  %116 = load i32* %arrayidx341, align 4, !dbg !447, !tbaa !201
  %cmp342 = icmp eq i32 %115, %116, !dbg !447
  br i1 %cmp342, label %if.then344, label %if.else354, !dbg !447

if.then344:                                       ; preds = %sw.bb335
  %arrayidx347 = getelementptr inbounds i8* %17, i64 %indvars.iv748, !dbg !448
  store i8 5, i8* %arrayidx347, align 1, !dbg !448, !tbaa !198
  call void @llvm.dbg.value(metadata !{%struct.p7trace_s** %tr}, i64 0, metadata !164), !dbg !450
  %117 = load %struct.p7trace_s** %tr, align 8, !dbg !450, !tbaa !197
  %nodeidx349 = getelementptr inbounds %struct.p7trace_s* %117, i64 0, i32 2, !dbg !450
  %118 = load i32** %nodeidx349, align 8, !dbg !450, !tbaa !197
  %arrayidx350 = getelementptr inbounds i32* %118, i64 %indvars.iv748, !dbg !450
  store i32 0, i32* %arrayidx350, align 4, !dbg !450, !tbaa !201
  call void @llvm.dbg.value(metadata !{%struct.p7trace_s** %tr}, i64 0, metadata !164), !dbg !451
  %pos352 = getelementptr inbounds %struct.p7trace_s* %117, i64 0, i32 3, !dbg !451
  %119 = load i32** %pos352, align 8, !dbg !451, !tbaa !197
  %arrayidx353 = getelementptr inbounds i32* %119, i64 %indvars.iv748, !dbg !451
  store i32 0, i32* %arrayidx353, align 4, !dbg !451, !tbaa !201
  br label %sw.epilog, !dbg !452

if.else354:                                       ; preds = %sw.bb335
  %arrayidx360 = getelementptr inbounds i32* %114, i64 3, !dbg !453
  %120 = load i32* %arrayidx360, align 4, !dbg !453, !tbaa !201
  %cmp361 = icmp eq i32 %115, %120, !dbg !453
  br i1 %cmp361, label %if.then363, label %if.else373, !dbg !453

if.then363:                                       ; preds = %if.else354
  %arrayidx366 = getelementptr inbounds i8* %17, i64 %indvars.iv748, !dbg !454
  store i8 10, i8* %arrayidx366, align 1, !dbg !454, !tbaa !198
  call void @llvm.dbg.value(metadata !{%struct.p7trace_s** %tr}, i64 0, metadata !164), !dbg !456
  %121 = load %struct.p7trace_s** %tr, align 8, !dbg !456, !tbaa !197
  %nodeidx368 = getelementptr inbounds %struct.p7trace_s* %121, i64 0, i32 2, !dbg !456
  %122 = load i32** %nodeidx368, align 8, !dbg !456, !tbaa !197
  %arrayidx369 = getelementptr inbounds i32* %122, i64 %indvars.iv748, !dbg !456
  store i32 0, i32* %arrayidx369, align 4, !dbg !456, !tbaa !201
  call void @llvm.dbg.value(metadata !{%struct.p7trace_s** %tr}, i64 0, metadata !164), !dbg !457
  %pos371 = getelementptr inbounds %struct.p7trace_s* %121, i64 0, i32 3, !dbg !457
  %123 = load i32** %pos371, align 8, !dbg !457, !tbaa !197
  %arrayidx372 = getelementptr inbounds i32* %123, i64 %indvars.iv748, !dbg !457
  store i32 0, i32* %arrayidx372, align 4, !dbg !457, !tbaa !201
  br label %sw.epilog, !dbg !458

if.else373:                                       ; preds = %if.else354
  call void (i8*, ...)* @Die(i8* getelementptr inbounds ([17 x i8]* @.str, i64 0, i64 0)) #3, !dbg !459
  br label %sw.epilog

for.cond:                                         ; preds = %for.body
  %124 = trunc i64 %indvars.iv.next to i32, !dbg !378
  %cmp377 = icmp sgt i32 %124, 0, !dbg !378
  br i1 %cmp377, label %for.body, label %if.then407, !dbg !378

for.body:                                         ; preds = %for.body.lr.ph, %for.cond
  %indvars.iv = phi i64 [ %13, %for.body.lr.ph ], [ %indvars.iv.next, %for.cond ]
  %k.1741 = phi i32 [ %M, %for.body.lr.ph ], [ %dec404, %for.cond ]
  %arrayidx385 = getelementptr inbounds i32* %21, i64 %indvars.iv, !dbg !382
  %125 = load i32* %arrayidx385, align 4, !dbg !382, !tbaa !201
  %cmp386 = icmp eq i32 %20, %125, !dbg !382
  %or.cond732 = and i1 %cmp386, %cmp389, !dbg !382
  %indvars.iv.next = add i64 %indvars.iv, -1, !dbg !378
  %dec404 = add nsw i32 %k.1741, -1, !dbg !378
  call void @llvm.dbg.value(metadata !{i32 %dec404}, i64 0, metadata !168), !dbg !378
  br i1 %or.cond732, label %for.end, label %for.cond, !dbg !382

for.end:                                          ; preds = %for.body
  call void @llvm.dbg.value(metadata !{%struct.p7trace_s** %tr}, i64 0, metadata !164), !dbg !460
  %arrayidx394 = getelementptr inbounds i8* %17, i64 %indvars.iv748, !dbg !460
  store i8 1, i8* %arrayidx394, align 1, !dbg !460, !tbaa !198
  call void @llvm.dbg.value(metadata !{i32 %dec404}, i64 0, metadata !168), !dbg !462
  call void @llvm.dbg.value(metadata !{%struct.p7trace_s** %tr}, i64 0, metadata !164), !dbg !462
  %126 = load %struct.p7trace_s** %tr, align 8, !dbg !462, !tbaa !197
  %nodeidx397 = getelementptr inbounds %struct.p7trace_s* %126, i64 0, i32 2, !dbg !462
  %127 = load i32** %nodeidx397, align 8, !dbg !462, !tbaa !197
  %arrayidx398 = getelementptr inbounds i32* %127, i64 %indvars.iv748, !dbg !462
  store i32 %k.1741, i32* %arrayidx398, align 4, !dbg !462, !tbaa !201
  %dec399 = add nsw i32 %i.0, -1, !dbg !463
  call void @llvm.dbg.value(metadata !{i32 %dec399}, i64 0, metadata !167), !dbg !463
  call void @llvm.dbg.value(metadata !{%struct.p7trace_s** %tr}, i64 0, metadata !164), !dbg !463
  %pos401 = getelementptr inbounds %struct.p7trace_s* %126, i64 0, i32 3, !dbg !463
  %128 = load i32** %pos401, align 8, !dbg !463, !tbaa !197
  %arrayidx402 = getelementptr inbounds i32* %128, i64 %indvars.iv748, !dbg !463
  store i32 %i.0, i32* %arrayidx402, align 4, !dbg !463, !tbaa !201
  %cmp405 = icmp slt i32 %k.1741, 2, !dbg !464
  br i1 %cmp405, label %if.then407, label %sw.epilog, !dbg !464

if.then407:                                       ; preds = %for.cond.preheader, %for.cond, %for.end
  %i.1738 = phi i32 [ %dec399, %for.end ], [ %i.0, %for.cond ], [ %i.0, %for.cond.preheader ]
  %k.2737 = phi i32 [ %dec404, %for.end ], [ %dec404, %for.cond ], [ %M, %for.cond.preheader ]
  call void (i8*, ...)* @Die(i8* getelementptr inbounds ([17 x i8]* @.str, i64 0, i64 0)) #3, !dbg !464
  br label %sw.epilog, !dbg !464

sw.bb409:                                         ; preds = %while.body
  %idxprom410 = sext i32 %i.0 to i64, !dbg !465
  %arrayidx411 = getelementptr inbounds i32** %0, i64 %idxprom410, !dbg !465
  %129 = load i32** %arrayidx411, align 8, !dbg !465, !tbaa !197
  %arrayidx412 = getelementptr inbounds i32* %129, i64 2, !dbg !465
  %130 = load i32* %arrayidx412, align 4, !dbg !465, !tbaa !201
  %sub413 = add nsw i32 %i.0, -1, !dbg !465
  %idxprom414 = sext i32 %sub413 to i64, !dbg !465
  %arrayidx415 = getelementptr inbounds i32** %0, i64 %idxprom414, !dbg !465
  %131 = load i32** %arrayidx415, align 8, !dbg !465, !tbaa !197
  %arrayidx416 = getelementptr inbounds i32* %131, i64 2, !dbg !465
  %132 = load i32* %arrayidx416, align 4, !dbg !465, !tbaa !201
  %133 = load i32*** %xmx308, align 8, !dbg !465, !tbaa !197
  %arrayidx419 = getelementptr inbounds i32** %133, i64 %idxprom410, !dbg !465
  %134 = load i32** %arrayidx419, align 8, !dbg !465, !tbaa !197
  %arrayidx420 = getelementptr inbounds i32* %134, i64 2, !dbg !465
  %135 = load i32* %arrayidx420, align 4, !dbg !465, !tbaa !201
  %call421 = call i32 @ILogsum(i32 %132, i32 %135) #3, !dbg !465
  %cmp422 = icmp eq i32 %130, %call421, !dbg !465
  %cmp425 = icmp sgt i32 %i.0, 0, !dbg !465
  %or.cond733 = and i1 %cmp422, %cmp425, !dbg !465
  br i1 %or.cond733, label %if.then427, label %if.else442, !dbg !465

if.then427:                                       ; preds = %sw.bb409
  call void @llvm.dbg.value(metadata !{%struct.p7trace_s** %tr}, i64 0, metadata !164), !dbg !466
  %136 = load %struct.p7trace_s** %tr, align 8, !dbg !466, !tbaa !197
  %statetype429 = getelementptr inbounds %struct.p7trace_s* %136, i64 0, i32 1, !dbg !466
  %137 = load i8** %statetype429, align 8, !dbg !466, !tbaa !197
  %arrayidx430 = getelementptr inbounds i8* %137, i64 %indvars.iv748, !dbg !466
  store i8 8, i8* %arrayidx430, align 1, !dbg !466, !tbaa !198
  call void @llvm.dbg.value(metadata !{%struct.p7trace_s** %tr}, i64 0, metadata !164), !dbg !468
  %138 = load %struct.p7trace_s** %tr, align 8, !dbg !468, !tbaa !197
  %nodeidx432 = getelementptr inbounds %struct.p7trace_s* %138, i64 0, i32 2, !dbg !468
  %139 = load i32** %nodeidx432, align 8, !dbg !468, !tbaa !197
  %arrayidx433 = getelementptr inbounds i32* %139, i64 %indvars.iv748, !dbg !468
  store i32 0, i32* %arrayidx433, align 4, !dbg !468, !tbaa !201
  call void @llvm.dbg.value(metadata !{%struct.p7trace_s** %tr}, i64 0, metadata !164), !dbg !469
  %pos435 = getelementptr inbounds %struct.p7trace_s* %138, i64 0, i32 3, !dbg !469
  %140 = load i32** %pos435, align 8, !dbg !469, !tbaa !197
  %arrayidx436 = getelementptr inbounds i32* %140, i64 %indvars.iv748, !dbg !469
  store i32 0, i32* %arrayidx436, align 4, !dbg !469, !tbaa !201
  call void @llvm.dbg.value(metadata !{i32 %sub413}, i64 0, metadata !167), !dbg !470
  call void @llvm.dbg.value(metadata !{%struct.p7trace_s** %tr}, i64 0, metadata !164), !dbg !470
  %arrayidx441 = getelementptr inbounds i32* %140, i64 %15, !dbg !470
  store i32 %i.0, i32* %arrayidx441, align 4, !dbg !470, !tbaa !201
  br label %sw.epilog, !dbg !471

if.else442:                                       ; preds = %sw.bb409
  %141 = load i32** %arrayidx411, align 8, !dbg !472, !tbaa !197
  %arrayidx445 = getelementptr inbounds i32* %141, i64 2, !dbg !472
  %142 = load i32* %arrayidx445, align 4, !dbg !472, !tbaa !201
  %arrayidx448 = getelementptr inbounds i32* %141, i64 1, !dbg !472
  %143 = load i32* %arrayidx448, align 4, !dbg !472, !tbaa !201
  %cmp449 = icmp eq i32 %142, %143, !dbg !472
  br i1 %cmp449, label %if.then451, label %if.else461, !dbg !472

if.then451:                                       ; preds = %if.else442
  call void @llvm.dbg.value(metadata !{%struct.p7trace_s** %tr}, i64 0, metadata !164), !dbg !473
  %144 = load %struct.p7trace_s** %tr, align 8, !dbg !473, !tbaa !197
  %statetype453 = getelementptr inbounds %struct.p7trace_s* %144, i64 0, i32 1, !dbg !473
  %145 = load i8** %statetype453, align 8, !dbg !473, !tbaa !197
  %arrayidx454 = getelementptr inbounds i8* %145, i64 %indvars.iv748, !dbg !473
  store i8 7, i8* %arrayidx454, align 1, !dbg !473, !tbaa !198
  call void @llvm.dbg.value(metadata !{%struct.p7trace_s** %tr}, i64 0, metadata !164), !dbg !475
  %146 = load %struct.p7trace_s** %tr, align 8, !dbg !475, !tbaa !197
  %nodeidx456 = getelementptr inbounds %struct.p7trace_s* %146, i64 0, i32 2, !dbg !475
  %147 = load i32** %nodeidx456, align 8, !dbg !475, !tbaa !197
  %arrayidx457 = getelementptr inbounds i32* %147, i64 %indvars.iv748, !dbg !475
  store i32 0, i32* %arrayidx457, align 4, !dbg !475, !tbaa !201
  call void @llvm.dbg.value(metadata !{%struct.p7trace_s** %tr}, i64 0, metadata !164), !dbg !476
  %pos459 = getelementptr inbounds %struct.p7trace_s* %146, i64 0, i32 3, !dbg !476
  %148 = load i32** %pos459, align 8, !dbg !476, !tbaa !197
  %arrayidx460 = getelementptr inbounds i32* %148, i64 %indvars.iv748, !dbg !476
  store i32 0, i32* %arrayidx460, align 4, !dbg !476, !tbaa !201
  br label %sw.epilog, !dbg !477

if.else461:                                       ; preds = %if.else442
  call void (i8*, ...)* @Die(i8* getelementptr inbounds ([18 x i8]* @.str1, i64 0, i64 0)) #3, !dbg !478
  br label %sw.epilog

sw.bb464:                                         ; preds = %while.body
  %idxprom465 = sext i32 %i.0 to i64, !dbg !479
  %arrayidx466 = getelementptr inbounds i32** %0, i64 %idxprom465, !dbg !479
  %149 = load i32** %arrayidx466, align 8, !dbg !479, !tbaa !197
  %arrayidx467 = getelementptr inbounds i32* %149, i64 3, !dbg !479
  %150 = load i32* %arrayidx467, align 4, !dbg !479, !tbaa !201
  %sub468 = add nsw i32 %i.0, -1, !dbg !479
  %idxprom469 = sext i32 %sub468 to i64, !dbg !479
  %arrayidx470 = getelementptr inbounds i32** %0, i64 %idxprom469, !dbg !479
  %151 = load i32** %arrayidx470, align 8, !dbg !479, !tbaa !197
  %arrayidx471 = getelementptr inbounds i32* %151, i64 3, !dbg !479
  %152 = load i32* %arrayidx471, align 4, !dbg !479, !tbaa !201
  %153 = load i32*** %xmx308, align 8, !dbg !479, !tbaa !197
  %arrayidx474 = getelementptr inbounds i32** %153, i64 %idxprom465, !dbg !479
  %154 = load i32** %arrayidx474, align 8, !dbg !479, !tbaa !197
  %arrayidx475 = getelementptr inbounds i32* %154, i64 3, !dbg !479
  %155 = load i32* %arrayidx475, align 4, !dbg !479, !tbaa !201
  %call476 = call i32 @ILogsum(i32 %152, i32 %155) #3, !dbg !479
  %cmp477 = icmp eq i32 %150, %call476, !dbg !479
  %cmp480 = icmp sgt i32 %i.0, 0, !dbg !479
  %or.cond734 = and i1 %cmp477, %cmp480, !dbg !479
  br i1 %or.cond734, label %if.then482, label %if.else497, !dbg !479

if.then482:                                       ; preds = %sw.bb464
  call void @llvm.dbg.value(metadata !{%struct.p7trace_s** %tr}, i64 0, metadata !164), !dbg !480
  %156 = load %struct.p7trace_s** %tr, align 8, !dbg !480, !tbaa !197
  %statetype484 = getelementptr inbounds %struct.p7trace_s* %156, i64 0, i32 1, !dbg !480
  %157 = load i8** %statetype484, align 8, !dbg !480, !tbaa !197
  %arrayidx485 = getelementptr inbounds i8* %157, i64 %indvars.iv748, !dbg !480
  store i8 10, i8* %arrayidx485, align 1, !dbg !480, !tbaa !198
  call void @llvm.dbg.value(metadata !{%struct.p7trace_s** %tr}, i64 0, metadata !164), !dbg !482
  %158 = load %struct.p7trace_s** %tr, align 8, !dbg !482, !tbaa !197
  %nodeidx487 = getelementptr inbounds %struct.p7trace_s* %158, i64 0, i32 2, !dbg !482
  %159 = load i32** %nodeidx487, align 8, !dbg !482, !tbaa !197
  %arrayidx488 = getelementptr inbounds i32* %159, i64 %indvars.iv748, !dbg !482
  store i32 0, i32* %arrayidx488, align 4, !dbg !482, !tbaa !201
  call void @llvm.dbg.value(metadata !{%struct.p7trace_s** %tr}, i64 0, metadata !164), !dbg !483
  %pos490 = getelementptr inbounds %struct.p7trace_s* %158, i64 0, i32 3, !dbg !483
  %160 = load i32** %pos490, align 8, !dbg !483, !tbaa !197
  %arrayidx491 = getelementptr inbounds i32* %160, i64 %indvars.iv748, !dbg !483
  store i32 0, i32* %arrayidx491, align 4, !dbg !483, !tbaa !201
  call void @llvm.dbg.value(metadata !{i32 %sub468}, i64 0, metadata !167), !dbg !484
  call void @llvm.dbg.value(metadata !{%struct.p7trace_s** %tr}, i64 0, metadata !164), !dbg !484
  %arrayidx496 = getelementptr inbounds i32* %160, i64 %15, !dbg !484
  store i32 %i.0, i32* %arrayidx496, align 4, !dbg !484, !tbaa !201
  br label %sw.epilog, !dbg !485

if.else497:                                       ; preds = %sw.bb464
  %161 = load i32** %arrayidx466, align 8, !dbg !486, !tbaa !197
  %arrayidx500 = getelementptr inbounds i32* %161, i64 3, !dbg !486
  %162 = load i32* %arrayidx500, align 4, !dbg !486, !tbaa !201
  %arrayidx503 = getelementptr inbounds i32* %161, i64 1, !dbg !486
  %163 = load i32* %arrayidx503, align 4, !dbg !486, !tbaa !201
  %cmp504 = icmp eq i32 %162, %163, !dbg !486
  br i1 %cmp504, label %if.then506, label %if.else516, !dbg !486

if.then506:                                       ; preds = %if.else497
  call void @llvm.dbg.value(metadata !{%struct.p7trace_s** %tr}, i64 0, metadata !164), !dbg !487
  %164 = load %struct.p7trace_s** %tr, align 8, !dbg !487, !tbaa !197
  %statetype508 = getelementptr inbounds %struct.p7trace_s* %164, i64 0, i32 1, !dbg !487
  %165 = load i8** %statetype508, align 8, !dbg !487, !tbaa !197
  %arrayidx509 = getelementptr inbounds i8* %165, i64 %indvars.iv748, !dbg !487
  store i8 7, i8* %arrayidx509, align 1, !dbg !487, !tbaa !198
  call void @llvm.dbg.value(metadata !{%struct.p7trace_s** %tr}, i64 0, metadata !164), !dbg !489
  %166 = load %struct.p7trace_s** %tr, align 8, !dbg !489, !tbaa !197
  %nodeidx511 = getelementptr inbounds %struct.p7trace_s* %166, i64 0, i32 2, !dbg !489
  %167 = load i32** %nodeidx511, align 8, !dbg !489, !tbaa !197
  %arrayidx512 = getelementptr inbounds i32* %167, i64 %indvars.iv748, !dbg !489
  store i32 0, i32* %arrayidx512, align 4, !dbg !489, !tbaa !201
  call void @llvm.dbg.value(metadata !{%struct.p7trace_s** %tr}, i64 0, metadata !164), !dbg !490
  %pos514 = getelementptr inbounds %struct.p7trace_s* %166, i64 0, i32 3, !dbg !490
  %168 = load i32** %pos514, align 8, !dbg !490, !tbaa !197
  %arrayidx515 = getelementptr inbounds i32* %168, i64 %indvars.iv748, !dbg !490
  store i32 0, i32* %arrayidx515, align 4, !dbg !490, !tbaa !201
  br label %sw.epilog, !dbg !491

if.else516:                                       ; preds = %if.else497
  call void (i8*, ...)* @Die(i8* getelementptr inbounds ([18 x i8]* @.str1, i64 0, i64 0)) #3, !dbg !492
  br label %sw.epilog

sw.default:                                       ; preds = %while.body
  call void (i8*, ...)* @Die(i8* getelementptr inbounds ([17 x i8]* @.str, i64 0, i64 0)) #3, !dbg !493
  br label %sw.epilog, !dbg !494

sw.epilog:                                        ; preds = %if.then482, %if.else516, %if.then506, %if.then427, %if.else461, %if.then451, %for.end, %if.then407, %if.then344, %if.else373, %if.then363, %if.then285, %if.else332, %if.then317, %if.then230, %if.else273, %if.then262, %if.then164, %if.else202, %if.then191, %if.then, %if.then107, %if.else142, %if.then132, %if.then75, %sw.default
  %k.3 = phi i32 [ %k.0, %sw.default ], [ %k.0, %if.then482 ], [ %k.0, %if.then506 ], [ %k.0, %if.else516 ], [ %k.0, %if.then427 ], [ %k.0, %if.then451 ], [ %k.0, %if.else461 ], [ %k.2737, %if.then407 ], [ %dec404, %for.end ], [ %k.0, %if.then344 ], [ %k.0, %if.then363 ], [ %k.0, %if.else373 ], [ %k.0, %if.then285 ], [ %k.0, %if.then317 ], [ %k.0, %if.else332 ], [ %dec234, %if.then230 ], [ %k.0, %if.then262 ], [ %k.0, %if.else273 ], [ %dec168, %if.then164 ], [ %dec195, %if.then191 ], [ %k.0, %if.else202 ], [ %dec, %if.then ], [ %k.0, %if.then75 ], [ %dec111, %if.then107 ], [ %k.0, %if.then132 ], [ %k.0, %if.else142 ]
  %i.2 = phi i32 [ %i.0, %sw.default ], [ %sub468, %if.then482 ], [ %i.0, %if.then506 ], [ %i.0, %if.else516 ], [ %sub413, %if.then427 ], [ %i.0, %if.then451 ], [ %i.0, %if.else461 ], [ %i.1738, %if.then407 ], [ %dec399, %for.end ], [ %i.0, %if.then344 ], [ %i.0, %if.then363 ], [ %i.0, %if.else373 ], [ 0, %if.then285 ], [ %dec327, %if.then317 ], [ %i.0, %if.else332 ], [ %dec238, %if.then230 ], [ %dec269, %if.then262 ], [ %i.0, %if.else273 ], [ %dec172, %if.then164 ], [ %i.0, %if.then191 ], [ %i.0, %if.else202 ], [ %dec51, %if.then ], [ %dec82, %if.then75 ], [ %i.0, %if.then107 ], [ %i.0, %if.then132 ], [ %i.0, %if.else142 ]
  %indvars.iv.next749 = add i64 %indvars.iv748, 1, !dbg !495
  %inc = add nsw i32 %tpos.0, 1, !dbg !496
  call void @llvm.dbg.value(metadata !{i32 %inc}, i64 0, metadata !166), !dbg !496
  %169 = trunc i64 %indvars.iv.next749 to i32, !dbg !495
  %cmp519 = icmp eq i32 %169, %curralloc.0.ph, !dbg !495
  br i1 %cmp519, label %if.then521, label %while.cond, !dbg !495

if.then521:                                       ; preds = %sw.epilog
  %add522 = add nsw i32 %curralloc.0.ph, %L, !dbg !497
  call void @llvm.dbg.value(metadata !{i32 %add522}, i64 0, metadata !165), !dbg !497
  call void @llvm.dbg.value(metadata !{%struct.p7trace_s** %tr}, i64 0, metadata !164), !dbg !499
  %170 = load %struct.p7trace_s** %tr, align 8, !dbg !499, !tbaa !197
  call void @P7ReallocTrace(%struct.p7trace_s* %170, i32 %add522) #3, !dbg !499
  br label %while.cond.outer, !dbg !500

while.end:                                        ; preds = %while.cond
  %tlen = getelementptr inbounds %struct.p7trace_s* %16, i64 0, i32 0, !dbg !501
  store i32 %tpos.0, i32* %tlen, align 4, !dbg !501, !tbaa !201
  call void @llvm.dbg.value(metadata !{%struct.p7trace_s** %tr}, i64 0, metadata !164), !dbg !502
  call void @P7ReverseTrace(%struct.p7trace_s* %16) #3, !dbg !502
  call void @llvm.dbg.value(metadata !{%struct.p7trace_s** %tr}, i64 0, metadata !164), !dbg !503
  %171 = load %struct.p7trace_s** %tr, align 8, !dbg !503, !tbaa !197
  store %struct.p7trace_s* %171, %struct.p7trace_s** %ret_tr, align 8, !dbg !503, !tbaa !197
  ret void, !dbg !504
}

; Function Attrs: optsize
declare float @Score2Prob(i32, float) #2

; Function Attrs: optsize
declare void @P7AllocTrace(i32, %struct.p7trace_s**) #2

; Function Attrs: optsize
declare void @Die(i8*, ...) #2

; Function Attrs: optsize
declare void @P7ReallocTrace(%struct.p7trace_s*, i32) #2

; Function Attrs: optsize
declare void @P7ReverseTrace(%struct.p7trace_s*) #2

; Function Attrs: nounwind optsize uwtable
define i8* @PostalCode(i32 %L, %struct.dpmatrix_s* nocapture %mx, %struct.p7trace_s* nocapture %tr) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %L}, i64 0, metadata !178), !dbg !505
  tail call void @llvm.dbg.value(metadata !{%struct.dpmatrix_s* %mx}, i64 0, metadata !179), !dbg !505
  tail call void @llvm.dbg.value(metadata !{%struct.p7trace_s* %tr}, i64 0, metadata !180), !dbg !505
  %add = add nsw i32 %L, 1, !dbg !506
  %conv = sext i32 %add to i64, !dbg !506
  %call = tail call i8* @sre_malloc(i8* getelementptr inbounds ([54 x i8]* @.str2, i64 0, i64 0), i32 692, i64 %conv) #3, !dbg !506
  tail call void @llvm.dbg.value(metadata !{i8* %call}, i64 0, metadata !184), !dbg !506
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !181), !dbg !507
  %tlen = getelementptr inbounds %struct.p7trace_s* %tr, i64 0, i32 0, !dbg !507
  %0 = load i32* %tlen, align 4, !dbg !507, !tbaa !201
  %cmp110 = icmp sgt i32 %0, 0, !dbg !507
  br i1 %cmp110, label %for.body.lr.ph, label %for.end, !dbg !507

for.body.lr.ph:                                   ; preds = %entry
  %pos = getelementptr inbounds %struct.p7trace_s* %tr, i64 0, i32 3, !dbg !509
  %nodeidx = getelementptr inbounds %struct.p7trace_s* %tr, i64 0, i32 2, !dbg !511
  %statetype = getelementptr inbounds %struct.p7trace_s* %tr, i64 0, i32 1, !dbg !512
  %mmx = getelementptr inbounds %struct.dpmatrix_s* %mx, i64 0, i32 1, !dbg !513
  %imx = getelementptr inbounds %struct.dpmatrix_s* %mx, i64 0, i32 2, !dbg !515
  %xmx = getelementptr inbounds %struct.dpmatrix_s* %mx, i64 0, i32 0, !dbg !516
  br label %for.body, !dbg !507

for.body:                                         ; preds = %for.inc, %for.body.lr.ph
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.inc ]
  %1 = load i32** %pos, align 8, !dbg !509, !tbaa !197
  %arrayidx = getelementptr inbounds i32* %1, i64 %indvars.iv, !dbg !509
  %2 = load i32* %arrayidx, align 4, !dbg !509, !tbaa !201
  tail call void @llvm.dbg.value(metadata !{i32 %2}, i64 0, metadata !182), !dbg !509
  %3 = load i32** %nodeidx, align 8, !dbg !511, !tbaa !197
  %arrayidx3 = getelementptr inbounds i32* %3, i64 %indvars.iv, !dbg !511
  %4 = load i32* %arrayidx3, align 4, !dbg !511, !tbaa !201
  tail call void @llvm.dbg.value(metadata !{i32 %4}, i64 0, metadata !183), !dbg !511
  %cmp4 = icmp eq i32 %2, 0, !dbg !517
  br i1 %cmp4, label %for.inc, label %if.end, !dbg !517

if.end:                                           ; preds = %for.body
  %5 = load i8** %statetype, align 8, !dbg !512, !tbaa !197
  %arrayidx7 = getelementptr inbounds i8* %5, i64 %indvars.iv, !dbg !512
  %6 = load i8* %arrayidx7, align 1, !dbg !512, !tbaa !198
  %conv8 = sext i8 %6 to i32, !dbg !512
  switch i32 %conv8, label %for.inc [
    i32 1, label %sw.bb
    i32 3, label %sw.bb16
    i32 5, label %sw.bb25
    i32 8, label %sw.bb33
    i32 10, label %sw.bb42
  ], !dbg !512

sw.bb:                                            ; preds = %if.end
  %idxprom9 = sext i32 %4 to i64, !dbg !513
  %idxprom10 = sext i32 %2 to i64, !dbg !513
  %7 = load i32*** %mmx, align 8, !dbg !513, !tbaa !197
  %arrayidx11 = getelementptr inbounds i32** %7, i64 %idxprom10, !dbg !513
  %8 = load i32** %arrayidx11, align 8, !dbg !513, !tbaa !197
  %arrayidx12 = getelementptr inbounds i32* %8, i64 %idxprom9, !dbg !513
  %9 = load i32* %arrayidx12, align 4, !dbg !513, !tbaa !201
  tail call void @llvm.dbg.value(metadata !{i32 %9}, i64 0, metadata !518) #5, !dbg !519
  %call.i = tail call float @Score2Prob(i32 %9, float 1.000000e+00) #3, !dbg !520
  %conv.i = fpext float %call.i to double, !dbg !520
  %mul.i = fmul double %conv.i, 1.000000e+01, !dbg !520
  %conv1.i = fptosi double %mul.i to i8, !dbg !520
  tail call void @llvm.dbg.value(metadata !{i8 %conv1.i}, i64 0, metadata !521) #5, !dbg !520
  %cmp.i = icmp sgt i8 %conv1.i, 9, !dbg !522
  %add.i = add i8 %conv1.i, 48, !dbg !522
  %.add.i = select i1 %cmp.i, i8 42, i8 %add.i, !dbg !522
  %sub = add nsw i32 %2, -1, !dbg !513
  %idxprom14 = sext i32 %sub to i64, !dbg !513
  %arrayidx15 = getelementptr inbounds i8* %call, i64 %idxprom14, !dbg !513
  store i8 %.add.i, i8* %arrayidx15, align 1, !dbg !513, !tbaa !198
  br label %for.inc, !dbg !513

sw.bb16:                                          ; preds = %if.end
  %idxprom17 = sext i32 %4 to i64, !dbg !515
  %idxprom18 = sext i32 %2 to i64, !dbg !515
  %10 = load i32*** %imx, align 8, !dbg !515, !tbaa !197
  %arrayidx19 = getelementptr inbounds i32** %10, i64 %idxprom18, !dbg !515
  %11 = load i32** %arrayidx19, align 8, !dbg !515, !tbaa !197
  %arrayidx20 = getelementptr inbounds i32* %11, i64 %idxprom17, !dbg !515
  %12 = load i32* %arrayidx20, align 4, !dbg !515, !tbaa !201
  tail call void @llvm.dbg.value(metadata !{i32 %12}, i64 0, metadata !523) #5, !dbg !524
  %call.i82 = tail call float @Score2Prob(i32 %12, float 1.000000e+00) #3, !dbg !525
  %conv.i83 = fpext float %call.i82 to double, !dbg !525
  %mul.i84 = fmul double %conv.i83, 1.000000e+01, !dbg !525
  %conv1.i85 = fptosi double %mul.i84 to i8, !dbg !525
  tail call void @llvm.dbg.value(metadata !{i8 %conv1.i85}, i64 0, metadata !526) #5, !dbg !525
  %cmp.i86 = icmp sgt i8 %conv1.i85, 9, !dbg !527
  %add.i87 = add i8 %conv1.i85, 48, !dbg !527
  %.add.i88 = select i1 %cmp.i86, i8 42, i8 %add.i87, !dbg !527
  %sub22 = add nsw i32 %2, -1, !dbg !515
  %idxprom23 = sext i32 %sub22 to i64, !dbg !515
  %arrayidx24 = getelementptr inbounds i8* %call, i64 %idxprom23, !dbg !515
  store i8 %.add.i88, i8* %arrayidx24, align 1, !dbg !515, !tbaa !198
  br label %for.inc, !dbg !515

sw.bb25:                                          ; preds = %if.end
  %idxprom26 = sext i32 %2 to i64, !dbg !516
  %13 = load i32*** %xmx, align 8, !dbg !516, !tbaa !197
  %arrayidx27 = getelementptr inbounds i32** %13, i64 %idxprom26, !dbg !516
  %14 = load i32** %arrayidx27, align 8, !dbg !516, !tbaa !197
  %arrayidx28 = getelementptr inbounds i32* %14, i64 4, !dbg !516
  %15 = load i32* %arrayidx28, align 4, !dbg !516, !tbaa !201
  tail call void @llvm.dbg.value(metadata !{i32 %15}, i64 0, metadata !528) #5, !dbg !529
  %call.i89 = tail call float @Score2Prob(i32 %15, float 1.000000e+00) #3, !dbg !530
  %conv.i90 = fpext float %call.i89 to double, !dbg !530
  %mul.i91 = fmul double %conv.i90, 1.000000e+01, !dbg !530
  %conv1.i92 = fptosi double %mul.i91 to i8, !dbg !530
  tail call void @llvm.dbg.value(metadata !{i8 %conv1.i92}, i64 0, metadata !531) #5, !dbg !530
  %cmp.i93 = icmp sgt i8 %conv1.i92, 9, !dbg !532
  %add.i94 = add i8 %conv1.i92, 48, !dbg !532
  %.add.i95 = select i1 %cmp.i93, i8 42, i8 %add.i94, !dbg !532
  %sub30 = add nsw i32 %2, -1, !dbg !516
  %idxprom31 = sext i32 %sub30 to i64, !dbg !516
  %arrayidx32 = getelementptr inbounds i8* %call, i64 %idxprom31, !dbg !516
  store i8 %.add.i95, i8* %arrayidx32, align 1, !dbg !516, !tbaa !198
  br label %for.inc, !dbg !516

sw.bb33:                                          ; preds = %if.end
  %idxprom34 = sext i32 %2 to i64, !dbg !533
  %16 = load i32*** %xmx, align 8, !dbg !533, !tbaa !197
  %arrayidx36 = getelementptr inbounds i32** %16, i64 %idxprom34, !dbg !533
  %17 = load i32** %arrayidx36, align 8, !dbg !533, !tbaa !197
  %arrayidx37 = getelementptr inbounds i32* %17, i64 2, !dbg !533
  %18 = load i32* %arrayidx37, align 4, !dbg !533, !tbaa !201
  tail call void @llvm.dbg.value(metadata !{i32 %18}, i64 0, metadata !534) #5, !dbg !535
  %call.i96 = tail call float @Score2Prob(i32 %18, float 1.000000e+00) #3, !dbg !536
  %conv.i97 = fpext float %call.i96 to double, !dbg !536
  %mul.i98 = fmul double %conv.i97, 1.000000e+01, !dbg !536
  %conv1.i99 = fptosi double %mul.i98 to i8, !dbg !536
  tail call void @llvm.dbg.value(metadata !{i8 %conv1.i99}, i64 0, metadata !537) #5, !dbg !536
  %cmp.i100 = icmp sgt i8 %conv1.i99, 9, !dbg !538
  %add.i101 = add i8 %conv1.i99, 48, !dbg !538
  %.add.i102 = select i1 %cmp.i100, i8 42, i8 %add.i101, !dbg !538
  %sub39 = add nsw i32 %2, -1, !dbg !533
  %idxprom40 = sext i32 %sub39 to i64, !dbg !533
  %arrayidx41 = getelementptr inbounds i8* %call, i64 %idxprom40, !dbg !533
  store i8 %.add.i102, i8* %arrayidx41, align 1, !dbg !533, !tbaa !198
  br label %for.inc, !dbg !533

sw.bb42:                                          ; preds = %if.end
  %idxprom43 = sext i32 %2 to i64, !dbg !539
  %19 = load i32*** %xmx, align 8, !dbg !539, !tbaa !197
  %arrayidx45 = getelementptr inbounds i32** %19, i64 %idxprom43, !dbg !539
  %20 = load i32** %arrayidx45, align 8, !dbg !539, !tbaa !197
  %arrayidx46 = getelementptr inbounds i32* %20, i64 3, !dbg !539
  %21 = load i32* %arrayidx46, align 4, !dbg !539, !tbaa !201
  tail call void @llvm.dbg.value(metadata !{i32 %21}, i64 0, metadata !540) #5, !dbg !541
  %call.i103 = tail call float @Score2Prob(i32 %21, float 1.000000e+00) #3, !dbg !542
  %conv.i104 = fpext float %call.i103 to double, !dbg !542
  %mul.i105 = fmul double %conv.i104, 1.000000e+01, !dbg !542
  %conv1.i106 = fptosi double %mul.i105 to i8, !dbg !542
  tail call void @llvm.dbg.value(metadata !{i8 %conv1.i106}, i64 0, metadata !543) #5, !dbg !542
  %cmp.i107 = icmp sgt i8 %conv1.i106, 9, !dbg !544
  %add.i108 = add i8 %conv1.i106, 48, !dbg !544
  %.add.i109 = select i1 %cmp.i107, i8 42, i8 %add.i108, !dbg !544
  %sub48 = add nsw i32 %2, -1, !dbg !539
  %idxprom49 = sext i32 %sub48 to i64, !dbg !539
  %arrayidx50 = getelementptr inbounds i8* %call, i64 %idxprom49, !dbg !539
  store i8 %.add.i109, i8* %arrayidx50, align 1, !dbg !539, !tbaa !198
  br label %for.inc, !dbg !539

for.inc:                                          ; preds = %sw.bb, %sw.bb16, %sw.bb25, %sw.bb33, %sw.bb42, %if.end, %for.body
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !507
  %22 = load i32* %tlen, align 4, !dbg !507, !tbaa !201
  %23 = trunc i64 %indvars.iv.next to i32, !dbg !507
  %cmp = icmp slt i32 %23, %22, !dbg !507
  br i1 %cmp, label %for.body, label %for.end, !dbg !507

for.end:                                          ; preds = %for.inc, %entry
  %idxprom51 = sext i32 %L to i64, !dbg !545
  %arrayidx52 = getelementptr inbounds i8* %call, i64 %idxprom51, !dbg !545
  store i8 0, i8* %arrayidx52, align 1, !dbg !545, !tbaa !198
  ret i8* %call, !dbg !546
}

; Function Attrs: optsize
declare i8* @sre_malloc(i8*, i32, i64) #2

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #1

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize }
attributes #4 = { optsize }
attributes #5 = { nounwind }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/postprob.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/456.hmmer/src/postprob.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4, metadata !109, metadata !126, metadata !138, metadata !155, metadata !174, metadata !185}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"P7OptimalAccuracy", metadata !"P7OptimalAccuracy", metadata !"", i32 97, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, float (i8*, i32, %struct.plan7_s*, %struct.p7trace_s**)* @P7OptimalAccuracy, null, null, metadata !84, i32 98} ; [ DW_TAG_subprogram ] [line 97] [def] [scope 98] [P7OptimalAccuracy]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/postprob.c]
!6 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8, metadata !9, metadata !11, metadata !12, metadata !76}
!8 = metadata !{i32 786468, null, null, metadata !"float", i32 0, i64 32, i64 32, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [float] [line 0, size 32, align 32, offset 0, enc DW_ATE_float]
!9 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !10} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from char]
!10 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!11 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!12 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !13} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from plan7_s]
!13 = metadata !{i32 786451, metadata !14, null, metadata !"plan7_s", i32 101, i64 3712, i64 64, i32 0, i32 0, null, metadata !15, i32 0, null, null} ; [ DW_TAG_structure_type ] [plan7_s] [line 101, size 3712, align 64, offset 0] [from ]
!14 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/456.hmmer/src/structs.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!15 = metadata !{metadata !16, metadata !17, metadata !18, metadata !19, metadata !20, metadata !21, metadata !22, metadata !23, metadata !24, metadata !25, metadata !27, metadata !28, metadata !29, metadata !30, metadata !31, metadata !32, metadata !33, metadata !34, metadata !35, metadata !36, metadata !37, metadata !38, metadata !41, metadata !42, metadata !43, metadata !44, metadata !49, metadata !50, metadata !51, metadata !55, metadata !56, metadata !58, metadata !59, metadata !60, metadata !62, metadata !63, metadata !64, metadata !65, metadata !66, metadata !67, metadata !68, metadata !69, metadata !70, metadata !71, metadata !72, metadata !73, metadata !74, metadata !75}
!16 = metadata !{i32 786445, metadata !14, metadata !13, metadata !"name", i32 113, i64 64, i64 64, i64 0, i32 0, metadata !9} ; [ DW_TAG_member ] [name] [line 113, size 64, align 64, offset 0] [from ]
!17 = metadata !{i32 786445, metadata !14, metadata !13, metadata !"acc", i32 114, i64 64, i64 64, i64 64, i32 0, metadata !9} ; [ DW_TAG_member ] [acc] [line 114, size 64, align 64, offset 64] [from ]
!18 = metadata !{i32 786445, metadata !14, metadata !13, metadata !"desc", i32 115, i64 64, i64 64, i64 128, i32 0, metadata !9} ; [ DW_TAG_member ] [desc] [line 115, size 64, align 64, offset 128] [from ]
!19 = metadata !{i32 786445, metadata !14, metadata !13, metadata !"rf", i32 116, i64 64, i64 64, i64 192, i32 0, metadata !9} ; [ DW_TAG_member ] [rf] [line 116, size 64, align 64, offset 192] [from ]
!20 = metadata !{i32 786445, metadata !14, metadata !13, metadata !"cs", i32 117, i64 64, i64 64, i64 256, i32 0, metadata !9} ; [ DW_TAG_member ] [cs] [line 117, size 64, align 64, offset 256] [from ]
!21 = metadata !{i32 786445, metadata !14, metadata !13, metadata !"ca", i32 118, i64 64, i64 64, i64 320, i32 0, metadata !9} ; [ DW_TAG_member ] [ca] [line 118, size 64, align 64, offset 320] [from ]
!22 = metadata !{i32 786445, metadata !14, metadata !13, metadata !"comlog", i32 119, i64 64, i64 64, i64 384, i32 0, metadata !9} ; [ DW_TAG_member ] [comlog] [line 119, size 64, align 64, offset 384] [from ]
!23 = metadata !{i32 786445, metadata !14, metadata !13, metadata !"nseq", i32 120, i64 32, i64 32, i64 448, i32 0, metadata !11} ; [ DW_TAG_member ] [nseq] [line 120, size 32, align 32, offset 448] [from int]
!24 = metadata !{i32 786445, metadata !14, metadata !13, metadata !"ctime", i32 121, i64 64, i64 64, i64 512, i32 0, metadata !9} ; [ DW_TAG_member ] [ctime] [line 121, size 64, align 64, offset 512] [from ]
!25 = metadata !{i32 786445, metadata !14, metadata !13, metadata !"map", i32 122, i64 64, i64 64, i64 576, i32 0, metadata !26} ; [ DW_TAG_member ] [map] [line 122, size 64, align 64, offset 576] [from ]
!26 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !11} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from int]
!27 = metadata !{i32 786445, metadata !14, metadata !13, metadata !"checksum", i32 123, i64 32, i64 32, i64 640, i32 0, metadata !11} ; [ DW_TAG_member ] [checksum] [line 123, size 32, align 32, offset 640] [from int]
!28 = metadata !{i32 786445, metadata !14, metadata !13, metadata !"tpri", i32 134, i64 64, i64 64, i64 704, i32 0, metadata !26} ; [ DW_TAG_member ] [tpri] [line 134, size 64, align 64, offset 704] [from ]
!29 = metadata !{i32 786445, metadata !14, metadata !13, metadata !"mpri", i32 135, i64 64, i64 64, i64 768, i32 0, metadata !26} ; [ DW_TAG_member ] [mpri] [line 135, size 64, align 64, offset 768] [from ]
!30 = metadata !{i32 786445, metadata !14, metadata !13, metadata !"ipri", i32 136, i64 64, i64 64, i64 832, i32 0, metadata !26} ; [ DW_TAG_member ] [ipri] [line 136, size 64, align 64, offset 832] [from ]
!31 = metadata !{i32 786445, metadata !14, metadata !13, metadata !"ga1", i32 144, i64 32, i64 32, i64 896, i32 0, metadata !8} ; [ DW_TAG_member ] [ga1] [line 144, size 32, align 32, offset 896] [from float]
!32 = metadata !{i32 786445, metadata !14, metadata !13, metadata !"ga2", i32 144, i64 32, i64 32, i64 928, i32 0, metadata !8} ; [ DW_TAG_member ] [ga2] [line 144, size 32, align 32, offset 928] [from float]
!33 = metadata !{i32 786445, metadata !14, metadata !13, metadata !"tc1", i32 145, i64 32, i64 32, i64 960, i32 0, metadata !8} ; [ DW_TAG_member ] [tc1] [line 145, size 32, align 32, offset 960] [from float]
!34 = metadata !{i32 786445, metadata !14, metadata !13, metadata !"tc2", i32 145, i64 32, i64 32, i64 992, i32 0, metadata !8} ; [ DW_TAG_member ] [tc2] [line 145, size 32, align 32, offset 992] [from float]
!35 = metadata !{i32 786445, metadata !14, metadata !13, metadata !"nc1", i32 146, i64 32, i64 32, i64 1024, i32 0, metadata !8} ; [ DW_TAG_member ] [nc1] [line 146, size 32, align 32, offset 1024] [from float]
!36 = metadata !{i32 786445, metadata !14, metadata !13, metadata !"nc2", i32 146, i64 32, i64 32, i64 1056, i32 0, metadata !8} ; [ DW_TAG_member ] [nc2] [line 146, size 32, align 32, offset 1056] [from float]
!37 = metadata !{i32 786445, metadata !14, metadata !13, metadata !"M", i32 155, i64 32, i64 32, i64 1088, i32 0, metadata !11} ; [ DW_TAG_member ] [M] [line 155, size 32, align 32, offset 1088] [from int]
!38 = metadata !{i32 786445, metadata !14, metadata !13, metadata !"t", i32 156, i64 64, i64 64, i64 1152, i32 0, metadata !39} ; [ DW_TAG_member ] [t] [line 156, size 64, align 64, offset 1152] [from ]
!39 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !40} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!40 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !8} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from float]
!41 = metadata !{i32 786445, metadata !14, metadata !13, metadata !"mat", i32 157, i64 64, i64 64, i64 1216, i32 0, metadata !39} ; [ DW_TAG_member ] [mat] [line 157, size 64, align 64, offset 1216] [from ]
!42 = metadata !{i32 786445, metadata !14, metadata !13, metadata !"ins", i32 158, i64 64, i64 64, i64 1280, i32 0, metadata !39} ; [ DW_TAG_member ] [ins] [line 158, size 64, align 64, offset 1280] [from ]
!43 = metadata !{i32 786445, metadata !14, metadata !13, metadata !"tbd1", i32 159, i64 32, i64 32, i64 1344, i32 0, metadata !8} ; [ DW_TAG_member ] [tbd1] [line 159, size 32, align 32, offset 1344] [from float]
!44 = metadata !{i32 786445, metadata !14, metadata !13, metadata !"xt", i32 168, i64 256, i64 32, i64 1376, i32 0, metadata !45} ; [ DW_TAG_member ] [xt] [line 168, size 256, align 32, offset 1376] [from ]
!45 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 256, i64 32, i32 0, i32 0, metadata !8, metadata !46, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 256, align 32, offset 0] [from float]
!46 = metadata !{metadata !47, metadata !48}
!47 = metadata !{i32 786465, i64 0, i64 4}        ; [ DW_TAG_subrange_type ] [0, 3]
!48 = metadata !{i32 786465, i64 0, i64 2}        ; [ DW_TAG_subrange_type ] [0, 1]
!49 = metadata !{i32 786445, metadata !14, metadata !13, metadata !"begin", i32 169, i64 64, i64 64, i64 1664, i32 0, metadata !40} ; [ DW_TAG_member ] [begin] [line 169, size 64, align 64, offset 1664] [from ]
!50 = metadata !{i32 786445, metadata !14, metadata !13, metadata !"end", i32 170, i64 64, i64 64, i64 1728, i32 0, metadata !40} ; [ DW_TAG_member ] [end] [line 170, size 64, align 64, offset 1728] [from ]
!51 = metadata !{i32 786445, metadata !14, metadata !13, metadata !"null", i32 174, i64 640, i64 32, i64 1792, i32 0, metadata !52} ; [ DW_TAG_member ] [null] [line 174, size 640, align 32, offset 1792] [from ]
!52 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 640, i64 32, i32 0, i32 0, metadata !8, metadata !53, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 640, align 32, offset 0] [from float]
!53 = metadata !{metadata !54}
!54 = metadata !{i32 786465, i64 0, i64 20}       ; [ DW_TAG_subrange_type ] [0, 19]
!55 = metadata !{i32 786445, metadata !14, metadata !13, metadata !"p1", i32 175, i64 32, i64 32, i64 2432, i32 0, metadata !8} ; [ DW_TAG_member ] [p1] [line 175, size 32, align 32, offset 2432] [from float]
!56 = metadata !{i32 786445, metadata !14, metadata !13, metadata !"tsc", i32 197, i64 64, i64 64, i64 2496, i32 0, metadata !57} ; [ DW_TAG_member ] [tsc] [line 197, size 64, align 64, offset 2496] [from ]
!57 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !26} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!58 = metadata !{i32 786445, metadata !14, metadata !13, metadata !"msc", i32 198, i64 64, i64 64, i64 2560, i32 0, metadata !57} ; [ DW_TAG_member ] [msc] [line 198, size 64, align 64, offset 2560] [from ]
!59 = metadata !{i32 786445, metadata !14, metadata !13, metadata !"isc", i32 199, i64 64, i64 64, i64 2624, i32 0, metadata !57} ; [ DW_TAG_member ] [isc] [line 199, size 64, align 64, offset 2624] [from ]
!60 = metadata !{i32 786445, metadata !14, metadata !13, metadata !"xsc", i32 200, i64 256, i64 32, i64 2688, i32 0, metadata !61} ; [ DW_TAG_member ] [xsc] [line 200, size 256, align 32, offset 2688] [from ]
!61 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 256, i64 32, i32 0, i32 0, metadata !11, metadata !46, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 256, align 32, offset 0] [from int]
!62 = metadata !{i32 786445, metadata !14, metadata !13, metadata !"bsc", i32 201, i64 64, i64 64, i64 2944, i32 0, metadata !26} ; [ DW_TAG_member ] [bsc] [line 201, size 64, align 64, offset 2944] [from ]
!63 = metadata !{i32 786445, metadata !14, metadata !13, metadata !"esc", i32 202, i64 64, i64 64, i64 3008, i32 0, metadata !26} ; [ DW_TAG_member ] [esc] [line 202, size 64, align 64, offset 3008] [from ]
!64 = metadata !{i32 786445, metadata !14, metadata !13, metadata !"tsc_mem", i32 203, i64 64, i64 64, i64 3072, i32 0, metadata !26} ; [ DW_TAG_member ] [tsc_mem] [line 203, size 64, align 64, offset 3072] [from ]
!65 = metadata !{i32 786445, metadata !14, metadata !13, metadata !"msc_mem", i32 203, i64 64, i64 64, i64 3136, i32 0, metadata !26} ; [ DW_TAG_member ] [msc_mem] [line 203, size 64, align 64, offset 3136] [from ]
!66 = metadata !{i32 786445, metadata !14, metadata !13, metadata !"isc_mem", i32 203, i64 64, i64 64, i64 3200, i32 0, metadata !26} ; [ DW_TAG_member ] [isc_mem] [line 203, size 64, align 64, offset 3200] [from ]
!67 = metadata !{i32 786445, metadata !14, metadata !13, metadata !"bsc_mem", i32 203, i64 64, i64 64, i64 3264, i32 0, metadata !26} ; [ DW_TAG_member ] [bsc_mem] [line 203, size 64, align 64, offset 3264] [from ]
!68 = metadata !{i32 786445, metadata !14, metadata !13, metadata !"esc_mem", i32 203, i64 64, i64 64, i64 3328, i32 0, metadata !26} ; [ DW_TAG_member ] [esc_mem] [line 203, size 64, align 64, offset 3328] [from ]
!69 = metadata !{i32 786445, metadata !14, metadata !13, metadata !"dnam", i32 214, i64 64, i64 64, i64 3392, i32 0, metadata !57} ; [ DW_TAG_member ] [dnam] [line 214, size 64, align 64, offset 3392] [from ]
!70 = metadata !{i32 786445, metadata !14, metadata !13, metadata !"dnai", i32 215, i64 64, i64 64, i64 3456, i32 0, metadata !57} ; [ DW_TAG_member ] [dnai] [line 215, size 64, align 64, offset 3456] [from ]
!71 = metadata !{i32 786445, metadata !14, metadata !13, metadata !"dna2", i32 216, i64 32, i64 32, i64 3520, i32 0, metadata !11} ; [ DW_TAG_member ] [dna2] [line 216, size 32, align 32, offset 3520] [from int]
!72 = metadata !{i32 786445, metadata !14, metadata !13, metadata !"dna4", i32 217, i64 32, i64 32, i64 3552, i32 0, metadata !11} ; [ DW_TAG_member ] [dna4] [line 217, size 32, align 32, offset 3552] [from int]
!73 = metadata !{i32 786445, metadata !14, metadata !13, metadata !"mu", i32 222, i64 32, i64 32, i64 3584, i32 0, metadata !8} ; [ DW_TAG_member ] [mu] [line 222, size 32, align 32, offset 3584] [from float]
!74 = metadata !{i32 786445, metadata !14, metadata !13, metadata !"lambda", i32 223, i64 32, i64 32, i64 3616, i32 0, metadata !8} ; [ DW_TAG_member ] [lambda] [line 223, size 32, align 32, offset 3616] [from float]
!75 = metadata !{i32 786445, metadata !14, metadata !13, metadata !"flags", i32 225, i64 32, i64 32, i64 3648, i32 0, metadata !11} ; [ DW_TAG_member ] [flags] [line 225, size 32, align 32, offset 3648] [from int]
!76 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !77} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!77 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !78} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from p7trace_s]
!78 = metadata !{i32 786451, metadata !14, null, metadata !"p7trace_s", i32 374, i64 256, i64 64, i32 0, i32 0, null, metadata !79, i32 0, null, null} ; [ DW_TAG_structure_type ] [p7trace_s] [line 374, size 256, align 64, offset 0] [from ]
!79 = metadata !{metadata !80, metadata !81, metadata !82, metadata !83}
!80 = metadata !{i32 786445, metadata !14, metadata !78, metadata !"tlen", i32 375, i64 32, i64 32, i64 0, i32 0, metadata !11} ; [ DW_TAG_member ] [tlen] [line 375, size 32, align 32, offset 0] [from int]
!81 = metadata !{i32 786445, metadata !14, metadata !78, metadata !"statetype", i32 376, i64 64, i64 64, i64 64, i32 0, metadata !9} ; [ DW_TAG_member ] [statetype] [line 376, size 64, align 64, offset 64] [from ]
!82 = metadata !{i32 786445, metadata !14, metadata !78, metadata !"nodeidx", i32 377, i64 64, i64 64, i64 128, i32 0, metadata !26} ; [ DW_TAG_member ] [nodeidx] [line 377, size 64, align 64, offset 128] [from ]
!83 = metadata !{i32 786445, metadata !14, metadata !78, metadata !"pos", i32 378, i64 64, i64 64, i64 192, i32 0, metadata !26} ; [ DW_TAG_member ] [pos] [line 378, size 64, align 64, offset 192] [from ]
!84 = metadata !{metadata !85, metadata !86, metadata !87, metadata !88, metadata !89, metadata !91, metadata !108}
!85 = metadata !{i32 786689, metadata !4, metadata !"dsq", metadata !5, i32 16777313, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dsq] [line 97]
!86 = metadata !{i32 786689, metadata !4, metadata !"L", metadata !5, i32 33554529, metadata !11, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 97]
!87 = metadata !{i32 786689, metadata !4, metadata !"hmm", metadata !5, i32 50331745, metadata !12, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [hmm] [line 97]
!88 = metadata !{i32 786689, metadata !4, metadata !"ret_tr", metadata !5, i32 67108961, metadata !76, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ret_tr] [line 97]
!89 = metadata !{i32 786688, metadata !4, metadata !"sc", metadata !5, i32 99, metadata !90, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sc] [line 99]
!90 = metadata !{i32 786468, null, null, metadata !"double", i32 0, i64 64, i64 64, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [double] [line 0, size 64, align 64, offset 0, enc DW_ATE_float]
!91 = metadata !{i32 786688, metadata !4, metadata !"forward", metadata !5, i32 100, metadata !92, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [forward] [line 100]
!92 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !93} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from dpmatrix_s]
!93 = metadata !{i32 786451, metadata !14, null, metadata !"dpmatrix_s", i32 289, i64 640, i64 64, i32 0, i32 0, null, metadata !94, i32 0, null, null} ; [ DW_TAG_structure_type ] [dpmatrix_s] [line 289, size 640, align 64, offset 0] [from ]
!94 = metadata !{metadata !95, metadata !96, metadata !97, metadata !98, metadata !99, metadata !101, metadata !102, metadata !103, metadata !104, metadata !105, metadata !106, metadata !107}
!95 = metadata !{i32 786445, metadata !14, metadata !93, metadata !"xmx", i32 290, i64 64, i64 64, i64 0, i32 0, metadata !57} ; [ DW_TAG_member ] [xmx] [line 290, size 64, align 64, offset 0] [from ]
!96 = metadata !{i32 786445, metadata !14, metadata !93, metadata !"mmx", i32 291, i64 64, i64 64, i64 64, i32 0, metadata !57} ; [ DW_TAG_member ] [mmx] [line 291, size 64, align 64, offset 64] [from ]
!97 = metadata !{i32 786445, metadata !14, metadata !93, metadata !"imx", i32 292, i64 64, i64 64, i64 128, i32 0, metadata !57} ; [ DW_TAG_member ] [imx] [line 292, size 64, align 64, offset 128] [from ]
!98 = metadata !{i32 786445, metadata !14, metadata !93, metadata !"dmx", i32 293, i64 64, i64 64, i64 192, i32 0, metadata !57} ; [ DW_TAG_member ] [dmx] [line 293, size 64, align 64, offset 192] [from ]
!99 = metadata !{i32 786445, metadata !14, metadata !93, metadata !"xmx_mem", i32 299, i64 64, i64 64, i64 256, i32 0, metadata !100} ; [ DW_TAG_member ] [xmx_mem] [line 299, size 64, align 64, offset 256] [from ]
!100 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, null} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!101 = metadata !{i32 786445, metadata !14, metadata !93, metadata !"mmx_mem", i32 299, i64 64, i64 64, i64 320, i32 0, metadata !100} ; [ DW_TAG_member ] [mmx_mem] [line 299, size 64, align 64, offset 320] [from ]
!102 = metadata !{i32 786445, metadata !14, metadata !93, metadata !"imx_mem", i32 299, i64 64, i64 64, i64 384, i32 0, metadata !100} ; [ DW_TAG_member ] [imx_mem] [line 299, size 64, align 64, offset 384] [from ]
!103 = metadata !{i32 786445, metadata !14, metadata !93, metadata !"dmx_mem", i32 299, i64 64, i64 64, i64 448, i32 0, metadata !100} ; [ DW_TAG_member ] [dmx_mem] [line 299, size 64, align 64, offset 448] [from ]
!104 = metadata !{i32 786445, metadata !14, metadata !93, metadata !"maxN", i32 308, i64 32, i64 32, i64 512, i32 0, metadata !11} ; [ DW_TAG_member ] [maxN] [line 308, size 32, align 32, offset 512] [from int]
!105 = metadata !{i32 786445, metadata !14, metadata !93, metadata !"maxM", i32 309, i64 32, i64 32, i64 544, i32 0, metadata !11} ; [ DW_TAG_member ] [maxM] [line 309, size 32, align 32, offset 544] [from int]
!106 = metadata !{i32 786445, metadata !14, metadata !93, metadata !"padN", i32 311, i64 32, i64 32, i64 576, i32 0, metadata !11} ; [ DW_TAG_member ] [padN] [line 311, size 32, align 32, offset 576] [from int]
!107 = metadata !{i32 786445, metadata !14, metadata !93, metadata !"padM", i32 312, i64 32, i64 32, i64 608, i32 0, metadata !11} ; [ DW_TAG_member ] [padM] [line 312, size 32, align 32, offset 608] [from int]
!108 = metadata !{i32 786688, metadata !4, metadata !"backward", metadata !5, i32 101, metadata !92, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [backward] [line 101]
!109 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"P7Backward", metadata !"P7Backward", metadata !"", i32 132, metadata !110, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, float (i8*, i32, %struct.plan7_s*, %struct.dpmatrix_s**)* @P7Backward, null, null, metadata !113, i32 133} ; [ DW_TAG_subprogram ] [line 132] [def] [scope 133] [P7Backward]
!110 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !111, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!111 = metadata !{metadata !8, metadata !9, metadata !11, metadata !12, metadata !112}
!112 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !92} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!113 = metadata !{metadata !114, metadata !115, metadata !116, metadata !117, metadata !118, metadata !119, metadata !120, metadata !121, metadata !122, metadata !123, metadata !124, metadata !125}
!114 = metadata !{i32 786689, metadata !109, metadata !"dsq", metadata !5, i32 16777348, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dsq] [line 132]
!115 = metadata !{i32 786689, metadata !109, metadata !"L", metadata !5, i32 33554564, metadata !11, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 132]
!116 = metadata !{i32 786689, metadata !109, metadata !"hmm", metadata !5, i32 50331780, metadata !12, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [hmm] [line 132]
!117 = metadata !{i32 786689, metadata !109, metadata !"ret_mx", metadata !5, i32 67108996, metadata !112, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ret_mx] [line 132]
!118 = metadata !{i32 786688, metadata !109, metadata !"mx", metadata !5, i32 134, metadata !92, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [mx] [line 134]
!119 = metadata !{i32 786688, metadata !109, metadata !"xmx", metadata !5, i32 135, metadata !57, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [xmx] [line 135]
!120 = metadata !{i32 786688, metadata !109, metadata !"mmx", metadata !5, i32 136, metadata !57, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [mmx] [line 136]
!121 = metadata !{i32 786688, metadata !109, metadata !"imx", metadata !5, i32 137, metadata !57, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [imx] [line 137]
!122 = metadata !{i32 786688, metadata !109, metadata !"dmx", metadata !5, i32 138, metadata !57, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dmx] [line 138]
!123 = metadata !{i32 786688, metadata !109, metadata !"i", metadata !5, i32 139, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 139]
!124 = metadata !{i32 786688, metadata !109, metadata !"k", metadata !5, i32 139, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [k] [line 139]
!125 = metadata !{i32 786688, metadata !109, metadata !"sc", metadata !5, i32 140, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sc] [line 140]
!126 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"P7EmitterPosterior", metadata !"P7EmitterPosterior", metadata !"", i32 250, metadata !127, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i32, %struct.plan7_s*, %struct.dpmatrix_s*, %struct.dpmatrix_s*, %struct.dpmatrix_s*)* @P7EmitterPosterior, null, null, metadata !129, i32 255} ; [ DW_TAG_subprogram ] [line 250] [def] [scope 255] [P7EmitterPosterior]
!127 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !128, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!128 = metadata !{null, metadata !11, metadata !12, metadata !92, metadata !92, metadata !92}
!129 = metadata !{metadata !130, metadata !131, metadata !132, metadata !133, metadata !134, metadata !135, metadata !136, metadata !137}
!130 = metadata !{i32 786689, metadata !126, metadata !"L", metadata !5, i32 16777466, metadata !11, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 250]
!131 = metadata !{i32 786689, metadata !126, metadata !"hmm", metadata !5, i32 33554683, metadata !12, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [hmm] [line 251]
!132 = metadata !{i32 786689, metadata !126, metadata !"forward", metadata !5, i32 50331900, metadata !92, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [forward] [line 252]
!133 = metadata !{i32 786689, metadata !126, metadata !"backward", metadata !5, i32 67109117, metadata !92, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [backward] [line 253]
!134 = metadata !{i32 786689, metadata !126, metadata !"mx", metadata !5, i32 83886334, metadata !92, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mx] [line 254]
!135 = metadata !{i32 786688, metadata !126, metadata !"i", metadata !5, i32 256, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 256]
!136 = metadata !{i32 786688, metadata !126, metadata !"k", metadata !5, i32 257, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [k] [line 257]
!137 = metadata !{i32 786688, metadata !126, metadata !"sc", metadata !5, i32 258, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sc] [line 258]
!138 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"P7FillOptimalAccuracy", metadata !"P7FillOptimalAccuracy", metadata !"", i32 319, metadata !139, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, float (i32, i32, %struct.dpmatrix_s*, %struct.dpmatrix_s*, %struct.p7trace_s**)* @P7FillOptimalAccuracy, null, null, metadata !141, i32 324} ; [ DW_TAG_subprogram ] [line 319] [def] [scope 324] [P7FillOptimalAccuracy]
!139 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !140, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!140 = metadata !{metadata !8, metadata !11, metadata !11, metadata !92, metadata !92, metadata !76}
!141 = metadata !{metadata !142, metadata !143, metadata !144, metadata !145, metadata !146, metadata !147, metadata !148, metadata !149, metadata !150, metadata !151, metadata !152, metadata !153, metadata !154}
!142 = metadata !{i32 786689, metadata !138, metadata !"L", metadata !5, i32 16777535, metadata !11, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 319]
!143 = metadata !{i32 786689, metadata !138, metadata !"M", metadata !5, i32 33554752, metadata !11, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [M] [line 320]
!144 = metadata !{i32 786689, metadata !138, metadata !"posterior", metadata !5, i32 50331969, metadata !92, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [posterior] [line 321]
!145 = metadata !{i32 786689, metadata !138, metadata !"mx", metadata !5, i32 67109186, metadata !92, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mx] [line 322]
!146 = metadata !{i32 786689, metadata !138, metadata !"ret_tr", metadata !5, i32 83886403, metadata !76, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ret_tr] [line 323]
!147 = metadata !{i32 786688, metadata !138, metadata !"tr", metadata !5, i32 325, metadata !77, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [tr] [line 325]
!148 = metadata !{i32 786688, metadata !138, metadata !"xmx", metadata !5, i32 326, metadata !57, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [xmx] [line 326]
!149 = metadata !{i32 786688, metadata !138, metadata !"mmx", metadata !5, i32 327, metadata !57, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [mmx] [line 327]
!150 = metadata !{i32 786688, metadata !138, metadata !"imx", metadata !5, i32 328, metadata !57, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [imx] [line 328]
!151 = metadata !{i32 786688, metadata !138, metadata !"dmx", metadata !5, i32 329, metadata !57, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dmx] [line 329]
!152 = metadata !{i32 786688, metadata !138, metadata !"i", metadata !5, i32 330, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 330]
!153 = metadata !{i32 786688, metadata !138, metadata !"k", metadata !5, i32 330, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [k] [line 330]
!154 = metadata !{i32 786688, metadata !138, metadata !"sc", metadata !5, i32 331, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sc] [line 331]
!155 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"P7OptimalAccuracyTrace", metadata !"P7OptimalAccuracyTrace", metadata !"", i32 449, metadata !156, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i32, i32, %struct.dpmatrix_s*, %struct.dpmatrix_s*, %struct.p7trace_s**)* @P7OptimalAccuracyTrace, null, null, metadata !158, i32 454} ; [ DW_TAG_subprogram ] [line 449] [def] [scope 454] [P7OptimalAccuracyTrace]
!156 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !157, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!157 = metadata !{null, metadata !11, metadata !11, metadata !92, metadata !92, metadata !76}
!158 = metadata !{metadata !159, metadata !160, metadata !161, metadata !162, metadata !163, metadata !164, metadata !165, metadata !166, metadata !167, metadata !168, metadata !169, metadata !170, metadata !171, metadata !172, metadata !173}
!159 = metadata !{i32 786689, metadata !155, metadata !"L", metadata !5, i32 16777665, metadata !11, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 449]
!160 = metadata !{i32 786689, metadata !155, metadata !"M", metadata !5, i32 33554882, metadata !11, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [M] [line 450]
!161 = metadata !{i32 786689, metadata !155, metadata !"posterior", metadata !5, i32 50332099, metadata !92, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [posterior] [line 451]
!162 = metadata !{i32 786689, metadata !155, metadata !"mx", metadata !5, i32 67109316, metadata !92, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mx] [line 452]
!163 = metadata !{i32 786689, metadata !155, metadata !"ret_tr", metadata !5, i32 83886533, metadata !76, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ret_tr] [line 453]
!164 = metadata !{i32 786688, metadata !155, metadata !"tr", metadata !5, i32 455, metadata !77, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [tr] [line 455]
!165 = metadata !{i32 786688, metadata !155, metadata !"curralloc", metadata !5, i32 456, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [curralloc] [line 456]
!166 = metadata !{i32 786688, metadata !155, metadata !"tpos", metadata !5, i32 457, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [tpos] [line 457]
!167 = metadata !{i32 786688, metadata !155, metadata !"i", metadata !5, i32 458, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 458]
!168 = metadata !{i32 786688, metadata !155, metadata !"k", metadata !5, i32 459, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [k] [line 459]
!169 = metadata !{i32 786688, metadata !155, metadata !"xmx", metadata !5, i32 460, metadata !57, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [xmx] [line 460]
!170 = metadata !{i32 786688, metadata !155, metadata !"mmx", metadata !5, i32 460, metadata !57, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [mmx] [line 460]
!171 = metadata !{i32 786688, metadata !155, metadata !"imx", metadata !5, i32 460, metadata !57, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [imx] [line 460]
!172 = metadata !{i32 786688, metadata !155, metadata !"dmx", metadata !5, i32 460, metadata !57, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dmx] [line 460]
!173 = metadata !{i32 786688, metadata !155, metadata !"sc", metadata !5, i32 461, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sc] [line 461]
!174 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"PostalCode", metadata !"PostalCode", metadata !"", i32 685, metadata !175, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* (i32, %struct.dpmatrix_s*, %struct.p7trace_s*)* @PostalCode, null, null, metadata !177, i32 686} ; [ DW_TAG_subprogram ] [line 685] [def] [scope 686] [PostalCode]
!175 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !176, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!176 = metadata !{metadata !9, metadata !11, metadata !92, metadata !77}
!177 = metadata !{metadata !178, metadata !179, metadata !180, metadata !181, metadata !182, metadata !183, metadata !184}
!178 = metadata !{i32 786689, metadata !174, metadata !"L", metadata !5, i32 16777901, metadata !11, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 685]
!179 = metadata !{i32 786689, metadata !174, metadata !"mx", metadata !5, i32 33555117, metadata !92, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mx] [line 685]
!180 = metadata !{i32 786689, metadata !174, metadata !"tr", metadata !5, i32 50332333, metadata !77, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [tr] [line 685]
!181 = metadata !{i32 786688, metadata !174, metadata !"tpos", metadata !5, i32 687, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [tpos] [line 687]
!182 = metadata !{i32 786688, metadata !174, metadata !"i", metadata !5, i32 688, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 688]
!183 = metadata !{i32 786688, metadata !174, metadata !"k", metadata !5, i32 689, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [k] [line 689]
!184 = metadata !{i32 786688, metadata !174, metadata !"postcode", metadata !5, i32 690, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [postcode] [line 690]
!185 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"score2postcode", metadata !"score2postcode", metadata !"", i32 678, metadata !186, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !188, i32 679} ; [ DW_TAG_subprogram ] [line 678] [local] [def] [scope 679] [score2postcode]
!186 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !187, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!187 = metadata !{metadata !10, metadata !11}
!188 = metadata !{metadata !189, metadata !190}
!189 = metadata !{i32 786689, metadata !185, metadata !"sc", metadata !5, i32 16777894, metadata !11, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [sc] [line 678]
!190 = metadata !{i32 786688, metadata !185, metadata !"i", metadata !5, i32 680, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 680]
!191 = metadata !{i32 97, i32 0, metadata !4, null}
!192 = metadata !{i32 100, i32 0, metadata !4, null}
!193 = metadata !{i32 101, i32 0, metadata !4, null}
!194 = metadata !{i32 103, i32 0, metadata !4, null}
!195 = metadata !{i32 104, i32 0, metadata !4, null}
!196 = metadata !{i32 106, i32 0, metadata !4, null}
!197 = metadata !{metadata !"any pointer", metadata !198}
!198 = metadata !{metadata !"omnipotent char", metadata !199}
!199 = metadata !{metadata !"Simple C/C++ TBAA"}
!200 = metadata !{i32 108, i32 0, metadata !4, null}
!201 = metadata !{metadata !"int", metadata !198}
!202 = metadata !{i32 110, i32 0, metadata !4, null}
!203 = metadata !{i32 111, i32 0, metadata !4, null}
!204 = metadata !{i32 113, i32 0, metadata !4, null}
!205 = metadata !{i32 132, i32 0, metadata !109, null}
!206 = metadata !{i32 135, i32 0, metadata !109, null}
!207 = metadata !{i32 136, i32 0, metadata !109, null}
!208 = metadata !{i32 137, i32 0, metadata !109, null}
!209 = metadata !{i32 138, i32 0, metadata !109, null}
!210 = metadata !{i32 144, i32 0, metadata !109, null}
!211 = metadata !{i32 150, i32 0, metadata !109, null}
!212 = metadata !{i32 151, i32 0, metadata !109, null}
!213 = metadata !{i32 152, i32 0, metadata !109, null}
!214 = metadata !{i32 153, i32 0, metadata !215, null}
!215 = metadata !{i32 786443, metadata !1, metadata !109, i32 153, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/postprob.c]
!216 = metadata !{i32 154, i32 0, metadata !217, null}
!217 = metadata !{i32 786443, metadata !1, metadata !215, i32 153, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/postprob.c]
!218 = metadata !{i32 155, i32 0, metadata !217, null}
!219 = metadata !{i32 156, i32 0, metadata !217, null}
!220 = metadata !{i32 166, i32 0, metadata !109, null}
!221 = metadata !{i32 167, i32 0, metadata !222, null}
!222 = metadata !{i32 786443, metadata !1, metadata !109, i32 167, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/postprob.c]
!223 = metadata !{i32 172, i32 0, metadata !224, null}
!224 = metadata !{i32 786443, metadata !1, metadata !222, i32 168, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/postprob.c]
!225 = metadata !{i32 182, i32 0, metadata !224, null}
!226 = metadata !{i32 186, i32 0, metadata !224, null}
!227 = metadata !{i32 189, i32 0, metadata !224, null}
!228 = metadata !{i32 192, i32 0, metadata !224, null}
!229 = metadata !{i32 199, i32 0, metadata !230, null}
!230 = metadata !{i32 786443, metadata !1, metadata !224, i32 198, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/postprob.c]
!231 = metadata !{i32 211, i32 0, metadata !232, null}
!232 = metadata !{i32 786443, metadata !1, metadata !233, i32 202, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/postprob.c]
!233 = metadata !{i32 786443, metadata !1, metadata !230, i32 201, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/postprob.c]
!234 = metadata !{i32 174, i32 0, metadata !224, null}
!235 = metadata !{i32 183, i32 0, metadata !236, null}
!236 = metadata !{i32 786443, metadata !1, metadata !224, i32 183, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/postprob.c]
!237 = metadata !{i32 184, i32 0, metadata !236, null}
!238 = metadata !{i32 198, i32 0, metadata !224, null}
!239 = metadata !{i32 200, i32 0, metadata !230, null}
!240 = metadata !{i32 201, i32 0, metadata !233, null}
!241 = metadata !{i32 203, i32 0, metadata !232, null}
!242 = metadata !{i32 205, i32 0, metadata !232, null}
!243 = metadata !{i32 207, i32 0, metadata !232, null}
!244 = metadata !{i32 209, i32 0, metadata !232, null}
!245 = metadata !{i32 213, i32 0, metadata !232, null}
!246 = metadata !{i32 221, i32 0, metadata !109, null}
!247 = metadata !{i32 223, i32 0, metadata !109, null}
!248 = metadata !{i32 224, i32 0, metadata !109, null}
!249 = metadata !{i32 226, i32 0, metadata !109, null}
!250 = metadata !{i32 250, i32 0, metadata !126, null}
!251 = metadata !{i32 251, i32 0, metadata !126, null}
!252 = metadata !{i32 252, i32 0, metadata !126, null}
!253 = metadata !{i32 253, i32 0, metadata !126, null}
!254 = metadata !{i32 254, i32 0, metadata !126, null}
!255 = metadata !{i32 260, i32 0, metadata !126, null}
!256 = metadata !{i32 262, i32 0, metadata !257, null}
!257 = metadata !{i32 786443, metadata !1, metadata !126, i32 262, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/postprob.c]
!258 = metadata !{i32 264, i32 0, metadata !259, null}
!259 = metadata !{i32 786443, metadata !1, metadata !257, i32 263, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/postprob.c]
!260 = metadata !{i32 266, i32 0, metadata !259, null}
!261 = metadata !{i32 268, i32 0, metadata !259, null}
!262 = metadata !{i32 272, i32 0, metadata !263, null}
!263 = metadata !{i32 786443, metadata !1, metadata !259, i32 272, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/postprob.c]
!264 = metadata !{i32 287, i32 0, metadata !259, null}
!265 = metadata !{i32 288, i32 0, metadata !259, null}
!266 = metadata !{i32 290, i32 0, metadata !259, null}
!267 = metadata !{i32 294, i32 0, metadata !259, null}
!268 = metadata !{i32 280, i32 0, metadata !269, null}
!269 = metadata !{i32 786443, metadata !1, metadata !263, i32 272, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/postprob.c]
!270 = metadata !{i32 270, i32 0, metadata !259, null}
!271 = metadata !{i32 1}
!272 = metadata !{i32 273, i32 0, metadata !269, null}
!273 = metadata !{i32 274, i32 0, metadata !269, null}
!274 = metadata !{i32 276, i32 0, metadata !269, null}
!275 = metadata !{i32 278, i32 0, metadata !269, null}
!276 = metadata !{i32 281, i32 0, metadata !269, null}
!277 = metadata !{i32 283, i32 0, metadata !269, null}
!278 = metadata !{i32 285, i32 0, metadata !269, null}
!279 = metadata !{i32 292, i32 0, metadata !259, null}
!280 = metadata !{i32 297, i32 0, metadata !126, null}
!281 = metadata !{i32 319, i32 0, metadata !138, null}
!282 = metadata !{i32 320, i32 0, metadata !138, null}
!283 = metadata !{i32 321, i32 0, metadata !138, null}
!284 = metadata !{i32 322, i32 0, metadata !138, null}
!285 = metadata !{i32 323, i32 0, metadata !138, null}
!286 = metadata !{i32 325, i32 0, metadata !138, null}
!287 = metadata !{i32 333, i32 0, metadata !138, null}
!288 = metadata !{i32 334, i32 0, metadata !138, null}
!289 = metadata !{i32 335, i32 0, metadata !138, null}
!290 = metadata !{i32 336, i32 0, metadata !138, null}
!291 = metadata !{i32 343, i32 0, metadata !138, null}
!292 = metadata !{i32 344, i32 0, metadata !293, null}
!293 = metadata !{i32 786443, metadata !1, metadata !138, i32 344, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/postprob.c]
!294 = metadata !{i32 345, i32 0, metadata !293, null}
!295 = metadata !{i32 351, i32 0, metadata !296, null}
!296 = metadata !{i32 786443, metadata !1, metadata !138, i32 351, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/postprob.c]
!297 = metadata !{i32 355, i32 0, metadata !298, null}
!298 = metadata !{i32 786443, metadata !1, metadata !299, i32 355, i32 0, i32 15} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/postprob.c]
!299 = metadata !{i32 786443, metadata !1, metadata !296, i32 352, i32 0, i32 14} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/postprob.c]
!300 = metadata !{i32 391, i32 0, metadata !299, null}
!301 = metadata !{i32 367, i32 0, metadata !302, null}
!302 = metadata !{i32 786443, metadata !1, metadata !298, i32 356, i32 0, i32 16} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/postprob.c]
!303 = metadata !{i32 382, i32 0, metadata !302, null}
!304 = metadata !{i32 353, i32 0, metadata !299, null}
!305 = metadata !{i32 359, i32 0, metadata !302, null}
!306 = metadata !{i32 361, i32 0, metadata !302, null}
!307 = metadata !{i32 363, i32 0, metadata !302, null}
!308 = metadata !{i32 365, i32 0, metadata !302, null}
!309 = metadata !{i32 358, i32 0, metadata !302, null}
!310 = metadata !{i32 360, i32 0, metadata !302, null}
!311 = metadata !{i32 362, i32 0, metadata !302, null}
!312 = metadata !{i32 364, i32 0, metadata !302, null}
!313 = metadata !{i32 366, i32 0, metadata !302, null}
!314 = metadata !{i32 370, i32 0, metadata !302, null}
!315 = metadata !{i32 371, i32 0, metadata !302, null}
!316 = metadata !{i32 372, i32 0, metadata !302, null}
!317 = metadata !{i32 373, i32 0, metadata !302, null}
!318 = metadata !{i32 374, i32 0, metadata !302, null}
!319 = metadata !{i32 377, i32 0, metadata !302, null}
!320 = metadata !{i32 378, i32 0, metadata !302, null}
!321 = metadata !{i32 379, i32 0, metadata !302, null}
!322 = metadata !{i32 380, i32 0, metadata !302, null}
!323 = metadata !{i32 381, i32 0, metadata !302, null}
!324 = metadata !{i32 390, i32 0, metadata !299, null}
!325 = metadata !{i32 392, i32 0, metadata !299, null}
!326 = metadata !{i32 395, i32 0, metadata !299, null}
!327 = metadata !{i32 396, i32 0, metadata !328, null}
!328 = metadata !{i32 786443, metadata !1, metadata !299, i32 396, i32 0, i32 17} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/postprob.c]
!329 = metadata !{i32 397, i32 0, metadata !328, null}
!330 = metadata !{i32 398, i32 0, metadata !328, null}
!331 = metadata !{i32 401, i32 0, metadata !299, null}
!332 = metadata !{i32 402, i32 0, metadata !299, null}
!333 = metadata !{i32 403, i32 0, metadata !299, null}
!334 = metadata !{i32 404, i32 0, metadata !299, null}
!335 = metadata !{i32 405, i32 0, metadata !299, null}
!336 = metadata !{i32 408, i32 0, metadata !299, null}
!337 = metadata !{i32 409, i32 0, metadata !299, null}
!338 = metadata !{i32 411, i32 0, metadata !299, null}
!339 = metadata !{i32 412, i32 0, metadata !299, null}
!340 = metadata !{i32 415, i32 0, metadata !299, null}
!341 = metadata !{i32 416, i32 0, metadata !299, null}
!342 = metadata !{i32 417, i32 0, metadata !299, null}
!343 = metadata !{i32 418, i32 0, metadata !299, null}
!344 = metadata !{i32 419, i32 0, metadata !299, null}
!345 = metadata !{i32 423, i32 0, metadata !138, null}
!346 = metadata !{i32 425, i32 0, metadata !138, null}
!347 = metadata !{i32 426, i32 0, metadata !348, null}
!348 = metadata !{i32 786443, metadata !1, metadata !138, i32 425, i32 0, i32 18} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/postprob.c]
!349 = metadata !{i32 427, i32 0, metadata !348, null}
!350 = metadata !{i32 428, i32 0, metadata !348, null}
!351 = metadata !{i32 430, i32 0, metadata !138, null}
!352 = metadata !{i32 449, i32 0, metadata !155, null}
!353 = metadata !{i32 450, i32 0, metadata !155, null}
!354 = metadata !{i32 451, i32 0, metadata !155, null}
!355 = metadata !{i32 452, i32 0, metadata !155, null}
!356 = metadata !{i32 453, i32 0, metadata !155, null}
!357 = metadata !{i32 455, i32 0, metadata !155, null}
!358 = metadata !{i32 467, i32 0, metadata !155, null}
!359 = metadata !{i32 468, i32 0, metadata !155, null}
!360 = metadata !{i32 470, i32 0, metadata !155, null}
!361 = metadata !{i32 471, i32 0, metadata !155, null}
!362 = metadata !{i32 472, i32 0, metadata !155, null}
!363 = metadata !{i32 473, i32 0, metadata !155, null}
!364 = metadata !{i32 478, i32 0, metadata !155, null}
!365 = metadata !{i32 479, i32 0, metadata !155, null}
!366 = metadata !{i32 480, i32 0, metadata !155, null}
!367 = metadata !{i32 481, i32 0, metadata !155, null}
!368 = metadata !{i32 482, i32 0, metadata !155, null}
!369 = metadata !{i32 483, i32 0, metadata !155, null}
!370 = metadata !{i32 2}
!371 = metadata !{i32 484, i32 0, metadata !155, null}
!372 = metadata !{i32 485, i32 0, metadata !155, null}
!373 = metadata !{i32 493, i32 0, metadata !374, null}
!374 = metadata !{i32 786443, metadata !1, metadata !375, i32 490, i32 0, i32 20} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/postprob.c]
!375 = metadata !{i32 786443, metadata !1, metadata !155, i32 489, i32 0, i32 19} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/postprob.c]
!376 = metadata !{i32 538, i32 0, metadata !374, null}
!377 = metadata !{i32 560, i32 0, metadata !374, null}
!378 = metadata !{i32 587, i32 0, metadata !379, null}
!379 = metadata !{i32 786443, metadata !1, metadata !374, i32 587, i32 0, i32 33} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/postprob.c]
!380 = metadata !{i32 489, i32 0, metadata !155, null}
!381 = metadata !{i32 490, i32 0, metadata !375, null}
!382 = metadata !{i32 588, i32 0, metadata !379, null}
!383 = metadata !{i32 492, i32 0, metadata !374, null}
!384 = metadata !{i32 495, i32 0, metadata !385, null}
!385 = metadata !{i32 786443, metadata !1, metadata !374, i32 494, i32 0, i32 21} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/postprob.c]
!386 = metadata !{i32 496, i32 0, metadata !385, null}
!387 = metadata !{i32 497, i32 0, metadata !385, null}
!388 = metadata !{i32 498, i32 0, metadata !385, null}
!389 = metadata !{i32 499, i32 0, metadata !374, null}
!390 = metadata !{i32 501, i32 0, metadata !391, null}
!391 = metadata !{i32 786443, metadata !1, metadata !374, i32 500, i32 0, i32 22} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/postprob.c]
!392 = metadata !{i32 502, i32 0, metadata !391, null}
!393 = metadata !{i32 503, i32 0, metadata !391, null}
!394 = metadata !{i32 504, i32 0, metadata !391, null}
!395 = metadata !{i32 505, i32 0, metadata !374, null}
!396 = metadata !{i32 507, i32 0, metadata !397, null}
!397 = metadata !{i32 786443, metadata !1, metadata !374, i32 506, i32 0, i32 23} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/postprob.c]
!398 = metadata !{i32 508, i32 0, metadata !397, null}
!399 = metadata !{i32 509, i32 0, metadata !397, null}
!400 = metadata !{i32 510, i32 0, metadata !397, null}
!401 = metadata !{i32 511, i32 0, metadata !374, null}
!402 = metadata !{i32 513, i32 0, metadata !403, null}
!403 = metadata !{i32 786443, metadata !1, metadata !374, i32 512, i32 0, i32 24} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/postprob.c]
!404 = metadata !{i32 514, i32 0, metadata !403, null}
!405 = metadata !{i32 515, i32 0, metadata !403, null}
!406 = metadata !{i32 516, i32 0, metadata !403, null}
!407 = metadata !{i32 517, i32 0, metadata !374, null}
!408 = metadata !{i32 521, i32 0, metadata !374, null}
!409 = metadata !{i32 523, i32 0, metadata !410, null}
!410 = metadata !{i32 786443, metadata !1, metadata !374, i32 522, i32 0, i32 25} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/postprob.c]
!411 = metadata !{i32 524, i32 0, metadata !410, null}
!412 = metadata !{i32 525, i32 0, metadata !410, null}
!413 = metadata !{i32 526, i32 0, metadata !410, null}
!414 = metadata !{i32 527, i32 0, metadata !374, null}
!415 = metadata !{i32 529, i32 0, metadata !416, null}
!416 = metadata !{i32 786443, metadata !1, metadata !374, i32 528, i32 0, i32 26} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/postprob.c]
!417 = metadata !{i32 530, i32 0, metadata !416, null}
!418 = metadata !{i32 531, i32 0, metadata !416, null}
!419 = metadata !{i32 532, i32 0, metadata !416, null}
!420 = metadata !{i32 533, i32 0, metadata !374, null}
!421 = metadata !{i32 537, i32 0, metadata !374, null}
!422 = metadata !{i32 540, i32 0, metadata !423, null}
!423 = metadata !{i32 786443, metadata !1, metadata !374, i32 539, i32 0, i32 27} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/postprob.c]
!424 = metadata !{i32 541, i32 0, metadata !423, null}
!425 = metadata !{i32 542, i32 0, metadata !423, null}
!426 = metadata !{i32 543, i32 0, metadata !423, null}
!427 = metadata !{i32 544, i32 0, metadata !374, null}
!428 = metadata !{i32 546, i32 0, metadata !429, null}
!429 = metadata !{i32 786443, metadata !1, metadata !374, i32 545, i32 0, i32 28} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/postprob.c]
!430 = metadata !{i32 547, i32 0, metadata !429, null}
!431 = metadata !{i32 548, i32 0, metadata !429, null}
!432 = metadata !{i32 549, i32 0, metadata !429, null}
!433 = metadata !{i32 550, i32 0, metadata !374, null}
!434 = metadata !{i32 554, i32 0, metadata !374, null}
!435 = metadata !{i32 556, i32 0, metadata !436, null}
!436 = metadata !{i32 786443, metadata !1, metadata !374, i32 555, i32 0, i32 29} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/postprob.c]
!437 = metadata !{i32 557, i32 0, metadata !436, null}
!438 = metadata !{i32 558, i32 0, metadata !436, null}
!439 = metadata !{i32 559, i32 0, metadata !436, null}
!440 = metadata !{i32 562, i32 0, metadata !441, null}
!441 = metadata !{i32 786443, metadata !1, metadata !374, i32 561, i32 0, i32 30} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/postprob.c]
!442 = metadata !{i32 563, i32 0, metadata !441, null}
!443 = metadata !{i32 564, i32 0, metadata !441, null}
!444 = metadata !{i32 565, i32 0, metadata !441, null}
!445 = metadata !{i32 566, i32 0, metadata !441, null}
!446 = metadata !{i32 567, i32 0, metadata !374, null}
!447 = metadata !{i32 571, i32 0, metadata !374, null}
!448 = metadata !{i32 573, i32 0, metadata !449, null}
!449 = metadata !{i32 786443, metadata !1, metadata !374, i32 572, i32 0, i32 31} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/postprob.c]
!450 = metadata !{i32 574, i32 0, metadata !449, null}
!451 = metadata !{i32 575, i32 0, metadata !449, null}
!452 = metadata !{i32 576, i32 0, metadata !449, null}
!453 = metadata !{i32 577, i32 0, metadata !374, null}
!454 = metadata !{i32 579, i32 0, metadata !455, null}
!455 = metadata !{i32 786443, metadata !1, metadata !374, i32 578, i32 0, i32 32} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/postprob.c]
!456 = metadata !{i32 580, i32 0, metadata !455, null}
!457 = metadata !{i32 581, i32 0, metadata !455, null}
!458 = metadata !{i32 582, i32 0, metadata !455, null}
!459 = metadata !{i32 583, i32 0, metadata !374, null}
!460 = metadata !{i32 590, i32 0, metadata !461, null}
!461 = metadata !{i32 786443, metadata !1, metadata !379, i32 589, i32 0, i32 34} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/postprob.c]
!462 = metadata !{i32 591, i32 0, metadata !461, null}
!463 = metadata !{i32 592, i32 0, metadata !461, null}
!464 = metadata !{i32 595, i32 0, metadata !374, null}
!465 = metadata !{i32 599, i32 0, metadata !374, null}
!466 = metadata !{i32 601, i32 0, metadata !467, null}
!467 = metadata !{i32 786443, metadata !1, metadata !374, i32 600, i32 0, i32 35} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/postprob.c]
!468 = metadata !{i32 602, i32 0, metadata !467, null}
!469 = metadata !{i32 603, i32 0, metadata !467, null}
!470 = metadata !{i32 604, i32 0, metadata !467, null}
!471 = metadata !{i32 605, i32 0, metadata !467, null}
!472 = metadata !{i32 606, i32 0, metadata !374, null}
!473 = metadata !{i32 608, i32 0, metadata !474, null}
!474 = metadata !{i32 786443, metadata !1, metadata !374, i32 607, i32 0, i32 36} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/postprob.c]
!475 = metadata !{i32 609, i32 0, metadata !474, null}
!476 = metadata !{i32 610, i32 0, metadata !474, null}
!477 = metadata !{i32 611, i32 0, metadata !474, null}
!478 = metadata !{i32 612, i32 0, metadata !374, null}
!479 = metadata !{i32 616, i32 0, metadata !374, null}
!480 = metadata !{i32 618, i32 0, metadata !481, null}
!481 = metadata !{i32 786443, metadata !1, metadata !374, i32 617, i32 0, i32 37} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/postprob.c]
!482 = metadata !{i32 619, i32 0, metadata !481, null}
!483 = metadata !{i32 620, i32 0, metadata !481, null}
!484 = metadata !{i32 621, i32 0, metadata !481, null}
!485 = metadata !{i32 622, i32 0, metadata !481, null}
!486 = metadata !{i32 623, i32 0, metadata !374, null}
!487 = metadata !{i32 625, i32 0, metadata !488, null}
!488 = metadata !{i32 786443, metadata !1, metadata !374, i32 624, i32 0, i32 38} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/postprob.c]
!489 = metadata !{i32 626, i32 0, metadata !488, null}
!490 = metadata !{i32 627, i32 0, metadata !488, null}
!491 = metadata !{i32 628, i32 0, metadata !488, null}
!492 = metadata !{i32 629, i32 0, metadata !374, null}
!493 = metadata !{i32 633, i32 0, metadata !374, null}
!494 = metadata !{i32 635, i32 0, metadata !374, null}
!495 = metadata !{i32 638, i32 0, metadata !375, null}
!496 = metadata !{i32 637, i32 0, metadata !375, null}
!497 = metadata !{i32 640, i32 0, metadata !498, null}
!498 = metadata !{i32 786443, metadata !1, metadata !375, i32 639, i32 0, i32 39} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/postprob.c]
!499 = metadata !{i32 641, i32 0, metadata !498, null}
!500 = metadata !{i32 642, i32 0, metadata !498, null}
!501 = metadata !{i32 645, i32 0, metadata !155, null}
!502 = metadata !{i32 646, i32 0, metadata !155, null}
!503 = metadata !{i32 647, i32 0, metadata !155, null}
!504 = metadata !{i32 649, i32 0, metadata !155, null}
!505 = metadata !{i32 685, i32 0, metadata !174, null}
!506 = metadata !{i32 692, i32 0, metadata !174, null}
!507 = metadata !{i32 693, i32 0, metadata !508, null}
!508 = metadata !{i32 786443, metadata !1, metadata !174, i32 693, i32 0, i32 40} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/postprob.c]
!509 = metadata !{i32 695, i32 0, metadata !510, null}
!510 = metadata !{i32 786443, metadata !1, metadata !508, i32 694, i32 0, i32 41} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/postprob.c]
!511 = metadata !{i32 696, i32 0, metadata !510, null}
!512 = metadata !{i32 699, i32 0, metadata !510, null}
!513 = metadata !{i32 700, i32 0, metadata !514, null}
!514 = metadata !{i32 786443, metadata !1, metadata !510, i32 699, i32 0, i32 42} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/postprob.c]
!515 = metadata !{i32 701, i32 0, metadata !514, null}
!516 = metadata !{i32 702, i32 0, metadata !514, null}
!517 = metadata !{i32 697, i32 0, metadata !510, null}
!518 = metadata !{i32 786689, metadata !185, metadata !"sc", metadata !5, i32 16777894, metadata !11, i32 0, metadata !513} ; [ DW_TAG_arg_variable ] [sc] [line 678]
!519 = metadata !{i32 678, i32 0, metadata !185, metadata !513}
!520 = metadata !{i32 681, i32 0, metadata !185, metadata !513}
!521 = metadata !{i32 786688, metadata !185, metadata !"i", metadata !5, i32 680, metadata !10, i32 0, metadata !513} ; [ DW_TAG_auto_variable ] [i] [line 680]
!522 = metadata !{i32 682, i32 0, metadata !185, metadata !513}
!523 = metadata !{i32 786689, metadata !185, metadata !"sc", metadata !5, i32 16777894, metadata !11, i32 0, metadata !515} ; [ DW_TAG_arg_variable ] [sc] [line 678]
!524 = metadata !{i32 678, i32 0, metadata !185, metadata !515}
!525 = metadata !{i32 681, i32 0, metadata !185, metadata !515}
!526 = metadata !{i32 786688, metadata !185, metadata !"i", metadata !5, i32 680, metadata !10, i32 0, metadata !515} ; [ DW_TAG_auto_variable ] [i] [line 680]
!527 = metadata !{i32 682, i32 0, metadata !185, metadata !515}
!528 = metadata !{i32 786689, metadata !185, metadata !"sc", metadata !5, i32 16777894, metadata !11, i32 0, metadata !516} ; [ DW_TAG_arg_variable ] [sc] [line 678]
!529 = metadata !{i32 678, i32 0, metadata !185, metadata !516}
!530 = metadata !{i32 681, i32 0, metadata !185, metadata !516}
!531 = metadata !{i32 786688, metadata !185, metadata !"i", metadata !5, i32 680, metadata !10, i32 0, metadata !516} ; [ DW_TAG_auto_variable ] [i] [line 680]
!532 = metadata !{i32 682, i32 0, metadata !185, metadata !516}
!533 = metadata !{i32 703, i32 0, metadata !514, null}
!534 = metadata !{i32 786689, metadata !185, metadata !"sc", metadata !5, i32 16777894, metadata !11, i32 0, metadata !533} ; [ DW_TAG_arg_variable ] [sc] [line 678]
!535 = metadata !{i32 678, i32 0, metadata !185, metadata !533}
!536 = metadata !{i32 681, i32 0, metadata !185, metadata !533}
!537 = metadata !{i32 786688, metadata !185, metadata !"i", metadata !5, i32 680, metadata !10, i32 0, metadata !533} ; [ DW_TAG_auto_variable ] [i] [line 680]
!538 = metadata !{i32 682, i32 0, metadata !185, metadata !533}
!539 = metadata !{i32 704, i32 0, metadata !514, null}
!540 = metadata !{i32 786689, metadata !185, metadata !"sc", metadata !5, i32 16777894, metadata !11, i32 0, metadata !539} ; [ DW_TAG_arg_variable ] [sc] [line 678]
!541 = metadata !{i32 678, i32 0, metadata !185, metadata !539}
!542 = metadata !{i32 681, i32 0, metadata !185, metadata !539}
!543 = metadata !{i32 786688, metadata !185, metadata !"i", metadata !5, i32 680, metadata !10, i32 0, metadata !539} ; [ DW_TAG_auto_variable ] [i] [line 680]
!544 = metadata !{i32 682, i32 0, metadata !185, metadata !539}
!545 = metadata !{i32 707, i32 0, metadata !174, null}
!546 = metadata !{i32 709, i32 0, metadata !174, null}
