; ModuleID = '../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/MSMD/src/MSMD_eliminate.c'
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
@.str = private unnamed_addr constant [56 x i8] c"\0A fatal error in MSMD_eliminateStage(%p,%p)\0A bad input\0A\00", align 1
@.str1 = private unnamed_addr constant [26 x i8] c"\0A after loading reach set\00", align 1
@.str2 = private unnamed_addr constant [24 x i8] c"\0A reach set at stage %d\00", align 1
@.str3 = private unnamed_addr constant [24 x i8] c"\0A\0A after initial update\00", align 1
@.str4 = private unnamed_addr constant [39 x i8] c"\0A\0A ##### stage %d, elimination step %d\00", align 1
@.str5 = private unnamed_addr constant [31 x i8] c"\0A calling MSMD_cleanReachSet()\00", align 1
@.str6 = private unnamed_addr constant [12 x i8] c"\0A reach set\00", align 1
@.str7 = private unnamed_addr constant [35 x i8] c"\0A return from MSMD_cleanReachSet()\00", align 1
@.str8 = private unnamed_addr constant [55 x i8] c"\0A fatal error in MSMD_eliminateStage()\0A reach[%d] = %d\00", align 1
@.str9 = private unnamed_addr constant [41 x i8] c"\0A\0A after cleaning reach set, nreach = %d\00", align 1
@.str10 = private unnamed_addr constant [10 x i8] c"\0A reach :\00", align 1
@.str11 = private unnamed_addr constant [22 x i8] c"\0A\0A return from update\00", align 1
@.str12 = private unnamed_addr constant [26 x i8] c"\0A stage %d over, %d steps\00", align 1
@.str13 = private unnamed_addr constant [51 x i8] c"\0A fatal error in MSMD_eliminate(%p,%p)\0A bad input\0A\00", align 1
@.str14 = private unnamed_addr constant [10 x i8] c"\0A step %d\00", align 1
@.str15 = private unnamed_addr constant [46 x i8] c"\0A    eliminating vertex %d, weight %d, deg %d\00", align 1
@.str16 = private unnamed_addr constant [57 x i8] c"\0A fatal error in MSMD_eliminateVtx(%p,%p,%p)\0A bad input\0A\00", align 1
@.str17 = private unnamed_addr constant [22 x i8] c"\0A vertex %d is a leaf\00", align 1
@.str18 = private unnamed_addr constant [26 x i8] c"\0A vertex %d is not a leaf\00", align 1
@.str19 = private unnamed_addr constant [25 x i8] c"\0A  vertex %d, subtrees :\00", align 1
@.str20 = private unnamed_addr constant [31 x i8] c"\0A    subtree %d, ip(%p)<%d,%p>\00", align 1
@.str21 = private unnamed_addr constant [29 x i8] c"\0A    bnd of adj subtree %d :\00", align 1
@.str22 = private unnamed_addr constant [40 x i8] c"\0A   v->subtrees = %p, msmd->freeIP = %p\00", align 1
@.str23 = private unnamed_addr constant [15 x i8] c"\0A    bnd(%d) :\00", align 1
@.str24 = private unnamed_addr constant [13 x i8] c"\0A %d's bnd :\00", align 1
@.str25 = private unnamed_addr constant [23 x i8] c"\0A   adjacent vertex %d\00", align 1
@.str26 = private unnamed_addr constant [32 x i8] c"\0A   need to get more IP objects\00", align 1
@.str27 = private unnamed_addr constant [80 x i8] c"\0A fatal error in MSMD_eliminateVtx%p,%p,%p)\0A unable to allocate more IP objects\00", align 1
@.str28 = private unnamed_addr constant [20 x i8] c"\0A   old baseIP = %p\00", align 1
@.str29 = private unnamed_addr constant [20 x i8] c"\0A   new baseIP = %p\00", align 1
@.str30 = private unnamed_addr constant [12 x i8] c"\0A   all set\00", align 1
@.str31 = private unnamed_addr constant [18 x i8] c"\0A %d's subtrees :\00", align 1
@.str32 = private unnamed_addr constant [21 x i8] c"\0A    status[%d] = %c\00", align 1
@.str33 = private unnamed_addr constant [19 x i8] c", remove from heap\00", align 1
@.str34 = private unnamed_addr constant [32 x i8] c", add to reach set, nreach = %d\00", align 1
@.str35 = private unnamed_addr constant [59 x i8] c"\0A error in MSMD_eliminateVtx(%p,%p,%p)\0A status[%d] = '%c'\0A\00", align 1
@.str36 = private unnamed_addr constant [18 x i8] c"\0A msmd->nvtx = %d\00", align 1

; Function Attrs: nounwind optsize uwtable
define void @MSMD_eliminateStage(%struct._MSMD* %msmd, %struct._MSMDinfo* %info) #0 {
entry:
  %ierr = alloca i32, align 4
  %cmp = icmp eq %struct._MSMD* %msmd, null
  %cmp1 = icmp eq %struct._MSMDinfo* %info, null
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([56 x i8]* @.str, i64 0, i64 0), %struct._MSMD* %msmd, %struct._MSMDinfo* %info) #5
  call void @exit(i32 -1) #6
  unreachable

if.end:                                           ; preds = %entry
  %istage = getelementptr inbounds %struct._MSMDinfo* %info, i64 0, i32 8
  %1 = load i32* %istage, align 4, !tbaa !3
  %reachIV2 = getelementptr inbounds %struct._MSMD* %msmd, i64 0, i32 7
  call void @IV_setSize(%struct._IV* %reachIV2, i32 0) #5
  %vertices = getelementptr inbounds %struct._MSMD* %msmd, i64 0, i32 5
  %nvtx = getelementptr inbounds %struct._MSMD* %msmd, i64 0, i32 0
  %2 = load i32* %nvtx, align 4, !tbaa !3
  %cmp3273 = icmp sgt i32 %2, 0
  br i1 %cmp3273, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %if.end
  %3 = load %struct._MSMDvtx** %vertices, align 8, !tbaa !0
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %v.0275 = phi %struct._MSMDvtx* [ %3, %for.body.lr.ph ], [ %incdec.ptr, %for.inc ]
  %iv.0274 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc ]
  %status = getelementptr inbounds %struct._MSMDvtx* %v.0275, i64 0, i32 2
  %4 = load i8* %status, align 1, !tbaa !1
  %cmp4 = icmp eq i8 %4, 73
  br i1 %cmp4, label %for.inc, label %if.then6

if.then6:                                         ; preds = %for.body
  %stage7 = getelementptr inbounds %struct._MSMDvtx* %v.0275, i64 0, i32 3
  %5 = load i32* %stage7, align 4, !tbaa !3
  %cmp8 = icmp eq i32 %5, %1
  br i1 %cmp8, label %if.then10, label %if.else

if.then10:                                        ; preds = %if.then6
  %id = getelementptr inbounds %struct._MSMDvtx* %v.0275, i64 0, i32 0
  %6 = load i32* %id, align 4, !tbaa !3
  call void @IV_push(%struct._IV* %reachIV2, i32 %6) #5
  store i8 82, i8* %status, align 1, !tbaa !1
  br label %for.inc

if.else:                                          ; preds = %if.then6
  %cmp13 = icmp sgt i32 %5, %1
  %cmp17 = icmp slt i32 %5, 0
  %or.cond265 = or i1 %cmp13, %cmp17
  br i1 %or.cond265, label %if.then19, label %for.inc

if.then19:                                        ; preds = %if.else
  store i8 66, i8* %status, align 1, !tbaa !1
  br label %for.inc

for.inc:                                          ; preds = %if.else, %for.body, %if.then19, %if.then10
  %inc = add nsw i32 %iv.0274, 1
  %incdec.ptr = getelementptr inbounds %struct._MSMDvtx* %v.0275, i64 1
  %7 = load i32* %nvtx, align 4, !tbaa !3
  %cmp3 = icmp slt i32 %inc, %7
  br i1 %cmp3, label %for.body, label %for.end

for.end:                                          ; preds = %for.inc, %if.end
  %msglvl = getelementptr inbounds %struct._MSMDinfo* %info, i64 0, i32 4
  %8 = load i32* %msglvl, align 4, !tbaa !3
  %cmp24 = icmp sgt i32 %8, 3
  br i1 %cmp24, label %if.then26, label %if.end32

if.then26:                                        ; preds = %for.end
  %msgFile = getelementptr inbounds %struct._MSMDinfo* %info, i64 0, i32 5
  %9 = load %struct._IO_FILE** %msgFile, align 8, !tbaa !0
  %10 = call i64 @fwrite(i8* getelementptr inbounds ([26 x i8]* @.str1, i64 0, i64 0), i64 25, i64 1, %struct._IO_FILE* %9)
  %11 = load %struct._IO_FILE** %msgFile, align 8, !tbaa !0
  %call29 = call i32 @IV_fp80(%struct._IV* %reachIV2, %struct._IO_FILE* %11, i32 80, i32* %ierr) #5
  %12 = load %struct._IO_FILE** %msgFile, align 8, !tbaa !0
  %call31 = call i32 @fflush(%struct._IO_FILE* %12) #5
  br label %if.end32

if.end32:                                         ; preds = %if.then26, %for.end
  %seed = getelementptr inbounds %struct._MSMDinfo* %info, i64 0, i32 3
  %13 = load i32* %seed, align 4, !tbaa !3
  %cmp33 = icmp sgt i32 %13, 0
  br i1 %cmp33, label %if.then35, label %if.end37

if.then35:                                        ; preds = %if.end32
  call void @IV_shuffle(%struct._IV* %reachIV2, i32 %13) #5
  br label %if.end37

if.end37:                                         ; preds = %if.end32, %if.then35
  %14 = load i32* %msglvl, align 4, !tbaa !3
  %cmp39 = icmp sgt i32 %14, 3
  br i1 %cmp39, label %if.then41, label %if.end48

if.then41:                                        ; preds = %if.end37
  %msgFile42 = getelementptr inbounds %struct._MSMDinfo* %info, i64 0, i32 5
  %15 = load %struct._IO_FILE** %msgFile42, align 8, !tbaa !0
  %call43 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %15, i8* getelementptr inbounds ([24 x i8]* @.str2, i64 0, i64 0), i32 %1) #5
  %16 = load %struct._IO_FILE** %msgFile42, align 8, !tbaa !0
  %call45 = call i32 @IV_fp80(%struct._IV* %reachIV2, %struct._IO_FILE* %16, i32 80, i32* %ierr) #5
  %17 = load %struct._IO_FILE** %msgFile42, align 8, !tbaa !0
  %call47 = call i32 @fflush(%struct._IO_FILE* %17) #5
  br label %if.end48

if.end48:                                         ; preds = %if.then41, %if.end37
  call void @MSMD_update(%struct._MSMD* %msmd, %struct._MSMDinfo* %info) #5
  %18 = load i32* %msglvl, align 4, !tbaa !3
  %cmp50 = icmp sgt i32 %18, 4
  %msgFile53 = getelementptr inbounds %struct._MSMDinfo* %info, i64 0, i32 5
  br i1 %cmp50, label %if.then52, label %if.end57

if.then52:                                        ; preds = %if.end48
  %19 = load %struct._IO_FILE** %msgFile53, align 8, !tbaa !0
  %20 = call i64 @fwrite(i8* getelementptr inbounds ([24 x i8]* @.str3, i64 0, i64 0), i64 23, i64 1, %struct._IO_FILE* %19)
  %21 = load %struct._IO_FILE** %msgFile53, align 8, !tbaa !0
  %call56 = call i32 @fflush(%struct._IO_FILE* %21) #5
  br label %if.end57

if.end57:                                         ; preds = %if.end48, %if.then52
  call void @IV_setSize(%struct._IV* %reachIV2, i32 0) #5
  br label %while.body

while.body:                                       ; preds = %if.end57, %if.end159
  %step.0 = phi i32 [ 0, %if.end57 ], [ %inc160, %if.end159 ]
  %22 = load i32* %msglvl, align 4, !tbaa !3
  %cmp59 = icmp sgt i32 %22, 1
  br i1 %cmp59, label %if.then61, label %if.end66

if.then61:                                        ; preds = %while.body
  %23 = load %struct._IO_FILE** %msgFile53, align 8, !tbaa !0
  %call63 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %23, i8* getelementptr inbounds ([39 x i8]* @.str4, i64 0, i64 0), i32 %1, i32 %step.0) #5
  %24 = load %struct._IO_FILE** %msgFile53, align 8, !tbaa !0
  %call65 = call i32 @fflush(%struct._IO_FILE* %24) #5
  br label %if.end66

if.end66:                                         ; preds = %if.then61, %while.body
  %call67 = call i32 @MSMD_eliminateStep(%struct._MSMD* %msmd, %struct._MSMDinfo* %info) #7
  %cmp68 = icmp eq i32 %call67, 0
  %25 = load i32* %msglvl, align 4, !tbaa !3
  br i1 %cmp68, label %while.end, label %if.end71

if.end71:                                         ; preds = %if.end66
  %cmp73 = icmp sgt i32 %25, 3
  br i1 %cmp73, label %if.then75, label %if.end84

if.then75:                                        ; preds = %if.end71
  %26 = load %struct._IO_FILE** %msgFile53, align 8, !tbaa !0
  %27 = call i64 @fwrite(i8* getelementptr inbounds ([31 x i8]* @.str5, i64 0, i64 0), i64 30, i64 1, %struct._IO_FILE* %26)
  %28 = load %struct._IO_FILE** %msgFile53, align 8, !tbaa !0
  %29 = call i64 @fwrite(i8* getelementptr inbounds ([12 x i8]* @.str6, i64 0, i64 0), i64 11, i64 1, %struct._IO_FILE* %28)
  %30 = load %struct._IO_FILE** %msgFile53, align 8, !tbaa !0
  %call81 = call i32 @IV_fp80(%struct._IV* %reachIV2, %struct._IO_FILE* %30, i32 80, i32* %ierr) #5
  %31 = load %struct._IO_FILE** %msgFile53, align 8, !tbaa !0
  %call83 = call i32 @fflush(%struct._IO_FILE* %31) #5
  br label %if.end84

if.end84:                                         ; preds = %if.then75, %if.end71
  call void @MSMD_cleanReachSet(%struct._MSMD* %msmd, %struct._MSMDinfo* %info) #5
  %32 = load i32* %msglvl, align 4, !tbaa !3
  %cmp86 = icmp sgt i32 %32, 3
  br i1 %cmp86, label %if.then88, label %if.end93

if.then88:                                        ; preds = %if.end84
  %33 = load %struct._IO_FILE** %msgFile53, align 8, !tbaa !0
  %34 = call i64 @fwrite(i8* getelementptr inbounds ([35 x i8]* @.str7, i64 0, i64 0), i64 34, i64 1, %struct._IO_FILE* %33)
  %35 = load %struct._IO_FILE** %msgFile53, align 8, !tbaa !0
  %call92 = call i32 @fflush(%struct._IO_FILE* %35) #5
  br label %if.end93

if.end93:                                         ; preds = %if.then88, %if.end84
  call void @MSMD_findInodes(%struct._MSMD* %msmd, %struct._MSMDinfo* %info) #5
  %call94 = call i32 @IV_size(%struct._IV* %reachIV2) #5
  %call95 = call i32* @IV_entries(%struct._IV* %reachIV2) #5
  %cmp97268 = icmp sgt i32 %call94, 0
  br i1 %cmp97268, label %for.body99, label %for.end136

for.body99:                                       ; preds = %if.end93, %for.inc134
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc134 ], [ 0, %if.end93 ]
  %ii.0270 = phi i32 [ %inc135, %for.inc134 ], [ 0, %if.end93 ]
  %jj.0269 = phi i32 [ %jj.1, %for.inc134 ], [ 0, %if.end93 ]
  %arrayidx = getelementptr inbounds i32* %call95, i64 %indvars.iv
  %36 = load i32* %arrayidx, align 4, !tbaa !3
  %cmp100 = icmp slt i32 %36, 0
  br i1 %cmp100, label %if.then108, label %lor.lhs.false102

lor.lhs.false102:                                 ; preds = %for.body99
  %37 = load i32* %nvtx, align 4, !tbaa !3
  %cmp106 = icmp slt i32 %36, %37
  br i1 %cmp106, label %if.end112, label %if.then108

if.then108:                                       ; preds = %lor.lhs.false102, %for.body99
  %38 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call111 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %38, i8* getelementptr inbounds ([55 x i8]* @.str8, i64 0, i64 0), i32 %ii.0270, i32 %36) #5
  call void @exit(i32 -1) #6
  unreachable

if.end112:                                        ; preds = %lor.lhs.false102
  %39 = load %struct._MSMDvtx** %vertices, align 8, !tbaa !0
  %idx.ext = sext i32 %36 to i64
  %status116 = getelementptr inbounds %struct._MSMDvtx* %39, i64 %idx.ext, i32 2
  %40 = load i8* %status116, align 1, !tbaa !1
  %cmp118 = icmp eq i8 %40, 73
  br i1 %cmp118, label %for.inc134, label %if.else121

if.else121:                                       ; preds = %if.end112
  %stage122 = getelementptr inbounds %struct._MSMDvtx* %39, i64 %idx.ext, i32 3
  %41 = load i32* %stage122, align 4, !tbaa !3
  %cmp123 = icmp eq i32 %41, %1
  br i1 %cmp123, label %if.else127, label %if.then125

if.then125:                                       ; preds = %if.else121
  store i8 66, i8* %status116, align 1, !tbaa !1
  br label %for.inc134

if.else127:                                       ; preds = %if.else121
  %id128 = getelementptr inbounds %struct._MSMDvtx* %39, i64 %idx.ext, i32 0
  %42 = load i32* %id128, align 4, !tbaa !3
  %inc129 = add nsw i32 %jj.0269, 1
  %idxprom130 = sext i32 %jj.0269 to i64
  %arrayidx131 = getelementptr inbounds i32* %call95, i64 %idxprom130
  store i32 %42, i32* %arrayidx131, align 4, !tbaa !3
  br label %for.inc134

for.inc134:                                       ; preds = %if.else127, %if.then125, %if.end112
  %jj.1 = phi i32 [ %jj.0269, %if.end112 ], [ %jj.0269, %if.then125 ], [ %inc129, %if.else127 ]
  %indvars.iv.next = add i64 %indvars.iv, 1
  %inc135 = add nsw i32 %ii.0270, 1
  %43 = trunc i64 %indvars.iv.next to i32
  %cmp97 = icmp slt i32 %43, %call94
  br i1 %cmp97, label %for.body99, label %for.end136

for.end136:                                       ; preds = %for.inc134, %if.end93
  %jj.0.lcssa = phi i32 [ 0, %if.end93 ], [ %jj.1, %for.inc134 ]
  call void @IV_setSize(%struct._IV* %reachIV2, i32 %jj.0.lcssa) #5
  %44 = load i32* %msglvl, align 4, !tbaa !3
  %cmp138 = icmp sgt i32 %44, 2
  br i1 %cmp138, label %if.then140, label %if.end150

if.then140:                                       ; preds = %for.end136
  %45 = load %struct._IO_FILE** %msgFile53, align 8, !tbaa !0
  %call142 = call i32 @IV_size(%struct._IV* %reachIV2) #5
  %call143 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %45, i8* getelementptr inbounds ([41 x i8]* @.str9, i64 0, i64 0), i32 %call142) #5
  %46 = load %struct._IO_FILE** %msgFile53, align 8, !tbaa !0
  %47 = call i64 @fwrite(i8* getelementptr inbounds ([10 x i8]* @.str10, i64 0, i64 0), i64 9, i64 1, %struct._IO_FILE* %46)
  %48 = load %struct._IO_FILE** %msgFile53, align 8, !tbaa !0
  %call147 = call i32 @IV_fp80(%struct._IV* %reachIV2, %struct._IO_FILE* %48, i32 8, i32* %ierr) #5
  %49 = load %struct._IO_FILE** %msgFile53, align 8, !tbaa !0
  %call149 = call i32 @fflush(%struct._IO_FILE* %49) #5
  br label %if.end150

if.end150:                                        ; preds = %if.then140, %for.end136
  call void @MSMD_update(%struct._MSMD* %msmd, %struct._MSMDinfo* %info) #5
  %50 = load i32* %msglvl, align 4, !tbaa !3
  %cmp152 = icmp sgt i32 %50, 2
  br i1 %cmp152, label %if.then154, label %if.end159

if.then154:                                       ; preds = %if.end150
  %51 = load %struct._IO_FILE** %msgFile53, align 8, !tbaa !0
  %52 = call i64 @fwrite(i8* getelementptr inbounds ([22 x i8]* @.str11, i64 0, i64 0), i64 21, i64 1, %struct._IO_FILE* %51)
  %53 = load %struct._IO_FILE** %msgFile53, align 8, !tbaa !0
  %call158 = call i32 @fflush(%struct._IO_FILE* %53) #5
  br label %if.end159

if.end159:                                        ; preds = %if.then154, %if.end150
  call void @IV_setSize(%struct._IV* %reachIV2, i32 0) #5
  %inc160 = add nsw i32 %step.0, 1
  br label %while.body

while.end:                                        ; preds = %if.end66
  %cmp162 = icmp sgt i32 %25, 2
  br i1 %cmp162, label %if.then164, label %if.end169

if.then164:                                       ; preds = %while.end
  %54 = load %struct._IO_FILE** %msgFile53, align 8, !tbaa !0
  %call166 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %54, i8* getelementptr inbounds ([26 x i8]* @.str12, i64 0, i64 0), i32 %1, i32 %step.0) #5
  %55 = load %struct._IO_FILE** %msgFile53, align 8, !tbaa !0
  %call168 = call i32 @fflush(%struct._IO_FILE* %55) #5
  br label %if.end169

if.end169:                                        ; preds = %if.then164, %while.end
  %stageInfo = getelementptr inbounds %struct._MSMDinfo* %info, i64 0, i32 10
  %56 = load %struct._MSMDstageInfo** %stageInfo, align 8, !tbaa !0
  %nstep = getelementptr inbounds %struct._MSMDstageInfo* %56, i64 0, i32 0
  store i32 %step.0, i32* %nstep, align 4, !tbaa !3
  ret void
}

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #1

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32) #2

; Function Attrs: optsize
declare void @IV_setSize(%struct._IV*, i32) #3

; Function Attrs: optsize
declare void @IV_push(%struct._IV*, i32) #3

; Function Attrs: optsize
declare i32 @IV_fp80(%struct._IV*, %struct._IO_FILE*, i32, i32*) #3

; Function Attrs: nounwind optsize
declare i32 @fflush(%struct._IO_FILE* nocapture) #1

; Function Attrs: optsize
declare void @IV_shuffle(%struct._IV*, i32) #3

; Function Attrs: optsize
declare void @MSMD_update(%struct._MSMD*, %struct._MSMDinfo*) #3

; Function Attrs: nounwind optsize uwtable
define i32 @MSMD_eliminateStep(%struct._MSMD* %msmd, %struct._MSMDinfo* %info) #0 {
entry:
  %deg = alloca i32, align 4
  %mindeg = alloca i32, align 4
  %vid = alloca i32, align 4
  %cmp = icmp eq %struct._MSMD* %msmd, null
  %cmp1 = icmp eq %struct._MSMDinfo* %info, null
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([51 x i8]* @.str13, i64 0, i64 0), %struct._MSMD* %msmd, %struct._MSMDinfo* %info) #5
  call void @exit(i32 -1) #6
  unreachable

if.end:                                           ; preds = %entry
  %heap = getelementptr inbounds %struct._MSMD* %msmd, i64 0, i32 1
  %1 = load %struct._IIheap** %heap, align 8, !tbaa !0
  %size = getelementptr inbounds %struct._IIheap* %1, i64 0, i32 0
  %2 = load i32* %size, align 4, !tbaa !3
  %cmp2 = icmp eq i32 %2, 0
  br i1 %cmp2, label %return, label %if.end4

if.end4:                                          ; preds = %if.end
  %msglvl = getelementptr inbounds %struct._MSMDinfo* %info, i64 0, i32 4
  %3 = load i32* %msglvl, align 4, !tbaa !3
  %cmp5 = icmp sgt i32 %3, 2
  br i1 %cmp5, label %if.then6, label %if.end4.if.end10_crit_edge

if.end4.if.end10_crit_edge:                       ; preds = %if.end4
  %stageInfo11.pre = getelementptr inbounds %struct._MSMDinfo* %info, i64 0, i32 10
  br label %if.end10

if.then6:                                         ; preds = %if.end4
  %msgFile = getelementptr inbounds %struct._MSMDinfo* %info, i64 0, i32 5
  %4 = load %struct._IO_FILE** %msgFile, align 8, !tbaa !0
  %stageInfo = getelementptr inbounds %struct._MSMDinfo* %info, i64 0, i32 10
  %5 = load %struct._MSMDstageInfo** %stageInfo, align 8, !tbaa !0
  %nstep = getelementptr inbounds %struct._MSMDstageInfo* %5, i64 0, i32 0
  %6 = load i32* %nstep, align 4, !tbaa !3
  %call7 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([10 x i8]* @.str14, i64 0, i64 0), i32 %6) #5
  %7 = load %struct._IO_FILE** %msgFile, align 8, !tbaa !0
  %call9 = call i32 @fflush(%struct._IO_FILE* %7) #5
  %.pre = load %struct._IIheap** %heap, align 8, !tbaa !0
  br label %if.end10

if.end10:                                         ; preds = %if.end4.if.end10_crit_edge, %if.then6
  %stageInfo11.pre-phi = phi %struct._MSMDstageInfo** [ %stageInfo11.pre, %if.end4.if.end10_crit_edge ], [ %stageInfo, %if.then6 ]
  %8 = phi %struct._IIheap* [ %1, %if.end4.if.end10_crit_edge ], [ %.pre, %if.then6 ]
  %9 = load %struct._MSMDstageInfo** %stageInfo11.pre-phi, align 8, !tbaa !0
  %nstep12 = getelementptr inbounds %struct._MSMDstageInfo* %9, i64 0, i32 0
  %10 = load i32* %nstep12, align 4, !tbaa !3
  %inc = add nsw i32 %10, 1
  store i32 %inc, i32* %nstep12, align 4, !tbaa !3
  call void @IIheap_root(%struct._IIheap* %8, i32* %vid, i32* %mindeg) #5
  %stepType = getelementptr inbounds %struct._MSMDinfo* %info, i64 0, i32 2
  %11 = load double* %stepType, align 8, !tbaa !4
  %cmp14 = fcmp ugt double %11, 1.000000e+00
  %12 = load i32* %mindeg, align 4, !tbaa !3
  br i1 %cmp14, label %if.else, label %do.body.preheader

if.else:                                          ; preds = %if.end10
  %conv = sitofp i32 %12 to double
  %mul = fmul double %11, %conv
  %conv17 = fptosi double %mul to i32
  br label %do.body.preheader

do.body.preheader:                                ; preds = %if.else, %if.end10
  %maxdeg.0.ph = phi i32 [ %12, %if.end10 ], [ %conv17, %if.else ]
  %vertices = getelementptr inbounds %struct._MSMD* %msmd, i64 0, i32 5
  %msgFile28 = getelementptr inbounds %struct._MSMDinfo* %info, i64 0, i32 5
  %.pre124 = load %struct._IIheap** %heap, align 8, !tbaa !0
  br label %do.body

do.body:                                          ; preds = %do.body.preheader, %do.cond
  %13 = phi %struct._IIheap* [ %34, %do.cond ], [ %.pre124, %do.body.preheader ]
  %nelim.0 = phi i32 [ %inc37, %do.cond ], [ 0, %do.body.preheader ]
  call void @IIheap_root(%struct._IIheap* %13, i32* %vid, i32* %deg) #5
  %14 = load i32* %deg, align 4, !tbaa !3
  %cmp20 = icmp sgt i32 %14, %maxdeg.0.ph
  br i1 %cmp20, label %return, label %if.end23

if.end23:                                         ; preds = %do.body
  %15 = load %struct._MSMDvtx** %vertices, align 8, !tbaa !0
  %16 = load i32* %vid, align 4, !tbaa !3
  %idx.ext = sext i32 %16 to i64
  %add.ptr = getelementptr inbounds %struct._MSMDvtx* %15, i64 %idx.ext
  %17 = load i32* %msglvl, align 4, !tbaa !3
  %cmp25 = icmp sgt i32 %17, 1
  br i1 %cmp25, label %if.then27, label %if.end23.if.end32_crit_edge

if.end23.if.end32_crit_edge:                      ; preds = %if.end23
  %wght35.pre = getelementptr inbounds %struct._MSMDvtx* %15, i64 %idx.ext, i32 4
  br label %if.end32

if.then27:                                        ; preds = %if.end23
  %18 = load %struct._IO_FILE** %msgFile28, align 8, !tbaa !0
  %wght = getelementptr inbounds %struct._MSMDvtx* %15, i64 %idx.ext, i32 4
  %19 = load i32* %wght, align 4, !tbaa !3
  %call29 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %18, i8* getelementptr inbounds ([46 x i8]* @.str15, i64 0, i64 0), i32 %16, i32 %19, i32 %14) #5
  %20 = load %struct._IO_FILE** %msgFile28, align 8, !tbaa !0
  %call31 = call i32 @fflush(%struct._IO_FILE* %20) #5
  br label %if.end32

if.end32:                                         ; preds = %if.end23.if.end32_crit_edge, %if.then27
  %wght35.pre-phi = phi i32* [ %wght35.pre, %if.end23.if.end32_crit_edge ], [ %wght, %if.then27 ]
  %21 = load %struct._MSMDstageInfo** %stageInfo11.pre-phi, align 8, !tbaa !0
  %nfront = getelementptr inbounds %struct._MSMDstageInfo* %21, i64 0, i32 1
  %22 = load i32* %nfront, align 4, !tbaa !3
  %inc34 = add nsw i32 %22, 1
  store i32 %inc34, i32* %nfront, align 4, !tbaa !3
  %23 = load i32* %wght35.pre-phi, align 4, !tbaa !3
  %welim = getelementptr inbounds %struct._MSMDstageInfo* %21, i64 0, i32 2
  %24 = load i32* %welim, align 4, !tbaa !3
  %add = add nsw i32 %24, %23
  store i32 %add, i32* %welim, align 4, !tbaa !3
  %inc37 = add nsw i32 %nelim.0, 1
  %25 = load %struct._IIheap** %heap, align 8, !tbaa !0
  %26 = load i32* %vid, align 4, !tbaa !3
  call void @IIheap_remove(%struct._IIheap* %25, i32 %26) #5
  call void @MSMD_eliminateVtx(%struct._MSMD* %msmd, %struct._MSMDvtx* %add.ptr, %struct._MSMDinfo* %info) #7
  %27 = load i32* %wght35.pre-phi, align 4, !tbaa !3
  %bndwght = getelementptr inbounds %struct._MSMDvtx* %15, i64 %idx.ext, i32 7
  %28 = load i32* %bndwght, align 4, !tbaa !3
  %add42 = add nsw i32 %28, %27
  %29 = load %struct._MSMDstageInfo** %stageInfo11.pre-phi, align 8, !tbaa !0
  %nfind = getelementptr inbounds %struct._MSMDstageInfo* %29, i64 0, i32 3
  %30 = load i32* %nfind, align 4, !tbaa !3
  %add44 = add nsw i32 %add42, %30
  store i32 %add44, i32* %nfind, align 4, !tbaa !3
  %mul45 = mul nsw i32 %28, %27
  %add46 = add nsw i32 %27, 1
  %mul47 = mul nsw i32 %add46, %27
  %div = sdiv i32 %mul47, 2
  %add48 = add nsw i32 %div, %mul45
  %nzf = getelementptr inbounds %struct._MSMDstageInfo* %29, i64 0, i32 4
  %31 = load i32* %nzf, align 4, !tbaa !3
  %add50 = add nsw i32 %add48, %31
  store i32 %add50, i32* %nzf, align 4, !tbaa !3
  %conv51 = sitofp i32 %27 to double
  %conv52 = sitofp i32 %28 to double
  %mul53 = fmul double %conv51, %conv52
  %add56 = fadd double %conv51, %conv52
  %add57 = fadd double %add56, 1.000000e+00
  %mul58 = fmul double %mul53, %add57
  %conv61 = sitofp i32 %add46 to double
  %mul62 = fmul double %conv51, %conv61
  %mul63 = shl nsw i32 %27, 1
  %add64123 = or i32 %mul63, 1
  %conv65 = sitofp i32 %add64123 to double
  %mul66 = fmul double %mul62, %conv65
  %div67 = fdiv double %mul66, 6.000000e+00
  %add68 = fadd double %mul58, %div67
  %ops = getelementptr inbounds %struct._MSMDstageInfo* %29, i64 0, i32 5
  %32 = load double* %ops, align 8, !tbaa !4
  %add70 = fadd double %add68, %32
  store double %add70, double* %ops, align 8, !tbaa !4
  %33 = load double* %stepType, align 8, !tbaa !4
  %cmp72 = fcmp olt double %33, 1.000000e+00
  br i1 %cmp72, label %return, label %do.cond

do.cond:                                          ; preds = %if.end32
  %34 = load %struct._IIheap** %heap, align 8, !tbaa !0
  %size77 = getelementptr inbounds %struct._IIheap* %34, i64 0, i32 0
  %35 = load i32* %size77, align 4, !tbaa !3
  %cmp78 = icmp sgt i32 %35, 0
  br i1 %cmp78, label %do.body, label %return

return:                                           ; preds = %do.cond, %do.body, %if.end32, %if.end
  %retval.0 = phi i32 [ 0, %if.end ], [ %inc37, %do.cond ], [ %nelim.0, %do.body ], [ %inc37, %if.end32 ]
  ret i32 %retval.0
}

; Function Attrs: optsize
declare void @MSMD_cleanReachSet(%struct._MSMD*, %struct._MSMDinfo*) #3

; Function Attrs: optsize
declare void @MSMD_findInodes(%struct._MSMD*, %struct._MSMDinfo*) #3

; Function Attrs: optsize
declare i32 @IV_size(%struct._IV*) #3

; Function Attrs: optsize
declare i32* @IV_entries(%struct._IV*) #3

; Function Attrs: optsize
declare void @IIheap_root(%struct._IIheap*, i32*, i32*) #3

; Function Attrs: optsize
declare void @IIheap_remove(%struct._IIheap*, i32) #3

; Function Attrs: nounwind optsize uwtable
define void @MSMD_eliminateVtx(%struct._MSMD* %msmd, %struct._MSMDvtx* %v, %struct._MSMDinfo* %info) #0 {
entry:
  %ierr = alloca i32, align 4
  %cmp = icmp eq %struct._MSMD* %msmd, null
  %cmp1 = icmp eq %struct._MSMDvtx* %v, null
  %or.cond = or i1 %cmp, %cmp1
  %cmp3 = icmp eq %struct._MSMDinfo* %info, null
  %or.cond609 = or i1 %or.cond, %cmp3
  br i1 %or.cond609, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([57 x i8]* @.str16, i64 0, i64 0), %struct._MSMD* %msmd, %struct._MSMDvtx* %v, %struct._MSMDinfo* %info) #5
  call void @exit(i32 -1) #6
  unreachable

if.end:                                           ; preds = %entry
  %ivtmpIV = getelementptr inbounds %struct._MSMD* %msmd, i64 0, i32 6
  %call4 = call i32* @IV_entries(%struct._IV* %ivtmpIV) #5
  %reachIV5 = getelementptr inbounds %struct._MSMD* %msmd, i64 0, i32 7
  %mark = getelementptr inbounds %struct._MSMDvtx* %v, i64 0, i32 1
  store i8 88, i8* %mark, align 1, !tbaa !1
  %subtrees = getelementptr inbounds %struct._MSMDvtx* %v, i64 0, i32 9
  %1 = load %struct._IP** %subtrees, align 8, !tbaa !0
  %cmp6 = icmp eq %struct._IP* %1, null
  %msglvl = getelementptr inbounds %struct._MSMDinfo* %info, i64 0, i32 4
  %2 = load i32* %msglvl, align 4, !tbaa !3
  %cmp8 = icmp sgt i32 %2, 3
  br i1 %cmp6, label %if.then7, label %if.else32

if.then7:                                         ; preds = %if.end
  br i1 %cmp8, label %if.then9, label %if.end13

if.then9:                                         ; preds = %if.then7
  %msgFile = getelementptr inbounds %struct._MSMDinfo* %info, i64 0, i32 5
  %3 = load %struct._IO_FILE** %msgFile, align 8, !tbaa !0
  %id = getelementptr inbounds %struct._MSMDvtx* %v, i64 0, i32 0
  %4 = load i32* %id, align 4, !tbaa !3
  %call10 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([22 x i8]* @.str17, i64 0, i64 0), i32 %4) #5
  %5 = load %struct._IO_FILE** %msgFile, align 8, !tbaa !0
  %call12 = call i32 @fflush(%struct._IO_FILE* %5) #5
  br label %if.end13

if.end13:                                         ; preds = %if.then9, %if.then7
  %status = getelementptr inbounds %struct._MSMDvtx* %v, i64 0, i32 2
  store i8 76, i8* %status, align 1, !tbaa !1
  %nadj14 = getelementptr inbounds %struct._MSMDvtx* %v, i64 0, i32 5
  %6 = load i32* %nadj14, align 4, !tbaa !3
  %adj15 = getelementptr inbounds %struct._MSMDvtx* %v, i64 0, i32 6
  %7 = load i32** %adj15, align 8, !tbaa !0
  %sub = add nsw i32 %6, -1
  %cmp16629644 = icmp slt i32 %6, 1
  br i1 %cmp16629644, label %while.end, label %while.body.lr.ph.lr.ph

while.body.lr.ph.lr.ph:                           ; preds = %if.end13
  %vertices = getelementptr inbounds %struct._MSMD* %msmd, i64 0, i32 5
  %8 = sext i32 %6 to i64
  br label %while.body.lr.ph

while.body.lr.ph:                                 ; preds = %while.body.lr.ph.lr.ph, %if.then22
  %indvars.iv660.in = phi i64 [ %8, %while.body.lr.ph.lr.ph ], [ %indvars.iv660, %if.then22 ]
  %i.0.ph646 = phi i32 [ 0, %while.body.lr.ph.lr.ph ], [ %i.0630, %if.then22 ]
  %j.0.ph645 = phi i32 [ %sub, %while.body.lr.ph.lr.ph ], [ %dec, %if.then22 ]
  %indvars.iv660 = add i64 %indvars.iv660.in, -1
  %9 = sext i32 %i.0.ph646 to i64
  br label %while.body

while.body:                                       ; preds = %if.else.while.body_crit_edge, %while.body.lr.ph
  %indvars.iv657 = phi i64 [ %indvars.iv.next658, %if.else.while.body_crit_edge ], [ %9, %while.body.lr.ph ]
  %i.0630 = phi i32 [ %inc, %if.else.while.body_crit_edge ], [ %i.0.ph646, %while.body.lr.ph ]
  %arrayidx = getelementptr inbounds i32* %7, i64 %indvars.iv657
  %10 = load i32* %arrayidx, align 4, !tbaa !3
  %11 = load %struct._MSMDvtx** %vertices, align 8, !tbaa !0
  %idx.ext = sext i32 %10 to i64
  %add.ptr = getelementptr inbounds %struct._MSMDvtx* %11, i64 %idx.ext
  %cmp17 = icmp eq %struct._MSMDvtx* %add.ptr, %v
  br i1 %cmp17, label %if.then22, label %lor.lhs.false18

lor.lhs.false18:                                  ; preds = %while.body
  %status19 = getelementptr inbounds %struct._MSMDvtx* %11, i64 %idx.ext, i32 2
  %12 = load i8* %status19, align 1, !tbaa !1
  %cmp20 = icmp eq i8 %12, 73
  br i1 %cmp20, label %if.then22, label %if.else

if.then22:                                        ; preds = %lor.lhs.false18, %while.body
  %arrayidx24 = getelementptr inbounds i32* %7, i64 %indvars.iv660
  %13 = load i32* %arrayidx24, align 4, !tbaa !3
  store i32 %13, i32* %arrayidx, align 4, !tbaa !3
  store i32 %10, i32* %arrayidx24, align 4, !tbaa !3
  %dec = add nsw i32 %j.0.ph645, -1
  %cmp16629 = icmp sgt i32 %i.0630, %dec
  br i1 %cmp16629, label %while.end, label %while.body.lr.ph

if.else:                                          ; preds = %lor.lhs.false18
  %mark29 = getelementptr inbounds %struct._MSMDvtx* %11, i64 %idx.ext, i32 1
  store i8 88, i8* %mark29, align 1, !tbaa !1
  %14 = trunc i64 %indvars.iv657 to i32
  %15 = trunc i64 %indvars.iv660 to i32
  %cmp16 = icmp slt i32 %14, %15
  br i1 %cmp16, label %if.else.while.body_crit_edge, label %while.end

if.else.while.body_crit_edge:                     ; preds = %if.else
  %inc = add nsw i32 %i.0630, 1
  %indvars.iv.next658 = add i64 %indvars.iv657, 1
  br label %while.body

while.end:                                        ; preds = %if.end13, %if.then22, %if.else
  %j.0.ph643 = phi i32 [ %j.0.ph645, %if.else ], [ %sub, %if.end13 ], [ %dec, %if.then22 ]
  %add = add nsw i32 %j.0.ph643, 1
  store i32 %add, i32* %nadj14, align 4, !tbaa !3
  br label %if.end188

if.else32:                                        ; preds = %if.end
  br i1 %cmp8, label %if.end48, label %if.end48.thread

if.end48.thread:                                  ; preds = %if.else32
  %status49671 = getelementptr inbounds %struct._MSMDvtx* %v, i64 0, i32 2
  store i8 69, i8* %status49671, align 1, !tbaa !1
  br label %while.body54.lr.ph

if.end48:                                         ; preds = %if.else32
  %msgFile37 = getelementptr inbounds %struct._MSMDinfo* %info, i64 0, i32 5
  %16 = load %struct._IO_FILE** %msgFile37, align 8, !tbaa !0
  %id38 = getelementptr inbounds %struct._MSMDvtx* %v, i64 0, i32 0
  %17 = load i32* %id38, align 4, !tbaa !3
  %call39 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %16, i8* getelementptr inbounds ([26 x i8]* @.str18, i64 0, i64 0), i32 %17) #5
  %18 = load %struct._IO_FILE** %msgFile37, align 8, !tbaa !0
  %19 = load i32* %id38, align 4, !tbaa !3
  %call42 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %18, i8* getelementptr inbounds ([25 x i8]* @.str19, i64 0, i64 0), i32 %19) #5
  %20 = load %struct._IO_FILE** %msgFile37, align 8, !tbaa !0
  %21 = load %struct._IP** %subtrees, align 8, !tbaa !0
  %call45 = call i32 @IP_fp80(%struct._IO_FILE* %20, %struct._IP* %21, i32 20) #5
  %22 = load %struct._IO_FILE** %msgFile37, align 8, !tbaa !0
  %call47 = call i32 @fflush(%struct._IO_FILE* %22) #5
  %.pre = load %struct._IP** %subtrees, align 8, !tbaa !0
  %status49 = getelementptr inbounds %struct._MSMDvtx* %v, i64 0, i32 2
  store i8 69, i8* %status49, align 1, !tbaa !1
  %cmp52639 = icmp eq %struct._IP* %.pre, null
  br i1 %cmp52639, label %while.end135, label %while.body54.lr.ph

while.body54.lr.ph:                               ; preds = %if.end48.thread, %if.end48
  %23 = phi %struct._IP* [ %1, %if.end48.thread ], [ %.pre, %if.end48 ]
  %msgFile59 = getelementptr inbounds %struct._MSMDinfo* %info, i64 0, i32 5
  %vertices66 = getelementptr inbounds %struct._MSMD* %msmd, i64 0, i32 5
  %nbytes = getelementptr inbounds %struct._MSMDinfo* %info, i64 0, i32 7
  %freeIP = getelementptr inbounds %struct._MSMD* %msmd, i64 0, i32 4
  br label %while.body54

while.body54:                                     ; preds = %while.cond50.backedge, %while.body54.lr.ph
  %24 = phi %struct._IP* [ %23, %while.body54.lr.ph ], [ %53, %while.cond50.backedge ]
  %nadj.0640 = phi i32 [ 0, %while.body54.lr.ph ], [ %nadj.1.lcssa, %while.cond50.backedge ]
  %25 = load i32* %msglvl, align 4, !tbaa !3
  %cmp56 = icmp sgt i32 %25, 3
  br i1 %cmp56, label %if.then58, label %while.body54.if.end64_crit_edge

while.body54.if.end64_crit_edge:                  ; preds = %while.body54
  %val65.pre = getelementptr inbounds %struct._IP* %24, i64 0, i32 0
  br label %if.end64

if.then58:                                        ; preds = %while.body54
  %26 = load %struct._IO_FILE** %msgFile59, align 8, !tbaa !0
  %val = getelementptr inbounds %struct._IP* %24, i64 0, i32 0
  %27 = load i32* %val, align 4, !tbaa !3
  %next = getelementptr inbounds %struct._IP* %24, i64 0, i32 1
  %28 = load %struct._IP** %next, align 8, !tbaa !0
  %call61 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %26, i8* getelementptr inbounds ([31 x i8]* @.str20, i64 0, i64 0), i32 %27, %struct._IP* %24, i32 %27, %struct._IP* %28) #5
  %29 = load %struct._IO_FILE** %msgFile59, align 8, !tbaa !0
  %call63 = call i32 @fflush(%struct._IO_FILE* %29) #5
  %.pre669 = load i32* %msglvl, align 4, !tbaa !3
  br label %if.end64

if.end64:                                         ; preds = %while.body54.if.end64_crit_edge, %if.then58
  %val65.pre-phi = phi i32* [ %val65.pre, %while.body54.if.end64_crit_edge ], [ %val, %if.then58 ]
  %30 = phi i32 [ %25, %while.body54.if.end64_crit_edge ], [ %.pre669, %if.then58 ]
  %31 = load i32* %val65.pre-phi, align 4, !tbaa !3
  %32 = load %struct._MSMDvtx** %vertices66, align 8, !tbaa !0
  %idx.ext67 = sext i32 %31 to i64
  %par = getelementptr inbounds %struct._MSMDvtx* %32, i64 %idx.ext67, i32 8
  store %struct._MSMDvtx* %v, %struct._MSMDvtx** %par, align 8, !tbaa !0
  %nadj69 = getelementptr inbounds %struct._MSMDvtx* %32, i64 %idx.ext67, i32 5
  %33 = load i32* %nadj69, align 4, !tbaa !3
  %adj70 = getelementptr inbounds %struct._MSMDvtx* %32, i64 %idx.ext67, i32 6
  %34 = load i32** %adj70, align 8, !tbaa !0
  %cmp72 = icmp sgt i32 %30, 3
  br i1 %cmp72, label %if.then74, label %for.cond.preheader

if.then74:                                        ; preds = %if.end64
  %35 = load %struct._IO_FILE** %msgFile59, align 8, !tbaa !0
  %id76 = getelementptr inbounds %struct._MSMDvtx* %32, i64 %idx.ext67, i32 0
  %36 = load i32* %id76, align 4, !tbaa !3
  %call77 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %35, i8* getelementptr inbounds ([29 x i8]* @.str21, i64 0, i64 0), i32 %36) #5
  %37 = load %struct._IO_FILE** %msgFile59, align 8, !tbaa !0
  %call79 = call i32 @IVfp80(%struct._IO_FILE* %37, i32 %33, i32* %34, i32 25, i32* %ierr) #5
  %38 = load %struct._IO_FILE** %msgFile59, align 8, !tbaa !0
  %call81 = call i32 @fflush(%struct._IO_FILE* %38) #5
  br label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.then74, %if.end64
  %cmp83635 = icmp sgt i32 %33, 0
  br i1 %cmp83635, label %for.body, label %for.end

for.body:                                         ; preds = %for.inc, %for.cond.preheader
  %indvars.iv665 = phi i64 [ 0, %for.cond.preheader ], [ %indvars.iv.next666, %for.inc ]
  %nadj.1636 = phi i32 [ %nadj.0640, %for.cond.preheader ], [ %nadj.2, %for.inc ]
  %arrayidx86 = getelementptr inbounds i32* %34, i64 %indvars.iv665
  %39 = load i32* %arrayidx86, align 4, !tbaa !3
  %40 = load %struct._MSMDvtx** %vertices66, align 8, !tbaa !0
  %idx.ext88 = sext i32 %39 to i64
  %mark90 = getelementptr inbounds %struct._MSMDvtx* %40, i64 %idx.ext88, i32 1
  %41 = load i8* %mark90, align 1, !tbaa !1
  %cmp92 = icmp eq i8 %41, 79
  br i1 %cmp92, label %land.lhs.true, label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %status94 = getelementptr inbounds %struct._MSMDvtx* %40, i64 %idx.ext88, i32 2
  %42 = load i8* %status94, align 1, !tbaa !1
  %cmp96 = icmp eq i8 %42, 73
  br i1 %cmp96, label %for.inc, label %if.then98

if.then98:                                        ; preds = %land.lhs.true
  store i8 88, i8* %mark90, align 1, !tbaa !1
  %inc100 = add nsw i32 %nadj.1636, 1
  %idxprom101 = sext i32 %nadj.1636 to i64
  %arrayidx102 = getelementptr inbounds i32* %call4, i64 %idxprom101
  store i32 %39, i32* %arrayidx102, align 4, !tbaa !3
  br label %for.inc

for.inc:                                          ; preds = %land.lhs.true, %for.body, %if.then98
  %nadj.2 = phi i32 [ %inc100, %if.then98 ], [ %nadj.1636, %land.lhs.true ], [ %nadj.1636, %for.body ]
  %indvars.iv.next666 = add i64 %indvars.iv665, 1
  %lftr.wideiv667 = trunc i64 %indvars.iv.next666 to i32
  %exitcond668 = icmp eq i32 %lftr.wideiv667, %33
  br i1 %exitcond668, label %for.end, label %for.body

for.end:                                          ; preds = %for.inc, %for.cond.preheader
  %nadj.1.lcssa = phi i32 [ %nadj.0640, %for.cond.preheader ], [ %nadj.2, %for.inc ]
  %status105 = getelementptr inbounds %struct._MSMDvtx* %32, i64 %idx.ext67, i32 2
  %43 = load i8* %status105, align 1, !tbaa !1
  %cmp107 = icmp eq i8 %43, 69
  br i1 %cmp107, label %if.then109, label %if.end116

if.then109:                                       ; preds = %for.end
  %44 = load i32** %adj70, align 8, !tbaa !0
  call void @IVfree(i32* %44) #5
  %45 = load i32* %nadj69, align 4, !tbaa !3
  %mul = shl i32 %45, 2
  %46 = load i32* %nbytes, align 4, !tbaa !3
  %sub114 = sub i32 %46, %mul
  store i32 %sub114, i32* %nbytes, align 4, !tbaa !3
  br label %if.end116

if.end116:                                        ; preds = %if.then109, %for.end
  store i32* null, i32** %adj70, align 8, !tbaa !0
  store i32 0, i32* %nadj69, align 4, !tbaa !3
  %next119 = getelementptr inbounds %struct._IP* %24, i64 0, i32 1
  %47 = load %struct._IP** %next119, align 8, !tbaa !0
  store %struct._IP* %47, %struct._IP** %subtrees, align 8, !tbaa !0
  store i32 -1, i32* %val65.pre-phi, align 4, !tbaa !3
  %48 = load %struct._IP** %freeIP, align 8, !tbaa !0
  store %struct._IP* %48, %struct._IP** %next119, align 8, !tbaa !0
  store %struct._IP* %24, %struct._IP** %freeIP, align 8, !tbaa !0
  %49 = load i32* %msglvl, align 4, !tbaa !3
  %cmp125 = icmp sgt i32 %49, 3
  br i1 %cmp125, label %if.then127, label %while.cond50.backedge

if.then127:                                       ; preds = %if.end116
  %50 = load %struct._IO_FILE** %msgFile59, align 8, !tbaa !0
  %51 = load %struct._IP** %subtrees, align 8, !tbaa !0
  %call131 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %50, i8* getelementptr inbounds ([40 x i8]* @.str22, i64 0, i64 0), %struct._IP* %51, %struct._IP* %24) #5
  %52 = load %struct._IO_FILE** %msgFile59, align 8, !tbaa !0
  %call133 = call i32 @fflush(%struct._IO_FILE* %52) #5
  br label %while.cond50.backedge

while.cond50.backedge:                            ; preds = %if.then127, %if.end116
  %53 = load %struct._IP** %subtrees, align 8, !tbaa !0
  %cmp52 = icmp eq %struct._IP* %53, null
  br i1 %cmp52, label %while.end135, label %while.body54

while.end135:                                     ; preds = %while.cond50.backedge, %if.end48
  %nadj.0.lcssa = phi i32 [ 0, %if.end48 ], [ %nadj.1.lcssa, %while.cond50.backedge ]
  %nadj136 = getelementptr inbounds %struct._MSMDvtx* %v, i64 0, i32 5
  %54 = load i32* %nadj136, align 4, !tbaa !3
  %adj137 = getelementptr inbounds %struct._MSMDvtx* %v, i64 0, i32 6
  %55 = load i32** %adj137, align 8, !tbaa !0
  %cmp139631 = icmp sgt i32 %54, 0
  br i1 %cmp139631, label %for.body141.lr.ph, label %for.end164

for.body141.lr.ph:                                ; preds = %while.end135
  %vertices144 = getelementptr inbounds %struct._MSMD* %msmd, i64 0, i32 5
  br label %for.body141

for.body141:                                      ; preds = %for.inc162, %for.body141.lr.ph
  %indvars.iv663 = phi i64 [ 0, %for.body141.lr.ph ], [ %indvars.iv.next664, %for.inc162 ]
  %nadj.3632 = phi i32 [ %nadj.0.lcssa, %for.body141.lr.ph ], [ %nadj.4, %for.inc162 ]
  %arrayidx143 = getelementptr inbounds i32* %55, i64 %indvars.iv663
  %56 = load i32* %arrayidx143, align 4, !tbaa !3
  %57 = load %struct._MSMDvtx** %vertices144, align 8, !tbaa !0
  %idx.ext145 = sext i32 %56 to i64
  %mark147 = getelementptr inbounds %struct._MSMDvtx* %57, i64 %idx.ext145, i32 1
  %58 = load i8* %mark147, align 1, !tbaa !1
  %cmp149 = icmp eq i8 %58, 79
  br i1 %cmp149, label %land.lhs.true151, label %for.inc162

land.lhs.true151:                                 ; preds = %for.body141
  %status152 = getelementptr inbounds %struct._MSMDvtx* %57, i64 %idx.ext145, i32 2
  %59 = load i8* %status152, align 1, !tbaa !1
  %cmp154 = icmp eq i8 %59, 73
  br i1 %cmp154, label %for.inc162, label %if.then156

if.then156:                                       ; preds = %land.lhs.true151
  store i8 88, i8* %mark147, align 1, !tbaa !1
  %inc158 = add nsw i32 %nadj.3632, 1
  %idxprom159 = sext i32 %nadj.3632 to i64
  %arrayidx160 = getelementptr inbounds i32* %call4, i64 %idxprom159
  store i32 %56, i32* %arrayidx160, align 4, !tbaa !3
  br label %for.inc162

for.inc162:                                       ; preds = %land.lhs.true151, %for.body141, %if.then156
  %nadj.4 = phi i32 [ %inc158, %if.then156 ], [ %nadj.3632, %land.lhs.true151 ], [ %nadj.3632, %for.body141 ]
  %indvars.iv.next664 = add i64 %indvars.iv663, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next664 to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %54
  br i1 %exitcond, label %for.end164, label %for.body141

for.end164:                                       ; preds = %for.inc162, %while.end135
  %nadj.3.lcssa = phi i32 [ %nadj.0.lcssa, %while.end135 ], [ %nadj.4, %for.inc162 ]
  store i32 %nadj.3.lcssa, i32* %nadj136, align 4, !tbaa !3
  %cmp166 = icmp sgt i32 %nadj.3.lcssa, 0
  br i1 %cmp166, label %if.then168, label %if.else185

if.then168:                                       ; preds = %for.end164
  %call169 = call i32* @IVinit(i32 %nadj.3.lcssa, i32 -1) #5
  store i32* %call169, i32** %adj137, align 8, !tbaa !0
  call void @IVcopy(i32 %nadj.3.lcssa, i32* %call169, i32* %call4) #5
  %mul173 = shl i32 %nadj.3.lcssa, 2
  %nbytes174 = getelementptr inbounds %struct._MSMDinfo* %info, i64 0, i32 7
  %60 = load i32* %nbytes174, align 4, !tbaa !3
  %add176 = add i32 %60, %mul173
  store i32 %add176, i32* %nbytes174, align 4, !tbaa !3
  %maxnbytes = getelementptr inbounds %struct._MSMDinfo* %info, i64 0, i32 6
  %61 = load i32* %maxnbytes, align 4, !tbaa !3
  %cmp179 = icmp slt i32 %61, %add176
  br i1 %cmp179, label %if.then181, label %if.end188

if.then181:                                       ; preds = %if.then168
  store i32 %add176, i32* %maxnbytes, align 4, !tbaa !3
  br label %if.end188

if.else185:                                       ; preds = %for.end164
  store i32* null, i32** %adj137, align 8, !tbaa !0
  br label %if.end188

if.end188:                                        ; preds = %if.else185, %if.then181, %if.then168, %while.end
  %62 = load i32* %msglvl, align 4, !tbaa !3
  %cmp190 = icmp sgt i32 %62, 3
  br i1 %cmp190, label %if.then192, label %if.end207.thread

if.end207.thread:                                 ; preds = %if.end188
  %nadj208610 = getelementptr inbounds %struct._MSMDvtx* %v, i64 0, i32 5
  %63 = load i32* %nadj208610, align 4, !tbaa !3
  %adj209611 = getelementptr inbounds %struct._MSMDvtx* %v, i64 0, i32 6
  %64 = load i32** %adj209611, align 8, !tbaa !0
  br label %for.cond222.preheader

if.then192:                                       ; preds = %if.end188
  %msgFile193 = getelementptr inbounds %struct._MSMDinfo* %info, i64 0, i32 5
  %65 = load %struct._IO_FILE** %msgFile193, align 8, !tbaa !0
  %id194 = getelementptr inbounds %struct._MSMDvtx* %v, i64 0, i32 0
  %66 = load i32* %id194, align 4, !tbaa !3
  %call195 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %65, i8* getelementptr inbounds ([15 x i8]* @.str23, i64 0, i64 0), i32 %66) #5
  %nadj196 = getelementptr inbounds %struct._MSMDvtx* %v, i64 0, i32 5
  %67 = load i32* %nadj196, align 4, !tbaa !3
  %cmp197 = icmp sgt i32 %67, 0
  br i1 %cmp197, label %if.then199, label %if.then192.if.end207_crit_edge

if.then192.if.end207_crit_edge:                   ; preds = %if.then192
  %adj209.pre = getelementptr inbounds %struct._MSMDvtx* %v, i64 0, i32 6
  br label %if.end207

if.then199:                                       ; preds = %if.then192
  %68 = load %struct._IO_FILE** %msgFile193, align 8, !tbaa !0
  %adj202 = getelementptr inbounds %struct._MSMDvtx* %v, i64 0, i32 6
  %69 = load i32** %adj202, align 8, !tbaa !0
  %call203 = call i32 @IVfp80(%struct._IO_FILE* %68, i32 %67, i32* %69, i32 17, i32* %ierr) #5
  br label %if.end207

if.end207:                                        ; preds = %if.then192.if.end207_crit_edge, %if.then199
  %adj209.pre-phi = phi i32** [ %adj209.pre, %if.then192.if.end207_crit_edge ], [ %adj202, %if.then199 ]
  %70 = load %struct._IO_FILE** %msgFile193, align 8, !tbaa !0
  %call206 = call i32 @fflush(%struct._IO_FILE* %70) #5
  %.pr = load i32* %msglvl, align 4, !tbaa !3
  %71 = load i32* %nadj196, align 4, !tbaa !3
  %72 = load i32** %adj209.pre-phi, align 8, !tbaa !0
  %cmp211 = icmp sgt i32 %.pr, 3
  br i1 %cmp211, label %if.then213, label %for.cond222.preheader

if.then213:                                       ; preds = %if.end207
  %73 = load %struct._IO_FILE** %msgFile193, align 8, !tbaa !0
  %74 = load i32* %id194, align 4, !tbaa !3
  %call216 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %73, i8* getelementptr inbounds ([13 x i8]* @.str24, i64 0, i64 0), i32 %74) #5
  %75 = load %struct._IO_FILE** %msgFile193, align 8, !tbaa !0
  %call218 = call i32 @IVfp80(%struct._IO_FILE* %75, i32 %71, i32* %72, i32 12, i32* %ierr) #5
  %76 = load %struct._IO_FILE** %msgFile193, align 8, !tbaa !0
  %call220 = call i32 @fflush(%struct._IO_FILE* %76) #5
  br label %for.cond222.preheader

for.cond222.preheader:                            ; preds = %if.then213, %if.end207, %if.end207.thread
  %.ph = phi i32* [ %64, %if.end207.thread ], [ %72, %if.end207 ], [ %72, %if.then213 ]
  %.ph620 = phi i32 [ %63, %if.end207.thread ], [ %71, %if.end207 ], [ %71, %if.then213 ]
  %cmp223624 = icmp sgt i32 %.ph620, 0
  br i1 %cmp223624, label %for.body225.lr.ph, label %for.end384

for.body225.lr.ph:                                ; preds = %for.cond222.preheader
  %vertices228 = getelementptr inbounds %struct._MSMD* %msmd, i64 0, i32 5
  %msgFile235 = getelementptr inbounds %struct._MSMDinfo* %info, i64 0, i32 5
  %freeIP241 = getelementptr inbounds %struct._MSMD* %msmd, i64 0, i32 4
  %incrIP = getelementptr inbounds %struct._MSMD* %msmd, i64 0, i32 2
  %baseIP = getelementptr inbounds %struct._MSMD* %msmd, i64 0, i32 3
  %nbytes277 = getelementptr inbounds %struct._MSMDinfo* %info, i64 0, i32 7
  %maxnbytes281 = getelementptr inbounds %struct._MSMDinfo* %info, i64 0, i32 6
  %id304 = getelementptr inbounds %struct._MSMDvtx* %v, i64 0, i32 0
  %heap = getelementptr inbounds %struct._MSMD* %msmd, i64 0, i32 1
  br label %for.body225

for.body225:                                      ; preds = %sw.epilog, %for.body225.lr.ph
  %indvars.iv = phi i64 [ 0, %for.body225.lr.ph ], [ %indvars.iv.next, %sw.epilog ]
  %wght.0625 = phi i32 [ 0, %for.body225.lr.ph ], [ %add381, %sw.epilog ]
  %arrayidx227 = getelementptr inbounds i32* %.ph, i64 %indvars.iv
  %77 = load i32* %arrayidx227, align 4, !tbaa !3
  %78 = load %struct._MSMDvtx** %vertices228, align 8, !tbaa !0
  %idx.ext229 = sext i32 %77 to i64
  %add.ptr230 = getelementptr inbounds %struct._MSMDvtx* %78, i64 %idx.ext229
  %79 = load i32* %msglvl, align 4, !tbaa !3
  %cmp232 = icmp sgt i32 %79, 4
  br i1 %cmp232, label %if.then234, label %if.end240

if.then234:                                       ; preds = %for.body225
  %80 = load %struct._IO_FILE** %msgFile235, align 8, !tbaa !0
  %id236 = getelementptr inbounds %struct._MSMDvtx* %add.ptr230, i64 0, i32 0
  %81 = load i32* %id236, align 4, !tbaa !3
  %call237 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %80, i8* getelementptr inbounds ([23 x i8]* @.str25, i64 0, i64 0), i32 %81) #5
  %82 = load %struct._IO_FILE** %msgFile235, align 8, !tbaa !0
  %call239 = call i32 @fflush(%struct._IO_FILE* %82) #5
  br label %if.end240

if.end240:                                        ; preds = %if.then234, %for.body225
  %83 = load %struct._IP** %freeIP241, align 8, !tbaa !0
  %cmp242 = icmp eq %struct._IP* %83, null
  br i1 %cmp242, label %if.then244, label %if.end301

if.then244:                                       ; preds = %if.end240
  %84 = load i32* %msglvl, align 4, !tbaa !3
  %cmp246 = icmp sgt i32 %84, 2
  br i1 %cmp246, label %if.then248, label %if.end253

if.then248:                                       ; preds = %if.then244
  %85 = load %struct._IO_FILE** %msgFile235, align 8, !tbaa !0
  %86 = call i64 @fwrite(i8* getelementptr inbounds ([32 x i8]* @.str26, i64 0, i64 0), i64 31, i64 1, %struct._IO_FILE* %85)
  %87 = load %struct._IO_FILE** %msgFile235, align 8, !tbaa !0
  %call252 = call i32 @fflush(%struct._IO_FILE* %87) #5
  br label %if.end253

if.end253:                                        ; preds = %if.then248, %if.then244
  %88 = load i32* %incrIP, align 4, !tbaa !3
  %call254 = call %struct._IP* @IP_init(i32 %88, i32 1) #5
  %cmp255 = icmp eq %struct._IP* %call254, null
  br i1 %cmp255, label %if.then257, label %if.end259

if.then257:                                       ; preds = %if.end253
  %89 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call258 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %89, i8* getelementptr inbounds ([80 x i8]* @.str27, i64 0, i64 0), %struct._MSMD* %msmd, %struct._MSMDvtx* %v, %struct._MSMDinfo* %info) #5
  call void @exit(i32 -1) #6
  unreachable

if.end259:                                        ; preds = %if.end253
  %90 = load i32* %msglvl, align 4, !tbaa !3
  %cmp261 = icmp sgt i32 %90, 4
  br i1 %cmp261, label %if.then263, label %if.end270

if.then263:                                       ; preds = %if.end259
  %91 = load %struct._IO_FILE** %msgFile235, align 8, !tbaa !0
  %92 = load %struct._IP** %baseIP, align 8, !tbaa !0
  %call265 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %91, i8* getelementptr inbounds ([20 x i8]* @.str28, i64 0, i64 0), %struct._IP* %92) #5
  %93 = load %struct._IO_FILE** %msgFile235, align 8, !tbaa !0
  %call267 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %93, i8* getelementptr inbounds ([20 x i8]* @.str29, i64 0, i64 0), %struct._IP* %call254) #5
  %94 = load %struct._IO_FILE** %msgFile235, align 8, !tbaa !0
  %call269 = call i32 @fflush(%struct._IO_FILE* %94) #5
  br label %if.end270

if.end270:                                        ; preds = %if.then263, %if.end259
  %95 = load %struct._IP** %baseIP, align 8, !tbaa !0
  %next272 = getelementptr inbounds %struct._IP* %call254, i64 0, i32 1
  store %struct._IP* %95, %struct._IP** %next272, align 8, !tbaa !0
  store %struct._IP* %call254, %struct._IP** %baseIP, align 8, !tbaa !0
  %96 = load i32* %incrIP, align 4, !tbaa !3
  %mul276 = shl i32 %96, 4
  %97 = load i32* %nbytes277, align 4, !tbaa !3
  %add279 = add i32 %97, %mul276
  store i32 %add279, i32* %nbytes277, align 4, !tbaa !3
  %98 = load i32* %maxnbytes281, align 4, !tbaa !3
  %cmp283 = icmp slt i32 %98, %add279
  br i1 %cmp283, label %if.then285, label %if.end288

if.then285:                                       ; preds = %if.end270
  store i32 %add279, i32* %maxnbytes281, align 4, !tbaa !3
  br label %if.end288

if.end288:                                        ; preds = %if.end270, %if.then285
  %add.ptr290 = getelementptr inbounds %struct._IP* %call254, i64 1
  store %struct._IP* %add.ptr290, %struct._IP** %freeIP241, align 8, !tbaa !0
  %99 = load i32* %msglvl, align 4, !tbaa !3
  %cmp293 = icmp sgt i32 %99, 2
  br i1 %cmp293, label %if.then295, label %if.end301

if.then295:                                       ; preds = %if.end288
  %100 = load %struct._IO_FILE** %msgFile235, align 8, !tbaa !0
  %101 = call i64 @fwrite(i8* getelementptr inbounds ([12 x i8]* @.str30, i64 0, i64 0), i64 11, i64 1, %struct._IO_FILE* %100)
  %102 = load %struct._IO_FILE** %msgFile235, align 8, !tbaa !0
  %call299 = call i32 @fflush(%struct._IO_FILE* %102) #5
  br label %if.end301

if.end301:                                        ; preds = %if.end288, %if.then295, %if.end240
  %ip.0 = phi %struct._IP* [ %add.ptr290, %if.then295 ], [ %add.ptr290, %if.end288 ], [ %83, %if.end240 ]
  %next302 = getelementptr inbounds %struct._IP* %ip.0, i64 0, i32 1
  %103 = load %struct._IP** %next302, align 8, !tbaa !0
  store %struct._IP* %103, %struct._IP** %freeIP241, align 8, !tbaa !0
  %104 = load i32* %id304, align 4, !tbaa !3
  %val305 = getelementptr inbounds %struct._IP* %ip.0, i64 0, i32 0
  store i32 %104, i32* %val305, align 4, !tbaa !3
  store %struct._IP* null, %struct._IP** %next302, align 8, !tbaa !0
  %subtrees307 = getelementptr inbounds %struct._MSMDvtx* %78, i64 %idx.ext229, i32 9
  %ip2.0615 = load %struct._IP** %subtrees307, align 8
  %cmp309616 = icmp eq %struct._IP* %ip2.0615, null
  br i1 %cmp309616, label %if.then321, label %land.rhs

for.cond308:                                      ; preds = %land.rhs
  %next317 = getelementptr inbounds %struct._IP* %ip2.0618, i64 0, i32 1
  %ip2.0 = load %struct._IP** %next317, align 8
  %cmp309 = icmp eq %struct._IP* %ip2.0, null
  br i1 %cmp309, label %for.end318, label %land.rhs

land.rhs:                                         ; preds = %if.end301, %for.cond308
  %ip2.0618 = phi %struct._IP* [ %ip2.0, %for.cond308 ], [ %ip2.0615, %if.end301 ]
  %prev.0617 = phi %struct._IP* [ %ip2.0618, %for.cond308 ], [ null, %if.end301 ]
  %val311 = getelementptr inbounds %struct._IP* %ip2.0618, i64 0, i32 0
  %105 = load i32* %val311, align 4, !tbaa !3
  %cmp313 = icmp sgt i32 %105, %104
  br i1 %cmp313, label %for.cond308, label %for.end318

for.end318:                                       ; preds = %for.cond308, %land.rhs
  %ip2.0.lcssa = phi %struct._IP* [ %ip2.0618, %land.rhs ], [ null, %for.cond308 ]
  %prev.0.lcssa = phi %struct._IP* [ %prev.0617, %land.rhs ], [ %ip2.0618, %for.cond308 ]
  %cmp319 = icmp eq %struct._IP* %prev.0.lcssa, null
  br i1 %cmp319, label %if.then321, label %if.else323

if.then321:                                       ; preds = %if.end301, %for.end318
  %ip2.0.lcssa675 = phi %struct._IP* [ %ip2.0.lcssa, %for.end318 ], [ null, %if.end301 ]
  store %struct._IP* %ip.0, %struct._IP** %subtrees307, align 8, !tbaa !0
  br label %if.end325

if.else323:                                       ; preds = %for.end318
  %next324 = getelementptr inbounds %struct._IP* %prev.0.lcssa, i64 0, i32 1
  store %struct._IP* %ip.0, %struct._IP** %next324, align 8, !tbaa !0
  br label %if.end325

if.end325:                                        ; preds = %if.else323, %if.then321
  %ip2.0.lcssa674 = phi %struct._IP* [ %ip2.0.lcssa, %if.else323 ], [ %ip2.0.lcssa675, %if.then321 ]
  store %struct._IP* %ip2.0.lcssa674, %struct._IP** %next302, align 8, !tbaa !0
  %106 = load i32* %msglvl, align 4, !tbaa !3
  %cmp328 = icmp sgt i32 %106, 3
  br i1 %cmp328, label %if.end339, label %if.end350

if.end339:                                        ; preds = %if.end325
  %107 = load %struct._IO_FILE** %msgFile235, align 8, !tbaa !0
  %id332 = getelementptr inbounds %struct._MSMDvtx* %add.ptr230, i64 0, i32 0
  %108 = load i32* %id332, align 4, !tbaa !3
  %call333 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %107, i8* getelementptr inbounds ([18 x i8]* @.str31, i64 0, i64 0), i32 %108) #5
  %109 = load %struct._IO_FILE** %msgFile235, align 8, !tbaa !0
  %110 = load %struct._IP** %subtrees307, align 8, !tbaa !0
  %call336 = call i32 @IP_fp80(%struct._IO_FILE* %109, %struct._IP* %110, i32 15) #5
  %111 = load %struct._IO_FILE** %msgFile235, align 8, !tbaa !0
  %call338 = call i32 @fflush(%struct._IO_FILE* %111) #5
  %.pr613 = load i32* %msglvl, align 4, !tbaa !3
  %cmp341 = icmp sgt i32 %.pr613, 4
  br i1 %cmp341, label %if.then343, label %if.end350

if.then343:                                       ; preds = %if.end339
  %112 = load %struct._IO_FILE** %msgFile235, align 8, !tbaa !0
  %status345 = getelementptr inbounds %struct._MSMDvtx* %78, i64 %idx.ext229, i32 2
  %113 = load i8* %status345, align 1, !tbaa !1
  %conv346 = sext i8 %113 to i32
  %call347 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %112, i8* getelementptr inbounds ([21 x i8]* @.str32, i64 0, i64 0), i32 %77, i32 %conv346) #5
  %114 = load %struct._IO_FILE** %msgFile235, align 8, !tbaa !0
  %call349 = call i32 @fflush(%struct._IO_FILE* %114) #5
  br label %if.end350

if.end350:                                        ; preds = %if.end325, %if.then343, %if.end339
  %status351 = getelementptr inbounds %struct._MSMDvtx* %78, i64 %idx.ext229, i32 2
  %115 = load i8* %status351, align 1, !tbaa !1
  %conv352 = sext i8 %115 to i32
  switch i32 %conv352, label %sw.default [
    i32 68, label %sw.bb
    i32 79, label %sw.bb362
    i32 66, label %sw.bb362
    i32 82, label %sw.epilog
    i32 73, label %sw.epilog
  ]

sw.bb:                                            ; preds = %if.end350
  %116 = load i32* %msglvl, align 4, !tbaa !3
  %cmp354 = icmp sgt i32 %116, 4
  br i1 %cmp354, label %if.then356, label %if.end361

if.then356:                                       ; preds = %sw.bb
  %117 = load %struct._IO_FILE** %msgFile235, align 8, !tbaa !0
  %118 = call i64 @fwrite(i8* getelementptr inbounds ([19 x i8]* @.str33, i64 0, i64 0), i64 18, i64 1, %struct._IO_FILE* %117)
  %119 = load %struct._IO_FILE** %msgFile235, align 8, !tbaa !0
  %call360 = call i32 @fflush(%struct._IO_FILE* %119) #5
  br label %if.end361

if.end361:                                        ; preds = %if.then356, %sw.bb
  %120 = load %struct._IIheap** %heap, align 8, !tbaa !0
  call void @IIheap_remove(%struct._IIheap* %120, i32 %77) #5
  br label %sw.bb362

sw.bb362:                                         ; preds = %if.end350, %if.end350, %if.end361
  %121 = load i32* %msglvl, align 4, !tbaa !3
  %cmp364 = icmp sgt i32 %121, 4
  br i1 %cmp364, label %if.then366, label %if.end373

if.then366:                                       ; preds = %sw.bb362
  %122 = load %struct._IO_FILE** %msgFile235, align 8, !tbaa !0
  %call368 = call i32 @IV_size(%struct._IV* %reachIV5) #5
  %add369 = add nsw i32 %call368, 1
  %call370 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %122, i8* getelementptr inbounds ([32 x i8]* @.str34, i64 0, i64 0), i32 %add369) #5
  %123 = load %struct._IO_FILE** %msgFile235, align 8, !tbaa !0
  %call372 = call i32 @fflush(%struct._IO_FILE* %123) #5
  br label %if.end373

if.end373:                                        ; preds = %if.then366, %sw.bb362
  call void @IV_push(%struct._IV* %reachIV5, i32 %77) #5
  store i8 82, i8* %status351, align 1, !tbaa !1
  br label %sw.epilog

sw.default:                                       ; preds = %if.end350
  %124 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call377 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %124, i8* getelementptr inbounds ([59 x i8]* @.str35, i64 0, i64 0), %struct._MSMD* %msmd, %struct._MSMDvtx* %v, %struct._MSMDinfo* %info, i32 %77, i32 %conv352) #5
  %125 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %nvtx = getelementptr inbounds %struct._MSMD* %msmd, i64 0, i32 0
  %126 = load i32* %nvtx, align 4, !tbaa !3
  %call378 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %125, i8* getelementptr inbounds ([18 x i8]* @.str36, i64 0, i64 0), i32 %126) #5
  call void @exit(i32 -1) #6
  unreachable

sw.epilog:                                        ; preds = %if.end350, %if.end373, %if.end350
  %mark379 = getelementptr inbounds %struct._MSMDvtx* %78, i64 %idx.ext229, i32 1
  store i8 79, i8* %mark379, align 1, !tbaa !1
  %wght380 = getelementptr inbounds %struct._MSMDvtx* %78, i64 %idx.ext229, i32 4
  %127 = load i32* %wght380, align 4, !tbaa !3
  %add381 = add nsw i32 %127, %wght.0625
  %indvars.iv.next = add i64 %indvars.iv, 1
  %128 = trunc i64 %indvars.iv.next to i32
  %cmp223 = icmp slt i32 %128, %.ph620
  br i1 %cmp223, label %for.body225, label %for.end384

for.end384:                                       ; preds = %sw.epilog, %for.cond222.preheader
  %wght.0.lcssa = phi i32 [ 0, %for.cond222.preheader ], [ %add381, %sw.epilog ]
  store i8 79, i8* %mark, align 1, !tbaa !1
  %bndwght = getelementptr inbounds %struct._MSMDvtx* %v, i64 0, i32 7
  store i32 %wght.0.lcssa, i32* %bndwght, align 4, !tbaa !3
  ret void
}

; Function Attrs: optsize
declare i32 @IP_fp80(%struct._IO_FILE*, %struct._IP*, i32) #3

; Function Attrs: optsize
declare i32 @IVfp80(%struct._IO_FILE*, i32, i32*, i32, i32*) #3

; Function Attrs: optsize
declare void @IVfree(i32*) #3

; Function Attrs: optsize
declare i32* @IVinit(i32, i32) #3

; Function Attrs: optsize
declare void @IVcopy(i32, i32*, i32*) #3

; Function Attrs: optsize
declare %struct._IP* @IP_init(i32, i32) #3

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
!4 = metadata !{metadata !"double", metadata !1}
