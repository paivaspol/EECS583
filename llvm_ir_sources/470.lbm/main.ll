; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/470.lbm/src/main.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.MAIN_Param = type { i32, i8*, i32, i32, i8* }
%struct.MAIN_Time = type { double, i64, i64, %struct.tms, %struct.tms }
%struct.tms = type { i64, i64, i64, i64 }
%struct.stat = type { i32, i16, i16, i64, i32, i32, i32, %struct.timespec, %struct.timespec, %struct.timespec, %struct.timespec, i64, i64, i32, i32, i32, i32, [2 x i64] }
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
@.str7 = private unnamed_addr constant [76 x i8] c"MAIN_stopClock:\0A\09usr: %7.2f sys: %7.2f tot: %7.2f wct: %7.2f MLUPS: %5.2f\0A\0A\00", align 1
@str = private unnamed_addr constant [108 x i8] c"syntax: lbm <time steps> <result file> <0: nil, 1: cmp, 2: str> <0: ldc, 1: channel flow> [<obstacle file>]\00"

; Function Attrs: nounwind optsize ssp uwtable
define i32 @main(i32 %nArgs, i8** nocapture readonly %arg) #0 {
  %param = alloca %struct.MAIN_Param, align 8
  %time = alloca %struct.MAIN_Time, align 8
  tail call void @llvm.dbg.value(metadata i32 %nArgs, i64 0, metadata !29, metadata !183), !dbg !184
  tail call void @llvm.dbg.value(metadata i8** %arg, i64 0, metadata !30, metadata !183), !dbg !185
  %1 = bitcast %struct.MAIN_Time* %time to i8*, !dbg !186
  call void @llvm.lifetime.start(i64 88, i8* %1) #1, !dbg !186
  tail call void @llvm.dbg.value(metadata %struct.MAIN_Param* %param, i64 0, metadata !31, metadata !183), !dbg !187
  call void @MAIN_parseCommandLine(i32 %nArgs, i8** %arg, %struct.MAIN_Param* %param) #7, !dbg !188
  tail call void @llvm.dbg.value(metadata %struct.MAIN_Param* %param, i64 0, metadata !31, metadata !183), !dbg !187
  tail call void @llvm.dbg.value(metadata %struct.MAIN_Param* %param, i64 0, metadata !142, metadata !183) #1, !dbg !189
  %2 = getelementptr inbounds %struct.MAIN_Param* %param, i64 0, i32 0, !dbg !191
  %3 = load i32* %2, align 8, !dbg !191, !tbaa !192
  %4 = getelementptr inbounds %struct.MAIN_Param* %param, i64 0, i32 1, !dbg !198
  %5 = load i8** %4, align 8, !dbg !198, !tbaa !199
  %6 = getelementptr inbounds %struct.MAIN_Param* %param, i64 0, i32 2, !dbg !200
  %7 = bitcast i32* %6 to i64*, !dbg !200
  %8 = load i64* %7, align 8, !dbg !200
  %9 = and i64 %8, 4294967295, !dbg !201
  %10 = getelementptr inbounds [3 x [32 x i8]]* @MAIN_printInfo.actionString, i64 0, i64 %9, i64 0, !dbg !201
  %11 = lshr i64 %8, 32
  %12 = getelementptr inbounds [3 x [32 x i8]]* @MAIN_printInfo.simTypeString, i64 0, i64 %11, i64 0, !dbg !202
  %13 = getelementptr inbounds %struct.MAIN_Param* %param, i64 0, i32 4, !dbg !203
  %14 = load i8** %13, align 8, !dbg !203, !tbaa !204
  %15 = icmp eq i8* %14, null, !dbg !205
  %..i = select i1 %15, i8* getelementptr inbounds ([7 x i8]* @.str6, i64 0, i64 0), i8* %14, !dbg !206
  %16 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([174 x i8]* @.str5, i64 0, i64 0), i32 100, i32 100, i32 130, double 0x3FF4CCCCCCCCCCCC, i32 %3, i8* %5, i8* %10, i8* %12, i8* %..i) #8, !dbg !207
  tail call void @llvm.dbg.value(metadata %struct.MAIN_Param* %param, i64 0, metadata !31, metadata !183), !dbg !187
  call void @MAIN_initialize(%struct.MAIN_Param* %param) #7, !dbg !208
  tail call void @llvm.dbg.value(metadata %struct.MAIN_Time* %time, i64 0, metadata !40, metadata !183), !dbg !209
  tail call void @llvm.dbg.value(metadata %struct.MAIN_Time* %time, i64 0, metadata !154, metadata !183) #1, !dbg !210
  %17 = tail call i64 @sysconf(i32 3) #8, !dbg !212
  %18 = sitofp i64 %17 to double, !dbg !212
  %19 = fdiv double 1.000000e+00, %18, !dbg !213
  %20 = getelementptr inbounds %struct.MAIN_Time* %time, i64 0, i32 0, !dbg !214
  store double %19, double* %20, align 8, !dbg !215, !tbaa !216
  %21 = getelementptr inbounds %struct.MAIN_Time* %time, i64 0, i32 3, !dbg !221
  %22 = call i64 @times(%struct.tms* %21) #8, !dbg !222
  %23 = getelementptr inbounds %struct.MAIN_Time* %time, i64 0, i32 1, !dbg !223
  store i64 %22, i64* %23, align 8, !dbg !224, !tbaa !225
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !61, metadata !183), !dbg !226
  %24 = icmp slt i32 %3, 1, !dbg !227
  br i1 %24, label %._crit_edge, label %.lr.ph, !dbg !230

.lr.ph:                                           ; preds = %0
  %25 = icmp eq i64 %11, 1, !dbg !231
  br label %26, !dbg !230

; <label>:26                                      ; preds = %41, %.lr.ph
  %t.01 = phi i32 [ 1, %.lr.ph ], [ %42, %41 ]
  br i1 %25, label %27, label %30, !dbg !234

; <label>:27                                      ; preds = %26
  %28 = load [26000000 x double]** @srcGrid, align 8, !dbg !235, !tbaa !237
  %29 = getelementptr inbounds [26000000 x double]* %28, i64 0, i64 0, !dbg !238
  tail call void @LBM_handleInOutFlow(double* %29) #8, !dbg !239
  br label %30, !dbg !240

; <label>:30                                      ; preds = %27, %26
  %31 = load [26000000 x double]** @srcGrid, align 8, !dbg !241, !tbaa !237
  %32 = getelementptr inbounds [26000000 x double]* %31, i64 0, i64 0, !dbg !242
  %33 = load [26000000 x double]** @dstGrid, align 8, !dbg !243, !tbaa !237
  %34 = getelementptr inbounds [26000000 x double]* %33, i64 0, i64 0, !dbg !244
  tail call void @LBM_performStreamCollide(double* %32, double* %34) #8, !dbg !245
  tail call void @LBM_swapGrids([26000000 x double]** @srcGrid, [26000000 x double]** @dstGrid) #8, !dbg !246
  %35 = and i32 %t.01, 63, !dbg !247
  %36 = icmp eq i32 %35, 0, !dbg !249
  br i1 %36, label %37, label %41, !dbg !250

; <label>:37                                      ; preds = %30
  %38 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([14 x i8]* @.str, i64 0, i64 0), i32 %t.01) #8, !dbg !251
  %39 = load [26000000 x double]** @srcGrid, align 8, !dbg !253, !tbaa !237
  %40 = getelementptr inbounds [26000000 x double]* %39, i64 0, i64 0, !dbg !254
  tail call void @LBM_showGridStatistics(double* %40) #8, !dbg !255
  br label %41, !dbg !256

; <label>:41                                      ; preds = %30, %37
  %42 = add nuw nsw i32 %t.01, 1, !dbg !257
  tail call void @llvm.dbg.value(metadata i32 %42, i64 0, metadata !61, metadata !183), !dbg !226
  %43 = icmp slt i32 %t.01, %3, !dbg !227
  br i1 %43, label %26, label %._crit_edge, !dbg !230

._crit_edge:                                      ; preds = %41, %0
  tail call void @llvm.dbg.value(metadata %struct.MAIN_Param* %param, i64 0, metadata !31, metadata !183), !dbg !187
  tail call void @llvm.dbg.value(metadata %struct.MAIN_Time* %time, i64 0, metadata !40, metadata !183), !dbg !209
  call void @MAIN_stopClock(%struct.MAIN_Time* %time, %struct.MAIN_Param* %param) #7, !dbg !258
  tail call void @llvm.dbg.value(metadata %struct.MAIN_Param* %param, i64 0, metadata !31, metadata !183), !dbg !187
  call void @MAIN_finalize(%struct.MAIN_Param* %param) #7, !dbg !259
  call void @llvm.lifetime.end(i64 88, i8* %1) #1, !dbg !260
  ret i32 0, !dbg !260
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: nounwind optsize ssp uwtable
define void @MAIN_parseCommandLine(i32 %nArgs, i8** nocapture readonly %arg, %struct.MAIN_Param* nocapture %param) #0 {
  %fileStat = alloca %struct.stat, align 8
  tail call void @llvm.dbg.value(metadata i32 %nArgs, i64 0, metadata !67, metadata !183), !dbg !261
  tail call void @llvm.dbg.value(metadata i8** %arg, i64 0, metadata !68, metadata !183), !dbg !262
  tail call void @llvm.dbg.value(metadata %struct.MAIN_Param* %param, i64 0, metadata !69, metadata !183), !dbg !263
  %1 = bitcast %struct.stat* %fileStat to i8*, !dbg !264
  call void @llvm.lifetime.start(i64 144, i8* %1) #1, !dbg !264
  %nArgs.off = add i32 %nArgs, -5, !dbg !265
  %2 = icmp ugt i32 %nArgs.off, 1, !dbg !265
  br i1 %2, label %3, label %4, !dbg !265

; <label>:3                                       ; preds = %0
  %puts = tail call i32 @puts(i8* getelementptr inbounds ([108 x i8]* @str, i64 0, i64 0)), !dbg !267
  tail call void @exit(i32 1) #9, !dbg !269
  unreachable, !dbg !269

; <label>:4                                       ; preds = %0
  %5 = getelementptr inbounds i8** %arg, i64 1, !dbg !270
  %6 = load i8** %5, align 8, !dbg !270, !tbaa !237
  %7 = tail call i32 @atoi(i8* %6) #8, !dbg !271
  %8 = getelementptr inbounds %struct.MAIN_Param* %param, i64 0, i32 0, !dbg !272
  store i32 %7, i32* %8, align 4, !dbg !273, !tbaa !192
  %9 = getelementptr inbounds i8** %arg, i64 2, !dbg !274
  %10 = bitcast i8** %9 to i64*, !dbg !274
  %11 = load i64* %10, align 8, !dbg !274, !tbaa !237
  %12 = getelementptr inbounds %struct.MAIN_Param* %param, i64 0, i32 1, !dbg !275
  %13 = bitcast i8** %12 to i64*, !dbg !276
  store i64 %11, i64* %13, align 8, !dbg !276, !tbaa !199
  %14 = getelementptr inbounds i8** %arg, i64 3, !dbg !277
  %15 = load i8** %14, align 8, !dbg !277, !tbaa !237
  %16 = tail call i32 @atoi(i8* %15) #8, !dbg !278
  %17 = getelementptr inbounds %struct.MAIN_Param* %param, i64 0, i32 2, !dbg !279
  store i32 %16, i32* %17, align 4, !dbg !280, !tbaa !281
  %18 = getelementptr inbounds i8** %arg, i64 4, !dbg !282
  %19 = load i8** %18, align 8, !dbg !282, !tbaa !237
  %20 = tail call i32 @atoi(i8* %19) #8, !dbg !283
  %21 = getelementptr inbounds %struct.MAIN_Param* %param, i64 0, i32 3, !dbg !284
  store i32 %20, i32* %21, align 4, !dbg !285, !tbaa !286
  %22 = icmp eq i32 %nArgs, 6, !dbg !287
  br i1 %22, label %23, label %40, !dbg !289

; <label>:23                                      ; preds = %4
  %24 = getelementptr inbounds i8** %arg, i64 5, !dbg !290
  %25 = load i8** %24, align 8, !dbg !290, !tbaa !237
  %26 = getelementptr inbounds %struct.MAIN_Param* %param, i64 0, i32 4, !dbg !292
  store i8* %25, i8** %26, align 8, !dbg !293, !tbaa !204
  tail call void @llvm.dbg.value(metadata %struct.stat* %fileStat, i64 0, metadata !70, metadata !183), !dbg !294
  %27 = call i32 @"\01_stat$INODE64"(i8* %25, %struct.stat* %fileStat) #8, !dbg !295
  %28 = icmp eq i32 %27, 0, !dbg !297
  br i1 %28, label %32, label %29, !dbg !298

; <label>:29                                      ; preds = %23
  %30 = load i8** %26, align 8, !dbg !299, !tbaa !204
  %31 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([55 x i8]* @.str2, i64 0, i64 0), i8* %30) #8, !dbg !301
  call void @exit(i32 1) #9, !dbg !302
  unreachable, !dbg !302

; <label>:32                                      ; preds = %23
  %33 = getelementptr inbounds %struct.stat* %fileStat, i64 0, i32 11, !dbg !303
  %34 = load i64* %33, align 8, !dbg !303, !tbaa !305
  %35 = icmp eq i64 %34, 1313130, !dbg !310
  br i1 %35, label %._crit_edge, label %36, !dbg !311

._crit_edge:                                      ; preds = %32
  %.pre = load i32* %17, align 4, !dbg !312, !tbaa !281
  br label %42, !dbg !311

; <label>:36                                      ; preds = %32
  %37 = load i8** %26, align 8, !dbg !314, !tbaa !204
  %38 = trunc i64 %34 to i32, !dbg !316
  %39 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([82 x i8]* @.str3, i64 0, i64 0), i8* %37, i32 %38, i32 1313130) #8, !dbg !317
  call void @exit(i32 1) #9, !dbg !318
  unreachable, !dbg !318

; <label>:40                                      ; preds = %4
  %41 = getelementptr inbounds %struct.MAIN_Param* %param, i64 0, i32 4, !dbg !319
  store i8* null, i8** %41, align 8, !dbg !320, !tbaa !204
  br label %42

; <label>:42                                      ; preds = %._crit_edge, %40
  %43 = phi i32 [ %.pre, %._crit_edge ], [ %16, %40 ]
  %44 = icmp eq i32 %43, 1, !dbg !321
  br i1 %44, label %45, label %52, !dbg !322

; <label>:45                                      ; preds = %42
  %46 = load i8** %12, align 8, !dbg !323, !tbaa !199
  call void @llvm.dbg.value(metadata %struct.stat* %fileStat, i64 0, metadata !70, metadata !183), !dbg !294
  %47 = call i32 @"\01_stat$INODE64"(i8* %46, %struct.stat* %fileStat) #8, !dbg !324
  %48 = icmp eq i32 %47, 0, !dbg !325
  br i1 %48, label %52, label %49, !dbg !326

; <label>:49                                      ; preds = %45
  %50 = load i8** %12, align 8, !dbg !327, !tbaa !199
  %51 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([53 x i8]* @.str4, i64 0, i64 0), i8* %50) #8, !dbg !329
  call void @exit(i32 1) #9, !dbg !330
  unreachable, !dbg !330

; <label>:52                                      ; preds = %45, %42
  call void @llvm.lifetime.end(i64 144, i8* %1) #1, !dbg !331
  ret void, !dbg !331
}

; Function Attrs: nounwind optsize ssp uwtable
define void @MAIN_printInfo(%struct.MAIN_Param* nocapture readonly %param) #0 {
  tail call void @llvm.dbg.value(metadata %struct.MAIN_Param* %param, i64 0, metadata !142, metadata !183), !dbg !332
  %1 = getelementptr inbounds %struct.MAIN_Param* %param, i64 0, i32 0, !dbg !333
  %2 = load i32* %1, align 4, !dbg !333, !tbaa !192
  %3 = getelementptr inbounds %struct.MAIN_Param* %param, i64 0, i32 1, !dbg !334
  %4 = load i8** %3, align 8, !dbg !334, !tbaa !199
  %5 = getelementptr inbounds %struct.MAIN_Param* %param, i64 0, i32 2, !dbg !335
  %6 = load i32* %5, align 4, !dbg !335, !tbaa !281
  %7 = zext i32 %6 to i64, !dbg !336
  %8 = getelementptr inbounds [3 x [32 x i8]]* @MAIN_printInfo.actionString, i64 0, i64 %7, i64 0, !dbg !336
  %9 = getelementptr inbounds %struct.MAIN_Param* %param, i64 0, i32 3, !dbg !337
  %10 = load i32* %9, align 4, !dbg !337, !tbaa !286
  %11 = zext i32 %10 to i64, !dbg !338
  %12 = getelementptr inbounds [3 x [32 x i8]]* @MAIN_printInfo.simTypeString, i64 0, i64 %11, i64 0, !dbg !338
  %13 = getelementptr inbounds %struct.MAIN_Param* %param, i64 0, i32 4, !dbg !339
  %14 = load i8** %13, align 8, !dbg !339, !tbaa !204
  %15 = icmp eq i8* %14, null, !dbg !340
  %. = select i1 %15, i8* getelementptr inbounds ([7 x i8]* @.str6, i64 0, i64 0), i8* %14, !dbg !341
  %16 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([174 x i8]* @.str5, i64 0, i64 0), i32 100, i32 100, i32 130, double 0x3FF4CCCCCCCCCCCC, i32 %2, i8* %4, i8* %8, i8* %12, i8* %.) #8, !dbg !342
  ret void, !dbg !343
}

; Function Attrs: nounwind optsize ssp uwtable
define void @MAIN_initialize(%struct.MAIN_Param* nocapture readonly %param) #0 {
  tail call void @llvm.dbg.value(metadata %struct.MAIN_Param* %param, i64 0, metadata !145, metadata !183), !dbg !344
  tail call void @LBM_allocateGrid(double** bitcast ([26000000 x double]** @srcGrid to double**)) #8, !dbg !345
  tail call void @LBM_allocateGrid(double** bitcast ([26000000 x double]** @dstGrid to double**)) #8, !dbg !346
  %1 = load [26000000 x double]** @srcGrid, align 8, !dbg !347, !tbaa !237
  %2 = getelementptr inbounds [26000000 x double]* %1, i64 0, i64 0, !dbg !348
  tail call void @LBM_initializeGrid(double* %2) #8, !dbg !349
  %3 = load [26000000 x double]** @dstGrid, align 8, !dbg !350, !tbaa !237
  %4 = getelementptr inbounds [26000000 x double]* %3, i64 0, i64 0, !dbg !351
  tail call void @LBM_initializeGrid(double* %4) #8, !dbg !352
  %5 = getelementptr inbounds %struct.MAIN_Param* %param, i64 0, i32 4, !dbg !353
  %6 = load i8** %5, align 8, !dbg !353, !tbaa !204
  %7 = icmp eq i8* %6, null, !dbg !355
  br i1 %7, label %14, label %8, !dbg !356

; <label>:8                                       ; preds = %0
  %9 = load [26000000 x double]** @srcGrid, align 8, !dbg !357, !tbaa !237
  %10 = getelementptr inbounds [26000000 x double]* %9, i64 0, i64 0, !dbg !359
  tail call void @LBM_loadObstacleFile(double* %10, i8* %6) #8, !dbg !360
  %11 = load [26000000 x double]** @dstGrid, align 8, !dbg !361, !tbaa !237
  %12 = getelementptr inbounds [26000000 x double]* %11, i64 0, i64 0, !dbg !362
  %13 = load i8** %5, align 8, !dbg !363, !tbaa !204
  tail call void @LBM_loadObstacleFile(double* %12, i8* %13) #8, !dbg !364
  br label %14, !dbg !365

; <label>:14                                      ; preds = %0, %8
  %15 = getelementptr inbounds %struct.MAIN_Param* %param, i64 0, i32 3, !dbg !366
  %16 = load i32* %15, align 4, !dbg !366, !tbaa !286
  %17 = icmp eq i32 %16, 1, !dbg !368
  %18 = load [26000000 x double]** @srcGrid, align 8, !dbg !369, !tbaa !237
  %19 = getelementptr inbounds [26000000 x double]* %18, i64 0, i64 0, !dbg !371
  br i1 %17, label %20, label %23, !dbg !372

; <label>:20                                      ; preds = %14
  tail call void @LBM_initializeSpecialCellsForChannel(double* %19) #8, !dbg !373
  %21 = load [26000000 x double]** @dstGrid, align 8, !dbg !374, !tbaa !237
  %22 = getelementptr inbounds [26000000 x double]* %21, i64 0, i64 0, !dbg !375
  tail call void @LBM_initializeSpecialCellsForChannel(double* %22) #8, !dbg !376
  br label %26, !dbg !377

; <label>:23                                      ; preds = %14
  tail call void @LBM_initializeSpecialCellsForLDC(double* %19) #8, !dbg !378
  %24 = load [26000000 x double]** @dstGrid, align 8, !dbg !380, !tbaa !237
  %25 = getelementptr inbounds [26000000 x double]* %24, i64 0, i64 0, !dbg !381
  tail call void @LBM_initializeSpecialCellsForLDC(double* %25) #8, !dbg !382
  br label %26

; <label>:26                                      ; preds = %23, %20
  %27 = load [26000000 x double]** @srcGrid, align 8, !dbg !383, !tbaa !237
  %28 = getelementptr inbounds [26000000 x double]* %27, i64 0, i64 0, !dbg !384
  tail call void @LBM_showGridStatistics(double* %28) #8, !dbg !385
  ret void, !dbg !386
}

; Function Attrs: nounwind optsize ssp uwtable
define void @MAIN_startClock(%struct.MAIN_Time* nocapture %time) #0 {
  tail call void @llvm.dbg.value(metadata %struct.MAIN_Time* %time, i64 0, metadata !154, metadata !183), !dbg !387
  %1 = tail call i64 @sysconf(i32 3) #8, !dbg !388
  %2 = sitofp i64 %1 to double, !dbg !388
  %3 = fdiv double 1.000000e+00, %2, !dbg !389
  %4 = getelementptr inbounds %struct.MAIN_Time* %time, i64 0, i32 0, !dbg !390
  store double %3, double* %4, align 8, !dbg !391, !tbaa !216
  %5 = getelementptr inbounds %struct.MAIN_Time* %time, i64 0, i32 3, !dbg !392
  %6 = tail call i64 @times(%struct.tms* %5) #8, !dbg !393
  %7 = getelementptr inbounds %struct.MAIN_Time* %time, i64 0, i32 1, !dbg !394
  store i64 %6, i64* %7, align 8, !dbg !395, !tbaa !225
  ret void, !dbg !396
}

; Function Attrs: optsize
declare void @LBM_handleInOutFlow(double*) #2

; Function Attrs: optsize
declare void @LBM_performStreamCollide(double*, double*) #2

; Function Attrs: optsize
declare void @LBM_swapGrids([26000000 x double]**, [26000000 x double]**) #2

; Function Attrs: nounwind optsize
declare i32 @printf(i8* nocapture readonly, ...) #3

; Function Attrs: optsize
declare void @LBM_showGridStatistics(double*) #2

; Function Attrs: nounwind optsize ssp uwtable
define void @MAIN_stopClock(%struct.MAIN_Time* nocapture %time, %struct.MAIN_Param* nocapture readonly %param) #0 {
  tail call void @llvm.dbg.value(metadata %struct.MAIN_Time* %time, i64 0, metadata !159, metadata !183), !dbg !397
  tail call void @llvm.dbg.value(metadata %struct.MAIN_Param* %param, i64 0, metadata !160, metadata !183), !dbg !398
  %1 = getelementptr inbounds %struct.MAIN_Time* %time, i64 0, i32 4, !dbg !399
  %2 = tail call i64 @times(%struct.tms* %1) #8, !dbg !400
  %3 = getelementptr inbounds %struct.MAIN_Time* %time, i64 0, i32 2, !dbg !401
  store i64 %2, i64* %3, align 8, !dbg !402, !tbaa !403
  %4 = getelementptr inbounds %struct.tms* %1, i64 0, i32 0, !dbg !404
  %5 = load i64* %4, align 8, !dbg !404, !tbaa !405
  %6 = getelementptr inbounds %struct.MAIN_Time* %time, i64 0, i32 3, i32 0, !dbg !406
  %7 = load i64* %6, align 8, !dbg !406, !tbaa !407
  %8 = sub i64 %5, %7, !dbg !408
  %9 = uitofp i64 %8 to double, !dbg !409
  %10 = getelementptr inbounds %struct.MAIN_Time* %time, i64 0, i32 0, !dbg !410
  %11 = load double* %10, align 8, !dbg !410, !tbaa !216
  %12 = fmul double %11, %9, !dbg !411
  %13 = getelementptr inbounds %struct.MAIN_Time* %time, i64 0, i32 4, i32 1, !dbg !412
  %14 = load i64* %13, align 8, !dbg !412, !tbaa !413
  %15 = getelementptr inbounds %struct.MAIN_Time* %time, i64 0, i32 3, i32 1, !dbg !414
  %16 = load i64* %15, align 8, !dbg !414, !tbaa !415
  %17 = sub i64 %14, %16, !dbg !416
  %18 = uitofp i64 %17 to double, !dbg !417
  %19 = fmul double %11, %18, !dbg !418
  %20 = add i64 %14, %8, !dbg !419
  %21 = sub i64 %20, %16, !dbg !420
  %22 = uitofp i64 %21 to double, !dbg !421
  %23 = fmul double %11, %22, !dbg !422
  %24 = getelementptr inbounds %struct.MAIN_Time* %time, i64 0, i32 1, !dbg !423
  %25 = load i64* %24, align 8, !dbg !423, !tbaa !225
  %26 = sub i64 %2, %25, !dbg !424
  %27 = uitofp i64 %26 to double, !dbg !425
  %28 = fmul double %11, %27, !dbg !426
  %29 = getelementptr inbounds %struct.MAIN_Param* %param, i64 0, i32 0, !dbg !427
  %30 = load i32* %29, align 4, !dbg !427, !tbaa !192
  %31 = sitofp i32 %30 to double, !dbg !428
  %32 = fmul double %31, 0x3FF4CCCCCCCCCCCC, !dbg !429
  %33 = fdiv double %32, %27, !dbg !430
  %34 = fdiv double %33, %11, !dbg !431
  %35 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([76 x i8]* @.str7, i64 0, i64 0), double %12, double %19, double %23, double %28, double %34) #8, !dbg !432
  ret void, !dbg !433
}

; Function Attrs: nounwind optsize ssp uwtable
define void @MAIN_finalize(%struct.MAIN_Param* nocapture readonly %param) #0 {
  tail call void @llvm.dbg.value(metadata %struct.MAIN_Param* %param, i64 0, metadata !148, metadata !183), !dbg !434
  %1 = load [26000000 x double]** @srcGrid, align 8, !dbg !435, !tbaa !237
  %2 = getelementptr inbounds [26000000 x double]* %1, i64 0, i64 0, !dbg !436
  tail call void @LBM_showGridStatistics(double* %2) #8, !dbg !437
  %3 = getelementptr inbounds %struct.MAIN_Param* %param, i64 0, i32 2, !dbg !438
  %4 = load i32* %3, align 4, !dbg !438, !tbaa !281
  %5 = icmp eq i32 %4, 1, !dbg !440
  br i1 %5, label %6, label %11, !dbg !441

; <label>:6                                       ; preds = %0
  %7 = load [26000000 x double]** @srcGrid, align 8, !dbg !442, !tbaa !237
  %8 = getelementptr inbounds [26000000 x double]* %7, i64 0, i64 0, !dbg !443
  %9 = getelementptr inbounds %struct.MAIN_Param* %param, i64 0, i32 1, !dbg !444
  %10 = load i8** %9, align 8, !dbg !444, !tbaa !199
  tail call void @LBM_compareVelocityField(double* %8, i8* %10, i32 -1) #8, !dbg !445
  %.pr = load i32* %3, align 4, !dbg !446, !tbaa !281
  br label %11, !dbg !445

; <label>:11                                      ; preds = %6, %0
  %12 = phi i32 [ %.pr, %6 ], [ %4, %0 ], !dbg !446
  %13 = icmp eq i32 %12, 2, !dbg !448
  br i1 %13, label %14, label %19, !dbg !449

; <label>:14                                      ; preds = %11
  %15 = load [26000000 x double]** @srcGrid, align 8, !dbg !450, !tbaa !237
  %16 = getelementptr inbounds [26000000 x double]* %15, i64 0, i64 0, !dbg !451
  %17 = getelementptr inbounds %struct.MAIN_Param* %param, i64 0, i32 1, !dbg !452
  %18 = load i8** %17, align 8, !dbg !452, !tbaa !199
  tail call void @LBM_storeVelocityField(double* %16, i8* %18, i32 -1) #8, !dbg !453
  br label %19, !dbg !453

; <label>:19                                      ; preds = %14, %11
  tail call void @LBM_freeGrid(double** bitcast ([26000000 x double]** @srcGrid to double**)) #8, !dbg !454
  tail call void @LBM_freeGrid(double** bitcast ([26000000 x double]** @dstGrid to double**)) #8, !dbg !455
  ret void, !dbg !456
}

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: noreturn optsize
declare void @exit(i32) #4

; Function Attrs: nounwind optsize readonly
declare i32 @atoi(i8* nocapture) #5

; Function Attrs: optsize
declare i32 @"\01_stat$INODE64"(i8*, %struct.stat*) #2

; Function Attrs: optsize
declare void @LBM_allocateGrid(double**) #2

; Function Attrs: optsize
declare void @LBM_initializeGrid(double*) #2

; Function Attrs: optsize
declare void @LBM_loadObstacleFile(double*, i8*) #2

; Function Attrs: optsize
declare void @LBM_initializeSpecialCellsForChannel(double*) #2

; Function Attrs: optsize
declare void @LBM_initializeSpecialCellsForLDC(double*) #2

; Function Attrs: optsize
declare void @LBM_compareVelocityField(double*, i8*, i32) #2

; Function Attrs: optsize
declare void @LBM_storeVelocityField(double*, i8*, i32) #2

; Function Attrs: optsize
declare void @LBM_freeGrid(double**) #2

; Function Attrs: optsize
declare i64 @sysconf(i32) #2

; Function Attrs: nounwind optsize
declare i64 @times(%struct.tms* nocapture) #3

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #6

; Function Attrs: nounwind
declare i32 @puts(i8* nocapture readonly) #1

attributes #0 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind optsize readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readnone }
attributes #7 = { optsize }
attributes #8 = { nounwind optsize }
attributes #9 = { noreturn nounwind optsize }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!179, !180, !181}
!llvm.ident = !{!182}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !13, subprograms: !21, globals: !161, imports: !178)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/470.lbm/src/main.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{!3, !9}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 27, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/470.lbm/src/main.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!5 = !{!6, !7, !8}
!6 = !DIEnumerator(name: "NOTHING", value: 0)
!7 = !DIEnumerator(name: "COMPARE", value: 1)
!8 = !DIEnumerator(name: "STORE", value: 2)
!9 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 28, size: 32, align: 32, elements: !10)
!10 = !{!11, !12}
!11 = !DIEnumerator(name: "LDC", value: 0)
!12 = !DIEnumerator(name: "CHANNEL", value: 1)
!13 = !{!14, !15, !16, !17, !18}
!14 = !DIDerivedType(tag: DW_TAG_typedef, name: "MAIN_Action", file: !4, line: 27, baseType: !3)
!15 = !DIDerivedType(tag: DW_TAG_typedef, name: "MAIN_SimType", file: !4, line: 28, baseType: !9)
!16 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!17 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!18 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64, align: 64)
!19 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64, align: 64)
!20 = !DIBasicType(name: "double", size: 64, align: 64, encoding: DW_ATE_float)
!21 = !{!22, !62, !136, !143, !146, !149, !155}
!22 = !DISubprogram(name: "main", scope: !1, file: !1, line: 25, type: !23, isLocal: false, isDefinition: true, scopeLine: 25, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i32, i8**)* @main, variables: !28)
!23 = !DISubroutineType(types: !24)
!24 = !{!16, !16, !25}
!25 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 64, align: 64)
!26 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !27, size: 64, align: 64)
!27 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!28 = !{!29, !30, !31, !40, !61}
!29 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "nArgs", arg: 1, scope: !22, file: !1, line: 25, type: !16)
!30 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "arg", arg: 2, scope: !22, file: !1, line: 25, type: !25)
!31 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "param", scope: !22, file: !1, line: 26, type: !32)
!32 = !DIDerivedType(tag: DW_TAG_typedef, name: "MAIN_Param", file: !4, line: 36, baseType: !33)
!33 = !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 30, size: 256, align: 64, elements: !34)
!34 = !{!35, !36, !37, !38, !39}
!35 = !DIDerivedType(tag: DW_TAG_member, name: "nTimeSteps", scope: !33, file: !4, line: 31, baseType: !16, size: 32, align: 32)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "resultFilename", scope: !33, file: !4, line: 32, baseType: !26, size: 64, align: 64, offset: 64)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !33, file: !4, line: 33, baseType: !14, size: 32, align: 32, offset: 128)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "simType", scope: !33, file: !4, line: 34, baseType: !15, size: 32, align: 32, offset: 160)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "obstacleFilename", scope: !33, file: !4, line: 35, baseType: !26, size: 64, align: 64, offset: 192)
!40 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "time", scope: !22, file: !1, line: 28, type: !41)
!41 = !DIDerivedType(tag: DW_TAG_typedef, name: "MAIN_Time", file: !4, line: 24, baseType: !42)
!42 = !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 19, size: 704, align: 64, elements: !43)
!43 = !{!44, !45, !51, !52, !60}
!44 = !DIDerivedType(tag: DW_TAG_member, name: "timeScale", scope: !42, file: !4, line: 20, baseType: !20, size: 64, align: 64)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "tickStart", scope: !42, file: !4, line: 21, baseType: !46, size: 64, align: 64, offset: 64)
!46 = !DIDerivedType(tag: DW_TAG_typedef, name: "clock_t", file: !47, line: 30, baseType: !48)
!47 = !DIFile(filename: "/usr/include/sys/_types/_clock_t.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!48 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_clock_t", file: !49, line: 117, baseType: !50)
!49 = !DIFile(filename: "/usr/include/i386/_types.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!50 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "tickStop", scope: !42, file: !4, line: 21, baseType: !46, size: 64, align: 64, offset: 128)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "timeStart", scope: !42, file: !4, line: 22, baseType: !53, size: 256, align: 64, offset: 192)
!53 = !DICompositeType(tag: DW_TAG_structure_type, name: "tms", file: !54, line: 82, size: 256, align: 64, elements: !55)
!54 = !DIFile(filename: "/usr/include/sys/times.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!55 = !{!56, !57, !58, !59}
!56 = !DIDerivedType(tag: DW_TAG_member, name: "tms_utime", scope: !53, file: !54, line: 83, baseType: !46, size: 64, align: 64)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "tms_stime", scope: !53, file: !54, line: 84, baseType: !46, size: 64, align: 64, offset: 64)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "tms_cutime", scope: !53, file: !54, line: 85, baseType: !46, size: 64, align: 64, offset: 128)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "tms_cstime", scope: !53, file: !54, line: 86, baseType: !46, size: 64, align: 64, offset: 192)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "timeStop", scope: !42, file: !4, line: 22, baseType: !53, size: 256, align: 64, offset: 448)
!61 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "t", scope: !22, file: !1, line: 30, type: !16)
!62 = !DISubprogram(name: "MAIN_parseCommandLine", scope: !1, file: !1, line: 63, type: !63, isLocal: false, isDefinition: true, scopeLine: 63, flags: DIFlagPrototyped, isOptimized: true, function: void (i32, i8**, %struct.MAIN_Param*)* @MAIN_parseCommandLine, variables: !66)
!63 = !DISubroutineType(types: !64)
!64 = !{null, !16, !25, !65}
!65 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !32, size: 64, align: 64)
!66 = !{!67, !68, !69, !70}
!67 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "nArgs", arg: 1, scope: !62, file: !1, line: 63, type: !16)
!68 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "arg", arg: 2, scope: !62, file: !1, line: 63, type: !25)
!69 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "param", arg: 3, scope: !62, file: !1, line: 63, type: !65)
!70 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "fileStat", scope: !62, file: !1, line: 64, type: !71)
!71 = !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !72, line: 182, size: 1152, align: 64, elements: !73)
!72 = !DIFile(filename: "/usr/include/sys/stat.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!73 = !{!74, !80, !86, !89, !93, !99, !103, !104, !112, !113, !114, !115, !121, !125, !129, !130, !131, !132}
!74 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !71, file: !72, line: 182, baseType: !75, size: 32, align: 32)
!75 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !76, line: 30, baseType: !77)
!76 = !DIFile(filename: "/usr/include/sys/_types/_dev_t.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!77 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_dev_t", file: !78, line: 57, baseType: !79)
!78 = !DIFile(filename: "/usr/include/sys/_types.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!79 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int32_t", file: !49, line: 44, baseType: !16)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !71, file: !72, line: 182, baseType: !81, size: 16, align: 16, offset: 32)
!81 = !DIDerivedType(tag: DW_TAG_typedef, name: "mode_t", file: !82, line: 30, baseType: !83)
!82 = !DIFile(filename: "/usr/include/sys/_types/_mode_t.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!83 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_mode_t", file: !78, line: 70, baseType: !84)
!84 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !49, line: 43, baseType: !85)
!85 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !71, file: !72, line: 182, baseType: !87, size: 16, align: 16, offset: 48)
!87 = !DIDerivedType(tag: DW_TAG_typedef, name: "nlink_t", file: !88, line: 30, baseType: !84)
!88 = !DIFile(filename: "/usr/include/sys/_types/_nlink_t.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!89 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !71, file: !72, line: 182, baseType: !90, size: 64, align: 64, offset: 64)
!90 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_ino64_t", file: !78, line: 62, baseType: !91)
!91 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !49, line: 47, baseType: !92)
!92 = !DIBasicType(name: "long long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !71, file: !72, line: 182, baseType: !94, size: 32, align: 32, offset: 128)
!94 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !95, line: 30, baseType: !96)
!95 = !DIFile(filename: "/usr/include/sys/_types/_uid_t.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!96 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_uid_t", file: !78, line: 75, baseType: !97)
!97 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !49, line: 45, baseType: !98)
!98 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !71, file: !72, line: 182, baseType: !100, size: 32, align: 32, offset: 160)
!100 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !101, line: 30, baseType: !102)
!101 = !DIFile(filename: "/usr/include/sys/_types/_gid_t.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!102 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_gid_t", file: !78, line: 60, baseType: !97)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !71, file: !72, line: 182, baseType: !75, size: 32, align: 32, offset: 192)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "st_atimespec", scope: !71, file: !72, line: 182, baseType: !105, size: 128, align: 64, offset: 256)
!105 = !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !106, line: 30, size: 128, align: 64, elements: !107)
!106 = !DIFile(filename: "/usr/include/sys/_types/_timespec.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!107 = !{!108, !111}
!108 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !105, file: !106, line: 32, baseType: !109, size: 64, align: 64)
!109 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_time_t", file: !49, line: 120, baseType: !110)
!110 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !105, file: !106, line: 33, baseType: !110, size: 64, align: 64, offset: 64)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtimespec", scope: !71, file: !72, line: 182, baseType: !105, size: 128, align: 64, offset: 384)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctimespec", scope: !71, file: !72, line: 182, baseType: !105, size: 128, align: 64, offset: 512)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "st_birthtimespec", scope: !71, file: !72, line: 182, baseType: !105, size: 128, align: 64, offset: 640)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !71, file: !72, line: 182, baseType: !116, size: 64, align: 64, offset: 768)
!116 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !117, line: 30, baseType: !118)
!117 = !DIFile(filename: "/usr/include/sys/_types/_off_t.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!118 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_off_t", file: !78, line: 71, baseType: !119)
!119 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !49, line: 46, baseType: !120)
!120 = !DIBasicType(name: "long long int", size: 64, align: 64, encoding: DW_ATE_signed)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !71, file: !72, line: 182, baseType: !122, size: 64, align: 64, offset: 832)
!122 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !123, line: 30, baseType: !124)
!123 = !DIFile(filename: "/usr/include/sys/_types/_blkcnt_t.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!124 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_blkcnt_t", file: !78, line: 55, baseType: !119)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !71, file: !72, line: 182, baseType: !126, size: 32, align: 32, offset: 896)
!126 = !DIDerivedType(tag: DW_TAG_typedef, name: "blksize_t", file: !127, line: 30, baseType: !128)
!127 = !DIFile(filename: "/usr/include/sys/_types/_blksize_t.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!128 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_blksize_t", file: !78, line: 56, baseType: !79)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "st_flags", scope: !71, file: !72, line: 182, baseType: !97, size: 32, align: 32, offset: 928)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "st_gen", scope: !71, file: !72, line: 182, baseType: !97, size: 32, align: 32, offset: 960)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "st_lspare", scope: !71, file: !72, line: 182, baseType: !79, size: 32, align: 32, offset: 992)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "st_qspare", scope: !71, file: !72, line: 182, baseType: !133, size: 128, align: 64, offset: 1024)
!133 = !DICompositeType(tag: DW_TAG_array_type, baseType: !119, size: 128, align: 64, elements: !134)
!134 = !{!135}
!135 = !DISubrange(count: 2)
!136 = !DISubprogram(name: "MAIN_printInfo", scope: !1, file: !1, line: 105, type: !137, isLocal: false, isDefinition: true, scopeLine: 105, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.MAIN_Param*)* @MAIN_printInfo, variables: !141)
!137 = !DISubroutineType(types: !138)
!138 = !{null, !139}
!139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !140, size: 64, align: 64)
!140 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !32)
!141 = !{!142}
!142 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "param", arg: 1, scope: !136, file: !1, line: 105, type: !139)
!143 = !DISubprogram(name: "MAIN_initialize", scope: !1, file: !1, line: 124, type: !137, isLocal: false, isDefinition: true, scopeLine: 124, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.MAIN_Param*)* @MAIN_initialize, variables: !144)
!144 = !{!145}
!145 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "param", arg: 1, scope: !143, file: !1, line: 124, type: !139)
!146 = !DISubprogram(name: "MAIN_finalize", scope: !1, file: !1, line: 150, type: !137, isLocal: false, isDefinition: true, scopeLine: 150, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.MAIN_Param*)* @MAIN_finalize, variables: !147)
!147 = !{!148}
!148 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "param", arg: 1, scope: !146, file: !1, line: 150, type: !139)
!149 = !DISubprogram(name: "MAIN_startClock", scope: !1, file: !1, line: 165, type: !150, isLocal: false, isDefinition: true, scopeLine: 165, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.MAIN_Time*)* @MAIN_startClock, variables: !153)
!150 = !DISubroutineType(types: !151)
!151 = !{null, !152}
!152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !41, size: 64, align: 64)
!153 = !{!154}
!154 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "time", arg: 1, scope: !149, file: !1, line: 165, type: !152)
!155 = !DISubprogram(name: "MAIN_stopClock", scope: !1, file: !1, line: 173, type: !156, isLocal: false, isDefinition: true, scopeLine: 173, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.MAIN_Time*, %struct.MAIN_Param*)* @MAIN_stopClock, variables: !158)
!156 = !DISubroutineType(types: !157)
!157 = !{null, !152, !139}
!158 = !{!159, !160}
!159 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "time", arg: 1, scope: !155, file: !1, line: 173, type: !152)
!160 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "param", arg: 2, scope: !155, file: !1, line: 173, type: !139)
!161 = !{!162, !168, !169, !177}
!162 = !DIGlobalVariable(name: "actionString", scope: !136, file: !1, line: 106, type: !163, isLocal: true, isDefinition: true, variable: [3 x [32 x i8]]* @MAIN_printInfo.actionString)
!163 = !DICompositeType(tag: DW_TAG_array_type, baseType: !164, size: 768, align: 8, elements: !165)
!164 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !27)
!165 = !{!166, !167}
!166 = !DISubrange(count: 3)
!167 = !DISubrange(count: 32)
!168 = !DIGlobalVariable(name: "simTypeString", scope: !136, file: !1, line: 107, type: !163, isLocal: true, isDefinition: true, variable: [3 x [32 x i8]]* @MAIN_printInfo.simTypeString)
!169 = !DIGlobalVariable(name: "srcGrid", scope: !0, file: !1, line: 21, type: !170, isLocal: true, isDefinition: true, variable: [26000000 x double]** @srcGrid)
!170 = !DIDerivedType(tag: DW_TAG_typedef, name: "LBM_GridPtr", file: !171, line: 9, baseType: !172)
!171 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/470.lbm/src/lbm_1d_array.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !173, size: 64, align: 64)
!173 = !DIDerivedType(tag: DW_TAG_typedef, name: "LBM_Grid", file: !171, line: 8, baseType: !174)
!174 = !DICompositeType(tag: DW_TAG_array_type, baseType: !20, size: 1664000000, align: 64, elements: !175)
!175 = !{!176}
!176 = !DISubrange(count: 26000000)
!177 = !DIGlobalVariable(name: "dstGrid", scope: !0, file: !1, line: 21, type: !170, isLocal: true, isDefinition: true, variable: [26000000 x double]** @dstGrid)
!178 = !{}
!179 = !{i32 2, !"Dwarf Version", i32 2}
!180 = !{i32 2, !"Debug Info Version", i32 700000003}
!181 = !{i32 1, !"PIC Level", i32 2}
!182 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!183 = !DIExpression()
!184 = !DILocation(line: 25, column: 15, scope: !22)
!185 = !DILocation(line: 25, column: 28, scope: !22)
!186 = !DILocation(line: 28, column: 2, scope: !22)
!187 = !DILocation(line: 26, column: 13, scope: !22)
!188 = !DILocation(line: 32, column: 2, scope: !22)
!189 = !DILocation(line: 105, column: 40, scope: !136, inlinedAt: !190)
!190 = distinct !DILocation(line: 33, column: 2, scope: !22)
!191 = !DILocation(line: 116, column: 17, scope: !136, inlinedAt: !190)
!192 = !{!193, !194, i64 0}
!193 = !{!"", !194, i64 0, !197, i64 8, !195, i64 16, !195, i64 20, !197, i64 24}
!194 = !{!"int", !195, i64 0}
!195 = !{!"omnipotent char", !196, i64 0}
!196 = !{!"Simple C/C++ TBAA"}
!197 = !{!"any pointer", !195, i64 0}
!198 = !DILocation(line: 116, column: 36, scope: !136, inlinedAt: !190)
!199 = !{!193, !197, i64 8}
!200 = !DILocation(line: 117, column: 30, scope: !136, inlinedAt: !190)
!201 = !DILocation(line: 117, column: 10, scope: !136, inlinedAt: !190)
!202 = !DILocation(line: 117, column: 39, scope: !136, inlinedAt: !190)
!203 = !DILocation(line: 118, column: 18, scope: !136, inlinedAt: !190)
!204 = !{!193, !197, i64 24}
!205 = !DILocation(line: 118, column: 35, scope: !136, inlinedAt: !190)
!206 = !DILocation(line: 118, column: 10, scope: !136, inlinedAt: !190)
!207 = !DILocation(line: 108, column: 2, scope: !136, inlinedAt: !190)
!208 = !DILocation(line: 34, column: 2, scope: !22)
!209 = !DILocation(line: 28, column: 12, scope: !22)
!210 = !DILocation(line: 165, column: 34, scope: !149, inlinedAt: !211)
!211 = distinct !DILocation(line: 36, column: 2, scope: !22)
!212 = !DILocation(line: 166, column: 26, scope: !149, inlinedAt: !211)
!213 = !DILocation(line: 166, column: 24, scope: !149, inlinedAt: !211)
!214 = !DILocation(line: 166, column: 8, scope: !149, inlinedAt: !211)
!215 = !DILocation(line: 166, column: 18, scope: !149, inlinedAt: !211)
!216 = !{!217, !218, i64 0}
!217 = !{!"", !218, i64 0, !219, i64 8, !219, i64 16, !220, i64 24, !220, i64 56}
!218 = !{!"double", !195, i64 0}
!219 = !{!"long", !195, i64 0}
!220 = !{!"tms", !219, i64 0, !219, i64 8, !219, i64 16, !219, i64 24}
!221 = !DILocation(line: 167, column: 35, scope: !149, inlinedAt: !211)
!222 = !DILocation(line: 167, column: 20, scope: !149, inlinedAt: !211)
!223 = !DILocation(line: 167, column: 8, scope: !149, inlinedAt: !211)
!224 = !DILocation(line: 167, column: 18, scope: !149, inlinedAt: !211)
!225 = !{!217, !219, i64 8}
!226 = !DILocation(line: 30, column: 6, scope: !22)
!227 = !DILocation(line: 39, column: 16, scope: !228)
!228 = distinct !DILexicalBlock(scope: !229, file: !1, line: 39, column: 2)
!229 = distinct !DILexicalBlock(scope: !22, file: !1, line: 39, column: 2)
!230 = !DILocation(line: 39, column: 2, scope: !229)
!231 = !DILocation(line: 40, column: 21, scope: !232)
!232 = distinct !DILexicalBlock(scope: !233, file: !1, line: 40, column: 7)
!233 = distinct !DILexicalBlock(scope: !228, file: !1, line: 39, column: 43)
!234 = !DILocation(line: 40, column: 7, scope: !233)
!235 = !DILocation(line: 41, column: 26, scope: !236)
!236 = distinct !DILexicalBlock(scope: !232, file: !1, line: 40, column: 34)
!237 = !{!197, !197, i64 0}
!238 = !DILocation(line: 41, column: 25, scope: !236)
!239 = !DILocation(line: 41, column: 4, scope: !236)
!240 = !DILocation(line: 42, column: 3, scope: !236)
!241 = !DILocation(line: 44, column: 30, scope: !233)
!242 = !DILocation(line: 44, column: 29, scope: !233)
!243 = !DILocation(line: 44, column: 40, scope: !233)
!244 = !DILocation(line: 44, column: 39, scope: !233)
!245 = !DILocation(line: 44, column: 3, scope: !233)
!246 = !DILocation(line: 45, column: 3, scope: !233)
!247 = !DILocation(line: 47, column: 10, scope: !248)
!248 = distinct !DILexicalBlock(scope: !233, file: !1, line: 47, column: 7)
!249 = !DILocation(line: 47, column: 16, scope: !248)
!250 = !DILocation(line: 47, column: 7, scope: !233)
!251 = !DILocation(line: 48, column: 4, scope: !252)
!252 = distinct !DILexicalBlock(scope: !248, file: !1, line: 47, column: 23)
!253 = !DILocation(line: 49, column: 29, scope: !252)
!254 = !DILocation(line: 49, column: 28, scope: !252)
!255 = !DILocation(line: 49, column: 4, scope: !252)
!256 = !DILocation(line: 50, column: 3, scope: !252)
!257 = !DILocation(line: 39, column: 38, scope: !228)
!258 = !DILocation(line: 54, column: 2, scope: !22)
!259 = !DILocation(line: 56, column: 2, scope: !22)
!260 = !DILocation(line: 59, column: 1, scope: !22)
!261 = !DILocation(line: 63, column: 33, scope: !62)
!262 = !DILocation(line: 63, column: 46, scope: !62)
!263 = !DILocation(line: 63, column: 65, scope: !62)
!264 = !DILocation(line: 64, column: 2, scope: !62)
!265 = !DILocation(line: 66, column: 16, scope: !266)
!266 = distinct !DILexicalBlock(scope: !62, file: !1, line: 66, column: 6)
!267 = !DILocation(line: 67, column: 3, scope: !268)
!268 = distinct !DILexicalBlock(scope: !266, file: !1, line: 66, column: 31)
!269 = !DILocation(line: 68, column: 3, scope: !268)
!270 = !DILocation(line: 71, column: 32, scope: !62)
!271 = !DILocation(line: 71, column: 26, scope: !62)
!272 = !DILocation(line: 71, column: 9, scope: !62)
!273 = !DILocation(line: 71, column: 24, scope: !62)
!274 = !DILocation(line: 72, column: 26, scope: !62)
!275 = !DILocation(line: 72, column: 9, scope: !62)
!276 = !DILocation(line: 72, column: 24, scope: !62)
!277 = !DILocation(line: 73, column: 46, scope: !62)
!278 = !DILocation(line: 73, column: 40, scope: !62)
!279 = !DILocation(line: 73, column: 9, scope: !62)
!280 = !DILocation(line: 73, column: 24, scope: !62)
!281 = !{!193, !195, i64 16}
!282 = !DILocation(line: 74, column: 47, scope: !62)
!283 = !DILocation(line: 74, column: 41, scope: !62)
!284 = !DILocation(line: 74, column: 9, scope: !62)
!285 = !DILocation(line: 74, column: 24, scope: !62)
!286 = !{!193, !195, i64 20}
!287 = !DILocation(line: 76, column: 12, scope: !288)
!288 = distinct !DILexicalBlock(scope: !62, file: !1, line: 76, column: 6)
!289 = !DILocation(line: 76, column: 6, scope: !62)
!290 = !DILocation(line: 77, column: 29, scope: !291)
!291 = distinct !DILexicalBlock(scope: !288, file: !1, line: 76, column: 19)
!292 = !DILocation(line: 77, column: 10, scope: !291)
!293 = !DILocation(line: 77, column: 27, scope: !291)
!294 = !DILocation(line: 64, column: 14, scope: !62)
!295 = !DILocation(line: 79, column: 7, scope: !296)
!296 = distinct !DILexicalBlock(scope: !291, file: !1, line: 79, column: 7)
!297 = !DILocation(line: 79, column: 50, scope: !296)
!298 = !DILocation(line: 79, column: 7, scope: !291)
!299 = !DILocation(line: 81, column: 20, scope: !300)
!300 = distinct !DILexicalBlock(scope: !296, file: !1, line: 79, column: 57)
!301 = !DILocation(line: 80, column: 4, scope: !300)
!302 = !DILocation(line: 82, column: 4, scope: !300)
!303 = !DILocation(line: 84, column: 16, scope: !304)
!304 = distinct !DILexicalBlock(scope: !291, file: !1, line: 84, column: 7)
!305 = !{!306, !308, i64 96}
!306 = !{!"stat", !194, i64 0, !307, i64 4, !307, i64 6, !308, i64 8, !194, i64 16, !194, i64 20, !194, i64 24, !309, i64 32, !309, i64 48, !309, i64 64, !309, i64 80, !308, i64 96, !308, i64 104, !194, i64 112, !194, i64 116, !194, i64 120, !194, i64 124, !195, i64 128}
!307 = !{!"short", !195, i64 0}
!308 = !{!"long long", !195, i64 0}
!309 = !{!"timespec", !219, i64 0, !219, i64 8}
!310 = !DILocation(line: 84, column: 24, scope: !304)
!311 = !DILocation(line: 84, column: 7, scope: !291)
!312 = !DILocation(line: 95, column: 13, scope: !313)
!313 = distinct !DILexicalBlock(scope: !62, file: !1, line: 95, column: 6)
!314 = !DILocation(line: 88, column: 19, scope: !315)
!315 = distinct !DILexicalBlock(scope: !304, file: !1, line: 84, column: 68)
!316 = !DILocation(line: 88, column: 37, scope: !315)
!317 = !DILocation(line: 85, column: 4, scope: !315)
!318 = !DILocation(line: 90, column: 4, scope: !315)
!319 = !DILocation(line: 93, column: 14, scope: !288)
!320 = !DILocation(line: 93, column: 31, scope: !288)
!321 = !DILocation(line: 95, column: 20, scope: !313)
!322 = !DILocation(line: 95, column: 31, scope: !313)
!323 = !DILocation(line: 96, column: 19, scope: !313)
!324 = !DILocation(line: 96, column: 6, scope: !313)
!325 = !DILocation(line: 96, column: 47, scope: !313)
!326 = !DILocation(line: 95, column: 6, scope: !62)
!327 = !DILocation(line: 98, column: 19, scope: !328)
!328 = distinct !DILexicalBlock(scope: !313, file: !1, line: 96, column: 54)
!329 = !DILocation(line: 97, column: 3, scope: !328)
!330 = !DILocation(line: 99, column: 3, scope: !328)
!331 = !DILocation(line: 101, column: 1, scope: !62)
!332 = !DILocation(line: 105, column: 40, scope: !136)
!333 = !DILocation(line: 116, column: 17, scope: !136)
!334 = !DILocation(line: 116, column: 36, scope: !136)
!335 = !DILocation(line: 117, column: 30, scope: !136)
!336 = !DILocation(line: 117, column: 10, scope: !136)
!337 = !DILocation(line: 117, column: 60, scope: !136)
!338 = !DILocation(line: 117, column: 39, scope: !136)
!339 = !DILocation(line: 118, column: 18, scope: !136)
!340 = !DILocation(line: 118, column: 35, scope: !136)
!341 = !DILocation(line: 118, column: 10, scope: !136)
!342 = !DILocation(line: 108, column: 2, scope: !136)
!343 = !DILocation(line: 120, column: 1, scope: !136)
!344 = !DILocation(line: 124, column: 41, scope: !143)
!345 = !DILocation(line: 125, column: 2, scope: !143)
!346 = !DILocation(line: 126, column: 2, scope: !143)
!347 = !DILocation(line: 128, column: 23, scope: !143)
!348 = !DILocation(line: 128, column: 22, scope: !143)
!349 = !DILocation(line: 128, column: 2, scope: !143)
!350 = !DILocation(line: 129, column: 23, scope: !143)
!351 = !DILocation(line: 129, column: 22, scope: !143)
!352 = !DILocation(line: 129, column: 2, scope: !143)
!353 = !DILocation(line: 131, column: 13, scope: !354)
!354 = distinct !DILexicalBlock(scope: !143, file: !1, line: 131, column: 6)
!355 = !DILocation(line: 131, column: 30, scope: !354)
!356 = !DILocation(line: 131, column: 6, scope: !143)
!357 = !DILocation(line: 132, column: 26, scope: !358)
!358 = distinct !DILexicalBlock(scope: !354, file: !1, line: 131, column: 40)
!359 = !DILocation(line: 132, column: 25, scope: !358)
!360 = !DILocation(line: 132, column: 3, scope: !358)
!361 = !DILocation(line: 133, column: 26, scope: !358)
!362 = !DILocation(line: 133, column: 25, scope: !358)
!363 = !DILocation(line: 133, column: 42, scope: !358)
!364 = !DILocation(line: 133, column: 3, scope: !358)
!365 = !DILocation(line: 134, column: 2, scope: !358)
!366 = !DILocation(line: 136, column: 13, scope: !367)
!367 = distinct !DILexicalBlock(scope: !143, file: !1, line: 136, column: 6)
!368 = !DILocation(line: 136, column: 21, scope: !367)
!369 = !DILocation(line: 137, column: 42, scope: !370)
!370 = distinct !DILexicalBlock(scope: !367, file: !1, line: 136, column: 34)
!371 = !DILocation(line: 137, column: 41, scope: !370)
!372 = !DILocation(line: 136, column: 6, scope: !143)
!373 = !DILocation(line: 137, column: 3, scope: !370)
!374 = !DILocation(line: 138, column: 42, scope: !370)
!375 = !DILocation(line: 138, column: 41, scope: !370)
!376 = !DILocation(line: 138, column: 3, scope: !370)
!377 = !DILocation(line: 139, column: 2, scope: !370)
!378 = !DILocation(line: 141, column: 3, scope: !379)
!379 = distinct !DILexicalBlock(scope: !367, file: !1, line: 140, column: 7)
!380 = !DILocation(line: 142, column: 38, scope: !379)
!381 = !DILocation(line: 142, column: 37, scope: !379)
!382 = !DILocation(line: 142, column: 3, scope: !379)
!383 = !DILocation(line: 145, column: 27, scope: !143)
!384 = !DILocation(line: 145, column: 26, scope: !143)
!385 = !DILocation(line: 145, column: 2, scope: !143)
!386 = !DILocation(line: 146, column: 1, scope: !143)
!387 = !DILocation(line: 165, column: 34, scope: !149)
!388 = !DILocation(line: 166, column: 26, scope: !149)
!389 = !DILocation(line: 166, column: 24, scope: !149)
!390 = !DILocation(line: 166, column: 8, scope: !149)
!391 = !DILocation(line: 166, column: 18, scope: !149)
!392 = !DILocation(line: 167, column: 35, scope: !149)
!393 = !DILocation(line: 167, column: 20, scope: !149)
!394 = !DILocation(line: 167, column: 8, scope: !149)
!395 = !DILocation(line: 167, column: 18, scope: !149)
!396 = !DILocation(line: 168, column: 1, scope: !149)
!397 = !DILocation(line: 173, column: 33, scope: !155)
!398 = !DILocation(line: 173, column: 57, scope: !155)
!399 = !DILocation(line: 174, column: 34, scope: !155)
!400 = !DILocation(line: 174, column: 19, scope: !155)
!401 = !DILocation(line: 174, column: 8, scope: !155)
!402 = !DILocation(line: 174, column: 17, scope: !155)
!403 = !{!217, !219, i64 16}
!404 = !DILocation(line: 178, column: 26, scope: !155)
!405 = !{!217, !219, i64 56}
!406 = !DILocation(line: 178, column: 54, scope: !155)
!407 = !{!217, !219, i64 24}
!408 = !DILocation(line: 178, column: 36, scope: !155)
!409 = !DILocation(line: 178, column: 10, scope: !155)
!410 = !DILocation(line: 178, column: 73, scope: !155)
!411 = !DILocation(line: 178, column: 65, scope: !155)
!412 = !DILocation(line: 179, column: 26, scope: !155)
!413 = !{!217, !219, i64 64}
!414 = !DILocation(line: 179, column: 54, scope: !155)
!415 = !{!217, !219, i64 32}
!416 = !DILocation(line: 179, column: 36, scope: !155)
!417 = !DILocation(line: 179, column: 10, scope: !155)
!418 = !DILocation(line: 179, column: 65, scope: !155)
!419 = !DILocation(line: 180, column: 64, scope: !155)
!420 = !DILocation(line: 181, column: 36, scope: !155)
!421 = !DILocation(line: 180, column: 10, scope: !155)
!422 = !DILocation(line: 181, column: 65, scope: !155)
!423 = !DILocation(line: 182, column: 44, scope: !155)
!424 = !DILocation(line: 182, column: 36, scope: !155)
!425 = !DILocation(line: 182, column: 10, scope: !155)
!426 = !DILocation(line: 182, column: 65, scope: !155)
!427 = !DILocation(line: 183, column: 53, scope: !155)
!428 = !DILocation(line: 183, column: 46, scope: !155)
!429 = !DILocation(line: 183, column: 44, scope: !155)
!430 = !DILocation(line: 183, column: 64, scope: !155)
!431 = !DILocation(line: 184, column: 65, scope: !155)
!432 = !DILocation(line: 176, column: 2, scope: !155)
!433 = !DILocation(line: 185, column: 1, scope: !155)
!434 = !DILocation(line: 150, column: 39, scope: !146)
!435 = !DILocation(line: 151, column: 27, scope: !146)
!436 = !DILocation(line: 151, column: 26, scope: !146)
!437 = !DILocation(line: 151, column: 2, scope: !146)
!438 = !DILocation(line: 153, column: 13, scope: !439)
!439 = distinct !DILexicalBlock(scope: !146, file: !1, line: 153, column: 6)
!440 = !DILocation(line: 153, column: 20, scope: !439)
!441 = !DILocation(line: 153, column: 6, scope: !146)
!442 = !DILocation(line: 154, column: 30, scope: !439)
!443 = !DILocation(line: 154, column: 29, scope: !439)
!444 = !DILocation(line: 154, column: 46, scope: !439)
!445 = !DILocation(line: 154, column: 3, scope: !439)
!446 = !DILocation(line: 155, column: 13, scope: !447)
!447 = distinct !DILexicalBlock(scope: !146, file: !1, line: 155, column: 6)
!448 = !DILocation(line: 155, column: 20, scope: !447)
!449 = !DILocation(line: 155, column: 6, scope: !146)
!450 = !DILocation(line: 156, column: 27, scope: !447)
!451 = !DILocation(line: 156, column: 26, scope: !447)
!452 = !DILocation(line: 156, column: 43, scope: !447)
!453 = !DILocation(line: 156, column: 2, scope: !447)
!454 = !DILocation(line: 158, column: 2, scope: !146)
!455 = !DILocation(line: 159, column: 2, scope: !146)
!456 = !DILocation(line: 160, column: 1, scope: !146)
