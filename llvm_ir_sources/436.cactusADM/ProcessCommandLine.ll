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
  ret i8* getelementptr inbounds ([95 x i8]* @.str17, i64 0, i64 0), !dbg !114
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @CCTKi_ProcessCommandLine(i32* nocapture readonly %inargc, i8*** nocapture readonly %inargv, %struct.tFleshConfig* nocapture %ConfigData) #1 {
  %option_index = alloca i32, align 4
  %long_options = alloca [13 x %struct.option], align 16
  tail call void @llvm.dbg.value(metadata i32* %inargc, i64 0, metadata !65, metadata !115), !dbg !116
  tail call void @llvm.dbg.value(metadata i8*** %inargv, i64 0, metadata !66, metadata !115), !dbg !117
  tail call void @llvm.dbg.value(metadata %struct.tFleshConfig* %ConfigData, i64 0, metadata !67, metadata !115), !dbg !118
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !68, metadata !115), !dbg !119
  store i32 0, i32* %option_index, align 4, !dbg !119, !tbaa !120
  %1 = load i32* %inargc, align 4, !dbg !124, !tbaa !120
  store i32 %1, i32* @argc, align 4, !dbg !125, !tbaa !120
  %2 = bitcast i8*** %inargv to i64*, !dbg !126
  %3 = load i64* %2, align 8, !dbg !126, !tbaa !127
  store i64 %3, i64* bitcast (i8*** @argv to i64*), align 8, !dbg !129, !tbaa !127
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !70, metadata !115), !dbg !130
  %4 = icmp sgt i32 %1, 1, !dbg !131
  br i1 %4, label %.preheader, label %49, !dbg !132

.preheader:                                       ; preds = %0
  %5 = inttoptr i64 %3 to i8**
  %6 = bitcast [13 x %struct.option]* %long_options to i8*, !dbg !133
  call void @llvm.lifetime.start(i64 416, i8* %6) #3, !dbg !133
  call void @llvm.dbg.declare(metadata [13 x %struct.option]* %long_options, metadata !71, metadata !115), !dbg !134
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %6, i8* bitcast ([13 x %struct.option]* @CCTKi_ProcessCommandLine.long_options to i8*), i64 416, i32 16, i1 false), !dbg !134
  %7 = getelementptr inbounds [13 x %struct.option]* %long_options, i64 0, i64 0, !dbg !135
  call void @llvm.dbg.value(metadata i32* %option_index, i64 0, metadata !68, metadata !115), !dbg !119
  %8 = call i32 @getopt_long_only(i32 %1, i8** %5, i8* getelementptr inbounds ([20 x i8]* @.str12, i64 0, i64 0), %struct.option* %7, i32* %option_index) #7, !dbg !136
  call void @llvm.dbg.value(metadata i32 %8, i64 0, metadata !69, metadata !115), !dbg !137
  %9 = icmp eq i32 %8, -1, !dbg !138
  br i1 %9, label %._crit_edge, label %.lr.ph, !dbg !140

.lr.ph:                                           ; preds = %.preheader, %.thread
  %10 = phi i32 [ %36, %.thread ], [ %8, %.preheader ]
  %ignore.01 = phi i32 [ %ignore.2.ph, %.thread ], [ 0, %.preheader ]
  %11 = icmp eq i32 %ignore.01, 0, !dbg !141
  br i1 %11, label %12, label %33, !dbg !143

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
  ], !dbg !144

; <label>:13                                      ; preds = %12
  %14 = load i8** @optarg, align 8, !dbg !146, !tbaa !127
  call void @CCTKi_CommandLineTestThornCompiled(i8* %14) #7, !dbg !148
  br label %.thread, !dbg !149

; <label>:15                                      ; preds = %12
  %16 = load i8** @optarg, align 8, !dbg !150, !tbaa !127
  call void @CCTKi_CommandLineDescribeAllParameters(i8* %16) #7, !dbg !151
  br label %.thread, !dbg !152

; <label>:17                                      ; preds = %12
  %18 = load i8** @optarg, align 8, !dbg !153, !tbaa !127
  call void @CCTKi_CommandLineDescribeParameter(i8* %18) #7, !dbg !154
  br label %.thread, !dbg !155

; <label>:19                                      ; preds = %12
  %20 = load i8** @optarg, align 8, !dbg !156, !tbaa !127
  call void @CCTKi_CommandLineTestParameters(i8* %20) #7, !dbg !157
  br label %.thread, !dbg !158

; <label>:21                                      ; preds = %12
  %22 = load i8** @optarg, align 8, !dbg !159, !tbaa !127
  call void @CCTKi_CommandLineWarningLevel(i8* %22) #7, !dbg !160
  br label %.thread, !dbg !161

; <label>:23                                      ; preds = %12
  %24 = load i8** @optarg, align 8, !dbg !162, !tbaa !127
  call void @CCTKi_CommandLineErrorLevel(i8* %24) #7, !dbg !163
  br label %.thread, !dbg !164

; <label>:25                                      ; preds = %12
  %26 = load i8** @optarg, align 8, !dbg !165, !tbaa !127
  call void @CCTKi_CommandLineParameterLevel(i8* %26) #7, !dbg !166
  br label %.thread, !dbg !167

; <label>:27                                      ; preds = %12
  call void @CCTKi_CommandLineRedirectStdout() #7, !dbg !168
  br label %.thread, !dbg !169

; <label>:28                                      ; preds = %12
  call void @CCTKi_CommandLineListThorns() #7, !dbg !170
  br label %.thread, !dbg !171

; <label>:29                                      ; preds = %12
  call void @CCTKi_CommandLineVersion() #7, !dbg !172
  br label %.thread, !dbg !173

; <label>:30                                      ; preds = %12, %12
  call void @CCTKi_CommandLineHelp() #7, !dbg !174
  br label %.thread, !dbg !175

; <label>:31                                      ; preds = %12
  %32 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([42 x i8]* @.str13, i64 0, i64 0), i32 %10) #7, !dbg !176
  br label %.thread, !dbg !177

; <label>:33                                      ; preds = %.lr.ph
  %puts = call i32 @puts(i8* getelementptr inbounds ([16 x i8]* @str, i64 0, i64 0)), !dbg !178
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !70, metadata !115), !dbg !130
  br label %.thread

.thread:                                          ; preds = %12, %13, %15, %17, %19, %21, %23, %25, %27, %28, %29, %30, %31, %33
  %ignore.2.ph = phi i32 [ 1, %12 ], [ 0, %13 ], [ 0, %15 ], [ 0, %17 ], [ 0, %19 ], [ 0, %21 ], [ 0, %23 ], [ 0, %25 ], [ 0, %27 ], [ 0, %28 ], [ 0, %29 ], [ 0, %30 ], [ 0, %31 ], [ 0, %33 ]
  call void @llvm.lifetime.end(i64 416, i8* %6) #3, !dbg !180
  call void @llvm.lifetime.start(i64 416, i8* %6) #3, !dbg !133
  call void @llvm.dbg.declare(metadata [13 x %struct.option]* %long_options, metadata !71, metadata !115), !dbg !134
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %6, i8* bitcast ([13 x %struct.option]* @CCTKi_ProcessCommandLine.long_options to i8*), i64 416, i32 16, i1 false), !dbg !134
  %34 = load i32* @argc, align 4, !dbg !181, !tbaa !120
  %35 = load i8*** @argv, align 8, !dbg !182, !tbaa !127
  call void @llvm.dbg.value(metadata i32* %option_index, i64 0, metadata !68, metadata !115), !dbg !119
  %36 = call i32 @getopt_long_only(i32 %34, i8** %35, i8* getelementptr inbounds ([20 x i8]* @.str12, i64 0, i64 0), %struct.option* %7, i32* %option_index) #7, !dbg !136
  call void @llvm.dbg.value(metadata i32 %36, i64 0, metadata !69, metadata !115), !dbg !137
  %37 = icmp eq i32 %36, -1, !dbg !138
  br i1 %37, label %._crit_edge, label %.lr.ph, !dbg !140

._crit_edge:                                      ; preds = %.thread, %.preheader
  call void @llvm.lifetime.end(i64 416, i8* %6) #3, !dbg !180
  %38 = load i32* @argc, align 4, !dbg !183, !tbaa !120
  %39 = load i32* @optind, align 4, !dbg !185, !tbaa !120
  %40 = icmp sgt i32 %38, %39, !dbg !186
  br i1 %40, label %41, label %48, !dbg !187

; <label>:41                                      ; preds = %._crit_edge
  %42 = sext i32 %39 to i64, !dbg !188
  %43 = load i8*** @argv, align 8, !dbg !188, !tbaa !127
  %44 = getelementptr inbounds i8** %43, i64 %42, !dbg !188
  %45 = bitcast i8** %44 to i64*, !dbg !188
  %46 = load i64* %45, align 8, !dbg !188, !tbaa !127
  %47 = bitcast %struct.tFleshConfig* %ConfigData to i64*, !dbg !190
  store i64 %46, i64* %47, align 8, !dbg !190, !tbaa !191
  store i64 %46, i64* bitcast (i8** @parameter_file_name to i64*), align 8, !dbg !193, !tbaa !127
  br label %50, !dbg !194

; <label>:48                                      ; preds = %._crit_edge
  call void @CCTKi_CommandLineUsage() #7, !dbg !195
  br label %50

; <label>:49                                      ; preds = %0
  tail call void @CCTKi_CommandLineUsage() #7, !dbg !197
  br label %50

; <label>:50                                      ; preds = %41, %48, %49
  call void @CCTKi_CommandLineFinished() #7, !dbg !199
  ret i32 0, !dbg !200
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #3

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #3

; Function Attrs: optsize
declare i32 @getopt_long_only(i32, i8**, i8*, %struct.option*, i32*) #4

; Function Attrs: optsize
declare void @CCTKi_CommandLineTestThornCompiled(i8*) #4

; Function Attrs: optsize
declare void @CCTKi_CommandLineDescribeAllParameters(i8*) #4

; Function Attrs: optsize
declare void @CCTKi_CommandLineDescribeParameter(i8*) #4

; Function Attrs: optsize
declare void @CCTKi_CommandLineTestParameters(i8*) #4

; Function Attrs: optsize
declare void @CCTKi_CommandLineWarningLevel(i8*) #4

; Function Attrs: optsize
declare void @CCTKi_CommandLineErrorLevel(i8*) #4

; Function Attrs: optsize
declare void @CCTKi_CommandLineParameterLevel(i8*) #4

; Function Attrs: optsize
declare void @CCTKi_CommandLineRedirectStdout() #4

; Function Attrs: optsize
declare void @CCTKi_CommandLineListThorns() #4

; Function Attrs: optsize
declare void @CCTKi_CommandLineVersion() #4

; Function Attrs: optsize
declare void @CCTKi_CommandLineHelp() #4

; Function Attrs: nounwind optsize
declare i32 @printf(i8* nocapture readonly, ...) #5

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #3

; Function Attrs: optsize
declare void @CCTKi_CommandLineUsage() #4

; Function Attrs: optsize
declare void @CCTKi_CommandLineFinished() #4

; Function Attrs: nounwind optsize ssp uwtable
define i32 @CCTK_CommandLine(i8*** nocapture %outargv) #1 {
  tail call void @llvm.dbg.value(metadata i8*** %outargv, i64 0, metadata !89, metadata !115), !dbg !201
  %1 = load i64* bitcast (i8*** @argv to i64*), align 8, !dbg !202, !tbaa !127
  %2 = bitcast i8*** %outargv to i64*, !dbg !203
  store i64 %1, i64* %2, align 8, !dbg !203, !tbaa !127
  %3 = load i32* @argc, align 4, !dbg !204, !tbaa !120
  ret i32 %3, !dbg !205
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @CCTK_ParameterFilename(i32 %len, i8* %filename) #1 {
  tail call void @llvm.dbg.value(metadata i32 %len, i64 0, metadata !94, metadata !115), !dbg !206
  tail call void @llvm.dbg.value(metadata i8* %filename, i64 0, metadata !95, metadata !115), !dbg !207
  %1 = load i8** @parameter_file_name, align 8, !dbg !208, !tbaa !127
  %2 = tail call i32 @CCTK_Equals(i8* %1, i8* getelementptr inbounds ([2 x i8]* @.str15, i64 0, i64 0)) #7, !dbg !210
  %3 = icmp eq i32 %2, 0, !dbg !210
  %4 = load i8** @parameter_file_name, align 8, !dbg !211, !tbaa !127
  tail call void @llvm.dbg.value(metadata i8* %4, i64 0, metadata !97, metadata !115), !dbg !213
  %copy_string.0 = select i1 %3, i8* %4, i8* getelementptr inbounds ([6 x i8]* @.str16, i64 0, i64 0), !dbg !214
  %5 = tail call i64 @strlen(i8* %copy_string.0) #7, !dbg !215
  %6 = trunc i64 %5 to i32, !dbg !215
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !96, metadata !115), !dbg !216
  %7 = add nsw i32 %len, -1, !dbg !217
  %8 = icmp sgt i32 %6, %7, !dbg !219
  tail call void @llvm.dbg.value(metadata i32 %7, i64 0, metadata !96, metadata !115), !dbg !216
  %. = select i1 %8, i32 %7, i32 %6, !dbg !220
  %9 = sext i32 %. to i64, !dbg !221
  %10 = tail call i64 @llvm.objectsize.i64.p0i8(i8* %filename, i1 false), !dbg !221
  %11 = tail call i8* @__strncpy_chk(i8* %filename, i8* %copy_string.0, i64 %9, i64 %10) #7, !dbg !221
  %12 = getelementptr inbounds i8* %filename, i64 %9, !dbg !222
  store i8 0, i8* %12, align 1, !dbg !223, !tbaa !224
  ret i32 %., !dbg !225
}

; Function Attrs: optsize
declare i32 @CCTK_Equals(i8*, i8*) #4

; Function Attrs: nounwind optsize readonly
declare i64 @strlen(i8* nocapture) #6

; Function Attrs: nounwind optsize
declare i8* @__strncpy_chk(i8*, i8*, i64, i64) #5

; Function Attrs: nounwind readnone
declare i64 @llvm.objectsize.i64.p0i8(i8*, i1) #2

; Function Attrs: nounwind optsize ssp uwtable
define void @cctk_parameterfilename_(i32* nocapture %retval, i32* nocapture readonly %len, i8* %name) #1 {
  tail call void @llvm.dbg.value(metadata i32* %retval, i64 0, metadata !102, metadata !115), !dbg !226
  tail call void @llvm.dbg.value(metadata i32* %len, i64 0, metadata !103, metadata !115), !dbg !227
  tail call void @llvm.dbg.value(metadata i8* %name, i64 0, metadata !104, metadata !115), !dbg !228
  %1 = load i32* %len, align 4, !dbg !229, !tbaa !120
  %2 = tail call i32 @CCTK_ParameterFilename(i32 %1, i8* %name) #8, !dbg !230
  store i32 %2, i32* %retval, align 4, !dbg !231, !tbaa !120
  ret void, !dbg !232
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #2

; Function Attrs: nounwind
declare i32 @puts(i8* nocapture readonly) #3

attributes #0 = { nounwind optsize readnone ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone }
attributes #3 = { nounwind }
attributes #4 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind optsize readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind optsize }
attributes #8 = { optsize }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!110, !111, !112}
!llvm.ident = !{!113}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !2, subprograms: !3, globals: !105, imports: !2)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/Cactus/ProcessCommandLine.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{}
!3 = !{!4, !10, !85, !90, !98}
!4 = !DISubprogram(name: "CCTKi_version_main_ProcessCommandLine_c", scope: !1, file: !1, line: 26, type: !5, isLocal: false, isDefinition: true, scopeLine: 26, flags: DIFlagPrototyped, isOptimized: true, function: i8* ()* @CCTKi_version_main_ProcessCommandLine_c, variables: !2)
!5 = !DISubroutineType(types: !6)
!6 = !{!7}
!7 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64, align: 64)
!8 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !9)
!9 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!10 = !DISubprogram(name: "CCTKi_ProcessCommandLine", scope: !1, file: !1, line: 97, type: !11, isLocal: false, isDefinition: true, scopeLine: 98, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i32*, i8***, %struct.tFleshConfig*)* @CCTKi_ProcessCommandLine, variables: !64)
!11 = !DISubroutineType(types: !12)
!12 = !{!13, !14, !15, !18}
!13 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64, align: 64)
!15 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64, align: 64)
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64, align: 64)
!17 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64, align: 64)
!18 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64, align: 64)
!19 = !DIDerivedType(tag: DW_TAG_typedef, name: "tFleshConfig", file: !20, line: 28, baseType: !21)
!20 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/Cactus/../include/cctk_Flesh.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!21 = !DICompositeType(tag: DW_TAG_structure_type, file: !20, line: 19, size: 192, align: 64, elements: !22)
!22 = !{!23, !24, !62}
!23 = !DIDerivedType(tag: DW_TAG_member, name: "parameter_file_name", scope: !21, file: !20, line: 21, baseType: !17, size: 64, align: 64)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "GH", scope: !21, file: !20, line: 24, baseType: !25, size: 64, align: 64, offset: 64)
!25 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 64, align: 64)
!26 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !27, size: 64, align: 64)
!27 = !DIDerivedType(tag: DW_TAG_typedef, name: "cGH", file: !28, line: 75, baseType: !29)
!28 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/Cactus/../include/cGH.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!29 = !DICompositeType(tag: DW_TAG_structure_type, file: !28, line: 24, size: 1216, align: 64, elements: !30)
!30 = !{!31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !42, !44, !45, !46, !47, !48, !49, !50, !54, !55}
!31 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_dim", scope: !29, file: !28, line: 26, baseType: !13, size: 32, align: 32)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_iteration", scope: !29, file: !28, line: 27, baseType: !13, size: 32, align: 32, offset: 32)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_gsh", scope: !29, file: !28, line: 30, baseType: !14, size: 64, align: 64, offset: 64)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_lsh", scope: !29, file: !28, line: 31, baseType: !14, size: 64, align: 64, offset: 128)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_lbnd", scope: !29, file: !28, line: 32, baseType: !14, size: 64, align: 64, offset: 192)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_ubnd", scope: !29, file: !28, line: 33, baseType: !14, size: 64, align: 64, offset: 256)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_lssh", scope: !29, file: !28, line: 36, baseType: !14, size: 64, align: 64, offset: 320)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_to", scope: !29, file: !28, line: 39, baseType: !14, size: 64, align: 64, offset: 384)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_from", scope: !29, file: !28, line: 40, baseType: !14, size: 64, align: 64, offset: 448)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_delta_time", scope: !29, file: !28, line: 43, baseType: !41, size: 64, align: 64, offset: 512)
!41 = !DIBasicType(name: "double", size: 64, align: 64, encoding: DW_ATE_float)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_delta_space", scope: !29, file: !28, line: 44, baseType: !43, size: 64, align: 64, offset: 576)
!43 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !41, size: 64, align: 64)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_origin_space", scope: !29, file: !28, line: 47, baseType: !43, size: 64, align: 64, offset: 640)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_bbox", scope: !29, file: !28, line: 51, baseType: !14, size: 64, align: 64, offset: 704)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_levfac", scope: !29, file: !28, line: 54, baseType: !14, size: 64, align: 64, offset: 768)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_convlevel", scope: !29, file: !28, line: 57, baseType: !13, size: 32, align: 32, offset: 832)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_nghostzones", scope: !29, file: !28, line: 60, baseType: !14, size: 64, align: 64, offset: 896)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_time", scope: !29, file: !28, line: 63, baseType: !41, size: 64, align: 64, offset: 960)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !29, file: !28, line: 67, baseType: !51, size: 64, align: 64, offset: 1024)
!51 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 64, align: 64)
!52 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !53, size: 64, align: 64)
!53 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "extensions", scope: !29, file: !28, line: 70, baseType: !52, size: 64, align: 64, offset: 1088)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "GroupData", scope: !29, file: !28, line: 73, baseType: !56, size: 64, align: 64, offset: 1152)
!56 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !57, size: 64, align: 64)
!57 = !DIDerivedType(tag: DW_TAG_typedef, name: "cGHGroupData", file: !28, line: 22, baseType: !58)
!58 = !DICompositeType(tag: DW_TAG_structure_type, file: !28, line: 18, size: 16, align: 8, elements: !59)
!59 = !{!60, !61}
!60 = !DIDerivedType(tag: DW_TAG_member, name: "storage", scope: !58, file: !28, line: 20, baseType: !9, size: 8, align: 8)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !58, file: !28, line: 21, baseType: !9, size: 8, align: 8, offset: 8)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "nGHs", scope: !21, file: !20, line: 25, baseType: !63, size: 32, align: 32, offset: 128)
!63 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!64 = !{!65, !66, !67, !68, !69, !70, !71}
!65 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "inargc", arg: 1, scope: !10, file: !1, line: 97, type: !14)
!66 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "inargv", arg: 2, scope: !10, file: !1, line: 97, type: !15)
!67 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ConfigData", arg: 3, scope: !10, file: !1, line: 97, type: !18)
!68 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "option_index", scope: !10, file: !1, line: 100, type: !13)
!69 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "c", scope: !10, file: !1, line: 101, type: !13)
!70 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ignore", scope: !10, file: !1, line: 102, type: !13)
!71 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "long_options", scope: !72, file: !1, line: 117, type: !75)
!72 = distinct !DILexicalBlock(scope: !73, file: !1, line: 116, column: 5)
!73 = distinct !DILexicalBlock(scope: !74, file: !1, line: 114, column: 3)
!74 = distinct !DILexicalBlock(scope: !10, file: !1, line: 113, column: 6)
!75 = !DICompositeType(tag: DW_TAG_array_type, baseType: !76, size: 3328, align: 64, elements: !83)
!76 = !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !77, line: 83, size: 256, align: 64, elements: !78)
!77 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/Cactus/../include/getopt.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!78 = !{!79, !80, !81, !82}
!79 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !76, file: !77, line: 86, baseType: !7, size: 64, align: 64)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !76, file: !77, line: 92, baseType: !13, size: 32, align: 32, offset: 64)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !76, file: !77, line: 93, baseType: !14, size: 64, align: 64, offset: 128)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !76, file: !77, line: 94, baseType: !13, size: 32, align: 32, offset: 192)
!83 = !{!84}
!84 = !DISubrange(count: 13)
!85 = !DISubprogram(name: "CCTK_CommandLine", scope: !1, file: !1, line: 214, type: !86, isLocal: false, isDefinition: true, scopeLine: 215, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i8***)* @CCTK_CommandLine, variables: !88)
!86 = !DISubroutineType(types: !87)
!87 = !{!13, !15}
!88 = !{!89}
!89 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "outargv", arg: 1, scope: !85, file: !1, line: 214, type: !15)
!90 = !DISubprogram(name: "CCTK_ParameterFilename", scope: !1, file: !1, line: 255, type: !91, isLocal: false, isDefinition: true, scopeLine: 256, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i32, i8*)* @CCTK_ParameterFilename, variables: !93)
!91 = !DISubroutineType(types: !92)
!92 = !{!13, !13, !17}
!93 = !{!94, !95, !96, !97}
!94 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "len", arg: 1, scope: !90, file: !1, line: 255, type: !13)
!95 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "filename", arg: 2, scope: !90, file: !1, line: 255, type: !17)
!96 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "retval", scope: !90, file: !1, line: 257, type: !13)
!97 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "copy_string", scope: !90, file: !1, line: 258, type: !7)
!98 = !DISubprogram(name: "cctk_parameterfilename_", scope: !1, file: !1, line: 279, type: !99, isLocal: false, isDefinition: true, scopeLine: 281, flags: DIFlagPrototyped, isOptimized: true, function: void (i32*, i32*, i8*)* @cctk_parameterfilename_, variables: !101)
!99 = !DISubroutineType(types: !100)
!100 = !{null, !14, !14, !17}
!101 = !{!102, !103, !104}
!102 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "retval", arg: 1, scope: !98, file: !1, line: 280, type: !14)
!103 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "len", arg: 2, scope: !98, file: !1, line: 280, type: !14)
!104 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "name", arg: 3, scope: !98, file: !1, line: 280, type: !17)
!105 = !{!106, !107, !108, !109}
!106 = !DIGlobalVariable(name: "rcsid", scope: !0, file: !1, line: 24, type: !7, isLocal: true, isDefinition: true)
!107 = !DIGlobalVariable(name: "argc", scope: !0, file: !1, line: 49, type: !13, isLocal: true, isDefinition: true, variable: i32* @argc)
!108 = !DIGlobalVariable(name: "argv", scope: !0, file: !1, line: 51, type: !16, isLocal: true, isDefinition: true, variable: i8*** @argv)
!109 = !DIGlobalVariable(name: "parameter_file_name", scope: !0, file: !1, line: 47, type: !17, isLocal: true, isDefinition: true, variable: i8** @parameter_file_name)
!110 = !{i32 2, !"Dwarf Version", i32 2}
!111 = !{i32 2, !"Debug Info Version", i32 700000003}
!112 = !{i32 1, !"PIC Level", i32 2}
!113 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!114 = !DILocation(line: 26, column: 1, scope: !4)
!115 = !DIExpression()
!116 = !DILocation(line: 97, column: 35, scope: !10)
!117 = !DILocation(line: 97, column: 51, scope: !10)
!118 = !DILocation(line: 97, column: 73, scope: !10)
!119 = !DILocation(line: 100, column: 7, scope: !10)
!120 = !{!121, !121, i64 0}
!121 = !{!"int", !122, i64 0}
!122 = !{!"omnipotent char", !123, i64 0}
!123 = !{!"Simple C/C++ TBAA"}
!124 = !DILocation(line: 105, column: 10, scope: !10)
!125 = !DILocation(line: 105, column: 8, scope: !10)
!126 = !DILocation(line: 107, column: 10, scope: !10)
!127 = !{!128, !128, i64 0}
!128 = !{!"any pointer", !122, i64 0}
!129 = !DILocation(line: 107, column: 8, scope: !10)
!130 = !DILocation(line: 102, column: 7, scope: !10)
!131 = !DILocation(line: 113, column: 10, scope: !74)
!132 = !DILocation(line: 113, column: 6, scope: !10)
!133 = !DILocation(line: 117, column: 7, scope: !72)
!134 = !DILocation(line: 117, column: 21, scope: !72)
!135 = !DILocation(line: 135, column: 29, scope: !72)
!136 = !DILocation(line: 134, column: 11, scope: !72)
!137 = !DILocation(line: 101, column: 7, scope: !10)
!138 = !DILocation(line: 136, column: 13, scope: !139)
!139 = distinct !DILexicalBlock(scope: !72, file: !1, line: 136, column: 11)
!140 = !DILocation(line: 136, column: 11, scope: !72)
!141 = !DILocation(line: 139, column: 11, scope: !142)
!142 = distinct !DILexicalBlock(scope: !72, file: !1, line: 139, column: 10)
!143 = !DILocation(line: 139, column: 10, scope: !72)
!144 = !DILocation(line: 141, column: 9, scope: !145)
!145 = distinct !DILexicalBlock(scope: !142, file: !1, line: 140, column: 7)
!146 = !DILocation(line: 143, column: 56, scope: !147)
!147 = distinct !DILexicalBlock(scope: !145, file: !1, line: 142, column: 9)
!148 = !DILocation(line: 143, column: 21, scope: !147)
!149 = !DILocation(line: 143, column: 65, scope: !147)
!150 = !DILocation(line: 144, column: 60, scope: !147)
!151 = !DILocation(line: 144, column: 21, scope: !147)
!152 = !DILocation(line: 144, column: 69, scope: !147)
!153 = !DILocation(line: 145, column: 56, scope: !147)
!154 = !DILocation(line: 145, column: 21, scope: !147)
!155 = !DILocation(line: 145, column: 65, scope: !147)
!156 = !DILocation(line: 146, column: 53, scope: !147)
!157 = !DILocation(line: 146, column: 21, scope: !147)
!158 = !DILocation(line: 146, column: 62, scope: !147)
!159 = !DILocation(line: 147, column: 51, scope: !147)
!160 = !DILocation(line: 147, column: 21, scope: !147)
!161 = !DILocation(line: 147, column: 60, scope: !147)
!162 = !DILocation(line: 148, column: 49, scope: !147)
!163 = !DILocation(line: 148, column: 21, scope: !147)
!164 = !DILocation(line: 148, column: 58, scope: !147)
!165 = !DILocation(line: 149, column: 53, scope: !147)
!166 = !DILocation(line: 149, column: 21, scope: !147)
!167 = !DILocation(line: 149, column: 62, scope: !147)
!168 = !DILocation(line: 150, column: 21, scope: !147)
!169 = !DILocation(line: 150, column: 56, scope: !147)
!170 = !DILocation(line: 151, column: 21, scope: !147)
!171 = !DILocation(line: 151, column: 52, scope: !147)
!172 = !DILocation(line: 152, column: 21, scope: !147)
!173 = !DILocation(line: 152, column: 49, scope: !147)
!174 = !DILocation(line: 156, column: 13, scope: !147)
!175 = !DILocation(line: 156, column: 38, scope: !147)
!176 = !DILocation(line: 158, column: 13, scope: !147)
!177 = !DILocation(line: 159, column: 9, scope: !147)
!178 = !DILocation(line: 163, column: 9, scope: !179)
!179 = distinct !DILexicalBlock(scope: !142, file: !1, line: 162, column: 7)
!180 = !DILocation(line: 166, column: 5, scope: !73)
!181 = !DILocation(line: 134, column: 29, scope: !72)
!182 = !DILocation(line: 134, column: 35, scope: !72)
!183 = !DILocation(line: 168, column: 8, scope: !184)
!184 = distinct !DILexicalBlock(scope: !73, file: !1, line: 168, column: 8)
!185 = !DILocation(line: 168, column: 15, scope: !184)
!186 = !DILocation(line: 168, column: 13, scope: !184)
!187 = !DILocation(line: 168, column: 8, scope: !73)
!188 = !DILocation(line: 170, column: 41, scope: !189)
!189 = distinct !DILexicalBlock(scope: !184, file: !1, line: 169, column: 5)
!190 = !DILocation(line: 170, column: 39, scope: !189)
!191 = !{!192, !128, i64 0}
!192 = !{!"", !128, i64 0, !128, i64 8, !121, i64 16}
!193 = !DILocation(line: 171, column: 27, scope: !189)
!194 = !DILocation(line: 172, column: 5, scope: !189)
!195 = !DILocation(line: 175, column: 7, scope: !196)
!196 = distinct !DILexicalBlock(scope: !184, file: !1, line: 174, column: 5)
!197 = !DILocation(line: 180, column: 5, scope: !198)
!198 = distinct !DILexicalBlock(scope: !74, file: !1, line: 179, column: 3)
!199 = !DILocation(line: 183, column: 3, scope: !10)
!200 = !DILocation(line: 185, column: 3, scope: !10)
!201 = !DILocation(line: 214, column: 30, scope: !85)
!202 = !DILocation(line: 216, column: 14, scope: !85)
!203 = !DILocation(line: 216, column: 12, scope: !85)
!204 = !DILocation(line: 218, column: 10, scope: !85)
!205 = !DILocation(line: 218, column: 3, scope: !85)
!206 = !DILocation(line: 255, column: 32, scope: !90)
!207 = !DILocation(line: 255, column: 43, scope: !90)
!208 = !DILocation(line: 261, column: 19, scope: !209)
!209 = distinct !DILexicalBlock(scope: !90, file: !1, line: 261, column: 7)
!210 = !DILocation(line: 261, column: 7, scope: !209)
!211 = !DILocation(line: 267, column: 19, scope: !212)
!212 = distinct !DILexicalBlock(scope: !209, file: !1, line: 266, column: 3)
!213 = !DILocation(line: 258, column: 15, scope: !90)
!214 = !DILocation(line: 261, column: 7, scope: !90)
!215 = !DILocation(line: 269, column: 12, scope: !90)
!216 = !DILocation(line: 257, column: 7, scope: !90)
!217 = !DILocation(line: 270, column: 20, scope: !218)
!218 = distinct !DILexicalBlock(scope: !90, file: !1, line: 270, column: 7)
!219 = !DILocation(line: 270, column: 14, scope: !218)
!220 = !DILocation(line: 270, column: 7, scope: !90)
!221 = !DILocation(line: 274, column: 3, scope: !90)
!222 = !DILocation(line: 275, column: 3, scope: !90)
!223 = !DILocation(line: 275, column: 20, scope: !90)
!224 = !{!122, !122, i64 0}
!225 = !DILocation(line: 276, column: 3, scope: !90)
!226 = !DILocation(line: 280, column: 12, scope: !98)
!227 = !DILocation(line: 280, column: 25, scope: !98)
!228 = !DILocation(line: 280, column: 36, scope: !98)
!229 = !DILocation(line: 282, column: 36, scope: !98)
!230 = !DILocation(line: 282, column: 13, scope: !98)
!231 = !DILocation(line: 282, column: 11, scope: !98)
!232 = !DILocation(line: 283, column: 1, scope: !98)
