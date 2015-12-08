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
  %call = call float @P7Forward(i8* %dsq, i32 %L, %struct.plan7_s* %hmm, %struct.dpmatrix_s** %forward) #2
  %call1 = call float @P7Backward(i8* %dsq, i32 %L, %struct.plan7_s* %hmm, %struct.dpmatrix_s** %backward) #3
  %0 = load %struct.dpmatrix_s** %forward, align 8, !tbaa !0
  %1 = load %struct.dpmatrix_s** %backward, align 8, !tbaa !0
  call void @P7EmitterPosterior(i32 %L, %struct.plan7_s* %hmm, %struct.dpmatrix_s* %0, %struct.dpmatrix_s* %1, %struct.dpmatrix_s* %1) #3
  %M = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 20
  %2 = load i32* %M, align 4, !tbaa !3
  %3 = load %struct.dpmatrix_s** %backward, align 8, !tbaa !0
  %4 = load %struct.dpmatrix_s** %forward, align 8, !tbaa !0
  %call2 = call float @P7FillOptimalAccuracy(i32 %L, i32 %2, %struct.dpmatrix_s* %3, %struct.dpmatrix_s* %4, %struct.p7trace_s** %ret_tr) #3
  %5 = load %struct.dpmatrix_s** %forward, align 8, !tbaa !0
  call void @FreePlan7Matrix(%struct.dpmatrix_s* %5) #2
  %6 = load %struct.dpmatrix_s** %backward, align 8, !tbaa !0
  call void @FreePlan7Matrix(%struct.dpmatrix_s* %6) #2
  ret float %call2
}

; Function Attrs: optsize
declare float @P7Forward(i8*, i32, %struct.plan7_s*, %struct.dpmatrix_s**) #1

; Function Attrs: nounwind optsize uwtable
define float @P7Backward(i8* nocapture %dsq, i32 %L, %struct.plan7_s* nocapture %hmm, %struct.dpmatrix_s** %ret_mx) #0 {
entry:
  %xmx = alloca i32**, align 8
  %mmx = alloca i32**, align 8
  %imx = alloca i32**, align 8
  %dmx = alloca i32**, align 8
  %add = add nsw i32 %L, 1
  %M = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 20
  %0 = load i32* %M, align 4, !tbaa !3
  %call = call %struct.dpmatrix_s* @AllocPlan7Matrix(i32 %add, i32 %0, i32*** %xmx, i32*** %mmx, i32*** %imx, i32*** %dmx) #2
  %arrayidx1 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 33, i64 2, i64 0
  %1 = load i32* %arrayidx1, align 4, !tbaa !3
  %idxprom = sext i32 %L to i64
  %2 = load i32*** %xmx, align 8, !tbaa !0
  %arrayidx2 = getelementptr inbounds i32** %2, i64 %idxprom
  %3 = load i32** %arrayidx2, align 8, !tbaa !0
  %arrayidx3 = getelementptr inbounds i32* %3, i64 2
  store i32 %1, i32* %arrayidx3, align 4, !tbaa !3
  %arrayidx9 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 33, i64 1, i64 0
  %4 = load i32* %arrayidx9, align 4, !tbaa !3
  %add10 = add nsw i32 %4, %1
  %arrayidx13 = getelementptr inbounds i32* %3, i64 1
  store i32 %add10, i32* %arrayidx13, align 4, !tbaa !3
  %arrayidx16 = getelementptr inbounds i32* %3, i64 4
  store i32 -987654321, i32* %arrayidx16, align 4, !tbaa !3
  store i32 -987654321, i32* %3, align 4, !tbaa !3
  %arrayidx22 = getelementptr inbounds i32* %3, i64 3
  store i32 -987654321, i32* %arrayidx22, align 4, !tbaa !3
  %5 = load i32* %M, align 4, !tbaa !3
  %cmp494 = icmp sgt i32 %5, 0
  br i1 %cmp494, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %esc = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 35
  %arrayidx36 = getelementptr inbounds i8* %dsq, i64 %idxprom
  %msc = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 31
  %6 = sext i32 %5 to i64
  %.pre507 = load i32** %esc, align 8, !tbaa !0
  %.pre508 = load i32*** %mmx, align 8, !tbaa !0
  %arrayidx32.phi.trans.insert = getelementptr inbounds i32** %.pre508, i64 %idxprom
  %.pre509 = load i32** %arrayidx32.phi.trans.insert, align 8, !tbaa !0
  %.pre510 = load i32*** %msc, align 8, !tbaa !0
  %.pre511 = load i32*** %dmx, align 8, !tbaa !0
  %arrayidx47.phi.trans.insert = getelementptr inbounds i32** %.pre511, i64 %idxprom
  %.pre512 = load i32** %arrayidx47.phi.trans.insert, align 8, !tbaa !0
  %.pre513 = load i32*** %imx, align 8, !tbaa !0
  %arrayidx51.phi.trans.insert = getelementptr inbounds i32** %.pre513, i64 %idxprom
  %.pre514 = load i32** %arrayidx51.phi.trans.insert, align 8, !tbaa !0
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %7 = phi i32 [ %add10, %for.body.lr.ph ], [ %.pre521, %for.body.for.body_crit_edge ]
  %indvars.iv504 = phi i64 [ %6, %for.body.lr.ph ], [ %indvars.iv.next505, %for.body.for.body_crit_edge ]
  %arrayidx28 = getelementptr inbounds i32* %.pre507, i64 %indvars.iv504
  %8 = load i32* %arrayidx28, align 4, !tbaa !3
  %add29 = add nsw i32 %8, %7
  %arrayidx33 = getelementptr inbounds i32* %.pre509, i64 %indvars.iv504
  store i32 %add29, i32* %arrayidx33, align 4, !tbaa !3
  %9 = load i8* %arrayidx36, align 1, !tbaa !1
  %idxprom37 = sext i8 %9 to i64
  %arrayidx38 = getelementptr inbounds i32** %.pre510, i64 %idxprom37
  %10 = load i32** %arrayidx38, align 8, !tbaa !0
  %arrayidx39 = getelementptr inbounds i32* %10, i64 %indvars.iv504
  %11 = load i32* %arrayidx39, align 4, !tbaa !3
  %add44 = add nsw i32 %add29, %11
  store i32 %add44, i32* %arrayidx33, align 4, !tbaa !3
  %arrayidx48 = getelementptr inbounds i32* %.pre512, i64 %indvars.iv504
  store i32 -987654321, i32* %arrayidx48, align 4, !tbaa !3
  %arrayidx52 = getelementptr inbounds i32* %.pre514, i64 %indvars.iv504
  store i32 -987654321, i32* %arrayidx52, align 4, !tbaa !3
  %indvars.iv.next505 = add i64 %indvars.iv504, -1
  %12 = trunc i64 %indvars.iv.next505 to i32
  %cmp = icmp sgt i32 %12, 0
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.cond.for.end_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  %.pre521 = load i32* %arrayidx13, align 4, !tbaa !3
  br label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.body
  %.pre = load i32* %M, align 4, !tbaa !3
  br label %for.end

for.end:                                          ; preds = %for.cond.for.end_crit_edge, %entry
  %13 = phi i32 [ %.pre, %for.cond.for.end_crit_edge ], [ %5, %entry ]
  %sub = add nsw i32 %13, -1
  %idxprom54 = sext i32 %sub to i64
  %tsc = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 30
  %14 = load i32*** %tsc, align 8, !tbaa !0
  %arrayidx55 = getelementptr inbounds i32** %14, i64 2
  %15 = load i32** %arrayidx55, align 8, !tbaa !0
  %arrayidx56 = getelementptr inbounds i32* %15, i64 %idxprom54
  store i32 -987654321, i32* %arrayidx56, align 4, !tbaa !3
  %16 = load i32* %M, align 4, !tbaa !3
  %sub58 = add nsw i32 %16, -1
  %idxprom59 = sext i32 %sub58 to i64
  %arrayidx61 = getelementptr inbounds i32** %14, i64 6
  %17 = load i32** %arrayidx61, align 8, !tbaa !0
  %arrayidx62 = getelementptr inbounds i32* %17, i64 %idxprom59
  store i32 -987654321, i32* %arrayidx62, align 4, !tbaa !3
  %cmp65491 = icmp sgt i32 %L, 0
  br i1 %cmp65491, label %for.body67.lr.ph, label %for.end344

for.body67.lr.ph:                                 ; preds = %for.end
  %arrayidx74 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 33, i64 2, i64 1
  %bsc = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 34
  %arrayidx130 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 33, i64 3, i64 0
  %arrayidx138 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 33, i64 3, i64 1
  %arrayidx156 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 33, i64 1, i64 1
  %arrayidx167 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 33, i64 0, i64 0
  %arrayidx175 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 33, i64 0, i64 1
  %esc188 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 35
  %msc197 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 31
  %isc = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 32
  br label %for.body67

for.body67:                                       ; preds = %for.cond64.backedge.for.body67_crit_edge, %for.body67.lr.ph
  %18 = phi i32* [ %3, %for.body67.lr.ph ], [ %.pre516, %for.cond64.backedge.for.body67_crit_edge ]
  %19 = phi i32** [ %2, %for.body67.lr.ph ], [ %.pre515, %for.cond64.backedge.for.body67_crit_edge ]
  %indvars.iv502 = phi i64 [ %idxprom, %for.body67.lr.ph ], [ %indvars.iv.next503, %for.cond64.backedge.for.body67_crit_edge ]
  %indvars.iv.next503 = add i64 %indvars.iv502, -1
  %arrayidx71 = getelementptr inbounds i32* %18, i64 2
  %20 = load i32* %arrayidx71, align 4, !tbaa !3
  %21 = load i32* %arrayidx74, align 4, !tbaa !3
  %add75 = add nsw i32 %21, %20
  %arrayidx77 = getelementptr inbounds i32** %19, i64 %indvars.iv.next503
  %22 = load i32** %arrayidx77, align 8, !tbaa !0
  %arrayidx78 = getelementptr inbounds i32* %22, i64 2
  store i32 %add75, i32* %arrayidx78, align 4, !tbaa !3
  store i32 -987654321, i32* %22, align 4, !tbaa !3
  %23 = load i32* %M, align 4, !tbaa !3
  %idxprom86 = sext i32 %23 to i64
  %24 = load i32*** %mmx, align 8, !tbaa !0
  %arrayidx89 = getelementptr inbounds i32** %24, i64 %indvars.iv502
  %25 = load i32** %arrayidx89, align 8, !tbaa !0
  %arrayidx90 = getelementptr inbounds i32* %25, i64 %idxprom86
  %26 = load i32* %arrayidx90, align 4, !tbaa !3
  %sub92 = add nsw i32 %23, -1
  %idxprom93 = sext i32 %sub92 to i64
  %27 = load i32** %bsc, align 8, !tbaa !0
  %arrayidx94 = getelementptr inbounds i32* %27, i64 %idxprom93
  %28 = load i32* %arrayidx94, align 4, !tbaa !3
  %add95 = add nsw i32 %28, %26
  %call96 = call i32 @ILogsum(i32 -987654321, i32 %add95) #2
  %29 = load i32*** %xmx, align 8, !tbaa !0
  %arrayidx98 = getelementptr inbounds i32** %29, i64 %indvars.iv.next503
  %30 = load i32** %arrayidx98, align 8, !tbaa !0
  store i32 %call96, i32* %30, align 4, !tbaa !3
  %31 = load i32* %M, align 4, !tbaa !3
  %k.1481 = add i32 %31, -1
  %cmp103482 = icmp sgt i32 %k.1481, 0
  br i1 %cmp103482, label %for.body105.lr.ph, label %for.end124

for.body105.lr.ph:                                ; preds = %for.body67
  %32 = sext i32 %k.1481 to i64
  br label %for.body105

for.body105:                                      ; preds = %for.body105.lr.ph, %for.body105
  %indvars.iv = phi i64 [ %32, %for.body105.lr.ph ], [ %indvars.iv.next, %for.body105 ]
  %33 = phi i32 [ %call96, %for.body105.lr.ph ], [ %call118, %for.body105 ]
  %k.1484 = phi i32 [ %k.1481, %for.body105.lr.ph ], [ %k.1, %for.body105 ]
  %34 = load i32*** %mmx, align 8, !tbaa !0
  %arrayidx112 = getelementptr inbounds i32** %34, i64 %indvars.iv502
  %35 = load i32** %arrayidx112, align 8, !tbaa !0
  %arrayidx113 = getelementptr inbounds i32* %35, i64 %indvars.iv
  %36 = load i32* %arrayidx113, align 4, !tbaa !3
  %37 = load i32** %bsc, align 8, !tbaa !0
  %arrayidx116 = getelementptr inbounds i32* %37, i64 %indvars.iv
  %38 = load i32* %arrayidx116, align 4, !tbaa !3
  %add117 = add nsw i32 %38, %36
  %call118 = call i32 @ILogsum(i32 %33, i32 %add117) #2
  %39 = load i32*** %xmx, align 8, !tbaa !0
  %arrayidx120 = getelementptr inbounds i32** %39, i64 %indvars.iv.next503
  %40 = load i32** %arrayidx120, align 8, !tbaa !0
  store i32 %call118, i32* %40, align 4, !tbaa !3
  %k.1 = add nsw i32 %k.1484, -1
  %cmp103 = icmp sgt i32 %k.1, 0
  %indvars.iv.next = add i64 %indvars.iv, -1
  br i1 %cmp103, label %for.body105, label %for.end124

for.end124:                                       ; preds = %for.body105, %for.body67
  %.lcssa480 = phi i32 [ %call96, %for.body67 ], [ %call118, %for.body105 ]
  %.lcssa = phi i32** [ %29, %for.body67 ], [ %39, %for.body105 ]
  %41 = load i32* %arrayidx130, align 4, !tbaa !3
  %add131 = add nsw i32 %41, %.lcssa480
  %arrayidx134 = getelementptr inbounds i32** %.lcssa, i64 %indvars.iv502
  %42 = load i32** %arrayidx134, align 8, !tbaa !0
  %arrayidx135 = getelementptr inbounds i32* %42, i64 3
  %43 = load i32* %arrayidx135, align 4, !tbaa !3
  %44 = load i32* %arrayidx138, align 4, !tbaa !3
  %add139 = add nsw i32 %44, %43
  %call140 = call i32 @ILogsum(i32 %add131, i32 %add139) #2
  %45 = load i32*** %xmx, align 8, !tbaa !0
  %arrayidx142 = getelementptr inbounds i32** %45, i64 %indvars.iv.next503
  %46 = load i32** %arrayidx142, align 8, !tbaa !0
  %arrayidx143 = getelementptr inbounds i32* %46, i64 3
  store i32 %call140, i32* %arrayidx143, align 4, !tbaa !3
  %arrayidx146 = getelementptr inbounds i32* %46, i64 2
  %47 = load i32* %arrayidx146, align 4, !tbaa !3
  %48 = load i32* %arrayidx9, align 4, !tbaa !3
  %add150 = add nsw i32 %48, %47
  %49 = load i32* %arrayidx156, align 4, !tbaa !3
  %add157 = add nsw i32 %49, %call140
  %call158 = call i32 @ILogsum(i32 %add150, i32 %add157) #2
  %50 = load i32*** %xmx, align 8, !tbaa !0
  %arrayidx160 = getelementptr inbounds i32** %50, i64 %indvars.iv.next503
  %51 = load i32** %arrayidx160, align 8, !tbaa !0
  %arrayidx161 = getelementptr inbounds i32* %51, i64 1
  store i32 %call158, i32* %arrayidx161, align 4, !tbaa !3
  %52 = load i32* %51, align 4, !tbaa !3
  %53 = load i32* %arrayidx167, align 4, !tbaa !3
  %add168 = add nsw i32 %53, %52
  %arrayidx171 = getelementptr inbounds i32** %50, i64 %indvars.iv502
  %54 = load i32** %arrayidx171, align 8, !tbaa !0
  %arrayidx172 = getelementptr inbounds i32* %54, i64 4
  %55 = load i32* %arrayidx172, align 4, !tbaa !3
  %56 = load i32* %arrayidx175, align 4, !tbaa !3
  %add176 = add nsw i32 %56, %55
  %call177 = call i32 @ILogsum(i32 %add168, i32 %add176) #2
  %57 = load i32*** %xmx, align 8, !tbaa !0
  %arrayidx179 = getelementptr inbounds i32** %57, i64 %indvars.iv.next503
  %58 = load i32** %arrayidx179, align 8, !tbaa !0
  %arrayidx180 = getelementptr inbounds i32* %58, i64 4
  store i32 %call177, i32* %arrayidx180, align 4, !tbaa !3
  %59 = trunc i64 %indvars.iv.next503 to i32
  %cmp181 = icmp sgt i32 %59, 0
  br i1 %cmp181, label %if.then, label %for.cond64.for.end344_crit_edge

for.cond64.backedge:                              ; preds = %for.body216
  br i1 %cmp181, label %for.cond64.backedge.for.body67_crit_edge, label %for.cond64.for.end344_crit_edge

for.cond64.backedge.for.body67_crit_edge:         ; preds = %if.then, %for.cond64.backedge
  %.pre515 = load i32*** %xmx, align 8, !tbaa !0
  %arrayidx70.phi.trans.insert = getelementptr inbounds i32** %.pre515, i64 %indvars.iv.next503
  %.pre516 = load i32** %arrayidx70.phi.trans.insert, align 8, !tbaa !0
  br label %for.body67

if.then:                                          ; preds = %for.end124
  %arrayidx185 = getelementptr inbounds i32* %58, i64 1
  %60 = load i32* %arrayidx185, align 4, !tbaa !3
  %61 = load i32* %M, align 4, !tbaa !3
  %idxprom187 = sext i32 %61 to i64
  %62 = load i32** %esc188, align 8, !tbaa !0
  %arrayidx189 = getelementptr inbounds i32* %62, i64 %idxprom187
  %63 = load i32* %arrayidx189, align 4, !tbaa !3
  %add190 = add nsw i32 %63, %60
  %arrayidx194 = getelementptr inbounds i8* %dsq, i64 %indvars.iv.next503
  %64 = load i8* %arrayidx194, align 1, !tbaa !1
  %idxprom196 = sext i8 %64 to i64
  %65 = load i32*** %msc197, align 8, !tbaa !0
  %arrayidx198 = getelementptr inbounds i32** %65, i64 %idxprom196
  %66 = load i32** %arrayidx198, align 8, !tbaa !0
  %arrayidx199 = getelementptr inbounds i32* %66, i64 %idxprom187
  %67 = load i32* %arrayidx199, align 4, !tbaa !3
  %add200 = add nsw i32 %add190, %67
  %68 = load i32*** %mmx, align 8, !tbaa !0
  %arrayidx204 = getelementptr inbounds i32** %68, i64 %indvars.iv.next503
  %69 = load i32** %arrayidx204, align 8, !tbaa !0
  %arrayidx205 = getelementptr inbounds i32* %69, i64 %idxprom187
  store i32 %add200, i32* %arrayidx205, align 4, !tbaa !3
  %70 = load i32* %M, align 4, !tbaa !3
  %idxprom207 = sext i32 %70 to i64
  %71 = load i32*** %dmx, align 8, !tbaa !0
  %arrayidx209 = getelementptr inbounds i32** %71, i64 %indvars.iv.next503
  %72 = load i32** %arrayidx209, align 8, !tbaa !0
  %arrayidx210 = getelementptr inbounds i32* %72, i64 %idxprom207
  store i32 -987654321, i32* %arrayidx210, align 4, !tbaa !3
  %73 = load i32* %M, align 4, !tbaa !3
  %k.2486 = add i32 %73, -1
  %cmp214487 = icmp sgt i32 %k.2486, 0
  br i1 %cmp214487, label %for.body216.lr.ph, label %for.cond64.backedge.for.body67_crit_edge

for.body216.lr.ph:                                ; preds = %if.then
  %74 = sext i32 %k.2486 to i64
  br label %for.body216

for.body216:                                      ; preds = %for.body216.for.body216_crit_edge, %for.body216.lr.ph
  %75 = phi i32** [ %68, %for.body216.lr.ph ], [ %.pre520, %for.body216.for.body216_crit_edge ]
  %76 = phi i32* [ %62, %for.body216.lr.ph ], [ %.pre519, %for.body216.for.body216_crit_edge ]
  %77 = phi i32* [ %58, %for.body216.lr.ph ], [ %.pre518, %for.body216.for.body216_crit_edge ]
  %indvars.iv499 = phi i64 [ %74, %for.body216.lr.ph ], [ %indvars.iv.next500, %for.body216.for.body216_crit_edge ]
  %k.2489 = phi i32 [ %k.2486, %for.body216.lr.ph ], [ %k.2, %for.body216.for.body216_crit_edge ]
  %k.2.in488 = phi i32 [ %73, %for.body216.lr.ph ], [ %131, %for.body216.for.body216_crit_edge ]
  %arrayidx219 = getelementptr inbounds i32* %77, i64 1
  %78 = load i32* %arrayidx219, align 4, !tbaa !3
  %arrayidx222 = getelementptr inbounds i32* %76, i64 %indvars.iv499
  %79 = load i32* %arrayidx222, align 4, !tbaa !3
  %add223 = add nsw i32 %79, %78
  %idxprom225 = sext i32 %k.2.in488 to i64
  %arrayidx228 = getelementptr inbounds i32** %75, i64 %indvars.iv502
  %80 = load i32** %arrayidx228, align 8, !tbaa !0
  %arrayidx229 = getelementptr inbounds i32* %80, i64 %idxprom225
  %81 = load i32* %arrayidx229, align 4, !tbaa !3
  %82 = load i32*** %tsc, align 8, !tbaa !0
  %83 = load i32** %82, align 8, !tbaa !0
  %arrayidx233 = getelementptr inbounds i32* %83, i64 %indvars.iv499
  %84 = load i32* %arrayidx233, align 4, !tbaa !3
  %add234 = add nsw i32 %84, %81
  %call235 = call i32 @ILogsum(i32 %add223, i32 %add234) #2
  %85 = load i32*** %imx, align 8, !tbaa !0
  %arrayidx239 = getelementptr inbounds i32** %85, i64 %indvars.iv502
  %86 = load i32** %arrayidx239, align 8, !tbaa !0
  %arrayidx240 = getelementptr inbounds i32* %86, i64 %indvars.iv499
  %87 = load i32* %arrayidx240, align 4, !tbaa !3
  %88 = load i32*** %tsc, align 8, !tbaa !0
  %arrayidx243 = getelementptr inbounds i32** %88, i64 1
  %89 = load i32** %arrayidx243, align 8, !tbaa !0
  %arrayidx244 = getelementptr inbounds i32* %89, i64 %indvars.iv499
  %90 = load i32* %arrayidx244, align 4, !tbaa !3
  %add245 = add nsw i32 %90, %87
  %91 = load i32*** %dmx, align 8, !tbaa !0
  %arrayidx249 = getelementptr inbounds i32** %91, i64 %indvars.iv.next503
  %92 = load i32** %arrayidx249, align 8, !tbaa !0
  %arrayidx250 = getelementptr inbounds i32* %92, i64 %idxprom225
  %93 = load i32* %arrayidx250, align 4, !tbaa !3
  %arrayidx253 = getelementptr inbounds i32** %88, i64 2
  %94 = load i32** %arrayidx253, align 8, !tbaa !0
  %arrayidx254 = getelementptr inbounds i32* %94, i64 %indvars.iv499
  %95 = load i32* %arrayidx254, align 4, !tbaa !3
  %add255 = add nsw i32 %95, %93
  %call256 = call i32 @ILogsum(i32 %add245, i32 %add255) #2
  %call257 = call i32 @ILogsum(i32 %call235, i32 %call256) #2
  %96 = load i32*** %mmx, align 8, !tbaa !0
  %arrayidx260 = getelementptr inbounds i32** %96, i64 %indvars.iv.next503
  %97 = load i32** %arrayidx260, align 8, !tbaa !0
  %arrayidx261 = getelementptr inbounds i32* %97, i64 %indvars.iv499
  store i32 %call257, i32* %arrayidx261, align 4, !tbaa !3
  %98 = load i8* %arrayidx194, align 1, !tbaa !1
  %idxprom266 = sext i8 %98 to i64
  %99 = load i32*** %msc197, align 8, !tbaa !0
  %arrayidx268 = getelementptr inbounds i32** %99, i64 %idxprom266
  %100 = load i32** %arrayidx268, align 8, !tbaa !0
  %arrayidx269 = getelementptr inbounds i32* %100, i64 %indvars.iv499
  %101 = load i32* %arrayidx269, align 4, !tbaa !3
  %add274 = add nsw i32 %call257, %101
  store i32 %add274, i32* %arrayidx261, align 4, !tbaa !3
  %102 = load i32*** %imx, align 8, !tbaa !0
  %arrayidx278 = getelementptr inbounds i32** %102, i64 %indvars.iv502
  %103 = load i32** %arrayidx278, align 8, !tbaa !0
  %arrayidx279 = getelementptr inbounds i32* %103, i64 %indvars.iv499
  %104 = load i32* %arrayidx279, align 4, !tbaa !3
  %105 = load i32*** %tsc, align 8, !tbaa !0
  %arrayidx282 = getelementptr inbounds i32** %105, i64 4
  %106 = load i32** %arrayidx282, align 8, !tbaa !0
  %arrayidx283 = getelementptr inbounds i32* %106, i64 %indvars.iv499
  %107 = load i32* %arrayidx283, align 4, !tbaa !3
  %add284 = add nsw i32 %107, %104
  %arrayidx289 = getelementptr inbounds i32** %96, i64 %indvars.iv502
  %108 = load i32** %arrayidx289, align 8, !tbaa !0
  %arrayidx290 = getelementptr inbounds i32* %108, i64 %idxprom225
  %109 = load i32* %arrayidx290, align 4, !tbaa !3
  %arrayidx293 = getelementptr inbounds i32** %105, i64 3
  %110 = load i32** %arrayidx293, align 8, !tbaa !0
  %arrayidx294 = getelementptr inbounds i32* %110, i64 %indvars.iv499
  %111 = load i32* %arrayidx294, align 4, !tbaa !3
  %add295 = add nsw i32 %111, %109
  %call296 = call i32 @ILogsum(i32 %add284, i32 %add295) #2
  %112 = load i32*** %imx, align 8, !tbaa !0
  %arrayidx299 = getelementptr inbounds i32** %112, i64 %indvars.iv.next503
  %113 = load i32** %arrayidx299, align 8, !tbaa !0
  %arrayidx300 = getelementptr inbounds i32* %113, i64 %indvars.iv499
  store i32 %call296, i32* %arrayidx300, align 4, !tbaa !3
  %114 = load i8* %arrayidx194, align 1, !tbaa !1
  %idxprom305 = sext i8 %114 to i64
  %115 = load i32*** %isc, align 8, !tbaa !0
  %arrayidx306 = getelementptr inbounds i32** %115, i64 %idxprom305
  %116 = load i32** %arrayidx306, align 8, !tbaa !0
  %arrayidx307 = getelementptr inbounds i32* %116, i64 %indvars.iv499
  %117 = load i32* %arrayidx307, align 4, !tbaa !3
  %add312 = add nsw i32 %call296, %117
  store i32 %add312, i32* %arrayidx300, align 4, !tbaa !3
  %118 = load i32*** %dmx, align 8, !tbaa !0
  %arrayidx316 = getelementptr inbounds i32** %118, i64 %indvars.iv.next503
  %119 = load i32** %arrayidx316, align 8, !tbaa !0
  %arrayidx317 = getelementptr inbounds i32* %119, i64 %idxprom225
  %120 = load i32* %arrayidx317, align 4, !tbaa !3
  %121 = load i32*** %tsc, align 8, !tbaa !0
  %arrayidx320 = getelementptr inbounds i32** %121, i64 6
  %122 = load i32** %arrayidx320, align 8, !tbaa !0
  %arrayidx321 = getelementptr inbounds i32* %122, i64 %indvars.iv499
  %123 = load i32* %arrayidx321, align 4, !tbaa !3
  %add322 = add nsw i32 %123, %120
  %124 = load i32*** %mmx, align 8, !tbaa !0
  %arrayidx327 = getelementptr inbounds i32** %124, i64 %indvars.iv502
  %125 = load i32** %arrayidx327, align 8, !tbaa !0
  %arrayidx328 = getelementptr inbounds i32* %125, i64 %idxprom225
  %126 = load i32* %arrayidx328, align 4, !tbaa !3
  %arrayidx331 = getelementptr inbounds i32** %121, i64 5
  %127 = load i32** %arrayidx331, align 8, !tbaa !0
  %arrayidx332 = getelementptr inbounds i32* %127, i64 %indvars.iv499
  %128 = load i32* %arrayidx332, align 4, !tbaa !3
  %add333 = add nsw i32 %128, %126
  %call334 = call i32 @ILogsum(i32 %add322, i32 %add333) #2
  %129 = load i32*** %dmx, align 8, !tbaa !0
  %arrayidx337 = getelementptr inbounds i32** %129, i64 %indvars.iv.next503
  %130 = load i32** %arrayidx337, align 8, !tbaa !0
  %arrayidx338 = getelementptr inbounds i32* %130, i64 %indvars.iv499
  store i32 %call334, i32* %arrayidx338, align 4, !tbaa !3
  %k.2 = add nsw i32 %k.2489, -1
  %cmp214 = icmp sgt i32 %k.2, 0
  br i1 %cmp214, label %for.body216.for.body216_crit_edge, label %for.cond64.backedge

for.body216.for.body216_crit_edge:                ; preds = %for.body216
  %131 = trunc i64 %indvars.iv499 to i32
  %indvars.iv.next500 = add i64 %indvars.iv499, -1
  %.pre517 = load i32*** %xmx, align 8, !tbaa !0
  %arrayidx218.phi.trans.insert = getelementptr inbounds i32** %.pre517, i64 %indvars.iv.next503
  %.pre518 = load i32** %arrayidx218.phi.trans.insert, align 8, !tbaa !0
  %.pre519 = load i32** %esc188, align 8, !tbaa !0
  %.pre520 = load i32*** %mmx, align 8, !tbaa !0
  br label %for.body216

for.cond64.for.end344_crit_edge:                  ; preds = %for.end124, %for.cond64.backedge
  %.pre506 = load i32*** %xmx, align 8, !tbaa !0
  br label %for.end344

for.end344:                                       ; preds = %for.cond64.for.end344_crit_edge, %for.end
  %132 = phi i32** [ %.pre506, %for.cond64.for.end344_crit_edge ], [ %2, %for.end ]
  %133 = load i32** %132, align 8, !tbaa !0
  %arrayidx346 = getelementptr inbounds i32* %133, i64 4
  %134 = load i32* %arrayidx346, align 4, !tbaa !3
  %cmp347 = icmp eq %struct.dpmatrix_s** %ret_mx, null
  br i1 %cmp347, label %if.else, label %if.then349

if.then349:                                       ; preds = %for.end344
  store %struct.dpmatrix_s* %call, %struct.dpmatrix_s** %ret_mx, align 8, !tbaa !0
  br label %if.end350

if.else:                                          ; preds = %for.end344
  call void @FreePlan7Matrix(%struct.dpmatrix_s* %call) #2
  br label %if.end350

if.end350:                                        ; preds = %if.else, %if.then349
  %call351 = call float @Scorify(i32 %134) #2
  ret float %call351
}

; Function Attrs: nounwind optsize uwtable
define void @P7EmitterPosterior(i32 %L, %struct.plan7_s* nocapture %hmm, %struct.dpmatrix_s* nocapture %forward, %struct.dpmatrix_s* nocapture %backward, %struct.dpmatrix_s* nocapture %mx) #0 {
entry:
  %xmx = getelementptr inbounds %struct.dpmatrix_s* %backward, i64 0, i32 0
  %0 = load i32*** %xmx, align 8, !tbaa !0
  %1 = load i32** %0, align 8, !tbaa !0
  %arrayidx1 = getelementptr inbounds i32* %1, i64 4
  %2 = load i32* %arrayidx1, align 4, !tbaa !3
  %cmp413 = icmp sgt i32 %L, 0
  br i1 %cmp413, label %for.body.lr.ph, label %for.end284

for.body.lr.ph:                                   ; preds = %entry
  %xmx2 = getelementptr inbounds %struct.dpmatrix_s* %forward, i64 0, i32 0
  %arrayidx6 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 33, i64 2, i64 1
  %xmx14 = getelementptr inbounds %struct.dpmatrix_s* %mx, i64 0, i32 0
  %arrayidx24 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 33, i64 3, i64 1
  %arrayidx43 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 33, i64 0, i64 1
  %M = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 20
  %mmx186 = getelementptr inbounds %struct.dpmatrix_s* %backward, i64 0, i32 1
  %mmx192 = getelementptr inbounds %struct.dpmatrix_s* %mx, i64 0, i32 1
  %mmx200 = getelementptr inbounds %struct.dpmatrix_s* %forward, i64 0, i32 1
  %tsc206 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 30
  %imx215 = getelementptr inbounds %struct.dpmatrix_s* %forward, i64 0, i32 2
  %bsc233 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 34
  %dmx241 = getelementptr inbounds %struct.dpmatrix_s* %forward, i64 0, i32 3
  %dmx268 = getelementptr inbounds %struct.dpmatrix_s* %mx, i64 0, i32 3
  %imx280 = getelementptr inbounds %struct.dpmatrix_s* %mx, i64 0, i32 2
  %imx135 = getelementptr inbounds %struct.dpmatrix_s* %backward, i64 0, i32 2
  %3 = sext i32 %L to i64
  br label %for.body

for.body:                                         ; preds = %for.end.for.body_crit_edge, %for.body.lr.ph
  %4 = phi i32** [ %0, %for.body.lr.ph ], [ %.pre, %for.end.for.body_crit_edge ]
  %indvars.iv417 = phi i64 [ %3, %for.body.lr.ph ], [ %indvars.iv.next418, %for.end.for.body_crit_edge ]
  %indvars.iv.next418 = add i64 %indvars.iv417, -1
  %5 = load i32*** %xmx2, align 8, !tbaa !0
  %arrayidx3 = getelementptr inbounds i32** %5, i64 %indvars.iv.next418
  %6 = load i32** %arrayidx3, align 8, !tbaa !0
  %arrayidx4 = getelementptr inbounds i32* %6, i64 2
  %7 = load i32* %arrayidx4, align 4, !tbaa !3
  %8 = load i32* %arrayidx6, align 4, !tbaa !3
  %arrayidx9 = getelementptr inbounds i32** %4, i64 %indvars.iv417
  %9 = load i32** %arrayidx9, align 8, !tbaa !0
  %arrayidx10 = getelementptr inbounds i32* %9, i64 2
  %10 = load i32* %arrayidx10, align 4, !tbaa !3
  %add = sub i32 %7, %2
  %add11 = add i32 %add, %8
  %sub12 = add i32 %add11, %10
  %11 = load i32*** %xmx14, align 8, !tbaa !0
  %arrayidx15 = getelementptr inbounds i32** %11, i64 %indvars.iv417
  %12 = load i32** %arrayidx15, align 8, !tbaa !0
  %arrayidx16 = getelementptr inbounds i32* %12, i64 2
  store i32 %sub12, i32* %arrayidx16, align 4, !tbaa !3
  %arrayidx21 = getelementptr inbounds i32* %6, i64 3
  %13 = load i32* %arrayidx21, align 4, !tbaa !3
  %14 = load i32* %arrayidx24, align 4, !tbaa !3
  %arrayidx29 = getelementptr inbounds i32* %9, i64 3
  %15 = load i32* %arrayidx29, align 4, !tbaa !3
  %add25 = sub i32 %13, %2
  %add30 = add i32 %add25, %14
  %sub31 = add i32 %add30, %15
  %arrayidx35 = getelementptr inbounds i32* %12, i64 3
  store i32 %sub31, i32* %arrayidx35, align 4, !tbaa !3
  %arrayidx40 = getelementptr inbounds i32* %6, i64 4
  %16 = load i32* %arrayidx40, align 4, !tbaa !3
  %17 = load i32* %arrayidx43, align 4, !tbaa !3
  %arrayidx48 = getelementptr inbounds i32* %9, i64 4
  %18 = load i32* %arrayidx48, align 4, !tbaa !3
  %add44 = sub i32 %16, %2
  %add49 = add i32 %add44, %17
  %sub50 = add i32 %add49, %18
  %arrayidx54 = getelementptr inbounds i32* %12, i64 4
  store i32 %sub50, i32* %arrayidx54, align 4, !tbaa !3
  %arrayidx58 = getelementptr inbounds i32* %12, i64 1
  store i32 -987654321, i32* %arrayidx58, align 4, !tbaa !3
  store i32 -987654321, i32* %12, align 4, !tbaa !3
  %19 = load i32* %M, align 4, !tbaa !3
  %cmp64410 = icmp sgt i32 %19, 1
  br i1 %cmp64410, label %for.body65, label %for.end

for.body65:                                       ; preds = %for.body65, %for.body
  %indvars.iv = phi i64 [ 1, %for.body ], [ %indvars.iv.next, %for.body65 ]
  %20 = load i32*** %mmx186, align 8, !tbaa !0
  %arrayidx68 = getelementptr inbounds i32** %20, i64 %indvars.iv417
  %21 = load i32** %arrayidx68, align 8, !tbaa !0
  %arrayidx69 = getelementptr inbounds i32* %21, i64 %indvars.iv
  %22 = load i32* %arrayidx69, align 4, !tbaa !3
  %23 = load i32*** %mmx192, align 8, !tbaa !0
  %arrayidx73 = getelementptr inbounds i32** %23, i64 %indvars.iv417
  %24 = load i32** %arrayidx73, align 8, !tbaa !0
  %arrayidx74 = getelementptr inbounds i32* %24, i64 %indvars.iv
  store i32 %22, i32* %arrayidx74, align 4, !tbaa !3
  %25 = add nsw i64 %indvars.iv, -1
  %26 = load i32*** %mmx200, align 8, !tbaa !0
  %arrayidx80 = getelementptr inbounds i32** %26, i64 %indvars.iv.next418
  %27 = load i32** %arrayidx80, align 8, !tbaa !0
  %arrayidx81 = getelementptr inbounds i32* %27, i64 %25
  %28 = load i32* %arrayidx81, align 4, !tbaa !3
  %29 = load i32*** %tsc206, align 8, !tbaa !0
  %30 = load i32** %29, align 8, !tbaa !0
  %arrayidx85 = getelementptr inbounds i32* %30, i64 %25
  %31 = load i32* %arrayidx85, align 4, !tbaa !3
  %add86 = add nsw i32 %31, %28
  %32 = load i32*** %imx215, align 8, !tbaa !0
  %arrayidx91 = getelementptr inbounds i32** %32, i64 %indvars.iv.next418
  %33 = load i32** %arrayidx91, align 8, !tbaa !0
  %arrayidx92 = getelementptr inbounds i32* %33, i64 %25
  %34 = load i32* %arrayidx92, align 4, !tbaa !3
  %arrayidx96 = getelementptr inbounds i32** %29, i64 3
  %35 = load i32** %arrayidx96, align 8, !tbaa !0
  %arrayidx97 = getelementptr inbounds i32* %35, i64 %25
  %36 = load i32* %arrayidx97, align 4, !tbaa !3
  %add98 = add nsw i32 %36, %34
  %call = tail call i32 @ILogsum(i32 %add86, i32 %add98) #2
  %37 = load i32*** %xmx2, align 8, !tbaa !0
  %arrayidx102 = getelementptr inbounds i32** %37, i64 %indvars.iv.next418
  %38 = load i32** %arrayidx102, align 8, !tbaa !0
  %39 = load i32* %38, align 4, !tbaa !3
  %40 = load i32** %bsc233, align 8, !tbaa !0
  %arrayidx105 = getelementptr inbounds i32* %40, i64 %indvars.iv
  %41 = load i32* %arrayidx105, align 4, !tbaa !3
  %add106 = add nsw i32 %41, %39
  %42 = load i32*** %dmx241, align 8, !tbaa !0
  %arrayidx111 = getelementptr inbounds i32** %42, i64 %indvars.iv.next418
  %43 = load i32** %arrayidx111, align 8, !tbaa !0
  %arrayidx112 = getelementptr inbounds i32* %43, i64 %25
  %44 = load i32* %arrayidx112, align 4, !tbaa !3
  %45 = load i32*** %tsc206, align 8, !tbaa !0
  %arrayidx116 = getelementptr inbounds i32** %45, i64 5
  %46 = load i32** %arrayidx116, align 8, !tbaa !0
  %arrayidx117 = getelementptr inbounds i32* %46, i64 %25
  %47 = load i32* %arrayidx117, align 4, !tbaa !3
  %add118 = add nsw i32 %47, %44
  %call119 = tail call i32 @ILogsum(i32 %add106, i32 %add118) #2
  %call120 = tail call i32 @ILogsum(i32 %call, i32 %call119) #2
  %48 = load i32*** %mmx192, align 8, !tbaa !0
  %arrayidx124 = getelementptr inbounds i32** %48, i64 %indvars.iv417
  %49 = load i32** %arrayidx124, align 8, !tbaa !0
  %arrayidx125 = getelementptr inbounds i32* %49, i64 %indvars.iv
  %50 = load i32* %arrayidx125, align 4, !tbaa !3
  %add126 = add nsw i32 %50, %call120
  %sub132 = sub nsw i32 %add126, %2
  store i32 %sub132, i32* %arrayidx125, align 4, !tbaa !3
  %51 = load i32*** %imx135, align 8, !tbaa !0
  %arrayidx136 = getelementptr inbounds i32** %51, i64 %indvars.iv417
  %52 = load i32** %arrayidx136, align 8, !tbaa !0
  %arrayidx137 = getelementptr inbounds i32* %52, i64 %indvars.iv
  %53 = load i32* %arrayidx137, align 4, !tbaa !3
  %54 = load i32*** %imx280, align 8, !tbaa !0
  %arrayidx141 = getelementptr inbounds i32** %54, i64 %indvars.iv417
  %55 = load i32** %arrayidx141, align 8, !tbaa !0
  %arrayidx142 = getelementptr inbounds i32* %55, i64 %indvars.iv
  store i32 %53, i32* %arrayidx142, align 4, !tbaa !3
  %56 = load i32*** %mmx200, align 8, !tbaa !0
  %arrayidx147 = getelementptr inbounds i32** %56, i64 %indvars.iv.next418
  %57 = load i32** %arrayidx147, align 8, !tbaa !0
  %arrayidx148 = getelementptr inbounds i32* %57, i64 %indvars.iv
  %58 = load i32* %arrayidx148, align 4, !tbaa !3
  %59 = load i32*** %tsc206, align 8, !tbaa !0
  %arrayidx151 = getelementptr inbounds i32** %59, i64 1
  %60 = load i32** %arrayidx151, align 8, !tbaa !0
  %arrayidx152 = getelementptr inbounds i32* %60, i64 %indvars.iv
  %61 = load i32* %arrayidx152, align 4, !tbaa !3
  %add153 = add nsw i32 %61, %58
  %62 = load i32*** %imx215, align 8, !tbaa !0
  %arrayidx158 = getelementptr inbounds i32** %62, i64 %indvars.iv.next418
  %63 = load i32** %arrayidx158, align 8, !tbaa !0
  %arrayidx159 = getelementptr inbounds i32* %63, i64 %indvars.iv
  %64 = load i32* %arrayidx159, align 4, !tbaa !3
  %arrayidx162 = getelementptr inbounds i32** %59, i64 4
  %65 = load i32** %arrayidx162, align 8, !tbaa !0
  %arrayidx163 = getelementptr inbounds i32* %65, i64 %indvars.iv
  %66 = load i32* %arrayidx163, align 4, !tbaa !3
  %add164 = add nsw i32 %66, %64
  %call165 = tail call i32 @ILogsum(i32 %add153, i32 %add164) #2
  %67 = load i32*** %imx280, align 8, !tbaa !0
  %arrayidx169 = getelementptr inbounds i32** %67, i64 %indvars.iv417
  %68 = load i32** %arrayidx169, align 8, !tbaa !0
  %arrayidx170 = getelementptr inbounds i32* %68, i64 %indvars.iv
  %69 = load i32* %arrayidx170, align 4, !tbaa !3
  %add171 = add nsw i32 %69, %call165
  %sub177 = sub nsw i32 %add171, %2
  store i32 %sub177, i32* %arrayidx170, align 4, !tbaa !3
  %70 = load i32*** %dmx268, align 8, !tbaa !0
  %arrayidx181 = getelementptr inbounds i32** %70, i64 %indvars.iv417
  %71 = load i32** %arrayidx181, align 8, !tbaa !0
  %arrayidx182 = getelementptr inbounds i32* %71, i64 %indvars.iv
  store i32 -987654321, i32* %arrayidx182, align 4, !tbaa !3
  %indvars.iv.next = add i64 %indvars.iv, 1
  %72 = load i32* %M, align 4, !tbaa !3
  %73 = trunc i64 %indvars.iv.next to i32
  %cmp64 = icmp slt i32 %73, %72
  br i1 %cmp64, label %for.body65, label %for.end

for.end:                                          ; preds = %for.body65, %for.body
  %.lcssa = phi i32 [ %19, %for.body ], [ %72, %for.body65 ]
  %idxprom184 = sext i32 %.lcssa to i64
  %74 = load i32*** %mmx186, align 8, !tbaa !0
  %arrayidx187 = getelementptr inbounds i32** %74, i64 %indvars.iv417
  %75 = load i32** %arrayidx187, align 8, !tbaa !0
  %arrayidx188 = getelementptr inbounds i32* %75, i64 %idxprom184
  %76 = load i32* %arrayidx188, align 4, !tbaa !3
  %77 = load i32*** %mmx192, align 8, !tbaa !0
  %arrayidx193 = getelementptr inbounds i32** %77, i64 %indvars.iv417
  %78 = load i32** %arrayidx193, align 8, !tbaa !0
  %arrayidx194 = getelementptr inbounds i32* %78, i64 %idxprom184
  store i32 %76, i32* %arrayidx194, align 4, !tbaa !3
  %79 = load i32* %M, align 4, !tbaa !3
  %sub196 = add nsw i32 %79, -1
  %idxprom197 = sext i32 %sub196 to i64
  %80 = load i32*** %mmx200, align 8, !tbaa !0
  %arrayidx201 = getelementptr inbounds i32** %80, i64 %indvars.iv.next418
  %81 = load i32** %arrayidx201, align 8, !tbaa !0
  %arrayidx202 = getelementptr inbounds i32* %81, i64 %idxprom197
  %82 = load i32* %arrayidx202, align 4, !tbaa !3
  %83 = load i32*** %tsc206, align 8, !tbaa !0
  %84 = load i32** %83, align 8, !tbaa !0
  %arrayidx208 = getelementptr inbounds i32* %84, i64 %idxprom197
  %85 = load i32* %arrayidx208, align 4, !tbaa !3
  %add209 = add nsw i32 %85, %82
  %86 = load i32*** %imx215, align 8, !tbaa !0
  %arrayidx216 = getelementptr inbounds i32** %86, i64 %indvars.iv.next418
  %87 = load i32** %arrayidx216, align 8, !tbaa !0
  %arrayidx217 = getelementptr inbounds i32* %87, i64 %idxprom197
  %88 = load i32* %arrayidx217, align 4, !tbaa !3
  %arrayidx222 = getelementptr inbounds i32** %83, i64 3
  %89 = load i32** %arrayidx222, align 8, !tbaa !0
  %arrayidx223 = getelementptr inbounds i32* %89, i64 %idxprom197
  %90 = load i32* %arrayidx223, align 4, !tbaa !3
  %add224 = add nsw i32 %90, %88
  %call225 = tail call i32 @ILogsum(i32 %add209, i32 %add224) #2
  %91 = load i32*** %xmx2, align 8, !tbaa !0
  %arrayidx229 = getelementptr inbounds i32** %91, i64 %indvars.iv.next418
  %92 = load i32** %arrayidx229, align 8, !tbaa !0
  %93 = load i32* %92, align 4, !tbaa !3
  %94 = load i32* %M, align 4, !tbaa !3
  %idxprom232 = sext i32 %94 to i64
  %95 = load i32** %bsc233, align 8, !tbaa !0
  %arrayidx234 = getelementptr inbounds i32* %95, i64 %idxprom232
  %96 = load i32* %arrayidx234, align 4, !tbaa !3
  %add235 = add nsw i32 %96, %93
  %sub237 = add nsw i32 %94, -1
  %idxprom238 = sext i32 %sub237 to i64
  %97 = load i32*** %dmx241, align 8, !tbaa !0
  %arrayidx242 = getelementptr inbounds i32** %97, i64 %indvars.iv.next418
  %98 = load i32** %arrayidx242, align 8, !tbaa !0
  %arrayidx243 = getelementptr inbounds i32* %98, i64 %idxprom238
  %99 = load i32* %arrayidx243, align 4, !tbaa !3
  %100 = load i32*** %tsc206, align 8, !tbaa !0
  %arrayidx248 = getelementptr inbounds i32** %100, i64 5
  %101 = load i32** %arrayidx248, align 8, !tbaa !0
  %arrayidx249 = getelementptr inbounds i32* %101, i64 %idxprom238
  %102 = load i32* %arrayidx249, align 4, !tbaa !3
  %add250 = add nsw i32 %102, %99
  %call251 = tail call i32 @ILogsum(i32 %add235, i32 %add250) #2
  %call252 = tail call i32 @ILogsum(i32 %call225, i32 %call251) #2
  %103 = load i32* %M, align 4, !tbaa !3
  %idxprom254 = sext i32 %103 to i64
  %104 = load i32*** %mmx192, align 8, !tbaa !0
  %arrayidx257 = getelementptr inbounds i32** %104, i64 %indvars.iv417
  %105 = load i32** %arrayidx257, align 8, !tbaa !0
  %arrayidx258 = getelementptr inbounds i32* %105, i64 %idxprom254
  %106 = load i32* %arrayidx258, align 4, !tbaa !3
  %add259 = add nsw i32 %106, %call252
  store i32 %add259, i32* %arrayidx258, align 4, !tbaa !3
  %107 = load i32* %M, align 4, !tbaa !3
  %idxprom261 = sext i32 %107 to i64
  %arrayidx265 = getelementptr inbounds i32* %105, i64 %idxprom261
  %108 = load i32* %arrayidx265, align 4, !tbaa !3
  %sub266 = sub nsw i32 %108, %2
  store i32 %sub266, i32* %arrayidx265, align 4, !tbaa !3
  %109 = load i32*** %dmx268, align 8, !tbaa !0
  %arrayidx269 = getelementptr inbounds i32** %109, i64 %indvars.iv417
  %110 = load i32** %arrayidx269, align 8, !tbaa !0
  store i32 -987654321, i32* %110, align 4, !tbaa !3
  %111 = load i32* %M, align 4, !tbaa !3
  %idxprom272 = sext i32 %111 to i64
  %arrayidx276 = getelementptr inbounds i32* %110, i64 %idxprom272
  store i32 -987654321, i32* %arrayidx276, align 4, !tbaa !3
  %112 = load i32* %M, align 4, !tbaa !3
  %idxprom278 = sext i32 %112 to i64
  %113 = load i32*** %imx280, align 8, !tbaa !0
  %arrayidx281 = getelementptr inbounds i32** %113, i64 %indvars.iv417
  %114 = load i32** %arrayidx281, align 8, !tbaa !0
  %arrayidx282 = getelementptr inbounds i32* %114, i64 %idxprom278
  store i32 -987654321, i32* %arrayidx282, align 4, !tbaa !3
  %115 = trunc i64 %indvars.iv.next418 to i32
  %cmp = icmp sgt i32 %115, 0
  br i1 %cmp, label %for.end.for.body_crit_edge, label %for.end284

for.end.for.body_crit_edge:                       ; preds = %for.end
  %.pre = load i32*** %xmx, align 8, !tbaa !0
  br label %for.body

for.end284:                                       ; preds = %for.end, %entry
  ret void
}

; Function Attrs: nounwind optsize uwtable
define float @P7FillOptimalAccuracy(i32 %L, i32 %M, %struct.dpmatrix_s* nocapture %posterior, %struct.dpmatrix_s* nocapture %mx, %struct.p7trace_s** %ret_tr) #0 {
entry:
  %tr = alloca %struct.p7trace_s*, align 8
  %xmx1 = getelementptr inbounds %struct.dpmatrix_s* %mx, i64 0, i32 0
  %0 = load i32*** %xmx1, align 8, !tbaa !0
  %mmx2 = getelementptr inbounds %struct.dpmatrix_s* %mx, i64 0, i32 1
  %1 = load i32*** %mmx2, align 8, !tbaa !0
  %imx3 = getelementptr inbounds %struct.dpmatrix_s* %mx, i64 0, i32 2
  %2 = load i32*** %imx3, align 8, !tbaa !0
  %dmx4 = getelementptr inbounds %struct.dpmatrix_s* %mx, i64 0, i32 3
  %3 = load i32*** %dmx4, align 8, !tbaa !0
  %4 = load i32** %0, align 8, !tbaa !0
  %arrayidx5 = getelementptr inbounds i32* %4, i64 3
  store i32 -987654321, i32* %arrayidx5, align 4, !tbaa !3
  %arrayidx7 = getelementptr inbounds i32* %4, i64 2
  store i32 -987654321, i32* %arrayidx7, align 4, !tbaa !3
  %arrayidx9 = getelementptr inbounds i32* %4, i64 1
  store i32 -987654321, i32* %arrayidx9, align 4, !tbaa !3
  store i32 -987654321, i32* %4, align 4, !tbaa !3
  %arrayidx13 = getelementptr inbounds i32* %4, i64 4
  store i32 -987654321, i32* %arrayidx13, align 4, !tbaa !3
  %cmp547 = icmp slt i32 %M, 0
  br i1 %cmp547, label %for.cond22.preheader, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %entry
  %5 = load i32** %3, align 8, !tbaa !0
  %6 = load i32** %2, align 8, !tbaa !0
  %7 = load i32** %1, align 8, !tbaa !0
  %8 = add i32 %M, 1
  br label %for.body

for.cond22.preheader:                             ; preds = %for.body, %entry
  %cmp23545 = icmp slt i32 %L, 1
  br i1 %cmp23545, label %for.end332, label %for.body24.lr.ph

for.body24.lr.ph:                                 ; preds = %for.cond22.preheader
  %cmp35541 = icmp slt i32 %M, 1
  %xmx214 = getelementptr inbounds %struct.dpmatrix_s* %posterior, i64 0, i32 0
  %mmx110 = getelementptr inbounds %struct.dpmatrix_s* %posterior, i64 0, i32 1
  %imx195 = getelementptr inbounds %struct.dpmatrix_s* %posterior, i64 0, i32 2
  %9 = add i32 %M, 1
  %10 = add i32 %L, 1
  br label %for.body24

for.body:                                         ; preds = %for.body, %for.body.lr.ph
  %indvars.iv560 = phi i64 [ %indvars.iv.next561, %for.body ], [ 0, %for.body.lr.ph ]
  %arrayidx15 = getelementptr inbounds i32* %5, i64 %indvars.iv560
  store i32 -987654321, i32* %arrayidx15, align 4, !tbaa !3
  %arrayidx18 = getelementptr inbounds i32* %6, i64 %indvars.iv560
  store i32 -987654321, i32* %arrayidx18, align 4, !tbaa !3
  %arrayidx21 = getelementptr inbounds i32* %7, i64 %indvars.iv560
  store i32 -987654321, i32* %arrayidx21, align 4, !tbaa !3
  %indvars.iv.next561 = add i64 %indvars.iv560, 1
  %lftr.wideiv562 = trunc i64 %indvars.iv.next561 to i32
  %exitcond563 = icmp eq i32 %lftr.wideiv562, %8
  br i1 %exitcond563, label %for.cond22.preheader, label %for.body

for.body24:                                       ; preds = %for.inc330, %for.body24.lr.ph
  %indvars.iv554 = phi i64 [ %indvars.iv.next555, %for.inc330 ], [ 1, %for.body24.lr.ph ]
  %arrayidx26 = getelementptr inbounds i32** %3, i64 %indvars.iv554
  %11 = load i32** %arrayidx26, align 8, !tbaa !0
  store i32 -987654321, i32* %11, align 4, !tbaa !3
  %arrayidx29 = getelementptr inbounds i32** %2, i64 %indvars.iv554
  %12 = load i32** %arrayidx29, align 8, !tbaa !0
  store i32 -987654321, i32* %12, align 4, !tbaa !3
  %arrayidx32 = getelementptr inbounds i32** %1, i64 %indvars.iv554
  %13 = load i32** %arrayidx32, align 8, !tbaa !0
  store i32 -987654321, i32* %13, align 4, !tbaa !3
  %.pre569 = add nsw i64 %indvars.iv554, -1
  br i1 %cmp35541, label %for.body24.for.end205_crit_edge, label %for.body36.lr.ph

for.body24.for.end205_crit_edge:                  ; preds = %for.body24
  %arrayidx211.pre = getelementptr inbounds i32** %0, i64 %.pre569
  br label %for.end205

for.body36.lr.ph:                                 ; preds = %for.body24
  %arrayidx44 = getelementptr inbounds i32** %1, i64 %.pre569
  %arrayidx59 = getelementptr inbounds i32** %2, i64 %.pre569
  %arrayidx76 = getelementptr inbounds i32** %3, i64 %.pre569
  %arrayidx91 = getelementptr inbounds i32** %0, i64 %.pre569
  br label %for.body36

for.body36:                                       ; preds = %if.end188.for.body36_crit_edge, %for.body36.lr.ph
  %14 = phi i32* [ %.pre568, %if.end188.for.body36_crit_edge ], [ %13, %for.body36.lr.ph ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %if.end188.for.body36_crit_edge ], [ 1, %for.body36.lr.ph ]
  %arrayidx40 = getelementptr inbounds i32* %14, i64 %indvars.iv
  store i32 -987654321, i32* %arrayidx40, align 4, !tbaa !3
  %15 = add nsw i64 %indvars.iv, -1
  %16 = load i32** %arrayidx44, align 8, !tbaa !0
  %arrayidx45 = getelementptr inbounds i32* %16, i64 %15
  %17 = load i32* %arrayidx45, align 4, !tbaa !3
  %cmp50 = icmp sgt i32 %17, -987654321
  %. = select i1 %cmp50, i32 %17, i32 -987654321
  store i32 %., i32* %arrayidx40, align 4, !tbaa !3
  %.570 = select i1 %cmp50, i32 %17, i32 -987654321
  %18 = load i32** %arrayidx59, align 8, !tbaa !0
  %arrayidx60 = getelementptr inbounds i32* %18, i64 %15
  %19 = load i32* %arrayidx60, align 4, !tbaa !3
  %cmp65 = icmp sgt i32 %19, %.570
  %.. = select i1 %cmp65, i32 %19, i32 %.
  store i32 %.., i32* %arrayidx40, align 4, !tbaa !3
  %..570 = select i1 %cmp65, i32 %19, i32 %.570
  %20 = load i32** %arrayidx76, align 8, !tbaa !0
  %arrayidx77 = getelementptr inbounds i32* %20, i64 %15
  %21 = load i32* %arrayidx77, align 4, !tbaa !3
  %cmp82 = icmp sgt i32 %21, %..570
  %... = select i1 %cmp82, i32 %21, i32 %..
  store i32 %..., i32* %arrayidx40, align 4, !tbaa !3
  %...570 = select i1 %cmp82, i32 %21, i32 %..570
  %22 = load i32** %arrayidx91, align 8, !tbaa !0
  %23 = load i32* %22, align 4, !tbaa !3
  %cmp97 = icmp sgt i32 %23, %...570
  %.... = select i1 %cmp97, i32 %23, i32 %...
  store i32 %...., i32* %arrayidx40, align 4, !tbaa !3
  %....570 = select i1 %cmp97, i32 %23, i32 %...570
  %24 = load i32*** %mmx110, align 8, !tbaa !0
  %arrayidx111 = getelementptr inbounds i32** %24, i64 %indvars.iv554
  %25 = load i32** %arrayidx111, align 8, !tbaa !0
  %arrayidx112 = getelementptr inbounds i32* %25, i64 %indvars.iv
  %26 = load i32* %arrayidx112, align 4, !tbaa !3
  %call = call i32 @ILogsum(i32 %....570, i32 %26) #2
  %27 = load i32** %arrayidx32, align 8, !tbaa !0
  %arrayidx116 = getelementptr inbounds i32* %27, i64 %indvars.iv
  store i32 %call, i32* %arrayidx116, align 4, !tbaa !3
  %28 = load i32** %arrayidx26, align 8, !tbaa !0
  %arrayidx120 = getelementptr inbounds i32* %28, i64 %indvars.iv
  store i32 -987654321, i32* %arrayidx120, align 4, !tbaa !3
  %arrayidx125 = getelementptr inbounds i32* %27, i64 %15
  %29 = load i32* %arrayidx125, align 4, !tbaa !3
  %cmp130 = icmp sgt i32 %29, -987654321
  %.571 = select i1 %cmp130, i32 %29, i32 -987654321
  store i32 %.571, i32* %arrayidx120, align 4, !tbaa !3
  %.572 = select i1 %cmp130, i32 %29, i32 -987654321
  %arrayidx141 = getelementptr inbounds i32* %28, i64 %15
  %30 = load i32* %arrayidx141, align 4, !tbaa !3
  %cmp146 = icmp sgt i32 %30, %.572
  %..571 = select i1 %cmp146, i32 %30, i32 %.571
  store i32 %..571, i32* %arrayidx120, align 4, !tbaa !3
  %31 = load i32** %arrayidx29, align 8, !tbaa !0
  %arrayidx156 = getelementptr inbounds i32* %31, i64 %indvars.iv
  store i32 -987654321, i32* %arrayidx156, align 4, !tbaa !3
  %32 = load i32** %arrayidx44, align 8, !tbaa !0
  %arrayidx161 = getelementptr inbounds i32* %32, i64 %indvars.iv
  %33 = load i32* %arrayidx161, align 4, !tbaa !3
  %cmp166 = icmp sgt i32 %33, -987654321
  %.573 = select i1 %cmp166, i32 %33, i32 -987654321
  store i32 %.573, i32* %arrayidx156, align 4, !tbaa !3
  %.574 = select i1 %cmp166, i32 %33, i32 -987654321
  %34 = load i32** %arrayidx59, align 8, !tbaa !0
  %arrayidx177 = getelementptr inbounds i32* %34, i64 %indvars.iv
  %35 = load i32* %arrayidx177, align 4, !tbaa !3
  %cmp182 = icmp sgt i32 %35, %.574
  %..573 = select i1 %cmp182, i32 %35, i32 %.573
  store i32 %..573, i32* %arrayidx156, align 4, !tbaa !3
  %..574 = select i1 %cmp182, i32 %35, i32 %.574
  %36 = load i32*** %imx195, align 8, !tbaa !0
  %arrayidx196 = getelementptr inbounds i32** %36, i64 %indvars.iv554
  %37 = load i32** %arrayidx196, align 8, !tbaa !0
  %arrayidx197 = getelementptr inbounds i32* %37, i64 %indvars.iv
  %38 = load i32* %arrayidx197, align 4, !tbaa !3
  %call198 = call i32 @ILogsum(i32 %..574, i32 %38) #2
  %39 = load i32** %arrayidx29, align 8, !tbaa !0
  %arrayidx202 = getelementptr inbounds i32* %39, i64 %indvars.iv
  store i32 %call198, i32* %arrayidx202, align 4, !tbaa !3
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %9
  br i1 %exitcond, label %for.end205, label %if.end188.for.body36_crit_edge

if.end188.for.body36_crit_edge:                   ; preds = %for.body36
  %.pre568 = load i32** %arrayidx32, align 8, !tbaa !0
  br label %for.body36

for.end205:                                       ; preds = %for.body36, %for.body24.for.end205_crit_edge
  %arrayidx211.pre-phi = phi i32** [ %arrayidx211.pre, %for.body24.for.end205_crit_edge ], [ %arrayidx91, %for.body36 ]
  %arrayidx207 = getelementptr inbounds i32** %0, i64 %indvars.iv554
  %40 = load i32** %arrayidx207, align 8, !tbaa !0
  %arrayidx208 = getelementptr inbounds i32* %40, i64 4
  store i32 -987654321, i32* %arrayidx208, align 4, !tbaa !3
  %41 = load i32** %arrayidx211.pre-phi, align 8, !tbaa !0
  %arrayidx212 = getelementptr inbounds i32* %41, i64 4
  %42 = load i32* %arrayidx212, align 4, !tbaa !3
  %43 = load i32*** %xmx214, align 8, !tbaa !0
  %arrayidx215 = getelementptr inbounds i32** %43, i64 %indvars.iv554
  %44 = load i32** %arrayidx215, align 8, !tbaa !0
  %arrayidx216 = getelementptr inbounds i32* %44, i64 4
  %45 = load i32* %arrayidx216, align 4, !tbaa !3
  %call217 = call i32 @ILogsum(i32 %42, i32 %45) #2
  %cmp218 = icmp sgt i32 %call217, -987654321
  %46 = load i32** %arrayidx207, align 8, !tbaa !0
  br i1 %cmp218, label %if.then219, label %if.end223

if.then219:                                       ; preds = %for.end205
  %arrayidx222 = getelementptr inbounds i32* %46, i64 4
  store i32 %call217, i32* %arrayidx222, align 4, !tbaa !3
  br label %if.end223

if.end223:                                        ; preds = %for.end205, %if.then219
  %arrayidx226 = getelementptr inbounds i32* %46, i64 1
  store i32 -987654321, i32* %arrayidx226, align 4, !tbaa !3
  br i1 %cmp35541, label %for.end245, label %for.body229.lr.ph

for.body229.lr.ph:                                ; preds = %if.end223
  %47 = load i32** %arrayidx32, align 8, !tbaa !0
  br label %for.body229

for.body229:                                      ; preds = %for.inc243, %for.body229.lr.ph
  %48 = phi i32 [ %50, %for.inc243 ], [ -987654321, %for.body229.lr.ph ]
  %indvars.iv550 = phi i64 [ %indvars.iv.next551, %for.inc243 ], [ 1, %for.body229.lr.ph ]
  %arrayidx233 = getelementptr inbounds i32* %47, i64 %indvars.iv550
  %49 = load i32* %arrayidx233, align 4, !tbaa !3
  %cmp237 = icmp sgt i32 %49, %48
  br i1 %cmp237, label %if.then238, label %for.inc243

if.then238:                                       ; preds = %for.body229
  store i32 %49, i32* %arrayidx226, align 4, !tbaa !3
  br label %for.inc243

for.inc243:                                       ; preds = %for.body229, %if.then238
  %50 = phi i32 [ %48, %for.body229 ], [ %49, %if.then238 ]
  %indvars.iv.next551 = add i64 %indvars.iv550, 1
  %lftr.wideiv552 = trunc i64 %indvars.iv.next551 to i32
  %exitcond553 = icmp eq i32 %lftr.wideiv552, %9
  br i1 %exitcond553, label %for.end245, label %for.body229

for.end245:                                       ; preds = %for.inc243, %if.end223
  %arrayidx248 = getelementptr inbounds i32* %46, i64 3
  store i32 -987654321, i32* %arrayidx248, align 4, !tbaa !3
  %51 = load i32** %arrayidx211.pre-phi, align 8, !tbaa !0
  %arrayidx252 = getelementptr inbounds i32* %51, i64 3
  %52 = load i32* %arrayidx252, align 4, !tbaa !3
  %53 = load i32*** %xmx214, align 8, !tbaa !0
  %arrayidx255 = getelementptr inbounds i32** %53, i64 %indvars.iv554
  %54 = load i32** %arrayidx255, align 8, !tbaa !0
  %arrayidx256 = getelementptr inbounds i32* %54, i64 3
  %55 = load i32* %arrayidx256, align 4, !tbaa !3
  %call257 = call i32 @ILogsum(i32 %52, i32 %55) #2
  %cmp258 = icmp sgt i32 %call257, -987654321
  %56 = load i32** %arrayidx207, align 8, !tbaa !0
  %arrayidx262 = getelementptr inbounds i32* %56, i64 3
  br i1 %cmp258, label %if.then259, label %for.end245.if.end263_crit_edge

for.end245.if.end263_crit_edge:                   ; preds = %for.end245
  %.pre565 = load i32* %arrayidx262, align 4, !tbaa !3
  br label %if.end263

if.then259:                                       ; preds = %for.end245
  store i32 %call257, i32* %arrayidx262, align 4, !tbaa !3
  br label %if.end263

if.end263:                                        ; preds = %for.end245.if.end263_crit_edge, %if.then259
  %57 = phi i32 [ %.pre565, %for.end245.if.end263_crit_edge ], [ %call257, %if.then259 ]
  %arrayidx266 = getelementptr inbounds i32* %56, i64 1
  %58 = load i32* %arrayidx266, align 4, !tbaa !3
  %cmp270 = icmp sgt i32 %58, %57
  br i1 %cmp270, label %if.then271, label %if.end275

if.then271:                                       ; preds = %if.end263
  %arrayidx269 = getelementptr inbounds i32* %56, i64 3
  store i32 %58, i32* %arrayidx269, align 4, !tbaa !3
  br label %if.end275

if.end275:                                        ; preds = %if.then271, %if.end263
  %59 = phi i32 [ %58, %if.then271 ], [ %57, %if.end263 ]
  store i32 -987654321, i32* %56, align 4, !tbaa !3
  %arrayidx281 = getelementptr inbounds i32* %56, i64 4
  %60 = load i32* %arrayidx281, align 4, !tbaa !3
  %cmp282 = icmp sgt i32 %60, -987654321
  %.575 = select i1 %cmp282, i32 %60, i32 -987654321
  %.576 = select i1 %cmp282, i32 %60, i32 -987654321
  %cmp294 = icmp sgt i32 %59, %.576
  %..575 = select i1 %cmp294, i32 %59, i32 %.575
  store i32 %..575, i32* %56, align 4, !tbaa !3
  %arrayidx302 = getelementptr inbounds i32* %56, i64 2
  store i32 -987654321, i32* %arrayidx302, align 4, !tbaa !3
  %61 = load i32** %arrayidx211.pre-phi, align 8, !tbaa !0
  %arrayidx306 = getelementptr inbounds i32* %61, i64 2
  %62 = load i32* %arrayidx306, align 4, !tbaa !3
  %63 = load i32*** %xmx214, align 8, !tbaa !0
  %arrayidx309 = getelementptr inbounds i32** %63, i64 %indvars.iv554
  %64 = load i32** %arrayidx309, align 8, !tbaa !0
  %arrayidx310 = getelementptr inbounds i32* %64, i64 2
  %65 = load i32* %arrayidx310, align 4, !tbaa !3
  %call311 = call i32 @ILogsum(i32 %62, i32 %65) #2
  %cmp312 = icmp sgt i32 %call311, -987654321
  %66 = load i32** %arrayidx207, align 8, !tbaa !0
  %arrayidx316 = getelementptr inbounds i32* %66, i64 2
  br i1 %cmp312, label %if.then313, label %if.end299.if.end317_crit_edge

if.end299.if.end317_crit_edge:                    ; preds = %if.end275
  %.pre567 = load i32* %arrayidx316, align 4, !tbaa !3
  br label %if.end317

if.then313:                                       ; preds = %if.end275
  store i32 %call311, i32* %arrayidx316, align 4, !tbaa !3
  br label %if.end317

if.end317:                                        ; preds = %if.end299.if.end317_crit_edge, %if.then313
  %67 = phi i32 [ %.pre567, %if.end299.if.end317_crit_edge ], [ %call311, %if.then313 ]
  %arrayidx320 = getelementptr inbounds i32* %66, i64 1
  %68 = load i32* %arrayidx320, align 4, !tbaa !3
  %cmp324 = icmp sgt i32 %68, %67
  br i1 %cmp324, label %if.then325, label %for.inc330

if.then325:                                       ; preds = %if.end317
  %arrayidx323 = getelementptr inbounds i32* %66, i64 2
  store i32 %68, i32* %arrayidx323, align 4, !tbaa !3
  br label %for.inc330

for.inc330:                                       ; preds = %if.end317, %if.then325
  %indvars.iv.next555 = add i64 %indvars.iv554, 1
  %lftr.wideiv558 = trunc i64 %indvars.iv.next555 to i32
  %exitcond559 = icmp eq i32 %lftr.wideiv558, %10
  br i1 %exitcond559, label %for.end332, label %for.body24

for.end332:                                       ; preds = %for.inc330, %for.cond22.preheader
  %idxprom333 = sext i32 %L to i64
  %arrayidx334 = getelementptr inbounds i32** %0, i64 %idxprom333
  %69 = load i32** %arrayidx334, align 8, !tbaa !0
  %arrayidx335 = getelementptr inbounds i32* %69, i64 2
  %70 = load i32* %arrayidx335, align 4, !tbaa !3
  %cmp336 = icmp eq %struct.p7trace_s** %ret_tr, null
  br i1 %cmp336, label %if.end338, label %if.then337

if.then337:                                       ; preds = %for.end332
  call void @P7OptimalAccuracyTrace(i32 %L, i32 %M, %struct.dpmatrix_s* %posterior, %struct.dpmatrix_s* %mx, %struct.p7trace_s** %tr) #3
  %71 = load %struct.p7trace_s** %tr, align 8, !tbaa !0
  store %struct.p7trace_s* %71, %struct.p7trace_s** %ret_tr, align 8, !tbaa !0
  br label %if.end338

if.end338:                                        ; preds = %for.end332, %if.then337
  %call339 = call float @Score2Prob(i32 %70, float 1.000000e+00) #2
  ret float %call339
}

; Function Attrs: optsize
declare void @FreePlan7Matrix(%struct.dpmatrix_s*) #1

; Function Attrs: optsize
declare %struct.dpmatrix_s* @AllocPlan7Matrix(i32, i32, i32***, i32***, i32***, i32***) #1

; Function Attrs: optsize
declare i32 @ILogsum(i32, i32) #1

; Function Attrs: optsize
declare float @Scorify(i32) #1

; Function Attrs: nounwind optsize uwtable
define void @P7OptimalAccuracyTrace(i32 %L, i32 %M, %struct.dpmatrix_s* nocapture %posterior, %struct.dpmatrix_s* nocapture %mx, %struct.p7trace_s** nocapture %ret_tr) #0 {
entry:
  %tr = alloca %struct.p7trace_s*, align 8
  %mul = shl nsw i32 %L, 1
  %add = add nsw i32 %mul, 6
  call void @P7AllocTrace(i32 %add, %struct.p7trace_s** %tr) #2
  %xmx1 = getelementptr inbounds %struct.dpmatrix_s* %mx, i64 0, i32 0
  %0 = load i32*** %xmx1, align 8, !tbaa !0
  %mmx2 = getelementptr inbounds %struct.dpmatrix_s* %mx, i64 0, i32 1
  %1 = load i32*** %mmx2, align 8, !tbaa !0
  %imx3 = getelementptr inbounds %struct.dpmatrix_s* %mx, i64 0, i32 2
  %2 = load i32*** %imx3, align 8, !tbaa !0
  %dmx4 = getelementptr inbounds %struct.dpmatrix_s* %mx, i64 0, i32 3
  %3 = load i32*** %dmx4, align 8, !tbaa !0
  %4 = load %struct.p7trace_s** %tr, align 8, !tbaa !0
  %statetype = getelementptr inbounds %struct.p7trace_s* %4, i64 0, i32 1
  %5 = load i8** %statetype, align 8, !tbaa !0
  store i8 9, i8* %5, align 1, !tbaa !1
  %6 = load %struct.p7trace_s** %tr, align 8, !tbaa !0
  %nodeidx = getelementptr inbounds %struct.p7trace_s* %6, i64 0, i32 2
  %7 = load i32** %nodeidx, align 8, !tbaa !0
  store i32 0, i32* %7, align 4, !tbaa !3
  %pos = getelementptr inbounds %struct.p7trace_s* %6, i64 0, i32 3
  %8 = load i32** %pos, align 8, !tbaa !0
  store i32 0, i32* %8, align 4, !tbaa !3
  %statetype7 = getelementptr inbounds %struct.p7trace_s* %6, i64 0, i32 1
  %9 = load i8** %statetype7, align 8, !tbaa !0
  %arrayidx8 = getelementptr inbounds i8* %9, i64 1
  store i8 8, i8* %arrayidx8, align 1, !tbaa !1
  %10 = load %struct.p7trace_s** %tr, align 8, !tbaa !0
  %nodeidx9 = getelementptr inbounds %struct.p7trace_s* %10, i64 0, i32 2
  %11 = load i32** %nodeidx9, align 8, !tbaa !0
  %arrayidx10 = getelementptr inbounds i32* %11, i64 1
  store i32 0, i32* %arrayidx10, align 4, !tbaa !3
  %pos11 = getelementptr inbounds %struct.p7trace_s* %10, i64 0, i32 3
  %12 = load i32** %pos11, align 8, !tbaa !0
  %arrayidx12 = getelementptr inbounds i32* %12, i64 1
  store i32 0, i32* %arrayidx12, align 4, !tbaa !3
  %mmx35 = getelementptr inbounds %struct.dpmatrix_s* %posterior, i64 0, i32 1
  %imx218 = getelementptr inbounds %struct.dpmatrix_s* %posterior, i64 0, i32 2
  %xmx308 = getelementptr inbounds %struct.dpmatrix_s* %posterior, i64 0, i32 0
  %cmp377740 = icmp sgt i32 %M, 0
  %13 = sext i32 %M to i64
  br label %while.cond.outer

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
  %15 = add nsw i64 %indvars.iv748, -1
  %16 = load %struct.p7trace_s** %tr, align 8, !tbaa !0
  %statetype13 = getelementptr inbounds %struct.p7trace_s* %16, i64 0, i32 1
  %17 = load i8** %statetype13, align 8, !tbaa !0
  %arrayidx14 = getelementptr inbounds i8* %17, i64 %15
  %18 = load i8* %arrayidx14, align 1, !tbaa !1
  %cmp = icmp eq i8 %18, 4
  br i1 %cmp, label %while.end, label %while.body

while.body:                                       ; preds = %while.cond
  %conv = sext i8 %18 to i32
  switch i32 %conv, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb146
    i32 3, label %sw.bb205
    i32 5, label %sw.bb276
    i32 6, label %sw.bb335
    i32 7, label %for.cond.preheader
    i32 8, label %sw.bb409
    i32 10, label %sw.bb464
  ]

for.cond.preheader:                               ; preds = %while.body
  br i1 %cmp377740, label %for.body.lr.ph, label %if.then407

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %idxprom379 = sext i32 %i.0 to i64
  %arrayidx380 = getelementptr inbounds i32** %0, i64 %idxprom379
  %19 = load i32** %arrayidx380, align 8, !tbaa !0
  %arrayidx381 = getelementptr inbounds i32* %19, i64 1
  %20 = load i32* %arrayidx381, align 4, !tbaa !3
  %arrayidx384 = getelementptr inbounds i32** %1, i64 %idxprom379
  %21 = load i32** %arrayidx384, align 8, !tbaa !0
  %cmp389 = icmp sgt i32 %i.0, 0
  br label %for.body

sw.bb:                                            ; preds = %while.body
  %add21 = add nsw i32 %k.0, 1
  %idxprom22 = sext i32 %add21 to i64
  %add23 = add nsw i32 %i.0, 1
  %idxprom24 = sext i32 %add23 to i64
  %arrayidx25 = getelementptr inbounds i32** %1, i64 %idxprom24
  %22 = load i32** %arrayidx25, align 8, !tbaa !0
  %arrayidx26 = getelementptr inbounds i32* %22, i64 %idxprom22
  %23 = load i32* %arrayidx26, align 4, !tbaa !3
  %idxprom27 = sext i32 %k.0 to i64
  %idxprom28 = sext i32 %i.0 to i64
  %arrayidx29 = getelementptr inbounds i32** %1, i64 %idxprom28
  %24 = load i32** %arrayidx29, align 8, !tbaa !0
  %arrayidx30 = getelementptr inbounds i32* %24, i64 %idxprom27
  %25 = load i32* %arrayidx30, align 4, !tbaa !3
  %26 = load i32*** %mmx35, align 8, !tbaa !0
  %arrayidx36 = getelementptr inbounds i32** %26, i64 %idxprom24
  %27 = load i32** %arrayidx36, align 8, !tbaa !0
  %arrayidx37 = getelementptr inbounds i32* %27, i64 %idxprom22
  %28 = load i32* %arrayidx37, align 4, !tbaa !3
  %call = call i32 @ILogsum(i32 %25, i32 %28) #2
  %cmp38 = icmp eq i32 %23, %call
  %cmp40 = icmp sgt i32 %i.0, 0
  %or.cond = and i1 %cmp38, %cmp40
  %cmp43 = icmp sgt i32 %k.0, 0
  %or.cond720 = and i1 %or.cond, %cmp43
  br i1 %or.cond720, label %if.then, label %if.else

if.then:                                          ; preds = %sw.bb
  %29 = load %struct.p7trace_s** %tr, align 8, !tbaa !0
  %statetype46 = getelementptr inbounds %struct.p7trace_s* %29, i64 0, i32 1
  %30 = load i8** %statetype46, align 8, !tbaa !0
  %arrayidx47 = getelementptr inbounds i8* %30, i64 %indvars.iv748
  store i8 1, i8* %arrayidx47, align 1, !tbaa !1
  %dec = add nsw i32 %k.0, -1
  %31 = load %struct.p7trace_s** %tr, align 8, !tbaa !0
  %nodeidx49 = getelementptr inbounds %struct.p7trace_s* %31, i64 0, i32 2
  %32 = load i32** %nodeidx49, align 8, !tbaa !0
  %arrayidx50 = getelementptr inbounds i32* %32, i64 %indvars.iv748
  store i32 %k.0, i32* %arrayidx50, align 4, !tbaa !3
  %dec51 = add nsw i32 %i.0, -1
  %pos53 = getelementptr inbounds %struct.p7trace_s* %31, i64 0, i32 3
  %33 = load i32** %pos53, align 8, !tbaa !0
  %arrayidx54 = getelementptr inbounds i32* %33, i64 %indvars.iv748
  store i32 %i.0, i32* %arrayidx54, align 4, !tbaa !3
  br label %sw.epilog

if.else:                                          ; preds = %sw.bb
  %arrayidx57 = getelementptr inbounds i32** %2, i64 %idxprom28
  %34 = load i32** %arrayidx57, align 8, !tbaa !0
  %arrayidx58 = getelementptr inbounds i32* %34, i64 %idxprom27
  %35 = load i32* %arrayidx58, align 4, !tbaa !3
  %36 = load i32*** %mmx35, align 8, !tbaa !0
  %arrayidx64 = getelementptr inbounds i32** %36, i64 %idxprom24
  %37 = load i32** %arrayidx64, align 8, !tbaa !0
  %arrayidx65 = getelementptr inbounds i32* %37, i64 %idxprom22
  %38 = load i32* %arrayidx65, align 4, !tbaa !3
  %call66 = call i32 @ILogsum(i32 %35, i32 %38) #2
  %cmp67 = icmp eq i32 %23, %call66
  %or.cond721 = and i1 %cmp67, %cmp40
  %or.cond722 = and i1 %or.cond721, %cmp43
  br i1 %or.cond722, label %if.then75, label %if.else86

if.then75:                                        ; preds = %if.else
  %39 = load %struct.p7trace_s** %tr, align 8, !tbaa !0
  %statetype77 = getelementptr inbounds %struct.p7trace_s* %39, i64 0, i32 1
  %40 = load i8** %statetype77, align 8, !tbaa !0
  %arrayidx78 = getelementptr inbounds i8* %40, i64 %indvars.iv748
  store i8 3, i8* %arrayidx78, align 1, !tbaa !1
  %41 = load %struct.p7trace_s** %tr, align 8, !tbaa !0
  %nodeidx80 = getelementptr inbounds %struct.p7trace_s* %41, i64 0, i32 2
  %42 = load i32** %nodeidx80, align 8, !tbaa !0
  %arrayidx81 = getelementptr inbounds i32* %42, i64 %indvars.iv748
  store i32 %k.0, i32* %arrayidx81, align 4, !tbaa !3
  %dec82 = add nsw i32 %i.0, -1
  %pos84 = getelementptr inbounds %struct.p7trace_s* %41, i64 0, i32 3
  %43 = load i32** %pos84, align 8, !tbaa !0
  %arrayidx85 = getelementptr inbounds i32* %43, i64 %indvars.iv748
  store i32 %i.0, i32* %arrayidx85, align 4, !tbaa !3
  br label %sw.epilog

if.else86:                                        ; preds = %if.else
  %arrayidx89 = getelementptr inbounds i32** %3, i64 %idxprom28
  %44 = load i32** %arrayidx89, align 8, !tbaa !0
  %arrayidx90 = getelementptr inbounds i32* %44, i64 %idxprom27
  %45 = load i32* %arrayidx90, align 4, !tbaa !3
  %46 = load i32*** %mmx35, align 8, !tbaa !0
  %arrayidx96 = getelementptr inbounds i32** %46, i64 %idxprom24
  %47 = load i32** %arrayidx96, align 8, !tbaa !0
  %arrayidx97 = getelementptr inbounds i32* %47, i64 %idxprom22
  %48 = load i32* %arrayidx97, align 4, !tbaa !3
  %call98 = call i32 @ILogsum(i32 %45, i32 %48) #2
  %cmp99 = icmp eq i32 %23, %call98
  %or.cond723 = and i1 %cmp99, %cmp40
  %cmp105 = icmp sgt i32 %k.0, 1
  %or.cond724 = and i1 %or.cond723, %cmp105
  br i1 %or.cond724, label %if.then107, label %if.else118

if.then107:                                       ; preds = %if.else86
  %49 = load %struct.p7trace_s** %tr, align 8, !tbaa !0
  %statetype109 = getelementptr inbounds %struct.p7trace_s* %49, i64 0, i32 1
  %50 = load i8** %statetype109, align 8, !tbaa !0
  %arrayidx110 = getelementptr inbounds i8* %50, i64 %indvars.iv748
  store i8 2, i8* %arrayidx110, align 1, !tbaa !1
  %dec111 = add nsw i32 %k.0, -1
  %51 = load %struct.p7trace_s** %tr, align 8, !tbaa !0
  %nodeidx113 = getelementptr inbounds %struct.p7trace_s* %51, i64 0, i32 2
  %52 = load i32** %nodeidx113, align 8, !tbaa !0
  %arrayidx114 = getelementptr inbounds i32* %52, i64 %indvars.iv748
  store i32 %k.0, i32* %arrayidx114, align 4, !tbaa !3
  %pos116 = getelementptr inbounds %struct.p7trace_s* %51, i64 0, i32 3
  %53 = load i32** %pos116, align 8, !tbaa !0
  %arrayidx117 = getelementptr inbounds i32* %53, i64 %indvars.iv748
  store i32 0, i32* %arrayidx117, align 4, !tbaa !3
  br label %sw.epilog

if.else118:                                       ; preds = %if.else86
  %arrayidx120 = getelementptr inbounds i32** %0, i64 %idxprom28
  %54 = load i32** %arrayidx120, align 8, !tbaa !0
  %55 = load i32* %54, align 4, !tbaa !3
  %56 = load i32*** %mmx35, align 8, !tbaa !0
  %arrayidx127 = getelementptr inbounds i32** %56, i64 %idxprom24
  %57 = load i32** %arrayidx127, align 8, !tbaa !0
  %arrayidx128 = getelementptr inbounds i32* %57, i64 %idxprom22
  %58 = load i32* %arrayidx128, align 4, !tbaa !3
  %call129 = call i32 @ILogsum(i32 %55, i32 %58) #2
  %cmp130 = icmp eq i32 %23, %call129
  br i1 %cmp130, label %if.then132, label %if.else142

if.then132:                                       ; preds = %if.else118
  %59 = load %struct.p7trace_s** %tr, align 8, !tbaa !0
  %statetype134 = getelementptr inbounds %struct.p7trace_s* %59, i64 0, i32 1
  %60 = load i8** %statetype134, align 8, !tbaa !0
  %arrayidx135 = getelementptr inbounds i8* %60, i64 %indvars.iv748
  store i8 6, i8* %arrayidx135, align 1, !tbaa !1
  %61 = load %struct.p7trace_s** %tr, align 8, !tbaa !0
  %nodeidx137 = getelementptr inbounds %struct.p7trace_s* %61, i64 0, i32 2
  %62 = load i32** %nodeidx137, align 8, !tbaa !0
  %arrayidx138 = getelementptr inbounds i32* %62, i64 %indvars.iv748
  store i32 0, i32* %arrayidx138, align 4, !tbaa !3
  %pos140 = getelementptr inbounds %struct.p7trace_s* %61, i64 0, i32 3
  %63 = load i32** %pos140, align 8, !tbaa !0
  %arrayidx141 = getelementptr inbounds i32* %63, i64 %indvars.iv748
  store i32 0, i32* %arrayidx141, align 4, !tbaa !3
  br label %sw.epilog

if.else142:                                       ; preds = %if.else118
  call void (i8*, ...)* @Die(i8* getelementptr inbounds ([17 x i8]* @.str, i64 0, i64 0)) #2
  br label %sw.epilog

sw.bb146:                                         ; preds = %while.body
  %add147 = add nsw i32 %k.0, 1
  %idxprom148 = sext i32 %add147 to i64
  %idxprom149 = sext i32 %i.0 to i64
  %arrayidx150 = getelementptr inbounds i32** %3, i64 %idxprom149
  %64 = load i32** %arrayidx150, align 8, !tbaa !0
  %arrayidx151 = getelementptr inbounds i32* %64, i64 %idxprom148
  %65 = load i32* %arrayidx151, align 4, !tbaa !3
  %idxprom152 = sext i32 %k.0 to i64
  %arrayidx154 = getelementptr inbounds i32** %1, i64 %idxprom149
  %66 = load i32** %arrayidx154, align 8, !tbaa !0
  %arrayidx155 = getelementptr inbounds i32* %66, i64 %idxprom152
  %67 = load i32* %arrayidx155, align 4, !tbaa !3
  %cmp156 = icmp eq i32 %65, %67
  %cmp159 = icmp sgt i32 %i.0, 0
  %or.cond725 = and i1 %cmp156, %cmp159
  %cmp162 = icmp sgt i32 %k.0, 0
  %or.cond726 = and i1 %or.cond725, %cmp162
  br i1 %or.cond726, label %if.then164, label %if.else176

if.then164:                                       ; preds = %sw.bb146
  %arrayidx167 = getelementptr inbounds i8* %17, i64 %indvars.iv748
  store i8 1, i8* %arrayidx167, align 1, !tbaa !1
  %dec168 = add nsw i32 %k.0, -1
  %68 = load %struct.p7trace_s** %tr, align 8, !tbaa !0
  %nodeidx170 = getelementptr inbounds %struct.p7trace_s* %68, i64 0, i32 2
  %69 = load i32** %nodeidx170, align 8, !tbaa !0
  %arrayidx171 = getelementptr inbounds i32* %69, i64 %indvars.iv748
  store i32 %k.0, i32* %arrayidx171, align 4, !tbaa !3
  %dec172 = add nsw i32 %i.0, -1
  %pos174 = getelementptr inbounds %struct.p7trace_s* %68, i64 0, i32 3
  %70 = load i32** %pos174, align 8, !tbaa !0
  %arrayidx175 = getelementptr inbounds i32* %70, i64 %indvars.iv748
  store i32 %i.0, i32* %arrayidx175, align 4, !tbaa !3
  br label %sw.epilog

if.else176:                                       ; preds = %sw.bb146
  %arrayidx185 = getelementptr inbounds i32* %64, i64 %idxprom152
  %71 = load i32* %arrayidx185, align 4, !tbaa !3
  %cmp186 = icmp eq i32 %65, %71
  %cmp189 = icmp sgt i32 %k.0, 1
  %or.cond727 = and i1 %cmp186, %cmp189
  br i1 %or.cond727, label %if.then191, label %if.else202

if.then191:                                       ; preds = %if.else176
  %arrayidx194 = getelementptr inbounds i8* %17, i64 %indvars.iv748
  store i8 2, i8* %arrayidx194, align 1, !tbaa !1
  %dec195 = add nsw i32 %k.0, -1
  %72 = load %struct.p7trace_s** %tr, align 8, !tbaa !0
  %nodeidx197 = getelementptr inbounds %struct.p7trace_s* %72, i64 0, i32 2
  %73 = load i32** %nodeidx197, align 8, !tbaa !0
  %arrayidx198 = getelementptr inbounds i32* %73, i64 %indvars.iv748
  store i32 %k.0, i32* %arrayidx198, align 4, !tbaa !3
  %pos200 = getelementptr inbounds %struct.p7trace_s* %72, i64 0, i32 3
  %74 = load i32** %pos200, align 8, !tbaa !0
  %arrayidx201 = getelementptr inbounds i32* %74, i64 %indvars.iv748
  store i32 0, i32* %arrayidx201, align 4, !tbaa !3
  br label %sw.epilog

if.else202:                                       ; preds = %if.else176
  call void (i8*, ...)* @Die(i8* getelementptr inbounds ([17 x i8]* @.str, i64 0, i64 0)) #2
  br label %sw.epilog

sw.bb205:                                         ; preds = %while.body
  %idxprom206 = sext i32 %k.0 to i64
  %add207 = add nsw i32 %i.0, 1
  %idxprom208 = sext i32 %add207 to i64
  %arrayidx209 = getelementptr inbounds i32** %2, i64 %idxprom208
  %75 = load i32** %arrayidx209, align 8, !tbaa !0
  %arrayidx210 = getelementptr inbounds i32* %75, i64 %idxprom206
  %76 = load i32* %arrayidx210, align 4, !tbaa !3
  %idxprom212 = sext i32 %i.0 to i64
  %arrayidx213 = getelementptr inbounds i32** %1, i64 %idxprom212
  %77 = load i32** %arrayidx213, align 8, !tbaa !0
  %arrayidx214 = getelementptr inbounds i32* %77, i64 %idxprom206
  %78 = load i32* %arrayidx214, align 4, !tbaa !3
  %79 = load i32*** %imx218, align 8, !tbaa !0
  %arrayidx219 = getelementptr inbounds i32** %79, i64 %idxprom208
  %80 = load i32** %arrayidx219, align 8, !tbaa !0
  %arrayidx220 = getelementptr inbounds i32* %80, i64 %idxprom206
  %81 = load i32* %arrayidx220, align 4, !tbaa !3
  %call221 = call i32 @ILogsum(i32 %78, i32 %81) #2
  %cmp222 = icmp eq i32 %76, %call221
  %cmp225 = icmp sgt i32 %i.0, 0
  %or.cond728 = and i1 %cmp222, %cmp225
  %cmp228 = icmp sgt i32 %k.0, 0
  %or.cond729 = and i1 %or.cond728, %cmp228
  br i1 %or.cond729, label %if.then230, label %if.else242

if.then230:                                       ; preds = %sw.bb205
  %82 = load %struct.p7trace_s** %tr, align 8, !tbaa !0
  %statetype232 = getelementptr inbounds %struct.p7trace_s* %82, i64 0, i32 1
  %83 = load i8** %statetype232, align 8, !tbaa !0
  %arrayidx233 = getelementptr inbounds i8* %83, i64 %indvars.iv748
  store i8 1, i8* %arrayidx233, align 1, !tbaa !1
  %dec234 = add nsw i32 %k.0, -1
  %84 = load %struct.p7trace_s** %tr, align 8, !tbaa !0
  %nodeidx236 = getelementptr inbounds %struct.p7trace_s* %84, i64 0, i32 2
  %85 = load i32** %nodeidx236, align 8, !tbaa !0
  %arrayidx237 = getelementptr inbounds i32* %85, i64 %indvars.iv748
  store i32 %k.0, i32* %arrayidx237, align 4, !tbaa !3
  %dec238 = add nsw i32 %i.0, -1
  %pos240 = getelementptr inbounds %struct.p7trace_s* %84, i64 0, i32 3
  %86 = load i32** %pos240, align 8, !tbaa !0
  %arrayidx241 = getelementptr inbounds i32* %86, i64 %indvars.iv748
  store i32 %i.0, i32* %arrayidx241, align 4, !tbaa !3
  br label %sw.epilog

if.else242:                                       ; preds = %sw.bb205
  %arrayidx245 = getelementptr inbounds i32** %2, i64 %idxprom212
  %87 = load i32** %arrayidx245, align 8, !tbaa !0
  %arrayidx246 = getelementptr inbounds i32* %87, i64 %idxprom206
  %88 = load i32* %arrayidx246, align 4, !tbaa !3
  %89 = load i32*** %imx218, align 8, !tbaa !0
  %arrayidx251 = getelementptr inbounds i32** %89, i64 %idxprom208
  %90 = load i32** %arrayidx251, align 8, !tbaa !0
  %arrayidx252 = getelementptr inbounds i32* %90, i64 %idxprom206
  %91 = load i32* %arrayidx252, align 4, !tbaa !3
  %call253 = call i32 @ILogsum(i32 %88, i32 %91) #2
  %cmp254 = icmp eq i32 %76, %call253
  %or.cond730 = and i1 %cmp254, %cmp225
  %or.cond731 = and i1 %or.cond730, %cmp228
  br i1 %or.cond731, label %if.then262, label %if.else273

if.then262:                                       ; preds = %if.else242
  %92 = load %struct.p7trace_s** %tr, align 8, !tbaa !0
  %statetype264 = getelementptr inbounds %struct.p7trace_s* %92, i64 0, i32 1
  %93 = load i8** %statetype264, align 8, !tbaa !0
  %arrayidx265 = getelementptr inbounds i8* %93, i64 %indvars.iv748
  store i8 3, i8* %arrayidx265, align 1, !tbaa !1
  %94 = load %struct.p7trace_s** %tr, align 8, !tbaa !0
  %nodeidx267 = getelementptr inbounds %struct.p7trace_s* %94, i64 0, i32 2
  %95 = load i32** %nodeidx267, align 8, !tbaa !0
  %arrayidx268 = getelementptr inbounds i32* %95, i64 %indvars.iv748
  store i32 %k.0, i32* %arrayidx268, align 4, !tbaa !3
  %dec269 = add nsw i32 %i.0, -1
  %pos271 = getelementptr inbounds %struct.p7trace_s* %94, i64 0, i32 3
  %96 = load i32** %pos271, align 8, !tbaa !0
  %arrayidx272 = getelementptr inbounds i32* %96, i64 %indvars.iv748
  store i32 %i.0, i32* %arrayidx272, align 4, !tbaa !3
  br label %sw.epilog

if.else273:                                       ; preds = %if.else242
  call void (i8*, ...)* @Die(i8* getelementptr inbounds ([17 x i8]* @.str, i64 0, i64 0)) #2
  br label %sw.epilog

sw.bb276:                                         ; preds = %while.body
  %cmp277 = icmp eq i32 %i.0, 0
  br i1 %cmp277, label %land.lhs.true279, label %if.else295

land.lhs.true279:                                 ; preds = %sw.bb276
  %97 = load i32** %0, align 8, !tbaa !0
  %arrayidx282 = getelementptr inbounds i32* %97, i64 4
  %98 = load i32* %arrayidx282, align 4, !tbaa !3
  %cmp283 = icmp eq i32 %98, -987654321
  br i1 %cmp283, label %if.then285, label %if.else332

if.then285:                                       ; preds = %land.lhs.true279
  %arrayidx288 = getelementptr inbounds i8* %17, i64 %indvars.iv748
  store i8 4, i8* %arrayidx288, align 1, !tbaa !1
  %99 = load %struct.p7trace_s** %tr, align 8, !tbaa !0
  %nodeidx290 = getelementptr inbounds %struct.p7trace_s* %99, i64 0, i32 2
  %100 = load i32** %nodeidx290, align 8, !tbaa !0
  %arrayidx291 = getelementptr inbounds i32* %100, i64 %indvars.iv748
  store i32 0, i32* %arrayidx291, align 4, !tbaa !3
  %pos293 = getelementptr inbounds %struct.p7trace_s* %99, i64 0, i32 3
  %101 = load i32** %pos293, align 8, !tbaa !0
  %arrayidx294 = getelementptr inbounds i32* %101, i64 %indvars.iv748
  store i32 0, i32* %arrayidx294, align 4, !tbaa !3
  br label %sw.epilog

if.else295:                                       ; preds = %sw.bb276
  %cmp296 = icmp sgt i32 %i.0, 0
  br i1 %cmp296, label %land.lhs.true298, label %if.else332

land.lhs.true298:                                 ; preds = %if.else295
  %add299 = add nsw i32 %i.0, 1
  %idxprom300 = sext i32 %add299 to i64
  %arrayidx301 = getelementptr inbounds i32** %0, i64 %idxprom300
  %102 = load i32** %arrayidx301, align 8, !tbaa !0
  %arrayidx302 = getelementptr inbounds i32* %102, i64 4
  %103 = load i32* %arrayidx302, align 4, !tbaa !3
  %idxprom303 = sext i32 %i.0 to i64
  %arrayidx304 = getelementptr inbounds i32** %0, i64 %idxprom303
  %104 = load i32** %arrayidx304, align 8, !tbaa !0
  %arrayidx305 = getelementptr inbounds i32* %104, i64 4
  %105 = load i32* %arrayidx305, align 4, !tbaa !3
  %106 = load i32*** %xmx308, align 8, !tbaa !0
  %arrayidx309 = getelementptr inbounds i32** %106, i64 %idxprom300
  %107 = load i32** %arrayidx309, align 8, !tbaa !0
  %arrayidx310 = getelementptr inbounds i32* %107, i64 4
  %108 = load i32* %arrayidx310, align 4, !tbaa !3
  %call311 = call i32 @ILogsum(i32 %105, i32 %108) #2
  %cmp312.not = icmp eq i32 %103, %call311
  br i1 %cmp312.not, label %if.then317, label %if.else332

if.then317:                                       ; preds = %land.lhs.true298
  %109 = load %struct.p7trace_s** %tr, align 8, !tbaa !0
  %statetype319 = getelementptr inbounds %struct.p7trace_s* %109, i64 0, i32 1
  %110 = load i8** %statetype319, align 8, !tbaa !0
  %arrayidx320 = getelementptr inbounds i8* %110, i64 %indvars.iv748
  store i8 5, i8* %arrayidx320, align 1, !tbaa !1
  %111 = load %struct.p7trace_s** %tr, align 8, !tbaa !0
  %nodeidx322 = getelementptr inbounds %struct.p7trace_s* %111, i64 0, i32 2
  %112 = load i32** %nodeidx322, align 8, !tbaa !0
  %arrayidx323 = getelementptr inbounds i32* %112, i64 %indvars.iv748
  store i32 0, i32* %arrayidx323, align 4, !tbaa !3
  %pos325 = getelementptr inbounds %struct.p7trace_s* %111, i64 0, i32 3
  %113 = load i32** %pos325, align 8, !tbaa !0
  %arrayidx326 = getelementptr inbounds i32* %113, i64 %indvars.iv748
  store i32 0, i32* %arrayidx326, align 4, !tbaa !3
  %dec327 = add nsw i32 %i.0, -1
  %arrayidx331 = getelementptr inbounds i32* %113, i64 %15
  store i32 %i.0, i32* %arrayidx331, align 4, !tbaa !3
  br label %sw.epilog

if.else332:                                       ; preds = %land.lhs.true298, %land.lhs.true279, %if.else295
  call void (i8*, ...)* @Die(i8* getelementptr inbounds ([17 x i8]* @.str, i64 0, i64 0)) #2
  br label %sw.epilog

sw.bb335:                                         ; preds = %while.body
  %idxprom336 = sext i32 %i.0 to i64
  %arrayidx337 = getelementptr inbounds i32** %0, i64 %idxprom336
  %114 = load i32** %arrayidx337, align 8, !tbaa !0
  %115 = load i32* %114, align 4, !tbaa !3
  %arrayidx341 = getelementptr inbounds i32* %114, i64 4
  %116 = load i32* %arrayidx341, align 4, !tbaa !3
  %cmp342 = icmp eq i32 %115, %116
  br i1 %cmp342, label %if.then344, label %if.else354

if.then344:                                       ; preds = %sw.bb335
  %arrayidx347 = getelementptr inbounds i8* %17, i64 %indvars.iv748
  store i8 5, i8* %arrayidx347, align 1, !tbaa !1
  %117 = load %struct.p7trace_s** %tr, align 8, !tbaa !0
  %nodeidx349 = getelementptr inbounds %struct.p7trace_s* %117, i64 0, i32 2
  %118 = load i32** %nodeidx349, align 8, !tbaa !0
  %arrayidx350 = getelementptr inbounds i32* %118, i64 %indvars.iv748
  store i32 0, i32* %arrayidx350, align 4, !tbaa !3
  %pos352 = getelementptr inbounds %struct.p7trace_s* %117, i64 0, i32 3
  %119 = load i32** %pos352, align 8, !tbaa !0
  %arrayidx353 = getelementptr inbounds i32* %119, i64 %indvars.iv748
  store i32 0, i32* %arrayidx353, align 4, !tbaa !3
  br label %sw.epilog

if.else354:                                       ; preds = %sw.bb335
  %arrayidx360 = getelementptr inbounds i32* %114, i64 3
  %120 = load i32* %arrayidx360, align 4, !tbaa !3
  %cmp361 = icmp eq i32 %115, %120
  br i1 %cmp361, label %if.then363, label %if.else373

if.then363:                                       ; preds = %if.else354
  %arrayidx366 = getelementptr inbounds i8* %17, i64 %indvars.iv748
  store i8 10, i8* %arrayidx366, align 1, !tbaa !1
  %121 = load %struct.p7trace_s** %tr, align 8, !tbaa !0
  %nodeidx368 = getelementptr inbounds %struct.p7trace_s* %121, i64 0, i32 2
  %122 = load i32** %nodeidx368, align 8, !tbaa !0
  %arrayidx369 = getelementptr inbounds i32* %122, i64 %indvars.iv748
  store i32 0, i32* %arrayidx369, align 4, !tbaa !3
  %pos371 = getelementptr inbounds %struct.p7trace_s* %121, i64 0, i32 3
  %123 = load i32** %pos371, align 8, !tbaa !0
  %arrayidx372 = getelementptr inbounds i32* %123, i64 %indvars.iv748
  store i32 0, i32* %arrayidx372, align 4, !tbaa !3
  br label %sw.epilog

if.else373:                                       ; preds = %if.else354
  call void (i8*, ...)* @Die(i8* getelementptr inbounds ([17 x i8]* @.str, i64 0, i64 0)) #2
  br label %sw.epilog

for.cond:                                         ; preds = %for.body
  %124 = trunc i64 %indvars.iv.next to i32
  %cmp377 = icmp sgt i32 %124, 0
  br i1 %cmp377, label %for.body, label %if.then407

for.body:                                         ; preds = %for.body.lr.ph, %for.cond
  %indvars.iv = phi i64 [ %13, %for.body.lr.ph ], [ %indvars.iv.next, %for.cond ]
  %k.1741 = phi i32 [ %M, %for.body.lr.ph ], [ %dec404, %for.cond ]
  %arrayidx385 = getelementptr inbounds i32* %21, i64 %indvars.iv
  %125 = load i32* %arrayidx385, align 4, !tbaa !3
  %cmp386 = icmp eq i32 %20, %125
  %or.cond732 = and i1 %cmp386, %cmp389
  %indvars.iv.next = add i64 %indvars.iv, -1
  %dec404 = add nsw i32 %k.1741, -1
  br i1 %or.cond732, label %for.end, label %for.cond

for.end:                                          ; preds = %for.body
  %arrayidx394 = getelementptr inbounds i8* %17, i64 %indvars.iv748
  store i8 1, i8* %arrayidx394, align 1, !tbaa !1
  %126 = load %struct.p7trace_s** %tr, align 8, !tbaa !0
  %nodeidx397 = getelementptr inbounds %struct.p7trace_s* %126, i64 0, i32 2
  %127 = load i32** %nodeidx397, align 8, !tbaa !0
  %arrayidx398 = getelementptr inbounds i32* %127, i64 %indvars.iv748
  store i32 %k.1741, i32* %arrayidx398, align 4, !tbaa !3
  %dec399 = add nsw i32 %i.0, -1
  %pos401 = getelementptr inbounds %struct.p7trace_s* %126, i64 0, i32 3
  %128 = load i32** %pos401, align 8, !tbaa !0
  %arrayidx402 = getelementptr inbounds i32* %128, i64 %indvars.iv748
  store i32 %i.0, i32* %arrayidx402, align 4, !tbaa !3
  %cmp405 = icmp slt i32 %k.1741, 2
  br i1 %cmp405, label %if.then407, label %sw.epilog

if.then407:                                       ; preds = %for.cond.preheader, %for.cond, %for.end
  %i.1738 = phi i32 [ %dec399, %for.end ], [ %i.0, %for.cond ], [ %i.0, %for.cond.preheader ]
  %k.2737 = phi i32 [ %dec404, %for.end ], [ %dec404, %for.cond ], [ %M, %for.cond.preheader ]
  call void (i8*, ...)* @Die(i8* getelementptr inbounds ([17 x i8]* @.str, i64 0, i64 0)) #2
  br label %sw.epilog

sw.bb409:                                         ; preds = %while.body
  %idxprom410 = sext i32 %i.0 to i64
  %arrayidx411 = getelementptr inbounds i32** %0, i64 %idxprom410
  %129 = load i32** %arrayidx411, align 8, !tbaa !0
  %arrayidx412 = getelementptr inbounds i32* %129, i64 2
  %130 = load i32* %arrayidx412, align 4, !tbaa !3
  %sub413 = add nsw i32 %i.0, -1
  %idxprom414 = sext i32 %sub413 to i64
  %arrayidx415 = getelementptr inbounds i32** %0, i64 %idxprom414
  %131 = load i32** %arrayidx415, align 8, !tbaa !0
  %arrayidx416 = getelementptr inbounds i32* %131, i64 2
  %132 = load i32* %arrayidx416, align 4, !tbaa !3
  %133 = load i32*** %xmx308, align 8, !tbaa !0
  %arrayidx419 = getelementptr inbounds i32** %133, i64 %idxprom410
  %134 = load i32** %arrayidx419, align 8, !tbaa !0
  %arrayidx420 = getelementptr inbounds i32* %134, i64 2
  %135 = load i32* %arrayidx420, align 4, !tbaa !3
  %call421 = call i32 @ILogsum(i32 %132, i32 %135) #2
  %cmp422 = icmp eq i32 %130, %call421
  %cmp425 = icmp sgt i32 %i.0, 0
  %or.cond733 = and i1 %cmp422, %cmp425
  br i1 %or.cond733, label %if.then427, label %if.else442

if.then427:                                       ; preds = %sw.bb409
  %136 = load %struct.p7trace_s** %tr, align 8, !tbaa !0
  %statetype429 = getelementptr inbounds %struct.p7trace_s* %136, i64 0, i32 1
  %137 = load i8** %statetype429, align 8, !tbaa !0
  %arrayidx430 = getelementptr inbounds i8* %137, i64 %indvars.iv748
  store i8 8, i8* %arrayidx430, align 1, !tbaa !1
  %138 = load %struct.p7trace_s** %tr, align 8, !tbaa !0
  %nodeidx432 = getelementptr inbounds %struct.p7trace_s* %138, i64 0, i32 2
  %139 = load i32** %nodeidx432, align 8, !tbaa !0
  %arrayidx433 = getelementptr inbounds i32* %139, i64 %indvars.iv748
  store i32 0, i32* %arrayidx433, align 4, !tbaa !3
  %pos435 = getelementptr inbounds %struct.p7trace_s* %138, i64 0, i32 3
  %140 = load i32** %pos435, align 8, !tbaa !0
  %arrayidx436 = getelementptr inbounds i32* %140, i64 %indvars.iv748
  store i32 0, i32* %arrayidx436, align 4, !tbaa !3
  %arrayidx441 = getelementptr inbounds i32* %140, i64 %15
  store i32 %i.0, i32* %arrayidx441, align 4, !tbaa !3
  br label %sw.epilog

if.else442:                                       ; preds = %sw.bb409
  %141 = load i32** %arrayidx411, align 8, !tbaa !0
  %arrayidx445 = getelementptr inbounds i32* %141, i64 2
  %142 = load i32* %arrayidx445, align 4, !tbaa !3
  %arrayidx448 = getelementptr inbounds i32* %141, i64 1
  %143 = load i32* %arrayidx448, align 4, !tbaa !3
  %cmp449 = icmp eq i32 %142, %143
  br i1 %cmp449, label %if.then451, label %if.else461

if.then451:                                       ; preds = %if.else442
  %144 = load %struct.p7trace_s** %tr, align 8, !tbaa !0
  %statetype453 = getelementptr inbounds %struct.p7trace_s* %144, i64 0, i32 1
  %145 = load i8** %statetype453, align 8, !tbaa !0
  %arrayidx454 = getelementptr inbounds i8* %145, i64 %indvars.iv748
  store i8 7, i8* %arrayidx454, align 1, !tbaa !1
  %146 = load %struct.p7trace_s** %tr, align 8, !tbaa !0
  %nodeidx456 = getelementptr inbounds %struct.p7trace_s* %146, i64 0, i32 2
  %147 = load i32** %nodeidx456, align 8, !tbaa !0
  %arrayidx457 = getelementptr inbounds i32* %147, i64 %indvars.iv748
  store i32 0, i32* %arrayidx457, align 4, !tbaa !3
  %pos459 = getelementptr inbounds %struct.p7trace_s* %146, i64 0, i32 3
  %148 = load i32** %pos459, align 8, !tbaa !0
  %arrayidx460 = getelementptr inbounds i32* %148, i64 %indvars.iv748
  store i32 0, i32* %arrayidx460, align 4, !tbaa !3
  br label %sw.epilog

if.else461:                                       ; preds = %if.else442
  call void (i8*, ...)* @Die(i8* getelementptr inbounds ([18 x i8]* @.str1, i64 0, i64 0)) #2
  br label %sw.epilog

sw.bb464:                                         ; preds = %while.body
  %idxprom465 = sext i32 %i.0 to i64
  %arrayidx466 = getelementptr inbounds i32** %0, i64 %idxprom465
  %149 = load i32** %arrayidx466, align 8, !tbaa !0
  %arrayidx467 = getelementptr inbounds i32* %149, i64 3
  %150 = load i32* %arrayidx467, align 4, !tbaa !3
  %sub468 = add nsw i32 %i.0, -1
  %idxprom469 = sext i32 %sub468 to i64
  %arrayidx470 = getelementptr inbounds i32** %0, i64 %idxprom469
  %151 = load i32** %arrayidx470, align 8, !tbaa !0
  %arrayidx471 = getelementptr inbounds i32* %151, i64 3
  %152 = load i32* %arrayidx471, align 4, !tbaa !3
  %153 = load i32*** %xmx308, align 8, !tbaa !0
  %arrayidx474 = getelementptr inbounds i32** %153, i64 %idxprom465
  %154 = load i32** %arrayidx474, align 8, !tbaa !0
  %arrayidx475 = getelementptr inbounds i32* %154, i64 3
  %155 = load i32* %arrayidx475, align 4, !tbaa !3
  %call476 = call i32 @ILogsum(i32 %152, i32 %155) #2
  %cmp477 = icmp eq i32 %150, %call476
  %cmp480 = icmp sgt i32 %i.0, 0
  %or.cond734 = and i1 %cmp477, %cmp480
  br i1 %or.cond734, label %if.then482, label %if.else497

if.then482:                                       ; preds = %sw.bb464
  %156 = load %struct.p7trace_s** %tr, align 8, !tbaa !0
  %statetype484 = getelementptr inbounds %struct.p7trace_s* %156, i64 0, i32 1
  %157 = load i8** %statetype484, align 8, !tbaa !0
  %arrayidx485 = getelementptr inbounds i8* %157, i64 %indvars.iv748
  store i8 10, i8* %arrayidx485, align 1, !tbaa !1
  %158 = load %struct.p7trace_s** %tr, align 8, !tbaa !0
  %nodeidx487 = getelementptr inbounds %struct.p7trace_s* %158, i64 0, i32 2
  %159 = load i32** %nodeidx487, align 8, !tbaa !0
  %arrayidx488 = getelementptr inbounds i32* %159, i64 %indvars.iv748
  store i32 0, i32* %arrayidx488, align 4, !tbaa !3
  %pos490 = getelementptr inbounds %struct.p7trace_s* %158, i64 0, i32 3
  %160 = load i32** %pos490, align 8, !tbaa !0
  %arrayidx491 = getelementptr inbounds i32* %160, i64 %indvars.iv748
  store i32 0, i32* %arrayidx491, align 4, !tbaa !3
  %arrayidx496 = getelementptr inbounds i32* %160, i64 %15
  store i32 %i.0, i32* %arrayidx496, align 4, !tbaa !3
  br label %sw.epilog

if.else497:                                       ; preds = %sw.bb464
  %161 = load i32** %arrayidx466, align 8, !tbaa !0
  %arrayidx500 = getelementptr inbounds i32* %161, i64 3
  %162 = load i32* %arrayidx500, align 4, !tbaa !3
  %arrayidx503 = getelementptr inbounds i32* %161, i64 1
  %163 = load i32* %arrayidx503, align 4, !tbaa !3
  %cmp504 = icmp eq i32 %162, %163
  br i1 %cmp504, label %if.then506, label %if.else516

if.then506:                                       ; preds = %if.else497
  %164 = load %struct.p7trace_s** %tr, align 8, !tbaa !0
  %statetype508 = getelementptr inbounds %struct.p7trace_s* %164, i64 0, i32 1
  %165 = load i8** %statetype508, align 8, !tbaa !0
  %arrayidx509 = getelementptr inbounds i8* %165, i64 %indvars.iv748
  store i8 7, i8* %arrayidx509, align 1, !tbaa !1
  %166 = load %struct.p7trace_s** %tr, align 8, !tbaa !0
  %nodeidx511 = getelementptr inbounds %struct.p7trace_s* %166, i64 0, i32 2
  %167 = load i32** %nodeidx511, align 8, !tbaa !0
  %arrayidx512 = getelementptr inbounds i32* %167, i64 %indvars.iv748
  store i32 0, i32* %arrayidx512, align 4, !tbaa !3
  %pos514 = getelementptr inbounds %struct.p7trace_s* %166, i64 0, i32 3
  %168 = load i32** %pos514, align 8, !tbaa !0
  %arrayidx515 = getelementptr inbounds i32* %168, i64 %indvars.iv748
  store i32 0, i32* %arrayidx515, align 4, !tbaa !3
  br label %sw.epilog

if.else516:                                       ; preds = %if.else497
  call void (i8*, ...)* @Die(i8* getelementptr inbounds ([18 x i8]* @.str1, i64 0, i64 0)) #2
  br label %sw.epilog

sw.default:                                       ; preds = %while.body
  call void (i8*, ...)* @Die(i8* getelementptr inbounds ([17 x i8]* @.str, i64 0, i64 0)) #2
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then482, %if.else516, %if.then506, %if.then427, %if.else461, %if.then451, %for.end, %if.then407, %if.then344, %if.else373, %if.then363, %if.then285, %if.else332, %if.then317, %if.then230, %if.else273, %if.then262, %if.then164, %if.else202, %if.then191, %if.then, %if.then107, %if.else142, %if.then132, %if.then75, %sw.default
  %k.3 = phi i32 [ %k.0, %sw.default ], [ %k.0, %if.then482 ], [ %k.0, %if.then506 ], [ %k.0, %if.else516 ], [ %k.0, %if.then427 ], [ %k.0, %if.then451 ], [ %k.0, %if.else461 ], [ %k.2737, %if.then407 ], [ %dec404, %for.end ], [ %k.0, %if.then344 ], [ %k.0, %if.then363 ], [ %k.0, %if.else373 ], [ %k.0, %if.then285 ], [ %k.0, %if.then317 ], [ %k.0, %if.else332 ], [ %dec234, %if.then230 ], [ %k.0, %if.then262 ], [ %k.0, %if.else273 ], [ %dec168, %if.then164 ], [ %dec195, %if.then191 ], [ %k.0, %if.else202 ], [ %dec, %if.then ], [ %k.0, %if.then75 ], [ %dec111, %if.then107 ], [ %k.0, %if.then132 ], [ %k.0, %if.else142 ]
  %i.2 = phi i32 [ %i.0, %sw.default ], [ %sub468, %if.then482 ], [ %i.0, %if.then506 ], [ %i.0, %if.else516 ], [ %sub413, %if.then427 ], [ %i.0, %if.then451 ], [ %i.0, %if.else461 ], [ %i.1738, %if.then407 ], [ %dec399, %for.end ], [ %i.0, %if.then344 ], [ %i.0, %if.then363 ], [ %i.0, %if.else373 ], [ 0, %if.then285 ], [ %dec327, %if.then317 ], [ %i.0, %if.else332 ], [ %dec238, %if.then230 ], [ %dec269, %if.then262 ], [ %i.0, %if.else273 ], [ %dec172, %if.then164 ], [ %i.0, %if.then191 ], [ %i.0, %if.else202 ], [ %dec51, %if.then ], [ %dec82, %if.then75 ], [ %i.0, %if.then107 ], [ %i.0, %if.then132 ], [ %i.0, %if.else142 ]
  %indvars.iv.next749 = add i64 %indvars.iv748, 1
  %inc = add nsw i32 %tpos.0, 1
  %169 = trunc i64 %indvars.iv.next749 to i32
  %cmp519 = icmp eq i32 %169, %curralloc.0.ph
  br i1 %cmp519, label %if.then521, label %while.cond

if.then521:                                       ; preds = %sw.epilog
  %add522 = add nsw i32 %curralloc.0.ph, %L
  %170 = load %struct.p7trace_s** %tr, align 8, !tbaa !0
  call void @P7ReallocTrace(%struct.p7trace_s* %170, i32 %add522) #2
  br label %while.cond.outer

while.end:                                        ; preds = %while.cond
  %tlen = getelementptr inbounds %struct.p7trace_s* %16, i64 0, i32 0
  store i32 %tpos.0, i32* %tlen, align 4, !tbaa !3
  call void @P7ReverseTrace(%struct.p7trace_s* %16) #2
  %171 = load %struct.p7trace_s** %tr, align 8, !tbaa !0
  store %struct.p7trace_s* %171, %struct.p7trace_s** %ret_tr, align 8, !tbaa !0
  ret void
}

; Function Attrs: optsize
declare float @Score2Prob(i32, float) #1

; Function Attrs: optsize
declare void @P7AllocTrace(i32, %struct.p7trace_s**) #1

; Function Attrs: optsize
declare void @Die(i8*, ...) #1

; Function Attrs: optsize
declare void @P7ReallocTrace(%struct.p7trace_s*, i32) #1

; Function Attrs: optsize
declare void @P7ReverseTrace(%struct.p7trace_s*) #1

; Function Attrs: nounwind optsize uwtable
define i8* @PostalCode(i32 %L, %struct.dpmatrix_s* nocapture %mx, %struct.p7trace_s* nocapture %tr) #0 {
entry:
  %add = add nsw i32 %L, 1
  %conv = sext i32 %add to i64
  %call = tail call i8* @sre_malloc(i8* getelementptr inbounds ([54 x i8]* @.str2, i64 0, i64 0), i32 692, i64 %conv) #2
  %tlen = getelementptr inbounds %struct.p7trace_s* %tr, i64 0, i32 0
  %0 = load i32* %tlen, align 4, !tbaa !3
  %cmp110 = icmp sgt i32 %0, 0
  br i1 %cmp110, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %pos = getelementptr inbounds %struct.p7trace_s* %tr, i64 0, i32 3
  %nodeidx = getelementptr inbounds %struct.p7trace_s* %tr, i64 0, i32 2
  %statetype = getelementptr inbounds %struct.p7trace_s* %tr, i64 0, i32 1
  %mmx = getelementptr inbounds %struct.dpmatrix_s* %mx, i64 0, i32 1
  %imx = getelementptr inbounds %struct.dpmatrix_s* %mx, i64 0, i32 2
  %xmx = getelementptr inbounds %struct.dpmatrix_s* %mx, i64 0, i32 0
  br label %for.body

for.body:                                         ; preds = %for.inc, %for.body.lr.ph
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.inc ]
  %1 = load i32** %pos, align 8, !tbaa !0
  %arrayidx = getelementptr inbounds i32* %1, i64 %indvars.iv
  %2 = load i32* %arrayidx, align 4, !tbaa !3
  %3 = load i32** %nodeidx, align 8, !tbaa !0
  %arrayidx3 = getelementptr inbounds i32* %3, i64 %indvars.iv
  %4 = load i32* %arrayidx3, align 4, !tbaa !3
  %cmp4 = icmp eq i32 %2, 0
  br i1 %cmp4, label %for.inc, label %if.end

if.end:                                           ; preds = %for.body
  %5 = load i8** %statetype, align 8, !tbaa !0
  %arrayidx7 = getelementptr inbounds i8* %5, i64 %indvars.iv
  %6 = load i8* %arrayidx7, align 1, !tbaa !1
  %conv8 = sext i8 %6 to i32
  switch i32 %conv8, label %for.inc [
    i32 1, label %sw.bb
    i32 3, label %sw.bb16
    i32 5, label %sw.bb25
    i32 8, label %sw.bb33
    i32 10, label %sw.bb42
  ]

sw.bb:                                            ; preds = %if.end
  %idxprom9 = sext i32 %4 to i64
  %idxprom10 = sext i32 %2 to i64
  %7 = load i32*** %mmx, align 8, !tbaa !0
  %arrayidx11 = getelementptr inbounds i32** %7, i64 %idxprom10
  %8 = load i32** %arrayidx11, align 8, !tbaa !0
  %arrayidx12 = getelementptr inbounds i32* %8, i64 %idxprom9
  %9 = load i32* %arrayidx12, align 4, !tbaa !3
  %call.i = tail call float @Score2Prob(i32 %9, float 1.000000e+00) #2
  %conv.i = fpext float %call.i to double
  %mul.i = fmul double %conv.i, 1.000000e+01
  %conv1.i = fptosi double %mul.i to i8
  %cmp.i = icmp sgt i8 %conv1.i, 9
  %add.i = add i8 %conv1.i, 48
  %.add.i = select i1 %cmp.i, i8 42, i8 %add.i
  %sub = add nsw i32 %2, -1
  %idxprom14 = sext i32 %sub to i64
  %arrayidx15 = getelementptr inbounds i8* %call, i64 %idxprom14
  store i8 %.add.i, i8* %arrayidx15, align 1, !tbaa !1
  br label %for.inc

sw.bb16:                                          ; preds = %if.end
  %idxprom17 = sext i32 %4 to i64
  %idxprom18 = sext i32 %2 to i64
  %10 = load i32*** %imx, align 8, !tbaa !0
  %arrayidx19 = getelementptr inbounds i32** %10, i64 %idxprom18
  %11 = load i32** %arrayidx19, align 8, !tbaa !0
  %arrayidx20 = getelementptr inbounds i32* %11, i64 %idxprom17
  %12 = load i32* %arrayidx20, align 4, !tbaa !3
  %call.i82 = tail call float @Score2Prob(i32 %12, float 1.000000e+00) #2
  %conv.i83 = fpext float %call.i82 to double
  %mul.i84 = fmul double %conv.i83, 1.000000e+01
  %conv1.i85 = fptosi double %mul.i84 to i8
  %cmp.i86 = icmp sgt i8 %conv1.i85, 9
  %add.i87 = add i8 %conv1.i85, 48
  %.add.i88 = select i1 %cmp.i86, i8 42, i8 %add.i87
  %sub22 = add nsw i32 %2, -1
  %idxprom23 = sext i32 %sub22 to i64
  %arrayidx24 = getelementptr inbounds i8* %call, i64 %idxprom23
  store i8 %.add.i88, i8* %arrayidx24, align 1, !tbaa !1
  br label %for.inc

sw.bb25:                                          ; preds = %if.end
  %idxprom26 = sext i32 %2 to i64
  %13 = load i32*** %xmx, align 8, !tbaa !0
  %arrayidx27 = getelementptr inbounds i32** %13, i64 %idxprom26
  %14 = load i32** %arrayidx27, align 8, !tbaa !0
  %arrayidx28 = getelementptr inbounds i32* %14, i64 4
  %15 = load i32* %arrayidx28, align 4, !tbaa !3
  %call.i89 = tail call float @Score2Prob(i32 %15, float 1.000000e+00) #2
  %conv.i90 = fpext float %call.i89 to double
  %mul.i91 = fmul double %conv.i90, 1.000000e+01
  %conv1.i92 = fptosi double %mul.i91 to i8
  %cmp.i93 = icmp sgt i8 %conv1.i92, 9
  %add.i94 = add i8 %conv1.i92, 48
  %.add.i95 = select i1 %cmp.i93, i8 42, i8 %add.i94
  %sub30 = add nsw i32 %2, -1
  %idxprom31 = sext i32 %sub30 to i64
  %arrayidx32 = getelementptr inbounds i8* %call, i64 %idxprom31
  store i8 %.add.i95, i8* %arrayidx32, align 1, !tbaa !1
  br label %for.inc

sw.bb33:                                          ; preds = %if.end
  %idxprom34 = sext i32 %2 to i64
  %16 = load i32*** %xmx, align 8, !tbaa !0
  %arrayidx36 = getelementptr inbounds i32** %16, i64 %idxprom34
  %17 = load i32** %arrayidx36, align 8, !tbaa !0
  %arrayidx37 = getelementptr inbounds i32* %17, i64 2
  %18 = load i32* %arrayidx37, align 4, !tbaa !3
  %call.i96 = tail call float @Score2Prob(i32 %18, float 1.000000e+00) #2
  %conv.i97 = fpext float %call.i96 to double
  %mul.i98 = fmul double %conv.i97, 1.000000e+01
  %conv1.i99 = fptosi double %mul.i98 to i8
  %cmp.i100 = icmp sgt i8 %conv1.i99, 9
  %add.i101 = add i8 %conv1.i99, 48
  %.add.i102 = select i1 %cmp.i100, i8 42, i8 %add.i101
  %sub39 = add nsw i32 %2, -1
  %idxprom40 = sext i32 %sub39 to i64
  %arrayidx41 = getelementptr inbounds i8* %call, i64 %idxprom40
  store i8 %.add.i102, i8* %arrayidx41, align 1, !tbaa !1
  br label %for.inc

sw.bb42:                                          ; preds = %if.end
  %idxprom43 = sext i32 %2 to i64
  %19 = load i32*** %xmx, align 8, !tbaa !0
  %arrayidx45 = getelementptr inbounds i32** %19, i64 %idxprom43
  %20 = load i32** %arrayidx45, align 8, !tbaa !0
  %arrayidx46 = getelementptr inbounds i32* %20, i64 3
  %21 = load i32* %arrayidx46, align 4, !tbaa !3
  %call.i103 = tail call float @Score2Prob(i32 %21, float 1.000000e+00) #2
  %conv.i104 = fpext float %call.i103 to double
  %mul.i105 = fmul double %conv.i104, 1.000000e+01
  %conv1.i106 = fptosi double %mul.i105 to i8
  %cmp.i107 = icmp sgt i8 %conv1.i106, 9
  %add.i108 = add i8 %conv1.i106, 48
  %.add.i109 = select i1 %cmp.i107, i8 42, i8 %add.i108
  %sub48 = add nsw i32 %2, -1
  %idxprom49 = sext i32 %sub48 to i64
  %arrayidx50 = getelementptr inbounds i8* %call, i64 %idxprom49
  store i8 %.add.i109, i8* %arrayidx50, align 1, !tbaa !1
  br label %for.inc

for.inc:                                          ; preds = %sw.bb, %sw.bb16, %sw.bb25, %sw.bb33, %sw.bb42, %if.end, %for.body
  %indvars.iv.next = add i64 %indvars.iv, 1
  %22 = load i32* %tlen, align 4, !tbaa !3
  %23 = trunc i64 %indvars.iv.next to i32
  %cmp = icmp slt i32 %23, %22
  br i1 %cmp, label %for.body, label %for.end

for.end:                                          ; preds = %for.inc, %entry
  %idxprom51 = sext i32 %L to i64
  %arrayidx52 = getelementptr inbounds i8* %call, i64 %idxprom51
  store i8 0, i8* %arrayidx52, align 1, !tbaa !1
  ret i8* %call
}

; Function Attrs: optsize
declare i8* @sre_malloc(i8*, i32, i64) #1

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind optsize }
attributes #3 = { optsize }

!0 = metadata !{metadata !"any pointer", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"int", metadata !1}
