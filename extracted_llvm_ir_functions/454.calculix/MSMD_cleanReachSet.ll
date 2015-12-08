; ModuleID = '../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/MSMD/src/MSMD_cleanReachSet.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct._MSMD = type { i32, %struct._IIheap*, i32, %struct._IP*, %struct._IP*, %struct._MSMDvtx*, %struct._IV, %struct._IV }
%struct._IIheap = type { i32, i32, i32*, i32*, i32* }
%struct._IP = type { i32, %struct._IP* }
%struct._MSMDvtx = type { i32, i8, i8, i32, i32, i32, i32*, i32, %struct._MSMDvtx*, %struct._IP* }
%struct._IV = type { i32, i32, i32, i32* }
%struct._MSMDinfo = type { i32, i32, double, i32, i32, %struct._IO_FILE*, i32, i32, i32, i32, %struct._MSMDstageInfo*, double }
%struct._MSMDstageInfo = type { i32, i32, i32, i32, i32, double, i32, i32, i32, i32, i32, i32, double }

@stderr = external global %struct._IO_FILE*
@.str = private unnamed_addr constant [47 x i8] c"\0A inside MSMD_cleanReachSet(%p,%p)\0A bad input\0A\00", align 1
@.str1 = private unnamed_addr constant [69 x i8] c"\0A inside MSMD_cleanReachSet(%p)\0A nreach = %d, reach = %p, nvtx = %d\0A\00", align 1
@.str2 = private unnamed_addr constant [32 x i8] c"\0A inside MSMD_cleanReachSet(%p)\00", align 1
@.str3 = private unnamed_addr constant [53 x i8] c"\0A inside MSMD_cleanSubtreeList(%p,%p,%p)\0A bad input\0A\00", align 1
@.str4 = private unnamed_addr constant [35 x i8] c"\0A inside MSMD_cleanSubtreeList(%d)\00", align 1
@.str5 = private unnamed_addr constant [50 x i8] c"\0A inside MSMD_cleanEdgeList(%p,%p,%p)\0A bad input\0A\00", align 1
@.str6 = private unnamed_addr constant [49 x i8] c"\0A inside MSMD_cleanEdgeList(%p,%p)\0A %d's edges :\00", align 1
@.str7 = private unnamed_addr constant [12 x i8] c"\0A   <%d,%c>\00", align 1
@.str8 = private unnamed_addr constant [24 x i8] c"\0A subtree list for %d :\00", align 1
@.str9 = private unnamed_addr constant [50 x i8] c"\0A leaving MSMD_cleanEdgeList(%p,%p)\0A %d's edges :\00", align 1

; Function Attrs: nounwind optsize uwtable
define void @MSMD_cleanReachSet(%struct._MSMD* %msmd, %struct._MSMDinfo* %info) #0 {
entry:
  %cmp = icmp eq %struct._MSMD* %msmd, null
  %cmp1 = icmp eq %struct._MSMDinfo* %info, null
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([47 x i8]* @.str, i64 0, i64 0), %struct._MSMD* %msmd, %struct._MSMDinfo* %info) #4
  tail call void @exit(i32 -1) #5
  unreachable

if.end:                                           ; preds = %entry
  %reachIV = getelementptr inbounds %struct._MSMD* %msmd, i64 0, i32 7
  %call2 = tail call i32 @IV_size(%struct._IV* %reachIV) #4
  %call4 = tail call i32* @IV_entries(%struct._IV* %reachIV) #4
  %cmp5 = icmp slt i32 %call2, 0
  %nvtx11.phi.trans.insert = getelementptr inbounds %struct._MSMD* %msmd, i64 0, i32 0
  %.pre = load i32* %nvtx11.phi.trans.insert, align 4, !tbaa !3
  br i1 %cmp5, label %if.then10, label %lor.lhs.false6

lor.lhs.false6:                                   ; preds = %if.end
  %cmp7 = icmp sgt i32 %call2, %.pre
  %cmp9 = icmp eq i32* %call4, null
  %or.cond87 = or i1 %cmp7, %cmp9
  br i1 %or.cond87, label %if.then10, label %if.end13

if.then10:                                        ; preds = %if.end, %lor.lhs.false6
  %1 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call12 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([69 x i8]* @.str1, i64 0, i64 0), %struct._MSMD* %msmd, i32 %call2, i32* %call4, i32 %.pre) #4
  tail call void @exit(i32 -1) #5
  unreachable

if.end13:                                         ; preds = %lor.lhs.false6
  %msglvl = getelementptr inbounds %struct._MSMDinfo* %info, i64 0, i32 4
  %2 = load i32* %msglvl, align 4, !tbaa !3
  %cmp14 = icmp sgt i32 %2, 4
  br i1 %cmp14, label %if.then15, label %for.cond.preheader

if.then15:                                        ; preds = %if.end13
  %msgFile = getelementptr inbounds %struct._MSMDinfo* %info, i64 0, i32 5
  %3 = load %struct._IO_FILE** %msgFile, align 8, !tbaa !0
  %call16 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([32 x i8]* @.str2, i64 0, i64 0), %struct._MSMD* %msmd) #4
  %4 = load %struct._IO_FILE** %msgFile, align 8, !tbaa !0
  %call18 = tail call i32 @fflush(%struct._IO_FILE* %4) #4
  br label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.then15, %if.end13
  %cmp2092 = icmp sgt i32 %call2, 0
  br i1 %cmp2092, label %for.body.lr.ph, label %for.end31

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %vertices = getelementptr inbounds %struct._MSMD* %msmd, i64 0, i32 5
  br label %for.body

for.cond21.preheader:                             ; preds = %for.body
  br i1 %cmp2092, label %for.body23.lr.ph, label %for.end31

for.body23.lr.ph:                                 ; preds = %for.cond21.preheader
  %vertices24 = getelementptr inbounds %struct._MSMD* %msmd, i64 0, i32 5
  br label %for.body23

for.body:                                         ; preds = %for.body, %for.body.lr.ph
  %indvars.iv98 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next99, %for.body ]
  %5 = load %struct._MSMDvtx** %vertices, align 8, !tbaa !0
  %arrayidx = getelementptr inbounds i32* %call4, i64 %indvars.iv98
  %6 = load i32* %arrayidx, align 4, !tbaa !3
  %idx.ext = sext i32 %6 to i64
  %add.ptr = getelementptr inbounds %struct._MSMDvtx* %5, i64 %idx.ext
  tail call void @MSMD_cleanSubtreeList(%struct._MSMD* %msmd, %struct._MSMDvtx* %add.ptr, %struct._MSMDinfo* %info) #6
  %indvars.iv.next99 = add i64 %indvars.iv98, 1
  %lftr.wideiv100 = trunc i64 %indvars.iv.next99 to i32
  %exitcond101 = icmp eq i32 %lftr.wideiv100, %call2
  br i1 %exitcond101, label %for.cond21.preheader, label %for.body

for.body23:                                       ; preds = %for.body23, %for.body23.lr.ph
  %indvars.iv94 = phi i64 [ 0, %for.body23.lr.ph ], [ %indvars.iv.next95, %for.body23 ]
  %7 = load %struct._MSMDvtx** %vertices24, align 8, !tbaa !0
  %arrayidx26 = getelementptr inbounds i32* %call4, i64 %indvars.iv94
  %8 = load i32* %arrayidx26, align 4, !tbaa !3
  %idx.ext27 = sext i32 %8 to i64
  %add.ptr28 = getelementptr inbounds %struct._MSMDvtx* %7, i64 %idx.ext27
  tail call void @MSMD_cleanEdgeList(%struct._MSMD* %msmd, %struct._MSMDvtx* %add.ptr28, %struct._MSMDinfo* %info) #6
  %indvars.iv.next95 = add i64 %indvars.iv94, 1
  %lftr.wideiv96 = trunc i64 %indvars.iv.next95 to i32
  %exitcond97 = icmp eq i32 %lftr.wideiv96, %call2
  br i1 %exitcond97, label %for.end31, label %for.body23

for.end31:                                        ; preds = %for.cond.preheader, %for.body23, %for.cond21.preheader
  %9 = load i32* %msglvl, align 4, !tbaa !3
  %cmp33.not = icmp slt i32 %9, 4
  %cmp2092.not = xor i1 %cmp2092, true
  %brmerge = or i1 %cmp33.not, %cmp2092.not
  br i1 %brmerge, label %if.end47, label %for.body37.lr.ph

for.body37.lr.ph:                                 ; preds = %for.end31
  %vertices38 = getelementptr inbounds %struct._MSMD* %msmd, i64 0, i32 5
  %msgFile43 = getelementptr inbounds %struct._MSMDinfo* %info, i64 0, i32 5
  br label %for.body37

for.body37:                                       ; preds = %for.body37, %for.body37.lr.ph
  %indvars.iv = phi i64 [ 0, %for.body37.lr.ph ], [ %indvars.iv.next, %for.body37 ]
  %10 = load %struct._MSMDvtx** %vertices38, align 8, !tbaa !0
  %arrayidx40 = getelementptr inbounds i32* %call4, i64 %indvars.iv
  %11 = load i32* %arrayidx40, align 4, !tbaa !3
  %idx.ext41 = sext i32 %11 to i64
  %add.ptr42 = getelementptr inbounds %struct._MSMDvtx* %10, i64 %idx.ext41
  %12 = load %struct._IO_FILE** %msgFile43, align 8, !tbaa !0
  tail call void @MSMDvtx_print(%struct._MSMDvtx* %add.ptr42, %struct._IO_FILE* %12) #4
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %call2
  br i1 %exitcond, label %if.end47, label %for.body37

if.end47:                                         ; preds = %for.end31, %for.body37
  ret void
}

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #1

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32) #2

; Function Attrs: optsize
declare i32 @IV_size(%struct._IV*) #3

; Function Attrs: optsize
declare i32* @IV_entries(%struct._IV*) #3

; Function Attrs: nounwind optsize
declare i32 @fflush(%struct._IO_FILE* nocapture) #1

; Function Attrs: nounwind optsize uwtable
define void @MSMD_cleanSubtreeList(%struct._MSMD* %msmd, %struct._MSMDvtx* %v, %struct._MSMDinfo* %info) #0 {
entry:
  %cmp = icmp eq %struct._MSMD* %msmd, null
  %cmp1 = icmp eq %struct._MSMDvtx* %v, null
  %or.cond = or i1 %cmp, %cmp1
  %cmp3 = icmp eq %struct._MSMDinfo* %info, null
  %or.cond50 = or i1 %or.cond, %cmp3
  br i1 %or.cond50, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([53 x i8]* @.str3, i64 0, i64 0), %struct._MSMD* %msmd, %struct._MSMDvtx* %v, %struct._MSMDinfo* %info) #4
  tail call void @exit(i32 -1) #5
  unreachable

if.end:                                           ; preds = %entry
  %msglvl = getelementptr inbounds %struct._MSMDinfo* %info, i64 0, i32 4
  %1 = load i32* %msglvl, align 4, !tbaa !3
  %cmp4 = icmp sgt i32 %1, 4
  br i1 %cmp4, label %land.lhs.true, label %if.end11

land.lhs.true:                                    ; preds = %if.end
  %msgFile = getelementptr inbounds %struct._MSMDinfo* %info, i64 0, i32 5
  %2 = load %struct._IO_FILE** %msgFile, align 8, !tbaa !0
  %cmp5 = icmp eq %struct._IO_FILE* %2, null
  br i1 %cmp5, label %if.end11, label %if.then6

if.then6:                                         ; preds = %land.lhs.true
  %id = getelementptr inbounds %struct._MSMDvtx* %v, i64 0, i32 0
  %3 = load i32* %id, align 4, !tbaa !3
  %call8 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([35 x i8]* @.str4, i64 0, i64 0), i32 %3) #4
  %4 = load %struct._IO_FILE** %msgFile, align 8, !tbaa !0
  %call10 = tail call i32 @fflush(%struct._IO_FILE* %4) #4
  br label %if.end11

if.end11:                                         ; preds = %land.lhs.true, %if.then6, %if.end
  %subtrees = getelementptr inbounds %struct._MSMDvtx* %v, i64 0, i32 9
  %5 = load %struct._IP** %subtrees, align 8, !tbaa !0
  store %struct._IP* null, %struct._IP** %subtrees, align 8, !tbaa !0
  %cmp135254 = icmp eq %struct._IP* %5, null
  br i1 %cmp135254, label %while.end, label %while.body.lr.ph.lr.ph

while.body.lr.ph.lr.ph:                           ; preds = %if.end11
  %vertices = getelementptr inbounds %struct._MSMD* %msmd, i64 0, i32 5
  %freeIP = getelementptr inbounds %struct._MSMD* %msmd, i64 0, i32 4
  br label %while.body.lr.ph

while.body.lr.ph:                                 ; preds = %while.body.lr.ph.lr.ph, %if.end20
  %ip.0.ph56 = phi %struct._IP* [ %5, %while.body.lr.ph.lr.ph ], [ %6, %if.end20 ]
  %prev.0.ph55 = phi %struct._IP* [ null, %while.body.lr.ph.lr.ph ], [ %ip.053, %if.end20 ]
  br label %while.body

while.body:                                       ; preds = %while.body.lr.ph, %if.else22
  %ip.053 = phi %struct._IP* [ %ip.0.ph56, %while.body.lr.ph ], [ %6, %if.else22 ]
  %next = getelementptr inbounds %struct._IP* %ip.053, i64 0, i32 1
  %6 = load %struct._IP** %next, align 8, !tbaa !0
  %val = getelementptr inbounds %struct._IP* %ip.053, i64 0, i32 0
  %7 = load i32* %val, align 4, !tbaa !3
  %8 = load %struct._MSMDvtx** %vertices, align 8, !tbaa !0
  %idx.ext = sext i32 %7 to i64
  %par = getelementptr inbounds %struct._MSMDvtx* %8, i64 %idx.ext, i32 8
  %9 = load %struct._MSMDvtx** %par, align 8, !tbaa !0
  %cmp14 = icmp eq %struct._MSMDvtx* %9, null
  br i1 %cmp14, label %if.then15, label %if.else22

if.then15:                                        ; preds = %while.body
  %cmp16 = icmp eq %struct._IP* %prev.0.ph55, null
  br i1 %cmp16, label %if.then17, label %if.else

if.then17:                                        ; preds = %if.then15
  store %struct._IP* %ip.053, %struct._IP** %subtrees, align 8, !tbaa !0
  br label %if.end20

if.else:                                          ; preds = %if.then15
  %next19 = getelementptr inbounds %struct._IP* %prev.0.ph55, i64 0, i32 1
  store %struct._IP* %ip.053, %struct._IP** %next19, align 8, !tbaa !0
  br label %if.end20

if.end20:                                         ; preds = %if.else, %if.then17
  store %struct._IP* null, %struct._IP** %next, align 8, !tbaa !0
  %cmp1352 = icmp eq %struct._IP* %6, null
  br i1 %cmp1352, label %while.end, label %while.body.lr.ph

if.else22:                                        ; preds = %while.body
  store i32 -1, i32* %val, align 4, !tbaa !3
  %10 = load %struct._IP** %freeIP, align 8, !tbaa !0
  store %struct._IP* %10, %struct._IP** %next, align 8, !tbaa !0
  store %struct._IP* %ip.053, %struct._IP** %freeIP, align 8, !tbaa !0
  %cmp13 = icmp eq %struct._IP* %6, null
  br i1 %cmp13, label %while.end, label %while.body

while.end:                                        ; preds = %if.end11, %if.end20, %if.else22
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @MSMD_cleanEdgeList(%struct._MSMD* %msmd, %struct._MSMDvtx* %v, %struct._MSMDinfo* %info) #0 {
entry:
  %ierr = alloca i32, align 4
  %cmp = icmp eq %struct._MSMD* %msmd, null
  %cmp1 = icmp eq %struct._MSMDvtx* %v, null
  %or.cond = or i1 %cmp, %cmp1
  %cmp3 = icmp eq %struct._MSMDinfo* %info, null
  %or.cond182 = or i1 %or.cond, %cmp3
  br i1 %or.cond182, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([50 x i8]* @.str5, i64 0, i64 0), %struct._MSMD* %msmd, %struct._MSMDvtx* %v, %struct._MSMDinfo* %info) #4
  call void @exit(i32 -1) #5
  unreachable

if.end:                                           ; preds = %entry
  %nadj = getelementptr inbounds %struct._MSMDvtx* %v, i64 0, i32 5
  %1 = load i32* %nadj, align 4, !tbaa !3
  %adj = getelementptr inbounds %struct._MSMDvtx* %v, i64 0, i32 6
  %2 = load i32** %adj, align 8, !tbaa !0
  %msglvl = getelementptr inbounds %struct._MSMDinfo* %info, i64 0, i32 4
  %3 = load i32* %msglvl, align 4, !tbaa !3
  %cmp4 = icmp sgt i32 %3, 5
  br i1 %cmp4, label %if.then5, label %if.end11

if.then5:                                         ; preds = %if.end
  %msgFile = getelementptr inbounds %struct._MSMDinfo* %info, i64 0, i32 5
  %4 = load %struct._IO_FILE** %msgFile, align 8, !tbaa !0
  %id = getelementptr inbounds %struct._MSMDvtx* %v, i64 0, i32 0
  %5 = load i32* %id, align 4, !tbaa !3
  %call6 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([49 x i8]* @.str6, i64 0, i64 0), %struct._MSMD* %msmd, %struct._MSMDvtx* %v, i32 %5) #4
  %6 = load %struct._IO_FILE** %msgFile, align 8, !tbaa !0
  %call8 = call i32 @IVfp80(%struct._IO_FILE* %6, i32 %1, i32* %2, i32 12, i32* %ierr) #4
  %7 = load %struct._IO_FILE** %msgFile, align 8, !tbaa !0
  %call10 = call i32 @fflush(%struct._IO_FILE* %7) #4
  br label %if.end11

if.end11:                                         ; preds = %if.then5, %if.end
  %sub = add nsw i32 %1, -1
  %cmp12206210 = icmp slt i32 %1, 1
  br i1 %cmp12206210, label %while.end90, label %while.body.lr.ph.lr.ph

while.body.lr.ph.lr.ph:                           ; preds = %if.end11
  %vertices = getelementptr inbounds %struct._MSMD* %msmd, i64 0, i32 5
  %msgFile16 = getelementptr inbounds %struct._MSMDinfo* %info, i64 0, i32 5
  %subtrees = getelementptr inbounds %struct._MSMDvtx* %v, i64 0, i32 9
  %id45 = getelementptr inbounds %struct._MSMDvtx* %v, i64 0, i32 0
  br label %while.body.lr.ph

while.body.lr.ph:                                 ; preds = %while.body.lr.ph.lr.ph, %while.end
  %i.0.ph212 = phi i32 [ 0, %while.body.lr.ph.lr.ph ], [ %inc.i.0, %while.end ]
  %j.0.ph211 = phi i32 [ %sub, %while.body.lr.ph.lr.ph ], [ %j.1, %while.end ]
  %idxprom = sext i32 %i.0.ph212 to i64
  %arrayidx = getelementptr inbounds i32* %2, i64 %idxprom
  %8 = sext i32 %j.0.ph211 to i64
  br label %while.body

while.body:                                       ; preds = %while.cond.backedge, %while.body.lr.ph
  %indvars.iv = phi i64 [ %8, %while.body.lr.ph ], [ %indvars.iv.next, %while.cond.backedge ]
  %j.0207 = phi i32 [ %j.0.ph211, %while.body.lr.ph ], [ %j.0.be, %while.cond.backedge ]
  %9 = load i32* %arrayidx, align 4, !tbaa !3
  %10 = load %struct._MSMDvtx** %vertices, align 8, !tbaa !0
  %idx.ext = sext i32 %9 to i64
  %add.ptr = getelementptr inbounds %struct._MSMDvtx* %10, i64 %idx.ext
  %11 = load i32* %msglvl, align 4, !tbaa !3
  %cmp14 = icmp sgt i32 %11, 5
  br i1 %cmp14, label %if.then15, label %if.end20

if.then15:                                        ; preds = %while.body
  %12 = load %struct._IO_FILE** %msgFile16, align 8, !tbaa !0
  %status = getelementptr inbounds %struct._MSMDvtx* %10, i64 %idx.ext, i32 2
  %13 = load i8* %status, align 1, !tbaa !1
  %conv = sext i8 %13 to i32
  %call17 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %12, i8* getelementptr inbounds ([12 x i8]* @.str7, i64 0, i64 0), i32 %9, i32 %conv) #4
  %14 = load %struct._IO_FILE** %msgFile16, align 8, !tbaa !0
  %call19 = call i32 @fflush(%struct._IO_FILE* %14) #4
  br label %if.end20

if.end20:                                         ; preds = %if.then15, %while.body
  %cmp21 = icmp eq %struct._MSMDvtx* %add.ptr, %v
  br i1 %cmp21, label %if.then23, label %if.else

if.then23:                                        ; preds = %if.end20
  %arrayidx25 = getelementptr inbounds i32* %2, i64 %indvars.iv
  %15 = load i32* %arrayidx25, align 4, !tbaa !3
  store i32 %15, i32* %arrayidx, align 4, !tbaa !3
  store i32 %9, i32* %arrayidx25, align 4, !tbaa !3
  br label %while.cond.backedge

if.else:                                          ; preds = %if.end20
  %status30 = getelementptr inbounds %struct._MSMDvtx* %10, i64 %idx.ext, i32 2
  %16 = load i8* %status30, align 1, !tbaa !1
  %conv31 = sext i8 %16 to i32
  switch i32 %conv31, label %sw.default [
    i32 73, label %sw.bb
    i32 76, label %sw.bb
    i32 69, label %sw.bb
  ]

sw.bb:                                            ; preds = %if.else, %if.else, %if.else
  %arrayidx33 = getelementptr inbounds i32* %2, i64 %indvars.iv
  %17 = load i32* %arrayidx33, align 4, !tbaa !3
  store i32 %17, i32* %arrayidx, align 4, !tbaa !3
  store i32 %9, i32* %arrayidx33, align 4, !tbaa !3
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %sw.bb, %if.then23
  %indvars.iv.next = add i64 %indvars.iv, -1
  %j.0.be = add nsw i32 %j.0207, -1
  %18 = trunc i64 %indvars.iv.next to i32
  %cmp12 = icmp sgt i32 %i.0.ph212, %18
  br i1 %cmp12, label %while.end90, label %while.body

sw.default:                                       ; preds = %if.else
  %19 = load %struct._IP** %subtrees, align 8, !tbaa !0
  %subtrees39 = getelementptr inbounds %struct._MSMDvtx* %10, i64 %idx.ext, i32 9
  %20 = load %struct._IP** %subtrees39, align 8, !tbaa !0
  %21 = load i32* %msglvl, align 4, !tbaa !3
  %cmp41 = icmp sgt i32 %21, 5
  br i1 %cmp41, label %if.then43, label %while.cond55.preheader

if.then43:                                        ; preds = %sw.default
  %22 = load %struct._IO_FILE** %msgFile16, align 8, !tbaa !0
  %23 = load i32* %id45, align 4, !tbaa !3
  %call46 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %22, i8* getelementptr inbounds ([24 x i8]* @.str8, i64 0, i64 0), i32 %23) #4
  %24 = load %struct._IO_FILE** %msgFile16, align 8, !tbaa !0
  %call48 = call i32 @IP_fp80(%struct._IO_FILE* %24, %struct._IP* %19, i32 30) #4
  %25 = load %struct._IO_FILE** %msgFile16, align 8, !tbaa !0
  %id50 = getelementptr inbounds %struct._MSMDvtx* %add.ptr, i64 0, i32 0
  %26 = load i32* %id50, align 4, !tbaa !3
  %call51 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %25, i8* getelementptr inbounds ([24 x i8]* @.str8, i64 0, i64 0), i32 %26) #4
  %27 = load %struct._IO_FILE** %msgFile16, align 8, !tbaa !0
  %call53 = call i32 @IP_fp80(%struct._IO_FILE* %27, %struct._IP* %20, i32 30) #4
  br label %while.cond55.preheader

while.cond55.preheader:                           ; preds = %if.then43, %sw.default
  %cmp56196 = icmp eq %struct._IP* %19, null
  %cmp58190197 = icmp eq %struct._IP* %20, null
  %or.cond183191198 = or i1 %cmp56196, %cmp58190197
  br i1 %or.cond183191198, label %while.end, label %while.body60.lr.ph

while.body60.lr.ph:                               ; preds = %while.cond55.preheader, %if.then64
  %ip2.0.ph200 = phi %struct._IP* [ %ip2.0192, %if.then64 ], [ %20, %while.cond55.preheader ]
  %ip1.0.ph199 = phi %struct._IP* [ %30, %if.then64 ], [ %19, %while.cond55.preheader ]
  %val = getelementptr inbounds %struct._IP* %ip1.0.ph199, i64 0, i32 0
  %28 = load i32* %val, align 4, !tbaa !3
  br label %while.body60

while.body60:                                     ; preds = %while.body60.lr.ph, %if.then70
  %ip2.0192 = phi %struct._IP* [ %ip2.0.ph200, %while.body60.lr.ph ], [ %31, %if.then70 ]
  %val61 = getelementptr inbounds %struct._IP* %ip2.0192, i64 0, i32 0
  %29 = load i32* %val61, align 4, !tbaa !3
  %cmp62 = icmp sgt i32 %28, %29
  br i1 %cmp62, label %if.then64, label %if.else65

if.then64:                                        ; preds = %while.body60
  %next = getelementptr inbounds %struct._IP* %ip1.0.ph199, i64 0, i32 1
  %30 = load %struct._IP** %next, align 8, !tbaa !0
  %cmp56 = icmp eq %struct._IP* %30, null
  %cmp58190 = icmp eq %struct._IP* %ip2.0192, null
  %or.cond183191 = or i1 %cmp56, %cmp58190
  br i1 %or.cond183191, label %while.end, label %while.body60.lr.ph

if.else65:                                        ; preds = %while.body60
  %cmp68 = icmp slt i32 %28, %29
  br i1 %cmp68, label %if.then70, label %if.else72

if.then70:                                        ; preds = %if.else65
  %next71 = getelementptr inbounds %struct._IP* %ip2.0192, i64 0, i32 1
  %31 = load %struct._IP** %next71, align 8, !tbaa !0
  %cmp58 = icmp eq %struct._IP* %31, null
  br i1 %cmp58, label %while.end, label %while.body60

if.else72:                                        ; preds = %if.else65
  %idxprom73 = sext i32 %j.0207 to i64
  %arrayidx74 = getelementptr inbounds i32* %2, i64 %idxprom73
  %32 = load i32* %arrayidx74, align 4, !tbaa !3
  store i32 %32, i32* %arrayidx, align 4, !tbaa !3
  store i32 %9, i32* %arrayidx74, align 4, !tbaa !3
  %dec79 = add nsw i32 %j.0207, -1
  br label %while.end

while.end:                                        ; preds = %if.then70, %if.then64, %while.cond55.preheader, %if.else72
  %or.cond183189 = phi i32 [ 0, %if.else72 ], [ 1, %while.cond55.preheader ], [ 1, %if.then64 ], [ 1, %if.then70 ]
  %j.1 = phi i32 [ %dec79, %if.else72 ], [ %j.0207, %while.cond55.preheader ], [ %j.0207, %if.then64 ], [ %j.0207, %if.then70 ]
  %inc.i.0 = add nsw i32 %or.cond183189, %i.0.ph212
  %cmp12206 = icmp sgt i32 %inc.i.0, %j.1
  br i1 %cmp12206, label %while.end90, label %while.body.lr.ph

while.end90:                                      ; preds = %if.end11, %while.end, %while.cond.backedge
  %j.0.lcssa = phi i32 [ %j.0.be, %while.cond.backedge ], [ %sub, %if.end11 ], [ %j.1, %while.end ]
  %add = add nsw i32 %j.0.lcssa, 1
  store i32 %add, i32* %nadj, align 4, !tbaa !3
  %33 = load i32* %msglvl, align 4, !tbaa !3
  %cmp93 = icmp sgt i32 %33, 5
  br i1 %cmp93, label %if.then95, label %if.end104

if.then95:                                        ; preds = %while.end90
  %msgFile96 = getelementptr inbounds %struct._MSMDinfo* %info, i64 0, i32 5
  %34 = load %struct._IO_FILE** %msgFile96, align 8, !tbaa !0
  %id97 = getelementptr inbounds %struct._MSMDvtx* %v, i64 0, i32 0
  %35 = load i32* %id97, align 4, !tbaa !3
  %call98 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %34, i8* getelementptr inbounds ([50 x i8]* @.str9, i64 0, i64 0), %struct._MSMD* %msmd, %struct._MSMDvtx* %v, i32 %35) #4
  %36 = load %struct._IO_FILE** %msgFile96, align 8, !tbaa !0
  %37 = load i32* %nadj, align 4, !tbaa !3
  %call101 = call i32 @IVfp80(%struct._IO_FILE* %36, i32 %37, i32* %2, i32 12, i32* %ierr) #4
  %38 = load %struct._IO_FILE** %msgFile96, align 8, !tbaa !0
  %call103 = call i32 @fflush(%struct._IO_FILE* %38) #4
  br label %if.end104

if.end104:                                        ; preds = %if.then95, %while.end90
  ret void
}

; Function Attrs: optsize
declare void @MSMDvtx_print(%struct._MSMDvtx*, %struct._IO_FILE*) #3

; Function Attrs: optsize
declare i32 @IVfp80(%struct._IO_FILE*, i32, i32*, i32, i32*) #3

; Function Attrs: optsize
declare i32 @IP_fp80(%struct._IO_FILE*, %struct._IP*, i32) #3

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize }
attributes #5 = { noreturn nounwind optsize }
attributes #6 = { optsize }

!0 = metadata !{metadata !"any pointer", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"int", metadata !1}
