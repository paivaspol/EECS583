; ModuleID = '../../SPEC/benchspec/CPU2006/470.lbm/src/main.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.MAIN_Param = type { i32, i8*, i32, i32, i8* }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }

@srcGrid = internal global [26000000 x double]* null, align 8
@dstGrid = internal global [26000000 x double]* null, align 8
@.str = private unnamed_addr constant [14 x i8] c"timestep: %i\0A\00", align 1
@.str2 = private unnamed_addr constant [55 x i8] c"MAIN_parseCommandLine: cannot stat obstacle file '%s'\0A\00", align 1
@.str3 = private unnamed_addr constant [82 x i8] c"MAIN_parseCommandLine:\0A\09size of file '%s' is %i bytes\0A\09expected size is %i bytes\0A\00", align 1
@.str4 = private unnamed_addr constant [53 x i8] c"MAIN_parseCommandLine: cannot stat result file '%s'\0A\00", align 1
@MAIN_printInfo.actionString = internal constant [3 x [32 x i8]] [[32 x i8] c"nothing\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"compare\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"store\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00"], align 16
@MAIN_printInfo.simTypeString = internal constant [3 x [32 x i8]] [[32 x i8] c"lid-driven cavity\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"channel flow\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] zeroinitializer], align 16
@.str5 = private unnamed_addr constant [174 x i8] c"MAIN_printInfo:\0A\09grid size      : %i x %i x %i = %.2f * 10^6 Cells\0A\09nTimeSteps     : %i\0A\09result file    : %s\0A\09action         : %s\0A\09simulation type: %s\0A\09obstacle file  : %s\0A\0A\00", align 1
@.str6 = private unnamed_addr constant [7 x i8] c"<none>\00", align 1
@str = private unnamed_addr constant [108 x i8] c"syntax: lbm <time steps> <result file> <0: nil, 1: cmp, 2: str> <0: ldc, 1: channel flow> [<obstacle file>]\00"

; Function Attrs: nounwind optsize uwtable
define i32 @main(i32 %nArgs, i8** nocapture %arg) #0 {
entry:
  %param = alloca %struct.MAIN_Param, align 8
  call void @MAIN_parseCommandLine(i32 %nArgs, i8** %arg, %struct.MAIN_Param* %param) #6
  %nTimeSteps.i = getelementptr inbounds %struct.MAIN_Param* %param, i64 0, i32 0
  %0 = load i32* %nTimeSteps.i, align 8, !tbaa !0
  %resultFilename.i = getelementptr inbounds %struct.MAIN_Param* %param, i64 0, i32 1
  %1 = load i8** %resultFilename.i, align 8, !tbaa !3
  %action.i = getelementptr inbounds %struct.MAIN_Param* %param, i64 0, i32 2
  %2 = bitcast i32* %action.i to i64*
  %3 = load i64* %2, align 8
  %idxprom.i = and i64 %3, 4294967295
  %arraydecay.i = getelementptr inbounds [3 x [32 x i8]]* @MAIN_printInfo.actionString, i64 0, i64 %idxprom.i, i64 0
  %4 = lshr i64 %3, 32
  %arraydecay3.i = getelementptr inbounds [3 x [32 x i8]]* @MAIN_printInfo.simTypeString, i64 0, i64 %4, i64 0
  %obstacleFilename.i = getelementptr inbounds %struct.MAIN_Param* %param, i64 0, i32 4
  %5 = load i8** %obstacleFilename.i, align 8, !tbaa !3
  %cmp.i = icmp eq i8* %5, null
  %..i = select i1 %cmp.i, i8* getelementptr inbounds ([7 x i8]* @.str6, i64 0, i64 0), i8* %5
  %call.i = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([174 x i8]* @.str5, i64 0, i64 0), i32 100, i32 100, i32 130, double 0x3FF4CCCCCCCCCCCC, i32 %0, i8* %1, i8* %arraydecay.i, i8* %arraydecay3.i, i8* %..i) #7
  call void @MAIN_initialize(%struct.MAIN_Param* %param) #6
  %6 = load i32* %nTimeSteps.i, align 8, !tbaa !0
  %cmp11 = icmp slt i32 %6, 1
  br i1 %cmp11, label %for.end, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %entry
  %simType.i = getelementptr inbounds %struct.MAIN_Param* %param, i64 0, i32 3
  %7 = load i32* %simType.i, align 4, !tbaa !1
  %cmp1 = icmp eq i32 %7, 1
  br label %for.body

for.body:                                         ; preds = %for.inc, %for.body.lr.ph
  %t.012 = phi i32 [ 1, %for.body.lr.ph ], [ %inc, %for.inc ]
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %8 = load [26000000 x double]** @srcGrid, align 8, !tbaa !3
  %arraydecay = getelementptr inbounds [26000000 x double]* %8, i64 0, i64 0
  call void @LBM_handleInOutFlow(double* %arraydecay) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %9 = load [26000000 x double]** @srcGrid, align 8, !tbaa !3
  %arraydecay2 = getelementptr inbounds [26000000 x double]* %9, i64 0, i64 0
  %10 = load [26000000 x double]** @dstGrid, align 8, !tbaa !3
  %arraydecay3 = getelementptr inbounds [26000000 x double]* %10, i64 0, i64 0
  call void @LBM_performStreamCollide(double* %arraydecay2, double* %arraydecay3) #7
  call void @LBM_swapGrids([26000000 x double]** @srcGrid, [26000000 x double]** @dstGrid) #7
  %and = and i32 %t.012, 63
  %cmp4 = icmp eq i32 %and, 0
  br i1 %cmp4, label %if.then5, label %for.inc

if.then5:                                         ; preds = %if.end
  %call = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([14 x i8]* @.str, i64 0, i64 0), i32 %t.012) #7
  %11 = load [26000000 x double]** @srcGrid, align 8, !tbaa !3
  %arraydecay6 = getelementptr inbounds [26000000 x double]* %11, i64 0, i64 0
  call void @LBM_showGridStatistics(double* %arraydecay6) #7
  br label %for.inc

for.inc:                                          ; preds = %if.end, %if.then5
  %inc = add nsw i32 %t.012, 1
  %cmp = icmp slt i32 %t.012, %6
  br i1 %cmp, label %for.body, label %for.end

for.end:                                          ; preds = %for.inc, %entry
  call void @MAIN_finalize(%struct.MAIN_Param* %param) #6
  ret i32 0
}

; Function Attrs: nounwind optsize uwtable
define void @MAIN_parseCommandLine(i32 %nArgs, i8** nocapture %arg, %struct.MAIN_Param* nocapture %param) #0 {
entry:
  %fileStat = alloca %struct.stat, align 8
  %0 = bitcast %struct.stat* %fileStat to i8*
  call void @llvm.lifetime.start(i64 144, i8* %0) #3
  %nArgs.off = add i32 %nArgs, -5
  %1 = icmp ugt i32 %nArgs.off, 1
  br i1 %1, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %puts = call i32 @puts(i8* getelementptr inbounds ([108 x i8]* @str, i64 0, i64 0))
  call void @exit(i32 1) #8
  unreachable

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr inbounds i8** %arg, i64 1
  %2 = load i8** %arrayidx, align 8, !tbaa !3
  %call2 = call i32 @atoi(i8* %2) #9
  %nTimeSteps = getelementptr inbounds %struct.MAIN_Param* %param, i64 0, i32 0
  store i32 %call2, i32* %nTimeSteps, align 4, !tbaa !0
  %arrayidx3 = getelementptr inbounds i8** %arg, i64 2
  %3 = load i8** %arrayidx3, align 8, !tbaa !3
  %resultFilename = getelementptr inbounds %struct.MAIN_Param* %param, i64 0, i32 1
  store i8* %3, i8** %resultFilename, align 8, !tbaa !3
  %arrayidx4 = getelementptr inbounds i8** %arg, i64 3
  %4 = load i8** %arrayidx4, align 8, !tbaa !3
  %call5 = call i32 @atoi(i8* %4) #9
  %action = getelementptr inbounds %struct.MAIN_Param* %param, i64 0, i32 2
  store i32 %call5, i32* %action, align 4, !tbaa !1
  %arrayidx6 = getelementptr inbounds i8** %arg, i64 4
  %5 = load i8** %arrayidx6, align 8, !tbaa !3
  %call7 = call i32 @atoi(i8* %5) #9
  %simType = getelementptr inbounds %struct.MAIN_Param* %param, i64 0, i32 3
  store i32 %call7, i32* %simType, align 4, !tbaa !1
  %cmp8 = icmp eq i32 %nArgs, 6
  br i1 %cmp8, label %if.then9, label %if.else

if.then9:                                         ; preds = %if.end
  %arrayidx10 = getelementptr inbounds i8** %arg, i64 5
  %6 = load i8** %arrayidx10, align 8, !tbaa !3
  %obstacleFilename = getelementptr inbounds %struct.MAIN_Param* %param, i64 0, i32 4
  store i8* %6, i8** %obstacleFilename, align 8, !tbaa !3
  %call12 = call i32 @stat(i8* %6, %struct.stat* %fileStat) #7
  %cmp13 = icmp eq i32 %call12, 0
  br i1 %cmp13, label %if.end17, label %if.then14

if.then14:                                        ; preds = %if.then9
  %7 = load i8** %obstacleFilename, align 8, !tbaa !3
  %call16 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([55 x i8]* @.str2, i64 0, i64 0), i8* %7) #7
  call void @exit(i32 1) #8
  unreachable

if.end17:                                         ; preds = %if.then9
  %st_size = getelementptr inbounds %struct.stat* %fileStat, i64 0, i32 8
  %8 = load i64* %st_size, align 8, !tbaa !4
  %cmp18 = icmp eq i64 %8, 1313130
  br i1 %cmp18, label %if.end17.if.end25_crit_edge, label %if.then19

if.end17.if.end25_crit_edge:                      ; preds = %if.end17
  %.pre = load i32* %action, align 4, !tbaa !1
  br label %if.end25

if.then19:                                        ; preds = %if.end17
  %9 = load i8** %obstacleFilename, align 8, !tbaa !3
  %conv = trunc i64 %8 to i32
  %call22 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([82 x i8]* @.str3, i64 0, i64 0), i8* %9, i32 %conv, i32 1313130) #7
  call void @exit(i32 1) #8
  unreachable

if.else:                                          ; preds = %if.end
  %obstacleFilename24 = getelementptr inbounds %struct.MAIN_Param* %param, i64 0, i32 4
  store i8* null, i8** %obstacleFilename24, align 8, !tbaa !3
  br label %if.end25

if.end25:                                         ; preds = %if.end17.if.end25_crit_edge, %if.else
  %10 = phi i32 [ %.pre, %if.end17.if.end25_crit_edge ], [ %call5, %if.else ]
  %cmp27 = icmp eq i32 %10, 1
  br i1 %cmp27, label %land.lhs.true, label %if.end36

land.lhs.true:                                    ; preds = %if.end25
  %11 = load i8** %resultFilename, align 8, !tbaa !3
  %call30 = call i32 @stat(i8* %11, %struct.stat* %fileStat) #7
  %cmp31 = icmp eq i32 %call30, 0
  br i1 %cmp31, label %if.end36, label %if.then33

if.then33:                                        ; preds = %land.lhs.true
  %12 = load i8** %resultFilename, align 8, !tbaa !3
  %call35 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([53 x i8]* @.str4, i64 0, i64 0), i8* %12) #7
  call void @exit(i32 1) #8
  unreachable

if.end36:                                         ; preds = %land.lhs.true, %if.end25
  call void @llvm.lifetime.end(i64 144, i8* %0) #3
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @MAIN_printInfo(%struct.MAIN_Param* nocapture %param) #0 {
entry:
  %nTimeSteps = getelementptr inbounds %struct.MAIN_Param* %param, i64 0, i32 0
  %0 = load i32* %nTimeSteps, align 4, !tbaa !0
  %resultFilename = getelementptr inbounds %struct.MAIN_Param* %param, i64 0, i32 1
  %1 = load i8** %resultFilename, align 8, !tbaa !3
  %action = getelementptr inbounds %struct.MAIN_Param* %param, i64 0, i32 2
  %2 = load i32* %action, align 4, !tbaa !1
  %idxprom = zext i32 %2 to i64
  %arraydecay = getelementptr inbounds [3 x [32 x i8]]* @MAIN_printInfo.actionString, i64 0, i64 %idxprom, i64 0
  %simType = getelementptr inbounds %struct.MAIN_Param* %param, i64 0, i32 3
  %3 = load i32* %simType, align 4, !tbaa !1
  %idxprom1 = zext i32 %3 to i64
  %arraydecay3 = getelementptr inbounds [3 x [32 x i8]]* @MAIN_printInfo.simTypeString, i64 0, i64 %idxprom1, i64 0
  %obstacleFilename = getelementptr inbounds %struct.MAIN_Param* %param, i64 0, i32 4
  %4 = load i8** %obstacleFilename, align 8, !tbaa !3
  %cmp = icmp eq i8* %4, null
  %. = select i1 %cmp, i8* getelementptr inbounds ([7 x i8]* @.str6, i64 0, i64 0), i8* %4
  %call = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([174 x i8]* @.str5, i64 0, i64 0), i32 100, i32 100, i32 130, double 0x3FF4CCCCCCCCCCCC, i32 %0, i8* %1, i8* %arraydecay, i8* %arraydecay3, i8* %.) #7
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @MAIN_initialize(%struct.MAIN_Param* nocapture %param) #0 {
entry:
  tail call void @LBM_allocateGrid(double** bitcast ([26000000 x double]** @srcGrid to double**)) #7
  tail call void @LBM_allocateGrid(double** bitcast ([26000000 x double]** @dstGrid to double**)) #7
  %0 = load [26000000 x double]** @srcGrid, align 8, !tbaa !3
  %arraydecay = getelementptr inbounds [26000000 x double]* %0, i64 0, i64 0
  tail call void @LBM_initializeGrid(double* %arraydecay) #7
  %1 = load [26000000 x double]** @dstGrid, align 8, !tbaa !3
  %arraydecay1 = getelementptr inbounds [26000000 x double]* %1, i64 0, i64 0
  tail call void @LBM_initializeGrid(double* %arraydecay1) #7
  %obstacleFilename = getelementptr inbounds %struct.MAIN_Param* %param, i64 0, i32 4
  %2 = load i8** %obstacleFilename, align 8, !tbaa !3
  %cmp = icmp eq i8* %2, null
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %3 = load [26000000 x double]** @srcGrid, align 8, !tbaa !3
  %arraydecay2 = getelementptr inbounds [26000000 x double]* %3, i64 0, i64 0
  tail call void @LBM_loadObstacleFile(double* %arraydecay2, i8* %2) #7
  %4 = load [26000000 x double]** @dstGrid, align 8, !tbaa !3
  %arraydecay4 = getelementptr inbounds [26000000 x double]* %4, i64 0, i64 0
  %5 = load i8** %obstacleFilename, align 8, !tbaa !3
  tail call void @LBM_loadObstacleFile(double* %arraydecay4, i8* %5) #7
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  %simType = getelementptr inbounds %struct.MAIN_Param* %param, i64 0, i32 3
  %6 = load i32* %simType, align 4, !tbaa !1
  %cmp6 = icmp eq i32 %6, 1
  %7 = load [26000000 x double]** @srcGrid, align 8, !tbaa !3
  %arraydecay8 = getelementptr inbounds [26000000 x double]* %7, i64 0, i64 0
  br i1 %cmp6, label %if.then7, label %if.else

if.then7:                                         ; preds = %if.end
  tail call void @LBM_initializeSpecialCellsForChannel(double* %arraydecay8) #7
  %8 = load [26000000 x double]** @dstGrid, align 8, !tbaa !3
  %arraydecay9 = getelementptr inbounds [26000000 x double]* %8, i64 0, i64 0
  tail call void @LBM_initializeSpecialCellsForChannel(double* %arraydecay9) #7
  br label %if.end12

if.else:                                          ; preds = %if.end
  tail call void @LBM_initializeSpecialCellsForLDC(double* %arraydecay8) #7
  %9 = load [26000000 x double]** @dstGrid, align 8, !tbaa !3
  %arraydecay11 = getelementptr inbounds [26000000 x double]* %9, i64 0, i64 0
  tail call void @LBM_initializeSpecialCellsForLDC(double* %arraydecay11) #7
  br label %if.end12

if.end12:                                         ; preds = %if.else, %if.then7
  %10 = load [26000000 x double]** @srcGrid, align 8, !tbaa !3
  %arraydecay13 = getelementptr inbounds [26000000 x double]* %10, i64 0, i64 0
  tail call void @LBM_showGridStatistics(double* %arraydecay13) #7
  ret void
}

; Function Attrs: optsize
declare void @LBM_handleInOutFlow(double*) #1

; Function Attrs: optsize
declare void @LBM_performStreamCollide(double*, double*) #1

; Function Attrs: optsize
declare void @LBM_swapGrids([26000000 x double]**, [26000000 x double]**) #1

; Function Attrs: nounwind optsize
declare i32 @printf(i8* nocapture, ...) #2

; Function Attrs: optsize
declare void @LBM_showGridStatistics(double*) #1

; Function Attrs: nounwind optsize uwtable
define void @MAIN_finalize(%struct.MAIN_Param* nocapture %param) #0 {
entry:
  %0 = load [26000000 x double]** @srcGrid, align 8, !tbaa !3
  %arraydecay = getelementptr inbounds [26000000 x double]* %0, i64 0, i64 0
  tail call void @LBM_showGridStatistics(double* %arraydecay) #7
  %action = getelementptr inbounds %struct.MAIN_Param* %param, i64 0, i32 2
  %1 = load i32* %action, align 4, !tbaa !1
  %cmp = icmp eq i32 %1, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load [26000000 x double]** @srcGrid, align 8, !tbaa !3
  %arraydecay1 = getelementptr inbounds [26000000 x double]* %2, i64 0, i64 0
  %resultFilename = getelementptr inbounds %struct.MAIN_Param* %param, i64 0, i32 1
  %3 = load i8** %resultFilename, align 8, !tbaa !3
  tail call void @LBM_compareVelocityField(double* %arraydecay1, i8* %3, i32 -1) #7
  %.pr = load i32* %action, align 4, !tbaa !1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = phi i32 [ %.pr, %if.then ], [ %1, %entry ]
  %cmp3 = icmp eq i32 %4, 2
  br i1 %cmp3, label %if.then4, label %if.end7

if.then4:                                         ; preds = %if.end
  %5 = load [26000000 x double]** @srcGrid, align 8, !tbaa !3
  %arraydecay5 = getelementptr inbounds [26000000 x double]* %5, i64 0, i64 0
  %resultFilename6 = getelementptr inbounds %struct.MAIN_Param* %param, i64 0, i32 1
  %6 = load i8** %resultFilename6, align 8, !tbaa !3
  tail call void @LBM_storeVelocityField(double* %arraydecay5, i8* %6, i32 -1) #7
  br label %if.end7

if.end7:                                          ; preds = %if.then4, %if.end
  tail call void @LBM_freeGrid(double** bitcast ([26000000 x double]** @srcGrid to double**)) #7
  tail call void @LBM_freeGrid(double** bitcast ([26000000 x double]** @dstGrid to double**)) #7
  ret void
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #3

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32) #4

; Function Attrs: nounwind optsize readonly
declare i32 @atoi(i8* nocapture) #5

; Function Attrs: nounwind optsize
declare i32 @stat(i8* nocapture, %struct.stat* nocapture) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #3

; Function Attrs: optsize
declare void @LBM_allocateGrid(double**) #1

; Function Attrs: optsize
declare void @LBM_initializeGrid(double*) #1

; Function Attrs: optsize
declare void @LBM_loadObstacleFile(double*, i8*) #1

; Function Attrs: optsize
declare void @LBM_initializeSpecialCellsForChannel(double*) #1

; Function Attrs: optsize
declare void @LBM_initializeSpecialCellsForLDC(double*) #1

; Function Attrs: optsize
declare void @LBM_compareVelocityField(double*, i8*, i32) #1

; Function Attrs: optsize
declare void @LBM_storeVelocityField(double*, i8*, i32) #1

; Function Attrs: optsize
declare void @LBM_freeGrid(double**) #1

; Function Attrs: nounwind
declare i32 @puts(i8* nocapture) #3

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { noreturn nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind optsize readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { optsize }
attributes #7 = { nounwind optsize }
attributes #8 = { noreturn nounwind optsize }
attributes #9 = { nounwind optsize readonly }

!0 = metadata !{metadata !"int", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"any pointer", metadata !1}
!4 = metadata !{metadata !"long", metadata !1}
