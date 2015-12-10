; ModuleID = '../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/CommandLine.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cGH = type { i32, i32, i32*, i32*, i32*, i32*, i32*, i32*, i32*, double, double*, double*, i32*, i32*, i32, i32*, double, i8***, i8**, %struct.cGHGroupData* }
%struct.cGHGroupData = type { i8, i8 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.PARAM_PROPS = type { i8*, i8*, i32, i8*, i8*, i32, %struct.RANGE*, i32, i32 }
%struct.RANGE = type { %struct.RANGE*, %struct.RANGE*, i8*, i8*, i32, i8* }

@CCTK_MyProc = external global i32 (%struct.cGH*)*
@.str = private unnamed_addr constant [25 x i8] c"Thorn '%s' %savailable.\0A\00", align 1
@.str1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str2 = private unnamed_addr constant [3 x i8] c"un\00", align 1
@CCTK_Exit = external global i32 (%struct.cGH*, i32)*
@.str3 = private unnamed_addr constant [58 x i8] c"\0AParameters of thorn '%s' providing implementation '%s':\0A\00", align 1
@stderr = external global %struct._IO_FILE*
@.str4 = private unnamed_addr constant [29 x i8] c"Unknown verbosity option %s\0A\00", align 1
@.str6 = private unnamed_addr constant [3 x i8] c"::\00", align 1
@paramchecking = internal unnamed_addr global i1 false
@cctki_paramchecking = common global i32 0, align 4
@cctki_paramcheck_nprocs = common global i32 0, align 4
@.str7 = private unnamed_addr constant [7 x i8] c"strict\00", align 1
@.str8 = private unnamed_addr constant [7 x i8] c"normal\00", align 1
@.str9 = private unnamed_addr constant [8 x i8] c"relaxed\00", align 1
@.str10 = private unnamed_addr constant [68 x i8] c"../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/CommandLine.c\00", align 1
@.str11 = private unnamed_addr constant [7 x i8] c"Cactus\00", align 1
@.str12 = private unnamed_addr constant [100 x i8] c"CCTKi_CommandLineParameterLevel: Parameter checking level '%s' not recognized, defaulting to normal\00", align 1
@redirectsubs = internal unnamed_addr global i1 false
@stdout = external global %struct._IO_FILE*
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
@.str25 = private unnamed_addr constant [20 x i8] c"Parameter:   %s::%s\00", align 1
@.str26 = private unnamed_addr constant [9 x i8] c", %s::%s\00", align 1
@.str28 = private unnamed_addr constant [19 x i8] c"Description: \22%s\22\0A\00", align 1
@.str29 = private unnamed_addr constant [17 x i8] c"Type:        %s\0A\00", align 1
@cctk_parameter_type_names = internal unnamed_addr constant [6 x i8*] [i8* getelementptr inbounds ([8 x i8]* @.str40, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @.str41, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @.str42, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8]* @.str43, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @.str44, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8]* @.str45, i32 0, i32 0)], align 16
@.str30 = private unnamed_addr constant [17 x i8] c"Default:     %s\0A\00", align 1
@.str31 = private unnamed_addr constant [17 x i8] c"Scope:       %s\0A\00", align 1
@cctk_parameter_scopes = internal unnamed_addr constant [5 x i8*] [i8* getelementptr inbounds ([7 x i8]* @.str35, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8]* @.str36, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8]* @.str37, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8]* @.str38, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @.str39, i32 0, i32 0)], align 16
@.str32 = private unnamed_addr constant [17 x i8] c"  Range:     %s\0A\00", align 1
@.str33 = private unnamed_addr constant [21 x i8] c"    Origin:      %s\0A\00", align 1
@.str34 = private unnamed_addr constant [21 x i8] c"    Description: %s\0A\00", align 1
@.str35 = private unnamed_addr constant [7 x i8] c"GLOBAL\00", align 1
@.str36 = private unnamed_addr constant [11 x i8] c"RESTRICTED\00", align 1
@.str37 = private unnamed_addr constant [8 x i8] c"PRIVATE\00", align 1
@.str38 = private unnamed_addr constant [11 x i8] c"NOT GLOBAL\00", align 1
@.str39 = private unnamed_addr constant [4 x i8] c"ANY\00", align 1
@.str40 = private unnamed_addr constant [8 x i8] c"KEYWORD\00", align 1
@.str41 = private unnamed_addr constant [7 x i8] c"STRING\00", align 1
@.str42 = private unnamed_addr constant [9 x i8] c"SENTENCE\00", align 1
@.str43 = private unnamed_addr constant [8 x i8] c"INTEGER\00", align 1
@.str44 = private unnamed_addr constant [5 x i8] c"REAL\00", align 1
@.str45 = private unnamed_addr constant [8 x i8] c"BOOLEAN\00", align 1
@.str46 = private unnamed_addr constant [86 x i8] c"$Header: /cactus/Cactus/src/main/CommandLine.c,v 1.47 2002/01/06 12:24:41 allen Exp $\00", align 1
@str = private unnamed_addr constant [45 x i8] c"\0A---------------Compiled Thorns-------------\00"
@str47 = private unnamed_addr constant [45 x i8] c"-------------------------------------------\0A\00"

; Function Attrs: nounwind optsize readnone uwtable
define i8* @CCTKi_version_main_CommandLine_c() #0 {
entry:
  ret i8* getelementptr inbounds ([86 x i8]* @.str46, i64 0, i64 0), !dbg !125
}

; Function Attrs: nounwind optsize uwtable
define void @CCTKi_CommandLineTestThornCompiled(i8* %argument) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{i8* %argument}, i64 0, metadata !15), !dbg !126
  %call = tail call i32 @CCTK_IsThornCompiled(i8* %argument) #6, !dbg !127
  tail call void @llvm.dbg.value(metadata !{i32 %call}, i64 0, metadata !16), !dbg !127
  %0 = load i32 (%struct.cGH*)** @CCTK_MyProc, align 8, !dbg !128, !tbaa !129
  %call1 = tail call i32 %0(%struct.cGH* null) #6, !dbg !128
  %cmp = icmp eq i32 %call1, 0, !dbg !128
  br i1 %cmp, label %if.then, label %if.end, !dbg !128

if.then:                                          ; preds = %entry
  %tobool = icmp ne i32 %call, 0, !dbg !132
  %cond = select i1 %tobool, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8]* @.str2, i64 0, i64 0), !dbg !132
  %call2 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([25 x i8]* @.str, i64 0, i64 0), i8* %argument, i8* %cond) #6, !dbg !132
  br label %if.end, !dbg !134

if.end:                                           ; preds = %if.then, %entry
  %1 = load i32 (%struct.cGH*, i32)** @CCTK_Exit, align 8, !dbg !135, !tbaa !129
  %call3 = tail call i32 %1(%struct.cGH* null, i32 %call) #6, !dbg !135
  ret void, !dbg !136
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #2

; Function Attrs: optsize
declare i32 @CCTK_IsThornCompiled(i8*) #3

; Function Attrs: nounwind optsize
declare i32 @printf(i8* nocapture, ...) #4

; Function Attrs: nounwind optsize uwtable
define void @CCTKi_CommandLineDescribeAllParameters(i8* %argument) #1 {
entry:
  %param = alloca i8*, align 8
  %properties = alloca %struct.PARAM_PROPS*, align 8
  call void @llvm.dbg.value(metadata !{i8* %argument}, i64 0, metadata !20), !dbg !137
  call void @llvm.dbg.declare(metadata !{i8** %param}, metadata !24), !dbg !138
  call void @llvm.dbg.declare(metadata !{%struct.PARAM_PROPS** %properties}, metadata !27), !dbg !139
  %0 = load i32 (%struct.cGH*)** @CCTK_MyProc, align 8, !dbg !140, !tbaa !129
  %call = call i32 %0(%struct.cGH* null) #6, !dbg !140
  %cmp = icmp eq i32 %call, 0, !dbg !140
  br i1 %cmp, label %if.then, label %if.end12, !dbg !140

if.then:                                          ; preds = %entry
  %call1 = call i32 @CCTK_NumCompiledThorns() #6, !dbg !141
  call void @llvm.dbg.value(metadata !{i32 %call1}, i64 0, metadata !22), !dbg !141
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !23), !dbg !143
  %cmp222 = icmp sgt i32 %call1, 0, !dbg !143
  br i1 %cmp222, label %for.body.lr.ph, label %if.end12, !dbg !143

for.body.lr.ph:                                   ; preds = %if.then
  %tobool = icmp eq i8* %argument, null, !dbg !145
  br label %for.body, !dbg !143

for.body:                                         ; preds = %for.inc, %for.body.lr.ph
  %thorn.023 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc ]
  %call3 = call i8* @CCTK_CompiledThorn(i32 %thorn.023) #6, !dbg !148
  call void @llvm.dbg.value(metadata !{i8* %call3}, i64 0, metadata !26), !dbg !148
  %call4 = call i8* @CCTK_ThornImplementation(i8* %call3) #6, !dbg !149
  %call5 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([58 x i8]* @.str3, i64 0, i64 0), i8* %call3, i8* %call4) #6, !dbg !149
  call void @llvm.dbg.value(metadata !150, i64 0, metadata !21), !dbg !151
  %call620 = call i32 @CCTK_ParameterWalk(i32 1, i8* %call3, i8** %param, %struct.PARAM_PROPS** %properties) #6, !dbg !152
  %cmp721 = icmp eq i32 %call620, 0, !dbg !152
  br i1 %cmp721, label %while.body, label %for.inc, !dbg !152

while.body:                                       ; preds = %for.body, %if.end
  br i1 %tobool, label %if.else, label %if.then8, !dbg !145

if.then8:                                         ; preds = %while.body
  %1 = load i8* %argument, align 1, !dbg !153, !tbaa !130
  %cond = icmp eq i8 %1, 118, !dbg !153
  br i1 %cond, label %sw.bb, label %sw.default, !dbg !153

sw.bb:                                            ; preds = %if.then8
  call void @llvm.dbg.value(metadata !{%struct.PARAM_PROPS** %properties}, i64 0, metadata !27), !dbg !155
  %2 = load %struct.PARAM_PROPS** %properties, align 8, !dbg !155, !tbaa !129
  call fastcc void @CommandLinePrintParameter(%struct.PARAM_PROPS* %2) #7, !dbg !155
  br label %if.end, !dbg !157

sw.default:                                       ; preds = %if.then8
  %3 = load %struct._IO_FILE** @stderr, align 8, !dbg !158, !tbaa !129
  %call9 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([29 x i8]* @.str4, i64 0, i64 0), i8* %argument) #6, !dbg !158
  %4 = load i32 (%struct.cGH*, i32)** @CCTK_Exit, align 8, !dbg !159, !tbaa !129
  %call10 = call i32 %4(%struct.cGH* null, i32 2) #6, !dbg !159
  br label %if.end, !dbg !160

if.else:                                          ; preds = %while.body
  call void @llvm.dbg.value(metadata !{i8** %param}, i64 0, metadata !24), !dbg !161
  %5 = load i8** %param, align 8, !dbg !161, !tbaa !129
  %puts = call i32 @puts(i8* %5), !dbg !161
  br label %if.end

if.end:                                           ; preds = %sw.bb, %sw.default, %if.else
  call void @llvm.dbg.value(metadata !{i8** %param}, i64 0, metadata !24), !dbg !163
  %6 = load i8** %param, align 8, !dbg !163, !tbaa !129
  call void @free(i8* %6) #6, !dbg !163
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !21), !dbg !164
  %call6 = call i32 @CCTK_ParameterWalk(i32 0, i8* %call3, i8** %param, %struct.PARAM_PROPS** %properties) #6, !dbg !152
  %cmp7 = icmp eq i32 %call6, 0, !dbg !152
  br i1 %cmp7, label %while.body, label %for.inc, !dbg !152

for.inc:                                          ; preds = %if.end, %for.body
  %inc = add nsw i32 %thorn.023, 1, !dbg !143
  call void @llvm.dbg.value(metadata !{i32 %inc}, i64 0, metadata !23), !dbg !143
  %exitcond = icmp eq i32 %inc, %call1, !dbg !143
  br i1 %exitcond, label %if.end12, label %for.body, !dbg !143

if.end12:                                         ; preds = %if.then, %for.inc, %entry
  %7 = load i32 (%struct.cGH*, i32)** @CCTK_Exit, align 8, !dbg !165, !tbaa !129
  %call13 = call i32 %7(%struct.cGH* null, i32 0) #6, !dbg !165
  ret void, !dbg !166
}

; Function Attrs: optsize
declare i32 @CCTK_NumCompiledThorns() #3

; Function Attrs: optsize
declare i8* @CCTK_CompiledThorn(i32) #3

; Function Attrs: optsize
declare i8* @CCTK_ThornImplementation(i8*) #3

; Function Attrs: optsize
declare i32 @CCTK_ParameterWalk(i32, i8*, i8**, %struct.PARAM_PROPS**) #3

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @CommandLinePrintParameter(%struct.PARAM_PROPS* %properties) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.PARAM_PROPS* %properties}, i64 0, metadata !108), !dbg !167
  %tobool = icmp eq %struct.PARAM_PROPS* %properties, null, !dbg !168
  br i1 %tobool, label %if.end22, label %if.then, !dbg !168

if.then:                                          ; preds = %entry
  %thorn = getelementptr inbounds %struct.PARAM_PROPS* %properties, i64 0, i32 1, !dbg !169
  %0 = load i8** %thorn, align 8, !dbg !169, !tbaa !129
  %name = getelementptr inbounds %struct.PARAM_PROPS* %properties, i64 0, i32 0, !dbg !169
  %1 = load i8** %name, align 8, !dbg !169, !tbaa !129
  %call = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([20 x i8]* @.str25, i64 0, i64 0), i8* %0, i8* %1) #6, !dbg !169
  %scope = getelementptr inbounds %struct.PARAM_PROPS* %properties, i64 0, i32 2, !dbg !171
  %2 = load i32* %scope, align 4, !dbg !171, !tbaa !172
  %cmp = icmp eq i32 %2, 3, !dbg !171
  br i1 %cmp, label %if.end, label %if.then1, !dbg !171

if.then1:                                         ; preds = %if.then
  %3 = load i8** %thorn, align 8, !dbg !173, !tbaa !129
  %call3 = tail call i8* @CCTK_ThornImplementation(i8* %3) #6, !dbg !173
  %4 = load i8** %name, align 8, !dbg !173, !tbaa !129
  %call5 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([9 x i8]* @.str26, i64 0, i64 0), i8* %call3, i8* %4) #6, !dbg !173
  br label %if.end, !dbg !175

if.end:                                           ; preds = %if.then, %if.then1
  %putchar = tail call i32 @putchar(i32 10) #5, !dbg !176
  %description = getelementptr inbounds %struct.PARAM_PROPS* %properties, i64 0, i32 3, !dbg !177
  %5 = load i8** %description, align 8, !dbg !177, !tbaa !129
  %call7 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([19 x i8]* @.str28, i64 0, i64 0), i8* %5) #6, !dbg !177
  %type = getelementptr inbounds %struct.PARAM_PROPS* %properties, i64 0, i32 5, !dbg !178
  %6 = load i32* %type, align 4, !dbg !178, !tbaa !172
  %sub = add nsw i32 %6, -1, !dbg !178
  %idxprom = sext i32 %sub to i64, !dbg !178
  %arrayidx = getelementptr inbounds [6 x i8*]* @cctk_parameter_type_names, i64 0, i64 %idxprom, !dbg !178
  %7 = load i8** %arrayidx, align 8, !dbg !178, !tbaa !129
  %call8 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([17 x i8]* @.str29, i64 0, i64 0), i8* %7) #6, !dbg !178
  %defval = getelementptr inbounds %struct.PARAM_PROPS* %properties, i64 0, i32 4, !dbg !179
  %8 = load i8** %defval, align 8, !dbg !179, !tbaa !129
  %call9 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([17 x i8]* @.str30, i64 0, i64 0), i8* %8) #6, !dbg !179
  %9 = load i32* %scope, align 4, !dbg !180, !tbaa !172
  %sub11 = add nsw i32 %9, -1, !dbg !180
  %idxprom12 = sext i32 %sub11 to i64, !dbg !180
  %arrayidx13 = getelementptr inbounds [5 x i8*]* @cctk_parameter_scopes, i64 0, i64 %idxprom12, !dbg !180
  %10 = load i8** %arrayidx13, align 8, !dbg !180, !tbaa !129
  %call14 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([17 x i8]* @.str31, i64 0, i64 0), i8* %10) #6, !dbg !180
  %range15 = getelementptr inbounds %struct.PARAM_PROPS* %properties, i64 0, i32 6, !dbg !181
  %range.037 = load %struct.RANGE** %range15, align 8, !dbg !181
  %tobool1638 = icmp eq %struct.RANGE* %range.037, null, !dbg !181
  br i1 %tobool1638, label %if.end22, label %for.body, !dbg !181

for.body:                                         ; preds = %if.end, %for.body
  %range.039 = phi %struct.RANGE* [ %range.0, %for.body ], [ %range.037, %if.end ]
  %range17 = getelementptr inbounds %struct.RANGE* %range.039, i64 0, i32 2, !dbg !183
  %11 = load i8** %range17, align 8, !dbg !183, !tbaa !129
  %call18 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([17 x i8]* @.str32, i64 0, i64 0), i8* %11) #6, !dbg !183
  %origin = getelementptr inbounds %struct.RANGE* %range.039, i64 0, i32 3, !dbg !185
  %12 = load i8** %origin, align 8, !dbg !185, !tbaa !129
  %call19 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([21 x i8]* @.str33, i64 0, i64 0), i8* %12) #6, !dbg !185
  %description20 = getelementptr inbounds %struct.RANGE* %range.039, i64 0, i32 5, !dbg !186
  %13 = load i8** %description20, align 8, !dbg !186, !tbaa !129
  %call21 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([21 x i8]* @.str34, i64 0, i64 0), i8* %13) #6, !dbg !186
  %next = getelementptr inbounds %struct.RANGE* %range.039, i64 0, i32 1, !dbg !181
  %range.0 = load %struct.RANGE** %next, align 8, !dbg !181
  %tobool16 = icmp eq %struct.RANGE* %range.0, null, !dbg !181
  br i1 %tobool16, label %if.end22, label %for.body, !dbg !181

if.end22:                                         ; preds = %if.end, %for.body, %entry
  ret void, !dbg !187
}

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #4

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) #4

; Function Attrs: nounwind optsize uwtable
define void @CCTKi_CommandLineDescribeParameter(i8* %argument) #1 {
entry:
  %thorn = alloca i8*, align 8
  %param = alloca i8*, align 8
  call void @llvm.dbg.value(metadata !{i8* %argument}, i64 0, metadata !56), !dbg !188
  call void @llvm.dbg.declare(metadata !{i8** %thorn}, metadata !57), !dbg !189
  call void @llvm.dbg.declare(metadata !{i8** %param}, metadata !58), !dbg !189
  %0 = load i32 (%struct.cGH*)** @CCTK_MyProc, align 8, !dbg !190, !tbaa !129
  %call = call i32 %0(%struct.cGH* null) #6, !dbg !190
  %cmp = icmp eq i32 %call, 0, !dbg !190
  br i1 %cmp, label %if.then, label %if.end10, !dbg !190

if.then:                                          ; preds = %entry
  %call1 = call i32 @Util_SplitString(i8** %thorn, i8** %param, i8* %argument, i8* getelementptr inbounds ([3 x i8]* @.str6, i64 0, i64 0)) #6, !dbg !191
  call void @llvm.dbg.value(metadata !{i8** %param}, i64 0, metadata !58), !dbg !193
  %1 = load i8** %param, align 8, !dbg !193, !tbaa !129
  %tobool = icmp eq i8* %1, null, !dbg !193
  br i1 %tobool, label %if.then2, label %if.else, !dbg !193

if.then2:                                         ; preds = %if.then
  %call3 = call %struct.PARAM_PROPS* @CCTK_ParameterData(i8* %argument, i8* null) #6, !dbg !194
  call void @llvm.dbg.value(metadata !{%struct.PARAM_PROPS* %call3}, i64 0, metadata !60), !dbg !194
  br label %if.end9, !dbg !196

if.else:                                          ; preds = %if.then
  call void @llvm.dbg.value(metadata !{i8** %thorn}, i64 0, metadata !57), !dbg !197
  %2 = load i8** %thorn, align 8, !dbg !197, !tbaa !129
  %call4 = call %struct.PARAM_PROPS* @CCTK_ParameterData(i8* %1, i8* %2) #6, !dbg !197
  call void @llvm.dbg.value(metadata !{%struct.PARAM_PROPS* %call4}, i64 0, metadata !60), !dbg !197
  %tobool5 = icmp eq %struct.PARAM_PROPS* %call4, null, !dbg !199
  br i1 %tobool5, label %if.then6, label %if.end, !dbg !199

if.then6:                                         ; preds = %if.else
  call void @llvm.dbg.value(metadata !{i8** %thorn}, i64 0, metadata !57), !dbg !200
  %3 = load i8** %thorn, align 8, !dbg !200, !tbaa !129
  %call7 = call i8* @CCTK_ImplementationThorn(i8* %3) #6, !dbg !200
  call void @llvm.dbg.value(metadata !{i8* %call7}, i64 0, metadata !59), !dbg !200
  call void @llvm.dbg.value(metadata !{i8** %param}, i64 0, metadata !58), !dbg !202
  %4 = load i8** %param, align 8, !dbg !202, !tbaa !129
  %call8 = call %struct.PARAM_PROPS* @CCTK_ParameterData(i8* %4, i8* %call7) #6, !dbg !202
  call void @llvm.dbg.value(metadata !{%struct.PARAM_PROPS* %call8}, i64 0, metadata !60), !dbg !202
  br label %if.end, !dbg !203

if.end:                                           ; preds = %if.else, %if.then6
  %properties.0 = phi %struct.PARAM_PROPS* [ %call4, %if.else ], [ %call8, %if.then6 ]
  call void @llvm.dbg.value(metadata !{i8** %thorn}, i64 0, metadata !57), !dbg !204
  %5 = load i8** %thorn, align 8, !dbg !204, !tbaa !129
  call void @free(i8* %5) #6, !dbg !204
  call void @llvm.dbg.value(metadata !{i8** %param}, i64 0, metadata !58), !dbg !205
  %6 = load i8** %param, align 8, !dbg !205, !tbaa !129
  call void @free(i8* %6) #6, !dbg !205
  br label %if.end9

if.end9:                                          ; preds = %if.end, %if.then2
  %properties.1 = phi %struct.PARAM_PROPS* [ %properties.0, %if.end ], [ %call3, %if.then2 ]
  call fastcc void @CommandLinePrintParameter(%struct.PARAM_PROPS* %properties.1) #7, !dbg !206
  br label %if.end10, !dbg !207

if.end10:                                         ; preds = %if.end9, %entry
  %7 = load i32 (%struct.cGH*, i32)** @CCTK_Exit, align 8, !dbg !208, !tbaa !129
  %call11 = call i32 %7(%struct.cGH* null, i32 0) #6, !dbg !208
  ret void, !dbg !209
}

; Function Attrs: optsize
declare i32 @Util_SplitString(i8**, i8**, i8*, i8*) #3

; Function Attrs: optsize
declare %struct.PARAM_PROPS* @CCTK_ParameterData(i8*, i8*) #3

; Function Attrs: optsize
declare i8* @CCTK_ImplementationThorn(i8*) #3

; Function Attrs: nounwind optsize uwtable
define void @CCTKi_CommandLineTestParameters(i8* %argument) #1 {
entry:
  %endptr = alloca i8*, align 8
  call void @llvm.dbg.value(metadata !{i8* %argument}, i64 0, metadata !63), !dbg !210
  call void @llvm.dbg.declare(metadata !{i8** %endptr}, metadata !65), !dbg !211
  %cmp = icmp eq i8* %argument, null, !dbg !212
  br i1 %cmp, label %if.end5, label %if.else, !dbg !212

if.else:                                          ; preds = %entry
  %call = call i64 @strtol(i8* %argument, i8** %endptr, i32 10) #6, !dbg !213
  %conv = trunc i64 %call to i32, !dbg !213
  call void @llvm.dbg.value(metadata !{i32 %conv}, i64 0, metadata !64), !dbg !213
  call void @llvm.dbg.value(metadata !{i8** %endptr}, i64 0, metadata !65), !dbg !215
  %0 = load i8** %endptr, align 8, !dbg !215, !tbaa !129
  %tobool = icmp eq i8* %0, null, !dbg !215
  br i1 %tobool, label %if.then4, label %land.lhs.true, !dbg !215

land.lhs.true:                                    ; preds = %if.else
  %1 = load i8* %0, align 1, !dbg !215, !tbaa !130
  %cmp2 = icmp eq i8 %1, 0, !dbg !215
  br i1 %cmp2, label %if.end5, label %if.then4, !dbg !215

if.then4:                                         ; preds = %if.else, %land.lhs.true
  call void @CCTKi_CommandLineUsage() #7, !dbg !216
  br label %if.end5, !dbg !218

if.end5:                                          ; preds = %entry, %land.lhs.true, %if.then4
  %nprocs.0 = phi i32 [ %conv, %land.lhs.true ], [ %conv, %if.then4 ], [ 1, %entry ]
  store i1 true, i1* @paramchecking, align 1
  store i32 1, i32* @cctki_paramchecking, align 4, !dbg !219, !tbaa !172
  store i32 %nprocs.0, i32* @cctki_paramcheck_nprocs, align 4, !dbg !220, !tbaa !172
  ret void, !dbg !221
}

; Function Attrs: nounwind optsize
declare i64 @strtol(i8*, i8** nocapture, i32) #4

; Function Attrs: nounwind optsize uwtable
define void @CCTKi_CommandLineUsage() #1 {
entry:
  %argv = alloca i8**, align 8
  call void @llvm.dbg.declare(metadata !{i8*** %argv}, metadata !96), !dbg !222
  %0 = load i32 (%struct.cGH*)** @CCTK_MyProc, align 8, !dbg !223, !tbaa !129
  %call = call i32 %0(%struct.cGH* null) #6, !dbg !223
  %cmp = icmp eq i32 %call, 0, !dbg !223
  br i1 %cmp, label %if.then, label %if.end, !dbg !223

if.then:                                          ; preds = %entry
  %call1 = call i32 @CCTK_CommandLine(i8*** %argv) #6, !dbg !224
  call void @llvm.dbg.value(metadata !{i8*** %argv}, i64 0, metadata !96), !dbg !226
  %1 = load i8*** %argv, align 8, !dbg !226, !tbaa !129
  %2 = load i8** %1, align 8, !dbg !226, !tbaa !129
  %call2 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([14 x i8]* @.str19, i64 0, i64 0), i8* %2, i8* getelementptr inbounds ([127 x i8]* @.str20, i64 0, i64 0)) #6, !dbg !226
  br label %if.end, !dbg !227

if.end:                                           ; preds = %if.then, %entry
  %3 = load i32 (%struct.cGH*, i32)** @CCTK_Exit, align 8, !dbg !228, !tbaa !129
  %call3 = call i32 %3(%struct.cGH* null, i32 1) #6, !dbg !228
  ret void, !dbg !229
}

; Function Attrs: nounwind optsize uwtable
define void @CCTKi_CommandLineWarningLevel(i8* %argument) #1 {
entry:
  %endptr = alloca i8*, align 8
  call void @llvm.dbg.value(metadata !{i8* %argument}, i64 0, metadata !68), !dbg !230
  call void @llvm.dbg.declare(metadata !{i8** %endptr}, metadata !69), !dbg !231
  %call = call i64 @strtol(i8* %argument, i8** %endptr, i32 10) #6, !dbg !232
  call void @llvm.dbg.value(metadata !{i64 %call}, i64 0, metadata !70), !dbg !232
  call void @llvm.dbg.value(metadata !{i8** %endptr}, i64 0, metadata !69), !dbg !233
  %0 = load i8** %endptr, align 8, !dbg !233, !tbaa !129
  %tobool = icmp eq i8* %0, null, !dbg !233
  br i1 %tobool, label %if.else, label %land.lhs.true, !dbg !233

land.lhs.true:                                    ; preds = %entry
  %1 = load i8* %0, align 1, !dbg !233, !tbaa !130
  %cmp = icmp eq i8 %1, 0, !dbg !233
  br i1 %cmp, label %if.then, label %if.else, !dbg !233

if.then:                                          ; preds = %land.lhs.true
  %conv2 = trunc i64 %call to i32, !dbg !234
  %call3 = call i32 @CCTKi_SetWarnLevel(i32 %conv2) #6, !dbg !234
  br label %if.end, !dbg !236

if.else:                                          ; preds = %entry, %land.lhs.true
  call void @CCTKi_CommandLineUsage() #7, !dbg !237
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void, !dbg !239
}

; Function Attrs: optsize
declare i32 @CCTKi_SetWarnLevel(i32) #3

; Function Attrs: nounwind optsize uwtable
define void @CCTKi_CommandLineErrorLevel(i8* %argument) #1 {
entry:
  %endptr = alloca i8*, align 8
  call void @llvm.dbg.value(metadata !{i8* %argument}, i64 0, metadata !74), !dbg !240
  call void @llvm.dbg.declare(metadata !{i8** %endptr}, metadata !75), !dbg !241
  %call = call i64 @strtol(i8* %argument, i8** %endptr, i32 10) #6, !dbg !242
  call void @llvm.dbg.value(metadata !{i64 %call}, i64 0, metadata !76), !dbg !242
  call void @llvm.dbg.value(metadata !{i8** %endptr}, i64 0, metadata !75), !dbg !243
  %0 = load i8** %endptr, align 8, !dbg !243, !tbaa !129
  %tobool = icmp eq i8* %0, null, !dbg !243
  br i1 %tobool, label %if.else, label %land.lhs.true, !dbg !243

land.lhs.true:                                    ; preds = %entry
  %1 = load i8* %0, align 1, !dbg !243, !tbaa !130
  %cmp = icmp eq i8 %1, 0, !dbg !243
  br i1 %cmp, label %if.then, label %if.else, !dbg !243

if.then:                                          ; preds = %land.lhs.true
  %conv2 = trunc i64 %call to i32, !dbg !244
  %call3 = call i32 @CCTKi_SetErrorLevel(i32 %conv2) #6, !dbg !244
  br label %if.end, !dbg !246

if.else:                                          ; preds = %entry, %land.lhs.true
  call void @CCTKi_CommandLineUsage() #7, !dbg !247
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void, !dbg !249
}

; Function Attrs: optsize
declare i32 @CCTKi_SetErrorLevel(i32) #3

; Function Attrs: nounwind optsize uwtable
define void @CCTKi_CommandLineParameterLevel(i8* %argument) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{i8* %argument}, i64 0, metadata !79), !dbg !250
  %call = tail call i32 @CCTK_Equals(i8* %argument, i8* getelementptr inbounds ([7 x i8]* @.str7, i64 0, i64 0)) #6, !dbg !251
  %tobool = icmp eq i32 %call, 0, !dbg !251
  br i1 %tobool, label %if.else, label %if.end11, !dbg !251

if.else:                                          ; preds = %entry
  %call1 = tail call i32 @CCTK_Equals(i8* %argument, i8* getelementptr inbounds ([7 x i8]* @.str8, i64 0, i64 0)) #6, !dbg !252
  %tobool2 = icmp eq i32 %call1, 0, !dbg !252
  br i1 %tobool2, label %if.else4, label %if.end11, !dbg !252

if.else4:                                         ; preds = %if.else
  %call5 = tail call i32 @CCTK_Equals(i8* %argument, i8* getelementptr inbounds ([8 x i8]* @.str9, i64 0, i64 0)) #6, !dbg !253
  %tobool6 = icmp eq i32 %call5, 0, !dbg !253
  br i1 %tobool6, label %if.else8, label %if.end11, !dbg !253

if.else8:                                         ; preds = %if.else4
  %call9 = tail call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 1, i32 374, i8* getelementptr inbounds ([68 x i8]* @.str10, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str11, i64 0, i64 0), i8* getelementptr inbounds ([100 x i8]* @.str12, i64 0, i64 0), i8* %argument) #6, !dbg !254
  tail call void @llvm.dbg.value(metadata !150, i64 0, metadata !80), !dbg !256
  br label %if.end11

if.end11:                                         ; preds = %if.else4, %if.else, %entry, %if.else8
  %parameterlevel.0 = phi i32 [ 1, %if.else8 ], [ 0, %entry ], [ 1, %if.else ], [ 2, %if.else4 ]
  %call12 = tail call i32 @CCTKi_SetParameterLevel(i32 %parameterlevel.0) #6, !dbg !257
  ret void, !dbg !258
}

; Function Attrs: optsize
declare i32 @CCTK_Equals(i8*, i8*) #3

; Function Attrs: optsize
declare i32 @CCTK_VWarn(i32, i32, i8*, i8*, i8*, ...) #3

; Function Attrs: optsize
declare i32 @CCTKi_SetParameterLevel(i32) #3

; Function Attrs: nounwind optsize uwtable
define void @CCTKi_CommandLineRedirectStdout() #1 {
entry:
  store i1 true, i1* @redirectsubs, align 1
  ret void, !dbg !259
}

; Function Attrs: nounwind optsize uwtable
define void @CCTKi_CommandLineListThorns() #1 {
entry:
  %0 = load i32 (%struct.cGH*)** @CCTK_MyProc, align 8, !dbg !260, !tbaa !129
  %call = tail call i32 %0(%struct.cGH* null) #6, !dbg !260
  %cmp = icmp eq i32 %call, 0, !dbg !260
  br i1 %cmp, label %if.then, label %if.end, !dbg !260

if.then:                                          ; preds = %entry
  %puts = tail call i32 @puts(i8* getelementptr inbounds ([45 x i8]* @str, i64 0, i64 0)), !dbg !261
  %1 = load %struct._IO_FILE** @stdout, align 8, !dbg !263, !tbaa !129
  %call2 = tail call i32 @CCTKi_PrintThorns(%struct._IO_FILE* %1, i8* getelementptr inbounds ([6 x i8]* @.str14, i64 0, i64 0), i32 0) #6, !dbg !263
  %puts5 = tail call i32 @puts(i8* getelementptr inbounds ([45 x i8]* @str47, i64 0, i64 0)), !dbg !264
  br label %if.end, !dbg !265

if.end:                                           ; preds = %if.then, %entry
  %2 = load i32 (%struct.cGH*, i32)** @CCTK_Exit, align 8, !dbg !266, !tbaa !129
  %call4 = tail call i32 %2(%struct.cGH* null, i32 1) #6, !dbg !266
  ret void, !dbg !267
}

; Function Attrs: optsize
declare i32 @CCTKi_PrintThorns(%struct._IO_FILE*, i8*, i32) #3

; Function Attrs: nounwind optsize uwtable
define void @CCTKi_CommandLineVersion() #1 {
entry:
  %argv = alloca i8**, align 8
  call void @llvm.dbg.declare(metadata !{i8*** %argv}, metadata !87), !dbg !268
  %0 = load i32 (%struct.cGH*)** @CCTK_MyProc, align 8, !dbg !269, !tbaa !129
  %call = call i32 %0(%struct.cGH* null) #6, !dbg !269
  %cmp = icmp eq i32 %call, 0, !dbg !269
  br i1 %cmp, label %if.then, label %if.end, !dbg !269

if.then:                                          ; preds = %entry
  %call1 = call i32 @CCTK_CommandLine(i8*** %argv) #6, !dbg !270
  %call2 = call i8* @CCTK_FullVersion() #6, !dbg !272
  call void @llvm.dbg.value(metadata !{i8* %call2}, i64 0, metadata !89), !dbg !272
  call void @llvm.dbg.value(metadata !{i8*** %argv}, i64 0, metadata !87), !dbg !273
  %1 = load i8*** %argv, align 8, !dbg !273, !tbaa !129
  %2 = load i8** %1, align 8, !dbg !273, !tbaa !129
  %call3 = call i8* @CCTK_CompileDate() #6, !dbg !274
  %call4 = call i8* @CCTK_CompileTime() #6, !dbg !274
  %call5 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([39 x i8]* @.str16, i64 0, i64 0), i8* %2, i8* %call2, i8* %call3, i8* %call4) #6, !dbg !274
  br label %if.end, !dbg !275

if.end:                                           ; preds = %if.then, %entry
  %3 = load i32 (%struct.cGH*, i32)** @CCTK_Exit, align 8, !dbg !276, !tbaa !129
  %call6 = call i32 %3(%struct.cGH* null, i32 1) #6, !dbg !276
  ret void, !dbg !277
}

; Function Attrs: optsize
declare i32 @CCTK_CommandLine(i8***) #3

; Function Attrs: optsize
declare i8* @CCTK_FullVersion() #3

; Function Attrs: optsize
declare i8* @CCTK_CompileDate() #3

; Function Attrs: optsize
declare i8* @CCTK_CompileTime() #3

; Function Attrs: nounwind optsize uwtable
define void @CCTKi_CommandLineHelp() #1 {
entry:
  %argv = alloca i8**, align 8
  call void @llvm.dbg.declare(metadata !{i8*** %argv}, metadata !92), !dbg !278
  call void @llvm.dbg.value(metadata !279, i64 0, metadata !93), !dbg !280
  %0 = load i32 (%struct.cGH*)** @CCTK_MyProc, align 8, !dbg !281, !tbaa !129
  %call = call i32 %0(%struct.cGH* null) #6, !dbg !281
  %cmp = icmp eq i32 %call, 0, !dbg !281
  br i1 %cmp, label %if.then, label %if.end, !dbg !281

if.then:                                          ; preds = %entry
  %call1 = call i32 @CCTK_CommandLine(i8*** %argv) #6, !dbg !282
  call void @llvm.dbg.value(metadata !{i8*** %argv}, i64 0, metadata !92), !dbg !284
  %1 = load i8*** %argv, align 8, !dbg !284, !tbaa !129
  %2 = load i8** %1, align 8, !dbg !284, !tbaa !129
  %call2 = call i8* @CCTK_CompileDate() #6, !dbg !285
  %call3 = call i8* @CCTK_CompileTime() #6, !dbg !285
  %call4 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([26 x i8]* @.str18, i64 0, i64 0), i8* %2, i8* %call2, i8* %call3) #6, !dbg !285
  call void @llvm.dbg.value(metadata !{i8*** %argv}, i64 0, metadata !92), !dbg !286
  %3 = load i8*** %argv, align 8, !dbg !286, !tbaa !129
  %4 = load i8** %3, align 8, !dbg !286, !tbaa !129
  %call6 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([14 x i8]* @.str19, i64 0, i64 0), i8* %4, i8* getelementptr inbounds ([127 x i8]* @.str20, i64 0, i64 0)) #6, !dbg !286
  %call7 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([19 x i8]* @.str21, i64 0, i64 0), i8* getelementptr inbounds ([1033 x i8]* @.str17, i64 0, i64 0)) #6, !dbg !287
  br label %if.end, !dbg !288

if.end:                                           ; preds = %if.then, %entry
  %5 = load i32 (%struct.cGH*, i32)** @CCTK_Exit, align 8, !dbg !289, !tbaa !129
  %call8 = call i32 %5(%struct.cGH* null, i32 1) #6, !dbg !289
  ret void, !dbg !290
}

; Function Attrs: nounwind optsize uwtable
define void @CCTKi_CommandLineFinished() #1 {
entry:
  %fname = alloca [256 x i8], align 16
  %0 = getelementptr inbounds [256 x i8]* %fname, i64 0, i64 0, !dbg !291
  call void @llvm.lifetime.start(i64 256, i8* %0) #5, !dbg !291
  call void @llvm.dbg.declare(metadata !{[256 x i8]* %fname}, metadata !100), !dbg !291
  %.b = load i1* @paramchecking, align 1
  br i1 %.b, label %if.end, label %if.then, !dbg !292

if.then:                                          ; preds = %entry
  store i32 0, i32* @cctki_paramchecking, align 4, !dbg !293, !tbaa !172
  br label %if.end, !dbg !295

if.end:                                           ; preds = %if.then, %entry
  %1 = load i32 (%struct.cGH*)** @CCTK_MyProc, align 8, !dbg !296, !tbaa !129
  %call = call i32 %1(%struct.cGH* null) #6, !dbg !296
  call void @llvm.dbg.value(metadata !{i32 %call}, i64 0, metadata !99), !dbg !296
  %tobool1 = icmp eq i32 %call, 0, !dbg !297
  br i1 %tobool1, label %if.end11, label %if.then2, !dbg !297

if.then2:                                         ; preds = %if.end
  %.b13 = load i1* @redirectsubs, align 1
  br i1 %.b13, label %if.then4, label %if.else, !dbg !298

if.then4:                                         ; preds = %if.then2
  %call5 = call i32 (i8*, i8*, ...)* @sprintf(i8* %0, i8* getelementptr inbounds ([16 x i8]* @.str22, i64 0, i64 0), i32 %call) #6, !dbg !300
  br label %if.end8, !dbg !302

if.else:                                          ; preds = %if.then2
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* getelementptr inbounds ([10 x i8]* @.str23, i64 0, i64 0), i64 10, i32 1, i1 false), !dbg !303
  br label %if.end8

if.end8:                                          ; preds = %if.else, %if.then4
  %2 = load %struct._IO_FILE** @stdout, align 8, !dbg !305, !tbaa !129
  %call10 = call %struct._IO_FILE* @freopen(i8* %0, i8* getelementptr inbounds ([2 x i8]* @.str24, i64 0, i64 0), %struct._IO_FILE* %2) #6, !dbg !305
  br label %if.end11, !dbg !306

if.end11:                                         ; preds = %if.end, %if.end8
  call void @llvm.lifetime.end(i64 256, i8* %0) #5, !dbg !307
  ret void, !dbg !307
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #5

; Function Attrs: nounwind optsize
declare i32 @sprintf(i8* nocapture, i8* nocapture, ...) #4

; Function Attrs: optsize
declare %struct._IO_FILE* @freopen(i8*, i8*, %struct._IO_FILE*) #3

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #5

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #2

; Function Attrs: nounwind
declare i32 @puts(i8* nocapture) #5

; Function Attrs: nounwind
declare i32 @putchar(i32) #5

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture, i64, i32, i1) #5

attributes #0 = { nounwind optsize readnone uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone }
attributes #3 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { nounwind optsize }
attributes #7 = { optsize }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !110, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/CommandLine.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/CommandLine.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4, metadata !11, metadata !18, metadata !54, metadata !61, metadata !66, metadata !72, metadata !77, metadata !81, metadata !84, metadata !85, metadata !90, metadata !94, metadata !97, metadata !104}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"CCTKi_version_main_CommandLine_c", metadata !"CCTKi_version_main_CommandLine_c", metadata !"", i32 40, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* ()* @CCTKi_version_main_CommandLine_c, null, null, metadata !2, i32 40} ; [ DW_TAG_subprogram ] [line 40] [def] [CCTKi_version_main_CommandLine_c]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/CommandLine.c]
!6 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8}
!8 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !9} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!9 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !10} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from char]
!10 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!11 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"CCTKi_CommandLineTestThornCompiled", metadata !"CCTKi_CommandLineTestThornCompiled", metadata !"", i32 99, metadata !12, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i8*)* @CCTKi_CommandLineTestThornCompiled, null, null, metadata !14, i32 100} ; [ DW_TAG_subprogram ] [line 99] [def] [scope 100] [CCTKi_CommandLineTestThornCompiled]
!12 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !13, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!13 = metadata !{null, metadata !8}
!14 = metadata !{metadata !15, metadata !16}
!15 = metadata !{i32 786689, metadata !11, metadata !"argument", metadata !5, i32 16777315, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [argument] [line 99]
!16 = metadata !{i32 786688, metadata !11, metadata !"retval", metadata !5, i32 101, metadata !17, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [retval] [line 101]
!17 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!18 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"CCTKi_CommandLineDescribeAllParameters", metadata !"CCTKi_CommandLineDescribeAllParameters", metadata !"", i32 132, metadata !12, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i8*)* @CCTKi_CommandLineDescribeAllParameters, null, null, metadata !19, i32 133} ; [ DW_TAG_subprogram ] [line 132] [def] [scope 133] [CCTKi_CommandLineDescribeAllParameters]
!19 = metadata !{metadata !20, metadata !21, metadata !22, metadata !23, metadata !24, metadata !26, metadata !27}
!20 = metadata !{i32 786689, metadata !18, metadata !"argument", metadata !5, i32 16777348, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [argument] [line 132]
!21 = metadata !{i32 786688, metadata !18, metadata !"first", metadata !5, i32 134, metadata !17, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [first] [line 134]
!22 = metadata !{i32 786688, metadata !18, metadata !"n_thorns", metadata !5, i32 134, metadata !17, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [n_thorns] [line 134]
!23 = metadata !{i32 786688, metadata !18, metadata !"thorn", metadata !5, i32 134, metadata !17, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [thorn] [line 134]
!24 = metadata !{i32 786688, metadata !18, metadata !"param", metadata !5, i32 135, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [param] [line 135]
!25 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !10} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from char]
!26 = metadata !{i32 786688, metadata !18, metadata !"thornname", metadata !5, i32 136, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [thornname] [line 136]
!27 = metadata !{i32 786688, metadata !18, metadata !"properties", metadata !5, i32 137, metadata !28, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [properties] [line 137]
!28 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !29} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!29 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !30} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from cParamData]
!30 = metadata !{i32 786454, metadata !1, null, metadata !"cParamData", i32 112, i64 0, i64 0, i64 0, i32 0, metadata !31} ; [ DW_TAG_typedef ] [cParamData] [line 112, size 0, align 0, offset 0] [from PARAM_PROPS]
!31 = metadata !{i32 786451, metadata !32, null, metadata !"PARAM_PROPS", i32 97, i64 512, i64 64, i32 0, i32 0, null, metadata !33, i32 0, null, null} ; [ DW_TAG_structure_type ] [PARAM_PROPS] [line 97, size 512, align 64, offset 0] [from ]
!32 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/../include/cctk_Parameter.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!33 = metadata !{metadata !34, metadata !35, metadata !36, metadata !37, metadata !38, metadata !39, metadata !40, metadata !52, metadata !53}
!34 = metadata !{i32 786445, metadata !32, metadata !31, metadata !"name", i32 99, i64 64, i64 64, i64 0, i32 0, metadata !25} ; [ DW_TAG_member ] [name] [line 99, size 64, align 64, offset 0] [from ]
!35 = metadata !{i32 786445, metadata !32, metadata !31, metadata !"thorn", i32 100, i64 64, i64 64, i64 64, i32 0, metadata !25} ; [ DW_TAG_member ] [thorn] [line 100, size 64, align 64, offset 64] [from ]
!36 = metadata !{i32 786445, metadata !32, metadata !31, metadata !"scope", i32 101, i64 32, i64 32, i64 128, i32 0, metadata !17} ; [ DW_TAG_member ] [scope] [line 101, size 32, align 32, offset 128] [from int]
!37 = metadata !{i32 786445, metadata !32, metadata !31, metadata !"description", i32 103, i64 64, i64 64, i64 192, i32 0, metadata !25} ; [ DW_TAG_member ] [description] [line 103, size 64, align 64, offset 192] [from ]
!38 = metadata !{i32 786445, metadata !32, metadata !31, metadata !"defval", i32 104, i64 64, i64 64, i64 256, i32 0, metadata !25} ; [ DW_TAG_member ] [defval] [line 104, size 64, align 64, offset 256] [from ]
!39 = metadata !{i32 786445, metadata !32, metadata !31, metadata !"type", i32 106, i64 32, i64 32, i64 320, i32 0, metadata !17} ; [ DW_TAG_member ] [type] [line 106, size 32, align 32, offset 320] [from int]
!40 = metadata !{i32 786445, metadata !32, metadata !31, metadata !"range", i32 107, i64 64, i64 64, i64 384, i32 0, metadata !41} ; [ DW_TAG_member ] [range] [line 107, size 64, align 64, offset 384] [from ]
!41 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !42} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from t_range]
!42 = metadata !{i32 786454, metadata !32, null, metadata !"t_range", i32 82, i64 0, i64 0, i64 0, i32 0, metadata !43} ; [ DW_TAG_typedef ] [t_range] [line 82, size 0, align 0, offset 0] [from RANGE]
!43 = metadata !{i32 786451, metadata !32, null, metadata !"RANGE", i32 74, i64 384, i64 64, i32 0, i32 0, null, metadata !44, i32 0, null, null} ; [ DW_TAG_structure_type ] [RANGE] [line 74, size 384, align 64, offset 0] [from ]
!44 = metadata !{metadata !45, metadata !47, metadata !48, metadata !49, metadata !50, metadata !51}
!45 = metadata !{i32 786445, metadata !32, metadata !43, metadata !"last", i32 76, i64 64, i64 64, i64 0, i32 0, metadata !46} ; [ DW_TAG_member ] [last] [line 76, size 64, align 64, offset 0] [from ]
!46 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !43} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from RANGE]
!47 = metadata !{i32 786445, metadata !32, metadata !43, metadata !"next", i32 77, i64 64, i64 64, i64 64, i32 0, metadata !46} ; [ DW_TAG_member ] [next] [line 77, size 64, align 64, offset 64] [from ]
!48 = metadata !{i32 786445, metadata !32, metadata !43, metadata !"range", i32 78, i64 64, i64 64, i64 128, i32 0, metadata !25} ; [ DW_TAG_member ] [range] [line 78, size 64, align 64, offset 128] [from ]
!49 = metadata !{i32 786445, metadata !32, metadata !43, metadata !"origin", i32 79, i64 64, i64 64, i64 192, i32 0, metadata !25} ; [ DW_TAG_member ] [origin] [line 79, size 64, align 64, offset 192] [from ]
!50 = metadata !{i32 786445, metadata !32, metadata !43, metadata !"active", i32 80, i64 32, i64 32, i64 256, i32 0, metadata !17} ; [ DW_TAG_member ] [active] [line 80, size 32, align 32, offset 256] [from int]
!51 = metadata !{i32 786445, metadata !32, metadata !43, metadata !"description", i32 81, i64 64, i64 64, i64 320, i32 0, metadata !25} ; [ DW_TAG_member ] [description] [line 81, size 64, align 64, offset 320] [from ]
!52 = metadata !{i32 786445, metadata !32, metadata !31, metadata !"n_set", i32 109, i64 32, i64 32, i64 448, i32 0, metadata !17} ; [ DW_TAG_member ] [n_set] [line 109, size 32, align 32, offset 448] [from int]
!53 = metadata !{i32 786445, metadata !32, metadata !31, metadata !"steerable", i32 110, i64 32, i64 32, i64 480, i32 0, metadata !17} ; [ DW_TAG_member ] [steerable] [line 110, size 32, align 32, offset 480] [from int]
!54 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"CCTKi_CommandLineDescribeParameter", metadata !"CCTKi_CommandLineDescribeParameter", metadata !"", i32 198, metadata !12, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i8*)* @CCTKi_CommandLineDescribeParameter, null, null, metadata !55, i32 199} ; [ DW_TAG_subprogram ] [line 198] [def] [scope 199] [CCTKi_CommandLineDescribeParameter]
!55 = metadata !{metadata !56, metadata !57, metadata !58, metadata !59, metadata !60}
!56 = metadata !{i32 786689, metadata !54, metadata !"argument", metadata !5, i32 16777414, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [argument] [line 198]
!57 = metadata !{i32 786688, metadata !54, metadata !"thorn", metadata !5, i32 200, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [thorn] [line 200]
!58 = metadata !{i32 786688, metadata !54, metadata !"param", metadata !5, i32 200, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [param] [line 200]
!59 = metadata !{i32 786688, metadata !54, metadata !"cthorn", metadata !5, i32 201, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cthorn] [line 201]
!60 = metadata !{i32 786688, metadata !54, metadata !"properties", metadata !5, i32 202, metadata !28, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [properties] [line 202]
!61 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"CCTKi_CommandLineTestParameters", metadata !"CCTKi_CommandLineTestParameters", metadata !"", i32 248, metadata !12, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i8*)* @CCTKi_CommandLineTestParameters, null, null, metadata !62, i32 249} ; [ DW_TAG_subprogram ] [line 248] [def] [scope 249] [CCTKi_CommandLineTestParameters]
!62 = metadata !{metadata !63, metadata !64, metadata !65}
!63 = metadata !{i32 786689, metadata !61, metadata !"argument", metadata !5, i32 16777464, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [argument] [line 248]
!64 = metadata !{i32 786688, metadata !61, metadata !"nprocs", metadata !5, i32 250, metadata !17, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nprocs] [line 250]
!65 = metadata !{i32 786688, metadata !61, metadata !"endptr", metadata !5, i32 251, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [endptr] [line 251]
!66 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"CCTKi_CommandLineWarningLevel", metadata !"CCTKi_CommandLineWarningLevel", metadata !"", i32 289, metadata !12, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i8*)* @CCTKi_CommandLineWarningLevel, null, null, metadata !67, i32 290} ; [ DW_TAG_subprogram ] [line 289] [def] [scope 290] [CCTKi_CommandLineWarningLevel]
!67 = metadata !{metadata !68, metadata !69, metadata !70}
!68 = metadata !{i32 786689, metadata !66, metadata !"argument", metadata !5, i32 16777505, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [argument] [line 289]
!69 = metadata !{i32 786688, metadata !66, metadata !"endptr", metadata !5, i32 291, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [endptr] [line 291]
!70 = metadata !{i32 786688, metadata !66, metadata !"warninglevel", metadata !5, i32 292, metadata !71, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [warninglevel] [line 292]
!71 = metadata !{i32 786468, null, null, metadata !"long int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [long int] [line 0, size 64, align 64, offset 0, enc DW_ATE_signed]
!72 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"CCTKi_CommandLineErrorLevel", metadata !"CCTKi_CommandLineErrorLevel", metadata !"", i32 322, metadata !12, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i8*)* @CCTKi_CommandLineErrorLevel, null, null, metadata !73, i32 323} ; [ DW_TAG_subprogram ] [line 322] [def] [scope 323] [CCTKi_CommandLineErrorLevel]
!73 = metadata !{metadata !74, metadata !75, metadata !76}
!74 = metadata !{i32 786689, metadata !72, metadata !"argument", metadata !5, i32 16777538, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [argument] [line 322]
!75 = metadata !{i32 786688, metadata !72, metadata !"endptr", metadata !5, i32 324, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [endptr] [line 324]
!76 = metadata !{i32 786688, metadata !72, metadata !"errorlevel", metadata !5, i32 325, metadata !71, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [errorlevel] [line 325]
!77 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"CCTKi_CommandLineParameterLevel", metadata !"CCTKi_CommandLineParameterLevel", metadata !"", i32 355, metadata !12, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i8*)* @CCTKi_CommandLineParameterLevel, null, null, metadata !78, i32 356} ; [ DW_TAG_subprogram ] [line 355] [def] [scope 356] [CCTKi_CommandLineParameterLevel]
!78 = metadata !{metadata !79, metadata !80}
!79 = metadata !{i32 786689, metadata !77, metadata !"argument", metadata !5, i32 16777571, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [argument] [line 355]
!80 = metadata !{i32 786688, metadata !77, metadata !"parameterlevel", metadata !5, i32 357, metadata !17, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [parameterlevel] [line 357]
!81 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"CCTKi_CommandLineRedirectStdout", metadata !"CCTKi_CommandLineRedirectStdout", metadata !"", i32 392, metadata !82, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void ()* @CCTKi_CommandLineRedirectStdout, null, null, metadata !2, i32 393} ; [ DW_TAG_subprogram ] [line 392] [def] [scope 393] [CCTKi_CommandLineRedirectStdout]
!82 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !83, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!83 = metadata !{null}
!84 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"CCTKi_CommandLineListThorns", metadata !"CCTKi_CommandLineListThorns", metadata !"", i32 408, metadata !82, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void ()* @CCTKi_CommandLineListThorns, null, null, metadata !2, i32 409} ; [ DW_TAG_subprogram ] [line 408] [def] [scope 409] [CCTKi_CommandLineListThorns]
!85 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"CCTKi_CommandLineVersion", metadata !"CCTKi_CommandLineVersion", metadata !"", i32 432, metadata !82, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void ()* @CCTKi_CommandLineVersion, null, null, metadata !86, i32 433} ; [ DW_TAG_subprogram ] [line 432] [def] [scope 433] [CCTKi_CommandLineVersion]
!86 = metadata !{metadata !87, metadata !89}
!87 = metadata !{i32 786688, metadata !85, metadata !"argv", metadata !5, i32 434, metadata !88, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [argv] [line 434]
!88 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !25} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!89 = metadata !{i32 786688, metadata !85, metadata !"version", metadata !5, i32 435, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [version] [line 435]
!90 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"CCTKi_CommandLineHelp", metadata !"CCTKi_CommandLineHelp", metadata !"", i32 462, metadata !82, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void ()* @CCTKi_CommandLineHelp, null, null, metadata !91, i32 463} ; [ DW_TAG_subprogram ] [line 462] [def] [scope 463] [CCTKi_CommandLineHelp]
!91 = metadata !{metadata !92, metadata !93}
!92 = metadata !{i32 786688, metadata !90, metadata !"argv", metadata !5, i32 464, metadata !88, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [argv] [line 464]
!93 = metadata !{i32 786688, metadata !90, metadata !"commandline_options_description", metadata !5, i32 465, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [commandline_options_description] [line 465]
!94 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"CCTKi_CommandLineUsage", metadata !"CCTKi_CommandLineUsage", metadata !"", i32 506, metadata !82, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void ()* @CCTKi_CommandLineUsage, null, null, metadata !95, i32 507} ; [ DW_TAG_subprogram ] [line 506] [def] [scope 507] [CCTKi_CommandLineUsage]
!95 = metadata !{metadata !96}
!96 = metadata !{i32 786688, metadata !94, metadata !"argv", metadata !5, i32 508, metadata !88, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [argv] [line 508]
!97 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"CCTKi_CommandLineFinished", metadata !"CCTKi_CommandLineFinished", metadata !"", i32 531, metadata !82, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void ()* @CCTKi_CommandLineFinished, null, null, metadata !98, i32 532} ; [ DW_TAG_subprogram ] [line 531] [def] [scope 532] [CCTKi_CommandLineFinished]
!98 = metadata !{metadata !99, metadata !100}
!99 = metadata !{i32 786688, metadata !97, metadata !"myproc", metadata !5, i32 533, metadata !17, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [myproc] [line 533]
!100 = metadata !{i32 786688, metadata !97, metadata !"fname", metadata !5, i32 534, metadata !101, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [fname] [line 534]
!101 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 2048, i64 8, i32 0, i32 0, metadata !10, metadata !102, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 2048, align 8, offset 0] [from char]
!102 = metadata !{metadata !103}
!103 = metadata !{i32 786465, i64 0, i64 256}     ; [ DW_TAG_subrange_type ] [0, 255]
!104 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"CommandLinePrintParameter", metadata !"CommandLinePrintParameter", metadata !"", i32 579, metadata !105, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct.PARAM_PROPS*)* @CommandLinePrintParameter, null, null, metadata !107, i32 580} ; [ DW_TAG_subprogram ] [line 579] [local] [def] [scope 580] [CommandLinePrintParameter]
!105 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !106, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!106 = metadata !{null, metadata !28}
!107 = metadata !{metadata !108, metadata !109}
!108 = metadata !{i32 786689, metadata !104, metadata !"properties", metadata !5, i32 16777795, metadata !28, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [properties] [line 579]
!109 = metadata !{i32 786688, metadata !104, metadata !"range", metadata !5, i32 581, metadata !41, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [range] [line 581]
!110 = metadata !{metadata !111, metadata !112, metadata !113, metadata !118, metadata !122, metadata !123, metadata !124}
!111 = metadata !{i32 786484, i32 0, null, metadata !"cctki_paramchecking", metadata !"cctki_paramchecking", metadata !"", metadata !5, i32 67, metadata !17, i32 0, i32 1, i32* @cctki_paramchecking, null} ; [ DW_TAG_variable ] [cctki_paramchecking] [line 67] [def]
!112 = metadata !{i32 786484, i32 0, null, metadata !"cctki_paramcheck_nprocs", metadata !"cctki_paramcheck_nprocs", metadata !"", metadata !5, i32 68, metadata !17, i32 0, i32 1, i32* @cctki_paramcheck_nprocs, null} ; [ DW_TAG_variable ] [cctki_paramcheck_nprocs] [line 68] [def]
!113 = metadata !{i32 786484, i32 0, null, metadata !"cctk_parameter_scopes", metadata !"cctk_parameter_scopes", metadata !"", metadata !114, i32 36, metadata !115, i32 1, i32 1, [5 x i8*]* @cctk_parameter_scopes, null} ; [ DW_TAG_variable ] [cctk_parameter_scopes] [line 36] [local] [def]
!114 = metadata !{i32 786473, metadata !32}       ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/../include/cctk_Parameter.h]
!115 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 320, i64 64, i32 0, i32 0, metadata !8, metadata !116, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 320, align 64, offset 0] [from ]
!116 = metadata !{metadata !117}
!117 = metadata !{i32 786465, i64 0, i64 5}       ; [ DW_TAG_subrange_type ] [0, 4]
!118 = metadata !{i32 786484, i32 0, null, metadata !"cctk_parameter_type_names", metadata !"cctk_parameter_type_names", metadata !"", metadata !114, i32 54, metadata !119, i32 1, i32 1, [6 x i8*]* @cctk_parameter_type_names, null} ; [ DW_TAG_variable ] [cctk_parameter_type_names] [line 54] [local] [def]
!119 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 384, i64 64, i32 0, i32 0, metadata !8, metadata !120, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 384, align 64, offset 0] [from ]
!120 = metadata !{metadata !121}
!121 = metadata !{i32 786465, i64 0, i64 6}       ; [ DW_TAG_subrange_type ] [0, 5]
!122 = metadata !{i32 786484, i32 0, null, metadata !"redirectsubs", metadata !"redirectsubs", metadata !"", metadata !5, i32 60, metadata !17, i32 1, i32 1, null, null}
!123 = metadata !{i32 786484, i32 0, null, metadata !"paramchecking", metadata !"paramchecking", metadata !"", metadata !5, i32 61, metadata !17, i32 1, i32 1, null, null}
!124 = metadata !{i32 786484, i32 0, null, metadata !"rcsid", metadata !"rcsid", metadata !"", metadata !5, i32 38, metadata !8, i32 1, i32 1, null, null}
!125 = metadata !{i32 40, i32 0, metadata !4, null}
!126 = metadata !{i32 99, i32 0, metadata !11, null}
!127 = metadata !{i32 104, i32 0, metadata !11, null}
!128 = metadata !{i32 105, i32 0, metadata !11, null}
!129 = metadata !{metadata !"any pointer", metadata !130}
!130 = metadata !{metadata !"omnipotent char", metadata !131}
!131 = metadata !{metadata !"Simple C/C++ TBAA"}
!132 = metadata !{i32 107, i32 0, metadata !133, null}
!133 = metadata !{i32 786443, metadata !1, metadata !11, i32 106, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/CommandLine.c]
!134 = metadata !{i32 108, i32 0, metadata !133, null}
!135 = metadata !{i32 110, i32 0, metadata !11, null}
!136 = metadata !{i32 111, i32 0, metadata !11, null}
!137 = metadata !{i32 132, i32 0, metadata !18, null}
!138 = metadata !{i32 135, i32 0, metadata !18, null}
!139 = metadata !{i32 137, i32 0, metadata !18, null}
!140 = metadata !{i32 140, i32 0, metadata !18, null}
!141 = metadata !{i32 142, i32 0, metadata !142, null}
!142 = metadata !{i32 786443, metadata !1, metadata !18, i32 141, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/CommandLine.c]
!143 = metadata !{i32 144, i32 0, metadata !144, null}
!144 = metadata !{i32 786443, metadata !1, metadata !142, i32 144, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/CommandLine.c]
!145 = metadata !{i32 153, i32 0, metadata !146, null}
!146 = metadata !{i32 786443, metadata !1, metadata !147, i32 152, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/CommandLine.c]
!147 = metadata !{i32 786443, metadata !1, metadata !144, i32 145, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/CommandLine.c]
!148 = metadata !{i32 146, i32 0, metadata !147, null}
!149 = metadata !{i32 148, i32 0, metadata !147, null}
!150 = metadata !{i32 1}
!151 = metadata !{i32 150, i32 0, metadata !147, null}
!152 = metadata !{i32 151, i32 0, metadata !147, null}
!153 = metadata !{i32 155, i32 0, metadata !154, null}
!154 = metadata !{i32 786443, metadata !1, metadata !146, i32 154, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/CommandLine.c]
!155 = metadata !{i32 158, i32 0, metadata !156, null}
!156 = metadata !{i32 786443, metadata !1, metadata !154, i32 156, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/CommandLine.c]
!157 = metadata !{i32 159, i32 0, metadata !156, null}
!158 = metadata !{i32 161, i32 0, metadata !156, null}
!159 = metadata !{i32 162, i32 0, metadata !156, null}
!160 = metadata !{i32 163, i32 0, metadata !156, null}
!161 = metadata !{i32 167, i32 0, metadata !162, null}
!162 = metadata !{i32 786443, metadata !1, metadata !146, i32 166, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/CommandLine.c]
!163 = metadata !{i32 170, i32 0, metadata !146, null}
!164 = metadata !{i32 171, i32 0, metadata !146, null}
!165 = metadata !{i32 176, i32 0, metadata !18, null}
!166 = metadata !{i32 177, i32 0, metadata !18, null}
!167 = metadata !{i32 579, i32 0, metadata !104, null}
!168 = metadata !{i32 584, i32 0, metadata !104, null}
!169 = metadata !{i32 586, i32 0, metadata !170, null}
!170 = metadata !{i32 786443, metadata !1, metadata !104, i32 585, i32 0, i32 31} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/CommandLine.c]
!171 = metadata !{i32 587, i32 0, metadata !170, null}
!172 = metadata !{metadata !"int", metadata !130}
!173 = metadata !{i32 589, i32 0, metadata !174, null}
!174 = metadata !{i32 786443, metadata !1, metadata !170, i32 588, i32 0, i32 32} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/CommandLine.c]
!175 = metadata !{i32 591, i32 0, metadata !174, null}
!176 = metadata !{i32 592, i32 0, metadata !170, null}
!177 = metadata !{i32 593, i32 0, metadata !170, null}
!178 = metadata !{i32 594, i32 0, metadata !170, null}
!179 = metadata !{i32 595, i32 0, metadata !170, null}
!180 = metadata !{i32 596, i32 0, metadata !170, null}
!181 = metadata !{i32 598, i32 0, metadata !182, null}
!182 = metadata !{i32 786443, metadata !1, metadata !170, i32 598, i32 0, i32 33} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/CommandLine.c]
!183 = metadata !{i32 600, i32 0, metadata !184, null}
!184 = metadata !{i32 786443, metadata !1, metadata !182, i32 599, i32 0, i32 34} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/CommandLine.c]
!185 = metadata !{i32 601, i32 0, metadata !184, null}
!186 = metadata !{i32 602, i32 0, metadata !184, null}
!187 = metadata !{i32 605, i32 0, metadata !104, null}
!188 = metadata !{i32 198, i32 0, metadata !54, null}
!189 = metadata !{i32 200, i32 0, metadata !54, null}
!190 = metadata !{i32 205, i32 0, metadata !54, null}
!191 = metadata !{i32 207, i32 0, metadata !192, null}
!192 = metadata !{i32 786443, metadata !1, metadata !54, i32 206, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/CommandLine.c]
!193 = metadata !{i32 209, i32 0, metadata !192, null}
!194 = metadata !{i32 211, i32 0, metadata !195, null}
!195 = metadata !{i32 786443, metadata !1, metadata !192, i32 210, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/CommandLine.c]
!196 = metadata !{i32 212, i32 0, metadata !195, null}
!197 = metadata !{i32 215, i32 0, metadata !198, null}
!198 = metadata !{i32 786443, metadata !1, metadata !192, i32 214, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/CommandLine.c]
!199 = metadata !{i32 216, i32 0, metadata !198, null}
!200 = metadata !{i32 218, i32 0, metadata !201, null}
!201 = metadata !{i32 786443, metadata !1, metadata !198, i32 217, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/CommandLine.c]
!202 = metadata !{i32 219, i32 0, metadata !201, null}
!203 = metadata !{i32 220, i32 0, metadata !201, null}
!204 = metadata !{i32 222, i32 0, metadata !198, null}
!205 = metadata !{i32 223, i32 0, metadata !198, null}
!206 = metadata !{i32 226, i32 0, metadata !192, null}
!207 = metadata !{i32 227, i32 0, metadata !192, null}
!208 = metadata !{i32 229, i32 0, metadata !54, null}
!209 = metadata !{i32 230, i32 0, metadata !54, null}
!210 = metadata !{i32 248, i32 0, metadata !61, null}
!211 = metadata !{i32 251, i32 0, metadata !61, null}
!212 = metadata !{i32 254, i32 0, metadata !61, null}
!213 = metadata !{i32 260, i32 0, metadata !214, null}
!214 = metadata !{i32 786443, metadata !1, metadata !61, i32 259, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/CommandLine.c]
!215 = metadata !{i32 261, i32 0, metadata !214, null}
!216 = metadata !{i32 263, i32 0, metadata !217, null}
!217 = metadata !{i32 786443, metadata !1, metadata !214, i32 262, i32 0, i32 14} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/CommandLine.c]
!218 = metadata !{i32 264, i32 0, metadata !217, null}
!219 = metadata !{i32 268, i32 0, metadata !61, null}
!220 = metadata !{i32 269, i32 0, metadata !61, null}
!221 = metadata !{i32 270, i32 0, metadata !61, null}
!222 = metadata !{i32 508, i32 0, metadata !94, null}
!223 = metadata !{i32 511, i32 0, metadata !94, null}
!224 = metadata !{i32 513, i32 0, metadata !225, null}
!225 = metadata !{i32 786443, metadata !1, metadata !94, i32 512, i32 0, i32 26} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/CommandLine.c]
!226 = metadata !{i32 515, i32 0, metadata !225, null}
!227 = metadata !{i32 516, i32 0, metadata !225, null}
!228 = metadata !{i32 518, i32 0, metadata !94, null}
!229 = metadata !{i32 519, i32 0, metadata !94, null}
!230 = metadata !{i32 289, i32 0, metadata !66, null}
!231 = metadata !{i32 291, i32 0, metadata !66, null}
!232 = metadata !{i32 295, i32 0, metadata !66, null}
!233 = metadata !{i32 296, i32 0, metadata !66, null}
!234 = metadata !{i32 298, i32 0, metadata !235, null}
!235 = metadata !{i32 786443, metadata !1, metadata !66, i32 297, i32 0, i32 15} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/CommandLine.c]
!236 = metadata !{i32 299, i32 0, metadata !235, null}
!237 = metadata !{i32 302, i32 0, metadata !238, null}
!238 = metadata !{i32 786443, metadata !1, metadata !66, i32 301, i32 0, i32 16} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/CommandLine.c]
!239 = metadata !{i32 304, i32 0, metadata !66, null}
!240 = metadata !{i32 322, i32 0, metadata !72, null}
!241 = metadata !{i32 324, i32 0, metadata !72, null}
!242 = metadata !{i32 328, i32 0, metadata !72, null}
!243 = metadata !{i32 329, i32 0, metadata !72, null}
!244 = metadata !{i32 331, i32 0, metadata !245, null}
!245 = metadata !{i32 786443, metadata !1, metadata !72, i32 330, i32 0, i32 17} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/CommandLine.c]
!246 = metadata !{i32 332, i32 0, metadata !245, null}
!247 = metadata !{i32 335, i32 0, metadata !248, null}
!248 = metadata !{i32 786443, metadata !1, metadata !72, i32 334, i32 0, i32 18} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/CommandLine.c]
!249 = metadata !{i32 337, i32 0, metadata !72, null}
!250 = metadata !{i32 355, i32 0, metadata !77, null}
!251 = metadata !{i32 360, i32 0, metadata !77, null}
!252 = metadata !{i32 364, i32 0, metadata !77, null}
!253 = metadata !{i32 368, i32 0, metadata !77, null}
!254 = metadata !{i32 374, i32 0, metadata !255, null}
!255 = metadata !{i32 786443, metadata !1, metadata !77, i32 373, i32 0, i32 22} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/CommandLine.c]
!256 = metadata !{i32 377, i32 0, metadata !255, null}
!257 = metadata !{i32 380, i32 0, metadata !77, null}
!258 = metadata !{i32 381, i32 0, metadata !77, null}
!259 = metadata !{i32 396, i32 0, metadata !81, null}
!260 = metadata !{i32 410, i32 0, metadata !84, null}
!261 = metadata !{i32 412, i32 0, metadata !262, null}
!262 = metadata !{i32 786443, metadata !1, metadata !84, i32 411, i32 0, i32 23} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/CommandLine.c]
!263 = metadata !{i32 413, i32 0, metadata !262, null}
!264 = metadata !{i32 414, i32 0, metadata !262, null}
!265 = metadata !{i32 415, i32 0, metadata !262, null}
!266 = metadata !{i32 417, i32 0, metadata !84, null}
!267 = metadata !{i32 418, i32 0, metadata !84, null}
!268 = metadata !{i32 434, i32 0, metadata !85, null}
!269 = metadata !{i32 438, i32 0, metadata !85, null}
!270 = metadata !{i32 440, i32 0, metadata !271, null}
!271 = metadata !{i32 786443, metadata !1, metadata !85, i32 439, i32 0, i32 24} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/CommandLine.c]
!272 = metadata !{i32 441, i32 0, metadata !271, null}
!273 = metadata !{i32 443, i32 0, metadata !271, null}
!274 = metadata !{i32 444, i32 0, metadata !271, null}
!275 = metadata !{i32 445, i32 0, metadata !271, null}
!276 = metadata !{i32 447, i32 0, metadata !85, null}
!277 = metadata !{i32 448, i32 0, metadata !85, null}
!278 = metadata !{i32 464, i32 0, metadata !90, null}
!279 = metadata !{null}
!280 = metadata !{i32 480, i32 0, metadata !90, null}
!281 = metadata !{i32 483, i32 0, metadata !90, null}
!282 = metadata !{i32 485, i32 0, metadata !283, null}
!283 = metadata !{i32 786443, metadata !1, metadata !90, i32 484, i32 0, i32 25} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/CommandLine.c]
!284 = metadata !{i32 487, i32 0, metadata !283, null}
!285 = metadata !{i32 488, i32 0, metadata !283, null}
!286 = metadata !{i32 489, i32 0, metadata !283, null}
!287 = metadata !{i32 490, i32 0, metadata !283, null}
!288 = metadata !{i32 491, i32 0, metadata !283, null}
!289 = metadata !{i32 493, i32 0, metadata !90, null}
!290 = metadata !{i32 494, i32 0, metadata !90, null}
!291 = metadata !{i32 534, i32 0, metadata !97, null}
!292 = metadata !{i32 538, i32 0, metadata !97, null}
!293 = metadata !{i32 540, i32 0, metadata !294, null}
!294 = metadata !{i32 786443, metadata !1, metadata !97, i32 539, i32 0, i32 27} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/CommandLine.c]
!295 = metadata !{i32 541, i32 0, metadata !294, null}
!296 = metadata !{i32 544, i32 0, metadata !97, null}
!297 = metadata !{i32 545, i32 0, metadata !97, null}
!298 = metadata !{i32 547, i32 0, metadata !299, null}
!299 = metadata !{i32 786443, metadata !1, metadata !97, i32 546, i32 0, i32 28} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/CommandLine.c]
!300 = metadata !{i32 549, i32 0, metadata !301, null}
!301 = metadata !{i32 786443, metadata !1, metadata !299, i32 548, i32 0, i32 29} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/CommandLine.c]
!302 = metadata !{i32 550, i32 0, metadata !301, null}
!303 = metadata !{i32 553, i32 0, metadata !304, null}
!304 = metadata !{i32 786443, metadata !1, metadata !299, i32 552, i32 0, i32 30} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/CommandLine.c]
!305 = metadata !{i32 555, i32 0, metadata !299, null}
!306 = metadata !{i32 556, i32 0, metadata !299, null}
!307 = metadata !{i32 557, i32 0, metadata !97, null}
