; ModuleID = '../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/I2Ohash/src/I2Ohash_util.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct._I2Ohash = type { i32, i32, i32, %struct._I2OP*, %struct._I2OP*, %struct._I2OP** }
%struct._I2OP = type { i32, i32, i8*, %struct._I2OP* }

@stderr = external global %struct._IO_FILE*
@.str = private unnamed_addr constant [60 x i8] c"\0A error in I2Ohash_insert(%p,%d,%d,%p)\0A hashtable is NULL \0A\00", align 1
@.str1 = private unnamed_addr constant [76 x i8] c"\0A fatal error in I2Ohash_insert(%p,%d,%d,%p)\0A no free list items, grow = %d\00", align 1
@.str2 = private unnamed_addr constant [69 x i8] c"\0A error in I2Ohash_locate(%p,%d,%d,%p)\0A hashtable or pvalue is NULL\0A\00", align 1
@.str3 = private unnamed_addr constant [69 x i8] c"\0A error in I2Ohash_remove(%p,%d,%d,%p)\0A hashtable or pvalue is NULL\0A\00", align 1
@.str4 = private unnamed_addr constant [57 x i8] c"\0A fatal error in I2Ohash_measure(%p)\0A hashtable is NULL\0A\00", align 1

; Function Attrs: nounwind optsize uwtable
define void @I2Ohash_insert(%struct._I2Ohash* %hashtable, i32 %key1, i32 %key2, i8* %value) #0 {
entry:
  %cmp = icmp eq %struct._I2Ohash* %hashtable, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([60 x i8]* @.str, i64 0, i64 0), %struct._I2Ohash* null, i32 %key1, i32 %key2, i8* %value) #4
  tail call void @exit(i32 -1) #5
  unreachable

if.end:                                           ; preds = %entry
  %add = add nsw i32 %key1, 1
  %nlist = getelementptr inbounds %struct._I2Ohash* %hashtable, i64 0, i32 0
  %1 = load i32* %nlist, align 4, !tbaa !3
  %rem = srem i32 %add, %1
  %add1 = add nsw i32 %key2, 1
  %rem3 = srem i32 %add1, %1
  %mul = mul nsw i32 %rem3, %rem
  %rem5 = srem i32 %mul, %1
  %freeI2OP = getelementptr inbounds %struct._I2Ohash* %hashtable, i64 0, i32 4
  %2 = load %struct._I2OP** %freeI2OP, align 8, !tbaa !0
  %cmp6 = icmp eq %struct._I2OP* %2, null
  br i1 %cmp6, label %if.then7, label %if.end18

if.then7:                                         ; preds = %if.end
  %grow = getelementptr inbounds %struct._I2Ohash* %hashtable, i64 0, i32 1
  %3 = load i32* %grow, align 4, !tbaa !3
  %cmp8 = icmp slt i32 %3, 1
  br i1 %cmp8, label %if.then9, label %if.end12

if.then9:                                         ; preds = %if.then7
  %4 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call11 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([76 x i8]* @.str1, i64 0, i64 0), %struct._I2Ohash* %hashtable, i32 %key1, i32 %key2, i8* %value, i32 %3) #4
  tail call void @exit(i32 -1) #5
  unreachable

if.end12:                                         ; preds = %if.then7
  %call14 = tail call %struct._I2OP* @I2OP_init(i32 %3, i32 1) #4
  %add.ptr = getelementptr inbounds %struct._I2OP* %call14, i64 1
  store %struct._I2OP* %add.ptr, %struct._I2OP** %freeI2OP, align 8, !tbaa !0
  %baseI2OP = getelementptr inbounds %struct._I2Ohash* %hashtable, i64 0, i32 3
  %5 = load %struct._I2OP** %baseI2OP, align 8, !tbaa !0
  %next = getelementptr inbounds %struct._I2OP* %call14, i64 0, i32 3
  store %struct._I2OP* %5, %struct._I2OP** %next, align 8, !tbaa !0
  store %struct._I2OP* %call14, %struct._I2OP** %baseI2OP, align 8, !tbaa !0
  %6 = load %struct._I2OP** %freeI2OP, align 8, !tbaa !0
  br label %if.end18

if.end18:                                         ; preds = %if.end12, %if.end
  %i2op.0 = phi %struct._I2OP* [ %6, %if.end12 ], [ %2, %if.end ]
  %next19 = getelementptr inbounds %struct._I2OP* %i2op.0, i64 0, i32 3
  %7 = load %struct._I2OP** %next19, align 8, !tbaa !0
  store %struct._I2OP* %7, %struct._I2OP** %freeI2OP, align 8, !tbaa !0
  %value0 = getelementptr inbounds %struct._I2OP* %i2op.0, i64 0, i32 0
  store i32 %key1, i32* %value0, align 4, !tbaa !3
  %value1 = getelementptr inbounds %struct._I2OP* %i2op.0, i64 0, i32 1
  store i32 %key2, i32* %value1, align 4, !tbaa !3
  %value2 = getelementptr inbounds %struct._I2OP* %i2op.0, i64 0, i32 2
  store i8* %value, i8** %value2, align 8, !tbaa !0
  store %struct._I2OP* null, %struct._I2OP** %next19, align 8, !tbaa !0
  %idxprom = sext i32 %rem5 to i64
  %heads = getelementptr inbounds %struct._I2Ohash* %hashtable, i64 0, i32 5
  %8 = load %struct._I2OP*** %heads, align 8, !tbaa !0
  %arrayidx = getelementptr inbounds %struct._I2OP** %8, i64 %idxprom
  %j2op.085 = load %struct._I2OP** %arrayidx, align 8
  %cmp2286 = icmp eq %struct._I2OP* %j2op.085, null
  br i1 %cmp2286, label %if.then33, label %for.body

for.body:                                         ; preds = %if.end18, %if.end30
  %j2op.088 = phi %struct._I2OP* [ %j2op.0, %if.end30 ], [ %j2op.085, %if.end18 ]
  %prev.087 = phi %struct._I2OP* [ %j2op.088, %if.end30 ], [ null, %if.end18 ]
  %value023 = getelementptr inbounds %struct._I2OP* %j2op.088, i64 0, i32 0
  %9 = load i32* %value023, align 4, !tbaa !3
  %cmp24 = icmp sgt i32 %9, %key1
  br i1 %cmp24, label %for.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %cmp26 = icmp eq i32 %9, %key1
  br i1 %cmp26, label %land.lhs.true, label %if.end30

land.lhs.true:                                    ; preds = %lor.lhs.false
  %value127 = getelementptr inbounds %struct._I2OP* %j2op.088, i64 0, i32 1
  %10 = load i32* %value127, align 4, !tbaa !3
  %cmp28 = icmp slt i32 %10, %key2
  br i1 %cmp28, label %if.end30, label %for.end

if.end30:                                         ; preds = %land.lhs.true, %lor.lhs.false
  %next31 = getelementptr inbounds %struct._I2OP* %j2op.088, i64 0, i32 3
  %j2op.0 = load %struct._I2OP** %next31, align 8
  %cmp22 = icmp eq %struct._I2OP* %j2op.0, null
  br i1 %cmp22, label %for.end, label %for.body

for.end:                                          ; preds = %if.end30, %land.lhs.true, %for.body
  %j2op.0.lcssa = phi %struct._I2OP* [ %j2op.088, %for.body ], [ %j2op.088, %land.lhs.true ], [ null, %if.end30 ]
  %prev.0.lcssa = phi %struct._I2OP* [ %prev.087, %for.body ], [ %prev.087, %land.lhs.true ], [ %j2op.088, %if.end30 ]
  %cmp32 = icmp eq %struct._I2OP* %prev.0.lcssa, null
  br i1 %cmp32, label %if.then33, label %if.else

if.then33:                                        ; preds = %if.end18, %for.end
  %j2op.0.lcssa95 = phi %struct._I2OP* [ %j2op.0.lcssa, %for.end ], [ null, %if.end18 ]
  store %struct._I2OP* %i2op.0, %struct._I2OP** %arrayidx, align 8, !tbaa !0
  br label %if.end38

if.else:                                          ; preds = %for.end
  %next37 = getelementptr inbounds %struct._I2OP* %prev.0.lcssa, i64 0, i32 3
  store %struct._I2OP* %i2op.0, %struct._I2OP** %next37, align 8, !tbaa !0
  br label %if.end38

if.end38:                                         ; preds = %if.else, %if.then33
  %j2op.0.lcssa94 = phi %struct._I2OP* [ %j2op.0.lcssa, %if.else ], [ %j2op.0.lcssa95, %if.then33 ]
  store %struct._I2OP* %j2op.0.lcssa94, %struct._I2OP** %next19, align 8, !tbaa !0
  %nitem = getelementptr inbounds %struct._I2Ohash* %hashtable, i64 0, i32 2
  %11 = load i32* %nitem, align 4, !tbaa !3
  %inc = add nsw i32 %11, 1
  store i32 %inc, i32* %nitem, align 4, !tbaa !3
  ret void
}

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #1

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32) #2

; Function Attrs: optsize
declare %struct._I2OP* @I2OP_init(i32, i32) #3

; Function Attrs: nounwind optsize uwtable
define i32 @I2Ohash_locate(%struct._I2Ohash* %hashtable, i32 %key1, i32 %key2, i8** %pvalue) #0 {
entry:
  %cmp = icmp eq %struct._I2Ohash* %hashtable, null
  %cmp1 = icmp eq i8** %pvalue, null
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([69 x i8]* @.str2, i64 0, i64 0), %struct._I2Ohash* %hashtable, i32 %key1, i32 %key2, i8** %pvalue) #4
  tail call void @exit(i32 -1) #5
  unreachable

if.end:                                           ; preds = %entry
  %add = add nsw i32 %key1, 1
  %nlist = getelementptr inbounds %struct._I2Ohash* %hashtable, i64 0, i32 0
  %1 = load i32* %nlist, align 4, !tbaa !3
  %rem = srem i32 %add, %1
  %add2 = add nsw i32 %key2, 1
  %rem4 = srem i32 %add2, %1
  %mul = mul nsw i32 %rem4, %rem
  %rem6 = srem i32 %mul, %1
  %idxprom = sext i32 %rem6 to i64
  %heads = getelementptr inbounds %struct._I2Ohash* %hashtable, i64 0, i32 5
  %2 = load %struct._I2OP*** %heads, align 8, !tbaa !0
  %arrayidx = getelementptr inbounds %struct._I2OP** %2, i64 %idxprom
  %i2op.053 = load %struct._I2OP** %arrayidx, align 8
  %cmp754 = icmp eq %struct._I2OP* %i2op.053, null
  br i1 %cmp754, label %if.end23, label %for.body

for.body:                                         ; preds = %if.end, %for.inc
  %i2op.055 = phi %struct._I2OP* [ %i2op.0, %for.inc ], [ %i2op.053, %if.end ]
  %value0 = getelementptr inbounds %struct._I2OP* %i2op.055, i64 0, i32 0
  %3 = load i32* %value0, align 4, !tbaa !3
  %cmp8 = icmp sgt i32 %3, %key1
  br i1 %cmp8, label %land.lhs.true16, label %lor.lhs.false9

lor.lhs.false9:                                   ; preds = %for.body
  %cmp11 = icmp eq i32 %3, %key1
  br i1 %cmp11, label %land.lhs.true, label %for.inc

land.lhs.true:                                    ; preds = %lor.lhs.false9
  %value1 = getelementptr inbounds %struct._I2OP* %i2op.055, i64 0, i32 1
  %4 = load i32* %value1, align 4, !tbaa !3
  %cmp12 = icmp slt i32 %4, %key2
  br i1 %cmp12, label %for.inc, label %land.lhs.true16

for.inc:                                          ; preds = %land.lhs.true, %lor.lhs.false9
  %next = getelementptr inbounds %struct._I2OP* %i2op.055, i64 0, i32 3
  %i2op.0 = load %struct._I2OP** %next, align 8
  %cmp7 = icmp eq %struct._I2OP* %i2op.0, null
  br i1 %cmp7, label %if.end23, label %for.body

land.lhs.true16:                                  ; preds = %for.body, %land.lhs.true
  %cmp18 = icmp eq i32 %3, %key1
  br i1 %cmp18, label %land.lhs.true19, label %if.end23

land.lhs.true19:                                  ; preds = %land.lhs.true16
  %value120 = getelementptr inbounds %struct._I2OP* %i2op.055, i64 0, i32 1
  %5 = load i32* %value120, align 4, !tbaa !3
  %cmp21 = icmp eq i32 %5, %key2
  br i1 %cmp21, label %if.then22, label %if.end23

if.then22:                                        ; preds = %land.lhs.true19
  %value2 = getelementptr inbounds %struct._I2OP* %i2op.055, i64 0, i32 2
  %6 = load i8** %value2, align 8, !tbaa !0
  store i8* %6, i8** %pvalue, align 8, !tbaa !0
  br label %if.end23

if.end23:                                         ; preds = %if.end, %for.inc, %if.then22, %land.lhs.true19, %land.lhs.true16
  %rc.0 = phi i32 [ 1, %if.then22 ], [ 0, %land.lhs.true19 ], [ 0, %land.lhs.true16 ], [ 0, %for.inc ], [ 0, %if.end ]
  ret i32 %rc.0
}

; Function Attrs: nounwind optsize uwtable
define i32 @I2Ohash_remove(%struct._I2Ohash* %hashtable, i32 %key1, i32 %key2, i8** %pvalue) #0 {
entry:
  %cmp = icmp eq %struct._I2Ohash* %hashtable, null
  %cmp1 = icmp eq i8** %pvalue, null
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([69 x i8]* @.str3, i64 0, i64 0), %struct._I2Ohash* %hashtable, i32 %key1, i32 %key2, i8** %pvalue) #4
  tail call void @exit(i32 -1) #5
  unreachable

if.end:                                           ; preds = %entry
  %add = add nsw i32 %key1, 1
  %nlist = getelementptr inbounds %struct._I2Ohash* %hashtable, i64 0, i32 0
  %1 = load i32* %nlist, align 4, !tbaa !3
  %rem = srem i32 %add, %1
  %add2 = add nsw i32 %key2, 1
  %rem4 = srem i32 %add2, %1
  %mul = mul nsw i32 %rem4, %rem
  %rem6 = srem i32 %mul, %1
  %idxprom = sext i32 %rem6 to i64
  %heads = getelementptr inbounds %struct._I2Ohash* %hashtable, i64 0, i32 5
  %2 = load %struct._I2OP*** %heads, align 8, !tbaa !0
  %arrayidx = getelementptr inbounds %struct._I2OP** %2, i64 %idxprom
  %i2op.077 = load %struct._I2OP** %arrayidx, align 8
  %cmp778 = icmp eq %struct._I2OP* %i2op.077, null
  br i1 %cmp778, label %if.end34, label %for.body

for.body:                                         ; preds = %if.end, %if.end14
  %i2op.080 = phi %struct._I2OP* [ %i2op.0, %if.end14 ], [ %i2op.077, %if.end ]
  %prev.079 = phi %struct._I2OP* [ %i2op.080, %if.end14 ], [ null, %if.end ]
  %value0 = getelementptr inbounds %struct._I2OP* %i2op.080, i64 0, i32 0
  %3 = load i32* %value0, align 4, !tbaa !3
  %cmp8 = icmp sgt i32 %3, %key1
  br i1 %cmp8, label %land.lhs.true16, label %lor.lhs.false9

lor.lhs.false9:                                   ; preds = %for.body
  %cmp11 = icmp eq i32 %3, %key1
  br i1 %cmp11, label %land.lhs.true, label %if.end14

land.lhs.true:                                    ; preds = %lor.lhs.false9
  %value1 = getelementptr inbounds %struct._I2OP* %i2op.080, i64 0, i32 1
  %4 = load i32* %value1, align 4, !tbaa !3
  %cmp12 = icmp slt i32 %4, %key2
  br i1 %cmp12, label %if.end14, label %land.lhs.true16

if.end14:                                         ; preds = %land.lhs.true, %lor.lhs.false9
  %next = getelementptr inbounds %struct._I2OP* %i2op.080, i64 0, i32 3
  %i2op.0 = load %struct._I2OP** %next, align 8
  %cmp7 = icmp eq %struct._I2OP* %i2op.0, null
  br i1 %cmp7, label %if.end34, label %for.body

land.lhs.true16:                                  ; preds = %for.body, %land.lhs.true
  %cmp18 = icmp eq i32 %3, %key1
  br i1 %cmp18, label %land.lhs.true19, label %if.end34

land.lhs.true19:                                  ; preds = %land.lhs.true16
  %value120 = getelementptr inbounds %struct._I2OP* %i2op.080, i64 0, i32 1
  %5 = load i32* %value120, align 4, !tbaa !3
  %cmp21 = icmp eq i32 %5, %key2
  br i1 %cmp21, label %if.then22, label %if.end34

if.then22:                                        ; preds = %land.lhs.true19
  %cmp23 = icmp eq %struct._I2OP* %prev.079, null
  %next25 = getelementptr inbounds %struct._I2OP* %i2op.080, i64 0, i32 3
  %6 = load %struct._I2OP** %next25, align 8, !tbaa !0
  br i1 %cmp23, label %if.then24, label %if.else

if.then24:                                        ; preds = %if.then22
  store %struct._I2OP* %6, %struct._I2OP** %arrayidx, align 8, !tbaa !0
  br label %if.end31

if.else:                                          ; preds = %if.then22
  %next30 = getelementptr inbounds %struct._I2OP* %prev.079, i64 0, i32 3
  store %struct._I2OP* %6, %struct._I2OP** %next30, align 8, !tbaa !0
  br label %if.end31

if.end31:                                         ; preds = %if.else, %if.then24
  %freeI2OP = getelementptr inbounds %struct._I2Ohash* %hashtable, i64 0, i32 4
  %7 = load %struct._I2OP** %freeI2OP, align 8, !tbaa !0
  store %struct._I2OP* %7, %struct._I2OP** %next25, align 8, !tbaa !0
  store %struct._I2OP* %i2op.080, %struct._I2OP** %freeI2OP, align 8, !tbaa !0
  %nitem = getelementptr inbounds %struct._I2Ohash* %hashtable, i64 0, i32 2
  %8 = load i32* %nitem, align 4, !tbaa !3
  %dec = add nsw i32 %8, -1
  store i32 %dec, i32* %nitem, align 4, !tbaa !3
  %value2 = getelementptr inbounds %struct._I2OP* %i2op.080, i64 0, i32 2
  %9 = load i8** %value2, align 8, !tbaa !0
  store i8* %9, i8** %pvalue, align 8, !tbaa !0
  br label %if.end34

if.end34:                                         ; preds = %if.end, %if.end14, %if.end31, %land.lhs.true19, %land.lhs.true16
  %rc.0 = phi i32 [ 1, %if.end31 ], [ 0, %land.lhs.true19 ], [ 0, %land.lhs.true16 ], [ 0, %if.end14 ], [ 0, %if.end ]
  ret i32 %rc.0
}

; Function Attrs: nounwind optsize uwtable
define double @I2Ohash_measure(%struct._I2Ohash* %hashtable) #0 {
entry:
  %cmp = icmp eq %struct._I2Ohash* %hashtable, null
  br i1 %cmp, label %if.then, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %nlist = getelementptr inbounds %struct._I2Ohash* %hashtable, i64 0, i32 0
  %0 = load i32* %nlist, align 4, !tbaa !3
  %cmp128 = icmp sgt i32 %0, 0
  br i1 %cmp128, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %heads = getelementptr inbounds %struct._I2Ohash* %hashtable, i64 0, i32 5
  %1 = load %struct._I2OP*** %heads, align 8, !tbaa !0
  br label %for.body

if.then:                                          ; preds = %entry
  %2 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([57 x i8]* @.str4, i64 0, i64 0), %struct._I2Ohash* null) #4
  tail call void @exit(i32 -1) #5
  unreachable

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.inc ]
  %measure.029 = phi double [ 0.000000e+00, %for.body.lr.ph ], [ %measure.1, %for.inc ]
  %arrayidx = getelementptr inbounds %struct._I2OP** %1, i64 %indvars.iv
  %3 = load %struct._I2OP** %arrayidx, align 8, !tbaa !0
  %cmp2 = icmp eq %struct._I2OP* %3, null
  br i1 %cmp2, label %for.inc, label %while.body

while.body:                                       ; preds = %for.body, %while.body
  %i2op.027 = phi %struct._I2OP* [ %4, %while.body ], [ %3, %for.body ]
  %count.026 = phi i32 [ %inc, %while.body ], [ 0, %for.body ]
  %inc = add nsw i32 %count.026, 1
  %next = getelementptr inbounds %struct._I2OP* %i2op.027, i64 0, i32 3
  %4 = load %struct._I2OP** %next, align 8, !tbaa !0
  %cmp4 = icmp eq %struct._I2OP* %4, null
  br i1 %cmp4, label %while.end, label %while.body

while.end:                                        ; preds = %while.body
  %mul = mul nsw i32 %inc, %inc
  %conv = sitofp i32 %mul to double
  %add = fadd double %measure.029, %conv
  br label %for.inc

for.inc:                                          ; preds = %for.body, %while.end
  %measure.1 = phi double [ %add, %while.end ], [ %measure.029, %for.body ]
  %indvars.iv.next = add i64 %indvars.iv, 1
  %5 = trunc i64 %indvars.iv.next to i32
  %cmp1 = icmp slt i32 %5, %0
  br i1 %cmp1, label %for.body, label %for.end

for.end:                                          ; preds = %for.inc, %for.cond.preheader
  %measure.0.lcssa = phi double [ 0.000000e+00, %for.cond.preheader ], [ %measure.1, %for.inc ]
  %call7 = tail call double @sqrt(double %measure.0.lcssa) #4
  %6 = load i32* %nlist, align 4, !tbaa !3
  %conv9 = sitofp i32 %6 to double
  %call10 = tail call double @sqrt(double %conv9) #4
  %nitem = getelementptr inbounds %struct._I2Ohash* %hashtable, i64 0, i32 2
  %7 = load i32* %nitem, align 4, !tbaa !3
  %conv11 = sitofp i32 %7 to double
  %div = fdiv double %call10, %conv11
  %mul12 = fmul double %call7, %div
  ret double %mul12
}

; Function Attrs: nounwind optsize
declare double @sqrt(double) #1

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
