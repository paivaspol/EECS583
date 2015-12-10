; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/IOUtil/CheckpointRecovery.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.cHandledData = type { %struct.cHandleStorage*, i32, i32 }
%struct.cHandleStorage = type { i32, i8*, i8* }
%struct.anon = type { double, double, double, double, double, double, double, double, double, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._RuneLocale = type { [8 x i8], [32 x i8], i32 (i8*, i64, i8**)*, i32 (i32, i8*, i64, i8**)*, i32, [256 x i32], [256 x i32], [256 x i32], %struct._RuneRange, %struct._RuneRange, %struct._RuneRange, i8*, i32, i32, %struct._RuneCharClass* }
%struct._RuneRange = type { i32, %struct._RuneEntry* }
%struct._RuneEntry = type { i32, i32, i32, i32* }
%struct._RuneCharClass = type { [14 x i8], i32 }
%struct.cGH = type { i32, i32, i32*, i32*, i32*, i32*, i32*, i32*, i32*, double, double*, double*, i32*, i32*, i32, i32*, double, i8***, i8**, %struct.cGHGroupData* }
%struct.cGHGroupData = type { i8, i8 }
%struct.DIR = type { i32, i64, i64, i8*, i32, i64, i64, i32, %struct._opaque_pthread_mutex_t, %struct._telldir* }
%struct._opaque_pthread_mutex_t = type { i64, [56 x i8] }
%struct._telldir = type opaque
%struct.dirent = type { i64, i64, i16, i16, i8, [1024 x i8] }
%struct.filelist_t = type { i8*, i32 }
%struct.PARAM_PROPS = type { i8*, i8*, i32, i8*, i8*, i32, %struct.RANGE*, i32, i32 }
%struct.RANGE = type { %struct.RANGE*, %struct.RANGE*, i8*, i8*, i32, i8* }

@RecoverFunctions = internal global %struct.cHandledData* null, align 8
@num_functions = internal unnamed_addr global i32 0, align 4
@iorest_ = external global %struct.anon
@.str = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@.str1 = private unnamed_addr constant [87 x i8] c"../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/IOUtil/CheckpointRecovery.c\00", align 1
@.str2 = private unnamed_addr constant [7 x i8] c"IOUtil\00", align 1
@.str3 = private unnamed_addr constant [48 x i8] c"IOUtil_PrepareFilename: Unknown calling mode %d\00", align 1
@.str4 = private unnamed_addr constant [7 x i8] c"%sL%d_\00", align 1
@.str5 = private unnamed_addr constant [5 x i8] c"med_\00", align 1
@.str6 = private unnamed_addr constant [5 x i8] c"low_\00", align 1
@.str7 = private unnamed_addr constant [9 x i8] c"%s.it_%d\00", align 1
@.str8 = private unnamed_addr constant [11 x i8] c"%s.file_%d\00", align 1
@.str9 = private unnamed_addr constant [3 x i8] c"IO\00", align 1
@checkpoint_file_exists = internal unnamed_addr global i32 0, align 4
@.str10 = private unnamed_addr constant [34 x i8] c"Failed to restart from recovery !\00", align 1
@.str11 = private unnamed_addr constant [38 x i8] c"Reading variables from data file '%s'\00", align 1
@.str12 = private unnamed_addr constant [45 x i8] c"Failed to read variables from data file '%s'\00", align 1
@.str13 = private unnamed_addr constant [5 x i8] c"auto\00", align 1
@.str14 = private unnamed_addr constant [10 x i8] c"autoprobe\00", align 1
@.str15 = private unnamed_addr constant [75 x i8] c"Searching for %s checkpoint files with basefilename '%s' in directory '%s'\00", align 1
@.str16 = private unnamed_addr constant [38 x i8] c"Recovery directory '%s' doesn't exist\00", align 1
@.str17 = private unnamed_addr constant [5 x i8] c".it_\00", align 1
@.str18 = private unnamed_addr constant [7 x i8] c".file_\00", align 1
@.str19 = private unnamed_addr constant [8 x i8] c".file_0\00", align 1
@.str20 = private unnamed_addr constant [40 x i8] c"Failed to allocate memory for file list\00", align 1
@.str21 = private unnamed_addr constant [79 x i8] c"No %s checkpoint files with basefilename '%s' found in recovery directory '%s'\00", align 1
@.str22 = private unnamed_addr constant [106 x i8] c"Could not recover parameters from %s checkpoint file(s) with basefilename '%s' in recovery directory '%s'\00", align 1
@.str23 = private unnamed_addr constant [38 x i8] c"Couldn't get value for parameter '%s'\00", align 1
@.str24 = private unnamed_addr constant [38 x i8] c"Failed to allocate buffer of %d bytes\00", align 1
@.str25 = private unnamed_addr constant [9 x i8] c"%s = %s\0A\00", align 1
@.str26 = private unnamed_addr constant [3 x i8] c"::\00", align 1
@.str27 = private unnamed_addr constant [36 x i8] c"Couldn't set parameter '%s' to '%s'\00", align 1
@.str28 = private unnamed_addr constant [46 x i8] c"Ignoring inactive parameter '%s' for recovery\00", align 1
@.str29 = private unnamed_addr constant [100 x i8] c"$Header: /cactus/CactusBase/IOUtil/src/CheckpointRecovery.c,v 1.31 2002/01/15 18:21:06 tradke Exp $\00", align 1
@.str30 = private unnamed_addr constant [61 x i8] c"IOUtil_RecoverFromFile: No recovery routines were registered\00", align 1
@_DefaultRuneLocale = external global %struct._RuneLocale
@.str31 = private unnamed_addr constant [60 x i8] c"SetInputFlag: Optional string '%s' in variable name ignored\00", align 1

; Function Attrs: nounwind optsize readnone ssp uwtable
define i8* @CCTKi_version_CactusBase_IOUtil_CheckpointRecovery_c() #0 {
  ret i8* getelementptr inbounds ([100 x i8]* @.str29, i64 0, i64 0)
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @IOUtil_RegisterRecover(i8* %name, i32 (%struct.cGH*, i8*, i32)* %func) #1 {
  %1 = load %struct.cHandledData** @RecoverFunctions, align 8, !tbaa !2
  %2 = tail call i32 @Util_GetHandle(%struct.cHandledData* %1, i8* %name, i8** null) #7
  %3 = icmp slt i32 %2, 0
  br i1 %3, label %4, label %9

; <label>:4                                       ; preds = %0
  %5 = bitcast i32 (%struct.cGH*, i8*, i32)* %func to i8*
  %6 = tail call i32 @Util_NewHandle(%struct.cHandledData** @RecoverFunctions, i8* %name, i8* %5) #7
  %7 = load i32* @num_functions, align 4, !tbaa !6
  %8 = add nsw i32 %7, 1
  store i32 %8, i32* @num_functions, align 4, !tbaa !6
  br label %9

; <label>:9                                       ; preds = %0, %4
  %handle.0 = phi i32 [ %6, %4 ], [ -1, %0 ]
  ret i32 %handle.0
}

; Function Attrs: optsize
declare i32 @Util_GetHandle(%struct.cHandledData*, i8*, i8**) #2

; Function Attrs: optsize
declare i32 @Util_NewHandle(%struct.cHandledData**, i8*, i8*) #2

; Function Attrs: nounwind optsize ssp uwtable
define void @IOUtil_PrepareFilename(%struct.cGH* readonly %GH, i8* %basefilename, i8* %fname, i32 %called_from, i32 %file_ioproc, i32 %file_unchunked) #1 {
  %1 = load i8** getelementptr inbounds (%struct.anon* @iorest_, i64 0, i32 10), align 8, !tbaa !8
  %2 = load i8** getelementptr inbounds (%struct.anon* @iorest_, i64 0, i32 21), align 8, !tbaa !11
  %3 = load i8** getelementptr inbounds (%struct.anon* @iorest_, i64 0, i32 22), align 8, !tbaa !12
  switch i32 %called_from, label %17 [
    i32 0, label %4
    i32 1, label %8
    i32 3, label %12
    i32 2, label %12
    i32 4, label %12
  ]

; <label>:4                                       ; preds = %0
  %5 = load i8** getelementptr inbounds (%struct.anon* @iorest_, i64 0, i32 9), align 8, !tbaa !13
  %6 = tail call i64 @llvm.objectsize.i64.p0i8(i8* %fname, i1 false)
  %7 = tail call i32 (i8*, i32, i64, i8*, ...)* @__sprintf_chk(i8* %fname, i32 0, i64 %6, i8* getelementptr inbounds ([6 x i8]* @.str, i64 0, i64 0), i8* %1, i8* %5) #7
  br label %19

; <label>:8                                       ; preds = %0
  %9 = load i8** getelementptr inbounds (%struct.anon* @iorest_, i64 0, i32 11), align 8, !tbaa !14
  %10 = tail call i64 @llvm.objectsize.i64.p0i8(i8* %fname, i1 false)
  %11 = tail call i32 (i8*, i32, i64, i8*, ...)* @__sprintf_chk(i8* %fname, i32 0, i64 %10, i8* getelementptr inbounds ([6 x i8]* @.str, i64 0, i64 0), i8* %1, i8* %9) #7
  br label %19

; <label>:12                                      ; preds = %0, %0, %0
  %13 = tail call i64 @llvm.objectsize.i64.p0i8(i8* %fname, i1 false)
  %14 = icmp ne i8* %basefilename, null
  %15 = select i1 %14, i8* %basefilename, i8* %2
  %16 = tail call i32 (i8*, i32, i64, i8*, ...)* @__sprintf_chk(i8* %fname, i32 0, i64 %13, i8* getelementptr inbounds ([6 x i8]* @.str, i64 0, i64 0), i8* %3, i8* %15) #7
  br label %19

; <label>:17                                      ; preds = %0
  %18 = tail call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 0, i32 211, i8* getelementptr inbounds ([87 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([48 x i8]* @.str3, i64 0, i64 0), i32 %called_from) #7
  br label %19

; <label>:19                                      ; preds = %17, %12, %8, %4
  %20 = icmp eq %struct.cGH* %GH, null
  br i1 %20, label %38, label %21

; <label>:21                                      ; preds = %19
  %22 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 13
  %23 = load i32** %22, align 8, !tbaa !15
  %24 = load i32* %23, align 4, !tbaa !6
  %25 = icmp sgt i32 %24, 1
  br i1 %25, label %26, label %29

; <label>:26                                      ; preds = %21
  %27 = tail call i64 @llvm.objectsize.i64.p0i8(i8* %fname, i1 false)
  %28 = tail call i32 (i8*, i32, i64, i8*, ...)* @__sprintf_chk(i8* %fname, i32 0, i64 %27, i8* getelementptr inbounds ([7 x i8]* @.str4, i64 0, i64 0), i8* %fname, i32 %24) #7
  br label %29

; <label>:29                                      ; preds = %26, %21
  %30 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 14
  %31 = load i32* %30, align 4, !tbaa !17
  %32 = icmp sgt i32 %31, 0
  br i1 %32, label %33, label %38

; <label>:33                                      ; preds = %29
  %34 = icmp eq i32 %31, 1
  %35 = select i1 %34, i8* getelementptr inbounds ([5 x i8]* @.str5, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str6, i64 0, i64 0)
  %36 = tail call i64 @llvm.objectsize.i64.p0i8(i8* %fname, i1 false)
  %37 = tail call i8* @__strcat_chk(i8* %fname, i8* %35, i64 %36) #7
  br label %38

; <label>:38                                      ; preds = %19, %29, %33
  %39 = icmp ult i32 %called_from, 2
  br i1 %39, label %40, label %45

; <label>:40                                      ; preds = %38
  %41 = tail call i64 @llvm.objectsize.i64.p0i8(i8* %fname, i1 false)
  %42 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 1
  %43 = load i32* %42, align 4, !tbaa !18
  %44 = tail call i32 (i8*, i32, i64, i8*, ...)* @__sprintf_chk(i8* %fname, i32 0, i64 %41, i8* getelementptr inbounds ([9 x i8]* @.str7, i64 0, i64 0), i8* %fname, i32 %43) #7
  br label %45

; <label>:45                                      ; preds = %38, %40
  %46 = icmp eq i32 %file_unchunked, 0
  br i1 %46, label %47, label %50

; <label>:47                                      ; preds = %45
  %48 = tail call i64 @llvm.objectsize.i64.p0i8(i8* %fname, i1 false)
  %49 = tail call i32 (i8*, i32, i64, i8*, ...)* @__sprintf_chk(i8* %fname, i32 0, i64 %48, i8* getelementptr inbounds ([11 x i8]* @.str8, i64 0, i64 0), i8* %fname, i32 %file_ioproc) #7
  br label %50

; <label>:50                                      ; preds = %45, %47
  ret void
}

; Function Attrs: optsize
declare i32 @__sprintf_chk(i8*, i32, i64, i8*, ...) #2

; Function Attrs: nounwind readnone
declare i64 @llvm.objectsize.i64.p0i8(i8*, i1) #3

; Function Attrs: optsize
declare i32 @CCTK_VWarn(i32, i32, i8*, i8*, i8*, ...) #2

; Function Attrs: nounwind optsize
declare i8* @__strcat_chk(i8*, i8*, i64) #4

; Function Attrs: nounwind optsize ssp uwtable
define void @IOUtil_RecoverGH(%struct.cGH* %GH) #1 {
  %1 = tail call i8* @CCTK_GHExtension(%struct.cGH* %GH, i8* getelementptr inbounds ([3 x i8]* @.str9, i64 0, i64 0)) #7
  %2 = load i32* @checkpoint_file_exists, align 4, !tbaa !6
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %11, label %4

; <label>:4                                       ; preds = %0
  %5 = tail call fastcc i32 @IOUtil_RecoverFromFile(%struct.cGH* %GH, i8* null, i32 3) #8
  %6 = icmp sgt i32 %5, -1
  %.lobit = lshr i32 %5, 31
  %.lobit.not = xor i32 %.lobit, 1
  %7 = getelementptr inbounds i8* %1, i64 28
  %8 = bitcast i8* %7 to i32*
  store i32 %.lobit.not, i32* %8, align 4, !tbaa !19
  br i1 %6, label %14, label %9

; <label>:9                                       ; preds = %4
  %10 = tail call i32 @CCTK_Warn(i32 0, i32 343, i8* getelementptr inbounds ([87 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([34 x i8]* @.str10, i64 0, i64 0)) #7
  br label %14

; <label>:11                                      ; preds = %0
  %12 = getelementptr inbounds i8* %1, i64 28
  %13 = bitcast i8* %12 to i32*
  store i32 0, i32* %13, align 4, !tbaa !19
  br label %14

; <label>:14                                      ; preds = %4, %9, %11
  ret void
}

; Function Attrs: optsize
declare i8* @CCTK_GHExtension(%struct.cGH*, i8*) #2

; Function Attrs: nounwind optsize ssp uwtable
define internal fastcc i32 @IOUtil_RecoverFromFile(%struct.cGH* %GH, i8* %basefilename, i32 %called_from) #1 {
  %1 = load i32* @num_functions, align 4, !tbaa !6
  %2 = icmp sgt i32 %1, 0
  br i1 %2, label %.lr.ph, label %.loopexit.thread

.lr.ph:                                           ; preds = %0, %10
  %handle.05 = phi i32 [ %11, %10 ], [ 0, %0 ]
  %retval.04 = phi i32 [ %retval.1, %10 ], [ -1, %0 ]
  %3 = load %struct.cHandledData** @RecoverFunctions, align 8, !tbaa !2
  %4 = tail call i8* @Util_GetHandledData(%struct.cHandledData* %3, i32 %handle.05) #7
  %5 = icmp eq i8* %4, null
  br i1 %5, label %10, label %6

; <label>:6                                       ; preds = %.lr.ph
  %7 = bitcast i8* %4 to i32 (%struct.cGH*, i8*, i32)*
  %8 = tail call i32 %7(%struct.cGH* %GH, i8* %basefilename, i32 %called_from) #7
  %9 = icmp sgt i32 %8, -1
  br i1 %9, label %thread-pre-split, label %10

; <label>:10                                      ; preds = %.lr.ph, %6
  %retval.1 = phi i32 [ %8, %6 ], [ %retval.04, %.lr.ph ]
  %11 = add nuw nsw i32 %handle.05, 1
  %12 = load i32* @num_functions, align 4, !tbaa !6
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %.lr.ph, label %.loopexit

thread-pre-split:                                 ; preds = %6
  %.pr = load i32* @num_functions, align 4, !tbaa !6
  br label %.loopexit

.loopexit:                                        ; preds = %10, %thread-pre-split
  %14 = phi i32 [ %.pr, %thread-pre-split ], [ %12, %10 ]
  %retval.2 = phi i32 [ %8, %thread-pre-split ], [ %retval.1, %10 ]
  %15 = icmp slt i32 %14, 1
  br i1 %15, label %.loopexit.thread, label %17

.loopexit.thread:                                 ; preds = %0, %.loopexit
  %retval.210 = phi i32 [ %retval.2, %.loopexit ], [ -1, %0 ]
  %16 = tail call i32 @CCTK_Warn(i32 1, i32 305, i8* getelementptr inbounds ([87 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([61 x i8]* @.str30, i64 0, i64 0)) #7
  br label %17

; <label>:17                                      ; preds = %.loopexit.thread, %.loopexit
  %retval.29 = phi i32 [ %retval.210, %.loopexit.thread ], [ %retval.2, %.loopexit ]
  ret i32 %retval.29
}

; Function Attrs: optsize
declare i32 @CCTK_Warn(i32, i32, i8*, i8*, i8*) #2

; Function Attrs: nounwind optsize ssp uwtable
define void @IOUtil_RecoverVarsFromDatafiles(%struct.cGH* %GH, i8* nocapture readonly %in_files, i8* %in_vars) #1 {
  %1 = load i32* getelementptr inbounds (%struct.anon* @iorest_, i64 0, i32 50), align 4, !tbaa !21
  %2 = tail call i8* @CCTK_GHExtension(%struct.cGH* %GH, i8* getelementptr inbounds ([3 x i8]* @.str9, i64 0, i64 0)) #7
  %3 = tail call i32 @CCTK_NumVars() #7
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %5, label %12

; <label>:5                                       ; preds = %0
  %6 = tail call i32 @CCTK_NumVars() #7
  %7 = sext i32 %6 to i64
  %8 = tail call i8* @calloc(i64 %7, i64 1) #7
  %9 = getelementptr inbounds i8* %2, i64 32
  %10 = bitcast i8* %9 to i8**
  store i8* %8, i8** %10, align 8, !tbaa !22
  %11 = tail call i32 @CCTK_TraverseString(i8* %in_vars, void (i32, i8*, i8*)* @SetInputFlag, i8* %8, i32 3) #7
  br label %15

; <label>:12                                      ; preds = %0
  %13 = getelementptr inbounds i8* %2, i64 32
  %14 = bitcast i8* %13 to i8**
  store i8* null, i8** %14, align 8, !tbaa !22
  br label %15

; <label>:15                                      ; preds = %12, %5
  %16 = tail call i8* @strdup(i8* %in_files) #7
  %17 = icmp eq i8* %16, null
  br i1 %17, label %.thread, label %.preheader9.lr.ph

.preheader9.lr.ph:                                ; preds = %15
  %18 = icmp eq i32 %1, 0
  br label %.preheader9

.preheader9:                                      ; preds = %52, %isspace.exit, %.preheader9.lr.ph
  %basefilename.1 = phi i8* [ %16, %.preheader9.lr.ph ], [ %28, %isspace.exit ], [ %delim.0, %52 ]
  %19 = load i8* %basefilename.1, align 1, !tbaa !23
  %isascii.i.i7 = icmp sgt i8 %19, -1
  br i1 %isascii.i.i7, label %20, label %25

; <label>:20                                      ; preds = %.preheader9
  %21 = sext i8 %19 to i64
  %22 = getelementptr inbounds %struct._RuneLocale* @_DefaultRuneLocale, i64 0, i32 5, i64 %21
  %23 = load i32* %22, align 4, !tbaa !6
  %24 = and i32 %23, 16384
  br label %isspace.exit

; <label>:25                                      ; preds = %.preheader9
  %26 = sext i8 %19 to i32
  %27 = tail call i32 @__maskrune(i32 %26, i64 16384) #7
  br label %isspace.exit

isspace.exit:                                     ; preds = %20, %25
  %.sink.i.in.i = phi i32 [ %24, %20 ], [ %27, %25 ]
  %.sink.i.i = icmp eq i32 %.sink.i.in.i, 0
  %28 = getelementptr inbounds i8* %basefilename.1, i64 1
  br i1 %.sink.i.i, label %29, label %.preheader9

; <label>:29                                      ; preds = %isspace.exit
  %30 = load i8* %basefilename.1, align 1, !tbaa !23
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %53, label %.preheader

.preheader:                                       ; preds = %29, %42
  %basefilename.1.pn = phi i8* [ %delim.0, %42 ], [ %basefilename.1, %29 ]
  %delim.0 = getelementptr inbounds i8* %basefilename.1.pn, i64 1
  %32 = load i8* %delim.0, align 1, !tbaa !23
  %isascii.i.i18 = icmp sgt i8 %32, -1
  br i1 %isascii.i.i18, label %33, label %38

; <label>:33                                      ; preds = %.preheader
  %34 = sext i8 %32 to i64
  %35 = getelementptr inbounds %struct._RuneLocale* @_DefaultRuneLocale, i64 0, i32 5, i64 %34
  %36 = load i32* %35, align 4, !tbaa !6
  %37 = and i32 %36, 16384
  br label %isspace.exit4

; <label>:38                                      ; preds = %.preheader
  %39 = sext i8 %32 to i32
  %40 = tail call i32 @__maskrune(i32 %39, i64 16384) #7
  br label %isspace.exit4

isspace.exit4:                                    ; preds = %33, %38
  %.sink.i.in.i2 = phi i32 [ %37, %33 ], [ %40, %38 ]
  %.sink.i.i3 = icmp eq i32 %.sink.i.in.i2, 0
  %41 = load i8* %delim.0, align 1, !tbaa !23
  br i1 %.sink.i.i3, label %42, label %.critedge

; <label>:42                                      ; preds = %isspace.exit4
  %43 = icmp eq i8 %41, 0
  br i1 %43, label %.critedge, label %.preheader

.critedge:                                        ; preds = %isspace.exit4, %42
  %44 = phi i8 [ 0, %42 ], [ %41, %isspace.exit4 ]
  store i8 0, i8* %delim.0, align 1, !tbaa !23
  br i1 %18, label %47, label %45

; <label>:45                                      ; preds = %.critedge
  %46 = tail call i32 (i8*, i8*, ...)* @CCTK_VInfo(i8* getelementptr inbounds ([7 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([38 x i8]* @.str11, i64 0, i64 0), i8* %basefilename.1) #7
  br label %47

; <label>:47                                      ; preds = %.critedge, %45
  %48 = tail call fastcc i32 @IOUtil_RecoverFromFile(%struct.cGH* %GH, i8* %basefilename.1, i32 4) #8
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %52

; <label>:50                                      ; preds = %47
  %51 = tail call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 1, i32 432, i8* getelementptr inbounds ([87 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([45 x i8]* @.str12, i64 0, i64 0), i8* %basefilename.1) #7
  br label %52

; <label>:52                                      ; preds = %50, %47
  store i8 %44, i8* %delim.0, align 1, !tbaa !23
  br label %.preheader9

; <label>:53                                      ; preds = %29
  %54 = tail call i64 @strlen(i8* %in_files) #7
  %55 = sub i64 0, %54
  %56 = getelementptr inbounds i8* %basefilename.1, i64 %55
  tail call void @free(i8* %56) #8
  br label %.thread

.thread:                                          ; preds = %15, %53
  %57 = getelementptr inbounds i8* %2, i64 32
  %58 = bitcast i8* %57 to i8**
  %59 = load i8** %58, align 8, !tbaa !22
  %60 = icmp eq i8* %59, null
  br i1 %60, label %62, label %61

; <label>:61                                      ; preds = %.thread
  tail call void @free(i8* %59) #8
  store i8* null, i8** %58, align 8, !tbaa !22
  br label %62

; <label>:62                                      ; preds = %.thread, %61
  ret void
}

; Function Attrs: optsize
declare i32 @CCTK_NumVars() #2

; Function Attrs: nounwind optsize
declare noalias i8* @calloc(i64, i64) #4

; Function Attrs: optsize
declare i32 @CCTK_TraverseString(i8*, void (i32, i8*, i8*)*, i8*, i32) #2

; Function Attrs: nounwind optsize ssp uwtable
define internal void @SetInputFlag(i32 %vindex, i8* %optstring, i8* nocapture %flags) #1 {
  %1 = sext i32 %vindex to i64
  %2 = getelementptr inbounds i8* %flags, i64 %1
  store i8 1, i8* %2, align 1, !tbaa !23
  %3 = icmp eq i8* %optstring, null
  br i1 %3, label %6, label %4

; <label>:4                                       ; preds = %0
  %5 = tail call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 5, i32 885, i8* getelementptr inbounds ([87 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([60 x i8]* @.str31, i64 0, i64 0), i8* %optstring) #7
  br label %6

; <label>:6                                       ; preds = %0, %4
  ret void
}

; Function Attrs: nounwind optsize
declare noalias i8* @strdup(i8* nocapture readonly) #4

; Function Attrs: optsize
declare i32 @CCTK_VInfo(i8*, i8*, ...) #2

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) #4

; Function Attrs: nounwind optsize readonly
declare i64 @strlen(i8* nocapture) #5

; Function Attrs: nounwind optsize ssp uwtable
define void @IOUtil_RecoverIDFromDatafiles(%struct.cGH* %GH) #1 {
  %1 = load i8** getelementptr inbounds (%struct.anon* @iorest_, i64 0, i32 19), align 8, !tbaa !24
  %2 = load i8** getelementptr inbounds (%struct.anon* @iorest_, i64 0, i32 20), align 8, !tbaa !25
  tail call void @IOUtil_RecoverVarsFromDatafiles(%struct.cGH* %GH, i8* %1, i8* %2) #8
  ret void
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @IOUtil_RecoverParameters(i32 (%struct.cGH*, i8*, i32)* nocapture %recoverFn, i8* nocapture readonly %fileExtension, i8* %fileType) #1 {
  %1 = load i8** getelementptr inbounds (%struct.anon* @iorest_, i64 0, i32 18), align 8, !tbaa !26
  %2 = load i8** getelementptr inbounds (%struct.anon* @iorest_, i64 0, i32 21), align 8, !tbaa !11
  %3 = load i8** getelementptr inbounds (%struct.anon* @iorest_, i64 0, i32 22), align 8, !tbaa !12
  %4 = load i32* getelementptr inbounds (%struct.anon* @iorest_, i64 0, i32 50), align 4, !tbaa !21
  %5 = tail call i32 @CCTK_Equals(i8* %1, i8* getelementptr inbounds ([5 x i8]* @.str13, i64 0, i64 0)) #7
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %10

; <label>:7                                       ; preds = %0
  %8 = tail call i32 @CCTK_Equals(i8* %1, i8* getelementptr inbounds ([10 x i8]* @.str14, i64 0, i64 0)) #7
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %108, label %10

; <label>:10                                      ; preds = %7, %0
  %11 = icmp eq i32 %4, 0
  br i1 %11, label %14, label %12

; <label>:12                                      ; preds = %10
  %13 = tail call i32 (i8*, i8*, ...)* @CCTK_VInfo(i8* getelementptr inbounds ([7 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([75 x i8]* @.str15, i64 0, i64 0), i8* %fileType, i8* %2, i8* %3) #7
  br label %14

; <label>:14                                      ; preds = %10, %12
  %15 = tail call %struct.DIR* @"\01_opendir$INODE64"(i8* %3) #7
  %16 = icmp eq %struct.DIR* %15, null
  br i1 %16, label %17, label %19

; <label>:17                                      ; preds = %14
  %18 = tail call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 1, i32 548, i8* getelementptr inbounds ([87 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([38 x i8]* @.str16, i64 0, i64 0), i8* %3) #7
  br label %117

; <label>:19                                      ; preds = %14
  %20 = tail call i64 @strlen(i8* %fileExtension) #7
  %21 = trunc i64 %20 to i32
  %22 = tail call i64 @strlen(i8* %2) #7
  %23 = tail call %struct.dirent* @"\01_readdir$INODE64"(%struct.DIR* %15) #7
  %24 = icmp eq %struct.dirent* %23, null
  br i1 %24, label %._crit_edge13, label %.lr.ph12

.lr.ph12:                                         ; preds = %19
  %sext = shl i64 %22, 32
  %25 = ashr exact i64 %sext, 32
  %.sum = add nsw i64 %25, 4
  %sext2 = shl i64 %20, 32
  %26 = ashr exact i64 %sext2, 32
  br label %27

; <label>:27                                      ; preds = %.lr.ph12, %.backedge
  %28 = phi %struct.dirent* [ %23, %.lr.ph12 ], [ %73, %.backedge ]
  %filelist.010 = phi %struct.filelist_t* [ null, %.lr.ph12 ], [ %filelist.0.be, %.backedge ]
  %num_files.09 = phi i32 [ 0, %.lr.ph12 ], [ %num_files.0.be, %.backedge ]
  %29 = getelementptr inbounds %struct.dirent* %28, i64 0, i32 5, i64 0
  %30 = tail call i32 @strncmp(i8* %29, i8* %2, i64 %25) #7
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %.backedge

; <label>:32                                      ; preds = %27
  %33 = getelementptr inbounds %struct.dirent* %28, i64 0, i32 5, i64 %25
  %34 = tail call i32 @strncmp(i8* %33, i8* getelementptr inbounds ([5 x i8]* @.str17, i64 0, i64 0), i64 4) #7
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %.backedge

; <label>:36                                      ; preds = %32
  %37 = getelementptr inbounds %struct.dirent* %28, i64 0, i32 5, i64 %.sum
  br label %38

; <label>:38                                      ; preds = %42, %36
  %p.0 = phi i8* [ %37, %36 ], [ %43, %42 ]
  %39 = load i8* %p.0, align 1, !tbaa !23
  switch i8 %39, label %40 [
    i8 46, label %44
    i8 0, label %.backedge
  ]

; <label>:40                                      ; preds = %38
  %41 = sext i8 %39 to i32
  %isdigittmp = add nsw i32 %41, -48
  %isdigit = icmp ult i32 %isdigittmp, 10
  br i1 %isdigit, label %42, label %.backedge

; <label>:42                                      ; preds = %40
  %43 = getelementptr inbounds i8* %p.0, i64 1
  br label %38

; <label>:44                                      ; preds = %38
  %45 = tail call i32 @strncmp(i8* %p.0, i8* getelementptr inbounds ([7 x i8]* @.str18, i64 0, i64 0), i64 6) #7
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %50

; <label>:47                                      ; preds = %44
  %48 = tail call i32 @strncmp(i8* %p.0, i8* getelementptr inbounds ([8 x i8]* @.str19, i64 0, i64 0), i64 7) #7
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %.backedge

; <label>:50                                      ; preds = %47, %44
  %51 = tail call i64 @strlen(i8* %29) #7
  %52 = trunc i64 %51 to i32
  %53 = icmp slt i32 %52, %21
  br i1 %53, label %.backedge, label %54

; <label>:54                                      ; preds = %50
  %sext1 = shl i64 %51, 32
  %55 = ashr exact i64 %sext1, 32
  %.sum3 = sub nsw i64 %55, %26
  %56 = getelementptr inbounds %struct.dirent* %28, i64 0, i32 5, i64 %.sum3
  %57 = tail call i32 @strcmp(i8* %56, i8* %fileExtension) #7
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %.backedge

; <label>:59                                      ; preds = %54
  %60 = icmp eq i32 %num_files.09, 0
  br i1 %60, label %61, label %63

; <label>:61                                      ; preds = %59
  %62 = tail call i8* @malloc(i64 16) #7
  br label %69

; <label>:63                                      ; preds = %59
  %64 = bitcast %struct.filelist_t* %filelist.010 to i8*
  %65 = add i32 %num_files.09, 1
  %66 = zext i32 %65 to i64
  %67 = shl nuw nsw i64 %66, 4
  %68 = tail call i8* @realloc(i8* %64, i64 %67) #7
  br label %69

; <label>:69                                      ; preds = %63, %61
  %tmp.0.in = phi i8* [ %62, %61 ], [ %68, %63 ]
  %tmp.0 = bitcast i8* %tmp.0.in to %struct.filelist_t*
  %70 = icmp eq i8* %tmp.0.in, null
  br i1 %70, label %71, label %75

; <label>:71                                      ; preds = %69
  %72 = tail call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 1, i32 608, i8* getelementptr inbounds ([87 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8]* @.str20, i64 0, i64 0)) #7
  br label %.backedge

.backedge:                                        ; preds = %38, %40, %71, %75, %50, %27, %32, %47, %54
  %num_files.0.be = phi i32 [ %num_files.09, %27 ], [ %num_files.09, %32 ], [ %num_files.09, %50 ], [ %num_files.09, %54 ], [ %num_files.09, %71 ], [ %86, %75 ], [ %num_files.09, %47 ], [ %num_files.09, %40 ], [ %num_files.09, %38 ]
  %filelist.0.be = phi %struct.filelist_t* [ %filelist.010, %27 ], [ %filelist.010, %32 ], [ %filelist.010, %50 ], [ %filelist.010, %54 ], [ %filelist.010, %71 ], [ %tmp.0, %75 ], [ %filelist.010, %47 ], [ %filelist.010, %40 ], [ %filelist.010, %38 ]
  %73 = tail call %struct.dirent* @"\01_readdir$INODE64"(%struct.DIR* %15) #7
  %74 = icmp eq %struct.dirent* %73, null
  br i1 %74, label %._crit_edge13, label %27

; <label>:75                                      ; preds = %69
  %76 = tail call i8* @strdup(i8* %29) #7
  %77 = zext i32 %num_files.09 to i64
  %78 = getelementptr inbounds %struct.filelist_t* %tmp.0, i64 %77, i32 0
  store i8* %76, i8** %78, align 8, !tbaa !27
  %79 = ptrtoint i8* %p.0 to i64
  %80 = ptrtoint i8* %29 to i64
  %81 = sub i64 %79, %80
  %sext4 = shl i64 %81, 32
  %82 = ashr exact i64 %sext4, 32
  %83 = getelementptr inbounds i8* %76, i64 %82
  store i8 0, i8* %83, align 1, !tbaa !23
  %84 = tail call i32 @atoi(i8* %37) #7
  %85 = getelementptr inbounds %struct.filelist_t* %tmp.0, i64 %77, i32 1
  store i32 %84, i32* %85, align 4, !tbaa !29
  %86 = add i32 %num_files.09, 1
  br label %.backedge

._crit_edge13:                                    ; preds = %.backedge, %19
  %filelist.0.lcssa = phi %struct.filelist_t* [ null, %19 ], [ %filelist.0.be, %.backedge ]
  %num_files.0.lcssa = phi i32 [ 0, %19 ], [ %num_files.0.be, %.backedge ]
  %87 = tail call i32 @"\01_closedir"(%struct.DIR* %15) #7
  %88 = tail call i32 @CCTK_Equals(i8* %1, i8* getelementptr inbounds ([5 x i8]* @.str13, i64 0, i64 0)) #7
  %89 = icmp ne i32 %88, 0
  %90 = sext i1 %89 to i32
  %91 = icmp eq i32 %num_files.0.lcssa, 0
  br i1 %91, label %105, label %.lr.ph

.lr.ph:                                           ; preds = %._crit_edge13
  %92 = bitcast %struct.filelist_t* %filelist.0.lcssa to i8*
  %93 = zext i32 %num_files.0.lcssa to i64
  tail call void @qsort(i8* %92, i64 %93, i64 16, i32 (i8*, i8*)* @CompareFiles) #7
  br label %94

; <label>:94                                      ; preds = %.lr.ph, %._crit_edge20
  %indvars.iv = phi i64 [ %93, %.lr.ph ], [ %indvars.iv.next, %._crit_edge20 ]
  %retval.08 = phi i32 [ %90, %.lr.ph ], [ %retval.1, %._crit_edge20 ]
  %95 = trunc i64 %indvars.iv to i32
  %96 = add i32 %95, -1
  %97 = icmp slt i32 %retval.08, 1
  %98 = zext i32 %96 to i64
  %99 = getelementptr inbounds %struct.filelist_t* %filelist.0.lcssa, i64 %98, i32 0
  br i1 %97, label %100, label %._crit_edge20

; <label>:100                                     ; preds = %94
  %101 = load i8** %99, align 8, !tbaa !27
  %102 = tail call i32 %recoverFn(%struct.cGH* null, i8* %101, i32 2) #7
  br label %._crit_edge20

._crit_edge20:                                    ; preds = %94, %100
  %retval.1 = phi i32 [ %102, %100 ], [ %retval.08, %94 ]
  %103 = load i8** %99, align 8, !tbaa !27
  tail call void @free(i8* %103) #8
  %104 = icmp eq i32 %96, 0
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  br i1 %104, label %._crit_edge, label %94

._crit_edge:                                      ; preds = %._crit_edge20
  tail call void @free(i8* %92) #8
  br label %110

; <label>:105                                     ; preds = %._crit_edge13
  %106 = select i1 %89, i32 1, i32 3
  %107 = tail call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 %106, i32 645, i8* getelementptr inbounds ([87 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([79 x i8]* @.str21, i64 0, i64 0), i8* %fileType, i8* %2, i8* %3) #7
  br label %110

; <label>:108                                     ; preds = %7
  %109 = tail call i32 %recoverFn(%struct.cGH* null, i8* %2, i32 2) #7
  br label %110

; <label>:110                                     ; preds = %._crit_edge, %105, %108
  %retval.2 = phi i32 [ %retval.1, %._crit_edge ], [ %90, %105 ], [ %109, %108 ]
  %111 = icmp slt i32 %retval.2, 0
  br i1 %111, label %112, label %114

; <label>:112                                     ; preds = %110
  %113 = tail call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 1, i32 669, i8* getelementptr inbounds ([87 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([106 x i8]* @.str22, i64 0, i64 0), i8* %fileType, i8* %2, i8* %3) #7
  br label %114

; <label>:114                                     ; preds = %112, %110
  %115 = icmp sgt i32 %retval.2, 0
  %116 = zext i1 %115 to i32
  store i32 %116, i32* @checkpoint_file_exists, align 4, !tbaa !6
  br label %117

; <label>:117                                     ; preds = %114, %17
  %.0 = phi i32 [ %retval.2, %114 ], [ -2, %17 ]
  ret i32 %.0
}

; Function Attrs: optsize
declare i32 @CCTK_Equals(i8*, i8*) #2

; Function Attrs: optsize
declare %struct.DIR* @"\01_opendir$INODE64"(i8*) #2

; Function Attrs: optsize
declare %struct.dirent* @"\01_readdir$INODE64"(%struct.DIR*) #2

; Function Attrs: nounwind optsize readonly
declare i32 @strncmp(i8* nocapture, i8* nocapture, i64) #5

; Function Attrs: nounwind optsize readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) #5

; Function Attrs: nounwind optsize
declare noalias i8* @malloc(i64) #4

; Function Attrs: nounwind optsize
declare noalias i8* @realloc(i8* nocapture, i64) #4

; Function Attrs: nounwind optsize readonly
declare i32 @atoi(i8* nocapture) #5

; Function Attrs: optsize
declare i32 @"\01_closedir"(%struct.DIR*) #2

; Function Attrs: optsize
declare void @qsort(i8*, i64, i64, i32 (i8*, i8*)* nocapture) #2

; Function Attrs: nounwind optsize readonly ssp uwtable
define internal i32 @CompareFiles(i8* nocapture readonly %a, i8* nocapture readonly %b) #6 {
  %1 = getelementptr inbounds i8* %a, i64 8
  %2 = bitcast i8* %1 to i32*
  %3 = load i32* %2, align 4, !tbaa !29
  %4 = getelementptr inbounds i8* %b, i64 8
  %5 = bitcast i8* %4 to i32*
  %6 = load i32* %5, align 4, !tbaa !29
  %7 = sub nsw i32 %3, %6
  ret i32 %7
}

; Function Attrs: nounwind optsize ssp uwtable
define i8* @IOUtil_GetAllParameters(%struct.cGH* nocapture readnone %GH) #1 {
  %param = alloca i8*, align 8
  %pdata = alloca %struct.PARAM_PROPS*, align 8
  %1 = tail call i32 @CCTK_NumCompiledThorns() #7
  br label %.outer.outer

.outer.outer:                                     ; preds = %46, %0
  %maxLen.0.ph.ph = phi i32 [ 0, %0 ], [ %maxLen.3, %46 ]
  %parameters.0.ph.ph = phi i8* [ null, %0 ], [ %parameters.3, %46 ]
  %currentLen.0.ph.ph = phi i32 [ 0, %0 ], [ %currentLen.2, %46 ]
  %i.0.in.ph.ph = phi i32 [ %1, %0 ], [ %i.0, %46 ]
  br label %.outer

.outer:                                           ; preds = %.preheader, %.outer.outer, %3
  %i.0.in = phi i32 [ %i.0, %3 ], [ %i.0, %.preheader ], [ %i.0.in.ph.ph, %.outer.outer ]
  %i.0 = add nsw i32 %i.0.in, -1
  %2 = icmp sgt i32 %i.0.in, 0
  br i1 %2, label %3, label %50

; <label>:3                                       ; preds = %.outer
  %4 = call i8* @CCTK_CompiledThorn(i32 %i.0) #7
  %5 = call i32 @CCTK_IsThornActive(i8* %4) #7
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %.outer, label %.preheader

.preheader:                                       ; preds = %3
  %7 = call i32 @CCTK_ParameterWalk(i32 1, i8* %4, i8** %param, %struct.PARAM_PROPS** %pdata) #7
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %.lr.ph, label %.outer

.lr.ph:                                           ; preds = %.preheader, %46
  %currentLen.14 = phi i32 [ %currentLen.2, %46 ], [ %currentLen.0.ph.ph, %.preheader ]
  %parameters.13 = phi i8* [ %parameters.3, %46 ], [ %parameters.0.ph.ph, %.preheader ]
  %maxLen.12 = phi i32 [ %maxLen.3, %46 ], [ %maxLen.0.ph.ph, %.preheader ]
  %9 = load %struct.PARAM_PROPS** %pdata, align 8, !tbaa !2
  %10 = getelementptr inbounds %struct.PARAM_PROPS* %9, i64 0, i32 7
  %11 = load i32* %10, align 4, !tbaa !30
  %12 = icmp sgt i32 %11, 0
  br i1 %12, label %13, label %46

; <label>:13                                      ; preds = %.lr.ph
  %14 = getelementptr inbounds %struct.PARAM_PROPS* %9, i64 0, i32 0
  %15 = load i8** %14, align 8, !tbaa !32
  %16 = getelementptr inbounds %struct.PARAM_PROPS* %9, i64 0, i32 1
  %17 = load i8** %16, align 8, !tbaa !33
  %18 = call i8* @CCTK_ParameterValString(i8* %15, i8* %17) #7
  %19 = icmp eq i8* %18, null
  %20 = load i8** %param, align 8, !tbaa !2
  br i1 %19, label %21, label %23

; <label>:21                                      ; preds = %13
  %22 = call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 2, i32 741, i8* getelementptr inbounds ([87 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([38 x i8]* @.str23, i64 0, i64 0), i8* %20) #7
  br label %46

; <label>:23                                      ; preds = %13
  %24 = call i64 @strlen(i8* %20) #7
  %25 = call i64 @strlen(i8* %18) #7
  %26 = add i64 %24, 5
  %27 = add i64 %26, %25
  %28 = trunc i64 %27 to i32
  %29 = add nsw i32 %28, %currentLen.14
  %30 = icmp slt i32 %29, %maxLen.12
  br i1 %30, label %38, label %31

; <label>:31                                      ; preds = %23
  %32 = add nsw i32 %maxLen.12, 1024
  %33 = sext i32 %32 to i64
  %34 = call i8* @realloc(i8* %parameters.13, i64 %33) #7
  %35 = icmp eq i8* %34, null
  br i1 %35, label %36, label %38

; <label>:36                                      ; preds = %31
  %37 = call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 0, i32 755, i8* getelementptr inbounds ([87 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([38 x i8]* @.str24, i64 0, i64 0), i32 %32) #7
  br label %38

; <label>:38                                      ; preds = %36, %31, %23
  %maxLen.2 = phi i32 [ %maxLen.12, %23 ], [ %32, %31 ], [ %32, %36 ]
  %parameters.2 = phi i8* [ %parameters.13, %23 ], [ %34, %31 ], [ null, %36 ]
  %39 = sext i32 %currentLen.14 to i64
  %40 = getelementptr inbounds i8* %parameters.2, i64 %39
  %41 = call i64 @llvm.objectsize.i64.p0i8(i8* %40, i1 false)
  %42 = load i8** %param, align 8, !tbaa !2
  %43 = call i32 (i8*, i32, i64, i8*, ...)* @__sprintf_chk(i8* %40, i32 0, i64 %41, i8* getelementptr inbounds ([9 x i8]* @.str25, i64 0, i64 0), i8* %42, i8* %18) #7
  %44 = add i32 %currentLen.14, -1
  %45 = add i32 %44, %28
  call void @free(i8* %18) #8
  br label %46

; <label>:46                                      ; preds = %21, %38, %.lr.ph
  %maxLen.3 = phi i32 [ %maxLen.12, %21 ], [ %maxLen.2, %38 ], [ %maxLen.12, %.lr.ph ]
  %parameters.3 = phi i8* [ %parameters.13, %21 ], [ %parameters.2, %38 ], [ %parameters.13, %.lr.ph ]
  %currentLen.2 = phi i32 [ %currentLen.14, %21 ], [ %45, %38 ], [ %currentLen.14, %.lr.ph ]
  %47 = load i8** %param, align 8, !tbaa !2
  call void @free(i8* %47) #8
  %48 = call i32 @CCTK_ParameterWalk(i32 0, i8* %4, i8** %param, %struct.PARAM_PROPS** %pdata) #7
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %.lr.ph, label %.outer.outer

; <label>:50                                      ; preds = %.outer
  ret i8* %parameters.0.ph.ph
}

; Function Attrs: optsize
declare i32 @CCTK_NumCompiledThorns() #2

; Function Attrs: optsize
declare i8* @CCTK_CompiledThorn(i32) #2

; Function Attrs: optsize
declare i32 @CCTK_IsThornActive(i8*) #2

; Function Attrs: optsize
declare i32 @CCTK_ParameterWalk(i32, i8*, i8**, %struct.PARAM_PROPS**) #2

; Function Attrs: optsize
declare i8* @CCTK_ParameterValString(i8*, i8*) #2

; Function Attrs: nounwind optsize ssp uwtable
define void @IOUtil_SetAllParameters(i8* nocapture readonly %parameters) #1 {
  %name = alloca i8*, align 8
  %thorn_impl = alloca i8*, align 8
  %1 = load i32* getelementptr inbounds (%struct.anon* @iorest_, i64 0, i32 50), align 4, !tbaa !21
  %2 = tail call i8* @strdup(i8* %parameters) #7
  %3 = load i8* %2, align 1, !tbaa !23
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %._crit_edge, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %0
  %5 = icmp eq i32 %1, 0
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %51
  %6 = phi i8 [ %3, %.preheader.lr.ph ], [ %52, %51 ]
  %parameter_string.02 = phi i8* [ %2, %.preheader.lr.ph ], [ %.nextparam.0, %51 ]
  %7 = icmp eq i8 %6, 10
  %8 = icmp ne i8 %6, 0
  %not.7 = xor i1 %7, true
  %.8 = and i1 %8, %not.7
  %9 = getelementptr inbounds i8* %parameter_string.02, i64 1
  br i1 %.8, label %._crit_edge4, label %._crit_edge9

._crit_edge4:                                     ; preds = %.preheader, %._crit_edge4
  %10 = phi i8* [ %11, %._crit_edge4 ], [ %parameter_string.02, %.preheader ]
  %11 = phi i8* [ %14, %._crit_edge4 ], [ %9, %.preheader ]
  %.pre = load i8* %11, align 1, !tbaa !23
  %12 = icmp eq i8 %.pre, 10
  %13 = icmp ne i8 %.pre, 0
  %not. = xor i1 %12, true
  %. = and i1 %13, %not.
  %14 = getelementptr inbounds i8* %10, i64 2
  br i1 %., label %._crit_edge4, label %._crit_edge9

._crit_edge9:                                     ; preds = %._crit_edge4, %.preheader
  %.lcssa6 = phi i8* [ %9, %.preheader ], [ %14, %._crit_edge4 ]
  %.lcssa5 = phi i1 [ %7, %.preheader ], [ %12, %._crit_edge4 ]
  %nextparam.0.lcssa = phi i8* [ %parameter_string.02, %.preheader ], [ %11, %._crit_edge4 ]
  %.lcssa = phi i8 [ %6, %.preheader ], [ %.pre, %._crit_edge4 ]
  store i8 0, i8* %nextparam.0.lcssa, align 1, !tbaa !23
  br label %15

; <label>:15                                      ; preds = %15, %._crit_edge9
  %tmp.0 = phi i8* [ %parameter_string.02, %._crit_edge9 ], [ %18, %15 ]
  %16 = load i8* %tmp.0, align 1, !tbaa !23
  %17 = icmp eq i8 %16, 32
  %18 = getelementptr inbounds i8* %tmp.0, i64 1
  br i1 %17, label %19, label %15

; <label>:19                                      ; preds = %15
  store i8 0, i8* %tmp.0, align 1, !tbaa !23
  %20 = getelementptr inbounds i8* %tmp.0, i64 3
  store i8* null, i8** %thorn_impl, align 8, !tbaa !2
  store i8* null, i8** %name, align 8, !tbaa !2
  %21 = call i32 @Util_SplitString(i8** %thorn_impl, i8** %name, i8* %parameter_string.02, i8* getelementptr inbounds ([3 x i8]* @.str26, i64 0, i64 0)) #7
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %51

; <label>:23                                      ; preds = %19
  %24 = load i8** %thorn_impl, align 8, !tbaa !2
  %25 = call i32 @CCTK_IsImplementationActive(i8* %24) #7
  %26 = icmp eq i32 %25, 0
  %27 = load i8** %thorn_impl, align 8, !tbaa !2
  br i1 %26, label %30, label %28

; <label>:28                                      ; preds = %23
  %29 = call i8* @CCTK_ImplementationThorn(i8* %27) #7
  br label %30

; <label>:30                                      ; preds = %23, %28
  %31 = phi i8* [ %29, %28 ], [ %27, %23 ]
  %32 = call i32 @CCTK_IsThornActive(i8* %31) #7
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %40, label %34

; <label>:34                                      ; preds = %30
  %35 = load i8** %name, align 8, !tbaa !2
  %36 = call i32 @CCTK_ParameterSet(i8* %35, i8* %31, i8* %20) #7
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %43

; <label>:38                                      ; preds = %34
  %39 = call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 2, i32 833, i8* getelementptr inbounds ([87 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([36 x i8]* @.str27, i64 0, i64 0), i8* %parameter_string.02, i8* %20) #7
  br label %43

; <label>:40                                      ; preds = %30
  br i1 %5, label %43, label %41

; <label>:41                                      ; preds = %40
  %42 = call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 2, i32 838, i8* getelementptr inbounds ([87 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([46 x i8]* @.str28, i64 0, i64 0), i8* %parameter_string.02) #7
  br label %43

; <label>:43                                      ; preds = %40, %41, %34, %38
  %44 = load i8** %name, align 8, !tbaa !2
  %45 = icmp eq i8* %44, null
  br i1 %45, label %47, label %46

; <label>:46                                      ; preds = %43
  call void @free(i8* %44) #8
  br label %47

; <label>:47                                      ; preds = %43, %46
  %48 = load i8** %thorn_impl, align 8, !tbaa !2
  %49 = icmp eq i8* %48, null
  br i1 %49, label %51, label %50

; <label>:50                                      ; preds = %47
  call void @free(i8* %48) #8
  br label %51

; <label>:51                                      ; preds = %47, %50, %19
  store i8 %.lcssa, i8* %nextparam.0.lcssa, align 1, !tbaa !23
  %.nextparam.0 = select i1 %.lcssa5, i8* %.lcssa6, i8* %nextparam.0.lcssa
  %52 = load i8* %.nextparam.0, align 1, !tbaa !23
  %53 = icmp eq i8 %52, 0
  br i1 %53, label %._crit_edge, label %.preheader

._crit_edge:                                      ; preds = %51, %0
  call void @free(i8* %2) #8
  ret void
}

; Function Attrs: optsize
declare i32 @Util_SplitString(i8**, i8**, i8*, i8*) #2

; Function Attrs: optsize
declare i32 @CCTK_IsImplementationActive(i8*) #2

; Function Attrs: optsize
declare i8* @CCTK_ImplementationThorn(i8*) #2

; Function Attrs: optsize
declare i32 @CCTK_ParameterSet(i8*, i8*, i8*) #2

; Function Attrs: nounwind optsize ssp uwtable
define i32 @IOUtil_RestartFromRecovery(%struct.cGH* %GH) #1 {
  %1 = tail call i8* @CCTK_GHExtension(%struct.cGH* %GH, i8* getelementptr inbounds ([3 x i8]* @.str9, i64 0, i64 0)) #7
  %2 = icmp eq i8* %1, null
  br i1 %2, label %7, label %3

; <label>:3                                       ; preds = %0
  %4 = getelementptr inbounds i8* %1, i64 28
  %5 = bitcast i8* %4 to i32*
  %6 = load i32* %5, align 4, !tbaa !19
  br label %7

; <label>:7                                       ; preds = %0, %3
  %8 = phi i32 [ %6, %3 ], [ 0, %0 ]
  ret i32 %8
}

; Function Attrs: optsize
declare i8* @Util_GetHandledData(%struct.cHandledData*, i32) #2

; Function Attrs: optsize
declare i32 @__maskrune(i32, i64) #2

attributes #0 = { nounwind optsize readnone ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }
attributes #4 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind optsize readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind optsize readonly ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind optsize }
attributes #8 = { optsize }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!2 = !{!3, !3, i64 0}
!3 = !{!"any pointer", !4, i64 0}
!4 = !{!"omnipotent char", !5, i64 0}
!5 = !{!"Simple C/C++ TBAA"}
!6 = !{!7, !7, i64 0}
!7 = !{!"int", !4, i64 0}
!8 = !{!9, !3, i64 80}
!9 = !{!"", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !10, i64 40, !10, i64 48, !10, i64 56, !10, i64 64, !3, i64 72, !3, i64 80, !3, i64 88, !3, i64 96, !3, i64 104, !3, i64 112, !3, i64 120, !3, i64 128, !3, i64 136, !3, i64 144, !3, i64 152, !3, i64 160, !3, i64 168, !3, i64 176, !7, i64 184, !7, i64 188, !7, i64 192, !7, i64 196, !7, i64 200, !7, i64 204, !7, i64 208, !7, i64 212, !7, i64 216, !7, i64 220, !7, i64 224, !7, i64 228, !7, i64 232, !7, i64 236, !7, i64 240, !7, i64 244, !7, i64 248, !7, i64 252, !7, i64 256, !7, i64 260, !7, i64 264, !7, i64 268, !7, i64 272, !7, i64 276, !7, i64 280, !7, i64 284, !7, i64 288, !7, i64 292}
!10 = !{!"double", !4, i64 0}
!11 = !{!9, !3, i64 168}
!12 = !{!9, !3, i64 176}
!13 = !{!9, !3, i64 72}
!14 = !{!9, !3, i64 88}
!15 = !{!16, !3, i64 96}
!16 = !{!"", !7, i64 0, !7, i64 4, !3, i64 8, !3, i64 16, !3, i64 24, !3, i64 32, !3, i64 40, !3, i64 48, !3, i64 56, !10, i64 64, !3, i64 72, !3, i64 80, !3, i64 88, !3, i64 96, !7, i64 104, !3, i64 112, !10, i64 120, !3, i64 128, !3, i64 136, !3, i64 144}
!17 = !{!16, !7, i64 104}
!18 = !{!16, !7, i64 4}
!19 = !{!20, !7, i64 28}
!20 = !{!"IOGH", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !3, i64 16, !7, i64 24, !7, i64 28, !3, i64 32}
!21 = !{!9, !7, i64 292}
!22 = !{!20, !3, i64 32}
!23 = !{!4, !4, i64 0}
!24 = !{!9, !3, i64 152}
!25 = !{!9, !3, i64 160}
!26 = !{!9, !3, i64 144}
!27 = !{!28, !3, i64 0}
!28 = !{!"", !3, i64 0, !7, i64 8}
!29 = !{!28, !7, i64 8}
!30 = !{!31, !7, i64 56}
!31 = !{!"PARAM_PROPS", !3, i64 0, !3, i64 8, !7, i64 16, !3, i64 24, !3, i64 32, !7, i64 40, !3, i64 48, !7, i64 56, !7, i64 60}
!32 = !{!31, !3, i64 0}
!33 = !{!31, !3, i64 8}
