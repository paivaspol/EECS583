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
  tail call void @llvm.dbg.value(metadata !{%struct._I2Ohash* %hashtable}, i64 0, metadata !34), !dbg !80
  tail call void @llvm.dbg.value(metadata !{i32 %key1}, i64 0, metadata !35), !dbg !81
  tail call void @llvm.dbg.value(metadata !{i32 %key2}, i64 0, metadata !36), !dbg !82
  tail call void @llvm.dbg.value(metadata !{i8* %value}, i64 0, metadata !37), !dbg !83
  %cmp = icmp eq %struct._I2Ohash* %hashtable, null, !dbg !84
  br i1 %cmp, label %if.then, label %if.end, !dbg !84

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !85, !tbaa !87
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([60 x i8]* @.str, i64 0, i64 0), %struct._I2Ohash* null, i32 %key1, i32 %key2, i8* %value) #5, !dbg !85
  tail call void @exit(i32 -1) #6, !dbg !90
  unreachable, !dbg !90

if.end:                                           ; preds = %entry
  %add = add nsw i32 %key1, 1, !dbg !91
  %nlist = getelementptr inbounds %struct._I2Ohash* %hashtable, i64 0, i32 0, !dbg !91
  %1 = load i32* %nlist, align 4, !dbg !91, !tbaa !92
  %rem = srem i32 %add, %1, !dbg !91
  tail call void @llvm.dbg.value(metadata !{i32 %rem}, i64 0, metadata !39), !dbg !91
  %add1 = add nsw i32 %key2, 1, !dbg !93
  %rem3 = srem i32 %add1, %1, !dbg !93
  tail call void @llvm.dbg.value(metadata !{i32 %rem3}, i64 0, metadata !40), !dbg !93
  %mul = mul nsw i32 %rem3, %rem, !dbg !94
  %rem5 = srem i32 %mul, %1, !dbg !94
  tail call void @llvm.dbg.value(metadata !{i32 %rem5}, i64 0, metadata !38), !dbg !94
  %freeI2OP = getelementptr inbounds %struct._I2Ohash* %hashtable, i64 0, i32 4, !dbg !95
  %2 = load %struct._I2OP** %freeI2OP, align 8, !dbg !95, !tbaa !87
  tail call void @llvm.dbg.value(metadata !{%struct._I2OP* %2}, i64 0, metadata !41), !dbg !95
  %cmp6 = icmp eq %struct._I2OP* %2, null, !dbg !95
  br i1 %cmp6, label %if.then7, label %if.end18, !dbg !95

if.then7:                                         ; preds = %if.end
  %grow = getelementptr inbounds %struct._I2Ohash* %hashtable, i64 0, i32 1, !dbg !96
  %3 = load i32* %grow, align 4, !dbg !96, !tbaa !92
  %cmp8 = icmp slt i32 %3, 1, !dbg !96
  br i1 %cmp8, label %if.then9, label %if.end12, !dbg !96

if.then9:                                         ; preds = %if.then7
  %4 = load %struct._IO_FILE** @stderr, align 8, !dbg !98, !tbaa !87
  %call11 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([76 x i8]* @.str1, i64 0, i64 0), %struct._I2Ohash* %hashtable, i32 %key1, i32 %key2, i8* %value, i32 %3) #5, !dbg !98
  tail call void @exit(i32 -1) #6, !dbg !100
  unreachable, !dbg !100

if.end12:                                         ; preds = %if.then7
  %call14 = tail call %struct._I2OP* @I2OP_init(i32 %3, i32 1) #5, !dbg !101
  tail call void @llvm.dbg.value(metadata !{%struct._I2OP* %call14}, i64 0, metadata !41), !dbg !101
  %add.ptr = getelementptr inbounds %struct._I2OP* %call14, i64 1, !dbg !102
  store %struct._I2OP* %add.ptr, %struct._I2OP** %freeI2OP, align 8, !dbg !102, !tbaa !87
  %baseI2OP = getelementptr inbounds %struct._I2Ohash* %hashtable, i64 0, i32 3, !dbg !103
  %5 = load %struct._I2OP** %baseI2OP, align 8, !dbg !103, !tbaa !87
  %next = getelementptr inbounds %struct._I2OP* %call14, i64 0, i32 3, !dbg !103
  store %struct._I2OP* %5, %struct._I2OP** %next, align 8, !dbg !103, !tbaa !87
  store %struct._I2OP* %call14, %struct._I2OP** %baseI2OP, align 8, !dbg !104, !tbaa !87
  %6 = load %struct._I2OP** %freeI2OP, align 8, !dbg !105, !tbaa !87
  tail call void @llvm.dbg.value(metadata !{%struct._I2OP* %6}, i64 0, metadata !41), !dbg !105
  br label %if.end18, !dbg !106

if.end18:                                         ; preds = %if.end12, %if.end
  %i2op.0 = phi %struct._I2OP* [ %6, %if.end12 ], [ %2, %if.end ]
  %next19 = getelementptr inbounds %struct._I2OP* %i2op.0, i64 0, i32 3, !dbg !107
  %7 = load %struct._I2OP** %next19, align 8, !dbg !107, !tbaa !87
  store %struct._I2OP* %7, %struct._I2OP** %freeI2OP, align 8, !dbg !107, !tbaa !87
  %value0 = getelementptr inbounds %struct._I2OP* %i2op.0, i64 0, i32 0, !dbg !108
  store i32 %key1, i32* %value0, align 4, !dbg !108, !tbaa !92
  %value1 = getelementptr inbounds %struct._I2OP* %i2op.0, i64 0, i32 1, !dbg !109
  store i32 %key2, i32* %value1, align 4, !dbg !109, !tbaa !92
  %value2 = getelementptr inbounds %struct._I2OP* %i2op.0, i64 0, i32 2, !dbg !110
  store i8* %value, i8** %value2, align 8, !dbg !110, !tbaa !87
  store %struct._I2OP* null, %struct._I2OP** %next19, align 8, !dbg !111, !tbaa !87
  %idxprom = sext i32 %rem5 to i64, !dbg !112
  %heads = getelementptr inbounds %struct._I2Ohash* %hashtable, i64 0, i32 5, !dbg !112
  %8 = load %struct._I2OP*** %heads, align 8, !dbg !112, !tbaa !87
  %arrayidx = getelementptr inbounds %struct._I2OP** %8, i64 %idxprom, !dbg !112
  tail call void @llvm.dbg.value(metadata !114, i64 0, metadata !43), !dbg !112
  %j2op.085 = load %struct._I2OP** %arrayidx, align 8, !dbg !112
  %cmp2286 = icmp eq %struct._I2OP* %j2op.085, null, !dbg !112
  br i1 %cmp2286, label %if.then33, label %for.body, !dbg !112

for.body:                                         ; preds = %if.end18, %if.end30
  %j2op.088 = phi %struct._I2OP* [ %j2op.0, %if.end30 ], [ %j2op.085, %if.end18 ]
  %prev.087 = phi %struct._I2OP* [ %j2op.088, %if.end30 ], [ null, %if.end18 ]
  %value023 = getelementptr inbounds %struct._I2OP* %j2op.088, i64 0, i32 0, !dbg !115
  %9 = load i32* %value023, align 4, !dbg !115, !tbaa !92
  %cmp24 = icmp sgt i32 %9, %key1, !dbg !115
  br i1 %cmp24, label %for.end, label %lor.lhs.false, !dbg !115

lor.lhs.false:                                    ; preds = %for.body
  %cmp26 = icmp eq i32 %9, %key1, !dbg !115
  br i1 %cmp26, label %land.lhs.true, label %if.end30, !dbg !115

land.lhs.true:                                    ; preds = %lor.lhs.false
  %value127 = getelementptr inbounds %struct._I2OP* %j2op.088, i64 0, i32 1, !dbg !115
  %10 = load i32* %value127, align 4, !dbg !115, !tbaa !92
  %cmp28 = icmp slt i32 %10, %key2, !dbg !115
  br i1 %cmp28, label %if.end30, label %for.end, !dbg !115

if.end30:                                         ; preds = %land.lhs.true, %lor.lhs.false
  tail call void @llvm.dbg.value(metadata !{%struct._I2OP* %j2op.0.lcssa94}, i64 0, metadata !43), !dbg !117
  %next31 = getelementptr inbounds %struct._I2OP* %j2op.088, i64 0, i32 3, !dbg !118
  %j2op.0 = load %struct._I2OP** %next31, align 8, !dbg !112
  %cmp22 = icmp eq %struct._I2OP* %j2op.0, null, !dbg !112
  br i1 %cmp22, label %for.end, label %for.body, !dbg !112

for.end:                                          ; preds = %if.end30, %land.lhs.true, %for.body
  %j2op.0.lcssa = phi %struct._I2OP* [ %j2op.088, %for.body ], [ %j2op.088, %land.lhs.true ], [ null, %if.end30 ]
  %prev.0.lcssa = phi %struct._I2OP* [ %prev.087, %for.body ], [ %prev.087, %land.lhs.true ], [ %j2op.088, %if.end30 ]
  %cmp32 = icmp eq %struct._I2OP* %prev.0.lcssa, null, !dbg !119
  br i1 %cmp32, label %if.then33, label %if.else, !dbg !119

if.then33:                                        ; preds = %if.end18, %for.end
  %j2op.0.lcssa95 = phi %struct._I2OP* [ %j2op.0.lcssa, %for.end ], [ null, %if.end18 ]
  store %struct._I2OP* %i2op.0, %struct._I2OP** %arrayidx, align 8, !dbg !120, !tbaa !87
  br label %if.end38, !dbg !122

if.else:                                          ; preds = %for.end
  %next37 = getelementptr inbounds %struct._I2OP* %prev.0.lcssa, i64 0, i32 3, !dbg !123
  store %struct._I2OP* %i2op.0, %struct._I2OP** %next37, align 8, !dbg !123, !tbaa !87
  br label %if.end38

if.end38:                                         ; preds = %if.else, %if.then33
  %j2op.0.lcssa94 = phi %struct._I2OP* [ %j2op.0.lcssa, %if.else ], [ %j2op.0.lcssa95, %if.then33 ]
  store %struct._I2OP* %j2op.0.lcssa94, %struct._I2OP** %next19, align 8, !dbg !125, !tbaa !87
  %nitem = getelementptr inbounds %struct._I2Ohash* %hashtable, i64 0, i32 2, !dbg !126
  %11 = load i32* %nitem, align 4, !dbg !126, !tbaa !92
  %inc = add nsw i32 %11, 1, !dbg !126
  store i32 %inc, i32* %nitem, align 4, !dbg !126, !tbaa !92
  ret void, !dbg !127
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
  tail call void @llvm.dbg.value(metadata !{%struct._I2Ohash* %hashtable}, i64 0, metadata !49), !dbg !128
  tail call void @llvm.dbg.value(metadata !{i32 %key1}, i64 0, metadata !50), !dbg !129
  tail call void @llvm.dbg.value(metadata !{i32 %key2}, i64 0, metadata !51), !dbg !130
  tail call void @llvm.dbg.value(metadata !{i8** %pvalue}, i64 0, metadata !52), !dbg !131
  %cmp = icmp eq %struct._I2Ohash* %hashtable, null, !dbg !132
  %cmp1 = icmp eq i8** %pvalue, null, !dbg !132
  %or.cond = or i1 %cmp, %cmp1, !dbg !132
  br i1 %or.cond, label %if.then, label %if.end, !dbg !132

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !133, !tbaa !87
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([69 x i8]* @.str2, i64 0, i64 0), %struct._I2Ohash* %hashtable, i32 %key1, i32 %key2, i8** %pvalue) #5, !dbg !133
  tail call void @exit(i32 -1) #6, !dbg !135
  unreachable, !dbg !135

if.end:                                           ; preds = %entry
  %add = add nsw i32 %key1, 1, !dbg !136
  %nlist = getelementptr inbounds %struct._I2Ohash* %hashtable, i64 0, i32 0, !dbg !136
  %1 = load i32* %nlist, align 4, !dbg !136, !tbaa !92
  %rem = srem i32 %add, %1, !dbg !136
  tail call void @llvm.dbg.value(metadata !{i32 %rem}, i64 0, metadata !54), !dbg !136
  %add2 = add nsw i32 %key2, 1, !dbg !137
  %rem4 = srem i32 %add2, %1, !dbg !137
  tail call void @llvm.dbg.value(metadata !{i32 %rem4}, i64 0, metadata !55), !dbg !137
  %mul = mul nsw i32 %rem4, %rem, !dbg !138
  %rem6 = srem i32 %mul, %1, !dbg !138
  tail call void @llvm.dbg.value(metadata !{i32 %rem6}, i64 0, metadata !53), !dbg !138
  %idxprom = sext i32 %rem6 to i64, !dbg !139
  %heads = getelementptr inbounds %struct._I2Ohash* %hashtable, i64 0, i32 5, !dbg !139
  %2 = load %struct._I2OP*** %heads, align 8, !dbg !139, !tbaa !87
  %arrayidx = getelementptr inbounds %struct._I2OP** %2, i64 %idxprom, !dbg !139
  %i2op.053 = load %struct._I2OP** %arrayidx, align 8, !dbg !139
  %cmp754 = icmp eq %struct._I2OP* %i2op.053, null, !dbg !139
  br i1 %cmp754, label %if.end23, label %for.body, !dbg !139

for.body:                                         ; preds = %if.end, %for.inc
  %i2op.055 = phi %struct._I2OP* [ %i2op.0, %for.inc ], [ %i2op.053, %if.end ]
  %value0 = getelementptr inbounds %struct._I2OP* %i2op.055, i64 0, i32 0, !dbg !141
  %3 = load i32* %value0, align 4, !dbg !141, !tbaa !92
  %cmp8 = icmp sgt i32 %3, %key1, !dbg !141
  br i1 %cmp8, label %land.lhs.true16, label %lor.lhs.false9, !dbg !141

lor.lhs.false9:                                   ; preds = %for.body
  %cmp11 = icmp eq i32 %3, %key1, !dbg !141
  br i1 %cmp11, label %land.lhs.true, label %for.inc, !dbg !141

land.lhs.true:                                    ; preds = %lor.lhs.false9
  %value1 = getelementptr inbounds %struct._I2OP* %i2op.055, i64 0, i32 1, !dbg !141
  %4 = load i32* %value1, align 4, !dbg !141, !tbaa !92
  %cmp12 = icmp slt i32 %4, %key2, !dbg !141
  br i1 %cmp12, label %for.inc, label %land.lhs.true16, !dbg !141

for.inc:                                          ; preds = %land.lhs.true, %lor.lhs.false9
  %next = getelementptr inbounds %struct._I2OP* %i2op.055, i64 0, i32 3, !dbg !143
  %i2op.0 = load %struct._I2OP** %next, align 8, !dbg !139
  %cmp7 = icmp eq %struct._I2OP* %i2op.0, null, !dbg !139
  br i1 %cmp7, label %if.end23, label %for.body, !dbg !139

land.lhs.true16:                                  ; preds = %for.body, %land.lhs.true
  %cmp18 = icmp eq i32 %3, %key1, !dbg !144
  br i1 %cmp18, label %land.lhs.true19, label %if.end23, !dbg !144

land.lhs.true19:                                  ; preds = %land.lhs.true16
  %value120 = getelementptr inbounds %struct._I2OP* %i2op.055, i64 0, i32 1, !dbg !144
  %5 = load i32* %value120, align 4, !dbg !144, !tbaa !92
  %cmp21 = icmp eq i32 %5, %key2, !dbg !144
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !144

if.then22:                                        ; preds = %land.lhs.true19
  %value2 = getelementptr inbounds %struct._I2OP* %i2op.055, i64 0, i32 2, !dbg !145
  %6 = load i8** %value2, align 8, !dbg !145, !tbaa !87
  store i8* %6, i8** %pvalue, align 8, !dbg !145, !tbaa !87
  tail call void @llvm.dbg.value(metadata !147, i64 0, metadata !56), !dbg !148
  br label %if.end23, !dbg !149

if.end23:                                         ; preds = %if.end, %for.inc, %if.then22, %land.lhs.true19, %land.lhs.true16
  %rc.0 = phi i32 [ 1, %if.then22 ], [ 0, %land.lhs.true19 ], [ 0, %land.lhs.true16 ], [ 0, %for.inc ], [ 0, %if.end ]
  ret i32 %rc.0, !dbg !150
}

; Function Attrs: nounwind optsize uwtable
define i32 @I2Ohash_remove(%struct._I2Ohash* %hashtable, i32 %key1, i32 %key2, i8** %pvalue) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._I2Ohash* %hashtable}, i64 0, metadata !60), !dbg !151
  tail call void @llvm.dbg.value(metadata !{i32 %key1}, i64 0, metadata !61), !dbg !152
  tail call void @llvm.dbg.value(metadata !{i32 %key2}, i64 0, metadata !62), !dbg !153
  tail call void @llvm.dbg.value(metadata !{i8** %pvalue}, i64 0, metadata !63), !dbg !154
  %cmp = icmp eq %struct._I2Ohash* %hashtable, null, !dbg !155
  %cmp1 = icmp eq i8** %pvalue, null, !dbg !155
  %or.cond = or i1 %cmp, %cmp1, !dbg !155
  br i1 %or.cond, label %if.then, label %if.end, !dbg !155

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !156, !tbaa !87
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([69 x i8]* @.str3, i64 0, i64 0), %struct._I2Ohash* %hashtable, i32 %key1, i32 %key2, i8** %pvalue) #5, !dbg !156
  tail call void @exit(i32 -1) #6, !dbg !158
  unreachable, !dbg !158

if.end:                                           ; preds = %entry
  %add = add nsw i32 %key1, 1, !dbg !159
  %nlist = getelementptr inbounds %struct._I2Ohash* %hashtable, i64 0, i32 0, !dbg !159
  %1 = load i32* %nlist, align 4, !dbg !159, !tbaa !92
  %rem = srem i32 %add, %1, !dbg !159
  tail call void @llvm.dbg.value(metadata !{i32 %rem}, i64 0, metadata !65), !dbg !159
  %add2 = add nsw i32 %key2, 1, !dbg !160
  %rem4 = srem i32 %add2, %1, !dbg !160
  tail call void @llvm.dbg.value(metadata !{i32 %rem4}, i64 0, metadata !66), !dbg !160
  %mul = mul nsw i32 %rem4, %rem, !dbg !161
  %rem6 = srem i32 %mul, %1, !dbg !161
  tail call void @llvm.dbg.value(metadata !{i32 %rem6}, i64 0, metadata !64), !dbg !161
  %idxprom = sext i32 %rem6 to i64, !dbg !162
  %heads = getelementptr inbounds %struct._I2Ohash* %hashtable, i64 0, i32 5, !dbg !162
  %2 = load %struct._I2OP*** %heads, align 8, !dbg !162, !tbaa !87
  %arrayidx = getelementptr inbounds %struct._I2OP** %2, i64 %idxprom, !dbg !162
  tail call void @llvm.dbg.value(metadata !114, i64 0, metadata !69), !dbg !162
  %i2op.077 = load %struct._I2OP** %arrayidx, align 8, !dbg !162
  %cmp778 = icmp eq %struct._I2OP* %i2op.077, null, !dbg !162
  br i1 %cmp778, label %if.end34, label %for.body, !dbg !162

for.body:                                         ; preds = %if.end, %if.end14
  %i2op.080 = phi %struct._I2OP* [ %i2op.0, %if.end14 ], [ %i2op.077, %if.end ]
  %prev.079 = phi %struct._I2OP* [ %i2op.080, %if.end14 ], [ null, %if.end ]
  %value0 = getelementptr inbounds %struct._I2OP* %i2op.080, i64 0, i32 0, !dbg !164
  %3 = load i32* %value0, align 4, !dbg !164, !tbaa !92
  %cmp8 = icmp sgt i32 %3, %key1, !dbg !164
  br i1 %cmp8, label %land.lhs.true16, label %lor.lhs.false9, !dbg !164

lor.lhs.false9:                                   ; preds = %for.body
  %cmp11 = icmp eq i32 %3, %key1, !dbg !164
  br i1 %cmp11, label %land.lhs.true, label %if.end14, !dbg !164

land.lhs.true:                                    ; preds = %lor.lhs.false9
  %value1 = getelementptr inbounds %struct._I2OP* %i2op.080, i64 0, i32 1, !dbg !164
  %4 = load i32* %value1, align 4, !dbg !164, !tbaa !92
  %cmp12 = icmp slt i32 %4, %key2, !dbg !164
  br i1 %cmp12, label %if.end14, label %land.lhs.true16, !dbg !164

if.end14:                                         ; preds = %land.lhs.true, %lor.lhs.false9
  tail call void @llvm.dbg.value(metadata !{%struct._I2OP* %i2op.080}, i64 0, metadata !69), !dbg !166
  %next = getelementptr inbounds %struct._I2OP* %i2op.080, i64 0, i32 3, !dbg !167
  %i2op.0 = load %struct._I2OP** %next, align 8, !dbg !162
  %cmp7 = icmp eq %struct._I2OP* %i2op.0, null, !dbg !162
  br i1 %cmp7, label %if.end34, label %for.body, !dbg !162

land.lhs.true16:                                  ; preds = %for.body, %land.lhs.true
  %cmp18 = icmp eq i32 %3, %key1, !dbg !168
  br i1 %cmp18, label %land.lhs.true19, label %if.end34, !dbg !168

land.lhs.true19:                                  ; preds = %land.lhs.true16
  %value120 = getelementptr inbounds %struct._I2OP* %i2op.080, i64 0, i32 1, !dbg !168
  %5 = load i32* %value120, align 4, !dbg !168, !tbaa !92
  %cmp21 = icmp eq i32 %5, %key2, !dbg !168
  br i1 %cmp21, label %if.then22, label %if.end34, !dbg !168

if.then22:                                        ; preds = %land.lhs.true19
  %cmp23 = icmp eq %struct._I2OP* %prev.079, null, !dbg !169
  %next25 = getelementptr inbounds %struct._I2OP* %i2op.080, i64 0, i32 3, !dbg !171
  %6 = load %struct._I2OP** %next25, align 8, !dbg !171, !tbaa !87
  br i1 %cmp23, label %if.then24, label %if.else, !dbg !169

if.then24:                                        ; preds = %if.then22
  store %struct._I2OP* %6, %struct._I2OP** %arrayidx, align 8, !dbg !171, !tbaa !87
  br label %if.end31, !dbg !173

if.else:                                          ; preds = %if.then22
  %next30 = getelementptr inbounds %struct._I2OP* %prev.079, i64 0, i32 3, !dbg !174
  store %struct._I2OP* %6, %struct._I2OP** %next30, align 8, !dbg !174, !tbaa !87
  br label %if.end31

if.end31:                                         ; preds = %if.else, %if.then24
  %freeI2OP = getelementptr inbounds %struct._I2Ohash* %hashtable, i64 0, i32 4, !dbg !176
  %7 = load %struct._I2OP** %freeI2OP, align 8, !dbg !176, !tbaa !87
  store %struct._I2OP* %7, %struct._I2OP** %next25, align 8, !dbg !176, !tbaa !87
  store %struct._I2OP* %i2op.080, %struct._I2OP** %freeI2OP, align 8, !dbg !177, !tbaa !87
  %nitem = getelementptr inbounds %struct._I2Ohash* %hashtable, i64 0, i32 2, !dbg !178
  %8 = load i32* %nitem, align 4, !dbg !178, !tbaa !92
  %dec = add nsw i32 %8, -1, !dbg !178
  store i32 %dec, i32* %nitem, align 4, !dbg !178, !tbaa !92
  %value2 = getelementptr inbounds %struct._I2OP* %i2op.080, i64 0, i32 2, !dbg !179
  %9 = load i8** %value2, align 8, !dbg !179, !tbaa !87
  store i8* %9, i8** %pvalue, align 8, !dbg !179, !tbaa !87
  tail call void @llvm.dbg.value(metadata !147, i64 0, metadata !67), !dbg !180
  br label %if.end34, !dbg !181

if.end34:                                         ; preds = %if.end, %if.end14, %if.end31, %land.lhs.true19, %land.lhs.true16
  %rc.0 = phi i32 [ 1, %if.end31 ], [ 0, %land.lhs.true19 ], [ 0, %land.lhs.true16 ], [ 0, %if.end14 ], [ 0, %if.end ]
  ret i32 %rc.0, !dbg !182
}

; Function Attrs: nounwind optsize uwtable
define double @I2Ohash_measure(%struct._I2Ohash* %hashtable) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._I2Ohash* %hashtable}, i64 0, metadata !75), !dbg !183
  %cmp = icmp eq %struct._I2Ohash* %hashtable, null, !dbg !184
  br i1 %cmp, label %if.then, label %for.cond.preheader, !dbg !184

for.cond.preheader:                               ; preds = %entry
  %nlist = getelementptr inbounds %struct._I2Ohash* %hashtable, i64 0, i32 0, !dbg !185
  %0 = load i32* %nlist, align 4, !dbg !185, !tbaa !92
  %cmp128 = icmp sgt i32 %0, 0, !dbg !185
  br i1 %cmp128, label %for.body.lr.ph, label %for.end, !dbg !185

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %heads = getelementptr inbounds %struct._I2Ohash* %hashtable, i64 0, i32 5, !dbg !187
  %1 = load %struct._I2OP*** %heads, align 8, !dbg !187, !tbaa !87
  br label %for.body, !dbg !185

if.then:                                          ; preds = %entry
  %2 = load %struct._IO_FILE** @stderr, align 8, !dbg !189, !tbaa !87
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([57 x i8]* @.str4, i64 0, i64 0), %struct._I2Ohash* null) #5, !dbg !189
  tail call void @exit(i32 -1) #6, !dbg !191
  unreachable, !dbg !191

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.inc ]
  %measure.029 = phi double [ 0.000000e+00, %for.body.lr.ph ], [ %measure.1, %for.inc ]
  %arrayidx = getelementptr inbounds %struct._I2OP** %1, i64 %indvars.iv, !dbg !187
  %3 = load %struct._I2OP** %arrayidx, align 8, !dbg !187, !tbaa !87
  tail call void @llvm.dbg.value(metadata !{%struct._I2OP* %3}, i64 0, metadata !79), !dbg !187
  %cmp2 = icmp eq %struct._I2OP* %3, null, !dbg !187
  br i1 %cmp2, label %for.inc, label %while.body, !dbg !187

while.body:                                       ; preds = %for.body, %while.body
  %i2op.027 = phi %struct._I2OP* [ %4, %while.body ], [ %3, %for.body ]
  %count.026 = phi i32 [ %inc, %while.body ], [ 0, %for.body ]
  %inc = add nsw i32 %count.026, 1, !dbg !192
  tail call void @llvm.dbg.value(metadata !{i32 %inc}, i64 0, metadata !77), !dbg !192
  %next = getelementptr inbounds %struct._I2OP* %i2op.027, i64 0, i32 3, !dbg !195
  %4 = load %struct._I2OP** %next, align 8, !dbg !195, !tbaa !87
  tail call void @llvm.dbg.value(metadata !{%struct._I2OP* %4}, i64 0, metadata !79), !dbg !195
  %cmp4 = icmp eq %struct._I2OP* %4, null, !dbg !196
  br i1 %cmp4, label %while.end, label %while.body, !dbg !196

while.end:                                        ; preds = %while.body
  %mul = mul nsw i32 %inc, %inc, !dbg !197
  %conv = sitofp i32 %mul to double, !dbg !197
  %add = fadd double %measure.029, %conv, !dbg !197
  tail call void @llvm.dbg.value(metadata !{double %add}, i64 0, metadata !76), !dbg !197
  br label %for.inc, !dbg !198

for.inc:                                          ; preds = %for.body, %while.end
  %measure.1 = phi double [ %add, %while.end ], [ %measure.029, %for.body ]
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !185
  %5 = trunc i64 %indvars.iv.next to i32, !dbg !185
  %cmp1 = icmp slt i32 %5, %0, !dbg !185
  br i1 %cmp1, label %for.body, label %for.end, !dbg !185

for.end:                                          ; preds = %for.inc, %for.cond.preheader
  %measure.0.lcssa = phi double [ 0.000000e+00, %for.cond.preheader ], [ %measure.1, %for.inc ]
  %call7 = tail call double @sqrt(double %measure.0.lcssa) #5, !dbg !199
  tail call void @llvm.dbg.value(metadata !{double %call7}, i64 0, metadata !76), !dbg !199
  %6 = load i32* %nlist, align 4, !dbg !200, !tbaa !92
  %conv9 = sitofp i32 %6 to double, !dbg !200
  %call10 = tail call double @sqrt(double %conv9) #5, !dbg !200
  %nitem = getelementptr inbounds %struct._I2Ohash* %hashtable, i64 0, i32 2, !dbg !200
  %7 = load i32* %nitem, align 4, !dbg !200, !tbaa !92
  %conv11 = sitofp i32 %7 to double, !dbg !200
  %div = fdiv double %call10, %conv11, !dbg !200
  %mul12 = fmul double %call7, %div, !dbg !200
  tail call void @llvm.dbg.value(metadata !{double %mul12}, i64 0, metadata !76), !dbg !200
  ret double %mul12, !dbg !201
}

; Function Attrs: nounwind optsize
declare double @sqrt(double) #1

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #4

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone }
attributes #5 = { nounwind optsize }
attributes #6 = { noreturn nounwind optsize }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/I2Ohash/src/I2Ohash_util.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/I2Ohash/src/I2Ohash_util.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4, metadata !44, metadata !58, metadata !70}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"I2Ohash_insert", metadata !"I2Ohash_insert", metadata !"", i32 16, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._I2Ohash*, i32, i32, i8*)* @I2Ohash_insert, null, null, metadata !33, i32 21} ; [ DW_TAG_subprogram ] [line 16] [def] [scope 21] [I2Ohash_insert]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/I2Ohash/src/I2Ohash_util.c]
!6 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{null, metadata !8, metadata !14, metadata !14, metadata !26}
!8 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !9} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from I2Ohash]
!9 = metadata !{i32 786454, metadata !1, null, metadata !"I2Ohash", i32 6, i64 0, i64 0, i64 0, i32 0, metadata !10} ; [ DW_TAG_typedef ] [I2Ohash] [line 6, size 0, align 0, offset 0] [from _I2Ohash]
!10 = metadata !{i32 786451, metadata !11, null, metadata !"_I2Ohash", i32 7, i64 320, i64 64, i32 0, i32 0, null, metadata !12, i32 0, null, null} ; [ DW_TAG_structure_type ] [_I2Ohash] [line 7, size 320, align 64, offset 0] [from ]
!11 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/I2Ohash/src/../I2Ohash.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!12 = metadata !{metadata !13, metadata !15, metadata !16, metadata !17, metadata !30, metadata !31}
!13 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"nlist", i32 8, i64 32, i64 32, i64 0, i32 0, metadata !14} ; [ DW_TAG_member ] [nlist] [line 8, size 32, align 32, offset 0] [from int]
!14 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!15 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"grow", i32 9, i64 32, i64 32, i64 32, i32 0, metadata !14} ; [ DW_TAG_member ] [grow] [line 9, size 32, align 32, offset 32] [from int]
!16 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"nitem", i32 10, i64 32, i64 32, i64 64, i32 0, metadata !14} ; [ DW_TAG_member ] [nitem] [line 10, size 32, align 32, offset 64] [from int]
!17 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"baseI2OP", i32 11, i64 64, i64 64, i64 128, i32 0, metadata !18} ; [ DW_TAG_member ] [baseI2OP] [line 11, size 64, align 64, offset 128] [from ]
!18 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !19} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from I2OP]
!19 = metadata !{i32 786454, metadata !11, null, metadata !"I2OP", i32 5, i64 0, i64 0, i64 0, i32 0, metadata !20} ; [ DW_TAG_typedef ] [I2OP] [line 5, size 0, align 0, offset 0] [from _I2OP]
!20 = metadata !{i32 786451, metadata !21, null, metadata !"_I2OP", i32 6, i64 192, i64 64, i32 0, i32 0, null, metadata !22, i32 0, null, null} ; [ DW_TAG_structure_type ] [_I2OP] [line 6, size 192, align 64, offset 0] [from ]
!21 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/I2Ohash/src/../../Utilities/I2OP.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!22 = metadata !{metadata !23, metadata !24, metadata !25, metadata !27}
!23 = metadata !{i32 786445, metadata !21, metadata !20, metadata !"value0", i32 7, i64 32, i64 32, i64 0, i32 0, metadata !14} ; [ DW_TAG_member ] [value0] [line 7, size 32, align 32, offset 0] [from int]
!24 = metadata !{i32 786445, metadata !21, metadata !20, metadata !"value1", i32 8, i64 32, i64 32, i64 32, i32 0, metadata !14} ; [ DW_TAG_member ] [value1] [line 8, size 32, align 32, offset 32] [from int]
!25 = metadata !{i32 786445, metadata !21, metadata !20, metadata !"value2", i32 9, i64 64, i64 64, i64 64, i32 0, metadata !26} ; [ DW_TAG_member ] [value2] [line 9, size 64, align 64, offset 64] [from ]
!26 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, null} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!27 = metadata !{i32 786445, metadata !21, metadata !20, metadata !"next", i32 10, i64 64, i64 64, i64 128, i32 0, metadata !28} ; [ DW_TAG_member ] [next] [line 10, size 64, align 64, offset 128] [from ]
!28 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !29} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from I2OP]
!29 = metadata !{i32 786454, metadata !21, null, metadata !"I2OP", i32 5, i64 0, i64 0, i64 0, i32 0, metadata !20} ; [ DW_TAG_typedef ] [I2OP] [line 5, size 0, align 0, offset 0] [from _I2OP]
!30 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"freeI2OP", i32 12, i64 64, i64 64, i64 192, i32 0, metadata !18} ; [ DW_TAG_member ] [freeI2OP] [line 12, size 64, align 64, offset 192] [from ]
!31 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"heads", i32 13, i64 64, i64 64, i64 256, i32 0, metadata !32} ; [ DW_TAG_member ] [heads] [line 13, size 64, align 64, offset 256] [from ]
!32 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !18} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!33 = metadata !{metadata !34, metadata !35, metadata !36, metadata !37, metadata !38, metadata !39, metadata !40, metadata !41, metadata !42, metadata !43}
!34 = metadata !{i32 786689, metadata !4, metadata !"hashtable", metadata !5, i32 16777233, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [hashtable] [line 17]
!35 = metadata !{i32 786689, metadata !4, metadata !"key1", metadata !5, i32 33554450, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [key1] [line 18]
!36 = metadata !{i32 786689, metadata !4, metadata !"key2", metadata !5, i32 50331667, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [key2] [line 19]
!37 = metadata !{i32 786689, metadata !4, metadata !"value", metadata !5, i32 67108884, metadata !26, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [value] [line 20]
!38 = metadata !{i32 786688, metadata !4, metadata !"loc", metadata !5, i32 22, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [loc] [line 22]
!39 = metadata !{i32 786688, metadata !4, metadata !"loc1", metadata !5, i32 22, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [loc1] [line 22]
!40 = metadata !{i32 786688, metadata !4, metadata !"loc2", metadata !5, i32 22, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [loc2] [line 22]
!41 = metadata !{i32 786688, metadata !4, metadata !"i2op", metadata !5, i32 23, metadata !18, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i2op] [line 23]
!42 = metadata !{i32 786688, metadata !4, metadata !"j2op", metadata !5, i32 23, metadata !18, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [j2op] [line 23]
!43 = metadata !{i32 786688, metadata !4, metadata !"prev", metadata !5, i32 23, metadata !18, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [prev] [line 23]
!44 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"I2Ohash_locate", metadata !"I2Ohash_locate", metadata !"", i32 135, metadata !45, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct._I2Ohash*, i32, i32, i8**)* @I2Ohash_locate, null, null, metadata !48, i32 140} ; [ DW_TAG_subprogram ] [line 135] [def] [scope 140] [I2Ohash_locate]
!45 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !46, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!46 = metadata !{metadata !14, metadata !8, metadata !14, metadata !14, metadata !47}
!47 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !26} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!48 = metadata !{metadata !49, metadata !50, metadata !51, metadata !52, metadata !53, metadata !54, metadata !55, metadata !56, metadata !57}
!49 = metadata !{i32 786689, metadata !44, metadata !"hashtable", metadata !5, i32 16777352, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [hashtable] [line 136]
!50 = metadata !{i32 786689, metadata !44, metadata !"key1", metadata !5, i32 33554569, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [key1] [line 137]
!51 = metadata !{i32 786689, metadata !44, metadata !"key2", metadata !5, i32 50331786, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [key2] [line 138]
!52 = metadata !{i32 786689, metadata !44, metadata !"pvalue", metadata !5, i32 67109003, metadata !47, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [pvalue] [line 139]
!53 = metadata !{i32 786688, metadata !44, metadata !"loc", metadata !5, i32 141, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [loc] [line 141]
!54 = metadata !{i32 786688, metadata !44, metadata !"loc1", metadata !5, i32 141, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [loc1] [line 141]
!55 = metadata !{i32 786688, metadata !44, metadata !"loc2", metadata !5, i32 141, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [loc2] [line 141]
!56 = metadata !{i32 786688, metadata !44, metadata !"rc", metadata !5, i32 141, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rc] [line 141]
!57 = metadata !{i32 786688, metadata !44, metadata !"i2op", metadata !5, i32 142, metadata !18, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i2op] [line 142]
!58 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"I2Ohash_remove", metadata !"I2Ohash_remove", metadata !"", i32 211, metadata !45, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct._I2Ohash*, i32, i32, i8**)* @I2Ohash_remove, null, null, metadata !59, i32 216} ; [ DW_TAG_subprogram ] [line 211] [def] [scope 216] [I2Ohash_remove]
!59 = metadata !{metadata !60, metadata !61, metadata !62, metadata !63, metadata !64, metadata !65, metadata !66, metadata !67, metadata !68, metadata !69}
!60 = metadata !{i32 786689, metadata !58, metadata !"hashtable", metadata !5, i32 16777428, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [hashtable] [line 212]
!61 = metadata !{i32 786689, metadata !58, metadata !"key1", metadata !5, i32 33554645, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [key1] [line 213]
!62 = metadata !{i32 786689, metadata !58, metadata !"key2", metadata !5, i32 50331862, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [key2] [line 214]
!63 = metadata !{i32 786689, metadata !58, metadata !"pvalue", metadata !5, i32 67109079, metadata !47, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [pvalue] [line 215]
!64 = metadata !{i32 786688, metadata !58, metadata !"loc", metadata !5, i32 217, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [loc] [line 217]
!65 = metadata !{i32 786688, metadata !58, metadata !"loc1", metadata !5, i32 217, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [loc1] [line 217]
!66 = metadata !{i32 786688, metadata !58, metadata !"loc2", metadata !5, i32 217, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [loc2] [line 217]
!67 = metadata !{i32 786688, metadata !58, metadata !"rc", metadata !5, i32 217, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rc] [line 217]
!68 = metadata !{i32 786688, metadata !58, metadata !"i2op", metadata !5, i32 218, metadata !18, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i2op] [line 218]
!69 = metadata !{i32 786688, metadata !58, metadata !"prev", metadata !5, i32 218, metadata !18, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [prev] [line 218]
!70 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"I2Ohash_measure", metadata !"I2Ohash_measure", metadata !"", i32 277, metadata !71, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, double (%struct._I2Ohash*)* @I2Ohash_measure, null, null, metadata !74, i32 279} ; [ DW_TAG_subprogram ] [line 277] [def] [scope 279] [I2Ohash_measure]
!71 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !72, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!72 = metadata !{metadata !73, metadata !8}
!73 = metadata !{i32 786468, null, null, metadata !"double", i32 0, i64 64, i64 64, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [double] [line 0, size 64, align 64, offset 0, enc DW_ATE_float]
!74 = metadata !{metadata !75, metadata !76, metadata !77, metadata !78, metadata !79}
!75 = metadata !{i32 786689, metadata !70, metadata !"hashtable", metadata !5, i32 16777494, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [hashtable] [line 278]
!76 = metadata !{i32 786688, metadata !70, metadata !"measure", metadata !5, i32 280, metadata !73, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [measure] [line 280]
!77 = metadata !{i32 786688, metadata !70, metadata !"count", metadata !5, i32 281, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [count] [line 281]
!78 = metadata !{i32 786688, metadata !70, metadata !"loc", metadata !5, i32 281, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [loc] [line 281]
!79 = metadata !{i32 786688, metadata !70, metadata !"i2op", metadata !5, i32 282, metadata !18, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i2op] [line 282]
!80 = metadata !{i32 17, i32 0, metadata !4, null}
!81 = metadata !{i32 18, i32 0, metadata !4, null}
!82 = metadata !{i32 19, i32 0, metadata !4, null}
!83 = metadata !{i32 20, i32 0, metadata !4, null}
!84 = metadata !{i32 25, i32 0, metadata !4, null}
!85 = metadata !{i32 26, i32 0, metadata !86, null}
!86 = metadata !{i32 786443, metadata !1, metadata !4, i32 25, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/I2Ohash/src/I2Ohash_util.c]
!87 = metadata !{metadata !"any pointer", metadata !88}
!88 = metadata !{metadata !"omnipotent char", metadata !89}
!89 = metadata !{metadata !"Simple C/C++ TBAA"}
!90 = metadata !{i32 28, i32 0, metadata !86, null}
!91 = metadata !{i32 40, i32 0, metadata !4, null}
!92 = metadata !{metadata !"int", metadata !88}
!93 = metadata !{i32 41, i32 0, metadata !4, null}
!94 = metadata !{i32 42, i32 0, metadata !4, null}
!95 = metadata !{i32 56, i32 0, metadata !4, null}
!96 = metadata !{i32 57, i32 0, metadata !97, null}
!97 = metadata !{i32 786443, metadata !1, metadata !4, i32 56, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/I2Ohash/src/I2Ohash_util.c]
!98 = metadata !{i32 58, i32 0, metadata !99, null} ; [ DW_TAG_imported_module ]
!99 = metadata !{i32 786443, metadata !1, metadata !97, i32 57, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/I2Ohash/src/I2Ohash_util.c]
!100 = metadata !{i32 61, i32 0, metadata !99, null}
!101 = metadata !{i32 63, i32 0, metadata !97, null}
!102 = metadata !{i32 64, i32 0, metadata !97, null}
!103 = metadata !{i32 65, i32 0, metadata !97, null}
!104 = metadata !{i32 66, i32 0, metadata !97, null}
!105 = metadata !{i32 67, i32 0, metadata !97, null}
!106 = metadata !{i32 68, i32 0, metadata !97, null}
!107 = metadata !{i32 69, i32 0, metadata !4, null}
!108 = metadata !{i32 75, i32 0, metadata !4, null}
!109 = metadata !{i32 76, i32 0, metadata !4, null}
!110 = metadata !{i32 77, i32 0, metadata !4, null}
!111 = metadata !{i32 78, i32 0, metadata !4, null}
!112 = metadata !{i32 89, i32 0, metadata !113, null}
!113 = metadata !{i32 786443, metadata !1, metadata !4, i32 89, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/I2Ohash/src/I2Ohash_util.c]
!114 = metadata !{%struct._I2OP* null}
!115 = metadata !{i32 96, i32 0, metadata !116, null}
!116 = metadata !{i32 786443, metadata !1, metadata !113, i32 90, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/I2Ohash/src/I2Ohash_util.c]
!117 = metadata !{i32 100, i32 0, metadata !116, null}
!118 = metadata !{i32 90, i32 0, metadata !113, null}
!119 = metadata !{i32 102, i32 0, metadata !4, null}
!120 = metadata !{i32 106, i32 0, metadata !121, null}
!121 = metadata !{i32 786443, metadata !1, metadata !4, i32 102, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/I2Ohash/src/I2Ohash_util.c]
!122 = metadata !{i32 107, i32 0, metadata !121, null}
!123 = metadata !{i32 111, i32 0, metadata !124, null}
!124 = metadata !{i32 786443, metadata !1, metadata !4, i32 107, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/I2Ohash/src/I2Ohash_util.c]
!125 = metadata !{i32 116, i32 0, metadata !4, null}
!126 = metadata !{i32 117, i32 0, metadata !4, null}
!127 = metadata !{i32 119, i32 0, metadata !4, null}
!128 = metadata !{i32 136, i32 0, metadata !44, null}
!129 = metadata !{i32 137, i32 0, metadata !44, null}
!130 = metadata !{i32 138, i32 0, metadata !44, null}
!131 = metadata !{i32 139, i32 0, metadata !44, null}
!132 = metadata !{i32 148, i32 0, metadata !44, null}
!133 = metadata !{i32 149, i32 0, metadata !134, null}
!134 = metadata !{i32 786443, metadata !1, metadata !44, i32 148, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/I2Ohash/src/I2Ohash_util.c]
!135 = metadata !{i32 152, i32 0, metadata !134, null}
!136 = metadata !{i32 159, i32 0, metadata !44, null}
!137 = metadata !{i32 160, i32 0, metadata !44, null}
!138 = metadata !{i32 161, i32 0, metadata !44, null}
!139 = metadata !{i32 171, i32 0, metadata !140, null}
!140 = metadata !{i32 786443, metadata !1, metadata !44, i32 171, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/I2Ohash/src/I2Ohash_util.c]
!141 = metadata !{i32 180, i32 0, metadata !142, null}
!142 = metadata !{i32 786443, metadata !1, metadata !140, i32 173, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/I2Ohash/src/I2Ohash_util.c]
!143 = metadata !{i32 173, i32 0, metadata !140, null}
!144 = metadata !{i32 186, i32 0, metadata !44, null}
!145 = metadata !{i32 192, i32 0, metadata !146, null}
!146 = metadata !{i32 786443, metadata !1, metadata !44, i32 186, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/I2Ohash/src/I2Ohash_util.c]
!147 = metadata !{i32 1}
!148 = metadata !{i32 193, i32 0, metadata !146, null}
!149 = metadata !{i32 194, i32 0, metadata !146, null}
!150 = metadata !{i32 195, i32 0, metadata !44, null}
!151 = metadata !{i32 212, i32 0, metadata !58, null}
!152 = metadata !{i32 213, i32 0, metadata !58, null}
!153 = metadata !{i32 214, i32 0, metadata !58, null}
!154 = metadata !{i32 215, i32 0, metadata !58, null}
!155 = metadata !{i32 224, i32 0, metadata !58, null}
!156 = metadata !{i32 225, i32 0, metadata !157, null}
!157 = metadata !{i32 786443, metadata !1, metadata !58, i32 224, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/I2Ohash/src/I2Ohash_util.c]
!158 = metadata !{i32 228, i32 0, metadata !157, null}
!159 = metadata !{i32 230, i32 0, metadata !58, null}
!160 = metadata !{i32 231, i32 0, metadata !58, null}
!161 = metadata !{i32 232, i32 0, metadata !58, null}
!162 = metadata !{i32 238, i32 0, metadata !163, null}
!163 = metadata !{i32 786443, metadata !1, metadata !58, i32 238, i32 0, i32 14} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/I2Ohash/src/I2Ohash_util.c]
!164 = metadata !{i32 241, i32 0, metadata !165, null}
!165 = metadata !{i32 786443, metadata !1, metadata !163, i32 240, i32 0, i32 15} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/I2Ohash/src/I2Ohash_util.c]
!166 = metadata !{i32 245, i32 0, metadata !165, null}
!167 = metadata !{i32 240, i32 0, metadata !163, null}
!168 = metadata !{i32 248, i32 0, metadata !58, null}
!169 = metadata !{i32 254, i32 0, metadata !170, null}
!170 = metadata !{i32 786443, metadata !1, metadata !58, i32 248, i32 0, i32 17} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/I2Ohash/src/I2Ohash_util.c]
!171 = metadata !{i32 255, i32 0, metadata !172, null}
!172 = metadata !{i32 786443, metadata !1, metadata !170, i32 254, i32 0, i32 18} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/I2Ohash/src/I2Ohash_util.c]
!173 = metadata !{i32 256, i32 0, metadata !172, null}
!174 = metadata !{i32 257, i32 0, metadata !175, null}
!175 = metadata !{i32 786443, metadata !1, metadata !170, i32 256, i32 0, i32 19} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/I2Ohash/src/I2Ohash_util.c]
!176 = metadata !{i32 259, i32 0, metadata !170, null}
!177 = metadata !{i32 260, i32 0, metadata !170, null}
!178 = metadata !{i32 261, i32 0, metadata !170, null}
!179 = metadata !{i32 262, i32 0, metadata !170, null}
!180 = metadata !{i32 263, i32 0, metadata !170, null}
!181 = metadata !{i32 264, i32 0, metadata !170, null}
!182 = metadata !{i32 265, i32 0, metadata !58, null}
!183 = metadata !{i32 278, i32 0, metadata !70, null}
!184 = metadata !{i32 284, i32 0, metadata !70, null}
!185 = metadata !{i32 290, i32 0, metadata !186, null}
!186 = metadata !{i32 786443, metadata !1, metadata !70, i32 290, i32 0, i32 21} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/I2Ohash/src/I2Ohash_util.c]
!187 = metadata !{i32 291, i32 0, metadata !188, null}
!188 = metadata !{i32 786443, metadata !1, metadata !186, i32 290, i32 0, i32 22} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/I2Ohash/src/I2Ohash_util.c]
!189 = metadata !{i32 285, i32 0, metadata !190, null}
!190 = metadata !{i32 786443, metadata !1, metadata !70, i32 284, i32 0, i32 20} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/I2Ohash/src/I2Ohash_util.c]
!191 = metadata !{i32 287, i32 0, metadata !190, null}
!192 = metadata !{i32 294, i32 0, metadata !193, null}
!193 = metadata !{i32 786443, metadata !1, metadata !194, i32 293, i32 0, i32 24} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/I2Ohash/src/I2Ohash_util.c]
!194 = metadata !{i32 786443, metadata !1, metadata !188, i32 291, i32 0, i32 23} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/I2Ohash/src/I2Ohash_util.c]
!195 = metadata !{i32 295, i32 0, metadata !193, null}
!196 = metadata !{i32 293, i32 0, metadata !194, null}
!197 = metadata !{i32 297, i32 0, metadata !194, null}
!198 = metadata !{i32 298, i32 0, metadata !194, null}
!199 = metadata !{i32 300, i32 0, metadata !70, null}
!200 = metadata !{i32 301, i32 0, metadata !70, null}
!201 = metadata !{i32 303, i32 0, metadata !70, null}
