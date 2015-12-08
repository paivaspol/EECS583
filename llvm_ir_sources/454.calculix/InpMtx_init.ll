; ModuleID = '../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_init.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct._InpMtx = type { i32, i32, i32, i32, i32, double, %struct._IV, %struct._IV, %struct._DV, i32, i32, %struct._IV, %struct._IV, %struct._IV }
%struct._IV = type { i32, i32, i32, i32* }
%struct._DV = type { i32, i32, i32, double* }

@stderr = external global %struct._IO_FILE*
@.str = private unnamed_addr constant [63 x i8] c"\0A fatal error in InpMtx_init(%p,%d,%d,%d,%d)\0A inpmtx is NULL \0A\00", align 1
@.str1 = private unnamed_addr constant [62 x i8] c"\0A fatal error in InpMtx_init(%p,%d,%d,%d,%d)\0A bad coordType \0A\00", align 1
@.str2 = private unnamed_addr constant [62 x i8] c"\0A fatal error in InpMtx_init(%p,%d,%d,%d,%d)\0A bad inputMode \0A\00", align 1
@.str3 = private unnamed_addr constant [78 x i8] c"\0A fatal error in InpMtx_init(%p,%d,%d,%d,%d)\0A maxnent = %d, maxnvector = %d \0A\00", align 1
@.str4 = private unnamed_addr constant [59 x i8] c"\0A fatal error in InpMtx_changeCoordType(%p,%d)\0A bad input\0A\00", align 1
@.str5 = private unnamed_addr constant [67 x i8] c"\0A fatal error in InpMtx_changeCoordType(%p,%d)\0A bad new coordType\0A\00", align 1
@.str6 = private unnamed_addr constant [72 x i8] c"\0A fatal error in InpMtx_changeCoordType(%p,%d)\0A bad existing coordType\0A\00", align 1
@.str7 = private unnamed_addr constant [66 x i8] c"\0A fatal error in InpMtx_changeStorageMode(%p,%d)\0A inpmtx is NULL\0A\00", align 1
@.str8 = private unnamed_addr constant [72 x i8] c"\0A fatal error in InpMtx_changeStorageMode(%p,%d)\0A bad new storage mode\0A\00", align 1

; Function Attrs: nounwind optsize uwtable
define void @InpMtx_init(%struct._InpMtx* %inpmtx, i32 %coordType, i32 %inputMode, i32 %maxnent, i32 %maxnvector) #0 {
entry:
  %cmp = icmp eq %struct._InpMtx* %inpmtx, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([63 x i8]* @.str, i64 0, i64 0), %struct._InpMtx* null, i32 %coordType, i32 %inputMode, i32 %maxnent, i32 %maxnvector) #4
  tail call void @exit(i32 -1) #5
  unreachable

if.end:                                           ; preds = %entry
  %coordType1 = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 0
  %1 = load i32* %coordType1, align 4, !tbaa !3
  %.off = add i32 %1, -1
  %switch = icmp ult i32 %.off, 3
  br i1 %switch, label %if.end10, label %if.then8

if.then8:                                         ; preds = %if.end
  %2 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call9 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([62 x i8]* @.str1, i64 0, i64 0), %struct._InpMtx* %inpmtx, i32 %coordType, i32 %inputMode, i32 %maxnent, i32 %maxnvector) #4
  tail call void @exit(i32 -1) #5
  unreachable

if.end10:                                         ; preds = %if.end
  %inputMode11 = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 2
  %3 = load i32* %inputMode11, align 4, !tbaa !3
  %switch73 = icmp ult i32 %3, 3
  br i1 %switch73, label %if.end21, label %if.then19

if.then19:                                        ; preds = %if.end10
  %4 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call20 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([62 x i8]* @.str2, i64 0, i64 0), %struct._InpMtx* %inpmtx, i32 %coordType, i32 %inputMode, i32 %maxnent, i32 %maxnvector) #4
  tail call void @exit(i32 -1) #5
  unreachable

if.end21:                                         ; preds = %if.end10
  %5 = or i32 %maxnvector, %maxnent
  %6 = icmp slt i32 %5, 0
  br i1 %6, label %if.then25, label %if.end27

if.then25:                                        ; preds = %if.end21
  %7 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call26 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %7, i8* getelementptr inbounds ([78 x i8]* @.str3, i64 0, i64 0), %struct._InpMtx* %inpmtx, i32 %coordType, i32 %inputMode, i32 %maxnent, i32 %maxnvector, i32 %maxnent, i32 %maxnvector) #4
  tail call void @exit(i32 -1) #5
  unreachable

if.end27:                                         ; preds = %if.end21
  tail call void @InpMtx_clearData(%struct._InpMtx* %inpmtx) #4
  store i32 %coordType, i32* %coordType1, align 4, !tbaa !3
  store i32 %inputMode, i32* %inputMode11, align 4, !tbaa !3
  %cmp30 = icmp sgt i32 %maxnent, 0
  br i1 %cmp30, label %if.then31, label %if.end32

if.then31:                                        ; preds = %if.end27
  tail call void @InpMtx_setMaxnent(%struct._InpMtx* %inpmtx, i32 %maxnent) #4
  br label %if.end32

if.end32:                                         ; preds = %if.then31, %if.end27
  %cmp33 = icmp sgt i32 %maxnvector, 0
  br i1 %cmp33, label %if.then34, label %if.end35

if.then34:                                        ; preds = %if.end32
  tail call void @InpMtx_setMaxnvector(%struct._InpMtx* %inpmtx, i32 %maxnvector) #4
  br label %if.end35

if.end35:                                         ; preds = %if.then34, %if.end32
  ret void
}

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #1

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32) #2

; Function Attrs: optsize
declare void @InpMtx_clearData(%struct._InpMtx*) #3

; Function Attrs: optsize
declare void @InpMtx_setMaxnent(%struct._InpMtx*, i32) #3

; Function Attrs: optsize
declare void @InpMtx_setMaxnvector(%struct._InpMtx*, i32) #3

; Function Attrs: nounwind optsize uwtable
define void @InpMtx_changeCoordType(%struct._InpMtx* %inpmtx, i32 %newType) #0 {
entry:
  %cmp = icmp eq %struct._InpMtx* %inpmtx, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([59 x i8]* @.str4, i64 0, i64 0), %struct._InpMtx* null, i32 %newType) #4
  tail call void @exit(i32 -1) #5
  unreachable

if.end:                                           ; preds = %entry
  %newType.off = add i32 %newType, -1
  %1 = icmp ugt i32 %newType.off, 1
  %cmp4 = icmp ne i32 %newType, 3
  %or.cond179 = and i1 %1, %cmp4
  %cmp6 = icmp ne i32 %newType, 4
  %or.cond180 = and i1 %or.cond179, %cmp6
  br i1 %or.cond180, label %if.then7, label %if.end9

if.then7:                                         ; preds = %if.end
  %2 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call8 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([67 x i8]* @.str5, i64 0, i64 0), %struct._InpMtx* %inpmtx, i32 %newType) #4
  tail call void @exit(i32 -1) #5
  unreachable

if.end9:                                          ; preds = %if.end
  %coordType = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 0
  %3 = load i32* %coordType, align 4, !tbaa !3
  %.off = add i32 %3, -1
  %switch = icmp ult i32 %.off, 3
  br i1 %switch, label %if.end18, label %if.then16

if.then16:                                        ; preds = %if.end9
  %4 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call17 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([72 x i8]* @.str6, i64 0, i64 0), %struct._InpMtx* %inpmtx, i32 %newType) #4
  tail call void @exit(i32 -1) #5
  unreachable

if.end18:                                         ; preds = %if.end9
  %cmp20 = icmp eq i32 %3, %newType
  br i1 %cmp20, label %return, label %if.end22

if.end22:                                         ; preds = %if.end18
  %cmp23 = icmp eq i32 %newType, 4
  br i1 %cmp23, label %if.then24, label %if.end26

if.then24:                                        ; preds = %if.end22
  store i32 4, i32* %coordType, align 4, !tbaa !3
  br label %return

if.end26:                                         ; preds = %if.end22
  %nent27 = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 4
  %5 = load i32* %nent27, align 4, !tbaa !3
  %call28 = tail call i32* @InpMtx_ivec1(%struct._InpMtx* %inpmtx) #4
  %call29 = tail call i32* @InpMtx_ivec2(%struct._InpMtx* %inpmtx) #4
  switch i32 %3, label %return [
    i32 1, label %if.then31
    i32 2, label %if.then73
    i32 3, label %if.then125
  ]

if.then31:                                        ; preds = %if.end26
  switch i32 %newType, label %return [
    i32 2, label %for.cond.preheader
    i32 3, label %for.cond44.preheader
  ]

for.cond44.preheader:                             ; preds = %if.then31
  %cmp45325 = icmp sgt i32 %5, 0
  br i1 %cmp45325, label %for.body46, label %for.end66

for.cond.preheader:                               ; preds = %if.then31
  %cmp34323 = icmp sgt i32 %5, 0
  br i1 %cmp34323, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond.preheader, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %for.cond.preheader ]
  %arrayidx = getelementptr inbounds i32* %call28, i64 %indvars.iv
  %6 = load i32* %arrayidx, align 4, !tbaa !3
  %arrayidx36 = getelementptr inbounds i32* %call29, i64 %indvars.iv
  %7 = load i32* %arrayidx36, align 4, !tbaa !3
  store i32 %7, i32* %arrayidx, align 4, !tbaa !3
  store i32 %6, i32* %arrayidx36, align 4, !tbaa !3
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %5
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %for.cond.preheader
  store i32 2, i32* %coordType, align 4, !tbaa !3
  %storageMode = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 1
  store i32 1, i32* %storageMode, align 4, !tbaa !3
  br label %return

for.body46:                                       ; preds = %for.cond44.preheader, %for.body46
  %indvars.iv337 = phi i64 [ %indvars.iv.next338, %for.body46 ], [ 0, %for.cond44.preheader ]
  %arrayidx48 = getelementptr inbounds i32* %call28, i64 %indvars.iv337
  %8 = load i32* %arrayidx48, align 4, !tbaa !3
  %arrayidx50 = getelementptr inbounds i32* %call29, i64 %indvars.iv337
  %9 = load i32* %arrayidx50, align 4, !tbaa !3
  %cmp51 = icmp sgt i32 %8, %9
  %. = select i1 %cmp51, i32 %9, i32 %8
  store i32 %., i32* %arrayidx48, align 4, !tbaa !3
  %storemerge319 = sub nsw i32 %9, %8
  store i32 %storemerge319, i32* %arrayidx50, align 4, !tbaa !3
  %indvars.iv.next338 = add i64 %indvars.iv337, 1
  %lftr.wideiv339 = trunc i64 %indvars.iv.next338 to i32
  %exitcond340 = icmp eq i32 %lftr.wideiv339, %5
  br i1 %exitcond340, label %for.end66, label %for.body46

for.end66:                                        ; preds = %for.body46, %for.cond44.preheader
  store i32 3, i32* %coordType, align 4, !tbaa !3
  %storageMode68 = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 1
  store i32 1, i32* %storageMode68, align 4, !tbaa !3
  br label %return

if.then73:                                        ; preds = %if.end26
  switch i32 %newType, label %return [
    i32 1, label %for.cond76.preheader
    i32 3, label %for.cond95.preheader
  ]

for.cond95.preheader:                             ; preds = %if.then73
  %cmp96329 = icmp sgt i32 %5, 0
  br i1 %cmp96329, label %for.body97, label %for.end118

for.cond76.preheader:                             ; preds = %if.then73
  %cmp77327 = icmp sgt i32 %5, 0
  br i1 %cmp77327, label %for.body78, label %for.end89

for.body78:                                       ; preds = %for.cond76.preheader, %for.body78
  %indvars.iv341 = phi i64 [ %indvars.iv.next342, %for.body78 ], [ 0, %for.cond76.preheader ]
  %arrayidx80 = getelementptr inbounds i32* %call28, i64 %indvars.iv341
  %10 = load i32* %arrayidx80, align 4, !tbaa !3
  %arrayidx82 = getelementptr inbounds i32* %call29, i64 %indvars.iv341
  %11 = load i32* %arrayidx82, align 4, !tbaa !3
  store i32 %11, i32* %arrayidx80, align 4, !tbaa !3
  store i32 %10, i32* %arrayidx82, align 4, !tbaa !3
  %indvars.iv.next342 = add i64 %indvars.iv341, 1
  %lftr.wideiv343 = trunc i64 %indvars.iv.next342 to i32
  %exitcond344 = icmp eq i32 %lftr.wideiv343, %5
  br i1 %exitcond344, label %for.end89, label %for.body78

for.end89:                                        ; preds = %for.body78, %for.cond76.preheader
  store i32 1, i32* %coordType, align 4, !tbaa !3
  %storageMode91 = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 1
  store i32 1, i32* %storageMode91, align 4, !tbaa !3
  br label %return

for.body97:                                       ; preds = %for.cond95.preheader, %for.body97
  %indvars.iv347 = phi i64 [ %indvars.iv.next348, %for.body97 ], [ 0, %for.cond95.preheader ]
  %arrayidx99 = getelementptr inbounds i32* %call28, i64 %indvars.iv347
  %12 = load i32* %arrayidx99, align 4, !tbaa !3
  %arrayidx101 = getelementptr inbounds i32* %call29, i64 %indvars.iv347
  %13 = load i32* %arrayidx101, align 4, !tbaa !3
  %cmp102 = icmp sgt i32 %13, %12
  %.322 = select i1 %cmp102, i32 %12, i32 %13
  store i32 %.322, i32* %arrayidx99, align 4, !tbaa !3
  %storemerge = sub nsw i32 %12, %13
  store i32 %storemerge, i32* %arrayidx101, align 4, !tbaa !3
  %indvars.iv.next348 = add i64 %indvars.iv347, 1
  %lftr.wideiv349 = trunc i64 %indvars.iv.next348 to i32
  %exitcond350 = icmp eq i32 %lftr.wideiv349, %5
  br i1 %exitcond350, label %for.end118, label %for.body97

for.end118:                                       ; preds = %for.body97, %for.cond95.preheader
  store i32 3, i32* %coordType, align 4, !tbaa !3
  %storageMode120 = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 1
  store i32 1, i32* %storageMode120, align 4, !tbaa !3
  br label %return

if.then125:                                       ; preds = %if.end26
  switch i32 %newType, label %return [
    i32 1, label %for.cond128.preheader
    i32 2, label %for.cond152.preheader
  ]

for.cond152.preheader:                            ; preds = %if.then125
  %cmp153333 = icmp sgt i32 %5, 0
  br i1 %cmp153333, label %for.body154, label %for.end171

for.cond128.preheader:                            ; preds = %if.then125
  %cmp129331 = icmp sgt i32 %5, 0
  br i1 %cmp129331, label %for.body130, label %for.end146

for.body130:                                      ; preds = %for.cond128.preheader, %for.body130
  %indvars.iv351 = phi i64 [ %indvars.iv.next352, %for.body130 ], [ 0, %for.cond128.preheader ]
  %arrayidx132 = getelementptr inbounds i32* %call28, i64 %indvars.iv351
  %14 = load i32* %arrayidx132, align 4, !tbaa !3
  %arrayidx134 = getelementptr inbounds i32* %call29, i64 %indvars.iv351
  %15 = load i32* %arrayidx134, align 4, !tbaa !3
  %cmp135 = icmp sgt i32 %15, -1
  %sub138 = select i1 %cmp135, i32 0, i32 %15
  %row.0 = sub nsw i32 %14, %sub138
  %add = select i1 %cmp135, i32 %15, i32 0
  %col.0 = add nsw i32 %add, %14
  store i32 %row.0, i32* %arrayidx132, align 4, !tbaa !3
  store i32 %col.0, i32* %arrayidx134, align 4, !tbaa !3
  %indvars.iv.next352 = add i64 %indvars.iv351, 1
  %lftr.wideiv353 = trunc i64 %indvars.iv.next352 to i32
  %exitcond354 = icmp eq i32 %lftr.wideiv353, %5
  br i1 %exitcond354, label %for.end146, label %for.body130

for.end146:                                       ; preds = %for.body130, %for.cond128.preheader
  store i32 1, i32* %coordType, align 4, !tbaa !3
  %storageMode148 = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 1
  store i32 1, i32* %storageMode148, align 4, !tbaa !3
  br label %return

for.body154:                                      ; preds = %for.cond152.preheader, %for.body154
  %indvars.iv355 = phi i64 [ %indvars.iv.next356, %for.body154 ], [ 0, %for.cond152.preheader ]
  %arrayidx156 = getelementptr inbounds i32* %call28, i64 %indvars.iv355
  %16 = load i32* %arrayidx156, align 4, !tbaa !3
  %arrayidx158 = getelementptr inbounds i32* %call29, i64 %indvars.iv355
  %17 = load i32* %arrayidx158, align 4, !tbaa !3
  %cmp159 = icmp sgt i32 %17, -1
  %sub163 = select i1 %cmp159, i32 0, i32 %17
  %row.1 = sub nsw i32 %16, %sub163
  %add161 = select i1 %cmp159, i32 %17, i32 0
  %col.1 = add nsw i32 %add161, %16
  store i32 %col.1, i32* %arrayidx156, align 4, !tbaa !3
  store i32 %row.1, i32* %arrayidx158, align 4, !tbaa !3
  %indvars.iv.next356 = add i64 %indvars.iv355, 1
  %lftr.wideiv357 = trunc i64 %indvars.iv.next356 to i32
  %exitcond358 = icmp eq i32 %lftr.wideiv357, %5
  br i1 %exitcond358, label %for.end171, label %for.body154

for.end171:                                       ; preds = %for.body154, %for.cond152.preheader
  store i32 2, i32* %coordType, align 4, !tbaa !3
  %storageMode173 = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 1
  store i32 1, i32* %storageMode173, align 4, !tbaa !3
  br label %return

return:                                           ; preds = %if.then125, %if.end26, %if.then73, %if.then31, %for.end66, %for.end, %for.end171, %for.end146, %for.end89, %for.end118, %if.end18, %if.then24
  ret void
}

; Function Attrs: optsize
declare i32* @InpMtx_ivec1(%struct._InpMtx*) #3

; Function Attrs: optsize
declare i32* @InpMtx_ivec2(%struct._InpMtx*) #3

; Function Attrs: nounwind optsize uwtable
define void @InpMtx_changeStorageMode(%struct._InpMtx* %inpmtx, i32 %newMode) #0 {
entry:
  %cmp = icmp eq %struct._InpMtx* %inpmtx, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([66 x i8]* @.str7, i64 0, i64 0), %struct._InpMtx* null, i32 %newMode) #4
  tail call void @exit(i32 -1) #5
  unreachable

if.end:                                           ; preds = %entry
  %newMode.off = add i32 %newMode, -1
  %1 = icmp ugt i32 %newMode.off, 1
  %cmp4 = icmp ne i32 %newMode, 3
  %or.cond44 = and i1 %1, %cmp4
  br i1 %or.cond44, label %if.then5, label %if.end7

if.then5:                                         ; preds = %if.end
  %2 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call6 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([72 x i8]* @.str8, i64 0, i64 0), %struct._InpMtx* %inpmtx, i32 %newMode) #4
  tail call void @exit(i32 -1) #5
  unreachable

if.end7:                                          ; preds = %if.end
  %storageMode = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 1
  %3 = load i32* %storageMode, align 4, !tbaa !3
  %cmp8 = icmp eq i32 %3, %newMode
  br i1 %cmp8, label %return, label %if.end10

if.end10:                                         ; preds = %if.end7
  switch i32 %3, label %return [
    i32 1, label %if.then12
    i32 2, label %if.then23
    i32 3, label %if.then35
  ]

if.then12:                                        ; preds = %if.end10
  switch i32 %newMode, label %return [
    i32 2, label %if.then14
    i32 3, label %if.then17
  ]

if.then14:                                        ; preds = %if.then12
  tail call void @InpMtx_sortAndCompress(%struct._InpMtx* %inpmtx) #4
  store i32 2, i32* %storageMode, align 4, !tbaa !3
  br label %return

if.then17:                                        ; preds = %if.then12
  tail call void @InpMtx_sortAndCompress(%struct._InpMtx* %inpmtx) #4
  tail call void @InpMtx_convertToVectors(%struct._InpMtx* %inpmtx) #4
  store i32 3, i32* %storageMode, align 4, !tbaa !3
  br label %return

if.then23:                                        ; preds = %if.end10
  switch i32 %newMode, label %return [
    i32 1, label %if.then25
    i32 3, label %if.then29
  ]

if.then25:                                        ; preds = %if.then23
  store i32 1, i32* %storageMode, align 4, !tbaa !3
  br label %return

if.then29:                                        ; preds = %if.then23
  tail call void @InpMtx_convertToVectors(%struct._InpMtx* %inpmtx) #4
  store i32 3, i32* %storageMode, align 4, !tbaa !3
  br label %return

if.then35:                                        ; preds = %if.end10
  %4 = icmp ult i32 %newMode.off, 2
  br i1 %4, label %if.then38, label %return

if.then38:                                        ; preds = %if.then35
  store i32 %newMode, i32* %storageMode, align 4, !tbaa !3
  br label %return

return:                                           ; preds = %if.end10, %if.then23, %if.then12, %if.then17, %if.then14, %if.then35, %if.then38, %if.then25, %if.then29, %if.end7
  ret void
}

; Function Attrs: optsize
declare void @InpMtx_sortAndCompress(%struct._InpMtx*) #3

; Function Attrs: optsize
declare void @InpMtx_convertToVectors(%struct._InpMtx*) #3

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize }
attributes #5 = { noreturn nounwind optsize }

!0 = metadata !{metadata !"any pointer", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"int", metadata !1}