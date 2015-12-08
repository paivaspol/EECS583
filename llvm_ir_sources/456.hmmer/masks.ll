; ModuleID = '../../SPEC/benchspec/CPU2006/456.hmmer/src/masks.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.plan7_s = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i8*, i32*, i32, i32*, i32*, i32*, float, float, float, float, float, float, i32, float**, float**, float**, float, [4 x [2 x float]], float*, float*, [20 x float], float, i32**, i32**, i32**, [4 x [2 x i32]], i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32**, i32**, i32, i32, float, float, i32 }
%struct.p7trace_s = type { i32, i8*, i32*, i32* }

@.str = private unnamed_addr constant [51 x i8] c"../../SPEC/benchspec/CPU2006/456.hmmer/src/masks.c\00", align 1
@xpam120 = internal unnamed_addr constant [23 x [23 x i32]] [[23 x i32] [i32 3, i32 -3, i32 0, i32 0, i32 -4, i32 1, i32 -3, i32 -1, i32 -2, i32 -3, i32 -2, i32 -1, i32 1, i32 -1, i32 -3, i32 1, i32 1, i32 0, i32 -7, i32 -4, i32 1, i32 0, i32 0], [23 x i32] [i32 -3, i32 9, i32 -7, i32 -7, i32 -6, i32 -4, i32 -4, i32 -3, i32 -7, i32 -7, i32 -6, i32 -5, i32 -4, i32 -7, i32 -4, i32 0, i32 -3, i32 -3, i32 -8, i32 -1, i32 -4, i32 -6, i32 0], [23 x i32] [i32 0, i32 -7, i32 5, i32 3, i32 -7, i32 0, i32 0, i32 -3, i32 -1, i32 -5, i32 -4, i32 2, i32 -3, i32 1, i32 -3, i32 0, i32 -1, i32 -3, i32 -8, i32 -5, i32 5, i32 3, i32 0], [23 x i32] [i32 0, i32 -7, i32 3, i32 5, i32 -7, i32 -1, i32 -1, i32 -3, i32 -1, i32 -4, i32 -3, i32 1, i32 -2, i32 2, i32 -3, i32 -1, i32 -2, i32 -3, i32 -8, i32 -5, i32 3, i32 5, i32 0], [23 x i32] [i32 -4, i32 -6, i32 -7, i32 -7, i32 8, i32 -5, i32 -3, i32 0, i32 -7, i32 0, i32 -1, i32 -4, i32 -5, i32 -6, i32 -5, i32 -3, i32 -4, i32 -3, i32 -1, i32 4, i32 -4, i32 -5, i32 0], [23 x i32] [i32 1, i32 -4, i32 0, i32 -1, i32 -5, i32 5, i32 -4, i32 -4, i32 -3, i32 -5, i32 -4, i32 0, i32 -2, i32 -3, i32 -4, i32 1, i32 -1, i32 -2, i32 -8, i32 -6, i32 1, i32 -1, i32 0], [23 x i32] [i32 -3, i32 -4, i32 0, i32 -1, i32 -3, i32 -4, i32 7, i32 -4, i32 -2, i32 -3, i32 -4, i32 2, i32 -1, i32 3, i32 1, i32 -2, i32 -3, i32 -3, i32 -3, i32 -1, i32 2, i32 2, i32 0], [23 x i32] [i32 -1, i32 -3, i32 -3, i32 -3, i32 0, i32 -4, i32 -4, i32 6, i32 -3, i32 1, i32 1, i32 -2, i32 -3, i32 -3, i32 -2, i32 -2, i32 0, i32 3, i32 -6, i32 -2, i32 -2, i32 -2, i32 0], [23 x i32] [i32 -2, i32 -7, i32 -1, i32 -1, i32 -7, i32 -3, i32 -2, i32 -3, i32 5, i32 -4, i32 0, i32 1, i32 -2, i32 0, i32 2, i32 -1, i32 -1, i32 -4, i32 -5, i32 -5, i32 1, i32 0, i32 0], [23 x i32] [i32 -3, i32 -7, i32 -5, i32 -4, i32 0, i32 -5, i32 -3, i32 1, i32 -4, i32 5, i32 3, i32 -4, i32 -3, i32 -2, i32 -4, i32 -4, i32 -3, i32 1, i32 -3, i32 -2, i32 -3, i32 -2, i32 0], [23 x i32] [i32 -2, i32 -6, i32 -4, i32 -3, i32 -1, i32 -4, i32 -4, i32 1, i32 0, i32 3, i32 8, i32 -3, i32 -3, i32 -1, i32 -1, i32 -2, i32 -1, i32 1, i32 -6, i32 -4, i32 -3, i32 -1, i32 0], [23 x i32] [i32 -1, i32 -5, i32 2, i32 1, i32 -4, i32 0, i32 2, i32 -2, i32 1, i32 -4, i32 -3, i32 4, i32 -2, i32 0, i32 -1, i32 1, i32 0, i32 -3, i32 -4, i32 -2, i32 4, i32 1, i32 0], [23 x i32] [i32 1, i32 -4, i32 -3, i32 -2, i32 -5, i32 -2, i32 -1, i32 -3, i32 -2, i32 -3, i32 -3, i32 -2, i32 6, i32 0, i32 -1, i32 1, i32 -1, i32 -2, i32 -7, i32 -6, i32 -1, i32 0, i32 0], [23 x i32] [i32 -1, i32 -7, i32 1, i32 2, i32 -6, i32 -3, i32 3, i32 -3, i32 0, i32 -2, i32 -1, i32 0, i32 0, i32 6, i32 1, i32 -2, i32 -2, i32 -3, i32 -6, i32 -5, i32 1, i32 5, i32 0], [23 x i32] [i32 -3, i32 -4, i32 -3, i32 -3, i32 -5, i32 -4, i32 1, i32 -2, i32 2, i32 -4, i32 -1, i32 -1, i32 -1, i32 1, i32 6, i32 -1, i32 -2, i32 -3, i32 1, i32 -5, i32 -1, i32 0, i32 0], [23 x i32] [i32 1, i32 0, i32 0, i32 -1, i32 -3, i32 1, i32 -2, i32 -2, i32 -1, i32 -4, i32 -2, i32 1, i32 1, i32 -2, i32 -1, i32 3, i32 2, i32 -2, i32 -2, i32 -3, i32 1, i32 0, i32 0], [23 x i32] [i32 1, i32 -3, i32 -1, i32 -2, i32 -4, i32 -1, i32 -3, i32 0, i32 -1, i32 -3, i32 -1, i32 0, i32 -1, i32 -2, i32 -2, i32 2, i32 4, i32 0, i32 -6, i32 -3, i32 1, i32 -1, i32 0], [23 x i32] [i32 0, i32 -3, i32 -3, i32 -3, i32 -3, i32 -2, i32 -3, i32 3, i32 -4, i32 1, i32 1, i32 -3, i32 -2, i32 -3, i32 -3, i32 -2, i32 0, i32 5, i32 -8, i32 -3, i32 -2, i32 -2, i32 0], [23 x i32] [i32 -7, i32 -8, i32 -8, i32 -8, i32 -1, i32 -8, i32 -3, i32 -6, i32 -5, i32 -3, i32 -6, i32 -4, i32 -7, i32 -6, i32 1, i32 -2, i32 -6, i32 -8, i32 12, i32 -2, i32 -5, i32 -6, i32 0], [23 x i32] [i32 -4, i32 -1, i32 -5, i32 -5, i32 4, i32 -6, i32 -1, i32 -2, i32 -5, i32 -2, i32 -4, i32 -2, i32 -6, i32 -5, i32 -5, i32 -3, i32 -3, i32 -3, i32 -2, i32 8, i32 -2, i32 -4, i32 0], [23 x i32] [i32 1, i32 -4, i32 5, i32 3, i32 -4, i32 1, i32 2, i32 -2, i32 1, i32 -3, i32 -3, i32 4, i32 -1, i32 1, i32 -1, i32 1, i32 1, i32 -2, i32 -5, i32 -2, i32 6, i32 4, i32 0], [23 x i32] [i32 0, i32 -6, i32 3, i32 5, i32 -5, i32 -1, i32 2, i32 -2, i32 0, i32 -2, i32 -1, i32 1, i32 0, i32 5, i32 0, i32 0, i32 -1, i32 -2, i32 -6, i32 -4, i32 4, i32 6, i32 0], [23 x i32] zeroinitializer], align 16
@Alphabet_iupac = external global i32
@Alphabet_size = external global i32

; Function Attrs: nounwind optsize uwtable
define i32 @XNU(i8* nocapture %dsq, i32 %len) #0 {
entry:
  %cmp = icmp eq i32 %len, 0
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %add = add i32 %len, 1
  %conv = sext i32 %add to i64
  %mul = shl nsw i64 %conv, 2
  %call = tail call i8* @sre_malloc(i8* getelementptr inbounds ([51 x i8]* @.str, i64 0, i64 0), i32 100, i64 %mul) #5
  %0 = bitcast i8* %call to i32*
  %cmp1195 = icmp slt i32 %len, 1
  br i1 %cmp1195, label %for.body27, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %if.end
  %scevgep = getelementptr i8* %call, i64 4
  %1 = add i32 %len, -1
  %2 = zext i32 %1 to i64
  %3 = shl nuw nsw i64 %2, 2
  %4 = add i64 %3, 4
  call void @llvm.memset.p0i8.i64(i8* %scevgep, i8 0, i64 %4, i32 4, i1 false)
  br label %for.body27

for.cond103.preheader:                            ; preds = %for.cond24.backedge
  br i1 %cmp1195, label %for.end118, label %for.body106

for.body27:                                       ; preds = %if.end, %for.body.lr.ph, %for.cond24.backedge
  %indvars.iv210 = phi i64 [ %indvars.iv.next211, %for.cond24.backedge ], [ 1, %for.body.lr.ph ], [ 1, %if.end ]
  %indvars.iv199 = phi i64 [ %indvars.iv.next200, %for.cond24.backedge ], [ 2, %for.body.lr.ph ], [ 2, %if.end ]
  %off.0194 = phi i32 [ %add28, %for.cond24.backedge ], [ 1, %for.body.lr.ph ], [ 1, %if.end ]
  %indvars.iv.next211 = add i64 %indvars.iv210, 1
  %add28 = add nsw i32 %off.0194, 1
  %5 = trunc i64 %indvars.iv210 to i32
  %cmp30183 = icmp slt i32 %5, %len
  br i1 %cmp30183, label %for.body32, label %for.cond24.backedge

for.body32:                                       ; preds = %for.body27, %if.end75
  %indvars.iv201 = phi i64 [ %indvars.iv.next202, %if.end75 ], [ %indvars.iv199, %for.body27 ]
  %sum.0187 = phi i32 [ %.sum.1, %if.end75 ], [ 0, %for.body27 ]
  %beg.0186 = phi i32 [ %add79.beg.1, %if.end75 ], [ %off.0194, %for.body27 ]
  %end.0185 = phi i32 [ %add79.end.2, %if.end75 ], [ 0, %for.body27 ]
  %top.0184 = phi i32 [ %.top.2, %if.end75 ], [ 0, %for.body27 ]
  %6 = sub nsw i64 %indvars.iv201, %indvars.iv210
  %arrayidx35 = getelementptr inbounds i8* %dsq, i64 %6
  %7 = load i8* %arrayidx35, align 1, !tbaa !0
  %idxprom37 = sext i8 %7 to i64
  %arrayidx39 = getelementptr inbounds i8* %dsq, i64 %indvars.iv201
  %8 = load i8* %arrayidx39, align 1, !tbaa !0
  %idxprom41 = sext i8 %8 to i64
  %arrayidx43 = getelementptr inbounds [23 x [23 x i32]]* @xpam120, i64 0, i64 %idxprom41, i64 %idxprom37
  %9 = load i32* %arrayidx43, align 4, !tbaa !2
  %add44 = add nsw i32 %9, %sum.0187
  %cmp45 = icmp sgt i32 %add44, %top.0184
  %add44.top.0 = select i1 %cmp45, i32 %add44, i32 %top.0184
  %10 = trunc i64 %indvars.iv201 to i32
  %i.1.end.0 = select i1 %cmp45, i32 %10, i32 %end.0185
  %cmp49 = icmp sgt i32 %add44.top.0, 20
  %sub51 = sub nsw i32 %add44.top.0, %add44
  %cmp52 = icmp sgt i32 %sub51, 14
  %or.cond = and i1 %cmp49, %cmp52
  br i1 %or.cond, label %for.cond55.preheader, label %if.else68

for.cond55.preheader:                             ; preds = %for.body32
  %cmp56181 = icmp sgt i32 %beg.0186, %i.1.end.0
  br i1 %cmp56181, label %for.end66, label %for.body58.lr.ph

for.body58.lr.ph:                                 ; preds = %for.cond55.preheader
  %11 = sext i32 %beg.0186 to i64
  br label %for.body58

for.body58:                                       ; preds = %for.body58, %for.body58.lr.ph
  %indvars.iv197 = phi i64 [ %indvars.iv.next198, %for.body58 ], [ %11, %for.body58.lr.ph ]
  %12 = trunc i64 %indvars.iv197 to i32
  %sub59 = sub i64 %indvars.iv197, %indvars.iv210
  %sext218 = shl i64 %sub59, 32
  %idxprom60 = ashr exact i64 %sext218, 32
  %arrayidx61 = getelementptr inbounds i32* %0, i64 %idxprom60
  store i32 1, i32* %arrayidx61, align 4, !tbaa !2
  %arrayidx63 = getelementptr inbounds i32* %0, i64 %indvars.iv197
  store i32 1, i32* %arrayidx63, align 4, !tbaa !2
  %indvars.iv.next198 = add i64 %indvars.iv197, 1
  %cmp56 = icmp slt i32 %12, %i.1.end.0
  br i1 %cmp56, label %for.body58, label %for.end66

for.end66:                                        ; preds = %for.body58, %for.cond55.preheader
  %13 = add nsw i64 %indvars.iv201, 1
  %14 = trunc i64 %13 to i32
  br label %if.end75

if.else68:                                        ; preds = %for.body32
  %15 = add nsw i64 %indvars.iv201, 1
  %.add44.top.0 = select i1 %cmp52, i32 0, i32 %add44.top.0
  %16 = trunc i64 %15 to i32
  %add73.i.1.end.0 = select i1 %cmp52, i32 %16, i32 %i.1.end.0
  %add73.beg.0 = select i1 %cmp52, i32 %16, i32 %beg.0186
  %.add44 = select i1 %cmp52, i32 0, i32 %add44
  br label %if.end75

if.end75:                                         ; preds = %if.else68, %for.end66
  %top.2 = phi i32 [ 0, %for.end66 ], [ %.add44.top.0, %if.else68 ]
  %end.2 = phi i32 [ %14, %for.end66 ], [ %add73.i.1.end.0, %if.else68 ]
  %beg.1 = phi i32 [ %14, %for.end66 ], [ %add73.beg.0, %if.else68 ]
  %sum.1 = phi i32 [ 0, %for.end66 ], [ %.add44, %if.else68 ]
  %cmp76 = icmp slt i32 %sum.1, 0
  %indvars.iv.next202 = add i64 %indvars.iv201, 1
  %.top.2 = select i1 %cmp76, i32 0, i32 %top.2
  %17 = trunc i64 %indvars.iv.next202 to i32
  %add79.end.2 = select i1 %cmp76, i32 %17, i32 %end.2
  %add79.beg.1 = select i1 %cmp76, i32 %17, i32 %beg.1
  %.sum.1 = select i1 %cmp76, i32 0, i32 %sum.1
  %exitcond207 = icmp eq i32 %17, %add
  br i1 %exitcond207, label %for.end83, label %for.body32

for.end83:                                        ; preds = %if.end75
  %phitmp = icmp slt i32 %.top.2, 21
  %cmp88192 = icmp sgt i32 %add79.beg.1, %add79.end.2
  %or.cond219 = or i1 %phitmp, %cmp88192
  br i1 %or.cond219, label %for.cond24.backedge, label %for.body90.lr.ph

for.cond24.backedge:                              ; preds = %for.end83, %for.body27, %for.body90
  %indvars.iv.next200 = add i64 %indvars.iv199, 1
  %lftr.wideiv212 = trunc i64 %indvars.iv.next211 to i32
  %exitcond213 = icmp eq i32 %lftr.wideiv212, 5
  br i1 %exitcond213, label %for.cond103.preheader, label %for.body27

for.body90.lr.ph:                                 ; preds = %for.end83
  %18 = sext i32 %add79.beg.1 to i64
  br label %for.body90

for.body90:                                       ; preds = %for.body90, %for.body90.lr.ph
  %indvars.iv208 = phi i64 [ %indvars.iv.next209, %for.body90 ], [ %18, %for.body90.lr.ph ]
  %19 = trunc i64 %indvars.iv208 to i32
  %sub91 = sub i64 %indvars.iv208, %indvars.iv210
  %sext = shl i64 %sub91, 32
  %idxprom92 = ashr exact i64 %sext, 32
  %arrayidx93 = getelementptr inbounds i32* %0, i64 %idxprom92
  store i32 1, i32* %arrayidx93, align 4, !tbaa !2
  %arrayidx95 = getelementptr inbounds i32* %0, i64 %indvars.iv208
  store i32 1, i32* %arrayidx95, align 4, !tbaa !2
  %indvars.iv.next209 = add i64 %indvars.iv208, 1
  %cmp88 = icmp slt i32 %19, %add79.end.2
  br i1 %cmp88, label %for.body90, label %for.cond24.backedge

for.body106:                                      ; preds = %for.cond103.preheader, %for.inc116
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc116 ], [ 1, %for.cond103.preheader ]
  %xnum.0180 = phi i32 [ %xnum.1, %for.inc116 ], [ 0, %for.cond103.preheader ]
  %arrayidx108 = getelementptr inbounds i32* %0, i64 %indvars.iv
  %20 = load i32* %arrayidx108, align 4, !tbaa !2
  %tobool = icmp eq i32 %20, 0
  br i1 %tobool, label %for.inc116, label %if.then109

if.then109:                                       ; preds = %for.body106
  %inc110 = add nsw i32 %xnum.0180, 1
  %21 = load i32* @Alphabet_iupac, align 4, !tbaa !2
  %sub111 = add nsw i32 %21, 255
  %conv112 = trunc i32 %sub111 to i8
  %arrayidx114 = getelementptr inbounds i8* %dsq, i64 %indvars.iv
  store i8 %conv112, i8* %arrayidx114, align 1, !tbaa !0
  br label %for.inc116

for.inc116:                                       ; preds = %for.body106, %if.then109
  %xnum.1 = phi i32 [ %inc110, %if.then109 ], [ %xnum.0180, %for.body106 ]
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %add
  br i1 %exitcond, label %for.end118, label %for.body106

for.end118:                                       ; preds = %for.inc116, %for.cond103.preheader
  %xnum.0.lcssa = phi i32 [ 0, %for.cond103.preheader ], [ %xnum.1, %for.inc116 ]
  tail call void @free(i8* %call) #5
  br label %return

return:                                           ; preds = %entry, %for.end118
  %retval.0 = phi i32 [ %xnum.0.lcssa, %for.end118 ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: optsize
declare i8* @sre_malloc(i8*, i32, i64) #1

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) #2

; Function Attrs: nounwind optsize uwtable
define float @TraceScoreCorrection(%struct.plan7_s* %hmm, %struct.p7trace_s* %tr, i8* nocapture %dsq) #0 {
entry:
  %p = alloca [20 x float], align 16
  %sc = alloca [24 x i32], align 16
  %0 = bitcast [20 x float]* %p to i8*
  call void @llvm.lifetime.start(i64 80, i8* %0) #3
  %1 = bitcast [24 x i32]* %sc to i8*
  call void @llvm.lifetime.start(i64 96, i8* %1) #3
  %cmp = icmp eq %struct.p7trace_s* %tr, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %arraydecay = getelementptr inbounds [20 x float]* %p, i64 0, i64 0
  %2 = load i32* @Alphabet_size, align 4, !tbaa !2
  call void @FSet(float* %arraydecay, i32 %2, float 0.000000e+00) #5
  %tlen = getelementptr inbounds %struct.p7trace_s* %tr, i64 0, i32 0
  %3 = load i32* %tlen, align 4, !tbaa !2
  %cmp1126 = icmp sgt i32 %3, 0
  br i1 %cmp1126, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %if.end
  %statetype = getelementptr inbounds %struct.p7trace_s* %tr, i64 0, i32 1
  %nodeidx = getelementptr inbounds %struct.p7trace_s* %tr, i64 0, i32 2
  %mat = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 22
  %ins = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 23
  br label %for.body

for.body:                                         ; preds = %for.inc, %for.body.lr.ph
  %indvars.iv134 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next135, %for.inc ]
  %4 = load i8** %statetype, align 8, !tbaa !3
  %arrayidx = getelementptr inbounds i8* %4, i64 %indvars.iv134
  %5 = load i8* %arrayidx, align 1, !tbaa !0
  switch i8 %5, label %for.inc [
    i8 1, label %if.then4
    i8 3, label %if.then16
  ]

if.then4:                                         ; preds = %for.body
  %6 = load i32** %nodeidx, align 8, !tbaa !3
  %arrayidx7 = getelementptr inbounds i32* %6, i64 %indvars.iv134
  %7 = load i32* %arrayidx7, align 4, !tbaa !2
  %idxprom8 = sext i32 %7 to i64
  %8 = load float*** %mat, align 8, !tbaa !3
  %arrayidx9 = getelementptr inbounds float** %8, i64 %idxprom8
  %9 = load float** %arrayidx9, align 8, !tbaa !3
  %10 = load i32* @Alphabet_size, align 4, !tbaa !2
  call void @FAdd(float* %arraydecay, float* %9, i32 %10) #5
  br label %for.inc

if.then16:                                        ; preds = %for.body
  %11 = load i32** %nodeidx, align 8, !tbaa !3
  %arrayidx20 = getelementptr inbounds i32* %11, i64 %indvars.iv134
  %12 = load i32* %arrayidx20, align 4, !tbaa !2
  %idxprom21 = sext i32 %12 to i64
  %13 = load float*** %ins, align 8, !tbaa !3
  %arrayidx22 = getelementptr inbounds float** %13, i64 %idxprom21
  %14 = load float** %arrayidx22, align 8, !tbaa !3
  %15 = load i32* @Alphabet_size, align 4, !tbaa !2
  call void @FAdd(float* %arraydecay, float* %14, i32 %15) #5
  br label %for.inc

for.inc:                                          ; preds = %for.body, %if.then4, %if.then16
  %indvars.iv.next135 = add i64 %indvars.iv134, 1
  %16 = load i32* %tlen, align 4, !tbaa !2
  %17 = trunc i64 %indvars.iv.next135 to i32
  %cmp1 = icmp slt i32 %17, %16
  br i1 %cmp1, label %for.body, label %for.end

for.end:                                          ; preds = %for.inc, %if.end
  %18 = load i32* @Alphabet_size, align 4, !tbaa !2
  call void @FNorm(float* %arraydecay, i32 %18) #5
  %19 = load i32* @Alphabet_size, align 4, !tbaa !2
  %cmp27123 = icmp sgt i32 %19, 0
  br i1 %cmp27123, label %for.body29, label %for.cond39.preheader

for.cond39.preheader:                             ; preds = %for.body29, %for.end
  %.lcssa = phi i32 [ %19, %for.end ], [ %24, %for.body29 ]
  %20 = load i32* @Alphabet_iupac, align 4, !tbaa !2
  %cmp40121 = icmp slt i32 %.lcssa, %20
  br i1 %cmp40121, label %for.body42.lr.ph, label %for.cond52.preheader

for.body42.lr.ph:                                 ; preds = %for.cond39.preheader
  %arraydecay45 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 28, i64 0
  %21 = sext i32 %.lcssa to i64
  br label %for.body42

for.body29:                                       ; preds = %for.end, %for.body29
  %indvars.iv132 = phi i64 [ %indvars.iv.next133, %for.body29 ], [ 0, %for.end ]
  %arrayidx31 = getelementptr inbounds [20 x float]* %p, i64 0, i64 %indvars.iv132
  %22 = load float* %arrayidx31, align 4, !tbaa !4
  %arrayidx33 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 28, i64 %indvars.iv132
  %23 = load float* %arrayidx33, align 4, !tbaa !4
  %call = call i32 @Prob2Score(float %22, float %23) #5
  %arrayidx35 = getelementptr inbounds [24 x i32]* %sc, i64 0, i64 %indvars.iv132
  store i32 %call, i32* %arrayidx35, align 4, !tbaa !2
  %indvars.iv.next133 = add i64 %indvars.iv132, 1
  %24 = load i32* @Alphabet_size, align 4, !tbaa !2
  %25 = trunc i64 %indvars.iv.next133 to i32
  %cmp27 = icmp slt i32 %25, %24
  br i1 %cmp27, label %for.body29, label %for.cond39.preheader

for.cond52.preheader:                             ; preds = %for.body42, %for.cond39.preheader
  %26 = load i32* %tlen, align 4, !tbaa !2
  %cmp54118 = icmp sgt i32 %26, 0
  br i1 %cmp54118, label %for.body56.lr.ph, label %for.end80

for.body56.lr.ph:                                 ; preds = %for.cond52.preheader
  %statetype58 = getelementptr inbounds %struct.p7trace_s* %tr, i64 0, i32 1
  %27 = load i8** %statetype58, align 8, !tbaa !3
  %pos = getelementptr inbounds %struct.p7trace_s* %tr, i64 0, i32 3
  br label %for.body56

for.body42:                                       ; preds = %for.body42.lr.ph, %for.body42
  %indvars.iv129 = phi i64 [ %21, %for.body42.lr.ph ], [ %indvars.iv.next130, %for.body42 ]
  %28 = trunc i64 %indvars.iv129 to i32
  %call46 = call i32 @DegenerateSymbolScore(float* %arraydecay, float* %arraydecay45, i32 %28) #5
  %arrayidx48 = getelementptr inbounds [24 x i32]* %sc, i64 0, i64 %indvars.iv129
  store i32 %call46, i32* %arrayidx48, align 4, !tbaa !2
  %indvars.iv.next130 = add i64 %indvars.iv129, 1
  %29 = load i32* @Alphabet_iupac, align 4, !tbaa !2
  %30 = trunc i64 %indvars.iv.next130 to i32
  %cmp40 = icmp slt i32 %30, %29
  br i1 %cmp40, label %for.body42, label %for.cond52.preheader

for.body56:                                       ; preds = %for.body56.lr.ph, %for.inc78
  %indvars.iv = phi i64 [ 0, %for.body56.lr.ph ], [ %indvars.iv.next, %for.inc78 ]
  %score.0120 = phi i32 [ 0, %for.body56.lr.ph ], [ %score.1, %for.inc78 ]
  %arrayidx59 = getelementptr inbounds i8* %27, i64 %indvars.iv
  %31 = load i8* %arrayidx59, align 1, !tbaa !0
  switch i8 %31, label %for.inc78 [
    i8 1, label %if.then69
    i8 3, label %if.then69
  ]

if.then69:                                        ; preds = %for.body56, %for.body56
  %32 = load i32** %pos, align 8, !tbaa !3
  %arrayidx71 = getelementptr inbounds i32* %32, i64 %indvars.iv
  %33 = load i32* %arrayidx71, align 4, !tbaa !2
  %idxprom72 = sext i32 %33 to i64
  %arrayidx73 = getelementptr inbounds i8* %dsq, i64 %idxprom72
  %34 = load i8* %arrayidx73, align 1, !tbaa !0
  %idxprom75 = sext i8 %34 to i64
  %arrayidx76 = getelementptr inbounds [24 x i32]* %sc, i64 0, i64 %idxprom75
  %35 = load i32* %arrayidx76, align 4, !tbaa !2
  %add = add nsw i32 %35, %score.0120
  br label %for.inc78

for.inc78:                                        ; preds = %for.body56, %if.then69
  %score.1 = phi i32 [ %add, %if.then69 ], [ %score.0120, %for.body56 ]
  %indvars.iv.next = add i64 %indvars.iv, 1
  %36 = trunc i64 %indvars.iv.next to i32
  %cmp54 = icmp slt i32 %36, %26
  br i1 %cmp54, label %for.body56, label %for.end80

for.end80:                                        ; preds = %for.inc78, %for.cond52.preheader
  %score.0.lcssa = phi i32 [ 0, %for.cond52.preheader ], [ %score.1, %for.inc78 ]
  %conv81 = sitofp i32 %score.0.lcssa to double
  %sub = fadd double %conv81, -8.000000e+03
  %conv82 = fptosi double %sub to i32
  %call83 = call i32 @ILogsum(i32 0, i32 %conv82) #5
  %call84 = call float @Scorify(i32 %call83) #5
  br label %cleanup

cleanup:                                          ; preds = %entry, %for.end80
  %retval.0 = phi float [ %call84, %for.end80 ], [ 0.000000e+00, %entry ]
  call void @llvm.lifetime.end(i64 96, i8* %1) #3
  call void @llvm.lifetime.end(i64 80, i8* %0) #3
  ret float %retval.0
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #3

; Function Attrs: optsize
declare void @FSet(float*, i32, float) #1

; Function Attrs: optsize
declare void @FAdd(float*, float*, i32) #1

; Function Attrs: optsize
declare void @FNorm(float*, i32) #1

; Function Attrs: optsize
declare i32 @Prob2Score(float, float) #1

; Function Attrs: optsize
declare i32 @DegenerateSymbolScore(float*, float*, i32) #1

; Function Attrs: optsize
declare float @Scorify(i32) #1

; Function Attrs: optsize
declare i32 @ILogsum(i32, i32) #1

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #3

; Function Attrs: nounwind optsize readnone uwtable
define float @SantaCruzCorrection(%struct.plan7_s* nocapture %hmm, %struct.p7trace_s* nocapture %tr, i8* nocapture %dsq) #4 {
entry:
  ret float 0.000000e+00
}

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #3

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { nounwind optsize readnone uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind optsize }

!0 = metadata !{metadata !"omnipotent char", metadata !1}
!1 = metadata !{metadata !"Simple C/C++ TBAA"}
!2 = metadata !{metadata !"int", metadata !0}
!3 = metadata !{metadata !"any pointer", metadata !0}
!4 = metadata !{metadata !"float", metadata !0}
