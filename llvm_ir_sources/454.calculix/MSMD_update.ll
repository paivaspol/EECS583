; ModuleID = '../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/MSMD/src/MSMD_update.c'
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
@.str = private unnamed_addr constant [48 x i8] c"\0A fatal error in MSMD_update(%p,%p)\0A bad input\0A\00", align 1
@.str1 = private unnamed_addr constant [41 x i8] c"\0A inside MSMD_update(%p,%p), nreach = %d\00", align 1
@.str2 = private unnamed_addr constant [42 x i8] c"\0A inserting %d with priority %d into heap\00", align 1
@.str3 = private unnamed_addr constant [34 x i8] c"\0A v = %d, stage = %d, status = %c\00", align 1
@.str4 = private unnamed_addr constant [15 x i8] c", 2-adj vertex\00", align 1
@.str5 = private unnamed_addr constant [51 x i8] c"\0A   2-adj, inserting %d with priority %d into heap\00", align 1
@.str6 = private unnamed_addr constant [51 x i8] c"\0A   3-adj, inserting %d with priority %d into heap\00", align 1
@.str7 = private unnamed_addr constant [14 x i8] c"\0A degree heap\00", align 1
@.str8 = private unnamed_addr constant [57 x i8] c"\0A fatal error in MSMD_exactDegree2(%p,%p,%p)\0A bad input\0A\00", align 1
@.str9 = private unnamed_addr constant [65 x i8] c"\0A\0A 1. error in MSMD_exactDegree2(%p,%p,%p)\0A v->subtrees == NULL\0A\00", align 1
@.str10 = private unnamed_addr constant [71 x i8] c"\0A\0A 1. error in MSMD_exactDegree2(%p,%p,%p)\0A v->subtrees->next == NULL\0A\00", align 1
@.str11 = private unnamed_addr constant [97 x i8] c"\0A\0A 1. error in MSMD_exactDegree2(%p,%p,%p)\0A usize0 = %d, uadj0 = %p\0A bad adjacency list for %d\0A \00", align 1
@.str12 = private unnamed_addr constant [97 x i8] c"\0A\0A 2. error in MSMD_exactDegree2(%p,%p,%p)\0A usize1 = %d, uadj1 = %p\0A bad adjacency list for %d\0A \00", align 1
@.str13 = private unnamed_addr constant [47 x i8] c"\0A    %d : adding %d with weight %d to boundary\00", align 1
@.str14 = private unnamed_addr constant [30 x i8] c"\0A    %6d is outmatched by %6d\00", align 1
@.str15 = private unnamed_addr constant [57 x i8] c"\0A fatal error in MSMD_exactDegree3(%p,%p,%p)\0A bad input\0A\00", align 1
@.str16 = private unnamed_addr constant [13 x i8] c"\0A vadj(%d) :\00", align 1
@.str17 = private unnamed_addr constant [57 x i8] c"\0A fatal error in MSMD_approxDegree(%p,%p,%p)\0A bad input\0A\00", align 1

; Function Attrs: nounwind optsize uwtable
define void @MSMD_update(%struct._MSMD* %msmd, %struct._MSMDinfo* %info) #0 {
entry:
  %cmp = icmp eq %struct._MSMD* %msmd, null
  %cmp1 = icmp eq %struct._MSMDinfo* %info, null
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([48 x i8]* @.str, i64 0, i64 0), %struct._MSMD* %msmd, %struct._MSMDinfo* %info) #5
  tail call void @exit(i32 -1) #6
  unreachable

if.end:                                           ; preds = %entry
  %msglvl = getelementptr inbounds %struct._MSMDinfo* %info, i64 0, i32 4
  %1 = load i32* %msglvl, align 4, !tbaa !3
  %cmp2 = icmp sgt i32 %1, 4
  br i1 %cmp2, label %if.then3, label %if.end.if.end9_crit_edge

if.end.if.end9_crit_edge:                         ; preds = %if.end
  %reachIV10.pre = getelementptr inbounds %struct._MSMD* %msmd, i64 0, i32 7
  br label %if.end9

if.then3:                                         ; preds = %if.end
  %msgFile = getelementptr inbounds %struct._MSMDinfo* %info, i64 0, i32 5
  %2 = load %struct._IO_FILE** %msgFile, align 8, !tbaa !0
  %reachIV4 = getelementptr inbounds %struct._MSMD* %msmd, i64 0, i32 7
  %call5 = tail call i32 @IV_size(%struct._IV* %reachIV4) #5
  %call6 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([41 x i8]* @.str1, i64 0, i64 0), %struct._MSMD* %msmd, %struct._MSMDinfo* %info, i32 %call5) #5
  %3 = load %struct._IO_FILE** %msgFile, align 8, !tbaa !0
  %call8 = tail call i32 @fflush(%struct._IO_FILE* %3) #5
  br label %if.end9

if.end9:                                          ; preds = %if.end.if.end9_crit_edge, %if.then3
  %reachIV10.pre-phi = phi %struct._IV* [ %reachIV10.pre, %if.end.if.end9_crit_edge ], [ %reachIV4, %if.then3 ]
  %call11 = tail call i32 @IV_size(%struct._IV* %reachIV10.pre-phi) #5
  %cmp12 = icmp eq i32 %call11, 0
  br i1 %cmp12, label %return, label %if.end14

if.end14:                                         ; preds = %if.end9
  %call15 = tail call i32* @IV_entries(%struct._IV* %reachIV10.pre-phi) #5
  %4 = load i32* %msglvl, align 4, !tbaa !3
  %cmp17 = icmp sgt i32 %4, 4
  br i1 %cmp17, label %for.cond.preheader, label %if.end23

for.cond.preheader:                               ; preds = %if.end14
  %cmp19340 = icmp sgt i32 %call11, 0
  br i1 %cmp19340, label %for.body.lr.ph, label %for.cond.preheader.for.end_crit_edge

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  %msgFile21.pre = getelementptr inbounds %struct._MSMDinfo* %info, i64 0, i32 5
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %vertices = getelementptr inbounds %struct._MSMD* %msmd, i64 0, i32 5
  %msgFile20 = getelementptr inbounds %struct._MSMDinfo* %info, i64 0, i32 5
  br label %for.body

for.body:                                         ; preds = %for.body, %for.body.lr.ph
  %indvars.iv354 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next355, %for.body ]
  %arrayidx = getelementptr inbounds i32* %call15, i64 %indvars.iv354
  %5 = load i32* %arrayidx, align 4, !tbaa !3
  %6 = load %struct._MSMDvtx** %vertices, align 8, !tbaa !0
  %idx.ext = sext i32 %5 to i64
  %add.ptr = getelementptr inbounds %struct._MSMDvtx* %6, i64 %idx.ext
  %7 = load %struct._IO_FILE** %msgFile20, align 8, !tbaa !0
  tail call void @MSMDvtx_print(%struct._MSMDvtx* %add.ptr, %struct._IO_FILE* %7) #5
  %indvars.iv.next355 = add i64 %indvars.iv354, 1
  %lftr.wideiv356 = trunc i64 %indvars.iv.next355 to i32
  %exitcond357 = icmp eq i32 %lftr.wideiv356, %call11
  br i1 %exitcond357, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %for.cond.preheader.for.end_crit_edge
  %msgFile21.pre-phi = phi %struct._IO_FILE** [ %msgFile21.pre, %for.cond.preheader.for.end_crit_edge ], [ %msgFile20, %for.body ]
  %8 = load %struct._IO_FILE** %msgFile21.pre-phi, align 8, !tbaa !0
  %call22 = tail call i32 @fflush(%struct._IO_FILE* %8) #5
  br label %if.end23

if.end23:                                         ; preds = %for.end, %if.end14
  %prioType = getelementptr inbounds %struct._MSMDinfo* %info, i64 0, i32 1
  %9 = load i32* %prioType, align 4, !tbaa !3
  switch i32 %9, label %for.cond84.preheader [
    i32 2, label %for.cond26.preheader
    i32 0, label %for.cond63.preheader
  ]

for.cond63.preheader:                             ; preds = %if.end23
  %cmp64338 = icmp sgt i32 %call11, 0
  br i1 %cmp64338, label %for.body66.lr.ph, label %if.end202

for.body66.lr.ph:                                 ; preds = %for.cond63.preheader
  %vertices69 = getelementptr inbounds %struct._MSMD* %msmd, i64 0, i32 5
  %heap77 = getelementptr inbounds %struct._MSMD* %msmd, i64 0, i32 1
  br label %for.body66

for.cond26.preheader:                             ; preds = %if.end23
  %cmp27335 = icmp sgt i32 %call11, 0
  br i1 %cmp27335, label %for.body28.lr.ph, label %if.end202

for.body28.lr.ph:                                 ; preds = %for.cond26.preheader
  %vertices31 = getelementptr inbounds %struct._MSMD* %msmd, i64 0, i32 5
  %msgFile47 = getelementptr inbounds %struct._MSMDinfo* %info, i64 0, i32 5
  %heap = getelementptr inbounds %struct._MSMD* %msmd, i64 0, i32 1
  br label %for.body28

for.cond84.preheader:                             ; preds = %if.end23
  %cmp85331 = icmp sgt i32 %call11, 0
  br i1 %cmp85331, label %for.body87.lr.ph, label %if.end202

for.body87.lr.ph:                                 ; preds = %for.cond84.preheader
  %vertices90 = getelementptr inbounds %struct._MSMD* %msmd, i64 0, i32 5
  %msgFile97 = getelementptr inbounds %struct._MSMDinfo* %info, i64 0, i32 5
  %heap140 = getelementptr inbounds %struct._MSMD* %msmd, i64 0, i32 1
  br label %for.body87

for.body28:                                       ; preds = %for.inc55, %for.body28.lr.ph
  %indvars.iv346 = phi i64 [ 0, %for.body28.lr.ph ], [ %indvars.iv.next347, %for.inc55 ]
  %arrayidx30 = getelementptr inbounds i32* %call15, i64 %indvars.iv346
  %10 = load i32* %arrayidx30, align 4, !tbaa !3
  %11 = load %struct._MSMDvtx** %vertices31, align 8, !tbaa !0
  %idx.ext32 = sext i32 %10 to i64
  %status = getelementptr inbounds %struct._MSMDvtx* %11, i64 %idx.ext32, i32 2
  %12 = load i8* %status, align 1, !tbaa !1
  %cond = icmp eq i8 %12, 82
  br i1 %cond, label %if.then41, label %for.inc55

if.then41:                                        ; preds = %for.body28
  %add.ptr33 = getelementptr inbounds %struct._MSMDvtx* %11, i64 %idx.ext32
  %call42 = tail call i32 @MSMD_approxDegree(%struct._MSMD* %msmd, %struct._MSMDvtx* %add.ptr33, %struct._MSMDinfo* %info) #7
  %13 = load i32* %msglvl, align 4, !tbaa !3
  %cmp44 = icmp sgt i32 %13, 3
  br i1 %cmp44, label %if.then46, label %if.end51

if.then46:                                        ; preds = %if.then41
  %14 = load %struct._IO_FILE** %msgFile47, align 8, !tbaa !0
  %call48 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %14, i8* getelementptr inbounds ([42 x i8]* @.str2, i64 0, i64 0), i32 %10, i32 %call42) #5
  %15 = load %struct._IO_FILE** %msgFile47, align 8, !tbaa !0
  %call50 = tail call i32 @fflush(%struct._IO_FILE* %15) #5
  br label %if.end51

if.end51:                                         ; preds = %if.then46, %if.then41
  %16 = load %struct._IIheap** %heap, align 8, !tbaa !0
  tail call void @IIheap_insert(%struct._IIheap* %16, i32 %10, i32 %call42) #5
  store i8 68, i8* %status, align 1, !tbaa !1
  br label %for.inc55

for.inc55:                                        ; preds = %for.body28, %if.end51
  %indvars.iv.next347 = add i64 %indvars.iv346, 1
  %lftr.wideiv348 = trunc i64 %indvars.iv.next347 to i32
  %exitcond349 = icmp eq i32 %lftr.wideiv348, %call11
  br i1 %exitcond349, label %if.end202, label %for.body28

for.body66:                                       ; preds = %for.inc80, %for.body66.lr.ph
  %indvars.iv350 = phi i64 [ 0, %for.body66.lr.ph ], [ %indvars.iv.next351, %for.inc80 ]
  %arrayidx68 = getelementptr inbounds i32* %call15, i64 %indvars.iv350
  %17 = load i32* %arrayidx68, align 4, !tbaa !3
  %18 = load %struct._MSMDvtx** %vertices69, align 8, !tbaa !0
  %idx.ext70 = sext i32 %17 to i64
  %status72 = getelementptr inbounds %struct._MSMDvtx* %18, i64 %idx.ext70, i32 2
  %19 = load i8* %status72, align 1, !tbaa !1
  %cmp74 = icmp eq i8 %19, 73
  br i1 %cmp74, label %for.inc80, label %if.then76

if.then76:                                        ; preds = %for.body66
  %20 = load %struct._IIheap** %heap77, align 8, !tbaa !0
  tail call void @IIheap_insert(%struct._IIheap* %20, i32 %17, i32 0) #5
  store i8 68, i8* %status72, align 1, !tbaa !1
  br label %for.inc80

for.inc80:                                        ; preds = %for.body66, %if.then76
  %indvars.iv.next351 = add i64 %indvars.iv350, 1
  %lftr.wideiv352 = trunc i64 %indvars.iv.next351 to i32
  %exitcond353 = icmp eq i32 %lftr.wideiv352, %call11
  br i1 %exitcond353, label %if.end202, label %for.body66

for.cond151.preheader:                            ; preds = %for.inc148
  %cmp152329 = icmp sgt i32 %jj.1, 0
  br i1 %cmp152329, label %for.body154.lr.ph, label %if.end202

for.body154.lr.ph:                                ; preds = %for.cond151.preheader
  %vertices157 = getelementptr inbounds %struct._MSMD* %msmd, i64 0, i32 5
  %msgFile164 = getelementptr inbounds %struct._MSMDinfo* %info, i64 0, i32 5
  %heap195 = getelementptr inbounds %struct._MSMD* %msmd, i64 0, i32 1
  br label %for.body154

for.body87:                                       ; preds = %for.inc148, %for.body87.lr.ph
  %indvars.iv342 = phi i64 [ 0, %for.body87.lr.ph ], [ %indvars.iv.next343, %for.inc148 ]
  %jj.0332 = phi i32 [ 0, %for.body87.lr.ph ], [ %jj.1, %for.inc148 ]
  %arrayidx89 = getelementptr inbounds i32* %call15, i64 %indvars.iv342
  %21 = load i32* %arrayidx89, align 4, !tbaa !3
  %22 = load %struct._MSMDvtx** %vertices90, align 8, !tbaa !0
  %idx.ext91 = sext i32 %21 to i64
  %add.ptr92 = getelementptr inbounds %struct._MSMDvtx* %22, i64 %idx.ext91
  %23 = load i32* %msglvl, align 4, !tbaa !3
  %cmp94 = icmp sgt i32 %23, 4
  br i1 %cmp94, label %if.then96, label %for.body87.if.end103_crit_edge

for.body87.if.end103_crit_edge:                   ; preds = %for.body87
  %status104.pre = getelementptr inbounds %struct._MSMDvtx* %22, i64 %idx.ext91, i32 2
  br label %if.end103

if.then96:                                        ; preds = %for.body87
  %24 = load %struct._IO_FILE** %msgFile97, align 8, !tbaa !0
  %id = getelementptr inbounds %struct._MSMDvtx* %add.ptr92, i64 0, i32 0
  %25 = load i32* %id, align 4, !tbaa !3
  %stage = getelementptr inbounds %struct._MSMDvtx* %22, i64 %idx.ext91, i32 3
  %26 = load i32* %stage, align 4, !tbaa !3
  %status98 = getelementptr inbounds %struct._MSMDvtx* %22, i64 %idx.ext91, i32 2
  %27 = load i8* %status98, align 1, !tbaa !1
  %conv99 = sext i8 %27 to i32
  %call100 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %24, i8* getelementptr inbounds ([34 x i8]* @.str3, i64 0, i64 0), i32 %25, i32 %26, i32 %conv99) #5
  %28 = load %struct._IO_FILE** %msgFile97, align 8, !tbaa !0
  %call102 = tail call i32 @fflush(%struct._IO_FILE* %28) #5
  br label %if.end103

if.end103:                                        ; preds = %for.body87.if.end103_crit_edge, %if.then96
  %status104.pre-phi = phi i8* [ %status104.pre, %for.body87.if.end103_crit_edge ], [ %status98, %if.then96 ]
  %29 = load i8* %status104.pre-phi, align 1, !tbaa !1
  %cmp106 = icmp eq i8 %29, 82
  br i1 %cmp106, label %if.then108, label %for.inc148

if.then108:                                       ; preds = %if.end103
  %nadj = getelementptr inbounds %struct._MSMDvtx* %22, i64 %idx.ext91, i32 5
  %30 = load i32* %nadj, align 4, !tbaa !3
  %cmp109 = icmp eq i32 %30, 0
  br i1 %cmp109, label %land.lhs.true, label %if.else142

land.lhs.true:                                    ; preds = %if.then108
  %subtrees = getelementptr inbounds %struct._MSMDvtx* %22, i64 %idx.ext91, i32 9
  %31 = load %struct._IP** %subtrees, align 8, !tbaa !0
  %cmp111 = icmp eq %struct._IP* %31, null
  br i1 %cmp111, label %if.else142, label %land.lhs.true113

land.lhs.true113:                                 ; preds = %land.lhs.true
  %next = getelementptr inbounds %struct._IP* %31, i64 0, i32 1
  %32 = load %struct._IP** %next, align 8, !tbaa !0
  %cmp114 = icmp eq %struct._IP* %32, null
  br i1 %cmp114, label %if.else142, label %land.lhs.true116

land.lhs.true116:                                 ; preds = %land.lhs.true113
  %next117 = getelementptr inbounds %struct._IP* %32, i64 0, i32 1
  %33 = load %struct._IP** %next117, align 8, !tbaa !0
  %cmp118 = icmp eq %struct._IP* %33, null
  br i1 %cmp118, label %if.then120, label %if.else142

if.then120:                                       ; preds = %land.lhs.true116
  %34 = load i32* %msglvl, align 4, !tbaa !3
  %cmp122 = icmp sgt i32 %34, 4
  br i1 %cmp122, label %if.then124, label %if.end129

if.then124:                                       ; preds = %if.then120
  %35 = load %struct._IO_FILE** %msgFile97, align 8, !tbaa !0
  %36 = tail call i64 @fwrite(i8* getelementptr inbounds ([15 x i8]* @.str4, i64 0, i64 0), i64 14, i64 1, %struct._IO_FILE* %35)
  %37 = load %struct._IO_FILE** %msgFile97, align 8, !tbaa !0
  %call128 = tail call i32 @fflush(%struct._IO_FILE* %37) #5
  br label %if.end129

if.end129:                                        ; preds = %if.then124, %if.then120
  %call130 = tail call i32 @MSMD_exactDegree2(%struct._MSMD* %msmd, %struct._MSMDvtx* %add.ptr92, %struct._MSMDinfo* %info) #7
  %38 = load i32* %msglvl, align 4, !tbaa !3
  %cmp132 = icmp sgt i32 %38, 4
  br i1 %cmp132, label %if.then134, label %if.end139

if.then134:                                       ; preds = %if.end129
  %39 = load %struct._IO_FILE** %msgFile97, align 8, !tbaa !0
  %call136 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %39, i8* getelementptr inbounds ([51 x i8]* @.str5, i64 0, i64 0), i32 %21, i32 %call130) #5
  %40 = load %struct._IO_FILE** %msgFile97, align 8, !tbaa !0
  %call138 = tail call i32 @fflush(%struct._IO_FILE* %40) #5
  br label %if.end139

if.end139:                                        ; preds = %if.then134, %if.end129
  %41 = load %struct._IIheap** %heap140, align 8, !tbaa !0
  tail call void @IIheap_insert(%struct._IIheap* %41, i32 %21, i32 %call130) #5
  store i8 68, i8* %status104.pre-phi, align 1, !tbaa !1
  br label %for.inc148

if.else142:                                       ; preds = %land.lhs.true113, %land.lhs.true, %land.lhs.true116, %if.then108
  %inc143 = add nsw i32 %jj.0332, 1
  %idxprom144 = sext i32 %jj.0332 to i64
  %arrayidx145 = getelementptr inbounds i32* %call15, i64 %idxprom144
  store i32 %21, i32* %arrayidx145, align 4, !tbaa !3
  br label %for.inc148

for.inc148:                                       ; preds = %if.end103, %if.else142, %if.end139
  %jj.1 = phi i32 [ %jj.0332, %if.end139 ], [ %inc143, %if.else142 ], [ %jj.0332, %if.end103 ]
  %indvars.iv.next343 = add i64 %indvars.iv342, 1
  %lftr.wideiv344 = trunc i64 %indvars.iv.next343 to i32
  %exitcond345 = icmp eq i32 %lftr.wideiv344, %call11
  br i1 %exitcond345, label %for.cond151.preheader, label %for.body87

for.body154:                                      ; preds = %for.inc198, %for.body154.lr.ph
  %indvars.iv = phi i64 [ 0, %for.body154.lr.ph ], [ %indvars.iv.next, %for.inc198 ]
  %arrayidx156 = getelementptr inbounds i32* %call15, i64 %indvars.iv
  %42 = load i32* %arrayidx156, align 4, !tbaa !3
  %43 = load %struct._MSMDvtx** %vertices157, align 8, !tbaa !0
  %idx.ext158 = sext i32 %42 to i64
  %add.ptr159 = getelementptr inbounds %struct._MSMDvtx* %43, i64 %idx.ext158
  %44 = load i32* %msglvl, align 4, !tbaa !3
  %cmp161 = icmp sgt i32 %44, 4
  br i1 %cmp161, label %if.then163, label %for.body154.if.end172_crit_edge

for.body154.if.end172_crit_edge:                  ; preds = %for.body154
  %status173.pre = getelementptr inbounds %struct._MSMDvtx* %43, i64 %idx.ext158, i32 2
  br label %if.end172

if.then163:                                       ; preds = %for.body154
  %45 = load %struct._IO_FILE** %msgFile164, align 8, !tbaa !0
  %id165 = getelementptr inbounds %struct._MSMDvtx* %add.ptr159, i64 0, i32 0
  %46 = load i32* %id165, align 4, !tbaa !3
  %stage166 = getelementptr inbounds %struct._MSMDvtx* %43, i64 %idx.ext158, i32 3
  %47 = load i32* %stage166, align 4, !tbaa !3
  %status167 = getelementptr inbounds %struct._MSMDvtx* %43, i64 %idx.ext158, i32 2
  %48 = load i8* %status167, align 1, !tbaa !1
  %conv168 = sext i8 %48 to i32
  %call169 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %45, i8* getelementptr inbounds ([34 x i8]* @.str3, i64 0, i64 0), i32 %46, i32 %47, i32 %conv168) #5
  %49 = load %struct._IO_FILE** %msgFile164, align 8, !tbaa !0
  %call171 = tail call i32 @fflush(%struct._IO_FILE* %49) #5
  br label %if.end172

if.end172:                                        ; preds = %for.body154.if.end172_crit_edge, %if.then163
  %status173.pre-phi = phi i8* [ %status173.pre, %for.body154.if.end172_crit_edge ], [ %status167, %if.then163 ]
  %50 = load i8* %status173.pre-phi, align 1, !tbaa !1
  %cmp175 = icmp eq i8 %50, 82
  br i1 %cmp175, label %if.then177, label %for.inc198

if.then177:                                       ; preds = %if.end172
  %51 = load i32* %prioType, align 4, !tbaa !3
  %cmp179 = icmp eq i32 %51, 1
  br i1 %cmp179, label %if.then181, label %if.else183

if.then181:                                       ; preds = %if.then177
  %call182 = tail call i32 @MSMD_exactDegree3(%struct._MSMD* %msmd, %struct._MSMDvtx* %add.ptr159, %struct._MSMDinfo* %info) #7
  br label %if.end185

if.else183:                                       ; preds = %if.then177
  %call184 = tail call i32 @MSMD_approxDegree(%struct._MSMD* %msmd, %struct._MSMDvtx* %add.ptr159, %struct._MSMDinfo* %info) #7
  br label %if.end185

if.end185:                                        ; preds = %if.else183, %if.then181
  %wght.0 = phi i32 [ %call182, %if.then181 ], [ %call184, %if.else183 ]
  %52 = load i32* %msglvl, align 4, !tbaa !3
  %cmp187 = icmp sgt i32 %52, 4
  br i1 %cmp187, label %if.then189, label %if.end194

if.then189:                                       ; preds = %if.end185
  %53 = load %struct._IO_FILE** %msgFile164, align 8, !tbaa !0
  %call191 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %53, i8* getelementptr inbounds ([51 x i8]* @.str6, i64 0, i64 0), i32 %42, i32 %wght.0) #5
  %54 = load %struct._IO_FILE** %msgFile164, align 8, !tbaa !0
  %call193 = tail call i32 @fflush(%struct._IO_FILE* %54) #5
  br label %if.end194

if.end194:                                        ; preds = %if.then189, %if.end185
  %55 = load %struct._IIheap** %heap195, align 8, !tbaa !0
  tail call void @IIheap_insert(%struct._IIheap* %55, i32 %42, i32 %wght.0) #5
  store i8 68, i8* %status173.pre-phi, align 1, !tbaa !1
  br label %for.inc198

for.inc198:                                       ; preds = %if.end172, %if.end194
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %jj.1
  br i1 %exitcond, label %if.end202, label %for.body154

if.end202:                                        ; preds = %for.cond84.preheader, %for.cond63.preheader, %for.inc80, %for.cond26.preheader, %for.inc55, %for.cond151.preheader, %for.inc198
  %nreach.0 = phi i32 [ %jj.1, %for.cond151.preheader ], [ %jj.1, %for.inc198 ], [ %call11, %for.inc55 ], [ %call11, %for.cond26.preheader ], [ %call11, %for.inc80 ], [ %call11, %for.cond63.preheader ], [ 0, %for.cond84.preheader ]
  tail call void @IV_setSize(%struct._IV* %reachIV10.pre-phi, i32 %nreach.0) #5
  %56 = load i32* %msglvl, align 4, !tbaa !3
  %cmp204 = icmp sgt i32 %56, 4
  br i1 %cmp204, label %if.then206, label %return

if.then206:                                       ; preds = %if.end202
  %msgFile207 = getelementptr inbounds %struct._MSMDinfo* %info, i64 0, i32 5
  %57 = load %struct._IO_FILE** %msgFile207, align 8, !tbaa !0
  %58 = tail call i64 @fwrite(i8* getelementptr inbounds ([14 x i8]* @.str7, i64 0, i64 0), i64 13, i64 1, %struct._IO_FILE* %57)
  %heap209 = getelementptr inbounds %struct._MSMD* %msmd, i64 0, i32 1
  %59 = load %struct._IIheap** %heap209, align 8, !tbaa !0
  %60 = load %struct._IO_FILE** %msgFile207, align 8, !tbaa !0
  tail call void @IIheap_print(%struct._IIheap* %59, %struct._IO_FILE* %60) #5
  br label %return

return:                                           ; preds = %if.end202, %if.then206, %if.end9
  ret void
}

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #1

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32) #2

; Function Attrs: optsize
declare i32 @IV_size(%struct._IV*) #3

; Function Attrs: nounwind optsize
declare i32 @fflush(%struct._IO_FILE* nocapture) #1

; Function Attrs: optsize
declare i32* @IV_entries(%struct._IV*) #3

; Function Attrs: optsize
declare void @MSMDvtx_print(%struct._MSMDvtx*, %struct._IO_FILE*) #3

; Function Attrs: nounwind optsize uwtable
define i32 @MSMD_approxDegree(%struct._MSMD* %msmd, %struct._MSMDvtx* %v, %struct._MSMDinfo* %info) #0 {
entry:
  %cmp = icmp eq %struct._MSMD* %msmd, null
  %cmp1 = icmp eq %struct._MSMDvtx* %v, null
  %or.cond = or i1 %cmp, %cmp1
  %cmp3 = icmp eq %struct._MSMDinfo* %info, null
  %or.cond41 = or i1 %or.cond, %cmp3
  br i1 %or.cond41, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([57 x i8]* @.str17, i64 0, i64 0), %struct._MSMD* %msmd, %struct._MSMDvtx* %v, %struct._MSMDinfo* %info) #5
  tail call void @exit(i32 -1) #6
  unreachable

if.end:                                           ; preds = %entry
  %subtrees = getelementptr inbounds %struct._MSMDvtx* %v, i64 0, i32 9
  %ip.045 = load %struct._IP** %subtrees, align 8
  %cmp446 = icmp eq %struct._IP* %ip.045, null
  br i1 %cmp446, label %for.end, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %if.end
  %vertices = getelementptr inbounds %struct._MSMD* %msmd, i64 0, i32 5
  %1 = load %struct._MSMDvtx** %vertices, align 8, !tbaa !0
  %wght = getelementptr inbounds %struct._MSMDvtx* %v, i64 0, i32 4
  %2 = load i32* %wght, align 4, !tbaa !3
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %ip.048 = phi %struct._IP* [ %ip.045, %for.body.lr.ph ], [ %ip.0, %for.body ]
  %bndwght.047 = phi i32 [ 0, %for.body.lr.ph ], [ %add, %for.body ]
  %val = getelementptr inbounds %struct._IP* %ip.048, i64 0, i32 0
  %3 = load i32* %val, align 4, !tbaa !3
  %idxprom = sext i32 %3 to i64
  %bndwght5 = getelementptr inbounds %struct._MSMDvtx* %1, i64 %idxprom, i32 7
  %4 = load i32* %bndwght5, align 4, !tbaa !3
  %sub = add i32 %4, %bndwght.047
  %add = sub i32 %sub, %2
  %next = getelementptr inbounds %struct._IP* %ip.048, i64 0, i32 1
  %ip.0 = load %struct._IP** %next, align 8
  %cmp4 = icmp eq %struct._IP* %ip.0, null
  br i1 %cmp4, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %if.end
  %bndwght.0.lcssa = phi i32 [ 0, %if.end ], [ %add, %for.body ]
  %nadj = getelementptr inbounds %struct._MSMDvtx* %v, i64 0, i32 5
  %5 = load i32* %nadj, align 4, !tbaa !3
  %adj = getelementptr inbounds %struct._MSMDvtx* %v, i64 0, i32 6
  %6 = load i32** %adj, align 8, !tbaa !0
  %cmp742 = icmp sgt i32 %5, 0
  br i1 %cmp742, label %for.body8.lr.ph, label %for.end20

for.body8.lr.ph:                                  ; preds = %for.end
  %vertices11 = getelementptr inbounds %struct._MSMD* %msmd, i64 0, i32 5
  %7 = load %struct._MSMDvtx** %vertices11, align 8, !tbaa !0
  br label %for.body8

for.body8:                                        ; preds = %for.inc19, %for.body8.lr.ph
  %indvars.iv = phi i64 [ 0, %for.body8.lr.ph ], [ %indvars.iv.next, %for.inc19 ]
  %bndwght.144 = phi i32 [ %bndwght.0.lcssa, %for.body8.lr.ph ], [ %bndwght.2, %for.inc19 ]
  %arrayidx10 = getelementptr inbounds i32* %6, i64 %indvars.iv
  %8 = load i32* %arrayidx10, align 4, !tbaa !3
  %idx.ext = sext i32 %8 to i64
  %add.ptr = getelementptr inbounds %struct._MSMDvtx* %7, i64 %idx.ext
  %cmp12 = icmp eq %struct._MSMDvtx* %add.ptr, %v
  br i1 %cmp12, label %for.inc19, label %land.lhs.true

land.lhs.true:                                    ; preds = %for.body8
  %status = getelementptr inbounds %struct._MSMDvtx* %7, i64 %idx.ext, i32 2
  %9 = load i8* %status, align 1, !tbaa !1
  %cmp13 = icmp eq i8 %9, 73
  br i1 %cmp13, label %for.inc19, label %if.then15

if.then15:                                        ; preds = %land.lhs.true
  %wght16 = getelementptr inbounds %struct._MSMDvtx* %7, i64 %idx.ext, i32 4
  %10 = load i32* %wght16, align 4, !tbaa !3
  %add17 = add nsw i32 %10, %bndwght.144
  br label %for.inc19

for.inc19:                                        ; preds = %land.lhs.true, %for.body8, %if.then15
  %bndwght.2 = phi i32 [ %add17, %if.then15 ], [ %bndwght.144, %land.lhs.true ], [ %bndwght.144, %for.body8 ]
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %5
  br i1 %exitcond, label %for.end20, label %for.body8

for.end20:                                        ; preds = %for.inc19, %for.end
  %bndwght.1.lcssa = phi i32 [ %bndwght.0.lcssa, %for.end ], [ %bndwght.2, %for.inc19 ]
  %stageInfo = getelementptr inbounds %struct._MSMDinfo* %info, i64 0, i32 10
  %11 = load %struct._MSMDstageInfo** %stageInfo, align 8, !tbaa !0
  %napprox = getelementptr inbounds %struct._MSMDstageInfo* %11, i64 0, i32 8
  %12 = load i32* %napprox, align 4, !tbaa !3
  %inc21 = add nsw i32 %12, 1
  store i32 %inc21, i32* %napprox, align 4, !tbaa !3
  ret i32 %bndwght.1.lcssa
}

; Function Attrs: optsize
declare void @IIheap_insert(%struct._IIheap*, i32, i32) #3

; Function Attrs: nounwind optsize uwtable
define i32 @MSMD_exactDegree2(%struct._MSMD* %msmd, %struct._MSMDvtx* %v, %struct._MSMDinfo* %info) #0 {
entry:
  %cmp = icmp eq %struct._MSMD* %msmd, null
  %cmp1 = icmp eq %struct._MSMDvtx* %v, null
  %or.cond = or i1 %cmp, %cmp1
  %cmp3 = icmp eq %struct._MSMDinfo* %info, null
  %or.cond261 = or i1 %or.cond, %cmp3
  br i1 %or.cond261, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([57 x i8]* @.str8, i64 0, i64 0), %struct._MSMD* %msmd, %struct._MSMDvtx* %v, %struct._MSMDinfo* %info) #5
  tail call void @exit(i32 -1) #6
  unreachable

if.end:                                           ; preds = %entry
  %subtrees = getelementptr inbounds %struct._MSMDvtx* %v, i64 0, i32 9
  %1 = load %struct._IP** %subtrees, align 8, !tbaa !0
  %cmp4 = icmp eq %struct._IP* %1, null
  br i1 %cmp4, label %if.then5, label %if.end7

if.then5:                                         ; preds = %if.end
  %2 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call6 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([65 x i8]* @.str9, i64 0, i64 0), %struct._MSMD* %msmd, %struct._MSMDvtx* %v, %struct._MSMDinfo* %info) #5
  tail call void @exit(i32 -1) #6
  unreachable

if.end7:                                          ; preds = %if.end
  %next = getelementptr inbounds %struct._IP* %1, i64 0, i32 1
  %3 = load %struct._IP** %next, align 8, !tbaa !0
  %cmp9 = icmp eq %struct._IP* %3, null
  br i1 %cmp9, label %if.then10, label %if.end12

if.then10:                                        ; preds = %if.end7
  %4 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call11 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([71 x i8]* @.str10, i64 0, i64 0), %struct._MSMD* %msmd, %struct._MSMDvtx* %v, %struct._MSMDinfo* %info) #5
  tail call void @exit(i32 -1) #6
  unreachable

if.end12:                                         ; preds = %if.end7
  %vertices = getelementptr inbounds %struct._MSMD* %msmd, i64 0, i32 5
  %5 = load %struct._MSMDvtx** %vertices, align 8, !tbaa !0
  %val = getelementptr inbounds %struct._IP* %1, i64 0, i32 0
  %6 = load i32* %val, align 4, !tbaa !3
  %idx.ext = sext i32 %6 to i64
  %add.ptr = getelementptr inbounds %struct._MSMDvtx* %5, i64 %idx.ext
  %nadj = getelementptr inbounds %struct._MSMDvtx* %5, i64 %idx.ext, i32 5
  %7 = load i32* %nadj, align 4, !tbaa !3
  %adj = getelementptr inbounds %struct._MSMDvtx* %5, i64 %idx.ext, i32 6
  %8 = load i32** %adj, align 8, !tbaa !0
  %cmp14 = icmp eq i32 %7, 0
  %cmp16 = icmp eq i32* %8, null
  %or.cond262 = or i1 %cmp14, %cmp16
  br i1 %or.cond262, label %if.then17, label %if.end19

if.then17:                                        ; preds = %if.end12
  %9 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %id = getelementptr inbounds %struct._MSMDvtx* %add.ptr, i64 0, i32 0
  %10 = load i32* %id, align 4, !tbaa !3
  %call18 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %9, i8* getelementptr inbounds ([97 x i8]* @.str11, i64 0, i64 0), %struct._MSMD* %msmd, %struct._MSMDvtx* %v, %struct._MSMDinfo* %info, i32 %7, i32* %8, i32 %10) #5
  %11 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  tail call void @MSMDvtx_print(%struct._MSMDvtx* %add.ptr, %struct._IO_FILE* %11) #5
  tail call void @exit(i32 -1) #6
  unreachable

if.end19:                                         ; preds = %if.end12
  %val23 = getelementptr inbounds %struct._IP* %3, i64 0, i32 0
  %12 = load i32* %val23, align 4, !tbaa !3
  %idx.ext24 = sext i32 %12 to i64
  %add.ptr25 = getelementptr inbounds %struct._MSMDvtx* %5, i64 %idx.ext24
  %nadj26 = getelementptr inbounds %struct._MSMDvtx* %5, i64 %idx.ext24, i32 5
  %13 = load i32* %nadj26, align 4, !tbaa !3
  %adj27 = getelementptr inbounds %struct._MSMDvtx* %5, i64 %idx.ext24, i32 6
  %14 = load i32** %adj27, align 8, !tbaa !0
  %cmp28 = icmp eq i32 %13, 0
  %cmp30 = icmp eq i32* %14, null
  %or.cond263 = or i1 %cmp28, %cmp30
  br i1 %or.cond263, label %if.then31, label %if.end34

if.then31:                                        ; preds = %if.end19
  %15 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %id32 = getelementptr inbounds %struct._MSMDvtx* %add.ptr25, i64 0, i32 0
  %16 = load i32* %id32, align 4, !tbaa !3
  %call33 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %15, i8* getelementptr inbounds ([97 x i8]* @.str12, i64 0, i64 0), %struct._MSMD* %msmd, %struct._MSMDvtx* %v, %struct._MSMDinfo* %info, i32 %13, i32* %14, i32 %16) #5
  %17 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  tail call void @MSMDvtx_print(%struct._MSMDvtx* %add.ptr25, %struct._IO_FILE* %17) #5
  tail call void @exit(i32 -1) #6
  unreachable

if.end34:                                         ; preds = %if.end19
  %mark = getelementptr inbounds %struct._MSMDvtx* %v, i64 0, i32 1
  store i8 88, i8* %mark, align 1, !tbaa !1
  %sub = add nsw i32 %7, -1
  %cmp35276301 = icmp slt i32 %7, 1
  br i1 %cmp35276301, label %while.end, label %while.body.lr.ph.lr.ph

while.body.lr.ph.lr.ph:                           ; preds = %if.end34
  %msglvl = getelementptr inbounds %struct._MSMDinfo* %info, i64 0, i32 4
  %msgFile = getelementptr inbounds %struct._MSMDinfo* %info, i64 0, i32 5
  %id57 = getelementptr inbounds %struct._MSMDvtx* %add.ptr, i64 0, i32 0
  %18 = sext i32 %7 to i64
  br label %while.body.lr.ph

while.body.lr.ph:                                 ; preds = %while.body.lr.ph.lr.ph, %if.then41
  %indvars.iv332.in = phi i64 [ %18, %while.body.lr.ph.lr.ph ], [ %indvars.iv332, %if.then41 ]
  %bndwght.0.ph304 = phi i32 [ 0, %while.body.lr.ph.lr.ph ], [ %bndwght.0278, %if.then41 ]
  %i.0.ph303 = phi i32 [ 0, %while.body.lr.ph.lr.ph ], [ %i.0277, %if.then41 ]
  %j.0.ph302 = phi i32 [ %sub, %while.body.lr.ph.lr.ph ], [ %dec, %if.then41 ]
  %indvars.iv332 = add i64 %indvars.iv332.in, -1
  %19 = sext i32 %i.0.ph303 to i64
  br label %while.body

while.body:                                       ; preds = %if.end64.while.body_crit_edge, %while.body.lr.ph
  %indvars.iv329 = phi i64 [ %indvars.iv.next330, %if.end64.while.body_crit_edge ], [ %19, %while.body.lr.ph ]
  %bndwght.0278 = phi i32 [ %bndwght.1, %if.end64.while.body_crit_edge ], [ %bndwght.0.ph304, %while.body.lr.ph ]
  %i.0277 = phi i32 [ %inc, %if.end64.while.body_crit_edge ], [ %i.0.ph303, %while.body.lr.ph ]
  %arrayidx = getelementptr inbounds i32* %8, i64 %indvars.iv329
  %20 = load i32* %arrayidx, align 4, !tbaa !3
  %21 = load %struct._MSMDvtx** %vertices, align 8, !tbaa !0
  %idx.ext37 = sext i32 %20 to i64
  %status = getelementptr inbounds %struct._MSMDvtx* %21, i64 %idx.ext37, i32 2
  %22 = load i8* %status, align 1, !tbaa !1
  %cmp39 = icmp eq i8 %22, 73
  br i1 %cmp39, label %if.then41, label %if.else

if.then41:                                        ; preds = %while.body
  %arrayidx43 = getelementptr inbounds i32* %8, i64 %indvars.iv332
  %23 = load i32* %arrayidx43, align 4, !tbaa !3
  store i32 %23, i32* %arrayidx, align 4, !tbaa !3
  store i32 %20, i32* %arrayidx43, align 4, !tbaa !3
  %dec = add nsw i32 %j.0.ph302, -1
  %cmp35276 = icmp sgt i32 %i.0277, %dec
  br i1 %cmp35276, label %while.end, label %while.body.lr.ph

if.else:                                          ; preds = %while.body
  %mark48 = getelementptr inbounds %struct._MSMDvtx* %21, i64 %idx.ext37, i32 1
  %24 = load i8* %mark48, align 1, !tbaa !1
  %cmp50 = icmp eq i8 %24, 88
  br i1 %cmp50, label %if.end64, label %if.then52

if.then52:                                        ; preds = %if.else
  store i8 88, i8* %mark48, align 1, !tbaa !1
  %wght = getelementptr inbounds %struct._MSMDvtx* %21, i64 %idx.ext37, i32 4
  %25 = load i32* %wght, align 4, !tbaa !3
  %add = add nsw i32 %25, %bndwght.0278
  %26 = load i32* %msglvl, align 4, !tbaa !3
  %cmp54 = icmp sgt i32 %26, 5
  br i1 %cmp54, label %if.then56, label %if.end64

if.then56:                                        ; preds = %if.then52
  %27 = load %struct._IO_FILE** %msgFile, align 8, !tbaa !0
  %28 = load i32* %id57, align 4, !tbaa !3
  %id58 = getelementptr inbounds %struct._MSMDvtx* %21, i64 %idx.ext37, i32 0
  %29 = load i32* %id58, align 4, !tbaa !3
  %call60 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %27, i8* getelementptr inbounds ([47 x i8]* @.str13, i64 0, i64 0), i32 %28, i32 %29, i32 %25) #5
  %30 = load %struct._IO_FILE** %msgFile, align 8, !tbaa !0
  %call62 = tail call i32 @fflush(%struct._IO_FILE* %30) #5
  br label %if.end64

if.end64:                                         ; preds = %if.else, %if.then52, %if.then56
  %bndwght.1 = phi i32 [ %add, %if.then56 ], [ %add, %if.then52 ], [ %bndwght.0278, %if.else ]
  %31 = trunc i64 %indvars.iv329 to i32
  %32 = trunc i64 %indvars.iv332 to i32
  %cmp35 = icmp slt i32 %31, %32
  br i1 %cmp35, label %if.end64.while.body_crit_edge, label %while.end

if.end64.while.body_crit_edge:                    ; preds = %if.end64
  %inc = add nsw i32 %i.0277, 1
  %indvars.iv.next330 = add i64 %indvars.iv329, 1
  br label %while.body

while.end:                                        ; preds = %if.end34, %if.then41, %if.end64
  %j.0.ph299 = phi i32 [ %j.0.ph302, %if.end64 ], [ %sub, %if.end34 ], [ %dec, %if.then41 ]
  %bndwght.0.lcssa = phi i32 [ %bndwght.1, %if.end64 ], [ 0, %if.end34 ], [ %bndwght.0278, %if.then41 ]
  %add66 = add nsw i32 %j.0.ph299, 1
  store i32 %add66, i32* %nadj, align 4, !tbaa !3
  %sub68 = add nsw i32 %13, -1
  %cmp70271282292 = icmp slt i32 %13, 1
  br i1 %cmp70271282292, label %while.end139, label %while.body72.lr.ph.lr.ph.lr.ph

while.body72.lr.ph.lr.ph.lr.ph:                   ; preds = %while.end
  %msglvl121 = getelementptr inbounds %struct._MSMDinfo* %info, i64 0, i32 4
  %msgFile125 = getelementptr inbounds %struct._MSMDinfo* %info, i64 0, i32 5
  %id127 = getelementptr inbounds %struct._MSMDvtx* %v, i64 0, i32 0
  %stageInfo = getelementptr inbounds %struct._MSMDinfo* %info, i64 0, i32 10
  %id108 = getelementptr inbounds %struct._MSMDvtx* %add.ptr25, i64 0, i32 0
  %33 = sext i32 %13 to i64
  br label %while.body72.lr.ph.lr.ph

while.body72.lr.ph.lr.ph:                         ; preds = %while.body72.lr.ph.lr.ph.lr.ph, %if.then87
  %indvars.iv321.in = phi i64 [ %33, %while.body72.lr.ph.lr.ph.lr.ph ], [ %indvars.iv321, %if.then87 ]
  %bndwght.2.ph295 = phi i32 [ %bndwght.0.lcssa, %while.body72.lr.ph.lr.ph.lr.ph ], [ %bndwght.2.ph268284, %if.then87 ]
  %i.1.ph294 = phi i32 [ 0, %while.body72.lr.ph.lr.ph.lr.ph ], [ %i.1272, %if.then87 ]
  %j.1.ph293 = phi i32 [ %sub68, %while.body72.lr.ph.lr.ph.lr.ph ], [ %dec94, %if.then87 ]
  %indvars.iv321 = add i64 %indvars.iv321.in, -1
  br label %while.body72.lr.ph

while.body72.lr.ph:                               ; preds = %if.end135.while.body72.lr.ph_crit_edge, %while.body72.lr.ph.lr.ph
  %bndwght.2.ph268284 = phi i32 [ %bndwght.2.ph295, %while.body72.lr.ph.lr.ph ], [ %bndwght.3, %if.end135.while.body72.lr.ph_crit_edge ]
  %i.1.ph267283 = phi i32 [ %i.1.ph294, %while.body72.lr.ph.lr.ph ], [ %inc136, %if.end135.while.body72.lr.ph_crit_edge ]
  %34 = load %struct._MSMDvtx** %vertices, align 8, !tbaa !0
  %35 = sext i32 %i.1.ph267283 to i64
  br label %while.body72

while.cond69:                                     ; preds = %while.body72
  %indvars.iv.next313 = add i64 %indvars.iv312, 1
  %inc81 = add nsw i32 %i.1272, 1
  %36 = trunc i64 %indvars.iv312 to i32
  %37 = trunc i64 %indvars.iv321 to i32
  %cmp70 = icmp slt i32 %36, %37
  br i1 %cmp70, label %while.body72, label %while.end139

while.body72:                                     ; preds = %while.cond69, %while.body72.lr.ph
  %indvars.iv312 = phi i64 [ %indvars.iv.next313, %while.cond69 ], [ %35, %while.body72.lr.ph ]
  %i.1272 = phi i32 [ %inc81, %while.cond69 ], [ %i.1.ph267283, %while.body72.lr.ph ]
  %arrayidx74 = getelementptr inbounds i32* %14, i64 %indvars.iv312
  %38 = load i32* %arrayidx74, align 4, !tbaa !3
  %idx.ext76 = sext i32 %38 to i64
  %add.ptr77 = getelementptr inbounds %struct._MSMDvtx* %34, i64 %idx.ext76
  %cmp78 = icmp eq %struct._MSMDvtx* %add.ptr77, %v
  br i1 %cmp78, label %while.cond69, label %if.else82

if.else82:                                        ; preds = %while.body72
  %status83 = getelementptr inbounds %struct._MSMDvtx* %34, i64 %idx.ext76, i32 2
  %39 = load i8* %status83, align 1, !tbaa !1
  %cmp85 = icmp eq i8 %39, 73
  br i1 %cmp85, label %if.then87, label %if.else95

if.then87:                                        ; preds = %if.else82
  %arrayidx89 = getelementptr inbounds i32* %14, i64 %indvars.iv321
  %40 = load i32* %arrayidx89, align 4, !tbaa !3
  store i32 %40, i32* %arrayidx74, align 4, !tbaa !3
  store i32 %38, i32* %arrayidx89, align 4, !tbaa !3
  %dec94 = add nsw i32 %j.1.ph293, -1
  %cmp70271282 = icmp sgt i32 %i.1272, %dec94
  br i1 %cmp70271282, label %while.end139, label %while.body72.lr.ph.lr.ph

if.else95:                                        ; preds = %if.else82
  %mark96 = getelementptr inbounds %struct._MSMDvtx* %34, i64 %idx.ext76, i32 1
  %41 = load i8* %mark96, align 1, !tbaa !1
  %cmp98 = icmp eq i8 %41, 88
  br i1 %cmp98, label %if.else115, label %if.then100

if.then100:                                       ; preds = %if.else95
  %wght101 = getelementptr inbounds %struct._MSMDvtx* %34, i64 %idx.ext76, i32 4
  %42 = load i32* %wght101, align 4, !tbaa !3
  %add102 = add nsw i32 %42, %bndwght.2.ph268284
  %43 = load i32* %msglvl121, align 4, !tbaa !3
  %cmp104 = icmp sgt i32 %43, 5
  br i1 %cmp104, label %if.then106, label %if.end135

if.then106:                                       ; preds = %if.then100
  %44 = load %struct._IO_FILE** %msgFile125, align 8, !tbaa !0
  %45 = load i32* %id108, align 4, !tbaa !3
  %id109 = getelementptr inbounds %struct._MSMDvtx* %add.ptr77, i64 0, i32 0
  %46 = load i32* %id109, align 4, !tbaa !3
  %call111 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %44, i8* getelementptr inbounds ([47 x i8]* @.str13, i64 0, i64 0), i32 %45, i32 %46, i32 %42) #5
  %47 = load %struct._IO_FILE** %msgFile125, align 8, !tbaa !0
  %call113 = tail call i32 @fflush(%struct._IO_FILE* %47) #5
  br label %if.end135

if.else115:                                       ; preds = %if.else95
  %cmp118 = icmp eq i8 %39, 82
  br i1 %cmp118, label %if.then120, label %if.end135

if.then120:                                       ; preds = %if.else115
  %48 = load i32* %msglvl121, align 4, !tbaa !3
  %cmp122 = icmp sgt i32 %48, 2
  br i1 %cmp122, label %if.then124, label %if.end131

if.then124:                                       ; preds = %if.then120
  %49 = load %struct._IO_FILE** %msgFile125, align 8, !tbaa !0
  %id126 = getelementptr inbounds %struct._MSMDvtx* %add.ptr77, i64 0, i32 0
  %50 = load i32* %id126, align 4, !tbaa !3
  %51 = load i32* %id127, align 4, !tbaa !3
  %call128 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %49, i8* getelementptr inbounds ([30 x i8]* @.str14, i64 0, i64 0), i32 %50, i32 %51) #5
  %52 = load %struct._IO_FILE** %msgFile125, align 8, !tbaa !0
  %call130 = tail call i32 @fflush(%struct._IO_FILE* %52) #5
  br label %if.end131

if.end131:                                        ; preds = %if.then124, %if.then120
  store i8 79, i8* %status83, align 1, !tbaa !1
  %53 = load %struct._MSMDstageInfo** %stageInfo, align 8, !tbaa !0
  %noutmtch = getelementptr inbounds %struct._MSMDstageInfo* %53, i64 0, i32 11
  %54 = load i32* %noutmtch, align 4, !tbaa !3
  %inc133 = add nsw i32 %54, 1
  store i32 %inc133, i32* %noutmtch, align 4, !tbaa !3
  br label %if.end135

if.end135:                                        ; preds = %if.else115, %if.end131, %if.then100, %if.then106
  %bndwght.3 = phi i32 [ %add102, %if.then106 ], [ %add102, %if.then100 ], [ %bndwght.2.ph268284, %if.end131 ], [ %bndwght.2.ph268284, %if.else115 ]
  %55 = trunc i64 %indvars.iv321 to i32
  %cmp70271 = icmp slt i32 %i.1272, %55
  br i1 %cmp70271, label %if.end135.while.body72.lr.ph_crit_edge, label %while.end139

if.end135.while.body72.lr.ph_crit_edge:           ; preds = %if.end135
  %inc136 = add nsw i32 %i.1272, 1
  br label %while.body72.lr.ph

while.end139:                                     ; preds = %if.end135, %if.then87, %while.end, %while.cond69
  %j.1.ph288 = phi i32 [ %j.1.ph293, %while.cond69 ], [ %j.1.ph293, %if.end135 ], [ %sub68, %while.end ], [ %dec94, %if.then87 ]
  %bndwght.2.ph268281 = phi i32 [ %bndwght.2.ph268284, %while.cond69 ], [ %bndwght.3, %if.end135 ], [ %bndwght.0.lcssa, %while.end ], [ %bndwght.2.ph268284, %if.then87 ]
  %add140 = add nsw i32 %j.1.ph288, 1
  store i32 %add140, i32* %nadj26, align 4, !tbaa !3
  %56 = load i32* %nadj, align 4, !tbaa !3
  store i8 79, i8* %mark, align 1, !tbaa !1
  %cmp144264 = icmp sgt i32 %56, 0
  br i1 %cmp144264, label %for.body, label %for.end

for.body:                                         ; preds = %while.end139, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %while.end139 ]
  %arrayidx147 = getelementptr inbounds i32* %8, i64 %indvars.iv
  %57 = load i32* %arrayidx147, align 4, !tbaa !3
  %58 = load %struct._MSMDvtx** %vertices, align 8, !tbaa !0
  %idx.ext149 = sext i32 %57 to i64
  %mark151 = getelementptr inbounds %struct._MSMDvtx* %58, i64 %idx.ext149, i32 1
  store i8 79, i8* %mark151, align 1, !tbaa !1
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %56
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %while.end139
  %stageInfo153 = getelementptr inbounds %struct._MSMDinfo* %info, i64 0, i32 10
  %59 = load %struct._MSMDstageInfo** %stageInfo153, align 8, !tbaa !0
  %nexact2 = getelementptr inbounds %struct._MSMDstageInfo* %59, i64 0, i32 6
  %60 = load i32* %nexact2, align 4, !tbaa !3
  %inc154 = add nsw i32 %60, 1
  store i32 %inc154, i32* %nexact2, align 4, !tbaa !3
  ret i32 %bndwght.2.ph268281
}

; Function Attrs: nounwind optsize uwtable
define i32 @MSMD_exactDegree3(%struct._MSMD* %msmd, %struct._MSMDvtx* %v, %struct._MSMDinfo* %info) #0 {
entry:
  %ierr = alloca i32, align 4
  %cmp = icmp eq %struct._MSMD* %msmd, null
  %cmp1 = icmp eq %struct._MSMDvtx* %v, null
  %or.cond = or i1 %cmp, %cmp1
  %cmp3 = icmp eq %struct._MSMDinfo* %info, null
  %or.cond167 = or i1 %or.cond, %cmp3
  br i1 %or.cond167, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([57 x i8]* @.str15, i64 0, i64 0), %struct._MSMD* %msmd, %struct._MSMDvtx* %v, %struct._MSMDinfo* %info) #5
  call void @exit(i32 -1) #6
  unreachable

if.end:                                           ; preds = %entry
  %ivtmpIV = getelementptr inbounds %struct._MSMD* %msmd, i64 0, i32 6
  %call4 = call i32* @IV_entries(%struct._IV* %ivtmpIV) #5
  %mark = getelementptr inbounds %struct._MSMDvtx* %v, i64 0, i32 1
  store i8 88, i8* %mark, align 1, !tbaa !1
  %subtrees = getelementptr inbounds %struct._MSMDvtx* %v, i64 0, i32 9
  %ip.0185 = load %struct._IP** %subtrees, align 8
  %cmp5186 = icmp eq %struct._IP* %ip.0185, null
  br i1 %cmp5186, label %for.end, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %if.end
  %vertices = getelementptr inbounds %struct._MSMD* %msmd, i64 0, i32 5
  br label %for.body

for.body:                                         ; preds = %while.end, %for.body.lr.ph
  %ip.0188 = phi %struct._IP* [ %ip.0185, %for.body.lr.ph ], [ %ip.0, %while.end ]
  %nadj.0187 = phi i32 [ 0, %for.body.lr.ph ], [ %nadj.1.ph, %while.end ]
  %val = getelementptr inbounds %struct._IP* %ip.0188, i64 0, i32 0
  %1 = load i32* %val, align 4, !tbaa !3
  %2 = load %struct._MSMDvtx** %vertices, align 8, !tbaa !0
  %idx.ext = sext i32 %1 to i64
  %nadj6 = getelementptr inbounds %struct._MSMDvtx* %2, i64 %idx.ext, i32 5
  %3 = load i32* %nadj6, align 4, !tbaa !3
  %adj7 = getelementptr inbounds %struct._MSMDvtx* %2, i64 %idx.ext, i32 6
  %4 = load i32** %adj7, align 8, !tbaa !0
  %sub = add nsw i32 %3, -1
  %5 = sext i32 %nadj.0187 to i64
  br label %while.cond.outer

while.cond.outer:                                 ; preds = %if.then25, %for.body
  %indvars.iv219 = phi i64 [ %indvars.iv.next220, %if.then25 ], [ %5, %for.body ]
  %nadj.1.ph = phi i32 [ %inc27, %if.then25 ], [ %nadj.0187, %for.body ]
  %j.0.ph = phi i32 [ %j.0.ph177, %if.then25 ], [ %sub, %for.body ]
  %i.0.ph = phi i32 [ %inc, %if.then25 ], [ 0, %for.body ]
  %6 = sext i32 %j.0.ph to i64
  br label %while.cond.outer176

while.cond.outer176:                              ; preds = %while.cond.outer, %if.then14
  %indvars.iv217 = phi i64 [ %6, %while.cond.outer ], [ %indvars.iv.next218, %if.then14 ]
  %j.0.ph177 = phi i32 [ %j.0.ph, %while.cond.outer ], [ %dec, %if.then14 ]
  %i.0.ph178 = phi i32 [ %i.0.ph, %while.cond.outer ], [ %i.0, %if.then14 ]
  %7 = sext i32 %i.0.ph178 to i64
  br label %while.cond

while.cond:                                       ; preds = %while.cond.outer176, %if.else
  %indvars.iv214 = phi i64 [ %7, %while.cond.outer176 ], [ %indvars.iv.next215, %if.else ]
  %i.0 = phi i32 [ %i.0.ph178, %while.cond.outer176 ], [ %inc, %if.else ]
  %8 = trunc i64 %indvars.iv214 to i32
  %9 = trunc i64 %indvars.iv217 to i32
  %cmp8 = icmp sgt i32 %8, %9
  br i1 %cmp8, label %while.end, label %while.body

while.body:                                       ; preds = %while.cond
  %arrayidx = getelementptr inbounds i32* %4, i64 %indvars.iv214
  %10 = load i32* %arrayidx, align 4, !tbaa !3
  %11 = load %struct._MSMDvtx** %vertices, align 8, !tbaa !0
  %idx.ext10 = sext i32 %10 to i64
  %status = getelementptr inbounds %struct._MSMDvtx* %11, i64 %idx.ext10, i32 2
  %12 = load i8* %status, align 1, !tbaa !1
  %cmp12 = icmp eq i8 %12, 73
  br i1 %cmp12, label %if.then14, label %if.else

if.then14:                                        ; preds = %while.body
  %arrayidx16 = getelementptr inbounds i32* %4, i64 %indvars.iv217
  %13 = load i32* %arrayidx16, align 4, !tbaa !3
  store i32 %13, i32* %arrayidx, align 4, !tbaa !3
  store i32 %10, i32* %arrayidx16, align 4, !tbaa !3
  %indvars.iv.next218 = add i64 %indvars.iv217, -1
  %dec = add nsw i32 %j.0.ph177, -1
  br label %while.cond.outer176

if.else:                                          ; preds = %while.body
  %indvars.iv.next215 = add i64 %indvars.iv214, 1
  %inc = add nsw i32 %i.0, 1
  %mark21 = getelementptr inbounds %struct._MSMDvtx* %11, i64 %idx.ext10, i32 1
  %14 = load i8* %mark21, align 1, !tbaa !1
  %cmp23 = icmp eq i8 %14, 88
  br i1 %cmp23, label %while.cond, label %if.then25

if.then25:                                        ; preds = %if.else
  store i8 88, i8* %mark21, align 1, !tbaa !1
  %indvars.iv.next220 = add i64 %indvars.iv219, 1
  %inc27 = add nsw i32 %nadj.1.ph, 1
  %arrayidx29 = getelementptr inbounds i32* %call4, i64 %indvars.iv219
  store i32 %10, i32* %arrayidx29, align 4, !tbaa !3
  br label %while.cond.outer

while.end:                                        ; preds = %while.cond
  %add = add nsw i32 %j.0.ph177, 1
  store i32 %add, i32* %nadj6, align 4, !tbaa !3
  %next = getelementptr inbounds %struct._IP* %ip.0188, i64 0, i32 1
  %ip.0 = load %struct._IP** %next, align 8
  %cmp5 = icmp eq %struct._IP* %ip.0, null
  br i1 %cmp5, label %for.end, label %for.body

for.end:                                          ; preds = %while.end, %if.end
  %nadj.0.lcssa = phi i32 [ 0, %if.end ], [ %nadj.1.ph, %while.end ]
  %nadj33 = getelementptr inbounds %struct._MSMDvtx* %v, i64 0, i32 5
  %15 = load i32* %nadj33, align 4, !tbaa !3
  %adj34 = getelementptr inbounds %struct._MSMDvtx* %v, i64 0, i32 6
  %16 = load i32** %adj34, align 8, !tbaa !0
  %sub35 = add nsw i32 %15, -1
  %cmp37173193 = icmp slt i32 %15, 1
  br i1 %cmp37173193, label %while.end70, label %while.body39.lr.ph.lr.ph

while.body39.lr.ph.lr.ph:                         ; preds = %for.end
  %vertices42 = getelementptr inbounds %struct._MSMD* %msmd, i64 0, i32 5
  br label %while.body39.lr.ph

while.body39.lr.ph:                               ; preds = %if.end67.while.body39.lr.ph_crit_edge, %while.body39.lr.ph.lr.ph
  %indvars.iv207 = phi i64 [ %indvars.iv.next208, %if.end67.while.body39.lr.ph_crit_edge ], [ 0, %while.body39.lr.ph.lr.ph ]
  %j.1.ph195 = phi i32 [ %j.1174, %if.end67.while.body39.lr.ph_crit_edge ], [ %sub35, %while.body39.lr.ph.lr.ph ]
  %nadj.2.ph194 = phi i32 [ %nadj.3, %if.end67.while.body39.lr.ph_crit_edge ], [ %nadj.0.lcssa, %while.body39.lr.ph.lr.ph ]
  %arrayidx41 = getelementptr inbounds i32* %16, i64 %indvars.iv207
  %17 = sext i32 %j.1.ph195 to i64
  %.pre = load %struct._MSMDvtx** %vertices42, align 8, !tbaa !0
  br label %while.body39

while.body39:                                     ; preds = %while.body39.lr.ph, %if.then49
  %indvars.iv204 = phi i64 [ %17, %while.body39.lr.ph ], [ %indvars.iv.next205, %if.then49 ]
  %j.1174 = phi i32 [ %j.1.ph195, %while.body39.lr.ph ], [ %dec56, %if.then49 ]
  %18 = load i32* %arrayidx41, align 4, !tbaa !3
  %idx.ext43 = sext i32 %18 to i64
  %status45 = getelementptr inbounds %struct._MSMDvtx* %.pre, i64 %idx.ext43, i32 2
  %19 = load i8* %status45, align 1, !tbaa !1
  %cmp47 = icmp eq i8 %19, 73
  br i1 %cmp47, label %if.then49, label %if.else57

if.then49:                                        ; preds = %while.body39
  %arrayidx51 = getelementptr inbounds i32* %16, i64 %indvars.iv204
  %20 = load i32* %arrayidx51, align 4, !tbaa !3
  store i32 %20, i32* %arrayidx41, align 4, !tbaa !3
  store i32 %18, i32* %arrayidx51, align 4, !tbaa !3
  %indvars.iv.next205 = add i64 %indvars.iv204, -1
  %dec56 = add nsw i32 %j.1174, -1
  %21 = trunc i64 %indvars.iv.next205 to i32
  %22 = trunc i64 %indvars.iv207 to i32
  %cmp37 = icmp sgt i32 %22, %21
  br i1 %cmp37, label %while.end70, label %while.body39

if.else57:                                        ; preds = %while.body39
  %mark58 = getelementptr inbounds %struct._MSMDvtx* %.pre, i64 %idx.ext43, i32 1
  %23 = load i8* %mark58, align 1, !tbaa !1
  %cmp60 = icmp eq i8 %23, 88
  br i1 %cmp60, label %if.end67, label %if.then62

if.then62:                                        ; preds = %if.else57
  store i8 88, i8* %mark58, align 1, !tbaa !1
  %inc64 = add nsw i32 %nadj.2.ph194, 1
  %idxprom65 = sext i32 %nadj.2.ph194 to i64
  %arrayidx66 = getelementptr inbounds i32* %call4, i64 %idxprom65
  store i32 %18, i32* %arrayidx66, align 4, !tbaa !3
  br label %if.end67

if.end67:                                         ; preds = %if.else57, %if.then62
  %nadj.3 = phi i32 [ %inc64, %if.then62 ], [ %nadj.2.ph194, %if.else57 ]
  %24 = trunc i64 %indvars.iv207 to i32
  %cmp37173 = icmp slt i32 %24, %j.1174
  br i1 %cmp37173, label %if.end67.while.body39.lr.ph_crit_edge, label %while.end70

if.end67.while.body39.lr.ph_crit_edge:            ; preds = %if.end67
  %indvars.iv.next208 = add i64 %indvars.iv207, 1
  br label %while.body39.lr.ph

while.end70:                                      ; preds = %for.end, %if.end67, %if.then49
  %nadj.2.ph191 = phi i32 [ %nadj.2.ph194, %if.then49 ], [ %nadj.0.lcssa, %for.end ], [ %nadj.3, %if.end67 ]
  %j.1.lcssa = phi i32 [ %dec56, %if.then49 ], [ %sub35, %for.end ], [ %j.1174, %if.end67 ]
  %add71 = add nsw i32 %j.1.lcssa, 1
  store i32 %add71, i32* %nadj33, align 4, !tbaa !3
  %msglvl = getelementptr inbounds %struct._MSMDinfo* %info, i64 0, i32 4
  %25 = load i32* %msglvl, align 4, !tbaa !3
  %cmp73 = icmp sgt i32 %25, 4
  br i1 %cmp73, label %if.then75, label %for.cond82.preheader

if.then75:                                        ; preds = %while.end70
  %msgFile = getelementptr inbounds %struct._MSMDinfo* %info, i64 0, i32 5
  %26 = load %struct._IO_FILE** %msgFile, align 8, !tbaa !0
  %id = getelementptr inbounds %struct._MSMDvtx* %v, i64 0, i32 0
  %27 = load i32* %id, align 4, !tbaa !3
  %call76 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %26, i8* getelementptr inbounds ([13 x i8]* @.str16, i64 0, i64 0), i32 %27) #5
  %28 = load %struct._IO_FILE** %msgFile, align 8, !tbaa !0
  %call78 = call i32 @IVfp80(%struct._IO_FILE* %28, i32 %15, i32* %16, i32 12, i32* %ierr) #5
  %29 = load %struct._IO_FILE** %msgFile, align 8, !tbaa !0
  %call80 = call i32 @fflush(%struct._IO_FILE* %29) #5
  br label %for.cond82.preheader

for.cond82.preheader:                             ; preds = %if.then75, %while.end70
  %cmp83168 = icmp sgt i32 %nadj.2.ph191, 0
  br i1 %cmp83168, label %for.body85.lr.ph, label %for.end95

for.body85.lr.ph:                                 ; preds = %for.cond82.preheader
  %vertices88 = getelementptr inbounds %struct._MSMD* %msmd, i64 0, i32 5
  br label %for.body85

for.body85:                                       ; preds = %for.body85, %for.body85.lr.ph
  %indvars.iv = phi i64 [ 0, %for.body85.lr.ph ], [ %indvars.iv.next, %for.body85 ]
  %bndwght.0170 = phi i32 [ 0, %for.body85.lr.ph ], [ %add91, %for.body85 ]
  %arrayidx87 = getelementptr inbounds i32* %call4, i64 %indvars.iv
  %30 = load i32* %arrayidx87, align 4, !tbaa !3
  %31 = load %struct._MSMDvtx** %vertices88, align 8, !tbaa !0
  %idx.ext89 = sext i32 %30 to i64
  %wght = getelementptr inbounds %struct._MSMDvtx* %31, i64 %idx.ext89, i32 4
  %32 = load i32* %wght, align 4, !tbaa !3
  %add91 = add nsw i32 %32, %bndwght.0170
  %mark92 = getelementptr inbounds %struct._MSMDvtx* %31, i64 %idx.ext89, i32 1
  store i8 79, i8* %mark92, align 1, !tbaa !1
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %nadj.2.ph191
  br i1 %exitcond, label %for.end95, label %for.body85

for.end95:                                        ; preds = %for.body85, %for.cond82.preheader
  %bndwght.0.lcssa = phi i32 [ 0, %for.cond82.preheader ], [ %add91, %for.body85 ]
  store i8 79, i8* %mark, align 1, !tbaa !1
  %stageInfo = getelementptr inbounds %struct._MSMDinfo* %info, i64 0, i32 10
  %33 = load %struct._MSMDstageInfo** %stageInfo, align 8, !tbaa !0
  %nexact3 = getelementptr inbounds %struct._MSMDstageInfo* %33, i64 0, i32 7
  %34 = load i32* %nexact3, align 4, !tbaa !3
  %inc97 = add nsw i32 %34, 1
  store i32 %inc97, i32* %nexact3, align 4, !tbaa !3
  ret i32 %bndwght.0.lcssa
}

; Function Attrs: optsize
declare void @IV_setSize(%struct._IV*, i32) #3

; Function Attrs: optsize
declare void @IIheap_print(%struct._IIheap*, %struct._IO_FILE*) #3

; Function Attrs: optsize
declare i32 @IVfp80(%struct._IO_FILE*, i32, i32*, i32, i32*) #3

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
