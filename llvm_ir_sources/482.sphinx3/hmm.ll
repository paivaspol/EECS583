; ModuleID = '../../SPEC/benchspec/CPU2006/482.sphinx3/src/hmm.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hmm_t = type { %struct.hmm_state_t*, %struct.hmm_state_t, %struct.hmm_state_t, i32**, i32 }
%struct.hmm_state_t = type { i32, i32 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@.str = private unnamed_addr constant [10 x i8] c" %11d    \00", align 1
@.str1 = private unnamed_addr constant [6 x i8] c" %11d\00", align 1
@.str2 = private unnamed_addr constant [11 x i8] c"     %11d\0A\00", align 1
@.str3 = private unnamed_addr constant [11 x i8] c" %-11s    \00", align 1
@.str4 = private unnamed_addr constant [6 x i8] c"senid\00", align 1
@.str6 = private unnamed_addr constant [7 x i8] c"senscr\00", align 1
@.str7 = private unnamed_addr constant [51 x i8] c"../../SPEC/benchspec/CPU2006/482.sphinx3/src/hmm.c\00", align 1
@.str8 = private unnamed_addr constant [12 x i8] c"FATAL_ERROR\00", align 1
@.str9 = private unnamed_addr constant [25 x i8] c"#States= %d unsupported\0A\00", align 1

; Function Attrs: nounwind optsize uwtable
define void @hmm_dump(%struct.hmm_t* nocapture %hmm, i32 %n_state, i16* %senid, i32* %senscr, %struct._IO_FILE* nocapture %fp) #0 {
entry:
  %score = getelementptr inbounds %struct.hmm_t* %hmm, i64 0, i32 1, i32 0
  %0 = load i32* %score, align 4, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([10 x i8]* @.str, i64 0, i64 0), i32 %0) #4
  %cmp89 = icmp sgt i32 %n_state, 0
  br i1 %cmp89, label %for.body.lr.ph, label %for.end17.critedge

for.body.lr.ph:                                   ; preds = %entry
  %state = getelementptr inbounds %struct.hmm_t* %hmm, i64 0, i32 0
  br label %for.body

for.body:                                         ; preds = %for.body, %for.body.lr.ph
  %indvars.iv99 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next100, %for.body ]
  %1 = load %struct.hmm_state_t** %state, align 8, !tbaa !3
  %score1 = getelementptr inbounds %struct.hmm_state_t* %1, i64 %indvars.iv99, i32 0
  %2 = load i32* %score1, align 4, !tbaa !0
  %call2 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([6 x i8]* @.str1, i64 0, i64 0), i32 %2) #4
  %indvars.iv.next100 = add i64 %indvars.iv99, 1
  %lftr.wideiv101 = trunc i64 %indvars.iv.next100 to i32
  %exitcond102 = icmp eq i32 %lftr.wideiv101, %n_state
  br i1 %exitcond102, label %for.end, label %for.body

for.end:                                          ; preds = %for.body
  %score3 = getelementptr inbounds %struct.hmm_t* %hmm, i64 0, i32 2, i32 0
  %3 = load i32* %score3, align 4, !tbaa !0
  %call4 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([11 x i8]* @.str2, i64 0, i64 0), i32 %3) #4
  %history = getelementptr inbounds %struct.hmm_t* %hmm, i64 0, i32 1, i32 1
  %4 = load i32* %history, align 4, !tbaa !0
  %call6 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([10 x i8]* @.str, i64 0, i64 0), i32 %4) #4
  br i1 %cmp89, label %for.body9.lr.ph, label %for.end17

for.body9.lr.ph:                                  ; preds = %for.end
  %state11 = getelementptr inbounds %struct.hmm_t* %hmm, i64 0, i32 0
  br label %for.body9

for.body9:                                        ; preds = %for.body9, %for.body9.lr.ph
  %indvars.iv95 = phi i64 [ 0, %for.body9.lr.ph ], [ %indvars.iv.next96, %for.body9 ]
  %5 = load %struct.hmm_state_t** %state11, align 8, !tbaa !3
  %history13 = getelementptr inbounds %struct.hmm_state_t* %5, i64 %indvars.iv95, i32 1
  %6 = load i32* %history13, align 4, !tbaa !0
  %call14 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([6 x i8]* @.str1, i64 0, i64 0), i32 %6) #4
  %indvars.iv.next96 = add i64 %indvars.iv95, 1
  %lftr.wideiv97 = trunc i64 %indvars.iv.next96 to i32
  %exitcond98 = icmp eq i32 %lftr.wideiv97, %n_state
  br i1 %exitcond98, label %for.end17, label %for.body9

for.end17.critedge:                               ; preds = %entry
  %score3.c = getelementptr inbounds %struct.hmm_t* %hmm, i64 0, i32 2, i32 0
  %7 = load i32* %score3.c, align 4, !tbaa !0
  %call4.c = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([11 x i8]* @.str2, i64 0, i64 0), i32 %7) #4
  %history.c = getelementptr inbounds %struct.hmm_t* %hmm, i64 0, i32 1, i32 1
  %8 = load i32* %history.c, align 4, !tbaa !0
  %call6.c = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([10 x i8]* @.str, i64 0, i64 0), i32 %8) #4
  br label %for.end17

for.end17:                                        ; preds = %for.end17.critedge, %for.body9, %for.end
  %history19 = getelementptr inbounds %struct.hmm_t* %hmm, i64 0, i32 2, i32 1
  %9 = load i32* %history19, align 4, !tbaa !0
  %call20 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([11 x i8]* @.str2, i64 0, i64 0), i32 %9) #4
  %tobool = icmp eq i16* %senid, null
  br i1 %tobool, label %if.end48, label %if.then

if.then:                                          ; preds = %for.end17
  %call21 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([11 x i8]* @.str3, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8]* @.str4, i64 0, i64 0)) #4
  br i1 %cmp89, label %for.body24, label %for.end30

for.body24:                                       ; preds = %if.then, %for.body24
  %indvars.iv91 = phi i64 [ %indvars.iv.next92, %for.body24 ], [ 0, %if.then ]
  %arrayidx26 = getelementptr inbounds i16* %senid, i64 %indvars.iv91
  %10 = load i16* %arrayidx26, align 2, !tbaa !4
  %conv = sext i16 %10 to i32
  %call27 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([6 x i8]* @.str1, i64 0, i64 0), i32 %conv) #4
  %indvars.iv.next92 = add i64 %indvars.iv91, 1
  %lftr.wideiv93 = trunc i64 %indvars.iv.next92 to i32
  %exitcond94 = icmp eq i32 %lftr.wideiv93, %n_state
  br i1 %exitcond94, label %for.end30, label %for.body24

for.end30:                                        ; preds = %for.body24, %if.then
  %fputc = tail call i32 @fputc(i32 10, %struct._IO_FILE* %fp)
  %tobool32 = icmp eq i32* %senscr, null
  br i1 %tobool32, label %if.end48, label %if.then33

if.then33:                                        ; preds = %for.end30
  %call34 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([11 x i8]* @.str3, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str6, i64 0, i64 0)) #4
  br i1 %cmp89, label %for.body38, label %for.end46

for.body38:                                       ; preds = %if.then33, %for.body38
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body38 ], [ 0, %if.then33 ]
  %arrayidx40 = getelementptr inbounds i16* %senid, i64 %indvars.iv
  %11 = load i16* %arrayidx40, align 2, !tbaa !4
  %idxprom41 = sext i16 %11 to i64
  %arrayidx42 = getelementptr inbounds i32* %senscr, i64 %idxprom41
  %12 = load i32* %arrayidx42, align 4, !tbaa !0
  %call43 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([6 x i8]* @.str1, i64 0, i64 0), i32 %12) #4
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %n_state
  br i1 %exitcond, label %for.end46, label %for.body38

for.end46:                                        ; preds = %for.body38, %if.then33
  %fputc82 = tail call i32 @fputc(i32 10, %struct._IO_FILE* %fp)
  br label %if.end48

if.end48:                                         ; preds = %for.end30, %for.end17, %for.end46
  %call49 = tail call i32 @fflush(%struct._IO_FILE* %fp) #4
  ret void
}

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #1

; Function Attrs: nounwind optsize
declare i32 @fflush(%struct._IO_FILE* nocapture) #1

; Function Attrs: nounwind optsize uwtable
define void @hmm_clear(%struct.hmm_t* nocapture %h, i32 %n_state) #0 {
entry:
  %score = getelementptr inbounds %struct.hmm_t* %h, i64 0, i32 1, i32 0
  store i32 -939524096, i32* %score, align 4, !tbaa !0
  %history = getelementptr inbounds %struct.hmm_t* %h, i64 0, i32 1, i32 1
  store i32 -1, i32* %history, align 4, !tbaa !0
  %cmp19 = icmp sgt i32 %n_state, 0
  br i1 %cmp19, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %state = getelementptr inbounds %struct.hmm_t* %h, i64 0, i32 0
  %0 = load %struct.hmm_state_t** %state, align 8, !tbaa !3
  br label %for.body

for.body:                                         ; preds = %for.body, %for.body.lr.ph
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.body ]
  %score2 = getelementptr inbounds %struct.hmm_state_t* %0, i64 %indvars.iv, i32 0
  store i32 -939524096, i32* %score2, align 4, !tbaa !0
  %history6 = getelementptr inbounds %struct.hmm_state_t* %0, i64 %indvars.iv, i32 1
  store i32 -1, i32* %history6, align 4, !tbaa !0
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %n_state
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %entry
  %score7 = getelementptr inbounds %struct.hmm_t* %h, i64 0, i32 2, i32 0
  store i32 -939524096, i32* %score7, align 4, !tbaa !0
  %history9 = getelementptr inbounds %struct.hmm_t* %h, i64 0, i32 2, i32 1
  store i32 -1, i32* %history9, align 4, !tbaa !0
  %bestscore = getelementptr inbounds %struct.hmm_t* %h, i64 0, i32 4
  store i32 -939524096, i32* %bestscore, align 4, !tbaa !0
  ret void
}

; Function Attrs: nounwind optsize uwtable
define i32 @hmm_vit_eval_5st(%struct.hmm_t* nocapture %hmm, i16* nocapture %senid, i32* nocapture %senscr) #0 {
entry:
  %tp1 = getelementptr inbounds %struct.hmm_t* %hmm, i64 0, i32 3
  %0 = load i32*** %tp1, align 8, !tbaa !3
  %1 = load i32** %0, align 8, !tbaa !3
  %state = getelementptr inbounds %struct.hmm_t* %hmm, i64 0, i32 0
  %2 = load %struct.hmm_state_t** %state, align 8, !tbaa !3
  %score = getelementptr inbounds %struct.hmm_state_t* %2, i64 4, i32 0
  %3 = load i32* %score, align 4, !tbaa !0
  %arrayidx3 = getelementptr inbounds i32* %1, i64 28
  %4 = load i32* %arrayidx3, align 4, !tbaa !0
  %add.i = add nsw i32 %4, %3
  %cmp.i = icmp sgt i32 %add.i, 0
  %cmp1.i = icmp slt i32 %3, 0
  %or.cond.i = and i1 %cmp.i, %cmp1.i
  %cmp3.i = icmp slt i32 %4, 0
  %or.cond8.i = and i1 %or.cond.i, %cmp3.i
  %cond.i = select i1 %or.cond8.i, i32 -2147483648, i32 %add.i
  %score6 = getelementptr inbounds %struct.hmm_state_t* %2, i64 3, i32 0
  %5 = load i32* %score6, align 4, !tbaa !0
  %arrayidx7 = getelementptr inbounds i32* %1, i64 22
  %6 = load i32* %arrayidx7, align 4, !tbaa !0
  %add.i473 = add nsw i32 %6, %5
  %cmp.i474 = icmp sgt i32 %add.i473, 0
  %cmp1.i475 = icmp slt i32 %5, 0
  %or.cond.i476 = and i1 %cmp.i474, %cmp1.i475
  %cmp3.i477 = icmp slt i32 %6, 0
  %or.cond8.i478 = and i1 %or.cond.i476, %cmp3.i477
  %cond.i479 = select i1 %or.cond8.i478, i32 -2147483648, i32 %add.i473
  %score11 = getelementptr inbounds %struct.hmm_state_t* %2, i64 2, i32 0
  %7 = load i32* %score11, align 4, !tbaa !0
  %arrayidx12 = getelementptr inbounds i32* %1, i64 16
  %8 = load i32* %arrayidx12, align 4, !tbaa !0
  %add.i466 = add nsw i32 %8, %7
  %cmp.i467 = icmp sgt i32 %add.i466, 0
  %cmp1.i468 = icmp slt i32 %7, 0
  %or.cond.i469 = and i1 %cmp.i467, %cmp1.i468
  %cmp3.i470 = icmp slt i32 %8, 0
  %or.cond8.i471 = and i1 %or.cond.i469, %cmp3.i470
  %cond.i472 = select i1 %or.cond8.i471, i32 -2147483648, i32 %add.i466
  %cmp = icmp slt i32 %cond.i, %cond.i479
  br i1 %cmp, label %if.then, label %if.else27

if.then:                                          ; preds = %entry
  %cmp14 = icmp slt i32 %cond.i479, %cond.i472
  br i1 %cmp14, label %if.else, label %if.then15

if.then15:                                        ; preds = %if.then
  %history = getelementptr inbounds %struct.hmm_state_t* %2, i64 3, i32 1
  %9 = load i32* %history, align 4, !tbaa !0
  %history20 = getelementptr inbounds %struct.hmm_state_t* %2, i64 4, i32 1
  store i32 %9, i32* %history20, align 4, !tbaa !0
  br label %if.end37

if.else:                                          ; preds = %if.then
  %history23 = getelementptr inbounds %struct.hmm_state_t* %2, i64 2, i32 1
  %10 = load i32* %history23, align 4, !tbaa !0
  %history26 = getelementptr inbounds %struct.hmm_state_t* %2, i64 4, i32 1
  store i32 %10, i32* %history26, align 4, !tbaa !0
  br label %if.end37

if.else27:                                        ; preds = %entry
  %cmp28 = icmp slt i32 %cond.i, %cond.i472
  br i1 %cmp28, label %if.then29, label %if.end37

if.then29:                                        ; preds = %if.else27
  %history32 = getelementptr inbounds %struct.hmm_state_t* %2, i64 2, i32 1
  %11 = load i32* %history32, align 4, !tbaa !0
  %history35 = getelementptr inbounds %struct.hmm_state_t* %2, i64 4, i32 1
  store i32 %11, i32* %history35, align 4, !tbaa !0
  br label %if.end37

if.end37:                                         ; preds = %if.else27, %if.then29, %if.then15, %if.else
  %s4.0 = phi i32 [ %cond.i479, %if.then15 ], [ %cond.i472, %if.else ], [ %cond.i472, %if.then29 ], [ %cond.i, %if.else27 ]
  %arrayidx38 = getelementptr inbounds i16* %senid, i64 4
  %12 = load i16* %arrayidx38, align 2, !tbaa !4
  %idxprom = sext i16 %12 to i64
  %arrayidx39 = getelementptr inbounds i32* %senscr, i64 %idxprom
  %13 = load i32* %arrayidx39, align 4, !tbaa !0
  %add.i459 = add nsw i32 %13, %s4.0
  %cmp.i460 = icmp sgt i32 %add.i459, 0
  %cmp1.i461 = icmp slt i32 %s4.0, 0
  %or.cond.i462 = and i1 %cmp.i460, %cmp1.i461
  %cmp3.i463 = icmp slt i32 %13, 0
  %or.cond8.i464 = and i1 %or.cond.i462, %cmp3.i463
  %cond.i465 = select i1 %or.cond8.i464, i32 -2147483648, i32 %add.i459
  store i32 %cond.i465, i32* %score, align 4, !tbaa !0
  %arrayidx47 = getelementptr inbounds i32* %1, i64 21
  %14 = load i32* %arrayidx47, align 4, !tbaa !0
  %add.i452 = add nsw i32 %14, %5
  %cmp.i453 = icmp sgt i32 %add.i452, 0
  %or.cond.i455 = and i1 %cmp.i453, %cmp1.i475
  %cmp3.i456 = icmp slt i32 %14, 0
  %or.cond8.i457 = and i1 %or.cond.i455, %cmp3.i456
  %cond.i458 = select i1 %or.cond8.i457, i32 -2147483648, i32 %add.i452
  %arrayidx52 = getelementptr inbounds i32* %1, i64 15
  %15 = load i32* %arrayidx52, align 4, !tbaa !0
  %add.i445 = add nsw i32 %15, %7
  %cmp.i446 = icmp sgt i32 %add.i445, 0
  %or.cond.i448 = and i1 %cmp.i446, %cmp1.i468
  %cmp3.i449 = icmp slt i32 %15, 0
  %or.cond8.i450 = and i1 %or.cond.i448, %cmp3.i449
  %cond.i451 = select i1 %or.cond8.i450, i32 -2147483648, i32 %add.i445
  %score56 = getelementptr inbounds %struct.hmm_state_t* %2, i64 1, i32 0
  %16 = load i32* %score56, align 4, !tbaa !0
  %arrayidx57 = getelementptr inbounds i32* %1, i64 9
  %17 = load i32* %arrayidx57, align 4, !tbaa !0
  %add.i438 = add nsw i32 %17, %16
  %cmp.i439 = icmp sgt i32 %add.i438, 0
  %cmp1.i440 = icmp slt i32 %16, 0
  %or.cond.i441 = and i1 %cmp.i439, %cmp1.i440
  %cmp3.i442 = icmp slt i32 %17, 0
  %or.cond8.i443 = and i1 %or.cond.i441, %cmp3.i442
  %cond.i444 = select i1 %or.cond8.i443, i32 -2147483648, i32 %add.i438
  %cmp59 = icmp slt i32 %cond.i458, %cond.i451
  br i1 %cmp59, label %if.then60, label %if.else77

if.then60:                                        ; preds = %if.end37
  %cmp61 = icmp slt i32 %cond.i451, %cond.i444
  br i1 %cmp61, label %if.else69, label %if.then62

if.then62:                                        ; preds = %if.then60
  %history65 = getelementptr inbounds %struct.hmm_state_t* %2, i64 2, i32 1
  %18 = load i32* %history65, align 4, !tbaa !0
  %history68 = getelementptr inbounds %struct.hmm_state_t* %2, i64 3, i32 1
  store i32 %18, i32* %history68, align 4, !tbaa !0
  br label %if.end87

if.else69:                                        ; preds = %if.then60
  %history72 = getelementptr inbounds %struct.hmm_state_t* %2, i64 1, i32 1
  %19 = load i32* %history72, align 4, !tbaa !0
  %history75 = getelementptr inbounds %struct.hmm_state_t* %2, i64 3, i32 1
  store i32 %19, i32* %history75, align 4, !tbaa !0
  br label %if.end87

if.else77:                                        ; preds = %if.end37
  %cmp78 = icmp slt i32 %cond.i458, %cond.i444
  br i1 %cmp78, label %if.then79, label %if.end87

if.then79:                                        ; preds = %if.else77
  %history82 = getelementptr inbounds %struct.hmm_state_t* %2, i64 1, i32 1
  %20 = load i32* %history82, align 4, !tbaa !0
  %history85 = getelementptr inbounds %struct.hmm_state_t* %2, i64 3, i32 1
  store i32 %20, i32* %history85, align 4, !tbaa !0
  br label %if.end87

if.end87:                                         ; preds = %if.else77, %if.then79, %if.then62, %if.else69
  %s3.0 = phi i32 [ %cond.i451, %if.then62 ], [ %cond.i444, %if.else69 ], [ %cond.i444, %if.then79 ], [ %cond.i458, %if.else77 ]
  %arrayidx88 = getelementptr inbounds i16* %senid, i64 3
  %21 = load i16* %arrayidx88, align 2, !tbaa !4
  %idxprom89 = sext i16 %21 to i64
  %arrayidx90 = getelementptr inbounds i32* %senscr, i64 %idxprom89
  %22 = load i32* %arrayidx90, align 4, !tbaa !0
  %add.i431 = add nsw i32 %22, %s3.0
  %cmp.i432 = icmp sgt i32 %add.i431, 0
  %cmp1.i433 = icmp slt i32 %s3.0, 0
  %or.cond.i434 = and i1 %cmp.i432, %cmp1.i433
  %cmp3.i435 = icmp slt i32 %22, 0
  %or.cond8.i436 = and i1 %or.cond.i434, %cmp3.i435
  %cond.i437 = select i1 %or.cond8.i436, i32 -2147483648, i32 %add.i431
  store i32 %cond.i437, i32* %score6, align 4, !tbaa !0
  %cmp95 = icmp sgt i32 %cond.i465, %cond.i437
  %cond = select i1 %cmp95, i32 %cond.i465, i32 %cond.i437
  %arrayidx96 = getelementptr inbounds i32* %1, i64 29
  %23 = load i32* %arrayidx96, align 4, !tbaa !0
  %add.i424 = add nsw i32 %23, %cond.i465
  %cmp.i425 = icmp sgt i32 %add.i424, 0
  %cmp1.i426 = icmp slt i32 %cond.i465, 0
  %or.cond.i427 = and i1 %cmp.i425, %cmp1.i426
  %cmp3.i428 = icmp slt i32 %23, 0
  %or.cond8.i429 = and i1 %or.cond.i427, %cmp3.i428
  %cond.i430 = select i1 %or.cond8.i429, i32 -2147483648, i32 %add.i424
  %arrayidx98 = getelementptr inbounds i32* %1, i64 23
  %24 = load i32* %arrayidx98, align 4, !tbaa !0
  %add.i417 = add nsw i32 %cond.i437, %24
  %cmp.i418 = icmp sgt i32 %add.i417, 0
  %cmp1.i419 = icmp slt i32 %cond.i437, 0
  %or.cond.i420 = and i1 %cmp.i418, %cmp1.i419
  %cmp3.i421 = icmp slt i32 %24, 0
  %or.cond8.i422 = and i1 %or.cond.i420, %cmp3.i421
  %cond.i423 = select i1 %or.cond8.i422, i32 -2147483648, i32 %add.i417
  %cmp100 = icmp slt i32 %cond.i430, %cond.i423
  %score102 = getelementptr inbounds %struct.hmm_t* %hmm, i64 0, i32 2, i32 0
  br i1 %cmp100, label %if.then101, label %if.else108

if.then101:                                       ; preds = %if.end87
  store i32 %cond.i423, i32* %score102, align 4, !tbaa !0
  %history105 = getelementptr inbounds %struct.hmm_state_t* %2, i64 3, i32 1
  %25 = load i32* %history105, align 4, !tbaa !0
  %history107 = getelementptr inbounds %struct.hmm_t* %hmm, i64 0, i32 2, i32 1
  store i32 %25, i32* %history107, align 4, !tbaa !0
  br label %if.end116

if.else108:                                       ; preds = %if.end87
  store i32 %cond.i430, i32* %score102, align 4, !tbaa !0
  %history113 = getelementptr inbounds %struct.hmm_state_t* %2, i64 4, i32 1
  %26 = load i32* %history113, align 4, !tbaa !0
  %history115 = getelementptr inbounds %struct.hmm_t* %hmm, i64 0, i32 2, i32 1
  store i32 %26, i32* %history115, align 4, !tbaa !0
  br label %if.end116

if.end116:                                        ; preds = %if.else108, %if.then101
  %27 = load i32* %score11, align 4, !tbaa !0
  %arrayidx120 = getelementptr inbounds i32* %1, i64 14
  %28 = load i32* %arrayidx120, align 4, !tbaa !0
  %add.i410 = add nsw i32 %28, %27
  %cmp.i411 = icmp sgt i32 %add.i410, 0
  %cmp1.i412 = icmp slt i32 %27, 0
  %or.cond.i413 = and i1 %cmp.i411, %cmp1.i412
  %cmp3.i414 = icmp slt i32 %28, 0
  %or.cond8.i415 = and i1 %or.cond.i413, %cmp3.i414
  %cond.i416 = select i1 %or.cond8.i415, i32 -2147483648, i32 %add.i410
  %29 = load i32* %score56, align 4, !tbaa !0
  %arrayidx125 = getelementptr inbounds i32* %1, i64 8
  %30 = load i32* %arrayidx125, align 4, !tbaa !0
  %add.i403 = add nsw i32 %30, %29
  %cmp.i404 = icmp sgt i32 %add.i403, 0
  %cmp1.i405 = icmp slt i32 %29, 0
  %or.cond.i406 = and i1 %cmp.i404, %cmp1.i405
  %cmp3.i407 = icmp slt i32 %30, 0
  %or.cond8.i408 = and i1 %or.cond.i406, %cmp3.i407
  %cond.i409 = select i1 %or.cond8.i408, i32 -2147483648, i32 %add.i403
  %score129 = getelementptr inbounds %struct.hmm_state_t* %2, i64 0, i32 0
  %31 = load i32* %score129, align 4, !tbaa !0
  %arrayidx130 = getelementptr inbounds i32* %1, i64 2
  %32 = load i32* %arrayidx130, align 4, !tbaa !0
  %add.i396 = add nsw i32 %32, %31
  %cmp.i397 = icmp sgt i32 %add.i396, 0
  %cmp1.i398 = icmp slt i32 %31, 0
  %or.cond.i399 = and i1 %cmp.i397, %cmp1.i398
  %cmp3.i400 = icmp slt i32 %32, 0
  %or.cond8.i401 = and i1 %or.cond.i399, %cmp3.i400
  %cond.i402 = select i1 %or.cond8.i401, i32 -2147483648, i32 %add.i396
  %cmp132 = icmp slt i32 %cond.i416, %cond.i409
  br i1 %cmp132, label %if.then133, label %if.else150

if.then133:                                       ; preds = %if.end116
  %cmp134 = icmp slt i32 %cond.i409, %cond.i402
  br i1 %cmp134, label %if.else142, label %if.then135

if.then135:                                       ; preds = %if.then133
  %history138 = getelementptr inbounds %struct.hmm_state_t* %2, i64 1, i32 1
  %33 = load i32* %history138, align 4, !tbaa !0
  %history141 = getelementptr inbounds %struct.hmm_state_t* %2, i64 2, i32 1
  store i32 %33, i32* %history141, align 4, !tbaa !0
  br label %if.end160

if.else142:                                       ; preds = %if.then133
  %history145 = getelementptr inbounds %struct.hmm_state_t* %2, i64 0, i32 1
  %34 = load i32* %history145, align 4, !tbaa !0
  %history148 = getelementptr inbounds %struct.hmm_state_t* %2, i64 2, i32 1
  store i32 %34, i32* %history148, align 4, !tbaa !0
  br label %if.end160

if.else150:                                       ; preds = %if.end116
  %cmp151 = icmp slt i32 %cond.i416, %cond.i402
  br i1 %cmp151, label %if.then152, label %if.end160

if.then152:                                       ; preds = %if.else150
  %history155 = getelementptr inbounds %struct.hmm_state_t* %2, i64 0, i32 1
  %35 = load i32* %history155, align 4, !tbaa !0
  %history158 = getelementptr inbounds %struct.hmm_state_t* %2, i64 2, i32 1
  store i32 %35, i32* %history158, align 4, !tbaa !0
  br label %if.end160

if.end160:                                        ; preds = %if.else150, %if.then152, %if.then135, %if.else142
  %s2.0 = phi i32 [ %cond.i409, %if.then135 ], [ %cond.i402, %if.else142 ], [ %cond.i402, %if.then152 ], [ %cond.i416, %if.else150 ]
  %arrayidx161 = getelementptr inbounds i16* %senid, i64 2
  %36 = load i16* %arrayidx161, align 2, !tbaa !4
  %idxprom162 = sext i16 %36 to i64
  %arrayidx163 = getelementptr inbounds i32* %senscr, i64 %idxprom162
  %37 = load i32* %arrayidx163, align 4, !tbaa !0
  %add.i389 = add nsw i32 %37, %s2.0
  %cmp.i390 = icmp sgt i32 %add.i389, 0
  %cmp1.i391 = icmp slt i32 %s2.0, 0
  %or.cond.i392 = and i1 %cmp.i390, %cmp1.i391
  %cmp3.i393 = icmp slt i32 %37, 0
  %or.cond8.i394 = and i1 %or.cond.i392, %cmp3.i393
  %cond.i395 = select i1 %or.cond8.i394, i32 -2147483648, i32 %add.i389
  store i32 %cond.i395, i32* %score11, align 4, !tbaa !0
  %cmp168 = icmp slt i32 %cond, %cond.i395
  %call164.cond = select i1 %cmp168, i32 %cond.i395, i32 %cond
  %arrayidx174 = getelementptr inbounds i32* %1, i64 7
  %38 = load i32* %arrayidx174, align 4, !tbaa !0
  %add.i382 = add nsw i32 %38, %29
  %cmp.i383 = icmp sgt i32 %add.i382, 0
  %or.cond.i385 = and i1 %cmp.i383, %cmp1.i405
  %cmp3.i386 = icmp slt i32 %38, 0
  %or.cond8.i387 = and i1 %or.cond.i385, %cmp3.i386
  %cond.i388 = select i1 %or.cond8.i387, i32 -2147483648, i32 %add.i382
  %arrayidx179 = getelementptr inbounds i32* %1, i64 1
  %39 = load i32* %arrayidx179, align 4, !tbaa !0
  %add.i375 = add nsw i32 %39, %31
  %cmp.i376 = icmp sgt i32 %add.i375, 0
  %or.cond.i378 = and i1 %cmp.i376, %cmp1.i398
  %cmp3.i379 = icmp slt i32 %39, 0
  %or.cond8.i380 = and i1 %or.cond.i378, %cmp3.i379
  %cond.i381 = select i1 %or.cond8.i380, i32 -2147483648, i32 %add.i375
  %cmp181 = icmp slt i32 %cond.i388, %cond.i381
  br i1 %cmp181, label %if.then182, label %if.end189

if.then182:                                       ; preds = %if.end160
  %history185 = getelementptr inbounds %struct.hmm_state_t* %2, i64 0, i32 1
  %40 = load i32* %history185, align 4, !tbaa !0
  %history188 = getelementptr inbounds %struct.hmm_state_t* %2, i64 1, i32 1
  store i32 %40, i32* %history188, align 4, !tbaa !0
  br label %if.end189

if.end189:                                        ; preds = %if.then182, %if.end160
  %s1.0 = phi i32 [ %cond.i381, %if.then182 ], [ %cond.i388, %if.end160 ]
  %arrayidx190 = getelementptr inbounds i16* %senid, i64 1
  %41 = load i16* %arrayidx190, align 2, !tbaa !4
  %idxprom191 = sext i16 %41 to i64
  %arrayidx192 = getelementptr inbounds i32* %senscr, i64 %idxprom191
  %42 = load i32* %arrayidx192, align 4, !tbaa !0
  %add.i368 = add nsw i32 %42, %s1.0
  %cmp.i369 = icmp sgt i32 %add.i368, 0
  %cmp1.i370 = icmp slt i32 %s1.0, 0
  %or.cond.i371 = and i1 %cmp.i369, %cmp1.i370
  %cmp3.i372 = icmp slt i32 %42, 0
  %or.cond8.i373 = and i1 %or.cond.i371, %cmp3.i372
  %cond.i374 = select i1 %or.cond8.i373, i32 -2147483648, i32 %add.i368
  store i32 %cond.i374, i32* %score56, align 4, !tbaa !0
  %cmp197 = icmp slt i32 %call164.cond, %cond.i374
  %call193.call164.cond = select i1 %cmp197, i32 %cond.i374, i32 %call164.cond
  %43 = load i32* %1, align 4, !tbaa !0
  %add.i361 = add nsw i32 %43, %31
  %cmp.i362 = icmp sgt i32 %add.i361, 0
  %or.cond.i364 = and i1 %cmp.i362, %cmp1.i398
  %cmp3.i365 = icmp slt i32 %43, 0
  %or.cond8.i366 = and i1 %or.cond.i364, %cmp3.i365
  %cond.i367 = select i1 %or.cond8.i366, i32 -2147483648, i32 %add.i361
  %score205 = getelementptr inbounds %struct.hmm_t* %hmm, i64 0, i32 1, i32 0
  %44 = load i32* %score205, align 4, !tbaa !0
  %cmp206 = icmp slt i32 %cond.i367, %44
  br i1 %cmp206, label %if.then207, label %if.end215

if.then207:                                       ; preds = %if.end189
  %history211 = getelementptr inbounds %struct.hmm_t* %hmm, i64 0, i32 1, i32 1
  %45 = load i32* %history211, align 4, !tbaa !0
  %history214 = getelementptr inbounds %struct.hmm_state_t* %2, i64 0, i32 1
  store i32 %45, i32* %history214, align 4, !tbaa !0
  br label %if.end215

if.end215:                                        ; preds = %if.then207, %if.end189
  %s0.0 = phi i32 [ %44, %if.then207 ], [ %cond.i367, %if.end189 ]
  %46 = load i16* %senid, align 2, !tbaa !4
  %idxprom217 = sext i16 %46 to i64
  %arrayidx218 = getelementptr inbounds i32* %senscr, i64 %idxprom217
  %47 = load i32* %arrayidx218, align 4, !tbaa !0
  %add.i354 = add nsw i32 %47, %s0.0
  %cmp.i355 = icmp sgt i32 %add.i354, 0
  %cmp1.i356 = icmp slt i32 %s0.0, 0
  %or.cond.i357 = and i1 %cmp.i355, %cmp1.i356
  %cmp3.i358 = icmp slt i32 %47, 0
  %or.cond8.i359 = and i1 %or.cond.i357, %cmp3.i358
  %cond.i360 = select i1 %or.cond8.i359, i32 -2147483648, i32 %add.i354
  store i32 %cond.i360, i32* %score129, align 4, !tbaa !0
  %cmp223 = icmp slt i32 %call193.call164.cond, %cond.i360
  %call219.call193.call164.cond = select i1 %cmp223, i32 %cond.i360, i32 %call193.call164.cond
  store i32 -939524096, i32* %score205, align 4, !tbaa !0
  %bestscore = getelementptr inbounds %struct.hmm_t* %hmm, i64 0, i32 4
  store i32 %call219.call193.call164.cond, i32* %bestscore, align 4, !tbaa !0
  ret i32 %call219.call193.call164.cond
}

; Function Attrs: nounwind optsize uwtable
define i32 @hmm_vit_eval_3st(%struct.hmm_t* nocapture %hmm, i16* nocapture %senid, i32* nocapture %senscr) #0 {
entry:
  %tp1 = getelementptr inbounds %struct.hmm_t* %hmm, i64 0, i32 3
  %0 = load i32*** %tp1, align 8, !tbaa !3
  %1 = load i32** %0, align 8, !tbaa !3
  %state = getelementptr inbounds %struct.hmm_t* %hmm, i64 0, i32 0
  %2 = load %struct.hmm_state_t** %state, align 8, !tbaa !3
  %score = getelementptr inbounds %struct.hmm_state_t* %2, i64 2, i32 0
  %3 = load i32* %score, align 4, !tbaa !0
  %arrayidx3 = getelementptr inbounds i32* %1, i64 10
  %4 = load i32* %arrayidx3, align 4, !tbaa !0
  %add.i = add nsw i32 %4, %3
  %cmp.i = icmp sgt i32 %add.i, 0
  %cmp1.i = icmp slt i32 %3, 0
  %or.cond.i = and i1 %cmp.i, %cmp1.i
  %cmp3.i = icmp slt i32 %4, 0
  %or.cond8.i = and i1 %or.cond.i, %cmp3.i
  %cond.i = select i1 %or.cond8.i, i32 -2147483648, i32 %add.i
  %score6 = getelementptr inbounds %struct.hmm_state_t* %2, i64 1, i32 0
  %5 = load i32* %score6, align 4, !tbaa !0
  %arrayidx7 = getelementptr inbounds i32* %1, i64 6
  %6 = load i32* %arrayidx7, align 4, !tbaa !0
  %add.i290 = add nsw i32 %6, %5
  %cmp.i291 = icmp sgt i32 %add.i290, 0
  %cmp1.i292 = icmp slt i32 %5, 0
  %or.cond.i293 = and i1 %cmp.i291, %cmp1.i292
  %cmp3.i294 = icmp slt i32 %6, 0
  %or.cond8.i295 = and i1 %or.cond.i293, %cmp3.i294
  %cond.i296 = select i1 %or.cond8.i295, i32 -2147483648, i32 %add.i290
  %arrayidx9 = getelementptr inbounds i32* %1, i64 2
  %7 = load i32* %arrayidx9, align 4, !tbaa !0
  %cmp = icmp sgt i32 %7, -939524096
  br i1 %cmp, label %if.then, label %if.else41

if.then:                                          ; preds = %entry
  %score12 = getelementptr inbounds %struct.hmm_state_t* %2, i64 0, i32 0
  %8 = load i32* %score12, align 4, !tbaa !0
  %add.i283 = add nsw i32 %8, %7
  %cmp.i284 = icmp sgt i32 %add.i283, 0
  %cmp1.i285 = icmp slt i32 %8, 0
  %or.cond.i286 = and i1 %cmp.i284, %cmp1.i285
  %cmp3.i287 = icmp slt i32 %7, 0
  %or.cond8.i288 = and i1 %or.cond.i286, %cmp3.i287
  %cond.i289 = select i1 %or.cond8.i288, i32 -2147483648, i32 %add.i283
  %cmp15 = icmp slt i32 %cond.i, %cond.i296
  br i1 %cmp15, label %if.then16, label %if.else30

if.then16:                                        ; preds = %if.then
  %cmp17 = icmp slt i32 %cond.i296, %cond.i289
  br i1 %cmp17, label %if.else, label %if.then18

if.then18:                                        ; preds = %if.then16
  %history = getelementptr inbounds %struct.hmm_state_t* %2, i64 1, i32 1
  %9 = load i32* %history, align 4, !tbaa !0
  %history23 = getelementptr inbounds %struct.hmm_state_t* %2, i64 2, i32 1
  store i32 %9, i32* %history23, align 4, !tbaa !0
  br label %if.end51

if.else:                                          ; preds = %if.then16
  %history26 = getelementptr inbounds %struct.hmm_state_t* %2, i64 0, i32 1
  %10 = load i32* %history26, align 4, !tbaa !0
  %history29 = getelementptr inbounds %struct.hmm_state_t* %2, i64 2, i32 1
  store i32 %10, i32* %history29, align 4, !tbaa !0
  br label %if.end51

if.else30:                                        ; preds = %if.then
  %cmp31 = icmp slt i32 %cond.i, %cond.i289
  br i1 %cmp31, label %if.then32, label %if.end51

if.then32:                                        ; preds = %if.else30
  %history35 = getelementptr inbounds %struct.hmm_state_t* %2, i64 0, i32 1
  %11 = load i32* %history35, align 4, !tbaa !0
  %history38 = getelementptr inbounds %struct.hmm_state_t* %2, i64 2, i32 1
  store i32 %11, i32* %history38, align 4, !tbaa !0
  br label %if.end51

if.else41:                                        ; preds = %entry
  %cmp42 = icmp slt i32 %cond.i, %cond.i296
  br i1 %cmp42, label %if.then43, label %if.end51

if.then43:                                        ; preds = %if.else41
  %history46 = getelementptr inbounds %struct.hmm_state_t* %2, i64 1, i32 1
  %12 = load i32* %history46, align 4, !tbaa !0
  %history49 = getelementptr inbounds %struct.hmm_state_t* %2, i64 2, i32 1
  store i32 %12, i32* %history49, align 4, !tbaa !0
  br label %if.end51

if.end51:                                         ; preds = %if.else41, %if.then43, %if.else, %if.then18, %if.then32, %if.else30
  %s2.0 = phi i32 [ %cond.i296, %if.then18 ], [ %cond.i289, %if.else ], [ %cond.i289, %if.then32 ], [ %cond.i, %if.else30 ], [ %cond.i296, %if.then43 ], [ %cond.i, %if.else41 ]
  %arrayidx52 = getelementptr inbounds i16* %senid, i64 2
  %13 = load i16* %arrayidx52, align 2, !tbaa !4
  %idxprom = sext i16 %13 to i64
  %arrayidx53 = getelementptr inbounds i32* %senscr, i64 %idxprom
  %14 = load i32* %arrayidx53, align 4, !tbaa !0
  %add.i276 = add nsw i32 %14, %s2.0
  %cmp.i277 = icmp sgt i32 %add.i276, 0
  %cmp1.i278 = icmp slt i32 %s2.0, 0
  %or.cond.i279 = and i1 %cmp.i277, %cmp1.i278
  %cmp3.i280 = icmp slt i32 %14, 0
  %or.cond8.i281 = and i1 %or.cond.i279, %cmp3.i280
  %cond.i282 = select i1 %or.cond8.i281, i32 -2147483648, i32 %add.i276
  store i32 %cond.i282, i32* %score, align 4, !tbaa !0
  %arrayidx61 = getelementptr inbounds i32* %1, i64 5
  %15 = load i32* %arrayidx61, align 4, !tbaa !0
  %add.i269 = add nsw i32 %15, %5
  %cmp.i270 = icmp sgt i32 %add.i269, 0
  %or.cond.i272 = and i1 %cmp.i270, %cmp1.i292
  %cmp3.i273 = icmp slt i32 %15, 0
  %or.cond8.i274 = and i1 %or.cond.i272, %cmp3.i273
  %cond.i275 = select i1 %or.cond8.i274, i32 -2147483648, i32 %add.i269
  %score65 = getelementptr inbounds %struct.hmm_state_t* %2, i64 0, i32 0
  %16 = load i32* %score65, align 4, !tbaa !0
  %arrayidx66 = getelementptr inbounds i32* %1, i64 1
  %17 = load i32* %arrayidx66, align 4, !tbaa !0
  %add.i262 = add nsw i32 %17, %16
  %cmp.i263 = icmp sgt i32 %add.i262, 0
  %cmp1.i264 = icmp slt i32 %16, 0
  %or.cond.i265 = and i1 %cmp.i263, %cmp1.i264
  %cmp3.i266 = icmp slt i32 %17, 0
  %or.cond8.i267 = and i1 %or.cond.i265, %cmp3.i266
  %cond.i268 = select i1 %or.cond8.i267, i32 -2147483648, i32 %add.i262
  %cmp68 = icmp slt i32 %cond.i275, %cond.i268
  br i1 %cmp68, label %if.then69, label %if.end76

if.then69:                                        ; preds = %if.end51
  %history72 = getelementptr inbounds %struct.hmm_state_t* %2, i64 0, i32 1
  %18 = load i32* %history72, align 4, !tbaa !0
  %history75 = getelementptr inbounds %struct.hmm_state_t* %2, i64 1, i32 1
  store i32 %18, i32* %history75, align 4, !tbaa !0
  br label %if.end76

if.end76:                                         ; preds = %if.then69, %if.end51
  %s1.0 = phi i32 [ %cond.i268, %if.then69 ], [ %cond.i275, %if.end51 ]
  %arrayidx77 = getelementptr inbounds i16* %senid, i64 1
  %19 = load i16* %arrayidx77, align 2, !tbaa !4
  %idxprom78 = sext i16 %19 to i64
  %arrayidx79 = getelementptr inbounds i32* %senscr, i64 %idxprom78
  %20 = load i32* %arrayidx79, align 4, !tbaa !0
  %add.i255 = add nsw i32 %20, %s1.0
  %cmp.i256 = icmp sgt i32 %add.i255, 0
  %cmp1.i257 = icmp slt i32 %s1.0, 0
  %or.cond.i258 = and i1 %cmp.i256, %cmp1.i257
  %cmp3.i259 = icmp slt i32 %20, 0
  %or.cond8.i260 = and i1 %or.cond.i258, %cmp3.i259
  %cond.i261 = select i1 %or.cond8.i260, i32 -2147483648, i32 %add.i255
  store i32 %cond.i261, i32* %score6, align 4, !tbaa !0
  %cmp84 = icmp sgt i32 %cond.i282, %cond.i261
  %cond = select i1 %cmp84, i32 %cond.i282, i32 %cond.i261
  %arrayidx85 = getelementptr inbounds i32* %1, i64 11
  %21 = load i32* %arrayidx85, align 4, !tbaa !0
  %add.i248 = add nsw i32 %21, %cond.i282
  %cmp.i249 = icmp sgt i32 %add.i248, 0
  %cmp1.i250 = icmp slt i32 %cond.i282, 0
  %or.cond.i251 = and i1 %cmp.i249, %cmp1.i250
  %cmp3.i252 = icmp slt i32 %21, 0
  %or.cond8.i253 = and i1 %or.cond.i251, %cmp3.i252
  %cond.i254 = select i1 %or.cond8.i253, i32 -2147483648, i32 %add.i248
  %arrayidx87 = getelementptr inbounds i32* %1, i64 7
  %22 = load i32* %arrayidx87, align 4, !tbaa !0
  %cmp88 = icmp sgt i32 %22, -939524096
  br i1 %cmp88, label %if.then89, label %if.else109

if.then89:                                        ; preds = %if.end76
  %add.i241 = add nsw i32 %cond.i261, %22
  %cmp.i242 = icmp sgt i32 %add.i241, 0
  %cmp1.i243 = icmp slt i32 %cond.i261, 0
  %or.cond.i244 = and i1 %cmp.i242, %cmp1.i243
  %cmp3.i245 = icmp slt i32 %22, 0
  %or.cond8.i246 = and i1 %or.cond.i244, %cmp3.i245
  %cond.i247 = select i1 %or.cond8.i246, i32 -2147483648, i32 %add.i241
  %cmp92 = icmp slt i32 %cond.i254, %cond.i247
  %score94 = getelementptr inbounds %struct.hmm_t* %hmm, i64 0, i32 2, i32 0
  br i1 %cmp92, label %if.then93, label %if.else100

if.then93:                                        ; preds = %if.then89
  store i32 %cond.i247, i32* %score94, align 4, !tbaa !0
  %history97 = getelementptr inbounds %struct.hmm_state_t* %2, i64 1, i32 1
  %23 = load i32* %history97, align 4, !tbaa !0
  %history99 = getelementptr inbounds %struct.hmm_t* %hmm, i64 0, i32 2, i32 1
  store i32 %23, i32* %history99, align 4, !tbaa !0
  br label %if.end117

if.else100:                                       ; preds = %if.then89
  store i32 %cond.i254, i32* %score94, align 4, !tbaa !0
  %history105 = getelementptr inbounds %struct.hmm_state_t* %2, i64 2, i32 1
  %24 = load i32* %history105, align 4, !tbaa !0
  %history107 = getelementptr inbounds %struct.hmm_t* %hmm, i64 0, i32 2, i32 1
  store i32 %24, i32* %history107, align 4, !tbaa !0
  br label %if.end117

if.else109:                                       ; preds = %if.end76
  %score111 = getelementptr inbounds %struct.hmm_t* %hmm, i64 0, i32 2, i32 0
  store i32 %cond.i254, i32* %score111, align 4, !tbaa !0
  %history114 = getelementptr inbounds %struct.hmm_state_t* %2, i64 2, i32 1
  %25 = load i32* %history114, align 4, !tbaa !0
  %history116 = getelementptr inbounds %struct.hmm_t* %hmm, i64 0, i32 2, i32 1
  store i32 %25, i32* %history116, align 4, !tbaa !0
  br label %if.end117

if.end117:                                        ; preds = %if.then93, %if.else100, %if.else109
  %26 = load i32* %score65, align 4, !tbaa !0
  %27 = load i32* %1, align 4, !tbaa !0
  %add.i234 = add nsw i32 %27, %26
  %cmp.i235 = icmp sgt i32 %add.i234, 0
  %cmp1.i236 = icmp slt i32 %26, 0
  %or.cond.i237 = and i1 %cmp.i235, %cmp1.i236
  %cmp3.i238 = icmp slt i32 %27, 0
  %or.cond8.i239 = and i1 %or.cond.i237, %cmp3.i238
  %cond.i240 = select i1 %or.cond8.i239, i32 -2147483648, i32 %add.i234
  %score123 = getelementptr inbounds %struct.hmm_t* %hmm, i64 0, i32 1, i32 0
  %28 = load i32* %score123, align 4, !tbaa !0
  %cmp124 = icmp slt i32 %cond.i240, %28
  br i1 %cmp124, label %if.then125, label %if.end133

if.then125:                                       ; preds = %if.end117
  %history129 = getelementptr inbounds %struct.hmm_t* %hmm, i64 0, i32 1, i32 1
  %29 = load i32* %history129, align 4, !tbaa !0
  %history132 = getelementptr inbounds %struct.hmm_state_t* %2, i64 0, i32 1
  store i32 %29, i32* %history132, align 4, !tbaa !0
  br label %if.end133

if.end133:                                        ; preds = %if.then125, %if.end117
  %s0.0 = phi i32 [ %28, %if.then125 ], [ %cond.i240, %if.end117 ]
  %30 = load i16* %senid, align 2, !tbaa !4
  %idxprom135 = sext i16 %30 to i64
  %arrayidx136 = getelementptr inbounds i32* %senscr, i64 %idxprom135
  %31 = load i32* %arrayidx136, align 4, !tbaa !0
  %add.i227 = add nsw i32 %31, %s0.0
  %cmp.i228 = icmp sgt i32 %add.i227, 0
  %cmp1.i229 = icmp slt i32 %s0.0, 0
  %or.cond.i230 = and i1 %cmp.i228, %cmp1.i229
  %cmp3.i231 = icmp slt i32 %31, 0
  %or.cond8.i232 = and i1 %or.cond.i230, %cmp3.i231
  %cond.i233 = select i1 %or.cond8.i232, i32 -2147483648, i32 %add.i227
  store i32 %cond.i233, i32* %score65, align 4, !tbaa !0
  %cmp141 = icmp slt i32 %cond, %cond.i233
  %call137.cond = select i1 %cmp141, i32 %cond.i233, i32 %cond
  store i32 -939524096, i32* %score123, align 4, !tbaa !0
  %bestscore = getelementptr inbounds %struct.hmm_t* %hmm, i64 0, i32 4
  store i32 %call137.cond, i32* %bestscore, align 4, !tbaa !0
  ret i32 %call137.cond
}

; Function Attrs: nounwind optsize uwtable
define i32 @hmm_dump_vit_eval(%struct.hmm_t* nocapture %hmm, i32 %n_state, i16* %senid, i32* %senscr, %struct._IO_FILE* %fp) #0 {
entry:
  %tobool = icmp ne %struct._IO_FILE* %fp, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @hmm_dump(%struct.hmm_t* %hmm, i32 %n_state, i16* %senid, i32* %senscr, %struct._IO_FILE* %fp) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  switch i32 %n_state, label %if.else5 [
    i32 5, label %if.then1
    i32 3, label %if.then3
  ]

if.then1:                                         ; preds = %if.end
  %call = tail call i32 @hmm_vit_eval_5st(%struct.hmm_t* %hmm, i16* %senid, i32* %senscr) #5
  br label %if.end7

if.then3:                                         ; preds = %if.end
  %call4 = tail call i32 @hmm_vit_eval_3st(%struct.hmm_t* %hmm, i16* %senid, i32* %senscr) #5
  br label %if.end7

if.else5:                                         ; preds = %if.end
  tail call void @_E__pr_header(i8* getelementptr inbounds ([51 x i8]* @.str7, i64 0, i64 0), i64 427, i8* getelementptr inbounds ([12 x i8]* @.str8, i64 0, i64 0)) #4
  tail call void (i8*, ...)* @_E__die_error(i8* getelementptr inbounds ([25 x i8]* @.str9, i64 0, i64 0), i32 %n_state) #4
  br label %if.end7

if.end7:                                          ; preds = %if.then3, %if.else5, %if.then1
  %bs.0 = phi i32 [ %call, %if.then1 ], [ %call4, %if.then3 ], [ 0, %if.else5 ]
  br i1 %tobool, label %if.then9, label %if.end10

if.then9:                                         ; preds = %if.end7
  tail call void @hmm_dump(%struct.hmm_t* %hmm, i32 %n_state, i16* %senid, i32* %senscr, %struct._IO_FILE* %fp) #5
  br label %if.end10

if.end10:                                         ; preds = %if.then9, %if.end7
  ret i32 %bs.0
}

; Function Attrs: optsize
declare void @_E__pr_header(i8*, i64, i8*) #2

; Function Attrs: optsize
declare void @_E__die_error(i8*, ...) #2

; Function Attrs: nounwind
declare i32 @fputc(i32, %struct._IO_FILE* nocapture) #3

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { nounwind optsize }
attributes #5 = { optsize }

!0 = metadata !{metadata !"int", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"any pointer", metadata !1}
!4 = metadata !{metadata !"short", metadata !1}
