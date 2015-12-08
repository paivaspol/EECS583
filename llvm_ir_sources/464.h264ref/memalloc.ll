; ModuleID = '../../SPEC/benchspec/CPU2006/464.h264ref/src/memalloc.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [33 x i8] c"init_top_bot_planes: imgTopField\00", align 1
@.str1 = private unnamed_addr constant [33 x i8] c"init_top_bot_planes: imgBotField\00", align 1
@.str2 = private unnamed_addr constant [22 x i8] c"get_mem2Dpel: array2D\00", align 1
@.str3 = private unnamed_addr constant [22 x i8] c"get_mem3Dpel: array3D\00", align 1
@.str4 = private unnamed_addr constant [44 x i8] c"free_mem2Dpel: trying to free unused memory\00", align 1
@.str5 = private unnamed_addr constant [44 x i8] c"free_mem3Dpel: trying to free unused memory\00", align 1
@.str6 = private unnamed_addr constant [19 x i8] c"get_mem2D: array2D\00", align 1
@.str7 = private unnamed_addr constant [22 x i8] c"get_mem2Dint: array2D\00", align 1
@.str8 = private unnamed_addr constant [24 x i8] c"get_mem2Dint64: array2D\00", align 1
@.str9 = private unnamed_addr constant [19 x i8] c"get_mem3D: array3D\00", align 1
@.str10 = private unnamed_addr constant [22 x i8] c"get_mem3Dint: array3D\00", align 1
@.str11 = private unnamed_addr constant [24 x i8] c"get_mem3Dint64: array3D\00", align 1
@.str12 = private unnamed_addr constant [22 x i8] c"get_mem4Dint: array4D\00", align 1
@.str13 = private unnamed_addr constant [41 x i8] c"free_mem2D: trying to free unused memory\00", align 1
@.str14 = private unnamed_addr constant [44 x i8] c"free_mem2Dint: trying to free unused memory\00", align 1
@.str15 = private unnamed_addr constant [46 x i8] c"free_mem2Dint64: trying to free unused memory\00", align 1
@.str16 = private unnamed_addr constant [41 x i8] c"free_mem3D: trying to free unused memory\00", align 1
@.str17 = private unnamed_addr constant [44 x i8] c"free_mem3Dint: trying to free unused memory\00", align 1
@.str18 = private unnamed_addr constant [46 x i8] c"free_mem3Dint64: trying to free unused memory\00", align 1
@.str19 = private unnamed_addr constant [44 x i8] c"free_mem4Dint: trying to free unused memory\00", align 1
@errortext = external global [300 x i8]
@.str20 = private unnamed_addr constant [30 x i8] c"Could not allocate memory: %s\00", align 1
@.str21 = private unnamed_addr constant [24 x i8] c"get_mem2Dshort: array2D\00", align 1
@.str22 = private unnamed_addr constant [24 x i8] c"get_mem3Dshort: array3D\00", align 1
@.str23 = private unnamed_addr constant [24 x i8] c"get_mem4Dshort: array4D\00", align 1
@.str24 = private unnamed_addr constant [46 x i8] c"free_mem2Dshort: trying to free unused memory\00", align 1
@.str25 = private unnamed_addr constant [46 x i8] c"free_mem3Dshort: trying to free unused memory\00", align 1
@.str26 = private unnamed_addr constant [46 x i8] c"free_mem4Dshort: trying to free unused memory\00", align 1

; Function Attrs: nounwind optsize uwtable
define i32 @init_top_bot_planes(i16** nocapture %imgFrame, i32 %rows, i32 %columns, i16*** nocapture %imgTopField, i16*** nocapture %imgBotField) #0 {
entry:
  %div = sdiv i32 %rows, 2
  %conv = sext i32 %div to i64
  %call = tail call noalias i8* @calloc(i64 %conv, i64 8) #3
  %0 = bitcast i8* %call to i16**
  store i16** %0, i16*** %imgTopField, align 8, !tbaa !0
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call.i = tail call i32 (i8*, i64, i8*, ...)* @snprintf(i8* getelementptr inbounds ([300 x i8]* @errortext, i64 0, i64 0), i64 300, i8* getelementptr inbounds ([30 x i8]* @.str20, i64 0, i64 0), i8* getelementptr inbounds ([33 x i8]* @.str, i64 0, i64 0)) #3
  tail call void @error(i8* getelementptr inbounds ([300 x i8]* @errortext, i64 0, i64 0), i32 100) #3
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %call4 = tail call noalias i8* @calloc(i64 %conv, i64 8) #3
  %1 = bitcast i8* %call4 to i16**
  store i16** %1, i16*** %imgBotField, align 8, !tbaa !0
  %cmp5 = icmp eq i8* %call4, null
  br i1 %cmp5, label %if.then7, label %for.cond.preheader

if.then7:                                         ; preds = %if.end
  %call.i34 = tail call i32 (i8*, i64, i8*, ...)* @snprintf(i8* getelementptr inbounds ([300 x i8]* @errortext, i64 0, i64 0), i64 300, i8* getelementptr inbounds ([30 x i8]* @.str20, i64 0, i64 0), i8* getelementptr inbounds ([33 x i8]* @.str1, i64 0, i64 0)) #3
  tail call void @error(i8* getelementptr inbounds ([300 x i8]* @errortext, i64 0, i64 0), i32 100) #3
  br label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.then7, %if.end
  %cmp1035 = icmp sgt i32 %rows, 1
  br i1 %cmp1035, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond.preheader, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %for.cond.preheader ]
  %2 = trunc i64 %indvars.iv to i32
  %mul = shl nsw i32 %2, 1
  %idxprom = sext i32 %mul to i64
  %arrayidx = getelementptr inbounds i16** %imgFrame, i64 %idxprom
  %3 = load i16** %arrayidx, align 8, !tbaa !0
  %4 = load i16*** %imgTopField, align 8, !tbaa !0
  %arrayidx13 = getelementptr inbounds i16** %4, i64 %indvars.iv
  store i16* %3, i16** %arrayidx13, align 8, !tbaa !0
  %add33 = or i32 %mul, 1
  %idxprom15 = sext i32 %add33 to i64
  %arrayidx16 = getelementptr inbounds i16** %imgFrame, i64 %idxprom15
  %5 = load i16** %arrayidx16, align 8, !tbaa !0
  %6 = load i16*** %imgBotField, align 8, !tbaa !0
  %arrayidx18 = getelementptr inbounds i16** %6, i64 %indvars.iv
  store i16* %5, i16** %arrayidx18, align 8, !tbaa !0
  %indvars.iv.next = add i64 %indvars.iv, 1
  %7 = trunc i64 %indvars.iv.next to i32
  %cmp10 = icmp slt i32 %7, %div
  br i1 %cmp10, label %for.body, label %for.end

for.end:                                          ; preds = %for.body, %for.cond.preheader
  %mul20 = shl i32 %rows, 3
  ret i32 %mul20
}

; Function Attrs: nounwind optsize
declare noalias i8* @calloc(i64, i64) #1

; Function Attrs: nounwind optsize uwtable
define void @no_mem_exit(i8* %where) #0 {
entry:
  %call = tail call i32 (i8*, i64, i8*, ...)* @snprintf(i8* getelementptr inbounds ([300 x i8]* @errortext, i64 0, i64 0), i64 300, i8* getelementptr inbounds ([30 x i8]* @.str20, i64 0, i64 0), i8* %where) #3
  tail call void @error(i8* getelementptr inbounds ([300 x i8]* @errortext, i64 0, i64 0), i32 100) #3
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @free_top_bot_planes(i16** nocapture %imgTopField, i16** nocapture %imgBotField) #0 {
entry:
  %0 = bitcast i16** %imgTopField to i8*
  tail call void @free(i8* %0) #3
  %1 = bitcast i16** %imgBotField to i8*
  tail call void @free(i8* %1) #3
  ret void
}

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) #1

; Function Attrs: nounwind optsize uwtable
define i32 @get_mem2Dpel(i16*** nocapture %array2D, i32 %rows, i32 %columns) #0 {
entry:
  %conv = sext i32 %rows to i64
  %call = tail call noalias i8* @calloc(i64 %conv, i64 8) #3
  %0 = bitcast i8* %call to i16**
  store i16** %0, i16*** %array2D, align 8, !tbaa !0
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call.i = tail call i32 (i8*, i64, i8*, ...)* @snprintf(i8* getelementptr inbounds ([300 x i8]* @errortext, i64 0, i64 0), i64 300, i8* getelementptr inbounds ([30 x i8]* @.str20, i64 0, i64 0), i8* getelementptr inbounds ([22 x i8]* @.str2, i64 0, i64 0)) #3
  tail call void @error(i8* getelementptr inbounds ([300 x i8]* @errortext, i64 0, i64 0), i32 100) #3
  %.pre = load i16*** %array2D, align 8, !tbaa !0
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = phi i16** [ %.pre, %if.then ], [ %0, %entry ]
  %mul = mul nsw i32 %columns, %rows
  %conv2 = sext i32 %mul to i64
  %call3 = tail call noalias i8* @calloc(i64 %conv2, i64 2) #3
  %2 = bitcast i8* %call3 to i16*
  store i16* %2, i16** %1, align 8, !tbaa !0
  %cmp4 = icmp eq i8* %call3, null
  br i1 %cmp4, label %if.then6, label %for.cond.preheader

if.then6:                                         ; preds = %if.end
  %call.i28 = tail call i32 (i8*, i64, i8*, ...)* @snprintf(i8* getelementptr inbounds ([300 x i8]* @errortext, i64 0, i64 0), i64 300, i8* getelementptr inbounds ([30 x i8]* @.str20, i64 0, i64 0), i8* getelementptr inbounds ([22 x i8]* @.str2, i64 0, i64 0)) #3
  tail call void @error(i8* getelementptr inbounds ([300 x i8]* @errortext, i64 0, i64 0), i32 100) #3
  br label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.then6, %if.end
  %cmp829 = icmp sgt i32 %rows, 1
  br i1 %cmp829, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %idx.ext = sext i32 %columns to i64
  br label %for.body

for.body:                                         ; preds = %for.body, %for.body.lr.ph
  %indvars.iv = phi i64 [ 1, %for.body.lr.ph ], [ %indvars.iv.next, %for.body ]
  %3 = add nsw i64 %indvars.iv, -1
  %4 = load i16*** %array2D, align 8, !tbaa !0
  %arrayidx10 = getelementptr inbounds i16** %4, i64 %3
  %5 = load i16** %arrayidx10, align 8, !tbaa !0
  %add.ptr = getelementptr inbounds i16* %5, i64 %idx.ext
  %arrayidx12 = getelementptr inbounds i16** %4, i64 %indvars.iv
  store i16* %add.ptr, i16** %arrayidx12, align 8, !tbaa !0
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %rows
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %for.cond.preheader
  %mul15 = shl i32 %mul, 1
  ret i32 %mul15
}

; Function Attrs: nounwind optsize uwtable
define i32 @get_mem3Dpel(i16**** nocapture %array3D, i32 %frames, i32 %rows, i32 %columns) #0 {
entry:
  %conv = sext i32 %frames to i64
  %call = tail call noalias i8* @calloc(i64 %conv, i64 8) #3
  %0 = bitcast i8* %call to i16***
  store i16*** %0, i16**** %array3D, align 8, !tbaa !0
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %if.then, label %for.cond.preheader

if.then:                                          ; preds = %entry
  %call.i = tail call i32 (i8*, i64, i8*, ...)* @snprintf(i8* getelementptr inbounds ([300 x i8]* @errortext, i64 0, i64 0), i64 300, i8* getelementptr inbounds ([30 x i8]* @.str20, i64 0, i64 0), i8* getelementptr inbounds ([22 x i8]* @.str3, i64 0, i64 0)) #3
  tail call void @error(i8* getelementptr inbounds ([300 x i8]* @errortext, i64 0, i64 0), i32 100) #3
  br label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.then, %entry
  %cmp216 = icmp sgt i32 %frames, 0
  br i1 %cmp216, label %for.body, label %for.end

for.body:                                         ; preds = %for.body, %for.cond.preheader
  %indvars.iv = phi i64 [ 0, %for.cond.preheader ], [ %indvars.iv.next, %for.body ]
  %1 = load i16**** %array3D, align 8, !tbaa !0
  %add.ptr = getelementptr inbounds i16*** %1, i64 %indvars.iv
  %call4 = tail call i32 @get_mem2Dpel(i16*** %add.ptr, i32 %rows, i32 %columns) #4
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %frames
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %for.cond.preheader
  %mul = shl i32 %frames, 1
  %mul5 = mul i32 %mul, %rows
  %mul7 = mul i32 %mul5, %columns
  ret i32 %mul7
}

; Function Attrs: nounwind optsize uwtable
define void @free_mem2Dpel(i16** %array2D) #0 {
entry:
  %tobool = icmp eq i16** %array2D, null
  br i1 %tobool, label %if.else4, label %if.then

if.then:                                          ; preds = %entry
  %0 = load i16** %array2D, align 8, !tbaa !0
  %tobool1 = icmp eq i16* %0, null
  br i1 %tobool1, label %if.else, label %if.then2

if.then2:                                         ; preds = %if.then
  %1 = bitcast i16* %0 to i8*
  tail call void @free(i8* %1) #3
  br label %if.end

if.else:                                          ; preds = %if.then
  tail call void @error(i8* getelementptr inbounds ([44 x i8]* @.str4, i64 0, i64 0), i32 100) #3
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then2
  %2 = bitcast i16** %array2D to i8*
  tail call void @free(i8* %2) #3
  br label %if.end5

if.else4:                                         ; preds = %entry
  tail call void @error(i8* getelementptr inbounds ([44 x i8]* @.str4, i64 0, i64 0), i32 100) #3
  br label %if.end5

if.end5:                                          ; preds = %if.else4, %if.end
  ret void
}

; Function Attrs: optsize
declare void @error(i8*, i32) #2

; Function Attrs: nounwind optsize uwtable
define void @free_mem3Dpel(i16*** %array3D, i32 %frames) #0 {
entry:
  %tobool = icmp eq i16*** %array3D, null
  br i1 %tobool, label %if.else, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %cmp5 = icmp sgt i32 %frames, 0
  br i1 %cmp5, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond.preheader, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %for.cond.preheader ]
  %arrayidx = getelementptr inbounds i16*** %array3D, i64 %indvars.iv
  %0 = load i16*** %arrayidx, align 8, !tbaa !0
  tail call void @free_mem2Dpel(i16** %0) #4
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %frames
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %for.cond.preheader
  %1 = bitcast i16*** %array3D to i8*
  tail call void @free(i8* %1) #3
  br label %if.end

if.else:                                          ; preds = %entry
  tail call void @error(i8* getelementptr inbounds ([44 x i8]* @.str5, i64 0, i64 0), i32 100) #3
  br label %if.end

if.end:                                           ; preds = %if.else, %for.end
  ret void
}

; Function Attrs: nounwind optsize uwtable
define i32 @get_mem2D(i8*** nocapture %array2D, i32 %rows, i32 %columns) #0 {
entry:
  %conv = sext i32 %rows to i64
  %call = tail call noalias i8* @calloc(i64 %conv, i64 8) #3
  %0 = bitcast i8* %call to i8**
  store i8** %0, i8*** %array2D, align 8, !tbaa !0
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call.i = tail call i32 (i8*, i64, i8*, ...)* @snprintf(i8* getelementptr inbounds ([300 x i8]* @errortext, i64 0, i64 0), i64 300, i8* getelementptr inbounds ([30 x i8]* @.str20, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8]* @.str6, i64 0, i64 0)) #3
  tail call void @error(i8* getelementptr inbounds ([300 x i8]* @errortext, i64 0, i64 0), i32 100) #3
  %.pre = load i8*** %array2D, align 8, !tbaa !0
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = phi i8** [ %.pre, %if.then ], [ %0, %entry ]
  %mul = mul nsw i32 %columns, %rows
  %conv2 = sext i32 %mul to i64
  %call3 = tail call noalias i8* @calloc(i64 %conv2, i64 1) #3
  store i8* %call3, i8** %1, align 8, !tbaa !0
  %cmp4 = icmp eq i8* %call3, null
  br i1 %cmp4, label %if.then6, label %for.cond.preheader

if.then6:                                         ; preds = %if.end
  %call.i25 = tail call i32 (i8*, i64, i8*, ...)* @snprintf(i8* getelementptr inbounds ([300 x i8]* @errortext, i64 0, i64 0), i64 300, i8* getelementptr inbounds ([30 x i8]* @.str20, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8]* @.str6, i64 0, i64 0)) #3
  tail call void @error(i8* getelementptr inbounds ([300 x i8]* @errortext, i64 0, i64 0), i32 100) #3
  br label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.then6, %if.end
  %cmp826 = icmp sgt i32 %rows, 1
  br i1 %cmp826, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %idx.ext = sext i32 %columns to i64
  br label %for.body

for.body:                                         ; preds = %for.body, %for.body.lr.ph
  %indvars.iv = phi i64 [ 1, %for.body.lr.ph ], [ %indvars.iv.next, %for.body ]
  %2 = add nsw i64 %indvars.iv, -1
  %3 = load i8*** %array2D, align 8, !tbaa !0
  %arrayidx10 = getelementptr inbounds i8** %3, i64 %2
  %4 = load i8** %arrayidx10, align 8, !tbaa !0
  %add.ptr = getelementptr inbounds i8* %4, i64 %idx.ext
  %arrayidx12 = getelementptr inbounds i8** %3, i64 %indvars.iv
  store i8* %add.ptr, i8** %arrayidx12, align 8, !tbaa !0
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %rows
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %for.cond.preheader
  ret i32 %mul
}

; Function Attrs: nounwind optsize uwtable
define i32 @get_mem2Dint(i32*** nocapture %array2D, i32 %rows, i32 %columns) #0 {
entry:
  %conv = sext i32 %rows to i64
  %call = tail call noalias i8* @calloc(i64 %conv, i64 8) #3
  %0 = bitcast i8* %call to i32**
  store i32** %0, i32*** %array2D, align 8, !tbaa !0
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call.i = tail call i32 (i8*, i64, i8*, ...)* @snprintf(i8* getelementptr inbounds ([300 x i8]* @errortext, i64 0, i64 0), i64 300, i8* getelementptr inbounds ([30 x i8]* @.str20, i64 0, i64 0), i8* getelementptr inbounds ([22 x i8]* @.str7, i64 0, i64 0)) #3
  tail call void @error(i8* getelementptr inbounds ([300 x i8]* @errortext, i64 0, i64 0), i32 100) #3
  %.pre = load i32*** %array2D, align 8, !tbaa !0
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = phi i32** [ %.pre, %if.then ], [ %0, %entry ]
  %mul = mul nsw i32 %columns, %rows
  %conv2 = sext i32 %mul to i64
  %call3 = tail call noalias i8* @calloc(i64 %conv2, i64 4) #3
  %2 = bitcast i8* %call3 to i32*
  store i32* %2, i32** %1, align 8, !tbaa !0
  %cmp4 = icmp eq i8* %call3, null
  br i1 %cmp4, label %if.then6, label %for.cond.preheader

if.then6:                                         ; preds = %if.end
  %call.i28 = tail call i32 (i8*, i64, i8*, ...)* @snprintf(i8* getelementptr inbounds ([300 x i8]* @errortext, i64 0, i64 0), i64 300, i8* getelementptr inbounds ([30 x i8]* @.str20, i64 0, i64 0), i8* getelementptr inbounds ([22 x i8]* @.str7, i64 0, i64 0)) #3
  tail call void @error(i8* getelementptr inbounds ([300 x i8]* @errortext, i64 0, i64 0), i32 100) #3
  br label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.then6, %if.end
  %cmp829 = icmp sgt i32 %rows, 1
  br i1 %cmp829, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %idx.ext = sext i32 %columns to i64
  br label %for.body

for.body:                                         ; preds = %for.body, %for.body.lr.ph
  %indvars.iv = phi i64 [ 1, %for.body.lr.ph ], [ %indvars.iv.next, %for.body ]
  %3 = add nsw i64 %indvars.iv, -1
  %4 = load i32*** %array2D, align 8, !tbaa !0
  %arrayidx10 = getelementptr inbounds i32** %4, i64 %3
  %5 = load i32** %arrayidx10, align 8, !tbaa !0
  %add.ptr = getelementptr inbounds i32* %5, i64 %idx.ext
  %arrayidx12 = getelementptr inbounds i32** %4, i64 %indvars.iv
  store i32* %add.ptr, i32** %arrayidx12, align 8, !tbaa !0
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %rows
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %for.cond.preheader
  %mul15 = shl i32 %mul, 2
  ret i32 %mul15
}

; Function Attrs: nounwind optsize uwtable
define i32 @get_mem2Dint64(i64*** nocapture %array2D, i32 %rows, i32 %columns) #0 {
entry:
  %conv = sext i32 %rows to i64
  %call = tail call noalias i8* @calloc(i64 %conv, i64 8) #3
  %0 = bitcast i8* %call to i64**
  store i64** %0, i64*** %array2D, align 8, !tbaa !0
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call.i = tail call i32 (i8*, i64, i8*, ...)* @snprintf(i8* getelementptr inbounds ([300 x i8]* @errortext, i64 0, i64 0), i64 300, i8* getelementptr inbounds ([30 x i8]* @.str20, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8]* @.str8, i64 0, i64 0)) #3
  tail call void @error(i8* getelementptr inbounds ([300 x i8]* @errortext, i64 0, i64 0), i32 100) #3
  %.pre = load i64*** %array2D, align 8, !tbaa !0
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = phi i64** [ %.pre, %if.then ], [ %0, %entry ]
  %mul = mul nsw i32 %columns, %rows
  %conv2 = sext i32 %mul to i64
  %call3 = tail call noalias i8* @calloc(i64 %conv2, i64 8) #3
  %2 = bitcast i8* %call3 to i64*
  store i64* %2, i64** %1, align 8, !tbaa !0
  %cmp4 = icmp eq i8* %call3, null
  br i1 %cmp4, label %if.then6, label %for.cond.preheader

if.then6:                                         ; preds = %if.end
  %call.i28 = tail call i32 (i8*, i64, i8*, ...)* @snprintf(i8* getelementptr inbounds ([300 x i8]* @errortext, i64 0, i64 0), i64 300, i8* getelementptr inbounds ([30 x i8]* @.str20, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8]* @.str8, i64 0, i64 0)) #3
  tail call void @error(i8* getelementptr inbounds ([300 x i8]* @errortext, i64 0, i64 0), i32 100) #3
  br label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.then6, %if.end
  %cmp829 = icmp sgt i32 %rows, 1
  br i1 %cmp829, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %idx.ext = sext i32 %columns to i64
  br label %for.body

for.body:                                         ; preds = %for.body, %for.body.lr.ph
  %indvars.iv = phi i64 [ 1, %for.body.lr.ph ], [ %indvars.iv.next, %for.body ]
  %3 = add nsw i64 %indvars.iv, -1
  %4 = load i64*** %array2D, align 8, !tbaa !0
  %arrayidx10 = getelementptr inbounds i64** %4, i64 %3
  %5 = load i64** %arrayidx10, align 8, !tbaa !0
  %add.ptr = getelementptr inbounds i64* %5, i64 %idx.ext
  %arrayidx12 = getelementptr inbounds i64** %4, i64 %indvars.iv
  store i64* %add.ptr, i64** %arrayidx12, align 8, !tbaa !0
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %rows
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %for.cond.preheader
  %mul15 = shl i32 %mul, 3
  ret i32 %mul15
}

; Function Attrs: nounwind optsize uwtable
define i32 @get_mem3D(i8**** nocapture %array3D, i32 %frames, i32 %rows, i32 %columns) #0 {
entry:
  %conv = sext i32 %frames to i64
  %call = tail call noalias i8* @calloc(i64 %conv, i64 8) #3
  %0 = bitcast i8* %call to i8***
  store i8*** %0, i8**** %array3D, align 8, !tbaa !0
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %if.then, label %for.cond.preheader

if.then:                                          ; preds = %entry
  %call.i = tail call i32 (i8*, i64, i8*, ...)* @snprintf(i8* getelementptr inbounds ([300 x i8]* @errortext, i64 0, i64 0), i64 300, i8* getelementptr inbounds ([30 x i8]* @.str20, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8]* @.str9, i64 0, i64 0)) #3
  tail call void @error(i8* getelementptr inbounds ([300 x i8]* @errortext, i64 0, i64 0), i32 100) #3
  br label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.then, %entry
  %cmp213 = icmp sgt i32 %frames, 0
  br i1 %cmp213, label %for.body, label %for.end

for.body:                                         ; preds = %for.body, %for.cond.preheader
  %indvars.iv = phi i64 [ 0, %for.cond.preheader ], [ %indvars.iv.next, %for.body ]
  %1 = load i8**** %array3D, align 8, !tbaa !0
  %add.ptr = getelementptr inbounds i8*** %1, i64 %indvars.iv
  %call4 = tail call i32 @get_mem2D(i8*** %add.ptr, i32 %rows, i32 %columns) #4
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %frames
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %for.cond.preheader
  %mul = mul nsw i32 %rows, %frames
  %mul5 = mul nsw i32 %mul, %columns
  ret i32 %mul5
}

; Function Attrs: nounwind optsize uwtable
define i32 @get_mem3Dint(i32**** nocapture %array3D, i32 %frames, i32 %rows, i32 %columns) #0 {
entry:
  %conv = sext i32 %frames to i64
  %call = tail call noalias i8* @calloc(i64 %conv, i64 8) #3
  %0 = bitcast i8* %call to i32***
  store i32*** %0, i32**** %array3D, align 8, !tbaa !0
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %if.then, label %for.cond.preheader

if.then:                                          ; preds = %entry
  %call.i = tail call i32 (i8*, i64, i8*, ...)* @snprintf(i8* getelementptr inbounds ([300 x i8]* @errortext, i64 0, i64 0), i64 300, i8* getelementptr inbounds ([30 x i8]* @.str20, i64 0, i64 0), i8* getelementptr inbounds ([22 x i8]* @.str10, i64 0, i64 0)) #3
  tail call void @error(i8* getelementptr inbounds ([300 x i8]* @errortext, i64 0, i64 0), i32 100) #3
  br label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.then, %entry
  %cmp216 = icmp sgt i32 %frames, 0
  br i1 %cmp216, label %for.body, label %for.end

for.body:                                         ; preds = %for.body, %for.cond.preheader
  %indvars.iv = phi i64 [ 0, %for.cond.preheader ], [ %indvars.iv.next, %for.body ]
  %1 = load i32**** %array3D, align 8, !tbaa !0
  %add.ptr = getelementptr inbounds i32*** %1, i64 %indvars.iv
  %call4 = tail call i32 @get_mem2Dint(i32*** %add.ptr, i32 %rows, i32 %columns) #4
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %frames
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %for.cond.preheader
  %mul = shl i32 %frames, 2
  %mul5 = mul i32 %mul, %rows
  %mul7 = mul i32 %mul5, %columns
  ret i32 %mul7
}

; Function Attrs: nounwind optsize uwtable
define i32 @get_mem3Dint64(i64**** nocapture %array3D, i32 %frames, i32 %rows, i32 %columns) #0 {
entry:
  %conv = sext i32 %frames to i64
  %call = tail call noalias i8* @calloc(i64 %conv, i64 8) #3
  %0 = bitcast i8* %call to i64***
  store i64*** %0, i64**** %array3D, align 8, !tbaa !0
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %if.then, label %for.cond.preheader

if.then:                                          ; preds = %entry
  %call.i = tail call i32 (i8*, i64, i8*, ...)* @snprintf(i8* getelementptr inbounds ([300 x i8]* @errortext, i64 0, i64 0), i64 300, i8* getelementptr inbounds ([30 x i8]* @.str20, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8]* @.str11, i64 0, i64 0)) #3
  tail call void @error(i8* getelementptr inbounds ([300 x i8]* @errortext, i64 0, i64 0), i32 100) #3
  br label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.then, %entry
  %cmp216 = icmp sgt i32 %frames, 0
  br i1 %cmp216, label %for.body, label %for.end

for.body:                                         ; preds = %for.body, %for.cond.preheader
  %indvars.iv = phi i64 [ 0, %for.cond.preheader ], [ %indvars.iv.next, %for.body ]
  %1 = load i64**** %array3D, align 8, !tbaa !0
  %add.ptr = getelementptr inbounds i64*** %1, i64 %indvars.iv
  %call4 = tail call i32 @get_mem2Dint64(i64*** %add.ptr, i32 %rows, i32 %columns) #4
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %frames
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %for.cond.preheader
  %mul = shl i32 %frames, 3
  %mul5 = mul i32 %mul, %rows
  %mul7 = mul i32 %mul5, %columns
  ret i32 %mul7
}

; Function Attrs: nounwind optsize uwtable
define i32 @get_mem4Dint(i32***** nocapture %array4D, i32 %idx, i32 %frames, i32 %rows, i32 %columns) #0 {
entry:
  %conv = sext i32 %idx to i64
  %call = tail call noalias i8* @calloc(i64 %conv, i64 8) #3
  %0 = bitcast i8* %call to i32****
  store i32**** %0, i32***** %array4D, align 8, !tbaa !0
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %if.then, label %for.cond.preheader

if.then:                                          ; preds = %entry
  %call.i = tail call i32 (i8*, i64, i8*, ...)* @snprintf(i8* getelementptr inbounds ([300 x i8]* @errortext, i64 0, i64 0), i64 300, i8* getelementptr inbounds ([30 x i8]* @.str20, i64 0, i64 0), i8* getelementptr inbounds ([22 x i8]* @.str12, i64 0, i64 0)) #3
  tail call void @error(i8* getelementptr inbounds ([300 x i8]* @errortext, i64 0, i64 0), i32 100) #3
  br label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.then, %entry
  %cmp218 = icmp sgt i32 %idx, 0
  br i1 %cmp218, label %for.body, label %for.end

for.body:                                         ; preds = %for.body, %for.cond.preheader
  %indvars.iv = phi i64 [ 0, %for.cond.preheader ], [ %indvars.iv.next, %for.body ]
  %1 = load i32***** %array4D, align 8, !tbaa !0
  %add.ptr = getelementptr inbounds i32**** %1, i64 %indvars.iv
  %call4 = tail call i32 @get_mem3Dint(i32**** %add.ptr, i32 %frames, i32 %rows, i32 %columns) #4
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %idx
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %for.cond.preheader
  %mul = shl i32 %idx, 2
  %mul5 = mul i32 %mul, %frames
  %mul6 = mul i32 %mul5, %rows
  %mul8 = mul i32 %mul6, %columns
  ret i32 %mul8
}

; Function Attrs: nounwind optsize uwtable
define void @free_mem2D(i8** %array2D) #0 {
entry:
  %tobool = icmp eq i8** %array2D, null
  br i1 %tobool, label %if.else4, label %if.then

if.then:                                          ; preds = %entry
  %0 = load i8** %array2D, align 8, !tbaa !0
  %tobool1 = icmp eq i8* %0, null
  br i1 %tobool1, label %if.else, label %if.then2

if.then2:                                         ; preds = %if.then
  tail call void @free(i8* %0) #3
  br label %if.end

if.else:                                          ; preds = %if.then
  tail call void @error(i8* getelementptr inbounds ([41 x i8]* @.str13, i64 0, i64 0), i32 100) #3
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then2
  %1 = bitcast i8** %array2D to i8*
  tail call void @free(i8* %1) #3
  br label %if.end5

if.else4:                                         ; preds = %entry
  tail call void @error(i8* getelementptr inbounds ([41 x i8]* @.str13, i64 0, i64 0), i32 100) #3
  br label %if.end5

if.end5:                                          ; preds = %if.else4, %if.end
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @free_mem2Dint(i32** %array2D) #0 {
entry:
  %tobool = icmp eq i32** %array2D, null
  br i1 %tobool, label %if.else4, label %if.then

if.then:                                          ; preds = %entry
  %0 = load i32** %array2D, align 8, !tbaa !0
  %tobool1 = icmp eq i32* %0, null
  br i1 %tobool1, label %if.else, label %if.then2

if.then2:                                         ; preds = %if.then
  %1 = bitcast i32* %0 to i8*
  tail call void @free(i8* %1) #3
  br label %if.end

if.else:                                          ; preds = %if.then
  tail call void @error(i8* getelementptr inbounds ([44 x i8]* @.str14, i64 0, i64 0), i32 100) #3
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then2
  %2 = bitcast i32** %array2D to i8*
  tail call void @free(i8* %2) #3
  br label %if.end5

if.else4:                                         ; preds = %entry
  tail call void @error(i8* getelementptr inbounds ([44 x i8]* @.str14, i64 0, i64 0), i32 100) #3
  br label %if.end5

if.end5:                                          ; preds = %if.else4, %if.end
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @free_mem2Dint64(i64** %array2D) #0 {
entry:
  %tobool = icmp eq i64** %array2D, null
  br i1 %tobool, label %if.else4, label %if.then

if.then:                                          ; preds = %entry
  %0 = load i64** %array2D, align 8, !tbaa !0
  %tobool1 = icmp eq i64* %0, null
  br i1 %tobool1, label %if.else, label %if.then2

if.then2:                                         ; preds = %if.then
  %1 = bitcast i64* %0 to i8*
  tail call void @free(i8* %1) #3
  br label %if.end

if.else:                                          ; preds = %if.then
  tail call void @error(i8* getelementptr inbounds ([46 x i8]* @.str15, i64 0, i64 0), i32 100) #3
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then2
  %2 = bitcast i64** %array2D to i8*
  tail call void @free(i8* %2) #3
  br label %if.end5

if.else4:                                         ; preds = %entry
  tail call void @error(i8* getelementptr inbounds ([46 x i8]* @.str15, i64 0, i64 0), i32 100) #3
  br label %if.end5

if.end5:                                          ; preds = %if.else4, %if.end
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @free_mem3D(i8*** %array3D, i32 %frames) #0 {
entry:
  %tobool = icmp eq i8*** %array3D, null
  br i1 %tobool, label %if.else, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %cmp5 = icmp sgt i32 %frames, 0
  br i1 %cmp5, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond.preheader, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %for.cond.preheader ]
  %arrayidx = getelementptr inbounds i8*** %array3D, i64 %indvars.iv
  %0 = load i8*** %arrayidx, align 8, !tbaa !0
  tail call void @free_mem2D(i8** %0) #4
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %frames
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %for.cond.preheader
  %1 = bitcast i8*** %array3D to i8*
  tail call void @free(i8* %1) #3
  br label %if.end

if.else:                                          ; preds = %entry
  tail call void @error(i8* getelementptr inbounds ([41 x i8]* @.str16, i64 0, i64 0), i32 100) #3
  br label %if.end

if.end:                                           ; preds = %if.else, %for.end
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @free_mem3Dint(i32*** %array3D, i32 %frames) #0 {
entry:
  %tobool = icmp eq i32*** %array3D, null
  br i1 %tobool, label %if.else, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %cmp5 = icmp sgt i32 %frames, 0
  br i1 %cmp5, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond.preheader, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %for.cond.preheader ]
  %arrayidx = getelementptr inbounds i32*** %array3D, i64 %indvars.iv
  %0 = load i32*** %arrayidx, align 8, !tbaa !0
  tail call void @free_mem2Dint(i32** %0) #4
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %frames
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %for.cond.preheader
  %1 = bitcast i32*** %array3D to i8*
  tail call void @free(i8* %1) #3
  br label %if.end

if.else:                                          ; preds = %entry
  tail call void @error(i8* getelementptr inbounds ([44 x i8]* @.str17, i64 0, i64 0), i32 100) #3
  br label %if.end

if.end:                                           ; preds = %if.else, %for.end
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @free_mem3Dint64(i64*** %array3D, i32 %frames) #0 {
entry:
  %tobool = icmp eq i64*** %array3D, null
  br i1 %tobool, label %if.else, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %cmp5 = icmp sgt i32 %frames, 0
  br i1 %cmp5, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond.preheader, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %for.cond.preheader ]
  %arrayidx = getelementptr inbounds i64*** %array3D, i64 %indvars.iv
  %0 = load i64*** %arrayidx, align 8, !tbaa !0
  tail call void @free_mem2Dint64(i64** %0) #4
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %frames
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %for.cond.preheader
  %1 = bitcast i64*** %array3D to i8*
  tail call void @free(i8* %1) #3
  br label %if.end

if.else:                                          ; preds = %entry
  tail call void @error(i8* getelementptr inbounds ([46 x i8]* @.str18, i64 0, i64 0), i32 100) #3
  br label %if.end

if.end:                                           ; preds = %if.else, %for.end
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @free_mem4Dint(i32**** %array4D, i32 %idx, i32 %frames) #0 {
entry:
  %tobool = icmp eq i32**** %array4D, null
  br i1 %tobool, label %if.else, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %cmp5 = icmp sgt i32 %idx, 0
  br i1 %cmp5, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond.preheader, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %for.cond.preheader ]
  %arrayidx = getelementptr inbounds i32**** %array4D, i64 %indvars.iv
  %0 = load i32**** %arrayidx, align 8, !tbaa !0
  tail call void @free_mem3Dint(i32*** %0, i32 %frames) #4
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %idx
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %for.cond.preheader
  %1 = bitcast i32**** %array4D to i8*
  tail call void @free(i8* %1) #3
  br label %if.end

if.else:                                          ; preds = %entry
  tail call void @error(i8* getelementptr inbounds ([44 x i8]* @.str19, i64 0, i64 0), i32 100) #3
  br label %if.end

if.end:                                           ; preds = %if.else, %for.end
  ret void
}

; Function Attrs: nounwind optsize
declare i32 @snprintf(i8* nocapture, i64, i8* nocapture, ...) #1

; Function Attrs: nounwind optsize uwtable
define i32 @get_mem2Dshort(i16*** nocapture %array2D, i32 %rows, i32 %columns) #0 {
entry:
  %conv = sext i32 %rows to i64
  %call = tail call noalias i8* @calloc(i64 %conv, i64 8) #3
  %0 = bitcast i8* %call to i16**
  store i16** %0, i16*** %array2D, align 8, !tbaa !0
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call.i = tail call i32 (i8*, i64, i8*, ...)* @snprintf(i8* getelementptr inbounds ([300 x i8]* @errortext, i64 0, i64 0), i64 300, i8* getelementptr inbounds ([30 x i8]* @.str20, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8]* @.str21, i64 0, i64 0)) #3
  tail call void @error(i8* getelementptr inbounds ([300 x i8]* @errortext, i64 0, i64 0), i32 100) #3
  %.pre = load i16*** %array2D, align 8, !tbaa !0
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = phi i16** [ %.pre, %if.then ], [ %0, %entry ]
  %mul = mul nsw i32 %columns, %rows
  %conv2 = sext i32 %mul to i64
  %call3 = tail call noalias i8* @calloc(i64 %conv2, i64 2) #3
  %2 = bitcast i8* %call3 to i16*
  store i16* %2, i16** %1, align 8, !tbaa !0
  %cmp4 = icmp eq i8* %call3, null
  br i1 %cmp4, label %if.then6, label %for.cond.preheader

if.then6:                                         ; preds = %if.end
  %call.i28 = tail call i32 (i8*, i64, i8*, ...)* @snprintf(i8* getelementptr inbounds ([300 x i8]* @errortext, i64 0, i64 0), i64 300, i8* getelementptr inbounds ([30 x i8]* @.str20, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8]* @.str21, i64 0, i64 0)) #3
  tail call void @error(i8* getelementptr inbounds ([300 x i8]* @errortext, i64 0, i64 0), i32 100) #3
  br label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.then6, %if.end
  %cmp829 = icmp sgt i32 %rows, 1
  br i1 %cmp829, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %idx.ext = sext i32 %columns to i64
  br label %for.body

for.body:                                         ; preds = %for.body, %for.body.lr.ph
  %indvars.iv = phi i64 [ 1, %for.body.lr.ph ], [ %indvars.iv.next, %for.body ]
  %3 = add nsw i64 %indvars.iv, -1
  %4 = load i16*** %array2D, align 8, !tbaa !0
  %arrayidx10 = getelementptr inbounds i16** %4, i64 %3
  %5 = load i16** %arrayidx10, align 8, !tbaa !0
  %add.ptr = getelementptr inbounds i16* %5, i64 %idx.ext
  %arrayidx12 = getelementptr inbounds i16** %4, i64 %indvars.iv
  store i16* %add.ptr, i16** %arrayidx12, align 8, !tbaa !0
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %rows
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %for.cond.preheader
  %mul15 = shl i32 %mul, 1
  ret i32 %mul15
}

; Function Attrs: nounwind optsize uwtable
define i32 @get_mem3Dshort(i16**** nocapture %array3D, i32 %frames, i32 %rows, i32 %columns) #0 {
entry:
  %conv = sext i32 %frames to i64
  %call = tail call noalias i8* @calloc(i64 %conv, i64 8) #3
  %0 = bitcast i8* %call to i16***
  store i16*** %0, i16**** %array3D, align 8, !tbaa !0
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %if.then, label %for.cond.preheader

if.then:                                          ; preds = %entry
  %call.i = tail call i32 (i8*, i64, i8*, ...)* @snprintf(i8* getelementptr inbounds ([300 x i8]* @errortext, i64 0, i64 0), i64 300, i8* getelementptr inbounds ([30 x i8]* @.str20, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8]* @.str22, i64 0, i64 0)) #3
  tail call void @error(i8* getelementptr inbounds ([300 x i8]* @errortext, i64 0, i64 0), i32 100) #3
  br label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.then, %entry
  %cmp216 = icmp sgt i32 %frames, 0
  br i1 %cmp216, label %for.body, label %for.end

for.body:                                         ; preds = %for.body, %for.cond.preheader
  %indvars.iv = phi i64 [ 0, %for.cond.preheader ], [ %indvars.iv.next, %for.body ]
  %1 = load i16**** %array3D, align 8, !tbaa !0
  %add.ptr = getelementptr inbounds i16*** %1, i64 %indvars.iv
  %call4 = tail call i32 @get_mem2Dshort(i16*** %add.ptr, i32 %rows, i32 %columns) #4
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %frames
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %for.cond.preheader
  %mul = shl i32 %frames, 1
  %mul5 = mul i32 %mul, %rows
  %mul7 = mul i32 %mul5, %columns
  ret i32 %mul7
}

; Function Attrs: nounwind optsize uwtable
define i32 @get_mem4Dshort(i16***** nocapture %array4D, i32 %idx, i32 %frames, i32 %rows, i32 %columns) #0 {
entry:
  %conv = sext i32 %idx to i64
  %call = tail call noalias i8* @calloc(i64 %conv, i64 8) #3
  %0 = bitcast i8* %call to i16****
  store i16**** %0, i16***** %array4D, align 8, !tbaa !0
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %if.then, label %for.cond.preheader

if.then:                                          ; preds = %entry
  %call.i = tail call i32 (i8*, i64, i8*, ...)* @snprintf(i8* getelementptr inbounds ([300 x i8]* @errortext, i64 0, i64 0), i64 300, i8* getelementptr inbounds ([30 x i8]* @.str20, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8]* @.str23, i64 0, i64 0)) #3
  tail call void @error(i8* getelementptr inbounds ([300 x i8]* @errortext, i64 0, i64 0), i32 100) #3
  br label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.then, %entry
  %cmp218 = icmp sgt i32 %idx, 0
  br i1 %cmp218, label %for.body, label %for.end

for.body:                                         ; preds = %for.body, %for.cond.preheader
  %indvars.iv = phi i64 [ 0, %for.cond.preheader ], [ %indvars.iv.next, %for.body ]
  %1 = load i16***** %array4D, align 8, !tbaa !0
  %add.ptr = getelementptr inbounds i16**** %1, i64 %indvars.iv
  %call4 = tail call i32 @get_mem3Dshort(i16**** %add.ptr, i32 %frames, i32 %rows, i32 %columns) #4
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %idx
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %for.cond.preheader
  %mul = shl i32 %idx, 1
  %mul5 = mul i32 %mul, %frames
  %mul6 = mul i32 %mul5, %rows
  %mul8 = mul i32 %mul6, %columns
  ret i32 %mul8
}

; Function Attrs: nounwind optsize uwtable
define void @free_mem2Dshort(i16** %array2D) #0 {
entry:
  %tobool = icmp eq i16** %array2D, null
  br i1 %tobool, label %if.else4, label %if.then

if.then:                                          ; preds = %entry
  %0 = load i16** %array2D, align 8, !tbaa !0
  %tobool1 = icmp eq i16* %0, null
  br i1 %tobool1, label %if.else, label %if.then2

if.then2:                                         ; preds = %if.then
  %1 = bitcast i16* %0 to i8*
  tail call void @free(i8* %1) #3
  br label %if.end

if.else:                                          ; preds = %if.then
  tail call void @error(i8* getelementptr inbounds ([46 x i8]* @.str24, i64 0, i64 0), i32 100) #3
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then2
  %2 = bitcast i16** %array2D to i8*
  tail call void @free(i8* %2) #3
  br label %if.end5

if.else4:                                         ; preds = %entry
  tail call void @error(i8* getelementptr inbounds ([46 x i8]* @.str24, i64 0, i64 0), i32 100) #3
  br label %if.end5

if.end5:                                          ; preds = %if.else4, %if.end
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @free_mem3Dshort(i16*** %array3D, i32 %frames) #0 {
entry:
  %tobool = icmp eq i16*** %array3D, null
  br i1 %tobool, label %if.else, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %cmp5 = icmp sgt i32 %frames, 0
  br i1 %cmp5, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond.preheader, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %for.cond.preheader ]
  %arrayidx = getelementptr inbounds i16*** %array3D, i64 %indvars.iv
  %0 = load i16*** %arrayidx, align 8, !tbaa !0
  tail call void @free_mem2Dshort(i16** %0) #4
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %frames
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %for.cond.preheader
  %1 = bitcast i16*** %array3D to i8*
  tail call void @free(i8* %1) #3
  br label %if.end

if.else:                                          ; preds = %entry
  tail call void @error(i8* getelementptr inbounds ([46 x i8]* @.str25, i64 0, i64 0), i32 100) #3
  br label %if.end

if.end:                                           ; preds = %if.else, %for.end
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @free_mem4Dshort(i16**** %array4D, i32 %idx, i32 %frames) #0 {
entry:
  %tobool = icmp eq i16**** %array4D, null
  br i1 %tobool, label %if.else, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %cmp5 = icmp sgt i32 %idx, 0
  br i1 %cmp5, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond.preheader, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %for.cond.preheader ]
  %arrayidx = getelementptr inbounds i16**** %array4D, i64 %indvars.iv
  %0 = load i16**** %arrayidx, align 8, !tbaa !0
  tail call void @free_mem3Dshort(i16*** %0, i32 %frames) #4
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %idx
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %for.cond.preheader
  %1 = bitcast i16**** %array4D to i8*
  tail call void @free(i8* %1) #3
  br label %if.end

if.else:                                          ; preds = %entry
  tail call void @error(i8* getelementptr inbounds ([46 x i8]* @.str26, i64 0, i64 0), i32 100) #3
  br label %if.end

if.end:                                           ; preds = %if.else, %for.end
  ret void
}

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize }
attributes #4 = { optsize }

!0 = metadata !{metadata !"any pointer", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
