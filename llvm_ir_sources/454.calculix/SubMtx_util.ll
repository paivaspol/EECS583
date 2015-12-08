; ModuleID = '../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_util.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct._SubMtx = type { i32, i32, i32, i32, i32, i32, i32, double*, %struct._DV, %struct._SubMtx* }
%struct._DV = type { i32, i32, i32, double* }
%struct._ZV = type { i32, i32, i32, double* }

@stderr = external global %struct._IO_FILE*
@.str = private unnamed_addr constant [56 x i8] c"\0A fatal error in SubMtx_fillRowDV(%p,%d,%p)\0A bad input\0A\00", align 1
@.str1 = private unnamed_addr constant [78 x i8] c"\0A fatal error in SubMtx_fillRowDV(%p,%d,%p)\0A type = %d, must be SPOOLES_REAL\0A\00", align 1
@.str2 = private unnamed_addr constant [56 x i8] c"\0A fatal error in SubMtx_fillRowZV(%p,%d,%p)\0A bad input\0A\00", align 1
@.str3 = private unnamed_addr constant [81 x i8] c"\0A fatal error in SubMtx_fillRowZV(%p,%d,%p)\0A type = %d, must be SPOOLES_COMPLEX\0A\00", align 1
@.str4 = private unnamed_addr constant [59 x i8] c"\0A fatal error in SubMtx_fillColumnDV(%p,%d,%p)\0A bad input\0A\00", align 1
@.str5 = private unnamed_addr constant [83 x i8] c"\0A fatal error in SubMtx_fillColumnDV(%p,%d,%p)\0A bad type %d, must be SPOOLES_REAL\0A\00", align 1
@.str6 = private unnamed_addr constant [59 x i8] c"\0A fatal error in SubMtx_fillColumnZV(%p,%d,%p)\0A bad input\0A\00", align 1
@.str7 = private unnamed_addr constant [86 x i8] c"\0A fatal error in SubMtx_fillColumnZV(%p,%d,%p)\0A bad type %d, must be SPOOLES_COMPLEX\0A\00", align 1
@.str8 = private unnamed_addr constant [47 x i8] c"\0A fatal error in SubMtx_maxabs(%p)\0A bad input\0A\00", align 1
@.str9 = private unnamed_addr constant [90 x i8] c"\0A fatal error in SubMtx_maxabs(%p)\0A bad type %d, must be SPOOLES_REAL or SPOOLES_COMPLEX\0A\00", align 1
@.str10 = private unnamed_addr constant [45 x i8] c"\0A fatal error in SubMtx_zero(%p)\0A bad input\0A\00", align 1

; Function Attrs: nounwind optsize uwtable
define void @SubMtx_fillRowDV(%struct._SubMtx* %mtx, i32 %irow, %struct._DV* %rowDV) #0 {
entry:
  %entries = alloca double*, align 8
  %inc1 = alloca i32, align 4
  %inc2 = alloca i32, align 4
  %ncol11 = alloca i32, align 4
  %nrow = alloca i32, align 4
  %entries17 = alloca double*, align 8
  %nent = alloca i32, align 4
  %nrow18 = alloca i32, align 4
  %indices = alloca i32*, align 8
  %sizes = alloca i32*, align 8
  %entries44 = alloca double*, align 8
  %nent48 = alloca i32, align 4
  %ncol49 = alloca i32, align 4
  %indices51 = alloca i32*, align 8
  %sizes52 = alloca i32*, align 8
  %entries81 = alloca double*, align 8
  %nent83 = alloca i32, align 4
  %colids = alloca i32*, align 8
  %rowids = alloca i32*, align 8
  %entries102 = alloca double*, align 8
  %nent106 = alloca i32, align 4
  %nrow107 = alloca i32, align 4
  %firstlocs = alloca i32*, align 8
  %sizes109 = alloca i32*, align 8
  %entries141 = alloca double*, align 8
  %nent146 = alloca i32, align 4
  %ncol147 = alloca i32, align 4
  %firstlocs149 = alloca i32*, align 8
  %sizes150 = alloca i32*, align 8
  %entries182 = alloca double*, align 8
  %nent183 = alloca i32, align 4
  %entries189 = alloca double*, align 8
  %nrow193 = alloca i32, align 4
  %nent194 = alloca i32, align 4
  %pivotsizes = alloca i32*, align 8
  %entries240 = alloca double*, align 8
  %nrow246 = alloca i32, align 4
  %nent247 = alloca i32, align 4
  %pivotsizes249 = alloca i32*, align 8
  %cmp = icmp eq %struct._SubMtx* %mtx, null
  %cmp1 = icmp slt i32 %irow, 0
  %or.cond = or i1 %cmp, %cmp1
  %cmp3 = icmp eq %struct._DV* %rowDV, null
  %or.cond435 = or i1 %or.cond, %cmp3
  br i1 %or.cond435, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([56 x i8]* @.str, i64 0, i64 0), %struct._SubMtx* %mtx, i32 %irow, %struct._DV* %rowDV) #4
  call void @exit(i32 -1) #5
  unreachable

if.end:                                           ; preds = %entry
  %type = getelementptr inbounds %struct._SubMtx* %mtx, i64 0, i32 0
  %1 = load i32* %type, align 4, !tbaa !3
  %cmp4 = icmp eq i32 %1, 1
  br i1 %cmp4, label %if.end8, label %if.then5

if.then5:                                         ; preds = %if.end
  %2 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call7 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([78 x i8]* @.str1, i64 0, i64 0), %struct._SubMtx* %mtx, i32 %irow, %struct._DV* %rowDV, i32 %1) #4
  call void @exit(i32 -1) #5
  unreachable

if.end8:                                          ; preds = %if.end
  %ncol = getelementptr inbounds %struct._SubMtx* %mtx, i64 0, i32 5
  %3 = load i32* %ncol, align 4, !tbaa !3
  call void @DV_setSize(%struct._DV* %rowDV, i32 %3) #4
  %call9 = call double* @DV_entries(%struct._DV* %rowDV) #4
  %4 = load i32* %ncol, align 4, !tbaa !3
  call void @DVzero(i32 %4, double* %call9) #4
  %mode = getelementptr inbounds %struct._SubMtx* %mtx, i64 0, i32 1
  %5 = load i32* %mode, align 4, !tbaa !3
  switch i32 %5, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb
    i32 2, label %sw.bb16
    i32 3, label %sw.bb43
    i32 4, label %sw.bb80
    i32 5, label %sw.bb101
    i32 6, label %sw.bb140
    i32 7, label %sw.bb181
    i32 8, label %for.body197.lr.ph
    i32 9, label %for.body252.lr.ph
  ]

sw.bb:                                            ; preds = %if.end8, %if.end8
  call void @SubMtx_denseInfo(%struct._SubMtx* %mtx, i32* %nrow, i32* %ncol11, i32* %inc1, i32* %inc2, double** %entries) #4
  %6 = load i32* %ncol11, align 4, !tbaa !3
  %cmp12436 = icmp sgt i32 %6, 0
  br i1 %cmp12436, label %for.body.lr.ph, label %sw.epilog

for.body.lr.ph:                                   ; preds = %sw.bb
  %7 = load i32* %inc1, align 4, !tbaa !3
  %mul = mul nsw i32 %7, %irow
  %8 = load i32* %inc2, align 4, !tbaa !3
  %9 = load double** %entries, align 8, !tbaa !0
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.body ]
  %10 = trunc i64 %indvars.iv to i32
  %mul13 = mul nsw i32 %8, %10
  %add = add nsw i32 %mul13, %mul
  %idxprom = sext i32 %add to i64
  %arrayidx = getelementptr inbounds double* %9, i64 %idxprom
  %11 = load double* %arrayidx, align 8, !tbaa !4
  %arrayidx15 = getelementptr inbounds double* %call9, i64 %indvars.iv
  store double %11, double* %arrayidx15, align 8, !tbaa !4
  %indvars.iv.next = add i64 %indvars.iv, 1
  %12 = trunc i64 %indvars.iv.next to i32
  %cmp12 = icmp slt i32 %12, %6
  br i1 %cmp12, label %for.body, label %sw.epilog

sw.bb16:                                          ; preds = %if.end8
  call void @SubMtx_sparseRowsInfo(%struct._SubMtx* %mtx, i32* %nrow18, i32* %nent, i32** %sizes, i32** %indices, double** %entries17) #4
  %cmp20443 = icmp sgt i32 %irow, 0
  %13 = load i32** %sizes, align 8, !tbaa !0
  br i1 %cmp20443, label %for.body21, label %for.cond28.preheader

for.cond19.for.cond28.preheader_crit_edge:        ; preds = %for.body21
  %phitmp549 = sext i32 %add24 to i64
  br label %for.cond28.preheader

for.cond28.preheader:                             ; preds = %sw.bb16, %for.cond19.for.cond28.preheader_crit_edge
  %offset.0.lcssa = phi i64 [ %phitmp549, %for.cond19.for.cond28.preheader_crit_edge ], [ 0, %sw.bb16 ]
  %idxprom29 = sext i32 %irow to i64
  %arrayidx30439 = getelementptr inbounds i32* %13, i64 %idxprom29
  %14 = load i32* %arrayidx30439, align 4, !tbaa !3
  %cmp31440 = icmp sgt i32 %14, 0
  br i1 %cmp31440, label %for.body32.lr.ph, label %sw.epilog

for.body32.lr.ph:                                 ; preds = %for.cond28.preheader
  %15 = load double** %entries17, align 8, !tbaa !0
  %16 = load i32** %indices, align 8, !tbaa !0
  br label %for.body32

for.body21:                                       ; preds = %sw.bb16, %for.body21
  %indvars.iv506 = phi i64 [ %indvars.iv.next507, %for.body21 ], [ 0, %sw.bb16 ]
  %offset.0444 = phi i32 [ %add24, %for.body21 ], [ 0, %sw.bb16 ]
  %arrayidx23 = getelementptr inbounds i32* %13, i64 %indvars.iv506
  %17 = load i32* %arrayidx23, align 4, !tbaa !3
  %add24 = add nsw i32 %17, %offset.0444
  %indvars.iv.next507 = add i64 %indvars.iv506, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next507 to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %irow
  br i1 %exitcond, label %for.cond19.for.cond28.preheader_crit_edge, label %for.body21

for.body32:                                       ; preds = %for.body32.lr.ph, %for.body32
  %indvars.iv504 = phi i64 [ %offset.0.lcssa, %for.body32.lr.ph ], [ %indvars.iv.next505, %for.body32 ]
  %ii.0442 = phi i32 [ 0, %for.body32.lr.ph ], [ %inc40, %for.body32 ]
  %arrayidx34 = getelementptr inbounds double* %15, i64 %indvars.iv504
  %18 = load double* %arrayidx34, align 8, !tbaa !4
  %arrayidx36 = getelementptr inbounds i32* %16, i64 %indvars.iv504
  %19 = load i32* %arrayidx36, align 4, !tbaa !3
  %idxprom37 = sext i32 %19 to i64
  %arrayidx38 = getelementptr inbounds double* %call9, i64 %idxprom37
  store double %18, double* %arrayidx38, align 8, !tbaa !4
  %inc40 = add nsw i32 %ii.0442, 1
  %indvars.iv.next505 = add i64 %indvars.iv504, 1
  %cmp31 = icmp slt i32 %inc40, %14
  br i1 %cmp31, label %for.body32, label %sw.epilog

sw.bb43:                                          ; preds = %if.end8
  call void @SubMtx_sparseColumnsInfo(%struct._SubMtx* %mtx, i32* %ncol49, i32* %nent48, i32** %sizes52, i32** %indices51, double** %entries44) #4
  %20 = load i32* %ncol49, align 4, !tbaa !3
  %cmp54454 = icmp sgt i32 %20, 0
  br i1 %cmp54454, label %for.cond56.preheader.lr.ph, label %sw.epilog

for.cond56.preheader.lr.ph:                       ; preds = %sw.bb43
  %21 = load i32** %sizes52, align 8, !tbaa !0
  %22 = load i32** %indices51, align 8, !tbaa !0
  %23 = load double** %entries44, align 8, !tbaa !0
  br label %for.cond56.preheader

for.cond56.preheader:                             ; preds = %for.cond56.preheader.lr.ph, %for.end73
  %indvars.iv511 = phi i64 [ 0, %for.cond56.preheader.lr.ph ], [ %indvars.iv.next512, %for.end73 ]
  %offset50.0455 = phi i32 [ 0, %for.cond56.preheader.lr.ph ], [ %add76, %for.end73 ]
  %arrayidx58448 = getelementptr inbounds i32* %21, i64 %indvars.iv511
  %24 = load i32* %arrayidx58448, align 4, !tbaa !3
  %cmp59449 = icmp sgt i32 %24, 0
  br i1 %cmp59449, label %for.body60.lr.ph, label %for.end73

for.body60.lr.ph:                                 ; preds = %for.cond56.preheader
  %25 = sext i32 %offset50.0455 to i64
  br label %for.body60

for.body60:                                       ; preds = %for.body60.lr.ph, %for.inc70
  %indvars.iv509 = phi i64 [ %25, %for.body60.lr.ph ], [ %indvars.iv.next510, %for.inc70 ]
  %ii45.0451 = phi i32 [ 0, %for.body60.lr.ph ], [ %inc71, %for.inc70 ]
  %arrayidx62 = getelementptr inbounds i32* %22, i64 %indvars.iv509
  %26 = load i32* %arrayidx62, align 4, !tbaa !3
  %cmp63 = icmp eq i32 %26, %irow
  br i1 %cmp63, label %if.then64, label %for.inc70

if.then64:                                        ; preds = %for.body60
  %arrayidx66 = getelementptr inbounds double* %23, i64 %indvars.iv509
  %27 = load double* %arrayidx66, align 8, !tbaa !4
  %arrayidx68 = getelementptr inbounds double* %call9, i64 %indvars.iv511
  store double %27, double* %arrayidx68, align 8, !tbaa !4
  br label %for.end73

for.inc70:                                        ; preds = %for.body60
  %inc71 = add nsw i32 %ii45.0451, 1
  %indvars.iv.next510 = add i64 %indvars.iv509, 1
  %cmp59 = icmp slt i32 %inc71, %24
  br i1 %cmp59, label %for.body60, label %for.end73

for.end73:                                        ; preds = %for.cond56.preheader, %for.inc70, %if.then64
  %add76 = add nsw i32 %24, %offset50.0455
  %indvars.iv.next512 = add i64 %indvars.iv511, 1
  %28 = trunc i64 %indvars.iv.next512 to i32
  %cmp54 = icmp slt i32 %28, %20
  br i1 %cmp54, label %for.cond56.preheader, label %sw.epilog

sw.bb80:                                          ; preds = %if.end8
  call void @SubMtx_sparseTriplesInfo(%struct._SubMtx* %mtx, i32* %nent83, i32** %rowids, i32** %colids, double** %entries81) #4
  %29 = load i32* %nent83, align 4, !tbaa !3
  %cmp85458 = icmp sgt i32 %29, 0
  br i1 %cmp85458, label %for.body86.lr.ph, label %sw.epilog

for.body86.lr.ph:                                 ; preds = %sw.bb80
  %30 = load i32** %rowids, align 8, !tbaa !0
  %31 = load double** %entries81, align 8, !tbaa !0
  %32 = load i32** %colids, align 8, !tbaa !0
  br label %for.body86

for.body86:                                       ; preds = %for.body86.lr.ph, %for.inc98
  %indvars.iv513 = phi i64 [ 0, %for.body86.lr.ph ], [ %indvars.iv.next514, %for.inc98 ]
  %arrayidx88 = getelementptr inbounds i32* %30, i64 %indvars.iv513
  %33 = load i32* %arrayidx88, align 4, !tbaa !3
  %cmp89 = icmp eq i32 %33, %irow
  br i1 %cmp89, label %if.then90, label %for.inc98

if.then90:                                        ; preds = %for.body86
  %arrayidx92 = getelementptr inbounds double* %31, i64 %indvars.iv513
  %34 = load double* %arrayidx92, align 8, !tbaa !4
  %arrayidx94 = getelementptr inbounds i32* %32, i64 %indvars.iv513
  %35 = load i32* %arrayidx94, align 4, !tbaa !3
  %idxprom95 = sext i32 %35 to i64
  %arrayidx96 = getelementptr inbounds double* %call9, i64 %idxprom95
  store double %34, double* %arrayidx96, align 8, !tbaa !4
  br label %for.inc98

for.inc98:                                        ; preds = %for.body86, %if.then90
  %indvars.iv.next514 = add i64 %indvars.iv513, 1
  %36 = trunc i64 %indvars.iv.next514 to i32
  %cmp85 = icmp slt i32 %36, %29
  br i1 %cmp85, label %for.body86, label %sw.epilog

sw.bb101:                                         ; preds = %if.end8
  call void @SubMtx_denseSubrowsInfo(%struct._SubMtx* %mtx, i32* %nrow107, i32* %nent106, i32** %firstlocs, i32** %sizes109, double** %entries102) #4
  %cmp111464 = icmp sgt i32 %irow, 0
  %37 = load i32** %sizes109, align 8, !tbaa !0
  br i1 %cmp111464, label %for.body112, label %for.end118

for.body112:                                      ; preds = %sw.bb101, %for.body112
  %indvars.iv520 = phi i64 [ %indvars.iv.next521, %for.body112 ], [ 0, %sw.bb101 ]
  %offset108.0466 = phi i32 [ %add115, %for.body112 ], [ 0, %sw.bb101 ]
  %arrayidx114 = getelementptr inbounds i32* %37, i64 %indvars.iv520
  %38 = load i32* %arrayidx114, align 4, !tbaa !3
  %add115 = add nsw i32 %38, %offset108.0466
  %indvars.iv.next521 = add i64 %indvars.iv520, 1
  %lftr.wideiv522 = trunc i64 %indvars.iv.next521 to i32
  %exitcond523 = icmp eq i32 %lftr.wideiv522, %irow
  br i1 %exitcond523, label %for.cond110.for.end118_crit_edge, label %for.body112

for.cond110.for.end118_crit_edge:                 ; preds = %for.body112
  %phitmp = sext i32 %add115 to i64
  br label %for.end118

for.end118:                                       ; preds = %sw.bb101, %for.cond110.for.end118_crit_edge
  %offset108.0.lcssa = phi i64 [ %phitmp, %for.cond110.for.end118_crit_edge ], [ 0, %sw.bb101 ]
  %idxprom119 = sext i32 %irow to i64
  %arrayidx120 = getelementptr inbounds i32* %37, i64 %idxprom119
  %39 = load i32* %arrayidx120, align 4, !tbaa !3
  %cmp121 = icmp sgt i32 %39, 0
  br i1 %cmp121, label %if.then122, label %sw.epilog

if.then122:                                       ; preds = %for.end118
  %40 = load i32** %firstlocs, align 8, !tbaa !0
  %arrayidx124 = getelementptr inbounds i32* %40, i64 %idxprom119
  %41 = load i32* %arrayidx124, align 4, !tbaa !3
  %add127 = add i32 %39, -1
  %sub = add i32 %add127, %41
  %cmp129461 = icmp sgt i32 %41, %sub
  br i1 %cmp129461, label %sw.epilog, label %for.body130.lr.ph

for.body130.lr.ph:                                ; preds = %if.then122
  %42 = load double** %entries102, align 8, !tbaa !0
  %43 = sext i32 %41 to i64
  br label %for.body130

for.body130:                                      ; preds = %for.body130, %for.body130.lr.ph
  %indvars.iv517 = phi i64 [ %indvars.iv.next518, %for.body130 ], [ %offset108.0.lcssa, %for.body130.lr.ph ]
  %indvars.iv515 = phi i64 [ %indvars.iv.next516, %for.body130 ], [ %43, %for.body130.lr.ph ]
  %arrayidx132 = getelementptr inbounds double* %42, i64 %indvars.iv517
  %44 = load double* %arrayidx132, align 8, !tbaa !4
  %arrayidx134 = getelementptr inbounds double* %call9, i64 %indvars.iv515
  store double %44, double* %arrayidx134, align 8, !tbaa !4
  %indvars.iv.next516 = add i64 %indvars.iv515, 1
  %indvars.iv.next518 = add i64 %indvars.iv517, 1
  %45 = trunc i64 %indvars.iv515 to i32
  %cmp129 = icmp slt i32 %45, %sub
  br i1 %cmp129, label %for.body130, label %sw.epilog

sw.bb140:                                         ; preds = %if.end8
  call void @SubMtx_denseSubcolumnsInfo(%struct._SubMtx* %mtx, i32* %ncol147, i32* %nent146, i32** %firstlocs149, i32** %sizes150, double** %entries141) #4
  %46 = load i32* %ncol147, align 4, !tbaa !3
  %cmp152469 = icmp sgt i32 %46, 0
  br i1 %cmp152469, label %for.body153.lr.ph, label %sw.epilog

for.body153.lr.ph:                                ; preds = %sw.bb140
  %47 = load i32** %sizes150, align 8, !tbaa !0
  %48 = load i32** %firstlocs149, align 8, !tbaa !0
  %49 = load double** %entries141, align 8, !tbaa !0
  br label %for.body153

for.body153:                                      ; preds = %for.body153.lr.ph, %for.inc178
  %indvars.iv524 = phi i64 [ 0, %for.body153.lr.ph ], [ %indvars.iv.next525, %for.inc178 ]
  %offset148.0471 = phi i32 [ 0, %for.body153.lr.ph ], [ %offset148.1, %for.inc178 ]
  %arrayidx155 = getelementptr inbounds i32* %47, i64 %indvars.iv524
  %50 = load i32* %arrayidx155, align 4, !tbaa !3
  %cmp156 = icmp sgt i32 %50, 0
  br i1 %cmp156, label %if.then157, label %for.inc178

if.then157:                                       ; preds = %for.body153
  %arrayidx159 = getelementptr inbounds i32* %48, i64 %indvars.iv524
  %51 = load i32* %arrayidx159, align 4, !tbaa !3
  %cmp164 = icmp sgt i32 %51, %irow
  br i1 %cmp164, label %if.end173, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then157
  %add162 = add nsw i32 %51, %50
  %cmp165 = icmp sgt i32 %add162, %irow
  br i1 %cmp165, label %if.then166, label %if.end173

if.then166:                                       ; preds = %land.lhs.true
  %add167 = add nsw i32 %offset148.0471, %irow
  %sub168 = sub i32 %add167, %51
  %idxprom169 = sext i32 %sub168 to i64
  %arrayidx170 = getelementptr inbounds double* %49, i64 %idxprom169
  %52 = load double* %arrayidx170, align 8, !tbaa !4
  %arrayidx172 = getelementptr inbounds double* %call9, i64 %indvars.iv524
  store double %52, double* %arrayidx172, align 8, !tbaa !4
  br label %if.end173

if.end173:                                        ; preds = %if.then157, %if.then166, %land.lhs.true
  %add176 = add nsw i32 %50, %offset148.0471
  br label %for.inc178

for.inc178:                                       ; preds = %for.body153, %if.end173
  %offset148.1 = phi i32 [ %add176, %if.end173 ], [ %offset148.0471, %for.body153 ]
  %indvars.iv.next525 = add i64 %indvars.iv524, 1
  %53 = trunc i64 %indvars.iv.next525 to i32
  %cmp152 = icmp slt i32 %53, %46
  br i1 %cmp152, label %for.body153, label %sw.epilog

sw.bb181:                                         ; preds = %if.end8
  call void @SubMtx_diagonalInfo(%struct._SubMtx* %mtx, i32* %nent183, double** %entries182) #4
  %idxprom184 = sext i32 %irow to i64
  %54 = load double** %entries182, align 8, !tbaa !0
  %arrayidx185 = getelementptr inbounds double* %54, i64 %idxprom184
  %55 = load double* %arrayidx185, align 8, !tbaa !4
  %arrayidx187 = getelementptr inbounds double* %call9, i64 %idxprom184
  store double %55, double* %arrayidx187, align 8, !tbaa !4
  br label %sw.epilog

for.body197.lr.ph:                                ; preds = %if.end8
  call void @SubMtx_blockDiagonalInfo(%struct._SubMtx* %mtx, i32* %nrow193, i32* %nent194, i32** %pivotsizes, double** %entries189) #4
  %56 = load i32** %pivotsizes, align 8, !tbaa !0
  %57 = load double** %entries189, align 8, !tbaa !0
  %58 = add i32 %irow, -1
  br label %for.body197

for.body197:                                      ; preds = %if.end234.thread, %for.body197.lr.ph, %if.end234
  %indvars.iv535 = phi i64 [ 0, %for.body197.lr.ph ], [ %indvars.iv.next536, %if.end234 ], [ %indvars.iv.next536550, %if.end234.thread ]
  %kk192.0487 = phi i32 [ 0, %for.body197.lr.ph ], [ %kk192.3, %if.end234 ], [ %add233, %if.end234.thread ]
  %jrow191.0486 = phi i32 [ 0, %for.body197.lr.ph ], [ %add202, %if.end234 ], [ %add202, %if.end234.thread ]
  %arrayidx199 = getelementptr inbounds i32* %56, i64 %indvars.iv535
  %59 = load i32* %arrayidx199, align 4, !tbaa !3
  %add202 = add nsw i32 %59, %jrow191.0486
  %cmp203 = icmp sgt i32 %add202, %irow
  br i1 %cmp203, label %if.then204, label %if.end234.thread

if.then204:                                       ; preds = %for.body197
  %sub206 = sub i32 %irow, %jrow191.0486
  %add207 = add nsw i32 %sub206, %kk192.0487
  %cmp209473 = icmp sgt i32 %jrow191.0486, %irow
  br i1 %cmp209473, label %for.cond219.loopexit, label %for.body210.lr.ph

for.body210.lr.ph:                                ; preds = %if.then204
  %60 = sext i32 %59 to i64
  %61 = sext i32 %jrow191.0486 to i64
  %62 = add i32 %58, %kk192.0487
  %63 = add i32 %62, %59
  %64 = add i32 %59, -2
  %65 = mul i32 %sub206, %64
  %66 = add i32 %63, %65
  %67 = zext i32 %sub206 to i33
  %68 = sub i32 %58, %jrow191.0486
  %69 = zext i32 %68 to i33
  %70 = mul i33 %67, %69
  %71 = lshr i33 %70, 1
  %72 = trunc i33 %71 to i32
  br label %for.body210

for.body210:                                      ; preds = %for.body210, %for.body210.lr.ph
  %indvars.iv528 = phi i64 [ %indvars.iv.next529, %for.body210 ], [ %61, %for.body210.lr.ph ]
  %indvars.iv526 = phi i64 [ %indvars.iv.next527, %for.body210 ], [ %60, %for.body210.lr.ph ]
  %kk192.1475 = phi i32 [ %add215, %for.body210 ], [ %add207, %for.body210.lr.ph ]
  %indvars.iv.next527 = add i64 %indvars.iv526, -1
  %idxprom211 = sext i32 %kk192.1475 to i64
  %arrayidx212 = getelementptr inbounds double* %57, i64 %idxprom211
  %73 = load double* %arrayidx212, align 8, !tbaa !4
  %arrayidx214 = getelementptr inbounds double* %call9, i64 %indvars.iv528
  store double %73, double* %arrayidx214, align 8, !tbaa !4
  %74 = trunc i64 %indvars.iv.next527 to i32
  %add215 = add nsw i32 %74, %kk192.1475
  %indvars.iv.next529 = add i64 %indvars.iv528, 1
  %75 = trunc i64 %indvars.iv528 to i32
  %cmp209 = icmp slt i32 %75, %irow
  br i1 %cmp209, label %for.body210, label %for.cond208.for.cond219.loopexit_crit_edge

for.cond208.for.cond219.loopexit_crit_edge:       ; preds = %for.body210
  %76 = add i32 %irow, 1
  %77 = sub i32 %66, %jrow191.0486
  %78 = sub i32 %77, %72
  br label %for.cond219.loopexit

for.cond219.loopexit:                             ; preds = %for.cond208.for.cond219.loopexit_crit_edge, %if.then204
  %kk192.1.lcssa = phi i32 [ %78, %for.cond208.for.cond219.loopexit_crit_edge ], [ %add207, %if.then204 ]
  %ii190.0.lcssa = phi i32 [ %76, %for.cond208.for.cond219.loopexit_crit_edge ], [ %jrow191.0486, %if.then204 ]
  %cmp221479 = icmp slt i32 %ii190.0.lcssa, %add202
  br i1 %cmp221479, label %for.body222.lr.ph, label %if.end234

for.body222.lr.ph:                                ; preds = %for.cond219.loopexit
  %79 = sext i32 %kk192.1.lcssa to i64
  %80 = sext i32 %ii190.0.lcssa to i64
  %81 = add i32 %jrow191.0486, %kk192.1.lcssa
  %82 = add i32 %81, %59
  br label %for.body222

for.body222:                                      ; preds = %for.body222.lr.ph, %for.body222
  %indvars.iv532 = phi i64 [ %80, %for.body222.lr.ph ], [ %indvars.iv.next533, %for.body222 ]
  %indvars.iv530 = phi i64 [ %79, %for.body222.lr.ph ], [ %indvars.iv.next531, %for.body222 ]
  %arrayidx224 = getelementptr inbounds double* %57, i64 %indvars.iv530
  %83 = load double* %arrayidx224, align 8, !tbaa !4
  %arrayidx226 = getelementptr inbounds double* %call9, i64 %indvars.iv532
  store double %83, double* %arrayidx226, align 8, !tbaa !4
  %indvars.iv.next531 = add i64 %indvars.iv530, 1
  %indvars.iv.next533 = add i64 %indvars.iv532, 1
  %84 = trunc i64 %indvars.iv.next533 to i32
  %cmp221 = icmp slt i32 %84, %add202
  br i1 %cmp221, label %for.body222, label %for.cond219.if.end234.loopexit_crit_edge

if.end234.thread:                                 ; preds = %for.body197
  %add231 = add nsw i32 %59, 1
  %mul232 = mul nsw i32 %add231, %59
  %div = sdiv i32 %mul232, 2
  %add233 = add nsw i32 %div, %kk192.0487
  %indvars.iv.next536550 = add i64 %indvars.iv535, 1
  br label %for.body197

for.cond219.if.end234.loopexit_crit_edge:         ; preds = %for.body222
  %85 = sub i32 %82, %ii190.0.lcssa
  br label %if.end234

if.end234:                                        ; preds = %for.cond219.loopexit, %for.cond219.if.end234.loopexit_crit_edge
  %kk192.3 = phi i32 [ %85, %for.cond219.if.end234.loopexit_crit_edge ], [ %kk192.1.lcssa, %for.cond219.loopexit ]
  %indvars.iv.next536 = add i64 %indvars.iv535, 1
  br i1 %cmp203, label %sw.epilog, label %for.body197

for.body252.lr.ph:                                ; preds = %if.end8
  call void @SubMtx_blockDiagonalInfo(%struct._SubMtx* %mtx, i32* %nrow246, i32* %nent247, i32** %pivotsizes249, double** %entries240) #4
  %86 = load i32** %pivotsizes249, align 8, !tbaa !0
  %87 = load double** %entries240, align 8, !tbaa !0
  %88 = add i32 %irow, -1
  %89 = add i32 %irow, -2
  br label %for.body252

for.body252:                                      ; preds = %if.end292.thread, %for.body252.lr.ph, %if.end292
  %indvars.iv546 = phi i64 [ 0, %for.body252.lr.ph ], [ %indvars.iv.next547, %if.end292 ], [ %indvars.iv.next547551, %if.end292.thread ]
  %kk244.0503 = phi i32 [ 0, %for.body252.lr.ph ], [ %kk244.3, %if.end292 ], [ %add291, %if.end292.thread ]
  %jrow243.0502 = phi i32 [ 0, %for.body252.lr.ph ], [ %add257, %if.end292 ], [ %add257, %if.end292.thread ]
  %arrayidx254 = getelementptr inbounds i32* %86, i64 %indvars.iv546
  %90 = load i32* %arrayidx254, align 4, !tbaa !3
  %add257 = add nsw i32 %90, %jrow243.0502
  %cmp258 = icmp sgt i32 %add257, %irow
  br i1 %cmp258, label %if.then259, label %if.end292.thread

if.then259:                                       ; preds = %for.body252
  %sub261 = sub i32 %irow, %jrow243.0502
  %add262 = add nsw i32 %sub261, %kk244.0503
  %cmp264489 = icmp slt i32 %jrow243.0502, %irow
  br i1 %cmp264489, label %for.body265.lr.ph, label %for.cond275.loopexit

for.body265.lr.ph:                                ; preds = %if.then259
  %91 = sext i32 %90 to i64
  %92 = sext i32 %jrow243.0502 to i64
  %93 = add i32 %88, %kk244.0503
  %94 = add i32 %93, %90
  %95 = sub i32 %88, %jrow243.0502
  %96 = add i32 %90, -2
  %97 = mul i32 %95, %96
  %98 = add i32 %94, %97
  %99 = zext i32 %95 to i33
  %100 = sub i32 %89, %jrow243.0502
  %101 = zext i32 %100 to i33
  %102 = mul i33 %99, %101
  %103 = lshr i33 %102, 1
  %104 = trunc i33 %103 to i32
  br label %for.body265

for.body265:                                      ; preds = %for.body265.lr.ph, %for.body265
  %indvars.iv539 = phi i64 [ %92, %for.body265.lr.ph ], [ %indvars.iv.next540, %for.body265 ]
  %indvars.iv537 = phi i64 [ %91, %for.body265.lr.ph ], [ %indvars.iv.next538, %for.body265 ]
  %kk244.1491 = phi i32 [ %add262, %for.body265.lr.ph ], [ %add271, %for.body265 ]
  %indvars.iv.next538 = add i64 %indvars.iv537, -1
  %idxprom266 = sext i32 %kk244.1491 to i64
  %arrayidx267 = getelementptr inbounds double* %87, i64 %idxprom266
  %105 = load double* %arrayidx267, align 8, !tbaa !4
  %arrayidx269 = getelementptr inbounds double* %call9, i64 %indvars.iv539
  store double %105, double* %arrayidx269, align 8, !tbaa !4
  %106 = trunc i64 %indvars.iv.next538 to i32
  %add271 = add nsw i32 %106, %kk244.1491
  %indvars.iv.next540 = add i64 %indvars.iv539, 1
  %107 = trunc i64 %indvars.iv.next540 to i32
  %cmp264 = icmp slt i32 %107, %irow
  br i1 %cmp264, label %for.body265, label %for.cond263.for.cond275.loopexit_crit_edge

for.cond263.for.cond275.loopexit_crit_edge:       ; preds = %for.body265
  %108 = sub i32 %98, %jrow243.0502
  %109 = sub i32 %108, %104
  br label %for.cond275.loopexit

for.cond275.loopexit:                             ; preds = %for.cond263.for.cond275.loopexit_crit_edge, %if.then259
  %kk244.1.lcssa = phi i32 [ %109, %for.cond263.for.cond275.loopexit_crit_edge ], [ %add262, %if.then259 ]
  %ii241.0.lcssa = phi i32 [ %irow, %for.cond263.for.cond275.loopexit_crit_edge ], [ %jrow243.0502, %if.then259 ]
  %cmp277495 = icmp slt i32 %ii241.0.lcssa, %add257
  br i1 %cmp277495, label %for.body278.lr.ph, label %if.end292

for.body278.lr.ph:                                ; preds = %for.cond275.loopexit
  %110 = sext i32 %kk244.1.lcssa to i64
  %111 = sext i32 %ii241.0.lcssa to i64
  %112 = add i32 %jrow243.0502, %kk244.1.lcssa
  %113 = add i32 %112, %90
  br label %for.body278

for.body278:                                      ; preds = %for.body278.lr.ph, %for.body278
  %indvars.iv543 = phi i64 [ %111, %for.body278.lr.ph ], [ %indvars.iv.next544, %for.body278 ]
  %indvars.iv541 = phi i64 [ %110, %for.body278.lr.ph ], [ %indvars.iv.next542, %for.body278 ]
  %arrayidx280 = getelementptr inbounds double* %87, i64 %indvars.iv541
  %114 = load double* %arrayidx280, align 8, !tbaa !4
  %arrayidx282 = getelementptr inbounds double* %call9, i64 %indvars.iv543
  store double %114, double* %arrayidx282, align 8, !tbaa !4
  %indvars.iv.next542 = add i64 %indvars.iv541, 1
  %indvars.iv.next544 = add i64 %indvars.iv543, 1
  %115 = trunc i64 %indvars.iv.next544 to i32
  %cmp277 = icmp slt i32 %115, %add257
  br i1 %cmp277, label %for.body278, label %for.cond275.if.end292.loopexit_crit_edge

if.end292.thread:                                 ; preds = %for.body252
  %add288 = add nsw i32 %90, 1
  %mul289 = mul nsw i32 %add288, %90
  %div290 = sdiv i32 %mul289, 2
  %add291 = add nsw i32 %div290, %kk244.0503
  %indvars.iv.next547551 = add i64 %indvars.iv546, 1
  br label %for.body252

for.cond275.if.end292.loopexit_crit_edge:         ; preds = %for.body278
  %116 = sub i32 %113, %ii241.0.lcssa
  br label %if.end292

if.end292:                                        ; preds = %for.cond275.loopexit, %for.cond275.if.end292.loopexit_crit_edge
  %kk244.3 = phi i32 [ %116, %for.cond275.if.end292.loopexit_crit_edge ], [ %kk244.1.lcssa, %for.cond275.loopexit ]
  %indvars.iv.next547 = add i64 %indvars.iv546, 1
  br i1 %cmp258, label %sw.epilog, label %for.body252

sw.epilog:                                        ; preds = %if.end292, %if.end234, %sw.bb140, %for.inc178, %if.then122, %for.body130, %sw.bb80, %for.inc98, %sw.bb43, %for.end73, %for.cond28.preheader, %for.body32, %sw.bb, %for.body, %if.end8, %for.end118, %sw.bb181
  ret void
}

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #1

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32) #2

; Function Attrs: optsize
declare void @DV_setSize(%struct._DV*, i32) #3

; Function Attrs: optsize
declare double* @DV_entries(%struct._DV*) #3

; Function Attrs: optsize
declare void @DVzero(i32, double*) #3

; Function Attrs: optsize
declare void @SubMtx_denseInfo(%struct._SubMtx*, i32*, i32*, i32*, i32*, double**) #3

; Function Attrs: optsize
declare void @SubMtx_sparseRowsInfo(%struct._SubMtx*, i32*, i32*, i32**, i32**, double**) #3

; Function Attrs: optsize
declare void @SubMtx_sparseColumnsInfo(%struct._SubMtx*, i32*, i32*, i32**, i32**, double**) #3

; Function Attrs: optsize
declare void @SubMtx_sparseTriplesInfo(%struct._SubMtx*, i32*, i32**, i32**, double**) #3

; Function Attrs: optsize
declare void @SubMtx_denseSubrowsInfo(%struct._SubMtx*, i32*, i32*, i32**, i32**, double**) #3

; Function Attrs: optsize
declare void @SubMtx_denseSubcolumnsInfo(%struct._SubMtx*, i32*, i32*, i32**, i32**, double**) #3

; Function Attrs: optsize
declare void @SubMtx_diagonalInfo(%struct._SubMtx*, i32*, double**) #3

; Function Attrs: optsize
declare void @SubMtx_blockDiagonalInfo(%struct._SubMtx*, i32*, i32*, i32**, double**) #3

; Function Attrs: nounwind optsize uwtable
define void @SubMtx_fillRowZV(%struct._SubMtx* %mtx, i32 %irow, %struct._ZV* %rowZV) #0 {
entry:
  %entries = alloca double*, align 8
  %inc1 = alloca i32, align 4
  %inc2 = alloca i32, align 4
  %ncol11 = alloca i32, align 4
  %nrow = alloca i32, align 4
  %entries28 = alloca double*, align 8
  %nent = alloca i32, align 4
  %nrow29 = alloca i32, align 4
  %indices = alloca i32*, align 8
  %sizes = alloca i32*, align 8
  %entries67 = alloca double*, align 8
  %nent71 = alloca i32, align 4
  %ncol72 = alloca i32, align 4
  %indices74 = alloca i32*, align 8
  %sizes75 = alloca i32*, align 8
  %entries114 = alloca double*, align 8
  %nent116 = alloca i32, align 4
  %colids = alloca i32*, align 8
  %rowids = alloca i32*, align 8
  %entries147 = alloca double*, align 8
  %nent151 = alloca i32, align 4
  %nrow152 = alloca i32, align 4
  %firstlocs = alloca i32*, align 8
  %sizes154 = alloca i32*, align 8
  %entries196 = alloca double*, align 8
  %nent201 = alloca i32, align 4
  %ncol202 = alloca i32, align 4
  %firstlocs204 = alloca i32*, align 8
  %sizes205 = alloca i32*, align 8
  %entries247 = alloca double*, align 8
  %nent248 = alloca i32, align 4
  %entries264 = alloca double*, align 8
  %nrow268 = alloca i32, align 4
  %nent269 = alloca i32, align 4
  %pivotsizes = alloca i32*, align 8
  %entries335 = alloca double*, align 8
  %nrow341 = alloca i32, align 4
  %nent342 = alloca i32, align 4
  %pivotsizes344 = alloca i32*, align 8
  %cmp = icmp eq %struct._SubMtx* %mtx, null
  %cmp1 = icmp slt i32 %irow, 0
  %or.cond = or i1 %cmp, %cmp1
  %cmp3 = icmp eq %struct._ZV* %rowZV, null
  %or.cond605 = or i1 %or.cond, %cmp3
  br i1 %or.cond605, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([56 x i8]* @.str2, i64 0, i64 0), %struct._SubMtx* %mtx, i32 %irow, %struct._ZV* %rowZV) #4
  call void @exit(i32 -1) #5
  unreachable

if.end:                                           ; preds = %entry
  %type = getelementptr inbounds %struct._SubMtx* %mtx, i64 0, i32 0
  %1 = load i32* %type, align 4, !tbaa !3
  %cmp4 = icmp eq i32 %1, 2
  br i1 %cmp4, label %if.end8, label %if.then5

if.then5:                                         ; preds = %if.end
  %2 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call7 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([81 x i8]* @.str3, i64 0, i64 0), %struct._SubMtx* %mtx, i32 %irow, %struct._ZV* %rowZV, i32 %1) #4
  call void @exit(i32 -1) #5
  unreachable

if.end8:                                          ; preds = %if.end
  %ncol = getelementptr inbounds %struct._SubMtx* %mtx, i64 0, i32 5
  %3 = load i32* %ncol, align 4, !tbaa !3
  call void @ZV_setSize(%struct._ZV* %rowZV, i32 %3) #4
  %call9 = call double* @ZV_entries(%struct._ZV* %rowZV) #4
  %4 = load i32* %ncol, align 4, !tbaa !3
  %mul = shl nsw i32 %4, 1
  call void @DVzero(i32 %mul, double* %call9) #4
  %mode = getelementptr inbounds %struct._SubMtx* %mtx, i64 0, i32 1
  %5 = load i32* %mode, align 4, !tbaa !3
  switch i32 %5, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb
    i32 2, label %sw.bb27
    i32 3, label %sw.bb66
    i32 4, label %sw.bb113
    i32 5, label %sw.bb146
    i32 6, label %sw.bb195
    i32 7, label %sw.bb246
    i32 8, label %for.body272.lr.ph
    i32 9, label %for.body347.lr.ph
  ]

sw.bb:                                            ; preds = %if.end8, %if.end8
  call void @SubMtx_denseInfo(%struct._SubMtx* %mtx, i32* %nrow, i32* %ncol11, i32* %inc1, i32* %inc2, double** %entries) #4
  %6 = load i32* %ncol11, align 4, !tbaa !3
  %cmp12606 = icmp sgt i32 %6, 0
  br i1 %cmp12606, label %for.body.lr.ph, label %sw.epilog

for.body.lr.ph:                                   ; preds = %sw.bb
  %7 = load i32* %inc1, align 4, !tbaa !3
  %mul13 = mul nsw i32 %7, %irow
  %8 = load i32* %inc2, align 4, !tbaa !3
  %9 = load double** %entries, align 8, !tbaa !0
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.body ]
  %10 = trunc i64 %indvars.iv to i32
  %mul14 = mul nsw i32 %8, %10
  %add = add nsw i32 %mul14, %mul13
  %mul15 = shl nsw i32 %add, 1
  %idxprom = sext i32 %mul15 to i64
  %arrayidx = getelementptr inbounds double* %9, i64 %idxprom
  %11 = load double* %arrayidx, align 8, !tbaa !4
  %mul16 = shl nsw i32 %10, 1
  %idxprom17 = sext i32 %mul16 to i64
  %arrayidx18 = getelementptr inbounds double* %call9, i64 %idxprom17
  store double %11, double* %arrayidx18, align 8, !tbaa !4
  %add20603 = or i32 %mul15, 1
  %idxprom21 = sext i32 %add20603 to i64
  %arrayidx22 = getelementptr inbounds double* %9, i64 %idxprom21
  %12 = load double* %arrayidx22, align 8, !tbaa !4
  %add24604 = or i32 %mul16, 1
  %idxprom25 = sext i32 %add24604 to i64
  %arrayidx26 = getelementptr inbounds double* %call9, i64 %idxprom25
  store double %12, double* %arrayidx26, align 8, !tbaa !4
  %indvars.iv.next = add i64 %indvars.iv, 1
  %13 = trunc i64 %indvars.iv.next to i32
  %cmp12 = icmp slt i32 %13, %6
  br i1 %cmp12, label %for.body, label %sw.epilog

sw.bb27:                                          ; preds = %if.end8
  call void @SubMtx_sparseRowsInfo(%struct._SubMtx* %mtx, i32* %nrow29, i32* %nent, i32** %sizes, i32** %indices, double** %entries28) #4
  %cmp31613 = icmp sgt i32 %irow, 0
  %14 = load i32** %sizes, align 8, !tbaa !0
  br i1 %cmp31613, label %for.body32, label %for.cond39.preheader

for.cond30.for.cond39.preheader_crit_edge:        ; preds = %for.body32
  %phitmp719 = sext i32 %add35 to i64
  br label %for.cond39.preheader

for.cond39.preheader:                             ; preds = %sw.bb27, %for.cond30.for.cond39.preheader_crit_edge
  %offset.0.lcssa = phi i64 [ %phitmp719, %for.cond30.for.cond39.preheader_crit_edge ], [ 0, %sw.bb27 ]
  %idxprom40 = sext i32 %irow to i64
  %arrayidx41609 = getelementptr inbounds i32* %14, i64 %idxprom40
  %15 = load i32* %arrayidx41609, align 4, !tbaa !3
  %cmp42610 = icmp sgt i32 %15, 0
  br i1 %cmp42610, label %for.body43.lr.ph, label %sw.epilog

for.body43.lr.ph:                                 ; preds = %for.cond39.preheader
  %16 = load double** %entries28, align 8, !tbaa !0
  %17 = load i32** %indices, align 8, !tbaa !0
  br label %for.body43

for.body32:                                       ; preds = %sw.bb27, %for.body32
  %indvars.iv679 = phi i64 [ %indvars.iv.next680, %for.body32 ], [ 0, %sw.bb27 ]
  %offset.0614 = phi i32 [ %add35, %for.body32 ], [ 0, %sw.bb27 ]
  %arrayidx34 = getelementptr inbounds i32* %14, i64 %indvars.iv679
  %18 = load i32* %arrayidx34, align 4, !tbaa !3
  %add35 = add nsw i32 %18, %offset.0614
  %indvars.iv.next680 = add i64 %indvars.iv679, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next680 to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %irow
  br i1 %exitcond, label %for.cond30.for.cond39.preheader_crit_edge, label %for.body32

for.body43:                                       ; preds = %for.body43.lr.ph, %for.body43
  %indvars.iv677 = phi i64 [ %offset.0.lcssa, %for.body43.lr.ph ], [ %indvars.iv.next678, %for.body43 ]
  %ii.0612 = phi i32 [ 0, %for.body43.lr.ph ], [ %inc63, %for.body43 ]
  %19 = trunc i64 %indvars.iv677 to i32
  %mul44 = shl nsw i32 %19, 1
  %idxprom45 = sext i32 %mul44 to i64
  %arrayidx46 = getelementptr inbounds double* %16, i64 %idxprom45
  %20 = load double* %arrayidx46, align 8, !tbaa !4
  %arrayidx48 = getelementptr inbounds i32* %17, i64 %indvars.iv677
  %21 = load i32* %arrayidx48, align 4, !tbaa !3
  %mul49 = shl nsw i32 %21, 1
  %idxprom50 = sext i32 %mul49 to i64
  %arrayidx51 = getelementptr inbounds double* %call9, i64 %idxprom50
  store double %20, double* %arrayidx51, align 8, !tbaa !4
  %add53601 = or i32 %mul44, 1
  %idxprom54 = sext i32 %add53601 to i64
  %arrayidx55 = getelementptr inbounds double* %16, i64 %idxprom54
  %22 = load double* %arrayidx55, align 8, !tbaa !4
  %add59602 = or i32 %mul49, 1
  %idxprom60 = sext i32 %add59602 to i64
  %arrayidx61 = getelementptr inbounds double* %call9, i64 %idxprom60
  store double %22, double* %arrayidx61, align 8, !tbaa !4
  %inc63 = add nsw i32 %ii.0612, 1
  %indvars.iv.next678 = add i64 %indvars.iv677, 1
  %cmp42 = icmp slt i32 %inc63, %15
  br i1 %cmp42, label %for.body43, label %sw.epilog

sw.bb66:                                          ; preds = %if.end8
  call void @SubMtx_sparseColumnsInfo(%struct._SubMtx* %mtx, i32* %ncol72, i32* %nent71, i32** %sizes75, i32** %indices74, double** %entries67) #4
  %23 = load i32* %ncol72, align 4, !tbaa !3
  %cmp77625 = icmp sgt i32 %23, 0
  br i1 %cmp77625, label %for.cond79.preheader.lr.ph, label %sw.epilog

for.cond79.preheader.lr.ph:                       ; preds = %sw.bb66
  %24 = load i32** %sizes75, align 8, !tbaa !0
  %25 = load i32** %indices74, align 8, !tbaa !0
  %26 = load double** %entries67, align 8, !tbaa !0
  br label %for.cond79.preheader

for.cond79.preheader:                             ; preds = %for.cond79.preheader.lr.ph, %for.end106
  %indvars.iv684 = phi i64 [ 0, %for.cond79.preheader.lr.ph ], [ %indvars.iv.next685, %for.end106 ]
  %offset73.0626 = phi i32 [ 0, %for.cond79.preheader.lr.ph ], [ %add109, %for.end106 ]
  %arrayidx81619 = getelementptr inbounds i32* %24, i64 %indvars.iv684
  %27 = load i32* %arrayidx81619, align 4, !tbaa !3
  %cmp82620 = icmp sgt i32 %27, 0
  br i1 %cmp82620, label %for.body83.lr.ph, label %for.end106

for.body83.lr.ph:                                 ; preds = %for.cond79.preheader
  %28 = sext i32 %offset73.0626 to i64
  br label %for.body83

for.body83:                                       ; preds = %for.body83.lr.ph, %for.inc103
  %indvars.iv682 = phi i64 [ %28, %for.body83.lr.ph ], [ %indvars.iv.next683, %for.inc103 ]
  %ii68.0622 = phi i32 [ 0, %for.body83.lr.ph ], [ %inc104, %for.inc103 ]
  %kk70.0621 = phi i32 [ %offset73.0626, %for.body83.lr.ph ], [ %inc105, %for.inc103 ]
  %arrayidx85 = getelementptr inbounds i32* %25, i64 %indvars.iv682
  %29 = load i32* %arrayidx85, align 4, !tbaa !3
  %cmp86 = icmp eq i32 %29, %irow
  br i1 %cmp86, label %if.then87, label %for.inc103

if.then87:                                        ; preds = %for.body83
  %mul88 = shl nsw i32 %kk70.0621, 1
  %idxprom89 = sext i32 %mul88 to i64
  %arrayidx90 = getelementptr inbounds double* %26, i64 %idxprom89
  %30 = load double* %arrayidx90, align 8, !tbaa !4
  %31 = trunc i64 %indvars.iv684 to i32
  %mul91 = shl nsw i32 %31, 1
  %idxprom92 = sext i32 %mul91 to i64
  %arrayidx93 = getelementptr inbounds double* %call9, i64 %idxprom92
  store double %30, double* %arrayidx93, align 8, !tbaa !4
  %add95599 = or i32 %mul88, 1
  %idxprom96 = sext i32 %add95599 to i64
  %arrayidx97 = getelementptr inbounds double* %26, i64 %idxprom96
  %32 = load double* %arrayidx97, align 8, !tbaa !4
  %add99600 = or i32 %mul91, 1
  %idxprom100 = sext i32 %add99600 to i64
  %arrayidx101 = getelementptr inbounds double* %call9, i64 %idxprom100
  store double %32, double* %arrayidx101, align 8, !tbaa !4
  br label %for.end106

for.inc103:                                       ; preds = %for.body83
  %inc104 = add nsw i32 %ii68.0622, 1
  %indvars.iv.next683 = add i64 %indvars.iv682, 1
  %inc105 = add nsw i32 %kk70.0621, 1
  %cmp82 = icmp slt i32 %inc104, %27
  br i1 %cmp82, label %for.body83, label %for.end106

for.end106:                                       ; preds = %for.cond79.preheader, %for.inc103, %if.then87
  %add109 = add nsw i32 %27, %offset73.0626
  %indvars.iv.next685 = add i64 %indvars.iv684, 1
  %33 = trunc i64 %indvars.iv.next685 to i32
  %cmp77 = icmp slt i32 %33, %23
  br i1 %cmp77, label %for.cond79.preheader, label %sw.epilog

sw.bb113:                                         ; preds = %if.end8
  call void @SubMtx_sparseTriplesInfo(%struct._SubMtx* %mtx, i32* %nent116, i32** %rowids, i32** %colids, double** %entries114) #4
  %34 = load i32* %nent116, align 4, !tbaa !3
  %cmp118631 = icmp sgt i32 %34, 0
  br i1 %cmp118631, label %for.body119.lr.ph, label %sw.epilog

for.body119.lr.ph:                                ; preds = %sw.bb113
  %35 = load i32** %rowids, align 8, !tbaa !0
  %36 = load double** %entries114, align 8, !tbaa !0
  %37 = load i32** %colids, align 8, !tbaa !0
  br label %for.body119

for.body119:                                      ; preds = %for.body119.lr.ph, %for.inc143
  %indvars.iv686 = phi i64 [ 0, %for.body119.lr.ph ], [ %indvars.iv.next687, %for.inc143 ]
  %arrayidx121 = getelementptr inbounds i32* %35, i64 %indvars.iv686
  %38 = load i32* %arrayidx121, align 4, !tbaa !3
  %cmp122 = icmp eq i32 %38, %irow
  br i1 %cmp122, label %if.then123, label %for.inc143

if.then123:                                       ; preds = %for.body119
  %39 = trunc i64 %indvars.iv686 to i32
  %mul124 = shl nsw i32 %39, 1
  %idxprom125 = sext i32 %mul124 to i64
  %arrayidx126 = getelementptr inbounds double* %36, i64 %idxprom125
  %40 = load double* %arrayidx126, align 8, !tbaa !4
  %arrayidx128 = getelementptr inbounds i32* %37, i64 %indvars.iv686
  %41 = load i32* %arrayidx128, align 4, !tbaa !3
  %mul129 = shl nsw i32 %41, 1
  %idxprom130 = sext i32 %mul129 to i64
  %arrayidx131 = getelementptr inbounds double* %call9, i64 %idxprom130
  store double %40, double* %arrayidx131, align 8, !tbaa !4
  %add133597 = or i32 %mul124, 1
  %idxprom134 = sext i32 %add133597 to i64
  %arrayidx135 = getelementptr inbounds double* %36, i64 %idxprom134
  %42 = load double* %arrayidx135, align 8, !tbaa !4
  %add139598 = or i32 %mul129, 1
  %idxprom140 = sext i32 %add139598 to i64
  %arrayidx141 = getelementptr inbounds double* %call9, i64 %idxprom140
  store double %42, double* %arrayidx141, align 8, !tbaa !4
  br label %for.inc143

for.inc143:                                       ; preds = %for.body119, %if.then123
  %indvars.iv.next687 = add i64 %indvars.iv686, 1
  %43 = trunc i64 %indvars.iv.next687 to i32
  %cmp118 = icmp slt i32 %43, %34
  br i1 %cmp118, label %for.body119, label %sw.epilog

sw.bb146:                                         ; preds = %if.end8
  call void @SubMtx_denseSubrowsInfo(%struct._SubMtx* %mtx, i32* %nrow152, i32* %nent151, i32** %firstlocs, i32** %sizes154, double** %entries147) #4
  %cmp156637 = icmp sgt i32 %irow, 0
  %44 = load i32** %sizes154, align 8, !tbaa !0
  br i1 %cmp156637, label %for.body157, label %for.end163

for.body157:                                      ; preds = %sw.bb146, %for.body157
  %indvars.iv692 = phi i64 [ %indvars.iv.next693, %for.body157 ], [ 0, %sw.bb146 ]
  %offset153.0639 = phi i32 [ %add160, %for.body157 ], [ 0, %sw.bb146 ]
  %arrayidx159 = getelementptr inbounds i32* %44, i64 %indvars.iv692
  %45 = load i32* %arrayidx159, align 4, !tbaa !3
  %add160 = add nsw i32 %45, %offset153.0639
  %indvars.iv.next693 = add i64 %indvars.iv692, 1
  %lftr.wideiv694 = trunc i64 %indvars.iv.next693 to i32
  %exitcond695 = icmp eq i32 %lftr.wideiv694, %irow
  br i1 %exitcond695, label %for.cond155.for.end163_crit_edge, label %for.body157

for.cond155.for.end163_crit_edge:                 ; preds = %for.body157
  %phitmp = sext i32 %add160 to i64
  br label %for.end163

for.end163:                                       ; preds = %sw.bb146, %for.cond155.for.end163_crit_edge
  %offset153.0.lcssa = phi i64 [ %phitmp, %for.cond155.for.end163_crit_edge ], [ 0, %sw.bb146 ]
  %idxprom164 = sext i32 %irow to i64
  %arrayidx165 = getelementptr inbounds i32* %44, i64 %idxprom164
  %46 = load i32* %arrayidx165, align 4, !tbaa !3
  %cmp166 = icmp sgt i32 %46, 0
  br i1 %cmp166, label %if.then167, label %sw.epilog

if.then167:                                       ; preds = %for.end163
  %47 = load i32** %firstlocs, align 8, !tbaa !0
  %arrayidx169 = getelementptr inbounds i32* %47, i64 %idxprom164
  %48 = load i32* %arrayidx169, align 4, !tbaa !3
  %add172 = add i32 %46, -1
  %sub = add i32 %add172, %48
  %cmp174634 = icmp sgt i32 %48, %sub
  br i1 %cmp174634, label %sw.epilog, label %for.body175.lr.ph

for.body175.lr.ph:                                ; preds = %if.then167
  %49 = load double** %entries147, align 8, !tbaa !0
  %50 = sext i32 %48 to i64
  br label %for.body175

for.body175:                                      ; preds = %for.body175, %for.body175.lr.ph
  %indvars.iv690 = phi i64 [ %indvars.iv.next691, %for.body175 ], [ %offset153.0.lcssa, %for.body175.lr.ph ]
  %indvars.iv688 = phi i64 [ %indvars.iv.next689, %for.body175 ], [ %50, %for.body175.lr.ph ]
  %51 = trunc i64 %indvars.iv690 to i32
  %mul176 = shl nsw i32 %51, 1
  %idxprom177 = sext i32 %mul176 to i64
  %arrayidx178 = getelementptr inbounds double* %49, i64 %idxprom177
  %52 = load double* %arrayidx178, align 8, !tbaa !4
  %53 = trunc i64 %indvars.iv688 to i32
  %mul179 = shl nsw i32 %53, 1
  %idxprom180 = sext i32 %mul179 to i64
  %arrayidx181 = getelementptr inbounds double* %call9, i64 %idxprom180
  store double %52, double* %arrayidx181, align 8, !tbaa !4
  %add183595 = or i32 %mul176, 1
  %idxprom184 = sext i32 %add183595 to i64
  %arrayidx185 = getelementptr inbounds double* %49, i64 %idxprom184
  %54 = load double* %arrayidx185, align 8, !tbaa !4
  %add187596 = or i32 %mul179, 1
  %idxprom188 = sext i32 %add187596 to i64
  %arrayidx189 = getelementptr inbounds double* %call9, i64 %idxprom188
  store double %54, double* %arrayidx189, align 8, !tbaa !4
  %indvars.iv.next689 = add i64 %indvars.iv688, 1
  %indvars.iv.next691 = add i64 %indvars.iv690, 1
  %cmp174 = icmp slt i32 %53, %sub
  br i1 %cmp174, label %for.body175, label %sw.epilog

sw.bb195:                                         ; preds = %if.end8
  call void @SubMtx_denseSubcolumnsInfo(%struct._SubMtx* %mtx, i32* %ncol202, i32* %nent201, i32** %firstlocs204, i32** %sizes205, double** %entries196) #4
  %55 = load i32* %ncol202, align 4, !tbaa !3
  %cmp207642 = icmp sgt i32 %55, 0
  br i1 %cmp207642, label %for.body208.lr.ph, label %sw.epilog

for.body208.lr.ph:                                ; preds = %sw.bb195
  %56 = load i32** %sizes205, align 8, !tbaa !0
  %57 = load i32** %firstlocs204, align 8, !tbaa !0
  %58 = load double** %entries196, align 8, !tbaa !0
  br label %for.body208

for.body208:                                      ; preds = %for.body208.lr.ph, %for.inc243
  %indvars.iv696 = phi i64 [ 0, %for.body208.lr.ph ], [ %indvars.iv.next697, %for.inc243 ]
  %offset203.0644 = phi i32 [ 0, %for.body208.lr.ph ], [ %offset203.1, %for.inc243 ]
  %arrayidx210 = getelementptr inbounds i32* %56, i64 %indvars.iv696
  %59 = load i32* %arrayidx210, align 4, !tbaa !3
  %cmp211 = icmp sgt i32 %59, 0
  br i1 %cmp211, label %if.then212, label %for.inc243

if.then212:                                       ; preds = %for.body208
  %arrayidx214 = getelementptr inbounds i32* %57, i64 %indvars.iv696
  %60 = load i32* %arrayidx214, align 4, !tbaa !3
  %cmp219 = icmp sgt i32 %60, %irow
  br i1 %cmp219, label %if.end238, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then212
  %add217 = add nsw i32 %60, %59
  %cmp220 = icmp sgt i32 %add217, %irow
  br i1 %cmp220, label %if.then221, label %if.end238

if.then221:                                       ; preds = %land.lhs.true
  %add222 = add nsw i32 %offset203.0644, %irow
  %sub223 = sub i32 %add222, %60
  %mul224 = shl nsw i32 %sub223, 1
  %idxprom225 = sext i32 %mul224 to i64
  %arrayidx226 = getelementptr inbounds double* %58, i64 %idxprom225
  %61 = load double* %arrayidx226, align 8, !tbaa !4
  %62 = trunc i64 %indvars.iv696 to i32
  %mul227 = shl nsw i32 %62, 1
  %idxprom228 = sext i32 %mul227 to i64
  %arrayidx229 = getelementptr inbounds double* %call9, i64 %idxprom228
  store double %61, double* %arrayidx229, align 8, !tbaa !4
  %add231593 = or i32 %mul224, 1
  %idxprom232 = sext i32 %add231593 to i64
  %arrayidx233 = getelementptr inbounds double* %58, i64 %idxprom232
  %63 = load double* %arrayidx233, align 8, !tbaa !4
  %add235594 = or i32 %mul227, 1
  %idxprom236 = sext i32 %add235594 to i64
  %arrayidx237 = getelementptr inbounds double* %call9, i64 %idxprom236
  store double %63, double* %arrayidx237, align 8, !tbaa !4
  br label %if.end238

if.end238:                                        ; preds = %if.then212, %if.then221, %land.lhs.true
  %add241 = add nsw i32 %59, %offset203.0644
  br label %for.inc243

for.inc243:                                       ; preds = %for.body208, %if.end238
  %offset203.1 = phi i32 [ %add241, %if.end238 ], [ %offset203.0644, %for.body208 ]
  %indvars.iv.next697 = add i64 %indvars.iv696, 1
  %64 = trunc i64 %indvars.iv.next697 to i32
  %cmp207 = icmp slt i32 %64, %55
  br i1 %cmp207, label %for.body208, label %sw.epilog

sw.bb246:                                         ; preds = %if.end8
  call void @SubMtx_diagonalInfo(%struct._SubMtx* %mtx, i32* %nent248, double** %entries247) #4
  %mul249 = shl nsw i32 %irow, 1
  %idxprom250 = sext i32 %mul249 to i64
  %65 = load double** %entries247, align 8, !tbaa !0
  %arrayidx251 = getelementptr inbounds double* %65, i64 %idxprom250
  %66 = load double* %arrayidx251, align 8, !tbaa !4
  %arrayidx254 = getelementptr inbounds double* %call9, i64 %idxprom250
  store double %66, double* %arrayidx254, align 8, !tbaa !4
  %add256592 = or i32 %mul249, 1
  %idxprom257 = sext i32 %add256592 to i64
  %arrayidx258 = getelementptr inbounds double* %65, i64 %idxprom257
  %67 = load double* %arrayidx258, align 8, !tbaa !4
  %arrayidx262 = getelementptr inbounds double* %call9, i64 %idxprom257
  store double %67, double* %arrayidx262, align 8, !tbaa !4
  br label %sw.epilog

for.body272.lr.ph:                                ; preds = %if.end8
  call void @SubMtx_blockDiagonalInfo(%struct._SubMtx* %mtx, i32* %nrow268, i32* %nent269, i32** %pivotsizes, double** %entries264) #4
  %68 = load i32** %pivotsizes, align 8, !tbaa !0
  %69 = load double** %entries264, align 8, !tbaa !0
  %70 = add i32 %irow, -1
  br label %for.body272

for.body272:                                      ; preds = %if.end329.thread, %for.body272.lr.ph, %if.end329
  %indvars.iv706 = phi i64 [ 0, %for.body272.lr.ph ], [ %indvars.iv.next707, %if.end329 ], [ %indvars.iv.next707720, %if.end329.thread ]
  %kk267.0660 = phi i32 [ 0, %for.body272.lr.ph ], [ %kk267.3, %if.end329 ], [ %add328, %if.end329.thread ]
  %jrow266.0659 = phi i32 [ 0, %for.body272.lr.ph ], [ %add277, %if.end329 ], [ %add277, %if.end329.thread ]
  %arrayidx274 = getelementptr inbounds i32* %68, i64 %indvars.iv706
  %71 = load i32* %arrayidx274, align 4, !tbaa !3
  %add277 = add nsw i32 %71, %jrow266.0659
  %cmp278 = icmp sgt i32 %add277, %irow
  br i1 %cmp278, label %if.then279, label %if.end329.thread

if.then279:                                       ; preds = %for.body272
  %sub281 = sub i32 %irow, %jrow266.0659
  %add282 = add nsw i32 %sub281, %kk267.0660
  %cmp284646 = icmp sgt i32 %jrow266.0659, %irow
  br i1 %cmp284646, label %for.cond304.loopexit, label %for.body285.lr.ph

for.body285.lr.ph:                                ; preds = %if.then279
  %72 = sext i32 %71 to i64
  %73 = sext i32 %jrow266.0659 to i64
  %74 = add i32 %70, %kk267.0660
  %75 = add i32 %74, %71
  %76 = add i32 %71, -2
  %77 = mul i32 %sub281, %76
  %78 = add i32 %75, %77
  %79 = zext i32 %sub281 to i33
  %80 = sub i32 %70, %jrow266.0659
  %81 = zext i32 %80 to i33
  %82 = mul i33 %79, %81
  %83 = lshr i33 %82, 1
  %84 = trunc i33 %83 to i32
  br label %for.body285

for.body285:                                      ; preds = %for.body285, %for.body285.lr.ph
  %indvars.iv700 = phi i64 [ %indvars.iv.next701, %for.body285 ], [ %73, %for.body285.lr.ph ]
  %indvars.iv698 = phi i64 [ %indvars.iv.next699, %for.body285 ], [ %72, %for.body285.lr.ph ]
  %kk267.1648 = phi i32 [ %add300, %for.body285 ], [ %add282, %for.body285.lr.ph ]
  %indvars.iv.next699 = add i64 %indvars.iv698, -1
  %mul286 = shl nsw i32 %kk267.1648, 1
  %idxprom287 = sext i32 %mul286 to i64
  %arrayidx288 = getelementptr inbounds double* %69, i64 %idxprom287
  %85 = load double* %arrayidx288, align 8, !tbaa !4
  %86 = trunc i64 %indvars.iv700 to i32
  %mul289 = shl nsw i32 %86, 1
  %idxprom290 = sext i32 %mul289 to i64
  %arrayidx291 = getelementptr inbounds double* %call9, i64 %idxprom290
  store double %85, double* %arrayidx291, align 8, !tbaa !4
  %add293590 = or i32 %mul286, 1
  %idxprom294 = sext i32 %add293590 to i64
  %arrayidx295 = getelementptr inbounds double* %69, i64 %idxprom294
  %87 = load double* %arrayidx295, align 8, !tbaa !4
  %add297591 = or i32 %mul289, 1
  %idxprom298 = sext i32 %add297591 to i64
  %arrayidx299 = getelementptr inbounds double* %call9, i64 %idxprom298
  store double %87, double* %arrayidx299, align 8, !tbaa !4
  %88 = trunc i64 %indvars.iv.next699 to i32
  %add300 = add nsw i32 %88, %kk267.1648
  %indvars.iv.next701 = add i64 %indvars.iv700, 1
  %cmp284 = icmp slt i32 %86, %irow
  br i1 %cmp284, label %for.body285, label %for.cond283.for.cond304.loopexit_crit_edge

for.cond283.for.cond304.loopexit_crit_edge:       ; preds = %for.body285
  %89 = add i32 %irow, 1
  %90 = sub i32 %78, %jrow266.0659
  %91 = sub i32 %90, %84
  br label %for.cond304.loopexit

for.cond304.loopexit:                             ; preds = %for.cond283.for.cond304.loopexit_crit_edge, %if.then279
  %kk267.1.lcssa = phi i32 [ %91, %for.cond283.for.cond304.loopexit_crit_edge ], [ %add282, %if.then279 ]
  %ii265.0.lcssa = phi i32 [ %89, %for.cond283.for.cond304.loopexit_crit_edge ], [ %jrow266.0659, %if.then279 ]
  %cmp306652 = icmp slt i32 %ii265.0.lcssa, %add277
  br i1 %cmp306652, label %for.body307.lr.ph, label %if.end329

for.body307.lr.ph:                                ; preds = %for.cond304.loopexit
  %92 = sext i32 %kk267.1.lcssa to i64
  %93 = sext i32 %ii265.0.lcssa to i64
  %94 = add i32 %jrow266.0659, %kk267.1.lcssa
  %95 = add i32 %94, %71
  br label %for.body307

for.body307:                                      ; preds = %for.body307.lr.ph, %for.body307
  %indvars.iv704 = phi i64 [ %93, %for.body307.lr.ph ], [ %indvars.iv.next705, %for.body307 ]
  %indvars.iv702 = phi i64 [ %92, %for.body307.lr.ph ], [ %indvars.iv.next703, %for.body307 ]
  %96 = trunc i64 %indvars.iv702 to i32
  %mul308 = shl nsw i32 %96, 1
  %idxprom309 = sext i32 %mul308 to i64
  %arrayidx310 = getelementptr inbounds double* %69, i64 %idxprom309
  %97 = load double* %arrayidx310, align 8, !tbaa !4
  %98 = trunc i64 %indvars.iv704 to i32
  %mul311 = shl nsw i32 %98, 1
  %idxprom312 = sext i32 %mul311 to i64
  %arrayidx313 = getelementptr inbounds double* %call9, i64 %idxprom312
  store double %97, double* %arrayidx313, align 8, !tbaa !4
  %add315588 = or i32 %mul308, 1
  %idxprom316 = sext i32 %add315588 to i64
  %arrayidx317 = getelementptr inbounds double* %69, i64 %idxprom316
  %99 = load double* %arrayidx317, align 8, !tbaa !4
  %add319589 = or i32 %mul311, 1
  %idxprom320 = sext i32 %add319589 to i64
  %arrayidx321 = getelementptr inbounds double* %call9, i64 %idxprom320
  store double %99, double* %arrayidx321, align 8, !tbaa !4
  %indvars.iv.next703 = add i64 %indvars.iv702, 1
  %indvars.iv.next705 = add i64 %indvars.iv704, 1
  %100 = trunc i64 %indvars.iv.next705 to i32
  %cmp306 = icmp slt i32 %100, %add277
  br i1 %cmp306, label %for.body307, label %for.cond304.if.end329.loopexit_crit_edge

if.end329.thread:                                 ; preds = %for.body272
  %add326 = add nsw i32 %71, 1
  %mul327 = mul nsw i32 %add326, %71
  %div = sdiv i32 %mul327, 2
  %add328 = add nsw i32 %div, %kk267.0660
  %indvars.iv.next707720 = add i64 %indvars.iv706, 1
  br label %for.body272

for.cond304.if.end329.loopexit_crit_edge:         ; preds = %for.body307
  %101 = sub i32 %95, %ii265.0.lcssa
  br label %if.end329

if.end329:                                        ; preds = %for.cond304.loopexit, %for.cond304.if.end329.loopexit_crit_edge
  %kk267.3 = phi i32 [ %101, %for.cond304.if.end329.loopexit_crit_edge ], [ %kk267.1.lcssa, %for.cond304.loopexit ]
  %indvars.iv.next707 = add i64 %indvars.iv706, 1
  br i1 %cmp278, label %sw.epilog, label %for.body272

for.body347.lr.ph:                                ; preds = %if.end8
  call void @SubMtx_blockDiagonalInfo(%struct._SubMtx* %mtx, i32* %nrow341, i32* %nent342, i32** %pivotsizes344, double** %entries335) #4
  %102 = load i32** %pivotsizes344, align 8, !tbaa !0
  %103 = load double** %entries335, align 8, !tbaa !0
  %104 = add i32 %irow, -1
  %105 = add i32 %irow, -2
  br label %for.body347

for.body347:                                      ; preds = %if.end408.thread, %for.body347.lr.ph, %if.end408
  %indvars.iv716 = phi i64 [ 0, %for.body347.lr.ph ], [ %indvars.iv.next717, %if.end408 ], [ %indvars.iv.next717721, %if.end408.thread ]
  %kk339.0676 = phi i32 [ 0, %for.body347.lr.ph ], [ %kk339.3, %if.end408 ], [ %add407, %if.end408.thread ]
  %jrow338.0675 = phi i32 [ 0, %for.body347.lr.ph ], [ %add352, %if.end408 ], [ %add352, %if.end408.thread ]
  %arrayidx349 = getelementptr inbounds i32* %102, i64 %indvars.iv716
  %106 = load i32* %arrayidx349, align 4, !tbaa !3
  %add352 = add nsw i32 %106, %jrow338.0675
  %cmp353 = icmp sgt i32 %add352, %irow
  br i1 %cmp353, label %if.then354, label %if.end408.thread

if.then354:                                       ; preds = %for.body347
  %sub356 = sub i32 %irow, %jrow338.0675
  %add357 = add nsw i32 %sub356, %kk339.0676
  %cmp359662 = icmp slt i32 %jrow338.0675, %irow
  br i1 %cmp359662, label %for.body360.lr.ph, label %for.cond381.loopexit

for.body360.lr.ph:                                ; preds = %if.then354
  %107 = sext i32 %106 to i64
  %108 = sext i32 %jrow338.0675 to i64
  %109 = add i32 %104, %kk339.0676
  %110 = add i32 %109, %106
  %111 = sub i32 %104, %jrow338.0675
  %112 = add i32 %106, -2
  %113 = mul i32 %111, %112
  %114 = add i32 %110, %113
  %115 = zext i32 %111 to i33
  %116 = sub i32 %105, %jrow338.0675
  %117 = zext i32 %116 to i33
  %118 = mul i33 %115, %117
  %119 = lshr i33 %118, 1
  %120 = trunc i33 %119 to i32
  br label %for.body360

for.body360:                                      ; preds = %for.body360.lr.ph, %for.body360
  %indvars.iv710 = phi i64 [ %108, %for.body360.lr.ph ], [ %indvars.iv.next711, %for.body360 ]
  %indvars.iv708 = phi i64 [ %107, %for.body360.lr.ph ], [ %indvars.iv.next709, %for.body360 ]
  %kk339.1664 = phi i32 [ %add357, %for.body360.lr.ph ], [ %add377, %for.body360 ]
  %indvars.iv.next709 = add i64 %indvars.iv708, -1
  %mul361 = shl nsw i32 %kk339.1664, 1
  %idxprom362 = sext i32 %mul361 to i64
  %arrayidx363 = getelementptr inbounds double* %103, i64 %idxprom362
  %121 = load double* %arrayidx363, align 8, !tbaa !4
  %122 = trunc i64 %indvars.iv710 to i32
  %mul364 = shl nsw i32 %122, 1
  %idxprom365 = sext i32 %mul364 to i64
  %arrayidx366 = getelementptr inbounds double* %call9, i64 %idxprom365
  store double %121, double* %arrayidx366, align 8, !tbaa !4
  %add368586 = or i32 %mul361, 1
  %idxprom369 = sext i32 %add368586 to i64
  %arrayidx370 = getelementptr inbounds double* %103, i64 %idxprom369
  %123 = load double* %arrayidx370, align 8, !tbaa !4
  %sub371 = fsub double -0.000000e+00, %123
  %add373587 = or i32 %mul364, 1
  %idxprom374 = sext i32 %add373587 to i64
  %arrayidx375 = getelementptr inbounds double* %call9, i64 %idxprom374
  store double %sub371, double* %arrayidx375, align 8, !tbaa !4
  %124 = trunc i64 %indvars.iv.next709 to i32
  %add377 = add nsw i32 %124, %kk339.1664
  %indvars.iv.next711 = add i64 %indvars.iv710, 1
  %125 = trunc i64 %indvars.iv.next711 to i32
  %cmp359 = icmp slt i32 %125, %irow
  br i1 %cmp359, label %for.body360, label %for.cond358.for.cond381.loopexit_crit_edge

for.cond358.for.cond381.loopexit_crit_edge:       ; preds = %for.body360
  %126 = sub i32 %114, %jrow338.0675
  %127 = sub i32 %126, %120
  br label %for.cond381.loopexit

for.cond381.loopexit:                             ; preds = %for.cond358.for.cond381.loopexit_crit_edge, %if.then354
  %kk339.1.lcssa = phi i32 [ %127, %for.cond358.for.cond381.loopexit_crit_edge ], [ %add357, %if.then354 ]
  %ii336.0.lcssa = phi i32 [ %irow, %for.cond358.for.cond381.loopexit_crit_edge ], [ %jrow338.0675, %if.then354 ]
  %cmp383668 = icmp slt i32 %ii336.0.lcssa, %add352
  br i1 %cmp383668, label %for.body384.lr.ph, label %if.end408

for.body384.lr.ph:                                ; preds = %for.cond381.loopexit
  %128 = sext i32 %kk339.1.lcssa to i64
  %129 = sext i32 %ii336.0.lcssa to i64
  %130 = add i32 %jrow338.0675, %kk339.1.lcssa
  %131 = add i32 %130, %106
  br label %for.body384

for.body384:                                      ; preds = %for.body384.lr.ph, %for.body384
  %indvars.iv714 = phi i64 [ %129, %for.body384.lr.ph ], [ %indvars.iv.next715, %for.body384 ]
  %indvars.iv712 = phi i64 [ %128, %for.body384.lr.ph ], [ %indvars.iv.next713, %for.body384 ]
  %132 = trunc i64 %indvars.iv712 to i32
  %mul385 = shl nsw i32 %132, 1
  %idxprom386 = sext i32 %mul385 to i64
  %arrayidx387 = getelementptr inbounds double* %103, i64 %idxprom386
  %133 = load double* %arrayidx387, align 8, !tbaa !4
  %134 = trunc i64 %indvars.iv714 to i32
  %mul388 = shl nsw i32 %134, 1
  %idxprom389 = sext i32 %mul388 to i64
  %arrayidx390 = getelementptr inbounds double* %call9, i64 %idxprom389
  store double %133, double* %arrayidx390, align 8, !tbaa !4
  %add392584 = or i32 %mul385, 1
  %idxprom393 = sext i32 %add392584 to i64
  %arrayidx394 = getelementptr inbounds double* %103, i64 %idxprom393
  %135 = load double* %arrayidx394, align 8, !tbaa !4
  %add396585 = or i32 %mul388, 1
  %idxprom397 = sext i32 %add396585 to i64
  %arrayidx398 = getelementptr inbounds double* %call9, i64 %idxprom397
  store double %135, double* %arrayidx398, align 8, !tbaa !4
  %indvars.iv.next713 = add i64 %indvars.iv712, 1
  %indvars.iv.next715 = add i64 %indvars.iv714, 1
  %136 = trunc i64 %indvars.iv.next715 to i32
  %cmp383 = icmp slt i32 %136, %add352
  br i1 %cmp383, label %for.body384, label %for.cond381.if.end408.loopexit_crit_edge

if.end408.thread:                                 ; preds = %for.body347
  %add404 = add nsw i32 %106, 1
  %mul405 = mul nsw i32 %add404, %106
  %div406 = sdiv i32 %mul405, 2
  %add407 = add nsw i32 %div406, %kk339.0676
  %indvars.iv.next717721 = add i64 %indvars.iv716, 1
  br label %for.body347

for.cond381.if.end408.loopexit_crit_edge:         ; preds = %for.body384
  %137 = sub i32 %131, %ii336.0.lcssa
  br label %if.end408

if.end408:                                        ; preds = %for.cond381.loopexit, %for.cond381.if.end408.loopexit_crit_edge
  %kk339.3 = phi i32 [ %137, %for.cond381.if.end408.loopexit_crit_edge ], [ %kk339.1.lcssa, %for.cond381.loopexit ]
  %indvars.iv.next717 = add i64 %indvars.iv716, 1
  br i1 %cmp353, label %sw.epilog, label %for.body347

sw.epilog:                                        ; preds = %if.end408, %if.end329, %sw.bb195, %for.inc243, %if.then167, %for.body175, %sw.bb113, %for.inc143, %sw.bb66, %for.end106, %for.cond39.preheader, %for.body43, %sw.bb, %for.body, %if.end8, %for.end163, %sw.bb246
  ret void
}

; Function Attrs: optsize
declare void @ZV_setSize(%struct._ZV*, i32) #3

; Function Attrs: optsize
declare double* @ZV_entries(%struct._ZV*) #3

; Function Attrs: nounwind optsize uwtable
define void @SubMtx_fillColumnDV(%struct._SubMtx* %mtx, i32 %icol, %struct._DV* %colDV) #0 {
entry:
  %entries = alloca double*, align 8
  %inc1 = alloca i32, align 4
  %inc2 = alloca i32, align 4
  %ncol = alloca i32, align 4
  %nrow11 = alloca i32, align 4
  %entries17 = alloca double*, align 8
  %ncol18 = alloca i32, align 4
  %nent = alloca i32, align 4
  %indices = alloca i32*, align 8
  %sizes = alloca i32*, align 8
  %entries44 = alloca double*, align 8
  %nent48 = alloca i32, align 4
  %nrow49 = alloca i32, align 4
  %indices51 = alloca i32*, align 8
  %sizes52 = alloca i32*, align 8
  %entries81 = alloca double*, align 8
  %nent83 = alloca i32, align 4
  %colids = alloca i32*, align 8
  %rowids = alloca i32*, align 8
  %entries102 = alloca double*, align 8
  %ncol106 = alloca i32, align 4
  %nent107 = alloca i32, align 4
  %firstlocs = alloca i32*, align 8
  %sizes109 = alloca i32*, align 8
  %entries141 = alloca double*, align 8
  %nent146 = alloca i32, align 4
  %nrow147 = alloca i32, align 4
  %firstlocs149 = alloca i32*, align 8
  %sizes150 = alloca i32*, align 8
  %entries182 = alloca double*, align 8
  %nent183 = alloca i32, align 4
  %entries189 = alloca double*, align 8
  %nrow193 = alloca i32, align 4
  %nent194 = alloca i32, align 4
  %pivotsizes = alloca i32*, align 8
  %entries240 = alloca double*, align 8
  %nrow246 = alloca i32, align 4
  %nent247 = alloca i32, align 4
  %pivotsizes249 = alloca i32*, align 8
  %cmp = icmp eq %struct._SubMtx* %mtx, null
  %cmp1 = icmp slt i32 %icol, 0
  %or.cond = or i1 %cmp, %cmp1
  %cmp3 = icmp eq %struct._DV* %colDV, null
  %or.cond435 = or i1 %or.cond, %cmp3
  br i1 %or.cond435, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([59 x i8]* @.str4, i64 0, i64 0), %struct._SubMtx* %mtx, i32 %icol, %struct._DV* %colDV) #4
  call void @exit(i32 -1) #5
  unreachable

if.end:                                           ; preds = %entry
  %type = getelementptr inbounds %struct._SubMtx* %mtx, i64 0, i32 0
  %1 = load i32* %type, align 4, !tbaa !3
  %cmp4 = icmp eq i32 %1, 1
  br i1 %cmp4, label %if.end8, label %if.then5

if.then5:                                         ; preds = %if.end
  %2 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call7 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([83 x i8]* @.str5, i64 0, i64 0), %struct._SubMtx* %mtx, i32 %icol, %struct._DV* %colDV, i32 %1) #4
  call void @exit(i32 -1) #5
  unreachable

if.end8:                                          ; preds = %if.end
  %nrow = getelementptr inbounds %struct._SubMtx* %mtx, i64 0, i32 4
  %3 = load i32* %nrow, align 4, !tbaa !3
  call void @DV_setSize(%struct._DV* %colDV, i32 %3) #4
  %call9 = call double* @DV_entries(%struct._DV* %colDV) #4
  %4 = load i32* %nrow, align 4, !tbaa !3
  call void @DVzero(i32 %4, double* %call9) #4
  %mode = getelementptr inbounds %struct._SubMtx* %mtx, i64 0, i32 1
  %5 = load i32* %mode, align 4, !tbaa !3
  switch i32 %5, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb
    i32 3, label %sw.bb16
    i32 2, label %sw.bb43
    i32 4, label %sw.bb80
    i32 6, label %sw.bb101
    i32 5, label %sw.bb140
    i32 7, label %sw.bb181
    i32 8, label %for.body197.lr.ph
    i32 9, label %for.body252.lr.ph
  ]

sw.bb:                                            ; preds = %if.end8, %if.end8
  call void @SubMtx_denseInfo(%struct._SubMtx* %mtx, i32* %nrow11, i32* %ncol, i32* %inc1, i32* %inc2, double** %entries) #4
  %6 = load i32* %nrow11, align 4, !tbaa !3
  %cmp12436 = icmp sgt i32 %6, 0
  br i1 %cmp12436, label %for.body.lr.ph, label %sw.epilog

for.body.lr.ph:                                   ; preds = %sw.bb
  %7 = load i32* %inc1, align 4, !tbaa !3
  %8 = load i32* %inc2, align 4, !tbaa !3
  %mul13 = mul nsw i32 %8, %icol
  %9 = load double** %entries, align 8, !tbaa !0
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.body ]
  %10 = trunc i64 %indvars.iv to i32
  %mul = mul nsw i32 %7, %10
  %add = add nsw i32 %mul13, %mul
  %idxprom = sext i32 %add to i64
  %arrayidx = getelementptr inbounds double* %9, i64 %idxprom
  %11 = load double* %arrayidx, align 8, !tbaa !4
  %arrayidx15 = getelementptr inbounds double* %call9, i64 %indvars.iv
  store double %11, double* %arrayidx15, align 8, !tbaa !4
  %indvars.iv.next = add i64 %indvars.iv, 1
  %12 = trunc i64 %indvars.iv.next to i32
  %cmp12 = icmp slt i32 %12, %6
  br i1 %cmp12, label %for.body, label %sw.epilog

sw.bb16:                                          ; preds = %if.end8
  call void @SubMtx_sparseColumnsInfo(%struct._SubMtx* %mtx, i32* %ncol18, i32* %nent, i32** %sizes, i32** %indices, double** %entries17) #4
  %cmp20443 = icmp sgt i32 %icol, 0
  %13 = load i32** %sizes, align 8, !tbaa !0
  br i1 %cmp20443, label %for.body21, label %for.cond28.preheader

for.cond19.for.cond28.preheader_crit_edge:        ; preds = %for.body21
  %phitmp550 = sext i32 %add24 to i64
  br label %for.cond28.preheader

for.cond28.preheader:                             ; preds = %sw.bb16, %for.cond19.for.cond28.preheader_crit_edge
  %offset.0.lcssa = phi i64 [ %phitmp550, %for.cond19.for.cond28.preheader_crit_edge ], [ 0, %sw.bb16 ]
  %idxprom29 = sext i32 %icol to i64
  %arrayidx30439 = getelementptr inbounds i32* %13, i64 %idxprom29
  %14 = load i32* %arrayidx30439, align 4, !tbaa !3
  %cmp31440 = icmp sgt i32 %14, 0
  br i1 %cmp31440, label %for.body32.lr.ph, label %sw.epilog

for.body32.lr.ph:                                 ; preds = %for.cond28.preheader
  %15 = load double** %entries17, align 8, !tbaa !0
  %16 = load i32** %indices, align 8, !tbaa !0
  br label %for.body32

for.body21:                                       ; preds = %sw.bb16, %for.body21
  %indvars.iv506 = phi i64 [ %indvars.iv.next507, %for.body21 ], [ 0, %sw.bb16 ]
  %offset.0444 = phi i32 [ %add24, %for.body21 ], [ 0, %sw.bb16 ]
  %arrayidx23 = getelementptr inbounds i32* %13, i64 %indvars.iv506
  %17 = load i32* %arrayidx23, align 4, !tbaa !3
  %add24 = add nsw i32 %17, %offset.0444
  %indvars.iv.next507 = add i64 %indvars.iv506, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next507 to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %icol
  br i1 %exitcond, label %for.cond19.for.cond28.preheader_crit_edge, label %for.body21

for.body32:                                       ; preds = %for.body32.lr.ph, %for.body32
  %indvars.iv504 = phi i64 [ %offset.0.lcssa, %for.body32.lr.ph ], [ %indvars.iv.next505, %for.body32 ]
  %ii.0442 = phi i32 [ 0, %for.body32.lr.ph ], [ %inc40, %for.body32 ]
  %arrayidx34 = getelementptr inbounds double* %15, i64 %indvars.iv504
  %18 = load double* %arrayidx34, align 8, !tbaa !4
  %arrayidx36 = getelementptr inbounds i32* %16, i64 %indvars.iv504
  %19 = load i32* %arrayidx36, align 4, !tbaa !3
  %idxprom37 = sext i32 %19 to i64
  %arrayidx38 = getelementptr inbounds double* %call9, i64 %idxprom37
  store double %18, double* %arrayidx38, align 8, !tbaa !4
  %inc40 = add nsw i32 %ii.0442, 1
  %indvars.iv.next505 = add i64 %indvars.iv504, 1
  %cmp31 = icmp slt i32 %inc40, %14
  br i1 %cmp31, label %for.body32, label %sw.epilog

sw.bb43:                                          ; preds = %if.end8
  call void @SubMtx_sparseRowsInfo(%struct._SubMtx* %mtx, i32* %nrow49, i32* %nent48, i32** %sizes52, i32** %indices51, double** %entries44) #4
  %20 = load i32* %nrow49, align 4, !tbaa !3
  %cmp54454 = icmp sgt i32 %20, 0
  br i1 %cmp54454, label %for.cond56.preheader.lr.ph, label %sw.epilog

for.cond56.preheader.lr.ph:                       ; preds = %sw.bb43
  %21 = load i32** %sizes52, align 8, !tbaa !0
  %22 = load i32** %indices51, align 8, !tbaa !0
  %23 = load double** %entries44, align 8, !tbaa !0
  br label %for.cond56.preheader

for.cond56.preheader:                             ; preds = %for.cond56.preheader.lr.ph, %for.end73
  %indvars.iv511 = phi i64 [ 0, %for.cond56.preheader.lr.ph ], [ %indvars.iv.next512, %for.end73 ]
  %offset50.0455 = phi i32 [ 0, %for.cond56.preheader.lr.ph ], [ %add76, %for.end73 ]
  %arrayidx58448 = getelementptr inbounds i32* %21, i64 %indvars.iv511
  %24 = load i32* %arrayidx58448, align 4, !tbaa !3
  %cmp59449 = icmp sgt i32 %24, 0
  br i1 %cmp59449, label %for.body60.lr.ph, label %for.end73

for.body60.lr.ph:                                 ; preds = %for.cond56.preheader
  %25 = sext i32 %offset50.0455 to i64
  br label %for.body60

for.body60:                                       ; preds = %for.body60.lr.ph, %for.inc70
  %indvars.iv509 = phi i64 [ %25, %for.body60.lr.ph ], [ %indvars.iv.next510, %for.inc70 ]
  %ii45.0451 = phi i32 [ 0, %for.body60.lr.ph ], [ %inc71, %for.inc70 ]
  %arrayidx62 = getelementptr inbounds i32* %22, i64 %indvars.iv509
  %26 = load i32* %arrayidx62, align 4, !tbaa !3
  %cmp63 = icmp eq i32 %26, %icol
  br i1 %cmp63, label %if.then64, label %for.inc70

if.then64:                                        ; preds = %for.body60
  %arrayidx66 = getelementptr inbounds double* %23, i64 %indvars.iv509
  %27 = load double* %arrayidx66, align 8, !tbaa !4
  %arrayidx68 = getelementptr inbounds double* %call9, i64 %indvars.iv511
  store double %27, double* %arrayidx68, align 8, !tbaa !4
  br label %for.end73

for.inc70:                                        ; preds = %for.body60
  %inc71 = add nsw i32 %ii45.0451, 1
  %indvars.iv.next510 = add i64 %indvars.iv509, 1
  %cmp59 = icmp slt i32 %inc71, %24
  br i1 %cmp59, label %for.body60, label %for.end73

for.end73:                                        ; preds = %for.cond56.preheader, %for.inc70, %if.then64
  %add76 = add nsw i32 %24, %offset50.0455
  %indvars.iv.next512 = add i64 %indvars.iv511, 1
  %28 = trunc i64 %indvars.iv.next512 to i32
  %cmp54 = icmp slt i32 %28, %20
  br i1 %cmp54, label %for.cond56.preheader, label %sw.epilog

sw.bb80:                                          ; preds = %if.end8
  call void @SubMtx_sparseTriplesInfo(%struct._SubMtx* %mtx, i32* %nent83, i32** %rowids, i32** %colids, double** %entries81) #4
  %29 = load i32* %nent83, align 4, !tbaa !3
  %cmp85458 = icmp sgt i32 %29, 0
  br i1 %cmp85458, label %for.body86.lr.ph, label %sw.epilog

for.body86.lr.ph:                                 ; preds = %sw.bb80
  %30 = load i32** %colids, align 8, !tbaa !0
  %31 = load double** %entries81, align 8, !tbaa !0
  %32 = load i32** %rowids, align 8, !tbaa !0
  br label %for.body86

for.body86:                                       ; preds = %for.body86.lr.ph, %for.inc98
  %indvars.iv513 = phi i64 [ 0, %for.body86.lr.ph ], [ %indvars.iv.next514, %for.inc98 ]
  %arrayidx88 = getelementptr inbounds i32* %30, i64 %indvars.iv513
  %33 = load i32* %arrayidx88, align 4, !tbaa !3
  %cmp89 = icmp eq i32 %33, %icol
  br i1 %cmp89, label %if.then90, label %for.inc98

if.then90:                                        ; preds = %for.body86
  %arrayidx92 = getelementptr inbounds double* %31, i64 %indvars.iv513
  %34 = load double* %arrayidx92, align 8, !tbaa !4
  %arrayidx94 = getelementptr inbounds i32* %32, i64 %indvars.iv513
  %35 = load i32* %arrayidx94, align 4, !tbaa !3
  %idxprom95 = sext i32 %35 to i64
  %arrayidx96 = getelementptr inbounds double* %call9, i64 %idxprom95
  store double %34, double* %arrayidx96, align 8, !tbaa !4
  br label %for.inc98

for.inc98:                                        ; preds = %for.body86, %if.then90
  %indvars.iv.next514 = add i64 %indvars.iv513, 1
  %36 = trunc i64 %indvars.iv.next514 to i32
  %cmp85 = icmp slt i32 %36, %29
  br i1 %cmp85, label %for.body86, label %sw.epilog

sw.bb101:                                         ; preds = %if.end8
  call void @SubMtx_denseSubcolumnsInfo(%struct._SubMtx* %mtx, i32* %ncol106, i32* %nent107, i32** %firstlocs, i32** %sizes109, double** %entries102) #4
  %cmp111464 = icmp sgt i32 %icol, 0
  %37 = load i32** %sizes109, align 8, !tbaa !0
  br i1 %cmp111464, label %for.body112, label %for.end118

for.body112:                                      ; preds = %sw.bb101, %for.body112
  %indvars.iv520 = phi i64 [ %indvars.iv.next521, %for.body112 ], [ 0, %sw.bb101 ]
  %offset108.0466 = phi i32 [ %add115, %for.body112 ], [ 0, %sw.bb101 ]
  %arrayidx114 = getelementptr inbounds i32* %37, i64 %indvars.iv520
  %38 = load i32* %arrayidx114, align 4, !tbaa !3
  %add115 = add nsw i32 %38, %offset108.0466
  %indvars.iv.next521 = add i64 %indvars.iv520, 1
  %lftr.wideiv522 = trunc i64 %indvars.iv.next521 to i32
  %exitcond523 = icmp eq i32 %lftr.wideiv522, %icol
  br i1 %exitcond523, label %for.cond110.for.end118_crit_edge, label %for.body112

for.cond110.for.end118_crit_edge:                 ; preds = %for.body112
  %phitmp = sext i32 %add115 to i64
  br label %for.end118

for.end118:                                       ; preds = %sw.bb101, %for.cond110.for.end118_crit_edge
  %offset108.0.lcssa = phi i64 [ %phitmp, %for.cond110.for.end118_crit_edge ], [ 0, %sw.bb101 ]
  %idxprom119 = sext i32 %icol to i64
  %arrayidx120 = getelementptr inbounds i32* %37, i64 %idxprom119
  %39 = load i32* %arrayidx120, align 4, !tbaa !3
  %cmp121 = icmp sgt i32 %39, 0
  br i1 %cmp121, label %if.then122, label %sw.epilog

if.then122:                                       ; preds = %for.end118
  %40 = load i32** %firstlocs, align 8, !tbaa !0
  %arrayidx124 = getelementptr inbounds i32* %40, i64 %idxprom119
  %41 = load i32* %arrayidx124, align 4, !tbaa !3
  %add127 = add i32 %39, -1
  %sub = add i32 %add127, %41
  %cmp129461 = icmp sgt i32 %41, %sub
  br i1 %cmp129461, label %sw.epilog, label %for.body130.lr.ph

for.body130.lr.ph:                                ; preds = %if.then122
  %42 = load double** %entries102, align 8, !tbaa !0
  %43 = sext i32 %41 to i64
  br label %for.body130

for.body130:                                      ; preds = %for.body130, %for.body130.lr.ph
  %indvars.iv517 = phi i64 [ %indvars.iv.next518, %for.body130 ], [ %offset108.0.lcssa, %for.body130.lr.ph ]
  %indvars.iv515 = phi i64 [ %indvars.iv.next516, %for.body130 ], [ %43, %for.body130.lr.ph ]
  %arrayidx132 = getelementptr inbounds double* %42, i64 %indvars.iv517
  %44 = load double* %arrayidx132, align 8, !tbaa !4
  %arrayidx134 = getelementptr inbounds double* %call9, i64 %indvars.iv515
  store double %44, double* %arrayidx134, align 8, !tbaa !4
  %indvars.iv.next516 = add i64 %indvars.iv515, 1
  %indvars.iv.next518 = add i64 %indvars.iv517, 1
  %45 = trunc i64 %indvars.iv515 to i32
  %cmp129 = icmp slt i32 %45, %sub
  br i1 %cmp129, label %for.body130, label %sw.epilog

sw.bb140:                                         ; preds = %if.end8
  call void @SubMtx_denseSubrowsInfo(%struct._SubMtx* %mtx, i32* %nrow147, i32* %nent146, i32** %firstlocs149, i32** %sizes150, double** %entries141) #4
  %46 = load i32* %nrow147, align 4, !tbaa !3
  %cmp152469 = icmp sgt i32 %46, 0
  br i1 %cmp152469, label %for.body153.lr.ph, label %sw.epilog

for.body153.lr.ph:                                ; preds = %sw.bb140
  %47 = load i32** %sizes150, align 8, !tbaa !0
  %48 = load i32** %firstlocs149, align 8, !tbaa !0
  %49 = load double** %entries141, align 8, !tbaa !0
  br label %for.body153

for.body153:                                      ; preds = %for.body153.lr.ph, %for.inc178
  %indvars.iv524 = phi i64 [ 0, %for.body153.lr.ph ], [ %indvars.iv.next525, %for.inc178 ]
  %offset148.0471 = phi i32 [ 0, %for.body153.lr.ph ], [ %offset148.1, %for.inc178 ]
  %arrayidx155 = getelementptr inbounds i32* %47, i64 %indvars.iv524
  %50 = load i32* %arrayidx155, align 4, !tbaa !3
  %cmp156 = icmp sgt i32 %50, 0
  br i1 %cmp156, label %if.then157, label %for.inc178

if.then157:                                       ; preds = %for.body153
  %arrayidx159 = getelementptr inbounds i32* %48, i64 %indvars.iv524
  %51 = load i32* %arrayidx159, align 4, !tbaa !3
  %cmp164 = icmp sgt i32 %51, %icol
  br i1 %cmp164, label %if.end173, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then157
  %add162 = add nsw i32 %51, %50
  %cmp165 = icmp sgt i32 %add162, %icol
  br i1 %cmp165, label %if.then166, label %if.end173

if.then166:                                       ; preds = %land.lhs.true
  %add167 = add nsw i32 %offset148.0471, %icol
  %sub168 = sub i32 %add167, %51
  %idxprom169 = sext i32 %sub168 to i64
  %arrayidx170 = getelementptr inbounds double* %49, i64 %idxprom169
  %52 = load double* %arrayidx170, align 8, !tbaa !4
  %arrayidx172 = getelementptr inbounds double* %call9, i64 %indvars.iv524
  store double %52, double* %arrayidx172, align 8, !tbaa !4
  br label %if.end173

if.end173:                                        ; preds = %if.then157, %if.then166, %land.lhs.true
  %add176 = add nsw i32 %50, %offset148.0471
  br label %for.inc178

for.inc178:                                       ; preds = %for.body153, %if.end173
  %offset148.1 = phi i32 [ %add176, %if.end173 ], [ %offset148.0471, %for.body153 ]
  %indvars.iv.next525 = add i64 %indvars.iv524, 1
  %53 = trunc i64 %indvars.iv.next525 to i32
  %cmp152 = icmp slt i32 %53, %46
  br i1 %cmp152, label %for.body153, label %sw.epilog

sw.bb181:                                         ; preds = %if.end8
  call void @SubMtx_diagonalInfo(%struct._SubMtx* %mtx, i32* %nent183, double** %entries182) #4
  %idxprom184 = sext i32 %icol to i64
  %54 = load double** %entries182, align 8, !tbaa !0
  %arrayidx185 = getelementptr inbounds double* %54, i64 %idxprom184
  %55 = load double* %arrayidx185, align 8, !tbaa !4
  %arrayidx187 = getelementptr inbounds double* %call9, i64 %idxprom184
  store double %55, double* %arrayidx187, align 8, !tbaa !4
  br label %sw.epilog

for.body197.lr.ph:                                ; preds = %if.end8
  call void @SubMtx_blockDiagonalInfo(%struct._SubMtx* %mtx, i32* %nrow193, i32* %nent194, i32** %pivotsizes, double** %entries189) #4
  %56 = load i32** %pivotsizes, align 8, !tbaa !0
  %57 = load double** %entries189, align 8, !tbaa !0
  %58 = add i32 %icol, -1
  br label %for.body197

for.body197:                                      ; preds = %if.end234.thread, %for.body197.lr.ph, %if.end234
  %indvars.iv535 = phi i64 [ 0, %for.body197.lr.ph ], [ %indvars.iv.next536, %if.end234 ], [ %indvars.iv.next536551, %if.end234.thread ]
  %kk192.0487 = phi i32 [ 0, %for.body197.lr.ph ], [ %kk192.3, %if.end234 ], [ %add233, %if.end234.thread ]
  %jcol191.0486 = phi i32 [ 0, %for.body197.lr.ph ], [ %add202, %if.end234 ], [ %add202, %if.end234.thread ]
  %arrayidx199 = getelementptr inbounds i32* %56, i64 %indvars.iv535
  %59 = load i32* %arrayidx199, align 4, !tbaa !3
  %add202 = add nsw i32 %59, %jcol191.0486
  %cmp203 = icmp sgt i32 %add202, %icol
  br i1 %cmp203, label %if.then204, label %if.end234.thread

if.then204:                                       ; preds = %for.body197
  %sub206 = sub i32 %icol, %jcol191.0486
  %add207 = add nsw i32 %sub206, %kk192.0487
  %cmp209473 = icmp sgt i32 %jcol191.0486, %icol
  br i1 %cmp209473, label %for.cond219.loopexit, label %for.body210.lr.ph

for.body210.lr.ph:                                ; preds = %if.then204
  %60 = sext i32 %59 to i64
  %61 = sext i32 %jcol191.0486 to i64
  %62 = add i32 %58, %kk192.0487
  %63 = add i32 %62, %59
  %64 = add i32 %59, -2
  %65 = mul i32 %sub206, %64
  %66 = add i32 %63, %65
  %67 = zext i32 %sub206 to i33
  %68 = sub i32 %58, %jcol191.0486
  %69 = zext i32 %68 to i33
  %70 = mul i33 %67, %69
  %71 = lshr i33 %70, 1
  %72 = trunc i33 %71 to i32
  br label %for.body210

for.body210:                                      ; preds = %for.body210, %for.body210.lr.ph
  %indvars.iv528 = phi i64 [ %indvars.iv.next529, %for.body210 ], [ %61, %for.body210.lr.ph ]
  %indvars.iv526 = phi i64 [ %indvars.iv.next527, %for.body210 ], [ %60, %for.body210.lr.ph ]
  %kk192.1475 = phi i32 [ %add215, %for.body210 ], [ %add207, %for.body210.lr.ph ]
  %indvars.iv.next527 = add i64 %indvars.iv526, -1
  %idxprom211 = sext i32 %kk192.1475 to i64
  %arrayidx212 = getelementptr inbounds double* %57, i64 %idxprom211
  %73 = load double* %arrayidx212, align 8, !tbaa !4
  %arrayidx214 = getelementptr inbounds double* %call9, i64 %indvars.iv528
  store double %73, double* %arrayidx214, align 8, !tbaa !4
  %74 = trunc i64 %indvars.iv.next527 to i32
  %add215 = add nsw i32 %74, %kk192.1475
  %indvars.iv.next529 = add i64 %indvars.iv528, 1
  %75 = trunc i64 %indvars.iv528 to i32
  %cmp209 = icmp slt i32 %75, %icol
  br i1 %cmp209, label %for.body210, label %for.cond208.for.cond219.loopexit_crit_edge

for.cond208.for.cond219.loopexit_crit_edge:       ; preds = %for.body210
  %76 = add i32 %icol, 1
  %77 = sub i32 %66, %jcol191.0486
  %78 = sub i32 %77, %72
  br label %for.cond219.loopexit

for.cond219.loopexit:                             ; preds = %for.cond208.for.cond219.loopexit_crit_edge, %if.then204
  %kk192.1.lcssa = phi i32 [ %78, %for.cond208.for.cond219.loopexit_crit_edge ], [ %add207, %if.then204 ]
  %ii190.0.lcssa = phi i32 [ %76, %for.cond208.for.cond219.loopexit_crit_edge ], [ %jcol191.0486, %if.then204 ]
  %cmp221479 = icmp slt i32 %ii190.0.lcssa, %add202
  br i1 %cmp221479, label %for.body222.lr.ph, label %if.end234

for.body222.lr.ph:                                ; preds = %for.cond219.loopexit
  %79 = sext i32 %kk192.1.lcssa to i64
  %80 = sext i32 %ii190.0.lcssa to i64
  %81 = add i32 %jcol191.0486, %kk192.1.lcssa
  %82 = add i32 %81, %59
  br label %for.body222

for.body222:                                      ; preds = %for.body222.lr.ph, %for.body222
  %indvars.iv532 = phi i64 [ %80, %for.body222.lr.ph ], [ %indvars.iv.next533, %for.body222 ]
  %indvars.iv530 = phi i64 [ %79, %for.body222.lr.ph ], [ %indvars.iv.next531, %for.body222 ]
  %arrayidx224 = getelementptr inbounds double* %57, i64 %indvars.iv530
  %83 = load double* %arrayidx224, align 8, !tbaa !4
  %arrayidx226 = getelementptr inbounds double* %call9, i64 %indvars.iv532
  store double %83, double* %arrayidx226, align 8, !tbaa !4
  %indvars.iv.next531 = add i64 %indvars.iv530, 1
  %indvars.iv.next533 = add i64 %indvars.iv532, 1
  %84 = trunc i64 %indvars.iv.next533 to i32
  %cmp221 = icmp slt i32 %84, %add202
  br i1 %cmp221, label %for.body222, label %for.cond219.if.end234.loopexit_crit_edge

if.end234.thread:                                 ; preds = %for.body197
  %add231 = add nsw i32 %59, 1
  %mul232 = mul nsw i32 %add231, %59
  %div = sdiv i32 %mul232, 2
  %add233 = add nsw i32 %div, %kk192.0487
  %indvars.iv.next536551 = add i64 %indvars.iv535, 1
  br label %for.body197

for.cond219.if.end234.loopexit_crit_edge:         ; preds = %for.body222
  %85 = sub i32 %82, %ii190.0.lcssa
  br label %if.end234

if.end234:                                        ; preds = %for.cond219.loopexit, %for.cond219.if.end234.loopexit_crit_edge
  %kk192.3 = phi i32 [ %85, %for.cond219.if.end234.loopexit_crit_edge ], [ %kk192.1.lcssa, %for.cond219.loopexit ]
  %indvars.iv.next536 = add i64 %indvars.iv535, 1
  br i1 %cmp203, label %sw.epilog, label %for.body197

for.body252.lr.ph:                                ; preds = %if.end8
  call void @SubMtx_blockDiagonalInfo(%struct._SubMtx* %mtx, i32* %nrow246, i32* %nent247, i32** %pivotsizes249, double** %entries240) #4
  %86 = load i32** %pivotsizes249, align 8, !tbaa !0
  %87 = load double** %entries240, align 8, !tbaa !0
  %88 = add i32 %icol, -1
  br label %for.body252

for.body252:                                      ; preds = %if.end292.thread, %for.body252.lr.ph, %if.end292
  %indvars.iv547 = phi i64 [ 0, %for.body252.lr.ph ], [ %indvars.iv.next548, %if.end292 ], [ %indvars.iv.next548552, %if.end292.thread ]
  %kk244.0503 = phi i32 [ 0, %for.body252.lr.ph ], [ %kk244.3, %if.end292 ], [ %add291, %if.end292.thread ]
  %jcol243.0502 = phi i32 [ 0, %for.body252.lr.ph ], [ %add257, %if.end292 ], [ %add257, %if.end292.thread ]
  %arrayidx254 = getelementptr inbounds i32* %86, i64 %indvars.iv547
  %89 = load i32* %arrayidx254, align 4, !tbaa !3
  %add257 = add nsw i32 %89, %jcol243.0502
  %cmp258 = icmp sgt i32 %add257, %icol
  br i1 %cmp258, label %if.then259, label %if.end292.thread

if.then259:                                       ; preds = %for.body252
  %sub261 = sub i32 %icol, %jcol243.0502
  %add262 = add nsw i32 %sub261, %kk244.0503
  %cmp264489 = icmp sgt i32 %jcol243.0502, %icol
  br i1 %cmp264489, label %for.cond275.loopexit, label %for.body265.lr.ph

for.body265.lr.ph:                                ; preds = %if.then259
  %90 = sext i32 %89 to i64
  %91 = sext i32 %jcol243.0502 to i64
  %92 = add i32 %88, %kk244.0503
  %93 = add i32 %92, %89
  %94 = add i32 %89, -2
  %95 = mul i32 %sub261, %94
  %96 = add i32 %93, %95
  %97 = zext i32 %sub261 to i33
  %98 = sub i32 %88, %jcol243.0502
  %99 = zext i32 %98 to i33
  %100 = mul i33 %97, %99
  %101 = lshr i33 %100, 1
  %102 = trunc i33 %101 to i32
  br label %for.body265

for.body265:                                      ; preds = %for.body265, %for.body265.lr.ph
  %indvars.iv539 = phi i64 [ %indvars.iv.next540, %for.body265 ], [ %91, %for.body265.lr.ph ]
  %indvars.iv537 = phi i64 [ %indvars.iv.next538, %for.body265 ], [ %90, %for.body265.lr.ph ]
  %kk244.1491 = phi i32 [ %add271, %for.body265 ], [ %add262, %for.body265.lr.ph ]
  %indvars.iv.next538 = add i64 %indvars.iv537, -1
  %idxprom266 = sext i32 %kk244.1491 to i64
  %arrayidx267 = getelementptr inbounds double* %87, i64 %idxprom266
  %103 = load double* %arrayidx267, align 8, !tbaa !4
  %arrayidx269 = getelementptr inbounds double* %call9, i64 %indvars.iv539
  store double %103, double* %arrayidx269, align 8, !tbaa !4
  %104 = trunc i64 %indvars.iv.next538 to i32
  %add271 = add nsw i32 %104, %kk244.1491
  %indvars.iv.next540 = add i64 %indvars.iv539, 1
  %105 = trunc i64 %indvars.iv539 to i32
  %cmp264 = icmp slt i32 %105, %icol
  br i1 %cmp264, label %for.body265, label %for.cond263.for.cond275.loopexit_crit_edge

for.cond263.for.cond275.loopexit_crit_edge:       ; preds = %for.body265
  %106 = add i32 %icol, 1
  %107 = sub i32 %96, %jcol243.0502
  %108 = sub i32 %107, %102
  br label %for.cond275.loopexit

for.cond275.loopexit:                             ; preds = %for.cond263.for.cond275.loopexit_crit_edge, %if.then259
  %kk244.1.lcssa = phi i32 [ %108, %for.cond263.for.cond275.loopexit_crit_edge ], [ %add262, %if.then259 ]
  %ii241.0.lcssa = phi i32 [ %106, %for.cond263.for.cond275.loopexit_crit_edge ], [ %jcol243.0502, %if.then259 ]
  %cmp277495 = icmp slt i32 %ii241.0.lcssa, %add257
  br i1 %cmp277495, label %for.body278.lr.ph, label %if.end292

for.body278.lr.ph:                                ; preds = %for.cond275.loopexit
  %109 = sext i32 %kk244.1.lcssa to i64
  %110 = sext i32 %ii241.0.lcssa to i64
  %111 = add i32 %jcol243.0502, %kk244.1.lcssa
  %112 = add i32 %111, %89
  br label %for.body278

for.body278:                                      ; preds = %for.body278.lr.ph, %for.body278
  %indvars.iv544 = phi i64 [ %110, %for.body278.lr.ph ], [ %indvars.iv.next545, %for.body278 ]
  %indvars.iv542 = phi i64 [ %109, %for.body278.lr.ph ], [ %indvars.iv.next543, %for.body278 ]
  %arrayidx280 = getelementptr inbounds double* %87, i64 %indvars.iv542
  %113 = load double* %arrayidx280, align 8, !tbaa !4
  %arrayidx282 = getelementptr inbounds double* %call9, i64 %indvars.iv544
  store double %113, double* %arrayidx282, align 8, !tbaa !4
  %indvars.iv.next543 = add i64 %indvars.iv542, 1
  %indvars.iv.next545 = add i64 %indvars.iv544, 1
  %114 = trunc i64 %indvars.iv.next545 to i32
  %cmp277 = icmp slt i32 %114, %add257
  br i1 %cmp277, label %for.body278, label %for.cond275.if.end292.loopexit_crit_edge

if.end292.thread:                                 ; preds = %for.body252
  %add288 = add nsw i32 %89, 1
  %mul289 = mul nsw i32 %add288, %89
  %div290 = sdiv i32 %mul289, 2
  %add291 = add nsw i32 %div290, %kk244.0503
  %indvars.iv.next548552 = add i64 %indvars.iv547, 1
  br label %for.body252

for.cond275.if.end292.loopexit_crit_edge:         ; preds = %for.body278
  %115 = sub i32 %112, %ii241.0.lcssa
  br label %if.end292

if.end292:                                        ; preds = %for.cond275.loopexit, %for.cond275.if.end292.loopexit_crit_edge
  %kk244.3 = phi i32 [ %115, %for.cond275.if.end292.loopexit_crit_edge ], [ %kk244.1.lcssa, %for.cond275.loopexit ]
  %indvars.iv.next548 = add i64 %indvars.iv547, 1
  br i1 %cmp258, label %sw.epilog, label %for.body252

sw.epilog:                                        ; preds = %if.end292, %if.end234, %sw.bb140, %for.inc178, %if.then122, %for.body130, %sw.bb80, %for.inc98, %sw.bb43, %for.end73, %for.cond28.preheader, %for.body32, %sw.bb, %for.body, %if.end8, %for.end118, %sw.bb181
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @SubMtx_fillColumnZV(%struct._SubMtx* %mtx, i32 %icol, %struct._ZV* %colZV) #0 {
entry:
  %entries = alloca double*, align 8
  %inc1 = alloca i32, align 4
  %inc2 = alloca i32, align 4
  %ncol = alloca i32, align 4
  %nrow11 = alloca i32, align 4
  %entries28 = alloca double*, align 8
  %ncol29 = alloca i32, align 4
  %nent = alloca i32, align 4
  %indices = alloca i32*, align 8
  %sizes = alloca i32*, align 8
  %entries67 = alloca double*, align 8
  %nent71 = alloca i32, align 4
  %nrow72 = alloca i32, align 4
  %indices74 = alloca i32*, align 8
  %sizes75 = alloca i32*, align 8
  %entries114 = alloca double*, align 8
  %nent116 = alloca i32, align 4
  %colids = alloca i32*, align 8
  %rowids = alloca i32*, align 8
  %entries147 = alloca double*, align 8
  %ncol151 = alloca i32, align 4
  %nent152 = alloca i32, align 4
  %firstlocs = alloca i32*, align 8
  %sizes154 = alloca i32*, align 8
  %entries196 = alloca double*, align 8
  %nent201 = alloca i32, align 4
  %nrow202 = alloca i32, align 4
  %firstlocs204 = alloca i32*, align 8
  %sizes205 = alloca i32*, align 8
  %entries247 = alloca double*, align 8
  %nent248 = alloca i32, align 4
  %entries264 = alloca double*, align 8
  %nrow268 = alloca i32, align 4
  %nent269 = alloca i32, align 4
  %pivotsizes = alloca i32*, align 8
  %entries335 = alloca double*, align 8
  %nrow341 = alloca i32, align 4
  %nent342 = alloca i32, align 4
  %pivotsizes344 = alloca i32*, align 8
  %cmp = icmp eq %struct._SubMtx* %mtx, null
  %cmp1 = icmp slt i32 %icol, 0
  %or.cond = or i1 %cmp, %cmp1
  %cmp3 = icmp eq %struct._ZV* %colZV, null
  %or.cond605 = or i1 %or.cond, %cmp3
  br i1 %or.cond605, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([59 x i8]* @.str6, i64 0, i64 0), %struct._SubMtx* %mtx, i32 %icol, %struct._ZV* %colZV) #4
  call void @exit(i32 -1) #5
  unreachable

if.end:                                           ; preds = %entry
  %type = getelementptr inbounds %struct._SubMtx* %mtx, i64 0, i32 0
  %1 = load i32* %type, align 4, !tbaa !3
  %cmp4 = icmp eq i32 %1, 2
  br i1 %cmp4, label %if.end8, label %if.then5

if.then5:                                         ; preds = %if.end
  %2 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call7 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([86 x i8]* @.str7, i64 0, i64 0), %struct._SubMtx* %mtx, i32 %icol, %struct._ZV* %colZV, i32 %1) #4
  call void @exit(i32 -1) #5
  unreachable

if.end8:                                          ; preds = %if.end
  %nrow = getelementptr inbounds %struct._SubMtx* %mtx, i64 0, i32 4
  %3 = load i32* %nrow, align 4, !tbaa !3
  call void @ZV_setSize(%struct._ZV* %colZV, i32 %3) #4
  %call9 = call double* @ZV_entries(%struct._ZV* %colZV) #4
  %4 = load i32* %nrow, align 4, !tbaa !3
  %mul = shl nsw i32 %4, 1
  call void @DVzero(i32 %mul, double* %call9) #4
  %mode = getelementptr inbounds %struct._SubMtx* %mtx, i64 0, i32 1
  %5 = load i32* %mode, align 4, !tbaa !3
  switch i32 %5, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb
    i32 3, label %sw.bb27
    i32 2, label %sw.bb66
    i32 4, label %sw.bb113
    i32 6, label %sw.bb146
    i32 5, label %sw.bb195
    i32 7, label %sw.bb246
    i32 8, label %for.body272.lr.ph
    i32 9, label %for.body347.lr.ph
  ]

sw.bb:                                            ; preds = %if.end8, %if.end8
  call void @SubMtx_denseInfo(%struct._SubMtx* %mtx, i32* %nrow11, i32* %ncol, i32* %inc1, i32* %inc2, double** %entries) #4
  %6 = load i32* %nrow11, align 4, !tbaa !3
  %cmp12606 = icmp sgt i32 %6, 0
  br i1 %cmp12606, label %for.body.lr.ph, label %sw.epilog

for.body.lr.ph:                                   ; preds = %sw.bb
  %7 = load i32* %inc1, align 4, !tbaa !3
  %8 = load i32* %inc2, align 4, !tbaa !3
  %mul14 = mul nsw i32 %8, %icol
  %9 = load double** %entries, align 8, !tbaa !0
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.body ]
  %10 = trunc i64 %indvars.iv to i32
  %mul13 = mul nsw i32 %7, %10
  %add = add nsw i32 %mul14, %mul13
  %mul15 = shl nsw i32 %add, 1
  %idxprom = sext i32 %mul15 to i64
  %arrayidx = getelementptr inbounds double* %9, i64 %idxprom
  %11 = load double* %arrayidx, align 8, !tbaa !4
  %mul16 = shl nsw i32 %10, 1
  %idxprom17 = sext i32 %mul16 to i64
  %arrayidx18 = getelementptr inbounds double* %call9, i64 %idxprom17
  store double %11, double* %arrayidx18, align 8, !tbaa !4
  %add20603 = or i32 %mul15, 1
  %idxprom21 = sext i32 %add20603 to i64
  %arrayidx22 = getelementptr inbounds double* %9, i64 %idxprom21
  %12 = load double* %arrayidx22, align 8, !tbaa !4
  %add24604 = or i32 %mul16, 1
  %idxprom25 = sext i32 %add24604 to i64
  %arrayidx26 = getelementptr inbounds double* %call9, i64 %idxprom25
  store double %12, double* %arrayidx26, align 8, !tbaa !4
  %indvars.iv.next = add i64 %indvars.iv, 1
  %13 = trunc i64 %indvars.iv.next to i32
  %cmp12 = icmp slt i32 %13, %6
  br i1 %cmp12, label %for.body, label %sw.epilog

sw.bb27:                                          ; preds = %if.end8
  call void @SubMtx_sparseColumnsInfo(%struct._SubMtx* %mtx, i32* %ncol29, i32* %nent, i32** %sizes, i32** %indices, double** %entries28) #4
  %cmp31613 = icmp sgt i32 %icol, 0
  %14 = load i32** %sizes, align 8, !tbaa !0
  br i1 %cmp31613, label %for.body32, label %for.cond39.preheader

for.cond30.for.cond39.preheader_crit_edge:        ; preds = %for.body32
  %phitmp720 = sext i32 %add35 to i64
  br label %for.cond39.preheader

for.cond39.preheader:                             ; preds = %sw.bb27, %for.cond30.for.cond39.preheader_crit_edge
  %offset.0.lcssa = phi i64 [ %phitmp720, %for.cond30.for.cond39.preheader_crit_edge ], [ 0, %sw.bb27 ]
  %idxprom40 = sext i32 %icol to i64
  %arrayidx41609 = getelementptr inbounds i32* %14, i64 %idxprom40
  %15 = load i32* %arrayidx41609, align 4, !tbaa !3
  %cmp42610 = icmp sgt i32 %15, 0
  br i1 %cmp42610, label %for.body43.lr.ph, label %sw.epilog

for.body43.lr.ph:                                 ; preds = %for.cond39.preheader
  %16 = load double** %entries28, align 8, !tbaa !0
  %17 = load i32** %indices, align 8, !tbaa !0
  br label %for.body43

for.body32:                                       ; preds = %sw.bb27, %for.body32
  %indvars.iv679 = phi i64 [ %indvars.iv.next680, %for.body32 ], [ 0, %sw.bb27 ]
  %offset.0614 = phi i32 [ %add35, %for.body32 ], [ 0, %sw.bb27 ]
  %arrayidx34 = getelementptr inbounds i32* %14, i64 %indvars.iv679
  %18 = load i32* %arrayidx34, align 4, !tbaa !3
  %add35 = add nsw i32 %18, %offset.0614
  %indvars.iv.next680 = add i64 %indvars.iv679, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next680 to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %icol
  br i1 %exitcond, label %for.cond30.for.cond39.preheader_crit_edge, label %for.body32

for.body43:                                       ; preds = %for.body43.lr.ph, %for.body43
  %indvars.iv677 = phi i64 [ %offset.0.lcssa, %for.body43.lr.ph ], [ %indvars.iv.next678, %for.body43 ]
  %ii.0612 = phi i32 [ 0, %for.body43.lr.ph ], [ %inc63, %for.body43 ]
  %19 = trunc i64 %indvars.iv677 to i32
  %mul44 = shl nsw i32 %19, 1
  %idxprom45 = sext i32 %mul44 to i64
  %arrayidx46 = getelementptr inbounds double* %16, i64 %idxprom45
  %20 = load double* %arrayidx46, align 8, !tbaa !4
  %arrayidx48 = getelementptr inbounds i32* %17, i64 %indvars.iv677
  %21 = load i32* %arrayidx48, align 4, !tbaa !3
  %mul49 = shl nsw i32 %21, 1
  %idxprom50 = sext i32 %mul49 to i64
  %arrayidx51 = getelementptr inbounds double* %call9, i64 %idxprom50
  store double %20, double* %arrayidx51, align 8, !tbaa !4
  %add53601 = or i32 %mul44, 1
  %idxprom54 = sext i32 %add53601 to i64
  %arrayidx55 = getelementptr inbounds double* %16, i64 %idxprom54
  %22 = load double* %arrayidx55, align 8, !tbaa !4
  %add59602 = or i32 %mul49, 1
  %idxprom60 = sext i32 %add59602 to i64
  %arrayidx61 = getelementptr inbounds double* %call9, i64 %idxprom60
  store double %22, double* %arrayidx61, align 8, !tbaa !4
  %inc63 = add nsw i32 %ii.0612, 1
  %indvars.iv.next678 = add i64 %indvars.iv677, 1
  %cmp42 = icmp slt i32 %inc63, %15
  br i1 %cmp42, label %for.body43, label %sw.epilog

sw.bb66:                                          ; preds = %if.end8
  call void @SubMtx_sparseRowsInfo(%struct._SubMtx* %mtx, i32* %nrow72, i32* %nent71, i32** %sizes75, i32** %indices74, double** %entries67) #4
  %23 = load i32* %nrow72, align 4, !tbaa !3
  %cmp77625 = icmp sgt i32 %23, 0
  br i1 %cmp77625, label %for.cond79.preheader.lr.ph, label %sw.epilog

for.cond79.preheader.lr.ph:                       ; preds = %sw.bb66
  %24 = load i32** %sizes75, align 8, !tbaa !0
  %25 = load i32** %indices74, align 8, !tbaa !0
  %26 = load double** %entries67, align 8, !tbaa !0
  br label %for.cond79.preheader

for.cond79.preheader:                             ; preds = %for.cond79.preheader.lr.ph, %for.end106
  %indvars.iv684 = phi i64 [ 0, %for.cond79.preheader.lr.ph ], [ %indvars.iv.next685, %for.end106 ]
  %offset73.0626 = phi i32 [ 0, %for.cond79.preheader.lr.ph ], [ %add109, %for.end106 ]
  %arrayidx81619 = getelementptr inbounds i32* %24, i64 %indvars.iv684
  %27 = load i32* %arrayidx81619, align 4, !tbaa !3
  %cmp82620 = icmp sgt i32 %27, 0
  br i1 %cmp82620, label %for.body83.lr.ph, label %for.end106

for.body83.lr.ph:                                 ; preds = %for.cond79.preheader
  %28 = sext i32 %offset73.0626 to i64
  br label %for.body83

for.body83:                                       ; preds = %for.body83.lr.ph, %for.inc103
  %indvars.iv682 = phi i64 [ %28, %for.body83.lr.ph ], [ %indvars.iv.next683, %for.inc103 ]
  %ii68.0622 = phi i32 [ 0, %for.body83.lr.ph ], [ %inc104, %for.inc103 ]
  %kk70.0621 = phi i32 [ %offset73.0626, %for.body83.lr.ph ], [ %inc105, %for.inc103 ]
  %arrayidx85 = getelementptr inbounds i32* %25, i64 %indvars.iv682
  %29 = load i32* %arrayidx85, align 4, !tbaa !3
  %cmp86 = icmp eq i32 %29, %icol
  br i1 %cmp86, label %if.then87, label %for.inc103

if.then87:                                        ; preds = %for.body83
  %mul88 = shl nsw i32 %kk70.0621, 1
  %idxprom89 = sext i32 %mul88 to i64
  %arrayidx90 = getelementptr inbounds double* %26, i64 %idxprom89
  %30 = load double* %arrayidx90, align 8, !tbaa !4
  %31 = trunc i64 %indvars.iv684 to i32
  %mul91 = shl nsw i32 %31, 1
  %idxprom92 = sext i32 %mul91 to i64
  %arrayidx93 = getelementptr inbounds double* %call9, i64 %idxprom92
  store double %30, double* %arrayidx93, align 8, !tbaa !4
  %add95599 = or i32 %mul88, 1
  %idxprom96 = sext i32 %add95599 to i64
  %arrayidx97 = getelementptr inbounds double* %26, i64 %idxprom96
  %32 = load double* %arrayidx97, align 8, !tbaa !4
  %add99600 = or i32 %mul91, 1
  %idxprom100 = sext i32 %add99600 to i64
  %arrayidx101 = getelementptr inbounds double* %call9, i64 %idxprom100
  store double %32, double* %arrayidx101, align 8, !tbaa !4
  br label %for.end106

for.inc103:                                       ; preds = %for.body83
  %inc104 = add nsw i32 %ii68.0622, 1
  %indvars.iv.next683 = add i64 %indvars.iv682, 1
  %inc105 = add nsw i32 %kk70.0621, 1
  %cmp82 = icmp slt i32 %inc104, %27
  br i1 %cmp82, label %for.body83, label %for.end106

for.end106:                                       ; preds = %for.cond79.preheader, %for.inc103, %if.then87
  %add109 = add nsw i32 %27, %offset73.0626
  %indvars.iv.next685 = add i64 %indvars.iv684, 1
  %33 = trunc i64 %indvars.iv.next685 to i32
  %cmp77 = icmp slt i32 %33, %23
  br i1 %cmp77, label %for.cond79.preheader, label %sw.epilog

sw.bb113:                                         ; preds = %if.end8
  call void @SubMtx_sparseTriplesInfo(%struct._SubMtx* %mtx, i32* %nent116, i32** %rowids, i32** %colids, double** %entries114) #4
  %34 = load i32* %nent116, align 4, !tbaa !3
  %cmp118631 = icmp sgt i32 %34, 0
  br i1 %cmp118631, label %for.body119.lr.ph, label %sw.epilog

for.body119.lr.ph:                                ; preds = %sw.bb113
  %35 = load i32** %colids, align 8, !tbaa !0
  %36 = load double** %entries114, align 8, !tbaa !0
  %37 = load i32** %rowids, align 8, !tbaa !0
  br label %for.body119

for.body119:                                      ; preds = %for.body119.lr.ph, %for.inc143
  %indvars.iv686 = phi i64 [ 0, %for.body119.lr.ph ], [ %indvars.iv.next687, %for.inc143 ]
  %arrayidx121 = getelementptr inbounds i32* %35, i64 %indvars.iv686
  %38 = load i32* %arrayidx121, align 4, !tbaa !3
  %cmp122 = icmp eq i32 %38, %icol
  br i1 %cmp122, label %if.then123, label %for.inc143

if.then123:                                       ; preds = %for.body119
  %39 = trunc i64 %indvars.iv686 to i32
  %mul124 = shl nsw i32 %39, 1
  %idxprom125 = sext i32 %mul124 to i64
  %arrayidx126 = getelementptr inbounds double* %36, i64 %idxprom125
  %40 = load double* %arrayidx126, align 8, !tbaa !4
  %arrayidx128 = getelementptr inbounds i32* %37, i64 %indvars.iv686
  %41 = load i32* %arrayidx128, align 4, !tbaa !3
  %mul129 = shl nsw i32 %41, 1
  %idxprom130 = sext i32 %mul129 to i64
  %arrayidx131 = getelementptr inbounds double* %call9, i64 %idxprom130
  store double %40, double* %arrayidx131, align 8, !tbaa !4
  %add133597 = or i32 %mul124, 1
  %idxprom134 = sext i32 %add133597 to i64
  %arrayidx135 = getelementptr inbounds double* %36, i64 %idxprom134
  %42 = load double* %arrayidx135, align 8, !tbaa !4
  %add139598 = or i32 %mul129, 1
  %idxprom140 = sext i32 %add139598 to i64
  %arrayidx141 = getelementptr inbounds double* %call9, i64 %idxprom140
  store double %42, double* %arrayidx141, align 8, !tbaa !4
  br label %for.inc143

for.inc143:                                       ; preds = %for.body119, %if.then123
  %indvars.iv.next687 = add i64 %indvars.iv686, 1
  %43 = trunc i64 %indvars.iv.next687 to i32
  %cmp118 = icmp slt i32 %43, %34
  br i1 %cmp118, label %for.body119, label %sw.epilog

sw.bb146:                                         ; preds = %if.end8
  call void @SubMtx_denseSubcolumnsInfo(%struct._SubMtx* %mtx, i32* %ncol151, i32* %nent152, i32** %firstlocs, i32** %sizes154, double** %entries147) #4
  %cmp156637 = icmp sgt i32 %icol, 0
  %44 = load i32** %sizes154, align 8, !tbaa !0
  br i1 %cmp156637, label %for.body157, label %for.end163

for.body157:                                      ; preds = %sw.bb146, %for.body157
  %indvars.iv692 = phi i64 [ %indvars.iv.next693, %for.body157 ], [ 0, %sw.bb146 ]
  %offset153.0639 = phi i32 [ %add160, %for.body157 ], [ 0, %sw.bb146 ]
  %arrayidx159 = getelementptr inbounds i32* %44, i64 %indvars.iv692
  %45 = load i32* %arrayidx159, align 4, !tbaa !3
  %add160 = add nsw i32 %45, %offset153.0639
  %indvars.iv.next693 = add i64 %indvars.iv692, 1
  %lftr.wideiv694 = trunc i64 %indvars.iv.next693 to i32
  %exitcond695 = icmp eq i32 %lftr.wideiv694, %icol
  br i1 %exitcond695, label %for.cond155.for.end163_crit_edge, label %for.body157

for.cond155.for.end163_crit_edge:                 ; preds = %for.body157
  %phitmp = sext i32 %add160 to i64
  br label %for.end163

for.end163:                                       ; preds = %sw.bb146, %for.cond155.for.end163_crit_edge
  %offset153.0.lcssa = phi i64 [ %phitmp, %for.cond155.for.end163_crit_edge ], [ 0, %sw.bb146 ]
  %idxprom164 = sext i32 %icol to i64
  %arrayidx165 = getelementptr inbounds i32* %44, i64 %idxprom164
  %46 = load i32* %arrayidx165, align 4, !tbaa !3
  %cmp166 = icmp sgt i32 %46, 0
  br i1 %cmp166, label %if.then167, label %sw.epilog

if.then167:                                       ; preds = %for.end163
  %47 = load i32** %firstlocs, align 8, !tbaa !0
  %arrayidx169 = getelementptr inbounds i32* %47, i64 %idxprom164
  %48 = load i32* %arrayidx169, align 4, !tbaa !3
  %add172 = add i32 %46, -1
  %sub = add i32 %add172, %48
  %cmp174634 = icmp sgt i32 %48, %sub
  br i1 %cmp174634, label %sw.epilog, label %for.body175.lr.ph

for.body175.lr.ph:                                ; preds = %if.then167
  %49 = load double** %entries147, align 8, !tbaa !0
  %50 = sext i32 %48 to i64
  br label %for.body175

for.body175:                                      ; preds = %for.body175, %for.body175.lr.ph
  %indvars.iv690 = phi i64 [ %indvars.iv.next691, %for.body175 ], [ %offset153.0.lcssa, %for.body175.lr.ph ]
  %indvars.iv688 = phi i64 [ %indvars.iv.next689, %for.body175 ], [ %50, %for.body175.lr.ph ]
  %51 = trunc i64 %indvars.iv690 to i32
  %mul176 = shl nsw i32 %51, 1
  %idxprom177 = sext i32 %mul176 to i64
  %arrayidx178 = getelementptr inbounds double* %49, i64 %idxprom177
  %52 = load double* %arrayidx178, align 8, !tbaa !4
  %53 = trunc i64 %indvars.iv688 to i32
  %mul179 = shl nsw i32 %53, 1
  %idxprom180 = sext i32 %mul179 to i64
  %arrayidx181 = getelementptr inbounds double* %call9, i64 %idxprom180
  store double %52, double* %arrayidx181, align 8, !tbaa !4
  %add183595 = or i32 %mul176, 1
  %idxprom184 = sext i32 %add183595 to i64
  %arrayidx185 = getelementptr inbounds double* %49, i64 %idxprom184
  %54 = load double* %arrayidx185, align 8, !tbaa !4
  %add187596 = or i32 %mul179, 1
  %idxprom188 = sext i32 %add187596 to i64
  %arrayidx189 = getelementptr inbounds double* %call9, i64 %idxprom188
  store double %54, double* %arrayidx189, align 8, !tbaa !4
  %indvars.iv.next689 = add i64 %indvars.iv688, 1
  %indvars.iv.next691 = add i64 %indvars.iv690, 1
  %cmp174 = icmp slt i32 %53, %sub
  br i1 %cmp174, label %for.body175, label %sw.epilog

sw.bb195:                                         ; preds = %if.end8
  call void @SubMtx_denseSubrowsInfo(%struct._SubMtx* %mtx, i32* %nrow202, i32* %nent201, i32** %firstlocs204, i32** %sizes205, double** %entries196) #4
  %55 = load i32* %nrow202, align 4, !tbaa !3
  %cmp207642 = icmp sgt i32 %55, 0
  br i1 %cmp207642, label %for.body208.lr.ph, label %sw.epilog

for.body208.lr.ph:                                ; preds = %sw.bb195
  %56 = load i32** %sizes205, align 8, !tbaa !0
  %57 = load i32** %firstlocs204, align 8, !tbaa !0
  %58 = load double** %entries196, align 8, !tbaa !0
  br label %for.body208

for.body208:                                      ; preds = %for.body208.lr.ph, %for.inc243
  %indvars.iv696 = phi i64 [ 0, %for.body208.lr.ph ], [ %indvars.iv.next697, %for.inc243 ]
  %offset203.0644 = phi i32 [ 0, %for.body208.lr.ph ], [ %offset203.1, %for.inc243 ]
  %arrayidx210 = getelementptr inbounds i32* %56, i64 %indvars.iv696
  %59 = load i32* %arrayidx210, align 4, !tbaa !3
  %cmp211 = icmp sgt i32 %59, 0
  br i1 %cmp211, label %if.then212, label %for.inc243

if.then212:                                       ; preds = %for.body208
  %arrayidx214 = getelementptr inbounds i32* %57, i64 %indvars.iv696
  %60 = load i32* %arrayidx214, align 4, !tbaa !3
  %cmp219 = icmp sgt i32 %60, %icol
  br i1 %cmp219, label %if.end238, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then212
  %add217 = add nsw i32 %60, %59
  %cmp220 = icmp sgt i32 %add217, %icol
  br i1 %cmp220, label %if.then221, label %if.end238

if.then221:                                       ; preds = %land.lhs.true
  %add222 = add nsw i32 %offset203.0644, %icol
  %sub223 = sub i32 %add222, %60
  %mul224 = shl nsw i32 %sub223, 1
  %idxprom225 = sext i32 %mul224 to i64
  %arrayidx226 = getelementptr inbounds double* %58, i64 %idxprom225
  %61 = load double* %arrayidx226, align 8, !tbaa !4
  %62 = trunc i64 %indvars.iv696 to i32
  %mul227 = shl nsw i32 %62, 1
  %idxprom228 = sext i32 %mul227 to i64
  %arrayidx229 = getelementptr inbounds double* %call9, i64 %idxprom228
  store double %61, double* %arrayidx229, align 8, !tbaa !4
  %add231593 = or i32 %mul224, 1
  %idxprom232 = sext i32 %add231593 to i64
  %arrayidx233 = getelementptr inbounds double* %58, i64 %idxprom232
  %63 = load double* %arrayidx233, align 8, !tbaa !4
  %add235594 = or i32 %mul227, 1
  %idxprom236 = sext i32 %add235594 to i64
  %arrayidx237 = getelementptr inbounds double* %call9, i64 %idxprom236
  store double %63, double* %arrayidx237, align 8, !tbaa !4
  br label %if.end238

if.end238:                                        ; preds = %if.then212, %if.then221, %land.lhs.true
  %add241 = add nsw i32 %59, %offset203.0644
  br label %for.inc243

for.inc243:                                       ; preds = %for.body208, %if.end238
  %offset203.1 = phi i32 [ %add241, %if.end238 ], [ %offset203.0644, %for.body208 ]
  %indvars.iv.next697 = add i64 %indvars.iv696, 1
  %64 = trunc i64 %indvars.iv.next697 to i32
  %cmp207 = icmp slt i32 %64, %55
  br i1 %cmp207, label %for.body208, label %sw.epilog

sw.bb246:                                         ; preds = %if.end8
  call void @SubMtx_diagonalInfo(%struct._SubMtx* %mtx, i32* %nent248, double** %entries247) #4
  %mul249 = shl nsw i32 %icol, 1
  %idxprom250 = sext i32 %mul249 to i64
  %65 = load double** %entries247, align 8, !tbaa !0
  %arrayidx251 = getelementptr inbounds double* %65, i64 %idxprom250
  %66 = load double* %arrayidx251, align 8, !tbaa !4
  %arrayidx254 = getelementptr inbounds double* %call9, i64 %idxprom250
  store double %66, double* %arrayidx254, align 8, !tbaa !4
  %add256592 = or i32 %mul249, 1
  %idxprom257 = sext i32 %add256592 to i64
  %arrayidx258 = getelementptr inbounds double* %65, i64 %idxprom257
  %67 = load double* %arrayidx258, align 8, !tbaa !4
  %arrayidx262 = getelementptr inbounds double* %call9, i64 %idxprom257
  store double %67, double* %arrayidx262, align 8, !tbaa !4
  br label %sw.epilog

for.body272.lr.ph:                                ; preds = %if.end8
  call void @SubMtx_blockDiagonalInfo(%struct._SubMtx* %mtx, i32* %nrow268, i32* %nent269, i32** %pivotsizes, double** %entries264) #4
  %68 = load i32** %pivotsizes, align 8, !tbaa !0
  %69 = load double** %entries264, align 8, !tbaa !0
  %70 = add i32 %icol, -1
  br label %for.body272

for.body272:                                      ; preds = %if.end329.thread, %for.body272.lr.ph, %if.end329
  %indvars.iv706 = phi i64 [ 0, %for.body272.lr.ph ], [ %indvars.iv.next707, %if.end329 ], [ %indvars.iv.next707721, %if.end329.thread ]
  %kk267.0660 = phi i32 [ 0, %for.body272.lr.ph ], [ %kk267.3, %if.end329 ], [ %add328, %if.end329.thread ]
  %jcol266.0659 = phi i32 [ 0, %for.body272.lr.ph ], [ %add277, %if.end329 ], [ %add277, %if.end329.thread ]
  %arrayidx274 = getelementptr inbounds i32* %68, i64 %indvars.iv706
  %71 = load i32* %arrayidx274, align 4, !tbaa !3
  %add277 = add nsw i32 %71, %jcol266.0659
  %cmp278 = icmp sgt i32 %add277, %icol
  br i1 %cmp278, label %if.then279, label %if.end329.thread

if.then279:                                       ; preds = %for.body272
  %sub281 = sub i32 %icol, %jcol266.0659
  %add282 = add nsw i32 %sub281, %kk267.0660
  %cmp284646 = icmp sgt i32 %jcol266.0659, %icol
  br i1 %cmp284646, label %for.cond304.loopexit, label %for.body285.lr.ph

for.body285.lr.ph:                                ; preds = %if.then279
  %72 = sext i32 %71 to i64
  %73 = sext i32 %jcol266.0659 to i64
  %74 = add i32 %70, %kk267.0660
  %75 = add i32 %74, %71
  %76 = add i32 %71, -2
  %77 = mul i32 %sub281, %76
  %78 = add i32 %75, %77
  %79 = zext i32 %sub281 to i33
  %80 = sub i32 %70, %jcol266.0659
  %81 = zext i32 %80 to i33
  %82 = mul i33 %79, %81
  %83 = lshr i33 %82, 1
  %84 = trunc i33 %83 to i32
  br label %for.body285

for.body285:                                      ; preds = %for.body285, %for.body285.lr.ph
  %indvars.iv700 = phi i64 [ %indvars.iv.next701, %for.body285 ], [ %73, %for.body285.lr.ph ]
  %indvars.iv698 = phi i64 [ %indvars.iv.next699, %for.body285 ], [ %72, %for.body285.lr.ph ]
  %kk267.1648 = phi i32 [ %add300, %for.body285 ], [ %add282, %for.body285.lr.ph ]
  %indvars.iv.next699 = add i64 %indvars.iv698, -1
  %mul286 = shl nsw i32 %kk267.1648, 1
  %idxprom287 = sext i32 %mul286 to i64
  %arrayidx288 = getelementptr inbounds double* %69, i64 %idxprom287
  %85 = load double* %arrayidx288, align 8, !tbaa !4
  %86 = trunc i64 %indvars.iv700 to i32
  %mul289 = shl nsw i32 %86, 1
  %idxprom290 = sext i32 %mul289 to i64
  %arrayidx291 = getelementptr inbounds double* %call9, i64 %idxprom290
  store double %85, double* %arrayidx291, align 8, !tbaa !4
  %add293590 = or i32 %mul286, 1
  %idxprom294 = sext i32 %add293590 to i64
  %arrayidx295 = getelementptr inbounds double* %69, i64 %idxprom294
  %87 = load double* %arrayidx295, align 8, !tbaa !4
  %add297591 = or i32 %mul289, 1
  %idxprom298 = sext i32 %add297591 to i64
  %arrayidx299 = getelementptr inbounds double* %call9, i64 %idxprom298
  store double %87, double* %arrayidx299, align 8, !tbaa !4
  %88 = trunc i64 %indvars.iv.next699 to i32
  %add300 = add nsw i32 %88, %kk267.1648
  %indvars.iv.next701 = add i64 %indvars.iv700, 1
  %cmp284 = icmp slt i32 %86, %icol
  br i1 %cmp284, label %for.body285, label %for.cond283.for.cond304.loopexit_crit_edge

for.cond283.for.cond304.loopexit_crit_edge:       ; preds = %for.body285
  %89 = add i32 %icol, 1
  %90 = sub i32 %78, %jcol266.0659
  %91 = sub i32 %90, %84
  br label %for.cond304.loopexit

for.cond304.loopexit:                             ; preds = %for.cond283.for.cond304.loopexit_crit_edge, %if.then279
  %kk267.1.lcssa = phi i32 [ %91, %for.cond283.for.cond304.loopexit_crit_edge ], [ %add282, %if.then279 ]
  %ii265.0.lcssa = phi i32 [ %89, %for.cond283.for.cond304.loopexit_crit_edge ], [ %jcol266.0659, %if.then279 ]
  %cmp306652 = icmp slt i32 %ii265.0.lcssa, %add277
  br i1 %cmp306652, label %for.body307.lr.ph, label %if.end329

for.body307.lr.ph:                                ; preds = %for.cond304.loopexit
  %92 = sext i32 %kk267.1.lcssa to i64
  %93 = sext i32 %ii265.0.lcssa to i64
  %94 = add i32 %jcol266.0659, %kk267.1.lcssa
  %95 = add i32 %94, %71
  br label %for.body307

for.body307:                                      ; preds = %for.body307.lr.ph, %for.body307
  %indvars.iv704 = phi i64 [ %93, %for.body307.lr.ph ], [ %indvars.iv.next705, %for.body307 ]
  %indvars.iv702 = phi i64 [ %92, %for.body307.lr.ph ], [ %indvars.iv.next703, %for.body307 ]
  %96 = trunc i64 %indvars.iv702 to i32
  %mul308 = shl nsw i32 %96, 1
  %idxprom309 = sext i32 %mul308 to i64
  %arrayidx310 = getelementptr inbounds double* %69, i64 %idxprom309
  %97 = load double* %arrayidx310, align 8, !tbaa !4
  %98 = trunc i64 %indvars.iv704 to i32
  %mul311 = shl nsw i32 %98, 1
  %idxprom312 = sext i32 %mul311 to i64
  %arrayidx313 = getelementptr inbounds double* %call9, i64 %idxprom312
  store double %97, double* %arrayidx313, align 8, !tbaa !4
  %add315588 = or i32 %mul308, 1
  %idxprom316 = sext i32 %add315588 to i64
  %arrayidx317 = getelementptr inbounds double* %69, i64 %idxprom316
  %99 = load double* %arrayidx317, align 8, !tbaa !4
  %add319589 = or i32 %mul311, 1
  %idxprom320 = sext i32 %add319589 to i64
  %arrayidx321 = getelementptr inbounds double* %call9, i64 %idxprom320
  store double %99, double* %arrayidx321, align 8, !tbaa !4
  %indvars.iv.next703 = add i64 %indvars.iv702, 1
  %indvars.iv.next705 = add i64 %indvars.iv704, 1
  %100 = trunc i64 %indvars.iv.next705 to i32
  %cmp306 = icmp slt i32 %100, %add277
  br i1 %cmp306, label %for.body307, label %for.cond304.if.end329.loopexit_crit_edge

if.end329.thread:                                 ; preds = %for.body272
  %add326 = add nsw i32 %71, 1
  %mul327 = mul nsw i32 %add326, %71
  %div = sdiv i32 %mul327, 2
  %add328 = add nsw i32 %div, %kk267.0660
  %indvars.iv.next707721 = add i64 %indvars.iv706, 1
  br label %for.body272

for.cond304.if.end329.loopexit_crit_edge:         ; preds = %for.body307
  %101 = sub i32 %95, %ii265.0.lcssa
  br label %if.end329

if.end329:                                        ; preds = %for.cond304.loopexit, %for.cond304.if.end329.loopexit_crit_edge
  %kk267.3 = phi i32 [ %101, %for.cond304.if.end329.loopexit_crit_edge ], [ %kk267.1.lcssa, %for.cond304.loopexit ]
  %indvars.iv.next707 = add i64 %indvars.iv706, 1
  br i1 %cmp278, label %sw.epilog, label %for.body272

for.body347.lr.ph:                                ; preds = %if.end8
  call void @SubMtx_blockDiagonalInfo(%struct._SubMtx* %mtx, i32* %nrow341, i32* %nent342, i32** %pivotsizes344, double** %entries335) #4
  %102 = load i32** %pivotsizes344, align 8, !tbaa !0
  %103 = load double** %entries335, align 8, !tbaa !0
  %104 = add i32 %icol, -1
  br label %for.body347

for.body347:                                      ; preds = %if.end408.thread, %for.body347.lr.ph, %if.end408
  %indvars.iv717 = phi i64 [ 0, %for.body347.lr.ph ], [ %indvars.iv.next718, %if.end408 ], [ %indvars.iv.next718722, %if.end408.thread ]
  %kk339.0676 = phi i32 [ 0, %for.body347.lr.ph ], [ %kk339.3, %if.end408 ], [ %add407, %if.end408.thread ]
  %jcol338.0675 = phi i32 [ 0, %for.body347.lr.ph ], [ %add352, %if.end408 ], [ %add352, %if.end408.thread ]
  %arrayidx349 = getelementptr inbounds i32* %102, i64 %indvars.iv717
  %105 = load i32* %arrayidx349, align 4, !tbaa !3
  %add352 = add nsw i32 %105, %jcol338.0675
  %cmp353 = icmp sgt i32 %add352, %icol
  br i1 %cmp353, label %if.then354, label %if.end408.thread

if.then354:                                       ; preds = %for.body347
  %sub356 = sub i32 %icol, %jcol338.0675
  %add357 = add nsw i32 %sub356, %kk339.0676
  %cmp359662 = icmp sgt i32 %jcol338.0675, %icol
  br i1 %cmp359662, label %for.cond380.loopexit, label %for.body360.lr.ph

for.body360.lr.ph:                                ; preds = %if.then354
  %106 = sext i32 %105 to i64
  %107 = sext i32 %jcol338.0675 to i64
  %108 = add i32 %104, %kk339.0676
  %109 = add i32 %108, %105
  %110 = add i32 %105, -2
  %111 = mul i32 %sub356, %110
  %112 = add i32 %109, %111
  %113 = zext i32 %sub356 to i33
  %114 = sub i32 %104, %jcol338.0675
  %115 = zext i32 %114 to i33
  %116 = mul i33 %113, %115
  %117 = lshr i33 %116, 1
  %118 = trunc i33 %117 to i32
  br label %for.body360

for.body360:                                      ; preds = %for.body360, %for.body360.lr.ph
  %indvars.iv710 = phi i64 [ %indvars.iv.next711, %for.body360 ], [ %107, %for.body360.lr.ph ]
  %indvars.iv708 = phi i64 [ %indvars.iv.next709, %for.body360 ], [ %106, %for.body360.lr.ph ]
  %kk339.1664 = phi i32 [ %add376, %for.body360 ], [ %add357, %for.body360.lr.ph ]
  %indvars.iv.next709 = add i64 %indvars.iv708, -1
  %mul361 = shl nsw i32 %kk339.1664, 1
  %idxprom362 = sext i32 %mul361 to i64
  %arrayidx363 = getelementptr inbounds double* %103, i64 %idxprom362
  %119 = load double* %arrayidx363, align 8, !tbaa !4
  %120 = trunc i64 %indvars.iv710 to i32
  %mul364 = shl nsw i32 %120, 1
  %idxprom365 = sext i32 %mul364 to i64
  %arrayidx366 = getelementptr inbounds double* %call9, i64 %idxprom365
  store double %119, double* %arrayidx366, align 8, !tbaa !4
  %add368586 = or i32 %mul361, 1
  %idxprom369 = sext i32 %add368586 to i64
  %arrayidx370 = getelementptr inbounds double* %103, i64 %idxprom369
  %121 = load double* %arrayidx370, align 8, !tbaa !4
  %add372587 = or i32 %mul364, 1
  %idxprom373 = sext i32 %add372587 to i64
  %arrayidx374 = getelementptr inbounds double* %call9, i64 %idxprom373
  store double %121, double* %arrayidx374, align 8, !tbaa !4
  %122 = trunc i64 %indvars.iv.next709 to i32
  %add376 = add nsw i32 %122, %kk339.1664
  %indvars.iv.next711 = add i64 %indvars.iv710, 1
  %cmp359 = icmp slt i32 %120, %icol
  br i1 %cmp359, label %for.body360, label %for.cond358.for.cond380.loopexit_crit_edge

for.cond358.for.cond380.loopexit_crit_edge:       ; preds = %for.body360
  %123 = add i32 %icol, 1
  %124 = sub i32 %112, %jcol338.0675
  %125 = sub i32 %124, %118
  br label %for.cond380.loopexit

for.cond380.loopexit:                             ; preds = %for.cond358.for.cond380.loopexit_crit_edge, %if.then354
  %kk339.1.lcssa = phi i32 [ %125, %for.cond358.for.cond380.loopexit_crit_edge ], [ %add357, %if.then354 ]
  %ii336.0.lcssa = phi i32 [ %123, %for.cond358.for.cond380.loopexit_crit_edge ], [ %jcol338.0675, %if.then354 ]
  %cmp382668 = icmp slt i32 %ii336.0.lcssa, %add352
  br i1 %cmp382668, label %for.body383.lr.ph, label %if.end408

for.body383.lr.ph:                                ; preds = %for.cond380.loopexit
  %126 = sext i32 %kk339.1.lcssa to i64
  %127 = sext i32 %ii336.0.lcssa to i64
  %128 = add i32 %jcol338.0675, %kk339.1.lcssa
  %129 = add i32 %128, %105
  br label %for.body383

for.body383:                                      ; preds = %for.body383.lr.ph, %for.body383
  %indvars.iv715 = phi i64 [ %127, %for.body383.lr.ph ], [ %indvars.iv.next716, %for.body383 ]
  %indvars.iv713 = phi i64 [ %126, %for.body383.lr.ph ], [ %indvars.iv.next714, %for.body383 ]
  %130 = trunc i64 %indvars.iv713 to i32
  %mul384 = shl nsw i32 %130, 1
  %idxprom385 = sext i32 %mul384 to i64
  %arrayidx386 = getelementptr inbounds double* %103, i64 %idxprom385
  %131 = load double* %arrayidx386, align 8, !tbaa !4
  %132 = trunc i64 %indvars.iv715 to i32
  %mul387 = shl nsw i32 %132, 1
  %idxprom388 = sext i32 %mul387 to i64
  %arrayidx389 = getelementptr inbounds double* %call9, i64 %idxprom388
  store double %131, double* %arrayidx389, align 8, !tbaa !4
  %add391584 = or i32 %mul384, 1
  %idxprom392 = sext i32 %add391584 to i64
  %arrayidx393 = getelementptr inbounds double* %103, i64 %idxprom392
  %133 = load double* %arrayidx393, align 8, !tbaa !4
  %sub394 = fsub double -0.000000e+00, %133
  %add396585 = or i32 %mul387, 1
  %idxprom397 = sext i32 %add396585 to i64
  %arrayidx398 = getelementptr inbounds double* %call9, i64 %idxprom397
  store double %sub394, double* %arrayidx398, align 8, !tbaa !4
  %indvars.iv.next714 = add i64 %indvars.iv713, 1
  %indvars.iv.next716 = add i64 %indvars.iv715, 1
  %134 = trunc i64 %indvars.iv.next716 to i32
  %cmp382 = icmp slt i32 %134, %add352
  br i1 %cmp382, label %for.body383, label %for.cond380.if.end408.loopexit_crit_edge

if.end408.thread:                                 ; preds = %for.body347
  %add404 = add nsw i32 %105, 1
  %mul405 = mul nsw i32 %add404, %105
  %div406 = sdiv i32 %mul405, 2
  %add407 = add nsw i32 %div406, %kk339.0676
  %indvars.iv.next718722 = add i64 %indvars.iv717, 1
  br label %for.body347

for.cond380.if.end408.loopexit_crit_edge:         ; preds = %for.body383
  %135 = sub i32 %129, %ii336.0.lcssa
  br label %if.end408

if.end408:                                        ; preds = %for.cond380.loopexit, %for.cond380.if.end408.loopexit_crit_edge
  %kk339.3 = phi i32 [ %135, %for.cond380.if.end408.loopexit_crit_edge ], [ %kk339.1.lcssa, %for.cond380.loopexit ]
  %indvars.iv.next718 = add i64 %indvars.iv717, 1
  br i1 %cmp353, label %sw.epilog, label %for.body347

sw.epilog:                                        ; preds = %if.end408, %if.end329, %sw.bb195, %for.inc243, %if.then167, %for.body175, %sw.bb113, %for.inc143, %sw.bb66, %for.end106, %for.cond39.preheader, %for.body43, %sw.bb, %for.body, %if.end8, %for.end163, %sw.bb246
  ret void
}

; Function Attrs: nounwind optsize uwtable
define double @SubMtx_maxabs(%struct._SubMtx* %mtx) #0 {
entry:
  %entries = alloca double*, align 8
  %loc = alloca i32, align 4
  %nent = alloca i32, align 4
  %inc1 = alloca i32, align 4
  %inc2 = alloca i32, align 4
  %ncol = alloca i32, align 4
  %nrow = alloca i32, align 4
  %ncol9 = alloca i32, align 4
  %indices = alloca i32*, align 8
  %sizes = alloca i32*, align 8
  %nrow11 = alloca i32, align 4
  %indices12 = alloca i32*, align 8
  %sizes13 = alloca i32*, align 8
  %colids = alloca i32*, align 8
  %rowids = alloca i32*, align 8
  %ncol16 = alloca i32, align 4
  %firstlocs = alloca i32*, align 8
  %sizes17 = alloca i32*, align 8
  %nrow19 = alloca i32, align 4
  %firstlocs20 = alloca i32*, align 8
  %sizes21 = alloca i32*, align 8
  %nrow24 = alloca i32, align 4
  %pivotsizes = alloca i32*, align 8
  %nrow26 = alloca i32, align 4
  %pivotsizes27 = alloca i32*, align 8
  %cmp = icmp eq %struct._SubMtx* %mtx, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([47 x i8]* @.str8, i64 0, i64 0), %struct._SubMtx* null) #4
  call void @exit(i32 -1) #5
  unreachable

if.end:                                           ; preds = %entry
  %type = getelementptr inbounds %struct._SubMtx* %mtx, i64 0, i32 0
  %1 = load i32* %type, align 4, !tbaa !3
  %.off = add i32 %1, -1
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %if.end7, label %if.then4

if.then4:                                         ; preds = %if.end
  %2 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call6 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([90 x i8]* @.str9, i64 0, i64 0), %struct._SubMtx* %mtx, i32 %1) #4
  call void @exit(i32 -1) #5
  unreachable

if.end7:                                          ; preds = %if.end
  %mode = getelementptr inbounds %struct._SubMtx* %mtx, i64 0, i32 1
  %3 = load i32* %mode, align 4, !tbaa !3
  switch i32 %3, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb
    i32 3, label %sw.bb8
    i32 2, label %sw.bb10
    i32 4, label %sw.bb14
    i32 6, label %sw.bb15
    i32 5, label %sw.bb18
    i32 7, label %sw.bb22
    i32 8, label %sw.bb23
    i32 9, label %sw.bb25
  ]

sw.bb:                                            ; preds = %if.end7, %if.end7
  call void @SubMtx_denseInfo(%struct._SubMtx* %mtx, i32* %nrow, i32* %ncol, i32* %inc1, i32* %inc2, double** %entries) #4
  %4 = load i32* %nrow, align 4, !tbaa !3
  %5 = load i32* %ncol, align 4, !tbaa !3
  %mul = mul nsw i32 %5, %4
  store i32 %mul, i32* %nent, align 4, !tbaa !3
  br label %sw.epilog

sw.bb8:                                           ; preds = %if.end7
  call void @SubMtx_sparseColumnsInfo(%struct._SubMtx* %mtx, i32* %ncol9, i32* %nent, i32** %sizes, i32** %indices, double** %entries) #4
  br label %sw.epilog

sw.bb10:                                          ; preds = %if.end7
  call void @SubMtx_sparseRowsInfo(%struct._SubMtx* %mtx, i32* %nrow11, i32* %nent, i32** %sizes13, i32** %indices12, double** %entries) #4
  br label %sw.epilog

sw.bb14:                                          ; preds = %if.end7
  call void @SubMtx_sparseTriplesInfo(%struct._SubMtx* %mtx, i32* %nent, i32** %rowids, i32** %colids, double** %entries) #4
  br label %sw.epilog

sw.bb15:                                          ; preds = %if.end7
  call void @SubMtx_denseSubcolumnsInfo(%struct._SubMtx* %mtx, i32* %ncol16, i32* %nent, i32** %firstlocs, i32** %sizes17, double** %entries) #4
  br label %sw.epilog

sw.bb18:                                          ; preds = %if.end7
  call void @SubMtx_denseSubrowsInfo(%struct._SubMtx* %mtx, i32* %nrow19, i32* %nent, i32** %firstlocs20, i32** %sizes21, double** %entries) #4
  br label %sw.epilog

sw.bb22:                                          ; preds = %if.end7
  call void @SubMtx_diagonalInfo(%struct._SubMtx* %mtx, i32* %nent, double** %entries) #4
  br label %sw.epilog

sw.bb23:                                          ; preds = %if.end7
  call void @SubMtx_blockDiagonalInfo(%struct._SubMtx* %mtx, i32* %nrow24, i32* %nent, i32** %pivotsizes, double** %entries) #4
  br label %sw.epilog

sw.bb25:                                          ; preds = %if.end7
  call void @SubMtx_blockDiagonalInfo(%struct._SubMtx* %mtx, i32* %nrow26, i32* %nent, i32** %pivotsizes27, double** %entries) #4
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end7, %sw.bb25, %sw.bb23, %sw.bb22, %sw.bb18, %sw.bb15, %sw.bb14, %sw.bb10, %sw.bb8, %sw.bb
  %6 = load i32* %type, align 4, !tbaa !3
  switch i32 %6, label %if.end37 [
    i32 1, label %if.then30
    i32 2, label %if.then34
  ]

if.then30:                                        ; preds = %sw.epilog
  %7 = load i32* %nent, align 4, !tbaa !3
  %8 = load double** %entries, align 8, !tbaa !0
  %call31 = call double @DVmaxabs(i32 %7, double* %8, i32* %loc) #4
  br label %if.end37

if.then34:                                        ; preds = %sw.epilog
  %9 = load i32* %nent, align 4, !tbaa !3
  %10 = load double** %entries, align 8, !tbaa !0
  %call35 = call double @ZVmaxabs(i32 %9, double* %10) #4
  br label %if.end37

if.end37:                                         ; preds = %sw.epilog, %if.then34, %if.then30
  %maxabs.0 = phi double [ %call31, %if.then30 ], [ %call35, %if.then34 ], [ undef, %sw.epilog ]
  ret double %maxabs.0
}

; Function Attrs: optsize
declare double @DVmaxabs(i32, double*, i32*) #3

; Function Attrs: optsize
declare double @ZVmaxabs(i32, double*) #3

; Function Attrs: nounwind optsize uwtable
define void @SubMtx_zero(%struct._SubMtx* %mtx) #0 {
entry:
  %cmp = icmp eq %struct._SubMtx* %mtx, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([45 x i8]* @.str10, i64 0, i64 0), %struct._SubMtx* null) #4
  tail call void @exit(i32 -1) #5
  unreachable

if.end:                                           ; preds = %entry
  %type = getelementptr inbounds %struct._SubMtx* %mtx, i64 0, i32 0
  %1 = load i32* %type, align 4, !tbaa !3
  switch i32 %1, label %if.end9 [
    i32 1, label %if.then2
    i32 2, label %if.then5
  ]

if.then2:                                         ; preds = %if.end
  %nent = getelementptr inbounds %struct._SubMtx* %mtx, i64 0, i32 6
  %2 = load i32* %nent, align 4, !tbaa !3
  %entries = getelementptr inbounds %struct._SubMtx* %mtx, i64 0, i32 7
  %3 = load double** %entries, align 8, !tbaa !0
  tail call void @DVzero(i32 %2, double* %3) #4
  br label %if.end9

if.then5:                                         ; preds = %if.end
  %nent6 = getelementptr inbounds %struct._SubMtx* %mtx, i64 0, i32 6
  %4 = load i32* %nent6, align 4, !tbaa !3
  %mul = shl nsw i32 %4, 1
  %entries7 = getelementptr inbounds %struct._SubMtx* %mtx, i64 0, i32 7
  %5 = load double** %entries7, align 8, !tbaa !0
  tail call void @DVzero(i32 %mul, double* %5) #4
  br label %if.end9

if.end9:                                          ; preds = %if.end, %if.then5, %if.then2
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
!4 = metadata !{metadata !"double", metadata !1}
