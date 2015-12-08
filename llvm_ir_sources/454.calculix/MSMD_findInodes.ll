; ModuleID = '../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/MSMD/src/MSMD_findInodes.c'
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
@.str = private unnamed_addr constant [52 x i8] c"\0A fatal error in MSMD_findInodes(%p,%p)\0A bad input\0A\00", align 1
@.str1 = private unnamed_addr constant [42 x i8] c"\0A inside MSMD_findInodes(%p)\0A reach(%d) :\00", align 1
@.str2 = private unnamed_addr constant [12 x i8] c"\0A vertex %d\00", align 1
@.str3 = private unnamed_addr constant [35 x i8] c"\0A    adjacent subtree %d, sum = %d\00", align 1
@.str4 = private unnamed_addr constant [25 x i8] c"\0A    %d adjacent edges :\00", align 1
@.str5 = private unnamed_addr constant [12 x i8] c" : sum = %d\00", align 1
@.str6 = private unnamed_addr constant [26 x i8] c"\0A before sort, list array\00", align 1
@.str7 = private unnamed_addr constant [12 x i8] c"\0A chk array\00", align 1
@.str8 = private unnamed_addr constant [26 x i8] c"\0A after sort, reach array\00", align 1
@.str9 = private unnamed_addr constant [46 x i8] c"\0A checking out v = %d, vchk = %d, status = %c\00", align 1
@.str10 = private unnamed_addr constant [35 x i8] c"\0A checking out v = %d, status = %d\00", align 1
@.str11 = private unnamed_addr constant [39 x i8] c"\0A     w = %d, status = %c, status = %d\00", align 1
@.str12 = private unnamed_addr constant [28 x i8] c"\0A    checking %d against %d\00", align 1
@.str13 = private unnamed_addr constant [44 x i8] c"\0A %d absorbs %d, wght = %d, status[%d] = %c\00", align 1
@.str14 = private unnamed_addr constant [51 x i8] c"\0A MSMD_findInodes(%p), all done checking the nodes\00", align 1

; Function Attrs: nounwind optsize uwtable
define void @MSMD_findInodes(%struct._MSMD* %msmd, %struct._MSMDinfo* %info) #0 {
entry:
  %ierr = alloca i32, align 4
  %cmp = icmp eq %struct._MSMD* %msmd, null
  %cmp1 = icmp eq %struct._MSMDinfo* %info, null
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([52 x i8]* @.str, i64 0, i64 0), %struct._MSMD* %msmd, %struct._MSMDinfo* %info) #5
  call void @exit(i32 -1) #6
  unreachable

if.end:                                           ; preds = %entry
  %compressFlag = getelementptr inbounds %struct._MSMDinfo* %info, i64 0, i32 0
  %1 = load i32* %compressFlag, align 4, !tbaa !3
  %rem = srem i32 %1, 4
  %cmp2 = icmp eq i32 %rem, 0
  br i1 %cmp2, label %return, label %if.end4

if.end4:                                          ; preds = %if.end
  %reachIV = getelementptr inbounds %struct._MSMD* %msmd, i64 0, i32 7
  %call5 = call i32 @IV_size(%struct._IV* %reachIV) #5
  %cmp6 = icmp eq i32 %call5, 0
  br i1 %cmp6, label %return, label %if.end8

if.end8:                                          ; preds = %if.end4
  %call10 = call i32* @IV_entries(%struct._IV* %reachIV) #5
  %msglvl = getelementptr inbounds %struct._MSMDinfo* %info, i64 0, i32 4
  %2 = load i32* %msglvl, align 4, !tbaa !3
  %cmp11 = icmp sgt i32 %2, 3
  br i1 %cmp11, label %if.then12, label %if.end18

if.then12:                                        ; preds = %if.end8
  %msgFile = getelementptr inbounds %struct._MSMDinfo* %info, i64 0, i32 5
  %3 = load %struct._IO_FILE** %msgFile, align 8, !tbaa !0
  %call13 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([42 x i8]* @.str1, i64 0, i64 0), %struct._MSMD* %msmd, i32 %call5) #5
  %4 = load %struct._IO_FILE** %msgFile, align 8, !tbaa !0
  %call15 = call i32 @IVfp80(%struct._IO_FILE* %4, i32 %call5, i32* %call10, i32 10, i32* %ierr) #5
  %5 = load %struct._IO_FILE** %msgFile, align 8, !tbaa !0
  %call17 = call i32 @fflush(%struct._IO_FILE* %5) #5
  br label %if.end18

if.end18:                                         ; preds = %if.then12, %if.end8
  %ivtmpIV = getelementptr inbounds %struct._MSMD* %msmd, i64 0, i32 6
  %call19 = call i32* @IV_entries(%struct._IV* %ivtmpIV) #5
  %cmp20 = icmp eq i32 %rem, 1
  br i1 %cmp20, label %if.then21, label %if.end40

if.then21:                                        ; preds = %if.end18
  %sub = add nsw i32 %call5, -1
  %cmp22530534 = icmp slt i32 %call5, 1
  br i1 %cmp22530534, label %while.end, label %while.body.lr.ph.lr.ph

while.body.lr.ph.lr.ph:                           ; preds = %if.then21
  %vertices = getelementptr inbounds %struct._MSMD* %msmd, i64 0, i32 5
  %6 = load %struct._MSMDvtx** %vertices, align 8, !tbaa !0
  %7 = sext i32 %call5 to i64
  br label %while.body.lr.ph

while.body.lr.ph:                                 ; preds = %while.body.lr.ph.lr.ph, %if.then31
  %indvars.iv556.in = phi i64 [ %7, %while.body.lr.ph.lr.ph ], [ %indvars.iv556, %if.then31 ]
  %i.0.ph536 = phi i32 [ 0, %while.body.lr.ph.lr.ph ], [ %i.0531, %if.then31 ]
  %j.0.ph535 = phi i32 [ %sub, %while.body.lr.ph.lr.ph ], [ %dec, %if.then31 ]
  %indvars.iv556 = add i64 %indvars.iv556.in, -1
  %8 = sext i32 %i.0.ph536 to i64
  br label %while.body

while.cond:                                       ; preds = %lor.lhs.false28
  %indvars.iv.next554 = add i64 %indvars.iv553, 1
  %inc = add nsw i32 %i.0531, 1
  %9 = trunc i64 %indvars.iv553 to i32
  %10 = trunc i64 %indvars.iv556 to i32
  %cmp22 = icmp slt i32 %9, %10
  br i1 %cmp22, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond, %while.body.lr.ph
  %indvars.iv553 = phi i64 [ %indvars.iv.next554, %while.cond ], [ %8, %while.body.lr.ph ]
  %i.0531 = phi i32 [ %inc, %while.cond ], [ %i.0.ph536, %while.body.lr.ph ]
  %arrayidx = getelementptr inbounds i32* %call10, i64 %indvars.iv553
  %11 = load i32* %arrayidx, align 4, !tbaa !3
  %idx.ext = sext i32 %11 to i64
  %nadj = getelementptr inbounds %struct._MSMDvtx* %6, i64 %idx.ext, i32 5
  %12 = load i32* %nadj, align 4, !tbaa !3
  %cmp23 = icmp eq i32 %12, 0
  br i1 %cmp23, label %lor.lhs.false24, label %if.then31

lor.lhs.false24:                                  ; preds = %while.body
  %subtrees = getelementptr inbounds %struct._MSMDvtx* %6, i64 %idx.ext, i32 9
  %13 = load %struct._IP** %subtrees, align 8, !tbaa !0
  %cmp25 = icmp eq %struct._IP* %13, null
  br i1 %cmp25, label %if.then31, label %lor.lhs.false26

lor.lhs.false26:                                  ; preds = %lor.lhs.false24
  %next = getelementptr inbounds %struct._IP* %13, i64 0, i32 1
  %14 = load %struct._IP** %next, align 8, !tbaa !0
  %cmp27 = icmp eq %struct._IP* %14, null
  br i1 %cmp27, label %if.then31, label %lor.lhs.false28

lor.lhs.false28:                                  ; preds = %lor.lhs.false26
  %next29 = getelementptr inbounds %struct._IP* %14, i64 0, i32 1
  %15 = load %struct._IP** %next29, align 8, !tbaa !0
  %cmp30 = icmp eq %struct._IP* %15, null
  br i1 %cmp30, label %while.cond, label %if.then31

if.then31:                                        ; preds = %lor.lhs.false28, %while.body, %lor.lhs.false26, %lor.lhs.false24
  %arrayidx33 = getelementptr inbounds i32* %call10, i64 %indvars.iv556
  %16 = load i32* %arrayidx33, align 4, !tbaa !3
  store i32 %16, i32* %arrayidx, align 4, !tbaa !3
  store i32 %11, i32* %arrayidx33, align 4, !tbaa !3
  %dec = add nsw i32 %j.0.ph535, -1
  %cmp22530 = icmp sgt i32 %i.0531, %dec
  br i1 %cmp22530, label %while.end, label %while.body.lr.ph

while.end:                                        ; preds = %if.then21, %if.then31, %while.cond
  %j.0.ph533 = phi i32 [ %j.0.ph535, %while.cond ], [ %sub, %if.then21 ], [ %dec, %if.then31 ]
  %add = add nsw i32 %j.0.ph533, 1
  br label %if.end40

if.end40:                                         ; preds = %if.end18, %while.end
  %nlist.0 = phi i32 [ %add, %while.end ], [ %call5, %if.end18 ]
  %cmp41 = icmp eq i32 %nlist.0, 0
  br i1 %cmp41, label %return, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end40
  %cmp44527 = icmp sgt i32 %nlist.0, 0
  br i1 %cmp44527, label %for.body.lr.ph, label %for.end99

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %vertices47 = getelementptr inbounds %struct._MSMD* %msmd, i64 0, i32 5
  %msgFile53 = getelementptr inbounds %struct._MSMDinfo* %info, i64 0, i32 5
  br label %for.body

for.body:                                         ; preds = %if.end94, %for.body.lr.ph
  %indvars.iv546 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next547, %if.end94 ]
  %arrayidx46 = getelementptr inbounds i32* %call10, i64 %indvars.iv546
  %17 = load i32* %arrayidx46, align 4, !tbaa !3
  %18 = load %struct._MSMDvtx** %vertices47, align 8, !tbaa !0
  %idx.ext48 = sext i32 %17 to i64
  %19 = load i32* %msglvl, align 4, !tbaa !3
  %cmp51 = icmp sgt i32 %19, 4
  br i1 %cmp51, label %if.then52, label %if.end57

if.then52:                                        ; preds = %for.body
  %20 = load %struct._IO_FILE** %msgFile53, align 8, !tbaa !0
  %call54 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %20, i8* getelementptr inbounds ([12 x i8]* @.str2, i64 0, i64 0), i32 %17) #5
  %21 = load %struct._IO_FILE** %msgFile53, align 8, !tbaa !0
  %call56 = call i32 @fflush(%struct._IO_FILE* %21) #5
  br label %if.end57

if.end57:                                         ; preds = %if.then52, %for.body
  %subtrees58 = getelementptr inbounds %struct._MSMDvtx* %18, i64 %idx.ext48, i32 9
  %ipv.0523 = load %struct._IP** %subtrees58, align 8
  %cmp60524 = icmp eq %struct._IP* %ipv.0523, null
  br i1 %cmp60524, label %for.end, label %for.body61

for.body61:                                       ; preds = %if.end57, %if.end72.for.body61_crit_edge
  %ipv.0526 = phi %struct._IP* [ %ipv.0, %if.end72.for.body61_crit_edge ], [ %ipv.0523, %if.end57 ]
  %sum.0525 = phi i32 [ %phitmp, %if.end72.for.body61_crit_edge ], [ 1, %if.end57 ]
  %val = getelementptr inbounds %struct._IP* %ipv.0526, i64 0, i32 0
  %22 = load i32* %val, align 4, !tbaa !3
  %add63 = add i32 %sum.0525, %22
  %23 = load i32* %msglvl, align 4, !tbaa !3
  %cmp65 = icmp sgt i32 %23, 4
  br i1 %cmp65, label %if.then66, label %if.end72

if.then66:                                        ; preds = %for.body61
  %24 = load %struct._IO_FILE** %msgFile53, align 8, !tbaa !0
  %call69 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %24, i8* getelementptr inbounds ([35 x i8]* @.str3, i64 0, i64 0), i32 %22, i32 %add63) #5
  %25 = load %struct._IO_FILE** %msgFile53, align 8, !tbaa !0
  %call71 = call i32 @fflush(%struct._IO_FILE* %25) #5
  br label %if.end72

if.end72:                                         ; preds = %if.then66, %for.body61
  %next74 = getelementptr inbounds %struct._IP* %ipv.0526, i64 0, i32 1
  %ipv.0 = load %struct._IP** %next74, align 8
  %cmp60 = icmp eq %struct._IP* %ipv.0, null
  br i1 %cmp60, label %for.end, label %if.end72.for.body61_crit_edge

if.end72.for.body61_crit_edge:                    ; preds = %if.end72
  %phitmp = add i32 %add63, 1
  br label %for.body61

for.end:                                          ; preds = %if.end72, %if.end57
  %sum.0.lcssa = phi i32 [ 0, %if.end57 ], [ %add63, %if.end72 ]
  %nadj75 = getelementptr inbounds %struct._MSMDvtx* %18, i64 %idx.ext48, i32 5
  %26 = load i32* %nadj75, align 4, !tbaa !3
  %cmp76 = icmp sgt i32 %26, 0
  br i1 %cmp76, label %land.lhs.true, label %if.end94

land.lhs.true:                                    ; preds = %for.end
  %adj = getelementptr inbounds %struct._MSMDvtx* %18, i64 %idx.ext48, i32 6
  %27 = load i32** %adj, align 8, !tbaa !0
  %cmp77 = icmp eq i32* %27, null
  br i1 %cmp77, label %if.end94, label %if.then78

if.then78:                                        ; preds = %land.lhs.true
  %call79 = call i32 @IVsum(i32 %26, i32* %27) #5
  %add80 = add i32 %26, %sum.0.lcssa
  %add81 = add i32 %add80, %call79
  %28 = load i32* %msglvl, align 4, !tbaa !3
  %cmp83 = icmp sgt i32 %28, 4
  br i1 %cmp83, label %if.then84, label %if.end93

if.then84:                                        ; preds = %if.then78
  %29 = load %struct._IO_FILE** %msgFile53, align 8, !tbaa !0
  %call86 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %29, i8* getelementptr inbounds ([25 x i8]* @.str4, i64 0, i64 0), i32 %26) #5
  %30 = load %struct._IO_FILE** %msgFile53, align 8, !tbaa !0
  %call88 = call i32 @IVfp80(%struct._IO_FILE* %30, i32 %26, i32* %27, i32 20, i32* %ierr) #5
  %31 = load %struct._IO_FILE** %msgFile53, align 8, !tbaa !0
  %call90 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %31, i8* getelementptr inbounds ([12 x i8]* @.str5, i64 0, i64 0), i32 %add81) #5
  %32 = load %struct._IO_FILE** %msgFile53, align 8, !tbaa !0
  %call92 = call i32 @fflush(%struct._IO_FILE* %32) #5
  br label %if.end93

if.end93:                                         ; preds = %if.then84, %if.then78
  call void @IVqsortUp(i32 %26, i32* %27) #5
  br label %if.end94

if.end94:                                         ; preds = %land.lhs.true, %if.end93, %for.end
  %sum.1 = phi i32 [ %add81, %if.end93 ], [ %sum.0.lcssa, %land.lhs.true ], [ %sum.0.lcssa, %for.end ]
  %arrayidx96 = getelementptr inbounds i32* %call19, i64 %indvars.iv546
  store i32 %sum.1, i32* %arrayidx96, align 4, !tbaa !3
  %indvars.iv.next547 = add i64 %indvars.iv546, 1
  %lftr.wideiv548 = trunc i64 %indvars.iv.next547 to i32
  %exitcond549 = icmp eq i32 %lftr.wideiv548, %nlist.0
  br i1 %exitcond549, label %for.end99, label %for.body

for.end99:                                        ; preds = %if.end94, %for.cond.preheader
  %33 = load i32* %msglvl, align 4, !tbaa !3
  %cmp101 = icmp sgt i32 %33, 3
  br i1 %cmp101, label %if.then102, label %if.end119

if.then102:                                       ; preds = %for.end99
  %msgFile103 = getelementptr inbounds %struct._MSMDinfo* %info, i64 0, i32 5
  %34 = load %struct._IO_FILE** %msgFile103, align 8, !tbaa !0
  %35 = call i64 @fwrite(i8* getelementptr inbounds ([26 x i8]* @.str6, i64 0, i64 0), i64 25, i64 1, %struct._IO_FILE* %34)
  %36 = load %struct._IO_FILE** %msgFile103, align 8, !tbaa !0
  %call106 = call i32 @fflush(%struct._IO_FILE* %36) #5
  %37 = load %struct._IO_FILE** %msgFile103, align 8, !tbaa !0
  %call108 = call i32 @IVfp80(%struct._IO_FILE* %37, i32 %nlist.0, i32* %call10, i32 80, i32* %ierr) #5
  %38 = load %struct._IO_FILE** %msgFile103, align 8, !tbaa !0
  %call110 = call i32 @fflush(%struct._IO_FILE* %38) #5
  %39 = load %struct._IO_FILE** %msgFile103, align 8, !tbaa !0
  %40 = call i64 @fwrite(i8* getelementptr inbounds ([12 x i8]* @.str7, i64 0, i64 0), i64 11, i64 1, %struct._IO_FILE* %39)
  %41 = load %struct._IO_FILE** %msgFile103, align 8, !tbaa !0
  %call114 = call i32 @fflush(%struct._IO_FILE* %41) #5
  %42 = load %struct._IO_FILE** %msgFile103, align 8, !tbaa !0
  %call116 = call i32 @IVfp80(%struct._IO_FILE* %42, i32 %nlist.0, i32* %call19, i32 80, i32* %ierr) #5
  %43 = load %struct._IO_FILE** %msgFile103, align 8, !tbaa !0
  %call118 = call i32 @fflush(%struct._IO_FILE* %43) #5
  br label %if.end119

if.end119:                                        ; preds = %if.then102, %for.end99
  call void @IV2qsortUp(i32 %nlist.0, i32* %call19, i32* %call10) #5
  %44 = load i32* %msglvl, align 4, !tbaa !3
  %cmp121 = icmp sgt i32 %44, 3
  br i1 %cmp121, label %if.then122, label %for.cond134.preheader

if.then122:                                       ; preds = %if.end119
  %msgFile123 = getelementptr inbounds %struct._MSMDinfo* %info, i64 0, i32 5
  %45 = load %struct._IO_FILE** %msgFile123, align 8, !tbaa !0
  %46 = call i64 @fwrite(i8* getelementptr inbounds ([26 x i8]* @.str8, i64 0, i64 0), i64 25, i64 1, %struct._IO_FILE* %45)
  %47 = load %struct._IO_FILE** %msgFile123, align 8, !tbaa !0
  %call126 = call i32 @IVfp80(%struct._IO_FILE* %47, i32 %nlist.0, i32* %call10, i32 80, i32* %ierr) #5
  %48 = load %struct._IO_FILE** %msgFile123, align 8, !tbaa !0
  %49 = call i64 @fwrite(i8* getelementptr inbounds ([12 x i8]* @.str7, i64 0, i64 0), i64 11, i64 1, %struct._IO_FILE* %48)
  %50 = load %struct._IO_FILE** %msgFile123, align 8, !tbaa !0
  %call130 = call i32 @IVfp80(%struct._IO_FILE* %50, i32 %nlist.0, i32* %call19, i32 80, i32* %ierr) #5
  %51 = load %struct._IO_FILE** %msgFile123, align 8, !tbaa !0
  %call132 = call i32 @fflush(%struct._IO_FILE* %51) #5
  br label %for.cond134.preheader

for.cond134.preheader:                            ; preds = %if.then122, %if.end119
  br i1 %cmp44527, label %for.body136.lr.ph, label %for.end309

for.body136.lr.ph:                                ; preds = %for.cond134.preheader
  %vertices139 = getelementptr inbounds %struct._MSMD* %msmd, i64 0, i32 5
  %msgFile155 = getelementptr inbounds %struct._MSMDinfo* %info, i64 0, i32 5
  %stageInfo = getelementptr inbounds %struct._MSMDinfo* %info, i64 0, i32 10
  %freeIP = getelementptr inbounds %struct._MSMD* %msmd, i64 0, i32 4
  br label %for.body136

for.body136:                                      ; preds = %for.inc307.for.body136_crit_edge, %for.body136.lr.ph
  %indvars.iv543 = phi i64 [ 0, %for.body136.lr.ph ], [ %indvars.iv.next544.pre-phi, %for.inc307.for.body136_crit_edge ]
  %indvars.iv538 = phi i64 [ 1, %for.body136.lr.ph ], [ %indvars.iv.next539, %for.inc307.for.body136_crit_edge ]
  %iv.0521 = phi i32 [ 0, %for.body136.lr.ph ], [ %inc308.pre-phi, %for.inc307.for.body136_crit_edge ]
  %arrayidx138 = getelementptr inbounds i32* %call10, i64 %indvars.iv543
  %52 = load i32* %arrayidx138, align 4, !tbaa !3
  %53 = load %struct._MSMDvtx** %vertices139, align 8, !tbaa !0
  %idx.ext140 = sext i32 %52 to i64
  %add.ptr141 = getelementptr inbounds %struct._MSMDvtx* %53, i64 %idx.ext140
  %status = getelementptr inbounds %struct._MSMDvtx* %53, i64 %idx.ext140, i32 2
  %54 = load i8* %status, align 1, !tbaa !1
  %conv = sext i8 %54 to i32
  %cmp142 = icmp eq i8 %54, 73
  br i1 %cmp142, label %for.body136.for.inc307_crit_edge, label %if.end145

for.body136.for.inc307_crit_edge:                 ; preds = %for.body136
  %indvars.iv.next544.pre = add i64 %indvars.iv543, 1
  %inc308.pre = add nsw i32 %iv.0521, 1
  %lftr.wideiv.pre = trunc i64 %indvars.iv.next544.pre to i32
  br label %for.inc307

if.end145:                                        ; preds = %for.body136
  %arrayidx147 = getelementptr inbounds i32* %call19, i64 %indvars.iv543
  %55 = load i32* %arrayidx147, align 4, !tbaa !3
  %nadj148 = getelementptr inbounds %struct._MSMDvtx* %53, i64 %idx.ext140, i32 5
  %56 = load i32* %nadj148, align 4, !tbaa !3
  %adj149 = getelementptr inbounds %struct._MSMDvtx* %53, i64 %idx.ext140, i32 6
  %57 = load i32** %adj149, align 8, !tbaa !0
  %subtrees150 = getelementptr inbounds %struct._MSMDvtx* %53, i64 %idx.ext140, i32 9
  %58 = load %struct._IP** %subtrees150, align 8, !tbaa !0
  %59 = load i32* %msglvl, align 4, !tbaa !3
  %cmp152 = icmp sgt i32 %59, 3
  br i1 %cmp152, label %if.end161, label %for.cond173.preheader

if.end161:                                        ; preds = %if.end145
  %60 = load %struct._IO_FILE** %msgFile155, align 8, !tbaa !0
  %id = getelementptr inbounds %struct._MSMDvtx* %add.ptr141, i64 0, i32 0
  %61 = load i32* %id, align 4, !tbaa !3
  %call158 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %60, i8* getelementptr inbounds ([46 x i8]* @.str9, i64 0, i64 0), i32 %61, i32 %55, i32 %conv) #5
  %62 = load %struct._IO_FILE** %msgFile155, align 8, !tbaa !0
  %call160 = call i32 @fflush(%struct._IO_FILE* %62) #5
  %.pr = load i32* %msglvl, align 4, !tbaa !3
  %cmp163 = icmp sgt i32 %.pr, 3
  br i1 %cmp163, label %if.then165, label %for.cond173.preheader

if.then165:                                       ; preds = %if.end161
  %63 = load %struct._IO_FILE** %msgFile155, align 8, !tbaa !0
  %64 = load i32* %id, align 4, !tbaa !3
  %stage = getelementptr inbounds %struct._MSMDvtx* %53, i64 %idx.ext140, i32 3
  %65 = load i32* %stage, align 4, !tbaa !3
  %call168 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %63, i8* getelementptr inbounds ([35 x i8]* @.str10, i64 0, i64 0), i32 %64, i32 %65) #5
  %66 = load %struct._IO_FILE** %msgFile155, align 8, !tbaa !0
  %call170 = call i32 @fflush(%struct._IO_FILE* %66) #5
  br label %for.cond173.preheader

for.cond173.preheader:                            ; preds = %if.then165, %if.end161, %if.end145
  %67 = add nsw i64 %indvars.iv543, 1
  %iw.0517 = add nsw i32 %iv.0521, 1
  %68 = trunc i64 %67 to i32
  %cmp174518 = icmp slt i32 %68, %nlist.0
  br i1 %cmp174518, label %land.rhs.lr.ph, label %for.inc307

land.rhs.lr.ph:                                   ; preds = %for.cond173.preheader
  %stage204 = getelementptr inbounds %struct._MSMDvtx* %53, i64 %idx.ext140, i32 3
  %cmp226509 = icmp eq %struct._IP* %58, null
  %cmp247515 = icmp sgt i32 %56, 0
  %id270 = getelementptr inbounds %struct._MSMDvtx* %add.ptr141, i64 0, i32 0
  %wght280 = getelementptr inbounds %struct._MSMDvtx* %53, i64 %idx.ext140, i32 4
  br label %land.rhs

land.rhs:                                         ; preds = %land.rhs.lr.ph, %for.cond173.backedge
  %indvars.iv540 = phi i64 [ %indvars.iv538, %land.rhs.lr.ph ], [ %indvars.iv.next541, %for.cond173.backedge ]
  %iw.0519 = phi i32 [ %iw.0517, %land.rhs.lr.ph ], [ %iw.0, %for.cond173.backedge ]
  %arrayidx177 = getelementptr inbounds i32* %call19, i64 %indvars.iv540
  %69 = load i32* %arrayidx177, align 4, !tbaa !3
  %cmp178 = icmp eq i32 %69, %55
  br i1 %cmp178, label %for.body180, label %for.inc307

for.body180:                                      ; preds = %land.rhs
  %arrayidx182 = getelementptr inbounds i32* %call10, i64 %indvars.iv540
  %70 = load i32* %arrayidx182, align 4, !tbaa !3
  %71 = load %struct._MSMDvtx** %vertices139, align 8, !tbaa !0
  %idx.ext184 = sext i32 %70 to i64
  %add.ptr185 = getelementptr inbounds %struct._MSMDvtx* %71, i64 %idx.ext184
  %72 = load i32* %msglvl, align 4, !tbaa !3
  %cmp187 = icmp sgt i32 %72, 3
  br i1 %cmp187, label %if.then189, label %for.body180.if.end198_crit_edge

for.body180.if.end198_crit_edge:                  ; preds = %for.body180
  %status199.pre = getelementptr inbounds %struct._MSMDvtx* %71, i64 %idx.ext184, i32 2
  br label %if.end198

if.then189:                                       ; preds = %for.body180
  %73 = load %struct._IO_FILE** %msgFile155, align 8, !tbaa !0
  %id191 = getelementptr inbounds %struct._MSMDvtx* %add.ptr185, i64 0, i32 0
  %74 = load i32* %id191, align 4, !tbaa !3
  %status192 = getelementptr inbounds %struct._MSMDvtx* %71, i64 %idx.ext184, i32 2
  %75 = load i8* %status192, align 1, !tbaa !1
  %conv193 = sext i8 %75 to i32
  %stage194 = getelementptr inbounds %struct._MSMDvtx* %71, i64 %idx.ext184, i32 3
  %76 = load i32* %stage194, align 4, !tbaa !3
  %call195 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %73, i8* getelementptr inbounds ([39 x i8]* @.str11, i64 0, i64 0), i32 %74, i32 %conv193, i32 %76) #5
  %77 = load %struct._IO_FILE** %msgFile155, align 8, !tbaa !0
  %call197 = call i32 @fflush(%struct._IO_FILE* %77) #5
  br label %if.end198

if.end198:                                        ; preds = %for.body180.if.end198_crit_edge, %if.then189
  %status199.pre-phi = phi i8* [ %status199.pre, %for.body180.if.end198_crit_edge ], [ %status192, %if.then189 ]
  %78 = load i8* %status199.pre-phi, align 1, !tbaa !1
  %cmp201 = icmp eq i8 %78, 73
  br i1 %cmp201, label %for.cond173.backedge, label %lor.lhs.false203

lor.lhs.false203:                                 ; preds = %if.end198
  %79 = load i32* %stage204, align 4, !tbaa !3
  %stage205 = getelementptr inbounds %struct._MSMDvtx* %71, i64 %idx.ext184, i32 3
  %80 = load i32* %stage205, align 4, !tbaa !3
  %cmp206 = icmp eq i32 %79, %80
  br i1 %cmp206, label %lor.lhs.false208, label %for.cond173.backedge

lor.lhs.false208:                                 ; preds = %lor.lhs.false203
  %nadj209 = getelementptr inbounds %struct._MSMDvtx* %71, i64 %idx.ext184, i32 5
  %81 = load i32* %nadj209, align 4, !tbaa !3
  %cmp210 = icmp eq i32 %56, %81
  br i1 %cmp210, label %if.end213, label %for.cond173.backedge

for.cond173.backedge:                             ; preds = %for.body249, %while.body232, %lor.lhs.false208, %lor.lhs.false203, %if.end300, %if.end198
  %iw.0 = add nsw i32 %iw.0519, 1
  %cmp174 = icmp slt i32 %iw.0, %nlist.0
  %indvars.iv.next541 = add i64 %indvars.iv540, 1
  br i1 %cmp174, label %land.rhs, label %for.inc307

if.end213:                                        ; preds = %lor.lhs.false208
  %82 = load i32* %msglvl, align 4, !tbaa !3
  %cmp215 = icmp sgt i32 %82, 3
  br i1 %cmp215, label %if.then217, label %if.end222

if.then217:                                       ; preds = %if.end213
  %83 = load %struct._IO_FILE** %msgFile155, align 8, !tbaa !0
  %call219 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %83, i8* getelementptr inbounds ([28 x i8]* @.str12, i64 0, i64 0), i32 %70, i32 %52) #5
  %84 = load %struct._IO_FILE** %msgFile155, align 8, !tbaa !0
  %call221 = call i32 @fflush(%struct._IO_FILE* %84) #5
  br label %if.end222

if.end222:                                        ; preds = %if.end213, %if.then217
  %85 = load %struct._MSMDstageInfo** %stageInfo, align 8, !tbaa !0
  %ncheck = getelementptr inbounds %struct._MSMDstageInfo* %85, i64 0, i32 9
  %86 = load i32* %ncheck, align 4, !tbaa !3
  %inc223 = add nsw i32 %86, 1
  store i32 %inc223, i32* %ncheck, align 4, !tbaa !3
  %subtrees224 = getelementptr inbounds %struct._MSMDvtx* %71, i64 %idx.ext184, i32 9
  %ipw.0508 = load %struct._IP** %subtrees224, align 8
  %cmp229510 = icmp eq %struct._IP* %ipw.0508, null
  %or.cond499511 = or i1 %cmp226509, %cmp229510
  br i1 %or.cond499511, label %if.then244, label %while.body232

while.body232:                                    ; preds = %if.end222, %if.end238
  %ipw.0513 = phi %struct._IP* [ %ipw.0, %if.end238 ], [ %ipw.0508, %if.end222 ]
  %ipv.1512 = phi %struct._IP* [ %89, %if.end238 ], [ %58, %if.end222 ]
  %val233 = getelementptr inbounds %struct._IP* %ipv.1512, i64 0, i32 0
  %87 = load i32* %val233, align 4, !tbaa !3
  %val234 = getelementptr inbounds %struct._IP* %ipw.0513, i64 0, i32 0
  %88 = load i32* %val234, align 4, !tbaa !3
  %cmp235 = icmp eq i32 %87, %88
  br i1 %cmp235, label %if.end238, label %for.cond173.backedge

if.end238:                                        ; preds = %while.body232
  %next239 = getelementptr inbounds %struct._IP* %ipv.1512, i64 0, i32 1
  %89 = load %struct._IP** %next239, align 8, !tbaa !0
  %next240 = getelementptr inbounds %struct._IP* %ipw.0513, i64 0, i32 1
  %ipw.0 = load %struct._IP** %next240, align 8
  %cmp226 = icmp eq %struct._IP* %89, null
  %cmp229 = icmp eq %struct._IP* %ipw.0, null
  %or.cond499 = or i1 %cmp226, %cmp229
  br i1 %or.cond499, label %if.then244, label %while.body232

if.then244:                                       ; preds = %if.end238, %if.end222
  %adj245 = getelementptr inbounds %struct._MSMDvtx* %71, i64 %idx.ext184, i32 6
  %90 = load i32** %adj245, align 8, !tbaa !0
  br i1 %cmp247515, label %for.body249, label %if.then264

for.cond246:                                      ; preds = %for.body249
  %91 = trunc i64 %indvars.iv.next to i32
  %cmp247 = icmp slt i32 %91, %56
  br i1 %cmp247, label %for.body249, label %if.then264

for.body249:                                      ; preds = %if.then244, %for.cond246
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.cond246 ], [ 0, %if.then244 ]
  %arrayidx251 = getelementptr inbounds i32* %57, i64 %indvars.iv
  %92 = load i32* %arrayidx251, align 4, !tbaa !3
  %arrayidx253 = getelementptr inbounds i32* %90, i64 %indvars.iv
  %93 = load i32* %arrayidx253, align 4, !tbaa !3
  %cmp254 = icmp eq i32 %92, %93
  %indvars.iv.next = add i64 %indvars.iv, 1
  br i1 %cmp254, label %for.cond246, label %for.cond173.backedge

if.then264:                                       ; preds = %for.cond246, %if.then244
  %94 = load i32* %msglvl, align 4, !tbaa !3
  %cmp266 = icmp sgt i32 %94, 1
  br i1 %cmp266, label %if.then268, label %if.then264.if.end278_crit_edge

if.then264.if.end278_crit_edge:                   ; preds = %if.then264
  %wght279.pre = getelementptr inbounds %struct._MSMDvtx* %71, i64 %idx.ext184, i32 4
  br label %if.end278

if.then268:                                       ; preds = %if.then264
  %95 = load %struct._IO_FILE** %msgFile155, align 8, !tbaa !0
  %96 = load i32* %id270, align 4, !tbaa !3
  %id271 = getelementptr inbounds %struct._MSMDvtx* %add.ptr185, i64 0, i32 0
  %97 = load i32* %id271, align 4, !tbaa !3
  %wght = getelementptr inbounds %struct._MSMDvtx* %71, i64 %idx.ext184, i32 4
  %98 = load i32* %wght, align 4, !tbaa !3
  %99 = load i8* %status199.pre-phi, align 1, !tbaa !1
  %conv274 = sext i8 %99 to i32
  %call275 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %95, i8* getelementptr inbounds ([44 x i8]* @.str13, i64 0, i64 0), i32 %96, i32 %97, i32 %98, i32 %97, i32 %conv274) #5
  %100 = load %struct._IO_FILE** %msgFile155, align 8, !tbaa !0
  %call277 = call i32 @fflush(%struct._IO_FILE* %100) #5
  %.pre = load %struct._IP** %subtrees224, align 8, !tbaa !0
  br label %if.end278

if.end278:                                        ; preds = %if.then264.if.end278_crit_edge, %if.then268
  %wght279.pre-phi = phi i32* [ %wght279.pre, %if.then264.if.end278_crit_edge ], [ %wght, %if.then268 ]
  %101 = phi %struct._IP* [ %ipw.0508, %if.then264.if.end278_crit_edge ], [ %.pre, %if.then268 ]
  %102 = load i32* %wght279.pre-phi, align 4, !tbaa !3
  %103 = load i32* %wght280, align 4, !tbaa !3
  %add281 = add nsw i32 %103, %102
  store i32 %add281, i32* %wght280, align 4, !tbaa !3
  store i32 0, i32* %wght279.pre-phi, align 4, !tbaa !3
  store i8 73, i8* %status199.pre-phi, align 1, !tbaa !1
  store i32 0, i32* %nadj209, align 4, !tbaa !3
  store i32* null, i32** %adj245, align 8, !tbaa !0
  %par = getelementptr inbounds %struct._MSMDvtx* %71, i64 %idx.ext184, i32 8
  store %struct._MSMDvtx* %add.ptr141, %struct._MSMDvtx** %par, align 8, !tbaa !0
  %cmp287 = icmp eq %struct._IP* %101, null
  br i1 %cmp287, label %if.end300, label %while.cond290

while.cond290:                                    ; preds = %if.end278, %while.cond290
  %ipw.1 = phi %struct._IP* [ %104, %while.cond290 ], [ %101, %if.end278 ]
  %next291 = getelementptr inbounds %struct._IP* %ipw.1, i64 0, i32 1
  %104 = load %struct._IP** %next291, align 8, !tbaa !0
  %cmp292 = icmp eq %struct._IP* %104, null
  br i1 %cmp292, label %while.end296, label %while.cond290

while.end296:                                     ; preds = %while.cond290
  %105 = load %struct._IP** %freeIP, align 8, !tbaa !0
  store %struct._IP* %105, %struct._IP** %next291, align 8, !tbaa !0
  store %struct._IP* %ipw.1, %struct._IP** %freeIP, align 8, !tbaa !0
  store %struct._IP* null, %struct._IP** %subtrees224, align 8, !tbaa !0
  br label %if.end300

if.end300:                                        ; preds = %if.end278, %while.end296
  %106 = load %struct._MSMDstageInfo** %stageInfo, align 8, !tbaa !0
  %nindst = getelementptr inbounds %struct._MSMDstageInfo* %106, i64 0, i32 10
  %107 = load i32* %nindst, align 4, !tbaa !3
  %inc302 = add nsw i32 %107, 1
  store i32 %inc302, i32* %nindst, align 4, !tbaa !3
  br label %for.cond173.backedge

for.inc307:                                       ; preds = %for.cond173.preheader, %land.rhs, %for.cond173.backedge, %for.body136.for.inc307_crit_edge
  %lftr.wideiv.pre-phi = phi i32 [ %lftr.wideiv.pre, %for.body136.for.inc307_crit_edge ], [ %68, %for.cond173.backedge ], [ %68, %land.rhs ], [ %68, %for.cond173.preheader ]
  %inc308.pre-phi = phi i32 [ %inc308.pre, %for.body136.for.inc307_crit_edge ], [ %iw.0517, %for.cond173.backedge ], [ %iw.0517, %land.rhs ], [ %iw.0517, %for.cond173.preheader ]
  %indvars.iv.next544.pre-phi = phi i64 [ %indvars.iv.next544.pre, %for.body136.for.inc307_crit_edge ], [ %67, %for.cond173.backedge ], [ %67, %land.rhs ], [ %67, %for.cond173.preheader ]
  %exitcond = icmp eq i32 %lftr.wideiv.pre-phi, %nlist.0
  br i1 %exitcond, label %for.end309, label %for.inc307.for.body136_crit_edge

for.inc307.for.body136_crit_edge:                 ; preds = %for.inc307
  %indvars.iv.next539 = add i64 %indvars.iv538, 1
  br label %for.body136

for.end309:                                       ; preds = %for.inc307, %for.cond134.preheader
  %108 = load i32* %msglvl, align 4, !tbaa !3
  %cmp311 = icmp sgt i32 %108, 4
  br i1 %cmp311, label %if.then313, label %return

if.then313:                                       ; preds = %for.end309
  %msgFile314 = getelementptr inbounds %struct._MSMDinfo* %info, i64 0, i32 5
  %109 = load %struct._IO_FILE** %msgFile314, align 8, !tbaa !0
  %call315 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %109, i8* getelementptr inbounds ([51 x i8]* @.str14, i64 0, i64 0), %struct._MSMD* %msmd) #5
  %110 = load %struct._IO_FILE** %msgFile314, align 8, !tbaa !0
  %call317 = call i32 @fflush(%struct._IO_FILE* %110) #5
  br label %return

return:                                           ; preds = %for.end309, %if.then313, %if.end40, %if.end4, %if.end
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

; Function Attrs: optsize
declare i32 @IVfp80(%struct._IO_FILE*, i32, i32*, i32, i32*) #3

; Function Attrs: nounwind optsize
declare i32 @fflush(%struct._IO_FILE* nocapture) #1

; Function Attrs: optsize
declare i32 @IVsum(i32, i32*) #3

; Function Attrs: optsize
declare void @IVqsortUp(i32, i32*) #3

; Function Attrs: optsize
declare void @IV2qsortUp(i32, i32*, i32*) #3

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #4

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind optsize }
attributes #6 = { noreturn nounwind optsize }

!0 = metadata !{metadata !"any pointer", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"int", metadata !1}
