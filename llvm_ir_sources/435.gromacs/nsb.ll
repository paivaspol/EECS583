; ModuleID = '../../SPEC/benchspec/CPU2006/435.gromacs/src/nsb.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.t_nsborder = type { i32, i32, i32, i32, i32, i32, i32, [256 x i32], [256 x i32], [256 x i32], [256 x i32] }
%struct.t_block = type { [256 x i32], i32, i32*, i32, i32* }

@.str = private unnamed_addr constant [48 x i8] c"CPU=%3d, lastcg=%5d, targetcg=%5d, myshift=%5d\0A\00", align 1
@.str1 = private unnamed_addr constant [35 x i8] c"nsb->shift = %3d, nsb->bshift=%3d\0A\00", align 1
@.str2 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str3 = private unnamed_addr constant [22 x i8] c"nsb->nodeid:     %5d\0A\00", align 1
@.str4 = private unnamed_addr constant [19 x i8] c"nsb->nnodes:  %5d\0A\00", align 1
@.str5 = private unnamed_addr constant [19 x i8] c"nsb->cgtotal: %5d\0A\00", align 1
@.str6 = private unnamed_addr constant [19 x i8] c"nsb->natoms:  %5d\0A\00", align 1
@.str7 = private unnamed_addr constant [19 x i8] c"nsb->shift:   %5d\0A\00", align 1
@.str8 = private unnamed_addr constant [19 x i8] c"nsb->bshift:  %5d\0A\00", align 1
@.str9 = private unnamed_addr constant [42 x i8] c"Nodeid   index  homenr  cgload  workload\0A\00", align 1
@.str10 = private unnamed_addr constant [18 x i8] c"%6d%8d%8d%8d%10d\0A\00", align 1

; Function Attrs: nounwind optsize uwtable
define void @calc_nsbshift(%struct._IO_FILE* %fp, %struct.t_nsborder* nocapture %nsb) #0 {
entry:
  %bshift = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 6
  store i32 0, i32* %bshift, align 4, !tbaa !0
  %nnodes = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 1
  %0 = load i32* %nnodes, align 4, !tbaa !0
  %cmp116 = icmp sgt i32 %0, 1
  br i1 %cmp116, label %for.body, label %for.end15

for.body:                                         ; preds = %entry, %for.end
  %1 = phi i32 [ %.sub9, %for.end ], [ 0, %entry ]
  %indvars.iv130 = phi i64 [ %indvars.iv.next131, %for.end ], [ 1, %entry ]
  %i.0117 = phi i32 [ %inc, %for.end ], [ 1, %entry ]
  %2 = add nsw i64 %indvars.iv130, -1
  %arrayidx = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 10, i64 %2
  %3 = load i32* %arrayidx, align 4, !tbaa !0
  br label %for.cond1

for.cond1:                                        ; preds = %land.rhs, %for.body
  %indvars.iv126 = phi i64 [ %indvars.iv.next127, %land.rhs ], [ %indvars.iv130, %for.body ]
  %nshift.0 = phi i32 [ %sub3, %land.rhs ], [ %i.0117, %for.body ]
  %4 = trunc i64 %indvars.iv126 to i32
  %cmp2 = icmp sgt i32 %4, 0
  br i1 %cmp2, label %land.rhs, label %for.end

land.rhs:                                         ; preds = %for.cond1
  %sub3 = add nsw i32 %nshift.0, -1
  %idxprom4 = sext i32 %sub3 to i64
  %arrayidx5 = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 9, i64 %idxprom4
  %5 = load i32* %arrayidx5, align 4, !tbaa !0
  %cmp6 = icmp sgt i32 %5, %3
  %indvars.iv.next127 = add i64 %indvars.iv126, -1
  br i1 %cmp6, label %for.cond1, label %for.end

for.end:                                          ; preds = %for.cond1, %land.rhs
  %6 = trunc i64 %indvars.iv130 to i32
  %sub9 = sub nsw i32 %6, %nshift.0
  %cmp10 = icmp sgt i32 %1, %sub9
  %.sub9 = select i1 %cmp10, i32 %1, i32 %sub9
  store i32 %.sub9, i32* %bshift, align 4, !tbaa !0
  %indvars.iv.next131 = add i64 %indvars.iv130, 1
  %inc = add nsw i32 %i.0117, 1
  %7 = trunc i64 %indvars.iv.next131 to i32
  %cmp = icmp slt i32 %7, %0
  br i1 %cmp, label %for.body, label %for.end15

for.end15:                                        ; preds = %for.end, %entry
  %add = add nsw i32 %0, 1
  %div = sdiv i32 %add, 2
  %shift = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 5
  store i32 %div, i32* %shift, align 4, !tbaa !0
  %cmp19114 = icmp sgt i32 %0, 0
  br i1 %cmp19114, label %for.body20.lr.ph, label %for.end56

for.body20.lr.ph:                                 ; preds = %for.end15
  %cgtotal = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 2
  %tobool = icmp eq %struct._IO_FILE* %fp, null
  br label %for.body20

for.body20:                                       ; preds = %if.end, %for.body20.lr.ph
  %indvars.iv122 = phi i64 [ 0, %for.body20.lr.ph ], [ %indvars.iv.next123, %if.end ]
  %arrayidx23 = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 9, i64 %indvars.iv122
  %8 = load i32* %arrayidx23, align 4, !tbaa !0
  %sub24 = add nsw i32 %8, -1
  %9 = load i32* %cgtotal, align 4, !tbaa !0
  %call = tail call i32 @calc_naaj(i32 %sub24, i32 %9) #4
  %add25 = add nsw i32 %call, %sub24
  %10 = load i32* %cgtotal, align 4, !tbaa !0
  %rem = srem i32 %add25, %10
  %11 = load i32* %nnodes, align 4, !tbaa !0
  %cmp29112 = icmp sgt i32 %11, 0
  br i1 %cmp29112, label %land.rhs30, label %for.end39

for.cond27:                                       ; preds = %land.rhs30
  %12 = trunc i64 %indvars.iv.next to i32
  %cmp29 = icmp slt i32 %12, %11
  br i1 %cmp29, label %land.rhs30, label %for.end39

land.rhs30:                                       ; preds = %for.body20, %for.cond27
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.cond27 ], [ 0, %for.body20 ]
  %nshift.1113 = phi i32 [ %inc38, %for.cond27 ], [ 0, %for.body20 ]
  %arrayidx33 = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 9, i64 %indvars.iv
  %13 = load i32* %arrayidx33, align 4, !tbaa !0
  %cmp34 = icmp sgt i32 %rem, %13
  %indvars.iv.next = add i64 %indvars.iv, 1
  %inc38 = add nsw i32 %nshift.1113, 1
  br i1 %cmp34, label %for.cond27, label %for.end39

for.end39:                                        ; preds = %for.cond27, %land.rhs30, %for.body20
  %nshift.1.lcssa = phi i32 [ 0, %for.body20 ], [ %nshift.1113, %land.rhs30 ], [ %inc38, %for.cond27 ]
  %14 = trunc i64 %indvars.iv122 to i32
  %sub40 = sub i32 %nshift.1.lcssa, %14
  %add42 = add nsw i32 %sub40, %11
  %rem44 = srem i32 %add42, %11
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %for.end39
  %call45 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([48 x i8]* @.str, i64 0, i64 0), i32 %14, i32 %sub24, i32 %rem, i32 %rem44) #4
  %.pre = load i32* %nnodes, align 4, !tbaa !0
  br label %if.end

if.end:                                           ; preds = %for.end39, %if.then
  %15 = phi i32 [ %11, %for.end39 ], [ %.pre, %if.then ]
  %16 = load i32* %shift, align 4, !tbaa !0
  %cmp47 = icmp sgt i32 %rem44, %16
  %rem44. = select i1 %cmp47, i32 %rem44, i32 %16
  store i32 %rem44., i32* %shift, align 4, !tbaa !0
  %indvars.iv.next123 = add i64 %indvars.iv122, 1
  %17 = trunc i64 %indvars.iv.next123 to i32
  %cmp19 = icmp slt i32 %17, %15
  br i1 %cmp19, label %for.body20, label %for.end56

for.end56:                                        ; preds = %if.end, %for.end15
  %18 = phi i32 [ %div, %for.end15 ], [ %rem44., %if.end ]
  %tobool57 = icmp eq %struct._IO_FILE* %fp, null
  br i1 %tobool57, label %if.end62, label %if.then58

if.then58:                                        ; preds = %for.end56
  %19 = load i32* %bshift, align 4, !tbaa !0
  %call61 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([35 x i8]* @.str1, i64 0, i64 0), i32 %18, i32 %19) #4
  br label %if.end62

if.end62:                                         ; preds = %for.end56, %if.then58
  ret void
}

; Function Attrs: optsize
declare i32 @calc_naaj(i32, i32) #1

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #2

; Function Attrs: nounwind optsize uwtable
define void @calc_nsb(%struct._IO_FILE* %fp, %struct.t_block* nocapture %cgs, i32 %nnodes, %struct.t_nsborder* nocapture %nsb, i32 %nstDlb) #0 {
entry:
  br label %for.body

for.body:                                         ; preds = %for.body, %entry
  %indvars.iv93 = phi i64 [ 0, %entry ], [ %indvars.iv.next94, %for.body ]
  %arrayidx = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 10, i64 %indvars.iv93
  store i32 0, i32* %arrayidx, align 4, !tbaa !0
  %arrayidx2 = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 9, i64 %indvars.iv93
  store i32 0, i32* %arrayidx2, align 4, !tbaa !0
  %arrayidx4 = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 8, i64 %indvars.iv93
  store i32 0, i32* %arrayidx4, align 4, !tbaa !0
  %arrayidx6 = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 7, i64 %indvars.iv93
  store i32 0, i32* %arrayidx6, align 4, !tbaa !0
  %indvars.iv.next94 = add i64 %indvars.iv93, 1
  %lftr.wideiv95 = trunc i64 %indvars.iv.next94 to i32
  %exitcond96 = icmp eq i32 %lftr.wideiv95, 256
  br i1 %exitcond96, label %for.end, label %for.body

for.end:                                          ; preds = %for.body
  %nnodes7 = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 1
  store i32 %nnodes, i32* %nnodes7, align 4, !tbaa !0
  %nstDlb8 = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 4
  store i32 %nstDlb, i32* %nstDlb8, align 4, !tbaa !0
  %nr = getelementptr inbounds %struct.t_block* %cgs, i64 0, i32 1
  %0 = load i32* %nr, align 4, !tbaa !0
  %cgtotal = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 2
  store i32 %0, i32* %cgtotal, align 4, !tbaa !0
  %nra = getelementptr inbounds %struct.t_block* %cgs, i64 0, i32 3
  %1 = load i32* %nra, align 4, !tbaa !0
  %natoms = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 3
  store i32 %1, i32* %natoms, align 4, !tbaa !0
  %cmp1087 = icmp sgt i32 %nnodes, 0
  br i1 %cmp1087, label %for.body11.lr.ph, label %for.end48

for.body11.lr.ph:                                 ; preds = %for.end
  %index28 = getelementptr inbounds %struct.t_block* %cgs, i64 0, i32 2
  br label %for.body11

for.body11:                                       ; preds = %cond.end, %for.body11.lr.ph
  %indvars.iv = phi i64 [ 0, %for.body11.lr.ph ], [ %indvars.iv.next, %cond.end ]
  %2 = trunc i64 %indvars.iv to i32
  %cmp12 = icmp sgt i32 %2, 0
  br i1 %cmp12, label %cond.true, label %cond.end

cond.true:                                        ; preds = %for.body11
  %3 = add nsw i64 %indvars.iv, -1
  %arrayidx14 = getelementptr inbounds %struct.t_block* %cgs, i64 0, i32 0, i64 %3
  %4 = load i32* %arrayidx14, align 4, !tbaa !0
  %phitmp = sext i32 %4 to i64
  br label %cond.end

cond.end:                                         ; preds = %for.body11, %cond.true
  %cond = phi i64 [ %phitmp, %cond.true ], [ 0, %for.body11 ]
  %arrayidx17 = getelementptr inbounds %struct.t_block* %cgs, i64 0, i32 0, i64 %indvars.iv
  %5 = load i32* %arrayidx17, align 4, !tbaa !0
  %arrayidx20 = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 9, i64 %indvars.iv
  store i32 %5, i32* %arrayidx20, align 4, !tbaa !0
  %6 = load i32* %arrayidx17, align 4, !tbaa !0
  %arrayidx26 = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 10, i64 %indvars.iv
  store i32 %6, i32* %arrayidx26, align 4, !tbaa !0
  %7 = load i32** %index28, align 8, !tbaa !3
  %arrayidx29 = getelementptr inbounds i32* %7, i64 %cond
  %8 = load i32* %arrayidx29, align 4, !tbaa !0
  %arrayidx32 = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 8, i64 %indvars.iv
  store i32 %8, i32* %arrayidx32, align 4, !tbaa !0
  %9 = load i32* %arrayidx17, align 4, !tbaa !0
  %idxprom36 = sext i32 %9 to i64
  %arrayidx38 = getelementptr inbounds i32* %7, i64 %idxprom36
  %10 = load i32* %arrayidx38, align 4, !tbaa !0
  %sub42 = sub nsw i32 %10, %8
  %arrayidx45 = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 7, i64 %indvars.iv
  store i32 %sub42, i32* %arrayidx45, align 4, !tbaa !0
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %nnodes
  br i1 %exitcond, label %for.end48, label %for.body11

for.end48:                                        ; preds = %cond.end, %for.end
  tail call void @calc_nsbshift(%struct._IO_FILE* %fp, %struct.t_nsborder* %nsb) #5
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @print_nsb(%struct._IO_FILE* %fp, i8* %title, %struct.t_nsborder* nocapture %nsb) #0 {
entry:
  %tobool = icmp eq %struct._IO_FILE* %fp, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([4 x i8]* @.str2, i64 0, i64 0), i8* %title) #4
  %nodeid = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 0
  %0 = load i32* %nodeid, align 4, !tbaa !0
  %call1 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([22 x i8]* @.str3, i64 0, i64 0), i32 %0) #4
  %nnodes = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 1
  %1 = load i32* %nnodes, align 4, !tbaa !0
  %call2 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([19 x i8]* @.str4, i64 0, i64 0), i32 %1) #4
  %cgtotal = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 2
  %2 = load i32* %cgtotal, align 4, !tbaa !0
  %call3 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([19 x i8]* @.str5, i64 0, i64 0), i32 %2) #4
  %natoms = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 3
  %3 = load i32* %natoms, align 4, !tbaa !0
  %call4 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([19 x i8]* @.str6, i64 0, i64 0), i32 %3) #4
  %shift = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 5
  %4 = load i32* %shift, align 4, !tbaa !0
  %call5 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([19 x i8]* @.str7, i64 0, i64 0), i32 %4) #4
  %bshift = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 6
  %5 = load i32* %bshift, align 4, !tbaa !0
  %call6 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([19 x i8]* @.str8, i64 0, i64 0), i32 %5) #4
  %6 = tail call i64 @fwrite(i8* getelementptr inbounds ([42 x i8]* @.str9, i64 0, i64 0), i64 41, i64 1, %struct._IO_FILE* %fp)
  %7 = load i32* %nnodes, align 4, !tbaa !0
  %cmp42 = icmp sgt i32 %7, 0
  br i1 %cmp42, label %for.body, label %for.end

for.body:                                         ; preds = %if.then, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %if.then ]
  %arrayidx = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 8, i64 %indvars.iv
  %8 = load i32* %arrayidx, align 4, !tbaa !0
  %arrayidx10 = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 7, i64 %indvars.iv
  %9 = load i32* %arrayidx10, align 4, !tbaa !0
  %arrayidx12 = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 9, i64 %indvars.iv
  %10 = load i32* %arrayidx12, align 4, !tbaa !0
  %arrayidx14 = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 10, i64 %indvars.iv
  %11 = load i32* %arrayidx14, align 4, !tbaa !0
  %12 = trunc i64 %indvars.iv to i32
  %call15 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([18 x i8]* @.str10, i64 0, i64 0), i32 %12, i32 %8, i32 %9, i32 %10, i32 %11) #4
  %indvars.iv.next = add i64 %indvars.iv, 1
  %13 = load i32* %nnodes, align 4, !tbaa !0
  %14 = trunc i64 %indvars.iv.next to i32
  %cmp = icmp slt i32 %14, %13
  br i1 %cmp, label %for.body, label %for.end

for.end:                                          ; preds = %for.body, %if.then
  %fputc = tail call i32 @fputc(i32 10, %struct._IO_FILE* %fp)
  br label %if.end

if.end:                                           ; preds = %entry, %for.end
  ret void
}

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #3

; Function Attrs: nounwind
declare i32 @fputc(i32, %struct._IO_FILE* nocapture) #3

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { nounwind optsize }
attributes #5 = { optsize }

!0 = metadata !{metadata !"int", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"any pointer", metadata !1}
