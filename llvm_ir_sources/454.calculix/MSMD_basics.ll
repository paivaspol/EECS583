; ModuleID = '../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/MSMD/src/MSMD_basics.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct._MSMD = type { i32, %struct._IIheap*, i32, %struct._IP*, %struct._IP*, %struct._MSMDvtx*, %struct._IV, %struct._IV }
%struct._IIheap = type { i32, i32, i32*, i32*, i32* }
%struct._IP = type { i32, %struct._IP* }
%struct._MSMDvtx = type { i32, i8, i8, i32, i32, i32, i32*, i32, %struct._MSMDvtx*, %struct._IP* }
%struct._IV = type { i32, i32, i32, i32* }

@stderr = external global %struct._IO_FILE*
@.str = private unnamed_addr constant [49 x i8] c"\0A ALLOCATE failure : bytes %zd, line %d, file %s\00", align 1
@.str1 = private unnamed_addr constant [77 x i8] c"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/MSMD/src/MSMD_basics.c\00", align 1
@.str2 = private unnamed_addr constant [48 x i8] c"\0A fatal error in MSMD_clearData(%p)\0A bad input\0A\00", align 1

; Function Attrs: nounwind optsize uwtable
define %struct._MSMD* @MSMD_new() #0 {
entry:
  %call = tail call noalias i8* @malloc(i64 96) #5
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call1 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([49 x i8]* @.str, i64 0, i64 0), i64 96, i32 21, i8* getelementptr inbounds ([77 x i8]* @.str1, i64 0, i64 0)) #5
  tail call void @exit(i32 -1) #6
  unreachable

if.end:                                           ; preds = %entry
  %1 = bitcast i8* %call to %struct._MSMD*
  %nvtx.i = bitcast i8* %call to i32*
  store i32 0, i32* %nvtx.i, align 4, !tbaa !3
  %heap.i = getelementptr inbounds i8* %call, i64 8
  %2 = bitcast i8* %heap.i to %struct._IIheap**
  store %struct._IIheap* null, %struct._IIheap** %2, align 8, !tbaa !0
  %incrIP.i = getelementptr inbounds i8* %call, i64 16
  %3 = bitcast i8* %incrIP.i to i32*
  store i32 0, i32* %3, align 4, !tbaa !3
  %baseIP.i = getelementptr inbounds i8* %call, i64 24
  %ivtmpIV.i = getelementptr inbounds i8* %call, i64 48
  %4 = bitcast i8* %ivtmpIV.i to %struct._IV*
  tail call void @llvm.memset.p0i8.i64(i8* %baseIP.i, i8 0, i64 24, i32 8, i1 false) #4
  tail call void @IV_setDefaultFields(%struct._IV* %4) #5
  %reachIV.i = getelementptr inbounds i8* %call, i64 72
  %5 = bitcast i8* %reachIV.i to %struct._IV*
  tail call void @IV_setDefaultFields(%struct._IV* %5) #5
  ret %struct._MSMD* %1
}

; Function Attrs: nounwind optsize
declare noalias i8* @malloc(i64) #1

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #1

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32) #2

; Function Attrs: nounwind optsize uwtable
define void @MSMD_setDefaultFields(%struct._MSMD* %msmd) #0 {
entry:
  %nvtx = getelementptr inbounds %struct._MSMD* %msmd, i64 0, i32 0
  store i32 0, i32* %nvtx, align 4, !tbaa !3
  %heap = getelementptr inbounds %struct._MSMD* %msmd, i64 0, i32 1
  store %struct._IIheap* null, %struct._IIheap** %heap, align 8, !tbaa !0
  %incrIP = getelementptr inbounds %struct._MSMD* %msmd, i64 0, i32 2
  store i32 0, i32* %incrIP, align 4, !tbaa !3
  %baseIP = getelementptr inbounds %struct._MSMD* %msmd, i64 0, i32 3
  %ivtmpIV = getelementptr inbounds %struct._MSMD* %msmd, i64 0, i32 6
  %0 = bitcast %struct._IP** %baseIP to i8*
  call void @llvm.memset.p0i8.i64(i8* %0, i8 0, i64 24, i32 8, i1 false)
  tail call void @IV_setDefaultFields(%struct._IV* %ivtmpIV) #5
  %reachIV = getelementptr inbounds %struct._MSMD* %msmd, i64 0, i32 7
  tail call void @IV_setDefaultFields(%struct._IV* %reachIV) #5
  ret void
}

; Function Attrs: optsize
declare void @IV_setDefaultFields(%struct._IV*) #3

; Function Attrs: nounwind optsize uwtable
define void @MSMD_clearData(%struct._MSMD* %msmd) #0 {
entry:
  %cmp = icmp eq %struct._MSMD* %msmd, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([48 x i8]* @.str2, i64 0, i64 0), %struct._MSMD* null) #5
  tail call void @exit(i32 -1) #6
  unreachable

if.end:                                           ; preds = %entry
  %heap = getelementptr inbounds %struct._MSMD* %msmd, i64 0, i32 1
  %1 = load %struct._IIheap** %heap, align 8, !tbaa !0
  %cmp1 = icmp eq %struct._IIheap* %1, null
  br i1 %cmp1, label %if.end4, label %if.then2

if.then2:                                         ; preds = %if.end
  tail call void @IIheap_free(%struct._IIheap* %1) #5
  br label %if.end4

if.end4:                                          ; preds = %if.end, %if.then2
  %vertices = getelementptr inbounds %struct._MSMD* %msmd, i64 0, i32 5
  %2 = load %struct._MSMDvtx** %vertices, align 8, !tbaa !0
  %cmp5 = icmp eq %struct._MSMDvtx* %2, null
  br i1 %cmp5, label %if.end24, label %if.then6

if.then6:                                         ; preds = %if.end4
  %nvtx = getelementptr inbounds %struct._MSMD* %msmd, i64 0, i32 0
  %3 = load i32* %nvtx, align 4, !tbaa !3
  %idx.ext = sext i32 %3 to i64
  %add.ptr.sum = add i64 %idx.ext, -1
  %add.ptr8 = getelementptr inbounds %struct._MSMDvtx* %2, i64 %add.ptr.sum
  %cmp949 = icmp slt i64 %add.ptr.sum, 0
  br i1 %cmp949, label %if.then20, label %for.body

for.body:                                         ; preds = %if.then6, %for.inc
  %v.050 = phi %struct._MSMDvtx* [ %incdec.ptr, %for.inc ], [ %2, %if.then6 ]
  %status = getelementptr inbounds %struct._MSMDvtx* %v.050, i64 0, i32 2
  %4 = load i8* %status, align 1, !tbaa !1
  %cmp10 = icmp eq i8 %4, 69
  br i1 %cmp10, label %land.lhs.true, label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %adj = getelementptr inbounds %struct._MSMDvtx* %v.050, i64 0, i32 6
  %5 = load i32** %adj, align 8, !tbaa !0
  %cmp12 = icmp eq i32* %5, null
  br i1 %cmp12, label %for.inc, label %if.then14

if.then14:                                        ; preds = %land.lhs.true
  tail call void @IVfree(i32* %5) #5
  br label %for.inc

for.inc:                                          ; preds = %land.lhs.true, %for.body, %if.then14
  %incdec.ptr = getelementptr inbounds %struct._MSMDvtx* %v.050, i64 1
  %cmp9 = icmp ugt %struct._MSMDvtx* %incdec.ptr, %add.ptr8
  br i1 %cmp9, label %for.end, label %for.body

for.end:                                          ; preds = %for.inc
  %.pre = load %struct._MSMDvtx** %vertices, align 8, !tbaa !0
  %cmp18 = icmp eq %struct._MSMDvtx* %.pre, null
  br i1 %cmp18, label %if.end24, label %if.then20

if.then20:                                        ; preds = %if.then6, %for.end
  %6 = phi %struct._MSMDvtx* [ %.pre, %for.end ], [ %2, %if.then6 ]
  %7 = bitcast %struct._MSMDvtx* %6 to i8*
  tail call void @free(i8* %7) #5
  store %struct._MSMDvtx* null, %struct._MSMDvtx** %vertices, align 8, !tbaa !0
  br label %if.end24

if.end24:                                         ; preds = %for.end, %if.end4, %if.then20
  %ivtmpIV = getelementptr inbounds %struct._MSMD* %msmd, i64 0, i32 6
  tail call void @IV_clearData(%struct._IV* %ivtmpIV) #5
  %reachIV = getelementptr inbounds %struct._MSMD* %msmd, i64 0, i32 7
  tail call void @IV_clearData(%struct._IV* %reachIV) #5
  %baseIP = getelementptr inbounds %struct._MSMD* %msmd, i64 0, i32 3
  %8 = load %struct._IP** %baseIP, align 8, !tbaa !0
  %cmp2548 = icmp eq %struct._IP* %8, null
  br i1 %cmp2548, label %while.end, label %while.body

while.body:                                       ; preds = %if.end24, %while.body
  %9 = phi %struct._IP* [ %11, %while.body ], [ %8, %if.end24 ]
  %next = getelementptr inbounds %struct._IP* %9, i64 0, i32 1
  %10 = load %struct._IP** %next, align 8, !tbaa !0
  store %struct._IP* %10, %struct._IP** %baseIP, align 8, !tbaa !0
  tail call void @IP_free(%struct._IP* %9) #5
  %11 = load %struct._IP** %baseIP, align 8, !tbaa !0
  %cmp25 = icmp eq %struct._IP* %11, null
  br i1 %cmp25, label %while.end, label %while.body

while.end:                                        ; preds = %while.body, %if.end24
  %nvtx.i = getelementptr inbounds %struct._MSMD* %msmd, i64 0, i32 0
  store i32 0, i32* %nvtx.i, align 4, !tbaa !3
  store %struct._IIheap* null, %struct._IIheap** %heap, align 8, !tbaa !0
  %incrIP.i = getelementptr inbounds %struct._MSMD* %msmd, i64 0, i32 2
  store i32 0, i32* %incrIP.i, align 4, !tbaa !3
  %12 = bitcast %struct._IP** %baseIP to i8*
  tail call void @llvm.memset.p0i8.i64(i8* %12, i8 0, i64 24, i32 8, i1 false) #4
  tail call void @IV_setDefaultFields(%struct._IV* %ivtmpIV) #5
  tail call void @IV_setDefaultFields(%struct._IV* %reachIV) #5
  ret void
}

; Function Attrs: optsize
declare void @IIheap_free(%struct._IIheap*) #3

; Function Attrs: optsize
declare void @IVfree(i32*) #3

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) #1

; Function Attrs: optsize
declare void @IV_clearData(%struct._IV*) #3

; Function Attrs: optsize
declare void @IP_free(%struct._IP*) #3

; Function Attrs: nounwind optsize uwtable
define void @MSMD_free(%struct._MSMD* %msmd) #0 {
entry:
  tail call void @MSMD_clearData(%struct._MSMD* %msmd) #7
  %cmp = icmp eq %struct._MSMD* %msmd, null
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %0 = bitcast %struct._MSMD* %msmd to i8*
  tail call void @free(i8* %0) #5
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #4

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
