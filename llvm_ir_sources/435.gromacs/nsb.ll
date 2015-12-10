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
  tail call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %fp}, i64 0, metadata !86), !dbg !124
  tail call void @llvm.dbg.value(metadata !{%struct.t_nsborder* %nsb}, i64 0, metadata !87), !dbg !124
  %bshift = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 6, !dbg !125
  store i32 0, i32* %bshift, align 4, !dbg !125, !tbaa !126
  tail call void @llvm.dbg.value(metadata !129, i64 0, metadata !88), !dbg !130
  %nnodes = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 1, !dbg !130
  %0 = load i32* %nnodes, align 4, !dbg !130, !tbaa !126
  %cmp116 = icmp sgt i32 %0, 1, !dbg !130
  br i1 %cmp116, label %for.body, label %for.end15, !dbg !130

for.body:                                         ; preds = %entry, %for.end
  %1 = phi i32 [ %.sub9, %for.end ], [ 0, %entry ]
  %indvars.iv130 = phi i64 [ %indvars.iv.next131, %for.end ], [ 1, %entry ]
  %i.0117 = phi i32 [ %inc, %for.end ], [ 1, %entry ]
  %2 = add nsw i64 %indvars.iv130, -1, !dbg !132
  %arrayidx = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 10, i64 %2, !dbg !132
  %3 = load i32* %arrayidx, align 4, !dbg !132, !tbaa !126
  tail call void @llvm.dbg.value(metadata !{i32 %3}, i64 0, metadata !90), !dbg !132
  tail call void @llvm.dbg.value(metadata !{i32 %i.0117}, i64 0, metadata !91), !dbg !134
  br label %for.cond1, !dbg !134

for.cond1:                                        ; preds = %land.rhs, %for.body
  %indvars.iv126 = phi i64 [ %indvars.iv.next127, %land.rhs ], [ %indvars.iv130, %for.body ], !dbg !130
  %nshift.0 = phi i32 [ %sub3, %land.rhs ], [ %i.0117, %for.body ]
  %4 = trunc i64 %indvars.iv126 to i32, !dbg !134
  %cmp2 = icmp sgt i32 %4, 0, !dbg !134
  br i1 %cmp2, label %land.rhs, label %for.end, !dbg !134

land.rhs:                                         ; preds = %for.cond1
  %sub3 = add nsw i32 %nshift.0, -1, !dbg !134
  %idxprom4 = sext i32 %sub3 to i64, !dbg !134
  %arrayidx5 = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 9, i64 %idxprom4, !dbg !134
  %5 = load i32* %arrayidx5, align 4, !dbg !134, !tbaa !126
  %cmp6 = icmp sgt i32 %5, %3, !dbg !134
  %indvars.iv.next127 = add i64 %indvars.iv126, -1
  br i1 %cmp6, label %for.cond1, label %for.end

for.end:                                          ; preds = %for.cond1, %land.rhs
  %6 = trunc i64 %indvars.iv130 to i32, !dbg !136
  %sub9 = sub nsw i32 %6, %nshift.0, !dbg !136
  %cmp10 = icmp sgt i32 %1, %sub9, !dbg !136
  %.sub9 = select i1 %cmp10, i32 %1, i32 %sub9, !dbg !136
  store i32 %.sub9, i32* %bshift, align 4, !dbg !136, !tbaa !126
  %indvars.iv.next131 = add i64 %indvars.iv130, 1, !dbg !130
  %inc = add nsw i32 %i.0117, 1, !dbg !130
  tail call void @llvm.dbg.value(metadata !{i32 %inc}, i64 0, metadata !88), !dbg !130
  %7 = trunc i64 %indvars.iv.next131 to i32, !dbg !130
  %cmp = icmp slt i32 %7, %0, !dbg !130
  br i1 %cmp, label %for.body, label %for.end15, !dbg !130

for.end15:                                        ; preds = %for.end, %entry
  %add = add nsw i32 %0, 1, !dbg !137
  %div = sdiv i32 %add, 2, !dbg !137
  %shift = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 5, !dbg !137
  store i32 %div, i32* %shift, align 4, !dbg !137, !tbaa !126
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !88), !dbg !138
  %cmp19114 = icmp sgt i32 %0, 0, !dbg !138
  br i1 %cmp19114, label %for.body20.lr.ph, label %for.end56, !dbg !138

for.body20.lr.ph:                                 ; preds = %for.end15
  %cgtotal = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 2, !dbg !140
  %tobool = icmp eq %struct._IO_FILE* %fp, null, !dbg !142
  br label %for.body20, !dbg !138

for.body20:                                       ; preds = %if.end, %for.body20.lr.ph
  %indvars.iv122 = phi i64 [ 0, %for.body20.lr.ph ], [ %indvars.iv.next123, %if.end ]
  %arrayidx23 = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 9, i64 %indvars.iv122, !dbg !143
  %8 = load i32* %arrayidx23, align 4, !dbg !143, !tbaa !126
  %sub24 = add nsw i32 %8, -1, !dbg !143
  tail call void @llvm.dbg.value(metadata !{i32 %sub24}, i64 0, metadata !89), !dbg !143
  %9 = load i32* %cgtotal, align 4, !dbg !140, !tbaa !126
  %call = tail call i32 @calc_naaj(i32 %sub24, i32 %9) #5, !dbg !140
  tail call void @llvm.dbg.value(metadata !{i32 %call}, i64 0, metadata !92), !dbg !140
  %add25 = add nsw i32 %call, %sub24, !dbg !144
  %10 = load i32* %cgtotal, align 4, !dbg !144, !tbaa !126
  %rem = srem i32 %add25, %10, !dbg !144
  tail call void @llvm.dbg.value(metadata !{i32 %rem}, i64 0, metadata !90), !dbg !144
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !91), !dbg !145
  %11 = load i32* %nnodes, align 4, !dbg !145, !tbaa !126
  %cmp29112 = icmp sgt i32 %11, 0, !dbg !145
  br i1 %cmp29112, label %land.rhs30, label %for.end39, !dbg !145

for.cond27:                                       ; preds = %land.rhs30
  %12 = trunc i64 %indvars.iv.next to i32, !dbg !145
  %cmp29 = icmp slt i32 %12, %11, !dbg !145
  br i1 %cmp29, label %land.rhs30, label %for.end39, !dbg !145

land.rhs30:                                       ; preds = %for.body20, %for.cond27
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.cond27 ], [ 0, %for.body20 ]
  %nshift.1113 = phi i32 [ %inc38, %for.cond27 ], [ 0, %for.body20 ]
  %arrayidx33 = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 9, i64 %indvars.iv, !dbg !145
  %13 = load i32* %arrayidx33, align 4, !dbg !145, !tbaa !126
  %cmp34 = icmp sgt i32 %rem, %13, !dbg !145
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !145
  %inc38 = add nsw i32 %nshift.1113, 1, !dbg !147
  tail call void @llvm.dbg.value(metadata !{i32 %inc38}, i64 0, metadata !91), !dbg !147
  br i1 %cmp34, label %for.cond27, label %for.end39

for.end39:                                        ; preds = %for.cond27, %land.rhs30, %for.body20
  %nshift.1.lcssa = phi i32 [ 0, %for.body20 ], [ %nshift.1113, %land.rhs30 ], [ %inc38, %for.cond27 ]
  %14 = trunc i64 %indvars.iv122 to i32, !dbg !148
  %sub40 = sub i32 %nshift.1.lcssa, %14, !dbg !148
  %add42 = add nsw i32 %sub40, %11, !dbg !148
  %rem44 = srem i32 %add42, %11, !dbg !148
  tail call void @llvm.dbg.value(metadata !{i32 %rem44}, i64 0, metadata !91), !dbg !148
  br i1 %tobool, label %if.end, label %if.then, !dbg !142

if.then:                                          ; preds = %for.end39
  %call45 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([48 x i8]* @.str, i64 0, i64 0), i32 %14, i32 %sub24, i32 %rem, i32 %rem44) #5, !dbg !149
  %.pre = load i32* %nnodes, align 4, !dbg !138, !tbaa !126
  br label %if.end, !dbg !149

if.end:                                           ; preds = %for.end39, %if.then
  %15 = phi i32 [ %11, %for.end39 ], [ %.pre, %if.then ]
  %16 = load i32* %shift, align 4, !dbg !150, !tbaa !126
  %cmp47 = icmp sgt i32 %rem44, %16, !dbg !150
  %rem44. = select i1 %cmp47, i32 %rem44, i32 %16, !dbg !150
  store i32 %rem44., i32* %shift, align 4, !dbg !150, !tbaa !126
  %indvars.iv.next123 = add i64 %indvars.iv122, 1, !dbg !138
  %17 = trunc i64 %indvars.iv.next123 to i32, !dbg !138
  %cmp19 = icmp slt i32 %17, %15, !dbg !138
  br i1 %cmp19, label %for.body20, label %for.end56, !dbg !138

for.end56:                                        ; preds = %if.end, %for.end15
  %18 = phi i32 [ %div, %for.end15 ], [ %rem44., %if.end ]
  %tobool57 = icmp eq %struct._IO_FILE* %fp, null, !dbg !151
  br i1 %tobool57, label %if.end62, label %if.then58, !dbg !151

if.then58:                                        ; preds = %for.end56
  %19 = load i32* %bshift, align 4, !dbg !152, !tbaa !126
  %call61 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([35 x i8]* @.str1, i64 0, i64 0), i32 %18, i32 %19) #5, !dbg !152
  br label %if.end62, !dbg !152

if.end62:                                         ; preds = %for.end56, %if.then58
  ret void, !dbg !153
}

; Function Attrs: optsize
declare i32 @calc_naaj(i32, i32) #1

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #2

; Function Attrs: nounwind optsize uwtable
define void @calc_nsb(%struct._IO_FILE* %fp, %struct.t_block* nocapture %cgs, i32 %nnodes, %struct.t_nsborder* nocapture %nsb, i32 %nstDlb) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %fp}, i64 0, metadata !109), !dbg !154
  tail call void @llvm.dbg.value(metadata !{%struct.t_block* %cgs}, i64 0, metadata !110), !dbg !154
  tail call void @llvm.dbg.value(metadata !{i32 %nnodes}, i64 0, metadata !111), !dbg !154
  tail call void @llvm.dbg.value(metadata !{%struct.t_nsborder* %nsb}, i64 0, metadata !112), !dbg !154
  tail call void @llvm.dbg.value(metadata !{i32 %nstDlb}, i64 0, metadata !113), !dbg !154
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !114), !dbg !155
  br label %for.body, !dbg !155

for.body:                                         ; preds = %for.body, %entry
  %indvars.iv93 = phi i64 [ 0, %entry ], [ %indvars.iv.next94, %for.body ]
  %arrayidx = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 10, i64 %indvars.iv93, !dbg !157
  store i32 0, i32* %arrayidx, align 4, !dbg !157, !tbaa !126
  %arrayidx2 = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 9, i64 %indvars.iv93, !dbg !157
  store i32 0, i32* %arrayidx2, align 4, !dbg !157, !tbaa !126
  %arrayidx4 = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 8, i64 %indvars.iv93, !dbg !157
  store i32 0, i32* %arrayidx4, align 4, !dbg !157, !tbaa !126
  %arrayidx6 = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 7, i64 %indvars.iv93, !dbg !157
  store i32 0, i32* %arrayidx6, align 4, !dbg !157, !tbaa !126
  %indvars.iv.next94 = add i64 %indvars.iv93, 1, !dbg !155
  %lftr.wideiv95 = trunc i64 %indvars.iv.next94 to i32, !dbg !155
  %exitcond96 = icmp eq i32 %lftr.wideiv95, 256, !dbg !155
  br i1 %exitcond96, label %for.end, label %for.body, !dbg !155

for.end:                                          ; preds = %for.body
  %nnodes7 = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 1, !dbg !158
  store i32 %nnodes, i32* %nnodes7, align 4, !dbg !158, !tbaa !126
  %nstDlb8 = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 4, !dbg !159
  store i32 %nstDlb, i32* %nstDlb8, align 4, !dbg !159, !tbaa !126
  %nr = getelementptr inbounds %struct.t_block* %cgs, i64 0, i32 1, !dbg !160
  %0 = load i32* %nr, align 4, !dbg !160, !tbaa !126
  %cgtotal = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 2, !dbg !160
  store i32 %0, i32* %cgtotal, align 4, !dbg !160, !tbaa !126
  %nra = getelementptr inbounds %struct.t_block* %cgs, i64 0, i32 3, !dbg !161
  %1 = load i32* %nra, align 4, !dbg !161, !tbaa !126
  %natoms = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 3, !dbg !161
  store i32 %1, i32* %natoms, align 4, !dbg !161, !tbaa !126
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !114), !dbg !162
  %cmp1087 = icmp sgt i32 %nnodes, 0, !dbg !162
  br i1 %cmp1087, label %for.body11.lr.ph, label %for.end48, !dbg !162

for.body11.lr.ph:                                 ; preds = %for.end
  %index28 = getelementptr inbounds %struct.t_block* %cgs, i64 0, i32 2, !dbg !164
  br label %for.body11, !dbg !162

for.body11:                                       ; preds = %cond.end, %for.body11.lr.ph
  %indvars.iv = phi i64 [ 0, %for.body11.lr.ph ], [ %indvars.iv.next, %cond.end ]
  %2 = trunc i64 %indvars.iv to i32, !dbg !166
  %cmp12 = icmp sgt i32 %2, 0, !dbg !166
  br i1 %cmp12, label %cond.true, label %cond.end, !dbg !166

cond.true:                                        ; preds = %for.body11
  %3 = add nsw i64 %indvars.iv, -1, !dbg !166
  %arrayidx14 = getelementptr inbounds %struct.t_block* %cgs, i64 0, i32 0, i64 %3, !dbg !166
  %4 = load i32* %arrayidx14, align 4, !dbg !166, !tbaa !126
  %phitmp = sext i32 %4 to i64, !dbg !166
  br label %cond.end, !dbg !166

cond.end:                                         ; preds = %for.body11, %cond.true
  %cond = phi i64 [ %phitmp, %cond.true ], [ 0, %for.body11 ]
  %arrayidx17 = getelementptr inbounds %struct.t_block* %cgs, i64 0, i32 0, i64 %indvars.iv, !dbg !167
  %5 = load i32* %arrayidx17, align 4, !dbg !167, !tbaa !126
  %arrayidx20 = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 9, i64 %indvars.iv, !dbg !167
  store i32 %5, i32* %arrayidx20, align 4, !dbg !167, !tbaa !126
  %6 = load i32* %arrayidx17, align 4, !dbg !168, !tbaa !126
  %arrayidx26 = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 10, i64 %indvars.iv, !dbg !168
  store i32 %6, i32* %arrayidx26, align 4, !dbg !168, !tbaa !126
  %7 = load i32** %index28, align 8, !dbg !164, !tbaa !169
  %arrayidx29 = getelementptr inbounds i32* %7, i64 %cond, !dbg !164
  %8 = load i32* %arrayidx29, align 4, !dbg !164, !tbaa !126
  %arrayidx32 = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 8, i64 %indvars.iv, !dbg !164
  store i32 %8, i32* %arrayidx32, align 4, !dbg !164, !tbaa !126
  %9 = load i32* %arrayidx17, align 4, !dbg !170, !tbaa !126
  %idxprom36 = sext i32 %9 to i64, !dbg !170
  %arrayidx38 = getelementptr inbounds i32* %7, i64 %idxprom36, !dbg !170
  %10 = load i32* %arrayidx38, align 4, !dbg !170, !tbaa !126
  %sub42 = sub nsw i32 %10, %8, !dbg !170
  %arrayidx45 = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 7, i64 %indvars.iv, !dbg !170
  store i32 %sub42, i32* %arrayidx45, align 4, !dbg !170, !tbaa !126
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !162
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !162
  %exitcond = icmp eq i32 %lftr.wideiv, %nnodes, !dbg !162
  br i1 %exitcond, label %for.end48, label %for.body11, !dbg !162

for.end48:                                        ; preds = %cond.end, %for.end
  tail call void @calc_nsbshift(%struct._IO_FILE* %fp, %struct.t_nsborder* %nsb) #6, !dbg !171
  ret void, !dbg !172
}

; Function Attrs: nounwind optsize uwtable
define void @print_nsb(%struct._IO_FILE* %fp, i8* %title, %struct.t_nsborder* nocapture %nsb) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %fp}, i64 0, metadata !120), !dbg !173
  tail call void @llvm.dbg.value(metadata !{i8* %title}, i64 0, metadata !121), !dbg !173
  tail call void @llvm.dbg.value(metadata !{%struct.t_nsborder* %nsb}, i64 0, metadata !122), !dbg !173
  %tobool = icmp eq %struct._IO_FILE* %fp, null, !dbg !174
  br i1 %tobool, label %if.end, label %if.then, !dbg !174

if.then:                                          ; preds = %entry
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([4 x i8]* @.str2, i64 0, i64 0), i8* %title) #5, !dbg !175
  %nodeid = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 0, !dbg !177
  %0 = load i32* %nodeid, align 4, !dbg !177, !tbaa !126
  %call1 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([22 x i8]* @.str3, i64 0, i64 0), i32 %0) #5, !dbg !177
  %nnodes = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 1, !dbg !178
  %1 = load i32* %nnodes, align 4, !dbg !178, !tbaa !126
  %call2 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([19 x i8]* @.str4, i64 0, i64 0), i32 %1) #5, !dbg !178
  %cgtotal = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 2, !dbg !179
  %2 = load i32* %cgtotal, align 4, !dbg !179, !tbaa !126
  %call3 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([19 x i8]* @.str5, i64 0, i64 0), i32 %2) #5, !dbg !179
  %natoms = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 3, !dbg !180
  %3 = load i32* %natoms, align 4, !dbg !180, !tbaa !126
  %call4 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([19 x i8]* @.str6, i64 0, i64 0), i32 %3) #5, !dbg !180
  %shift = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 5, !dbg !181
  %4 = load i32* %shift, align 4, !dbg !181, !tbaa !126
  %call5 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([19 x i8]* @.str7, i64 0, i64 0), i32 %4) #5, !dbg !181
  %bshift = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 6, !dbg !182
  %5 = load i32* %bshift, align 4, !dbg !182, !tbaa !126
  %call6 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([19 x i8]* @.str8, i64 0, i64 0), i32 %5) #5, !dbg !182
  %6 = tail call i64 @fwrite(i8* getelementptr inbounds ([42 x i8]* @.str9, i64 0, i64 0), i64 41, i64 1, %struct._IO_FILE* %fp), !dbg !183
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !123), !dbg !184
  %7 = load i32* %nnodes, align 4, !dbg !184, !tbaa !126
  %cmp42 = icmp sgt i32 %7, 0, !dbg !184
  br i1 %cmp42, label %for.body, label %for.end, !dbg !184

for.body:                                         ; preds = %if.then, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %if.then ]
  %arrayidx = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 8, i64 %indvars.iv, !dbg !186
  %8 = load i32* %arrayidx, align 4, !dbg !186, !tbaa !126
  %arrayidx10 = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 7, i64 %indvars.iv, !dbg !186
  %9 = load i32* %arrayidx10, align 4, !dbg !186, !tbaa !126
  %arrayidx12 = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 9, i64 %indvars.iv, !dbg !186
  %10 = load i32* %arrayidx12, align 4, !dbg !186, !tbaa !126
  %arrayidx14 = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 10, i64 %indvars.iv, !dbg !186
  %11 = load i32* %arrayidx14, align 4, !dbg !186, !tbaa !126
  %12 = trunc i64 %indvars.iv to i32, !dbg !186
  %call15 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([18 x i8]* @.str10, i64 0, i64 0), i32 %12, i32 %8, i32 %9, i32 %10, i32 %11) #5, !dbg !186
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !184
  %13 = load i32* %nnodes, align 4, !dbg !184, !tbaa !126
  %14 = trunc i64 %indvars.iv.next to i32, !dbg !184
  %cmp = icmp slt i32 %14, %13, !dbg !184
  br i1 %cmp, label %for.body, label %for.end, !dbg !184

for.end:                                          ; preds = %for.body, %if.then
  %fputc = tail call i32 @fputc(i32 10, %struct._IO_FILE* %fp), !dbg !187
  br label %if.end, !dbg !188

if.end:                                           ; preds = %entry, %for.end
  ret void, !dbg !189
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #3

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #4

; Function Attrs: nounwind
declare i32 @fputc(i32, %struct._IO_FILE* nocapture) #4

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }
attributes #4 = { nounwind }
attributes #5 = { nounwind optsize }
attributes #6 = { optsize }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/nsb.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/435.gromacs/src/nsb.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4, metadata !93, metadata !116}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"calc_nsbshift", metadata !"calc_nsbshift", metadata !"", i32 43, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._IO_FILE*, %struct.t_nsborder*)* @calc_nsbshift, null, null, metadata !85, i32 44} ; [ DW_TAG_subprogram ] [line 43] [def] [scope 44] [calc_nsbshift]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/nsb.c]
!6 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{null, metadata !8, metadata !66}
!8 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !9} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from FILE]
!9 = metadata !{i32 786454, metadata !1, null, metadata !"FILE", i32 48, i64 0, i64 0, i64 0, i32 0, metadata !10} ; [ DW_TAG_typedef ] [FILE] [line 48, size 0, align 0, offset 0] [from _IO_FILE]
!10 = metadata !{i32 786451, metadata !11, null, metadata !"_IO_FILE", i32 245, i64 1728, i64 64, i32 0, i32 0, null, metadata !12, i32 0, null, null} ; [ DW_TAG_structure_type ] [_IO_FILE] [line 245, size 1728, align 64, offset 0] [from ]
!11 = metadata !{metadata !"/usr/include/libio.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!12 = metadata !{metadata !13, metadata !15, metadata !18, metadata !19, metadata !20, metadata !21, metadata !22, metadata !23, metadata !24, metadata !25, metadata !26, metadata !27, metadata !28, metadata !36, metadata !37, metadata !38, metadata !39, metadata !42, metadata !44, metadata !46, metadata !50, metadata !52, metadata !54, metadata !55, metadata !56, metadata !57, metadata !58, metadata !61, metadata !62}
!13 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"_flags", i32 246, i64 32, i64 32, i64 0, i32 0, metadata !14} ; [ DW_TAG_member ] [_flags] [line 246, size 32, align 32, offset 0] [from int]
!14 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!15 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"_IO_read_ptr", i32 251, i64 64, i64 64, i64 64, i32 0, metadata !16} ; [ DW_TAG_member ] [_IO_read_ptr] [line 251, size 64, align 64, offset 64] [from ]
!16 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !17} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from char]
!17 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!18 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"_IO_read_end", i32 252, i64 64, i64 64, i64 128, i32 0, metadata !16} ; [ DW_TAG_member ] [_IO_read_end] [line 252, size 64, align 64, offset 128] [from ]
!19 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"_IO_read_base", i32 253, i64 64, i64 64, i64 192, i32 0, metadata !16} ; [ DW_TAG_member ] [_IO_read_base] [line 253, size 64, align 64, offset 192] [from ]
!20 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"_IO_write_base", i32 254, i64 64, i64 64, i64 256, i32 0, metadata !16} ; [ DW_TAG_member ] [_IO_write_base] [line 254, size 64, align 64, offset 256] [from ]
!21 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"_IO_write_ptr", i32 255, i64 64, i64 64, i64 320, i32 0, metadata !16} ; [ DW_TAG_member ] [_IO_write_ptr] [line 255, size 64, align 64, offset 320] [from ]
!22 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"_IO_write_end", i32 256, i64 64, i64 64, i64 384, i32 0, metadata !16} ; [ DW_TAG_member ] [_IO_write_end] [line 256, size 64, align 64, offset 384] [from ]
!23 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"_IO_buf_base", i32 257, i64 64, i64 64, i64 448, i32 0, metadata !16} ; [ DW_TAG_member ] [_IO_buf_base] [line 257, size 64, align 64, offset 448] [from ]
!24 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"_IO_buf_end", i32 258, i64 64, i64 64, i64 512, i32 0, metadata !16} ; [ DW_TAG_member ] [_IO_buf_end] [line 258, size 64, align 64, offset 512] [from ]
!25 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"_IO_save_base", i32 260, i64 64, i64 64, i64 576, i32 0, metadata !16} ; [ DW_TAG_member ] [_IO_save_base] [line 260, size 64, align 64, offset 576] [from ]
!26 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"_IO_backup_base", i32 261, i64 64, i64 64, i64 640, i32 0, metadata !16} ; [ DW_TAG_member ] [_IO_backup_base] [line 261, size 64, align 64, offset 640] [from ]
!27 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"_IO_save_end", i32 262, i64 64, i64 64, i64 704, i32 0, metadata !16} ; [ DW_TAG_member ] [_IO_save_end] [line 262, size 64, align 64, offset 704] [from ]
!28 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"_markers", i32 264, i64 64, i64 64, i64 768, i32 0, metadata !29} ; [ DW_TAG_member ] [_markers] [line 264, size 64, align 64, offset 768] [from ]
!29 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !30} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from _IO_marker]
!30 = metadata !{i32 786451, metadata !11, null, metadata !"_IO_marker", i32 160, i64 192, i64 64, i32 0, i32 0, null, metadata !31, i32 0, null, null} ; [ DW_TAG_structure_type ] [_IO_marker] [line 160, size 192, align 64, offset 0] [from ]
!31 = metadata !{metadata !32, metadata !33, metadata !35}
!32 = metadata !{i32 786445, metadata !11, metadata !30, metadata !"_next", i32 161, i64 64, i64 64, i64 0, i32 0, metadata !29} ; [ DW_TAG_member ] [_next] [line 161, size 64, align 64, offset 0] [from ]
!33 = metadata !{i32 786445, metadata !11, metadata !30, metadata !"_sbuf", i32 162, i64 64, i64 64, i64 64, i32 0, metadata !34} ; [ DW_TAG_member ] [_sbuf] [line 162, size 64, align 64, offset 64] [from ]
!34 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !10} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from _IO_FILE]
!35 = metadata !{i32 786445, metadata !11, metadata !30, metadata !"_pos", i32 166, i64 32, i64 32, i64 128, i32 0, metadata !14} ; [ DW_TAG_member ] [_pos] [line 166, size 32, align 32, offset 128] [from int]
!36 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"_chain", i32 266, i64 64, i64 64, i64 832, i32 0, metadata !34} ; [ DW_TAG_member ] [_chain] [line 266, size 64, align 64, offset 832] [from ]
!37 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"_fileno", i32 268, i64 32, i64 32, i64 896, i32 0, metadata !14} ; [ DW_TAG_member ] [_fileno] [line 268, size 32, align 32, offset 896] [from int]
!38 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"_flags2", i32 272, i64 32, i64 32, i64 928, i32 0, metadata !14} ; [ DW_TAG_member ] [_flags2] [line 272, size 32, align 32, offset 928] [from int]
!39 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"_old_offset", i32 274, i64 64, i64 64, i64 960, i32 0, metadata !40} ; [ DW_TAG_member ] [_old_offset] [line 274, size 64, align 64, offset 960] [from __off_t]
!40 = metadata !{i32 786454, metadata !11, null, metadata !"__off_t", i32 131, i64 0, i64 0, i64 0, i32 0, metadata !41} ; [ DW_TAG_typedef ] [__off_t] [line 131, size 0, align 0, offset 0] [from long int]
!41 = metadata !{i32 786468, null, null, metadata !"long int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [long int] [line 0, size 64, align 64, offset 0, enc DW_ATE_signed]
!42 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"_cur_column", i32 278, i64 16, i64 16, i64 1024, i32 0, metadata !43} ; [ DW_TAG_member ] [_cur_column] [line 278, size 16, align 16, offset 1024] [from unsigned short]
!43 = metadata !{i32 786468, null, null, metadata !"unsigned short", i32 0, i64 16, i64 16, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned short] [line 0, size 16, align 16, offset 0, enc DW_ATE_unsigned]
!44 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"_vtable_offset", i32 279, i64 8, i64 8, i64 1040, i32 0, metadata !45} ; [ DW_TAG_member ] [_vtable_offset] [line 279, size 8, align 8, offset 1040] [from signed char]
!45 = metadata !{i32 786468, null, null, metadata !"signed char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [signed char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!46 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"_shortbuf", i32 280, i64 8, i64 8, i64 1048, i32 0, metadata !47} ; [ DW_TAG_member ] [_shortbuf] [line 280, size 8, align 8, offset 1048] [from ]
!47 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 8, i64 8, i32 0, i32 0, metadata !17, metadata !48, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 8, align 8, offset 0] [from char]
!48 = metadata !{metadata !49}
!49 = metadata !{i32 786465, i64 0, i64 1}        ; [ DW_TAG_subrange_type ] [0, 0]
!50 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"_lock", i32 284, i64 64, i64 64, i64 1088, i32 0, metadata !51} ; [ DW_TAG_member ] [_lock] [line 284, size 64, align 64, offset 1088] [from ]
!51 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, null} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!52 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"_offset", i32 293, i64 64, i64 64, i64 1152, i32 0, metadata !53} ; [ DW_TAG_member ] [_offset] [line 293, size 64, align 64, offset 1152] [from __off64_t]
!53 = metadata !{i32 786454, metadata !11, null, metadata !"__off64_t", i32 132, i64 0, i64 0, i64 0, i32 0, metadata !41} ; [ DW_TAG_typedef ] [__off64_t] [line 132, size 0, align 0, offset 0] [from long int]
!54 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"__pad1", i32 302, i64 64, i64 64, i64 1216, i32 0, metadata !51} ; [ DW_TAG_member ] [__pad1] [line 302, size 64, align 64, offset 1216] [from ]
!55 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"__pad2", i32 303, i64 64, i64 64, i64 1280, i32 0, metadata !51} ; [ DW_TAG_member ] [__pad2] [line 303, size 64, align 64, offset 1280] [from ]
!56 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"__pad3", i32 304, i64 64, i64 64, i64 1344, i32 0, metadata !51} ; [ DW_TAG_member ] [__pad3] [line 304, size 64, align 64, offset 1344] [from ]
!57 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"__pad4", i32 305, i64 64, i64 64, i64 1408, i32 0, metadata !51} ; [ DW_TAG_member ] [__pad4] [line 305, size 64, align 64, offset 1408] [from ]
!58 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"__pad5", i32 306, i64 64, i64 64, i64 1472, i32 0, metadata !59} ; [ DW_TAG_member ] [__pad5] [line 306, size 64, align 64, offset 1472] [from size_t]
!59 = metadata !{i32 786454, metadata !11, null, metadata !"size_t", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !60} ; [ DW_TAG_typedef ] [size_t] [line 42, size 0, align 0, offset 0] [from long unsigned int]
!60 = metadata !{i32 786468, null, null, metadata !"long unsigned int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [long unsigned int] [line 0, size 64, align 64, offset 0, enc DW_ATE_unsigned]
!61 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"_mode", i32 308, i64 32, i64 32, i64 1536, i32 0, metadata !14} ; [ DW_TAG_member ] [_mode] [line 308, size 32, align 32, offset 1536] [from int]
!62 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"_unused2", i32 310, i64 160, i64 8, i64 1568, i32 0, metadata !63} ; [ DW_TAG_member ] [_unused2] [line 310, size 160, align 8, offset 1568] [from ]
!63 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 160, i64 8, i32 0, i32 0, metadata !17, metadata !64, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 160, align 8, offset 0] [from char]
!64 = metadata !{metadata !65}
!65 = metadata !{i32 786465, i64 0, i64 20}       ; [ DW_TAG_subrange_type ] [0, 19]
!66 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !67} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from t_nsborder]
!67 = metadata !{i32 786454, metadata !1, null, metadata !"t_nsborder", i32 59, i64 0, i64 0, i64 0, i32 0, metadata !68} ; [ DW_TAG_typedef ] [t_nsborder] [line 59, size 0, align 0, offset 0] [from ]
!68 = metadata !{i32 786451, metadata !69, null, metadata !"", i32 36, i64 32992, i64 32, i32 0, i32 0, null, metadata !70, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 36, size 32992, align 32, offset 0] [from ]
!69 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/435.gromacs/src/types/nsborder.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!70 = metadata !{metadata !71, metadata !72, metadata !73, metadata !74, metadata !75, metadata !76, metadata !77, metadata !78, metadata !82, metadata !83, metadata !84}
!71 = metadata !{i32 786445, metadata !69, metadata !68, metadata !"nodeid", i32 37, i64 32, i64 32, i64 0, i32 0, metadata !14} ; [ DW_TAG_member ] [nodeid] [line 37, size 32, align 32, offset 0] [from int]
!72 = metadata !{i32 786445, metadata !69, metadata !68, metadata !"nnodes", i32 38, i64 32, i64 32, i64 32, i32 0, metadata !14} ; [ DW_TAG_member ] [nnodes] [line 38, size 32, align 32, offset 32] [from int]
!73 = metadata !{i32 786445, metadata !69, metadata !68, metadata !"cgtotal", i32 39, i64 32, i64 32, i64 64, i32 0, metadata !14} ; [ DW_TAG_member ] [cgtotal] [line 39, size 32, align 32, offset 64] [from int]
!74 = metadata !{i32 786445, metadata !69, metadata !68, metadata !"natoms", i32 40, i64 32, i64 32, i64 96, i32 0, metadata !14} ; [ DW_TAG_member ] [natoms] [line 40, size 32, align 32, offset 96] [from int]
!75 = metadata !{i32 786445, metadata !69, metadata !68, metadata !"nstDlb", i32 41, i64 32, i64 32, i64 128, i32 0, metadata !14} ; [ DW_TAG_member ] [nstDlb] [line 41, size 32, align 32, offset 128] [from int]
!76 = metadata !{i32 786445, metadata !69, metadata !68, metadata !"shift", i32 43, i64 32, i64 32, i64 160, i32 0, metadata !14} ; [ DW_TAG_member ] [shift] [line 43, size 32, align 32, offset 160] [from int]
!77 = metadata !{i32 786445, metadata !69, metadata !68, metadata !"bshift", i32 43, i64 32, i64 32, i64 192, i32 0, metadata !14} ; [ DW_TAG_member ] [bshift] [line 43, size 32, align 32, offset 192] [from int]
!78 = metadata !{i32 786445, metadata !69, metadata !68, metadata !"homenr", i32 50, i64 8192, i64 32, i64 224, i32 0, metadata !79} ; [ DW_TAG_member ] [homenr] [line 50, size 8192, align 32, offset 224] [from ]
!79 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 8192, i64 32, i32 0, i32 0, metadata !14, metadata !80, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 8192, align 32, offset 0] [from int]
!80 = metadata !{metadata !81}
!81 = metadata !{i32 786465, i64 0, i64 256}      ; [ DW_TAG_subrange_type ] [0, 255]
!82 = metadata !{i32 786445, metadata !69, metadata !68, metadata !"index", i32 51, i64 8192, i64 32, i64 8416, i32 0, metadata !79} ; [ DW_TAG_member ] [index] [line 51, size 8192, align 32, offset 8416] [from ]
!83 = metadata !{i32 786445, metadata !69, metadata !68, metadata !"cgload", i32 52, i64 8192, i64 32, i64 16608, i32 0, metadata !79} ; [ DW_TAG_member ] [cgload] [line 52, size 8192, align 32, offset 16608] [from ]
!84 = metadata !{i32 786445, metadata !69, metadata !68, metadata !"workload", i32 55, i64 8192, i64 32, i64 24800, i32 0, metadata !79} ; [ DW_TAG_member ] [workload] [line 55, size 8192, align 32, offset 24800] [from ]
!85 = metadata !{metadata !86, metadata !87, metadata !88, metadata !89, metadata !90, metadata !91, metadata !92}
!86 = metadata !{i32 786689, metadata !4, metadata !"fp", metadata !5, i32 16777259, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fp] [line 43]
!87 = metadata !{i32 786689, metadata !4, metadata !"nsb", metadata !5, i32 33554475, metadata !66, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nsb] [line 43]
!88 = metadata !{i32 786688, metadata !4, metadata !"i", metadata !5, i32 45, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 45]
!89 = metadata !{i32 786688, metadata !4, metadata !"lastcg", metadata !5, i32 46, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [lastcg] [line 46]
!90 = metadata !{i32 786688, metadata !4, metadata !"targetcg", metadata !5, i32 46, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [targetcg] [line 46]
!91 = metadata !{i32 786688, metadata !4, metadata !"nshift", metadata !5, i32 46, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nshift] [line 46]
!92 = metadata !{i32 786688, metadata !4, metadata !"naaj", metadata !5, i32 46, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [naaj] [line 46]
!93 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"calc_nsb", metadata !"calc_nsb", metadata !"", i32 81, metadata !94, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._IO_FILE*, %struct.t_block*, i32, %struct.t_nsborder*, i32)* @calc_nsb, null, null, metadata !108, i32 82} ; [ DW_TAG_subprogram ] [line 81] [def] [scope 82] [calc_nsb]
!94 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !95, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!95 = metadata !{null, metadata !8, metadata !96, metadata !14, metadata !66, metadata !14}
!96 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !97} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from t_block]
!97 = metadata !{i32 786454, metadata !1, null, metadata !"t_block", i32 52, i64 0, i64 0, i64 0, i32 0, metadata !98} ; [ DW_TAG_typedef ] [t_block] [line 52, size 0, align 0, offset 0] [from ]
!98 = metadata !{i32 786451, metadata !99, null, metadata !"", i32 36, i64 8448, i64 64, i32 0, i32 0, null, metadata !100, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 36, size 8448, align 64, offset 0] [from ]
!99 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/435.gromacs/src/types/block.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!100 = metadata !{metadata !101, metadata !102, metadata !103, metadata !106, metadata !107}
!101 = metadata !{i32 786445, metadata !99, metadata !98, metadata !"multinr", i32 37, i64 8192, i64 32, i64 0, i32 0, metadata !79} ; [ DW_TAG_member ] [multinr] [line 37, size 8192, align 32, offset 0] [from ]
!102 = metadata !{i32 786445, metadata !99, metadata !98, metadata !"nr", i32 43, i64 32, i64 32, i64 8192, i32 0, metadata !14} ; [ DW_TAG_member ] [nr] [line 43, size 32, align 32, offset 8192] [from int]
!103 = metadata !{i32 786445, metadata !99, metadata !98, metadata !"index", i32 44, i64 64, i64 64, i64 8256, i32 0, metadata !104} ; [ DW_TAG_member ] [index] [line 44, size 64, align 64, offset 8256] [from ]
!104 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !105} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from atom_id]
!105 = metadata !{i32 786454, metadata !99, null, metadata !"atom_id", i32 73, i64 0, i64 0, i64 0, i32 0, metadata !14} ; [ DW_TAG_typedef ] [atom_id] [line 73, size 0, align 0, offset 0] [from int]
!106 = metadata !{i32 786445, metadata !99, metadata !98, metadata !"nra", i32 45, i64 32, i64 32, i64 8320, i32 0, metadata !14} ; [ DW_TAG_member ] [nra] [line 45, size 32, align 32, offset 8320] [from int]
!107 = metadata !{i32 786445, metadata !99, metadata !98, metadata !"a", i32 46, i64 64, i64 64, i64 8384, i32 0, metadata !104} ; [ DW_TAG_member ] [a] [line 46, size 64, align 64, offset 8384] [from ]
!108 = metadata !{metadata !109, metadata !110, metadata !111, metadata !112, metadata !113, metadata !114, metadata !115}
!109 = metadata !{i32 786689, metadata !93, metadata !"fp", metadata !5, i32 16777297, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fp] [line 81]
!110 = metadata !{i32 786689, metadata !93, metadata !"cgs", metadata !5, i32 33554513, metadata !96, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cgs] [line 81]
!111 = metadata !{i32 786689, metadata !93, metadata !"nnodes", metadata !5, i32 50331729, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nnodes] [line 81]
!112 = metadata !{i32 786689, metadata !93, metadata !"nsb", metadata !5, i32 67108945, metadata !66, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nsb] [line 81]
!113 = metadata !{i32 786689, metadata !93, metadata !"nstDlb", metadata !5, i32 83886161, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nstDlb] [line 81]
!114 = metadata !{i32 786688, metadata !93, metadata !"i", metadata !5, i32 83, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 83]
!115 = metadata !{i32 786688, metadata !93, metadata !"cg0", metadata !5, i32 83, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cg0] [line 83]
!116 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"print_nsb", metadata !"print_nsb", metadata !"", i32 103, metadata !117, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._IO_FILE*, i8*, %struct.t_nsborder*)* @print_nsb, null, null, metadata !119, i32 104} ; [ DW_TAG_subprogram ] [line 103] [def] [scope 104] [print_nsb]
!117 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !118, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!118 = metadata !{null, metadata !8, metadata !16, metadata !66}
!119 = metadata !{metadata !120, metadata !121, metadata !122, metadata !123}
!120 = metadata !{i32 786689, metadata !116, metadata !"fp", metadata !5, i32 16777319, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fp] [line 103]
!121 = metadata !{i32 786689, metadata !116, metadata !"title", metadata !5, i32 33554535, metadata !16, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [title] [line 103]
!122 = metadata !{i32 786689, metadata !116, metadata !"nsb", metadata !5, i32 50331751, metadata !66, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nsb] [line 103]
!123 = metadata !{i32 786688, metadata !116, metadata !"i", metadata !5, i32 105, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 105]
!124 = metadata !{i32 43, i32 0, metadata !4, null}
!125 = metadata !{i32 48, i32 0, metadata !4, null}
!126 = metadata !{metadata !"int", metadata !127}
!127 = metadata !{metadata !"omnipotent char", metadata !128}
!128 = metadata !{metadata !"Simple C/C++ TBAA"}
!129 = metadata !{i32 1}
!130 = metadata !{i32 49, i32 0, metadata !131, null}
!131 = metadata !{i32 786443, metadata !1, metadata !4, i32 49, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/nsb.c]
!132 = metadata !{i32 50, i32 0, metadata !133, null}
!133 = metadata !{i32 786443, metadata !1, metadata !131, i32 49, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/nsb.c]
!134 = metadata !{i32 51, i32 0, metadata !135, null}
!135 = metadata !{i32 786443, metadata !1, metadata !133, i32 51, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/nsb.c]
!136 = metadata !{i32 53, i32 0, metadata !133, null}
!137 = metadata !{i32 56, i32 0, metadata !4, null}
!138 = metadata !{i32 57, i32 0, metadata !139, null}
!139 = metadata !{i32 786443, metadata !1, metadata !4, i32 57, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/nsb.c]
!140 = metadata !{i32 59, i32 0, metadata !141, null}
!141 = metadata !{i32 786443, metadata !1, metadata !139, i32 57, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/nsb.c]
!142 = metadata !{i32 69, i32 0, metadata !141, null}
!143 = metadata !{i32 58, i32 0, metadata !141, null} ; [ DW_TAG_imported_module ]
!144 = metadata !{i32 60, i32 0, metadata !141, null}
!145 = metadata !{i32 63, i32 0, metadata !146, null}
!146 = metadata !{i32 786443, metadata !1, metadata !141, i32 63, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/nsb.c]
!147 = metadata !{i32 64, i32 0, metadata !146, null}
!148 = metadata !{i32 67, i32 0, metadata !141, null}
!149 = metadata !{i32 70, i32 0, metadata !141, null}
!150 = metadata !{i32 74, i32 0, metadata !141, null}
!151 = metadata !{i32 76, i32 0, metadata !4, null}
!152 = metadata !{i32 77, i32 0, metadata !4, null}
!153 = metadata !{i32 79, i32 0, metadata !4, null}
!154 = metadata !{i32 81, i32 0, metadata !93, null}
!155 = metadata !{i32 86, i32 0, metadata !156, null}
!156 = metadata !{i32 786443, metadata !1, metadata !93, i32 86, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/nsb.c]
!157 = metadata !{i32 87, i32 0, metadata !156, null}
!158 = metadata !{i32 89, i32 0, metadata !93, null}
!159 = metadata !{i32 90, i32 0, metadata !93, null}
!160 = metadata !{i32 91, i32 0, metadata !93, null}
!161 = metadata !{i32 92, i32 0, metadata !93, null}
!162 = metadata !{i32 93, i32 0, metadata !163, null}
!163 = metadata !{i32 786443, metadata !1, metadata !93, i32 93, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/nsb.c]
!164 = metadata !{i32 97, i32 0, metadata !165, null}
!165 = metadata !{i32 786443, metadata !1, metadata !163, i32 93, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/nsb.c]
!166 = metadata !{i32 94, i32 0, metadata !165, null}
!167 = metadata !{i32 95, i32 0, metadata !165, null}
!168 = metadata !{i32 96, i32 0, metadata !165, null}
!169 = metadata !{metadata !"any pointer", metadata !127}
!170 = metadata !{i32 98, i32 0, metadata !165, null}
!171 = metadata !{i32 100, i32 0, metadata !93, null}
!172 = metadata !{i32 101, i32 0, metadata !93, null}
!173 = metadata !{i32 103, i32 0, metadata !116, null}
!174 = metadata !{i32 107, i32 0, metadata !116, null}
!175 = metadata !{i32 109, i32 0, metadata !176, null}
!176 = metadata !{i32 786443, metadata !1, metadata !116, i32 108, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/nsb.c]
!177 = metadata !{i32 110, i32 0, metadata !176, null}
!178 = metadata !{i32 111, i32 0, metadata !176, null}
!179 = metadata !{i32 112, i32 0, metadata !176, null}
!180 = metadata !{i32 113, i32 0, metadata !176, null}
!181 = metadata !{i32 114, i32 0, metadata !176, null}
!182 = metadata !{i32 115, i32 0, metadata !176, null}
!183 = metadata !{i32 117, i32 0, metadata !176, null}
!184 = metadata !{i32 118, i32 0, metadata !185, null}
!185 = metadata !{i32 786443, metadata !1, metadata !176, i32 118, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/nsb.c]
!186 = metadata !{i32 119, i32 0, metadata !185, null}
!187 = metadata !{i32 121, i32 0, metadata !176, null}
!188 = metadata !{i32 122, i32 0, metadata !176, null}
!189 = metadata !{i32 123, i32 0, metadata !116, null}
