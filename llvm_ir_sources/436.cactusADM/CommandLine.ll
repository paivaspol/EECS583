; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/Cactus/CommandLine.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.cGH = type { i32, i32, i32*, i32*, i32*, i32*, i32*, i32*, i32*, double, double*, double*, i32*, i32*, i32, i32*, double, i8***, i8**, %struct.cGHGroupData* }
%struct.cGHGroupData = type { i8, i8 }
%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }
%struct.PARAM_PROPS = type { i8*, i8*, i32, i8*, i8*, i32, %struct.RANGE*, i32, i32 }
%struct.RANGE = type { %struct.RANGE*, %struct.RANGE*, i8*, i8*, i32, i8* }

@CCTK_MyProc = external global i32 (%struct.cGH*)*
@.str = private unnamed_addr constant [25 x i8] c"Thorn '%s' %savailable.\0A\00", align 1
@.str1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str2 = private unnamed_addr constant [3 x i8] c"un\00", align 1
@CCTK_Exit = external global i32 (%struct.cGH*, i32)*
@.str3 = private unnamed_addr constant [58 x i8] c"\0AParameters of thorn '%s' providing implementation '%s':\0A\00", align 1
@__stderrp = external global %struct.__sFILE*
@.str4 = private unnamed_addr constant [29 x i8] c"Unknown verbosity option %s\0A\00", align 1
@.str6 = private unnamed_addr constant [3 x i8] c"::\00", align 1
@paramchecking = internal unnamed_addr global i1 false
@cctki_paramchecking = common global i32 0, align 4
@cctki_paramcheck_nprocs = common global i32 0, align 4
@.str7 = private unnamed_addr constant [7 x i8] c"strict\00", align 1
@.str8 = private unnamed_addr constant [7 x i8] c"normal\00", align 1
@.str9 = private unnamed_addr constant [8 x i8] c"relaxed\00", align 1
@.str10 = private unnamed_addr constant [80 x i8] c"../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/Cactus/CommandLine.c\00", align 1
@.str11 = private unnamed_addr constant [7 x i8] c"Cactus\00", align 1
@.str12 = private unnamed_addr constant [100 x i8] c"CCTKi_CommandLineParameterLevel: Parameter checking level '%s' not recognized, defaulting to normal\00", align 1
@redirectsubs = internal unnamed_addr global i1 false
@__stdoutp = external global %struct.__sFILE*
@.str14 = private unnamed_addr constant [6 x i8] c"  %s\0A\00", align 1
@.str16 = private unnamed_addr constant [39 x i8] c"%s: Version %s.  Compiled on %s at %s\0A\00", align 1
@.str17 = private unnamed_addr constant [1033 x i8] c"-h, -help                           : gets this help.\0A-O, -describe-all-parameters        : describes all the parameters.\0A-o, -describe-parameter <paramname> : describe the given parameter.\0A-x, -test-parameters [nprocs]       : does a quick test of the parameter file\0A                                      pretending to be on nprocs processors, \0A                                      or 1 if not given.\0A-W, -warning-level <n>              : Sets the warning level to n.\0A-E, -error-level <n>                : Sets the error level to n.\0A-r, -redirect-stdout                : Redirects standard output to files.\0A-T, -list-thorns                    : Lists the compiled-in thorns.\0A-t, -test-thorn-compiled <name>     : Tests for the presence of thorn <name>.\0A    -parameter-level <level>        : Sets the amount of parameter checking, \0A                                      level can be script, normal, relaxed.\0A-v, -version                        : Prints the version.\0A-i, -ignore-next                    : Ignores the next argument.\0A\00", align 1
@.str18 = private unnamed_addr constant [26 x i8] c"%s, compiled on %s at %s\0A\00", align 1
@.str19 = private unnamed_addr constant [14 x i8] c"Usage: %s %s\0A\00", align 1
@.str20 = private unnamed_addr constant [127 x i8] c"[-h] [-O] [-o paramname] [-x [nprocs]] [-W n] [-E n] [-r] [-T] [-t name] [-parameter-level <level>] [-v] <parameter_file_name>\00", align 1
@.str21 = private unnamed_addr constant [19 x i8] c"\0AValid options:\0A%s\00", align 1
@.str22 = private unnamed_addr constant [16 x i8] c"CCTK_Proc%d.out\00", align 1
@.str23 = private unnamed_addr constant [10 x i8] c"/dev/null\00", align 1
@.str24 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str25 = private unnamed_addr constant [86 x i8] c"$Header: /cactus/Cactus/src/main/CommandLine.c,v 1.47 2002/01/06 12:24:41 allen Exp $\00", align 1
@.str26 = private unnamed_addr constant [20 x i8] c"Parameter:   %s::%s\00", align 1
@.str27 = private unnamed_addr constant [9 x i8] c", %s::%s\00", align 1
@.str29 = private unnamed_addr constant [19 x i8] c"Description: \22%s\22\0A\00", align 1
@.str30 = private unnamed_addr constant [17 x i8] c"Type:        %s\0A\00", align 1
@cctk_parameter_type_names = internal unnamed_addr constant [6 x i8*] [i8* getelementptr inbounds ([8 x i8]* @.str36, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @.str37, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @.str38, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8]* @.str39, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @.str40, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8]* @.str41, i32 0, i32 0)], align 16
@.str31 = private unnamed_addr constant [17 x i8] c"Default:     %s\0A\00", align 1
@.str32 = private unnamed_addr constant [17 x i8] c"Scope:       %s\0A\00", align 1
@cctk_parameter_scopes = internal unnamed_addr constant [5 x i8*] [i8* getelementptr inbounds ([7 x i8]* @.str42, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8]* @.str43, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8]* @.str44, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8]* @.str45, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @.str46, i32 0, i32 0)], align 16
@.str33 = private unnamed_addr constant [17 x i8] c"  Range:     %s\0A\00", align 1
@.str34 = private unnamed_addr constant [21 x i8] c"    Origin:      %s\0A\00", align 1
@.str35 = private unnamed_addr constant [21 x i8] c"    Description: %s\0A\00", align 1
@.str36 = private unnamed_addr constant [8 x i8] c"KEYWORD\00", align 1
@.str37 = private unnamed_addr constant [7 x i8] c"STRING\00", align 1
@.str38 = private unnamed_addr constant [9 x i8] c"SENTENCE\00", align 1
@.str39 = private unnamed_addr constant [8 x i8] c"INTEGER\00", align 1
@.str40 = private unnamed_addr constant [5 x i8] c"REAL\00", align 1
@.str41 = private unnamed_addr constant [8 x i8] c"BOOLEAN\00", align 1
@.str42 = private unnamed_addr constant [7 x i8] c"GLOBAL\00", align 1
@.str43 = private unnamed_addr constant [11 x i8] c"RESTRICTED\00", align 1
@.str44 = private unnamed_addr constant [8 x i8] c"PRIVATE\00", align 1
@.str45 = private unnamed_addr constant [11 x i8] c"NOT GLOBAL\00", align 1
@.str46 = private unnamed_addr constant [4 x i8] c"ANY\00", align 1
@str = private unnamed_addr constant [45 x i8] c"\0A---------------Compiled Thorns-------------\00"
@str47 = private unnamed_addr constant [45 x i8] c"-------------------------------------------\0A\00"

; Function Attrs: nounwind optsize readnone ssp uwtable
define i8* @CCTKi_version_main_CommandLine_c() #0 {
  ret i8* getelementptr inbounds ([86 x i8]* @.str25, i64 0, i64 0)
}

; Function Attrs: nounwind optsize ssp uwtable
define void @CCTKi_CommandLineTestThornCompiled(i8* %argument) #1 {
  %1 = tail call i32 @CCTK_IsThornCompiled(i8* %argument) #5
  %2 = load i32 (%struct.cGH*)** @CCTK_MyProc, align 8, !tbaa !2
  %3 = tail call i32 %2(%struct.cGH* null) #5
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %9

; <label>:5                                       ; preds = %0
  %6 = icmp ne i32 %1, 0
  %7 = select i1 %6, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8]* @.str2, i64 0, i64 0)
  %8 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([25 x i8]* @.str, i64 0, i64 0), i8* %argument, i8* %7) #5
  br label %9

; <label>:9                                       ; preds = %5, %0
  %10 = load i32 (%struct.cGH*, i32)** @CCTK_Exit, align 8, !tbaa !2
  %11 = tail call i32 %10(%struct.cGH* null, i32 %1) #5
  ret void
}

; Function Attrs: optsize
declare i32 @CCTK_IsThornCompiled(i8*) #2

; Function Attrs: nounwind optsize
declare i32 @printf(i8* nocapture readonly, ...) #3

; Function Attrs: nounwind optsize ssp uwtable
define void @CCTKi_CommandLineDescribeAllParameters(i8* %argument) #1 {
  %param = alloca i8*, align 8
  %properties = alloca %struct.PARAM_PROPS*, align 8
  %1 = load i32 (%struct.cGH*)** @CCTK_MyProc, align 8, !tbaa !2
  %2 = tail call i32 %1(%struct.cGH* null) #5
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %.loopexit

; <label>:4                                       ; preds = %0
  %5 = tail call i32 @CCTK_NumCompiledThorns() #5
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %.lr.ph3, label %.loopexit

.lr.ph3:                                          ; preds = %4
  %7 = icmp eq i8* %argument, null
  %8 = add i32 %5, -1
  br label %9

; <label>:9                                       ; preds = %._crit_edge, %.lr.ph3
  %thorn.01 = phi i32 [ 0, %.lr.ph3 ], [ %30, %._crit_edge ]
  %10 = call i8* @CCTK_CompiledThorn(i32 %thorn.01) #5
  %11 = call i8* @CCTK_ThornImplementation(i8* %10) #5
  %12 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([58 x i8]* @.str3, i64 0, i64 0), i8* %10, i8* %11) #5
  %13 = call i32 @CCTK_ParameterWalk(i32 1, i8* %10, i8** %param, %struct.PARAM_PROPS** %properties) #5
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %9, %26
  br i1 %7, label %24, label %15

; <label>:15                                      ; preds = %.lr.ph
  %16 = load i8* %argument, align 1, !tbaa !6
  %cond = icmp eq i8 %16, 118
  br i1 %cond, label %17, label %19

; <label>:17                                      ; preds = %15
  %18 = load %struct.PARAM_PROPS** %properties, align 8, !tbaa !2
  call fastcc void @CommandLinePrintParameter(%struct.PARAM_PROPS* %18) #6
  br label %26

; <label>:19                                      ; preds = %15
  %20 = load %struct.__sFILE** @__stderrp, align 8, !tbaa !2
  %21 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %20, i8* getelementptr inbounds ([29 x i8]* @.str4, i64 0, i64 0), i8* %argument) #5
  %22 = load i32 (%struct.cGH*, i32)** @CCTK_Exit, align 8, !tbaa !2
  %23 = call i32 %22(%struct.cGH* null, i32 2) #5
  br label %26

; <label>:24                                      ; preds = %.lr.ph
  %25 = load i8** %param, align 8, !tbaa !2
  %puts = call i32 @puts(i8* %25)
  br label %26

; <label>:26                                      ; preds = %17, %19, %24
  %27 = load i8** %param, align 8, !tbaa !2
  call void @free(i8* %27) #6
  %28 = call i32 @CCTK_ParameterWalk(i32 0, i8* %10, i8** %param, %struct.PARAM_PROPS** %properties) #5
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %26, %9
  %30 = add nuw nsw i32 %thorn.01, 1
  %exitcond = icmp eq i32 %thorn.01, %8
  br i1 %exitcond, label %.loopexit, label %9

.loopexit:                                        ; preds = %._crit_edge, %4, %0
  %31 = load i32 (%struct.cGH*, i32)** @CCTK_Exit, align 8, !tbaa !2
  %32 = call i32 %31(%struct.cGH* null, i32 0) #5
  ret void
}

; Function Attrs: optsize
declare i32 @CCTK_NumCompiledThorns() #2

; Function Attrs: optsize
declare i8* @CCTK_CompiledThorn(i32) #2

; Function Attrs: optsize
declare i8* @CCTK_ThornImplementation(i8*) #2

; Function Attrs: optsize
declare i32 @CCTK_ParameterWalk(i32, i8*, i8**, %struct.PARAM_PROPS**) #2

; Function Attrs: nounwind optsize ssp uwtable
define internal fastcc void @CommandLinePrintParameter(%struct.PARAM_PROPS* readonly %properties) #1 {
  %1 = icmp eq %struct.PARAM_PROPS* %properties, null
  br i1 %1, label %.loopexit, label %2

; <label>:2                                       ; preds = %0
  %3 = getelementptr inbounds %struct.PARAM_PROPS* %properties, i64 0, i32 1
  %4 = load i8** %3, align 8, !tbaa !7
  %5 = getelementptr inbounds %struct.PARAM_PROPS* %properties, i64 0, i32 0
  %6 = load i8** %5, align 8, !tbaa !10
  %7 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([20 x i8]* @.str26, i64 0, i64 0), i8* %4, i8* %6) #5
  %8 = getelementptr inbounds %struct.PARAM_PROPS* %properties, i64 0, i32 2
  %9 = load i32* %8, align 4, !tbaa !11
  %10 = icmp eq i32 %9, 3
  br i1 %10, label %16, label %11

; <label>:11                                      ; preds = %2
  %12 = load i8** %3, align 8, !tbaa !7
  %13 = tail call i8* @CCTK_ThornImplementation(i8* %12) #5
  %14 = load i8** %5, align 8, !tbaa !10
  %15 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([9 x i8]* @.str27, i64 0, i64 0), i8* %13, i8* %14) #5
  br label %16

; <label>:16                                      ; preds = %2, %11
  %putchar = tail call i32 @putchar(i32 10) #4
  %17 = getelementptr inbounds %struct.PARAM_PROPS* %properties, i64 0, i32 3
  %18 = load i8** %17, align 8, !tbaa !12
  %19 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([19 x i8]* @.str29, i64 0, i64 0), i8* %18) #5
  %20 = getelementptr inbounds %struct.PARAM_PROPS* %properties, i64 0, i32 5
  %21 = load i32* %20, align 4, !tbaa !13
  %22 = add nsw i32 %21, -1
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds [6 x i8*]* @cctk_parameter_type_names, i64 0, i64 %23
  %25 = load i8** %24, align 8, !tbaa !2
  %26 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([17 x i8]* @.str30, i64 0, i64 0), i8* %25) #5
  %27 = getelementptr inbounds %struct.PARAM_PROPS* %properties, i64 0, i32 4
  %28 = load i8** %27, align 8, !tbaa !14
  %29 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([17 x i8]* @.str31, i64 0, i64 0), i8* %28) #5
  %30 = load i32* %8, align 4, !tbaa !11
  %31 = add nsw i32 %30, -1
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds [5 x i8*]* @cctk_parameter_scopes, i64 0, i64 %32
  %34 = load i8** %33, align 8, !tbaa !2
  %35 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([17 x i8]* @.str32, i64 0, i64 0), i8* %34) #5
  %36 = getelementptr inbounds %struct.PARAM_PROPS* %properties, i64 0, i32 6
  %range.01 = load %struct.RANGE** %36, align 8
  %37 = icmp eq %struct.RANGE* %range.01, null
  br i1 %37, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %16, %.lr.ph
  %range.02 = phi %struct.RANGE* [ %range.0, %.lr.ph ], [ %range.01, %16 ]
  %38 = getelementptr inbounds %struct.RANGE* %range.02, i64 0, i32 2
  %39 = load i8** %38, align 8, !tbaa !15
  %40 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([17 x i8]* @.str33, i64 0, i64 0), i8* %39) #5
  %41 = getelementptr inbounds %struct.RANGE* %range.02, i64 0, i32 3
  %42 = load i8** %41, align 8, !tbaa !17
  %43 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([21 x i8]* @.str34, i64 0, i64 0), i8* %42) #5
  %44 = getelementptr inbounds %struct.RANGE* %range.02, i64 0, i32 5
  %45 = load i8** %44, align 8, !tbaa !18
  %46 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([21 x i8]* @.str35, i64 0, i64 0), i8* %45) #5
  %47 = getelementptr inbounds %struct.RANGE* %range.02, i64 0, i32 1
  %range.0 = load %struct.RANGE** %47, align 8
  %48 = icmp eq %struct.RANGE* %range.0, null
  br i1 %48, label %.loopexit, label %.lr.ph

.loopexit:                                        ; preds = %.lr.ph, %16, %0
  ret void
}

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct.__sFILE* nocapture, i8* nocapture readonly, ...) #3

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) #3

; Function Attrs: nounwind optsize ssp uwtable
define void @CCTKi_CommandLineDescribeParameter(i8* %argument) #1 {
  %thorn = alloca i8*, align 8
  %param = alloca i8*, align 8
  %1 = load i32 (%struct.cGH*)** @CCTK_MyProc, align 8, !tbaa !2
  %2 = tail call i32 %1(%struct.cGH* null) #5
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %23

; <label>:4                                       ; preds = %0
  %5 = call i32 @Util_SplitString(i8** %thorn, i8** %param, i8* %argument, i8* getelementptr inbounds ([3 x i8]* @.str6, i64 0, i64 0)) #5
  %6 = load i8** %param, align 8, !tbaa !2
  %7 = icmp eq i8* %6, null
  br i1 %7, label %8, label %10

; <label>:8                                       ; preds = %4
  %9 = call %struct.PARAM_PROPS* @CCTK_ParameterData(i8* %argument, i8* null) #5
  br label %22

; <label>:10                                      ; preds = %4
  %11 = load i8** %thorn, align 8, !tbaa !2
  %12 = call %struct.PARAM_PROPS* @CCTK_ParameterData(i8* %6, i8* %11) #5
  %13 = icmp eq %struct.PARAM_PROPS* %12, null
  br i1 %13, label %14, label %19

; <label>:14                                      ; preds = %10
  %15 = load i8** %thorn, align 8, !tbaa !2
  %16 = call i8* @CCTK_ImplementationThorn(i8* %15) #5
  %17 = load i8** %param, align 8, !tbaa !2
  %18 = call %struct.PARAM_PROPS* @CCTK_ParameterData(i8* %17, i8* %16) #5
  br label %19

; <label>:19                                      ; preds = %10, %14
  %properties.0 = phi %struct.PARAM_PROPS* [ %12, %10 ], [ %18, %14 ]
  %20 = load i8** %thorn, align 8, !tbaa !2
  call void @free(i8* %20) #6
  %21 = load i8** %param, align 8, !tbaa !2
  call void @free(i8* %21) #6
  br label %22

; <label>:22                                      ; preds = %19, %8
  %properties.1 = phi %struct.PARAM_PROPS* [ %properties.0, %19 ], [ %9, %8 ]
  call fastcc void @CommandLinePrintParameter(%struct.PARAM_PROPS* %properties.1) #6
  br label %23

; <label>:23                                      ; preds = %22, %0
  %24 = load i32 (%struct.cGH*, i32)** @CCTK_Exit, align 8, !tbaa !2
  %25 = call i32 %24(%struct.cGH* null, i32 0) #5
  ret void
}

; Function Attrs: optsize
declare i32 @Util_SplitString(i8**, i8**, i8*, i8*) #2

; Function Attrs: optsize
declare %struct.PARAM_PROPS* @CCTK_ParameterData(i8*, i8*) #2

; Function Attrs: optsize
declare i8* @CCTK_ImplementationThorn(i8*) #2

; Function Attrs: nounwind optsize ssp uwtable
define void @CCTKi_CommandLineTestParameters(i8* %argument) #1 {
  %endptr = alloca i8*, align 8
  %1 = icmp eq i8* %argument, null
  br i1 %1, label %11, label %2

; <label>:2                                       ; preds = %0
  %3 = call i64 @strtol(i8* %argument, i8** %endptr, i32 10) #5
  %4 = trunc i64 %3 to i32
  %5 = load i8** %endptr, align 8, !tbaa !2
  %6 = icmp eq i8* %5, null
  br i1 %6, label %10, label %7

; <label>:7                                       ; preds = %2
  %8 = load i8* %5, align 1, !tbaa !6
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %11, label %10

; <label>:10                                      ; preds = %2, %7
  tail call void @CCTKi_CommandLineUsage() #6
  br label %11

; <label>:11                                      ; preds = %0, %7, %10
  %nprocs.0 = phi i32 [ %4, %7 ], [ %4, %10 ], [ 1, %0 ]
  store i1 true, i1* @paramchecking, align 1
  store i32 1, i32* @cctki_paramchecking, align 4, !tbaa !19
  store i32 %nprocs.0, i32* @cctki_paramcheck_nprocs, align 4, !tbaa !19
  ret void
}

; Function Attrs: nounwind optsize
declare i64 @strtol(i8* readonly, i8** nocapture, i32) #3

; Function Attrs: nounwind optsize ssp uwtable
define void @CCTKi_CommandLineUsage() #1 {
  %argv = alloca i8**, align 8
  %1 = load i32 (%struct.cGH*)** @CCTK_MyProc, align 8, !tbaa !2
  %2 = tail call i32 %1(%struct.cGH* null) #5
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %9

; <label>:4                                       ; preds = %0
  %5 = call i32 @CCTK_CommandLine(i8*** %argv) #5
  %6 = load i8*** %argv, align 8, !tbaa !2
  %7 = load i8** %6, align 8, !tbaa !2
  %8 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([14 x i8]* @.str19, i64 0, i64 0), i8* %7, i8* getelementptr inbounds ([127 x i8]* @.str20, i64 0, i64 0)) #5
  br label %9

; <label>:9                                       ; preds = %4, %0
  %10 = load i32 (%struct.cGH*, i32)** @CCTK_Exit, align 8, !tbaa !2
  %11 = call i32 %10(%struct.cGH* null, i32 1) #5
  ret void
}

; Function Attrs: nounwind optsize ssp uwtable
define void @CCTKi_CommandLineWarningLevel(i8* %argument) #1 {
  %endptr = alloca i8*, align 8
  %1 = call i64 @strtol(i8* %argument, i8** %endptr, i32 10) #5
  %2 = load i8** %endptr, align 8, !tbaa !2
  %3 = icmp eq i8* %2, null
  br i1 %3, label %10, label %4

; <label>:4                                       ; preds = %0
  %5 = load i8* %2, align 1, !tbaa !6
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %7, label %10

; <label>:7                                       ; preds = %4
  %8 = trunc i64 %1 to i32
  %9 = tail call i32 @CCTKi_SetWarnLevel(i32 %8) #5
  br label %11

; <label>:10                                      ; preds = %0, %4
  tail call void @CCTKi_CommandLineUsage() #6
  br label %11

; <label>:11                                      ; preds = %10, %7
  ret void
}

; Function Attrs: optsize
declare i32 @CCTKi_SetWarnLevel(i32) #2

; Function Attrs: nounwind optsize ssp uwtable
define void @CCTKi_CommandLineErrorLevel(i8* %argument) #1 {
  %endptr = alloca i8*, align 8
  %1 = call i64 @strtol(i8* %argument, i8** %endptr, i32 10) #5
  %2 = load i8** %endptr, align 8, !tbaa !2
  %3 = icmp eq i8* %2, null
  br i1 %3, label %10, label %4

; <label>:4                                       ; preds = %0
  %5 = load i8* %2, align 1, !tbaa !6
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %7, label %10

; <label>:7                                       ; preds = %4
  %8 = trunc i64 %1 to i32
  %9 = tail call i32 @CCTKi_SetErrorLevel(i32 %8) #5
  br label %11

; <label>:10                                      ; preds = %0, %4
  tail call void @CCTKi_CommandLineUsage() #6
  br label %11

; <label>:11                                      ; preds = %10, %7
  ret void
}

; Function Attrs: optsize
declare i32 @CCTKi_SetErrorLevel(i32) #2

; Function Attrs: nounwind optsize ssp uwtable
define void @CCTKi_CommandLineParameterLevel(i8* %argument) #1 {
  %1 = tail call i32 @CCTK_Equals(i8* %argument, i8* getelementptr inbounds ([7 x i8]* @.str7, i64 0, i64 0)) #5
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %3, label %11

; <label>:3                                       ; preds = %0
  %4 = tail call i32 @CCTK_Equals(i8* %argument, i8* getelementptr inbounds ([7 x i8]* @.str8, i64 0, i64 0)) #5
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %11

; <label>:6                                       ; preds = %3
  %7 = tail call i32 @CCTK_Equals(i8* %argument, i8* getelementptr inbounds ([8 x i8]* @.str9, i64 0, i64 0)) #5
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %11

; <label>:9                                       ; preds = %6
  %10 = tail call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 1, i32 374, i8* getelementptr inbounds ([80 x i8]* @.str10, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str11, i64 0, i64 0), i8* getelementptr inbounds ([100 x i8]* @.str12, i64 0, i64 0), i8* %argument) #5
  br label %11

; <label>:11                                      ; preds = %6, %3, %0, %9
  %parameterlevel.0 = phi i32 [ 1, %9 ], [ 0, %0 ], [ 1, %3 ], [ 2, %6 ]
  %12 = tail call i32 @CCTKi_SetParameterLevel(i32 %parameterlevel.0) #5
  ret void
}

; Function Attrs: optsize
declare i32 @CCTK_Equals(i8*, i8*) #2

; Function Attrs: optsize
declare i32 @CCTK_VWarn(i32, i32, i8*, i8*, i8*, ...) #2

; Function Attrs: optsize
declare i32 @CCTKi_SetParameterLevel(i32) #2

; Function Attrs: nounwind optsize ssp uwtable
define void @CCTKi_CommandLineRedirectStdout() #1 {
  store i1 true, i1* @redirectsubs, align 1
  ret void
}

; Function Attrs: nounwind optsize ssp uwtable
define void @CCTKi_CommandLineListThorns() #1 {
  %1 = load i32 (%struct.cGH*)** @CCTK_MyProc, align 8, !tbaa !2
  %2 = tail call i32 %1(%struct.cGH* null) #5
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %7

; <label>:4                                       ; preds = %0
  %puts = tail call i32 @puts(i8* getelementptr inbounds ([45 x i8]* @str, i64 0, i64 0))
  %5 = load %struct.__sFILE** @__stdoutp, align 8, !tbaa !2
  %6 = tail call i32 @CCTKi_PrintThorns(%struct.__sFILE* %5, i8* getelementptr inbounds ([6 x i8]* @.str14, i64 0, i64 0), i32 0) #5
  %puts1 = tail call i32 @puts(i8* getelementptr inbounds ([45 x i8]* @str47, i64 0, i64 0))
  br label %7

; <label>:7                                       ; preds = %4, %0
  %8 = load i32 (%struct.cGH*, i32)** @CCTK_Exit, align 8, !tbaa !2
  %9 = tail call i32 %8(%struct.cGH* null, i32 1) #5
  ret void
}

; Function Attrs: optsize
declare i32 @CCTKi_PrintThorns(%struct.__sFILE*, i8*, i32) #2

; Function Attrs: nounwind optsize ssp uwtable
define void @CCTKi_CommandLineVersion() #1 {
  %argv = alloca i8**, align 8
  %1 = load i32 (%struct.cGH*)** @CCTK_MyProc, align 8, !tbaa !2
  %2 = tail call i32 %1(%struct.cGH* null) #5
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %12

; <label>:4                                       ; preds = %0
  %5 = call i32 @CCTK_CommandLine(i8*** %argv) #5
  %6 = call i8* @CCTK_FullVersion() #5
  %7 = load i8*** %argv, align 8, !tbaa !2
  %8 = load i8** %7, align 8, !tbaa !2
  %9 = call i8* @CCTK_CompileDate() #5
  %10 = call i8* @CCTK_CompileTime() #5
  %11 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([39 x i8]* @.str16, i64 0, i64 0), i8* %8, i8* %6, i8* %9, i8* %10) #5
  br label %12

; <label>:12                                      ; preds = %4, %0
  %13 = load i32 (%struct.cGH*, i32)** @CCTK_Exit, align 8, !tbaa !2
  %14 = call i32 %13(%struct.cGH* null, i32 1) #5
  ret void
}

; Function Attrs: optsize
declare i32 @CCTK_CommandLine(i8***) #2

; Function Attrs: optsize
declare i8* @CCTK_FullVersion() #2

; Function Attrs: optsize
declare i8* @CCTK_CompileDate() #2

; Function Attrs: optsize
declare i8* @CCTK_CompileTime() #2

; Function Attrs: nounwind optsize ssp uwtable
define void @CCTKi_CommandLineHelp() #1 {
  %argv = alloca i8**, align 8
  %1 = load i32 (%struct.cGH*)** @CCTK_MyProc, align 8, !tbaa !2
  %2 = tail call i32 %1(%struct.cGH* null) #5
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %15

; <label>:4                                       ; preds = %0
  %5 = call i32 @CCTK_CommandLine(i8*** %argv) #5
  %6 = load i8*** %argv, align 8, !tbaa !2
  %7 = load i8** %6, align 8, !tbaa !2
  %8 = call i8* @CCTK_CompileDate() #5
  %9 = call i8* @CCTK_CompileTime() #5
  %10 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([26 x i8]* @.str18, i64 0, i64 0), i8* %7, i8* %8, i8* %9) #5
  %11 = load i8*** %argv, align 8, !tbaa !2
  %12 = load i8** %11, align 8, !tbaa !2
  %13 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([14 x i8]* @.str19, i64 0, i64 0), i8* %12, i8* getelementptr inbounds ([127 x i8]* @.str20, i64 0, i64 0)) #5
  %14 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([19 x i8]* @.str21, i64 0, i64 0), i8* getelementptr inbounds ([1033 x i8]* @.str17, i64 0, i64 0)) #5
  br label %15

; <label>:15                                      ; preds = %4, %0
  %16 = load i32 (%struct.cGH*, i32)** @CCTK_Exit, align 8, !tbaa !2
  %17 = call i32 %16(%struct.cGH* null, i32 1) #5
  ret void
}

; Function Attrs: nounwind optsize ssp uwtable
define void @CCTKi_CommandLineFinished() #1 {
  %fname = alloca [256 x i8], align 16
  %1 = getelementptr inbounds [256 x i8]* %fname, i64 0, i64 0
  call void @llvm.lifetime.start(i64 256, i8* %1) #4
  %.b = load i1* @paramchecking, align 1
  br i1 %.b, label %3, label %2

; <label>:2                                       ; preds = %0
  store i32 0, i32* @cctki_paramchecking, align 4, !tbaa !19
  br label %3

; <label>:3                                       ; preds = %2, %0
  %4 = load i32 (%struct.cGH*)** @CCTK_MyProc, align 8, !tbaa !2
  %5 = tail call i32 %4(%struct.cGH* null) #5
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %15, label %7

; <label>:7                                       ; preds = %3
  %.b1 = load i1* @redirectsubs, align 1
  br i1 %.b1, label %8, label %10

; <label>:8                                       ; preds = %7
  %9 = call i32 (i8*, i32, i64, i8*, ...)* @__sprintf_chk(i8* %1, i32 0, i64 256, i8* getelementptr inbounds ([16 x i8]* @.str22, i64 0, i64 0), i32 %5) #5
  br label %12

; <label>:10                                      ; preds = %7
  %11 = call i32 (i8*, i32, i64, i8*, ...)* @__sprintf_chk(i8* %1, i32 0, i64 256, i8* getelementptr inbounds ([10 x i8]* @.str23, i64 0, i64 0)) #5
  br label %12

; <label>:12                                      ; preds = %10, %8
  %13 = load %struct.__sFILE** @__stdoutp, align 8, !tbaa !2
  %14 = call %struct.__sFILE* @"\01_freopen"(i8* %1, i8* getelementptr inbounds ([2 x i8]* @.str24, i64 0, i64 0), %struct.__sFILE* %13) #5
  br label %15

; <label>:15                                      ; preds = %3, %12
  call void @llvm.lifetime.end(i64 256, i8* %1) #4
  ret void
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #4

; Function Attrs: optsize
declare i32 @__sprintf_chk(i8*, i32, i64, i8*, ...) #2

; Function Attrs: optsize
declare %struct.__sFILE* @"\01_freopen"(i8*, i8*, %struct.__sFILE*) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #4

; Function Attrs: nounwind
declare i32 @puts(i8* nocapture readonly) #4

; Function Attrs: nounwind
declare i32 @putchar(i32) #4

attributes #0 = { nounwind optsize readnone ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind optsize }
attributes #6 = { optsize }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!2 = !{!3, !3, i64 0}
!3 = !{!"any pointer", !4, i64 0}
!4 = !{!"omnipotent char", !5, i64 0}
!5 = !{!"Simple C/C++ TBAA"}
!6 = !{!4, !4, i64 0}
!7 = !{!8, !3, i64 8}
!8 = !{!"PARAM_PROPS", !3, i64 0, !3, i64 8, !9, i64 16, !3, i64 24, !3, i64 32, !9, i64 40, !3, i64 48, !9, i64 56, !9, i64 60}
!9 = !{!"int", !4, i64 0}
!10 = !{!8, !3, i64 0}
!11 = !{!8, !9, i64 16}
!12 = !{!8, !3, i64 24}
!13 = !{!8, !9, i64 40}
!14 = !{!8, !3, i64 32}
!15 = !{!16, !3, i64 16}
!16 = !{!"RANGE", !3, i64 0, !3, i64 8, !3, i64 16, !3, i64 24, !9, i64 32, !3, i64 40}
!17 = !{!16, !3, i64 24}
!18 = !{!16, !3, i64 40}
!19 = !{!9, !9, i64 0}
