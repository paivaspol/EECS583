; ModuleID = '../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/IIheap/src/IIheap_basics.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct._IIheap = type { i32, i32, i32*, i32*, i32* }

@stderr = external global %struct._IO_FILE*
@.str = private unnamed_addr constant [49 x i8] c"\0A ALLOCATE failure : bytes %zd, line %d, file %s\00", align 1
@.str1 = private unnamed_addr constant [81 x i8] c"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/IIheap/src/IIheap_basics.c\00", align 1
@.str2 = private unnamed_addr constant [60 x i8] c"\0A fatal error in IIheap_setDefaultFields(%p)\0A heap is NULL\0A\00", align 1
@.str3 = private unnamed_addr constant [53 x i8] c"\0A fatal error in IIheap_clearData(%p)\0A heap is NULL\0A\00", align 1
@.str4 = private unnamed_addr constant [48 x i8] c"\0A fatal error in IIheap_free(%p)\0A heap is NULL\0A\00", align 1
@.str5 = private unnamed_addr constant [74 x i8] c"\0A\0A error in IIheap_init(%p,%d)\0A heap is NULL or size = %d is nonpositive\0A\00", align 1
@.str6 = private unnamed_addr constant [80 x i8] c"\0A\0A error in IIheap_root(%p,%p,%p)\0A heap is NULL or pid is NULL or pkey is NULL\0A\00", align 1
@.str7 = private unnamed_addr constant [83 x i8] c"\0A error in IIheap_insert(%p,%d,%d)\0A heap is NULL or pair (%d,%d) is out of bounds\0A\00", align 1
@.str8 = private unnamed_addr constant [71 x i8] c"\0A error in IIheap_insert(%p,%d,%d)\0A object (%d,%d) is already in heap\0A\00", align 1
@.str9 = private unnamed_addr constant [56 x i8] c"\0A error in IIheap_insert(%p,%d,%d)\0A heap size exceeded\0A\00", align 1
@.str10 = private unnamed_addr constant [79 x i8] c"\0A error in IIheap_remove(%p,%d)\0A heap is NULL or object (%d) is out of bounds\0A\00", align 1
@.str11 = private unnamed_addr constant [55 x i8] c"\0A error in IIheap_remove(%p,%d)\0A object %d not in heap\00", align 1
@.str12 = private unnamed_addr constant [75 x i8] c"\0A fatal error in IIheap_print(%p,%p)\0A heap is NULL or file pointer is NULL\00", align 1
@.str13 = private unnamed_addr constant [41 x i8] c"\0A\0A IIheap : present size %d, max size %d\00", align 1
@.str14 = private unnamed_addr constant [41 x i8] c"\0A contents of heap : (location id value)\00", align 1
@.str15 = private unnamed_addr constant [14 x i8] c"\0A %8d %8d %8d\00", align 1
@.str16 = private unnamed_addr constant [19 x i8] c"\0A locations of ids\00", align 1
@.str17 = private unnamed_addr constant [78 x i8] c"\0A fatal error in IIheap_siftUp(%p,%d)\0A heap is NULL or loc = %d out of range\0A\00", align 1
@.str18 = private unnamed_addr constant [80 x i8] c"\0A fatal error in IIheap_siftDown(%p,%d)\0A heap is NULL or loc = %d out of range\0A\00", align 1

; Function Attrs: nounwind optsize uwtable
define %struct._IIheap* @IIheap_new() #0 {
entry:
  %call = tail call noalias i8* @malloc(i64 32) #7, !dbg !154
  %0 = bitcast i8* %call to %struct._IIheap*, !dbg !154
  tail call void @llvm.dbg.value(metadata !{%struct._IIheap* %0}, i64 0, metadata !21), !dbg !154
  %cmp = icmp eq i8* %call, null, !dbg !154
  br i1 %cmp, label %if.then, label %if.end, !dbg !154

if.then:                                          ; preds = %entry
  %1 = load %struct._IO_FILE** @stderr, align 8, !dbg !156, !tbaa !158
  %call1 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([49 x i8]* @.str, i64 0, i64 0), i64 32, i32 22, i8* getelementptr inbounds ([81 x i8]* @.str1, i64 0, i64 0)) #7, !dbg !156
  tail call void @exit(i32 -1) #8, !dbg !156
  unreachable, !dbg !156

if.end:                                           ; preds = %entry
  tail call void @IIheap_setDefaultFields(%struct._IIheap* %0) #9, !dbg !161
  ret %struct._IIheap* %0, !dbg !162
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

; Function Attrs: nounwind optsize
declare noalias i8* @malloc(i64) #2

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #2

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32) #3

; Function Attrs: nounwind optsize uwtable
define void @IIheap_setDefaultFields(%struct._IIheap* %heap) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._IIheap* %heap}, i64 0, metadata !26), !dbg !163
  %cmp = icmp eq %struct._IIheap* %heap, null, !dbg !164
  br i1 %cmp, label %if.then, label %if.end, !dbg !164

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !165, !tbaa !158
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([60 x i8]* @.str2, i64 0, i64 0), %struct._IIheap* null) #7, !dbg !165
  tail call void @exit(i32 -1) #8, !dbg !167
  unreachable, !dbg !167

if.end:                                           ; preds = %entry
  %1 = bitcast %struct._IIheap* %heap to i8*, !dbg !168
  call void @llvm.memset.p0i8.i64(i8* %1, i8 0, i64 32, i32 4, i1 false), !dbg !169
  ret void, !dbg !168
}

; Function Attrs: nounwind optsize uwtable
define void @IIheap_clearData(%struct._IIheap* %heap) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._IIheap* %heap}, i64 0, metadata !29), !dbg !170
  %cmp = icmp eq %struct._IIheap* %heap, null, !dbg !171
  br i1 %cmp, label %if.then, label %if.end, !dbg !171

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !172, !tbaa !158
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([53 x i8]* @.str3, i64 0, i64 0), %struct._IIheap* null) #7, !dbg !172
  tail call void @exit(i32 -1) #8, !dbg !174
  unreachable, !dbg !174

if.end:                                           ; preds = %entry
  %heapLoc = getelementptr inbounds %struct._IIheap* %heap, i64 0, i32 2, !dbg !175
  %1 = load i32** %heapLoc, align 8, !dbg !175, !tbaa !158
  %cmp1 = icmp eq i32* %1, null, !dbg !175
  br i1 %cmp1, label %if.end4, label %if.then2, !dbg !175

if.then2:                                         ; preds = %if.end
  tail call void @IVfree(i32* %1) #7, !dbg !176
  br label %if.end4, !dbg !178

if.end4:                                          ; preds = %if.end, %if.then2
  %keys = getelementptr inbounds %struct._IIheap* %heap, i64 0, i32 3, !dbg !179
  %2 = load i32** %keys, align 8, !dbg !179, !tbaa !158
  %cmp5 = icmp eq i32* %2, null, !dbg !179
  br i1 %cmp5, label %if.end8, label %if.then6, !dbg !179

if.then6:                                         ; preds = %if.end4
  tail call void @IVfree(i32* %2) #7, !dbg !180
  br label %if.end8, !dbg !182

if.end8:                                          ; preds = %if.end4, %if.then6
  %values = getelementptr inbounds %struct._IIheap* %heap, i64 0, i32 4, !dbg !183
  %3 = load i32** %values, align 8, !dbg !183, !tbaa !158
  %cmp9 = icmp eq i32* %3, null, !dbg !183
  br i1 %cmp9, label %if.end12, label %if.then10, !dbg !183

if.then10:                                        ; preds = %if.end8
  tail call void @IVfree(i32* %3) #7, !dbg !184
  br label %if.end12, !dbg !186

if.end12:                                         ; preds = %if.end8, %if.then10
  tail call void @IIheap_setDefaultFields(%struct._IIheap* %heap) #9, !dbg !187
  ret void, !dbg !188
}

; Function Attrs: optsize
declare void @IVfree(i32*) #4

; Function Attrs: nounwind optsize uwtable
define void @IIheap_free(%struct._IIheap* %heap) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._IIheap* %heap}, i64 0, metadata !32), !dbg !189
  %cmp = icmp eq %struct._IIheap* %heap, null, !dbg !190
  br i1 %cmp, label %if.then, label %if.end, !dbg !190

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !191, !tbaa !158
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([48 x i8]* @.str4, i64 0, i64 0), %struct._IIheap* null) #7, !dbg !191
  tail call void @exit(i32 -1) #8, !dbg !193
  unreachable, !dbg !193

if.end:                                           ; preds = %entry
  tail call void @IIheap_clearData(%struct._IIheap* %heap) #9, !dbg !194
  %1 = bitcast %struct._IIheap* %heap to i8*, !dbg !195
  tail call void @free(i8* %1) #7, !dbg !195
  tail call void @llvm.dbg.value(metadata !197, i64 0, metadata !32), !dbg !195
  ret void, !dbg !198
}

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) #2

; Function Attrs: nounwind optsize uwtable
define void @IIheap_init(%struct._IIheap* %heap, i32 %maxsize) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._IIheap* %heap}, i64 0, metadata !37), !dbg !199
  tail call void @llvm.dbg.value(metadata !{i32 %maxsize}, i64 0, metadata !38), !dbg !200
  %cmp = icmp eq %struct._IIheap* %heap, null, !dbg !201
  %cmp1 = icmp slt i32 %maxsize, 1, !dbg !201
  %or.cond = or i1 %cmp, %cmp1, !dbg !201
  br i1 %or.cond, label %if.then, label %if.end, !dbg !201

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !202, !tbaa !158
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([74 x i8]* @.str5, i64 0, i64 0), %struct._IIheap* %heap, i32 %maxsize, i32 %maxsize) #7, !dbg !202
  tail call void @exit(i32 -1) #8, !dbg !204
  unreachable, !dbg !204

if.end:                                           ; preds = %entry
  tail call void @IIheap_clearData(%struct._IIheap* %heap) #9, !dbg !205
  %maxsize2 = getelementptr inbounds %struct._IIheap* %heap, i64 0, i32 1, !dbg !206
  store i32 %maxsize, i32* %maxsize2, align 4, !dbg !206, !tbaa !207
  %call3 = tail call i32* @IVinit(i32 %maxsize, i32 -1) #7, !dbg !208
  %heapLoc = getelementptr inbounds %struct._IIheap* %heap, i64 0, i32 2, !dbg !208
  store i32* %call3, i32** %heapLoc, align 8, !dbg !208, !tbaa !158
  %call4 = tail call i32* @IVinit(i32 %maxsize, i32 -1) #7, !dbg !209
  %keys = getelementptr inbounds %struct._IIheap* %heap, i64 0, i32 3, !dbg !209
  store i32* %call4, i32** %keys, align 8, !dbg !209, !tbaa !158
  %call5 = tail call i32* @IVinit(i32 %maxsize, i32 -1) #7, !dbg !210
  %values = getelementptr inbounds %struct._IIheap* %heap, i64 0, i32 4, !dbg !210
  store i32* %call5, i32** %values, align 8, !dbg !210, !tbaa !158
  ret void, !dbg !211
}

; Function Attrs: optsize
declare i32* @IVinit(i32, i32) #4

; Function Attrs: nounwind optsize uwtable
define void @IIheap_root(%struct._IIheap* %heap, i32* %pkey, i32* %pvalue) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._IIheap* %heap}, i64 0, metadata !43), !dbg !212
  tail call void @llvm.dbg.value(metadata !{i32* %pkey}, i64 0, metadata !44), !dbg !213
  tail call void @llvm.dbg.value(metadata !{i32* %pvalue}, i64 0, metadata !45), !dbg !214
  %cmp = icmp eq %struct._IIheap* %heap, null, !dbg !215
  %cmp1 = icmp eq i32* %pkey, null, !dbg !215
  %or.cond = or i1 %cmp, %cmp1, !dbg !215
  %cmp3 = icmp eq i32* %pvalue, null, !dbg !215
  %or.cond18 = or i1 %or.cond, %cmp3, !dbg !215
  br i1 %or.cond18, label %if.then, label %if.end, !dbg !215

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !216, !tbaa !158
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([80 x i8]* @.str6, i64 0, i64 0), %struct._IIheap* %heap, i32* %pkey, i32* %pvalue) #7, !dbg !216
  tail call void @exit(i32 -1) #8, !dbg !218
  unreachable, !dbg !218

if.end:                                           ; preds = %entry
  %size = getelementptr inbounds %struct._IIheap* %heap, i64 0, i32 0, !dbg !219
  %1 = load i32* %size, align 4, !dbg !219, !tbaa !207
  %cmp4 = icmp sgt i32 %1, 0, !dbg !219
  br i1 %cmp4, label %if.then5, label %if.else, !dbg !219

if.then5:                                         ; preds = %if.end
  %keys = getelementptr inbounds %struct._IIheap* %heap, i64 0, i32 3, !dbg !220
  %2 = load i32** %keys, align 8, !dbg !220, !tbaa !158
  %3 = load i32* %2, align 4, !dbg !220, !tbaa !207
  store i32 %3, i32* %pkey, align 4, !dbg !220, !tbaa !207
  %values = getelementptr inbounds %struct._IIheap* %heap, i64 0, i32 4, !dbg !222
  %4 = load i32** %values, align 8, !dbg !222, !tbaa !158
  %5 = load i32* %4, align 4, !dbg !222, !tbaa !207
  store i32 %5, i32* %pvalue, align 4, !dbg !222, !tbaa !207
  br label %if.end7, !dbg !223

if.else:                                          ; preds = %if.end
  store i32 -1, i32* %pvalue, align 4, !dbg !224, !tbaa !207
  store i32 -1, i32* %pkey, align 4, !dbg !224, !tbaa !207
  br label %if.end7

if.end7:                                          ; preds = %if.else, %if.then5
  ret void, !dbg !226
}

; Function Attrs: nounwind optsize uwtable
define void @IIheap_insert(%struct._IIheap* %heap, i32 %key, i32 %value) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._IIheap* %heap}, i64 0, metadata !50), !dbg !227
  tail call void @llvm.dbg.value(metadata !{i32 %key}, i64 0, metadata !51), !dbg !228
  tail call void @llvm.dbg.value(metadata !{i32 %value}, i64 0, metadata !52), !dbg !229
  %cmp = icmp eq %struct._IIheap* %heap, null, !dbg !230
  %cmp1 = icmp slt i32 %key, 0, !dbg !230
  %or.cond = or i1 %cmp, %cmp1, !dbg !230
  br i1 %or.cond, label %if.then, label %lor.lhs.false2, !dbg !230

lor.lhs.false2:                                   ; preds = %entry
  %maxsize = getelementptr inbounds %struct._IIheap* %heap, i64 0, i32 1, !dbg !230
  %0 = load i32* %maxsize, align 4, !dbg !230, !tbaa !207
  %cmp3 = icmp sgt i32 %0, %key, !dbg !230
  br i1 %cmp3, label %if.end, label %if.then, !dbg !230

if.then:                                          ; preds = %lor.lhs.false2, %entry
  %1 = load %struct._IO_FILE** @stderr, align 8, !dbg !231, !tbaa !158
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([83 x i8]* @.str7, i64 0, i64 0), %struct._IIheap* %heap, i32 %key, i32 %value, i32 %key, i32 %value) #7, !dbg !231
  tail call void @exit(i32 -1) #8, !dbg !233
  unreachable, !dbg !233

if.end:                                           ; preds = %lor.lhs.false2
  %idxprom = sext i32 %key to i64, !dbg !234
  %heapLoc = getelementptr inbounds %struct._IIheap* %heap, i64 0, i32 2, !dbg !234
  %2 = load i32** %heapLoc, align 8, !dbg !234, !tbaa !158
  %arrayidx = getelementptr inbounds i32* %2, i64 %idxprom, !dbg !234
  %3 = load i32* %arrayidx, align 4, !dbg !234, !tbaa !207
  %cmp4 = icmp eq i32 %3, -1, !dbg !234
  br i1 %cmp4, label %if.end7, label %if.then5, !dbg !234

if.then5:                                         ; preds = %if.end
  %4 = load %struct._IO_FILE** @stderr, align 8, !dbg !235, !tbaa !158
  %call6 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([71 x i8]* @.str8, i64 0, i64 0), %struct._IIheap* %heap, i32 %key, i32 %value, i32 %key, i32 %value) #7, !dbg !235
  tail call void @exit(i32 -1) #8, !dbg !237
  unreachable, !dbg !237

if.end7:                                          ; preds = %if.end
  %size = getelementptr inbounds %struct._IIheap* %heap, i64 0, i32 0, !dbg !238
  %5 = load i32* %size, align 4, !dbg !238, !tbaa !207
  %cmp9 = icmp eq i32 %5, %0, !dbg !238
  br i1 %cmp9, label %if.then10, label %if.end12, !dbg !238

if.then10:                                        ; preds = %if.end7
  %6 = load %struct._IO_FILE** @stderr, align 8, !dbg !239, !tbaa !158
  %call11 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %6, i8* getelementptr inbounds ([56 x i8]* @.str9, i64 0, i64 0), %struct._IIheap* %heap, i32 %key, i32 %value) #7, !dbg !239
  tail call void @exit(i32 -1) #8, !dbg !241
  unreachable, !dbg !241

if.end12:                                         ; preds = %if.end7
  %inc = add nsw i32 %5, 1, !dbg !242
  store i32 %inc, i32* %size, align 4, !dbg !242, !tbaa !207
  tail call void @llvm.dbg.value(metadata !{i32 %5}, i64 0, metadata !53), !dbg !242
  store i32 %5, i32* %arrayidx, align 4, !dbg !242, !tbaa !207
  %idxprom17 = sext i32 %5 to i64, !dbg !243
  %keys = getelementptr inbounds %struct._IIheap* %heap, i64 0, i32 3, !dbg !243
  %7 = load i32** %keys, align 8, !dbg !243, !tbaa !158
  %arrayidx18 = getelementptr inbounds i32* %7, i64 %idxprom17, !dbg !243
  store i32 %key, i32* %arrayidx18, align 4, !dbg !243, !tbaa !207
  %values = getelementptr inbounds %struct._IIheap* %heap, i64 0, i32 4, !dbg !244
  %8 = load i32** %values, align 8, !dbg !244, !tbaa !158
  %arrayidx20 = getelementptr inbounds i32* %8, i64 %idxprom17, !dbg !244
  store i32 %value, i32* %arrayidx20, align 4, !dbg !244, !tbaa !207
  tail call fastcc void @IIheap_siftUp(%struct._IIheap* %heap, i32 %5) #9, !dbg !245
  ret void, !dbg !246
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @IIheap_siftUp(%struct._IIheap* %heap, i32 %loc) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._IIheap* %heap}, i64 0, metadata !135), !dbg !247
  tail call void @llvm.dbg.value(metadata !{i32 %loc}, i64 0, metadata !136), !dbg !248
  %cmp = icmp eq %struct._IIheap* %heap, null, !dbg !249
  %cmp1 = icmp slt i32 %loc, 0, !dbg !249
  %or.cond = or i1 %cmp, %cmp1, !dbg !249
  br i1 %or.cond, label %if.then, label %lor.lhs.false2, !dbg !249

lor.lhs.false2:                                   ; preds = %entry
  %size = getelementptr inbounds %struct._IIheap* %heap, i64 0, i32 0, !dbg !249
  %0 = load i32* %size, align 4, !dbg !249, !tbaa !207
  %cmp3 = icmp sgt i32 %0, %loc, !dbg !249
  br i1 %cmp3, label %if.end, label %if.then, !dbg !249

if.then:                                          ; preds = %lor.lhs.false2, %entry
  %1 = load %struct._IO_FILE** @stderr, align 8, !dbg !250, !tbaa !158
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([78 x i8]* @.str17, i64 0, i64 0), %struct._IIheap* %heap, i32 %loc, i32 %loc) #7, !dbg !250
  tail call void @exit(i32 -1) #8, !dbg !252
  unreachable, !dbg !252

if.end:                                           ; preds = %lor.lhs.false2
  %heapLoc4 = getelementptr inbounds %struct._IIheap* %heap, i64 0, i32 2, !dbg !253
  %2 = load i32** %heapLoc4, align 8, !dbg !253, !tbaa !158
  tail call void @llvm.dbg.value(metadata !{i32* %2}, i64 0, metadata !139), !dbg !253
  %keys5 = getelementptr inbounds %struct._IIheap* %heap, i64 0, i32 3, !dbg !254
  %3 = load i32** %keys5, align 8, !dbg !254, !tbaa !158
  tail call void @llvm.dbg.value(metadata !{i32* %3}, i64 0, metadata !140), !dbg !254
  %values6 = getelementptr inbounds %struct._IIheap* %heap, i64 0, i32 4, !dbg !255
  %4 = load i32** %values6, align 8, !dbg !255, !tbaa !158
  tail call void @llvm.dbg.value(metadata !{i32* %4}, i64 0, metadata !141), !dbg !255
  %cmp773 = icmp eq i32 %loc, 0, !dbg !256
  br i1 %cmp773, label %while.end, label %while.body, !dbg !256

while.body:                                       ; preds = %if.end, %if.then11
  %loc.addr.074 = phi i32 [ %div, %if.then11 ], [ %loc, %if.end ]
  %sub = add nsw i32 %loc.addr.074, -1, !dbg !257
  %div = sdiv i32 %sub, 2, !dbg !257
  tail call void @llvm.dbg.value(metadata !{i32 %div}, i64 0, metadata !138), !dbg !257
  %idxprom = sext i32 %div to i64, !dbg !259
  %arrayidx = getelementptr inbounds i32* %4, i64 %idxprom, !dbg !259
  %5 = load i32* %arrayidx, align 4, !dbg !259, !tbaa !207
  %idxprom8 = sext i32 %loc.addr.074 to i64, !dbg !259
  %arrayidx9 = getelementptr inbounds i32* %4, i64 %idxprom8, !dbg !259
  %6 = load i32* %arrayidx9, align 4, !dbg !259, !tbaa !207
  %cmp10 = icmp slt i32 %5, %6, !dbg !259
  br i1 %cmp10, label %while.end, label %if.then11, !dbg !259

if.then11:                                        ; preds = %while.body
  tail call void @llvm.dbg.value(metadata !{i32 %5}, i64 0, metadata !137), !dbg !260
  store i32 %6, i32* %arrayidx, align 4, !dbg !262, !tbaa !207
  store i32 %5, i32* %arrayidx9, align 4, !dbg !263, !tbaa !207
  %arrayidx21 = getelementptr inbounds i32* %3, i64 %idxprom, !dbg !264
  %7 = load i32* %arrayidx21, align 4, !dbg !264, !tbaa !207
  tail call void @llvm.dbg.value(metadata !{i32 %7}, i64 0, metadata !137), !dbg !264
  %arrayidx23 = getelementptr inbounds i32* %3, i64 %idxprom8, !dbg !265
  %8 = load i32* %arrayidx23, align 4, !dbg !265, !tbaa !207
  store i32 %8, i32* %arrayidx21, align 4, !dbg !265, !tbaa !207
  store i32 %7, i32* %arrayidx23, align 4, !dbg !266, !tbaa !207
  %idxprom30 = sext i32 %7 to i64, !dbg !267
  %arrayidx31 = getelementptr inbounds i32* %2, i64 %idxprom30, !dbg !267
  store i32 %loc.addr.074, i32* %arrayidx31, align 4, !dbg !267, !tbaa !207
  %9 = load i32* %arrayidx21, align 4, !dbg !268, !tbaa !207
  %idxprom34 = sext i32 %9 to i64, !dbg !268
  %arrayidx35 = getelementptr inbounds i32* %2, i64 %idxprom34, !dbg !268
  store i32 %div, i32* %arrayidx35, align 4, !dbg !268, !tbaa !207
  tail call void @llvm.dbg.value(metadata !{i32 %div}, i64 0, metadata !136), !dbg !269
  %10 = icmp ult i32 %loc.addr.074, 3, !dbg !256
  br i1 %10, label %while.end, label %while.body, !dbg !256

while.end:                                        ; preds = %if.then11, %while.body, %if.end
  ret void, !dbg !270
}

; Function Attrs: nounwind optsize uwtable
define void @IIheap_remove(%struct._IIheap* %heap, i32 %key) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._IIheap* %heap}, i64 0, metadata !56), !dbg !271
  tail call void @llvm.dbg.value(metadata !{i32 %key}, i64 0, metadata !57), !dbg !272
  %cmp = icmp eq %struct._IIheap* %heap, null, !dbg !273
  %cmp1 = icmp slt i32 %key, 0, !dbg !273
  %or.cond = or i1 %cmp, %cmp1, !dbg !273
  br i1 %or.cond, label %if.then, label %lor.lhs.false2, !dbg !273

lor.lhs.false2:                                   ; preds = %entry
  %maxsize = getelementptr inbounds %struct._IIheap* %heap, i64 0, i32 1, !dbg !273
  %0 = load i32* %maxsize, align 4, !dbg !273, !tbaa !207
  %cmp3 = icmp sgt i32 %0, %key, !dbg !273
  br i1 %cmp3, label %if.end, label %if.then, !dbg !273

if.then:                                          ; preds = %lor.lhs.false2, %entry
  %1 = load %struct._IO_FILE** @stderr, align 8, !dbg !274, !tbaa !158
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([79 x i8]* @.str10, i64 0, i64 0), %struct._IIheap* %heap, i32 %key, i32 %key) #7, !dbg !274
  tail call void @exit(i32 -1) #8, !dbg !276
  unreachable, !dbg !276

if.end:                                           ; preds = %lor.lhs.false2
  %idxprom = sext i32 %key to i64, !dbg !277
  %heapLoc = getelementptr inbounds %struct._IIheap* %heap, i64 0, i32 2, !dbg !277
  %2 = load i32** %heapLoc, align 8, !dbg !277, !tbaa !158
  %arrayidx = getelementptr inbounds i32* %2, i64 %idxprom, !dbg !277
  %3 = load i32* %arrayidx, align 4, !dbg !277, !tbaa !207
  tail call void @llvm.dbg.value(metadata !{i32 %3}, i64 0, metadata !59), !dbg !277
  %cmp4 = icmp eq i32 %3, -1, !dbg !277
  br i1 %cmp4, label %if.then5, label %if.end7, !dbg !277

if.then5:                                         ; preds = %if.end
  %4 = load %struct._IO_FILE** @stderr, align 8, !dbg !278, !tbaa !158
  %call6 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([55 x i8]* @.str11, i64 0, i64 0), %struct._IIheap* %heap, i32 %key, i32 %key) #7, !dbg !278
  tail call void @exit(i32 -1) #8, !dbg !280
  unreachable, !dbg !280

if.end7:                                          ; preds = %if.end
  %size = getelementptr inbounds %struct._IIheap* %heap, i64 0, i32 0, !dbg !281
  %5 = load i32* %size, align 4, !dbg !281, !tbaa !207
  %dec = add nsw i32 %5, -1, !dbg !281
  store i32 %dec, i32* %size, align 4, !dbg !281, !tbaa !207
  tail call void @llvm.dbg.value(metadata !{i32 %dec}, i64 0, metadata !58), !dbg !281
  %cmp8 = icmp eq i32 %3, %dec, !dbg !281
  store i32 -1, i32* %arrayidx, align 4, !dbg !282, !tbaa !207
  br i1 %cmp8, label %if.then9, label %if.else, !dbg !281

if.then9:                                         ; preds = %if.end7
  %idxprom13 = sext i32 %3 to i64, !dbg !284
  %keys = getelementptr inbounds %struct._IIheap* %heap, i64 0, i32 3, !dbg !284
  %6 = load i32** %keys, align 8, !dbg !284, !tbaa !158
  %arrayidx14 = getelementptr inbounds i32* %6, i64 %idxprom13, !dbg !284
  store i32 -1, i32* %arrayidx14, align 4, !dbg !284, !tbaa !207
  %values = getelementptr inbounds %struct._IIheap* %heap, i64 0, i32 4, !dbg !285
  %7 = load i32** %values, align 8, !dbg !285, !tbaa !158
  %arrayidx16 = getelementptr inbounds i32* %7, i64 %idxprom13, !dbg !285
  store i32 0, i32* %arrayidx16, align 4, !dbg !285, !tbaa !207
  br label %if.end51, !dbg !286

if.else:                                          ; preds = %if.end7
  %idxprom20 = sext i32 %dec to i64, !dbg !287
  %keys21 = getelementptr inbounds %struct._IIheap* %heap, i64 0, i32 3, !dbg !287
  %8 = load i32** %keys21, align 8, !dbg !287, !tbaa !158
  %arrayidx22 = getelementptr inbounds i32* %8, i64 %idxprom20, !dbg !287
  %9 = load i32* %arrayidx22, align 4, !dbg !287, !tbaa !207
  tail call void @llvm.dbg.value(metadata !{i32 %9}, i64 0, metadata !60), !dbg !287
  %idxprom23 = sext i32 %9 to i64, !dbg !289
  %arrayidx25 = getelementptr inbounds i32* %2, i64 %idxprom23, !dbg !289
  store i32 %3, i32* %arrayidx25, align 4, !dbg !289, !tbaa !207
  %idxprom26 = sext i32 %3 to i64, !dbg !290
  %arrayidx28 = getelementptr inbounds i32* %8, i64 %idxprom26, !dbg !290
  store i32 %9, i32* %arrayidx28, align 4, !dbg !290, !tbaa !207
  store i32 -1, i32* %arrayidx22, align 4, !dbg !291, !tbaa !207
  %values33 = getelementptr inbounds %struct._IIheap* %heap, i64 0, i32 4, !dbg !292
  %10 = load i32** %values33, align 8, !dbg !292, !tbaa !158
  %arrayidx34 = getelementptr inbounds i32* %10, i64 %idxprom26, !dbg !292
  %11 = load i32* %arrayidx34, align 4, !dbg !292, !tbaa !207
  tail call void @llvm.dbg.value(metadata !{i32 %11}, i64 0, metadata !62), !dbg !292
  %arrayidx37 = getelementptr inbounds i32* %10, i64 %idxprom20, !dbg !293
  %12 = load i32* %arrayidx37, align 4, !dbg !293, !tbaa !207
  tail call void @llvm.dbg.value(metadata !{i32 %12}, i64 0, metadata !61), !dbg !293
  store i32 %12, i32* %arrayidx34, align 4, !dbg !293, !tbaa !207
  store i32 0, i32* %arrayidx37, align 4, !dbg !294, !tbaa !207
  %cmp44 = icmp sgt i32 %11, %12, !dbg !295
  br i1 %cmp44, label %if.then45, label %if.else46, !dbg !295

if.then45:                                        ; preds = %if.else
  tail call fastcc void @IIheap_siftUp(%struct._IIheap* %heap, i32 %3) #9, !dbg !296
  br label %if.end51, !dbg !298

if.else46:                                        ; preds = %if.else
  %cmp47 = icmp slt i32 %11, %12, !dbg !299
  br i1 %cmp47, label %if.then48, label %if.end51, !dbg !299

if.then48:                                        ; preds = %if.else46
  tail call void @llvm.dbg.value(metadata !{%struct._IIheap* %heap}, i64 0, metadata !300) #6, !dbg !303
  tail call void @llvm.dbg.value(metadata !{i32 %3}, i64 0, metadata !304) #6, !dbg !305
  %cmp1.i = icmp slt i32 %3, 0, !dbg !306
  br i1 %cmp1.i, label %if.then.i, label %lor.lhs.false2.i, !dbg !306

lor.lhs.false2.i:                                 ; preds = %if.then48
  %13 = load i32* %size, align 4, !dbg !306, !tbaa !207
  %cmp4.i = icmp sgt i32 %13, %3, !dbg !306
  br i1 %cmp4.i, label %if.end.i, label %if.then.i, !dbg !306

if.then.i:                                        ; preds = %lor.lhs.false2.i, %if.then48
  %14 = load %struct._IO_FILE** @stderr, align 8, !dbg !307, !tbaa !158
  %call.i = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %14, i8* getelementptr inbounds ([80 x i8]* @.str18, i64 0, i64 0), %struct._IIheap* %heap, i32 %3, i32 %3) #7, !dbg !307
  tail call void @exit(i32 -1) #8, !dbg !309
  unreachable, !dbg !309

if.end.i:                                         ; preds = %lor.lhs.false2.i
  tail call void @llvm.dbg.value(metadata !{i32 %13}, i64 0, metadata !310) #6, !dbg !311
  tail call void @llvm.dbg.value(metadata !{i32* %2}, i64 0, metadata !312) #6, !dbg !313
  tail call void @llvm.dbg.value(metadata !{i32* %8}, i64 0, metadata !314) #6, !dbg !315
  tail call void @llvm.dbg.value(metadata !{i32* %10}, i64 0, metadata !316) #6, !dbg !317
  %mul100.i = shl nsw i32 %3, 1, !dbg !318
  %add99101.i = or i32 %mul100.i, 1, !dbg !318
  tail call void @llvm.dbg.value(metadata !{i32 %add99101.i}, i64 0, metadata !320) #6, !dbg !318
  %cmp10103.i = icmp slt i32 %add99101.i, %13, !dbg !321
  br i1 %cmp10103.i, label %if.else.i, label %if.end51, !dbg !321

if.else.i:                                        ; preds = %if.end.i, %if.then28.i
  %add9106.in.i = phi i32 [ %add99.i, %if.then28.i ], [ %add99101.i, %if.end.i ]
  %loc.addr.0104.i = phi i32 [ %desc.0.i, %if.then28.i ], [ %3, %if.end.i ]
  %add9106.i = add nsw i32 %add9106.in.i, 1, !dbg !322
  %cmp12.i = icmp slt i32 %add9106.i, %13, !dbg !323
  br i1 %cmp12.i, label %if.else14.i, label %if.end22.i, !dbg !323

if.else14.i:                                      ; preds = %if.else.i
  %idxprom.i = sext i32 %add9106.in.i to i64, !dbg !324
  %arrayidx.i = getelementptr inbounds i32* %10, i64 %idxprom.i, !dbg !324
  %15 = load i32* %arrayidx.i, align 4, !dbg !324, !tbaa !207
  %idxprom15.i = sext i32 %add9106.i to i64, !dbg !324
  %arrayidx16.i = getelementptr inbounds i32* %10, i64 %idxprom15.i, !dbg !324
  %16 = load i32* %arrayidx16.i, align 4, !dbg !324, !tbaa !207
  %cmp17.i = icmp sgt i32 %15, %16, !dbg !324
  %add9.add99.i = select i1 %cmp17.i, i32 %add9106.i, i32 %add9106.in.i
  br label %if.end22.i

if.end22.i:                                       ; preds = %if.else14.i, %if.else.i
  %desc.0.i = phi i32 [ %add9106.in.i, %if.else.i ], [ %add9.add99.i, %if.else14.i ]
  %idxprom23.i = sext i32 %desc.0.i to i64, !dbg !326
  %arrayidx24.i = getelementptr inbounds i32* %10, i64 %idxprom23.i, !dbg !326
  %17 = load i32* %arrayidx24.i, align 4, !dbg !326, !tbaa !207
  %idxprom25.i = sext i32 %loc.addr.0104.i to i64, !dbg !326
  %arrayidx26.i = getelementptr inbounds i32* %10, i64 %idxprom25.i, !dbg !326
  %18 = load i32* %arrayidx26.i, align 4, !dbg !326, !tbaa !207
  %cmp27.i = icmp sgt i32 %17, %18, !dbg !326
  br i1 %cmp27.i, label %if.end51, label %if.then28.i, !dbg !326

if.then28.i:                                      ; preds = %if.end22.i
  tail call void @llvm.dbg.value(metadata !{i32 %17}, i64 0, metadata !327) #6, !dbg !328
  store i32 %18, i32* %arrayidx24.i, align 4, !dbg !330, !tbaa !207
  store i32 %17, i32* %arrayidx26.i, align 4, !dbg !331, !tbaa !207
  %arrayidx38.i = getelementptr inbounds i32* %8, i64 %idxprom23.i, !dbg !332
  %19 = load i32* %arrayidx38.i, align 4, !dbg !332, !tbaa !207
  tail call void @llvm.dbg.value(metadata !{i32 %19}, i64 0, metadata !327) #6, !dbg !332
  %arrayidx40.i = getelementptr inbounds i32* %8, i64 %idxprom25.i, !dbg !333
  %20 = load i32* %arrayidx40.i, align 4, !dbg !333, !tbaa !207
  store i32 %20, i32* %arrayidx38.i, align 4, !dbg !333, !tbaa !207
  store i32 %19, i32* %arrayidx40.i, align 4, !dbg !334, !tbaa !207
  %idxprom47.i = sext i32 %19 to i64, !dbg !335
  %arrayidx48.i = getelementptr inbounds i32* %2, i64 %idxprom47.i, !dbg !335
  store i32 %loc.addr.0104.i, i32* %arrayidx48.i, align 4, !dbg !335, !tbaa !207
  %21 = load i32* %arrayidx38.i, align 4, !dbg !336, !tbaa !207
  %idxprom51.i = sext i32 %21 to i64, !dbg !336
  %arrayidx52.i = getelementptr inbounds i32* %2, i64 %idxprom51.i, !dbg !336
  store i32 %desc.0.i, i32* %arrayidx52.i, align 4, !dbg !336, !tbaa !207
  tail call void @llvm.dbg.value(metadata !{i32 %desc.0.i}, i64 0, metadata !304) #6, !dbg !337
  %mul.i = shl nsw i32 %desc.0.i, 1, !dbg !318
  %add99.i = or i32 %mul.i, 1, !dbg !318
  tail call void @llvm.dbg.value(metadata !{i32 %add9106.in.i}, i64 0, metadata !320) #6, !dbg !318
  tail call void @llvm.dbg.value(metadata !{i32 %add9106.i}, i64 0, metadata !338) #6, !dbg !322
  %cmp10.i = icmp slt i32 %add99.i, %13, !dbg !321
  br i1 %cmp10.i, label %if.else.i, label %if.end51, !dbg !321

if.end51:                                         ; preds = %if.then28.i, %if.end22.i, %if.end.i, %if.then45, %if.else46, %if.then9
  ret void, !dbg !339
}

; Function Attrs: nounwind optsize uwtable
define void @IIheap_print(%struct._IIheap* %heap, %struct._IO_FILE* %fp) #0 {
entry:
  %ierr = alloca i32, align 4
  call void @llvm.dbg.value(metadata !{%struct._IIheap* %heap}, i64 0, metadata !124), !dbg !340
  call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %fp}, i64 0, metadata !125), !dbg !341
  call void @llvm.dbg.declare(metadata !{i32* %ierr}, metadata !126), !dbg !342
  %cmp = icmp eq %struct._IIheap* %heap, null, !dbg !343
  %cmp1 = icmp eq %struct._IO_FILE* %fp, null, !dbg !343
  %or.cond = or i1 %cmp, %cmp1, !dbg !343
  br i1 %or.cond, label %if.then, label %if.end, !dbg !343

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !344, !tbaa !158
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([75 x i8]* @.str12, i64 0, i64 0), %struct._IIheap* %heap, %struct._IO_FILE* %fp) #7, !dbg !344
  call void @exit(i32 -1) #8, !dbg !346
  unreachable, !dbg !346

if.end:                                           ; preds = %entry
  %size = getelementptr inbounds %struct._IIheap* %heap, i64 0, i32 0, !dbg !347
  %1 = load i32* %size, align 4, !dbg !347, !tbaa !207
  %maxsize = getelementptr inbounds %struct._IIheap* %heap, i64 0, i32 1, !dbg !347
  %2 = load i32* %maxsize, align 4, !dbg !347, !tbaa !207
  %call2 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([41 x i8]* @.str13, i64 0, i64 0), i32 %1, i32 %2) #7, !dbg !347
  %3 = load i32* %size, align 4, !dbg !348, !tbaa !207
  %cmp4 = icmp sgt i32 %3, 0, !dbg !348
  br i1 %cmp4, label %if.then5, label %if.end15, !dbg !348

if.then5:                                         ; preds = %if.end
  %4 = call i64 @fwrite(i8* getelementptr inbounds ([41 x i8]* @.str14, i64 0, i64 0), i64 40, i64 1, %struct._IO_FILE* %fp), !dbg !349
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !127), !dbg !351
  %5 = load i32* %size, align 4, !dbg !351, !tbaa !207
  %cmp834 = icmp sgt i32 %5, 0, !dbg !351
  br i1 %cmp834, label %for.body.lr.ph, label %for.end, !dbg !351

for.body.lr.ph:                                   ; preds = %if.then5
  %keys = getelementptr inbounds %struct._IIheap* %heap, i64 0, i32 3, !dbg !353
  %values = getelementptr inbounds %struct._IIheap* %heap, i64 0, i32 4, !dbg !353
  br label %for.body, !dbg !351

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.body ]
  %6 = load i32** %keys, align 8, !dbg !353, !tbaa !158
  %arrayidx = getelementptr inbounds i32* %6, i64 %indvars.iv, !dbg !353
  %7 = load i32* %arrayidx, align 4, !dbg !353, !tbaa !207
  %8 = load i32** %values, align 8, !dbg !353, !tbaa !158
  %arrayidx10 = getelementptr inbounds i32* %8, i64 %indvars.iv, !dbg !353
  %9 = load i32* %arrayidx10, align 4, !dbg !353, !tbaa !207
  %10 = trunc i64 %indvars.iv to i32, !dbg !353
  %call11 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([14 x i8]* @.str15, i64 0, i64 0), i32 %10, i32 %7, i32 %9) #7, !dbg !353
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !351
  %11 = load i32* %size, align 4, !dbg !351, !tbaa !207
  %12 = trunc i64 %indvars.iv.next to i32, !dbg !351
  %cmp8 = icmp slt i32 %12, %11, !dbg !351
  br i1 %cmp8, label %for.body, label %for.end, !dbg !351

for.end:                                          ; preds = %for.body, %if.then5
  %13 = call i64 @fwrite(i8* getelementptr inbounds ([19 x i8]* @.str16, i64 0, i64 0), i64 18, i64 1, %struct._IO_FILE* %fp), !dbg !355
  %14 = load i32* %maxsize, align 4, !dbg !356, !tbaa !207
  %heapLoc = getelementptr inbounds %struct._IIheap* %heap, i64 0, i32 2, !dbg !356
  %15 = load i32** %heapLoc, align 8, !dbg !356, !tbaa !158
  %call14 = call i32 @IVfp80(%struct._IO_FILE* %fp, i32 %14, i32* %15, i32 80, i32* %ierr) #7, !dbg !356
  br label %if.end15, !dbg !357

if.end15:                                         ; preds = %for.end, %if.end
  ret void, !dbg !358
}

; Function Attrs: optsize
declare i32 @IVfp80(%struct._IO_FILE*, i32, i32*, i32, i32*) #4

; Function Attrs: nounwind optsize readonly uwtable
define i32 @IIheap_sizeOf(%struct._IIheap* nocapture %heap) #5 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._IIheap* %heap}, i64 0, metadata !132), !dbg !359
  %maxsize = getelementptr inbounds %struct._IIheap* %heap, i64 0, i32 1, !dbg !360
  %0 = load i32* %maxsize, align 4, !dbg !360, !tbaa !207
  %mul1 = mul i32 %0, 12, !dbg !360
  %add = add i32 %mul1, 32, !dbg !360
  ret i32 %add, !dbg !360
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #1

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #6

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #6

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind optsize readonly uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }
attributes #7 = { nounwind optsize }
attributes #8 = { noreturn nounwind optsize }
attributes #9 = { optsize }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/IIheap/src/IIheap_basics.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/IIheap/src/IIheap_basics.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4, metadata !22, metadata !27, metadata !30, metadata !33, metadata !39, metadata !46, metadata !54, metadata !63, metadata !128, metadata !133, metadata !142}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"IIheap_new", metadata !"IIheap_new", metadata !"", i32 17, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, %struct._IIheap* ()* @IIheap_new, null, null, metadata !20, i32 19} ; [ DW_TAG_subprogram ] [line 17] [def] [scope 19] [IIheap_new]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/IIheap/src/IIheap_basics.c]
!6 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8}
!8 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !9} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from IIheap]
!9 = metadata !{i32 786454, metadata !1, null, metadata !"IIheap", i32 20, i64 0, i64 0, i64 0, i32 0, metadata !10} ; [ DW_TAG_typedef ] [IIheap] [line 20, size 0, align 0, offset 0] [from _IIheap]
!10 = metadata !{i32 786451, metadata !11, null, metadata !"_IIheap", i32 21, i64 256, i64 64, i32 0, i32 0, null, metadata !12, i32 0, null, null} ; [ DW_TAG_structure_type ] [_IIheap] [line 21, size 256, align 64, offset 0] [from ]
!11 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/IIheap/src/../IIheap.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!12 = metadata !{metadata !13, metadata !15, metadata !16, metadata !18, metadata !19}
!13 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"size", i32 22, i64 32, i64 32, i64 0, i32 0, metadata !14} ; [ DW_TAG_member ] [size] [line 22, size 32, align 32, offset 0] [from int]
!14 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!15 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"maxsize", i32 23, i64 32, i64 32, i64 32, i32 0, metadata !14} ; [ DW_TAG_member ] [maxsize] [line 23, size 32, align 32, offset 32] [from int]
!16 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"heapLoc", i32 24, i64 64, i64 64, i64 64, i32 0, metadata !17} ; [ DW_TAG_member ] [heapLoc] [line 24, size 64, align 64, offset 64] [from ]
!17 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !14} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from int]
!18 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"keys", i32 25, i64 64, i64 64, i64 128, i32 0, metadata !17} ; [ DW_TAG_member ] [keys] [line 25, size 64, align 64, offset 128] [from ]
!19 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"values", i32 26, i64 64, i64 64, i64 192, i32 0, metadata !17} ; [ DW_TAG_member ] [values] [line 26, size 64, align 64, offset 192] [from ]
!20 = metadata !{metadata !21}
!21 = metadata !{i32 786688, metadata !4, metadata !"heap", metadata !5, i32 20, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [heap] [line 20]
!22 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"IIheap_setDefaultFields", metadata !"IIheap_setDefaultFields", metadata !"", i32 37, metadata !23, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._IIheap*)* @IIheap_setDefaultFields, null, null, metadata !25, i32 39} ; [ DW_TAG_subprogram ] [line 37] [def] [scope 39] [IIheap_setDefaultFields]
!23 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !24, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!24 = metadata !{null, metadata !8}
!25 = metadata !{metadata !26}
!26 = metadata !{i32 786689, metadata !22, metadata !"heap", metadata !5, i32 16777254, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [heap] [line 38]
!27 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"IIheap_clearData", metadata !"IIheap_clearData", metadata !"", i32 62, metadata !23, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._IIheap*)* @IIheap_clearData, null, null, metadata !28, i32 64} ; [ DW_TAG_subprogram ] [line 62] [def] [scope 64] [IIheap_clearData]
!28 = metadata !{metadata !29}
!29 = metadata !{i32 786689, metadata !27, metadata !"heap", metadata !5, i32 16777279, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [heap] [line 63]
!30 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"IIheap_free", metadata !"IIheap_free", metadata !"", i32 92, metadata !23, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._IIheap*)* @IIheap_free, null, null, metadata !31, i32 94} ; [ DW_TAG_subprogram ] [line 92] [def] [scope 94] [IIheap_free]
!31 = metadata !{metadata !32}
!32 = metadata !{i32 786689, metadata !30, metadata !"heap", metadata !5, i32 16777309, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [heap] [line 93]
!33 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"IIheap_init", metadata !"IIheap_init", metadata !"", i32 116, metadata !34, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._IIheap*, i32)* @IIheap_init, null, null, metadata !36, i32 119} ; [ DW_TAG_subprogram ] [line 116] [def] [scope 119] [IIheap_init]
!34 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !35, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!35 = metadata !{null, metadata !8, metadata !14}
!36 = metadata !{metadata !37, metadata !38}
!37 = metadata !{i32 786689, metadata !33, metadata !"heap", metadata !5, i32 16777333, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [heap] [line 117]
!38 = metadata !{i32 786689, metadata !33, metadata !"maxsize", metadata !5, i32 33554550, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [maxsize] [line 118]
!39 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"IIheap_root", metadata !"IIheap_root", metadata !"", i32 144, metadata !40, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._IIheap*, i32*, i32*)* @IIheap_root, null, null, metadata !42, i32 148} ; [ DW_TAG_subprogram ] [line 144] [def] [scope 148] [IIheap_root]
!40 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !41, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!41 = metadata !{null, metadata !8, metadata !17, metadata !17}
!42 = metadata !{metadata !43, metadata !44, metadata !45}
!43 = metadata !{i32 786689, metadata !39, metadata !"heap", metadata !5, i32 16777361, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [heap] [line 145]
!44 = metadata !{i32 786689, metadata !39, metadata !"pkey", metadata !5, i32 33554578, metadata !17, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [pkey] [line 146]
!45 = metadata !{i32 786689, metadata !39, metadata !"pvalue", metadata !5, i32 50331795, metadata !17, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [pvalue] [line 147]
!46 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"IIheap_insert", metadata !"IIheap_insert", metadata !"", i32 174, metadata !47, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._IIheap*, i32, i32)* @IIheap_insert, null, null, metadata !49, i32 178} ; [ DW_TAG_subprogram ] [line 174] [def] [scope 178] [IIheap_insert]
!47 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !48, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!48 = metadata !{null, metadata !8, metadata !14, metadata !14}
!49 = metadata !{metadata !50, metadata !51, metadata !52, metadata !53}
!50 = metadata !{i32 786689, metadata !46, metadata !"heap", metadata !5, i32 16777391, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [heap] [line 175]
!51 = metadata !{i32 786689, metadata !46, metadata !"key", metadata !5, i32 33554608, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [key] [line 176]
!52 = metadata !{i32 786689, metadata !46, metadata !"value", metadata !5, i32 50331825, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [value] [line 177]
!53 = metadata !{i32 786688, metadata !46, metadata !"loc", metadata !5, i32 179, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [loc] [line 179]
!54 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"IIheap_remove", metadata !"IIheap_remove", metadata !"", i32 219, metadata !34, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._IIheap*, i32)* @IIheap_remove, null, null, metadata !55, i32 222} ; [ DW_TAG_subprogram ] [line 219] [def] [scope 222] [IIheap_remove]
!55 = metadata !{metadata !56, metadata !57, metadata !58, metadata !59, metadata !60, metadata !61, metadata !62}
!56 = metadata !{i32 786689, metadata !54, metadata !"heap", metadata !5, i32 16777436, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [heap] [line 220]
!57 = metadata !{i32 786689, metadata !54, metadata !"key", metadata !5, i32 33554653, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [key] [line 221]
!58 = metadata !{i32 786688, metadata !54, metadata !"last", metadata !5, i32 223, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [last] [line 223]
!59 = metadata !{i32 786688, metadata !54, metadata !"loc", metadata !5, i32 223, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [loc] [line 223]
!60 = metadata !{i32 786688, metadata !54, metadata !"newkey", metadata !5, i32 223, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [newkey] [line 223]
!61 = metadata !{i32 786688, metadata !54, metadata !"newVal", metadata !5, i32 223, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [newVal] [line 223]
!62 = metadata !{i32 786688, metadata !54, metadata !"oldVal", metadata !5, i32 223, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [oldVal] [line 223]
!63 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"IIheap_print", metadata !"IIheap_print", metadata !"", i32 286, metadata !64, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._IIheap*, %struct._IO_FILE*)* @IIheap_print, null, null, metadata !123, i32 289} ; [ DW_TAG_subprogram ] [line 286] [def] [scope 289] [IIheap_print]
!64 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !65, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!65 = metadata !{null, metadata !8, metadata !66}
!66 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !67} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from FILE]
!67 = metadata !{i32 786454, metadata !1, null, metadata !"FILE", i32 48, i64 0, i64 0, i64 0, i32 0, metadata !68} ; [ DW_TAG_typedef ] [FILE] [line 48, size 0, align 0, offset 0] [from _IO_FILE]
!68 = metadata !{i32 786451, metadata !69, null, metadata !"_IO_FILE", i32 245, i64 1728, i64 64, i32 0, i32 0, null, metadata !70, i32 0, null, null} ; [ DW_TAG_structure_type ] [_IO_FILE] [line 245, size 1728, align 64, offset 0] [from ]
!69 = metadata !{metadata !"/usr/include/libio.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!70 = metadata !{metadata !71, metadata !72, metadata !75, metadata !76, metadata !77, metadata !78, metadata !79, metadata !80, metadata !81, metadata !82, metadata !83, metadata !84, metadata !85, metadata !93, metadata !94, metadata !95, metadata !96, metadata !99, metadata !101, metadata !103, metadata !107, metadata !109, metadata !111, metadata !112, metadata !113, metadata !114, metadata !115, metadata !118, metadata !119}
!71 = metadata !{i32 786445, metadata !69, metadata !68, metadata !"_flags", i32 246, i64 32, i64 32, i64 0, i32 0, metadata !14} ; [ DW_TAG_member ] [_flags] [line 246, size 32, align 32, offset 0] [from int]
!72 = metadata !{i32 786445, metadata !69, metadata !68, metadata !"_IO_read_ptr", i32 251, i64 64, i64 64, i64 64, i32 0, metadata !73} ; [ DW_TAG_member ] [_IO_read_ptr] [line 251, size 64, align 64, offset 64] [from ]
!73 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !74} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from char]
!74 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!75 = metadata !{i32 786445, metadata !69, metadata !68, metadata !"_IO_read_end", i32 252, i64 64, i64 64, i64 128, i32 0, metadata !73} ; [ DW_TAG_member ] [_IO_read_end] [line 252, size 64, align 64, offset 128] [from ]
!76 = metadata !{i32 786445, metadata !69, metadata !68, metadata !"_IO_read_base", i32 253, i64 64, i64 64, i64 192, i32 0, metadata !73} ; [ DW_TAG_member ] [_IO_read_base] [line 253, size 64, align 64, offset 192] [from ]
!77 = metadata !{i32 786445, metadata !69, metadata !68, metadata !"_IO_write_base", i32 254, i64 64, i64 64, i64 256, i32 0, metadata !73} ; [ DW_TAG_member ] [_IO_write_base] [line 254, size 64, align 64, offset 256] [from ]
!78 = metadata !{i32 786445, metadata !69, metadata !68, metadata !"_IO_write_ptr", i32 255, i64 64, i64 64, i64 320, i32 0, metadata !73} ; [ DW_TAG_member ] [_IO_write_ptr] [line 255, size 64, align 64, offset 320] [from ]
!79 = metadata !{i32 786445, metadata !69, metadata !68, metadata !"_IO_write_end", i32 256, i64 64, i64 64, i64 384, i32 0, metadata !73} ; [ DW_TAG_member ] [_IO_write_end] [line 256, size 64, align 64, offset 384] [from ]
!80 = metadata !{i32 786445, metadata !69, metadata !68, metadata !"_IO_buf_base", i32 257, i64 64, i64 64, i64 448, i32 0, metadata !73} ; [ DW_TAG_member ] [_IO_buf_base] [line 257, size 64, align 64, offset 448] [from ]
!81 = metadata !{i32 786445, metadata !69, metadata !68, metadata !"_IO_buf_end", i32 258, i64 64, i64 64, i64 512, i32 0, metadata !73} ; [ DW_TAG_member ] [_IO_buf_end] [line 258, size 64, align 64, offset 512] [from ]
!82 = metadata !{i32 786445, metadata !69, metadata !68, metadata !"_IO_save_base", i32 260, i64 64, i64 64, i64 576, i32 0, metadata !73} ; [ DW_TAG_member ] [_IO_save_base] [line 260, size 64, align 64, offset 576] [from ]
!83 = metadata !{i32 786445, metadata !69, metadata !68, metadata !"_IO_backup_base", i32 261, i64 64, i64 64, i64 640, i32 0, metadata !73} ; [ DW_TAG_member ] [_IO_backup_base] [line 261, size 64, align 64, offset 640] [from ]
!84 = metadata !{i32 786445, metadata !69, metadata !68, metadata !"_IO_save_end", i32 262, i64 64, i64 64, i64 704, i32 0, metadata !73} ; [ DW_TAG_member ] [_IO_save_end] [line 262, size 64, align 64, offset 704] [from ]
!85 = metadata !{i32 786445, metadata !69, metadata !68, metadata !"_markers", i32 264, i64 64, i64 64, i64 768, i32 0, metadata !86} ; [ DW_TAG_member ] [_markers] [line 264, size 64, align 64, offset 768] [from ]
!86 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !87} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from _IO_marker]
!87 = metadata !{i32 786451, metadata !69, null, metadata !"_IO_marker", i32 160, i64 192, i64 64, i32 0, i32 0, null, metadata !88, i32 0, null, null} ; [ DW_TAG_structure_type ] [_IO_marker] [line 160, size 192, align 64, offset 0] [from ]
!88 = metadata !{metadata !89, metadata !90, metadata !92}
!89 = metadata !{i32 786445, metadata !69, metadata !87, metadata !"_next", i32 161, i64 64, i64 64, i64 0, i32 0, metadata !86} ; [ DW_TAG_member ] [_next] [line 161, size 64, align 64, offset 0] [from ]
!90 = metadata !{i32 786445, metadata !69, metadata !87, metadata !"_sbuf", i32 162, i64 64, i64 64, i64 64, i32 0, metadata !91} ; [ DW_TAG_member ] [_sbuf] [line 162, size 64, align 64, offset 64] [from ]
!91 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !68} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from _IO_FILE]
!92 = metadata !{i32 786445, metadata !69, metadata !87, metadata !"_pos", i32 166, i64 32, i64 32, i64 128, i32 0, metadata !14} ; [ DW_TAG_member ] [_pos] [line 166, size 32, align 32, offset 128] [from int]
!93 = metadata !{i32 786445, metadata !69, metadata !68, metadata !"_chain", i32 266, i64 64, i64 64, i64 832, i32 0, metadata !91} ; [ DW_TAG_member ] [_chain] [line 266, size 64, align 64, offset 832] [from ]
!94 = metadata !{i32 786445, metadata !69, metadata !68, metadata !"_fileno", i32 268, i64 32, i64 32, i64 896, i32 0, metadata !14} ; [ DW_TAG_member ] [_fileno] [line 268, size 32, align 32, offset 896] [from int]
!95 = metadata !{i32 786445, metadata !69, metadata !68, metadata !"_flags2", i32 272, i64 32, i64 32, i64 928, i32 0, metadata !14} ; [ DW_TAG_member ] [_flags2] [line 272, size 32, align 32, offset 928] [from int]
!96 = metadata !{i32 786445, metadata !69, metadata !68, metadata !"_old_offset", i32 274, i64 64, i64 64, i64 960, i32 0, metadata !97} ; [ DW_TAG_member ] [_old_offset] [line 274, size 64, align 64, offset 960] [from __off_t]
!97 = metadata !{i32 786454, metadata !69, null, metadata !"__off_t", i32 131, i64 0, i64 0, i64 0, i32 0, metadata !98} ; [ DW_TAG_typedef ] [__off_t] [line 131, size 0, align 0, offset 0] [from long int]
!98 = metadata !{i32 786468, null, null, metadata !"long int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [long int] [line 0, size 64, align 64, offset 0, enc DW_ATE_signed]
!99 = metadata !{i32 786445, metadata !69, metadata !68, metadata !"_cur_column", i32 278, i64 16, i64 16, i64 1024, i32 0, metadata !100} ; [ DW_TAG_member ] [_cur_column] [line 278, size 16, align 16, offset 1024] [from unsigned short]
!100 = metadata !{i32 786468, null, null, metadata !"unsigned short", i32 0, i64 16, i64 16, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned short] [line 0, size 16, align 16, offset 0, enc DW_ATE_unsigned]
!101 = metadata !{i32 786445, metadata !69, metadata !68, metadata !"_vtable_offset", i32 279, i64 8, i64 8, i64 1040, i32 0, metadata !102} ; [ DW_TAG_member ] [_vtable_offset] [line 279, size 8, align 8, offset 1040] [from signed char]
!102 = metadata !{i32 786468, null, null, metadata !"signed char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [signed char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!103 = metadata !{i32 786445, metadata !69, metadata !68, metadata !"_shortbuf", i32 280, i64 8, i64 8, i64 1048, i32 0, metadata !104} ; [ DW_TAG_member ] [_shortbuf] [line 280, size 8, align 8, offset 1048] [from ]
!104 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 8, i64 8, i32 0, i32 0, metadata !74, metadata !105, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 8, align 8, offset 0] [from char]
!105 = metadata !{metadata !106}
!106 = metadata !{i32 786465, i64 0, i64 1}       ; [ DW_TAG_subrange_type ] [0, 0]
!107 = metadata !{i32 786445, metadata !69, metadata !68, metadata !"_lock", i32 284, i64 64, i64 64, i64 1088, i32 0, metadata !108} ; [ DW_TAG_member ] [_lock] [line 284, size 64, align 64, offset 1088] [from ]
!108 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, null} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!109 = metadata !{i32 786445, metadata !69, metadata !68, metadata !"_offset", i32 293, i64 64, i64 64, i64 1152, i32 0, metadata !110} ; [ DW_TAG_member ] [_offset] [line 293, size 64, align 64, offset 1152] [from __off64_t]
!110 = metadata !{i32 786454, metadata !69, null, metadata !"__off64_t", i32 132, i64 0, i64 0, i64 0, i32 0, metadata !98} ; [ DW_TAG_typedef ] [__off64_t] [line 132, size 0, align 0, offset 0] [from long int]
!111 = metadata !{i32 786445, metadata !69, metadata !68, metadata !"__pad1", i32 302, i64 64, i64 64, i64 1216, i32 0, metadata !108} ; [ DW_TAG_member ] [__pad1] [line 302, size 64, align 64, offset 1216] [from ]
!112 = metadata !{i32 786445, metadata !69, metadata !68, metadata !"__pad2", i32 303, i64 64, i64 64, i64 1280, i32 0, metadata !108} ; [ DW_TAG_member ] [__pad2] [line 303, size 64, align 64, offset 1280] [from ]
!113 = metadata !{i32 786445, metadata !69, metadata !68, metadata !"__pad3", i32 304, i64 64, i64 64, i64 1344, i32 0, metadata !108} ; [ DW_TAG_member ] [__pad3] [line 304, size 64, align 64, offset 1344] [from ]
!114 = metadata !{i32 786445, metadata !69, metadata !68, metadata !"__pad4", i32 305, i64 64, i64 64, i64 1408, i32 0, metadata !108} ; [ DW_TAG_member ] [__pad4] [line 305, size 64, align 64, offset 1408] [from ]
!115 = metadata !{i32 786445, metadata !69, metadata !68, metadata !"__pad5", i32 306, i64 64, i64 64, i64 1472, i32 0, metadata !116} ; [ DW_TAG_member ] [__pad5] [line 306, size 64, align 64, offset 1472] [from size_t]
!116 = metadata !{i32 786454, metadata !69, null, metadata !"size_t", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !117} ; [ DW_TAG_typedef ] [size_t] [line 42, size 0, align 0, offset 0] [from long unsigned int]
!117 = metadata !{i32 786468, null, null, metadata !"long unsigned int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [long unsigned int] [line 0, size 64, align 64, offset 0, enc DW_ATE_unsigned]
!118 = metadata !{i32 786445, metadata !69, metadata !68, metadata !"_mode", i32 308, i64 32, i64 32, i64 1536, i32 0, metadata !14} ; [ DW_TAG_member ] [_mode] [line 308, size 32, align 32, offset 1536] [from int]
!119 = metadata !{i32 786445, metadata !69, metadata !68, metadata !"_unused2", i32 310, i64 160, i64 8, i64 1568, i32 0, metadata !120} ; [ DW_TAG_member ] [_unused2] [line 310, size 160, align 8, offset 1568] [from ]
!120 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 160, i64 8, i32 0, i32 0, metadata !74, metadata !121, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 160, align 8, offset 0] [from char]
!121 = metadata !{metadata !122}
!122 = metadata !{i32 786465, i64 0, i64 20}      ; [ DW_TAG_subrange_type ] [0, 19]
!123 = metadata !{metadata !124, metadata !125, metadata !126, metadata !127}
!124 = metadata !{i32 786689, metadata !63, metadata !"heap", metadata !5, i32 16777503, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [heap] [line 287]
!125 = metadata !{i32 786689, metadata !63, metadata !"fp", metadata !5, i32 33554720, metadata !66, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fp] [line 288]
!126 = metadata !{i32 786688, metadata !63, metadata !"ierr", metadata !5, i32 290, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ierr] [line 290]
!127 = metadata !{i32 786688, metadata !63, metadata !"j", metadata !5, i32 290, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [j] [line 290]
!128 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"IIheap_sizeOf", metadata !"IIheap_sizeOf", metadata !"", i32 320, metadata !129, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct._IIheap*)* @IIheap_sizeOf, null, null, metadata !131, i32 322} ; [ DW_TAG_subprogram ] [line 320] [def] [scope 322] [IIheap_sizeOf]
!129 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !130, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!130 = metadata !{metadata !14, metadata !8}
!131 = metadata !{metadata !132}
!132 = metadata !{i32 786689, metadata !128, metadata !"heap", metadata !5, i32 16777537, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [heap] [line 321]
!133 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"IIheap_siftUp", metadata !"IIheap_siftUp", metadata !"", i32 399, metadata !34, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._IIheap*, i32)* @IIheap_siftUp, null, null, metadata !134, i32 402} ; [ DW_TAG_subprogram ] [line 399] [local] [def] [scope 402] [IIheap_siftUp]
!134 = metadata !{metadata !135, metadata !136, metadata !137, metadata !138, metadata !139, metadata !140, metadata !141}
!135 = metadata !{i32 786689, metadata !133, metadata !"heap", metadata !5, i32 16777616, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [heap] [line 400]
!136 = metadata !{i32 786689, metadata !133, metadata !"loc", metadata !5, i32 33554833, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [loc] [line 401]
!137 = metadata !{i32 786688, metadata !133, metadata !"itemp", metadata !5, i32 403, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [itemp] [line 403]
!138 = metadata !{i32 786688, metadata !133, metadata !"par", metadata !5, i32 403, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [par] [line 403]
!139 = metadata !{i32 786688, metadata !133, metadata !"heapLoc", metadata !5, i32 404, metadata !17, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [heapLoc] [line 404]
!140 = metadata !{i32 786688, metadata !133, metadata !"keys", metadata !5, i32 404, metadata !17, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [keys] [line 404]
!141 = metadata !{i32 786688, metadata !133, metadata !"values", metadata !5, i32 404, metadata !17, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [values] [line 404]
!142 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"IIheap_siftDown", metadata !"IIheap_siftDown", metadata !"", i32 334, metadata !34, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !143, i32 337} ; [ DW_TAG_subprogram ] [line 334] [local] [def] [scope 337] [IIheap_siftDown]
!143 = metadata !{metadata !144, metadata !145, metadata !146, metadata !147, metadata !148, metadata !149, metadata !150, metadata !151, metadata !152, metadata !153}
!144 = metadata !{i32 786689, metadata !142, metadata !"heap", metadata !5, i32 16777551, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [heap] [line 335]
!145 = metadata !{i32 786689, metadata !142, metadata !"loc", metadata !5, i32 33554768, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [loc] [line 336]
!146 = metadata !{i32 786688, metadata !142, metadata !"desc", metadata !5, i32 338, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [desc] [line 338]
!147 = metadata !{i32 786688, metadata !142, metadata !"itemp", metadata !5, i32 338, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [itemp] [line 338]
!148 = metadata !{i32 786688, metadata !142, metadata !"left", metadata !5, i32 338, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [left] [line 338]
!149 = metadata !{i32 786688, metadata !142, metadata !"right", metadata !5, i32 338, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [right] [line 338]
!150 = metadata !{i32 786688, metadata !142, metadata !"size", metadata !5, i32 338, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [size] [line 338]
!151 = metadata !{i32 786688, metadata !142, metadata !"heapLoc", metadata !5, i32 339, metadata !17, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [heapLoc] [line 339]
!152 = metadata !{i32 786688, metadata !142, metadata !"keys", metadata !5, i32 339, metadata !17, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [keys] [line 339]
!153 = metadata !{i32 786688, metadata !142, metadata !"values", metadata !5, i32 339, metadata !17, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [values] [line 339]
!154 = metadata !{i32 22, i32 0, metadata !155, null}
!155 = metadata !{i32 786443, metadata !1, metadata !4, i32 22, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/IIheap/src/IIheap_basics.c]
!156 = metadata !{i32 22, i32 0, metadata !157, null}
!157 = metadata !{i32 786443, metadata !1, metadata !155, i32 22, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/IIheap/src/IIheap_basics.c]
!158 = metadata !{metadata !"any pointer", metadata !159}
!159 = metadata !{metadata !"omnipotent char", metadata !160}
!160 = metadata !{metadata !"Simple C/C++ TBAA"}
!161 = metadata !{i32 24, i32 0, metadata !4, null}
!162 = metadata !{i32 26, i32 0, metadata !4, null}
!163 = metadata !{i32 38, i32 0, metadata !22, null}
!164 = metadata !{i32 40, i32 0, metadata !22, null}
!165 = metadata !{i32 41, i32 0, metadata !166, null}
!166 = metadata !{i32 786443, metadata !1, metadata !22, i32 40, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/IIheap/src/IIheap_basics.c]
!167 = metadata !{i32 43, i32 0, metadata !166, null}
!168 = metadata !{i32 51, i32 0, metadata !22, null}
!169 = metadata !{i32 46, i32 0, metadata !22, null}
!170 = metadata !{i32 63, i32 0, metadata !27, null}
!171 = metadata !{i32 65, i32 0, metadata !27, null}
!172 = metadata !{i32 66, i32 0, metadata !173, null}
!173 = metadata !{i32 786443, metadata !1, metadata !27, i32 65, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/IIheap/src/IIheap_basics.c]
!174 = metadata !{i32 68, i32 0, metadata !173, null}
!175 = metadata !{i32 70, i32 0, metadata !27, null}
!176 = metadata !{i32 71, i32 0, metadata !177, null}
!177 = metadata !{i32 786443, metadata !1, metadata !27, i32 70, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/IIheap/src/IIheap_basics.c]
!178 = metadata !{i32 72, i32 0, metadata !177, null}
!179 = metadata !{i32 73, i32 0, metadata !27, null}
!180 = metadata !{i32 74, i32 0, metadata !181, null}
!181 = metadata !{i32 786443, metadata !1, metadata !27, i32 73, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/IIheap/src/IIheap_basics.c]
!182 = metadata !{i32 75, i32 0, metadata !181, null}
!183 = metadata !{i32 76, i32 0, metadata !27, null}
!184 = metadata !{i32 77, i32 0, metadata !185, null}
!185 = metadata !{i32 786443, metadata !1, metadata !27, i32 76, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/IIheap/src/IIheap_basics.c]
!186 = metadata !{i32 78, i32 0, metadata !185, null}
!187 = metadata !{i32 79, i32 0, metadata !27, null}
!188 = metadata !{i32 81, i32 0, metadata !27, null}
!189 = metadata !{i32 93, i32 0, metadata !30, null}
!190 = metadata !{i32 95, i32 0, metadata !30, null}
!191 = metadata !{i32 96, i32 0, metadata !192, null}
!192 = metadata !{i32 786443, metadata !1, metadata !30, i32 95, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/IIheap/src/IIheap_basics.c]
!193 = metadata !{i32 98, i32 0, metadata !192, null}
!194 = metadata !{i32 100, i32 0, metadata !30, null}
!195 = metadata !{i32 101, i32 0, metadata !196, null}
!196 = metadata !{i32 786443, metadata !1, metadata !30, i32 101, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/IIheap/src/IIheap_basics.c]
!197 = metadata !{%struct._IIheap* null}
!198 = metadata !{i32 103, i32 0, metadata !30, null}
!199 = metadata !{i32 117, i32 0, metadata !33, null}
!200 = metadata !{i32 118, i32 0, metadata !33, null}
!201 = metadata !{i32 120, i32 0, metadata !33, null}
!202 = metadata !{i32 121, i32 0, metadata !203, null}
!203 = metadata !{i32 786443, metadata !1, metadata !33, i32 120, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/IIheap/src/IIheap_basics.c]
!204 = metadata !{i32 124, i32 0, metadata !203, null}
!205 = metadata !{i32 126, i32 0, metadata !33, null}
!206 = metadata !{i32 127, i32 0, metadata !33, null}
!207 = metadata !{metadata !"int", metadata !159}
!208 = metadata !{i32 128, i32 0, metadata !33, null}
!209 = metadata !{i32 129, i32 0, metadata !33, null}
!210 = metadata !{i32 130, i32 0, metadata !33, null}
!211 = metadata !{i32 132, i32 0, metadata !33, null}
!212 = metadata !{i32 145, i32 0, metadata !39, null}
!213 = metadata !{i32 146, i32 0, metadata !39, null}
!214 = metadata !{i32 147, i32 0, metadata !39, null}
!215 = metadata !{i32 149, i32 0, metadata !39, null}
!216 = metadata !{i32 150, i32 0, metadata !217, null}
!217 = metadata !{i32 786443, metadata !1, metadata !39, i32 149, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/IIheap/src/IIheap_basics.c]
!218 = metadata !{i32 153, i32 0, metadata !217, null}
!219 = metadata !{i32 156, i32 0, metadata !39, null}
!220 = metadata !{i32 157, i32 0, metadata !221, null}
!221 = metadata !{i32 786443, metadata !1, metadata !39, i32 156, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/IIheap/src/IIheap_basics.c]
!222 = metadata !{i32 158, i32 0, metadata !221, null}
!223 = metadata !{i32 159, i32 0, metadata !221, null}
!224 = metadata !{i32 160, i32 0, metadata !225, null}
!225 = metadata !{i32 786443, metadata !1, metadata !39, i32 159, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/IIheap/src/IIheap_basics.c]
!226 = metadata !{i32 163, i32 0, metadata !39, null}
!227 = metadata !{i32 175, i32 0, metadata !46, null}
!228 = metadata !{i32 176, i32 0, metadata !46, null}
!229 = metadata !{i32 177, i32 0, metadata !46, null}
!230 = metadata !{i32 181, i32 0, metadata !46, null}
!231 = metadata !{i32 182, i32 0, metadata !232, null}
!232 = metadata !{i32 786443, metadata !1, metadata !46, i32 181, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/IIheap/src/IIheap_basics.c]
!233 = metadata !{i32 185, i32 0, metadata !232, null}
!234 = metadata !{i32 187, i32 0, metadata !46, null}
!235 = metadata !{i32 188, i32 0, metadata !236, null}
!236 = metadata !{i32 786443, metadata !1, metadata !46, i32 187, i32 0, i32 14} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/IIheap/src/IIheap_basics.c]
!237 = metadata !{i32 191, i32 0, metadata !236, null}
!238 = metadata !{i32 193, i32 0, metadata !46, null}
!239 = metadata !{i32 194, i32 0, metadata !240, null}
!240 = metadata !{i32 786443, metadata !1, metadata !46, i32 193, i32 0, i32 15} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/IIheap/src/IIheap_basics.c]
!241 = metadata !{i32 196, i32 0, metadata !240, null}
!242 = metadata !{i32 203, i32 0, metadata !46, null}
!243 = metadata !{i32 204, i32 0, metadata !46, null}
!244 = metadata !{i32 205, i32 0, metadata !46, null}
!245 = metadata !{i32 206, i32 0, metadata !46, null}
!246 = metadata !{i32 208, i32 0, metadata !46, null}
!247 = metadata !{i32 400, i32 0, metadata !133, null}
!248 = metadata !{i32 401, i32 0, metadata !133, null}
!249 = metadata !{i32 410, i32 0, metadata !133, null}
!250 = metadata !{i32 411, i32 0, metadata !251, null}
!251 = metadata !{i32 786443, metadata !1, metadata !133, i32 410, i32 0, i32 26} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/IIheap/src/IIheap_basics.c]
!252 = metadata !{i32 414, i32 0, metadata !251, null}
!253 = metadata !{i32 416, i32 0, metadata !133, null}
!254 = metadata !{i32 417, i32 0, metadata !133, null}
!255 = metadata !{i32 418, i32 0, metadata !133, null}
!256 = metadata !{i32 420, i32 0, metadata !133, null}
!257 = metadata !{i32 421, i32 0, metadata !258, null}
!258 = metadata !{i32 786443, metadata !1, metadata !133, i32 420, i32 0, i32 27} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/IIheap/src/IIheap_basics.c]
!259 = metadata !{i32 425, i32 0, metadata !258, null}
!260 = metadata !{i32 426, i32 0, metadata !261, null}
!261 = metadata !{i32 786443, metadata !1, metadata !258, i32 425, i32 0, i32 28} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/IIheap/src/IIheap_basics.c]
!262 = metadata !{i32 427, i32 0, metadata !261, null}
!263 = metadata !{i32 428, i32 0, metadata !261, null}
!264 = metadata !{i32 429, i32 0, metadata !261, null}
!265 = metadata !{i32 430, i32 0, metadata !261, null}
!266 = metadata !{i32 431, i32 0, metadata !261, null}
!267 = metadata !{i32 432, i32 0, metadata !261, null}
!268 = metadata !{i32 433, i32 0, metadata !261, null}
!269 = metadata !{i32 434, i32 0, metadata !261, null}
!270 = metadata !{i32 440, i32 0, metadata !133, null}
!271 = metadata !{i32 220, i32 0, metadata !54, null}
!272 = metadata !{i32 221, i32 0, metadata !54, null}
!273 = metadata !{i32 229, i32 0, metadata !54, null}
!274 = metadata !{i32 230, i32 0, metadata !275, null}
!275 = metadata !{i32 786443, metadata !1, metadata !54, i32 229, i32 0, i32 16} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/IIheap/src/IIheap_basics.c]
!276 = metadata !{i32 233, i32 0, metadata !275, null}
!277 = metadata !{i32 235, i32 0, metadata !54, null}
!278 = metadata !{i32 236, i32 0, metadata !279, null}
!279 = metadata !{i32 786443, metadata !1, metadata !54, i32 235, i32 0, i32 17} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/IIheap/src/IIheap_basics.c]
!280 = metadata !{i32 238, i32 0, metadata !279, null}
!281 = metadata !{i32 246, i32 0, metadata !54, null}
!282 = metadata !{i32 252, i32 0, metadata !283, null}
!283 = metadata !{i32 786443, metadata !1, metadata !54, i32 246, i32 0, i32 18} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/IIheap/src/IIheap_basics.c]
!284 = metadata !{i32 253, i32 0, metadata !283, null}
!285 = metadata !{i32 254, i32 0, metadata !283, null}
!286 = metadata !{i32 255, i32 0, metadata !283, null}
!287 = metadata !{i32 262, i32 0, metadata !288, null}
!288 = metadata !{i32 786443, metadata !1, metadata !54, i32 255, i32 0, i32 19} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/IIheap/src/IIheap_basics.c]
!289 = metadata !{i32 263, i32 0, metadata !288, null}
!290 = metadata !{i32 264, i32 0, metadata !288, null}
!291 = metadata !{i32 265, i32 0, metadata !288, null}
!292 = metadata !{i32 266, i32 0, metadata !288, null}
!293 = metadata !{i32 267, i32 0, metadata !288, null}
!294 = metadata !{i32 268, i32 0, metadata !288, null}
!295 = metadata !{i32 269, i32 0, metadata !288, null}
!296 = metadata !{i32 270, i32 0, metadata !297, null}
!297 = metadata !{i32 786443, metadata !1, metadata !288, i32 269, i32 0, i32 20} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/IIheap/src/IIheap_basics.c]
!298 = metadata !{i32 271, i32 0, metadata !297, null}
!299 = metadata !{i32 271, i32 0, metadata !288, null}
!300 = metadata !{i32 786689, metadata !142, metadata !"heap", metadata !5, i32 16777551, metadata !8, i32 0, metadata !301} ; [ DW_TAG_arg_variable ] [heap] [line 335]
!301 = metadata !{i32 272, i32 0, metadata !302, null}
!302 = metadata !{i32 786443, metadata !1, metadata !288, i32 271, i32 0, i32 21} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/IIheap/src/IIheap_basics.c]
!303 = metadata !{i32 335, i32 0, metadata !142, metadata !301}
!304 = metadata !{i32 786689, metadata !142, metadata !"loc", metadata !5, i32 33554768, metadata !14, i32 0, metadata !301} ; [ DW_TAG_arg_variable ] [loc] [line 336]
!305 = metadata !{i32 336, i32 0, metadata !142, metadata !301}
!306 = metadata !{i32 345, i32 0, metadata !142, metadata !301}
!307 = metadata !{i32 346, i32 0, metadata !308, metadata !301}
!308 = metadata !{i32 786443, metadata !1, metadata !142, i32 345, i32 0, i32 30} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/IIheap/src/IIheap_basics.c]
!309 = metadata !{i32 349, i32 0, metadata !308, metadata !301}
!310 = metadata !{i32 786688, metadata !142, metadata !"size", metadata !5, i32 338, metadata !14, i32 0, metadata !301} ; [ DW_TAG_auto_variable ] [size] [line 338]
!311 = metadata !{i32 351, i32 0, metadata !142, metadata !301}
!312 = metadata !{i32 786688, metadata !142, metadata !"heapLoc", metadata !5, i32 339, metadata !17, i32 0, metadata !301} ; [ DW_TAG_auto_variable ] [heapLoc] [line 339]
!313 = metadata !{i32 352, i32 0, metadata !142, metadata !301}
!314 = metadata !{i32 786688, metadata !142, metadata !"keys", metadata !5, i32 339, metadata !17, i32 0, metadata !301} ; [ DW_TAG_auto_variable ] [keys] [line 339]
!315 = metadata !{i32 353, i32 0, metadata !142, metadata !301}
!316 = metadata !{i32 786688, metadata !142, metadata !"values", metadata !5, i32 339, metadata !17, i32 0, metadata !301} ; [ DW_TAG_auto_variable ] [values] [line 339]
!317 = metadata !{i32 354, i32 0, metadata !142, metadata !301}
!318 = metadata !{i32 357, i32 0, metadata !319, metadata !301}
!319 = metadata !{i32 786443, metadata !1, metadata !142, i32 356, i32 0, i32 31} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/IIheap/src/IIheap_basics.c]
!320 = metadata !{i32 786688, metadata !142, metadata !"left", metadata !5, i32 338, metadata !14, i32 0, metadata !301} ; [ DW_TAG_auto_variable ] [left] [line 338]
!321 = metadata !{i32 359, i32 0, metadata !319, metadata !301}
!322 = metadata !{i32 358, i32 0, metadata !319, metadata !301}
!323 = metadata !{i32 361, i32 0, metadata !319, metadata !301}
!324 = metadata !{i32 364, i32 0, metadata !325, metadata !301}
!325 = metadata !{i32 786443, metadata !1, metadata !319, i32 363, i32 0, i32 34} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/IIheap/src/IIheap_basics.c]
!326 = metadata !{i32 373, i32 0, metadata !319, metadata !301}
!327 = metadata !{i32 786688, metadata !142, metadata !"itemp", metadata !5, i32 338, metadata !14, i32 0, metadata !301} ; [ DW_TAG_auto_variable ] [itemp] [line 338]
!328 = metadata !{i32 374, i32 0, metadata !329, metadata !301}
!329 = metadata !{i32 786443, metadata !1, metadata !319, i32 373, i32 0, i32 37} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/IIheap/src/IIheap_basics.c]
!330 = metadata !{i32 375, i32 0, metadata !329, metadata !301}
!331 = metadata !{i32 376, i32 0, metadata !329, metadata !301}
!332 = metadata !{i32 377, i32 0, metadata !329, metadata !301}
!333 = metadata !{i32 378, i32 0, metadata !329, metadata !301}
!334 = metadata !{i32 379, i32 0, metadata !329, metadata !301}
!335 = metadata !{i32 380, i32 0, metadata !329, metadata !301}
!336 = metadata !{i32 381, i32 0, metadata !329, metadata !301}
!337 = metadata !{i32 382, i32 0, metadata !329, metadata !301}
!338 = metadata !{i32 786688, metadata !142, metadata !"right", metadata !5, i32 338, metadata !14, i32 0, metadata !301} ; [ DW_TAG_auto_variable ] [right] [line 338]
!339 = metadata !{i32 275, i32 0, metadata !54, null}
!340 = metadata !{i32 287, i32 0, metadata !63, null}
!341 = metadata !{i32 288, i32 0, metadata !63, null}
!342 = metadata !{i32 290, i32 0, metadata !63, null}
!343 = metadata !{i32 292, i32 0, metadata !63, null}
!344 = metadata !{i32 293, i32 0, metadata !345, null}
!345 = metadata !{i32 786443, metadata !1, metadata !63, i32 292, i32 0, i32 22} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/IIheap/src/IIheap_basics.c]
!346 = metadata !{i32 295, i32 0, metadata !345, null}
!347 = metadata !{i32 297, i32 0, metadata !63, null}
!348 = metadata !{i32 299, i32 0, metadata !63, null}
!349 = metadata !{i32 300, i32 0, metadata !350, null}
!350 = metadata !{i32 786443, metadata !1, metadata !63, i32 299, i32 0, i32 23} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/IIheap/src/IIheap_basics.c]
!351 = metadata !{i32 301, i32 0, metadata !352, null}
!352 = metadata !{i32 786443, metadata !1, metadata !350, i32 301, i32 0, i32 24} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/IIheap/src/IIheap_basics.c]
!353 = metadata !{i32 302, i32 0, metadata !354, null}
!354 = metadata !{i32 786443, metadata !1, metadata !352, i32 301, i32 0, i32 25} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/IIheap/src/IIheap_basics.c]
!355 = metadata !{i32 305, i32 0, metadata !350, null}
!356 = metadata !{i32 306, i32 0, metadata !350, null}
!357 = metadata !{i32 307, i32 0, metadata !350, null}
!358 = metadata !{i32 309, i32 0, metadata !63, null}
!359 = metadata !{i32 321, i32 0, metadata !128, null}
!360 = metadata !{i32 323, i32 0, metadata !128, null}
