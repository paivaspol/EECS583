; ModuleID = '../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/ScheduleSorter.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [93 x i8] c"$Header: /cactus/Cactus/src/schedule/ScheduleSorter.c,v 1.8 2001/11/05 14:58:55 tradke Exp $\00", align 1

; Function Attrs: nounwind optsize readnone uwtable
define i8* @CCTKi_version_schedule_ScheduleSorter_c() #0 {
entry:
  ret i8* getelementptr inbounds ([93 x i8]* @.str, i64 0, i64 0), !dbg !82
}

; Function Attrs: nounwind optsize uwtable
define i32 @CCTKi_ScheduleSort(i32 %size, i8** nocapture %array, i32* nocapture %order) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %size}, i64 0, metadata !20), !dbg !83
  tail call void @llvm.dbg.value(metadata !{i8** %array}, i64 0, metadata !21), !dbg !83
  tail call void @llvm.dbg.value(metadata !{i32* %order}, i64 0, metadata !22), !dbg !83
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !26), !dbg !84
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !23), !dbg !85
  %sub = add nsw i32 %size, -1, !dbg !85
  %mul = mul nsw i32 %sub, %size, !dbg !85
  %div = sdiv i32 %mul, 2, !dbg !85
  %cmp105 = icmp sgt i32 %mul, 1, !dbg !85
  br i1 %cmp105, label %for.cond2.preheader.lr.ph, label %for.cond33.preheader, !dbg !85

for.cond2.preheader.lr.ph:                        ; preds = %entry
  %cmp3101 = icmp sgt i32 %size, 0, !dbg !87
  br i1 %cmp3101, label %for.body4.lr.ph, label %for.end57

for.body4.lr.ph:                                  ; preds = %ScheduleSwap.exit, %for.cond2.preheader.lr.ph
  %iter.0106 = phi i32 [ %inc31, %ScheduleSwap.exit ], [ 0, %for.cond2.preheader.lr.ph ]
  br label %for.body4, !dbg !87

for.cond2.loopexit:                               ; preds = %for.cond5
  %indvars.iv.next116 = add i64 %indvars.iv115, 1, !dbg !87
  br i1 %cmp697, label %for.body4, label %for.cond33.preheader, !dbg !87

for.cond33.preheader:                             ; preds = %for.body4, %entry, %ScheduleSwap.exit, %for.cond2.loopexit
  %cmp3492 = icmp sgt i32 %size, 0, !dbg !90
  br i1 %cmp3492, label %for.body36, label %for.end57, !dbg !90

for.body4:                                        ; preds = %for.body4.lr.ph, %for.cond2.loopexit
  %indvars.iv122 = phi i64 [ 0, %for.body4.lr.ph ], [ %indvars.iv.next123, %for.cond2.loopexit ]
  %indvars.iv115 = phi i64 [ 1, %for.body4.lr.ph ], [ %indvars.iv.next116, %for.cond2.loopexit ]
  %row.0102 = phi i32 [ 0, %for.body4.lr.ph ], [ %add, %for.cond2.loopexit ]
  %indvars.iv.next123 = add i64 %indvars.iv122, 1, !dbg !87
  %add = add nsw i32 %row.0102, 1, !dbg !92
  tail call void @llvm.dbg.value(metadata !{i32 %add}, i64 0, metadata !25), !dbg !92
  %0 = trunc i64 %indvars.iv.next123 to i32, !dbg !92
  %cmp697 = icmp slt i32 %0, %size, !dbg !92
  br i1 %cmp697, label %for.body7.lr.ph, label %for.cond33.preheader, !dbg !92

for.body7.lr.ph:                                  ; preds = %for.body4
  %arrayidx = getelementptr inbounds i8** %array, i64 %indvars.iv122, !dbg !95
  %1 = load i8** %arrayidx, align 8, !dbg !95, !tbaa !97
  br label %for.body7, !dbg !92

for.cond5:                                        ; preds = %for.body7
  %cmp6 = icmp slt i32 %inc, %size, !dbg !92
  %indvars.iv.next118 = add i64 %indvars.iv117, 1, !dbg !92
  br i1 %cmp6, label %for.body7, label %for.cond2.loopexit, !dbg !92

for.body7:                                        ; preds = %for.body7.lr.ph, %for.cond5
  %indvars.iv117 = phi i64 [ %indvars.iv115, %for.body7.lr.ph ], [ %indvars.iv.next118, %for.cond5 ], !dbg !87
  %column.298 = phi i32 [ %add, %for.body7.lr.ph ], [ %inc, %for.cond5 ]
  %arrayidx9 = getelementptr inbounds i8* %1, i64 %indvars.iv117, !dbg !95
  %2 = load i8* %arrayidx9, align 1, !dbg !95, !tbaa !98
  %cmp10 = icmp sgt i8 %2, 0, !dbg !95
  %inc = add nsw i32 %column.298, 1, !dbg !92
  tail call void @llvm.dbg.value(metadata !{i32 %inc}, i64 0, metadata !25), !dbg !92
  br i1 %cmp10, label %for.body.i.preheader, label %for.cond5, !dbg !95

for.body.i.preheader:                             ; preds = %for.body7
  tail call void @llvm.dbg.value(metadata !{i32 %size}, i64 0, metadata !100), !dbg !102
  tail call void @llvm.dbg.value(metadata !{i8** %array}, i64 0, metadata !103), !dbg !102
  tail call void @llvm.dbg.value(metadata !{i32* %order}, i64 0, metadata !104), !dbg !102
  tail call void @llvm.dbg.value(metadata !{i32 %row.0102}, i64 0, metadata !105), !dbg !102
  tail call void @llvm.dbg.value(metadata !{i32 %column.298}, i64 0, metadata !106), !dbg !102
  %idxprom.i = sext i32 %row.0102 to i64, !dbg !107
  %arrayidx.i = getelementptr inbounds i8** %array, i64 %idxprom.i, !dbg !107
  %3 = load i8** %arrayidx.i, align 8, !dbg !107, !tbaa !97
  tail call void @llvm.dbg.value(metadata !{i8* %3}, i64 0, metadata !108), !dbg !107
  %idxprom4.i = sext i32 %column.298 to i64, !dbg !109
  %arrayidx5.i = getelementptr inbounds i8** %array, i64 %idxprom4.i, !dbg !109
  %4 = load i8** %arrayidx5.i, align 8, !dbg !109, !tbaa !97
  store i8* %4, i8** %arrayidx.i, align 8, !dbg !109, !tbaa !97
  store i8* %3, i8** %arrayidx5.i, align 8, !dbg !110, !tbaa !97
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !111), !dbg !112
  br label %for.body.i, !dbg !114

for.body.i:                                       ; preds = %for.body.i.preheader, %for.body.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %for.body.i ], [ 0, %for.body.i.preheader ]
  %arrayidx12.i = getelementptr inbounds i8** %array, i64 %indvars.iv.i, !dbg !114
  %5 = load i8** %arrayidx12.i, align 8, !dbg !114, !tbaa !97
  %arrayidx13.i = getelementptr inbounds i8* %5, i64 %idxprom4.i, !dbg !114
  %6 = load i8* %arrayidx13.i, align 1, !dbg !114, !tbaa !98
  tail call void @llvm.dbg.value(metadata !{i8 %6}, i64 0, metadata !116), !dbg !114
  %arrayidx17.i = getelementptr inbounds i8* %5, i64 %idxprom.i, !dbg !117
  %7 = load i8* %arrayidx17.i, align 1, !dbg !117, !tbaa !98
  store i8 %7, i8* %arrayidx13.i, align 1, !dbg !117, !tbaa !98
  %8 = load i8** %arrayidx12.i, align 8, !dbg !118, !tbaa !97
  %arrayidx25.i = getelementptr inbounds i8* %8, i64 %idxprom.i, !dbg !118
  store i8 %6, i8* %arrayidx25.i, align 1, !dbg !118, !tbaa !98
  %indvars.iv.next.i = add i64 %indvars.iv.i, 1, !dbg !112
  %lftr.wideiv124 = trunc i64 %indvars.iv.next.i to i32, !dbg !112
  %exitcond125 = icmp eq i32 %lftr.wideiv124, %size, !dbg !112
  br i1 %exitcond125, label %ScheduleSwap.exit, label %for.body.i, !dbg !112

ScheduleSwap.exit:                                ; preds = %for.body.i
  %arrayidx27.i = getelementptr inbounds i32* %order, i64 %idxprom4.i, !dbg !119
  %9 = load i32* %arrayidx27.i, align 4, !dbg !119, !tbaa !120
  tail call void @llvm.dbg.value(metadata !{i32 %9}, i64 0, metadata !121), !dbg !119
  %arrayidx29.i = getelementptr inbounds i32* %order, i64 %idxprom.i, !dbg !122
  %10 = load i32* %arrayidx29.i, align 4, !dbg !122, !tbaa !120
  store i32 %10, i32* %arrayidx27.i, align 4, !dbg !122, !tbaa !120
  store i32 %9, i32* %arrayidx29.i, align 4, !dbg !123, !tbaa !120
  %inc31 = add nsw i32 %iter.0106, 1, !dbg !85
  tail call void @llvm.dbg.value(metadata !{i32 %inc31}, i64 0, metadata !23), !dbg !85
  %cmp = icmp slt i32 %inc31, %div, !dbg !85
  br i1 %cmp, label %for.body4.lr.ph, label %for.cond33.preheader, !dbg !85

for.cond33.loopexit:                              ; preds = %for.body41, %for.body36
  %retval1.1.lcssa = phi i32 [ %retval1.094, %for.body36 ], [ %sub50.retval1.1, %for.body41 ]
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !90
  %exitcond113 = icmp eq i32 %11, %size, !dbg !90
  br i1 %exitcond113, label %for.end57, label %for.body36, !dbg !90

for.body36:                                       ; preds = %for.cond33.preheader, %for.cond33.loopexit
  %indvars.iv110 = phi i64 [ %indvars.iv.next111, %for.cond33.loopexit ], [ 0, %for.cond33.preheader ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.cond33.loopexit ], [ 1, %for.cond33.preheader ]
  %retval1.094 = phi i32 [ %retval1.1.lcssa, %for.cond33.loopexit ], [ 0, %for.cond33.preheader ]
  %indvars.iv.next111 = add i64 %indvars.iv110, 1, !dbg !90
  %11 = trunc i64 %indvars.iv.next111 to i32, !dbg !124
  %cmp3989 = icmp slt i32 %11, %size, !dbg !124
  br i1 %cmp3989, label %for.body41.lr.ph, label %for.cond33.loopexit, !dbg !124

for.body41.lr.ph:                                 ; preds = %for.body36
  %arrayidx44 = getelementptr inbounds i8** %array, i64 %indvars.iv110, !dbg !127
  %12 = load i8** %arrayidx44, align 8, !dbg !127, !tbaa !97
  br label %for.body41, !dbg !124

for.body41:                                       ; preds = %for.body41, %for.body41.lr.ph
  %indvars.iv107 = phi i64 [ %indvars.iv, %for.body41.lr.ph ], [ %indvars.iv.next108, %for.body41 ], !dbg !90
  %retval1.191 = phi i32 [ %retval1.094, %for.body41.lr.ph ], [ %sub50.retval1.1, %for.body41 ]
  %arrayidx45 = getelementptr inbounds i8* %12, i64 %indvars.iv107, !dbg !127
  %13 = load i8* %arrayidx45, align 1, !dbg !127, !tbaa !98
  %cmp47 = icmp sgt i8 %13, 0, !dbg !127
  %sub50 = sext i1 %cmp47 to i32, !dbg !127
  %sub50.retval1.1 = add nsw i32 %sub50, %retval1.191, !dbg !127
  %indvars.iv.next108 = add i64 %indvars.iv107, 1, !dbg !124
  %lftr.wideiv = trunc i64 %indvars.iv.next108 to i32, !dbg !124
  %exitcond = icmp eq i32 %lftr.wideiv, %size, !dbg !124
  br i1 %exitcond, label %for.cond33.loopexit, label %for.body41, !dbg !124

for.end57:                                        ; preds = %for.cond2.preheader.lr.ph, %for.cond33.loopexit, %for.cond33.preheader
  %retval1.0.lcssa = phi i32 [ 0, %for.cond33.preheader ], [ %retval1.1.lcssa, %for.cond33.loopexit ], [ 0, %for.cond2.preheader.lr.ph ]
  ret i32 %retval1.0.lcssa, !dbg !129
}

; Function Attrs: nounwind optsize uwtable
define i32 @CCTKi_ScheduleAddRow(i32 %size, i8** nocapture %array, i32* nocapture %order, i32 %item, i32* nocapture %thisorders) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %size}, i64 0, metadata !31), !dbg !130
  tail call void @llvm.dbg.value(metadata !{i8** %array}, i64 0, metadata !32), !dbg !131
  tail call void @llvm.dbg.value(metadata !{i32* %order}, i64 0, metadata !33), !dbg !132
  tail call void @llvm.dbg.value(metadata !{i32 %item}, i64 0, metadata !34), !dbg !133
  tail call void @llvm.dbg.value(metadata !{i32* %thisorders}, i64 0, metadata !35), !dbg !134
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !36), !dbg !135
  %idxprom = sext i32 %item to i64, !dbg !136
  %arrayidx = getelementptr inbounds i32* %order, i64 %idxprom, !dbg !136
  store i32 %item, i32* %arrayidx, align 4, !dbg !136, !tbaa !120
  tail call void @llvm.dbg.value(metadata !{i32 %item}, i64 0, metadata !37), !dbg !137
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !38), !dbg !138
  %cmp55 = icmp sgt i32 %size, 0, !dbg !138
  br i1 %cmp55, label %for.body.lr.ph, label %for.end, !dbg !138

for.body.lr.ph:                                   ; preds = %entry
  %arrayidx6 = getelementptr inbounds i8** %array, i64 %idxprom, !dbg !140
  br label %for.body, !dbg !138

for.body:                                         ; preds = %for.inc, %for.body.lr.ph
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.inc ]
  %retval1.056 = phi i32 [ 0, %for.body.lr.ph ], [ %retval1.2, %for.inc ]
  %arrayidx3 = getelementptr inbounds i32* %thisorders, i64 %indvars.iv, !dbg !143
  %0 = load i32* %arrayidx3, align 4, !dbg !143, !tbaa !120
  %tobool = icmp eq i32 %0, 0, !dbg !143
  br i1 %tobool, label %for.inc, label %if.then, !dbg !143

if.then:                                          ; preds = %for.body
  %1 = load i8** %arrayidx6, align 8, !dbg !140, !tbaa !97
  %arrayidx7 = getelementptr inbounds i8* %1, i64 %indvars.iv, !dbg !140
  %2 = load i8* %arrayidx7, align 1, !dbg !140, !tbaa !98
  %conv = sext i8 %2 to i32, !dbg !140
  %notlhs = icmp ne i8 %2, 0, !dbg !140
  %notrhs = icmp ne i32 %conv, %0, !dbg !140
  %not.or.cond = and i1 %notrhs, %notlhs, !dbg !140
  %dec = sext i1 %not.or.cond to i32, !dbg !140
  %retval1.1 = add nsw i32 %dec, %retval1.056, !dbg !140
  %conv21 = trunc i32 %0 to i8, !dbg !144
  store i8 %conv21, i8* %arrayidx7, align 1, !dbg !144, !tbaa !98
  %3 = load i32* %arrayidx3, align 4, !dbg !145, !tbaa !120
  %sub = sub nsw i32 0, %3, !dbg !145
  %conv28 = trunc i32 %sub to i8, !dbg !145
  %arrayidx31 = getelementptr inbounds i8** %array, i64 %indvars.iv, !dbg !145
  %4 = load i8** %arrayidx31, align 8, !dbg !145, !tbaa !97
  %arrayidx32 = getelementptr inbounds i8* %4, i64 %idxprom, !dbg !145
  store i8 %conv28, i8* %arrayidx32, align 1, !dbg !145, !tbaa !98
  br label %for.inc, !dbg !146

for.inc:                                          ; preds = %for.body, %if.then
  %retval1.2 = phi i32 [ %retval1.1, %if.then ], [ %retval1.056, %for.body ]
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !138
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !138
  %exitcond = icmp eq i32 %lftr.wideiv, %size, !dbg !138
  br i1 %exitcond, label %for.end, label %for.body, !dbg !138

for.end:                                          ; preds = %for.inc, %entry
  %retval1.0.lcssa = phi i32 [ 0, %entry ], [ %retval1.2, %for.inc ]
  ret i32 %retval1.0.lcssa, !dbg !147
}

; Function Attrs: nounwind optsize uwtable
define i8** @CCTKi_ScheduleCreateArray(i32 %size) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %size}, i64 0, metadata !43), !dbg !148
  %conv = sext i32 %size to i64, !dbg !149
  %mul = shl nsw i64 %conv, 3, !dbg !149
  %call = tail call noalias i8* @malloc(i64 %mul) #5, !dbg !149
  %0 = bitcast i8* %call to i8**, !dbg !149
  tail call void @llvm.dbg.value(metadata !{i8** %0}, i64 0, metadata !46), !dbg !149
  %cond = icmp eq i8* %call, null, !dbg !150
  br i1 %cond, label %if.end43, label %for.cond.preheader, !dbg !150

for.cond.preheader:                               ; preds = %entry
  %cmp79 = icmp sgt i32 %size, 0, !dbg !151
  br i1 %cmp79, label %for.body, label %if.end43, !dbg !151

for.cond:                                         ; preds = %for.body
  %inc = add nsw i32 %i.080, 1, !dbg !151
  %1 = trunc i64 %indvars.iv.next92 to i32, !dbg !151
  %cmp = icmp slt i32 %1, %size, !dbg !151
  br i1 %cmp, label %for.body, label %for.cond25.preheader, !dbg !151

for.body:                                         ; preds = %for.cond.preheader, %for.cond
  %indvars.iv91 = phi i64 [ %indvars.iv.next92, %for.cond ], [ 0, %for.cond.preheader ]
  %i.080 = phi i32 [ %inc, %for.cond ], [ 0, %for.cond.preheader ]
  %call4 = tail call noalias i8* @malloc(i64 %conv) #5, !dbg !154
  %arrayidx = getelementptr inbounds i8** %0, i64 %indvars.iv91, !dbg !154
  store i8* %call4, i8** %arrayidx, align 8, !dbg !154, !tbaa !97
  %tobool7 = icmp eq i8* %call4, null, !dbg !156
  %indvars.iv.next92 = add i64 %indvars.iv91, 1, !dbg !151
  tail call void @llvm.dbg.value(metadata !{i32 %inc}, i64 0, metadata !44), !dbg !151
  br i1 %tobool7, label %for.cond12.preheader, label %for.cond, !dbg !156

for.cond12.preheader:                             ; preds = %for.body
  %cmp1372 = icmp sgt i32 %i.080, 0, !dbg !157
  br i1 %cmp1372, label %for.body15, label %if.end22.thread, !dbg !157

for.body15:                                       ; preds = %for.cond12.preheader, %for.body15
  %indvars.iv81 = phi i64 [ %indvars.iv.next82, %for.body15 ], [ %indvars.iv91, %for.cond12.preheader ], !dbg !151
  %indvars.iv.next82 = add i64 %indvars.iv81, -1, !dbg !157
  %arrayidx17 = getelementptr inbounds i8** %0, i64 %indvars.iv.next82, !dbg !160
  %2 = load i8** %arrayidx17, align 8, !dbg !160, !tbaa !97
  tail call void @free(i8* %2) #5, !dbg !160
  %3 = trunc i64 %indvars.iv.next82 to i32, !dbg !157
  %cmp13 = icmp sgt i32 %3, 0, !dbg !157
  br i1 %cmp13, label %for.body15, label %if.end22.thread, !dbg !157

if.end22.thread:                                  ; preds = %for.body15, %for.cond12.preheader
  tail call void @free(i8* %call) #5, !dbg !162
  tail call void @llvm.dbg.value(metadata !163, i64 0, metadata !46), !dbg !164
  br label %if.end43, !dbg !165

for.cond25.preheader:                             ; preds = %for.cond
  br i1 %cmp79, label %for.body32.lr.ph, label %if.end43, !dbg !166

for.body32.lr.ph:                                 ; preds = %for.inc40, %for.cond25.preheader
  %indvars.iv85 = phi i64 [ %indvars.iv.next86, %for.inc40 ], [ 0, %for.cond25.preheader ]
  %arrayidx35 = getelementptr inbounds i8** %0, i64 %indvars.iv85, !dbg !169
  %.pre = load i8** %arrayidx35, align 8, !dbg !169, !tbaa !97
  br label %for.body32, !dbg !173

for.body32:                                       ; preds = %for.body32, %for.body32.lr.ph
  %indvars.iv83 = phi i64 [ 0, %for.body32.lr.ph ], [ %indvars.iv.next84, %for.body32 ]
  %arrayidx36 = getelementptr inbounds i8* %.pre, i64 %indvars.iv83, !dbg !169
  store i8 0, i8* %arrayidx36, align 1, !dbg !169, !tbaa !98
  %indvars.iv.next84 = add i64 %indvars.iv83, 1, !dbg !173
  %lftr.wideiv = trunc i64 %indvars.iv.next84 to i32, !dbg !173
  %exitcond = icmp eq i32 %lftr.wideiv, %size, !dbg !173
  br i1 %exitcond, label %for.inc40, label %for.body32, !dbg !173

for.inc40:                                        ; preds = %for.body32
  %indvars.iv.next86 = add i64 %indvars.iv85, 1, !dbg !166
  %lftr.wideiv87 = trunc i64 %indvars.iv.next86 to i32, !dbg !166
  %exitcond88 = icmp eq i32 %lftr.wideiv87, %size, !dbg !166
  br i1 %exitcond88, label %if.end43, label %for.body32.lr.ph, !dbg !166

if.end43:                                         ; preds = %for.cond.preheader, %for.cond25.preheader, %for.inc40, %entry, %if.end22.thread
  %array.070 = phi i8** [ null, %if.end22.thread ], [ null, %entry ], [ %0, %for.inc40 ], [ %0, %for.cond25.preheader ], [ %0, %for.cond.preheader ]
  ret i8** %array.070, !dbg !174
}

; Function Attrs: nounwind optsize
declare noalias i8* @malloc(i64) #2

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) #2

; Function Attrs: nounwind optsize uwtable
define void @CCTKi_ScheduleDestroyArray(i32 %size, i8** %array) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %size}, i64 0, metadata !51), !dbg !175
  tail call void @llvm.dbg.value(metadata !{i8** %array}, i64 0, metadata !52), !dbg !175
  %tobool = icmp eq i8** %array, null, !dbg !176
  br i1 %tobool, label %if.end, label %for.cond.preheader, !dbg !176

for.cond.preheader:                               ; preds = %entry
  %cmp6 = icmp sgt i32 %size, 0, !dbg !177
  br i1 %cmp6, label %for.body.lr.ph, label %for.end, !dbg !177

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %0 = sext i32 %size to i64
  br label %for.body, !dbg !177

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %indvars.iv = phi i64 [ %0, %for.body.lr.ph ], [ %indvars.iv.next, %for.body ]
  %indvars.iv.next = add i64 %indvars.iv, -1, !dbg !177
  %arrayidx = getelementptr inbounds i8** %array, i64 %indvars.iv.next, !dbg !180
  %1 = load i8** %arrayidx, align 8, !dbg !180, !tbaa !97
  tail call void @free(i8* %1) #5, !dbg !180
  %2 = trunc i64 %indvars.iv.next to i32, !dbg !177
  %cmp = icmp sgt i32 %2, 0, !dbg !177
  br i1 %cmp, label %for.body, label %for.end, !dbg !177

for.end:                                          ; preds = %for.body, %for.cond.preheader
  %3 = bitcast i8** %array to i8*, !dbg !182
  tail call void @free(i8* %3) #5, !dbg !182
  br label %if.end, !dbg !183

if.end:                                           ; preds = %entry, %for.end
  ret void, !dbg !184
}

; Function Attrs: nounwind optsize uwtable
define noalias i32* @CCTKi_ScheduleCreateIVec(i32 %size) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %size}, i64 0, metadata !58), !dbg !185
  %conv = sext i32 %size to i64, !dbg !186
  %mul = shl nsw i64 %conv, 2, !dbg !186
  %call = tail call noalias i8* @malloc(i64 %mul) #5, !dbg !186
  %0 = bitcast i8* %call to i32*, !dbg !186
  tail call void @llvm.dbg.value(metadata !{i32* %0}, i64 0, metadata !60), !dbg !186
  %tobool = icmp ne i8* %call, null, !dbg !187
  %cmp7 = icmp sgt i32 %size, 0, !dbg !188
  %or.cond = and i1 %tobool, %cmp7, !dbg !187
  br i1 %or.cond, label %for.body.lr.ph, label %if.end, !dbg !187

for.body.lr.ph:                                   ; preds = %entry
  %1 = add i32 %size, -1, !dbg !188
  %2 = zext i32 %1 to i64
  %3 = shl nuw nsw i64 %2, 2, !dbg !188
  %4 = add i64 %3, 4, !dbg !188
  call void @llvm.memset.p0i8.i64(i8* %call, i8 0, i64 %4, i32 4, i1 false), !dbg !191
  br label %if.end, !dbg !188

if.end:                                           ; preds = %entry, %for.body.lr.ph
  ret i32* %0, !dbg !193
}

; Function Attrs: nounwind optsize uwtable
define void @CCTKi_ScheduleDestroyIVec(i32 %size, i32* nocapture %vector) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %size}, i64 0, metadata !65), !dbg !194
  tail call void @llvm.dbg.value(metadata !{i32* %vector}, i64 0, metadata !66), !dbg !194
  tail call void @llvm.dbg.value(metadata !{i32 %size}, i64 0, metadata !65), !dbg !195
  %0 = bitcast i32* %vector to i8*, !dbg !196
  tail call void @free(i8* %0) #5, !dbg !196
  ret void, !dbg !197
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #3

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #4

attributes #0 = { nounwind optsize readnone uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }
attributes #4 = { nounwind }
attributes #5 = { nounwind optsize }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !80, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/ScheduleSorter.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/ScheduleSorter.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4, metadata !11, metadata !27, metadata !39, metadata !47, metadata !54, metadata !61, metadata !67}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"CCTKi_version_schedule_ScheduleSorter_c", metadata !"CCTKi_version_schedule_ScheduleSorter_c", metadata !"", i32 22, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* ()* @CCTKi_version_schedule_ScheduleSorter_c, null, null, metadata !2, i32 22} ; [ DW_TAG_subprogram ] [line 22] [def] [CCTKi_version_schedule_ScheduleSorter_c]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/ScheduleSorter.c]
!6 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8}
!8 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !9} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!9 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !10} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from char]
!10 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!11 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"CCTKi_ScheduleSort", metadata !"CCTKi_ScheduleSort", metadata !"", i32 87, metadata !12, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32, i8**, i32*)* @CCTKi_ScheduleSort, null, null, metadata !19, i32 88} ; [ DW_TAG_subprogram ] [line 87] [def] [scope 88] [CCTKi_ScheduleSort]
!12 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !13, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!13 = metadata !{metadata !14, metadata !14, metadata !15, metadata !18}
!14 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!15 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !16} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!16 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !17} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from signed char]
!17 = metadata !{i32 786468, null, null, metadata !"signed char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [signed char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!18 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !14} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from int]
!19 = metadata !{metadata !20, metadata !21, metadata !22, metadata !23, metadata !24, metadata !25, metadata !26}
!20 = metadata !{i32 786689, metadata !11, metadata !"size", metadata !5, i32 16777303, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [size] [line 87]
!21 = metadata !{i32 786689, metadata !11, metadata !"array", metadata !5, i32 33554519, metadata !15, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [array] [line 87]
!22 = metadata !{i32 786689, metadata !11, metadata !"order", metadata !5, i32 50331735, metadata !18, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [order] [line 87]
!23 = metadata !{i32 786688, metadata !11, metadata !"iter", metadata !5, i32 89, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [iter] [line 89]
!24 = metadata !{i32 786688, metadata !11, metadata !"row", metadata !5, i32 90, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [row] [line 90]
!25 = metadata !{i32 786688, metadata !11, metadata !"column", metadata !5, i32 90, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [column] [line 90]
!26 = metadata !{i32 786688, metadata !11, metadata !"retval", metadata !5, i32 91, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [retval] [line 91]
!27 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"CCTKi_ScheduleAddRow", metadata !"CCTKi_ScheduleAddRow", metadata !"", i32 174, metadata !28, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32, i8**, i32*, i32, i32*)* @CCTKi_ScheduleAddRow, null, null, metadata !30, i32 179} ; [ DW_TAG_subprogram ] [line 174] [def] [scope 179] [CCTKi_ScheduleAddRow]
!28 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !29, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!29 = metadata !{metadata !14, metadata !14, metadata !15, metadata !18, metadata !14, metadata !18}
!30 = metadata !{metadata !31, metadata !32, metadata !33, metadata !34, metadata !35, metadata !36, metadata !37, metadata !38}
!31 = metadata !{i32 786689, metadata !27, metadata !"size", metadata !5, i32 16777390, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [size] [line 174]
!32 = metadata !{i32 786689, metadata !27, metadata !"array", metadata !5, i32 33554607, metadata !15, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [array] [line 175]
!33 = metadata !{i32 786689, metadata !27, metadata !"order", metadata !5, i32 50331824, metadata !18, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [order] [line 176]
!34 = metadata !{i32 786689, metadata !27, metadata !"item", metadata !5, i32 67109041, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [item] [line 177]
!35 = metadata !{i32 786689, metadata !27, metadata !"thisorders", metadata !5, i32 83886258, metadata !18, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [thisorders] [line 178]
!36 = metadata !{i32 786688, metadata !27, metadata !"retval", metadata !5, i32 180, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [retval] [line 180]
!37 = metadata !{i32 786688, metadata !27, metadata !"row", metadata !5, i32 182, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [row] [line 182]
!38 = metadata !{i32 786688, metadata !27, metadata !"column", metadata !5, i32 183, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [column] [line 183]
!39 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"CCTKi_ScheduleCreateArray", metadata !"CCTKi_ScheduleCreateArray", metadata !"", i32 229, metadata !40, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8** (i32)* @CCTKi_ScheduleCreateArray, null, null, metadata !42, i32 230} ; [ DW_TAG_subprogram ] [line 229] [def] [scope 230] [CCTKi_ScheduleCreateArray]
!40 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !41, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!41 = metadata !{metadata !15, metadata !14}
!42 = metadata !{metadata !43, metadata !44, metadata !45, metadata !46}
!43 = metadata !{i32 786689, metadata !39, metadata !"size", metadata !5, i32 16777445, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [size] [line 229]
!44 = metadata !{i32 786688, metadata !39, metadata !"i", metadata !5, i32 231, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 231]
!45 = metadata !{i32 786688, metadata !39, metadata !"j", metadata !5, i32 231, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [j] [line 231]
!46 = metadata !{i32 786688, metadata !39, metadata !"array", metadata !5, i32 232, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [array] [line 232]
!47 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"CCTKi_ScheduleDestroyArray", metadata !"CCTKi_ScheduleDestroyArray", metadata !"", i32 300, metadata !48, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i32, i8**)* @CCTKi_ScheduleDestroyArray, null, null, metadata !50, i32 301} ; [ DW_TAG_subprogram ] [line 300] [def] [scope 301] [CCTKi_ScheduleDestroyArray]
!48 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !49, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!49 = metadata !{null, metadata !14, metadata !15}
!50 = metadata !{metadata !51, metadata !52, metadata !53}
!51 = metadata !{i32 786689, metadata !47, metadata !"size", metadata !5, i32 16777516, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [size] [line 300]
!52 = metadata !{i32 786689, metadata !47, metadata !"array", metadata !5, i32 33554732, metadata !15, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [array] [line 300]
!53 = metadata !{i32 786688, metadata !47, metadata !"i", metadata !5, i32 302, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 302]
!54 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"CCTKi_ScheduleCreateIVec", metadata !"CCTKi_ScheduleCreateIVec", metadata !"", i32 339, metadata !55, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32* (i32)* @CCTKi_ScheduleCreateIVec, null, null, metadata !57, i32 340} ; [ DW_TAG_subprogram ] [line 339] [def] [scope 340] [CCTKi_ScheduleCreateIVec]
!55 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !56, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!56 = metadata !{metadata !18, metadata !14}
!57 = metadata !{metadata !58, metadata !59, metadata !60}
!58 = metadata !{i32 786689, metadata !54, metadata !"size", metadata !5, i32 16777555, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [size] [line 339]
!59 = metadata !{i32 786688, metadata !54, metadata !"i", metadata !5, i32 341, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 341]
!60 = metadata !{i32 786688, metadata !54, metadata !"vector", metadata !5, i32 342, metadata !18, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [vector] [line 342]
!61 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"CCTKi_ScheduleDestroyIVec", metadata !"CCTKi_ScheduleDestroyIVec", metadata !"", i32 385, metadata !62, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i32, i32*)* @CCTKi_ScheduleDestroyIVec, null, null, metadata !64, i32 386} ; [ DW_TAG_subprogram ] [line 385] [def] [scope 386] [CCTKi_ScheduleDestroyIVec]
!62 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !63, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!63 = metadata !{null, metadata !14, metadata !18}
!64 = metadata !{metadata !65, metadata !66}
!65 = metadata !{i32 786689, metadata !61, metadata !"size", metadata !5, i32 16777601, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [size] [line 385]
!66 = metadata !{i32 786689, metadata !61, metadata !"vector", metadata !5, i32 33554817, metadata !18, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [vector] [line 385]
!67 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"ScheduleSwap", metadata !"ScheduleSwap", metadata !"", i32 440, metadata !68, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !70, i32 441} ; [ DW_TAG_subprogram ] [line 440] [local] [def] [scope 441] [ScheduleSwap]
!68 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !69, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!69 = metadata !{null, metadata !14, metadata !15, metadata !18, metadata !14, metadata !14}
!70 = metadata !{metadata !71, metadata !72, metadata !73, metadata !74, metadata !75, metadata !76, metadata !77, metadata !78, metadata !79}
!71 = metadata !{i32 786689, metadata !67, metadata !"size", metadata !5, i32 16777656, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [size] [line 440]
!72 = metadata !{i32 786689, metadata !67, metadata !"array", metadata !5, i32 33554872, metadata !15, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [array] [line 440]
!73 = metadata !{i32 786689, metadata !67, metadata !"order", metadata !5, i32 50332088, metadata !18, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [order] [line 440]
!74 = metadata !{i32 786689, metadata !67, metadata !"row", metadata !5, i32 67109304, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [row] [line 440]
!75 = metadata !{i32 786689, metadata !67, metadata !"column", metadata !5, i32 83886520, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [column] [line 440]
!76 = metadata !{i32 786688, metadata !67, metadata !"tmp", metadata !5, i32 442, metadata !16, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [tmp] [line 442]
!77 = metadata !{i32 786688, metadata !67, metadata !"tmp_char", metadata !5, i32 443, metadata !17, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [tmp_char] [line 443]
!78 = metadata !{i32 786688, metadata !67, metadata !"tmp_int", metadata !5, i32 444, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [tmp_int] [line 444]
!79 = metadata !{i32 786688, metadata !67, metadata !"this_row", metadata !5, i32 445, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [this_row] [line 445]
!80 = metadata !{metadata !81}
!81 = metadata !{i32 786484, i32 0, null, metadata !"rcsid", metadata !"rcsid", metadata !"", metadata !5, i32 20, metadata !8, i32 1, i32 1, null, null}
!82 = metadata !{i32 22, i32 0, metadata !4, null}
!83 = metadata !{i32 87, i32 0, metadata !11, null}
!84 = metadata !{i32 93, i32 0, metadata !11, null}
!85 = metadata !{i32 95, i32 0, metadata !86, null}
!86 = metadata !{i32 786443, metadata !1, metadata !11, i32 95, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/ScheduleSorter.c]
!87 = metadata !{i32 99, i32 0, metadata !88, null}
!88 = metadata !{i32 786443, metadata !1, metadata !89, i32 99, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/ScheduleSorter.c]
!89 = metadata !{i32 786443, metadata !1, metadata !86, i32 96, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/ScheduleSorter.c]
!90 = metadata !{i32 117, i32 0, metadata !91, null}
!91 = metadata !{i32 786443, metadata !1, metadata !11, i32 117, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/ScheduleSorter.c]
!92 = metadata !{i32 101, i32 0, metadata !93, null}
!93 = metadata !{i32 786443, metadata !1, metadata !94, i32 101, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/ScheduleSorter.c]
!94 = metadata !{i32 786443, metadata !1, metadata !88, i32 100, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/ScheduleSorter.c]
!95 = metadata !{i32 103, i32 0, metadata !96, null}
!96 = metadata !{i32 786443, metadata !1, metadata !93, i32 102, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/ScheduleSorter.c]
!97 = metadata !{metadata !"any pointer", metadata !98}
!98 = metadata !{metadata !"omnipotent char", metadata !99}
!99 = metadata !{metadata !"Simple C/C++ TBAA"}
!100 = metadata !{i32 786689, metadata !67, metadata !"size", metadata !5, i32 16777656, metadata !14, i32 0, metadata !101} ; [ DW_TAG_arg_variable ] [size] [line 440]
!101 = metadata !{i32 112, i32 0, metadata !89, null}
!102 = metadata !{i32 440, i32 0, metadata !67, metadata !101}
!103 = metadata !{i32 786689, metadata !67, metadata !"array", metadata !5, i32 33554872, metadata !15, i32 0, metadata !101} ; [ DW_TAG_arg_variable ] [array] [line 440]
!104 = metadata !{i32 786689, metadata !67, metadata !"order", metadata !5, i32 50332088, metadata !18, i32 0, metadata !101} ; [ DW_TAG_arg_variable ] [order] [line 440]
!105 = metadata !{i32 786689, metadata !67, metadata !"row", metadata !5, i32 67109304, metadata !14, i32 0, metadata !101} ; [ DW_TAG_arg_variable ] [row] [line 440]
!106 = metadata !{i32 786689, metadata !67, metadata !"column", metadata !5, i32 83886520, metadata !14, i32 0, metadata !101} ; [ DW_TAG_arg_variable ] [column] [line 440]
!107 = metadata !{i32 448, i32 0, metadata !67, metadata !101}
!108 = metadata !{i32 786688, metadata !67, metadata !"tmp", metadata !5, i32 442, metadata !16, i32 0, metadata !101} ; [ DW_TAG_auto_variable ] [tmp] [line 442]
!109 = metadata !{i32 449, i32 0, metadata !67, metadata !101}
!110 = metadata !{i32 450, i32 0, metadata !67, metadata !101}
!111 = metadata !{i32 786688, metadata !67, metadata !"this_row", metadata !5, i32 445, metadata !14, i32 0, metadata !101} ; [ DW_TAG_auto_variable ] [this_row] [line 445]
!112 = metadata !{i32 453, i32 0, metadata !113, metadata !101}
!113 = metadata !{i32 786443, metadata !1, metadata !67, i32 453, i32 0, i32 30} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/ScheduleSorter.c]
!114 = metadata !{i32 455, i32 0, metadata !115, metadata !101}
!115 = metadata !{i32 786443, metadata !1, metadata !113, i32 454, i32 0, i32 31} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/ScheduleSorter.c]
!116 = metadata !{i32 786688, metadata !67, metadata !"tmp_char", metadata !5, i32 443, metadata !17, i32 0, metadata !101} ; [ DW_TAG_auto_variable ] [tmp_char] [line 443]
!117 = metadata !{i32 456, i32 0, metadata !115, metadata !101}
!118 = metadata !{i32 457, i32 0, metadata !115, metadata !101}
!119 = metadata !{i32 461, i32 0, metadata !67, metadata !101}
!120 = metadata !{metadata !"int", metadata !98}
!121 = metadata !{i32 786688, metadata !67, metadata !"tmp_int", metadata !5, i32 444, metadata !14, i32 0, metadata !101} ; [ DW_TAG_auto_variable ] [tmp_int] [line 444]
!122 = metadata !{i32 462, i32 0, metadata !67, metadata !101}
!123 = metadata !{i32 463, i32 0, metadata !67, metadata !101}
!124 = metadata !{i32 119, i32 0, metadata !125, null}
!125 = metadata !{i32 786443, metadata !1, metadata !126, i32 119, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/ScheduleSorter.c]
!126 = metadata !{i32 786443, metadata !1, metadata !91, i32 118, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/ScheduleSorter.c]
!127 = metadata !{i32 121, i32 0, metadata !128, null}
!128 = metadata !{i32 786443, metadata !1, metadata !125, i32 120, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/ScheduleSorter.c]
!129 = metadata !{i32 125, i32 0, metadata !11, null}
!130 = metadata !{i32 174, i32 0, metadata !27, null}
!131 = metadata !{i32 175, i32 0, metadata !27, null}
!132 = metadata !{i32 176, i32 0, metadata !27, null}
!133 = metadata !{i32 177, i32 0, metadata !27, null}
!134 = metadata !{i32 178, i32 0, metadata !27, null}
!135 = metadata !{i32 185, i32 0, metadata !27, null}
!136 = metadata !{i32 187, i32 0, metadata !27, null}
!137 = metadata !{i32 189, i32 0, metadata !27, null}
!138 = metadata !{i32 191, i32 0, metadata !139, null}
!139 = metadata !{i32 786443, metadata !1, metadata !27, i32 191, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/ScheduleSorter.c]
!140 = metadata !{i32 195, i32 0, metadata !141, null}
!141 = metadata !{i32 786443, metadata !1, metadata !142, i32 194, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/ScheduleSorter.c]
!142 = metadata !{i32 786443, metadata !1, metadata !139, i32 192, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/ScheduleSorter.c]
!143 = metadata !{i32 193, i32 0, metadata !142, null}
!144 = metadata !{i32 196, i32 0, metadata !141, null}
!145 = metadata !{i32 197, i32 0, metadata !141, null}
!146 = metadata !{i32 198, i32 0, metadata !141, null}
!147 = metadata !{i32 201, i32 0, metadata !27, null}
!148 = metadata !{i32 229, i32 0, metadata !39, null}
!149 = metadata !{i32 234, i32 0, metadata !39, null}
!150 = metadata !{i32 236, i32 0, metadata !39, null}
!151 = metadata !{i32 238, i32 0, metadata !152, null}
!152 = metadata !{i32 786443, metadata !1, metadata !153, i32 238, i32 0, i32 14} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/ScheduleSorter.c]
!153 = metadata !{i32 786443, metadata !1, metadata !39, i32 237, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/ScheduleSorter.c]
!154 = metadata !{i32 240, i32 0, metadata !155, null}
!155 = metadata !{i32 786443, metadata !1, metadata !152, i32 239, i32 0, i32 15} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/ScheduleSorter.c]
!156 = metadata !{i32 241, i32 0, metadata !155, null}
!157 = metadata !{i32 248, i32 0, metadata !158, null}
!158 = metadata !{i32 786443, metadata !1, metadata !159, i32 248, i32 0, i32 17} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/ScheduleSorter.c]
!159 = metadata !{i32 786443, metadata !1, metadata !153, i32 246, i32 0, i32 16} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/ScheduleSorter.c]
!160 = metadata !{i32 250, i32 0, metadata !161, null}
!161 = metadata !{i32 786443, metadata !1, metadata !158, i32 249, i32 0, i32 18} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/ScheduleSorter.c]
!162 = metadata !{i32 252, i32 0, metadata !159, null}
!163 = metadata !{i8** null}
!164 = metadata !{i32 253, i32 0, metadata !159, null}
!165 = metadata !{i32 258, i32 0, metadata !39, null}
!166 = metadata !{i32 260, i32 0, metadata !167, null}
!167 = metadata !{i32 786443, metadata !1, metadata !168, i32 260, i32 0, i32 20} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/ScheduleSorter.c]
!168 = metadata !{i32 786443, metadata !1, metadata !39, i32 259, i32 0, i32 19} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/ScheduleSorter.c]
!169 = metadata !{i32 264, i32 0, metadata !170, null}
!170 = metadata !{i32 786443, metadata !1, metadata !171, i32 263, i32 0, i32 23} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/ScheduleSorter.c]
!171 = metadata !{i32 786443, metadata !1, metadata !172, i32 262, i32 0, i32 22} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/ScheduleSorter.c]
!172 = metadata !{i32 786443, metadata !1, metadata !167, i32 261, i32 0, i32 21} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/ScheduleSorter.c]
!173 = metadata !{i32 262, i32 0, metadata !171, null}
!174 = metadata !{i32 269, i32 0, metadata !39, null}
!175 = metadata !{i32 300, i32 0, metadata !47, null}
!176 = metadata !{i32 304, i32 0, metadata !47, null}
!177 = metadata !{i32 306, i32 0, metadata !178, null}
!178 = metadata !{i32 786443, metadata !1, metadata !179, i32 306, i32 0, i32 25} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/ScheduleSorter.c]
!179 = metadata !{i32 786443, metadata !1, metadata !47, i32 305, i32 0, i32 24} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/ScheduleSorter.c]
!180 = metadata !{i32 308, i32 0, metadata !181, null}
!181 = metadata !{i32 786443, metadata !1, metadata !178, i32 307, i32 0, i32 26} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/ScheduleSorter.c]
!182 = metadata !{i32 310, i32 0, metadata !179, null}
!183 = metadata !{i32 311, i32 0, metadata !179, null}
!184 = metadata !{i32 312, i32 0, metadata !47, null}
!185 = metadata !{i32 339, i32 0, metadata !54, null}
!186 = metadata !{i32 344, i32 0, metadata !54, null}
!187 = metadata !{i32 346, i32 0, metadata !54, null}
!188 = metadata !{i32 348, i32 0, metadata !189, null}
!189 = metadata !{i32 786443, metadata !1, metadata !190, i32 348, i32 0, i32 28} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/ScheduleSorter.c]
!190 = metadata !{i32 786443, metadata !1, metadata !54, i32 347, i32 0, i32 27} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/ScheduleSorter.c]
!191 = metadata !{i32 350, i32 0, metadata !192, null}
!192 = metadata !{i32 786443, metadata !1, metadata !189, i32 349, i32 0, i32 29} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/ScheduleSorter.c]
!193 = metadata !{i32 354, i32 0, metadata !54, null}
!194 = metadata !{i32 385, i32 0, metadata !61, null}
!195 = metadata !{i32 387, i32 0, metadata !61, null}
!196 = metadata !{i32 388, i32 0, metadata !61, null}
!197 = metadata !{i32 389, i32 0, metadata !61, null}
