; ModuleID = '../../SPEC/benchspec/CPU2006/401.bzip2/src/blocksort.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.EState = type { %struct.bz_stream*, i32, i32, i32, i32*, i32*, i32*, i32, i32*, i8*, i16*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [256 x i8], [256 x i8], i32, i32, i32, i32, i32, i32, i32, i32, [258 x i32], [18002 x i8], [18002 x i8], [6 x [258 x i8]], [6 x [258 x i32]], [6 x [258 x i32]], [258 x [4 x i32]] }
%struct.bz_stream = type { i8*, i32, i32, i32, i8*, i32, i32, i32, i8*, i8* (i8*, i32, i32)*, void (i8*, i8*)*, i8* }

@stderr = external global %struct._IO_FILE*
@.str = private unnamed_addr constant [38 x i8] c"      %d work, %d block, ratio %5.2f\0A\00", align 1
@.str1 = private unnamed_addr constant [54 x i8] c"    too repetitive; using fallback sorting algorithm\0A\00", align 1
@.str2 = private unnamed_addr constant [34 x i8] c"        main sort initialise ...\0A\00", align 1
@.str3 = private unnamed_addr constant [28 x i8] c"        bucket sorting ...\0A\00", align 1
@.str4 = private unnamed_addr constant [48 x i8] c"        qsort [0x%x, 0x%x]   done %d   this %d\0A\00", align 1
@.str5 = private unnamed_addr constant [44 x i8] c"        %d pointers, %d sorted, %d scanned\0A\00", align 1
@incs = internal unnamed_addr constant [14 x i32] [i32 1, i32 4, i32 13, i32 40, i32 121, i32 364, i32 1093, i32 3280, i32 9841, i32 29524, i32 88573, i32 265720, i32 797161, i32 2391484], align 16
@.str6 = private unnamed_addr constant [23 x i8] c"        depth %6d has \00", align 1
@.str7 = private unnamed_addr constant [24 x i8] c"%6d unresolved strings\0A\00", align 1
@.str8 = private unnamed_addr constant [34 x i8] c"        reconstructing block ...\0A\00", align 1

; Function Attrs: nounwind optsize uwtable
define void @BZ2_blockSort(%struct.EState* nocapture %s) #0 {
entry:
  %stackLo.i.i = alloca [100 x i32], align 16
  %stackHi.i.i = alloca [100 x i32], align 16
  %stackD.i.i = alloca [100 x i32], align 16
  %runningOrder.i = alloca [256 x i32], align 16
  %bigDone.i = alloca [256 x i8], align 16
  %copyStart.i = alloca [256 x i32], align 16
  %copyEnd.i = alloca [256 x i32], align 16
  %budget = alloca i32, align 4
  %ptr1 = getelementptr inbounds %struct.EState* %s, i64 0, i32 8
  %0 = load i32** %ptr1, align 8, !tbaa !0
  %block2 = getelementptr inbounds %struct.EState* %s, i64 0, i32 9
  %1 = load i8** %block2, align 8, !tbaa !0
  %ftab3 = getelementptr inbounds %struct.EState* %s, i64 0, i32 6
  %2 = load i32** %ftab3, align 8, !tbaa !0
  %nblock4 = getelementptr inbounds %struct.EState* %s, i64 0, i32 17
  %3 = load i32* %nblock4, align 4, !tbaa !3
  %verbosity = getelementptr inbounds %struct.EState* %s, i64 0, i32 28
  %4 = load i32* %verbosity, align 4, !tbaa !3
  %workFactor = getelementptr inbounds %struct.EState* %s, i64 0, i32 12
  %5 = load i32* %workFactor, align 4, !tbaa !3
  %cmp = icmp slt i32 %3, 10000
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %arr1 = getelementptr inbounds %struct.EState* %s, i64 0, i32 4
  %6 = load i32** %arr1, align 8, !tbaa !0
  %arr2 = getelementptr inbounds %struct.EState* %s, i64 0, i32 5
  %7 = load i32** %arr2, align 8, !tbaa !0
  call fastcc void @fallbackSort(i32* %6, i32* %7, i32* %2, i32 %3, i32 %4) #4
  br label %if.end33

if.else:                                          ; preds = %entry
  %add = add nsw i32 %3, 34
  %and = and i32 %add, 1
  %tobool = icmp eq i32 %and, 0
  %inc = add nsw i32 %3, 35
  %add.inc = select i1 %tobool, i32 %add, i32 %inc
  %idxprom = sext i32 %add.inc to i64
  %arrayidx = getelementptr inbounds i8* %1, i64 %idxprom
  %8 = bitcast i8* %arrayidx to i16*
  %cmp6 = icmp slt i32 %5, 1
  %wfact.0 = select i1 %cmp6, i32 1, i32 %5
  %cmp9 = icmp sgt i32 %wfact.0, 100
  %wfact.0.op = add i32 %wfact.0, -1
  %wfact.0.op.op = sdiv i32 %wfact.0.op, 3
  %div = select i1 %cmp9, i32 33, i32 %wfact.0.op.op
  %mul = mul nsw i32 %div, %3
  store i32 %mul, i32* %budget, align 4, !tbaa !3
  %bigDone925.i = getelementptr inbounds [256 x i8]* %bigDone.i, i64 0, i64 0
  %9 = bitcast [256 x i32]* %runningOrder.i to i8*
  call void @llvm.lifetime.start(i64 1024, i8* %9) #3
  call void @llvm.lifetime.start(i64 256, i8* %bigDone925.i) #3
  %10 = bitcast [256 x i32]* %copyStart.i to i8*
  call void @llvm.lifetime.start(i64 1024, i8* %10) #3
  %11 = bitcast [256 x i32]* %copyEnd.i to i8*
  call void @llvm.lifetime.start(i64 1024, i8* %11) #3
  %cmp.i = icmp sgt i32 %4, 3
  br i1 %cmp.i, label %if.then.i, label %for.body.i

if.then.i:                                        ; preds = %if.else
  %12 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %13 = call i64 @fwrite(i8* getelementptr inbounds ([34 x i8]* @.str2, i64 0, i64 0), i64 33, i64 1, %struct._IO_FILE* %12) #3
  br label %for.body.i

for.body.i:                                       ; preds = %if.then.i, %if.else, %for.body.i
  %indvars.iv953.i = phi i64 [ %indvars.iv.next954.i, %for.body.i ], [ 65536, %if.else ], [ 65536, %if.then.i ]
  %arrayidx.i = getelementptr inbounds i32* %2, i64 %indvars.iv953.i
  store i32 0, i32* %arrayidx.i, align 4, !tbaa !3
  %indvars.iv.next954.i = add i64 %indvars.iv953.i, -1
  %14 = trunc i64 %indvars.iv953.i to i32
  %cmp1.i = icmp sgt i32 %14, 0
  br i1 %cmp1.i, label %for.body.i, label %for.end.i

for.end.i:                                        ; preds = %for.body.i
  %15 = load i8* %1, align 1, !tbaa !1
  %conv.i = zext i8 %15 to i32
  %shl.i = shl nuw nsw i32 %conv.i, 8
  %sub.i = add i32 %3, -1
  %cmp4853.i = icmp sgt i32 %sub.i, 2
  br i1 %cmp4853.i, label %for.body6.lr.ph.i, label %for.cond61.preheader.i

for.body6.lr.ph.i:                                ; preds = %for.end.i
  %16 = sext i32 %sub.i to i64
  %17 = add i32 %3, -4
  br label %for.body6.i

for.cond3.for.cond61.preheader_crit_edge.i:       ; preds = %for.body6.i
  %18 = and i32 %17, -4
  %19 = add i32 %3, -5
  %20 = sub i32 %19, %18
  br label %for.cond61.preheader.i

for.cond61.preheader.i:                           ; preds = %for.cond3.for.cond61.preheader_crit_edge.i, %for.end.i
  %i.1.lcssa.i = phi i32 [ %20, %for.cond3.for.cond61.preheader_crit_edge.i ], [ %sub.i, %for.end.i ]
  %j.0.lcssa.i = phi i32 [ %or54.i, %for.cond3.for.cond61.preheader_crit_edge.i ], [ %shl.i, %for.end.i ]
  %cmp62850.i = icmp sgt i32 %i.1.lcssa.i, -1
  br i1 %cmp62850.i, label %for.body64.lr.ph.i, label %for.cond80.preheader.i

for.body64.lr.ph.i:                               ; preds = %for.cond61.preheader.i
  %21 = sext i32 %i.1.lcssa.i to i64
  br label %for.body64.i

for.body6.i:                                      ; preds = %for.body6.i, %for.body6.lr.ph.i
  %indvars.iv947.i = phi i64 [ %16, %for.body6.lr.ph.i ], [ %indvars.iv.next948.i, %for.body6.i ]
  %i.1855.i = phi i32 [ %sub.i, %for.body6.lr.ph.i ], [ %sub59.i, %for.body6.i ]
  %j.0854.i = phi i32 [ %shl.i, %for.body6.lr.ph.i ], [ %or54.i, %for.body6.i ]
  %arrayidx8.i = getelementptr inbounds i16* %8, i64 %indvars.iv947.i
  store i16 0, i16* %arrayidx8.i, align 2, !tbaa !4
  %shr.i = ashr i32 %j.0854.i, 8
  %arrayidx10.i = getelementptr inbounds i8* %1, i64 %indvars.iv947.i
  %22 = load i8* %arrayidx10.i, align 1, !tbaa !1
  %conv12.i = zext i8 %22 to i32
  %shl13.i = shl nuw nsw i32 %conv12.i, 8
  %or.i = or i32 %shl13.i, %shr.i
  %idxprom14.i = sext i32 %or.i to i64
  %arrayidx15.i = getelementptr inbounds i32* %2, i64 %idxprom14.i
  %23 = load i32* %arrayidx15.i, align 4, !tbaa !3
  %inc.i = add i32 %23, 1
  store i32 %inc.i, i32* %arrayidx15.i, align 4, !tbaa !3
  %24 = add nsw i64 %indvars.iv947.i, -1
  %arrayidx18.i = getelementptr inbounds i16* %8, i64 %24
  store i16 0, i16* %arrayidx18.i, align 2, !tbaa !4
  %shr19.i = ashr i32 %or.i, 8
  %arrayidx22.i = getelementptr inbounds i8* %1, i64 %24
  %25 = load i8* %arrayidx22.i, align 1, !tbaa !1
  %conv24.i = zext i8 %25 to i32
  %shl25.i = shl nuw nsw i32 %conv24.i, 8
  %or26.i = or i32 %shr19.i, %shl25.i
  %idxprom27.i = sext i32 %or26.i to i64
  %arrayidx28.i = getelementptr inbounds i32* %2, i64 %idxprom27.i
  %26 = load i32* %arrayidx28.i, align 4, !tbaa !3
  %inc29.i = add i32 %26, 1
  store i32 %inc29.i, i32* %arrayidx28.i, align 4, !tbaa !3
  %27 = add nsw i64 %indvars.iv947.i, -2
  %arrayidx32.i = getelementptr inbounds i16* %8, i64 %27
  store i16 0, i16* %arrayidx32.i, align 2, !tbaa !4
  %shr33.i = ashr i32 %or26.i, 8
  %arrayidx36.i = getelementptr inbounds i8* %1, i64 %27
  %28 = load i8* %arrayidx36.i, align 1, !tbaa !1
  %conv38.i = zext i8 %28 to i32
  %shl39.i = shl nuw nsw i32 %conv38.i, 8
  %or40.i = or i32 %shr33.i, %shl39.i
  %idxprom41.i = sext i32 %or40.i to i64
  %arrayidx42.i = getelementptr inbounds i32* %2, i64 %idxprom41.i
  %29 = load i32* %arrayidx42.i, align 4, !tbaa !3
  %inc43.i = add i32 %29, 1
  store i32 %inc43.i, i32* %arrayidx42.i, align 4, !tbaa !3
  %30 = add nsw i64 %indvars.iv947.i, -3
  %arrayidx46.i = getelementptr inbounds i16* %8, i64 %30
  store i16 0, i16* %arrayidx46.i, align 2, !tbaa !4
  %shr47.i = ashr i32 %or40.i, 8
  %arrayidx50.i = getelementptr inbounds i8* %1, i64 %30
  %31 = load i8* %arrayidx50.i, align 1, !tbaa !1
  %conv52.i = zext i8 %31 to i32
  %shl53.i = shl nuw nsw i32 %conv52.i, 8
  %or54.i = or i32 %shr47.i, %shl53.i
  %idxprom55.i = sext i32 %or54.i to i64
  %arrayidx56.i = getelementptr inbounds i32* %2, i64 %idxprom55.i
  %32 = load i32* %arrayidx56.i, align 4, !tbaa !3
  %inc57.i = add i32 %32, 1
  store i32 %inc57.i, i32* %arrayidx56.i, align 4, !tbaa !3
  %sub59.i = add nsw i32 %i.1855.i, -4
  %cmp4.i = icmp sgt i32 %sub59.i, 2
  %indvars.iv.next948.i = add i64 %indvars.iv947.i, -4
  br i1 %cmp4.i, label %for.body6.i, label %for.cond3.for.cond61.preheader_crit_edge.i

for.cond80.preheader.i:                           ; preds = %for.body64.i, %for.cond61.preheader.i
  %33 = sext i32 %3 to i64
  br label %for.body83.i

for.body64.i:                                     ; preds = %for.body64.i, %for.body64.lr.ph.i
  %indvars.iv945.i = phi i64 [ %21, %for.body64.lr.ph.i ], [ %indvars.iv.next946.i, %for.body64.i ]
  %j.1851.i = phi i32 [ %j.0.lcssa.i, %for.body64.lr.ph.i ], [ %or73.i, %for.body64.i ]
  %arrayidx66.i = getelementptr inbounds i16* %8, i64 %indvars.iv945.i
  store i16 0, i16* %arrayidx66.i, align 2, !tbaa !4
  %shr67.i = ashr i32 %j.1851.i, 8
  %arrayidx69.i = getelementptr inbounds i8* %1, i64 %indvars.iv945.i
  %34 = load i8* %arrayidx69.i, align 1, !tbaa !1
  %conv71.i = zext i8 %34 to i32
  %shl72.i = shl nuw nsw i32 %conv71.i, 8
  %or73.i = or i32 %shl72.i, %shr67.i
  %idxprom74.i = sext i32 %or73.i to i64
  %arrayidx75.i = getelementptr inbounds i32* %2, i64 %idxprom74.i
  %35 = load i32* %arrayidx75.i, align 4, !tbaa !3
  %inc76.i = add i32 %35, 1
  store i32 %inc76.i, i32* %arrayidx75.i, align 4, !tbaa !3
  %indvars.iv.next946.i = add i64 %indvars.iv945.i, -1
  %36 = trunc i64 %indvars.iv945.i to i32
  %cmp62.i = icmp sgt i32 %36, 0
  br i1 %cmp62.i, label %for.body64.i, label %for.cond80.preheader.i

for.body83.i:                                     ; preds = %for.body83.i, %for.cond80.preheader.i
  %indvars.iv939.i = phi i64 [ 0, %for.cond80.preheader.i ], [ %indvars.iv.next940.i, %for.body83.i ]
  %arrayidx85.i = getelementptr inbounds i8* %1, i64 %indvars.iv939.i
  %37 = load i8* %arrayidx85.i, align 1, !tbaa !1
  %38 = add nsw i64 %indvars.iv939.i, %33
  %arrayidx87.i = getelementptr inbounds i8* %1, i64 %38
  store i8 %37, i8* %arrayidx87.i, align 1, !tbaa !1
  %arrayidx90.i = getelementptr inbounds i16* %8, i64 %38
  store i16 0, i16* %arrayidx90.i, align 2, !tbaa !4
  %indvars.iv.next940.i = add i64 %indvars.iv939.i, 1
  %lftr.wideiv181 = trunc i64 %indvars.iv.next940.i to i32
  %exitcond182 = icmp eq i32 %lftr.wideiv181, 34
  br i1 %exitcond182, label %for.end93.i, label %for.body83.i

for.end93.i:                                      ; preds = %for.body83.i
  br i1 %cmp.i, label %if.then96.i, label %for.cond99.preheader.i

if.then96.i:                                      ; preds = %for.end93.i
  %39 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %40 = call i64 @fwrite(i8* getelementptr inbounds ([28 x i8]* @.str3, i64 0, i64 0), i64 27, i64 1, %struct._IO_FILE* %39) #3
  br label %for.cond99.preheader.i

for.cond99.preheader.i:                           ; preds = %if.then96.i, %for.end93.i
  %.pre.i = load i32* %2, align 4, !tbaa !3
  br label %for.body102.i

for.body102.i:                                    ; preds = %for.body102.i, %for.cond99.preheader.i
  %41 = phi i32 [ %.pre.i, %for.cond99.preheader.i ], [ %add108.i, %for.body102.i ]
  %indvars.iv934.i = phi i64 [ 1, %for.cond99.preheader.i ], [ %indvars.iv.next935.i, %for.body102.i ]
  %arrayidx107.i = getelementptr inbounds i32* %2, i64 %indvars.iv934.i
  %42 = load i32* %arrayidx107.i, align 4, !tbaa !3
  %add108.i = add i32 %42, %41
  store i32 %add108.i, i32* %arrayidx107.i, align 4, !tbaa !3
  %indvars.iv.next935.i = add i64 %indvars.iv934.i, 1
  %lftr.wideiv179 = trunc i64 %indvars.iv.next935.i to i32
  %exitcond180 = icmp eq i32 %lftr.wideiv179, 65537
  br i1 %exitcond180, label %for.end111.i, label %for.body102.i

for.end111.i:                                     ; preds = %for.body102.i
  %43 = load i8* %1, align 1, !tbaa !1
  %conv113.i = zext i8 %43 to i16
  %shl114.i = shl nuw i16 %conv113.i, 8
  br i1 %cmp4853.i, label %for.body120.lr.ph.i, label %for.cond190.preheader.i

for.body120.lr.ph.i:                              ; preds = %for.end111.i
  %44 = sext i32 %sub.i to i64
  %45 = add i32 %3, -4
  br label %for.body120.i

for.cond117.for.cond190.preheader_crit_edge.i:    ; preds = %for.body120.i
  %46 = and i32 %45, -4
  %47 = add i32 %3, -5
  %48 = sub i32 %47, %46
  br label %for.cond190.preheader.i

for.cond190.preheader.i:                          ; preds = %for.cond117.for.cond190.preheader_crit_edge.i, %for.end111.i
  %i.5.lcssa.i = phi i32 [ %48, %for.cond117.for.cond190.preheader_crit_edge.i ], [ %sub.i, %for.end111.i ]
  %s.0.lcssa.i = phi i16 [ %or177.i, %for.cond117.for.cond190.preheader_crit_edge.i ], [ %shl114.i, %for.end111.i ]
  %cmp191840.i = icmp sgt i32 %i.5.lcssa.i, -1
  br i1 %cmp191840.i, label %for.body193.lr.ph.i, label %for.cond212.preheader.i

for.body193.lr.ph.i:                              ; preds = %for.cond190.preheader.i
  %49 = sext i32 %i.5.lcssa.i to i64
  br label %for.body193.i

for.body120.i:                                    ; preds = %for.body120.i, %for.body120.lr.ph.i
  %indvars.iv928.i = phi i64 [ %44, %for.body120.lr.ph.i ], [ %indvars.iv.next929.i, %for.body120.i ]
  %i.5845.i = phi i32 [ %sub.i, %for.body120.lr.ph.i ], [ %sub188.i, %for.body120.i ]
  %s.0844.i = phi i16 [ %shl114.i, %for.body120.lr.ph.i ], [ %or177.i, %for.body120.i ]
  %shr122774.i = lshr i16 %s.0844.i, 8
  %arrayidx124.i = getelementptr inbounds i8* %1, i64 %indvars.iv928.i
  %50 = load i8* %arrayidx124.i, align 1, !tbaa !1
  %conv125.i = zext i8 %50 to i16
  %shl126.i = shl nuw i16 %conv125.i, 8
  %or127.i = or i16 %shl126.i, %shr122774.i
  %idxprom129.i = zext i16 %or127.i to i64
  %arrayidx130.i = getelementptr inbounds i32* %2, i64 %idxprom129.i
  %51 = load i32* %arrayidx130.i, align 4, !tbaa !3
  %sub131.i = add i32 %51, -1
  store i32 %sub131.i, i32* %arrayidx130.i, align 4, !tbaa !3
  %idxprom134.i = sext i32 %sub131.i to i64
  %arrayidx135.i = getelementptr inbounds i32* %0, i64 %idxprom134.i
  %52 = trunc i64 %indvars.iv928.i to i32
  store i32 %52, i32* %arrayidx135.i, align 4, !tbaa !3
  %53 = add nsw i64 %indvars.iv928.i, -1
  %arrayidx140.i = getelementptr inbounds i8* %1, i64 %53
  %54 = load i8* %arrayidx140.i, align 1, !tbaa !1
  %conv141.i = zext i8 %54 to i16
  %shl142.i = shl nuw i16 %conv141.i, 8
  %or143.i = or i16 %shl142.i, %conv125.i
  %idxprom145.i = zext i16 %or143.i to i64
  %arrayidx146.i = getelementptr inbounds i32* %2, i64 %idxprom145.i
  %55 = load i32* %arrayidx146.i, align 4, !tbaa !3
  %sub147.i = add i32 %55, -1
  store i32 %sub147.i, i32* %arrayidx146.i, align 4, !tbaa !3
  %idxprom151.i = sext i32 %sub147.i to i64
  %arrayidx152.i = getelementptr inbounds i32* %0, i64 %idxprom151.i
  %56 = trunc i64 %53 to i32
  store i32 %56, i32* %arrayidx152.i, align 4, !tbaa !3
  %57 = add nsw i64 %indvars.iv928.i, -2
  %arrayidx157.i = getelementptr inbounds i8* %1, i64 %57
  %58 = load i8* %arrayidx157.i, align 1, !tbaa !1
  %conv158.i = zext i8 %58 to i16
  %shl159.i = shl nuw i16 %conv158.i, 8
  %or160.i = or i16 %shl159.i, %conv141.i
  %idxprom162.i = zext i16 %or160.i to i64
  %arrayidx163.i = getelementptr inbounds i32* %2, i64 %idxprom162.i
  %59 = load i32* %arrayidx163.i, align 4, !tbaa !3
  %sub164.i = add i32 %59, -1
  store i32 %sub164.i, i32* %arrayidx163.i, align 4, !tbaa !3
  %idxprom168.i = sext i32 %sub164.i to i64
  %arrayidx169.i = getelementptr inbounds i32* %0, i64 %idxprom168.i
  %60 = trunc i64 %57 to i32
  store i32 %60, i32* %arrayidx169.i, align 4, !tbaa !3
  %61 = add nsw i64 %indvars.iv928.i, -3
  %arrayidx174.i = getelementptr inbounds i8* %1, i64 %61
  %62 = load i8* %arrayidx174.i, align 1, !tbaa !1
  %conv175.i = zext i8 %62 to i16
  %shl176.i = shl nuw i16 %conv175.i, 8
  %or177.i = or i16 %shl176.i, %conv158.i
  %idxprom179.i = zext i16 %or177.i to i64
  %arrayidx180.i = getelementptr inbounds i32* %2, i64 %idxprom179.i
  %63 = load i32* %arrayidx180.i, align 4, !tbaa !3
  %sub181.i = add i32 %63, -1
  store i32 %sub181.i, i32* %arrayidx180.i, align 4, !tbaa !3
  %idxprom185.i = sext i32 %sub181.i to i64
  %arrayidx186.i = getelementptr inbounds i32* %0, i64 %idxprom185.i
  %64 = trunc i64 %61 to i32
  store i32 %64, i32* %arrayidx186.i, align 4, !tbaa !3
  %sub188.i = add nsw i32 %i.5845.i, -4
  %cmp118.i = icmp sgt i32 %sub188.i, 2
  %indvars.iv.next929.i = add i64 %indvars.iv928.i, -4
  br i1 %cmp118.i, label %for.body120.i, label %for.cond117.for.cond190.preheader_crit_edge.i

for.cond212.preheader.i:                          ; preds = %for.body193.i, %for.cond190.preheader.i
  call void @llvm.memset.p0i8.i64(i8* %bigDone925.i, i8 0, i64 256, i32 16, i1 false) #3
  br label %for.body215.i

for.body193.i:                                    ; preds = %for.body193.i, %for.body193.lr.ph.i
  %indvars.iv926.i = phi i64 [ %49, %for.body193.lr.ph.i ], [ %indvars.iv.next927.i, %for.body193.i ]
  %s.1841.i = phi i16 [ %s.0.lcssa.i, %for.body193.lr.ph.i ], [ %or200.i, %for.body193.i ]
  %shr195773.i = lshr i16 %s.1841.i, 8
  %arrayidx197.i = getelementptr inbounds i8* %1, i64 %indvars.iv926.i
  %65 = load i8* %arrayidx197.i, align 1, !tbaa !1
  %conv198.i = zext i8 %65 to i16
  %shl199.i = shl nuw i16 %conv198.i, 8
  %or200.i = or i16 %shl199.i, %shr195773.i
  %idxprom202.i = zext i16 %or200.i to i64
  %arrayidx203.i = getelementptr inbounds i32* %2, i64 %idxprom202.i
  %66 = load i32* %arrayidx203.i, align 4, !tbaa !3
  %sub204.i = add i32 %66, -1
  store i32 %sub204.i, i32* %arrayidx203.i, align 4, !tbaa !3
  %idxprom207.i = sext i32 %sub204.i to i64
  %arrayidx208.i = getelementptr inbounds i32* %0, i64 %idxprom207.i
  %67 = trunc i64 %indvars.iv926.i to i32
  store i32 %67, i32* %arrayidx208.i, align 4, !tbaa !3
  %indvars.iv.next927.i = add i64 %indvars.iv926.i, -1
  %cmp191.i = icmp sgt i32 %67, 0
  br i1 %cmp191.i, label %for.body193.i, label %for.cond212.preheader.i

for.body215.i:                                    ; preds = %for.body215.i, %for.cond212.preheader.i
  %indvars.iv921.i = phi i64 [ 0, %for.cond212.preheader.i ], [ %indvars.iv.next922.i, %for.body215.i ]
  %arrayidx219.i = getelementptr inbounds [256 x i32]* %runningOrder.i, i64 0, i64 %indvars.iv921.i
  %68 = trunc i64 %indvars.iv921.i to i32
  store i32 %68, i32* %arrayidx219.i, align 4, !tbaa !3
  %indvars.iv.next922.i = add i64 %indvars.iv921.i, 1
  %lftr.wideiv177 = trunc i64 %indvars.iv.next922.i to i32
  %exitcond178 = icmp eq i32 %lftr.wideiv177, 256
  br i1 %exitcond178, label %do.body226.i, label %for.body215.i

do.body226.i:                                     ; preds = %for.body215.i, %do.cond273.i
  %h.1.i = phi i32 [ %div.i, %do.cond273.i ], [ 364, %for.body215.i ]
  %div.i = sdiv i32 %h.1.i, 3
  %cmp228837.i = icmp slt i32 %h.1.i, 768
  br i1 %cmp228837.i, label %for.body230.lr.ph.i, label %do.cond273.i

for.body230.lr.ph.i:                              ; preds = %do.body226.i
  %sub263.i = add nsw i32 %div.i, -1
  %69 = sext i32 %div.i to i64
  br label %for.body230.i

for.body230.i:                                    ; preds = %zero.i, %for.body230.lr.ph.i
  %indvars.iv919.i = phi i64 [ %69, %for.body230.lr.ph.i ], [ %indvars.iv.next920.i, %zero.i ]
  %i.8838.i = phi i32 [ %div.i, %for.body230.lr.ph.i ], [ %inc271.i, %zero.i ]
  %arrayidx232.i = getelementptr inbounds [256 x i32]* %runningOrder.i, i64 0, i64 %indvars.iv919.i
  %70 = load i32* %arrayidx232.i, align 4, !tbaa !3
  %add247.i = shl i32 %70, 8
  %shl248.i = add i32 %add247.i, 256
  %idxprom249.i = sext i32 %shl248.i to i64
  %arrayidx250.i = getelementptr inbounds i32* %2, i64 %idxprom249.i
  %71 = load i32* %arrayidx250.i, align 4, !tbaa !3
  %idxprom252.i = sext i32 %add247.i to i64
  %arrayidx253.i = getelementptr inbounds i32* %2, i64 %idxprom252.i
  %72 = load i32* %arrayidx253.i, align 4, !tbaa !3
  %sub254.i = sub i32 %71, %72
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.body.i, %for.body230.i
  %j.2.i = phi i32 [ %i.8838.i, %for.body230.i ], [ %sub233.i, %while.body.i ]
  %sub233.i = sub nsw i32 %j.2.i, %div.i
  %idxprom234.i = sext i32 %sub233.i to i64
  %arrayidx235.i = getelementptr inbounds [256 x i32]* %runningOrder.i, i64 0, i64 %idxprom234.i
  %73 = load i32* %arrayidx235.i, align 4, !tbaa !3
  %add236.i = shl i32 %73, 8
  %shl237.i = add i32 %add236.i, 256
  %idxprom238.i = sext i32 %shl237.i to i64
  %arrayidx239.i = getelementptr inbounds i32* %2, i64 %idxprom238.i
  %74 = load i32* %arrayidx239.i, align 4, !tbaa !3
  %idxprom244.i = sext i32 %add236.i to i64
  %arrayidx245.i = getelementptr inbounds i32* %2, i64 %idxprom244.i
  %75 = load i32* %arrayidx245.i, align 4, !tbaa !3
  %sub246.i = sub i32 %74, %75
  %cmp255.i = icmp ugt i32 %sub246.i, %sub254.i
  br i1 %cmp255.i, label %while.body.i, label %zero.i

while.body.i:                                     ; preds = %while.cond.i
  %idxprom260.i = sext i32 %j.2.i to i64
  %arrayidx261.i = getelementptr inbounds [256 x i32]* %runningOrder.i, i64 0, i64 %idxprom260.i
  store i32 %73, i32* %arrayidx261.i, align 4, !tbaa !3
  %cmp264.i = icmp sgt i32 %sub233.i, %sub263.i
  br i1 %cmp264.i, label %while.cond.i, label %zero.i

zero.i:                                           ; preds = %while.body.i, %while.cond.i
  %j.3.i = phi i32 [ %sub233.i, %while.body.i ], [ %j.2.i, %while.cond.i ]
  %idxprom268.i = sext i32 %j.3.i to i64
  %arrayidx269.i = getelementptr inbounds [256 x i32]* %runningOrder.i, i64 0, i64 %idxprom268.i
  store i32 %70, i32* %arrayidx269.i, align 4, !tbaa !3
  %indvars.iv.next920.i = add i64 %indvars.iv919.i, 1
  %inc271.i = add nsw i32 %i.8838.i, 1
  %76 = trunc i64 %indvars.iv.next920.i to i32
  %cmp228.i = icmp slt i32 %76, 256
  br i1 %cmp228.i, label %for.body230.i, label %do.cond273.i

do.cond273.i:                                     ; preds = %zero.i, %do.body226.i
  %h.1.off.i = add i32 %h.1.i, -3
  %77 = icmp ugt i32 %h.1.off.i, 2
  br i1 %77, label %do.body226.i, label %for.cond277.preheader.i

for.cond277.preheader.i:                          ; preds = %do.cond273.i
  %78 = bitcast [100 x i32]* %stackLo.i.i to i8*
  %79 = bitcast [100 x i32]* %stackHi.i.i to i8*
  %80 = bitcast [100 x i32]* %stackD.i.i to i8*
  %arrayidx.i.i = getelementptr inbounds [100 x i32]* %stackLo.i.i, i64 0, i64 0
  %arrayidx2.i.i = getelementptr inbounds [100 x i32]* %stackHi.i.i, i64 0, i64 0
  %arrayidx4.i.i = getelementptr inbounds [100 x i32]* %stackD.i.i, i64 0, i64 0
  br label %for.body280.i

for.body280.i:                                    ; preds = %for.inc506.i, %for.cond277.preheader.i
  %81 = phi i32 [ %mul, %for.cond277.preheader.i ], [ %150, %for.inc506.i ]
  %indvars.iv917.i = phi i64 [ 0, %for.cond277.preheader.i ], [ %indvars.iv.next918.i, %for.inc506.i ]
  %numQSorted.0835.i = phi i32 [ 0, %for.cond277.preheader.i ], [ %numQSorted.3.i, %for.inc506.i ]
  %arrayidx282.i = getelementptr inbounds [256 x i32]* %runningOrder.i, i64 0, i64 %indvars.iv917.i
  %82 = load i32* %arrayidx282.i, align 4, !tbaa !3
  %shl290.i = shl i32 %82, 8
  %83 = sext i32 %shl290.i to i64
  br label %for.body286.i

for.body286.i:                                    ; preds = %for.inc326.i, %for.body280.i
  %84 = phi i32 [ %81, %for.body280.i ], [ %150, %for.inc326.i ]
  %indvars.iv.i = phi i64 [ 0, %for.body280.i ], [ %indvars.iv.next.i, %for.inc326.i ]
  %numQSorted.1821.i = phi i32 [ %numQSorted.0835.i, %for.body280.i ], [ %numQSorted.3.i, %for.inc326.i ]
  %85 = trunc i64 %indvars.iv.i to i32
  %cmp287.i = icmp eq i32 %85, %82
  br i1 %cmp287.i, label %for.inc326.i, label %if.then289.i

if.then289.i:                                     ; preds = %for.body286.i
  %86 = add nsw i64 %indvars.iv.i, %83
  %arrayidx293.i = getelementptr inbounds i32* %2, i64 %86
  %87 = load i32* %arrayidx293.i, align 4, !tbaa !3
  %and.i = and i32 %87, 2097152
  %tobool.i = icmp eq i32 %and.i, 0
  br i1 %tobool.i, label %if.then294.i, label %if.end321.i

if.then294.i:                                     ; preds = %if.then289.i
  %and297.i = and i32 %87, -2097153
  %88 = add nsw i64 %86, 1
  %arrayidx300.i = getelementptr inbounds i32* %2, i64 %88
  %89 = load i32* %arrayidx300.i, align 4, !tbaa !3
  %and301.i = and i32 %89, -2097153
  %sub302.i = add i32 %and301.i, -1
  %cmp303.i = icmp sgt i32 %sub302.i, %and297.i
  br i1 %cmp303.i, label %if.then305.i, label %if.end321.i

if.then305.i:                                     ; preds = %if.then294.i
  br i1 %cmp.i, label %if.then308.i, label %if.end312.i

if.then308.i:                                     ; preds = %if.then305.i
  %90 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %sub309.i = sub i32 1, %and297.i
  %add310.i = add i32 %sub309.i, %sub302.i
  %call311.i = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %90, i8* getelementptr inbounds ([48 x i8]* @.str4, i64 0, i64 0), i32 %82, i32 %85, i32 %numQSorted.1821.i, i32 %add310.i) #5
  br label %if.end312.i

if.end312.i:                                      ; preds = %if.then308.i, %if.then305.i
  call void @llvm.lifetime.start(i64 400, i8* %78) #3
  call void @llvm.lifetime.start(i64 400, i8* %79) #3
  call void @llvm.lifetime.start(i64 400, i8* %80) #3
  store i32 %and297.i, i32* %arrayidx.i.i, align 16, !tbaa !3
  store i32 %sub302.i, i32* %arrayidx2.i.i, align 16, !tbaa !3
  store i32 2, i32* %arrayidx4.i.i, align 16, !tbaa !3
  br label %while.body.lr.ph.i.i

while.body.lr.ph.i.i:                             ; preds = %while.cond.outer.backedge.i.i, %if.end312.i
  %.pr.i.i183 = phi i32 [ %84, %if.end312.i ], [ %.pre957.pre.i, %while.cond.outer.backedge.i.i ]
  %sp.0.ph86.i.i = phi i32 [ 1, %if.end312.i ], [ %sp.0.ph.be.i.i, %while.cond.outer.backedge.i.i ]
  %cmp5.i.i = icmp slt i32 %sp.0.ph86.i.i, 100
  %dec.i.i = add nsw i32 %sp.0.ph86.i.i, -1
  %idxprom6.i.i = sext i32 %dec.i.i to i64
  %arrayidx7.i.i = getelementptr inbounds [100 x i32]* %stackLo.i.i, i64 0, i64 %idxprom6.i.i
  %arrayidx9.i.i = getelementptr inbounds [100 x i32]* %stackHi.i.i, i64 0, i64 %idxprom6.i.i
  %arrayidx11.i.i = getelementptr inbounds [100 x i32]* %stackD.i.i, i64 0, i64 %idxprom6.i.i
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %if.then120.i.i, %while.body.lr.ph.i.i
  br i1 %cmp5.i.i, label %if.end.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %while.body.i.i
  call void @BZ2_bz__AssertH__fail(i32 1001) #5
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %while.body.i.i, %if.then.i.i
  %91 = load i32* %arrayidx7.i.i, align 4, !tbaa !3
  %92 = load i32* %arrayidx9.i.i, align 4, !tbaa !3
  %93 = load i32* %arrayidx11.i.i, align 4, !tbaa !3
  %sub.i.i = sub nsw i32 %92, %91
  %cmp12.i.i = icmp slt i32 %sub.i.i, 20
  %cmp13.i.i = icmp sgt i32 %93, 14
  %or.cond.i.i = or i1 %cmp12.i.i, %cmp13.i.i
  br i1 %or.cond.i.i, label %if.then14.i.i, label %if.end18.i.i

if.then14.i.i:                                    ; preds = %if.end.i.i
  %add.i.i.i = add nsw i32 %sub.i.i, 1
  %cmp.i.i.i = icmp slt i32 %add.i.i.i, 2
  br i1 %cmp.i.i.i, label %mainSimpleSort.exit.i.i, label %while.cond.i.i.i

while.cond.i.i.i:                                 ; preds = %if.then14.i.i, %while.cond.i.i.i
  %indvars.iv194.i.i.i = phi i64 [ %indvars.iv.next195.i.i.i, %while.cond.i.i.i ], [ 0, %if.then14.i.i ]
  %hp.0.i.i.i = phi i32 [ %inc.i.i.i, %while.cond.i.i.i ], [ 0, %if.then14.i.i ]
  %arrayidx.i.i.i = getelementptr inbounds [14 x i32]* @incs, i64 0, i64 %indvars.iv194.i.i.i
  %94 = load i32* %arrayidx.i.i.i, align 4, !tbaa !3
  %cmp1.i.i.i = icmp slt i32 %94, %add.i.i.i
  %indvars.iv.next195.i.i.i = add i64 %indvars.iv194.i.i.i, 1
  %inc.i.i.i = add nsw i32 %hp.0.i.i.i, 1
  br i1 %cmp1.i.i.i, label %while.cond.i.i.i, label %for.cond.preheader.i.i.i

for.cond.preheader.i.i.i:                         ; preds = %while.cond.i.i.i
  %cmp2185.i.i.i = icmp sgt i32 %hp.0.i.i.i, 0
  br i1 %cmp2185.i.i.i, label %for.body.i.preheader.i.i, label %mainSimpleSort.exit.i.i

for.body.i.preheader.i.i:                         ; preds = %for.cond.preheader.i.i.i
  %95 = sext i32 %hp.0.i.i.i to i64
  br label %for.body.i.i.i

for.cond.loopexit.i.i.i:                          ; preds = %while.end60.i.i.i, %while.end31.i.i.i, %while.body7.i.i.i
  %96 = trunc i64 %indvars.iv.next166.i.i to i32
  %cmp2.i.i.i = icmp sgt i32 %96, 0
  br i1 %cmp2.i.i.i, label %for.body.i.i.i, label %mainSimpleSort.exit.i.i.loopexit

for.body.i.i.i:                                   ; preds = %for.cond.loopexit.i.i.i, %for.body.i.preheader.i.i
  %indvars.iv165.i.i = phi i64 [ %95, %for.body.i.preheader.i.i ], [ %indvars.iv.next166.i.i, %for.cond.loopexit.i.i.i ]
  %indvars.iv.next166.i.i = add i64 %indvars.iv165.i.i, -1
  %arrayidx4.i.i.i = getelementptr inbounds [14 x i32]* @incs, i64 0, i64 %indvars.iv.next166.i.i
  %97 = load i32* %arrayidx4.i.i.i, align 4, !tbaa !3
  %add5.i.i.i = add i32 %97, %91
  %sub27.i.i.i = add nsw i32 %add5.i.i.i, -1
  %98 = sext i32 %add5.i.i.i to i64
  br label %while.body7.i.i.i

while.body7.i.i.i:                                ; preds = %while.end89.i.i.i, %for.body.i.i.i
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i, %while.end89.i.i.i ], [ %98, %for.body.i.i.i ]
  %i.0.i.i.i = phi i32 [ %inc92.i.i.i, %while.end89.i.i.i ], [ %add5.i.i.i, %for.body.i.i.i ]
  %99 = trunc i64 %indvars.iv.i.i.i to i32
  %cmp8.i.i.i = icmp sgt i32 %99, %92
  br i1 %cmp8.i.i.i, label %for.cond.loopexit.i.i.i, label %if.end10.i.i.i

if.end10.i.i.i:                                   ; preds = %while.body7.i.i.i
  %arrayidx12.i.i.i = getelementptr inbounds i32* %0, i64 %indvars.iv.i.i.i
  %100 = load i32* %arrayidx12.i.i.i, align 4, !tbaa !3
  %add18.i.i.i = add i32 %100, %93
  br label %while.cond13.i.i.i

while.cond13.i.i.i:                               ; preds = %while.body19.i.i.i, %if.end10.i.i.i
  %j.0.i.i.i = phi i32 [ %i.0.i.i.i, %if.end10.i.i.i ], [ %sub14.i.i.i, %while.body19.i.i.i ]
  %sub14.i.i.i = sub nsw i32 %j.0.i.i.i, %97
  %idxprom15.i.i.i = sext i32 %sub14.i.i.i to i64
  %arrayidx16.i.i.i = getelementptr inbounds i32* %0, i64 %idxprom15.i.i.i
  %101 = load i32* %arrayidx16.i.i.i, align 4, !tbaa !3
  %add17.i.i.i = add i32 %101, %93
  %call.i.i.i = call fastcc zeroext i8 @mainGtU(i32 %add17.i.i.i, i32 %add18.i.i.i, i8* %1, i16* %8, i32 %3, i32* %budget) #5
  %tobool.i.i.i = icmp eq i8 %call.i.i.i, 0
  br i1 %tobool.i.i.i, label %while.end31.i.i.i, label %while.body19.i.i.i

while.body19.i.i.i:                               ; preds = %while.cond13.i.i.i
  %102 = load i32* %arrayidx16.i.i.i, align 4, !tbaa !3
  %idxprom23.i.i.i = sext i32 %j.0.i.i.i to i64
  %arrayidx24.i.i.i = getelementptr inbounds i32* %0, i64 %idxprom23.i.i.i
  store i32 %102, i32* %arrayidx24.i.i.i, align 4, !tbaa !3
  %cmp28.i.i.i = icmp sgt i32 %sub14.i.i.i, %sub27.i.i.i
  br i1 %cmp28.i.i.i, label %while.cond13.i.i.i, label %while.end31.i.i.i

while.end31.i.i.i:                                ; preds = %while.body19.i.i.i, %while.cond13.i.i.i
  %j.1.i.i.i = phi i32 [ %sub14.i.i.i, %while.body19.i.i.i ], [ %j.0.i.i.i, %while.cond13.i.i.i ]
  %idxprom32.i.i.i = sext i32 %j.1.i.i.i to i64
  %arrayidx33.i.i.i = getelementptr inbounds i32* %0, i64 %idxprom32.i.i.i
  store i32 %100, i32* %arrayidx33.i.i.i, align 4, !tbaa !3
  %cmp35.i.i.i = icmp slt i32 %99, %92
  br i1 %cmp35.i.i.i, label %if.end37.i.i.i, label %for.cond.loopexit.i.i.i

if.end37.i.i.i:                                   ; preds = %while.end31.i.i.i
  %inc34.i.i.i = add nsw i32 %i.0.i.i.i, 1
  %103 = add nsw i64 %indvars.iv.i.i.i, 1
  %arrayidx39.i.i.i = getelementptr inbounds i32* %0, i64 %103
  %104 = load i32* %arrayidx39.i.i.i, align 4, !tbaa !3
  %add45.i.i.i = add i32 %104, %93
  br label %while.cond40.i.i.i

while.cond40.i.i.i:                               ; preds = %while.body48.i.i.i, %if.end37.i.i.i
  %j.2.i.i.i = phi i32 [ %inc34.i.i.i, %if.end37.i.i.i ], [ %sub41.i.i.i, %while.body48.i.i.i ]
  %sub41.i.i.i = sub nsw i32 %j.2.i.i.i, %97
  %idxprom42.i.i.i = sext i32 %sub41.i.i.i to i64
  %arrayidx43.i.i.i = getelementptr inbounds i32* %0, i64 %idxprom42.i.i.i
  %105 = load i32* %arrayidx43.i.i.i, align 4, !tbaa !3
  %add44.i.i.i = add i32 %105, %93
  %call46.i.i.i = call fastcc zeroext i8 @mainGtU(i32 %add44.i.i.i, i32 %add45.i.i.i, i8* %1, i16* %8, i32 %3, i32* %budget) #5
  %tobool47.i.i.i = icmp eq i8 %call46.i.i.i, 0
  br i1 %tobool47.i.i.i, label %while.end60.i.i.i, label %while.body48.i.i.i

while.body48.i.i.i:                               ; preds = %while.cond40.i.i.i
  %106 = load i32* %arrayidx43.i.i.i, align 4, !tbaa !3
  %idxprom52.i.i.i = sext i32 %j.2.i.i.i to i64
  %arrayidx53.i.i.i = getelementptr inbounds i32* %0, i64 %idxprom52.i.i.i
  store i32 %106, i32* %arrayidx53.i.i.i, align 4, !tbaa !3
  %cmp57.i.i.i = icmp sgt i32 %sub41.i.i.i, %sub27.i.i.i
  br i1 %cmp57.i.i.i, label %while.cond40.i.i.i, label %while.end60.i.i.i

while.end60.i.i.i:                                ; preds = %while.body48.i.i.i, %while.cond40.i.i.i
  %j.3.i.i.i = phi i32 [ %sub41.i.i.i, %while.body48.i.i.i ], [ %j.2.i.i.i, %while.cond40.i.i.i ]
  %idxprom61.i.i.i = sext i32 %j.3.i.i.i to i64
  %arrayidx62.i.i.i = getelementptr inbounds i32* %0, i64 %idxprom61.i.i.i
  store i32 %104, i32* %arrayidx62.i.i.i, align 4, !tbaa !3
  %107 = add nsw i64 %indvars.iv.i.i.i, 2
  %108 = trunc i64 %107 to i32
  %cmp64.i.i.i = icmp sgt i32 %108, %92
  br i1 %cmp64.i.i.i, label %for.cond.loopexit.i.i.i, label %if.end66.i.i.i

if.end66.i.i.i:                                   ; preds = %while.end60.i.i.i
  %inc63.i.i.i = add nsw i32 %i.0.i.i.i, 2
  %arrayidx68.i.i.i = getelementptr inbounds i32* %0, i64 %107
  %109 = load i32* %arrayidx68.i.i.i, align 4, !tbaa !3
  %add74.i.i.i = add i32 %109, %93
  br label %while.cond69.i.i.i

while.cond69.i.i.i:                               ; preds = %while.body77.i.i.i, %if.end66.i.i.i
  %j.4.i.i.i = phi i32 [ %inc63.i.i.i, %if.end66.i.i.i ], [ %sub70.i.i.i, %while.body77.i.i.i ]
  %sub70.i.i.i = sub nsw i32 %j.4.i.i.i, %97
  %idxprom71.i.i.i = sext i32 %sub70.i.i.i to i64
  %arrayidx72.i.i.i = getelementptr inbounds i32* %0, i64 %idxprom71.i.i.i
  %110 = load i32* %arrayidx72.i.i.i, align 4, !tbaa !3
  %add73.i.i.i = add i32 %110, %93
  %call75.i.i.i = call fastcc zeroext i8 @mainGtU(i32 %add73.i.i.i, i32 %add74.i.i.i, i8* %1, i16* %8, i32 %3, i32* %budget) #5
  %tobool76.i.i.i = icmp eq i8 %call75.i.i.i, 0
  br i1 %tobool76.i.i.i, label %while.end89.i.i.i, label %while.body77.i.i.i

while.body77.i.i.i:                               ; preds = %while.cond69.i.i.i
  %111 = load i32* %arrayidx72.i.i.i, align 4, !tbaa !3
  %idxprom81.i.i.i = sext i32 %j.4.i.i.i to i64
  %arrayidx82.i.i.i = getelementptr inbounds i32* %0, i64 %idxprom81.i.i.i
  store i32 %111, i32* %arrayidx82.i.i.i, align 4, !tbaa !3
  %cmp86.i.i.i = icmp sgt i32 %sub70.i.i.i, %sub27.i.i.i
  br i1 %cmp86.i.i.i, label %while.cond69.i.i.i, label %while.end89.i.i.i

while.end89.i.i.i:                                ; preds = %while.body77.i.i.i, %while.cond69.i.i.i
  %j.5.i.i.i = phi i32 [ %sub70.i.i.i, %while.body77.i.i.i ], [ %j.4.i.i.i, %while.cond69.i.i.i ]
  %idxprom90.i.i.i = sext i32 %j.5.i.i.i to i64
  %arrayidx91.i.i.i = getelementptr inbounds i32* %0, i64 %idxprom90.i.i.i
  store i32 %109, i32* %arrayidx91.i.i.i, align 4, !tbaa !3
  %indvars.iv.next.i.i.i = add i64 %indvars.iv.i.i.i, 3
  %inc92.i.i.i = add nsw i32 %i.0.i.i.i, 3
  %112 = load i32* %budget, align 4, !tbaa !3
  %cmp93.i.i.i = icmp slt i32 %112, 0
  br i1 %cmp93.i.i.i, label %mainQSort3.exit.i, label %while.body7.i.i.i

mainSimpleSort.exit.i.i.loopexit:                 ; preds = %for.cond.loopexit.i.i.i
  %.pr.i.i.pre = load i32* %budget, align 4, !tbaa !3
  br label %mainSimpleSort.exit.i.i

mainSimpleSort.exit.i.i:                          ; preds = %mainSimpleSort.exit.i.i.loopexit, %for.cond.preheader.i.i.i, %if.then14.i.i
  %.pr.i.i = phi i32 [ %.pr.i.i.pre, %mainSimpleSort.exit.i.i.loopexit ], [ %.pr.i.i183, %for.cond.preheader.i.i.i ], [ %.pr.i.i183, %if.then14.i.i ]
  %cmp15.i.i = icmp slt i32 %.pr.i.i, 0
  br i1 %cmp15.i.i, label %mainQSort3.exit.i, label %while.cond.outer.backedge.i.i

while.cond.outer.backedge.i.i:                    ; preds = %while.end185.i.i, %mainSimpleSort.exit.i.i
  %.pre957.pre.i = phi i32 [ %.pr.i.i, %mainSimpleSort.exit.i.i ], [ %.pr.i.i183, %while.end185.i.i ]
  %sp.0.ph.be.i.i = phi i32 [ %dec.i.i, %mainSimpleSort.exit.i.i ], [ %inc301.i.i, %while.end185.i.i ]
  %cmp.i.i = icmp sgt i32 %sp.0.ph.be.i.i, 0
  br i1 %cmp.i.i, label %while.body.lr.ph.i.i, label %mainQSort3.exit.i

if.end18.i.i:                                     ; preds = %if.end.i.i
  %idxprom19.i.i = sext i32 %91 to i64
  %arrayidx20.i.i = getelementptr inbounds i32* %0, i64 %idxprom19.i.i
  %113 = load i32* %arrayidx20.i.i, align 4, !tbaa !3
  %add.i.i = add i32 %113, %93
  %idxprom21.i.i = zext i32 %add.i.i to i64
  %arrayidx22.i.i = getelementptr inbounds i8* %1, i64 %idxprom21.i.i
  %114 = load i8* %arrayidx22.i.i, align 1, !tbaa !1
  %idxprom23.i.i = sext i32 %92 to i64
  %arrayidx24.i.i = getelementptr inbounds i32* %0, i64 %idxprom23.i.i
  %115 = load i32* %arrayidx24.i.i, align 4, !tbaa !3
  %add25.i.i = add i32 %115, %93
  %idxprom26.i.i = zext i32 %add25.i.i to i64
  %arrayidx27.i.i = getelementptr inbounds i8* %1, i64 %idxprom26.i.i
  %116 = load i8* %arrayidx27.i.i, align 1, !tbaa !1
  %add28.i.i = add nsw i32 %92, %91
  %shr.i.i = ashr i32 %add28.i.i, 1
  %idxprom29.i.i = sext i32 %shr.i.i to i64
  %arrayidx30.i.i = getelementptr inbounds i32* %0, i64 %idxprom29.i.i
  %117 = load i32* %arrayidx30.i.i, align 4, !tbaa !3
  %add31.i.i = add i32 %117, %93
  %idxprom32.i.i = zext i32 %add31.i.i to i64
  %arrayidx33.i.i = getelementptr inbounds i8* %1, i64 %idxprom32.i.i
  %118 = load i8* %arrayidx33.i.i, align 1, !tbaa !1
  %cmp.i1.i.i = icmp ugt i8 %114, %116
  %a.b.i.i.i = select i1 %cmp.i1.i.i, i8 %114, i8 %116
  %b.a.i.i.i = select i1 %cmp.i1.i.i, i8 %116, i8 %114
  %cmp5.i.i.i = icmp ugt i8 %a.b.i.i.i, %118
  br i1 %cmp5.i.i.i, label %if.then7.i.i.i, label %mmed3.exit.i.i

if.then7.i.i.i:                                   ; preds = %if.end18.i.i
  %cmp10.i.i.i = icmp ugt i8 %b.a.i.i.i, %118
  %b.a.c.i.i.i = select i1 %cmp10.i.i.i, i8 %b.a.i.i.i, i8 %118
  br label %mmed3.exit.i.i

mmed3.exit.i.i:                                   ; preds = %if.then7.i.i.i, %if.end18.i.i
  %call2.i.i = phi i8 [ %b.a.c.i.i.i, %if.then7.i.i.i ], [ %a.b.i.i.i, %if.end18.i.i ]
  %conv.i.i = zext i8 %call2.i.i to i32
  br label %while.body37.outer.i.i

while.body37.outer.i.i:                           ; preds = %if.end105.i.i, %mmed3.exit.i.i
  %gtHi.0.ph.i.i = phi i32 [ %92, %mmed3.exit.i.i ], [ %gtHi.1.ph21.i.i, %if.end105.i.i ]
  %ltLo.0.ph.i.i = phi i32 [ %91, %mmed3.exit.i.i ], [ %ltLo.0.ph2850.i.i, %if.end105.i.i ]
  %unHi.0.ph.i.i = phi i32 [ %92, %mmed3.exit.i.i ], [ %dec100.i.i, %if.end105.i.i ]
  %unLo.0.ph.i.i = phi i32 [ %91, %mmed3.exit.i.i ], [ %inc115.i.i, %if.end105.i.i ]
  %cmp383653.i.i = icmp sgt i32 %unLo.0.ph.i.i, %unHi.0.ph.i.i
  br i1 %cmp383653.i.i, label %while.body69.preheader.i.i, label %if.end41.lr.ph.lr.ph.i.i

if.end41.lr.ph.lr.ph.i.i:                         ; preds = %while.body37.outer.i.i
  %119 = sext i32 %ltLo.0.ph.i.i to i64
  br label %if.end41.lr.ph.i.i

if.end41.lr.ph.i.i:                               ; preds = %if.then51.i.i, %if.end41.lr.ph.lr.ph.i.i
  %indvars.iv97.i.i = phi i64 [ %indvars.iv.next98.i.i, %if.then51.i.i ], [ %119, %if.end41.lr.ph.lr.ph.i.i ]
  %unLo.0.ph3055.i.i = phi i32 [ %inc61.i.i, %if.then51.i.i ], [ %unLo.0.ph.i.i, %if.end41.lr.ph.lr.ph.i.i ]
  %ltLo.0.ph2854.i.i = phi i32 [ %inc60.i.i, %if.then51.i.i ], [ %ltLo.0.ph.i.i, %if.end41.lr.ph.lr.ph.i.i ]
  %120 = sext i32 %unLo.0.ph3055.i.i to i64
  br label %if.end41.i.i

while.body37.i.i:                                 ; preds = %if.end62.i.i
  %indvars.iv.next.i.i = add i64 %indvars.iv.i.i, 1
  %121 = trunc i64 %indvars.iv.i.i to i32
  %cmp38.i.i = icmp slt i32 %121, %unHi.0.ph.i.i
  br i1 %cmp38.i.i, label %if.end41.i.i, label %while.body69.preheader.i.i

if.end41.i.i:                                     ; preds = %while.body37.i.i, %if.end41.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %while.body37.i.i ], [ %120, %if.end41.lr.ph.i.i ]
  %unLo.037.i.i = phi i32 [ %inc67.i.i, %while.body37.i.i ], [ %unLo.0.ph3055.i.i, %if.end41.lr.ph.i.i ]
  %arrayidx43.i.i = getelementptr inbounds i32* %0, i64 %indvars.iv.i.i
  %122 = load i32* %arrayidx43.i.i, align 4, !tbaa !3
  %add44.i.i = add i32 %122, %93
  %idxprom45.i.i = zext i32 %add44.i.i to i64
  %arrayidx46.i.i = getelementptr inbounds i8* %1, i64 %idxprom45.i.i
  %123 = load i8* %arrayidx46.i.i, align 1, !tbaa !1
  %cmp49.i.i = icmp eq i8 %123, %call2.i.i
  br i1 %cmp49.i.i, label %if.then51.i.i, label %if.end62.i.i

if.then51.i.i:                                    ; preds = %if.end41.i.i
  %arrayidx55.i.i = getelementptr inbounds i32* %0, i64 %indvars.iv97.i.i
  %124 = load i32* %arrayidx55.i.i, align 4, !tbaa !3
  store i32 %124, i32* %arrayidx43.i.i, align 4, !tbaa !3
  store i32 %122, i32* %arrayidx55.i.i, align 4, !tbaa !3
  %indvars.iv.next98.i.i = add i64 %indvars.iv97.i.i, 1
  %inc60.i.i = add nsw i32 %ltLo.0.ph2854.i.i, 1
  %inc61.i.i = add nsw i32 %unLo.037.i.i, 1
  %cmp3836.i.i = icmp slt i32 %unLo.037.i.i, %unHi.0.ph.i.i
  br i1 %cmp3836.i.i, label %if.end41.lr.ph.i.i, label %while.body69.preheader.i.i

if.end62.i.i:                                     ; preds = %if.end41.i.i
  %conv47.i.i = zext i8 %123 to i32
  %sub48.i.i = sub nsw i32 %conv47.i.i, %conv.i.i
  %cmp63.i.i = icmp sgt i32 %sub48.i.i, 0
  %inc67.i.i = add nsw i32 %unLo.037.i.i, 1
  br i1 %cmp63.i.i, label %while.body69.preheader.i.i, label %while.body37.i.i

while.body69.preheader.i.i:                       ; preds = %if.then51.i.i, %if.end62.i.i, %while.body37.i.i, %while.body37.outer.i.i
  %ltLo.0.ph2850.i.i = phi i32 [ %ltLo.0.ph.i.i, %while.body37.outer.i.i ], [ %ltLo.0.ph2854.i.i, %while.body37.i.i ], [ %ltLo.0.ph2854.i.i, %if.end62.i.i ], [ %inc60.i.i, %if.then51.i.i ]
  %unLo.0.lcssa.i.i = phi i32 [ %unLo.0.ph.i.i, %while.body37.outer.i.i ], [ %inc67.i.i, %while.body37.i.i ], [ %unLo.037.i.i, %if.end62.i.i ], [ %inc61.i.i, %if.then51.i.i ]
  %cmp701120.i.i = icmp sgt i32 %unLo.0.lcssa.i.i, %unHi.0.ph.i.i
  br i1 %cmp701120.i.i, label %while.end117.i.i, label %if.end73.lr.ph.lr.ph.i.i

if.end73.lr.ph.lr.ph.i.i:                         ; preds = %while.body69.preheader.i.i
  %125 = sext i32 %gtHi.0.ph.i.i to i64
  br label %if.end73.lr.ph.i.i

while.body69.i.i:                                 ; preds = %if.end95.i.i
  %126 = trunc i64 %indvars.iv.next110.i.i to i32
  %cmp70.i.i = icmp sgt i32 %unLo.0.lcssa.i.i, %126
  br i1 %cmp70.i.i, label %while.end117.i.i, label %if.end73.i.i

if.end73.i.i:                                     ; preds = %if.end73.lr.ph.i.i, %while.body69.i.i
  %indvars.iv109.i.i = phi i64 [ %130, %if.end73.lr.ph.i.i ], [ %indvars.iv.next110.i.i, %while.body69.i.i ]
  %unHi.112.i.i = phi i32 [ %unHi.1.ph22.i.i, %if.end73.lr.ph.i.i ], [ %dec100.i.i, %while.body69.i.i ]
  %arrayidx75.i.i = getelementptr inbounds i32* %0, i64 %indvars.iv109.i.i
  %127 = load i32* %arrayidx75.i.i, align 4, !tbaa !3
  %add76.i.i = add i32 %127, %93
  %idxprom77.i.i = zext i32 %add76.i.i to i64
  %arrayidx78.i.i = getelementptr inbounds i8* %1, i64 %idxprom77.i.i
  %128 = load i8* %arrayidx78.i.i, align 1, !tbaa !1
  %cmp81.i.i = icmp eq i8 %128, %call2.i.i
  br i1 %cmp81.i.i, label %if.then83.i.i, label %if.end95.i.i

if.then83.i.i:                                    ; preds = %if.end73.i.i
  %arrayidx88.i.i = getelementptr inbounds i32* %0, i64 %indvars.iv113.i.i
  %129 = load i32* %arrayidx88.i.i, align 4, !tbaa !3
  store i32 %129, i32* %arrayidx75.i.i, align 4, !tbaa !3
  store i32 %127, i32* %arrayidx88.i.i, align 4, !tbaa !3
  %indvars.iv.next114.i.i = add i64 %indvars.iv113.i.i, -1
  %dec93.i.i = add nsw i32 %gtHi.1.ph21.i.i, -1
  %dec94.i.i = add nsw i32 %unHi.112.i.i, -1
  %cmp7011.i.i = icmp sgt i32 %unLo.0.lcssa.i.i, %dec94.i.i
  br i1 %cmp7011.i.i, label %while.end117.i.i, label %if.end73.lr.ph.i.i

if.end73.lr.ph.i.i:                               ; preds = %if.then83.i.i, %if.end73.lr.ph.lr.ph.i.i
  %indvars.iv113.i.i = phi i64 [ %125, %if.end73.lr.ph.lr.ph.i.i ], [ %indvars.iv.next114.i.i, %if.then83.i.i ]
  %unHi.1.ph22.i.i = phi i32 [ %unHi.0.ph.i.i, %if.end73.lr.ph.lr.ph.i.i ], [ %dec94.i.i, %if.then83.i.i ]
  %gtHi.1.ph21.i.i = phi i32 [ %gtHi.0.ph.i.i, %if.end73.lr.ph.lr.ph.i.i ], [ %dec93.i.i, %if.then83.i.i ]
  %130 = sext i32 %unHi.1.ph22.i.i to i64
  br label %if.end73.i.i

if.end95.i.i:                                     ; preds = %if.end73.i.i
  %conv79.i.i = zext i8 %128 to i32
  %sub80.i.i = sub nsw i32 %conv79.i.i, %conv.i.i
  %cmp96.i.i = icmp slt i32 %sub80.i.i, 0
  %indvars.iv.next110.i.i = add i64 %indvars.iv109.i.i, -1
  %dec100.i.i = add nsw i32 %unHi.112.i.i, -1
  br i1 %cmp96.i.i, label %if.end105.i.i, label %while.body69.i.i

if.end105.i.i:                                    ; preds = %if.end95.i.i
  %idxprom107.i.i = sext i32 %unLo.0.lcssa.i.i to i64
  %arrayidx108.i.i = getelementptr inbounds i32* %0, i64 %idxprom107.i.i
  %131 = load i32* %arrayidx108.i.i, align 4, !tbaa !3
  store i32 %127, i32* %arrayidx108.i.i, align 4, !tbaa !3
  store i32 %131, i32* %arrayidx75.i.i, align 4, !tbaa !3
  %inc115.i.i = add nsw i32 %unLo.0.lcssa.i.i, 1
  br label %while.body37.outer.i.i

while.end117.i.i:                                 ; preds = %while.body69.preheader.i.i, %if.then83.i.i, %while.body69.i.i
  %gtHi.1.ph16.i.i = phi i32 [ %gtHi.1.ph21.i.i, %while.body69.i.i ], [ %dec93.i.i, %if.then83.i.i ], [ %gtHi.0.ph.i.i, %while.body69.preheader.i.i ]
  %unHi.16.i.i = phi i32 [ %dec100.i.i, %while.body69.i.i ], [ %dec94.i.i, %if.then83.i.i ], [ %unHi.0.ph.i.i, %while.body69.preheader.i.i ]
  %cmp118.i.i = icmp slt i32 %gtHi.1.ph16.i.i, %ltLo.0.ph2850.i.i
  br i1 %cmp118.i.i, label %if.then120.i.i, label %if.end129.i.i

if.then120.i.i:                                   ; preds = %while.end117.i.i
  store i32 %91, i32* %arrayidx7.i.i, align 4, !tbaa !3
  store i32 %92, i32* %arrayidx9.i.i, align 4, !tbaa !3
  %add125.i.i = add nsw i32 %93, 1
  store i32 %add125.i.i, i32* %arrayidx11.i.i, align 4, !tbaa !3
  br label %while.body.i.i

if.end129.i.i:                                    ; preds = %while.end117.i.i
  %sub130.i.i = sub nsw i32 %ltLo.0.ph2850.i.i, %91
  %sub131.i.i = sub nsw i32 %unLo.0.lcssa.i.i, %ltLo.0.ph2850.i.i
  %cmp132.i.i = icmp slt i32 %sub130.i.i, %sub131.i.i
  %sub130.sub131.i.i = select i1 %cmp132.i.i, i32 %sub130.i.i, i32 %sub131.i.i
  %cmp13839.i.i = icmp sgt i32 %sub130.sub131.i.i, 0
  br i1 %cmp13839.i.i, label %while.body140.lr.ph.i.i, label %while.end153.i.i

while.body140.lr.ph.i.i:                          ; preds = %if.end129.i.i
  %132 = add i32 %unLo.0.lcssa.i.i, 1
  %133 = add i32 %91, -1
  %134 = sub i32 %133, %ltLo.0.ph2850.i.i
  %135 = add i32 %ltLo.0.ph2850.i.i, -1
  %136 = sub i32 %135, %unLo.0.lcssa.i.i
  %137 = icmp sgt i32 %134, %136
  %smax.i.i = select i1 %137, i32 %134, i32 %136
  %138 = add i32 %132, %smax.i.i
  %139 = sext i32 %138 to i64
  %140 = load i32* %arrayidx20.i.i, align 4, !tbaa !3
  %arrayidx145.i813.i = getelementptr inbounds i32* %0, i64 %139
  %141 = load i32* %arrayidx145.i813.i, align 4, !tbaa !3
  store i32 %141, i32* %arrayidx20.i.i, align 4, !tbaa !3
  store i32 %140, i32* %arrayidx145.i813.i, align 4, !tbaa !3
  %dec152.i814.i = add nsw i32 %sub130.sub131.i.i, -1
  %cmp138.i815.i = icmp sgt i32 %dec152.i814.i, 0
  br i1 %cmp138.i815.i, label %while.body140.while.body140_crit_edge.i.i, label %while.end153.i.i

while.body140.while.body140_crit_edge.i.i:        ; preds = %while.body140.lr.ph.i.i, %while.body140.while.body140_crit_edge.i.i
  %dec152.i818.i = phi i32 [ %dec152.i.i, %while.body140.while.body140_crit_edge.i.i ], [ %dec152.i814.i, %while.body140.lr.ph.i.i ]
  %indvars.iv148.i817.i = phi i64 [ %indvars.iv.next149.i.i, %while.body140.while.body140_crit_edge.i.i ], [ %139, %while.body140.lr.ph.i.i ]
  %indvars.iv151.i816.i = phi i64 [ %indvars.iv.next152.i.i, %while.body140.while.body140_crit_edge.i.i ], [ %idxprom19.i.i, %while.body140.lr.ph.i.i ]
  %indvars.iv.next149.i.i = add i64 %indvars.iv148.i817.i, 1
  %indvars.iv.next152.i.i = add i64 %indvars.iv151.i816.i, 1
  %arrayidx143.i.i = getelementptr inbounds i32* %0, i64 %indvars.iv.next152.i.i
  %142 = load i32* %arrayidx143.i.i, align 4, !tbaa !3
  %arrayidx145.i.i = getelementptr inbounds i32* %0, i64 %indvars.iv.next149.i.i
  %143 = load i32* %arrayidx145.i.i, align 4, !tbaa !3
  store i32 %143, i32* %arrayidx143.i.i, align 4, !tbaa !3
  store i32 %142, i32* %arrayidx145.i.i, align 4, !tbaa !3
  %dec152.i.i = add nsw i32 %dec152.i818.i, -1
  %cmp138.i.i = icmp sgt i32 %dec152.i.i, 0
  br i1 %cmp138.i.i, label %while.body140.while.body140_crit_edge.i.i, label %while.end153.i.i

while.end153.i.i:                                 ; preds = %while.body140.while.body140_crit_edge.i.i, %while.body140.lr.ph.i.i, %if.end129.i.i
  %sub154.i.i = sub nsw i32 %92, %gtHi.1.ph16.i.i
  %sub155.i.i = sub nsw i32 %gtHi.1.ph16.i.i, %unHi.16.i.i
  %cmp156.i.i = icmp slt i32 %sub154.i.i, %sub155.i.i
  %sub154.sub155.i.i = select i1 %cmp156.i.i, i32 %sub154.i.i, i32 %sub155.i.i
  %cmp17044.i.i = icmp sgt i32 %sub154.sub155.i.i, 0
  br i1 %cmp17044.i.i, label %while.body172.lr.ph.i.i, label %while.end185.i.i

while.body172.lr.ph.i.i:                          ; preds = %while.end153.i.i
  %sub166.i.i = sub nsw i32 %92, %sub154.sub155.i.i
  %144 = sext i32 %unLo.0.lcssa.i.i to i64
  br label %while.body172.i.i

while.body172.i.i:                                ; preds = %while.body172.i.i, %while.body172.lr.ph.i.i
  %indvars.iv160.i.i = phi i64 [ %144, %while.body172.lr.ph.i.i ], [ %indvars.iv.next161.i.i, %while.body172.i.i ]
  %yyp2165.047.in.i.i = phi i32 [ %sub166.i.i, %while.body172.lr.ph.i.i ], [ %yyp2165.047.i.i, %while.body172.i.i ]
  %yyn168.046.i.i = phi i32 [ %sub154.sub155.i.i, %while.body172.lr.ph.i.i ], [ %dec184.i.i, %while.body172.i.i ]
  %yyp2165.047.i.i = add nsw i32 %yyp2165.047.in.i.i, 1
  %arrayidx175.i.i = getelementptr inbounds i32* %0, i64 %indvars.iv160.i.i
  %145 = load i32* %arrayidx175.i.i, align 4, !tbaa !3
  %idxprom176.i.i = sext i32 %yyp2165.047.i.i to i64
  %arrayidx177.i.i = getelementptr inbounds i32* %0, i64 %idxprom176.i.i
  %146 = load i32* %arrayidx177.i.i, align 4, !tbaa !3
  store i32 %146, i32* %arrayidx175.i.i, align 4, !tbaa !3
  store i32 %145, i32* %arrayidx177.i.i, align 4, !tbaa !3
  %indvars.iv.next161.i.i = add i64 %indvars.iv160.i.i, 1
  %dec184.i.i = add nsw i32 %yyn168.046.i.i, -1
  %cmp170.i.i = icmp sgt i32 %dec184.i.i, 0
  br i1 %cmp170.i.i, label %while.body172.i.i, label %while.end185.i.i

while.end185.i.i:                                 ; preds = %while.body172.i.i, %while.end153.i.i
  %add186.i.i = sub i32 %91, %ltLo.0.ph2850.i.i
  %sub187.i.i = add i32 %add186.i.i, %unLo.0.lcssa.i.i
  %sub188.i.i = add nsw i32 %sub187.i.i, -1
  %sub190.i.i = sub nsw i32 %92, %sub155.i.i
  %add191.i.i = add nsw i32 %sub190.i.i, 1
  %add202.i.i = add nsw i32 %93, 1
  %sub206.i.i = sub nsw i32 %sub188.i.i, %91
  %sub209.i.i = sub nsw i32 %92, %add191.i.i
  %cmp210.i.i = icmp slt i32 %sub206.i.i, %sub209.i.i
  %.add191.i.i = select i1 %cmp210.i.i, i32 %91, i32 %add191.i.i
  %add191..i.i = select i1 %cmp210.i.i, i32 %add191.i.i, i32 %91
  %sub188..i.i = select i1 %cmp210.i.i, i32 %sub188.i.i, i32 %92
  %.sub188.i.i = select i1 %cmp210.i.i, i32 %92, i32 %sub188.i.i
  %sub228.i.i = sub nsw i32 %sub188..i.i, %.add191.i.i
  %sub231.i.i = sub nsw i32 %sub190.i.i, %sub187.i.i
  %cmp232.i.i = icmp slt i32 %sub228.i.i, %sub231.i.i
  %sub187..add191.i.i = select i1 %cmp232.i.i, i32 %sub187.i.i, i32 %.add191.i.i
  %sub188..sub190.i.i = select i1 %cmp232.i.i, i32 %sub188..i.i, i32 %sub190.i.i
  %sub190.sub188..i.i = select i1 %cmp232.i.i, i32 %sub190.i.i, i32 %sub188..i.i
  %.add202.i.i = select i1 %cmp232.i.i, i32 %93, i32 %add202.i.i
  %add202..i.i = select i1 %cmp232.i.i, i32 %add202.i.i, i32 %93
  %.add191.sub187.i.i = select i1 %cmp232.i.i, i32 %.add191.i.i, i32 %sub187.i.i
  %sub251.i.i = sub nsw i32 %.sub188.i.i, %add191..i.i
  %sub254.i.i = sub nsw i32 %sub190.sub188..i.i, %sub187..add191.i.i
  %cmp255.i.i = icmp slt i32 %sub251.i.i, %sub254.i.i
  %add191..nextLo.sroa.1.1.i.i = select i1 %cmp255.i.i, i32 %add191..i.i, i32 %sub187..add191.i.i
  %nextLo.sroa.1.1.add191..i.i = select i1 %cmp255.i.i, i32 %sub187..add191.i.i, i32 %add191..i.i
  %.sub188.nextHi.sroa.1.1.i.i = select i1 %cmp255.i.i, i32 %.sub188.i.i, i32 %sub190.sub188..i.i
  %nextHi.sroa.1.1..sub188.i.i = select i1 %cmp255.i.i, i32 %sub190.sub188..i.i, i32 %.sub188.i.i
  %.nextD.sroa.1.1.i.i = select i1 %cmp255.i.i, i32 %93, i32 %add202..i.i
  %nextD.sroa.1.1..i.i = select i1 %cmp255.i.i, i32 %add202..i.i, i32 %93
  store i32 %nextLo.sroa.1.1.add191..i.i, i32* %arrayidx7.i.i, align 4, !tbaa !3
  store i32 %nextHi.sroa.1.1..sub188.i.i, i32* %arrayidx9.i.i, align 4, !tbaa !3
  store i32 %nextD.sroa.1.1..i.i, i32* %arrayidx11.i.i, align 4, !tbaa !3
  %idxprom283.i.i = sext i32 %sp.0.ph86.i.i to i64
  %arrayidx284.i.i = getelementptr inbounds [100 x i32]* %stackLo.i.i, i64 0, i64 %idxprom283.i.i
  store i32 %add191..nextLo.sroa.1.1.i.i, i32* %arrayidx284.i.i, align 4, !tbaa !3
  %arrayidx287.i.i = getelementptr inbounds [100 x i32]* %stackHi.i.i, i64 0, i64 %idxprom283.i.i
  store i32 %.sub188.nextHi.sroa.1.1.i.i, i32* %arrayidx287.i.i, align 4, !tbaa !3
  %arrayidx290.i.i = getelementptr inbounds [100 x i32]* %stackD.i.i, i64 0, i64 %idxprom283.i.i
  store i32 %.nextD.sroa.1.1.i.i, i32* %arrayidx290.i.i, align 4, !tbaa !3
  %inc291.i.i = add nsw i32 %sp.0.ph86.i.i, 1
  %idxprom293.i.i = sext i32 %inc291.i.i to i64
  %arrayidx294.i.i = getelementptr inbounds [100 x i32]* %stackLo.i.i, i64 0, i64 %idxprom293.i.i
  store i32 %.add191.sub187.i.i, i32* %arrayidx294.i.i, align 4, !tbaa !3
  %arrayidx297.i.i = getelementptr inbounds [100 x i32]* %stackHi.i.i, i64 0, i64 %idxprom293.i.i
  store i32 %sub188..sub190.i.i, i32* %arrayidx297.i.i, align 4, !tbaa !3
  %arrayidx300.i.i = getelementptr inbounds [100 x i32]* %stackD.i.i, i64 0, i64 %idxprom293.i.i
  store i32 %.add202.i.i, i32* %arrayidx300.i.i, align 4, !tbaa !3
  %inc301.i.i = add nsw i32 %sp.0.ph86.i.i, 2
  br label %while.cond.outer.backedge.i.i

mainQSort3.exit.i:                                ; preds = %mainSimpleSort.exit.i.i, %while.end89.i.i.i, %while.cond.outer.backedge.i.i
  %147 = phi i32 [ %.pre957.pre.i, %while.cond.outer.backedge.i.i ], [ %112, %while.end89.i.i.i ], [ %.pr.i.i, %mainSimpleSort.exit.i.i ]
  call void @llvm.lifetime.end(i64 400, i8* %80) #3
  call void @llvm.lifetime.end(i64 400, i8* %79) #3
  call void @llvm.lifetime.end(i64 400, i8* %78) #3
  %cmp316.i = icmp slt i32 %147, 0
  br i1 %cmp316.i, label %mainSort.exit, label %mainQSort3.exit.if.end321_crit_edge.i

mainQSort3.exit.if.end321_crit_edge.i:            ; preds = %mainQSort3.exit.i
  %sub313.i = add i32 %numQSorted.1821.i, 1
  %add314.i = sub i32 %sub313.i, %and297.i
  %add315.i = add i32 %add314.i, %sub302.i
  %.pre959.i = load i32* %arrayidx293.i, align 4, !tbaa !3
  br label %if.end321.i

if.end321.i:                                      ; preds = %mainQSort3.exit.if.end321_crit_edge.i, %if.then294.i, %if.then289.i
  %148 = phi i32 [ %84, %if.then289.i ], [ %147, %mainQSort3.exit.if.end321_crit_edge.i ], [ %84, %if.then294.i ]
  %149 = phi i32 [ %87, %if.then289.i ], [ %.pre959.i, %mainQSort3.exit.if.end321_crit_edge.i ], [ %87, %if.then294.i ]
  %numQSorted.2.i = phi i32 [ %numQSorted.1821.i, %if.then289.i ], [ %add315.i, %mainQSort3.exit.if.end321_crit_edge.i ], [ %numQSorted.1821.i, %if.then294.i ]
  %or324.i = or i32 %149, 2097152
  store i32 %or324.i, i32* %arrayidx293.i, align 4, !tbaa !3
  br label %for.inc326.i

for.inc326.i:                                     ; preds = %if.end321.i, %for.body286.i
  %150 = phi i32 [ %148, %if.end321.i ], [ %84, %for.body286.i ]
  %numQSorted.3.i = phi i32 [ %numQSorted.2.i, %if.end321.i ], [ %numQSorted.1821.i, %for.body286.i ]
  %indvars.iv.next.i = add i64 %indvars.iv.i, 1
  %151 = trunc i64 %indvars.iv.next.i to i32
  %cmp284.i = icmp slt i32 %151, 256
  br i1 %cmp284.i, label %for.body286.i, label %for.end328.i

for.end328.i:                                     ; preds = %for.inc326.i
  %idxprom329.i = sext i32 %82 to i64
  %arrayidx330.i = getelementptr inbounds [256 x i8]* %bigDone.i, i64 0, i64 %idxprom329.i
  %152 = load i8* %arrayidx330.i, align 1, !tbaa !1
  %tobool331.i = icmp eq i8 %152, 0
  br i1 %tobool331.i, label %for.body337.i, label %if.then332.i

if.then332.i:                                     ; preds = %for.end328.i
  call void @BZ2_bz__AssertH__fail(i32 1006) #5
  br label %for.body337.i

for.body337.i:                                    ; preds = %if.then332.i, %for.end328.i, %for.body337.i
  %indvars.iv899.i = phi i64 [ %indvars.iv.next900.i, %for.body337.i ], [ 0, %for.end328.i ], [ 0, %if.then332.i ]
  %153 = shl i64 %indvars.iv899.i, 8
  %154 = add nsw i64 %153, %idxprom329.i
  %arrayidx341.i = getelementptr inbounds i32* %2, i64 %154
  %155 = load i32* %arrayidx341.i, align 4, !tbaa !3
  %and342.i = and i32 %155, -2097153
  %arrayidx344.i = getelementptr inbounds [256 x i32]* %copyStart.i, i64 0, i64 %indvars.iv899.i
  store i32 %and342.i, i32* %arrayidx344.i, align 4, !tbaa !3
  %156 = add nsw i64 %154, 1
  %arrayidx349.i = getelementptr inbounds i32* %2, i64 %156
  %157 = load i32* %arrayidx349.i, align 4, !tbaa !3
  %and350.i = and i32 %157, -2097153
  %sub351.i = add i32 %and350.i, -1
  %arrayidx353.i = getelementptr inbounds [256 x i32]* %copyEnd.i, i64 0, i64 %indvars.iv899.i
  store i32 %sub351.i, i32* %arrayidx353.i, align 4, !tbaa !3
  %indvars.iv.next900.i = add i64 %indvars.iv899.i, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next900.i to i32
  %exitcond = icmp eq i32 %lftr.wideiv, 256
  br i1 %exitcond, label %for.end356.i, label %for.body337.i

for.end356.i:                                     ; preds = %for.body337.i
  %arrayidx359.i = getelementptr inbounds i32* %2, i64 %83
  %158 = load i32* %arrayidx359.i, align 4, !tbaa !3
  %and360.i = and i32 %158, -2097153
  %arrayidx363.i = getelementptr inbounds [256 x i32]* %copyStart.i, i64 0, i64 %idxprom329.i
  %159 = load i32* %arrayidx363.i, align 4, !tbaa !3
  %cmp364824.i = icmp slt i32 %and360.i, %159
  br i1 %cmp364824.i, label %for.body366.lr.ph.i, label %for.end389.i

for.body366.lr.ph.i:                              ; preds = %for.end356.i
  %160 = sext i32 %and360.i to i64
  br label %for.body366.i

for.body366.i:                                    ; preds = %for.inc387.i, %for.body366.lr.ph.i
  %161 = phi i32 [ %159, %for.body366.lr.ph.i ], [ %166, %for.inc387.i ]
  %indvars.iv904.i = phi i64 [ %160, %for.body366.lr.ph.i ], [ %indvars.iv.next905.i, %for.inc387.i ]
  %arrayidx368.i = getelementptr inbounds i32* %0, i64 %indvars.iv904.i
  %162 = load i32* %arrayidx368.i, align 4, !tbaa !3
  %sub369.i = add i32 %162, -1
  %cmp370.i = icmp slt i32 %sub369.i, 0
  %add373.i = select i1 %cmp370.i, i32 %3, i32 0
  %add373.sub369.i = add nsw i32 %add373.i, %sub369.i
  %idxprom375.i = sext i32 %add373.sub369.i to i64
  %arrayidx376.i = getelementptr inbounds i8* %1, i64 %idxprom375.i
  %163 = load i8* %arrayidx376.i, align 1, !tbaa !1
  %idxprom377.i = zext i8 %163 to i64
  %arrayidx378.i = getelementptr inbounds [256 x i8]* %bigDone.i, i64 0, i64 %idxprom377.i
  %164 = load i8* %arrayidx378.i, align 1, !tbaa !1
  %tobool379.i = icmp eq i8 %164, 0
  br i1 %tobool379.i, label %if.then380.i, label %for.inc387.i

if.then380.i:                                     ; preds = %for.body366.i
  %arrayidx382.i = getelementptr inbounds [256 x i32]* %copyStart.i, i64 0, i64 %idxprom377.i
  %165 = load i32* %arrayidx382.i, align 4, !tbaa !3
  %inc383.i = add nsw i32 %165, 1
  store i32 %inc383.i, i32* %arrayidx382.i, align 4, !tbaa !3
  %idxprom384.i = sext i32 %165 to i64
  %arrayidx385.i = getelementptr inbounds i32* %0, i64 %idxprom384.i
  store i32 %add373.sub369.i, i32* %arrayidx385.i, align 4, !tbaa !3
  %.pre956.i = load i32* %arrayidx363.i, align 4, !tbaa !3
  br label %for.inc387.i

for.inc387.i:                                     ; preds = %if.then380.i, %for.body366.i
  %166 = phi i32 [ %161, %for.body366.i ], [ %.pre956.i, %if.then380.i ]
  %indvars.iv.next905.i = add i64 %indvars.iv904.i, 1
  %167 = trunc i64 %indvars.iv.next905.i to i32
  %cmp364.i = icmp slt i32 %167, %166
  br i1 %cmp364.i, label %for.body366.i, label %for.end389.i

for.end389.i:                                     ; preds = %for.inc387.i, %for.end356.i
  %168 = phi i32 [ %159, %for.end356.i ], [ %166, %for.inc387.i ]
  %shl391.i = add i32 %shl290.i, 256
  %idxprom392.i = sext i32 %shl391.i to i64
  %arrayidx393.i = getelementptr inbounds i32* %2, i64 %idxprom392.i
  %169 = load i32* %arrayidx393.i, align 4, !tbaa !3
  %and394.i = and i32 %169, -2097153
  %j.7827.i = add i32 %and394.i, -1
  %arrayidx398.i = getelementptr inbounds [256 x i32]* %copyEnd.i, i64 0, i64 %idxprom329.i
  %170 = load i32* %arrayidx398.i, align 4, !tbaa !3
  %cmp399828.i = icmp sgt i32 %j.7827.i, %170
  br i1 %cmp399828.i, label %for.body401.i, label %for.end424.i

for.body401.i:                                    ; preds = %for.end389.i, %for.cond396.backedge.i
  %171 = phi i32 [ %175, %for.cond396.backedge.i ], [ %170, %for.end389.i ]
  %j.7829.i = phi i32 [ %j.7.i, %for.cond396.backedge.i ], [ %j.7827.i, %for.end389.i ]
  %idxprom402.i = sext i32 %j.7829.i to i64
  %arrayidx403.i = getelementptr inbounds i32* %0, i64 %idxprom402.i
  %172 = load i32* %arrayidx403.i, align 4, !tbaa !3
  %sub404.i = add i32 %172, -1
  %cmp405.i = icmp slt i32 %sub404.i, 0
  %add408.i = select i1 %cmp405.i, i32 %3, i32 0
  %add408.sub404.i = add nsw i32 %add408.i, %sub404.i
  %idxprom410.i = sext i32 %add408.sub404.i to i64
  %arrayidx411.i = getelementptr inbounds i8* %1, i64 %idxprom410.i
  %173 = load i8* %arrayidx411.i, align 1, !tbaa !1
  %idxprom412.i = zext i8 %173 to i64
  %arrayidx413.i = getelementptr inbounds [256 x i8]* %bigDone.i, i64 0, i64 %idxprom412.i
  %174 = load i8* %arrayidx413.i, align 1, !tbaa !1
  %tobool414.i = icmp eq i8 %174, 0
  br i1 %tobool414.i, label %if.then415.i, label %for.cond396.backedge.i

for.cond396.backedge.i:                           ; preds = %if.then415.i, %for.body401.i
  %175 = phi i32 [ %171, %for.body401.i ], [ %.pre955.i, %if.then415.i ]
  %j.7.i = add i32 %j.7829.i, -1
  %cmp399.i = icmp sgt i32 %j.7.i, %175
  br i1 %cmp399.i, label %for.body401.i, label %for.end424.i

if.then415.i:                                     ; preds = %for.body401.i
  %arrayidx417.i = getelementptr inbounds [256 x i32]* %copyEnd.i, i64 0, i64 %idxprom412.i
  %176 = load i32* %arrayidx417.i, align 4, !tbaa !3
  %dec418.i = add nsw i32 %176, -1
  store i32 %dec418.i, i32* %arrayidx417.i, align 4, !tbaa !3
  %idxprom419.i = sext i32 %176 to i64
  %arrayidx420.i = getelementptr inbounds i32* %0, i64 %idxprom419.i
  store i32 %add408.sub404.i, i32* %arrayidx420.i, align 4, !tbaa !3
  %.pre955.i = load i32* %arrayidx398.i, align 4, !tbaa !3
  br label %for.cond396.backedge.i

for.end424.i:                                     ; preds = %for.cond396.backedge.i, %for.end389.i
  %.lcssa826.i = phi i32 [ %170, %for.end389.i ], [ %175, %for.cond396.backedge.i ]
  %sub427.i = add nsw i32 %168, -1
  %cmp430.i = icmp eq i32 %sub427.i, %.lcssa826.i
  br i1 %cmp430.i, label %for.body446.i, label %lor.lhs.false.i

lor.lhs.false.i:                                  ; preds = %for.end424.i
  %cmp434.i = icmp eq i32 %168, 0
  %cmp439.i = icmp eq i32 %.lcssa826.i, %sub.i
  %or.cond.i = and i1 %cmp434.i, %cmp439.i
  br i1 %or.cond.i, label %for.body446.i, label %if.then441.i

if.then441.i:                                     ; preds = %lor.lhs.false.i
  call void @BZ2_bz__AssertH__fail(i32 1007) #5
  br label %for.body446.i

for.body446.i:                                    ; preds = %if.then441.i, %lor.lhs.false.i, %for.end424.i, %for.body446.i
  %indvars.iv907.i = phi i64 [ %indvars.iv.next908.i, %for.body446.i ], [ 0, %for.end424.i ], [ 0, %lor.lhs.false.i ], [ 0, %if.then441.i ]
  %177 = shl i64 %indvars.iv907.i, 8
  %178 = add nsw i64 %177, %idxprom329.i
  %arrayidx450.i = getelementptr inbounds i32* %2, i64 %178
  %179 = load i32* %arrayidx450.i, align 4, !tbaa !3
  %or451.i = or i32 %179, 2097152
  store i32 %or451.i, i32* %arrayidx450.i, align 4, !tbaa !3
  %indvars.iv.next908.i = add i64 %indvars.iv907.i, 1
  %lftr.wideiv175 = trunc i64 %indvars.iv.next908.i to i32
  %exitcond176 = icmp eq i32 %lftr.wideiv175, 256
  br i1 %exitcond176, label %for.end454.i, label %for.body446.i

for.end454.i:                                     ; preds = %for.body446.i
  store i8 1, i8* %arrayidx330.i, align 1, !tbaa !1
  %180 = trunc i64 %indvars.iv917.i to i32
  %cmp457.i = icmp slt i32 %180, 255
  br i1 %cmp457.i, label %if.then459.i, label %for.inc506.i

if.then459.i:                                     ; preds = %for.end454.i
  %181 = load i32* %arrayidx359.i, align 4, !tbaa !3
  %and463.i = and i32 %181, -2097153
  %182 = load i32* %arrayidx393.i, align 4, !tbaa !3
  %and468.i = and i32 %182, -2097153
  %sub469.i = sub i32 %and468.i, %and463.i
  br label %while.cond470.i

while.cond470.i:                                  ; preds = %while.cond470.i, %if.then459.i
  %shifts.0.i = phi i32 [ 0, %if.then459.i ], [ %inc475.i, %while.cond470.i ]
  %shr471.i = ashr i32 %sub469.i, %shifts.0.i
  %cmp472.i = icmp sgt i32 %shr471.i, 65534
  %inc475.i = add nsw i32 %shifts.0.i, 1
  br i1 %cmp472.i, label %while.cond470.i, label %while.end476.i

while.end476.i:                                   ; preds = %while.cond470.i
  %sub477.i = add nsw i32 %sub469.i, -1
  %cmp479832.i = icmp sgt i32 %sub469.i, 0
  br i1 %cmp479832.i, label %for.body481.lr.ph.i, label %for.end498.i

for.body481.lr.ph.i:                              ; preds = %while.end476.i
  %183 = sext i32 %sub469.i to i64
  %184 = sext i32 %and463.i to i64
  br label %for.body481.i

for.body481.i:                                    ; preds = %for.inc496.i, %for.body481.lr.ph.i
  %indvars.iv913.in.i = phi i64 [ %183, %for.body481.lr.ph.i ], [ %indvars.iv913.i, %for.inc496.i ]
  %indvars.iv913.i = add i64 %indvars.iv913.in.i, -1
  %185 = add nsw i64 %indvars.iv913.i, %184
  %arrayidx484.i = getelementptr inbounds i32* %0, i64 %185
  %186 = load i32* %arrayidx484.i, align 4, !tbaa !3
  %187 = trunc i64 %indvars.iv913.i to i32
  %shr485.i = ashr i32 %187, %shifts.0.i
  %conv486.i = trunc i32 %shr485.i to i16
  %idxprom487.i = sext i32 %186 to i64
  %arrayidx488.i = getelementptr inbounds i16* %8, i64 %idxprom487.i
  store i16 %conv486.i, i16* %arrayidx488.i, align 2, !tbaa !4
  %cmp489.i = icmp slt i32 %186, 34
  br i1 %cmp489.i, label %if.then491.i, label %for.inc496.i

if.then491.i:                                     ; preds = %for.body481.i
  %add492.i = add nsw i32 %186, %3
  %idxprom493.i = sext i32 %add492.i to i64
  %arrayidx494.i = getelementptr inbounds i16* %8, i64 %idxprom493.i
  store i16 %conv486.i, i16* %arrayidx494.i, align 2, !tbaa !4
  br label %for.inc496.i

for.inc496.i:                                     ; preds = %if.then491.i, %for.body481.i
  %cmp479.i = icmp sgt i32 %187, 0
  br i1 %cmp479.i, label %for.body481.i, label %for.end498.i

for.end498.i:                                     ; preds = %for.inc496.i, %while.end476.i
  %shr500.i = ashr i32 %sub477.i, %shifts.0.i
  %cmp501.i = icmp slt i32 %shr500.i, 65536
  br i1 %cmp501.i, label %for.inc506.i, label %if.then503.i

if.then503.i:                                     ; preds = %for.end498.i
  call void @BZ2_bz__AssertH__fail(i32 1002) #5
  br label %for.inc506.i

for.inc506.i:                                     ; preds = %if.then503.i, %for.end498.i, %for.end454.i
  %indvars.iv.next918.i = add i64 %indvars.iv917.i, 1
  %188 = trunc i64 %indvars.iv.next918.i to i32
  %cmp278.i = icmp slt i32 %188, 256
  br i1 %cmp278.i, label %for.body280.i, label %for.end508.i

for.end508.i:                                     ; preds = %for.inc506.i
  br i1 %cmp.i, label %if.then511.i, label %mainSort.exit

if.then511.i:                                     ; preds = %for.end508.i
  %189 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %sub512.i = sub nsw i32 %3, %numQSorted.3.i
  %call513.i = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %189, i8* getelementptr inbounds ([44 x i8]* @.str5, i64 0, i64 0), i32 %3, i32 %numQSorted.3.i, i32 %sub512.i) #5
  br label %mainSort.exit

mainSort.exit:                                    ; preds = %mainQSort3.exit.i, %for.end508.i, %if.then511.i
  %190 = phi i32 [ %150, %for.end508.i ], [ %150, %if.then511.i ], [ %147, %mainQSort3.exit.i ]
  call void @llvm.lifetime.end(i64 1024, i8* %11) #3
  call void @llvm.lifetime.end(i64 1024, i8* %10) #3
  call void @llvm.lifetime.end(i64 256, i8* %bigDone925.i) #3
  call void @llvm.lifetime.end(i64 1024, i8* %9) #3
  %cmp12 = icmp sgt i32 %4, 2
  br i1 %cmp12, label %if.then13, label %if.end21

if.then13:                                        ; preds = %mainSort.exit
  %191 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %sub14 = sub nsw i32 %mul, %190
  %conv = sitofp i32 %sub14 to float
  %cmp16 = icmp eq i32 %3, 0
  %192 = sitofp i32 %3 to float
  %conv18 = select i1 %cmp16, float 1.000000e+00, float %192
  %div19 = fdiv float %conv, %conv18
  %conv20 = fpext float %div19 to double
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %191, i8* getelementptr inbounds ([38 x i8]* @.str, i64 0, i64 0), i32 %sub14, i32 %3, double %conv20) #5
  br label %if.end21

if.end21:                                         ; preds = %if.then13, %mainSort.exit
  %cmp22 = icmp slt i32 %190, 0
  br i1 %cmp22, label %if.then24, label %if.end33

if.then24:                                        ; preds = %if.end21
  %cmp25 = icmp sgt i32 %4, 1
  br i1 %cmp25, label %if.then27, label %if.end29

if.then27:                                        ; preds = %if.then24
  %193 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %194 = call i64 @fwrite(i8* getelementptr inbounds ([54 x i8]* @.str1, i64 0, i64 0), i64 53, i64 1, %struct._IO_FILE* %193)
  br label %if.end29

if.end29:                                         ; preds = %if.then27, %if.then24
  %arr130 = getelementptr inbounds %struct.EState* %s, i64 0, i32 4
  %195 = load i32** %arr130, align 8, !tbaa !0
  %arr231 = getelementptr inbounds %struct.EState* %s, i64 0, i32 5
  %196 = load i32** %arr231, align 8, !tbaa !0
  call fastcc void @fallbackSort(i32* %195, i32* %196, i32* %2, i32 %3, i32 %4) #4
  br label %if.end33

if.end33:                                         ; preds = %if.end21, %if.end29, %if.then
  %origPtr = getelementptr inbounds %struct.EState* %s, i64 0, i32 7
  store i32 -1, i32* %origPtr, align 4, !tbaa !3
  %197 = load i32* %nblock4, align 4, !tbaa !3
  %cmp3590 = icmp sgt i32 %197, 0
  br i1 %cmp3590, label %for.body, label %if.then48

for.cond:                                         ; preds = %for.body
  %inc44 = add nsw i32 %i.191, 1
  %198 = trunc i64 %indvars.iv.next to i32
  %cmp35 = icmp slt i32 %198, %197
  br i1 %cmp35, label %for.body, label %if.then48

for.body:                                         ; preds = %if.end33, %for.cond
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.cond ], [ 0, %if.end33 ]
  %i.191 = phi i32 [ %inc44, %for.cond ], [ 0, %if.end33 ]
  %arrayidx38 = getelementptr inbounds i32* %0, i64 %indvars.iv
  %199 = load i32* %arrayidx38, align 4, !tbaa !3
  %cmp39 = icmp eq i32 %199, 0
  %indvars.iv.next = add i64 %indvars.iv, 1
  br i1 %cmp39, label %for.end, label %for.cond

for.end:                                          ; preds = %for.body
  store i32 %i.191, i32* %origPtr, align 4, !tbaa !3
  %cmp46 = icmp eq i32 %i.191, -1
  br i1 %cmp46, label %if.then48, label %if.end49

if.then48:                                        ; preds = %if.end33, %for.cond, %for.end
  call void @BZ2_bz__AssertH__fail(i32 1003) #5
  br label %if.end49

if.end49:                                         ; preds = %for.end, %if.then48
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @fallbackSort(i32* %fmap, i32* nocapture %eclass, i32* nocapture %bhtab, i32 %nblock, i32 %verb) #0 {
entry:
  %bhtab550 = bitcast i32* %bhtab to i8*
  %stackLo.i = alloca [100 x i32], align 16
  %stackHi.i = alloca [100 x i32], align 16
  %ftab = alloca [257 x i32], align 16
  %0 = bitcast [257 x i32]* %ftab to i8*
  %ftabCopy = alloca [256 x i32], align 16
  %1 = bitcast [256 x i32]* %ftabCopy to i8*
  call void @llvm.lifetime.start(i64 1028, i8* %0) #3
  call void @llvm.lifetime.start(i64 1024, i8* %1) #3
  %2 = bitcast i32* %eclass to i8*
  %cmp = icmp sgt i32 %verb, 3
  br i1 %cmp, label %if.then, label %for.cond.preheader

if.then:                                          ; preds = %entry
  %3 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %4 = call i64 @fwrite(i8* getelementptr inbounds ([28 x i8]* @.str3, i64 0, i64 0), i64 27, i64 1, %struct._IO_FILE* %3)
  br label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.then, %entry
  call void @llvm.memset.p0i8.i64(i8* %0, i8 0, i64 1028, i32 16, i1 false)
  %cmp3487 = icmp sgt i32 %nblock, 0
  br i1 %cmp3487, label %for.body4, label %for.cond13.preheader

for.cond2.for.cond13.preheader_crit_edge:         ; preds = %for.body4
  %arrayidx27.phi.trans.insert.phi.trans.insert = getelementptr inbounds [257 x i32]* %ftab, i64 0, i64 0
  %.pre.pre = load i32* %arrayidx27.phi.trans.insert.phi.trans.insert, align 16, !tbaa !3
  br label %for.cond13.preheader

for.cond13.preheader:                             ; preds = %for.cond.preheader, %for.cond2.for.cond13.preheader_crit_edge
  %.pre = phi i32 [ %.pre.pre, %for.cond2.for.cond13.preheader_crit_edge ], [ 0, %for.cond.preheader ]
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1, i8* %0, i64 1024, i32 16, i1 false)
  br label %for.body25

for.body4:                                        ; preds = %for.cond.preheader, %for.body4
  %indvars.iv564 = phi i64 [ %indvars.iv.next565, %for.body4 ], [ 0, %for.cond.preheader ]
  %arrayidx6 = getelementptr inbounds i8* %2, i64 %indvars.iv564
  %5 = load i8* %arrayidx6, align 1, !tbaa !1
  %idxprom7 = zext i8 %5 to i64
  %arrayidx8 = getelementptr inbounds [257 x i32]* %ftab, i64 0, i64 %idxprom7
  %6 = load i32* %arrayidx8, align 4, !tbaa !3
  %inc9 = add nsw i32 %6, 1
  store i32 %inc9, i32* %arrayidx8, align 4, !tbaa !3
  %indvars.iv.next565 = add i64 %indvars.iv564, 1
  %lftr.wideiv566 = trunc i64 %indvars.iv.next565 to i32
  %exitcond567 = icmp eq i32 %lftr.wideiv566, %nblock
  br i1 %exitcond567, label %for.cond2.for.cond13.preheader_crit_edge, label %for.body4

for.cond33.preheader:                             ; preds = %for.body25
  br i1 %cmp3487, label %for.body35, label %for.end47

for.body25:                                       ; preds = %for.body25, %for.cond13.preheader
  %7 = phi i32 [ %.pre, %for.cond13.preheader ], [ %add, %for.body25 ]
  %indvars.iv555 = phi i64 [ 1, %for.cond13.preheader ], [ %indvars.iv.next556, %for.body25 ]
  %arrayidx29 = getelementptr inbounds [257 x i32]* %ftab, i64 0, i64 %indvars.iv555
  %8 = load i32* %arrayidx29, align 4, !tbaa !3
  %add = add nsw i32 %8, %7
  store i32 %add, i32* %arrayidx29, align 4, !tbaa !3
  %indvars.iv.next556 = add i64 %indvars.iv555, 1
  %lftr.wideiv558 = trunc i64 %indvars.iv.next556 to i32
  %exitcond559 = icmp eq i32 %lftr.wideiv558, 257
  br i1 %exitcond559, label %for.cond33.preheader, label %for.body25

for.body35:                                       ; preds = %for.cond33.preheader, %for.body35
  %indvars.iv551 = phi i64 [ %indvars.iv.next552, %for.body35 ], [ 0, %for.cond33.preheader ]
  %arrayidx37 = getelementptr inbounds i8* %2, i64 %indvars.iv551
  %9 = load i8* %arrayidx37, align 1, !tbaa !1
  %idxprom38 = zext i8 %9 to i64
  %arrayidx39 = getelementptr inbounds [257 x i32]* %ftab, i64 0, i64 %idxprom38
  %10 = load i32* %arrayidx39, align 4, !tbaa !3
  %sub40 = add nsw i32 %10, -1
  store i32 %sub40, i32* %arrayidx39, align 4, !tbaa !3
  %idxprom43 = sext i32 %sub40 to i64
  %arrayidx44 = getelementptr inbounds i32* %fmap, i64 %idxprom43
  %11 = trunc i64 %indvars.iv551 to i32
  store i32 %11, i32* %arrayidx44, align 4, !tbaa !3
  %indvars.iv.next552 = add i64 %indvars.iv551, 1
  %lftr.wideiv553 = trunc i64 %indvars.iv.next552 to i32
  %exitcond554 = icmp eq i32 %lftr.wideiv553, %nblock
  br i1 %exitcond554, label %for.end47, label %for.body35

for.end47:                                        ; preds = %for.body35, %for.cond33.preheader
  %div = sdiv i32 %nblock, 32
  %add48 = add i32 %div, 2
  %cmp50481 = icmp sgt i32 %add48, 0
  br i1 %cmp50481, label %for.body52.lr.ph, label %for.body61

for.body52.lr.ph:                                 ; preds = %for.end47
  %12 = add i32 %div, 1
  %13 = zext i32 %12 to i64
  %14 = shl nuw nsw i64 %13, 2
  %15 = add i64 %14, 4
  call void @llvm.memset.p0i8.i64(i8* %bhtab550, i8 0, i64 %15, i32 4, i1 false)
  br label %for.body61

for.body61:                                       ; preds = %for.end47, %for.body52.lr.ph, %for.body61
  %indvars.iv542 = phi i64 [ %indvars.iv.next543, %for.body61 ], [ 0, %for.body52.lr.ph ], [ 0, %for.end47 ]
  %arrayidx63 = getelementptr inbounds [257 x i32]* %ftab, i64 0, i64 %indvars.iv542
  %16 = load i32* %arrayidx63, align 4, !tbaa !3
  %and = and i32 %16, 31
  %shl = shl i32 1, %and
  %shr = ashr i32 %16, 5
  %idxprom66 = sext i32 %shr to i64
  %arrayidx67 = getelementptr inbounds i32* %bhtab, i64 %idxprom66
  %17 = load i32* %arrayidx67, align 4, !tbaa !3
  %or = or i32 %shl, %17
  store i32 %or, i32* %arrayidx67, align 4, !tbaa !3
  %indvars.iv.next543 = add i64 %indvars.iv542, 1
  %lftr.wideiv544 = trunc i64 %indvars.iv.next543 to i32
  %exitcond545 = icmp eq i32 %lftr.wideiv544, 256
  br i1 %exitcond545, label %for.body74, label %for.body61

while.body.preheader:                             ; preds = %for.body74
  %18 = bitcast [100 x i32]* %stackLo.i to i8*
  %19 = bitcast [100 x i32]* %stackHi.i to i8*
  %arrayidx.i = getelementptr inbounds [100 x i32]* %stackLo.i, i64 0, i64 0
  %arrayidx2.i = getelementptr inbounds [100 x i32]* %stackHi.i, i64 0, i64 0
  br label %while.body

for.body74:                                       ; preds = %for.body61, %for.body74
  %i.7479 = phi i32 [ %inc97, %for.body74 ], [ 0, %for.body61 ]
  %mul = shl nsw i32 %i.7479, 1
  %add75 = add nsw i32 %mul, %nblock
  %and76 = and i32 %add75, 31
  %shl77 = shl i32 1, %and76
  %shr80 = ashr i32 %add75, 5
  %idxprom81 = sext i32 %shr80 to i64
  %arrayidx82 = getelementptr inbounds i32* %bhtab, i64 %idxprom81
  %20 = load i32* %arrayidx82, align 4, !tbaa !3
  %or83 = or i32 %20, %shl77
  store i32 %or83, i32* %arrayidx82, align 4, !tbaa !3
  %add86 = add nsw i32 %add75, 1
  %and87 = and i32 %add86, 31
  %shl88 = shl i32 1, %and87
  %neg = xor i32 %shl88, -1
  %shr92 = ashr i32 %add86, 5
  %idxprom93 = sext i32 %shr92 to i64
  %arrayidx94 = getelementptr inbounds i32* %bhtab, i64 %idxprom93
  %21 = load i32* %arrayidx94, align 4, !tbaa !3
  %and95 = and i32 %21, %neg
  store i32 %and95, i32* %arrayidx94, align 4, !tbaa !3
  %inc97 = add nsw i32 %i.7479, 1
  %exitcond541 = icmp eq i32 %inc97, 32
  br i1 %exitcond541, label %while.body.preheader, label %for.body74

while.body:                                       ; preds = %while.body.preheader, %if.end260
  %H.0 = phi i32 [ %mul261, %if.end260 ], [ 1, %while.body.preheader ]
  br i1 %cmp, label %if.then101, label %for.cond104.preheader

if.then101:                                       ; preds = %while.body
  %22 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call102 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %22, i8* getelementptr inbounds ([23 x i8]* @.str6, i64 0, i64 0), i32 %H.0) #5
  br label %for.cond104.preheader

for.cond104.preheader:                            ; preds = %if.then101, %while.body
  br i1 %cmp3487, label %for.body107, label %while.body130.outer

for.body107:                                      ; preds = %for.cond104.preheader, %for.body107
  %indvars.iv492 = phi i64 [ %indvars.iv.next493, %for.body107 ], [ 0, %for.cond104.preheader ]
  %j.0432 = phi i32 [ %j.0.i.8, %for.body107 ], [ 0, %for.cond104.preheader ]
  %23 = trunc i64 %indvars.iv492 to i32
  %shr108 = ashr i32 %23, 5
  %idxprom109 = sext i32 %shr108 to i64
  %arrayidx110 = getelementptr inbounds i32* %bhtab, i64 %idxprom109
  %24 = load i32* %arrayidx110, align 4, !tbaa !3
  %and111 = and i32 %23, 31
  %shl112 = shl i32 1, %and111
  %and113 = and i32 %24, %shl112
  %tobool = icmp eq i32 %and113, 0
  %j.0.i.8 = select i1 %tobool, i32 %j.0432, i32 %23
  %arrayidx117 = getelementptr inbounds i32* %fmap, i64 %indvars.iv492
  %25 = load i32* %arrayidx117, align 4, !tbaa !3
  %sub118 = sub i32 %25, %H.0
  %cmp119 = icmp slt i32 %sub118, 0
  %add122 = select i1 %cmp119, i32 %nblock, i32 0
  %k.0 = add nsw i32 %add122, %sub118
  %idxprom124 = sext i32 %k.0 to i64
  %arrayidx125 = getelementptr inbounds i32* %eclass, i64 %idxprom124
  store i32 %j.0.i.8, i32* %arrayidx125, align 4, !tbaa !3
  %indvars.iv.next493 = add i64 %indvars.iv492, 1
  %lftr.wideiv494 = trunc i64 %indvars.iv.next493 to i32
  %exitcond495 = icmp eq i32 %lftr.wideiv494, %nblock
  br i1 %exitcond495, label %while.body130.outer, label %for.body107

while.body130.outer:                              ; preds = %for.cond233.preheader, %for.inc251, %for.cond104.preheader, %for.body107
  %r.0.ph = phi i32 [ -1, %for.body107 ], [ -1, %for.cond104.preheader ], [ %sub222, %for.inc251 ], [ %sub222, %for.cond233.preheader ]
  %nNotDone.0.ph = phi i32 [ 0, %for.body107 ], [ 0, %for.cond104.preheader ], [ %add232, %for.inc251 ], [ %add232, %for.cond233.preheader ]
  br label %while.cond132

while.cond132:                                    ; preds = %if.end226, %while.body130.outer, %while.cond132
  %k.1.in = phi i32 [ %k.1, %while.cond132 ], [ %sub222, %if.end226 ], [ %r.0.ph, %while.body130.outer ]
  %k.1 = add nsw i32 %k.1.in, 1
  %shr133 = ashr i32 %k.1, 5
  %idxprom134 = sext i32 %shr133 to i64
  %arrayidx135 = getelementptr inbounds i32* %bhtab, i64 %idxprom134
  %26 = load i32* %arrayidx135, align 4, !tbaa !3
  %and136 = and i32 %k.1, 31
  %shl137 = shl i32 1, %and136
  %and138 = and i32 %shl137, %26
  %tobool139 = icmp eq i32 %and138, 0
  %tobool141 = icmp ne i32 %and136, 0
  %not.tobool139 = xor i1 %tobool139, true
  %.tobool141 = and i1 %tobool141, %not.tobool139
  br i1 %.tobool141, label %while.cond132, label %while.end

while.end:                                        ; preds = %while.cond132
  br i1 %tobool139, label %if.end172, label %while.cond152

while.cond152:                                    ; preds = %while.end, %while.cond152
  %k.2 = phi i32 [ %add159, %while.cond152 ], [ %k.1, %while.end ]
  %shr153 = ashr i32 %k.2, 5
  %idxprom154 = sext i32 %shr153 to i64
  %arrayidx155 = getelementptr inbounds i32* %bhtab, i64 %idxprom154
  %27 = load i32* %arrayidx155, align 4, !tbaa !3
  %cmp156 = icmp eq i32 %27, -1
  %add159 = add nsw i32 %k.2, 32
  br i1 %cmp156, label %while.cond152, label %while.cond161

while.cond161:                                    ; preds = %while.cond152, %while.cond161
  %k.3 = phi i32 [ %inc170, %while.cond161 ], [ %k.2, %while.cond152 ]
  %shr162 = ashr i32 %k.3, 5
  %idxprom163 = sext i32 %shr162 to i64
  %arrayidx164 = getelementptr inbounds i32* %bhtab, i64 %idxprom163
  %28 = load i32* %arrayidx164, align 4, !tbaa !3
  %and165 = and i32 %k.3, 31
  %shl166 = shl i32 1, %and165
  %and167 = and i32 %shl166, %28
  %tobool168 = icmp eq i32 %and167, 0
  %inc170 = add nsw i32 %k.3, 1
  br i1 %tobool168, label %if.end172, label %while.cond161

if.end172:                                        ; preds = %while.cond161, %while.end
  %k.4 = phi i32 [ %k.1, %while.end ], [ %k.3, %while.cond161 ]
  %sub173 = add nsw i32 %k.4, -1
  %cmp174 = icmp sgt i32 %k.4, %nblock
  br i1 %cmp174, label %while.end255, label %while.cond178

while.cond178:                                    ; preds = %if.end172, %while.cond178
  %k.5 = phi i32 [ %inc191, %while.cond178 ], [ %k.4, %if.end172 ]
  %shr179 = ashr i32 %k.5, 5
  %idxprom180 = sext i32 %shr179 to i64
  %arrayidx181 = getelementptr inbounds i32* %bhtab, i64 %idxprom180
  %29 = load i32* %arrayidx181, align 4, !tbaa !3
  %and182 = and i32 %k.5, 31
  %shl183 = shl i32 1, %and182
  %and184 = and i32 %shl183, %29
  %tobool185 = icmp eq i32 %and184, 0
  %tobool188 = icmp ne i32 %and182, 0
  %tobool188. = and i1 %tobool185, %tobool188
  %inc191 = add nsw i32 %k.5, 1
  br i1 %tobool188., label %while.cond178, label %while.end192

while.end192:                                     ; preds = %while.cond178
  br i1 %tobool185, label %while.cond201, label %if.end221

while.cond201:                                    ; preds = %while.end192, %while.cond201
  %k.6 = phi i32 [ %add208, %while.cond201 ], [ %k.5, %while.end192 ]
  %shr202 = ashr i32 %k.6, 5
  %idxprom203 = sext i32 %shr202 to i64
  %arrayidx204 = getelementptr inbounds i32* %bhtab, i64 %idxprom203
  %30 = load i32* %arrayidx204, align 4, !tbaa !3
  %cmp205 = icmp eq i32 %30, 0
  %add208 = add nsw i32 %k.6, 32
  br i1 %cmp205, label %while.cond201, label %while.cond210

while.cond210:                                    ; preds = %while.cond201, %while.cond210
  %k.7 = phi i32 [ %inc219, %while.cond210 ], [ %k.6, %while.cond201 ]
  %shr211 = ashr i32 %k.7, 5
  %idxprom212 = sext i32 %shr211 to i64
  %arrayidx213 = getelementptr inbounds i32* %bhtab, i64 %idxprom212
  %31 = load i32* %arrayidx213, align 4, !tbaa !3
  %and214 = and i32 %k.7, 31
  %shl215 = shl i32 1, %and214
  %and216 = and i32 %shl215, %31
  %lnot = icmp eq i32 %and216, 0
  %inc219 = add nsw i32 %k.7, 1
  br i1 %lnot, label %while.cond210, label %if.end221

if.end221:                                        ; preds = %while.cond210, %while.end192
  %k.8 = phi i32 [ %k.5, %while.end192 ], [ %k.7, %while.cond210 ]
  %sub222 = add nsw i32 %k.8, -1
  %cmp223 = icmp sgt i32 %k.8, %nblock
  br i1 %cmp223, label %while.end255, label %if.end226

if.end226:                                        ; preds = %if.end221
  %cmp227 = icmp sgt i32 %sub222, %sub173
  br i1 %cmp227, label %if.then229, label %while.cond132

if.then229:                                       ; preds = %if.end226
  %sub173.neg = sub i32 1, %k.4
  %sub230 = add i32 %nNotDone.0.ph, 1
  %add231 = add i32 %sub230, %sub173.neg
  %add232 = add i32 %add231, %sub222
  call void @llvm.lifetime.start(i64 400, i8* %18) #3
  call void @llvm.lifetime.start(i64 400, i8* %19) #3
  store i32 %sub173, i32* %arrayidx.i, align 16, !tbaa !3
  store i32 %sub222, i32* %arrayidx2.i, align 16, !tbaa !3
  br label %while.body.lr.ph.i

while.body.lr.ph.i:                               ; preds = %while.cond.outer.backedge.i, %if.then229
  %r.0.ph408.i = phi i32 [ 0, %if.then229 ], [ %rem.i, %while.cond.outer.backedge.i ]
  %sp.0.ph407.i = phi i32 [ 1, %if.then229 ], [ %sp.0.ph.be.i, %while.cond.outer.backedge.i ]
  %32 = sext i32 %sp.0.ph407.i to i64
  br label %while.body.i

while.body.i:                                     ; preds = %while.cond.backedge.i, %while.body.lr.ph.i
  %indvars.iv.i = phi i64 [ %32, %while.body.lr.ph.i ], [ %indvars.iv.next.i, %while.cond.backedge.i ]
  %sp.0406.i = phi i32 [ %sp.0.ph407.i, %while.body.lr.ph.i ], [ %dec.i, %while.cond.backedge.i ]
  %33 = trunc i64 %indvars.iv.i to i32
  %cmp3.i = icmp slt i32 %33, 100
  br i1 %cmp3.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %while.body.i
  call void @BZ2_bz__AssertH__fail(i32 1004) #5
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %while.body.i
  %indvars.iv.next.i = add i64 %indvars.iv.i, -1
  %dec.i = add nsw i32 %sp.0406.i, -1
  %arrayidx5.i = getelementptr inbounds [100 x i32]* %stackLo.i, i64 0, i64 %indvars.iv.next.i
  %34 = load i32* %arrayidx5.i, align 4, !tbaa !3
  %arrayidx7.i = getelementptr inbounds [100 x i32]* %stackHi.i, i64 0, i64 %indvars.iv.next.i
  %35 = load i32* %arrayidx7.i, align 4, !tbaa !3
  %sub.i = sub nsw i32 %35, %34
  %cmp8.i = icmp slt i32 %sub.i, 10
  br i1 %cmp8.i, label %if.then9.i, label %if.end10.i

if.then9.i:                                       ; preds = %if.end.i
  %cmp.i.i = icmp eq i32 %34, %35
  br i1 %cmp.i.i, label %while.cond.backedge.i, label %if.end.i.i

while.cond.backedge.i:                            ; preds = %for.end53.i.i, %for.cond29.preheader.i.i, %if.then9.i
  %36 = trunc i64 %indvars.iv.next.i to i32
  %cmp.i = icmp sgt i32 %36, 0
  br i1 %cmp.i, label %while.body.i, label %for.cond233.preheader

if.end.i.i:                                       ; preds = %if.then9.i
  %cmp2.i.i = icmp sgt i32 %sub.i, 3
  br i1 %cmp2.i.i, label %if.then3.i.i, label %for.cond29.preheader.i.i

for.cond29.preheader.i.i:                         ; preds = %for.end.i.i, %if.then3.i.i, %if.end.i.i
  %cmp30105.i.i = icmp sgt i32 %35, %34
  br i1 %cmp30105.i.i, label %for.body31.lr.ph.i.i, label %while.cond.backedge.i

for.body31.lr.ph.i.i:                             ; preds = %for.cond29.preheader.i.i
  %37 = sext i32 %35 to i64
  br label %for.body31.i.i

if.then3.i.i:                                     ; preds = %if.end.i.i
  %sub4.i.i = add i32 %35, -4
  %cmp5113.i.i = icmp slt i32 %sub4.i.i, %34
  br i1 %cmp5113.i.i, label %for.cond29.preheader.i.i, label %for.body.lr.ph.i.i

for.body.lr.ph.i.i:                               ; preds = %if.then3.i.i
  %38 = sext i32 %sub4.i.i to i64
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.end.i.i, %for.body.lr.ph.i.i
  %indvars.iv127.i.i = phi i64 [ %indvars.iv.next128.i.i, %for.end.i.i ], [ %38, %for.body.lr.ph.i.i ]
  %indvars.iv.i.i = phi i32 [ %indvars.iv.next.i.i, %for.end.i.i ], [ %35, %for.body.lr.ph.i.i ]
  %i.0114.i.i = phi i32 [ %dec.i.i, %for.end.i.i ], [ %sub4.i.i, %for.body.lr.ph.i.i ]
  %arrayidx.i.i = getelementptr inbounds i32* %fmap, i64 %indvars.iv127.i.i
  %39 = load i32* %arrayidx.i.i, align 4, !tbaa !3
  %idxprom6.i.i = sext i32 %39 to i64
  %arrayidx7.i.i = getelementptr inbounds i32* %eclass, i64 %idxprom6.i.i
  %40 = load i32* %arrayidx7.i.i, align 4, !tbaa !3
  %41 = add nsw i64 %indvars.iv127.i.i, 4
  %42 = trunc i64 %41 to i32
  %cmp9109.i.i = icmp sgt i32 %42, %35
  %43 = trunc i64 %indvars.iv127.i.i to i32
  br i1 %cmp9109.i.i, label %for.end.i.i, label %land.rhs.lr.ph.i.i

land.rhs.lr.ph.i.i:                               ; preds = %for.body.i.i
  %j.0108.i.i = add nsw i32 %i.0114.i.i, 4
  %44 = sext i32 %indvars.iv.i.i to i64
  br label %land.rhs.i.i

land.rhs.i.i:                                     ; preds = %for.body15.i.i, %land.rhs.lr.ph.i.i
  %indvars.iv124.i.i = phi i64 [ %44, %land.rhs.lr.ph.i.i ], [ %indvars.iv.next125.i.i, %for.body15.i.i ]
  %j.0111.i.i = phi i32 [ %j.0108.i.i, %land.rhs.lr.ph.i.i ], [ %j.0.i.i, %for.body15.i.i ]
  %j.0.in110.i.i = phi i32 [ %i.0114.i.i, %land.rhs.lr.ph.i.i ], [ %47, %for.body15.i.i ]
  %arrayidx11.i.i = getelementptr inbounds i32* %fmap, i64 %indvars.iv124.i.i
  %45 = load i32* %arrayidx11.i.i, align 4, !tbaa !3
  %idxprom12.i.i = zext i32 %45 to i64
  %arrayidx13.i.i = getelementptr inbounds i32* %eclass, i64 %idxprom12.i.i
  %46 = load i32* %arrayidx13.i.i, align 4, !tbaa !3
  %cmp14.i.i = icmp ugt i32 %40, %46
  br i1 %cmp14.i.i, label %for.body15.i.i, label %for.end.i.i

for.body15.i.i:                                   ; preds = %land.rhs.i.i
  %idxprom19.i.i = sext i32 %j.0.in110.i.i to i64
  %arrayidx20.i.i = getelementptr inbounds i32* %fmap, i64 %idxprom19.i.i
  store i32 %45, i32* %arrayidx20.i.i, align 4, !tbaa !3
  %j.0.i.i = add nsw i32 %j.0111.i.i, 4
  %cmp9.i.i = icmp sgt i32 %j.0.i.i, %35
  %indvars.iv.next125.i.i = add i64 %indvars.iv124.i.i, 4
  %47 = trunc i64 %indvars.iv124.i.i to i32
  br i1 %cmp9.i.i, label %for.end.i.i, label %land.rhs.i.i

for.end.i.i:                                      ; preds = %for.body15.i.i, %land.rhs.i.i, %for.body.i.i
  %j.0.in.lcssa.i.i = phi i32 [ %43, %for.body.i.i ], [ %j.0111.i.i, %for.body15.i.i ], [ %j.0.in110.i.i, %land.rhs.i.i ]
  %idxprom23.i.i = sext i32 %j.0.in.lcssa.i.i to i64
  %arrayidx24.i.i = getelementptr inbounds i32* %fmap, i64 %idxprom23.i.i
  store i32 %39, i32* %arrayidx24.i.i, align 4, !tbaa !3
  %dec.i.i = add nsw i32 %i.0114.i.i, -1
  %cmp5.i.i = icmp sgt i32 %43, %34
  %indvars.iv.next.i.i = add i32 %indvars.iv.i.i, -1
  %indvars.iv.next128.i.i = add i64 %indvars.iv127.i.i, -1
  br i1 %cmp5.i.i, label %for.body.i.i, label %for.cond29.preheader.i.i

for.body31.i.i:                                   ; preds = %for.end53.i.i, %for.body31.lr.ph.i.i
  %indvars.iv120.i.i = phi i64 [ %37, %for.body31.lr.ph.i.i ], [ %indvars.iv.next121.i.i, %for.end53.i.i ]
  %i.1107.in.i.i = phi i32 [ %35, %for.body31.lr.ph.i.i ], [ %i.1107.i.i, %for.end53.i.i ]
  %indvars.iv.next121.i.i = add i64 %indvars.iv120.i.i, -1
  %i.1107.i.i = add nsw i32 %i.1107.in.i.i, -1
  %arrayidx33.i.i = getelementptr inbounds i32* %fmap, i64 %indvars.iv.next121.i.i
  %48 = load i32* %arrayidx33.i.i, align 4, !tbaa !3
  %idxprom34.i.i = sext i32 %48 to i64
  %arrayidx35.i.i = getelementptr inbounds i32* %eclass, i64 %idxprom34.i.i
  %49 = load i32* %arrayidx35.i.i, align 4, !tbaa !3
  %cmp38102.i.i = icmp sgt i32 %i.1107.in.i.i, %35
  br i1 %cmp38102.i.i, label %for.end53.i.i, label %land.rhs39.i.i

land.rhs39.i.i:                                   ; preds = %for.body31.i.i, %for.body46.i.i
  %indvars.iv116.i.i = phi i64 [ %indvars.iv.next117.i.i, %for.body46.i.i ], [ %indvars.iv120.i.i, %for.body31.i.i ]
  %j.1103.i.i = phi i32 [ %inc.i.i, %for.body46.i.i ], [ %i.1107.in.i.i, %for.body31.i.i ]
  %arrayidx41.i.i = getelementptr inbounds i32* %fmap, i64 %indvars.iv116.i.i
  %50 = load i32* %arrayidx41.i.i, align 4, !tbaa !3
  %idxprom42.i.i = zext i32 %50 to i64
  %arrayidx43.i.i = getelementptr inbounds i32* %eclass, i64 %idxprom42.i.i
  %51 = load i32* %arrayidx43.i.i, align 4, !tbaa !3
  %cmp44.i.i = icmp ugt i32 %49, %51
  br i1 %cmp44.i.i, label %for.body46.i.i, label %for.end53.i.i

for.body46.i.i:                                   ; preds = %land.rhs39.i.i
  %52 = add nsw i64 %indvars.iv116.i.i, -1
  %arrayidx51.i.i = getelementptr inbounds i32* %fmap, i64 %52
  store i32 %50, i32* %arrayidx51.i.i, align 4, !tbaa !3
  %inc.i.i = add nsw i32 %j.1103.i.i, 1
  %53 = trunc i64 %indvars.iv116.i.i to i32
  %cmp38.i.i = icmp slt i32 %53, %35
  %indvars.iv.next117.i.i = add i64 %indvars.iv116.i.i, 1
  br i1 %cmp38.i.i, label %land.rhs39.i.i, label %for.end53.i.i

for.end53.i.i:                                    ; preds = %for.body46.i.i, %land.rhs39.i.i, %for.body31.i.i
  %j.1.lcssa.i.i = phi i32 [ %i.1107.in.i.i, %for.body31.i.i ], [ %inc.i.i, %for.body46.i.i ], [ %j.1103.i.i, %land.rhs39.i.i ]
  %sub54.i.i = add nsw i32 %j.1.lcssa.i.i, -1
  %idxprom55.i.i = sext i32 %sub54.i.i to i64
  %arrayidx56.i.i = getelementptr inbounds i32* %fmap, i64 %idxprom55.i.i
  store i32 %48, i32* %arrayidx56.i.i, align 4, !tbaa !3
  %54 = trunc i64 %indvars.iv.next121.i.i to i32
  %cmp30.i.i = icmp sgt i32 %54, %34
  br i1 %cmp30.i.i, label %for.body31.i.i, label %while.cond.backedge.i

if.end10.i:                                       ; preds = %if.end.i
  %mul.i = mul i32 %r.0.ph408.i, 7621
  %add.i = add i32 %mul.i, 1
  %rem.i = and i32 %add.i, 32767
  %rem11.i = urem i32 %rem.i, 3
  switch i32 %rem11.i, label %if.else25.i [
    i32 0, label %if.then13.i
    i32 1, label %if.then19.i
  ]

if.then13.i:                                      ; preds = %if.end10.i
  %idxprom14.i = sext i32 %34 to i64
  %arrayidx15.i = getelementptr inbounds i32* %fmap, i64 %idxprom14.i
  %55 = load i32* %arrayidx15.i, align 4, !tbaa !3
  %idxprom16.i = zext i32 %55 to i64
  %arrayidx17.i = getelementptr inbounds i32* %eclass, i64 %idxprom16.i
  br label %if.end31.i

if.then19.i:                                      ; preds = %if.end10.i
  %add20.i = add nsw i32 %35, %34
  %shr.i = ashr i32 %add20.i, 1
  %idxprom21.i = sext i32 %shr.i to i64
  %arrayidx22.i = getelementptr inbounds i32* %fmap, i64 %idxprom21.i
  %56 = load i32* %arrayidx22.i, align 4, !tbaa !3
  %idxprom23.i = zext i32 %56 to i64
  %arrayidx24.i = getelementptr inbounds i32* %eclass, i64 %idxprom23.i
  br label %if.end31.i

if.else25.i:                                      ; preds = %if.end10.i
  %idxprom26.i = sext i32 %35 to i64
  %arrayidx27.i = getelementptr inbounds i32* %fmap, i64 %idxprom26.i
  %57 = load i32* %arrayidx27.i, align 4, !tbaa !3
  %idxprom28.i = zext i32 %57 to i64
  %arrayidx29.i = getelementptr inbounds i32* %eclass, i64 %idxprom28.i
  br label %if.end31.i

if.end31.i:                                       ; preds = %if.else25.i, %if.then19.i, %if.then13.i
  %med.0.in.i = phi i32* [ %arrayidx17.i, %if.then13.i ], [ %arrayidx24.i, %if.then19.i ], [ %arrayidx29.i, %if.else25.i ]
  %med.0.i = load i32* %med.0.in.i, align 4
  br label %while.body35.outer.i

while.body35.outer.i:                             ; preds = %if.end92.i, %if.end31.i
  %gtHi.0.ph.i = phi i32 [ %35, %if.end31.i ], [ %gtHi.1.ph350.i, %if.end92.i ]
  %ltLo.0.ph.i = phi i32 [ %34, %if.end31.i ], [ %ltLo.0.ph357379.i, %if.end92.i ]
  %unHi.0.ph.i = phi i32 [ %35, %if.end31.i ], [ %dec88.i, %if.end92.i ]
  %unLo.0.ph.i = phi i32 [ %34, %if.end31.i ], [ %inc102.i, %if.end92.i ]
  %cmp36365382.i = icmp sgt i32 %unLo.0.ph.i, %unHi.0.ph.i
  br i1 %cmp36365382.i, label %while.body62.preheader.i, label %if.end38.lr.ph.lr.ph.i

if.end38.lr.ph.lr.ph.i:                           ; preds = %while.body35.outer.i
  %58 = sext i32 %ltLo.0.ph.i to i64
  br label %if.end38.lr.ph.i

if.end38.lr.ph.i:                                 ; preds = %if.then45.i, %if.end38.lr.ph.lr.ph.i
  %indvars.iv428.i = phi i64 [ %indvars.iv.next429.i, %if.then45.i ], [ %58, %if.end38.lr.ph.lr.ph.i ]
  %unLo.0.ph359384.i = phi i32 [ %inc55.i, %if.then45.i ], [ %unLo.0.ph.i, %if.end38.lr.ph.lr.ph.i ]
  %ltLo.0.ph357383.i = phi i32 [ %inc54.i, %if.then45.i ], [ %ltLo.0.ph.i, %if.end38.lr.ph.lr.ph.i ]
  %59 = sext i32 %unLo.0.ph359384.i to i64
  br label %if.end38.i

while.body35.i:                                   ; preds = %if.end56.i
  %indvars.iv.next425.i = add i64 %indvars.iv424.i, 1
  %60 = trunc i64 %indvars.iv424.i to i32
  %cmp36.i = icmp slt i32 %60, %unHi.0.ph.i
  br i1 %cmp36.i, label %if.end38.i, label %while.body62.preheader.i

if.end38.i:                                       ; preds = %while.body35.i, %if.end38.lr.ph.i
  %indvars.iv424.i = phi i64 [ %indvars.iv.next425.i, %while.body35.i ], [ %59, %if.end38.lr.ph.i ]
  %unLo.0366.i = phi i32 [ %inc60.i, %while.body35.i ], [ %unLo.0.ph359384.i, %if.end38.lr.ph.i ]
  %arrayidx40.i = getelementptr inbounds i32* %fmap, i64 %indvars.iv424.i
  %61 = load i32* %arrayidx40.i, align 4, !tbaa !3
  %idxprom41.i = zext i32 %61 to i64
  %arrayidx42.i = getelementptr inbounds i32* %eclass, i64 %idxprom41.i
  %62 = load i32* %arrayidx42.i, align 4, !tbaa !3
  %cmp44.i = icmp eq i32 %62, %med.0.i
  br i1 %cmp44.i, label %if.then45.i, label %if.end56.i

if.then45.i:                                      ; preds = %if.end38.i
  %arrayidx49.i = getelementptr inbounds i32* %fmap, i64 %indvars.iv428.i
  %63 = load i32* %arrayidx49.i, align 4, !tbaa !3
  store i32 %63, i32* %arrayidx40.i, align 4, !tbaa !3
  store i32 %61, i32* %arrayidx49.i, align 4, !tbaa !3
  %indvars.iv.next429.i = add i64 %indvars.iv428.i, 1
  %inc54.i = add nsw i32 %ltLo.0.ph357383.i, 1
  %inc55.i = add nsw i32 %unLo.0366.i, 1
  %cmp36365.i = icmp slt i32 %unLo.0366.i, %unHi.0.ph.i
  br i1 %cmp36365.i, label %if.end38.lr.ph.i, label %while.body62.preheader.i

if.end56.i:                                       ; preds = %if.end38.i
  %sub43.i = sub nsw i32 %62, %med.0.i
  %cmp57.i = icmp sgt i32 %sub43.i, 0
  %inc60.i = add nsw i32 %unLo.0366.i, 1
  br i1 %cmp57.i, label %while.body62.preheader.i, label %while.body35.i

while.body62.preheader.i:                         ; preds = %if.then45.i, %if.end56.i, %while.body35.i, %while.body35.outer.i
  %ltLo.0.ph357379.i = phi i32 [ %ltLo.0.ph.i, %while.body35.outer.i ], [ %ltLo.0.ph357383.i, %while.body35.i ], [ %ltLo.0.ph357383.i, %if.end56.i ], [ %inc54.i, %if.then45.i ]
  %unLo.0.lcssa.i = phi i32 [ %unLo.0.ph.i, %while.body35.outer.i ], [ %inc60.i, %while.body35.i ], [ %unLo.0366.i, %if.end56.i ], [ %inc55.i, %if.then45.i ]
  %cmp63340349.i = icmp sgt i32 %unLo.0.lcssa.i, %unHi.0.ph.i
  br i1 %cmp63340349.i, label %while.end104.i, label %if.end65.lr.ph.lr.ph.i

if.end65.lr.ph.lr.ph.i:                           ; preds = %while.body62.preheader.i
  %64 = sext i32 %gtHi.0.ph.i to i64
  br label %if.end65.lr.ph.i

while.body62.i:                                   ; preds = %if.end84.i
  %65 = trunc i64 %indvars.iv.next441.i to i32
  %cmp63.i = icmp sgt i32 %unLo.0.lcssa.i, %65
  br i1 %cmp63.i, label %while.end104.i, label %if.end65.i

if.end65.i:                                       ; preds = %if.end65.lr.ph.i, %while.body62.i
  %indvars.iv440.i = phi i64 [ %69, %if.end65.lr.ph.i ], [ %indvars.iv.next441.i, %while.body62.i ]
  %unHi.1341.i = phi i32 [ %unHi.1.ph351.i, %if.end65.lr.ph.i ], [ %dec88.i, %while.body62.i ]
  %arrayidx67.i = getelementptr inbounds i32* %fmap, i64 %indvars.iv440.i
  %66 = load i32* %arrayidx67.i, align 4, !tbaa !3
  %idxprom68.i = zext i32 %66 to i64
  %arrayidx69.i = getelementptr inbounds i32* %eclass, i64 %idxprom68.i
  %67 = load i32* %arrayidx69.i, align 4, !tbaa !3
  %cmp71.i = icmp eq i32 %67, %med.0.i
  br i1 %cmp71.i, label %if.then72.i, label %if.end84.i

if.then72.i:                                      ; preds = %if.end65.i
  %arrayidx77.i = getelementptr inbounds i32* %fmap, i64 %indvars.iv444.i
  %68 = load i32* %arrayidx77.i, align 4, !tbaa !3
  store i32 %68, i32* %arrayidx67.i, align 4, !tbaa !3
  store i32 %66, i32* %arrayidx77.i, align 4, !tbaa !3
  %indvars.iv.next445.i = add i64 %indvars.iv444.i, -1
  %dec82.i = add nsw i32 %gtHi.1.ph350.i, -1
  %dec83.i = add nsw i32 %unHi.1341.i, -1
  %cmp63340.i = icmp sgt i32 %unLo.0.lcssa.i, %dec83.i
  br i1 %cmp63340.i, label %while.end104.i, label %if.end65.lr.ph.i

if.end65.lr.ph.i:                                 ; preds = %if.then72.i, %if.end65.lr.ph.lr.ph.i
  %indvars.iv444.i = phi i64 [ %64, %if.end65.lr.ph.lr.ph.i ], [ %indvars.iv.next445.i, %if.then72.i ]
  %unHi.1.ph351.i = phi i32 [ %unHi.0.ph.i, %if.end65.lr.ph.lr.ph.i ], [ %dec83.i, %if.then72.i ]
  %gtHi.1.ph350.i = phi i32 [ %gtHi.0.ph.i, %if.end65.lr.ph.lr.ph.i ], [ %dec82.i, %if.then72.i ]
  %69 = sext i32 %unHi.1.ph351.i to i64
  br label %if.end65.i

if.end84.i:                                       ; preds = %if.end65.i
  %sub70.i = sub nsw i32 %67, %med.0.i
  %cmp85.i = icmp slt i32 %sub70.i, 0
  %indvars.iv.next441.i = add i64 %indvars.iv440.i, -1
  %dec88.i = add nsw i32 %unHi.1341.i, -1
  br i1 %cmp85.i, label %if.end92.i, label %while.body62.i

if.end92.i:                                       ; preds = %if.end84.i
  %idxprom94.i = sext i32 %unLo.0.lcssa.i to i64
  %arrayidx95.i = getelementptr inbounds i32* %fmap, i64 %idxprom94.i
  %70 = load i32* %arrayidx95.i, align 4, !tbaa !3
  store i32 %66, i32* %arrayidx95.i, align 4, !tbaa !3
  store i32 %70, i32* %arrayidx67.i, align 4, !tbaa !3
  %inc102.i = add nsw i32 %unLo.0.lcssa.i, 1
  br label %while.body35.outer.i

while.end104.i:                                   ; preds = %while.body62.preheader.i, %if.then72.i, %while.body62.i
  %gtHi.1.ph345.i = phi i32 [ %gtHi.1.ph350.i, %while.body62.i ], [ %dec82.i, %if.then72.i ], [ %gtHi.0.ph.i, %while.body62.preheader.i ]
  %unHi.1335.i = phi i32 [ %dec88.i, %while.body62.i ], [ %dec83.i, %if.then72.i ], [ %unHi.0.ph.i, %while.body62.preheader.i ]
  %cmp105.i = icmp slt i32 %gtHi.1.ph345.i, %ltLo.0.ph357379.i
  br i1 %cmp105.i, label %while.cond.outer.backedge.i, label %if.end107.i

while.cond.outer.backedge.i:                      ; preds = %if.else180.i, %if.then169.i, %while.end104.i
  %sp.0.ph.be.i = phi i32 [ %dec.i, %while.end104.i ], [ %inc179.i, %if.then169.i ], [ %inc190.i, %if.else180.i ]
  %cmp405.i = icmp sgt i32 %sp.0.ph.be.i, 0
  br i1 %cmp405.i, label %while.body.lr.ph.i, label %for.cond233.preheader

if.end107.i:                                      ; preds = %while.end104.i
  %sub108.i = sub nsw i32 %ltLo.0.ph357379.i, %34
  %sub109.i = sub nsw i32 %unLo.0.lcssa.i, %ltLo.0.ph357379.i
  %cmp110.i = icmp slt i32 %sub108.i, %sub109.i
  %sub108.sub109.i = select i1 %cmp110.i, i32 %sub108.i, i32 %sub109.i
  %cmp115368.i = icmp sgt i32 %sub108.sub109.i, 0
  br i1 %cmp115368.i, label %while.body116.lr.ph.i, label %while.end129.i

while.body116.lr.ph.i:                            ; preds = %if.end107.i
  %71 = add i32 %unLo.0.lcssa.i, 1
  %72 = add i32 %ltLo.0.ph357379.i, -1
  %73 = sub i32 %72, %unLo.0.lcssa.i
  %74 = add i32 %34, -1
  %75 = sub i32 %74, %ltLo.0.ph357379.i
  %76 = icmp sgt i32 %73, %75
  %smax.i = select i1 %76, i32 %73, i32 %75
  %77 = add i32 %71, %smax.i
  %78 = sext i32 %77 to i64
  %79 = sext i32 %34 to i64
  br label %while.body116.i

while.body116.i:                                  ; preds = %while.body116.i, %while.body116.lr.ph.i
  %indvars.iv467.i = phi i64 [ %79, %while.body116.lr.ph.i ], [ %indvars.iv.next468.i, %while.body116.i ]
  %indvars.iv464.i = phi i64 [ %78, %while.body116.lr.ph.i ], [ %indvars.iv.next465.i, %while.body116.i ]
  %yyn.0371.i = phi i32 [ %sub108.sub109.i, %while.body116.lr.ph.i ], [ %dec128.i, %while.body116.i ]
  %arrayidx119.i = getelementptr inbounds i32* %fmap, i64 %indvars.iv467.i
  %80 = load i32* %arrayidx119.i, align 4, !tbaa !3
  %arrayidx121.i = getelementptr inbounds i32* %fmap, i64 %indvars.iv464.i
  %81 = load i32* %arrayidx121.i, align 4, !tbaa !3
  store i32 %81, i32* %arrayidx119.i, align 4, !tbaa !3
  store i32 %80, i32* %arrayidx121.i, align 4, !tbaa !3
  %indvars.iv.next468.i = add i64 %indvars.iv467.i, 1
  %dec128.i = add nsw i32 %yyn.0371.i, -1
  %cmp115.i = icmp sgt i32 %dec128.i, 0
  %indvars.iv.next465.i = add i64 %indvars.iv464.i, 1
  br i1 %cmp115.i, label %while.body116.i, label %while.end129.i

while.end129.i:                                   ; preds = %while.body116.i, %if.end107.i
  %sub130.i = sub nsw i32 %35, %gtHi.1.ph345.i
  %sub131.i = sub nsw i32 %gtHi.1.ph345.i, %unHi.1335.i
  %cmp132.i = icmp slt i32 %sub130.i, %sub131.i
  %sub130.sub131.i = select i1 %cmp132.i, i32 %sub130.i, i32 %sub131.i
  %cmp145373.i = icmp sgt i32 %sub130.sub131.i, 0
  br i1 %cmp145373.i, label %while.body146.lr.ph.i, label %while.end159.i

while.body146.lr.ph.i:                            ; preds = %while.end129.i
  %sub141.i = sub nsw i32 %35, %sub130.sub131.i
  %82 = sext i32 %unLo.0.lcssa.i to i64
  br label %while.body146.i

while.body146.i:                                  ; preds = %while.body146.i, %while.body146.lr.ph.i
  %indvars.iv476.i = phi i64 [ %82, %while.body146.lr.ph.i ], [ %indvars.iv.next477.i, %while.body146.i ]
  %yyp2140.0376.in.i = phi i32 [ %sub141.i, %while.body146.lr.ph.i ], [ %yyp2140.0376.i, %while.body146.i ]
  %yyn143.0375.i = phi i32 [ %sub130.sub131.i, %while.body146.lr.ph.i ], [ %dec158.i, %while.body146.i ]
  %yyp2140.0376.i = add nsw i32 %yyp2140.0376.in.i, 1
  %arrayidx149.i = getelementptr inbounds i32* %fmap, i64 %indvars.iv476.i
  %83 = load i32* %arrayidx149.i, align 4, !tbaa !3
  %idxprom150.i = sext i32 %yyp2140.0376.i to i64
  %arrayidx151.i = getelementptr inbounds i32* %fmap, i64 %idxprom150.i
  %84 = load i32* %arrayidx151.i, align 4, !tbaa !3
  store i32 %84, i32* %arrayidx149.i, align 4, !tbaa !3
  store i32 %83, i32* %arrayidx151.i, align 4, !tbaa !3
  %indvars.iv.next477.i = add i64 %indvars.iv476.i, 1
  %dec158.i = add nsw i32 %yyn143.0375.i, -1
  %cmp145.i = icmp sgt i32 %dec158.i, 0
  br i1 %cmp145.i, label %while.body146.i, label %while.end159.i

while.end159.i:                                   ; preds = %while.body146.i, %while.end129.i
  %add160.i = add i32 %34, -1
  %sub161.i = sub i32 %add160.i, %ltLo.0.ph357379.i
  %sub162.i = add i32 %sub161.i, %unLo.0.lcssa.i
  %sub164.i = sub nsw i32 %35, %sub131.i
  %add165.i = add nsw i32 %sub164.i, 1
  %sub166.i = sub nsw i32 %sub162.i, %34
  %sub167.i = sub nsw i32 %35, %add165.i
  %cmp168.i = icmp sgt i32 %sub166.i, %sub167.i
  br i1 %cmp168.i, label %if.then169.i, label %if.else180.i

if.then169.i:                                     ; preds = %while.end159.i
  store i32 %34, i32* %arrayidx5.i, align 4, !tbaa !3
  store i32 %sub162.i, i32* %arrayidx7.i, align 4, !tbaa !3
  %idxprom175.i = sext i32 %sp.0406.i to i64
  %arrayidx176.i = getelementptr inbounds [100 x i32]* %stackLo.i, i64 0, i64 %idxprom175.i
  store i32 %add165.i, i32* %arrayidx176.i, align 4, !tbaa !3
  %arrayidx178.i = getelementptr inbounds [100 x i32]* %stackHi.i, i64 0, i64 %idxprom175.i
  store i32 %35, i32* %arrayidx178.i, align 4, !tbaa !3
  %inc179.i = add nsw i32 %sp.0406.i, 1
  br label %while.cond.outer.backedge.i

if.else180.i:                                     ; preds = %while.end159.i
  store i32 %add165.i, i32* %arrayidx5.i, align 4, !tbaa !3
  store i32 %35, i32* %arrayidx7.i, align 4, !tbaa !3
  %idxprom186.i = sext i32 %sp.0406.i to i64
  %arrayidx187.i = getelementptr inbounds [100 x i32]* %stackLo.i, i64 0, i64 %idxprom186.i
  store i32 %34, i32* %arrayidx187.i, align 4, !tbaa !3
  %arrayidx189.i = getelementptr inbounds [100 x i32]* %stackHi.i, i64 0, i64 %idxprom186.i
  store i32 %sub162.i, i32* %arrayidx189.i, align 4, !tbaa !3
  %inc190.i = add nsw i32 %sp.0406.i, 1
  br label %while.cond.outer.backedge.i

for.cond233.preheader:                            ; preds = %while.cond.outer.backedge.i, %while.cond.backedge.i
  %cmp234475 = icmp sgt i32 %sub173, %sub222
  br i1 %cmp234475, label %while.body130.outer, label %for.body236.lr.ph

for.body236.lr.ph:                                ; preds = %for.cond233.preheader
  %85 = sext i32 %sub173 to i64
  br label %for.body236

for.body236:                                      ; preds = %for.inc251, %for.body236.lr.ph
  %indvars.iv539 = phi i64 [ %indvars.iv.next540, %for.inc251 ], [ %85, %for.body236.lr.ph ]
  %cc.0476 = phi i32 [ %cc.1, %for.inc251 ], [ -1, %for.body236.lr.ph ]
  %arrayidx238 = getelementptr inbounds i32* %fmap, i64 %indvars.iv539
  %86 = load i32* %arrayidx238, align 4, !tbaa !3
  %idxprom239 = zext i32 %86 to i64
  %arrayidx240 = getelementptr inbounds i32* %eclass, i64 %idxprom239
  %87 = load i32* %arrayidx240, align 4, !tbaa !3
  %cmp241 = icmp eq i32 %cc.0476, %87
  %.pre573 = trunc i64 %indvars.iv539 to i32
  br i1 %cmp241, label %for.inc251, label %if.then243

if.then243:                                       ; preds = %for.body236
  %and244 = and i32 %.pre573, 31
  %shl245 = shl i32 1, %and244
  %shr246 = ashr i32 %.pre573, 5
  %idxprom247 = sext i32 %shr246 to i64
  %arrayidx248 = getelementptr inbounds i32* %bhtab, i64 %idxprom247
  %88 = load i32* %arrayidx248, align 4, !tbaa !3
  %or249 = or i32 %88, %shl245
  store i32 %or249, i32* %arrayidx248, align 4, !tbaa !3
  br label %for.inc251

for.inc251:                                       ; preds = %for.body236, %if.then243
  %cc.1 = phi i32 [ %87, %if.then243 ], [ %cc.0476, %for.body236 ]
  %indvars.iv.next540 = add i64 %indvars.iv539, 1
  %cmp234 = icmp slt i32 %.pre573, %sub222
  br i1 %cmp234, label %for.body236, label %while.body130.outer

while.end255:                                     ; preds = %if.end221, %if.end172
  br i1 %cmp, label %if.then258, label %if.end260

if.then258:                                       ; preds = %while.end255
  %89 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call259 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %89, i8* getelementptr inbounds ([24 x i8]* @.str7, i64 0, i64 0), i32 %nNotDone.0.ph) #5
  br label %if.end260

if.end260:                                        ; preds = %if.then258, %while.end255
  %mul261 = shl nsw i32 %H.0, 1
  %cmp262 = icmp sgt i32 %mul261, %nblock
  %cmp264 = icmp eq i32 %nNotDone.0.ph, 0
  %or.cond = or i1 %cmp262, %cmp264
  br i1 %or.cond, label %while.end268, label %while.body

while.end268:                                     ; preds = %if.end260
  br i1 %cmp, label %if.then271, label %for.cond274.preheader

if.then271:                                       ; preds = %while.end268
  %90 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %91 = call i64 @fwrite(i8* getelementptr inbounds ([34 x i8]* @.str8, i64 0, i64 0), i64 33, i64 1, %struct._IO_FILE* %90)
  br label %for.cond274.preheader

for.cond274.preheader:                            ; preds = %if.then271, %while.end268
  br i1 %cmp3487, label %while.cond278.preheader, label %if.end299

while.cond278.preheader:                          ; preds = %for.cond274.preheader, %while.end285
  %indvars.iv490 = phi i64 [ %indvars.iv.next491, %while.end285 ], [ 0, %for.cond274.preheader ]
  %j.2429 = phi i32 [ %j.3, %while.end285 ], [ 0, %for.cond274.preheader ]
  %92 = sext i32 %j.2429 to i64
  br label %while.cond278

while.cond278:                                    ; preds = %while.cond278, %while.cond278.preheader
  %indvars.iv = phi i64 [ %indvars.iv.next, %while.cond278 ], [ %92, %while.cond278.preheader ]
  %j.3 = phi i32 [ %inc284, %while.cond278 ], [ %j.2429, %while.cond278.preheader ]
  %arrayidx280 = getelementptr inbounds [256 x i32]* %ftabCopy, i64 0, i64 %indvars.iv
  %93 = load i32* %arrayidx280, align 4, !tbaa !3
  %cmp281 = icmp eq i32 %93, 0
  %indvars.iv.next = add i64 %indvars.iv, 1
  %inc284 = add nsw i32 %j.3, 1
  br i1 %cmp281, label %while.cond278, label %while.end285

while.end285:                                     ; preds = %while.cond278
  %dec = add nsw i32 %93, -1
  store i32 %dec, i32* %arrayidx280, align 4, !tbaa !3
  %conv288 = trunc i32 %j.3 to i8
  %arrayidx290 = getelementptr inbounds i32* %fmap, i64 %indvars.iv490
  %94 = load i32* %arrayidx290, align 4, !tbaa !3
  %idxprom291 = zext i32 %94 to i64
  %arrayidx292 = getelementptr inbounds i8* %2, i64 %idxprom291
  store i8 %conv288, i8* %arrayidx292, align 1, !tbaa !1
  %indvars.iv.next491 = add i64 %indvars.iv490, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next491 to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %nblock
  br i1 %exitcond, label %for.end295, label %while.cond278.preheader

for.end295:                                       ; preds = %while.end285
  %cmp296 = icmp slt i32 %j.3, 256
  br i1 %cmp296, label %if.end299, label %if.then298

if.then298:                                       ; preds = %for.end295
  call void @BZ2_bz__AssertH__fail(i32 1005) #5
  br label %if.end299

if.end299:                                        ; preds = %for.cond274.preheader, %if.then298, %for.end295
  call void @llvm.lifetime.end(i64 1024, i8* %1) #3
  call void @llvm.lifetime.end(i64 1028, i8* %0) #3
  ret void
}

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #1

; Function Attrs: optsize
declare void @BZ2_bz__AssertH__fail(i32) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #3

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #3

; Function Attrs: nounwind optsize uwtable
define internal fastcc zeroext i8 @mainGtU(i32 %i1, i32 %i2, i8* %block, i16* nocapture %quadrant, i32 %nblock, i32* nocapture %budget) #0 {
entry:
  %idxprom = zext i32 %i1 to i64
  %arrayidx = getelementptr inbounds i8* %block, i64 %idxprom
  %0 = load i8* %arrayidx, align 1, !tbaa !1
  %idxprom1 = zext i32 %i2 to i64
  %arrayidx2 = getelementptr inbounds i8* %block, i64 %idxprom1
  %1 = load i8* %arrayidx2, align 1, !tbaa !1
  %cmp = icmp eq i8 %0, %1
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %cmp7 = icmp ugt i8 %0, %1
  %conv9 = zext i1 %cmp7 to i8
  br label %return

if.end:                                           ; preds = %entry
  %inc = add i32 %i1, 1
  %inc10 = add i32 %i2, 1
  %idxprom11 = zext i32 %inc to i64
  %arrayidx12 = getelementptr inbounds i8* %block, i64 %idxprom11
  %2 = load i8* %arrayidx12, align 1, !tbaa !1
  %idxprom13 = zext i32 %inc10 to i64
  %arrayidx14 = getelementptr inbounds i8* %block, i64 %idxprom13
  %3 = load i8* %arrayidx14, align 1, !tbaa !1
  %cmp17 = icmp eq i8 %2, %3
  br i1 %cmp17, label %if.end25, label %if.then19

if.then19:                                        ; preds = %if.end
  %cmp22 = icmp ugt i8 %2, %3
  %conv24 = zext i1 %cmp22 to i8
  br label %return

if.end25:                                         ; preds = %if.end
  %inc26 = add i32 %i1, 2
  %inc27 = add i32 %i2, 2
  %idxprom28 = zext i32 %inc26 to i64
  %arrayidx29 = getelementptr inbounds i8* %block, i64 %idxprom28
  %4 = load i8* %arrayidx29, align 1, !tbaa !1
  %idxprom30 = zext i32 %inc27 to i64
  %arrayidx31 = getelementptr inbounds i8* %block, i64 %idxprom30
  %5 = load i8* %arrayidx31, align 1, !tbaa !1
  %cmp34 = icmp eq i8 %4, %5
  br i1 %cmp34, label %if.end42, label %if.then36

if.then36:                                        ; preds = %if.end25
  %cmp39 = icmp ugt i8 %4, %5
  %conv41 = zext i1 %cmp39 to i8
  br label %return

if.end42:                                         ; preds = %if.end25
  %inc43 = add i32 %i1, 3
  %inc44 = add i32 %i2, 3
  %idxprom45 = zext i32 %inc43 to i64
  %arrayidx46 = getelementptr inbounds i8* %block, i64 %idxprom45
  %6 = load i8* %arrayidx46, align 1, !tbaa !1
  %idxprom47 = zext i32 %inc44 to i64
  %arrayidx48 = getelementptr inbounds i8* %block, i64 %idxprom47
  %7 = load i8* %arrayidx48, align 1, !tbaa !1
  %cmp51 = icmp eq i8 %6, %7
  br i1 %cmp51, label %if.end59, label %if.then53

if.then53:                                        ; preds = %if.end42
  %cmp56 = icmp ugt i8 %6, %7
  %conv58 = zext i1 %cmp56 to i8
  br label %return

if.end59:                                         ; preds = %if.end42
  %inc60 = add i32 %i1, 4
  %inc61 = add i32 %i2, 4
  %idxprom62 = zext i32 %inc60 to i64
  %arrayidx63 = getelementptr inbounds i8* %block, i64 %idxprom62
  %8 = load i8* %arrayidx63, align 1, !tbaa !1
  %idxprom64 = zext i32 %inc61 to i64
  %arrayidx65 = getelementptr inbounds i8* %block, i64 %idxprom64
  %9 = load i8* %arrayidx65, align 1, !tbaa !1
  %cmp68 = icmp eq i8 %8, %9
  br i1 %cmp68, label %if.end76, label %if.then70

if.then70:                                        ; preds = %if.end59
  %cmp73 = icmp ugt i8 %8, %9
  %conv75 = zext i1 %cmp73 to i8
  br label %return

if.end76:                                         ; preds = %if.end59
  %inc77 = add i32 %i1, 5
  %inc78 = add i32 %i2, 5
  %idxprom79 = zext i32 %inc77 to i64
  %arrayidx80 = getelementptr inbounds i8* %block, i64 %idxprom79
  %10 = load i8* %arrayidx80, align 1, !tbaa !1
  %idxprom81 = zext i32 %inc78 to i64
  %arrayidx82 = getelementptr inbounds i8* %block, i64 %idxprom81
  %11 = load i8* %arrayidx82, align 1, !tbaa !1
  %cmp85 = icmp eq i8 %10, %11
  br i1 %cmp85, label %if.end93, label %if.then87

if.then87:                                        ; preds = %if.end76
  %cmp90 = icmp ugt i8 %10, %11
  %conv92 = zext i1 %cmp90 to i8
  br label %return

if.end93:                                         ; preds = %if.end76
  %inc94 = add i32 %i1, 6
  %inc95 = add i32 %i2, 6
  %idxprom96 = zext i32 %inc94 to i64
  %arrayidx97 = getelementptr inbounds i8* %block, i64 %idxprom96
  %12 = load i8* %arrayidx97, align 1, !tbaa !1
  %idxprom98 = zext i32 %inc95 to i64
  %arrayidx99 = getelementptr inbounds i8* %block, i64 %idxprom98
  %13 = load i8* %arrayidx99, align 1, !tbaa !1
  %cmp102 = icmp eq i8 %12, %13
  br i1 %cmp102, label %if.end110, label %if.then104

if.then104:                                       ; preds = %if.end93
  %cmp107 = icmp ugt i8 %12, %13
  %conv109 = zext i1 %cmp107 to i8
  br label %return

if.end110:                                        ; preds = %if.end93
  %inc111 = add i32 %i1, 7
  %inc112 = add i32 %i2, 7
  %idxprom113 = zext i32 %inc111 to i64
  %arrayidx114 = getelementptr inbounds i8* %block, i64 %idxprom113
  %14 = load i8* %arrayidx114, align 1, !tbaa !1
  %idxprom115 = zext i32 %inc112 to i64
  %arrayidx116 = getelementptr inbounds i8* %block, i64 %idxprom115
  %15 = load i8* %arrayidx116, align 1, !tbaa !1
  %cmp119 = icmp eq i8 %14, %15
  br i1 %cmp119, label %if.end127, label %if.then121

if.then121:                                       ; preds = %if.end110
  %cmp124 = icmp ugt i8 %14, %15
  %conv126 = zext i1 %cmp124 to i8
  br label %return

if.end127:                                        ; preds = %if.end110
  %inc128 = add i32 %i1, 8
  %inc129 = add i32 %i2, 8
  %idxprom130 = zext i32 %inc128 to i64
  %arrayidx131 = getelementptr inbounds i8* %block, i64 %idxprom130
  %16 = load i8* %arrayidx131, align 1, !tbaa !1
  %idxprom132 = zext i32 %inc129 to i64
  %arrayidx133 = getelementptr inbounds i8* %block, i64 %idxprom132
  %17 = load i8* %arrayidx133, align 1, !tbaa !1
  %cmp136 = icmp eq i8 %16, %17
  br i1 %cmp136, label %if.end144, label %if.then138

if.then138:                                       ; preds = %if.end127
  %cmp141 = icmp ugt i8 %16, %17
  %conv143 = zext i1 %cmp141 to i8
  br label %return

if.end144:                                        ; preds = %if.end127
  %inc145 = add i32 %i1, 9
  %inc146 = add i32 %i2, 9
  %idxprom147 = zext i32 %inc145 to i64
  %arrayidx148 = getelementptr inbounds i8* %block, i64 %idxprom147
  %18 = load i8* %arrayidx148, align 1, !tbaa !1
  %idxprom149 = zext i32 %inc146 to i64
  %arrayidx150 = getelementptr inbounds i8* %block, i64 %idxprom149
  %19 = load i8* %arrayidx150, align 1, !tbaa !1
  %cmp153 = icmp eq i8 %18, %19
  br i1 %cmp153, label %if.end161, label %if.then155

if.then155:                                       ; preds = %if.end144
  %cmp158 = icmp ugt i8 %18, %19
  %conv160 = zext i1 %cmp158 to i8
  br label %return

if.end161:                                        ; preds = %if.end144
  %inc162 = add i32 %i1, 10
  %inc163 = add i32 %i2, 10
  %idxprom164 = zext i32 %inc162 to i64
  %arrayidx165 = getelementptr inbounds i8* %block, i64 %idxprom164
  %20 = load i8* %arrayidx165, align 1, !tbaa !1
  %idxprom166 = zext i32 %inc163 to i64
  %arrayidx167 = getelementptr inbounds i8* %block, i64 %idxprom166
  %21 = load i8* %arrayidx167, align 1, !tbaa !1
  %cmp170 = icmp eq i8 %20, %21
  br i1 %cmp170, label %if.end178, label %if.then172

if.then172:                                       ; preds = %if.end161
  %cmp175 = icmp ugt i8 %20, %21
  %conv177 = zext i1 %cmp175 to i8
  br label %return

if.end178:                                        ; preds = %if.end161
  %inc179 = add i32 %i1, 11
  %inc180 = add i32 %i2, 11
  %idxprom181 = zext i32 %inc179 to i64
  %arrayidx182 = getelementptr inbounds i8* %block, i64 %idxprom181
  %22 = load i8* %arrayidx182, align 1, !tbaa !1
  %idxprom183 = zext i32 %inc180 to i64
  %arrayidx184 = getelementptr inbounds i8* %block, i64 %idxprom183
  %23 = load i8* %arrayidx184, align 1, !tbaa !1
  %cmp187 = icmp eq i8 %22, %23
  br i1 %cmp187, label %if.end195, label %if.then189

if.then189:                                       ; preds = %if.end178
  %cmp192 = icmp ugt i8 %22, %23
  %conv194 = zext i1 %cmp192 to i8
  br label %return

if.end195:                                        ; preds = %if.end178
  %inc196 = add i32 %i1, 12
  %inc197 = add i32 %i2, 12
  %add = add i32 %nblock, 8
  br label %do.body

do.body:                                          ; preds = %if.end451, %if.end195
  %i2.addr.0 = phi i32 [ %inc197, %if.end195 ], [ %i2.addr.1, %if.end451 ]
  %i1.addr.0 = phi i32 [ %inc196, %if.end195 ], [ %inc452.sub, %if.end451 ]
  %k.0 = phi i32 [ %add, %if.end195 ], [ %sub463, %if.end451 ]
  %idxprom198 = zext i32 %i1.addr.0 to i64
  %arrayidx199 = getelementptr inbounds i8* %block, i64 %idxprom198
  %24 = load i8* %arrayidx199, align 1, !tbaa !1
  %idxprom200 = zext i32 %i2.addr.0 to i64
  %arrayidx201 = getelementptr inbounds i8* %block, i64 %idxprom200
  %25 = load i8* %arrayidx201, align 1, !tbaa !1
  %cmp204 = icmp eq i8 %24, %25
  br i1 %cmp204, label %if.end212, label %if.then206

if.then206:                                       ; preds = %do.body
  %cmp209 = icmp ugt i8 %24, %25
  %conv211 = zext i1 %cmp209 to i8
  br label %return

if.end212:                                        ; preds = %do.body
  %arrayidx214 = getelementptr inbounds i16* %quadrant, i64 %idxprom198
  %26 = load i16* %arrayidx214, align 2, !tbaa !4
  %arrayidx216 = getelementptr inbounds i16* %quadrant, i64 %idxprom200
  %27 = load i16* %arrayidx216, align 2, !tbaa !4
  %cmp219 = icmp eq i16 %26, %27
  br i1 %cmp219, label %if.end227, label %if.then221

if.then221:                                       ; preds = %if.end212
  %cmp224 = icmp ugt i16 %26, %27
  %conv226 = zext i1 %cmp224 to i8
  br label %return

if.end227:                                        ; preds = %if.end212
  %inc228 = add i32 %i1.addr.0, 1
  %inc229 = add i32 %i2.addr.0, 1
  %idxprom230 = zext i32 %inc228 to i64
  %arrayidx231 = getelementptr inbounds i8* %block, i64 %idxprom230
  %28 = load i8* %arrayidx231, align 1, !tbaa !1
  %idxprom232 = zext i32 %inc229 to i64
  %arrayidx233 = getelementptr inbounds i8* %block, i64 %idxprom232
  %29 = load i8* %arrayidx233, align 1, !tbaa !1
  %cmp236 = icmp eq i8 %28, %29
  br i1 %cmp236, label %if.end244, label %if.then238

if.then238:                                       ; preds = %if.end227
  %cmp241 = icmp ugt i8 %28, %29
  %conv243 = zext i1 %cmp241 to i8
  br label %return

if.end244:                                        ; preds = %if.end227
  %arrayidx246 = getelementptr inbounds i16* %quadrant, i64 %idxprom230
  %30 = load i16* %arrayidx246, align 2, !tbaa !4
  %arrayidx248 = getelementptr inbounds i16* %quadrant, i64 %idxprom232
  %31 = load i16* %arrayidx248, align 2, !tbaa !4
  %cmp251 = icmp eq i16 %30, %31
  br i1 %cmp251, label %if.end259, label %if.then253

if.then253:                                       ; preds = %if.end244
  %cmp256 = icmp ugt i16 %30, %31
  %conv258 = zext i1 %cmp256 to i8
  br label %return

if.end259:                                        ; preds = %if.end244
  %inc260 = add i32 %i1.addr.0, 2
  %inc261 = add i32 %i2.addr.0, 2
  %idxprom262 = zext i32 %inc260 to i64
  %arrayidx263 = getelementptr inbounds i8* %block, i64 %idxprom262
  %32 = load i8* %arrayidx263, align 1, !tbaa !1
  %idxprom264 = zext i32 %inc261 to i64
  %arrayidx265 = getelementptr inbounds i8* %block, i64 %idxprom264
  %33 = load i8* %arrayidx265, align 1, !tbaa !1
  %cmp268 = icmp eq i8 %32, %33
  br i1 %cmp268, label %if.end276, label %if.then270

if.then270:                                       ; preds = %if.end259
  %cmp273 = icmp ugt i8 %32, %33
  %conv275 = zext i1 %cmp273 to i8
  br label %return

if.end276:                                        ; preds = %if.end259
  %arrayidx278 = getelementptr inbounds i16* %quadrant, i64 %idxprom262
  %34 = load i16* %arrayidx278, align 2, !tbaa !4
  %arrayidx280 = getelementptr inbounds i16* %quadrant, i64 %idxprom264
  %35 = load i16* %arrayidx280, align 2, !tbaa !4
  %cmp283 = icmp eq i16 %34, %35
  br i1 %cmp283, label %if.end291, label %if.then285

if.then285:                                       ; preds = %if.end276
  %cmp288 = icmp ugt i16 %34, %35
  %conv290 = zext i1 %cmp288 to i8
  br label %return

if.end291:                                        ; preds = %if.end276
  %inc292 = add i32 %i1.addr.0, 3
  %inc293 = add i32 %i2.addr.0, 3
  %idxprom294 = zext i32 %inc292 to i64
  %arrayidx295 = getelementptr inbounds i8* %block, i64 %idxprom294
  %36 = load i8* %arrayidx295, align 1, !tbaa !1
  %idxprom296 = zext i32 %inc293 to i64
  %arrayidx297 = getelementptr inbounds i8* %block, i64 %idxprom296
  %37 = load i8* %arrayidx297, align 1, !tbaa !1
  %cmp300 = icmp eq i8 %36, %37
  br i1 %cmp300, label %if.end308, label %if.then302

if.then302:                                       ; preds = %if.end291
  %cmp305 = icmp ugt i8 %36, %37
  %conv307 = zext i1 %cmp305 to i8
  br label %return

if.end308:                                        ; preds = %if.end291
  %arrayidx310 = getelementptr inbounds i16* %quadrant, i64 %idxprom294
  %38 = load i16* %arrayidx310, align 2, !tbaa !4
  %arrayidx312 = getelementptr inbounds i16* %quadrant, i64 %idxprom296
  %39 = load i16* %arrayidx312, align 2, !tbaa !4
  %cmp315 = icmp eq i16 %38, %39
  br i1 %cmp315, label %if.end323, label %if.then317

if.then317:                                       ; preds = %if.end308
  %cmp320 = icmp ugt i16 %38, %39
  %conv322 = zext i1 %cmp320 to i8
  br label %return

if.end323:                                        ; preds = %if.end308
  %inc324 = add i32 %i1.addr.0, 4
  %inc325 = add i32 %i2.addr.0, 4
  %idxprom326 = zext i32 %inc324 to i64
  %arrayidx327 = getelementptr inbounds i8* %block, i64 %idxprom326
  %40 = load i8* %arrayidx327, align 1, !tbaa !1
  %idxprom328 = zext i32 %inc325 to i64
  %arrayidx329 = getelementptr inbounds i8* %block, i64 %idxprom328
  %41 = load i8* %arrayidx329, align 1, !tbaa !1
  %cmp332 = icmp eq i8 %40, %41
  br i1 %cmp332, label %if.end340, label %if.then334

if.then334:                                       ; preds = %if.end323
  %cmp337 = icmp ugt i8 %40, %41
  %conv339 = zext i1 %cmp337 to i8
  br label %return

if.end340:                                        ; preds = %if.end323
  %arrayidx342 = getelementptr inbounds i16* %quadrant, i64 %idxprom326
  %42 = load i16* %arrayidx342, align 2, !tbaa !4
  %arrayidx344 = getelementptr inbounds i16* %quadrant, i64 %idxprom328
  %43 = load i16* %arrayidx344, align 2, !tbaa !4
  %cmp347 = icmp eq i16 %42, %43
  br i1 %cmp347, label %if.end355, label %if.then349

if.then349:                                       ; preds = %if.end340
  %cmp352 = icmp ugt i16 %42, %43
  %conv354 = zext i1 %cmp352 to i8
  br label %return

if.end355:                                        ; preds = %if.end340
  %inc356 = add i32 %i1.addr.0, 5
  %inc357 = add i32 %i2.addr.0, 5
  %idxprom358 = zext i32 %inc356 to i64
  %arrayidx359 = getelementptr inbounds i8* %block, i64 %idxprom358
  %44 = load i8* %arrayidx359, align 1, !tbaa !1
  %idxprom360 = zext i32 %inc357 to i64
  %arrayidx361 = getelementptr inbounds i8* %block, i64 %idxprom360
  %45 = load i8* %arrayidx361, align 1, !tbaa !1
  %cmp364 = icmp eq i8 %44, %45
  br i1 %cmp364, label %if.end372, label %if.then366

if.then366:                                       ; preds = %if.end355
  %cmp369 = icmp ugt i8 %44, %45
  %conv371 = zext i1 %cmp369 to i8
  br label %return

if.end372:                                        ; preds = %if.end355
  %arrayidx374 = getelementptr inbounds i16* %quadrant, i64 %idxprom358
  %46 = load i16* %arrayidx374, align 2, !tbaa !4
  %arrayidx376 = getelementptr inbounds i16* %quadrant, i64 %idxprom360
  %47 = load i16* %arrayidx376, align 2, !tbaa !4
  %cmp379 = icmp eq i16 %46, %47
  br i1 %cmp379, label %if.end387, label %if.then381

if.then381:                                       ; preds = %if.end372
  %cmp384 = icmp ugt i16 %46, %47
  %conv386 = zext i1 %cmp384 to i8
  br label %return

if.end387:                                        ; preds = %if.end372
  %inc388 = add i32 %i1.addr.0, 6
  %inc389 = add i32 %i2.addr.0, 6
  %idxprom390 = zext i32 %inc388 to i64
  %arrayidx391 = getelementptr inbounds i8* %block, i64 %idxprom390
  %48 = load i8* %arrayidx391, align 1, !tbaa !1
  %idxprom392 = zext i32 %inc389 to i64
  %arrayidx393 = getelementptr inbounds i8* %block, i64 %idxprom392
  %49 = load i8* %arrayidx393, align 1, !tbaa !1
  %cmp396 = icmp eq i8 %48, %49
  br i1 %cmp396, label %if.end404, label %if.then398

if.then398:                                       ; preds = %if.end387
  %cmp401 = icmp ugt i8 %48, %49
  %conv403 = zext i1 %cmp401 to i8
  br label %return

if.end404:                                        ; preds = %if.end387
  %arrayidx406 = getelementptr inbounds i16* %quadrant, i64 %idxprom390
  %50 = load i16* %arrayidx406, align 2, !tbaa !4
  %arrayidx408 = getelementptr inbounds i16* %quadrant, i64 %idxprom392
  %51 = load i16* %arrayidx408, align 2, !tbaa !4
  %cmp411 = icmp eq i16 %50, %51
  br i1 %cmp411, label %if.end419, label %if.then413

if.then413:                                       ; preds = %if.end404
  %cmp416 = icmp ugt i16 %50, %51
  %conv418 = zext i1 %cmp416 to i8
  br label %return

if.end419:                                        ; preds = %if.end404
  %inc420 = add i32 %i1.addr.0, 7
  %inc421 = add i32 %i2.addr.0, 7
  %idxprom422 = zext i32 %inc420 to i64
  %arrayidx423 = getelementptr inbounds i8* %block, i64 %idxprom422
  %52 = load i8* %arrayidx423, align 1, !tbaa !1
  %idxprom424 = zext i32 %inc421 to i64
  %arrayidx425 = getelementptr inbounds i8* %block, i64 %idxprom424
  %53 = load i8* %arrayidx425, align 1, !tbaa !1
  %cmp428 = icmp eq i8 %52, %53
  br i1 %cmp428, label %if.end436, label %if.then430

if.then430:                                       ; preds = %if.end419
  %cmp433 = icmp ugt i8 %52, %53
  %conv435 = zext i1 %cmp433 to i8
  br label %return

if.end436:                                        ; preds = %if.end419
  %arrayidx438 = getelementptr inbounds i16* %quadrant, i64 %idxprom422
  %54 = load i16* %arrayidx438, align 2, !tbaa !4
  %arrayidx440 = getelementptr inbounds i16* %quadrant, i64 %idxprom424
  %55 = load i16* %arrayidx440, align 2, !tbaa !4
  %cmp443 = icmp eq i16 %54, %55
  br i1 %cmp443, label %if.end451, label %if.then445

if.then445:                                       ; preds = %if.end436
  %cmp448 = icmp ugt i16 %54, %55
  %conv450 = zext i1 %cmp448 to i8
  br label %return

if.end451:                                        ; preds = %if.end436
  %inc452 = add i32 %i1.addr.0, 8
  %inc453 = add i32 %i2.addr.0, 8
  %cmp454 = icmp ult i32 %inc452, %nblock
  %sub = select i1 %cmp454, i32 0, i32 %nblock
  %inc452.sub = sub i32 %inc452, %sub
  %cmp458 = icmp ult i32 %inc453, %nblock
  %sub461 = select i1 %cmp458, i32 0, i32 %nblock
  %i2.addr.1 = sub i32 %inc453, %sub461
  %sub463 = add nsw i32 %k.0, -8
  %56 = load i32* %budget, align 4, !tbaa !3
  %dec = add nsw i32 %56, -1
  store i32 %dec, i32* %budget, align 4, !tbaa !3
  %cmp464 = icmp sgt i32 %sub463, -1
  br i1 %cmp464, label %do.body, label %return

return:                                           ; preds = %if.end451, %if.then445, %if.then430, %if.then413, %if.then398, %if.then381, %if.then366, %if.then349, %if.then334, %if.then317, %if.then302, %if.then285, %if.then270, %if.then253, %if.then238, %if.then221, %if.then206, %if.then189, %if.then172, %if.then155, %if.then138, %if.then121, %if.then104, %if.then87, %if.then70, %if.then53, %if.then36, %if.then19, %if.then
  %retval.0 = phi i8 [ %conv9, %if.then ], [ %conv24, %if.then19 ], [ %conv41, %if.then36 ], [ %conv58, %if.then53 ], [ %conv75, %if.then70 ], [ %conv92, %if.then87 ], [ %conv109, %if.then104 ], [ %conv126, %if.then121 ], [ %conv143, %if.then138 ], [ %conv160, %if.then155 ], [ %conv177, %if.then172 ], [ %conv194, %if.then189 ], [ %conv211, %if.then206 ], [ %conv226, %if.then221 ], [ %conv243, %if.then238 ], [ %conv258, %if.then253 ], [ %conv275, %if.then270 ], [ %conv290, %if.then285 ], [ %conv307, %if.then302 ], [ %conv322, %if.then317 ], [ %conv339, %if.then334 ], [ %conv354, %if.then349 ], [ %conv371, %if.then366 ], [ %conv386, %if.then381 ], [ %conv403, %if.then398 ], [ %conv418, %if.then413 ], [ %conv435, %if.then430 ], [ %conv450, %if.then445 ], [ 0, %if.end451 ]
  ret i8 %retval.0
}

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #3

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #3

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture, i64, i32, i1) #3

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { optsize }
attributes #5 = { nounwind optsize }

!0 = metadata !{metadata !"any pointer", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"int", metadata !1}
!4 = metadata !{metadata !"short", metadata !1}
