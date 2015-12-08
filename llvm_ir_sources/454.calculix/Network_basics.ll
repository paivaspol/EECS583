; ModuleID = '../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Network/src/Network_basics.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct._Network = type { i32, i32, i32, %struct._Arc**, %struct._Arc**, %struct._ArcChunk*, i32, %struct._IO_FILE* }
%struct._Arc = type { i32, i32, i32, i32, %struct._Arc*, %struct._Arc* }
%struct._ArcChunk = type { i32, i32, %struct._Arc*, %struct._ArcChunk* }

@stderr = external global %struct._IO_FILE*
@.str = private unnamed_addr constant [49 x i8] c"\0A ALLOCATE failure : bytes %zd, line %d, file %s\00", align 1
@.str1 = private unnamed_addr constant [83 x i8] c"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Network/src/Network_basics.c\00", align 1
@.str2 = private unnamed_addr constant [58 x i8] c"\0A fatal error in Network_setDefaultFields(%p)\0A bad input\0A\00", align 1
@.str3 = private unnamed_addr constant [51 x i8] c"\0A fatal error in Network_clearData(%p)\0A bad input\0A\00", align 1
@.str4 = private unnamed_addr constant [46 x i8] c"\0A fatal error in Network_free(%p)\0A bad input\0A\00", align 1

; Function Attrs: nounwind optsize uwtable
define %struct._Network* @Network_new() #0 {
entry:
  %call = tail call noalias i8* @malloc(i64 56) #4
  %0 = bitcast i8* %call to %struct._Network*
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call1 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([49 x i8]* @.str, i64 0, i64 0), i64 56, i32 19, i8* getelementptr inbounds ([83 x i8]* @.str1, i64 0, i64 0)) #4
  tail call void @exit(i32 -1) #5
  unreachable

if.end:                                           ; preds = %entry
  tail call void @Network_setDefaultFields(%struct._Network* %0) #6
  ret %struct._Network* %0
}

; Function Attrs: nounwind optsize
declare noalias i8* @malloc(i64) #1

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #1

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32) #2

; Function Attrs: nounwind optsize uwtable
define void @Network_setDefaultFields(%struct._Network* %network) #0 {
entry:
  %cmp = icmp eq %struct._Network* %network, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([58 x i8]* @.str2, i64 0, i64 0), %struct._Network* null) #4
  tail call void @exit(i32 -1) #5
  unreachable

if.end:                                           ; preds = %entry
  %nnode = getelementptr inbounds %struct._Network* %network, i64 0, i32 0
  store i32 0, i32* %nnode, align 4, !tbaa !3
  %narc = getelementptr inbounds %struct._Network* %network, i64 0, i32 1
  store i32 0, i32* %narc, align 4, !tbaa !3
  %ntrav = getelementptr inbounds %struct._Network* %network, i64 0, i32 2
  store i32 0, i32* %ntrav, align 4, !tbaa !3
  %inheads = getelementptr inbounds %struct._Network* %network, i64 0, i32 3
  %msgFile = getelementptr inbounds %struct._Network* %network, i64 0, i32 7
  store %struct._IO_FILE* null, %struct._IO_FILE** %msgFile, align 8, !tbaa !0
  %1 = bitcast %struct._Arc*** %inheads to i8*
  call void @llvm.memset.p0i8.i64(i8* %1, i8 0, i64 28, i32 8, i1 false)
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @Network_clearData(%struct._Network* %network) #0 {
entry:
  %cmp = icmp eq %struct._Network* %network, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([51 x i8]* @.str3, i64 0, i64 0), %struct._Network* null) #4
  tail call void @exit(i32 -1) #5
  unreachable

if.end:                                           ; preds = %entry
  %inheads = getelementptr inbounds %struct._Network* %network, i64 0, i32 3
  %1 = load %struct._Arc*** %inheads, align 8, !tbaa !0
  %cmp1 = icmp eq %struct._Arc** %1, null
  br i1 %cmp1, label %if.end9, label %if.then5

if.then5:                                         ; preds = %if.end
  %2 = bitcast %struct._Arc** %1 to i8*
  tail call void @free(i8* %2) #4
  store %struct._Arc** null, %struct._Arc*** %inheads, align 8, !tbaa !0
  br label %if.end9

if.end9:                                          ; preds = %if.end, %if.then5
  %outheads = getelementptr inbounds %struct._Network* %network, i64 0, i32 4
  %3 = load %struct._Arc*** %outheads, align 8, !tbaa !0
  %cmp10 = icmp eq %struct._Arc** %3, null
  br i1 %cmp10, label %while.cond.preheader, label %if.then14

if.then14:                                        ; preds = %if.end9
  %4 = bitcast %struct._Arc** %3 to i8*
  tail call void @free(i8* %4) #4
  store %struct._Arc** null, %struct._Arc*** %outheads, align 8, !tbaa !0
  br label %while.cond.preheader

while.cond.preheader:                             ; preds = %if.then14, %if.end9
  %chunk19 = getelementptr inbounds %struct._Network* %network, i64 0, i32 5
  %5 = load %struct._ArcChunk** %chunk19, align 8, !tbaa !0
  %cmp2047 = icmp eq %struct._ArcChunk* %5, null
  br i1 %cmp2047, label %while.end, label %while.body

while.body:                                       ; preds = %while.cond.preheader, %if.then28
  %6 = phi %struct._ArcChunk* [ %11, %if.then28 ], [ %5, %while.cond.preheader ]
  %next = getelementptr inbounds %struct._ArcChunk* %6, i64 0, i32 3
  %7 = load %struct._ArcChunk** %next, align 8, !tbaa !0
  store %struct._ArcChunk* %7, %struct._ArcChunk** %chunk19, align 8, !tbaa !0
  %base = getelementptr inbounds %struct._ArcChunk* %6, i64 0, i32 2
  %8 = load %struct._Arc** %base, align 8, !tbaa !0
  %cmp22 = icmp eq %struct._Arc* %8, null
  br i1 %cmp22, label %if.then28, label %if.then23

if.then23:                                        ; preds = %while.body
  %9 = bitcast %struct._Arc* %8 to i8*
  tail call void @free(i8* %9) #4
  br label %if.then28

if.then28:                                        ; preds = %if.then23, %while.body
  %10 = bitcast %struct._ArcChunk* %6 to i8*
  tail call void @free(i8* %10) #4
  %11 = load %struct._ArcChunk** %chunk19, align 8, !tbaa !0
  %cmp20 = icmp eq %struct._ArcChunk* %11, null
  br i1 %cmp20, label %while.end, label %while.body

while.end:                                        ; preds = %if.then28, %while.cond.preheader
  tail call void @Network_setDefaultFields(%struct._Network* %network) #6
  ret void
}

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) #1

; Function Attrs: nounwind optsize uwtable
define void @Network_free(%struct._Network* %network) #0 {
entry:
  %cmp = icmp eq %struct._Network* %network, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([46 x i8]* @.str4, i64 0, i64 0), %struct._Network* null) #4
  tail call void @exit(i32 -1) #5
  unreachable

if.end:                                           ; preds = %entry
  tail call void @Network_clearData(%struct._Network* %network) #6
  %1 = bitcast %struct._Network* %network to i8*
  tail call void @free(i8* %1) #4
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #3

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { nounwind optsize }
attributes #5 = { noreturn nounwind optsize }
attributes #6 = { optsize }

!0 = metadata !{metadata !"any pointer", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"int", metadata !1}
