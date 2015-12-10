; ModuleID = '../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/ProcessCommandLine.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tFleshConfig = type { i8*, %struct.cGH**, i32 }
%struct.cGH = type { i32, i32, i32*, i32*, i32*, i32*, i32*, i32*, i32*, double, double*, double*, i32*, i32*, i32, i32*, double, i8***, i8**, %struct.cGHGroupData* }
%struct.cGHGroupData = type { i8, i8 }
%struct.option = type { i8*, i32, i32*, i32 }

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
@CCTKi_ProcessCommandLine.long_options = private unnamed_addr constant <{ { i8*, i32, i32*, i32, [4 x i8] }, { i8*, i32, i32*, i32, [4 x i8] }, { i8*, i32, i32*, i32, [4 x i8] }, { i8*, i32, i32*, i32, [4 x i8] }, { i8*, i32, i32*, i32, [4 x i8] }, { i8*, i32, i32*, i32, [4 x i8] }, { i8*, i32, i32*, i32, [4 x i8] }, { i8*, i32, i32*, i32, [4 x i8] }, { i8*, i32, i32*, i32, [4 x i8] }, { i8*, i32, i32*, i32, [4 x i8] }, { i8*, i32, i32*, i32, [4 x i8] }, { i8*, i32, i32*, i32, [4 x i8] }, { i8*, i32, i32*, i32, [4 x i8] } }> <{ { i8*, i32, i32*, i32, [4 x i8] } { i8* getelementptr inbounds ([5 x i8]* @.str, i32 0, i32 0), i32 0, i32* null, i32 104, [4 x i8] undef }, { i8*, i32, i32*, i32, [4 x i8] } { i8* getelementptr inbounds ([24 x i8]* @.str1, i32 0, i32 0), i32 2, i32* null, i32 79, [4 x i8] undef }, { i8*, i32, i32*, i32, [4 x i8] } { i8* getelementptr inbounds ([19 x i8]* @.str2, i32 0, i32 0), i32 1, i32* null, i32 111, [4 x i8] undef }, { i8*, i32, i32*, i32, [4 x i8] } { i8* getelementptr inbounds ([16 x i8]* @.str3, i32 0, i32 0), i32 2, i32* null, i32 120, [4 x i8] undef }, { i8*, i32, i32*, i32, [4 x i8] } { i8* getelementptr inbounds ([14 x i8]* @.str4, i32 0, i32 0), i32 1, i32* null, i32 87, [4 x i8] undef }, { i8*, i32, i32*, i32, [4 x i8] } { i8* getelementptr inbounds ([12 x i8]* @.str5, i32 0, i32 0), i32 1, i32* null, i32 69, [4 x i8] undef }, { i8*, i32, i32*, i32, [4 x i8] } { i8* getelementptr inbounds ([16 x i8]* @.str6, i32 0, i32 0), i32 1, i32* null, i32 256, [4 x i8] undef }, { i8*, i32, i32*, i32, [4 x i8] } { i8* getelementptr inbounds ([16 x i8]* @.str7, i32 0, i32 0), i32 0, i32* null, i32 114, [4 x i8] undef }, { i8*, i32, i32*, i32, [4 x i8] } { i8* getelementptr inbounds ([12 x i8]* @.str8, i32 0, i32 0), i32 0, i32* null, i32 84, [4 x i8] undef }, { i8*, i32, i32*, i32, [4 x i8] } { i8* getelementptr inbounds ([20 x i8]* @.str9, i32 0, i32 0), i32 1, i32* null, i32 116, [4 x i8] undef }, { i8*, i32, i32*, i32, [4 x i8] } { i8* getelementptr inbounds ([8 x i8]* @.str10, i32 0, i32 0), i32 0, i32* null, i32 118, [4 x i8] undef }, { i8*, i32, i32*, i32, [4 x i8] } { i8* getelementptr inbounds ([12 x i8]* @.str11, i32 0, i32 0), i32 0, i32* null, i32 105, [4 x i8] undef }, { i8*, i32, i32*, i32, [4 x i8] } { i8* null, i32 0, i32* null, i32 0, [4 x i8] undef } }>, align 16
@.str12 = private unnamed_addr constant [20 x i8] c"hO::o:x::W:E:rTt:vi\00", align 1
@optarg = external global i8*
@.str13 = private unnamed_addr constant [42 x i8] c"?? getopt returned character code 0%o ??\0A\00", align 1
@optind = external global i32
@parameter_file_name = internal unnamed_addr global i8* null, align 8
@.str15 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str16 = private unnamed_addr constant [6 x i8] c"STDIN\00", align 1
@.str17 = private unnamed_addr constant [95 x i8] c"$Header: /cactus/Cactus/src/main/ProcessCommandLine.c,v 1.31 2001/05/10 12:35:14 goodale Exp $\00", align 1
@str = private unnamed_addr constant [16 x i8] c"Ignoring option\00"

; Function Attrs: nounwind optsize readnone uwtable
define i8* @CCTKi_version_main_ProcessCommandLine_c() #0 {
entry:
  ret i8* getelementptr inbounds ([95 x i8]* @.str17, i64 0, i64 0), !dbg !110
}

; Function Attrs: nounwind optsize uwtable
define i32 @CCTKi_ProcessCommandLine(i32* nocapture %inargc, i8*** nocapture %inargv, %struct.tFleshConfig* nocapture %ConfigData) #1 {
entry:
  %option_index = alloca i32, align 4
  %long_options = alloca [13 x %struct.option], align 16
  call void @llvm.dbg.value(metadata !{i32* %inargc}, i64 0, metadata !66), !dbg !111
  call void @llvm.dbg.value(metadata !{i8*** %inargv}, i64 0, metadata !67), !dbg !111
  call void @llvm.dbg.value(metadata !{%struct.tFleshConfig* %ConfigData}, i64 0, metadata !68), !dbg !111
  call void @llvm.dbg.declare(metadata !{i32* %option_index}, metadata !69), !dbg !112
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !69), !dbg !112
  store i32 0, i32* %option_index, align 4, !dbg !112, !tbaa !113
  %0 = load i32* %inargc, align 4, !dbg !116, !tbaa !113
  store i32 %0, i32* @argc, align 4, !dbg !116, !tbaa !113
  %1 = load i8*** %inargv, align 8, !dbg !117, !tbaa !118
  store i8** %1, i8*** @argv, align 8, !dbg !117, !tbaa !118
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !71), !dbg !119
  %cmp = icmp sgt i32 %0, 1, !dbg !120
  br i1 %cmp, label %while.body.preheader, label %if.else23, !dbg !120

while.body.preheader:                             ; preds = %entry
  %2 = bitcast [13 x %struct.option]* %long_options to i8*, !dbg !121
  call void @llvm.lifetime.start(i64 416, i8* %2) #3, !dbg !121
  call void @llvm.dbg.declare(metadata !{[13 x %struct.option]* %long_options}, metadata !72), !dbg !122
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %2, i8* bitcast (<{ { i8*, i32, i32*, i32, [4 x i8] }, { i8*, i32, i32*, i32, [4 x i8] }, { i8*, i32, i32*, i32, [4 x i8] }, { i8*, i32, i32*, i32, [4 x i8] }, { i8*, i32, i32*, i32, [4 x i8] }, { i8*, i32, i32*, i32, [4 x i8] }, { i8*, i32, i32*, i32, [4 x i8] }, { i8*, i32, i32*, i32, [4 x i8] }, { i8*, i32, i32*, i32, [4 x i8] }, { i8*, i32, i32*, i32, [4 x i8] }, { i8*, i32, i32*, i32, [4 x i8] }, { i8*, i32, i32*, i32, [4 x i8] }, { i8*, i32, i32*, i32, [4 x i8] } }>* @CCTKi_ProcessCommandLine.long_options to i8*), i64 416, i32 16, i1 false), !dbg !121
  %arraydecay = getelementptr inbounds [13 x %struct.option]* %long_options, i64 0, i64 0, !dbg !123
  %call28 = call i32 @getopt_long_only(i32 %0, i8** %1, i8* getelementptr inbounds ([20 x i8]* @.str12, i64 0, i64 0), %struct.option* %arraydecay, i32* %option_index) #7, !dbg !123
  call void @llvm.dbg.value(metadata !{i32 %call28}, i64 0, metadata !70), !dbg !123
  %cmp129 = icmp eq i32 %call28, -1, !dbg !124
  br i1 %cmp129, label %while.end, label %if.end, !dbg !124

if.end:                                           ; preds = %while.body.preheader, %while.body.backedge
  %call31 = phi i32 [ %call, %while.body.backedge ], [ %call28, %while.body.preheader ]
  %ignore.030 = phi i32 [ %ignore.0.be, %while.body.backedge ], [ 0, %while.body.preheader ]
  %tobool = icmp eq i32 %ignore.030, 0, !dbg !125
  br i1 %tobool, label %if.then3, label %if.else, !dbg !125

if.then3:                                         ; preds = %if.end
  switch i32 %call31, label %sw.default [
    i32 116, label %sw.bb
    i32 79, label %sw.bb4
    i32 111, label %sw.bb5
    i32 120, label %sw.bb6
    i32 87, label %sw.bb7
    i32 69, label %sw.bb8
    i32 256, label %sw.bb9
    i32 114, label %sw.bb10
    i32 84, label %sw.bb11
    i32 118, label %sw.bb12
    i32 105, label %while.body.backedge
    i32 104, label %sw.bb14
    i32 63, label %sw.bb14
  ], !dbg !126

while.body.backedge:                              ; preds = %if.then3, %sw.bb, %sw.bb4, %sw.bb5, %sw.bb6, %sw.bb7, %sw.bb8, %sw.bb9, %sw.bb10, %sw.bb11, %sw.bb12, %sw.bb14, %sw.default, %if.else
  %ignore.0.be = phi i32 [ 1, %if.then3 ], [ 0, %sw.bb ], [ 0, %sw.bb4 ], [ 0, %sw.bb5 ], [ 0, %sw.bb6 ], [ 0, %sw.bb7 ], [ 0, %sw.bb8 ], [ 0, %sw.bb9 ], [ 0, %sw.bb10 ], [ 0, %sw.bb11 ], [ 0, %sw.bb12 ], [ 0, %sw.bb14 ], [ 0, %sw.default ], [ 0, %if.else ]
  call void @llvm.lifetime.start(i64 416, i8* %2) #3, !dbg !121
  call void @llvm.dbg.declare(metadata !{[13 x %struct.option]* %long_options}, metadata !72), !dbg !122
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %2, i8* bitcast (<{ { i8*, i32, i32*, i32, [4 x i8] }, { i8*, i32, i32*, i32, [4 x i8] }, { i8*, i32, i32*, i32, [4 x i8] }, { i8*, i32, i32*, i32, [4 x i8] }, { i8*, i32, i32*, i32, [4 x i8] }, { i8*, i32, i32*, i32, [4 x i8] }, { i8*, i32, i32*, i32, [4 x i8] }, { i8*, i32, i32*, i32, [4 x i8] }, { i8*, i32, i32*, i32, [4 x i8] }, { i8*, i32, i32*, i32, [4 x i8] }, { i8*, i32, i32*, i32, [4 x i8] }, { i8*, i32, i32*, i32, [4 x i8] }, { i8*, i32, i32*, i32, [4 x i8] } }>* @CCTKi_ProcessCommandLine.long_options to i8*), i64 416, i32 16, i1 false), !dbg !121
  %3 = load i32* @argc, align 4, !dbg !123, !tbaa !113
  %4 = load i8*** @argv, align 8, !dbg !123, !tbaa !118
  %call = call i32 @getopt_long_only(i32 %3, i8** %4, i8* getelementptr inbounds ([20 x i8]* @.str12, i64 0, i64 0), %struct.option* %arraydecay, i32* %option_index) #7, !dbg !123
  call void @llvm.dbg.value(metadata !{i32 %call31}, i64 0, metadata !70), !dbg !123
  %cmp1 = icmp eq i32 %call, -1, !dbg !124
  br i1 %cmp1, label %while.end, label %if.end, !dbg !124

sw.bb:                                            ; preds = %if.then3
  %5 = load i8** @optarg, align 8, !dbg !128, !tbaa !118
  call void @CCTKi_CommandLineTestThornCompiled(i8* %5) #7, !dbg !128
  br label %while.body.backedge, !dbg !128

sw.bb4:                                           ; preds = %if.then3
  %6 = load i8** @optarg, align 8, !dbg !130, !tbaa !118
  call void @CCTKi_CommandLineDescribeAllParameters(i8* %6) #7, !dbg !130
  br label %while.body.backedge, !dbg !130

sw.bb5:                                           ; preds = %if.then3
  %7 = load i8** @optarg, align 8, !dbg !131, !tbaa !118
  call void @CCTKi_CommandLineDescribeParameter(i8* %7) #7, !dbg !131
  br label %while.body.backedge, !dbg !131

sw.bb6:                                           ; preds = %if.then3
  %8 = load i8** @optarg, align 8, !dbg !132, !tbaa !118
  call void @CCTKi_CommandLineTestParameters(i8* %8) #7, !dbg !132
  br label %while.body.backedge, !dbg !132

sw.bb7:                                           ; preds = %if.then3
  %9 = load i8** @optarg, align 8, !dbg !133, !tbaa !118
  call void @CCTKi_CommandLineWarningLevel(i8* %9) #7, !dbg !133
  br label %while.body.backedge, !dbg !133

sw.bb8:                                           ; preds = %if.then3
  %10 = load i8** @optarg, align 8, !dbg !134, !tbaa !118
  call void @CCTKi_CommandLineErrorLevel(i8* %10) #7, !dbg !134
  br label %while.body.backedge, !dbg !134

sw.bb9:                                           ; preds = %if.then3
  %11 = load i8** @optarg, align 8, !dbg !135, !tbaa !118
  call void @CCTKi_CommandLineParameterLevel(i8* %11) #7, !dbg !135
  br label %while.body.backedge, !dbg !135

sw.bb10:                                          ; preds = %if.then3
  call void @CCTKi_CommandLineRedirectStdout() #7, !dbg !136
  br label %while.body.backedge, !dbg !136

sw.bb11:                                          ; preds = %if.then3
  call void @CCTKi_CommandLineListThorns() #7, !dbg !137
  br label %while.body.backedge, !dbg !137

sw.bb12:                                          ; preds = %if.then3
  call void @CCTKi_CommandLineVersion() #7, !dbg !138
  br label %while.body.backedge, !dbg !138

sw.bb14:                                          ; preds = %if.then3, %if.then3
  call void @CCTKi_CommandLineHelp() #7, !dbg !139
  br label %while.body.backedge, !dbg !139

sw.default:                                       ; preds = %if.then3
  %call15 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([42 x i8]* @.str13, i64 0, i64 0), i32 %call31) #7, !dbg !140
  br label %while.body.backedge, !dbg !141

if.else:                                          ; preds = %if.end
  %puts = call i32 @puts(i8* getelementptr inbounds ([16 x i8]* @str, i64 0, i64 0)), !dbg !142
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !71), !dbg !144
  br label %while.body.backedge

while.end:                                        ; preds = %while.body.backedge, %while.body.preheader
  call void @llvm.lifetime.end(i64 416, i8* %2) #3, !dbg !145
  %12 = load i32* @argc, align 4, !dbg !146, !tbaa !113
  %13 = load i32* @optind, align 4, !dbg !146, !tbaa !113
  %cmp18 = icmp sgt i32 %12, %13, !dbg !146
  br i1 %cmp18, label %if.then19, label %if.else21, !dbg !146

if.then19:                                        ; preds = %while.end
  %idxprom = sext i32 %13 to i64, !dbg !147
  %14 = load i8*** @argv, align 8, !dbg !147, !tbaa !118
  %arrayidx = getelementptr inbounds i8** %14, i64 %idxprom, !dbg !147
  %15 = load i8** %arrayidx, align 8, !dbg !147, !tbaa !118
  %parameter_file_name = getelementptr inbounds %struct.tFleshConfig* %ConfigData, i64 0, i32 0, !dbg !147
  store i8* %15, i8** %parameter_file_name, align 8, !dbg !147, !tbaa !118
  store i8* %15, i8** @parameter_file_name, align 8, !dbg !149, !tbaa !118
  br label %if.end24, !dbg !150

if.else21:                                        ; preds = %while.end
  call void @CCTKi_CommandLineUsage() #7, !dbg !151
  br label %if.end24

if.else23:                                        ; preds = %entry
  call void @CCTKi_CommandLineUsage() #7, !dbg !153
  br label %if.end24

if.end24:                                         ; preds = %if.then19, %if.else21, %if.else23
  call void @CCTKi_CommandLineFinished() #7, !dbg !155
  ret i32 0, !dbg !156
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #3

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture, i64, i32, i1) #3

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
declare i32 @printf(i8* nocapture, ...) #5

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #3

; Function Attrs: optsize
declare void @CCTKi_CommandLineUsage() #4

; Function Attrs: optsize
declare void @CCTKi_CommandLineFinished() #4

; Function Attrs: nounwind optsize uwtable
define i32 @CCTK_CommandLine(i8*** nocapture %outargv) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{i8*** %outargv}, i64 0, metadata !89), !dbg !157
  %0 = load i8*** @argv, align 8, !dbg !158, !tbaa !118
  store i8** %0, i8*** %outargv, align 8, !dbg !158, !tbaa !118
  %1 = load i32* @argc, align 4, !dbg !159, !tbaa !113
  ret i32 %1, !dbg !159
}

; Function Attrs: nounwind optsize uwtable
define i32 @CCTK_ParameterFilename(i32 %len, i8* %filename) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %len}, i64 0, metadata !94), !dbg !160
  tail call void @llvm.dbg.value(metadata !{i8* %filename}, i64 0, metadata !95), !dbg !160
  %0 = load i8** @parameter_file_name, align 8, !dbg !161, !tbaa !118
  %call = tail call i32 @CCTK_Equals(i8* %0, i8* getelementptr inbounds ([2 x i8]* @.str15, i64 0, i64 0)) #7, !dbg !161
  %tobool = icmp eq i32 %call, 0, !dbg !161
  %1 = load i8** @parameter_file_name, align 8, !dbg !162, !tbaa !118
  tail call void @llvm.dbg.value(metadata !{i8* %1}, i64 0, metadata !97), !dbg !162
  %copy_string.0 = select i1 %tobool, i8* %1, i8* getelementptr inbounds ([6 x i8]* @.str16, i64 0, i64 0), !dbg !161
  %call2 = tail call i64 @strlen(i8* %copy_string.0) #8, !dbg !164
  %conv = trunc i64 %call2 to i32, !dbg !164
  tail call void @llvm.dbg.value(metadata !{i32 %conv}, i64 0, metadata !96), !dbg !164
  %sub = add nsw i32 %len, -1, !dbg !165
  %cmp = icmp sgt i32 %conv, %sub, !dbg !165
  tail call void @llvm.dbg.value(metadata !{i32 %sub}, i64 0, metadata !96), !dbg !166
  %sub.conv = select i1 %cmp, i32 %sub, i32 %conv, !dbg !165
  %conv7 = sext i32 %sub.conv to i64, !dbg !168
  %call8 = tail call i8* @strncpy(i8* %filename, i8* %copy_string.0, i64 %conv7) #7, !dbg !168
  %arrayidx = getelementptr inbounds i8* %filename, i64 %conv7, !dbg !169
  store i8 0, i8* %arrayidx, align 1, !dbg !169, !tbaa !114
  ret i32 %sub.conv, !dbg !170
}

; Function Attrs: optsize
declare i32 @CCTK_Equals(i8*, i8*) #4

; Function Attrs: nounwind optsize readonly
declare i64 @strlen(i8* nocapture) #6

; Function Attrs: nounwind optsize
declare i8* @strncpy(i8*, i8* nocapture, i64) #5

; Function Attrs: nounwind optsize uwtable
define void @cctk_parameterfilename_(i32* nocapture %retval, i32* nocapture %len, i8* %name) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32* %retval}, i64 0, metadata !102), !dbg !171
  tail call void @llvm.dbg.value(metadata !{i32* %len}, i64 0, metadata !103), !dbg !171
  tail call void @llvm.dbg.value(metadata !{i8* %name}, i64 0, metadata !104), !dbg !171
  %0 = load i32* %len, align 4, !dbg !172, !tbaa !113
  %call = tail call i32 @CCTK_ParameterFilename(i32 %0, i8* %name) #9, !dbg !172
  store i32 %call, i32* %retval, align 4, !dbg !172, !tbaa !113
  ret void, !dbg !173
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #2

; Function Attrs: nounwind
declare i32 @puts(i8* nocapture) #3

attributes #0 = { nounwind optsize readnone uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone }
attributes #3 = { nounwind }
attributes #4 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind optsize readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind optsize }
attributes #8 = { nounwind optsize readonly }
attributes #9 = { optsize }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !105, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/ProcessCommandLine.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/ProcessCommandLine.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4, metadata !11, metadata !85, metadata !90, metadata !98}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"CCTKi_version_main_ProcessCommandLine_c", metadata !"CCTKi_version_main_ProcessCommandLine_c", metadata !"", i32 26, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* ()* @CCTKi_version_main_ProcessCommandLine_c, null, null, metadata !2, i32 26} ; [ DW_TAG_subprogram ] [line 26] [def] [CCTKi_version_main_ProcessCommandLine_c]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/ProcessCommandLine.c]
!6 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8}
!8 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !9} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!9 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !10} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from char]
!10 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!11 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"CCTKi_ProcessCommandLine", metadata !"CCTKi_ProcessCommandLine", metadata !"", i32 97, metadata !12, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32*, i8***, %struct.tFleshConfig*)* @CCTKi_ProcessCommandLine, null, null, metadata !65, i32 98} ; [ DW_TAG_subprogram ] [line 97] [def] [scope 98] [CCTKi_ProcessCommandLine]
!12 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !13, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!13 = metadata !{metadata !14, metadata !15, metadata !16, metadata !19}
!14 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!15 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !14} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from int]
!16 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !17} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!17 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !18} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!18 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !10} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from char]
!19 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !20} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from tFleshConfig]
!20 = metadata !{i32 786454, metadata !1, null, metadata !"tFleshConfig", i32 28, i64 0, i64 0, i64 0, i32 0, metadata !21} ; [ DW_TAG_typedef ] [tFleshConfig] [line 28, size 0, align 0, offset 0] [from ]
!21 = metadata !{i32 786451, metadata !22, null, metadata !"", i32 19, i64 192, i64 64, i32 0, i32 0, null, metadata !23, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 19, size 192, align 64, offset 0] [from ]
!22 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/../include/cctk_Flesh.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!23 = metadata !{metadata !24, metadata !25, metadata !63}
!24 = metadata !{i32 786445, metadata !22, metadata !21, metadata !"parameter_file_name", i32 21, i64 64, i64 64, i64 0, i32 0, metadata !18} ; [ DW_TAG_member ] [parameter_file_name] [line 21, size 64, align 64, offset 0] [from ]
!25 = metadata !{i32 786445, metadata !22, metadata !21, metadata !"GH", i32 24, i64 64, i64 64, i64 64, i32 0, metadata !26} ; [ DW_TAG_member ] [GH] [line 24, size 64, align 64, offset 64] [from ]
!26 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !27} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!27 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !28} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from cGH]
!28 = metadata !{i32 786454, metadata !22, null, metadata !"cGH", i32 75, i64 0, i64 0, i64 0, i32 0, metadata !29} ; [ DW_TAG_typedef ] [cGH] [line 75, size 0, align 0, offset 0] [from ]
!29 = metadata !{i32 786451, metadata !30, null, metadata !"", i32 24, i64 1216, i64 64, i32 0, i32 0, null, metadata !31, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 24, size 1216, align 64, offset 0] [from ]
!30 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/../include/cGH.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!31 = metadata !{metadata !32, metadata !33, metadata !34, metadata !35, metadata !36, metadata !37, metadata !38, metadata !39, metadata !40, metadata !41, metadata !43, metadata !45, metadata !46, metadata !47, metadata !48, metadata !49, metadata !50, metadata !51, metadata !55, metadata !56}
!32 = metadata !{i32 786445, metadata !30, metadata !29, metadata !"cctk_dim", i32 26, i64 32, i64 32, i64 0, i32 0, metadata !14} ; [ DW_TAG_member ] [cctk_dim] [line 26, size 32, align 32, offset 0] [from int]
!33 = metadata !{i32 786445, metadata !30, metadata !29, metadata !"cctk_iteration", i32 27, i64 32, i64 32, i64 32, i32 0, metadata !14} ; [ DW_TAG_member ] [cctk_iteration] [line 27, size 32, align 32, offset 32] [from int]
!34 = metadata !{i32 786445, metadata !30, metadata !29, metadata !"cctk_gsh", i32 30, i64 64, i64 64, i64 64, i32 0, metadata !15} ; [ DW_TAG_member ] [cctk_gsh] [line 30, size 64, align 64, offset 64] [from ]
!35 = metadata !{i32 786445, metadata !30, metadata !29, metadata !"cctk_lsh", i32 31, i64 64, i64 64, i64 128, i32 0, metadata !15} ; [ DW_TAG_member ] [cctk_lsh] [line 31, size 64, align 64, offset 128] [from ]
!36 = metadata !{i32 786445, metadata !30, metadata !29, metadata !"cctk_lbnd", i32 32, i64 64, i64 64, i64 192, i32 0, metadata !15} ; [ DW_TAG_member ] [cctk_lbnd] [line 32, size 64, align 64, offset 192] [from ]
!37 = metadata !{i32 786445, metadata !30, metadata !29, metadata !"cctk_ubnd", i32 33, i64 64, i64 64, i64 256, i32 0, metadata !15} ; [ DW_TAG_member ] [cctk_ubnd] [line 33, size 64, align 64, offset 256] [from ]
!38 = metadata !{i32 786445, metadata !30, metadata !29, metadata !"cctk_lssh", i32 36, i64 64, i64 64, i64 320, i32 0, metadata !15} ; [ DW_TAG_member ] [cctk_lssh] [line 36, size 64, align 64, offset 320] [from ]
!39 = metadata !{i32 786445, metadata !30, metadata !29, metadata !"cctk_to", i32 39, i64 64, i64 64, i64 384, i32 0, metadata !15} ; [ DW_TAG_member ] [cctk_to] [line 39, size 64, align 64, offset 384] [from ]
!40 = metadata !{i32 786445, metadata !30, metadata !29, metadata !"cctk_from", i32 40, i64 64, i64 64, i64 448, i32 0, metadata !15} ; [ DW_TAG_member ] [cctk_from] [line 40, size 64, align 64, offset 448] [from ]
!41 = metadata !{i32 786445, metadata !30, metadata !29, metadata !"cctk_delta_time", i32 43, i64 64, i64 64, i64 512, i32 0, metadata !42} ; [ DW_TAG_member ] [cctk_delta_time] [line 43, size 64, align 64, offset 512] [from double]
!42 = metadata !{i32 786468, null, null, metadata !"double", i32 0, i64 64, i64 64, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [double] [line 0, size 64, align 64, offset 0, enc DW_ATE_float]
!43 = metadata !{i32 786445, metadata !30, metadata !29, metadata !"cctk_delta_space", i32 44, i64 64, i64 64, i64 576, i32 0, metadata !44} ; [ DW_TAG_member ] [cctk_delta_space] [line 44, size 64, align 64, offset 576] [from ]
!44 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !42} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from double]
!45 = metadata !{i32 786445, metadata !30, metadata !29, metadata !"cctk_origin_space", i32 47, i64 64, i64 64, i64 640, i32 0, metadata !44} ; [ DW_TAG_member ] [cctk_origin_space] [line 47, size 64, align 64, offset 640] [from ]
!46 = metadata !{i32 786445, metadata !30, metadata !29, metadata !"cctk_bbox", i32 51, i64 64, i64 64, i64 704, i32 0, metadata !15} ; [ DW_TAG_member ] [cctk_bbox] [line 51, size 64, align 64, offset 704] [from ]
!47 = metadata !{i32 786445, metadata !30, metadata !29, metadata !"cctk_levfac", i32 54, i64 64, i64 64, i64 768, i32 0, metadata !15} ; [ DW_TAG_member ] [cctk_levfac] [line 54, size 64, align 64, offset 768] [from ]
!48 = metadata !{i32 786445, metadata !30, metadata !29, metadata !"cctk_convlevel", i32 57, i64 32, i64 32, i64 832, i32 0, metadata !14} ; [ DW_TAG_member ] [cctk_convlevel] [line 57, size 32, align 32, offset 832] [from int]
!49 = metadata !{i32 786445, metadata !30, metadata !29, metadata !"cctk_nghostzones", i32 60, i64 64, i64 64, i64 896, i32 0, metadata !15} ; [ DW_TAG_member ] [cctk_nghostzones] [line 60, size 64, align 64, offset 896] [from ]
!50 = metadata !{i32 786445, metadata !30, metadata !29, metadata !"cctk_time", i32 63, i64 64, i64 64, i64 960, i32 0, metadata !42} ; [ DW_TAG_member ] [cctk_time] [line 63, size 64, align 64, offset 960] [from double]
!51 = metadata !{i32 786445, metadata !30, metadata !29, metadata !"data", i32 67, i64 64, i64 64, i64 1024, i32 0, metadata !52} ; [ DW_TAG_member ] [data] [line 67, size 64, align 64, offset 1024] [from ]
!52 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !53} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!53 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !54} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!54 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, null} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!55 = metadata !{i32 786445, metadata !30, metadata !29, metadata !"extensions", i32 70, i64 64, i64 64, i64 1088, i32 0, metadata !53} ; [ DW_TAG_member ] [extensions] [line 70, size 64, align 64, offset 1088] [from ]
!56 = metadata !{i32 786445, metadata !30, metadata !29, metadata !"GroupData", i32 73, i64 64, i64 64, i64 1152, i32 0, metadata !57} ; [ DW_TAG_member ] [GroupData] [line 73, size 64, align 64, offset 1152] [from ]
!57 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !58} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from cGHGroupData]
!58 = metadata !{i32 786454, metadata !30, null, metadata !"cGHGroupData", i32 22, i64 0, i64 0, i64 0, i32 0, metadata !59} ; [ DW_TAG_typedef ] [cGHGroupData] [line 22, size 0, align 0, offset 0] [from ]
!59 = metadata !{i32 786451, metadata !30, null, metadata !"", i32 18, i64 16, i64 8, i32 0, i32 0, null, metadata !60, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 18, size 16, align 8, offset 0] [from ]
!60 = metadata !{metadata !61, metadata !62}
!61 = metadata !{i32 786445, metadata !30, metadata !59, metadata !"storage", i32 20, i64 8, i64 8, i64 0, i32 0, metadata !10} ; [ DW_TAG_member ] [storage] [line 20, size 8, align 8, offset 0] [from char]
!62 = metadata !{i32 786445, metadata !30, metadata !59, metadata !"comm", i32 21, i64 8, i64 8, i64 8, i32 0, metadata !10} ; [ DW_TAG_member ] [comm] [line 21, size 8, align 8, offset 8] [from char]
!63 = metadata !{i32 786445, metadata !22, metadata !21, metadata !"nGHs", i32 25, i64 32, i64 32, i64 128, i32 0, metadata !64} ; [ DW_TAG_member ] [nGHs] [line 25, size 32, align 32, offset 128] [from unsigned int]
!64 = metadata !{i32 786468, null, null, metadata !"unsigned int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned int] [line 0, size 32, align 32, offset 0, enc DW_ATE_unsigned]
!65 = metadata !{metadata !66, metadata !67, metadata !68, metadata !69, metadata !70, metadata !71, metadata !72}
!66 = metadata !{i32 786689, metadata !11, metadata !"inargc", metadata !5, i32 16777313, metadata !15, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [inargc] [line 97]
!67 = metadata !{i32 786689, metadata !11, metadata !"inargv", metadata !5, i32 33554529, metadata !16, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [inargv] [line 97]
!68 = metadata !{i32 786689, metadata !11, metadata !"ConfigData", metadata !5, i32 50331745, metadata !19, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ConfigData] [line 97]
!69 = metadata !{i32 786688, metadata !11, metadata !"option_index", metadata !5, i32 100, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [option_index] [line 100]
!70 = metadata !{i32 786688, metadata !11, metadata !"c", metadata !5, i32 101, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [c] [line 101]
!71 = metadata !{i32 786688, metadata !11, metadata !"ignore", metadata !5, i32 102, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ignore] [line 102]
!72 = metadata !{i32 786688, metadata !73, metadata !"long_options", metadata !5, i32 117, metadata !75, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [long_options] [line 117]
!73 = metadata !{i32 786443, metadata !1, metadata !74, i32 116, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/ProcessCommandLine.c]
!74 = metadata !{i32 786443, metadata !1, metadata !11, i32 114, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/ProcessCommandLine.c]
!75 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 3328, i64 64, i32 0, i32 0, metadata !76, metadata !83, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 3328, align 64, offset 0] [from option]
!76 = metadata !{i32 786451, metadata !77, null, metadata !"option", i32 83, i64 256, i64 64, i32 0, i32 0, null, metadata !78, i32 0, null, null} ; [ DW_TAG_structure_type ] [option] [line 83, size 256, align 64, offset 0] [from ]
!77 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/../include/getopt.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!78 = metadata !{metadata !79, metadata !80, metadata !81, metadata !82}
!79 = metadata !{i32 786445, metadata !77, metadata !76, metadata !"name", i32 86, i64 64, i64 64, i64 0, i32 0, metadata !8} ; [ DW_TAG_member ] [name] [line 86, size 64, align 64, offset 0] [from ]
!80 = metadata !{i32 786445, metadata !77, metadata !76, metadata !"has_arg", i32 92, i64 32, i64 32, i64 64, i32 0, metadata !14} ; [ DW_TAG_member ] [has_arg] [line 92, size 32, align 32, offset 64] [from int]
!81 = metadata !{i32 786445, metadata !77, metadata !76, metadata !"flag", i32 93, i64 64, i64 64, i64 128, i32 0, metadata !15} ; [ DW_TAG_member ] [flag] [line 93, size 64, align 64, offset 128] [from ]
!82 = metadata !{i32 786445, metadata !77, metadata !76, metadata !"val", i32 94, i64 32, i64 32, i64 192, i32 0, metadata !14} ; [ DW_TAG_member ] [val] [line 94, size 32, align 32, offset 192] [from int]
!83 = metadata !{metadata !84}
!84 = metadata !{i32 786465, i64 0, i64 13}       ; [ DW_TAG_subrange_type ] [0, 12]
!85 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"CCTK_CommandLine", metadata !"CCTK_CommandLine", metadata !"", i32 214, metadata !86, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8***)* @CCTK_CommandLine, null, null, metadata !88, i32 215} ; [ DW_TAG_subprogram ] [line 214] [def] [scope 215] [CCTK_CommandLine]
!86 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !87, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!87 = metadata !{metadata !14, metadata !16}
!88 = metadata !{metadata !89}
!89 = metadata !{i32 786689, metadata !85, metadata !"outargv", metadata !5, i32 16777430, metadata !16, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [outargv] [line 214]
!90 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"CCTK_ParameterFilename", metadata !"CCTK_ParameterFilename", metadata !"", i32 255, metadata !91, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32, i8*)* @CCTK_ParameterFilename, null, null, metadata !93, i32 256} ; [ DW_TAG_subprogram ] [line 255] [def] [scope 256] [CCTK_ParameterFilename]
!91 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !92, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!92 = metadata !{metadata !14, metadata !14, metadata !18}
!93 = metadata !{metadata !94, metadata !95, metadata !96, metadata !97}
!94 = metadata !{i32 786689, metadata !90, metadata !"len", metadata !5, i32 16777471, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [len] [line 255]
!95 = metadata !{i32 786689, metadata !90, metadata !"filename", metadata !5, i32 33554687, metadata !18, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [filename] [line 255]
!96 = metadata !{i32 786688, metadata !90, metadata !"retval", metadata !5, i32 257, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [retval] [line 257]
!97 = metadata !{i32 786688, metadata !90, metadata !"copy_string", metadata !5, i32 258, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [copy_string] [line 258]
!98 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"cctk_parameterfilename_", metadata !"cctk_parameterfilename_", metadata !"", i32 279, metadata !99, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i32*, i32*, i8*)* @cctk_parameterfilename_, null, null, metadata !101, i32 281} ; [ DW_TAG_subprogram ] [line 279] [def] [scope 281] [cctk_parameterfilename_]
!99 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !100, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!100 = metadata !{null, metadata !15, metadata !15, metadata !18}
!101 = metadata !{metadata !102, metadata !103, metadata !104}
!102 = metadata !{i32 786689, metadata !98, metadata !"retval", metadata !5, i32 16777496, metadata !15, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [retval] [line 280]
!103 = metadata !{i32 786689, metadata !98, metadata !"len", metadata !5, i32 33554712, metadata !15, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [len] [line 280]
!104 = metadata !{i32 786689, metadata !98, metadata !"name", metadata !5, i32 50331928, metadata !18, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [name] [line 280]
!105 = metadata !{metadata !106, metadata !107, metadata !108, metadata !109}
!106 = metadata !{i32 786484, i32 0, null, metadata !"parameter_file_name", metadata !"parameter_file_name", metadata !"", metadata !5, i32 47, metadata !18, i32 1, i32 1, i8** @parameter_file_name, null} ; [ DW_TAG_variable ] [parameter_file_name] [line 47] [local] [def]
!107 = metadata !{i32 786484, i32 0, null, metadata !"argv", metadata !"argv", metadata !"", metadata !5, i32 51, metadata !17, i32 1, i32 1, i8*** @argv, null} ; [ DW_TAG_variable ] [argv] [line 51] [local] [def]
!108 = metadata !{i32 786484, i32 0, null, metadata !"argc", metadata !"argc", metadata !"", metadata !5, i32 49, metadata !14, i32 1, i32 1, i32* @argc, null} ; [ DW_TAG_variable ] [argc] [line 49] [local] [def]
!109 = metadata !{i32 786484, i32 0, null, metadata !"rcsid", metadata !"rcsid", metadata !"", metadata !5, i32 24, metadata !8, i32 1, i32 1, null, null}
!110 = metadata !{i32 26, i32 0, metadata !4, null}
!111 = metadata !{i32 97, i32 0, metadata !11, null}
!112 = metadata !{i32 100, i32 0, metadata !11, null}
!113 = metadata !{metadata !"int", metadata !114}
!114 = metadata !{metadata !"omnipotent char", metadata !115}
!115 = metadata !{metadata !"Simple C/C++ TBAA"}
!116 = metadata !{i32 105, i32 0, metadata !11, null}
!117 = metadata !{i32 107, i32 0, metadata !11, null}
!118 = metadata !{metadata !"any pointer", metadata !114}
!119 = metadata !{i32 109, i32 0, metadata !11, null}
!120 = metadata !{i32 113, i32 0, metadata !11, null}
!121 = metadata !{i32 132, i32 0, metadata !73, null}
!122 = metadata !{i32 117, i32 0, metadata !73, null}
!123 = metadata !{i32 134, i32 0, metadata !73, null}
!124 = metadata !{i32 136, i32 0, metadata !73, null}
!125 = metadata !{i32 139, i32 0, metadata !73, null}
!126 = metadata !{i32 141, i32 0, metadata !127, null}
!127 = metadata !{i32 786443, metadata !1, metadata !73, i32 140, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/ProcessCommandLine.c]
!128 = metadata !{i32 143, i32 0, metadata !129, null}
!129 = metadata !{i32 786443, metadata !1, metadata !127, i32 142, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/ProcessCommandLine.c]
!130 = metadata !{i32 144, i32 0, metadata !129, null}
!131 = metadata !{i32 145, i32 0, metadata !129, null}
!132 = metadata !{i32 146, i32 0, metadata !129, null}
!133 = metadata !{i32 147, i32 0, metadata !129, null}
!134 = metadata !{i32 148, i32 0, metadata !129, null}
!135 = metadata !{i32 149, i32 0, metadata !129, null}
!136 = metadata !{i32 150, i32 0, metadata !129, null}
!137 = metadata !{i32 151, i32 0, metadata !129, null}
!138 = metadata !{i32 152, i32 0, metadata !129, null}
!139 = metadata !{i32 156, i32 0, metadata !129, null}
!140 = metadata !{i32 158, i32 0, metadata !129, null}
!141 = metadata !{i32 159, i32 0, metadata !129, null}
!142 = metadata !{i32 163, i32 0, metadata !143, null}
!143 = metadata !{i32 786443, metadata !1, metadata !73, i32 162, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/ProcessCommandLine.c]
!144 = metadata !{i32 164, i32 0, metadata !143, null}
!145 = metadata !{i32 166, i32 0, metadata !73, null}
!146 = metadata !{i32 168, i32 0, metadata !74, null}
!147 = metadata !{i32 170, i32 0, metadata !148, null}
!148 = metadata !{i32 786443, metadata !1, metadata !74, i32 169, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/ProcessCommandLine.c]
!149 = metadata !{i32 171, i32 0, metadata !148, null}
!150 = metadata !{i32 172, i32 0, metadata !148, null}
!151 = metadata !{i32 175, i32 0, metadata !152, null}
!152 = metadata !{i32 786443, metadata !1, metadata !74, i32 174, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/ProcessCommandLine.c]
!153 = metadata !{i32 180, i32 0, metadata !154, null}
!154 = metadata !{i32 786443, metadata !1, metadata !11, i32 179, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/ProcessCommandLine.c]
!155 = metadata !{i32 183, i32 0, metadata !11, null}
!156 = metadata !{i32 185, i32 0, metadata !11, null}
!157 = metadata !{i32 214, i32 0, metadata !85, null}
!158 = metadata !{i32 216, i32 0, metadata !85, null}
!159 = metadata !{i32 218, i32 0, metadata !85, null}
!160 = metadata !{i32 255, i32 0, metadata !90, null}
!161 = metadata !{i32 261, i32 0, metadata !90, null}
!162 = metadata !{i32 267, i32 0, metadata !163, null}
!163 = metadata !{i32 786443, metadata !1, metadata !90, i32 266, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/ProcessCommandLine.c]
!164 = metadata !{i32 269, i32 0, metadata !90, null}
!165 = metadata !{i32 270, i32 0, metadata !90, null}
!166 = metadata !{i32 272, i32 0, metadata !167, null}
!167 = metadata !{i32 786443, metadata !1, metadata !90, i32 271, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/ProcessCommandLine.c]
!168 = metadata !{i32 274, i32 0, metadata !90, null}
!169 = metadata !{i32 275, i32 0, metadata !90, null}
!170 = metadata !{i32 276, i32 0, metadata !90, null}
!171 = metadata !{i32 280, i32 0, metadata !98, null}
!172 = metadata !{i32 282, i32 0, metadata !98, null}
!173 = metadata !{i32 283, i32 0, metadata !98, null}
