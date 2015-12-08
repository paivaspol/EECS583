; ModuleID = '../../SPEC/benchspec/CPU2006/456.hmmer/src/getopt.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.opt_s = type { i8*, i32, i32 }

@Getopt.optind = internal unnamed_addr global i32 1, align 4
@Getopt.optptr = internal unnamed_addr global i8* null, align 8
@.str = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str1 = private unnamed_addr constant [3 x i8] c"--\00", align 1
@.str2 = private unnamed_addr constant [54 x i8] c"Option \22%s\22 is ambiguous; please be more specific.\0A%s\00", align 1
@.str3 = private unnamed_addr constant [24 x i8] c"No such option \22%s\22.\0A%s\00", align 1
@.str4 = private unnamed_addr constant [34 x i8] c"Option %s requires an argument\0A%s\00", align 1
@.str5 = private unnamed_addr constant [39 x i8] c"Option %s does not take an argument\0A%s\00", align 1
@.str6 = private unnamed_addr constant [24 x i8] c"No such option \22%c\22.\0A%s\00", align 1
@.str7 = private unnamed_addr constant [42 x i8] c"Option %s requires an integer argument\0A%s\00", align 1
@.str8 = private unnamed_addr constant [43 x i8] c"Option %s requires a numerical argument\0A%s\00", align 1
@.str9 = private unnamed_addr constant [50 x i8] c"Option %s requires a single-character argument\0A%s\00", align 1

; Function Attrs: nounwind optsize uwtable
define i32 @Getopt(i32 %argc, i8** nocapture %argv, %struct.opt_s* nocapture %opt, i32 %nopts, i8* %usage, i32* nocapture %ret_optind, i8** nocapture %ret_optname, i8** nocapture %ret_optarg) #0 {
entry:
  %0 = load i32* @Getopt.optind, align 4, !tbaa !0
  %cmp = icmp slt i32 %0, %argc
  br i1 %cmp, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds i8** %argv, i64 %idxprom
  %1 = load i8** %arrayidx, align 8, !tbaa !3
  %2 = load i8* %1, align 1, !tbaa !1
  %cmp2 = icmp eq i8 %2, 45
  br i1 %cmp2, label %lor.lhs.false4, label %if.then

lor.lhs.false4:                                   ; preds = %lor.lhs.false
  %call = tail call i32 @strcmp(i8* %1, i8* getelementptr inbounds ([2 x i8]* @.str, i64 0, i64 0)) #3
  %cmp7 = icmp eq i32 %call, 0
  br i1 %cmp7, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry, %lor.lhs.false4
  store i32 %0, i32* %ret_optind, align 4, !tbaa !0
  store i8* null, i8** %ret_optarg, align 8, !tbaa !3
  store i8* null, i8** %ret_optname, align 8, !tbaa !3
  br label %return

if.end:                                           ; preds = %lor.lhs.false4
  %call11 = tail call i32 @strcmp(i8* %1, i8* getelementptr inbounds ([3 x i8]* @.str1, i64 0, i64 0)) #3
  %cmp12 = icmp eq i32 %call11, 0
  br i1 %cmp12, label %if.then14, label %if.end15

if.then14:                                        ; preds = %if.end
  %inc = add nsw i32 %0, 1
  store i32 %inc, i32* @Getopt.optind, align 4, !tbaa !0
  store i32 %inc, i32* %ret_optind, align 4, !tbaa !0
  store i8* null, i8** %ret_optname, align 8, !tbaa !3
  store i8* null, i8** %ret_optarg, align 8, !tbaa !3
  br label %return

if.end15:                                         ; preds = %if.end
  %3 = load i8** @Getopt.optptr, align 8, !tbaa !3
  %cmp16 = icmp eq i8* %3, null
  br i1 %cmp16, label %land.lhs.true, label %for.cond125.preheader

land.lhs.true:                                    ; preds = %if.end15
  %call20 = tail call i32 @strncmp(i8* %1, i8* getelementptr inbounds ([3 x i8]* @.str1, i64 0, i64 0), i64 2) #3
  %cmp21 = icmp eq i32 %call20, 0
  br i1 %cmp21, label %if.then23, label %if.then121

if.then23:                                        ; preds = %land.lhs.true
  %call26 = tail call i8* @strchr(i8* %1, i32 61) #3
  store i8* %call26, i8** @Getopt.optptr, align 8, !tbaa !3
  %cmp27 = icmp eq i8* %call26, null
  br i1 %cmp27, label %if.end30, label %if.then29

if.then29:                                        ; preds = %if.then23
  store i8 0, i8* %call26, align 1, !tbaa !1
  %4 = load i8** @Getopt.optptr, align 8, !tbaa !3
  %incdec.ptr = getelementptr inbounds i8* %4, i64 1
  store i8* %incdec.ptr, i8** @Getopt.optptr, align 8, !tbaa !3
  %.pre = load i32* @Getopt.optind, align 4, !tbaa !0
  br label %if.end30

if.end30:                                         ; preds = %if.then23, %if.then29
  %5 = phi i32 [ %0, %if.then23 ], [ %.pre, %if.then29 ]
  %idxprom31 = sext i32 %5 to i64
  %arrayidx32 = getelementptr inbounds i8** %argv, i64 %idxprom31
  %6 = load i8** %arrayidx32, align 8, !tbaa !3
  %call33 = tail call i64 @strlen(i8* %6) #3
  %cmp35335 = icmp sgt i32 %nopts, 0
  br i1 %cmp35335, label %for.body.lr.ph, label %if.then79

for.body.lr.ph:                                   ; preds = %if.end30
  %sext329 = shl i64 %call33, 32
  %conv46 = ashr exact i64 %sext329, 32
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.inc ]
  %opti.0338 = phi i32 [ 0, %for.body.lr.ph ], [ %opti.1, %for.inc ]
  %nmatch.0337 = phi i32 [ 0, %for.body.lr.ph ], [ %nmatch.1, %for.inc ]
  %i.0336 = phi i32 [ 0, %for.body.lr.ph ], [ %inc62, %for.inc ]
  %single = getelementptr inbounds %struct.opt_s* %opt, i64 %indvars.iv, i32 1
  %7 = load i32* %single, align 4, !tbaa !0
  %cmp39 = icmp eq i32 %7, 0
  br i1 %cmp39, label %land.lhs.true41, label %for.inc

land.lhs.true41:                                  ; preds = %for.body
  %name = getelementptr inbounds %struct.opt_s* %opt, i64 %indvars.iv, i32 0
  %8 = load i8** %name, align 8, !tbaa !3
  %call47 = tail call i32 @strncmp(i8* %8, i8* %6, i64 %conv46) #3
  %cmp48 = icmp eq i32 %call47, 0
  br i1 %cmp48, label %if.then50, label %for.inc

if.then50:                                        ; preds = %land.lhs.true41
  %inc51 = add nsw i32 %nmatch.0337, 1
  %call56 = tail call i64 @strlen(i8* %8) #3
  %cmp57 = icmp eq i64 %conv46, %call56
  %9 = trunc i64 %indvars.iv to i32
  br i1 %cmp57, label %for.end, label %for.inc

for.inc:                                          ; preds = %for.body, %land.lhs.true41, %if.then50
  %nmatch.1 = phi i32 [ %inc51, %if.then50 ], [ %nmatch.0337, %land.lhs.true41 ], [ %nmatch.0337, %for.body ]
  %opti.1 = phi i32 [ %9, %if.then50 ], [ %opti.0338, %land.lhs.true41 ], [ %opti.0338, %for.body ]
  %indvars.iv.next = add i64 %indvars.iv, 1
  %inc62 = add nsw i32 %i.0336, 1
  %10 = trunc i64 %indvars.iv.next to i32
  %cmp35 = icmp slt i32 %10, %nopts
  br i1 %cmp35, label %for.body, label %for.end

for.end:                                          ; preds = %for.inc, %if.then50
  %i.0.lcssa = phi i32 [ %i.0336, %if.then50 ], [ %inc62, %for.inc ]
  %nmatch.2 = phi i32 [ %inc51, %if.then50 ], [ %nmatch.1, %for.inc ]
  %opti.2 = phi i32 [ %i.0336, %if.then50 ], [ %opti.1, %for.inc ]
  %cmp63 = icmp sgt i32 %nmatch.2, 1
  br i1 %cmp63, label %land.lhs.true65, label %if.end76

land.lhs.true65:                                  ; preds = %for.end
  %sext = shl i64 %call33, 32
  %conv66 = ashr exact i64 %sext, 32
  %idxprom67 = sext i32 %i.0.lcssa to i64
  %name69 = getelementptr inbounds %struct.opt_s* %opt, i64 %idxprom67, i32 0
  %11 = load i8** %name69, align 8, !tbaa !3
  %call70 = tail call i64 @strlen(i8* %11) #3
  %cmp71 = icmp eq i64 %conv66, %call70
  br i1 %cmp71, label %if.end76, label %if.then73

if.then73:                                        ; preds = %land.lhs.true65
  tail call void (i8*, ...)* @Die(i8* getelementptr inbounds ([54 x i8]* @.str2, i64 0, i64 0), i8* %6, i8* %usage) #4
  br label %if.end76

if.end76:                                         ; preds = %land.lhs.true65, %if.then73, %for.end
  %cmp77 = icmp eq i32 %nmatch.2, 0
  br i1 %cmp77, label %if.then79, label %if.end82

if.then79:                                        ; preds = %if.end30, %if.end76
  %opti.2352355 = phi i32 [ %opti.2, %if.end76 ], [ 0, %if.end30 ]
  %12 = load i32* @Getopt.optind, align 4, !tbaa !0
  %idxprom80 = sext i32 %12 to i64
  %arrayidx81 = getelementptr inbounds i8** %argv, i64 %idxprom80
  %13 = load i8** %arrayidx81, align 8, !tbaa !3
  tail call void (i8*, ...)* @Die(i8* getelementptr inbounds ([24 x i8]* @.str3, i64 0, i64 0), i8* %13, i8* %usage) #4
  br label %if.end82

if.end82:                                         ; preds = %if.then79, %if.end76
  %opti.2352354 = phi i32 [ %opti.2352355, %if.then79 ], [ %opti.2, %if.end76 ]
  %idxprom83 = sext i32 %opti.2352354 to i64
  %name85 = getelementptr inbounds %struct.opt_s* %opt, i64 %idxprom83, i32 0
  %14 = load i8** %name85, align 8, !tbaa !3
  store i8* %14, i8** %ret_optname, align 8, !tbaa !3
  %argtype = getelementptr inbounds %struct.opt_s* %opt, i64 %idxprom83, i32 2
  %15 = load i32* %argtype, align 4, !tbaa !0
  %cmp88 = icmp eq i32 %15, 0
  %16 = load i8** @Getopt.optptr, align 8, !tbaa !3
  %cmp91 = icmp ne i8* %16, null
  br i1 %cmp88, label %if.else108, label %if.then90

if.then90:                                        ; preds = %if.end82
  br i1 %cmp91, label %if.then93, label %if.else

if.then93:                                        ; preds = %if.then90
  store i8* %16, i8** %ret_optarg, align 8, !tbaa !3
  store i8* null, i8** @Getopt.optptr, align 8, !tbaa !3
  %17 = load i32* @Getopt.optind, align 4, !tbaa !0
  %inc94 = add nsw i32 %17, 1
  store i32 %inc94, i32* @Getopt.optind, align 4, !tbaa !0
  br label %if.end195

if.else:                                          ; preds = %if.then90
  %18 = load i32* @Getopt.optind, align 4, !tbaa !0
  %add = add nsw i32 %18, 1
  %cmp95 = icmp slt i32 %add, %argc
  br i1 %cmp95, label %if.else101, label %if.then97

if.then97:                                        ; preds = %if.else
  %19 = load i8** %name85, align 8, !tbaa !3
  tail call void (i8*, ...)* @Die(i8* getelementptr inbounds ([34 x i8]* @.str4, i64 0, i64 0), i8* %19, i8* %usage) #4
  br label %if.end195

if.else101:                                       ; preds = %if.else
  %idxprom103 = sext i32 %add to i64
  %arrayidx104 = getelementptr inbounds i8** %argv, i64 %idxprom103
  %20 = load i8** %arrayidx104, align 8, !tbaa !3
  store i8* %20, i8** %ret_optarg, align 8, !tbaa !3
  %add105 = add nsw i32 %18, 2
  store i32 %add105, i32* @Getopt.optind, align 4, !tbaa !0
  br label %if.end195

if.else108:                                       ; preds = %if.end82
  br i1 %cmp91, label %if.then111, label %if.end115

if.then111:                                       ; preds = %if.else108
  %21 = load i8** %name85, align 8, !tbaa !3
  tail call void (i8*, ...)* @Die(i8* getelementptr inbounds ([39 x i8]* @.str5, i64 0, i64 0), i8* %21, i8* %usage) #4
  br label %if.end115

if.end115:                                        ; preds = %if.else108, %if.then111
  store i8* null, i8** %ret_optarg, align 8, !tbaa !3
  %22 = load i32* @Getopt.optind, align 4, !tbaa !0
  %inc116 = add nsw i32 %22, 1
  store i32 %inc116, i32* @Getopt.optind, align 4, !tbaa !0
  br label %if.end195

if.then121:                                       ; preds = %land.lhs.true
  %add.ptr = getelementptr inbounds i8* %1, i64 1
  store i8* %add.ptr, i8** @Getopt.optptr, align 8, !tbaa !3
  br label %for.cond125.preheader

for.cond125.preheader:                            ; preds = %if.then121, %if.end15
  %23 = phi i8* [ %add.ptr, %if.then121 ], [ %3, %if.end15 ]
  %cmp126342 = icmp sgt i32 %nopts, 0
  br i1 %cmp126342, label %for.body128, label %if.then150.loopexit

for.body128:                                      ; preds = %for.cond125.preheader, %for.inc145
  %indvars.iv346 = phi i64 [ %indvars.iv.next347, %for.inc145 ], [ 0, %for.cond125.preheader ]
  %i.1343 = phi i32 [ %inc146, %for.inc145 ], [ 0, %for.cond125.preheader ]
  %single131 = getelementptr inbounds %struct.opt_s* %opt, i64 %indvars.iv346, i32 1
  %24 = load i32* %single131, align 4, !tbaa !0
  %cmp132 = icmp eq i32 %24, 1
  br i1 %cmp132, label %land.lhs.true134, label %for.inc145

land.lhs.true134:                                 ; preds = %for.body128
  %25 = load i8* %23, align 1, !tbaa !1
  %name138 = getelementptr inbounds %struct.opt_s* %opt, i64 %indvars.iv346, i32 0
  %26 = load i8** %name138, align 8, !tbaa !3
  %arrayidx139 = getelementptr inbounds i8* %26, i64 1
  %27 = load i8* %arrayidx139, align 1, !tbaa !1
  %cmp141 = icmp eq i8 %25, %27
  br i1 %cmp141, label %for.end147, label %for.inc145

for.inc145:                                       ; preds = %for.body128, %land.lhs.true134
  %indvars.iv.next347 = add i64 %indvars.iv346, 1
  %inc146 = add nsw i32 %i.1343, 1
  %28 = trunc i64 %indvars.iv.next347 to i32
  %cmp126 = icmp slt i32 %28, %nopts
  br i1 %cmp126, label %for.body128, label %if.then150.loopexit

for.end147:                                       ; preds = %land.lhs.true134
  %cmp148 = icmp eq i32 %i.1343, -1
  br i1 %cmp148, label %if.then150, label %if.end152

if.then150.loopexit:                              ; preds = %for.inc145, %for.cond125.preheader
  %.pre348 = load i8* %23, align 1, !tbaa !1
  br label %if.then150

if.then150:                                       ; preds = %if.then150.loopexit, %for.end147
  %29 = phi i8 [ %.pre348, %if.then150.loopexit ], [ %25, %for.end147 ]
  %conv151 = sext i8 %29 to i32
  tail call void (i8*, ...)* @Die(i8* getelementptr inbounds ([24 x i8]* @.str6, i64 0, i64 0), i32 %conv151, i8* %usage) #4
  br label %if.end152

if.end152:                                        ; preds = %if.then150, %for.end147
  %opti.3332 = phi i32 [ -1, %if.then150 ], [ %i.1343, %for.end147 ]
  %idxprom153 = sext i32 %opti.3332 to i64
  %name155 = getelementptr inbounds %struct.opt_s* %opt, i64 %idxprom153, i32 0
  %30 = load i8** %name155, align 8, !tbaa !3
  store i8* %30, i8** %ret_optname, align 8, !tbaa !3
  %argtype158 = getelementptr inbounds %struct.opt_s* %opt, i64 %idxprom153, i32 2
  %31 = load i32* %argtype158, align 4, !tbaa !0
  %cmp159 = icmp eq i32 %31, 0
  br i1 %cmp159, label %if.else184, label %if.then161

if.then161:                                       ; preds = %if.end152
  %32 = load i8** @Getopt.optptr, align 8, !tbaa !3
  %add.ptr162 = getelementptr inbounds i8* %32, i64 1
  %33 = load i8* %add.ptr162, align 1, !tbaa !1
  %cmp164 = icmp eq i8 %33, 0
  br i1 %cmp164, label %if.else169, label %if.then166

if.then166:                                       ; preds = %if.then161
  store i8* %add.ptr162, i8** %ret_optarg, align 8, !tbaa !3
  %34 = load i32* @Getopt.optind, align 4, !tbaa !0
  %inc168 = add nsw i32 %34, 1
  store i32 %inc168, i32* @Getopt.optind, align 4, !tbaa !0
  br label %if.end183

if.else169:                                       ; preds = %if.then161
  %35 = load i32* @Getopt.optind, align 4, !tbaa !0
  %add170 = add nsw i32 %35, 1
  %cmp171 = icmp slt i32 %add170, %argc
  br i1 %cmp171, label %if.then173, label %if.else178

if.then173:                                       ; preds = %if.else169
  %idxprom175 = sext i32 %add170 to i64
  %arrayidx176 = getelementptr inbounds i8** %argv, i64 %idxprom175
  %36 = load i8** %arrayidx176, align 8, !tbaa !3
  store i8* %36, i8** %ret_optarg, align 8, !tbaa !3
  %add177 = add nsw i32 %35, 2
  store i32 %add177, i32* @Getopt.optind, align 4, !tbaa !0
  br label %if.end183

if.else178:                                       ; preds = %if.else169
  %37 = load i8** %name155, align 8, !tbaa !3
  tail call void (i8*, ...)* @Die(i8* getelementptr inbounds ([34 x i8]* @.str4, i64 0, i64 0), i8* %37, i8* %usage) #4
  br label %if.end183

if.end183:                                        ; preds = %if.then173, %if.else178, %if.then166
  store i8* null, i8** @Getopt.optptr, align 8, !tbaa !3
  br label %if.end195

if.else184:                                       ; preds = %if.end152
  store i8* null, i8** %ret_optarg, align 8, !tbaa !3
  %38 = load i8** @Getopt.optptr, align 8, !tbaa !3
  %add.ptr185 = getelementptr inbounds i8* %38, i64 1
  %39 = load i8* %add.ptr185, align 1, !tbaa !1
  %cmp187 = icmp eq i8 %39, 0
  br i1 %cmp187, label %if.else191, label %if.then189

if.then189:                                       ; preds = %if.else184
  store i8* %add.ptr185, i8** @Getopt.optptr, align 8, !tbaa !3
  br label %if.end195

if.else191:                                       ; preds = %if.else184
  %40 = load i32* @Getopt.optind, align 4, !tbaa !0
  %inc192 = add nsw i32 %40, 1
  store i32 %inc192, i32* @Getopt.optind, align 4, !tbaa !0
  store i8* null, i8** @Getopt.optptr, align 8, !tbaa !3
  br label %if.end195

if.end195:                                        ; preds = %if.end183, %if.else191, %if.then189, %if.end115, %if.then97, %if.else101, %if.then93
  %opti.4 = phi i32 [ %opti.2352354, %if.then93 ], [ %opti.2352354, %if.then97 ], [ %opti.2352354, %if.else101 ], [ %opti.2352354, %if.end115 ], [ %opti.3332, %if.end183 ], [ %opti.3332, %if.then189 ], [ %opti.3332, %if.else191 ]
  %idxprom196 = sext i32 %opti.4 to i64
  %arrayidx197 = getelementptr inbounds %struct.opt_s* %opt, i64 %idxprom196
  %argtype198 = getelementptr inbounds %struct.opt_s* %opt, i64 %idxprom196, i32 2
  %41 = load i32* %argtype198, align 4, !tbaa !0
  switch i32 %41, label %if.else213 [
    i32 0, label %if.end243
    i32 1, label %land.lhs.true207
  ]

land.lhs.true207:                                 ; preds = %if.end195
  %42 = load i8** %ret_optarg, align 8, !tbaa !3
  %call208 = tail call i32 @IsInt(i8* %42) #4
  %tobool = icmp eq i32 %call208, 0
  br i1 %tobool, label %if.then209, label %if.else213thread-pre-split

if.then209:                                       ; preds = %land.lhs.true207
  %name212 = getelementptr inbounds %struct.opt_s* %arrayidx197, i64 0, i32 0
  %43 = load i8** %name212, align 8, !tbaa !3
  tail call void (i8*, ...)* @Die(i8* getelementptr inbounds ([42 x i8]* @.str7, i64 0, i64 0), i8* %43, i8* %usage) #4
  br label %if.end243

if.else213thread-pre-split:                       ; preds = %land.lhs.true207
  %.pr334 = load i32* %argtype198, align 4, !tbaa !0
  br label %if.else213

if.else213:                                       ; preds = %if.else213thread-pre-split, %if.end195
  %44 = phi i32 [ %.pr334, %if.else213thread-pre-split ], [ %41, %if.end195 ]
  %cmp217 = icmp eq i32 %44, 2
  br i1 %cmp217, label %land.lhs.true219, label %if.else226

land.lhs.true219:                                 ; preds = %if.else213
  %45 = load i8** %ret_optarg, align 8, !tbaa !3
  %call220 = tail call i32 @IsReal(i8* %45) #4
  %tobool221 = icmp eq i32 %call220, 0
  br i1 %tobool221, label %if.then222, label %land.lhs.true219.if.else226_crit_edge

land.lhs.true219.if.else226_crit_edge:            ; preds = %land.lhs.true219
  %.pre349 = load i32* %argtype198, align 4, !tbaa !0
  br label %if.else226

if.then222:                                       ; preds = %land.lhs.true219
  %name225 = getelementptr inbounds %struct.opt_s* %arrayidx197, i64 0, i32 0
  %46 = load i8** %name225, align 8, !tbaa !3
  tail call void (i8*, ...)* @Die(i8* getelementptr inbounds ([43 x i8]* @.str8, i64 0, i64 0), i8* %46, i8* %usage) #4
  br label %if.end243

if.else226:                                       ; preds = %land.lhs.true219.if.else226_crit_edge, %if.else213
  %47 = phi i32 [ %.pre349, %land.lhs.true219.if.else226_crit_edge ], [ %44, %if.else213 ]
  %cmp230 = icmp eq i32 %47, 3
  br i1 %cmp230, label %land.lhs.true232, label %if.end243

land.lhs.true232:                                 ; preds = %if.else226
  %48 = load i8** %ret_optarg, align 8, !tbaa !3
  %call233 = tail call i64 @strlen(i8* %48) #3
  %cmp234 = icmp eq i64 %call233, 1
  br i1 %cmp234, label %if.end243, label %if.then236

if.then236:                                       ; preds = %land.lhs.true232
  %name239 = getelementptr inbounds %struct.opt_s* %arrayidx197, i64 0, i32 0
  %49 = load i8** %name239, align 8, !tbaa !3
  tail call void (i8*, ...)* @Die(i8* getelementptr inbounds ([50 x i8]* @.str9, i64 0, i64 0), i8* %49, i8* %usage) #4
  br label %if.end243

if.end243:                                        ; preds = %land.lhs.true232, %if.else226, %if.end195, %if.then209, %if.then236, %if.then222
  %50 = load i32* @Getopt.optind, align 4, !tbaa !0
  store i32 %50, i32* %ret_optind, align 4, !tbaa !0
  br label %return

return:                                           ; preds = %if.end243, %if.then14, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %if.then14 ], [ 1, %if.end243 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind optsize readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) #1

; Function Attrs: nounwind optsize readonly
declare i32 @strncmp(i8* nocapture, i8* nocapture, i64) #1

; Function Attrs: nounwind optsize readonly
declare i8* @strchr(i8*, i32) #1

; Function Attrs: nounwind optsize readonly
declare i64 @strlen(i8* nocapture) #1

; Function Attrs: optsize
declare void @Die(i8*, ...) #2

; Function Attrs: optsize
declare i32 @IsInt(i8*) #2

; Function Attrs: optsize
declare i32 @IsReal(i8*) #2

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize readonly }
attributes #4 = { nounwind optsize }

!0 = metadata !{metadata !"int", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"any pointer", metadata !1}
