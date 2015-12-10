; ModuleID = '../../SPEC/benchspec/CPU2006/456.hmmer/src/display.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.plan7_s = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i8*, i32*, i32, i32*, i32*, i32*, float, float, float, float, float, float, i32, float**, float**, float**, float, [4 x [2 x float]], float*, float*, [20 x float], float, i32**, i32**, i32**, [4 x [2 x i32]], i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32**, i32**, i32, i32, float, float, i32 }
%struct.dpmatrix_s = type { i32**, i32**, i32**, i32**, i8*, i8*, i8*, i8*, i32, i32, i32, i32 }
%struct.p7trace_s = type { i32, i8*, i32*, i32* }

@.str = private unnamed_addr constant [14 x i8] c"unknown state\00", align 1
@.str1 = private unnamed_addr constant [17 x i8] c"         *      \00", align 1
@.str2 = private unnamed_addr constant [13 x i8] c"    %c      \00", align 1
@Alphabet = external global [25 x i8]
@.str3 = private unnamed_addr constant [7 x i8] c"\0AN    \00", align 1
@.str4 = private unnamed_addr constant [8 x i8] c"\0AM%-3d \00", align 1
@.str5 = private unnamed_addr constant [8 x i8] c"\0AI%-3d \00", align 1
@.str6 = private unnamed_addr constant [7 x i8] c"\0AE    \00", align 1
@.str7 = private unnamed_addr constant [7 x i8] c"\0AC    \00", align 1
@.str8 = private unnamed_addr constant [7 x i8] c"\0AJ    \00", align 1
@.str9 = private unnamed_addr constant [7 x i8] c"\0AB    \00", align 1
@.str10 = private unnamed_addr constant [8 x i8] c"\0AD%-3d \00", align 1
@.str12 = private unnamed_addr constant [10 x i8] c"%- #11.3e\00", align 1
@.str13 = private unnamed_addr constant [4 x i8] c"M%d\00", align 1
@.str14 = private unnamed_addr constant [4 x i8] c"D%d\00", align 1
@.str15 = private unnamed_addr constant [4 x i8] c"I%d\00", align 1
@.str23 = private unnamed_addr constant [15 x i8] c"bad transition\00", align 1
@.str24 = private unnamed_addr constant [21 x i8] c"%d\09%s\09%d\09%s\09%-14.7g\09\00", align 1
@str = private unnamed_addr constant [2 x i8] c"\0A\00"

; Function Attrs: nounwind optsize uwtable
define void @DisplayPlan7Posteriors(i32 %L, %struct.plan7_s* %hmm, %struct.dpmatrix_s* nocapture %forward, %struct.dpmatrix_s* nocapture %backward, %struct.p7trace_s* %viterbi, %struct.p7trace_s* %optacc) #0 {
entry:
  %alignment = alloca [2 x %struct.p7trace_s*], align 16
  call void @llvm.dbg.value(metadata !{i32 %L}, i64 0, metadata !100), !dbg !175
  call void @llvm.dbg.value(metadata !{%struct.plan7_s* %hmm}, i64 0, metadata !101), !dbg !175
  call void @llvm.dbg.value(metadata !{%struct.dpmatrix_s* %forward}, i64 0, metadata !102), !dbg !176
  call void @llvm.dbg.value(metadata !{%struct.dpmatrix_s* %backward}, i64 0, metadata !103), !dbg !177
  call void @llvm.dbg.value(metadata !{%struct.p7trace_s* %viterbi}, i64 0, metadata !104), !dbg !178
  call void @llvm.dbg.value(metadata !{%struct.p7trace_s* %optacc}, i64 0, metadata !105), !dbg !179
  call void @llvm.dbg.declare(metadata !{[2 x %struct.p7trace_s*]* %alignment}, metadata !106), !dbg !180
  %arrayidx = getelementptr inbounds [2 x %struct.p7trace_s*]* %alignment, i64 0, i64 0, !dbg !181
  store %struct.p7trace_s* %viterbi, %struct.p7trace_s** %arrayidx, align 16, !dbg !181, !tbaa !182
  %arrayidx1 = getelementptr inbounds [2 x %struct.p7trace_s*]* %alignment, i64 0, i64 1, !dbg !185
  store %struct.p7trace_s* %optacc, %struct.p7trace_s** %arrayidx1, align 8, !dbg !185, !tbaa !182
  call void @DisplayPlan7PostAlign(i32 %L, %struct.plan7_s* %hmm, %struct.dpmatrix_s* %forward, %struct.dpmatrix_s* %backward, %struct.p7trace_s** %arrayidx, i32 2) #5, !dbg !186
  ret void, !dbg !187
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

; Function Attrs: nounwind optsize uwtable
define void @DisplayPlan7PostAlign(i32 %L, %struct.plan7_s* %hmm, %struct.dpmatrix_s* nocapture %forward, %struct.dpmatrix_s* nocapture %backward, %struct.p7trace_s** nocapture %alignment, i32 %A) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %L}, i64 0, metadata !114), !dbg !188
  tail call void @llvm.dbg.value(metadata !{%struct.plan7_s* %hmm}, i64 0, metadata !115), !dbg !188
  tail call void @llvm.dbg.value(metadata !{%struct.dpmatrix_s* %forward}, i64 0, metadata !116), !dbg !189
  tail call void @llvm.dbg.value(metadata !{%struct.dpmatrix_s* %backward}, i64 0, metadata !117), !dbg !190
  tail call void @llvm.dbg.value(metadata !{%struct.p7trace_s** %alignment}, i64 0, metadata !118), !dbg !191
  tail call void @llvm.dbg.value(metadata !{i32 %A}, i64 0, metadata !119), !dbg !192
  %idxprom = sext i32 %L to i64, !dbg !193
  %xmx = getelementptr inbounds %struct.dpmatrix_s* %forward, i64 0, i32 0, !dbg !193
  %0 = load i32*** %xmx, align 8, !dbg !193, !tbaa !182
  %arrayidx = getelementptr inbounds i32** %0, i64 %idxprom, !dbg !193
  %1 = load i32** %arrayidx, align 8, !dbg !193, !tbaa !182
  %arrayidx1 = getelementptr inbounds i32* %1, i64 2, !dbg !193
  %2 = load i32* %arrayidx1, align 4, !dbg !193, !tbaa !194
  %arrayidx3 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 33, i64 2, i64 0, !dbg !193
  %3 = load i32* %arrayidx3, align 4, !dbg !193, !tbaa !194
  %add = add nsw i32 %3, %2, !dbg !193
  tail call void @llvm.dbg.value(metadata !{i32 %add}, i64 0, metadata !120), !dbg !193
  %conv = sext i32 %A to i64, !dbg !195
  %call = tail call noalias i8* @calloc(i64 %conv, i64 4) #6, !dbg !195
  %4 = bitcast i8* %call to i32*, !dbg !195
  tail call void @llvm.dbg.value(metadata !{i32* %4}, i64 0, metadata !126), !dbg !195
  %call5 = tail call noalias i8* @calloc(i64 %conv, i64 4) #6, !dbg !196
  %5 = bitcast i8* %call5 to i32*, !dbg !196
  tail call void @llvm.dbg.value(metadata !{i32* %5}, i64 0, metadata !127), !dbg !196
  %call7 = tail call noalias i8* @calloc(i64 %conv, i64 4) #6, !dbg !197
  %6 = bitcast i8* %call7 to i32*, !dbg !197
  tail call void @llvm.dbg.value(metadata !{i32* %6}, i64 0, metadata !128), !dbg !197
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !121), !dbg !198
  %cmp793 = icmp slt i32 %L, 0, !dbg !198
  br i1 %cmp793, label %for.end445, label %for.cond9.preheader.lr.ph, !dbg !198

for.cond9.preheader.lr.ph:                        ; preds = %entry
  %cmp10785 = icmp sgt i32 %A, 0, !dbg !200
  %arrayidx305 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 33, i64 0, i64 0, !dbg !203
  %xmx308 = getelementptr inbounds %struct.dpmatrix_s* %backward, i64 0, i32 0, !dbg !203
  %arrayidx323 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 33, i64 0, i64 1, !dbg !207
  %arrayidx340 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 33, i64 3, i64 0, !dbg !208
  %arrayidx358 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 33, i64 3, i64 1, !dbg !209
  %arrayidx388 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 33, i64 2, i64 1, !dbg !210
  %arrayidx405 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 33, i64 1, i64 0, !dbg !211
  %arrayidx419 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 33, i64 1, i64 1, !dbg !212
  %M91 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 20, !dbg !213
  %mmx = getelementptr inbounds %struct.dpmatrix_s* %forward, i64 0, i32 1, !dbg !217
  %tsc = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 30, !dbg !217
  %mmx109 = getelementptr inbounds %struct.dpmatrix_s* %backward, i64 0, i32 1, !dbg !217
  %imx = getelementptr inbounds %struct.dpmatrix_s* %backward, i64 0, i32 2, !dbg !218
  %dmx = getelementptr inbounds %struct.dpmatrix_s* %backward, i64 0, i32 3, !dbg !219
  %esc = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 35, !dbg !220
  %dmx187 = getelementptr inbounds %struct.dpmatrix_s* %forward, i64 0, i32 3, !dbg !221
  %imx232 = getelementptr inbounds %struct.dpmatrix_s* %forward, i64 0, i32 2, !dbg !222
  %bsc = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 34, !dbg !223
  %7 = add i32 %L, 1, !dbg !198
  br label %for.cond9.preheader, !dbg !198

for.cond9.preheader:                              ; preds = %for.inc443, %for.cond9.preheader.lr.ph
  %indvars.iv812 = phi i64 [ %indvars.iv.next813.pre-phi, %for.inc443 ], [ 0, %for.cond9.preheader.lr.ph ]
  %i.0794 = phi i32 [ %add316, %for.inc443 ], [ 0, %for.cond9.preheader.lr.ph ]
  br i1 %cmp10785, label %while.cond.preheader.lr.ph, label %for.cond9.preheader.for.cond57.loopexit_crit_edge, !dbg !200

for.cond9.preheader.for.cond57.loopexit_crit_edge: ; preds = %for.cond9.preheader
  %indvars.iv.next813.pre = add i64 %indvars.iv812, 1, !dbg !198
  br label %for.cond57.loopexit, !dbg !200

while.cond.preheader.lr.ph:                       ; preds = %for.cond9.preheader
  %8 = add nsw i64 %indvars.iv812, 4294967295, !dbg !224
  %9 = add nsw i64 %indvars.iv812, 1, !dbg !226
  br label %while.cond.preheader, !dbg !200

while.cond.preheader:                             ; preds = %for.inc, %while.cond.preheader.lr.ph
  %indvars.iv797 = phi i64 [ 0, %while.cond.preheader.lr.ph ], [ %indvars.iv.next798, %for.inc ]
  %arrayidx14 = getelementptr inbounds i32* %4, i64 %indvars.iv797, !dbg !224
  %10 = load i32* %arrayidx14, align 4, !dbg !224, !tbaa !194
  %idxprom15776 = sext i32 %10 to i64, !dbg !224
  %arrayidx17 = getelementptr inbounds %struct.p7trace_s** %alignment, i64 %indvars.iv797, !dbg !224
  %11 = load %struct.p7trace_s** %arrayidx17, align 8, !dbg !224, !tbaa !182
  %pos777 = getelementptr inbounds %struct.p7trace_s* %11, i64 0, i32 3, !dbg !224
  %12 = load i32** %pos777, align 8, !dbg !224, !tbaa !182
  %arrayidx18778 = getelementptr inbounds i32* %12, i64 %idxprom15776, !dbg !224
  %13 = load i32* %arrayidx18778, align 4, !dbg !224, !tbaa !194
  %14 = trunc i64 %8 to i32, !dbg !224
  %cmp19779 = icmp slt i32 %13, %14, !dbg !224
  br i1 %cmp19779, label %land.rhs.lr.ph, label %while.cond30.loopexit, !dbg !224

land.rhs.lr.ph:                                   ; preds = %while.cond.preheader
  %tlen.phi.trans.insert = getelementptr inbounds %struct.p7trace_s* %11, i64 0, i32 0
  %.pre818 = load i32* %tlen.phi.trans.insert, align 4, !dbg !224, !tbaa !194
  br label %land.rhs, !dbg !224

land.rhs:                                         ; preds = %land.rhs.lr.ph, %while.body
  %indvars.iv = phi i64 [ %idxprom15776, %land.rhs.lr.ph ], [ %indvars.iv.next, %while.body ]
  %sub25 = add nsw i32 %.pre818, -1, !dbg !224
  %15 = trunc i64 %indvars.iv to i32, !dbg !224
  %cmp26 = icmp slt i32 %15, %sub25, !dbg !224
  br i1 %cmp26, label %while.body, label %while.cond30.loopexit

while.body:                                       ; preds = %land.rhs
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !224
  %16 = trunc i64 %indvars.iv.next to i32, !dbg !227
  store i32 %16, i32* %arrayidx14, align 4, !dbg !227, !tbaa !194
  %arrayidx18 = getelementptr inbounds i32* %12, i64 %indvars.iv.next, !dbg !224
  %17 = load i32* %arrayidx18, align 4, !dbg !224, !tbaa !194
  %cmp19 = icmp slt i32 %17, %14, !dbg !224
  br i1 %cmp19, label %land.rhs, label %while.cond30.loopexit, !dbg !224

while.cond30.loopexit:                            ; preds = %while.body, %land.rhs, %while.cond.preheader
  %arrayidx32 = getelementptr inbounds i32* %5, i64 %indvars.iv797, !dbg !226
  %18 = load i32* %arrayidx32, align 4, !dbg !226, !tbaa !194
  %idxprom33781 = sext i32 %18 to i64, !dbg !226
  %arrayidx37783 = getelementptr inbounds i32* %12, i64 %idxprom33781, !dbg !226
  %19 = load i32* %arrayidx37783, align 4, !dbg !226, !tbaa !194
  %20 = trunc i64 %9 to i32, !dbg !226
  %cmp39784 = icmp sgt i32 %19, %20, !dbg !226
  br i1 %cmp39784, label %for.inc, label %land.rhs41, !dbg !226

land.rhs41:                                       ; preds = %while.body51, %while.cond30.loopexit
  %indvars.iv795 = phi i64 [ %idxprom33781, %while.cond30.loopexit ], [ %indvars.iv.next796, %while.body51 ]
  %tlen46 = getelementptr inbounds %struct.p7trace_s* %11, i64 0, i32 0, !dbg !226
  %21 = load i32* %tlen46, align 4, !dbg !226, !tbaa !194
  %sub47 = add nsw i32 %21, -1, !dbg !226
  %22 = trunc i64 %indvars.iv795 to i32, !dbg !226
  %cmp48 = icmp slt i32 %22, %sub47, !dbg !226
  br i1 %cmp48, label %while.body51, label %for.inc

while.body51:                                     ; preds = %land.rhs41
  %indvars.iv.next796 = add i64 %indvars.iv795, 1, !dbg !226
  %23 = trunc i64 %indvars.iv.next796 to i32, !dbg !228
  store i32 %23, i32* %arrayidx32, align 4, !dbg !228, !tbaa !194
  %arrayidx37 = getelementptr inbounds i32* %12, i64 %indvars.iv.next796, !dbg !226
  %24 = load i32* %arrayidx37, align 4, !dbg !226, !tbaa !194
  %cmp39 = icmp sgt i32 %24, %20, !dbg !226
  br i1 %cmp39, label %for.inc, label %land.rhs41, !dbg !226

for.inc:                                          ; preds = %while.body51, %land.rhs41, %while.cond30.loopexit
  %indvars.iv.next798 = add i64 %indvars.iv797, 1, !dbg !200
  %lftr.wideiv = trunc i64 %indvars.iv.next798 to i32, !dbg !200
  %exitcond = icmp eq i32 %lftr.wideiv, %A, !dbg !200
  br i1 %exitcond, label %for.cond57.loopexit, label %while.cond.preheader, !dbg !200

for.cond57.loopexit:                              ; preds = %for.inc, %for.cond9.preheader.for.cond57.loopexit_crit_edge
  %indvars.iv.next813.pre-phi = phi i64 [ %indvars.iv.next813.pre, %for.cond9.preheader.for.cond57.loopexit_crit_edge ], [ %9, %for.inc ], !dbg !198
  %25 = trunc i64 %indvars.iv812 to i32, !dbg !229
  %cmp313 = icmp slt i32 %25, %L, !dbg !229
  %add316 = add nsw i32 %i.0794, 1, !dbg !207
  %cmp428 = icmp eq i32 %25, 0, !dbg !230
  br label %for.body61, !dbg !231

for.body61:                                       ; preds = %for.inc440, %for.cond57.loopexit
  %indvars.iv808 = phi i32 [ 1, %for.cond57.loopexit ], [ %indvars.iv.next809, %for.inc440 ]
  %26 = trunc i32 %indvars.iv808 to i8, !dbg !232
  switch i8 %26, label %for.body87.lr.ph [
    i8 1, label %if.then
    i8 6, label %if.then
    i8 2, label %if.then71
    i8 3, label %if.then78
  ], !dbg !232

if.then:                                          ; preds = %for.body61, %for.body61
  tail call void @llvm.dbg.value(metadata !233, i64 0, metadata !124), !dbg !234
  %27 = load i32* %M91, align 4, !dbg !236, !tbaa !194
  tail call void @llvm.dbg.value(metadata !{i32 %27}, i64 0, metadata !125), !dbg !236
  br label %if.end83, !dbg !237

if.then71:                                        ; preds = %for.body61
  tail call void @llvm.dbg.value(metadata !238, i64 0, metadata !124), !dbg !239
  %28 = load i32* %M91, align 4, !dbg !241, !tbaa !194
  %sub73 = add nsw i32 %28, -1, !dbg !241
  tail call void @llvm.dbg.value(metadata !{i32 %sub73}, i64 0, metadata !125), !dbg !241
  br label %if.end83, !dbg !242

if.then78:                                        ; preds = %for.body61
  tail call void @llvm.dbg.value(metadata !233, i64 0, metadata !124), !dbg !243
  %29 = load i32* %M91, align 4, !dbg !245, !tbaa !194
  %sub80 = add nsw i32 %29, -1, !dbg !245
  tail call void @llvm.dbg.value(metadata !{i32 %sub80}, i64 0, metadata !125), !dbg !245
  br label %if.end83, !dbg !246

if.end83:                                         ; preds = %if.then71, %if.then78, %if.then
  %kmin.0 = phi i32 [ 1, %if.then ], [ 2, %if.then71 ], [ 1, %if.then78 ]
  %kmax.0 = phi i32 [ %27, %if.then ], [ %sub73, %if.then71 ], [ %sub80, %if.then78 ]
  tail call void @llvm.dbg.value(metadata !{i32 %kmin.0826}, i64 0, metadata !123), !dbg !247
  %cmp85787 = icmp sgt i32 %kmin.0, %kmax.0, !dbg !247
  br i1 %cmp85787, label %for.end296, label %for.body87.lr.ph, !dbg !247

for.body87.lr.ph:                                 ; preds = %for.body61, %if.end83
  %kmax.0827 = phi i32 [ %kmax.0, %if.end83 ], [ 0, %for.body61 ]
  %kmin.0826 = phi i32 [ %kmin.0, %if.end83 ], [ 0, %for.body61 ]
  %30 = zext i32 %kmin.0826 to i64
  %31 = add i32 %kmax.0827, 1, !dbg !247
  br label %for.body87, !dbg !247

for.body87:                                       ; preds = %for.inc294, %for.body87.lr.ph
  %indvars.iv799 = phi i64 [ %indvars.iv.next800, %for.inc294 ], [ %30, %for.body87.lr.ph ]
  %k.0788 = phi i32 [ %inc295, %for.inc294 ], [ %kmin.0826, %for.body87.lr.ph ]
  switch i32 %indvars.iv808, label %for.inc294 [
    i32 1, label %sw.bb
    i32 2, label %sw.bb179
    i32 3, label %sw.bb224
    i32 6, label %sw.bb273
  ], !dbg !248

sw.bb:                                            ; preds = %for.body87
  br i1 %cmp313, label %land.lhs.true, label %sw.bb.if.end140_crit_edge, !dbg !213

sw.bb.if.end140_crit_edge:                        ; preds = %sw.bb
  %.pre820 = trunc i64 %indvars.iv799 to i32, !dbg !249
  br label %if.end140, !dbg !213

land.lhs.true:                                    ; preds = %sw.bb
  %32 = load i32* %M91, align 4, !dbg !213, !tbaa !194
  %33 = trunc i64 %indvars.iv799 to i32, !dbg !213
  %cmp92 = icmp slt i32 %33, %32, !dbg !213
  br i1 %cmp92, label %if.end114.land.lhs.true117_crit_edge, label %land.lhs.true117, !dbg !213

if.end114.land.lhs.true117_crit_edge:             ; preds = %land.lhs.true
  %34 = add nsw i64 %indvars.iv799, 1, !dbg !217
  %add96 = add nsw i32 %k.0788, 1, !dbg !217
  %35 = load i32*** %mmx, align 8, !dbg !217, !tbaa !182
  %arrayidx99 = getelementptr inbounds i32** %35, i64 %indvars.iv812, !dbg !217
  %36 = load i32** %arrayidx99, align 8, !dbg !217, !tbaa !182
  %arrayidx100 = getelementptr inbounds i32* %36, i64 %indvars.iv799, !dbg !217
  %37 = load i32* %arrayidx100, align 4, !dbg !217, !tbaa !194
  %38 = load i32*** %tsc, align 8, !dbg !217, !tbaa !182
  %39 = load i32** %38, align 8, !dbg !217, !tbaa !182
  %arrayidx103 = getelementptr inbounds i32* %39, i64 %indvars.iv799, !dbg !217
  %40 = load i32* %arrayidx103, align 4, !dbg !217, !tbaa !194
  %41 = load i32*** %mmx109, align 8, !dbg !217, !tbaa !182
  %arrayidx110 = getelementptr inbounds i32** %41, i64 %indvars.iv.next813.pre-phi, !dbg !217
  %42 = load i32** %arrayidx110, align 8, !dbg !217, !tbaa !182
  %arrayidx111 = getelementptr inbounds i32* %42, i64 %34, !dbg !217
  %43 = load i32* %arrayidx111, align 4, !dbg !217, !tbaa !194
  %add104 = sub i32 %37, %add, !dbg !217
  %add112 = add i32 %add104, %40, !dbg !217
  %sub113 = add i32 %add112, %43, !dbg !217
  tail call void @PrintTransition(i8 signext 1, i32 %25, i32 %33, i8 signext 1, i32 %add316, i32 %add96, i32 %sub113, %struct.p7trace_s** %alignment, i32* %4, i32* %5, i32* %6, i32 %A) #5, !dbg !217
  %.pre = load i32* %M91, align 4, !dbg !250, !tbaa !194
  br label %land.lhs.true117, !dbg !250

land.lhs.true117:                                 ; preds = %if.end114.land.lhs.true117_crit_edge, %land.lhs.true
  %44 = phi i32 [ %.pre, %if.end114.land.lhs.true117_crit_edge ], [ %32, %land.lhs.true ]
  %cmp119 = icmp slt i32 %33, %44, !dbg !250
  br i1 %cmp119, label %if.then121, label %if.end140, !dbg !250

if.then121:                                       ; preds = %land.lhs.true117
  %45 = load i32*** %mmx, align 8, !dbg !218, !tbaa !182
  %arrayidx126 = getelementptr inbounds i32** %45, i64 %indvars.iv812, !dbg !218
  %46 = load i32** %arrayidx126, align 8, !dbg !218, !tbaa !182
  %arrayidx127 = getelementptr inbounds i32* %46, i64 %indvars.iv799, !dbg !218
  %47 = load i32* %arrayidx127, align 4, !dbg !218, !tbaa !194
  %48 = load i32*** %tsc, align 8, !dbg !218, !tbaa !182
  %arrayidx130 = getelementptr inbounds i32** %48, i64 1, !dbg !218
  %49 = load i32** %arrayidx130, align 8, !dbg !218, !tbaa !182
  %arrayidx131 = getelementptr inbounds i32* %49, i64 %indvars.iv799, !dbg !218
  %50 = load i32* %arrayidx131, align 4, !dbg !218, !tbaa !194
  %51 = load i32*** %imx, align 8, !dbg !218, !tbaa !182
  %arrayidx136 = getelementptr inbounds i32** %51, i64 %indvars.iv.next813.pre-phi, !dbg !218
  %52 = load i32** %arrayidx136, align 8, !dbg !218, !tbaa !182
  %arrayidx137 = getelementptr inbounds i32* %52, i64 %indvars.iv799, !dbg !218
  %53 = load i32* %arrayidx137, align 4, !dbg !218, !tbaa !194
  %add132 = sub i32 %47, %add, !dbg !218
  %add138 = add i32 %add132, %50, !dbg !218
  %sub139 = add i32 %add138, %53, !dbg !218
  tail call void @PrintTransition(i8 signext 1, i32 %25, i32 %33, i8 signext 3, i32 %add316, i32 %33, i32 %sub139, %struct.p7trace_s** %alignment, i32* %4, i32* %5, i32* %6, i32 %A) #5, !dbg !218
  br label %if.end140, !dbg !218

if.end140:                                        ; preds = %land.lhs.true117, %sw.bb.if.end140_crit_edge, %if.then121
  %.pre-phi = phi i32 [ %.pre820, %sw.bb.if.end140_crit_edge ], [ %33, %if.then121 ], [ %33, %land.lhs.true117 ], !dbg !249
  %54 = load i32* %M91, align 4, !dbg !249, !tbaa !194
  %sub142 = add nsw i32 %54, -1, !dbg !249
  %cmp143 = icmp slt i32 %.pre-phi, %sub142, !dbg !249
  br i1 %cmp143, label %if.then145, label %if.end164, !dbg !249

if.then145:                                       ; preds = %if.end140
  %55 = add nsw i64 %indvars.iv799, 1, !dbg !219
  %add146 = add nsw i32 %k.0788, 1, !dbg !219
  %56 = load i32*** %mmx, align 8, !dbg !219, !tbaa !182
  %arrayidx150 = getelementptr inbounds i32** %56, i64 %indvars.iv812, !dbg !219
  %57 = load i32** %arrayidx150, align 8, !dbg !219, !tbaa !182
  %arrayidx151 = getelementptr inbounds i32* %57, i64 %indvars.iv799, !dbg !219
  %58 = load i32* %arrayidx151, align 4, !dbg !219, !tbaa !194
  %59 = load i32*** %tsc, align 8, !dbg !219, !tbaa !182
  %arrayidx154 = getelementptr inbounds i32** %59, i64 2, !dbg !219
  %60 = load i32** %arrayidx154, align 8, !dbg !219, !tbaa !182
  %arrayidx155 = getelementptr inbounds i32* %60, i64 %indvars.iv799, !dbg !219
  %61 = load i32* %arrayidx155, align 4, !dbg !219, !tbaa !194
  %62 = load i32*** %dmx, align 8, !dbg !219, !tbaa !182
  %arrayidx160 = getelementptr inbounds i32** %62, i64 %indvars.iv812, !dbg !219
  %63 = load i32** %arrayidx160, align 8, !dbg !219, !tbaa !182
  %arrayidx161 = getelementptr inbounds i32* %63, i64 %55, !dbg !219
  %64 = load i32* %arrayidx161, align 4, !dbg !219, !tbaa !194
  %add156 = sub i32 %58, %add, !dbg !219
  %add162 = add i32 %add156, %61, !dbg !219
  %sub163 = add i32 %add162, %64, !dbg !219
  tail call void @PrintTransition(i8 signext 1, i32 %25, i32 %.pre-phi, i8 signext 2, i32 %25, i32 %add146, i32 %sub163, %struct.p7trace_s** %alignment, i32* %4, i32* %5, i32* %6, i32 %A) #5, !dbg !219
  br label %if.end164, !dbg !219

if.end164:                                        ; preds = %if.then145, %if.end140
  %65 = load i32*** %mmx, align 8, !dbg !220, !tbaa !182
  %arrayidx168 = getelementptr inbounds i32** %65, i64 %indvars.iv812, !dbg !220
  %66 = load i32** %arrayidx168, align 8, !dbg !220, !tbaa !182
  %arrayidx169 = getelementptr inbounds i32* %66, i64 %indvars.iv799, !dbg !220
  %67 = load i32* %arrayidx169, align 4, !dbg !220, !tbaa !194
  %68 = load i32** %esc, align 8, !dbg !220, !tbaa !182
  %arrayidx171 = getelementptr inbounds i32* %68, i64 %indvars.iv799, !dbg !220
  %69 = load i32* %arrayidx171, align 4, !dbg !220, !tbaa !194
  %70 = load i32*** %xmx308, align 8, !dbg !220, !tbaa !182
  %arrayidx175 = getelementptr inbounds i32** %70, i64 %indvars.iv812, !dbg !220
  %71 = load i32** %arrayidx175, align 8, !dbg !220, !tbaa !182
  %arrayidx176 = getelementptr inbounds i32* %71, i64 1, !dbg !220
  %72 = load i32* %arrayidx176, align 4, !dbg !220, !tbaa !194
  %add172 = sub i32 %67, %add, !dbg !220
  %add177 = add i32 %add172, %69, !dbg !220
  %sub178 = add i32 %add177, %72, !dbg !220
  tail call void @PrintTransition(i8 signext 1, i32 %25, i32 %.pre-phi, i8 signext 7, i32 %25, i32 0, i32 %sub178, %struct.p7trace_s** %alignment, i32* %4, i32* %5, i32* %6, i32 %A) #5, !dbg !220
  br label %for.inc294, !dbg !251

sw.bb179:                                         ; preds = %for.body87
  %73 = add nsw i64 %indvars.iv799, 1, !dbg !221
  %add184 = add nsw i32 %k.0788, 1, !dbg !221
  br i1 %cmp313, label %if.then182, label %sw.bb179.if.end204_crit_edge, !dbg !252

sw.bb179.if.end204_crit_edge:                     ; preds = %sw.bb179
  %.pre823 = trunc i64 %indvars.iv799 to i32, !dbg !253
  br label %if.end204, !dbg !252

if.then182:                                       ; preds = %sw.bb179
  %74 = load i32*** %dmx187, align 8, !dbg !221, !tbaa !182
  %arrayidx188 = getelementptr inbounds i32** %74, i64 %indvars.iv812, !dbg !221
  %75 = load i32** %arrayidx188, align 8, !dbg !221, !tbaa !182
  %arrayidx189 = getelementptr inbounds i32* %75, i64 %indvars.iv799, !dbg !221
  %76 = load i32* %arrayidx189, align 4, !dbg !221, !tbaa !194
  %77 = load i32*** %tsc, align 8, !dbg !221, !tbaa !182
  %arrayidx192 = getelementptr inbounds i32** %77, i64 5, !dbg !221
  %78 = load i32** %arrayidx192, align 8, !dbg !221, !tbaa !182
  %arrayidx193 = getelementptr inbounds i32* %78, i64 %indvars.iv799, !dbg !221
  %79 = load i32* %arrayidx193, align 4, !dbg !221, !tbaa !194
  %80 = load i32*** %mmx109, align 8, !dbg !221, !tbaa !182
  %arrayidx200 = getelementptr inbounds i32** %80, i64 %indvars.iv.next813.pre-phi, !dbg !221
  %81 = load i32** %arrayidx200, align 8, !dbg !221, !tbaa !182
  %arrayidx201 = getelementptr inbounds i32* %81, i64 %73, !dbg !221
  %82 = load i32* %arrayidx201, align 4, !dbg !221, !tbaa !194
  %add194 = sub i32 %76, %add, !dbg !221
  %add202 = add i32 %add194, %79, !dbg !221
  %sub203 = add i32 %add202, %82, !dbg !221
  %83 = trunc i64 %indvars.iv799 to i32, !dbg !221
  tail call void @PrintTransition(i8 signext 2, i32 %25, i32 %83, i8 signext 1, i32 %add316, i32 %add184, i32 %sub203, %struct.p7trace_s** %alignment, i32* %4, i32* %5, i32* %6, i32 %A) #5, !dbg !221
  br label %if.end204, !dbg !221

if.end204:                                        ; preds = %sw.bb179.if.end204_crit_edge, %if.then182
  %.pre-phi824 = phi i32 [ %.pre823, %sw.bb179.if.end204_crit_edge ], [ %83, %if.then182 ], !dbg !253
  %84 = load i32*** %dmx187, align 8, !dbg !253, !tbaa !182
  %arrayidx209 = getelementptr inbounds i32** %84, i64 %indvars.iv812, !dbg !253
  %85 = load i32** %arrayidx209, align 8, !dbg !253, !tbaa !182
  %arrayidx210 = getelementptr inbounds i32* %85, i64 %indvars.iv799, !dbg !253
  %86 = load i32* %arrayidx210, align 4, !dbg !253, !tbaa !194
  %87 = load i32*** %tsc, align 8, !dbg !253, !tbaa !182
  %arrayidx213 = getelementptr inbounds i32** %87, i64 6, !dbg !253
  %88 = load i32** %arrayidx213, align 8, !dbg !253, !tbaa !182
  %arrayidx214 = getelementptr inbounds i32* %88, i64 %indvars.iv799, !dbg !253
  %89 = load i32* %arrayidx214, align 4, !dbg !253, !tbaa !194
  %90 = load i32*** %dmx, align 8, !dbg !253, !tbaa !182
  %arrayidx220 = getelementptr inbounds i32** %90, i64 %indvars.iv812, !dbg !253
  %91 = load i32** %arrayidx220, align 8, !dbg !253, !tbaa !182
  %arrayidx221 = getelementptr inbounds i32* %91, i64 %73, !dbg !253
  %92 = load i32* %arrayidx221, align 4, !dbg !253, !tbaa !194
  %add215 = sub i32 %86, %add, !dbg !253
  %add222 = add i32 %add215, %89, !dbg !253
  %sub223 = add i32 %add222, %92, !dbg !253
  tail call void @PrintTransition(i8 signext 2, i32 %25, i32 %.pre-phi824, i8 signext 2, i32 %25, i32 %add184, i32 %sub223, %struct.p7trace_s** %alignment, i32* %4, i32* %5, i32* %6, i32 %A) #5, !dbg !253
  br label %for.inc294, !dbg !254

sw.bb224:                                         ; preds = %for.body87
  br i1 %cmp313, label %if.then227, label %for.inc294, !dbg !255

if.then227:                                       ; preds = %sw.bb224
  %93 = add nsw i64 %indvars.iv799, 1, !dbg !222
  %add229 = add nsw i32 %k.0788, 1, !dbg !222
  %94 = load i32*** %imx232, align 8, !dbg !222, !tbaa !182
  %arrayidx233 = getelementptr inbounds i32** %94, i64 %indvars.iv812, !dbg !222
  %95 = load i32** %arrayidx233, align 8, !dbg !222, !tbaa !182
  %arrayidx234 = getelementptr inbounds i32* %95, i64 %indvars.iv799, !dbg !222
  %96 = load i32* %arrayidx234, align 4, !dbg !222, !tbaa !194
  %97 = load i32*** %tsc, align 8, !dbg !222, !tbaa !182
  %arrayidx237 = getelementptr inbounds i32** %97, i64 3, !dbg !222
  %98 = load i32** %arrayidx237, align 8, !dbg !222, !tbaa !182
  %arrayidx238 = getelementptr inbounds i32* %98, i64 %indvars.iv799, !dbg !222
  %99 = load i32* %arrayidx238, align 4, !dbg !222, !tbaa !194
  %100 = load i32*** %mmx109, align 8, !dbg !222, !tbaa !182
  %arrayidx245 = getelementptr inbounds i32** %100, i64 %indvars.iv.next813.pre-phi, !dbg !222
  %101 = load i32** %arrayidx245, align 8, !dbg !222, !tbaa !182
  %arrayidx246 = getelementptr inbounds i32* %101, i64 %93, !dbg !222
  %102 = load i32* %arrayidx246, align 4, !dbg !222, !tbaa !194
  %add239 = sub i32 %96, %add, !dbg !222
  %add247 = add i32 %add239, %99, !dbg !222
  %sub248 = add i32 %add247, %102, !dbg !222
  %103 = trunc i64 %indvars.iv799 to i32, !dbg !222
  tail call void @PrintTransition(i8 signext 3, i32 %25, i32 %103, i8 signext 1, i32 %add316, i32 %add229, i32 %sub248, %struct.p7trace_s** %alignment, i32* %4, i32* %5, i32* %6, i32 %A) #5, !dbg !222
  %104 = load i32*** %imx232, align 8, !dbg !256, !tbaa !182
  %arrayidx257 = getelementptr inbounds i32** %104, i64 %indvars.iv812, !dbg !256
  %105 = load i32** %arrayidx257, align 8, !dbg !256, !tbaa !182
  %arrayidx258 = getelementptr inbounds i32* %105, i64 %indvars.iv799, !dbg !256
  %106 = load i32* %arrayidx258, align 4, !dbg !256, !tbaa !194
  %107 = load i32*** %tsc, align 8, !dbg !256, !tbaa !182
  %arrayidx261 = getelementptr inbounds i32** %107, i64 4, !dbg !256
  %108 = load i32** %arrayidx261, align 8, !dbg !256, !tbaa !182
  %arrayidx262 = getelementptr inbounds i32* %108, i64 %indvars.iv799, !dbg !256
  %109 = load i32* %arrayidx262, align 4, !dbg !256, !tbaa !194
  %110 = load i32*** %imx, align 8, !dbg !256, !tbaa !182
  %arrayidx268 = getelementptr inbounds i32** %110, i64 %indvars.iv.next813.pre-phi, !dbg !256
  %111 = load i32** %arrayidx268, align 8, !dbg !256, !tbaa !182
  %arrayidx269 = getelementptr inbounds i32* %111, i64 %indvars.iv799, !dbg !256
  %112 = load i32* %arrayidx269, align 4, !dbg !256, !tbaa !194
  %add263 = sub i32 %106, %add, !dbg !256
  %add270 = add i32 %add263, %109, !dbg !256
  %sub271 = add i32 %add270, %112, !dbg !256
  tail call void @PrintTransition(i8 signext 3, i32 %25, i32 %103, i8 signext 3, i32 %add316, i32 %103, i32 %sub271, %struct.p7trace_s** %alignment, i32* %4, i32* %5, i32* %6, i32 %A) #5, !dbg !256
  br label %for.inc294, !dbg !256

sw.bb273:                                         ; preds = %for.body87
  br i1 %cmp313, label %if.then276, label %for.inc294, !dbg !257

if.then276:                                       ; preds = %sw.bb273
  %113 = load i32*** %xmx, align 8, !dbg !223, !tbaa !182
  %arrayidx280 = getelementptr inbounds i32** %113, i64 %indvars.iv812, !dbg !223
  %114 = load i32** %arrayidx280, align 8, !dbg !223, !tbaa !182
  %115 = load i32* %114, align 4, !dbg !223, !tbaa !194
  %116 = load i32** %bsc, align 8, !dbg !223, !tbaa !182
  %arrayidx283 = getelementptr inbounds i32* %116, i64 %indvars.iv799, !dbg !223
  %117 = load i32* %arrayidx283, align 4, !dbg !223, !tbaa !194
  %118 = load i32*** %mmx109, align 8, !dbg !223, !tbaa !182
  %arrayidx289 = getelementptr inbounds i32** %118, i64 %indvars.iv.next813.pre-phi, !dbg !223
  %119 = load i32** %arrayidx289, align 8, !dbg !223, !tbaa !182
  %arrayidx290 = getelementptr inbounds i32* %119, i64 %indvars.iv799, !dbg !223
  %120 = load i32* %arrayidx290, align 4, !dbg !223, !tbaa !194
  %add284 = sub i32 %115, %add, !dbg !223
  %add291 = add i32 %add284, %117, !dbg !223
  %sub292 = add i32 %add291, %120, !dbg !223
  %121 = trunc i64 %indvars.iv799 to i32, !dbg !223
  tail call void @PrintTransition(i8 signext 6, i32 %25, i32 0, i8 signext 1, i32 %add316, i32 %121, i32 %sub292, %struct.p7trace_s** %alignment, i32* %4, i32* %5, i32* %6, i32 %A) #5, !dbg !223
  br label %for.inc294, !dbg !223

for.inc294:                                       ; preds = %sw.bb224, %if.end164, %if.end204, %if.then227, %if.then276, %sw.bb273, %for.body87
  %indvars.iv.next800 = add i64 %indvars.iv799, 1, !dbg !247
  %inc295 = add nsw i32 %k.0788, 1, !dbg !247
  tail call void @llvm.dbg.value(metadata !{i32 %inc295}, i64 0, metadata !123), !dbg !247
  %lftr.wideiv806 = trunc i64 %indvars.iv.next800 to i32, !dbg !247
  %exitcond807 = icmp eq i32 %lftr.wideiv806, %31, !dbg !247
  br i1 %exitcond807, label %for.end296, label %for.body87, !dbg !247

for.end296:                                       ; preds = %for.inc294, %if.end83
  switch i32 %indvars.iv808, label %sw.default438 [
    i32 5, label %sw.bb298
    i32 10, label %sw.bb333
    i32 8, label %sw.bb368
    i32 7, label %sw.bb398
    i32 4, label %sw.bb427
    i32 1, label %for.inc440
    i32 2, label %for.inc440
    i32 3, label %for.inc440
    i32 6, label %for.inc440
    i32 9, label %for.inc440
  ], !dbg !258

sw.bb298:                                         ; preds = %for.end296
  %122 = load i32*** %xmx, align 8, !dbg !203, !tbaa !182
  %arrayidx301 = getelementptr inbounds i32** %122, i64 %indvars.iv812, !dbg !203
  %123 = load i32** %arrayidx301, align 8, !dbg !203, !tbaa !182
  %arrayidx302 = getelementptr inbounds i32* %123, i64 4, !dbg !203
  %124 = load i32* %arrayidx302, align 4, !dbg !203, !tbaa !194
  %125 = load i32* %arrayidx305, align 4, !dbg !203, !tbaa !194
  %126 = load i32*** %xmx308, align 8, !dbg !203, !tbaa !182
  %arrayidx309 = getelementptr inbounds i32** %126, i64 %indvars.iv812, !dbg !203
  %127 = load i32** %arrayidx309, align 8, !dbg !203, !tbaa !182
  %128 = load i32* %127, align 4, !dbg !203, !tbaa !194
  %add306 = sub i32 %124, %add, !dbg !203
  %add311 = add i32 %add306, %125, !dbg !203
  %sub312 = add i32 %add311, %128, !dbg !203
  tail call void @PrintTransition(i8 signext 5, i32 %25, i32 0, i8 signext 6, i32 %25, i32 0, i32 %sub312, %struct.p7trace_s** %alignment, i32* %4, i32* %5, i32* %6, i32 %A) #5, !dbg !203
  br i1 %cmp313, label %if.then315, label %for.inc440, !dbg !229

if.then315:                                       ; preds = %sw.bb298
  %129 = load i32*** %xmx, align 8, !dbg !207, !tbaa !182
  %arrayidx319 = getelementptr inbounds i32** %129, i64 %indvars.iv812, !dbg !207
  %130 = load i32** %arrayidx319, align 8, !dbg !207, !tbaa !182
  %arrayidx320 = getelementptr inbounds i32* %130, i64 4, !dbg !207
  %131 = load i32* %arrayidx320, align 4, !dbg !207, !tbaa !194
  %132 = load i32* %arrayidx323, align 4, !dbg !207, !tbaa !194
  %133 = load i32*** %xmx308, align 8, !dbg !207, !tbaa !182
  %arrayidx328 = getelementptr inbounds i32** %133, i64 %indvars.iv.next813.pre-phi, !dbg !207
  %134 = load i32** %arrayidx328, align 8, !dbg !207, !tbaa !182
  %arrayidx329 = getelementptr inbounds i32* %134, i64 4, !dbg !207
  %135 = load i32* %arrayidx329, align 4, !dbg !207, !tbaa !194
  %add324 = sub i32 %131, %add, !dbg !207
  %add330 = add i32 %add324, %132, !dbg !207
  %sub331 = add i32 %add330, %135, !dbg !207
  tail call void @PrintTransition(i8 signext 5, i32 %25, i32 0, i8 signext 5, i32 %add316, i32 0, i32 %sub331, %struct.p7trace_s** %alignment, i32* %4, i32* %5, i32* %6, i32 %A) #5, !dbg !207
  br label %for.inc440, !dbg !207

sw.bb333:                                         ; preds = %for.end296
  %136 = load i32*** %xmx, align 8, !dbg !208, !tbaa !182
  %arrayidx336 = getelementptr inbounds i32** %136, i64 %indvars.iv812, !dbg !208
  %137 = load i32** %arrayidx336, align 8, !dbg !208, !tbaa !182
  %arrayidx337 = getelementptr inbounds i32* %137, i64 3, !dbg !208
  %138 = load i32* %arrayidx337, align 4, !dbg !208, !tbaa !194
  %139 = load i32* %arrayidx340, align 4, !dbg !208, !tbaa !194
  %140 = load i32*** %xmx308, align 8, !dbg !208, !tbaa !182
  %arrayidx344 = getelementptr inbounds i32** %140, i64 %indvars.iv812, !dbg !208
  %141 = load i32** %arrayidx344, align 8, !dbg !208, !tbaa !182
  %142 = load i32* %141, align 4, !dbg !208, !tbaa !194
  %add341 = sub i32 %138, %add, !dbg !208
  %add346 = add i32 %add341, %139, !dbg !208
  %sub347 = add i32 %add346, %142, !dbg !208
  tail call void @PrintTransition(i8 signext 10, i32 %25, i32 0, i8 signext 6, i32 %25, i32 0, i32 %sub347, %struct.p7trace_s** %alignment, i32* %4, i32* %5, i32* %6, i32 %A) #5, !dbg !208
  br i1 %cmp313, label %if.then350, label %for.inc440, !dbg !259

if.then350:                                       ; preds = %sw.bb333
  %143 = load i32*** %xmx, align 8, !dbg !209, !tbaa !182
  %arrayidx354 = getelementptr inbounds i32** %143, i64 %indvars.iv812, !dbg !209
  %144 = load i32** %arrayidx354, align 8, !dbg !209, !tbaa !182
  %arrayidx355 = getelementptr inbounds i32* %144, i64 3, !dbg !209
  %145 = load i32* %arrayidx355, align 4, !dbg !209, !tbaa !194
  %146 = load i32* %arrayidx358, align 4, !dbg !209, !tbaa !194
  %147 = load i32*** %xmx308, align 8, !dbg !209, !tbaa !182
  %arrayidx363 = getelementptr inbounds i32** %147, i64 %indvars.iv.next813.pre-phi, !dbg !209
  %148 = load i32** %arrayidx363, align 8, !dbg !209, !tbaa !182
  %arrayidx364 = getelementptr inbounds i32* %148, i64 3, !dbg !209
  %149 = load i32* %arrayidx364, align 4, !dbg !209, !tbaa !194
  %add359 = sub i32 %145, %add, !dbg !209
  %add365 = add i32 %add359, %146, !dbg !209
  %sub366 = add i32 %add365, %149, !dbg !209
  tail call void @PrintTransition(i8 signext 10, i32 %25, i32 0, i8 signext 10, i32 %add316, i32 0, i32 %sub366, %struct.p7trace_s** %alignment, i32* %4, i32* %5, i32* %6, i32 %A) #5, !dbg !209
  br label %for.inc440, !dbg !209

sw.bb368:                                         ; preds = %for.end296
  %150 = load i32*** %xmx, align 8, !dbg !260, !tbaa !182
  %arrayidx371 = getelementptr inbounds i32** %150, i64 %indvars.iv812, !dbg !260
  %151 = load i32** %arrayidx371, align 8, !dbg !260, !tbaa !182
  %arrayidx372 = getelementptr inbounds i32* %151, i64 2, !dbg !260
  %152 = load i32* %arrayidx372, align 4, !dbg !260, !tbaa !194
  %153 = load i32* %arrayidx3, align 4, !dbg !260, !tbaa !194
  %add376 = sub i32 %152, %add, !dbg !260
  %sub377 = add i32 %add376, %153, !dbg !260
  tail call void @PrintTransition(i8 signext 8, i32 %25, i32 0, i8 signext 9, i32 %25, i32 0, i32 %sub377, %struct.p7trace_s** %alignment, i32* %4, i32* %5, i32* %6, i32 %A) #5, !dbg !260
  br i1 %cmp313, label %if.then380, label %for.inc440, !dbg !261

if.then380:                                       ; preds = %sw.bb368
  %154 = load i32*** %xmx, align 8, !dbg !210, !tbaa !182
  %arrayidx384 = getelementptr inbounds i32** %154, i64 %indvars.iv812, !dbg !210
  %155 = load i32** %arrayidx384, align 8, !dbg !210, !tbaa !182
  %arrayidx385 = getelementptr inbounds i32* %155, i64 2, !dbg !210
  %156 = load i32* %arrayidx385, align 4, !dbg !210, !tbaa !194
  %157 = load i32* %arrayidx388, align 4, !dbg !210, !tbaa !194
  %158 = load i32*** %xmx308, align 8, !dbg !210, !tbaa !182
  %arrayidx393 = getelementptr inbounds i32** %158, i64 %indvars.iv.next813.pre-phi, !dbg !210
  %159 = load i32** %arrayidx393, align 8, !dbg !210, !tbaa !182
  %arrayidx394 = getelementptr inbounds i32* %159, i64 2, !dbg !210
  %160 = load i32* %arrayidx394, align 4, !dbg !210, !tbaa !194
  %add389 = sub i32 %156, %add, !dbg !210
  %add395 = add i32 %add389, %157, !dbg !210
  %sub396 = add i32 %add395, %160, !dbg !210
  tail call void @PrintTransition(i8 signext 8, i32 %25, i32 0, i8 signext 8, i32 %add316, i32 0, i32 %sub396, %struct.p7trace_s** %alignment, i32* %4, i32* %5, i32* %6, i32 %A) #5, !dbg !210
  br label %for.inc440, !dbg !210

sw.bb398:                                         ; preds = %for.end296
  %161 = load i32*** %xmx, align 8, !dbg !211, !tbaa !182
  %arrayidx401 = getelementptr inbounds i32** %161, i64 %indvars.iv812, !dbg !211
  %162 = load i32** %arrayidx401, align 8, !dbg !211, !tbaa !182
  %arrayidx402 = getelementptr inbounds i32* %162, i64 1, !dbg !211
  %163 = load i32* %arrayidx402, align 4, !dbg !211, !tbaa !194
  %164 = load i32* %arrayidx405, align 4, !dbg !211, !tbaa !194
  %165 = load i32*** %xmx308, align 8, !dbg !211, !tbaa !182
  %arrayidx409 = getelementptr inbounds i32** %165, i64 %indvars.iv812, !dbg !211
  %166 = load i32** %arrayidx409, align 8, !dbg !211, !tbaa !182
  %arrayidx410 = getelementptr inbounds i32* %166, i64 2, !dbg !211
  %167 = load i32* %arrayidx410, align 4, !dbg !211, !tbaa !194
  %add406 = sub i32 %163, %add, !dbg !211
  %add411 = add i32 %add406, %164, !dbg !211
  %sub412 = add i32 %add411, %167, !dbg !211
  tail call void @PrintTransition(i8 signext 7, i32 %25, i32 0, i8 signext 8, i32 %25, i32 0, i32 %sub412, %struct.p7trace_s** %alignment, i32* %4, i32* %5, i32* %6, i32 %A) #5, !dbg !211
  %168 = load i32*** %xmx, align 8, !dbg !212, !tbaa !182
  %arrayidx415 = getelementptr inbounds i32** %168, i64 %indvars.iv812, !dbg !212
  %169 = load i32** %arrayidx415, align 8, !dbg !212, !tbaa !182
  %arrayidx416 = getelementptr inbounds i32* %169, i64 1, !dbg !212
  %170 = load i32* %arrayidx416, align 4, !dbg !212, !tbaa !194
  %171 = load i32* %arrayidx419, align 4, !dbg !212, !tbaa !194
  %172 = load i32*** %xmx308, align 8, !dbg !212, !tbaa !182
  %arrayidx423 = getelementptr inbounds i32** %172, i64 %indvars.iv812, !dbg !212
  %173 = load i32** %arrayidx423, align 8, !dbg !212, !tbaa !182
  %arrayidx424 = getelementptr inbounds i32* %173, i64 3, !dbg !212
  %174 = load i32* %arrayidx424, align 4, !dbg !212, !tbaa !194
  %add420 = sub i32 %170, %add, !dbg !212
  %add425 = add i32 %add420, %171, !dbg !212
  %sub426 = add i32 %add425, %174, !dbg !212
  tail call void @PrintTransition(i8 signext 7, i32 %25, i32 0, i8 signext 10, i32 %25, i32 0, i32 %sub426, %struct.p7trace_s** %alignment, i32* %4, i32* %5, i32* %6, i32 %A) #5, !dbg !212
  br label %for.inc440, !dbg !262

sw.bb427:                                         ; preds = %for.end296
  br i1 %cmp428, label %if.then430, label %for.inc440, !dbg !230

if.then430:                                       ; preds = %sw.bb427
  %175 = load i32*** %xmx308, align 8, !dbg !263, !tbaa !182
  %arrayidx433 = getelementptr inbounds i32** %175, i64 %indvars.iv812, !dbg !263
  %176 = load i32** %arrayidx433, align 8, !dbg !263, !tbaa !182
  %arrayidx434 = getelementptr inbounds i32* %176, i64 4, !dbg !263
  %177 = load i32* %arrayidx434, align 4, !dbg !263, !tbaa !194
  %sub435 = sub nsw i32 %177, %add, !dbg !263
  tail call void @PrintTransition(i8 signext 4, i32 0, i32 0, i8 signext 5, i32 0, i32 0, i32 %sub435, %struct.p7trace_s** %alignment, i32* %4, i32* %5, i32* %6, i32 %A) #5, !dbg !263
  br label %for.inc440, !dbg !263

sw.default438:                                    ; preds = %for.end296
  tail call void (i8*, ...)* @Die(i8* getelementptr inbounds ([14 x i8]* @.str, i64 0, i64 0)) #6, !dbg !264
  br label %for.inc440, !dbg !265

for.inc440:                                       ; preds = %sw.bb398, %sw.default438, %if.then315, %sw.bb298, %if.then350, %sw.bb333, %if.then380, %sw.bb368, %if.then430, %sw.bb427, %for.end296, %for.end296, %for.end296, %for.end296, %for.end296
  %indvars.iv.next809 = add i32 %indvars.iv808, 1, !dbg !231
  %lftr.wideiv810 = trunc i32 %indvars.iv.next809 to i8, !dbg !231
  %exitcond811 = icmp eq i8 %lftr.wideiv810, 11, !dbg !231
  br i1 %exitcond811, label %for.inc443, label %for.body61, !dbg !231

for.inc443:                                       ; preds = %for.inc440
  tail call void @llvm.dbg.value(metadata !{i32 %add316}, i64 0, metadata !121), !dbg !198
  %lftr.wideiv816 = trunc i64 %indvars.iv.next813.pre-phi to i32, !dbg !198
  %exitcond817 = icmp eq i32 %lftr.wideiv816, %7, !dbg !198
  br i1 %exitcond817, label %for.end445, label %for.cond9.preheader, !dbg !198

for.end445:                                       ; preds = %for.inc443, %entry
  tail call void @free(i8* %call) #6, !dbg !266
  tail call void @free(i8* %call5) #6, !dbg !267
  tail call void @free(i8* %call7) #6, !dbg !268
  ret void, !dbg !269
}

; Function Attrs: nounwind optsize
declare noalias i8* @calloc(i64, i64) #2

; Function Attrs: nounwind optsize uwtable
define void @PrintTransition(i8 signext %src, i32 %isrc, i32 %ksrc, i8 signext %dest, i32 %idest, i32 %kdest, i32 %sc, %struct.p7trace_s** nocapture %alignment, i32* nocapture %min, i32* nocapture %max, i32* nocapture %on, i32 %A) #0 {
entry:
  %src_str = alloca [6 x i8], align 2
  %dest_str = alloca [6 x i8], align 2
  call void @llvm.dbg.value(metadata !{i8 %src}, i64 0, metadata !152), !dbg !270
  call void @llvm.dbg.value(metadata !{i32 %isrc}, i64 0, metadata !153), !dbg !271
  call void @llvm.dbg.value(metadata !{i32 %ksrc}, i64 0, metadata !154), !dbg !272
  call void @llvm.dbg.value(metadata !{i8 %dest}, i64 0, metadata !155), !dbg !273
  call void @llvm.dbg.value(metadata !{i32 %idest}, i64 0, metadata !156), !dbg !274
  call void @llvm.dbg.value(metadata !{i32 %kdest}, i64 0, metadata !157), !dbg !275
  call void @llvm.dbg.value(metadata !{i32 %sc}, i64 0, metadata !158), !dbg !276
  call void @llvm.dbg.value(metadata !{%struct.p7trace_s** %alignment}, i64 0, metadata !159), !dbg !277
  call void @llvm.dbg.value(metadata !{i32* %min}, i64 0, metadata !160), !dbg !278
  call void @llvm.dbg.value(metadata !{i32* %max}, i64 0, metadata !161), !dbg !279
  call void @llvm.dbg.value(metadata !{i32* %on}, i64 0, metadata !162), !dbg !280
  call void @llvm.dbg.value(metadata !{i32 %A}, i64 0, metadata !163), !dbg !281
  call void @llvm.dbg.declare(metadata !{[6 x i8]* %src_str}, metadata !164), !dbg !282
  call void @llvm.dbg.declare(metadata !{[6 x i8]* %dest_str}, metadata !168), !dbg !283
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !174), !dbg !284
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !169), !dbg !285
  %cmp331 = icmp sgt i32 %A, 0, !dbg !285
  br i1 %cmp331, label %for.body, label %return, !dbg !285

for.body:                                         ; preds = %entry, %for.inc144
  %indvars.iv345 = phi i64 [ %indvars.iv.next346, %for.inc144 ], [ 0, %entry ]
  %near.0333 = phi i32 [ %near.1.lcssa, %for.inc144 ], [ 0, %entry ]
  %arrayidx = getelementptr inbounds i32* %on, i64 %indvars.iv345, !dbg !287
  store i32 0, i32* %arrayidx, align 4, !dbg !287, !tbaa !194
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !172), !dbg !289
  %arrayidx2 = getelementptr inbounds i32* %min, i64 %indvars.iv345, !dbg !289
  %0 = load i32* %arrayidx2, align 4, !dbg !289, !tbaa !194
  call void @llvm.dbg.value(metadata !{i32 %0}, i64 0, metadata !170), !dbg !289
  %arrayidx5 = getelementptr inbounds i32* %max, i64 %indvars.iv345, !dbg !289
  %1 = load i32* %arrayidx5, align 4, !dbg !289, !tbaa !194
  %cmp6326 = icmp sgt i32 %0, %1, !dbg !289
  br i1 %cmp6326, label %for.inc144, label %for.body7.lr.ph, !dbg !289

for.body7.lr.ph:                                  ; preds = %for.body
  %arrayidx10 = getelementptr inbounds %struct.p7trace_s** %alignment, i64 %indvars.iv345, !dbg !291
  %2 = sext i32 %0 to i64
  %.pre = load %struct.p7trace_s** %arrayidx10, align 8, !dbg !291, !tbaa !182
  %pos11.phi.trans.insert = getelementptr inbounds %struct.p7trace_s* %.pre, i64 0, i32 3
  %.pre356 = load i32** %pos11.phi.trans.insert, align 8, !dbg !291, !tbaa !182
  %statetype.phi.trans.insert = getelementptr inbounds %struct.p7trace_s* %.pre, i64 0, i32 1
  %.pre357 = load i8** %statetype.phi.trans.insert, align 8, !dbg !293, !tbaa !182
  br label %for.body7, !dbg !289

for.body7:                                        ; preds = %for.inc, %for.body7.lr.ph
  %3 = phi i32 [ %23, %for.inc ], [ %1, %for.body7.lr.ph ]
  %indvars.iv342 = phi i64 [ %12, %for.inc ], [ %2, %for.body7.lr.ph ]
  %indvars.iv337.in = phi i64 [ %indvars.iv337, %for.inc ], [ %2, %for.body7.lr.ph ]
  %near.1329 = phi i32 [ %near.3, %for.inc ], [ %near.0333, %for.body7.lr.ph ]
  %pos.0328 = phi i32 [ %pos.0., %for.inc ], [ 0, %for.body7.lr.ph ]
  %tpos.0327 = phi i32 [ %add, %for.inc ], [ %0, %for.body7.lr.ph ]
  %indvars.iv337 = add i64 %indvars.iv337.in, 1, !dbg !289
  %arrayidx12 = getelementptr inbounds i32* %.pre356, i64 %indvars.iv342, !dbg !291
  %4 = load i32* %arrayidx12, align 4, !dbg !291, !tbaa !194
  %cmp13 = icmp eq i32 %4, 0, !dbg !291
  call void @llvm.dbg.value(metadata !{i32 %4}, i64 0, metadata !172), !dbg !294
  %pos.0. = select i1 %cmp13, i32 %pos.0328, i32 %4, !dbg !291
  %arrayidx22 = getelementptr inbounds i8* %.pre357, i64 %indvars.iv342, !dbg !293
  %5 = load i8* %arrayidx22, align 1, !dbg !293, !tbaa !183
  %cmp24 = icmp eq i8 %5, %src, !dbg !293
  br i1 %cmp24, label %land.lhs.true, label %if.end36, !dbg !293

land.lhs.true:                                    ; preds = %for.body7
  %nodeidx = getelementptr inbounds %struct.p7trace_s* %.pre, i64 0, i32 2, !dbg !293
  %6 = load i32** %nodeidx, align 8, !dbg !293, !tbaa !182
  %arrayidx29 = getelementptr inbounds i32* %6, i64 %indvars.iv342, !dbg !293
  %7 = load i32* %arrayidx29, align 4, !dbg !293, !tbaa !194
  %cmp30 = icmp eq i32 %7, %ksrc, !dbg !293
  %cmp33 = icmp eq i32 %pos.0., %isrc, !dbg !293
  %or.cond = and i1 %cmp30, %cmp33, !dbg !293
  call void @llvm.dbg.value(metadata !233, i64 0, metadata !174), !dbg !295
  %.near.1 = select i1 %or.cond, i32 1, i32 %near.1329, !dbg !293
  br label %if.end36, !dbg !293

if.end36:                                         ; preds = %land.lhs.true, %for.body7
  %near.2 = phi i32 [ %near.1329, %for.body7 ], [ %.near.1, %land.lhs.true ]
  %cmp44 = icmp eq i8 %5, %dest, !dbg !296
  br i1 %cmp44, label %land.lhs.true46, label %if.end58, !dbg !296

land.lhs.true46:                                  ; preds = %if.end36
  %nodeidx50 = getelementptr inbounds %struct.p7trace_s* %.pre, i64 0, i32 2, !dbg !296
  %8 = load i32** %nodeidx50, align 8, !dbg !296, !tbaa !182
  %arrayidx51 = getelementptr inbounds i32* %8, i64 %indvars.iv342, !dbg !296
  %9 = load i32* %arrayidx51, align 4, !dbg !296, !tbaa !194
  %cmp52 = icmp eq i32 %9, %kdest, !dbg !296
  %cmp55 = icmp eq i32 %pos.0., %idest, !dbg !296
  %or.cond316 = and i1 %cmp52, %cmp55, !dbg !296
  call void @llvm.dbg.value(metadata !233, i64 0, metadata !174), !dbg !297
  %.near.2 = select i1 %or.cond316, i32 1, i32 %near.2, !dbg !296
  br label %if.end58, !dbg !296

if.end58:                                         ; preds = %if.end36, %land.lhs.true46
  %near.3 = phi i32 [ %.near.2, %land.lhs.true46 ], [ %near.2, %if.end36 ]
  %tlen = getelementptr inbounds %struct.p7trace_s* %.pre, i64 0, i32 0, !dbg !298
  %10 = load i32* %tlen, align 4, !dbg !298, !tbaa !194
  %sub = add nsw i32 %10, -1, !dbg !298
  %11 = trunc i64 %indvars.iv342 to i32, !dbg !298
  %cmp61 = icmp slt i32 %11, %sub, !dbg !298
  %12 = add i64 %indvars.iv342, 1, !dbg !299
  %add = add nsw i32 %tpos.0327, 1, !dbg !299
  br i1 %cmp61, label %if.then63, label %for.inc, !dbg !298

if.then63:                                        ; preds = %if.end58
  call void @llvm.dbg.value(metadata !{i32 %add}, i64 0, metadata !171), !dbg !299
  %cmp70 = icmp eq i8 %5, 6, !dbg !301
  %13 = trunc i64 %12 to i32, !dbg !301
  br i1 %cmp70, label %while.cond.preheader, label %if.end87, !dbg !301

while.cond.preheader:                             ; preds = %if.then63
  %arrayidx77323 = getelementptr inbounds i8* %.pre357, i64 %12, !dbg !302
  %14 = load i8* %arrayidx77323, align 1, !dbg !302, !tbaa !183
  %cmp79324 = icmp eq i8 %14, 2, !dbg !302
  br i1 %cmp79324, label %land.rhs, label %if.end87, !dbg !302

while.cond:                                       ; preds = %land.rhs
  %idxprom73 = sext i32 %inc to i64, !dbg !302
  %arrayidx77 = getelementptr inbounds i8* %.pre357, i64 %idxprom73, !dbg !302
  %15 = load i8* %arrayidx77, align 1, !dbg !302, !tbaa !183
  %cmp79 = icmp eq i8 %15, 2, !dbg !302
  br i1 %cmp79, label %while.cond.land.rhs_crit_edge, label %if.end87, !dbg !302

while.cond.land.rhs_crit_edge:                    ; preds = %while.cond
  %indvars.iv.next340 = add i64 %indvars.iv339, 1, !dbg !302
  br label %land.rhs, !dbg !302

land.rhs:                                         ; preds = %while.cond.preheader, %while.cond.land.rhs_crit_edge
  %indvars.iv339 = phi i64 [ %indvars.iv.next340, %while.cond.land.rhs_crit_edge ], [ %indvars.iv337, %while.cond.preheader ], !dbg !289
  %tnext.0325 = phi i32 [ %inc, %while.cond.land.rhs_crit_edge ], [ %add, %while.cond.preheader ]
  %16 = trunc i64 %indvars.iv339 to i32, !dbg !302
  %cmp85 = icmp slt i32 %16, %sub, !dbg !302
  %inc = add nsw i32 %tnext.0325, 1, !dbg !303
  call void @llvm.dbg.value(metadata !{i32 %inc}, i64 0, metadata !171), !dbg !303
  br i1 %cmp85, label %while.cond, label %if.end87

if.end87:                                         ; preds = %while.cond.preheader, %land.rhs, %while.cond, %if.then63
  %17 = phi i8 [ %5, %if.then63 ], [ 6, %while.cond ], [ 6, %land.rhs ], [ 6, %while.cond.preheader ]
  %tnext.1 = phi i32 [ %13, %if.then63 ], [ %inc, %while.cond ], [ %tnext.0325, %land.rhs ], [ %13, %while.cond.preheader ]
  %idxprom88 = sext i32 %tnext.1 to i64, !dbg !304
  %arrayidx92 = getelementptr inbounds i32* %.pre356, i64 %idxprom88, !dbg !304
  %18 = load i32* %arrayidx92, align 4, !dbg !304, !tbaa !194
  call void @llvm.dbg.value(metadata !{i32 %18}, i64 0, metadata !173), !dbg !304
  %cmp93 = icmp eq i32 %18, 0, !dbg !305
  call void @llvm.dbg.value(metadata !{i32 %pos.0.}, i64 0, metadata !173), !dbg !306
  %pos.0.. = select i1 %cmp93, i32 %pos.0., i32 %18, !dbg !305
  %cmp104 = icmp eq i8 %17, %src, !dbg !307
  br i1 %cmp104, label %land.lhs.true106, label %for.inc, !dbg !307

land.lhs.true106:                                 ; preds = %if.end87
  %nodeidx110 = getelementptr inbounds %struct.p7trace_s* %.pre, i64 0, i32 2, !dbg !307
  %19 = load i32** %nodeidx110, align 8, !dbg !307, !tbaa !182
  %arrayidx111 = getelementptr inbounds i32* %19, i64 %indvars.iv342, !dbg !307
  %20 = load i32* %arrayidx111, align 4, !dbg !307, !tbaa !194
  %cmp112 = icmp eq i32 %20, %ksrc, !dbg !307
  %cmp115 = icmp eq i32 %pos.0., %isrc, !dbg !307
  %or.cond317 = and i1 %cmp112, %cmp115, !dbg !307
  br i1 %or.cond317, label %land.lhs.true117, label %for.inc, !dbg !307

land.lhs.true117:                                 ; preds = %land.lhs.true106
  %arrayidx123 = getelementptr inbounds i8* %.pre357, i64 %idxprom88, !dbg !307
  %21 = load i8* %arrayidx123, align 1, !dbg !307, !tbaa !183
  %cmp125 = icmp eq i8 %21, %dest, !dbg !307
  br i1 %cmp125, label %land.lhs.true127, label %for.inc, !dbg !307

land.lhs.true127:                                 ; preds = %land.lhs.true117
  %arrayidx132 = getelementptr inbounds i32* %19, i64 %idxprom88, !dbg !307
  %22 = load i32* %arrayidx132, align 4, !dbg !307, !tbaa !194
  %cmp133 = icmp eq i32 %22, %kdest, !dbg !307
  %cmp136 = icmp eq i32 %pos.0.., %idest, !dbg !307
  %or.cond318 = and i1 %cmp133, %cmp136, !dbg !307
  br i1 %or.cond318, label %if.then138, label %for.inc, !dbg !307

if.then138:                                       ; preds = %land.lhs.true127
  store i32 1, i32* %arrayidx, align 4, !dbg !308, !tbaa !194
  %.pre354 = load i32* %arrayidx5, align 4, !dbg !289, !tbaa !194
  br label %for.inc, !dbg !308

for.inc:                                          ; preds = %if.end58, %if.then138, %land.lhs.true127, %land.lhs.true117, %land.lhs.true106, %if.end87
  %23 = phi i32 [ %.pre354, %if.then138 ], [ %3, %land.lhs.true127 ], [ %3, %land.lhs.true117 ], [ %3, %land.lhs.true106 ], [ %3, %if.end87 ], [ %3, %if.end58 ], !dbg !289
  call void @llvm.dbg.value(metadata !{i32 %add}, i64 0, metadata !170), !dbg !289
  %cmp6 = icmp slt i32 %11, %23, !dbg !289
  br i1 %cmp6, label %for.body7, label %for.inc144, !dbg !289

for.inc144:                                       ; preds = %for.inc, %for.body
  %near.1.lcssa = phi i32 [ %near.0333, %for.body ], [ %near.3, %for.inc ]
  %indvars.iv.next346 = add i64 %indvars.iv345, 1, !dbg !285
  %lftr.wideiv347 = trunc i64 %indvars.iv.next346 to i32, !dbg !285
  %exitcond348 = icmp eq i32 %lftr.wideiv347, %A, !dbg !285
  br i1 %exitcond348, label %for.end146, label %for.body, !dbg !285

for.end146:                                       ; preds = %for.inc144
  %tobool = icmp eq i32 %near.1.lcssa, 0, !dbg !309
  br i1 %tobool, label %return, label %if.end148, !dbg !309

if.end148:                                        ; preds = %for.end146
  %conv149 = sext i8 %src to i32, !dbg !310
  switch i32 %conv149, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb150
    i32 3, label %sw.bb153
    i32 4, label %sw.bb156
    i32 5, label %sw.bb159
    i32 6, label %sw.bb162
    i32 7, label %sw.bb165
    i32 8, label %sw.bb168
    i32 10, label %sw.bb171
    i32 9, label %sw.bb174
  ], !dbg !310

sw.bb:                                            ; preds = %if.end148
  %arraydecay = getelementptr inbounds [6 x i8]* %src_str, i64 0, i64 0, !dbg !311
  %call = call i32 (i8*, i8*, ...)* @sprintf(i8* %arraydecay, i8* getelementptr inbounds ([4 x i8]* @.str13, i64 0, i64 0), i32 %ksrc) #6, !dbg !311
  br label %sw.epilog, !dbg !311

sw.bb150:                                         ; preds = %if.end148
  %arraydecay151 = getelementptr inbounds [6 x i8]* %src_str, i64 0, i64 0, !dbg !313
  %call152 = call i32 (i8*, i8*, ...)* @sprintf(i8* %arraydecay151, i8* getelementptr inbounds ([4 x i8]* @.str14, i64 0, i64 0), i32 %ksrc) #6, !dbg !313
  br label %sw.epilog, !dbg !313

sw.bb153:                                         ; preds = %if.end148
  %arraydecay154 = getelementptr inbounds [6 x i8]* %src_str, i64 0, i64 0, !dbg !314
  %call155 = call i32 (i8*, i8*, ...)* @sprintf(i8* %arraydecay154, i8* getelementptr inbounds ([4 x i8]* @.str15, i64 0, i64 0), i32 %ksrc) #6, !dbg !314
  br label %sw.epilog, !dbg !314

sw.bb156:                                         ; preds = %if.end148
  %24 = bitcast [6 x i8]* %src_str to i16*, !dbg !315
  store i16 83, i16* %24, align 2, !dbg !315
  br label %sw.epilog, !dbg !315

sw.bb159:                                         ; preds = %if.end148
  %25 = bitcast [6 x i8]* %src_str to i16*, !dbg !316
  store i16 78, i16* %25, align 2, !dbg !316
  br label %sw.epilog, !dbg !316

sw.bb162:                                         ; preds = %if.end148
  %26 = bitcast [6 x i8]* %src_str to i16*, !dbg !317
  store i16 66, i16* %26, align 2, !dbg !317
  br label %sw.epilog, !dbg !317

sw.bb165:                                         ; preds = %if.end148
  %27 = bitcast [6 x i8]* %src_str to i16*, !dbg !318
  store i16 69, i16* %27, align 2, !dbg !318
  br label %sw.epilog, !dbg !318

sw.bb168:                                         ; preds = %if.end148
  %28 = bitcast [6 x i8]* %src_str to i16*, !dbg !319
  store i16 67, i16* %28, align 2, !dbg !319
  br label %sw.epilog, !dbg !319

sw.bb171:                                         ; preds = %if.end148
  %29 = bitcast [6 x i8]* %src_str to i16*, !dbg !320
  store i16 74, i16* %29, align 2, !dbg !320
  br label %sw.epilog, !dbg !320

sw.bb174:                                         ; preds = %if.end148
  %30 = bitcast [6 x i8]* %src_str to i16*, !dbg !321
  store i16 84, i16* %30, align 2, !dbg !321
  br label %sw.epilog, !dbg !321

sw.default:                                       ; preds = %if.end148
  call void (i8*, ...)* @Die(i8* getelementptr inbounds ([15 x i8]* @.str23, i64 0, i64 0)) #6, !dbg !322
  br label %sw.epilog, !dbg !323

sw.epilog:                                        ; preds = %sw.default, %sw.bb174, %sw.bb171, %sw.bb168, %sw.bb165, %sw.bb162, %sw.bb159, %sw.bb156, %sw.bb153, %sw.bb150, %sw.bb
  %conv177 = sext i8 %dest to i32, !dbg !324
  switch i32 %conv177, label %sw.default208 [
    i32 1, label %sw.bb178
    i32 2, label %sw.bb181
    i32 3, label %sw.bb184
    i32 4, label %sw.bb187
    i32 5, label %sw.bb190
    i32 6, label %sw.bb193
    i32 7, label %sw.bb196
    i32 8, label %sw.bb199
    i32 10, label %sw.bb202
    i32 9, label %sw.bb205
  ], !dbg !324

sw.bb178:                                         ; preds = %sw.epilog
  %arraydecay179 = getelementptr inbounds [6 x i8]* %dest_str, i64 0, i64 0, !dbg !325
  %call180 = call i32 (i8*, i8*, ...)* @sprintf(i8* %arraydecay179, i8* getelementptr inbounds ([4 x i8]* @.str13, i64 0, i64 0), i32 %kdest) #6, !dbg !325
  br label %sw.epilog209, !dbg !325

sw.bb181:                                         ; preds = %sw.epilog
  %arraydecay182 = getelementptr inbounds [6 x i8]* %dest_str, i64 0, i64 0, !dbg !327
  %call183 = call i32 (i8*, i8*, ...)* @sprintf(i8* %arraydecay182, i8* getelementptr inbounds ([4 x i8]* @.str14, i64 0, i64 0), i32 %kdest) #6, !dbg !327
  br label %sw.epilog209, !dbg !327

sw.bb184:                                         ; preds = %sw.epilog
  %arraydecay185 = getelementptr inbounds [6 x i8]* %dest_str, i64 0, i64 0, !dbg !328
  %call186 = call i32 (i8*, i8*, ...)* @sprintf(i8* %arraydecay185, i8* getelementptr inbounds ([4 x i8]* @.str15, i64 0, i64 0), i32 %kdest) #6, !dbg !328
  br label %sw.epilog209, !dbg !328

sw.bb187:                                         ; preds = %sw.epilog
  %31 = bitcast [6 x i8]* %dest_str to i16*, !dbg !329
  store i16 83, i16* %31, align 2, !dbg !329
  br label %sw.epilog209, !dbg !329

sw.bb190:                                         ; preds = %sw.epilog
  %32 = bitcast [6 x i8]* %dest_str to i16*, !dbg !330
  store i16 78, i16* %32, align 2, !dbg !330
  br label %sw.epilog209, !dbg !330

sw.bb193:                                         ; preds = %sw.epilog
  %33 = bitcast [6 x i8]* %dest_str to i16*, !dbg !331
  store i16 66, i16* %33, align 2, !dbg !331
  br label %sw.epilog209, !dbg !331

sw.bb196:                                         ; preds = %sw.epilog
  %34 = bitcast [6 x i8]* %dest_str to i16*, !dbg !332
  store i16 69, i16* %34, align 2, !dbg !332
  br label %sw.epilog209, !dbg !332

sw.bb199:                                         ; preds = %sw.epilog
  %35 = bitcast [6 x i8]* %dest_str to i16*, !dbg !333
  store i16 67, i16* %35, align 2, !dbg !333
  br label %sw.epilog209, !dbg !333

sw.bb202:                                         ; preds = %sw.epilog
  %36 = bitcast [6 x i8]* %dest_str to i16*, !dbg !334
  store i16 74, i16* %36, align 2, !dbg !334
  br label %sw.epilog209, !dbg !334

sw.bb205:                                         ; preds = %sw.epilog
  %37 = bitcast [6 x i8]* %dest_str to i16*, !dbg !335
  store i16 84, i16* %37, align 2, !dbg !335
  br label %sw.epilog209, !dbg !335

sw.default208:                                    ; preds = %sw.epilog
  call void (i8*, ...)* @Die(i8* getelementptr inbounds ([15 x i8]* @.str23, i64 0, i64 0)) #6, !dbg !336
  br label %sw.epilog209, !dbg !337

sw.epilog209:                                     ; preds = %sw.default208, %sw.bb205, %sw.bb202, %sw.bb199, %sw.bb196, %sw.bb193, %sw.bb190, %sw.bb187, %sw.bb184, %sw.bb181, %sw.bb178
  %arraydecay210 = getelementptr inbounds [6 x i8]* %src_str, i64 0, i64 0, !dbg !338
  %arraydecay211 = getelementptr inbounds [6 x i8]* %dest_str, i64 0, i64 0, !dbg !338
  %call212 = call float @Score2Prob(i32 %sc, float 1.000000e+00) #6, !dbg !338
  %conv213 = fpext float %call212 to double, !dbg !338
  %call214 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([21 x i8]* @.str24, i64 0, i64 0), i32 %isrc, i8* %arraydecay210, i32 %idest, i8* %arraydecay211, double %conv213) #6, !dbg !338
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !169), !dbg !339
  br i1 %cmp331, label %for.body218.lr.ph, label %for.end233, !dbg !339

for.body218.lr.ph:                                ; preds = %sw.epilog209
  %sub225 = add nsw i32 %A, -1, !dbg !341
  br label %for.body218, !dbg !339

for.body218:                                      ; preds = %for.inc231, %for.body218.lr.ph
  %indvars.iv = phi i64 [ 0, %for.body218.lr.ph ], [ %indvars.iv.next, %for.inc231 ]
  %arrayidx220 = getelementptr inbounds i32* %on, i64 %indvars.iv, !dbg !343
  %38 = load i32* %arrayidx220, align 4, !dbg !343, !tbaa !194
  %tobool221 = icmp eq i32 %38, 0, !dbg !343
  br i1 %tobool221, label %if.end224, label %if.then222, !dbg !343

if.then222:                                       ; preds = %for.body218
  %putchar315 = call i32 @putchar(i32 42) #4, !dbg !343
  br label %if.end224, !dbg !343

if.end224:                                        ; preds = %for.body218, %if.then222
  %39 = trunc i64 %indvars.iv to i32, !dbg !341
  %cmp226 = icmp slt i32 %39, %sub225, !dbg !341
  br i1 %cmp226, label %if.then228, label %for.inc231, !dbg !341

if.then228:                                       ; preds = %if.end224
  %putchar314 = call i32 @putchar(i32 9) #4, !dbg !341
  br label %for.inc231, !dbg !341

for.inc231:                                       ; preds = %if.end224, %if.then228
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !339
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !339
  %exitcond = icmp eq i32 %lftr.wideiv, %A, !dbg !339
  br i1 %exitcond, label %for.end233, label %for.body218, !dbg !339

for.end233:                                       ; preds = %for.inc231, %sw.epilog209
  %putchar = call i32 @putchar(i32 10) #4, !dbg !344
  br label %return, !dbg !344

return:                                           ; preds = %entry, %for.end146, %for.end233
  ret void, !dbg !344
}

; Function Attrs: optsize
declare void @Die(i8*, ...) #3

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) #2

; Function Attrs: nounwind optsize uwtable
define void @DisplayPlan7Matrix(i8* nocapture %dsq, i32 %L, %struct.plan7_s* nocapture %hmm, %struct.dpmatrix_s* nocapture %mx) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i8* %dsq}, i64 0, metadata !134), !dbg !345
  tail call void @llvm.dbg.value(metadata !{i32 %L}, i64 0, metadata !135), !dbg !345
  tail call void @llvm.dbg.value(metadata !{%struct.plan7_s* %hmm}, i64 0, metadata !136), !dbg !345
  tail call void @llvm.dbg.value(metadata !{%struct.dpmatrix_s* %mx}, i64 0, metadata !137), !dbg !345
  %call = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([17 x i8]* @.str1, i64 0, i64 0)) #6, !dbg !346
  tail call void @llvm.dbg.value(metadata !233, i64 0, metadata !138), !dbg !347
  %cmp218 = icmp slt i32 %L, 1, !dbg !347
  br i1 %cmp218, label %for.end, label %for.body.lr.ph, !dbg !347

for.body.lr.ph:                                   ; preds = %entry
  %0 = add i32 %L, 1, !dbg !347
  br label %for.body, !dbg !347

for.body:                                         ; preds = %for.body, %for.body.lr.ph
  %indvars.iv254 = phi i64 [ %indvars.iv.next255, %for.body ], [ 1, %for.body.lr.ph ]
  %arrayidx = getelementptr inbounds i8* %dsq, i64 %indvars.iv254, !dbg !347
  %1 = load i8* %arrayidx, align 1, !dbg !347, !tbaa !183
  %idxprom1 = sext i8 %1 to i64, !dbg !347
  %arrayidx2 = getelementptr inbounds [25 x i8]* @Alphabet, i64 0, i64 %idxprom1, !dbg !347
  %2 = load i8* %arrayidx2, align 1, !dbg !347, !tbaa !183
  %conv3 = sext i8 %2 to i32, !dbg !347
  %call4 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([13 x i8]* @.str2, i64 0, i64 0), i32 %conv3) #6, !dbg !347
  %indvars.iv.next255 = add i64 %indvars.iv254, 1, !dbg !347
  %lftr.wideiv256 = trunc i64 %indvars.iv.next255 to i32, !dbg !347
  %exitcond257 = icmp eq i32 %lftr.wideiv256, %0, !dbg !347
  br i1 %exitcond257, label %for.end, label %for.body, !dbg !347

for.end:                                          ; preds = %for.body, %entry
  %call5 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([7 x i8]* @.str3, i64 0, i64 0)) #6, !dbg !349
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !138), !dbg !350
  %cmp7216 = icmp slt i32 %L, 0, !dbg !350
  br i1 %cmp7216, label %for.cond16.preheader, label %for.body9.lr.ph, !dbg !350

for.body9.lr.ph:                                  ; preds = %for.end
  %xmx = getelementptr inbounds %struct.dpmatrix_s* %mx, i64 0, i32 0, !dbg !350
  %3 = add i32 %L, 1, !dbg !350
  br label %for.body9, !dbg !350

for.cond16.preheader:                             ; preds = %for.body9, %for.end
  %M = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 20, !dbg !352
  %4 = load i32* %M, align 4, !dbg !352, !tbaa !194
  %cmp17214 = icmp slt i32 %4, 1, !dbg !352
  br i1 %cmp17214, label %for.end54, label %for.body19.lr.ph, !dbg !352

for.body19.lr.ph:                                 ; preds = %for.cond16.preheader
  %mmx = getelementptr inbounds %struct.dpmatrix_s* %mx, i64 0, i32 1, !dbg !354
  %5 = add i32 %L, 1, !dbg !352
  br label %for.body19, !dbg !352

for.body9:                                        ; preds = %for.body9, %for.body9.lr.ph
  %indvars.iv250 = phi i64 [ %indvars.iv.next251, %for.body9 ], [ 0, %for.body9.lr.ph ]
  %6 = load i32*** %xmx, align 8, !dbg !350, !tbaa !182
  %arrayidx11 = getelementptr inbounds i32** %6, i64 %indvars.iv250, !dbg !350
  %7 = load i32** %arrayidx11, align 8, !dbg !350, !tbaa !182
  %arrayidx12 = getelementptr inbounds i32* %7, i64 4, !dbg !350
  %8 = load i32* %arrayidx12, align 4, !dbg !350, !tbaa !194
  tail call void @llvm.dbg.value(metadata !{i32 %8}, i64 0, metadata !357) #4, !dbg !358
  %conv.i = sitofp i32 %8 to double, !dbg !359
  tail call void @llvm.dbg.value(metadata !{double %conv.i}, i64 0, metadata !360) #4, !dbg !359
  tail call void @llvm.dbg.value(metadata !361, i64 0, metadata !362) #4, !dbg !363
  %div1.i = fdiv double %conv.i, 0x40968AC7B8CC7DEF, !dbg !364
  tail call void @llvm.dbg.value(metadata !{double %div1.i}, i64 0, metadata !360) #4, !dbg !364
  %call.i = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([10 x i8]* @.str12, i64 0, i64 0), double %div1.i) #6, !dbg !365
  %indvars.iv.next251 = add i64 %indvars.iv250, 1, !dbg !350
  %lftr.wideiv252 = trunc i64 %indvars.iv.next251 to i32, !dbg !350
  %exitcond253 = icmp eq i32 %lftr.wideiv252, %3, !dbg !350
  br i1 %exitcond253, label %for.cond16.preheader, label %for.body9, !dbg !350

for.cond35.preheader:                             ; preds = %for.inc32
  %cmp37210 = icmp sgt i32 %14, 1, !dbg !366
  br i1 %cmp37210, label %for.body39.lr.ph, label %for.end54, !dbg !366

for.body39.lr.ph:                                 ; preds = %for.cond35.preheader
  %imx = getelementptr inbounds %struct.dpmatrix_s* %mx, i64 0, i32 2, !dbg !368
  %9 = add i32 %L, 1, !dbg !366
  br label %for.body39, !dbg !366

for.body19:                                       ; preds = %for.inc32, %for.body19.lr.ph
  %indvars.iv248 = phi i64 [ %indvars.iv.next249, %for.inc32 ], [ 1, %for.body19.lr.ph ]
  %10 = trunc i64 %indvars.iv248 to i32, !dbg !371
  %call20 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([8 x i8]* @.str4, i64 0, i64 0), i32 %10) #6, !dbg !371
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !138), !dbg !354
  br i1 %cmp7216, label %for.inc32, label %for.body24, !dbg !354

for.body24:                                       ; preds = %for.body19, %for.body24
  %indvars.iv244 = phi i64 [ %indvars.iv.next245, %for.body24 ], [ 0, %for.body19 ]
  %11 = load i32*** %mmx, align 8, !dbg !354, !tbaa !182
  %arrayidx27 = getelementptr inbounds i32** %11, i64 %indvars.iv244, !dbg !354
  %12 = load i32** %arrayidx27, align 8, !dbg !354, !tbaa !182
  %arrayidx28 = getelementptr inbounds i32* %12, i64 %indvars.iv248, !dbg !354
  %13 = load i32* %arrayidx28, align 4, !dbg !354, !tbaa !194
  tail call void @llvm.dbg.value(metadata !{i32 %13}, i64 0, metadata !372) #4, !dbg !373
  %conv.i175 = sitofp i32 %13 to double, !dbg !374
  tail call void @llvm.dbg.value(metadata !{double %conv.i175}, i64 0, metadata !375) #4, !dbg !374
  tail call void @llvm.dbg.value(metadata !361, i64 0, metadata !376) #4, !dbg !377
  %div1.i176 = fdiv double %conv.i175, 0x40968AC7B8CC7DEF, !dbg !378
  tail call void @llvm.dbg.value(metadata !{double %div1.i176}, i64 0, metadata !375) #4, !dbg !378
  %call.i177 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([10 x i8]* @.str12, i64 0, i64 0), double %div1.i176) #6, !dbg !379
  %indvars.iv.next245 = add i64 %indvars.iv244, 1, !dbg !354
  %lftr.wideiv246 = trunc i64 %indvars.iv.next245 to i32, !dbg !354
  %exitcond247 = icmp eq i32 %lftr.wideiv246, %5, !dbg !354
  br i1 %exitcond247, label %for.inc32, label %for.body24, !dbg !354

for.inc32:                                        ; preds = %for.body24, %for.body19
  %indvars.iv.next249 = add i64 %indvars.iv248, 1, !dbg !352
  %14 = load i32* %M, align 4, !dbg !352, !tbaa !194
  %cmp17 = icmp slt i32 %10, %14, !dbg !352
  br i1 %cmp17, label %for.body19, label %for.cond35.preheader, !dbg !352

for.body39:                                       ; preds = %for.body39.lr.ph, %for.inc52
  %indvars.iv242 = phi i64 [ 1, %for.body39.lr.ph ], [ %indvars.iv.next243, %for.inc52 ]
  %15 = trunc i64 %indvars.iv242 to i32, !dbg !380
  %call40 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([8 x i8]* @.str5, i64 0, i64 0), i32 %15) #6, !dbg !380
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !138), !dbg !368
  br i1 %cmp7216, label %for.inc52, label %for.body44, !dbg !368

for.body44:                                       ; preds = %for.body39, %for.body44
  %indvars.iv238 = phi i64 [ %indvars.iv.next239, %for.body44 ], [ 0, %for.body39 ]
  %16 = load i32*** %imx, align 8, !dbg !368, !tbaa !182
  %arrayidx47 = getelementptr inbounds i32** %16, i64 %indvars.iv238, !dbg !368
  %17 = load i32** %arrayidx47, align 8, !dbg !368, !tbaa !182
  %arrayidx48 = getelementptr inbounds i32* %17, i64 %indvars.iv242, !dbg !368
  %18 = load i32* %arrayidx48, align 4, !dbg !368, !tbaa !194
  tail call void @llvm.dbg.value(metadata !{i32 %18}, i64 0, metadata !381) #4, !dbg !382
  %conv.i178 = sitofp i32 %18 to double, !dbg !383
  tail call void @llvm.dbg.value(metadata !{double %conv.i178}, i64 0, metadata !384) #4, !dbg !383
  tail call void @llvm.dbg.value(metadata !361, i64 0, metadata !385) #4, !dbg !386
  %div1.i179 = fdiv double %conv.i178, 0x40968AC7B8CC7DEF, !dbg !387
  tail call void @llvm.dbg.value(metadata !{double %div1.i179}, i64 0, metadata !384) #4, !dbg !387
  %call.i180 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([10 x i8]* @.str12, i64 0, i64 0), double %div1.i179) #6, !dbg !388
  %indvars.iv.next239 = add i64 %indvars.iv238, 1, !dbg !368
  %lftr.wideiv240 = trunc i64 %indvars.iv.next239 to i32, !dbg !368
  %exitcond241 = icmp eq i32 %lftr.wideiv240, %9, !dbg !368
  br i1 %exitcond241, label %for.inc52, label %for.body44, !dbg !368

for.inc52:                                        ; preds = %for.body44, %for.body39
  %indvars.iv.next243 = add i64 %indvars.iv242, 1, !dbg !366
  %19 = load i32* %M, align 4, !dbg !366, !tbaa !194
  %20 = trunc i64 %indvars.iv.next243 to i32, !dbg !366
  %cmp37 = icmp slt i32 %20, %19, !dbg !366
  br i1 %cmp37, label %for.body39, label %for.end54, !dbg !366

for.end54:                                        ; preds = %for.cond16.preheader, %for.inc52, %for.cond35.preheader
  %call55 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([7 x i8]* @.str6, i64 0, i64 0)) #6, !dbg !389
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !138), !dbg !390
  br i1 %cmp7216, label %for.end66.thread, label %for.body59.lr.ph, !dbg !390

for.end66.thread:                                 ; preds = %for.end54
  %call67259 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([7 x i8]* @.str7, i64 0, i64 0)) #6, !dbg !392
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !138), !dbg !393
  br label %for.end78.thread, !dbg !393

for.body59.lr.ph:                                 ; preds = %for.end54
  %xmx61 = getelementptr inbounds %struct.dpmatrix_s* %mx, i64 0, i32 0, !dbg !390
  %21 = add i32 %L, 1, !dbg !390
  br label %for.body59, !dbg !390

for.body59:                                       ; preds = %for.body59, %for.body59.lr.ph
  %indvars.iv234 = phi i64 [ %indvars.iv.next235, %for.body59 ], [ 0, %for.body59.lr.ph ]
  %22 = load i32*** %xmx61, align 8, !dbg !390, !tbaa !182
  %arrayidx62 = getelementptr inbounds i32** %22, i64 %indvars.iv234, !dbg !390
  %23 = load i32** %arrayidx62, align 8, !dbg !390, !tbaa !182
  %arrayidx63 = getelementptr inbounds i32* %23, i64 1, !dbg !390
  %24 = load i32* %arrayidx63, align 4, !dbg !390, !tbaa !194
  tail call void @llvm.dbg.value(metadata !{i32 %24}, i64 0, metadata !395) #4, !dbg !396
  %conv.i181 = sitofp i32 %24 to double, !dbg !397
  tail call void @llvm.dbg.value(metadata !{double %conv.i181}, i64 0, metadata !398) #4, !dbg !397
  tail call void @llvm.dbg.value(metadata !361, i64 0, metadata !399) #4, !dbg !400
  %div1.i182 = fdiv double %conv.i181, 0x40968AC7B8CC7DEF, !dbg !401
  tail call void @llvm.dbg.value(metadata !{double %div1.i182}, i64 0, metadata !398) #4, !dbg !401
  %call.i183 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([10 x i8]* @.str12, i64 0, i64 0), double %div1.i182) #6, !dbg !402
  %indvars.iv.next235 = add i64 %indvars.iv234, 1, !dbg !390
  %lftr.wideiv236 = trunc i64 %indvars.iv.next235 to i32, !dbg !390
  %exitcond237 = icmp eq i32 %lftr.wideiv236, %21, !dbg !390
  br i1 %exitcond237, label %for.end66, label %for.body59, !dbg !390

for.end66:                                        ; preds = %for.body59
  %call67 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([7 x i8]* @.str7, i64 0, i64 0)) #6, !dbg !392
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !138), !dbg !393
  br i1 %cmp7216, label %for.end78.thread, label %for.body71.lr.ph, !dbg !393

for.body71.lr.ph:                                 ; preds = %for.end66
  %xmx73 = getelementptr inbounds %struct.dpmatrix_s* %mx, i64 0, i32 0, !dbg !393
  %25 = add i32 %L, 1, !dbg !393
  br label %for.body71, !dbg !393

for.body71:                                       ; preds = %for.body71, %for.body71.lr.ph
  %indvars.iv230 = phi i64 [ %indvars.iv.next231, %for.body71 ], [ 0, %for.body71.lr.ph ]
  %26 = load i32*** %xmx73, align 8, !dbg !393, !tbaa !182
  %arrayidx74 = getelementptr inbounds i32** %26, i64 %indvars.iv230, !dbg !393
  %27 = load i32** %arrayidx74, align 8, !dbg !393, !tbaa !182
  %arrayidx75 = getelementptr inbounds i32* %27, i64 2, !dbg !393
  %28 = load i32* %arrayidx75, align 4, !dbg !393, !tbaa !194
  tail call void @llvm.dbg.value(metadata !{i32 %28}, i64 0, metadata !403) #4, !dbg !404
  %conv.i184 = sitofp i32 %28 to double, !dbg !405
  tail call void @llvm.dbg.value(metadata !{double %conv.i184}, i64 0, metadata !406) #4, !dbg !405
  tail call void @llvm.dbg.value(metadata !361, i64 0, metadata !407) #4, !dbg !408
  %div1.i185 = fdiv double %conv.i184, 0x40968AC7B8CC7DEF, !dbg !409
  tail call void @llvm.dbg.value(metadata !{double %div1.i185}, i64 0, metadata !406) #4, !dbg !409
  %call.i186 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([10 x i8]* @.str12, i64 0, i64 0), double %div1.i185) #6, !dbg !410
  %indvars.iv.next231 = add i64 %indvars.iv230, 1, !dbg !393
  %lftr.wideiv232 = trunc i64 %indvars.iv.next231 to i32, !dbg !393
  %exitcond233 = icmp eq i32 %lftr.wideiv232, %25, !dbg !393
  br i1 %exitcond233, label %for.end78, label %for.body71, !dbg !393

for.end78.thread:                                 ; preds = %for.end66.thread, %for.end66
  %call79260 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([7 x i8]* @.str8, i64 0, i64 0)) #6, !dbg !411
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !138), !dbg !412
  br label %for.end90, !dbg !412

for.end78:                                        ; preds = %for.body71
  %call79 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([7 x i8]* @.str8, i64 0, i64 0)) #6, !dbg !411
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !138), !dbg !412
  br i1 %cmp7216, label %for.end90.thread, label %for.body83.lr.ph, !dbg !412

for.end90.thread:                                 ; preds = %for.end78
  %call91261 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([7 x i8]* @.str9, i64 0, i64 0)) #6, !dbg !414
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !138), !dbg !415
  br label %for.cond103.preheader, !dbg !415

for.body83.lr.ph:                                 ; preds = %for.end78
  %xmx85 = getelementptr inbounds %struct.dpmatrix_s* %mx, i64 0, i32 0, !dbg !412
  %29 = add i32 %L, 1, !dbg !412
  br label %for.body83, !dbg !412

for.body83:                                       ; preds = %for.body83, %for.body83.lr.ph
  %indvars.iv226 = phi i64 [ %indvars.iv.next227, %for.body83 ], [ 0, %for.body83.lr.ph ]
  %30 = load i32*** %xmx85, align 8, !dbg !412, !tbaa !182
  %arrayidx86 = getelementptr inbounds i32** %30, i64 %indvars.iv226, !dbg !412
  %31 = load i32** %arrayidx86, align 8, !dbg !412, !tbaa !182
  %arrayidx87 = getelementptr inbounds i32* %31, i64 3, !dbg !412
  %32 = load i32* %arrayidx87, align 4, !dbg !412, !tbaa !194
  tail call void @llvm.dbg.value(metadata !{i32 %32}, i64 0, metadata !417) #4, !dbg !418
  %conv.i187 = sitofp i32 %32 to double, !dbg !419
  tail call void @llvm.dbg.value(metadata !{double %conv.i187}, i64 0, metadata !420) #4, !dbg !419
  tail call void @llvm.dbg.value(metadata !361, i64 0, metadata !421) #4, !dbg !422
  %div1.i188 = fdiv double %conv.i187, 0x40968AC7B8CC7DEF, !dbg !423
  tail call void @llvm.dbg.value(metadata !{double %div1.i188}, i64 0, metadata !420) #4, !dbg !423
  %call.i189 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([10 x i8]* @.str12, i64 0, i64 0), double %div1.i188) #6, !dbg !424
  %indvars.iv.next227 = add i64 %indvars.iv226, 1, !dbg !412
  %lftr.wideiv228 = trunc i64 %indvars.iv.next227 to i32, !dbg !412
  %exitcond229 = icmp eq i32 %lftr.wideiv228, %29, !dbg !412
  br i1 %exitcond229, label %for.end90, label %for.body83, !dbg !412

for.end90:                                        ; preds = %for.body83, %for.end78.thread
  %call91 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([7 x i8]* @.str9, i64 0, i64 0)) #6, !dbg !414
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !138), !dbg !415
  br i1 %cmp7216, label %for.cond103.preheader, label %for.body95.lr.ph, !dbg !415

for.body95.lr.ph:                                 ; preds = %for.end90
  %xmx97 = getelementptr inbounds %struct.dpmatrix_s* %mx, i64 0, i32 0, !dbg !415
  %33 = add i32 %L, 1, !dbg !415
  br label %for.body95, !dbg !415

for.cond103.preheader:                            ; preds = %for.body95, %for.end90.thread, %for.end90
  %34 = load i32* %M, align 4, !dbg !425, !tbaa !194
  %cmp105198 = icmp sgt i32 %34, 2, !dbg !425
  br i1 %cmp105198, label %for.body107.lr.ph, label %for.end122, !dbg !425

for.body107.lr.ph:                                ; preds = %for.cond103.preheader
  %dmx = getelementptr inbounds %struct.dpmatrix_s* %mx, i64 0, i32 3, !dbg !427
  %35 = add i32 %L, 1, !dbg !425
  br label %for.body107, !dbg !425

for.body95:                                       ; preds = %for.body95, %for.body95.lr.ph
  %indvars.iv222 = phi i64 [ %indvars.iv.next223, %for.body95 ], [ 0, %for.body95.lr.ph ]
  %36 = load i32*** %xmx97, align 8, !dbg !415, !tbaa !182
  %arrayidx98 = getelementptr inbounds i32** %36, i64 %indvars.iv222, !dbg !415
  %37 = load i32** %arrayidx98, align 8, !dbg !415, !tbaa !182
  %38 = load i32* %37, align 4, !dbg !415, !tbaa !194
  tail call void @llvm.dbg.value(metadata !{i32 %38}, i64 0, metadata !430) #4, !dbg !431
  %conv.i190 = sitofp i32 %38 to double, !dbg !432
  tail call void @llvm.dbg.value(metadata !{double %conv.i190}, i64 0, metadata !433) #4, !dbg !432
  tail call void @llvm.dbg.value(metadata !361, i64 0, metadata !434) #4, !dbg !435
  %div1.i191 = fdiv double %conv.i190, 0x40968AC7B8CC7DEF, !dbg !436
  tail call void @llvm.dbg.value(metadata !{double %div1.i191}, i64 0, metadata !433) #4, !dbg !436
  %call.i192 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([10 x i8]* @.str12, i64 0, i64 0), double %div1.i191) #6, !dbg !437
  %indvars.iv.next223 = add i64 %indvars.iv222, 1, !dbg !415
  %lftr.wideiv224 = trunc i64 %indvars.iv.next223 to i32, !dbg !415
  %exitcond225 = icmp eq i32 %lftr.wideiv224, %33, !dbg !415
  br i1 %exitcond225, label %for.cond103.preheader, label %for.body95, !dbg !415

for.body107:                                      ; preds = %for.body107.lr.ph, %for.inc120
  %indvars.iv220 = phi i64 [ 2, %for.body107.lr.ph ], [ %indvars.iv.next221, %for.inc120 ]
  %39 = trunc i64 %indvars.iv220 to i32, !dbg !438
  %call108 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([8 x i8]* @.str10, i64 0, i64 0), i32 %39) #6, !dbg !438
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !138), !dbg !427
  br i1 %cmp7216, label %for.inc120, label %for.body112, !dbg !427

for.body112:                                      ; preds = %for.body107, %for.body112
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body112 ], [ 0, %for.body107 ]
  %40 = load i32*** %dmx, align 8, !dbg !427, !tbaa !182
  %arrayidx115 = getelementptr inbounds i32** %40, i64 %indvars.iv, !dbg !427
  %41 = load i32** %arrayidx115, align 8, !dbg !427, !tbaa !182
  %arrayidx116 = getelementptr inbounds i32* %41, i64 %indvars.iv220, !dbg !427
  %42 = load i32* %arrayidx116, align 4, !dbg !427, !tbaa !194
  tail call void @llvm.dbg.value(metadata !{i32 %42}, i64 0, metadata !439) #4, !dbg !440
  %conv.i193 = sitofp i32 %42 to double, !dbg !441
  tail call void @llvm.dbg.value(metadata !{double %conv.i193}, i64 0, metadata !442) #4, !dbg !441
  tail call void @llvm.dbg.value(metadata !361, i64 0, metadata !443) #4, !dbg !444
  %div1.i194 = fdiv double %conv.i193, 0x40968AC7B8CC7DEF, !dbg !445
  tail call void @llvm.dbg.value(metadata !{double %div1.i194}, i64 0, metadata !442) #4, !dbg !445
  %call.i195 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([10 x i8]* @.str12, i64 0, i64 0), double %div1.i194) #6, !dbg !446
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !427
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !427
  %exitcond = icmp eq i32 %lftr.wideiv, %35, !dbg !427
  br i1 %exitcond, label %for.inc120, label %for.body112, !dbg !427

for.inc120:                                       ; preds = %for.body112, %for.body107
  %indvars.iv.next221 = add i64 %indvars.iv220, 1, !dbg !425
  %43 = load i32* %M, align 4, !dbg !425, !tbaa !194
  %44 = trunc i64 %indvars.iv.next221 to i32, !dbg !425
  %cmp105 = icmp slt i32 %44, %43, !dbg !425
  br i1 %cmp105, label %for.body107, label %for.end122, !dbg !425

for.end122:                                       ; preds = %for.inc120, %for.cond103.preheader
  %puts = tail call i32 @puts(i8* getelementptr inbounds ([2 x i8]* @str, i64 0, i64 0)), !dbg !447
  ret void, !dbg !448
}

; Function Attrs: nounwind optsize
declare i32 @printf(i8* nocapture, ...) #2

; Function Attrs: nounwind optsize uwtable
define void @PrintIscore(i32 %sc) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %sc}, i64 0, metadata !144), !dbg !449
  %conv = sitofp i32 %sc to double, !dbg !450
  tail call void @llvm.dbg.value(metadata !{double %conv}, i64 0, metadata !145), !dbg !450
  tail call void @llvm.dbg.value(metadata !361, i64 0, metadata !147), !dbg !451
  %div1 = fdiv double %conv, 0x40968AC7B8CC7DEF, !dbg !452
  tail call void @llvm.dbg.value(metadata !{double %div1}, i64 0, metadata !145), !dbg !452
  %call = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([10 x i8]* @.str12, i64 0, i64 0), double %div1) #6, !dbg !453
  ret void, !dbg !454
}

; Function Attrs: nounwind optsize
declare i32 @sprintf(i8* nocapture, i8* nocapture, ...) #2

; Function Attrs: optsize
declare float @Score2Prob(i32, float) #3

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #1

; Function Attrs: nounwind
declare i32 @putchar(i32) #4

; Function Attrs: nounwind
declare i32 @puts(i8* nocapture) #4

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { optsize }
attributes #6 = { nounwind optsize }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/display.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/456.hmmer/src/display.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4, metadata !109, metadata !130, metadata !140, metadata !148}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"DisplayPlan7Posteriors", metadata !"DisplayPlan7Posteriors", metadata !"", i32 62, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i32, %struct.plan7_s*, %struct.dpmatrix_s*, %struct.dpmatrix_s*, %struct.p7trace_s*, %struct.p7trace_s*)* @DisplayPlan7Posteriors, null, null, metadata !99, i32 67} ; [ DW_TAG_subprogram ] [line 62] [def] [scope 67] [DisplayPlan7Posteriors]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/display.c]
!6 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{null, metadata !8, metadata !9, metadata !76, metadata !76, metadata !92, metadata !92}
!8 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!9 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !10} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from plan7_s]
!10 = metadata !{i32 786451, metadata !11, null, metadata !"plan7_s", i32 101, i64 3712, i64 64, i32 0, i32 0, null, metadata !12, i32 0, null, null} ; [ DW_TAG_structure_type ] [plan7_s] [line 101, size 3712, align 64, offset 0] [from ]
!11 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/456.hmmer/src/structs.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!12 = metadata !{metadata !13, metadata !16, metadata !17, metadata !18, metadata !19, metadata !20, metadata !21, metadata !22, metadata !23, metadata !24, metadata !26, metadata !27, metadata !28, metadata !29, metadata !30, metadata !32, metadata !33, metadata !34, metadata !35, metadata !36, metadata !37, metadata !38, metadata !41, metadata !42, metadata !43, metadata !44, metadata !49, metadata !50, metadata !51, metadata !55, metadata !56, metadata !58, metadata !59, metadata !60, metadata !62, metadata !63, metadata !64, metadata !65, metadata !66, metadata !67, metadata !68, metadata !69, metadata !70, metadata !71, metadata !72, metadata !73, metadata !74, metadata !75}
!13 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"name", i32 113, i64 64, i64 64, i64 0, i32 0, metadata !14} ; [ DW_TAG_member ] [name] [line 113, size 64, align 64, offset 0] [from ]
!14 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !15} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from char]
!15 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!16 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"acc", i32 114, i64 64, i64 64, i64 64, i32 0, metadata !14} ; [ DW_TAG_member ] [acc] [line 114, size 64, align 64, offset 64] [from ]
!17 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"desc", i32 115, i64 64, i64 64, i64 128, i32 0, metadata !14} ; [ DW_TAG_member ] [desc] [line 115, size 64, align 64, offset 128] [from ]
!18 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"rf", i32 116, i64 64, i64 64, i64 192, i32 0, metadata !14} ; [ DW_TAG_member ] [rf] [line 116, size 64, align 64, offset 192] [from ]
!19 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"cs", i32 117, i64 64, i64 64, i64 256, i32 0, metadata !14} ; [ DW_TAG_member ] [cs] [line 117, size 64, align 64, offset 256] [from ]
!20 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"ca", i32 118, i64 64, i64 64, i64 320, i32 0, metadata !14} ; [ DW_TAG_member ] [ca] [line 118, size 64, align 64, offset 320] [from ]
!21 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"comlog", i32 119, i64 64, i64 64, i64 384, i32 0, metadata !14} ; [ DW_TAG_member ] [comlog] [line 119, size 64, align 64, offset 384] [from ]
!22 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"nseq", i32 120, i64 32, i64 32, i64 448, i32 0, metadata !8} ; [ DW_TAG_member ] [nseq] [line 120, size 32, align 32, offset 448] [from int]
!23 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"ctime", i32 121, i64 64, i64 64, i64 512, i32 0, metadata !14} ; [ DW_TAG_member ] [ctime] [line 121, size 64, align 64, offset 512] [from ]
!24 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"map", i32 122, i64 64, i64 64, i64 576, i32 0, metadata !25} ; [ DW_TAG_member ] [map] [line 122, size 64, align 64, offset 576] [from ]
!25 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !8} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from int]
!26 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"checksum", i32 123, i64 32, i64 32, i64 640, i32 0, metadata !8} ; [ DW_TAG_member ] [checksum] [line 123, size 32, align 32, offset 640] [from int]
!27 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"tpri", i32 134, i64 64, i64 64, i64 704, i32 0, metadata !25} ; [ DW_TAG_member ] [tpri] [line 134, size 64, align 64, offset 704] [from ]
!28 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"mpri", i32 135, i64 64, i64 64, i64 768, i32 0, metadata !25} ; [ DW_TAG_member ] [mpri] [line 135, size 64, align 64, offset 768] [from ]
!29 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"ipri", i32 136, i64 64, i64 64, i64 832, i32 0, metadata !25} ; [ DW_TAG_member ] [ipri] [line 136, size 64, align 64, offset 832] [from ]
!30 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"ga1", i32 144, i64 32, i64 32, i64 896, i32 0, metadata !31} ; [ DW_TAG_member ] [ga1] [line 144, size 32, align 32, offset 896] [from float]
!31 = metadata !{i32 786468, null, null, metadata !"float", i32 0, i64 32, i64 32, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [float] [line 0, size 32, align 32, offset 0, enc DW_ATE_float]
!32 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"ga2", i32 144, i64 32, i64 32, i64 928, i32 0, metadata !31} ; [ DW_TAG_member ] [ga2] [line 144, size 32, align 32, offset 928] [from float]
!33 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"tc1", i32 145, i64 32, i64 32, i64 960, i32 0, metadata !31} ; [ DW_TAG_member ] [tc1] [line 145, size 32, align 32, offset 960] [from float]
!34 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"tc2", i32 145, i64 32, i64 32, i64 992, i32 0, metadata !31} ; [ DW_TAG_member ] [tc2] [line 145, size 32, align 32, offset 992] [from float]
!35 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"nc1", i32 146, i64 32, i64 32, i64 1024, i32 0, metadata !31} ; [ DW_TAG_member ] [nc1] [line 146, size 32, align 32, offset 1024] [from float]
!36 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"nc2", i32 146, i64 32, i64 32, i64 1056, i32 0, metadata !31} ; [ DW_TAG_member ] [nc2] [line 146, size 32, align 32, offset 1056] [from float]
!37 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"M", i32 155, i64 32, i64 32, i64 1088, i32 0, metadata !8} ; [ DW_TAG_member ] [M] [line 155, size 32, align 32, offset 1088] [from int]
!38 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"t", i32 156, i64 64, i64 64, i64 1152, i32 0, metadata !39} ; [ DW_TAG_member ] [t] [line 156, size 64, align 64, offset 1152] [from ]
!39 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !40} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!40 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !31} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from float]
!41 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"mat", i32 157, i64 64, i64 64, i64 1216, i32 0, metadata !39} ; [ DW_TAG_member ] [mat] [line 157, size 64, align 64, offset 1216] [from ]
!42 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"ins", i32 158, i64 64, i64 64, i64 1280, i32 0, metadata !39} ; [ DW_TAG_member ] [ins] [line 158, size 64, align 64, offset 1280] [from ]
!43 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"tbd1", i32 159, i64 32, i64 32, i64 1344, i32 0, metadata !31} ; [ DW_TAG_member ] [tbd1] [line 159, size 32, align 32, offset 1344] [from float]
!44 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"xt", i32 168, i64 256, i64 32, i64 1376, i32 0, metadata !45} ; [ DW_TAG_member ] [xt] [line 168, size 256, align 32, offset 1376] [from ]
!45 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 256, i64 32, i32 0, i32 0, metadata !31, metadata !46, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 256, align 32, offset 0] [from float]
!46 = metadata !{metadata !47, metadata !48}
!47 = metadata !{i32 786465, i64 0, i64 4}        ; [ DW_TAG_subrange_type ] [0, 3]
!48 = metadata !{i32 786465, i64 0, i64 2}        ; [ DW_TAG_subrange_type ] [0, 1]
!49 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"begin", i32 169, i64 64, i64 64, i64 1664, i32 0, metadata !40} ; [ DW_TAG_member ] [begin] [line 169, size 64, align 64, offset 1664] [from ]
!50 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"end", i32 170, i64 64, i64 64, i64 1728, i32 0, metadata !40} ; [ DW_TAG_member ] [end] [line 170, size 64, align 64, offset 1728] [from ]
!51 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"null", i32 174, i64 640, i64 32, i64 1792, i32 0, metadata !52} ; [ DW_TAG_member ] [null] [line 174, size 640, align 32, offset 1792] [from ]
!52 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 640, i64 32, i32 0, i32 0, metadata !31, metadata !53, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 640, align 32, offset 0] [from float]
!53 = metadata !{metadata !54}
!54 = metadata !{i32 786465, i64 0, i64 20}       ; [ DW_TAG_subrange_type ] [0, 19]
!55 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"p1", i32 175, i64 32, i64 32, i64 2432, i32 0, metadata !31} ; [ DW_TAG_member ] [p1] [line 175, size 32, align 32, offset 2432] [from float]
!56 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"tsc", i32 197, i64 64, i64 64, i64 2496, i32 0, metadata !57} ; [ DW_TAG_member ] [tsc] [line 197, size 64, align 64, offset 2496] [from ]
!57 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !25} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!58 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"msc", i32 198, i64 64, i64 64, i64 2560, i32 0, metadata !57} ; [ DW_TAG_member ] [msc] [line 198, size 64, align 64, offset 2560] [from ]
!59 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"isc", i32 199, i64 64, i64 64, i64 2624, i32 0, metadata !57} ; [ DW_TAG_member ] [isc] [line 199, size 64, align 64, offset 2624] [from ]
!60 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"xsc", i32 200, i64 256, i64 32, i64 2688, i32 0, metadata !61} ; [ DW_TAG_member ] [xsc] [line 200, size 256, align 32, offset 2688] [from ]
!61 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 256, i64 32, i32 0, i32 0, metadata !8, metadata !46, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 256, align 32, offset 0] [from int]
!62 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"bsc", i32 201, i64 64, i64 64, i64 2944, i32 0, metadata !25} ; [ DW_TAG_member ] [bsc] [line 201, size 64, align 64, offset 2944] [from ]
!63 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"esc", i32 202, i64 64, i64 64, i64 3008, i32 0, metadata !25} ; [ DW_TAG_member ] [esc] [line 202, size 64, align 64, offset 3008] [from ]
!64 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"tsc_mem", i32 203, i64 64, i64 64, i64 3072, i32 0, metadata !25} ; [ DW_TAG_member ] [tsc_mem] [line 203, size 64, align 64, offset 3072] [from ]
!65 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"msc_mem", i32 203, i64 64, i64 64, i64 3136, i32 0, metadata !25} ; [ DW_TAG_member ] [msc_mem] [line 203, size 64, align 64, offset 3136] [from ]
!66 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"isc_mem", i32 203, i64 64, i64 64, i64 3200, i32 0, metadata !25} ; [ DW_TAG_member ] [isc_mem] [line 203, size 64, align 64, offset 3200] [from ]
!67 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"bsc_mem", i32 203, i64 64, i64 64, i64 3264, i32 0, metadata !25} ; [ DW_TAG_member ] [bsc_mem] [line 203, size 64, align 64, offset 3264] [from ]
!68 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"esc_mem", i32 203, i64 64, i64 64, i64 3328, i32 0, metadata !25} ; [ DW_TAG_member ] [esc_mem] [line 203, size 64, align 64, offset 3328] [from ]
!69 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"dnam", i32 214, i64 64, i64 64, i64 3392, i32 0, metadata !57} ; [ DW_TAG_member ] [dnam] [line 214, size 64, align 64, offset 3392] [from ]
!70 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"dnai", i32 215, i64 64, i64 64, i64 3456, i32 0, metadata !57} ; [ DW_TAG_member ] [dnai] [line 215, size 64, align 64, offset 3456] [from ]
!71 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"dna2", i32 216, i64 32, i64 32, i64 3520, i32 0, metadata !8} ; [ DW_TAG_member ] [dna2] [line 216, size 32, align 32, offset 3520] [from int]
!72 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"dna4", i32 217, i64 32, i64 32, i64 3552, i32 0, metadata !8} ; [ DW_TAG_member ] [dna4] [line 217, size 32, align 32, offset 3552] [from int]
!73 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"mu", i32 222, i64 32, i64 32, i64 3584, i32 0, metadata !31} ; [ DW_TAG_member ] [mu] [line 222, size 32, align 32, offset 3584] [from float]
!74 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"lambda", i32 223, i64 32, i64 32, i64 3616, i32 0, metadata !31} ; [ DW_TAG_member ] [lambda] [line 223, size 32, align 32, offset 3616] [from float]
!75 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"flags", i32 225, i64 32, i64 32, i64 3648, i32 0, metadata !8} ; [ DW_TAG_member ] [flags] [line 225, size 32, align 32, offset 3648] [from int]
!76 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !77} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from dpmatrix_s]
!77 = metadata !{i32 786451, metadata !11, null, metadata !"dpmatrix_s", i32 289, i64 640, i64 64, i32 0, i32 0, null, metadata !78, i32 0, null, null} ; [ DW_TAG_structure_type ] [dpmatrix_s] [line 289, size 640, align 64, offset 0] [from ]
!78 = metadata !{metadata !79, metadata !80, metadata !81, metadata !82, metadata !83, metadata !85, metadata !86, metadata !87, metadata !88, metadata !89, metadata !90, metadata !91}
!79 = metadata !{i32 786445, metadata !11, metadata !77, metadata !"xmx", i32 290, i64 64, i64 64, i64 0, i32 0, metadata !57} ; [ DW_TAG_member ] [xmx] [line 290, size 64, align 64, offset 0] [from ]
!80 = metadata !{i32 786445, metadata !11, metadata !77, metadata !"mmx", i32 291, i64 64, i64 64, i64 64, i32 0, metadata !57} ; [ DW_TAG_member ] [mmx] [line 291, size 64, align 64, offset 64] [from ]
!81 = metadata !{i32 786445, metadata !11, metadata !77, metadata !"imx", i32 292, i64 64, i64 64, i64 128, i32 0, metadata !57} ; [ DW_TAG_member ] [imx] [line 292, size 64, align 64, offset 128] [from ]
!82 = metadata !{i32 786445, metadata !11, metadata !77, metadata !"dmx", i32 293, i64 64, i64 64, i64 192, i32 0, metadata !57} ; [ DW_TAG_member ] [dmx] [line 293, size 64, align 64, offset 192] [from ]
!83 = metadata !{i32 786445, metadata !11, metadata !77, metadata !"xmx_mem", i32 299, i64 64, i64 64, i64 256, i32 0, metadata !84} ; [ DW_TAG_member ] [xmx_mem] [line 299, size 64, align 64, offset 256] [from ]
!84 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, null} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!85 = metadata !{i32 786445, metadata !11, metadata !77, metadata !"mmx_mem", i32 299, i64 64, i64 64, i64 320, i32 0, metadata !84} ; [ DW_TAG_member ] [mmx_mem] [line 299, size 64, align 64, offset 320] [from ]
!86 = metadata !{i32 786445, metadata !11, metadata !77, metadata !"imx_mem", i32 299, i64 64, i64 64, i64 384, i32 0, metadata !84} ; [ DW_TAG_member ] [imx_mem] [line 299, size 64, align 64, offset 384] [from ]
!87 = metadata !{i32 786445, metadata !11, metadata !77, metadata !"dmx_mem", i32 299, i64 64, i64 64, i64 448, i32 0, metadata !84} ; [ DW_TAG_member ] [dmx_mem] [line 299, size 64, align 64, offset 448] [from ]
!88 = metadata !{i32 786445, metadata !11, metadata !77, metadata !"maxN", i32 308, i64 32, i64 32, i64 512, i32 0, metadata !8} ; [ DW_TAG_member ] [maxN] [line 308, size 32, align 32, offset 512] [from int]
!89 = metadata !{i32 786445, metadata !11, metadata !77, metadata !"maxM", i32 309, i64 32, i64 32, i64 544, i32 0, metadata !8} ; [ DW_TAG_member ] [maxM] [line 309, size 32, align 32, offset 544] [from int]
!90 = metadata !{i32 786445, metadata !11, metadata !77, metadata !"padN", i32 311, i64 32, i64 32, i64 576, i32 0, metadata !8} ; [ DW_TAG_member ] [padN] [line 311, size 32, align 32, offset 576] [from int]
!91 = metadata !{i32 786445, metadata !11, metadata !77, metadata !"padM", i32 312, i64 32, i64 32, i64 608, i32 0, metadata !8} ; [ DW_TAG_member ] [padM] [line 312, size 32, align 32, offset 608] [from int]
!92 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !93} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from p7trace_s]
!93 = metadata !{i32 786451, metadata !11, null, metadata !"p7trace_s", i32 374, i64 256, i64 64, i32 0, i32 0, null, metadata !94, i32 0, null, null} ; [ DW_TAG_structure_type ] [p7trace_s] [line 374, size 256, align 64, offset 0] [from ]
!94 = metadata !{metadata !95, metadata !96, metadata !97, metadata !98}
!95 = metadata !{i32 786445, metadata !11, metadata !93, metadata !"tlen", i32 375, i64 32, i64 32, i64 0, i32 0, metadata !8} ; [ DW_TAG_member ] [tlen] [line 375, size 32, align 32, offset 0] [from int]
!96 = metadata !{i32 786445, metadata !11, metadata !93, metadata !"statetype", i32 376, i64 64, i64 64, i64 64, i32 0, metadata !14} ; [ DW_TAG_member ] [statetype] [line 376, size 64, align 64, offset 64] [from ]
!97 = metadata !{i32 786445, metadata !11, metadata !93, metadata !"nodeidx", i32 377, i64 64, i64 64, i64 128, i32 0, metadata !25} ; [ DW_TAG_member ] [nodeidx] [line 377, size 64, align 64, offset 128] [from ]
!98 = metadata !{i32 786445, metadata !11, metadata !93, metadata !"pos", i32 378, i64 64, i64 64, i64 192, i32 0, metadata !25} ; [ DW_TAG_member ] [pos] [line 378, size 64, align 64, offset 192] [from ]
!99 = metadata !{metadata !100, metadata !101, metadata !102, metadata !103, metadata !104, metadata !105, metadata !106}
!100 = metadata !{i32 786689, metadata !4, metadata !"L", metadata !5, i32 16777278, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 62]
!101 = metadata !{i32 786689, metadata !4, metadata !"hmm", metadata !5, i32 33554494, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [hmm] [line 62]
!102 = metadata !{i32 786689, metadata !4, metadata !"forward", metadata !5, i32 50331711, metadata !76, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [forward] [line 63]
!103 = metadata !{i32 786689, metadata !4, metadata !"backward", metadata !5, i32 67108928, metadata !76, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [backward] [line 64]
!104 = metadata !{i32 786689, metadata !4, metadata !"viterbi", metadata !5, i32 83886145, metadata !92, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [viterbi] [line 65]
!105 = metadata !{i32 786689, metadata !4, metadata !"optacc", metadata !5, i32 100663362, metadata !92, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [optacc] [line 66]
!106 = metadata !{i32 786688, metadata !4, metadata !"alignment", metadata !5, i32 68, metadata !107, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [alignment] [line 68]
!107 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 128, i64 64, i32 0, i32 0, metadata !92, metadata !108, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 128, align 64, offset 0] [from ]
!108 = metadata !{metadata !48}
!109 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"DisplayPlan7PostAlign", metadata !"DisplayPlan7PostAlign", metadata !"", i32 90, metadata !110, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i32, %struct.plan7_s*, %struct.dpmatrix_s*, %struct.dpmatrix_s*, %struct.p7trace_s**, i32)* @DisplayPlan7PostAlign, null, null, metadata !113, i32 95} ; [ DW_TAG_subprogram ] [line 90] [def] [scope 95] [DisplayPlan7PostAlign]
!110 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !111, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!111 = metadata !{null, metadata !8, metadata !9, metadata !76, metadata !76, metadata !112, metadata !8}
!112 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !92} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!113 = metadata !{metadata !114, metadata !115, metadata !116, metadata !117, metadata !118, metadata !119, metadata !120, metadata !121, metadata !122, metadata !123, metadata !124, metadata !125, metadata !126, metadata !127, metadata !128, metadata !129}
!114 = metadata !{i32 786689, metadata !109, metadata !"L", metadata !5, i32 16777306, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 90]
!115 = metadata !{i32 786689, metadata !109, metadata !"hmm", metadata !5, i32 33554522, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [hmm] [line 90]
!116 = metadata !{i32 786689, metadata !109, metadata !"forward", metadata !5, i32 50331739, metadata !76, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [forward] [line 91]
!117 = metadata !{i32 786689, metadata !109, metadata !"backward", metadata !5, i32 67108956, metadata !76, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [backward] [line 92]
!118 = metadata !{i32 786689, metadata !109, metadata !"alignment", metadata !5, i32 83886173, metadata !112, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [alignment] [line 93]
!119 = metadata !{i32 786689, metadata !109, metadata !"A", metadata !5, i32 100663390, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [A] [line 94]
!120 = metadata !{i32 786688, metadata !109, metadata !"sc", metadata !5, i32 96, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sc] [line 96]
!121 = metadata !{i32 786688, metadata !109, metadata !"i", metadata !5, i32 97, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 97]
!122 = metadata !{i32 786688, metadata !109, metadata !"j", metadata !5, i32 98, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [j] [line 98]
!123 = metadata !{i32 786688, metadata !109, metadata !"k", metadata !5, i32 99, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [k] [line 99]
!124 = metadata !{i32 786688, metadata !109, metadata !"kmin", metadata !5, i32 100, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [kmin] [line 100]
!125 = metadata !{i32 786688, metadata !109, metadata !"kmax", metadata !5, i32 101, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [kmax] [line 101]
!126 = metadata !{i32 786688, metadata !109, metadata !"min", metadata !5, i32 102, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [min] [line 102]
!127 = metadata !{i32 786688, metadata !109, metadata !"max", metadata !5, i32 103, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [max] [line 103]
!128 = metadata !{i32 786688, metadata !109, metadata !"on", metadata !5, i32 104, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [on] [line 104]
!129 = metadata !{i32 786688, metadata !109, metadata !"state", metadata !5, i32 105, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [state] [line 105]
!130 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"DisplayPlan7Matrix", metadata !"DisplayPlan7Matrix", metadata !"", i32 298, metadata !131, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i8*, i32, %struct.plan7_s*, %struct.dpmatrix_s*)* @DisplayPlan7Matrix, null, null, metadata !133, i32 299} ; [ DW_TAG_subprogram ] [line 298] [def] [scope 299] [DisplayPlan7Matrix]
!131 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !132, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!132 = metadata !{null, metadata !14, metadata !8, metadata !9, metadata !76}
!133 = metadata !{metadata !134, metadata !135, metadata !136, metadata !137, metadata !138, metadata !139}
!134 = metadata !{i32 786689, metadata !130, metadata !"dsq", metadata !5, i32 16777514, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dsq] [line 298]
!135 = metadata !{i32 786689, metadata !130, metadata !"L", metadata !5, i32 33554730, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 298]
!136 = metadata !{i32 786689, metadata !130, metadata !"hmm", metadata !5, i32 50331946, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [hmm] [line 298]
!137 = metadata !{i32 786689, metadata !130, metadata !"mx", metadata !5, i32 67109162, metadata !76, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mx] [line 298]
!138 = metadata !{i32 786688, metadata !130, metadata !"i", metadata !5, i32 300, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 300]
!139 = metadata !{i32 786688, metadata !130, metadata !"k", metadata !5, i32 301, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [k] [line 301]
!140 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"PrintIscore", metadata !"PrintIscore", metadata !"", i32 331, metadata !141, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i32)* @PrintIscore, null, null, metadata !143, i32 331} ; [ DW_TAG_subprogram ] [line 331] [def] [PrintIscore]
!141 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !142, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!142 = metadata !{null, metadata !8}
!143 = metadata !{metadata !144, metadata !145, metadata !147}
!144 = metadata !{i32 786689, metadata !140, metadata !"sc", metadata !5, i32 16777547, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [sc] [line 331]
!145 = metadata !{i32 786688, metadata !140, metadata !"dsc", metadata !5, i32 332, metadata !146, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dsc] [line 332]
!146 = metadata !{i32 786468, null, null, metadata !"double", i32 0, i64 64, i64 64, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [double] [line 0, size 64, align 64, offset 0, enc DW_ATE_float]
!147 = metadata !{i32 786688, metadata !140, metadata !"div", metadata !5, i32 333, metadata !146, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [div] [line 333]
!148 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"PrintTransition", metadata !"PrintTransition", metadata !"", i32 341, metadata !149, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i8, i32, i32, i8, i32, i32, i32, %struct.p7trace_s**, i32*, i32*, i32*, i32)* @PrintTransition, null, null, metadata !151, i32 353} ; [ DW_TAG_subprogram ] [line 341] [def] [scope 353] [PrintTransition]
!149 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !150, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!150 = metadata !{null, metadata !15, metadata !8, metadata !8, metadata !15, metadata !8, metadata !8, metadata !8, metadata !112, metadata !25, metadata !25, metadata !25, metadata !8}
!151 = metadata !{metadata !152, metadata !153, metadata !154, metadata !155, metadata !156, metadata !157, metadata !158, metadata !159, metadata !160, metadata !161, metadata !162, metadata !163, metadata !164, metadata !168, metadata !169, metadata !170, metadata !171, metadata !172, metadata !173, metadata !174}
!152 = metadata !{i32 786689, metadata !148, metadata !"src", metadata !5, i32 16777557, metadata !15, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [src] [line 341]
!153 = metadata !{i32 786689, metadata !148, metadata !"isrc", metadata !5, i32 33554774, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [isrc] [line 342]
!154 = metadata !{i32 786689, metadata !148, metadata !"ksrc", metadata !5, i32 50331991, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ksrc] [line 343]
!155 = metadata !{i32 786689, metadata !148, metadata !"dest", metadata !5, i32 67109208, metadata !15, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dest] [line 344]
!156 = metadata !{i32 786689, metadata !148, metadata !"idest", metadata !5, i32 83886425, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [idest] [line 345]
!157 = metadata !{i32 786689, metadata !148, metadata !"kdest", metadata !5, i32 100663642, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [kdest] [line 346]
!158 = metadata !{i32 786689, metadata !148, metadata !"sc", metadata !5, i32 117440859, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [sc] [line 347]
!159 = metadata !{i32 786689, metadata !148, metadata !"alignment", metadata !5, i32 134218076, metadata !112, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [alignment] [line 348]
!160 = metadata !{i32 786689, metadata !148, metadata !"min", metadata !5, i32 150995293, metadata !25, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [min] [line 349]
!161 = metadata !{i32 786689, metadata !148, metadata !"max", metadata !5, i32 167772510, metadata !25, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [max] [line 350]
!162 = metadata !{i32 786689, metadata !148, metadata !"on", metadata !5, i32 184549727, metadata !25, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [on] [line 351]
!163 = metadata !{i32 786689, metadata !148, metadata !"A", metadata !5, i32 201326944, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [A] [line 352]
!164 = metadata !{i32 786688, metadata !148, metadata !"src_str", metadata !5, i32 354, metadata !165, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [src_str] [line 354]
!165 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 48, i64 8, i32 0, i32 0, metadata !15, metadata !166, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 48, align 8, offset 0] [from char]
!166 = metadata !{metadata !167}
!167 = metadata !{i32 786465, i64 0, i64 6}       ; [ DW_TAG_subrange_type ] [0, 5]
!168 = metadata !{i32 786688, metadata !148, metadata !"dest_str", metadata !5, i32 355, metadata !165, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dest_str] [line 355]
!169 = metadata !{i32 786688, metadata !148, metadata !"j", metadata !5, i32 356, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [j] [line 356]
!170 = metadata !{i32 786688, metadata !148, metadata !"tpos", metadata !5, i32 357, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [tpos] [line 357]
!171 = metadata !{i32 786688, metadata !148, metadata !"tnext", metadata !5, i32 358, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [tnext] [line 358]
!172 = metadata !{i32 786688, metadata !148, metadata !"pos", metadata !5, i32 359, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [pos] [line 359]
!173 = metadata !{i32 786688, metadata !148, metadata !"next", metadata !5, i32 360, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [next] [line 360]
!174 = metadata !{i32 786688, metadata !148, metadata !"near", metadata !5, i32 361, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [near] [line 361]
!175 = metadata !{i32 62, i32 0, metadata !4, null}
!176 = metadata !{i32 63, i32 0, metadata !4, null}
!177 = metadata !{i32 64, i32 0, metadata !4, null}
!178 = metadata !{i32 65, i32 0, metadata !4, null}
!179 = metadata !{i32 66, i32 0, metadata !4, null}
!180 = metadata !{i32 68, i32 0, metadata !4, null}
!181 = metadata !{i32 69, i32 0, metadata !4, null}
!182 = metadata !{metadata !"any pointer", metadata !183}
!183 = metadata !{metadata !"omnipotent char", metadata !184}
!184 = metadata !{metadata !"Simple C/C++ TBAA"}
!185 = metadata !{i32 70, i32 0, metadata !4, null}
!186 = metadata !{i32 71, i32 0, metadata !4, null}
!187 = metadata !{i32 72, i32 0, metadata !4, null}
!188 = metadata !{i32 90, i32 0, metadata !109, null}
!189 = metadata !{i32 91, i32 0, metadata !109, null}
!190 = metadata !{i32 92, i32 0, metadata !109, null}
!191 = metadata !{i32 93, i32 0, metadata !109, null}
!192 = metadata !{i32 94, i32 0, metadata !109, null}
!193 = metadata !{i32 107, i32 0, metadata !109, null}
!194 = metadata !{metadata !"int", metadata !183}
!195 = metadata !{i32 109, i32 0, metadata !109, null}
!196 = metadata !{i32 110, i32 0, metadata !109, null}
!197 = metadata !{i32 111, i32 0, metadata !109, null}
!198 = metadata !{i32 113, i32 0, metadata !199, null}
!199 = metadata !{i32 786443, metadata !1, metadata !109, i32 113, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/display.c]
!200 = metadata !{i32 115, i32 0, metadata !201, null}
!201 = metadata !{i32 786443, metadata !1, metadata !202, i32 115, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/display.c]
!202 = metadata !{i32 786443, metadata !1, metadata !199, i32 114, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/display.c]
!203 = metadata !{i32 209, i32 0, metadata !204, null}
!204 = metadata !{i32 786443, metadata !1, metadata !205, i32 207, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/display.c]
!205 = metadata !{i32 786443, metadata !1, metadata !206, i32 124, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/display.c]
!206 = metadata !{i32 786443, metadata !1, metadata !202, i32 123, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/display.c]
!207 = metadata !{i32 214, i32 0, metadata !204, null}
!208 = metadata !{i32 220, i32 0, metadata !204, null}
!209 = metadata !{i32 225, i32 0, metadata !204, null}
!210 = metadata !{i32 236, i32 0, metadata !204, null}
!211 = metadata !{i32 242, i32 0, metadata !204, null}
!212 = metadata !{i32 246, i32 0, metadata !204, null}
!213 = metadata !{i32 148, i32 0, metadata !214, null}
!214 = metadata !{i32 786443, metadata !1, metadata !215, i32 146, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/display.c]
!215 = metadata !{i32 786443, metadata !1, metadata !216, i32 144, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/display.c]
!216 = metadata !{i32 786443, metadata !1, metadata !205, i32 143, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/display.c]
!217 = metadata !{i32 149, i32 0, metadata !214, null}
!218 = metadata !{i32 154, i32 0, metadata !214, null}
!219 = metadata !{i32 159, i32 0, metadata !214, null}
!220 = metadata !{i32 163, i32 0, metadata !214, null}
!221 = metadata !{i32 170, i32 0, metadata !214, null}
!222 = metadata !{i32 182, i32 0, metadata !214, null}
!223 = metadata !{i32 195, i32 0, metadata !214, null}
!224 = metadata !{i32 116, i32 0, metadata !225, null}
!225 = metadata !{i32 786443, metadata !1, metadata !201, i32 115, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/display.c]
!226 = metadata !{i32 119, i32 0, metadata !225, null}
!227 = metadata !{i32 117, i32 0, metadata !225, null}
!228 = metadata !{i32 120, i32 0, metadata !225, null}
!229 = metadata !{i32 213, i32 0, metadata !204, null}
!230 = metadata !{i32 252, i32 0, metadata !204, null}
!231 = metadata !{i32 123, i32 0, metadata !206, null}
!232 = metadata !{i32 125, i32 0, metadata !205, null}
!233 = metadata !{i32 1}
!234 = metadata !{i32 127, i32 0, metadata !235, null}
!235 = metadata !{i32 786443, metadata !1, metadata !205, i32 126, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/display.c]
!236 = metadata !{i32 128, i32 0, metadata !235, null}
!237 = metadata !{i32 129, i32 0, metadata !235, null}
!238 = metadata !{i32 2}
!239 = metadata !{i32 132, i32 0, metadata !240, null}
!240 = metadata !{i32 786443, metadata !1, metadata !205, i32 131, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/display.c]
!241 = metadata !{i32 133, i32 0, metadata !240, null}
!242 = metadata !{i32 134, i32 0, metadata !240, null}
!243 = metadata !{i32 137, i32 0, metadata !244, null}
!244 = metadata !{i32 786443, metadata !1, metadata !205, i32 136, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/display.c]
!245 = metadata !{i32 138, i32 0, metadata !244, null}
!246 = metadata !{i32 139, i32 0, metadata !244, null}
!247 = metadata !{i32 143, i32 0, metadata !216, null}
!248 = metadata !{i32 145, i32 0, metadata !215, null}
!249 = metadata !{i32 158, i32 0, metadata !214, null}
!250 = metadata !{i32 153, i32 0, metadata !214, null}
!251 = metadata !{i32 166, i32 0, metadata !214, null}
!252 = metadata !{i32 169, i32 0, metadata !214, null}
!253 = metadata !{i32 174, i32 0, metadata !214, null}
!254 = metadata !{i32 178, i32 0, metadata !214, null}
!255 = metadata !{i32 181, i32 0, metadata !214, null}
!256 = metadata !{i32 187, i32 0, metadata !214, null}
!257 = metadata !{i32 194, i32 0, metadata !214, null}
!258 = metadata !{i32 206, i32 0, metadata !205, null}
!259 = metadata !{i32 224, i32 0, metadata !204, null}
!260 = metadata !{i32 231, i32 0, metadata !204, null}
!261 = metadata !{i32 235, i32 0, metadata !204, null}
!262 = metadata !{i32 249, i32 0, metadata !204, null}
!263 = metadata !{i32 253, i32 0, metadata !204, null}
!264 = metadata !{i32 266, i32 0, metadata !204, null}
!265 = metadata !{i32 268, i32 0, metadata !204, null}
!266 = metadata !{i32 272, i32 0, metadata !109, null}
!267 = metadata !{i32 273, i32 0, metadata !109, null}
!268 = metadata !{i32 274, i32 0, metadata !109, null}
!269 = metadata !{i32 276, i32 0, metadata !109, null}
!270 = metadata !{i32 341, i32 0, metadata !148, null}
!271 = metadata !{i32 342, i32 0, metadata !148, null}
!272 = metadata !{i32 343, i32 0, metadata !148, null}
!273 = metadata !{i32 344, i32 0, metadata !148, null}
!274 = metadata !{i32 345, i32 0, metadata !148, null}
!275 = metadata !{i32 346, i32 0, metadata !148, null}
!276 = metadata !{i32 347, i32 0, metadata !148, null}
!277 = metadata !{i32 348, i32 0, metadata !148, null}
!278 = metadata !{i32 349, i32 0, metadata !148, null}
!279 = metadata !{i32 350, i32 0, metadata !148, null}
!280 = metadata !{i32 351, i32 0, metadata !148, null}
!281 = metadata !{i32 352, i32 0, metadata !148, null}
!282 = metadata !{i32 354, i32 0, metadata !148, null}
!283 = metadata !{i32 355, i32 0, metadata !148, null}
!284 = metadata !{i32 363, i32 0, metadata !148, null}
!285 = metadata !{i32 365, i32 0, metadata !286, null}
!286 = metadata !{i32 786443, metadata !1, metadata !148, i32 365, i32 0, i32 28} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/display.c]
!287 = metadata !{i32 366, i32 0, metadata !288, null}
!288 = metadata !{i32 786443, metadata !1, metadata !286, i32 365, i32 0, i32 29} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/display.c]
!289 = metadata !{i32 367, i32 0, metadata !290, null}
!290 = metadata !{i32 786443, metadata !1, metadata !288, i32 367, i32 0, i32 30} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/display.c]
!291 = metadata !{i32 369, i32 0, metadata !292, null}
!292 = metadata !{i32 786443, metadata !1, metadata !290, i32 367, i32 0, i32 31} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/display.c]
!293 = metadata !{i32 372, i32 0, metadata !292, null}
!294 = metadata !{i32 370, i32 0, metadata !292, null}
!295 = metadata !{i32 375, i32 0, metadata !292, null}
!296 = metadata !{i32 377, i32 0, metadata !292, null}
!297 = metadata !{i32 380, i32 0, metadata !292, null}
!298 = metadata !{i32 382, i32 0, metadata !292, null}
!299 = metadata !{i32 384, i32 0, metadata !300, null}
!300 = metadata !{i32 786443, metadata !1, metadata !292, i32 383, i32 0, i32 32} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/display.c]
!301 = metadata !{i32 388, i32 0, metadata !300, null}
!302 = metadata !{i32 389, i32 0, metadata !300, null}
!303 = metadata !{i32 390, i32 0, metadata !300, null}
!304 = metadata !{i32 392, i32 0, metadata !300, null}
!305 = metadata !{i32 393, i32 0, metadata !300, null}
!306 = metadata !{i32 394, i32 0, metadata !300, null}
!307 = metadata !{i32 396, i32 0, metadata !300, null}
!308 = metadata !{i32 402, i32 0, metadata !300, null}
!309 = metadata !{i32 407, i32 0, metadata !148, null}
!310 = metadata !{i32 409, i32 0, metadata !148, null}
!311 = metadata !{i32 411, i32 0, metadata !312, null}
!312 = metadata !{i32 786443, metadata !1, metadata !148, i32 410, i32 0, i32 33} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/display.c]
!313 = metadata !{i32 412, i32 0, metadata !312, null}
!314 = metadata !{i32 413, i32 0, metadata !312, null}
!315 = metadata !{i32 414, i32 0, metadata !312, null}
!316 = metadata !{i32 415, i32 0, metadata !312, null}
!317 = metadata !{i32 416, i32 0, metadata !312, null}
!318 = metadata !{i32 417, i32 0, metadata !312, null}
!319 = metadata !{i32 418, i32 0, metadata !312, null}
!320 = metadata !{i32 419, i32 0, metadata !312, null}
!321 = metadata !{i32 420, i32 0, metadata !312, null}
!322 = metadata !{i32 421, i32 0, metadata !312, null}
!323 = metadata !{i32 422, i32 0, metadata !312, null}
!324 = metadata !{i32 424, i32 0, metadata !148, null}
!325 = metadata !{i32 426, i32 0, metadata !326, null}
!326 = metadata !{i32 786443, metadata !1, metadata !148, i32 425, i32 0, i32 34} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/display.c]
!327 = metadata !{i32 427, i32 0, metadata !326, null}
!328 = metadata !{i32 428, i32 0, metadata !326, null}
!329 = metadata !{i32 429, i32 0, metadata !326, null}
!330 = metadata !{i32 430, i32 0, metadata !326, null}
!331 = metadata !{i32 431, i32 0, metadata !326, null}
!332 = metadata !{i32 432, i32 0, metadata !326, null}
!333 = metadata !{i32 433, i32 0, metadata !326, null}
!334 = metadata !{i32 434, i32 0, metadata !326, null}
!335 = metadata !{i32 435, i32 0, metadata !326, null}
!336 = metadata !{i32 436, i32 0, metadata !326, null}
!337 = metadata !{i32 437, i32 0, metadata !326, null}
!338 = metadata !{i32 439, i32 0, metadata !148, null}
!339 = metadata !{i32 441, i32 0, metadata !340, null}
!340 = metadata !{i32 786443, metadata !1, metadata !148, i32 441, i32 0, i32 35} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/display.c]
!341 = metadata !{i32 443, i32 0, metadata !342, null}
!342 = metadata !{i32 786443, metadata !1, metadata !340, i32 441, i32 0, i32 36} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/display.c]
!343 = metadata !{i32 442, i32 0, metadata !342, null}
!344 = metadata !{i32 446, i32 0, metadata !148, null}
!345 = metadata !{i32 298, i32 0, metadata !130, null}
!346 = metadata !{i32 303, i32 0, metadata !130, null}
!347 = metadata !{i32 304, i32 0, metadata !348, null}
!348 = metadata !{i32 786443, metadata !1, metadata !130, i32 304, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/display.c]
!349 = metadata !{i32 305, i32 0, metadata !130, null}
!350 = metadata !{i32 306, i32 0, metadata !351, null}
!351 = metadata !{i32 786443, metadata !1, metadata !130, i32 306, i32 0, i32 14} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/display.c]
!352 = metadata !{i32 307, i32 0, metadata !353, null}
!353 = metadata !{i32 786443, metadata !1, metadata !130, i32 307, i32 0, i32 15} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/display.c]
!354 = metadata !{i32 309, i32 0, metadata !355, null}
!355 = metadata !{i32 786443, metadata !1, metadata !356, i32 309, i32 0, i32 17} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/display.c]
!356 = metadata !{i32 786443, metadata !1, metadata !353, i32 307, i32 0, i32 16} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/display.c]
!357 = metadata !{i32 786689, metadata !140, metadata !"sc", metadata !5, i32 16777547, metadata !8, i32 0, metadata !350} ; [ DW_TAG_arg_variable ] [sc] [line 331]
!358 = metadata !{i32 331, i32 0, metadata !140, metadata !350}
!359 = metadata !{i32 334, i32 0, metadata !140, metadata !350}
!360 = metadata !{i32 786688, metadata !140, metadata !"dsc", metadata !5, i32 332, metadata !146, i32 0, metadata !350} ; [ DW_TAG_auto_variable ] [dsc] [line 332]
!361 = metadata !{double 0x40968AC7B8CC7DEF}
!362 = metadata !{i32 786688, metadata !140, metadata !"div", metadata !5, i32 333, metadata !146, i32 0, metadata !350} ; [ DW_TAG_auto_variable ] [div] [line 333]
!363 = metadata !{i32 335, i32 0, metadata !140, metadata !350}
!364 = metadata !{i32 336, i32 0, metadata !140, metadata !350}
!365 = metadata !{i32 337, i32 0, metadata !140, metadata !350}
!366 = metadata !{i32 311, i32 0, metadata !367, null}
!367 = metadata !{i32 786443, metadata !1, metadata !130, i32 311, i32 0, i32 18} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/display.c]
!368 = metadata !{i32 313, i32 0, metadata !369, null}
!369 = metadata !{i32 786443, metadata !1, metadata !370, i32 313, i32 0, i32 20} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/display.c]
!370 = metadata !{i32 786443, metadata !1, metadata !367, i32 311, i32 0, i32 19} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/display.c]
!371 = metadata !{i32 308, i32 0, metadata !356, null}
!372 = metadata !{i32 786689, metadata !140, metadata !"sc", metadata !5, i32 16777547, metadata !8, i32 0, metadata !354} ; [ DW_TAG_arg_variable ] [sc] [line 331]
!373 = metadata !{i32 331, i32 0, metadata !140, metadata !354}
!374 = metadata !{i32 334, i32 0, metadata !140, metadata !354}
!375 = metadata !{i32 786688, metadata !140, metadata !"dsc", metadata !5, i32 332, metadata !146, i32 0, metadata !354} ; [ DW_TAG_auto_variable ] [dsc] [line 332]
!376 = metadata !{i32 786688, metadata !140, metadata !"div", metadata !5, i32 333, metadata !146, i32 0, metadata !354} ; [ DW_TAG_auto_variable ] [div] [line 333]
!377 = metadata !{i32 335, i32 0, metadata !140, metadata !354}
!378 = metadata !{i32 336, i32 0, metadata !140, metadata !354}
!379 = metadata !{i32 337, i32 0, metadata !140, metadata !354}
!380 = metadata !{i32 312, i32 0, metadata !370, null}
!381 = metadata !{i32 786689, metadata !140, metadata !"sc", metadata !5, i32 16777547, metadata !8, i32 0, metadata !368} ; [ DW_TAG_arg_variable ] [sc] [line 331]
!382 = metadata !{i32 331, i32 0, metadata !140, metadata !368}
!383 = metadata !{i32 334, i32 0, metadata !140, metadata !368}
!384 = metadata !{i32 786688, metadata !140, metadata !"dsc", metadata !5, i32 332, metadata !146, i32 0, metadata !368} ; [ DW_TAG_auto_variable ] [dsc] [line 332]
!385 = metadata !{i32 786688, metadata !140, metadata !"div", metadata !5, i32 333, metadata !146, i32 0, metadata !368} ; [ DW_TAG_auto_variable ] [div] [line 333]
!386 = metadata !{i32 335, i32 0, metadata !140, metadata !368}
!387 = metadata !{i32 336, i32 0, metadata !140, metadata !368}
!388 = metadata !{i32 337, i32 0, metadata !140, metadata !368}
!389 = metadata !{i32 315, i32 0, metadata !130, null}
!390 = metadata !{i32 316, i32 0, metadata !391, null}
!391 = metadata !{i32 786443, metadata !1, metadata !130, i32 316, i32 0, i32 21} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/display.c]
!392 = metadata !{i32 317, i32 0, metadata !130, null}
!393 = metadata !{i32 318, i32 0, metadata !394, null}
!394 = metadata !{i32 786443, metadata !1, metadata !130, i32 318, i32 0, i32 22} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/display.c]
!395 = metadata !{i32 786689, metadata !140, metadata !"sc", metadata !5, i32 16777547, metadata !8, i32 0, metadata !390} ; [ DW_TAG_arg_variable ] [sc] [line 331]
!396 = metadata !{i32 331, i32 0, metadata !140, metadata !390}
!397 = metadata !{i32 334, i32 0, metadata !140, metadata !390}
!398 = metadata !{i32 786688, metadata !140, metadata !"dsc", metadata !5, i32 332, metadata !146, i32 0, metadata !390} ; [ DW_TAG_auto_variable ] [dsc] [line 332]
!399 = metadata !{i32 786688, metadata !140, metadata !"div", metadata !5, i32 333, metadata !146, i32 0, metadata !390} ; [ DW_TAG_auto_variable ] [div] [line 333]
!400 = metadata !{i32 335, i32 0, metadata !140, metadata !390}
!401 = metadata !{i32 336, i32 0, metadata !140, metadata !390}
!402 = metadata !{i32 337, i32 0, metadata !140, metadata !390}
!403 = metadata !{i32 786689, metadata !140, metadata !"sc", metadata !5, i32 16777547, metadata !8, i32 0, metadata !393} ; [ DW_TAG_arg_variable ] [sc] [line 331]
!404 = metadata !{i32 331, i32 0, metadata !140, metadata !393}
!405 = metadata !{i32 334, i32 0, metadata !140, metadata !393}
!406 = metadata !{i32 786688, metadata !140, metadata !"dsc", metadata !5, i32 332, metadata !146, i32 0, metadata !393} ; [ DW_TAG_auto_variable ] [dsc] [line 332]
!407 = metadata !{i32 786688, metadata !140, metadata !"div", metadata !5, i32 333, metadata !146, i32 0, metadata !393} ; [ DW_TAG_auto_variable ] [div] [line 333]
!408 = metadata !{i32 335, i32 0, metadata !140, metadata !393}
!409 = metadata !{i32 336, i32 0, metadata !140, metadata !393}
!410 = metadata !{i32 337, i32 0, metadata !140, metadata !393}
!411 = metadata !{i32 319, i32 0, metadata !130, null}
!412 = metadata !{i32 320, i32 0, metadata !413, null}
!413 = metadata !{i32 786443, metadata !1, metadata !130, i32 320, i32 0, i32 23} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/display.c]
!414 = metadata !{i32 321, i32 0, metadata !130, null}
!415 = metadata !{i32 322, i32 0, metadata !416, null}
!416 = metadata !{i32 786443, metadata !1, metadata !130, i32 322, i32 0, i32 24} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/display.c]
!417 = metadata !{i32 786689, metadata !140, metadata !"sc", metadata !5, i32 16777547, metadata !8, i32 0, metadata !412} ; [ DW_TAG_arg_variable ] [sc] [line 331]
!418 = metadata !{i32 331, i32 0, metadata !140, metadata !412}
!419 = metadata !{i32 334, i32 0, metadata !140, metadata !412}
!420 = metadata !{i32 786688, metadata !140, metadata !"dsc", metadata !5, i32 332, metadata !146, i32 0, metadata !412} ; [ DW_TAG_auto_variable ] [dsc] [line 332]
!421 = metadata !{i32 786688, metadata !140, metadata !"div", metadata !5, i32 333, metadata !146, i32 0, metadata !412} ; [ DW_TAG_auto_variable ] [div] [line 333]
!422 = metadata !{i32 335, i32 0, metadata !140, metadata !412}
!423 = metadata !{i32 336, i32 0, metadata !140, metadata !412}
!424 = metadata !{i32 337, i32 0, metadata !140, metadata !412}
!425 = metadata !{i32 323, i32 0, metadata !426, null}
!426 = metadata !{i32 786443, metadata !1, metadata !130, i32 323, i32 0, i32 25} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/display.c]
!427 = metadata !{i32 325, i32 0, metadata !428, null}
!428 = metadata !{i32 786443, metadata !1, metadata !429, i32 325, i32 0, i32 27} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/display.c]
!429 = metadata !{i32 786443, metadata !1, metadata !426, i32 323, i32 0, i32 26} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/display.c]
!430 = metadata !{i32 786689, metadata !140, metadata !"sc", metadata !5, i32 16777547, metadata !8, i32 0, metadata !415} ; [ DW_TAG_arg_variable ] [sc] [line 331]
!431 = metadata !{i32 331, i32 0, metadata !140, metadata !415}
!432 = metadata !{i32 334, i32 0, metadata !140, metadata !415}
!433 = metadata !{i32 786688, metadata !140, metadata !"dsc", metadata !5, i32 332, metadata !146, i32 0, metadata !415} ; [ DW_TAG_auto_variable ] [dsc] [line 332]
!434 = metadata !{i32 786688, metadata !140, metadata !"div", metadata !5, i32 333, metadata !146, i32 0, metadata !415} ; [ DW_TAG_auto_variable ] [div] [line 333]
!435 = metadata !{i32 335, i32 0, metadata !140, metadata !415}
!436 = metadata !{i32 336, i32 0, metadata !140, metadata !415}
!437 = metadata !{i32 337, i32 0, metadata !140, metadata !415}
!438 = metadata !{i32 324, i32 0, metadata !429, null}
!439 = metadata !{i32 786689, metadata !140, metadata !"sc", metadata !5, i32 16777547, metadata !8, i32 0, metadata !427} ; [ DW_TAG_arg_variable ] [sc] [line 331]
!440 = metadata !{i32 331, i32 0, metadata !140, metadata !427}
!441 = metadata !{i32 334, i32 0, metadata !140, metadata !427}
!442 = metadata !{i32 786688, metadata !140, metadata !"dsc", metadata !5, i32 332, metadata !146, i32 0, metadata !427} ; [ DW_TAG_auto_variable ] [dsc] [line 332]
!443 = metadata !{i32 786688, metadata !140, metadata !"div", metadata !5, i32 333, metadata !146, i32 0, metadata !427} ; [ DW_TAG_auto_variable ] [div] [line 333]
!444 = metadata !{i32 335, i32 0, metadata !140, metadata !427}
!445 = metadata !{i32 336, i32 0, metadata !140, metadata !427}
!446 = metadata !{i32 337, i32 0, metadata !140, metadata !427}
!447 = metadata !{i32 327, i32 0, metadata !130, null}
!448 = metadata !{i32 328, i32 0, metadata !130, null}
!449 = metadata !{i32 331, i32 0, metadata !140, null}
!450 = metadata !{i32 334, i32 0, metadata !140, null}
!451 = metadata !{i32 335, i32 0, metadata !140, null}
!452 = metadata !{i32 336, i32 0, metadata !140, null}
!453 = metadata !{i32 337, i32 0, metadata !140, null}
!454 = metadata !{i32 338, i32 0, metadata !140, null}
