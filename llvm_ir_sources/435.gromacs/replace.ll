; ModuleID = '../../SPEC/benchspec/CPU2006/435.gromacs/src/replace.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"buf\00", align 1
@.str1 = private unnamed_addr constant [55 x i8] c"../../SPEC/benchspec/CPU2006/435.gromacs/src/replace.c\00", align 1

; Function Attrs: nounwind optsize uwtable
define i8* @replace(i8* %string, i8* nocapture %search, i8* nocapture %replace) #0 {
entry:
  %call = tail call i64 @strlen(i8* %search) #5
  %conv = trunc i64 %call to i32
  %call1 = tail call i64 @strlen(i8* %string) #5
  %conv2 = trunc i64 %call1 to i32
  %cmp = icmp eq i8* %string, null
  %cmp4 = icmp eq i32 %conv, 0
  %or.cond = or i1 %cmp, %cmp4
  %cmp7 = icmp eq i32 %conv2, 0
  %or.cond132 = or i1 %or.cond, %cmp7
  br i1 %or.cond132, label %if.then, label %if.end11

if.then:                                          ; preds = %entry
  br i1 %cmp, label %return, label %if.then9

if.then9:                                         ; preds = %if.then
  %call10 = tail call i8* @gmx_strdup(i8* %string) #6
  br label %return

if.end11:                                         ; preds = %entry
  %call12 = tail call i64 @strlen(i8* %replace) #5
  %conv13 = trunc i64 %call12 to i32
  %mul = mul nsw i32 %conv13, %conv2
  %div = sdiv i32 %mul, %conv
  %cmp14 = icmp sgt i32 %conv2, %div
  %conv2.div = select i1 %cmp14, i32 %conv2, i32 %div
  %add = add nsw i32 %conv2.div, 1
  %call18 = tail call i8* @save_calloc(i8* getelementptr inbounds ([4 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([55 x i8]* @.str1, i64 0, i64 0), i32 54, i32 %add, i32 1) #6
  %call19 = tail call i8* @strcpy(i8* %call18, i8* %string) #6
  %call20148 = tail call i8* @strstr(i8* %call18, i8* %search) #5
  %cmp21149 = icmp eq i8* %call20148, null
  br i1 %cmp21149, label %return, label %while.body.lr.ph

while.body.lr.ph:                                 ; preds = %if.end11
  %cmp23 = icmp sgt i32 %conv13, %conv
  %cmp66146 = icmp sgt i32 %conv13, 0
  %sub59 = sub i64 %call12, %call
  %sext = shl i64 %call12, 32
  %idx.ext = ashr exact i64 %sext, 32
  %cmp30 = icmp slt i32 %conv13, %conv
  %add34 = sub i32 %conv, %conv13
  %sext163 = shl i64 %sub59, 32
  %0 = ashr exact i64 %sext163, 32
  br label %while.body

while.body:                                       ; preds = %while.body.lr.ph, %if.end76
  %call20150 = phi i8* [ %call20148, %while.body.lr.ph ], [ %call20, %if.end76 ]
  br i1 %cmp23, label %if.else, label %for.cond.preheader

for.cond.preheader:                               ; preds = %while.body
  br i1 %cmp66146, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond.preheader, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %for.cond.preheader ]
  %arrayidx = getelementptr inbounds i8* %replace, i64 %indvars.iv
  %1 = load i8* %arrayidx, align 1, !tbaa !0
  %arrayidx29 = getelementptr inbounds i8* %call20150, i64 %indvars.iv
  store i8 %1, i8* %arrayidx29, align 1, !tbaa !0
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %conv13
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %for.cond.preheader
  %i.0.lcssa = phi i32 [ 0, %for.cond.preheader ], [ %conv13, %for.body ]
  br i1 %cmp30, label %while.cond33.preheader, label %if.end76

while.cond33.preheader:                           ; preds = %for.end
  %sub135 = add i32 %add34, %i.0.lcssa
  %idxprom35136 = sext i32 %sub135 to i64
  %arrayidx36137 = getelementptr inbounds i8* %call20150, i64 %idxprom35136
  %2 = load i8* %arrayidx36137, align 1, !tbaa !0
  %cmp38138 = icmp eq i8 %2, 0
  %idxprom48139 = sext i32 %i.0.lcssa to i64
  %arrayidx49140 = getelementptr inbounds i8* %call20150, i64 %idxprom48139
  br i1 %cmp38138, label %while.end, label %while.body40

while.body40:                                     ; preds = %while.cond33.preheader, %while.body40
  %indvars.iv154 = phi i64 [ %indvars.iv.next155, %while.body40 ], [ %idxprom48139, %while.cond33.preheader ]
  %arrayidx49142 = phi i8* [ %arrayidx49, %while.body40 ], [ %arrayidx49140, %while.cond33.preheader ]
  %3 = phi i8 [ %5, %while.body40 ], [ %2, %while.cond33.preheader ]
  store i8 %3, i8* %arrayidx49142, align 1, !tbaa !0
  %indvars.iv.next155 = add i64 %indvars.iv154, 1
  %4 = trunc i64 %indvars.iv.next155 to i32
  %sub = add i32 %add34, %4
  %idxprom35 = sext i32 %sub to i64
  %arrayidx36 = getelementptr inbounds i8* %call20150, i64 %idxprom35
  %5 = load i8* %arrayidx36, align 1, !tbaa !0
  %cmp38 = icmp eq i8 %5, 0
  %arrayidx49 = getelementptr inbounds i8* %call20150, i64 %indvars.iv.next155
  br i1 %cmp38, label %while.end, label %while.body40

while.end:                                        ; preds = %while.body40, %while.cond33.preheader
  %arrayidx49.lcssa = phi i8* [ %arrayidx49140, %while.cond33.preheader ], [ %arrayidx49, %while.body40 ]
  store i8 0, i8* %arrayidx49.lcssa, align 1, !tbaa !0
  br label %if.end76

if.else:                                          ; preds = %while.body
  %call51 = tail call i64 @strlen(i8* %call20150) #5
  %conv52 = trunc i64 %call51 to i32
  %cmp54144 = icmp slt i32 %conv52, %conv
  br i1 %cmp54144, label %for.cond65.loopexit, label %for.body56.lr.ph

for.body56.lr.ph:                                 ; preds = %if.else
  %sext164 = shl i64 %call51, 32
  %6 = ashr exact i64 %sext164, 32
  br label %for.body56

for.body56:                                       ; preds = %for.body56, %for.body56.lr.ph
  %indvars.iv156 = phi i64 [ %indvars.iv.next157, %for.body56 ], [ %6, %for.body56.lr.ph ]
  %arrayidx58 = getelementptr inbounds i8* %call20150, i64 %indvars.iv156
  %7 = load i8* %arrayidx58, align 1, !tbaa !0
  %8 = add nsw i64 %0, %indvars.iv156
  %arrayidx62 = getelementptr inbounds i8* %call20150, i64 %8
  store i8 %7, i8* %arrayidx62, align 1, !tbaa !0
  %indvars.iv.next157 = add i64 %indvars.iv156, -1
  %9 = trunc i64 %indvars.iv156 to i32
  %cmp54 = icmp sgt i32 %9, %conv
  br i1 %cmp54, label %for.body56, label %for.cond65.loopexit

for.cond65.loopexit:                              ; preds = %for.body56, %if.else
  br i1 %cmp66146, label %for.body68, label %if.end76

for.body68:                                       ; preds = %for.cond65.loopexit, %for.body68
  %indvars.iv159 = phi i64 [ %indvars.iv.next160, %for.body68 ], [ 0, %for.cond65.loopexit ]
  %arrayidx70 = getelementptr inbounds i8* %replace, i64 %indvars.iv159
  %10 = load i8* %arrayidx70, align 1, !tbaa !0
  %arrayidx72 = getelementptr inbounds i8* %call20150, i64 %indvars.iv159
  store i8 %10, i8* %arrayidx72, align 1, !tbaa !0
  %indvars.iv.next160 = add i64 %indvars.iv159, 1
  %lftr.wideiv161 = trunc i64 %indvars.iv.next160 to i32
  %exitcond162 = icmp eq i32 %lftr.wideiv161, %conv13
  br i1 %exitcond162, label %if.end76, label %for.body68

if.end76:                                         ; preds = %for.cond65.loopexit, %for.body68, %for.end, %while.end
  %add.ptr = getelementptr inbounds i8* %call20150, i64 %idx.ext
  %call20 = tail call i8* @strstr(i8* %add.ptr, i8* %search) #5
  %cmp21 = icmp eq i8* %call20, null
  br i1 %cmp21, label %return, label %while.body

return:                                           ; preds = %if.end11, %if.end76, %if.then9, %if.then
  %retval.0 = phi i8* [ %call10, %if.then9 ], [ null, %if.then ], [ %call18, %if.end76 ], [ %call18, %if.end11 ]
  ret i8* %retval.0
}

; Function Attrs: nounwind optsize readonly
declare i64 @strlen(i8* nocapture) #1

; Function Attrs: optsize
declare i8* @gmx_strdup(i8*) #2

; Function Attrs: optsize
declare i8* @save_calloc(i8*, i8*, i32, i32, i32) #2

; Function Attrs: nounwind optsize
declare i8* @strcpy(i8*, i8* nocapture) #3

; Function Attrs: nounwind optsize readonly
declare i8* @strstr(i8*, i8* nocapture) #1

; Function Attrs: nounwind optsize uwtable
define i8* @replaceww(i8* %string, i8* nocapture %search, i8* nocapture %replace) #0 {
entry:
  %call = tail call i64 @strlen(i8* %search) #5
  %conv = trunc i64 %call to i32
  %call1 = tail call i64 @strlen(i8* %string) #5
  %conv2 = trunc i64 %call1 to i32
  %cmp = icmp eq i8* %string, null
  %cmp4 = icmp eq i32 %conv, 0
  %or.cond = or i1 %cmp, %cmp4
  %cmp7 = icmp eq i32 %conv2, 0
  %or.cond165 = or i1 %or.cond, %cmp7
  br i1 %or.cond165, label %if.then, label %if.end11

if.then:                                          ; preds = %entry
  br i1 %cmp, label %return, label %if.then9

if.then9:                                         ; preds = %if.then
  %call10 = tail call i8* @gmx_strdup(i8* %string) #6
  br label %return

if.end11:                                         ; preds = %entry
  %call12 = tail call i64 @strlen(i8* %replace) #5
  %conv13 = trunc i64 %call12 to i32
  %mul = mul nsw i32 %conv13, %conv2
  %div = sdiv i32 %mul, %conv
  %cmp14 = icmp sgt i32 %conv2, %div
  %conv2.div = select i1 %cmp14, i32 %conv2, i32 %div
  %add = add nsw i32 %conv2.div, 1
  %call18 = tail call i8* @save_calloc(i8* getelementptr inbounds ([4 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([55 x i8]* @.str1, i64 0, i64 0), i32 98, i32 %add, i32 1) #6
  %call19 = tail call i8* @strcpy(i8* %call18, i8* %string) #6
  %call20181 = tail call i8* @strstr(i8* %call18, i8* %search) #5
  %cmp21182 = icmp eq i8* %call20181, null
  br i1 %cmp21182, label %return, label %while.body.lr.ph

while.body.lr.ph:                                 ; preds = %if.end11
  %sext = shl i64 %call, 32
  %idxprom31 = ashr exact i64 %sext, 32
  %cmp41 = icmp sgt i32 %conv13, %conv
  %cmp86179 = icmp sgt i32 %conv13, 0
  %sub79 = sub i64 %call12, %call
  %cmp50 = icmp slt i32 %conv13, %conv
  %add54 = sub i32 %conv, %conv13
  %sext198 = shl i64 %sub79, 32
  %0 = ashr exact i64 %sext198, 32
  br label %while.body

while.body:                                       ; preds = %while.body.lr.ph, %while.cond.backedge
  %call20184 = phi i8* [ %call20181, %while.body.lr.ph ], [ %call20, %while.cond.backedge ]
  %bufptr.0183 = phi i8* [ %call18, %while.body.lr.ph ], [ %bufptr.0.be, %while.cond.backedge ]
  %cmp23 = icmp eq i8* %call20184, %bufptr.0183
  br i1 %cmp23, label %while.body.land.lhs.true_crit_edge, label %lor.lhs.false25

while.body.land.lhs.true_crit_edge:               ; preds = %while.body
  %call35.pre = tail call i16** @__ctype_b_loc() #7
  br label %land.lhs.true

lor.lhs.false25:                                  ; preds = %while.body
  %arrayidx = getelementptr inbounds i8* %call20184, i64 -1
  %1 = load i8* %arrayidx, align 1, !tbaa !0
  %idxprom = sext i8 %1 to i64
  %call27 = tail call i16** @__ctype_b_loc() #7
  %2 = load i16** %call27, align 8, !tbaa !2
  %arrayidx28 = getelementptr inbounds i16* %2, i64 %idxprom
  %3 = load i16* %arrayidx28, align 2, !tbaa !3
  %and = and i16 %3, 8
  %tobool30 = icmp eq i16 %and, 0
  br i1 %tobool30, label %land.lhs.true, label %while.cond.backedge

land.lhs.true:                                    ; preds = %while.body.land.lhs.true_crit_edge, %lor.lhs.false25
  %call35.pre-phi = phi i16** [ %call35.pre, %while.body.land.lhs.true_crit_edge ], [ %call27, %lor.lhs.false25 ]
  %arrayidx32 = getelementptr inbounds i8* %call20184, i64 %idxprom31
  %4 = load i8* %arrayidx32, align 1, !tbaa !0
  %idxprom34 = sext i8 %4 to i64
  %5 = load i16** %call35.pre-phi, align 8, !tbaa !2
  %arrayidx36 = getelementptr inbounds i16* %5, i64 %idxprom34
  %6 = load i16* %arrayidx36, align 2, !tbaa !3
  %and38 = and i16 %6, 8
  %tobool39 = icmp eq i16 %and38, 0
  br i1 %tobool39, label %if.then40, label %while.cond.backedge

if.then40:                                        ; preds = %land.lhs.true
  br i1 %cmp41, label %if.else, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.then40
  br i1 %cmp86179, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond.preheader, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %for.cond.preheader ]
  %arrayidx47 = getelementptr inbounds i8* %replace, i64 %indvars.iv
  %7 = load i8* %arrayidx47, align 1, !tbaa !0
  %arrayidx49 = getelementptr inbounds i8* %call20184, i64 %indvars.iv
  store i8 %7, i8* %arrayidx49, align 1, !tbaa !0
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %conv13
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %for.cond.preheader
  %i.0.lcssa = phi i32 [ 0, %for.cond.preheader ], [ %conv13, %for.body ]
  br i1 %cmp50, label %while.cond53.preheader, label %while.cond.backedge

while.cond53.preheader:                           ; preds = %for.end
  %sub168 = add i32 %add54, %i.0.lcssa
  %idxprom55169 = sext i32 %sub168 to i64
  %arrayidx56170 = getelementptr inbounds i8* %call20184, i64 %idxprom55169
  %8 = load i8* %arrayidx56170, align 1, !tbaa !0
  %cmp58171 = icmp eq i8 %8, 0
  %idxprom68172 = sext i32 %i.0.lcssa to i64
  %arrayidx69173 = getelementptr inbounds i8* %call20184, i64 %idxprom68172
  br i1 %cmp58171, label %while.end, label %while.body60

while.body60:                                     ; preds = %while.cond53.preheader, %while.body60
  %indvars.iv189 = phi i64 [ %indvars.iv.next190, %while.body60 ], [ %idxprom68172, %while.cond53.preheader ]
  %arrayidx69175 = phi i8* [ %arrayidx69, %while.body60 ], [ %arrayidx69173, %while.cond53.preheader ]
  %9 = phi i8 [ %11, %while.body60 ], [ %8, %while.cond53.preheader ]
  store i8 %9, i8* %arrayidx69175, align 1, !tbaa !0
  %indvars.iv.next190 = add i64 %indvars.iv189, 1
  %10 = trunc i64 %indvars.iv.next190 to i32
  %sub = add i32 %add54, %10
  %idxprom55 = sext i32 %sub to i64
  %arrayidx56 = getelementptr inbounds i8* %call20184, i64 %idxprom55
  %11 = load i8* %arrayidx56, align 1, !tbaa !0
  %cmp58 = icmp eq i8 %11, 0
  %arrayidx69 = getelementptr inbounds i8* %call20184, i64 %indvars.iv.next190
  br i1 %cmp58, label %while.end, label %while.body60

while.end:                                        ; preds = %while.body60, %while.cond53.preheader
  %arrayidx69.lcssa = phi i8* [ %arrayidx69173, %while.cond53.preheader ], [ %arrayidx69, %while.body60 ]
  store i8 0, i8* %arrayidx69.lcssa, align 1, !tbaa !0
  br label %while.cond.backedge

if.else:                                          ; preds = %if.then40
  %call71 = tail call i64 @strlen(i8* %call20184) #5
  %conv72 = trunc i64 %call71 to i32
  %cmp74177 = icmp slt i32 %conv72, %conv
  br i1 %cmp74177, label %for.cond85.loopexit, label %for.body76.lr.ph

for.body76.lr.ph:                                 ; preds = %if.else
  %sext199 = shl i64 %call71, 32
  %12 = ashr exact i64 %sext199, 32
  br label %for.body76

for.body76:                                       ; preds = %for.body76, %for.body76.lr.ph
  %indvars.iv191 = phi i64 [ %indvars.iv.next192, %for.body76 ], [ %12, %for.body76.lr.ph ]
  %arrayidx78 = getelementptr inbounds i8* %call20184, i64 %indvars.iv191
  %13 = load i8* %arrayidx78, align 1, !tbaa !0
  %14 = add nsw i64 %0, %indvars.iv191
  %arrayidx82 = getelementptr inbounds i8* %call20184, i64 %14
  store i8 %13, i8* %arrayidx82, align 1, !tbaa !0
  %indvars.iv.next192 = add i64 %indvars.iv191, -1
  %15 = trunc i64 %indvars.iv191 to i32
  %cmp74 = icmp sgt i32 %15, %conv
  br i1 %cmp74, label %for.body76, label %for.cond85.loopexit

for.cond85.loopexit:                              ; preds = %for.body76, %if.else
  br i1 %cmp86179, label %for.body88, label %while.cond.backedge

for.body88:                                       ; preds = %for.cond85.loopexit, %for.body88
  %indvars.iv194 = phi i64 [ %indvars.iv.next195, %for.body88 ], [ 0, %for.cond85.loopexit ]
  %arrayidx90 = getelementptr inbounds i8* %replace, i64 %indvars.iv194
  %16 = load i8* %arrayidx90, align 1, !tbaa !0
  %arrayidx92 = getelementptr inbounds i8* %call20184, i64 %indvars.iv194
  store i8 %16, i8* %arrayidx92, align 1, !tbaa !0
  %indvars.iv.next195 = add i64 %indvars.iv194, 1
  %lftr.wideiv196 = trunc i64 %indvars.iv.next195 to i32
  %exitcond197 = icmp eq i32 %lftr.wideiv196, %conv13
  br i1 %exitcond197, label %while.cond.backedge, label %for.body88

while.cond.backedge:                              ; preds = %lor.lhs.false25, %land.lhs.true, %while.end, %for.end, %for.body88, %for.cond85.loopexit
  %idx.ext98.pn.in.in = phi i64 [ %call12, %for.cond85.loopexit ], [ %call12, %for.body88 ], [ %call12, %for.end ], [ %call12, %while.end ], [ %call, %land.lhs.true ], [ %call, %lor.lhs.false25 ]
  %idx.ext98.pn.in = shl i64 %idx.ext98.pn.in.in, 32
  %idx.ext98.pn = ashr exact i64 %idx.ext98.pn.in, 32
  %bufptr.0.be = getelementptr inbounds i8* %call20184, i64 %idx.ext98.pn
  %call20 = tail call i8* @strstr(i8* %bufptr.0.be, i8* %search) #5
  %cmp21 = icmp eq i8* %call20, null
  br i1 %cmp21, label %return, label %while.body

return:                                           ; preds = %if.end11, %while.cond.backedge, %if.then9, %if.then
  %retval.0 = phi i8* [ %call10, %if.then9 ], [ null, %if.then ], [ %call18, %while.cond.backedge ], [ %call18, %if.end11 ]
  ret i8* %retval.0
}

; Function Attrs: nounwind optsize readnone
declare i16** @__ctype_b_loc() #4

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind optsize readonly }
attributes #6 = { nounwind optsize }
attributes #7 = { nounwind optsize readnone }

!0 = metadata !{metadata !"omnipotent char", metadata !1}
!1 = metadata !{metadata !"Simple C/C++ TBAA"}
!2 = metadata !{metadata !"any pointer", metadata !0}
!3 = metadata !{metadata !"short", metadata !0}
