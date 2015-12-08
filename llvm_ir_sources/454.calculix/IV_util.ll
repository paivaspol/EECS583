; ModuleID = '../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/IV/src/IV_util.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct._IV = type { i32, i32, i32, i32* }

@stderr = external global %struct._IO_FILE*
@.str = private unnamed_addr constant [49 x i8] c"\0A fatal error in IV_shiftBase(%p,%d)\0A bad input\0A\00", align 1
@.str1 = private unnamed_addr constant [44 x i8] c"\0A fatal error in IV_push(%p,%d)\0A bad input\0A\00", align 1
@.str2 = private unnamed_addr constant [49 x i8] c"\0A fatal error in IV_min(%p), size = %d, vec = %p\00", align 1
@.str3 = private unnamed_addr constant [49 x i8] c"\0A fatal error in IV_max(%p), size = %d, vec = %p\00", align 1
@.str4 = private unnamed_addr constant [49 x i8] c"\0A fatal error in IV_sum(%p), size = %d, vec = %p\00", align 1
@.str5 = private unnamed_addr constant [52 x i8] c"\0A fatal error in IV_sortUp(%p), size = %d, vec = %p\00", align 1
@.str6 = private unnamed_addr constant [54 x i8] c"\0A fatal error in IV_sortDown(%p), size = %d, vec = %p\00", align 1
@.str7 = private unnamed_addr constant [56 x i8] c"\0A fatal error in IV_ramp(%p,%d,%d), size = %d, vec = %p\00", align 1
@.str8 = private unnamed_addr constant [56 x i8] c"\0A fatal error in IV_shuffle(%p,%d), size = %d, vec = %p\00", align 1
@.str9 = private unnamed_addr constant [44 x i8] c"\0A fatal error in IV_sizeOf(%p)\0A bad input \0A\00", align 1
@.str10 = private unnamed_addr constant [52 x i8] c"\0A fatal error in IV_filterKeep(%p,%p,%d)\0A bad input\00", align 1
@.str11 = private unnamed_addr constant [53 x i8] c"\0A fatal error in IV_filterPurge(%p,%p,%d)\0A bad input\00", align 1
@.str12 = private unnamed_addr constant [41 x i8] c"\0A fatal error in IV_first(%p)\0A bad input\00", align 1
@.str13 = private unnamed_addr constant [43 x i8] c"\0A fatal error in IV_next(%p,%p)\0A bad input\00", align 1
@.str14 = private unnamed_addr constant [64 x i8] c"\0A fatal error in IV_next(%p,%p)\0A offset = %d, must be in [0,%d)\00", align 1
@.str15 = private unnamed_addr constant [44 x i8] c"\0A fatal error in IV_fill(%p,%d)\0A bad input\0A\00", align 1
@.str16 = private unnamed_addr constant [44 x i8] c"\0A fatal error in IV_copy(%p,%p)\0A bad input\0A\00", align 1
@.str17 = private unnamed_addr constant [49 x i8] c"\0A fatal error in IV_increment(%p,%d)\0A bad input\0A\00", align 1
@.str18 = private unnamed_addr constant [22 x i8] c"\0A loc = %d, size = %d\00", align 1
@.str19 = private unnamed_addr constant [49 x i8] c"\0A fatal error in IV_decrement(%p,%d)\0A bad input\0A\00", align 1
@.str20 = private unnamed_addr constant [49 x i8] c"\0A fatal error in IV_findValue(%p,%d)\0A bad input\0A\00", align 1
@.str21 = private unnamed_addr constant [58 x i8] c"\0A fatal error in IV_findValueAscending(%p,%d)\0A bad input\0A\00", align 1
@.str22 = private unnamed_addr constant [59 x i8] c"\0A fatal error in IV_findValueDescending(%p,%d)\0A bad input\0A\00", align 1
@.str23 = private unnamed_addr constant [45 x i8] c"\0A fatal error in IV_inverseMap()\0A bad input\0A\00", align 1
@.str24 = private unnamed_addr constant [56 x i8] c"\0A fatal error in IV_inverseMap()\0A size = %d, list = %p\0A\00", align 1
@.str25 = private unnamed_addr constant [67 x i8] c"\0A fatal error in IV_inverseMap()\0A list[%d] = %d, must be positive\0A\00", align 1
@.str26 = private unnamed_addr constant [58 x i8] c"\0A fatal error in IV_inverseMap()\0A repeated list value %d\0A\00", align 1
@.str27 = private unnamed_addr constant [48 x i8] c"\0A fatal error in IV_targetEntries()\0A bad input\0A\00", align 1
@.str28 = private unnamed_addr constant [59 x i8] c"\0A fatal error in IV_targetEntries()\0A size = %d, list = %p\0A\00", align 1

; Function Attrs: nounwind optsize uwtable
define void @IV_shiftBase(%struct._IV* %iv, i32 %offset) #0 {
entry:
  %cmp = icmp eq %struct._IV* %iv, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([49 x i8]* @.str, i64 0, i64 0), %struct._IV* null, i32 %offset) #5
  tail call void @exit(i32 -1) #6
  unreachable

if.end:                                           ; preds = %entry
  %vec = getelementptr inbounds %struct._IV* %iv, i64 0, i32 3
  %1 = load i32** %vec, align 8, !tbaa !0
  %idx.ext = sext i32 %offset to i64
  %add.ptr = getelementptr inbounds i32* %1, i64 %idx.ext
  store i32* %add.ptr, i32** %vec, align 8, !tbaa !0
  %size = getelementptr inbounds %struct._IV* %iv, i64 0, i32 0
  %2 = load i32* %size, align 4, !tbaa !3
  %sub = sub nsw i32 %2, %offset
  store i32 %sub, i32* %size, align 4, !tbaa !3
  %maxsize = getelementptr inbounds %struct._IV* %iv, i64 0, i32 1
  %3 = load i32* %maxsize, align 4, !tbaa !3
  %sub1 = sub nsw i32 %3, %offset
  store i32 %sub1, i32* %maxsize, align 4, !tbaa !3
  ret void
}

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #1

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32) #2

; Function Attrs: nounwind optsize uwtable
define void @IV_push(%struct._IV* %iv, i32 %val) #0 {
entry:
  %cmp = icmp eq %struct._IV* %iv, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([44 x i8]* @.str1, i64 0, i64 0), %struct._IV* null, i32 %val) #5
  tail call void @exit(i32 -1) #6
  unreachable

if.end:                                           ; preds = %entry
  %size = getelementptr inbounds %struct._IV* %iv, i64 0, i32 0
  %1 = load i32* %size, align 4, !tbaa !3
  %maxsize = getelementptr inbounds %struct._IV* %iv, i64 0, i32 1
  %2 = load i32* %maxsize, align 4, !tbaa !3
  %cmp1 = icmp eq i32 %1, %2
  br i1 %cmp1, label %if.then2, label %if.end8

if.then2:                                         ; preds = %if.end
  %cmp4 = icmp eq i32 %1, 0
  br i1 %cmp4, label %if.then5, label %if.else

if.then5:                                         ; preds = %if.then2
  tail call void @IV_setMaxsize(%struct._IV* %iv, i32 10) #5
  br label %if.end8

if.else:                                          ; preds = %if.then2
  %mul = shl nsw i32 %1, 1
  tail call void @IV_setMaxsize(%struct._IV* %iv, i32 %mul) #5
  br label %if.end8

if.end8:                                          ; preds = %if.then5, %if.else, %if.end
  %3 = load i32* %size, align 4, !tbaa !3
  %inc = add nsw i32 %3, 1
  store i32 %inc, i32* %size, align 4, !tbaa !3
  %idxprom = sext i32 %3 to i64
  %vec = getelementptr inbounds %struct._IV* %iv, i64 0, i32 3
  %4 = load i32** %vec, align 8, !tbaa !0
  %arrayidx = getelementptr inbounds i32* %4, i64 %idxprom
  store i32 %val, i32* %arrayidx, align 4, !tbaa !3
  ret void
}

; Function Attrs: optsize
declare void @IV_setMaxsize(%struct._IV*, i32) #3

; Function Attrs: nounwind optsize uwtable
define i32 @IV_min(%struct._IV* %iv) #0 {
entry:
  %i = alloca i32, align 4
  %cmp = icmp eq %struct._IV* %iv, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %size = getelementptr inbounds %struct._IV* %iv, i64 0, i32 0
  %0 = load i32* %size, align 4, !tbaa !3
  %cmp1 = icmp slt i32 %0, 1
  br i1 %cmp1, label %if.then, label %lor.lhs.false2

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %vec = getelementptr inbounds %struct._IV* %iv, i64 0, i32 3
  %1 = load i32** %vec, align 8, !tbaa !0
  %cmp3 = icmp eq i32* %1, null
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry, %lor.lhs.false2
  %2 = phi i32 [ %0, %lor.lhs.false2 ], [ 0, %entry ], [ %0, %lor.lhs.false ]
  %3 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %vec5 = getelementptr inbounds %struct._IV* %iv, i64 0, i32 3
  %4 = load i32** %vec5, align 8, !tbaa !0
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([49 x i8]* @.str2, i64 0, i64 0), %struct._IV* %iv, i32 %2, i32* %4) #5
  call void @exit(i32 -1) #6
  unreachable

if.end:                                           ; preds = %lor.lhs.false2
  %call8 = call i32 @IVmin(i32 %0, i32* %1, i32* %i) #5
  ret i32 %call8
}

; Function Attrs: optsize
declare i32 @IVmin(i32, i32*, i32*) #3

; Function Attrs: nounwind optsize uwtable
define i32 @IV_max(%struct._IV* %iv) #0 {
entry:
  %i = alloca i32, align 4
  %cmp = icmp eq %struct._IV* %iv, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %size = getelementptr inbounds %struct._IV* %iv, i64 0, i32 0
  %0 = load i32* %size, align 4, !tbaa !3
  %cmp1 = icmp slt i32 %0, 1
  br i1 %cmp1, label %if.then, label %lor.lhs.false2

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %vec = getelementptr inbounds %struct._IV* %iv, i64 0, i32 3
  %1 = load i32** %vec, align 8, !tbaa !0
  %cmp3 = icmp eq i32* %1, null
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry, %lor.lhs.false2
  %2 = phi i32 [ %0, %lor.lhs.false2 ], [ 0, %entry ], [ %0, %lor.lhs.false ]
  %3 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %vec5 = getelementptr inbounds %struct._IV* %iv, i64 0, i32 3
  %4 = load i32** %vec5, align 8, !tbaa !0
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([49 x i8]* @.str3, i64 0, i64 0), %struct._IV* %iv, i32 %2, i32* %4) #5
  call void @exit(i32 -1) #6
  unreachable

if.end:                                           ; preds = %lor.lhs.false2
  %call8 = call i32 @IVmax(i32 %0, i32* %1, i32* %i) #5
  ret i32 %call8
}

; Function Attrs: optsize
declare i32 @IVmax(i32, i32*, i32*) #3

; Function Attrs: nounwind optsize uwtable
define i32 @IV_sum(%struct._IV* %iv) #0 {
entry:
  %cmp = icmp eq %struct._IV* %iv, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %size = getelementptr inbounds %struct._IV* %iv, i64 0, i32 0
  %0 = load i32* %size, align 4, !tbaa !3
  %cmp1 = icmp slt i32 %0, 1
  br i1 %cmp1, label %if.then, label %lor.lhs.false2

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %vec = getelementptr inbounds %struct._IV* %iv, i64 0, i32 3
  %1 = load i32** %vec, align 8, !tbaa !0
  %cmp3 = icmp eq i32* %1, null
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry, %lor.lhs.false2
  %2 = phi i32 [ %0, %lor.lhs.false2 ], [ 0, %entry ], [ %0, %lor.lhs.false ]
  %3 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %vec5 = getelementptr inbounds %struct._IV* %iv, i64 0, i32 3
  %4 = load i32** %vec5, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([49 x i8]* @.str4, i64 0, i64 0), %struct._IV* %iv, i32 %2, i32* %4) #5
  tail call void @exit(i32 -1) #6
  unreachable

if.end:                                           ; preds = %lor.lhs.false2
  %call8 = tail call i32 @IVsum(i32 %0, i32* %1) #5
  ret i32 %call8
}

; Function Attrs: optsize
declare i32 @IVsum(i32, i32*) #3

; Function Attrs: nounwind optsize uwtable
define void @IV_sortUp(%struct._IV* %iv) #0 {
entry:
  %cmp = icmp eq %struct._IV* %iv, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %size = getelementptr inbounds %struct._IV* %iv, i64 0, i32 0
  %0 = load i32* %size, align 4, !tbaa !3
  %cmp1 = icmp slt i32 %0, 1
  br i1 %cmp1, label %if.then, label %lor.lhs.false2

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %vec = getelementptr inbounds %struct._IV* %iv, i64 0, i32 3
  %1 = load i32** %vec, align 8, !tbaa !0
  %cmp3 = icmp eq i32* %1, null
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry, %lor.lhs.false2
  %2 = phi i32 [ %0, %lor.lhs.false2 ], [ 0, %entry ], [ %0, %lor.lhs.false ]
  %3 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %vec5 = getelementptr inbounds %struct._IV* %iv, i64 0, i32 3
  %4 = load i32** %vec5, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([52 x i8]* @.str5, i64 0, i64 0), %struct._IV* %iv, i32 %2, i32* %4) #5
  tail call void @exit(i32 -1) #6
  unreachable

if.end:                                           ; preds = %lor.lhs.false2
  tail call void @IVqsortUp(i32 %0, i32* %1) #5
  ret void
}

; Function Attrs: optsize
declare void @IVqsortUp(i32, i32*) #3

; Function Attrs: nounwind optsize uwtable
define void @IV_sortDown(%struct._IV* %iv) #0 {
entry:
  %cmp = icmp eq %struct._IV* %iv, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %size = getelementptr inbounds %struct._IV* %iv, i64 0, i32 0
  %0 = load i32* %size, align 4, !tbaa !3
  %cmp1 = icmp slt i32 %0, 1
  br i1 %cmp1, label %if.then, label %lor.lhs.false2

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %vec = getelementptr inbounds %struct._IV* %iv, i64 0, i32 3
  %1 = load i32** %vec, align 8, !tbaa !0
  %cmp3 = icmp eq i32* %1, null
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry, %lor.lhs.false2
  %2 = phi i32 [ %0, %lor.lhs.false2 ], [ 0, %entry ], [ %0, %lor.lhs.false ]
  %3 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %vec5 = getelementptr inbounds %struct._IV* %iv, i64 0, i32 3
  %4 = load i32** %vec5, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([54 x i8]* @.str6, i64 0, i64 0), %struct._IV* %iv, i32 %2, i32* %4) #5
  tail call void @exit(i32 -1) #6
  unreachable

if.end:                                           ; preds = %lor.lhs.false2
  tail call void @IVqsortDown(i32 %0, i32* %1) #5
  ret void
}

; Function Attrs: optsize
declare void @IVqsortDown(i32, i32*) #3

; Function Attrs: nounwind optsize uwtable
define void @IV_ramp(%struct._IV* %iv, i32 %base, i32 %incr) #0 {
entry:
  %cmp = icmp eq %struct._IV* %iv, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %size = getelementptr inbounds %struct._IV* %iv, i64 0, i32 0
  %0 = load i32* %size, align 4, !tbaa !3
  %cmp1 = icmp slt i32 %0, 1
  br i1 %cmp1, label %if.then, label %lor.lhs.false2

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %vec = getelementptr inbounds %struct._IV* %iv, i64 0, i32 3
  %1 = load i32** %vec, align 8, !tbaa !0
  %cmp3 = icmp eq i32* %1, null
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry, %lor.lhs.false2
  %2 = phi i32 [ %0, %lor.lhs.false2 ], [ 0, %entry ], [ %0, %lor.lhs.false ]
  %3 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %vec5 = getelementptr inbounds %struct._IV* %iv, i64 0, i32 3
  %4 = load i32** %vec5, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([56 x i8]* @.str7, i64 0, i64 0), %struct._IV* %iv, i32 %base, i32 %incr, i32 %2, i32* %4) #5
  tail call void @exit(i32 -1) #6
  unreachable

if.end:                                           ; preds = %lor.lhs.false2
  tail call void @IVramp(i32 %0, i32* %1, i32 %base, i32 %incr) #5
  ret void
}

; Function Attrs: optsize
declare void @IVramp(i32, i32*, i32, i32) #3

; Function Attrs: nounwind optsize uwtable
define void @IV_shuffle(%struct._IV* %iv, i32 %seed) #0 {
entry:
  %cmp = icmp eq %struct._IV* %iv, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %size = getelementptr inbounds %struct._IV* %iv, i64 0, i32 0
  %0 = load i32* %size, align 4, !tbaa !3
  %cmp1 = icmp slt i32 %0, 1
  br i1 %cmp1, label %if.then, label %lor.lhs.false2

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %vec = getelementptr inbounds %struct._IV* %iv, i64 0, i32 3
  %1 = load i32** %vec, align 8, !tbaa !0
  %cmp3 = icmp eq i32* %1, null
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry, %lor.lhs.false2
  %2 = phi i32 [ %0, %lor.lhs.false2 ], [ 0, %entry ], [ %0, %lor.lhs.false ]
  %3 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %vec5 = getelementptr inbounds %struct._IV* %iv, i64 0, i32 3
  %4 = load i32** %vec5, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([56 x i8]* @.str8, i64 0, i64 0), %struct._IV* %iv, i32 %seed, i32 %2, i32* %4) #5
  tail call void @exit(i32 -1) #6
  unreachable

if.end:                                           ; preds = %lor.lhs.false2
  tail call void @IVshuffle(i32 %0, i32* %1, i32 %seed) #5
  ret void
}

; Function Attrs: optsize
declare void @IVshuffle(i32, i32*, i32) #3

; Function Attrs: nounwind optsize uwtable
define i32 @IV_sizeOf(%struct._IV* %iv) #0 {
entry:
  %cmp = icmp eq %struct._IV* %iv, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([44 x i8]* @.str9, i64 0, i64 0), %struct._IV* null) #5
  tail call void @exit(i32 -1) #6
  unreachable

if.end:                                           ; preds = %entry
  %owned = getelementptr inbounds %struct._IV* %iv, i64 0, i32 2
  %1 = load i32* %owned, align 4, !tbaa !3
  %cmp1 = icmp eq i32 %1, 1
  br i1 %cmp1, label %if.then2, label %if.end5

if.then2:                                         ; preds = %if.end
  %maxsize = getelementptr inbounds %struct._IV* %iv, i64 0, i32 1
  %2 = load i32* %maxsize, align 4, !tbaa !3
  %mul = shl i32 %2, 2
  %add = add i32 %mul, 24
  br label %if.end5

if.end5:                                          ; preds = %if.then2, %if.end
  %nbytes.0 = phi i32 [ %add, %if.then2 ], [ 24, %if.end ]
  ret i32 %nbytes.0
}

; Function Attrs: nounwind optsize uwtable
define void @IV_filterKeep(%struct._IV* %iv, i32* %tags, i32 %keepTag) #0 {
entry:
  %cmp = icmp eq %struct._IV* %iv, null
  %cmp1 = icmp eq i32* %tags, null
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([52 x i8]* @.str10, i64 0, i64 0), %struct._IV* %iv, i32* %tags, i32 %keepTag) #5
  tail call void @exit(i32 -1) #6
  unreachable

if.end:                                           ; preds = %entry
  %size2 = getelementptr inbounds %struct._IV* %iv, i64 0, i32 0
  %1 = load i32* %size2, align 4, !tbaa !3
  %vec3 = getelementptr inbounds %struct._IV* %iv, i64 0, i32 3
  %2 = load i32** %vec3, align 8, !tbaa !0
  %cmp43741 = icmp sgt i32 %1, 0
  br i1 %cmp43741, label %for.body.lr.ph.lr.ph, label %for.end

for.body.lr.ph.lr.ph:                             ; preds = %if.end
  %3 = sext i32 %1 to i64
  br label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %for.body.lr.ph.lr.ph, %if.then8
  %indvars.iv48 = phi i64 [ %3, %for.body.lr.ph.lr.ph ], [ %indvars.iv.next49, %if.then8 ]
  %i.0.ph43 = phi i32 [ 0, %for.body.lr.ph.lr.ph ], [ %i.038, %if.then8 ]
  %j.0.ph42 = phi i32 [ %1, %for.body.lr.ph.lr.ph ], [ %sub, %if.then8 ]
  %4 = sext i32 %i.0.ph43 to i64
  br label %for.body

for.cond:                                         ; preds = %for.body
  %inc = add nsw i32 %i.038, 1
  %5 = trunc i64 %indvars.iv.next to i32
  %6 = trunc i64 %indvars.iv48 to i32
  %cmp4 = icmp slt i32 %5, %6
  br i1 %cmp4, label %for.body, label %for.end

for.body:                                         ; preds = %for.body.lr.ph, %for.cond
  %indvars.iv = phi i64 [ %4, %for.body.lr.ph ], [ %indvars.iv.next, %for.cond ]
  %i.038 = phi i32 [ %i.0.ph43, %for.body.lr.ph ], [ %inc, %for.cond ]
  %arrayidx = getelementptr inbounds i32* %2, i64 %indvars.iv
  %7 = load i32* %arrayidx, align 4, !tbaa !3
  %idxprom5 = sext i32 %7 to i64
  %arrayidx6 = getelementptr inbounds i32* %tags, i64 %idxprom5
  %8 = load i32* %arrayidx6, align 4, !tbaa !3
  %cmp7 = icmp eq i32 %8, %keepTag
  %indvars.iv.next = add i64 %indvars.iv, 1
  br i1 %cmp7, label %for.cond, label %if.then8

if.then8:                                         ; preds = %for.body
  %indvars.iv.next49 = add i64 %indvars.iv48, -1
  %sub = add nsw i32 %j.0.ph42, -1
  %arrayidx10 = getelementptr inbounds i32* %2, i64 %indvars.iv.next49
  %9 = load i32* %arrayidx10, align 4, !tbaa !3
  store i32 %9, i32* %arrayidx, align 4, !tbaa !3
  store i32 %7, i32* %arrayidx10, align 4, !tbaa !3
  %10 = trunc i64 %indvars.iv.next49 to i32
  %cmp437 = icmp slt i32 %i.038, %10
  br i1 %cmp437, label %for.body.lr.ph, label %for.end

for.end:                                          ; preds = %if.end, %if.then8, %for.cond
  %j.0.ph40 = phi i32 [ %j.0.ph42, %for.cond ], [ %1, %if.end ], [ %sub, %if.then8 ]
  store i32 %j.0.ph40, i32* %size2, align 4, !tbaa !3
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @IV_filterPurge(%struct._IV* %iv, i32* %tags, i32 %purgeTag) #0 {
entry:
  %cmp = icmp eq %struct._IV* %iv, null
  %cmp1 = icmp eq i32* %tags, null
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([53 x i8]* @.str11, i64 0, i64 0), %struct._IV* %iv, i32* %tags, i32 %purgeTag) #5
  tail call void @exit(i32 -1) #6
  unreachable

if.end:                                           ; preds = %entry
  %size2 = getelementptr inbounds %struct._IV* %iv, i64 0, i32 0
  %1 = load i32* %size2, align 4, !tbaa !3
  %vec3 = getelementptr inbounds %struct._IV* %iv, i64 0, i32 3
  %2 = load i32** %vec3, align 8, !tbaa !0
  %cmp43741 = icmp sgt i32 %1, 0
  br i1 %cmp43741, label %for.body.lr.ph.lr.ph, label %for.end

for.body.lr.ph.lr.ph:                             ; preds = %if.end
  %3 = sext i32 %1 to i64
  br label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %for.body.lr.ph.lr.ph, %if.then8
  %indvars.iv48 = phi i64 [ %3, %for.body.lr.ph.lr.ph ], [ %indvars.iv.next49, %if.then8 ]
  %i.0.ph43 = phi i32 [ 0, %for.body.lr.ph.lr.ph ], [ %i.038, %if.then8 ]
  %j.0.ph42 = phi i32 [ %1, %for.body.lr.ph.lr.ph ], [ %sub, %if.then8 ]
  %4 = sext i32 %i.0.ph43 to i64
  br label %for.body

for.cond:                                         ; preds = %for.body
  %inc = add nsw i32 %i.038, 1
  %5 = trunc i64 %indvars.iv.next to i32
  %6 = trunc i64 %indvars.iv48 to i32
  %cmp4 = icmp slt i32 %5, %6
  br i1 %cmp4, label %for.body, label %for.end

for.body:                                         ; preds = %for.body.lr.ph, %for.cond
  %indvars.iv = phi i64 [ %4, %for.body.lr.ph ], [ %indvars.iv.next, %for.cond ]
  %i.038 = phi i32 [ %i.0.ph43, %for.body.lr.ph ], [ %inc, %for.cond ]
  %arrayidx = getelementptr inbounds i32* %2, i64 %indvars.iv
  %7 = load i32* %arrayidx, align 4, !tbaa !3
  %idxprom5 = sext i32 %7 to i64
  %arrayidx6 = getelementptr inbounds i32* %tags, i64 %idxprom5
  %8 = load i32* %arrayidx6, align 4, !tbaa !3
  %cmp7 = icmp eq i32 %8, %purgeTag
  %indvars.iv.next = add i64 %indvars.iv, 1
  br i1 %cmp7, label %if.then8, label %for.cond

if.then8:                                         ; preds = %for.body
  %indvars.iv.next49 = add i64 %indvars.iv48, -1
  %sub = add nsw i32 %j.0.ph42, -1
  %arrayidx10 = getelementptr inbounds i32* %2, i64 %indvars.iv.next49
  %9 = load i32* %arrayidx10, align 4, !tbaa !3
  store i32 %9, i32* %arrayidx, align 4, !tbaa !3
  store i32 %7, i32* %arrayidx10, align 4, !tbaa !3
  %10 = trunc i64 %indvars.iv.next49 to i32
  %cmp437 = icmp slt i32 %i.038, %10
  br i1 %cmp437, label %for.body.lr.ph, label %for.end

for.end:                                          ; preds = %if.end, %if.then8, %for.cond
  %j.0.ph40 = phi i32 [ %j.0.ph42, %for.cond ], [ %1, %if.end ], [ %sub, %if.then8 ]
  store i32 %j.0.ph40, i32* %size2, align 4, !tbaa !3
  ret void
}

; Function Attrs: nounwind optsize uwtable
define i32* @IV_first(%struct._IV* %iv) #0 {
entry:
  %cmp = icmp eq %struct._IV* %iv, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([41 x i8]* @.str12, i64 0, i64 0), %struct._IV* null) #5
  tail call void @exit(i32 -1) #6
  unreachable

if.end:                                           ; preds = %entry
  %size = getelementptr inbounds %struct._IV* %iv, i64 0, i32 0
  %1 = load i32* %size, align 4, !tbaa !3
  %cmp1 = icmp eq i32 %1, 0
  br i1 %cmp1, label %if.end3, label %if.else

if.else:                                          ; preds = %if.end
  %vec = getelementptr inbounds %struct._IV* %iv, i64 0, i32 3
  %2 = load i32** %vec, align 8, !tbaa !0
  br label %if.end3

if.end3:                                          ; preds = %if.end, %if.else
  %pi.0 = phi i32* [ %2, %if.else ], [ null, %if.end ]
  ret i32* %pi.0
}

; Function Attrs: nounwind optsize uwtable
define i32* @IV_next(%struct._IV* %iv, i32* %pi) #0 {
entry:
  %cmp = icmp eq %struct._IV* %iv, null
  %cmp1 = icmp eq i32* %pi, null
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([43 x i8]* @.str13, i64 0, i64 0), %struct._IV* %iv, i32* %pi) #5
  %1 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call2 = tail call i32 @fflush(%struct._IO_FILE* %1) #5
  tail call void @exit(i32 -1) #6
  unreachable

if.end:                                           ; preds = %entry
  %vec = getelementptr inbounds %struct._IV* %iv, i64 0, i32 3
  %2 = load i32** %vec, align 8, !tbaa !0
  %sub.ptr.lhs.cast = ptrtoint i32* %pi to i64
  %sub.ptr.rhs.cast = ptrtoint i32* %2 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div32 = lshr exact i64 %sub.ptr.sub, 2
  %conv = trunc i64 %sub.ptr.div32 to i32
  %cmp3 = icmp sgt i32 %conv, -1
  %size9.phi.trans.insert = getelementptr inbounds %struct._IV* %iv, i64 0, i32 0
  %.pre = load i32* %size9.phi.trans.insert, align 4, !tbaa !3
  %cmp6 = icmp slt i32 %conv, %.pre
  %or.cond33 = and i1 %cmp3, %cmp6
  br i1 %or.cond33, label %if.else, label %if.then8

if.then8:                                         ; preds = %if.end
  %3 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call10 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([64 x i8]* @.str14, i64 0, i64 0), %struct._IV* %iv, i32* %pi, i32 %conv, i32 %.pre) #5
  %4 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call11 = tail call i32 @fflush(%struct._IO_FILE* %4) #5
  tail call void @exit(i32 -1) #6
  unreachable

if.else:                                          ; preds = %if.end
  %sub = add nsw i32 %.pre, -1
  %cmp13 = icmp eq i32 %conv, %sub
  %incdec.ptr = getelementptr inbounds i32* %pi, i64 1
  %pi.addr.0 = select i1 %cmp13, i32* null, i32* %incdec.ptr
  ret i32* %pi.addr.0
}

; Function Attrs: nounwind optsize
declare i32 @fflush(%struct._IO_FILE* nocapture) #1

; Function Attrs: nounwind optsize uwtable
define void @IV_fill(%struct._IV* %iv, i32 %value) #0 {
entry:
  %cmp = icmp eq %struct._IV* %iv, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([44 x i8]* @.str15, i64 0, i64 0), %struct._IV* null, i32 %value) #5
  tail call void @exit(i32 -1) #6
  unreachable

if.end:                                           ; preds = %entry
  %size = getelementptr inbounds %struct._IV* %iv, i64 0, i32 0
  %1 = load i32* %size, align 4, !tbaa !3
  %cmp1 = icmp sgt i32 %1, 0
  br i1 %cmp1, label %if.then2, label %if.end4

if.then2:                                         ; preds = %if.end
  %vec = getelementptr inbounds %struct._IV* %iv, i64 0, i32 3
  %2 = load i32** %vec, align 8, !tbaa !0
  tail call void @IVfill(i32 %1, i32* %2, i32 %value) #5
  br label %if.end4

if.end4:                                          ; preds = %if.then2, %if.end
  ret void
}

; Function Attrs: optsize
declare void @IVfill(i32, i32*, i32) #3

; Function Attrs: nounwind optsize uwtable
define void @IV_copy(%struct._IV* %iv1, %struct._IV* %iv2) #0 {
entry:
  %cmp = icmp eq %struct._IV* %iv1, null
  %cmp1 = icmp eq %struct._IV* %iv2, null
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([44 x i8]* @.str16, i64 0, i64 0), %struct._IV* %iv1, %struct._IV* %iv2) #5
  tail call void @exit(i32 -1) #6
  unreachable

if.end:                                           ; preds = %entry
  %size2 = getelementptr inbounds %struct._IV* %iv1, i64 0, i32 0
  %1 = load i32* %size2, align 4, !tbaa !3
  %size3 = getelementptr inbounds %struct._IV* %iv2, i64 0, i32 0
  %2 = load i32* %size3, align 4, !tbaa !3
  %cmp4 = icmp sgt i32 %1, %2
  %. = select i1 %cmp4, i32 %2, i32 %1
  %vec = getelementptr inbounds %struct._IV* %iv1, i64 0, i32 3
  %3 = load i32** %vec, align 8, !tbaa !0
  %vec8 = getelementptr inbounds %struct._IV* %iv2, i64 0, i32 3
  %4 = load i32** %vec8, align 8, !tbaa !0
  %cmp923 = icmp sgt i32 %., 0
  br i1 %cmp923, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %if.end
  %5 = xor i32 %2, -1
  %6 = xor i32 %1, -1
  %7 = icmp sgt i32 %5, %6
  %smax = select i1 %7, i32 %5, i32 %6
  %8 = xor i32 %smax, -1
  br label %for.body

for.body:                                         ; preds = %for.body, %for.body.lr.ph
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.body ]
  %arrayidx = getelementptr inbounds i32* %4, i64 %indvars.iv
  %9 = load i32* %arrayidx, align 4, !tbaa !3
  %arrayidx11 = getelementptr inbounds i32* %3, i64 %indvars.iv
  store i32 %9, i32* %arrayidx11, align 4, !tbaa !3
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %8
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %if.end
  ret void
}

; Function Attrs: nounwind optsize uwtable
define i32 @IV_increment(%struct._IV* %iv, i32 %loc) #0 {
entry:
  %cmp = icmp eq %struct._IV* %iv, null
  %cmp1 = icmp slt i32 %loc, 0
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %if.then, label %lor.lhs.false2

lor.lhs.false2:                                   ; preds = %entry
  %size = getelementptr inbounds %struct._IV* %iv, i64 0, i32 0
  %0 = load i32* %size, align 4, !tbaa !3
  %cmp3 = icmp sgt i32 %0, %loc
  br i1 %cmp3, label %if.end8, label %if.then

if.then:                                          ; preds = %lor.lhs.false2, %entry
  %1 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([49 x i8]* @.str17, i64 0, i64 0), %struct._IV* %iv, i32 %loc) #5
  br i1 %cmp, label %if.end, label %if.then5

if.then5:                                         ; preds = %if.then
  %2 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %size6 = getelementptr inbounds %struct._IV* %iv, i64 0, i32 0
  %3 = load i32* %size6, align 4, !tbaa !3
  %call7 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([22 x i8]* @.str18, i64 0, i64 0), i32 %loc, i32 %3) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %if.then5
  tail call void @exit(i32 -1) #6
  unreachable

if.end8:                                          ; preds = %lor.lhs.false2
  %idxprom = sext i32 %loc to i64
  %vec = getelementptr inbounds %struct._IV* %iv, i64 0, i32 3
  %4 = load i32** %vec, align 8, !tbaa !0
  %arrayidx = getelementptr inbounds i32* %4, i64 %idxprom
  %5 = load i32* %arrayidx, align 4, !tbaa !3
  %inc = add nsw i32 %5, 1
  store i32 %inc, i32* %arrayidx, align 4, !tbaa !3
  ret i32 %inc
}

; Function Attrs: nounwind optsize uwtable
define i32 @IV_decrement(%struct._IV* %iv, i32 %loc) #0 {
entry:
  %cmp = icmp eq %struct._IV* %iv, null
  %cmp1 = icmp slt i32 %loc, 0
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %if.then, label %lor.lhs.false2

lor.lhs.false2:                                   ; preds = %entry
  %size = getelementptr inbounds %struct._IV* %iv, i64 0, i32 0
  %0 = load i32* %size, align 4, !tbaa !3
  %cmp3 = icmp sgt i32 %0, %loc
  br i1 %cmp3, label %if.end8, label %if.then

if.then:                                          ; preds = %lor.lhs.false2, %entry
  %1 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([49 x i8]* @.str19, i64 0, i64 0), %struct._IV* %iv, i32 %loc) #5
  br i1 %cmp, label %if.end, label %if.then5

if.then5:                                         ; preds = %if.then
  %2 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %size6 = getelementptr inbounds %struct._IV* %iv, i64 0, i32 0
  %3 = load i32* %size6, align 4, !tbaa !3
  %call7 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([22 x i8]* @.str18, i64 0, i64 0), i32 %loc, i32 %3) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %if.then5
  tail call void @exit(i32 -1) #6
  unreachable

if.end8:                                          ; preds = %lor.lhs.false2
  %idxprom = sext i32 %loc to i64
  %vec = getelementptr inbounds %struct._IV* %iv, i64 0, i32 3
  %4 = load i32** %vec, align 8, !tbaa !0
  %arrayidx = getelementptr inbounds i32* %4, i64 %idxprom
  %5 = load i32* %arrayidx, align 4, !tbaa !3
  %dec = add nsw i32 %5, -1
  store i32 %dec, i32* %arrayidx, align 4, !tbaa !3
  ret i32 %dec
}

; Function Attrs: nounwind optsize uwtable
define i32 @IV_findValue(%struct._IV* %iv, i32 %value) #0 {
entry:
  %cmp = icmp eq %struct._IV* %iv, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([49 x i8]* @.str20, i64 0, i64 0), %struct._IV* null, i32 %value) #5
  tail call void @exit(i32 -1) #6
  unreachable

if.end:                                           ; preds = %entry
  %size = getelementptr inbounds %struct._IV* %iv, i64 0, i32 0
  %1 = load i32* %size, align 4, !tbaa !3
  %cmp1 = icmp slt i32 %1, 1
  br i1 %cmp1, label %return, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %vec2 = getelementptr inbounds %struct._IV* %iv, i64 0, i32 3
  %2 = load i32** %vec2, align 8, !tbaa !0
  %cmp3 = icmp eq i32* %2, null
  br i1 %cmp3, label %return, label %for.body

for.cond:                                         ; preds = %for.body
  %inc = add nsw i32 %ii.017, 1
  %3 = trunc i64 %indvars.iv.next to i32
  %cmp6 = icmp slt i32 %3, %1
  br i1 %cmp6, label %for.body, label %return

for.body:                                         ; preds = %lor.lhs.false, %for.cond
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.cond ], [ 0, %lor.lhs.false ]
  %ii.017 = phi i32 [ %inc, %for.cond ], [ 0, %lor.lhs.false ]
  %arrayidx = getelementptr inbounds i32* %2, i64 %indvars.iv
  %4 = load i32* %arrayidx, align 4, !tbaa !3
  %cmp7 = icmp eq i32 %4, %value
  %indvars.iv.next = add i64 %indvars.iv, 1
  br i1 %cmp7, label %return, label %for.cond

return:                                           ; preds = %for.body, %for.cond, %if.end, %lor.lhs.false
  %retval.0 = phi i32 [ -1, %lor.lhs.false ], [ -1, %if.end ], [ %ii.017, %for.body ], [ -1, %for.cond ]
  ret i32 %retval.0
}

; Function Attrs: nounwind optsize uwtable
define i32 @IV_findValueAscending(%struct._IV* %iv, i32 %value) #0 {
entry:
  %cmp = icmp eq %struct._IV* %iv, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([58 x i8]* @.str21, i64 0, i64 0), %struct._IV* null, i32 %value) #5
  tail call void @exit(i32 -1) #6
  unreachable

if.end:                                           ; preds = %entry
  %size = getelementptr inbounds %struct._IV* %iv, i64 0, i32 0
  %1 = load i32* %size, align 4, !tbaa !3
  %cmp1 = icmp slt i32 %1, 1
  br i1 %cmp1, label %return, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %vec2 = getelementptr inbounds %struct._IV* %iv, i64 0, i32 3
  %2 = load i32** %vec2, align 8, !tbaa !0
  %cmp3 = icmp eq i32* %2, null
  br i1 %cmp3, label %return, label %if.end5

if.end5:                                          ; preds = %lor.lhs.false
  %sub = add nsw i32 %1, -1
  %3 = load i32* %2, align 4, !tbaa !3
  %cmp6 = icmp eq i32 %3, %value
  br i1 %cmp6, label %return, label %if.else

if.else:                                          ; preds = %if.end5
  %idxprom8 = sext i32 %sub to i64
  %arrayidx9 = getelementptr inbounds i32* %2, i64 %idxprom8
  %4 = load i32* %arrayidx9, align 4, !tbaa !3
  %cmp10 = icmp eq i32 %4, %value
  br i1 %cmp10, label %return, label %while.cond.preheader

while.cond.preheader:                             ; preds = %if.else
  %sub1347 = add nsw i32 %1, -2
  %cmp1448 = icmp sgt i32 %sub1347, 0
  br i1 %cmp1448, label %while.body, label %return

while.body:                                       ; preds = %while.cond.preheader, %if.else19
  %right.050 = phi i32 [ %right.0.div, %if.else19 ], [ %sub, %while.cond.preheader ]
  %left.049 = phi i32 [ %div.left.0, %if.else19 ], [ 0, %while.cond.preheader ]
  %add = add nsw i32 %right.050, %left.049
  %div = sdiv i32 %add, 2
  %idxprom15 = sext i32 %div to i64
  %arrayidx16 = getelementptr inbounds i32* %2, i64 %idxprom15
  %5 = load i32* %arrayidx16, align 4, !tbaa !3
  %cmp17 = icmp eq i32 %5, %value
  br i1 %cmp17, label %return, label %if.else19

if.else19:                                        ; preds = %while.body
  %cmp22 = icmp slt i32 %5, %value
  %div.left.0 = select i1 %cmp22, i32 %div, i32 %left.049
  %right.0.div = select i1 %cmp22, i32 %right.050, i32 %div
  %sub13 = add nsw i32 %right.0.div, -1
  %cmp14 = icmp slt i32 %div.left.0, %sub13
  br i1 %cmp14, label %while.body, label %return

return:                                           ; preds = %while.cond.preheader, %while.body, %if.else19, %if.else, %if.end5, %if.end, %lor.lhs.false
  %retval.0 = phi i32 [ -1, %lor.lhs.false ], [ -1, %if.end ], [ 0, %if.end5 ], [ %sub, %if.else ], [ -1, %while.cond.preheader ], [ %div, %while.body ], [ -1, %if.else19 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind optsize uwtable
define i32 @IV_findValueDescending(%struct._IV* %iv, i32 %value) #0 {
entry:
  %cmp = icmp eq %struct._IV* %iv, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([59 x i8]* @.str22, i64 0, i64 0), %struct._IV* null, i32 %value) #5
  tail call void @exit(i32 -1) #6
  unreachable

if.end:                                           ; preds = %entry
  %size = getelementptr inbounds %struct._IV* %iv, i64 0, i32 0
  %1 = load i32* %size, align 4, !tbaa !3
  %cmp1 = icmp slt i32 %1, 1
  br i1 %cmp1, label %return, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %vec2 = getelementptr inbounds %struct._IV* %iv, i64 0, i32 3
  %2 = load i32** %vec2, align 8, !tbaa !0
  %cmp3 = icmp eq i32* %2, null
  br i1 %cmp3, label %return, label %if.end5

if.end5:                                          ; preds = %lor.lhs.false
  %sub = add nsw i32 %1, -1
  %3 = load i32* %2, align 4, !tbaa !3
  %cmp6 = icmp eq i32 %3, %value
  br i1 %cmp6, label %return, label %if.else

if.else:                                          ; preds = %if.end5
  %idxprom8 = sext i32 %sub to i64
  %arrayidx9 = getelementptr inbounds i32* %2, i64 %idxprom8
  %4 = load i32* %arrayidx9, align 4, !tbaa !3
  %cmp10 = icmp eq i32 %4, %value
  br i1 %cmp10, label %return, label %while.cond.preheader

while.cond.preheader:                             ; preds = %if.else
  %sub1347 = add nsw i32 %1, -2
  %cmp1448 = icmp sgt i32 %sub1347, 0
  br i1 %cmp1448, label %while.body, label %return

while.body:                                       ; preds = %while.cond.preheader, %if.else19
  %right.050 = phi i32 [ %right.0.div, %if.else19 ], [ %sub, %while.cond.preheader ]
  %left.049 = phi i32 [ %div.left.0, %if.else19 ], [ 0, %while.cond.preheader ]
  %add = add nsw i32 %right.050, %left.049
  %div = sdiv i32 %add, 2
  %idxprom15 = sext i32 %div to i64
  %arrayidx16 = getelementptr inbounds i32* %2, i64 %idxprom15
  %5 = load i32* %arrayidx16, align 4, !tbaa !3
  %cmp17 = icmp eq i32 %5, %value
  br i1 %cmp17, label %return, label %if.else19

if.else19:                                        ; preds = %while.body
  %cmp22 = icmp sgt i32 %5, %value
  %div.left.0 = select i1 %cmp22, i32 %div, i32 %left.049
  %right.0.div = select i1 %cmp22, i32 %right.050, i32 %div
  %sub13 = add nsw i32 %right.0.div, -1
  %cmp14 = icmp slt i32 %div.left.0, %sub13
  br i1 %cmp14, label %while.body, label %return

return:                                           ; preds = %while.cond.preheader, %while.body, %if.else19, %if.else, %if.end5, %if.end, %lor.lhs.false
  %retval.0 = phi i32 [ -1, %lor.lhs.false ], [ -1, %if.end ], [ 0, %if.end5 ], [ %sub, %if.else ], [ -1, %while.cond.preheader ], [ %div, %while.body ], [ -1, %if.else19 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind optsize uwtable
define %struct._IV* @IV_inverseMap(%struct._IV* %listIV) #0 {
entry:
  %n = alloca i32, align 4
  %list = alloca i32*, align 8
  %cmp = icmp eq %struct._IV* %listIV, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %1 = call i64 @fwrite(i8* getelementptr inbounds ([45 x i8]* @.str23, i64 0, i64 0), i64 44, i64 1, %struct._IO_FILE* %0)
  call void @exit(i32 -1) #6
  unreachable

if.end:                                           ; preds = %entry
  call void @IV_sizeAndEntries(%struct._IV* %listIV, i32* %n, i32** %list) #5
  %2 = load i32* %n, align 4, !tbaa !3
  %cmp1 = icmp slt i32 %2, 1
  %3 = load i32** %list, align 8, !tbaa !0
  br i1 %cmp1, label %land.lhs.true, label %for.body

land.lhs.true:                                    ; preds = %if.end
  %cmp2 = icmp eq i32* %3, null
  br i1 %cmp2, label %if.then3, label %for.end

if.then3:                                         ; preds = %land.lhs.true
  %4 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call4 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([56 x i8]* @.str24, i64 0, i64 0), i32 %2, i32* null) #5
  call void @exit(i32 -1) #6
  unreachable

for.body:                                         ; preds = %if.end, %if.end12
  %indvars.iv72 = phi i64 [ %indvars.iv.next73, %if.end12 ], [ 0, %if.end ]
  %ii.067 = phi i32 [ %inc, %if.end12 ], [ 0, %if.end ]
  %maxval.066 = phi i32 [ %.maxval.0, %if.end12 ], [ -1, %if.end ]
  %arrayidx = getelementptr inbounds i32* %3, i64 %indvars.iv72
  %5 = load i32* %arrayidx, align 4, !tbaa !3
  %cmp7 = icmp slt i32 %5, 0
  br i1 %cmp7, label %if.then8, label %if.end12

if.then8:                                         ; preds = %for.body
  %6 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call11 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %6, i8* getelementptr inbounds ([67 x i8]* @.str25, i64 0, i64 0), i32 %ii.067, i32 %5) #5
  call void @exit(i32 -1) #6
  unreachable

if.end12:                                         ; preds = %for.body
  %cmp15 = icmp slt i32 %maxval.066, %5
  %.maxval.0 = select i1 %cmp15, i32 %5, i32 %maxval.066
  %indvars.iv.next73 = add i64 %indvars.iv72, 1
  %inc = add nsw i32 %ii.067, 1
  %7 = trunc i64 %indvars.iv.next73 to i32
  %cmp6 = icmp slt i32 %7, %2
  br i1 %cmp6, label %for.body, label %for.cond.for.end_crit_edge

for.cond.for.end_crit_edge:                       ; preds = %if.end12
  %phitmp = add i32 %.maxval.0, 1
  br label %for.end

for.end:                                          ; preds = %land.lhs.true, %for.cond.for.end_crit_edge
  %maxval.0.lcssa = phi i32 [ %phitmp, %for.cond.for.end_crit_edge ], [ 0, %land.lhs.true ]
  %call20 = call %struct._IV* @IV_new() #5
  call void @IV_init(%struct._IV* %call20, i32 %maxval.0.lcssa, i32* null) #5
  call void @IV_fill(%struct._IV* %call20, i32 -1) #7
  %call21 = call i32* @IV_entries(%struct._IV* %call20) #5
  %8 = load i32* %n, align 4, !tbaa !3
  %cmp2360 = icmp sgt i32 %8, 0
  br i1 %cmp2360, label %for.body24.lr.ph, label %for.end41

for.body24.lr.ph:                                 ; preds = %for.end
  %9 = load i32** %list, align 8, !tbaa !0
  br label %for.body24

for.body24:                                       ; preds = %for.body24.lr.ph, %if.end34
  %indvars.iv = phi i64 [ 0, %for.body24.lr.ph ], [ %indvars.iv.next, %if.end34 ]
  %arrayidx26 = getelementptr inbounds i32* %9, i64 %indvars.iv
  %10 = load i32* %arrayidx26, align 4, !tbaa !3
  %idxprom27 = sext i32 %10 to i64
  %arrayidx28 = getelementptr inbounds i32* %call21, i64 %idxprom27
  %11 = load i32* %arrayidx28, align 4, !tbaa !3
  %cmp29 = icmp eq i32 %11, -1
  br i1 %cmp29, label %if.end34, label %if.then30

if.then30:                                        ; preds = %for.body24
  %12 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call33 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %12, i8* getelementptr inbounds ([58 x i8]* @.str26, i64 0, i64 0), i32 %10) #5
  call void @exit(i32 -1) #6
  unreachable

if.end34:                                         ; preds = %for.body24
  %13 = trunc i64 %indvars.iv to i32
  store i32 %13, i32* %arrayidx28, align 4, !tbaa !3
  %indvars.iv.next = add i64 %indvars.iv, 1
  %14 = load i32* %n, align 4, !tbaa !3
  %15 = trunc i64 %indvars.iv.next to i32
  %cmp23 = icmp slt i32 %15, %14
  br i1 %cmp23, label %for.body24, label %for.end41

for.end41:                                        ; preds = %if.end34, %for.end
  ret %struct._IV* %call20
}

; Function Attrs: optsize
declare void @IV_sizeAndEntries(%struct._IV*, i32*, i32**) #3

; Function Attrs: optsize
declare %struct._IV* @IV_new() #3

; Function Attrs: optsize
declare void @IV_init(%struct._IV*, i32, i32*) #3

; Function Attrs: optsize
declare i32* @IV_entries(%struct._IV*) #3

; Function Attrs: nounwind optsize uwtable
define %struct._IV* @IV_targetEntries(%struct._IV* %listIV, i32 %target) #0 {
entry:
  %n = alloca i32, align 4
  %list = alloca i32*, align 8
  %cmp = icmp eq %struct._IV* %listIV, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %1 = call i64 @fwrite(i8* getelementptr inbounds ([48 x i8]* @.str27, i64 0, i64 0), i64 47, i64 1, %struct._IO_FILE* %0)
  call void @exit(i32 -1) #6
  unreachable

if.end:                                           ; preds = %entry
  call void @IV_sizeAndEntries(%struct._IV* %listIV, i32* %n, i32** %list) #5
  %2 = load i32* %n, align 4, !tbaa !3
  %cmp1 = icmp slt i32 %2, 1
  %3 = load i32** %list, align 8, !tbaa !0
  br i1 %cmp1, label %land.lhs.true, label %for.body

for.end.thread:                                   ; preds = %land.lhs.true
  %call1152 = call %struct._IV* @IV_new() #5
  br label %if.end29

land.lhs.true:                                    ; preds = %if.end
  %cmp2 = icmp eq i32* %3, null
  br i1 %cmp2, label %if.then3, label %for.end.thread

if.then3:                                         ; preds = %land.lhs.true
  %4 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call4 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([59 x i8]* @.str28, i64 0, i64 0), i32 %2, i32* null) #5
  call void @exit(i32 -1) #6
  unreachable

for.body:                                         ; preds = %if.end, %for.body
  %indvars.iv49 = phi i64 [ %indvars.iv.next50, %for.body ], [ 0, %if.end ]
  %count.048 = phi i32 [ %inc.count.0, %for.body ], [ 0, %if.end ]
  %arrayidx = getelementptr inbounds i32* %3, i64 %indvars.iv49
  %5 = load i32* %arrayidx, align 4, !tbaa !3
  %cmp7 = icmp eq i32 %5, %target
  %inc = zext i1 %cmp7 to i32
  %inc.count.0 = add nsw i32 %inc, %count.048
  %indvars.iv.next50 = add i64 %indvars.iv49, 1
  %6 = trunc i64 %indvars.iv.next50 to i32
  %cmp6 = icmp slt i32 %6, %2
  br i1 %cmp6, label %for.body, label %for.end

for.end:                                          ; preds = %for.body
  %call11 = call %struct._IV* @IV_new() #5
  %cmp12 = icmp sgt i32 %inc.count.0, 0
  br i1 %cmp12, label %if.then13, label %if.end29

if.then13:                                        ; preds = %for.end
  call void @IV_init(%struct._IV* %call11, i32 %inc.count.0, i32* null) #5
  %call14 = call i32* @IV_entries(%struct._IV* %call11) #5
  %7 = load i32* %n, align 4, !tbaa !3
  %cmp1643 = icmp sgt i32 %7, 0
  br i1 %cmp1643, label %for.body17.lr.ph, label %if.end29

for.body17.lr.ph:                                 ; preds = %if.then13
  %8 = load i32** %list, align 8, !tbaa !0
  br label %for.body17

for.body17:                                       ; preds = %for.body17.lr.ph, %for.inc26
  %9 = phi i32 [ %7, %for.body17.lr.ph ], [ %12, %for.inc26 ]
  %indvars.iv = phi i64 [ 0, %for.body17.lr.ph ], [ %indvars.iv.next, %for.inc26 ]
  %count.245 = phi i32 [ 0, %for.body17.lr.ph ], [ %count.3, %for.inc26 ]
  %arrayidx19 = getelementptr inbounds i32* %8, i64 %indvars.iv
  %10 = load i32* %arrayidx19, align 4, !tbaa !3
  %cmp20 = icmp eq i32 %10, %target
  br i1 %cmp20, label %if.then21, label %for.inc26

if.then21:                                        ; preds = %for.body17
  %inc22 = add nsw i32 %count.245, 1
  %idxprom23 = sext i32 %count.245 to i64
  %arrayidx24 = getelementptr inbounds i32* %call14, i64 %idxprom23
  %11 = trunc i64 %indvars.iv to i32
  store i32 %11, i32* %arrayidx24, align 4, !tbaa !3
  %.pre = load i32* %n, align 4, !tbaa !3
  br label %for.inc26

for.inc26:                                        ; preds = %for.body17, %if.then21
  %12 = phi i32 [ %.pre, %if.then21 ], [ %9, %for.body17 ]
  %count.3 = phi i32 [ %inc22, %if.then21 ], [ %count.245, %for.body17 ]
  %indvars.iv.next = add i64 %indvars.iv, 1
  %13 = trunc i64 %indvars.iv.next to i32
  %cmp16 = icmp slt i32 %13, %12
  br i1 %cmp16, label %for.body17, label %if.end29

if.end29:                                         ; preds = %if.then13, %for.inc26, %for.end.thread, %for.end
  %call1154 = phi %struct._IV* [ %call1152, %for.end.thread ], [ %call11, %for.end ], [ %call11, %for.inc26 ], [ %call11, %if.then13 ]
  ret %struct._IV* %call1154
}

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #4

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind optsize }
attributes #6 = { noreturn nounwind optsize }
attributes #7 = { optsize }

!0 = metadata !{metadata !"any pointer", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"int", metadata !1}
