; ModuleID = '../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtxManager/src/SubMtxManager_util.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct._SubMtx = type { i32, i32, i32, i32, i32, i32, i32, double*, %struct._DV, %struct._SubMtx* }
%struct._DV = type { i32, i32, i32, double* }
%struct._SubMtxManager = type { %struct._SubMtx*, %struct._Lock*, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._Lock = type { i8*, i32, i32 }

@stderr = external global %struct._IO_FILE*
@.str = private unnamed_addr constant [73 x i8] c"\0A fatal error in SubMtxMananger_newObjectOfSizeNbytes(%p,%d)\0A bad input\0A\00", align 1
@.str1 = private unnamed_addr constant [64 x i8] c"\0A fatal error in SubMtxManager_releaseObject(%p,%p)\0A bad input\0A\00", align 1
@.str2 = private unnamed_addr constant [71 x i8] c"\0A fatal error in SubMtxManager_releaseListOfObjects(%p,%p)\0A bad input\0A\00", align 1

; Function Attrs: nounwind optsize uwtable
define %struct._SubMtx* @SubMtxManager_newObjectOfSizeNbytes(%struct._SubMtxManager* %manager, i32 %nbytesNeeded) #0 {
entry:
  %cmp = icmp eq %struct._SubMtxManager* %manager, null
  %cmp1 = icmp slt i32 %nbytesNeeded, 1
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([73 x i8]* @.str, i64 0, i64 0), %struct._SubMtxManager* %manager, i32 %nbytesNeeded) #4
  tail call void @exit(i32 -1) #5
  unreachable

if.end:                                           ; preds = %entry
  %lock = getelementptr inbounds %struct._SubMtxManager* %manager, i64 0, i32 1
  %1 = load %struct._Lock** %lock, align 8, !tbaa !0
  %cmp2 = icmp eq %struct._Lock* %1, null
  br i1 %cmp2, label %if.end5, label %if.then3

if.then3:                                         ; preds = %if.end
  tail call void @Lock_lock(%struct._Lock* %1) #4
  %nlocks = getelementptr inbounds %struct._SubMtxManager* %manager, i64 0, i32 9
  %2 = load i32* %nlocks, align 4, !tbaa !3
  %inc = add nsw i32 %2, 1
  store i32 %inc, i32* %nlocks, align 4, !tbaa !3
  br label %if.end5

if.end5:                                          ; preds = %if.end, %if.then3
  %head = getelementptr inbounds %struct._SubMtxManager* %manager, i64 0, i32 0
  %mtx.072 = load %struct._SubMtx** %head, align 8
  %cmp673 = icmp eq %struct._SubMtx* %mtx.072, null
  br i1 %cmp673, label %if.then26, label %for.body

for.cond:                                         ; preds = %for.body
  %next = getelementptr inbounds %struct._SubMtx* %mtx.075, i64 0, i32 9
  %mtx.0 = load %struct._SubMtx** %next, align 8
  %cmp6 = icmp eq %struct._SubMtx* %mtx.0, null
  br i1 %cmp6, label %if.then26, label %for.body

for.body:                                         ; preds = %if.end5, %for.cond
  %mtx.075 = phi %struct._SubMtx* [ %mtx.0, %for.cond ], [ %mtx.072, %if.end5 ]
  %prev.074 = phi %struct._SubMtx* [ %mtx.075, %for.cond ], [ null, %if.end5 ]
  %call7 = tail call i32 @SubMtx_nbytesInWorkspace(%struct._SubMtx* %mtx.075) #4
  %cmp8 = icmp slt i32 %call7, %nbytesNeeded
  br i1 %cmp8, label %for.cond, label %if.then12

if.then12:                                        ; preds = %for.body
  %cmp13 = icmp eq %struct._SubMtx* %prev.074, null
  %next15 = getelementptr inbounds %struct._SubMtx* %mtx.075, i64 0, i32 9
  %3 = load %struct._SubMtx** %next15, align 8, !tbaa !0
  br i1 %cmp13, label %if.then14, label %if.else

if.then14:                                        ; preds = %if.then12
  store %struct._SubMtx* %3, %struct._SubMtx** %head, align 8, !tbaa !0
  br label %if.end28

if.else:                                          ; preds = %if.then12
  %next18 = getelementptr inbounds %struct._SubMtx* %prev.074, i64 0, i32 9
  store %struct._SubMtx* %3, %struct._SubMtx** %next18, align 8, !tbaa !0
  br label %if.end28

if.then26:                                        ; preds = %for.cond, %if.end5
  %call21 = tail call %struct._SubMtx* @SubMtx_new() #4
  %wrkDV = getelementptr inbounds %struct._SubMtx* %call21, i64 0, i32 8
  %conv = sext i32 %nbytesNeeded to i64
  %div = lshr i64 %conv, 3
  %conv22 = trunc i64 %div to i32
  tail call void @DV_setSize(%struct._DV* %wrkDV, i32 %conv22) #4
  %call27 = tail call i32 @SubMtx_nbytesInWorkspace(%struct._SubMtx* %call21) #4
  %nbytesalloc = getelementptr inbounds %struct._SubMtxManager* %manager, i64 0, i32 6
  %4 = load i32* %nbytesalloc, align 4, !tbaa !3
  %add = add nsw i32 %4, %call27
  store i32 %add, i32* %nbytesalloc, align 4, !tbaa !3
  br label %if.end28

if.end28:                                         ; preds = %if.then14, %if.else, %if.then26
  %mtx.169 = phi %struct._SubMtx* [ %call21, %if.then26 ], [ %mtx.075, %if.else ], [ %mtx.075, %if.then14 ]
  %nactive = getelementptr inbounds %struct._SubMtxManager* %manager, i64 0, i32 3
  %5 = load i32* %nactive, align 4, !tbaa !3
  %inc29 = add nsw i32 %5, 1
  store i32 %inc29, i32* %nactive, align 4, !tbaa !3
  %call30 = tail call i32 @SubMtx_nbytesInWorkspace(%struct._SubMtx* %mtx.169) #4
  %nbytesactive = getelementptr inbounds %struct._SubMtxManager* %manager, i64 0, i32 4
  %6 = load i32* %nbytesactive, align 4, !tbaa !3
  %add31 = add nsw i32 %6, %call30
  store i32 %add31, i32* %nbytesactive, align 4, !tbaa !3
  %nbytesrequested = getelementptr inbounds %struct._SubMtxManager* %manager, i64 0, i32 5
  %7 = load i32* %nbytesrequested, align 4, !tbaa !3
  %add32 = add nsw i32 %7, %nbytesNeeded
  store i32 %add32, i32* %nbytesrequested, align 4, !tbaa !3
  %nrequests = getelementptr inbounds %struct._SubMtxManager* %manager, i64 0, i32 7
  %8 = load i32* %nrequests, align 4, !tbaa !3
  %inc33 = add nsw i32 %8, 1
  store i32 %inc33, i32* %nrequests, align 4, !tbaa !3
  %9 = load %struct._Lock** %lock, align 8, !tbaa !0
  %cmp35 = icmp eq %struct._Lock* %9, null
  br i1 %cmp35, label %if.end40, label %if.then37

if.then37:                                        ; preds = %if.end28
  %nunlocks = getelementptr inbounds %struct._SubMtxManager* %manager, i64 0, i32 10
  %10 = load i32* %nunlocks, align 4, !tbaa !3
  %inc38 = add nsw i32 %10, 1
  store i32 %inc38, i32* %nunlocks, align 4, !tbaa !3
  tail call void @Lock_unlock(%struct._Lock* %9) #4
  br label %if.end40

if.end40:                                         ; preds = %if.end28, %if.then37
  ret %struct._SubMtx* %mtx.169
}

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #1

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32) #2

; Function Attrs: optsize
declare void @Lock_lock(%struct._Lock*) #3

; Function Attrs: optsize
declare i32 @SubMtx_nbytesInWorkspace(%struct._SubMtx*) #3

; Function Attrs: optsize
declare %struct._SubMtx* @SubMtx_new() #3

; Function Attrs: optsize
declare void @DV_setSize(%struct._DV*, i32) #3

; Function Attrs: optsize
declare void @Lock_unlock(%struct._Lock*) #3

; Function Attrs: nounwind optsize uwtable
define void @SubMtxManager_releaseObject(%struct._SubMtxManager* %manager, %struct._SubMtx* %mtx1) #0 {
entry:
  %cmp = icmp eq %struct._SubMtxManager* %manager, null
  %cmp1 = icmp eq %struct._SubMtx* %mtx1, null
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([64 x i8]* @.str1, i64 0, i64 0), %struct._SubMtxManager* %manager, %struct._SubMtx* %mtx1) #4
  tail call void @exit(i32 -1) #5
  unreachable

if.end:                                           ; preds = %entry
  %lock = getelementptr inbounds %struct._SubMtxManager* %manager, i64 0, i32 1
  %1 = load %struct._Lock** %lock, align 8, !tbaa !0
  %cmp2 = icmp eq %struct._Lock* %1, null
  br i1 %cmp2, label %if.end5, label %if.then3

if.then3:                                         ; preds = %if.end
  tail call void @Lock_lock(%struct._Lock* %1) #4
  %nlocks = getelementptr inbounds %struct._SubMtxManager* %manager, i64 0, i32 9
  %2 = load i32* %nlocks, align 4, !tbaa !3
  %inc = add nsw i32 %2, 1
  store i32 %inc, i32* %nlocks, align 4, !tbaa !3
  br label %if.end5

if.end5:                                          ; preds = %if.end, %if.then3
  %nreleases = getelementptr inbounds %struct._SubMtxManager* %manager, i64 0, i32 8
  %3 = load i32* %nreleases, align 4, !tbaa !3
  %inc6 = add nsw i32 %3, 1
  store i32 %inc6, i32* %nreleases, align 4, !tbaa !3
  %call7 = tail call i32 @SubMtx_nbytesInWorkspace(%struct._SubMtx* %mtx1) #4
  %nbytesactive = getelementptr inbounds %struct._SubMtxManager* %manager, i64 0, i32 4
  %4 = load i32* %nbytesactive, align 4, !tbaa !3
  %sub = sub nsw i32 %4, %call7
  store i32 %sub, i32* %nbytesactive, align 4, !tbaa !3
  %nactive = getelementptr inbounds %struct._SubMtxManager* %manager, i64 0, i32 3
  %5 = load i32* %nactive, align 4, !tbaa !3
  %dec = add nsw i32 %5, -1
  store i32 %dec, i32* %nactive, align 4, !tbaa !3
  %mode = getelementptr inbounds %struct._SubMtxManager* %manager, i64 0, i32 2
  %6 = load i32* %mode, align 4, !tbaa !3
  %cmp8 = icmp eq i32 %6, 0
  br i1 %cmp8, label %if.then9, label %if.else

if.then9:                                         ; preds = %if.end5
  tail call void @SubMtx_free(%struct._SubMtx* %mtx1) #4
  br label %if.end23

if.else:                                          ; preds = %if.end5
  %call10 = tail call i32 @SubMtx_nbytesInWorkspace(%struct._SubMtx* %mtx1) #4
  %head = getelementptr inbounds %struct._SubMtxManager* %manager, i64 0, i32 0
  %mtx2.053 = load %struct._SubMtx** %head, align 8
  %cmp1154 = icmp eq %struct._SubMtx* %mtx2.053, null
  br i1 %cmp1154, label %if.then17, label %for.body

for.cond:                                         ; preds = %for.body
  %next = getelementptr inbounds %struct._SubMtx* %mtx2.056, i64 0, i32 9
  %mtx2.0 = load %struct._SubMtx** %next, align 8
  %cmp11 = icmp eq %struct._SubMtx* %mtx2.0, null
  br i1 %cmp11, label %for.end, label %for.body

for.body:                                         ; preds = %if.else, %for.cond
  %mtx2.056 = phi %struct._SubMtx* [ %mtx2.0, %for.cond ], [ %mtx2.053, %if.else ]
  %prev.055 = phi %struct._SubMtx* [ %mtx2.056, %for.cond ], [ null, %if.else ]
  %call12 = tail call i32 @SubMtx_nbytesInWorkspace(%struct._SubMtx* %mtx2.056) #4
  %cmp13 = icmp slt i32 %call12, %call10
  br i1 %cmp13, label %for.cond, label %for.end

for.end:                                          ; preds = %for.cond, %for.body
  %mtx2.0.lcssa = phi %struct._SubMtx* [ %mtx2.056, %for.body ], [ null, %for.cond ]
  %prev.0.lcssa = phi %struct._SubMtx* [ %prev.055, %for.body ], [ %mtx2.056, %for.cond ]
  %cmp16 = icmp eq %struct._SubMtx* %prev.0.lcssa, null
  br i1 %cmp16, label %if.then17, label %if.else19

if.then17:                                        ; preds = %if.else, %for.end
  %mtx2.0.lcssa63 = phi %struct._SubMtx* [ %mtx2.0.lcssa, %for.end ], [ null, %if.else ]
  store %struct._SubMtx* %mtx1, %struct._SubMtx** %head, align 8, !tbaa !0
  br label %if.end21

if.else19:                                        ; preds = %for.end
  %next20 = getelementptr inbounds %struct._SubMtx* %prev.0.lcssa, i64 0, i32 9
  store %struct._SubMtx* %mtx1, %struct._SubMtx** %next20, align 8, !tbaa !0
  br label %if.end21

if.end21:                                         ; preds = %if.else19, %if.then17
  %mtx2.0.lcssa62 = phi %struct._SubMtx* [ %mtx2.0.lcssa, %if.else19 ], [ %mtx2.0.lcssa63, %if.then17 ]
  %next22 = getelementptr inbounds %struct._SubMtx* %mtx1, i64 0, i32 9
  store %struct._SubMtx* %mtx2.0.lcssa62, %struct._SubMtx** %next22, align 8, !tbaa !0
  br label %if.end23

if.end23:                                         ; preds = %if.end21, %if.then9
  %7 = load %struct._Lock** %lock, align 8, !tbaa !0
  %cmp25 = icmp eq %struct._Lock* %7, null
  br i1 %cmp25, label %if.end29, label %if.then26

if.then26:                                        ; preds = %if.end23
  %nunlocks = getelementptr inbounds %struct._SubMtxManager* %manager, i64 0, i32 10
  %8 = load i32* %nunlocks, align 4, !tbaa !3
  %inc27 = add nsw i32 %8, 1
  store i32 %inc27, i32* %nunlocks, align 4, !tbaa !3
  tail call void @Lock_unlock(%struct._Lock* %7) #4
  br label %if.end29

if.end29:                                         ; preds = %if.end23, %if.then26
  ret void
}

; Function Attrs: optsize
declare void @SubMtx_free(%struct._SubMtx*) #3

; Function Attrs: nounwind optsize uwtable
define void @SubMtxManager_releaseListOfObjects(%struct._SubMtxManager* %manager, %struct._SubMtx* %head) #0 {
entry:
  %cmp = icmp eq %struct._SubMtxManager* %manager, null
  %cmp1 = icmp eq %struct._SubMtx* %head, null
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([71 x i8]* @.str2, i64 0, i64 0), %struct._SubMtxManager* %manager, %struct._SubMtx* %head) #4
  tail call void @exit(i32 -1) #5
  unreachable

if.end:                                           ; preds = %entry
  %lock = getelementptr inbounds %struct._SubMtxManager* %manager, i64 0, i32 1
  %1 = load %struct._Lock** %lock, align 8, !tbaa !0
  %cmp2 = icmp eq %struct._Lock* %1, null
  br i1 %cmp2, label %if.end5, label %if.then3

if.then3:                                         ; preds = %if.end
  tail call void @Lock_lock(%struct._Lock* %1) #4
  %nlocks = getelementptr inbounds %struct._SubMtxManager* %manager, i64 0, i32 9
  %2 = load i32* %nlocks, align 4, !tbaa !3
  %inc = add nsw i32 %2, 1
  store i32 %inc, i32* %nlocks, align 4, !tbaa !3
  br label %if.end5

if.end5:                                          ; preds = %if.end, %if.then3
  %mode = getelementptr inbounds %struct._SubMtxManager* %manager, i64 0, i32 2
  %3 = load i32* %mode, align 4, !tbaa !3
  %cmp6 = icmp eq i32 %3, 0
  br i1 %cmp6, label %while.body.lr.ph, label %while.body13.lr.ph

while.body13.lr.ph:                               ; preds = %if.end5
  %head16 = getelementptr inbounds %struct._SubMtxManager* %manager, i64 0, i32 0
  %nbytesactive31 = getelementptr inbounds %struct._SubMtxManager* %manager, i64 0, i32 4
  %nactive33 = getelementptr inbounds %struct._SubMtxManager* %manager, i64 0, i32 3
  %nreleases35 = getelementptr inbounds %struct._SubMtxManager* %manager, i64 0, i32 8
  br label %while.body13

while.body.lr.ph:                                 ; preds = %if.end5
  %nbytesactive = getelementptr inbounds %struct._SubMtxManager* %manager, i64 0, i32 4
  %nactive = getelementptr inbounds %struct._SubMtxManager* %manager, i64 0, i32 3
  %nreleases = getelementptr inbounds %struct._SubMtxManager* %manager, i64 0, i32 8
  br label %while.body

while.body:                                       ; preds = %while.body.lr.ph, %while.body
  %head.addr.078 = phi %struct._SubMtx* [ %head, %while.body.lr.ph ], [ %4, %while.body ]
  %next = getelementptr inbounds %struct._SubMtx* %head.addr.078, i64 0, i32 9
  %4 = load %struct._SubMtx** %next, align 8, !tbaa !0
  %call9 = tail call i32 @SubMtx_nbytesInWorkspace(%struct._SubMtx* %head.addr.078) #4
  %5 = load i32* %nbytesactive, align 4, !tbaa !3
  %sub = sub nsw i32 %5, %call9
  store i32 %sub, i32* %nbytesactive, align 4, !tbaa !3
  %6 = load i32* %nactive, align 4, !tbaa !3
  %dec = add nsw i32 %6, -1
  store i32 %dec, i32* %nactive, align 4, !tbaa !3
  %7 = load i32* %nreleases, align 4, !tbaa !3
  %inc10 = add nsw i32 %7, 1
  store i32 %inc10, i32* %nreleases, align 4, !tbaa !3
  tail call void @SubMtx_free(%struct._SubMtx* %head.addr.078) #4
  %cmp8 = icmp eq %struct._SubMtx* %4, null
  br i1 %cmp8, label %if.end38, label %while.body

while.body13:                                     ; preds = %while.body13.lr.ph, %if.end28
  %head.addr.186 = phi %struct._SubMtx* [ %head, %while.body13.lr.ph ], [ %8, %if.end28 ]
  %next14 = getelementptr inbounds %struct._SubMtx* %head.addr.186, i64 0, i32 9
  %8 = load %struct._SubMtx** %next14, align 8, !tbaa !0
  %call15 = tail call i32 @SubMtx_nbytesInWorkspace(%struct._SubMtx* %head.addr.186) #4
  %mtx2.079 = load %struct._SubMtx** %head16, align 8
  %cmp1780 = icmp eq %struct._SubMtx* %mtx2.079, null
  br i1 %cmp1780, label %if.then24, label %for.body

for.cond:                                         ; preds = %for.body
  %next22 = getelementptr inbounds %struct._SubMtx* %mtx2.082, i64 0, i32 9
  %mtx2.0 = load %struct._SubMtx** %next22, align 8
  %cmp17 = icmp eq %struct._SubMtx* %mtx2.0, null
  br i1 %cmp17, label %for.end, label %for.body

for.body:                                         ; preds = %while.body13, %for.cond
  %mtx2.082 = phi %struct._SubMtx* [ %mtx2.0, %for.cond ], [ %mtx2.079, %while.body13 ]
  %prev.081 = phi %struct._SubMtx* [ %mtx2.082, %for.cond ], [ null, %while.body13 ]
  %call18 = tail call i32 @SubMtx_nbytesInWorkspace(%struct._SubMtx* %mtx2.082) #4
  %cmp19 = icmp slt i32 %call18, %call15
  br i1 %cmp19, label %for.cond, label %for.end

for.end:                                          ; preds = %for.cond, %for.body
  %mtx2.0.lcssa = phi %struct._SubMtx* [ %mtx2.082, %for.body ], [ null, %for.cond ]
  %prev.0.lcssa = phi %struct._SubMtx* [ %prev.081, %for.body ], [ %mtx2.082, %for.cond ]
  %cmp23 = icmp eq %struct._SubMtx* %prev.0.lcssa, null
  br i1 %cmp23, label %if.then24, label %if.else26

if.then24:                                        ; preds = %while.body13, %for.end
  %mtx2.0.lcssa92 = phi %struct._SubMtx* [ %mtx2.0.lcssa, %for.end ], [ null, %while.body13 ]
  store %struct._SubMtx* %head.addr.186, %struct._SubMtx** %head16, align 8, !tbaa !0
  br label %if.end28

if.else26:                                        ; preds = %for.end
  %next27 = getelementptr inbounds %struct._SubMtx* %prev.0.lcssa, i64 0, i32 9
  store %struct._SubMtx* %head.addr.186, %struct._SubMtx** %next27, align 8, !tbaa !0
  br label %if.end28

if.end28:                                         ; preds = %if.else26, %if.then24
  %mtx2.0.lcssa91 = phi %struct._SubMtx* [ %mtx2.0.lcssa, %if.else26 ], [ %mtx2.0.lcssa92, %if.then24 ]
  store %struct._SubMtx* %mtx2.0.lcssa91, %struct._SubMtx** %next14, align 8, !tbaa !0
  %call30 = tail call i32 @SubMtx_nbytesInWorkspace(%struct._SubMtx* %head.addr.186) #4
  %9 = load i32* %nbytesactive31, align 4, !tbaa !3
  %sub32 = sub nsw i32 %9, %call30
  store i32 %sub32, i32* %nbytesactive31, align 4, !tbaa !3
  %10 = load i32* %nactive33, align 4, !tbaa !3
  %dec34 = add nsw i32 %10, -1
  store i32 %dec34, i32* %nactive33, align 4, !tbaa !3
  %11 = load i32* %nreleases35, align 4, !tbaa !3
  %inc36 = add nsw i32 %11, 1
  store i32 %inc36, i32* %nreleases35, align 4, !tbaa !3
  %cmp12 = icmp eq %struct._SubMtx* %8, null
  br i1 %cmp12, label %if.end38, label %while.body13

if.end38:                                         ; preds = %if.end28, %while.body
  %12 = load %struct._Lock** %lock, align 8, !tbaa !0
  %cmp40 = icmp eq %struct._Lock* %12, null
  br i1 %cmp40, label %if.end44, label %if.then41

if.then41:                                        ; preds = %if.end38
  %nunlocks = getelementptr inbounds %struct._SubMtxManager* %manager, i64 0, i32 10
  %13 = load i32* %nunlocks, align 4, !tbaa !3
  %inc42 = add nsw i32 %13, 1
  store i32 %inc42, i32* %nunlocks, align 4, !tbaa !3
  tail call void @Lock_unlock(%struct._Lock* %12) #4
  br label %if.end44

if.end44:                                         ; preds = %if.end38, %if.then41
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
