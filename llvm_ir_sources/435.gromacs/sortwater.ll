; ModuleID = '../../SPEC/benchspec/CPU2006/435.gromacs/src/sortwater.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@.str = private unnamed_addr constant [4 x i8] c"tab\00", align 1
@.str1 = private unnamed_addr constant [57 x i8] c"../../SPEC/benchspec/CPU2006/435.gromacs/src/sortwater.c\00", align 1
@NBOX = internal global [3 x i32] zeroinitializer, align 4
@box_1 = internal unnamed_addr global [3 x float] zeroinitializer, align 4
@.str2 = private unnamed_addr constant [3 x i8] c"BB\00", align 1
@.str3 = private unnamed_addr constant [3 x i8] c"fx\00", align 1
@.str4 = private unnamed_addr constant [3 x i8] c"fy\00", align 1
@BOX = internal global [3 x [3 x float]] zeroinitializer, align 16
@stderr = external global %struct._IO_FILE*
@.str5 = private unnamed_addr constant [54 x i8] c"nbox = %2d %2d %2d [ prod %3d ] area = %12.5f (nm^2)\0A\00", align 1
@debug = external global %struct._IO_FILE*
@.str6 = private unnamed_addr constant [29 x i8] c"Factorizing %d into primes:\0A\00", align 1
@.str7 = private unnamed_addr constant [9 x i8] c"%d ^ %d\0A\00", align 1
@.str8 = private unnamed_addr constant [8 x i8] c"rvindex\00", align 1
@xptr = internal unnamed_addr global [3 x float]* null, align 8
@nwat = internal unnamed_addr global i32 0, align 4
@.str9 = private unnamed_addr constant [46 x i8] c"rvindex[%5d] = %5d (x = %8.3f  %8.3f  %8.3f)\0A\00", align 1
@.str10 = private unnamed_addr constant [4 x i8] c"tmp\00", align 1

; Function Attrs: nounwind optsize uwtable
define void @randwater(i32 %astart, i32 %nwater, i32 %nwatom, [3 x float]* nocapture %x, [3 x float]* %v, i32* %seed) #0 {
entry:
  %call = tail call i8* @save_calloc(i8* getelementptr inbounds ([4 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([57 x i8]* @.str1, i64 0, i64 0), i32 49, i32 %nwater, i32 4) #5
  %0 = bitcast i8* %call to i32*
  %cmp131 = icmp sgt i32 %nwater, 0
  br i1 %cmp131, label %for.body, label %for.end61

for.cond1.preheader:                              ; preds = %for.body
  %mul = mul nsw i32 %nwater, 23
  br i1 %cmp131, label %for.body3.lr.ph, label %for.end61

for.body3.lr.ph:                                  ; preds = %for.cond1.preheader
  %conv = sitofp i32 %nwater to float
  %cmp18127 = icmp sgt i32 %nwatom, 0
  %tobool = icmp eq [3 x float]* %v, null
  br label %for.body3

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv135 = phi i64 [ %indvars.iv.next136, %for.body ], [ 0, %entry ]
  %arrayidx = getelementptr inbounds i32* %0, i64 %indvars.iv135
  %1 = trunc i64 %indvars.iv135 to i32
  store i32 %1, i32* %arrayidx, align 4, !tbaa !0
  %indvars.iv.next136 = add i64 %indvars.iv135, 1
  %lftr.wideiv137 = trunc i64 %indvars.iv.next136 to i32
  %exitcond138 = icmp eq i32 %lftr.wideiv137, %nwater
  br i1 %exitcond138, label %for.cond1.preheader, label %for.body

for.body3:                                        ; preds = %for.body3.lr.ph, %for.inc59
  %j.0130 = phi i32 [ 0, %for.body3.lr.ph ], [ %inc60, %for.inc59 ]
  %call4 = tail call float @rando(i32* %seed) #5
  %mul5 = fmul float %conv, %call4
  %conv6 = fptosi float %mul5 to i32
  %rem = srem i32 %conv6, %nwater
  br label %do.body

do.body:                                          ; preds = %do.body, %for.body3
  %call8 = tail call float @rando(i32* %seed) #5
  %mul9 = fmul float %conv, %call8
  %conv10 = fptosi float %mul9 to i32
  %rem11 = srem i32 %conv10, %nwater
  %cmp12 = icmp eq i32 %rem, %rem11
  br i1 %cmp12, label %do.body, label %do.end

do.end:                                           ; preds = %do.body
  br i1 %cmp18127, label %for.body20.lr.ph, label %for.inc59

for.body20.lr.ph:                                 ; preds = %do.end
  %mul15 = mul nsw i32 %rem11, %nwatom
  %mul14 = mul nsw i32 %rem, %nwatom
  %add16 = add nsw i32 %mul15, %astart
  %add = add nsw i32 %mul14, %astart
  %2 = sext i32 %add16 to i64
  %3 = sext i32 %add to i64
  br label %for.body20

for.body20:                                       ; preds = %for.inc56, %for.body20.lr.ph
  %indvars.iv = phi i64 [ 0, %for.body20.lr.ph ], [ %indvars.iv.next, %for.inc56 ]
  %4 = add nsw i64 %3, %indvars.iv
  %arraydecay = getelementptr inbounds [3 x float]* %x, i64 %4, i64 0
  %5 = load float* %arraydecay, align 4, !tbaa !3
  %arrayidx2.i = getelementptr inbounds [3 x float]* %x, i64 %4, i64 1
  %6 = load float* %arrayidx2.i, align 4, !tbaa !3
  %arrayidx4.i = getelementptr inbounds [3 x float]* %x, i64 %4, i64 2
  %7 = load float* %arrayidx4.i, align 4, !tbaa !3
  %8 = add nsw i64 %2, %indvars.iv
  %arraydecay28 = getelementptr inbounds [3 x float]* %x, i64 %8, i64 0
  %9 = load float* %arraydecay28, align 4, !tbaa !3
  store float %9, float* %arraydecay, align 4, !tbaa !3
  %arrayidx2.i120 = getelementptr inbounds [3 x float]* %x, i64 %8, i64 1
  %10 = load float* %arrayidx2.i120, align 4, !tbaa !3
  store float %10, float* %arrayidx2.i, align 4, !tbaa !3
  %arrayidx4.i122 = getelementptr inbounds [3 x float]* %x, i64 %8, i64 2
  %11 = load float* %arrayidx4.i122, align 4, !tbaa !3
  store float %11, float* %arrayidx4.i, align 4, !tbaa !3
  store float %5, float* %arraydecay28, align 4, !tbaa !3
  store float %6, float* %arrayidx2.i120, align 4, !tbaa !3
  store float %7, float* %arrayidx4.i122, align 4, !tbaa !3
  br i1 %tobool, label %for.inc56, label %if.then

if.then:                                          ; preds = %for.body20
  %arraydecay41 = getelementptr inbounds [3 x float]* %v, i64 %4, i64 0
  %12 = load float* %arraydecay41, align 4, !tbaa !3
  %arrayidx2.i112 = getelementptr inbounds [3 x float]* %v, i64 %4, i64 1
  %13 = load float* %arrayidx2.i112, align 4, !tbaa !3
  %arrayidx4.i114 = getelementptr inbounds [3 x float]* %v, i64 %4, i64 2
  %14 = load float* %arrayidx4.i114, align 4, !tbaa !3
  %arraydecay46 = getelementptr inbounds [3 x float]* %v, i64 %8, i64 0
  %15 = load float* %arraydecay46, align 4, !tbaa !3
  store float %15, float* %arraydecay41, align 4, !tbaa !3
  %arrayidx2.i108 = getelementptr inbounds [3 x float]* %v, i64 %8, i64 1
  %16 = load float* %arrayidx2.i108, align 4, !tbaa !3
  store float %16, float* %arrayidx2.i112, align 4, !tbaa !3
  %arrayidx4.i110 = getelementptr inbounds [3 x float]* %v, i64 %8, i64 2
  %17 = load float* %arrayidx4.i110, align 4, !tbaa !3
  store float %17, float* %arrayidx4.i114, align 4, !tbaa !3
  store float %12, float* %arraydecay46, align 4, !tbaa !3
  store float %13, float* %arrayidx2.i108, align 4, !tbaa !3
  store float %14, float* %arrayidx4.i110, align 4, !tbaa !3
  br label %for.inc56

for.inc56:                                        ; preds = %for.body20, %if.then
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %nwatom
  br i1 %exitcond, label %for.inc59, label %for.body20

for.inc59:                                        ; preds = %for.inc56, %do.end
  %inc60 = add nsw i32 %j.0130, 1
  %cmp2 = icmp slt i32 %inc60, %mul
  br i1 %cmp2, label %for.body3, label %for.end61

for.end61:                                        ; preds = %entry, %for.inc59, %for.cond1.preheader
  tail call void @save_free(i8* getelementptr inbounds ([4 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([57 x i8]* @.str1, i64 0, i64 0), i32 71, i8* %call) #5
  ret void
}

; Function Attrs: optsize
declare i8* @save_calloc(i8*, i8*, i32, i32, i32) #1

; Function Attrs: optsize
declare float @rando(i32*) #1

; Function Attrs: optsize
declare void @save_free(i8*, i8*, i32, i8*) #1

; Function Attrs: nounwind optsize uwtable
define void @sortwater(i32 %astart, i32 %nwater, i32 %nwatom, [3 x float]* %x, [3 x float]* nocapture %v) #0 {
entry:
  tail call fastcc void @lo_sortwater(i32 %astart, i32 %nwater, i32 %nwatom, [3 x float]* %x, [3 x float]* %v, i32 0) #6
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @lo_sortwater(i32 %astart, i32 %nwater, i32 %nwatom, [3 x float]* %x, [3 x float]* nocapture %v, i32 %bBlock) #0 {
entry:
  %call = tail call i8* @save_calloc(i8* getelementptr inbounds ([8 x i8]* @.str8, i64 0, i64 0), i8* getelementptr inbounds ([57 x i8]* @.str1, i64 0, i64 0), i32 128, i32 %nwater, i32 4) #5
  %0 = bitcast i8* %call to i32*
  %cmp211 = icmp sgt i32 %nwater, 0
  br i1 %cmp211, label %for.body, label %for.end

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv243 = phi i64 [ %indvars.iv.next244, %for.body ], [ 0, %entry ]
  %arrayidx = getelementptr inbounds i32* %0, i64 %indvars.iv243
  %1 = trunc i64 %indvars.iv243 to i32
  store i32 %1, i32* %arrayidx, align 4, !tbaa !0
  %indvars.iv.next244 = add i64 %indvars.iv243, 1
  %lftr.wideiv245 = trunc i64 %indvars.iv.next244 to i32
  %exitcond246 = icmp eq i32 %lftr.wideiv245, %nwater
  br i1 %exitcond246, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %entry
  %idx.ext = sext i32 %astart to i64
  %add.ptr = getelementptr inbounds [3 x float]* %x, i64 %idx.ext
  store [3 x float]* %add.ptr, [3 x float]** @xptr, align 8, !tbaa !4
  store i32 %nwatom, i32* @nwat, align 4, !tbaa !0
  %conv = sext i32 %nwater to i64
  %tobool = icmp ne i32 %bBlock, 0
  %cond = select i1 %tobool, i32 (i8*, i8*)* @blockcomp, i32 (i8*, i8*)* @rvcomp
  tail call void @qsort(i8* %call, i64 %conv, i64 4, i32 (i8*, i8*)* %cond) #5
  %2 = load %struct._IO_FILE** @debug, align 8, !tbaa !4
  %tobool1 = icmp eq %struct._IO_FILE* %2, null
  br i1 %tobool1, label %if.end, label %for.cond2.preheader

for.cond2.preheader:                              ; preds = %for.end
  br i1 %cmp211, label %for.body5, label %if.end.thread

if.end.thread:                                    ; preds = %for.cond2.preheader
  %mul26247 = mul i32 %nwatom, %nwater
  %call27248 = tail call i8* @save_calloc(i8* getelementptr inbounds ([4 x i8]* @.str10, i64 0, i64 0), i8* getelementptr inbounds ([57 x i8]* @.str1, i64 0, i64 0), i32 141, i32 %mul26247, i32 12) #5
  %3 = bitcast i8* %call27248 to [3 x float]*
  br label %for.cond54.preheader

for.body5:                                        ; preds = %for.cond2.preheader, %for.body5.for.body5_crit_edge
  %4 = phi %struct._IO_FILE* [ %.pre, %for.body5.for.body5_crit_edge ], [ %2, %for.cond2.preheader ]
  %indvars.iv239 = phi i64 [ %indvars.iv.next240, %for.body5.for.body5_crit_edge ], [ 0, %for.cond2.preheader ]
  %arrayidx7 = getelementptr inbounds i32* %0, i64 %indvars.iv239
  %5 = load i32* %arrayidx7, align 4, !tbaa !0
  %mul = mul nsw i32 %5, %nwatom
  %add = add nsw i32 %mul, %astart
  %idxprom8 = sext i32 %add to i64
  %arrayidx10 = getelementptr inbounds [3 x float]* %x, i64 %idxprom8, i64 0
  %6 = load float* %arrayidx10, align 4, !tbaa !3
  %conv11 = fpext float %6 to double
  %arrayidx15 = getelementptr inbounds [3 x float]* %x, i64 %idxprom8, i64 1
  %7 = load float* %arrayidx15, align 4, !tbaa !3
  %conv16 = fpext float %7 to double
  %arrayidx20 = getelementptr inbounds [3 x float]* %x, i64 %idxprom8, i64 2
  %8 = load float* %arrayidx20, align 4, !tbaa !3
  %conv21 = fpext float %8 to double
  %9 = trunc i64 %indvars.iv239 to i32
  %call22 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([46 x i8]* @.str9, i64 0, i64 0), i32 %9, i32 %mul, double %conv11, double %conv16, double %conv21) #5
  %indvars.iv.next240 = add i64 %indvars.iv239, 1
  %lftr.wideiv241 = trunc i64 %indvars.iv.next240 to i32
  %exitcond242 = icmp eq i32 %lftr.wideiv241, %nwater
  br i1 %exitcond242, label %if.end, label %for.body5.for.body5_crit_edge

for.body5.for.body5_crit_edge:                    ; preds = %for.body5
  %.pre = load %struct._IO_FILE** @debug, align 8, !tbaa !4
  br label %for.body5

if.end:                                           ; preds = %for.body5, %for.end
  %mul26 = mul i32 %nwatom, %nwater
  %call27 = tail call i8* @save_calloc(i8* getelementptr inbounds ([4 x i8]* @.str10, i64 0, i64 0), i8* getelementptr inbounds ([57 x i8]* @.str1, i64 0, i64 0), i32 141, i32 %mul26, i32 12) #5
  %10 = bitcast i8* %call27 to [3 x float]*
  br i1 %cmp211, label %for.body31.lr.ph, label %for.cond54.preheader

for.body31.lr.ph:                                 ; preds = %if.end
  %cmp37205 = icmp sgt i32 %nwatom, 0
  br label %for.body31

for.cond54.preheader:                             ; preds = %for.inc51, %if.end.thread, %if.end
  %11 = phi [3 x float]* [ %3, %if.end.thread ], [ %10, %if.end ], [ %10, %for.inc51 ]
  %call27250 = phi i8* [ %call27248, %if.end.thread ], [ %call27, %if.end ], [ %call27, %for.inc51 ]
  %mul26249 = phi i32 [ %mul26247, %if.end.thread ], [ %mul26, %if.end ], [ %mul26, %for.inc51 ]
  %cmp56203 = icmp sgt i32 %mul26249, 0
  br i1 %cmp56203, label %for.body58, label %for.cond69.preheader

for.body31:                                       ; preds = %for.inc51, %for.body31.lr.ph
  %indvars.iv235 = phi i64 [ 0, %for.body31.lr.ph ], [ %indvars.iv.next236, %for.inc51 ]
  br i1 %cmp37205, label %for.body39.lr.ph, label %for.inc51

for.body39.lr.ph:                                 ; preds = %for.body31
  %arrayidx33 = getelementptr inbounds i32* %0, i64 %indvars.iv235
  %12 = load i32* %arrayidx33, align 4, !tbaa !0
  %mul34 = mul nsw i32 %12, %nwatom
  %add35 = add nsw i32 %mul34, %astart
  %13 = trunc i64 %indvars.iv235 to i32
  %mul43 = mul nsw i32 %13, %nwatom
  %14 = sext i32 %mul43 to i64
  %15 = sext i32 %add35 to i64
  br label %for.body39

for.body39:                                       ; preds = %for.body39, %for.body39.lr.ph
  %indvars.iv229 = phi i64 [ 0, %for.body39.lr.ph ], [ %indvars.iv.next230, %for.body39 ]
  %16 = add nsw i64 %15, %indvars.iv229
  %arraydecay = getelementptr inbounds [3 x float]* %x, i64 %16, i64 0
  %17 = add nsw i64 %indvars.iv229, %14
  %arraydecay47 = getelementptr inbounds [3 x float]* %10, i64 %17, i64 0
  %18 = load float* %arraydecay, align 4, !tbaa !3
  store float %18, float* %arraydecay47, align 4, !tbaa !3
  %arrayidx2.i = getelementptr inbounds [3 x float]* %x, i64 %16, i64 1
  %19 = load float* %arrayidx2.i, align 4, !tbaa !3
  %arrayidx3.i = getelementptr inbounds [3 x float]* %10, i64 %17, i64 1
  store float %19, float* %arrayidx3.i, align 4, !tbaa !3
  %arrayidx4.i = getelementptr inbounds [3 x float]* %x, i64 %16, i64 2
  %20 = load float* %arrayidx4.i, align 4, !tbaa !3
  %arrayidx5.i = getelementptr inbounds [3 x float]* %10, i64 %17, i64 2
  store float %20, float* %arrayidx5.i, align 4, !tbaa !3
  %indvars.iv.next230 = add i64 %indvars.iv229, 1
  %lftr.wideiv233 = trunc i64 %indvars.iv.next230 to i32
  %exitcond234 = icmp eq i32 %lftr.wideiv233, %nwatom
  br i1 %exitcond234, label %for.inc51, label %for.body39

for.inc51:                                        ; preds = %for.body39, %for.body31
  %indvars.iv.next236 = add i64 %indvars.iv235, 1
  %lftr.wideiv237 = trunc i64 %indvars.iv.next236 to i32
  %exitcond238 = icmp eq i32 %lftr.wideiv237, %nwater
  br i1 %exitcond238, label %for.cond54.preheader, label %for.body31

for.cond69.preheader:                             ; preds = %for.body58, %for.cond54.preheader
  br i1 %cmp211, label %for.body72.lr.ph, label %for.cond96.preheader

for.body72.lr.ph:                                 ; preds = %for.cond69.preheader
  %cmp78199 = icmp sgt i32 %nwatom, 0
  br label %for.body72

for.body58:                                       ; preds = %for.cond54.preheader, %for.body58
  %indvars.iv224 = phi i64 [ %indvars.iv.next225, %for.body58 ], [ 0, %for.cond54.preheader ]
  %arraydecay61 = getelementptr inbounds [3 x float]* %11, i64 %indvars.iv224, i64 0
  %21 = add nsw i64 %indvars.iv224, %idx.ext
  %arraydecay65 = getelementptr inbounds [3 x float]* %x, i64 %21, i64 0
  %22 = load float* %arraydecay61, align 4, !tbaa !3
  store float %22, float* %arraydecay65, align 4, !tbaa !3
  %arrayidx2.i193 = getelementptr inbounds [3 x float]* %11, i64 %indvars.iv224, i64 1
  %23 = load float* %arrayidx2.i193, align 4, !tbaa !3
  %arrayidx3.i194 = getelementptr inbounds [3 x float]* %x, i64 %21, i64 1
  store float %23, float* %arrayidx3.i194, align 4, !tbaa !3
  %arrayidx4.i195 = getelementptr inbounds [3 x float]* %11, i64 %indvars.iv224, i64 2
  %24 = load float* %arrayidx4.i195, align 4, !tbaa !3
  %arrayidx5.i196 = getelementptr inbounds [3 x float]* %x, i64 %21, i64 2
  store float %24, float* %arrayidx5.i196, align 4, !tbaa !3
  %indvars.iv.next225 = add i64 %indvars.iv224, 1
  %lftr.wideiv227 = trunc i64 %indvars.iv.next225 to i32
  %exitcond228 = icmp eq i32 %lftr.wideiv227, %mul26249
  br i1 %exitcond228, label %for.cond69.preheader, label %for.body58

for.cond96.preheader:                             ; preds = %for.inc93, %for.cond69.preheader
  br i1 %cmp56203, label %for.body100, label %for.end110

for.body72:                                       ; preds = %for.inc93, %for.body72.lr.ph
  %indvars.iv220 = phi i64 [ 0, %for.body72.lr.ph ], [ %indvars.iv.next221, %for.inc93 ]
  br i1 %cmp78199, label %for.body80.lr.ph, label %for.inc93

for.body80.lr.ph:                                 ; preds = %for.body72
  %arrayidx74 = getelementptr inbounds i32* %0, i64 %indvars.iv220
  %25 = load i32* %arrayidx74, align 4, !tbaa !0
  %mul75 = mul nsw i32 %25, %nwatom
  %add76 = add nsw i32 %mul75, %astart
  %26 = trunc i64 %indvars.iv220 to i32
  %mul85 = mul nsw i32 %26, %nwatom
  %27 = sext i32 %mul85 to i64
  %28 = sext i32 %add76 to i64
  br label %for.body80

for.body80:                                       ; preds = %for.body80, %for.body80.lr.ph
  %indvars.iv214 = phi i64 [ 0, %for.body80.lr.ph ], [ %indvars.iv.next215, %for.body80 ]
  %29 = add nsw i64 %28, %indvars.iv214
  %arraydecay84 = getelementptr inbounds [3 x float]* %v, i64 %29, i64 0
  %30 = add nsw i64 %indvars.iv214, %27
  %arraydecay89 = getelementptr inbounds [3 x float]* %11, i64 %30, i64 0
  %31 = load float* %arraydecay84, align 4, !tbaa !3
  store float %31, float* %arraydecay89, align 4, !tbaa !3
  %arrayidx2.i189 = getelementptr inbounds [3 x float]* %v, i64 %29, i64 1
  %32 = load float* %arrayidx2.i189, align 4, !tbaa !3
  %arrayidx3.i190 = getelementptr inbounds [3 x float]* %11, i64 %30, i64 1
  store float %32, float* %arrayidx3.i190, align 4, !tbaa !3
  %arrayidx4.i191 = getelementptr inbounds [3 x float]* %v, i64 %29, i64 2
  %33 = load float* %arrayidx4.i191, align 4, !tbaa !3
  %arrayidx5.i192 = getelementptr inbounds [3 x float]* %11, i64 %30, i64 2
  store float %33, float* %arrayidx5.i192, align 4, !tbaa !3
  %indvars.iv.next215 = add i64 %indvars.iv214, 1
  %lftr.wideiv218 = trunc i64 %indvars.iv.next215 to i32
  %exitcond219 = icmp eq i32 %lftr.wideiv218, %nwatom
  br i1 %exitcond219, label %for.inc93, label %for.body80

for.inc93:                                        ; preds = %for.body80, %for.body72
  %indvars.iv.next221 = add i64 %indvars.iv220, 1
  %lftr.wideiv222 = trunc i64 %indvars.iv.next221 to i32
  %exitcond223 = icmp eq i32 %lftr.wideiv222, %nwater
  br i1 %exitcond223, label %for.cond96.preheader, label %for.body72

for.body100:                                      ; preds = %for.cond96.preheader, %for.body100
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body100 ], [ 0, %for.cond96.preheader ]
  %arraydecay103 = getelementptr inbounds [3 x float]* %11, i64 %indvars.iv, i64 0
  %34 = add nsw i64 %indvars.iv, %idx.ext
  %arraydecay107 = getelementptr inbounds [3 x float]* %v, i64 %34, i64 0
  %35 = load float* %arraydecay103, align 4, !tbaa !3
  store float %35, float* %arraydecay107, align 4, !tbaa !3
  %arrayidx2.i185 = getelementptr inbounds [3 x float]* %11, i64 %indvars.iv, i64 1
  %36 = load float* %arrayidx2.i185, align 4, !tbaa !3
  %arrayidx3.i186 = getelementptr inbounds [3 x float]* %v, i64 %34, i64 1
  store float %36, float* %arrayidx3.i186, align 4, !tbaa !3
  %arrayidx4.i187 = getelementptr inbounds [3 x float]* %11, i64 %indvars.iv, i64 2
  %37 = load float* %arrayidx4.i187, align 4, !tbaa !3
  %arrayidx5.i188 = getelementptr inbounds [3 x float]* %v, i64 %34, i64 2
  store float %37, float* %arrayidx5.i188, align 4, !tbaa !3
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %mul26249
  br i1 %exitcond, label %for.end110, label %for.body100

for.end110:                                       ; preds = %for.body100, %for.cond96.preheader
  tail call void @save_free(i8* getelementptr inbounds ([4 x i8]* @.str10, i64 0, i64 0), i8* getelementptr inbounds ([57 x i8]* @.str1, i64 0, i64 0), i32 159, i8* %call27250) #5
  tail call void @save_free(i8* getelementptr inbounds ([8 x i8]* @.str8, i64 0, i64 0), i8* getelementptr inbounds ([57 x i8]* @.str1, i64 0, i64 0), i32 160, i8* %call) #5
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @mkcompact(i32 %astart, i32 %nwater, i32 %nwatom, [3 x float]* %x, [3 x float]* nocapture %v, i32 %nnode, [3 x float]* nocapture %box) #0 {
entry:
  %cmp = icmp slt i32 %nnode, 2
  br i1 %cmp, label %return, label %for.body.i.i

for.body.i.i:                                     ; preds = %entry, %for.body.i.i
  %ip.05.i.i = phi i32 [ %mul.i.i, %for.body.i.i ], [ 1, %entry ]
  %i.04.i.i = phi i32 [ %inc.i.i, %for.body.i.i ], [ 0, %entry ]
  %mul.i.i = mul nsw i32 %ip.05.i.i, %nnode
  %inc.i.i = add nsw i32 %i.04.i.i, 1
  %exitcond.i.i = icmp eq i32 %inc.i.i, 3
  br i1 %exitcond.i.i, label %ipow.exit.i, label %for.body.i.i

ipow.exit.i:                                      ; preds = %for.body.i.i
  %mul.i = mul nsw i32 %mul.i.i, 6
  %call1.i = tail call i8* @save_calloc(i8* getelementptr inbounds ([3 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([57 x i8]* @.str1, i64 0, i64 0), i32 270, i32 %mul.i, i32 12) #5
  %0 = bitcast i8* %call1.i to [3 x i32]*
  %add.i = add i32 %nnode, 1
  %call2.i = tail call i8* @save_calloc(i8* getelementptr inbounds ([3 x i8]* @.str3, i64 0, i64 0), i8* getelementptr inbounds ([57 x i8]* @.str1, i64 0, i64 0), i32 272, i32 %add.i, i32 4) #5
  %1 = bitcast i8* %call2.i to i32*
  %call4.i = tail call i8* @save_calloc(i8* getelementptr inbounds ([3 x i8]* @.str4, i64 0, i64 0), i8* getelementptr inbounds ([57 x i8]* @.str1, i64 0, i64 0), i32 273, i32 %add.i, i32 4) #5
  %2 = bitcast i8* %call4.i to i32*
  tail call fastcc void @factorize(i32 %nnode, i32* %1) #5
  %cmp69.i = icmp slt i32 %nnode, 0
  br i1 %cmp69.i, label %for.end35.thread.i, label %for.cond5.preheader.i

for.end35.thread.i:                               ; preds = %ipow.exit.i
  tail call void @qsort(i8* %call1.i, i64 0, i64 12, i32 (i8*, i8*)* @iv_comp) #5
  br label %for.end76.i

for.cond5.preheader.i:                            ; preds = %ipow.exit.i, %for.inc33.i
  %indvars.iv80.i = phi i64 [ %indvars.iv.next81.i, %for.inc33.i ], [ 0, %ipow.exit.i ]
  %nbb.072.i = phi i32 [ %nbb.1.lcssa.i, %for.inc33.i ], [ 0, %ipow.exit.i ]
  %arrayidx.i = getelementptr inbounds i32* %1, i64 %indvars.iv80.i
  %3 = load i32* %arrayidx.i, align 4, !tbaa !0
  %cmp664.i = icmp slt i32 %3, 1
  br i1 %cmp664.i, label %for.inc33.i, label %for.body7.i.preheader

for.body7.i.preheader:                            ; preds = %for.cond5.preheader.i
  %4 = trunc i64 %indvars.iv80.i to i32
  br label %for.body7.i

for.body7.i:                                      ; preds = %for.body7.i.preheader, %for.inc30.i
  %nbb.167.i = phi i32 [ %nbb.2.lcssa.i, %for.inc30.i ], [ %nbb.072.i, %for.body7.i.preheader ]
  %m.065.i = phi i32 [ %inc31.i, %for.inc30.i ], [ 1, %for.body7.i.preheader ]
  %cmp3.i.i = icmp sgt i32 %m.065.i, 0
  br i1 %cmp3.i.i, label %for.body.i6.i, label %ipow.exit7.i

for.body.i6.i:                                    ; preds = %for.body7.i, %for.body.i6.i
  %ip.05.i1.i = phi i32 [ %mul.i3.i, %for.body.i6.i ], [ 1, %for.body7.i ]
  %i.04.i2.i = phi i32 [ %inc.i4.i, %for.body.i6.i ], [ 0, %for.body7.i ]
  %mul.i3.i = mul nsw i32 %ip.05.i1.i, %4
  %inc.i4.i = add nsw i32 %i.04.i2.i, 1
  %exitcond.i5.i = icmp eq i32 %inc.i4.i, %m.065.i
  br i1 %exitcond.i5.i, label %ipow.exit7.i, label %for.body.i6.i

ipow.exit7.i:                                     ; preds = %for.body.i6.i, %for.body7.i
  %ip.0.lcssa.i.i = phi i32 [ 1, %for.body7.i ], [ %mul.i3.i, %for.body.i6.i ]
  %div.i = sdiv i32 %nnode, %ip.0.lcssa.i.i
  tail call fastcc void @factorize(i32 %div.i, i32* %2) #5
  %cmp1259.i = icmp slt i32 %div.i, 0
  br i1 %cmp1259.i, label %for.inc30.i, label %for.cond14.preheader.lr.ph.i

for.cond14.preheader.lr.ph.i:                     ; preds = %ipow.exit7.i
  %5 = add i32 %div.i, 1
  br label %for.cond14.preheader.i

for.cond14.preheader.i:                           ; preds = %for.inc27.i, %for.cond14.preheader.lr.ph.i
  %indvars.iv76.i = phi i64 [ %indvars.iv.next77.i, %for.inc27.i ], [ 0, %for.cond14.preheader.lr.ph.i ]
  %nbb.262.i = phi i32 [ %nbb.3.lcssa.i, %for.inc27.i ], [ %nbb.167.i, %for.cond14.preheader.lr.ph.i ]
  %arrayidx16.i = getelementptr inbounds i32* %2, i64 %indvars.iv76.i
  %6 = load i32* %arrayidx16.i, align 4, !tbaa !0
  %cmp1754.i = icmp slt i32 %6, 1
  br i1 %cmp1754.i, label %for.inc27.i, label %for.body18.i.preheader

for.body18.i.preheader:                           ; preds = %for.cond14.preheader.i
  %7 = trunc i64 %indvars.iv76.i to i32
  br label %for.body18.i

for.body18.i:                                     ; preds = %for.body18.i.preheader, %for.inc.i
  %8 = phi i32 [ %9, %for.inc.i ], [ %6, %for.body18.i.preheader ]
  %nbb.357.i = phi i32 [ %nbb.4.i, %for.inc.i ], [ %nbb.262.i, %for.body18.i.preheader ]
  %n.055.i = phi i32 [ %inc.i, %for.inc.i ], [ 1, %for.body18.i.preheader ]
  %cmp3.i15.i = icmp sgt i32 %n.055.i, 0
  br i1 %cmp3.i15.i, label %for.body.i21.i, label %ipow.exit23.i

for.body.i21.i:                                   ; preds = %for.body18.i, %for.body.i21.i
  %ip.05.i16.i = phi i32 [ %mul.i18.i, %for.body.i21.i ], [ 1, %for.body18.i ]
  %i.04.i17.i = phi i32 [ %inc.i19.i, %for.body.i21.i ], [ 0, %for.body18.i ]
  %mul.i18.i = mul nsw i32 %ip.05.i16.i, %7
  %inc.i19.i = add nsw i32 %i.04.i17.i, 1
  %exitcond.i20.i = icmp eq i32 %inc.i19.i, %n.055.i
  br i1 %exitcond.i20.i, label %ipow.exit23.i, label %for.body.i21.i

ipow.exit23.i:                                    ; preds = %for.body.i21.i, %for.body18.i
  %ip.0.lcssa.i22.i = phi i32 [ 1, %for.body18.i ], [ %mul.i18.i, %for.body.i21.i ]
  %div22.i = sdiv i32 %div.i, %ip.0.lcssa.i22.i
  %cmp25.i = icmp sgt i32 %div22.i, 0
  br i1 %cmp25.i, label %if.then.i, label %for.inc.i

if.then.i:                                        ; preds = %ipow.exit23.i
  %inc.i10.i = add nsw i32 %nbb.357.i, 1
  %idxprom.i.i = sext i32 %nbb.357.i to i64
  %arraydecay.i11.i = getelementptr inbounds [3 x i32]* %0, i64 %idxprom.i.i, i64 0
  store i32 %ip.0.lcssa.i.i, i32* %arraydecay.i11.i, align 4, !tbaa !0
  %arrayidx3.i.i.i = getelementptr inbounds [3 x i32]* %0, i64 %idxprom.i.i, i64 1
  store i32 %ip.0.lcssa.i22.i, i32* %arrayidx3.i.i.i, align 4, !tbaa !0
  %arrayidx5.i.i.i = getelementptr inbounds [3 x i32]* %0, i64 %idxprom.i.i, i64 2
  store i32 %div22.i, i32* %arrayidx5.i.i.i, align 4, !tbaa !0
  %inc5.i.i = add nsw i32 %nbb.357.i, 2
  %idxprom6.i.i = sext i32 %inc.i10.i to i64
  %arraydecay8.i14.i = getelementptr inbounds [3 x i32]* %0, i64 %idxprom6.i.i, i64 0
  store i32 %ip.0.lcssa.i22.i, i32* %arraydecay8.i14.i, align 4, !tbaa !0
  %arrayidx3.i112.i.i = getelementptr inbounds [3 x i32]* %0, i64 %idxprom6.i.i, i64 1
  store i32 %ip.0.lcssa.i.i, i32* %arrayidx3.i112.i.i, align 4, !tbaa !0
  %arrayidx5.i114.i.i = getelementptr inbounds [3 x i32]* %0, i64 %idxprom6.i.i, i64 2
  store i32 %div22.i, i32* %arrayidx5.i114.i.i, align 4, !tbaa !0
  %inc15.i.i = add nsw i32 %nbb.357.i, 3
  %idxprom16.i.i = sext i32 %inc5.i.i to i64
  %arraydecay18.i.i = getelementptr inbounds [3 x i32]* %0, i64 %idxprom16.i.i, i64 0
  store i32 %div22.i, i32* %arraydecay18.i.i, align 4, !tbaa !0
  %arrayidx3.i108.i.i = getelementptr inbounds [3 x i32]* %0, i64 %idxprom16.i.i, i64 1
  store i32 %ip.0.lcssa.i.i, i32* %arrayidx3.i108.i.i, align 4, !tbaa !0
  %arrayidx5.i110.i.i = getelementptr inbounds [3 x i32]* %0, i64 %idxprom16.i.i, i64 2
  store i32 %ip.0.lcssa.i22.i, i32* %arrayidx5.i110.i.i, align 4, !tbaa !0
  %inc25.i.i = add nsw i32 %nbb.357.i, 4
  %idxprom26.i.i = sext i32 %inc15.i.i to i64
  %arraydecay28.i.i = getelementptr inbounds [3 x i32]* %0, i64 %idxprom26.i.i, i64 0
  store i32 %ip.0.lcssa.i.i, i32* %arraydecay28.i.i, align 4, !tbaa !0
  %arrayidx3.i104.i.i = getelementptr inbounds [3 x i32]* %0, i64 %idxprom26.i.i, i64 1
  store i32 %div22.i, i32* %arrayidx3.i104.i.i, align 4, !tbaa !0
  %arrayidx5.i106.i.i = getelementptr inbounds [3 x i32]* %0, i64 %idxprom26.i.i, i64 2
  store i32 %ip.0.lcssa.i22.i, i32* %arrayidx5.i106.i.i, align 4, !tbaa !0
  %inc35.i.i = add nsw i32 %nbb.357.i, 5
  %idxprom36.i.i = sext i32 %inc25.i.i to i64
  %arraydecay38.i.i = getelementptr inbounds [3 x i32]* %0, i64 %idxprom36.i.i, i64 0
  store i32 %ip.0.lcssa.i22.i, i32* %arraydecay38.i.i, align 4, !tbaa !0
  %arrayidx3.i100.i.i = getelementptr inbounds [3 x i32]* %0, i64 %idxprom36.i.i, i64 1
  store i32 %div22.i, i32* %arrayidx3.i100.i.i, align 4, !tbaa !0
  %arrayidx5.i102.i.i = getelementptr inbounds [3 x i32]* %0, i64 %idxprom36.i.i, i64 2
  store i32 %ip.0.lcssa.i.i, i32* %arrayidx5.i102.i.i, align 4, !tbaa !0
  %inc45.i.i = add nsw i32 %nbb.357.i, 6
  %idxprom46.i.i = sext i32 %inc35.i.i to i64
  %arraydecay48.i.i = getelementptr inbounds [3 x i32]* %0, i64 %idxprom46.i.i, i64 0
  store i32 %div22.i, i32* %arraydecay48.i.i, align 4, !tbaa !0
  %arrayidx3.i96.i.i = getelementptr inbounds [3 x i32]* %0, i64 %idxprom46.i.i, i64 1
  store i32 %ip.0.lcssa.i22.i, i32* %arrayidx3.i96.i.i, align 4, !tbaa !0
  %arrayidx5.i98.i.i = getelementptr inbounds [3 x i32]* %0, i64 %idxprom46.i.i, i64 2
  store i32 %ip.0.lcssa.i.i, i32* %arrayidx5.i98.i.i, align 4, !tbaa !0
  %.pre.i = load i32* %arrayidx16.i, align 4, !tbaa !0
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i, %ipow.exit23.i
  %9 = phi i32 [ %.pre.i, %if.then.i ], [ %8, %ipow.exit23.i ]
  %nbb.4.i = phi i32 [ %inc45.i.i, %if.then.i ], [ %nbb.357.i, %ipow.exit23.i ]
  %inc.i = add nsw i32 %n.055.i, 1
  %cmp17.i = icmp slt i32 %n.055.i, %9
  br i1 %cmp17.i, label %for.body18.i, label %for.inc27.i

for.inc27.i:                                      ; preds = %for.inc.i, %for.cond14.preheader.i
  %nbb.3.lcssa.i = phi i32 [ %nbb.262.i, %for.cond14.preheader.i ], [ %nbb.4.i, %for.inc.i ]
  %indvars.iv.next77.i = add i64 %indvars.iv76.i, 1
  %lftr.wideiv16 = trunc i64 %indvars.iv.next77.i to i32
  %exitcond17 = icmp eq i32 %lftr.wideiv16, %5
  br i1 %exitcond17, label %for.inc30.i, label %for.cond14.preheader.i

for.inc30.i:                                      ; preds = %for.inc27.i, %ipow.exit7.i
  %nbb.2.lcssa.i = phi i32 [ %nbb.167.i, %ipow.exit7.i ], [ %nbb.3.lcssa.i, %for.inc27.i ]
  %inc31.i = add nsw i32 %m.065.i, 1
  %10 = load i32* %arrayidx.i, align 4, !tbaa !0
  %cmp6.i = icmp slt i32 %m.065.i, %10
  br i1 %cmp6.i, label %for.body7.i, label %for.inc33.i

for.inc33.i:                                      ; preds = %for.inc30.i, %for.cond5.preheader.i
  %nbb.1.lcssa.i = phi i32 [ %nbb.072.i, %for.cond5.preheader.i ], [ %nbb.2.lcssa.i, %for.inc30.i ]
  %indvars.iv.next81.i = add i64 %indvars.iv80.i, 1
  %lftr.wideiv18 = trunc i64 %indvars.iv.next81.i to i32
  %exitcond19 = icmp eq i32 %lftr.wideiv18, %add.i
  br i1 %exitcond19, label %for.end35.i, label %for.cond5.preheader.i

for.end35.i:                                      ; preds = %for.inc33.i
  %conv.i = sext i32 %nbb.1.lcssa.i to i64
  tail call void @qsort(i8* %call1.i, i64 %conv.i, i64 12, i32 (i8*, i8*)* @iv_comp) #5
  %cmp3751.i = icmp sgt i32 %nbb.1.lcssa.i, 1
  br i1 %cmp3751.i, label %for.body39.i, label %for.end76.i

for.body39.i:                                     ; preds = %for.end35.i, %for.inc74.i
  %indvars.iv74.i = phi i64 [ %indvars.iv.next75.i, %for.inc74.i ], [ 1, %for.end35.i ]
  %j.152.i = phi i32 [ %j.2.i, %for.inc74.i ], [ 0, %for.end35.i ]
  %arrayidx42.i = getelementptr inbounds [3 x i32]* %0, i64 %indvars.iv74.i, i64 0
  %11 = load i32* %arrayidx42.i, align 4, !tbaa !0
  %idxprom43.i = sext i32 %j.152.i to i64
  %arrayidx45.i = getelementptr inbounds [3 x i32]* %0, i64 %idxprom43.i, i64 0
  %12 = load i32* %arrayidx45.i, align 4, !tbaa !0
  %cmp46.i = icmp eq i32 %11, %12
  %arrayidx50.i = getelementptr inbounds [3 x i32]* %0, i64 %indvars.iv74.i, i64 1
  br i1 %cmp46.i, label %lor.lhs.false.i, label %if.then65.i

lor.lhs.false.i:                                  ; preds = %for.body39.i
  %13 = load i32* %arrayidx50.i, align 4, !tbaa !0
  %arrayidx53.i = getelementptr inbounds [3 x i32]* %0, i64 %idxprom43.i, i64 1
  %14 = load i32* %arrayidx53.i, align 4, !tbaa !0
  %cmp54.i = icmp eq i32 %13, %14
  br i1 %cmp54.i, label %lor.lhs.false56.i, label %if.then65.i

lor.lhs.false56.i:                                ; preds = %lor.lhs.false.i
  %arrayidx59.i = getelementptr inbounds [3 x i32]* %0, i64 %indvars.iv74.i, i64 2
  %15 = load i32* %arrayidx59.i, align 4, !tbaa !0
  %arrayidx62.i = getelementptr inbounds [3 x i32]* %0, i64 %idxprom43.i, i64 2
  %16 = load i32* %arrayidx62.i, align 4, !tbaa !0
  %cmp63.i = icmp eq i32 %15, %16
  br i1 %cmp63.i, label %for.inc74.i, label %if.then65.i

if.then65.i:                                      ; preds = %lor.lhs.false56.i, %lor.lhs.false.i, %for.body39.i
  %inc66.i = add nsw i32 %j.152.i, 1
  %idxprom70.i = sext i32 %inc66.i to i64
  %arraydecay72.i = getelementptr inbounds [3 x i32]* %0, i64 %idxprom70.i, i64 0
  store i32 %11, i32* %arraydecay72.i, align 4, !tbaa !0
  %17 = load i32* %arrayidx50.i, align 4, !tbaa !0
  %arrayidx3.i.i = getelementptr inbounds [3 x i32]* %0, i64 %idxprom70.i, i64 1
  store i32 %17, i32* %arrayidx3.i.i, align 4, !tbaa !0
  %arrayidx4.i9.i = getelementptr inbounds [3 x i32]* %0, i64 %indvars.iv74.i, i64 2
  %18 = load i32* %arrayidx4.i9.i, align 4, !tbaa !0
  %arrayidx5.i.i = getelementptr inbounds [3 x i32]* %0, i64 %idxprom70.i, i64 2
  store i32 %18, i32* %arrayidx5.i.i, align 4, !tbaa !0
  br label %for.inc74.i

for.inc74.i:                                      ; preds = %if.then65.i, %lor.lhs.false56.i
  %j.2.i = phi i32 [ %inc66.i, %if.then65.i ], [ %j.152.i, %lor.lhs.false56.i ]
  %indvars.iv.next75.i = add i64 %indvars.iv74.i, 1
  %lftr.wideiv14 = trunc i64 %indvars.iv.next75.i to i32
  %exitcond15 = icmp eq i32 %lftr.wideiv14, %nbb.1.lcssa.i
  br i1 %exitcond15, label %for.end76.i, label %for.body39.i

for.end76.i:                                      ; preds = %for.inc74.i, %for.end35.i, %for.end35.thread.i
  %j.1.lcssa.i = phi i32 [ 0, %for.end35.i ], [ 0, %for.end35.thread.i ], [ %j.2.i, %for.inc74.i ]
  %inc77.i = add nsw i32 %j.1.lcssa.i, 1
  %arraydecay.i.i = getelementptr inbounds [3 x float]* %box, i64 0, i64 0
  %19 = load float* %arraydecay.i.i, align 4, !tbaa !3
  store float %19, float* getelementptr inbounds ([3 x [3 x float]]* @BOX, i64 0, i64 0, i64 0), align 16, !tbaa !3
  %arrayidx2.i.i.i = getelementptr inbounds [3 x float]* %box, i64 0, i64 1
  %20 = load float* %arrayidx2.i.i.i, align 4, !tbaa !3
  store float %20, float* getelementptr inbounds ([3 x [3 x float]]* @BOX, i64 0, i64 0, i64 1), align 4, !tbaa !3
  %arrayidx4.i.i.i = getelementptr inbounds [3 x float]* %box, i64 0, i64 2
  %21 = load float* %arrayidx4.i.i.i, align 4, !tbaa !3
  store float %21, float* getelementptr inbounds ([3 x [3 x float]]* @BOX, i64 0, i64 0, i64 2), align 8, !tbaa !3
  %arraydecay4.i.i = getelementptr inbounds [3 x float]* %box, i64 1, i64 0
  %22 = load float* %arraydecay4.i.i, align 4, !tbaa !3
  store float %22, float* getelementptr inbounds ([3 x [3 x float]]* @BOX, i64 0, i64 1, i64 0), align 4, !tbaa !3
  %arrayidx2.i3.i.i = getelementptr inbounds [3 x float]* %box, i64 1, i64 1
  %23 = load float* %arrayidx2.i3.i.i, align 4, !tbaa !3
  store float %23, float* getelementptr inbounds ([3 x [3 x float]]* @BOX, i64 0, i64 1, i64 1), align 4, !tbaa !3
  %arrayidx4.i4.i.i = getelementptr inbounds [3 x float]* %box, i64 1, i64 2
  %24 = load float* %arrayidx4.i4.i.i, align 4, !tbaa !3
  store float %24, float* getelementptr inbounds ([3 x [3 x float]]* @BOX, i64 0, i64 1, i64 2), align 4, !tbaa !3
  %arraydecay8.i.i = getelementptr inbounds [3 x float]* %box, i64 2, i64 0
  %25 = load float* %arraydecay8.i.i, align 4, !tbaa !3
  store float %25, float* getelementptr inbounds ([3 x [3 x float]]* @BOX, i64 0, i64 2, i64 0), align 8, !tbaa !3
  %arrayidx2.i1.i.i = getelementptr inbounds [3 x float]* %box, i64 2, i64 1
  %26 = load float* %arrayidx2.i1.i.i, align 4, !tbaa !3
  store float %26, float* getelementptr inbounds ([3 x [3 x float]]* @BOX, i64 0, i64 2, i64 1), align 4, !tbaa !3
  %arrayidx4.i2.i.i = getelementptr inbounds [3 x float]* %box, i64 2, i64 2
  %27 = load float* %arrayidx4.i2.i.i, align 4, !tbaa !3
  store float %27, float* getelementptr inbounds ([3 x [3 x float]]* @BOX, i64 0, i64 2, i64 2), align 8, !tbaa !3
  %conv78.i = sext i32 %inc77.i to i64
  tail call void @qsort(i8* %call1.i, i64 %conv78.i, i64 12, i32 (i8*, i8*)* @w_comp) #5
  %cmp8049.i = icmp sgt i32 %j.1.lcssa.i, -1
  br i1 %cmp8049.i, label %for.body82.i, label %buildbox.exit

for.body82.i:                                     ; preds = %for.end76.i, %for.body82.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %for.body82.i ], [ 0, %for.end76.i ]
  %28 = load %struct._IO_FILE** @stderr, align 8, !tbaa !4
  %arrayidx85.i = getelementptr inbounds [3 x i32]* %0, i64 %indvars.iv.i, i64 0
  %29 = load i32* %arrayidx85.i, align 4, !tbaa !0
  %arrayidx88.i = getelementptr inbounds [3 x i32]* %0, i64 %indvars.iv.i, i64 1
  %30 = load i32* %arrayidx88.i, align 4, !tbaa !0
  %arrayidx91.i = getelementptr inbounds [3 x i32]* %0, i64 %indvars.iv.i, i64 2
  %31 = load i32* %arrayidx91.i, align 4, !tbaa !0
  %mul98.i = mul nsw i32 %30, %29
  %mul102.i = mul nsw i32 %mul98.i, %31
  %call106.i = tail call fastcc float @box_weight(i32* %arrayidx85.i, [3 x float]* %box) #5
  %conv107.i = fpext float %call106.i to double
  %call108.i = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %28, i8* getelementptr inbounds ([54 x i8]* @.str5, i64 0, i64 0), i32 %29, i32 %30, i32 %31, i32 %mul102.i, double %conv107.i) #5
  %indvars.iv.next.i = add i64 %indvars.iv.i, 1
  %32 = trunc i64 %indvars.iv.next.i to i32
  %cmp80.i = icmp slt i32 %32, %inc77.i
  br i1 %cmp80.i, label %for.body82.i, label %buildbox.exit

buildbox.exit:                                    ; preds = %for.body82.i, %for.end76.i
  %arraydecay113.i = bitcast i8* %call1.i to i32*
  %33 = load i32* %arraydecay113.i, align 4, !tbaa !0
  store i32 %33, i32* getelementptr inbounds ([3 x i32]* @NBOX, i64 0, i64 0), align 4, !tbaa !0
  %arrayidx2.i.i = getelementptr inbounds i8* %call1.i, i64 4
  %34 = bitcast i8* %arrayidx2.i.i to i32*
  %35 = load i32* %34, align 4, !tbaa !0
  store i32 %35, i32* getelementptr inbounds ([3 x i32]* @NBOX, i64 0, i64 1), align 4, !tbaa !0
  %arrayidx4.i.i = getelementptr inbounds i8* %call1.i, i64 8
  %36 = bitcast i8* %arrayidx4.i.i to i32*
  %37 = load i32* %36, align 4, !tbaa !0
  store i32 %37, i32* getelementptr inbounds ([3 x i32]* @NBOX, i64 0, i64 2), align 4, !tbaa !0
  tail call void @save_free(i8* getelementptr inbounds ([3 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([57 x i8]* @.str1, i64 0, i64 0), i32 313, i8* %call1.i) #5
  tail call void @save_free(i8* getelementptr inbounds ([3 x i8]* @.str4, i64 0, i64 0), i8* getelementptr inbounds ([57 x i8]* @.str1, i64 0, i64 0), i32 314, i8* %call4.i) #5
  tail call void @save_free(i8* getelementptr inbounds ([3 x i8]* @.str3, i64 0, i64 0), i8* getelementptr inbounds ([57 x i8]* @.str1, i64 0, i64 0), i32 315, i8* %call2.i) #5
  br label %for.body

for.body:                                         ; preds = %for.body, %buildbox.exit
  %indvars.iv = phi i64 [ 0, %buildbox.exit ], [ %indvars.iv.next, %for.body ]
  %arrayidx3 = getelementptr inbounds [3 x float]* %box, i64 %indvars.iv, i64 %indvars.iv
  %38 = load float* %arrayidx3, align 4, !tbaa !3
  %conv4 = fdiv float 1.000000e+00, %38
  %arrayidx6 = getelementptr inbounds [3 x float]* @box_1, i64 0, i64 %indvars.iv
  store float %conv4, float* %arrayidx6, align 4, !tbaa !3
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, 3
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          ; preds = %for.body
  tail call fastcc void @lo_sortwater(i32 %astart, i32 %nwater, i32 %nwatom, [3 x float]* %x, [3 x float]* %v, i32 1) #6
  br label %return

return:                                           ; preds = %entry, %for.end
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @factorize(i32 %nn, i32* nocapture %fac) #0 {
entry:
  %cmp52 = icmp slt i32 %nn, 0
  br i1 %cmp52, label %for.end.thread, label %for.end

for.end.thread:                                   ; preds = %entry
  %arrayidx165 = getelementptr inbounds i32* %fac, i64 1
  store i32 1, i32* %arrayidx165, align 4, !tbaa !0
  br label %for.end10

for.end:                                          ; preds = %entry
  %fac64 = bitcast i32* %fac to i8*
  %0 = zext i32 %nn to i64
  %1 = shl nuw nsw i64 %0, 2
  %2 = add i64 %1, 4
  call void @llvm.memset.p0i8.i64(i8* %fac64, i8 0, i64 %2, i32 4, i1 false)
  %arrayidx1 = getelementptr inbounds i32* %fac, i64 1
  store i32 1, i32* %arrayidx1, align 4, !tbaa !0
  %cmp35054 = icmp slt i32 %nn, 2
  br i1 %cmp35054, label %for.end10, label %for.body4.lr.ph

for.body4.lr.ph:                                  ; preds = %for.end, %if.else
  %indvars.iv58 = phi i64 [ %indvars.iv.next59, %if.else ], [ 2, %for.end ]
  %n.0.ph56 = phi i32 [ %n.051, %if.else ], [ %nn, %for.end ]
  %arrayidx7 = getelementptr inbounds i32* %fac, i64 %indvars.iv58
  br label %for.body4

for.body4:                                        ; preds = %for.body4.lr.ph, %if.then
  %n.051 = phi i32 [ %n.0.ph56, %for.body4.lr.ph ], [ %div, %if.then ]
  %3 = trunc i64 %indvars.iv58 to i32
  %rem = srem i32 %n.051, %3
  %cmp5 = icmp eq i32 %rem, 0
  br i1 %cmp5, label %if.then, label %if.else

if.then:                                          ; preds = %for.body4
  %4 = load i32* %arrayidx7, align 4, !tbaa !0
  %inc8 = add nsw i32 %4, 1
  store i32 %inc8, i32* %arrayidx7, align 4, !tbaa !0
  %div = sdiv i32 %n.051, %3
  %cmp3 = icmp sgt i32 %3, %div
  br i1 %cmp3, label %for.end10, label %for.body4

if.else:                                          ; preds = %for.body4
  %indvars.iv.next59 = add i64 %indvars.iv58, 1
  %cmp350 = icmp slt i32 %3, %n.051
  br i1 %cmp350, label %for.body4.lr.ph, label %for.end10

for.end10:                                        ; preds = %for.end, %for.end.thread, %if.else, %if.then
  %cmp3505467 = phi i1 [ %cmp35054, %if.then ], [ true, %for.end.thread ], [ true, %for.end ], [ %cmp35054, %if.else ]
  %5 = load %struct._IO_FILE** @debug, align 8, !tbaa !4
  %tobool = icmp eq %struct._IO_FILE* %5, null
  br i1 %tobool, label %if.end26, label %if.then11

if.then11:                                        ; preds = %for.end10
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([29 x i8]* @.str6, i64 0, i64 0), i32 %nn) #5
  br i1 %cmp3505467, label %if.end26, label %for.body14.lr.ph

for.body14.lr.ph:                                 ; preds = %if.then11
  %6 = add i32 %nn, 1
  br label %for.body14

for.body14:                                       ; preds = %for.inc23, %for.body14.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc23 ], [ 2, %for.body14.lr.ph ]
  %arrayidx16 = getelementptr inbounds i32* %fac, i64 %indvars.iv
  %7 = load i32* %arrayidx16, align 4, !tbaa !0
  %tobool17 = icmp eq i32 %7, 0
  br i1 %tobool17, label %for.inc23, label %if.then18

if.then18:                                        ; preds = %for.body14
  %8 = load %struct._IO_FILE** @debug, align 8, !tbaa !4
  %9 = trunc i64 %indvars.iv to i32
  %call21 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %8, i8* getelementptr inbounds ([9 x i8]* @.str7, i64 0, i64 0), i32 %9, i32 %7) #5
  br label %for.inc23

for.inc23:                                        ; preds = %for.body14, %if.then18
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %6
  br i1 %exitcond, label %if.end26, label %for.body14

if.end26:                                         ; preds = %if.then11, %for.inc23, %for.end10
  ret void
}

; Function Attrs: optsize
declare void @qsort(i8*, i64, i64, i32 (i8*, i8*)* nocapture) #1

; Function Attrs: nounwind optsize readonly uwtable
define internal i32 @iv_comp(i8* nocapture %a, i8* nocapture %b) #2 {
entry:
  %0 = bitcast i8* %a to i32*
  %1 = bitcast i8* %b to i32*
  %2 = load i32* %0, align 4, !tbaa !0
  %3 = load i32* %1, align 4, !tbaa !0
  %cmp = icmp eq i32 %2, %3
  br i1 %cmp, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %sub = sub nsw i32 %2, %3
  br label %return

if.else:                                          ; preds = %entry
  %arrayidx4 = getelementptr inbounds i8* %a, i64 4
  %4 = bitcast i8* %arrayidx4 to i32*
  %5 = load i32* %4, align 4, !tbaa !0
  %arrayidx5 = getelementptr inbounds i8* %b, i64 4
  %6 = bitcast i8* %arrayidx5 to i32*
  %7 = load i32* %6, align 4, !tbaa !0
  %cmp6 = icmp eq i32 %5, %7
  br i1 %cmp6, label %if.else11, label %if.then7

if.then7:                                         ; preds = %if.else
  %sub10 = sub nsw i32 %5, %7
  br label %return

if.else11:                                        ; preds = %if.else
  %arrayidx12 = getelementptr inbounds i8* %a, i64 8
  %8 = bitcast i8* %arrayidx12 to i32*
  %9 = load i32* %8, align 4, !tbaa !0
  %arrayidx13 = getelementptr inbounds i8* %b, i64 8
  %10 = bitcast i8* %arrayidx13 to i32*
  %11 = load i32* %10, align 4, !tbaa !0
  %sub14 = sub nsw i32 %9, %11
  br label %return

return:                                           ; preds = %if.else11, %if.then7, %if.then
  %retval.0 = phi i32 [ %sub, %if.then ], [ %sub10, %if.then7 ], [ %sub14, %if.else11 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind optsize readonly uwtable
define internal i32 @w_comp(i8* nocapture %a, i8* nocapture %b) #2 {
entry:
  %0 = bitcast i8* %a to i32*
  %1 = bitcast i8* %b to i32*
  %call = tail call fastcc float @box_weight(i32* %0, [3 x float]* getelementptr inbounds ([3 x [3 x float]]* @BOX, i64 0, i64 0)) #6
  %call1 = tail call fastcc float @box_weight(i32* %1, [3 x float]* getelementptr inbounds ([3 x [3 x float]]* @BOX, i64 0, i64 0)) #6
  %sub = fsub float %call, %call1
  %fabsf = tail call float @fabsf(float %sub) #7
  %2 = fpext float %fabsf to double
  %cmp = fcmp olt double %2, 1.000000e-04
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load i32* %0, align 4, !tbaa !0
  %mul.i = mul nsw i32 %3, %3
  %arrayidx2.i = getelementptr inbounds i8* %a, i64 4
  %4 = bitcast i8* %arrayidx2.i to i32*
  %5 = load i32* %4, align 4, !tbaa !0
  %mul4.i = mul nsw i32 %5, %5
  %add.i = add nsw i32 %mul4.i, %mul.i
  %arrayidx5.i = getelementptr inbounds i8* %a, i64 8
  %6 = bitcast i8* %arrayidx5.i to i32*
  %7 = load i32* %6, align 4, !tbaa !0
  %mul7.i = mul nsw i32 %7, %7
  %add8.i = add nsw i32 %add.i, %mul7.i
  %conv.i = sitofp i32 %add8.i to float
  %8 = load i32* %1, align 4, !tbaa !0
  %mul.i18 = mul nsw i32 %8, %8
  %arrayidx2.i19 = getelementptr inbounds i8* %b, i64 4
  %9 = bitcast i8* %arrayidx2.i19 to i32*
  %10 = load i32* %9, align 4, !tbaa !0
  %mul4.i21 = mul nsw i32 %10, %10
  %add.i22 = add nsw i32 %mul4.i21, %mul.i18
  %arrayidx5.i23 = getelementptr inbounds i8* %b, i64 8
  %11 = bitcast i8* %arrayidx5.i23 to i32*
  %12 = load i32* %11, align 4, !tbaa !0
  %mul7.i25 = mul nsw i32 %12, %12
  %add8.i26 = add nsw i32 %add.i22, %mul7.i25
  %conv.i27 = sitofp i32 %add8.i26 to float
  %sub6 = fsub float %conv.i, %conv.i27
  %conv7 = fptosi float %sub6 to i32
  br label %return

if.else:                                          ; preds = %entry
  %cmp8 = fcmp olt float %call, %call1
  %. = select i1 %cmp8, i32 -1, i32 1
  br label %return

return:                                           ; preds = %if.else, %if.then
  %retval.0 = phi i32 [ %conv7, %if.then ], [ %., %if.else ]
  ret i32 %retval.0
}

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #3

; Function Attrs: nounwind optsize readonly uwtable
define internal fastcc float @box_weight(i32* nocapture %nbox, [3 x float]* nocapture %box) #2 {
entry:
  %lx = alloca [3 x float], align 4
  br label %for.body

for.body:                                         ; preds = %for.body, %entry
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %for.body ]
  %arrayidx2 = getelementptr inbounds [3 x float]* %box, i64 %indvars.iv, i64 %indvars.iv
  %0 = load float* %arrayidx2, align 4, !tbaa !3
  %arrayidx4 = getelementptr inbounds i32* %nbox, i64 %indvars.iv
  %1 = load i32* %arrayidx4, align 4, !tbaa !0
  %conv = sitofp i32 %1 to float
  %div = fdiv float %0, %conv
  %arrayidx6 = getelementptr inbounds [3 x float]* %lx, i64 0, i64 %indvars.iv
  store float %div, float* %arrayidx6, align 4, !tbaa !3
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, 3
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          ; preds = %for.body
  %arrayidx7 = getelementptr inbounds [3 x float]* %lx, i64 0, i64 0
  %2 = load float* %arrayidx7, align 4, !tbaa !3
  %arrayidx8 = getelementptr inbounds [3 x float]* %lx, i64 0, i64 1
  %3 = load float* %arrayidx8, align 4, !tbaa !3
  %mul = fmul float %2, %3
  %arrayidx10 = getelementptr inbounds [3 x float]* %lx, i64 0, i64 2
  %4 = load float* %arrayidx10, align 4, !tbaa !3
  %mul11 = fmul float %2, %4
  %add = fadd float %mul, %mul11
  %mul14 = fmul float %3, %4
  %add15 = fadd float %mul14, %add
  %mul16 = fmul float %add15, 2.000000e+00
  ret float %mul16
}

; Function Attrs: nounwind optsize readonly uwtable
define internal i32 @blockcomp(i8* nocapture %a, i8* nocapture %b) #2 {
entry:
  %0 = load i32* @nwat, align 4, !tbaa !0
  %1 = bitcast i8* %a to i32*
  %2 = load i32* %1, align 4, !tbaa !0
  %mul = mul nsw i32 %2, %0
  %3 = bitcast i8* %b to i32*
  %4 = load i32* %3, align 4, !tbaa !0
  %mul1 = mul nsw i32 %4, %0
  %idxprom = sext i32 %mul to i64
  %5 = load [3 x float]** @xptr, align 8, !tbaa !4
  %arraydecay = getelementptr inbounds [3 x float]* %5, i64 %idxprom, i64 0
  %call = tail call fastcc i32 @block_index(float* %arraydecay) #6
  %idxprom2 = sext i32 %mul1 to i64
  %arraydecay4 = getelementptr inbounds [3 x float]* %5, i64 %idxprom2, i64 0
  %call5 = tail call fastcc i32 @block_index(float* %arraydecay4) #6
  %cmp = icmp eq i32 %call, %call5
  br i1 %cmp, label %if.then, label %if.else23

if.then:                                          ; preds = %entry
  %6 = load float* %arraydecay, align 4, !tbaa !3
  %7 = load float* %arraydecay4, align 4, !tbaa !3
  %cmp12 = fcmp olt float %6, %7
  br i1 %cmp12, label %return, label %if.else

if.else:                                          ; preds = %if.then
  %cmp20 = fcmp ogt float %6, %7
  %. = zext i1 %cmp20 to i32
  br label %return

if.else23:                                        ; preds = %entry
  %sub = sub nsw i32 %call, %call5
  br label %return

return:                                           ; preds = %if.else, %if.then, %if.else23
  %retval.0 = phi i32 [ %sub, %if.else23 ], [ -1, %if.then ], [ %., %if.else ]
  ret i32 %retval.0
}

; Function Attrs: nounwind optsize readonly uwtable
define internal i32 @rvcomp(i8* nocapture %a, i8* nocapture %b) #2 {
entry:
  %0 = load i32* @nwat, align 4, !tbaa !0
  %1 = bitcast i8* %a to i32*
  %2 = load i32* %1, align 4, !tbaa !0
  %mul = mul nsw i32 %2, %0
  %3 = bitcast i8* %b to i32*
  %4 = load i32* %3, align 4, !tbaa !0
  %mul1 = mul nsw i32 %4, %0
  %idxprom = sext i32 %mul to i64
  %5 = load [3 x float]** @xptr, align 8, !tbaa !4
  %arrayidx2 = getelementptr inbounds [3 x float]* %5, i64 %idxprom, i64 0
  %6 = load float* %arrayidx2, align 4, !tbaa !3
  %idxprom3 = sext i32 %mul1 to i64
  %arrayidx5 = getelementptr inbounds [3 x float]* %5, i64 %idxprom3, i64 0
  %7 = load float* %arrayidx5, align 4, !tbaa !3
  %cmp = fcmp olt float %6, %7
  br i1 %cmp, label %return, label %if.else

if.else:                                          ; preds = %entry
  %cmp12 = fcmp ogt float %6, %7
  %. = zext i1 %cmp12 to i32
  br label %return

return:                                           ; preds = %if.else, %entry
  %retval.0 = phi i32 [ -1, %entry ], [ %., %if.else ]
  ret i32 %retval.0
}

; Function Attrs: nounwind optsize readonly uwtable
define internal fastcc i32 @block_index(float* nocapture %x) #2 {
entry:
  %ixyz = alloca [3 x i32], align 4
  br label %for.body

for.body:                                         ; preds = %for.body, %entry
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %for.body ]
  %arrayidx = getelementptr inbounds float* %x, i64 %indvars.iv
  %0 = load float* %arrayidx, align 4, !tbaa !3
  %arrayidx2 = getelementptr inbounds [3 x float]* @box_1, i64 0, i64 %indvars.iv
  %1 = load float* %arrayidx2, align 4, !tbaa !3
  %mul = fmul float %0, %1
  %add = fadd float %mul, 1.000000e+00
  %arrayidx4 = getelementptr inbounds [3 x i32]* @NBOX, i64 0, i64 %indvars.iv
  %2 = load i32* %arrayidx4, align 4, !tbaa !0
  %conv = sitofp i32 %2 to float
  %mul5 = fmul float %add, %conv
  %conv6 = fptosi float %mul5 to i32
  %rem = srem i32 %conv6, %2
  %arrayidx10 = getelementptr inbounds [3 x i32]* %ixyz, i64 0, i64 %indvars.iv
  store i32 %rem, i32* %arrayidx10, align 4, !tbaa !0
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, 3
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          ; preds = %for.body
  %arrayidx11 = getelementptr inbounds [3 x i32]* %ixyz, i64 0, i64 0
  %3 = load i32* %arrayidx11, align 4, !tbaa !0
  %4 = load i32* getelementptr inbounds ([3 x i32]* @NBOX, i64 0, i64 1), align 4, !tbaa !0
  %mul13 = mul nsw i32 %4, %3
  %5 = load i32* getelementptr inbounds ([3 x i32]* @NBOX, i64 0, i64 2), align 4, !tbaa !0
  %arrayidx16 = getelementptr inbounds [3 x i32]* %ixyz, i64 0, i64 1
  %6 = load i32* %arrayidx16, align 4, !tbaa !0
  %mul151 = add i32 %6, %mul13
  %add19 = mul i32 %mul151, %5
  %arrayidx20 = getelementptr inbounds [3 x i32]* %ixyz, i64 0, i64 2
  %7 = load i32* %arrayidx20, align 4, !tbaa !0
  %add21 = add nsw i32 %add19, %7
  ret i32 %add21
}

declare float @fabsf(float)

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #4

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind optsize readonly uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind optsize }
attributes #6 = { optsize }
attributes #7 = { nounwind optsize readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }

!0 = metadata !{metadata !"int", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"float", metadata !1}
!4 = metadata !{metadata !"any pointer", metadata !1}
