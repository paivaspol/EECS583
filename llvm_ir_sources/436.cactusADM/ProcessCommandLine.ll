; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/Cactus/ProcessCommandLine.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.option = type { i8*, i32, i32*, i32 }
%struct.tFleshConfig = type { i8*, %struct.cGH**, i32 }
%struct.cGH = type { i32, i32, i32*, i32*, i32*, i32*, i32*, i32*, i32*, double, double*, double*, i32*, i32*, i32, i32*, double, i8***, i8**, %struct.cGHGroupData* }
%struct.cGHGroupData = type { i8, i8 }

@argc = internal unnamed_addr global i32 0, align 4
@argv = internal unnamed_addr global i8** null, align 8
@.str = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str1 = private unnamed_addr constant [24 x i8] c"describe-all-parameters\00", align 1
@.str2 = private unnamed_addr constant [19 x i8] c"describe-parameter\00", align 1
@.str3 = private unnamed_addr constant [16 x i8] c"test-parameters\00", align 1
@.str4 = private unnamed_addr constant [14 x i8] c"warning-level\00", align 1
@.str5 = private unnamed_addr constant [12 x i8] c"error-level\00", align 1
@.str6 = private unnamed_addr constant [16 x i8] c"parameter-level\00", align 1
@.str7 = private unnamed_addr constant [16 x i8] c"redirect-stdout\00", align 1
@.str8 = private unnamed_addr constant [12 x i8] c"list-thorns\00", align 1
@.str9 = private unnamed_addr constant [20 x i8] c"test-thorn-compiled\00", align 1
@.str10 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@.str11 = private unnamed_addr constant [12 x i8] c"ignore-next\00", align 1
@CCTKi_ProcessCommandLine.long_options = private unnamed_addr constant [13 x %struct.option] [%struct.option { i8* getelementptr inbounds ([5 x i8]* @.str, i32 0, i32 0), i32 0, i32* null, i32 104 }, %struct.option { i8* getelementptr inbounds ([24 x i8]* @.str1, i32 0, i32 0), i32 2, i32* null, i32 79 }, %struct.option { i8* getelementptr inbounds ([19 x i8]* @.str2, i32 0, i32 0), i32 1, i32* null, i32 111 }, %struct.option { i8* getelementptr inbounds ([16 x i8]* @.str3, i32 0, i32 0), i32 2, i32* null, i32 120 }, %struct.option { i8* getelementptr inbounds ([14 x i8]* @.str4, i32 0, i32 0), i32 1, i32* null, i32 87 }, %struct.option { i8* getelementptr inbounds ([12 x i8]* @.str5, i32 0, i32 0), i32 1, i32* null, i32 69 }, %struct.option { i8* getelementptr inbounds ([16 x i8]* @.str6, i32 0, i32 0), i32 1, i32* null, i32 256 }, %struct.option { i8* getelementptr inbounds ([16 x i8]* @.str7, i32 0, i32 0), i32 0, i32* null, i32 114 }, %struct.option { i8* getelementptr inbounds ([12 x i8]* @.str8, i32 0, i32 0), i32 0, i32* null, i32 84 }, %struct.option { i8* getelementptr inbounds ([20 x i8]* @.str9, i32 0, i32 0), i32 1, i32* null, i32 116 }, %struct.option { i8* getelementptr inbounds ([8 x i8]* @.str10, i32 0, i32 0), i32 0, i32* null, i32 118 }, %struct.option { i8* getelementptr inbounds ([12 x i8]* @.str11, i32 0, i32 0), i32 0, i32* null, i32 105 }, %struct.option zeroinitializer], align 16
@.str12 = private unnamed_addr constant [20 x i8] c"hO::o:x::W:E:rTt:vi\00", align 1
@optarg = external global i8*
@.str13 = private unnamed_addr constant [42 x i8] c"?? getopt returned character code 0%o ??\0A\00", align 1
@optind = external global i32
@parameter_file_name = internal unnamed_addr global i8* null, align 8
@.str15 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str16 = private unnamed_addr constant [6 x i8] c"STDIN\00", align 1
@.str17 = private unnamed_addr constant [95 x i8] c"$Header: /cactus/Cactus/src/main/ProcessCommandLine.c,v 1.31 2001/05/10 12:35:14 goodale Exp $\00", align 1
@str = private unnamed_addr constant [16 x i8] c"Ignoring option\00"

; Function Attrs: nounwind optsize readnone ssp uwtable
define i8* @CCTKi_version_main_ProcessCommandLine_c() #0 {
  ret i8* getelementptr inbounds ([95 x i8]* @.str17, i64 0, i64 0)
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @CCTKi_ProcessCommandLine(i32* nocapture readonly %inargc, i8*** nocapture readonly %inargv, %struct.tFleshConfig* nocapture %ConfigData) #1 {
  %option_index = alloca i32, align 4
  %long_options = alloca [13 x %struct.option], align 16
  store i32 0, i32* %option_index, align 4, !tbaa !2
  %1 = load i32* %inargc, align 4, !tbaa !2
  store i32 %1, i32* @argc, align 4, !tbaa !2
  %2 = bitcast i8*** %inargv to i64*
  %3 = load i64* %2, align 8, !tbaa !6
  store i64 %3, i64* bitcast (i8*** @argv to i64*), align 8, !tbaa !6
  %4 = icmp sgt i32 %1, 1
  br i1 %4, label %.preheader, label %49

.preheader:                                       ; preds = %0
  %5 = inttoptr i64 %3 to i8**
  %6 = bitcast [13 x %struct.option]* %long_options to i8*
  call void @llvm.lifetime.start(i64 416, i8* %6) #2
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %6, i8* bitcast ([13 x %struct.option]* @CCTKi_ProcessCommandLine.long_options to i8*), i64 416, i32 16, i1 false)
  %7 = getelementptr inbounds [13 x %struct.option]* %long_options, i64 0, i64 0
  %8 = call i32 @getopt_long_only(i32 %1, i8** %5, i8* getelementptr inbounds ([20 x i8]* @.str12, i64 0, i64 0), %struct.option* %7, i32* %option_index) #7
  %9 = icmp eq i32 %8, -1
  br i1 %9, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader, %.thread
  %10 = phi i32 [ %36, %.thread ], [ %8, %.preheader ]
  %ignore.01 = phi i32 [ %ignore.2.ph, %.thread ], [ 0, %.preheader ]
  %11 = icmp eq i32 %ignore.01, 0
  br i1 %11, label %12, label %33

; <label>:12                                      ; preds = %.lr.ph
  switch i32 %10, label %31 [
    i32 116, label %13
    i32 79, label %15
    i32 111, label %17
    i32 120, label %19
    i32 87, label %21
    i32 69, label %23
    i32 256, label %25
    i32 114, label %27
    i32 84, label %28
    i32 118, label %29
    i32 105, label %.thread
    i32 104, label %30
    i32 63, label %30
  ]

; <label>:13                                      ; preds = %12
  %14 = load i8** @optarg, align 8, !tbaa !6
  call void @CCTKi_CommandLineTestThornCompiled(i8* %14) #7
  br label %.thread

; <label>:15                                      ; preds = %12
  %16 = load i8** @optarg, align 8, !tbaa !6
  call void @CCTKi_CommandLineDescribeAllParameters(i8* %16) #7
  br label %.thread

; <label>:17                                      ; preds = %12
  %18 = load i8** @optarg, align 8, !tbaa !6
  call void @CCTKi_CommandLineDescribeParameter(i8* %18) #7
  br label %.thread

; <label>:19                                      ; preds = %12
  %20 = load i8** @optarg, align 8, !tbaa !6
  call void @CCTKi_CommandLineTestParameters(i8* %20) #7
  br label %.thread

; <label>:21                                      ; preds = %12
  %22 = load i8** @optarg, align 8, !tbaa !6
  call void @CCTKi_CommandLineWarningLevel(i8* %22) #7
  br label %.thread

; <label>:23                                      ; preds = %12
  %24 = load i8** @optarg, align 8, !tbaa !6
  call void @CCTKi_CommandLineErrorLevel(i8* %24) #7
  br label %.thread

; <label>:25                                      ; preds = %12
  %26 = load i8** @optarg, align 8, !tbaa !6
  call void @CCTKi_CommandLineParameterLevel(i8* %26) #7
  br label %.thread

; <label>:27                                      ; preds = %12
  call void @CCTKi_CommandLineRedirectStdout() #7
  br label %.thread

; <label>:28                                      ; preds = %12
  call void @CCTKi_CommandLineListThorns() #7
  br label %.thread

; <label>:29                                      ; preds = %12
  call void @CCTKi_CommandLineVersion() #7
  br label %.thread

; <label>:30                                      ; preds = %12, %12
  call void @CCTKi_CommandLineHelp() #7
  br label %.thread

; <label>:31                                      ; preds = %12
  %32 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([42 x i8]* @.str13, i64 0, i64 0), i32 %10) #7
  br label %.thread

; <label>:33                                      ; preds = %.lr.ph
  %puts = call i32 @puts(i8* getelementptr inbounds ([16 x i8]* @str, i64 0, i64 0))
  br label %.thread

.thread:                                          ; preds = %12, %13, %15, %17, %19, %21, %23, %25, %27, %28, %29, %30, %31, %33
  %ignore.2.ph = phi i32 [ 1, %12 ], [ 0, %13 ], [ 0, %15 ], [ 0, %17 ], [ 0, %19 ], [ 0, %21 ], [ 0, %23 ], [ 0, %25 ], [ 0, %27 ], [ 0, %28 ], [ 0, %29 ], [ 0, %30 ], [ 0, %31 ], [ 0, %33 ]
  call void @llvm.lifetime.end(i64 416, i8* %6) #2
  call void @llvm.lifetime.start(i64 416, i8* %6) #2
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %6, i8* bitcast ([13 x %struct.option]* @CCTKi_ProcessCommandLine.long_options to i8*), i64 416, i32 16, i1 false)
  %34 = load i32* @argc, align 4, !tbaa !2
  %35 = load i8*** @argv, align 8, !tbaa !6
  %36 = call i32 @getopt_long_only(i32 %34, i8** %35, i8* getelementptr inbounds ([20 x i8]* @.str12, i64 0, i64 0), %struct.option* %7, i32* %option_index) #7
  %37 = icmp eq i32 %36, -1
  br i1 %37, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.thread, %.preheader
  call void @llvm.lifetime.end(i64 416, i8* %6) #2
  %38 = load i32* @argc, align 4, !tbaa !2
  %39 = load i32* @optind, align 4, !tbaa !2
  %40 = icmp sgt i32 %38, %39
  br i1 %40, label %41, label %48

; <label>:41                                      ; preds = %._crit_edge
  %42 = sext i32 %39 to i64
  %43 = load i8*** @argv, align 8, !tbaa !6
  %44 = getelementptr inbounds i8** %43, i64 %42
  %45 = bitcast i8** %44 to i64*
  %46 = load i64* %45, align 8, !tbaa !6
  %47 = bitcast %struct.tFleshConfig* %ConfigData to i64*
  store i64 %46, i64* %47, align 8, !tbaa !8
  store i64 %46, i64* bitcast (i8** @parameter_file_name to i64*), align 8, !tbaa !6
  br label %50

; <label>:48                                      ; preds = %._crit_edge
  call void @CCTKi_CommandLineUsage() #7
  br label %50

; <label>:49                                      ; preds = %0
  tail call void @CCTKi_CommandLineUsage() #7
  br label %50

; <label>:50                                      ; preds = %41, %48, %49
  call void @CCTKi_CommandLineFinished() #7
  ret i32 0
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #2

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #2

; Function Attrs: optsize
declare i32 @getopt_long_only(i32, i8**, i8*, %struct.option*, i32*) #3

; Function Attrs: optsize
declare void @CCTKi_CommandLineTestThornCompiled(i8*) #3

; Function Attrs: optsize
declare void @CCTKi_CommandLineDescribeAllParameters(i8*) #3

; Function Attrs: optsize
declare void @CCTKi_CommandLineDescribeParameter(i8*) #3

; Function Attrs: optsize
declare void @CCTKi_CommandLineTestParameters(i8*) #3

; Function Attrs: optsize
declare void @CCTKi_CommandLineWarningLevel(i8*) #3

; Function Attrs: optsize
declare void @CCTKi_CommandLineErrorLevel(i8*) #3

; Function Attrs: optsize
declare void @CCTKi_CommandLineParameterLevel(i8*) #3

; Function Attrs: optsize
declare void @CCTKi_CommandLineRedirectStdout() #3

; Function Attrs: optsize
declare void @CCTKi_CommandLineListThorns() #3

; Function Attrs: optsize
declare void @CCTKi_CommandLineVersion() #3

; Function Attrs: optsize
declare void @CCTKi_CommandLineHelp() #3

; Function Attrs: nounwind optsize
declare i32 @printf(i8* nocapture readonly, ...) #4

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #2

; Function Attrs: optsize
declare void @CCTKi_CommandLineUsage() #3

; Function Attrs: optsize
declare void @CCTKi_CommandLineFinished() #3

; Function Attrs: nounwind optsize ssp uwtable
define i32 @CCTK_CommandLine(i8*** nocapture %outargv) #1 {
  %1 = load i64* bitcast (i8*** @argv to i64*), align 8, !tbaa !6
  %2 = bitcast i8*** %outargv to i64*
  store i64 %1, i64* %2, align 8, !tbaa !6
  %3 = load i32* @argc, align 4, !tbaa !2
  ret i32 %3
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @CCTK_ParameterFilename(i32 %len, i8* %filename) #1 {
  %1 = load i8** @parameter_file_name, align 8, !tbaa !6
  %2 = tail call i32 @CCTK_Equals(i8* %1, i8* getelementptr inbounds ([2 x i8]* @.str15, i64 0, i64 0)) #7
  %3 = icmp eq i32 %2, 0
  %4 = load i8** @parameter_file_name, align 8, !tbaa !6
  %copy_string.0 = select i1 %3, i8* %4, i8* getelementptr inbounds ([6 x i8]* @.str16, i64 0, i64 0)
  %5 = tail call i64 @strlen(i8* %copy_string.0) #7
  %6 = trunc i64 %5 to i32
  %7 = add nsw i32 %len, -1
  %8 = icmp sgt i32 %6, %7
  %. = select i1 %8, i32 %7, i32 %6
  %9 = sext i32 %. to i64
  %10 = tail call i64 @llvm.objectsize.i64.p0i8(i8* %filename, i1 false)
  %11 = tail call i8* @__strncpy_chk(i8* %filename, i8* %copy_string.0, i64 %9, i64 %10) #7
  %12 = getelementptr inbounds i8* %filename, i64 %9
  store i8 0, i8* %12, align 1, !tbaa !10
  ret i32 %.
}

; Function Attrs: optsize
declare i32 @CCTK_Equals(i8*, i8*) #3

; Function Attrs: nounwind optsize readonly
declare i64 @strlen(i8* nocapture) #5

; Function Attrs: nounwind optsize
declare i8* @__strncpy_chk(i8*, i8*, i64, i64) #4

; Function Attrs: nounwind readnone
declare i64 @llvm.objectsize.i64.p0i8(i8*, i1) #6

; Function Attrs: nounwind optsize ssp uwtable
define void @cctk_parameterfilename_(i32* nocapture %retval, i32* nocapture readonly %len, i8* %name) #1 {
  %1 = load i32* %len, align 4, !tbaa !2
  %2 = tail call i32 @CCTK_ParameterFilename(i32 %1, i8* %name) #8
  store i32 %2, i32* %retval, align 4, !tbaa !2
  ret void
}

; Function Attrs: nounwind
declare i32 @puts(i8* nocapture readonly) #2

attributes #0 = { nounwind optsize readnone ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind optsize readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readnone }
attributes #7 = { nounwind optsize }
attributes #8 = { optsize }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!2 = !{!3, !3, i64 0}
!3 = !{!"int", !4, i64 0}
!4 = !{!"omnipotent char", !5, i64 0}
!5 = !{!"Simple C/C++ TBAA"}
!6 = !{!7, !7, i64 0}
!7 = !{!"any pointer", !4, i64 0}
!8 = !{!9, !7, i64 0}
!9 = !{!"", !7, i64 0, !7, i64 8, !3, i64 16}
!10 = !{!4, !4, i64 0}
