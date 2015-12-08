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
  %call = tail call noalias i8* @malloc(i64 32) #6
  %0 = bitcast i8* %call to %struct._IIheap*
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call1 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([49 x i8]* @.str, i64 0, i64 0), i64 32, i32 22, i8* getelementptr inbounds ([81 x i8]* @.str1, i64 0, i64 0)) #6
  tail call void @exit(i32 -1) #7
  unreachable

if.end:                                           ; preds = %entry
  tail call void @IIheap_setDefaultFields(%struct._IIheap* %0) #8
  ret %struct._IIheap* %0
}

; Function Attrs: nounwind optsize
declare noalias i8* @malloc(i64) #1

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #1

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32) #2

; Function Attrs: nounwind optsize uwtable
define void @IIheap_setDefaultFields(%struct._IIheap* %heap) #0 {
entry:
  %cmp = icmp eq %struct._IIheap* %heap, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([60 x i8]* @.str2, i64 0, i64 0), %struct._IIheap* null) #6
  tail call void @exit(i32 -1) #7
  unreachable

if.end:                                           ; preds = %entry
  %1 = bitcast %struct._IIheap* %heap to i8*
  call void @llvm.memset.p0i8.i64(i8* %1, i8 0, i64 32, i32 4, i1 false)
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @IIheap_clearData(%struct._IIheap* %heap) #0 {
entry:
  %cmp = icmp eq %struct._IIheap* %heap, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([53 x i8]* @.str3, i64 0, i64 0), %struct._IIheap* null) #6
  tail call void @exit(i32 -1) #7
  unreachable

if.end:                                           ; preds = %entry
  %heapLoc = getelementptr inbounds %struct._IIheap* %heap, i64 0, i32 2
  %1 = load i32** %heapLoc, align 8, !tbaa !0
  %cmp1 = icmp eq i32* %1, null
  br i1 %cmp1, label %if.end4, label %if.then2

if.then2:                                         ; preds = %if.end
  tail call void @IVfree(i32* %1) #6
  br label %if.end4

if.end4:                                          ; preds = %if.end, %if.then2
  %keys = getelementptr inbounds %struct._IIheap* %heap, i64 0, i32 3
  %2 = load i32** %keys, align 8, !tbaa !0
  %cmp5 = icmp eq i32* %2, null
  br i1 %cmp5, label %if.end8, label %if.then6

if.then6:                                         ; preds = %if.end4
  tail call void @IVfree(i32* %2) #6
  br label %if.end8

if.end8:                                          ; preds = %if.end4, %if.then6
  %values = getelementptr inbounds %struct._IIheap* %heap, i64 0, i32 4
  %3 = load i32** %values, align 8, !tbaa !0
  %cmp9 = icmp eq i32* %3, null
  br i1 %cmp9, label %if.end12, label %if.then10

if.then10:                                        ; preds = %if.end8
  tail call void @IVfree(i32* %3) #6
  br label %if.end12

if.end12:                                         ; preds = %if.end8, %if.then10
  tail call void @IIheap_setDefaultFields(%struct._IIheap* %heap) #8
  ret void
}

; Function Attrs: optsize
declare void @IVfree(i32*) #3

; Function Attrs: nounwind optsize uwtable
define void @IIheap_free(%struct._IIheap* %heap) #0 {
entry:
  %cmp = icmp eq %struct._IIheap* %heap, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([48 x i8]* @.str4, i64 0, i64 0), %struct._IIheap* null) #6
  tail call void @exit(i32 -1) #7
  unreachable

if.end:                                           ; preds = %entry
  tail call void @IIheap_clearData(%struct._IIheap* %heap) #8
  %1 = bitcast %struct._IIheap* %heap to i8*
  tail call void @free(i8* %1) #6
  ret void
}

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) #1

; Function Attrs: nounwind optsize uwtable
define void @IIheap_init(%struct._IIheap* %heap, i32 %maxsize) #0 {
entry:
  %cmp = icmp eq %struct._IIheap* %heap, null
  %cmp1 = icmp slt i32 %maxsize, 1
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([74 x i8]* @.str5, i64 0, i64 0), %struct._IIheap* %heap, i32 %maxsize, i32 %maxsize) #6
  tail call void @exit(i32 -1) #7
  unreachable

if.end:                                           ; preds = %entry
  tail call void @IIheap_clearData(%struct._IIheap* %heap) #8
  %maxsize2 = getelementptr inbounds %struct._IIheap* %heap, i64 0, i32 1
  store i32 %maxsize, i32* %maxsize2, align 4, !tbaa !3
  %call3 = tail call i32* @IVinit(i32 %maxsize, i32 -1) #6
  %heapLoc = getelementptr inbounds %struct._IIheap* %heap, i64 0, i32 2
  store i32* %call3, i32** %heapLoc, align 8, !tbaa !0
  %call4 = tail call i32* @IVinit(i32 %maxsize, i32 -1) #6
  %keys = getelementptr inbounds %struct._IIheap* %heap, i64 0, i32 3
  store i32* %call4, i32** %keys, align 8, !tbaa !0
  %call5 = tail call i32* @IVinit(i32 %maxsize, i32 -1) #6
  %values = getelementptr inbounds %struct._IIheap* %heap, i64 0, i32 4
  store i32* %call5, i32** %values, align 8, !tbaa !0
  ret void
}

; Function Attrs: optsize
declare i32* @IVinit(i32, i32) #3

; Function Attrs: nounwind optsize uwtable
define void @IIheap_root(%struct._IIheap* %heap, i32* %pkey, i32* %pvalue) #0 {
entry:
  %cmp = icmp eq %struct._IIheap* %heap, null
  %cmp1 = icmp eq i32* %pkey, null
  %or.cond = or i1 %cmp, %cmp1
  %cmp3 = icmp eq i32* %pvalue, null
  %or.cond18 = or i1 %or.cond, %cmp3
  br i1 %or.cond18, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([80 x i8]* @.str6, i64 0, i64 0), %struct._IIheap* %heap, i32* %pkey, i32* %pvalue) #6
  tail call void @exit(i32 -1) #7
  unreachable

if.end:                                           ; preds = %entry
  %size = getelementptr inbounds %struct._IIheap* %heap, i64 0, i32 0
  %1 = load i32* %size, align 4, !tbaa !3
  %cmp4 = icmp sgt i32 %1, 0
  br i1 %cmp4, label %if.then5, label %if.else

if.then5:                                         ; preds = %if.end
  %keys = getelementptr inbounds %struct._IIheap* %heap, i64 0, i32 3
  %2 = load i32** %keys, align 8, !tbaa !0
  %3 = load i32* %2, align 4, !tbaa !3
  store i32 %3, i32* %pkey, align 4, !tbaa !3
  %values = getelementptr inbounds %struct._IIheap* %heap, i64 0, i32 4
  %4 = load i32** %values, align 8, !tbaa !0
  %5 = load i32* %4, align 4, !tbaa !3
  store i32 %5, i32* %pvalue, align 4, !tbaa !3
  br label %if.end7

if.else:                                          ; preds = %if.end
  store i32 -1, i32* %pvalue, align 4, !tbaa !3
  store i32 -1, i32* %pkey, align 4, !tbaa !3
  br label %if.end7

if.end7:                                          ; preds = %if.else, %if.then5
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @IIheap_insert(%struct._IIheap* %heap, i32 %key, i32 %value) #0 {
entry:
  %cmp = icmp eq %struct._IIheap* %heap, null
  %cmp1 = icmp slt i32 %key, 0
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %if.then, label %lor.lhs.false2

lor.lhs.false2:                                   ; preds = %entry
  %maxsize = getelementptr inbounds %struct._IIheap* %heap, i64 0, i32 1
  %0 = load i32* %maxsize, align 4, !tbaa !3
  %cmp3 = icmp sgt i32 %0, %key
  br i1 %cmp3, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false2, %entry
  %1 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([83 x i8]* @.str7, i64 0, i64 0), %struct._IIheap* %heap, i32 %key, i32 %value, i32 %key, i32 %value) #6
  tail call void @exit(i32 -1) #7
  unreachable

if.end:                                           ; preds = %lor.lhs.false2
  %idxprom = sext i32 %key to i64
  %heapLoc = getelementptr inbounds %struct._IIheap* %heap, i64 0, i32 2
  %2 = load i32** %heapLoc, align 8, !tbaa !0
  %arrayidx = getelementptr inbounds i32* %2, i64 %idxprom
  %3 = load i32* %arrayidx, align 4, !tbaa !3
  %cmp4 = icmp eq i32 %3, -1
  br i1 %cmp4, label %if.end7, label %if.then5

if.then5:                                         ; preds = %if.end
  %4 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call6 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([71 x i8]* @.str8, i64 0, i64 0), %struct._IIheap* %heap, i32 %key, i32 %value, i32 %key, i32 %value) #6
  tail call void @exit(i32 -1) #7
  unreachable

if.end7:                                          ; preds = %if.end
  %size = getelementptr inbounds %struct._IIheap* %heap, i64 0, i32 0
  %5 = load i32* %size, align 4, !tbaa !3
  %cmp9 = icmp eq i32 %5, %0
  br i1 %cmp9, label %if.then10, label %if.end12

if.then10:                                        ; preds = %if.end7
  %6 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call11 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %6, i8* getelementptr inbounds ([56 x i8]* @.str9, i64 0, i64 0), %struct._IIheap* %heap, i32 %key, i32 %value) #6
  tail call void @exit(i32 -1) #7
  unreachable

if.end12:                                         ; preds = %if.end7
  %inc = add nsw i32 %5, 1
  store i32 %inc, i32* %size, align 4, !tbaa !3
  store i32 %5, i32* %arrayidx, align 4, !tbaa !3
  %idxprom17 = sext i32 %5 to i64
  %keys = getelementptr inbounds %struct._IIheap* %heap, i64 0, i32 3
  %7 = load i32** %keys, align 8, !tbaa !0
  %arrayidx18 = getelementptr inbounds i32* %7, i64 %idxprom17
  store i32 %key, i32* %arrayidx18, align 4, !tbaa !3
  %values = getelementptr inbounds %struct._IIheap* %heap, i64 0, i32 4
  %8 = load i32** %values, align 8, !tbaa !0
  %arrayidx20 = getelementptr inbounds i32* %8, i64 %idxprom17
  store i32 %value, i32* %arrayidx20, align 4, !tbaa !3
  tail call fastcc void @IIheap_siftUp(%struct._IIheap* %heap, i32 %5) #8
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @IIheap_siftUp(%struct._IIheap* %heap, i32 %loc) #0 {
entry:
  %cmp = icmp eq %struct._IIheap* %heap, null
  %cmp1 = icmp slt i32 %loc, 0
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %if.then, label %lor.lhs.false2

lor.lhs.false2:                                   ; preds = %entry
  %size = getelementptr inbounds %struct._IIheap* %heap, i64 0, i32 0
  %0 = load i32* %size, align 4, !tbaa !3
  %cmp3 = icmp sgt i32 %0, %loc
  br i1 %cmp3, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false2, %entry
  %1 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([78 x i8]* @.str17, i64 0, i64 0), %struct._IIheap* %heap, i32 %loc, i32 %loc) #6
  tail call void @exit(i32 -1) #7
  unreachable

if.end:                                           ; preds = %lor.lhs.false2
  %heapLoc4 = getelementptr inbounds %struct._IIheap* %heap, i64 0, i32 2
  %2 = load i32** %heapLoc4, align 8, !tbaa !0
  %keys5 = getelementptr inbounds %struct._IIheap* %heap, i64 0, i32 3
  %3 = load i32** %keys5, align 8, !tbaa !0
  %values6 = getelementptr inbounds %struct._IIheap* %heap, i64 0, i32 4
  %4 = load i32** %values6, align 8, !tbaa !0
  %cmp773 = icmp eq i32 %loc, 0
  br i1 %cmp773, label %while.end, label %while.body

while.body:                                       ; preds = %if.end, %if.then11
  %loc.addr.074 = phi i32 [ %div, %if.then11 ], [ %loc, %if.end ]
  %sub = add nsw i32 %loc.addr.074, -1
  %div = sdiv i32 %sub, 2
  %idxprom = sext i32 %div to i64
  %arrayidx = getelementptr inbounds i32* %4, i64 %idxprom
  %5 = load i32* %arrayidx, align 4, !tbaa !3
  %idxprom8 = sext i32 %loc.addr.074 to i64
  %arrayidx9 = getelementptr inbounds i32* %4, i64 %idxprom8
  %6 = load i32* %arrayidx9, align 4, !tbaa !3
  %cmp10 = icmp slt i32 %5, %6
  br i1 %cmp10, label %while.end, label %if.then11

if.then11:                                        ; preds = %while.body
  store i32 %6, i32* %arrayidx, align 4, !tbaa !3
  store i32 %5, i32* %arrayidx9, align 4, !tbaa !3
  %arrayidx21 = getelementptr inbounds i32* %3, i64 %idxprom
  %7 = load i32* %arrayidx21, align 4, !tbaa !3
  %arrayidx23 = getelementptr inbounds i32* %3, i64 %idxprom8
  %8 = load i32* %arrayidx23, align 4, !tbaa !3
  store i32 %8, i32* %arrayidx21, align 4, !tbaa !3
  store i32 %7, i32* %arrayidx23, align 4, !tbaa !3
  %idxprom30 = sext i32 %7 to i64
  %arrayidx31 = getelementptr inbounds i32* %2, i64 %idxprom30
  store i32 %loc.addr.074, i32* %arrayidx31, align 4, !tbaa !3
  %9 = load i32* %arrayidx21, align 4, !tbaa !3
  %idxprom34 = sext i32 %9 to i64
  %arrayidx35 = getelementptr inbounds i32* %2, i64 %idxprom34
  store i32 %div, i32* %arrayidx35, align 4, !tbaa !3
  %10 = icmp ult i32 %loc.addr.074, 3
  br i1 %10, label %while.end, label %while.body

while.end:                                        ; preds = %if.then11, %while.body, %if.end
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @IIheap_remove(%struct._IIheap* %heap, i32 %key) #0 {
entry:
  %cmp = icmp eq %struct._IIheap* %heap, null
  %cmp1 = icmp slt i32 %key, 0
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %if.then, label %lor.lhs.false2

lor.lhs.false2:                                   ; preds = %entry
  %maxsize = getelementptr inbounds %struct._IIheap* %heap, i64 0, i32 1
  %0 = load i32* %maxsize, align 4, !tbaa !3
  %cmp3 = icmp sgt i32 %0, %key
  br i1 %cmp3, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false2, %entry
  %1 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([79 x i8]* @.str10, i64 0, i64 0), %struct._IIheap* %heap, i32 %key, i32 %key) #6
  tail call void @exit(i32 -1) #7
  unreachable

if.end:                                           ; preds = %lor.lhs.false2
  %idxprom = sext i32 %key to i64
  %heapLoc = getelementptr inbounds %struct._IIheap* %heap, i64 0, i32 2
  %2 = load i32** %heapLoc, align 8, !tbaa !0
  %arrayidx = getelementptr inbounds i32* %2, i64 %idxprom
  %3 = load i32* %arrayidx, align 4, !tbaa !3
  %cmp4 = icmp eq i32 %3, -1
  br i1 %cmp4, label %if.then5, label %if.end7

if.then5:                                         ; preds = %if.end
  %4 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call6 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([55 x i8]* @.str11, i64 0, i64 0), %struct._IIheap* %heap, i32 %key, i32 %key) #6
  tail call void @exit(i32 -1) #7
  unreachable

if.end7:                                          ; preds = %if.end
  %size = getelementptr inbounds %struct._IIheap* %heap, i64 0, i32 0
  %5 = load i32* %size, align 4, !tbaa !3
  %dec = add nsw i32 %5, -1
  store i32 %dec, i32* %size, align 4, !tbaa !3
  %cmp8 = icmp eq i32 %3, %dec
  store i32 -1, i32* %arrayidx, align 4, !tbaa !3
  br i1 %cmp8, label %if.then9, label %if.else

if.then9:                                         ; preds = %if.end7
  %idxprom13 = sext i32 %3 to i64
  %keys = getelementptr inbounds %struct._IIheap* %heap, i64 0, i32 3
  %6 = load i32** %keys, align 8, !tbaa !0
  %arrayidx14 = getelementptr inbounds i32* %6, i64 %idxprom13
  store i32 -1, i32* %arrayidx14, align 4, !tbaa !3
  %values = getelementptr inbounds %struct._IIheap* %heap, i64 0, i32 4
  %7 = load i32** %values, align 8, !tbaa !0
  %arrayidx16 = getelementptr inbounds i32* %7, i64 %idxprom13
  store i32 0, i32* %arrayidx16, align 4, !tbaa !3
  br label %if.end51

if.else:                                          ; preds = %if.end7
  %idxprom20 = sext i32 %dec to i64
  %keys21 = getelementptr inbounds %struct._IIheap* %heap, i64 0, i32 3
  %8 = load i32** %keys21, align 8, !tbaa !0
  %arrayidx22 = getelementptr inbounds i32* %8, i64 %idxprom20
  %9 = load i32* %arrayidx22, align 4, !tbaa !3
  %idxprom23 = sext i32 %9 to i64
  %arrayidx25 = getelementptr inbounds i32* %2, i64 %idxprom23
  store i32 %3, i32* %arrayidx25, align 4, !tbaa !3
  %idxprom26 = sext i32 %3 to i64
  %arrayidx28 = getelementptr inbounds i32* %8, i64 %idxprom26
  store i32 %9, i32* %arrayidx28, align 4, !tbaa !3
  store i32 -1, i32* %arrayidx22, align 4, !tbaa !3
  %values33 = getelementptr inbounds %struct._IIheap* %heap, i64 0, i32 4
  %10 = load i32** %values33, align 8, !tbaa !0
  %arrayidx34 = getelementptr inbounds i32* %10, i64 %idxprom26
  %11 = load i32* %arrayidx34, align 4, !tbaa !3
  %arrayidx37 = getelementptr inbounds i32* %10, i64 %idxprom20
  %12 = load i32* %arrayidx37, align 4, !tbaa !3
  store i32 %12, i32* %arrayidx34, align 4, !tbaa !3
  store i32 0, i32* %arrayidx37, align 4, !tbaa !3
  %cmp44 = icmp sgt i32 %11, %12
  br i1 %cmp44, label %if.then45, label %if.else46

if.then45:                                        ; preds = %if.else
  tail call fastcc void @IIheap_siftUp(%struct._IIheap* %heap, i32 %3) #8
  br label %if.end51

if.else46:                                        ; preds = %if.else
  %cmp47 = icmp slt i32 %11, %12
  br i1 %cmp47, label %if.then48, label %if.end51

if.then48:                                        ; preds = %if.else46
  %cmp1.i = icmp slt i32 %3, 0
  br i1 %cmp1.i, label %if.then.i, label %lor.lhs.false2.i

lor.lhs.false2.i:                                 ; preds = %if.then48
  %13 = load i32* %size, align 4, !tbaa !3
  %cmp4.i = icmp sgt i32 %13, %3
  br i1 %cmp4.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %lor.lhs.false2.i, %if.then48
  %14 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call.i = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %14, i8* getelementptr inbounds ([80 x i8]* @.str18, i64 0, i64 0), %struct._IIheap* %heap, i32 %3, i32 %3) #6
  tail call void @exit(i32 -1) #7
  unreachable

if.end.i:                                         ; preds = %lor.lhs.false2.i
  %mul100.i = shl nsw i32 %3, 1
  %add99101.i = or i32 %mul100.i, 1
  %cmp10103.i = icmp slt i32 %add99101.i, %13
  br i1 %cmp10103.i, label %if.else.i, label %if.end51

if.else.i:                                        ; preds = %if.end.i, %if.then28.i
  %add9106.in.i = phi i32 [ %add99.i, %if.then28.i ], [ %add99101.i, %if.end.i ]
  %loc.addr.0104.i = phi i32 [ %desc.0.i, %if.then28.i ], [ %3, %if.end.i ]
  %add9106.i = add nsw i32 %add9106.in.i, 1
  %cmp12.i = icmp slt i32 %add9106.i, %13
  br i1 %cmp12.i, label %if.else14.i, label %if.end22.i

if.else14.i:                                      ; preds = %if.else.i
  %idxprom.i = sext i32 %add9106.in.i to i64
  %arrayidx.i = getelementptr inbounds i32* %10, i64 %idxprom.i
  %15 = load i32* %arrayidx.i, align 4, !tbaa !3
  %idxprom15.i = sext i32 %add9106.i to i64
  %arrayidx16.i = getelementptr inbounds i32* %10, i64 %idxprom15.i
  %16 = load i32* %arrayidx16.i, align 4, !tbaa !3
  %cmp17.i = icmp sgt i32 %15, %16
  %add9.add99.i = select i1 %cmp17.i, i32 %add9106.i, i32 %add9106.in.i
  br label %if.end22.i

if.end22.i:                                       ; preds = %if.else14.i, %if.else.i
  %desc.0.i = phi i32 [ %add9106.in.i, %if.else.i ], [ %add9.add99.i, %if.else14.i ]
  %idxprom23.i = sext i32 %desc.0.i to i64
  %arrayidx24.i = getelementptr inbounds i32* %10, i64 %idxprom23.i
  %17 = load i32* %arrayidx24.i, align 4, !tbaa !3
  %idxprom25.i = sext i32 %loc.addr.0104.i to i64
  %arrayidx26.i = getelementptr inbounds i32* %10, i64 %idxprom25.i
  %18 = load i32* %arrayidx26.i, align 4, !tbaa !3
  %cmp27.i = icmp sgt i32 %17, %18
  br i1 %cmp27.i, label %if.end51, label %if.then28.i

if.then28.i:                                      ; preds = %if.end22.i
  store i32 %18, i32* %arrayidx24.i, align 4, !tbaa !3
  store i32 %17, i32* %arrayidx26.i, align 4, !tbaa !3
  %arrayidx38.i = getelementptr inbounds i32* %8, i64 %idxprom23.i
  %19 = load i32* %arrayidx38.i, align 4, !tbaa !3
  %arrayidx40.i = getelementptr inbounds i32* %8, i64 %idxprom25.i
  %20 = load i32* %arrayidx40.i, align 4, !tbaa !3
  store i32 %20, i32* %arrayidx38.i, align 4, !tbaa !3
  store i32 %19, i32* %arrayidx40.i, align 4, !tbaa !3
  %idxprom47.i = sext i32 %19 to i64
  %arrayidx48.i = getelementptr inbounds i32* %2, i64 %idxprom47.i
  store i32 %loc.addr.0104.i, i32* %arrayidx48.i, align 4, !tbaa !3
  %21 = load i32* %arrayidx38.i, align 4, !tbaa !3
  %idxprom51.i = sext i32 %21 to i64
  %arrayidx52.i = getelementptr inbounds i32* %2, i64 %idxprom51.i
  store i32 %desc.0.i, i32* %arrayidx52.i, align 4, !tbaa !3
  %mul.i = shl nsw i32 %desc.0.i, 1
  %add99.i = or i32 %mul.i, 1
  %cmp10.i = icmp slt i32 %add99.i, %13
  br i1 %cmp10.i, label %if.else.i, label %if.end51

if.end51:                                         ; preds = %if.then28.i, %if.end22.i, %if.end.i, %if.then45, %if.else46, %if.then9
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @IIheap_print(%struct._IIheap* %heap, %struct._IO_FILE* %fp) #0 {
entry:
  %ierr = alloca i32, align 4
  %cmp = icmp eq %struct._IIheap* %heap, null
  %cmp1 = icmp eq %struct._IO_FILE* %fp, null
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([75 x i8]* @.str12, i64 0, i64 0), %struct._IIheap* %heap, %struct._IO_FILE* %fp) #6
  call void @exit(i32 -1) #7
  unreachable

if.end:                                           ; preds = %entry
  %size = getelementptr inbounds %struct._IIheap* %heap, i64 0, i32 0
  %1 = load i32* %size, align 4, !tbaa !3
  %maxsize = getelementptr inbounds %struct._IIheap* %heap, i64 0, i32 1
  %2 = load i32* %maxsize, align 4, !tbaa !3
  %call2 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([41 x i8]* @.str13, i64 0, i64 0), i32 %1, i32 %2) #6
  %3 = load i32* %size, align 4, !tbaa !3
  %cmp4 = icmp sgt i32 %3, 0
  br i1 %cmp4, label %if.then5, label %if.end15

if.then5:                                         ; preds = %if.end
  %4 = call i64 @fwrite(i8* getelementptr inbounds ([41 x i8]* @.str14, i64 0, i64 0), i64 40, i64 1, %struct._IO_FILE* %fp)
  %5 = load i32* %size, align 4, !tbaa !3
  %cmp834 = icmp sgt i32 %5, 0
  br i1 %cmp834, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %if.then5
  %keys = getelementptr inbounds %struct._IIheap* %heap, i64 0, i32 3
  %values = getelementptr inbounds %struct._IIheap* %heap, i64 0, i32 4
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.body ]
  %6 = load i32** %keys, align 8, !tbaa !0
  %arrayidx = getelementptr inbounds i32* %6, i64 %indvars.iv
  %7 = load i32* %arrayidx, align 4, !tbaa !3
  %8 = load i32** %values, align 8, !tbaa !0
  %arrayidx10 = getelementptr inbounds i32* %8, i64 %indvars.iv
  %9 = load i32* %arrayidx10, align 4, !tbaa !3
  %10 = trunc i64 %indvars.iv to i32
  %call11 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([14 x i8]* @.str15, i64 0, i64 0), i32 %10, i32 %7, i32 %9) #6
  %indvars.iv.next = add i64 %indvars.iv, 1
  %11 = load i32* %size, align 4, !tbaa !3
  %12 = trunc i64 %indvars.iv.next to i32
  %cmp8 = icmp slt i32 %12, %11
  br i1 %cmp8, label %for.body, label %for.end

for.end:                                          ; preds = %for.body, %if.then5
  %13 = call i64 @fwrite(i8* getelementptr inbounds ([19 x i8]* @.str16, i64 0, i64 0), i64 18, i64 1, %struct._IO_FILE* %fp)
  %14 = load i32* %maxsize, align 4, !tbaa !3
  %heapLoc = getelementptr inbounds %struct._IIheap* %heap, i64 0, i32 2
  %15 = load i32** %heapLoc, align 8, !tbaa !0
  %call14 = call i32 @IVfp80(%struct._IO_FILE* %fp, i32 %14, i32* %15, i32 80, i32* %ierr) #6
  br label %if.end15

if.end15:                                         ; preds = %for.end, %if.end
  ret void
}

; Function Attrs: optsize
declare i32 @IVfp80(%struct._IO_FILE*, i32, i32*, i32, i32*) #3

; Function Attrs: nounwind optsize readonly uwtable
define i32 @IIheap_sizeOf(%struct._IIheap* nocapture %heap) #4 {
entry:
  %maxsize = getelementptr inbounds %struct._IIheap* %heap, i64 0, i32 1
  %0 = load i32* %maxsize, align 4, !tbaa !3
  %mul1 = mul i32 %0, 12
  %add = add i32 %mul1, 32
  ret i32 %add
}

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #5

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #5

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize readonly uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { nounwind optsize }
attributes #7 = { noreturn nounwind optsize }
attributes #8 = { optsize }

!0 = metadata !{metadata !"any pointer", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"int", metadata !1}
