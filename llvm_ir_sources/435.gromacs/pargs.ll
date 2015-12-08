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
  %desc = getelementptr inbounds %struct.t_pargs* %pa, i64 0, i32 4
  %0 = load i8** %desc, align 8, !tbaa !0
  %call = tail call i8* @strstr(i8* %0, i8* getelementptr inbounds ([7 x i8]* @.str, i64 0, i64 0)) #7
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %lor.rhs, label %lor.end

lor.rhs:                                          ; preds = %entry
  %call2 = tail call i8* @strstr(i8* %0, i8* getelementptr inbounds ([9 x i8]* @.str1, i64 0, i64 0)) #7
  %cmp3 = icmp ne i8* %call2, null
  br label %lor.end

lor.end:                                          ; preds = %entry, %lor.rhs
  %1 = phi i1 [ true, %entry ], [ %cmp3, %lor.rhs ]
  %lor.ext = zext i1 %1 to i32
  ret i32 %lor.ext
}

; Function Attrs: nounwind optsize readonly
declare i8* @strstr(i8*, i8* nocapture) #1

; Function Attrs: nounwind optsize uwtable
define void @get_pargs(i32* nocapture %argc, i8** %argv, i32 %nparg, %struct.t_pargs* nocapture %pa, i32 %bKeepArgs) #2 {
entry:
  %i = alloca i32, align 4
  %buf = alloca [32 x i8], align 16
  %0 = load i32* %argc, align 4, !tbaa !3
  %add = add nsw i32 %0, 1
  %call = call i8* @save_calloc(i8* getelementptr inbounds ([6 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str3, i64 0, i64 0), i32 58, i32 %add, i32 4) #8
  %1 = bitcast i8* %call to i32*
  store i32 1, i32* %1, align 4, !tbaa !3
  %2 = load i32* %argc, align 4, !tbaa !3
  %idxprom = sext i32 %2 to i64
  %arrayidx1 = getelementptr inbounds i32* %1, i64 %idxprom
  store i32 1, i32* %arrayidx1, align 4, !tbaa !3
  store i32 1, i32* %i, align 4, !tbaa !3
  %3 = load i32* %argc, align 4, !tbaa !3
  %cmp395 = icmp sgt i32 %3, 1
  br i1 %cmp395, label %for.body.lr.ph, label %for.end252

for.body.lr.ph:                                   ; preds = %entry
  %cmp5393 = icmp sgt i32 %nparg, 0
  %arraydecay = getelementptr inbounds [32 x i8]* %buf, i64 0, i64 0
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc250
  %storemerge396 = phi i32 [ 1, %for.body.lr.ph ], [ %inc251, %for.inc250 ]
  %idxprom2 = sext i32 %storemerge396 to i64
  %arrayidx3 = getelementptr inbounds i32* %1, i64 %idxprom2
  store i32 1, i32* %arrayidx3, align 4, !tbaa !3
  br i1 %cmp5393, label %for.body6, label %for.inc250

for.body6:                                        ; preds = %for.body, %for.inc247
  %indvars.iv398 = phi i64 [ %indvars.iv.next399, %for.inc247 ], [ 0, %for.body ]
  %type = getelementptr inbounds %struct.t_pargs* %pa, i64 %indvars.iv398, i32 2
  %4 = load i32* %type, align 4, !tbaa !3
  %cmp9 = icmp eq i32 %4, 4
  %option = getelementptr inbounds %struct.t_pargs* %pa, i64 %indvars.iv398, i32 0
  %5 = load i8** %option, align 8, !tbaa !0
  br i1 %cmp9, label %if.then, label %if.else43

if.then:                                          ; preds = %for.body6
  %add.ptr = getelementptr inbounds i8* %5, i64 1
  %call12 = call i32 (i8*, i8*, ...)* @sprintf(i8* %arraydecay, i8* getelementptr inbounds ([6 x i8]* @.str4, i64 0, i64 0), i8* %add.ptr) #8
  %6 = load i8** %option, align 8, !tbaa !0
  %7 = load i32* %i, align 4, !tbaa !3
  %idxprom16 = sext i32 %7 to i64
  %arrayidx17 = getelementptr inbounds i8** %argv, i64 %idxprom16
  %8 = load i8** %arrayidx17, align 8, !tbaa !0
  %call18 = call i32 @strcmp(i8* %6, i8* %8) #7
  %cmp19 = icmp eq i32 %call18, 0
  br i1 %cmp19, label %if.then20, label %if.else

if.then20:                                        ; preds = %if.then
  %u = getelementptr inbounds %struct.t_pargs* %pa, i64 %indvars.iv398, i32 3
  %b = bitcast %union.anon* %u to i32**
  %9 = load i32** %b, align 8, !tbaa !0
  store i32 1, i32* %9, align 4, !tbaa !3
  %bSet = getelementptr inbounds %struct.t_pargs* %pa, i64 %indvars.iv398, i32 1
  store i32 1, i32* %bSet, align 4, !tbaa !3
  %10 = load i32* %i, align 4, !tbaa !3
  %idxprom25 = sext i32 %10 to i64
  %arrayidx26 = getelementptr inbounds i32* %1, i64 %idxprom25
  store i32 0, i32* %arrayidx26, align 4, !tbaa !3
  br label %for.inc247

if.else:                                          ; preds = %if.then
  %call30 = call i32 @strcmp(i8* %arraydecay, i8* %8) #7
  %cmp31 = icmp eq i32 %call30, 0
  br i1 %cmp31, label %if.then32, label %for.inc247

if.then32:                                        ; preds = %if.else
  %u35 = getelementptr inbounds %struct.t_pargs* %pa, i64 %indvars.iv398, i32 3
  %b36 = bitcast %union.anon* %u35 to i32**
  %11 = load i32** %b36, align 8, !tbaa !0
  store i32 0, i32* %11, align 4, !tbaa !3
  %bSet39 = getelementptr inbounds %struct.t_pargs* %pa, i64 %indvars.iv398, i32 1
  store i32 1, i32* %bSet39, align 4, !tbaa !3
  %12 = load i32* %i, align 4, !tbaa !3
  %idxprom40 = sext i32 %12 to i64
  %arrayidx41 = getelementptr inbounds i32* %1, i64 %idxprom40
  store i32 0, i32* %arrayidx41, align 4, !tbaa !3
  br label %for.inc247

if.else43:                                        ; preds = %for.body6
  %13 = load i32* %i, align 4, !tbaa !3
  %idxprom47 = sext i32 %13 to i64
  %arrayidx48 = getelementptr inbounds i8** %argv, i64 %idxprom47
  %14 = load i8** %arrayidx48, align 8, !tbaa !0
  %call49 = call i32 @strcmp(i8* %5, i8* %14) #7
  %cmp50 = icmp eq i32 %call49, 0
  br i1 %cmp50, label %if.then51, label %for.inc247

if.then51:                                        ; preds = %if.else43
  %bSet54 = getelementptr inbounds %struct.t_pargs* %pa, i64 %indvars.iv398, i32 1
  %15 = load i32* %bSet54, align 4, !tbaa !3
  %tobool = icmp eq i32 %15, 0
  br i1 %tobool, label %if.end60, label %if.then55

if.then55:                                        ; preds = %if.then51
  %16 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call59 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %16, i8* getelementptr inbounds ([35 x i8]* @.str5, i64 0, i64 0), i8* %5) #8
  %.pre = load i32* %i, align 4, !tbaa !3
  br label %if.end60

if.end60:                                         ; preds = %if.then51, %if.then55
  %17 = phi i32 [ %13, %if.then51 ], [ %.pre, %if.then55 ]
  store i32 1, i32* %bSet54, align 4, !tbaa !3
  %idxprom64 = sext i32 %17 to i64
  %arrayidx65 = getelementptr inbounds i32* %1, i64 %idxprom64
  store i32 0, i32* %arrayidx65, align 4, !tbaa !3
  %18 = load i32* %type, align 4, !tbaa !3
  switch i32 %18, label %sw.default [
    i32 0, label %sw.bb
    i32 2, label %sw.bb74
    i32 1, label %sw.bb74
    i32 3, label %sw.bb79
    i32 6, label %sw.bb84
    i32 5, label %sw.bb148
  ]

sw.bb:                                            ; preds = %if.end60
  %19 = load i32* %argc, align 4, !tbaa !3
  %call69 = call i32 @iscan(i32 %19, i8** %argv, i32* %i) #8
  %u72 = getelementptr inbounds %struct.t_pargs* %pa, i64 %indvars.iv398, i32 3
  %i73 = bitcast %union.anon* %u72 to i32**
  %20 = load i32** %i73, align 8, !tbaa !0
  store i32 %call69, i32* %20, align 4, !tbaa !3
  br label %sw.epilog

sw.bb74:                                          ; preds = %if.end60, %if.end60
  %21 = load i32* %argc, align 4, !tbaa !3
  %call75 = call double @dscan(i32 %21, i8** %argv, i32* %i) #8
  %conv = fptrunc double %call75 to float
  %u78 = getelementptr inbounds %struct.t_pargs* %pa, i64 %indvars.iv398, i32 3
  %r = bitcast %union.anon* %u78 to float**
  %22 = load float** %r, align 8, !tbaa !0
  store float %conv, float* %22, align 4, !tbaa !4
  br label %sw.epilog

sw.bb79:                                          ; preds = %if.end60
  %23 = load i32* %argc, align 4, !tbaa !3
  %call80 = call i8* @sscan(i32 %23, i8** %argv, i32* %i) #8
  %u83 = getelementptr inbounds %struct.t_pargs* %pa, i64 %indvars.iv398, i32 3
  %c = bitcast %union.anon* %u83 to i8***
  %24 = load i8*** %c, align 8, !tbaa !0
  store i8* %call80, i8** %24, align 8, !tbaa !0
  br label %sw.epilog

sw.bb84:                                          ; preds = %if.end60
  %25 = load i32* %argc, align 4, !tbaa !3
  %call85 = call i8* @sscan(i32 %25, i8** %argv, i32* %i) #8
  %u90 = getelementptr inbounds %struct.t_pargs* %pa, i64 %indvars.iv398, i32 3
  %c91 = bitcast %union.anon* %u90 to i8***
  %26 = load i8*** %c91, align 8, !tbaa !0
  %arrayidx92386 = getelementptr inbounds i8** %26, i64 1
  %27 = load i8** %arrayidx92386, align 8, !tbaa !0
  %cmp93387 = icmp eq i8* %27, null
  br i1 %cmp93387, label %if.else143, label %for.body95

for.body95:                                       ; preds = %sw.bb84, %for.inc
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 1, %sw.bb84 ]
  %28 = phi i8* [ %34, %for.inc ], [ %27, %sw.bb84 ]
  %match.0388 = phi i32 [ %match.1, %for.inc ], [ -12345, %sw.bb84 ]
  %call102 = call i64 @strlen(i8* %call85) #7
  %conv103 = trunc i64 %call102 to i32
  %call104 = call i32 @gmx_strncasecmp(i8* %call85, i8* %28, i32 %conv103) #8
  %cmp105 = icmp eq i32 %call104, 0
  br i1 %cmp105, label %if.then107, label %for.inc

if.then107:                                       ; preds = %for.body95
  %cmp108 = icmp eq i32 %match.0388, -12345
  br i1 %cmp108, label %if.then126, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then107
  %29 = load i8*** %c91, align 8, !tbaa !0
  %arrayidx115 = getelementptr inbounds i8** %29, i64 %indvars.iv
  %30 = load i8** %arrayidx115, align 8, !tbaa !0
  %call116 = call i64 @strlen(i8* %30) #7
  %idxprom117 = sext i32 %match.0388 to i64
  %arrayidx122 = getelementptr inbounds i8** %29, i64 %idxprom117
  %31 = load i8** %arrayidx122, align 8, !tbaa !0
  %call123 = call i64 @strlen(i8* %31) #7
  %cmp124 = icmp ult i64 %call116, %call123
  br i1 %cmp124, label %if.then126, label %for.inc

if.then126:                                       ; preds = %lor.lhs.false, %if.then107
  %32 = trunc i64 %indvars.iv to i32
  br label %for.inc

for.inc:                                          ; preds = %for.body95, %if.then126, %lor.lhs.false
  %match.1 = phi i32 [ %32, %if.then126 ], [ %match.0388, %lor.lhs.false ], [ %match.0388, %for.body95 ]
  %indvars.iv.next = add i64 %indvars.iv, 1
  %33 = load i8*** %c91, align 8, !tbaa !0
  %arrayidx92 = getelementptr inbounds i8** %33, i64 %indvars.iv.next
  %34 = load i8** %arrayidx92, align 8, !tbaa !0
  %cmp93 = icmp eq i8* %34, null
  br i1 %cmp93, label %for.end, label %for.body95

for.end:                                          ; preds = %for.inc
  %cmp129 = icmp eq i32 %match.1, -12345
  br i1 %cmp129, label %if.else143, label %if.then131

if.then131:                                       ; preds = %for.end
  %idxprom132 = sext i32 %match.1 to i64
  %arrayidx137 = getelementptr inbounds i8** %33, i64 %idxprom132
  %35 = load i8** %arrayidx137, align 8, !tbaa !0
  store i8* %35, i8** %33, align 8, !tbaa !0
  br label %sw.epilog

if.else143:                                       ; preds = %sw.bb84, %for.end
  %36 = load i8** %option, align 8, !tbaa !0
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([34 x i8]* @.str6, i64 0, i64 0), i8* %call85, i8* %36) #8
  br label %sw.epilog

sw.bb148:                                         ; preds = %if.end60
  %37 = load i32* %argc, align 4, !tbaa !3
  %call149 = call double @dscan(i32 %37, i8** %argv, i32* %i) #8
  %conv150 = fptrunc double %call149 to float
  %u153 = getelementptr inbounds %struct.t_pargs* %pa, i64 %indvars.iv398, i32 3
  %rv = bitcast %union.anon* %u153 to [3 x float]**
  %38 = load [3 x float]** %rv, align 8, !tbaa !0
  %arrayidx154 = getelementptr inbounds [3 x float]* %38, i64 0, i64 0
  store float %conv150, float* %arrayidx154, align 4, !tbaa !4
  %39 = load i32* %i, align 4, !tbaa !3
  %add155 = add nsw i32 %39, 1
  %40 = load i32* %argc, align 4, !tbaa !3
  %cmp156 = icmp eq i32 %add155, %40
  br i1 %cmp156, label %if.then176, label %lor.lhs.false158

lor.lhs.false158:                                 ; preds = %sw.bb148
  %idxprom160 = sext i32 %add155 to i64
  %arrayidx161 = getelementptr inbounds i8** %argv, i64 %idxprom160
  %41 = load i8** %arrayidx161, align 8, !tbaa !0
  %42 = load i8* %41, align 1, !tbaa !1
  %cmp164 = icmp eq i8 %42, 45
  br i1 %cmp164, label %land.lhs.true, label %if.else192

land.lhs.true:                                    ; preds = %lor.lhs.false158
  %arrayidx169 = getelementptr inbounds i8* %41, i64 1
  %43 = load i8* %arrayidx169, align 1, !tbaa !1
  %idxprom171 = sext i8 %43 to i64
  %call172 = call i16** @__ctype_b_loc() #9
  %44 = load i16** %call172, align 8, !tbaa !0
  %arrayidx173 = getelementptr inbounds i16* %44, i64 %idxprom171
  %45 = load i16* %arrayidx173, align 2, !tbaa !5
  %and = and i16 %45, 2048
  %tobool175 = icmp eq i16 %and, 0
  br i1 %tobool175, label %if.then176, label %if.else192

if.then176:                                       ; preds = %land.lhs.true, %sw.bb148
  %arrayidx186 = getelementptr inbounds [3 x float]* %38, i64 0, i64 2
  store float %conv150, float* %arrayidx186, align 4, !tbaa !4
  %arrayidx191 = getelementptr inbounds [3 x float]* %38, i64 0, i64 1
  store float %conv150, float* %arrayidx191, align 4, !tbaa !4
  br label %sw.epilog

if.else192:                                       ; preds = %land.lhs.true, %lor.lhs.false158
  %idxprom193 = sext i32 %39 to i64
  %arrayidx194 = getelementptr inbounds i32* %1, i64 %idxprom193
  store i32 0, i32* %arrayidx194, align 4, !tbaa !3
  %46 = load i32* %argc, align 4, !tbaa !3
  %call195 = call double @dscan(i32 %46, i8** %argv, i32* %i) #8
  %conv196 = fptrunc double %call195 to float
  %47 = load [3 x float]** %rv, align 8, !tbaa !0
  %arrayidx201 = getelementptr inbounds [3 x float]* %47, i64 0, i64 1
  store float %conv196, float* %arrayidx201, align 4, !tbaa !4
  %48 = load i32* %i, align 4, !tbaa !3
  %add202 = add nsw i32 %48, 1
  %49 = load i32* %argc, align 4, !tbaa !3
  %cmp203 = icmp eq i32 %add202, %49
  br i1 %cmp203, label %if.then225, label %lor.lhs.false205

lor.lhs.false205:                                 ; preds = %if.else192
  %idxprom207 = sext i32 %add202 to i64
  %arrayidx208 = getelementptr inbounds i8** %argv, i64 %idxprom207
  %50 = load i8** %arrayidx208, align 8, !tbaa !0
  %51 = load i8* %50, align 1, !tbaa !1
  %cmp211 = icmp eq i8 %51, 45
  br i1 %cmp211, label %land.lhs.true213, label %if.end229

land.lhs.true213:                                 ; preds = %lor.lhs.false205
  %arrayidx217 = getelementptr inbounds i8* %50, i64 1
  %52 = load i8* %arrayidx217, align 1, !tbaa !1
  %idxprom219 = sext i8 %52 to i64
  %call220 = call i16** @__ctype_b_loc() #9
  %53 = load i16** %call220, align 8, !tbaa !0
  %arrayidx221 = getelementptr inbounds i16* %53, i64 %idxprom219
  %54 = load i16* %arrayidx221, align 2, !tbaa !5
  %and223 = and i16 %54, 2048
  %tobool224 = icmp eq i16 %and223, 0
  br i1 %tobool224, label %if.then225, label %if.end229

if.then225:                                       ; preds = %land.lhs.true213, %if.else192
  %55 = load i8** %option, align 8, !tbaa !0
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([44 x i8]* @.str7, i64 0, i64 0), i8* %55) #8
  %.pre400 = load i32* %i, align 4, !tbaa !3
  br label %if.end229

if.end229:                                        ; preds = %land.lhs.true213, %if.then225, %lor.lhs.false205
  %56 = phi i32 [ %48, %land.lhs.true213 ], [ %.pre400, %if.then225 ], [ %48, %lor.lhs.false205 ]
  %idxprom230 = sext i32 %56 to i64
  %arrayidx231 = getelementptr inbounds i32* %1, i64 %idxprom230
  store i32 0, i32* %arrayidx231, align 4, !tbaa !3
  %57 = load i32* %argc, align 4, !tbaa !3
  %call232 = call double @dscan(i32 %57, i8** %argv, i32* %i) #8
  %conv233 = fptrunc double %call232 to float
  %58 = load [3 x float]** %rv, align 8, !tbaa !0
  %arrayidx238 = getelementptr inbounds [3 x float]* %58, i64 0, i64 2
  store float %conv233, float* %arrayidx238, align 4, !tbaa !4
  br label %sw.epilog

sw.default:                                       ; preds = %if.end60
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([25 x i8]* @.str8, i64 0, i64 0), i32 %18) #8
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then176, %if.end229, %if.then131, %if.else143, %sw.default, %sw.bb79, %sw.bb74, %sw.bb
  %59 = load i32* %i, align 4, !tbaa !3
  %idxprom243 = sext i32 %59 to i64
  %arrayidx244 = getelementptr inbounds i32* %1, i64 %idxprom243
  store i32 0, i32* %arrayidx244, align 4, !tbaa !3
  br label %for.inc247

for.inc247:                                       ; preds = %if.else, %if.then32, %if.then20, %sw.epilog, %if.else43
  %indvars.iv.next399 = add i64 %indvars.iv398, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next399 to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %nparg
  br i1 %exitcond, label %for.inc250, label %for.body6

for.inc250:                                       ; preds = %for.inc247, %for.body
  %60 = load i32* %i, align 4, !tbaa !3
  %inc251 = add nsw i32 %60, 1
  store i32 %inc251, i32* %i, align 4, !tbaa !3
  %61 = load i32* %argc, align 4, !tbaa !3
  %cmp = icmp slt i32 %inc251, %61
  br i1 %cmp, label %for.body, label %for.end252

for.end252:                                       ; preds = %for.inc250, %entry
  %62 = phi i32 [ %3, %entry ], [ %61, %for.inc250 ]
  %tobool253 = icmp eq i32 %bKeepArgs, 0
  br i1 %tobool253, label %for.cond255.preheader, label %if.end272

for.cond255.preheader:                            ; preds = %for.end252
  store i32 0, i32* %i, align 4, !tbaa !3
  %cmp256383 = icmp slt i32 %62, 0
  br i1 %cmp256383, label %for.end271, label %for.body258

for.body258:                                      ; preds = %for.cond255.preheader, %for.inc269
  %j.1385 = phi i32 [ %j.2, %for.inc269 ], [ 0, %for.cond255.preheader ]
  %63 = phi i32 [ %inc270, %for.inc269 ], [ 0, %for.cond255.preheader ]
  %idxprom259 = sext i32 %63 to i64
  %arrayidx260 = getelementptr inbounds i32* %1, i64 %idxprom259
  %64 = load i32* %arrayidx260, align 4, !tbaa !3
  %tobool261 = icmp eq i32 %64, 0
  br i1 %tobool261, label %for.inc269, label %if.then262

if.then262:                                       ; preds = %for.body258
  %arrayidx264 = getelementptr inbounds i8** %argv, i64 %idxprom259
  %65 = load i8** %arrayidx264, align 8, !tbaa !0
  %inc265 = add nsw i32 %j.1385, 1
  %idxprom266 = sext i32 %j.1385 to i64
  %arrayidx267 = getelementptr inbounds i8** %argv, i64 %idxprom266
  store i8* %65, i8** %arrayidx267, align 8, !tbaa !0
  br label %for.inc269

for.inc269:                                       ; preds = %for.body258, %if.then262
  %j.2 = phi i32 [ %inc265, %if.then262 ], [ %j.1385, %for.body258 ]
  %inc270 = add nsw i32 %63, 1
  store i32 %inc270, i32* %i, align 4, !tbaa !3
  %cmp256 = icmp slt i32 %63, %62
  br i1 %cmp256, label %for.body258, label %for.end271

for.end271:                                       ; preds = %for.inc269, %for.cond255.preheader
  %j.1.lcssa = phi i32 [ 0, %for.cond255.preheader ], [ %j.2, %for.inc269 ]
  %sub = add nsw i32 %j.1.lcssa, -1
  store i32 %sub, i32* %argc, align 4, !tbaa !3
  br label %if.end272

if.end272:                                        ; preds = %for.end252, %for.end271
  call void @save_free(i8* getelementptr inbounds ([6 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str3, i64 0, i64 0), i32 140, i8* %call) #8
  ret void
}

; Function Attrs: optsize
declare i8* @save_calloc(i8*, i8*, i32, i32, i32) #3

; Function Attrs: nounwind optsize
declare i32 @sprintf(i8* nocapture, i8* nocapture, ...) #4

; Function Attrs: nounwind optsize readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) #1

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #4

; Function Attrs: optsize
declare i32 @iscan(i32, i8**, i32*) #3

; Function Attrs: optsize
declare double @dscan(i32, i8**, i32*) #3

; Function Attrs: optsize
declare i8* @sscan(i32, i8**, i32*) #3

; Function Attrs: optsize
declare i32 @gmx_strncasecmp(i8*, i8*, i32) #3

; Function Attrs: nounwind optsize readonly
declare i64 @strlen(i8* nocapture) #1

; Function Attrs: optsize
declare void @fatal_error(i32, i8*, ...) #3

; Function Attrs: nounwind optsize readnone
declare i16** @__ctype_b_loc() #5

; Function Attrs: optsize
declare void @save_free(i8*, i8*, i32, i8*) #3

; Function Attrs: nounwind optsize uwtable
define i32 @opt2parg_int(i8* %option, i32 %nparg, %struct.t_pargs* nocapture %pa) #2 {
entry:
  %cmp10 = icmp sgt i32 %nparg, 0
  br i1 %cmp10, label %for.body, label %for.end

for.cond:                                         ; preds = %for.body
  %0 = trunc i64 %indvars.iv.next to i32
  %cmp = icmp slt i32 %0, %nparg
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %entry, %for.cond
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.cond ], [ 0, %entry ]
  %option1 = getelementptr inbounds %struct.t_pargs* %pa, i64 %indvars.iv, i32 0
  %1 = load i8** %option1, align 8, !tbaa !0
  %call = tail call i32 @strcmp(i8* %1, i8* %option) #7
  %cmp2 = icmp eq i32 %call, 0
  %indvars.iv.next = add i64 %indvars.iv, 1
  br i1 %cmp2, label %if.then, label %for.cond

if.then:                                          ; preds = %for.body
  %u = getelementptr inbounds %struct.t_pargs* %pa, i64 %indvars.iv, i32 3
  %i5 = bitcast %union.anon* %u to i32**
  %2 = load i32** %i5, align 8, !tbaa !0
  %3 = load i32* %2, align 4, !tbaa !3
  br label %return

for.end:                                          ; preds = %for.cond, %entry
  tail call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([30 x i8]* @.str9, i64 0, i64 0), i8* %option) #8
  br label %return

return:                                           ; preds = %for.end, %if.then
  %retval.0 = phi i32 [ %3, %if.then ], [ 0, %for.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind optsize uwtable
define i32 @opt2parg_bool(i8* %option, i32 %nparg, %struct.t_pargs* nocapture %pa) #2 {
entry:
  %cmp9 = icmp sgt i32 %nparg, 0
  br i1 %cmp9, label %for.body, label %for.end

for.cond:                                         ; preds = %for.body
  %0 = trunc i64 %indvars.iv.next to i32
  %cmp = icmp slt i32 %0, %nparg
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %entry, %for.cond
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.cond ], [ 0, %entry ]
  %option1 = getelementptr inbounds %struct.t_pargs* %pa, i64 %indvars.iv, i32 0
  %1 = load i8** %option1, align 8, !tbaa !0
  %call = tail call i32 @strcmp(i8* %1, i8* %option) #7
  %cmp2 = icmp eq i32 %call, 0
  %indvars.iv.next = add i64 %indvars.iv, 1
  br i1 %cmp2, label %if.then, label %for.cond

if.then:                                          ; preds = %for.body
  %u = getelementptr inbounds %struct.t_pargs* %pa, i64 %indvars.iv, i32 3
  %b = bitcast %union.anon* %u to i32**
  %2 = load i32** %b, align 8, !tbaa !0
  %3 = load i32* %2, align 4, !tbaa !3
  br label %return

for.end:                                          ; preds = %for.cond, %entry
  tail call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([30 x i8]* @.str10, i64 0, i64 0), i8* %option) #8
  br label %return

return:                                           ; preds = %for.end, %if.then
  %retval.0 = phi i32 [ %3, %if.then ], [ 0, %for.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind optsize uwtable
define float @opt2parg_real(i8* %option, i32 %nparg, %struct.t_pargs* nocapture %pa) #2 {
entry:
  %cmp9 = icmp sgt i32 %nparg, 0
  br i1 %cmp9, label %for.body, label %for.end

for.cond:                                         ; preds = %for.body
  %0 = trunc i64 %indvars.iv.next to i32
  %cmp = icmp slt i32 %0, %nparg
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %entry, %for.cond
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.cond ], [ 0, %entry ]
  %option1 = getelementptr inbounds %struct.t_pargs* %pa, i64 %indvars.iv, i32 0
  %1 = load i8** %option1, align 8, !tbaa !0
  %call = tail call i32 @strcmp(i8* %1, i8* %option) #7
  %cmp2 = icmp eq i32 %call, 0
  %indvars.iv.next = add i64 %indvars.iv, 1
  br i1 %cmp2, label %if.then, label %for.cond

if.then:                                          ; preds = %for.body
  %u = getelementptr inbounds %struct.t_pargs* %pa, i64 %indvars.iv, i32 3
  %r = bitcast %union.anon* %u to float**
  %2 = load float** %r, align 8, !tbaa !0
  %3 = load float* %2, align 4, !tbaa !4
  br label %return

for.end:                                          ; preds = %for.cond, %entry
  tail call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([27 x i8]* @.str11, i64 0, i64 0), i8* %option) #8
  br label %return

return:                                           ; preds = %for.end, %if.then
  %retval.0 = phi float [ %3, %if.then ], [ 0.000000e+00, %for.end ]
  ret float %retval.0
}

; Function Attrs: nounwind optsize uwtable
define i8* @opt2parg_str(i8* %option, i32 %nparg, %struct.t_pargs* nocapture %pa) #2 {
entry:
  %cmp9 = icmp sgt i32 %nparg, 0
  br i1 %cmp9, label %for.body, label %for.end

for.cond:                                         ; preds = %for.body
  %0 = trunc i64 %indvars.iv.next to i32
  %cmp = icmp slt i32 %0, %nparg
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %entry, %for.cond
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.cond ], [ 0, %entry ]
  %option1 = getelementptr inbounds %struct.t_pargs* %pa, i64 %indvars.iv, i32 0
  %1 = load i8** %option1, align 8, !tbaa !0
  %call = tail call i32 @strcmp(i8* %1, i8* %option) #7
  %cmp2 = icmp eq i32 %call, 0
  %indvars.iv.next = add i64 %indvars.iv, 1
  br i1 %cmp2, label %if.then, label %for.cond

if.then:                                          ; preds = %for.body
  %u = getelementptr inbounds %struct.t_pargs* %pa, i64 %indvars.iv, i32 3
  %c = bitcast %union.anon* %u to i8***
  %2 = load i8*** %c, align 8, !tbaa !0
  %3 = load i8** %2, align 8, !tbaa !0
  br label %return

for.end:                                          ; preds = %for.cond, %entry
  tail call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([29 x i8]* @.str12, i64 0, i64 0), i8* %option) #8
  br label %return

return:                                           ; preds = %for.end, %if.then
  %retval.0 = phi i8* [ %3, %if.then ], [ null, %for.end ]
  ret i8* %retval.0
}

; Function Attrs: nounwind optsize uwtable
define i32 @opt2parg_bSet(i8* %option, i32 %nparg, %struct.t_pargs* nocapture %pa) #2 {
entry:
  %cmp9 = icmp sgt i32 %nparg, 0
  br i1 %cmp9, label %for.body, label %for.end

for.cond:                                         ; preds = %for.body
  %0 = trunc i64 %indvars.iv.next to i32
  %cmp = icmp slt i32 %0, %nparg
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %entry, %for.cond
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.cond ], [ 0, %entry ]
  %option1 = getelementptr inbounds %struct.t_pargs* %pa, i64 %indvars.iv, i32 0
  %1 = load i8** %option1, align 8, !tbaa !0
  %call = tail call i32 @strcmp(i8* %1, i8* %option) #7
  %cmp2 = icmp eq i32 %call, 0
  %indvars.iv.next = add i64 %indvars.iv, 1
  br i1 %cmp2, label %if.then, label %for.cond

if.then:                                          ; preds = %for.body
  %bSet = getelementptr inbounds %struct.t_pargs* %pa, i64 %indvars.iv, i32 1
  %2 = load i32* %bSet, align 4, !tbaa !3
  br label %return

for.end:                                          ; preds = %for.cond, %entry
  tail call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([27 x i8]* @.str13, i64 0, i64 0), i8* %option) #8
  br label %return

return:                                           ; preds = %for.end, %if.then
  %retval.0 = phi i32 [ %2, %if.then ], [ 0, %for.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind optsize uwtable
define i8* @opt2parg_enum(i8* %option, i32 %nparg, %struct.t_pargs* nocapture %pa) #2 {
entry:
  %cmp10 = icmp sgt i32 %nparg, 0
  br i1 %cmp10, label %for.body, label %for.end

for.cond:                                         ; preds = %for.body
  %0 = trunc i64 %indvars.iv.next to i32
  %cmp = icmp slt i32 %0, %nparg
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %entry, %for.cond
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.cond ], [ 0, %entry ]
  %option1 = getelementptr inbounds %struct.t_pargs* %pa, i64 %indvars.iv, i32 0
  %1 = load i8** %option1, align 8, !tbaa !0
  %call = tail call i32 @strcmp(i8* %1, i8* %option) #7
  %cmp2 = icmp eq i32 %call, 0
  %indvars.iv.next = add i64 %indvars.iv, 1
  br i1 %cmp2, label %if.then, label %for.cond

if.then:                                          ; preds = %for.body
  %u = getelementptr inbounds %struct.t_pargs* %pa, i64 %indvars.iv, i32 3
  %c = bitcast %union.anon* %u to i8***
  %2 = load i8*** %c, align 8, !tbaa !0
  %3 = load i8** %2, align 8, !tbaa !0
  br label %return

for.end:                                          ; preds = %for.cond, %entry
  tail call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([27 x i8]* @.str13, i64 0, i64 0), i8* %option) #8
  br label %return

return:                                           ; preds = %for.end, %if.then
  %retval.0 = phi i8* [ %3, %if.then ], [ null, %for.end ]
  ret i8* %retval.0
}

; Function Attrs: nounwind optsize uwtable
define i8* @pa_val(%struct.t_pargs* nocapture %pa) #2 {
entry:
  store i8 0, i8* getelementptr inbounds ([256 x i8]* @pa_val.buf, i64 0, i64 0), align 16, !tbaa !1
  %type = getelementptr inbounds %struct.t_pargs* %pa, i64 0, i32 2
  %0 = load i32* %type, align 4, !tbaa !3
  switch i32 %0, label %sw.epilog [
    i32 0, label %sw.bb
    i32 2, label %sw.bb1
    i32 1, label %sw.bb1
    i32 4, label %sw.bb4
    i32 3, label %sw.bb7
    i32 6, label %sw.bb21
    i32 5, label %sw.bb25
  ]

sw.bb:                                            ; preds = %entry
  %u = getelementptr inbounds %struct.t_pargs* %pa, i64 0, i32 3
  %i = bitcast %union.anon* %u to i32**
  %1 = load i32** %i, align 8, !tbaa !0
  %2 = load i32* %1, align 4, !tbaa !3
  %call = tail call i32 (i8*, i8*, ...)* @sprintf(i8* getelementptr inbounds ([256 x i8]* @pa_val.buf, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8]* @.str14, i64 0, i64 0), i32 %2) #8
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry, %entry
  %u2 = getelementptr inbounds %struct.t_pargs* %pa, i64 0, i32 3
  %r = bitcast %union.anon* %u2 to float**
  %3 = load float** %r, align 8, !tbaa !0
  %4 = load float* %3, align 4, !tbaa !4
  %conv = fpext float %4 to double
  %call3 = tail call i32 (i8*, i8*, ...)* @sprintf(i8* getelementptr inbounds ([256 x i8]* @pa_val.buf, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8]* @.str15, i64 0, i64 0), double %conv) #8
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  %u5 = getelementptr inbounds %struct.t_pargs* %pa, i64 0, i32 3
  %b = bitcast %union.anon* %u5 to i32**
  %5 = load i32** %b, align 8, !tbaa !0
  %6 = load i32* %5, align 4, !tbaa !3
  %tobool = icmp ne i32 %6, 0
  %cond = select i1 %tobool, i8* getelementptr inbounds ([4 x i8]* @.str17, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8]* @.str18, i64 0, i64 0)
  %call6 = tail call i32 (i8*, i8*, ...)* @sprintf(i8* getelementptr inbounds ([256 x i8]* @pa_val.buf, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8]* @.str16, i64 0, i64 0), i8* %cond) #8
  br label %sw.epilog

sw.bb7:                                           ; preds = %entry
  %u8 = getelementptr inbounds %struct.t_pargs* %pa, i64 0, i32 3
  %c = bitcast %union.anon* %u8 to i8***
  %7 = load i8*** %c, align 8, !tbaa !0
  %8 = load i8** %7, align 8, !tbaa !0
  %tobool9 = icmp eq i8* %8, null
  br i1 %tobool9, label %sw.epilog, label %if.then

if.then:                                          ; preds = %sw.bb7
  %call12 = tail call i64 @strlen(i8* %8) #7
  %cmp = icmp ugt i64 %call12, 255
  br i1 %cmp, label %if.then14, label %if.else

if.then14:                                        ; preds = %if.then
  tail call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([25 x i8]* @.str19, i64 0, i64 0), i8* %8) #8
  br label %sw.epilog

if.else:                                          ; preds = %if.then
  %call19 = tail call i8* @strcpy(i8* getelementptr inbounds ([256 x i8]* @pa_val.buf, i64 0, i64 0), i8* %8) #8
  br label %sw.epilog

sw.bb21:                                          ; preds = %entry
  %u22 = getelementptr inbounds %struct.t_pargs* %pa, i64 0, i32 3
  %c23 = bitcast %union.anon* %u22 to i8***
  %9 = load i8*** %c23, align 8, !tbaa !0
  %10 = load i8** %9, align 8, !tbaa !0
  %call24 = tail call i8* @strcpy(i8* getelementptr inbounds ([256 x i8]* @pa_val.buf, i64 0, i64 0), i8* %10) #8
  br label %sw.epilog

sw.bb25:                                          ; preds = %entry
  %u26 = getelementptr inbounds %struct.t_pargs* %pa, i64 0, i32 3
  %rv = bitcast %union.anon* %u26 to [3 x float]**
  %11 = load [3 x float]** %rv, align 8, !tbaa !0
  %arrayidx27 = getelementptr inbounds [3 x float]* %11, i64 0, i64 0
  %12 = load float* %arrayidx27, align 4, !tbaa !4
  %conv28 = fpext float %12 to double
  %arrayidx31 = getelementptr inbounds [3 x float]* %11, i64 0, i64 1
  %13 = load float* %arrayidx31, align 4, !tbaa !4
  %conv32 = fpext float %13 to double
  %arrayidx35 = getelementptr inbounds [3 x float]* %11, i64 0, i64 2
  %14 = load float* %arrayidx35, align 4, !tbaa !4
  %conv36 = fpext float %14 to double
  %call37 = tail call i32 (i8*, i8*, ...)* @sprintf(i8* getelementptr inbounds ([256 x i8]* @pa_val.buf, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str20, i64 0, i64 0), double %conv28, double %conv32, double %conv36) #8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb7, %if.else, %if.then14, %entry, %sw.bb25, %sw.bb21, %sw.bb4, %sw.bb1, %sw.bb
  ret i8* getelementptr inbounds ([256 x i8]* @pa_val.buf, i64 0, i64 0)
}

; Function Attrs: nounwind optsize
declare i8* @strcpy(i8*, i8* nocapture) #4

; Function Attrs: nounwind optsize uwtable
define void @print_pargs(%struct._IO_FILE* nocapture %fp, i32 %npargs, %struct.t_pargs* nocapture %pa) #2 {
entry:
  %buf = alloca [32 x i8], align 16
  %buf2 = alloca [256 x i8], align 16
  %0 = getelementptr inbounds [256 x i8]* %buf2, i64 0, i64 0
  call void @llvm.lifetime.start(i64 256, i8* %0) #6
  %cmp147 = icmp sgt i32 %npargs, 0
  br i1 %cmp147, label %for.body, label %if.end109

for.body:                                         ; preds = %entry, %for.inc
  %indvars.iv150 = phi i64 [ %indvars.iv.next151, %for.inc ], [ 0, %entry ]
  %bShowHidden.0148 = phi i32 [ %bShowHidden.1, %for.inc ], [ 0, %entry ]
  %option = getelementptr inbounds %struct.t_pargs* %pa, i64 %indvars.iv150, i32 0
  %1 = load i8** %option, align 8, !tbaa !0
  %call = call i32 @strcmp(i8* %1, i8* getelementptr inbounds ([8 x i8]* @.str21, i64 0, i64 0)) #7
  %cmp1 = icmp eq i32 %call, 0
  br i1 %cmp1, label %land.lhs.true, label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %bSet = getelementptr inbounds %struct.t_pargs* %pa, i64 %indvars.iv150, i32 1
  %2 = load i32* %bSet, align 4, !tbaa !3
  %tobool = icmp eq i32 %2, 0
  %bShowHidden.0. = select i1 %tobool, i32 %bShowHidden.0148, i32 1
  br label %for.inc

for.inc:                                          ; preds = %land.lhs.true, %for.body
  %bShowHidden.1 = phi i32 [ %bShowHidden.0148, %for.body ], [ %bShowHidden.0., %land.lhs.true ]
  %indvars.iv.next151 = add i64 %indvars.iv150, 1
  %lftr.wideiv152 = trunc i64 %indvars.iv.next151 to i32
  %exitcond153 = icmp eq i32 %lftr.wideiv152, %npargs
  br i1 %exitcond153, label %for.end, label %for.body

for.end:                                          ; preds = %for.inc
  br i1 %cmp147, label %for.body10.lr.ph, label %if.end109

for.body10.lr.ph:                                 ; preds = %for.end
  %call6 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([18 x i8]* @.str22, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str23, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str24, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8]* @.str25, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8]* @.str26, i64 0, i64 0)) #8
  %3 = call i64 @fwrite(i8* getelementptr inbounds ([56 x i8]* @.str27, i64 0, i64 0), i64 55, i64 1, %struct._IO_FILE* %fp)
  %tobool11 = icmp eq i32 %bShowHidden.1, 0
  %arraydecay = getelementptr inbounds [32 x i8]* %buf, i64 0, i64 0
  br label %for.body10

for.body10:                                       ; preds = %for.inc105, %for.body10.lr.ph
  %indvars.iv = phi i64 [ 0, %for.body10.lr.ph ], [ %indvars.iv.next, %for.inc105 ]
  %arrayidx13 = getelementptr inbounds %struct.t_pargs* %pa, i64 %indvars.iv
  br i1 %tobool11, label %lor.lhs.false, label %if.then16

lor.lhs.false:                                    ; preds = %for.body10
  %call14 = call i32 @is_hidden(%struct.t_pargs* %arrayidx13) #10
  %tobool15 = icmp eq i32 %call14, 0
  br i1 %tobool15, label %if.then16, label %for.inc105

if.then16:                                        ; preds = %for.body10, %lor.lhs.false
  %type = getelementptr inbounds %struct.t_pargs* %pa, i64 %indvars.iv, i32 2
  %4 = load i32* %type, align 4, !tbaa !3
  %cmp19 = icmp eq i32 %4, 4
  %option23 = getelementptr inbounds %struct.t_pargs* %arrayidx13, i64 0, i32 0
  %5 = load i8** %option23, align 8, !tbaa !0
  br i1 %cmp19, label %if.then20, label %if.else

if.then20:                                        ; preds = %if.then16
  %add.ptr = getelementptr inbounds i8* %5, i64 1
  %call24 = call i32 (i8*, i8*, ...)* @sprintf(i8* %arraydecay, i8* getelementptr inbounds ([8 x i8]* @.str28, i64 0, i64 0), i8* %add.ptr) #8
  br label %if.end30

if.else:                                          ; preds = %if.then16
  %call29 = call i8* @strcpy(i8* %arraydecay, i8* %5) #8
  br label %if.end30

if.end30:                                         ; preds = %if.else, %if.then20
  %call32 = call i64 @strlen(i8* %arraydecay) #7
  %6 = load i32* %type, align 4, !tbaa !3
  %idxprom36 = sext i32 %6 to i64
  %arrayidx37 = getelementptr inbounds [7 x i8*]* @argtp, i64 0, i64 %idxprom36
  %7 = load i8** %arrayidx37, align 8, !tbaa !0
  %call38 = call i64 @strlen(i8* %7) #7
  %cmp39 = icmp ugt i64 %call38, 4
  %call38.op = sub i64 18, %call38
  %sub = select i1 %cmp39, i64 %call38.op, i64 14
  %cmp46 = icmp ugt i64 %call32, %sub
  br i1 %cmp46, label %if.then47, label %if.else63

if.then47:                                        ; preds = %if.end30
  %call49 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([6 x i8]* @.str29, i64 0, i64 0), i8* %arraydecay) #8
  %8 = load i32* %type, align 4, !tbaa !3
  %idxprom54 = sext i32 %8 to i64
  %arrayidx55 = getelementptr inbounds [7 x i8*]* @argtp, i64 0, i64 %idxprom54
  %9 = load i8** %arrayidx55, align 8, !tbaa !0
  %call58 = call i8* @pa_val(%struct.t_pargs* %arrayidx13) #10
  %desc = getelementptr inbounds %struct.t_pargs* %pa, i64 %indvars.iv, i32 4
  %10 = load i8** %desc, align 8, !tbaa !0
  %call61 = call i8* @check_tty(i8* %10) #8
  %call62 = call i32 (i8*, i8*, ...)* @sprintf(i8* %0, i8* getelementptr inbounds ([18 x i8]* @.str22, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str30, i64 0, i64 0), i8* %9, i8* getelementptr inbounds ([256 x i8]* @pa_val.buf, i64 0, i64 0), i8* %call61) #8
  br label %if.end100

if.else63:                                        ; preds = %if.end30
  %cmp66 = icmp ugt i64 %call32, 12
  %call77 = call i8* @pa_val(%struct.t_pargs* %arrayidx13) #10
  %desc80 = getelementptr inbounds %struct.t_pargs* %pa, i64 %indvars.iv, i32 4
  %11 = load i8** %desc80, align 8, !tbaa !0
  %call81 = call i8* @check_tty(i8* %11) #8
  br i1 %cmp66, label %if.then67, label %if.else83

if.then67:                                        ; preds = %if.else63
  %call82 = call i32 (i8*, i8*, ...)* @sprintf(i8* %0, i8* getelementptr inbounds ([18 x i8]* @.str31, i64 0, i64 0), i8* %arraydecay, i8* %7, i8* getelementptr inbounds ([256 x i8]* @pa_val.buf, i64 0, i64 0), i8* %call81) #8
  br label %if.end100

if.else83:                                        ; preds = %if.else63
  %call98 = call i32 (i8*, i8*, ...)* @sprintf(i8* %0, i8* getelementptr inbounds ([18 x i8]* @.str22, i64 0, i64 0), i8* %arraydecay, i8* %7, i8* getelementptr inbounds ([256 x i8]* @pa_val.buf, i64 0, i64 0), i8* %call81) #8
  br label %if.end100

if.end100:                                        ; preds = %if.then67, %if.else83, %if.then47
  %call102 = call i8* @wrap_lines(i8* %0, i32 80, i32 28) #8
  %call103 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* %call102) #8
  call void @save_free(i8* getelementptr inbounds ([6 x i8]* @.str32, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str3, i64 0, i64 0), i32 294, i8* %call102) #8
  br label %for.inc105

for.inc105:                                       ; preds = %lor.lhs.false, %if.end100
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %npargs
  br i1 %exitcond, label %for.end107, label %for.body10

for.end107:                                       ; preds = %for.inc105
  %fputc = call i32 @fputc(i32 10, %struct._IO_FILE* %fp)
  br label %if.end109

if.end109:                                        ; preds = %entry, %for.end107, %for.end
  call void @llvm.lifetime.end(i64 256, i8* %0) #6
  ret void
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #6

; Function Attrs: optsize
declare i8* @check_tty(i8*) #3

; Function Attrs: optsize
declare i8* @wrap_lines(i8*, i32, i32) #3

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #6

; Function Attrs: nounwind optsize uwtable
define void @pr_enums(%struct._IO_FILE* nocapture %fp, i32 %npargs, %struct.t_pargs* nocapture %pa, i32 %shell) #2 {
entry:
  switch i32 %shell, label %sw.epilog [
    i32 0, label %for.cond.preheader
    i32 1, label %for.cond22.preheader
    i32 2, label %for.cond59.preheader
  ]

for.cond59.preheader:                             ; preds = %entry
  %cmp60153 = icmp sgt i32 %npargs, 0
  br i1 %cmp60153, label %for.body61, label %sw.epilog

for.cond22.preheader:                             ; preds = %entry
  %cmp23147 = icmp sgt i32 %npargs, 0
  br i1 %cmp23147, label %for.body24, label %sw.epilog

for.cond.preheader:                               ; preds = %entry
  %cmp141 = icmp sgt i32 %npargs, 0
  br i1 %cmp141, label %for.body, label %sw.epilog

for.body:                                         ; preds = %for.cond.preheader, %for.inc18
  %indvars.iv155 = phi i64 [ %indvars.iv.next156, %for.inc18 ], [ 0, %for.cond.preheader ]
  %type = getelementptr inbounds %struct.t_pargs* %pa, i64 %indvars.iv155, i32 2
  %0 = load i32* %type, align 4, !tbaa !3
  %cmp1 = icmp eq i32 %0, 6
  br i1 %cmp1, label %if.then, label %for.inc18

if.then:                                          ; preds = %for.body
  %option = getelementptr inbounds %struct.t_pargs* %pa, i64 %indvars.iv155, i32 0
  %1 = load i8** %option, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([9 x i8]* @.str34, i64 0, i64 0), i8* %1) #8
  %u = getelementptr inbounds %struct.t_pargs* %pa, i64 %indvars.iv155, i32 3
  %c = bitcast %union.anon* %u to i8***
  %2 = load i8*** %c, align 8, !tbaa !0
  %arrayidx8138 = getelementptr inbounds i8** %2, i64 1
  %3 = load i8** %arrayidx8138, align 8, !tbaa !0
  %tobool139 = icmp eq i8* %3, null
  br i1 %tobool139, label %for.end, label %for.body9

for.body9:                                        ; preds = %if.then, %for.body9
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body9 ], [ 1, %if.then ]
  %4 = phi i8* [ %6, %for.body9 ], [ %3, %if.then ]
  %call16 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([4 x i8]* @.str35, i64 0, i64 0), i8* %4) #8
  %indvars.iv.next = add i64 %indvars.iv, 1
  %5 = load i8*** %c, align 8, !tbaa !0
  %arrayidx8 = getelementptr inbounds i8** %5, i64 %indvars.iv.next
  %6 = load i8** %arrayidx8, align 8, !tbaa !0
  %tobool = icmp eq i8* %6, null
  br i1 %tobool, label %for.end, label %for.body9

for.end:                                          ; preds = %for.body9, %if.then
  %7 = tail call i64 @fwrite(i8* getelementptr inbounds ([4 x i8]* @.str36, i64 0, i64 0), i64 3, i64 1, %struct._IO_FILE* %fp)
  br label %for.inc18

for.inc18:                                        ; preds = %for.body, %for.end
  %indvars.iv.next156 = add i64 %indvars.iv155, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next156 to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %npargs
  br i1 %exitcond, label %sw.epilog, label %for.body

for.body24:                                       ; preds = %for.cond22.preheader, %for.inc55
  %indvars.iv159 = phi i64 [ %indvars.iv.next160, %for.inc55 ], [ 0, %for.cond22.preheader ]
  %type27 = getelementptr inbounds %struct.t_pargs* %pa, i64 %indvars.iv159, i32 2
  %8 = load i32* %type27, align 4, !tbaa !3
  %cmp28 = icmp eq i32 %8, 6
  br i1 %cmp28, label %if.then29, label %for.inc55

if.then29:                                        ; preds = %for.body24
  %option32 = getelementptr inbounds %struct.t_pargs* %pa, i64 %indvars.iv159, i32 0
  %9 = load i8** %option32, align 8, !tbaa !0
  %call33 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([31 x i8]* @.str37, i64 0, i64 0), i8* %9) #8
  %u38 = getelementptr inbounds %struct.t_pargs* %pa, i64 %indvars.iv159, i32 3
  %c39 = bitcast %union.anon* %u38 to i8***
  %10 = load i8*** %c39, align 8, !tbaa !0
  %arrayidx40143 = getelementptr inbounds i8** %10, i64 1
  %11 = load i8** %arrayidx40143, align 8, !tbaa !0
  %tobool41144 = icmp eq i8* %11, null
  br i1 %tobool41144, label %for.end52, label %for.body42

for.body42:                                       ; preds = %if.then29, %for.body42
  %indvars.iv157 = phi i64 [ %indvars.iv.next158, %for.body42 ], [ 1, %if.then29 ]
  %12 = phi i8* [ %14, %for.body42 ], [ %11, %if.then29 ]
  %call49 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([4 x i8]* @.str35, i64 0, i64 0), i8* %12) #8
  %indvars.iv.next158 = add i64 %indvars.iv157, 1
  %13 = load i8*** %c39, align 8, !tbaa !0
  %arrayidx40 = getelementptr inbounds i8** %13, i64 %indvars.iv.next158
  %14 = load i8** %arrayidx40, align 8, !tbaa !0
  %tobool41 = icmp eq i8* %14, null
  br i1 %tobool41, label %for.end52, label %for.body42

for.end52:                                        ; preds = %for.body42, %if.then29
  %15 = tail call i64 @fwrite(i8* getelementptr inbounds ([15 x i8]* @.str38, i64 0, i64 0), i64 14, i64 1, %struct._IO_FILE* %fp)
  br label %for.inc55

for.inc55:                                        ; preds = %for.body24, %for.end52
  %indvars.iv.next160 = add i64 %indvars.iv159, 1
  %lftr.wideiv161 = trunc i64 %indvars.iv.next160 to i32
  %exitcond162 = icmp eq i32 %lftr.wideiv161, %npargs
  br i1 %exitcond162, label %sw.epilog, label %for.body24

for.body61:                                       ; preds = %for.cond59.preheader, %for.inc92
  %indvars.iv165 = phi i64 [ %indvars.iv.next166, %for.inc92 ], [ 0, %for.cond59.preheader ]
  %type64 = getelementptr inbounds %struct.t_pargs* %pa, i64 %indvars.iv165, i32 2
  %16 = load i32* %type64, align 4, !tbaa !3
  %cmp65 = icmp eq i32 %16, 6
  br i1 %cmp65, label %if.then66, label %for.inc92

if.then66:                                        ; preds = %for.body61
  %option69 = getelementptr inbounds %struct.t_pargs* %pa, i64 %indvars.iv165, i32 0
  %17 = load i8** %option69, align 8, !tbaa !0
  %call70 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([18 x i8]* @.str39, i64 0, i64 0), i8* %17) #8
  %u75 = getelementptr inbounds %struct.t_pargs* %pa, i64 %indvars.iv165, i32 3
  %c76 = bitcast %union.anon* %u75 to i8***
  %18 = load i8*** %c76, align 8, !tbaa !0
  %arrayidx77149 = getelementptr inbounds i8** %18, i64 1
  %19 = load i8** %arrayidx77149, align 8, !tbaa !0
  %tobool78150 = icmp eq i8* %19, null
  br i1 %tobool78150, label %for.end89, label %for.body79

for.body79:                                       ; preds = %if.then66, %for.body79
  %indvars.iv163 = phi i64 [ %indvars.iv.next164, %for.body79 ], [ 1, %if.then66 ]
  %20 = phi i8* [ %22, %for.body79 ], [ %19, %if.then66 ]
  %call86 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([4 x i8]* @.str35, i64 0, i64 0), i8* %20) #8
  %indvars.iv.next164 = add i64 %indvars.iv163, 1
  %21 = load i8*** %c76, align 8, !tbaa !0
  %arrayidx77 = getelementptr inbounds i8** %21, i64 %indvars.iv.next164
  %22 = load i8** %arrayidx77, align 8, !tbaa !0
  %tobool78 = icmp eq i8* %22, null
  br i1 %tobool78, label %for.end89, label %for.body79

for.end89:                                        ; preds = %for.body79, %if.then66
  %23 = tail call i64 @fwrite(i8* getelementptr inbounds ([3 x i8]* @.str40, i64 0, i64 0), i64 2, i64 1, %struct._IO_FILE* %fp)
  br label %for.inc92

for.inc92:                                        ; preds = %for.body61, %for.end89
  %indvars.iv.next166 = add i64 %indvars.iv165, 1
  %lftr.wideiv167 = trunc i64 %indvars.iv.next166 to i32
  %exitcond168 = icmp eq i32 %lftr.wideiv167, %npargs
  br i1 %exitcond168, label %sw.epilog, label %for.body61

sw.epilog:                                        ; preds = %for.cond59.preheader, %for.inc92, %for.cond22.preheader, %for.inc55, %for.cond.preheader, %for.inc18, %entry
  ret void
}

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #6

; Function Attrs: nounwind
declare i32 @fputc(i32, %struct._IO_FILE* nocapture) #6

attributes #0 = { nounwind optsize readonly uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind optsize readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }
attributes #7 = { nounwind optsize readonly }
attributes #8 = { nounwind optsize }
attributes #9 = { nounwind optsize readnone }
attributes #10 = { optsize }

!0 = metadata !{metadata !"any pointer", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"int", metadata !1}
!4 = metadata !{metadata !"float", metadata !1}
!5 = metadata !{metadata !"short", metadata !1}
