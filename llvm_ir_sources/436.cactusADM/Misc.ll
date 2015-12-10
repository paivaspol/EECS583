; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/Cactus/Misc.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.regmatch_t = type { i32, i32 }
%struct.re_pattern_buffer = type { i8*, i64, i64, i64, i8*, i8*, i64, i8 }

@.str = private unnamed_addr constant [73 x i8] c"../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/Cactus/Misc.c\00", align 1
@.str1 = private unnamed_addr constant [7 x i8] c"Cactus\00", align 1
@.str2 = private unnamed_addr constant [43 x i8] c"CCTK_Equals: First string null (2nd is %s)\00", align 1
@.str3 = private unnamed_addr constant [44 x i8] c"CCTK_Equals: Second string null (1st is %s)\00", align 1
@.str4 = private unnamed_addr constant [31 x i8] c"CCTK_Equals: Both strings null\00", align 1
@.str5 = private unnamed_addr constant [106 x i8] c"Null Terminating a string with length %d !!\0AThis is probably an error in calling a C routine from Fortran\00", align 1
@.str6 = private unnamed_addr constant [50 x i8] c"(\5C[|\5C()?([^]):]*):?([^]):]*)?:?([^]):]*)?(\5C]|\5C))?\00", align 1
@.str7 = private unnamed_addr constant [6 x i8] c"Flesh\00", align 1
@.str8 = private unnamed_addr constant [14 x i8] c"Invalid range\00", align 1
@.str9 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@.str10 = private unnamed_addr constant [2 x i8] c"t\00", align 1
@.str11 = private unnamed_addr constant [4 x i8] c"yes\00", align 1
@.str12 = private unnamed_addr constant [2 x i8] c"y\00", align 1
@.str13 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str14 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@.str15 = private unnamed_addr constant [2 x i8] c"f\00", align 1
@.str16 = private unnamed_addr constant [3 x i8] c"no\00", align 1
@.str17 = private unnamed_addr constant [2 x i8] c"n\00", align 1
@.str18 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str20 = private unnamed_addr constant [102 x i8] c"CCTK_FortranString: fortran string buffer is too short to hold C string '%s, string will be truncated\00", align 1
@.str21 = private unnamed_addr constant [79 x i8] c"$Header: /cactus/Cactus/src/util/Misc.c,v 1.61 2001/12/04 10:42:39 allen Exp $\00", align 1

; Function Attrs: nounwind optsize readnone ssp uwtable
define i8* @CCTKi_version_util_Misc_c() #0 {
  ret i8* getelementptr inbounds ([79 x i8]* @.str21, i64 0, i64 0), !dbg !251
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @CCTK_Equals(i8* %string1, i8* %string2) #1 {
  tail call void @llvm.dbg.value(metadata i8* %string1, i64 0, metadata !22, metadata !252), !dbg !253
  tail call void @llvm.dbg.value(metadata i8* %string2, i64 0, metadata !23, metadata !252), !dbg !254
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !24, metadata !252), !dbg !255
  %1 = icmp ne i8* %string1, null, !dbg !256
  %2 = icmp ne i8* %string2, null, !dbg !258
  %or.cond = and i1 %1, %2, !dbg !259
  br i1 %or.cond, label %12, label %3, !dbg !259

; <label>:3                                       ; preds = %0
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !24, metadata !252), !dbg !255
  %4 = icmp eq i8* %string1, null, !dbg !260
  %or.cond3 = and i1 %4, %2, !dbg !263
  br i1 %or.cond3, label %5, label %7, !dbg !263

; <label>:5                                       ; preds = %3
  %6 = tail call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 0, i32 128, i8* getelementptr inbounds ([73 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([43 x i8]* @.str2, i64 0, i64 0), i8* %string2) #7, !dbg !264
  br label %15, !dbg !266

; <label>:7                                       ; preds = %3
  %or.cond5 = or i1 %4, %2, !dbg !267
  br i1 %or.cond5, label %10, label %8, !dbg !267

; <label>:8                                       ; preds = %7
  %9 = tail call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 0, i32 134, i8* getelementptr inbounds ([73 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([44 x i8]* @.str3, i64 0, i64 0), i8* %string1) #7, !dbg !269
  br label %15, !dbg !271

; <label>:10                                      ; preds = %7
  %11 = tail call i32 @CCTK_Warn(i32 0, i32 139, i8* getelementptr inbounds ([73 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([31 x i8]* @.str4, i64 0, i64 0)) #7, !dbg !272
  br label %15

; <label>:12                                      ; preds = %0
  %13 = tail call i32 @Util_StrCmpi(i8* %string1, i8* %string2) #7, !dbg !274
  %14 = icmp eq i32 %13, 0, !dbg !274
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !24, metadata !252), !dbg !255
  %. = zext i1 %14 to i32, !dbg !277
  ret i32 %., !dbg !277

; <label>:15                                      ; preds = %5, %10, %8
  ret i32 0, !dbg !278
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: optsize
declare i32 @CCTK_VWarn(i32, i32, i8*, i8*, i8*, ...) #3

; Function Attrs: optsize
declare i32 @CCTK_Warn(i32, i32, i8*, i8*, i8*) #3

; Function Attrs: optsize
declare i32 @Util_StrCmpi(i8*, i8*) #3

; Function Attrs: nounwind optsize ssp uwtable
define i32 @cctk_equals_(i8** nocapture readonly %arg1, i8* nocapture readonly %cctk_str1, i32 %cctk_strlen1) #1 {
  tail call void @llvm.dbg.value(metadata i8** %arg1, i64 0, metadata !31, metadata !252), !dbg !279
  tail call void @llvm.dbg.value(metadata i8* %cctk_str1, i64 0, metadata !32, metadata !252), !dbg !280
  tail call void @llvm.dbg.value(metadata i32 %cctk_strlen1, i64 0, metadata !33, metadata !252), !dbg !280
  %1 = tail call i8* @Util_NullTerminateString(i8* %cctk_str1, i32 %cctk_strlen1) #8, !dbg !281
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !35, metadata !252), !dbg !281
  %2 = load i8** %arg1, align 8, !dbg !282, !tbaa !283
  %3 = tail call i32 @CCTK_Equals(i8* %2, i8* %1) #8, !dbg !287
  tail call void @llvm.dbg.value(metadata i32 %3, i64 0, metadata !34, metadata !252), !dbg !288
  tail call void @free(i8* %1) #8, !dbg !289
  ret i32 %3, !dbg !290
}

; Function Attrs: nounwind optsize ssp uwtable
define noalias i8* @Util_NullTerminateString(i8* nocapture readonly %instring, i32 %len) #1 {
  tail call void @llvm.dbg.value(metadata i8* %instring, i64 0, metadata !40, metadata !252), !dbg !291
  tail call void @llvm.dbg.value(metadata i32 %len, i64 0, metadata !41, metadata !252), !dbg !292
  %1 = icmp ugt i32 %len, 100000, !dbg !293
  br i1 %1, label %2, label %.preheader1, !dbg !295

; <label>:2                                       ; preds = %0
  %3 = tail call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 1, i32 205, i8* getelementptr inbounds ([73 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([106 x i8]* @.str5, i64 0, i64 0), i32 %len) #7, !dbg !296
  br label %.preheader1, !dbg !298

.preheader1:                                      ; preds = %0, %2, %5
  %position.0 = phi i32 [ %6, %5 ], [ %len, %2 ], [ %len, %0 ]
  %4 = icmp eq i32 %position.0, 0, !dbg !299
  br i1 %4, label %.critedge, label %5, !dbg !300

; <label>:5                                       ; preds = %.preheader1
  %6 = add i32 %position.0, -1, !dbg !301
  %7 = zext i32 %6 to i64, !dbg !302
  %8 = getelementptr inbounds i8* %instring, i64 %7, !dbg !302
  %9 = load i8* %8, align 1, !dbg !302, !tbaa !303
  %10 = icmp eq i8 %9, 32, !dbg !304
  br i1 %10, label %.preheader1, label %.critedge, !dbg !305

.critedge:                                        ; preds = %.preheader1, %5
  %position.0.lcssa = phi i32 [ 0, %.preheader1 ], [ %position.0, %5 ]
  %11 = add i32 %position.0.lcssa, 1, !dbg !306
  %12 = zext i32 %11 to i64, !dbg !307
  %13 = tail call i8* @malloc(i64 %12) #7, !dbg !308
  tail call void @llvm.dbg.value(metadata i8* %13, i64 0, metadata !42, metadata !252), !dbg !309
  %14 = icmp eq i8* %13, null, !dbg !310
  br i1 %14, label %22, label %.preheader, !dbg !312

.preheader:                                       ; preds = %.critedge
  %15 = icmp eq i32 %position.0.lcssa, 0, !dbg !313
  br i1 %15, label %19, label %.lr.ph, !dbg !317

.lr.ph:                                           ; preds = %.preheader
  %16 = add i32 %position.0.lcssa, -1, !dbg !317
  %17 = zext i32 %16 to i64
  %18 = add nuw nsw i64 %17, 1, !dbg !317
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* %instring, i64 %18, i32 1, i1 false), !dbg !318
  br label %19, !dbg !317

; <label>:19                                      ; preds = %.preheader, %.lr.ph
  %20 = zext i32 %position.0.lcssa to i64, !dbg !320
  %21 = getelementptr inbounds i8* %13, i64 %20, !dbg !320
  store i8 0, i8* %21, align 1, !dbg !321, !tbaa !303
  br label %22, !dbg !322

; <label>:22                                      ; preds = %.critedge, %19
  ret i8* %13, !dbg !323
}

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) #4

; Function Attrs: nounwind optsize
declare noalias i8* @malloc(i64) #4

; Function Attrs: nounwind optsize ssp uwtable
define i32 @Util_InList(i8* %string1, i32 %n_elements, ...) #1 {
  %ap = alloca [1 x %struct.__va_list_tag], align 16
  tail call void @llvm.dbg.value(metadata i8* %string1, i64 0, metadata !49, metadata !252), !dbg !324
  tail call void @llvm.dbg.value(metadata i32 %n_elements, i64 0, metadata !50, metadata !252), !dbg !325
  tail call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %ap, metadata !53, metadata !252), !dbg !326
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !51, metadata !252), !dbg !327
  %1 = bitcast [1 x %struct.__va_list_tag]* %ap to i8*, !dbg !328
  call void @llvm.va_start(i8* %1), !dbg !328
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !52, metadata !252), !dbg !329
  %2 = icmp sgt i32 %n_elements, 0, !dbg !330
  br i1 %2, label %.lr.ph, label %._crit_edge, !dbg !333

.lr.ph:                                           ; preds = %0
  %3 = getelementptr inbounds [1 x %struct.__va_list_tag]* %ap, i64 0, i64 0, i32 0, !dbg !334
  %4 = getelementptr inbounds [1 x %struct.__va_list_tag]* %ap, i64 0, i64 0, i32 3, !dbg !334
  %5 = getelementptr inbounds [1 x %struct.__va_list_tag]* %ap, i64 0, i64 0, i32 2, !dbg !334
  br label %8, !dbg !333

; <label>:6                                       ; preds = %19
  %7 = icmp slt i32 %24, %n_elements, !dbg !330
  br i1 %7, label %8, label %._crit_edge, !dbg !333

; <label>:8                                       ; preds = %.lr.ph, %6
  %arg.01 = phi i32 [ 0, %.lr.ph ], [ %24, %6 ]
  %9 = load i32* %3, align 16, !dbg !334
  %10 = icmp ult i32 %9, 41, !dbg !334
  br i1 %10, label %11, label %16, !dbg !334

; <label>:11                                      ; preds = %8
  %12 = load i8** %4, align 16, !dbg !334
  %13 = sext i32 %9 to i64, !dbg !334
  %14 = getelementptr i8* %12, i64 %13, !dbg !334
  %15 = add i32 %9, 8, !dbg !334
  store i32 %15, i32* %3, align 16, !dbg !334
  br label %19, !dbg !334

; <label>:16                                      ; preds = %8
  %17 = load i8** %5, align 8, !dbg !334
  %18 = getelementptr i8* %17, i64 8, !dbg !334
  store i8* %18, i8** %5, align 8, !dbg !334
  br label %19, !dbg !334

; <label>:19                                      ; preds = %16, %11
  %.in = phi i8* [ %14, %11 ], [ %17, %16 ]
  %20 = bitcast i8* %.in to i8**, !dbg !334
  %21 = load i8** %20, align 8, !dbg !334
  call void @llvm.dbg.value(metadata i8* %21, i64 0, metadata !68, metadata !252), !dbg !336
  %22 = call i32 @CCTK_Equals(i8* %string1, i8* %21) #8, !dbg !337
  %23 = icmp eq i32 %22, 0, !dbg !337
  %24 = add nuw nsw i32 %arg.01, 1, !dbg !339
  call void @llvm.dbg.value(metadata i32 %24, i64 0, metadata !52, metadata !252), !dbg !329
  br i1 %23, label %6, label %._crit_edge, !dbg !340

._crit_edge:                                      ; preds = %6, %19, %0
  %retval.0 = phi i32 [ 0, %0 ], [ 0, %6 ], [ 1, %19 ]
  call void @llvm.va_end(i8* %1), !dbg !341
  ret i32 %retval.0, !dbg !342
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #5

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #5

; Function Attrs: nounwind optsize ssp uwtable
define i32 @Util_IntInRange(i32 %inval, i8* %range) #1 {
  %pmatch = alloca [6 x %struct.regmatch_t], align 16
  tail call void @llvm.dbg.value(metadata i32 %inval, i64 0, metadata !73, metadata !252), !dbg !343
  tail call void @llvm.dbg.value(metadata i8* %range, i64 0, metadata !74, metadata !252), !dbg !344
  %1 = bitcast [6 x %struct.regmatch_t]* %pmatch to i8*, !dbg !345
  call void @llvm.lifetime.start(i64 48, i8* %1) #5, !dbg !345
  tail call void @llvm.dbg.declare(metadata [6 x %struct.regmatch_t]* %pmatch, metadata !76, metadata !252), !dbg !346
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !75, metadata !252), !dbg !347
  %2 = getelementptr inbounds [6 x %struct.regmatch_t]* %pmatch, i64 0, i64 0, !dbg !348
  %3 = call i32 @CCTK_RegexMatch(i8* %range, i8* getelementptr inbounds ([50 x i8]* @.str6, i64 0, i64 0), i32 6, %struct.regmatch_t* %2) #8, !dbg !350
  %4 = icmp eq i32 %3, 0, !dbg !351
  br i1 %4, label %78, label %5, !dbg !352

; <label>:5                                       ; preds = %0
  %6 = getelementptr inbounds [6 x %struct.regmatch_t]* %pmatch, i64 0, i64 1, i32 0, !dbg !353
  %7 = load i32* %6, align 8, !dbg !353, !tbaa !356
  %8 = icmp eq i32 %7, -1, !dbg !359
  br i1 %8, label %13, label %9, !dbg !360

; <label>:9                                       ; preds = %5
  %10 = sext i32 %7 to i64, !dbg !361
  %11 = getelementptr inbounds i8* %range, i64 %10, !dbg !361
  %12 = load i8* %11, align 1, !dbg !361, !tbaa !303
  %cond = icmp eq i8 %12, 40, !dbg !363
  %. = zext i1 %cond to i32, !dbg !364
  br label %13, !dbg !364

; <label>:13                                      ; preds = %5, %9
  %start_closed.0 = phi i32 [ %., %9 ], [ 0, %5 ]
  %14 = getelementptr inbounds [6 x %struct.regmatch_t]* %pmatch, i64 0, i64 2, i32 0, !dbg !366
  %15 = bitcast i32* %14 to i64*, !dbg !366
  %16 = load i64* %15, align 16, !dbg !366
  %17 = trunc i64 %16 to i32, !dbg !366
  %18 = icmp eq i32 %17, -1, !dbg !368
  br i1 %18, label %30, label %19, !dbg !369

; <label>:19                                      ; preds = %13
  %20 = lshr i64 %16, 32
  %21 = trunc i64 %20 to i32
  %22 = icmp sgt i32 %21, %17, !dbg !370
  br i1 %22, label %23, label %30, !dbg !371

; <label>:23                                      ; preds = %19
  %sext6 = shl i64 %16, 32, !dbg !372
  %24 = ashr exact i64 %sext6, 32, !dbg !372
  %25 = getelementptr inbounds i8* %range, i64 %24, !dbg !372
  %26 = load i8* %25, align 1, !dbg !372, !tbaa !303
  %27 = icmp eq i8 %26, 42, !dbg !373
  br i1 %27, label %30, label %28, !dbg !374

; <label>:28                                      ; preds = %23
  %29 = call i32 @atoi(i8* %25) #7, !dbg !375
  call void @llvm.dbg.value(metadata i32 %29, i64 0, metadata !89, metadata !252), !dbg !377
  br label %30, !dbg !378

; <label>:30                                      ; preds = %19, %13, %23, %28
  %start.0 = phi i32 [ %29, %28 ], [ -2147483648, %23 ], [ -2147483648, %13 ], [ -2147483648, %19 ]
  %31 = getelementptr inbounds [6 x %struct.regmatch_t]* %pmatch, i64 0, i64 3, i32 0, !dbg !379
  %32 = bitcast i32* %31 to i64*, !dbg !379
  %33 = load i64* %32, align 8, !dbg !379
  %34 = trunc i64 %33 to i32, !dbg !379
  %35 = icmp eq i32 %34, -1, !dbg !381
  br i1 %35, label %47, label %36, !dbg !382

; <label>:36                                      ; preds = %30
  %37 = lshr i64 %33, 32
  %38 = trunc i64 %37 to i32
  %39 = icmp sgt i32 %38, %34, !dbg !383
  br i1 %39, label %40, label %47, !dbg !384

; <label>:40                                      ; preds = %36
  %sext5 = shl i64 %33, 32, !dbg !385
  %41 = ashr exact i64 %sext5, 32, !dbg !385
  %42 = getelementptr inbounds i8* %range, i64 %41, !dbg !385
  %43 = load i8* %42, align 1, !dbg !385, !tbaa !303
  %44 = icmp eq i8 %43, 42, !dbg !386
  br i1 %44, label %47, label %45, !dbg !387

; <label>:45                                      ; preds = %40
  %46 = call i32 @atoi(i8* %42) #7, !dbg !388
  call void @llvm.dbg.value(metadata i32 %46, i64 0, metadata !90, metadata !252), !dbg !390
  br label %47, !dbg !391

; <label>:47                                      ; preds = %36, %30, %40, %45
  %end.0 = phi i32 [ %46, %45 ], [ 2147483647, %40 ], [ 2147483647, %30 ], [ 2147483647, %36 ]
  %48 = getelementptr inbounds [6 x %struct.regmatch_t]* %pmatch, i64 0, i64 4, i32 0, !dbg !392
  %49 = bitcast i32* %48 to i64*, !dbg !392
  %50 = load i64* %49, align 16, !dbg !392
  %51 = trunc i64 %50 to i32, !dbg !392
  %52 = icmp eq i32 %51, -1, !dbg !394
  br i1 %52, label %61, label %53, !dbg !395

; <label>:53                                      ; preds = %47
  %54 = lshr i64 %50, 32
  %55 = trunc i64 %54 to i32
  %56 = icmp sgt i32 %55, %51, !dbg !396
  br i1 %56, label %57, label %61, !dbg !397

; <label>:57                                      ; preds = %53
  %sext = shl i64 %50, 32, !dbg !398
  %58 = ashr exact i64 %sext, 32, !dbg !398
  %59 = getelementptr inbounds i8* %range, i64 %58, !dbg !398
  %60 = call i32 @atoi(i8* %59) #7, !dbg !400
  call void @llvm.dbg.value(metadata i32 %60, i64 0, metadata !91, metadata !252), !dbg !401
  br label %61, !dbg !402

; <label>:61                                      ; preds = %53, %47, %57
  %step.0 = phi i32 [ %60, %57 ], [ 1, %47 ], [ 1, %53 ]
  %62 = getelementptr inbounds [6 x %struct.regmatch_t]* %pmatch, i64 0, i64 5, i32 0, !dbg !403
  %63 = load i32* %62, align 8, !dbg !403, !tbaa !356
  %64 = icmp eq i32 %63, -1, !dbg !405
  br i1 %64, label %69, label %65, !dbg !406

; <label>:65                                      ; preds = %61
  %66 = sext i32 %63 to i64, !dbg !407
  %67 = getelementptr inbounds i8* %range, i64 %66, !dbg !407
  %68 = load i8* %67, align 1, !dbg !407, !tbaa !303
  %cond1 = icmp eq i8 %68, 41, !dbg !409
  %.2 = zext i1 %cond1 to i32, !dbg !410
  br label %69, !dbg !410

; <label>:69                                      ; preds = %61, %65
  %end_closed.0 = phi i32 [ %.2, %65 ], [ 0, %61 ]
  %70 = add nsw i32 %start.0, %start_closed.0, !dbg !412
  %71 = icmp sgt i32 %70, %inval, !dbg !414
  %72 = sub nsw i32 %end.0, %end_closed.0
  %73 = icmp slt i32 %72, %inval, !dbg !415
  %or.cond = or i1 %71, %73, !dbg !416
  br i1 %or.cond, label %80, label %74, !dbg !416

; <label>:74                                      ; preds = %69
  %75 = sub nsw i32 %inval, %start.0, !dbg !417
  %76 = srem i32 %75, %step.0, !dbg !418
  %77 = icmp eq i32 %76, 0, !dbg !418
  call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !75, metadata !252), !dbg !347
  %.4 = zext i1 %77 to i32, !dbg !419
  br label %80, !dbg !419

; <label>:78                                      ; preds = %0
  %79 = call i32 @CCTK_Warn(i32 1, i32 444, i8* getelementptr inbounds ([73 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8]* @.str7, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8]* @.str8, i64 0, i64 0)) #7, !dbg !420
  br label %80

; <label>:80                                      ; preds = %74, %69, %78
  %retval.0 = phi i32 [ 0, %69 ], [ 0, %78 ], [ %.4, %74 ]
  call void @llvm.lifetime.end(i64 48, i8* %1) #5, !dbg !422
  ret i32 %retval.0, !dbg !422
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #5

; Function Attrs: nounwind optsize ssp uwtable
define i32 @CCTK_RegexMatch(i8* %string, i8* %pattern, i32 %nmatch, %struct.regmatch_t* %pmatch) #1 {
  %re = alloca %struct.re_pattern_buffer, align 8
  tail call void @llvm.dbg.value(metadata i8* %string, i64 0, metadata !195, metadata !252), !dbg !423
  tail call void @llvm.dbg.value(metadata i8* %pattern, i64 0, metadata !196, metadata !252), !dbg !424
  tail call void @llvm.dbg.value(metadata i32 %nmatch, i64 0, metadata !197, metadata !252), !dbg !425
  tail call void @llvm.dbg.value(metadata %struct.regmatch_t* %pmatch, i64 0, metadata !198, metadata !252), !dbg !426
  %1 = bitcast %struct.re_pattern_buffer* %re to i8*, !dbg !427
  call void @llvm.lifetime.start(i64 64, i8* %1) #5, !dbg !427
  tail call void @llvm.dbg.value(metadata %struct.re_pattern_buffer* %re, i64 0, metadata !201, metadata !252), !dbg !428
  %2 = call i32 @regcomp(%struct.re_pattern_buffer* %re, i8* %pattern, i32 1) #7, !dbg !429
  %3 = icmp eq i32 %2, 0, !dbg !431
  br i1 %3, label %4, label %8, !dbg !432

; <label>:4                                       ; preds = %0
  %5 = sext i32 %nmatch to i64, !dbg !433
  call void @llvm.dbg.value(metadata %struct.re_pattern_buffer* %re, i64 0, metadata !201, metadata !252), !dbg !428
  %6 = call i32 @regexec(%struct.re_pattern_buffer* %re, i8* %string, i64 %5, %struct.regmatch_t* %pmatch, i32 0) #7, !dbg !435
  call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !200, metadata !252), !dbg !436
  call void @llvm.dbg.value(metadata %struct.re_pattern_buffer* %re, i64 0, metadata !201, metadata !252), !dbg !428
  call void @regfree(%struct.re_pattern_buffer* %re) #7, !dbg !437
  %7 = icmp eq i32 %6, 0, !dbg !438
  %. = zext i1 %7 to i32
  br label %8

; <label>:8                                       ; preds = %0, %4
  %retval.0 = phi i32 [ %., %4 ], [ 0, %0 ]
  call void @llvm.lifetime.end(i64 64, i8* %1) #5, !dbg !440
  ret i32 %retval.0, !dbg !440
}

; Function Attrs: nounwind optsize readonly
declare i32 @atoi(i8* nocapture) #6

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #5

; Function Attrs: nounwind optsize ssp uwtable
define i32 @Util_DoubleInRange(double %inval, i8* %range) #1 {
  %pmatch = alloca [6 x %struct.regmatch_t], align 16
  tail call void @llvm.dbg.value(metadata double %inval, i64 0, metadata !97, metadata !252), !dbg !441
  tail call void @llvm.dbg.value(metadata i8* %range, i64 0, metadata !98, metadata !252), !dbg !442
  %1 = bitcast [6 x %struct.regmatch_t]* %pmatch to i8*, !dbg !443
  call void @llvm.lifetime.start(i64 48, i8* %1) #5, !dbg !443
  tail call void @llvm.dbg.declare(metadata [6 x %struct.regmatch_t]* %pmatch, metadata !100, metadata !252), !dbg !444
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !99, metadata !252), !dbg !445
  %2 = getelementptr inbounds [6 x %struct.regmatch_t]* %pmatch, i64 0, i64 0, !dbg !446
  %3 = call i32 @CCTK_RegexMatch(i8* %range, i8* getelementptr inbounds ([50 x i8]* @.str6, i64 0, i64 0), i32 6, %struct.regmatch_t* %2) #8, !dbg !448
  %4 = icmp eq i32 %3, 0, !dbg !449
  br i1 %4, label %43, label %5, !dbg !450

; <label>:5                                       ; preds = %0
  %6 = getelementptr inbounds [6 x %struct.regmatch_t]* %pmatch, i64 0, i64 2, i32 0, !dbg !451
  %7 = bitcast i32* %6 to i64*, !dbg !451
  %8 = load i64* %7, align 16, !dbg !451
  %9 = trunc i64 %8 to i32, !dbg !451
  %10 = icmp eq i32 %9, -1, !dbg !454
  br i1 %10, label %22, label %11, !dbg !455

; <label>:11                                      ; preds = %5
  %12 = lshr i64 %8, 32
  %13 = trunc i64 %12 to i32
  %14 = icmp sgt i32 %13, %9, !dbg !456
  br i1 %14, label %15, label %22, !dbg !457

; <label>:15                                      ; preds = %11
  %sext1 = shl i64 %8, 32, !dbg !458
  %16 = ashr exact i64 %sext1, 32, !dbg !458
  %17 = getelementptr inbounds i8* %range, i64 %16, !dbg !458
  %18 = load i8* %17, align 1, !dbg !458, !tbaa !303
  %19 = icmp eq i8 %18, 42, !dbg !459
  br i1 %19, label %22, label %20, !dbg !460

; <label>:20                                      ; preds = %15
  %21 = call double @atof(i8* %17) #7, !dbg !461
  call void @llvm.dbg.value(metadata double %21, i64 0, metadata !101, metadata !252), !dbg !463
  br label %22, !dbg !464

; <label>:22                                      ; preds = %11, %5, %15, %20
  %start.0 = phi double [ %21, %20 ], [ 0xC7EFFFFFE0000000, %15 ], [ 0xC7EFFFFFE0000000, %5 ], [ 0xC7EFFFFFE0000000, %11 ]
  %23 = getelementptr inbounds [6 x %struct.regmatch_t]* %pmatch, i64 0, i64 3, i32 0, !dbg !465
  %24 = bitcast i32* %23 to i64*, !dbg !465
  %25 = load i64* %24, align 8, !dbg !465
  %26 = trunc i64 %25 to i32, !dbg !465
  %27 = icmp eq i32 %26, -1, !dbg !467
  br i1 %27, label %39, label %28, !dbg !468

; <label>:28                                      ; preds = %22
  %29 = lshr i64 %25, 32
  %30 = trunc i64 %29 to i32
  %31 = icmp sgt i32 %30, %26, !dbg !469
  br i1 %31, label %32, label %39, !dbg !470

; <label>:32                                      ; preds = %28
  %sext = shl i64 %25, 32, !dbg !471
  %33 = ashr exact i64 %sext, 32, !dbg !471
  %34 = getelementptr inbounds i8* %range, i64 %33, !dbg !471
  %35 = load i8* %34, align 1, !dbg !471, !tbaa !303
  %36 = icmp eq i8 %35, 42, !dbg !472
  br i1 %36, label %39, label %37, !dbg !473

; <label>:37                                      ; preds = %32
  %38 = call double @atof(i8* %34) #7, !dbg !474
  call void @llvm.dbg.value(metadata double %38, i64 0, metadata !102, metadata !252), !dbg !476
  br label %39, !dbg !477

; <label>:39                                      ; preds = %28, %22, %32, %37
  %end.0 = phi double [ %38, %37 ], [ 0x47EFFFFFE0000000, %32 ], [ 0x47EFFFFFE0000000, %22 ], [ 0x47EFFFFFE0000000, %28 ]
  %40 = fcmp ugt double %start.0, %inval, !dbg !478
  %41 = fcmp ult double %end.0, %inval, !dbg !480
  %or.cond = or i1 %40, %41, !dbg !481
  call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !99, metadata !252), !dbg !445
  %42 = zext i1 %or.cond to i32, !dbg !481
  %. = xor i32 %42, 1, !dbg !481
  br label %45, !dbg !481

; <label>:43                                      ; preds = %0
  %44 = call i32 @CCTK_Warn(i32 1, i32 595, i8* getelementptr inbounds ([73 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8]* @.str7, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8]* @.str8, i64 0, i64 0)) #7, !dbg !482
  br label %45

; <label>:45                                      ; preds = %39, %43
  %retval.0 = phi i32 [ 0, %43 ], [ %., %39 ]
  call void @llvm.lifetime.end(i64 48, i8* %1) #5, !dbg !484
  ret i32 %retval.0, !dbg !484
}

; Function Attrs: nounwind optsize readonly
declare double @atof(i8* nocapture) #6

; Function Attrs: nounwind optsize ssp uwtable
define i32 @Util_IntInRangeList(i32 %inval, i32 %n_elements, ...) #1 {
  %ap = alloca [1 x %struct.__va_list_tag], align 16
  tail call void @llvm.dbg.value(metadata i32 %inval, i64 0, metadata !107, metadata !252), !dbg !485
  tail call void @llvm.dbg.value(metadata i32 %n_elements, i64 0, metadata !108, metadata !252), !dbg !486
  tail call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %ap, metadata !111, metadata !252), !dbg !487
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !109, metadata !252), !dbg !488
  %1 = bitcast [1 x %struct.__va_list_tag]* %ap to i8*, !dbg !489
  call void @llvm.va_start(i8* %1), !dbg !489
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !110, metadata !252), !dbg !490
  %2 = icmp sgt i32 %n_elements, 0, !dbg !491
  br i1 %2, label %.lr.ph, label %._crit_edge, !dbg !494

.lr.ph:                                           ; preds = %0
  %3 = getelementptr inbounds [1 x %struct.__va_list_tag]* %ap, i64 0, i64 0, i32 0, !dbg !495
  %4 = getelementptr inbounds [1 x %struct.__va_list_tag]* %ap, i64 0, i64 0, i32 3, !dbg !495
  %5 = getelementptr inbounds [1 x %struct.__va_list_tag]* %ap, i64 0, i64 0, i32 2, !dbg !495
  br label %8, !dbg !494

; <label>:6                                       ; preds = %19
  %7 = icmp slt i32 %24, %n_elements, !dbg !491
  br i1 %7, label %8, label %._crit_edge, !dbg !494

; <label>:8                                       ; preds = %.lr.ph, %6
  %arg.01 = phi i32 [ 0, %.lr.ph ], [ %24, %6 ]
  %9 = load i32* %3, align 16, !dbg !495
  %10 = icmp ult i32 %9, 41, !dbg !495
  br i1 %10, label %11, label %16, !dbg !495

; <label>:11                                      ; preds = %8
  %12 = load i8** %4, align 16, !dbg !495
  %13 = sext i32 %9 to i64, !dbg !495
  %14 = getelementptr i8* %12, i64 %13, !dbg !495
  %15 = add i32 %9, 8, !dbg !495
  store i32 %15, i32* %3, align 16, !dbg !495
  br label %19, !dbg !495

; <label>:16                                      ; preds = %8
  %17 = load i8** %5, align 8, !dbg !495
  %18 = getelementptr i8* %17, i64 8, !dbg !495
  store i8* %18, i8** %5, align 8, !dbg !495
  br label %19, !dbg !495

; <label>:19                                      ; preds = %16, %11
  %.in = phi i8* [ %14, %11 ], [ %17, %16 ]
  %20 = bitcast i8* %.in to i8**, !dbg !495
  %21 = load i8** %20, align 8, !dbg !495
  call void @llvm.dbg.value(metadata i8* %21, i64 0, metadata !112, metadata !252), !dbg !497
  %22 = call i32 @Util_IntInRange(i32 %inval, i8* %21) #8, !dbg !498
  %23 = icmp eq i32 %22, 0, !dbg !498
  %24 = add nuw nsw i32 %arg.01, 1, !dbg !500
  call void @llvm.dbg.value(metadata i32 %24, i64 0, metadata !110, metadata !252), !dbg !490
  br i1 %23, label %6, label %._crit_edge, !dbg !501

._crit_edge:                                      ; preds = %6, %19, %0
  %retval.0 = phi i32 [ 0, %0 ], [ 0, %6 ], [ 1, %19 ]
  call void @llvm.va_end(i8* %1), !dbg !502
  ret i32 %retval.0, !dbg !503
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @Util_DoubleInRangeList(double %inval, i32 %n_elements, ...) #1 {
  %ap = alloca [1 x %struct.__va_list_tag], align 16
  tail call void @llvm.dbg.value(metadata double %inval, i64 0, metadata !117, metadata !252), !dbg !504
  tail call void @llvm.dbg.value(metadata i32 %n_elements, i64 0, metadata !118, metadata !252), !dbg !505
  tail call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %ap, metadata !121, metadata !252), !dbg !506
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !119, metadata !252), !dbg !507
  %1 = bitcast [1 x %struct.__va_list_tag]* %ap to i8*, !dbg !508
  call void @llvm.va_start(i8* %1), !dbg !508
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !120, metadata !252), !dbg !509
  %2 = icmp sgt i32 %n_elements, 0, !dbg !510
  br i1 %2, label %.lr.ph, label %._crit_edge, !dbg !513

.lr.ph:                                           ; preds = %0
  %3 = getelementptr inbounds [1 x %struct.__va_list_tag]* %ap, i64 0, i64 0, i32 0, !dbg !514
  %4 = getelementptr inbounds [1 x %struct.__va_list_tag]* %ap, i64 0, i64 0, i32 3, !dbg !514
  %5 = getelementptr inbounds [1 x %struct.__va_list_tag]* %ap, i64 0, i64 0, i32 2, !dbg !514
  br label %8, !dbg !513

; <label>:6                                       ; preds = %19
  %7 = icmp slt i32 %24, %n_elements, !dbg !510
  br i1 %7, label %8, label %._crit_edge, !dbg !513

; <label>:8                                       ; preds = %.lr.ph, %6
  %arg.01 = phi i32 [ 0, %.lr.ph ], [ %24, %6 ]
  %9 = load i32* %3, align 16, !dbg !514
  %10 = icmp ult i32 %9, 41, !dbg !514
  br i1 %10, label %11, label %16, !dbg !514

; <label>:11                                      ; preds = %8
  %12 = load i8** %4, align 16, !dbg !514
  %13 = sext i32 %9 to i64, !dbg !514
  %14 = getelementptr i8* %12, i64 %13, !dbg !514
  %15 = add i32 %9, 8, !dbg !514
  store i32 %15, i32* %3, align 16, !dbg !514
  br label %19, !dbg !514

; <label>:16                                      ; preds = %8
  %17 = load i8** %5, align 8, !dbg !514
  %18 = getelementptr i8* %17, i64 8, !dbg !514
  store i8* %18, i8** %5, align 8, !dbg !514
  br label %19, !dbg !514

; <label>:19                                      ; preds = %16, %11
  %.in = phi i8* [ %14, %11 ], [ %17, %16 ]
  %20 = bitcast i8* %.in to i8**, !dbg !514
  %21 = load i8** %20, align 8, !dbg !514
  call void @llvm.dbg.value(metadata i8* %21, i64 0, metadata !122, metadata !252), !dbg !516
  %22 = call i32 @Util_DoubleInRange(double %inval, i8* %21) #8, !dbg !517
  %23 = icmp eq i32 %22, 0, !dbg !517
  %24 = add nuw nsw i32 %arg.01, 1, !dbg !519
  call void @llvm.dbg.value(metadata i32 %24, i64 0, metadata !120, metadata !252), !dbg !509
  br i1 %23, label %6, label %._crit_edge, !dbg !520

._crit_edge:                                      ; preds = %6, %19, %0
  %retval.0 = phi i32 [ 0, %0 ], [ 0, %6 ], [ 1, %19 ]
  call void @llvm.va_end(i8* %1), !dbg !521
  ret i32 %retval.0, !dbg !522
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @CCTK_SetDoubleInRangeList(double* nocapture %data, i8* nocapture readonly %value, i32 %n_elements, ...) #1 {
  %temp = alloca [1001 x i8], align 16
  %ap = alloca [1 x %struct.__va_list_tag], align 16
  tail call void @llvm.dbg.value(metadata double* %data, i64 0, metadata !128, metadata !252), !dbg !523
  tail call void @llvm.dbg.value(metadata i8* %value, i64 0, metadata !129, metadata !252), !dbg !524
  tail call void @llvm.dbg.value(metadata i32 %n_elements, i64 0, metadata !130, metadata !252), !dbg !525
  %1 = getelementptr inbounds [1001 x i8]* %temp, i64 0, i64 0, !dbg !526
  call void @llvm.lifetime.start(i64 1001, i8* %1) #5, !dbg !526
  tail call void @llvm.dbg.declare(metadata [1001 x i8]* %temp, metadata !132, metadata !252), !dbg !527
  tail call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %ap, metadata !138, metadata !252), !dbg !528
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !131, metadata !252), !dbg !529
  %strncpy = call i8* @strncpy(i8* %1, i8* %value, i64 1000), !dbg !530
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !136, metadata !252), !dbg !531
  %strlenfirst = load i8* %1, align 16, !dbg !532
  %2 = icmp eq i8 %strlenfirst, 0, !dbg !535
  br i1 %2, label %.loopexit1, label %.lr.ph4, !dbg !536

.lr.ph4:                                          ; preds = %0, %._crit_edge
  %3 = phi i8 [ %.pre, %._crit_edge ], [ %strlenfirst, %0 ]
  %4 = phi i64 [ %9, %._crit_edge ], [ 0, %0 ]
  %p.03 = phi i32 [ %8, %._crit_edge ], [ 0, %0 ]
  %5 = getelementptr inbounds [1001 x i8]* %temp, i64 0, i64 %4, !dbg !537
  switch i8 %3, label %7 [
    i8 69, label %6
    i8 100, label %6
    i8 68, label %6
  ], !dbg !540

; <label>:6                                       ; preds = %.lr.ph4, %.lr.ph4, %.lr.ph4
  store i8 101, i8* %5, align 1, !dbg !541, !tbaa !303
  br label %.loopexit1, !dbg !543

; <label>:7                                       ; preds = %.lr.ph4
  %8 = add i32 %p.03, 1, !dbg !544
  call void @llvm.dbg.value(metadata i32 %8, i64 0, metadata !136, metadata !252), !dbg !531
  %9 = zext i32 %8 to i64, !dbg !545
  %10 = call i64 @strlen(i8* %1) #7, !dbg !532
  %11 = icmp ult i64 %9, %10, !dbg !535
  br i1 %11, label %._crit_edge, label %.loopexit1, !dbg !536

._crit_edge:                                      ; preds = %7
  %.phi.trans.insert = getelementptr inbounds [1001 x i8]* %temp, i64 0, i64 %9
  %.pre = load i8* %.phi.trans.insert, align 1, !dbg !537, !tbaa !303
  br label %.lr.ph4, !dbg !536

.loopexit1:                                       ; preds = %7, %0, %6
  %12 = call double @atof(i8* %1) #7, !dbg !546
  call void @llvm.dbg.value(metadata double %12, i64 0, metadata !140, metadata !252), !dbg !547
  %13 = bitcast [1 x %struct.__va_list_tag]* %ap to i8*, !dbg !548
  call void @llvm.va_start(i8* %13), !dbg !548
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !137, metadata !252), !dbg !549
  %14 = icmp sgt i32 %n_elements, 0, !dbg !550
  br i1 %14, label %.lr.ph, label %.loopexit, !dbg !553

.lr.ph:                                           ; preds = %.loopexit1
  %15 = getelementptr inbounds [1 x %struct.__va_list_tag]* %ap, i64 0, i64 0, i32 0, !dbg !554
  %16 = getelementptr inbounds [1 x %struct.__va_list_tag]* %ap, i64 0, i64 0, i32 3, !dbg !554
  %17 = getelementptr inbounds [1 x %struct.__va_list_tag]* %ap, i64 0, i64 0, i32 2, !dbg !554
  br label %20, !dbg !553

; <label>:18                                      ; preds = %31
  %19 = icmp slt i32 %36, %n_elements, !dbg !550
  br i1 %19, label %20, label %.loopexit, !dbg !553

; <label>:20                                      ; preds = %.lr.ph, %18
  %arg.02 = phi i32 [ 0, %.lr.ph ], [ %36, %18 ]
  %21 = load i32* %15, align 16, !dbg !554
  %22 = icmp ult i32 %21, 41, !dbg !554
  br i1 %22, label %23, label %28, !dbg !554

; <label>:23                                      ; preds = %20
  %24 = load i8** %16, align 16, !dbg !554
  %25 = sext i32 %21 to i64, !dbg !554
  %26 = getelementptr i8* %24, i64 %25, !dbg !554
  %27 = add i32 %21, 8, !dbg !554
  store i32 %27, i32* %15, align 16, !dbg !554
  br label %31, !dbg !554

; <label>:28                                      ; preds = %20
  %29 = load i8** %17, align 8, !dbg !554
  %30 = getelementptr i8* %29, i64 8, !dbg !554
  store i8* %30, i8** %17, align 8, !dbg !554
  br label %31, !dbg !554

; <label>:31                                      ; preds = %28, %23
  %.in = phi i8* [ %26, %23 ], [ %29, %28 ]
  %32 = bitcast i8* %.in to i8**, !dbg !554
  %33 = load i8** %32, align 8, !dbg !554
  call void @llvm.dbg.value(metadata i8* %33, i64 0, metadata !139, metadata !252), !dbg !556
  %34 = call i32 @Util_DoubleInRange(double %12, i8* %33) #8, !dbg !557
  %35 = icmp eq i32 %34, 0, !dbg !557
  %36 = add nuw nsw i32 %arg.02, 1, !dbg !559
  call void @llvm.dbg.value(metadata i32 %36, i64 0, metadata !137, metadata !252), !dbg !549
  br i1 %35, label %18, label %37, !dbg !560

; <label>:37                                      ; preds = %31
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !131, metadata !252), !dbg !529
  store double %12, double* %data, align 8, !dbg !561, !tbaa !563
  br label %.loopexit, !dbg !565

.loopexit:                                        ; preds = %18, %.loopexit1, %37
  %retval.0 = phi i32 [ 0, %37 ], [ 1, %.loopexit1 ], [ 1, %18 ]
  call void @llvm.va_end(i8* %13), !dbg !566
  call void @llvm.lifetime.end(i64 1001, i8* %1) #5, !dbg !567
  ret i32 %retval.0, !dbg !567
}

; Function Attrs: nounwind optsize readonly
declare i64 @strlen(i8* nocapture) #6

; Function Attrs: nounwind optsize ssp uwtable
define i32 @CCTK_SetIntInRangeList(i32* nocapture %data, i8* nocapture readonly %value, i32 %n_elements, ...) #1 {
  %ap = alloca [1 x %struct.__va_list_tag], align 16
  tail call void @llvm.dbg.value(metadata i32* %data, i64 0, metadata !146, metadata !252), !dbg !568
  tail call void @llvm.dbg.value(metadata i8* %value, i64 0, metadata !147, metadata !252), !dbg !569
  tail call void @llvm.dbg.value(metadata i32 %n_elements, i64 0, metadata !148, metadata !252), !dbg !570
  tail call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %ap, metadata !151, metadata !252), !dbg !571
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !149, metadata !252), !dbg !572
  %1 = tail call i32 @atoi(i8* %value) #7, !dbg !573
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !153, metadata !252), !dbg !574
  %2 = bitcast [1 x %struct.__va_list_tag]* %ap to i8*, !dbg !575
  call void @llvm.va_start(i8* %2), !dbg !575
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !150, metadata !252), !dbg !576
  %3 = icmp sgt i32 %n_elements, 0, !dbg !577
  br i1 %3, label %.lr.ph, label %.loopexit, !dbg !580

.lr.ph:                                           ; preds = %0
  %4 = getelementptr inbounds [1 x %struct.__va_list_tag]* %ap, i64 0, i64 0, i32 0, !dbg !581
  %5 = getelementptr inbounds [1 x %struct.__va_list_tag]* %ap, i64 0, i64 0, i32 3, !dbg !581
  %6 = getelementptr inbounds [1 x %struct.__va_list_tag]* %ap, i64 0, i64 0, i32 2, !dbg !581
  br label %9, !dbg !580

; <label>:7                                       ; preds = %20
  %8 = icmp slt i32 %25, %n_elements, !dbg !577
  br i1 %8, label %9, label %.loopexit, !dbg !580

; <label>:9                                       ; preds = %.lr.ph, %7
  %arg.01 = phi i32 [ 0, %.lr.ph ], [ %25, %7 ]
  %10 = load i32* %4, align 16, !dbg !581
  %11 = icmp ult i32 %10, 41, !dbg !581
  br i1 %11, label %12, label %17, !dbg !581

; <label>:12                                      ; preds = %9
  %13 = load i8** %5, align 16, !dbg !581
  %14 = sext i32 %10 to i64, !dbg !581
  %15 = getelementptr i8* %13, i64 %14, !dbg !581
  %16 = add i32 %10, 8, !dbg !581
  store i32 %16, i32* %4, align 16, !dbg !581
  br label %20, !dbg !581

; <label>:17                                      ; preds = %9
  %18 = load i8** %6, align 8, !dbg !581
  %19 = getelementptr i8* %18, i64 8, !dbg !581
  store i8* %19, i8** %6, align 8, !dbg !581
  br label %20, !dbg !581

; <label>:20                                      ; preds = %17, %12
  %.in = phi i8* [ %15, %12 ], [ %18, %17 ]
  %21 = bitcast i8* %.in to i8**, !dbg !581
  %22 = load i8** %21, align 8, !dbg !581
  call void @llvm.dbg.value(metadata i8* %22, i64 0, metadata !152, metadata !252), !dbg !583
  %23 = call i32 @Util_IntInRange(i32 %1, i8* %22) #8, !dbg !584
  %24 = icmp eq i32 %23, 0, !dbg !584
  %25 = add nuw nsw i32 %arg.01, 1, !dbg !586
  call void @llvm.dbg.value(metadata i32 %25, i64 0, metadata !150, metadata !252), !dbg !576
  br i1 %24, label %7, label %26, !dbg !587

; <label>:26                                      ; preds = %20
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !149, metadata !252), !dbg !572
  store i32 %1, i32* %data, align 4, !dbg !588, !tbaa !590
  br label %.loopexit, !dbg !591

.loopexit:                                        ; preds = %7, %0, %26
  %retval.0 = phi i32 [ 0, %26 ], [ 1, %0 ], [ 1, %7 ]
  call void @llvm.va_end(i8* %2), !dbg !592
  ret i32 %retval.0, !dbg !593
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @CCTK_SetKeywordInRangeList(i8** nocapture %data, i8* %value, i32 %n_elements, ...) #1 {
  %ap = alloca [1 x %struct.__va_list_tag], align 16
  tail call void @llvm.dbg.value(metadata i8** %data, i64 0, metadata !159, metadata !252), !dbg !594
  tail call void @llvm.dbg.value(metadata i8* %value, i64 0, metadata !160, metadata !252), !dbg !595
  tail call void @llvm.dbg.value(metadata i32 %n_elements, i64 0, metadata !161, metadata !252), !dbg !596
  tail call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %ap, metadata !164, metadata !252), !dbg !597
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !162, metadata !252), !dbg !598
  %1 = bitcast [1 x %struct.__va_list_tag]* %ap to i8*, !dbg !599
  call void @llvm.va_start(i8* %1), !dbg !599
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !163, metadata !252), !dbg !600
  %2 = icmp sgt i32 %n_elements, 0, !dbg !601
  br i1 %2, label %.lr.ph, label %.loopexit, !dbg !604

.lr.ph:                                           ; preds = %0
  %3 = getelementptr inbounds [1 x %struct.__va_list_tag]* %ap, i64 0, i64 0, i32 0, !dbg !605
  %4 = getelementptr inbounds [1 x %struct.__va_list_tag]* %ap, i64 0, i64 0, i32 3, !dbg !605
  %5 = getelementptr inbounds [1 x %struct.__va_list_tag]* %ap, i64 0, i64 0, i32 2, !dbg !605
  br label %8, !dbg !604

; <label>:6                                       ; preds = %19
  %7 = icmp slt i32 %24, %n_elements, !dbg !601
  br i1 %7, label %8, label %.loopexit, !dbg !604

; <label>:8                                       ; preds = %.lr.ph, %6
  %arg.01 = phi i32 [ 0, %.lr.ph ], [ %24, %6 ]
  %9 = load i32* %3, align 16, !dbg !605
  %10 = icmp ult i32 %9, 41, !dbg !605
  br i1 %10, label %11, label %16, !dbg !605

; <label>:11                                      ; preds = %8
  %12 = load i8** %4, align 16, !dbg !605
  %13 = sext i32 %9 to i64, !dbg !605
  %14 = getelementptr i8* %12, i64 %13, !dbg !605
  %15 = add i32 %9, 8, !dbg !605
  store i32 %15, i32* %3, align 16, !dbg !605
  br label %19, !dbg !605

; <label>:16                                      ; preds = %8
  %17 = load i8** %5, align 8, !dbg !605
  %18 = getelementptr i8* %17, i64 8, !dbg !605
  store i8* %18, i8** %5, align 8, !dbg !605
  br label %19, !dbg !605

; <label>:19                                      ; preds = %16, %11
  %.in = phi i8* [ %14, %11 ], [ %17, %16 ]
  %20 = bitcast i8* %.in to i8**, !dbg !605
  %21 = load i8** %20, align 8, !dbg !605
  call void @llvm.dbg.value(metadata i8* %21, i64 0, metadata !165, metadata !252), !dbg !607
  %22 = call i32 @CCTK_Equals(i8* %value, i8* %21) #8, !dbg !608
  %23 = icmp eq i32 %22, 0, !dbg !608
  %24 = add nuw nsw i32 %arg.01, 1, !dbg !610
  call void @llvm.dbg.value(metadata i32 %24, i64 0, metadata !163, metadata !252), !dbg !600
  br i1 %23, label %6, label %25, !dbg !611

; <label>:25                                      ; preds = %19
  %26 = load i8** %data, align 8, !dbg !612, !tbaa !283
  %27 = icmp eq i8* %26, null, !dbg !612
  br i1 %27, label %29, label %28, !dbg !615

; <label>:28                                      ; preds = %25
  call void @free(i8* %26) #8, !dbg !616
  br label %29, !dbg !616

; <label>:29                                      ; preds = %25, %28
  %30 = call i64 @strlen(i8* %value) #7, !dbg !617
  %31 = add i64 %30, 1, !dbg !618
  %32 = call i8* @malloc(i64 %31) #7, !dbg !619
  store i8* %32, i8** %data, align 8, !dbg !620, !tbaa !283
  %33 = icmp eq i8* %32, null, !dbg !621
  br i1 %33, label %.loopexit, label %34, !dbg !623

; <label>:34                                      ; preds = %29
  %35 = call i64 @llvm.objectsize.i64.p0i8(i8* %32, i1 false), !dbg !624
  %36 = call i8* @__strcpy_chk(i8* %32, i8* %value, i64 %35) #7, !dbg !624
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !162, metadata !252), !dbg !598
  br label %.loopexit, !dbg !626

.loopexit:                                        ; preds = %6, %0, %29, %34
  %retval.0 = phi i32 [ 0, %34 ], [ -1, %29 ], [ 1, %0 ], [ 1, %6 ]
  call void @llvm.va_end(i8* %1), !dbg !627
  ret i32 %retval.0, !dbg !628
}

; Function Attrs: nounwind optsize
declare i8* @__strcpy_chk(i8*, i8*, i64) #4

; Function Attrs: nounwind readnone
declare i64 @llvm.objectsize.i64.p0i8(i8*, i1) #2

; Function Attrs: nounwind optsize ssp uwtable
define i32 @CCTK_SetStringInRegexList(i8** nocapture %data, i8* %value, i32 %n_elements, ...) #1 {
  %ap = alloca [1 x %struct.__va_list_tag], align 16
  tail call void @llvm.dbg.value(metadata i8** %data, i64 0, metadata !168, metadata !252), !dbg !629
  tail call void @llvm.dbg.value(metadata i8* %value, i64 0, metadata !169, metadata !252), !dbg !630
  tail call void @llvm.dbg.value(metadata i32 %n_elements, i64 0, metadata !170, metadata !252), !dbg !631
  tail call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %ap, metadata !173, metadata !252), !dbg !632
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !171, metadata !252), !dbg !633
  %1 = bitcast [1 x %struct.__va_list_tag]* %ap to i8*, !dbg !634
  call void @llvm.va_start(i8* %1), !dbg !634
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !172, metadata !252), !dbg !635
  %2 = icmp sgt i32 %n_elements, 0, !dbg !636
  br i1 %2, label %.lr.ph, label %.loopexit, !dbg !639

.lr.ph:                                           ; preds = %0
  %3 = getelementptr inbounds [1 x %struct.__va_list_tag]* %ap, i64 0, i64 0, i32 0, !dbg !640
  %4 = getelementptr inbounds [1 x %struct.__va_list_tag]* %ap, i64 0, i64 0, i32 3, !dbg !640
  %5 = getelementptr inbounds [1 x %struct.__va_list_tag]* %ap, i64 0, i64 0, i32 2, !dbg !640
  br label %8, !dbg !639

; <label>:6                                       ; preds = %19
  %7 = icmp slt i32 %24, %n_elements, !dbg !636
  br i1 %7, label %8, label %.loopexit, !dbg !639

; <label>:8                                       ; preds = %.lr.ph, %6
  %arg.01 = phi i32 [ 0, %.lr.ph ], [ %24, %6 ]
  %9 = load i32* %3, align 16, !dbg !640
  %10 = icmp ult i32 %9, 41, !dbg !640
  br i1 %10, label %11, label %16, !dbg !640

; <label>:11                                      ; preds = %8
  %12 = load i8** %4, align 16, !dbg !640
  %13 = sext i32 %9 to i64, !dbg !640
  %14 = getelementptr i8* %12, i64 %13, !dbg !640
  %15 = add i32 %9, 8, !dbg !640
  store i32 %15, i32* %3, align 16, !dbg !640
  br label %19, !dbg !640

; <label>:16                                      ; preds = %8
  %17 = load i8** %5, align 8, !dbg !640
  %18 = getelementptr i8* %17, i64 8, !dbg !640
  store i8* %18, i8** %5, align 8, !dbg !640
  br label %19, !dbg !640

; <label>:19                                      ; preds = %16, %11
  %.in = phi i8* [ %14, %11 ], [ %17, %16 ]
  %20 = bitcast i8* %.in to i8**, !dbg !640
  %21 = load i8** %20, align 8, !dbg !640
  call void @llvm.dbg.value(metadata i8* %21, i64 0, metadata !174, metadata !252), !dbg !642
  %22 = call i32 @CCTK_RegexMatch(i8* %value, i8* %21, i32 0, %struct.regmatch_t* null) #8, !dbg !643
  %23 = icmp eq i32 %22, 0, !dbg !643
  %24 = add nuw nsw i32 %arg.01, 1, !dbg !645
  call void @llvm.dbg.value(metadata i32 %24, i64 0, metadata !172, metadata !252), !dbg !635
  br i1 %23, label %6, label %25, !dbg !646

; <label>:25                                      ; preds = %19
  %26 = call i32 @CCTK_SetString(i8** %data, i8* %value) #8, !dbg !647
  call void @llvm.dbg.value(metadata i32 %26, i64 0, metadata !171, metadata !252), !dbg !633
  br label %.loopexit, !dbg !649

.loopexit:                                        ; preds = %6, %0, %25
  %retval.0 = phi i32 [ %26, %25 ], [ 1, %0 ], [ 1, %6 ]
  call void @llvm.va_end(i8* %1), !dbg !650
  ret i32 %retval.0, !dbg !651
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @CCTK_SetString(i8** nocapture %data, i8* %value) #1 {
  tail call void @llvm.dbg.value(metadata i8** %data, i64 0, metadata !179, metadata !252), !dbg !652
  tail call void @llvm.dbg.value(metadata i8* %value, i64 0, metadata !180, metadata !252), !dbg !653
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !181, metadata !252), !dbg !654
  %1 = load i8** %data, align 8, !dbg !655, !tbaa !283
  %2 = icmp eq i8* %1, null, !dbg !655
  br i1 %2, label %4, label %3, !dbg !657

; <label>:3                                       ; preds = %0
  tail call void @free(i8* %1) #8, !dbg !658
  br label %4, !dbg !658

; <label>:4                                       ; preds = %0, %3
  %5 = tail call i64 @strlen(i8* %value) #7, !dbg !659
  %6 = add i64 %5, 1, !dbg !660
  %7 = tail call i8* @malloc(i64 %6) #7, !dbg !661
  store i8* %7, i8** %data, align 8, !dbg !662, !tbaa !283
  %8 = icmp eq i8* %7, null, !dbg !663
  br i1 %8, label %12, label %9, !dbg !665

; <label>:9                                       ; preds = %4
  %10 = tail call i64 @llvm.objectsize.i64.p0i8(i8* %7, i1 false), !dbg !666
  %11 = tail call i8* @__strcpy_chk(i8* %7, i8* %value, i64 %10) #7, !dbg !666
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !181, metadata !252), !dbg !654
  br label %12, !dbg !668

; <label>:12                                      ; preds = %4, %9
  %retval.0 = phi i32 [ 0, %9 ], [ -1, %4 ]
  ret i32 %retval.0, !dbg !669
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @CCTK_SetBoolean(i32* nocapture %data, i8* %value) #1 {
  tail call void @llvm.dbg.value(metadata i32* %data, i64 0, metadata !186, metadata !252), !dbg !670
  tail call void @llvm.dbg.value(metadata i8* %value, i64 0, metadata !187, metadata !252), !dbg !671
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !188, metadata !252), !dbg !672
  %1 = tail call i32 (i8*, i32, ...)* @Util_InList(i8* %value, i32 5, i8* getelementptr inbounds ([5 x i8]* @.str9, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8]* @.str10, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8]* @.str11, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8]* @.str12, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8]* @.str13, i64 0, i64 0)) #8, !dbg !673
  %2 = icmp eq i32 %1, 0, !dbg !673
  br i1 %2, label %4, label %3, !dbg !675

; <label>:3                                       ; preds = %0
  store i32 1, i32* %data, align 4, !dbg !676, !tbaa !590
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !188, metadata !252), !dbg !672
  br label %8, !dbg !678

; <label>:4                                       ; preds = %0
  %5 = tail call i32 (i8*, i32, ...)* @Util_InList(i8* %value, i32 5, i8* getelementptr inbounds ([6 x i8]* @.str14, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8]* @.str15, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8]* @.str16, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8]* @.str17, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8]* @.str18, i64 0, i64 0)) #8, !dbg !679
  %6 = icmp eq i32 %5, 0, !dbg !679
  br i1 %6, label %8, label %7, !dbg !681

; <label>:7                                       ; preds = %4
  store i32 0, i32* %data, align 4, !dbg !682, !tbaa !590
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !188, metadata !252), !dbg !672
  br label %8, !dbg !684

; <label>:8                                       ; preds = %4, %7, %3
  %retval.0 = phi i32 [ 0, %3 ], [ 0, %7 ], [ -1, %4 ]
  ret i32 %retval.0, !dbg !685
}

; Function Attrs: optsize
declare i32 @regcomp(%struct.re_pattern_buffer*, i8*, i32) #3

; Function Attrs: optsize
declare i32 @regexec(%struct.re_pattern_buffer*, i8*, i64, %struct.regmatch_t*, i32) #3

; Function Attrs: optsize
declare void @regfree(%struct.re_pattern_buffer*) #3

; Function Attrs: nounwind optsize ssp uwtable
define void @CCTK_PrintString(i8* nocapture readonly %data) #1 {
  tail call void @llvm.dbg.value(metadata i8* %data, i64 0, metadata !226, metadata !252), !dbg !686
  %puts = tail call i32 @puts(i8* %data), !dbg !687
  ret void, !dbg !688
}

; Function Attrs: nounwind optsize ssp uwtable
define void @cctk_printstring_(i8** nocapture readonly %arg1) #1 {
  tail call void @llvm.dbg.value(metadata i8** %arg1, i64 0, metadata !231, metadata !252), !dbg !689
  %1 = load i8** %arg1, align 8, !dbg !690, !tbaa !283
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !226, metadata !252) #5, !dbg !691
  %puts.i = tail call i32 @puts(i8* %1) #5, !dbg !693
  ret void, !dbg !694
}

; Function Attrs: nounwind optsize ssp uwtable
define void @cctk_fortranstring_(i32* nocapture %nchars, i8** nocapture readonly %c_string, i8* %cctk_str1, i32 %cctk_strlen1) #1 {
  tail call void @llvm.dbg.value(metadata i32* %nchars, i64 0, metadata !238, metadata !252), !dbg !695
  tail call void @llvm.dbg.value(metadata i8** %c_string, i64 0, metadata !239, metadata !252), !dbg !696
  tail call void @llvm.dbg.value(metadata i8* %cctk_str1, i64 0, metadata !240, metadata !252), !dbg !697
  tail call void @llvm.dbg.value(metadata i32 %cctk_strlen1, i64 0, metadata !241, metadata !252), !dbg !697
  %1 = tail call i8* @Util_NullTerminateString(i8* %cctk_str1, i32 %cctk_strlen1) #8, !dbg !698
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !243, metadata !252), !dbg !698
  tail call void @llvm.dbg.value(metadata i8* %cctk_str1, i64 0, metadata !244, metadata !252), !dbg !699
  %2 = load i8** %c_string, align 8, !dbg !700, !tbaa !283
  %3 = tail call i64 @strlen(i8* %2) #7, !dbg !701
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !242, metadata !252), !dbg !702
  %4 = trunc i64 %3 to i32, !dbg !703
  store i32 %4, i32* %nchars, align 4, !dbg !704, !tbaa !590
  %5 = zext i32 %cctk_strlen1 to i64, !dbg !705
  %6 = icmp ugt i64 %3, %5, !dbg !707
  br i1 %6, label %7, label %9, !dbg !708

; <label>:7                                       ; preds = %0
  %8 = tail call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 1, i32 1370, i8* getelementptr inbounds ([73 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([102 x i8]* @.str20, i64 0, i64 0), i8* %2) #7, !dbg !709
  tail call void @llvm.dbg.value(metadata i32 %cctk_strlen1, i64 0, metadata !242, metadata !252), !dbg !702
  %.pre = load i8** %c_string, align 8, !dbg !711, !tbaa !283
  br label %9, !dbg !712

; <label>:9                                       ; preds = %7, %0
  %10 = phi i8* [ %.pre, %7 ], [ %2, %0 ]
  %c_strlen.0 = phi i64 [ %5, %7 ], [ %3, %0 ]
  %11 = tail call i64 @llvm.objectsize.i64.p0i8(i8* %cctk_str1, i1 false), !dbg !711
  %12 = tail call i8* @__memcpy_chk(i8* %cctk_str1, i8* %10, i64 %c_strlen.0, i64 %11) #7, !dbg !711
  %13 = getelementptr inbounds i8* %cctk_str1, i64 %c_strlen.0, !dbg !713
  %14 = sub i64 %5, %c_strlen.0, !dbg !713
  %15 = tail call i64 @llvm.objectsize.i64.p0i8(i8* %13, i1 false), !dbg !713
  %16 = tail call i8* @__memset_chk(i8* %13, i32 32, i64 %14, i64 %15) #7, !dbg !713
  tail call void @free(i8* %1) #8, !dbg !714
  ret void, !dbg !715
}

; Function Attrs: nounwind optsize
declare i8* @__memcpy_chk(i8*, i8*, i64, i64) #4

; Function Attrs: nounwind optsize
declare i8* @__memset_chk(i8*, i32, i64, i64) #4

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #2

; Function Attrs: nounwind
declare i8* @strncpy(i8*, i8* nocapture readonly, i64) #5

; Function Attrs: nounwind
declare i32 @puts(i8* nocapture readonly) #5

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #5

attributes #0 = { nounwind optsize readnone ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone }
attributes #3 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { nounwind optsize readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind optsize }
attributes #8 = { optsize }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!247, !248, !249}
!llvm.ident = !{!250}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !3, subprograms: !11, globals: !245, imports: !2)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/Cactus/Misc.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{}
!3 = !{!4, !6}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64, align: 64)
!5 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!6 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !7, line: 30, baseType: !8)
!7 = !DIFile(filename: "/usr/include/sys/_types/_size_t.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!8 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_size_t", file: !9, line: 92, baseType: !10)
!9 = !DIFile(filename: "/usr/include/i386/_types.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!10 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!11 = !{!12, !17, !25, !36, !45, !69, !92, !103, !113, !123, !141, !154, !166, !175, !182, !189, !222, !227, !232}
!12 = !DISubprogram(name: "CCTKi_version_util_Misc_c", scope: !1, file: !1, line: 40, type: !13, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, function: i8* ()* @CCTKi_version_util_Misc_c, variables: !2)
!13 = !DISubroutineType(types: !14)
!14 = !{!15}
!15 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64, align: 64)
!16 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5)
!17 = !DISubprogram(name: "CCTK_Equals", scope: !1, file: !1, line: 116, type: !18, isLocal: false, isDefinition: true, scopeLine: 117, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i8*, i8*)* @CCTK_Equals, variables: !21)
!18 = !DISubroutineType(types: !19)
!19 = !{!20, !15, !15}
!20 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!21 = !{!22, !23, !24}
!22 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "string1", arg: 1, scope: !17, file: !1, line: 116, type: !15)
!23 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "string2", arg: 2, scope: !17, file: !1, line: 116, type: !15)
!24 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "retval", scope: !17, file: !1, line: 118, type: !20)
!25 = !DISubprogram(name: "cctk_equals_", scope: !1, file: !1, line: 153, type: !26, isLocal: false, isDefinition: true, scopeLine: 155, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i8**, i8*, i32)* @cctk_equals_, variables: !30)
!26 = !DISubroutineType(types: !27)
!27 = !{!20, !28, !4, !29}
!28 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64, align: 64)
!29 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!30 = !{!31, !32, !33, !34, !35}
!31 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "arg1", arg: 1, scope: !25, file: !1, line: 154, type: !28)
!32 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "cctk_str1", arg: 2, scope: !25, file: !1, line: 154, type: !4)
!33 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "cctk_strlen1", arg: 3, scope: !25, file: !1, line: 154, type: !29)
!34 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "retval", scope: !25, file: !1, line: 156, type: !20)
!35 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "arg2", scope: !25, file: !1, line: 157, type: !4)
!36 = !DISubprogram(name: "Util_NullTerminateString", scope: !1, file: !1, line: 197, type: !37, isLocal: false, isDefinition: true, scopeLine: 198, flags: DIFlagPrototyped, isOptimized: true, function: i8* (i8*, i32)* @Util_NullTerminateString, variables: !39)
!37 = !DISubroutineType(types: !38)
!38 = !{!4, !15, !29}
!39 = !{!40, !41, !42, !43, !44}
!40 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "instring", arg: 1, scope: !36, file: !1, line: 197, type: !15)
!41 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "len", arg: 2, scope: !36, file: !1, line: 197, type: !29)
!42 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "outstring", scope: !36, file: !1, line: 199, type: !4)
!43 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !36, file: !1, line: 200, type: !29)
!44 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "position", scope: !36, file: !1, line: 201, type: !29)
!45 = !DISubprogram(name: "Util_InList", scope: !1, file: !1, line: 275, type: !46, isLocal: false, isDefinition: true, scopeLine: 276, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i8*, i32, ...)* @Util_InList, variables: !48)
!46 = !DISubroutineType(types: !47)
!47 = !{!20, !15, !20, null}
!48 = !{!49, !50, !51, !52, !53, !68}
!49 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "string1", arg: 1, scope: !45, file: !1, line: 275, type: !15)
!50 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "n_elements", arg: 2, scope: !45, file: !1, line: 275, type: !20)
!51 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "retval", scope: !45, file: !1, line: 277, type: !20)
!52 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "arg", scope: !45, file: !1, line: 278, type: !20)
!53 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ap", scope: !45, file: !1, line: 279, type: !54)
!54 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !55, line: 30, baseType: !56)
!55 = !DIFile(filename: "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../lib/clang/7.0.0/include/stdarg.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!56 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !1, line: 279, baseType: !57)
!57 = !DICompositeType(tag: DW_TAG_array_type, baseType: !58, size: 192, align: 64, elements: !66)
!58 = !DIDerivedType(tag: DW_TAG_typedef, name: "__va_list_tag", file: !1, line: 279, baseType: !59)
!59 = !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !1, line: 279, size: 192, align: 64, elements: !60)
!60 = !{!61, !62, !63, !65}
!61 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !59, file: !1, line: 279, baseType: !29, size: 32, align: 32)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !59, file: !1, line: 279, baseType: !29, size: 32, align: 32, offset: 32)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !59, file: !1, line: 279, baseType: !64, size: 64, align: 64, offset: 64)
!64 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !59, file: !1, line: 279, baseType: !64, size: 64, align: 64, offset: 128)
!66 = !{!67}
!67 = !DISubrange(count: 1)
!68 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "element", scope: !45, file: !1, line: 281, type: !4)
!69 = !DISubprogram(name: "Util_IntInRange", scope: !1, file: !1, line: 340, type: !70, isLocal: false, isDefinition: true, scopeLine: 341, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i32, i8*)* @Util_IntInRange, variables: !72)
!70 = !DISubroutineType(types: !71)
!71 = !{!20, !20, !15}
!72 = !{!73, !74, !75, !76, !87, !88, !89, !90, !91}
!73 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "inval", arg: 1, scope: !69, file: !1, line: 340, type: !20)
!74 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "range", arg: 2, scope: !69, file: !1, line: 340, type: !15)
!75 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "retval", scope: !69, file: !1, line: 342, type: !20)
!76 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "pmatch", scope: !69, file: !1, line: 343, type: !77)
!77 = !DICompositeType(tag: DW_TAG_array_type, baseType: !78, size: 384, align: 32, elements: !85)
!78 = !DIDerivedType(tag: DW_TAG_typedef, name: "regmatch_t", file: !79, line: 422, baseType: !80)
!79 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/Cactus/../include/regex.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!80 = !DICompositeType(tag: DW_TAG_structure_type, file: !79, line: 418, size: 64, align: 32, elements: !81)
!81 = !{!82, !84}
!82 = !DIDerivedType(tag: DW_TAG_member, name: "rm_so", scope: !80, file: !79, line: 420, baseType: !83, size: 32, align: 32)
!83 = !DIDerivedType(tag: DW_TAG_typedef, name: "regoff_t", file: !79, line: 394, baseType: !20)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "rm_eo", scope: !80, file: !79, line: 421, baseType: !83, size: 32, align: 32, offset: 32)
!85 = !{!86}
!86 = !DISubrange(count: 6)
!87 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "start_closed", scope: !69, file: !1, line: 344, type: !20)
!88 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "end_closed", scope: !69, file: !1, line: 344, type: !20)
!89 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "start", scope: !69, file: !1, line: 345, type: !20)
!90 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "end", scope: !69, file: !1, line: 345, type: !20)
!91 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "step", scope: !69, file: !1, line: 345, type: !20)
!92 = !DISubprogram(name: "Util_DoubleInRange", scope: !1, file: !1, line: 484, type: !93, isLocal: false, isDefinition: true, scopeLine: 485, flags: DIFlagPrototyped, isOptimized: true, function: i32 (double, i8*)* @Util_DoubleInRange, variables: !96)
!93 = !DISubroutineType(types: !94)
!94 = !{!20, !95, !15}
!95 = !DIBasicType(name: "double", size: 64, align: 64, encoding: DW_ATE_float)
!96 = !{!97, !98, !99, !100, !101, !102}
!97 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "inval", arg: 1, scope: !92, file: !1, line: 484, type: !95)
!98 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "range", arg: 2, scope: !92, file: !1, line: 484, type: !15)
!99 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "retval", scope: !92, file: !1, line: 486, type: !20)
!100 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "pmatch", scope: !92, file: !1, line: 487, type: !77)
!101 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "start", scope: !92, file: !1, line: 488, type: !95)
!102 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "end", scope: !92, file: !1, line: 488, type: !95)
!103 = !DISubprogram(name: "Util_IntInRangeList", scope: !1, file: !1, line: 643, type: !104, isLocal: false, isDefinition: true, scopeLine: 644, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i32, i32, ...)* @Util_IntInRangeList, variables: !106)
!104 = !DISubroutineType(types: !105)
!105 = !{!20, !20, !20, null}
!106 = !{!107, !108, !109, !110, !111, !112}
!107 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "inval", arg: 1, scope: !103, file: !1, line: 643, type: !20)
!108 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "n_elements", arg: 2, scope: !103, file: !1, line: 643, type: !20)
!109 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "retval", scope: !103, file: !1, line: 645, type: !20)
!110 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "arg", scope: !103, file: !1, line: 646, type: !20)
!111 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ap", scope: !103, file: !1, line: 647, type: !54)
!112 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "element", scope: !103, file: !1, line: 649, type: !4)
!113 = !DISubprogram(name: "Util_DoubleInRangeList", scope: !1, file: !1, line: 715, type: !114, isLocal: false, isDefinition: true, scopeLine: 716, flags: DIFlagPrototyped, isOptimized: true, function: i32 (double, i32, ...)* @Util_DoubleInRangeList, variables: !116)
!114 = !DISubroutineType(types: !115)
!115 = !{!20, !95, !20, null}
!116 = !{!117, !118, !119, !120, !121, !122}
!117 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "inval", arg: 1, scope: !113, file: !1, line: 715, type: !95)
!118 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "n_elements", arg: 2, scope: !113, file: !1, line: 715, type: !20)
!119 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "retval", scope: !113, file: !1, line: 717, type: !20)
!120 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "arg", scope: !113, file: !1, line: 718, type: !20)
!121 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ap", scope: !113, file: !1, line: 719, type: !54)
!122 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "element", scope: !113, file: !1, line: 721, type: !4)
!123 = !DISubprogram(name: "CCTK_SetDoubleInRangeList", scope: !1, file: !1, line: 795, type: !124, isLocal: false, isDefinition: true, scopeLine: 797, flags: DIFlagPrototyped, isOptimized: true, function: i32 (double*, i8*, i32, ...)* @CCTK_SetDoubleInRangeList, variables: !127)
!124 = !DISubroutineType(types: !125)
!125 = !{!20, !126, !15, !20, null}
!126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !95, size: 64, align: 64)
!127 = !{!128, !129, !130, !131, !132, !136, !137, !138, !139, !140}
!128 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "data", arg: 1, scope: !123, file: !1, line: 795, type: !126)
!129 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "value", arg: 2, scope: !123, file: !1, line: 795, type: !15)
!130 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "n_elements", arg: 3, scope: !123, file: !1, line: 796, type: !20)
!131 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "retval", scope: !123, file: !1, line: 798, type: !20)
!132 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "temp", scope: !123, file: !1, line: 799, type: !133)
!133 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 8008, align: 8, elements: !134)
!134 = !{!135}
!135 = !DISubrange(count: 1001)
!136 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "p", scope: !123, file: !1, line: 800, type: !29)
!137 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "arg", scope: !123, file: !1, line: 801, type: !20)
!138 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ap", scope: !123, file: !1, line: 802, type: !54)
!139 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "element", scope: !123, file: !1, line: 804, type: !4)
!140 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "inval", scope: !123, file: !1, line: 806, type: !95)
!141 = !DISubprogram(name: "CCTK_SetIntInRangeList", scope: !1, file: !1, line: 897, type: !142, isLocal: false, isDefinition: true, scopeLine: 899, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i32*, i8*, i32, ...)* @CCTK_SetIntInRangeList, variables: !145)
!142 = !DISubroutineType(types: !143)
!143 = !{!20, !144, !15, !20, null}
!144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64, align: 64)
!145 = !{!146, !147, !148, !149, !150, !151, !152, !153}
!146 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "data", arg: 1, scope: !141, file: !1, line: 897, type: !144)
!147 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "value", arg: 2, scope: !141, file: !1, line: 897, type: !15)
!148 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "n_elements", arg: 3, scope: !141, file: !1, line: 898, type: !20)
!149 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "retval", scope: !141, file: !1, line: 900, type: !20)
!150 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "arg", scope: !141, file: !1, line: 901, type: !20)
!151 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ap", scope: !141, file: !1, line: 902, type: !54)
!152 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "element", scope: !141, file: !1, line: 904, type: !4)
!153 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "inval", scope: !141, file: !1, line: 906, type: !20)
!154 = !DISubprogram(name: "CCTK_SetKeywordInRangeList", scope: !1, file: !1, line: 983, type: !155, isLocal: false, isDefinition: true, scopeLine: 985, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i8**, i8*, i32, ...)* @CCTK_SetKeywordInRangeList, variables: !158)
!155 = !DISubroutineType(types: !156)
!156 = !{!20, !157, !15, !20, null}
!157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64, align: 64)
!158 = !{!159, !160, !161, !162, !163, !164, !165}
!159 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "data", arg: 1, scope: !154, file: !1, line: 983, type: !157)
!160 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "value", arg: 2, scope: !154, file: !1, line: 983, type: !15)
!161 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "n_elements", arg: 3, scope: !154, file: !1, line: 984, type: !20)
!162 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "retval", scope: !154, file: !1, line: 986, type: !20)
!163 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "arg", scope: !154, file: !1, line: 987, type: !20)
!164 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ap", scope: !154, file: !1, line: 988, type: !54)
!165 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "element", scope: !154, file: !1, line: 990, type: !4)
!166 = !DISubprogram(name: "CCTK_SetStringInRegexList", scope: !1, file: !1, line: 1073, type: !155, isLocal: false, isDefinition: true, scopeLine: 1075, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i8**, i8*, i32, ...)* @CCTK_SetStringInRegexList, variables: !167)
!167 = !{!168, !169, !170, !171, !172, !173, !174}
!168 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "data", arg: 1, scope: !166, file: !1, line: 1073, type: !157)
!169 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "value", arg: 2, scope: !166, file: !1, line: 1073, type: !15)
!170 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "n_elements", arg: 3, scope: !166, file: !1, line: 1074, type: !20)
!171 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "retval", scope: !166, file: !1, line: 1076, type: !20)
!172 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "arg", scope: !166, file: !1, line: 1077, type: !20)
!173 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ap", scope: !166, file: !1, line: 1078, type: !54)
!174 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "element", scope: !166, file: !1, line: 1080, type: !4)
!175 = !DISubprogram(name: "CCTK_SetString", scope: !1, file: !1, line: 1136, type: !176, isLocal: false, isDefinition: true, scopeLine: 1137, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i8**, i8*)* @CCTK_SetString, variables: !178)
!176 = !DISubroutineType(types: !177)
!177 = !{!20, !157, !15}
!178 = !{!179, !180, !181}
!179 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "data", arg: 1, scope: !175, file: !1, line: 1136, type: !157)
!180 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "value", arg: 2, scope: !175, file: !1, line: 1136, type: !15)
!181 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "retval", scope: !175, file: !1, line: 1138, type: !20)
!182 = !DISubprogram(name: "CCTK_SetBoolean", scope: !1, file: !1, line: 1192, type: !183, isLocal: false, isDefinition: true, scopeLine: 1193, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i32*, i8*)* @CCTK_SetBoolean, variables: !185)
!183 = !DISubroutineType(types: !184)
!184 = !{!20, !144, !15}
!185 = !{!186, !187, !188}
!186 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "data", arg: 1, scope: !182, file: !1, line: 1192, type: !144)
!187 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "value", arg: 2, scope: !182, file: !1, line: 1192, type: !15)
!188 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "retval", scope: !182, file: !1, line: 1194, type: !20)
!189 = !DISubprogram(name: "CCTK_RegexMatch", scope: !1, file: !1, line: 1266, type: !190, isLocal: false, isDefinition: true, scopeLine: 1270, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i8*, i8*, i32, %struct.regmatch_t*)* @CCTK_RegexMatch, variables: !194)
!190 = !DISubroutineType(types: !191)
!191 = !{!20, !15, !15, !192, !193}
!192 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !20)
!193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !78, size: 64, align: 64)
!194 = !{!195, !196, !197, !198, !199, !200, !201}
!195 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "string", arg: 1, scope: !189, file: !1, line: 1266, type: !15)
!196 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "pattern", arg: 2, scope: !189, file: !1, line: 1267, type: !15)
!197 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "nmatch", arg: 3, scope: !189, file: !1, line: 1268, type: !192)
!198 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "pmatch", arg: 4, scope: !189, file: !1, line: 1269, type: !193)
!199 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "retval", scope: !189, file: !1, line: 1271, type: !20)
!200 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "status", scope: !189, file: !1, line: 1272, type: !20)
!201 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "re", scope: !189, file: !1, line: 1273, type: !202)
!202 = !DIDerivedType(tag: DW_TAG_typedef, name: "regex_t", file: !79, line: 391, baseType: !203)
!203 = !DICompositeType(tag: DW_TAG_structure_type, name: "re_pattern_buffer", file: !79, line: 323, size: 512, align: 64, elements: !204)
!204 = !{!205, !208, !209, !210, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221}
!205 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !203, file: !79, line: 329, baseType: !206, size: 64, align: 64)
!206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !207, size: 64, align: 64)
!207 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "allocated", scope: !203, file: !79, line: 332, baseType: !10, size: 64, align: 64, offset: 64)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !203, file: !79, line: 335, baseType: !10, size: 64, align: 64, offset: 128)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "syntax", scope: !203, file: !79, line: 338, baseType: !211, size: 64, align: 64, offset: 192)
!211 = !DIDerivedType(tag: DW_TAG_typedef, name: "reg_syntax_t", file: !79, line: 52, baseType: !10)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "fastmap", scope: !203, file: !79, line: 343, baseType: !4, size: 64, align: 64, offset: 256)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "translate", scope: !203, file: !79, line: 349, baseType: !4, size: 64, align: 64, offset: 320)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "re_nsub", scope: !203, file: !79, line: 352, baseType: !6, size: 64, align: 64, offset: 384)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "can_be_null", scope: !203, file: !79, line: 359, baseType: !29, size: 1, align: 32, offset: 448)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "regs_allocated", scope: !203, file: !79, line: 368, baseType: !29, size: 2, align: 32, offset: 449)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "fastmap_accurate", scope: !203, file: !79, line: 372, baseType: !29, size: 1, align: 32, offset: 451)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "no_sub", scope: !203, file: !79, line: 376, baseType: !29, size: 1, align: 32, offset: 452)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "not_bol", scope: !203, file: !79, line: 380, baseType: !29, size: 1, align: 32, offset: 453)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "not_eol", scope: !203, file: !79, line: 383, baseType: !29, size: 1, align: 32, offset: 454)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "newline_anchor", scope: !203, file: !79, line: 386, baseType: !29, size: 1, align: 32, offset: 455)
!222 = !DISubprogram(name: "CCTK_PrintString", scope: !1, file: !1, line: 1317, type: !223, isLocal: false, isDefinition: true, scopeLine: 1318, flags: DIFlagPrototyped, isOptimized: true, function: void (i8*)* @CCTK_PrintString, variables: !225)
!223 = !DISubroutineType(types: !224)
!224 = !{null, !15}
!225 = !{!226}
!226 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "data", arg: 1, scope: !222, file: !1, line: 1317, type: !15)
!227 = !DISubprogram(name: "cctk_printstring_", scope: !1, file: !1, line: 1322, type: !228, isLocal: false, isDefinition: true, scopeLine: 1324, flags: DIFlagPrototyped, isOptimized: true, function: void (i8**)* @cctk_printstring_, variables: !230)
!228 = !DISubroutineType(types: !229)
!229 = !{null, !28}
!230 = !{!231}
!231 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "arg1", arg: 1, scope: !227, file: !1, line: 1323, type: !28)
!232 = !DISubprogram(name: "cctk_fortranstring_", scope: !1, file: !1, line: 1357, type: !233, isLocal: false, isDefinition: true, scopeLine: 1361, flags: DIFlagPrototyped, isOptimized: true, function: void (i32*, i8**, i8*, i32)* @cctk_fortranstring_, variables: !237)
!233 = !DISubroutineType(types: !234)
!234 = !{null, !144, !235, !4, !29}
!235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !236, size: 64, align: 64)
!236 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !15)
!237 = !{!238, !239, !240, !241, !242, !243, !244}
!238 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "nchars", arg: 1, scope: !232, file: !1, line: 1358, type: !144)
!239 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "c_string", arg: 2, scope: !232, file: !1, line: 1359, type: !235)
!240 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "cctk_str1", arg: 3, scope: !232, file: !1, line: 1360, type: !4)
!241 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "cctk_strlen1", arg: 4, scope: !232, file: !1, line: 1360, type: !29)
!242 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "c_strlen", scope: !232, file: !1, line: 1362, type: !6)
!243 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "fstring", scope: !232, file: !1, line: 1363, type: !4)
!244 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "fortran_string", scope: !232, file: !1, line: 1364, type: !4)
!245 = !{!246}
!246 = !DIGlobalVariable(name: "rcsid", scope: !0, file: !1, line: 38, type: !15, isLocal: true, isDefinition: true)
!247 = !{i32 2, !"Dwarf Version", i32 2}
!248 = !{i32 2, !"Debug Info Version", i32 700000003}
!249 = !{i32 1, !"PIC Level", i32 2}
!250 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!251 = !DILocation(line: 40, column: 1, scope: !12)
!252 = !DIExpression()
!253 = !DILocation(line: 116, column: 29, scope: !17)
!254 = !DILocation(line: 116, column: 50, scope: !17)
!255 = !DILocation(line: 118, column: 7, scope: !17)
!256 = !DILocation(line: 123, column: 8, scope: !257)
!257 = distinct !DILexicalBlock(scope: !17, file: !1, line: 123, column: 7)
!258 = !DILocation(line: 123, column: 20, scope: !257)
!259 = !DILocation(line: 123, column: 16, scope: !257)
!260 = !DILocation(line: 126, column: 10, scope: !261)
!261 = distinct !DILexicalBlock(scope: !262, file: !1, line: 126, column: 9)
!262 = distinct !DILexicalBlock(scope: !257, file: !1, line: 124, column: 3)
!263 = !DILocation(line: 126, column: 18, scope: !261)
!264 = !DILocation(line: 128, column: 7, scope: !265)
!265 = distinct !DILexicalBlock(scope: !261, file: !1, line: 127, column: 5)
!266 = !DILocation(line: 131, column: 5, scope: !265)
!267 = !DILocation(line: 132, column: 22, scope: !268)
!268 = distinct !DILexicalBlock(scope: !261, file: !1, line: 132, column: 14)
!269 = !DILocation(line: 134, column: 7, scope: !270)
!270 = distinct !DILexicalBlock(scope: !268, file: !1, line: 133, column: 5)
!271 = !DILocation(line: 136, column: 5, scope: !270)
!272 = !DILocation(line: 139, column: 7, scope: !273)
!273 = distinct !DILexicalBlock(scope: !268, file: !1, line: 138, column: 5)
!274 = !DILocation(line: 145, column: 9, scope: !275)
!275 = distinct !DILexicalBlock(scope: !276, file: !1, line: 145, column: 9)
!276 = distinct !DILexicalBlock(scope: !257, file: !1, line: 144, column: 3)
!277 = !DILocation(line: 145, column: 9, scope: !276)
!278 = !DILocation(line: 150, column: 3, scope: !17)
!279 = !DILocation(line: 154, column: 20, scope: !25)
!280 = !DILocation(line: 154, column: 25, scope: !25)
!281 = !DILocation(line: 157, column: 3, scope: !25)
!282 = !DILocation(line: 158, column: 24, scope: !25)
!283 = !{!284, !284, i64 0}
!284 = !{!"any pointer", !285, i64 0}
!285 = !{!"omnipotent char", !286, i64 0}
!286 = !{!"Simple C/C++ TBAA"}
!287 = !DILocation(line: 158, column: 12, scope: !25)
!288 = !DILocation(line: 156, column: 7, scope: !25)
!289 = !DILocation(line: 159, column: 3, scope: !25)
!290 = !DILocation(line: 160, column: 3, scope: !25)
!291 = !DILocation(line: 197, column: 44, scope: !36)
!292 = !DILocation(line: 197, column: 67, scope: !36)
!293 = !DILocation(line: 203, column: 11, scope: !294)
!294 = distinct !DILexicalBlock(scope: !36, file: !1, line: 203, column: 7)
!295 = !DILocation(line: 203, column: 7, scope: !36)
!296 = !DILocation(line: 205, column: 5, scope: !297)
!297 = distinct !DILexicalBlock(scope: !294, file: !1, line: 204, column: 3)
!298 = !DILocation(line: 209, column: 3, scope: !297)
!299 = !DILocation(line: 216, column: 19, scope: !36)
!300 = !DILocation(line: 216, column: 23, scope: !36)
!301 = !DILocation(line: 216, column: 43, scope: !36)
!302 = !DILocation(line: 216, column: 26, scope: !36)
!303 = !{!285, !285, i64 0}
!304 = !DILocation(line: 216, column: 47, scope: !36)
!305 = !DILocation(line: 216, column: 3, scope: !36)
!306 = !DILocation(line: 221, column: 39, scope: !36)
!307 = !DILocation(line: 221, column: 30, scope: !36)
!308 = !DILocation(line: 221, column: 23, scope: !36)
!309 = !DILocation(line: 199, column: 9, scope: !36)
!310 = !DILocation(line: 223, column: 7, scope: !311)
!311 = distinct !DILexicalBlock(scope: !36, file: !1, line: 223, column: 7)
!312 = !DILocation(line: 223, column: 7, scope: !36)
!313 = !DILocation(line: 225, column: 15, scope: !314)
!314 = distinct !DILexicalBlock(scope: !315, file: !1, line: 225, column: 5)
!315 = distinct !DILexicalBlock(scope: !316, file: !1, line: 225, column: 5)
!316 = distinct !DILexicalBlock(scope: !311, file: !1, line: 224, column: 3)
!317 = !DILocation(line: 225, column: 5, scope: !315)
!318 = !DILocation(line: 227, column: 20, scope: !319)
!319 = distinct !DILexicalBlock(scope: !314, file: !1, line: 226, column: 5)
!320 = !DILocation(line: 229, column: 5, scope: !316)
!321 = !DILocation(line: 229, column: 25, scope: !316)
!322 = !DILocation(line: 230, column: 3, scope: !316)
!323 = !DILocation(line: 231, column: 3, scope: !36)
!324 = !DILocation(line: 275, column: 29, scope: !45)
!325 = !DILocation(line: 275, column: 42, scope: !45)
!326 = !DILocation(line: 279, column: 11, scope: !45)
!327 = !DILocation(line: 277, column: 7, scope: !45)
!328 = !DILocation(line: 286, column: 3, scope: !45)
!329 = !DILocation(line: 278, column: 7, scope: !45)
!330 = !DILocation(line: 288, column: 20, scope: !331)
!331 = distinct !DILexicalBlock(scope: !332, file: !1, line: 288, column: 3)
!332 = distinct !DILexicalBlock(scope: !45, file: !1, line: 288, column: 3)
!333 = !DILocation(line: 288, column: 3, scope: !332)
!334 = !DILocation(line: 290, column: 15, scope: !335)
!335 = distinct !DILexicalBlock(scope: !331, file: !1, line: 289, column: 3)
!336 = !DILocation(line: 281, column: 9, scope: !45)
!337 = !DILocation(line: 292, column: 8, scope: !338)
!338 = distinct !DILexicalBlock(scope: !335, file: !1, line: 292, column: 8)
!339 = !DILocation(line: 288, column: 37, scope: !331)
!340 = !DILocation(line: 292, column: 8, scope: !335)
!341 = !DILocation(line: 299, column: 3, scope: !45)
!342 = !DILocation(line: 301, column: 3, scope: !45)
!343 = !DILocation(line: 340, column: 25, scope: !69)
!344 = !DILocation(line: 340, column: 44, scope: !69)
!345 = !DILocation(line: 343, column: 3, scope: !69)
!346 = !DILocation(line: 343, column: 14, scope: !69)
!347 = !DILocation(line: 342, column: 7, scope: !69)
!348 = !DILocation(line: 365, column: 25, scope: !349)
!349 = distinct !DILexicalBlock(scope: !69, file: !1, line: 363, column: 6)
!350 = !DILocation(line: 363, column: 6, scope: !349)
!351 = !DILocation(line: 365, column: 33, scope: !349)
!352 = !DILocation(line: 363, column: 6, scope: !69)
!353 = !DILocation(line: 368, column: 18, scope: !354)
!354 = distinct !DILexicalBlock(scope: !355, file: !1, line: 368, column: 8)
!355 = distinct !DILexicalBlock(scope: !349, file: !1, line: 366, column: 3)
!356 = !{!357, !358, i64 0}
!357 = !{!"", !358, i64 0, !358, i64 4}
!358 = !{!"int", !285, i64 0}
!359 = !DILocation(line: 368, column: 24, scope: !354)
!360 = !DILocation(line: 368, column: 8, scope: !355)
!361 = !DILocation(line: 370, column: 14, scope: !362)
!362 = distinct !DILexicalBlock(scope: !354, file: !1, line: 369, column: 5)
!363 = !DILocation(line: 370, column: 7, scope: !362)
!364 = !DILocation(line: 372, column: 38, scope: !365)
!365 = distinct !DILexicalBlock(scope: !362, file: !1, line: 371, column: 7)
!366 = !DILocation(line: 383, column: 18, scope: !367)
!367 = distinct !DILexicalBlock(scope: !355, file: !1, line: 383, column: 8)
!368 = !DILocation(line: 383, column: 24, scope: !367)
!369 = !DILocation(line: 383, column: 30, scope: !367)
!370 = !DILocation(line: 384, column: 41, scope: !367)
!371 = !DILocation(line: 384, column: 46, scope: !367)
!372 = !DILocation(line: 385, column: 8, scope: !367)
!373 = !DILocation(line: 385, column: 31, scope: !367)
!374 = !DILocation(line: 383, column: 8, scope: !355)
!375 = !DILocation(line: 387, column: 15, scope: !376)
!376 = distinct !DILexicalBlock(scope: !367, file: !1, line: 386, column: 5)
!377 = !DILocation(line: 345, column: 7, scope: !69)
!378 = !DILocation(line: 388, column: 5, scope: !376)
!379 = !DILocation(line: 396, column: 18, scope: !380)
!380 = distinct !DILexicalBlock(scope: !355, file: !1, line: 396, column: 8)
!381 = !DILocation(line: 396, column: 24, scope: !380)
!382 = !DILocation(line: 396, column: 30, scope: !380)
!383 = !DILocation(line: 397, column: 41, scope: !380)
!384 = !DILocation(line: 397, column: 46, scope: !380)
!385 = !DILocation(line: 398, column: 8, scope: !380)
!386 = !DILocation(line: 398, column: 31, scope: !380)
!387 = !DILocation(line: 396, column: 8, scope: !355)
!388 = !DILocation(line: 400, column: 13, scope: !389)
!389 = distinct !DILexicalBlock(scope: !380, file: !1, line: 399, column: 5)
!390 = !DILocation(line: 345, column: 14, scope: !69)
!391 = !DILocation(line: 401, column: 5, scope: !389)
!392 = !DILocation(line: 409, column: 18, scope: !393)
!393 = distinct !DILexicalBlock(scope: !355, file: !1, line: 409, column: 8)
!394 = !DILocation(line: 409, column: 24, scope: !393)
!395 = !DILocation(line: 409, column: 30, scope: !393)
!396 = !DILocation(line: 409, column: 66, scope: !393)
!397 = !DILocation(line: 409, column: 8, scope: !355)
!398 = !DILocation(line: 411, column: 24, scope: !399)
!399 = distinct !DILexicalBlock(scope: !393, file: !1, line: 410, column: 5)
!400 = !DILocation(line: 411, column: 14, scope: !399)
!401 = !DILocation(line: 345, column: 19, scope: !69)
!402 = !DILocation(line: 412, column: 5, scope: !399)
!403 = !DILocation(line: 420, column: 18, scope: !404)
!404 = distinct !DILexicalBlock(scope: !355, file: !1, line: 420, column: 8)
!405 = !DILocation(line: 420, column: 24, scope: !404)
!406 = !DILocation(line: 420, column: 8, scope: !355)
!407 = !DILocation(line: 422, column: 14, scope: !408)
!408 = distinct !DILexicalBlock(scope: !404, file: !1, line: 421, column: 5)
!409 = !DILocation(line: 422, column: 7, scope: !408)
!410 = !DILocation(line: 424, column: 36, scope: !411)
!411 = distinct !DILexicalBlock(scope: !408, file: !1, line: 423, column: 7)
!412 = !DILocation(line: 434, column: 23, scope: !413)
!413 = distinct !DILexicalBlock(scope: !355, file: !1, line: 434, column: 8)
!414 = !DILocation(line: 434, column: 14, scope: !413)
!415 = !DILocation(line: 435, column: 14, scope: !413)
!416 = !DILocation(line: 434, column: 39, scope: !413)
!417 = !DILocation(line: 436, column: 17, scope: !413)
!418 = !DILocation(line: 436, column: 25, scope: !413)
!419 = !DILocation(line: 434, column: 8, scope: !355)
!420 = !DILocation(line: 444, column: 5, scope: !421)
!421 = distinct !DILexicalBlock(scope: !349, file: !1, line: 443, column: 3)
!422 = !DILocation(line: 448, column: 1, scope: !69)
!423 = !DILocation(line: 1266, column: 33, scope: !189)
!424 = !DILocation(line: 1267, column: 33, scope: !189)
!425 = !DILocation(line: 1268, column: 31, scope: !189)
!426 = !DILocation(line: 1269, column: 33, scope: !189)
!427 = !DILocation(line: 1273, column: 3, scope: !189)
!428 = !DILocation(line: 1273, column: 11, scope: !189)
!429 = !DILocation(line: 1275, column: 7, scope: !430)
!430 = distinct !DILexicalBlock(scope: !189, file: !1, line: 1275, column: 7)
!431 = !DILocation(line: 1275, column: 43, scope: !430)
!432 = !DILocation(line: 1275, column: 7, scope: !189)
!433 = !DILocation(line: 1277, column: 35, scope: !434)
!434 = distinct !DILexicalBlock(scope: !430, file: !1, line: 1276, column: 3)
!435 = !DILocation(line: 1277, column: 14, scope: !434)
!436 = !DILocation(line: 1272, column: 7, scope: !189)
!437 = !DILocation(line: 1278, column: 5, scope: !434)
!438 = !DILocation(line: 1279, column: 16, scope: !439)
!439 = distinct !DILexicalBlock(scope: !434, file: !1, line: 1279, column: 9)
!440 = !DILocation(line: 1294, column: 1, scope: !189)
!441 = !DILocation(line: 484, column: 31, scope: !92)
!442 = !DILocation(line: 484, column: 50, scope: !92)
!443 = !DILocation(line: 487, column: 3, scope: !92)
!444 = !DILocation(line: 487, column: 14, scope: !92)
!445 = !DILocation(line: 486, column: 7, scope: !92)
!446 = !DILocation(line: 512, column: 25, scope: !447)
!447 = distinct !DILexicalBlock(scope: !92, file: !1, line: 510, column: 6)
!448 = !DILocation(line: 510, column: 6, scope: !447)
!449 = !DILocation(line: 512, column: 33, scope: !447)
!450 = !DILocation(line: 510, column: 6, scope: !92)
!451 = !DILocation(line: 532, column: 18, scope: !452)
!452 = distinct !DILexicalBlock(scope: !453, file: !1, line: 532, column: 8)
!453 = distinct !DILexicalBlock(scope: !447, file: !1, line: 513, column: 3)
!454 = !DILocation(line: 532, column: 24, scope: !452)
!455 = !DILocation(line: 532, column: 30, scope: !452)
!456 = !DILocation(line: 533, column: 41, scope: !452)
!457 = !DILocation(line: 533, column: 46, scope: !452)
!458 = !DILocation(line: 534, column: 8, scope: !452)
!459 = !DILocation(line: 534, column: 31, scope: !452)
!460 = !DILocation(line: 532, column: 8, scope: !453)
!461 = !DILocation(line: 536, column: 15, scope: !462)
!462 = distinct !DILexicalBlock(scope: !452, file: !1, line: 535, column: 5)
!463 = !DILocation(line: 488, column: 10, scope: !92)
!464 = !DILocation(line: 537, column: 5, scope: !462)
!465 = !DILocation(line: 545, column: 18, scope: !466)
!466 = distinct !DILexicalBlock(scope: !453, file: !1, line: 545, column: 8)
!467 = !DILocation(line: 545, column: 24, scope: !466)
!468 = !DILocation(line: 545, column: 30, scope: !466)
!469 = !DILocation(line: 546, column: 41, scope: !466)
!470 = !DILocation(line: 546, column: 46, scope: !466)
!471 = !DILocation(line: 547, column: 8, scope: !466)
!472 = !DILocation(line: 547, column: 31, scope: !466)
!473 = !DILocation(line: 545, column: 8, scope: !453)
!474 = !DILocation(line: 549, column: 13, scope: !475)
!475 = distinct !DILexicalBlock(scope: !466, file: !1, line: 548, column: 5)
!476 = !DILocation(line: 488, column: 17, scope: !92)
!477 = !DILocation(line: 550, column: 5, scope: !475)
!478 = !DILocation(line: 585, column: 14, scope: !479)
!479 = distinct !DILexicalBlock(scope: !453, file: !1, line: 585, column: 8)
!480 = !DILocation(line: 586, column: 14, scope: !479)
!481 = !DILocation(line: 585, column: 43, scope: !479)
!482 = !DILocation(line: 595, column: 5, scope: !483)
!483 = distinct !DILexicalBlock(scope: !447, file: !1, line: 594, column: 3)
!484 = !DILocation(line: 599, column: 1, scope: !92)
!485 = !DILocation(line: 643, column: 29, scope: !103)
!486 = !DILocation(line: 643, column: 40, scope: !103)
!487 = !DILocation(line: 647, column: 11, scope: !103)
!488 = !DILocation(line: 645, column: 7, scope: !103)
!489 = !DILocation(line: 654, column: 3, scope: !103)
!490 = !DILocation(line: 646, column: 7, scope: !103)
!491 = !DILocation(line: 656, column: 20, scope: !492)
!492 = distinct !DILexicalBlock(scope: !493, file: !1, line: 656, column: 3)
!493 = distinct !DILexicalBlock(scope: !103, file: !1, line: 656, column: 3)
!494 = !DILocation(line: 656, column: 3, scope: !493)
!495 = !DILocation(line: 658, column: 15, scope: !496)
!496 = distinct !DILexicalBlock(scope: !492, file: !1, line: 657, column: 3)
!497 = !DILocation(line: 649, column: 9, scope: !103)
!498 = !DILocation(line: 660, column: 8, scope: !499)
!499 = distinct !DILexicalBlock(scope: !496, file: !1, line: 660, column: 8)
!500 = !DILocation(line: 656, column: 37, scope: !492)
!501 = !DILocation(line: 660, column: 8, scope: !496)
!502 = !DILocation(line: 667, column: 3, scope: !103)
!503 = !DILocation(line: 669, column: 3, scope: !103)
!504 = !DILocation(line: 715, column: 35, scope: !113)
!505 = !DILocation(line: 715, column: 46, scope: !113)
!506 = !DILocation(line: 719, column: 11, scope: !113)
!507 = !DILocation(line: 717, column: 7, scope: !113)
!508 = !DILocation(line: 726, column: 3, scope: !113)
!509 = !DILocation(line: 718, column: 7, scope: !113)
!510 = !DILocation(line: 728, column: 20, scope: !511)
!511 = distinct !DILexicalBlock(scope: !512, file: !1, line: 728, column: 3)
!512 = distinct !DILexicalBlock(scope: !113, file: !1, line: 728, column: 3)
!513 = !DILocation(line: 728, column: 3, scope: !512)
!514 = !DILocation(line: 730, column: 15, scope: !515)
!515 = distinct !DILexicalBlock(scope: !511, file: !1, line: 729, column: 3)
!516 = !DILocation(line: 721, column: 9, scope: !113)
!517 = !DILocation(line: 732, column: 8, scope: !518)
!518 = distinct !DILexicalBlock(scope: !515, file: !1, line: 732, column: 8)
!519 = !DILocation(line: 728, column: 37, scope: !511)
!520 = !DILocation(line: 732, column: 8, scope: !515)
!521 = !DILocation(line: 739, column: 3, scope: !113)
!522 = !DILocation(line: 741, column: 3, scope: !113)
!523 = !DILocation(line: 795, column: 42, scope: !123)
!524 = !DILocation(line: 795, column: 60, scope: !123)
!525 = !DILocation(line: 796, column: 35, scope: !123)
!526 = !DILocation(line: 799, column: 3, scope: !123)
!527 = !DILocation(line: 799, column: 8, scope: !123)
!528 = !DILocation(line: 802, column: 11, scope: !123)
!529 = !DILocation(line: 798, column: 7, scope: !123)
!530 = !DILocation(line: 813, column: 3, scope: !123)
!531 = !DILocation(line: 800, column: 16, scope: !123)
!532 = !DILocation(line: 815, column: 14, scope: !533)
!533 = distinct !DILexicalBlock(scope: !534, file: !1, line: 815, column: 3)
!534 = distinct !DILexicalBlock(scope: !123, file: !1, line: 815, column: 3)
!535 = !DILocation(line: 815, column: 13, scope: !533)
!536 = !DILocation(line: 815, column: 3, scope: !534)
!537 = !DILocation(line: 817, column: 9, scope: !538)
!538 = distinct !DILexicalBlock(scope: !539, file: !1, line: 817, column: 9)
!539 = distinct !DILexicalBlock(scope: !533, file: !1, line: 816, column: 3)
!540 = !DILocation(line: 817, column: 24, scope: !538)
!541 = !DILocation(line: 821, column: 15, scope: !542)
!542 = distinct !DILexicalBlock(scope: !538, file: !1, line: 820, column: 5)
!543 = !DILocation(line: 822, column: 7, scope: !542)
!544 = !DILocation(line: 815, column: 28, scope: !533)
!545 = !DILocation(line: 815, column: 12, scope: !533)
!546 = !DILocation(line: 826, column: 11, scope: !123)
!547 = !DILocation(line: 806, column: 13, scope: !123)
!548 = !DILocation(line: 829, column: 3, scope: !123)
!549 = !DILocation(line: 801, column: 7, scope: !123)
!550 = !DILocation(line: 831, column: 20, scope: !551)
!551 = distinct !DILexicalBlock(scope: !552, file: !1, line: 831, column: 3)
!552 = distinct !DILexicalBlock(scope: !123, file: !1, line: 831, column: 3)
!553 = !DILocation(line: 831, column: 3, scope: !552)
!554 = !DILocation(line: 833, column: 15, scope: !555)
!555 = distinct !DILexicalBlock(scope: !551, file: !1, line: 832, column: 3)
!556 = !DILocation(line: 804, column: 9, scope: !123)
!557 = !DILocation(line: 835, column: 8, scope: !558)
!558 = distinct !DILexicalBlock(scope: !555, file: !1, line: 835, column: 8)
!559 = !DILocation(line: 831, column: 37, scope: !551)
!560 = !DILocation(line: 835, column: 8, scope: !555)
!561 = !DILocation(line: 838, column: 13, scope: !562)
!562 = distinct !DILexicalBlock(scope: !558, file: !1, line: 836, column: 5)
!563 = !{!564, !564, i64 0}
!564 = !{!"double", !285, i64 0}
!565 = !DILocation(line: 839, column: 7, scope: !562)
!566 = !DILocation(line: 843, column: 3, scope: !123)
!567 = !DILocation(line: 846, column: 1, scope: !123)
!568 = !DILocation(line: 897, column: 38, scope: !141)
!569 = !DILocation(line: 897, column: 56, scope: !141)
!570 = !DILocation(line: 898, column: 32, scope: !141)
!571 = !DILocation(line: 902, column: 11, scope: !141)
!572 = !DILocation(line: 900, column: 7, scope: !141)
!573 = !DILocation(line: 912, column: 11, scope: !141)
!574 = !DILocation(line: 906, column: 12, scope: !141)
!575 = !DILocation(line: 915, column: 3, scope: !141)
!576 = !DILocation(line: 901, column: 7, scope: !141)
!577 = !DILocation(line: 917, column: 20, scope: !578)
!578 = distinct !DILexicalBlock(scope: !579, file: !1, line: 917, column: 3)
!579 = distinct !DILexicalBlock(scope: !141, file: !1, line: 917, column: 3)
!580 = !DILocation(line: 917, column: 3, scope: !579)
!581 = !DILocation(line: 919, column: 15, scope: !582)
!582 = distinct !DILexicalBlock(scope: !578, file: !1, line: 918, column: 3)
!583 = !DILocation(line: 904, column: 9, scope: !141)
!584 = !DILocation(line: 921, column: 8, scope: !585)
!585 = distinct !DILexicalBlock(scope: !582, file: !1, line: 921, column: 8)
!586 = !DILocation(line: 917, column: 37, scope: !578)
!587 = !DILocation(line: 921, column: 8, scope: !582)
!588 = !DILocation(line: 924, column: 13, scope: !589)
!589 = distinct !DILexicalBlock(scope: !585, file: !1, line: 922, column: 5)
!590 = !{!358, !358, i64 0}
!591 = !DILocation(line: 925, column: 7, scope: !589)
!592 = !DILocation(line: 929, column: 3, scope: !141)
!593 = !DILocation(line: 931, column: 3, scope: !141)
!594 = !DILocation(line: 983, column: 39, scope: !154)
!595 = !DILocation(line: 983, column: 57, scope: !154)
!596 = !DILocation(line: 984, column: 36, scope: !154)
!597 = !DILocation(line: 988, column: 11, scope: !154)
!598 = !DILocation(line: 986, column: 7, scope: !154)
!599 = !DILocation(line: 995, column: 3, scope: !154)
!600 = !DILocation(line: 987, column: 7, scope: !154)
!601 = !DILocation(line: 997, column: 20, scope: !602)
!602 = distinct !DILexicalBlock(scope: !603, file: !1, line: 997, column: 3)
!603 = distinct !DILexicalBlock(scope: !154, file: !1, line: 997, column: 3)
!604 = !DILocation(line: 997, column: 3, scope: !603)
!605 = !DILocation(line: 999, column: 15, scope: !606)
!606 = distinct !DILexicalBlock(scope: !602, file: !1, line: 998, column: 3)
!607 = !DILocation(line: 990, column: 9, scope: !154)
!608 = !DILocation(line: 1001, column: 8, scope: !609)
!609 = distinct !DILexicalBlock(scope: !606, file: !1, line: 1001, column: 8)
!610 = !DILocation(line: 997, column: 37, scope: !602)
!611 = !DILocation(line: 1001, column: 8, scope: !606)
!612 = !DILocation(line: 1003, column: 10, scope: !613)
!613 = distinct !DILexicalBlock(scope: !614, file: !1, line: 1003, column: 10)
!614 = distinct !DILexicalBlock(scope: !609, file: !1, line: 1002, column: 5)
!615 = !DILocation(line: 1003, column: 10, scope: !614)
!616 = !DILocation(line: 1003, column: 17, scope: !613)
!617 = !DILocation(line: 1004, column: 31, scope: !614)
!618 = !DILocation(line: 1004, column: 44, scope: !614)
!619 = !DILocation(line: 1004, column: 23, scope: !614)
!620 = !DILocation(line: 1004, column: 13, scope: !614)
!621 = !DILocation(line: 1005, column: 10, scope: !622)
!622 = distinct !DILexicalBlock(scope: !614, file: !1, line: 1005, column: 10)
!623 = !DILocation(line: 1005, column: 10, scope: !614)
!624 = !DILocation(line: 1007, column: 9, scope: !625)
!625 = distinct !DILexicalBlock(scope: !622, file: !1, line: 1006, column: 7)
!626 = !DILocation(line: 1009, column: 7, scope: !625)
!627 = !DILocation(line: 1018, column: 3, scope: !154)
!628 = !DILocation(line: 1020, column: 3, scope: !154)
!629 = !DILocation(line: 1073, column: 38, scope: !166)
!630 = !DILocation(line: 1073, column: 56, scope: !166)
!631 = !DILocation(line: 1074, column: 36, scope: !166)
!632 = !DILocation(line: 1078, column: 11, scope: !166)
!633 = !DILocation(line: 1076, column: 7, scope: !166)
!634 = !DILocation(line: 1085, column: 3, scope: !166)
!635 = !DILocation(line: 1077, column: 7, scope: !166)
!636 = !DILocation(line: 1087, column: 20, scope: !637)
!637 = distinct !DILexicalBlock(scope: !638, file: !1, line: 1087, column: 3)
!638 = distinct !DILexicalBlock(scope: !166, file: !1, line: 1087, column: 3)
!639 = !DILocation(line: 1087, column: 3, scope: !638)
!640 = !DILocation(line: 1089, column: 15, scope: !641)
!641 = distinct !DILexicalBlock(scope: !637, file: !1, line: 1088, column: 3)
!642 = !DILocation(line: 1080, column: 9, scope: !166)
!643 = !DILocation(line: 1091, column: 8, scope: !644)
!644 = distinct !DILexicalBlock(scope: !641, file: !1, line: 1091, column: 8)
!645 = !DILocation(line: 1087, column: 37, scope: !637)
!646 = !DILocation(line: 1091, column: 8, scope: !641)
!647 = !DILocation(line: 1093, column: 16, scope: !648)
!648 = distinct !DILexicalBlock(scope: !644, file: !1, line: 1092, column: 5)
!649 = !DILocation(line: 1094, column: 7, scope: !648)
!650 = !DILocation(line: 1098, column: 3, scope: !166)
!651 = !DILocation(line: 1100, column: 3, scope: !166)
!652 = !DILocation(line: 1136, column: 27, scope: !175)
!653 = !DILocation(line: 1136, column: 45, scope: !175)
!654 = !DILocation(line: 1138, column: 7, scope: !175)
!655 = !DILocation(line: 1142, column: 6, scope: !656)
!656 = distinct !DILexicalBlock(scope: !175, file: !1, line: 1142, column: 6)
!657 = !DILocation(line: 1142, column: 6, scope: !175)
!658 = !DILocation(line: 1142, column: 13, scope: !656)
!659 = !DILocation(line: 1143, column: 27, scope: !175)
!660 = !DILocation(line: 1143, column: 40, scope: !175)
!661 = !DILocation(line: 1143, column: 19, scope: !175)
!662 = !DILocation(line: 1143, column: 9, scope: !175)
!663 = !DILocation(line: 1144, column: 6, scope: !664)
!664 = distinct !DILexicalBlock(scope: !175, file: !1, line: 1144, column: 6)
!665 = !DILocation(line: 1144, column: 6, scope: !175)
!666 = !DILocation(line: 1146, column: 5, scope: !667)
!667 = distinct !DILexicalBlock(scope: !664, file: !1, line: 1145, column: 3)
!668 = !DILocation(line: 1148, column: 3, scope: !667)
!669 = !DILocation(line: 1154, column: 3, scope: !175)
!670 = !DILocation(line: 1192, column: 31, scope: !182)
!671 = !DILocation(line: 1192, column: 49, scope: !182)
!672 = !DILocation(line: 1194, column: 7, scope: !182)
!673 = !DILocation(line: 1196, column: 6, scope: !674)
!674 = distinct !DILexicalBlock(scope: !182, file: !1, line: 1196, column: 6)
!675 = !DILocation(line: 1196, column: 6, scope: !182)
!676 = !DILocation(line: 1198, column: 11, scope: !677)
!677 = distinct !DILexicalBlock(scope: !674, file: !1, line: 1197, column: 3)
!678 = !DILocation(line: 1200, column: 3, scope: !677)
!679 = !DILocation(line: 1201, column: 11, scope: !680)
!680 = distinct !DILexicalBlock(scope: !674, file: !1, line: 1201, column: 11)
!681 = !DILocation(line: 1201, column: 11, scope: !674)
!682 = !DILocation(line: 1203, column: 11, scope: !683)
!683 = distinct !DILexicalBlock(scope: !680, file: !1, line: 1202, column: 3)
!684 = !DILocation(line: 1205, column: 3, scope: !683)
!685 = !DILocation(line: 1211, column: 3, scope: !182)
!686 = !DILocation(line: 1317, column: 35, scope: !222)
!687 = !DILocation(line: 1319, column: 3, scope: !222)
!688 = !DILocation(line: 1320, column: 1, scope: !222)
!689 = !DILocation(line: 1323, column: 20, scope: !227)
!690 = !DILocation(line: 1325, column: 20, scope: !227)
!691 = !DILocation(line: 1317, column: 35, scope: !222, inlinedAt: !692)
!692 = distinct !DILocation(line: 1325, column: 3, scope: !227)
!693 = !DILocation(line: 1319, column: 3, scope: !222, inlinedAt: !692)
!694 = !DILocation(line: 1326, column: 1, scope: !227)
!695 = !DILocation(line: 1358, column: 39, scope: !232)
!696 = !DILocation(line: 1359, column: 48, scope: !232)
!697 = !DILocation(line: 1360, column: 29, scope: !232)
!698 = !DILocation(line: 1363, column: 3, scope: !232)
!699 = !DILocation(line: 1364, column: 3, scope: !232)
!700 = !DILocation(line: 1367, column: 32, scope: !232)
!701 = !DILocation(line: 1367, column: 24, scope: !232)
!702 = !DILocation(line: 1362, column: 10, scope: !232)
!703 = !DILocation(line: 1367, column: 13, scope: !232)
!704 = !DILocation(line: 1367, column: 11, scope: !232)
!705 = !DILocation(line: 1368, column: 18, scope: !706)
!706 = distinct !DILexicalBlock(scope: !232, file: !1, line: 1368, column: 7)
!707 = !DILocation(line: 1368, column: 16, scope: !706)
!708 = !DILocation(line: 1368, column: 7, scope: !232)
!709 = !DILocation(line: 1370, column: 5, scope: !710)
!710 = distinct !DILexicalBlock(scope: !706, file: !1, line: 1369, column: 3)
!711 = !DILocation(line: 1378, column: 3, scope: !232)
!712 = !DILocation(line: 1374, column: 3, scope: !710)
!713 = !DILocation(line: 1379, column: 3, scope: !232)
!714 = !DILocation(line: 1381, column: 3, scope: !232)
!715 = !DILocation(line: 1382, column: 1, scope: !232)
