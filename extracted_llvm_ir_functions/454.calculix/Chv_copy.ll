; ModuleID = '../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_copy.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct._Chv = type { i32, i32, i32, i32, i32, i32, i32*, i32*, double*, %struct._DV, %struct._Chv* }
%struct._DV = type { i32, i32, i32, double* }

@stderr = external global %struct._IO_FILE*
@.str = private unnamed_addr constant [70 x i8] c"\0A fatal error in Chv_copyEntriesToVector(%p,%d,%p,,%d,%d)\0A bad input\0A\00", align 1
@.str1 = private unnamed_addr constant [494 x i8] c"\0A fatal error in Chv_copyEntriesToVector(%p,%d,%p,%d,%d)\0A bad input\0A\0A copyflag = %d, must be\0A\0A CHV_STRICT_LOWER    --> copy strict lower entries\0A CHV_DIAGONAL        --> copy diagonal entries\0A CHV_STRICT_UPPER    --> copy strict upper entries\0A CHV_STRICT_LOWER_11 --> copy strict lower entries in (1,1) block\0A CHV_LOWER_21        --> copy lower entries in (2,1) block\0A CHV_STRICT_UPPER_11 --> copy strict upper entries in (1,1) block\0A CHV_UPPER_12        --> copy upper entries in (1,2) block\0A\00", align 1
@.str2 = private unnamed_addr constant [167 x i8] c"\0A fatal error in Chv_copyEntriesToVector(%p,%d,%p,%d,%d)\0A bad input\0A\0A storeflag = %d, must be\0A\0A CHV_BY_ROWS    --> store by rows\0A CHV_BY_COLUMNS --> store by columns\0A\00", align 1
@.str3 = private unnamed_addr constant [86 x i8] c"\0A fatal error in Chv_copyEntriesToVector(%p,%d,%p,%d,%d)\0A symflag = %d, copyflag = %d\00", align 1
@.str4 = private unnamed_addr constant [88 x i8] c"\0A fatal error in Chv_copyEntriesToVector(%p,%d,%p,%d,%d)\0A nent = %d, buffer length = %d\00", align 1
@.str5 = private unnamed_addr constant [94 x i8] c"\0A fatal error in Chv_copyBigEntriesToVector()\0A chv %p, sizes %p, ivec %p, dvec %p\0A bad input\0A\00", align 1
@.str6 = private unnamed_addr constant [356 x i8] c"\0A fatal error in Chv_copyBigEntriesToVector(%p,%p,%p,%p,%d,%d)\0A bad input\0A\0A copyflag = %d, must be\0A\0A    1 --> strictly lower entries\0A    3 --> strictly upper entries\0A    4 --> copy strict lower entries in (1,1) block\0A    5 --> copy lower entries in (2,1) block\0A    6 --> copy strict upper entries in (1,1) block\0A    7 --> copy upper entries in (1,2) block\00", align 1
@.str7 = private unnamed_addr constant [152 x i8] c"\0A fatal error in Chv_copyBigEntriesToVector(%p,%p,%p,%p,%d,%d)\0A bad input\0A\0A storeflag = %d, must be\0A\0A    0 --> store by rows\0A    1 --> store by columns\00", align 1
@.str8 = private unnamed_addr constant [59 x i8] c"\0A fatal error in Chv_countEntries(%p,%d,%p,%d)\0A bad input\0A\00", align 1
@.str9 = private unnamed_addr constant [352 x i8] c"\0A fatal error in Chv_countEntries(%p,%d,%p,%d)\0A bad input\0A\0A countflag = %d, must be\0A\0A    1 --> strictly lower entries\0A    2 --> diagonal entries\0A    3 --> strictly upper entries\0A    4 --> strictly lower entries in (1,1) block\0A    5 --> lower entries in (2,1) block\0A    6 --> strictly upper entries in (1,1) block\0A    7 --> upper entries in (1,2) block\00", align 1
@.str10 = private unnamed_addr constant [106 x i8] c"\0A fatal error in Chv_countEntries(%p,%d,%p,%d)\0A countflag = %d --> lower entries but chevron is symmetric\00", align 1
@.str11 = private unnamed_addr constant [65 x i8] c"\0A fatal error in Chv_countBigEntries(%p,%d,%p,%d,%f)\0A bad input\0A\00", align 1
@.str12 = private unnamed_addr constant [351 x i8] c"\0A fatal error in Chv_countBigEntries(%p,%d,%p,%d,%f)\0A bad input\0A\0A countflag = %d, must be\0A\0A    1 --> strictly lower entries\0A    3 --> strictly upper entries\0A    4 --> count strict lower entries in (1,1) block\0A    5 --> count lower entries in (2,1) block\0A    6 --> count strict upper entries in (1,1) block\0A    7 --> count upper entries in (1,2) block\00", align 1
@.str13 = private unnamed_addr constant [112 x i8] c"\0A fatal error in Chv_countBigEntries(%p,%d,%p,%d,%f)\0A countflag = %d --> lower entries but chevron is symmetric\00", align 1
@.str14 = private unnamed_addr constant [63 x i8] c"\0A fatal error in Chv_copyTrailingPortion(%p,%p,%d)\0A bad input\0A\00", align 1
@.str15 = private unnamed_addr constant [75 x i8] c"\0A fatal error in Chv_copyTrailingPortion(%p,%p,%d)\0A nDJ = %d, offset = %d\0A\00", align 1

; Function Attrs: nounwind optsize uwtable
define i32 @Chv_copyEntriesToVector(%struct._Chv* %chv, i32 %npivot, i32* %pivotsizes, i32 %length, double* %dvec, i32 %copyflag, i32 %storeflag) #0 {
entry:
  %cmp = icmp eq %struct._Chv* %chv, null
  %cmp1 = icmp slt i32 %length, 0
  %or.cond = or i1 %cmp, %cmp1
  %cmp3 = icmp eq double* %dvec, null
  %or.cond3395 = or i1 %or.cond, %cmp3
  br i1 %or.cond3395, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([70 x i8]* @.str, i64 0, i64 0), %struct._Chv* %chv, i32 %length, double* %dvec, i32 %copyflag, i32 %storeflag) #5
  tail call void @exit(i32 -1) #6
  unreachable

if.end:                                           ; preds = %entry
  %.off = add i32 %copyflag, -1
  %switch = icmp ult i32 %.off, 7
  br i1 %switch, label %sw.epilog, label %sw.default

sw.default:                                       ; preds = %if.end
  %1 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call4 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([494 x i8]* @.str1, i64 0, i64 0), %struct._Chv* %chv, i32 %length, double* %dvec, i32 %copyflag, i32 %storeflag, i32 %copyflag) #5
  tail call void @exit(i32 -1) #6
  unreachable

sw.epilog:                                        ; preds = %if.end
  %switch2124 = icmp ult i32 %storeflag, 2
  br i1 %switch2124, label %sw.epilog8, label %sw.default6

sw.default6:                                      ; preds = %sw.epilog
  %2 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call7 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([167 x i8]* @.str2, i64 0, i64 0), %struct._Chv* %chv, i32 %length, double* %dvec, i32 %copyflag, i32 %storeflag, i32 %storeflag) #5
  tail call void @exit(i32 -1) #6
  unreachable

sw.epilog8:                                       ; preds = %sw.epilog
  %nD9 = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 1
  %3 = load i32* %nD9, align 4, !tbaa !3
  %nL10 = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 2
  %4 = load i32* %nL10, align 4, !tbaa !3
  %nU11 = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 3
  %5 = load i32* %nU11, align 4, !tbaa !3
  %symflag12 = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 5
  %6 = load i32* %symflag12, align 4, !tbaa !3
  %add = add i32 %4, %3
  %add13 = add i32 %5, %3
  switch i32 %copyflag, label %if.end112 [
    i32 1, label %sw.bb14
    i32 2, label %sw.bb25
    i32 3, label %sw.bb36
    i32 4, label %sw.bb60
    i32 5, label %sw.bb72
    i32 6, label %sw.bb82
    i32 7, label %sw.bb105
  ]

sw.bb14:                                          ; preds = %sw.epilog8
  %switch3396 = icmp ult i32 %6, 2
  br i1 %switch3396, label %if.then20, label %if.end22

if.then20:                                        ; preds = %sw.bb14
  %7 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call21 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %7, i8* getelementptr inbounds ([86 x i8]* @.str3, i64 0, i64 0), %struct._Chv* %chv, i32 %length, double* %dvec, i32 1, i32 %storeflag, i32 %6, i32 1) #5
  tail call void @exit(i32 -1) #6
  unreachable

if.end22:                                         ; preds = %sw.bb14
  %sub = add nsw i32 %3, -1
  %mul = mul nsw i32 %sub, %3
  %div = sdiv i32 %mul, 2
  %mul23 = mul nsw i32 %4, %3
  %add24 = add nsw i32 %div, %mul23
  br label %sw.epilog108

sw.bb25:                                          ; preds = %sw.epilog8
  %cmp26 = icmp eq i32* %pivotsizes, null
  br i1 %cmp26, label %sw.epilog108, label %for.cond.preheader

for.cond.preheader:                               ; preds = %sw.bb25
  %cmp284105 = icmp sgt i32 %npivot, 0
  br i1 %cmp284105, label %for.body, label %sw.epilog108

for.body:                                         ; preds = %for.cond.preheader, %for.body
  %indvars.iv4615 = phi i64 [ %indvars.iv.next4616, %for.body ], [ 0, %for.cond.preheader ]
  %nent.04107 = phi i32 [ %add34, %for.body ], [ 0, %for.cond.preheader ]
  %arrayidx = getelementptr inbounds i32* %pivotsizes, i64 %indvars.iv4615
  %8 = load i32* %arrayidx, align 4, !tbaa !3
  %add31 = add nsw i32 %8, 1
  %mul32 = mul nsw i32 %add31, %8
  %div33 = sdiv i32 %mul32, 2
  %add34 = add nsw i32 %div33, %nent.04107
  %indvars.iv.next4616 = add i64 %indvars.iv4615, 1
  %lftr.wideiv4617 = trunc i64 %indvars.iv.next4616 to i32
  %exitcond4618 = icmp eq i32 %lftr.wideiv4617, %npivot
  br i1 %exitcond4618, label %sw.epilog108, label %for.body

sw.bb36:                                          ; preds = %sw.epilog8
  %cmp37 = icmp eq i32* %pivotsizes, null
  br i1 %cmp37, label %if.then38, label %for.cond46.preheader

for.cond46.preheader:                             ; preds = %sw.bb36
  %cmp474110 = icmp sgt i32 %npivot, 0
  br i1 %cmp474110, label %for.body48, label %sw.epilog108

if.then38:                                        ; preds = %sw.bb36
  %sub39 = add nsw i32 %3, -1
  %mul40 = mul nsw i32 %sub39, %3
  %div41 = sdiv i32 %mul40, 2
  %mul42 = mul nsw i32 %5, %3
  %add43 = add nsw i32 %div41, %mul42
  br label %sw.epilog108

for.body48:                                       ; preds = %for.cond46.preheader, %for.body48
  %indvars.iv4619 = phi i64 [ %indvars.iv.next4620, %for.body48 ], [ 0, %for.cond46.preheader ]
  %nent.14113 = phi i32 [ %add52, %for.body48 ], [ 0, %for.cond46.preheader ]
  %first.04112 = phi i32 [ %add55, %for.body48 ], [ 0, %for.cond46.preheader ]
  %arrayidx50 = getelementptr inbounds i32* %pivotsizes, i64 %indvars.iv4619
  %9 = load i32* %arrayidx50, align 4, !tbaa !3
  %mul51 = mul nsw i32 %9, %first.04112
  %add52 = add nsw i32 %mul51, %nent.14113
  %add55 = add nsw i32 %9, %first.04112
  %indvars.iv.next4620 = add i64 %indvars.iv4619, 1
  %lftr.wideiv4621 = trunc i64 %indvars.iv.next4620 to i32
  %exitcond4622 = icmp eq i32 %lftr.wideiv4621, %npivot
  br i1 %exitcond4622, label %sw.epilog108, label %for.body48

sw.bb60:                                          ; preds = %sw.epilog8
  %switch3397 = icmp ult i32 %6, 2
  br i1 %switch3397, label %if.then66, label %if.end68

if.then66:                                        ; preds = %sw.bb60
  %10 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call67 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %10, i8* getelementptr inbounds ([86 x i8]* @.str3, i64 0, i64 0), %struct._Chv* %chv, i32 %length, double* %dvec, i32 4, i32 %storeflag, i32 %6, i32 4) #5
  tail call void @exit(i32 -1) #6
  unreachable

if.end68:                                         ; preds = %sw.bb60
  %sub69 = add nsw i32 %3, -1
  %mul70 = mul nsw i32 %sub69, %3
  %div71 = sdiv i32 %mul70, 2
  br label %sw.epilog108

sw.bb72:                                          ; preds = %sw.epilog8
  %switch3398 = icmp ult i32 %6, 2
  br i1 %switch3398, label %if.then78, label %if.end80

if.then78:                                        ; preds = %sw.bb72
  %11 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call79 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %11, i8* getelementptr inbounds ([86 x i8]* @.str3, i64 0, i64 0), %struct._Chv* %chv, i32 %length, double* %dvec, i32 5, i32 %storeflag, i32 %6, i32 5) #5
  tail call void @exit(i32 -1) #6
  unreachable

if.end80:                                         ; preds = %sw.bb72
  %mul81 = mul nsw i32 %4, %3
  br label %sw.epilog108

sw.bb82:                                          ; preds = %sw.epilog8
  %cmp83 = icmp eq i32* %pivotsizes, null
  br i1 %cmp83, label %if.then84, label %for.cond91.preheader

for.cond91.preheader:                             ; preds = %sw.bb82
  %cmp924116 = icmp sgt i32 %npivot, 0
  br i1 %cmp924116, label %for.body93, label %sw.epilog108

if.then84:                                        ; preds = %sw.bb82
  %sub85 = add nsw i32 %3, -1
  %mul86 = mul nsw i32 %sub85, %3
  %div87 = sdiv i32 %mul86, 2
  br label %sw.epilog108

for.body93:                                       ; preds = %for.cond91.preheader, %for.body93
  %indvars.iv4623 = phi i64 [ %indvars.iv.next4624, %for.body93 ], [ 0, %for.cond91.preheader ]
  %nent.24119 = phi i32 [ %add97, %for.body93 ], [ 0, %for.cond91.preheader ]
  %first89.04118 = phi i32 [ %add100, %for.body93 ], [ 0, %for.cond91.preheader ]
  %arrayidx95 = getelementptr inbounds i32* %pivotsizes, i64 %indvars.iv4623
  %12 = load i32* %arrayidx95, align 4, !tbaa !3
  %mul96 = mul nsw i32 %12, %first89.04118
  %add97 = add nsw i32 %mul96, %nent.24119
  %add100 = add nsw i32 %12, %first89.04118
  %indvars.iv.next4624 = add i64 %indvars.iv4623, 1
  %lftr.wideiv4625 = trunc i64 %indvars.iv.next4624 to i32
  %exitcond4626 = icmp eq i32 %lftr.wideiv4625, %npivot
  br i1 %exitcond4626, label %sw.epilog108, label %for.body93

sw.bb105:                                         ; preds = %sw.epilog8
  %mul106 = mul nsw i32 %5, %3
  br label %sw.epilog108

sw.epilog108:                                     ; preds = %for.cond91.preheader, %for.body93, %for.cond46.preheader, %for.body48, %for.cond.preheader, %for.body, %sw.bb25, %if.then84, %if.then38, %sw.bb105, %if.end80, %if.end68, %if.end22
  %nent.3 = phi i32 [ %mul106, %sw.bb105 ], [ %div87, %if.then84 ], [ %mul81, %if.end80 ], [ %div71, %if.end68 ], [ %add43, %if.then38 ], [ %add24, %if.end22 ], [ %3, %sw.bb25 ], [ 0, %for.cond.preheader ], [ %add34, %for.body ], [ 0, %for.cond46.preheader ], [ %add52, %for.body48 ], [ 0, %for.cond91.preheader ], [ %add97, %for.body93 ]
  %cmp109 = icmp sgt i32 %nent.3, %length
  br i1 %cmp109, label %if.then110, label %if.end112

if.then110:                                       ; preds = %sw.epilog108
  %13 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call111 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %13, i8* getelementptr inbounds ([88 x i8]* @.str4, i64 0, i64 0), %struct._Chv* %chv, i32 %length, double* %dvec, i32 %copyflag, i32 %storeflag, i32 %nent.3, i32 %length) #5
  tail call void @exit(i32 -1) #6
  unreachable

if.end112:                                        ; preds = %sw.epilog8, %sw.epilog108
  %call113 = tail call double* @Chv_entries(%struct._Chv* %chv) #5
  switch i32 %copyflag, label %sw.epilog2123 [
    i32 1, label %sw.bb114
    i32 2, label %sw.bb265
    i32 3, label %sw.bb464
    i32 4, label %sw.bb1029
    i32 5, label %sw.bb1181
    i32 6, label %sw.bb1324
    i32 7, label %sw.bb1825
  ]

sw.bb114:                                         ; preds = %if.end112
  switch i32 %storeflag, label %sw.epilog2123 [
    i32 0, label %sw.bb115
    i32 1, label %sw.bb189
  ]

sw.bb115:                                         ; preds = %sw.bb114
  %sub117 = add nsw i32 %add, -1
  %type = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 4
  %14 = load i32* %type, align 4, !tbaa !3
  switch i32 %14, label %sw.epilog2123 [
    i32 1, label %for.cond124.preheader
    i32 2, label %for.cond150.preheader
  ]

for.cond150.preheader:                            ; preds = %sw.bb115
  %cmp1513424 = icmp sgt i32 %add, 0
  br i1 %cmp1513424, label %for.body152.lr.ph, label %sw.epilog2123

for.body152.lr.ph:                                ; preds = %for.cond150.preheader
  %15 = add i32 %4, %5
  %16 = shl i32 %3, 1
  %17 = add i32 %15, %16
  %18 = add i32 %17, -1
  %19 = sext i32 %18 to i64
  %20 = xor i32 %3, -1
  br label %for.body152

for.cond124.preheader:                            ; preds = %sw.bb115
  %cmp1253412 = icmp sgt i32 %add, 0
  br i1 %cmp1253412, label %for.body126.lr.ph, label %sw.epilog2123

for.body126.lr.ph:                                ; preds = %for.cond124.preheader
  %21 = add i32 %4, %5
  %22 = shl i32 %3, 1
  %23 = add i32 %21, %22
  %24 = add i32 %23, -1
  %25 = sext i32 %24 to i64
  %26 = xor i32 %3, -1
  br label %for.body126

for.body126:                                      ; preds = %for.end142, %for.body126.lr.ph
  %indvars.iv4124 = phi i32 [ -1, %for.body126.lr.ph ], [ %indvars.iv.next4125, %for.end142 ]
  %mm.03415 = phi i32 [ 0, %for.body126.lr.ph ], [ %mm.1.lcssa, %for.end142 ]
  %ii.03414 = phi i32 [ 0, %for.body126.lr.ph ], [ %inc144, %for.end142 ]
  %kstart.03413 = phi i32 [ %sub117, %for.body126.lr.ph ], [ %dec, %for.end142 ]
  %27 = icmp sgt i32 %indvars.iv4124, %26
  %smax = select i1 %27, i32 %indvars.iv4124, i32 %26
  %28 = sub i32 -2, %smax
  %29 = icmp sgt i32 %28, 0
  %smax4126 = select i1 %29, i32 %28, i32 0
  %cmp127 = icmp slt i32 %ii.03414, %3
  %.sink = select i1 %cmp127, i32 %ii.03414, i32 %3
  %sub128 = add nsw i32 %.sink, -1
  %cmp1313407 = icmp slt i32 %.sink, 1
  br i1 %cmp1313407, label %for.end142, label %for.body132.lr.ph

for.body132.lr.ph:                                ; preds = %for.body126
  %30 = sext i32 %mm.03415 to i64
  %31 = add i32 %mm.03415, 1
  br label %for.body132

for.body132:                                      ; preds = %for.body132, %for.body132.lr.ph
  %indvars.iv4121 = phi i64 [ %indvars.iv.next4122, %for.body132 ], [ %25, %for.body132.lr.ph ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body132 ], [ %30, %for.body132.lr.ph ]
  %jj.03410 = phi i32 [ %inc140, %for.body132 ], [ 0, %for.body132.lr.ph ]
  %kk.03409 = phi i32 [ %add137, %for.body132 ], [ %kstart.03413, %for.body132.lr.ph ]
  %idxprom133 = sext i32 %kk.03409 to i64
  %arrayidx134 = getelementptr inbounds double* %call113, i64 %idxprom133
  %32 = load double* %arrayidx134, align 8, !tbaa !4
  %arrayidx136 = getelementptr inbounds double* %dvec, i64 %indvars.iv
  store double %32, double* %arrayidx136, align 8, !tbaa !4
  %33 = trunc i64 %indvars.iv4121 to i32
  %add137 = add nsw i32 %kk.03409, %33
  %inc140 = add nsw i32 %jj.03410, 1
  %indvars.iv.next = add i64 %indvars.iv, 1
  %cmp131 = icmp slt i32 %jj.03410, %sub128
  %indvars.iv.next4122 = add i64 %indvars.iv4121, -2
  br i1 %cmp131, label %for.body132, label %for.cond130.for.end142_crit_edge

for.cond130.for.end142_crit_edge:                 ; preds = %for.body132
  %34 = add i32 %31, %smax4126
  br label %for.end142

for.end142:                                       ; preds = %for.cond130.for.end142_crit_edge, %for.body126
  %mm.1.lcssa = phi i32 [ %34, %for.cond130.for.end142_crit_edge ], [ %mm.03415, %for.body126 ]
  %dec = add nsw i32 %kstart.03413, -1
  %inc144 = add nsw i32 %ii.03414, 1
  %indvars.iv.next4125 = add i32 %indvars.iv4124, -1
  %exitcond = icmp eq i32 %inc144, %add
  br i1 %exitcond, label %sw.epilog2123, label %for.body126

for.body152:                                      ; preds = %for.end182, %for.body152.lr.ph
  %indvars.iv4132 = phi i32 [ -1, %for.body152.lr.ph ], [ %indvars.iv.next4133, %for.end182 ]
  %mm.23427 = phi i32 [ 0, %for.body152.lr.ph ], [ %mm.3.lcssa, %for.end182 ]
  %ii.13426 = phi i32 [ 0, %for.body152.lr.ph ], [ %inc185, %for.end182 ]
  %kstart.13425 = phi i32 [ %sub117, %for.body152.lr.ph ], [ %dec183, %for.end182 ]
  %35 = icmp sgt i32 %indvars.iv4132, %20
  %smax4134 = select i1 %35, i32 %indvars.iv4132, i32 %20
  %36 = sub i32 -2, %smax4134
  %37 = icmp sgt i32 %36, 0
  %smax4135 = select i1 %37, i32 %36, i32 0
  %cmp153 = icmp slt i32 %ii.13426, %3
  %.sink2125 = select i1 %cmp153, i32 %ii.13426, i32 %3
  %sub155 = add nsw i32 %.sink2125, -1
  %cmp1613417 = icmp slt i32 %.sink2125, 1
  br i1 %cmp1613417, label %for.end182, label %for.body162.lr.ph

for.body162.lr.ph:                                ; preds = %for.body152
  %38 = sext i32 %mm.23427 to i64
  %39 = add i32 %mm.23427, 1
  br label %for.body162

for.body162:                                      ; preds = %for.body162, %for.body162.lr.ph
  %indvars.iv4129 = phi i64 [ %indvars.iv.next4130, %for.body162 ], [ %19, %for.body162.lr.ph ]
  %indvars.iv4127 = phi i64 [ %indvars.iv.next4128, %for.body162 ], [ %38, %for.body162.lr.ph ]
  %jj.13420 = phi i32 [ %inc180, %for.body162 ], [ 0, %for.body162.lr.ph ]
  %kk.13419 = phi i32 [ %add177, %for.body162 ], [ %kstart.13425, %for.body162.lr.ph ]
  %mul163 = shl nsw i32 %kk.13419, 1
  %idxprom164 = sext i32 %mul163 to i64
  %arrayidx165 = getelementptr inbounds double* %call113, i64 %idxprom164
  %40 = load double* %arrayidx165, align 8, !tbaa !4
  %41 = trunc i64 %indvars.iv4127 to i32
  %mul166 = shl nsw i32 %41, 1
  %idxprom167 = sext i32 %mul166 to i64
  %arrayidx168 = getelementptr inbounds double* %dvec, i64 %idxprom167
  store double %40, double* %arrayidx168, align 8, !tbaa !4
  %add1703393 = or i32 %mul163, 1
  %idxprom171 = sext i32 %add1703393 to i64
  %arrayidx172 = getelementptr inbounds double* %call113, i64 %idxprom171
  %42 = load double* %arrayidx172, align 8, !tbaa !4
  %add1743394 = or i32 %mul166, 1
  %idxprom175 = sext i32 %add1743394 to i64
  %arrayidx176 = getelementptr inbounds double* %dvec, i64 %idxprom175
  store double %42, double* %arrayidx176, align 8, !tbaa !4
  %43 = trunc i64 %indvars.iv4129 to i32
  %add177 = add nsw i32 %kk.13419, %43
  %inc180 = add nsw i32 %jj.13420, 1
  %indvars.iv.next4128 = add i64 %indvars.iv4127, 1
  %cmp161 = icmp slt i32 %jj.13420, %sub155
  %indvars.iv.next4130 = add i64 %indvars.iv4129, -2
  br i1 %cmp161, label %for.body162, label %for.cond160.for.end182_crit_edge

for.cond160.for.end182_crit_edge:                 ; preds = %for.body162
  %44 = add i32 %39, %smax4135
  br label %for.end182

for.end182:                                       ; preds = %for.cond160.for.end182_crit_edge, %for.body152
  %mm.3.lcssa = phi i32 [ %44, %for.cond160.for.end182_crit_edge ], [ %mm.23427, %for.body152 ]
  %dec183 = add nsw i32 %kstart.13425, -1
  %inc185 = add nsw i32 %ii.13426, 1
  %indvars.iv.next4133 = add i32 %indvars.iv4132, -1
  %exitcond4136 = icmp eq i32 %inc185, %add
  br i1 %exitcond4136, label %sw.epilog2123, label %for.body152

sw.bb189:                                         ; preds = %sw.bb114
  %sub196 = add i32 %add, -1
  %mul197 = shl i32 %3, 1
  %add198 = add i32 %4, -2
  %add199 = add i32 %add198, %mul197
  %sub200 = add i32 %add199, %5
  %type201 = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 4
  %45 = load i32* %type201, align 4, !tbaa !3
  switch i32 %45, label %sw.epilog2123 [
    i32 1, label %for.cond204.preheader
    i32 2, label %for.cond230.preheader
  ]

for.cond230.preheader:                            ; preds = %sw.bb189
  %cmp2313449 = icmp sgt i32 %3, 0
  br i1 %cmp2313449, label %for.body232, label %sw.epilog2123

for.cond204.preheader:                            ; preds = %sw.bb189
  %cmp2053436 = icmp sgt i32 %3, 0
  br i1 %cmp2053436, label %for.body206, label %sw.epilog2123

for.body206:                                      ; preds = %for.cond204.preheader, %for.end220
  %indvars.iv4142 = phi i32 [ %indvars.iv.next4143, %for.end220 ], [ %sub196, %for.cond204.preheader ]
  %mm.43440 = phi i32 [ %mm.5.lcssa, %for.end220 ], [ 0, %for.cond204.preheader ]
  %stride194.03439 = phi i32 [ %sub222, %for.end220 ], [ %sub200, %for.cond204.preheader ]
  %kstart193.03438 = phi i32 [ %add221, %for.end220 ], [ %sub196, %for.cond204.preheader ]
  %jj191.03437 = phi i32 [ %add208, %for.end220 ], [ 0, %for.cond204.preheader ]
  %add208 = add nsw i32 %jj191.03437, 1
  %cmp2103430 = icmp slt i32 %add208, %add
  br i1 %cmp2103430, label %for.body211.lr.ph, label %for.end220

for.body211.lr.ph:                                ; preds = %for.body206
  %46 = sext i32 %mm.43440 to i64
  br label %for.body211

for.body211:                                      ; preds = %for.body211, %for.body211.lr.ph
  %indvars.iv4140 = phi i64 [ %46, %for.body211.lr.ph ], [ %indvars.iv.next4141, %for.body211 ]
  %kk192.03433.in = phi i32 [ %kstart193.03438, %for.body211.lr.ph ], [ %kk192.03433, %for.body211 ]
  %ii190.03431 = phi i32 [ %add208, %for.body211.lr.ph ], [ %inc217, %for.body211 ]
  %kk192.03433 = add nsw i32 %kk192.03433.in, -1
  %idxprom212 = sext i32 %kk192.03433 to i64
  %arrayidx213 = getelementptr inbounds double* %call113, i64 %idxprom212
  %47 = load double* %arrayidx213, align 8, !tbaa !4
  %arrayidx215 = getelementptr inbounds double* %dvec, i64 %indvars.iv4140
  store double %47, double* %arrayidx215, align 8, !tbaa !4
  %inc217 = add nsw i32 %ii190.03431, 1
  %indvars.iv.next4141 = add i64 %indvars.iv4140, 1
  %exitcond4144 = icmp eq i32 %inc217, %add
  br i1 %exitcond4144, label %for.cond209.for.end220_crit_edge, label %for.body211

for.cond209.for.end220_crit_edge:                 ; preds = %for.body211
  %48 = add i32 %mm.43440, %indvars.iv4142
  br label %for.end220

for.end220:                                       ; preds = %for.cond209.for.end220_crit_edge, %for.body206
  %mm.5.lcssa = phi i32 [ %48, %for.cond209.for.end220_crit_edge ], [ %mm.43440, %for.body206 ]
  %add221 = add nsw i32 %stride194.03439, %kstart193.03438
  %sub222 = add nsw i32 %stride194.03439, -2
  %indvars.iv.next4143 = add i32 %indvars.iv4142, -1
  %exitcond4145 = icmp eq i32 %add208, %3
  br i1 %exitcond4145, label %sw.epilog2123, label %for.body206

for.body232:                                      ; preds = %for.cond230.preheader, %for.end256
  %indvars.iv4151 = phi i32 [ %indvars.iv.next4152, %for.end256 ], [ %sub196, %for.cond230.preheader ]
  %mm.63453 = phi i32 [ %mm.7.lcssa, %for.end256 ], [ 0, %for.cond230.preheader ]
  %stride194.13452 = phi i32 [ %sub258, %for.end256 ], [ %sub200, %for.cond230.preheader ]
  %kstart193.13451 = phi i32 [ %add257, %for.end256 ], [ %sub196, %for.cond230.preheader ]
  %jj191.13450 = phi i32 [ %add234, %for.end256 ], [ 0, %for.cond230.preheader ]
  %add234 = add nsw i32 %jj191.13450, 1
  %cmp2363443 = icmp slt i32 %add234, %add
  br i1 %cmp2363443, label %for.body237.lr.ph, label %for.end256

for.body237.lr.ph:                                ; preds = %for.body232
  %49 = sext i32 %mm.63453 to i64
  br label %for.body237

for.body237:                                      ; preds = %for.body237, %for.body237.lr.ph
  %indvars.iv4149 = phi i64 [ %49, %for.body237.lr.ph ], [ %indvars.iv.next4150, %for.body237 ]
  %kk192.13446.in = phi i32 [ %kstart193.13451, %for.body237.lr.ph ], [ %kk192.13446, %for.body237 ]
  %ii190.13444 = phi i32 [ %add234, %for.body237.lr.ph ], [ %inc253, %for.body237 ]
  %kk192.13446 = add nsw i32 %kk192.13446.in, -1
  %mul238 = shl nsw i32 %kk192.13446, 1
  %idxprom239 = sext i32 %mul238 to i64
  %arrayidx240 = getelementptr inbounds double* %call113, i64 %idxprom239
  %50 = load double* %arrayidx240, align 8, !tbaa !4
  %51 = trunc i64 %indvars.iv4149 to i32
  %mul241 = shl nsw i32 %51, 1
  %idxprom242 = sext i32 %mul241 to i64
  %arrayidx243 = getelementptr inbounds double* %dvec, i64 %idxprom242
  store double %50, double* %arrayidx243, align 8, !tbaa !4
  %add2453391 = or i32 %mul238, 1
  %idxprom246 = sext i32 %add2453391 to i64
  %arrayidx247 = getelementptr inbounds double* %call113, i64 %idxprom246
  %52 = load double* %arrayidx247, align 8, !tbaa !4
  %add2493392 = or i32 %mul241, 1
  %idxprom250 = sext i32 %add2493392 to i64
  %arrayidx251 = getelementptr inbounds double* %dvec, i64 %idxprom250
  store double %52, double* %arrayidx251, align 8, !tbaa !4
  %inc253 = add nsw i32 %ii190.13444, 1
  %indvars.iv.next4150 = add i64 %indvars.iv4149, 1
  %exitcond4153 = icmp eq i32 %inc253, %add
  br i1 %exitcond4153, label %for.cond235.for.end256_crit_edge, label %for.body237

for.cond235.for.end256_crit_edge:                 ; preds = %for.body237
  %53 = add i32 %mm.63453, %indvars.iv4151
  br label %for.end256

for.end256:                                       ; preds = %for.cond235.for.end256_crit_edge, %for.body232
  %mm.7.lcssa = phi i32 [ %53, %for.cond235.for.end256_crit_edge ], [ %mm.63453, %for.body232 ]
  %add257 = add nsw i32 %stride194.13452, %kstart193.13451
  %sub258 = add nsw i32 %stride194.13452, -2
  %indvars.iv.next4152 = add i32 %indvars.iv4151, -1
  %exitcond4154 = icmp eq i32 %add234, %3
  br i1 %exitcond4154, label %sw.epilog2123, label %for.body232

sw.bb265:                                         ; preds = %if.end112
  %54 = load i32* %symflag12, align 4, !tbaa !3
  %switch3399 = icmp ult i32 %54, 2
  br i1 %switch3399, label %if.then271, label %if.else408

if.then271:                                       ; preds = %sw.bb265
  %cmp280 = icmp eq i32* %pivotsizes, null
  %type282 = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 4
  %55 = load i32* %type282, align 4, !tbaa !3
  %cmp283 = icmp eq i32 %55, 1
  br i1 %cmp280, label %if.then281, label %if.else327

if.then281:                                       ; preds = %if.then271
  br i1 %cmp283, label %for.cond285.preheader, label %if.else298

for.cond285.preheader:                            ; preds = %if.then281
  %cmp2863456 = icmp sgt i32 %3, 0
  br i1 %cmp2863456, label %for.body287.lr.ph, label %sw.epilog2123

for.body287.lr.ph:                                ; preds = %for.cond285.preheader
  %56 = sext i32 %add13 to i64
  br label %for.body287

for.body287:                                      ; preds = %for.body287, %for.body287.lr.ph
  %indvars.iv4157 = phi i64 [ %56, %for.body287.lr.ph ], [ %indvars.iv.next4158, %for.body287 ]
  %indvars.iv4155 = phi i64 [ 0, %for.body287.lr.ph ], [ %indvars.iv.next4156, %for.body287 ]
  %kk276.03458 = phi i32 [ 0, %for.body287.lr.ph ], [ %add292, %for.body287 ]
  %idxprom288 = sext i32 %kk276.03458 to i64
  %arrayidx289 = getelementptr inbounds double* %call113, i64 %idxprom288
  %57 = load double* %arrayidx289, align 8, !tbaa !4
  %arrayidx291 = getelementptr inbounds double* %dvec, i64 %indvars.iv4155
  store double %57, double* %arrayidx291, align 8, !tbaa !4
  %58 = trunc i64 %indvars.iv4157 to i32
  %add292 = add nsw i32 %58, %kk276.03458
  %indvars.iv.next4158 = add i64 %indvars.iv4157, -1
  %indvars.iv.next4156 = add i64 %indvars.iv4155, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next4156 to i32
  %exitcond4159 = icmp eq i32 %lftr.wideiv, %3
  br i1 %exitcond4159, label %sw.epilog2123, label %for.body287

if.else298:                                       ; preds = %if.then281
  %cmp300 = icmp eq i32 %55, 2
  %cmp3033463 = icmp sgt i32 %3, 0
  %or.cond4627 = and i1 %cmp300, %cmp3033463
  br i1 %or.cond4627, label %for.body304.lr.ph, label %sw.epilog2123

for.body304.lr.ph:                                ; preds = %if.else298
  %59 = sext i32 %add13 to i64
  br label %for.body304

for.body304:                                      ; preds = %for.body304, %for.body304.lr.ph
  %indvars.iv4162 = phi i64 [ %59, %for.body304.lr.ph ], [ %indvars.iv.next4163, %for.body304 ]
  %indvars.iv4160 = phi i64 [ 0, %for.body304.lr.ph ], [ %indvars.iv.next4161, %for.body304 ]
  %kk276.13465 = phi i32 [ 0, %for.body304.lr.ph ], [ %add319, %for.body304 ]
  %mul305 = shl nsw i32 %kk276.13465, 1
  %idxprom306 = sext i32 %mul305 to i64
  %arrayidx307 = getelementptr inbounds double* %call113, i64 %idxprom306
  %60 = load double* %arrayidx307, align 8, !tbaa !4
  %61 = trunc i64 %indvars.iv4160 to i32
  %mul308 = shl nsw i32 %61, 1
  %idxprom309 = sext i32 %mul308 to i64
  %arrayidx310 = getelementptr inbounds double* %dvec, i64 %idxprom309
  store double %60, double* %arrayidx310, align 8, !tbaa !4
  %add3123389 = or i32 %mul305, 1
  %idxprom313 = sext i32 %add3123389 to i64
  %arrayidx314 = getelementptr inbounds double* %call113, i64 %idxprom313
  %62 = load double* %arrayidx314, align 8, !tbaa !4
  %add3163390 = or i32 %mul308, 1
  %idxprom317 = sext i32 %add3163390 to i64
  %arrayidx318 = getelementptr inbounds double* %dvec, i64 %idxprom317
  store double %62, double* %arrayidx318, align 8, !tbaa !4
  %63 = trunc i64 %indvars.iv4162 to i32
  %add319 = add nsw i32 %63, %kk276.13465
  %indvars.iv.next4163 = add i64 %indvars.iv4162, -1
  %indvars.iv.next4161 = add i64 %indvars.iv4160, 1
  %lftr.wideiv4164 = trunc i64 %indvars.iv.next4161 to i32
  %exitcond4165 = icmp eq i32 %lftr.wideiv4164, %3
  br i1 %exitcond4165, label %sw.epilog2123, label %for.body304

if.else327:                                       ; preds = %if.then271
  br i1 %cmp283, label %for.cond331.preheader, label %if.else361

for.cond331.preheader:                            ; preds = %if.else327
  %cmp3323483 = icmp sgt i32 %npivot, 0
  br i1 %cmp3323483, label %for.body333, label %sw.epilog2123

for.body333:                                      ; preds = %for.cond331.preheader, %for.inc358
  %indvars.iv4178 = phi i64 [ %indvars.iv.next4179, %for.inc358 ], [ 0, %for.cond331.preheader ]
  %mm.103487 = phi i32 [ %mm.11.lcssa, %for.inc358 ], [ 0, %for.cond331.preheader ]
  %stride278.23486 = phi i32 [ %stride278.3.lcssa, %for.inc358 ], [ %add13, %for.cond331.preheader ]
  %kstart277.03485 = phi i32 [ %kstart277.1.lcssa, %for.inc358 ], [ 0, %for.cond331.preheader ]
  %arrayidx335 = getelementptr inbounds i32* %pivotsizes, i64 %indvars.iv4178
  %64 = load i32* %arrayidx335, align 4, !tbaa !3
  %sub337 = add i32 %64, -1
  %cmp3393474 = icmp slt i32 %64, 1
  br i1 %cmp3393474, label %for.inc358, label %for.cond341.preheader.lr.ph

for.cond341.preheader.lr.ph:                      ; preds = %for.body333
  %65 = sext i32 %stride278.23486 to i64
  %66 = add i32 %stride278.23486, -1
  %67 = icmp sgt i32 %sub337, 0
  %smax4177 = select i1 %67, i32 %sub337, i32 0
  %68 = sub i32 %66, %smax4177
  %69 = mul i32 %smax4177, %66
  %70 = zext i32 %smax4177 to i33
  %71 = add i32 %smax4177, -1
  %72 = zext i32 %71 to i33
  %73 = mul i33 %70, %72
  %74 = lshr i33 %73, 1
  %75 = trunc i33 %74 to i32
  br label %for.cond341.preheader

for.cond341.preheader:                            ; preds = %for.end352, %for.cond341.preheader.lr.ph
  %indvars.iv4175 = phi i64 [ %indvars.iv.next4176, %for.end352 ], [ %65, %for.cond341.preheader.lr.ph ]
  %indvars.iv4171 = phi i32 [ %indvars.iv.next4172, %for.end352 ], [ %64, %for.cond341.preheader.lr.ph ]
  %mm.113478 = phi i32 [ %mm.12.lcssa, %for.end352 ], [ %mm.103487, %for.cond341.preheader.lr.ph ]
  %kstart277.13476 = phi i32 [ %add353, %for.end352 ], [ %kstart277.03485, %for.cond341.preheader.lr.ph ]
  %ii273.23475 = phi i32 [ %inc356, %for.end352 ], [ 0, %for.cond341.preheader.lr.ph ]
  %cmp3423469 = icmp sgt i32 %ii273.23475, %sub337
  br i1 %cmp3423469, label %for.end352, label %for.body343.lr.ph

for.body343.lr.ph:                                ; preds = %for.cond341.preheader
  %76 = sext i32 %kstart277.13476 to i64
  %77 = sext i32 %mm.113478 to i64
  br label %for.body343

for.body343:                                      ; preds = %for.body343, %for.body343.lr.ph
  %indvars.iv4168 = phi i64 [ %indvars.iv.next4169, %for.body343 ], [ %76, %for.body343.lr.ph ]
  %indvars.iv4166 = phi i64 [ %indvars.iv.next4167, %for.body343 ], [ %77, %for.body343.lr.ph ]
  %jj274.03470 = phi i32 [ %inc349, %for.body343 ], [ %ii273.23475, %for.body343.lr.ph ]
  %arrayidx345 = getelementptr inbounds double* %call113, i64 %indvars.iv4168
  %78 = load double* %arrayidx345, align 8, !tbaa !4
  %arrayidx347 = getelementptr inbounds double* %dvec, i64 %indvars.iv4166
  store double %78, double* %arrayidx347, align 8, !tbaa !4
  %inc349 = add nsw i32 %jj274.03470, 1
  %indvars.iv.next4167 = add i64 %indvars.iv4166, 1
  %indvars.iv.next4169 = add i64 %indvars.iv4168, 1
  %exitcond4173 = icmp eq i32 %inc349, %64
  br i1 %exitcond4173, label %for.cond341.for.end352_crit_edge, label %for.body343

for.cond341.for.end352_crit_edge:                 ; preds = %for.body343
  %79 = add i32 %mm.113478, %indvars.iv4171
  br label %for.end352

for.end352:                                       ; preds = %for.cond341.for.end352_crit_edge, %for.cond341.preheader
  %mm.12.lcssa = phi i32 [ %79, %for.cond341.for.end352_crit_edge ], [ %mm.113478, %for.cond341.preheader ]
  %80 = trunc i64 %indvars.iv4175 to i32
  %add353 = add nsw i32 %80, %kstart277.13476
  %indvars.iv.next4176 = add i64 %indvars.iv4175, -1
  %inc356 = add nsw i32 %ii273.23475, 1
  %cmp339 = icmp slt i32 %ii273.23475, %sub337
  %indvars.iv.next4172 = add i32 %indvars.iv4171, -1
  br i1 %cmp339, label %for.cond341.preheader, label %for.cond338.for.inc358_crit_edge

for.cond338.for.inc358_crit_edge:                 ; preds = %for.end352
  %81 = add i32 %kstart277.03485, %stride278.23486
  %82 = add i32 %81, %69
  %83 = sub i32 %82, %75
  br label %for.inc358

for.inc358:                                       ; preds = %for.cond338.for.inc358_crit_edge, %for.body333
  %mm.11.lcssa = phi i32 [ %mm.12.lcssa, %for.cond338.for.inc358_crit_edge ], [ %mm.103487, %for.body333 ]
  %stride278.3.lcssa = phi i32 [ %68, %for.cond338.for.inc358_crit_edge ], [ %stride278.23486, %for.body333 ]
  %kstart277.1.lcssa = phi i32 [ %83, %for.cond338.for.inc358_crit_edge ], [ %kstart277.03485, %for.body333 ]
  %indvars.iv.next4179 = add i64 %indvars.iv4178, 1
  %lftr.wideiv4180 = trunc i64 %indvars.iv.next4179 to i32
  %exitcond4181 = icmp eq i32 %lftr.wideiv4180, %npivot
  br i1 %exitcond4181, label %sw.epilog2123, label %for.body333

if.else361:                                       ; preds = %if.else327
  %cmp363 = icmp eq i32 %55, 2
  %cmp3663503 = icmp sgt i32 %npivot, 0
  %or.cond4628 = and i1 %cmp363, %cmp3663503
  br i1 %or.cond4628, label %for.body367, label %sw.epilog2123

for.body367:                                      ; preds = %if.else361, %for.inc402
  %indvars.iv4193 = phi i64 [ %indvars.iv.next4194, %for.inc402 ], [ 0, %if.else361 ]
  %mm.133507 = phi i32 [ %mm.14.lcssa, %for.inc402 ], [ 0, %if.else361 ]
  %stride278.43506 = phi i32 [ %stride278.5.lcssa, %for.inc402 ], [ %add13, %if.else361 ]
  %kstart277.23505 = phi i32 [ %kstart277.3.lcssa, %for.inc402 ], [ 0, %if.else361 ]
  %arrayidx369 = getelementptr inbounds i32* %pivotsizes, i64 %indvars.iv4193
  %84 = load i32* %arrayidx369, align 4, !tbaa !3
  %sub371 = add i32 %84, -1
  %cmp3733494 = icmp slt i32 %84, 1
  br i1 %cmp3733494, label %for.inc402, label %for.cond375.preheader.lr.ph

for.cond375.preheader.lr.ph:                      ; preds = %for.body367
  %85 = sext i32 %stride278.43506 to i64
  %86 = add i32 %stride278.43506, -1
  %87 = icmp sgt i32 %sub371, 0
  %smax4192 = select i1 %87, i32 %sub371, i32 0
  %88 = sub i32 %86, %smax4192
  %89 = mul i32 %smax4192, %86
  %90 = zext i32 %smax4192 to i33
  %91 = add i32 %smax4192, -1
  %92 = zext i32 %91 to i33
  %93 = mul i33 %90, %92
  %94 = lshr i33 %93, 1
  %95 = trunc i33 %94 to i32
  br label %for.cond375.preheader

for.cond375.preheader:                            ; preds = %for.end396, %for.cond375.preheader.lr.ph
  %indvars.iv4190 = phi i64 [ %indvars.iv.next4191, %for.end396 ], [ %85, %for.cond375.preheader.lr.ph ]
  %indvars.iv4187 = phi i32 [ %indvars.iv.next4188, %for.end396 ], [ %84, %for.cond375.preheader.lr.ph ]
  %mm.143498 = phi i32 [ %mm.15.lcssa, %for.end396 ], [ %mm.133507, %for.cond375.preheader.lr.ph ]
  %kstart277.33496 = phi i32 [ %add397, %for.end396 ], [ %kstart277.23505, %for.cond375.preheader.lr.ph ]
  %ii273.33495 = phi i32 [ %inc400, %for.end396 ], [ 0, %for.cond375.preheader.lr.ph ]
  %cmp3763489 = icmp sgt i32 %ii273.33495, %sub371
  br i1 %cmp3763489, label %for.end396, label %for.body377.lr.ph

for.body377.lr.ph:                                ; preds = %for.cond375.preheader
  %96 = sext i32 %kstart277.33496 to i64
  %97 = sext i32 %mm.143498 to i64
  br label %for.body377

for.body377:                                      ; preds = %for.body377, %for.body377.lr.ph
  %indvars.iv4184 = phi i64 [ %indvars.iv.next4185, %for.body377 ], [ %96, %for.body377.lr.ph ]
  %indvars.iv4182 = phi i64 [ %indvars.iv.next4183, %for.body377 ], [ %97, %for.body377.lr.ph ]
  %jj274.13490 = phi i32 [ %inc393, %for.body377 ], [ %ii273.33495, %for.body377.lr.ph ]
  %98 = trunc i64 %indvars.iv4184 to i32
  %mul378 = shl nsw i32 %98, 1
  %idxprom379 = sext i32 %mul378 to i64
  %arrayidx380 = getelementptr inbounds double* %call113, i64 %idxprom379
  %99 = load double* %arrayidx380, align 8, !tbaa !4
  %100 = trunc i64 %indvars.iv4182 to i32
  %mul381 = shl nsw i32 %100, 1
  %idxprom382 = sext i32 %mul381 to i64
  %arrayidx383 = getelementptr inbounds double* %dvec, i64 %idxprom382
  store double %99, double* %arrayidx383, align 8, !tbaa !4
  %add3853387 = or i32 %mul378, 1
  %idxprom386 = sext i32 %add3853387 to i64
  %arrayidx387 = getelementptr inbounds double* %call113, i64 %idxprom386
  %101 = load double* %arrayidx387, align 8, !tbaa !4
  %add3893388 = or i32 %mul381, 1
  %idxprom390 = sext i32 %add3893388 to i64
  %arrayidx391 = getelementptr inbounds double* %dvec, i64 %idxprom390
  store double %101, double* %arrayidx391, align 8, !tbaa !4
  %inc393 = add nsw i32 %jj274.13490, 1
  %indvars.iv.next4183 = add i64 %indvars.iv4182, 1
  %indvars.iv.next4185 = add i64 %indvars.iv4184, 1
  %exitcond4189 = icmp eq i32 %inc393, %84
  br i1 %exitcond4189, label %for.cond375.for.end396_crit_edge, label %for.body377

for.cond375.for.end396_crit_edge:                 ; preds = %for.body377
  %102 = add i32 %mm.143498, %indvars.iv4187
  br label %for.end396

for.end396:                                       ; preds = %for.cond375.for.end396_crit_edge, %for.cond375.preheader
  %mm.15.lcssa = phi i32 [ %102, %for.cond375.for.end396_crit_edge ], [ %mm.143498, %for.cond375.preheader ]
  %103 = trunc i64 %indvars.iv4190 to i32
  %add397 = add nsw i32 %103, %kstart277.33496
  %indvars.iv.next4191 = add i64 %indvars.iv4190, -1
  %inc400 = add nsw i32 %ii273.33495, 1
  %cmp373 = icmp slt i32 %ii273.33495, %sub371
  %indvars.iv.next4188 = add i32 %indvars.iv4187, -1
  br i1 %cmp373, label %for.cond375.preheader, label %for.cond372.for.inc402_crit_edge

for.cond372.for.inc402_crit_edge:                 ; preds = %for.end396
  %104 = add i32 %kstart277.23505, %stride278.43506
  %105 = add i32 %104, %89
  %106 = sub i32 %105, %95
  br label %for.inc402

for.inc402:                                       ; preds = %for.cond372.for.inc402_crit_edge, %for.body367
  %mm.14.lcssa = phi i32 [ %mm.15.lcssa, %for.cond372.for.inc402_crit_edge ], [ %mm.133507, %for.body367 ]
  %stride278.5.lcssa = phi i32 [ %88, %for.cond372.for.inc402_crit_edge ], [ %stride278.43506, %for.body367 ]
  %kstart277.3.lcssa = phi i32 [ %106, %for.cond372.for.inc402_crit_edge ], [ %kstart277.23505, %for.body367 ]
  %indvars.iv.next4194 = add i64 %indvars.iv4193, 1
  %lftr.wideiv4195 = trunc i64 %indvars.iv.next4194 to i32
  %exitcond4196 = icmp eq i32 %lftr.wideiv4195, %npivot
  br i1 %exitcond4196, label %sw.epilog2123, label %for.body367

if.else408:                                       ; preds = %sw.bb265
  %sub413 = add nsw i32 %add, -1
  %type418 = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 4
  %107 = load i32* %type418, align 4, !tbaa !3
  switch i32 %107, label %sw.epilog2123 [
    i32 1, label %for.cond421.preheader
    i32 2, label %for.cond438.preheader
  ]

for.cond438.preheader:                            ; preds = %if.else408
  %cmp4393517 = icmp sgt i32 %3, 0
  br i1 %cmp4393517, label %for.body440.lr.ph, label %sw.epilog2123

for.body440.lr.ph:                                ; preds = %for.cond438.preheader
  %108 = add i32 %4, %5
  %109 = shl i32 %3, 1
  %110 = add i32 %108, %109
  %111 = add i32 %110, -2
  %112 = sext i32 %111 to i64
  br label %for.body440

for.cond421.preheader:                            ; preds = %if.else408
  %cmp4223510 = icmp sgt i32 %3, 0
  br i1 %cmp4223510, label %for.body423.lr.ph, label %sw.epilog2123

for.body423.lr.ph:                                ; preds = %for.cond421.preheader
  %113 = add i32 %4, %5
  %114 = shl i32 %3, 1
  %115 = add i32 %113, %114
  %116 = add i32 %115, -2
  %117 = sext i32 %116 to i64
  br label %for.body423

for.body423:                                      ; preds = %for.body423, %for.body423.lr.ph
  %indvars.iv4199 = phi i64 [ %117, %for.body423.lr.ph ], [ %indvars.iv.next4200, %for.body423 ]
  %indvars.iv4197 = phi i64 [ 0, %for.body423.lr.ph ], [ %indvars.iv.next4198, %for.body423 ]
  %kk410.03512 = phi i32 [ %sub413, %for.body423.lr.ph ], [ %add428, %for.body423 ]
  %idxprom424 = sext i32 %kk410.03512 to i64
  %arrayidx425 = getelementptr inbounds double* %call113, i64 %idxprom424
  %118 = load double* %arrayidx425, align 8, !tbaa !4
  %arrayidx427 = getelementptr inbounds double* %dvec, i64 %indvars.iv4197
  store double %118, double* %arrayidx427, align 8, !tbaa !4
  %119 = trunc i64 %indvars.iv4199 to i32
  %add428 = add nsw i32 %119, %kk410.03512
  %indvars.iv.next4198 = add i64 %indvars.iv4197, 1
  %indvars.iv.next4200 = add i64 %indvars.iv4199, -2
  %lftr.wideiv4202 = trunc i64 %indvars.iv.next4198 to i32
  %exitcond4203 = icmp eq i32 %lftr.wideiv4202, %3
  br i1 %exitcond4203, label %sw.epilog2123, label %for.body423

for.body440:                                      ; preds = %for.body440, %for.body440.lr.ph
  %indvars.iv4206 = phi i64 [ %112, %for.body440.lr.ph ], [ %indvars.iv.next4207, %for.body440 ]
  %indvars.iv4204 = phi i64 [ 0, %for.body440.lr.ph ], [ %indvars.iv.next4205, %for.body440 ]
  %kk410.13519 = phi i32 [ %sub413, %for.body440.lr.ph ], [ %add455, %for.body440 ]
  %mul441 = shl nsw i32 %kk410.13519, 1
  %idxprom442 = sext i32 %mul441 to i64
  %arrayidx443 = getelementptr inbounds double* %call113, i64 %idxprom442
  %120 = load double* %arrayidx443, align 8, !tbaa !4
  %121 = trunc i64 %indvars.iv4204 to i32
  %mul444 = shl nsw i32 %121, 1
  %idxprom445 = sext i32 %mul444 to i64
  %arrayidx446 = getelementptr inbounds double* %dvec, i64 %idxprom445
  store double %120, double* %arrayidx446, align 8, !tbaa !4
  %add4483385 = or i32 %mul441, 1
  %idxprom449 = sext i32 %add4483385 to i64
  %arrayidx450 = getelementptr inbounds double* %call113, i64 %idxprom449
  %122 = load double* %arrayidx450, align 8, !tbaa !4
  %add4523386 = or i32 %mul444, 1
  %idxprom453 = sext i32 %add4523386 to i64
  %arrayidx454 = getelementptr inbounds double* %dvec, i64 %idxprom453
  store double %122, double* %arrayidx454, align 8, !tbaa !4
  %123 = trunc i64 %indvars.iv4206 to i32
  %add455 = add nsw i32 %123, %kk410.13519
  %indvars.iv.next4205 = add i64 %indvars.iv4204, 1
  %indvars.iv.next4207 = add i64 %indvars.iv4206, -2
  %lftr.wideiv4209 = trunc i64 %indvars.iv.next4205 to i32
  %exitcond4210 = icmp eq i32 %lftr.wideiv4209, %3
  br i1 %exitcond4210, label %sw.epilog2123, label %for.body440

sw.bb464:                                         ; preds = %if.end112
  switch i32 %storeflag, label %sw.epilog2123 [
    i32 0, label %sw.bb465
    i32 1, label %sw.bb713
  ]

sw.bb465:                                         ; preds = %sw.bb464
  %124 = load i32* %symflag12, align 4, !tbaa !3
  %switch3400 = icmp ult i32 %124, 2
  br i1 %switch3400, label %if.then471, label %if.else637

if.then471:                                       ; preds = %sw.bb465
  %cmp481 = icmp eq i32* %pivotsizes, null
  %type483 = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 4
  %125 = load i32* %type483, align 4, !tbaa !3
  %cmp484 = icmp eq i32 %125, 1
  br i1 %cmp481, label %if.then482, label %if.else546

if.then482:                                       ; preds = %if.then471
  br i1 %cmp484, label %for.cond486.preheader, label %if.else508

for.cond486.preheader:                            ; preds = %if.then482
  %cmp4873530 = icmp sgt i32 %3, 0
  br i1 %cmp4873530, label %for.body488, label %sw.epilog2123

for.body488:                                      ; preds = %for.cond486.preheader, %for.end502
  %indvars.iv4216.in = phi i32 [ %indvars.iv4216, %for.end502 ], [ %add13, %for.cond486.preheader ]
  %mm.183534 = phi i32 [ %mm.19.lcssa, %for.end502 ], [ 0, %for.cond486.preheader ]
  %stride479.03533 = phi i32 [ %dec504, %for.end502 ], [ %add13, %for.cond486.preheader ]
  %kstart477.03532 = phi i32 [ %add503, %for.end502 ], [ 0, %for.cond486.preheader ]
  %ii473.03531 = phi i32 [ %add490, %for.end502 ], [ 0, %for.cond486.preheader ]
  %indvars.iv4216 = add i32 %indvars.iv4216.in, -1
  %add490 = add nsw i32 %ii473.03531, 1
  %cmp4923524 = icmp slt i32 %add490, %add13
  br i1 %cmp4923524, label %for.body493.lr.ph, label %for.end502

for.body493.lr.ph:                                ; preds = %for.body488
  %126 = sext i32 %mm.183534 to i64
  br label %for.body493

for.body493:                                      ; preds = %for.body493, %for.body493.lr.ph
  %indvars.iv4214 = phi i64 [ %126, %for.body493.lr.ph ], [ %indvars.iv.next4215, %for.body493 ]
  %kk476.03527.in = phi i32 [ %kstart477.03532, %for.body493.lr.ph ], [ %kk476.03527, %for.body493 ]
  %jj475.03525 = phi i32 [ %add490, %for.body493.lr.ph ], [ %inc499, %for.body493 ]
  %kk476.03527 = add nsw i32 %kk476.03527.in, 1
  %idxprom494 = sext i32 %kk476.03527 to i64
  %arrayidx495 = getelementptr inbounds double* %call113, i64 %idxprom494
  %127 = load double* %arrayidx495, align 8, !tbaa !4
  %arrayidx497 = getelementptr inbounds double* %dvec, i64 %indvars.iv4214
  store double %127, double* %arrayidx497, align 8, !tbaa !4
  %inc499 = add nsw i32 %jj475.03525, 1
  %indvars.iv.next4215 = add i64 %indvars.iv4214, 1
  %exitcond4218 = icmp eq i32 %inc499, %add13
  br i1 %exitcond4218, label %for.cond491.for.end502_crit_edge, label %for.body493

for.cond491.for.end502_crit_edge:                 ; preds = %for.body493
  %128 = add i32 %mm.183534, %indvars.iv4216
  br label %for.end502

for.end502:                                       ; preds = %for.cond491.for.end502_crit_edge, %for.body488
  %mm.19.lcssa = phi i32 [ %128, %for.cond491.for.end502_crit_edge ], [ %mm.183534, %for.body488 ]
  %add503 = add nsw i32 %stride479.03533, %kstart477.03532
  %dec504 = add nsw i32 %stride479.03533, -1
  %exitcond4220 = icmp eq i32 %add490, %3
  br i1 %exitcond4220, label %sw.epilog2123, label %for.body488

if.else508:                                       ; preds = %if.then482
  %cmp510 = icmp eq i32 %125, 2
  %cmp5133543 = icmp sgt i32 %3, 0
  %or.cond4629 = and i1 %cmp510, %cmp5133543
  br i1 %or.cond4629, label %for.body514, label %sw.epilog2123

for.body514:                                      ; preds = %if.else508, %for.end538
  %indvars.iv4226.in = phi i32 [ %indvars.iv4226, %for.end538 ], [ %add13, %if.else508 ]
  %mm.203547 = phi i32 [ %mm.21.lcssa, %for.end538 ], [ 0, %if.else508 ]
  %stride479.13546 = phi i32 [ %dec540, %for.end538 ], [ %add13, %if.else508 ]
  %kstart477.13545 = phi i32 [ %add539, %for.end538 ], [ 0, %if.else508 ]
  %ii473.13544 = phi i32 [ %add516, %for.end538 ], [ 0, %if.else508 ]
  %indvars.iv4226 = add i32 %indvars.iv4226.in, -1
  %add516 = add nsw i32 %ii473.13544, 1
  %cmp5183537 = icmp slt i32 %add516, %add13
  br i1 %cmp5183537, label %for.body519.lr.ph, label %for.end538

for.body519.lr.ph:                                ; preds = %for.body514
  %129 = sext i32 %mm.203547 to i64
  br label %for.body519

for.body519:                                      ; preds = %for.body519, %for.body519.lr.ph
  %indvars.iv4224 = phi i64 [ %129, %for.body519.lr.ph ], [ %indvars.iv.next4225, %for.body519 ]
  %kk476.13540.in = phi i32 [ %kstart477.13545, %for.body519.lr.ph ], [ %kk476.13540, %for.body519 ]
  %jj475.13538 = phi i32 [ %add516, %for.body519.lr.ph ], [ %inc535, %for.body519 ]
  %kk476.13540 = add nsw i32 %kk476.13540.in, 1
  %mul520 = shl nsw i32 %kk476.13540, 1
  %idxprom521 = sext i32 %mul520 to i64
  %arrayidx522 = getelementptr inbounds double* %call113, i64 %idxprom521
  %130 = load double* %arrayidx522, align 8, !tbaa !4
  %131 = trunc i64 %indvars.iv4224 to i32
  %mul523 = shl nsw i32 %131, 1
  %idxprom524 = sext i32 %mul523 to i64
  %arrayidx525 = getelementptr inbounds double* %dvec, i64 %idxprom524
  store double %130, double* %arrayidx525, align 8, !tbaa !4
  %add5273383 = or i32 %mul520, 1
  %idxprom528 = sext i32 %add5273383 to i64
  %arrayidx529 = getelementptr inbounds double* %call113, i64 %idxprom528
  %132 = load double* %arrayidx529, align 8, !tbaa !4
  %add5313384 = or i32 %mul523, 1
  %idxprom532 = sext i32 %add5313384 to i64
  %arrayidx533 = getelementptr inbounds double* %dvec, i64 %idxprom532
  store double %132, double* %arrayidx533, align 8, !tbaa !4
  %inc535 = add nsw i32 %jj475.13538, 1
  %indvars.iv.next4225 = add i64 %indvars.iv4224, 1
  %exitcond4228 = icmp eq i32 %inc535, %add13
  br i1 %exitcond4228, label %for.cond517.for.end538_crit_edge, label %for.body519

for.cond517.for.end538_crit_edge:                 ; preds = %for.body519
  %133 = add i32 %mm.203547, %indvars.iv4226
  br label %for.end538

for.end538:                                       ; preds = %for.cond517.for.end538_crit_edge, %for.body514
  %mm.21.lcssa = phi i32 [ %133, %for.cond517.for.end538_crit_edge ], [ %mm.203547, %for.body514 ]
  %add539 = add nsw i32 %stride479.13546, %kstart477.13545
  %dec540 = add nsw i32 %stride479.13546, -1
  %exitcond4229 = icmp eq i32 %add516, %3
  br i1 %exitcond4229, label %sw.epilog2123, label %for.body514

if.else546:                                       ; preds = %if.then471
  br i1 %cmp484, label %for.cond550.preheader, label %if.else585

for.cond550.preheader:                            ; preds = %if.else546
  %cmp5513564 = icmp sgt i32 %npivot, 0
  br i1 %cmp5513564, label %for.body552, label %sw.epilog2123

for.body552:                                      ; preds = %for.cond550.preheader, %for.end580
  %indvars.iv4242 = phi i64 [ %indvars.iv.next4243, %for.end580 ], [ 0, %for.cond550.preheader ]
  %mm.223569 = phi i32 [ %mm.23.lcssa, %for.end580 ], [ 0, %for.cond550.preheader ]
  %stride479.23568 = phi i32 [ %stride479.3.lcssa, %for.end580 ], [ %add13, %for.cond550.preheader ]
  %kstart477.23567 = phi i32 [ %kstart477.3.lcssa, %for.end580 ], [ 0, %for.cond550.preheader ]
  %first472.03565 = phi i32 [ %add555, %for.end580 ], [ 0, %for.cond550.preheader ]
  %arrayidx554 = getelementptr inbounds i32* %pivotsizes, i64 %indvars.iv4242
  %134 = load i32* %arrayidx554, align 4, !tbaa !3
  %add555 = add nsw i32 %134, %first472.03565
  %sub556 = add nsw i32 %add555, -1
  %cmp5583555 = icmp sgt i32 %first472.03565, %sub556
  br i1 %cmp5583555, label %for.end580, label %for.body559.lr.ph

for.body559.lr.ph:                                ; preds = %for.body552
  %cmp5653550 = icmp slt i32 %add555, %add13
  %135 = sub i32 %add13, %first472.03565
  %136 = sub i32 %135, %134
  %137 = add i32 %first472.03565, -1
  %138 = add i32 %137, %stride479.23568
  %139 = add i32 %137, %134
  %140 = icmp sgt i32 %first472.03565, %139
  %smax4241 = select i1 %140, i32 %first472.03565, i32 %139
  %141 = sub i32 %138, %smax4241
  %142 = sub i32 %smax4241, %first472.03565
  %143 = add i32 %stride479.23568, -1
  %144 = mul i32 %142, %143
  %145 = zext i32 %142 to i33
  %146 = add i32 %smax4241, -1
  %147 = sub i32 %146, %first472.03565
  %148 = zext i32 %147 to i33
  %149 = mul i33 %145, %148
  %150 = lshr i33 %149, 1
  %151 = trunc i33 %150 to i32
  br label %for.body559

for.body559:                                      ; preds = %for.end575, %for.body559.lr.ph
  %mm.233559 = phi i32 [ %mm.223569, %for.body559.lr.ph ], [ %mm.24.lcssa, %for.end575 ]
  %stride479.33558 = phi i32 [ %stride479.23568, %for.body559.lr.ph ], [ %dec577, %for.end575 ]
  %kstart477.33557 = phi i32 [ %kstart477.23567, %for.body559.lr.ph ], [ %add576, %for.end575 ]
  %ii473.23556 = phi i32 [ %first472.03565, %for.body559.lr.ph ], [ %inc579, %for.end575 ]
  br i1 %cmp5653550, label %for.body566.lr.ph, label %for.end575

for.body566.lr.ph:                                ; preds = %for.body559
  %add560 = sub i32 %sub556, %ii473.23556
  %sub561 = add i32 %add560, %kstart477.33557
  %152 = sext i32 %mm.233559 to i64
  br label %for.body566

for.body566:                                      ; preds = %for.body566, %for.body566.lr.ph
  %indvars.iv4237 = phi i64 [ %152, %for.body566.lr.ph ], [ %indvars.iv.next4238, %for.body566 ]
  %kk476.23553.in = phi i32 [ %sub561, %for.body566.lr.ph ], [ %kk476.23553, %for.body566 ]
  %jj475.23551 = phi i32 [ %add555, %for.body566.lr.ph ], [ %inc572, %for.body566 ]
  %kk476.23553 = add nsw i32 %kk476.23553.in, 1
  %idxprom567 = sext i32 %kk476.23553 to i64
  %arrayidx568 = getelementptr inbounds double* %call113, i64 %idxprom567
  %153 = load double* %arrayidx568, align 8, !tbaa !4
  %arrayidx570 = getelementptr inbounds double* %dvec, i64 %indvars.iv4237
  store double %153, double* %arrayidx570, align 8, !tbaa !4
  %inc572 = add nsw i32 %jj475.23551, 1
  %indvars.iv.next4238 = add i64 %indvars.iv4237, 1
  %exitcond4239 = icmp eq i32 %inc572, %add13
  br i1 %exitcond4239, label %for.cond564.for.end575_crit_edge, label %for.body566

for.cond564.for.end575_crit_edge:                 ; preds = %for.body566
  %154 = add i32 %136, %mm.233559
  br label %for.end575

for.end575:                                       ; preds = %for.cond564.for.end575_crit_edge, %for.body559
  %mm.24.lcssa = phi i32 [ %154, %for.cond564.for.end575_crit_edge ], [ %mm.233559, %for.body559 ]
  %add576 = add nsw i32 %stride479.33558, %kstart477.33557
  %dec577 = add nsw i32 %stride479.33558, -1
  %inc579 = add nsw i32 %ii473.23556, 1
  %cmp558 = icmp slt i32 %ii473.23556, %sub556
  br i1 %cmp558, label %for.body559, label %for.cond557.for.end580_crit_edge

for.cond557.for.end580_crit_edge:                 ; preds = %for.end575
  %155 = add i32 %kstart477.23567, %stride479.23568
  %156 = add i32 %155, %144
  %157 = sub i32 %156, %151
  br label %for.end580

for.end580:                                       ; preds = %for.cond557.for.end580_crit_edge, %for.body552
  %mm.23.lcssa = phi i32 [ %mm.24.lcssa, %for.cond557.for.end580_crit_edge ], [ %mm.223569, %for.body552 ]
  %stride479.3.lcssa = phi i32 [ %141, %for.cond557.for.end580_crit_edge ], [ %stride479.23568, %for.body552 ]
  %kstart477.3.lcssa = phi i32 [ %157, %for.cond557.for.end580_crit_edge ], [ %kstart477.23567, %for.body552 ]
  %indvars.iv.next4243 = add i64 %indvars.iv4242, 1
  %lftr.wideiv4244 = trunc i64 %indvars.iv.next4243 to i32
  %exitcond4245 = icmp eq i32 %lftr.wideiv4244, %npivot
  br i1 %exitcond4245, label %sw.epilog2123, label %for.body552

if.else585:                                       ; preds = %if.else546
  %cmp587 = icmp eq i32 %125, 2
  %cmp5903586 = icmp sgt i32 %npivot, 0
  %or.cond4630 = and i1 %cmp587, %cmp5903586
  br i1 %or.cond4630, label %for.body591, label %sw.epilog2123

for.body591:                                      ; preds = %if.else585, %for.end629
  %indvars.iv4257 = phi i64 [ %indvars.iv.next4258, %for.end629 ], [ 0, %if.else585 ]
  %mm.253591 = phi i32 [ %mm.26.lcssa, %for.end629 ], [ 0, %if.else585 ]
  %stride479.43590 = phi i32 [ %stride479.5.lcssa, %for.end629 ], [ %add13, %if.else585 ]
  %kstart477.43589 = phi i32 [ %kstart477.5.lcssa, %for.end629 ], [ 0, %if.else585 ]
  %first472.13587 = phi i32 [ %add594, %for.end629 ], [ 0, %if.else585 ]
  %arrayidx593 = getelementptr inbounds i32* %pivotsizes, i64 %indvars.iv4257
  %158 = load i32* %arrayidx593, align 4, !tbaa !3
  %add594 = add nsw i32 %158, %first472.13587
  %sub595 = add nsw i32 %add594, -1
  %cmp5973577 = icmp sgt i32 %first472.13587, %sub595
  br i1 %cmp5973577, label %for.end629, label %for.body598.lr.ph

for.body598.lr.ph:                                ; preds = %for.body591
  %cmp6043572 = icmp slt i32 %add594, %add13
  %159 = sub i32 %add13, %first472.13587
  %160 = sub i32 %159, %158
  %161 = add i32 %first472.13587, -1
  %162 = add i32 %161, %stride479.43590
  %163 = add i32 %161, %158
  %164 = icmp sgt i32 %first472.13587, %163
  %smax4256 = select i1 %164, i32 %first472.13587, i32 %163
  %165 = sub i32 %162, %smax4256
  %166 = sub i32 %smax4256, %first472.13587
  %167 = add i32 %stride479.43590, -1
  %168 = mul i32 %166, %167
  %169 = zext i32 %166 to i33
  %170 = add i32 %smax4256, -1
  %171 = sub i32 %170, %first472.13587
  %172 = zext i32 %171 to i33
  %173 = mul i33 %169, %172
  %174 = lshr i33 %173, 1
  %175 = trunc i33 %174 to i32
  br label %for.body598

for.body598:                                      ; preds = %for.end624, %for.body598.lr.ph
  %mm.263581 = phi i32 [ %mm.253591, %for.body598.lr.ph ], [ %mm.27.lcssa, %for.end624 ]
  %stride479.53580 = phi i32 [ %stride479.43590, %for.body598.lr.ph ], [ %dec626, %for.end624 ]
  %kstart477.53579 = phi i32 [ %kstart477.43589, %for.body598.lr.ph ], [ %add625, %for.end624 ]
  %ii473.33578 = phi i32 [ %first472.13587, %for.body598.lr.ph ], [ %inc628, %for.end624 ]
  br i1 %cmp6043572, label %for.body605.lr.ph, label %for.end624

for.body605.lr.ph:                                ; preds = %for.body598
  %add599 = sub i32 %sub595, %ii473.33578
  %sub600 = add i32 %add599, %kstart477.53579
  %176 = sext i32 %mm.263581 to i64
  br label %for.body605

for.body605:                                      ; preds = %for.body605, %for.body605.lr.ph
  %indvars.iv4253 = phi i64 [ %176, %for.body605.lr.ph ], [ %indvars.iv.next4254, %for.body605 ]
  %kk476.33575.in = phi i32 [ %sub600, %for.body605.lr.ph ], [ %kk476.33575, %for.body605 ]
  %jj475.33573 = phi i32 [ %add594, %for.body605.lr.ph ], [ %inc621, %for.body605 ]
  %kk476.33575 = add nsw i32 %kk476.33575.in, 1
  %mul606 = shl nsw i32 %kk476.33575, 1
  %idxprom607 = sext i32 %mul606 to i64
  %arrayidx608 = getelementptr inbounds double* %call113, i64 %idxprom607
  %177 = load double* %arrayidx608, align 8, !tbaa !4
  %178 = trunc i64 %indvars.iv4253 to i32
  %mul609 = shl nsw i32 %178, 1
  %idxprom610 = sext i32 %mul609 to i64
  %arrayidx611 = getelementptr inbounds double* %dvec, i64 %idxprom610
  store double %177, double* %arrayidx611, align 8, !tbaa !4
  %add6133381 = or i32 %mul606, 1
  %idxprom614 = sext i32 %add6133381 to i64
  %arrayidx615 = getelementptr inbounds double* %call113, i64 %idxprom614
  %179 = load double* %arrayidx615, align 8, !tbaa !4
  %add6173382 = or i32 %mul609, 1
  %idxprom618 = sext i32 %add6173382 to i64
  %arrayidx619 = getelementptr inbounds double* %dvec, i64 %idxprom618
  store double %179, double* %arrayidx619, align 8, !tbaa !4
  %inc621 = add nsw i32 %jj475.33573, 1
  %indvars.iv.next4254 = add i64 %indvars.iv4253, 1
  %exitcond4255 = icmp eq i32 %inc621, %add13
  br i1 %exitcond4255, label %for.cond603.for.end624_crit_edge, label %for.body605

for.cond603.for.end624_crit_edge:                 ; preds = %for.body605
  %180 = add i32 %160, %mm.263581
  br label %for.end624

for.end624:                                       ; preds = %for.cond603.for.end624_crit_edge, %for.body598
  %mm.27.lcssa = phi i32 [ %180, %for.cond603.for.end624_crit_edge ], [ %mm.263581, %for.body598 ]
  %add625 = add nsw i32 %stride479.53580, %kstart477.53579
  %dec626 = add nsw i32 %stride479.53580, -1
  %inc628 = add nsw i32 %ii473.33578, 1
  %cmp597 = icmp slt i32 %ii473.33578, %sub595
  br i1 %cmp597, label %for.body598, label %for.cond596.for.end629_crit_edge

for.cond596.for.end629_crit_edge:                 ; preds = %for.end624
  %181 = add i32 %kstart477.43589, %stride479.43590
  %182 = add i32 %181, %168
  %183 = sub i32 %182, %175
  br label %for.end629

for.end629:                                       ; preds = %for.cond596.for.end629_crit_edge, %for.body591
  %mm.26.lcssa = phi i32 [ %mm.27.lcssa, %for.cond596.for.end629_crit_edge ], [ %mm.253591, %for.body591 ]
  %stride479.5.lcssa = phi i32 [ %165, %for.cond596.for.end629_crit_edge ], [ %stride479.43590, %for.body591 ]
  %kstart477.5.lcssa = phi i32 [ %183, %for.cond596.for.end629_crit_edge ], [ %kstart477.43589, %for.body591 ]
  %indvars.iv.next4258 = add i64 %indvars.iv4257, 1
  %lftr.wideiv4259 = trunc i64 %indvars.iv.next4258 to i32
  %exitcond4260 = icmp eq i32 %lftr.wideiv4259, %npivot
  br i1 %exitcond4260, label %sw.epilog2123, label %for.body591

if.else637:                                       ; preds = %sw.bb465
  %sub644 = add nsw i32 %add, -1
  %mul645 = shl i32 %3, 1
  %add646 = add i32 %4, -2
  %add647 = add i32 %add646, %mul645
  %sub648 = add i32 %add647, %5
  %type649 = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 4
  %184 = load i32* %type649, align 4, !tbaa !3
  switch i32 %184, label %sw.epilog2123 [
    i32 1, label %for.cond652.preheader
    i32 2, label %for.cond678.preheader
  ]

for.cond678.preheader:                            ; preds = %if.else637
  %cmp6793613 = icmp sgt i32 %3, 0
  br i1 %cmp6793613, label %for.body680, label %sw.epilog2123

for.cond652.preheader:                            ; preds = %if.else637
  %cmp6533600 = icmp sgt i32 %3, 0
  br i1 %cmp6533600, label %for.body654, label %sw.epilog2123

for.body654:                                      ; preds = %for.cond652.preheader, %for.end668
  %indvars.iv4266.in = phi i32 [ %indvars.iv4266, %for.end668 ], [ %add13, %for.cond652.preheader ]
  %mm.283604 = phi i32 [ %mm.29.lcssa, %for.end668 ], [ 0, %for.cond652.preheader ]
  %stride642.03603 = phi i32 [ %sub670, %for.end668 ], [ %sub648, %for.cond652.preheader ]
  %kstart641.03602 = phi i32 [ %add669, %for.end668 ], [ %sub644, %for.cond652.preheader ]
  %ii638.03601 = phi i32 [ %add656, %for.end668 ], [ 0, %for.cond652.preheader ]
  %indvars.iv4266 = add i32 %indvars.iv4266.in, -1
  %add656 = add nsw i32 %ii638.03601, 1
  %cmp6583594 = icmp slt i32 %add656, %add13
  br i1 %cmp6583594, label %for.body659.lr.ph, label %for.end668

for.body659.lr.ph:                                ; preds = %for.body654
  %185 = sext i32 %mm.283604 to i64
  br label %for.body659

for.body659:                                      ; preds = %for.body659, %for.body659.lr.ph
  %indvars.iv4264 = phi i64 [ %185, %for.body659.lr.ph ], [ %indvars.iv.next4265, %for.body659 ]
  %kk640.03597.in = phi i32 [ %kstart641.03602, %for.body659.lr.ph ], [ %kk640.03597, %for.body659 ]
  %jj639.03595 = phi i32 [ %add656, %for.body659.lr.ph ], [ %inc665, %for.body659 ]
  %kk640.03597 = add nsw i32 %kk640.03597.in, 1
  %idxprom660 = sext i32 %kk640.03597 to i64
  %arrayidx661 = getelementptr inbounds double* %call113, i64 %idxprom660
  %186 = load double* %arrayidx661, align 8, !tbaa !4
  %arrayidx663 = getelementptr inbounds double* %dvec, i64 %indvars.iv4264
  store double %186, double* %arrayidx663, align 8, !tbaa !4
  %inc665 = add nsw i32 %jj639.03595, 1
  %indvars.iv.next4265 = add i64 %indvars.iv4264, 1
  %exitcond4268 = icmp eq i32 %inc665, %add13
  br i1 %exitcond4268, label %for.cond657.for.end668_crit_edge, label %for.body659

for.cond657.for.end668_crit_edge:                 ; preds = %for.body659
  %187 = add i32 %mm.283604, %indvars.iv4266
  br label %for.end668

for.end668:                                       ; preds = %for.cond657.for.end668_crit_edge, %for.body654
  %mm.29.lcssa = phi i32 [ %187, %for.cond657.for.end668_crit_edge ], [ %mm.283604, %for.body654 ]
  %add669 = add nsw i32 %stride642.03603, %kstart641.03602
  %sub670 = add nsw i32 %stride642.03603, -2
  %exitcond4270 = icmp eq i32 %add656, %3
  br i1 %exitcond4270, label %sw.epilog2123, label %for.body654

for.body680:                                      ; preds = %for.cond678.preheader, %for.end704
  %indvars.iv4276.in = phi i32 [ %indvars.iv4276, %for.end704 ], [ %add13, %for.cond678.preheader ]
  %mm.303617 = phi i32 [ %mm.31.lcssa, %for.end704 ], [ 0, %for.cond678.preheader ]
  %stride642.13616 = phi i32 [ %sub706, %for.end704 ], [ %sub648, %for.cond678.preheader ]
  %kstart641.13615 = phi i32 [ %add705, %for.end704 ], [ %sub644, %for.cond678.preheader ]
  %ii638.13614 = phi i32 [ %add682, %for.end704 ], [ 0, %for.cond678.preheader ]
  %indvars.iv4276 = add i32 %indvars.iv4276.in, -1
  %add682 = add nsw i32 %ii638.13614, 1
  %cmp6843607 = icmp slt i32 %add682, %add13
  br i1 %cmp6843607, label %for.body685.lr.ph, label %for.end704

for.body685.lr.ph:                                ; preds = %for.body680
  %188 = sext i32 %mm.303617 to i64
  br label %for.body685

for.body685:                                      ; preds = %for.body685, %for.body685.lr.ph
  %indvars.iv4274 = phi i64 [ %188, %for.body685.lr.ph ], [ %indvars.iv.next4275, %for.body685 ]
  %kk640.13610.in = phi i32 [ %kstart641.13615, %for.body685.lr.ph ], [ %kk640.13610, %for.body685 ]
  %jj639.13608 = phi i32 [ %add682, %for.body685.lr.ph ], [ %inc701, %for.body685 ]
  %kk640.13610 = add nsw i32 %kk640.13610.in, 1
  %mul686 = shl nsw i32 %kk640.13610, 1
  %idxprom687 = sext i32 %mul686 to i64
  %arrayidx688 = getelementptr inbounds double* %call113, i64 %idxprom687
  %189 = load double* %arrayidx688, align 8, !tbaa !4
  %190 = trunc i64 %indvars.iv4274 to i32
  %mul689 = shl nsw i32 %190, 1
  %idxprom690 = sext i32 %mul689 to i64
  %arrayidx691 = getelementptr inbounds double* %dvec, i64 %idxprom690
  store double %189, double* %arrayidx691, align 8, !tbaa !4
  %add6933379 = or i32 %mul686, 1
  %idxprom694 = sext i32 %add6933379 to i64
  %arrayidx695 = getelementptr inbounds double* %call113, i64 %idxprom694
  %191 = load double* %arrayidx695, align 8, !tbaa !4
  %add6973380 = or i32 %mul689, 1
  %idxprom698 = sext i32 %add6973380 to i64
  %arrayidx699 = getelementptr inbounds double* %dvec, i64 %idxprom698
  store double %191, double* %arrayidx699, align 8, !tbaa !4
  %inc701 = add nsw i32 %jj639.13608, 1
  %indvars.iv.next4275 = add i64 %indvars.iv4274, 1
  %exitcond4278 = icmp eq i32 %inc701, %add13
  br i1 %exitcond4278, label %for.cond683.for.end704_crit_edge, label %for.body685

for.cond683.for.end704_crit_edge:                 ; preds = %for.body685
  %192 = add i32 %mm.303617, %indvars.iv4276
  br label %for.end704

for.end704:                                       ; preds = %for.cond683.for.end704_crit_edge, %for.body680
  %mm.31.lcssa = phi i32 [ %192, %for.cond683.for.end704_crit_edge ], [ %mm.303617, %for.body680 ]
  %add705 = add nsw i32 %stride642.13616, %kstart641.13615
  %sub706 = add nsw i32 %stride642.13616, -2
  %exitcond4279 = icmp eq i32 %add682, %3
  br i1 %exitcond4279, label %sw.epilog2123, label %for.body680

sw.bb713:                                         ; preds = %sw.bb464
  %193 = load i32* %symflag12, align 4, !tbaa !3
  %switch3401 = icmp ult i32 %193, 2
  br i1 %switch3401, label %if.then719, label %if.else939

if.then719:                                       ; preds = %sw.bb713
  %cmp731 = icmp eq i32* %pivotsizes, null
  %type733 = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 4
  %194 = load i32* %type733, align 4, !tbaa !3
  %cmp734 = icmp eq i32 %194, 1
  br i1 %cmp731, label %if.then732, label %if.else806

if.then732:                                       ; preds = %if.then719
  br i1 %cmp734, label %for.cond736.preheader, label %if.else763

for.cond736.preheader:                            ; preds = %if.then732
  %cmp7373626 = icmp sgt i32 %add13, 0
  br i1 %cmp7373626, label %for.body738.lr.ph, label %sw.epilog2123

for.body738.lr.ph:                                ; preds = %for.cond736.preheader
  %195 = sext i32 %add13 to i64
  %196 = xor i32 %3, -1
  br label %for.body738

for.body738:                                      ; preds = %for.end758, %for.body738.lr.ph
  %indvars.iv4285 = phi i32 [ -1, %for.body738.lr.ph ], [ %indvars.iv.next4286, %for.end758 ]
  %mm.323629 = phi i32 [ 0, %for.body738.lr.ph ], [ %mm.33.lcssa, %for.end758 ]
  %kstart726.03628 = phi i32 [ 0, %for.body738.lr.ph ], [ %inc759, %for.end758 ]
  %197 = icmp sgt i32 %indvars.iv4285, %196
  %smax4287 = select i1 %197, i32 %indvars.iv4285, i32 %196
  %198 = sub i32 -2, %smax4287
  %199 = icmp sgt i32 %198, 0
  %smax4288 = select i1 %199, i32 %198, i32 0
  %cmp739 = icmp slt i32 %kstart726.03628, %3
  %.sink2126 = select i1 %cmp739, i32 %kstart726.03628, i32 %3
  %sub741 = add nsw i32 %.sink2126, -1
  %cmp7473619 = icmp slt i32 %.sink2126, 1
  br i1 %cmp7473619, label %for.end758, label %for.body748.lr.ph

for.body748.lr.ph:                                ; preds = %for.body738
  %200 = sext i32 %mm.323629 to i64
  %201 = add i32 %mm.323629, 1
  br label %for.body748

for.body748:                                      ; preds = %for.body748, %for.body748.lr.ph
  %indvars.iv4282.in = phi i64 [ %indvars.iv4282, %for.body748 ], [ %195, %for.body748.lr.ph ]
  %indvars.iv4280 = phi i64 [ %indvars.iv.next4281, %for.body748 ], [ %200, %for.body748.lr.ph ]
  %kk725.03622 = phi i32 [ %add753, %for.body748 ], [ %kstart726.03628, %for.body748.lr.ph ]
  %ii721.03620 = phi i32 [ %inc756, %for.body748 ], [ 0, %for.body748.lr.ph ]
  %indvars.iv4282 = add i64 %indvars.iv4282.in, -1
  %idxprom749 = sext i32 %kk725.03622 to i64
  %arrayidx750 = getelementptr inbounds double* %call113, i64 %idxprom749
  %202 = load double* %arrayidx750, align 8, !tbaa !4
  %arrayidx752 = getelementptr inbounds double* %dvec, i64 %indvars.iv4280
  store double %202, double* %arrayidx752, align 8, !tbaa !4
  %203 = trunc i64 %indvars.iv4282 to i32
  %add753 = add nsw i32 %kk725.03622, %203
  %inc756 = add nsw i32 %ii721.03620, 1
  %indvars.iv.next4281 = add i64 %indvars.iv4280, 1
  %cmp747 = icmp slt i32 %ii721.03620, %sub741
  br i1 %cmp747, label %for.body748, label %for.cond746.for.end758_crit_edge

for.cond746.for.end758_crit_edge:                 ; preds = %for.body748
  %204 = add i32 %201, %smax4288
  br label %for.end758

for.end758:                                       ; preds = %for.cond746.for.end758_crit_edge, %for.body738
  %mm.33.lcssa = phi i32 [ %204, %for.cond746.for.end758_crit_edge ], [ %mm.323629, %for.body738 ]
  %inc759 = add nsw i32 %kstart726.03628, 1
  %indvars.iv.next4286 = add i32 %indvars.iv4285, -1
  %exitcond4289 = icmp eq i32 %inc759, %add13
  br i1 %exitcond4289, label %sw.epilog2123, label %for.body738

if.else763:                                       ; preds = %if.then732
  %cmp765 = icmp eq i32 %194, 2
  %cmp7683638 = icmp sgt i32 %add13, 0
  %or.cond4631 = and i1 %cmp765, %cmp7683638
  br i1 %or.cond4631, label %for.body769.lr.ph, label %sw.epilog2123

for.body769.lr.ph:                                ; preds = %if.else763
  %205 = sext i32 %add13 to i64
  %206 = xor i32 %3, -1
  br label %for.body769

for.body769:                                      ; preds = %for.end799, %for.body769.lr.ph
  %indvars.iv4295 = phi i32 [ -1, %for.body769.lr.ph ], [ %indvars.iv.next4296, %for.end799 ]
  %mm.343641 = phi i32 [ 0, %for.body769.lr.ph ], [ %mm.35.lcssa, %for.end799 ]
  %kstart726.13640 = phi i32 [ 0, %for.body769.lr.ph ], [ %inc800, %for.end799 ]
  %207 = icmp sgt i32 %indvars.iv4295, %206
  %smax4297 = select i1 %207, i32 %indvars.iv4295, i32 %206
  %208 = sub i32 -2, %smax4297
  %209 = icmp sgt i32 %208, 0
  %smax4298 = select i1 %209, i32 %208, i32 0
  %cmp770 = icmp slt i32 %kstart726.13640, %3
  %.sink2127 = select i1 %cmp770, i32 %kstart726.13640, i32 %3
  %sub772 = add nsw i32 %.sink2127, -1
  %cmp7783631 = icmp slt i32 %.sink2127, 1
  br i1 %cmp7783631, label %for.end799, label %for.body779.lr.ph

for.body779.lr.ph:                                ; preds = %for.body769
  %210 = sext i32 %mm.343641 to i64
  %211 = add i32 %mm.343641, 1
  br label %for.body779

for.body779:                                      ; preds = %for.body779, %for.body779.lr.ph
  %indvars.iv4292.in = phi i64 [ %indvars.iv4292, %for.body779 ], [ %205, %for.body779.lr.ph ]
  %indvars.iv4290 = phi i64 [ %indvars.iv.next4291, %for.body779 ], [ %210, %for.body779.lr.ph ]
  %kk725.13634 = phi i32 [ %add794, %for.body779 ], [ %kstart726.13640, %for.body779.lr.ph ]
  %ii721.13632 = phi i32 [ %inc797, %for.body779 ], [ 0, %for.body779.lr.ph ]
  %indvars.iv4292 = add i64 %indvars.iv4292.in, -1
  %mul780 = shl nsw i32 %kk725.13634, 1
  %idxprom781 = sext i32 %mul780 to i64
  %arrayidx782 = getelementptr inbounds double* %call113, i64 %idxprom781
  %212 = load double* %arrayidx782, align 8, !tbaa !4
  %213 = trunc i64 %indvars.iv4290 to i32
  %mul783 = shl nsw i32 %213, 1
  %idxprom784 = sext i32 %mul783 to i64
  %arrayidx785 = getelementptr inbounds double* %dvec, i64 %idxprom784
  store double %212, double* %arrayidx785, align 8, !tbaa !4
  %add7873377 = or i32 %mul780, 1
  %idxprom788 = sext i32 %add7873377 to i64
  %arrayidx789 = getelementptr inbounds double* %call113, i64 %idxprom788
  %214 = load double* %arrayidx789, align 8, !tbaa !4
  %add7913378 = or i32 %mul783, 1
  %idxprom792 = sext i32 %add7913378 to i64
  %arrayidx793 = getelementptr inbounds double* %dvec, i64 %idxprom792
  store double %214, double* %arrayidx793, align 8, !tbaa !4
  %215 = trunc i64 %indvars.iv4292 to i32
  %add794 = add nsw i32 %kk725.13634, %215
  %inc797 = add nsw i32 %ii721.13632, 1
  %indvars.iv.next4291 = add i64 %indvars.iv4290, 1
  %cmp778 = icmp slt i32 %ii721.13632, %sub772
  br i1 %cmp778, label %for.body779, label %for.cond777.for.end799_crit_edge

for.cond777.for.end799_crit_edge:                 ; preds = %for.body779
  %216 = add i32 %211, %smax4298
  br label %for.end799

for.end799:                                       ; preds = %for.cond777.for.end799_crit_edge, %for.body769
  %mm.35.lcssa = phi i32 [ %216, %for.cond777.for.end799_crit_edge ], [ %mm.343641, %for.body769 ]
  %inc800 = add nsw i32 %kstart726.13640, 1
  %indvars.iv.next4296 = add i32 %indvars.iv4295, -1
  %exitcond4299 = icmp eq i32 %inc800, %add13
  br i1 %exitcond4299, label %sw.epilog2123, label %for.body769

if.else806:                                       ; preds = %if.then719
  br i1 %cmp734, label %for.cond810.preheader, label %if.else861

for.cond810.preheader:                            ; preds = %if.else806
  %cmp8113667 = icmp sgt i32 %npivot, 0
  br i1 %cmp8113667, label %for.body812.lr.ph, label %for.cond841.preheader

for.body812.lr.ph:                                ; preds = %for.cond810.preheader
  %217 = add i32 %add13, -1
  %218 = sext i32 %217 to i64
  br label %for.body812

for.cond841.preheader:                            ; preds = %for.end836, %for.cond810.preheader
  %mm.36.lcssa = phi i32 [ 0, %for.cond810.preheader ], [ %mm.37.lcssa, %for.end836 ]
  %kstart726.2.lcssa = phi i32 [ 0, %for.cond810.preheader ], [ %kstart726.3.lcssa, %for.end836 ]
  %cmp8423650 = icmp sgt i32 %5, 0
  br i1 %cmp8423650, label %for.cond844.preheader.lr.ph, label %sw.epilog2123

for.cond844.preheader.lr.ph:                      ; preds = %for.cond841.preheader
  %cmp8453643 = icmp sgt i32 %3, 0
  %219 = add i32 %add13, -1
  %220 = sext i32 %219 to i64
  br label %for.cond844.preheader

for.body812:                                      ; preds = %for.end836, %for.body812.lr.ph
  %indvars.iv4313 = phi i64 [ 0, %for.body812.lr.ph ], [ %indvars.iv.next4314, %for.end836 ]
  %mm.363671 = phi i32 [ 0, %for.body812.lr.ph ], [ %mm.37.lcssa, %for.end836 ]
  %kstart726.23670 = phi i32 [ 0, %for.body812.lr.ph ], [ %kstart726.3.lcssa, %for.end836 ]
  %first720.03668 = phi i32 [ 0, %for.body812.lr.ph ], [ %add815, %for.end836 ]
  %arrayidx814 = getelementptr inbounds i32* %pivotsizes, i64 %indvars.iv4313
  %221 = load i32* %arrayidx814, align 4, !tbaa !3
  %add815 = add nsw i32 %221, %first720.03668
  %sub816 = add nsw i32 %add815, -1
  %cmp8183661 = icmp sgt i32 %first720.03668, %sub816
  br i1 %cmp8183661, label %for.end836, label %for.cond820.preheader.lr.ph

for.cond820.preheader.lr.ph:                      ; preds = %for.body812
  %cmp8213655 = icmp sgt i32 %first720.03668, 0
  %222 = add i32 %kstart726.23670, 1
  %223 = add i32 %first720.03668, -1
  %224 = add i32 %223, %221
  %225 = icmp sgt i32 %first720.03668, %224
  %smax4312 = select i1 %225, i32 %first720.03668, i32 %224
  %226 = add i32 %222, %smax4312
  br label %for.cond820.preheader

for.cond820.preheader:                            ; preds = %for.end832, %for.cond820.preheader.lr.ph
  %mm.373664 = phi i32 [ %mm.363671, %for.cond820.preheader.lr.ph ], [ %mm.38.lcssa, %for.end832 ]
  %kstart726.33663 = phi i32 [ %kstart726.23670, %for.cond820.preheader.lr.ph ], [ %inc833, %for.end832 ]
  %jj723.23662 = phi i32 [ %first720.03668, %for.cond820.preheader.lr.ph ], [ %inc835, %for.end832 ]
  br i1 %cmp8213655, label %for.body822.lr.ph, label %for.end832

for.body822.lr.ph:                                ; preds = %for.cond820.preheader
  %227 = sext i32 %mm.373664 to i64
  br label %for.body822

for.body822:                                      ; preds = %for.body822, %for.body822.lr.ph
  %indvars.iv4308 = phi i64 [ %218, %for.body822.lr.ph ], [ %indvars.iv.next4309, %for.body822 ]
  %indvars.iv4306 = phi i64 [ %227, %for.body822.lr.ph ], [ %indvars.iv.next4307, %for.body822 ]
  %kk725.23658 = phi i32 [ %kstart726.33663, %for.body822.lr.ph ], [ %add827, %for.body822 ]
  %ii721.23656 = phi i32 [ 0, %for.body822.lr.ph ], [ %inc830, %for.body822 ]
  %idxprom823 = sext i32 %kk725.23658 to i64
  %arrayidx824 = getelementptr inbounds double* %call113, i64 %idxprom823
  %228 = load double* %arrayidx824, align 8, !tbaa !4
  %arrayidx826 = getelementptr inbounds double* %dvec, i64 %indvars.iv4306
  store double %228, double* %arrayidx826, align 8, !tbaa !4
  %229 = trunc i64 %indvars.iv4308 to i32
  %add827 = add nsw i32 %kk725.23658, %229
  %inc830 = add nsw i32 %ii721.23656, 1
  %indvars.iv.next4307 = add i64 %indvars.iv4306, 1
  %indvars.iv.next4309 = add i64 %indvars.iv4308, -1
  %exitcond4311 = icmp eq i32 %inc830, %first720.03668
  br i1 %exitcond4311, label %for.cond820.for.end832_crit_edge, label %for.body822

for.cond820.for.end832_crit_edge:                 ; preds = %for.body822
  %230 = add i32 %first720.03668, %mm.373664
  br label %for.end832

for.end832:                                       ; preds = %for.cond820.for.end832_crit_edge, %for.cond820.preheader
  %mm.38.lcssa = phi i32 [ %230, %for.cond820.for.end832_crit_edge ], [ %mm.373664, %for.cond820.preheader ]
  %inc833 = add nsw i32 %kstart726.33663, 1
  %inc835 = add nsw i32 %jj723.23662, 1
  %cmp818 = icmp slt i32 %jj723.23662, %sub816
  br i1 %cmp818, label %for.cond820.preheader, label %for.cond817.for.end836_crit_edge

for.cond817.for.end836_crit_edge:                 ; preds = %for.end832
  %231 = sub i32 %226, %first720.03668
  br label %for.end836

for.end836:                                       ; preds = %for.cond817.for.end836_crit_edge, %for.body812
  %mm.37.lcssa = phi i32 [ %mm.38.lcssa, %for.cond817.for.end836_crit_edge ], [ %mm.363671, %for.body812 ]
  %kstart726.3.lcssa = phi i32 [ %231, %for.cond817.for.end836_crit_edge ], [ %kstart726.23670, %for.body812 ]
  %indvars.iv.next4314 = add i64 %indvars.iv4313, 1
  %lftr.wideiv4315 = trunc i64 %indvars.iv.next4314 to i32
  %exitcond4316 = icmp eq i32 %lftr.wideiv4315, %npivot
  br i1 %exitcond4316, label %for.cond841.preheader, label %for.body812

for.cond844.preheader:                            ; preds = %for.cond844.preheader.lr.ph, %for.end856
  %mm.393653 = phi i32 [ %mm.36.lcssa, %for.cond844.preheader.lr.ph ], [ %mm.40.lcssa, %for.end856 ]
  %kstart726.43652 = phi i32 [ %kstart726.2.lcssa, %for.cond844.preheader.lr.ph ], [ %inc857, %for.end856 ]
  %jj723.33651 = phi i32 [ %3, %for.cond844.preheader.lr.ph ], [ %inc859, %for.end856 ]
  br i1 %cmp8453643, label %for.body846.lr.ph, label %for.end856

for.body846.lr.ph:                                ; preds = %for.cond844.preheader
  %232 = sext i32 %mm.393653 to i64
  br label %for.body846

for.body846:                                      ; preds = %for.body846, %for.body846.lr.ph
  %indvars.iv4302 = phi i64 [ %220, %for.body846.lr.ph ], [ %indvars.iv.next4303, %for.body846 ]
  %indvars.iv4300 = phi i64 [ %232, %for.body846.lr.ph ], [ %indvars.iv.next4301, %for.body846 ]
  %kk725.33646 = phi i32 [ %kstart726.43652, %for.body846.lr.ph ], [ %add851, %for.body846 ]
  %ii721.33644 = phi i32 [ 0, %for.body846.lr.ph ], [ %inc854, %for.body846 ]
  %idxprom847 = sext i32 %kk725.33646 to i64
  %arrayidx848 = getelementptr inbounds double* %call113, i64 %idxprom847
  %233 = load double* %arrayidx848, align 8, !tbaa !4
  %arrayidx850 = getelementptr inbounds double* %dvec, i64 %indvars.iv4300
  store double %233, double* %arrayidx850, align 8, !tbaa !4
  %234 = trunc i64 %indvars.iv4302 to i32
  %add851 = add nsw i32 %kk725.33646, %234
  %inc854 = add nsw i32 %ii721.33644, 1
  %indvars.iv.next4301 = add i64 %indvars.iv4300, 1
  %indvars.iv.next4303 = add i64 %indvars.iv4302, -1
  %exitcond4305 = icmp eq i32 %inc854, %3
  br i1 %exitcond4305, label %for.cond844.for.end856_crit_edge, label %for.body846

for.cond844.for.end856_crit_edge:                 ; preds = %for.body846
  %235 = add i32 %3, %mm.393653
  br label %for.end856

for.end856:                                       ; preds = %for.cond844.for.end856_crit_edge, %for.cond844.preheader
  %mm.40.lcssa = phi i32 [ %235, %for.cond844.for.end856_crit_edge ], [ %mm.393653, %for.cond844.preheader ]
  %inc857 = add nsw i32 %kstart726.43652, 1
  %inc859 = add nsw i32 %jj723.33651, 1
  %cmp842 = icmp slt i32 %inc859, %add13
  br i1 %cmp842, label %for.cond844.preheader, label %sw.epilog2123

if.else861:                                       ; preds = %if.else806
  %cmp863 = icmp eq i32 %194, 2
  br i1 %cmp863, label %for.cond865.preheader, label %sw.epilog2123

for.cond865.preheader:                            ; preds = %if.else861
  %cmp8663698 = icmp sgt i32 %npivot, 0
  br i1 %cmp8663698, label %for.body867.lr.ph, label %for.cond906.preheader

for.body867.lr.ph:                                ; preds = %for.cond865.preheader
  %236 = add i32 %add13, -1
  %237 = sext i32 %236 to i64
  br label %for.body867

for.cond906.preheader:                            ; preds = %for.end901, %for.cond865.preheader
  %mm.41.lcssa = phi i32 [ 0, %for.cond865.preheader ], [ %mm.42.lcssa, %for.end901 ]
  %kstart726.5.lcssa = phi i32 [ 0, %for.cond865.preheader ], [ %kstart726.6.lcssa, %for.end901 ]
  %cmp9073681 = icmp sgt i32 %5, 0
  br i1 %cmp9073681, label %for.cond909.preheader.lr.ph, label %sw.epilog2123

for.cond909.preheader.lr.ph:                      ; preds = %for.cond906.preheader
  %cmp9103674 = icmp sgt i32 %3, 0
  %238 = add i32 %add13, -1
  %239 = sext i32 %238 to i64
  br label %for.cond909.preheader

for.body867:                                      ; preds = %for.end901, %for.body867.lr.ph
  %indvars.iv4330 = phi i64 [ 0, %for.body867.lr.ph ], [ %indvars.iv.next4331, %for.end901 ]
  %mm.413702 = phi i32 [ 0, %for.body867.lr.ph ], [ %mm.42.lcssa, %for.end901 ]
  %kstart726.53701 = phi i32 [ 0, %for.body867.lr.ph ], [ %kstart726.6.lcssa, %for.end901 ]
  %first720.13699 = phi i32 [ 0, %for.body867.lr.ph ], [ %add870, %for.end901 ]
  %arrayidx869 = getelementptr inbounds i32* %pivotsizes, i64 %indvars.iv4330
  %240 = load i32* %arrayidx869, align 4, !tbaa !3
  %add870 = add nsw i32 %240, %first720.13699
  %sub871 = add nsw i32 %add870, -1
  %cmp8733692 = icmp sgt i32 %first720.13699, %sub871
  br i1 %cmp8733692, label %for.end901, label %for.cond875.preheader.lr.ph

for.cond875.preheader.lr.ph:                      ; preds = %for.body867
  %cmp8763686 = icmp sgt i32 %first720.13699, 0
  %241 = add i32 %kstart726.53701, 1
  %242 = add i32 %first720.13699, -1
  %243 = add i32 %242, %240
  %244 = icmp sgt i32 %first720.13699, %243
  %smax4329 = select i1 %244, i32 %first720.13699, i32 %243
  %245 = add i32 %241, %smax4329
  br label %for.cond875.preheader

for.cond875.preheader:                            ; preds = %for.end897, %for.cond875.preheader.lr.ph
  %mm.423695 = phi i32 [ %mm.413702, %for.cond875.preheader.lr.ph ], [ %mm.43.lcssa, %for.end897 ]
  %kstart726.63694 = phi i32 [ %kstart726.53701, %for.cond875.preheader.lr.ph ], [ %inc898, %for.end897 ]
  %jj723.43693 = phi i32 [ %first720.13699, %for.cond875.preheader.lr.ph ], [ %inc900, %for.end897 ]
  br i1 %cmp8763686, label %for.body877.lr.ph, label %for.end897

for.body877.lr.ph:                                ; preds = %for.cond875.preheader
  %246 = sext i32 %mm.423695 to i64
  br label %for.body877

for.body877:                                      ; preds = %for.body877, %for.body877.lr.ph
  %indvars.iv4325 = phi i64 [ %237, %for.body877.lr.ph ], [ %indvars.iv.next4326, %for.body877 ]
  %indvars.iv4323 = phi i64 [ %246, %for.body877.lr.ph ], [ %indvars.iv.next4324, %for.body877 ]
  %kk725.43689 = phi i32 [ %kstart726.63694, %for.body877.lr.ph ], [ %add892, %for.body877 ]
  %ii721.43687 = phi i32 [ 0, %for.body877.lr.ph ], [ %inc895, %for.body877 ]
  %mul878 = shl nsw i32 %kk725.43689, 1
  %idxprom879 = sext i32 %mul878 to i64
  %arrayidx880 = getelementptr inbounds double* %call113, i64 %idxprom879
  %247 = load double* %arrayidx880, align 8, !tbaa !4
  %248 = trunc i64 %indvars.iv4323 to i32
  %mul881 = shl nsw i32 %248, 1
  %idxprom882 = sext i32 %mul881 to i64
  %arrayidx883 = getelementptr inbounds double* %dvec, i64 %idxprom882
  store double %247, double* %arrayidx883, align 8, !tbaa !4
  %add8853375 = or i32 %mul878, 1
  %idxprom886 = sext i32 %add8853375 to i64
  %arrayidx887 = getelementptr inbounds double* %call113, i64 %idxprom886
  %249 = load double* %arrayidx887, align 8, !tbaa !4
  %add8893376 = or i32 %mul881, 1
  %idxprom890 = sext i32 %add8893376 to i64
  %arrayidx891 = getelementptr inbounds double* %dvec, i64 %idxprom890
  store double %249, double* %arrayidx891, align 8, !tbaa !4
  %250 = trunc i64 %indvars.iv4325 to i32
  %add892 = add nsw i32 %kk725.43689, %250
  %inc895 = add nsw i32 %ii721.43687, 1
  %indvars.iv.next4324 = add i64 %indvars.iv4323, 1
  %indvars.iv.next4326 = add i64 %indvars.iv4325, -1
  %exitcond4328 = icmp eq i32 %inc895, %first720.13699
  br i1 %exitcond4328, label %for.cond875.for.end897_crit_edge, label %for.body877

for.cond875.for.end897_crit_edge:                 ; preds = %for.body877
  %251 = add i32 %first720.13699, %mm.423695
  br label %for.end897

for.end897:                                       ; preds = %for.cond875.for.end897_crit_edge, %for.cond875.preheader
  %mm.43.lcssa = phi i32 [ %251, %for.cond875.for.end897_crit_edge ], [ %mm.423695, %for.cond875.preheader ]
  %inc898 = add nsw i32 %kstart726.63694, 1
  %inc900 = add nsw i32 %jj723.43693, 1
  %cmp873 = icmp slt i32 %jj723.43693, %sub871
  br i1 %cmp873, label %for.cond875.preheader, label %for.cond872.for.end901_crit_edge

for.cond872.for.end901_crit_edge:                 ; preds = %for.end897
  %252 = sub i32 %245, %first720.13699
  br label %for.end901

for.end901:                                       ; preds = %for.cond872.for.end901_crit_edge, %for.body867
  %mm.42.lcssa = phi i32 [ %mm.43.lcssa, %for.cond872.for.end901_crit_edge ], [ %mm.413702, %for.body867 ]
  %kstart726.6.lcssa = phi i32 [ %252, %for.cond872.for.end901_crit_edge ], [ %kstart726.53701, %for.body867 ]
  %indvars.iv.next4331 = add i64 %indvars.iv4330, 1
  %lftr.wideiv4332 = trunc i64 %indvars.iv.next4331 to i32
  %exitcond4333 = icmp eq i32 %lftr.wideiv4332, %npivot
  br i1 %exitcond4333, label %for.cond906.preheader, label %for.body867

for.cond909.preheader:                            ; preds = %for.cond909.preheader.lr.ph, %for.end931
  %mm.443684 = phi i32 [ %mm.41.lcssa, %for.cond909.preheader.lr.ph ], [ %mm.45.lcssa, %for.end931 ]
  %kstart726.73683 = phi i32 [ %kstart726.5.lcssa, %for.cond909.preheader.lr.ph ], [ %inc932, %for.end931 ]
  %jj723.53682 = phi i32 [ %3, %for.cond909.preheader.lr.ph ], [ %inc934, %for.end931 ]
  br i1 %cmp9103674, label %for.body911.lr.ph, label %for.end931

for.body911.lr.ph:                                ; preds = %for.cond909.preheader
  %253 = sext i32 %mm.443684 to i64
  br label %for.body911

for.body911:                                      ; preds = %for.body911, %for.body911.lr.ph
  %indvars.iv4319 = phi i64 [ %239, %for.body911.lr.ph ], [ %indvars.iv.next4320, %for.body911 ]
  %indvars.iv4317 = phi i64 [ %253, %for.body911.lr.ph ], [ %indvars.iv.next4318, %for.body911 ]
  %kk725.53677 = phi i32 [ %kstart726.73683, %for.body911.lr.ph ], [ %add926, %for.body911 ]
  %ii721.53675 = phi i32 [ 0, %for.body911.lr.ph ], [ %inc929, %for.body911 ]
  %mul912 = shl nsw i32 %kk725.53677, 1
  %idxprom913 = sext i32 %mul912 to i64
  %arrayidx914 = getelementptr inbounds double* %call113, i64 %idxprom913
  %254 = load double* %arrayidx914, align 8, !tbaa !4
  %255 = trunc i64 %indvars.iv4317 to i32
  %mul915 = shl nsw i32 %255, 1
  %idxprom916 = sext i32 %mul915 to i64
  %arrayidx917 = getelementptr inbounds double* %dvec, i64 %idxprom916
  store double %254, double* %arrayidx917, align 8, !tbaa !4
  %add9193373 = or i32 %mul912, 1
  %idxprom920 = sext i32 %add9193373 to i64
  %arrayidx921 = getelementptr inbounds double* %call113, i64 %idxprom920
  %256 = load double* %arrayidx921, align 8, !tbaa !4
  %add9233374 = or i32 %mul915, 1
  %idxprom924 = sext i32 %add9233374 to i64
  %arrayidx925 = getelementptr inbounds double* %dvec, i64 %idxprom924
  store double %256, double* %arrayidx925, align 8, !tbaa !4
  %257 = trunc i64 %indvars.iv4319 to i32
  %add926 = add nsw i32 %kk725.53677, %257
  %inc929 = add nsw i32 %ii721.53675, 1
  %indvars.iv.next4318 = add i64 %indvars.iv4317, 1
  %indvars.iv.next4320 = add i64 %indvars.iv4319, -1
  %exitcond4322 = icmp eq i32 %inc929, %3
  br i1 %exitcond4322, label %for.cond909.for.end931_crit_edge, label %for.body911

for.cond909.for.end931_crit_edge:                 ; preds = %for.body911
  %258 = add i32 %3, %mm.443684
  br label %for.end931

for.end931:                                       ; preds = %for.cond909.for.end931_crit_edge, %for.cond909.preheader
  %mm.45.lcssa = phi i32 [ %258, %for.cond909.for.end931_crit_edge ], [ %mm.443684, %for.cond909.preheader ]
  %inc932 = add nsw i32 %kstart726.73683, 1
  %inc934 = add nsw i32 %jj723.53682, 1
  %cmp907 = icmp slt i32 %inc934, %add13
  br i1 %cmp907, label %for.cond909.preheader, label %sw.epilog2123

if.else939:                                       ; preds = %sw.bb713
  %sub948 = add nsw i32 %add, -1
  %type953 = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 4
  %259 = load i32* %type953, align 4, !tbaa !3
  switch i32 %259, label %sw.epilog2123 [
    i32 1, label %for.cond956.preheader
    i32 2, label %for.cond987.preheader
  ]

for.cond987.preheader:                            ; preds = %if.else939
  %cmp9883724 = icmp sgt i32 %add13, 0
  br i1 %cmp9883724, label %for.body989.lr.ph, label %sw.epilog2123

for.body989.lr.ph:                                ; preds = %for.cond987.preheader
  %260 = add i32 %4, %5
  %261 = shl i32 %3, 1
  %262 = add i32 %260, %261
  %263 = add i32 %262, -3
  %264 = sext i32 %263 to i64
  %265 = xor i32 %3, -1
  br label %for.body989

for.cond956.preheader:                            ; preds = %if.else939
  %cmp9573712 = icmp sgt i32 %add13, 0
  br i1 %cmp9573712, label %for.body958.lr.ph, label %sw.epilog2123

for.body958.lr.ph:                                ; preds = %for.cond956.preheader
  %266 = add i32 %4, %5
  %267 = shl i32 %3, 1
  %268 = add i32 %266, %267
  %269 = add i32 %268, -3
  %270 = sext i32 %269 to i64
  %271 = xor i32 %3, -1
  br label %for.body958

for.body958:                                      ; preds = %for.end978, %for.body958.lr.ph
  %indvars.iv4339 = phi i32 [ -1, %for.body958.lr.ph ], [ %indvars.iv.next4340, %for.end978 ]
  %mm.463715 = phi i32 [ 0, %for.body958.lr.ph ], [ %mm.47.lcssa, %for.end978 ]
  %kstart945.03714 = phi i32 [ %sub948, %for.body958.lr.ph ], [ %inc979, %for.end978 ]
  %jj942.03713 = phi i32 [ 0, %for.body958.lr.ph ], [ %inc981, %for.end978 ]
  %272 = icmp sgt i32 %indvars.iv4339, %271
  %smax4341 = select i1 %272, i32 %indvars.iv4339, i32 %271
  %273 = sub i32 -2, %smax4341
  %274 = icmp sgt i32 %273, 0
  %smax4342 = select i1 %274, i32 %273, i32 0
  %cmp959 = icmp slt i32 %jj942.03713, %3
  %.sink2128 = select i1 %cmp959, i32 %jj942.03713, i32 %3
  %sub961 = add nsw i32 %.sink2128, -1
  %cmp9673705 = icmp slt i32 %.sink2128, 1
  br i1 %cmp9673705, label %for.end978, label %for.body968.lr.ph

for.body968.lr.ph:                                ; preds = %for.body958
  %275 = sext i32 %mm.463715 to i64
  %276 = add i32 %mm.463715, 1
  br label %for.body968

for.body968:                                      ; preds = %for.body968, %for.body968.lr.ph
  %indvars.iv4336 = phi i64 [ %indvars.iv.next4337, %for.body968 ], [ %270, %for.body968.lr.ph ]
  %indvars.iv4334 = phi i64 [ %indvars.iv.next4335, %for.body968 ], [ %275, %for.body968.lr.ph ]
  %kk944.03708 = phi i32 [ %add973, %for.body968 ], [ %kstart945.03714, %for.body968.lr.ph ]
  %ii940.03706 = phi i32 [ %inc976, %for.body968 ], [ 0, %for.body968.lr.ph ]
  %idxprom969 = sext i32 %kk944.03708 to i64
  %arrayidx970 = getelementptr inbounds double* %call113, i64 %idxprom969
  %277 = load double* %arrayidx970, align 8, !tbaa !4
  %arrayidx972 = getelementptr inbounds double* %dvec, i64 %indvars.iv4334
  store double %277, double* %arrayidx972, align 8, !tbaa !4
  %278 = trunc i64 %indvars.iv4336 to i32
  %add973 = add nsw i32 %kk944.03708, %278
  %inc976 = add nsw i32 %ii940.03706, 1
  %indvars.iv.next4335 = add i64 %indvars.iv4334, 1
  %cmp967 = icmp slt i32 %ii940.03706, %sub961
  %indvars.iv.next4337 = add i64 %indvars.iv4336, -2
  br i1 %cmp967, label %for.body968, label %for.cond966.for.end978_crit_edge

for.cond966.for.end978_crit_edge:                 ; preds = %for.body968
  %279 = add i32 %276, %smax4342
  br label %for.end978

for.end978:                                       ; preds = %for.cond966.for.end978_crit_edge, %for.body958
  %mm.47.lcssa = phi i32 [ %279, %for.cond966.for.end978_crit_edge ], [ %mm.463715, %for.body958 ]
  %inc979 = add nsw i32 %kstart945.03714, 1
  %inc981 = add nsw i32 %jj942.03713, 1
  %indvars.iv.next4340 = add i32 %indvars.iv4339, -1
  %exitcond4343 = icmp eq i32 %inc981, %add13
  br i1 %exitcond4343, label %sw.epilog2123, label %for.body958

for.body989:                                      ; preds = %for.end1019, %for.body989.lr.ph
  %indvars.iv4349 = phi i32 [ -1, %for.body989.lr.ph ], [ %indvars.iv.next4350, %for.end1019 ]
  %mm.483727 = phi i32 [ 0, %for.body989.lr.ph ], [ %mm.49.lcssa, %for.end1019 ]
  %kstart945.13726 = phi i32 [ %sub948, %for.body989.lr.ph ], [ %inc1020, %for.end1019 ]
  %jj942.13725 = phi i32 [ 0, %for.body989.lr.ph ], [ %inc1022, %for.end1019 ]
  %280 = icmp sgt i32 %indvars.iv4349, %265
  %smax4351 = select i1 %280, i32 %indvars.iv4349, i32 %265
  %281 = sub i32 -2, %smax4351
  %282 = icmp sgt i32 %281, 0
  %smax4352 = select i1 %282, i32 %281, i32 0
  %cmp990 = icmp slt i32 %jj942.13725, %3
  %.sink2129 = select i1 %cmp990, i32 %jj942.13725, i32 %3
  %sub992 = add nsw i32 %.sink2129, -1
  %cmp9983717 = icmp slt i32 %.sink2129, 1
  br i1 %cmp9983717, label %for.end1019, label %for.body999.lr.ph

for.body999.lr.ph:                                ; preds = %for.body989
  %283 = sext i32 %mm.483727 to i64
  %284 = add i32 %mm.483727, 1
  br label %for.body999

for.body999:                                      ; preds = %for.body999, %for.body999.lr.ph
  %indvars.iv4346 = phi i64 [ %indvars.iv.next4347, %for.body999 ], [ %264, %for.body999.lr.ph ]
  %indvars.iv4344 = phi i64 [ %indvars.iv.next4345, %for.body999 ], [ %283, %for.body999.lr.ph ]
  %kk944.13720 = phi i32 [ %add1014, %for.body999 ], [ %kstart945.13726, %for.body999.lr.ph ]
  %ii940.13718 = phi i32 [ %inc1017, %for.body999 ], [ 0, %for.body999.lr.ph ]
  %mul1000 = shl nsw i32 %kk944.13720, 1
  %idxprom1001 = sext i32 %mul1000 to i64
  %arrayidx1002 = getelementptr inbounds double* %call113, i64 %idxprom1001
  %285 = load double* %arrayidx1002, align 8, !tbaa !4
  %286 = trunc i64 %indvars.iv4344 to i32
  %mul1003 = shl nsw i32 %286, 1
  %idxprom1004 = sext i32 %mul1003 to i64
  %arrayidx1005 = getelementptr inbounds double* %dvec, i64 %idxprom1004
  store double %285, double* %arrayidx1005, align 8, !tbaa !4
  %add10073371 = or i32 %mul1000, 1
  %idxprom1008 = sext i32 %add10073371 to i64
  %arrayidx1009 = getelementptr inbounds double* %call113, i64 %idxprom1008
  %287 = load double* %arrayidx1009, align 8, !tbaa !4
  %add10113372 = or i32 %mul1003, 1
  %idxprom1012 = sext i32 %add10113372 to i64
  %arrayidx1013 = getelementptr inbounds double* %dvec, i64 %idxprom1012
  store double %287, double* %arrayidx1013, align 8, !tbaa !4
  %288 = trunc i64 %indvars.iv4346 to i32
  %add1014 = add nsw i32 %kk944.13720, %288
  %inc1017 = add nsw i32 %ii940.13718, 1
  %indvars.iv.next4345 = add i64 %indvars.iv4344, 1
  %cmp998 = icmp slt i32 %ii940.13718, %sub992
  %indvars.iv.next4347 = add i64 %indvars.iv4346, -2
  br i1 %cmp998, label %for.body999, label %for.cond997.for.end1019_crit_edge

for.cond997.for.end1019_crit_edge:                ; preds = %for.body999
  %289 = add i32 %284, %smax4352
  br label %for.end1019

for.end1019:                                      ; preds = %for.cond997.for.end1019_crit_edge, %for.body989
  %mm.49.lcssa = phi i32 [ %289, %for.cond997.for.end1019_crit_edge ], [ %mm.483727, %for.body989 ]
  %inc1020 = add nsw i32 %kstart945.13726, 1
  %inc1022 = add nsw i32 %jj942.13725, 1
  %indvars.iv.next4350 = add i32 %indvars.iv4349, -1
  %exitcond4353 = icmp eq i32 %inc1022, %add13
  br i1 %exitcond4353, label %sw.epilog2123, label %for.body989

sw.bb1029:                                        ; preds = %if.end112
  switch i32 %storeflag, label %sw.epilog2123 [
    i32 0, label %sw.bb1030
    i32 1, label %sw.bb1105
  ]

sw.bb1030:                                        ; preds = %sw.bb1029
  %sub1039 = add nsw i32 %add, -1
  %type1044 = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 4
  %290 = load i32* %type1044, align 4, !tbaa !3
  switch i32 %290, label %sw.epilog2123 [
    i32 1, label %for.cond1047.preheader
    i32 2, label %for.cond1072.preheader
  ]

for.cond1072.preheader:                           ; preds = %sw.bb1030
  %cmp10733748 = icmp sgt i32 %3, 0
  br i1 %cmp10733748, label %for.body1074.lr.ph, label %sw.epilog2123

for.body1074.lr.ph:                               ; preds = %for.cond1072.preheader
  %291 = add i32 %4, %5
  %292 = shl i32 %3, 1
  %293 = add i32 %291, %292
  %294 = add i32 %293, -1
  %295 = sext i32 %294 to i64
  br label %for.body1074

for.cond1047.preheader:                           ; preds = %sw.bb1030
  %cmp10483736 = icmp sgt i32 %3, 0
  br i1 %cmp10483736, label %for.body1049.lr.ph, label %sw.epilog2123

for.body1049.lr.ph:                               ; preds = %for.cond1047.preheader
  %296 = add i32 %4, %5
  %297 = shl i32 %3, 1
  %298 = add i32 %296, %297
  %299 = add i32 %298, -1
  %300 = sext i32 %299 to i64
  br label %for.body1049

for.body1049:                                     ; preds = %for.end1063, %for.body1049.lr.ph
  %indvars.iv4359 = phi i32 [ -1, %for.body1049.lr.ph ], [ %indvars.iv.next4360, %for.end1063 ]
  %mm.503739 = phi i32 [ 0, %for.body1049.lr.ph ], [ %mm.51.lcssa, %for.end1063 ]
  %kstart1036.03738 = phi i32 [ %sub1039, %for.body1049.lr.ph ], [ %dec1064, %for.end1063 ]
  %ii1031.03737 = phi i32 [ 0, %for.body1049.lr.ph ], [ %inc1066, %for.end1063 ]
  %301 = icmp sgt i32 %indvars.iv4359, 0
  %smax4361 = select i1 %301, i32 %indvars.iv4359, i32 0
  %sub1050 = add nsw i32 %ii1031.03737, -1
  %cmp10523729 = icmp slt i32 %ii1031.03737, 1
  br i1 %cmp10523729, label %for.end1063, label %for.body1053.lr.ph

for.body1053.lr.ph:                               ; preds = %for.body1049
  %302 = sext i32 %mm.503739 to i64
  %303 = add i32 %mm.503739, 1
  br label %for.body1053

for.body1053:                                     ; preds = %for.body1053, %for.body1053.lr.ph
  %indvars.iv4356 = phi i64 [ %indvars.iv.next4357, %for.body1053 ], [ %300, %for.body1053.lr.ph ]
  %indvars.iv4354 = phi i64 [ %indvars.iv.next4355, %for.body1053 ], [ %302, %for.body1053.lr.ph ]
  %kk1035.03732 = phi i32 [ %add1058, %for.body1053 ], [ %kstart1036.03738, %for.body1053.lr.ph ]
  %jj1032.03730 = phi i32 [ %inc1061, %for.body1053 ], [ 0, %for.body1053.lr.ph ]
  %idxprom1054 = sext i32 %kk1035.03732 to i64
  %arrayidx1055 = getelementptr inbounds double* %call113, i64 %idxprom1054
  %304 = load double* %arrayidx1055, align 8, !tbaa !4
  %arrayidx1057 = getelementptr inbounds double* %dvec, i64 %indvars.iv4354
  store double %304, double* %arrayidx1057, align 8, !tbaa !4
  %305 = trunc i64 %indvars.iv4356 to i32
  %add1058 = add nsw i32 %kk1035.03732, %305
  %inc1061 = add nsw i32 %jj1032.03730, 1
  %indvars.iv.next4355 = add i64 %indvars.iv4354, 1
  %cmp1052 = icmp slt i32 %jj1032.03730, %sub1050
  %indvars.iv.next4357 = add i64 %indvars.iv4356, -2
  br i1 %cmp1052, label %for.body1053, label %for.cond1051.for.end1063_crit_edge

for.cond1051.for.end1063_crit_edge:               ; preds = %for.body1053
  %306 = add i32 %303, %smax4361
  br label %for.end1063

for.end1063:                                      ; preds = %for.cond1051.for.end1063_crit_edge, %for.body1049
  %mm.51.lcssa = phi i32 [ %306, %for.cond1051.for.end1063_crit_edge ], [ %mm.503739, %for.body1049 ]
  %dec1064 = add nsw i32 %kstart1036.03738, -1
  %inc1066 = add nsw i32 %ii1031.03737, 1
  %indvars.iv.next4360 = add i32 %indvars.iv4359, 1
  %exitcond4362 = icmp eq i32 %inc1066, %3
  br i1 %exitcond4362, label %sw.epilog2123, label %for.body1049

for.body1074:                                     ; preds = %for.end1098, %for.body1074.lr.ph
  %indvars.iv4368 = phi i32 [ -1, %for.body1074.lr.ph ], [ %indvars.iv.next4369, %for.end1098 ]
  %mm.523751 = phi i32 [ 0, %for.body1074.lr.ph ], [ %mm.53.lcssa, %for.end1098 ]
  %kstart1036.13750 = phi i32 [ %sub1039, %for.body1074.lr.ph ], [ %dec1099, %for.end1098 ]
  %ii1031.13749 = phi i32 [ 0, %for.body1074.lr.ph ], [ %inc1101, %for.end1098 ]
  %307 = icmp sgt i32 %indvars.iv4368, 0
  %smax4370 = select i1 %307, i32 %indvars.iv4368, i32 0
  %sub1075 = add nsw i32 %ii1031.13749, -1
  %cmp10773741 = icmp slt i32 %ii1031.13749, 1
  br i1 %cmp10773741, label %for.end1098, label %for.body1078.lr.ph

for.body1078.lr.ph:                               ; preds = %for.body1074
  %308 = sext i32 %mm.523751 to i64
  %309 = add i32 %mm.523751, 1
  br label %for.body1078

for.body1078:                                     ; preds = %for.body1078, %for.body1078.lr.ph
  %indvars.iv4365 = phi i64 [ %indvars.iv.next4366, %for.body1078 ], [ %295, %for.body1078.lr.ph ]
  %indvars.iv4363 = phi i64 [ %indvars.iv.next4364, %for.body1078 ], [ %308, %for.body1078.lr.ph ]
  %kk1035.13744 = phi i32 [ %add1093, %for.body1078 ], [ %kstart1036.13750, %for.body1078.lr.ph ]
  %jj1032.13742 = phi i32 [ %inc1096, %for.body1078 ], [ 0, %for.body1078.lr.ph ]
  %mul1079 = shl nsw i32 %kk1035.13744, 1
  %idxprom1080 = sext i32 %mul1079 to i64
  %arrayidx1081 = getelementptr inbounds double* %call113, i64 %idxprom1080
  %310 = load double* %arrayidx1081, align 8, !tbaa !4
  %311 = trunc i64 %indvars.iv4363 to i32
  %mul1082 = shl nsw i32 %311, 1
  %idxprom1083 = sext i32 %mul1082 to i64
  %arrayidx1084 = getelementptr inbounds double* %dvec, i64 %idxprom1083
  store double %310, double* %arrayidx1084, align 8, !tbaa !4
  %add10863369 = or i32 %mul1079, 1
  %idxprom1087 = sext i32 %add10863369 to i64
  %arrayidx1088 = getelementptr inbounds double* %call113, i64 %idxprom1087
  %312 = load double* %arrayidx1088, align 8, !tbaa !4
  %add10903370 = or i32 %mul1082, 1
  %idxprom1091 = sext i32 %add10903370 to i64
  %arrayidx1092 = getelementptr inbounds double* %dvec, i64 %idxprom1091
  store double %312, double* %arrayidx1092, align 8, !tbaa !4
  %313 = trunc i64 %indvars.iv4365 to i32
  %add1093 = add nsw i32 %kk1035.13744, %313
  %inc1096 = add nsw i32 %jj1032.13742, 1
  %indvars.iv.next4364 = add i64 %indvars.iv4363, 1
  %cmp1077 = icmp slt i32 %jj1032.13742, %sub1075
  %indvars.iv.next4366 = add i64 %indvars.iv4365, -2
  br i1 %cmp1077, label %for.body1078, label %for.cond1076.for.end1098_crit_edge

for.cond1076.for.end1098_crit_edge:               ; preds = %for.body1078
  %314 = add i32 %309, %smax4370
  br label %for.end1098

for.end1098:                                      ; preds = %for.cond1076.for.end1098_crit_edge, %for.body1074
  %mm.53.lcssa = phi i32 [ %314, %for.cond1076.for.end1098_crit_edge ], [ %mm.523751, %for.body1074 ]
  %dec1099 = add nsw i32 %kstart1036.13750, -1
  %inc1101 = add nsw i32 %ii1031.13749, 1
  %indvars.iv.next4369 = add i32 %indvars.iv4368, 1
  %exitcond4371 = icmp eq i32 %inc1101, %3
  br i1 %exitcond4371, label %sw.epilog2123, label %for.body1074

sw.bb1105:                                        ; preds = %sw.bb1029
  %sub1112 = add nsw i32 %add, -1
  %mul1113 = shl i32 %3, 1
  %add1114 = add i32 %4, -2
  %add1115 = add i32 %add1114, %mul1113
  %sub1116 = add i32 %add1115, %5
  %type1117 = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 4
  %315 = load i32* %type1117, align 4, !tbaa !3
  switch i32 %315, label %sw.epilog2123 [
    i32 1, label %for.cond1120.preheader
    i32 2, label %for.cond1146.preheader
  ]

for.cond1146.preheader:                           ; preds = %sw.bb1105
  %cmp11473773 = icmp sgt i32 %3, 0
  br i1 %cmp11473773, label %for.body1148, label %sw.epilog2123

for.cond1120.preheader:                           ; preds = %sw.bb1105
  %cmp11213760 = icmp sgt i32 %3, 0
  br i1 %cmp11213760, label %for.body1122, label %sw.epilog2123

for.body1122:                                     ; preds = %for.cond1120.preheader, %for.end1136
  %indvars.iv4377.in = phi i32 [ %indvars.iv4377, %for.end1136 ], [ %3, %for.cond1120.preheader ]
  %mm.543764 = phi i32 [ %mm.55.lcssa, %for.end1136 ], [ 0, %for.cond1120.preheader ]
  %stride1110.03763 = phi i32 [ %sub1138, %for.end1136 ], [ %sub1116, %for.cond1120.preheader ]
  %kstart1109.03762 = phi i32 [ %add1137, %for.end1136 ], [ %sub1112, %for.cond1120.preheader ]
  %jj1107.03761 = phi i32 [ %add1124, %for.end1136 ], [ 0, %for.cond1120.preheader ]
  %indvars.iv4377 = add i32 %indvars.iv4377.in, -1
  %add1124 = add nsw i32 %jj1107.03761, 1
  %cmp11263754 = icmp slt i32 %add1124, %3
  br i1 %cmp11263754, label %for.body1127.lr.ph, label %for.end1136

for.body1127.lr.ph:                               ; preds = %for.body1122
  %316 = sext i32 %mm.543764 to i64
  br label %for.body1127

for.body1127:                                     ; preds = %for.body1127, %for.body1127.lr.ph
  %indvars.iv4375 = phi i64 [ %316, %for.body1127.lr.ph ], [ %indvars.iv.next4376, %for.body1127 ]
  %kk1108.03757.in = phi i32 [ %kstart1109.03762, %for.body1127.lr.ph ], [ %kk1108.03757, %for.body1127 ]
  %ii1106.03755 = phi i32 [ %add1124, %for.body1127.lr.ph ], [ %inc1133, %for.body1127 ]
  %kk1108.03757 = add nsw i32 %kk1108.03757.in, -1
  %idxprom1128 = sext i32 %kk1108.03757 to i64
  %arrayidx1129 = getelementptr inbounds double* %call113, i64 %idxprom1128
  %317 = load double* %arrayidx1129, align 8, !tbaa !4
  %arrayidx1131 = getelementptr inbounds double* %dvec, i64 %indvars.iv4375
  store double %317, double* %arrayidx1131, align 8, !tbaa !4
  %inc1133 = add nsw i32 %ii1106.03755, 1
  %indvars.iv.next4376 = add i64 %indvars.iv4375, 1
  %exitcond4379 = icmp eq i32 %inc1133, %3
  br i1 %exitcond4379, label %for.cond1125.for.end1136_crit_edge, label %for.body1127

for.cond1125.for.end1136_crit_edge:               ; preds = %for.body1127
  %318 = add i32 %mm.543764, %indvars.iv4377
  br label %for.end1136

for.end1136:                                      ; preds = %for.cond1125.for.end1136_crit_edge, %for.body1122
  %mm.55.lcssa = phi i32 [ %318, %for.cond1125.for.end1136_crit_edge ], [ %mm.543764, %for.body1122 ]
  %add1137 = add nsw i32 %stride1110.03763, %kstart1109.03762
  %sub1138 = add nsw i32 %stride1110.03763, -2
  %exitcond4380 = icmp eq i32 %add1124, %3
  br i1 %exitcond4380, label %sw.epilog2123, label %for.body1122

for.body1148:                                     ; preds = %for.cond1146.preheader, %for.end1172
  %indvars.iv4386.in = phi i32 [ %indvars.iv4386, %for.end1172 ], [ %3, %for.cond1146.preheader ]
  %mm.563777 = phi i32 [ %mm.57.lcssa, %for.end1172 ], [ 0, %for.cond1146.preheader ]
  %stride1110.13776 = phi i32 [ %sub1174, %for.end1172 ], [ %sub1116, %for.cond1146.preheader ]
  %kstart1109.13775 = phi i32 [ %add1173, %for.end1172 ], [ %sub1112, %for.cond1146.preheader ]
  %jj1107.13774 = phi i32 [ %add1150, %for.end1172 ], [ 0, %for.cond1146.preheader ]
  %indvars.iv4386 = add i32 %indvars.iv4386.in, -1
  %add1150 = add nsw i32 %jj1107.13774, 1
  %cmp11523767 = icmp slt i32 %add1150, %3
  br i1 %cmp11523767, label %for.body1153.lr.ph, label %for.end1172

for.body1153.lr.ph:                               ; preds = %for.body1148
  %319 = sext i32 %mm.563777 to i64
  br label %for.body1153

for.body1153:                                     ; preds = %for.body1153, %for.body1153.lr.ph
  %indvars.iv4384 = phi i64 [ %319, %for.body1153.lr.ph ], [ %indvars.iv.next4385, %for.body1153 ]
  %kk1108.13770.in = phi i32 [ %kstart1109.13775, %for.body1153.lr.ph ], [ %kk1108.13770, %for.body1153 ]
  %ii1106.13768 = phi i32 [ %add1150, %for.body1153.lr.ph ], [ %inc1169, %for.body1153 ]
  %kk1108.13770 = add nsw i32 %kk1108.13770.in, -1
  %mul1154 = shl nsw i32 %kk1108.13770, 1
  %idxprom1155 = sext i32 %mul1154 to i64
  %arrayidx1156 = getelementptr inbounds double* %call113, i64 %idxprom1155
  %320 = load double* %arrayidx1156, align 8, !tbaa !4
  %321 = trunc i64 %indvars.iv4384 to i32
  %mul1157 = shl nsw i32 %321, 1
  %idxprom1158 = sext i32 %mul1157 to i64
  %arrayidx1159 = getelementptr inbounds double* %dvec, i64 %idxprom1158
  store double %320, double* %arrayidx1159, align 8, !tbaa !4
  %add11613367 = or i32 %mul1154, 1
  %idxprom1162 = sext i32 %add11613367 to i64
  %arrayidx1163 = getelementptr inbounds double* %call113, i64 %idxprom1162
  %322 = load double* %arrayidx1163, align 8, !tbaa !4
  %add11653368 = or i32 %mul1157, 1
  %idxprom1166 = sext i32 %add11653368 to i64
  %arrayidx1167 = getelementptr inbounds double* %dvec, i64 %idxprom1166
  store double %322, double* %arrayidx1167, align 8, !tbaa !4
  %inc1169 = add nsw i32 %ii1106.13768, 1
  %indvars.iv.next4385 = add i64 %indvars.iv4384, 1
  %exitcond4388 = icmp eq i32 %inc1169, %3
  br i1 %exitcond4388, label %for.cond1151.for.end1172_crit_edge, label %for.body1153

for.cond1151.for.end1172_crit_edge:               ; preds = %for.body1153
  %323 = add i32 %mm.563777, %indvars.iv4386
  br label %for.end1172

for.end1172:                                      ; preds = %for.cond1151.for.end1172_crit_edge, %for.body1148
  %mm.57.lcssa = phi i32 [ %323, %for.cond1151.for.end1172_crit_edge ], [ %mm.563777, %for.body1148 ]
  %add1173 = add nsw i32 %stride1110.13776, %kstart1109.13775
  %sub1174 = add nsw i32 %stride1110.13776, -2
  %exitcond4389 = icmp eq i32 %add1150, %3
  br i1 %exitcond4389, label %sw.epilog2123, label %for.body1148

sw.bb1181:                                        ; preds = %if.end112
  switch i32 %storeflag, label %sw.epilog2123 [
    i32 0, label %sw.bb1182
    i32 1, label %sw.bb1253
  ]

sw.bb1182:                                        ; preds = %sw.bb1181
  %sub1189 = add nsw i32 %4, -1
  %type1194 = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 4
  %324 = load i32* %type1194, align 4, !tbaa !3
  switch i32 %324, label %sw.epilog2123 [
    i32 1, label %for.cond1197.preheader
    i32 2, label %for.cond1221.preheader
  ]

for.cond1221.preheader:                           ; preds = %sw.bb1182
  %cmp12223798 = icmp sgt i32 %4, 0
  br i1 %cmp12223798, label %for.cond1224.preheader.lr.ph, label %sw.epilog2123

for.cond1224.preheader.lr.ph:                     ; preds = %for.cond1221.preheader
  %cmp12253791 = icmp sgt i32 %3, 0
  %325 = add i32 %4, %5
  %326 = shl i32 %3, 1
  %327 = add i32 %325, %326
  %328 = add i32 %327, -1
  %329 = sext i32 %328 to i64
  br label %for.cond1224.preheader

for.cond1197.preheader:                           ; preds = %sw.bb1182
  %cmp11983786 = icmp sgt i32 %4, 0
  br i1 %cmp11983786, label %for.cond1200.preheader.lr.ph, label %sw.epilog2123

for.cond1200.preheader.lr.ph:                     ; preds = %for.cond1197.preheader
  %cmp12013779 = icmp sgt i32 %3, 0
  %330 = add i32 %4, %5
  %331 = shl i32 %3, 1
  %332 = add i32 %330, %331
  %333 = add i32 %332, -1
  %334 = sext i32 %333 to i64
  br label %for.cond1200.preheader

for.cond1200.preheader:                           ; preds = %for.cond1200.preheader.lr.ph, %for.end1212
  %mm.583789 = phi i32 [ 0, %for.cond1200.preheader.lr.ph ], [ %mm.59.lcssa, %for.end1212 ]
  %kstart1187.03788 = phi i32 [ %sub1189, %for.cond1200.preheader.lr.ph ], [ %dec1213, %for.end1212 ]
  %ii1183.03787 = phi i32 [ %3, %for.cond1200.preheader.lr.ph ], [ %inc1215, %for.end1212 ]
  br i1 %cmp12013779, label %for.body1202.lr.ph, label %for.end1212

for.body1202.lr.ph:                               ; preds = %for.cond1200.preheader
  %335 = sext i32 %mm.583789 to i64
  br label %for.body1202

for.body1202:                                     ; preds = %for.body1202, %for.body1202.lr.ph
  %indvars.iv4392 = phi i64 [ %334, %for.body1202.lr.ph ], [ %indvars.iv.next4393, %for.body1202 ]
  %indvars.iv4390 = phi i64 [ %335, %for.body1202.lr.ph ], [ %indvars.iv.next4391, %for.body1202 ]
  %kk1186.03782 = phi i32 [ %kstart1187.03788, %for.body1202.lr.ph ], [ %add1207, %for.body1202 ]
  %jj1184.03780 = phi i32 [ 0, %for.body1202.lr.ph ], [ %inc1210, %for.body1202 ]
  %idxprom1203 = sext i32 %kk1186.03782 to i64
  %arrayidx1204 = getelementptr inbounds double* %call113, i64 %idxprom1203
  %336 = load double* %arrayidx1204, align 8, !tbaa !4
  %arrayidx1206 = getelementptr inbounds double* %dvec, i64 %indvars.iv4390
  store double %336, double* %arrayidx1206, align 8, !tbaa !4
  %337 = trunc i64 %indvars.iv4392 to i32
  %add1207 = add nsw i32 %kk1186.03782, %337
  %inc1210 = add nsw i32 %jj1184.03780, 1
  %indvars.iv.next4391 = add i64 %indvars.iv4390, 1
  %indvars.iv.next4393 = add i64 %indvars.iv4392, -2
  %exitcond4395 = icmp eq i32 %inc1210, %3
  br i1 %exitcond4395, label %for.cond1200.for.end1212_crit_edge, label %for.body1202

for.cond1200.for.end1212_crit_edge:               ; preds = %for.body1202
  %338 = add i32 %3, %mm.583789
  br label %for.end1212

for.end1212:                                      ; preds = %for.cond1200.for.end1212_crit_edge, %for.cond1200.preheader
  %mm.59.lcssa = phi i32 [ %338, %for.cond1200.for.end1212_crit_edge ], [ %mm.583789, %for.cond1200.preheader ]
  %dec1213 = add nsw i32 %kstart1187.03788, -1
  %inc1215 = add nsw i32 %ii1183.03787, 1
  %cmp1198 = icmp slt i32 %inc1215, %add
  br i1 %cmp1198, label %for.cond1200.preheader, label %sw.epilog2123

for.cond1224.preheader:                           ; preds = %for.cond1224.preheader.lr.ph, %for.end1246
  %mm.603801 = phi i32 [ 0, %for.cond1224.preheader.lr.ph ], [ %mm.61.lcssa, %for.end1246 ]
  %kstart1187.13800 = phi i32 [ %sub1189, %for.cond1224.preheader.lr.ph ], [ %dec1247, %for.end1246 ]
  %ii1183.13799 = phi i32 [ %3, %for.cond1224.preheader.lr.ph ], [ %inc1249, %for.end1246 ]
  br i1 %cmp12253791, label %for.body1226.lr.ph, label %for.end1246

for.body1226.lr.ph:                               ; preds = %for.cond1224.preheader
  %339 = sext i32 %mm.603801 to i64
  br label %for.body1226

for.body1226:                                     ; preds = %for.body1226, %for.body1226.lr.ph
  %indvars.iv4398 = phi i64 [ %329, %for.body1226.lr.ph ], [ %indvars.iv.next4399, %for.body1226 ]
  %indvars.iv4396 = phi i64 [ %339, %for.body1226.lr.ph ], [ %indvars.iv.next4397, %for.body1226 ]
  %kk1186.13794 = phi i32 [ %kstart1187.13800, %for.body1226.lr.ph ], [ %add1241, %for.body1226 ]
  %jj1184.13792 = phi i32 [ 0, %for.body1226.lr.ph ], [ %inc1244, %for.body1226 ]
  %mul1227 = shl nsw i32 %kk1186.13794, 1
  %idxprom1228 = sext i32 %mul1227 to i64
  %arrayidx1229 = getelementptr inbounds double* %call113, i64 %idxprom1228
  %340 = load double* %arrayidx1229, align 8, !tbaa !4
  %341 = trunc i64 %indvars.iv4396 to i32
  %mul1230 = shl nsw i32 %341, 1
  %idxprom1231 = sext i32 %mul1230 to i64
  %arrayidx1232 = getelementptr inbounds double* %dvec, i64 %idxprom1231
  store double %340, double* %arrayidx1232, align 8, !tbaa !4
  %add12343365 = or i32 %mul1227, 1
  %idxprom1235 = sext i32 %add12343365 to i64
  %arrayidx1236 = getelementptr inbounds double* %call113, i64 %idxprom1235
  %342 = load double* %arrayidx1236, align 8, !tbaa !4
  %add12383366 = or i32 %mul1230, 1
  %idxprom1239 = sext i32 %add12383366 to i64
  %arrayidx1240 = getelementptr inbounds double* %dvec, i64 %idxprom1239
  store double %342, double* %arrayidx1240, align 8, !tbaa !4
  %343 = trunc i64 %indvars.iv4398 to i32
  %add1241 = add nsw i32 %kk1186.13794, %343
  %inc1244 = add nsw i32 %jj1184.13792, 1
  %indvars.iv.next4397 = add i64 %indvars.iv4396, 1
  %indvars.iv.next4399 = add i64 %indvars.iv4398, -2
  %exitcond4401 = icmp eq i32 %inc1244, %3
  br i1 %exitcond4401, label %for.cond1224.for.end1246_crit_edge, label %for.body1226

for.cond1224.for.end1246_crit_edge:               ; preds = %for.body1226
  %344 = add i32 %3, %mm.603801
  br label %for.end1246

for.end1246:                                      ; preds = %for.cond1224.for.end1246_crit_edge, %for.cond1224.preheader
  %mm.61.lcssa = phi i32 [ %344, %for.cond1224.for.end1246_crit_edge ], [ %mm.603801, %for.cond1224.preheader ]
  %dec1247 = add nsw i32 %kstart1187.13800, -1
  %inc1249 = add nsw i32 %ii1183.13799, 1
  %cmp1222 = icmp slt i32 %inc1249, %add
  br i1 %cmp1222, label %for.cond1224.preheader, label %sw.epilog2123

sw.bb1253:                                        ; preds = %sw.bb1181
  %sub1259 = add nsw i32 %4, -1
  %type1264 = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 4
  %345 = load i32* %type1264, align 4, !tbaa !3
  switch i32 %345, label %sw.epilog2123 [
    i32 1, label %for.cond1267.preheader
    i32 2, label %for.cond1291.preheader
  ]

for.cond1291.preheader:                           ; preds = %sw.bb1253
  %cmp12923821 = icmp sgt i32 %3, 0
  br i1 %cmp12923821, label %for.cond1294.preheader.lr.ph, label %sw.epilog2123

for.cond1294.preheader.lr.ph:                     ; preds = %for.cond1291.preheader
  %cmp12953815 = icmp sgt i32 %4, 0
  %346 = add i32 %3, 1
  %347 = icmp sgt i32 %add, %346
  %smax4417 = select i1 %347, i32 %add, i32 %346
  %348 = sub i32 %smax4417, %3
  %349 = add i32 %4, %5
  %350 = shl i32 %3, 1
  %351 = add i32 %349, %350
  %352 = add i32 %351, -1
  %353 = sext i32 %352 to i64
  br label %for.cond1294.preheader

for.cond1267.preheader:                           ; preds = %sw.bb1253
  %cmp12683809 = icmp sgt i32 %3, 0
  br i1 %cmp12683809, label %for.cond1270.preheader.lr.ph, label %sw.epilog2123

for.cond1270.preheader.lr.ph:                     ; preds = %for.cond1267.preheader
  %cmp12713803 = icmp sgt i32 %4, 0
  %354 = add i32 %3, 1
  %355 = icmp sgt i32 %add, %354
  %smax4407 = select i1 %355, i32 %add, i32 %354
  %356 = sub i32 %smax4407, %3
  %357 = add i32 %4, %5
  %358 = shl i32 %3, 1
  %359 = add i32 %357, %358
  %360 = add i32 %359, -1
  %361 = sext i32 %360 to i64
  br label %for.cond1270.preheader

for.cond1270.preheader:                           ; preds = %for.end1281, %for.cond1270.preheader.lr.ph
  %indvars.iv4408 = phi i64 [ %361, %for.cond1270.preheader.lr.ph ], [ %indvars.iv.next4409, %for.end1281 ]
  %mm.623813 = phi i32 [ 0, %for.cond1270.preheader.lr.ph ], [ %mm.63.lcssa, %for.end1281 ]
  %kstart1257.03811 = phi i32 [ %sub1259, %for.cond1270.preheader.lr.ph ], [ %add1282, %for.end1281 ]
  %jj1255.03810 = phi i32 [ 0, %for.cond1270.preheader.lr.ph ], [ %inc1285, %for.end1281 ]
  br i1 %cmp12713803, label %for.body1272.lr.ph, label %for.end1281

for.body1272.lr.ph:                               ; preds = %for.cond1270.preheader
  %362 = sext i32 %kstart1257.03811 to i64
  %363 = sext i32 %mm.623813 to i64
  br label %for.body1272

for.body1272:                                     ; preds = %for.body1272.lr.ph, %for.body1272
  %indvars.iv4404 = phi i64 [ %362, %for.body1272.lr.ph ], [ %indvars.iv.next4405, %for.body1272 ]
  %indvars.iv4402 = phi i64 [ %363, %for.body1272.lr.ph ], [ %indvars.iv.next4403, %for.body1272 ]
  %ii1254.03804 = phi i32 [ %3, %for.body1272.lr.ph ], [ %inc1278, %for.body1272 ]
  %arrayidx1274 = getelementptr inbounds double* %call113, i64 %indvars.iv4404
  %364 = load double* %arrayidx1274, align 8, !tbaa !4
  %arrayidx1276 = getelementptr inbounds double* %dvec, i64 %indvars.iv4402
  store double %364, double* %arrayidx1276, align 8, !tbaa !4
  %inc1278 = add nsw i32 %ii1254.03804, 1
  %indvars.iv.next4403 = add i64 %indvars.iv4402, 1
  %cmp1271 = icmp slt i32 %inc1278, %add
  %indvars.iv.next4405 = add i64 %indvars.iv4404, -1
  br i1 %cmp1271, label %for.body1272, label %for.cond1270.for.end1281_crit_edge

for.cond1270.for.end1281_crit_edge:               ; preds = %for.body1272
  %365 = add i32 %356, %mm.623813
  br label %for.end1281

for.end1281:                                      ; preds = %for.cond1270.for.end1281_crit_edge, %for.cond1270.preheader
  %mm.63.lcssa = phi i32 [ %365, %for.cond1270.for.end1281_crit_edge ], [ %mm.623813, %for.cond1270.preheader ]
  %366 = trunc i64 %indvars.iv4408 to i32
  %add1282 = add nsw i32 %366, %kstart1257.03811
  %inc1285 = add nsw i32 %jj1255.03810, 1
  %indvars.iv.next4409 = add i64 %indvars.iv4408, -2
  %exitcond4411 = icmp eq i32 %inc1285, %3
  br i1 %exitcond4411, label %sw.epilog2123, label %for.cond1270.preheader

for.cond1294.preheader:                           ; preds = %for.end1315, %for.cond1294.preheader.lr.ph
  %indvars.iv4418 = phi i64 [ %353, %for.cond1294.preheader.lr.ph ], [ %indvars.iv.next4419, %for.end1315 ]
  %mm.643825 = phi i32 [ 0, %for.cond1294.preheader.lr.ph ], [ %mm.65.lcssa, %for.end1315 ]
  %kstart1257.13823 = phi i32 [ %sub1259, %for.cond1294.preheader.lr.ph ], [ %add1316, %for.end1315 ]
  %jj1255.13822 = phi i32 [ 0, %for.cond1294.preheader.lr.ph ], [ %inc1319, %for.end1315 ]
  br i1 %cmp12953815, label %for.body1296.lr.ph, label %for.end1315

for.body1296.lr.ph:                               ; preds = %for.cond1294.preheader
  %367 = sext i32 %kstart1257.13823 to i64
  %368 = sext i32 %mm.643825 to i64
  br label %for.body1296

for.body1296:                                     ; preds = %for.body1296.lr.ph, %for.body1296
  %indvars.iv4414 = phi i64 [ %367, %for.body1296.lr.ph ], [ %indvars.iv.next4415, %for.body1296 ]
  %indvars.iv4412 = phi i64 [ %368, %for.body1296.lr.ph ], [ %indvars.iv.next4413, %for.body1296 ]
  %ii1254.13816 = phi i32 [ %3, %for.body1296.lr.ph ], [ %inc1312, %for.body1296 ]
  %369 = trunc i64 %indvars.iv4414 to i32
  %mul1297 = shl nsw i32 %369, 1
  %idxprom1298 = sext i32 %mul1297 to i64
  %arrayidx1299 = getelementptr inbounds double* %call113, i64 %idxprom1298
  %370 = load double* %arrayidx1299, align 8, !tbaa !4
  %371 = trunc i64 %indvars.iv4412 to i32
  %mul1300 = shl nsw i32 %371, 1
  %idxprom1301 = sext i32 %mul1300 to i64
  %arrayidx1302 = getelementptr inbounds double* %dvec, i64 %idxprom1301
  store double %370, double* %arrayidx1302, align 8, !tbaa !4
  %add13043363 = or i32 %mul1297, 1
  %idxprom1305 = sext i32 %add13043363 to i64
  %arrayidx1306 = getelementptr inbounds double* %call113, i64 %idxprom1305
  %372 = load double* %arrayidx1306, align 8, !tbaa !4
  %add13083364 = or i32 %mul1300, 1
  %idxprom1309 = sext i32 %add13083364 to i64
  %arrayidx1310 = getelementptr inbounds double* %dvec, i64 %idxprom1309
  store double %372, double* %arrayidx1310, align 8, !tbaa !4
  %inc1312 = add nsw i32 %ii1254.13816, 1
  %indvars.iv.next4413 = add i64 %indvars.iv4412, 1
  %cmp1295 = icmp slt i32 %inc1312, %add
  %indvars.iv.next4415 = add i64 %indvars.iv4414, -1
  br i1 %cmp1295, label %for.body1296, label %for.cond1294.for.end1315_crit_edge

for.cond1294.for.end1315_crit_edge:               ; preds = %for.body1296
  %373 = add i32 %348, %mm.643825
  br label %for.end1315

for.end1315:                                      ; preds = %for.cond1294.for.end1315_crit_edge, %for.cond1294.preheader
  %mm.65.lcssa = phi i32 [ %373, %for.cond1294.for.end1315_crit_edge ], [ %mm.643825, %for.cond1294.preheader ]
  %374 = trunc i64 %indvars.iv4418 to i32
  %add1316 = add nsw i32 %374, %kstart1257.13823
  %inc1319 = add nsw i32 %jj1255.13822, 1
  %indvars.iv.next4419 = add i64 %indvars.iv4418, -2
  %exitcond4421 = icmp eq i32 %inc1319, %3
  br i1 %exitcond4421, label %sw.epilog2123, label %for.cond1294.preheader

sw.bb1324:                                        ; preds = %if.end112
  switch i32 %storeflag, label %sw.epilog2123 [
    i32 0, label %sw.bb1325
    i32 1, label %sw.bb1573
  ]

sw.bb1325:                                        ; preds = %sw.bb1324
  %375 = load i32* %symflag12, align 4, !tbaa !3
  %switch3402 = icmp ult i32 %375, 2
  br i1 %switch3402, label %if.then1331, label %if.else1497

if.then1331:                                      ; preds = %sw.bb1325
  %cmp1341 = icmp eq i32* %pivotsizes, null
  %type1343 = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 4
  %376 = load i32* %type1343, align 4, !tbaa !3
  %cmp1344 = icmp eq i32 %376, 1
  br i1 %cmp1341, label %if.then1342, label %if.else1406

if.then1342:                                      ; preds = %if.then1331
  br i1 %cmp1344, label %for.cond1346.preheader, label %if.else1368

for.cond1346.preheader:                           ; preds = %if.then1342
  %cmp13473834 = icmp sgt i32 %3, 0
  br i1 %cmp13473834, label %for.body1348, label %sw.epilog2123

for.body1348:                                     ; preds = %for.cond1346.preheader, %for.end1362
  %indvars.iv4427.in = phi i32 [ %indvars.iv4427, %for.end1362 ], [ %3, %for.cond1346.preheader ]
  %mm.663838 = phi i32 [ %mm.67.lcssa, %for.end1362 ], [ 0, %for.cond1346.preheader ]
  %stride1339.03837 = phi i32 [ %dec1364, %for.end1362 ], [ %add13, %for.cond1346.preheader ]
  %kstart1337.03836 = phi i32 [ %add1363, %for.end1362 ], [ 0, %for.cond1346.preheader ]
  %ii1333.03835 = phi i32 [ %add1350, %for.end1362 ], [ 0, %for.cond1346.preheader ]
  %indvars.iv4427 = add i32 %indvars.iv4427.in, -1
  %add1350 = add nsw i32 %ii1333.03835, 1
  %cmp13523828 = icmp slt i32 %add1350, %3
  br i1 %cmp13523828, label %for.body1353.lr.ph, label %for.end1362

for.body1353.lr.ph:                               ; preds = %for.body1348
  %377 = sext i32 %mm.663838 to i64
  br label %for.body1353

for.body1353:                                     ; preds = %for.body1353, %for.body1353.lr.ph
  %indvars.iv4425 = phi i64 [ %377, %for.body1353.lr.ph ], [ %indvars.iv.next4426, %for.body1353 ]
  %kk1336.03831.in = phi i32 [ %kstart1337.03836, %for.body1353.lr.ph ], [ %kk1336.03831, %for.body1353 ]
  %jj1335.03829 = phi i32 [ %add1350, %for.body1353.lr.ph ], [ %inc1359, %for.body1353 ]
  %kk1336.03831 = add nsw i32 %kk1336.03831.in, 1
  %idxprom1354 = sext i32 %kk1336.03831 to i64
  %arrayidx1355 = getelementptr inbounds double* %call113, i64 %idxprom1354
  %378 = load double* %arrayidx1355, align 8, !tbaa !4
  %arrayidx1357 = getelementptr inbounds double* %dvec, i64 %indvars.iv4425
  store double %378, double* %arrayidx1357, align 8, !tbaa !4
  %inc1359 = add nsw i32 %jj1335.03829, 1
  %indvars.iv.next4426 = add i64 %indvars.iv4425, 1
  %exitcond4429 = icmp eq i32 %inc1359, %3
  br i1 %exitcond4429, label %for.cond1351.for.end1362_crit_edge, label %for.body1353

for.cond1351.for.end1362_crit_edge:               ; preds = %for.body1353
  %379 = add i32 %mm.663838, %indvars.iv4427
  br label %for.end1362

for.end1362:                                      ; preds = %for.cond1351.for.end1362_crit_edge, %for.body1348
  %mm.67.lcssa = phi i32 [ %379, %for.cond1351.for.end1362_crit_edge ], [ %mm.663838, %for.body1348 ]
  %add1363 = add nsw i32 %stride1339.03837, %kstart1337.03836
  %dec1364 = add nsw i32 %stride1339.03837, -1
  %exitcond4431 = icmp eq i32 %add1350, %3
  br i1 %exitcond4431, label %sw.epilog2123, label %for.body1348

if.else1368:                                      ; preds = %if.then1342
  %cmp1370 = icmp eq i32 %376, 2
  %cmp13733847 = icmp sgt i32 %3, 0
  %or.cond4632 = and i1 %cmp1370, %cmp13733847
  br i1 %or.cond4632, label %for.body1374, label %sw.epilog2123

for.body1374:                                     ; preds = %if.else1368, %for.end1398
  %indvars.iv4437.in = phi i32 [ %indvars.iv4437, %for.end1398 ], [ %3, %if.else1368 ]
  %mm.683851 = phi i32 [ %mm.69.lcssa, %for.end1398 ], [ 0, %if.else1368 ]
  %stride1339.13850 = phi i32 [ %dec1400, %for.end1398 ], [ %add13, %if.else1368 ]
  %kstart1337.13849 = phi i32 [ %add1399, %for.end1398 ], [ 0, %if.else1368 ]
  %ii1333.13848 = phi i32 [ %add1376, %for.end1398 ], [ 0, %if.else1368 ]
  %indvars.iv4437 = add i32 %indvars.iv4437.in, -1
  %add1376 = add nsw i32 %ii1333.13848, 1
  %cmp13783841 = icmp slt i32 %add1376, %3
  br i1 %cmp13783841, label %for.body1379.lr.ph, label %for.end1398

for.body1379.lr.ph:                               ; preds = %for.body1374
  %380 = sext i32 %mm.683851 to i64
  br label %for.body1379

for.body1379:                                     ; preds = %for.body1379, %for.body1379.lr.ph
  %indvars.iv4435 = phi i64 [ %380, %for.body1379.lr.ph ], [ %indvars.iv.next4436, %for.body1379 ]
  %kk1336.13844.in = phi i32 [ %kstart1337.13849, %for.body1379.lr.ph ], [ %kk1336.13844, %for.body1379 ]
  %jj1335.13842 = phi i32 [ %add1376, %for.body1379.lr.ph ], [ %inc1395, %for.body1379 ]
  %kk1336.13844 = add nsw i32 %kk1336.13844.in, 1
  %mul1380 = shl nsw i32 %kk1336.13844, 1
  %idxprom1381 = sext i32 %mul1380 to i64
  %arrayidx1382 = getelementptr inbounds double* %call113, i64 %idxprom1381
  %381 = load double* %arrayidx1382, align 8, !tbaa !4
  %382 = trunc i64 %indvars.iv4435 to i32
  %mul1383 = shl nsw i32 %382, 1
  %idxprom1384 = sext i32 %mul1383 to i64
  %arrayidx1385 = getelementptr inbounds double* %dvec, i64 %idxprom1384
  store double %381, double* %arrayidx1385, align 8, !tbaa !4
  %add13873361 = or i32 %mul1380, 1
  %idxprom1388 = sext i32 %add13873361 to i64
  %arrayidx1389 = getelementptr inbounds double* %call113, i64 %idxprom1388
  %383 = load double* %arrayidx1389, align 8, !tbaa !4
  %add13913362 = or i32 %mul1383, 1
  %idxprom1392 = sext i32 %add13913362 to i64
  %arrayidx1393 = getelementptr inbounds double* %dvec, i64 %idxprom1392
  store double %383, double* %arrayidx1393, align 8, !tbaa !4
  %inc1395 = add nsw i32 %jj1335.13842, 1
  %indvars.iv.next4436 = add i64 %indvars.iv4435, 1
  %exitcond4439 = icmp eq i32 %inc1395, %3
  br i1 %exitcond4439, label %for.cond1377.for.end1398_crit_edge, label %for.body1379

for.cond1377.for.end1398_crit_edge:               ; preds = %for.body1379
  %384 = add i32 %mm.683851, %indvars.iv4437
  br label %for.end1398

for.end1398:                                      ; preds = %for.cond1377.for.end1398_crit_edge, %for.body1374
  %mm.69.lcssa = phi i32 [ %384, %for.cond1377.for.end1398_crit_edge ], [ %mm.683851, %for.body1374 ]
  %add1399 = add nsw i32 %stride1339.13850, %kstart1337.13849
  %dec1400 = add nsw i32 %stride1339.13850, -1
  %exitcond4440 = icmp eq i32 %add1376, %3
  br i1 %exitcond4440, label %sw.epilog2123, label %for.body1374

if.else1406:                                      ; preds = %if.then1331
  br i1 %cmp1344, label %for.cond1410.preheader, label %if.else1445

for.cond1410.preheader:                           ; preds = %if.else1406
  %cmp14113868 = icmp sgt i32 %npivot, 0
  br i1 %cmp14113868, label %for.body1412, label %sw.epilog2123

for.body1412:                                     ; preds = %for.cond1410.preheader, %for.end1440
  %indvars.iv4453 = phi i64 [ %indvars.iv.next4454, %for.end1440 ], [ 0, %for.cond1410.preheader ]
  %mm.703873 = phi i32 [ %mm.71.lcssa, %for.end1440 ], [ 0, %for.cond1410.preheader ]
  %stride1339.23872 = phi i32 [ %stride1339.3.lcssa, %for.end1440 ], [ %add13, %for.cond1410.preheader ]
  %kstart1337.23871 = phi i32 [ %kstart1337.3.lcssa, %for.end1440 ], [ 0, %for.cond1410.preheader ]
  %first1332.03869 = phi i32 [ %add1415, %for.end1440 ], [ 0, %for.cond1410.preheader ]
  %arrayidx1414 = getelementptr inbounds i32* %pivotsizes, i64 %indvars.iv4453
  %385 = load i32* %arrayidx1414, align 4, !tbaa !3
  %add1415 = add nsw i32 %385, %first1332.03869
  %sub1416 = add nsw i32 %add1415, -1
  %cmp14183859 = icmp sgt i32 %first1332.03869, %sub1416
  br i1 %cmp14183859, label %for.end1440, label %for.body1419.lr.ph

for.body1419.lr.ph:                               ; preds = %for.body1412
  %cmp14253854 = icmp slt i32 %add1415, %3
  %386 = sub i32 %3, %first1332.03869
  %387 = sub i32 %386, %385
  %388 = add i32 %first1332.03869, -1
  %389 = add i32 %388, %stride1339.23872
  %390 = add i32 %388, %385
  %391 = icmp sgt i32 %first1332.03869, %390
  %smax4452 = select i1 %391, i32 %first1332.03869, i32 %390
  %392 = sub i32 %389, %smax4452
  %393 = sub i32 %smax4452, %first1332.03869
  %394 = add i32 %stride1339.23872, -1
  %395 = mul i32 %393, %394
  %396 = zext i32 %393 to i33
  %397 = add i32 %smax4452, -1
  %398 = sub i32 %397, %first1332.03869
  %399 = zext i32 %398 to i33
  %400 = mul i33 %396, %399
  %401 = lshr i33 %400, 1
  %402 = trunc i33 %401 to i32
  br label %for.body1419

for.body1419:                                     ; preds = %for.end1435, %for.body1419.lr.ph
  %mm.713863 = phi i32 [ %mm.703873, %for.body1419.lr.ph ], [ %mm.72.lcssa, %for.end1435 ]
  %stride1339.33862 = phi i32 [ %stride1339.23872, %for.body1419.lr.ph ], [ %dec1437, %for.end1435 ]
  %kstart1337.33861 = phi i32 [ %kstart1337.23871, %for.body1419.lr.ph ], [ %add1436, %for.end1435 ]
  %ii1333.23860 = phi i32 [ %first1332.03869, %for.body1419.lr.ph ], [ %inc1439, %for.end1435 ]
  br i1 %cmp14253854, label %for.body1426.lr.ph, label %for.end1435

for.body1426.lr.ph:                               ; preds = %for.body1419
  %add1420 = sub i32 %sub1416, %ii1333.23860
  %sub1421 = add i32 %add1420, %kstart1337.33861
  %403 = sext i32 %mm.713863 to i64
  br label %for.body1426

for.body1426:                                     ; preds = %for.body1426, %for.body1426.lr.ph
  %indvars.iv4448 = phi i64 [ %403, %for.body1426.lr.ph ], [ %indvars.iv.next4449, %for.body1426 ]
  %kk1336.23857.in = phi i32 [ %sub1421, %for.body1426.lr.ph ], [ %kk1336.23857, %for.body1426 ]
  %jj1335.23855 = phi i32 [ %add1415, %for.body1426.lr.ph ], [ %inc1432, %for.body1426 ]
  %kk1336.23857 = add nsw i32 %kk1336.23857.in, 1
  %idxprom1427 = sext i32 %kk1336.23857 to i64
  %arrayidx1428 = getelementptr inbounds double* %call113, i64 %idxprom1427
  %404 = load double* %arrayidx1428, align 8, !tbaa !4
  %arrayidx1430 = getelementptr inbounds double* %dvec, i64 %indvars.iv4448
  store double %404, double* %arrayidx1430, align 8, !tbaa !4
  %inc1432 = add nsw i32 %jj1335.23855, 1
  %indvars.iv.next4449 = add i64 %indvars.iv4448, 1
  %exitcond4450 = icmp eq i32 %inc1432, %3
  br i1 %exitcond4450, label %for.cond1424.for.end1435_crit_edge, label %for.body1426

for.cond1424.for.end1435_crit_edge:               ; preds = %for.body1426
  %405 = add i32 %387, %mm.713863
  br label %for.end1435

for.end1435:                                      ; preds = %for.cond1424.for.end1435_crit_edge, %for.body1419
  %mm.72.lcssa = phi i32 [ %405, %for.cond1424.for.end1435_crit_edge ], [ %mm.713863, %for.body1419 ]
  %add1436 = add nsw i32 %stride1339.33862, %kstart1337.33861
  %dec1437 = add nsw i32 %stride1339.33862, -1
  %inc1439 = add nsw i32 %ii1333.23860, 1
  %cmp1418 = icmp slt i32 %ii1333.23860, %sub1416
  br i1 %cmp1418, label %for.body1419, label %for.cond1417.for.end1440_crit_edge

for.cond1417.for.end1440_crit_edge:               ; preds = %for.end1435
  %406 = add i32 %kstart1337.23871, %stride1339.23872
  %407 = add i32 %406, %395
  %408 = sub i32 %407, %402
  br label %for.end1440

for.end1440:                                      ; preds = %for.cond1417.for.end1440_crit_edge, %for.body1412
  %mm.71.lcssa = phi i32 [ %mm.72.lcssa, %for.cond1417.for.end1440_crit_edge ], [ %mm.703873, %for.body1412 ]
  %stride1339.3.lcssa = phi i32 [ %392, %for.cond1417.for.end1440_crit_edge ], [ %stride1339.23872, %for.body1412 ]
  %kstart1337.3.lcssa = phi i32 [ %408, %for.cond1417.for.end1440_crit_edge ], [ %kstart1337.23871, %for.body1412 ]
  %indvars.iv.next4454 = add i64 %indvars.iv4453, 1
  %lftr.wideiv4455 = trunc i64 %indvars.iv.next4454 to i32
  %exitcond4456 = icmp eq i32 %lftr.wideiv4455, %npivot
  br i1 %exitcond4456, label %sw.epilog2123, label %for.body1412

if.else1445:                                      ; preds = %if.else1406
  %cmp1447 = icmp eq i32 %376, 2
  %cmp14503890 = icmp sgt i32 %npivot, 0
  %or.cond4633 = and i1 %cmp1447, %cmp14503890
  br i1 %or.cond4633, label %for.body1451, label %sw.epilog2123

for.body1451:                                     ; preds = %if.else1445, %for.end1489
  %indvars.iv4468 = phi i64 [ %indvars.iv.next4469, %for.end1489 ], [ 0, %if.else1445 ]
  %mm.733895 = phi i32 [ %mm.74.lcssa, %for.end1489 ], [ 0, %if.else1445 ]
  %stride1339.43894 = phi i32 [ %stride1339.5.lcssa, %for.end1489 ], [ %add13, %if.else1445 ]
  %kstart1337.43893 = phi i32 [ %kstart1337.5.lcssa, %for.end1489 ], [ 0, %if.else1445 ]
  %first1332.13891 = phi i32 [ %add1454, %for.end1489 ], [ 0, %if.else1445 ]
  %arrayidx1453 = getelementptr inbounds i32* %pivotsizes, i64 %indvars.iv4468
  %409 = load i32* %arrayidx1453, align 4, !tbaa !3
  %add1454 = add nsw i32 %409, %first1332.13891
  %sub1455 = add nsw i32 %add1454, -1
  %cmp14573881 = icmp sgt i32 %first1332.13891, %sub1455
  br i1 %cmp14573881, label %for.end1489, label %for.body1458.lr.ph

for.body1458.lr.ph:                               ; preds = %for.body1451
  %cmp14643876 = icmp slt i32 %add1454, %3
  %410 = sub i32 %3, %first1332.13891
  %411 = sub i32 %410, %409
  %412 = add i32 %first1332.13891, -1
  %413 = add i32 %412, %stride1339.43894
  %414 = add i32 %412, %409
  %415 = icmp sgt i32 %first1332.13891, %414
  %smax4467 = select i1 %415, i32 %first1332.13891, i32 %414
  %416 = sub i32 %413, %smax4467
  %417 = sub i32 %smax4467, %first1332.13891
  %418 = add i32 %stride1339.43894, -1
  %419 = mul i32 %417, %418
  %420 = zext i32 %417 to i33
  %421 = add i32 %smax4467, -1
  %422 = sub i32 %421, %first1332.13891
  %423 = zext i32 %422 to i33
  %424 = mul i33 %420, %423
  %425 = lshr i33 %424, 1
  %426 = trunc i33 %425 to i32
  br label %for.body1458

for.body1458:                                     ; preds = %for.end1484, %for.body1458.lr.ph
  %mm.743885 = phi i32 [ %mm.733895, %for.body1458.lr.ph ], [ %mm.75.lcssa, %for.end1484 ]
  %stride1339.53884 = phi i32 [ %stride1339.43894, %for.body1458.lr.ph ], [ %dec1486, %for.end1484 ]
  %kstart1337.53883 = phi i32 [ %kstart1337.43893, %for.body1458.lr.ph ], [ %add1485, %for.end1484 ]
  %ii1333.33882 = phi i32 [ %first1332.13891, %for.body1458.lr.ph ], [ %inc1488, %for.end1484 ]
  br i1 %cmp14643876, label %for.body1465.lr.ph, label %for.end1484

for.body1465.lr.ph:                               ; preds = %for.body1458
  %add1459 = sub i32 %sub1455, %ii1333.33882
  %sub1460 = add i32 %add1459, %kstart1337.53883
  %427 = sext i32 %mm.743885 to i64
  br label %for.body1465

for.body1465:                                     ; preds = %for.body1465, %for.body1465.lr.ph
  %indvars.iv4464 = phi i64 [ %427, %for.body1465.lr.ph ], [ %indvars.iv.next4465, %for.body1465 ]
  %kk1336.33879.in = phi i32 [ %sub1460, %for.body1465.lr.ph ], [ %kk1336.33879, %for.body1465 ]
  %jj1335.33877 = phi i32 [ %add1454, %for.body1465.lr.ph ], [ %inc1481, %for.body1465 ]
  %kk1336.33879 = add nsw i32 %kk1336.33879.in, 1
  %mul1466 = shl nsw i32 %kk1336.33879, 1
  %idxprom1467 = sext i32 %mul1466 to i64
  %arrayidx1468 = getelementptr inbounds double* %call113, i64 %idxprom1467
  %428 = load double* %arrayidx1468, align 8, !tbaa !4
  %429 = trunc i64 %indvars.iv4464 to i32
  %mul1469 = shl nsw i32 %429, 1
  %idxprom1470 = sext i32 %mul1469 to i64
  %arrayidx1471 = getelementptr inbounds double* %dvec, i64 %idxprom1470
  store double %428, double* %arrayidx1471, align 8, !tbaa !4
  %add14733359 = or i32 %mul1466, 1
  %idxprom1474 = sext i32 %add14733359 to i64
  %arrayidx1475 = getelementptr inbounds double* %call113, i64 %idxprom1474
  %430 = load double* %arrayidx1475, align 8, !tbaa !4
  %add14773360 = or i32 %mul1469, 1
  %idxprom1478 = sext i32 %add14773360 to i64
  %arrayidx1479 = getelementptr inbounds double* %dvec, i64 %idxprom1478
  store double %430, double* %arrayidx1479, align 8, !tbaa !4
  %inc1481 = add nsw i32 %jj1335.33877, 1
  %indvars.iv.next4465 = add i64 %indvars.iv4464, 1
  %exitcond4466 = icmp eq i32 %inc1481, %3
  br i1 %exitcond4466, label %for.cond1463.for.end1484_crit_edge, label %for.body1465

for.cond1463.for.end1484_crit_edge:               ; preds = %for.body1465
  %431 = add i32 %411, %mm.743885
  br label %for.end1484

for.end1484:                                      ; preds = %for.cond1463.for.end1484_crit_edge, %for.body1458
  %mm.75.lcssa = phi i32 [ %431, %for.cond1463.for.end1484_crit_edge ], [ %mm.743885, %for.body1458 ]
  %add1485 = add nsw i32 %stride1339.53884, %kstart1337.53883
  %dec1486 = add nsw i32 %stride1339.53884, -1
  %inc1488 = add nsw i32 %ii1333.33882, 1
  %cmp1457 = icmp slt i32 %ii1333.33882, %sub1455
  br i1 %cmp1457, label %for.body1458, label %for.cond1456.for.end1489_crit_edge

for.cond1456.for.end1489_crit_edge:               ; preds = %for.end1484
  %432 = add i32 %kstart1337.43893, %stride1339.43894
  %433 = add i32 %432, %419
  %434 = sub i32 %433, %426
  br label %for.end1489

for.end1489:                                      ; preds = %for.cond1456.for.end1489_crit_edge, %for.body1451
  %mm.74.lcssa = phi i32 [ %mm.75.lcssa, %for.cond1456.for.end1489_crit_edge ], [ %mm.733895, %for.body1451 ]
  %stride1339.5.lcssa = phi i32 [ %416, %for.cond1456.for.end1489_crit_edge ], [ %stride1339.43894, %for.body1451 ]
  %kstart1337.5.lcssa = phi i32 [ %434, %for.cond1456.for.end1489_crit_edge ], [ %kstart1337.43893, %for.body1451 ]
  %indvars.iv.next4469 = add i64 %indvars.iv4468, 1
  %lftr.wideiv4470 = trunc i64 %indvars.iv.next4469 to i32
  %exitcond4471 = icmp eq i32 %lftr.wideiv4470, %npivot
  br i1 %exitcond4471, label %sw.epilog2123, label %for.body1451

if.else1497:                                      ; preds = %sw.bb1325
  %sub1504 = add nsw i32 %add, -1
  %mul1505 = shl i32 %3, 1
  %add1506 = add i32 %4, -2
  %add1507 = add i32 %add1506, %mul1505
  %sub1508 = add i32 %add1507, %5
  %type1509 = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 4
  %435 = load i32* %type1509, align 4, !tbaa !3
  switch i32 %435, label %sw.epilog2123 [
    i32 1, label %for.cond1512.preheader
    i32 2, label %for.cond1538.preheader
  ]

for.cond1538.preheader:                           ; preds = %if.else1497
  %cmp15393917 = icmp sgt i32 %3, 0
  br i1 %cmp15393917, label %for.body1540, label %sw.epilog2123

for.cond1512.preheader:                           ; preds = %if.else1497
  %cmp15133904 = icmp sgt i32 %3, 0
  br i1 %cmp15133904, label %for.body1514, label %sw.epilog2123

for.body1514:                                     ; preds = %for.cond1512.preheader, %for.end1528
  %indvars.iv4477.in = phi i32 [ %indvars.iv4477, %for.end1528 ], [ %3, %for.cond1512.preheader ]
  %mm.763908 = phi i32 [ %mm.77.lcssa, %for.end1528 ], [ 0, %for.cond1512.preheader ]
  %stride1502.03907 = phi i32 [ %sub1530, %for.end1528 ], [ %sub1508, %for.cond1512.preheader ]
  %kstart1501.03906 = phi i32 [ %add1529, %for.end1528 ], [ %sub1504, %for.cond1512.preheader ]
  %ii1498.03905 = phi i32 [ %add1516, %for.end1528 ], [ 0, %for.cond1512.preheader ]
  %indvars.iv4477 = add i32 %indvars.iv4477.in, -1
  %add1516 = add nsw i32 %ii1498.03905, 1
  %cmp15183898 = icmp slt i32 %add1516, %3
  br i1 %cmp15183898, label %for.body1519.lr.ph, label %for.end1528

for.body1519.lr.ph:                               ; preds = %for.body1514
  %436 = sext i32 %mm.763908 to i64
  br label %for.body1519

for.body1519:                                     ; preds = %for.body1519, %for.body1519.lr.ph
  %indvars.iv4475 = phi i64 [ %436, %for.body1519.lr.ph ], [ %indvars.iv.next4476, %for.body1519 ]
  %kk1500.03901.in = phi i32 [ %kstart1501.03906, %for.body1519.lr.ph ], [ %kk1500.03901, %for.body1519 ]
  %jj1499.03899 = phi i32 [ %add1516, %for.body1519.lr.ph ], [ %inc1525, %for.body1519 ]
  %kk1500.03901 = add nsw i32 %kk1500.03901.in, 1
  %idxprom1520 = sext i32 %kk1500.03901 to i64
  %arrayidx1521 = getelementptr inbounds double* %call113, i64 %idxprom1520
  %437 = load double* %arrayidx1521, align 8, !tbaa !4
  %arrayidx1523 = getelementptr inbounds double* %dvec, i64 %indvars.iv4475
  store double %437, double* %arrayidx1523, align 8, !tbaa !4
  %inc1525 = add nsw i32 %jj1499.03899, 1
  %indvars.iv.next4476 = add i64 %indvars.iv4475, 1
  %exitcond4479 = icmp eq i32 %inc1525, %3
  br i1 %exitcond4479, label %for.cond1517.for.end1528_crit_edge, label %for.body1519

for.cond1517.for.end1528_crit_edge:               ; preds = %for.body1519
  %438 = add i32 %mm.763908, %indvars.iv4477
  br label %for.end1528

for.end1528:                                      ; preds = %for.cond1517.for.end1528_crit_edge, %for.body1514
  %mm.77.lcssa = phi i32 [ %438, %for.cond1517.for.end1528_crit_edge ], [ %mm.763908, %for.body1514 ]
  %add1529 = add nsw i32 %stride1502.03907, %kstart1501.03906
  %sub1530 = add nsw i32 %stride1502.03907, -2
  %exitcond4481 = icmp eq i32 %add1516, %3
  br i1 %exitcond4481, label %sw.epilog2123, label %for.body1514

for.body1540:                                     ; preds = %for.cond1538.preheader, %for.end1564
  %indvars.iv4487.in = phi i32 [ %indvars.iv4487, %for.end1564 ], [ %3, %for.cond1538.preheader ]
  %mm.783921 = phi i32 [ %mm.79.lcssa, %for.end1564 ], [ 0, %for.cond1538.preheader ]
  %stride1502.13920 = phi i32 [ %sub1566, %for.end1564 ], [ %sub1508, %for.cond1538.preheader ]
  %kstart1501.13919 = phi i32 [ %add1565, %for.end1564 ], [ %sub1504, %for.cond1538.preheader ]
  %ii1498.13918 = phi i32 [ %add1542, %for.end1564 ], [ 0, %for.cond1538.preheader ]
  %indvars.iv4487 = add i32 %indvars.iv4487.in, -1
  %add1542 = add nsw i32 %ii1498.13918, 1
  %cmp15443911 = icmp slt i32 %add1542, %3
  br i1 %cmp15443911, label %for.body1545.lr.ph, label %for.end1564

for.body1545.lr.ph:                               ; preds = %for.body1540
  %439 = sext i32 %mm.783921 to i64
  br label %for.body1545

for.body1545:                                     ; preds = %for.body1545, %for.body1545.lr.ph
  %indvars.iv4485 = phi i64 [ %439, %for.body1545.lr.ph ], [ %indvars.iv.next4486, %for.body1545 ]
  %kk1500.13914.in = phi i32 [ %kstart1501.13919, %for.body1545.lr.ph ], [ %kk1500.13914, %for.body1545 ]
  %jj1499.13912 = phi i32 [ %add1542, %for.body1545.lr.ph ], [ %inc1561, %for.body1545 ]
  %kk1500.13914 = add nsw i32 %kk1500.13914.in, 1
  %mul1546 = shl nsw i32 %kk1500.13914, 1
  %idxprom1547 = sext i32 %mul1546 to i64
  %arrayidx1548 = getelementptr inbounds double* %call113, i64 %idxprom1547
  %440 = load double* %arrayidx1548, align 8, !tbaa !4
  %441 = trunc i64 %indvars.iv4485 to i32
  %mul1549 = shl nsw i32 %441, 1
  %idxprom1550 = sext i32 %mul1549 to i64
  %arrayidx1551 = getelementptr inbounds double* %dvec, i64 %idxprom1550
  store double %440, double* %arrayidx1551, align 8, !tbaa !4
  %add15533357 = or i32 %mul1546, 1
  %idxprom1554 = sext i32 %add15533357 to i64
  %arrayidx1555 = getelementptr inbounds double* %call113, i64 %idxprom1554
  %442 = load double* %arrayidx1555, align 8, !tbaa !4
  %add15573358 = or i32 %mul1549, 1
  %idxprom1558 = sext i32 %add15573358 to i64
  %arrayidx1559 = getelementptr inbounds double* %dvec, i64 %idxprom1558
  store double %442, double* %arrayidx1559, align 8, !tbaa !4
  %inc1561 = add nsw i32 %jj1499.13912, 1
  %indvars.iv.next4486 = add i64 %indvars.iv4485, 1
  %exitcond4489 = icmp eq i32 %inc1561, %3
  br i1 %exitcond4489, label %for.cond1543.for.end1564_crit_edge, label %for.body1545

for.cond1543.for.end1564_crit_edge:               ; preds = %for.body1545
  %443 = add i32 %mm.783921, %indvars.iv4487
  br label %for.end1564

for.end1564:                                      ; preds = %for.cond1543.for.end1564_crit_edge, %for.body1540
  %mm.79.lcssa = phi i32 [ %443, %for.cond1543.for.end1564_crit_edge ], [ %mm.783921, %for.body1540 ]
  %add1565 = add nsw i32 %stride1502.13920, %kstart1501.13919
  %sub1566 = add nsw i32 %stride1502.13920, -2
  %exitcond4490 = icmp eq i32 %add1542, %3
  br i1 %exitcond4490, label %sw.epilog2123, label %for.body1540

sw.bb1573:                                        ; preds = %sw.bb1324
  %444 = load i32* %symflag12, align 4, !tbaa !3
  %switch3403 = icmp ult i32 %444, 2
  br i1 %switch3403, label %if.then1579, label %if.else1750

if.then1579:                                      ; preds = %sw.bb1573
  %cmp1592 = icmp eq i32* %pivotsizes, null
  %type1594 = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 4
  %445 = load i32* %type1594, align 4, !tbaa !3
  %cmp1595 = icmp eq i32 %445, 1
  br i1 %cmp1592, label %if.then1593, label %if.else1667

if.then1593:                                      ; preds = %if.then1579
  br i1 %cmp1595, label %for.cond1597.preheader, label %if.else1624

for.cond1597.preheader:                           ; preds = %if.then1593
  %cmp15983930 = icmp sgt i32 %3, 0
  br i1 %cmp15983930, label %for.body1599.lr.ph, label %sw.epilog2123

for.body1599.lr.ph:                               ; preds = %for.cond1597.preheader
  %446 = add i32 %add13, -1
  %447 = sext i32 %446 to i64
  br label %for.body1599

for.body1599:                                     ; preds = %for.end1619, %for.body1599.lr.ph
  %indvars.iv4496 = phi i32 [ -1, %for.body1599.lr.ph ], [ %indvars.iv.next4497, %for.end1619 ]
  %mm.803933 = phi i32 [ 0, %for.body1599.lr.ph ], [ %mm.81.lcssa, %for.end1619 ]
  %kstart1587.03932 = phi i32 [ 0, %for.body1599.lr.ph ], [ %inc1620, %for.end1619 ]
  %448 = icmp sgt i32 %indvars.iv4496, 0
  %smax4498 = select i1 %448, i32 %indvars.iv4496, i32 0
  %sub1602 = add nsw i32 %kstart1587.03932, -1
  %cmp16083923 = icmp slt i32 %kstart1587.03932, 1
  br i1 %cmp16083923, label %for.end1619, label %for.body1609.lr.ph

for.body1609.lr.ph:                               ; preds = %for.body1599
  %449 = sext i32 %mm.803933 to i64
  %450 = add i32 %mm.803933, 1
  br label %for.body1609

for.body1609:                                     ; preds = %for.body1609, %for.body1609.lr.ph
  %indvars.iv4493 = phi i64 [ %indvars.iv.next4494, %for.body1609 ], [ %447, %for.body1609.lr.ph ]
  %indvars.iv4491 = phi i64 [ %indvars.iv.next4492, %for.body1609 ], [ %449, %for.body1609.lr.ph ]
  %kk1586.03926 = phi i32 [ %add1614, %for.body1609 ], [ %kstart1587.03932, %for.body1609.lr.ph ]
  %ii1581.03924 = phi i32 [ %inc1617, %for.body1609 ], [ 0, %for.body1609.lr.ph ]
  %idxprom1610 = sext i32 %kk1586.03926 to i64
  %arrayidx1611 = getelementptr inbounds double* %call113, i64 %idxprom1610
  %451 = load double* %arrayidx1611, align 8, !tbaa !4
  %arrayidx1613 = getelementptr inbounds double* %dvec, i64 %indvars.iv4491
  store double %451, double* %arrayidx1613, align 8, !tbaa !4
  %452 = trunc i64 %indvars.iv4493 to i32
  %add1614 = add nsw i32 %kk1586.03926, %452
  %inc1617 = add nsw i32 %ii1581.03924, 1
  %indvars.iv.next4492 = add i64 %indvars.iv4491, 1
  %cmp1608 = icmp slt i32 %ii1581.03924, %sub1602
  %indvars.iv.next4494 = add i64 %indvars.iv4493, -1
  br i1 %cmp1608, label %for.body1609, label %for.cond1607.for.end1619_crit_edge

for.cond1607.for.end1619_crit_edge:               ; preds = %for.body1609
  %453 = add i32 %450, %smax4498
  br label %for.end1619

for.end1619:                                      ; preds = %for.cond1607.for.end1619_crit_edge, %for.body1599
  %mm.81.lcssa = phi i32 [ %453, %for.cond1607.for.end1619_crit_edge ], [ %mm.803933, %for.body1599 ]
  %inc1620 = add nsw i32 %kstart1587.03932, 1
  %indvars.iv.next4497 = add i32 %indvars.iv4496, 1
  %exitcond4499 = icmp eq i32 %inc1620, %3
  br i1 %exitcond4499, label %sw.epilog2123, label %for.body1599

if.else1624:                                      ; preds = %if.then1593
  %cmp1626 = icmp eq i32 %445, 2
  %cmp16293942 = icmp sgt i32 %3, 0
  %or.cond4634 = and i1 %cmp1626, %cmp16293942
  br i1 %or.cond4634, label %for.body1630.lr.ph, label %sw.epilog2123

for.body1630.lr.ph:                               ; preds = %if.else1624
  %454 = add i32 %add13, -1
  %455 = sext i32 %454 to i64
  br label %for.body1630

for.body1630:                                     ; preds = %for.end1660, %for.body1630.lr.ph
  %indvars.iv4505 = phi i32 [ -1, %for.body1630.lr.ph ], [ %indvars.iv.next4506, %for.end1660 ]
  %mm.823945 = phi i32 [ 0, %for.body1630.lr.ph ], [ %mm.83.lcssa, %for.end1660 ]
  %kstart1587.13944 = phi i32 [ 0, %for.body1630.lr.ph ], [ %inc1661, %for.end1660 ]
  %456 = icmp sgt i32 %indvars.iv4505, 0
  %smax4507 = select i1 %456, i32 %indvars.iv4505, i32 0
  %sub1633 = add nsw i32 %kstart1587.13944, -1
  %cmp16393935 = icmp slt i32 %kstart1587.13944, 1
  br i1 %cmp16393935, label %for.end1660, label %for.body1640.lr.ph

for.body1640.lr.ph:                               ; preds = %for.body1630
  %457 = sext i32 %mm.823945 to i64
  %458 = add i32 %mm.823945, 1
  br label %for.body1640

for.body1640:                                     ; preds = %for.body1640, %for.body1640.lr.ph
  %indvars.iv4502 = phi i64 [ %indvars.iv.next4503, %for.body1640 ], [ %455, %for.body1640.lr.ph ]
  %indvars.iv4500 = phi i64 [ %indvars.iv.next4501, %for.body1640 ], [ %457, %for.body1640.lr.ph ]
  %kk1586.13938 = phi i32 [ %add1655, %for.body1640 ], [ %kstart1587.13944, %for.body1640.lr.ph ]
  %ii1581.13936 = phi i32 [ %inc1658, %for.body1640 ], [ 0, %for.body1640.lr.ph ]
  %mul1641 = shl nsw i32 %kk1586.13938, 1
  %idxprom1642 = sext i32 %mul1641 to i64
  %arrayidx1643 = getelementptr inbounds double* %call113, i64 %idxprom1642
  %459 = load double* %arrayidx1643, align 8, !tbaa !4
  %460 = trunc i64 %indvars.iv4500 to i32
  %mul1644 = shl nsw i32 %460, 1
  %idxprom1645 = sext i32 %mul1644 to i64
  %arrayidx1646 = getelementptr inbounds double* %dvec, i64 %idxprom1645
  store double %459, double* %arrayidx1646, align 8, !tbaa !4
  %add16483355 = or i32 %mul1641, 1
  %idxprom1649 = sext i32 %add16483355 to i64
  %arrayidx1650 = getelementptr inbounds double* %call113, i64 %idxprom1649
  %461 = load double* %arrayidx1650, align 8, !tbaa !4
  %add16523356 = or i32 %mul1644, 1
  %idxprom1653 = sext i32 %add16523356 to i64
  %arrayidx1654 = getelementptr inbounds double* %dvec, i64 %idxprom1653
  store double %461, double* %arrayidx1654, align 8, !tbaa !4
  %462 = trunc i64 %indvars.iv4502 to i32
  %add1655 = add nsw i32 %kk1586.13938, %462
  %inc1658 = add nsw i32 %ii1581.13936, 1
  %indvars.iv.next4501 = add i64 %indvars.iv4500, 1
  %cmp1639 = icmp slt i32 %ii1581.13936, %sub1633
  %indvars.iv.next4503 = add i64 %indvars.iv4502, -1
  br i1 %cmp1639, label %for.body1640, label %for.cond1638.for.end1660_crit_edge

for.cond1638.for.end1660_crit_edge:               ; preds = %for.body1640
  %463 = add i32 %458, %smax4507
  br label %for.end1660

for.end1660:                                      ; preds = %for.cond1638.for.end1660_crit_edge, %for.body1630
  %mm.83.lcssa = phi i32 [ %463, %for.cond1638.for.end1660_crit_edge ], [ %mm.823945, %for.body1630 ]
  %inc1661 = add nsw i32 %kstart1587.13944, 1
  %indvars.iv.next4506 = add i32 %indvars.iv4505, 1
  %exitcond4508 = icmp eq i32 %inc1661, %3
  br i1 %exitcond4508, label %sw.epilog2123, label %for.body1630

if.else1667:                                      ; preds = %if.then1579
  br i1 %cmp1595, label %for.cond1671.preheader, label %if.else1702

for.cond1671.preheader:                           ; preds = %if.else1667
  %cmp16723960 = icmp sgt i32 %npivot, 0
  br i1 %cmp16723960, label %for.body1673.lr.ph, label %sw.epilog2123

for.body1673.lr.ph:                               ; preds = %for.cond1671.preheader
  %464 = add i32 %add13, -1
  %465 = sext i32 %464 to i64
  br label %for.body1673

for.body1673:                                     ; preds = %for.end1697, %for.body1673.lr.ph
  %indvars.iv4516 = phi i64 [ 0, %for.body1673.lr.ph ], [ %indvars.iv.next4517, %for.end1697 ]
  %mm.843964 = phi i32 [ 0, %for.body1673.lr.ph ], [ %mm.85.lcssa, %for.end1697 ]
  %kstart1587.23963 = phi i32 [ 0, %for.body1673.lr.ph ], [ %kstart1587.3.lcssa, %for.end1697 ]
  %first1580.03961 = phi i32 [ 0, %for.body1673.lr.ph ], [ %add1676, %for.end1697 ]
  %arrayidx1675 = getelementptr inbounds i32* %pivotsizes, i64 %indvars.iv4516
  %466 = load i32* %arrayidx1675, align 4, !tbaa !3
  %add1676 = add nsw i32 %466, %first1580.03961
  %sub1677 = add nsw i32 %add1676, -1
  %cmp16793953 = icmp sgt i32 %first1580.03961, %sub1677
  br i1 %cmp16793953, label %for.end1697, label %for.cond1681.preheader.lr.ph

for.cond1681.preheader.lr.ph:                     ; preds = %for.body1673
  %cmp16823947 = icmp sgt i32 %first1580.03961, 0
  %467 = add i32 %kstart1587.23963, 1
  %468 = add i32 %first1580.03961, -1
  %469 = add i32 %468, %466
  %470 = icmp sgt i32 %first1580.03961, %469
  %smax4515 = select i1 %470, i32 %first1580.03961, i32 %469
  %471 = add i32 %467, %smax4515
  br label %for.cond1681.preheader

for.cond1681.preheader:                           ; preds = %for.end1693, %for.cond1681.preheader.lr.ph
  %mm.853956 = phi i32 [ %mm.843964, %for.cond1681.preheader.lr.ph ], [ %mm.86.lcssa, %for.end1693 ]
  %kstart1587.33955 = phi i32 [ %kstart1587.23963, %for.cond1681.preheader.lr.ph ], [ %inc1694, %for.end1693 ]
  %jj1584.23954 = phi i32 [ %first1580.03961, %for.cond1681.preheader.lr.ph ], [ %inc1696, %for.end1693 ]
  br i1 %cmp16823947, label %for.body1683.lr.ph, label %for.end1693

for.body1683.lr.ph:                               ; preds = %for.cond1681.preheader
  %472 = sext i32 %mm.853956 to i64
  br label %for.body1683

for.body1683:                                     ; preds = %for.body1683, %for.body1683.lr.ph
  %indvars.iv4511 = phi i64 [ %465, %for.body1683.lr.ph ], [ %indvars.iv.next4512, %for.body1683 ]
  %indvars.iv4509 = phi i64 [ %472, %for.body1683.lr.ph ], [ %indvars.iv.next4510, %for.body1683 ]
  %kk1586.23950 = phi i32 [ %kstart1587.33955, %for.body1683.lr.ph ], [ %add1688, %for.body1683 ]
  %ii1581.23948 = phi i32 [ 0, %for.body1683.lr.ph ], [ %inc1691, %for.body1683 ]
  %idxprom1684 = sext i32 %kk1586.23950 to i64
  %arrayidx1685 = getelementptr inbounds double* %call113, i64 %idxprom1684
  %473 = load double* %arrayidx1685, align 8, !tbaa !4
  %arrayidx1687 = getelementptr inbounds double* %dvec, i64 %indvars.iv4509
  store double %473, double* %arrayidx1687, align 8, !tbaa !4
  %474 = trunc i64 %indvars.iv4511 to i32
  %add1688 = add nsw i32 %kk1586.23950, %474
  %inc1691 = add nsw i32 %ii1581.23948, 1
  %indvars.iv.next4510 = add i64 %indvars.iv4509, 1
  %indvars.iv.next4512 = add i64 %indvars.iv4511, -1
  %exitcond4514 = icmp eq i32 %inc1691, %first1580.03961
  br i1 %exitcond4514, label %for.cond1681.for.end1693_crit_edge, label %for.body1683

for.cond1681.for.end1693_crit_edge:               ; preds = %for.body1683
  %475 = add i32 %first1580.03961, %mm.853956
  br label %for.end1693

for.end1693:                                      ; preds = %for.cond1681.for.end1693_crit_edge, %for.cond1681.preheader
  %mm.86.lcssa = phi i32 [ %475, %for.cond1681.for.end1693_crit_edge ], [ %mm.853956, %for.cond1681.preheader ]
  %inc1694 = add nsw i32 %kstart1587.33955, 1
  %inc1696 = add nsw i32 %jj1584.23954, 1
  %cmp1679 = icmp slt i32 %jj1584.23954, %sub1677
  br i1 %cmp1679, label %for.cond1681.preheader, label %for.cond1678.for.end1697_crit_edge

for.cond1678.for.end1697_crit_edge:               ; preds = %for.end1693
  %476 = sub i32 %471, %first1580.03961
  br label %for.end1697

for.end1697:                                      ; preds = %for.cond1678.for.end1697_crit_edge, %for.body1673
  %mm.85.lcssa = phi i32 [ %mm.86.lcssa, %for.cond1678.for.end1697_crit_edge ], [ %mm.843964, %for.body1673 ]
  %kstart1587.3.lcssa = phi i32 [ %476, %for.cond1678.for.end1697_crit_edge ], [ %kstart1587.23963, %for.body1673 ]
  %indvars.iv.next4517 = add i64 %indvars.iv4516, 1
  %lftr.wideiv4518 = trunc i64 %indvars.iv.next4517 to i32
  %exitcond4519 = icmp eq i32 %lftr.wideiv4518, %npivot
  br i1 %exitcond4519, label %sw.epilog2123, label %for.body1673

if.else1702:                                      ; preds = %if.else1667
  %cmp1704 = icmp eq i32 %445, 2
  %cmp17073979 = icmp sgt i32 %npivot, 0
  %or.cond4635 = and i1 %cmp1704, %cmp17073979
  br i1 %or.cond4635, label %for.body1708.lr.ph, label %sw.epilog2123

for.body1708.lr.ph:                               ; preds = %if.else1702
  %477 = add i32 %add13, -1
  %478 = sext i32 %477 to i64
  br label %for.body1708

for.body1708:                                     ; preds = %for.end1742, %for.body1708.lr.ph
  %indvars.iv4527 = phi i64 [ 0, %for.body1708.lr.ph ], [ %indvars.iv.next4528, %for.end1742 ]
  %mm.873983 = phi i32 [ 0, %for.body1708.lr.ph ], [ %mm.88.lcssa, %for.end1742 ]
  %kstart1587.43982 = phi i32 [ 0, %for.body1708.lr.ph ], [ %kstart1587.5.lcssa, %for.end1742 ]
  %first1580.13980 = phi i32 [ 0, %for.body1708.lr.ph ], [ %add1711, %for.end1742 ]
  %arrayidx1710 = getelementptr inbounds i32* %pivotsizes, i64 %indvars.iv4527
  %479 = load i32* %arrayidx1710, align 4, !tbaa !3
  %add1711 = add nsw i32 %479, %first1580.13980
  %sub1712 = add nsw i32 %add1711, -1
  %cmp17143972 = icmp sgt i32 %first1580.13980, %sub1712
  br i1 %cmp17143972, label %for.end1742, label %for.cond1716.preheader.lr.ph

for.cond1716.preheader.lr.ph:                     ; preds = %for.body1708
  %cmp17173966 = icmp sgt i32 %first1580.13980, 0
  %480 = add i32 %kstart1587.43982, 1
  %481 = add i32 %first1580.13980, -1
  %482 = add i32 %481, %479
  %483 = icmp sgt i32 %first1580.13980, %482
  %smax4526 = select i1 %483, i32 %first1580.13980, i32 %482
  %484 = add i32 %480, %smax4526
  br label %for.cond1716.preheader

for.cond1716.preheader:                           ; preds = %for.end1738, %for.cond1716.preheader.lr.ph
  %mm.883975 = phi i32 [ %mm.873983, %for.cond1716.preheader.lr.ph ], [ %mm.89.lcssa, %for.end1738 ]
  %kstart1587.53974 = phi i32 [ %kstart1587.43982, %for.cond1716.preheader.lr.ph ], [ %inc1739, %for.end1738 ]
  %jj1584.33973 = phi i32 [ %first1580.13980, %for.cond1716.preheader.lr.ph ], [ %inc1741, %for.end1738 ]
  br i1 %cmp17173966, label %for.body1718.lr.ph, label %for.end1738

for.body1718.lr.ph:                               ; preds = %for.cond1716.preheader
  %485 = sext i32 %mm.883975 to i64
  br label %for.body1718

for.body1718:                                     ; preds = %for.body1718, %for.body1718.lr.ph
  %indvars.iv4522 = phi i64 [ %478, %for.body1718.lr.ph ], [ %indvars.iv.next4523, %for.body1718 ]
  %indvars.iv4520 = phi i64 [ %485, %for.body1718.lr.ph ], [ %indvars.iv.next4521, %for.body1718 ]
  %kk1586.33969 = phi i32 [ %kstart1587.53974, %for.body1718.lr.ph ], [ %add1733, %for.body1718 ]
  %ii1581.33967 = phi i32 [ 0, %for.body1718.lr.ph ], [ %inc1736, %for.body1718 ]
  %mul1719 = shl nsw i32 %kk1586.33969, 1
  %idxprom1720 = sext i32 %mul1719 to i64
  %arrayidx1721 = getelementptr inbounds double* %call113, i64 %idxprom1720
  %486 = load double* %arrayidx1721, align 8, !tbaa !4
  %487 = trunc i64 %indvars.iv4520 to i32
  %mul1722 = shl nsw i32 %487, 1
  %idxprom1723 = sext i32 %mul1722 to i64
  %arrayidx1724 = getelementptr inbounds double* %dvec, i64 %idxprom1723
  store double %486, double* %arrayidx1724, align 8, !tbaa !4
  %add17263353 = or i32 %mul1719, 1
  %idxprom1727 = sext i32 %add17263353 to i64
  %arrayidx1728 = getelementptr inbounds double* %call113, i64 %idxprom1727
  %488 = load double* %arrayidx1728, align 8, !tbaa !4
  %add17303354 = or i32 %mul1722, 1
  %idxprom1731 = sext i32 %add17303354 to i64
  %arrayidx1732 = getelementptr inbounds double* %dvec, i64 %idxprom1731
  store double %488, double* %arrayidx1732, align 8, !tbaa !4
  %489 = trunc i64 %indvars.iv4522 to i32
  %add1733 = add nsw i32 %kk1586.33969, %489
  %inc1736 = add nsw i32 %ii1581.33967, 1
  %indvars.iv.next4521 = add i64 %indvars.iv4520, 1
  %indvars.iv.next4523 = add i64 %indvars.iv4522, -1
  %exitcond4525 = icmp eq i32 %inc1736, %first1580.13980
  br i1 %exitcond4525, label %for.cond1716.for.end1738_crit_edge, label %for.body1718

for.cond1716.for.end1738_crit_edge:               ; preds = %for.body1718
  %490 = add i32 %first1580.13980, %mm.883975
  br label %for.end1738

for.end1738:                                      ; preds = %for.cond1716.for.end1738_crit_edge, %for.cond1716.preheader
  %mm.89.lcssa = phi i32 [ %490, %for.cond1716.for.end1738_crit_edge ], [ %mm.883975, %for.cond1716.preheader ]
  %inc1739 = add nsw i32 %kstart1587.53974, 1
  %inc1741 = add nsw i32 %jj1584.33973, 1
  %cmp1714 = icmp slt i32 %jj1584.33973, %sub1712
  br i1 %cmp1714, label %for.cond1716.preheader, label %for.cond1713.for.end1742_crit_edge

for.cond1713.for.end1742_crit_edge:               ; preds = %for.end1738
  %491 = sub i32 %484, %first1580.13980
  br label %for.end1742

for.end1742:                                      ; preds = %for.cond1713.for.end1742_crit_edge, %for.body1708
  %mm.88.lcssa = phi i32 [ %mm.89.lcssa, %for.cond1713.for.end1742_crit_edge ], [ %mm.873983, %for.body1708 ]
  %kstart1587.5.lcssa = phi i32 [ %491, %for.cond1713.for.end1742_crit_edge ], [ %kstart1587.43982, %for.body1708 ]
  %indvars.iv.next4528 = add i64 %indvars.iv4527, 1
  %lftr.wideiv4529 = trunc i64 %indvars.iv.next4528 to i32
  %exitcond4530 = icmp eq i32 %lftr.wideiv4529, %npivot
  br i1 %exitcond4530, label %sw.epilog2123, label %for.body1708

if.else1750:                                      ; preds = %sw.bb1573
  %sub1758 = add nsw i32 %add, -1
  %type1763 = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 4
  %492 = load i32* %type1763, align 4, !tbaa !3
  switch i32 %492, label %sw.epilog2123 [
    i32 1, label %for.cond1766.preheader
    i32 2, label %for.cond1790.preheader
  ]

for.cond1790.preheader:                           ; preds = %if.else1750
  %cmp17914004 = icmp sgt i32 %3, 0
  br i1 %cmp17914004, label %for.cond1793.preheader.lr.ph, label %sw.epilog2123

for.cond1793.preheader.lr.ph:                     ; preds = %for.cond1790.preheader
  %493 = add i32 %4, %5
  %494 = shl i32 %3, 1
  %495 = add i32 %493, %494
  %496 = add i32 %495, -3
  %497 = sext i32 %496 to i64
  br label %for.cond1793.preheader

for.cond1766.preheader:                           ; preds = %if.else1750
  %cmp17673992 = icmp sgt i32 %3, 0
  br i1 %cmp17673992, label %for.cond1769.preheader.lr.ph, label %sw.epilog2123

for.cond1769.preheader.lr.ph:                     ; preds = %for.cond1766.preheader
  %498 = add i32 %4, %5
  %499 = shl i32 %3, 1
  %500 = add i32 %498, %499
  %501 = add i32 %500, -3
  %502 = sext i32 %501 to i64
  br label %for.cond1769.preheader

for.cond1769.preheader:                           ; preds = %for.end1781, %for.cond1769.preheader.lr.ph
  %indvars.iv4536 = phi i32 [ 0, %for.cond1769.preheader.lr.ph ], [ %indvars.iv.next4537, %for.end1781 ]
  %mm.903995 = phi i32 [ 0, %for.cond1769.preheader.lr.ph ], [ %mm.91.lcssa, %for.end1781 ]
  %kstart1755.03994 = phi i32 [ %sub1758, %for.cond1769.preheader.lr.ph ], [ %inc1782, %for.end1781 ]
  %cmp17703985 = icmp sgt i32 %indvars.iv4536, 0
  br i1 %cmp17703985, label %for.body1771.lr.ph, label %for.end1781

for.body1771.lr.ph:                               ; preds = %for.cond1769.preheader
  %503 = sext i32 %mm.903995 to i64
  %504 = add i32 %mm.903995, %indvars.iv4536
  br label %for.body1771

for.body1771:                                     ; preds = %for.body1771, %for.body1771.lr.ph
  %indvars.iv4533 = phi i64 [ %502, %for.body1771.lr.ph ], [ %indvars.iv.next4534, %for.body1771 ]
  %indvars.iv4531 = phi i64 [ %503, %for.body1771.lr.ph ], [ %indvars.iv.next4532, %for.body1771 ]
  %mm.913989 = phi i32 [ %mm.903995, %for.body1771.lr.ph ], [ %inc1780, %for.body1771 ]
  %kk1754.03988 = phi i32 [ %kstart1755.03994, %for.body1771.lr.ph ], [ %add1776, %for.body1771 ]
  %idxprom1772 = sext i32 %kk1754.03988 to i64
  %arrayidx1773 = getelementptr inbounds double* %call113, i64 %idxprom1772
  %505 = load double* %arrayidx1773, align 8, !tbaa !4
  %arrayidx1775 = getelementptr inbounds double* %dvec, i64 %indvars.iv4531
  store double %505, double* %arrayidx1775, align 8, !tbaa !4
  %506 = trunc i64 %indvars.iv4533 to i32
  %add1776 = add nsw i32 %kk1754.03988, %506
  %indvars.iv.next4532 = add i64 %indvars.iv4531, 1
  %inc1780 = add nsw i32 %mm.913989, 1
  %indvars.iv.next4534 = add i64 %indvars.iv4533, -2
  %exitcond4538 = icmp eq i32 %inc1780, %504
  br i1 %exitcond4538, label %for.end1781, label %for.body1771

for.end1781:                                      ; preds = %for.body1771, %for.cond1769.preheader
  %mm.91.lcssa = phi i32 [ %mm.903995, %for.cond1769.preheader ], [ %504, %for.body1771 ]
  %inc1782 = add nsw i32 %kstart1755.03994, 1
  %indvars.iv.next4537 = add i32 %indvars.iv4536, 1
  %exitcond4539 = icmp eq i32 %indvars.iv.next4537, %3
  br i1 %exitcond4539, label %sw.epilog2123, label %for.cond1769.preheader

for.cond1793.preheader:                           ; preds = %for.end1815, %for.cond1793.preheader.lr.ph
  %indvars.iv4545 = phi i32 [ 0, %for.cond1793.preheader.lr.ph ], [ %indvars.iv.next4546, %for.end1815 ]
  %mm.924007 = phi i32 [ 0, %for.cond1793.preheader.lr.ph ], [ %mm.93.lcssa, %for.end1815 ]
  %kstart1755.14006 = phi i32 [ %sub1758, %for.cond1793.preheader.lr.ph ], [ %inc1816, %for.end1815 ]
  %cmp17943997 = icmp sgt i32 %indvars.iv4545, 0
  br i1 %cmp17943997, label %for.body1795.lr.ph, label %for.end1815

for.body1795.lr.ph:                               ; preds = %for.cond1793.preheader
  %507 = sext i32 %mm.924007 to i64
  br label %for.body1795

for.body1795:                                     ; preds = %for.body1795, %for.body1795.lr.ph
  %indvars.iv4542 = phi i64 [ %497, %for.body1795.lr.ph ], [ %indvars.iv.next4543, %for.body1795 ]
  %indvars.iv4540 = phi i64 [ %507, %for.body1795.lr.ph ], [ %indvars.iv.next4541, %for.body1795 ]
  %kk1754.14000 = phi i32 [ %kstart1755.14006, %for.body1795.lr.ph ], [ %add1810, %for.body1795 ]
  %ii1751.13998 = phi i32 [ 0, %for.body1795.lr.ph ], [ %inc1813, %for.body1795 ]
  %mul1796 = shl nsw i32 %kk1754.14000, 1
  %idxprom1797 = sext i32 %mul1796 to i64
  %arrayidx1798 = getelementptr inbounds double* %call113, i64 %idxprom1797
  %508 = load double* %arrayidx1798, align 8, !tbaa !4
  %509 = trunc i64 %indvars.iv4540 to i32
  %mul1799 = shl nsw i32 %509, 1
  %idxprom1800 = sext i32 %mul1799 to i64
  %arrayidx1801 = getelementptr inbounds double* %dvec, i64 %idxprom1800
  store double %508, double* %arrayidx1801, align 8, !tbaa !4
  %add18033351 = or i32 %mul1796, 1
  %idxprom1804 = sext i32 %add18033351 to i64
  %arrayidx1805 = getelementptr inbounds double* %call113, i64 %idxprom1804
  %510 = load double* %arrayidx1805, align 8, !tbaa !4
  %add18073352 = or i32 %mul1799, 1
  %idxprom1808 = sext i32 %add18073352 to i64
  %arrayidx1809 = getelementptr inbounds double* %dvec, i64 %idxprom1808
  store double %510, double* %arrayidx1809, align 8, !tbaa !4
  %511 = trunc i64 %indvars.iv4542 to i32
  %add1810 = add nsw i32 %kk1754.14000, %511
  %inc1813 = add nsw i32 %ii1751.13998, 1
  %indvars.iv.next4541 = add i64 %indvars.iv4540, 1
  %indvars.iv.next4543 = add i64 %indvars.iv4542, -2
  %exitcond4547 = icmp eq i32 %inc1813, %indvars.iv4545
  br i1 %exitcond4547, label %for.cond1793.for.end1815_crit_edge, label %for.body1795

for.cond1793.for.end1815_crit_edge:               ; preds = %for.body1795
  %512 = add i32 %mm.924007, %indvars.iv4545
  br label %for.end1815

for.end1815:                                      ; preds = %for.cond1793.for.end1815_crit_edge, %for.cond1793.preheader
  %mm.93.lcssa = phi i32 [ %512, %for.cond1793.for.end1815_crit_edge ], [ %mm.924007, %for.cond1793.preheader ]
  %inc1816 = add nsw i32 %kstart1755.14006, 1
  %indvars.iv.next4546 = add i32 %indvars.iv4545, 1
  %exitcond4548 = icmp eq i32 %indvars.iv.next4546, %3
  br i1 %exitcond4548, label %sw.epilog2123, label %for.cond1793.preheader

sw.bb1825:                                        ; preds = %if.end112
  switch i32 %storeflag, label %sw.epilog2123 [
    i32 0, label %sw.bb1826
    i32 1, label %sw.bb1972
  ]

sw.bb1826:                                        ; preds = %sw.bb1825
  %513 = load i32* %symflag12, align 4, !tbaa !3
  %switch3404 = icmp ult i32 %513, 2
  br i1 %switch3404, label %if.then1832, label %if.else1899

if.then1832:                                      ; preds = %sw.bb1826
  %type1840 = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 4
  %514 = load i32* %type1840, align 4, !tbaa !3
  switch i32 %514, label %sw.epilog2123 [
    i32 1, label %for.cond1843.preheader
    i32 2, label %for.cond1867.preheader
  ]

for.cond1867.preheader:                           ; preds = %if.then1832
  %cmp18684027 = icmp sgt i32 %3, 0
  br i1 %cmp18684027, label %for.cond1870.preheader.lr.ph, label %sw.epilog2123

for.cond1870.preheader.lr.ph:                     ; preds = %for.cond1867.preheader
  %cmp18714021 = icmp sgt i32 %5, 0
  %515 = add i32 %add13, -1
  %516 = sext i32 %515 to i64
  br label %for.cond1870.preheader

for.cond1843.preheader:                           ; preds = %if.then1832
  %cmp18444015 = icmp sgt i32 %3, 0
  br i1 %cmp18444015, label %for.cond1846.preheader.lr.ph, label %sw.epilog2123

for.cond1846.preheader.lr.ph:                     ; preds = %for.cond1843.preheader
  %cmp18474009 = icmp sgt i32 %5, 0
  %517 = add i32 %add13, -1
  %518 = sext i32 %517 to i64
  br label %for.cond1846.preheader

for.cond1846.preheader:                           ; preds = %for.end1857, %for.cond1846.preheader.lr.ph
  %indvars.iv4556 = phi i64 [ %518, %for.cond1846.preheader.lr.ph ], [ %indvars.iv.next4557, %for.end1857 ]
  %mm.944019 = phi i32 [ 0, %for.cond1846.preheader.lr.ph ], [ %mm.95.lcssa, %for.end1857 ]
  %kstart1836.04017 = phi i32 [ %3, %for.cond1846.preheader.lr.ph ], [ %add1858, %for.end1857 ]
  %ii1833.04016 = phi i32 [ 0, %for.cond1846.preheader.lr.ph ], [ %inc1861, %for.end1857 ]
  br i1 %cmp18474009, label %for.body1848.lr.ph, label %for.end1857

for.body1848.lr.ph:                               ; preds = %for.cond1846.preheader
  %519 = sext i32 %kstart1836.04017 to i64
  %520 = sext i32 %mm.944019 to i64
  br label %for.body1848

for.body1848:                                     ; preds = %for.body1848, %for.body1848.lr.ph
  %indvars.iv4551 = phi i64 [ %519, %for.body1848.lr.ph ], [ %indvars.iv.next4552, %for.body1848 ]
  %indvars.iv4549 = phi i64 [ %520, %for.body1848.lr.ph ], [ %indvars.iv.next4550, %for.body1848 ]
  %jj1834.04010 = phi i32 [ 0, %for.body1848.lr.ph ], [ %inc1854, %for.body1848 ]
  %arrayidx1850 = getelementptr inbounds double* %call113, i64 %indvars.iv4551
  %521 = load double* %arrayidx1850, align 8, !tbaa !4
  %arrayidx1852 = getelementptr inbounds double* %dvec, i64 %indvars.iv4549
  store double %521, double* %arrayidx1852, align 8, !tbaa !4
  %inc1854 = add nsw i32 %jj1834.04010, 1
  %indvars.iv.next4550 = add i64 %indvars.iv4549, 1
  %indvars.iv.next4552 = add i64 %indvars.iv4551, 1
  %exitcond4554 = icmp eq i32 %inc1854, %5
  br i1 %exitcond4554, label %for.cond1846.for.end1857_crit_edge, label %for.body1848

for.cond1846.for.end1857_crit_edge:               ; preds = %for.body1848
  %522 = add i32 %5, %mm.944019
  br label %for.end1857

for.end1857:                                      ; preds = %for.cond1846.for.end1857_crit_edge, %for.cond1846.preheader
  %mm.95.lcssa = phi i32 [ %522, %for.cond1846.for.end1857_crit_edge ], [ %mm.944019, %for.cond1846.preheader ]
  %523 = trunc i64 %indvars.iv4556 to i32
  %add1858 = add nsw i32 %523, %kstart1836.04017
  %inc1861 = add nsw i32 %ii1833.04016, 1
  %indvars.iv.next4557 = add i64 %indvars.iv4556, -1
  %exitcond4559 = icmp eq i32 %inc1861, %3
  br i1 %exitcond4559, label %sw.epilog2123, label %for.cond1846.preheader

for.cond1870.preheader:                           ; preds = %for.end1891, %for.cond1870.preheader.lr.ph
  %indvars.iv4566 = phi i64 [ %516, %for.cond1870.preheader.lr.ph ], [ %indvars.iv.next4567, %for.end1891 ]
  %mm.964031 = phi i32 [ 0, %for.cond1870.preheader.lr.ph ], [ %mm.97.lcssa, %for.end1891 ]
  %kstart1836.14029 = phi i32 [ %3, %for.cond1870.preheader.lr.ph ], [ %add1892, %for.end1891 ]
  %ii1833.14028 = phi i32 [ 0, %for.cond1870.preheader.lr.ph ], [ %inc1895, %for.end1891 ]
  br i1 %cmp18714021, label %for.body1872.lr.ph, label %for.end1891

for.body1872.lr.ph:                               ; preds = %for.cond1870.preheader
  %524 = sext i32 %kstart1836.14029 to i64
  %525 = sext i32 %mm.964031 to i64
  br label %for.body1872

for.body1872:                                     ; preds = %for.body1872, %for.body1872.lr.ph
  %indvars.iv4562 = phi i64 [ %524, %for.body1872.lr.ph ], [ %indvars.iv.next4563, %for.body1872 ]
  %indvars.iv4560 = phi i64 [ %525, %for.body1872.lr.ph ], [ %indvars.iv.next4561, %for.body1872 ]
  %jj1834.14022 = phi i32 [ 0, %for.body1872.lr.ph ], [ %inc1888, %for.body1872 ]
  %526 = trunc i64 %indvars.iv4562 to i32
  %mul1873 = shl nsw i32 %526, 1
  %idxprom1874 = sext i32 %mul1873 to i64
  %arrayidx1875 = getelementptr inbounds double* %call113, i64 %idxprom1874
  %527 = load double* %arrayidx1875, align 8, !tbaa !4
  %528 = trunc i64 %indvars.iv4560 to i32
  %mul1876 = shl nsw i32 %528, 1
  %idxprom1877 = sext i32 %mul1876 to i64
  %arrayidx1878 = getelementptr inbounds double* %dvec, i64 %idxprom1877
  store double %527, double* %arrayidx1878, align 8, !tbaa !4
  %add18803349 = or i32 %mul1873, 1
  %idxprom1881 = sext i32 %add18803349 to i64
  %arrayidx1882 = getelementptr inbounds double* %call113, i64 %idxprom1881
  %529 = load double* %arrayidx1882, align 8, !tbaa !4
  %add18843350 = or i32 %mul1876, 1
  %idxprom1885 = sext i32 %add18843350 to i64
  %arrayidx1886 = getelementptr inbounds double* %dvec, i64 %idxprom1885
  store double %529, double* %arrayidx1886, align 8, !tbaa !4
  %inc1888 = add nsw i32 %jj1834.14022, 1
  %indvars.iv.next4561 = add i64 %indvars.iv4560, 1
  %indvars.iv.next4563 = add i64 %indvars.iv4562, 1
  %exitcond4565 = icmp eq i32 %inc1888, %5
  br i1 %exitcond4565, label %for.cond1870.for.end1891_crit_edge, label %for.body1872

for.cond1870.for.end1891_crit_edge:               ; preds = %for.body1872
  %530 = add i32 %5, %mm.964031
  br label %for.end1891

for.end1891:                                      ; preds = %for.cond1870.for.end1891_crit_edge, %for.cond1870.preheader
  %mm.97.lcssa = phi i32 [ %530, %for.cond1870.for.end1891_crit_edge ], [ %mm.964031, %for.cond1870.preheader ]
  %531 = trunc i64 %indvars.iv4566 to i32
  %add1892 = add nsw i32 %531, %kstart1836.14029
  %inc1895 = add nsw i32 %ii1833.14028, 1
  %indvars.iv.next4567 = add i64 %indvars.iv4566, -1
  %exitcond4569 = icmp eq i32 %inc1895, %3
  br i1 %exitcond4569, label %sw.epilog2123, label %for.cond1870.preheader

if.else1899:                                      ; preds = %sw.bb1826
  %mul1905 = shl nsw i32 %3, 1
  %add1906 = add nsw i32 %mul1905, %4
  %sub1907 = add nsw i32 %add1906, -1
  %type1912 = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 4
  %532 = load i32* %type1912, align 4, !tbaa !3
  switch i32 %532, label %sw.epilog2123 [
    i32 1, label %for.cond1915.preheader
    i32 2, label %for.cond1939.preheader
  ]

for.cond1939.preheader:                           ; preds = %if.else1899
  %cmp19404051 = icmp sgt i32 %3, 0
  br i1 %cmp19404051, label %for.cond1942.preheader.lr.ph, label %sw.epilog2123

for.cond1942.preheader.lr.ph:                     ; preds = %for.cond1939.preheader
  %cmp19434045 = icmp sgt i32 %5, 0
  %533 = add i32 %3, 1
  %534 = icmp sgt i32 %add13, %533
  %smax4586 = select i1 %534, i32 %add13, i32 %533
  %535 = sub i32 %smax4586, %3
  %536 = add i32 %4, %5
  %537 = shl i32 %3, 1
  %538 = add i32 %536, %537
  %539 = add i32 %538, -3
  %540 = sext i32 %539 to i64
  br label %for.cond1942.preheader

for.cond1915.preheader:                           ; preds = %if.else1899
  %cmp19164039 = icmp sgt i32 %3, 0
  br i1 %cmp19164039, label %for.cond1918.preheader.lr.ph, label %sw.epilog2123

for.cond1918.preheader.lr.ph:                     ; preds = %for.cond1915.preheader
  %cmp19194033 = icmp sgt i32 %5, 0
  %541 = add i32 %3, 1
  %542 = icmp sgt i32 %add13, %541
  %smax4575 = select i1 %542, i32 %add13, i32 %541
  %543 = sub i32 %smax4575, %3
  %544 = add i32 %4, %5
  %545 = shl i32 %3, 1
  %546 = add i32 %544, %545
  %547 = add i32 %546, -3
  %548 = sext i32 %547 to i64
  br label %for.cond1918.preheader

for.cond1918.preheader:                           ; preds = %for.end1929, %for.cond1918.preheader.lr.ph
  %indvars.iv4577 = phi i64 [ %548, %for.cond1918.preheader.lr.ph ], [ %indvars.iv.next4578, %for.end1929 ]
  %mm.984043 = phi i32 [ 0, %for.cond1918.preheader.lr.ph ], [ %mm.99.lcssa, %for.end1929 ]
  %kstart1903.04041 = phi i32 [ %sub1907, %for.cond1918.preheader.lr.ph ], [ %add1930, %for.end1929 ]
  %ii1900.04040 = phi i32 [ 0, %for.cond1918.preheader.lr.ph ], [ %inc1933, %for.end1929 ]
  br i1 %cmp19194033, label %for.body1920.lr.ph, label %for.end1929

for.body1920.lr.ph:                               ; preds = %for.cond1918.preheader
  %549 = sext i32 %kstart1903.04041 to i64
  %550 = sext i32 %mm.984043 to i64
  br label %for.body1920

for.body1920:                                     ; preds = %for.body1920.lr.ph, %for.body1920
  %indvars.iv4572 = phi i64 [ %549, %for.body1920.lr.ph ], [ %indvars.iv.next4573, %for.body1920 ]
  %indvars.iv4570 = phi i64 [ %550, %for.body1920.lr.ph ], [ %indvars.iv.next4571, %for.body1920 ]
  %jj1901.04034 = phi i32 [ %3, %for.body1920.lr.ph ], [ %inc1926, %for.body1920 ]
  %arrayidx1922 = getelementptr inbounds double* %call113, i64 %indvars.iv4572
  %551 = load double* %arrayidx1922, align 8, !tbaa !4
  %arrayidx1924 = getelementptr inbounds double* %dvec, i64 %indvars.iv4570
  store double %551, double* %arrayidx1924, align 8, !tbaa !4
  %inc1926 = add nsw i32 %jj1901.04034, 1
  %indvars.iv.next4571 = add i64 %indvars.iv4570, 1
  %cmp1919 = icmp slt i32 %inc1926, %add13
  %indvars.iv.next4573 = add i64 %indvars.iv4572, 1
  br i1 %cmp1919, label %for.body1920, label %for.cond1918.for.end1929_crit_edge

for.cond1918.for.end1929_crit_edge:               ; preds = %for.body1920
  %552 = add i32 %543, %mm.984043
  br label %for.end1929

for.end1929:                                      ; preds = %for.cond1918.for.end1929_crit_edge, %for.cond1918.preheader
  %mm.99.lcssa = phi i32 [ %552, %for.cond1918.for.end1929_crit_edge ], [ %mm.984043, %for.cond1918.preheader ]
  %553 = trunc i64 %indvars.iv4577 to i32
  %add1930 = add nsw i32 %553, %kstart1903.04041
  %inc1933 = add nsw i32 %ii1900.04040, 1
  %indvars.iv.next4578 = add i64 %indvars.iv4577, -2
  %exitcond4580 = icmp eq i32 %inc1933, %3
  br i1 %exitcond4580, label %sw.epilog2123, label %for.cond1918.preheader

for.cond1942.preheader:                           ; preds = %for.end1963, %for.cond1942.preheader.lr.ph
  %indvars.iv4587 = phi i64 [ %540, %for.cond1942.preheader.lr.ph ], [ %indvars.iv.next4588, %for.end1963 ]
  %mm.1004055 = phi i32 [ 0, %for.cond1942.preheader.lr.ph ], [ %mm.101.lcssa, %for.end1963 ]
  %kstart1903.14053 = phi i32 [ %sub1907, %for.cond1942.preheader.lr.ph ], [ %add1964, %for.end1963 ]
  %ii1900.14052 = phi i32 [ 0, %for.cond1942.preheader.lr.ph ], [ %inc1967, %for.end1963 ]
  br i1 %cmp19434045, label %for.body1944.lr.ph, label %for.end1963

for.body1944.lr.ph:                               ; preds = %for.cond1942.preheader
  %554 = sext i32 %kstart1903.14053 to i64
  %555 = sext i32 %mm.1004055 to i64
  br label %for.body1944

for.body1944:                                     ; preds = %for.body1944.lr.ph, %for.body1944
  %indvars.iv4583 = phi i64 [ %554, %for.body1944.lr.ph ], [ %indvars.iv.next4584, %for.body1944 ]
  %indvars.iv4581 = phi i64 [ %555, %for.body1944.lr.ph ], [ %indvars.iv.next4582, %for.body1944 ]
  %jj1901.14046 = phi i32 [ %3, %for.body1944.lr.ph ], [ %inc1960, %for.body1944 ]
  %556 = trunc i64 %indvars.iv4583 to i32
  %mul1945 = shl nsw i32 %556, 1
  %idxprom1946 = sext i32 %mul1945 to i64
  %arrayidx1947 = getelementptr inbounds double* %call113, i64 %idxprom1946
  %557 = load double* %arrayidx1947, align 8, !tbaa !4
  %558 = trunc i64 %indvars.iv4581 to i32
  %mul1948 = shl nsw i32 %558, 1
  %idxprom1949 = sext i32 %mul1948 to i64
  %arrayidx1950 = getelementptr inbounds double* %dvec, i64 %idxprom1949
  store double %557, double* %arrayidx1950, align 8, !tbaa !4
  %add19523347 = or i32 %mul1945, 1
  %idxprom1953 = sext i32 %add19523347 to i64
  %arrayidx1954 = getelementptr inbounds double* %call113, i64 %idxprom1953
  %559 = load double* %arrayidx1954, align 8, !tbaa !4
  %add19563348 = or i32 %mul1948, 1
  %idxprom1957 = sext i32 %add19563348 to i64
  %arrayidx1958 = getelementptr inbounds double* %dvec, i64 %idxprom1957
  store double %559, double* %arrayidx1958, align 8, !tbaa !4
  %inc1960 = add nsw i32 %jj1901.14046, 1
  %indvars.iv.next4582 = add i64 %indvars.iv4581, 1
  %cmp1943 = icmp slt i32 %inc1960, %add13
  %indvars.iv.next4584 = add i64 %indvars.iv4583, 1
  br i1 %cmp1943, label %for.body1944, label %for.cond1942.for.end1963_crit_edge

for.cond1942.for.end1963_crit_edge:               ; preds = %for.body1944
  %560 = add i32 %535, %mm.1004055
  br label %for.end1963

for.end1963:                                      ; preds = %for.cond1942.for.end1963_crit_edge, %for.cond1942.preheader
  %mm.101.lcssa = phi i32 [ %560, %for.cond1942.for.end1963_crit_edge ], [ %mm.1004055, %for.cond1942.preheader ]
  %561 = trunc i64 %indvars.iv4587 to i32
  %add1964 = add nsw i32 %561, %kstart1903.14053
  %inc1967 = add nsw i32 %ii1900.14052, 1
  %indvars.iv.next4588 = add i64 %indvars.iv4587, -2
  %exitcond4590 = icmp eq i32 %inc1967, %3
  br i1 %exitcond4590, label %sw.epilog2123, label %for.cond1942.preheader

sw.bb1972:                                        ; preds = %sw.bb1825
  %562 = load i32* %symflag12, align 4, !tbaa !3
  %switch3405 = icmp ult i32 %562, 2
  br i1 %switch3405, label %if.then1978, label %if.else2046

if.then1978:                                      ; preds = %sw.bb1972
  %type1987 = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 4
  %563 = load i32* %type1987, align 4, !tbaa !3
  switch i32 %563, label %sw.epilog2123 [
    i32 1, label %for.cond1990.preheader
    i32 2, label %for.cond2014.preheader
  ]

for.cond2014.preheader:                           ; preds = %if.then1978
  %cmp20154076 = icmp sgt i32 %5, 0
  br i1 %cmp20154076, label %for.cond2017.preheader.lr.ph, label %sw.epilog2123

for.cond2017.preheader.lr.ph:                     ; preds = %for.cond2014.preheader
  %cmp20184069 = icmp sgt i32 %3, 0
  %564 = add i32 %add13, -1
  %565 = sext i32 %564 to i64
  br label %for.cond2017.preheader

for.cond1990.preheader:                           ; preds = %if.then1978
  %cmp19914064 = icmp sgt i32 %5, 0
  br i1 %cmp19914064, label %for.cond1993.preheader.lr.ph, label %sw.epilog2123

for.cond1993.preheader.lr.ph:                     ; preds = %for.cond1990.preheader
  %cmp19944057 = icmp sgt i32 %3, 0
  %566 = add i32 %add13, -1
  %567 = sext i32 %566 to i64
  br label %for.cond1993.preheader

for.cond1993.preheader:                           ; preds = %for.cond1993.preheader.lr.ph, %for.end2005
  %mm.1024067 = phi i32 [ 0, %for.cond1993.preheader.lr.ph ], [ %mm.103.lcssa, %for.end2005 ]
  %kstart1983.04066 = phi i32 [ %3, %for.cond1993.preheader.lr.ph ], [ %inc2006, %for.end2005 ]
  br i1 %cmp19944057, label %for.body1995.lr.ph, label %for.end2005

for.body1995.lr.ph:                               ; preds = %for.cond1993.preheader
  %568 = sext i32 %mm.1024067 to i64
  br label %for.body1995

for.body1995:                                     ; preds = %for.body1995, %for.body1995.lr.ph
  %indvars.iv4593 = phi i64 [ %567, %for.body1995.lr.ph ], [ %indvars.iv.next4594, %for.body1995 ]
  %indvars.iv4591 = phi i64 [ %568, %for.body1995.lr.ph ], [ %indvars.iv.next4592, %for.body1995 ]
  %kk1982.04060 = phi i32 [ %kstart1983.04066, %for.body1995.lr.ph ], [ %add2000, %for.body1995 ]
  %ii1979.04058 = phi i32 [ 0, %for.body1995.lr.ph ], [ %inc2003, %for.body1995 ]
  %idxprom1996 = sext i32 %kk1982.04060 to i64
  %arrayidx1997 = getelementptr inbounds double* %call113, i64 %idxprom1996
  %569 = load double* %arrayidx1997, align 8, !tbaa !4
  %arrayidx1999 = getelementptr inbounds double* %dvec, i64 %indvars.iv4591
  store double %569, double* %arrayidx1999, align 8, !tbaa !4
  %570 = trunc i64 %indvars.iv4593 to i32
  %add2000 = add nsw i32 %kk1982.04060, %570
  %inc2003 = add nsw i32 %ii1979.04058, 1
  %indvars.iv.next4592 = add i64 %indvars.iv4591, 1
  %indvars.iv.next4594 = add i64 %indvars.iv4593, -1
  %exitcond4596 = icmp eq i32 %inc2003, %3
  br i1 %exitcond4596, label %for.cond1993.for.end2005_crit_edge, label %for.body1995

for.cond1993.for.end2005_crit_edge:               ; preds = %for.body1995
  %571 = add i32 %3, %mm.1024067
  br label %for.end2005

for.end2005:                                      ; preds = %for.cond1993.for.end2005_crit_edge, %for.cond1993.preheader
  %mm.103.lcssa = phi i32 [ %571, %for.cond1993.for.end2005_crit_edge ], [ %mm.1024067, %for.cond1993.preheader ]
  %inc2006 = add nsw i32 %kstart1983.04066, 1
  %cmp1991 = icmp slt i32 %inc2006, %add13
  br i1 %cmp1991, label %for.cond1993.preheader, label %sw.epilog2123

for.cond2017.preheader:                           ; preds = %for.cond2017.preheader.lr.ph, %for.end2039
  %mm.1044079 = phi i32 [ 0, %for.cond2017.preheader.lr.ph ], [ %mm.105.lcssa, %for.end2039 ]
  %kstart1983.14078 = phi i32 [ %3, %for.cond2017.preheader.lr.ph ], [ %inc2040, %for.end2039 ]
  br i1 %cmp20184069, label %for.body2019.lr.ph, label %for.end2039

for.body2019.lr.ph:                               ; preds = %for.cond2017.preheader
  %572 = sext i32 %mm.1044079 to i64
  br label %for.body2019

for.body2019:                                     ; preds = %for.body2019, %for.body2019.lr.ph
  %indvars.iv4599 = phi i64 [ %565, %for.body2019.lr.ph ], [ %indvars.iv.next4600, %for.body2019 ]
  %indvars.iv4597 = phi i64 [ %572, %for.body2019.lr.ph ], [ %indvars.iv.next4598, %for.body2019 ]
  %kk1982.14072 = phi i32 [ %kstart1983.14078, %for.body2019.lr.ph ], [ %add2034, %for.body2019 ]
  %ii1979.14070 = phi i32 [ 0, %for.body2019.lr.ph ], [ %inc2037, %for.body2019 ]
  %mul2020 = shl nsw i32 %kk1982.14072, 1
  %idxprom2021 = sext i32 %mul2020 to i64
  %arrayidx2022 = getelementptr inbounds double* %call113, i64 %idxprom2021
  %573 = load double* %arrayidx2022, align 8, !tbaa !4
  %574 = trunc i64 %indvars.iv4597 to i32
  %mul2023 = shl nsw i32 %574, 1
  %idxprom2024 = sext i32 %mul2023 to i64
  %arrayidx2025 = getelementptr inbounds double* %dvec, i64 %idxprom2024
  store double %573, double* %arrayidx2025, align 8, !tbaa !4
  %add20273345 = or i32 %mul2020, 1
  %idxprom2028 = sext i32 %add20273345 to i64
  %arrayidx2029 = getelementptr inbounds double* %call113, i64 %idxprom2028
  %575 = load double* %arrayidx2029, align 8, !tbaa !4
  %add20313346 = or i32 %mul2023, 1
  %idxprom2032 = sext i32 %add20313346 to i64
  %arrayidx2033 = getelementptr inbounds double* %dvec, i64 %idxprom2032
  store double %575, double* %arrayidx2033, align 8, !tbaa !4
  %576 = trunc i64 %indvars.iv4599 to i32
  %add2034 = add nsw i32 %kk1982.14072, %576
  %inc2037 = add nsw i32 %ii1979.14070, 1
  %indvars.iv.next4598 = add i64 %indvars.iv4597, 1
  %indvars.iv.next4600 = add i64 %indvars.iv4599, -1
  %exitcond4602 = icmp eq i32 %inc2037, %3
  br i1 %exitcond4602, label %for.cond2017.for.end2039_crit_edge, label %for.body2019

for.cond2017.for.end2039_crit_edge:               ; preds = %for.body2019
  %577 = add i32 %3, %mm.1044079
  br label %for.end2039

for.end2039:                                      ; preds = %for.cond2017.for.end2039_crit_edge, %for.cond2017.preheader
  %mm.105.lcssa = phi i32 [ %577, %for.cond2017.for.end2039_crit_edge ], [ %mm.1044079, %for.cond2017.preheader ]
  %inc2040 = add nsw i32 %kstart1983.14078, 1
  %cmp2015 = icmp slt i32 %inc2040, %add13
  br i1 %cmp2015, label %for.cond2017.preheader, label %sw.epilog2123

if.else2046:                                      ; preds = %sw.bb1972
  %mul2053 = shl nsw i32 %3, 1
  %add2054 = add nsw i32 %mul2053, %4
  %sub2055 = add nsw i32 %add2054, -1
  %type2060 = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 4
  %578 = load i32* %type2060, align 4, !tbaa !3
  switch i32 %578, label %sw.epilog2123 [
    i32 1, label %for.cond2063.preheader
    i32 2, label %for.cond2087.preheader
  ]

for.cond2087.preheader:                           ; preds = %if.else2046
  %cmp20884100 = icmp sgt i32 %5, 0
  br i1 %cmp20884100, label %for.cond2090.preheader.lr.ph, label %sw.epilog2123

for.cond2090.preheader.lr.ph:                     ; preds = %for.cond2087.preheader
  %cmp20914093 = icmp sgt i32 %3, 0
  %579 = add i32 %4, %5
  %580 = shl i32 %3, 1
  %581 = add i32 %579, %580
  %582 = add i32 %581, -3
  %583 = sext i32 %582 to i64
  br label %for.cond2090.preheader

for.cond2063.preheader:                           ; preds = %if.else2046
  %cmp20644088 = icmp sgt i32 %5, 0
  br i1 %cmp20644088, label %for.cond2066.preheader.lr.ph, label %sw.epilog2123

for.cond2066.preheader.lr.ph:                     ; preds = %for.cond2063.preheader
  %cmp20674081 = icmp sgt i32 %3, 0
  %584 = add i32 %4, %5
  %585 = shl i32 %3, 1
  %586 = add i32 %584, %585
  %587 = add i32 %586, -3
  %588 = sext i32 %587 to i64
  br label %for.cond2066.preheader

for.cond2066.preheader:                           ; preds = %for.cond2066.preheader.lr.ph, %for.end2078
  %mm.1064091 = phi i32 [ 0, %for.cond2066.preheader.lr.ph ], [ %mm.107.lcssa, %for.end2078 ]
  %kstart2051.04090 = phi i32 [ %sub2055, %for.cond2066.preheader.lr.ph ], [ %inc2079, %for.end2078 ]
  %jj2048.04089 = phi i32 [ %3, %for.cond2066.preheader.lr.ph ], [ %inc2081, %for.end2078 ]
  br i1 %cmp20674081, label %for.body2068.lr.ph, label %for.end2078

for.body2068.lr.ph:                               ; preds = %for.cond2066.preheader
  %589 = sext i32 %mm.1064091 to i64
  br label %for.body2068

for.body2068:                                     ; preds = %for.body2068, %for.body2068.lr.ph
  %indvars.iv4605 = phi i64 [ %588, %for.body2068.lr.ph ], [ %indvars.iv.next4606, %for.body2068 ]
  %indvars.iv4603 = phi i64 [ %589, %for.body2068.lr.ph ], [ %indvars.iv.next4604, %for.body2068 ]
  %kk2050.04084 = phi i32 [ %kstart2051.04090, %for.body2068.lr.ph ], [ %add2073, %for.body2068 ]
  %ii2047.04082 = phi i32 [ 0, %for.body2068.lr.ph ], [ %inc2076, %for.body2068 ]
  %idxprom2069 = sext i32 %kk2050.04084 to i64
  %arrayidx2070 = getelementptr inbounds double* %call113, i64 %idxprom2069
  %590 = load double* %arrayidx2070, align 8, !tbaa !4
  %arrayidx2072 = getelementptr inbounds double* %dvec, i64 %indvars.iv4603
  store double %590, double* %arrayidx2072, align 8, !tbaa !4
  %591 = trunc i64 %indvars.iv4605 to i32
  %add2073 = add nsw i32 %kk2050.04084, %591
  %inc2076 = add nsw i32 %ii2047.04082, 1
  %indvars.iv.next4604 = add i64 %indvars.iv4603, 1
  %indvars.iv.next4606 = add i64 %indvars.iv4605, -2
  %exitcond4608 = icmp eq i32 %inc2076, %3
  br i1 %exitcond4608, label %for.cond2066.for.end2078_crit_edge, label %for.body2068

for.cond2066.for.end2078_crit_edge:               ; preds = %for.body2068
  %592 = add i32 %3, %mm.1064091
  br label %for.end2078

for.end2078:                                      ; preds = %for.cond2066.for.end2078_crit_edge, %for.cond2066.preheader
  %mm.107.lcssa = phi i32 [ %592, %for.cond2066.for.end2078_crit_edge ], [ %mm.1064091, %for.cond2066.preheader ]
  %inc2079 = add nsw i32 %kstart2051.04090, 1
  %inc2081 = add nsw i32 %jj2048.04089, 1
  %cmp2064 = icmp slt i32 %inc2081, %add13
  br i1 %cmp2064, label %for.cond2066.preheader, label %sw.epilog2123

for.cond2090.preheader:                           ; preds = %for.cond2090.preheader.lr.ph, %for.end2112
  %mm.1084103 = phi i32 [ 0, %for.cond2090.preheader.lr.ph ], [ %mm.109.lcssa, %for.end2112 ]
  %kstart2051.14102 = phi i32 [ %sub2055, %for.cond2090.preheader.lr.ph ], [ %inc2113, %for.end2112 ]
  %jj2048.14101 = phi i32 [ %3, %for.cond2090.preheader.lr.ph ], [ %inc2115, %for.end2112 ]
  br i1 %cmp20914093, label %for.body2092.lr.ph, label %for.end2112

for.body2092.lr.ph:                               ; preds = %for.cond2090.preheader
  %593 = sext i32 %mm.1084103 to i64
  br label %for.body2092

for.body2092:                                     ; preds = %for.body2092, %for.body2092.lr.ph
  %indvars.iv4611 = phi i64 [ %583, %for.body2092.lr.ph ], [ %indvars.iv.next4612, %for.body2092 ]
  %indvars.iv4609 = phi i64 [ %593, %for.body2092.lr.ph ], [ %indvars.iv.next4610, %for.body2092 ]
  %kk2050.14096 = phi i32 [ %kstart2051.14102, %for.body2092.lr.ph ], [ %add2107, %for.body2092 ]
  %ii2047.14094 = phi i32 [ 0, %for.body2092.lr.ph ], [ %inc2110, %for.body2092 ]
  %mul2093 = shl nsw i32 %kk2050.14096, 1
  %idxprom2094 = sext i32 %mul2093 to i64
  %arrayidx2095 = getelementptr inbounds double* %call113, i64 %idxprom2094
  %594 = load double* %arrayidx2095, align 8, !tbaa !4
  %595 = trunc i64 %indvars.iv4609 to i32
  %mul2096 = shl nsw i32 %595, 1
  %idxprom2097 = sext i32 %mul2096 to i64
  %arrayidx2098 = getelementptr inbounds double* %dvec, i64 %idxprom2097
  store double %594, double* %arrayidx2098, align 8, !tbaa !4
  %add21003343 = or i32 %mul2093, 1
  %idxprom2101 = sext i32 %add21003343 to i64
  %arrayidx2102 = getelementptr inbounds double* %call113, i64 %idxprom2101
  %596 = load double* %arrayidx2102, align 8, !tbaa !4
  %add21043344 = or i32 %mul2096, 1
  %idxprom2105 = sext i32 %add21043344 to i64
  %arrayidx2106 = getelementptr inbounds double* %dvec, i64 %idxprom2105
  store double %596, double* %arrayidx2106, align 8, !tbaa !4
  %597 = trunc i64 %indvars.iv4611 to i32
  %add2107 = add nsw i32 %kk2050.14096, %597
  %inc2110 = add nsw i32 %ii2047.14094, 1
  %indvars.iv.next4610 = add i64 %indvars.iv4609, 1
  %indvars.iv.next4612 = add i64 %indvars.iv4611, -2
  %exitcond4614 = icmp eq i32 %inc2110, %3
  br i1 %exitcond4614, label %for.cond2090.for.end2112_crit_edge, label %for.body2092

for.cond2090.for.end2112_crit_edge:               ; preds = %for.body2092
  %598 = add i32 %3, %mm.1084103
  br label %for.end2112

for.end2112:                                      ; preds = %for.cond2090.for.end2112_crit_edge, %for.cond2090.preheader
  %mm.109.lcssa = phi i32 [ %598, %for.cond2090.for.end2112_crit_edge ], [ %mm.1084103, %for.cond2090.preheader ]
  %inc2113 = add nsw i32 %kstart2051.14102, 1
  %inc2115 = add nsw i32 %jj2048.14101, 1
  %cmp2088 = icmp slt i32 %inc2115, %add13
  br i1 %cmp2088, label %for.cond2090.preheader, label %sw.epilog2123

sw.epilog2123:                                    ; preds = %for.cond2087.preheader, %for.end2112, %for.cond2063.preheader, %for.end2078, %for.cond2014.preheader, %for.end2039, %for.cond1990.preheader, %for.end2005, %for.cond1939.preheader, %for.end1963, %for.cond1915.preheader, %for.end1929, %for.cond1867.preheader, %for.end1891, %for.cond1843.preheader, %for.end1857, %for.cond1790.preheader, %for.end1815, %for.cond1766.preheader, %for.end1781, %for.end1742, %for.cond1671.preheader, %for.end1697, %for.end1660, %for.cond1597.preheader, %for.end1619, %for.cond1538.preheader, %for.end1564, %for.cond1512.preheader, %for.end1528, %for.end1489, %for.cond1410.preheader, %for.end1440, %for.end1398, %for.cond1346.preheader, %for.end1362, %for.cond1291.preheader, %for.end1315, %for.cond1267.preheader, %for.end1281, %for.cond1221.preheader, %for.end1246, %for.cond1197.preheader, %for.end1212, %for.cond1146.preheader, %for.end1172, %for.cond1120.preheader, %for.end1136, %for.cond1072.preheader, %for.end1098, %for.cond1047.preheader, %for.end1063, %for.cond987.preheader, %for.end1019, %for.cond956.preheader, %for.end978, %for.cond906.preheader, %for.end931, %for.cond841.preheader, %for.end856, %for.end799, %for.cond736.preheader, %for.end758, %for.cond678.preheader, %for.end704, %for.cond652.preheader, %for.end668, %for.end629, %for.cond550.preheader, %for.end580, %for.end538, %for.cond486.preheader, %for.end502, %for.cond438.preheader, %for.body440, %for.cond421.preheader, %for.body423, %for.inc402, %for.cond331.preheader, %for.inc358, %for.body304, %for.cond285.preheader, %for.body287, %for.cond230.preheader, %for.end256, %for.cond204.preheader, %for.end220, %for.cond150.preheader, %for.end182, %for.cond124.preheader, %for.end142, %if.else2046, %if.then1978, %if.else1899, %if.then1832, %if.else1750, %if.else1497, %sw.bb1253, %sw.bb1182, %sw.bb1105, %sw.bb1030, %if.else939, %if.else637, %if.else408, %sw.bb189, %sw.bb115, %if.end112, %sw.bb1825, %if.else1368, %if.else1445, %if.else1624, %if.else1702, %sw.bb1324, %sw.bb1181, %sw.bb1029, %if.else508, %if.else585, %if.else763, %if.else861, %sw.bb464, %if.else361, %if.else298, %sw.bb114
  %mm.110 = phi i32 [ 0, %if.end112 ], [ 0, %sw.bb1825 ], [ 0, %sw.bb1324 ], [ 0, %if.else1624 ], [ 0, %if.else1702 ], [ 0, %if.else1368 ], [ 0, %if.else1445 ], [ 0, %sw.bb1181 ], [ 0, %sw.bb1029 ], [ 0, %sw.bb464 ], [ 0, %if.else763 ], [ 0, %if.else861 ], [ 0, %if.else508 ], [ 0, %if.else585 ], [ 0, %if.else298 ], [ 0, %if.else361 ], [ 0, %sw.bb114 ], [ 0, %sw.bb115 ], [ 0, %sw.bb189 ], [ 0, %if.else408 ], [ 0, %if.else637 ], [ 0, %if.else939 ], [ 0, %sw.bb1030 ], [ 0, %sw.bb1105 ], [ 0, %sw.bb1182 ], [ 0, %sw.bb1253 ], [ 0, %if.else1497 ], [ 0, %if.else1750 ], [ 0, %if.then1832 ], [ 0, %if.else1899 ], [ 0, %if.then1978 ], [ 0, %if.else2046 ], [ 0, %for.cond124.preheader ], [ %mm.1.lcssa, %for.end142 ], [ 0, %for.cond150.preheader ], [ %mm.3.lcssa, %for.end182 ], [ 0, %for.cond204.preheader ], [ %mm.5.lcssa, %for.end220 ], [ 0, %for.cond230.preheader ], [ %mm.7.lcssa, %for.end256 ], [ 0, %for.cond285.preheader ], [ %3, %for.body287 ], [ %3, %for.body304 ], [ 0, %for.cond331.preheader ], [ %mm.11.lcssa, %for.inc358 ], [ %mm.14.lcssa, %for.inc402 ], [ 0, %for.cond421.preheader ], [ %3, %for.body423 ], [ 0, %for.cond438.preheader ], [ %3, %for.body440 ], [ 0, %for.cond486.preheader ], [ %mm.19.lcssa, %for.end502 ], [ %mm.21.lcssa, %for.end538 ], [ 0, %for.cond550.preheader ], [ %mm.23.lcssa, %for.end580 ], [ %mm.26.lcssa, %for.end629 ], [ 0, %for.cond652.preheader ], [ %mm.29.lcssa, %for.end668 ], [ 0, %for.cond678.preheader ], [ %mm.31.lcssa, %for.end704 ], [ 0, %for.cond736.preheader ], [ %mm.33.lcssa, %for.end758 ], [ %mm.35.lcssa, %for.end799 ], [ %mm.36.lcssa, %for.cond841.preheader ], [ %mm.40.lcssa, %for.end856 ], [ %mm.41.lcssa, %for.cond906.preheader ], [ %mm.45.lcssa, %for.end931 ], [ 0, %for.cond956.preheader ], [ %mm.47.lcssa, %for.end978 ], [ 0, %for.cond987.preheader ], [ %mm.49.lcssa, %for.end1019 ], [ 0, %for.cond1047.preheader ], [ %mm.51.lcssa, %for.end1063 ], [ 0, %for.cond1072.preheader ], [ %mm.53.lcssa, %for.end1098 ], [ 0, %for.cond1120.preheader ], [ %mm.55.lcssa, %for.end1136 ], [ 0, %for.cond1146.preheader ], [ %mm.57.lcssa, %for.end1172 ], [ 0, %for.cond1197.preheader ], [ %mm.59.lcssa, %for.end1212 ], [ 0, %for.cond1221.preheader ], [ %mm.61.lcssa, %for.end1246 ], [ 0, %for.cond1267.preheader ], [ %mm.63.lcssa, %for.end1281 ], [ 0, %for.cond1291.preheader ], [ %mm.65.lcssa, %for.end1315 ], [ 0, %for.cond1346.preheader ], [ %mm.67.lcssa, %for.end1362 ], [ %mm.69.lcssa, %for.end1398 ], [ 0, %for.cond1410.preheader ], [ %mm.71.lcssa, %for.end1440 ], [ %mm.74.lcssa, %for.end1489 ], [ 0, %for.cond1512.preheader ], [ %mm.77.lcssa, %for.end1528 ], [ 0, %for.cond1538.preheader ], [ %mm.79.lcssa, %for.end1564 ], [ 0, %for.cond1597.preheader ], [ %mm.81.lcssa, %for.end1619 ], [ %mm.83.lcssa, %for.end1660 ], [ 0, %for.cond1671.preheader ], [ %mm.85.lcssa, %for.end1697 ], [ %mm.88.lcssa, %for.end1742 ], [ 0, %for.cond1766.preheader ], [ %mm.91.lcssa, %for.end1781 ], [ 0, %for.cond1790.preheader ], [ %mm.93.lcssa, %for.end1815 ], [ 0, %for.cond1843.preheader ], [ %mm.95.lcssa, %for.end1857 ], [ 0, %for.cond1867.preheader ], [ %mm.97.lcssa, %for.end1891 ], [ 0, %for.cond1915.preheader ], [ %mm.99.lcssa, %for.end1929 ], [ 0, %for.cond1939.preheader ], [ %mm.101.lcssa, %for.end1963 ], [ 0, %for.cond1990.preheader ], [ %mm.103.lcssa, %for.end2005 ], [ 0, %for.cond2014.preheader ], [ %mm.105.lcssa, %for.end2039 ], [ 0, %for.cond2063.preheader ], [ %mm.107.lcssa, %for.end2078 ], [ 0, %for.cond2087.preheader ], [ %mm.109.lcssa, %for.end2112 ]
  ret i32 %mm.110
}

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #1

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32) #2

; Function Attrs: optsize
declare double* @Chv_entries(%struct._Chv*) #3

; Function Attrs: nounwind optsize uwtable
define i32 @Chv_copyBigEntriesToVector(%struct._Chv* %chv, i32 %npivot, i32* %pivotsizes, i32* %sizes, i32* %ivec, double* %dvec, i32 %copyflag, i32 %storeflag, double %droptol) #0 {
entry:
  %cmp = icmp eq %struct._Chv* %chv, null
  %cmp1 = icmp eq i32* %sizes, null
  %or.cond = or i1 %cmp, %cmp1
  %cmp3 = icmp eq i32* %ivec, null
  %or.cond4103 = or i1 %or.cond, %cmp3
  %cmp5 = icmp eq double* %dvec, null
  %or.cond4104 = or i1 %or.cond4103, %cmp5
  br i1 %or.cond4104, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([94 x i8]* @.str5, i64 0, i64 0), %struct._Chv* %chv, i32* %sizes, i32* %ivec, double* %dvec) #5
  tail call void @exit(i32 -1) #6
  unreachable

if.end:                                           ; preds = %entry
  switch i32 %copyflag, label %sw.default [
    i32 1, label %sw.epilog
    i32 3, label %sw.epilog
    i32 4, label %sw.epilog
    i32 5, label %sw.epilog
    i32 6, label %sw.epilog
    i32 7, label %sw.epilog
  ]

sw.default:                                       ; preds = %if.end
  %1 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call6 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([356 x i8]* @.str6, i64 0, i64 0), %struct._Chv* %chv, i32* %sizes, i32* %ivec, double* %dvec, i32 %copyflag, i32 %storeflag, i32 %copyflag) #5
  tail call void @exit(i32 -1) #6
  unreachable

sw.epilog:                                        ; preds = %if.end, %if.end, %if.end, %if.end, %if.end, %if.end
  %2 = icmp ugt i32 %storeflag, 1
  br i1 %2, label %if.then10, label %if.end12

if.then10:                                        ; preds = %sw.epilog
  %3 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call11 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([152 x i8]* @.str7, i64 0, i64 0), %struct._Chv* %chv, i32* %sizes, i32* %ivec, double* %dvec, i32 %copyflag, i32 %storeflag, i32 %storeflag) #5
  tail call void @exit(i32 -1) #6
  unreachable

if.end12:                                         ; preds = %sw.epilog
  %nD13 = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 1
  %4 = load i32* %nD13, align 4, !tbaa !3
  %nL14 = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 2
  %5 = load i32* %nL14, align 4, !tbaa !3
  %nU15 = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 3
  %6 = load i32* %nU15, align 4, !tbaa !3
  %symflag16 = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 5
  %add = add i32 %5, %4
  %add17 = add i32 %6, %4
  %call18 = tail call double* @Chv_entries(%struct._Chv* %chv) #5
  switch i32 %copyflag, label %sw.epilog2477 [
    i32 1, label %sw.bb19
    i32 3, label %sw.bb215
    i32 4, label %sw.bb970
    i32 5, label %sw.bb1190
    i32 6, label %sw.bb1391
    i32 7, label %sw.bb2073
  ]

sw.bb19:                                          ; preds = %if.end12
  switch i32 %storeflag, label %sw.epilog2477 [
    i32 0, label %sw.bb20
    i32 1, label %sw.bb111
  ]

sw.bb20:                                          ; preds = %sw.bb19
  %sub = add nsw i32 %add, -1
  %type = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 4
  %7 = load i32* %type, align 4, !tbaa !3
  switch i32 %7, label %sw.epilog2477 [
    i32 1, label %for.cond.preheader
    i32 2, label %for.cond56.preheader
  ]

for.cond56.preheader:                             ; preds = %sw.bb20
  %cmp574131 = icmp sgt i32 %add, 0
  br i1 %cmp574131, label %for.body58.lr.ph, label %sw.epilog2477

for.body58.lr.ph:                                 ; preds = %for.cond56.preheader
  %8 = add i32 %5, %6
  %9 = shl i32 %4, 1
  %10 = add i32 %8, %9
  %11 = add i32 %10, -1
  %12 = sext i32 %11 to i64
  br label %for.body58

for.cond.preheader:                               ; preds = %sw.bb20
  %cmp274117 = icmp sgt i32 %add, 0
  br i1 %cmp274117, label %for.body.lr.ph, label %sw.epilog2477

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %13 = add i32 %5, %6
  %14 = shl i32 %4, 1
  %15 = add i32 %13, %14
  %16 = add i32 %15, -1
  %17 = sext i32 %16 to i64
  br label %for.body

for.body:                                         ; preds = %for.end, %for.body.lr.ph
  %indvars.iv4828 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next4829, %for.end ]
  %mm.04120 = phi i32 [ 0, %for.body.lr.ph ], [ %mm.1.lcssa, %for.end ]
  %kstart.04118 = phi i32 [ %sub, %for.body.lr.ph ], [ %dec, %for.end ]
  %18 = trunc i64 %indvars.iv4828 to i32
  %cmp28 = icmp slt i32 %18, %4
  %.sink = select i1 %cmp28, i32 %18, i32 %4
  %sub29 = add nsw i32 %.sink, -1
  %cmp324110 = icmp slt i32 %.sink, 1
  br i1 %cmp324110, label %for.end, label %for.body33

for.body33:                                       ; preds = %for.body, %if.end44
  %indvars.iv = phi i64 [ %indvars.iv.next, %if.end44 ], [ %17, %for.body ]
  %mm.14115 = phi i32 [ %mm.2, %if.end44 ], [ %mm.04120, %for.body ]
  %count.04114 = phi i32 [ %count.1, %if.end44 ], [ 0, %for.body ]
  %jj.04113 = phi i32 [ %inc47, %if.end44 ], [ 0, %for.body ]
  %kk.04111 = phi i32 [ %add45, %if.end44 ], [ %kstart.04118, %for.body ]
  %idxprom = sext i32 %kk.04111 to i64
  %arrayidx = getelementptr inbounds double* %call18, i64 %idxprom
  %19 = load double* %arrayidx, align 8, !tbaa !4
  %call34 = tail call double @fabs(double %19) #7
  %cmp35 = fcmp ult double %call34, %droptol
  br i1 %cmp35, label %if.end44, label %if.then36

if.then36:                                        ; preds = %for.body33
  %idxprom37 = sext i32 %mm.14115 to i64
  %arrayidx38 = getelementptr inbounds i32* %ivec, i64 %idxprom37
  store i32 %jj.04113, i32* %arrayidx38, align 4, !tbaa !3
  %arrayidx42 = getelementptr inbounds double* %dvec, i64 %idxprom37
  store double %19, double* %arrayidx42, align 8, !tbaa !4
  %inc = add nsw i32 %mm.14115, 1
  %inc43 = add nsw i32 %count.04114, 1
  br label %if.end44

if.end44:                                         ; preds = %for.body33, %if.then36
  %count.1 = phi i32 [ %inc43, %if.then36 ], [ %count.04114, %for.body33 ]
  %mm.2 = phi i32 [ %inc, %if.then36 ], [ %mm.14115, %for.body33 ]
  %20 = trunc i64 %indvars.iv to i32
  %add45 = add nsw i32 %20, %kk.04111
  %inc47 = add nsw i32 %jj.04113, 1
  %cmp32 = icmp slt i32 %jj.04113, %sub29
  %indvars.iv.next = add i64 %indvars.iv, -2
  br i1 %cmp32, label %for.body33, label %for.end

for.end:                                          ; preds = %if.end44, %for.body
  %mm.1.lcssa = phi i32 [ %mm.04120, %for.body ], [ %mm.2, %if.end44 ]
  %count.0.lcssa = phi i32 [ 0, %for.body ], [ %count.1, %if.end44 ]
  %arrayidx49 = getelementptr inbounds i32* %sizes, i64 %indvars.iv4828
  store i32 %count.0.lcssa, i32* %arrayidx49, align 4, !tbaa !3
  %dec = add nsw i32 %kstart.04118, -1
  %indvars.iv.next4829 = add i64 %indvars.iv4828, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next4829 to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %add
  br i1 %exitcond, label %sw.epilog2477, label %for.body

for.body58:                                       ; preds = %for.end102, %for.body58.lr.ph
  %indvars.iv4833 = phi i64 [ 0, %for.body58.lr.ph ], [ %indvars.iv.next4834, %for.end102 ]
  %mm.34134 = phi i32 [ 0, %for.body58.lr.ph ], [ %mm.4.lcssa, %for.end102 ]
  %kstart.14132 = phi i32 [ %sub, %for.body58.lr.ph ], [ %dec105, %for.end102 ]
  %21 = trunc i64 %indvars.iv4833 to i32
  %cmp59 = icmp slt i32 %21, %4
  %.sink2478 = select i1 %cmp59, i32 %21, i32 %4
  %sub61 = add nsw i32 %.sink2478, -1
  %cmp674122 = icmp slt i32 %.sink2478, 1
  br i1 %cmp674122, label %for.end102, label %for.body68

for.body68:                                       ; preds = %for.body58, %if.end97
  %indvars.iv4830 = phi i64 [ %indvars.iv.next4831, %if.end97 ], [ %12, %for.body58 ]
  %mm.44127 = phi i32 [ %mm.5, %if.end97 ], [ %mm.34134, %for.body58 ]
  %count.24126 = phi i32 [ %count.3, %if.end97 ], [ 0, %for.body58 ]
  %jj.14125 = phi i32 [ %inc101, %if.end97 ], [ 0, %for.body58 ]
  %kk.14123 = phi i32 [ %add98, %if.end97 ], [ %kstart.14132, %for.body58 ]
  %mul69 = shl nsw i32 %kk.14123, 1
  %idxprom70 = sext i32 %mul69 to i64
  %arrayidx71 = getelementptr inbounds double* %call18, i64 %idxprom70
  %22 = load double* %arrayidx71, align 8, !tbaa !4
  %add734101 = or i32 %mul69, 1
  %idxprom74 = sext i32 %add734101 to i64
  %arrayidx75 = getelementptr inbounds double* %call18, i64 %idxprom74
  %23 = load double* %arrayidx75, align 8, !tbaa !4
  %call76 = tail call double @Zabs(double %22, double %23) #5
  %cmp77 = fcmp ult double %call76, %droptol
  br i1 %cmp77, label %if.end97, label %if.then78

if.then78:                                        ; preds = %for.body68
  %idxprom79 = sext i32 %mm.44127 to i64
  %arrayidx80 = getelementptr inbounds i32* %ivec, i64 %idxprom79
  store i32 %jj.14125, i32* %arrayidx80, align 4, !tbaa !3
  %24 = load double* %arrayidx71, align 8, !tbaa !4
  %mul84 = shl nsw i32 %mm.44127, 1
  %idxprom85 = sext i32 %mul84 to i64
  %arrayidx86 = getelementptr inbounds double* %dvec, i64 %idxprom85
  store double %24, double* %arrayidx86, align 8, !tbaa !4
  %25 = load double* %arrayidx75, align 8, !tbaa !4
  %add924102 = or i32 %mul84, 1
  %idxprom93 = sext i32 %add924102 to i64
  %arrayidx94 = getelementptr inbounds double* %dvec, i64 %idxprom93
  store double %25, double* %arrayidx94, align 8, !tbaa !4
  %inc95 = add nsw i32 %mm.44127, 1
  %inc96 = add nsw i32 %count.24126, 1
  br label %if.end97

if.end97:                                         ; preds = %for.body68, %if.then78
  %count.3 = phi i32 [ %inc96, %if.then78 ], [ %count.24126, %for.body68 ]
  %mm.5 = phi i32 [ %inc95, %if.then78 ], [ %mm.44127, %for.body68 ]
  %26 = trunc i64 %indvars.iv4830 to i32
  %add98 = add nsw i32 %26, %kk.14123
  %inc101 = add nsw i32 %jj.14125, 1
  %cmp67 = icmp slt i32 %jj.14125, %sub61
  %indvars.iv.next4831 = add i64 %indvars.iv4830, -2
  br i1 %cmp67, label %for.body68, label %for.end102

for.end102:                                       ; preds = %if.end97, %for.body58
  %mm.4.lcssa = phi i32 [ %mm.34134, %for.body58 ], [ %mm.5, %if.end97 ]
  %count.2.lcssa = phi i32 [ 0, %for.body58 ], [ %count.3, %if.end97 ]
  %arrayidx104 = getelementptr inbounds i32* %sizes, i64 %indvars.iv4833
  store i32 %count.2.lcssa, i32* %arrayidx104, align 4, !tbaa !3
  %dec105 = add nsw i32 %kstart.14132, -1
  %indvars.iv.next4834 = add i64 %indvars.iv4833, 1
  %lftr.wideiv4835 = trunc i64 %indvars.iv.next4834 to i32
  %exitcond4836 = icmp eq i32 %lftr.wideiv4835, %add
  br i1 %exitcond4836, label %sw.epilog2477, label %for.body58

sw.bb111:                                         ; preds = %sw.bb19
  %sub119 = add nsw i32 %add, -1
  %mul120 = shl i32 %4, 1
  %add121 = add i32 %5, -2
  %add122 = add i32 %add121, %mul120
  %sub123 = add i32 %add122, %6
  %type124 = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 4
  %27 = load i32* %type124, align 4, !tbaa !3
  switch i32 %27, label %sw.epilog2477 [
    i32 1, label %for.cond127.preheader
    i32 2, label %for.cond164.preheader
  ]

for.cond164.preheader:                            ; preds = %sw.bb111
  %cmp1654160 = icmp sgt i32 %4, 0
  br i1 %cmp1654160, label %for.body166, label %sw.epilog2477

for.cond127.preheader:                            ; preds = %sw.bb111
  %cmp1284145 = icmp sgt i32 %4, 0
  br i1 %cmp1284145, label %for.body129, label %sw.epilog2477

for.body129:                                      ; preds = %for.cond127.preheader, %for.end152
  %indvars.iv4841 = phi i64 [ %indvars.iv.next4842, %for.end152 ], [ 0, %for.cond127.preheader ]
  %mm.64149 = phi i32 [ %mm.7.lcssa, %for.end152 ], [ 0, %for.cond127.preheader ]
  %stride117.04148 = phi i32 [ %sub154, %for.end152 ], [ %sub123, %for.cond127.preheader ]
  %kstart116.04147 = phi i32 [ %add153, %for.end152 ], [ %sub119, %for.cond127.preheader ]
  %jj114.04146 = phi i32 [ %add131, %for.end152 ], [ 0, %for.cond127.preheader ]
  %indvars.iv.next4842 = add i64 %indvars.iv4841, 1
  %add131 = add nsw i32 %jj114.04146, 1
  %28 = trunc i64 %indvars.iv.next4842 to i32
  %cmp1334137 = icmp slt i32 %28, %add
  br i1 %cmp1334137, label %for.body134, label %for.end152

for.body134:                                      ; preds = %for.body129, %for.inc149
  %kk115.04141.in = phi i32 [ %kk115.04141, %for.inc149 ], [ %kstart116.04147, %for.body129 ]
  %mm.74140 = phi i32 [ %mm.8, %for.inc149 ], [ %mm.64149, %for.body129 ]
  %ii113.04139 = phi i32 [ %inc150, %for.inc149 ], [ %add131, %for.body129 ]
  %count112.04138 = phi i32 [ %count112.1, %for.inc149 ], [ 0, %for.body129 ]
  %kk115.04141 = add nsw i32 %kk115.04141.in, -1
  %idxprom135 = sext i32 %kk115.04141 to i64
  %arrayidx136 = getelementptr inbounds double* %call18, i64 %idxprom135
  %29 = load double* %arrayidx136, align 8, !tbaa !4
  %call137 = tail call double @fabs(double %29) #7
  %cmp138 = fcmp ult double %call137, %droptol
  br i1 %cmp138, label %for.inc149, label %if.then139

if.then139:                                       ; preds = %for.body134
  %idxprom140 = sext i32 %mm.74140 to i64
  %arrayidx141 = getelementptr inbounds i32* %ivec, i64 %idxprom140
  store i32 %ii113.04139, i32* %arrayidx141, align 4, !tbaa !3
  %arrayidx145 = getelementptr inbounds double* %dvec, i64 %idxprom140
  store double %29, double* %arrayidx145, align 8, !tbaa !4
  %inc146 = add nsw i32 %mm.74140, 1
  %inc147 = add nsw i32 %count112.04138, 1
  br label %for.inc149

for.inc149:                                       ; preds = %for.body134, %if.then139
  %count112.1 = phi i32 [ %inc147, %if.then139 ], [ %count112.04138, %for.body134 ]
  %mm.8 = phi i32 [ %inc146, %if.then139 ], [ %mm.74140, %for.body134 ]
  %inc150 = add nsw i32 %ii113.04139, 1
  %exitcond4840 = icmp eq i32 %inc150, %add
  br i1 %exitcond4840, label %for.end152, label %for.body134

for.end152:                                       ; preds = %for.inc149, %for.body129
  %mm.7.lcssa = phi i32 [ %mm.64149, %for.body129 ], [ %mm.8, %for.inc149 ]
  %count112.0.lcssa = phi i32 [ 0, %for.body129 ], [ %count112.1, %for.inc149 ]
  %add153 = add nsw i32 %stride117.04148, %kstart116.04147
  %sub154 = add nsw i32 %stride117.04148, -2
  %arrayidx156 = getelementptr inbounds i32* %sizes, i64 %indvars.iv4841
  store i32 %count112.0.lcssa, i32* %arrayidx156, align 4, !tbaa !3
  %exitcond4844 = icmp eq i32 %28, %4
  br i1 %exitcond4844, label %sw.epilog2477, label %for.body129

for.body166:                                      ; preds = %for.cond164.preheader, %for.end204
  %indvars.iv4849 = phi i64 [ %indvars.iv.next4850, %for.end204 ], [ 0, %for.cond164.preheader ]
  %mm.94164 = phi i32 [ %mm.10.lcssa, %for.end204 ], [ 0, %for.cond164.preheader ]
  %stride117.14163 = phi i32 [ %sub206, %for.end204 ], [ %sub123, %for.cond164.preheader ]
  %kstart116.14162 = phi i32 [ %add205, %for.end204 ], [ %sub119, %for.cond164.preheader ]
  %jj114.14161 = phi i32 [ %add168, %for.end204 ], [ 0, %for.cond164.preheader ]
  %indvars.iv.next4850 = add i64 %indvars.iv4849, 1
  %add168 = add nsw i32 %jj114.14161, 1
  %30 = trunc i64 %indvars.iv.next4850 to i32
  %cmp1704152 = icmp slt i32 %30, %add
  br i1 %cmp1704152, label %for.body171, label %for.end204

for.body171:                                      ; preds = %for.body166, %for.inc201
  %kk115.14156.in = phi i32 [ %kk115.14156, %for.inc201 ], [ %kstart116.14162, %for.body166 ]
  %mm.104155 = phi i32 [ %mm.11, %for.inc201 ], [ %mm.94164, %for.body166 ]
  %ii113.14154 = phi i32 [ %inc202, %for.inc201 ], [ %add168, %for.body166 ]
  %count112.24153 = phi i32 [ %count112.3, %for.inc201 ], [ 0, %for.body166 ]
  %kk115.14156 = add nsw i32 %kk115.14156.in, -1
  %mul172 = shl nsw i32 %kk115.14156, 1
  %idxprom173 = sext i32 %mul172 to i64
  %arrayidx174 = getelementptr inbounds double* %call18, i64 %idxprom173
  %31 = load double* %arrayidx174, align 8, !tbaa !4
  %add1764099 = or i32 %mul172, 1
  %idxprom177 = sext i32 %add1764099 to i64
  %arrayidx178 = getelementptr inbounds double* %call18, i64 %idxprom177
  %32 = load double* %arrayidx178, align 8, !tbaa !4
  %call179 = tail call double @Zabs(double %31, double %32) #5
  %cmp180 = fcmp ult double %call179, %droptol
  br i1 %cmp180, label %for.inc201, label %if.then181

if.then181:                                       ; preds = %for.body171
  %idxprom182 = sext i32 %mm.104155 to i64
  %arrayidx183 = getelementptr inbounds i32* %ivec, i64 %idxprom182
  store i32 %ii113.14154, i32* %arrayidx183, align 4, !tbaa !3
  %33 = load double* %arrayidx174, align 8, !tbaa !4
  %mul187 = shl nsw i32 %mm.104155, 1
  %idxprom188 = sext i32 %mul187 to i64
  %arrayidx189 = getelementptr inbounds double* %dvec, i64 %idxprom188
  store double %33, double* %arrayidx189, align 8, !tbaa !4
  %34 = load double* %arrayidx178, align 8, !tbaa !4
  %add1954100 = or i32 %mul187, 1
  %idxprom196 = sext i32 %add1954100 to i64
  %arrayidx197 = getelementptr inbounds double* %dvec, i64 %idxprom196
  store double %34, double* %arrayidx197, align 8, !tbaa !4
  %inc198 = add nsw i32 %mm.104155, 1
  %inc199 = add nsw i32 %count112.24153, 1
  br label %for.inc201

for.inc201:                                       ; preds = %for.body171, %if.then181
  %count112.3 = phi i32 [ %inc199, %if.then181 ], [ %count112.24153, %for.body171 ]
  %mm.11 = phi i32 [ %inc198, %if.then181 ], [ %mm.104155, %for.body171 ]
  %inc202 = add nsw i32 %ii113.14154, 1
  %exitcond4848 = icmp eq i32 %inc202, %add
  br i1 %exitcond4848, label %for.end204, label %for.body171

for.end204:                                       ; preds = %for.inc201, %for.body166
  %mm.10.lcssa = phi i32 [ %mm.94164, %for.body166 ], [ %mm.11, %for.inc201 ]
  %count112.2.lcssa = phi i32 [ 0, %for.body166 ], [ %count112.3, %for.inc201 ]
  %add205 = add nsw i32 %stride117.14163, %kstart116.14162
  %sub206 = add nsw i32 %stride117.14163, -2
  %arrayidx208 = getelementptr inbounds i32* %sizes, i64 %indvars.iv4849
  store i32 %count112.2.lcssa, i32* %arrayidx208, align 4, !tbaa !3
  %exitcond4852 = icmp eq i32 %30, %4
  br i1 %exitcond4852, label %sw.epilog2477, label %for.body166

sw.bb215:                                         ; preds = %if.end12
  switch i32 %storeflag, label %sw.epilog2477 [
    i32 0, label %sw.bb216
    i32 1, label %sw.bb544
  ]

sw.bb216:                                         ; preds = %sw.bb215
  %35 = load i32* %symflag16, align 4, !tbaa !3
  %switch = icmp ult i32 %35, 2
  br i1 %switch, label %if.then222, label %if.else440

if.then222:                                       ; preds = %sw.bb216
  %cmp230 = icmp eq i32* %pivotsizes, null
  %type232 = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 4
  %36 = load i32* %type232, align 4, !tbaa !3
  %cmp233 = icmp eq i32 %36, 1
  br i1 %cmp230, label %if.then231, label %if.else322

if.then231:                                       ; preds = %if.then222
  br i1 %cmp233, label %for.cond235.preheader, label %if.else268

for.cond235.preheader:                            ; preds = %if.then231
  %cmp2364175 = icmp sgt i32 %4, 0
  br i1 %cmp2364175, label %for.body237, label %sw.epilog2477

for.body237:                                      ; preds = %for.cond235.preheader, %for.end260
  %indvars.iv4857 = phi i64 [ %indvars.iv.next4858, %for.end260 ], [ 0, %for.cond235.preheader ]
  %mm.124179 = phi i32 [ %mm.13.lcssa, %for.end260 ], [ 0, %for.cond235.preheader ]
  %stride228.04178 = phi i32 [ %dec262, %for.end260 ], [ %add17, %for.cond235.preheader ]
  %kstart227.04177 = phi i32 [ %add261, %for.end260 ], [ 0, %for.cond235.preheader ]
  %ii224.04176 = phi i32 [ %add239, %for.end260 ], [ 0, %for.cond235.preheader ]
  %indvars.iv.next4858 = add i64 %indvars.iv4857, 1
  %add239 = add nsw i32 %ii224.04176, 1
  %37 = trunc i64 %indvars.iv.next4858 to i32
  %cmp2414167 = icmp slt i32 %37, %add17
  br i1 %cmp2414167, label %for.body242, label %for.end260

for.body242:                                      ; preds = %for.body237, %for.inc257
  %kk226.04171.in = phi i32 [ %kk226.04171, %for.inc257 ], [ %kstart227.04177, %for.body237 ]
  %mm.134170 = phi i32 [ %mm.14, %for.inc257 ], [ %mm.124179, %for.body237 ]
  %jj225.04169 = phi i32 [ %inc258, %for.inc257 ], [ %add239, %for.body237 ]
  %count223.04168 = phi i32 [ %count223.1, %for.inc257 ], [ 0, %for.body237 ]
  %kk226.04171 = add nsw i32 %kk226.04171.in, 1
  %idxprom243 = sext i32 %kk226.04171 to i64
  %arrayidx244 = getelementptr inbounds double* %call18, i64 %idxprom243
  %38 = load double* %arrayidx244, align 8, !tbaa !4
  %call245 = tail call double @fabs(double %38) #7
  %cmp246 = fcmp ult double %call245, %droptol
  br i1 %cmp246, label %for.inc257, label %if.then247

if.then247:                                       ; preds = %for.body242
  %idxprom248 = sext i32 %mm.134170 to i64
  %arrayidx249 = getelementptr inbounds i32* %ivec, i64 %idxprom248
  store i32 %jj225.04169, i32* %arrayidx249, align 4, !tbaa !3
  %arrayidx253 = getelementptr inbounds double* %dvec, i64 %idxprom248
  store double %38, double* %arrayidx253, align 8, !tbaa !4
  %inc254 = add nsw i32 %mm.134170, 1
  %inc255 = add nsw i32 %count223.04168, 1
  br label %for.inc257

for.inc257:                                       ; preds = %for.body242, %if.then247
  %count223.1 = phi i32 [ %inc255, %if.then247 ], [ %count223.04168, %for.body242 ]
  %mm.14 = phi i32 [ %inc254, %if.then247 ], [ %mm.134170, %for.body242 ]
  %inc258 = add nsw i32 %jj225.04169, 1
  %exitcond4856 = icmp eq i32 %inc258, %add17
  br i1 %exitcond4856, label %for.end260, label %for.body242

for.end260:                                       ; preds = %for.inc257, %for.body237
  %mm.13.lcssa = phi i32 [ %mm.124179, %for.body237 ], [ %mm.14, %for.inc257 ]
  %count223.0.lcssa = phi i32 [ 0, %for.body237 ], [ %count223.1, %for.inc257 ]
  %add261 = add nsw i32 %stride228.04178, %kstart227.04177
  %dec262 = add nsw i32 %stride228.04178, -1
  %arrayidx264 = getelementptr inbounds i32* %sizes, i64 %indvars.iv4857
  store i32 %count223.0.lcssa, i32* %arrayidx264, align 4, !tbaa !3
  %exitcond4860 = icmp eq i32 %37, %4
  br i1 %exitcond4860, label %sw.epilog2477, label %for.body237

if.else268:                                       ; preds = %if.then231
  %cmp270 = icmp eq i32 %36, 2
  %cmp2734190 = icmp sgt i32 %4, 0
  %or.cond5219 = and i1 %cmp270, %cmp2734190
  br i1 %or.cond5219, label %for.body274, label %sw.epilog2477

for.body274:                                      ; preds = %if.else268, %for.end312
  %indvars.iv4865 = phi i64 [ %indvars.iv.next4866, %for.end312 ], [ 0, %if.else268 ]
  %mm.154194 = phi i32 [ %mm.16.lcssa, %for.end312 ], [ 0, %if.else268 ]
  %stride228.14193 = phi i32 [ %dec314, %for.end312 ], [ %add17, %if.else268 ]
  %kstart227.14192 = phi i32 [ %add313, %for.end312 ], [ 0, %if.else268 ]
  %ii224.14191 = phi i32 [ %add276, %for.end312 ], [ 0, %if.else268 ]
  %indvars.iv.next4866 = add i64 %indvars.iv4865, 1
  %add276 = add nsw i32 %ii224.14191, 1
  %39 = trunc i64 %indvars.iv.next4866 to i32
  %cmp2784182 = icmp slt i32 %39, %add17
  br i1 %cmp2784182, label %for.body279, label %for.end312

for.body279:                                      ; preds = %for.body274, %for.inc309
  %kk226.14186.in = phi i32 [ %kk226.14186, %for.inc309 ], [ %kstart227.14192, %for.body274 ]
  %mm.164185 = phi i32 [ %mm.17, %for.inc309 ], [ %mm.154194, %for.body274 ]
  %jj225.14184 = phi i32 [ %inc310, %for.inc309 ], [ %add276, %for.body274 ]
  %count223.24183 = phi i32 [ %count223.3, %for.inc309 ], [ 0, %for.body274 ]
  %kk226.14186 = add nsw i32 %kk226.14186.in, 1
  %mul280 = shl nsw i32 %kk226.14186, 1
  %idxprom281 = sext i32 %mul280 to i64
  %arrayidx282 = getelementptr inbounds double* %call18, i64 %idxprom281
  %40 = load double* %arrayidx282, align 8, !tbaa !4
  %add2844097 = or i32 %mul280, 1
  %idxprom285 = sext i32 %add2844097 to i64
  %arrayidx286 = getelementptr inbounds double* %call18, i64 %idxprom285
  %41 = load double* %arrayidx286, align 8, !tbaa !4
  %call287 = tail call double @Zabs(double %40, double %41) #5
  %cmp288 = fcmp ult double %call287, %droptol
  br i1 %cmp288, label %for.inc309, label %if.then289

if.then289:                                       ; preds = %for.body279
  %idxprom290 = sext i32 %mm.164185 to i64
  %arrayidx291 = getelementptr inbounds i32* %ivec, i64 %idxprom290
  store i32 %jj225.14184, i32* %arrayidx291, align 4, !tbaa !3
  %42 = load double* %arrayidx282, align 8, !tbaa !4
  %mul295 = shl nsw i32 %mm.164185, 1
  %idxprom296 = sext i32 %mul295 to i64
  %arrayidx297 = getelementptr inbounds double* %dvec, i64 %idxprom296
  store double %42, double* %arrayidx297, align 8, !tbaa !4
  %43 = load double* %arrayidx286, align 8, !tbaa !4
  %add3034098 = or i32 %mul295, 1
  %idxprom304 = sext i32 %add3034098 to i64
  %arrayidx305 = getelementptr inbounds double* %dvec, i64 %idxprom304
  store double %43, double* %arrayidx305, align 8, !tbaa !4
  %inc306 = add nsw i32 %mm.164185, 1
  %inc307 = add nsw i32 %count223.24183, 1
  br label %for.inc309

for.inc309:                                       ; preds = %for.body279, %if.then289
  %count223.3 = phi i32 [ %inc307, %if.then289 ], [ %count223.24183, %for.body279 ]
  %mm.17 = phi i32 [ %inc306, %if.then289 ], [ %mm.164185, %for.body279 ]
  %inc310 = add nsw i32 %jj225.14184, 1
  %exitcond4864 = icmp eq i32 %inc310, %add17
  br i1 %exitcond4864, label %for.end312, label %for.body279

for.end312:                                       ; preds = %for.inc309, %for.body274
  %mm.16.lcssa = phi i32 [ %mm.154194, %for.body274 ], [ %mm.17, %for.inc309 ]
  %count223.2.lcssa = phi i32 [ 0, %for.body274 ], [ %count223.3, %for.inc309 ]
  %add313 = add nsw i32 %stride228.14193, %kstart227.14192
  %dec314 = add nsw i32 %stride228.14193, -1
  %arrayidx316 = getelementptr inbounds i32* %sizes, i64 %indvars.iv4865
  store i32 %count223.2.lcssa, i32* %arrayidx316, align 4, !tbaa !3
  %exitcond4868 = icmp eq i32 %39, %4
  br i1 %exitcond4868, label %sw.epilog2477, label %for.body274

if.else322:                                       ; preds = %if.then222
  br i1 %cmp233, label %for.cond326.preheader, label %if.else372

for.cond326.preheader:                            ; preds = %if.else322
  %cmp3274213 = icmp sgt i32 %npivot, 0
  br i1 %cmp3274213, label %for.body328, label %sw.epilog2477

for.body328:                                      ; preds = %for.cond326.preheader, %for.end367
  %indvars.iv4879 = phi i64 [ %indvars.iv.next4880, %for.end367 ], [ 0, %for.cond326.preheader ]
  %mm.184218 = phi i32 [ %mm.19.lcssa, %for.end367 ], [ 0, %for.cond326.preheader ]
  %stride228.24217 = phi i32 [ %stride228.3.lcssa, %for.end367 ], [ %add17, %for.cond326.preheader ]
  %kstart227.24216 = phi i32 [ %kstart227.3.lcssa, %for.end367 ], [ 0, %for.cond326.preheader ]
  %first.04214 = phi i32 [ %add331, %for.end367 ], [ 0, %for.cond326.preheader ]
  %arrayidx330 = getelementptr inbounds i32* %pivotsizes, i64 %indvars.iv4879
  %44 = load i32* %arrayidx330, align 4, !tbaa !3
  %add331 = add nsw i32 %44, %first.04214
  %sub332 = add nsw i32 %add331, -1
  %cmp3344204 = icmp sgt i32 %first.04214, %sub332
  br i1 %cmp3344204, label %for.end367, label %for.body335.lr.ph

for.body335.lr.ph:                                ; preds = %for.body328
  %cmp3414197 = icmp slt i32 %add331, %add17
  %45 = sext i32 %first.04214 to i64
  %46 = add i32 %first.04214, -1
  %47 = add i32 %46, %stride228.24217
  %48 = add i32 %46, %44
  %49 = icmp sgt i32 %first.04214, %48
  %smax = select i1 %49, i32 %first.04214, i32 %48
  %50 = sub i32 %47, %smax
  %51 = sub i32 %smax, %first.04214
  %52 = add i32 %stride228.24217, -1
  %53 = mul i32 %51, %52
  %54 = zext i32 %51 to i33
  %55 = add i32 %smax, -1
  %56 = sub i32 %55, %first.04214
  %57 = zext i32 %56 to i33
  %58 = mul i33 %54, %57
  %59 = lshr i33 %58, 1
  %60 = trunc i33 %59 to i32
  br label %for.body335

for.body335:                                      ; preds = %for.end360, %for.body335.lr.ph
  %indvars.iv4877 = phi i64 [ %indvars.iv.next4878, %for.end360 ], [ %45, %for.body335.lr.ph ]
  %mm.194208 = phi i32 [ %mm.20.lcssa, %for.end360 ], [ %mm.184218, %for.body335.lr.ph ]
  %stride228.34207 = phi i32 [ %dec362, %for.end360 ], [ %stride228.24217, %for.body335.lr.ph ]
  %kstart227.34206 = phi i32 [ %add361, %for.end360 ], [ %kstart227.24216, %for.body335.lr.ph ]
  %61 = trunc i64 %indvars.iv4877 to i32
  br i1 %cmp3414197, label %for.body342.lr.ph, label %for.end360

for.body342.lr.ph:                                ; preds = %for.body335
  %add336 = sub i32 %sub332, %61
  %sub337 = add i32 %add336, %kstart227.34206
  br label %for.body342

for.body342:                                      ; preds = %for.inc357, %for.body342.lr.ph
  %kk226.24201.in = phi i32 [ %sub337, %for.body342.lr.ph ], [ %kk226.24201, %for.inc357 ]
  %mm.204200 = phi i32 [ %mm.194208, %for.body342.lr.ph ], [ %mm.21, %for.inc357 ]
  %jj225.24199 = phi i32 [ %add331, %for.body342.lr.ph ], [ %inc358, %for.inc357 ]
  %count223.44198 = phi i32 [ 0, %for.body342.lr.ph ], [ %count223.5, %for.inc357 ]
  %kk226.24201 = add nsw i32 %kk226.24201.in, 1
  %idxprom343 = sext i32 %kk226.24201 to i64
  %arrayidx344 = getelementptr inbounds double* %call18, i64 %idxprom343
  %62 = load double* %arrayidx344, align 8, !tbaa !4
  %call345 = tail call double @fabs(double %62) #7
  %cmp346 = fcmp ult double %call345, %droptol
  br i1 %cmp346, label %for.inc357, label %if.then347

if.then347:                                       ; preds = %for.body342
  %idxprom348 = sext i32 %mm.204200 to i64
  %arrayidx349 = getelementptr inbounds i32* %ivec, i64 %idxprom348
  store i32 %jj225.24199, i32* %arrayidx349, align 4, !tbaa !3
  %arrayidx353 = getelementptr inbounds double* %dvec, i64 %idxprom348
  store double %62, double* %arrayidx353, align 8, !tbaa !4
  %inc354 = add nsw i32 %mm.204200, 1
  %inc355 = add nsw i32 %count223.44198, 1
  br label %for.inc357

for.inc357:                                       ; preds = %for.body342, %if.then347
  %count223.5 = phi i32 [ %inc355, %if.then347 ], [ %count223.44198, %for.body342 ]
  %mm.21 = phi i32 [ %inc354, %if.then347 ], [ %mm.204200, %for.body342 ]
  %inc358 = add nsw i32 %jj225.24199, 1
  %exitcond4876 = icmp eq i32 %inc358, %add17
  br i1 %exitcond4876, label %for.end360, label %for.body342

for.end360:                                       ; preds = %for.body335, %for.inc357
  %mm.20.lcssa = phi i32 [ %mm.21, %for.inc357 ], [ %mm.194208, %for.body335 ]
  %count223.4.lcssa = phi i32 [ %count223.5, %for.inc357 ], [ 0, %for.body335 ]
  %add361 = add nsw i32 %stride228.34207, %kstart227.34206
  %dec362 = add nsw i32 %stride228.34207, -1
  %arrayidx364 = getelementptr inbounds i32* %sizes, i64 %indvars.iv4877
  store i32 %count223.4.lcssa, i32* %arrayidx364, align 4, !tbaa !3
  %indvars.iv.next4878 = add i64 %indvars.iv4877, 1
  %cmp334 = icmp slt i32 %61, %sub332
  br i1 %cmp334, label %for.body335, label %for.cond333.for.end367_crit_edge

for.cond333.for.end367_crit_edge:                 ; preds = %for.end360
  %63 = add i32 %kstart227.24216, %stride228.24217
  %64 = add i32 %63, %53
  %65 = sub i32 %64, %60
  br label %for.end367

for.end367:                                       ; preds = %for.cond333.for.end367_crit_edge, %for.body328
  %mm.19.lcssa = phi i32 [ %mm.20.lcssa, %for.cond333.for.end367_crit_edge ], [ %mm.184218, %for.body328 ]
  %stride228.3.lcssa = phi i32 [ %50, %for.cond333.for.end367_crit_edge ], [ %stride228.24217, %for.body328 ]
  %kstart227.3.lcssa = phi i32 [ %65, %for.cond333.for.end367_crit_edge ], [ %kstart227.24216, %for.body328 ]
  %indvars.iv.next4880 = add i64 %indvars.iv4879, 1
  %lftr.wideiv4881 = trunc i64 %indvars.iv.next4880 to i32
  %exitcond4882 = icmp eq i32 %lftr.wideiv4881, %npivot
  br i1 %exitcond4882, label %sw.epilog2477, label %for.body328

if.else372:                                       ; preds = %if.else322
  %cmp374 = icmp eq i32 %36, 2
  %cmp3774237 = icmp sgt i32 %npivot, 0
  %or.cond5220 = and i1 %cmp374, %cmp3774237
  br i1 %or.cond5220, label %for.body378, label %sw.epilog2477

for.body378:                                      ; preds = %if.else372, %for.end432
  %indvars.iv4894 = phi i64 [ %indvars.iv.next4895, %for.end432 ], [ 0, %if.else372 ]
  %mm.224242 = phi i32 [ %mm.23.lcssa, %for.end432 ], [ 0, %if.else372 ]
  %stride228.44241 = phi i32 [ %stride228.5.lcssa, %for.end432 ], [ %add17, %if.else372 ]
  %kstart227.44240 = phi i32 [ %kstart227.5.lcssa, %for.end432 ], [ 0, %if.else372 ]
  %first.14238 = phi i32 [ %add381, %for.end432 ], [ 0, %if.else372 ]
  %arrayidx380 = getelementptr inbounds i32* %pivotsizes, i64 %indvars.iv4894
  %66 = load i32* %arrayidx380, align 4, !tbaa !3
  %add381 = add nsw i32 %66, %first.14238
  %sub382 = add nsw i32 %add381, -1
  %cmp3844228 = icmp sgt i32 %first.14238, %sub382
  br i1 %cmp3844228, label %for.end432, label %for.body385.lr.ph

for.body385.lr.ph:                                ; preds = %for.body378
  %cmp3914221 = icmp slt i32 %add381, %add17
  %67 = sext i32 %first.14238 to i64
  %68 = add i32 %first.14238, -1
  %69 = add i32 %68, %stride228.44241
  %70 = add i32 %68, %66
  %71 = icmp sgt i32 %first.14238, %70
  %smax4893 = select i1 %71, i32 %first.14238, i32 %70
  %72 = sub i32 %69, %smax4893
  %73 = sub i32 %smax4893, %first.14238
  %74 = add i32 %stride228.44241, -1
  %75 = mul i32 %73, %74
  %76 = zext i32 %73 to i33
  %77 = add i32 %smax4893, -1
  %78 = sub i32 %77, %first.14238
  %79 = zext i32 %78 to i33
  %80 = mul i33 %76, %79
  %81 = lshr i33 %80, 1
  %82 = trunc i33 %81 to i32
  br label %for.body385

for.body385:                                      ; preds = %for.end425, %for.body385.lr.ph
  %indvars.iv4891 = phi i64 [ %indvars.iv.next4892, %for.end425 ], [ %67, %for.body385.lr.ph ]
  %mm.234232 = phi i32 [ %mm.24.lcssa, %for.end425 ], [ %mm.224242, %for.body385.lr.ph ]
  %stride228.54231 = phi i32 [ %dec427, %for.end425 ], [ %stride228.44241, %for.body385.lr.ph ]
  %kstart227.54230 = phi i32 [ %add426, %for.end425 ], [ %kstart227.44240, %for.body385.lr.ph ]
  %83 = trunc i64 %indvars.iv4891 to i32
  br i1 %cmp3914221, label %for.body392.lr.ph, label %for.end425

for.body392.lr.ph:                                ; preds = %for.body385
  %add386 = sub i32 %sub382, %83
  %sub387 = add i32 %add386, %kstart227.54230
  br label %for.body392

for.body392:                                      ; preds = %for.inc422, %for.body392.lr.ph
  %kk226.34225.in = phi i32 [ %sub387, %for.body392.lr.ph ], [ %kk226.34225, %for.inc422 ]
  %mm.244224 = phi i32 [ %mm.234232, %for.body392.lr.ph ], [ %mm.25, %for.inc422 ]
  %jj225.34223 = phi i32 [ %add381, %for.body392.lr.ph ], [ %inc423, %for.inc422 ]
  %count223.64222 = phi i32 [ 0, %for.body392.lr.ph ], [ %count223.7, %for.inc422 ]
  %kk226.34225 = add nsw i32 %kk226.34225.in, 1
  %mul393 = shl nsw i32 %kk226.34225, 1
  %idxprom394 = sext i32 %mul393 to i64
  %arrayidx395 = getelementptr inbounds double* %call18, i64 %idxprom394
  %84 = load double* %arrayidx395, align 8, !tbaa !4
  %add3974095 = or i32 %mul393, 1
  %idxprom398 = sext i32 %add3974095 to i64
  %arrayidx399 = getelementptr inbounds double* %call18, i64 %idxprom398
  %85 = load double* %arrayidx399, align 8, !tbaa !4
  %call400 = tail call double @Zabs(double %84, double %85) #5
  %cmp401 = fcmp ult double %call400, %droptol
  br i1 %cmp401, label %for.inc422, label %if.then402

if.then402:                                       ; preds = %for.body392
  %idxprom403 = sext i32 %mm.244224 to i64
  %arrayidx404 = getelementptr inbounds i32* %ivec, i64 %idxprom403
  store i32 %jj225.34223, i32* %arrayidx404, align 4, !tbaa !3
  %86 = load double* %arrayidx395, align 8, !tbaa !4
  %mul408 = shl nsw i32 %mm.244224, 1
  %idxprom409 = sext i32 %mul408 to i64
  %arrayidx410 = getelementptr inbounds double* %dvec, i64 %idxprom409
  store double %86, double* %arrayidx410, align 8, !tbaa !4
  %87 = load double* %arrayidx399, align 8, !tbaa !4
  %add4164096 = or i32 %mul408, 1
  %idxprom417 = sext i32 %add4164096 to i64
  %arrayidx418 = getelementptr inbounds double* %dvec, i64 %idxprom417
  store double %87, double* %arrayidx418, align 8, !tbaa !4
  %inc419 = add nsw i32 %mm.244224, 1
  %inc420 = add nsw i32 %count223.64222, 1
  br label %for.inc422

for.inc422:                                       ; preds = %for.body392, %if.then402
  %count223.7 = phi i32 [ %inc420, %if.then402 ], [ %count223.64222, %for.body392 ]
  %mm.25 = phi i32 [ %inc419, %if.then402 ], [ %mm.244224, %for.body392 ]
  %inc423 = add nsw i32 %jj225.34223, 1
  %exitcond4890 = icmp eq i32 %inc423, %add17
  br i1 %exitcond4890, label %for.end425, label %for.body392

for.end425:                                       ; preds = %for.body385, %for.inc422
  %mm.24.lcssa = phi i32 [ %mm.25, %for.inc422 ], [ %mm.234232, %for.body385 ]
  %count223.6.lcssa = phi i32 [ %count223.7, %for.inc422 ], [ 0, %for.body385 ]
  %add426 = add nsw i32 %stride228.54231, %kstart227.54230
  %dec427 = add nsw i32 %stride228.54231, -1
  %arrayidx429 = getelementptr inbounds i32* %sizes, i64 %indvars.iv4891
  store i32 %count223.6.lcssa, i32* %arrayidx429, align 4, !tbaa !3
  %indvars.iv.next4892 = add i64 %indvars.iv4891, 1
  %cmp384 = icmp slt i32 %83, %sub382
  br i1 %cmp384, label %for.body385, label %for.cond383.for.end432_crit_edge

for.cond383.for.end432_crit_edge:                 ; preds = %for.end425
  %88 = add i32 %kstart227.44240, %stride228.44241
  %89 = add i32 %88, %75
  %90 = sub i32 %89, %82
  br label %for.end432

for.end432:                                       ; preds = %for.cond383.for.end432_crit_edge, %for.body378
  %mm.23.lcssa = phi i32 [ %mm.24.lcssa, %for.cond383.for.end432_crit_edge ], [ %mm.224242, %for.body378 ]
  %stride228.5.lcssa = phi i32 [ %72, %for.cond383.for.end432_crit_edge ], [ %stride228.44241, %for.body378 ]
  %kstart227.5.lcssa = phi i32 [ %90, %for.cond383.for.end432_crit_edge ], [ %kstart227.44240, %for.body378 ]
  %indvars.iv.next4895 = add i64 %indvars.iv4894, 1
  %lftr.wideiv4896 = trunc i64 %indvars.iv.next4895 to i32
  %exitcond4897 = icmp eq i32 %lftr.wideiv4896, %npivot
  br i1 %exitcond4897, label %sw.epilog2477, label %for.body378

if.else440:                                       ; preds = %sw.bb216
  %sub448 = add nsw i32 %add, -1
  %mul449 = shl i32 %4, 1
  %add450 = add i32 %5, -2
  %add451 = add i32 %add450, %mul449
  %sub452 = add i32 %add451, %6
  %type453 = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 4
  %91 = load i32* %type453, align 4, !tbaa !3
  switch i32 %91, label %sw.epilog2477 [
    i32 1, label %for.cond456.preheader
    i32 2, label %for.cond493.preheader
  ]

for.cond493.preheader:                            ; preds = %if.else440
  %cmp4944268 = icmp sgt i32 %4, 0
  br i1 %cmp4944268, label %for.body495, label %sw.epilog2477

for.cond456.preheader:                            ; preds = %if.else440
  %cmp4574253 = icmp sgt i32 %4, 0
  br i1 %cmp4574253, label %for.body458, label %sw.epilog2477

for.body458:                                      ; preds = %for.cond456.preheader, %for.end481
  %indvars.iv4902 = phi i64 [ %indvars.iv.next4903, %for.end481 ], [ 0, %for.cond456.preheader ]
  %mm.264257 = phi i32 [ %mm.27.lcssa, %for.end481 ], [ 0, %for.cond456.preheader ]
  %stride446.04256 = phi i32 [ %sub483, %for.end481 ], [ %sub452, %for.cond456.preheader ]
  %kstart445.04255 = phi i32 [ %add482, %for.end481 ], [ %sub448, %for.cond456.preheader ]
  %ii442.04254 = phi i32 [ %add460, %for.end481 ], [ 0, %for.cond456.preheader ]
  %indvars.iv.next4903 = add i64 %indvars.iv4902, 1
  %add460 = add nsw i32 %ii442.04254, 1
  %92 = trunc i64 %indvars.iv.next4903 to i32
  %cmp4624245 = icmp slt i32 %92, %add17
  br i1 %cmp4624245, label %for.body463, label %for.end481

for.body463:                                      ; preds = %for.body458, %for.inc478
  %kk444.04249.in = phi i32 [ %kk444.04249, %for.inc478 ], [ %kstart445.04255, %for.body458 ]
  %mm.274248 = phi i32 [ %mm.28, %for.inc478 ], [ %mm.264257, %for.body458 ]
  %jj443.04247 = phi i32 [ %inc479, %for.inc478 ], [ %add460, %for.body458 ]
  %count441.04246 = phi i32 [ %count441.1, %for.inc478 ], [ 0, %for.body458 ]
  %kk444.04249 = add nsw i32 %kk444.04249.in, 1
  %idxprom464 = sext i32 %kk444.04249 to i64
  %arrayidx465 = getelementptr inbounds double* %call18, i64 %idxprom464
  %93 = load double* %arrayidx465, align 8, !tbaa !4
  %call466 = tail call double @fabs(double %93) #7
  %cmp467 = fcmp ult double %call466, %droptol
  br i1 %cmp467, label %for.inc478, label %if.then468

if.then468:                                       ; preds = %for.body463
  %idxprom469 = sext i32 %mm.274248 to i64
  %arrayidx470 = getelementptr inbounds i32* %ivec, i64 %idxprom469
  store i32 %jj443.04247, i32* %arrayidx470, align 4, !tbaa !3
  %arrayidx474 = getelementptr inbounds double* %dvec, i64 %idxprom469
  store double %93, double* %arrayidx474, align 8, !tbaa !4
  %inc475 = add nsw i32 %mm.274248, 1
  %inc476 = add nsw i32 %count441.04246, 1
  br label %for.inc478

for.inc478:                                       ; preds = %for.body463, %if.then468
  %count441.1 = phi i32 [ %inc476, %if.then468 ], [ %count441.04246, %for.body463 ]
  %mm.28 = phi i32 [ %inc475, %if.then468 ], [ %mm.274248, %for.body463 ]
  %inc479 = add nsw i32 %jj443.04247, 1
  %exitcond4901 = icmp eq i32 %inc479, %add17
  br i1 %exitcond4901, label %for.end481, label %for.body463

for.end481:                                       ; preds = %for.inc478, %for.body458
  %mm.27.lcssa = phi i32 [ %mm.264257, %for.body458 ], [ %mm.28, %for.inc478 ]
  %count441.0.lcssa = phi i32 [ 0, %for.body458 ], [ %count441.1, %for.inc478 ]
  %add482 = add nsw i32 %stride446.04256, %kstart445.04255
  %sub483 = add nsw i32 %stride446.04256, -2
  %arrayidx485 = getelementptr inbounds i32* %sizes, i64 %indvars.iv4902
  store i32 %count441.0.lcssa, i32* %arrayidx485, align 4, !tbaa !3
  %exitcond4905 = icmp eq i32 %92, %4
  br i1 %exitcond4905, label %sw.epilog2477, label %for.body458

for.body495:                                      ; preds = %for.cond493.preheader, %for.end533
  %indvars.iv4910 = phi i64 [ %indvars.iv.next4911, %for.end533 ], [ 0, %for.cond493.preheader ]
  %mm.294272 = phi i32 [ %mm.30.lcssa, %for.end533 ], [ 0, %for.cond493.preheader ]
  %stride446.14271 = phi i32 [ %sub535, %for.end533 ], [ %sub452, %for.cond493.preheader ]
  %kstart445.14270 = phi i32 [ %add534, %for.end533 ], [ %sub448, %for.cond493.preheader ]
  %ii442.14269 = phi i32 [ %add497, %for.end533 ], [ 0, %for.cond493.preheader ]
  %indvars.iv.next4911 = add i64 %indvars.iv4910, 1
  %add497 = add nsw i32 %ii442.14269, 1
  %94 = trunc i64 %indvars.iv.next4911 to i32
  %cmp4994260 = icmp slt i32 %94, %add17
  br i1 %cmp4994260, label %for.body500, label %for.end533

for.body500:                                      ; preds = %for.body495, %for.inc530
  %kk444.14264.in = phi i32 [ %kk444.14264, %for.inc530 ], [ %kstart445.14270, %for.body495 ]
  %mm.304263 = phi i32 [ %mm.31, %for.inc530 ], [ %mm.294272, %for.body495 ]
  %jj443.14262 = phi i32 [ %inc531, %for.inc530 ], [ %add497, %for.body495 ]
  %count441.24261 = phi i32 [ %count441.3, %for.inc530 ], [ 0, %for.body495 ]
  %kk444.14264 = add nsw i32 %kk444.14264.in, 1
  %mul501 = shl nsw i32 %kk444.14264, 1
  %idxprom502 = sext i32 %mul501 to i64
  %arrayidx503 = getelementptr inbounds double* %call18, i64 %idxprom502
  %95 = load double* %arrayidx503, align 8, !tbaa !4
  %add5054093 = or i32 %mul501, 1
  %idxprom506 = sext i32 %add5054093 to i64
  %arrayidx507 = getelementptr inbounds double* %call18, i64 %idxprom506
  %96 = load double* %arrayidx507, align 8, !tbaa !4
  %call508 = tail call double @Zabs(double %95, double %96) #5
  %cmp509 = fcmp ult double %call508, %droptol
  br i1 %cmp509, label %for.inc530, label %if.then510

if.then510:                                       ; preds = %for.body500
  %idxprom511 = sext i32 %mm.304263 to i64
  %arrayidx512 = getelementptr inbounds i32* %ivec, i64 %idxprom511
  store i32 %jj443.14262, i32* %arrayidx512, align 4, !tbaa !3
  %97 = load double* %arrayidx503, align 8, !tbaa !4
  %mul516 = shl nsw i32 %mm.304263, 1
  %idxprom517 = sext i32 %mul516 to i64
  %arrayidx518 = getelementptr inbounds double* %dvec, i64 %idxprom517
  store double %97, double* %arrayidx518, align 8, !tbaa !4
  %98 = load double* %arrayidx507, align 8, !tbaa !4
  %add5244094 = or i32 %mul516, 1
  %idxprom525 = sext i32 %add5244094 to i64
  %arrayidx526 = getelementptr inbounds double* %dvec, i64 %idxprom525
  store double %98, double* %arrayidx526, align 8, !tbaa !4
  %inc527 = add nsw i32 %mm.304263, 1
  %inc528 = add nsw i32 %count441.24261, 1
  br label %for.inc530

for.inc530:                                       ; preds = %for.body500, %if.then510
  %count441.3 = phi i32 [ %inc528, %if.then510 ], [ %count441.24261, %for.body500 ]
  %mm.31 = phi i32 [ %inc527, %if.then510 ], [ %mm.304263, %for.body500 ]
  %inc531 = add nsw i32 %jj443.14262, 1
  %exitcond4909 = icmp eq i32 %inc531, %add17
  br i1 %exitcond4909, label %for.end533, label %for.body500

for.end533:                                       ; preds = %for.inc530, %for.body495
  %mm.30.lcssa = phi i32 [ %mm.294272, %for.body495 ], [ %mm.31, %for.inc530 ]
  %count441.2.lcssa = phi i32 [ 0, %for.body495 ], [ %count441.3, %for.inc530 ]
  %add534 = add nsw i32 %stride446.14271, %kstart445.14270
  %sub535 = add nsw i32 %stride446.14271, -2
  %arrayidx537 = getelementptr inbounds i32* %sizes, i64 %indvars.iv4910
  store i32 %count441.2.lcssa, i32* %arrayidx537, align 4, !tbaa !3
  %exitcond4913 = icmp eq i32 %94, %4
  br i1 %exitcond4913, label %sw.epilog2477, label %for.body495

sw.bb544:                                         ; preds = %sw.bb215
  %99 = load i32* %symflag16, align 4, !tbaa !3
  %switch4105 = icmp ult i32 %99, 2
  br i1 %switch4105, label %if.then550, label %if.else852

if.then550:                                       ; preds = %sw.bb544
  %cmp563 = icmp eq i32* %pivotsizes, null
  %type565 = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 4
  %100 = load i32* %type565, align 4, !tbaa !3
  %cmp566 = icmp eq i32 %100, 1
  br i1 %cmp563, label %if.then564, label %if.else665

if.then564:                                       ; preds = %if.then550
  br i1 %cmp566, label %for.cond568.preheader, label %if.else606

for.cond568.preheader:                            ; preds = %if.then564
  %cmp5694283 = icmp sgt i32 %add17, 0
  br i1 %cmp5694283, label %for.body570.lr.ph, label %sw.epilog2477

for.body570.lr.ph:                                ; preds = %for.cond568.preheader
  %101 = sext i32 %add17 to i64
  br label %for.body570

for.body570:                                      ; preds = %for.end599, %for.body570.lr.ph
  %indvars.iv4917 = phi i64 [ 0, %for.body570.lr.ph ], [ %indvars.iv.next4918, %for.end599 ]
  %mm.324286 = phi i32 [ 0, %for.body570.lr.ph ], [ %mm.33.lcssa, %for.end599 ]
  %kstart558.04285 = phi i32 [ 0, %for.body570.lr.ph ], [ %inc600, %for.end599 ]
  %102 = trunc i64 %indvars.iv4917 to i32
  %cmp571 = icmp slt i32 %102, %4
  %.sink2479 = select i1 %cmp571, i32 %102, i32 %4
  %sub573 = add nsw i32 %.sink2479, -1
  %cmp5794274 = icmp slt i32 %.sink2479, 1
  br i1 %cmp5794274, label %for.end599, label %for.body580

for.body580:                                      ; preds = %for.body570, %if.end594
  %indvars.iv4914.in = phi i64 [ %indvars.iv4914, %if.end594 ], [ %101, %for.body570 ]
  %mm.334279 = phi i32 [ %mm.34, %if.end594 ], [ %mm.324286, %for.body570 ]
  %kk557.04278 = phi i32 [ %add595, %if.end594 ], [ %kstart558.04285, %for.body570 ]
  %ii553.04276 = phi i32 [ %inc598, %if.end594 ], [ 0, %for.body570 ]
  %count551.04275 = phi i32 [ %count551.1, %if.end594 ], [ 0, %for.body570 ]
  %indvars.iv4914 = add i64 %indvars.iv4914.in, -1
  %idxprom581 = sext i32 %kk557.04278 to i64
  %arrayidx582 = getelementptr inbounds double* %call18, i64 %idxprom581
  %103 = load double* %arrayidx582, align 8, !tbaa !4
  %call583 = tail call double @fabs(double %103) #7
  %cmp584 = fcmp ult double %call583, %droptol
  br i1 %cmp584, label %if.end594, label %if.then585

if.then585:                                       ; preds = %for.body580
  %idxprom586 = sext i32 %mm.334279 to i64
  %arrayidx587 = getelementptr inbounds i32* %ivec, i64 %idxprom586
  store i32 %ii553.04276, i32* %arrayidx587, align 4, !tbaa !3
  %arrayidx591 = getelementptr inbounds double* %dvec, i64 %idxprom586
  store double %103, double* %arrayidx591, align 8, !tbaa !4
  %inc592 = add nsw i32 %mm.334279, 1
  %inc593 = add nsw i32 %count551.04275, 1
  br label %if.end594

if.end594:                                        ; preds = %for.body580, %if.then585
  %count551.1 = phi i32 [ %inc593, %if.then585 ], [ %count551.04275, %for.body580 ]
  %mm.34 = phi i32 [ %inc592, %if.then585 ], [ %mm.334279, %for.body580 ]
  %104 = trunc i64 %indvars.iv4914 to i32
  %add595 = add nsw i32 %kk557.04278, %104
  %inc598 = add nsw i32 %ii553.04276, 1
  %cmp579 = icmp slt i32 %ii553.04276, %sub573
  br i1 %cmp579, label %for.body580, label %for.end599

for.end599:                                       ; preds = %if.end594, %for.body570
  %mm.33.lcssa = phi i32 [ %mm.324286, %for.body570 ], [ %mm.34, %if.end594 ]
  %count551.0.lcssa = phi i32 [ 0, %for.body570 ], [ %count551.1, %if.end594 ]
  %inc600 = add nsw i32 %kstart558.04285, 1
  %arrayidx602 = getelementptr inbounds i32* %sizes, i64 %indvars.iv4917
  store i32 %count551.0.lcssa, i32* %arrayidx602, align 4, !tbaa !3
  %indvars.iv.next4918 = add i64 %indvars.iv4917, 1
  %lftr.wideiv4919 = trunc i64 %indvars.iv.next4918 to i32
  %exitcond4920 = icmp eq i32 %lftr.wideiv4919, %add17
  br i1 %exitcond4920, label %sw.epilog2477, label %for.body570

if.else606:                                       ; preds = %if.then564
  %cmp608 = icmp eq i32 %100, 2
  %cmp6114297 = icmp sgt i32 %add17, 0
  %or.cond5221 = and i1 %cmp608, %cmp6114297
  br i1 %or.cond5221, label %for.body612.lr.ph, label %sw.epilog2477

for.body612.lr.ph:                                ; preds = %if.else606
  %105 = sext i32 %add17 to i64
  br label %for.body612

for.body612:                                      ; preds = %for.end656, %for.body612.lr.ph
  %indvars.iv4924 = phi i64 [ 0, %for.body612.lr.ph ], [ %indvars.iv.next4925, %for.end656 ]
  %mm.354300 = phi i32 [ 0, %for.body612.lr.ph ], [ %mm.36.lcssa, %for.end656 ]
  %kstart558.14299 = phi i32 [ 0, %for.body612.lr.ph ], [ %inc657, %for.end656 ]
  %106 = trunc i64 %indvars.iv4924 to i32
  %cmp613 = icmp slt i32 %106, %4
  %.sink2480 = select i1 %cmp613, i32 %106, i32 %4
  %sub615 = add nsw i32 %.sink2480, -1
  %cmp6214288 = icmp slt i32 %.sink2480, 1
  br i1 %cmp6214288, label %for.end656, label %for.body622

for.body622:                                      ; preds = %for.body612, %if.end651
  %indvars.iv4921.in = phi i64 [ %indvars.iv4921, %if.end651 ], [ %105, %for.body612 ]
  %mm.364293 = phi i32 [ %mm.37, %if.end651 ], [ %mm.354300, %for.body612 ]
  %kk557.14292 = phi i32 [ %add652, %if.end651 ], [ %kstart558.14299, %for.body612 ]
  %ii553.14290 = phi i32 [ %inc655, %if.end651 ], [ 0, %for.body612 ]
  %count551.24289 = phi i32 [ %count551.3, %if.end651 ], [ 0, %for.body612 ]
  %indvars.iv4921 = add i64 %indvars.iv4921.in, -1
  %mul623 = shl nsw i32 %kk557.14292, 1
  %idxprom624 = sext i32 %mul623 to i64
  %arrayidx625 = getelementptr inbounds double* %call18, i64 %idxprom624
  %107 = load double* %arrayidx625, align 8, !tbaa !4
  %add6274091 = or i32 %mul623, 1
  %idxprom628 = sext i32 %add6274091 to i64
  %arrayidx629 = getelementptr inbounds double* %call18, i64 %idxprom628
  %108 = load double* %arrayidx629, align 8, !tbaa !4
  %call630 = tail call double @Zabs(double %107, double %108) #5
  %cmp631 = fcmp ult double %call630, %droptol
  br i1 %cmp631, label %if.end651, label %if.then632

if.then632:                                       ; preds = %for.body622
  %idxprom633 = sext i32 %mm.364293 to i64
  %arrayidx634 = getelementptr inbounds i32* %ivec, i64 %idxprom633
  store i32 %ii553.14290, i32* %arrayidx634, align 4, !tbaa !3
  %109 = load double* %arrayidx625, align 8, !tbaa !4
  %mul638 = shl nsw i32 %mm.364293, 1
  %idxprom639 = sext i32 %mul638 to i64
  %arrayidx640 = getelementptr inbounds double* %dvec, i64 %idxprom639
  store double %109, double* %arrayidx640, align 8, !tbaa !4
  %110 = load double* %arrayidx629, align 8, !tbaa !4
  %add6464092 = or i32 %mul638, 1
  %idxprom647 = sext i32 %add6464092 to i64
  %arrayidx648 = getelementptr inbounds double* %dvec, i64 %idxprom647
  store double %110, double* %arrayidx648, align 8, !tbaa !4
  %inc649 = add nsw i32 %mm.364293, 1
  %inc650 = add nsw i32 %count551.24289, 1
  br label %if.end651

if.end651:                                        ; preds = %for.body622, %if.then632
  %count551.3 = phi i32 [ %inc650, %if.then632 ], [ %count551.24289, %for.body622 ]
  %mm.37 = phi i32 [ %inc649, %if.then632 ], [ %mm.364293, %for.body622 ]
  %111 = trunc i64 %indvars.iv4921 to i32
  %add652 = add nsw i32 %kk557.14292, %111
  %inc655 = add nsw i32 %ii553.14290, 1
  %cmp621 = icmp slt i32 %ii553.14290, %sub615
  br i1 %cmp621, label %for.body622, label %for.end656

for.end656:                                       ; preds = %if.end651, %for.body612
  %mm.36.lcssa = phi i32 [ %mm.354300, %for.body612 ], [ %mm.37, %if.end651 ]
  %count551.2.lcssa = phi i32 [ 0, %for.body612 ], [ %count551.3, %if.end651 ]
  %inc657 = add nsw i32 %kstart558.14299, 1
  %arrayidx659 = getelementptr inbounds i32* %sizes, i64 %indvars.iv4924
  store i32 %count551.2.lcssa, i32* %arrayidx659, align 4, !tbaa !3
  %indvars.iv.next4925 = add i64 %indvars.iv4924, 1
  %lftr.wideiv4926 = trunc i64 %indvars.iv.next4925 to i32
  %exitcond4927 = icmp eq i32 %lftr.wideiv4926, %add17
  br i1 %exitcond4927, label %sw.epilog2477, label %for.body612

if.else665:                                       ; preds = %if.then550
  br i1 %cmp566, label %for.cond669.preheader, label %if.else742

for.cond669.preheader:                            ; preds = %if.else665
  %cmp6704330 = icmp sgt i32 %npivot, 0
  br i1 %cmp6704330, label %for.body671.lr.ph, label %for.cond711.preheader

for.body671.lr.ph:                                ; preds = %for.cond669.preheader
  %112 = add i32 %add17, -1
  %113 = sext i32 %112 to i64
  br label %for.body671

for.cond711.preheader:                            ; preds = %for.end706, %for.cond669.preheader
  %mm.38.lcssa = phi i32 [ 0, %for.cond669.preheader ], [ %mm.39.lcssa, %for.end706 ]
  %kstart558.2.lcssa = phi i32 [ 0, %for.cond669.preheader ], [ %kstart558.3.lcssa, %for.end706 ]
  %cmp7124311 = icmp sgt i32 %6, 0
  br i1 %cmp7124311, label %for.cond714.preheader.lr.ph, label %sw.epilog2477

for.cond714.preheader.lr.ph:                      ; preds = %for.cond711.preheader
  %cmp7154302 = icmp sgt i32 %4, 0
  %114 = add i32 %add17, -1
  %115 = sext i32 %114 to i64
  %116 = sext i32 %4 to i64
  br label %for.cond714.preheader

for.body671:                                      ; preds = %for.end706, %for.body671.lr.ph
  %indvars.iv4941 = phi i64 [ 0, %for.body671.lr.ph ], [ %indvars.iv.next4942, %for.end706 ]
  %mm.384334 = phi i32 [ 0, %for.body671.lr.ph ], [ %mm.39.lcssa, %for.end706 ]
  %kstart558.24333 = phi i32 [ 0, %for.body671.lr.ph ], [ %kstart558.3.lcssa, %for.end706 ]
  %first552.04331 = phi i32 [ 0, %for.body671.lr.ph ], [ %add674, %for.end706 ]
  %arrayidx673 = getelementptr inbounds i32* %pivotsizes, i64 %indvars.iv4941
  %117 = load i32* %arrayidx673, align 4, !tbaa !3
  %add674 = add nsw i32 %117, %first552.04331
  %sub675 = add nsw i32 %add674, -1
  %cmp6774324 = icmp sgt i32 %first552.04331, %sub675
  br i1 %cmp6774324, label %for.end706, label %for.cond679.preheader.lr.ph

for.cond679.preheader.lr.ph:                      ; preds = %for.body671
  %cmp6804316 = icmp sgt i32 %first552.04331, 0
  %118 = sext i32 %first552.04331 to i64
  %119 = add i32 %kstart558.24333, 1
  %120 = add i32 %first552.04331, -1
  %121 = add i32 %120, %117
  %122 = icmp sgt i32 %first552.04331, %121
  %smax4940 = select i1 %122, i32 %first552.04331, i32 %121
  %123 = add i32 %119, %smax4940
  br label %for.cond679.preheader

for.cond679.preheader:                            ; preds = %for.end700, %for.cond679.preheader.lr.ph
  %indvars.iv4938 = phi i64 [ %indvars.iv.next4939, %for.end700 ], [ %118, %for.cond679.preheader.lr.ph ]
  %mm.394327 = phi i32 [ %mm.40.lcssa, %for.end700 ], [ %mm.384334, %for.cond679.preheader.lr.ph ]
  %kstart558.34326 = phi i32 [ %inc701, %for.end700 ], [ %kstart558.24333, %for.cond679.preheader.lr.ph ]
  br i1 %cmp6804316, label %for.body681, label %for.end700

for.body681:                                      ; preds = %for.cond679.preheader, %if.end695
  %indvars.iv4934 = phi i64 [ %indvars.iv.next4935, %if.end695 ], [ %113, %for.cond679.preheader ]
  %mm.404321 = phi i32 [ %mm.41, %if.end695 ], [ %mm.394327, %for.cond679.preheader ]
  %kk557.24320 = phi i32 [ %add696, %if.end695 ], [ %kstart558.34326, %for.cond679.preheader ]
  %ii553.24318 = phi i32 [ %inc699, %if.end695 ], [ 0, %for.cond679.preheader ]
  %count551.44317 = phi i32 [ %count551.5, %if.end695 ], [ 0, %for.cond679.preheader ]
  %idxprom682 = sext i32 %kk557.24320 to i64
  %arrayidx683 = getelementptr inbounds double* %call18, i64 %idxprom682
  %124 = load double* %arrayidx683, align 8, !tbaa !4
  %call684 = tail call double @fabs(double %124) #7
  %cmp685 = fcmp ult double %call684, %droptol
  br i1 %cmp685, label %if.end695, label %if.then686

if.then686:                                       ; preds = %for.body681
  %idxprom687 = sext i32 %mm.404321 to i64
  %arrayidx688 = getelementptr inbounds i32* %ivec, i64 %idxprom687
  store i32 %ii553.24318, i32* %arrayidx688, align 4, !tbaa !3
  %arrayidx692 = getelementptr inbounds double* %dvec, i64 %idxprom687
  store double %124, double* %arrayidx692, align 8, !tbaa !4
  %inc693 = add nsw i32 %mm.404321, 1
  %inc694 = add nsw i32 %count551.44317, 1
  br label %if.end695

if.end695:                                        ; preds = %for.body681, %if.then686
  %count551.5 = phi i32 [ %inc694, %if.then686 ], [ %count551.44317, %for.body681 ]
  %mm.41 = phi i32 [ %inc693, %if.then686 ], [ %mm.404321, %for.body681 ]
  %125 = trunc i64 %indvars.iv4934 to i32
  %add696 = add nsw i32 %kk557.24320, %125
  %inc699 = add nsw i32 %ii553.24318, 1
  %indvars.iv.next4935 = add i64 %indvars.iv4934, -1
  %exitcond4937 = icmp eq i32 %inc699, %first552.04331
  br i1 %exitcond4937, label %for.end700, label %for.body681

for.end700:                                       ; preds = %if.end695, %for.cond679.preheader
  %mm.40.lcssa = phi i32 [ %mm.394327, %for.cond679.preheader ], [ %mm.41, %if.end695 ]
  %count551.4.lcssa = phi i32 [ 0, %for.cond679.preheader ], [ %count551.5, %if.end695 ]
  %inc701 = add nsw i32 %kstart558.34326, 1
  %arrayidx703 = getelementptr inbounds i32* %sizes, i64 %indvars.iv4938
  store i32 %count551.4.lcssa, i32* %arrayidx703, align 4, !tbaa !3
  %indvars.iv.next4939 = add i64 %indvars.iv4938, 1
  %126 = trunc i64 %indvars.iv4938 to i32
  %cmp677 = icmp slt i32 %126, %sub675
  br i1 %cmp677, label %for.cond679.preheader, label %for.cond676.for.end706_crit_edge

for.cond676.for.end706_crit_edge:                 ; preds = %for.end700
  %127 = sub i32 %123, %first552.04331
  br label %for.end706

for.end706:                                       ; preds = %for.cond676.for.end706_crit_edge, %for.body671
  %mm.39.lcssa = phi i32 [ %mm.40.lcssa, %for.cond676.for.end706_crit_edge ], [ %mm.384334, %for.body671 ]
  %kstart558.3.lcssa = phi i32 [ %127, %for.cond676.for.end706_crit_edge ], [ %kstart558.24333, %for.body671 ]
  %indvars.iv.next4942 = add i64 %indvars.iv4941, 1
  %lftr.wideiv4943 = trunc i64 %indvars.iv.next4942 to i32
  %exitcond4944 = icmp eq i32 %lftr.wideiv4943, %npivot
  br i1 %exitcond4944, label %for.cond711.preheader, label %for.body671

for.cond714.preheader:                            ; preds = %for.cond714.preheader.lr.ph, %for.end735
  %indvars.iv4932 = phi i64 [ %116, %for.cond714.preheader.lr.ph ], [ %indvars.iv.next4933, %for.end735 ]
  %mm.424314 = phi i32 [ %mm.38.lcssa, %for.cond714.preheader.lr.ph ], [ %mm.43.lcssa, %for.end735 ]
  %kstart558.44313 = phi i32 [ %kstart558.2.lcssa, %for.cond714.preheader.lr.ph ], [ %inc736, %for.end735 ]
  br i1 %cmp7154302, label %for.body716, label %for.end735

for.body716:                                      ; preds = %for.cond714.preheader, %if.end730
  %indvars.iv4928 = phi i64 [ %indvars.iv.next4929, %if.end730 ], [ %115, %for.cond714.preheader ]
  %mm.434307 = phi i32 [ %mm.44, %if.end730 ], [ %mm.424314, %for.cond714.preheader ]
  %kk557.34306 = phi i32 [ %add731, %if.end730 ], [ %kstart558.44313, %for.cond714.preheader ]
  %ii553.34304 = phi i32 [ %inc734, %if.end730 ], [ 0, %for.cond714.preheader ]
  %count551.64303 = phi i32 [ %count551.7, %if.end730 ], [ 0, %for.cond714.preheader ]
  %idxprom717 = sext i32 %kk557.34306 to i64
  %arrayidx718 = getelementptr inbounds double* %call18, i64 %idxprom717
  %128 = load double* %arrayidx718, align 8, !tbaa !4
  %call719 = tail call double @fabs(double %128) #7
  %cmp720 = fcmp ult double %call719, %droptol
  br i1 %cmp720, label %if.end730, label %if.then721

if.then721:                                       ; preds = %for.body716
  %idxprom722 = sext i32 %mm.434307 to i64
  %arrayidx723 = getelementptr inbounds i32* %ivec, i64 %idxprom722
  store i32 %ii553.34304, i32* %arrayidx723, align 4, !tbaa !3
  %arrayidx727 = getelementptr inbounds double* %dvec, i64 %idxprom722
  store double %128, double* %arrayidx727, align 8, !tbaa !4
  %inc728 = add nsw i32 %mm.434307, 1
  %inc729 = add nsw i32 %count551.64303, 1
  br label %if.end730

if.end730:                                        ; preds = %for.body716, %if.then721
  %count551.7 = phi i32 [ %inc729, %if.then721 ], [ %count551.64303, %for.body716 ]
  %mm.44 = phi i32 [ %inc728, %if.then721 ], [ %mm.434307, %for.body716 ]
  %129 = trunc i64 %indvars.iv4928 to i32
  %add731 = add nsw i32 %kk557.34306, %129
  %inc734 = add nsw i32 %ii553.34304, 1
  %indvars.iv.next4929 = add i64 %indvars.iv4928, -1
  %exitcond4931 = icmp eq i32 %inc734, %4
  br i1 %exitcond4931, label %for.end735, label %for.body716

for.end735:                                       ; preds = %if.end730, %for.cond714.preheader
  %mm.43.lcssa = phi i32 [ %mm.424314, %for.cond714.preheader ], [ %mm.44, %if.end730 ]
  %count551.6.lcssa = phi i32 [ 0, %for.cond714.preheader ], [ %count551.7, %if.end730 ]
  %inc736 = add nsw i32 %kstart558.44313, 1
  %arrayidx738 = getelementptr inbounds i32* %sizes, i64 %indvars.iv4932
  store i32 %count551.6.lcssa, i32* %arrayidx738, align 4, !tbaa !3
  %indvars.iv.next4933 = add i64 %indvars.iv4932, 1
  %130 = trunc i64 %indvars.iv.next4933 to i32
  %cmp712 = icmp slt i32 %130, %add17
  br i1 %cmp712, label %for.cond714.preheader, label %sw.epilog2477

if.else742:                                       ; preds = %if.else665
  %cmp744 = icmp eq i32 %100, 2
  br i1 %cmp744, label %for.cond746.preheader, label %sw.epilog2477

for.cond746.preheader:                            ; preds = %if.else742
  %cmp7474365 = icmp sgt i32 %npivot, 0
  br i1 %cmp7474365, label %for.body748.lr.ph, label %for.cond803.preheader

for.body748.lr.ph:                                ; preds = %for.cond746.preheader
  %131 = add i32 %add17, -1
  %132 = sext i32 %131 to i64
  br label %for.body748

for.cond803.preheader:                            ; preds = %for.end798, %for.cond746.preheader
  %mm.45.lcssa = phi i32 [ 0, %for.cond746.preheader ], [ %mm.46.lcssa, %for.end798 ]
  %kstart558.5.lcssa = phi i32 [ 0, %for.cond746.preheader ], [ %kstart558.6.lcssa, %for.end798 ]
  %cmp8044346 = icmp sgt i32 %6, 0
  br i1 %cmp8044346, label %for.cond806.preheader.lr.ph, label %sw.epilog2477

for.cond806.preheader.lr.ph:                      ; preds = %for.cond803.preheader
  %cmp8074337 = icmp sgt i32 %4, 0
  %133 = add i32 %add17, -1
  %134 = sext i32 %133 to i64
  %135 = sext i32 %4 to i64
  br label %for.cond806.preheader

for.body748:                                      ; preds = %for.end798, %for.body748.lr.ph
  %indvars.iv4958 = phi i64 [ 0, %for.body748.lr.ph ], [ %indvars.iv.next4959, %for.end798 ]
  %mm.454369 = phi i32 [ 0, %for.body748.lr.ph ], [ %mm.46.lcssa, %for.end798 ]
  %kstart558.54368 = phi i32 [ 0, %for.body748.lr.ph ], [ %kstart558.6.lcssa, %for.end798 ]
  %first552.14366 = phi i32 [ 0, %for.body748.lr.ph ], [ %add751, %for.end798 ]
  %arrayidx750 = getelementptr inbounds i32* %pivotsizes, i64 %indvars.iv4958
  %136 = load i32* %arrayidx750, align 4, !tbaa !3
  %add751 = add nsw i32 %136, %first552.14366
  %sub752 = add nsw i32 %add751, -1
  %cmp7544359 = icmp sgt i32 %first552.14366, %sub752
  br i1 %cmp7544359, label %for.end798, label %for.cond756.preheader.lr.ph

for.cond756.preheader.lr.ph:                      ; preds = %for.body748
  %cmp7574351 = icmp sgt i32 %first552.14366, 0
  %137 = sext i32 %first552.14366 to i64
  %138 = add i32 %kstart558.54368, 1
  %139 = add i32 %first552.14366, -1
  %140 = add i32 %139, %136
  %141 = icmp sgt i32 %first552.14366, %140
  %smax4957 = select i1 %141, i32 %first552.14366, i32 %140
  %142 = add i32 %138, %smax4957
  br label %for.cond756.preheader

for.cond756.preheader:                            ; preds = %for.end792, %for.cond756.preheader.lr.ph
  %indvars.iv4955 = phi i64 [ %indvars.iv.next4956, %for.end792 ], [ %137, %for.cond756.preheader.lr.ph ]
  %mm.464362 = phi i32 [ %mm.47.lcssa, %for.end792 ], [ %mm.454369, %for.cond756.preheader.lr.ph ]
  %kstart558.64361 = phi i32 [ %inc793, %for.end792 ], [ %kstart558.54368, %for.cond756.preheader.lr.ph ]
  br i1 %cmp7574351, label %for.body758, label %for.end792

for.body758:                                      ; preds = %for.cond756.preheader, %if.end787
  %indvars.iv4951 = phi i64 [ %indvars.iv.next4952, %if.end787 ], [ %132, %for.cond756.preheader ]
  %mm.474356 = phi i32 [ %mm.48, %if.end787 ], [ %mm.464362, %for.cond756.preheader ]
  %kk557.44355 = phi i32 [ %add788, %if.end787 ], [ %kstart558.64361, %for.cond756.preheader ]
  %ii553.44353 = phi i32 [ %inc791, %if.end787 ], [ 0, %for.cond756.preheader ]
  %count551.84352 = phi i32 [ %count551.9, %if.end787 ], [ 0, %for.cond756.preheader ]
  %mul759 = shl nsw i32 %kk557.44355, 1
  %idxprom760 = sext i32 %mul759 to i64
  %arrayidx761 = getelementptr inbounds double* %call18, i64 %idxprom760
  %143 = load double* %arrayidx761, align 8, !tbaa !4
  %add7634089 = or i32 %mul759, 1
  %idxprom764 = sext i32 %add7634089 to i64
  %arrayidx765 = getelementptr inbounds double* %call18, i64 %idxprom764
  %144 = load double* %arrayidx765, align 8, !tbaa !4
  %call766 = tail call double @Zabs(double %143, double %144) #5
  %cmp767 = fcmp ult double %call766, %droptol
  br i1 %cmp767, label %if.end787, label %if.then768

if.then768:                                       ; preds = %for.body758
  %idxprom769 = sext i32 %mm.474356 to i64
  %arrayidx770 = getelementptr inbounds i32* %ivec, i64 %idxprom769
  store i32 %ii553.44353, i32* %arrayidx770, align 4, !tbaa !3
  %145 = load double* %arrayidx761, align 8, !tbaa !4
  %mul774 = shl nsw i32 %mm.474356, 1
  %idxprom775 = sext i32 %mul774 to i64
  %arrayidx776 = getelementptr inbounds double* %dvec, i64 %idxprom775
  store double %145, double* %arrayidx776, align 8, !tbaa !4
  %146 = load double* %arrayidx765, align 8, !tbaa !4
  %add7824090 = or i32 %mul774, 1
  %idxprom783 = sext i32 %add7824090 to i64
  %arrayidx784 = getelementptr inbounds double* %dvec, i64 %idxprom783
  store double %146, double* %arrayidx784, align 8, !tbaa !4
  %inc785 = add nsw i32 %mm.474356, 1
  %inc786 = add nsw i32 %count551.84352, 1
  br label %if.end787

if.end787:                                        ; preds = %for.body758, %if.then768
  %count551.9 = phi i32 [ %inc786, %if.then768 ], [ %count551.84352, %for.body758 ]
  %mm.48 = phi i32 [ %inc785, %if.then768 ], [ %mm.474356, %for.body758 ]
  %147 = trunc i64 %indvars.iv4951 to i32
  %add788 = add nsw i32 %kk557.44355, %147
  %inc791 = add nsw i32 %ii553.44353, 1
  %indvars.iv.next4952 = add i64 %indvars.iv4951, -1
  %exitcond4954 = icmp eq i32 %inc791, %first552.14366
  br i1 %exitcond4954, label %for.end792, label %for.body758

for.end792:                                       ; preds = %if.end787, %for.cond756.preheader
  %mm.47.lcssa = phi i32 [ %mm.464362, %for.cond756.preheader ], [ %mm.48, %if.end787 ]
  %count551.8.lcssa = phi i32 [ 0, %for.cond756.preheader ], [ %count551.9, %if.end787 ]
  %inc793 = add nsw i32 %kstart558.64361, 1
  %arrayidx795 = getelementptr inbounds i32* %sizes, i64 %indvars.iv4955
  store i32 %count551.8.lcssa, i32* %arrayidx795, align 4, !tbaa !3
  %indvars.iv.next4956 = add i64 %indvars.iv4955, 1
  %148 = trunc i64 %indvars.iv4955 to i32
  %cmp754 = icmp slt i32 %148, %sub752
  br i1 %cmp754, label %for.cond756.preheader, label %for.cond753.for.end798_crit_edge

for.cond753.for.end798_crit_edge:                 ; preds = %for.end792
  %149 = sub i32 %142, %first552.14366
  br label %for.end798

for.end798:                                       ; preds = %for.cond753.for.end798_crit_edge, %for.body748
  %mm.46.lcssa = phi i32 [ %mm.47.lcssa, %for.cond753.for.end798_crit_edge ], [ %mm.454369, %for.body748 ]
  %kstart558.6.lcssa = phi i32 [ %149, %for.cond753.for.end798_crit_edge ], [ %kstart558.54368, %for.body748 ]
  %indvars.iv.next4959 = add i64 %indvars.iv4958, 1
  %lftr.wideiv4960 = trunc i64 %indvars.iv.next4959 to i32
  %exitcond4961 = icmp eq i32 %lftr.wideiv4960, %npivot
  br i1 %exitcond4961, label %for.cond803.preheader, label %for.body748

for.cond806.preheader:                            ; preds = %for.cond806.preheader.lr.ph, %for.end842
  %indvars.iv4949 = phi i64 [ %135, %for.cond806.preheader.lr.ph ], [ %indvars.iv.next4950, %for.end842 ]
  %mm.494349 = phi i32 [ %mm.45.lcssa, %for.cond806.preheader.lr.ph ], [ %mm.50.lcssa, %for.end842 ]
  %kstart558.74348 = phi i32 [ %kstart558.5.lcssa, %for.cond806.preheader.lr.ph ], [ %inc843, %for.end842 ]
  br i1 %cmp8074337, label %for.body808, label %for.end842

for.body808:                                      ; preds = %for.cond806.preheader, %if.end837
  %indvars.iv4945 = phi i64 [ %indvars.iv.next4946, %if.end837 ], [ %134, %for.cond806.preheader ]
  %mm.504342 = phi i32 [ %mm.51, %if.end837 ], [ %mm.494349, %for.cond806.preheader ]
  %kk557.54341 = phi i32 [ %add838, %if.end837 ], [ %kstart558.74348, %for.cond806.preheader ]
  %ii553.54339 = phi i32 [ %inc841, %if.end837 ], [ 0, %for.cond806.preheader ]
  %count551.104338 = phi i32 [ %count551.11, %if.end837 ], [ 0, %for.cond806.preheader ]
  %mul809 = shl nsw i32 %kk557.54341, 1
  %idxprom810 = sext i32 %mul809 to i64
  %arrayidx811 = getelementptr inbounds double* %call18, i64 %idxprom810
  %150 = load double* %arrayidx811, align 8, !tbaa !4
  %add8134087 = or i32 %mul809, 1
  %idxprom814 = sext i32 %add8134087 to i64
  %arrayidx815 = getelementptr inbounds double* %call18, i64 %idxprom814
  %151 = load double* %arrayidx815, align 8, !tbaa !4
  %call816 = tail call double @Zabs(double %150, double %151) #5
  %cmp817 = fcmp ult double %call816, %droptol
  br i1 %cmp817, label %if.end837, label %if.then818

if.then818:                                       ; preds = %for.body808
  %idxprom819 = sext i32 %mm.504342 to i64
  %arrayidx820 = getelementptr inbounds i32* %ivec, i64 %idxprom819
  store i32 %ii553.54339, i32* %arrayidx820, align 4, !tbaa !3
  %152 = load double* %arrayidx811, align 8, !tbaa !4
  %mul824 = shl nsw i32 %mm.504342, 1
  %idxprom825 = sext i32 %mul824 to i64
  %arrayidx826 = getelementptr inbounds double* %dvec, i64 %idxprom825
  store double %152, double* %arrayidx826, align 8, !tbaa !4
  %153 = load double* %arrayidx815, align 8, !tbaa !4
  %add8324088 = or i32 %mul824, 1
  %idxprom833 = sext i32 %add8324088 to i64
  %arrayidx834 = getelementptr inbounds double* %dvec, i64 %idxprom833
  store double %153, double* %arrayidx834, align 8, !tbaa !4
  %inc835 = add nsw i32 %mm.504342, 1
  %inc836 = add nsw i32 %count551.104338, 1
  br label %if.end837

if.end837:                                        ; preds = %for.body808, %if.then818
  %count551.11 = phi i32 [ %inc836, %if.then818 ], [ %count551.104338, %for.body808 ]
  %mm.51 = phi i32 [ %inc835, %if.then818 ], [ %mm.504342, %for.body808 ]
  %154 = trunc i64 %indvars.iv4945 to i32
  %add838 = add nsw i32 %kk557.54341, %154
  %inc841 = add nsw i32 %ii553.54339, 1
  %indvars.iv.next4946 = add i64 %indvars.iv4945, -1
  %exitcond4948 = icmp eq i32 %inc841, %4
  br i1 %exitcond4948, label %for.end842, label %for.body808

for.end842:                                       ; preds = %if.end837, %for.cond806.preheader
  %mm.50.lcssa = phi i32 [ %mm.494349, %for.cond806.preheader ], [ %mm.51, %if.end837 ]
  %count551.10.lcssa = phi i32 [ 0, %for.cond806.preheader ], [ %count551.11, %if.end837 ]
  %inc843 = add nsw i32 %kstart558.74348, 1
  %arrayidx845 = getelementptr inbounds i32* %sizes, i64 %indvars.iv4949
  store i32 %count551.10.lcssa, i32* %arrayidx845, align 4, !tbaa !3
  %indvars.iv.next4950 = add i64 %indvars.iv4949, 1
  %155 = trunc i64 %indvars.iv.next4950 to i32
  %cmp804 = icmp slt i32 %155, %add17
  br i1 %cmp804, label %for.cond806.preheader, label %sw.epilog2477

if.else852:                                       ; preds = %sw.bb544
  %sub862 = add nsw i32 %add, -1
  %type867 = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 4
  %156 = load i32* %type867, align 4, !tbaa !3
  switch i32 %156, label %sw.epilog2477 [
    i32 1, label %for.cond870.preheader
    i32 2, label %for.cond912.preheader
  ]

for.cond912.preheader:                            ; preds = %if.else852
  %cmp9134395 = icmp sgt i32 %add17, 0
  br i1 %cmp9134395, label %for.body914.lr.ph, label %sw.epilog2477

for.body914.lr.ph:                                ; preds = %for.cond912.preheader
  %157 = add i32 %5, %6
  %158 = shl i32 %4, 1
  %159 = add i32 %157, %158
  %160 = add i32 %159, -3
  %161 = sext i32 %160 to i64
  br label %for.body914

for.cond870.preheader:                            ; preds = %if.else852
  %cmp8714381 = icmp sgt i32 %add17, 0
  br i1 %cmp8714381, label %for.body872.lr.ph, label %sw.epilog2477

for.body872.lr.ph:                                ; preds = %for.cond870.preheader
  %162 = add i32 %5, %6
  %163 = shl i32 %4, 1
  %164 = add i32 %162, %163
  %165 = add i32 %164, -3
  %166 = sext i32 %165 to i64
  br label %for.body872

for.body872:                                      ; preds = %for.end901, %for.body872.lr.ph
  %indvars.iv4965 = phi i64 [ 0, %for.body872.lr.ph ], [ %indvars.iv.next4966, %for.end901 ]
  %mm.524384 = phi i32 [ 0, %for.body872.lr.ph ], [ %mm.53.lcssa, %for.end901 ]
  %kstart859.04383 = phi i32 [ %sub862, %for.body872.lr.ph ], [ %inc902, %for.end901 ]
  %167 = trunc i64 %indvars.iv4965 to i32
  %cmp873 = icmp slt i32 %167, %4
  %.sink2481 = select i1 %cmp873, i32 %167, i32 %4
  %sub875 = add nsw i32 %.sink2481, -1
  %cmp8814372 = icmp slt i32 %.sink2481, 1
  br i1 %cmp8814372, label %for.end901, label %for.body882

for.body882:                                      ; preds = %for.body872, %if.end896
  %indvars.iv4962 = phi i64 [ %indvars.iv.next4963, %if.end896 ], [ %166, %for.body872 ]
  %mm.534377 = phi i32 [ %mm.54, %if.end896 ], [ %mm.524384, %for.body872 ]
  %kk858.04376 = phi i32 [ %add897, %if.end896 ], [ %kstart859.04383, %for.body872 ]
  %ii854.04374 = phi i32 [ %inc900, %if.end896 ], [ 0, %for.body872 ]
  %count853.04373 = phi i32 [ %count853.1, %if.end896 ], [ 0, %for.body872 ]
  %idxprom883 = sext i32 %kk858.04376 to i64
  %arrayidx884 = getelementptr inbounds double* %call18, i64 %idxprom883
  %168 = load double* %arrayidx884, align 8, !tbaa !4
  %call885 = tail call double @fabs(double %168) #7
  %cmp886 = fcmp ult double %call885, %droptol
  br i1 %cmp886, label %if.end896, label %if.then887

if.then887:                                       ; preds = %for.body882
  %idxprom888 = sext i32 %mm.534377 to i64
  %arrayidx889 = getelementptr inbounds i32* %ivec, i64 %idxprom888
  store i32 %ii854.04374, i32* %arrayidx889, align 4, !tbaa !3
  %arrayidx893 = getelementptr inbounds double* %dvec, i64 %idxprom888
  store double %168, double* %arrayidx893, align 8, !tbaa !4
  %inc894 = add nsw i32 %mm.534377, 1
  %inc895 = add nsw i32 %count853.04373, 1
  br label %if.end896

if.end896:                                        ; preds = %for.body882, %if.then887
  %count853.1 = phi i32 [ %inc895, %if.then887 ], [ %count853.04373, %for.body882 ]
  %mm.54 = phi i32 [ %inc894, %if.then887 ], [ %mm.534377, %for.body882 ]
  %169 = trunc i64 %indvars.iv4962 to i32
  %add897 = add nsw i32 %kk858.04376, %169
  %inc900 = add nsw i32 %ii854.04374, 1
  %cmp881 = icmp slt i32 %ii854.04374, %sub875
  %indvars.iv.next4963 = add i64 %indvars.iv4962, -2
  br i1 %cmp881, label %for.body882, label %for.end901

for.end901:                                       ; preds = %if.end896, %for.body872
  %mm.53.lcssa = phi i32 [ %mm.524384, %for.body872 ], [ %mm.54, %if.end896 ]
  %count853.0.lcssa = phi i32 [ 0, %for.body872 ], [ %count853.1, %if.end896 ]
  %inc902 = add nsw i32 %kstart859.04383, 1
  %arrayidx904 = getelementptr inbounds i32* %sizes, i64 %indvars.iv4965
  store i32 %count853.0.lcssa, i32* %arrayidx904, align 4, !tbaa !3
  %indvars.iv.next4966 = add i64 %indvars.iv4965, 1
  %lftr.wideiv4967 = trunc i64 %indvars.iv.next4966 to i32
  %exitcond4968 = icmp eq i32 %lftr.wideiv4967, %add17
  br i1 %exitcond4968, label %sw.epilog2477, label %for.body872

for.body914:                                      ; preds = %for.end958, %for.body914.lr.ph
  %indvars.iv4972 = phi i64 [ 0, %for.body914.lr.ph ], [ %indvars.iv.next4973, %for.end958 ]
  %mm.554398 = phi i32 [ 0, %for.body914.lr.ph ], [ %mm.56.lcssa, %for.end958 ]
  %kstart859.14397 = phi i32 [ %sub862, %for.body914.lr.ph ], [ %inc959, %for.end958 ]
  %170 = trunc i64 %indvars.iv4972 to i32
  %cmp915 = icmp slt i32 %170, %4
  %.sink2482 = select i1 %cmp915, i32 %170, i32 %4
  %sub917 = add nsw i32 %.sink2482, -1
  %cmp9234386 = icmp slt i32 %.sink2482, 1
  br i1 %cmp9234386, label %for.end958, label %for.body924

for.body924:                                      ; preds = %for.body914, %if.end953
  %indvars.iv4969 = phi i64 [ %indvars.iv.next4970, %if.end953 ], [ %161, %for.body914 ]
  %mm.564391 = phi i32 [ %mm.57, %if.end953 ], [ %mm.554398, %for.body914 ]
  %kk858.14390 = phi i32 [ %add954, %if.end953 ], [ %kstart859.14397, %for.body914 ]
  %ii854.14388 = phi i32 [ %inc957, %if.end953 ], [ 0, %for.body914 ]
  %count853.24387 = phi i32 [ %count853.3, %if.end953 ], [ 0, %for.body914 ]
  %mul925 = shl nsw i32 %kk858.14390, 1
  %idxprom926 = sext i32 %mul925 to i64
  %arrayidx927 = getelementptr inbounds double* %call18, i64 %idxprom926
  %171 = load double* %arrayidx927, align 8, !tbaa !4
  %add9294085 = or i32 %mul925, 1
  %idxprom930 = sext i32 %add9294085 to i64
  %arrayidx931 = getelementptr inbounds double* %call18, i64 %idxprom930
  %172 = load double* %arrayidx931, align 8, !tbaa !4
  %call932 = tail call double @Zabs(double %171, double %172) #5
  %cmp933 = fcmp ult double %call932, %droptol
  br i1 %cmp933, label %if.end953, label %if.then934

if.then934:                                       ; preds = %for.body924
  %idxprom935 = sext i32 %mm.564391 to i64
  %arrayidx936 = getelementptr inbounds i32* %ivec, i64 %idxprom935
  store i32 %ii854.14388, i32* %arrayidx936, align 4, !tbaa !3
  %173 = load double* %arrayidx927, align 8, !tbaa !4
  %mul940 = shl nsw i32 %mm.564391, 1
  %idxprom941 = sext i32 %mul940 to i64
  %arrayidx942 = getelementptr inbounds double* %dvec, i64 %idxprom941
  store double %173, double* %arrayidx942, align 8, !tbaa !4
  %174 = load double* %arrayidx931, align 8, !tbaa !4
  %add9484086 = or i32 %mul940, 1
  %idxprom949 = sext i32 %add9484086 to i64
  %arrayidx950 = getelementptr inbounds double* %dvec, i64 %idxprom949
  store double %174, double* %arrayidx950, align 8, !tbaa !4
  %inc951 = add nsw i32 %mm.564391, 1
  %inc952 = add nsw i32 %count853.24387, 1
  br label %if.end953

if.end953:                                        ; preds = %for.body924, %if.then934
  %count853.3 = phi i32 [ %inc952, %if.then934 ], [ %count853.24387, %for.body924 ]
  %mm.57 = phi i32 [ %inc951, %if.then934 ], [ %mm.564391, %for.body924 ]
  %175 = trunc i64 %indvars.iv4969 to i32
  %add954 = add nsw i32 %kk858.14390, %175
  %inc957 = add nsw i32 %ii854.14388, 1
  %cmp923 = icmp slt i32 %ii854.14388, %sub917
  %indvars.iv.next4970 = add i64 %indvars.iv4969, -2
  br i1 %cmp923, label %for.body924, label %for.end958

for.end958:                                       ; preds = %if.end953, %for.body914
  %mm.56.lcssa = phi i32 [ %mm.554398, %for.body914 ], [ %mm.57, %if.end953 ]
  %count853.2.lcssa = phi i32 [ 0, %for.body914 ], [ %count853.3, %if.end953 ]
  %inc959 = add nsw i32 %kstart859.14397, 1
  %arrayidx961 = getelementptr inbounds i32* %sizes, i64 %indvars.iv4972
  store i32 %count853.2.lcssa, i32* %arrayidx961, align 4, !tbaa !3
  %indvars.iv.next4973 = add i64 %indvars.iv4972, 1
  %lftr.wideiv4974 = trunc i64 %indvars.iv.next4973 to i32
  %exitcond4975 = icmp eq i32 %lftr.wideiv4974, %add17
  br i1 %exitcond4975, label %sw.epilog2477, label %for.body914

sw.bb970:                                         ; preds = %if.end12
  switch i32 %storeflag, label %sw.epilog2477 [
    i32 0, label %sw.bb971
    i32 1, label %sw.bb1086
  ]

sw.bb971:                                         ; preds = %sw.bb970
  %sub981 = add nsw i32 %add, -1
  %type986 = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 4
  %176 = load i32* %type986, align 4, !tbaa !3
  switch i32 %176, label %sw.epilog2477 [
    i32 1, label %for.cond989.preheader
    i32 2, label %for.cond1031.preheader
  ]

for.cond1031.preheader:                           ; preds = %sw.bb971
  %cmp10324423 = icmp sgt i32 %4, 0
  br i1 %cmp10324423, label %for.body1033.lr.ph, label %sw.epilog2477

for.body1033.lr.ph:                               ; preds = %for.cond1031.preheader
  %177 = add i32 %5, %6
  %178 = shl i32 %4, 1
  %179 = add i32 %177, %178
  %180 = add i32 %179, -1
  %181 = sext i32 %180 to i64
  br label %for.body1033

for.cond989.preheader:                            ; preds = %sw.bb971
  %cmp9904409 = icmp sgt i32 %4, 0
  br i1 %cmp9904409, label %for.body991.lr.ph, label %sw.epilog2477

for.body991.lr.ph:                                ; preds = %for.cond989.preheader
  %182 = add i32 %5, %6
  %183 = shl i32 %4, 1
  %184 = add i32 %182, %183
  %185 = add i32 %184, -1
  %186 = sext i32 %185 to i64
  br label %for.body991

for.body991:                                      ; preds = %for.end1020, %for.body991.lr.ph
  %indvars.iv4979 = phi i64 [ 0, %for.body991.lr.ph ], [ %indvars.iv.next4980, %for.end1020 ]
  %mm.584412 = phi i32 [ 0, %for.body991.lr.ph ], [ %mm.59.lcssa, %for.end1020 ]
  %kstart978.04411 = phi i32 [ %sub981, %for.body991.lr.ph ], [ %dec1023, %for.end1020 ]
  %187 = add nsw i64 %indvars.iv4979, 4294967295
  %188 = trunc i64 %indvars.iv4979 to i32
  %cmp10004400 = icmp slt i32 %188, 1
  br i1 %cmp10004400, label %for.end1020, label %for.body1001

for.body1001:                                     ; preds = %for.body991, %if.end1015
  %indvars.iv4976 = phi i64 [ %indvars.iv.next4977, %if.end1015 ], [ %186, %for.body991 ]
  %mm.594405 = phi i32 [ %mm.60, %if.end1015 ], [ %mm.584412, %for.body991 ]
  %kk977.04404 = phi i32 [ %add1016, %if.end1015 ], [ %kstart978.04411, %for.body991 ]
  %jj974.04402 = phi i32 [ %inc1019, %if.end1015 ], [ 0, %for.body991 ]
  %count972.04401 = phi i32 [ %count972.1, %if.end1015 ], [ 0, %for.body991 ]
  %idxprom1002 = sext i32 %kk977.04404 to i64
  %arrayidx1003 = getelementptr inbounds double* %call18, i64 %idxprom1002
  %189 = load double* %arrayidx1003, align 8, !tbaa !4
  %call1004 = tail call double @fabs(double %189) #7
  %cmp1005 = fcmp ult double %call1004, %droptol
  br i1 %cmp1005, label %if.end1015, label %if.then1006

if.then1006:                                      ; preds = %for.body1001
  %idxprom1007 = sext i32 %mm.594405 to i64
  %arrayidx1008 = getelementptr inbounds i32* %ivec, i64 %idxprom1007
  store i32 %jj974.04402, i32* %arrayidx1008, align 4, !tbaa !3
  %arrayidx1012 = getelementptr inbounds double* %dvec, i64 %idxprom1007
  store double %189, double* %arrayidx1012, align 8, !tbaa !4
  %inc1013 = add nsw i32 %mm.594405, 1
  %inc1014 = add nsw i32 %count972.04401, 1
  br label %if.end1015

if.end1015:                                       ; preds = %for.body1001, %if.then1006
  %count972.1 = phi i32 [ %inc1014, %if.then1006 ], [ %count972.04401, %for.body1001 ]
  %mm.60 = phi i32 [ %inc1013, %if.then1006 ], [ %mm.594405, %for.body1001 ]
  %190 = trunc i64 %indvars.iv4976 to i32
  %add1016 = add nsw i32 %kk977.04404, %190
  %inc1019 = add nsw i32 %jj974.04402, 1
  %191 = trunc i64 %187 to i32
  %cmp1000 = icmp slt i32 %jj974.04402, %191
  %indvars.iv.next4977 = add i64 %indvars.iv4976, -2
  br i1 %cmp1000, label %for.body1001, label %for.end1020

for.end1020:                                      ; preds = %if.end1015, %for.body991
  %mm.59.lcssa = phi i32 [ %mm.584412, %for.body991 ], [ %mm.60, %if.end1015 ]
  %count972.0.lcssa = phi i32 [ 0, %for.body991 ], [ %count972.1, %if.end1015 ]
  %arrayidx1022 = getelementptr inbounds i32* %sizes, i64 %indvars.iv4979
  store i32 %count972.0.lcssa, i32* %arrayidx1022, align 4, !tbaa !3
  %dec1023 = add nsw i32 %kstart978.04411, -1
  %indvars.iv.next4980 = add i64 %indvars.iv4979, 1
  %lftr.wideiv4982 = trunc i64 %indvars.iv.next4980 to i32
  %exitcond4983 = icmp eq i32 %lftr.wideiv4982, %4
  br i1 %exitcond4983, label %sw.epilog2477, label %for.body991

for.body1033:                                     ; preds = %for.end1077, %for.body1033.lr.ph
  %indvars.iv4987 = phi i64 [ 0, %for.body1033.lr.ph ], [ %indvars.iv.next4988, %for.end1077 ]
  %mm.614426 = phi i32 [ 0, %for.body1033.lr.ph ], [ %mm.62.lcssa, %for.end1077 ]
  %kstart978.14425 = phi i32 [ %sub981, %for.body1033.lr.ph ], [ %dec1080, %for.end1077 ]
  %192 = add nsw i64 %indvars.iv4987, 4294967295
  %193 = trunc i64 %indvars.iv4987 to i32
  %cmp10424414 = icmp slt i32 %193, 1
  br i1 %cmp10424414, label %for.end1077, label %for.body1043

for.body1043:                                     ; preds = %for.body1033, %if.end1072
  %indvars.iv4984 = phi i64 [ %indvars.iv.next4985, %if.end1072 ], [ %181, %for.body1033 ]
  %mm.624419 = phi i32 [ %mm.63, %if.end1072 ], [ %mm.614426, %for.body1033 ]
  %kk977.14418 = phi i32 [ %add1073, %if.end1072 ], [ %kstart978.14425, %for.body1033 ]
  %jj974.14416 = phi i32 [ %inc1076, %if.end1072 ], [ 0, %for.body1033 ]
  %count972.24415 = phi i32 [ %count972.3, %if.end1072 ], [ 0, %for.body1033 ]
  %mul1044 = shl nsw i32 %kk977.14418, 1
  %idxprom1045 = sext i32 %mul1044 to i64
  %arrayidx1046 = getelementptr inbounds double* %call18, i64 %idxprom1045
  %194 = load double* %arrayidx1046, align 8, !tbaa !4
  %add10484083 = or i32 %mul1044, 1
  %idxprom1049 = sext i32 %add10484083 to i64
  %arrayidx1050 = getelementptr inbounds double* %call18, i64 %idxprom1049
  %195 = load double* %arrayidx1050, align 8, !tbaa !4
  %call1051 = tail call double @Zabs(double %194, double %195) #5
  %cmp1052 = fcmp ult double %call1051, %droptol
  br i1 %cmp1052, label %if.end1072, label %if.then1053

if.then1053:                                      ; preds = %for.body1043
  %idxprom1054 = sext i32 %mm.624419 to i64
  %arrayidx1055 = getelementptr inbounds i32* %ivec, i64 %idxprom1054
  store i32 %jj974.14416, i32* %arrayidx1055, align 4, !tbaa !3
  %196 = load double* %arrayidx1046, align 8, !tbaa !4
  %mul1059 = shl nsw i32 %mm.624419, 1
  %idxprom1060 = sext i32 %mul1059 to i64
  %arrayidx1061 = getelementptr inbounds double* %dvec, i64 %idxprom1060
  store double %196, double* %arrayidx1061, align 8, !tbaa !4
  %197 = load double* %arrayidx1050, align 8, !tbaa !4
  %add10674084 = or i32 %mul1059, 1
  %idxprom1068 = sext i32 %add10674084 to i64
  %arrayidx1069 = getelementptr inbounds double* %dvec, i64 %idxprom1068
  store double %197, double* %arrayidx1069, align 8, !tbaa !4
  %inc1070 = add nsw i32 %mm.624419, 1
  %inc1071 = add nsw i32 %count972.24415, 1
  br label %if.end1072

if.end1072:                                       ; preds = %for.body1043, %if.then1053
  %count972.3 = phi i32 [ %inc1071, %if.then1053 ], [ %count972.24415, %for.body1043 ]
  %mm.63 = phi i32 [ %inc1070, %if.then1053 ], [ %mm.624419, %for.body1043 ]
  %198 = trunc i64 %indvars.iv4984 to i32
  %add1073 = add nsw i32 %kk977.14418, %198
  %inc1076 = add nsw i32 %jj974.14416, 1
  %199 = trunc i64 %192 to i32
  %cmp1042 = icmp slt i32 %jj974.14416, %199
  %indvars.iv.next4985 = add i64 %indvars.iv4984, -2
  br i1 %cmp1042, label %for.body1043, label %for.end1077

for.end1077:                                      ; preds = %if.end1072, %for.body1033
  %mm.62.lcssa = phi i32 [ %mm.614426, %for.body1033 ], [ %mm.63, %if.end1072 ]
  %count972.2.lcssa = phi i32 [ 0, %for.body1033 ], [ %count972.3, %if.end1072 ]
  %arrayidx1079 = getelementptr inbounds i32* %sizes, i64 %indvars.iv4987
  store i32 %count972.2.lcssa, i32* %arrayidx1079, align 4, !tbaa !3
  %dec1080 = add nsw i32 %kstart978.14425, -1
  %indvars.iv.next4988 = add i64 %indvars.iv4987, 1
  %lftr.wideiv4990 = trunc i64 %indvars.iv.next4988 to i32
  %exitcond4991 = icmp eq i32 %lftr.wideiv4990, %4
  br i1 %exitcond4991, label %sw.epilog2477, label %for.body1033

sw.bb1086:                                        ; preds = %sw.bb970
  %sub1094 = add nsw i32 %add, -1
  %mul1095 = shl i32 %4, 1
  %add1096 = add i32 %5, -2
  %add1097 = add i32 %add1096, %mul1095
  %sub1098 = add i32 %add1097, %6
  %type1099 = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 4
  %200 = load i32* %type1099, align 4, !tbaa !3
  switch i32 %200, label %sw.epilog2477 [
    i32 1, label %for.cond1102.preheader
    i32 2, label %for.cond1139.preheader
  ]

for.cond1139.preheader:                           ; preds = %sw.bb1086
  %cmp11404452 = icmp sgt i32 %4, 0
  br i1 %cmp11404452, label %for.body1141, label %sw.epilog2477

for.cond1102.preheader:                           ; preds = %sw.bb1086
  %cmp11034437 = icmp sgt i32 %4, 0
  br i1 %cmp11034437, label %for.body1104, label %sw.epilog2477

for.body1104:                                     ; preds = %for.cond1102.preheader, %for.end1127
  %indvars.iv4996 = phi i64 [ %indvars.iv.next4997, %for.end1127 ], [ 0, %for.cond1102.preheader ]
  %mm.644441 = phi i32 [ %mm.65.lcssa, %for.end1127 ], [ 0, %for.cond1102.preheader ]
  %stride1092.04440 = phi i32 [ %sub1129, %for.end1127 ], [ %sub1098, %for.cond1102.preheader ]
  %kstart1091.04439 = phi i32 [ %add1128, %for.end1127 ], [ %sub1094, %for.cond1102.preheader ]
  %jj1089.04438 = phi i32 [ %add1106, %for.end1127 ], [ 0, %for.cond1102.preheader ]
  %indvars.iv.next4997 = add i64 %indvars.iv4996, 1
  %add1106 = add nsw i32 %jj1089.04438, 1
  %201 = trunc i64 %indvars.iv.next4997 to i32
  %cmp11084429 = icmp slt i32 %201, %4
  br i1 %cmp11084429, label %for.body1109, label %for.end1127

for.body1109:                                     ; preds = %for.body1104, %for.inc1124
  %kk1090.04433.in = phi i32 [ %kk1090.04433, %for.inc1124 ], [ %kstart1091.04439, %for.body1104 ]
  %mm.654432 = phi i32 [ %mm.66, %for.inc1124 ], [ %mm.644441, %for.body1104 ]
  %ii1088.04431 = phi i32 [ %inc1125, %for.inc1124 ], [ %add1106, %for.body1104 ]
  %count1087.04430 = phi i32 [ %count1087.1, %for.inc1124 ], [ 0, %for.body1104 ]
  %kk1090.04433 = add nsw i32 %kk1090.04433.in, -1
  %idxprom1110 = sext i32 %kk1090.04433 to i64
  %arrayidx1111 = getelementptr inbounds double* %call18, i64 %idxprom1110
  %202 = load double* %arrayidx1111, align 8, !tbaa !4
  %call1112 = tail call double @fabs(double %202) #7
  %cmp1113 = fcmp ult double %call1112, %droptol
  br i1 %cmp1113, label %for.inc1124, label %if.then1114

if.then1114:                                      ; preds = %for.body1109
  %idxprom1115 = sext i32 %mm.654432 to i64
  %arrayidx1116 = getelementptr inbounds i32* %ivec, i64 %idxprom1115
  store i32 %ii1088.04431, i32* %arrayidx1116, align 4, !tbaa !3
  %arrayidx1120 = getelementptr inbounds double* %dvec, i64 %idxprom1115
  store double %202, double* %arrayidx1120, align 8, !tbaa !4
  %inc1121 = add nsw i32 %mm.654432, 1
  %inc1122 = add nsw i32 %count1087.04430, 1
  br label %for.inc1124

for.inc1124:                                      ; preds = %for.body1109, %if.then1114
  %count1087.1 = phi i32 [ %inc1122, %if.then1114 ], [ %count1087.04430, %for.body1109 ]
  %mm.66 = phi i32 [ %inc1121, %if.then1114 ], [ %mm.654432, %for.body1109 ]
  %inc1125 = add nsw i32 %ii1088.04431, 1
  %exitcond4995 = icmp eq i32 %inc1125, %4
  br i1 %exitcond4995, label %for.end1127, label %for.body1109

for.end1127:                                      ; preds = %for.inc1124, %for.body1104
  %mm.65.lcssa = phi i32 [ %mm.644441, %for.body1104 ], [ %mm.66, %for.inc1124 ]
  %count1087.0.lcssa = phi i32 [ 0, %for.body1104 ], [ %count1087.1, %for.inc1124 ]
  %add1128 = add nsw i32 %stride1092.04440, %kstart1091.04439
  %sub1129 = add nsw i32 %stride1092.04440, -2
  %arrayidx1131 = getelementptr inbounds i32* %sizes, i64 %indvars.iv4996
  store i32 %count1087.0.lcssa, i32* %arrayidx1131, align 4, !tbaa !3
  %exitcond4999 = icmp eq i32 %201, %4
  br i1 %exitcond4999, label %sw.epilog2477, label %for.body1104

for.body1141:                                     ; preds = %for.cond1139.preheader, %for.end1179
  %indvars.iv5004 = phi i64 [ %indvars.iv.next5005, %for.end1179 ], [ 0, %for.cond1139.preheader ]
  %mm.674456 = phi i32 [ %mm.68.lcssa, %for.end1179 ], [ 0, %for.cond1139.preheader ]
  %stride1092.14455 = phi i32 [ %sub1181, %for.end1179 ], [ %sub1098, %for.cond1139.preheader ]
  %kstart1091.14454 = phi i32 [ %add1180, %for.end1179 ], [ %sub1094, %for.cond1139.preheader ]
  %jj1089.14453 = phi i32 [ %add1143, %for.end1179 ], [ 0, %for.cond1139.preheader ]
  %indvars.iv.next5005 = add i64 %indvars.iv5004, 1
  %add1143 = add nsw i32 %jj1089.14453, 1
  %203 = trunc i64 %indvars.iv.next5005 to i32
  %cmp11454444 = icmp slt i32 %203, %4
  br i1 %cmp11454444, label %for.body1146, label %for.end1179

for.body1146:                                     ; preds = %for.body1141, %for.inc1176
  %kk1090.14448.in = phi i32 [ %kk1090.14448, %for.inc1176 ], [ %kstart1091.14454, %for.body1141 ]
  %mm.684447 = phi i32 [ %mm.69, %for.inc1176 ], [ %mm.674456, %for.body1141 ]
  %ii1088.14446 = phi i32 [ %inc1177, %for.inc1176 ], [ %add1143, %for.body1141 ]
  %count1087.24445 = phi i32 [ %count1087.3, %for.inc1176 ], [ 0, %for.body1141 ]
  %kk1090.14448 = add nsw i32 %kk1090.14448.in, -1
  %mul1147 = shl nsw i32 %kk1090.14448, 1
  %idxprom1148 = sext i32 %mul1147 to i64
  %arrayidx1149 = getelementptr inbounds double* %call18, i64 %idxprom1148
  %204 = load double* %arrayidx1149, align 8, !tbaa !4
  %add11514081 = or i32 %mul1147, 1
  %idxprom1152 = sext i32 %add11514081 to i64
  %arrayidx1153 = getelementptr inbounds double* %call18, i64 %idxprom1152
  %205 = load double* %arrayidx1153, align 8, !tbaa !4
  %call1154 = tail call double @Zabs(double %204, double %205) #5
  %cmp1155 = fcmp ult double %call1154, %droptol
  br i1 %cmp1155, label %for.inc1176, label %if.then1156

if.then1156:                                      ; preds = %for.body1146
  %idxprom1157 = sext i32 %mm.684447 to i64
  %arrayidx1158 = getelementptr inbounds i32* %ivec, i64 %idxprom1157
  store i32 %ii1088.14446, i32* %arrayidx1158, align 4, !tbaa !3
  %206 = load double* %arrayidx1149, align 8, !tbaa !4
  %mul1162 = shl nsw i32 %mm.684447, 1
  %idxprom1163 = sext i32 %mul1162 to i64
  %arrayidx1164 = getelementptr inbounds double* %dvec, i64 %idxprom1163
  store double %206, double* %arrayidx1164, align 8, !tbaa !4
  %207 = load double* %arrayidx1153, align 8, !tbaa !4
  %add11704082 = or i32 %mul1162, 1
  %idxprom1171 = sext i32 %add11704082 to i64
  %arrayidx1172 = getelementptr inbounds double* %dvec, i64 %idxprom1171
  store double %207, double* %arrayidx1172, align 8, !tbaa !4
  %inc1173 = add nsw i32 %mm.684447, 1
  %inc1174 = add nsw i32 %count1087.24445, 1
  br label %for.inc1176

for.inc1176:                                      ; preds = %for.body1146, %if.then1156
  %count1087.3 = phi i32 [ %inc1174, %if.then1156 ], [ %count1087.24445, %for.body1146 ]
  %mm.69 = phi i32 [ %inc1173, %if.then1156 ], [ %mm.684447, %for.body1146 ]
  %inc1177 = add nsw i32 %ii1088.14446, 1
  %exitcond5003 = icmp eq i32 %inc1177, %4
  br i1 %exitcond5003, label %for.end1179, label %for.body1146

for.end1179:                                      ; preds = %for.inc1176, %for.body1141
  %mm.68.lcssa = phi i32 [ %mm.674456, %for.body1141 ], [ %mm.69, %for.inc1176 ]
  %count1087.2.lcssa = phi i32 [ 0, %for.body1141 ], [ %count1087.3, %for.inc1176 ]
  %add1180 = add nsw i32 %stride1092.14455, %kstart1091.14454
  %sub1181 = add nsw i32 %stride1092.14455, -2
  %arrayidx1183 = getelementptr inbounds i32* %sizes, i64 %indvars.iv5004
  store i32 %count1087.2.lcssa, i32* %arrayidx1183, align 4, !tbaa !3
  %exitcond5007 = icmp eq i32 %203, %4
  br i1 %exitcond5007, label %sw.epilog2477, label %for.body1141

sw.bb1190:                                        ; preds = %if.end12
  switch i32 %storeflag, label %sw.epilog2477 [
    i32 0, label %sw.bb1191
    i32 1, label %sw.bb1292
  ]

sw.bb1191:                                        ; preds = %sw.bb1190
  %sub1199 = add nsw i32 %5, -1
  %type1204 = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 4
  %208 = load i32* %type1204, align 4, !tbaa !3
  switch i32 %208, label %sw.epilog2477 [
    i32 1, label %for.cond1207.preheader
    i32 2, label %for.cond1243.preheader
  ]

for.cond1243.preheader:                           ; preds = %sw.bb1191
  %cmp12444481 = icmp sgt i32 %5, 0
  br i1 %cmp12444481, label %for.cond1246.preheader.lr.ph, label %sw.epilog2477

for.cond1246.preheader.lr.ph:                     ; preds = %for.cond1243.preheader
  %cmp12474472 = icmp sgt i32 %4, 0
  %209 = add i32 %5, %6
  %210 = shl i32 %4, 1
  %211 = add i32 %209, %210
  %212 = add i32 %211, -1
  %213 = sext i32 %212 to i64
  %214 = sext i32 %4 to i64
  br label %for.cond1246.preheader

for.cond1207.preheader:                           ; preds = %sw.bb1191
  %cmp12084467 = icmp sgt i32 %5, 0
  br i1 %cmp12084467, label %for.cond1210.preheader.lr.ph, label %sw.epilog2477

for.cond1210.preheader.lr.ph:                     ; preds = %for.cond1207.preheader
  %cmp12114458 = icmp sgt i32 %4, 0
  %215 = add i32 %5, %6
  %216 = shl i32 %4, 1
  %217 = add i32 %215, %216
  %218 = add i32 %217, -1
  %219 = sext i32 %218 to i64
  %220 = sext i32 %4 to i64
  br label %for.cond1210.preheader

for.cond1210.preheader:                           ; preds = %for.cond1210.preheader.lr.ph, %for.end1231
  %indvars.iv5012 = phi i64 [ %220, %for.cond1210.preheader.lr.ph ], [ %indvars.iv.next5013, %for.end1231 ]
  %mm.704470 = phi i32 [ 0, %for.cond1210.preheader.lr.ph ], [ %mm.71.lcssa, %for.end1231 ]
  %kstart1197.04469 = phi i32 [ %sub1199, %for.cond1210.preheader.lr.ph ], [ %dec1235, %for.end1231 ]
  br i1 %cmp12114458, label %for.body1212, label %for.end1231

for.body1212:                                     ; preds = %for.cond1210.preheader, %if.end1226
  %indvars.iv5008 = phi i64 [ %indvars.iv.next5009, %if.end1226 ], [ %219, %for.cond1210.preheader ]
  %mm.714463 = phi i32 [ %mm.72, %if.end1226 ], [ %mm.704470, %for.cond1210.preheader ]
  %kk1196.04462 = phi i32 [ %add1227, %if.end1226 ], [ %kstart1197.04469, %for.cond1210.preheader ]
  %jj1194.04460 = phi i32 [ %inc1230, %if.end1226 ], [ 0, %for.cond1210.preheader ]
  %count1192.04459 = phi i32 [ %count1192.1, %if.end1226 ], [ 0, %for.cond1210.preheader ]
  %idxprom1213 = sext i32 %kk1196.04462 to i64
  %arrayidx1214 = getelementptr inbounds double* %call18, i64 %idxprom1213
  %221 = load double* %arrayidx1214, align 8, !tbaa !4
  %call1215 = tail call double @fabs(double %221) #7
  %cmp1216 = fcmp ult double %call1215, %droptol
  br i1 %cmp1216, label %if.end1226, label %if.then1217

if.then1217:                                      ; preds = %for.body1212
  %idxprom1218 = sext i32 %mm.714463 to i64
  %arrayidx1219 = getelementptr inbounds i32* %ivec, i64 %idxprom1218
  store i32 %jj1194.04460, i32* %arrayidx1219, align 4, !tbaa !3
  %arrayidx1223 = getelementptr inbounds double* %dvec, i64 %idxprom1218
  store double %221, double* %arrayidx1223, align 8, !tbaa !4
  %inc1224 = add nsw i32 %mm.714463, 1
  %inc1225 = add nsw i32 %count1192.04459, 1
  br label %if.end1226

if.end1226:                                       ; preds = %for.body1212, %if.then1217
  %count1192.1 = phi i32 [ %inc1225, %if.then1217 ], [ %count1192.04459, %for.body1212 ]
  %mm.72 = phi i32 [ %inc1224, %if.then1217 ], [ %mm.714463, %for.body1212 ]
  %222 = trunc i64 %indvars.iv5008 to i32
  %add1227 = add nsw i32 %kk1196.04462, %222
  %inc1230 = add nsw i32 %jj1194.04460, 1
  %indvars.iv.next5009 = add i64 %indvars.iv5008, -2
  %exitcond5011 = icmp eq i32 %inc1230, %4
  br i1 %exitcond5011, label %for.end1231, label %for.body1212

for.end1231:                                      ; preds = %if.end1226, %for.cond1210.preheader
  %mm.71.lcssa = phi i32 [ %mm.704470, %for.cond1210.preheader ], [ %mm.72, %if.end1226 ]
  %count1192.0.lcssa = phi i32 [ 0, %for.cond1210.preheader ], [ %count1192.1, %if.end1226 ]
  %223 = trunc i64 %indvars.iv5012 to i32
  %sub1232 = sub nsw i32 %223, %4
  %idxprom1233 = sext i32 %sub1232 to i64
  %arrayidx1234 = getelementptr inbounds i32* %sizes, i64 %idxprom1233
  store i32 %count1192.0.lcssa, i32* %arrayidx1234, align 4, !tbaa !3
  %dec1235 = add nsw i32 %kstart1197.04469, -1
  %indvars.iv.next5013 = add i64 %indvars.iv5012, 1
  %224 = trunc i64 %indvars.iv.next5013 to i32
  %cmp1208 = icmp slt i32 %224, %add
  br i1 %cmp1208, label %for.cond1210.preheader, label %sw.epilog2477

for.cond1246.preheader:                           ; preds = %for.cond1246.preheader.lr.ph, %for.end1282
  %indvars.iv5018 = phi i64 [ %214, %for.cond1246.preheader.lr.ph ], [ %indvars.iv.next5019, %for.end1282 ]
  %mm.734484 = phi i32 [ 0, %for.cond1246.preheader.lr.ph ], [ %mm.74.lcssa, %for.end1282 ]
  %kstart1197.14483 = phi i32 [ %sub1199, %for.cond1246.preheader.lr.ph ], [ %dec1286, %for.end1282 ]
  br i1 %cmp12474472, label %for.body1248, label %for.end1282

for.body1248:                                     ; preds = %for.cond1246.preheader, %if.end1277
  %indvars.iv5014 = phi i64 [ %indvars.iv.next5015, %if.end1277 ], [ %213, %for.cond1246.preheader ]
  %mm.744477 = phi i32 [ %mm.75, %if.end1277 ], [ %mm.734484, %for.cond1246.preheader ]
  %kk1196.14476 = phi i32 [ %add1278, %if.end1277 ], [ %kstart1197.14483, %for.cond1246.preheader ]
  %jj1194.14474 = phi i32 [ %inc1281, %if.end1277 ], [ 0, %for.cond1246.preheader ]
  %count1192.24473 = phi i32 [ %count1192.3, %if.end1277 ], [ 0, %for.cond1246.preheader ]
  %mul1249 = shl nsw i32 %kk1196.14476, 1
  %idxprom1250 = sext i32 %mul1249 to i64
  %arrayidx1251 = getelementptr inbounds double* %call18, i64 %idxprom1250
  %225 = load double* %arrayidx1251, align 8, !tbaa !4
  %add12534079 = or i32 %mul1249, 1
  %idxprom1254 = sext i32 %add12534079 to i64
  %arrayidx1255 = getelementptr inbounds double* %call18, i64 %idxprom1254
  %226 = load double* %arrayidx1255, align 8, !tbaa !4
  %call1256 = tail call double @Zabs(double %225, double %226) #5
  %cmp1257 = fcmp ult double %call1256, %droptol
  br i1 %cmp1257, label %if.end1277, label %if.then1258

if.then1258:                                      ; preds = %for.body1248
  %idxprom1259 = sext i32 %mm.744477 to i64
  %arrayidx1260 = getelementptr inbounds i32* %ivec, i64 %idxprom1259
  store i32 %jj1194.14474, i32* %arrayidx1260, align 4, !tbaa !3
  %227 = load double* %arrayidx1251, align 8, !tbaa !4
  %mul1264 = shl nsw i32 %mm.744477, 1
  %idxprom1265 = sext i32 %mul1264 to i64
  %arrayidx1266 = getelementptr inbounds double* %dvec, i64 %idxprom1265
  store double %227, double* %arrayidx1266, align 8, !tbaa !4
  %228 = load double* %arrayidx1255, align 8, !tbaa !4
  %add12724080 = or i32 %mul1264, 1
  %idxprom1273 = sext i32 %add12724080 to i64
  %arrayidx1274 = getelementptr inbounds double* %dvec, i64 %idxprom1273
  store double %228, double* %arrayidx1274, align 8, !tbaa !4
  %inc1275 = add nsw i32 %mm.744477, 1
  %inc1276 = add nsw i32 %count1192.24473, 1
  br label %if.end1277

if.end1277:                                       ; preds = %for.body1248, %if.then1258
  %count1192.3 = phi i32 [ %inc1276, %if.then1258 ], [ %count1192.24473, %for.body1248 ]
  %mm.75 = phi i32 [ %inc1275, %if.then1258 ], [ %mm.744477, %for.body1248 ]
  %229 = trunc i64 %indvars.iv5014 to i32
  %add1278 = add nsw i32 %kk1196.14476, %229
  %inc1281 = add nsw i32 %jj1194.14474, 1
  %indvars.iv.next5015 = add i64 %indvars.iv5014, -2
  %exitcond5017 = icmp eq i32 %inc1281, %4
  br i1 %exitcond5017, label %for.end1282, label %for.body1248

for.end1282:                                      ; preds = %if.end1277, %for.cond1246.preheader
  %mm.74.lcssa = phi i32 [ %mm.734484, %for.cond1246.preheader ], [ %mm.75, %if.end1277 ]
  %count1192.2.lcssa = phi i32 [ 0, %for.cond1246.preheader ], [ %count1192.3, %if.end1277 ]
  %230 = trunc i64 %indvars.iv5018 to i32
  %sub1283 = sub nsw i32 %230, %4
  %idxprom1284 = sext i32 %sub1283 to i64
  %arrayidx1285 = getelementptr inbounds i32* %sizes, i64 %idxprom1284
  store i32 %count1192.2.lcssa, i32* %arrayidx1285, align 4, !tbaa !3
  %dec1286 = add nsw i32 %kstart1197.14483, -1
  %indvars.iv.next5019 = add i64 %indvars.iv5018, 1
  %231 = trunc i64 %indvars.iv.next5019 to i32
  %cmp1244 = icmp slt i32 %231, %add
  br i1 %cmp1244, label %for.cond1246.preheader, label %sw.epilog2477

sw.bb1292:                                        ; preds = %sw.bb1190
  %sub1299 = add nsw i32 %5, -1
  %type1304 = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 4
  %232 = load i32* %type1304, align 4, !tbaa !3
  switch i32 %232, label %sw.epilog2477 [
    i32 1, label %for.cond1307.preheader
    i32 2, label %for.cond1342.preheader
  ]

for.cond1342.preheader:                           ; preds = %sw.bb1292
  %cmp13434508 = icmp sgt i32 %4, 0
  br i1 %cmp13434508, label %for.cond1345.preheader.lr.ph, label %sw.epilog2477

for.cond1345.preheader.lr.ph:                     ; preds = %for.cond1342.preheader
  %cmp13464500 = icmp sgt i32 %5, 0
  %233 = add i32 %5, %6
  %234 = shl i32 %4, 1
  %235 = add i32 %233, %234
  %236 = add i32 %235, -1
  %237 = sext i32 %236 to i64
  br label %for.cond1345.preheader

for.cond1307.preheader:                           ; preds = %sw.bb1292
  %cmp13084494 = icmp sgt i32 %4, 0
  br i1 %cmp13084494, label %for.cond1310.preheader.lr.ph, label %sw.epilog2477

for.cond1310.preheader.lr.ph:                     ; preds = %for.cond1307.preheader
  %cmp13114486 = icmp sgt i32 %5, 0
  %238 = add i32 %5, %6
  %239 = shl i32 %4, 1
  %240 = add i32 %238, %239
  %241 = add i32 %240, -1
  %242 = sext i32 %241 to i64
  br label %for.cond1310.preheader

for.cond1310.preheader:                           ; preds = %for.end1330, %for.cond1310.preheader.lr.ph
  %indvars.iv5026 = phi i64 [ 0, %for.cond1310.preheader.lr.ph ], [ %indvars.iv.next5027, %for.end1330 ]
  %indvars.iv5023 = phi i64 [ %242, %for.cond1310.preheader.lr.ph ], [ %indvars.iv.next5024, %for.end1330 ]
  %mm.764498 = phi i32 [ 0, %for.cond1310.preheader.lr.ph ], [ %mm.77.lcssa, %for.end1330 ]
  %kstart1297.04496 = phi i32 [ %sub1299, %for.cond1310.preheader.lr.ph ], [ %add1331, %for.end1330 ]
  br i1 %cmp13114486, label %for.body1312.lr.ph, label %for.end1330

for.body1312.lr.ph:                               ; preds = %for.cond1310.preheader
  %243 = sext i32 %kstart1297.04496 to i64
  br label %for.body1312

for.body1312:                                     ; preds = %for.body1312.lr.ph, %for.inc1327
  %indvars.iv5020 = phi i64 [ %243, %for.body1312.lr.ph ], [ %indvars.iv.next5021, %for.inc1327 ]
  %mm.774490 = phi i32 [ %mm.764498, %for.body1312.lr.ph ], [ %mm.78, %for.inc1327 ]
  %ii1294.04488 = phi i32 [ %4, %for.body1312.lr.ph ], [ %inc1328, %for.inc1327 ]
  %count1293.04487 = phi i32 [ 0, %for.body1312.lr.ph ], [ %count1293.1, %for.inc1327 ]
  %arrayidx1314 = getelementptr inbounds double* %call18, i64 %indvars.iv5020
  %244 = load double* %arrayidx1314, align 8, !tbaa !4
  %call1315 = tail call double @fabs(double %244) #7
  %cmp1316 = fcmp ult double %call1315, %droptol
  br i1 %cmp1316, label %for.inc1327, label %if.then1317

if.then1317:                                      ; preds = %for.body1312
  %idxprom1318 = sext i32 %mm.774490 to i64
  %arrayidx1319 = getelementptr inbounds i32* %ivec, i64 %idxprom1318
  store i32 %ii1294.04488, i32* %arrayidx1319, align 4, !tbaa !3
  %arrayidx1323 = getelementptr inbounds double* %dvec, i64 %idxprom1318
  store double %244, double* %arrayidx1323, align 8, !tbaa !4
  %inc1324 = add nsw i32 %mm.774490, 1
  %inc1325 = add nsw i32 %count1293.04487, 1
  br label %for.inc1327

for.inc1327:                                      ; preds = %for.body1312, %if.then1317
  %count1293.1 = phi i32 [ %inc1325, %if.then1317 ], [ %count1293.04487, %for.body1312 ]
  %mm.78 = phi i32 [ %inc1324, %if.then1317 ], [ %mm.774490, %for.body1312 ]
  %inc1328 = add nsw i32 %ii1294.04488, 1
  %cmp1311 = icmp slt i32 %inc1328, %add
  %indvars.iv.next5021 = add i64 %indvars.iv5020, -1
  br i1 %cmp1311, label %for.body1312, label %for.end1330

for.end1330:                                      ; preds = %for.inc1327, %for.cond1310.preheader
  %mm.77.lcssa = phi i32 [ %mm.764498, %for.cond1310.preheader ], [ %mm.78, %for.inc1327 ]
  %count1293.0.lcssa = phi i32 [ 0, %for.cond1310.preheader ], [ %count1293.1, %for.inc1327 ]
  %245 = trunc i64 %indvars.iv5023 to i32
  %add1331 = add nsw i32 %245, %kstart1297.04496
  %arrayidx1334 = getelementptr inbounds i32* %sizes, i64 %indvars.iv5026
  store i32 %count1293.0.lcssa, i32* %arrayidx1334, align 4, !tbaa !3
  %indvars.iv.next5027 = add i64 %indvars.iv5026, 1
  %indvars.iv.next5024 = add i64 %indvars.iv5023, -2
  %lftr.wideiv5028 = trunc i64 %indvars.iv.next5027 to i32
  %exitcond5029 = icmp eq i32 %lftr.wideiv5028, %4
  br i1 %exitcond5029, label %sw.epilog2477, label %for.cond1310.preheader

for.cond1345.preheader:                           ; preds = %for.end1380, %for.cond1345.preheader.lr.ph
  %indvars.iv5036 = phi i64 [ 0, %for.cond1345.preheader.lr.ph ], [ %indvars.iv.next5037, %for.end1380 ]
  %indvars.iv5033 = phi i64 [ %237, %for.cond1345.preheader.lr.ph ], [ %indvars.iv.next5034, %for.end1380 ]
  %mm.794512 = phi i32 [ 0, %for.cond1345.preheader.lr.ph ], [ %mm.80.lcssa, %for.end1380 ]
  %kstart1297.14510 = phi i32 [ %sub1299, %for.cond1345.preheader.lr.ph ], [ %add1381, %for.end1380 ]
  br i1 %cmp13464500, label %for.body1347.lr.ph, label %for.end1380

for.body1347.lr.ph:                               ; preds = %for.cond1345.preheader
  %246 = sext i32 %kstart1297.14510 to i64
  br label %for.body1347

for.body1347:                                     ; preds = %for.body1347.lr.ph, %for.inc1377
  %indvars.iv5030 = phi i64 [ %246, %for.body1347.lr.ph ], [ %indvars.iv.next5031, %for.inc1377 ]
  %mm.804504 = phi i32 [ %mm.794512, %for.body1347.lr.ph ], [ %mm.81, %for.inc1377 ]
  %ii1294.14502 = phi i32 [ %4, %for.body1347.lr.ph ], [ %inc1378, %for.inc1377 ]
  %count1293.24501 = phi i32 [ 0, %for.body1347.lr.ph ], [ %count1293.3, %for.inc1377 ]
  %247 = trunc i64 %indvars.iv5030 to i32
  %mul1348 = shl nsw i32 %247, 1
  %idxprom1349 = sext i32 %mul1348 to i64
  %arrayidx1350 = getelementptr inbounds double* %call18, i64 %idxprom1349
  %248 = load double* %arrayidx1350, align 8, !tbaa !4
  %add13524077 = or i32 %mul1348, 1
  %idxprom1353 = sext i32 %add13524077 to i64
  %arrayidx1354 = getelementptr inbounds double* %call18, i64 %idxprom1353
  %249 = load double* %arrayidx1354, align 8, !tbaa !4
  %call1355 = tail call double @Zabs(double %248, double %249) #5
  %cmp1356 = fcmp ult double %call1355, %droptol
  br i1 %cmp1356, label %for.inc1377, label %if.then1357

if.then1357:                                      ; preds = %for.body1347
  %idxprom1358 = sext i32 %mm.804504 to i64
  %arrayidx1359 = getelementptr inbounds i32* %ivec, i64 %idxprom1358
  store i32 %ii1294.14502, i32* %arrayidx1359, align 4, !tbaa !3
  %250 = load double* %arrayidx1350, align 8, !tbaa !4
  %mul1363 = shl nsw i32 %mm.804504, 1
  %idxprom1364 = sext i32 %mul1363 to i64
  %arrayidx1365 = getelementptr inbounds double* %dvec, i64 %idxprom1364
  store double %250, double* %arrayidx1365, align 8, !tbaa !4
  %251 = load double* %arrayidx1354, align 8, !tbaa !4
  %add13714078 = or i32 %mul1363, 1
  %idxprom1372 = sext i32 %add13714078 to i64
  %arrayidx1373 = getelementptr inbounds double* %dvec, i64 %idxprom1372
  store double %251, double* %arrayidx1373, align 8, !tbaa !4
  %inc1374 = add nsw i32 %mm.804504, 1
  %inc1375 = add nsw i32 %count1293.24501, 1
  br label %for.inc1377

for.inc1377:                                      ; preds = %for.body1347, %if.then1357
  %count1293.3 = phi i32 [ %inc1375, %if.then1357 ], [ %count1293.24501, %for.body1347 ]
  %mm.81 = phi i32 [ %inc1374, %if.then1357 ], [ %mm.804504, %for.body1347 ]
  %inc1378 = add nsw i32 %ii1294.14502, 1
  %cmp1346 = icmp slt i32 %inc1378, %add
  %indvars.iv.next5031 = add i64 %indvars.iv5030, -1
  br i1 %cmp1346, label %for.body1347, label %for.end1380

for.end1380:                                      ; preds = %for.inc1377, %for.cond1345.preheader
  %mm.80.lcssa = phi i32 [ %mm.794512, %for.cond1345.preheader ], [ %mm.81, %for.inc1377 ]
  %count1293.2.lcssa = phi i32 [ 0, %for.cond1345.preheader ], [ %count1293.3, %for.inc1377 ]
  %252 = trunc i64 %indvars.iv5033 to i32
  %add1381 = add nsw i32 %252, %kstart1297.14510
  %arrayidx1384 = getelementptr inbounds i32* %sizes, i64 %indvars.iv5036
  store i32 %count1293.2.lcssa, i32* %arrayidx1384, align 4, !tbaa !3
  %indvars.iv.next5037 = add i64 %indvars.iv5036, 1
  %indvars.iv.next5034 = add i64 %indvars.iv5033, -2
  %lftr.wideiv5038 = trunc i64 %indvars.iv.next5037 to i32
  %exitcond5039 = icmp eq i32 %lftr.wideiv5038, %4
  br i1 %exitcond5039, label %sw.epilog2477, label %for.cond1345.preheader

sw.bb1391:                                        ; preds = %if.end12
  switch i32 %storeflag, label %sw.epilog2477 [
    i32 0, label %sw.bb1392
    i32 1, label %sw.bb1723
  ]

sw.bb1392:                                        ; preds = %sw.bb1391
  %253 = load i32* %symflag16, align 4, !tbaa !3
  %switch4106 = icmp ult i32 %253, 2
  br i1 %switch4106, label %if.then1398, label %if.else1619

if.then1398:                                      ; preds = %sw.bb1392
  %cmp1409 = icmp eq i32* %pivotsizes, null
  %type1411 = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 4
  %254 = load i32* %type1411, align 4, !tbaa !3
  %cmp1412 = icmp eq i32 %254, 1
  br i1 %cmp1409, label %if.then1410, label %if.else1501

if.then1410:                                      ; preds = %if.then1398
  br i1 %cmp1412, label %for.cond1414.preheader, label %if.else1447

for.cond1414.preheader:                           ; preds = %if.then1410
  %cmp14154523 = icmp sgt i32 %4, 0
  br i1 %cmp14154523, label %for.body1416, label %sw.epilog2477

for.body1416:                                     ; preds = %for.cond1414.preheader, %for.end1439
  %indvars.iv5044 = phi i64 [ %indvars.iv.next5045, %for.end1439 ], [ 0, %for.cond1414.preheader ]
  %mm.824527 = phi i32 [ %mm.83.lcssa, %for.end1439 ], [ 0, %for.cond1414.preheader ]
  %stride1407.04526 = phi i32 [ %dec1441, %for.end1439 ], [ %add17, %for.cond1414.preheader ]
  %kstart1405.04525 = phi i32 [ %add1440, %for.end1439 ], [ 0, %for.cond1414.preheader ]
  %ii1401.04524 = phi i32 [ %add1418, %for.end1439 ], [ 0, %for.cond1414.preheader ]
  %indvars.iv.next5045 = add i64 %indvars.iv5044, 1
  %add1418 = add nsw i32 %ii1401.04524, 1
  %255 = trunc i64 %indvars.iv.next5045 to i32
  %cmp14204515 = icmp slt i32 %255, %4
  br i1 %cmp14204515, label %for.body1421, label %for.end1439

for.body1421:                                     ; preds = %for.body1416, %for.inc1436
  %kk1404.04519.in = phi i32 [ %kk1404.04519, %for.inc1436 ], [ %kstart1405.04525, %for.body1416 ]
  %mm.834518 = phi i32 [ %mm.84, %for.inc1436 ], [ %mm.824527, %for.body1416 ]
  %jj1403.04517 = phi i32 [ %inc1437, %for.inc1436 ], [ %add1418, %for.body1416 ]
  %count1399.04516 = phi i32 [ %count1399.1, %for.inc1436 ], [ 0, %for.body1416 ]
  %kk1404.04519 = add nsw i32 %kk1404.04519.in, 1
  %idxprom1422 = sext i32 %kk1404.04519 to i64
  %arrayidx1423 = getelementptr inbounds double* %call18, i64 %idxprom1422
  %256 = load double* %arrayidx1423, align 8, !tbaa !4
  %call1424 = tail call double @fabs(double %256) #7
  %cmp1425 = fcmp ult double %call1424, %droptol
  br i1 %cmp1425, label %for.inc1436, label %if.then1426

if.then1426:                                      ; preds = %for.body1421
  %idxprom1427 = sext i32 %mm.834518 to i64
  %arrayidx1428 = getelementptr inbounds i32* %ivec, i64 %idxprom1427
  store i32 %jj1403.04517, i32* %arrayidx1428, align 4, !tbaa !3
  %arrayidx1432 = getelementptr inbounds double* %dvec, i64 %idxprom1427
  store double %256, double* %arrayidx1432, align 8, !tbaa !4
  %inc1433 = add nsw i32 %mm.834518, 1
  %inc1434 = add nsw i32 %count1399.04516, 1
  br label %for.inc1436

for.inc1436:                                      ; preds = %for.body1421, %if.then1426
  %count1399.1 = phi i32 [ %inc1434, %if.then1426 ], [ %count1399.04516, %for.body1421 ]
  %mm.84 = phi i32 [ %inc1433, %if.then1426 ], [ %mm.834518, %for.body1421 ]
  %inc1437 = add nsw i32 %jj1403.04517, 1
  %exitcond5043 = icmp eq i32 %inc1437, %4
  br i1 %exitcond5043, label %for.end1439, label %for.body1421

for.end1439:                                      ; preds = %for.inc1436, %for.body1416
  %mm.83.lcssa = phi i32 [ %mm.824527, %for.body1416 ], [ %mm.84, %for.inc1436 ]
  %count1399.0.lcssa = phi i32 [ 0, %for.body1416 ], [ %count1399.1, %for.inc1436 ]
  %add1440 = add nsw i32 %stride1407.04526, %kstart1405.04525
  %dec1441 = add nsw i32 %stride1407.04526, -1
  %arrayidx1443 = getelementptr inbounds i32* %sizes, i64 %indvars.iv5044
  store i32 %count1399.0.lcssa, i32* %arrayidx1443, align 4, !tbaa !3
  %exitcond5047 = icmp eq i32 %255, %4
  br i1 %exitcond5047, label %sw.epilog2477, label %for.body1416

if.else1447:                                      ; preds = %if.then1410
  %cmp1449 = icmp eq i32 %254, 2
  %cmp14524538 = icmp sgt i32 %4, 0
  %or.cond5222 = and i1 %cmp1449, %cmp14524538
  br i1 %or.cond5222, label %for.body1453, label %sw.epilog2477

for.body1453:                                     ; preds = %if.else1447, %for.end1491
  %indvars.iv5052 = phi i64 [ %indvars.iv.next5053, %for.end1491 ], [ 0, %if.else1447 ]
  %mm.854542 = phi i32 [ %mm.86.lcssa, %for.end1491 ], [ 0, %if.else1447 ]
  %stride1407.14541 = phi i32 [ %dec1493, %for.end1491 ], [ %add17, %if.else1447 ]
  %kstart1405.14540 = phi i32 [ %add1492, %for.end1491 ], [ 0, %if.else1447 ]
  %ii1401.14539 = phi i32 [ %add1455, %for.end1491 ], [ 0, %if.else1447 ]
  %indvars.iv.next5053 = add i64 %indvars.iv5052, 1
  %add1455 = add nsw i32 %ii1401.14539, 1
  %257 = trunc i64 %indvars.iv.next5053 to i32
  %cmp14574530 = icmp slt i32 %257, %4
  br i1 %cmp14574530, label %for.body1458, label %for.end1491

for.body1458:                                     ; preds = %for.body1453, %for.inc1488
  %kk1404.14534.in = phi i32 [ %kk1404.14534, %for.inc1488 ], [ %kstart1405.14540, %for.body1453 ]
  %mm.864533 = phi i32 [ %mm.87, %for.inc1488 ], [ %mm.854542, %for.body1453 ]
  %jj1403.14532 = phi i32 [ %inc1489, %for.inc1488 ], [ %add1455, %for.body1453 ]
  %count1399.24531 = phi i32 [ %count1399.3, %for.inc1488 ], [ 0, %for.body1453 ]
  %kk1404.14534 = add nsw i32 %kk1404.14534.in, 1
  %mul1459 = shl nsw i32 %kk1404.14534, 1
  %idxprom1460 = sext i32 %mul1459 to i64
  %arrayidx1461 = getelementptr inbounds double* %call18, i64 %idxprom1460
  %258 = load double* %arrayidx1461, align 8, !tbaa !4
  %add14634075 = or i32 %mul1459, 1
  %idxprom1464 = sext i32 %add14634075 to i64
  %arrayidx1465 = getelementptr inbounds double* %call18, i64 %idxprom1464
  %259 = load double* %arrayidx1465, align 8, !tbaa !4
  %call1466 = tail call double @Zabs(double %258, double %259) #5
  %cmp1467 = fcmp ult double %call1466, %droptol
  br i1 %cmp1467, label %for.inc1488, label %if.then1468

if.then1468:                                      ; preds = %for.body1458
  %idxprom1469 = sext i32 %mm.864533 to i64
  %arrayidx1470 = getelementptr inbounds i32* %ivec, i64 %idxprom1469
  store i32 %jj1403.14532, i32* %arrayidx1470, align 4, !tbaa !3
  %260 = load double* %arrayidx1461, align 8, !tbaa !4
  %mul1474 = shl nsw i32 %mm.864533, 1
  %idxprom1475 = sext i32 %mul1474 to i64
  %arrayidx1476 = getelementptr inbounds double* %dvec, i64 %idxprom1475
  store double %260, double* %arrayidx1476, align 8, !tbaa !4
  %261 = load double* %arrayidx1465, align 8, !tbaa !4
  %add14824076 = or i32 %mul1474, 1
  %idxprom1483 = sext i32 %add14824076 to i64
  %arrayidx1484 = getelementptr inbounds double* %dvec, i64 %idxprom1483
  store double %261, double* %arrayidx1484, align 8, !tbaa !4
  %inc1485 = add nsw i32 %mm.864533, 1
  %inc1486 = add nsw i32 %count1399.24531, 1
  br label %for.inc1488

for.inc1488:                                      ; preds = %for.body1458, %if.then1468
  %count1399.3 = phi i32 [ %inc1486, %if.then1468 ], [ %count1399.24531, %for.body1458 ]
  %mm.87 = phi i32 [ %inc1485, %if.then1468 ], [ %mm.864533, %for.body1458 ]
  %inc1489 = add nsw i32 %jj1403.14532, 1
  %exitcond5051 = icmp eq i32 %inc1489, %4
  br i1 %exitcond5051, label %for.end1491, label %for.body1458

for.end1491:                                      ; preds = %for.inc1488, %for.body1453
  %mm.86.lcssa = phi i32 [ %mm.854542, %for.body1453 ], [ %mm.87, %for.inc1488 ]
  %count1399.2.lcssa = phi i32 [ 0, %for.body1453 ], [ %count1399.3, %for.inc1488 ]
  %add1492 = add nsw i32 %stride1407.14541, %kstart1405.14540
  %dec1493 = add nsw i32 %stride1407.14541, -1
  %arrayidx1495 = getelementptr inbounds i32* %sizes, i64 %indvars.iv5052
  store i32 %count1399.2.lcssa, i32* %arrayidx1495, align 4, !tbaa !3
  %exitcond5055 = icmp eq i32 %257, %4
  br i1 %exitcond5055, label %sw.epilog2477, label %for.body1453

if.else1501:                                      ; preds = %if.then1398
  br i1 %cmp1412, label %for.cond1505.preheader, label %if.else1551

for.cond1505.preheader:                           ; preds = %if.else1501
  %cmp15064561 = icmp sgt i32 %npivot, 0
  br i1 %cmp15064561, label %for.body1507, label %sw.epilog2477

for.body1507:                                     ; preds = %for.cond1505.preheader, %for.end1546
  %indvars.iv5067 = phi i64 [ %indvars.iv.next5068, %for.end1546 ], [ 0, %for.cond1505.preheader ]
  %mm.884566 = phi i32 [ %mm.89.lcssa, %for.end1546 ], [ 0, %for.cond1505.preheader ]
  %stride1407.24565 = phi i32 [ %stride1407.3.lcssa, %for.end1546 ], [ %add17, %for.cond1505.preheader ]
  %kstart1405.24564 = phi i32 [ %kstart1405.3.lcssa, %for.end1546 ], [ 0, %for.cond1505.preheader ]
  %first1400.04562 = phi i32 [ %add1510, %for.end1546 ], [ 0, %for.cond1505.preheader ]
  %arrayidx1509 = getelementptr inbounds i32* %pivotsizes, i64 %indvars.iv5067
  %262 = load i32* %arrayidx1509, align 4, !tbaa !3
  %add1510 = add nsw i32 %262, %first1400.04562
  %sub1511 = add nsw i32 %add1510, -1
  %cmp15134552 = icmp sgt i32 %first1400.04562, %sub1511
  br i1 %cmp15134552, label %for.end1546, label %for.body1514.lr.ph

for.body1514.lr.ph:                               ; preds = %for.body1507
  %cmp15204545 = icmp slt i32 %add1510, %4
  %263 = sext i32 %first1400.04562 to i64
  %264 = add i32 %first1400.04562, -1
  %265 = add i32 %264, %stride1407.24565
  %266 = add i32 %264, %262
  %267 = icmp sgt i32 %first1400.04562, %266
  %smax5066 = select i1 %267, i32 %first1400.04562, i32 %266
  %268 = sub i32 %265, %smax5066
  %269 = sub i32 %smax5066, %first1400.04562
  %270 = add i32 %stride1407.24565, -1
  %271 = mul i32 %269, %270
  %272 = zext i32 %269 to i33
  %273 = add i32 %smax5066, -1
  %274 = sub i32 %273, %first1400.04562
  %275 = zext i32 %274 to i33
  %276 = mul i33 %272, %275
  %277 = lshr i33 %276, 1
  %278 = trunc i33 %277 to i32
  br label %for.body1514

for.body1514:                                     ; preds = %for.end1539, %for.body1514.lr.ph
  %indvars.iv5064 = phi i64 [ %indvars.iv.next5065, %for.end1539 ], [ %263, %for.body1514.lr.ph ]
  %mm.894556 = phi i32 [ %mm.90.lcssa, %for.end1539 ], [ %mm.884566, %for.body1514.lr.ph ]
  %stride1407.34555 = phi i32 [ %dec1541, %for.end1539 ], [ %stride1407.24565, %for.body1514.lr.ph ]
  %kstart1405.34554 = phi i32 [ %add1540, %for.end1539 ], [ %kstart1405.24564, %for.body1514.lr.ph ]
  %279 = trunc i64 %indvars.iv5064 to i32
  br i1 %cmp15204545, label %for.body1521.lr.ph, label %for.end1539

for.body1521.lr.ph:                               ; preds = %for.body1514
  %add1515 = sub i32 %sub1511, %279
  %sub1516 = add i32 %add1515, %kstart1405.34554
  br label %for.body1521

for.body1521:                                     ; preds = %for.inc1536, %for.body1521.lr.ph
  %kk1404.24549.in = phi i32 [ %sub1516, %for.body1521.lr.ph ], [ %kk1404.24549, %for.inc1536 ]
  %mm.904548 = phi i32 [ %mm.894556, %for.body1521.lr.ph ], [ %mm.91, %for.inc1536 ]
  %jj1403.24547 = phi i32 [ %add1510, %for.body1521.lr.ph ], [ %inc1537, %for.inc1536 ]
  %count1399.44546 = phi i32 [ 0, %for.body1521.lr.ph ], [ %count1399.5, %for.inc1536 ]
  %kk1404.24549 = add nsw i32 %kk1404.24549.in, 1
  %idxprom1522 = sext i32 %kk1404.24549 to i64
  %arrayidx1523 = getelementptr inbounds double* %call18, i64 %idxprom1522
  %280 = load double* %arrayidx1523, align 8, !tbaa !4
  %call1524 = tail call double @fabs(double %280) #7
  %cmp1525 = fcmp ult double %call1524, %droptol
  br i1 %cmp1525, label %for.inc1536, label %if.then1526

if.then1526:                                      ; preds = %for.body1521
  %idxprom1527 = sext i32 %mm.904548 to i64
  %arrayidx1528 = getelementptr inbounds i32* %ivec, i64 %idxprom1527
  store i32 %jj1403.24547, i32* %arrayidx1528, align 4, !tbaa !3
  %arrayidx1532 = getelementptr inbounds double* %dvec, i64 %idxprom1527
  store double %280, double* %arrayidx1532, align 8, !tbaa !4
  %inc1533 = add nsw i32 %mm.904548, 1
  %inc1534 = add nsw i32 %count1399.44546, 1
  br label %for.inc1536

for.inc1536:                                      ; preds = %for.body1521, %if.then1526
  %count1399.5 = phi i32 [ %inc1534, %if.then1526 ], [ %count1399.44546, %for.body1521 ]
  %mm.91 = phi i32 [ %inc1533, %if.then1526 ], [ %mm.904548, %for.body1521 ]
  %inc1537 = add nsw i32 %jj1403.24547, 1
  %exitcond5063 = icmp eq i32 %inc1537, %4
  br i1 %exitcond5063, label %for.end1539, label %for.body1521

for.end1539:                                      ; preds = %for.body1514, %for.inc1536
  %mm.90.lcssa = phi i32 [ %mm.91, %for.inc1536 ], [ %mm.894556, %for.body1514 ]
  %count1399.4.lcssa = phi i32 [ %count1399.5, %for.inc1536 ], [ 0, %for.body1514 ]
  %add1540 = add nsw i32 %stride1407.34555, %kstart1405.34554
  %dec1541 = add nsw i32 %stride1407.34555, -1
  %arrayidx1543 = getelementptr inbounds i32* %sizes, i64 %indvars.iv5064
  store i32 %count1399.4.lcssa, i32* %arrayidx1543, align 4, !tbaa !3
  %indvars.iv.next5065 = add i64 %indvars.iv5064, 1
  %cmp1513 = icmp slt i32 %279, %sub1511
  br i1 %cmp1513, label %for.body1514, label %for.cond1512.for.end1546_crit_edge

for.cond1512.for.end1546_crit_edge:               ; preds = %for.end1539
  %281 = add i32 %kstart1405.24564, %stride1407.24565
  %282 = add i32 %281, %271
  %283 = sub i32 %282, %278
  br label %for.end1546

for.end1546:                                      ; preds = %for.cond1512.for.end1546_crit_edge, %for.body1507
  %mm.89.lcssa = phi i32 [ %mm.90.lcssa, %for.cond1512.for.end1546_crit_edge ], [ %mm.884566, %for.body1507 ]
  %stride1407.3.lcssa = phi i32 [ %268, %for.cond1512.for.end1546_crit_edge ], [ %stride1407.24565, %for.body1507 ]
  %kstart1405.3.lcssa = phi i32 [ %283, %for.cond1512.for.end1546_crit_edge ], [ %kstart1405.24564, %for.body1507 ]
  %indvars.iv.next5068 = add i64 %indvars.iv5067, 1
  %lftr.wideiv5069 = trunc i64 %indvars.iv.next5068 to i32
  %exitcond5070 = icmp eq i32 %lftr.wideiv5069, %npivot
  br i1 %exitcond5070, label %sw.epilog2477, label %for.body1507

if.else1551:                                      ; preds = %if.else1501
  %cmp1553 = icmp eq i32 %254, 2
  %cmp15564585 = icmp sgt i32 %npivot, 0
  %or.cond5223 = and i1 %cmp1553, %cmp15564585
  br i1 %or.cond5223, label %for.body1557, label %sw.epilog2477

for.body1557:                                     ; preds = %if.else1551, %for.end1611
  %indvars.iv5082 = phi i64 [ %indvars.iv.next5083, %for.end1611 ], [ 0, %if.else1551 ]
  %mm.924590 = phi i32 [ %mm.93.lcssa, %for.end1611 ], [ 0, %if.else1551 ]
  %stride1407.44589 = phi i32 [ %stride1407.5.lcssa, %for.end1611 ], [ %add17, %if.else1551 ]
  %kstart1405.44588 = phi i32 [ %kstart1405.5.lcssa, %for.end1611 ], [ 0, %if.else1551 ]
  %first1400.14586 = phi i32 [ %add1560, %for.end1611 ], [ 0, %if.else1551 ]
  %arrayidx1559 = getelementptr inbounds i32* %pivotsizes, i64 %indvars.iv5082
  %284 = load i32* %arrayidx1559, align 4, !tbaa !3
  %add1560 = add nsw i32 %284, %first1400.14586
  %sub1561 = add nsw i32 %add1560, -1
  %cmp15634576 = icmp sgt i32 %first1400.14586, %sub1561
  br i1 %cmp15634576, label %for.end1611, label %for.body1564.lr.ph

for.body1564.lr.ph:                               ; preds = %for.body1557
  %cmp15704569 = icmp slt i32 %add1560, %4
  %285 = sext i32 %first1400.14586 to i64
  %286 = add i32 %first1400.14586, -1
  %287 = add i32 %286, %stride1407.44589
  %288 = add i32 %286, %284
  %289 = icmp sgt i32 %first1400.14586, %288
  %smax5081 = select i1 %289, i32 %first1400.14586, i32 %288
  %290 = sub i32 %287, %smax5081
  %291 = sub i32 %smax5081, %first1400.14586
  %292 = add i32 %stride1407.44589, -1
  %293 = mul i32 %291, %292
  %294 = zext i32 %291 to i33
  %295 = add i32 %smax5081, -1
  %296 = sub i32 %295, %first1400.14586
  %297 = zext i32 %296 to i33
  %298 = mul i33 %294, %297
  %299 = lshr i33 %298, 1
  %300 = trunc i33 %299 to i32
  br label %for.body1564

for.body1564:                                     ; preds = %for.end1604, %for.body1564.lr.ph
  %indvars.iv5079 = phi i64 [ %indvars.iv.next5080, %for.end1604 ], [ %285, %for.body1564.lr.ph ]
  %mm.934580 = phi i32 [ %mm.94.lcssa, %for.end1604 ], [ %mm.924590, %for.body1564.lr.ph ]
  %stride1407.54579 = phi i32 [ %dec1606, %for.end1604 ], [ %stride1407.44589, %for.body1564.lr.ph ]
  %kstart1405.54578 = phi i32 [ %add1605, %for.end1604 ], [ %kstart1405.44588, %for.body1564.lr.ph ]
  %301 = trunc i64 %indvars.iv5079 to i32
  br i1 %cmp15704569, label %for.body1571.lr.ph, label %for.end1604

for.body1571.lr.ph:                               ; preds = %for.body1564
  %add1565 = sub i32 %sub1561, %301
  %sub1566 = add i32 %add1565, %kstart1405.54578
  br label %for.body1571

for.body1571:                                     ; preds = %for.inc1601, %for.body1571.lr.ph
  %kk1404.34573.in = phi i32 [ %sub1566, %for.body1571.lr.ph ], [ %kk1404.34573, %for.inc1601 ]
  %mm.944572 = phi i32 [ %mm.934580, %for.body1571.lr.ph ], [ %mm.95, %for.inc1601 ]
  %jj1403.34571 = phi i32 [ %add1560, %for.body1571.lr.ph ], [ %inc1602, %for.inc1601 ]
  %count1399.64570 = phi i32 [ 0, %for.body1571.lr.ph ], [ %count1399.7, %for.inc1601 ]
  %kk1404.34573 = add nsw i32 %kk1404.34573.in, 1
  %mul1572 = shl nsw i32 %kk1404.34573, 1
  %idxprom1573 = sext i32 %mul1572 to i64
  %arrayidx1574 = getelementptr inbounds double* %call18, i64 %idxprom1573
  %302 = load double* %arrayidx1574, align 8, !tbaa !4
  %add15764073 = or i32 %mul1572, 1
  %idxprom1577 = sext i32 %add15764073 to i64
  %arrayidx1578 = getelementptr inbounds double* %call18, i64 %idxprom1577
  %303 = load double* %arrayidx1578, align 8, !tbaa !4
  %call1579 = tail call double @Zabs(double %302, double %303) #5
  %cmp1580 = fcmp ult double %call1579, %droptol
  br i1 %cmp1580, label %for.inc1601, label %if.then1581

if.then1581:                                      ; preds = %for.body1571
  %idxprom1582 = sext i32 %mm.944572 to i64
  %arrayidx1583 = getelementptr inbounds i32* %ivec, i64 %idxprom1582
  store i32 %jj1403.34571, i32* %arrayidx1583, align 4, !tbaa !3
  %304 = load double* %arrayidx1574, align 8, !tbaa !4
  %mul1587 = shl nsw i32 %mm.944572, 1
  %idxprom1588 = sext i32 %mul1587 to i64
  %arrayidx1589 = getelementptr inbounds double* %dvec, i64 %idxprom1588
  store double %304, double* %arrayidx1589, align 8, !tbaa !4
  %305 = load double* %arrayidx1578, align 8, !tbaa !4
  %add15954074 = or i32 %mul1587, 1
  %idxprom1596 = sext i32 %add15954074 to i64
  %arrayidx1597 = getelementptr inbounds double* %dvec, i64 %idxprom1596
  store double %305, double* %arrayidx1597, align 8, !tbaa !4
  %inc1598 = add nsw i32 %mm.944572, 1
  %inc1599 = add nsw i32 %count1399.64570, 1
  br label %for.inc1601

for.inc1601:                                      ; preds = %for.body1571, %if.then1581
  %count1399.7 = phi i32 [ %inc1599, %if.then1581 ], [ %count1399.64570, %for.body1571 ]
  %mm.95 = phi i32 [ %inc1598, %if.then1581 ], [ %mm.944572, %for.body1571 ]
  %inc1602 = add nsw i32 %jj1403.34571, 1
  %exitcond5078 = icmp eq i32 %inc1602, %4
  br i1 %exitcond5078, label %for.end1604, label %for.body1571

for.end1604:                                      ; preds = %for.body1564, %for.inc1601
  %mm.94.lcssa = phi i32 [ %mm.95, %for.inc1601 ], [ %mm.934580, %for.body1564 ]
  %count1399.6.lcssa = phi i32 [ %count1399.7, %for.inc1601 ], [ 0, %for.body1564 ]
  %add1605 = add nsw i32 %stride1407.54579, %kstart1405.54578
  %dec1606 = add nsw i32 %stride1407.54579, -1
  %arrayidx1608 = getelementptr inbounds i32* %sizes, i64 %indvars.iv5079
  store i32 %count1399.6.lcssa, i32* %arrayidx1608, align 4, !tbaa !3
  %indvars.iv.next5080 = add i64 %indvars.iv5079, 1
  %cmp1563 = icmp slt i32 %301, %sub1561
  br i1 %cmp1563, label %for.body1564, label %for.cond1562.for.end1611_crit_edge

for.cond1562.for.end1611_crit_edge:               ; preds = %for.end1604
  %306 = add i32 %kstart1405.44588, %stride1407.44589
  %307 = add i32 %306, %293
  %308 = sub i32 %307, %300
  br label %for.end1611

for.end1611:                                      ; preds = %for.cond1562.for.end1611_crit_edge, %for.body1557
  %mm.93.lcssa = phi i32 [ %mm.94.lcssa, %for.cond1562.for.end1611_crit_edge ], [ %mm.924590, %for.body1557 ]
  %stride1407.5.lcssa = phi i32 [ %290, %for.cond1562.for.end1611_crit_edge ], [ %stride1407.44589, %for.body1557 ]
  %kstart1405.5.lcssa = phi i32 [ %308, %for.cond1562.for.end1611_crit_edge ], [ %kstart1405.44588, %for.body1557 ]
  %indvars.iv.next5083 = add i64 %indvars.iv5082, 1
  %lftr.wideiv5084 = trunc i64 %indvars.iv.next5083 to i32
  %exitcond5085 = icmp eq i32 %lftr.wideiv5084, %npivot
  br i1 %exitcond5085, label %sw.epilog2477, label %for.body1557

if.else1619:                                      ; preds = %sw.bb1392
  %sub1627 = add nsw i32 %add, -1
  %mul1628 = shl i32 %4, 1
  %add1629 = add i32 %5, -2
  %add1630 = add i32 %add1629, %mul1628
  %sub1631 = add i32 %add1630, %6
  %type1632 = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 4
  %309 = load i32* %type1632, align 4, !tbaa !3
  switch i32 %309, label %sw.epilog2477 [
    i32 1, label %for.cond1635.preheader
    i32 2, label %for.cond1672.preheader
  ]

for.cond1672.preheader:                           ; preds = %if.else1619
  %cmp16734616 = icmp sgt i32 %4, 0
  br i1 %cmp16734616, label %for.body1674, label %sw.epilog2477

for.cond1635.preheader:                           ; preds = %if.else1619
  %cmp16364601 = icmp sgt i32 %4, 0
  br i1 %cmp16364601, label %for.body1637, label %sw.epilog2477

for.body1637:                                     ; preds = %for.cond1635.preheader, %for.end1660
  %indvars.iv5090 = phi i64 [ %indvars.iv.next5091, %for.end1660 ], [ 0, %for.cond1635.preheader ]
  %mm.964605 = phi i32 [ %mm.97.lcssa, %for.end1660 ], [ 0, %for.cond1635.preheader ]
  %stride1625.04604 = phi i32 [ %sub1662, %for.end1660 ], [ %sub1631, %for.cond1635.preheader ]
  %kstart1624.04603 = phi i32 [ %add1661, %for.end1660 ], [ %sub1627, %for.cond1635.preheader ]
  %ii1621.04602 = phi i32 [ %add1639, %for.end1660 ], [ 0, %for.cond1635.preheader ]
  %indvars.iv.next5091 = add i64 %indvars.iv5090, 1
  %add1639 = add nsw i32 %ii1621.04602, 1
  %310 = trunc i64 %indvars.iv.next5091 to i32
  %cmp16414593 = icmp slt i32 %310, %4
  br i1 %cmp16414593, label %for.body1642, label %for.end1660

for.body1642:                                     ; preds = %for.body1637, %for.inc1657
  %kk1623.04597.in = phi i32 [ %kk1623.04597, %for.inc1657 ], [ %kstart1624.04603, %for.body1637 ]
  %mm.974596 = phi i32 [ %mm.98, %for.inc1657 ], [ %mm.964605, %for.body1637 ]
  %jj1622.04595 = phi i32 [ %inc1658, %for.inc1657 ], [ %add1639, %for.body1637 ]
  %count1620.04594 = phi i32 [ %count1620.1, %for.inc1657 ], [ 0, %for.body1637 ]
  %kk1623.04597 = add nsw i32 %kk1623.04597.in, 1
  %idxprom1643 = sext i32 %kk1623.04597 to i64
  %arrayidx1644 = getelementptr inbounds double* %call18, i64 %idxprom1643
  %311 = load double* %arrayidx1644, align 8, !tbaa !4
  %call1645 = tail call double @fabs(double %311) #7
  %cmp1646 = fcmp ult double %call1645, %droptol
  br i1 %cmp1646, label %for.inc1657, label %if.then1647

if.then1647:                                      ; preds = %for.body1642
  %idxprom1648 = sext i32 %mm.974596 to i64
  %arrayidx1649 = getelementptr inbounds i32* %ivec, i64 %idxprom1648
  store i32 %jj1622.04595, i32* %arrayidx1649, align 4, !tbaa !3
  %arrayidx1653 = getelementptr inbounds double* %dvec, i64 %idxprom1648
  store double %311, double* %arrayidx1653, align 8, !tbaa !4
  %inc1654 = add nsw i32 %mm.974596, 1
  %inc1655 = add nsw i32 %count1620.04594, 1
  br label %for.inc1657

for.inc1657:                                      ; preds = %for.body1642, %if.then1647
  %count1620.1 = phi i32 [ %inc1655, %if.then1647 ], [ %count1620.04594, %for.body1642 ]
  %mm.98 = phi i32 [ %inc1654, %if.then1647 ], [ %mm.974596, %for.body1642 ]
  %inc1658 = add nsw i32 %jj1622.04595, 1
  %exitcond5089 = icmp eq i32 %inc1658, %4
  br i1 %exitcond5089, label %for.end1660, label %for.body1642

for.end1660:                                      ; preds = %for.inc1657, %for.body1637
  %mm.97.lcssa = phi i32 [ %mm.964605, %for.body1637 ], [ %mm.98, %for.inc1657 ]
  %count1620.0.lcssa = phi i32 [ 0, %for.body1637 ], [ %count1620.1, %for.inc1657 ]
  %add1661 = add nsw i32 %stride1625.04604, %kstart1624.04603
  %sub1662 = add nsw i32 %stride1625.04604, -2
  %arrayidx1664 = getelementptr inbounds i32* %sizes, i64 %indvars.iv5090
  store i32 %count1620.0.lcssa, i32* %arrayidx1664, align 4, !tbaa !3
  %exitcond5093 = icmp eq i32 %310, %4
  br i1 %exitcond5093, label %sw.epilog2477, label %for.body1637

for.body1674:                                     ; preds = %for.cond1672.preheader, %for.end1712
  %indvars.iv5098 = phi i64 [ %indvars.iv.next5099, %for.end1712 ], [ 0, %for.cond1672.preheader ]
  %mm.994620 = phi i32 [ %mm.100.lcssa, %for.end1712 ], [ 0, %for.cond1672.preheader ]
  %stride1625.14619 = phi i32 [ %sub1714, %for.end1712 ], [ %sub1631, %for.cond1672.preheader ]
  %kstart1624.14618 = phi i32 [ %add1713, %for.end1712 ], [ %sub1627, %for.cond1672.preheader ]
  %ii1621.14617 = phi i32 [ %add1676, %for.end1712 ], [ 0, %for.cond1672.preheader ]
  %indvars.iv.next5099 = add i64 %indvars.iv5098, 1
  %add1676 = add nsw i32 %ii1621.14617, 1
  %312 = trunc i64 %indvars.iv.next5099 to i32
  %cmp16784608 = icmp slt i32 %312, %4
  br i1 %cmp16784608, label %for.body1679, label %for.end1712

for.body1679:                                     ; preds = %for.body1674, %for.inc1709
  %kk1623.14612.in = phi i32 [ %kk1623.14612, %for.inc1709 ], [ %kstart1624.14618, %for.body1674 ]
  %mm.1004611 = phi i32 [ %mm.101, %for.inc1709 ], [ %mm.994620, %for.body1674 ]
  %jj1622.14610 = phi i32 [ %inc1710, %for.inc1709 ], [ %add1676, %for.body1674 ]
  %count1620.24609 = phi i32 [ %count1620.3, %for.inc1709 ], [ 0, %for.body1674 ]
  %kk1623.14612 = add nsw i32 %kk1623.14612.in, 1
  %mul1680 = shl nsw i32 %kk1623.14612, 1
  %idxprom1681 = sext i32 %mul1680 to i64
  %arrayidx1682 = getelementptr inbounds double* %call18, i64 %idxprom1681
  %313 = load double* %arrayidx1682, align 8, !tbaa !4
  %add16844071 = or i32 %mul1680, 1
  %idxprom1685 = sext i32 %add16844071 to i64
  %arrayidx1686 = getelementptr inbounds double* %call18, i64 %idxprom1685
  %314 = load double* %arrayidx1686, align 8, !tbaa !4
  %call1687 = tail call double @Zabs(double %313, double %314) #5
  %cmp1688 = fcmp ult double %call1687, %droptol
  br i1 %cmp1688, label %for.inc1709, label %if.then1689

if.then1689:                                      ; preds = %for.body1679
  %idxprom1690 = sext i32 %mm.1004611 to i64
  %arrayidx1691 = getelementptr inbounds i32* %ivec, i64 %idxprom1690
  store i32 %jj1622.14610, i32* %arrayidx1691, align 4, !tbaa !3
  %315 = load double* %arrayidx1682, align 8, !tbaa !4
  %mul1695 = shl nsw i32 %mm.1004611, 1
  %idxprom1696 = sext i32 %mul1695 to i64
  %arrayidx1697 = getelementptr inbounds double* %dvec, i64 %idxprom1696
  store double %315, double* %arrayidx1697, align 8, !tbaa !4
  %316 = load double* %arrayidx1686, align 8, !tbaa !4
  %add17034072 = or i32 %mul1695, 1
  %idxprom1704 = sext i32 %add17034072 to i64
  %arrayidx1705 = getelementptr inbounds double* %dvec, i64 %idxprom1704
  store double %316, double* %arrayidx1705, align 8, !tbaa !4
  %inc1706 = add nsw i32 %mm.1004611, 1
  %inc1707 = add nsw i32 %count1620.24609, 1
  br label %for.inc1709

for.inc1709:                                      ; preds = %for.body1679, %if.then1689
  %count1620.3 = phi i32 [ %inc1707, %if.then1689 ], [ %count1620.24609, %for.body1679 ]
  %mm.101 = phi i32 [ %inc1706, %if.then1689 ], [ %mm.1004611, %for.body1679 ]
  %inc1710 = add nsw i32 %jj1622.14610, 1
  %exitcond5097 = icmp eq i32 %inc1710, %4
  br i1 %exitcond5097, label %for.end1712, label %for.body1679

for.end1712:                                      ; preds = %for.inc1709, %for.body1674
  %mm.100.lcssa = phi i32 [ %mm.994620, %for.body1674 ], [ %mm.101, %for.inc1709 ]
  %count1620.2.lcssa = phi i32 [ 0, %for.body1674 ], [ %count1620.3, %for.inc1709 ]
  %add1713 = add nsw i32 %stride1625.14619, %kstart1624.14618
  %sub1714 = add nsw i32 %stride1625.14619, -2
  %arrayidx1716 = getelementptr inbounds i32* %sizes, i64 %indvars.iv5098
  store i32 %count1620.2.lcssa, i32* %arrayidx1716, align 4, !tbaa !3
  %exitcond5101 = icmp eq i32 %312, %4
  br i1 %exitcond5101, label %sw.epilog2477, label %for.body1674

sw.bb1723:                                        ; preds = %sw.bb1391
  %317 = load i32* %symflag16, align 4, !tbaa !3
  %switch4107 = icmp ult i32 %317, 2
  br i1 %switch4107, label %if.then1729, label %if.else1955

if.then1729:                                      ; preds = %sw.bb1723
  %cmp1743 = icmp eq i32* %pivotsizes, null
  %type1745 = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 4
  %318 = load i32* %type1745, align 4, !tbaa !3
  %cmp1746 = icmp eq i32 %318, 1
  br i1 %cmp1743, label %if.then1744, label %if.else1845

if.then1744:                                      ; preds = %if.then1729
  br i1 %cmp1746, label %for.cond1748.preheader, label %if.else1786

for.cond1748.preheader:                           ; preds = %if.then1744
  %cmp17494631 = icmp sgt i32 %4, 0
  br i1 %cmp17494631, label %for.body1750.lr.ph, label %sw.epilog2477

for.body1750.lr.ph:                               ; preds = %for.cond1748.preheader
  %319 = add i32 %add17, -1
  %320 = sext i32 %319 to i64
  br label %for.body1750

for.body1750:                                     ; preds = %for.end1779, %for.body1750.lr.ph
  %indvars.iv5105 = phi i64 [ 0, %for.body1750.lr.ph ], [ %indvars.iv.next5106, %for.end1779 ]
  %mm.1024634 = phi i32 [ 0, %for.body1750.lr.ph ], [ %mm.103.lcssa, %for.end1779 ]
  %kstart1738.04633 = phi i32 [ 0, %for.body1750.lr.ph ], [ %inc1780, %for.end1779 ]
  %321 = add nsw i64 %indvars.iv5105, 4294967295
  %322 = trunc i64 %indvars.iv5105 to i32
  %cmp17594622 = icmp slt i32 %322, 1
  br i1 %cmp17594622, label %for.end1779, label %for.body1760

for.body1760:                                     ; preds = %for.body1750, %if.end1774
  %indvars.iv5102 = phi i64 [ %indvars.iv.next5103, %if.end1774 ], [ %320, %for.body1750 ]
  %mm.1034627 = phi i32 [ %mm.104, %if.end1774 ], [ %mm.1024634, %for.body1750 ]
  %kk1737.04626 = phi i32 [ %add1775, %if.end1774 ], [ %kstart1738.04633, %for.body1750 ]
  %ii1732.04624 = phi i32 [ %inc1778, %if.end1774 ], [ 0, %for.body1750 ]
  %count1730.04623 = phi i32 [ %count1730.1, %if.end1774 ], [ 0, %for.body1750 ]
  %idxprom1761 = sext i32 %kk1737.04626 to i64
  %arrayidx1762 = getelementptr inbounds double* %call18, i64 %idxprom1761
  %323 = load double* %arrayidx1762, align 8, !tbaa !4
  %call1763 = tail call double @fabs(double %323) #7
  %cmp1764 = fcmp ult double %call1763, %droptol
  br i1 %cmp1764, label %if.end1774, label %if.then1765

if.then1765:                                      ; preds = %for.body1760
  %idxprom1766 = sext i32 %mm.1034627 to i64
  %arrayidx1767 = getelementptr inbounds i32* %ivec, i64 %idxprom1766
  store i32 %ii1732.04624, i32* %arrayidx1767, align 4, !tbaa !3
  %arrayidx1771 = getelementptr inbounds double* %dvec, i64 %idxprom1766
  store double %323, double* %arrayidx1771, align 8, !tbaa !4
  %inc1772 = add nsw i32 %mm.1034627, 1
  %inc1773 = add nsw i32 %count1730.04623, 1
  br label %if.end1774

if.end1774:                                       ; preds = %for.body1760, %if.then1765
  %count1730.1 = phi i32 [ %inc1773, %if.then1765 ], [ %count1730.04623, %for.body1760 ]
  %mm.104 = phi i32 [ %inc1772, %if.then1765 ], [ %mm.1034627, %for.body1760 ]
  %324 = trunc i64 %indvars.iv5102 to i32
  %add1775 = add nsw i32 %kk1737.04626, %324
  %inc1778 = add nsw i32 %ii1732.04624, 1
  %325 = trunc i64 %321 to i32
  %cmp1759 = icmp slt i32 %ii1732.04624, %325
  %indvars.iv.next5103 = add i64 %indvars.iv5102, -1
  br i1 %cmp1759, label %for.body1760, label %for.end1779

for.end1779:                                      ; preds = %if.end1774, %for.body1750
  %mm.103.lcssa = phi i32 [ %mm.1024634, %for.body1750 ], [ %mm.104, %if.end1774 ]
  %count1730.0.lcssa = phi i32 [ 0, %for.body1750 ], [ %count1730.1, %if.end1774 ]
  %inc1780 = add nsw i32 %kstart1738.04633, 1
  %arrayidx1782 = getelementptr inbounds i32* %sizes, i64 %indvars.iv5105
  store i32 %count1730.0.lcssa, i32* %arrayidx1782, align 4, !tbaa !3
  %indvars.iv.next5106 = add i64 %indvars.iv5105, 1
  %lftr.wideiv5108 = trunc i64 %indvars.iv.next5106 to i32
  %exitcond5109 = icmp eq i32 %lftr.wideiv5108, %4
  br i1 %exitcond5109, label %sw.epilog2477, label %for.body1750

if.else1786:                                      ; preds = %if.then1744
  %cmp1788 = icmp eq i32 %318, 2
  %cmp17914645 = icmp sgt i32 %4, 0
  %or.cond5224 = and i1 %cmp1788, %cmp17914645
  br i1 %or.cond5224, label %for.body1792.lr.ph, label %sw.epilog2477

for.body1792.lr.ph:                               ; preds = %if.else1786
  %326 = add i32 %add17, -1
  %327 = sext i32 %326 to i64
  br label %for.body1792

for.body1792:                                     ; preds = %for.end1836, %for.body1792.lr.ph
  %indvars.iv5113 = phi i64 [ 0, %for.body1792.lr.ph ], [ %indvars.iv.next5114, %for.end1836 ]
  %mm.1054648 = phi i32 [ 0, %for.body1792.lr.ph ], [ %mm.106.lcssa, %for.end1836 ]
  %kstart1738.14647 = phi i32 [ 0, %for.body1792.lr.ph ], [ %inc1837, %for.end1836 ]
  %328 = add nsw i64 %indvars.iv5113, 4294967295
  %329 = trunc i64 %indvars.iv5113 to i32
  %cmp18014636 = icmp slt i32 %329, 1
  br i1 %cmp18014636, label %for.end1836, label %for.body1802

for.body1802:                                     ; preds = %for.body1792, %if.end1831
  %indvars.iv5110 = phi i64 [ %indvars.iv.next5111, %if.end1831 ], [ %327, %for.body1792 ]
  %mm.1064641 = phi i32 [ %mm.107, %if.end1831 ], [ %mm.1054648, %for.body1792 ]
  %kk1737.14640 = phi i32 [ %add1832, %if.end1831 ], [ %kstart1738.14647, %for.body1792 ]
  %ii1732.14638 = phi i32 [ %inc1835, %if.end1831 ], [ 0, %for.body1792 ]
  %count1730.24637 = phi i32 [ %count1730.3, %if.end1831 ], [ 0, %for.body1792 ]
  %mul1803 = shl nsw i32 %kk1737.14640, 1
  %idxprom1804 = sext i32 %mul1803 to i64
  %arrayidx1805 = getelementptr inbounds double* %call18, i64 %idxprom1804
  %330 = load double* %arrayidx1805, align 8, !tbaa !4
  %add18074069 = or i32 %mul1803, 1
  %idxprom1808 = sext i32 %add18074069 to i64
  %arrayidx1809 = getelementptr inbounds double* %call18, i64 %idxprom1808
  %331 = load double* %arrayidx1809, align 8, !tbaa !4
  %call1810 = tail call double @Zabs(double %330, double %331) #5
  %cmp1811 = fcmp ult double %call1810, %droptol
  br i1 %cmp1811, label %if.end1831, label %if.then1812

if.then1812:                                      ; preds = %for.body1802
  %idxprom1813 = sext i32 %mm.1064641 to i64
  %arrayidx1814 = getelementptr inbounds i32* %ivec, i64 %idxprom1813
  store i32 %ii1732.14638, i32* %arrayidx1814, align 4, !tbaa !3
  %332 = load double* %arrayidx1805, align 8, !tbaa !4
  %mul1818 = shl nsw i32 %mm.1064641, 1
  %idxprom1819 = sext i32 %mul1818 to i64
  %arrayidx1820 = getelementptr inbounds double* %dvec, i64 %idxprom1819
  store double %332, double* %arrayidx1820, align 8, !tbaa !4
  %333 = load double* %arrayidx1809, align 8, !tbaa !4
  %add18264070 = or i32 %mul1818, 1
  %idxprom1827 = sext i32 %add18264070 to i64
  %arrayidx1828 = getelementptr inbounds double* %dvec, i64 %idxprom1827
  store double %333, double* %arrayidx1828, align 8, !tbaa !4
  %inc1829 = add nsw i32 %mm.1064641, 1
  %inc1830 = add nsw i32 %count1730.24637, 1
  br label %if.end1831

if.end1831:                                       ; preds = %for.body1802, %if.then1812
  %count1730.3 = phi i32 [ %inc1830, %if.then1812 ], [ %count1730.24637, %for.body1802 ]
  %mm.107 = phi i32 [ %inc1829, %if.then1812 ], [ %mm.1064641, %for.body1802 ]
  %334 = trunc i64 %indvars.iv5110 to i32
  %add1832 = add nsw i32 %kk1737.14640, %334
  %inc1835 = add nsw i32 %ii1732.14638, 1
  %335 = trunc i64 %328 to i32
  %cmp1801 = icmp slt i32 %ii1732.14638, %335
  %indvars.iv.next5111 = add i64 %indvars.iv5110, -1
  br i1 %cmp1801, label %for.body1802, label %for.end1836

for.end1836:                                      ; preds = %if.end1831, %for.body1792
  %mm.106.lcssa = phi i32 [ %mm.1054648, %for.body1792 ], [ %mm.107, %if.end1831 ]
  %count1730.2.lcssa = phi i32 [ 0, %for.body1792 ], [ %count1730.3, %if.end1831 ]
  %inc1837 = add nsw i32 %kstart1738.14647, 1
  %arrayidx1839 = getelementptr inbounds i32* %sizes, i64 %indvars.iv5113
  store i32 %count1730.2.lcssa, i32* %arrayidx1839, align 4, !tbaa !3
  %indvars.iv.next5114 = add i64 %indvars.iv5113, 1
  %lftr.wideiv5116 = trunc i64 %indvars.iv.next5114 to i32
  %exitcond5117 = icmp eq i32 %lftr.wideiv5116, %4
  br i1 %exitcond5117, label %sw.epilog2477, label %for.body1792

if.else1845:                                      ; preds = %if.then1729
  br i1 %cmp1746, label %for.cond1849.preheader, label %if.else1891

for.cond1849.preheader:                           ; preds = %if.else1845
  %cmp18504665 = icmp sgt i32 %npivot, 0
  br i1 %cmp18504665, label %for.body1851.lr.ph, label %sw.epilog2477

for.body1851.lr.ph:                               ; preds = %for.cond1849.preheader
  %336 = add i32 %add17, -1
  %337 = sext i32 %336 to i64
  br label %for.body1851

for.body1851:                                     ; preds = %for.end1886, %for.body1851.lr.ph
  %indvars.iv5125 = phi i64 [ 0, %for.body1851.lr.ph ], [ %indvars.iv.next5126, %for.end1886 ]
  %mm.1084669 = phi i32 [ 0, %for.body1851.lr.ph ], [ %mm.109.lcssa, %for.end1886 ]
  %kstart1738.24668 = phi i32 [ 0, %for.body1851.lr.ph ], [ %kstart1738.3.lcssa, %for.end1886 ]
  %first1731.04666 = phi i32 [ 0, %for.body1851.lr.ph ], [ %add1854, %for.end1886 ]
  %arrayidx1853 = getelementptr inbounds i32* %pivotsizes, i64 %indvars.iv5125
  %338 = load i32* %arrayidx1853, align 4, !tbaa !3
  %add1854 = add nsw i32 %338, %first1731.04666
  %sub1855 = add nsw i32 %add1854, -1
  %cmp18574658 = icmp sgt i32 %first1731.04666, %sub1855
  br i1 %cmp18574658, label %for.end1886, label %for.cond1859.preheader.lr.ph

for.cond1859.preheader.lr.ph:                     ; preds = %for.body1851
  %cmp18604650 = icmp sgt i32 %first1731.04666, 0
  %339 = sext i32 %first1731.04666 to i64
  %340 = add i32 %kstart1738.24668, 1
  %341 = add i32 %first1731.04666, -1
  %342 = add i32 %341, %338
  %343 = icmp sgt i32 %first1731.04666, %342
  %smax5124 = select i1 %343, i32 %first1731.04666, i32 %342
  %344 = add i32 %340, %smax5124
  br label %for.cond1859.preheader

for.cond1859.preheader:                           ; preds = %for.end1880, %for.cond1859.preheader.lr.ph
  %indvars.iv5122 = phi i64 [ %indvars.iv.next5123, %for.end1880 ], [ %339, %for.cond1859.preheader.lr.ph ]
  %mm.1094661 = phi i32 [ %mm.110.lcssa, %for.end1880 ], [ %mm.1084669, %for.cond1859.preheader.lr.ph ]
  %kstart1738.34660 = phi i32 [ %inc1881, %for.end1880 ], [ %kstart1738.24668, %for.cond1859.preheader.lr.ph ]
  br i1 %cmp18604650, label %for.body1861, label %for.end1880

for.body1861:                                     ; preds = %for.cond1859.preheader, %if.end1875
  %indvars.iv5118 = phi i64 [ %indvars.iv.next5119, %if.end1875 ], [ %337, %for.cond1859.preheader ]
  %mm.1104655 = phi i32 [ %mm.111, %if.end1875 ], [ %mm.1094661, %for.cond1859.preheader ]
  %kk1737.24654 = phi i32 [ %add1876, %if.end1875 ], [ %kstart1738.34660, %for.cond1859.preheader ]
  %ii1732.24652 = phi i32 [ %inc1879, %if.end1875 ], [ 0, %for.cond1859.preheader ]
  %count1730.44651 = phi i32 [ %count1730.5, %if.end1875 ], [ 0, %for.cond1859.preheader ]
  %idxprom1862 = sext i32 %kk1737.24654 to i64
  %arrayidx1863 = getelementptr inbounds double* %call18, i64 %idxprom1862
  %345 = load double* %arrayidx1863, align 8, !tbaa !4
  %call1864 = tail call double @fabs(double %345) #7
  %cmp1865 = fcmp ult double %call1864, %droptol
  br i1 %cmp1865, label %if.end1875, label %if.then1866

if.then1866:                                      ; preds = %for.body1861
  %idxprom1867 = sext i32 %mm.1104655 to i64
  %arrayidx1868 = getelementptr inbounds i32* %ivec, i64 %idxprom1867
  store i32 %ii1732.24652, i32* %arrayidx1868, align 4, !tbaa !3
  %arrayidx1872 = getelementptr inbounds double* %dvec, i64 %idxprom1867
  store double %345, double* %arrayidx1872, align 8, !tbaa !4
  %inc1873 = add nsw i32 %mm.1104655, 1
  %inc1874 = add nsw i32 %count1730.44651, 1
  br label %if.end1875

if.end1875:                                       ; preds = %for.body1861, %if.then1866
  %count1730.5 = phi i32 [ %inc1874, %if.then1866 ], [ %count1730.44651, %for.body1861 ]
  %mm.111 = phi i32 [ %inc1873, %if.then1866 ], [ %mm.1104655, %for.body1861 ]
  %346 = trunc i64 %indvars.iv5118 to i32
  %add1876 = add nsw i32 %kk1737.24654, %346
  %inc1879 = add nsw i32 %ii1732.24652, 1
  %indvars.iv.next5119 = add i64 %indvars.iv5118, -1
  %exitcond5121 = icmp eq i32 %inc1879, %first1731.04666
  br i1 %exitcond5121, label %for.end1880, label %for.body1861

for.end1880:                                      ; preds = %if.end1875, %for.cond1859.preheader
  %mm.110.lcssa = phi i32 [ %mm.1094661, %for.cond1859.preheader ], [ %mm.111, %if.end1875 ]
  %count1730.4.lcssa = phi i32 [ 0, %for.cond1859.preheader ], [ %count1730.5, %if.end1875 ]
  %inc1881 = add nsw i32 %kstart1738.34660, 1
  %arrayidx1883 = getelementptr inbounds i32* %sizes, i64 %indvars.iv5122
  store i32 %count1730.4.lcssa, i32* %arrayidx1883, align 4, !tbaa !3
  %indvars.iv.next5123 = add i64 %indvars.iv5122, 1
  %347 = trunc i64 %indvars.iv5122 to i32
  %cmp1857 = icmp slt i32 %347, %sub1855
  br i1 %cmp1857, label %for.cond1859.preheader, label %for.cond1856.for.end1886_crit_edge

for.cond1856.for.end1886_crit_edge:               ; preds = %for.end1880
  %348 = sub i32 %344, %first1731.04666
  br label %for.end1886

for.end1886:                                      ; preds = %for.cond1856.for.end1886_crit_edge, %for.body1851
  %mm.109.lcssa = phi i32 [ %mm.110.lcssa, %for.cond1856.for.end1886_crit_edge ], [ %mm.1084669, %for.body1851 ]
  %kstart1738.3.lcssa = phi i32 [ %348, %for.cond1856.for.end1886_crit_edge ], [ %kstart1738.24668, %for.body1851 ]
  %indvars.iv.next5126 = add i64 %indvars.iv5125, 1
  %lftr.wideiv5127 = trunc i64 %indvars.iv.next5126 to i32
  %exitcond5128 = icmp eq i32 %lftr.wideiv5127, %npivot
  br i1 %exitcond5128, label %sw.epilog2477, label %for.body1851

if.else1891:                                      ; preds = %if.else1845
  %cmp1893 = icmp eq i32 %318, 2
  %cmp18964686 = icmp sgt i32 %npivot, 0
  %or.cond5225 = and i1 %cmp1893, %cmp18964686
  br i1 %or.cond5225, label %for.body1897.lr.ph, label %sw.epilog2477

for.body1897.lr.ph:                               ; preds = %if.else1891
  %349 = add i32 %add17, -1
  %350 = sext i32 %349 to i64
  br label %for.body1897

for.body1897:                                     ; preds = %for.end1947, %for.body1897.lr.ph
  %indvars.iv5136 = phi i64 [ 0, %for.body1897.lr.ph ], [ %indvars.iv.next5137, %for.end1947 ]
  %mm.1124690 = phi i32 [ 0, %for.body1897.lr.ph ], [ %mm.113.lcssa, %for.end1947 ]
  %kstart1738.44689 = phi i32 [ 0, %for.body1897.lr.ph ], [ %kstart1738.5.lcssa, %for.end1947 ]
  %first1731.14687 = phi i32 [ 0, %for.body1897.lr.ph ], [ %add1900, %for.end1947 ]
  %arrayidx1899 = getelementptr inbounds i32* %pivotsizes, i64 %indvars.iv5136
  %351 = load i32* %arrayidx1899, align 4, !tbaa !3
  %add1900 = add nsw i32 %351, %first1731.14687
  %sub1901 = add nsw i32 %add1900, -1
  %cmp19034679 = icmp sgt i32 %first1731.14687, %sub1901
  br i1 %cmp19034679, label %for.end1947, label %for.cond1905.preheader.lr.ph

for.cond1905.preheader.lr.ph:                     ; preds = %for.body1897
  %cmp19064671 = icmp sgt i32 %first1731.14687, 0
  %352 = sext i32 %first1731.14687 to i64
  %353 = add i32 %kstart1738.44689, 1
  %354 = add i32 %first1731.14687, -1
  %355 = add i32 %354, %351
  %356 = icmp sgt i32 %first1731.14687, %355
  %smax5135 = select i1 %356, i32 %first1731.14687, i32 %355
  %357 = add i32 %353, %smax5135
  br label %for.cond1905.preheader

for.cond1905.preheader:                           ; preds = %for.end1941, %for.cond1905.preheader.lr.ph
  %indvars.iv5133 = phi i64 [ %indvars.iv.next5134, %for.end1941 ], [ %352, %for.cond1905.preheader.lr.ph ]
  %mm.1134682 = phi i32 [ %mm.114.lcssa, %for.end1941 ], [ %mm.1124690, %for.cond1905.preheader.lr.ph ]
  %kstart1738.54681 = phi i32 [ %inc1942, %for.end1941 ], [ %kstart1738.44689, %for.cond1905.preheader.lr.ph ]
  br i1 %cmp19064671, label %for.body1907, label %for.end1941

for.body1907:                                     ; preds = %for.cond1905.preheader, %if.end1936
  %indvars.iv5129 = phi i64 [ %indvars.iv.next5130, %if.end1936 ], [ %350, %for.cond1905.preheader ]
  %mm.1144676 = phi i32 [ %mm.115, %if.end1936 ], [ %mm.1134682, %for.cond1905.preheader ]
  %kk1737.34675 = phi i32 [ %add1937, %if.end1936 ], [ %kstart1738.54681, %for.cond1905.preheader ]
  %ii1732.34673 = phi i32 [ %inc1940, %if.end1936 ], [ 0, %for.cond1905.preheader ]
  %count1730.64672 = phi i32 [ %count1730.7, %if.end1936 ], [ 0, %for.cond1905.preheader ]
  %mul1908 = shl nsw i32 %kk1737.34675, 1
  %idxprom1909 = sext i32 %mul1908 to i64
  %arrayidx1910 = getelementptr inbounds double* %call18, i64 %idxprom1909
  %358 = load double* %arrayidx1910, align 8, !tbaa !4
  %add19124067 = or i32 %mul1908, 1
  %idxprom1913 = sext i32 %add19124067 to i64
  %arrayidx1914 = getelementptr inbounds double* %call18, i64 %idxprom1913
  %359 = load double* %arrayidx1914, align 8, !tbaa !4
  %call1915 = tail call double @Zabs(double %358, double %359) #5
  %cmp1916 = fcmp ult double %call1915, %droptol
  br i1 %cmp1916, label %if.end1936, label %if.then1917

if.then1917:                                      ; preds = %for.body1907
  %idxprom1918 = sext i32 %mm.1144676 to i64
  %arrayidx1919 = getelementptr inbounds i32* %ivec, i64 %idxprom1918
  store i32 %ii1732.34673, i32* %arrayidx1919, align 4, !tbaa !3
  %360 = load double* %arrayidx1910, align 8, !tbaa !4
  %mul1923 = shl nsw i32 %mm.1144676, 1
  %idxprom1924 = sext i32 %mul1923 to i64
  %arrayidx1925 = getelementptr inbounds double* %dvec, i64 %idxprom1924
  store double %360, double* %arrayidx1925, align 8, !tbaa !4
  %361 = load double* %arrayidx1914, align 8, !tbaa !4
  %add19314068 = or i32 %mul1923, 1
  %idxprom1932 = sext i32 %add19314068 to i64
  %arrayidx1933 = getelementptr inbounds double* %dvec, i64 %idxprom1932
  store double %361, double* %arrayidx1933, align 8, !tbaa !4
  %inc1934 = add nsw i32 %mm.1144676, 1
  %inc1935 = add nsw i32 %count1730.64672, 1
  br label %if.end1936

if.end1936:                                       ; preds = %for.body1907, %if.then1917
  %count1730.7 = phi i32 [ %inc1935, %if.then1917 ], [ %count1730.64672, %for.body1907 ]
  %mm.115 = phi i32 [ %inc1934, %if.then1917 ], [ %mm.1144676, %for.body1907 ]
  %362 = trunc i64 %indvars.iv5129 to i32
  %add1937 = add nsw i32 %kk1737.34675, %362
  %inc1940 = add nsw i32 %ii1732.34673, 1
  %indvars.iv.next5130 = add i64 %indvars.iv5129, -1
  %exitcond5132 = icmp eq i32 %inc1940, %first1731.14687
  br i1 %exitcond5132, label %for.end1941, label %for.body1907

for.end1941:                                      ; preds = %if.end1936, %for.cond1905.preheader
  %mm.114.lcssa = phi i32 [ %mm.1134682, %for.cond1905.preheader ], [ %mm.115, %if.end1936 ]
  %count1730.6.lcssa = phi i32 [ 0, %for.cond1905.preheader ], [ %count1730.7, %if.end1936 ]
  %inc1942 = add nsw i32 %kstart1738.54681, 1
  %arrayidx1944 = getelementptr inbounds i32* %sizes, i64 %indvars.iv5133
  store i32 %count1730.6.lcssa, i32* %arrayidx1944, align 4, !tbaa !3
  %indvars.iv.next5134 = add i64 %indvars.iv5133, 1
  %363 = trunc i64 %indvars.iv5133 to i32
  %cmp1903 = icmp slt i32 %363, %sub1901
  br i1 %cmp1903, label %for.cond1905.preheader, label %for.cond1902.for.end1947_crit_edge

for.cond1902.for.end1947_crit_edge:               ; preds = %for.end1941
  %364 = sub i32 %357, %first1731.14687
  br label %for.end1947

for.end1947:                                      ; preds = %for.cond1902.for.end1947_crit_edge, %for.body1897
  %mm.113.lcssa = phi i32 [ %mm.114.lcssa, %for.cond1902.for.end1947_crit_edge ], [ %mm.1124690, %for.body1897 ]
  %kstart1738.5.lcssa = phi i32 [ %364, %for.cond1902.for.end1947_crit_edge ], [ %kstart1738.44689, %for.body1897 ]
  %indvars.iv.next5137 = add i64 %indvars.iv5136, 1
  %lftr.wideiv5138 = trunc i64 %indvars.iv.next5137 to i32
  %exitcond5139 = icmp eq i32 %lftr.wideiv5138, %npivot
  br i1 %exitcond5139, label %sw.epilog2477, label %for.body1897

if.else1955:                                      ; preds = %sw.bb1723
  %sub1965 = add nsw i32 %add, -1
  %type1970 = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 4
  %365 = load i32* %type1970, align 4, !tbaa !3
  switch i32 %365, label %sw.epilog2477 [
    i32 1, label %for.cond1973.preheader
    i32 2, label %for.cond2015.preheader
  ]

for.cond2015.preheader:                           ; preds = %if.else1955
  %cmp20164715 = icmp sgt i32 %4, 0
  br i1 %cmp20164715, label %for.body2017.lr.ph, label %sw.epilog2477

for.body2017.lr.ph:                               ; preds = %for.cond2015.preheader
  %366 = add i32 %5, %6
  %367 = shl i32 %4, 1
  %368 = add i32 %366, %367
  %369 = add i32 %368, -3
  %370 = sext i32 %369 to i64
  br label %for.body2017

for.cond1973.preheader:                           ; preds = %if.else1955
  %cmp19744701 = icmp sgt i32 %4, 0
  br i1 %cmp19744701, label %for.body1975.lr.ph, label %sw.epilog2477

for.body1975.lr.ph:                               ; preds = %for.cond1973.preheader
  %371 = add i32 %5, %6
  %372 = shl i32 %4, 1
  %373 = add i32 %371, %372
  %374 = add i32 %373, -3
  %375 = sext i32 %374 to i64
  br label %for.body1975

for.body1975:                                     ; preds = %for.end2004, %for.body1975.lr.ph
  %indvars.iv5143 = phi i64 [ 0, %for.body1975.lr.ph ], [ %indvars.iv.next5144, %for.end2004 ]
  %mm.1164704 = phi i32 [ 0, %for.body1975.lr.ph ], [ %mm.117.lcssa, %for.end2004 ]
  %kstart1962.04703 = phi i32 [ %sub1965, %for.body1975.lr.ph ], [ %inc2005, %for.end2004 ]
  %376 = add nsw i64 %indvars.iv5143, 4294967295
  %377 = trunc i64 %indvars.iv5143 to i32
  %cmp19844692 = icmp slt i32 %377, 1
  br i1 %cmp19844692, label %for.end2004, label %for.body1985

for.body1985:                                     ; preds = %for.body1975, %if.end1999
  %indvars.iv5140 = phi i64 [ %indvars.iv.next5141, %if.end1999 ], [ %375, %for.body1975 ]
  %mm.1174697 = phi i32 [ %mm.118, %if.end1999 ], [ %mm.1164704, %for.body1975 ]
  %kk1961.04696 = phi i32 [ %add2000, %if.end1999 ], [ %kstart1962.04703, %for.body1975 ]
  %ii1957.04694 = phi i32 [ %inc2003, %if.end1999 ], [ 0, %for.body1975 ]
  %count1956.04693 = phi i32 [ %count1956.1, %if.end1999 ], [ 0, %for.body1975 ]
  %idxprom1986 = sext i32 %kk1961.04696 to i64
  %arrayidx1987 = getelementptr inbounds double* %call18, i64 %idxprom1986
  %378 = load double* %arrayidx1987, align 8, !tbaa !4
  %call1988 = tail call double @fabs(double %378) #7
  %cmp1989 = fcmp ult double %call1988, %droptol
  br i1 %cmp1989, label %if.end1999, label %if.then1990

if.then1990:                                      ; preds = %for.body1985
  %idxprom1991 = sext i32 %mm.1174697 to i64
  %arrayidx1992 = getelementptr inbounds i32* %ivec, i64 %idxprom1991
  store i32 %ii1957.04694, i32* %arrayidx1992, align 4, !tbaa !3
  %arrayidx1996 = getelementptr inbounds double* %dvec, i64 %idxprom1991
  store double %378, double* %arrayidx1996, align 8, !tbaa !4
  %inc1997 = add nsw i32 %mm.1174697, 1
  %inc1998 = add nsw i32 %count1956.04693, 1
  br label %if.end1999

if.end1999:                                       ; preds = %for.body1985, %if.then1990
  %count1956.1 = phi i32 [ %inc1998, %if.then1990 ], [ %count1956.04693, %for.body1985 ]
  %mm.118 = phi i32 [ %inc1997, %if.then1990 ], [ %mm.1174697, %for.body1985 ]
  %379 = trunc i64 %indvars.iv5140 to i32
  %add2000 = add nsw i32 %kk1961.04696, %379
  %inc2003 = add nsw i32 %ii1957.04694, 1
  %380 = trunc i64 %376 to i32
  %cmp1984 = icmp slt i32 %ii1957.04694, %380
  %indvars.iv.next5141 = add i64 %indvars.iv5140, -2
  br i1 %cmp1984, label %for.body1985, label %for.end2004

for.end2004:                                      ; preds = %if.end1999, %for.body1975
  %mm.117.lcssa = phi i32 [ %mm.1164704, %for.body1975 ], [ %mm.118, %if.end1999 ]
  %count1956.0.lcssa = phi i32 [ 0, %for.body1975 ], [ %count1956.1, %if.end1999 ]
  %inc2005 = add nsw i32 %kstart1962.04703, 1
  %arrayidx2007 = getelementptr inbounds i32* %sizes, i64 %indvars.iv5143
  store i32 %count1956.0.lcssa, i32* %arrayidx2007, align 4, !tbaa !3
  %indvars.iv.next5144 = add i64 %indvars.iv5143, 1
  %lftr.wideiv5146 = trunc i64 %indvars.iv.next5144 to i32
  %exitcond5147 = icmp eq i32 %lftr.wideiv5146, %4
  br i1 %exitcond5147, label %sw.epilog2477, label %for.body1975

for.body2017:                                     ; preds = %for.end2061, %for.body2017.lr.ph
  %indvars.iv5151 = phi i64 [ 0, %for.body2017.lr.ph ], [ %indvars.iv.next5152, %for.end2061 ]
  %mm.1194718 = phi i32 [ 0, %for.body2017.lr.ph ], [ %mm.120.lcssa, %for.end2061 ]
  %kstart1962.14717 = phi i32 [ %sub1965, %for.body2017.lr.ph ], [ %inc2062, %for.end2061 ]
  %381 = add nsw i64 %indvars.iv5151, 4294967295
  %382 = trunc i64 %indvars.iv5151 to i32
  %cmp20264706 = icmp slt i32 %382, 1
  br i1 %cmp20264706, label %for.end2061, label %for.body2027

for.body2027:                                     ; preds = %for.body2017, %if.end2056
  %indvars.iv5148 = phi i64 [ %indvars.iv.next5149, %if.end2056 ], [ %370, %for.body2017 ]
  %mm.1204711 = phi i32 [ %mm.121, %if.end2056 ], [ %mm.1194718, %for.body2017 ]
  %kk1961.14710 = phi i32 [ %add2057, %if.end2056 ], [ %kstart1962.14717, %for.body2017 ]
  %ii1957.14708 = phi i32 [ %inc2060, %if.end2056 ], [ 0, %for.body2017 ]
  %count1956.24707 = phi i32 [ %count1956.3, %if.end2056 ], [ 0, %for.body2017 ]
  %mul2028 = shl nsw i32 %kk1961.14710, 1
  %idxprom2029 = sext i32 %mul2028 to i64
  %arrayidx2030 = getelementptr inbounds double* %call18, i64 %idxprom2029
  %383 = load double* %arrayidx2030, align 8, !tbaa !4
  %add20324065 = or i32 %mul2028, 1
  %idxprom2033 = sext i32 %add20324065 to i64
  %arrayidx2034 = getelementptr inbounds double* %call18, i64 %idxprom2033
  %384 = load double* %arrayidx2034, align 8, !tbaa !4
  %call2035 = tail call double @Zabs(double %383, double %384) #5
  %cmp2036 = fcmp ult double %call2035, %droptol
  br i1 %cmp2036, label %if.end2056, label %if.then2037

if.then2037:                                      ; preds = %for.body2027
  %idxprom2038 = sext i32 %mm.1204711 to i64
  %arrayidx2039 = getelementptr inbounds i32* %ivec, i64 %idxprom2038
  store i32 %ii1957.14708, i32* %arrayidx2039, align 4, !tbaa !3
  %385 = load double* %arrayidx2030, align 8, !tbaa !4
  %mul2043 = shl nsw i32 %mm.1204711, 1
  %idxprom2044 = sext i32 %mul2043 to i64
  %arrayidx2045 = getelementptr inbounds double* %dvec, i64 %idxprom2044
  store double %385, double* %arrayidx2045, align 8, !tbaa !4
  %386 = load double* %arrayidx2034, align 8, !tbaa !4
  %add20514066 = or i32 %mul2043, 1
  %idxprom2052 = sext i32 %add20514066 to i64
  %arrayidx2053 = getelementptr inbounds double* %dvec, i64 %idxprom2052
  store double %386, double* %arrayidx2053, align 8, !tbaa !4
  %inc2054 = add nsw i32 %mm.1204711, 1
  %inc2055 = add nsw i32 %count1956.24707, 1
  br label %if.end2056

if.end2056:                                       ; preds = %for.body2027, %if.then2037
  %count1956.3 = phi i32 [ %inc2055, %if.then2037 ], [ %count1956.24707, %for.body2027 ]
  %mm.121 = phi i32 [ %inc2054, %if.then2037 ], [ %mm.1204711, %for.body2027 ]
  %387 = trunc i64 %indvars.iv5148 to i32
  %add2057 = add nsw i32 %kk1961.14710, %387
  %inc2060 = add nsw i32 %ii1957.14708, 1
  %388 = trunc i64 %381 to i32
  %cmp2026 = icmp slt i32 %ii1957.14708, %388
  %indvars.iv.next5149 = add i64 %indvars.iv5148, -2
  br i1 %cmp2026, label %for.body2027, label %for.end2061

for.end2061:                                      ; preds = %if.end2056, %for.body2017
  %mm.120.lcssa = phi i32 [ %mm.1194718, %for.body2017 ], [ %mm.121, %if.end2056 ]
  %count1956.2.lcssa = phi i32 [ 0, %for.body2017 ], [ %count1956.3, %if.end2056 ]
  %inc2062 = add nsw i32 %kstart1962.14717, 1
  %arrayidx2064 = getelementptr inbounds i32* %sizes, i64 %indvars.iv5151
  store i32 %count1956.2.lcssa, i32* %arrayidx2064, align 4, !tbaa !3
  %indvars.iv.next5152 = add i64 %indvars.iv5151, 1
  %lftr.wideiv5154 = trunc i64 %indvars.iv.next5152 to i32
  %exitcond5155 = icmp eq i32 %lftr.wideiv5154, %4
  br i1 %exitcond5155, label %sw.epilog2477, label %for.body2017

sw.bb2073:                                        ; preds = %if.end12
  switch i32 %storeflag, label %sw.epilog2477 [
    i32 0, label %sw.bb2074
    i32 1, label %sw.bb2266
  ]

sw.bb2074:                                        ; preds = %sw.bb2073
  %389 = load i32* %symflag16, align 4, !tbaa !3
  %switch4108 = icmp ult i32 %389, 2
  br i1 %switch4108, label %if.then2080, label %if.else2175

if.then2080:                                      ; preds = %sw.bb2074
  %type2089 = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 4
  %390 = load i32* %type2089, align 4, !tbaa !3
  switch i32 %390, label %sw.epilog2477 [
    i32 1, label %for.cond2092.preheader
    i32 2, label %for.cond2127.preheader
  ]

for.cond2127.preheader:                           ; preds = %if.then2080
  %cmp21284742 = icmp sgt i32 %4, 0
  br i1 %cmp21284742, label %for.cond2130.preheader.lr.ph, label %sw.epilog2477

for.cond2130.preheader.lr.ph:                     ; preds = %for.cond2127.preheader
  %cmp21314734 = icmp sgt i32 %6, 0
  %391 = add i32 %add17, -1
  %392 = sext i32 %391 to i64
  br label %for.cond2130.preheader

for.cond2092.preheader:                           ; preds = %if.then2080
  %cmp20934728 = icmp sgt i32 %4, 0
  br i1 %cmp20934728, label %for.cond2095.preheader.lr.ph, label %sw.epilog2477

for.cond2095.preheader.lr.ph:                     ; preds = %for.cond2092.preheader
  %cmp20964720 = icmp sgt i32 %6, 0
  %393 = add i32 %add17, -1
  %394 = sext i32 %393 to i64
  br label %for.cond2095.preheader

for.cond2095.preheader:                           ; preds = %for.end2115, %for.cond2095.preheader.lr.ph
  %indvars.iv5162 = phi i64 [ 0, %for.cond2095.preheader.lr.ph ], [ %indvars.iv.next5163, %for.end2115 ]
  %indvars.iv5159 = phi i64 [ %394, %for.cond2095.preheader.lr.ph ], [ %indvars.iv.next5160, %for.end2115 ]
  %mm.1224732 = phi i32 [ 0, %for.cond2095.preheader.lr.ph ], [ %mm.123.lcssa, %for.end2115 ]
  %kstart2085.04730 = phi i32 [ %4, %for.cond2095.preheader.lr.ph ], [ %add2116, %for.end2115 ]
  br i1 %cmp20964720, label %for.body2097.lr.ph, label %for.end2115

for.body2097.lr.ph:                               ; preds = %for.cond2095.preheader
  %395 = sext i32 %kstart2085.04730 to i64
  br label %for.body2097

for.body2097:                                     ; preds = %for.body2097.lr.ph, %for.inc2112
  %indvars.iv5156 = phi i64 [ %395, %for.body2097.lr.ph ], [ %indvars.iv.next5157, %for.inc2112 ]
  %mm.1234724 = phi i32 [ %mm.1224732, %for.body2097.lr.ph ], [ %mm.124, %for.inc2112 ]
  %jj2083.04722 = phi i32 [ %4, %for.body2097.lr.ph ], [ %inc2113, %for.inc2112 ]
  %count2081.04721 = phi i32 [ 0, %for.body2097.lr.ph ], [ %count2081.1, %for.inc2112 ]
  %arrayidx2099 = getelementptr inbounds double* %call18, i64 %indvars.iv5156
  %396 = load double* %arrayidx2099, align 8, !tbaa !4
  %call2100 = tail call double @fabs(double %396) #7
  %cmp2101 = fcmp ult double %call2100, %droptol
  br i1 %cmp2101, label %for.inc2112, label %if.then2102

if.then2102:                                      ; preds = %for.body2097
  %idxprom2103 = sext i32 %mm.1234724 to i64
  %arrayidx2104 = getelementptr inbounds i32* %ivec, i64 %idxprom2103
  store i32 %jj2083.04722, i32* %arrayidx2104, align 4, !tbaa !3
  %arrayidx2108 = getelementptr inbounds double* %dvec, i64 %idxprom2103
  store double %396, double* %arrayidx2108, align 8, !tbaa !4
  %inc2109 = add nsw i32 %mm.1234724, 1
  %inc2110 = add nsw i32 %count2081.04721, 1
  br label %for.inc2112

for.inc2112:                                      ; preds = %for.body2097, %if.then2102
  %count2081.1 = phi i32 [ %inc2110, %if.then2102 ], [ %count2081.04721, %for.body2097 ]
  %mm.124 = phi i32 [ %inc2109, %if.then2102 ], [ %mm.1234724, %for.body2097 ]
  %inc2113 = add nsw i32 %jj2083.04722, 1
  %cmp2096 = icmp slt i32 %inc2113, %add17
  %indvars.iv.next5157 = add i64 %indvars.iv5156, 1
  br i1 %cmp2096, label %for.body2097, label %for.end2115

for.end2115:                                      ; preds = %for.inc2112, %for.cond2095.preheader
  %mm.123.lcssa = phi i32 [ %mm.1224732, %for.cond2095.preheader ], [ %mm.124, %for.inc2112 ]
  %count2081.0.lcssa = phi i32 [ 0, %for.cond2095.preheader ], [ %count2081.1, %for.inc2112 ]
  %397 = trunc i64 %indvars.iv5159 to i32
  %add2116 = add nsw i32 %397, %kstart2085.04730
  %arrayidx2119 = getelementptr inbounds i32* %sizes, i64 %indvars.iv5162
  store i32 %count2081.0.lcssa, i32* %arrayidx2119, align 4, !tbaa !3
  %indvars.iv.next5163 = add i64 %indvars.iv5162, 1
  %indvars.iv.next5160 = add i64 %indvars.iv5159, -1
  %lftr.wideiv5164 = trunc i64 %indvars.iv.next5163 to i32
  %exitcond5165 = icmp eq i32 %lftr.wideiv5164, %4
  br i1 %exitcond5165, label %sw.epilog2477, label %for.cond2095.preheader

for.cond2130.preheader:                           ; preds = %for.end2165, %for.cond2130.preheader.lr.ph
  %indvars.iv5172 = phi i64 [ 0, %for.cond2130.preheader.lr.ph ], [ %indvars.iv.next5173, %for.end2165 ]
  %indvars.iv5169 = phi i64 [ %392, %for.cond2130.preheader.lr.ph ], [ %indvars.iv.next5170, %for.end2165 ]
  %mm.1254746 = phi i32 [ 0, %for.cond2130.preheader.lr.ph ], [ %mm.126.lcssa, %for.end2165 ]
  %kstart2085.14744 = phi i32 [ %4, %for.cond2130.preheader.lr.ph ], [ %add2166, %for.end2165 ]
  br i1 %cmp21314734, label %for.body2132.lr.ph, label %for.end2165

for.body2132.lr.ph:                               ; preds = %for.cond2130.preheader
  %398 = sext i32 %kstart2085.14744 to i64
  br label %for.body2132

for.body2132:                                     ; preds = %for.body2132.lr.ph, %for.inc2162
  %indvars.iv5166 = phi i64 [ %398, %for.body2132.lr.ph ], [ %indvars.iv.next5167, %for.inc2162 ]
  %mm.1264738 = phi i32 [ %mm.1254746, %for.body2132.lr.ph ], [ %mm.127, %for.inc2162 ]
  %jj2083.14736 = phi i32 [ %4, %for.body2132.lr.ph ], [ %inc2163, %for.inc2162 ]
  %count2081.24735 = phi i32 [ 0, %for.body2132.lr.ph ], [ %count2081.3, %for.inc2162 ]
  %399 = trunc i64 %indvars.iv5166 to i32
  %mul2133 = shl nsw i32 %399, 1
  %idxprom2134 = sext i32 %mul2133 to i64
  %arrayidx2135 = getelementptr inbounds double* %call18, i64 %idxprom2134
  %400 = load double* %arrayidx2135, align 8, !tbaa !4
  %add21374063 = or i32 %mul2133, 1
  %idxprom2138 = sext i32 %add21374063 to i64
  %arrayidx2139 = getelementptr inbounds double* %call18, i64 %idxprom2138
  %401 = load double* %arrayidx2139, align 8, !tbaa !4
  %call2140 = tail call double @Zabs(double %400, double %401) #5
  %cmp2141 = fcmp ult double %call2140, %droptol
  br i1 %cmp2141, label %for.inc2162, label %if.then2142

if.then2142:                                      ; preds = %for.body2132
  %idxprom2143 = sext i32 %mm.1264738 to i64
  %arrayidx2144 = getelementptr inbounds i32* %ivec, i64 %idxprom2143
  store i32 %jj2083.14736, i32* %arrayidx2144, align 4, !tbaa !3
  %402 = load double* %arrayidx2135, align 8, !tbaa !4
  %mul2148 = shl nsw i32 %mm.1264738, 1
  %idxprom2149 = sext i32 %mul2148 to i64
  %arrayidx2150 = getelementptr inbounds double* %dvec, i64 %idxprom2149
  store double %402, double* %arrayidx2150, align 8, !tbaa !4
  %403 = load double* %arrayidx2139, align 8, !tbaa !4
  %add21564064 = or i32 %mul2148, 1
  %idxprom2157 = sext i32 %add21564064 to i64
  %arrayidx2158 = getelementptr inbounds double* %dvec, i64 %idxprom2157
  store double %403, double* %arrayidx2158, align 8, !tbaa !4
  %inc2159 = add nsw i32 %mm.1264738, 1
  %inc2160 = add nsw i32 %count2081.24735, 1
  br label %for.inc2162

for.inc2162:                                      ; preds = %for.body2132, %if.then2142
  %count2081.3 = phi i32 [ %inc2160, %if.then2142 ], [ %count2081.24735, %for.body2132 ]
  %mm.127 = phi i32 [ %inc2159, %if.then2142 ], [ %mm.1264738, %for.body2132 ]
  %inc2163 = add nsw i32 %jj2083.14736, 1
  %cmp2131 = icmp slt i32 %inc2163, %add17
  %indvars.iv.next5167 = add i64 %indvars.iv5166, 1
  br i1 %cmp2131, label %for.body2132, label %for.end2165

for.end2165:                                      ; preds = %for.inc2162, %for.cond2130.preheader
  %mm.126.lcssa = phi i32 [ %mm.1254746, %for.cond2130.preheader ], [ %mm.127, %for.inc2162 ]
  %count2081.2.lcssa = phi i32 [ 0, %for.cond2130.preheader ], [ %count2081.3, %for.inc2162 ]
  %404 = trunc i64 %indvars.iv5169 to i32
  %add2166 = add nsw i32 %404, %kstart2085.14744
  %arrayidx2169 = getelementptr inbounds i32* %sizes, i64 %indvars.iv5172
  store i32 %count2081.2.lcssa, i32* %arrayidx2169, align 4, !tbaa !3
  %indvars.iv.next5173 = add i64 %indvars.iv5172, 1
  %indvars.iv.next5170 = add i64 %indvars.iv5169, -1
  %lftr.wideiv5174 = trunc i64 %indvars.iv.next5173 to i32
  %exitcond5175 = icmp eq i32 %lftr.wideiv5174, %4
  br i1 %exitcond5175, label %sw.epilog2477, label %for.cond2130.preheader

if.else2175:                                      ; preds = %sw.bb2074
  %cmp21904764 = icmp sgt i32 %4, 0
  br i1 %cmp21904764, label %for.body2191.lr.ph, label %sw.epilog2477

for.body2191.lr.ph:                               ; preds = %if.else2175
  %mul2182 = shl nsw i32 %4, 1
  %add2183 = add nsw i32 %mul2182, %5
  %sub2184 = add nsw i32 %add2183, -1
  %type2192 = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 4
  %cmp22214748 = icmp sgt i32 %6, 0
  %405 = add i32 %5, %6
  %406 = shl i32 %4, 1
  %407 = add i32 %405, %406
  %408 = add i32 %407, -3
  %409 = sext i32 %408 to i64
  br label %for.body2191

for.body2191:                                     ; preds = %if.end2257, %for.body2191.lr.ph
  %indvars.iv5185 = phi i64 [ 0, %for.body2191.lr.ph ], [ %indvars.iv.next5186, %if.end2257 ]
  %indvars.iv5182 = phi i64 [ %409, %for.body2191.lr.ph ], [ %indvars.iv.next5183, %if.end2257 ]
  %mm.1284769 = phi i32 [ 0, %for.body2191.lr.ph ], [ %mm.133, %if.end2257 ]
  %kstart2180.04767 = phi i32 [ %sub2184, %for.body2191.lr.ph ], [ %add2258, %if.end2257 ]
  %count2176.04765 = phi i32 [ undef, %for.body2191.lr.ph ], [ %count2176.5, %if.end2257 ]
  %410 = sext i32 %kstart2180.04767 to i64
  %411 = load i32* %type2192, align 4, !tbaa !3
  switch i32 %411, label %if.end2257 [
    i32 1, label %for.cond2195.preheader
    i32 2, label %for.cond2220.preheader
  ]

for.cond2195.preheader:                           ; preds = %for.body2191
  br i1 %cmp22214748, label %for.body2197, label %if.end2257

for.cond2220.preheader:                           ; preds = %for.body2191
  br i1 %cmp22214748, label %for.body2222, label %if.end2257

for.body2197:                                     ; preds = %for.cond2195.preheader, %for.inc2212
  %indvars.iv5179 = phi i64 [ %indvars.iv.next5180, %for.inc2212 ], [ %410, %for.cond2195.preheader ]
  %mm.1294760 = phi i32 [ %mm.130, %for.inc2212 ], [ %mm.1284769, %for.cond2195.preheader ]
  %jj2178.04758 = phi i32 [ %inc2213, %for.inc2212 ], [ %4, %for.cond2195.preheader ]
  %count2176.14757 = phi i32 [ %count2176.2, %for.inc2212 ], [ 0, %for.cond2195.preheader ]
  %arrayidx2199 = getelementptr inbounds double* %call18, i64 %indvars.iv5179
  %412 = load double* %arrayidx2199, align 8, !tbaa !4
  %call2200 = tail call double @fabs(double %412) #7
  %cmp2201 = fcmp ult double %call2200, %droptol
  br i1 %cmp2201, label %for.inc2212, label %if.then2202

if.then2202:                                      ; preds = %for.body2197
  %idxprom2203 = sext i32 %mm.1294760 to i64
  %arrayidx2204 = getelementptr inbounds i32* %ivec, i64 %idxprom2203
  store i32 %jj2178.04758, i32* %arrayidx2204, align 4, !tbaa !3
  %arrayidx2208 = getelementptr inbounds double* %dvec, i64 %idxprom2203
  store double %412, double* %arrayidx2208, align 8, !tbaa !4
  %inc2209 = add nsw i32 %mm.1294760, 1
  %inc2210 = add nsw i32 %count2176.14757, 1
  br label %for.inc2212

for.inc2212:                                      ; preds = %for.body2197, %if.then2202
  %count2176.2 = phi i32 [ %inc2210, %if.then2202 ], [ %count2176.14757, %for.body2197 ]
  %mm.130 = phi i32 [ %inc2209, %if.then2202 ], [ %mm.1294760, %for.body2197 ]
  %inc2213 = add nsw i32 %jj2178.04758, 1
  %cmp2196 = icmp slt i32 %inc2213, %add17
  %indvars.iv.next5180 = add i64 %indvars.iv5179, 1
  br i1 %cmp2196, label %for.body2197, label %if.end2257

for.body2222:                                     ; preds = %for.cond2220.preheader, %for.inc2252
  %indvars.iv5176 = phi i64 [ %indvars.iv.next5177, %for.inc2252 ], [ %410, %for.cond2220.preheader ]
  %mm.1314752 = phi i32 [ %mm.132, %for.inc2252 ], [ %mm.1284769, %for.cond2220.preheader ]
  %jj2178.14750 = phi i32 [ %inc2253, %for.inc2252 ], [ %4, %for.cond2220.preheader ]
  %count2176.34749 = phi i32 [ %count2176.4, %for.inc2252 ], [ 0, %for.cond2220.preheader ]
  %413 = trunc i64 %indvars.iv5176 to i32
  %mul2223 = shl nsw i32 %413, 1
  %idxprom2224 = sext i32 %mul2223 to i64
  %arrayidx2225 = getelementptr inbounds double* %call18, i64 %idxprom2224
  %414 = load double* %arrayidx2225, align 8, !tbaa !4
  %add22274061 = or i32 %mul2223, 1
  %idxprom2228 = sext i32 %add22274061 to i64
  %arrayidx2229 = getelementptr inbounds double* %call18, i64 %idxprom2228
  %415 = load double* %arrayidx2229, align 8, !tbaa !4
  %call2230 = tail call double @Zabs(double %414, double %415) #5
  %cmp2231 = fcmp ult double %call2230, %droptol
  br i1 %cmp2231, label %for.inc2252, label %if.then2232

if.then2232:                                      ; preds = %for.body2222
  %idxprom2233 = sext i32 %mm.1314752 to i64
  %arrayidx2234 = getelementptr inbounds i32* %ivec, i64 %idxprom2233
  store i32 %jj2178.14750, i32* %arrayidx2234, align 4, !tbaa !3
  %416 = load double* %arrayidx2225, align 8, !tbaa !4
  %mul2238 = shl nsw i32 %mm.1314752, 1
  %idxprom2239 = sext i32 %mul2238 to i64
  %arrayidx2240 = getelementptr inbounds double* %dvec, i64 %idxprom2239
  store double %416, double* %arrayidx2240, align 8, !tbaa !4
  %417 = load double* %arrayidx2229, align 8, !tbaa !4
  %add22464062 = or i32 %mul2238, 1
  %idxprom2247 = sext i32 %add22464062 to i64
  %arrayidx2248 = getelementptr inbounds double* %dvec, i64 %idxprom2247
  store double %417, double* %arrayidx2248, align 8, !tbaa !4
  %inc2249 = add nsw i32 %mm.1314752, 1
  %inc2250 = add nsw i32 %count2176.34749, 1
  br label %for.inc2252

for.inc2252:                                      ; preds = %for.body2222, %if.then2232
  %count2176.4 = phi i32 [ %inc2250, %if.then2232 ], [ %count2176.34749, %for.body2222 ]
  %mm.132 = phi i32 [ %inc2249, %if.then2232 ], [ %mm.1314752, %for.body2222 ]
  %inc2253 = add nsw i32 %jj2178.14750, 1
  %cmp2221 = icmp slt i32 %inc2253, %add17
  %indvars.iv.next5177 = add i64 %indvars.iv5176, 1
  br i1 %cmp2221, label %for.body2222, label %if.end2257

if.end2257:                                       ; preds = %for.cond2195.preheader, %for.inc2212, %for.cond2220.preheader, %for.inc2252, %for.body2191
  %count2176.5 = phi i32 [ %count2176.04765, %for.body2191 ], [ 0, %for.cond2220.preheader ], [ %count2176.4, %for.inc2252 ], [ 0, %for.cond2195.preheader ], [ %count2176.2, %for.inc2212 ]
  %mm.133 = phi i32 [ %mm.1284769, %for.body2191 ], [ %mm.1284769, %for.cond2220.preheader ], [ %mm.132, %for.inc2252 ], [ %mm.1284769, %for.cond2195.preheader ], [ %mm.130, %for.inc2212 ]
  %418 = trunc i64 %indvars.iv5182 to i32
  %add2258 = add nsw i32 %418, %kstart2180.04767
  %arrayidx2261 = getelementptr inbounds i32* %sizes, i64 %indvars.iv5185
  store i32 %count2176.5, i32* %arrayidx2261, align 4, !tbaa !3
  %indvars.iv.next5186 = add i64 %indvars.iv5185, 1
  %indvars.iv.next5183 = add i64 %indvars.iv5182, -2
  %lftr.wideiv5187 = trunc i64 %indvars.iv.next5186 to i32
  %exitcond5188 = icmp eq i32 %lftr.wideiv5187, %4
  br i1 %exitcond5188, label %sw.epilog2477, label %for.body2191

sw.bb2266:                                        ; preds = %sw.bb2073
  %419 = load i32* %symflag16, align 4, !tbaa !3
  %switch4109 = icmp ult i32 %419, 2
  br i1 %switch4109, label %if.then2272, label %if.else2370

if.then2272:                                      ; preds = %sw.bb2266
  %type2282 = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 4
  %420 = load i32* %type2282, align 4, !tbaa !3
  switch i32 %420, label %sw.epilog2477 [
    i32 1, label %for.cond2285.preheader
    i32 2, label %for.cond2321.preheader
  ]

for.cond2321.preheader:                           ; preds = %if.then2272
  %cmp23224794 = icmp sgt i32 %6, 0
  br i1 %cmp23224794, label %for.cond2324.preheader.lr.ph, label %sw.epilog2477

for.cond2324.preheader.lr.ph:                     ; preds = %for.cond2321.preheader
  %cmp23254785 = icmp sgt i32 %4, 0
  %421 = add i32 %add17, -1
  %422 = sext i32 %421 to i64
  %423 = sext i32 %4 to i64
  br label %for.cond2324.preheader

for.cond2285.preheader:                           ; preds = %if.then2272
  %cmp22864780 = icmp sgt i32 %6, 0
  br i1 %cmp22864780, label %for.cond2288.preheader.lr.ph, label %sw.epilog2477

for.cond2288.preheader.lr.ph:                     ; preds = %for.cond2285.preheader
  %cmp22894771 = icmp sgt i32 %4, 0
  %424 = add i32 %add17, -1
  %425 = sext i32 %424 to i64
  %426 = sext i32 %4 to i64
  br label %for.cond2288.preheader

for.cond2288.preheader:                           ; preds = %for.cond2288.preheader.lr.ph, %for.end2309
  %indvars.iv5193 = phi i64 [ %426, %for.cond2288.preheader.lr.ph ], [ %indvars.iv.next5194, %for.end2309 ]
  %mm.1344783 = phi i32 [ 0, %for.cond2288.preheader.lr.ph ], [ %mm.135.lcssa, %for.end2309 ]
  %kstart2278.04782 = phi i32 [ %4, %for.cond2288.preheader.lr.ph ], [ %inc2310, %for.end2309 ]
  br i1 %cmp22894771, label %for.body2290, label %for.end2309

for.body2290:                                     ; preds = %for.cond2288.preheader, %if.end2304
  %indvars.iv5189 = phi i64 [ %indvars.iv.next5190, %if.end2304 ], [ %425, %for.cond2288.preheader ]
  %mm.1354776 = phi i32 [ %mm.136, %if.end2304 ], [ %mm.1344783, %for.cond2288.preheader ]
  %kk2277.04775 = phi i32 [ %add2305, %if.end2304 ], [ %kstart2278.04782, %for.cond2288.preheader ]
  %ii2274.04773 = phi i32 [ %inc2308, %if.end2304 ], [ 0, %for.cond2288.preheader ]
  %count2273.04772 = phi i32 [ %count2273.1, %if.end2304 ], [ 0, %for.cond2288.preheader ]
  %idxprom2291 = sext i32 %kk2277.04775 to i64
  %arrayidx2292 = getelementptr inbounds double* %call18, i64 %idxprom2291
  %427 = load double* %arrayidx2292, align 8, !tbaa !4
  %call2293 = tail call double @fabs(double %427) #7
  %cmp2294 = fcmp ult double %call2293, %droptol
  br i1 %cmp2294, label %if.end2304, label %if.then2295

if.then2295:                                      ; preds = %for.body2290
  %idxprom2296 = sext i32 %mm.1354776 to i64
  %arrayidx2297 = getelementptr inbounds i32* %ivec, i64 %idxprom2296
  store i32 %ii2274.04773, i32* %arrayidx2297, align 4, !tbaa !3
  %arrayidx2301 = getelementptr inbounds double* %dvec, i64 %idxprom2296
  store double %427, double* %arrayidx2301, align 8, !tbaa !4
  %inc2302 = add nsw i32 %mm.1354776, 1
  %inc2303 = add nsw i32 %count2273.04772, 1
  br label %if.end2304

if.end2304:                                       ; preds = %for.body2290, %if.then2295
  %count2273.1 = phi i32 [ %inc2303, %if.then2295 ], [ %count2273.04772, %for.body2290 ]
  %mm.136 = phi i32 [ %inc2302, %if.then2295 ], [ %mm.1354776, %for.body2290 ]
  %428 = trunc i64 %indvars.iv5189 to i32
  %add2305 = add nsw i32 %kk2277.04775, %428
  %inc2308 = add nsw i32 %ii2274.04773, 1
  %indvars.iv.next5190 = add i64 %indvars.iv5189, -1
  %exitcond5192 = icmp eq i32 %inc2308, %4
  br i1 %exitcond5192, label %for.end2309, label %for.body2290

for.end2309:                                      ; preds = %if.end2304, %for.cond2288.preheader
  %mm.135.lcssa = phi i32 [ %mm.1344783, %for.cond2288.preheader ], [ %mm.136, %if.end2304 ]
  %count2273.0.lcssa = phi i32 [ 0, %for.cond2288.preheader ], [ %count2273.1, %if.end2304 ]
  %inc2310 = add nsw i32 %kstart2278.04782, 1
  %429 = trunc i64 %indvars.iv5193 to i32
  %sub2311 = sub nsw i32 %429, %4
  %idxprom2312 = sext i32 %sub2311 to i64
  %arrayidx2313 = getelementptr inbounds i32* %sizes, i64 %idxprom2312
  store i32 %count2273.0.lcssa, i32* %arrayidx2313, align 4, !tbaa !3
  %indvars.iv.next5194 = add i64 %indvars.iv5193, 1
  %430 = trunc i64 %indvars.iv.next5194 to i32
  %cmp2286 = icmp slt i32 %430, %add17
  br i1 %cmp2286, label %for.cond2288.preheader, label %sw.epilog2477

for.cond2324.preheader:                           ; preds = %for.cond2324.preheader.lr.ph, %for.end2360
  %indvars.iv5199 = phi i64 [ %423, %for.cond2324.preheader.lr.ph ], [ %indvars.iv.next5200, %for.end2360 ]
  %mm.1374797 = phi i32 [ 0, %for.cond2324.preheader.lr.ph ], [ %mm.138.lcssa, %for.end2360 ]
  %kstart2278.14796 = phi i32 [ %4, %for.cond2324.preheader.lr.ph ], [ %inc2361, %for.end2360 ]
  br i1 %cmp23254785, label %for.body2326, label %for.end2360

for.body2326:                                     ; preds = %for.cond2324.preheader, %if.end2355
  %indvars.iv5195 = phi i64 [ %indvars.iv.next5196, %if.end2355 ], [ %422, %for.cond2324.preheader ]
  %mm.1384790 = phi i32 [ %mm.139, %if.end2355 ], [ %mm.1374797, %for.cond2324.preheader ]
  %kk2277.14789 = phi i32 [ %add2356, %if.end2355 ], [ %kstart2278.14796, %for.cond2324.preheader ]
  %ii2274.14787 = phi i32 [ %inc2359, %if.end2355 ], [ 0, %for.cond2324.preheader ]
  %count2273.24786 = phi i32 [ %count2273.3, %if.end2355 ], [ 0, %for.cond2324.preheader ]
  %mul2327 = shl nsw i32 %kk2277.14789, 1
  %idxprom2328 = sext i32 %mul2327 to i64
  %arrayidx2329 = getelementptr inbounds double* %call18, i64 %idxprom2328
  %431 = load double* %arrayidx2329, align 8, !tbaa !4
  %add23314059 = or i32 %mul2327, 1
  %idxprom2332 = sext i32 %add23314059 to i64
  %arrayidx2333 = getelementptr inbounds double* %call18, i64 %idxprom2332
  %432 = load double* %arrayidx2333, align 8, !tbaa !4
  %call2334 = tail call double @Zabs(double %431, double %432) #5
  %cmp2335 = fcmp ult double %call2334, %droptol
  br i1 %cmp2335, label %if.end2355, label %if.then2336

if.then2336:                                      ; preds = %for.body2326
  %idxprom2337 = sext i32 %mm.1384790 to i64
  %arrayidx2338 = getelementptr inbounds i32* %ivec, i64 %idxprom2337
  store i32 %ii2274.14787, i32* %arrayidx2338, align 4, !tbaa !3
  %433 = load double* %arrayidx2329, align 8, !tbaa !4
  %mul2342 = shl nsw i32 %mm.1384790, 1
  %idxprom2343 = sext i32 %mul2342 to i64
  %arrayidx2344 = getelementptr inbounds double* %dvec, i64 %idxprom2343
  store double %433, double* %arrayidx2344, align 8, !tbaa !4
  %434 = load double* %arrayidx2333, align 8, !tbaa !4
  %add23504060 = or i32 %mul2342, 1
  %idxprom2351 = sext i32 %add23504060 to i64
  %arrayidx2352 = getelementptr inbounds double* %dvec, i64 %idxprom2351
  store double %434, double* %arrayidx2352, align 8, !tbaa !4
  %inc2353 = add nsw i32 %mm.1384790, 1
  %inc2354 = add nsw i32 %count2273.24786, 1
  br label %if.end2355

if.end2355:                                       ; preds = %for.body2326, %if.then2336
  %count2273.3 = phi i32 [ %inc2354, %if.then2336 ], [ %count2273.24786, %for.body2326 ]
  %mm.139 = phi i32 [ %inc2353, %if.then2336 ], [ %mm.1384790, %for.body2326 ]
  %435 = trunc i64 %indvars.iv5195 to i32
  %add2356 = add nsw i32 %kk2277.14789, %435
  %inc2359 = add nsw i32 %ii2274.14787, 1
  %indvars.iv.next5196 = add i64 %indvars.iv5195, -1
  %exitcond5198 = icmp eq i32 %inc2359, %4
  br i1 %exitcond5198, label %for.end2360, label %for.body2326

for.end2360:                                      ; preds = %if.end2355, %for.cond2324.preheader
  %mm.138.lcssa = phi i32 [ %mm.1374797, %for.cond2324.preheader ], [ %mm.139, %if.end2355 ]
  %count2273.2.lcssa = phi i32 [ 0, %for.cond2324.preheader ], [ %count2273.3, %if.end2355 ]
  %inc2361 = add nsw i32 %kstart2278.14796, 1
  %436 = trunc i64 %indvars.iv5199 to i32
  %sub2362 = sub nsw i32 %436, %4
  %idxprom2363 = sext i32 %sub2362 to i64
  %arrayidx2364 = getelementptr inbounds i32* %sizes, i64 %idxprom2363
  store i32 %count2273.2.lcssa, i32* %arrayidx2364, align 4, !tbaa !3
  %indvars.iv.next5200 = add i64 %indvars.iv5199, 1
  %437 = trunc i64 %indvars.iv.next5200 to i32
  %cmp2322 = icmp slt i32 %437, %add17
  br i1 %cmp2322, label %for.cond2324.preheader, label %sw.epilog2477

if.else2370:                                      ; preds = %sw.bb2266
  %mul2378 = shl nsw i32 %4, 1
  %add2379 = add nsw i32 %mul2378, %5
  %sub2380 = add nsw i32 %add2379, -1
  %type2385 = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 4
  %438 = load i32* %type2385, align 4, !tbaa !3
  switch i32 %438, label %sw.epilog2477 [
    i32 1, label %for.cond2388.preheader
    i32 2, label %for.cond2424.preheader
  ]

for.cond2424.preheader:                           ; preds = %if.else2370
  %cmp24254822 = icmp sgt i32 %6, 0
  br i1 %cmp24254822, label %for.cond2427.preheader.lr.ph, label %sw.epilog2477

for.cond2427.preheader.lr.ph:                     ; preds = %for.cond2424.preheader
  %cmp24284813 = icmp sgt i32 %4, 0
  %439 = add i32 %5, %6
  %440 = shl i32 %4, 1
  %441 = add i32 %439, %440
  %442 = add i32 %441, -3
  %443 = sext i32 %442 to i64
  %444 = sext i32 %4 to i64
  br label %for.cond2427.preheader

for.cond2388.preheader:                           ; preds = %if.else2370
  %cmp23894808 = icmp sgt i32 %6, 0
  br i1 %cmp23894808, label %for.cond2391.preheader.lr.ph, label %sw.epilog2477

for.cond2391.preheader.lr.ph:                     ; preds = %for.cond2388.preheader
  %cmp23924799 = icmp sgt i32 %4, 0
  %445 = add i32 %5, %6
  %446 = shl i32 %4, 1
  %447 = add i32 %445, %446
  %448 = add i32 %447, -3
  %449 = sext i32 %448 to i64
  %450 = sext i32 %4 to i64
  br label %for.cond2391.preheader

for.cond2391.preheader:                           ; preds = %for.cond2391.preheader.lr.ph, %for.end2412
  %indvars.iv5205 = phi i64 [ %450, %for.cond2391.preheader.lr.ph ], [ %indvars.iv.next5206, %for.end2412 ]
  %kstart2376.04811 = phi i32 [ %sub2380, %for.cond2391.preheader.lr.ph ], [ %inc2413, %for.end2412 ]
  %mm.1404809 = phi i32 [ 0, %for.cond2391.preheader.lr.ph ], [ %mm.141.lcssa, %for.end2412 ]
  br i1 %cmp23924799, label %for.body2393, label %for.end2412

for.body2393:                                     ; preds = %for.cond2391.preheader, %if.end2407
  %indvars.iv5201 = phi i64 [ %indvars.iv.next5202, %if.end2407 ], [ %449, %for.cond2391.preheader ]
  %kk2375.04804 = phi i32 [ %add2408, %if.end2407 ], [ %kstart2376.04811, %for.cond2391.preheader ]
  %ii2372.04802 = phi i32 [ %inc2411, %if.end2407 ], [ 0, %for.cond2391.preheader ]
  %count2371.04801 = phi i32 [ %count2371.1, %if.end2407 ], [ 0, %for.cond2391.preheader ]
  %mm.1414800 = phi i32 [ %mm.142, %if.end2407 ], [ %mm.1404809, %for.cond2391.preheader ]
  %idxprom2394 = sext i32 %kk2375.04804 to i64
  %arrayidx2395 = getelementptr inbounds double* %call18, i64 %idxprom2394
  %451 = load double* %arrayidx2395, align 8, !tbaa !4
  %call2396 = tail call double @fabs(double %451) #7
  %cmp2397 = fcmp ult double %call2396, %droptol
  br i1 %cmp2397, label %if.end2407, label %if.then2398

if.then2398:                                      ; preds = %for.body2393
  %idxprom2399 = sext i32 %mm.1414800 to i64
  %arrayidx2400 = getelementptr inbounds i32* %ivec, i64 %idxprom2399
  store i32 %ii2372.04802, i32* %arrayidx2400, align 4, !tbaa !3
  %arrayidx2404 = getelementptr inbounds double* %dvec, i64 %idxprom2399
  store double %451, double* %arrayidx2404, align 8, !tbaa !4
  %inc2405 = add nsw i32 %mm.1414800, 1
  %inc2406 = add nsw i32 %count2371.04801, 1
  br label %if.end2407

if.end2407:                                       ; preds = %for.body2393, %if.then2398
  %mm.142 = phi i32 [ %inc2405, %if.then2398 ], [ %mm.1414800, %for.body2393 ]
  %count2371.1 = phi i32 [ %inc2406, %if.then2398 ], [ %count2371.04801, %for.body2393 ]
  %452 = trunc i64 %indvars.iv5201 to i32
  %add2408 = add nsw i32 %kk2375.04804, %452
  %inc2411 = add nsw i32 %ii2372.04802, 1
  %indvars.iv.next5202 = add i64 %indvars.iv5201, -2
  %exitcond5204 = icmp eq i32 %inc2411, %4
  br i1 %exitcond5204, label %for.end2412, label %for.body2393

for.end2412:                                      ; preds = %if.end2407, %for.cond2391.preheader
  %count2371.0.lcssa = phi i32 [ 0, %for.cond2391.preheader ], [ %count2371.1, %if.end2407 ]
  %mm.141.lcssa = phi i32 [ %mm.1404809, %for.cond2391.preheader ], [ %mm.142, %if.end2407 ]
  %inc2413 = add nsw i32 %kstart2376.04811, 1
  %453 = trunc i64 %indvars.iv5205 to i32
  %sub2414 = sub nsw i32 %453, %4
  %idxprom2415 = sext i32 %sub2414 to i64
  %arrayidx2416 = getelementptr inbounds i32* %sizes, i64 %idxprom2415
  store i32 %count2371.0.lcssa, i32* %arrayidx2416, align 4, !tbaa !3
  %indvars.iv.next5206 = add i64 %indvars.iv5205, 1
  %454 = trunc i64 %indvars.iv.next5206 to i32
  %cmp2389 = icmp slt i32 %454, %add17
  br i1 %cmp2389, label %for.cond2391.preheader, label %sw.epilog2477

for.cond2427.preheader:                           ; preds = %for.cond2427.preheader.lr.ph, %for.end2463
  %indvars.iv5211 = phi i64 [ %444, %for.cond2427.preheader.lr.ph ], [ %indvars.iv.next5212, %for.end2463 ]
  %kstart2376.14825 = phi i32 [ %sub2380, %for.cond2427.preheader.lr.ph ], [ %inc2464, %for.end2463 ]
  %mm.1434823 = phi i32 [ 0, %for.cond2427.preheader.lr.ph ], [ %mm.144.lcssa, %for.end2463 ]
  br i1 %cmp24284813, label %for.body2429, label %for.end2463

for.body2429:                                     ; preds = %for.cond2427.preheader, %if.end2458
  %indvars.iv5207 = phi i64 [ %indvars.iv.next5208, %if.end2458 ], [ %443, %for.cond2427.preheader ]
  %kk2375.14818 = phi i32 [ %add2459, %if.end2458 ], [ %kstart2376.14825, %for.cond2427.preheader ]
  %ii2372.14816 = phi i32 [ %inc2462, %if.end2458 ], [ 0, %for.cond2427.preheader ]
  %count2371.24815 = phi i32 [ %count2371.3, %if.end2458 ], [ 0, %for.cond2427.preheader ]
  %mm.1444814 = phi i32 [ %mm.145, %if.end2458 ], [ %mm.1434823, %for.cond2427.preheader ]
  %mul2430 = shl nsw i32 %kk2375.14818, 1
  %idxprom2431 = sext i32 %mul2430 to i64
  %arrayidx2432 = getelementptr inbounds double* %call18, i64 %idxprom2431
  %455 = load double* %arrayidx2432, align 8, !tbaa !4
  %add24344057 = or i32 %mul2430, 1
  %idxprom2435 = sext i32 %add24344057 to i64
  %arrayidx2436 = getelementptr inbounds double* %call18, i64 %idxprom2435
  %456 = load double* %arrayidx2436, align 8, !tbaa !4
  %call2437 = tail call double @Zabs(double %455, double %456) #5
  %cmp2438 = fcmp ult double %call2437, %droptol
  br i1 %cmp2438, label %if.end2458, label %if.then2439

if.then2439:                                      ; preds = %for.body2429
  %idxprom2440 = sext i32 %mm.1444814 to i64
  %arrayidx2441 = getelementptr inbounds i32* %ivec, i64 %idxprom2440
  store i32 %ii2372.14816, i32* %arrayidx2441, align 4, !tbaa !3
  %457 = load double* %arrayidx2432, align 8, !tbaa !4
  %mul2445 = shl nsw i32 %mm.1444814, 1
  %idxprom2446 = sext i32 %mul2445 to i64
  %arrayidx2447 = getelementptr inbounds double* %dvec, i64 %idxprom2446
  store double %457, double* %arrayidx2447, align 8, !tbaa !4
  %458 = load double* %arrayidx2436, align 8, !tbaa !4
  %add24534058 = or i32 %mul2445, 1
  %idxprom2454 = sext i32 %add24534058 to i64
  %arrayidx2455 = getelementptr inbounds double* %dvec, i64 %idxprom2454
  store double %458, double* %arrayidx2455, align 8, !tbaa !4
  %inc2456 = add nsw i32 %mm.1444814, 1
  %inc2457 = add nsw i32 %count2371.24815, 1
  br label %if.end2458

if.end2458:                                       ; preds = %for.body2429, %if.then2439
  %mm.145 = phi i32 [ %inc2456, %if.then2439 ], [ %mm.1444814, %for.body2429 ]
  %count2371.3 = phi i32 [ %inc2457, %if.then2439 ], [ %count2371.24815, %for.body2429 ]
  %459 = trunc i64 %indvars.iv5207 to i32
  %add2459 = add nsw i32 %kk2375.14818, %459
  %inc2462 = add nsw i32 %ii2372.14816, 1
  %indvars.iv.next5208 = add i64 %indvars.iv5207, -2
  %exitcond5210 = icmp eq i32 %inc2462, %4
  br i1 %exitcond5210, label %for.end2463, label %for.body2429

for.end2463:                                      ; preds = %if.end2458, %for.cond2427.preheader
  %count2371.2.lcssa = phi i32 [ 0, %for.cond2427.preheader ], [ %count2371.3, %if.end2458 ]
  %mm.144.lcssa = phi i32 [ %mm.1434823, %for.cond2427.preheader ], [ %mm.145, %if.end2458 ]
  %inc2464 = add nsw i32 %kstart2376.14825, 1
  %460 = trunc i64 %indvars.iv5211 to i32
  %sub2465 = sub nsw i32 %460, %4
  %idxprom2466 = sext i32 %sub2465 to i64
  %arrayidx2467 = getelementptr inbounds i32* %sizes, i64 %idxprom2466
  store i32 %count2371.2.lcssa, i32* %arrayidx2467, align 4, !tbaa !3
  %indvars.iv.next5212 = add i64 %indvars.iv5211, 1
  %461 = trunc i64 %indvars.iv.next5212 to i32
  %cmp2425 = icmp slt i32 %461, %add17
  br i1 %cmp2425, label %for.cond2427.preheader, label %sw.epilog2477

sw.epilog2477:                                    ; preds = %for.cond2424.preheader, %for.end2463, %for.cond2388.preheader, %for.end2412, %for.cond2321.preheader, %for.end2360, %for.cond2285.preheader, %for.end2309, %if.else2175, %if.end2257, %for.cond2127.preheader, %for.end2165, %for.cond2092.preheader, %for.end2115, %for.cond2015.preheader, %for.end2061, %for.cond1973.preheader, %for.end2004, %for.end1947, %for.cond1849.preheader, %for.end1886, %for.end1836, %for.cond1748.preheader, %for.end1779, %for.cond1672.preheader, %for.end1712, %for.cond1635.preheader, %for.end1660, %for.end1611, %for.cond1505.preheader, %for.end1546, %for.end1491, %for.cond1414.preheader, %for.end1439, %for.cond1342.preheader, %for.end1380, %for.cond1307.preheader, %for.end1330, %for.cond1243.preheader, %for.end1282, %for.cond1207.preheader, %for.end1231, %for.cond1139.preheader, %for.end1179, %for.cond1102.preheader, %for.end1127, %for.cond1031.preheader, %for.end1077, %for.cond989.preheader, %for.end1020, %for.cond912.preheader, %for.end958, %for.cond870.preheader, %for.end901, %for.cond803.preheader, %for.end842, %for.cond711.preheader, %for.end735, %for.end656, %for.cond568.preheader, %for.end599, %for.cond493.preheader, %for.end533, %for.cond456.preheader, %for.end481, %for.end432, %for.cond326.preheader, %for.end367, %for.end312, %for.cond235.preheader, %for.end260, %for.cond164.preheader, %for.end204, %for.cond127.preheader, %for.end152, %for.cond56.preheader, %for.end102, %for.cond.preheader, %for.end, %if.else2370, %if.then2272, %if.then2080, %if.else1955, %if.else1619, %sw.bb1292, %sw.bb1191, %sw.bb1086, %sw.bb971, %if.else852, %if.else440, %sw.bb111, %sw.bb20, %if.end12, %sw.bb2073, %if.else1447, %if.else1551, %if.else1786, %if.else1891, %sw.bb1391, %sw.bb1190, %sw.bb970, %if.else268, %if.else372, %if.else606, %if.else742, %sw.bb215, %sw.bb19
  %mm.146 = phi i32 [ 0, %if.end12 ], [ 0, %sw.bb2073 ], [ 0, %sw.bb1391 ], [ 0, %if.else1786 ], [ 0, %if.else1891 ], [ 0, %if.else1447 ], [ 0, %if.else1551 ], [ 0, %sw.bb1190 ], [ 0, %sw.bb970 ], [ 0, %sw.bb215 ], [ 0, %if.else606 ], [ 0, %if.else742 ], [ 0, %if.else268 ], [ 0, %if.else372 ], [ 0, %sw.bb19 ], [ 0, %sw.bb20 ], [ 0, %sw.bb111 ], [ 0, %if.else440 ], [ 0, %if.else852 ], [ 0, %sw.bb971 ], [ 0, %sw.bb1086 ], [ 0, %sw.bb1191 ], [ 0, %sw.bb1292 ], [ 0, %if.else1619 ], [ 0, %if.else1955 ], [ 0, %if.then2080 ], [ 0, %if.then2272 ], [ 0, %if.else2370 ], [ 0, %for.cond.preheader ], [ %mm.1.lcssa, %for.end ], [ 0, %for.cond56.preheader ], [ %mm.4.lcssa, %for.end102 ], [ 0, %for.cond127.preheader ], [ %mm.7.lcssa, %for.end152 ], [ 0, %for.cond164.preheader ], [ %mm.10.lcssa, %for.end204 ], [ 0, %for.cond235.preheader ], [ %mm.13.lcssa, %for.end260 ], [ %mm.16.lcssa, %for.end312 ], [ 0, %for.cond326.preheader ], [ %mm.19.lcssa, %for.end367 ], [ %mm.23.lcssa, %for.end432 ], [ 0, %for.cond456.preheader ], [ %mm.27.lcssa, %for.end481 ], [ 0, %for.cond493.preheader ], [ %mm.30.lcssa, %for.end533 ], [ 0, %for.cond568.preheader ], [ %mm.33.lcssa, %for.end599 ], [ %mm.36.lcssa, %for.end656 ], [ %mm.38.lcssa, %for.cond711.preheader ], [ %mm.43.lcssa, %for.end735 ], [ %mm.45.lcssa, %for.cond803.preheader ], [ %mm.50.lcssa, %for.end842 ], [ 0, %for.cond870.preheader ], [ %mm.53.lcssa, %for.end901 ], [ 0, %for.cond912.preheader ], [ %mm.56.lcssa, %for.end958 ], [ 0, %for.cond989.preheader ], [ %mm.59.lcssa, %for.end1020 ], [ 0, %for.cond1031.preheader ], [ %mm.62.lcssa, %for.end1077 ], [ 0, %for.cond1102.preheader ], [ %mm.65.lcssa, %for.end1127 ], [ 0, %for.cond1139.preheader ], [ %mm.68.lcssa, %for.end1179 ], [ 0, %for.cond1207.preheader ], [ %mm.71.lcssa, %for.end1231 ], [ 0, %for.cond1243.preheader ], [ %mm.74.lcssa, %for.end1282 ], [ 0, %for.cond1307.preheader ], [ %mm.77.lcssa, %for.end1330 ], [ 0, %for.cond1342.preheader ], [ %mm.80.lcssa, %for.end1380 ], [ 0, %for.cond1414.preheader ], [ %mm.83.lcssa, %for.end1439 ], [ %mm.86.lcssa, %for.end1491 ], [ 0, %for.cond1505.preheader ], [ %mm.89.lcssa, %for.end1546 ], [ %mm.93.lcssa, %for.end1611 ], [ 0, %for.cond1635.preheader ], [ %mm.97.lcssa, %for.end1660 ], [ 0, %for.cond1672.preheader ], [ %mm.100.lcssa, %for.end1712 ], [ 0, %for.cond1748.preheader ], [ %mm.103.lcssa, %for.end1779 ], [ %mm.106.lcssa, %for.end1836 ], [ 0, %for.cond1849.preheader ], [ %mm.109.lcssa, %for.end1886 ], [ %mm.113.lcssa, %for.end1947 ], [ 0, %for.cond1973.preheader ], [ %mm.117.lcssa, %for.end2004 ], [ 0, %for.cond2015.preheader ], [ %mm.120.lcssa, %for.end2061 ], [ 0, %for.cond2092.preheader ], [ %mm.123.lcssa, %for.end2115 ], [ 0, %for.cond2127.preheader ], [ %mm.126.lcssa, %for.end2165 ], [ 0, %if.else2175 ], [ %mm.133, %if.end2257 ], [ 0, %for.cond2285.preheader ], [ %mm.135.lcssa, %for.end2309 ], [ 0, %for.cond2321.preheader ], [ %mm.138.lcssa, %for.end2360 ], [ 0, %for.cond2388.preheader ], [ %mm.141.lcssa, %for.end2412 ], [ 0, %for.cond2424.preheader ], [ %mm.144.lcssa, %for.end2463 ]
  ret i32 %mm.146
}

; Function Attrs: nounwind optsize readnone
declare double @fabs(double) #4

; Function Attrs: optsize
declare double @Zabs(double, double) #3

; Function Attrs: nounwind optsize uwtable
define i32 @Chv_countEntries(%struct._Chv* %chv, i32 %npivot, i32* %pivotsizes, i32 %countflag) #0 {
entry:
  %nD = alloca i32, align 4
  %nL = alloca i32, align 4
  %nU = alloca i32, align 4
  %cmp = icmp eq %struct._Chv* %chv, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([59 x i8]* @.str8, i64 0, i64 0), %struct._Chv* null, i32 %npivot, i32* %pivotsizes, i32 %countflag) #5
  call void @exit(i32 -1) #6
  unreachable

if.end:                                           ; preds = %entry
  %countflag.off = add i32 %countflag, -1
  %1 = icmp ugt i32 %countflag.off, 6
  br i1 %1, label %if.then3, label %if.end5

if.then3:                                         ; preds = %if.end
  %2 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call4 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([352 x i8]* @.str9, i64 0, i64 0), %struct._Chv* %chv, i32 %npivot, i32* %pivotsizes, i32 %countflag, i32 %countflag) #5
  call void @exit(i32 -1) #6
  unreachable

if.end5:                                          ; preds = %if.end
  %symflag = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 5
  %3 = load i32* %symflag, align 4, !tbaa !3
  %switch = icmp ult i32 %3, 2
  br i1 %switch, label %land.lhs.true, label %if.end17

land.lhs.true:                                    ; preds = %if.end5
  switch i32 %countflag, label %if.end17 [
    i32 5, label %if.then15
    i32 4, label %if.then15
    i32 1, label %if.then15
  ]

if.then15:                                        ; preds = %land.lhs.true, %land.lhs.true, %land.lhs.true
  %4 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call16 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([106 x i8]* @.str10, i64 0, i64 0), %struct._Chv* %chv, i32 %npivot, i32* %pivotsizes, i32 %countflag, i32 %countflag) #5
  call void @exit(i32 -1) #6
  unreachable

if.end17:                                         ; preds = %if.end5, %land.lhs.true
  call void @Chv_dimensions(%struct._Chv* %chv, i32* %nD, i32* %nL, i32* %nU) #5
  switch i32 %countflag, label %sw.epilog [
    i32 1, label %sw.bb
    i32 2, label %sw.bb19
    i32 3, label %sw.bb31
    i32 4, label %sw.bb54
    i32 5, label %sw.bb58
    i32 6, label %sw.bb60
    i32 7, label %sw.bb79
  ]

sw.bb:                                            ; preds = %if.end17
  %5 = load i32* %nD, align 4, !tbaa !3
  %sub = add nsw i32 %5, -1
  %mul = mul nsw i32 %sub, %5
  %div = sdiv i32 %mul, 2
  %6 = load i32* %nL, align 4, !tbaa !3
  %mul18 = mul nsw i32 %6, %5
  %add = add nsw i32 %mul18, %div
  br label %sw.epilog

sw.bb19:                                          ; preds = %if.end17
  %7 = load i32* %symflag, align 4, !tbaa !3
  %switch115 = icmp ugt i32 %7, 1
  %cmp26 = icmp eq i32* %pivotsizes, null
  %or.cond = or i1 %switch115, %cmp26
  %8 = load i32* %nD, align 4, !tbaa !3
  br i1 %or.cond, label %sw.epilog, label %if.then27

if.then27:                                        ; preds = %sw.bb19
  %mul28 = shl nsw i32 %8, 1
  %sub29 = sub nsw i32 %mul28, %npivot
  br label %sw.epilog

sw.bb31:                                          ; preds = %if.end17
  %9 = load i32* %symflag, align 4, !tbaa !3
  %switch116 = icmp ugt i32 %9, 1
  %cmp38 = icmp eq i32* %pivotsizes, null
  %or.cond117 = or i1 %switch116, %cmp38
  %10 = load i32* %nD, align 4, !tbaa !3
  %sub48 = add nsw i32 %10, -1
  %mul49 = mul nsw i32 %sub48, %10
  %div50 = sdiv i32 %mul49, 2
  %11 = load i32* %nU, align 4, !tbaa !3
  %mul51 = mul nsw i32 %11, %10
  br i1 %or.cond117, label %if.else47, label %if.then39

if.then39:                                        ; preds = %sw.bb31
  %sub43 = sub i32 %npivot, %10
  %add44 = add i32 %sub43, %div50
  %add46 = add i32 %add44, %mul51
  br label %sw.epilog

if.else47:                                        ; preds = %sw.bb31
  %add52 = add nsw i32 %mul51, %div50
  br label %sw.epilog

sw.bb54:                                          ; preds = %if.end17
  %12 = load i32* %nD, align 4, !tbaa !3
  %sub55 = add nsw i32 %12, -1
  %mul56 = mul nsw i32 %sub55, %12
  %div57 = sdiv i32 %mul56, 2
  br label %sw.epilog

sw.bb58:                                          ; preds = %if.end17
  %13 = load i32* %nD, align 4, !tbaa !3
  %14 = load i32* %nL, align 4, !tbaa !3
  %mul59 = mul nsw i32 %14, %13
  br label %sw.epilog

sw.bb60:                                          ; preds = %if.end17
  %15 = load i32* %symflag, align 4, !tbaa !3
  %switch118 = icmp ugt i32 %15, 1
  %cmp67 = icmp eq i32* %pivotsizes, null
  %or.cond119 = or i1 %switch118, %cmp67
  %16 = load i32* %nD, align 4, !tbaa !3
  %sub75 = add nsw i32 %16, -1
  %mul76 = mul nsw i32 %sub75, %16
  %div77 = sdiv i32 %mul76, 2
  br i1 %or.cond119, label %sw.epilog, label %if.then68

if.then68:                                        ; preds = %sw.bb60
  %sub72 = sub i32 %npivot, %16
  %add73 = add i32 %sub72, %div77
  br label %sw.epilog

sw.bb79:                                          ; preds = %if.end17
  %17 = load i32* %nD, align 4, !tbaa !3
  %18 = load i32* %nU, align 4, !tbaa !3
  %mul80 = mul nsw i32 %18, %17
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb60, %sw.bb19, %if.then68, %if.then39, %if.else47, %if.then27, %if.end17, %sw.bb79, %sw.bb58, %sw.bb54, %sw.bb
  %count.0 = phi i32 [ undef, %if.end17 ], [ %mul80, %sw.bb79 ], [ %add73, %if.then68 ], [ %mul59, %sw.bb58 ], [ %div57, %sw.bb54 ], [ %add46, %if.then39 ], [ %add52, %if.else47 ], [ %sub29, %if.then27 ], [ %add, %sw.bb ], [ %8, %sw.bb19 ], [ %div77, %sw.bb60 ]
  ret i32 %count.0
}

; Function Attrs: optsize
declare void @Chv_dimensions(%struct._Chv*, i32*, i32*, i32*) #3

; Function Attrs: nounwind optsize uwtable
define i32 @Chv_countBigEntries(%struct._Chv* %chv, i32 %npivot, i32* %pivotsizes, i32 %countflag, double %droptol) #0 {
entry:
  %nD = alloca i32, align 4
  %nL = alloca i32, align 4
  %nU = alloca i32, align 4
  %cmp = icmp eq %struct._Chv* %chv, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([65 x i8]* @.str11, i64 0, i64 0), %struct._Chv* null, i32 %npivot, i32* %pivotsizes, i32 %countflag, double %droptol) #5
  call void @exit(i32 -1) #6
  unreachable

if.end:                                           ; preds = %entry
  switch i32 %countflag, label %sw.default [
    i32 1, label %sw.epilog
    i32 3, label %sw.epilog
    i32 4, label %sw.epilog
    i32 5, label %sw.epilog
    i32 6, label %sw.epilog
    i32 7, label %sw.epilog
  ]

sw.default:                                       ; preds = %if.end
  %1 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call1 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([351 x i8]* @.str12, i64 0, i64 0), %struct._Chv* %chv, i32 %npivot, i32* %pivotsizes, i32 %countflag, double %droptol, i32 %countflag) #5
  call void @exit(i32 -1) #6
  unreachable

sw.epilog:                                        ; preds = %if.end, %if.end, %if.end, %if.end, %if.end, %if.end
  %symflag = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 5
  %2 = load i32* %symflag, align 4, !tbaa !3
  %switch = icmp ult i32 %2, 2
  br i1 %switch, label %land.lhs.true, label %if.end12

land.lhs.true:                                    ; preds = %sw.epilog
  switch i32 %countflag, label %if.end12 [
    i32 5, label %if.then10
    i32 4, label %if.then10
    i32 1, label %if.then10
  ]

if.then10:                                        ; preds = %land.lhs.true, %land.lhs.true, %land.lhs.true
  %3 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call11 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([112 x i8]* @.str13, i64 0, i64 0), %struct._Chv* %chv, i32 %npivot, i32* %pivotsizes, i32 %countflag, double %droptol, i32 %countflag) #5
  call void @exit(i32 -1) #6
  unreachable

if.end12:                                         ; preds = %sw.epilog, %land.lhs.true
  call void @Chv_dimensions(%struct._Chv* %chv, i32* %nD, i32* %nL, i32* %nU) #5
  %call13 = call double* @Chv_entries(%struct._Chv* %chv) #5
  switch i32 %countflag, label %sw.epilog894 [
    i32 1, label %sw.bb14
    i32 3, label %sw.bb77
    i32 4, label %sw.bb378
    i32 5, label %sw.bb451
    i32 6, label %sw.bb523
    i32 7, label %sw.bb751
  ]

sw.bb14:                                          ; preds = %if.end12
  %4 = load i32* %nD, align 4, !tbaa !3
  %5 = load i32* %nL, align 4, !tbaa !3
  %add = add i32 %5, %4
  %sub = add nsw i32 %add, -1
  %6 = load i32* %nU, align 4, !tbaa !3
  %type = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 4
  %7 = load i32* %type, align 4, !tbaa !3
  switch i32 %7, label %sw.epilog894 [
    i32 1, label %for.cond.preheader
    i32 2, label %for.cond41.preheader
  ]

for.cond41.preheader:                             ; preds = %sw.bb14
  %cmp421395 = icmp sgt i32 %add, 0
  br i1 %cmp421395, label %for.body43.lr.ph, label %sw.epilog894

for.body43.lr.ph:                                 ; preds = %for.cond41.preheader
  %8 = add i32 %5, %6
  %9 = shl i32 %4, 1
  %10 = add i32 %8, %9
  %11 = add i32 %10, -1
  %12 = sext i32 %11 to i64
  br label %for.body43

for.cond.preheader:                               ; preds = %sw.bb14
  %cmp211383 = icmp sgt i32 %add, 0
  br i1 %cmp211383, label %for.body.lr.ph, label %sw.epilog894

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %13 = add i32 %5, %6
  %14 = shl i32 %4, 1
  %15 = add i32 %13, %14
  %16 = add i32 %15, -1
  %17 = sext i32 %16 to i64
  br label %for.body

for.body:                                         ; preds = %for.end, %for.body.lr.ph
  %count.01386 = phi i32 [ 0, %for.body.lr.ph ], [ %count.1.lcssa, %for.end ]
  %ii.01385 = phi i32 [ 0, %for.body.lr.ph ], [ %inc36, %for.end ]
  %kstart.01384 = phi i32 [ %sub, %for.body.lr.ph ], [ %dec, %for.end ]
  %cmp22 = icmp slt i32 %ii.01385, %4
  %.sink = select i1 %cmp22, i32 %ii.01385, i32 %4
  %sub23 = add nsw i32 %.sink, -1
  %cmp261378 = icmp slt i32 %.sink, 1
  br i1 %cmp261378, label %for.end, label %for.body27

for.body27:                                       ; preds = %for.body, %for.body27
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body27 ], [ %17, %for.body ]
  %count.11382 = phi i32 [ %count.2, %for.body27 ], [ %count.01386, %for.body ]
  %jj.01381 = phi i32 [ %inc34, %for.body27 ], [ 0, %for.body ]
  %kk.01379 = phi i32 [ %add32, %for.body27 ], [ %kstart.01384, %for.body ]
  %idxprom = sext i32 %kk.01379 to i64
  %arrayidx = getelementptr inbounds double* %call13, i64 %idxprom
  %18 = load double* %arrayidx, align 8, !tbaa !4
  %call28 = call double @fabs(double %18) #7
  %not.cmp29 = fcmp oge double %call28, %droptol
  %inc = zext i1 %not.cmp29 to i32
  %count.2 = add nsw i32 %inc, %count.11382
  %19 = trunc i64 %indvars.iv to i32
  %add32 = add nsw i32 %19, %kk.01379
  %inc34 = add nsw i32 %jj.01381, 1
  %cmp26 = icmp slt i32 %jj.01381, %sub23
  %indvars.iv.next = add i64 %indvars.iv, -2
  br i1 %cmp26, label %for.body27, label %for.end

for.end:                                          ; preds = %for.body27, %for.body
  %count.1.lcssa = phi i32 [ %count.01386, %for.body ], [ %count.2, %for.body27 ]
  %dec = add nsw i32 %kstart.01384, -1
  %inc36 = add nsw i32 %ii.01385, 1
  %exitcond = icmp eq i32 %inc36, %add
  br i1 %exitcond, label %sw.epilog894, label %for.body

for.body43:                                       ; preds = %for.end70.for.body43_crit_edge, %for.body43.lr.ph
  %20 = phi i32 [ %4, %for.body43.lr.ph ], [ %.pre1816, %for.end70.for.body43_crit_edge ]
  %count.31398 = phi i32 [ 0, %for.body43.lr.ph ], [ %count.4.lcssa, %for.end70.for.body43_crit_edge ]
  %ii.11397 = phi i32 [ 0, %for.body43.lr.ph ], [ %inc73, %for.end70.for.body43_crit_edge ]
  %kstart.11396 = phi i32 [ %sub, %for.body43.lr.ph ], [ %dec71, %for.end70.for.body43_crit_edge ]
  %cmp44 = icmp slt i32 %ii.11397, %20
  %.sink896 = select i1 %cmp44, i32 %ii.11397, i32 %20
  %sub46 = add nsw i32 %.sink896, -1
  %cmp521388 = icmp slt i32 %.sink896, 1
  br i1 %cmp521388, label %for.end70, label %for.body53

for.body53:                                       ; preds = %for.body43, %for.body53
  %indvars.iv1693 = phi i64 [ %indvars.iv.next1694, %for.body53 ], [ %12, %for.body43 ]
  %count.41392 = phi i32 [ %count.5, %for.body53 ], [ %count.31398, %for.body43 ]
  %jj.11391 = phi i32 [ %inc69, %for.body53 ], [ 0, %for.body43 ]
  %kk.11389 = phi i32 [ %add66, %for.body53 ], [ %kstart.11396, %for.body43 ]
  %mul54 = shl nsw i32 %kk.11389, 1
  %idxprom55 = sext i32 %mul54 to i64
  %arrayidx56 = getelementptr inbounds double* %call13, i64 %idxprom55
  %21 = load double* %arrayidx56, align 8, !tbaa !4
  %add581374 = or i32 %mul54, 1
  %idxprom59 = sext i32 %add581374 to i64
  %arrayidx60 = getelementptr inbounds double* %call13, i64 %idxprom59
  %22 = load double* %arrayidx60, align 8, !tbaa !4
  %call61 = call double @Zabs(double %21, double %22) #5
  %not.cmp62 = fcmp oge double %call61, %droptol
  %inc64 = zext i1 %not.cmp62 to i32
  %count.5 = add nsw i32 %inc64, %count.41392
  %23 = trunc i64 %indvars.iv1693 to i32
  %add66 = add nsw i32 %23, %kk.11389
  %inc69 = add nsw i32 %jj.11391, 1
  %cmp52 = icmp slt i32 %jj.11391, %sub46
  %indvars.iv.next1694 = add i64 %indvars.iv1693, -2
  br i1 %cmp52, label %for.body53, label %for.end70

for.end70:                                        ; preds = %for.body53, %for.body43
  %count.4.lcssa = phi i32 [ %count.31398, %for.body43 ], [ %count.5, %for.body53 ]
  %inc73 = add nsw i32 %ii.11397, 1
  %exitcond1696 = icmp eq i32 %inc73, %add
  br i1 %exitcond1696, label %sw.epilog894, label %for.end70.for.body43_crit_edge

for.end70.for.body43_crit_edge:                   ; preds = %for.end70
  %dec71 = add nsw i32 %kstart.11396, -1
  %.pre1816 = load i32* %nD, align 4, !tbaa !3
  br label %for.body43

sw.bb77:                                          ; preds = %if.end12
  %24 = load i32* %nD, align 4, !tbaa !3
  %25 = load i32* %nU, align 4, !tbaa !3
  %add84 = add i32 %25, %24
  %26 = load i32* %symflag, align 4, !tbaa !3
  %switch1375 = icmp ult i32 %26, 2
  br i1 %switch1375, label %if.then90, label %if.else298

if.then90:                                        ; preds = %sw.bb77
  %cmp93 = icmp eq i32* %pivotsizes, null
  %type95 = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 4
  %27 = load i32* %type95, align 4, !tbaa !3
  %cmp96 = icmp eq i32 %27, 1
  br i1 %cmp93, label %if.then94, label %if.else167

if.then94:                                        ; preds = %if.then90
  br i1 %cmp96, label %for.cond98.preheader, label %if.else127

for.cond98.preheader:                             ; preds = %if.then94
  %cmp991407 = icmp sgt i32 %add84, 0
  br i1 %cmp991407, label %for.body100.lr.ph, label %sw.epilog894

for.body100.lr.ph:                                ; preds = %for.cond98.preheader
  %28 = sext i32 %add84 to i64
  br label %for.body100

for.body100:                                      ; preds = %for.end122, %for.body100.lr.ph
  %count.61410 = phi i32 [ 0, %for.body100.lr.ph ], [ %count.7.lcssa, %for.end122 ]
  %kstart82.01409 = phi i32 [ 0, %for.body100.lr.ph ], [ %inc123, %for.end122 ]
  %cmp101 = icmp slt i32 %kstart82.01409, %24
  %.sink897 = select i1 %cmp101, i32 %kstart82.01409, i32 %24
  %sub103 = add nsw i32 %.sink897, -1
  %cmp1091400 = icmp slt i32 %.sink897, 1
  br i1 %cmp1091400, label %for.end122, label %for.body110

for.body110:                                      ; preds = %for.body100, %for.body110
  %indvars.iv1697.in = phi i64 [ %indvars.iv1697, %for.body110 ], [ %28, %for.body100 ]
  %count.71404 = phi i32 [ %count.8, %for.body110 ], [ %count.61410, %for.body100 ]
  %kk81.01403 = phi i32 [ %add118, %for.body110 ], [ %kstart82.01409, %for.body100 ]
  %ii78.01401 = phi i32 [ %inc121, %for.body110 ], [ 0, %for.body100 ]
  %indvars.iv1697 = add i64 %indvars.iv1697.in, -1
  %idxprom111 = sext i32 %kk81.01403 to i64
  %arrayidx112 = getelementptr inbounds double* %call13, i64 %idxprom111
  %29 = load double* %arrayidx112, align 8, !tbaa !4
  %call113 = call double @fabs(double %29) #7
  %not.cmp114 = fcmp oge double %call113, %droptol
  %inc116 = zext i1 %not.cmp114 to i32
  %count.8 = add nsw i32 %inc116, %count.71404
  %30 = trunc i64 %indvars.iv1697 to i32
  %add118 = add nsw i32 %kk81.01403, %30
  %inc121 = add nsw i32 %ii78.01401, 1
  %cmp109 = icmp slt i32 %ii78.01401, %sub103
  br i1 %cmp109, label %for.body110, label %for.end122

for.end122:                                       ; preds = %for.body110, %for.body100
  %count.7.lcssa = phi i32 [ %count.61410, %for.body100 ], [ %count.8, %for.body110 ]
  %inc123 = add nsw i32 %kstart82.01409, 1
  %exitcond1700 = icmp eq i32 %inc123, %add84
  br i1 %exitcond1700, label %sw.epilog894, label %for.body100

if.else127:                                       ; preds = %if.then94
  %cmp129 = icmp eq i32 %27, 2
  %cmp1321419 = icmp sgt i32 %add84, 0
  %or.cond = and i1 %cmp129, %cmp1321419
  br i1 %or.cond, label %for.body133.lr.ph, label %sw.epilog894

for.body133.lr.ph:                                ; preds = %if.else127
  %31 = sext i32 %add84 to i64
  br label %for.body133

for.body133:                                      ; preds = %for.end160.for.body133_crit_edge, %for.body133.lr.ph
  %32 = phi i32 [ %24, %for.body133.lr.ph ], [ %.pre1817, %for.end160.for.body133_crit_edge ]
  %count.91422 = phi i32 [ 0, %for.body133.lr.ph ], [ %count.10.lcssa, %for.end160.for.body133_crit_edge ]
  %kstart82.11421 = phi i32 [ 0, %for.body133.lr.ph ], [ %inc161, %for.end160.for.body133_crit_edge ]
  %cmp134 = icmp slt i32 %kstart82.11421, %32
  %.sink898 = select i1 %cmp134, i32 %kstart82.11421, i32 %32
  %sub136 = add nsw i32 %.sink898, -1
  %cmp1421412 = icmp slt i32 %.sink898, 1
  br i1 %cmp1421412, label %for.end160, label %for.body143

for.body143:                                      ; preds = %for.body133, %for.body143
  %indvars.iv1701.in = phi i64 [ %indvars.iv1701, %for.body143 ], [ %31, %for.body133 ]
  %count.101416 = phi i32 [ %count.11, %for.body143 ], [ %count.91422, %for.body133 ]
  %kk81.11415 = phi i32 [ %add156, %for.body143 ], [ %kstart82.11421, %for.body133 ]
  %ii78.11413 = phi i32 [ %inc159, %for.body143 ], [ 0, %for.body133 ]
  %indvars.iv1701 = add i64 %indvars.iv1701.in, -1
  %mul144 = shl nsw i32 %kk81.11415, 1
  %idxprom145 = sext i32 %mul144 to i64
  %arrayidx146 = getelementptr inbounds double* %call13, i64 %idxprom145
  %33 = load double* %arrayidx146, align 8, !tbaa !4
  %add1481373 = or i32 %mul144, 1
  %idxprom149 = sext i32 %add1481373 to i64
  %arrayidx150 = getelementptr inbounds double* %call13, i64 %idxprom149
  %34 = load double* %arrayidx150, align 8, !tbaa !4
  %call151 = call double @Zabs(double %33, double %34) #5
  %not.cmp152 = fcmp oge double %call151, %droptol
  %inc154 = zext i1 %not.cmp152 to i32
  %count.11 = add nsw i32 %inc154, %count.101416
  %35 = trunc i64 %indvars.iv1701 to i32
  %add156 = add nsw i32 %kk81.11415, %35
  %inc159 = add nsw i32 %ii78.11413, 1
  %cmp142 = icmp slt i32 %ii78.11413, %sub136
  br i1 %cmp142, label %for.body143, label %for.end160

for.end160:                                       ; preds = %for.body143, %for.body133
  %count.10.lcssa = phi i32 [ %count.91422, %for.body133 ], [ %count.11, %for.body143 ]
  %inc161 = add nsw i32 %kstart82.11421, 1
  %exitcond1704 = icmp eq i32 %inc161, %add84
  br i1 %exitcond1704, label %sw.epilog894, label %for.end160.for.body133_crit_edge

for.end160.for.body133_crit_edge:                 ; preds = %for.end160
  %.pre1817 = load i32* %nD, align 4, !tbaa !3
  br label %for.body133

if.else167:                                       ; preds = %if.then90
  br i1 %cmp96, label %for.cond171.preheader, label %if.else226

for.cond171.preheader:                            ; preds = %if.else167
  %cmp1721448 = icmp sgt i32 %npivot, 0
  br i1 %cmp1721448, label %for.body173.lr.ph, label %for.end203

for.body173.lr.ph:                                ; preds = %for.cond171.preheader
  %36 = add i32 %add84, -1
  %37 = sext i32 %36 to i64
  br label %for.body173

for.body173:                                      ; preds = %for.end199, %for.body173.lr.ph
  %indvars.iv1714 = phi i64 [ 0, %for.body173.lr.ph ], [ %indvars.iv.next1715, %for.end199 ]
  %count.121452 = phi i32 [ 0, %for.body173.lr.ph ], [ %count.13.lcssa, %for.end199 ]
  %kstart82.21451 = phi i32 [ 0, %for.body173.lr.ph ], [ %kstart82.3.lcssa, %for.end199 ]
  %first.01449 = phi i32 [ 0, %for.body173.lr.ph ], [ %add176, %for.end199 ]
  %arrayidx175 = getelementptr inbounds i32* %pivotsizes, i64 %indvars.iv1714
  %38 = load i32* %arrayidx175, align 4, !tbaa !3
  %add176 = add nsw i32 %38, %first.01449
  %sub177 = add nsw i32 %add176, -1
  %cmp1791442 = icmp sgt i32 %first.01449, %sub177
  br i1 %cmp1791442, label %for.end199, label %for.cond181.preheader.lr.ph

for.cond181.preheader.lr.ph:                      ; preds = %for.body173
  %cmp1821436 = icmp sgt i32 %first.01449, 0
  %39 = add i32 %kstart82.21451, 1
  %40 = add i32 %first.01449, -1
  %41 = add i32 %40, %38
  %42 = icmp sgt i32 %first.01449, %41
  %smax = select i1 %42, i32 %first.01449, i32 %41
  %43 = add i32 %39, %smax
  br label %for.cond181.preheader

for.cond181.preheader:                            ; preds = %for.end195, %for.cond181.preheader.lr.ph
  %count.131445 = phi i32 [ %count.121452, %for.cond181.preheader.lr.ph ], [ %count.14.lcssa, %for.end195 ]
  %kstart82.31444 = phi i32 [ %kstart82.21451, %for.cond181.preheader.lr.ph ], [ %inc196, %for.end195 ]
  %jj79.21443 = phi i32 [ %first.01449, %for.cond181.preheader.lr.ph ], [ %inc198, %for.end195 ]
  br i1 %cmp1821436, label %for.body183, label %for.end195

for.body183:                                      ; preds = %for.cond181.preheader, %for.body183
  %indvars.iv1710 = phi i64 [ %indvars.iv.next1711, %for.body183 ], [ %37, %for.cond181.preheader ]
  %count.141440 = phi i32 [ %count.15, %for.body183 ], [ %count.131445, %for.cond181.preheader ]
  %kk81.21439 = phi i32 [ %add191, %for.body183 ], [ %kstart82.31444, %for.cond181.preheader ]
  %ii78.21437 = phi i32 [ %inc194, %for.body183 ], [ 0, %for.cond181.preheader ]
  %idxprom184 = sext i32 %kk81.21439 to i64
  %arrayidx185 = getelementptr inbounds double* %call13, i64 %idxprom184
  %44 = load double* %arrayidx185, align 8, !tbaa !4
  %call186 = call double @fabs(double %44) #7
  %not.cmp187 = fcmp oge double %call186, %droptol
  %inc189 = zext i1 %not.cmp187 to i32
  %count.15 = add nsw i32 %inc189, %count.141440
  %45 = trunc i64 %indvars.iv1710 to i32
  %add191 = add nsw i32 %kk81.21439, %45
  %inc194 = add nsw i32 %ii78.21437, 1
  %indvars.iv.next1711 = add i64 %indvars.iv1710, -1
  %exitcond1713 = icmp eq i32 %inc194, %first.01449
  br i1 %exitcond1713, label %for.end195, label %for.body183

for.end195:                                       ; preds = %for.body183, %for.cond181.preheader
  %count.14.lcssa = phi i32 [ %count.131445, %for.cond181.preheader ], [ %count.15, %for.body183 ]
  %inc196 = add nsw i32 %kstart82.31444, 1
  %inc198 = add nsw i32 %jj79.21443, 1
  %cmp179 = icmp slt i32 %jj79.21443, %sub177
  br i1 %cmp179, label %for.cond181.preheader, label %for.cond178.for.end199_crit_edge

for.cond178.for.end199_crit_edge:                 ; preds = %for.end195
  %46 = sub i32 %43, %first.01449
  br label %for.end199

for.end199:                                       ; preds = %for.cond178.for.end199_crit_edge, %for.body173
  %count.13.lcssa = phi i32 [ %count.14.lcssa, %for.cond178.for.end199_crit_edge ], [ %count.121452, %for.body173 ]
  %kstart82.3.lcssa = phi i32 [ %46, %for.cond178.for.end199_crit_edge ], [ %kstart82.21451, %for.body173 ]
  %indvars.iv.next1715 = add i64 %indvars.iv1714, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next1715 to i32
  %exitcond1716 = icmp eq i32 %lftr.wideiv, %npivot
  br i1 %exitcond1716, label %for.end203, label %for.body173

for.end203:                                       ; preds = %for.end199, %for.cond171.preheader
  %count.12.lcssa = phi i32 [ 0, %for.cond171.preheader ], [ %count.13.lcssa, %for.end199 ]
  %kstart82.2.lcssa = phi i32 [ 0, %for.cond171.preheader ], [ %kstart82.3.lcssa, %for.end199 ]
  %cmp2051431 = icmp slt i32 %24, %add84
  br i1 %cmp2051431, label %for.cond207.preheader.lr.ph, label %sw.epilog894

for.cond207.preheader.lr.ph:                      ; preds = %for.end203
  %cmp2081424 = icmp sgt i32 %24, 0
  %47 = sext i32 %add84 to i64
  %48 = add i32 %kstart82.2.lcssa, %25
  br label %for.cond207.preheader

for.cond207.preheader:                            ; preds = %for.end221, %for.cond207.preheader.lr.ph
  %count.161434 = phi i32 [ %count.12.lcssa, %for.cond207.preheader.lr.ph ], [ %count.17.lcssa, %for.end221 ]
  %kstart82.41433 = phi i32 [ %kstart82.2.lcssa, %for.cond207.preheader.lr.ph ], [ %inc222, %for.end221 ]
  br i1 %cmp2081424, label %for.body209, label %for.end221

for.body209:                                      ; preds = %for.cond207.preheader, %for.body209
  %indvars.iv1705.in = phi i64 [ %indvars.iv1705, %for.body209 ], [ %47, %for.cond207.preheader ]
  %count.171428 = phi i32 [ %count.18, %for.body209 ], [ %count.161434, %for.cond207.preheader ]
  %kk81.31427 = phi i32 [ %add217, %for.body209 ], [ %kstart82.41433, %for.cond207.preheader ]
  %ii78.31425 = phi i32 [ %inc220, %for.body209 ], [ 0, %for.cond207.preheader ]
  %indvars.iv1705 = add i64 %indvars.iv1705.in, -1
  %idxprom210 = sext i32 %kk81.31427 to i64
  %arrayidx211 = getelementptr inbounds double* %call13, i64 %idxprom210
  %49 = load double* %arrayidx211, align 8, !tbaa !4
  %call212 = call double @fabs(double %49) #7
  %not.cmp213 = fcmp oge double %call212, %droptol
  %inc215 = zext i1 %not.cmp213 to i32
  %count.18 = add nsw i32 %inc215, %count.171428
  %50 = trunc i64 %indvars.iv1705 to i32
  %add217 = add nsw i32 %kk81.31427, %50
  %inc220 = add nsw i32 %ii78.31425, 1
  %exitcond1708 = icmp eq i32 %inc220, %24
  br i1 %exitcond1708, label %for.end221, label %for.body209

for.end221:                                       ; preds = %for.body209, %for.cond207.preheader
  %count.17.lcssa = phi i32 [ %count.161434, %for.cond207.preheader ], [ %count.18, %for.body209 ]
  %inc222 = add nsw i32 %kstart82.41433, 1
  %exitcond1709 = icmp eq i32 %inc222, %48
  br i1 %exitcond1709, label %sw.epilog894, label %for.cond207.preheader

if.else226:                                       ; preds = %if.else167
  %cmp228 = icmp eq i32 %27, 2
  br i1 %cmp228, label %for.cond230.preheader, label %sw.epilog894

for.cond230.preheader:                            ; preds = %if.else226
  %cmp2311479 = icmp sgt i32 %npivot, 0
  br i1 %cmp2311479, label %for.body232.lr.ph, label %for.end267

for.body232.lr.ph:                                ; preds = %for.cond230.preheader
  %51 = add i32 %add84, -1
  %52 = sext i32 %51 to i64
  br label %for.body232

for.body232:                                      ; preds = %for.end263, %for.body232.lr.ph
  %indvars.iv1726 = phi i64 [ 0, %for.body232.lr.ph ], [ %indvars.iv.next1727, %for.end263 ]
  %count.191483 = phi i32 [ 0, %for.body232.lr.ph ], [ %count.20.lcssa, %for.end263 ]
  %kstart82.51482 = phi i32 [ 0, %for.body232.lr.ph ], [ %kstart82.6.lcssa, %for.end263 ]
  %first.11480 = phi i32 [ 0, %for.body232.lr.ph ], [ %add235, %for.end263 ]
  %arrayidx234 = getelementptr inbounds i32* %pivotsizes, i64 %indvars.iv1726
  %53 = load i32* %arrayidx234, align 4, !tbaa !3
  %add235 = add nsw i32 %53, %first.11480
  %sub236 = add nsw i32 %add235, -1
  %cmp2381473 = icmp sgt i32 %first.11480, %sub236
  br i1 %cmp2381473, label %for.end263, label %for.cond240.preheader.lr.ph

for.cond240.preheader.lr.ph:                      ; preds = %for.body232
  %cmp2411467 = icmp sgt i32 %first.11480, 0
  %54 = add i32 %kstart82.51482, 1
  %55 = add i32 %first.11480, -1
  %56 = add i32 %55, %53
  %57 = icmp sgt i32 %first.11480, %56
  %smax1725 = select i1 %57, i32 %first.11480, i32 %56
  %58 = add i32 %54, %smax1725
  br label %for.cond240.preheader

for.cond240.preheader:                            ; preds = %for.end259, %for.cond240.preheader.lr.ph
  %count.201476 = phi i32 [ %count.191483, %for.cond240.preheader.lr.ph ], [ %count.21.lcssa, %for.end259 ]
  %kstart82.61475 = phi i32 [ %kstart82.51482, %for.cond240.preheader.lr.ph ], [ %inc260, %for.end259 ]
  %jj79.41474 = phi i32 [ %first.11480, %for.cond240.preheader.lr.ph ], [ %inc262, %for.end259 ]
  br i1 %cmp2411467, label %for.body242, label %for.end259

for.body242:                                      ; preds = %for.cond240.preheader, %for.body242
  %indvars.iv1721 = phi i64 [ %indvars.iv.next1722, %for.body242 ], [ %52, %for.cond240.preheader ]
  %count.211471 = phi i32 [ %count.22, %for.body242 ], [ %count.201476, %for.cond240.preheader ]
  %kk81.41470 = phi i32 [ %add255, %for.body242 ], [ %kstart82.61475, %for.cond240.preheader ]
  %ii78.41468 = phi i32 [ %inc258, %for.body242 ], [ 0, %for.cond240.preheader ]
  %mul243 = shl nsw i32 %kk81.41470, 1
  %idxprom244 = sext i32 %mul243 to i64
  %arrayidx245 = getelementptr inbounds double* %call13, i64 %idxprom244
  %59 = load double* %arrayidx245, align 8, !tbaa !4
  %add2471372 = or i32 %mul243, 1
  %idxprom248 = sext i32 %add2471372 to i64
  %arrayidx249 = getelementptr inbounds double* %call13, i64 %idxprom248
  %60 = load double* %arrayidx249, align 8, !tbaa !4
  %call250 = call double @Zabs(double %59, double %60) #5
  %not.cmp251 = fcmp oge double %call250, %droptol
  %inc253 = zext i1 %not.cmp251 to i32
  %count.22 = add nsw i32 %inc253, %count.211471
  %61 = trunc i64 %indvars.iv1721 to i32
  %add255 = add nsw i32 %kk81.41470, %61
  %inc258 = add nsw i32 %ii78.41468, 1
  %indvars.iv.next1722 = add i64 %indvars.iv1721, -1
  %exitcond1724 = icmp eq i32 %inc258, %first.11480
  br i1 %exitcond1724, label %for.end259, label %for.body242

for.end259:                                       ; preds = %for.body242, %for.cond240.preheader
  %count.21.lcssa = phi i32 [ %count.201476, %for.cond240.preheader ], [ %count.22, %for.body242 ]
  %inc260 = add nsw i32 %kstart82.61475, 1
  %inc262 = add nsw i32 %jj79.41474, 1
  %cmp238 = icmp slt i32 %jj79.41474, %sub236
  br i1 %cmp238, label %for.cond240.preheader, label %for.cond237.for.end263_crit_edge

for.cond237.for.end263_crit_edge:                 ; preds = %for.end259
  %62 = sub i32 %58, %first.11480
  br label %for.end263

for.end263:                                       ; preds = %for.cond237.for.end263_crit_edge, %for.body232
  %count.20.lcssa = phi i32 [ %count.21.lcssa, %for.cond237.for.end263_crit_edge ], [ %count.191483, %for.body232 ]
  %kstart82.6.lcssa = phi i32 [ %62, %for.cond237.for.end263_crit_edge ], [ %kstart82.51482, %for.body232 ]
  %indvars.iv.next1727 = add i64 %indvars.iv1726, 1
  %lftr.wideiv1728 = trunc i64 %indvars.iv.next1727 to i32
  %exitcond1729 = icmp eq i32 %lftr.wideiv1728, %npivot
  br i1 %exitcond1729, label %for.cond230.for.end267_crit_edge, label %for.body232

for.cond230.for.end267_crit_edge:                 ; preds = %for.end263
  %.pre = load i32* %nD, align 4, !tbaa !3
  br label %for.end267

for.end267:                                       ; preds = %for.cond230.for.end267_crit_edge, %for.cond230.preheader
  %63 = phi i32 [ %.pre, %for.cond230.for.end267_crit_edge ], [ %24, %for.cond230.preheader ]
  %count.19.lcssa = phi i32 [ %count.20.lcssa, %for.cond230.for.end267_crit_edge ], [ 0, %for.cond230.preheader ]
  %kstart82.5.lcssa = phi i32 [ %kstart82.6.lcssa, %for.cond230.for.end267_crit_edge ], [ 0, %for.cond230.preheader ]
  %cmp2691462 = icmp slt i32 %63, %add84
  br i1 %cmp2691462, label %for.cond271.preheader.lr.ph, label %sw.epilog894

for.cond271.preheader.lr.ph:                      ; preds = %for.end267
  %64 = sext i32 %add84 to i64
  %65 = add i32 %kstart82.5.lcssa, %25
  %66 = add i32 %65, %24
  %67 = sub i32 %66, %63
  br label %for.cond271.preheader

for.cond271.preheader:                            ; preds = %for.end290, %for.cond271.preheader.lr.ph
  %68 = phi i32 [ %63, %for.cond271.preheader.lr.ph ], [ %73, %for.end290 ]
  %count.231465 = phi i32 [ %count.19.lcssa, %for.cond271.preheader.lr.ph ], [ %count.24.lcssa, %for.end290 ]
  %kstart82.71464 = phi i32 [ %kstart82.5.lcssa, %for.cond271.preheader.lr.ph ], [ %inc291, %for.end290 ]
  %cmp2721455 = icmp sgt i32 %68, 0
  br i1 %cmp2721455, label %for.body273, label %for.end290

for.body273:                                      ; preds = %for.cond271.preheader, %for.body273
  %indvars.iv1717.in = phi i64 [ %indvars.iv1717, %for.body273 ], [ %64, %for.cond271.preheader ]
  %count.241459 = phi i32 [ %count.25, %for.body273 ], [ %count.231465, %for.cond271.preheader ]
  %kk81.51458 = phi i32 [ %add286, %for.body273 ], [ %kstart82.71464, %for.cond271.preheader ]
  %ii78.51456 = phi i32 [ %inc289, %for.body273 ], [ 0, %for.cond271.preheader ]
  %indvars.iv1717 = add i64 %indvars.iv1717.in, -1
  %mul274 = shl nsw i32 %kk81.51458, 1
  %idxprom275 = sext i32 %mul274 to i64
  %arrayidx276 = getelementptr inbounds double* %call13, i64 %idxprom275
  %69 = load double* %arrayidx276, align 8, !tbaa !4
  %add2781371 = or i32 %mul274, 1
  %idxprom279 = sext i32 %add2781371 to i64
  %arrayidx280 = getelementptr inbounds double* %call13, i64 %idxprom279
  %70 = load double* %arrayidx280, align 8, !tbaa !4
  %call281 = call double @Zabs(double %69, double %70) #5
  %not.cmp282 = fcmp oge double %call281, %droptol
  %inc284 = zext i1 %not.cmp282 to i32
  %count.25 = add nsw i32 %inc284, %count.241459
  %71 = trunc i64 %indvars.iv1717 to i32
  %add286 = add nsw i32 %kk81.51458, %71
  %inc289 = add nsw i32 %ii78.51456, 1
  %72 = load i32* %nD, align 4, !tbaa !3
  %cmp272 = icmp slt i32 %inc289, %72
  br i1 %cmp272, label %for.body273, label %for.end290

for.end290:                                       ; preds = %for.body273, %for.cond271.preheader
  %73 = phi i32 [ %68, %for.cond271.preheader ], [ %72, %for.body273 ]
  %count.24.lcssa = phi i32 [ %count.231465, %for.cond271.preheader ], [ %count.25, %for.body273 ]
  %inc291 = add nsw i32 %kstart82.71464, 1
  %exitcond1720 = icmp eq i32 %inc291, %67
  br i1 %exitcond1720, label %sw.epilog894, label %for.cond271.preheader

if.else298:                                       ; preds = %sw.bb77
  %74 = load i32* %nL, align 4, !tbaa !3
  %add299 = add i32 %24, -1
  %sub300 = add i32 %add299, %74
  %type305 = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 4
  %75 = load i32* %type305, align 4, !tbaa !3
  switch i32 %75, label %sw.epilog894 [
    i32 1, label %for.cond308.preheader
    i32 2, label %for.cond341.preheader
  ]

for.cond341.preheader:                            ; preds = %if.else298
  %cmp3421505 = icmp sgt i32 %add84, 0
  br i1 %cmp3421505, label %for.body343.lr.ph, label %sw.epilog894

for.body343.lr.ph:                                ; preds = %for.cond341.preheader
  %76 = add i32 %25, %74
  %77 = shl i32 %24, 1
  %78 = add i32 %76, %77
  %79 = add i32 %78, -3
  %80 = sext i32 %79 to i64
  br label %for.body343

for.cond308.preheader:                            ; preds = %if.else298
  %cmp3091493 = icmp sgt i32 %add84, 0
  br i1 %cmp3091493, label %for.body310.lr.ph, label %sw.epilog894

for.body310.lr.ph:                                ; preds = %for.cond308.preheader
  %81 = add i32 %25, %74
  %82 = shl i32 %24, 1
  %83 = add i32 %81, %82
  %84 = add i32 %83, -3
  %85 = sext i32 %84 to i64
  br label %for.body310

for.body310:                                      ; preds = %for.end332, %for.body310.lr.ph
  %count.261496 = phi i32 [ 0, %for.body310.lr.ph ], [ %count.27.lcssa, %for.end332 ]
  %kstart82.81495 = phi i32 [ %sub300, %for.body310.lr.ph ], [ %inc333, %for.end332 ]
  %jj79.61494 = phi i32 [ 0, %for.body310.lr.ph ], [ %inc335, %for.end332 ]
  %cmp311 = icmp slt i32 %jj79.61494, %24
  %.sink899 = select i1 %cmp311, i32 %jj79.61494, i32 %24
  %sub313 = add nsw i32 %.sink899, -1
  %cmp3191486 = icmp slt i32 %.sink899, 1
  br i1 %cmp3191486, label %for.end332, label %for.body320

for.body320:                                      ; preds = %for.body310, %for.body320
  %indvars.iv1730 = phi i64 [ %indvars.iv.next1731, %for.body320 ], [ %85, %for.body310 ]
  %count.271490 = phi i32 [ %count.28, %for.body320 ], [ %count.261496, %for.body310 ]
  %kk81.61489 = phi i32 [ %add328, %for.body320 ], [ %kstart82.81495, %for.body310 ]
  %ii78.61487 = phi i32 [ %inc331, %for.body320 ], [ 0, %for.body310 ]
  %idxprom321 = sext i32 %kk81.61489 to i64
  %arrayidx322 = getelementptr inbounds double* %call13, i64 %idxprom321
  %86 = load double* %arrayidx322, align 8, !tbaa !4
  %call323 = call double @fabs(double %86) #7
  %not.cmp324 = fcmp oge double %call323, %droptol
  %inc326 = zext i1 %not.cmp324 to i32
  %count.28 = add nsw i32 %inc326, %count.271490
  %87 = trunc i64 %indvars.iv1730 to i32
  %add328 = add nsw i32 %kk81.61489, %87
  %inc331 = add nsw i32 %ii78.61487, 1
  %cmp319 = icmp slt i32 %ii78.61487, %sub313
  %indvars.iv.next1731 = add i64 %indvars.iv1730, -2
  br i1 %cmp319, label %for.body320, label %for.end332

for.end332:                                       ; preds = %for.body320, %for.body310
  %count.27.lcssa = phi i32 [ %count.261496, %for.body310 ], [ %count.28, %for.body320 ]
  %inc333 = add nsw i32 %kstart82.81495, 1
  %inc335 = add nsw i32 %jj79.61494, 1
  %exitcond1733 = icmp eq i32 %inc335, %add84
  br i1 %exitcond1733, label %sw.epilog894, label %for.body310

for.body343:                                      ; preds = %for.end370.for.body343_crit_edge, %for.body343.lr.ph
  %88 = phi i32 [ %24, %for.body343.lr.ph ], [ %.pre1818, %for.end370.for.body343_crit_edge ]
  %count.291508 = phi i32 [ 0, %for.body343.lr.ph ], [ %count.30.lcssa, %for.end370.for.body343_crit_edge ]
  %kstart82.91507 = phi i32 [ %sub300, %for.body343.lr.ph ], [ %inc371, %for.end370.for.body343_crit_edge ]
  %jj79.71506 = phi i32 [ 0, %for.body343.lr.ph ], [ %inc373, %for.end370.for.body343_crit_edge ]
  %cmp344 = icmp slt i32 %jj79.71506, %88
  %.sink900 = select i1 %cmp344, i32 %jj79.71506, i32 %88
  %sub346 = add nsw i32 %.sink900, -1
  %cmp3521498 = icmp slt i32 %.sink900, 1
  br i1 %cmp3521498, label %for.end370, label %for.body353

for.body353:                                      ; preds = %for.body343, %for.body353
  %indvars.iv1734 = phi i64 [ %indvars.iv.next1735, %for.body353 ], [ %80, %for.body343 ]
  %count.301502 = phi i32 [ %count.31, %for.body353 ], [ %count.291508, %for.body343 ]
  %kk81.71501 = phi i32 [ %add366, %for.body353 ], [ %kstart82.91507, %for.body343 ]
  %ii78.71499 = phi i32 [ %inc369, %for.body353 ], [ 0, %for.body343 ]
  %mul354 = shl nsw i32 %kk81.71501, 1
  %idxprom355 = sext i32 %mul354 to i64
  %arrayidx356 = getelementptr inbounds double* %call13, i64 %idxprom355
  %89 = load double* %arrayidx356, align 8, !tbaa !4
  %add3581370 = or i32 %mul354, 1
  %idxprom359 = sext i32 %add3581370 to i64
  %arrayidx360 = getelementptr inbounds double* %call13, i64 %idxprom359
  %90 = load double* %arrayidx360, align 8, !tbaa !4
  %call361 = call double @Zabs(double %89, double %90) #5
  %not.cmp362 = fcmp oge double %call361, %droptol
  %inc364 = zext i1 %not.cmp362 to i32
  %count.31 = add nsw i32 %inc364, %count.301502
  %91 = trunc i64 %indvars.iv1734 to i32
  %add366 = add nsw i32 %kk81.71501, %91
  %inc369 = add nsw i32 %ii78.71499, 1
  %cmp352 = icmp slt i32 %ii78.71499, %sub346
  %indvars.iv.next1735 = add i64 %indvars.iv1734, -2
  br i1 %cmp352, label %for.body353, label %for.end370

for.end370:                                       ; preds = %for.body353, %for.body343
  %count.30.lcssa = phi i32 [ %count.291508, %for.body343 ], [ %count.31, %for.body353 ]
  %inc373 = add nsw i32 %jj79.71506, 1
  %exitcond1737 = icmp eq i32 %inc373, %add84
  br i1 %exitcond1737, label %sw.epilog894, label %for.end370.for.body343_crit_edge

for.end370.for.body343_crit_edge:                 ; preds = %for.end370
  %inc371 = add nsw i32 %kstart82.91507, 1
  %.pre1818 = load i32* %nD, align 4, !tbaa !3
  br label %for.body343

sw.bb378:                                         ; preds = %if.end12
  %92 = load i32* %nD, align 4, !tbaa !3
  %93 = load i32* %nL, align 4, !tbaa !3
  %add387 = add i32 %92, -1
  %sub388 = add i32 %add387, %93
  %94 = load i32* %nU, align 4, !tbaa !3
  %type393 = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 4
  %95 = load i32* %type393, align 4, !tbaa !3
  switch i32 %95, label %sw.epilog894 [
    i32 1, label %for.cond396.preheader
    i32 2, label %for.cond422.preheader
  ]

for.cond422.preheader:                            ; preds = %sw.bb378
  %cmp4231529 = icmp sgt i32 %92, 0
  br i1 %cmp4231529, label %for.cond425.preheader.lr.ph, label %sw.epilog894

for.cond425.preheader.lr.ph:                      ; preds = %for.cond422.preheader
  %96 = add i32 %93, %94
  %97 = shl i32 %92, 1
  %98 = add i32 %96, %97
  %99 = add i32 %98, -1
  %100 = sext i32 %99 to i64
  br label %for.cond425.preheader

for.cond396.preheader:                            ; preds = %sw.bb378
  %cmp3971517 = icmp sgt i32 %92, 0
  br i1 %cmp3971517, label %for.cond399.preheader.lr.ph, label %sw.epilog894

for.cond399.preheader.lr.ph:                      ; preds = %for.cond396.preheader
  %101 = add i32 %93, %94
  %102 = shl i32 %92, 1
  %103 = add i32 %101, %102
  %104 = add i32 %103, -1
  %105 = sext i32 %104 to i64
  br label %for.cond399.preheader

for.cond399.preheader:                            ; preds = %for.cond399.preheader.lr.ph, %for.end413
  %indvars.iv1741 = phi i32 [ 0, %for.cond399.preheader.lr.ph ], [ %indvars.iv.next1742, %for.end413 ]
  %count.321520 = phi i32 [ 0, %for.cond399.preheader.lr.ph ], [ %count.33.lcssa, %for.end413 ]
  %kstart383.01519 = phi i32 [ %sub388, %for.cond399.preheader.lr.ph ], [ %dec414, %for.end413 ]
  %cmp4001510 = icmp sgt i32 %indvars.iv1741, 0
  br i1 %cmp4001510, label %for.body401, label %for.end413

for.body401:                                      ; preds = %for.cond399.preheader, %for.body401
  %indvars.iv1738 = phi i64 [ %indvars.iv.next1739, %for.body401 ], [ %105, %for.cond399.preheader ]
  %count.331514 = phi i32 [ %count.34, %for.body401 ], [ %count.321520, %for.cond399.preheader ]
  %kk382.01513 = phi i32 [ %add409, %for.body401 ], [ %kstart383.01519, %for.cond399.preheader ]
  %jj380.01511 = phi i32 [ %inc412, %for.body401 ], [ 0, %for.cond399.preheader ]
  %idxprom402 = sext i32 %kk382.01513 to i64
  %arrayidx403 = getelementptr inbounds double* %call13, i64 %idxprom402
  %106 = load double* %arrayidx403, align 8, !tbaa !4
  %call404 = call double @fabs(double %106) #7
  %not.cmp405 = fcmp oge double %call404, %droptol
  %inc407 = zext i1 %not.cmp405 to i32
  %count.34 = add nsw i32 %inc407, %count.331514
  %107 = trunc i64 %indvars.iv1738 to i32
  %add409 = add nsw i32 %kk382.01513, %107
  %inc412 = add nsw i32 %jj380.01511, 1
  %indvars.iv.next1739 = add i64 %indvars.iv1738, -2
  %exitcond1743 = icmp eq i32 %inc412, %indvars.iv1741
  br i1 %exitcond1743, label %for.end413, label %for.body401

for.end413:                                       ; preds = %for.body401, %for.cond399.preheader
  %count.33.lcssa = phi i32 [ %count.321520, %for.cond399.preheader ], [ %count.34, %for.body401 ]
  %dec414 = add nsw i32 %kstart383.01519, -1
  %indvars.iv.next1742 = add i32 %indvars.iv1741, 1
  %cmp397 = icmp slt i32 %indvars.iv.next1742, %92
  br i1 %cmp397, label %for.cond399.preheader, label %sw.epilog894

for.cond425.preheader:                            ; preds = %for.cond425.preheader.lr.ph, %for.end444
  %108 = phi i32 [ %92, %for.cond425.preheader.lr.ph ], [ %112, %for.end444 ]
  %indvars.iv1747 = phi i32 [ 0, %for.cond425.preheader.lr.ph ], [ %indvars.iv.next1748, %for.end444 ]
  %count.351532 = phi i32 [ 0, %for.cond425.preheader.lr.ph ], [ %count.36.lcssa, %for.end444 ]
  %kstart383.11531 = phi i32 [ %sub388, %for.cond425.preheader.lr.ph ], [ %dec445, %for.end444 ]
  %cmp4261522 = icmp sgt i32 %indvars.iv1747, 0
  br i1 %cmp4261522, label %for.body427, label %for.end444

for.body427:                                      ; preds = %for.cond425.preheader, %for.body427
  %indvars.iv1744 = phi i64 [ %indvars.iv.next1745, %for.body427 ], [ %100, %for.cond425.preheader ]
  %count.361526 = phi i32 [ %count.37, %for.body427 ], [ %count.351532, %for.cond425.preheader ]
  %kk382.11525 = phi i32 [ %add440, %for.body427 ], [ %kstart383.11531, %for.cond425.preheader ]
  %jj380.11523 = phi i32 [ %inc443, %for.body427 ], [ 0, %for.cond425.preheader ]
  %mul428 = shl nsw i32 %kk382.11525, 1
  %idxprom429 = sext i32 %mul428 to i64
  %arrayidx430 = getelementptr inbounds double* %call13, i64 %idxprom429
  %109 = load double* %arrayidx430, align 8, !tbaa !4
  %add4321369 = or i32 %mul428, 1
  %idxprom433 = sext i32 %add4321369 to i64
  %arrayidx434 = getelementptr inbounds double* %call13, i64 %idxprom433
  %110 = load double* %arrayidx434, align 8, !tbaa !4
  %call435 = call double @Zabs(double %109, double %110) #5
  %not.cmp436 = fcmp oge double %call435, %droptol
  %inc438 = zext i1 %not.cmp436 to i32
  %count.37 = add nsw i32 %inc438, %count.361526
  %111 = trunc i64 %indvars.iv1744 to i32
  %add440 = add nsw i32 %kk382.11525, %111
  %inc443 = add nsw i32 %jj380.11523, 1
  %indvars.iv.next1745 = add i64 %indvars.iv1744, -2
  %exitcond1749 = icmp eq i32 %inc443, %indvars.iv1747
  br i1 %exitcond1749, label %for.cond425.for.end444_crit_edge, label %for.body427

for.cond425.for.end444_crit_edge:                 ; preds = %for.body427
  %.pre1813 = load i32* %nD, align 4, !tbaa !3
  br label %for.end444

for.end444:                                       ; preds = %for.cond425.for.end444_crit_edge, %for.cond425.preheader
  %112 = phi i32 [ %.pre1813, %for.cond425.for.end444_crit_edge ], [ %108, %for.cond425.preheader ]
  %count.36.lcssa = phi i32 [ %count.37, %for.cond425.for.end444_crit_edge ], [ %count.351532, %for.cond425.preheader ]
  %dec445 = add nsw i32 %kstart383.11531, -1
  %indvars.iv.next1748 = add i32 %indvars.iv1747, 1
  %cmp423 = icmp slt i32 %indvars.iv.next1748, %112
  br i1 %cmp423, label %for.cond425.preheader, label %sw.epilog894

sw.bb451:                                         ; preds = %if.end12
  %113 = load i32* %nD, align 4, !tbaa !3
  %114 = load i32* %nL, align 4, !tbaa !3
  %add459 = add nsw i32 %114, %113
  %sub460 = add nsw i32 %114, -1
  %115 = load i32* %nU, align 4, !tbaa !3
  %type465 = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 4
  %116 = load i32* %type465, align 4, !tbaa !3
  switch i32 %116, label %sw.epilog894 [
    i32 1, label %for.cond468.preheader
    i32 2, label %for.cond494.preheader
  ]

for.cond494.preheader:                            ; preds = %sw.bb451
  %cmp4951553 = icmp sgt i32 %114, 0
  br i1 %cmp4951553, label %for.cond497.preheader.lr.ph, label %sw.epilog894

for.cond497.preheader.lr.ph:                      ; preds = %for.cond494.preheader
  %117 = add i32 %114, %115
  %118 = shl i32 %113, 1
  %119 = add i32 %117, %118
  %120 = add i32 %119, -1
  %121 = sext i32 %120 to i64
  br label %for.cond497.preheader

for.cond468.preheader:                            ; preds = %sw.bb451
  %cmp4691541 = icmp sgt i32 %114, 0
  br i1 %cmp4691541, label %for.cond471.preheader.lr.ph, label %sw.epilog894

for.cond471.preheader.lr.ph:                      ; preds = %for.cond468.preheader
  %cmp4721534 = icmp sgt i32 %113, 0
  %122 = add i32 %114, %115
  %123 = shl i32 %113, 1
  %124 = add i32 %122, %123
  %125 = add i32 %124, -1
  %126 = sext i32 %125 to i64
  br label %for.cond471.preheader

for.cond471.preheader:                            ; preds = %for.cond471.preheader.lr.ph, %for.end485
  %count.381544 = phi i32 [ 0, %for.cond471.preheader.lr.ph ], [ %count.39.lcssa, %for.end485 ]
  %kstart456.01543 = phi i32 [ %sub460, %for.cond471.preheader.lr.ph ], [ %dec486, %for.end485 ]
  %ii452.01542 = phi i32 [ %113, %for.cond471.preheader.lr.ph ], [ %inc488, %for.end485 ]
  br i1 %cmp4721534, label %for.body473, label %for.end485

for.body473:                                      ; preds = %for.cond471.preheader, %for.body473
  %indvars.iv1750 = phi i64 [ %indvars.iv.next1751, %for.body473 ], [ %126, %for.cond471.preheader ]
  %count.391538 = phi i32 [ %count.40, %for.body473 ], [ %count.381544, %for.cond471.preheader ]
  %kk455.01537 = phi i32 [ %add481, %for.body473 ], [ %kstart456.01543, %for.cond471.preheader ]
  %jj453.01535 = phi i32 [ %inc484, %for.body473 ], [ 0, %for.cond471.preheader ]
  %idxprom474 = sext i32 %kk455.01537 to i64
  %arrayidx475 = getelementptr inbounds double* %call13, i64 %idxprom474
  %127 = load double* %arrayidx475, align 8, !tbaa !4
  %call476 = call double @fabs(double %127) #7
  %not.cmp477 = fcmp oge double %call476, %droptol
  %inc479 = zext i1 %not.cmp477 to i32
  %count.40 = add nsw i32 %inc479, %count.391538
  %128 = trunc i64 %indvars.iv1750 to i32
  %add481 = add nsw i32 %kk455.01537, %128
  %inc484 = add nsw i32 %jj453.01535, 1
  %indvars.iv.next1751 = add i64 %indvars.iv1750, -2
  %exitcond1753 = icmp eq i32 %inc484, %113
  br i1 %exitcond1753, label %for.end485, label %for.body473

for.end485:                                       ; preds = %for.body473, %for.cond471.preheader
  %count.39.lcssa = phi i32 [ %count.381544, %for.cond471.preheader ], [ %count.40, %for.body473 ]
  %dec486 = add nsw i32 %kstart456.01543, -1
  %inc488 = add nsw i32 %ii452.01542, 1
  %cmp469 = icmp slt i32 %inc488, %add459
  br i1 %cmp469, label %for.cond471.preheader, label %sw.epilog894

for.cond497.preheader:                            ; preds = %for.cond497.preheader.lr.ph, %for.end516
  %129 = phi i32 [ %113, %for.cond497.preheader.lr.ph ], [ %134, %for.end516 ]
  %count.411556 = phi i32 [ 0, %for.cond497.preheader.lr.ph ], [ %count.42.lcssa, %for.end516 ]
  %kstart456.11555 = phi i32 [ %sub460, %for.cond497.preheader.lr.ph ], [ %dec517, %for.end516 ]
  %ii452.11554 = phi i32 [ %113, %for.cond497.preheader.lr.ph ], [ %inc519, %for.end516 ]
  %cmp4981546 = icmp sgt i32 %129, 0
  br i1 %cmp4981546, label %for.body499, label %for.end516

for.body499:                                      ; preds = %for.cond497.preheader, %for.body499
  %indvars.iv1754 = phi i64 [ %indvars.iv.next1755, %for.body499 ], [ %121, %for.cond497.preheader ]
  %count.421550 = phi i32 [ %count.43, %for.body499 ], [ %count.411556, %for.cond497.preheader ]
  %kk455.11549 = phi i32 [ %add512, %for.body499 ], [ %kstart456.11555, %for.cond497.preheader ]
  %jj453.11547 = phi i32 [ %inc515, %for.body499 ], [ 0, %for.cond497.preheader ]
  %mul500 = shl nsw i32 %kk455.11549, 1
  %idxprom501 = sext i32 %mul500 to i64
  %arrayidx502 = getelementptr inbounds double* %call13, i64 %idxprom501
  %130 = load double* %arrayidx502, align 8, !tbaa !4
  %add5041368 = or i32 %mul500, 1
  %idxprom505 = sext i32 %add5041368 to i64
  %arrayidx506 = getelementptr inbounds double* %call13, i64 %idxprom505
  %131 = load double* %arrayidx506, align 8, !tbaa !4
  %call507 = call double @Zabs(double %130, double %131) #5
  %not.cmp508 = fcmp oge double %call507, %droptol
  %inc510 = zext i1 %not.cmp508 to i32
  %count.43 = add nsw i32 %inc510, %count.421550
  %132 = trunc i64 %indvars.iv1754 to i32
  %add512 = add nsw i32 %kk455.11549, %132
  %inc515 = add nsw i32 %jj453.11547, 1
  %133 = load i32* %nD, align 4, !tbaa !3
  %cmp498 = icmp slt i32 %inc515, %133
  %indvars.iv.next1755 = add i64 %indvars.iv1754, -2
  br i1 %cmp498, label %for.body499, label %for.end516

for.end516:                                       ; preds = %for.body499, %for.cond497.preheader
  %134 = phi i32 [ %129, %for.cond497.preheader ], [ %133, %for.body499 ]
  %count.42.lcssa = phi i32 [ %count.411556, %for.cond497.preheader ], [ %count.43, %for.body499 ]
  %dec517 = add nsw i32 %kstart456.11555, -1
  %inc519 = add nsw i32 %ii452.11554, 1
  %cmp495 = icmp slt i32 %inc519, %add459
  br i1 %cmp495, label %for.cond497.preheader, label %sw.epilog894

sw.bb523:                                         ; preds = %if.end12
  %135 = load i32* %nD, align 4, !tbaa !3
  %136 = load i32* %nU, align 4, !tbaa !3
  %137 = load i32* %symflag, align 4, !tbaa !3
  %switch1376 = icmp ult i32 %137, 2
  br i1 %switch1376, label %if.then540, label %if.else685

if.then540:                                       ; preds = %sw.bb523
  %cmp543 = icmp eq i32* %pivotsizes, null
  %type545 = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 4
  %138 = load i32* %type545, align 4, !tbaa !3
  %cmp546 = icmp eq i32 %138, 1
  br i1 %cmp543, label %if.then544, label %if.else603

if.then544:                                       ; preds = %if.then540
  br i1 %cmp546, label %for.cond548.preheader, label %if.else570

for.cond548.preheader:                            ; preds = %if.then544
  %cmp5491565 = icmp sgt i32 %135, 0
  br i1 %cmp5491565, label %for.cond551.preheader.lr.ph, label %sw.epilog894

for.cond551.preheader.lr.ph:                      ; preds = %for.cond548.preheader
  %139 = add i32 %135, %136
  %140 = add i32 %139, -1
  %141 = sext i32 %140 to i64
  br label %for.cond551.preheader

for.cond551.preheader:                            ; preds = %for.cond551.preheader.lr.ph, %for.end565
  %indvars.iv1760 = phi i32 [ 0, %for.cond551.preheader.lr.ph ], [ %indvars.iv.next1761, %for.end565 ]
  %count.441568 = phi i32 [ 0, %for.cond551.preheader.lr.ph ], [ %count.45.lcssa, %for.end565 ]
  %cmp5521558 = icmp sgt i32 %indvars.iv1760, 0
  br i1 %cmp5521558, label %for.body553, label %for.end565

for.body553:                                      ; preds = %for.cond551.preheader, %for.body553
  %indvars.iv1757 = phi i64 [ %indvars.iv.next1758, %for.body553 ], [ %141, %for.cond551.preheader ]
  %count.451562 = phi i32 [ %count.46, %for.body553 ], [ %count.441568, %for.cond551.preheader ]
  %kk529.01561 = phi i32 [ %add561, %for.body553 ], [ %indvars.iv1760, %for.cond551.preheader ]
  %ii525.01559 = phi i32 [ %inc564, %for.body553 ], [ 0, %for.cond551.preheader ]
  %idxprom554 = sext i32 %kk529.01561 to i64
  %arrayidx555 = getelementptr inbounds double* %call13, i64 %idxprom554
  %142 = load double* %arrayidx555, align 8, !tbaa !4
  %call556 = call double @fabs(double %142) #7
  %not.cmp557 = fcmp oge double %call556, %droptol
  %inc559 = zext i1 %not.cmp557 to i32
  %count.46 = add nsw i32 %inc559, %count.451562
  %143 = trunc i64 %indvars.iv1757 to i32
  %add561 = add nsw i32 %kk529.01561, %143
  %inc564 = add nsw i32 %ii525.01559, 1
  %indvars.iv.next1758 = add i64 %indvars.iv1757, -1
  %exitcond1762 = icmp eq i32 %inc564, %indvars.iv1760
  br i1 %exitcond1762, label %for.end565, label %for.body553

for.end565:                                       ; preds = %for.body553, %for.cond551.preheader
  %count.45.lcssa = phi i32 [ %count.441568, %for.cond551.preheader ], [ %count.46, %for.body553 ]
  %indvars.iv.next1761 = add i32 %indvars.iv1760, 1
  %cmp549 = icmp slt i32 %indvars.iv.next1761, %135
  br i1 %cmp549, label %for.cond551.preheader, label %sw.epilog894

if.else570:                                       ; preds = %if.then544
  %cmp572 = icmp eq i32 %138, 2
  %cmp5751577 = icmp sgt i32 %135, 0
  %or.cond1819 = and i1 %cmp572, %cmp5751577
  br i1 %or.cond1819, label %for.cond577.preheader.lr.ph, label %sw.epilog894

for.cond577.preheader.lr.ph:                      ; preds = %if.else570
  %144 = add i32 %135, %136
  %145 = add i32 %144, -1
  %146 = sext i32 %145 to i64
  br label %for.cond577.preheader

for.cond577.preheader:                            ; preds = %for.cond577.preheader.lr.ph, %for.end596
  %147 = phi i32 [ %135, %for.cond577.preheader.lr.ph ], [ %151, %for.end596 ]
  %indvars.iv1766 = phi i32 [ 0, %for.cond577.preheader.lr.ph ], [ %indvars.iv.next1767, %for.end596 ]
  %count.471580 = phi i32 [ 0, %for.cond577.preheader.lr.ph ], [ %count.48.lcssa, %for.end596 ]
  %cmp5781570 = icmp sgt i32 %indvars.iv1766, 0
  br i1 %cmp5781570, label %for.body579, label %for.end596

for.body579:                                      ; preds = %for.cond577.preheader, %for.body579
  %indvars.iv1763 = phi i64 [ %indvars.iv.next1764, %for.body579 ], [ %146, %for.cond577.preheader ]
  %count.481574 = phi i32 [ %count.49, %for.body579 ], [ %count.471580, %for.cond577.preheader ]
  %kk529.11573 = phi i32 [ %add592, %for.body579 ], [ %indvars.iv1766, %for.cond577.preheader ]
  %ii525.11571 = phi i32 [ %inc595, %for.body579 ], [ 0, %for.cond577.preheader ]
  %mul580 = shl nsw i32 %kk529.11573, 1
  %idxprom581 = sext i32 %mul580 to i64
  %arrayidx582 = getelementptr inbounds double* %call13, i64 %idxprom581
  %148 = load double* %arrayidx582, align 8, !tbaa !4
  %add5841367 = or i32 %mul580, 1
  %idxprom585 = sext i32 %add5841367 to i64
  %arrayidx586 = getelementptr inbounds double* %call13, i64 %idxprom585
  %149 = load double* %arrayidx586, align 8, !tbaa !4
  %call587 = call double @Zabs(double %148, double %149) #5
  %not.cmp588 = fcmp oge double %call587, %droptol
  %inc590 = zext i1 %not.cmp588 to i32
  %count.49 = add nsw i32 %inc590, %count.481574
  %150 = trunc i64 %indvars.iv1763 to i32
  %add592 = add nsw i32 %kk529.11573, %150
  %inc595 = add nsw i32 %ii525.11571, 1
  %indvars.iv.next1764 = add i64 %indvars.iv1763, -1
  %exitcond1768 = icmp eq i32 %inc595, %indvars.iv1766
  br i1 %exitcond1768, label %for.cond577.for.end596_crit_edge, label %for.body579

for.cond577.for.end596_crit_edge:                 ; preds = %for.body579
  %.pre1814 = load i32* %nD, align 4, !tbaa !3
  br label %for.end596

for.end596:                                       ; preds = %for.cond577.for.end596_crit_edge, %for.cond577.preheader
  %151 = phi i32 [ %.pre1814, %for.cond577.for.end596_crit_edge ], [ %147, %for.cond577.preheader ]
  %count.48.lcssa = phi i32 [ %count.49, %for.cond577.for.end596_crit_edge ], [ %count.471580, %for.cond577.preheader ]
  %indvars.iv.next1767 = add i32 %indvars.iv1766, 1
  %cmp575 = icmp slt i32 %indvars.iv.next1767, %151
  br i1 %cmp575, label %for.cond577.preheader, label %sw.epilog894

if.else603:                                       ; preds = %if.then540
  br i1 %cmp546, label %for.cond607.preheader, label %if.else640

for.cond607.preheader:                            ; preds = %if.else603
  %cmp6081595 = icmp sgt i32 %npivot, 0
  br i1 %cmp6081595, label %for.body609.lr.ph, label %sw.epilog894

for.body609.lr.ph:                                ; preds = %for.cond607.preheader
  %152 = add i32 %135, %136
  %153 = add i32 %152, -1
  %154 = sext i32 %153 to i64
  br label %for.body609

for.body609:                                      ; preds = %for.end635, %for.body609.lr.ph
  %indvars.iv1774 = phi i64 [ 0, %for.body609.lr.ph ], [ %indvars.iv.next1775, %for.end635 ]
  %count.501599 = phi i32 [ 0, %for.body609.lr.ph ], [ %count.51.lcssa, %for.end635 ]
  %kstart530.21598 = phi i32 [ 0, %for.body609.lr.ph ], [ %kstart530.3.lcssa, %for.end635 ]
  %first524.01596 = phi i32 [ 0, %for.body609.lr.ph ], [ %add612, %for.end635 ]
  %arrayidx611 = getelementptr inbounds i32* %pivotsizes, i64 %indvars.iv1774
  %155 = load i32* %arrayidx611, align 4, !tbaa !3
  %add612 = add nsw i32 %155, %first524.01596
  %sub613 = add nsw i32 %add612, -1
  %cmp6151588 = icmp sgt i32 %first524.01596, %sub613
  br i1 %cmp6151588, label %for.end635, label %for.cond617.preheader.lr.ph

for.cond617.preheader.lr.ph:                      ; preds = %for.body609
  %cmp6181582 = icmp sgt i32 %first524.01596, 0
  %156 = add i32 %kstart530.21598, 1
  %157 = add i32 %first524.01596, -1
  %158 = add i32 %157, %155
  %159 = icmp sgt i32 %first524.01596, %158
  %smax1773 = select i1 %159, i32 %first524.01596, i32 %158
  %160 = add i32 %156, %smax1773
  br label %for.cond617.preheader

for.cond617.preheader:                            ; preds = %for.end631, %for.cond617.preheader.lr.ph
  %count.511591 = phi i32 [ %count.501599, %for.cond617.preheader.lr.ph ], [ %count.52.lcssa, %for.end631 ]
  %kstart530.31590 = phi i32 [ %kstart530.21598, %for.cond617.preheader.lr.ph ], [ %inc632, %for.end631 ]
  %jj527.21589 = phi i32 [ %first524.01596, %for.cond617.preheader.lr.ph ], [ %inc634, %for.end631 ]
  br i1 %cmp6181582, label %for.body619, label %for.end631

for.body619:                                      ; preds = %for.cond617.preheader, %for.body619
  %indvars.iv1769 = phi i64 [ %indvars.iv.next1770, %for.body619 ], [ %154, %for.cond617.preheader ]
  %count.521586 = phi i32 [ %count.53, %for.body619 ], [ %count.511591, %for.cond617.preheader ]
  %kk529.21585 = phi i32 [ %add627, %for.body619 ], [ %kstart530.31590, %for.cond617.preheader ]
  %ii525.21583 = phi i32 [ %inc630, %for.body619 ], [ 0, %for.cond617.preheader ]
  %idxprom620 = sext i32 %kk529.21585 to i64
  %arrayidx621 = getelementptr inbounds double* %call13, i64 %idxprom620
  %161 = load double* %arrayidx621, align 8, !tbaa !4
  %call622 = call double @fabs(double %161) #7
  %not.cmp623 = fcmp oge double %call622, %droptol
  %inc625 = zext i1 %not.cmp623 to i32
  %count.53 = add nsw i32 %inc625, %count.521586
  %162 = trunc i64 %indvars.iv1769 to i32
  %add627 = add nsw i32 %kk529.21585, %162
  %inc630 = add nsw i32 %ii525.21583, 1
  %indvars.iv.next1770 = add i64 %indvars.iv1769, -1
  %exitcond1772 = icmp eq i32 %inc630, %first524.01596
  br i1 %exitcond1772, label %for.end631, label %for.body619

for.end631:                                       ; preds = %for.body619, %for.cond617.preheader
  %count.52.lcssa = phi i32 [ %count.511591, %for.cond617.preheader ], [ %count.53, %for.body619 ]
  %inc632 = add nsw i32 %kstart530.31590, 1
  %inc634 = add nsw i32 %jj527.21589, 1
  %cmp615 = icmp slt i32 %jj527.21589, %sub613
  br i1 %cmp615, label %for.cond617.preheader, label %for.cond614.for.end635_crit_edge

for.cond614.for.end635_crit_edge:                 ; preds = %for.end631
  %163 = sub i32 %160, %first524.01596
  br label %for.end635

for.end635:                                       ; preds = %for.cond614.for.end635_crit_edge, %for.body609
  %count.51.lcssa = phi i32 [ %count.52.lcssa, %for.cond614.for.end635_crit_edge ], [ %count.501599, %for.body609 ]
  %kstart530.3.lcssa = phi i32 [ %163, %for.cond614.for.end635_crit_edge ], [ %kstart530.21598, %for.body609 ]
  %indvars.iv.next1775 = add i64 %indvars.iv1774, 1
  %lftr.wideiv1776 = trunc i64 %indvars.iv.next1775 to i32
  %exitcond1777 = icmp eq i32 %lftr.wideiv1776, %npivot
  br i1 %exitcond1777, label %sw.epilog894, label %for.body609

if.else640:                                       ; preds = %if.else603
  %cmp642 = icmp eq i32 %138, 2
  %cmp6451614 = icmp sgt i32 %npivot, 0
  %or.cond1820 = and i1 %cmp642, %cmp6451614
  br i1 %or.cond1820, label %for.body646.lr.ph, label %sw.epilog894

for.body646.lr.ph:                                ; preds = %if.else640
  %164 = add i32 %135, %136
  %165 = add i32 %164, -1
  %166 = sext i32 %165 to i64
  br label %for.body646

for.body646:                                      ; preds = %for.end677, %for.body646.lr.ph
  %indvars.iv1783 = phi i64 [ 0, %for.body646.lr.ph ], [ %indvars.iv.next1784, %for.end677 ]
  %count.541618 = phi i32 [ 0, %for.body646.lr.ph ], [ %count.55.lcssa, %for.end677 ]
  %kstart530.41617 = phi i32 [ 0, %for.body646.lr.ph ], [ %kstart530.5.lcssa, %for.end677 ]
  %first524.11615 = phi i32 [ 0, %for.body646.lr.ph ], [ %add649, %for.end677 ]
  %arrayidx648 = getelementptr inbounds i32* %pivotsizes, i64 %indvars.iv1783
  %167 = load i32* %arrayidx648, align 4, !tbaa !3
  %add649 = add nsw i32 %167, %first524.11615
  %sub650 = add nsw i32 %add649, -1
  %cmp6521607 = icmp sgt i32 %first524.11615, %sub650
  br i1 %cmp6521607, label %for.end677, label %for.cond654.preheader.lr.ph

for.cond654.preheader.lr.ph:                      ; preds = %for.body646
  %cmp6551601 = icmp sgt i32 %first524.11615, 0
  %168 = add i32 %kstart530.41617, 1
  %169 = add i32 %first524.11615, -1
  %170 = add i32 %169, %167
  %171 = icmp sgt i32 %first524.11615, %170
  %smax1782 = select i1 %171, i32 %first524.11615, i32 %170
  %172 = add i32 %168, %smax1782
  br label %for.cond654.preheader

for.cond654.preheader:                            ; preds = %for.end673, %for.cond654.preheader.lr.ph
  %count.551610 = phi i32 [ %count.541618, %for.cond654.preheader.lr.ph ], [ %count.56.lcssa, %for.end673 ]
  %kstart530.51609 = phi i32 [ %kstart530.41617, %for.cond654.preheader.lr.ph ], [ %inc674, %for.end673 ]
  %jj527.31608 = phi i32 [ %first524.11615, %for.cond654.preheader.lr.ph ], [ %inc676, %for.end673 ]
  br i1 %cmp6551601, label %for.body656, label %for.end673

for.body656:                                      ; preds = %for.cond654.preheader, %for.body656
  %indvars.iv1778 = phi i64 [ %indvars.iv.next1779, %for.body656 ], [ %166, %for.cond654.preheader ]
  %count.561605 = phi i32 [ %count.57, %for.body656 ], [ %count.551610, %for.cond654.preheader ]
  %kk529.31604 = phi i32 [ %add669, %for.body656 ], [ %kstart530.51609, %for.cond654.preheader ]
  %ii525.31602 = phi i32 [ %inc672, %for.body656 ], [ 0, %for.cond654.preheader ]
  %mul657 = shl nsw i32 %kk529.31604, 1
  %idxprom658 = sext i32 %mul657 to i64
  %arrayidx659 = getelementptr inbounds double* %call13, i64 %idxprom658
  %173 = load double* %arrayidx659, align 8, !tbaa !4
  %add6611366 = or i32 %mul657, 1
  %idxprom662 = sext i32 %add6611366 to i64
  %arrayidx663 = getelementptr inbounds double* %call13, i64 %idxprom662
  %174 = load double* %arrayidx663, align 8, !tbaa !4
  %call664 = call double @Zabs(double %173, double %174) #5
  %not.cmp665 = fcmp oge double %call664, %droptol
  %inc667 = zext i1 %not.cmp665 to i32
  %count.57 = add nsw i32 %inc667, %count.561605
  %175 = trunc i64 %indvars.iv1778 to i32
  %add669 = add nsw i32 %kk529.31604, %175
  %inc672 = add nsw i32 %ii525.31602, 1
  %indvars.iv.next1779 = add i64 %indvars.iv1778, -1
  %exitcond1781 = icmp eq i32 %inc672, %first524.11615
  br i1 %exitcond1781, label %for.end673, label %for.body656

for.end673:                                       ; preds = %for.body656, %for.cond654.preheader
  %count.56.lcssa = phi i32 [ %count.551610, %for.cond654.preheader ], [ %count.57, %for.body656 ]
  %inc674 = add nsw i32 %kstart530.51609, 1
  %inc676 = add nsw i32 %jj527.31608, 1
  %cmp652 = icmp slt i32 %jj527.31608, %sub650
  br i1 %cmp652, label %for.cond654.preheader, label %for.cond651.for.end677_crit_edge

for.cond651.for.end677_crit_edge:                 ; preds = %for.end673
  %176 = sub i32 %172, %first524.11615
  br label %for.end677

for.end677:                                       ; preds = %for.cond651.for.end677_crit_edge, %for.body646
  %count.55.lcssa = phi i32 [ %count.56.lcssa, %for.cond651.for.end677_crit_edge ], [ %count.541618, %for.body646 ]
  %kstart530.5.lcssa = phi i32 [ %176, %for.cond651.for.end677_crit_edge ], [ %kstart530.41617, %for.body646 ]
  %indvars.iv.next1784 = add i64 %indvars.iv1783, 1
  %lftr.wideiv1785 = trunc i64 %indvars.iv.next1784 to i32
  %exitcond1786 = icmp eq i32 %lftr.wideiv1785, %npivot
  br i1 %exitcond1786, label %sw.epilog894, label %for.body646

if.else685:                                       ; preds = %sw.bb523
  %177 = load i32* %nL, align 4, !tbaa !3
  %add686 = add i32 %135, -1
  %sub687 = add i32 %add686, %177
  %type692 = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 4
  %178 = load i32* %type692, align 4, !tbaa !3
  switch i32 %178, label %sw.epilog894 [
    i32 1, label %for.cond695.preheader
    i32 2, label %for.cond721.preheader
  ]

for.cond721.preheader:                            ; preds = %if.else685
  %cmp7221639 = icmp sgt i32 %135, 0
  br i1 %cmp7221639, label %for.cond724.preheader.lr.ph, label %sw.epilog894

for.cond724.preheader.lr.ph:                      ; preds = %for.cond721.preheader
  %179 = add i32 %136, %177
  %180 = shl i32 %135, 1
  %181 = add i32 %179, %180
  %182 = add i32 %181, -3
  %183 = sext i32 %182 to i64
  br label %for.cond724.preheader

for.cond695.preheader:                            ; preds = %if.else685
  %cmp6961627 = icmp sgt i32 %135, 0
  br i1 %cmp6961627, label %for.cond698.preheader.lr.ph, label %sw.epilog894

for.cond698.preheader.lr.ph:                      ; preds = %for.cond695.preheader
  %184 = add i32 %136, %177
  %185 = shl i32 %135, 1
  %186 = add i32 %184, %185
  %187 = add i32 %186, -3
  %188 = sext i32 %187 to i64
  br label %for.cond698.preheader

for.cond698.preheader:                            ; preds = %for.cond698.preheader.lr.ph, %for.end712
  %indvars.iv1790 = phi i32 [ 0, %for.cond698.preheader.lr.ph ], [ %indvars.iv.next1791, %for.end712 ]
  %count.581630 = phi i32 [ 0, %for.cond698.preheader.lr.ph ], [ %count.59.lcssa, %for.end712 ]
  %kstart530.61629 = phi i32 [ %sub687, %for.cond698.preheader.lr.ph ], [ %inc713, %for.end712 ]
  %cmp6991620 = icmp sgt i32 %indvars.iv1790, 0
  br i1 %cmp6991620, label %for.body700, label %for.end712

for.body700:                                      ; preds = %for.cond698.preheader, %for.body700
  %indvars.iv1787 = phi i64 [ %indvars.iv.next1788, %for.body700 ], [ %188, %for.cond698.preheader ]
  %count.591624 = phi i32 [ %count.60, %for.body700 ], [ %count.581630, %for.cond698.preheader ]
  %kk529.41623 = phi i32 [ %add708, %for.body700 ], [ %kstart530.61629, %for.cond698.preheader ]
  %ii525.41621 = phi i32 [ %inc711, %for.body700 ], [ 0, %for.cond698.preheader ]
  %idxprom701 = sext i32 %kk529.41623 to i64
  %arrayidx702 = getelementptr inbounds double* %call13, i64 %idxprom701
  %189 = load double* %arrayidx702, align 8, !tbaa !4
  %call703 = call double @fabs(double %189) #7
  %not.cmp704 = fcmp oge double %call703, %droptol
  %inc706 = zext i1 %not.cmp704 to i32
  %count.60 = add nsw i32 %inc706, %count.591624
  %190 = trunc i64 %indvars.iv1787 to i32
  %add708 = add nsw i32 %kk529.41623, %190
  %inc711 = add nsw i32 %ii525.41621, 1
  %indvars.iv.next1788 = add i64 %indvars.iv1787, -2
  %exitcond1792 = icmp eq i32 %inc711, %indvars.iv1790
  br i1 %exitcond1792, label %for.end712, label %for.body700

for.end712:                                       ; preds = %for.body700, %for.cond698.preheader
  %count.59.lcssa = phi i32 [ %count.581630, %for.cond698.preheader ], [ %count.60, %for.body700 ]
  %inc713 = add nsw i32 %kstart530.61629, 1
  %indvars.iv.next1791 = add i32 %indvars.iv1790, 1
  %cmp696 = icmp slt i32 %indvars.iv.next1791, %135
  br i1 %cmp696, label %for.cond698.preheader, label %sw.epilog894

for.cond724.preheader:                            ; preds = %for.cond724.preheader.lr.ph, %for.end743
  %191 = phi i32 [ %135, %for.cond724.preheader.lr.ph ], [ %195, %for.end743 ]
  %indvars.iv1796 = phi i32 [ 0, %for.cond724.preheader.lr.ph ], [ %indvars.iv.next1797, %for.end743 ]
  %count.611642 = phi i32 [ 0, %for.cond724.preheader.lr.ph ], [ %count.62.lcssa, %for.end743 ]
  %kstart530.71641 = phi i32 [ %sub687, %for.cond724.preheader.lr.ph ], [ %inc744, %for.end743 ]
  %cmp7251632 = icmp sgt i32 %indvars.iv1796, 0
  br i1 %cmp7251632, label %for.body726, label %for.end743

for.body726:                                      ; preds = %for.cond724.preheader, %for.body726
  %indvars.iv1793 = phi i64 [ %indvars.iv.next1794, %for.body726 ], [ %183, %for.cond724.preheader ]
  %count.621636 = phi i32 [ %count.63, %for.body726 ], [ %count.611642, %for.cond724.preheader ]
  %kk529.51635 = phi i32 [ %add739, %for.body726 ], [ %kstart530.71641, %for.cond724.preheader ]
  %ii525.51633 = phi i32 [ %inc742, %for.body726 ], [ 0, %for.cond724.preheader ]
  %mul727 = shl nsw i32 %kk529.51635, 1
  %idxprom728 = sext i32 %mul727 to i64
  %arrayidx729 = getelementptr inbounds double* %call13, i64 %idxprom728
  %192 = load double* %arrayidx729, align 8, !tbaa !4
  %add7311365 = or i32 %mul727, 1
  %idxprom732 = sext i32 %add7311365 to i64
  %arrayidx733 = getelementptr inbounds double* %call13, i64 %idxprom732
  %193 = load double* %arrayidx733, align 8, !tbaa !4
  %call734 = call double @Zabs(double %192, double %193) #5
  %not.cmp735 = fcmp oge double %call734, %droptol
  %inc737 = zext i1 %not.cmp735 to i32
  %count.63 = add nsw i32 %inc737, %count.621636
  %194 = trunc i64 %indvars.iv1793 to i32
  %add739 = add nsw i32 %kk529.51635, %194
  %inc742 = add nsw i32 %ii525.51633, 1
  %indvars.iv.next1794 = add i64 %indvars.iv1793, -2
  %exitcond1798 = icmp eq i32 %inc742, %indvars.iv1796
  br i1 %exitcond1798, label %for.cond724.for.end743_crit_edge, label %for.body726

for.cond724.for.end743_crit_edge:                 ; preds = %for.body726
  %.pre1815 = load i32* %nD, align 4, !tbaa !3
  br label %for.end743

for.end743:                                       ; preds = %for.cond724.for.end743_crit_edge, %for.cond724.preheader
  %195 = phi i32 [ %.pre1815, %for.cond724.for.end743_crit_edge ], [ %191, %for.cond724.preheader ]
  %count.62.lcssa = phi i32 [ %count.63, %for.cond724.for.end743_crit_edge ], [ %count.611642, %for.cond724.preheader ]
  %inc744 = add nsw i32 %kstart530.71641, 1
  %indvars.iv.next1797 = add i32 %indvars.iv1796, 1
  %cmp722 = icmp slt i32 %indvars.iv.next1797, %195
  br i1 %cmp722, label %for.cond724.preheader, label %sw.epilog894

sw.bb751:                                         ; preds = %if.end12
  %196 = load i32* %nD, align 4, !tbaa !3
  %197 = load i32* %nU, align 4, !tbaa !3
  %add759 = add i32 %197, %196
  %198 = load i32* %symflag, align 4, !tbaa !3
  %switch1377 = icmp ult i32 %198, 2
  br i1 %switch1377, label %if.then765, label %if.else826

if.then765:                                       ; preds = %sw.bb751
  %type768 = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 4
  %199 = load i32* %type768, align 4, !tbaa !3
  switch i32 %199, label %sw.epilog894 [
    i32 1, label %for.cond771.preheader
    i32 2, label %for.cond797.preheader
  ]

for.cond797.preheader:                            ; preds = %if.then765
  %cmp7981663 = icmp sgt i32 %197, 0
  br i1 %cmp7981663, label %for.cond800.preheader.lr.ph, label %sw.epilog894

for.cond800.preheader.lr.ph:                      ; preds = %for.cond797.preheader
  %200 = add i32 %add759, -1
  %201 = sext i32 %200 to i64
  br label %for.cond800.preheader

for.cond771.preheader:                            ; preds = %if.then765
  %cmp7721651 = icmp sgt i32 %197, 0
  br i1 %cmp7721651, label %for.cond774.preheader.lr.ph, label %sw.epilog894

for.cond774.preheader.lr.ph:                      ; preds = %for.cond771.preheader
  %cmp7751644 = icmp sgt i32 %196, 0
  %202 = add i32 %add759, -1
  %203 = sext i32 %202 to i64
  br label %for.cond774.preheader

for.cond774.preheader:                            ; preds = %for.cond774.preheader.lr.ph, %for.end788
  %kstart756.01654 = phi i32 [ %196, %for.cond774.preheader.lr.ph ], [ %inc789, %for.end788 ]
  %count.641652 = phi i32 [ 0, %for.cond774.preheader.lr.ph ], [ %count.65.lcssa, %for.end788 ]
  br i1 %cmp7751644, label %for.body776, label %for.end788

for.body776:                                      ; preds = %for.cond774.preheader, %for.body776
  %indvars.iv1799 = phi i64 [ %indvars.iv.next1800, %for.body776 ], [ %203, %for.cond774.preheader ]
  %kk755.01648 = phi i32 [ %add784, %for.body776 ], [ %kstart756.01654, %for.cond774.preheader ]
  %ii752.01646 = phi i32 [ %inc787, %for.body776 ], [ 0, %for.cond774.preheader ]
  %count.651645 = phi i32 [ %count.66, %for.body776 ], [ %count.641652, %for.cond774.preheader ]
  %idxprom777 = sext i32 %kk755.01648 to i64
  %arrayidx778 = getelementptr inbounds double* %call13, i64 %idxprom777
  %204 = load double* %arrayidx778, align 8, !tbaa !4
  %call779 = call double @fabs(double %204) #7
  %not.cmp780 = fcmp oge double %call779, %droptol
  %inc782 = zext i1 %not.cmp780 to i32
  %count.66 = add nsw i32 %inc782, %count.651645
  %205 = trunc i64 %indvars.iv1799 to i32
  %add784 = add nsw i32 %kk755.01648, %205
  %inc787 = add nsw i32 %ii752.01646, 1
  %indvars.iv.next1800 = add i64 %indvars.iv1799, -1
  %exitcond1802 = icmp eq i32 %inc787, %196
  br i1 %exitcond1802, label %for.end788, label %for.body776

for.end788:                                       ; preds = %for.body776, %for.cond774.preheader
  %count.65.lcssa = phi i32 [ %count.641652, %for.cond774.preheader ], [ %count.66, %for.body776 ]
  %inc789 = add nsw i32 %kstart756.01654, 1
  %cmp772 = icmp slt i32 %inc789, %add759
  br i1 %cmp772, label %for.cond774.preheader, label %sw.epilog894

for.cond800.preheader:                            ; preds = %for.cond800.preheader.lr.ph, %for.end819
  %206 = phi i32 [ %196, %for.cond800.preheader.lr.ph ], [ %211, %for.end819 ]
  %kstart756.11666 = phi i32 [ %196, %for.cond800.preheader.lr.ph ], [ %inc820, %for.end819 ]
  %count.671664 = phi i32 [ 0, %for.cond800.preheader.lr.ph ], [ %count.68.lcssa, %for.end819 ]
  %cmp8011656 = icmp sgt i32 %206, 0
  br i1 %cmp8011656, label %for.body802, label %for.end819

for.body802:                                      ; preds = %for.cond800.preheader, %for.body802
  %indvars.iv1803 = phi i64 [ %indvars.iv.next1804, %for.body802 ], [ %201, %for.cond800.preheader ]
  %kk755.11660 = phi i32 [ %add815, %for.body802 ], [ %kstart756.11666, %for.cond800.preheader ]
  %ii752.11658 = phi i32 [ %inc818, %for.body802 ], [ 0, %for.cond800.preheader ]
  %count.681657 = phi i32 [ %count.69, %for.body802 ], [ %count.671664, %for.cond800.preheader ]
  %mul803 = shl nsw i32 %kk755.11660, 1
  %idxprom804 = sext i32 %mul803 to i64
  %arrayidx805 = getelementptr inbounds double* %call13, i64 %idxprom804
  %207 = load double* %arrayidx805, align 8, !tbaa !4
  %add8071364 = or i32 %mul803, 1
  %idxprom808 = sext i32 %add8071364 to i64
  %arrayidx809 = getelementptr inbounds double* %call13, i64 %idxprom808
  %208 = load double* %arrayidx809, align 8, !tbaa !4
  %call810 = call double @Zabs(double %207, double %208) #5
  %not.cmp811 = fcmp oge double %call810, %droptol
  %inc813 = zext i1 %not.cmp811 to i32
  %count.69 = add nsw i32 %inc813, %count.681657
  %209 = trunc i64 %indvars.iv1803 to i32
  %add815 = add nsw i32 %kk755.11660, %209
  %inc818 = add nsw i32 %ii752.11658, 1
  %210 = load i32* %nD, align 4, !tbaa !3
  %cmp801 = icmp slt i32 %inc818, %210
  %indvars.iv.next1804 = add i64 %indvars.iv1803, -1
  br i1 %cmp801, label %for.body802, label %for.end819

for.end819:                                       ; preds = %for.body802, %for.cond800.preheader
  %211 = phi i32 [ %206, %for.cond800.preheader ], [ %210, %for.body802 ]
  %count.68.lcssa = phi i32 [ %count.671664, %for.cond800.preheader ], [ %count.69, %for.body802 ]
  %inc820 = add nsw i32 %kstart756.11666, 1
  %cmp798 = icmp slt i32 %inc820, %add759
  br i1 %cmp798, label %for.cond800.preheader, label %sw.epilog894

if.else826:                                       ; preds = %sw.bb751
  %mul827 = shl nsw i32 %196, 1
  %212 = load i32* %nL, align 4, !tbaa !3
  %add828 = add nsw i32 %212, %mul827
  %sub829 = add nsw i32 %add828, -1
  %type834 = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 4
  %213 = load i32* %type834, align 4, !tbaa !3
  switch i32 %213, label %sw.epilog894 [
    i32 1, label %for.cond837.preheader
    i32 2, label %for.cond863.preheader
  ]

for.cond863.preheader:                            ; preds = %if.else826
  %cmp8641687 = icmp sgt i32 %197, 0
  br i1 %cmp8641687, label %for.cond866.preheader.lr.ph, label %sw.epilog894

for.cond866.preheader.lr.ph:                      ; preds = %for.cond863.preheader
  %214 = add i32 %212, %197
  %215 = shl i32 %196, 1
  %216 = add i32 %214, %215
  %217 = add i32 %216, -3
  %218 = sext i32 %217 to i64
  br label %for.cond866.preheader

for.cond837.preheader:                            ; preds = %if.else826
  %cmp8381675 = icmp sgt i32 %197, 0
  br i1 %cmp8381675, label %for.cond840.preheader.lr.ph, label %sw.epilog894

for.cond840.preheader.lr.ph:                      ; preds = %for.cond837.preheader
  %cmp8411668 = icmp sgt i32 %196, 0
  %219 = add i32 %212, %197
  %220 = shl i32 %196, 1
  %221 = add i32 %219, %220
  %222 = add i32 %221, -3
  %223 = sext i32 %222 to i64
  br label %for.cond840.preheader

for.cond840.preheader:                            ; preds = %for.cond840.preheader.lr.ph, %for.end854
  %kstart756.21678 = phi i32 [ %sub829, %for.cond840.preheader.lr.ph ], [ %inc855, %for.end854 ]
  %jj753.21677 = phi i32 [ %196, %for.cond840.preheader.lr.ph ], [ %inc857, %for.end854 ]
  %count.701676 = phi i32 [ 0, %for.cond840.preheader.lr.ph ], [ %count.71.lcssa, %for.end854 ]
  br i1 %cmp8411668, label %for.body842, label %for.end854

for.body842:                                      ; preds = %for.cond840.preheader, %for.body842
  %indvars.iv1806 = phi i64 [ %indvars.iv.next1807, %for.body842 ], [ %223, %for.cond840.preheader ]
  %kk755.21672 = phi i32 [ %add850, %for.body842 ], [ %kstart756.21678, %for.cond840.preheader ]
  %ii752.21670 = phi i32 [ %inc853, %for.body842 ], [ 0, %for.cond840.preheader ]
  %count.711669 = phi i32 [ %count.72, %for.body842 ], [ %count.701676, %for.cond840.preheader ]
  %idxprom843 = sext i32 %kk755.21672 to i64
  %arrayidx844 = getelementptr inbounds double* %call13, i64 %idxprom843
  %224 = load double* %arrayidx844, align 8, !tbaa !4
  %call845 = call double @fabs(double %224) #7
  %not.cmp846 = fcmp oge double %call845, %droptol
  %inc848 = zext i1 %not.cmp846 to i32
  %count.72 = add nsw i32 %inc848, %count.711669
  %225 = trunc i64 %indvars.iv1806 to i32
  %add850 = add nsw i32 %kk755.21672, %225
  %inc853 = add nsw i32 %ii752.21670, 1
  %indvars.iv.next1807 = add i64 %indvars.iv1806, -2
  %exitcond1809 = icmp eq i32 %inc853, %196
  br i1 %exitcond1809, label %for.end854, label %for.body842

for.end854:                                       ; preds = %for.body842, %for.cond840.preheader
  %count.71.lcssa = phi i32 [ %count.701676, %for.cond840.preheader ], [ %count.72, %for.body842 ]
  %inc855 = add nsw i32 %kstart756.21678, 1
  %inc857 = add nsw i32 %jj753.21677, 1
  %cmp838 = icmp slt i32 %inc857, %add759
  br i1 %cmp838, label %for.cond840.preheader, label %sw.epilog894

for.cond866.preheader:                            ; preds = %for.cond866.preheader.lr.ph, %for.end885
  %226 = phi i32 [ %196, %for.cond866.preheader.lr.ph ], [ %231, %for.end885 ]
  %kstart756.31690 = phi i32 [ %sub829, %for.cond866.preheader.lr.ph ], [ %inc886, %for.end885 ]
  %jj753.31689 = phi i32 [ %196, %for.cond866.preheader.lr.ph ], [ %inc888, %for.end885 ]
  %count.731688 = phi i32 [ 0, %for.cond866.preheader.lr.ph ], [ %count.74.lcssa, %for.end885 ]
  %cmp8671680 = icmp sgt i32 %226, 0
  br i1 %cmp8671680, label %for.body868, label %for.end885

for.body868:                                      ; preds = %for.cond866.preheader, %for.body868
  %indvars.iv1810 = phi i64 [ %indvars.iv.next1811, %for.body868 ], [ %218, %for.cond866.preheader ]
  %kk755.31684 = phi i32 [ %add881, %for.body868 ], [ %kstart756.31690, %for.cond866.preheader ]
  %ii752.31682 = phi i32 [ %inc884, %for.body868 ], [ 0, %for.cond866.preheader ]
  %count.741681 = phi i32 [ %count.75, %for.body868 ], [ %count.731688, %for.cond866.preheader ]
  %mul869 = shl nsw i32 %kk755.31684, 1
  %idxprom870 = sext i32 %mul869 to i64
  %arrayidx871 = getelementptr inbounds double* %call13, i64 %idxprom870
  %227 = load double* %arrayidx871, align 8, !tbaa !4
  %add8731363 = or i32 %mul869, 1
  %idxprom874 = sext i32 %add8731363 to i64
  %arrayidx875 = getelementptr inbounds double* %call13, i64 %idxprom874
  %228 = load double* %arrayidx875, align 8, !tbaa !4
  %call876 = call double @Zabs(double %227, double %228) #5
  %not.cmp877 = fcmp oge double %call876, %droptol
  %inc879 = zext i1 %not.cmp877 to i32
  %count.75 = add nsw i32 %inc879, %count.741681
  %229 = trunc i64 %indvars.iv1810 to i32
  %add881 = add nsw i32 %kk755.31684, %229
  %inc884 = add nsw i32 %ii752.31682, 1
  %230 = load i32* %nD, align 4, !tbaa !3
  %cmp867 = icmp slt i32 %inc884, %230
  %indvars.iv.next1811 = add i64 %indvars.iv1810, -2
  br i1 %cmp867, label %for.body868, label %for.end885

for.end885:                                       ; preds = %for.body868, %for.cond866.preheader
  %231 = phi i32 [ %226, %for.cond866.preheader ], [ %230, %for.body868 ]
  %count.74.lcssa = phi i32 [ %count.731688, %for.cond866.preheader ], [ %count.75, %for.body868 ]
  %inc886 = add nsw i32 %kstart756.31690, 1
  %inc888 = add nsw i32 %jj753.31689, 1
  %cmp864 = icmp slt i32 %inc888, %add759
  br i1 %cmp864, label %for.cond866.preheader, label %sw.epilog894

sw.epilog894:                                     ; preds = %for.cond863.preheader, %for.end885, %for.cond837.preheader, %for.end854, %for.cond797.preheader, %for.end819, %for.cond771.preheader, %for.end788, %for.cond721.preheader, %for.end743, %for.cond695.preheader, %for.end712, %for.end677, %for.cond607.preheader, %for.end635, %for.end596, %for.cond548.preheader, %for.end565, %for.cond494.preheader, %for.end516, %for.cond468.preheader, %for.end485, %for.cond422.preheader, %for.end444, %for.cond396.preheader, %for.end413, %for.cond341.preheader, %for.end370, %for.cond308.preheader, %for.end332, %for.end267, %for.end290, %for.end203, %for.end221, %for.end160, %for.cond98.preheader, %for.end122, %for.cond41.preheader, %for.end70, %for.cond.preheader, %for.end, %if.else826, %if.then765, %if.else685, %sw.bb451, %sw.bb378, %if.else298, %sw.bb14, %if.end12, %if.else640, %if.else570, %if.else226, %if.else127
  %count.76 = phi i32 [ undef, %if.end12 ], [ 0, %if.else570 ], [ 0, %if.else640 ], [ 0, %if.else127 ], [ 0, %if.else226 ], [ 0, %sw.bb14 ], [ 0, %if.else298 ], [ 0, %sw.bb378 ], [ 0, %sw.bb451 ], [ 0, %if.else685 ], [ 0, %if.then765 ], [ 0, %if.else826 ], [ 0, %for.cond.preheader ], [ %count.1.lcssa, %for.end ], [ 0, %for.cond41.preheader ], [ %count.4.lcssa, %for.end70 ], [ 0, %for.cond98.preheader ], [ %count.7.lcssa, %for.end122 ], [ %count.10.lcssa, %for.end160 ], [ %count.12.lcssa, %for.end203 ], [ %count.17.lcssa, %for.end221 ], [ %count.19.lcssa, %for.end267 ], [ %count.24.lcssa, %for.end290 ], [ 0, %for.cond308.preheader ], [ %count.27.lcssa, %for.end332 ], [ 0, %for.cond341.preheader ], [ %count.30.lcssa, %for.end370 ], [ 0, %for.cond396.preheader ], [ %count.33.lcssa, %for.end413 ], [ 0, %for.cond422.preheader ], [ %count.36.lcssa, %for.end444 ], [ 0, %for.cond468.preheader ], [ %count.39.lcssa, %for.end485 ], [ 0, %for.cond494.preheader ], [ %count.42.lcssa, %for.end516 ], [ 0, %for.cond548.preheader ], [ %count.45.lcssa, %for.end565 ], [ %count.48.lcssa, %for.end596 ], [ 0, %for.cond607.preheader ], [ %count.51.lcssa, %for.end635 ], [ %count.55.lcssa, %for.end677 ], [ 0, %for.cond695.preheader ], [ %count.59.lcssa, %for.end712 ], [ 0, %for.cond721.preheader ], [ %count.62.lcssa, %for.end743 ], [ 0, %for.cond771.preheader ], [ %count.65.lcssa, %for.end788 ], [ 0, %for.cond797.preheader ], [ %count.68.lcssa, %for.end819 ], [ 0, %for.cond837.preheader ], [ %count.71.lcssa, %for.end854 ], [ 0, %for.cond863.preheader ], [ %count.74.lcssa, %for.end885 ]
  ret i32 %count.76
}

; Function Attrs: nounwind optsize uwtable
define void @Chv_copyTrailingPortion(%struct._Chv* %chvI, %struct._Chv* %chvJ, i32 %offset) #0 {
entry:
  %ncolI = alloca i32, align 4
  %ncolJ = alloca i32, align 4
  %nDJ = alloca i32, align 4
  %nLJ = alloca i32, align 4
  %nrowI = alloca i32, align 4
  %nrowJ = alloca i32, align 4
  %nUJ = alloca i32, align 4
  %colindI = alloca i32*, align 8
  %colindJ = alloca i32*, align 8
  %rowindI = alloca i32*, align 8
  %rowindJ = alloca i32*, align 8
  %cmp = icmp eq %struct._Chv* %chvI, null
  %cmp1 = icmp eq %struct._Chv* %chvJ, null
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([63 x i8]* @.str14, i64 0, i64 0), %struct._Chv* %chvI, %struct._Chv* %chvJ, i32 %offset) #5
  call void @exit(i32 -1) #6
  unreachable

if.end:                                           ; preds = %entry
  call void @Chv_dimensions(%struct._Chv* %chvJ, i32* %nDJ, i32* %nLJ, i32* %nUJ) #5
  %cmp2 = icmp sgt i32 %offset, -1
  %.pre = load i32* %nDJ, align 4, !tbaa !3
  %cmp4 = icmp sgt i32 %.pre, %offset
  %or.cond113 = and i1 %cmp2, %cmp4
  br i1 %or.cond113, label %if.end7, label %if.then5

if.then5:                                         ; preds = %if.end
  %1 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call6 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([75 x i8]* @.str15, i64 0, i64 0), %struct._Chv* %chvI, %struct._Chv* %chvJ, i32 %offset, i32 %.pre, i32 %offset) #5
  call void @exit(i32 -1) #6
  unreachable

if.end7:                                          ; preds = %if.end
  call void @Chv_columnIndices(%struct._Chv* %chvJ, i32* %ncolJ, i32** %colindJ) #5
  %symflag = getelementptr inbounds %struct._Chv* %chvJ, i64 0, i32 5
  %2 = load i32* %symflag, align 4, !tbaa !3
  %switch = icmp ult i32 %2, 2
  br i1 %switch, label %if.then12, label %if.else

if.then12:                                        ; preds = %if.end7
  %id = getelementptr inbounds %struct._Chv* %chvJ, i64 0, i32 0
  %3 = load i32* %id, align 4, !tbaa !3
  %4 = load i32* %nDJ, align 4, !tbaa !3
  %sub = sub nsw i32 %4, %offset
  %5 = load i32* %nUJ, align 4, !tbaa !3
  %type = getelementptr inbounds %struct._Chv* %chvJ, i64 0, i32 4
  %6 = load i32* %type, align 4, !tbaa !3
  call void @Chv_init(%struct._Chv* %chvI, i32 %3, i32 %sub, i32 0, i32 %5, i32 %6, i32 %2) #5
  call void @Chv_columnIndices(%struct._Chv* %chvI, i32* %ncolI, i32** %colindI) #5
  %7 = load i32* %nDJ, align 4, !tbaa !3
  %8 = load i32* %nUJ, align 4, !tbaa !3
  %add = sub i32 %7, %offset
  %sub14 = add i32 %add, %8
  %9 = load i32** %colindI, align 8, !tbaa !0
  %10 = load i32** %colindJ, align 8, !tbaa !0
  %idx.ext = sext i32 %offset to i64
  %add.ptr = getelementptr inbounds i32* %10, i64 %idx.ext
  call void @IVcopy(i32 %sub14, i32* %9, i32* %add.ptr) #5
  %11 = load i32* %nDJ, align 4, !tbaa !3
  %12 = load i32* %nUJ, align 4, !tbaa !3
  %add15 = add nsw i32 %12, %11
  %mul = mul nsw i32 %add15, %offset
  %sub16 = add nsw i32 %offset, -1
  %mul17 = mul nsw i32 %sub16, %offset
  %div = sdiv i32 %mul17, 2
  %sub18 = sub nsw i32 %mul, %div
  %add19 = add nsw i32 %11, 1
  %mul20 = mul nsw i32 %add19, %11
  %div21 = sdiv i32 %mul20, 2
  %mul22 = mul nsw i32 %12, %11
  %add23 = add nsw i32 %div21, %mul22
  %sub24 = sub i32 %add23, %sub18
  br label %if.end46

if.else:                                          ; preds = %if.end7
  call void @Chv_rowIndices(%struct._Chv* %chvJ, i32* %nrowJ, i32** %rowindJ) #5
  %id25 = getelementptr inbounds %struct._Chv* %chvJ, i64 0, i32 0
  %13 = load i32* %id25, align 4, !tbaa !3
  %14 = load i32* %nDJ, align 4, !tbaa !3
  %sub26 = sub nsw i32 %14, %offset
  %15 = load i32* %nLJ, align 4, !tbaa !3
  %16 = load i32* %nUJ, align 4, !tbaa !3
  %type27 = getelementptr inbounds %struct._Chv* %chvJ, i64 0, i32 4
  %17 = load i32* %type27, align 4, !tbaa !3
  %18 = load i32* %symflag, align 4, !tbaa !3
  call void @Chv_init(%struct._Chv* %chvI, i32 %13, i32 %sub26, i32 %15, i32 %16, i32 %17, i32 %18) #5
  call void @Chv_columnIndices(%struct._Chv* %chvI, i32* %ncolI, i32** %colindI) #5
  %19 = load i32* %nDJ, align 4, !tbaa !3
  %20 = load i32* %nUJ, align 4, !tbaa !3
  %add29 = sub i32 %19, %offset
  %sub30 = add i32 %add29, %20
  %21 = load i32** %colindI, align 8, !tbaa !0
  %22 = load i32** %colindJ, align 8, !tbaa !0
  %idx.ext31 = sext i32 %offset to i64
  %add.ptr32 = getelementptr inbounds i32* %22, i64 %idx.ext31
  call void @IVcopy(i32 %sub30, i32* %21, i32* %add.ptr32) #5
  call void @Chv_rowIndices(%struct._Chv* %chvI, i32* %nrowI, i32** %rowindI) #5
  %23 = load i32* %nDJ, align 4, !tbaa !3
  %24 = load i32* %nLJ, align 4, !tbaa !3
  %add33 = sub i32 %23, %offset
  %sub34 = add i32 %add33, %24
  %25 = load i32** %rowindI, align 8, !tbaa !0
  %26 = load i32** %rowindJ, align 8, !tbaa !0
  %add.ptr36 = getelementptr inbounds i32* %26, i64 %idx.ext31
  call void @IVcopy(i32 %sub34, i32* %25, i32* %add.ptr36) #5
  %27 = load i32* %nDJ, align 4, !tbaa !3
  %mul37 = shl i32 %27, 1
  %28 = load i32* %nLJ, align 4, !tbaa !3
  %29 = load i32* %nUJ, align 4, !tbaa !3
  %add38 = sub i32 %28, %offset
  %add39 = add i32 %add38, %mul37
  %sub40 = add i32 %add39, %29
  %mul41 = mul nsw i32 %sub40, %offset
  %add42 = add nsw i32 %28, %27
  %add43 = add nsw i32 %add42, %29
  %mul44 = mul nsw i32 %add43, %27
  %sub45 = sub nsw i32 %mul44, %mul41
  br label %if.end46

if.end46:                                         ; preds = %if.else, %if.then12
  %first.0 = phi i32 [ %sub18, %if.then12 ], [ %mul41, %if.else ]
  %nentToCopy.0 = phi i32 [ %sub24, %if.then12 ], [ %sub45, %if.else ]
  %type47 = getelementptr inbounds %struct._Chv* %chvJ, i64 0, i32 4
  %30 = load i32* %type47, align 4, !tbaa !3
  switch i32 %30, label %if.end65 [
    i32 1, label %if.then49
    i32 2, label %if.then57
  ]

if.then49:                                        ; preds = %if.end46
  %call50 = call double* @Chv_entries(%struct._Chv* %chvI) #5
  %call51 = call double* @Chv_entries(%struct._Chv* %chvJ) #5
  %idx.ext52 = sext i32 %first.0 to i64
  %add.ptr53 = getelementptr inbounds double* %call51, i64 %idx.ext52
  call void @DVcopy(i32 %nentToCopy.0, double* %call50, double* %add.ptr53) #5
  br label %if.end65

if.then57:                                        ; preds = %if.end46
  %mul58 = shl nsw i32 %nentToCopy.0, 1
  %call59 = call double* @Chv_entries(%struct._Chv* %chvI) #5
  %call60 = call double* @Chv_entries(%struct._Chv* %chvJ) #5
  %mul61 = shl nsw i32 %first.0, 1
  %idx.ext62 = sext i32 %mul61 to i64
  %add.ptr63 = getelementptr inbounds double* %call60, i64 %idx.ext62
  call void @DVcopy(i32 %mul58, double* %call59, double* %add.ptr63) #5
  br label %if.end65

if.end65:                                         ; preds = %if.end46, %if.then57, %if.then49
  ret void
}

; Function Attrs: optsize
declare void @Chv_columnIndices(%struct._Chv*, i32*, i32**) #3

; Function Attrs: optsize
declare void @Chv_init(%struct._Chv*, i32, i32, i32, i32, i32, i32) #3

; Function Attrs: optsize
declare void @IVcopy(i32, i32*, i32*) #3

; Function Attrs: optsize
declare void @Chv_rowIndices(%struct._Chv*, i32*, i32**) #3

; Function Attrs: optsize
declare void @DVcopy(i32, double*, double*) #3

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind optsize }
attributes #6 = { noreturn nounwind optsize }
attributes #7 = { nounwind optsize readnone }

!0 = metadata !{metadata !"any pointer", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"int", metadata !1}
!4 = metadata !{metadata !"double", metadata !1}
