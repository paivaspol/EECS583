; ModuleID = '../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/IVL/src/IVL_util.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct._IVL = type { i32, i32, i32, i32, i32*, i32**, i32, %struct._Ichunk* }
%struct._Ichunk = type { i32, i32, i32*, %struct._Ichunk* }
%struct._IV = type { i32, i32, i32, i32* }

@stderr = external global %struct._IO_FILE*
@.str = private unnamed_addr constant [44 x i8] c"\0A fatal error in IVL_sizeOf(%p)\0A bad input\0A\00", align 1
@.str1 = private unnamed_addr constant [41 x i8] c"\0A fatal error in IVL_min(%p)\0A bad input\0A\00", align 1
@.str2 = private unnamed_addr constant [41 x i8] c"\0A fatal error in IVL_max(%p)\0A bad input\0A\00", align 1
@.str3 = private unnamed_addr constant [48 x i8] c"\0A fatal error in IVL_maxListSize(%p)\0A bad input\00", align 1
@.str4 = private unnamed_addr constant [41 x i8] c"\0A fatal error in IVL_sum(%p)\0A bad input\0A\00", align 1
@.str5 = private unnamed_addr constant [44 x i8] c"\0A fatal error in IVL_sortUp(%p)\0A bad input\0A\00", align 1
@.str6 = private unnamed_addr constant [46 x i8] c"\0A fatal error in IVL_equivMap(%p)\0A bad input\0A\00", align 1
@.str7 = private unnamed_addr constant [50 x i8] c"\0A fatal error in IVL_overwrite(%p,%p)\0A bad input\0A\00", align 1
@.str8 = private unnamed_addr constant [51 x i8] c"\0A fatal error in IVL_mapEntries(%p,%p)\0A bad input\0A\00", align 1
@.str9 = private unnamed_addr constant [53 x i8] c"\0A fatal error in IVL_absorbIVL(%p,%p,%p)\0A bad input\0A\00", align 1
@.str10 = private unnamed_addr constant [69 x i8] c"\0A fatal error in IVL_absorbIVL(%p,%p,%p)\0A IV_entries(mapIV) is NULL\0A\00", align 1
@.str11 = private unnamed_addr constant [81 x i8] c"\0A fatal error in IVL_absorbIVL(%p,%p,%p)\0A ivl2->nlist = %d, IV_size(mapIV) = %d\0A\00", align 1
@.str12 = private unnamed_addr constant [47 x i8] c"\0A fatal error in IVL_expand(%p,%p)\0A bad input\0A\00", align 1
@.str13 = private unnamed_addr constant [74 x i8] c"\0A fatal error in IVL_expand(%p,%p)\0A nlist1 = %d, nvtx = %d, map[%d] = %d\0A\00", align 1

; Function Attrs: nounwind optsize uwtable
define i32 @IVL_sizeOf(%struct._IVL* %ivl) #0 {
entry:
  %cmp = icmp eq %struct._IVL* %ivl, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([44 x i8]* @.str, i64 0, i64 0), %struct._IVL* null) #4
  tail call void @exit(i32 -1) #5
  unreachable

if.end:                                           ; preds = %entry
  %nlist = getelementptr inbounds %struct._IVL* %ivl, i64 0, i32 2
  %1 = load i32* %nlist, align 4, !tbaa !3
  %cmp1 = icmp sgt i32 %1, 0
  br i1 %cmp1, label %if.then2, label %if.end26

if.then2:                                         ; preds = %if.end
  %mul = mul i32 %1, 12
  %add = add i32 %mul, 48
  %type = getelementptr inbounds %struct._IVL* %ivl, i64 0, i32 0
  %2 = load i32* %type, align 4, !tbaa !3
  %cmp6 = icmp eq i32 %2, 2
  br i1 %cmp6, label %if.then8, label %if.else

if.then8:                                         ; preds = %if.then2
  %sizes = getelementptr inbounds %struct._IVL* %ivl, i64 0, i32 4
  %3 = load i32** %sizes, align 8, !tbaa !0
  %call10 = tail call i32 @IVsum(i32 %1, i32* %3) #4
  %mul12 = shl i32 %call10, 2
  %add14 = add i32 %mul12, %add
  br label %if.end26

if.else:                                          ; preds = %if.then2
  %chunk16 = getelementptr inbounds %struct._IVL* %ivl, i64 0, i32 7
  %chunk.040 = load %struct._Ichunk** %chunk16, align 8
  %cmp1741 = icmp eq %struct._Ichunk* %chunk.040, null
  br i1 %cmp1741, label %if.end26, label %for.body

for.body:                                         ; preds = %if.else, %for.body
  %chunk.043 = phi %struct._Ichunk* [ %chunk.0, %for.body ], [ %chunk.040, %if.else ]
  %nbytes.042 = phi i32 [ %add23, %for.body ], [ %add, %if.else ]
  %size = getelementptr inbounds %struct._Ichunk* %chunk.043, i64 0, i32 0
  %4 = load i32* %size, align 4, !tbaa !3
  %mul20 = shl i32 %4, 2
  %add21 = add i32 %nbytes.042, 24
  %add23 = add i32 %add21, %mul20
  %next = getelementptr inbounds %struct._Ichunk* %chunk.043, i64 0, i32 3
  %chunk.0 = load %struct._Ichunk** %next, align 8
  %cmp17 = icmp eq %struct._Ichunk* %chunk.0, null
  br i1 %cmp17, label %if.end26, label %for.body

if.end26:                                         ; preds = %if.else, %for.body, %if.then8, %if.end
  %nbytes.1 = phi i32 [ %add14, %if.then8 ], [ 48, %if.end ], [ %add, %if.else ], [ %add23, %for.body ]
  ret i32 %nbytes.1
}

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #1

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32) #2

; Function Attrs: optsize
declare i32 @IVsum(i32, i32*) #3

; Function Attrs: nounwind optsize uwtable
define i32 @IVL_min(%struct._IVL* %ivl) #0 {
entry:
  %i = alloca i32, align 4
  %size = alloca i32, align 4
  %ent = alloca i32*, align 8
  %cmp = icmp eq %struct._IVL* %ivl, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %nlist1 = getelementptr inbounds %struct._IVL* %ivl, i64 0, i32 2
  %0 = load i32* %nlist1, align 4, !tbaa !3
  %cmp2 = icmp slt i32 %0, 1
  br i1 %cmp2, label %if.then, label %for.body

if.then:                                          ; preds = %lor.lhs.false, %entry
  %1 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([41 x i8]* @.str1, i64 0, i64 0), %struct._IVL* %ivl) #4
  call void @exit(i32 -1) #5
  unreachable

for.body:                                         ; preds = %lor.lhs.false, %for.inc
  %first.025 = phi i32 [ %first.1, %for.inc ], [ 1, %lor.lhs.false ]
  %ilist.024 = phi i32 [ %inc, %for.inc ], [ 0, %lor.lhs.false ]
  %minval.023 = phi i32 [ %minval.1, %for.inc ], [ -1, %lor.lhs.false ]
  call void @IVL_listAndSize(%struct._IVL* %ivl, i32 %ilist.024, i32* %size, i32** %ent) #4
  %2 = load i32* %size, align 4, !tbaa !3
  %cmp4 = icmp sgt i32 %2, 0
  br i1 %cmp4, label %if.then5, label %for.inc

if.then5:                                         ; preds = %for.body
  %3 = load i32** %ent, align 8, !tbaa !0
  %call6 = call i32 @IVmin(i32 %2, i32* %3, i32* %i) #4
  %cmp7 = icmp eq i32 %first.025, 1
  br i1 %cmp7, label %for.inc, label %if.else

if.else:                                          ; preds = %if.then5
  %cmp9 = icmp sgt i32 %minval.023, %call6
  %call6.minval.0 = select i1 %cmp9, i32 %call6, i32 %minval.023
  br label %for.inc

for.inc:                                          ; preds = %if.else, %if.then5, %for.body
  %minval.1 = phi i32 [ %minval.023, %for.body ], [ %call6, %if.then5 ], [ %call6.minval.0, %if.else ]
  %first.1 = phi i32 [ %first.025, %for.body ], [ 0, %if.then5 ], [ %first.025, %if.else ]
  %inc = add nsw i32 %ilist.024, 1
  %exitcond = icmp eq i32 %inc, %0
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          ; preds = %for.inc
  ret i32 %minval.1
}

; Function Attrs: optsize
declare void @IVL_listAndSize(%struct._IVL*, i32, i32*, i32**) #3

; Function Attrs: optsize
declare i32 @IVmin(i32, i32*, i32*) #3

; Function Attrs: nounwind optsize uwtable
define i32 @IVL_max(%struct._IVL* %ivl) #0 {
entry:
  %i = alloca i32, align 4
  %size = alloca i32, align 4
  %ent = alloca i32*, align 8
  %cmp = icmp eq %struct._IVL* %ivl, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %nlist1 = getelementptr inbounds %struct._IVL* %ivl, i64 0, i32 2
  %0 = load i32* %nlist1, align 4, !tbaa !3
  %cmp2 = icmp slt i32 %0, 1
  br i1 %cmp2, label %if.then, label %for.body

if.then:                                          ; preds = %lor.lhs.false, %entry
  %1 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([41 x i8]* @.str2, i64 0, i64 0), %struct._IVL* %ivl) #4
  call void @exit(i32 -1) #5
  unreachable

for.body:                                         ; preds = %lor.lhs.false, %for.inc
  %first.025 = phi i32 [ %first.1, %for.inc ], [ 1, %lor.lhs.false ]
  %ilist.024 = phi i32 [ %inc, %for.inc ], [ 0, %lor.lhs.false ]
  %maxval.023 = phi i32 [ %maxval.1, %for.inc ], [ -1, %lor.lhs.false ]
  call void @IVL_listAndSize(%struct._IVL* %ivl, i32 %ilist.024, i32* %size, i32** %ent) #4
  %2 = load i32* %size, align 4, !tbaa !3
  %cmp4 = icmp sgt i32 %2, 0
  br i1 %cmp4, label %if.then5, label %for.inc

if.then5:                                         ; preds = %for.body
  %3 = load i32** %ent, align 8, !tbaa !0
  %call6 = call i32 @IVmax(i32 %2, i32* %3, i32* %i) #4
  %cmp7 = icmp eq i32 %first.025, 1
  br i1 %cmp7, label %for.inc, label %if.else

if.else:                                          ; preds = %if.then5
  %cmp9 = icmp slt i32 %maxval.023, %call6
  %call6.maxval.0 = select i1 %cmp9, i32 %call6, i32 %maxval.023
  br label %for.inc

for.inc:                                          ; preds = %if.else, %if.then5, %for.body
  %maxval.1 = phi i32 [ %maxval.023, %for.body ], [ %call6, %if.then5 ], [ %call6.maxval.0, %if.else ]
  %first.1 = phi i32 [ %first.025, %for.body ], [ 0, %if.then5 ], [ %first.025, %if.else ]
  %inc = add nsw i32 %ilist.024, 1
  %exitcond = icmp eq i32 %inc, %0
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          ; preds = %for.inc
  ret i32 %maxval.1
}

; Function Attrs: optsize
declare i32 @IVmax(i32, i32*, i32*) #3

; Function Attrs: nounwind optsize uwtable
define i32 @IVL_maxListSize(%struct._IVL* %ivl) #0 {
entry:
  %size = alloca i32, align 4
  %ent = alloca i32*, align 8
  %cmp = icmp eq %struct._IVL* %ivl, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %nlist1 = getelementptr inbounds %struct._IVL* %ivl, i64 0, i32 2
  %0 = load i32* %nlist1, align 4, !tbaa !3
  %cmp2 = icmp slt i32 %0, 1
  br i1 %cmp2, label %if.then, label %for.body

if.then:                                          ; preds = %lor.lhs.false, %entry
  %1 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([48 x i8]* @.str3, i64 0, i64 0), %struct._IVL* %ivl) #4
  call void @exit(i32 -1) #5
  unreachable

for.body:                                         ; preds = %lor.lhs.false, %for.body
  %ilist.015 = phi i32 [ %inc, %for.body ], [ 0, %lor.lhs.false ]
  %maxsize.014 = phi i32 [ %.maxsize.0, %for.body ], [ 0, %lor.lhs.false ]
  call void @IVL_listAndSize(%struct._IVL* %ivl, i32 %ilist.015, i32* %size, i32** %ent) #4
  %2 = load i32* %size, align 4, !tbaa !3
  %cmp4 = icmp slt i32 %maxsize.014, %2
  %.maxsize.0 = select i1 %cmp4, i32 %2, i32 %maxsize.014
  %inc = add nsw i32 %ilist.015, 1
  %exitcond = icmp eq i32 %inc, %0
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          ; preds = %for.body
  ret i32 %.maxsize.0
}

; Function Attrs: nounwind optsize uwtable
define i32 @IVL_sum(%struct._IVL* %ivl) #0 {
entry:
  %jsize = alloca i32, align 4
  %jind = alloca i32*, align 8
  %cmp = icmp eq %struct._IVL* %ivl, null
  br i1 %cmp, label %if.then, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %nlist = getelementptr inbounds %struct._IVL* %ivl, i64 0, i32 2
  %0 = load i32* %nlist, align 4, !tbaa !3
  %cmp112 = icmp sgt i32 %0, 0
  br i1 %cmp112, label %for.body, label %for.end

if.then:                                          ; preds = %entry
  %1 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([41 x i8]* @.str4, i64 0, i64 0), %struct._IVL* null) #4
  call void @exit(i32 -1) #5
  unreachable

for.body:                                         ; preds = %for.cond.preheader, %for.inc
  %sum.014 = phi i32 [ %sum.1, %for.inc ], [ 0, %for.cond.preheader ]
  %j.013 = phi i32 [ %inc, %for.inc ], [ 0, %for.cond.preheader ]
  call void @IVL_listAndSize(%struct._IVL* %ivl, i32 %j.013, i32* %jsize, i32** %jind) #4
  %2 = load i32* %jsize, align 4, !tbaa !3
  %cmp2 = icmp sgt i32 %2, 0
  br i1 %cmp2, label %if.then3, label %for.inc

if.then3:                                         ; preds = %for.body
  %3 = load i32** %jind, align 8, !tbaa !0
  %call4 = call i32 @IVsum(i32 %2, i32* %3) #4
  %add = add nsw i32 %call4, %sum.014
  br label %for.inc

for.inc:                                          ; preds = %for.body, %if.then3
  %sum.1 = phi i32 [ %add, %if.then3 ], [ %sum.014, %for.body ]
  %inc = add nsw i32 %j.013, 1
  %4 = load i32* %nlist, align 4, !tbaa !3
  %cmp1 = icmp slt i32 %inc, %4
  br i1 %cmp1, label %for.body, label %for.end

for.end:                                          ; preds = %for.inc, %for.cond.preheader
  %sum.0.lcssa = phi i32 [ 0, %for.cond.preheader ], [ %sum.1, %for.inc ]
  ret i32 %sum.0.lcssa
}

; Function Attrs: nounwind optsize uwtable
define void @IVL_sortUp(%struct._IVL* %ivl) #0 {
entry:
  %size = alloca i32, align 4
  %ent = alloca i32*, align 8
  %cmp = icmp eq %struct._IVL* %ivl, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %nlist1 = getelementptr inbounds %struct._IVL* %ivl, i64 0, i32 2
  %0 = load i32* %nlist1, align 4, !tbaa !3
  %cmp2 = icmp slt i32 %0, 0
  br i1 %cmp2, label %if.then, label %for.cond.preheader

for.cond.preheader:                               ; preds = %lor.lhs.false
  %cmp312 = icmp sgt i32 %0, 0
  br i1 %cmp312, label %for.body, label %for.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %1 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([44 x i8]* @.str5, i64 0, i64 0), %struct._IVL* %ivl) #4
  call void @exit(i32 -1) #5
  unreachable

for.body:                                         ; preds = %for.cond.preheader, %for.inc
  %ilist.013 = phi i32 [ %inc, %for.inc ], [ 0, %for.cond.preheader ]
  call void @IVL_listAndSize(%struct._IVL* %ivl, i32 %ilist.013, i32* %size, i32** %ent) #4
  %2 = load i32* %size, align 4, !tbaa !3
  %cmp4 = icmp sgt i32 %2, 0
  br i1 %cmp4, label %if.then5, label %for.inc

if.then5:                                         ; preds = %for.body
  %3 = load i32** %ent, align 8, !tbaa !0
  call void @IVqsortUp(i32 %2, i32* %3) #4
  br label %for.inc

for.inc:                                          ; preds = %for.body, %if.then5
  %inc = add nsw i32 %ilist.013, 1
  %exitcond = icmp eq i32 %inc, %0
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          ; preds = %for.inc, %for.cond.preheader
  ret void
}

; Function Attrs: optsize
declare void @IVqsortUp(i32, i32*) #3

; Function Attrs: nounwind optsize uwtable
define i32* @IVL_equivMap1(%struct._IVL* %ivl) #0 {
entry:
  %vsize = alloca i32, align 4
  %wsize = alloca i32, align 4
  %vadj = alloca i32*, align 8
  %wadj = alloca i32*, align 8
  %cmp = icmp eq %struct._IVL* %ivl, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %nlist1 = getelementptr inbounds %struct._IVL* %ivl, i64 0, i32 2
  %0 = load i32* %nlist1, align 4, !tbaa !3
  %cmp2 = icmp slt i32 %0, 0
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %1 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([46 x i8]* @.str6, i64 0, i64 0), %struct._IVL* %ivl) #4
  call void @exit(i32 -1) #5
  unreachable

if.end:                                           ; preds = %lor.lhs.false
  %cmp3 = icmp eq i32 %0, 0
  br i1 %cmp3, label %return, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %if.end
  %call6 = call i32* @IVinit(i32 %0, i32 -1) #4
  %call7 = call i32* @IVinit(i32 %0, i32 -1) #4
  %call8 = call i32* @IVinit(i32 %0, i32 -1) #4
  br label %for.body

for.body:                                         ; preds = %for.inc24, %for.body.lr.ph
  %indvars.iv231 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next232, %for.inc24 ]
  %nlist2.0212 = phi i32 [ 0, %for.body.lr.ph ], [ %nlist2.1, %for.inc24 ]
  %ntest.0211 = phi i32 [ 0, %for.body.lr.ph ], [ %ntest.1, %for.inc24 ]
  %2 = trunc i64 %indvars.iv231 to i32
  call void @IVL_listAndSize(%struct._IVL* %ivl, i32 %2, i32* %vsize, i32** %vadj) #4
  %3 = load i32* %vsize, align 4, !tbaa !3
  %cmp10 = icmp sgt i32 %3, 0
  br i1 %cmp10, label %for.body14.lr.ph, label %if.else

for.body14.lr.ph:                                 ; preds = %for.body
  %4 = load i32** %vadj, align 8, !tbaa !0
  br label %for.body14

for.body14:                                       ; preds = %for.body14.lr.ph, %for.body14
  %indvars.iv229 = phi i64 [ 0, %for.body14.lr.ph ], [ %indvars.iv.next230, %for.body14 ]
  %sum.0206 = phi i32 [ 0, %for.body14.lr.ph ], [ %add, %for.body14 ]
  %arrayidx = getelementptr inbounds i32* %4, i64 %indvars.iv229
  %5 = load i32* %arrayidx, align 4, !tbaa !3
  %add = add nsw i32 %5, %sum.0206
  %indvars.iv.next230 = add i64 %indvars.iv229, 1
  %6 = trunc i64 %indvars.iv.next230 to i32
  %cmp13 = icmp slt i32 %6, %3
  br i1 %cmp13, label %for.body14, label %for.end

for.end:                                          ; preds = %for.body14
  %idxprom15 = sext i32 %ntest.0211 to i64
  %arrayidx16 = getelementptr inbounds i32* %call7, i64 %idxprom15
  store i32 %2, i32* %arrayidx16, align 4, !tbaa !3
  %arrayidx18 = getelementptr inbounds i32* %call8, i64 %idxprom15
  store i32 %add, i32* %arrayidx18, align 4, !tbaa !3
  %inc19 = add nsw i32 %ntest.0211, 1
  br label %for.inc24

if.else:                                          ; preds = %for.body
  %inc20 = add nsw i32 %nlist2.0212, 1
  %arrayidx22 = getelementptr inbounds i32* %call6, i64 %indvars.iv231
  store i32 %nlist2.0212, i32* %arrayidx22, align 4, !tbaa !3
  br label %for.inc24

for.inc24:                                        ; preds = %for.end, %if.else
  %ntest.1 = phi i32 [ %inc19, %for.end ], [ %ntest.0211, %if.else ]
  %nlist2.1 = phi i32 [ %nlist2.0212, %for.end ], [ %inc20, %if.else ]
  %indvars.iv.next232 = add i64 %indvars.iv231, 1
  %lftr.wideiv233 = trunc i64 %indvars.iv.next232 to i32
  %exitcond234 = icmp eq i32 %lftr.wideiv233, %0
  br i1 %exitcond234, label %for.end26, label %for.body

for.end26:                                        ; preds = %for.inc24
  call void @IV2qsortUp(i32 %ntest.1, i32* %call8, i32* %call7) #4
  %call27 = call i32* @IVinit(i32 %0, i32 -1) #4
  %cmp29201 = icmp sgt i32 %ntest.1, 0
  br i1 %cmp29201, label %for.body30, label %for.end97

for.body30:                                       ; preds = %for.end26, %for.inc95
  %indvars.iv224 = phi i64 [ %indvars.iv.next225.pre-phi, %for.inc95 ], [ 0, %for.end26 ]
  %indvars.iv219 = phi i64 [ %indvars.iv.next220, %for.inc95 ], [ 1, %for.end26 ]
  %itest.0203 = phi i32 [ %inc96.pre-phi, %for.inc95 ], [ 0, %for.end26 ]
  %nlist2.2202 = phi i32 [ %nlist2.3, %for.inc95 ], [ %nlist2.1, %for.end26 ]
  %arrayidx32 = getelementptr inbounds i32* %call7, i64 %indvars.iv224
  %7 = load i32* %arrayidx32, align 4, !tbaa !3
  %idxprom33 = sext i32 %7 to i64
  %arrayidx34 = getelementptr inbounds i32* %call6, i64 %idxprom33
  %8 = load i32* %arrayidx34, align 4, !tbaa !3
  %cmp35 = icmp eq i32 %8, -1
  br i1 %cmp35, label %if.then36, label %for.body30.for.inc95_crit_edge

for.body30.for.inc95_crit_edge:                   ; preds = %for.body30
  %indvars.iv.next225.pre = add i64 %indvars.iv224, 1
  %inc96.pre = add nsw i32 %itest.0203, 1
  %lftr.wideiv227.pre = trunc i64 %indvars.iv.next225.pre to i32
  br label %for.inc95

if.then36:                                        ; preds = %for.body30
  %inc37 = add nsw i32 %nlist2.2202, 1
  store i32 %nlist2.2202, i32* %arrayidx34, align 4, !tbaa !3
  call void @IVL_listAndSize(%struct._IVL* %ivl, i32 %7, i32* %vsize, i32** %vadj) #4
  %9 = add nsw i64 %indvars.iv224, 1
  %jtest.0198 = add nsw i32 %itest.0203, 1
  %10 = trunc i64 %9 to i32
  %cmp42199 = icmp slt i32 %10, %ntest.1
  br i1 %cmp42199, label %for.body43.lr.ph, label %for.inc95

for.body43.lr.ph:                                 ; preds = %if.then36
  %arrayidx47 = getelementptr inbounds i32* %call8, i64 %indvars.iv224
  %arrayidx56 = getelementptr inbounds i32* %call27, i64 %idxprom33
  br label %for.body43

for.body43:                                       ; preds = %for.body43.lr.ph, %for.cond41.backedge
  %indvars.iv221 = phi i64 [ %indvars.iv219, %for.body43.lr.ph ], [ %indvars.iv.next222, %for.cond41.backedge ]
  %jtest.0200 = phi i32 [ %jtest.0198, %for.body43.lr.ph ], [ %jtest.0, %for.cond41.backedge ]
  %arrayidx45 = getelementptr inbounds i32* %call7, i64 %indvars.iv221
  %11 = load i32* %arrayidx45, align 4, !tbaa !3
  %12 = load i32* %arrayidx47, align 4, !tbaa !3
  %arrayidx49 = getelementptr inbounds i32* %call8, i64 %indvars.iv221
  %13 = load i32* %arrayidx49, align 4, !tbaa !3
  %cmp50 = icmp eq i32 %12, %13
  br i1 %cmp50, label %if.else52, label %for.inc95

if.else52:                                        ; preds = %for.body43
  call void @IVL_listAndSize(%struct._IVL* %ivl, i32 %11, i32* %wsize, i32** %wadj) #4
  %14 = load i32* %vsize, align 4, !tbaa !3
  %15 = load i32* %wsize, align 4, !tbaa !3
  %cmp53 = icmp eq i32 %14, %15
  br i1 %cmp53, label %if.then54, label %for.cond41.backedge

if.then54:                                        ; preds = %if.else52
  %16 = load i32* %arrayidx56, align 4, !tbaa !3
  %cmp57 = icmp eq i32 %16, 1
  br i1 %cmp57, label %if.end61, label %if.then58

if.then58:                                        ; preds = %if.then54
  store i32 1, i32* %arrayidx56, align 4, !tbaa !3
  %17 = load i32* %vsize, align 4, !tbaa !3
  %18 = load i32** %vadj, align 8, !tbaa !0
  call void @IVqsortUp(i32 %17, i32* %18) #4
  br label %if.end61

if.end61:                                         ; preds = %if.then54, %if.then58
  %idxprom62 = sext i32 %11 to i64
  %arrayidx63 = getelementptr inbounds i32* %call27, i64 %idxprom62
  %19 = load i32* %arrayidx63, align 4, !tbaa !3
  %cmp64 = icmp eq i32 %19, 1
  br i1 %cmp64, label %for.cond69.preheader, label %if.then65

if.then65:                                        ; preds = %if.end61
  store i32 1, i32* %arrayidx63, align 4, !tbaa !3
  %20 = load i32* %wsize, align 4, !tbaa !3
  %21 = load i32** %wadj, align 8, !tbaa !0
  call void @IVqsortUp(i32 %20, i32* %21) #4
  br label %for.cond69.preheader

for.cond69.preheader:                             ; preds = %if.end61, %if.then65
  %22 = load i32* %vsize, align 4, !tbaa !3
  %cmp70196 = icmp sgt i32 %22, 0
  br i1 %cmp70196, label %for.body71.lr.ph, label %for.end81

for.body71.lr.ph:                                 ; preds = %for.cond69.preheader
  %23 = load i32** %vadj, align 8, !tbaa !0
  %24 = load i32** %wadj, align 8, !tbaa !0
  br label %for.body71

for.cond69:                                       ; preds = %for.body71
  %25 = trunc i64 %indvars.iv.next218 to i32
  %cmp70 = icmp slt i32 %25, %22
  br i1 %cmp70, label %for.body71, label %for.end81

for.body71:                                       ; preds = %for.body71.lr.ph, %for.cond69
  %indvars.iv217 = phi i64 [ 0, %for.body71.lr.ph ], [ %indvars.iv.next218, %for.cond69 ]
  %ii.1197 = phi i32 [ 0, %for.body71.lr.ph ], [ %inc80, %for.cond69 ]
  %arrayidx73 = getelementptr inbounds i32* %23, i64 %indvars.iv217
  %26 = load i32* %arrayidx73, align 4, !tbaa !3
  %arrayidx75 = getelementptr inbounds i32* %24, i64 %indvars.iv217
  %27 = load i32* %arrayidx75, align 4, !tbaa !3
  %cmp76 = icmp eq i32 %26, %27
  %indvars.iv.next218 = add i64 %indvars.iv217, 1
  %inc80 = add nsw i32 %ii.1197, 1
  br i1 %cmp76, label %for.cond69, label %for.end81

for.end81:                                        ; preds = %for.cond69, %for.body71, %for.cond69.preheader
  %ii.1.lcssa = phi i32 [ 0, %for.cond69.preheader ], [ %ii.1197, %for.body71 ], [ %inc80, %for.cond69 ]
  %cmp82 = icmp eq i32 %ii.1.lcssa, %22
  br i1 %cmp82, label %if.then83, label %for.cond41.backedge

for.cond41.backedge:                              ; preds = %for.end81, %if.then83, %if.else52
  %jtest.0 = add nsw i32 %jtest.0200, 1
  %cmp42 = icmp slt i32 %jtest.0, %ntest.1
  %indvars.iv.next222 = add i64 %indvars.iv221, 1
  br i1 %cmp42, label %for.body43, label %for.inc95

if.then83:                                        ; preds = %for.end81
  %28 = load i32* %arrayidx34, align 4, !tbaa !3
  %arrayidx87 = getelementptr inbounds i32* %call6, i64 %idxprom62
  store i32 %28, i32* %arrayidx87, align 4, !tbaa !3
  br label %for.cond41.backedge

for.inc95:                                        ; preds = %if.then36, %for.body43, %for.cond41.backedge, %for.body30.for.inc95_crit_edge
  %lftr.wideiv227.pre-phi = phi i32 [ %lftr.wideiv227.pre, %for.body30.for.inc95_crit_edge ], [ %10, %for.cond41.backedge ], [ %10, %for.body43 ], [ %10, %if.then36 ]
  %inc96.pre-phi = phi i32 [ %inc96.pre, %for.body30.for.inc95_crit_edge ], [ %jtest.0198, %for.cond41.backedge ], [ %jtest.0198, %for.body43 ], [ %jtest.0198, %if.then36 ]
  %indvars.iv.next225.pre-phi = phi i64 [ %indvars.iv.next225.pre, %for.body30.for.inc95_crit_edge ], [ %9, %for.cond41.backedge ], [ %9, %for.body43 ], [ %9, %if.then36 ]
  %nlist2.3 = phi i32 [ %nlist2.2202, %for.body30.for.inc95_crit_edge ], [ %inc37, %for.cond41.backedge ], [ %inc37, %for.body43 ], [ %inc37, %if.then36 ]
  %indvars.iv.next220 = add i64 %indvars.iv219, 1
  %exitcond228 = icmp eq i32 %lftr.wideiv227.pre-phi, %ntest.1
  br i1 %exitcond228, label %for.end97, label %for.body30

for.end97:                                        ; preds = %for.inc95, %for.end26
  %nlist2.2.lcssa = phi i32 [ %nlist2.1, %for.end26 ], [ %nlist2.3, %for.inc95 ]
  call void @IVfree(i32* %call27) #4
  call void @IVfree(i32* %call8) #4
  call void @IVfree(i32* %call7) #4
  %call98 = call i32* @IVinit(i32 %nlist2.2.lcssa, i32 -1) #4
  br label %for.body101

for.body101:                                      ; preds = %for.end97, %if.end111
  %indvars.iv = phi i64 [ %indvars.iv.next, %if.end111 ], [ 0, %for.end97 ]
  %nv2.0195 = phi i32 [ %nv2.1, %if.end111 ], [ 0, %for.end97 ]
  %arrayidx103 = getelementptr inbounds i32* %call6, i64 %indvars.iv
  %29 = load i32* %arrayidx103, align 4, !tbaa !3
  %idxprom104 = sext i32 %29 to i64
  %arrayidx105 = getelementptr inbounds i32* %call98, i64 %idxprom104
  %30 = load i32* %arrayidx105, align 4, !tbaa !3
  %cmp106 = icmp eq i32 %30, -1
  br i1 %cmp106, label %if.then107, label %if.end111

if.then107:                                       ; preds = %for.body101
  %inc108 = add nsw i32 %nv2.0195, 1
  store i32 %nv2.0195, i32* %arrayidx105, align 4, !tbaa !3
  br label %if.end111

if.end111:                                        ; preds = %if.then107, %for.body101
  %31 = phi i32 [ %nv2.0195, %if.then107 ], [ %30, %for.body101 ]
  %nv2.1 = phi i32 [ %inc108, %if.then107 ], [ %nv2.0195, %for.body101 ]
  store i32 %31, i32* %arrayidx103, align 4, !tbaa !3
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %0
  br i1 %exitcond, label %for.end118, label %for.body101

for.end118:                                       ; preds = %if.end111
  call void @IVfree(i32* %call98) #4
  br label %return

return:                                           ; preds = %if.end, %for.end118
  %retval.0 = phi i32* [ %call6, %for.end118 ], [ null, %if.end ]
  ret i32* %retval.0
}

; Function Attrs: optsize
declare i32* @IVinit(i32, i32) #3

; Function Attrs: optsize
declare void @IV2qsortUp(i32, i32*, i32*) #3

; Function Attrs: optsize
declare void @IVfree(i32*) #3

; Function Attrs: nounwind optsize uwtable
define %struct._IV* @IVL_equivMap2(%struct._IVL* %ivl) #0 {
entry:
  %call = tail call i32* @IVL_equivMap1(%struct._IVL* %ivl) #6
  %cmp = icmp eq i32* %call, null
  br i1 %cmp, label %if.end, label %if.else

if.else:                                          ; preds = %entry
  %call1 = tail call %struct._IV* @IV_new() #4
  %nlist = getelementptr inbounds %struct._IVL* %ivl, i64 0, i32 2
  %0 = load i32* %nlist, align 4, !tbaa !3
  tail call void @IV_init2(%struct._IV* %call1, i32 %0, i32 %0, i32 1, i32* %call) #4
  br label %if.end

if.end:                                           ; preds = %entry, %if.else
  %mapIV.0 = phi %struct._IV* [ %call1, %if.else ], [ null, %entry ]
  ret %struct._IV* %mapIV.0
}

; Function Attrs: optsize
declare %struct._IV* @IV_new() #3

; Function Attrs: optsize
declare void @IV_init2(%struct._IV*, i32, i32, i32, i32*) #3

; Function Attrs: nounwind optsize uwtable
define void @IVL_overwrite(%struct._IVL* %ivl, %struct._IV* %oldToNewIV) #0 {
entry:
  %size = alloca i32, align 4
  %list = alloca i32*, align 8
  %cmp = icmp eq %struct._IVL* %ivl, null
  %cmp1 = icmp eq %struct._IV* %oldToNewIV, null
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([50 x i8]* @.str7, i64 0, i64 0), %struct._IVL* %ivl, %struct._IV* %oldToNewIV) #4
  call void @exit(i32 -1) #5
  unreachable

if.end:                                           ; preds = %entry
  %call2 = call i32* @IV_entries(%struct._IV* %oldToNewIV) #4
  %call3 = call i32 @IV_size(%struct._IV* %oldToNewIV) #4
  %nlist4 = getelementptr inbounds %struct._IVL* %ivl, i64 0, i32 2
  %1 = load i32* %nlist4, align 4, !tbaa !3
  %cmp540 = icmp sgt i32 %1, 0
  br i1 %cmp540, label %for.body, label %for.end23

for.body:                                         ; preds = %if.end, %for.inc21
  %ilist.041 = phi i32 [ %inc22, %for.inc21 ], [ 0, %if.end ]
  call void @IVL_listAndSize(%struct._IVL* %ivl, i32 %ilist.041, i32* %size, i32** %list) #4
  %2 = load i32* %size, align 4, !tbaa !3
  %cmp738 = icmp sgt i32 %2, 0
  br i1 %cmp738, label %for.body8.lr.ph, label %for.inc21

for.body8.lr.ph:                                  ; preds = %for.body
  %3 = load i32** %list, align 8, !tbaa !0
  br label %for.body8

for.body8:                                        ; preds = %for.body8.lr.ph, %for.inc
  %4 = phi i32 [ %2, %for.body8.lr.ph ], [ %7, %for.inc ]
  %indvars.iv = phi i64 [ 0, %for.body8.lr.ph ], [ %indvars.iv.next, %for.inc ]
  %arrayidx = getelementptr inbounds i32* %3, i64 %indvars.iv
  %5 = load i32* %arrayidx, align 4, !tbaa !3
  %cmp9 = icmp sgt i32 %5, -1
  %cmp12 = icmp slt i32 %5, %call3
  %or.cond37 = and i1 %cmp9, %cmp12
  br i1 %or.cond37, label %if.then13, label %for.inc

if.then13:                                        ; preds = %for.body8
  %idxprom16 = sext i32 %5 to i64
  %arrayidx17 = getelementptr inbounds i32* %call2, i64 %idxprom16
  %6 = load i32* %arrayidx17, align 4, !tbaa !3
  store i32 %6, i32* %arrayidx, align 4, !tbaa !3
  %.pre = load i32* %size, align 4, !tbaa !3
  br label %for.inc

for.inc:                                          ; preds = %for.body8, %if.then13
  %7 = phi i32 [ %4, %for.body8 ], [ %.pre, %if.then13 ]
  %indvars.iv.next = add i64 %indvars.iv, 1
  %8 = trunc i64 %indvars.iv.next to i32
  %cmp7 = icmp slt i32 %8, %7
  br i1 %cmp7, label %for.body8, label %for.inc21

for.inc21:                                        ; preds = %for.inc, %for.body
  %inc22 = add nsw i32 %ilist.041, 1
  %exitcond = icmp eq i32 %inc22, %1
  br i1 %exitcond, label %for.end23, label %for.body

for.end23:                                        ; preds = %for.inc21, %if.end
  ret void
}

; Function Attrs: optsize
declare i32* @IV_entries(%struct._IV*) #3

; Function Attrs: optsize
declare i32 @IV_size(%struct._IV*) #3

; Function Attrs: nounwind optsize uwtable
define %struct._IVL* @IVL_mapEntries(%struct._IVL* %ivl, %struct._IV* %mapIV) #0 {
entry:
  %size = alloca i32, align 4
  %list = alloca i32*, align 8
  %cmp = icmp eq %struct._IVL* %ivl, null
  %cmp1 = icmp eq %struct._IV* %mapIV, null
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([51 x i8]* @.str8, i64 0, i64 0), %struct._IVL* %ivl, %struct._IV* %mapIV) #4
  call void @exit(i32 -1) #5
  unreachable

if.end:                                           ; preds = %entry
  %nlist2 = getelementptr inbounds %struct._IVL* %ivl, i64 0, i32 2
  %1 = load i32* %nlist2, align 4, !tbaa !3
  %call3 = call i32 @IV_size(%struct._IV* %mapIV) #4
  %call4 = call i32* @IV_entries(%struct._IV* %mapIV) #4
  %cmp5 = icmp slt i32 %1, 1
  %cmp7 = icmp slt i32 %call3, 0
  %or.cond93 = or i1 %cmp5, %cmp7
  %cmp9 = icmp eq i32* %call4, null
  %or.cond94 = or i1 %or.cond93, %cmp9
  br i1 %or.cond94, label %return, label %if.end11

if.end11:                                         ; preds = %if.end
  %call12 = call %struct._IVL* @IVL_new() #4
  call void @IVL_init1(%struct._IVL* %call12, i32 1, i32 %1) #4
  %call13 = call i32 @IVL_maxListSize(%struct._IVL* %ivl) #6
  %call14 = call i32* @IVinit(i32 %call13, i32 -1) #4
  %cmp15104 = icmp sgt i32 %1, 0
  br i1 %cmp15104, label %for.body, label %for.end55

for.body:                                         ; preds = %if.end11, %if.end52
  %ilist.0105 = phi i32 [ %inc54, %if.end52 ], [ 0, %if.end11 ]
  call void @IVL_listAndSize(%struct._IVL* %ivl, i32 %ilist.0105, i32* %size, i32** %list) #4
  %2 = load i32* %size, align 4, !tbaa !3
  %cmp1796 = icmp sgt i32 %2, 0
  br i1 %cmp1796, label %for.body18.lr.ph, label %if.end52

for.body18.lr.ph:                                 ; preds = %for.body
  %3 = load i32** %list, align 8, !tbaa !0
  br label %for.body18

for.body18:                                       ; preds = %for.body18.lr.ph, %for.inc
  %4 = phi i32 [ %2, %for.body18.lr.ph ], [ %7, %for.inc ]
  %indvars.iv = phi i64 [ 0, %for.body18.lr.ph ], [ %indvars.iv.next, %for.inc ]
  %count.098 = phi i32 [ 0, %for.body18.lr.ph ], [ %count.1, %for.inc ]
  %arrayidx = getelementptr inbounds i32* %3, i64 %indvars.iv
  %5 = load i32* %arrayidx, align 4, !tbaa !3
  %cmp19 = icmp sgt i32 %5, -1
  %cmp22 = icmp slt i32 %5, %call3
  %or.cond95 = and i1 %cmp19, %cmp22
  br i1 %or.cond95, label %if.then23, label %for.inc

if.then23:                                        ; preds = %for.body18
  %idxprom26 = sext i32 %5 to i64
  %arrayidx27 = getelementptr inbounds i32* %call4, i64 %idxprom26
  %6 = load i32* %arrayidx27, align 4, !tbaa !3
  %inc = add nsw i32 %count.098, 1
  %idxprom28 = sext i32 %count.098 to i64
  %arrayidx29 = getelementptr inbounds i32* %call14, i64 %idxprom28
  store i32 %6, i32* %arrayidx29, align 4, !tbaa !3
  %.pre108 = load i32* %size, align 4, !tbaa !3
  br label %for.inc

for.inc:                                          ; preds = %for.body18, %if.then23
  %7 = phi i32 [ %.pre108, %if.then23 ], [ %4, %for.body18 ]
  %count.1 = phi i32 [ %inc, %if.then23 ], [ %count.098, %for.body18 ]
  %indvars.iv.next = add i64 %indvars.iv, 1
  %8 = trunc i64 %indvars.iv.next to i32
  %cmp17 = icmp slt i32 %8, %7
  br i1 %cmp17, label %for.body18, label %for.end

for.end:                                          ; preds = %for.inc
  %cmp32 = icmp sgt i32 %count.1, 0
  br i1 %cmp32, label %for.body36.lr.ph, label %if.end52

for.body36.lr.ph:                                 ; preds = %for.end
  call void @IVqsortUp(i32 %count.1, i32* %call14) #4
  store i32 %count.1, i32* %size, align 4, !tbaa !3
  br label %for.body36

for.body36:                                       ; preds = %for.body36.lr.ph, %for.inc49
  %9 = phi i32 [ %count.1, %for.body36.lr.ph ], [ %12, %for.inc49 ]
  %indvars.iv106 = phi i64 [ 0, %for.body36.lr.ph ], [ %indvars.iv.next107, %for.inc49 ]
  %count.2102 = phi i32 [ 0, %for.body36.lr.ph ], [ %count.3, %for.inc49 ]
  %value.0100 = phi i32 [ -1, %for.body36.lr.ph ], [ %value.1, %for.inc49 ]
  %arrayidx38 = getelementptr inbounds i32* %call14, i64 %indvars.iv106
  %10 = load i32* %arrayidx38, align 4, !tbaa !3
  %cmp39 = icmp eq i32 %10, %value.0100
  br i1 %cmp39, label %for.inc49, label %if.then40

if.then40:                                        ; preds = %for.body36
  %inc43 = add nsw i32 %count.2102, 1
  %idxprom44 = sext i32 %count.2102 to i64
  %arrayidx45 = getelementptr inbounds i32* %call14, i64 %idxprom44
  store i32 %10, i32* %arrayidx45, align 4, !tbaa !3
  %11 = load i32* %arrayidx38, align 4, !tbaa !3
  %.pre = load i32* %size, align 4, !tbaa !3
  br label %for.inc49

for.inc49:                                        ; preds = %for.body36, %if.then40
  %12 = phi i32 [ %.pre, %if.then40 ], [ %9, %for.body36 ]
  %value.1 = phi i32 [ %11, %if.then40 ], [ %value.0100, %for.body36 ]
  %count.3 = phi i32 [ %inc43, %if.then40 ], [ %count.2102, %for.body36 ]
  %indvars.iv.next107 = add i64 %indvars.iv106, 1
  %13 = trunc i64 %indvars.iv.next107 to i32
  %cmp35 = icmp slt i32 %13, %12
  br i1 %cmp35, label %for.body36, label %if.end52

if.end52:                                         ; preds = %for.body, %for.inc49, %for.end
  %count.4 = phi i32 [ %count.1, %for.end ], [ %count.3, %for.inc49 ], [ 0, %for.body ]
  call void @IVL_setList(%struct._IVL* %call12, i32 %ilist.0105, i32 %count.4, i32* %call14) #4
  %inc54 = add nsw i32 %ilist.0105, 1
  %exitcond = icmp eq i32 %inc54, %1
  br i1 %exitcond, label %for.end55, label %for.body

for.end55:                                        ; preds = %if.end52, %if.end11
  call void @IVfree(i32* %call14) #4
  br label %return

return:                                           ; preds = %if.end, %for.end55
  %retval.0 = phi %struct._IVL* [ %call12, %for.end55 ], [ null, %if.end ]
  ret %struct._IVL* %retval.0
}

; Function Attrs: optsize
declare %struct._IVL* @IVL_new() #3

; Function Attrs: optsize
declare void @IVL_init1(%struct._IVL*, i32, i32) #3

; Function Attrs: optsize
declare void @IVL_setList(%struct._IVL*, i32, i32, i32*) #3

; Function Attrs: nounwind optsize uwtable
define void @IVL_absorbIVL(%struct._IVL* %ivl1, %struct._IVL* %ivl2, %struct._IV* %mapIV) #0 {
entry:
  %size = alloca i32, align 4
  %ivec = alloca i32*, align 8
  %cmp = icmp eq %struct._IVL* %ivl1, null
  %cmp1 = icmp eq %struct._IVL* %ivl2, null
  %or.cond = or i1 %cmp, %cmp1
  %cmp3 = icmp eq %struct._IV* %mapIV, null
  %or.cond55 = or i1 %or.cond, %cmp3
  br i1 %or.cond55, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([53 x i8]* @.str9, i64 0, i64 0), %struct._IVL* %ivl1, %struct._IVL* %ivl2, %struct._IV* %mapIV) #4
  call void @exit(i32 -1) #5
  unreachable

if.end:                                           ; preds = %entry
  %call4 = call i32* @IV_entries(%struct._IV* %mapIV) #4
  %cmp5 = icmp eq i32* %call4, null
  br i1 %cmp5, label %if.then6, label %if.end8

if.then6:                                         ; preds = %if.end
  %1 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call7 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([69 x i8]* @.str10, i64 0, i64 0), %struct._IVL* %ivl1, %struct._IVL* %ivl2, %struct._IV* %mapIV) #4
  call void @exit(i32 -1) #5
  unreachable

if.end8:                                          ; preds = %if.end
  %call9 = call i32 @IV_size(%struct._IV* %mapIV) #4
  %nlist = getelementptr inbounds %struct._IVL* %ivl2, i64 0, i32 2
  %2 = load i32* %nlist, align 4, !tbaa !3
  %cmp10 = icmp eq i32 %call9, %2
  br i1 %cmp10, label %for.cond.preheader, label %if.then11

for.cond.preheader:                               ; preds = %if.end8
  %cmp1556 = icmp sgt i32 %call9, 0
  br i1 %cmp1556, label %for.body, label %for.end

if.then11:                                        ; preds = %if.end8
  %3 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call12 = call i32 @IV_size(%struct._IV* %mapIV) #4
  %call13 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([81 x i8]* @.str11, i64 0, i64 0), %struct._IVL* %ivl1, %struct._IVL* %ivl2, %struct._IV* %mapIV, i32 %2, i32 %call12) #4
  call void @exit(i32 -1) #5
  unreachable

for.body:                                         ; preds = %for.cond.preheader, %for.inc
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %for.cond.preheader ]
  %4 = trunc i64 %indvars.iv to i32
  call void @IVL_listAndSize(%struct._IVL* %ivl2, i32 %4, i32* %size, i32** %ivec) #4
  %arrayidx = getelementptr inbounds i32* %call4, i64 %indvars.iv
  %5 = load i32* %arrayidx, align 4, !tbaa !3
  %cmp16 = icmp sgt i32 %5, -1
  br i1 %cmp16, label %if.then17, label %for.inc

if.then17:                                        ; preds = %for.body
  %6 = load i32* %size, align 4, !tbaa !3
  %7 = load i32** %ivec, align 8, !tbaa !0
  call void @IVL_setPointerToList(%struct._IVL* %ivl1, i32 %5, i32 %6, i32* %7) #4
  br label %for.inc

for.inc:                                          ; preds = %for.body, %if.then17
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %call9
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          ; preds = %for.inc, %for.cond.preheader
  %chunk19 = getelementptr inbounds %struct._IVL* %ivl2, i64 0, i32 7
  %8 = load %struct._Ichunk** %chunk19, align 8, !tbaa !0
  %cmp20 = icmp eq %struct._Ichunk* %8, null
  br i1 %cmp20, label %if.end29, label %while.cond

while.cond:                                       ; preds = %for.end, %while.cond
  %chunk.0 = phi %struct._Ichunk* [ %9, %while.cond ], [ %8, %for.end ]
  %next = getelementptr inbounds %struct._Ichunk* %chunk.0, i64 0, i32 3
  %9 = load %struct._Ichunk** %next, align 8, !tbaa !0
  %cmp22 = icmp eq %struct._Ichunk* %9, null
  br i1 %cmp22, label %while.end, label %while.cond

while.end:                                        ; preds = %while.cond
  %chunk24 = getelementptr inbounds %struct._IVL* %ivl1, i64 0, i32 7
  %10 = load %struct._Ichunk** %chunk24, align 8, !tbaa !0
  store %struct._Ichunk* %10, %struct._Ichunk** %next, align 8, !tbaa !0
  %11 = load %struct._Ichunk** %chunk19, align 8, !tbaa !0
  store %struct._Ichunk* %11, %struct._Ichunk** %chunk24, align 8, !tbaa !0
  store %struct._Ichunk* null, %struct._Ichunk** %chunk19, align 8, !tbaa !0
  br label %if.end29

if.end29:                                         ; preds = %for.end, %while.end
  ret void
}

; Function Attrs: optsize
declare void @IVL_setPointerToList(%struct._IVL*, i32, i32, i32*) #3

; Function Attrs: nounwind optsize uwtable
define %struct._IVL* @IVL_expand(%struct._IVL* %ivl, %struct._IV* %eqmapIV) #0 {
entry:
  %nlist2 = alloca i32, align 4
  %size = alloca i32, align 4
  %list = alloca i32*, align 8
  %map = alloca i32*, align 8
  %cmp = icmp eq %struct._IVL* %ivl, null
  %cmp1 = icmp eq %struct._IV* %eqmapIV, null
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([47 x i8]* @.str12, i64 0, i64 0), %struct._IVL* %ivl, %struct._IV* %eqmapIV) #4
  call void @exit(i32 -1) #5
  unreachable

if.end:                                           ; preds = %entry
  %nlist = getelementptr inbounds %struct._IVL* %ivl, i64 0, i32 2
  %1 = load i32* %nlist, align 4, !tbaa !3
  call void @IV_sizeAndEntries(%struct._IV* %eqmapIV, i32* %nlist2, i32** %map) #4
  %call2 = call i32 @IV_max(%struct._IV* %eqmapIV) #4
  %add = add nsw i32 %call2, 1
  %call3 = call i32* @IVinit(i32 %add, i32 -1) #4
  %2 = load i32* %nlist2, align 4, !tbaa !3
  %call4 = call i32* @IVinit(i32 %2, i32 -1) #4
  %3 = load i32* %nlist2, align 4, !tbaa !3
  %cmp597 = icmp sgt i32 %3, 0
  br i1 %cmp597, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %if.end
  %4 = load i32** %map, align 8, !tbaa !0
  %5 = sext i32 %3 to i64
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %if.end11
  %indvars.iv103 = phi i64 [ %5, %for.body.lr.ph ], [ %indvars.iv.next104, %if.end11 ]
  %ii.098.in = phi i32 [ %3, %for.body.lr.ph ], [ %ii.098, %if.end11 ]
  %indvars.iv.next104 = add i64 %indvars.iv103, -1
  %ii.098 = add nsw i32 %ii.098.in, -1
  %arrayidx = getelementptr inbounds i32* %4, i64 %indvars.iv.next104
  %6 = load i32* %arrayidx, align 4, !tbaa !3
  %cmp6 = icmp sgt i32 %6, -1
  %cmp8 = icmp slt i32 %6, %add
  %or.cond84 = and i1 %cmp6, %cmp8
  br i1 %or.cond84, label %if.end11, label %if.then9

if.then9:                                         ; preds = %for.body
  %7 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call10 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %7, i8* getelementptr inbounds ([74 x i8]* @.str13, i64 0, i64 0), %struct._IVL* %ivl, %struct._IV* %eqmapIV, i32 %1, i32 %add, i32 %ii.098, i32 %6) #4
  call void @exit(i32 -1) #5
  unreachable

if.end11:                                         ; preds = %for.body
  %idxprom12 = sext i32 %6 to i64
  %arrayidx13 = getelementptr inbounds i32* %call3, i64 %idxprom12
  %8 = load i32* %arrayidx13, align 4, !tbaa !3
  %arrayidx15 = getelementptr inbounds i32* %call4, i64 %indvars.iv.next104
  store i32 %8, i32* %arrayidx15, align 4, !tbaa !3
  %9 = trunc i64 %indvars.iv.next104 to i32
  store i32 %9, i32* %arrayidx13, align 4, !tbaa !3
  %cmp5 = icmp sgt i32 %9, 0
  br i1 %cmp5, label %for.body, label %for.end

for.end:                                          ; preds = %if.end11, %if.end
  %call18 = call %struct._IVL* @IVL_new() #4
  call void @IVL_init1(%struct._IVL* %call18, i32 1, i32 %1) #4
  %10 = load i32* %nlist2, align 4, !tbaa !3
  %call19 = call i32* @IVinit(i32 %10, i32 -1) #4
  %cmp2193 = icmp sgt i32 %1, 0
  br i1 %cmp2193, label %for.body22, label %for.end44

for.body22:                                       ; preds = %for.end, %for.end41
  %ilist.094 = phi i32 [ %inc43, %for.end41 ], [ 0, %for.end ]
  call void @IVL_listAndSize(%struct._IVL* %ivl, i32 %ilist.094, i32* %size, i32** %list) #4
  %11 = load i32* %size, align 4, !tbaa !3
  %cmp2489 = icmp sgt i32 %11, 0
  br i1 %cmp2489, label %for.body25.lr.ph, label %for.end41

for.body25.lr.ph:                                 ; preds = %for.body22
  %.pre = load i32** %list, align 8, !tbaa !0
  br label %for.body25

for.body25:                                       ; preds = %for.body25.lr.ph, %for.inc39
  %12 = phi i32 [ %11, %for.body25.lr.ph ], [ %15, %for.inc39 ]
  %indvars.iv99 = phi i64 [ 0, %for.body25.lr.ph ], [ %indvars.iv.next100, %for.inc39 ]
  %count.091 = phi i32 [ 0, %for.body25.lr.ph ], [ %count.1.lcssa, %for.inc39 ]
  %arrayidx27 = getelementptr inbounds i32* %.pre, i64 %indvars.iv99
  %13 = load i32* %arrayidx27, align 4, !tbaa !3
  %idxprom28 = sext i32 %13 to i64
  %arrayidx29 = getelementptr inbounds i32* %call3, i64 %idxprom28
  %kk.085 = load i32* %arrayidx29, align 4
  %cmp3186 = icmp eq i32 %kk.085, -1
  br i1 %cmp3186, label %for.inc39, label %for.body32.lr.ph

for.body32.lr.ph:                                 ; preds = %for.body25
  %14 = sext i32 %count.091 to i64
  br label %for.body32

for.body32:                                       ; preds = %for.body32.lr.ph, %for.body32
  %indvars.iv = phi i64 [ %14, %for.body32.lr.ph ], [ %indvars.iv.next, %for.body32 ]
  %kk.088 = phi i32 [ %kk.085, %for.body32.lr.ph ], [ %kk.0, %for.body32 ]
  %count.187 = phi i32 [ %count.091, %for.body32.lr.ph ], [ %inc, %for.body32 ]
  %indvars.iv.next = add i64 %indvars.iv, 1
  %inc = add nsw i32 %count.187, 1
  %arrayidx34 = getelementptr inbounds i32* %call19, i64 %indvars.iv
  store i32 %kk.088, i32* %arrayidx34, align 4, !tbaa !3
  %idxprom36 = sext i32 %kk.088 to i64
  %arrayidx37 = getelementptr inbounds i32* %call4, i64 %idxprom36
  %kk.0 = load i32* %arrayidx37, align 4
  %cmp31 = icmp eq i32 %kk.0, -1
  br i1 %cmp31, label %for.cond30.for.inc39_crit_edge, label %for.body32

for.cond30.for.inc39_crit_edge:                   ; preds = %for.body32
  %.pre105 = load i32* %size, align 4, !tbaa !3
  br label %for.inc39

for.inc39:                                        ; preds = %for.cond30.for.inc39_crit_edge, %for.body25
  %15 = phi i32 [ %.pre105, %for.cond30.for.inc39_crit_edge ], [ %12, %for.body25 ]
  %count.1.lcssa = phi i32 [ %inc, %for.cond30.for.inc39_crit_edge ], [ %count.091, %for.body25 ]
  %indvars.iv.next100 = add i64 %indvars.iv99, 1
  %16 = trunc i64 %indvars.iv.next100 to i32
  %cmp24 = icmp slt i32 %16, %15
  br i1 %cmp24, label %for.body25, label %for.end41

for.end41:                                        ; preds = %for.inc39, %for.body22
  %count.0.lcssa = phi i32 [ 0, %for.body22 ], [ %count.1.lcssa, %for.inc39 ]
  call void @IVL_setList(%struct._IVL* %call18, i32 %ilist.094, i32 %count.0.lcssa, i32* %call19) #4
  %inc43 = add nsw i32 %ilist.094, 1
  %exitcond = icmp eq i32 %inc43, %1
  br i1 %exitcond, label %for.end44, label %for.body22

for.end44:                                        ; preds = %for.end41, %for.end
  call void @IVfree(i32* %call3) #4
  call void @IVfree(i32* %call4) #4
  call void @IVfree(i32* %call19) #4
  ret %struct._IVL* %call18
}

; Function Attrs: optsize
declare void @IV_sizeAndEntries(%struct._IV*, i32*, i32**) #3

; Function Attrs: optsize
declare i32 @IV_max(%struct._IV*) #3

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize }
attributes #5 = { noreturn nounwind optsize }
attributes #6 = { optsize }

!0 = metadata !{metadata !"any pointer", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"int", metadata !1}
