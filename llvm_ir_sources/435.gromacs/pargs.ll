; ModuleID = '../../SPEC/benchspec/CPU2006/435.gromacs/src/pargs.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.t_pargs = type { i8*, i32, i32, %union.anon, i8* }
%union.anon = type { i8* }

@.str = private unnamed_addr constant [7 x i8] c"HIDDEN\00", align 1
@.str1 = private unnamed_addr constant [9 x i8] c"[hidden]\00", align 1
@.str2 = private unnamed_addr constant [6 x i8] c"bKeep\00", align 1
@.str3 = private unnamed_addr constant [53 x i8] c"../../SPEC/benchspec/CPU2006/435.gromacs/src/pargs.c\00", align 1
@.str4 = private unnamed_addr constant [6 x i8] c"-no%s\00", align 1
@stderr = external global %struct._IO_FILE*
@.str5 = private unnamed_addr constant [35 x i8] c"Setting option %s more than once!\0A\00", align 1
@.str6 = private unnamed_addr constant [34 x i8] c"Invalid argument %s for option %s\00", align 1
@.str7 = private unnamed_addr constant [44 x i8] c"%s: vector must have 1 or 3 real parameters\00", align 1
@.str8 = private unnamed_addr constant [25 x i8] c"Invalid type %d in pargs\00", align 1
@.str9 = private unnamed_addr constant [30 x i8] c"No integer option %s in pargs\00", align 1
@.str10 = private unnamed_addr constant [30 x i8] c"No boolean option %s in pargs\00", align 1
@.str11 = private unnamed_addr constant [27 x i8] c"No real option %s in pargs\00", align 1
@.str12 = private unnamed_addr constant [29 x i8] c"No string option %s in pargs\00", align 1
@.str13 = private unnamed_addr constant [27 x i8] c"No such option %s in pargs\00", align 1
@pa_val.buf = internal global [256 x i8] zeroinitializer, align 16
@.str14 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str15 = private unnamed_addr constant [4 x i8] c"%6g\00", align 1
@.str16 = private unnamed_addr constant [4 x i8] c"%6s\00", align 1
@.str17 = private unnamed_addr constant [4 x i8] c"yes\00", align 1
@.str18 = private unnamed_addr constant [3 x i8] c"no\00", align 1
@.str19 = private unnamed_addr constant [25 x i8] c"Argument too long: \22%d\22\0A\00", align 1
@.str20 = private unnamed_addr constant [9 x i8] c"%g %g %g\00", align 1
@.str21 = private unnamed_addr constant [8 x i8] c"-hidden\00", align 1
@.str22 = private unnamed_addr constant [18 x i8] c"%12s %6s %6s  %s\0A\00", align 1
@.str23 = private unnamed_addr constant [7 x i8] c"Option\00", align 1
@.str24 = private unnamed_addr constant [5 x i8] c"Type\00", align 1
@.str25 = private unnamed_addr constant [6 x i8] c"Value\00", align 1
@.str26 = private unnamed_addr constant [12 x i8] c"Description\00", align 1
@.str27 = private unnamed_addr constant [56 x i8] c"------------------------------------------------------\0A\00", align 1
@.str28 = private unnamed_addr constant [8 x i8] c"-[no]%s\00", align 1
@argtp = internal unnamed_addr constant [7 x i8*] [i8* getelementptr inbounds ([4 x i8]* @.str41, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @.str42, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @.str43, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @.str44, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @.str45, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @.str46, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @.str47, i32 0, i32 0)], align 16
@.str29 = private unnamed_addr constant [6 x i8] c"%12s\0A\00", align 1
@.str30 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str31 = private unnamed_addr constant [18 x i8] c"%-14s%5s %6s  %s\0A\00", align 1
@.str32 = private unnamed_addr constant [6 x i8] c"wdesc\00", align 1
@.str34 = private unnamed_addr constant [9 x i8] c" \22n/%s/(\00", align 1
@.str35 = private unnamed_addr constant [4 x i8] c" %s\00", align 1
@.str36 = private unnamed_addr constant [4 x i8] c")/\22\00", align 1
@.str37 = private unnamed_addr constant [31 x i8] c"%s) COMPREPLY=( $(compgen -W '\00", align 1
@.str38 = private unnamed_addr constant [15 x i8] c" ' -- $c ));;\0A\00", align 1
@.str39 = private unnamed_addr constant [18 x i8] c"- 'c[-1,%s]' -s \22\00", align 1
@.str40 = private unnamed_addr constant [3 x i8] c"\22 \00", align 1
@.str41 = private unnamed_addr constant [4 x i8] c"int\00", align 1
@.str42 = private unnamed_addr constant [5 x i8] c"real\00", align 1
@.str43 = private unnamed_addr constant [5 x i8] c"time\00", align 1
@.str44 = private unnamed_addr constant [7 x i8] c"string\00", align 1
@.str45 = private unnamed_addr constant [5 x i8] c"bool\00", align 1
@.str46 = private unnamed_addr constant [7 x i8] c"vector\00", align 1
@.str47 = private unnamed_addr constant [5 x i8] c"enum\00", align 1

; Function Attrs: nounwind optsize readonly uwtable
define i32 @is_hidden(%struct.t_pargs* nocapture %pa) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.t_pargs* %pa}, i64 0, metadata !67), !dbg !220
  %desc = getelementptr inbounds %struct.t_pargs* %pa, i64 0, i32 4, !dbg !221
  %0 = load i8** %desc, align 8, !dbg !221, !tbaa !222
  %call = tail call i8* @strstr(i8* %0, i8* getelementptr inbounds ([7 x i8]* @.str, i64 0, i64 0)) #8, !dbg !221
  %cmp = icmp eq i8* %call, null, !dbg !221
  br i1 %cmp, label %lor.rhs, label %lor.end, !dbg !221

lor.rhs:                                          ; preds = %entry
  %call2 = tail call i8* @strstr(i8* %0, i8* getelementptr inbounds ([9 x i8]* @.str1, i64 0, i64 0)) #8, !dbg !225
  %cmp3 = icmp ne i8* %call2, null, !dbg !225
  br label %lor.end, !dbg !225

lor.end:                                          ; preds = %entry, %lor.rhs
  %1 = phi i1 [ true, %entry ], [ %cmp3, %lor.rhs ]
  %lor.ext = zext i1 %1 to i32, !dbg !225
  ret i32 %lor.ext, !dbg !225
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

; Function Attrs: nounwind optsize readonly
declare i8* @strstr(i8*, i8* nocapture) #2

; Function Attrs: nounwind optsize uwtable
define void @get_pargs(i32* nocapture %argc, i8** %argv, i32 %nparg, %struct.t_pargs* nocapture %pa, i32 %bKeepArgs) #3 {
entry:
  %i = alloca i32, align 4
  %buf = alloca [32 x i8], align 16
  call void @llvm.dbg.value(metadata !{i32* %argc}, i64 0, metadata !72), !dbg !226
  call void @llvm.dbg.value(metadata !{i8** %argv}, i64 0, metadata !73), !dbg !226
  call void @llvm.dbg.value(metadata !{i32 %nparg}, i64 0, metadata !74), !dbg !226
  call void @llvm.dbg.value(metadata !{%struct.t_pargs* %pa}, i64 0, metadata !75), !dbg !226
  call void @llvm.dbg.value(metadata !{i32 %bKeepArgs}, i64 0, metadata !76), !dbg !226
  call void @llvm.dbg.declare(metadata !{i32* %i}, metadata !77), !dbg !227
  call void @llvm.dbg.declare(metadata !{[32 x i8]* %buf}, metadata !82), !dbg !228
  %0 = load i32* %argc, align 4, !dbg !229, !tbaa !230
  %add = add nsw i32 %0, 1, !dbg !229
  %call = call i8* @save_calloc(i8* getelementptr inbounds ([6 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str3, i64 0, i64 0), i32 58, i32 %add, i32 4) #9, !dbg !229
  %1 = bitcast i8* %call to i32*, !dbg !229
  call void @llvm.dbg.value(metadata !{i32* %1}, i64 0, metadata !81), !dbg !229
  store i32 1, i32* %1, align 4, !dbg !231, !tbaa !230
  %2 = load i32* %argc, align 4, !dbg !232, !tbaa !230
  %idxprom = sext i32 %2 to i64, !dbg !232
  %arrayidx1 = getelementptr inbounds i32* %1, i64 %idxprom, !dbg !232
  store i32 1, i32* %arrayidx1, align 4, !dbg !232, !tbaa !230
  call void @llvm.dbg.value(metadata !233, i64 0, metadata !77), !dbg !234
  call void @llvm.dbg.value(metadata !233, i64 0, metadata !77), !dbg !234
  store i32 1, i32* %i, align 4, !dbg !234, !tbaa !230
  call void @llvm.dbg.value(metadata !{i32* %i}, i64 0, metadata !77), !dbg !234
  %3 = load i32* %argc, align 4, !dbg !234, !tbaa !230
  %cmp393 = icmp sgt i32 %3, 1, !dbg !234
  br i1 %cmp393, label %for.body.lr.ph, label %for.end251, !dbg !234

for.body.lr.ph:                                   ; preds = %entry
  %cmp5391 = icmp sgt i32 %nparg, 0, !dbg !236
  %arraydecay = getelementptr inbounds [32 x i8]* %buf, i64 0, i64 0, !dbg !239
  br label %for.body, !dbg !234

for.body:                                         ; preds = %for.body.lr.ph, %for.inc249
  %storemerge394 = phi i32 [ 1, %for.body.lr.ph ], [ %inc250, %for.inc249 ]
  %idxprom2 = sext i32 %storemerge394 to i64, !dbg !242
  %arrayidx3 = getelementptr inbounds i32* %1, i64 %idxprom2, !dbg !242
  store i32 1, i32* %arrayidx3, align 4, !dbg !242, !tbaa !230
  call void @llvm.dbg.value(metadata !29, i64 0, metadata !78), !dbg !236
  br i1 %cmp5391, label %for.body6, label %for.inc249, !dbg !236

for.body6:                                        ; preds = %for.body, %for.inc246
  %indvars.iv395 = phi i64 [ %indvars.iv.next396, %for.inc246 ], [ 0, %for.body ]
  %type = getelementptr inbounds %struct.t_pargs* %pa, i64 %indvars.iv395, i32 2, !dbg !243
  %4 = load i32* %type, align 4, !dbg !243, !tbaa !230
  %cmp9 = icmp eq i32 %4, 4, !dbg !243
  %option = getelementptr inbounds %struct.t_pargs* %pa, i64 %indvars.iv395, i32 0, !dbg !239
  %5 = load i8** %option, align 8, !dbg !239, !tbaa !222
  br i1 %cmp9, label %if.then, label %if.else43, !dbg !243

if.then:                                          ; preds = %for.body6
  %add.ptr = getelementptr inbounds i8* %5, i64 1, !dbg !239
  %call12 = call i32 (i8*, i8*, ...)* @sprintf(i8* %arraydecay, i8* getelementptr inbounds ([6 x i8]* @.str4, i64 0, i64 0), i8* %add.ptr) #9, !dbg !239
  %6 = load i8** %option, align 8, !dbg !244, !tbaa !222
  call void @llvm.dbg.value(metadata !{i32* %i}, i64 0, metadata !77), !dbg !244
  %7 = load i32* %i, align 4, !dbg !244, !tbaa !230
  %idxprom16 = sext i32 %7 to i64, !dbg !244
  %arrayidx17 = getelementptr inbounds i8** %argv, i64 %idxprom16, !dbg !244
  %8 = load i8** %arrayidx17, align 8, !dbg !244, !tbaa !222
  %call18 = call i32 @strcmp(i8* %6, i8* %8) #8, !dbg !244
  %cmp19 = icmp eq i32 %call18, 0, !dbg !244
  br i1 %cmp19, label %if.then20, label %if.else, !dbg !244

if.then20:                                        ; preds = %if.then
  %u = getelementptr inbounds %struct.t_pargs* %pa, i64 %indvars.iv395, i32 3, !dbg !245
  %b = bitcast %union.anon* %u to i32**, !dbg !245
  %9 = load i32** %b, align 8, !dbg !245, !tbaa !222
  store i32 1, i32* %9, align 4, !dbg !245, !tbaa !230
  %bSet = getelementptr inbounds %struct.t_pargs* %pa, i64 %indvars.iv395, i32 1, !dbg !247
  store i32 1, i32* %bSet, align 4, !dbg !247, !tbaa !230
  call void @llvm.dbg.value(metadata !{i32* %i}, i64 0, metadata !77), !dbg !248
  %10 = load i32* %i, align 4, !dbg !248, !tbaa !230
  %idxprom25 = sext i32 %10 to i64, !dbg !248
  %arrayidx26 = getelementptr inbounds i32* %1, i64 %idxprom25, !dbg !248
  store i32 0, i32* %arrayidx26, align 4, !dbg !248, !tbaa !230
  br label %for.inc246, !dbg !249

if.else:                                          ; preds = %if.then
  %call30 = call i32 @strcmp(i8* %arraydecay, i8* %8) #8, !dbg !250
  %cmp31 = icmp eq i32 %call30, 0, !dbg !250
  br i1 %cmp31, label %if.then32, label %for.inc246, !dbg !250

if.then32:                                        ; preds = %if.else
  %u35 = getelementptr inbounds %struct.t_pargs* %pa, i64 %indvars.iv395, i32 3, !dbg !251
  %b36 = bitcast %union.anon* %u35 to i32**, !dbg !251
  %11 = load i32** %b36, align 8, !dbg !251, !tbaa !222
  store i32 0, i32* %11, align 4, !dbg !251, !tbaa !230
  %bSet39 = getelementptr inbounds %struct.t_pargs* %pa, i64 %indvars.iv395, i32 1, !dbg !253
  store i32 1, i32* %bSet39, align 4, !dbg !253, !tbaa !230
  call void @llvm.dbg.value(metadata !{i32* %i}, i64 0, metadata !77), !dbg !254
  %12 = load i32* %i, align 4, !dbg !254, !tbaa !230
  %idxprom40 = sext i32 %12 to i64, !dbg !254
  %arrayidx41 = getelementptr inbounds i32* %1, i64 %idxprom40, !dbg !254
  store i32 0, i32* %arrayidx41, align 4, !dbg !254, !tbaa !230
  br label %for.inc246, !dbg !255

if.else43:                                        ; preds = %for.body6
  call void @llvm.dbg.value(metadata !{i32* %i}, i64 0, metadata !77), !dbg !256
  %13 = load i32* %i, align 4, !dbg !256, !tbaa !230
  %idxprom47 = sext i32 %13 to i64, !dbg !256
  %arrayidx48 = getelementptr inbounds i8** %argv, i64 %idxprom47, !dbg !256
  %14 = load i8** %arrayidx48, align 8, !dbg !256, !tbaa !222
  %call49 = call i32 @strcmp(i8* %5, i8* %14) #8, !dbg !256
  %cmp50 = icmp eq i32 %call49, 0, !dbg !256
  br i1 %cmp50, label %if.then51, label %for.inc246, !dbg !256

if.then51:                                        ; preds = %if.else43
  %bSet54 = getelementptr inbounds %struct.t_pargs* %pa, i64 %indvars.iv395, i32 1, !dbg !257
  %15 = load i32* %bSet54, align 4, !dbg !257, !tbaa !230
  %tobool = icmp eq i32 %15, 0, !dbg !257
  br i1 %tobool, label %if.end60, label %if.then55, !dbg !257

if.then55:                                        ; preds = %if.then51
  %16 = load %struct._IO_FILE** @stderr, align 8, !dbg !259, !tbaa !222
  %call59 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %16, i8* getelementptr inbounds ([35 x i8]* @.str5, i64 0, i64 0), i8* %5) #9, !dbg !259
  call void @llvm.dbg.value(metadata !{i32* %i}, i64 0, metadata !77), !dbg !260
  %.pre = load i32* %i, align 4, !dbg !260, !tbaa !230
  br label %if.end60, !dbg !259

if.end60:                                         ; preds = %if.then51, %if.then55
  %17 = phi i32 [ %13, %if.then51 ], [ %.pre, %if.then55 ]
  store i32 1, i32* %bSet54, align 4, !dbg !261, !tbaa !230
  call void @llvm.dbg.value(metadata !{i32* %i}, i64 0, metadata !77), !dbg !260
  %idxprom64 = sext i32 %17 to i64, !dbg !260
  %arrayidx65 = getelementptr inbounds i32* %1, i64 %idxprom64, !dbg !260
  store i32 0, i32* %arrayidx65, align 4, !dbg !260, !tbaa !230
  %18 = load i32* %type, align 4, !dbg !262, !tbaa !230
  switch i32 %18, label %sw.default [
    i32 0, label %sw.bb
    i32 2, label %sw.bb74
    i32 1, label %sw.bb74
    i32 3, label %sw.bb79
    i32 6, label %sw.bb84
    i32 5, label %sw.bb147
  ], !dbg !262

sw.bb:                                            ; preds = %if.end60
  %19 = load i32* %argc, align 4, !dbg !263, !tbaa !230
  %call69 = call i32 @iscan(i32 %19, i8** %argv, i32* %i) #9, !dbg !263
  %u72 = getelementptr inbounds %struct.t_pargs* %pa, i64 %indvars.iv395, i32 3, !dbg !263
  %i73 = bitcast %union.anon* %u72 to i32**, !dbg !263
  %20 = load i32** %i73, align 8, !dbg !263, !tbaa !222
  store i32 %call69, i32* %20, align 4, !dbg !263, !tbaa !230
  br label %sw.epilog, !dbg !265

sw.bb74:                                          ; preds = %if.end60, %if.end60
  %21 = load i32* %argc, align 4, !dbg !266, !tbaa !230
  %call75 = call double @dscan(i32 %21, i8** %argv, i32* %i) #9, !dbg !266
  %conv = fptrunc double %call75 to float, !dbg !266
  %u78 = getelementptr inbounds %struct.t_pargs* %pa, i64 %indvars.iv395, i32 3, !dbg !266
  %r = bitcast %union.anon* %u78 to float**, !dbg !266
  %22 = load float** %r, align 8, !dbg !266, !tbaa !222
  store float %conv, float* %22, align 4, !dbg !266, !tbaa !267
  br label %sw.epilog, !dbg !268

sw.bb79:                                          ; preds = %if.end60
  %23 = load i32* %argc, align 4, !dbg !269, !tbaa !230
  %call80 = call i8* @sscan(i32 %23, i8** %argv, i32* %i) #9, !dbg !269
  %u83 = getelementptr inbounds %struct.t_pargs* %pa, i64 %indvars.iv395, i32 3, !dbg !269
  %c = bitcast %union.anon* %u83 to i8***, !dbg !269
  %24 = load i8*** %c, align 8, !dbg !269, !tbaa !222
  store i8* %call80, i8** %24, align 8, !dbg !269, !tbaa !222
  br label %sw.epilog, !dbg !270

sw.bb84:                                          ; preds = %if.end60
  call void @llvm.dbg.value(metadata !271, i64 0, metadata !80), !dbg !272
  %25 = load i32* %argc, align 4, !dbg !273, !tbaa !230
  %call85 = call i8* @sscan(i32 %25, i8** %argv, i32* %i) #9, !dbg !273
  call void @llvm.dbg.value(metadata !{i8* %call85}, i64 0, metadata !86), !dbg !273
  call void @llvm.dbg.value(metadata !233, i64 0, metadata !79), !dbg !274
  %u90 = getelementptr inbounds %struct.t_pargs* %pa, i64 %indvars.iv395, i32 3, !dbg !274
  %c91 = bitcast %union.anon* %u90 to i8***, !dbg !274
  %26 = load i8*** %c91, align 8, !dbg !274, !tbaa !222
  %arrayidx92385 = getelementptr inbounds i8** %26, i64 1, !dbg !274
  %27 = load i8** %arrayidx92385, align 8, !dbg !274, !tbaa !222
  %cmp93386 = icmp eq i8* %27, null, !dbg !274
  br i1 %cmp93386, label %if.else142, label %for.body95.lr.ph, !dbg !274

for.body95.lr.ph:                                 ; preds = %sw.bb84
  %call102 = call i64 @strlen(i8* %call85) #8, !dbg !276
  br label %for.body95, !dbg !274

for.body95:                                       ; preds = %for.body95.lr.ph, %for.inc
  %indvars.iv = phi i64 [ 1, %for.body95.lr.ph ], [ %indvars.iv.next, %for.inc ]
  %28 = phi i8* [ %27, %for.body95.lr.ph ], [ %31, %for.inc ]
  %match.0387 = phi i32 [ -12345, %for.body95.lr.ph ], [ %match.1, %for.inc ]
  %call103 = call i32 @strncasecmp(i8* %call85, i8* %28, i64 %call102) #8, !dbg !276
  %cmp104 = icmp eq i32 %call103, 0, !dbg !276
  br i1 %cmp104, label %if.then106, label %for.inc, !dbg !276

if.then106:                                       ; preds = %for.body95
  %cmp107 = icmp eq i32 %match.0387, -12345, !dbg !277
  br i1 %cmp107, label %if.then125, label %lor.lhs.false, !dbg !277

lor.lhs.false:                                    ; preds = %if.then106
  %call115 = call i64 @strlen(i8* %28) #8, !dbg !278
  %idxprom116 = sext i32 %match.0387 to i64, !dbg !278
  %arrayidx121 = getelementptr inbounds i8** %26, i64 %idxprom116, !dbg !278
  %29 = load i8** %arrayidx121, align 8, !dbg !278, !tbaa !222
  %call122 = call i64 @strlen(i8* %29) #8, !dbg !278
  %cmp123 = icmp ult i64 %call115, %call122, !dbg !278
  br i1 %cmp123, label %if.then125, label %for.inc, !dbg !278

if.then125:                                       ; preds = %lor.lhs.false, %if.then106
  call void @llvm.dbg.value(metadata !279, i64 0, metadata !80), !dbg !280
  %30 = trunc i64 %indvars.iv to i32, !dbg !280
  br label %for.inc, !dbg !280

for.inc:                                          ; preds = %for.body95, %if.then125, %lor.lhs.false
  %match.1 = phi i32 [ %30, %if.then125 ], [ %match.0387, %lor.lhs.false ], [ %match.0387, %for.body95 ]
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !274
  %arrayidx92 = getelementptr inbounds i8** %26, i64 %indvars.iv.next, !dbg !274
  %31 = load i8** %arrayidx92, align 8, !dbg !274, !tbaa !222
  %cmp93 = icmp eq i8* %31, null, !dbg !274
  br i1 %cmp93, label %for.end, label %for.body95, !dbg !274

for.end:                                          ; preds = %for.inc
  %cmp128 = icmp eq i32 %match.1, -12345, !dbg !281
  br i1 %cmp128, label %if.else142, label %if.then130, !dbg !281

if.then130:                                       ; preds = %for.end
  %idxprom131 = sext i32 %match.1 to i64, !dbg !282
  %arrayidx136 = getelementptr inbounds i8** %26, i64 %idxprom131, !dbg !282
  %32 = load i8** %arrayidx136, align 8, !dbg !282, !tbaa !222
  store i8* %32, i8** %26, align 8, !dbg !282, !tbaa !222
  br label %sw.epilog, !dbg !282

if.else142:                                       ; preds = %sw.bb84, %for.end
  %33 = load i8** %option, align 8, !dbg !283, !tbaa !222
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([34 x i8]* @.str6, i64 0, i64 0), i8* %call85, i8* %33) #9, !dbg !283
  br label %sw.epilog

sw.bb147:                                         ; preds = %if.end60
  %34 = load i32* %argc, align 4, !dbg !284, !tbaa !230
  %call148 = call double @dscan(i32 %34, i8** %argv, i32* %i) #9, !dbg !284
  %conv149 = fptrunc double %call148 to float, !dbg !284
  %u152 = getelementptr inbounds %struct.t_pargs* %pa, i64 %indvars.iv395, i32 3, !dbg !284
  %rv = bitcast %union.anon* %u152 to [3 x float]**, !dbg !284
  %35 = load [3 x float]** %rv, align 8, !dbg !284, !tbaa !222
  %arrayidx153 = getelementptr inbounds [3 x float]* %35, i64 0, i64 0, !dbg !284
  store float %conv149, float* %arrayidx153, align 4, !dbg !284, !tbaa !267
  call void @llvm.dbg.value(metadata !{i32* %i}, i64 0, metadata !77), !dbg !285
  %36 = load i32* %i, align 4, !dbg !285, !tbaa !230
  %add154 = add nsw i32 %36, 1, !dbg !285
  %37 = load i32* %argc, align 4, !dbg !285, !tbaa !230
  %cmp155 = icmp eq i32 %add154, %37, !dbg !285
  br i1 %cmp155, label %if.then175, label %lor.lhs.false157, !dbg !285

lor.lhs.false157:                                 ; preds = %sw.bb147
  %idxprom159 = sext i32 %add154 to i64, !dbg !285
  %arrayidx160 = getelementptr inbounds i8** %argv, i64 %idxprom159, !dbg !285
  %38 = load i8** %arrayidx160, align 8, !dbg !285, !tbaa !222
  %39 = load i8* %38, align 1, !dbg !285, !tbaa !223
  %cmp163 = icmp eq i8 %39, 45, !dbg !285
  br i1 %cmp163, label %land.lhs.true, label %if.else191, !dbg !285

land.lhs.true:                                    ; preds = %lor.lhs.false157
  %arrayidx168 = getelementptr inbounds i8* %38, i64 1, !dbg !285
  %40 = load i8* %arrayidx168, align 1, !dbg !285, !tbaa !223
  %idxprom170 = sext i8 %40 to i64, !dbg !285
  %call171 = call i16** @__ctype_b_loc() #10, !dbg !286
  %41 = load i16** %call171, align 8, !dbg !286, !tbaa !222
  %arrayidx172 = getelementptr inbounds i16* %41, i64 %idxprom170, !dbg !286
  %42 = load i16* %arrayidx172, align 2, !dbg !286, !tbaa !287
  %and = and i16 %42, 2048, !dbg !286
  %tobool174 = icmp eq i16 %and, 0, !dbg !286
  br i1 %tobool174, label %if.then175, label %if.else191, !dbg !286

if.then175:                                       ; preds = %land.lhs.true, %sw.bb147
  %arrayidx185 = getelementptr inbounds [3 x float]* %35, i64 0, i64 2, !dbg !288
  store float %conv149, float* %arrayidx185, align 4, !dbg !288, !tbaa !267
  %arrayidx190 = getelementptr inbounds [3 x float]* %35, i64 0, i64 1, !dbg !288
  store float %conv149, float* %arrayidx190, align 4, !dbg !288, !tbaa !267
  br label %sw.epilog, !dbg !288

if.else191:                                       ; preds = %land.lhs.true, %lor.lhs.false157
  call void @llvm.dbg.value(metadata !{i32* %i}, i64 0, metadata !77), !dbg !289
  %idxprom192 = sext i32 %36 to i64, !dbg !289
  %arrayidx193 = getelementptr inbounds i32* %1, i64 %idxprom192, !dbg !289
  store i32 0, i32* %arrayidx193, align 4, !dbg !289, !tbaa !230
  %43 = load i32* %argc, align 4, !dbg !291, !tbaa !230
  %call194 = call double @dscan(i32 %43, i8** %argv, i32* %i) #9, !dbg !291
  %conv195 = fptrunc double %call194 to float, !dbg !291
  %44 = load [3 x float]** %rv, align 8, !dbg !291, !tbaa !222
  %arrayidx200 = getelementptr inbounds [3 x float]* %44, i64 0, i64 1, !dbg !291
  store float %conv195, float* %arrayidx200, align 4, !dbg !291, !tbaa !267
  call void @llvm.dbg.value(metadata !{i32* %i}, i64 0, metadata !77), !dbg !292
  %45 = load i32* %i, align 4, !dbg !292, !tbaa !230
  %add201 = add nsw i32 %45, 1, !dbg !292
  %46 = load i32* %argc, align 4, !dbg !292, !tbaa !230
  %cmp202 = icmp eq i32 %add201, %46, !dbg !292
  br i1 %cmp202, label %if.then224, label %lor.lhs.false204, !dbg !292

lor.lhs.false204:                                 ; preds = %if.else191
  %idxprom206 = sext i32 %add201 to i64, !dbg !292
  %arrayidx207 = getelementptr inbounds i8** %argv, i64 %idxprom206, !dbg !292
  %47 = load i8** %arrayidx207, align 8, !dbg !292, !tbaa !222
  %48 = load i8* %47, align 1, !dbg !292, !tbaa !223
  %cmp210 = icmp eq i8 %48, 45, !dbg !292
  br i1 %cmp210, label %land.lhs.true212, label %if.end228, !dbg !292

land.lhs.true212:                                 ; preds = %lor.lhs.false204
  %arrayidx216 = getelementptr inbounds i8* %47, i64 1, !dbg !292
  %49 = load i8* %arrayidx216, align 1, !dbg !292, !tbaa !223
  %idxprom218 = sext i8 %49 to i64, !dbg !292
  %call219 = call i16** @__ctype_b_loc() #10, !dbg !293
  %50 = load i16** %call219, align 8, !dbg !293, !tbaa !222
  %arrayidx220 = getelementptr inbounds i16* %50, i64 %idxprom218, !dbg !293
  %51 = load i16* %arrayidx220, align 2, !dbg !293, !tbaa !287
  %and222 = and i16 %51, 2048, !dbg !293
  %tobool223 = icmp eq i16 %and222, 0, !dbg !293
  br i1 %tobool223, label %if.then224, label %if.end228, !dbg !293

if.then224:                                       ; preds = %land.lhs.true212, %if.else191
  %52 = load i8** %option, align 8, !dbg !294, !tbaa !222
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([44 x i8]* @.str7, i64 0, i64 0), i8* %52) #9, !dbg !294
  call void @llvm.dbg.value(metadata !{i32* %i}, i64 0, metadata !77), !dbg !295
  %.pre397 = load i32* %i, align 4, !dbg !295, !tbaa !230
  br label %if.end228, !dbg !294

if.end228:                                        ; preds = %land.lhs.true212, %if.then224, %lor.lhs.false204
  %53 = phi i32 [ %45, %land.lhs.true212 ], [ %.pre397, %if.then224 ], [ %45, %lor.lhs.false204 ]
  call void @llvm.dbg.value(metadata !{i32* %i}, i64 0, metadata !77), !dbg !295
  %idxprom229 = sext i32 %53 to i64, !dbg !295
  %arrayidx230 = getelementptr inbounds i32* %1, i64 %idxprom229, !dbg !295
  store i32 0, i32* %arrayidx230, align 4, !dbg !295, !tbaa !230
  %54 = load i32* %argc, align 4, !dbg !296, !tbaa !230
  %call231 = call double @dscan(i32 %54, i8** %argv, i32* %i) #9, !dbg !296
  %conv232 = fptrunc double %call231 to float, !dbg !296
  %55 = load [3 x float]** %rv, align 8, !dbg !296, !tbaa !222
  %arrayidx237 = getelementptr inbounds [3 x float]* %55, i64 0, i64 2, !dbg !296
  store float %conv232, float* %arrayidx237, align 4, !dbg !296, !tbaa !267
  br label %sw.epilog

sw.default:                                       ; preds = %if.end60
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([25 x i8]* @.str8, i64 0, i64 0), i32 %18) #9, !dbg !297
  br label %sw.epilog, !dbg !298

sw.epilog:                                        ; preds = %if.then175, %if.end228, %if.then130, %if.else142, %sw.default, %sw.bb79, %sw.bb74, %sw.bb
  call void @llvm.dbg.value(metadata !{i32* %i}, i64 0, metadata !77), !dbg !299
  %56 = load i32* %i, align 4, !dbg !299, !tbaa !230
  %idxprom242 = sext i32 %56 to i64, !dbg !299
  %arrayidx243 = getelementptr inbounds i32* %1, i64 %idxprom242, !dbg !299
  store i32 0, i32* %arrayidx243, align 4, !dbg !299, !tbaa !230
  br label %for.inc246, !dbg !300

for.inc246:                                       ; preds = %if.else, %if.then32, %if.then20, %sw.epilog, %if.else43
  %indvars.iv.next396 = add i64 %indvars.iv395, 1, !dbg !236
  %lftr.wideiv = trunc i64 %indvars.iv.next396 to i32, !dbg !236
  %exitcond = icmp eq i32 %lftr.wideiv, %nparg, !dbg !236
  br i1 %exitcond, label %for.inc249, label %for.body6, !dbg !236

for.inc249:                                       ; preds = %for.inc246, %for.body
  call void @llvm.dbg.value(metadata !{i32* %i}, i64 0, metadata !77), !dbg !234
  %57 = load i32* %i, align 4, !dbg !234, !tbaa !230
  %inc250 = add nsw i32 %57, 1, !dbg !234
  call void @llvm.dbg.value(metadata !{i32 %inc250}, i64 0, metadata !77), !dbg !234
  call void @llvm.dbg.value(metadata !{i32 %storemerge394}, i64 0, metadata !77), !dbg !234
  call void @llvm.dbg.value(metadata !{i32 %inc250}, i64 0, metadata !77), !dbg !234
  store i32 %inc250, i32* %i, align 4, !dbg !234, !tbaa !230
  call void @llvm.dbg.value(metadata !{i32* %i}, i64 0, metadata !77), !dbg !234
  %58 = load i32* %argc, align 4, !dbg !234, !tbaa !230
  %cmp = icmp slt i32 %inc250, %58, !dbg !234
  br i1 %cmp, label %for.body, label %for.end251, !dbg !234

for.end251:                                       ; preds = %for.inc249, %entry
  %59 = phi i32 [ %3, %entry ], [ %58, %for.inc249 ]
  %tobool252 = icmp eq i32 %bKeepArgs, 0, !dbg !301
  br i1 %tobool252, label %for.cond254.preheader, label %if.end271, !dbg !301

for.cond254.preheader:                            ; preds = %for.end251
  call void @llvm.dbg.value(metadata !29, i64 0, metadata !77), !dbg !302
  store i32 0, i32* %i, align 4, !dbg !302, !tbaa !230
  call void @llvm.dbg.value(metadata !{i32* %i}, i64 0, metadata !77), !dbg !302
  %cmp255382 = icmp slt i32 %59, 0, !dbg !302
  br i1 %cmp255382, label %for.end270, label %for.body257, !dbg !302

for.body257:                                      ; preds = %for.cond254.preheader, %for.inc268
  %j.1384 = phi i32 [ %j.2, %for.inc268 ], [ 0, %for.cond254.preheader ]
  %60 = phi i32 [ %inc269, %for.inc268 ], [ 0, %for.cond254.preheader ]
  %idxprom258 = sext i32 %60 to i64, !dbg !305
  %arrayidx259 = getelementptr inbounds i32* %1, i64 %idxprom258, !dbg !305
  %61 = load i32* %arrayidx259, align 4, !dbg !305, !tbaa !230
  %tobool260 = icmp eq i32 %61, 0, !dbg !305
  br i1 %tobool260, label %for.inc268, label %if.then261, !dbg !305

if.then261:                                       ; preds = %for.body257
  %arrayidx263 = getelementptr inbounds i8** %argv, i64 %idxprom258, !dbg !307
  %62 = load i8** %arrayidx263, align 8, !dbg !307, !tbaa !222
  %inc264 = add nsw i32 %j.1384, 1, !dbg !307
  call void @llvm.dbg.value(metadata !{i32 %inc264}, i64 0, metadata !78), !dbg !307
  %idxprom265 = sext i32 %j.1384 to i64, !dbg !307
  %arrayidx266 = getelementptr inbounds i8** %argv, i64 %idxprom265, !dbg !307
  store i8* %62, i8** %arrayidx266, align 8, !dbg !307, !tbaa !222
  br label %for.inc268, !dbg !307

for.inc268:                                       ; preds = %for.body257, %if.then261
  %j.2 = phi i32 [ %inc264, %if.then261 ], [ %j.1384, %for.body257 ]
  call void @llvm.dbg.value(metadata !{i32* %i}, i64 0, metadata !77), !dbg !302
  %inc269 = add nsw i32 %60, 1, !dbg !302
  call void @llvm.dbg.value(metadata !{i32 %inc269}, i64 0, metadata !77), !dbg !302
  call void @llvm.dbg.value(metadata !{i32 %60}, i64 0, metadata !77), !dbg !302
  call void @llvm.dbg.value(metadata !{i32 %inc269}, i64 0, metadata !77), !dbg !302
  store i32 %inc269, i32* %i, align 4, !dbg !302, !tbaa !230
  call void @llvm.dbg.value(metadata !{i32* %i}, i64 0, metadata !77), !dbg !302
  %cmp255 = icmp slt i32 %60, %59, !dbg !302
  br i1 %cmp255, label %for.body257, label %for.end270, !dbg !302

for.end270:                                       ; preds = %for.inc268, %for.cond254.preheader
  %j.1.lcssa = phi i32 [ 0, %for.cond254.preheader ], [ %j.2, %for.inc268 ]
  %sub = add nsw i32 %j.1.lcssa, -1, !dbg !308
  store i32 %sub, i32* %argc, align 4, !dbg !308, !tbaa !230
  br label %if.end271, !dbg !309

if.end271:                                        ; preds = %for.end251, %for.end270
  call void @save_free(i8* getelementptr inbounds ([6 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str3, i64 0, i64 0), i32 140, i8* %call) #9, !dbg !310
  ret void, !dbg !311
}

; Function Attrs: optsize
declare i8* @save_calloc(i8*, i8*, i32, i32, i32) #4

; Function Attrs: nounwind optsize
declare i32 @sprintf(i8* nocapture, i8* nocapture, ...) #5

; Function Attrs: nounwind optsize readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) #2

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #5

; Function Attrs: optsize
declare i32 @iscan(i32, i8**, i32*) #4

; Function Attrs: optsize
declare double @dscan(i32, i8**, i32*) #4

; Function Attrs: optsize
declare i8* @sscan(i32, i8**, i32*) #4

; Function Attrs: nounwind optsize readonly
declare i32 @strncasecmp(i8* nocapture, i8* nocapture, i64) #2

; Function Attrs: nounwind optsize readonly
declare i64 @strlen(i8* nocapture) #2

; Function Attrs: optsize
declare void @fatal_error(i32, i8*, ...) #4

; Function Attrs: nounwind optsize readnone
declare i16** @__ctype_b_loc() #6

; Function Attrs: optsize
declare void @save_free(i8*, i8*, i32, i8*) #4

; Function Attrs: nounwind optsize uwtable
define i32 @opt2parg_int(i8* %option, i32 %nparg, %struct.t_pargs* nocapture %pa) #3 {
entry:
  tail call void @llvm.dbg.value(metadata !{i8* %option}, i64 0, metadata !91), !dbg !312
  tail call void @llvm.dbg.value(metadata !{i32 %nparg}, i64 0, metadata !92), !dbg !312
  tail call void @llvm.dbg.value(metadata !{%struct.t_pargs* %pa}, i64 0, metadata !93), !dbg !312
  tail call void @llvm.dbg.value(metadata !29, i64 0, metadata !94), !dbg !313
  %cmp10 = icmp sgt i32 %nparg, 0, !dbg !313
  br i1 %cmp10, label %for.body, label %for.end, !dbg !313

for.cond:                                         ; preds = %for.body
  %0 = trunc i64 %indvars.iv.next to i32, !dbg !313
  %cmp = icmp slt i32 %0, %nparg, !dbg !313
  br i1 %cmp, label %for.body, label %for.end, !dbg !313

for.body:                                         ; preds = %entry, %for.cond
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.cond ], [ 0, %entry ]
  %option1 = getelementptr inbounds %struct.t_pargs* %pa, i64 %indvars.iv, i32 0, !dbg !315
  %1 = load i8** %option1, align 8, !dbg !315, !tbaa !222
  %call = tail call i32 @strcmp(i8* %1, i8* %option) #8, !dbg !315
  %cmp2 = icmp eq i32 %call, 0, !dbg !315
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !313
  br i1 %cmp2, label %if.then, label %for.cond, !dbg !315

if.then:                                          ; preds = %for.body
  %u = getelementptr inbounds %struct.t_pargs* %pa, i64 %indvars.iv, i32 3, !dbg !316
  %i5 = bitcast %union.anon* %u to i32**, !dbg !316
  %2 = load i32** %i5, align 8, !dbg !316, !tbaa !222
  %3 = load i32* %2, align 4, !dbg !316, !tbaa !230
  br label %return, !dbg !316

for.end:                                          ; preds = %for.cond, %entry
  tail call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([30 x i8]* @.str9, i64 0, i64 0), i8* %option) #9, !dbg !317
  br label %return, !dbg !318

return:                                           ; preds = %for.end, %if.then
  %retval.0 = phi i32 [ %3, %if.then ], [ 0, %for.end ]
  ret i32 %retval.0, !dbg !319
}

; Function Attrs: nounwind optsize uwtable
define i32 @opt2parg_bool(i8* %option, i32 %nparg, %struct.t_pargs* nocapture %pa) #3 {
entry:
  tail call void @llvm.dbg.value(metadata !{i8* %option}, i64 0, metadata !97), !dbg !320
  tail call void @llvm.dbg.value(metadata !{i32 %nparg}, i64 0, metadata !98), !dbg !320
  tail call void @llvm.dbg.value(metadata !{%struct.t_pargs* %pa}, i64 0, metadata !99), !dbg !320
  tail call void @llvm.dbg.value(metadata !29, i64 0, metadata !100), !dbg !321
  %cmp9 = icmp sgt i32 %nparg, 0, !dbg !321
  br i1 %cmp9, label %for.body, label %for.end, !dbg !321

for.cond:                                         ; preds = %for.body
  %0 = trunc i64 %indvars.iv.next to i32, !dbg !321
  %cmp = icmp slt i32 %0, %nparg, !dbg !321
  br i1 %cmp, label %for.body, label %for.end, !dbg !321

for.body:                                         ; preds = %entry, %for.cond
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.cond ], [ 0, %entry ]
  %option1 = getelementptr inbounds %struct.t_pargs* %pa, i64 %indvars.iv, i32 0, !dbg !323
  %1 = load i8** %option1, align 8, !dbg !323, !tbaa !222
  %call = tail call i32 @strcmp(i8* %1, i8* %option) #8, !dbg !323
  %cmp2 = icmp eq i32 %call, 0, !dbg !323
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !321
  br i1 %cmp2, label %if.then, label %for.cond, !dbg !323

if.then:                                          ; preds = %for.body
  %u = getelementptr inbounds %struct.t_pargs* %pa, i64 %indvars.iv, i32 3, !dbg !324
  %b = bitcast %union.anon* %u to i32**, !dbg !324
  %2 = load i32** %b, align 8, !dbg !324, !tbaa !222
  %3 = load i32* %2, align 4, !dbg !324, !tbaa !230
  br label %return, !dbg !324

for.end:                                          ; preds = %for.cond, %entry
  tail call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([30 x i8]* @.str10, i64 0, i64 0), i8* %option) #9, !dbg !325
  br label %return, !dbg !326

return:                                           ; preds = %for.end, %if.then
  %retval.0 = phi i32 [ %3, %if.then ], [ 0, %for.end ]
  ret i32 %retval.0, !dbg !327
}

; Function Attrs: nounwind optsize uwtable
define float @opt2parg_real(i8* %option, i32 %nparg, %struct.t_pargs* nocapture %pa) #3 {
entry:
  tail call void @llvm.dbg.value(metadata !{i8* %option}, i64 0, metadata !105), !dbg !328
  tail call void @llvm.dbg.value(metadata !{i32 %nparg}, i64 0, metadata !106), !dbg !328
  tail call void @llvm.dbg.value(metadata !{%struct.t_pargs* %pa}, i64 0, metadata !107), !dbg !328
  tail call void @llvm.dbg.value(metadata !29, i64 0, metadata !108), !dbg !329
  %cmp9 = icmp sgt i32 %nparg, 0, !dbg !329
  br i1 %cmp9, label %for.body, label %for.end, !dbg !329

for.cond:                                         ; preds = %for.body
  %0 = trunc i64 %indvars.iv.next to i32, !dbg !329
  %cmp = icmp slt i32 %0, %nparg, !dbg !329
  br i1 %cmp, label %for.body, label %for.end, !dbg !329

for.body:                                         ; preds = %entry, %for.cond
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.cond ], [ 0, %entry ]
  %option1 = getelementptr inbounds %struct.t_pargs* %pa, i64 %indvars.iv, i32 0, !dbg !331
  %1 = load i8** %option1, align 8, !dbg !331, !tbaa !222
  %call = tail call i32 @strcmp(i8* %1, i8* %option) #8, !dbg !331
  %cmp2 = icmp eq i32 %call, 0, !dbg !331
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !329
  br i1 %cmp2, label %if.then, label %for.cond, !dbg !331

if.then:                                          ; preds = %for.body
  %u = getelementptr inbounds %struct.t_pargs* %pa, i64 %indvars.iv, i32 3, !dbg !332
  %r = bitcast %union.anon* %u to float**, !dbg !332
  %2 = load float** %r, align 8, !dbg !332, !tbaa !222
  %3 = load float* %2, align 4, !dbg !332, !tbaa !267
  br label %return, !dbg !332

for.end:                                          ; preds = %for.cond, %entry
  tail call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([27 x i8]* @.str11, i64 0, i64 0), i8* %option) #9, !dbg !333
  br label %return, !dbg !334

return:                                           ; preds = %for.end, %if.then
  %retval.0 = phi float [ %3, %if.then ], [ 0.000000e+00, %for.end ]
  ret float %retval.0, !dbg !335
}

; Function Attrs: nounwind optsize uwtable
define i8* @opt2parg_str(i8* %option, i32 %nparg, %struct.t_pargs* nocapture %pa) #3 {
entry:
  tail call void @llvm.dbg.value(metadata !{i8* %option}, i64 0, metadata !113), !dbg !336
  tail call void @llvm.dbg.value(metadata !{i32 %nparg}, i64 0, metadata !114), !dbg !336
  tail call void @llvm.dbg.value(metadata !{%struct.t_pargs* %pa}, i64 0, metadata !115), !dbg !336
  tail call void @llvm.dbg.value(metadata !29, i64 0, metadata !116), !dbg !337
  %cmp9 = icmp sgt i32 %nparg, 0, !dbg !337
  br i1 %cmp9, label %for.body, label %for.end, !dbg !337

for.cond:                                         ; preds = %for.body
  %0 = trunc i64 %indvars.iv.next to i32, !dbg !337
  %cmp = icmp slt i32 %0, %nparg, !dbg !337
  br i1 %cmp, label %for.body, label %for.end, !dbg !337

for.body:                                         ; preds = %entry, %for.cond
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.cond ], [ 0, %entry ]
  %option1 = getelementptr inbounds %struct.t_pargs* %pa, i64 %indvars.iv, i32 0, !dbg !339
  %1 = load i8** %option1, align 8, !dbg !339, !tbaa !222
  %call = tail call i32 @strcmp(i8* %1, i8* %option) #8, !dbg !339
  %cmp2 = icmp eq i32 %call, 0, !dbg !339
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !337
  br i1 %cmp2, label %if.then, label %for.cond, !dbg !339

if.then:                                          ; preds = %for.body
  %u = getelementptr inbounds %struct.t_pargs* %pa, i64 %indvars.iv, i32 3, !dbg !340
  %c = bitcast %union.anon* %u to i8***, !dbg !340
  %2 = load i8*** %c, align 8, !dbg !340, !tbaa !222
  %3 = load i8** %2, align 8, !dbg !340, !tbaa !222
  br label %return, !dbg !340

for.end:                                          ; preds = %for.cond, %entry
  tail call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([29 x i8]* @.str12, i64 0, i64 0), i8* %option) #9, !dbg !341
  br label %return, !dbg !342

return:                                           ; preds = %for.end, %if.then
  %retval.0 = phi i8* [ %3, %if.then ], [ null, %for.end ]
  ret i8* %retval.0, !dbg !343
}

; Function Attrs: nounwind optsize uwtable
define i32 @opt2parg_bSet(i8* %option, i32 %nparg, %struct.t_pargs* nocapture %pa) #3 {
entry:
  tail call void @llvm.dbg.value(metadata !{i8* %option}, i64 0, metadata !119), !dbg !344
  tail call void @llvm.dbg.value(metadata !{i32 %nparg}, i64 0, metadata !120), !dbg !344
  tail call void @llvm.dbg.value(metadata !{%struct.t_pargs* %pa}, i64 0, metadata !121), !dbg !344
  tail call void @llvm.dbg.value(metadata !29, i64 0, metadata !122), !dbg !345
  %cmp9 = icmp sgt i32 %nparg, 0, !dbg !345
  br i1 %cmp9, label %for.body, label %for.end, !dbg !345

for.cond:                                         ; preds = %for.body
  %0 = trunc i64 %indvars.iv.next to i32, !dbg !345
  %cmp = icmp slt i32 %0, %nparg, !dbg !345
  br i1 %cmp, label %for.body, label %for.end, !dbg !345

for.body:                                         ; preds = %entry, %for.cond
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.cond ], [ 0, %entry ]
  %option1 = getelementptr inbounds %struct.t_pargs* %pa, i64 %indvars.iv, i32 0, !dbg !347
  %1 = load i8** %option1, align 8, !dbg !347, !tbaa !222
  %call = tail call i32 @strcmp(i8* %1, i8* %option) #8, !dbg !347
  %cmp2 = icmp eq i32 %call, 0, !dbg !347
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !345
  br i1 %cmp2, label %if.then, label %for.cond, !dbg !347

if.then:                                          ; preds = %for.body
  %bSet = getelementptr inbounds %struct.t_pargs* %pa, i64 %indvars.iv, i32 1, !dbg !348
  %2 = load i32* %bSet, align 4, !dbg !348, !tbaa !230
  br label %return, !dbg !348

for.end:                                          ; preds = %for.cond, %entry
  tail call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([27 x i8]* @.str13, i64 0, i64 0), i8* %option) #9, !dbg !349
  br label %return, !dbg !350

return:                                           ; preds = %for.end, %if.then
  %retval.0 = phi i32 [ %2, %if.then ], [ 0, %for.end ]
  ret i32 %retval.0, !dbg !351
}

; Function Attrs: nounwind optsize uwtable
define i8* @opt2parg_enum(i8* %option, i32 %nparg, %struct.t_pargs* nocapture %pa) #3 {
entry:
  tail call void @llvm.dbg.value(metadata !{i8* %option}, i64 0, metadata !125), !dbg !352
  tail call void @llvm.dbg.value(metadata !{i32 %nparg}, i64 0, metadata !126), !dbg !352
  tail call void @llvm.dbg.value(metadata !{%struct.t_pargs* %pa}, i64 0, metadata !127), !dbg !352
  tail call void @llvm.dbg.value(metadata !29, i64 0, metadata !128), !dbg !353
  %cmp10 = icmp sgt i32 %nparg, 0, !dbg !353
  br i1 %cmp10, label %for.body, label %for.end, !dbg !353

for.cond:                                         ; preds = %for.body
  %0 = trunc i64 %indvars.iv.next to i32, !dbg !353
  %cmp = icmp slt i32 %0, %nparg, !dbg !353
  br i1 %cmp, label %for.body, label %for.end, !dbg !353

for.body:                                         ; preds = %entry, %for.cond
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.cond ], [ 0, %entry ]
  %option1 = getelementptr inbounds %struct.t_pargs* %pa, i64 %indvars.iv, i32 0, !dbg !355
  %1 = load i8** %option1, align 8, !dbg !355, !tbaa !222
  %call = tail call i32 @strcmp(i8* %1, i8* %option) #8, !dbg !355
  %cmp2 = icmp eq i32 %call, 0, !dbg !355
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !353
  br i1 %cmp2, label %if.then, label %for.cond, !dbg !355

if.then:                                          ; preds = %for.body
  %u = getelementptr inbounds %struct.t_pargs* %pa, i64 %indvars.iv, i32 3, !dbg !356
  %c = bitcast %union.anon* %u to i8***, !dbg !356
  %2 = load i8*** %c, align 8, !dbg !356, !tbaa !222
  %3 = load i8** %2, align 8, !dbg !356, !tbaa !222
  br label %return, !dbg !356

for.end:                                          ; preds = %for.cond, %entry
  tail call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([27 x i8]* @.str13, i64 0, i64 0), i8* %option) #9, !dbg !357
  br label %return, !dbg !358

return:                                           ; preds = %for.end, %if.then
  %retval.0 = phi i8* [ %3, %if.then ], [ null, %for.end ]
  ret i8* %retval.0, !dbg !359
}

; Function Attrs: nounwind optsize uwtable
define i8* @pa_val(%struct.t_pargs* nocapture %pa) #3 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.t_pargs* %pa}, i64 0, metadata !133), !dbg !360
  store i8 0, i8* getelementptr inbounds ([256 x i8]* @pa_val.buf, i64 0, i64 0), align 16, !dbg !361, !tbaa !223
  %type = getelementptr inbounds %struct.t_pargs* %pa, i64 0, i32 2, !dbg !362
  %0 = load i32* %type, align 4, !dbg !362, !tbaa !230
  switch i32 %0, label %sw.epilog [
    i32 0, label %sw.bb
    i32 2, label %sw.bb1
    i32 1, label %sw.bb1
    i32 4, label %sw.bb4
    i32 3, label %sw.bb7
    i32 6, label %sw.bb21
    i32 5, label %sw.bb25
  ], !dbg !362

sw.bb:                                            ; preds = %entry
  %u = getelementptr inbounds %struct.t_pargs* %pa, i64 0, i32 3, !dbg !363
  %i = bitcast %union.anon* %u to i32**, !dbg !363
  %1 = load i32** %i, align 8, !dbg !363, !tbaa !222
  %2 = load i32* %1, align 4, !dbg !363, !tbaa !230
  %call = tail call i32 (i8*, i8*, ...)* @sprintf(i8* getelementptr inbounds ([256 x i8]* @pa_val.buf, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8]* @.str14, i64 0, i64 0), i32 %2) #9, !dbg !363
  br label %sw.epilog, !dbg !365

sw.bb1:                                           ; preds = %entry, %entry
  %u2 = getelementptr inbounds %struct.t_pargs* %pa, i64 0, i32 3, !dbg !366
  %r = bitcast %union.anon* %u2 to float**, !dbg !366
  %3 = load float** %r, align 8, !dbg !366, !tbaa !222
  %4 = load float* %3, align 4, !dbg !366, !tbaa !267
  %conv = fpext float %4 to double, !dbg !366
  %call3 = tail call i32 (i8*, i8*, ...)* @sprintf(i8* getelementptr inbounds ([256 x i8]* @pa_val.buf, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8]* @.str15, i64 0, i64 0), double %conv) #9, !dbg !366
  br label %sw.epilog, !dbg !367

sw.bb4:                                           ; preds = %entry
  %u5 = getelementptr inbounds %struct.t_pargs* %pa, i64 0, i32 3, !dbg !368
  %b = bitcast %union.anon* %u5 to i32**, !dbg !368
  %5 = load i32** %b, align 8, !dbg !368, !tbaa !222
  %6 = load i32* %5, align 4, !dbg !368, !tbaa !230
  %tobool = icmp ne i32 %6, 0, !dbg !368
  %cond = select i1 %tobool, i8* getelementptr inbounds ([4 x i8]* @.str17, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8]* @.str18, i64 0, i64 0), !dbg !368
  %call6 = tail call i32 (i8*, i8*, ...)* @sprintf(i8* getelementptr inbounds ([256 x i8]* @pa_val.buf, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8]* @.str16, i64 0, i64 0), i8* %cond) #9, !dbg !368
  br label %sw.epilog, !dbg !369

sw.bb7:                                           ; preds = %entry
  %u8 = getelementptr inbounds %struct.t_pargs* %pa, i64 0, i32 3, !dbg !370
  %c = bitcast %union.anon* %u8 to i8***, !dbg !370
  %7 = load i8*** %c, align 8, !dbg !370, !tbaa !222
  %8 = load i8** %7, align 8, !dbg !370, !tbaa !222
  %tobool9 = icmp eq i8* %8, null, !dbg !370
  br i1 %tobool9, label %sw.epilog, label %if.then, !dbg !370

if.then:                                          ; preds = %sw.bb7
  %call12 = tail call i64 @strlen(i8* %8) #8, !dbg !371
  %cmp = icmp ugt i64 %call12, 255, !dbg !371
  br i1 %cmp, label %if.then14, label %if.else, !dbg !371

if.then14:                                        ; preds = %if.then
  tail call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([25 x i8]* @.str19, i64 0, i64 0), i8* %8) #9, !dbg !373
  br label %sw.epilog, !dbg !373

if.else:                                          ; preds = %if.then
  %call19 = tail call i8* @strcpy(i8* getelementptr inbounds ([256 x i8]* @pa_val.buf, i64 0, i64 0), i8* %8) #9, !dbg !374
  br label %sw.epilog

sw.bb21:                                          ; preds = %entry
  %u22 = getelementptr inbounds %struct.t_pargs* %pa, i64 0, i32 3, !dbg !375
  %c23 = bitcast %union.anon* %u22 to i8***, !dbg !375
  %9 = load i8*** %c23, align 8, !dbg !375, !tbaa !222
  %10 = load i8** %9, align 8, !dbg !375, !tbaa !222
  %call24 = tail call i8* @strcpy(i8* getelementptr inbounds ([256 x i8]* @pa_val.buf, i64 0, i64 0), i8* %10) #9, !dbg !375
  br label %sw.epilog, !dbg !376

sw.bb25:                                          ; preds = %entry
  %u26 = getelementptr inbounds %struct.t_pargs* %pa, i64 0, i32 3, !dbg !377
  %rv = bitcast %union.anon* %u26 to [3 x float]**, !dbg !377
  %11 = load [3 x float]** %rv, align 8, !dbg !377, !tbaa !222
  %arrayidx27 = getelementptr inbounds [3 x float]* %11, i64 0, i64 0, !dbg !377
  %12 = load float* %arrayidx27, align 4, !dbg !377, !tbaa !267
  %conv28 = fpext float %12 to double, !dbg !377
  %arrayidx31 = getelementptr inbounds [3 x float]* %11, i64 0, i64 1, !dbg !377
  %13 = load float* %arrayidx31, align 4, !dbg !377, !tbaa !267
  %conv32 = fpext float %13 to double, !dbg !377
  %arrayidx35 = getelementptr inbounds [3 x float]* %11, i64 0, i64 2, !dbg !377
  %14 = load float* %arrayidx35, align 4, !dbg !377, !tbaa !267
  %conv36 = fpext float %14 to double, !dbg !377
  %call37 = tail call i32 (i8*, i8*, ...)* @sprintf(i8* getelementptr inbounds ([256 x i8]* @pa_val.buf, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str20, i64 0, i64 0), double %conv28, double %conv32, double %conv36) #9, !dbg !377
  br label %sw.epilog, !dbg !378

sw.epilog:                                        ; preds = %sw.bb7, %if.else, %if.then14, %entry, %sw.bb25, %sw.bb21, %sw.bb4, %sw.bb1, %sw.bb
  ret i8* getelementptr inbounds ([256 x i8]* @pa_val.buf, i64 0, i64 0), !dbg !379
}

; Function Attrs: nounwind optsize
declare i8* @strcpy(i8*, i8* nocapture) #5

; Function Attrs: nounwind optsize uwtable
define void @print_pargs(%struct._IO_FILE* nocapture %fp, i32 %npargs, %struct.t_pargs* nocapture %pa) #3 {
entry:
  %buf = alloca [32 x i8], align 16
  %buf2 = alloca [256 x i8], align 16
  call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %fp}, i64 0, metadata !192), !dbg !380
  call void @llvm.dbg.value(metadata !{i32 %npargs}, i64 0, metadata !193), !dbg !380
  call void @llvm.dbg.value(metadata !{%struct.t_pargs* %pa}, i64 0, metadata !194), !dbg !380
  call void @llvm.dbg.declare(metadata !{[32 x i8]* %buf}, metadata !196), !dbg !381
  %0 = getelementptr inbounds [256 x i8]* %buf2, i64 0, i64 0, !dbg !381
  call void @llvm.lifetime.start(i64 256, i8* %0) #7, !dbg !381
  call void @llvm.dbg.declare(metadata !{[256 x i8]* %buf2}, metadata !197), !dbg !381
  call void @llvm.dbg.value(metadata !29, i64 0, metadata !195), !dbg !382
  call void @llvm.dbg.value(metadata !29, i64 0, metadata !202), !dbg !383
  %cmp147 = icmp sgt i32 %npargs, 0, !dbg !383
  br i1 %cmp147, label %for.body, label %if.end109, !dbg !383

for.body:                                         ; preds = %entry, %for.inc
  %indvars.iv150 = phi i64 [ %indvars.iv.next151, %for.inc ], [ 0, %entry ]
  %bShowHidden.0148 = phi i32 [ %bShowHidden.1, %for.inc ], [ 0, %entry ]
  %option = getelementptr inbounds %struct.t_pargs* %pa, i64 %indvars.iv150, i32 0, !dbg !385
  %1 = load i8** %option, align 8, !dbg !385, !tbaa !222
  %call = call i32 @strcmp(i8* %1, i8* getelementptr inbounds ([8 x i8]* @.str21, i64 0, i64 0)) #8, !dbg !385
  %cmp1 = icmp eq i32 %call, 0, !dbg !385
  br i1 %cmp1, label %land.lhs.true, label %for.inc, !dbg !385

land.lhs.true:                                    ; preds = %for.body
  %bSet = getelementptr inbounds %struct.t_pargs* %pa, i64 %indvars.iv150, i32 1, !dbg !385
  %2 = load i32* %bSet, align 4, !dbg !385, !tbaa !230
  %tobool = icmp eq i32 %2, 0, !dbg !385
  call void @llvm.dbg.value(metadata !233, i64 0, metadata !195), !dbg !386
  %bShowHidden.0. = select i1 %tobool, i32 %bShowHidden.0148, i32 1, !dbg !385
  br label %for.inc, !dbg !385

for.inc:                                          ; preds = %land.lhs.true, %for.body
  %bShowHidden.1 = phi i32 [ %bShowHidden.0148, %for.body ], [ %bShowHidden.0., %land.lhs.true ]
  %indvars.iv.next151 = add i64 %indvars.iv150, 1, !dbg !383
  %lftr.wideiv152 = trunc i64 %indvars.iv.next151 to i32, !dbg !383
  %exitcond153 = icmp eq i32 %lftr.wideiv152, %npargs, !dbg !383
  br i1 %exitcond153, label %for.end, label %for.body, !dbg !383

for.end:                                          ; preds = %for.inc
  br i1 %cmp147, label %for.body10.lr.ph, label %if.end109, !dbg !387

for.body10.lr.ph:                                 ; preds = %for.end
  %call6 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([18 x i8]* @.str22, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str23, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str24, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8]* @.str25, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8]* @.str26, i64 0, i64 0)) #9, !dbg !388
  %3 = call i64 @fwrite(i8* getelementptr inbounds ([56 x i8]* @.str27, i64 0, i64 0), i64 55, i64 1, %struct._IO_FILE* %fp), !dbg !390
  call void @llvm.dbg.value(metadata !29, i64 0, metadata !202), !dbg !391
  %tobool11 = icmp eq i32 %bShowHidden.1, 0, !dbg !393
  %arraydecay = getelementptr inbounds [32 x i8]* %buf, i64 0, i64 0, !dbg !395
  br label %for.body10, !dbg !391

for.body10:                                       ; preds = %for.inc105, %for.body10.lr.ph
  %indvars.iv = phi i64 [ 0, %for.body10.lr.ph ], [ %indvars.iv.next, %for.inc105 ]
  %arrayidx13 = getelementptr inbounds %struct.t_pargs* %pa, i64 %indvars.iv, !dbg !393
  br i1 %tobool11, label %lor.lhs.false, label %if.then16, !dbg !393

lor.lhs.false:                                    ; preds = %for.body10
  %call14 = call i32 @is_hidden(%struct.t_pargs* %arrayidx13) #11, !dbg !393
  %tobool15 = icmp eq i32 %call14, 0, !dbg !393
  br i1 %tobool15, label %if.then16, label %for.inc105, !dbg !393

if.then16:                                        ; preds = %for.body10, %lor.lhs.false
  %type = getelementptr inbounds %struct.t_pargs* %pa, i64 %indvars.iv, i32 2, !dbg !397
  %4 = load i32* %type, align 4, !dbg !397, !tbaa !230
  %cmp19 = icmp eq i32 %4, 4, !dbg !397
  %option23 = getelementptr inbounds %struct.t_pargs* %arrayidx13, i64 0, i32 0, !dbg !395
  %5 = load i8** %option23, align 8, !dbg !395, !tbaa !222
  br i1 %cmp19, label %if.then20, label %if.else, !dbg !397

if.then20:                                        ; preds = %if.then16
  %add.ptr = getelementptr inbounds i8* %5, i64 1, !dbg !395
  %call24 = call i32 (i8*, i8*, ...)* @sprintf(i8* %arraydecay, i8* getelementptr inbounds ([8 x i8]* @.str28, i64 0, i64 0), i8* %add.ptr) #9, !dbg !395
  br label %if.end30, !dbg !395

if.else:                                          ; preds = %if.then16
  %call29 = call i8* @strcpy(i8* %arraydecay, i8* %5) #9, !dbg !398
  br label %if.end30

if.end30:                                         ; preds = %if.else, %if.then20
  %call32 = call i64 @strlen(i8* %arraydecay) #8, !dbg !399
  %6 = load i32* %type, align 4, !dbg !399, !tbaa !230
  %idxprom36 = sext i32 %6 to i64, !dbg !399
  %arrayidx37 = getelementptr inbounds [7 x i8*]* @argtp, i64 0, i64 %idxprom36, !dbg !399
  %7 = load i8** %arrayidx37, align 8, !dbg !399, !tbaa !222
  %call38 = call i64 @strlen(i8* %7) #8, !dbg !399
  %cmp39 = icmp ugt i64 %call38, 4, !dbg !399
  %call38.op = sub i64 18, %call38, !dbg !399
  %sub = select i1 %cmp39, i64 %call38.op, i64 14, !dbg !399
  %cmp46 = icmp ugt i64 %call32, %sub, !dbg !399
  br i1 %cmp46, label %if.then47, label %if.else63, !dbg !399

if.then47:                                        ; preds = %if.end30
  %call49 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([6 x i8]* @.str29, i64 0, i64 0), i8* %arraydecay) #9, !dbg !400
  %8 = load i32* %type, align 4, !dbg !402, !tbaa !230
  %idxprom54 = sext i32 %8 to i64, !dbg !402
  %arrayidx55 = getelementptr inbounds [7 x i8*]* @argtp, i64 0, i64 %idxprom54, !dbg !402
  %9 = load i8** %arrayidx55, align 8, !dbg !402, !tbaa !222
  %call58 = call i8* @pa_val(%struct.t_pargs* %arrayidx13) #11, !dbg !403
  %desc = getelementptr inbounds %struct.t_pargs* %pa, i64 %indvars.iv, i32 4, !dbg !403
  %10 = load i8** %desc, align 8, !dbg !403, !tbaa !222
  %call61 = call i8* @check_tty(i8* %10) #9, !dbg !403
  %call62 = call i32 (i8*, i8*, ...)* @sprintf(i8* %0, i8* getelementptr inbounds ([18 x i8]* @.str22, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str30, i64 0, i64 0), i8* %9, i8* getelementptr inbounds ([256 x i8]* @pa_val.buf, i64 0, i64 0), i8* %call61) #9, !dbg !403
  br label %if.end100, !dbg !404

if.else63:                                        ; preds = %if.end30
  %cmp66 = icmp ugt i64 %call32, 12, !dbg !405
  %call77 = call i8* @pa_val(%struct.t_pargs* %arrayidx13) #11, !dbg !406
  %desc80 = getelementptr inbounds %struct.t_pargs* %pa, i64 %indvars.iv, i32 4, !dbg !406
  %11 = load i8** %desc80, align 8, !dbg !406, !tbaa !222
  %call81 = call i8* @check_tty(i8* %11) #9, !dbg !406
  br i1 %cmp66, label %if.then67, label %if.else83, !dbg !405

if.then67:                                        ; preds = %if.else63
  %call82 = call i32 (i8*, i8*, ...)* @sprintf(i8* %0, i8* getelementptr inbounds ([18 x i8]* @.str31, i64 0, i64 0), i8* %arraydecay, i8* %7, i8* getelementptr inbounds ([256 x i8]* @pa_val.buf, i64 0, i64 0), i8* %call81) #9, !dbg !406
  br label %if.end100, !dbg !408

if.else83:                                        ; preds = %if.else63
  %call98 = call i32 (i8*, i8*, ...)* @sprintf(i8* %0, i8* getelementptr inbounds ([18 x i8]* @.str22, i64 0, i64 0), i8* %arraydecay, i8* %7, i8* getelementptr inbounds ([256 x i8]* @pa_val.buf, i64 0, i64 0), i8* %call81) #9, !dbg !409
  br label %if.end100

if.end100:                                        ; preds = %if.then67, %if.else83, %if.then47
  %call102 = call i8* @wrap_lines(i8* %0, i32 80, i32 28) #9, !dbg !410
  call void @llvm.dbg.value(metadata !{i8* %call102}, i64 0, metadata !201), !dbg !410
  %call103 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* %call102) #9, !dbg !411
  call void @save_free(i8* getelementptr inbounds ([6 x i8]* @.str32, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str3, i64 0, i64 0), i32 294, i8* %call102) #9, !dbg !412
  br label %for.inc105, !dbg !413

for.inc105:                                       ; preds = %lor.lhs.false, %if.end100
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !391
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !391
  %exitcond = icmp eq i32 %lftr.wideiv, %npargs, !dbg !391
  br i1 %exitcond, label %for.end107, label %for.body10, !dbg !391

for.end107:                                       ; preds = %for.inc105
  %fputc = call i32 @fputc(i32 10, %struct._IO_FILE* %fp), !dbg !414
  br label %if.end109, !dbg !415

if.end109:                                        ; preds = %entry, %for.end107, %for.end
  call void @llvm.lifetime.end(i64 256, i8* %0) #7, !dbg !416
  ret void, !dbg !416
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #7

; Function Attrs: optsize
declare i8* @check_tty(i8*) #4

; Function Attrs: optsize
declare i8* @wrap_lines(i8*, i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #7

; Function Attrs: nounwind optsize uwtable
define void @pr_enums(%struct._IO_FILE* nocapture %fp, i32 %npargs, %struct.t_pargs* nocapture %pa, i32 %shell) #3 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %fp}, i64 0, metadata !207), !dbg !417
  tail call void @llvm.dbg.value(metadata !{i32 %npargs}, i64 0, metadata !208), !dbg !417
  tail call void @llvm.dbg.value(metadata !{%struct.t_pargs* %pa}, i64 0, metadata !209), !dbg !417
  tail call void @llvm.dbg.value(metadata !{i32 %shell}, i64 0, metadata !210), !dbg !417
  switch i32 %shell, label %sw.epilog [
    i32 0, label %for.cond.preheader
    i32 1, label %for.cond22.preheader
    i32 2, label %for.cond59.preheader
  ], !dbg !418

for.cond59.preheader:                             ; preds = %entry
  %cmp60153 = icmp sgt i32 %npargs, 0, !dbg !419
  br i1 %cmp60153, label %for.body61, label %sw.epilog, !dbg !419

for.cond22.preheader:                             ; preds = %entry
  %cmp23147 = icmp sgt i32 %npargs, 0, !dbg !422
  br i1 %cmp23147, label %for.body24, label %sw.epilog, !dbg !422

for.cond.preheader:                               ; preds = %entry
  %cmp141 = icmp sgt i32 %npargs, 0, !dbg !424
  br i1 %cmp141, label %for.body, label %sw.epilog, !dbg !424

for.body:                                         ; preds = %for.cond.preheader, %for.inc18
  %indvars.iv155 = phi i64 [ %indvars.iv.next156, %for.inc18 ], [ 0, %for.cond.preheader ]
  %type = getelementptr inbounds %struct.t_pargs* %pa, i64 %indvars.iv155, i32 2, !dbg !426
  %0 = load i32* %type, align 4, !dbg !426, !tbaa !230
  %cmp1 = icmp eq i32 %0, 6, !dbg !426
  br i1 %cmp1, label %if.then, label %for.inc18, !dbg !426

if.then:                                          ; preds = %for.body
  %option = getelementptr inbounds %struct.t_pargs* %pa, i64 %indvars.iv155, i32 0, !dbg !427
  %1 = load i8** %option, align 8, !dbg !427, !tbaa !222
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([9 x i8]* @.str34, i64 0, i64 0), i8* %1) #9, !dbg !427
  tail call void @llvm.dbg.value(metadata !233, i64 0, metadata !212), !dbg !429
  %u = getelementptr inbounds %struct.t_pargs* %pa, i64 %indvars.iv155, i32 3, !dbg !429
  %c = bitcast %union.anon* %u to i8***, !dbg !429
  %2 = load i8*** %c, align 8, !dbg !429, !tbaa !222
  %arrayidx8138 = getelementptr inbounds i8** %2, i64 1, !dbg !429
  %3 = load i8** %arrayidx8138, align 8, !dbg !429, !tbaa !222
  %tobool139 = icmp eq i8* %3, null, !dbg !429
  br i1 %tobool139, label %for.end, label %for.body9, !dbg !429

for.body9:                                        ; preds = %if.then, %for.body9
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body9 ], [ 1, %if.then ]
  %4 = phi i8* [ %6, %for.body9 ], [ %3, %if.then ]
  %call16 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([4 x i8]* @.str35, i64 0, i64 0), i8* %4) #9, !dbg !431
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !429
  %5 = load i8*** %c, align 8, !dbg !429, !tbaa !222
  %arrayidx8 = getelementptr inbounds i8** %5, i64 %indvars.iv.next, !dbg !429
  %6 = load i8** %arrayidx8, align 8, !dbg !429, !tbaa !222
  %tobool = icmp eq i8* %6, null, !dbg !429
  br i1 %tobool, label %for.end, label %for.body9, !dbg !429

for.end:                                          ; preds = %for.body9, %if.then
  %7 = tail call i64 @fwrite(i8* getelementptr inbounds ([4 x i8]* @.str36, i64 0, i64 0), i64 3, i64 1, %struct._IO_FILE* %fp), !dbg !432
  br label %for.inc18, !dbg !433

for.inc18:                                        ; preds = %for.body, %for.end
  %indvars.iv.next156 = add i64 %indvars.iv155, 1, !dbg !424
  %lftr.wideiv = trunc i64 %indvars.iv.next156 to i32, !dbg !424
  %exitcond = icmp eq i32 %lftr.wideiv, %npargs, !dbg !424
  br i1 %exitcond, label %sw.epilog, label %for.body, !dbg !424

for.body24:                                       ; preds = %for.cond22.preheader, %for.inc55
  %indvars.iv159 = phi i64 [ %indvars.iv.next160, %for.inc55 ], [ 0, %for.cond22.preheader ]
  %type27 = getelementptr inbounds %struct.t_pargs* %pa, i64 %indvars.iv159, i32 2, !dbg !434
  %8 = load i32* %type27, align 4, !dbg !434, !tbaa !230
  %cmp28 = icmp eq i32 %8, 6, !dbg !434
  br i1 %cmp28, label %if.then29, label %for.inc55, !dbg !434

if.then29:                                        ; preds = %for.body24
  %option32 = getelementptr inbounds %struct.t_pargs* %pa, i64 %indvars.iv159, i32 0, !dbg !435
  %9 = load i8** %option32, align 8, !dbg !435, !tbaa !222
  %call33 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([31 x i8]* @.str37, i64 0, i64 0), i8* %9) #9, !dbg !435
  tail call void @llvm.dbg.value(metadata !233, i64 0, metadata !212), !dbg !437
  %u38 = getelementptr inbounds %struct.t_pargs* %pa, i64 %indvars.iv159, i32 3, !dbg !437
  %c39 = bitcast %union.anon* %u38 to i8***, !dbg !437
  %10 = load i8*** %c39, align 8, !dbg !437, !tbaa !222
  %arrayidx40143 = getelementptr inbounds i8** %10, i64 1, !dbg !437
  %11 = load i8** %arrayidx40143, align 8, !dbg !437, !tbaa !222
  %tobool41144 = icmp eq i8* %11, null, !dbg !437
  br i1 %tobool41144, label %for.end52, label %for.body42, !dbg !437

for.body42:                                       ; preds = %if.then29, %for.body42
  %indvars.iv157 = phi i64 [ %indvars.iv.next158, %for.body42 ], [ 1, %if.then29 ]
  %12 = phi i8* [ %14, %for.body42 ], [ %11, %if.then29 ]
  %call49 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([4 x i8]* @.str35, i64 0, i64 0), i8* %12) #9, !dbg !439
  %indvars.iv.next158 = add i64 %indvars.iv157, 1, !dbg !437
  %13 = load i8*** %c39, align 8, !dbg !437, !tbaa !222
  %arrayidx40 = getelementptr inbounds i8** %13, i64 %indvars.iv.next158, !dbg !437
  %14 = load i8** %arrayidx40, align 8, !dbg !437, !tbaa !222
  %tobool41 = icmp eq i8* %14, null, !dbg !437
  br i1 %tobool41, label %for.end52, label %for.body42, !dbg !437

for.end52:                                        ; preds = %for.body42, %if.then29
  %15 = tail call i64 @fwrite(i8* getelementptr inbounds ([15 x i8]* @.str38, i64 0, i64 0), i64 14, i64 1, %struct._IO_FILE* %fp), !dbg !440
  br label %for.inc55, !dbg !441

for.inc55:                                        ; preds = %for.body24, %for.end52
  %indvars.iv.next160 = add i64 %indvars.iv159, 1, !dbg !422
  %lftr.wideiv161 = trunc i64 %indvars.iv.next160 to i32, !dbg !422
  %exitcond162 = icmp eq i32 %lftr.wideiv161, %npargs, !dbg !422
  br i1 %exitcond162, label %sw.epilog, label %for.body24, !dbg !422

for.body61:                                       ; preds = %for.cond59.preheader, %for.inc92
  %indvars.iv165 = phi i64 [ %indvars.iv.next166, %for.inc92 ], [ 0, %for.cond59.preheader ]
  %type64 = getelementptr inbounds %struct.t_pargs* %pa, i64 %indvars.iv165, i32 2, !dbg !442
  %16 = load i32* %type64, align 4, !dbg !442, !tbaa !230
  %cmp65 = icmp eq i32 %16, 6, !dbg !442
  br i1 %cmp65, label %if.then66, label %for.inc92, !dbg !442

if.then66:                                        ; preds = %for.body61
  %option69 = getelementptr inbounds %struct.t_pargs* %pa, i64 %indvars.iv165, i32 0, !dbg !443
  %17 = load i8** %option69, align 8, !dbg !443, !tbaa !222
  %call70 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([18 x i8]* @.str39, i64 0, i64 0), i8* %17) #9, !dbg !443
  tail call void @llvm.dbg.value(metadata !233, i64 0, metadata !212), !dbg !445
  %u75 = getelementptr inbounds %struct.t_pargs* %pa, i64 %indvars.iv165, i32 3, !dbg !445
  %c76 = bitcast %union.anon* %u75 to i8***, !dbg !445
  %18 = load i8*** %c76, align 8, !dbg !445, !tbaa !222
  %arrayidx77149 = getelementptr inbounds i8** %18, i64 1, !dbg !445
  %19 = load i8** %arrayidx77149, align 8, !dbg !445, !tbaa !222
  %tobool78150 = icmp eq i8* %19, null, !dbg !445
  br i1 %tobool78150, label %for.end89, label %for.body79, !dbg !445

for.body79:                                       ; preds = %if.then66, %for.body79
  %indvars.iv163 = phi i64 [ %indvars.iv.next164, %for.body79 ], [ 1, %if.then66 ]
  %20 = phi i8* [ %22, %for.body79 ], [ %19, %if.then66 ]
  %call86 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([4 x i8]* @.str35, i64 0, i64 0), i8* %20) #9, !dbg !447
  %indvars.iv.next164 = add i64 %indvars.iv163, 1, !dbg !445
  %21 = load i8*** %c76, align 8, !dbg !445, !tbaa !222
  %arrayidx77 = getelementptr inbounds i8** %21, i64 %indvars.iv.next164, !dbg !445
  %22 = load i8** %arrayidx77, align 8, !dbg !445, !tbaa !222
  %tobool78 = icmp eq i8* %22, null, !dbg !445
  br i1 %tobool78, label %for.end89, label %for.body79, !dbg !445

for.end89:                                        ; preds = %for.body79, %if.then66
  %23 = tail call i64 @fwrite(i8* getelementptr inbounds ([3 x i8]* @.str40, i64 0, i64 0), i64 2, i64 1, %struct._IO_FILE* %fp), !dbg !448
  br label %for.inc92, !dbg !449

for.inc92:                                        ; preds = %for.body61, %for.end89
  %indvars.iv.next166 = add i64 %indvars.iv165, 1, !dbg !419
  %lftr.wideiv167 = trunc i64 %indvars.iv.next166 to i32, !dbg !419
  %exitcond168 = icmp eq i32 %lftr.wideiv167, %npargs, !dbg !419
  br i1 %exitcond168, label %sw.epilog, label %for.body61, !dbg !419

sw.epilog:                                        ; preds = %for.cond59.preheader, %for.inc92, %for.cond22.preheader, %for.inc55, %for.cond.preheader, %for.inc18, %entry
  ret void, !dbg !450
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #1

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #7

; Function Attrs: nounwind
declare i32 @fputc(i32, %struct._IO_FILE* nocapture) #7

attributes #0 = { nounwind optsize readonly uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind optsize readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind optsize readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind }
attributes #8 = { nounwind optsize readonly }
attributes #9 = { nounwind optsize }
attributes #10 = { nounwind optsize readnone }
attributes #11 = { optsize }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !29, metadata !30, metadata !213, metadata !29, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/pargs.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/435.gromacs/src/pargs.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{metadata !3, metadata !14}
!3 = metadata !{i32 786436, metadata !4, null, metadata !"", i32 83, i64 32, i64 32, i32 0, i32 0, null, metadata !5, i32 0, i32 0} ; [ DW_TAG_enumeration_type ] [line 83, size 32, align 32, offset 0] [from ]
!4 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/435.gromacs/src/readinp.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!5 = metadata !{metadata !6, metadata !7, metadata !8, metadata !9, metadata !10, metadata !11, metadata !12, metadata !13}
!6 = metadata !{i32 786472, metadata !"etINT", i64 0} ; [ DW_TAG_enumerator ] [etINT :: 0]
!7 = metadata !{i32 786472, metadata !"etREAL", i64 1} ; [ DW_TAG_enumerator ] [etREAL :: 1]
!8 = metadata !{i32 786472, metadata !"etTIME", i64 2} ; [ DW_TAG_enumerator ] [etTIME :: 2]
!9 = metadata !{i32 786472, metadata !"etSTR", i64 3} ; [ DW_TAG_enumerator ] [etSTR :: 3]
!10 = metadata !{i32 786472, metadata !"etBOOL", i64 4} ; [ DW_TAG_enumerator ] [etBOOL :: 4]
!11 = metadata !{i32 786472, metadata !"etRVEC", i64 5} ; [ DW_TAG_enumerator ] [etRVEC :: 5]
!12 = metadata !{i32 786472, metadata !"etENUM", i64 6} ; [ DW_TAG_enumerator ] [etENUM :: 6]
!13 = metadata !{i32 786472, metadata !"etNR", i64 7} ; [ DW_TAG_enumerator ] [etNR :: 7]
!14 = metadata !{i32 786436, metadata !15, null, metadata !"", i32 46, i64 32, i64 32, i32 0, i32 0, null, metadata !16, i32 0, i32 0} ; [ DW_TAG_enumeration_type ] [line 46, size 32, align 32, offset 0] [from ]
!15 = metadata !{metadata !"/usr/include/ctype.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!16 = metadata !{metadata !17, metadata !18, metadata !19, metadata !20, metadata !21, metadata !22, metadata !23, metadata !24, metadata !25, metadata !26, metadata !27, metadata !28}
!17 = metadata !{i32 786472, metadata !"_ISupper", i64 256} ; [ DW_TAG_enumerator ] [_ISupper :: 256]
!18 = metadata !{i32 786472, metadata !"_ISlower", i64 512} ; [ DW_TAG_enumerator ] [_ISlower :: 512]
!19 = metadata !{i32 786472, metadata !"_ISalpha", i64 1024} ; [ DW_TAG_enumerator ] [_ISalpha :: 1024]
!20 = metadata !{i32 786472, metadata !"_ISdigit", i64 2048} ; [ DW_TAG_enumerator ] [_ISdigit :: 2048]
!21 = metadata !{i32 786472, metadata !"_ISxdigit", i64 4096} ; [ DW_TAG_enumerator ] [_ISxdigit :: 4096]
!22 = metadata !{i32 786472, metadata !"_ISspace", i64 8192} ; [ DW_TAG_enumerator ] [_ISspace :: 8192]
!23 = metadata !{i32 786472, metadata !"_ISprint", i64 16384} ; [ DW_TAG_enumerator ] [_ISprint :: 16384]
!24 = metadata !{i32 786472, metadata !"_ISgraph", i64 32768} ; [ DW_TAG_enumerator ] [_ISgraph :: 32768]
!25 = metadata !{i32 786472, metadata !"_ISblank", i64 1} ; [ DW_TAG_enumerator ] [_ISblank :: 1]
!26 = metadata !{i32 786472, metadata !"_IScntrl", i64 2} ; [ DW_TAG_enumerator ] [_IScntrl :: 2]
!27 = metadata !{i32 786472, metadata !"_ISpunct", i64 4} ; [ DW_TAG_enumerator ] [_ISpunct :: 4]
!28 = metadata !{i32 786472, metadata !"_ISalnum", i64 8} ; [ DW_TAG_enumerator ] [_ISalnum :: 8]
!29 = metadata !{i32 0}
!30 = metadata !{metadata !31, metadata !68, metadata !87, metadata !95, metadata !101, metadata !109, metadata !117, metadata !123, metadata !129, metadata !134, metadata !203}
!31 = metadata !{i32 786478, metadata !1, metadata !32, metadata !"is_hidden", metadata !"is_hidden", metadata !"", i32 45, metadata !33, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct.t_pargs*)* @is_hidden, null, null, metadata !66, i32 46} ; [ DW_TAG_subprogram ] [line 45] [def] [scope 46] [is_hidden]
!32 = metadata !{i32 786473, metadata !1}         ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/pargs.c]
!33 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !34, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!34 = metadata !{metadata !35, metadata !36}
!35 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!36 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !37} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from t_pargs]
!37 = metadata !{i32 786454, metadata !1, null, metadata !"t_pargs", i32 105, i64 0, i64 0, i64 0, i32 0, metadata !38} ; [ DW_TAG_typedef ] [t_pargs] [line 105, size 0, align 0, offset 0] [from ]
!38 = metadata !{i32 786451, metadata !4, null, metadata !"", i32 91, i64 256, i64 64, i32 0, i32 0, null, metadata !39, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 91, size 256, align 64, offset 0] [from ]
!39 = metadata !{metadata !40, metadata !43, metadata !44, metadata !45, metadata !65}
!40 = metadata !{i32 786445, metadata !4, metadata !38, metadata !"option", i32 92, i64 64, i64 64, i64 0, i32 0, metadata !41} ; [ DW_TAG_member ] [option] [line 92, size 64, align 64, offset 0] [from ]
!41 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !42} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from char]
!42 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!43 = metadata !{i32 786445, metadata !4, metadata !38, metadata !"bSet", i32 93, i64 32, i64 32, i64 64, i32 0, metadata !35} ; [ DW_TAG_member ] [bSet] [line 93, size 32, align 32, offset 64] [from int]
!44 = metadata !{i32 786445, metadata !4, metadata !38, metadata !"type", i32 94, i64 32, i64 32, i64 96, i32 0, metadata !35} ; [ DW_TAG_member ] [type] [line 94, size 32, align 32, offset 96] [from int]
!45 = metadata !{i32 786445, metadata !4, metadata !38, metadata !"u", i32 103, i64 64, i64 64, i64 128, i32 0, metadata !46} ; [ DW_TAG_member ] [u] [line 103, size 64, align 64, offset 128] [from ]
!46 = metadata !{i32 786455, metadata !4, metadata !38, metadata !"", i32 95, i64 64, i64 64, i64 0, i32 0, null, metadata !47, i32 0, i32 0, null} ; [ DW_TAG_union_type ] [line 95, size 64, align 64, offset 0] [from ]
!47 = metadata !{metadata !48, metadata !50, metadata !52, metadata !56, metadata !58, metadata !59}
!48 = metadata !{i32 786445, metadata !4, metadata !46, metadata !"v", i32 96, i64 64, i64 64, i64 0, i32 0, metadata !49} ; [ DW_TAG_member ] [v] [line 96, size 64, align 64, offset 0] [from ]
!49 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, null} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!50 = metadata !{i32 786445, metadata !4, metadata !46, metadata !"i", i32 97, i64 64, i64 64, i64 0, i32 0, metadata !51} ; [ DW_TAG_member ] [i] [line 97, size 64, align 64, offset 0] [from ]
!51 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !35} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from int]
!52 = metadata !{i32 786445, metadata !4, metadata !46, metadata !"r", i32 98, i64 64, i64 64, i64 0, i32 0, metadata !53} ; [ DW_TAG_member ] [r] [line 98, size 64, align 64, offset 0] [from ]
!53 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !54} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from real]
!54 = metadata !{i32 786454, metadata !4, null, metadata !"real", i32 87, i64 0, i64 0, i64 0, i32 0, metadata !55} ; [ DW_TAG_typedef ] [real] [line 87, size 0, align 0, offset 0] [from float]
!55 = metadata !{i32 786468, null, null, metadata !"float", i32 0, i64 32, i64 32, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [float] [line 0, size 32, align 32, offset 0, enc DW_ATE_float]
!56 = metadata !{i32 786445, metadata !4, metadata !46, metadata !"c", i32 99, i64 64, i64 64, i64 0, i32 0, metadata !57} ; [ DW_TAG_member ] [c] [line 99, size 64, align 64, offset 0] [from ]
!57 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !41} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!58 = metadata !{i32 786445, metadata !4, metadata !46, metadata !"b", i32 101, i64 64, i64 64, i64 0, i32 0, metadata !51} ; [ DW_TAG_member ] [b] [line 101, size 64, align 64, offset 0] [from ]
!59 = metadata !{i32 786445, metadata !4, metadata !46, metadata !"rv", i32 102, i64 64, i64 64, i64 0, i32 0, metadata !60} ; [ DW_TAG_member ] [rv] [line 102, size 64, align 64, offset 0] [from ]
!60 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !61} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from rvec]
!61 = metadata !{i32 786454, metadata !4, null, metadata !"rvec", i32 101, i64 0, i64 0, i64 0, i32 0, metadata !62} ; [ DW_TAG_typedef ] [rvec] [line 101, size 0, align 0, offset 0] [from ]
!62 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 96, i64 32, i32 0, i32 0, metadata !54, metadata !63, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 96, align 32, offset 0] [from real]
!63 = metadata !{metadata !64}
!64 = metadata !{i32 786465, i64 0, i64 3}        ; [ DW_TAG_subrange_type ] [0, 2]
!65 = metadata !{i32 786445, metadata !4, metadata !38, metadata !"desc", i32 104, i64 64, i64 64, i64 192, i32 0, metadata !41} ; [ DW_TAG_member ] [desc] [line 104, size 64, align 64, offset 192] [from ]
!66 = metadata !{metadata !67}
!67 = metadata !{i32 786689, metadata !31, metadata !"pa", metadata !32, i32 16777261, metadata !36, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [pa] [line 45]
!68 = metadata !{i32 786478, metadata !1, metadata !32, metadata !"get_pargs", metadata !"get_pargs", metadata !"", i32 51, metadata !69, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i32*, i8**, i32, %struct.t_pargs*, i32)* @get_pargs, null, null, metadata !71, i32 52} ; [ DW_TAG_subprogram ] [line 51] [def] [scope 52] [get_pargs]
!69 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !70, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!70 = metadata !{null, metadata !51, metadata !57, metadata !35, metadata !36, metadata !35}
!71 = metadata !{metadata !72, metadata !73, metadata !74, metadata !75, metadata !76, metadata !77, metadata !78, metadata !79, metadata !80, metadata !81, metadata !82, metadata !86}
!72 = metadata !{i32 786689, metadata !68, metadata !"argc", metadata !32, i32 16777267, metadata !51, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [argc] [line 51]
!73 = metadata !{i32 786689, metadata !68, metadata !"argv", metadata !32, i32 33554483, metadata !57, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [argv] [line 51]
!74 = metadata !{i32 786689, metadata !68, metadata !"nparg", metadata !32, i32 50331699, metadata !35, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nparg] [line 51]
!75 = metadata !{i32 786689, metadata !68, metadata !"pa", metadata !32, i32 67108915, metadata !36, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [pa] [line 51]
!76 = metadata !{i32 786689, metadata !68, metadata !"bKeepArgs", metadata !32, i32 83886131, metadata !35, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [bKeepArgs] [line 51]
!77 = metadata !{i32 786688, metadata !68, metadata !"i", metadata !32, i32 53, metadata !35, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 53]
!78 = metadata !{i32 786688, metadata !68, metadata !"j", metadata !32, i32 53, metadata !35, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [j] [line 53]
!79 = metadata !{i32 786688, metadata !68, metadata !"k", metadata !32, i32 53, metadata !35, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [k] [line 53]
!80 = metadata !{i32 786688, metadata !68, metadata !"match", metadata !32, i32 53, metadata !35, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [match] [line 53]
!81 = metadata !{i32 786688, metadata !68, metadata !"bKeep", metadata !32, i32 54, metadata !51, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [bKeep] [line 54]
!82 = metadata !{i32 786688, metadata !68, metadata !"buf", metadata !32, i32 55, metadata !83, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [buf] [line 55]
!83 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 256, i64 8, i32 0, i32 0, metadata !42, metadata !84, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 256, align 8, offset 0] [from char]
!84 = metadata !{metadata !85}
!85 = metadata !{i32 786465, i64 0, i64 32}       ; [ DW_TAG_subrange_type ] [0, 31]
!86 = metadata !{i32 786688, metadata !68, metadata !"ptr", metadata !32, i32 56, metadata !41, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ptr] [line 56]
!87 = metadata !{i32 786478, metadata !1, metadata !32, metadata !"opt2parg_int", metadata !"opt2parg_int", metadata !"", i32 143, metadata !88, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*, i32, %struct.t_pargs*)* @opt2parg_int, null, null, metadata !90, i32 144} ; [ DW_TAG_subprogram ] [line 143] [def] [scope 144] [opt2parg_int]
!88 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !89, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!89 = metadata !{metadata !35, metadata !41, metadata !35, metadata !36}
!90 = metadata !{metadata !91, metadata !92, metadata !93, metadata !94}
!91 = metadata !{i32 786689, metadata !87, metadata !"option", metadata !32, i32 16777359, metadata !41, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [option] [line 143]
!92 = metadata !{i32 786689, metadata !87, metadata !"nparg", metadata !32, i32 33554575, metadata !35, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nparg] [line 143]
!93 = metadata !{i32 786689, metadata !87, metadata !"pa", metadata !32, i32 50331791, metadata !36, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [pa] [line 143]
!94 = metadata !{i32 786688, metadata !87, metadata !"i", metadata !32, i32 145, metadata !35, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 145]
!95 = metadata !{i32 786478, metadata !1, metadata !32, metadata !"opt2parg_bool", metadata !"opt2parg_bool", metadata !"", i32 156, metadata !88, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*, i32, %struct.t_pargs*)* @opt2parg_bool, null, null, metadata !96, i32 157} ; [ DW_TAG_subprogram ] [line 156] [def] [scope 157] [opt2parg_bool]
!96 = metadata !{metadata !97, metadata !98, metadata !99, metadata !100}
!97 = metadata !{i32 786689, metadata !95, metadata !"option", metadata !32, i32 16777372, metadata !41, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [option] [line 156]
!98 = metadata !{i32 786689, metadata !95, metadata !"nparg", metadata !32, i32 33554588, metadata !35, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nparg] [line 156]
!99 = metadata !{i32 786689, metadata !95, metadata !"pa", metadata !32, i32 50331804, metadata !36, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [pa] [line 156]
!100 = metadata !{i32 786688, metadata !95, metadata !"i", metadata !32, i32 158, metadata !35, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 158]
!101 = metadata !{i32 786478, metadata !1, metadata !32, metadata !"opt2parg_real", metadata !"opt2parg_real", metadata !"", i32 169, metadata !102, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, float (i8*, i32, %struct.t_pargs*)* @opt2parg_real, null, null, metadata !104, i32 170} ; [ DW_TAG_subprogram ] [line 169] [def] [scope 170] [opt2parg_real]
!102 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !103, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!103 = metadata !{metadata !54, metadata !41, metadata !35, metadata !36}
!104 = metadata !{metadata !105, metadata !106, metadata !107, metadata !108}
!105 = metadata !{i32 786689, metadata !101, metadata !"option", metadata !32, i32 16777385, metadata !41, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [option] [line 169]
!106 = metadata !{i32 786689, metadata !101, metadata !"nparg", metadata !32, i32 33554601, metadata !35, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nparg] [line 169]
!107 = metadata !{i32 786689, metadata !101, metadata !"pa", metadata !32, i32 50331817, metadata !36, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [pa] [line 169]
!108 = metadata !{i32 786688, metadata !101, metadata !"i", metadata !32, i32 171, metadata !35, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 171]
!109 = metadata !{i32 786478, metadata !1, metadata !32, metadata !"opt2parg_str", metadata !"opt2parg_str", metadata !"", i32 182, metadata !110, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* (i8*, i32, %struct.t_pargs*)* @opt2parg_str, null, null, metadata !112, i32 183} ; [ DW_TAG_subprogram ] [line 182] [def] [scope 183] [opt2parg_str]
!110 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !111, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!111 = metadata !{metadata !41, metadata !41, metadata !35, metadata !36}
!112 = metadata !{metadata !113, metadata !114, metadata !115, metadata !116}
!113 = metadata !{i32 786689, metadata !109, metadata !"option", metadata !32, i32 16777398, metadata !41, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [option] [line 182]
!114 = metadata !{i32 786689, metadata !109, metadata !"nparg", metadata !32, i32 33554614, metadata !35, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nparg] [line 182]
!115 = metadata !{i32 786689, metadata !109, metadata !"pa", metadata !32, i32 50331830, metadata !36, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [pa] [line 182]
!116 = metadata !{i32 786688, metadata !109, metadata !"i", metadata !32, i32 184, metadata !35, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 184]
!117 = metadata !{i32 786478, metadata !1, metadata !32, metadata !"opt2parg_bSet", metadata !"opt2parg_bSet", metadata !"", i32 195, metadata !88, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*, i32, %struct.t_pargs*)* @opt2parg_bSet, null, null, metadata !118, i32 196} ; [ DW_TAG_subprogram ] [line 195] [def] [scope 196] [opt2parg_bSet]
!118 = metadata !{metadata !119, metadata !120, metadata !121, metadata !122}
!119 = metadata !{i32 786689, metadata !117, metadata !"option", metadata !32, i32 16777411, metadata !41, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [option] [line 195]
!120 = metadata !{i32 786689, metadata !117, metadata !"nparg", metadata !32, i32 33554627, metadata !35, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nparg] [line 195]
!121 = metadata !{i32 786689, metadata !117, metadata !"pa", metadata !32, i32 50331843, metadata !36, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [pa] [line 195]
!122 = metadata !{i32 786688, metadata !117, metadata !"i", metadata !32, i32 197, metadata !35, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 197]
!123 = metadata !{i32 786478, metadata !1, metadata !32, metadata !"opt2parg_enum", metadata !"opt2parg_enum", metadata !"", i32 208, metadata !110, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* (i8*, i32, %struct.t_pargs*)* @opt2parg_enum, null, null, metadata !124, i32 209} ; [ DW_TAG_subprogram ] [line 208] [def] [scope 209] [opt2parg_enum]
!124 = metadata !{metadata !125, metadata !126, metadata !127, metadata !128}
!125 = metadata !{i32 786689, metadata !123, metadata !"option", metadata !32, i32 16777424, metadata !41, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [option] [line 208]
!126 = metadata !{i32 786689, metadata !123, metadata !"nparg", metadata !32, i32 33554640, metadata !35, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nparg] [line 208]
!127 = metadata !{i32 786689, metadata !123, metadata !"pa", metadata !32, i32 50331856, metadata !36, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [pa] [line 208]
!128 = metadata !{i32 786688, metadata !123, metadata !"i", metadata !32, i32 210, metadata !35, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 210]
!129 = metadata !{i32 786478, metadata !1, metadata !32, metadata !"pa_val", metadata !"pa_val", metadata !"", i32 221, metadata !130, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* (%struct.t_pargs*)* @pa_val, null, null, metadata !132, i32 222} ; [ DW_TAG_subprogram ] [line 221] [def] [scope 222] [pa_val]
!130 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !131, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!131 = metadata !{metadata !41, metadata !36}
!132 = metadata !{metadata !133}
!133 = metadata !{i32 786689, metadata !129, metadata !"pa", metadata !32, i32 16777437, metadata !36, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [pa] [line 221]
!134 = metadata !{i32 786478, metadata !1, metadata !32, metadata !"print_pargs", metadata !"print_pargs", metadata !"", i32 255, metadata !135, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._IO_FILE*, i32, %struct.t_pargs*)* @print_pargs, null, null, metadata !191, i32 256} ; [ DW_TAG_subprogram ] [line 255] [def] [scope 256] [print_pargs]
!135 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !136, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!136 = metadata !{null, metadata !137, metadata !35, metadata !36}
!137 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !138} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from FILE]
!138 = metadata !{i32 786454, metadata !1, null, metadata !"FILE", i32 48, i64 0, i64 0, i64 0, i32 0, metadata !139} ; [ DW_TAG_typedef ] [FILE] [line 48, size 0, align 0, offset 0] [from _IO_FILE]
!139 = metadata !{i32 786451, metadata !140, null, metadata !"_IO_FILE", i32 245, i64 1728, i64 64, i32 0, i32 0, null, metadata !141, i32 0, null, null} ; [ DW_TAG_structure_type ] [_IO_FILE] [line 245, size 1728, align 64, offset 0] [from ]
!140 = metadata !{metadata !"/usr/include/libio.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!141 = metadata !{metadata !142, metadata !143, metadata !144, metadata !145, metadata !146, metadata !147, metadata !148, metadata !149, metadata !150, metadata !151, metadata !152, metadata !153, metadata !154, metadata !162, metadata !163, metadata !164, metadata !165, metadata !168, metadata !170, metadata !172, metadata !176, metadata !177, metadata !179, metadata !180, metadata !181, metadata !182, metadata !183, metadata !186, metadata !187}
!142 = metadata !{i32 786445, metadata !140, metadata !139, metadata !"_flags", i32 246, i64 32, i64 32, i64 0, i32 0, metadata !35} ; [ DW_TAG_member ] [_flags] [line 246, size 32, align 32, offset 0] [from int]
!143 = metadata !{i32 786445, metadata !140, metadata !139, metadata !"_IO_read_ptr", i32 251, i64 64, i64 64, i64 64, i32 0, metadata !41} ; [ DW_TAG_member ] [_IO_read_ptr] [line 251, size 64, align 64, offset 64] [from ]
!144 = metadata !{i32 786445, metadata !140, metadata !139, metadata !"_IO_read_end", i32 252, i64 64, i64 64, i64 128, i32 0, metadata !41} ; [ DW_TAG_member ] [_IO_read_end] [line 252, size 64, align 64, offset 128] [from ]
!145 = metadata !{i32 786445, metadata !140, metadata !139, metadata !"_IO_read_base", i32 253, i64 64, i64 64, i64 192, i32 0, metadata !41} ; [ DW_TAG_member ] [_IO_read_base] [line 253, size 64, align 64, offset 192] [from ]
!146 = metadata !{i32 786445, metadata !140, metadata !139, metadata !"_IO_write_base", i32 254, i64 64, i64 64, i64 256, i32 0, metadata !41} ; [ DW_TAG_member ] [_IO_write_base] [line 254, size 64, align 64, offset 256] [from ]
!147 = metadata !{i32 786445, metadata !140, metadata !139, metadata !"_IO_write_ptr", i32 255, i64 64, i64 64, i64 320, i32 0, metadata !41} ; [ DW_TAG_member ] [_IO_write_ptr] [line 255, size 64, align 64, offset 320] [from ]
!148 = metadata !{i32 786445, metadata !140, metadata !139, metadata !"_IO_write_end", i32 256, i64 64, i64 64, i64 384, i32 0, metadata !41} ; [ DW_TAG_member ] [_IO_write_end] [line 256, size 64, align 64, offset 384] [from ]
!149 = metadata !{i32 786445, metadata !140, metadata !139, metadata !"_IO_buf_base", i32 257, i64 64, i64 64, i64 448, i32 0, metadata !41} ; [ DW_TAG_member ] [_IO_buf_base] [line 257, size 64, align 64, offset 448] [from ]
!150 = metadata !{i32 786445, metadata !140, metadata !139, metadata !"_IO_buf_end", i32 258, i64 64, i64 64, i64 512, i32 0, metadata !41} ; [ DW_TAG_member ] [_IO_buf_end] [line 258, size 64, align 64, offset 512] [from ]
!151 = metadata !{i32 786445, metadata !140, metadata !139, metadata !"_IO_save_base", i32 260, i64 64, i64 64, i64 576, i32 0, metadata !41} ; [ DW_TAG_member ] [_IO_save_base] [line 260, size 64, align 64, offset 576] [from ]
!152 = metadata !{i32 786445, metadata !140, metadata !139, metadata !"_IO_backup_base", i32 261, i64 64, i64 64, i64 640, i32 0, metadata !41} ; [ DW_TAG_member ] [_IO_backup_base] [line 261, size 64, align 64, offset 640] [from ]
!153 = metadata !{i32 786445, metadata !140, metadata !139, metadata !"_IO_save_end", i32 262, i64 64, i64 64, i64 704, i32 0, metadata !41} ; [ DW_TAG_member ] [_IO_save_end] [line 262, size 64, align 64, offset 704] [from ]
!154 = metadata !{i32 786445, metadata !140, metadata !139, metadata !"_markers", i32 264, i64 64, i64 64, i64 768, i32 0, metadata !155} ; [ DW_TAG_member ] [_markers] [line 264, size 64, align 64, offset 768] [from ]
!155 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !156} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from _IO_marker]
!156 = metadata !{i32 786451, metadata !140, null, metadata !"_IO_marker", i32 160, i64 192, i64 64, i32 0, i32 0, null, metadata !157, i32 0, null, null} ; [ DW_TAG_structure_type ] [_IO_marker] [line 160, size 192, align 64, offset 0] [from ]
!157 = metadata !{metadata !158, metadata !159, metadata !161}
!158 = metadata !{i32 786445, metadata !140, metadata !156, metadata !"_next", i32 161, i64 64, i64 64, i64 0, i32 0, metadata !155} ; [ DW_TAG_member ] [_next] [line 161, size 64, align 64, offset 0] [from ]
!159 = metadata !{i32 786445, metadata !140, metadata !156, metadata !"_sbuf", i32 162, i64 64, i64 64, i64 64, i32 0, metadata !160} ; [ DW_TAG_member ] [_sbuf] [line 162, size 64, align 64, offset 64] [from ]
!160 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !139} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from _IO_FILE]
!161 = metadata !{i32 786445, metadata !140, metadata !156, metadata !"_pos", i32 166, i64 32, i64 32, i64 128, i32 0, metadata !35} ; [ DW_TAG_member ] [_pos] [line 166, size 32, align 32, offset 128] [from int]
!162 = metadata !{i32 786445, metadata !140, metadata !139, metadata !"_chain", i32 266, i64 64, i64 64, i64 832, i32 0, metadata !160} ; [ DW_TAG_member ] [_chain] [line 266, size 64, align 64, offset 832] [from ]
!163 = metadata !{i32 786445, metadata !140, metadata !139, metadata !"_fileno", i32 268, i64 32, i64 32, i64 896, i32 0, metadata !35} ; [ DW_TAG_member ] [_fileno] [line 268, size 32, align 32, offset 896] [from int]
!164 = metadata !{i32 786445, metadata !140, metadata !139, metadata !"_flags2", i32 272, i64 32, i64 32, i64 928, i32 0, metadata !35} ; [ DW_TAG_member ] [_flags2] [line 272, size 32, align 32, offset 928] [from int]
!165 = metadata !{i32 786445, metadata !140, metadata !139, metadata !"_old_offset", i32 274, i64 64, i64 64, i64 960, i32 0, metadata !166} ; [ DW_TAG_member ] [_old_offset] [line 274, size 64, align 64, offset 960] [from __off_t]
!166 = metadata !{i32 786454, metadata !140, null, metadata !"__off_t", i32 131, i64 0, i64 0, i64 0, i32 0, metadata !167} ; [ DW_TAG_typedef ] [__off_t] [line 131, size 0, align 0, offset 0] [from long int]
!167 = metadata !{i32 786468, null, null, metadata !"long int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [long int] [line 0, size 64, align 64, offset 0, enc DW_ATE_signed]
!168 = metadata !{i32 786445, metadata !140, metadata !139, metadata !"_cur_column", i32 278, i64 16, i64 16, i64 1024, i32 0, metadata !169} ; [ DW_TAG_member ] [_cur_column] [line 278, size 16, align 16, offset 1024] [from unsigned short]
!169 = metadata !{i32 786468, null, null, metadata !"unsigned short", i32 0, i64 16, i64 16, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned short] [line 0, size 16, align 16, offset 0, enc DW_ATE_unsigned]
!170 = metadata !{i32 786445, metadata !140, metadata !139, metadata !"_vtable_offset", i32 279, i64 8, i64 8, i64 1040, i32 0, metadata !171} ; [ DW_TAG_member ] [_vtable_offset] [line 279, size 8, align 8, offset 1040] [from signed char]
!171 = metadata !{i32 786468, null, null, metadata !"signed char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [signed char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!172 = metadata !{i32 786445, metadata !140, metadata !139, metadata !"_shortbuf", i32 280, i64 8, i64 8, i64 1048, i32 0, metadata !173} ; [ DW_TAG_member ] [_shortbuf] [line 280, size 8, align 8, offset 1048] [from ]
!173 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 8, i64 8, i32 0, i32 0, metadata !42, metadata !174, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 8, align 8, offset 0] [from char]
!174 = metadata !{metadata !175}
!175 = metadata !{i32 786465, i64 0, i64 1}       ; [ DW_TAG_subrange_type ] [0, 0]
!176 = metadata !{i32 786445, metadata !140, metadata !139, metadata !"_lock", i32 284, i64 64, i64 64, i64 1088, i32 0, metadata !49} ; [ DW_TAG_member ] [_lock] [line 284, size 64, align 64, offset 1088] [from ]
!177 = metadata !{i32 786445, metadata !140, metadata !139, metadata !"_offset", i32 293, i64 64, i64 64, i64 1152, i32 0, metadata !178} ; [ DW_TAG_member ] [_offset] [line 293, size 64, align 64, offset 1152] [from __off64_t]
!178 = metadata !{i32 786454, metadata !140, null, metadata !"__off64_t", i32 132, i64 0, i64 0, i64 0, i32 0, metadata !167} ; [ DW_TAG_typedef ] [__off64_t] [line 132, size 0, align 0, offset 0] [from long int]
!179 = metadata !{i32 786445, metadata !140, metadata !139, metadata !"__pad1", i32 302, i64 64, i64 64, i64 1216, i32 0, metadata !49} ; [ DW_TAG_member ] [__pad1] [line 302, size 64, align 64, offset 1216] [from ]
!180 = metadata !{i32 786445, metadata !140, metadata !139, metadata !"__pad2", i32 303, i64 64, i64 64, i64 1280, i32 0, metadata !49} ; [ DW_TAG_member ] [__pad2] [line 303, size 64, align 64, offset 1280] [from ]
!181 = metadata !{i32 786445, metadata !140, metadata !139, metadata !"__pad3", i32 304, i64 64, i64 64, i64 1344, i32 0, metadata !49} ; [ DW_TAG_member ] [__pad3] [line 304, size 64, align 64, offset 1344] [from ]
!182 = metadata !{i32 786445, metadata !140, metadata !139, metadata !"__pad4", i32 305, i64 64, i64 64, i64 1408, i32 0, metadata !49} ; [ DW_TAG_member ] [__pad4] [line 305, size 64, align 64, offset 1408] [from ]
!183 = metadata !{i32 786445, metadata !140, metadata !139, metadata !"__pad5", i32 306, i64 64, i64 64, i64 1472, i32 0, metadata !184} ; [ DW_TAG_member ] [__pad5] [line 306, size 64, align 64, offset 1472] [from size_t]
!184 = metadata !{i32 786454, metadata !140, null, metadata !"size_t", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !185} ; [ DW_TAG_typedef ] [size_t] [line 42, size 0, align 0, offset 0] [from long unsigned int]
!185 = metadata !{i32 786468, null, null, metadata !"long unsigned int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [long unsigned int] [line 0, size 64, align 64, offset 0, enc DW_ATE_unsigned]
!186 = metadata !{i32 786445, metadata !140, metadata !139, metadata !"_mode", i32 308, i64 32, i64 32, i64 1536, i32 0, metadata !35} ; [ DW_TAG_member ] [_mode] [line 308, size 32, align 32, offset 1536] [from int]
!187 = metadata !{i32 786445, metadata !140, metadata !139, metadata !"_unused2", i32 310, i64 160, i64 8, i64 1568, i32 0, metadata !188} ; [ DW_TAG_member ] [_unused2] [line 310, size 160, align 8, offset 1568] [from ]
!188 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 160, i64 8, i32 0, i32 0, metadata !42, metadata !189, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 160, align 8, offset 0] [from char]
!189 = metadata !{metadata !190}
!190 = metadata !{i32 786465, i64 0, i64 20}      ; [ DW_TAG_subrange_type ] [0, 19]
!191 = metadata !{metadata !192, metadata !193, metadata !194, metadata !195, metadata !196, metadata !197, metadata !201, metadata !202}
!192 = metadata !{i32 786689, metadata !134, metadata !"fp", metadata !32, i32 16777471, metadata !137, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fp] [line 255]
!193 = metadata !{i32 786689, metadata !134, metadata !"npargs", metadata !32, i32 33554687, metadata !35, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [npargs] [line 255]
!194 = metadata !{i32 786689, metadata !134, metadata !"pa", metadata !32, i32 50331903, metadata !36, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [pa] [line 255]
!195 = metadata !{i32 786688, metadata !134, metadata !"bShowHidden", metadata !32, i32 257, metadata !35, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [bShowHidden] [line 257]
!196 = metadata !{i32 786688, metadata !134, metadata !"buf", metadata !32, i32 258, metadata !83, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [buf] [line 258]
!197 = metadata !{i32 786688, metadata !134, metadata !"buf2", metadata !32, i32 258, metadata !198, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [buf2] [line 258]
!198 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 2048, i64 8, i32 0, i32 0, metadata !42, metadata !199, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 2048, align 8, offset 0] [from char]
!199 = metadata !{metadata !200}
!200 = metadata !{i32 786465, i64 0, i64 256}     ; [ DW_TAG_subrange_type ] [0, 255]
!201 = metadata !{i32 786688, metadata !134, metadata !"wdesc", metadata !32, i32 259, metadata !41, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [wdesc] [line 259]
!202 = metadata !{i32 786688, metadata !134, metadata !"i", metadata !32, i32 260, metadata !35, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 260]
!203 = metadata !{i32 786478, metadata !1, metadata !32, metadata !"pr_enums", metadata !"pr_enums", metadata !"", i32 301, metadata !204, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._IO_FILE*, i32, %struct.t_pargs*, i32)* @pr_enums, null, null, metadata !206, i32 302} ; [ DW_TAG_subprogram ] [line 301] [def] [scope 302] [pr_enums]
!204 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !205, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!205 = metadata !{null, metadata !137, metadata !35, metadata !36, metadata !35}
!206 = metadata !{metadata !207, metadata !208, metadata !209, metadata !210, metadata !211, metadata !212}
!207 = metadata !{i32 786689, metadata !203, metadata !"fp", metadata !32, i32 16777517, metadata !137, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fp] [line 301]
!208 = metadata !{i32 786689, metadata !203, metadata !"npargs", metadata !32, i32 33554733, metadata !35, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [npargs] [line 301]
!209 = metadata !{i32 786689, metadata !203, metadata !"pa", metadata !32, i32 50331949, metadata !36, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [pa] [line 301]
!210 = metadata !{i32 786689, metadata !203, metadata !"shell", metadata !32, i32 67109165, metadata !35, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [shell] [line 301]
!211 = metadata !{i32 786688, metadata !203, metadata !"i", metadata !32, i32 303, metadata !35, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 303]
!212 = metadata !{i32 786688, metadata !203, metadata !"j", metadata !32, i32 303, metadata !35, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [j] [line 303]
!213 = metadata !{metadata !214, metadata !215}
!214 = metadata !{i32 786484, i32 0, metadata !129, metadata !"buf", metadata !"buf", metadata !"", metadata !32, i32 223, metadata !198, i32 1, i32 1, [256 x i8]* @pa_val.buf, null} ; [ DW_TAG_variable ] [buf] [line 223] [local] [def]
!215 = metadata !{i32 786484, i32 0, null, metadata !"argtp", metadata !"argtp", metadata !"", metadata !216, i32 87, metadata !217, i32 1, i32 1, [7 x i8*]* @argtp, null} ; [ DW_TAG_variable ] [argtp] [line 87] [local] [def]
!216 = metadata !{i32 786473, metadata !4}        ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/readinp.h]
!217 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 448, i64 64, i32 0, i32 0, metadata !41, metadata !218, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 448, align 64, offset 0] [from ]
!218 = metadata !{metadata !219}
!219 = metadata !{i32 786465, i64 0, i64 7}       ; [ DW_TAG_subrange_type ] [0, 6]
!220 = metadata !{i32 45, i32 0, metadata !31, null}
!221 = metadata !{i32 47, i32 0, metadata !31, null}
!222 = metadata !{metadata !"any pointer", metadata !223}
!223 = metadata !{metadata !"omnipotent char", metadata !224}
!224 = metadata !{metadata !"Simple C/C++ TBAA"}
!225 = metadata !{i32 48, i32 0, metadata !31, null}
!226 = metadata !{i32 51, i32 0, metadata !68, null}
!227 = metadata !{i32 53, i32 0, metadata !68, null}
!228 = metadata !{i32 55, i32 0, metadata !68, null}
!229 = metadata !{i32 58, i32 0, metadata !68, null} ; [ DW_TAG_imported_module ]
!230 = metadata !{metadata !"int", metadata !223}
!231 = metadata !{i32 59, i32 0, metadata !68, null}
!232 = metadata !{i32 60, i32 0, metadata !68, null}
!233 = metadata !{i32 1}
!234 = metadata !{i32 62, i32 0, metadata !235, null}
!235 = metadata !{i32 786443, metadata !1, metadata !68, i32 62, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/pargs.c]
!236 = metadata !{i32 64, i32 0, metadata !237, null}
!237 = metadata !{i32 786443, metadata !1, metadata !238, i32 64, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/pargs.c]
!238 = metadata !{i32 786443, metadata !1, metadata !235, i32 62, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/pargs.c]
!239 = metadata !{i32 66, i32 0, metadata !240, null}
!240 = metadata !{i32 786443, metadata !1, metadata !241, i32 65, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/pargs.c]
!241 = metadata !{i32 786443, metadata !1, metadata !237, i32 64, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/pargs.c]
!242 = metadata !{i32 63, i32 0, metadata !238, null}
!243 = metadata !{i32 65, i32 0, metadata !241, null}
!244 = metadata !{i32 67, i32 0, metadata !240, null}
!245 = metadata !{i32 68, i32 0, metadata !246, null}
!246 = metadata !{i32 786443, metadata !1, metadata !240, i32 67, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/pargs.c]
!247 = metadata !{i32 69, i32 0, metadata !246, null}
!248 = metadata !{i32 70, i32 0, metadata !246, null}
!249 = metadata !{i32 71, i32 0, metadata !246, null}
!250 = metadata !{i32 72, i32 0, metadata !240, null}
!251 = metadata !{i32 73, i32 0, metadata !252, null}
!252 = metadata !{i32 786443, metadata !1, metadata !240, i32 72, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/pargs.c]
!253 = metadata !{i32 74, i32 0, metadata !252, null}
!254 = metadata !{i32 75, i32 0, metadata !252, null}
!255 = metadata !{i32 76, i32 0, metadata !252, null}
!256 = metadata !{i32 77, i32 0, metadata !241, null}
!257 = metadata !{i32 78, i32 0, metadata !258, null}
!258 = metadata !{i32 786443, metadata !1, metadata !241, i32 77, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/pargs.c]
!259 = metadata !{i32 79, i32 0, metadata !258, null}
!260 = metadata !{i32 81, i32 0, metadata !258, null}
!261 = metadata !{i32 80, i32 0, metadata !258, null}
!262 = metadata !{i32 82, i32 0, metadata !258, null}
!263 = metadata !{i32 84, i32 0, metadata !264, null}
!264 = metadata !{i32 786443, metadata !1, metadata !258, i32 82, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/pargs.c]
!265 = metadata !{i32 85, i32 0, metadata !264, null}
!266 = metadata !{i32 88, i32 0, metadata !264, null}
!267 = metadata !{metadata !"float", metadata !223}
!268 = metadata !{i32 89, i32 0, metadata !264, null}
!269 = metadata !{i32 91, i32 0, metadata !264, null}
!270 = metadata !{i32 92, i32 0, metadata !264, null}
!271 = metadata !{i32 -12345}
!272 = metadata !{i32 94, i32 0, metadata !264, null}
!273 = metadata !{i32 95, i32 0, metadata !264, null}
!274 = metadata !{i32 96, i32 0, metadata !275, null}
!275 = metadata !{i32 786443, metadata !1, metadata !264, i32 96, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/pargs.c]
!276 = metadata !{i32 98, i32 0, metadata !275, null}
!277 = metadata !{i32 99, i32 0, metadata !275, null}
!278 = metadata !{i32 100, i32 0, metadata !275, null}
!279 = metadata !{i32 undef}
!280 = metadata !{i32 101, i32 0, metadata !275, null}
!281 = metadata !{i32 102, i32 0, metadata !264, null}
!282 = metadata !{i32 103, i32 0, metadata !264, null}
!283 = metadata !{i32 105, i32 0, metadata !264, null}
!284 = metadata !{i32 109, i32 0, metadata !264, null}
!285 = metadata !{i32 110, i32 0, metadata !264, null}
!286 = metadata !{i32 111, i32 0, metadata !264, null}
!287 = metadata !{metadata !"short", metadata !223}
!288 = metadata !{i32 112, i32 0, metadata !264, null}
!289 = metadata !{i32 114, i32 0, metadata !290, null}
!290 = metadata !{i32 786443, metadata !1, metadata !264, i32 113, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/pargs.c]
!291 = metadata !{i32 115, i32 0, metadata !290, null}
!292 = metadata !{i32 116, i32 0, metadata !290, null}
!293 = metadata !{i32 117, i32 0, metadata !290, null}
!294 = metadata !{i32 118, i32 0, metadata !290, null}
!295 = metadata !{i32 120, i32 0, metadata !290, null}
!296 = metadata !{i32 121, i32 0, metadata !290, null}
!297 = metadata !{i32 125, i32 0, metadata !264, null}
!298 = metadata !{i32 126, i32 0, metadata !264, null}
!299 = metadata !{i32 128, i32 0, metadata !258, null}
!300 = metadata !{i32 129, i32 0, metadata !258, null}
!301 = metadata !{i32 132, i32 0, metadata !68, null}
!302 = metadata !{i32 134, i32 0, metadata !303, null}
!303 = metadata !{i32 786443, metadata !1, metadata !304, i32 134, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/pargs.c]
!304 = metadata !{i32 786443, metadata !1, metadata !68, i32 132, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/pargs.c]
!305 = metadata !{i32 135, i32 0, metadata !306, null}
!306 = metadata !{i32 786443, metadata !1, metadata !303, i32 134, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/pargs.c]
!307 = metadata !{i32 136, i32 0, metadata !306, null}
!308 = metadata !{i32 138, i32 0, metadata !304, null}
!309 = metadata !{i32 139, i32 0, metadata !304, null}
!310 = metadata !{i32 140, i32 0, metadata !68, null}
!311 = metadata !{i32 141, i32 0, metadata !68, null}
!312 = metadata !{i32 143, i32 0, metadata !87, null}
!313 = metadata !{i32 147, i32 0, metadata !314, null}
!314 = metadata !{i32 786443, metadata !1, metadata !87, i32 147, i32 0, i32 14} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/pargs.c]
!315 = metadata !{i32 148, i32 0, metadata !314, null}
!316 = metadata !{i32 149, i32 0, metadata !314, null}
!317 = metadata !{i32 151, i32 0, metadata !87, null}
!318 = metadata !{i32 153, i32 0, metadata !87, null}
!319 = metadata !{i32 154, i32 0, metadata !87, null}
!320 = metadata !{i32 156, i32 0, metadata !95, null}
!321 = metadata !{i32 160, i32 0, metadata !322, null}
!322 = metadata !{i32 786443, metadata !1, metadata !95, i32 160, i32 0, i32 15} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/pargs.c]
!323 = metadata !{i32 161, i32 0, metadata !322, null}
!324 = metadata !{i32 162, i32 0, metadata !322, null}
!325 = metadata !{i32 164, i32 0, metadata !95, null}
!326 = metadata !{i32 166, i32 0, metadata !95, null}
!327 = metadata !{i32 167, i32 0, metadata !95, null}
!328 = metadata !{i32 169, i32 0, metadata !101, null}
!329 = metadata !{i32 173, i32 0, metadata !330, null}
!330 = metadata !{i32 786443, metadata !1, metadata !101, i32 173, i32 0, i32 16} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/pargs.c]
!331 = metadata !{i32 174, i32 0, metadata !330, null}
!332 = metadata !{i32 175, i32 0, metadata !330, null}
!333 = metadata !{i32 177, i32 0, metadata !101, null}
!334 = metadata !{i32 179, i32 0, metadata !101, null}
!335 = metadata !{i32 180, i32 0, metadata !101, null}
!336 = metadata !{i32 182, i32 0, metadata !109, null}
!337 = metadata !{i32 186, i32 0, metadata !338, null}
!338 = metadata !{i32 786443, metadata !1, metadata !109, i32 186, i32 0, i32 17} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/pargs.c]
!339 = metadata !{i32 187, i32 0, metadata !338, null}
!340 = metadata !{i32 188, i32 0, metadata !338, null}
!341 = metadata !{i32 190, i32 0, metadata !109, null}
!342 = metadata !{i32 192, i32 0, metadata !109, null}
!343 = metadata !{i32 193, i32 0, metadata !109, null}
!344 = metadata !{i32 195, i32 0, metadata !117, null}
!345 = metadata !{i32 199, i32 0, metadata !346, null}
!346 = metadata !{i32 786443, metadata !1, metadata !117, i32 199, i32 0, i32 18} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/pargs.c]
!347 = metadata !{i32 200, i32 0, metadata !346, null}
!348 = metadata !{i32 201, i32 0, metadata !346, null}
!349 = metadata !{i32 203, i32 0, metadata !117, null}
!350 = metadata !{i32 205, i32 0, metadata !117, null}
!351 = metadata !{i32 206, i32 0, metadata !117, null}
!352 = metadata !{i32 208, i32 0, metadata !123, null}
!353 = metadata !{i32 212, i32 0, metadata !354, null}
!354 = metadata !{i32 786443, metadata !1, metadata !123, i32 212, i32 0, i32 19} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/pargs.c]
!355 = metadata !{i32 213, i32 0, metadata !354, null}
!356 = metadata !{i32 214, i32 0, metadata !354, null}
!357 = metadata !{i32 216, i32 0, metadata !123, null}
!358 = metadata !{i32 218, i32 0, metadata !123, null}
!359 = metadata !{i32 219, i32 0, metadata !123, null}
!360 = metadata !{i32 221, i32 0, metadata !129, null}
!361 = metadata !{i32 225, i32 0, metadata !129, null}
!362 = metadata !{i32 226, i32 0, metadata !129, null}
!363 = metadata !{i32 228, i32 0, metadata !364, null}
!364 = metadata !{i32 786443, metadata !1, metadata !129, i32 226, i32 0, i32 20} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/pargs.c]
!365 = metadata !{i32 229, i32 0, metadata !364, null}
!366 = metadata !{i32 232, i32 0, metadata !364, null}
!367 = metadata !{i32 233, i32 0, metadata !364, null}
!368 = metadata !{i32 235, i32 0, metadata !364, null}
!369 = metadata !{i32 236, i32 0, metadata !364, null}
!370 = metadata !{i32 238, i32 0, metadata !364, null}
!371 = metadata !{i32 239, i32 0, metadata !372, null}
!372 = metadata !{i32 786443, metadata !1, metadata !364, i32 238, i32 0, i32 21} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/pargs.c]
!373 = metadata !{i32 240, i32 0, metadata !372, null}
!374 = metadata !{i32 242, i32 0, metadata !372, null}
!375 = metadata !{i32 246, i32 0, metadata !364, null}
!376 = metadata !{i32 247, i32 0, metadata !364, null}
!377 = metadata !{i32 249, i32 0, metadata !364, null}
!378 = metadata !{i32 250, i32 0, metadata !364, null}
!379 = metadata !{i32 252, i32 0, metadata !129, null}
!380 = metadata !{i32 255, i32 0, metadata !134, null}
!381 = metadata !{i32 258, i32 0, metadata !134, null}
!382 = metadata !{i32 265, i32 0, metadata !134, null}
!383 = metadata !{i32 266, i32 0, metadata !384, null}
!384 = metadata !{i32 786443, metadata !1, metadata !134, i32 266, i32 0, i32 22} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/pargs.c]
!385 = metadata !{i32 267, i32 0, metadata !384, null}
!386 = metadata !{i32 268, i32 0, metadata !384, null}
!387 = metadata !{i32 270, i32 0, metadata !134, null}
!388 = metadata !{i32 273, i32 0, metadata !389, null}
!389 = metadata !{i32 786443, metadata !1, metadata !134, i32 270, i32 0, i32 23} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/pargs.c]
!390 = metadata !{i32 274, i32 0, metadata !389, null}
!391 = metadata !{i32 275, i32 0, metadata !392, null}
!392 = metadata !{i32 786443, metadata !1, metadata !389, i32 275, i32 0, i32 24} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/pargs.c]
!393 = metadata !{i32 276, i32 0, metadata !394, null}
!394 = metadata !{i32 786443, metadata !1, metadata !392, i32 275, i32 0, i32 25} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/pargs.c]
!395 = metadata !{i32 278, i32 0, metadata !396, null}
!396 = metadata !{i32 786443, metadata !1, metadata !394, i32 276, i32 0, i32 26} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/pargs.c]
!397 = metadata !{i32 277, i32 0, metadata !396, null}
!398 = metadata !{i32 280, i32 0, metadata !396, null}
!399 = metadata !{i32 281, i32 0, metadata !396, null}
!400 = metadata !{i32 282, i32 0, metadata !401, null}
!401 = metadata !{i32 786443, metadata !1, metadata !396, i32 281, i32 0, i32 27} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/pargs.c]
!402 = metadata !{i32 283, i32 0, metadata !401, null}
!403 = metadata !{i32 284, i32 0, metadata !401, null}
!404 = metadata !{i32 285, i32 0, metadata !401, null}
!405 = metadata !{i32 285, i32 0, metadata !396, null}
!406 = metadata !{i32 288, i32 0, metadata !407, null}
!407 = metadata !{i32 786443, metadata !1, metadata !396, i32 285, i32 0, i32 28} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/pargs.c]
!408 = metadata !{i32 289, i32 0, metadata !407, null}
!409 = metadata !{i32 291, i32 0, metadata !396, null}
!410 = metadata !{i32 292, i32 0, metadata !396, null}
!411 = metadata !{i32 293, i32 0, metadata !396, null}
!412 = metadata !{i32 294, i32 0, metadata !396, null}
!413 = metadata !{i32 295, i32 0, metadata !396, null}
!414 = metadata !{i32 297, i32 0, metadata !389, null}
!415 = metadata !{i32 298, i32 0, metadata !389, null}
!416 = metadata !{i32 299, i32 0, metadata !134, null}
!417 = metadata !{i32 301, i32 0, metadata !203, null}
!418 = metadata !{i32 305, i32 0, metadata !203, null}
!419 = metadata !{i32 325, i32 0, metadata !420, null}
!420 = metadata !{i32 786443, metadata !1, metadata !421, i32 325, i32 0, i32 36} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/pargs.c]
!421 = metadata !{i32 786443, metadata !1, metadata !203, i32 305, i32 0, i32 29} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/pargs.c]
!422 = metadata !{i32 316, i32 0, metadata !423, null}
!423 = metadata !{i32 786443, metadata !1, metadata !421, i32 316, i32 0, i32 33} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/pargs.c]
!424 = metadata !{i32 307, i32 0, metadata !425, null}
!425 = metadata !{i32 786443, metadata !1, metadata !421, i32 307, i32 0, i32 30} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/pargs.c]
!426 = metadata !{i32 308, i32 0, metadata !425, null}
!427 = metadata !{i32 309, i32 0, metadata !428, null}
!428 = metadata !{i32 786443, metadata !1, metadata !425, i32 308, i32 0, i32 31} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/pargs.c]
!429 = metadata !{i32 310, i32 0, metadata !430, null}
!430 = metadata !{i32 786443, metadata !1, metadata !428, i32 310, i32 0, i32 32} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/pargs.c]
!431 = metadata !{i32 311, i32 0, metadata !430, null}
!432 = metadata !{i32 312, i32 0, metadata !428, null}
!433 = metadata !{i32 313, i32 0, metadata !428, null}
!434 = metadata !{i32 317, i32 0, metadata !423, null}
!435 = metadata !{i32 318, i32 0, metadata !436, null}
!436 = metadata !{i32 786443, metadata !1, metadata !423, i32 317, i32 0, i32 34} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/pargs.c]
!437 = metadata !{i32 319, i32 0, metadata !438, null}
!438 = metadata !{i32 786443, metadata !1, metadata !436, i32 319, i32 0, i32 35} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/pargs.c]
!439 = metadata !{i32 320, i32 0, metadata !438, null}
!440 = metadata !{i32 321, i32 0, metadata !436, null}
!441 = metadata !{i32 322, i32 0, metadata !436, null}
!442 = metadata !{i32 326, i32 0, metadata !420, null}
!443 = metadata !{i32 327, i32 0, metadata !444, null}
!444 = metadata !{i32 786443, metadata !1, metadata !420, i32 326, i32 0, i32 37} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/pargs.c]
!445 = metadata !{i32 328, i32 0, metadata !446, null}
!446 = metadata !{i32 786443, metadata !1, metadata !444, i32 328, i32 0, i32 38} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/pargs.c]
!447 = metadata !{i32 329, i32 0, metadata !446, null}
!448 = metadata !{i32 330, i32 0, metadata !444, null}
!449 = metadata !{i32 331, i32 0, metadata !444, null}
!450 = metadata !{i32 334, i32 0, metadata !203, null}
