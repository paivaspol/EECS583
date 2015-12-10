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
  tail call void @llvm.dbg.value(metadata !{i8* %dsq}, i64 0, metadata !12), !dbg !130
  tail call void @llvm.dbg.value(metadata !{i32 %len}, i64 0, metadata !13), !dbg !130
  tail call void @llvm.dbg.value(metadata !131, i64 0, metadata !25), !dbg !132
  tail call void @llvm.dbg.value(metadata !133, i64 0, metadata !26), !dbg !134
  tail call void @llvm.dbg.value(metadata !135, i64 0, metadata !27), !dbg !136
  tail call void @llvm.dbg.value(metadata !137, i64 0, metadata !30), !dbg !138
  tail call void @llvm.dbg.value(metadata !139, i64 0, metadata !31), !dbg !140
  tail call void @llvm.dbg.value(metadata !141, i64 0, metadata !32), !dbg !142
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !33), !dbg !143
  %cmp = icmp eq i32 %len, 0, !dbg !144
  br i1 %cmp, label %return, label %if.end, !dbg !144

if.end:                                           ; preds = %entry
  %add = add i32 %len, 1, !dbg !145
  %conv = sext i32 %add to i64, !dbg !145
  %mul = shl nsw i64 %conv, 2, !dbg !145
  %call = tail call i8* @sre_malloc(i8* getelementptr inbounds ([51 x i8]* @.str, i64 0, i64 0), i32 100, i64 %mul) #6, !dbg !145
  %0 = bitcast i8* %call to i32*, !dbg !145
  tail call void @llvm.dbg.value(metadata !{i32* %0}, i64 0, metadata !28), !dbg !145
  tail call void @llvm.dbg.value(metadata !133, i64 0, metadata !14), !dbg !146
  %cmp1195 = icmp slt i32 %len, 1, !dbg !146
  br i1 %cmp1195, label %for.body27, label %for.body.lr.ph, !dbg !146

for.body.lr.ph:                                   ; preds = %if.end
  %scevgep = getelementptr i8* %call, i64 4
  %1 = add i32 %len, -1, !dbg !146
  %2 = zext i32 %1 to i64
  %3 = shl nuw nsw i64 %2, 2, !dbg !146
  %4 = add i64 %3, 4, !dbg !146
  call void @llvm.memset.p0i8.i64(i8* %scevgep, i8 0, i64 %4, i32 4, i1 false), !dbg !146
  br label %for.body27, !dbg !146

for.cond103.preheader:                            ; preds = %for.cond24.backedge
  br i1 %cmp1195, label %for.end118, label %for.body106, !dbg !148

for.body27:                                       ; preds = %if.end, %for.body.lr.ph, %for.cond24.backedge
  %indvars.iv210 = phi i64 [ %indvars.iv.next211, %for.cond24.backedge ], [ 1, %for.body.lr.ph ], [ 1, %if.end ]
  %indvars.iv199 = phi i64 [ %indvars.iv.next200, %for.cond24.backedge ], [ 2, %for.body.lr.ph ], [ 2, %if.end ]
  %off.0194 = phi i32 [ %add28, %for.cond24.backedge ], [ 1, %for.body.lr.ph ], [ 1, %if.end ]
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !20), !dbg !150
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !17), !dbg !150
  tail call void @llvm.dbg.value(metadata !{i32 %off.0194}, i64 0, metadata !18), !dbg !153
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !19), !dbg !154
  %indvars.iv.next211 = add i64 %indvars.iv210, 1, !dbg !155
  %add28 = add nsw i32 %off.0194, 1, !dbg !156
  tail call void @llvm.dbg.value(metadata !{i32 %add28}, i64 0, metadata !14), !dbg !156
  %5 = trunc i64 %indvars.iv210 to i32, !dbg !156
  %cmp30183 = icmp slt i32 %5, %len, !dbg !156
  br i1 %cmp30183, label %for.body32, label %for.cond24.backedge, !dbg !156

for.body32:                                       ; preds = %for.body27, %if.end75
  %indvars.iv201 = phi i64 [ %indvars.iv.next202, %if.end75 ], [ %indvars.iv199, %for.body27 ], !dbg !155
  %sum.0187 = phi i32 [ %.sum.1, %if.end75 ], [ 0, %for.body27 ]
  %beg.0186 = phi i32 [ %add79.beg.1, %if.end75 ], [ %off.0194, %for.body27 ]
  %end.0185 = phi i32 [ %add79.end.2, %if.end75 ], [ 0, %for.body27 ]
  %top.0184 = phi i32 [ %.top.2, %if.end75 ], [ 0, %for.body27 ]
  %6 = sub nsw i64 %indvars.iv201, %indvars.iv210, !dbg !158
  %arrayidx35 = getelementptr inbounds i8* %dsq, i64 %6, !dbg !158
  %7 = load i8* %arrayidx35, align 1, !dbg !158, !tbaa !160
  %idxprom37 = sext i8 %7 to i64, !dbg !158
  %arrayidx39 = getelementptr inbounds i8* %dsq, i64 %indvars.iv201, !dbg !158
  %8 = load i8* %arrayidx39, align 1, !dbg !158, !tbaa !160
  %idxprom41 = sext i8 %8 to i64, !dbg !158
  %arrayidx43 = getelementptr inbounds [23 x [23 x i32]]* @xpam120, i64 0, i64 %idxprom41, i64 %idxprom37, !dbg !158
  %9 = load i32* %arrayidx43, align 4, !dbg !158, !tbaa !162
  %add44 = add nsw i32 %9, %sum.0187, !dbg !158
  tail call void @llvm.dbg.value(metadata !{i32 %add44}, i64 0, metadata !17), !dbg !158
  %cmp45 = icmp sgt i32 %add44, %top.0184, !dbg !163
  tail call void @llvm.dbg.value(metadata !{i32 %add44}, i64 0, metadata !20), !dbg !164
  tail call void @llvm.dbg.value(metadata !166, i64 0, metadata !19), !dbg !167
  %add44.top.0 = select i1 %cmp45, i32 %add44, i32 %top.0184, !dbg !163
  %10 = trunc i64 %indvars.iv201 to i32, !dbg !163
  %i.1.end.0 = select i1 %cmp45, i32 %10, i32 %end.0185, !dbg !163
  %cmp49 = icmp sgt i32 %add44.top.0, 20, !dbg !168
  %sub51 = sub nsw i32 %add44.top.0, %add44, !dbg !168
  %cmp52 = icmp sgt i32 %sub51, 14, !dbg !168
  %or.cond = and i1 %cmp49, %cmp52, !dbg !168
  br i1 %or.cond, label %for.cond55.preheader, label %if.else68, !dbg !168

for.cond55.preheader:                             ; preds = %for.body32
  %cmp56181 = icmp sgt i32 %beg.0186, %i.1.end.0, !dbg !169
  br i1 %cmp56181, label %for.end66, label %for.body58.lr.ph, !dbg !169

for.body58.lr.ph:                                 ; preds = %for.cond55.preheader
  %11 = sext i32 %beg.0186 to i64
  br label %for.body58, !dbg !169

for.body58:                                       ; preds = %for.body58, %for.body58.lr.ph
  %indvars.iv197 = phi i64 [ %indvars.iv.next198, %for.body58 ], [ %11, %for.body58.lr.ph ]
  %12 = trunc i64 %indvars.iv197 to i32, !dbg !172
  %sub59 = sub i64 %indvars.iv197, %indvars.iv210, !dbg !172
  %sext218 = shl i64 %sub59, 32, !dbg !172
  %idxprom60 = ashr exact i64 %sext218, 32, !dbg !172
  %arrayidx61 = getelementptr inbounds i32* %0, i64 %idxprom60, !dbg !172
  store i32 1, i32* %arrayidx61, align 4, !dbg !172, !tbaa !162
  %arrayidx63 = getelementptr inbounds i32* %0, i64 %indvars.iv197, !dbg !172
  store i32 1, i32* %arrayidx63, align 4, !dbg !172, !tbaa !162
  %indvars.iv.next198 = add i64 %indvars.iv197, 1, !dbg !169
  %cmp56 = icmp slt i32 %12, %i.1.end.0, !dbg !169
  br i1 %cmp56, label %for.body58, label %for.end66, !dbg !169

for.end66:                                        ; preds = %for.body58, %for.cond55.preheader
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !20), !dbg !173
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !17), !dbg !173
  %13 = add nsw i64 %indvars.iv201, 1, !dbg !174
  %14 = trunc i64 %13 to i32, !dbg !175
  br label %if.end75, !dbg !175

if.else68:                                        ; preds = %for.body32
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !20), !dbg !176
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !17), !dbg !176
  %15 = add nsw i64 %indvars.iv201, 1, !dbg !178
  %.add44.top.0 = select i1 %cmp52, i32 0, i32 %add44.top.0, !dbg !179
  %16 = trunc i64 %15 to i32, !dbg !179
  %add73.i.1.end.0 = select i1 %cmp52, i32 %16, i32 %i.1.end.0, !dbg !179
  %add73.beg.0 = select i1 %cmp52, i32 %16, i32 %beg.0186, !dbg !179
  %.add44 = select i1 %cmp52, i32 0, i32 %add44, !dbg !179
  br label %if.end75, !dbg !179

if.end75:                                         ; preds = %if.else68, %for.end66
  %top.2 = phi i32 [ 0, %for.end66 ], [ %.add44.top.0, %if.else68 ]
  %end.2 = phi i32 [ %14, %for.end66 ], [ %add73.i.1.end.0, %if.else68 ]
  %beg.1 = phi i32 [ %14, %for.end66 ], [ %add73.beg.0, %if.else68 ]
  %sum.1 = phi i32 [ 0, %for.end66 ], [ %.add44, %if.else68 ]
  %cmp76 = icmp slt i32 %sum.1, 0, !dbg !180
  %indvars.iv.next202 = add i64 %indvars.iv201, 1, !dbg !156
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !20), !dbg !181
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !17), !dbg !181
  %.top.2 = select i1 %cmp76, i32 0, i32 %top.2, !dbg !180
  %17 = trunc i64 %indvars.iv.next202 to i32, !dbg !180
  %add79.end.2 = select i1 %cmp76, i32 %17, i32 %end.2, !dbg !180
  %add79.beg.1 = select i1 %cmp76, i32 %17, i32 %beg.1, !dbg !180
  %.sum.1 = select i1 %cmp76, i32 0, i32 %sum.1, !dbg !180
  %exitcond207 = icmp eq i32 %17, %add, !dbg !156
  br i1 %exitcond207, label %for.end83, label %for.body32, !dbg !156

for.end83:                                        ; preds = %if.end75
  %phitmp = icmp slt i32 %.top.2, 21, !dbg !156
  %cmp88192 = icmp sgt i32 %add79.beg.1, %add79.end.2, !dbg !183
  %or.cond219 = or i1 %phitmp, %cmp88192, !dbg !186
  br i1 %or.cond219, label %for.cond24.backedge, label %for.body90.lr.ph, !dbg !186

for.cond24.backedge:                              ; preds = %for.end83, %for.body27, %for.body90
  %indvars.iv.next200 = add i64 %indvars.iv199, 1, !dbg !155
  %lftr.wideiv212 = trunc i64 %indvars.iv.next211 to i32, !dbg !155
  %exitcond213 = icmp eq i32 %lftr.wideiv212, 5, !dbg !155
  br i1 %exitcond213, label %for.cond103.preheader, label %for.body27, !dbg !155

for.body90.lr.ph:                                 ; preds = %for.end83
  %18 = sext i32 %add79.beg.1 to i64
  br label %for.body90, !dbg !183

for.body90:                                       ; preds = %for.body90, %for.body90.lr.ph
  %indvars.iv208 = phi i64 [ %indvars.iv.next209, %for.body90 ], [ %18, %for.body90.lr.ph ]
  %19 = trunc i64 %indvars.iv208 to i32, !dbg !187
  %sub91 = sub i64 %indvars.iv208, %indvars.iv210, !dbg !187
  %sext = shl i64 %sub91, 32, !dbg !187
  %idxprom92 = ashr exact i64 %sext, 32, !dbg !187
  %arrayidx93 = getelementptr inbounds i32* %0, i64 %idxprom92, !dbg !187
  store i32 1, i32* %arrayidx93, align 4, !dbg !187, !tbaa !162
  %arrayidx95 = getelementptr inbounds i32* %0, i64 %indvars.iv208, !dbg !187
  store i32 1, i32* %arrayidx95, align 4, !dbg !187, !tbaa !162
  %indvars.iv.next209 = add i64 %indvars.iv208, 1, !dbg !183
  %cmp88 = icmp slt i32 %19, %add79.end.2, !dbg !183
  br i1 %cmp88, label %for.body90, label %for.cond24.backedge, !dbg !183

for.body106:                                      ; preds = %for.cond103.preheader, %for.inc116
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc116 ], [ 1, %for.cond103.preheader ]
  %xnum.0180 = phi i32 [ %xnum.1, %for.inc116 ], [ 0, %for.cond103.preheader ]
  %arrayidx108 = getelementptr inbounds i32* %0, i64 %indvars.iv, !dbg !188
  %20 = load i32* %arrayidx108, align 4, !dbg !188, !tbaa !162
  %tobool = icmp eq i32 %20, 0, !dbg !188
  br i1 %tobool, label %for.inc116, label %if.then109, !dbg !188

if.then109:                                       ; preds = %for.body106
  %inc110 = add nsw i32 %xnum.0180, 1, !dbg !189
  tail call void @llvm.dbg.value(metadata !{i32 %inc110}, i64 0, metadata !33), !dbg !189
  %21 = load i32* @Alphabet_iupac, align 4, !dbg !189, !tbaa !162
  %sub111 = add nsw i32 %21, 255, !dbg !189
  %conv112 = trunc i32 %sub111 to i8, !dbg !189
  %arrayidx114 = getelementptr inbounds i8* %dsq, i64 %indvars.iv, !dbg !189
  store i8 %conv112, i8* %arrayidx114, align 1, !dbg !189, !tbaa !160
  br label %for.inc116, !dbg !189

for.inc116:                                       ; preds = %for.body106, %if.then109
  %xnum.1 = phi i32 [ %inc110, %if.then109 ], [ %xnum.0180, %for.body106 ]
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !148
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !148
  %exitcond = icmp eq i32 %lftr.wideiv, %add, !dbg !148
  br i1 %exitcond, label %for.end118, label %for.body106, !dbg !148

for.end118:                                       ; preds = %for.inc116, %for.cond103.preheader
  %xnum.0.lcssa = phi i32 [ 0, %for.cond103.preheader ], [ %xnum.1, %for.inc116 ]
  tail call void @free(i8* %call) #6, !dbg !191
  br label %return, !dbg !192

return:                                           ; preds = %entry, %for.end118
  %retval.0 = phi i32 [ %xnum.0.lcssa, %for.end118 ], [ 0, %entry ]
  ret i32 %retval.0, !dbg !193
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

; Function Attrs: optsize
declare i8* @sre_malloc(i8*, i32, i64) #2

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) #3

; Function Attrs: nounwind optsize uwtable
define float @TraceScoreCorrection(%struct.plan7_s* %hmm, %struct.p7trace_s* %tr, i8* nocapture %dsq) #0 {
entry:
  %p = alloca [20 x float], align 16
  %sc = alloca [24 x i32], align 16
  call void @llvm.dbg.value(metadata !{%struct.plan7_s* %hmm}, i64 0, metadata !109), !dbg !194
  call void @llvm.dbg.value(metadata !{%struct.p7trace_s* %tr}, i64 0, metadata !110), !dbg !194
  call void @llvm.dbg.value(metadata !{i8* %dsq}, i64 0, metadata !111), !dbg !194
  %0 = bitcast [20 x float]* %p to i8*, !dbg !195
  call void @llvm.lifetime.start(i64 80, i8* %0) #4, !dbg !195
  call void @llvm.dbg.declare(metadata !{[20 x float]* %p}, metadata !112), !dbg !195
  %1 = bitcast [24 x i32]* %sc to i8*, !dbg !196
  call void @llvm.lifetime.start(i64 96, i8* %1) #4, !dbg !196
  call void @llvm.dbg.declare(metadata !{[24 x i32]* %sc}, metadata !113), !dbg !196
  %cmp = icmp eq %struct.p7trace_s* %tr, null, !dbg !197
  br i1 %cmp, label %cleanup, label %if.end, !dbg !197

if.end:                                           ; preds = %entry
  %arraydecay = getelementptr inbounds [20 x float]* %p, i64 0, i64 0, !dbg !198
  %2 = load i32* @Alphabet_size, align 4, !dbg !198, !tbaa !162
  call void @FSet(float* %arraydecay, i32 %2, float 0.000000e+00) #6, !dbg !198
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !118), !dbg !199
  %tlen = getelementptr inbounds %struct.p7trace_s* %tr, i64 0, i32 0, !dbg !199
  %3 = load i32* %tlen, align 4, !dbg !199, !tbaa !162
  %cmp1126 = icmp sgt i32 %3, 0, !dbg !199
  br i1 %cmp1126, label %for.body.lr.ph, label %for.end, !dbg !199

for.body.lr.ph:                                   ; preds = %if.end
  %statetype = getelementptr inbounds %struct.p7trace_s* %tr, i64 0, i32 1, !dbg !201
  %nodeidx = getelementptr inbounds %struct.p7trace_s* %tr, i64 0, i32 2, !dbg !202
  %mat = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 22, !dbg !202
  %ins = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 23, !dbg !203
  br label %for.body, !dbg !199

for.body:                                         ; preds = %for.inc, %for.body.lr.ph
  %indvars.iv134 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next135, %for.inc ]
  %4 = load i8** %statetype, align 8, !dbg !201, !tbaa !204
  %arrayidx = getelementptr inbounds i8* %4, i64 %indvars.iv134, !dbg !201
  %5 = load i8* %arrayidx, align 1, !dbg !201, !tbaa !160
  switch i8 %5, label %for.inc [
    i8 1, label %if.then4
    i8 3, label %if.then16
  ], !dbg !201

if.then4:                                         ; preds = %for.body
  %6 = load i32** %nodeidx, align 8, !dbg !202, !tbaa !204
  %arrayidx7 = getelementptr inbounds i32* %6, i64 %indvars.iv134, !dbg !202
  %7 = load i32* %arrayidx7, align 4, !dbg !202, !tbaa !162
  %idxprom8 = sext i32 %7 to i64, !dbg !202
  %8 = load float*** %mat, align 8, !dbg !202, !tbaa !204
  %arrayidx9 = getelementptr inbounds float** %8, i64 %idxprom8, !dbg !202
  %9 = load float** %arrayidx9, align 8, !dbg !202, !tbaa !204
  %10 = load i32* @Alphabet_size, align 4, !dbg !202, !tbaa !162
  call void @FAdd(float* %arraydecay, float* %9, i32 %10) #6, !dbg !202
  br label %for.inc, !dbg !202

if.then16:                                        ; preds = %for.body
  %11 = load i32** %nodeidx, align 8, !dbg !203, !tbaa !204
  %arrayidx20 = getelementptr inbounds i32* %11, i64 %indvars.iv134, !dbg !203
  %12 = load i32* %arrayidx20, align 4, !dbg !203, !tbaa !162
  %idxprom21 = sext i32 %12 to i64, !dbg !203
  %13 = load float*** %ins, align 8, !dbg !203, !tbaa !204
  %arrayidx22 = getelementptr inbounds float** %13, i64 %idxprom21, !dbg !203
  %14 = load float** %arrayidx22, align 8, !dbg !203, !tbaa !204
  %15 = load i32* @Alphabet_size, align 4, !dbg !203, !tbaa !162
  call void @FAdd(float* %arraydecay, float* %14, i32 %15) #6, !dbg !203
  br label %for.inc, !dbg !203

for.inc:                                          ; preds = %for.body, %if.then4, %if.then16
  %indvars.iv.next135 = add i64 %indvars.iv134, 1, !dbg !199
  %16 = load i32* %tlen, align 4, !dbg !199, !tbaa !162
  %17 = trunc i64 %indvars.iv.next135 to i32, !dbg !199
  %cmp1 = icmp slt i32 %17, %16, !dbg !199
  br i1 %cmp1, label %for.body, label %for.end, !dbg !199

for.end:                                          ; preds = %for.inc, %if.end
  %18 = load i32* @Alphabet_size, align 4, !dbg !205, !tbaa !162
  call void @FNorm(float* %arraydecay, i32 %18) #6, !dbg !205
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !117), !dbg !206
  %19 = load i32* @Alphabet_size, align 4, !dbg !206, !tbaa !162
  %cmp27123 = icmp sgt i32 %19, 0, !dbg !206
  br i1 %cmp27123, label %for.body29, label %for.cond39.preheader, !dbg !206

for.cond39.preheader:                             ; preds = %for.body29, %for.end
  %.lcssa = phi i32 [ %19, %for.end ], [ %24, %for.body29 ]
  %20 = load i32* @Alphabet_iupac, align 4, !dbg !208, !tbaa !162
  %cmp40121 = icmp slt i32 %.lcssa, %20, !dbg !208
  br i1 %cmp40121, label %for.body42.lr.ph, label %for.cond52.preheader, !dbg !208

for.body42.lr.ph:                                 ; preds = %for.cond39.preheader
  %arraydecay45 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 28, i64 0, !dbg !210
  %21 = sext i32 %.lcssa to i64
  br label %for.body42, !dbg !208

for.body29:                                       ; preds = %for.end, %for.body29
  %indvars.iv132 = phi i64 [ %indvars.iv.next133, %for.body29 ], [ 0, %for.end ]
  %arrayidx31 = getelementptr inbounds [20 x float]* %p, i64 0, i64 %indvars.iv132, !dbg !211
  %22 = load float* %arrayidx31, align 4, !dbg !211, !tbaa !212
  %arrayidx33 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 28, i64 %indvars.iv132, !dbg !211
  %23 = load float* %arrayidx33, align 4, !dbg !211, !tbaa !212
  %call = call i32 @Prob2Score(float %22, float %23) #6, !dbg !211
  %arrayidx35 = getelementptr inbounds [24 x i32]* %sc, i64 0, i64 %indvars.iv132, !dbg !211
  store i32 %call, i32* %arrayidx35, align 4, !dbg !211, !tbaa !162
  %indvars.iv.next133 = add i64 %indvars.iv132, 1, !dbg !206
  %24 = load i32* @Alphabet_size, align 4, !dbg !206, !tbaa !162
  %25 = trunc i64 %indvars.iv.next133 to i32, !dbg !206
  %cmp27 = icmp slt i32 %25, %24, !dbg !206
  br i1 %cmp27, label %for.body29, label %for.cond39.preheader, !dbg !206

for.cond52.preheader:                             ; preds = %for.body42, %for.cond39.preheader
  %26 = load i32* %tlen, align 4, !dbg !213, !tbaa !162
  %cmp54118 = icmp sgt i32 %26, 0, !dbg !213
  br i1 %cmp54118, label %for.body56.lr.ph, label %for.end80, !dbg !213

for.body56.lr.ph:                                 ; preds = %for.cond52.preheader
  %statetype58 = getelementptr inbounds %struct.p7trace_s* %tr, i64 0, i32 1, !dbg !215
  %27 = load i8** %statetype58, align 8, !dbg !215, !tbaa !204
  %pos = getelementptr inbounds %struct.p7trace_s* %tr, i64 0, i32 3, !dbg !216
  br label %for.body56, !dbg !213

for.body42:                                       ; preds = %for.body42.lr.ph, %for.body42
  %indvars.iv129 = phi i64 [ %21, %for.body42.lr.ph ], [ %indvars.iv.next130, %for.body42 ]
  %28 = trunc i64 %indvars.iv129 to i32, !dbg !210
  %call46 = call i32 @DegenerateSymbolScore(float* %arraydecay, float* %arraydecay45, i32 %28) #6, !dbg !210
  %arrayidx48 = getelementptr inbounds [24 x i32]* %sc, i64 0, i64 %indvars.iv129, !dbg !210
  store i32 %call46, i32* %arrayidx48, align 4, !dbg !210, !tbaa !162
  %indvars.iv.next130 = add i64 %indvars.iv129, 1, !dbg !208
  %29 = load i32* @Alphabet_iupac, align 4, !dbg !208, !tbaa !162
  %30 = trunc i64 %indvars.iv.next130 to i32, !dbg !208
  %cmp40 = icmp slt i32 %30, %29, !dbg !208
  br i1 %cmp40, label %for.body42, label %for.cond52.preheader, !dbg !208

for.body56:                                       ; preds = %for.body56.lr.ph, %for.inc78
  %indvars.iv = phi i64 [ 0, %for.body56.lr.ph ], [ %indvars.iv.next, %for.inc78 ]
  %score.0120 = phi i32 [ 0, %for.body56.lr.ph ], [ %score.1, %for.inc78 ]
  %arrayidx59 = getelementptr inbounds i8* %27, i64 %indvars.iv, !dbg !215
  %31 = load i8* %arrayidx59, align 1, !dbg !215, !tbaa !160
  switch i8 %31, label %for.inc78 [
    i8 1, label %if.then69
    i8 3, label %if.then69
  ], !dbg !215

if.then69:                                        ; preds = %for.body56, %for.body56
  %32 = load i32** %pos, align 8, !dbg !216, !tbaa !204
  %arrayidx71 = getelementptr inbounds i32* %32, i64 %indvars.iv, !dbg !216
  %33 = load i32* %arrayidx71, align 4, !dbg !216, !tbaa !162
  %idxprom72 = sext i32 %33 to i64, !dbg !216
  %arrayidx73 = getelementptr inbounds i8* %dsq, i64 %idxprom72, !dbg !216
  %34 = load i8* %arrayidx73, align 1, !dbg !216, !tbaa !160
  %idxprom75 = sext i8 %34 to i64, !dbg !216
  %arrayidx76 = getelementptr inbounds [24 x i32]* %sc, i64 0, i64 %idxprom75, !dbg !216
  %35 = load i32* %arrayidx76, align 4, !dbg !216, !tbaa !162
  %add = add nsw i32 %35, %score.0120, !dbg !216
  call void @llvm.dbg.value(metadata !{i32 %add}, i64 0, metadata !119), !dbg !216
  br label %for.inc78, !dbg !216

for.inc78:                                        ; preds = %for.body56, %if.then69
  %score.1 = phi i32 [ %add, %if.then69 ], [ %score.0120, %for.body56 ]
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !213
  %36 = trunc i64 %indvars.iv.next to i32, !dbg !213
  %cmp54 = icmp slt i32 %36, %26, !dbg !213
  br i1 %cmp54, label %for.body56, label %for.end80, !dbg !213

for.end80:                                        ; preds = %for.inc78, %for.cond52.preheader
  %score.0.lcssa = phi i32 [ 0, %for.cond52.preheader ], [ %score.1, %for.inc78 ]
  %conv81 = sitofp i32 %score.0.lcssa to double, !dbg !217
  %sub = fadd double %conv81, -8.000000e+03, !dbg !217
  %conv82 = fptosi double %sub to i32, !dbg !217
  call void @llvm.dbg.value(metadata !{i32 %conv82}, i64 0, metadata !119), !dbg !217
  %call83 = call i32 @ILogsum(i32 0, i32 %conv82) #6, !dbg !218
  %call84 = call float @Scorify(i32 %call83) #6, !dbg !218
  br label %cleanup, !dbg !218

cleanup:                                          ; preds = %entry, %for.end80
  %retval.0 = phi float [ %call84, %for.end80 ], [ 0.000000e+00, %entry ]
  call void @llvm.lifetime.end(i64 96, i8* %1) #4, !dbg !219
  call void @llvm.lifetime.end(i64 80, i8* %0) #4, !dbg !219
  ret float %retval.0, !dbg !219
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #4

; Function Attrs: optsize
declare void @FSet(float*, i32, float) #2

; Function Attrs: optsize
declare void @FAdd(float*, float*, i32) #2

; Function Attrs: optsize
declare void @FNorm(float*, i32) #2

; Function Attrs: optsize
declare i32 @Prob2Score(float, float) #2

; Function Attrs: optsize
declare i32 @DegenerateSymbolScore(float*, float*, i32) #2

; Function Attrs: optsize
declare float @Scorify(i32) #2

; Function Attrs: optsize
declare i32 @ILogsum(i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #4

; Function Attrs: nounwind optsize readnone uwtable
define float @SantaCruzCorrection(%struct.plan7_s* nocapture %hmm, %struct.p7trace_s* nocapture %tr, i8* nocapture %dsq) #5 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.plan7_s* %hmm}, i64 0, metadata !122), !dbg !220
  tail call void @llvm.dbg.value(metadata !{%struct.p7trace_s* %tr}, i64 0, metadata !123), !dbg !220
  tail call void @llvm.dbg.value(metadata !{i8* %dsq}, i64 0, metadata !124), !dbg !220
  ret float 0.000000e+00, !dbg !221
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #1

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #4

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind optsize readnone uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind optsize }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !125, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/masks.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/456.hmmer/src/masks.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4, metadata !34, metadata !120}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"XNU", metadata !"XNU", metadata !"", i32 84, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*, i32)* @XNU, null, null, metadata !11, i32 85} ; [ DW_TAG_subprogram ] [line 84] [def] [scope 85] [XNU]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/masks.c]
!6 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8, metadata !9, metadata !8}
!8 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!9 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !10} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from char]
!10 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!11 = metadata !{metadata !12, metadata !13, metadata !14, metadata !15, metadata !16, metadata !17, metadata !18, metadata !19, metadata !20, metadata !21, metadata !22, metadata !23, metadata !25, metadata !26, metadata !27, metadata !28, metadata !30, metadata !31, metadata !32, metadata !33}
!12 = metadata !{i32 786689, metadata !4, metadata !"dsq", metadata !5, i32 16777300, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dsq] [line 84]
!13 = metadata !{i32 786689, metadata !4, metadata !"len", metadata !5, i32 33554516, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [len] [line 84]
!14 = metadata !{i32 786688, metadata !4, metadata !"i", metadata !5, i32 86, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 86]
!15 = metadata !{i32 786688, metadata !4, metadata !"k", metadata !5, i32 86, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [k] [line 86]
!16 = metadata !{i32 786688, metadata !4, metadata !"off", metadata !5, i32 86, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [off] [line 86]
!17 = metadata !{i32 786688, metadata !4, metadata !"sum", metadata !5, i32 86, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sum] [line 86]
!18 = metadata !{i32 786688, metadata !4, metadata !"beg", metadata !5, i32 86, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [beg] [line 86]
!19 = metadata !{i32 786688, metadata !4, metadata !"end", metadata !5, i32 86, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [end] [line 86]
!20 = metadata !{i32 786688, metadata !4, metadata !"top", metadata !5, i32 86, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [top] [line 86]
!21 = metadata !{i32 786688, metadata !4, metadata !"topcut", metadata !5, i32 87, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [topcut] [line 87]
!22 = metadata !{i32 786688, metadata !4, metadata !"fallcut", metadata !5, i32 87, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [fallcut] [line 87]
!23 = metadata !{i32 786688, metadata !4, metadata !"s0", metadata !5, i32 88, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [s0] [line 88]
!24 = metadata !{i32 786468, null, null, metadata !"double", i32 0, i64 64, i64 64, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [double] [line 0, size 64, align 64, offset 0, enc DW_ATE_float]
!25 = metadata !{i32 786688, metadata !4, metadata !"noff", metadata !5, i32 89, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [noff] [line 89]
!26 = metadata !{i32 786688, metadata !4, metadata !"mcut", metadata !5, i32 90, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [mcut] [line 90]
!27 = metadata !{i32 786688, metadata !4, metadata !"pcut", metadata !5, i32 91, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [pcut] [line 91]
!28 = metadata !{i32 786688, metadata !4, metadata !"hit", metadata !5, i32 92, metadata !29, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [hit] [line 92]
!29 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !8} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from int]
!30 = metadata !{i32 786688, metadata !4, metadata !"lambda", metadata !5, i32 93, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [lambda] [line 93]
!31 = metadata !{i32 786688, metadata !4, metadata !"K", metadata !5, i32 94, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [K] [line 94]
!32 = metadata !{i32 786688, metadata !4, metadata !"H", metadata !5, i32 95, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [H] [line 95]
!33 = metadata !{i32 786688, metadata !4, metadata !"xnum", metadata !5, i32 96, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [xnum] [line 96]
!34 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"TraceScoreCorrection", metadata !"TraceScoreCorrection", metadata !"", i32 168, metadata !35, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, float (%struct.plan7_s*, %struct.p7trace_s*, i8*)* @TraceScoreCorrection, null, null, metadata !108, i32 169} ; [ DW_TAG_subprogram ] [line 168] [def] [scope 169] [TraceScoreCorrection]
!35 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !36, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!36 = metadata !{metadata !37, metadata !38, metadata !101, metadata !9}
!37 = metadata !{i32 786468, null, null, metadata !"float", i32 0, i64 32, i64 32, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [float] [line 0, size 32, align 32, offset 0, enc DW_ATE_float]
!38 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !39} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from plan7_s]
!39 = metadata !{i32 786451, metadata !40, null, metadata !"plan7_s", i32 101, i64 3712, i64 64, i32 0, i32 0, null, metadata !41, i32 0, null, null} ; [ DW_TAG_structure_type ] [plan7_s] [line 101, size 3712, align 64, offset 0] [from ]
!40 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/456.hmmer/src/structs.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!41 = metadata !{metadata !42, metadata !43, metadata !44, metadata !45, metadata !46, metadata !47, metadata !48, metadata !49, metadata !50, metadata !51, metadata !52, metadata !53, metadata !54, metadata !55, metadata !56, metadata !57, metadata !58, metadata !59, metadata !60, metadata !61, metadata !62, metadata !63, metadata !66, metadata !67, metadata !68, metadata !69, metadata !74, metadata !75, metadata !76, metadata !80, metadata !81, metadata !83, metadata !84, metadata !85, metadata !87, metadata !88, metadata !89, metadata !90, metadata !91, metadata !92, metadata !93, metadata !94, metadata !95, metadata !96, metadata !97, metadata !98, metadata !99, metadata !100}
!42 = metadata !{i32 786445, metadata !40, metadata !39, metadata !"name", i32 113, i64 64, i64 64, i64 0, i32 0, metadata !9} ; [ DW_TAG_member ] [name] [line 113, size 64, align 64, offset 0] [from ]
!43 = metadata !{i32 786445, metadata !40, metadata !39, metadata !"acc", i32 114, i64 64, i64 64, i64 64, i32 0, metadata !9} ; [ DW_TAG_member ] [acc] [line 114, size 64, align 64, offset 64] [from ]
!44 = metadata !{i32 786445, metadata !40, metadata !39, metadata !"desc", i32 115, i64 64, i64 64, i64 128, i32 0, metadata !9} ; [ DW_TAG_member ] [desc] [line 115, size 64, align 64, offset 128] [from ]
!45 = metadata !{i32 786445, metadata !40, metadata !39, metadata !"rf", i32 116, i64 64, i64 64, i64 192, i32 0, metadata !9} ; [ DW_TAG_member ] [rf] [line 116, size 64, align 64, offset 192] [from ]
!46 = metadata !{i32 786445, metadata !40, metadata !39, metadata !"cs", i32 117, i64 64, i64 64, i64 256, i32 0, metadata !9} ; [ DW_TAG_member ] [cs] [line 117, size 64, align 64, offset 256] [from ]
!47 = metadata !{i32 786445, metadata !40, metadata !39, metadata !"ca", i32 118, i64 64, i64 64, i64 320, i32 0, metadata !9} ; [ DW_TAG_member ] [ca] [line 118, size 64, align 64, offset 320] [from ]
!48 = metadata !{i32 786445, metadata !40, metadata !39, metadata !"comlog", i32 119, i64 64, i64 64, i64 384, i32 0, metadata !9} ; [ DW_TAG_member ] [comlog] [line 119, size 64, align 64, offset 384] [from ]
!49 = metadata !{i32 786445, metadata !40, metadata !39, metadata !"nseq", i32 120, i64 32, i64 32, i64 448, i32 0, metadata !8} ; [ DW_TAG_member ] [nseq] [line 120, size 32, align 32, offset 448] [from int]
!50 = metadata !{i32 786445, metadata !40, metadata !39, metadata !"ctime", i32 121, i64 64, i64 64, i64 512, i32 0, metadata !9} ; [ DW_TAG_member ] [ctime] [line 121, size 64, align 64, offset 512] [from ]
!51 = metadata !{i32 786445, metadata !40, metadata !39, metadata !"map", i32 122, i64 64, i64 64, i64 576, i32 0, metadata !29} ; [ DW_TAG_member ] [map] [line 122, size 64, align 64, offset 576] [from ]
!52 = metadata !{i32 786445, metadata !40, metadata !39, metadata !"checksum", i32 123, i64 32, i64 32, i64 640, i32 0, metadata !8} ; [ DW_TAG_member ] [checksum] [line 123, size 32, align 32, offset 640] [from int]
!53 = metadata !{i32 786445, metadata !40, metadata !39, metadata !"tpri", i32 134, i64 64, i64 64, i64 704, i32 0, metadata !29} ; [ DW_TAG_member ] [tpri] [line 134, size 64, align 64, offset 704] [from ]
!54 = metadata !{i32 786445, metadata !40, metadata !39, metadata !"mpri", i32 135, i64 64, i64 64, i64 768, i32 0, metadata !29} ; [ DW_TAG_member ] [mpri] [line 135, size 64, align 64, offset 768] [from ]
!55 = metadata !{i32 786445, metadata !40, metadata !39, metadata !"ipri", i32 136, i64 64, i64 64, i64 832, i32 0, metadata !29} ; [ DW_TAG_member ] [ipri] [line 136, size 64, align 64, offset 832] [from ]
!56 = metadata !{i32 786445, metadata !40, metadata !39, metadata !"ga1", i32 144, i64 32, i64 32, i64 896, i32 0, metadata !37} ; [ DW_TAG_member ] [ga1] [line 144, size 32, align 32, offset 896] [from float]
!57 = metadata !{i32 786445, metadata !40, metadata !39, metadata !"ga2", i32 144, i64 32, i64 32, i64 928, i32 0, metadata !37} ; [ DW_TAG_member ] [ga2] [line 144, size 32, align 32, offset 928] [from float]
!58 = metadata !{i32 786445, metadata !40, metadata !39, metadata !"tc1", i32 145, i64 32, i64 32, i64 960, i32 0, metadata !37} ; [ DW_TAG_member ] [tc1] [line 145, size 32, align 32, offset 960] [from float]
!59 = metadata !{i32 786445, metadata !40, metadata !39, metadata !"tc2", i32 145, i64 32, i64 32, i64 992, i32 0, metadata !37} ; [ DW_TAG_member ] [tc2] [line 145, size 32, align 32, offset 992] [from float]
!60 = metadata !{i32 786445, metadata !40, metadata !39, metadata !"nc1", i32 146, i64 32, i64 32, i64 1024, i32 0, metadata !37} ; [ DW_TAG_member ] [nc1] [line 146, size 32, align 32, offset 1024] [from float]
!61 = metadata !{i32 786445, metadata !40, metadata !39, metadata !"nc2", i32 146, i64 32, i64 32, i64 1056, i32 0, metadata !37} ; [ DW_TAG_member ] [nc2] [line 146, size 32, align 32, offset 1056] [from float]
!62 = metadata !{i32 786445, metadata !40, metadata !39, metadata !"M", i32 155, i64 32, i64 32, i64 1088, i32 0, metadata !8} ; [ DW_TAG_member ] [M] [line 155, size 32, align 32, offset 1088] [from int]
!63 = metadata !{i32 786445, metadata !40, metadata !39, metadata !"t", i32 156, i64 64, i64 64, i64 1152, i32 0, metadata !64} ; [ DW_TAG_member ] [t] [line 156, size 64, align 64, offset 1152] [from ]
!64 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !65} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!65 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !37} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from float]
!66 = metadata !{i32 786445, metadata !40, metadata !39, metadata !"mat", i32 157, i64 64, i64 64, i64 1216, i32 0, metadata !64} ; [ DW_TAG_member ] [mat] [line 157, size 64, align 64, offset 1216] [from ]
!67 = metadata !{i32 786445, metadata !40, metadata !39, metadata !"ins", i32 158, i64 64, i64 64, i64 1280, i32 0, metadata !64} ; [ DW_TAG_member ] [ins] [line 158, size 64, align 64, offset 1280] [from ]
!68 = metadata !{i32 786445, metadata !40, metadata !39, metadata !"tbd1", i32 159, i64 32, i64 32, i64 1344, i32 0, metadata !37} ; [ DW_TAG_member ] [tbd1] [line 159, size 32, align 32, offset 1344] [from float]
!69 = metadata !{i32 786445, metadata !40, metadata !39, metadata !"xt", i32 168, i64 256, i64 32, i64 1376, i32 0, metadata !70} ; [ DW_TAG_member ] [xt] [line 168, size 256, align 32, offset 1376] [from ]
!70 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 256, i64 32, i32 0, i32 0, metadata !37, metadata !71, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 256, align 32, offset 0] [from float]
!71 = metadata !{metadata !72, metadata !73}
!72 = metadata !{i32 786465, i64 0, i64 4}        ; [ DW_TAG_subrange_type ] [0, 3]
!73 = metadata !{i32 786465, i64 0, i64 2}        ; [ DW_TAG_subrange_type ] [0, 1]
!74 = metadata !{i32 786445, metadata !40, metadata !39, metadata !"begin", i32 169, i64 64, i64 64, i64 1664, i32 0, metadata !65} ; [ DW_TAG_member ] [begin] [line 169, size 64, align 64, offset 1664] [from ]
!75 = metadata !{i32 786445, metadata !40, metadata !39, metadata !"end", i32 170, i64 64, i64 64, i64 1728, i32 0, metadata !65} ; [ DW_TAG_member ] [end] [line 170, size 64, align 64, offset 1728] [from ]
!76 = metadata !{i32 786445, metadata !40, metadata !39, metadata !"null", i32 174, i64 640, i64 32, i64 1792, i32 0, metadata !77} ; [ DW_TAG_member ] [null] [line 174, size 640, align 32, offset 1792] [from ]
!77 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 640, i64 32, i32 0, i32 0, metadata !37, metadata !78, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 640, align 32, offset 0] [from float]
!78 = metadata !{metadata !79}
!79 = metadata !{i32 786465, i64 0, i64 20}       ; [ DW_TAG_subrange_type ] [0, 19]
!80 = metadata !{i32 786445, metadata !40, metadata !39, metadata !"p1", i32 175, i64 32, i64 32, i64 2432, i32 0, metadata !37} ; [ DW_TAG_member ] [p1] [line 175, size 32, align 32, offset 2432] [from float]
!81 = metadata !{i32 786445, metadata !40, metadata !39, metadata !"tsc", i32 197, i64 64, i64 64, i64 2496, i32 0, metadata !82} ; [ DW_TAG_member ] [tsc] [line 197, size 64, align 64, offset 2496] [from ]
!82 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !29} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!83 = metadata !{i32 786445, metadata !40, metadata !39, metadata !"msc", i32 198, i64 64, i64 64, i64 2560, i32 0, metadata !82} ; [ DW_TAG_member ] [msc] [line 198, size 64, align 64, offset 2560] [from ]
!84 = metadata !{i32 786445, metadata !40, metadata !39, metadata !"isc", i32 199, i64 64, i64 64, i64 2624, i32 0, metadata !82} ; [ DW_TAG_member ] [isc] [line 199, size 64, align 64, offset 2624] [from ]
!85 = metadata !{i32 786445, metadata !40, metadata !39, metadata !"xsc", i32 200, i64 256, i64 32, i64 2688, i32 0, metadata !86} ; [ DW_TAG_member ] [xsc] [line 200, size 256, align 32, offset 2688] [from ]
!86 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 256, i64 32, i32 0, i32 0, metadata !8, metadata !71, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 256, align 32, offset 0] [from int]
!87 = metadata !{i32 786445, metadata !40, metadata !39, metadata !"bsc", i32 201, i64 64, i64 64, i64 2944, i32 0, metadata !29} ; [ DW_TAG_member ] [bsc] [line 201, size 64, align 64, offset 2944] [from ]
!88 = metadata !{i32 786445, metadata !40, metadata !39, metadata !"esc", i32 202, i64 64, i64 64, i64 3008, i32 0, metadata !29} ; [ DW_TAG_member ] [esc] [line 202, size 64, align 64, offset 3008] [from ]
!89 = metadata !{i32 786445, metadata !40, metadata !39, metadata !"tsc_mem", i32 203, i64 64, i64 64, i64 3072, i32 0, metadata !29} ; [ DW_TAG_member ] [tsc_mem] [line 203, size 64, align 64, offset 3072] [from ]
!90 = metadata !{i32 786445, metadata !40, metadata !39, metadata !"msc_mem", i32 203, i64 64, i64 64, i64 3136, i32 0, metadata !29} ; [ DW_TAG_member ] [msc_mem] [line 203, size 64, align 64, offset 3136] [from ]
!91 = metadata !{i32 786445, metadata !40, metadata !39, metadata !"isc_mem", i32 203, i64 64, i64 64, i64 3200, i32 0, metadata !29} ; [ DW_TAG_member ] [isc_mem] [line 203, size 64, align 64, offset 3200] [from ]
!92 = metadata !{i32 786445, metadata !40, metadata !39, metadata !"bsc_mem", i32 203, i64 64, i64 64, i64 3264, i32 0, metadata !29} ; [ DW_TAG_member ] [bsc_mem] [line 203, size 64, align 64, offset 3264] [from ]
!93 = metadata !{i32 786445, metadata !40, metadata !39, metadata !"esc_mem", i32 203, i64 64, i64 64, i64 3328, i32 0, metadata !29} ; [ DW_TAG_member ] [esc_mem] [line 203, size 64, align 64, offset 3328] [from ]
!94 = metadata !{i32 786445, metadata !40, metadata !39, metadata !"dnam", i32 214, i64 64, i64 64, i64 3392, i32 0, metadata !82} ; [ DW_TAG_member ] [dnam] [line 214, size 64, align 64, offset 3392] [from ]
!95 = metadata !{i32 786445, metadata !40, metadata !39, metadata !"dnai", i32 215, i64 64, i64 64, i64 3456, i32 0, metadata !82} ; [ DW_TAG_member ] [dnai] [line 215, size 64, align 64, offset 3456] [from ]
!96 = metadata !{i32 786445, metadata !40, metadata !39, metadata !"dna2", i32 216, i64 32, i64 32, i64 3520, i32 0, metadata !8} ; [ DW_TAG_member ] [dna2] [line 216, size 32, align 32, offset 3520] [from int]
!97 = metadata !{i32 786445, metadata !40, metadata !39, metadata !"dna4", i32 217, i64 32, i64 32, i64 3552, i32 0, metadata !8} ; [ DW_TAG_member ] [dna4] [line 217, size 32, align 32, offset 3552] [from int]
!98 = metadata !{i32 786445, metadata !40, metadata !39, metadata !"mu", i32 222, i64 32, i64 32, i64 3584, i32 0, metadata !37} ; [ DW_TAG_member ] [mu] [line 222, size 32, align 32, offset 3584] [from float]
!99 = metadata !{i32 786445, metadata !40, metadata !39, metadata !"lambda", i32 223, i64 32, i64 32, i64 3616, i32 0, metadata !37} ; [ DW_TAG_member ] [lambda] [line 223, size 32, align 32, offset 3616] [from float]
!100 = metadata !{i32 786445, metadata !40, metadata !39, metadata !"flags", i32 225, i64 32, i64 32, i64 3648, i32 0, metadata !8} ; [ DW_TAG_member ] [flags] [line 225, size 32, align 32, offset 3648] [from int]
!101 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !102} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from p7trace_s]
!102 = metadata !{i32 786451, metadata !40, null, metadata !"p7trace_s", i32 374, i64 256, i64 64, i32 0, i32 0, null, metadata !103, i32 0, null, null} ; [ DW_TAG_structure_type ] [p7trace_s] [line 374, size 256, align 64, offset 0] [from ]
!103 = metadata !{metadata !104, metadata !105, metadata !106, metadata !107}
!104 = metadata !{i32 786445, metadata !40, metadata !102, metadata !"tlen", i32 375, i64 32, i64 32, i64 0, i32 0, metadata !8} ; [ DW_TAG_member ] [tlen] [line 375, size 32, align 32, offset 0] [from int]
!105 = metadata !{i32 786445, metadata !40, metadata !102, metadata !"statetype", i32 376, i64 64, i64 64, i64 64, i32 0, metadata !9} ; [ DW_TAG_member ] [statetype] [line 376, size 64, align 64, offset 64] [from ]
!106 = metadata !{i32 786445, metadata !40, metadata !102, metadata !"nodeidx", i32 377, i64 64, i64 64, i64 128, i32 0, metadata !29} ; [ DW_TAG_member ] [nodeidx] [line 377, size 64, align 64, offset 128] [from ]
!107 = metadata !{i32 786445, metadata !40, metadata !102, metadata !"pos", i32 378, i64 64, i64 64, i64 192, i32 0, metadata !29} ; [ DW_TAG_member ] [pos] [line 378, size 64, align 64, offset 192] [from ]
!108 = metadata !{metadata !109, metadata !110, metadata !111, metadata !112, metadata !113, metadata !117, metadata !118, metadata !119}
!109 = metadata !{i32 786689, metadata !34, metadata !"hmm", metadata !5, i32 16777384, metadata !38, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [hmm] [line 168]
!110 = metadata !{i32 786689, metadata !34, metadata !"tr", metadata !5, i32 33554600, metadata !101, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [tr] [line 168]
!111 = metadata !{i32 786689, metadata !34, metadata !"dsq", metadata !5, i32 50331816, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dsq] [line 168]
!112 = metadata !{i32 786688, metadata !34, metadata !"p", metadata !5, i32 170, metadata !77, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [p] [line 170]
!113 = metadata !{i32 786688, metadata !34, metadata !"sc", metadata !5, i32 171, metadata !114, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sc] [line 171]
!114 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 768, i64 32, i32 0, i32 0, metadata !8, metadata !115, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 768, align 32, offset 0] [from int]
!115 = metadata !{metadata !116}
!116 = metadata !{i32 786465, i64 0, i64 24}      ; [ DW_TAG_subrange_type ] [0, 23]
!117 = metadata !{i32 786688, metadata !34, metadata !"x", metadata !5, i32 172, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [x] [line 172]
!118 = metadata !{i32 786688, metadata !34, metadata !"tpos", metadata !5, i32 173, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [tpos] [line 173]
!119 = metadata !{i32 786688, metadata !34, metadata !"score", metadata !5, i32 174, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [score] [line 174]
!120 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"SantaCruzCorrection", metadata !"SantaCruzCorrection", metadata !"", i32 366, metadata !35, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, float (%struct.plan7_s*, %struct.p7trace_s*, i8*)* @SantaCruzCorrection, null, null, metadata !121, i32 367} ; [ DW_TAG_subprogram ] [line 366] [def] [scope 367] [SantaCruzCorrection]
!121 = metadata !{metadata !122, metadata !123, metadata !124}
!122 = metadata !{i32 786689, metadata !120, metadata !"hmm", metadata !5, i32 16777582, metadata !38, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [hmm] [line 366]
!123 = metadata !{i32 786689, metadata !120, metadata !"tr", metadata !5, i32 33554798, metadata !101, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [tr] [line 366]
!124 = metadata !{i32 786689, metadata !120, metadata !"dsq", metadata !5, i32 50332014, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dsq] [line 366]
!125 = metadata !{metadata !126}
!126 = metadata !{i32 786484, i32 0, null, metadata !"xpam120", metadata !"xpam120", metadata !"", metadata !5, i32 43, metadata !127, i32 1, i32 1, [23 x [23 x i32]]* @xpam120, null} ; [ DW_TAG_variable ] [xpam120] [line 43] [local] [def]
!127 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 16928, i64 32, i32 0, i32 0, metadata !8, metadata !128, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 16928, align 32, offset 0] [from int]
!128 = metadata !{metadata !129, metadata !129}
!129 = metadata !{i32 786465, i64 0, i64 23}      ; [ DW_TAG_subrange_type ] [0, 22]
!130 = metadata !{i32 84, i32 0, metadata !4, null}
!131 = metadata !{i32 4}
!132 = metadata !{i32 89, i32 0, metadata !4, null}
!133 = metadata !{i32 1}
!134 = metadata !{i32 90, i32 0, metadata !4, null}
!135 = metadata !{double 1.000000e-02}
!136 = metadata !{i32 91, i32 0, metadata !4, null}
!137 = metadata !{double 3.465740e-01}
!138 = metadata !{i32 93, i32 0, metadata !4, null}
!139 = metadata !{double 2.000000e-01}
!140 = metadata !{i32 94, i32 0, metadata !4, null}
!141 = metadata !{double 6.640000e-01}
!142 = metadata !{i32 95, i32 0, metadata !4, null}
!143 = metadata !{i32 96, i32 0, metadata !4, null}
!144 = metadata !{i32 98, i32 0, metadata !4, null}
!145 = metadata !{i32 100, i32 0, metadata !4, null}
!146 = metadata !{i32 101, i32 0, metadata !147, null}
!147 = metadata !{i32 786443, metadata !1, metadata !4, i32 101, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/masks.c]
!148 = metadata !{i32 146, i32 0, metadata !149, null}
!149 = metadata !{i32 786443, metadata !1, metadata !4, i32 146, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/masks.c]
!150 = metadata !{i32 114, i32 0, metadata !151, null}
!151 = metadata !{i32 786443, metadata !1, metadata !152, i32 113, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/masks.c]
!152 = metadata !{i32 786443, metadata !1, metadata !4, i32 113, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/masks.c]
!153 = metadata !{i32 115, i32 0, metadata !151, null}
!154 = metadata !{i32 116, i32 0, metadata !151, null}
!155 = metadata !{i32 113, i32 0, metadata !152, null}
!156 = metadata !{i32 118, i32 0, metadata !157, null}
!157 = metadata !{i32 786443, metadata !1, metadata !151, i32 118, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/masks.c]
!158 = metadata !{i32 119, i32 0, metadata !159, null}
!159 = metadata !{i32 786443, metadata !1, metadata !157, i32 118, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/masks.c]
!160 = metadata !{metadata !"omnipotent char", metadata !161}
!161 = metadata !{metadata !"Simple C/C++ TBAA"}
!162 = metadata !{metadata !"int", metadata !160}
!163 = metadata !{i32 120, i32 0, metadata !159, null}
!164 = metadata !{i32 121, i32 0, metadata !165, null}
!165 = metadata !{i32 786443, metadata !1, metadata !159, i32 120, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/masks.c]
!166 = metadata !{i32 undef}
!167 = metadata !{i32 122, i32 0, metadata !165, null}
!168 = metadata !{i32 124, i32 0, metadata !159, null}
!169 = metadata !{i32 125, i32 0, metadata !170, null}
!170 = metadata !{i32 786443, metadata !1, metadata !171, i32 125, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/masks.c]
!171 = metadata !{i32 786443, metadata !1, metadata !159, i32 124, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/masks.c]
!172 = metadata !{i32 126, i32 0, metadata !170, null}
!173 = metadata !{i32 127, i32 0, metadata !171, null}
!174 = metadata !{i32 128, i32 0, metadata !171, null}
!175 = metadata !{i32 129, i32 0, metadata !171, null}
!176 = metadata !{i32 130, i32 0, metadata !177, null}
!177 = metadata !{i32 786443, metadata !1, metadata !159, i32 129, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/masks.c]
!178 = metadata !{i32 131, i32 0, metadata !177, null}
!179 = metadata !{i32 129, i32 0, metadata !159, null}
!180 = metadata !{i32 133, i32 0, metadata !159, null}
!181 = metadata !{i32 135, i32 0, metadata !182, null}
!182 = metadata !{i32 786443, metadata !1, metadata !159, i32 133, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/masks.c]
!183 = metadata !{i32 139, i32 0, metadata !184, null}
!184 = metadata !{i32 786443, metadata !1, metadata !185, i32 139, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/masks.c]
!185 = metadata !{i32 786443, metadata !1, metadata !151, i32 138, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/masks.c]
!186 = metadata !{i32 138, i32 0, metadata !151, null}
!187 = metadata !{i32 140, i32 0, metadata !184, null}
!188 = metadata !{i32 147, i32 0, metadata !149, null}
!189 = metadata !{i32 147, i32 0, metadata !190, null}
!190 = metadata !{i32 786443, metadata !1, metadata !149, i32 147, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/masks.c]
!191 = metadata !{i32 149, i32 0, metadata !4, null}
!192 = metadata !{i32 150, i32 0, metadata !4, null}
!193 = metadata !{i32 151, i32 0, metadata !4, null}
!194 = metadata !{i32 168, i32 0, metadata !34, null}
!195 = metadata !{i32 170, i32 0, metadata !34, null}
!196 = metadata !{i32 171, i32 0, metadata !34, null}
!197 = metadata !{i32 178, i32 0, metadata !34, null}
!198 = metadata !{i32 183, i32 0, metadata !34, null}
!199 = metadata !{i32 184, i32 0, metadata !200, null}
!200 = metadata !{i32 786443, metadata !1, metadata !34, i32 184, i32 0, i32 14} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/masks.c]
!201 = metadata !{i32 185, i32 0, metadata !200, null}
!202 = metadata !{i32 186, i32 0, metadata !200, null}
!203 = metadata !{i32 188, i32 0, metadata !200, null}
!204 = metadata !{metadata !"any pointer", metadata !160}
!205 = metadata !{i32 189, i32 0, metadata !34, null}
!206 = metadata !{i32 191, i32 0, metadata !207, null}
!207 = metadata !{i32 786443, metadata !1, metadata !34, i32 191, i32 0, i32 15} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/masks.c]
!208 = metadata !{i32 195, i32 0, metadata !209, null}
!209 = metadata !{i32 786443, metadata !1, metadata !34, i32 195, i32 0, i32 16} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/masks.c]
!210 = metadata !{i32 196, i32 0, metadata !209, null}
!211 = metadata !{i32 192, i32 0, metadata !207, null}
!212 = metadata !{metadata !"float", metadata !160}
!213 = metadata !{i32 202, i32 0, metadata !214, null}
!214 = metadata !{i32 786443, metadata !1, metadata !34, i32 202, i32 0, i32 17} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/masks.c]
!215 = metadata !{i32 203, i32 0, metadata !214, null}
!216 = metadata !{i32 204, i32 0, metadata !214, null}
!217 = metadata !{i32 210, i32 0, metadata !34, null}
!218 = metadata !{i32 214, i32 0, metadata !34, null}
!219 = metadata !{i32 215, i32 0, metadata !34, null}
!220 = metadata !{i32 366, i32 0, metadata !120, null}
!221 = metadata !{i32 368, i32 0, metadata !120, null}
