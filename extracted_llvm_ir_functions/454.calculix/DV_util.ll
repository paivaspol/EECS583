; ModuleID = '../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DV/src/DV_util.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct._DV = type { i32, i32, i32, double* }

@stderr = external global %struct._IO_FILE*
@.str = private unnamed_addr constant [49 x i8] c"\0A fatal error in DV_shiftBase(%p,%d)\0A bad input\0A\00", align 1
@.str1 = private unnamed_addr constant [44 x i8] c"\0A fatal error in DV_push(%p,%f)\0A bad input\0A\00", align 1
@.str2 = private unnamed_addr constant [49 x i8] c"\0A fatal error in DV_min(%p), size = %d, vec = %p\00", align 1
@.str3 = private unnamed_addr constant [49 x i8] c"\0A fatal error in DV_max(%p), size = %d, vec = %p\00", align 1
@.str4 = private unnamed_addr constant [49 x i8] c"\0A fatal error in DV_sum(%p), size = %d, vec = %p\00", align 1
@.str5 = private unnamed_addr constant [52 x i8] c"\0A fatal error in DV_sortUp(%p), size = %d, vec = %p\00", align 1
@.str6 = private unnamed_addr constant [54 x i8] c"\0A fatal error in DV_sortDown(%p), size = %d, vec = %p\00", align 1
@.str7 = private unnamed_addr constant [56 x i8] c"\0A fatal error in DV_ramp(%p,%f,%f), size = %d, vec = %p\00", align 1
@.str8 = private unnamed_addr constant [56 x i8] c"\0A fatal error in DV_shuffle(%p,%d), size = %d, vec = %p\00", align 1
@.str9 = private unnamed_addr constant [44 x i8] c"\0A fatal error in DV_sizeOf(%p)\0A bad input \0A\00", align 1
@.str10 = private unnamed_addr constant [41 x i8] c"\0A fatal error in DV_first(%p)\0A bad input\00", align 1
@.str11 = private unnamed_addr constant [43 x i8] c"\0A fatal error in DV_next(%p,%p)\0A bad input\00", align 1
@.str12 = private unnamed_addr constant [64 x i8] c"\0A fatal error in DV_next(%p,%p)\0A offset = %d, must be in [0,%d)\00", align 1
@.str13 = private unnamed_addr constant [44 x i8] c"\0A fatal error in DV_fill(%p,%f)\0A bad input\0A\00", align 1
@.str14 = private unnamed_addr constant [41 x i8] c"\0A fatal error in DV_zero(%p)\0A bad input\0A\00", align 1
@.str15 = private unnamed_addr constant [44 x i8] c"\0A fatal error in DV_copy(%p,%p)\0A bad input\0A\00", align 1

; Function Attrs: nounwind optsize uwtable
define void @DV_shiftBase(%struct._DV* %dv, i32 %offset) #0 {
entry:
  %cmp = icmp eq %struct._DV* %dv, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([49 x i8]* @.str, i64 0, i64 0), %struct._DV* null, i32 %offset) #4
  tail call void @exit(i32 -1) #5
  unreachable

if.end:                                           ; preds = %entry
  %vec = getelementptr inbounds %struct._DV* %dv, i64 0, i32 3
  %1 = load double** %vec, align 8, !tbaa !0
  %idx.ext = sext i32 %offset to i64
  %add.ptr = getelementptr inbounds double* %1, i64 %idx.ext
  store double* %add.ptr, double** %vec, align 8, !tbaa !0
  %maxsize = getelementptr inbounds %struct._DV* %dv, i64 0, i32 1
  %2 = load i32* %maxsize, align 4, !tbaa !3
  %sub = sub nsw i32 %2, %offset
  store i32 %sub, i32* %maxsize, align 4, !tbaa !3
  %size = getelementptr inbounds %struct._DV* %dv, i64 0, i32 0
  %3 = load i32* %size, align 4, !tbaa !3
  %sub1 = sub nsw i32 %3, %offset
  store i32 %sub1, i32* %size, align 4, !tbaa !3
  ret void
}

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #1

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32) #2

; Function Attrs: nounwind optsize uwtable
define void @DV_push(%struct._DV* %dv, double %val) #0 {
entry:
  %cmp = icmp eq %struct._DV* %dv, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([44 x i8]* @.str1, i64 0, i64 0), %struct._DV* null, double %val) #4
  tail call void @exit(i32 -1) #5
  unreachable

if.end:                                           ; preds = %entry
  %size = getelementptr inbounds %struct._DV* %dv, i64 0, i32 0
  %1 = load i32* %size, align 4, !tbaa !3
  %maxsize = getelementptr inbounds %struct._DV* %dv, i64 0, i32 1
  %2 = load i32* %maxsize, align 4, !tbaa !3
  %cmp1 = icmp eq i32 %1, %2
  br i1 %cmp1, label %if.then2, label %if.end8

if.then2:                                         ; preds = %if.end
  %cmp4 = icmp sgt i32 %1, 0
  br i1 %cmp4, label %if.then5, label %if.else

if.then5:                                         ; preds = %if.then2
  %mul = shl nsw i32 %1, 1
  tail call void @DV_setMaxsize(%struct._DV* %dv, i32 %mul) #4
  br label %if.end8

if.else:                                          ; preds = %if.then2
  tail call void @DV_setMaxsize(%struct._DV* %dv, i32 10) #4
  br label %if.end8

if.end8:                                          ; preds = %if.then5, %if.else, %if.end
  %3 = load i32* %size, align 4, !tbaa !3
  %inc = add nsw i32 %3, 1
  store i32 %inc, i32* %size, align 4, !tbaa !3
  %idxprom = sext i32 %3 to i64
  %vec = getelementptr inbounds %struct._DV* %dv, i64 0, i32 3
  %4 = load double** %vec, align 8, !tbaa !0
  %arrayidx = getelementptr inbounds double* %4, i64 %idxprom
  store double %val, double* %arrayidx, align 8, !tbaa !4
  ret void
}

; Function Attrs: optsize
declare void @DV_setMaxsize(%struct._DV*, i32) #3

; Function Attrs: nounwind optsize uwtable
define double @DV_min(%struct._DV* %dv) #0 {
entry:
  %i = alloca i32, align 4
  %cmp = icmp eq %struct._DV* %dv, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %size = getelementptr inbounds %struct._DV* %dv, i64 0, i32 0
  %0 = load i32* %size, align 4, !tbaa !3
  %cmp1 = icmp slt i32 %0, 1
  br i1 %cmp1, label %if.then, label %lor.lhs.false2

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %vec = getelementptr inbounds %struct._DV* %dv, i64 0, i32 3
  %1 = load double** %vec, align 8, !tbaa !0
  %cmp3 = icmp eq double* %1, null
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry, %lor.lhs.false2
  %2 = phi i32 [ %0, %lor.lhs.false2 ], [ 0, %entry ], [ %0, %lor.lhs.false ]
  %3 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %vec5 = getelementptr inbounds %struct._DV* %dv, i64 0, i32 3
  %4 = load double** %vec5, align 8, !tbaa !0
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([49 x i8]* @.str2, i64 0, i64 0), %struct._DV* %dv, i32 %2, double* %4) #4
  call void @exit(i32 -1) #5
  unreachable

if.end:                                           ; preds = %lor.lhs.false2
  %call8 = call double @DVmin(i32 %0, double* %1, i32* %i) #4
  ret double %call8
}

; Function Attrs: optsize
declare double @DVmin(i32, double*, i32*) #3

; Function Attrs: nounwind optsize uwtable
define double @DV_max(%struct._DV* %dv) #0 {
entry:
  %i = alloca i32, align 4
  %cmp = icmp eq %struct._DV* %dv, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %size = getelementptr inbounds %struct._DV* %dv, i64 0, i32 0
  %0 = load i32* %size, align 4, !tbaa !3
  %cmp1 = icmp slt i32 %0, 1
  br i1 %cmp1, label %if.then, label %lor.lhs.false2

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %vec = getelementptr inbounds %struct._DV* %dv, i64 0, i32 3
  %1 = load double** %vec, align 8, !tbaa !0
  %cmp3 = icmp eq double* %1, null
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry, %lor.lhs.false2
  %2 = phi i32 [ %0, %lor.lhs.false2 ], [ 0, %entry ], [ %0, %lor.lhs.false ]
  %3 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %vec5 = getelementptr inbounds %struct._DV* %dv, i64 0, i32 3
  %4 = load double** %vec5, align 8, !tbaa !0
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([49 x i8]* @.str3, i64 0, i64 0), %struct._DV* %dv, i32 %2, double* %4) #4
  call void @exit(i32 -1) #5
  unreachable

if.end:                                           ; preds = %lor.lhs.false2
  %call8 = call double @DVmax(i32 %0, double* %1, i32* %i) #4
  ret double %call8
}

; Function Attrs: optsize
declare double @DVmax(i32, double*, i32*) #3

; Function Attrs: nounwind optsize uwtable
define double @DV_sum(%struct._DV* %dv) #0 {
entry:
  %cmp = icmp eq %struct._DV* %dv, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %size = getelementptr inbounds %struct._DV* %dv, i64 0, i32 0
  %0 = load i32* %size, align 4, !tbaa !3
  %cmp1 = icmp slt i32 %0, 1
  br i1 %cmp1, label %if.then, label %lor.lhs.false2

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %vec = getelementptr inbounds %struct._DV* %dv, i64 0, i32 3
  %1 = load double** %vec, align 8, !tbaa !0
  %cmp3 = icmp eq double* %1, null
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry, %lor.lhs.false2
  %2 = phi i32 [ %0, %lor.lhs.false2 ], [ 0, %entry ], [ %0, %lor.lhs.false ]
  %3 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %vec5 = getelementptr inbounds %struct._DV* %dv, i64 0, i32 3
  %4 = load double** %vec5, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([49 x i8]* @.str4, i64 0, i64 0), %struct._DV* %dv, i32 %2, double* %4) #4
  tail call void @exit(i32 -1) #5
  unreachable

if.end:                                           ; preds = %lor.lhs.false2
  %call8 = tail call double @DVsum(i32 %0, double* %1) #4
  ret double %call8
}

; Function Attrs: optsize
declare double @DVsum(i32, double*) #3

; Function Attrs: nounwind optsize uwtable
define void @DV_sortUp(%struct._DV* %dv) #0 {
entry:
  %cmp = icmp eq %struct._DV* %dv, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %size = getelementptr inbounds %struct._DV* %dv, i64 0, i32 0
  %0 = load i32* %size, align 4, !tbaa !3
  %cmp1 = icmp slt i32 %0, 1
  br i1 %cmp1, label %if.then, label %lor.lhs.false2

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %vec = getelementptr inbounds %struct._DV* %dv, i64 0, i32 3
  %1 = load double** %vec, align 8, !tbaa !0
  %cmp3 = icmp eq double* %1, null
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry, %lor.lhs.false2
  %2 = phi i32 [ %0, %lor.lhs.false2 ], [ 0, %entry ], [ %0, %lor.lhs.false ]
  %3 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %vec5 = getelementptr inbounds %struct._DV* %dv, i64 0, i32 3
  %4 = load double** %vec5, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([52 x i8]* @.str5, i64 0, i64 0), %struct._DV* %dv, i32 %2, double* %4) #4
  tail call void @exit(i32 -1) #5
  unreachable

if.end:                                           ; preds = %lor.lhs.false2
  tail call void @DVqsortUp(i32 %0, double* %1) #4
  ret void
}

; Function Attrs: optsize
declare void @DVqsortUp(i32, double*) #3

; Function Attrs: nounwind optsize uwtable
define void @DV_sortDown(%struct._DV* %dv) #0 {
entry:
  %cmp = icmp eq %struct._DV* %dv, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %size = getelementptr inbounds %struct._DV* %dv, i64 0, i32 0
  %0 = load i32* %size, align 4, !tbaa !3
  %cmp1 = icmp slt i32 %0, 1
  br i1 %cmp1, label %if.then, label %lor.lhs.false2

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %vec = getelementptr inbounds %struct._DV* %dv, i64 0, i32 3
  %1 = load double** %vec, align 8, !tbaa !0
  %cmp3 = icmp eq double* %1, null
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry, %lor.lhs.false2
  %2 = phi i32 [ %0, %lor.lhs.false2 ], [ 0, %entry ], [ %0, %lor.lhs.false ]
  %3 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %vec5 = getelementptr inbounds %struct._DV* %dv, i64 0, i32 3
  %4 = load double** %vec5, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([54 x i8]* @.str6, i64 0, i64 0), %struct._DV* %dv, i32 %2, double* %4) #4
  tail call void @exit(i32 -1) #5
  unreachable

if.end:                                           ; preds = %lor.lhs.false2
  tail call void @DVqsortDown(i32 %0, double* %1) #4
  ret void
}

; Function Attrs: optsize
declare void @DVqsortDown(i32, double*) #3

; Function Attrs: nounwind optsize uwtable
define void @DV_ramp(%struct._DV* %dv, double %base, double %incr) #0 {
entry:
  %cmp = icmp eq %struct._DV* %dv, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %size = getelementptr inbounds %struct._DV* %dv, i64 0, i32 0
  %0 = load i32* %size, align 4, !tbaa !3
  %cmp1 = icmp slt i32 %0, 1
  br i1 %cmp1, label %if.then, label %lor.lhs.false2

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %vec = getelementptr inbounds %struct._DV* %dv, i64 0, i32 3
  %1 = load double** %vec, align 8, !tbaa !0
  %cmp3 = icmp eq double* %1, null
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry, %lor.lhs.false2
  %2 = phi i32 [ %0, %lor.lhs.false2 ], [ 0, %entry ], [ %0, %lor.lhs.false ]
  %3 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %vec5 = getelementptr inbounds %struct._DV* %dv, i64 0, i32 3
  %4 = load double** %vec5, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([56 x i8]* @.str7, i64 0, i64 0), %struct._DV* %dv, double %base, double %incr, i32 %2, double* %4) #4
  tail call void @exit(i32 -1) #5
  unreachable

if.end:                                           ; preds = %lor.lhs.false2
  tail call void @DVramp(i32 %0, double* %1, double %base, double %incr) #4
  ret void
}

; Function Attrs: optsize
declare void @DVramp(i32, double*, double, double) #3

; Function Attrs: nounwind optsize uwtable
define void @DV_shuffle(%struct._DV* %dv, i32 %seed) #0 {
entry:
  %cmp = icmp eq %struct._DV* %dv, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %size = getelementptr inbounds %struct._DV* %dv, i64 0, i32 0
  %0 = load i32* %size, align 4, !tbaa !3
  %cmp1 = icmp slt i32 %0, 1
  br i1 %cmp1, label %if.then, label %lor.lhs.false2

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %vec = getelementptr inbounds %struct._DV* %dv, i64 0, i32 3
  %1 = load double** %vec, align 8, !tbaa !0
  %cmp3 = icmp eq double* %1, null
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry, %lor.lhs.false2
  %2 = phi i32 [ %0, %lor.lhs.false2 ], [ 0, %entry ], [ %0, %lor.lhs.false ]
  %3 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %vec5 = getelementptr inbounds %struct._DV* %dv, i64 0, i32 3
  %4 = load double** %vec5, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([56 x i8]* @.str8, i64 0, i64 0), %struct._DV* %dv, i32 %seed, i32 %2, double* %4) #4
  tail call void @exit(i32 -1) #5
  unreachable

if.end:                                           ; preds = %lor.lhs.false2
  tail call void @DVshuffle(i32 %0, double* %1, i32 %seed) #4
  ret void
}

; Function Attrs: optsize
declare void @DVshuffle(i32, double*, i32) #3

; Function Attrs: nounwind optsize uwtable
define i32 @DV_sizeOf(%struct._DV* %dv) #0 {
entry:
  %cmp = icmp eq %struct._DV* %dv, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([44 x i8]* @.str9, i64 0, i64 0), %struct._DV* null) #4
  tail call void @exit(i32 -1) #5
  unreachable

if.end:                                           ; preds = %entry
  %owned = getelementptr inbounds %struct._DV* %dv, i64 0, i32 2
  %1 = load i32* %owned, align 4, !tbaa !3
  %cmp1 = icmp eq i32 %1, 1
  br i1 %cmp1, label %if.then2, label %if.end5

if.then2:                                         ; preds = %if.end
  %maxsize = getelementptr inbounds %struct._DV* %dv, i64 0, i32 1
  %2 = load i32* %maxsize, align 4, !tbaa !3
  %mul = shl i32 %2, 3
  %add = add i32 %mul, 24
  br label %if.end5

if.end5:                                          ; preds = %if.then2, %if.end
  %nbytes.0 = phi i32 [ %add, %if.then2 ], [ 24, %if.end ]
  ret i32 %nbytes.0
}

; Function Attrs: nounwind optsize uwtable
define double* @DV_first(%struct._DV* %dv) #0 {
entry:
  %cmp = icmp eq %struct._DV* %dv, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([41 x i8]* @.str10, i64 0, i64 0), %struct._DV* null) #4
  tail call void @exit(i32 -1) #5
  unreachable

if.end:                                           ; preds = %entry
  %size = getelementptr inbounds %struct._DV* %dv, i64 0, i32 0
  %1 = load i32* %size, align 4, !tbaa !3
  %cmp1 = icmp eq i32 %1, 0
  br i1 %cmp1, label %if.end3, label %if.else

if.else:                                          ; preds = %if.end
  %vec = getelementptr inbounds %struct._DV* %dv, i64 0, i32 3
  %2 = load double** %vec, align 8, !tbaa !0
  br label %if.end3

if.end3:                                          ; preds = %if.end, %if.else
  %pd.0 = phi double* [ %2, %if.else ], [ null, %if.end ]
  ret double* %pd.0
}

; Function Attrs: nounwind optsize uwtable
define double* @DV_next(%struct._DV* %dv, double* %pd) #0 {
entry:
  %cmp = icmp eq double* %pd, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([43 x i8]* @.str11, i64 0, i64 0), %struct._DV* %dv, double* null) #4
  %1 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call1 = tail call i32 @fflush(%struct._IO_FILE* %1) #4
  tail call void @exit(i32 -1) #5
  unreachable

if.end:                                           ; preds = %entry
  %vec = getelementptr inbounds %struct._DV* %dv, i64 0, i32 3
  %2 = load double** %vec, align 8, !tbaa !0
  %sub.ptr.lhs.cast = ptrtoint double* %pd to i64
  %sub.ptr.rhs.cast = ptrtoint double* %2 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div29 = lshr exact i64 %sub.ptr.sub, 3
  %conv = trunc i64 %sub.ptr.div29 to i32
  %cmp2 = icmp sgt i32 %conv, -1
  %size7.phi.trans.insert = getelementptr inbounds %struct._DV* %dv, i64 0, i32 0
  %.pre = load i32* %size7.phi.trans.insert, align 4, !tbaa !3
  %cmp4 = icmp slt i32 %conv, %.pre
  %or.cond = and i1 %cmp2, %cmp4
  br i1 %or.cond, label %if.else, label %if.then6

if.then6:                                         ; preds = %if.end
  %3 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call8 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([64 x i8]* @.str12, i64 0, i64 0), %struct._DV* %dv, double* %pd, i32 %conv, i32 %.pre) #4
  %4 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call9 = tail call i32 @fflush(%struct._IO_FILE* %4) #4
  tail call void @exit(i32 -1) #5
  unreachable

if.else:                                          ; preds = %if.end
  %sub = add nsw i32 %.pre, -1
  %cmp11 = icmp eq i32 %conv, %sub
  %incdec.ptr = getelementptr inbounds double* %pd, i64 1
  %pd.addr.0 = select i1 %cmp11, double* null, double* %incdec.ptr
  ret double* %pd.addr.0
}

; Function Attrs: nounwind optsize
declare i32 @fflush(%struct._IO_FILE* nocapture) #1

; Function Attrs: nounwind optsize uwtable
define void @DV_fill(%struct._DV* %dv, double %value) #0 {
entry:
  %cmp = icmp eq %struct._DV* %dv, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([44 x i8]* @.str13, i64 0, i64 0), %struct._DV* null, double %value) #4
  tail call void @exit(i32 -1) #5
  unreachable

if.end:                                           ; preds = %entry
  %size = getelementptr inbounds %struct._DV* %dv, i64 0, i32 0
  %1 = load i32* %size, align 4, !tbaa !3
  %cmp1 = icmp sgt i32 %1, 0
  br i1 %cmp1, label %if.then2, label %if.end4

if.then2:                                         ; preds = %if.end
  %vec = getelementptr inbounds %struct._DV* %dv, i64 0, i32 3
  %2 = load double** %vec, align 8, !tbaa !0
  tail call void @DVfill(i32 %1, double* %2, double %value) #4
  br label %if.end4

if.end4:                                          ; preds = %if.then2, %if.end
  ret void
}

; Function Attrs: optsize
declare void @DVfill(i32, double*, double) #3

; Function Attrs: nounwind optsize uwtable
define void @DV_zero(%struct._DV* %dv) #0 {
entry:
  %cmp = icmp eq %struct._DV* %dv, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([41 x i8]* @.str14, i64 0, i64 0), %struct._DV* null) #4
  tail call void @exit(i32 -1) #5
  unreachable

if.end:                                           ; preds = %entry
  %size = getelementptr inbounds %struct._DV* %dv, i64 0, i32 0
  %1 = load i32* %size, align 4, !tbaa !3
  %cmp1 = icmp sgt i32 %1, 0
  br i1 %cmp1, label %if.then2, label %if.end4

if.then2:                                         ; preds = %if.end
  %vec = getelementptr inbounds %struct._DV* %dv, i64 0, i32 3
  %2 = load double** %vec, align 8, !tbaa !0
  tail call void @DVzero(i32 %1, double* %2) #4
  br label %if.end4

if.end4:                                          ; preds = %if.then2, %if.end
  ret void
}

; Function Attrs: optsize
declare void @DVzero(i32, double*) #3

; Function Attrs: nounwind optsize uwtable
define void @DV_copy(%struct._DV* %dv1, %struct._DV* %dv2) #0 {
entry:
  %cmp = icmp eq %struct._DV* %dv1, null
  %cmp1 = icmp eq %struct._DV* %dv2, null
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([44 x i8]* @.str15, i64 0, i64 0), %struct._DV* %dv1, %struct._DV* %dv2) #4
  tail call void @exit(i32 -1) #5
  unreachable

if.end:                                           ; preds = %entry
  %size2 = getelementptr inbounds %struct._DV* %dv1, i64 0, i32 0
  %1 = load i32* %size2, align 4, !tbaa !3
  %size3 = getelementptr inbounds %struct._DV* %dv2, i64 0, i32 0
  %2 = load i32* %size3, align 4, !tbaa !3
  %cmp4 = icmp sgt i32 %1, %2
  %. = select i1 %cmp4, i32 %2, i32 %1
  %vec = getelementptr inbounds %struct._DV* %dv1, i64 0, i32 3
  %3 = load double** %vec, align 8, !tbaa !0
  %vec8 = getelementptr inbounds %struct._DV* %dv2, i64 0, i32 3
  %4 = load double** %vec8, align 8, !tbaa !0
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
  %arrayidx = getelementptr inbounds double* %4, i64 %indvars.iv
  %9 = load double* %arrayidx, align 8, !tbaa !4
  %arrayidx11 = getelementptr inbounds double* %3, i64 %indvars.iv
  store double %9, double* %arrayidx11, align 8, !tbaa !4
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %8
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %if.end
  ret void
}

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
!4 = metadata !{metadata !"double", metadata !1}
