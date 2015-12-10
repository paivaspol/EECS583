; ModuleID = '../../SPEC/benchspec/CPU2006/435.gromacs/src/replace.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"buf\00", align 1
@.str1 = private unnamed_addr constant [55 x i8] c"../../SPEC/benchspec/CPU2006/435.gromacs/src/replace.c\00", align 1

; Function Attrs: nounwind optsize uwtable
define i8* @replace(i8* %string, i8* nocapture %search, i8* nocapture %replace) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i8* %string}, i64 0, metadata !27), !dbg !55
  tail call void @llvm.dbg.value(metadata !{i8* %search}, i64 0, metadata !28), !dbg !55
  tail call void @llvm.dbg.value(metadata !{i8* %replace}, i64 0, metadata !29), !dbg !55
  tail call void @llvm.dbg.value(metadata !56, i64 0, metadata !30), !dbg !57
  tail call void @llvm.dbg.value(metadata !56, i64 0, metadata !31), !dbg !57
  tail call void @llvm.dbg.value(metadata !56, i64 0, metadata !32), !dbg !57
  %call = tail call i64 @strlen(i8* %search) #6, !dbg !58
  %conv = trunc i64 %call to i32, !dbg !58
  tail call void @llvm.dbg.value(metadata !{i32 %conv}, i64 0, metadata !36), !dbg !58
  %call1 = tail call i64 @strlen(i8* %string) #6, !dbg !59
  %conv2 = trunc i64 %call1 to i32, !dbg !59
  tail call void @llvm.dbg.value(metadata !{i32 %conv2}, i64 0, metadata !35), !dbg !59
  %cmp = icmp eq i8* %string, null, !dbg !60
  %cmp4 = icmp eq i32 %conv, 0, !dbg !60
  %or.cond = or i1 %cmp, %cmp4, !dbg !60
  %cmp7 = icmp eq i32 %conv2, 0, !dbg !60
  %or.cond132 = or i1 %or.cond, %cmp7, !dbg !60
  br i1 %or.cond132, label %if.then, label %if.end11, !dbg !60

if.then:                                          ; preds = %entry
  br i1 %cmp, label %return, label %if.then9, !dbg !61

if.then9:                                         ; preds = %if.then
  %call10 = tail call noalias i8* @strdup(i8* %string) #7, !dbg !63
  tail call void @llvm.dbg.value(metadata !{i8* %call10}, i64 0, metadata !30), !dbg !63
  br label %return, !dbg !63

if.end11:                                         ; preds = %entry
  %call12 = tail call i64 @strlen(i8* %replace) #6, !dbg !64
  %conv13 = trunc i64 %call12 to i32, !dbg !64
  tail call void @llvm.dbg.value(metadata !{i32 %conv13}, i64 0, metadata !37), !dbg !64
  %mul = mul nsw i32 %conv13, %conv2, !dbg !65
  %div = sdiv i32 %mul, %conv, !dbg !65
  %cmp14 = icmp sgt i32 %conv2, %div, !dbg !65
  %conv2.div = select i1 %cmp14, i32 %conv2, i32 %div, !dbg !65
  tail call void @llvm.dbg.value(metadata !{i32 %conv2.div}, i64 0, metadata !33), !dbg !65
  %add = add nsw i32 %conv2.div, 1, !dbg !66
  %call18 = tail call i8* @save_calloc(i8* getelementptr inbounds ([4 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([55 x i8]* @.str1, i64 0, i64 0), i32 54, i32 %add, i32 1) #7, !dbg !66
  tail call void @llvm.dbg.value(metadata !{i8* %call18}, i64 0, metadata !30), !dbg !66
  %call19 = tail call i8* @strcpy(i8* %call18, i8* %string) #7, !dbg !67
  tail call void @llvm.dbg.value(metadata !{i8* %call18}, i64 0, metadata !32), !dbg !68
  %call20148 = tail call i8* @strstr(i8* %call18, i8* %search) #6, !dbg !69
  tail call void @llvm.dbg.value(metadata !{i8* %call20148}, i64 0, metadata !31), !dbg !69
  %cmp21149 = icmp eq i8* %call20148, null, !dbg !69
  br i1 %cmp21149, label %return, label %while.body.lr.ph, !dbg !69

while.body.lr.ph:                                 ; preds = %if.end11
  %cmp23 = icmp sgt i32 %conv13, %conv, !dbg !70
  %cmp66146 = icmp sgt i32 %conv13, 0, !dbg !72
  %sub59 = sub i64 %call12, %call, !dbg !75
  %sext = shl i64 %call12, 32, !dbg !77
  %idx.ext = ashr exact i64 %sext, 32, !dbg !77
  %cmp30 = icmp slt i32 %conv13, %conv, !dbg !78
  %add34 = sub i32 %conv, %conv13, !dbg !80
  %sext163 = shl i64 %sub59, 32, !dbg !69
  %0 = ashr exact i64 %sext163, 32, !dbg !69
  br label %while.body, !dbg !69

while.body:                                       ; preds = %while.body.lr.ph, %if.end76
  %call20150 = phi i8* [ %call20148, %while.body.lr.ph ], [ %call20, %if.end76 ]
  br i1 %cmp23, label %if.else, label %for.cond.preheader, !dbg !70

for.cond.preheader:                               ; preds = %while.body
  br i1 %cmp66146, label %for.body, label %for.end, !dbg !82

for.body:                                         ; preds = %for.cond.preheader, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %for.cond.preheader ]
  %arrayidx = getelementptr inbounds i8* %replace, i64 %indvars.iv, !dbg !84
  %1 = load i8* %arrayidx, align 1, !dbg !84, !tbaa !85
  %arrayidx29 = getelementptr inbounds i8* %call20150, i64 %indvars.iv, !dbg !84
  store i8 %1, i8* %arrayidx29, align 1, !dbg !84, !tbaa !85
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !82
  tail call void @llvm.dbg.value(metadata !{i32 %conv13}, i64 0, metadata !38), !dbg !82
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !82
  %exitcond = icmp eq i32 %lftr.wideiv, %conv13, !dbg !82
  br i1 %exitcond, label %for.end, label %for.body, !dbg !82

for.end:                                          ; preds = %for.body, %for.cond.preheader
  %i.0.lcssa = phi i32 [ 0, %for.cond.preheader ], [ %conv13, %for.body ]
  br i1 %cmp30, label %while.cond33.preheader, label %if.end76, !dbg !78

while.cond33.preheader:                           ; preds = %for.end
  %sub135 = add i32 %add34, %i.0.lcssa, !dbg !80
  %idxprom35136 = sext i32 %sub135 to i64, !dbg !80
  %arrayidx36137 = getelementptr inbounds i8* %call20150, i64 %idxprom35136, !dbg !80
  %2 = load i8* %arrayidx36137, align 1, !dbg !80, !tbaa !85
  %cmp38138 = icmp eq i8 %2, 0, !dbg !80
  %idxprom48139 = sext i32 %i.0.lcssa to i64, !dbg !87
  %arrayidx49140 = getelementptr inbounds i8* %call20150, i64 %idxprom48139, !dbg !87
  br i1 %cmp38138, label %while.end, label %while.body40, !dbg !80

while.body40:                                     ; preds = %while.cond33.preheader, %while.body40
  %indvars.iv154 = phi i64 [ %indvars.iv.next155, %while.body40 ], [ %idxprom48139, %while.cond33.preheader ]
  %arrayidx49142 = phi i8* [ %arrayidx49, %while.body40 ], [ %arrayidx49140, %while.cond33.preheader ]
  %3 = phi i8 [ %5, %while.body40 ], [ %2, %while.cond33.preheader ]
  store i8 %3, i8* %arrayidx49142, align 1, !dbg !88, !tbaa !85
  %indvars.iv.next155 = add i64 %indvars.iv154, 1, !dbg !80
  %4 = trunc i64 %indvars.iv.next155 to i32, !dbg !80
  %sub = add i32 %add34, %4, !dbg !80
  %idxprom35 = sext i32 %sub to i64, !dbg !80
  %arrayidx36 = getelementptr inbounds i8* %call20150, i64 %idxprom35, !dbg !80
  %5 = load i8* %arrayidx36, align 1, !dbg !80, !tbaa !85
  %cmp38 = icmp eq i8 %5, 0, !dbg !80
  %arrayidx49 = getelementptr inbounds i8* %call20150, i64 %indvars.iv.next155, !dbg !87
  br i1 %cmp38, label %while.end, label %while.body40, !dbg !80

while.end:                                        ; preds = %while.body40, %while.cond33.preheader
  %arrayidx49.lcssa = phi i8* [ %arrayidx49140, %while.cond33.preheader ], [ %arrayidx49, %while.body40 ]
  store i8 0, i8* %arrayidx49.lcssa, align 1, !dbg !87, !tbaa !85
  br label %if.end76, !dbg !90

if.else:                                          ; preds = %while.body
  %call51 = tail call i64 @strlen(i8* %call20150) #6, !dbg !91
  %conv52 = trunc i64 %call51 to i32, !dbg !91
  tail call void @llvm.dbg.value(metadata !{i32 %conv52}, i64 0, metadata !40), !dbg !91
  tail call void @llvm.dbg.value(metadata !{i32 %conv52}, i64 0, metadata !39), !dbg !92
  %cmp54144 = icmp slt i32 %conv52, %conv, !dbg !92
  br i1 %cmp54144, label %for.cond65.loopexit, label %for.body56.lr.ph, !dbg !92

for.body56.lr.ph:                                 ; preds = %if.else
  %sext164 = shl i64 %call51, 32
  %6 = ashr exact i64 %sext164, 32
  br label %for.body56, !dbg !92

for.body56:                                       ; preds = %for.body56, %for.body56.lr.ph
  %indvars.iv156 = phi i64 [ %indvars.iv.next157, %for.body56 ], [ %6, %for.body56.lr.ph ]
  %arrayidx58 = getelementptr inbounds i8* %call20150, i64 %indvars.iv156, !dbg !75
  %7 = load i8* %arrayidx58, align 1, !dbg !75, !tbaa !85
  %8 = add nsw i64 %0, %indvars.iv156, !dbg !75
  %arrayidx62 = getelementptr inbounds i8* %call20150, i64 %8, !dbg !75
  store i8 %7, i8* %arrayidx62, align 1, !dbg !75, !tbaa !85
  %indvars.iv.next157 = add i64 %indvars.iv156, -1, !dbg !92
  %9 = trunc i64 %indvars.iv156 to i32, !dbg !92
  %cmp54 = icmp sgt i32 %9, %conv, !dbg !92
  br i1 %cmp54, label %for.body56, label %for.cond65.loopexit, !dbg !92

for.cond65.loopexit:                              ; preds = %for.body56, %if.else
  br i1 %cmp66146, label %for.body68, label %if.end76, !dbg !72

for.body68:                                       ; preds = %for.cond65.loopexit, %for.body68
  %indvars.iv159 = phi i64 [ %indvars.iv.next160, %for.body68 ], [ 0, %for.cond65.loopexit ]
  %arrayidx70 = getelementptr inbounds i8* %replace, i64 %indvars.iv159, !dbg !93
  %10 = load i8* %arrayidx70, align 1, !dbg !93, !tbaa !85
  %arrayidx72 = getelementptr inbounds i8* %call20150, i64 %indvars.iv159, !dbg !93
  store i8 %10, i8* %arrayidx72, align 1, !dbg !93, !tbaa !85
  %indvars.iv.next160 = add i64 %indvars.iv159, 1, !dbg !72
  %lftr.wideiv161 = trunc i64 %indvars.iv.next160 to i32, !dbg !72
  %exitcond162 = icmp eq i32 %lftr.wideiv161, %conv13, !dbg !72
  br i1 %exitcond162, label %if.end76, label %for.body68, !dbg !72

if.end76:                                         ; preds = %for.cond65.loopexit, %for.body68, %for.end, %while.end
  %add.ptr = getelementptr inbounds i8* %call20150, i64 %idx.ext, !dbg !77
  tail call void @llvm.dbg.value(metadata !{i8* %add.ptr}, i64 0, metadata !32), !dbg !77
  %call20 = tail call i8* @strstr(i8* %add.ptr, i8* %search) #6, !dbg !69
  tail call void @llvm.dbg.value(metadata !{i8* %call20150}, i64 0, metadata !31), !dbg !69
  %cmp21 = icmp eq i8* %call20, null, !dbg !69
  br i1 %cmp21, label %return, label %while.body, !dbg !69

return:                                           ; preds = %if.end11, %if.end76, %if.then9, %if.then
  %retval.0 = phi i8* [ %call10, %if.then9 ], [ null, %if.then ], [ %call18, %if.end76 ], [ %call18, %if.end11 ]
  ret i8* %retval.0, !dbg !94
}

; Function Attrs: nounwind optsize readonly
declare i64 @strlen(i8* nocapture) #1

; Function Attrs: nounwind optsize
declare noalias i8* @strdup(i8* nocapture) #2

; Function Attrs: optsize
declare i8* @save_calloc(i8*, i8*, i32, i32, i32) #3

; Function Attrs: nounwind optsize
declare i8* @strcpy(i8*, i8* nocapture) #2

; Function Attrs: nounwind optsize readonly
declare i8* @strstr(i8*, i8* nocapture) #1

; Function Attrs: nounwind optsize uwtable
define i8* @replaceww(i8* %string, i8* nocapture %search, i8* nocapture %replace) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i8* %string}, i64 0, metadata !43), !dbg !95
  tail call void @llvm.dbg.value(metadata !{i8* %search}, i64 0, metadata !44), !dbg !95
  tail call void @llvm.dbg.value(metadata !{i8* %replace}, i64 0, metadata !45), !dbg !95
  tail call void @llvm.dbg.value(metadata !56, i64 0, metadata !46), !dbg !96
  tail call void @llvm.dbg.value(metadata !56, i64 0, metadata !47), !dbg !96
  tail call void @llvm.dbg.value(metadata !56, i64 0, metadata !48), !dbg !96
  %call = tail call i64 @strlen(i8* %search) #6, !dbg !97
  %conv = trunc i64 %call to i32, !dbg !97
  tail call void @llvm.dbg.value(metadata !{i32 %conv}, i64 0, metadata !51), !dbg !97
  %call1 = tail call i64 @strlen(i8* %string) #6, !dbg !98
  %conv2 = trunc i64 %call1 to i32, !dbg !98
  tail call void @llvm.dbg.value(metadata !{i32 %conv2}, i64 0, metadata !50), !dbg !98
  %cmp = icmp eq i8* %string, null, !dbg !99
  %cmp4 = icmp eq i32 %conv, 0, !dbg !99
  %or.cond = or i1 %cmp, %cmp4, !dbg !99
  %cmp7 = icmp eq i32 %conv2, 0, !dbg !99
  %or.cond165 = or i1 %or.cond, %cmp7, !dbg !99
  br i1 %or.cond165, label %if.then, label %if.end11, !dbg !99

if.then:                                          ; preds = %entry
  br i1 %cmp, label %return, label %if.then9, !dbg !100

if.then9:                                         ; preds = %if.then
  %call10 = tail call noalias i8* @strdup(i8* %string) #7, !dbg !102
  tail call void @llvm.dbg.value(metadata !{i8* %call10}, i64 0, metadata !46), !dbg !102
  br label %return, !dbg !102

if.end11:                                         ; preds = %entry
  %call12 = tail call i64 @strlen(i8* %replace) #6, !dbg !103
  %conv13 = trunc i64 %call12 to i32, !dbg !103
  tail call void @llvm.dbg.value(metadata !{i32 %conv13}, i64 0, metadata !52), !dbg !103
  %mul = mul nsw i32 %conv13, %conv2, !dbg !104
  %div = sdiv i32 %mul, %conv, !dbg !104
  %cmp14 = icmp sgt i32 %conv2, %div, !dbg !104
  %conv2.div = select i1 %cmp14, i32 %conv2, i32 %div, !dbg !104
  tail call void @llvm.dbg.value(metadata !{i32 %conv2.div}, i64 0, metadata !49), !dbg !104
  %add = add nsw i32 %conv2.div, 1, !dbg !105
  %call18 = tail call i8* @save_calloc(i8* getelementptr inbounds ([4 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([55 x i8]* @.str1, i64 0, i64 0), i32 98, i32 %add, i32 1) #7, !dbg !105
  tail call void @llvm.dbg.value(metadata !{i8* %call18}, i64 0, metadata !46), !dbg !105
  %call19 = tail call i8* @strcpy(i8* %call18, i8* %string) #7, !dbg !106
  tail call void @llvm.dbg.value(metadata !{i8* %call18}, i64 0, metadata !48), !dbg !107
  %call20181 = tail call i8* @strstr(i8* %call18, i8* %search) #6, !dbg !108
  tail call void @llvm.dbg.value(metadata !{i8* %call20181}, i64 0, metadata !47), !dbg !108
  %cmp21182 = icmp eq i8* %call20181, null, !dbg !108
  br i1 %cmp21182, label %return, label %while.body.lr.ph, !dbg !108

while.body.lr.ph:                                 ; preds = %if.end11
  %sext = shl i64 %call, 32, !dbg !109
  %idxprom31 = ashr exact i64 %sext, 32, !dbg !109
  %cmp41 = icmp sgt i32 %conv13, %conv, !dbg !111
  %cmp86179 = icmp sgt i32 %conv13, 0, !dbg !113
  %sub79 = sub i64 %call12, %call, !dbg !116
  %cmp50 = icmp slt i32 %conv13, %conv, !dbg !118
  %add54 = sub i32 %conv, %conv13, !dbg !120
  %sext198 = shl i64 %sub79, 32, !dbg !108
  %0 = ashr exact i64 %sext198, 32, !dbg !108
  br label %while.body, !dbg !108

while.body:                                       ; preds = %while.body.lr.ph, %while.cond.backedge
  %call20184 = phi i8* [ %call20181, %while.body.lr.ph ], [ %call20, %while.cond.backedge ]
  %bufptr.0183 = phi i8* [ %call18, %while.body.lr.ph ], [ %bufptr.0.be, %while.cond.backedge ]
  %cmp23 = icmp eq i8* %call20184, %bufptr.0183, !dbg !109
  br i1 %cmp23, label %while.body.land.lhs.true_crit_edge, label %lor.lhs.false25, !dbg !109

while.body.land.lhs.true_crit_edge:               ; preds = %while.body
  %call35.pre = tail call i16** @__ctype_b_loc() #8, !dbg !109
  br label %land.lhs.true, !dbg !109

lor.lhs.false25:                                  ; preds = %while.body
  %arrayidx = getelementptr inbounds i8* %call20184, i64 -1, !dbg !109
  %1 = load i8* %arrayidx, align 1, !dbg !109, !tbaa !85
  %idxprom = sext i8 %1 to i64, !dbg !109
  %call27 = tail call i16** @__ctype_b_loc() #8, !dbg !109
  %2 = load i16** %call27, align 8, !dbg !109, !tbaa !122
  %arrayidx28 = getelementptr inbounds i16* %2, i64 %idxprom, !dbg !109
  %3 = load i16* %arrayidx28, align 2, !dbg !109, !tbaa !123
  %and = and i16 %3, 8, !dbg !109
  %tobool30 = icmp eq i16 %and, 0, !dbg !109
  br i1 %tobool30, label %land.lhs.true, label %while.cond.backedge, !dbg !109

land.lhs.true:                                    ; preds = %while.body.land.lhs.true_crit_edge, %lor.lhs.false25
  %call35.pre-phi = phi i16** [ %call35.pre, %while.body.land.lhs.true_crit_edge ], [ %call27, %lor.lhs.false25 ], !dbg !109
  %arrayidx32 = getelementptr inbounds i8* %call20184, i64 %idxprom31, !dbg !109
  %4 = load i8* %arrayidx32, align 1, !dbg !109, !tbaa !85
  %idxprom34 = sext i8 %4 to i64, !dbg !109
  %5 = load i16** %call35.pre-phi, align 8, !dbg !109, !tbaa !122
  %arrayidx36 = getelementptr inbounds i16* %5, i64 %idxprom34, !dbg !109
  %6 = load i16* %arrayidx36, align 2, !dbg !109, !tbaa !123
  %and38 = and i16 %6, 8, !dbg !109
  %tobool39 = icmp eq i16 %and38, 0, !dbg !109
  br i1 %tobool39, label %if.then40, label %while.cond.backedge, !dbg !109

if.then40:                                        ; preds = %land.lhs.true
  br i1 %cmp41, label %if.else, label %for.cond.preheader, !dbg !111

for.cond.preheader:                               ; preds = %if.then40
  br i1 %cmp86179, label %for.body, label %for.end, !dbg !124

for.body:                                         ; preds = %for.cond.preheader, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %for.cond.preheader ]
  %arrayidx47 = getelementptr inbounds i8* %replace, i64 %indvars.iv, !dbg !126
  %7 = load i8* %arrayidx47, align 1, !dbg !126, !tbaa !85
  %arrayidx49 = getelementptr inbounds i8* %call20184, i64 %indvars.iv, !dbg !126
  store i8 %7, i8* %arrayidx49, align 1, !dbg !126, !tbaa !85
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !124
  tail call void @llvm.dbg.value(metadata !{i32 %conv13}, i64 0, metadata !53), !dbg !124
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !124
  %exitcond = icmp eq i32 %lftr.wideiv, %conv13, !dbg !124
  br i1 %exitcond, label %for.end, label %for.body, !dbg !124

for.end:                                          ; preds = %for.body, %for.cond.preheader
  %i.0.lcssa = phi i32 [ 0, %for.cond.preheader ], [ %conv13, %for.body ]
  br i1 %cmp50, label %while.cond53.preheader, label %while.cond.backedge, !dbg !118

while.cond53.preheader:                           ; preds = %for.end
  %sub168 = add i32 %add54, %i.0.lcssa, !dbg !120
  %idxprom55169 = sext i32 %sub168 to i64, !dbg !120
  %arrayidx56170 = getelementptr inbounds i8* %call20184, i64 %idxprom55169, !dbg !120
  %8 = load i8* %arrayidx56170, align 1, !dbg !120, !tbaa !85
  %cmp58171 = icmp eq i8 %8, 0, !dbg !120
  %idxprom68172 = sext i32 %i.0.lcssa to i64, !dbg !127
  %arrayidx69173 = getelementptr inbounds i8* %call20184, i64 %idxprom68172, !dbg !127
  br i1 %cmp58171, label %while.end, label %while.body60, !dbg !120

while.body60:                                     ; preds = %while.cond53.preheader, %while.body60
  %indvars.iv189 = phi i64 [ %indvars.iv.next190, %while.body60 ], [ %idxprom68172, %while.cond53.preheader ]
  %arrayidx69175 = phi i8* [ %arrayidx69, %while.body60 ], [ %arrayidx69173, %while.cond53.preheader ]
  %9 = phi i8 [ %11, %while.body60 ], [ %8, %while.cond53.preheader ]
  store i8 %9, i8* %arrayidx69175, align 1, !dbg !128, !tbaa !85
  %indvars.iv.next190 = add i64 %indvars.iv189, 1, !dbg !120
  %10 = trunc i64 %indvars.iv.next190 to i32, !dbg !120
  %sub = add i32 %add54, %10, !dbg !120
  %idxprom55 = sext i32 %sub to i64, !dbg !120
  %arrayidx56 = getelementptr inbounds i8* %call20184, i64 %idxprom55, !dbg !120
  %11 = load i8* %arrayidx56, align 1, !dbg !120, !tbaa !85
  %cmp58 = icmp eq i8 %11, 0, !dbg !120
  %arrayidx69 = getelementptr inbounds i8* %call20184, i64 %indvars.iv.next190, !dbg !127
  br i1 %cmp58, label %while.end, label %while.body60, !dbg !120

while.end:                                        ; preds = %while.body60, %while.cond53.preheader
  %arrayidx69.lcssa = phi i8* [ %arrayidx69173, %while.cond53.preheader ], [ %arrayidx69, %while.body60 ]
  store i8 0, i8* %arrayidx69.lcssa, align 1, !dbg !127, !tbaa !85
  br label %while.cond.backedge, !dbg !130

if.else:                                          ; preds = %if.then40
  %call71 = tail call i64 @strlen(i8* %call20184) #6, !dbg !131
  %conv72 = trunc i64 %call71 to i32, !dbg !131
  tail call void @llvm.dbg.value(metadata !{i32 %conv72}, i64 0, metadata !54), !dbg !131
  %cmp74177 = icmp slt i32 %conv72, %conv, !dbg !131
  br i1 %cmp74177, label %for.cond85.loopexit, label %for.body76.lr.ph, !dbg !131

for.body76.lr.ph:                                 ; preds = %if.else
  %sext199 = shl i64 %call71, 32
  %12 = ashr exact i64 %sext199, 32
  br label %for.body76, !dbg !131

for.body76:                                       ; preds = %for.body76, %for.body76.lr.ph
  %indvars.iv191 = phi i64 [ %indvars.iv.next192, %for.body76 ], [ %12, %for.body76.lr.ph ]
  %arrayidx78 = getelementptr inbounds i8* %call20184, i64 %indvars.iv191, !dbg !116
  %13 = load i8* %arrayidx78, align 1, !dbg !116, !tbaa !85
  %14 = add nsw i64 %0, %indvars.iv191, !dbg !116
  %arrayidx82 = getelementptr inbounds i8* %call20184, i64 %14, !dbg !116
  store i8 %13, i8* %arrayidx82, align 1, !dbg !116, !tbaa !85
  %indvars.iv.next192 = add i64 %indvars.iv191, -1, !dbg !131
  %15 = trunc i64 %indvars.iv191 to i32, !dbg !131
  %cmp74 = icmp sgt i32 %15, %conv, !dbg !131
  br i1 %cmp74, label %for.body76, label %for.cond85.loopexit, !dbg !131

for.cond85.loopexit:                              ; preds = %for.body76, %if.else
  br i1 %cmp86179, label %for.body88, label %while.cond.backedge, !dbg !113

for.body88:                                       ; preds = %for.cond85.loopexit, %for.body88
  %indvars.iv194 = phi i64 [ %indvars.iv.next195, %for.body88 ], [ 0, %for.cond85.loopexit ]
  %arrayidx90 = getelementptr inbounds i8* %replace, i64 %indvars.iv194, !dbg !132
  %16 = load i8* %arrayidx90, align 1, !dbg !132, !tbaa !85
  %arrayidx92 = getelementptr inbounds i8* %call20184, i64 %indvars.iv194, !dbg !132
  store i8 %16, i8* %arrayidx92, align 1, !dbg !132, !tbaa !85
  %indvars.iv.next195 = add i64 %indvars.iv194, 1, !dbg !113
  %lftr.wideiv196 = trunc i64 %indvars.iv.next195 to i32, !dbg !113
  %exitcond197 = icmp eq i32 %lftr.wideiv196, %conv13, !dbg !113
  br i1 %exitcond197, label %while.cond.backedge, label %for.body88, !dbg !113

while.cond.backedge:                              ; preds = %lor.lhs.false25, %land.lhs.true, %while.end, %for.end, %for.body88, %for.cond85.loopexit
  %idx.ext98.pn.in.in = phi i64 [ %call12, %for.cond85.loopexit ], [ %call12, %for.body88 ], [ %call12, %for.end ], [ %call12, %while.end ], [ %call, %land.lhs.true ], [ %call, %lor.lhs.false25 ]
  %idx.ext98.pn.in = shl i64 %idx.ext98.pn.in.in, 32, !dbg !133
  %idx.ext98.pn = ashr exact i64 %idx.ext98.pn.in, 32, !dbg !133
  %bufptr.0.be = getelementptr inbounds i8* %call20184, i64 %idx.ext98.pn, !dbg !133
  %call20 = tail call i8* @strstr(i8* %bufptr.0.be, i8* %search) #6, !dbg !108
  tail call void @llvm.dbg.value(metadata !{i8* %call20184}, i64 0, metadata !47), !dbg !108
  %cmp21 = icmp eq i8* %call20, null, !dbg !108
  br i1 %cmp21, label %return, label %while.body, !dbg !108

return:                                           ; preds = %if.end11, %while.cond.backedge, %if.then9, %if.then
  %retval.0 = phi i8* [ %call10, %if.then9 ], [ null, %if.then ], [ %call18, %while.cond.backedge ], [ %call18, %if.end11 ]
  ret i8* %retval.0, !dbg !134
}

; Function Attrs: nounwind optsize readnone
declare i16** @__ctype_b_loc() #4

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #5

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone }
attributes #6 = { nounwind optsize readonly }
attributes #7 = { nounwind optsize }
attributes #8 = { nounwind optsize readnone }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !18, metadata !19, metadata !18, metadata !18, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/replace.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/435.gromacs/src/replace.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{metadata !3}
!3 = metadata !{i32 786436, metadata !4, null, metadata !"", i32 46, i64 32, i64 32, i32 0, i32 0, null, metadata !5, i32 0, i32 0} ; [ DW_TAG_enumeration_type ] [line 46, size 32, align 32, offset 0] [from ]
!4 = metadata !{metadata !"/usr/include/ctype.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!5 = metadata !{metadata !6, metadata !7, metadata !8, metadata !9, metadata !10, metadata !11, metadata !12, metadata !13, metadata !14, metadata !15, metadata !16, metadata !17}
!6 = metadata !{i32 786472, metadata !"_ISupper", i64 256} ; [ DW_TAG_enumerator ] [_ISupper :: 256]
!7 = metadata !{i32 786472, metadata !"_ISlower", i64 512} ; [ DW_TAG_enumerator ] [_ISlower :: 512]
!8 = metadata !{i32 786472, metadata !"_ISalpha", i64 1024} ; [ DW_TAG_enumerator ] [_ISalpha :: 1024]
!9 = metadata !{i32 786472, metadata !"_ISdigit", i64 2048} ; [ DW_TAG_enumerator ] [_ISdigit :: 2048]
!10 = metadata !{i32 786472, metadata !"_ISxdigit", i64 4096} ; [ DW_TAG_enumerator ] [_ISxdigit :: 4096]
!11 = metadata !{i32 786472, metadata !"_ISspace", i64 8192} ; [ DW_TAG_enumerator ] [_ISspace :: 8192]
!12 = metadata !{i32 786472, metadata !"_ISprint", i64 16384} ; [ DW_TAG_enumerator ] [_ISprint :: 16384]
!13 = metadata !{i32 786472, metadata !"_ISgraph", i64 32768} ; [ DW_TAG_enumerator ] [_ISgraph :: 32768]
!14 = metadata !{i32 786472, metadata !"_ISblank", i64 1} ; [ DW_TAG_enumerator ] [_ISblank :: 1]
!15 = metadata !{i32 786472, metadata !"_IScntrl", i64 2} ; [ DW_TAG_enumerator ] [_IScntrl :: 2]
!16 = metadata !{i32 786472, metadata !"_ISpunct", i64 4} ; [ DW_TAG_enumerator ] [_ISpunct :: 4]
!17 = metadata !{i32 786472, metadata !"_ISalnum", i64 8} ; [ DW_TAG_enumerator ] [_ISalnum :: 8]
!18 = metadata !{i32 0}
!19 = metadata !{metadata !20, metadata !41}
!20 = metadata !{i32 786478, metadata !1, metadata !21, metadata !"replace", metadata !"replace", metadata !"", i32 39, metadata !22, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* (i8*, i8*, i8*)* @replace, null, null, metadata !26, i32 40} ; [ DW_TAG_subprogram ] [line 39] [def] [scope 40] [replace]
!21 = metadata !{i32 786473, metadata !1}         ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/replace.c]
!22 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !23, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!23 = metadata !{metadata !24, metadata !24, metadata !24, metadata !24}
!24 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !25} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from char]
!25 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!26 = metadata !{metadata !27, metadata !28, metadata !29, metadata !30, metadata !31, metadata !32, metadata !33, metadata !35, metadata !36, metadata !37, metadata !38, metadata !39, metadata !40}
!27 = metadata !{i32 786689, metadata !20, metadata !"string", metadata !21, i32 16777255, metadata !24, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [string] [line 39]
!28 = metadata !{i32 786689, metadata !20, metadata !"search", metadata !21, i32 33554471, metadata !24, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [search] [line 39]
!29 = metadata !{i32 786689, metadata !20, metadata !"replace", metadata !21, i32 50331687, metadata !24, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [replace] [line 39]
!30 = metadata !{i32 786688, metadata !20, metadata !"buf", metadata !21, i32 41, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [buf] [line 41]
!31 = metadata !{i32 786688, metadata !20, metadata !"ptr", metadata !21, i32 41, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ptr] [line 41]
!32 = metadata !{i32 786688, metadata !20, metadata !"bufptr", metadata !21, i32 41, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [bufptr] [line 41]
!33 = metadata !{i32 786688, metadata !20, metadata !"blen", metadata !21, i32 42, metadata !34, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [blen] [line 42]
!34 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!35 = metadata !{i32 786688, metadata !20, metadata !"stringlen", metadata !21, i32 42, metadata !34, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [stringlen] [line 42]
!36 = metadata !{i32 786688, metadata !20, metadata !"slen", metadata !21, i32 42, metadata !34, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [slen] [line 42]
!37 = metadata !{i32 786688, metadata !20, metadata !"rlen", metadata !21, i32 42, metadata !34, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rlen] [line 42]
!38 = metadata !{i32 786688, metadata !20, metadata !"i", metadata !21, i32 43, metadata !34, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 43]
!39 = metadata !{i32 786688, metadata !20, metadata !"j", metadata !21, i32 43, metadata !34, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [j] [line 43]
!40 = metadata !{i32 786688, metadata !20, metadata !"tmp", metadata !21, i32 43, metadata !34, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [tmp] [line 43]
!41 = metadata !{i32 786478, metadata !1, metadata !21, metadata !"replaceww", metadata !"replaceww", metadata !"", i32 83, metadata !22, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* (i8*, i8*, i8*)* @replaceww, null, null, metadata !42, i32 84} ; [ DW_TAG_subprogram ] [line 83] [def] [scope 84] [replaceww]
!42 = metadata !{metadata !43, metadata !44, metadata !45, metadata !46, metadata !47, metadata !48, metadata !49, metadata !50, metadata !51, metadata !52, metadata !53, metadata !54}
!43 = metadata !{i32 786689, metadata !41, metadata !"string", metadata !21, i32 16777299, metadata !24, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [string] [line 83]
!44 = metadata !{i32 786689, metadata !41, metadata !"search", metadata !21, i32 33554515, metadata !24, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [search] [line 83]
!45 = metadata !{i32 786689, metadata !41, metadata !"replace", metadata !21, i32 50331731, metadata !24, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [replace] [line 83]
!46 = metadata !{i32 786688, metadata !41, metadata !"buf", metadata !21, i32 85, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [buf] [line 85]
!47 = metadata !{i32 786688, metadata !41, metadata !"ptr", metadata !21, i32 85, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ptr] [line 85]
!48 = metadata !{i32 786688, metadata !41, metadata !"bufptr", metadata !21, i32 85, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [bufptr] [line 85]
!49 = metadata !{i32 786688, metadata !41, metadata !"buflen", metadata !21, i32 86, metadata !34, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [buflen] [line 86]
!50 = metadata !{i32 786688, metadata !41, metadata !"stringlen", metadata !21, i32 86, metadata !34, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [stringlen] [line 86]
!51 = metadata !{i32 786688, metadata !41, metadata !"searchlen", metadata !21, i32 86, metadata !34, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [searchlen] [line 86]
!52 = metadata !{i32 786688, metadata !41, metadata !"replacelen", metadata !21, i32 86, metadata !34, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [replacelen] [line 86]
!53 = metadata !{i32 786688, metadata !41, metadata !"i", metadata !21, i32 87, metadata !34, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 87]
!54 = metadata !{i32 786688, metadata !41, metadata !"j", metadata !21, i32 87, metadata !34, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [j] [line 87]
!55 = metadata !{i32 39, i32 0, metadata !20, null}
!56 = metadata !{i8* null}
!57 = metadata !{i32 41, i32 0, metadata !20, null}
!58 = metadata !{i32 45, i32 0, metadata !20, null}
!59 = metadata !{i32 46, i32 0, metadata !20, null}
!60 = metadata !{i32 47, i32 0, metadata !20, null}
!61 = metadata !{i32 48, i32 0, metadata !62, null}
!62 = metadata !{i32 786443, metadata !1, metadata !20, i32 47, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/replace.c]
!63 = metadata !{i32 49, i32 0, metadata !62, null}
!64 = metadata !{i32 52, i32 0, metadata !20, null}
!65 = metadata !{i32 53, i32 0, metadata !20, null}
!66 = metadata !{i32 54, i32 0, metadata !20, null}
!67 = metadata !{i32 55, i32 0, metadata !20, null}
!68 = metadata !{i32 57, i32 0, metadata !20, null}
!69 = metadata !{i32 58, i32 0, metadata !20, null} ; [ DW_TAG_imported_module ]
!70 = metadata !{i32 59, i32 0, metadata !71, null}
!71 = metadata !{i32 786443, metadata !1, metadata !20, i32 58, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/replace.c]
!72 = metadata !{i32 74, i32 0, metadata !73, null}
!73 = metadata !{i32 786443, metadata !1, metadata !74, i32 74, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/replace.c]
!74 = metadata !{i32 786443, metadata !1, metadata !71, i32 70, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/replace.c]
!75 = metadata !{i32 73, i32 0, metadata !76, null}
!76 = metadata !{i32 786443, metadata !1, metadata !74, i32 72, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/replace.c]
!77 = metadata !{i32 77, i32 0, metadata !71, null}
!78 = metadata !{i32 62, i32 0, metadata !79, null}
!79 = metadata !{i32 786443, metadata !1, metadata !71, i32 59, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/replace.c]
!80 = metadata !{i32 63, i32 0, metadata !81, null}
!81 = metadata !{i32 786443, metadata !1, metadata !79, i32 62, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/replace.c]
!82 = metadata !{i32 60, i32 0, metadata !83, null}
!83 = metadata !{i32 786443, metadata !1, metadata !79, i32 60, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/replace.c]
!84 = metadata !{i32 61, i32 0, metadata !83, null}
!85 = metadata !{metadata !"omnipotent char", metadata !86}
!86 = metadata !{metadata !"Simple C/C++ TBAA"}
!87 = metadata !{i32 67, i32 0, metadata !81, null}
!88 = metadata !{i32 64, i32 0, metadata !89, null}
!89 = metadata !{i32 786443, metadata !1, metadata !81, i32 63, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/replace.c]
!90 = metadata !{i32 68, i32 0, metadata !81, null}
!91 = metadata !{i32 71, i32 0, metadata !74, null}
!92 = metadata !{i32 72, i32 0, metadata !76, null}
!93 = metadata !{i32 75, i32 0, metadata !73, null}
!94 = metadata !{i32 81, i32 0, metadata !20, null}
!95 = metadata !{i32 83, i32 0, metadata !41, null}
!96 = metadata !{i32 85, i32 0, metadata !41, null}
!97 = metadata !{i32 89, i32 0, metadata !41, null}
!98 = metadata !{i32 90, i32 0, metadata !41, null}
!99 = metadata !{i32 91, i32 0, metadata !41, null}
!100 = metadata !{i32 92, i32 0, metadata !101, null}
!101 = metadata !{i32 786443, metadata !1, metadata !41, i32 91, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/replace.c]
!102 = metadata !{i32 93, i32 0, metadata !101, null}
!103 = metadata !{i32 96, i32 0, metadata !41, null}
!104 = metadata !{i32 97, i32 0, metadata !41, null}
!105 = metadata !{i32 98, i32 0, metadata !41, null}
!106 = metadata !{i32 99, i32 0, metadata !41, null}
!107 = metadata !{i32 101, i32 0, metadata !41, null}
!108 = metadata !{i32 102, i32 0, metadata !41, null}
!109 = metadata !{i32 103, i32 0, metadata !110, null}
!110 = metadata !{i32 786443, metadata !1, metadata !41, i32 102, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/replace.c]
!111 = metadata !{i32 104, i32 0, metadata !112, null}
!112 = metadata !{i32 786443, metadata !1, metadata !110, i32 103, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/replace.c]
!113 = metadata !{i32 118, i32 0, metadata !114, null}
!114 = metadata !{i32 786443, metadata !1, metadata !115, i32 118, i32 0, i32 18} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/replace.c]
!115 = metadata !{i32 786443, metadata !1, metadata !112, i32 115, i32 0, i32 16} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/replace.c]
!116 = metadata !{i32 117, i32 0, metadata !117, null}
!117 = metadata !{i32 786443, metadata !1, metadata !115, i32 116, i32 0, i32 17} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/replace.c]
!118 = metadata !{i32 107, i32 0, metadata !119, null}
!119 = metadata !{i32 786443, metadata !1, metadata !112, i32 104, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/replace.c]
!120 = metadata !{i32 108, i32 0, metadata !121, null}
!121 = metadata !{i32 786443, metadata !1, metadata !119, i32 107, i32 0, i32 14} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/replace.c]
!122 = metadata !{metadata !"any pointer", metadata !85}
!123 = metadata !{metadata !"short", metadata !85}
!124 = metadata !{i32 105, i32 0, metadata !125, null}
!125 = metadata !{i32 786443, metadata !1, metadata !119, i32 105, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/replace.c]
!126 = metadata !{i32 106, i32 0, metadata !125, null}
!127 = metadata !{i32 112, i32 0, metadata !121, null}
!128 = metadata !{i32 109, i32 0, metadata !129, null}
!129 = metadata !{i32 786443, metadata !1, metadata !121, i32 108, i32 0, i32 15} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/replace.c]
!130 = metadata !{i32 113, i32 0, metadata !121, null}
!131 = metadata !{i32 116, i32 0, metadata !117, null}
!132 = metadata !{i32 119, i32 0, metadata !114, null}
!133 = metadata !{i32 123, i32 0, metadata !110, null}
!134 = metadata !{i32 127, i32 0, metadata !41, null}
