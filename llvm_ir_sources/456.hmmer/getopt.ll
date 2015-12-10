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
  tail call void @llvm.dbg.value(metadata !{i32 %argc}, i64 0, metadata !21), !dbg !36
  tail call void @llvm.dbg.value(metadata !{i8** %argv}, i64 0, metadata !22), !dbg !36
  tail call void @llvm.dbg.value(metadata !{%struct.opt_s* %opt}, i64 0, metadata !23), !dbg !36
  tail call void @llvm.dbg.value(metadata !{i32 %nopts}, i64 0, metadata !24), !dbg !36
  tail call void @llvm.dbg.value(metadata !{i8* %usage}, i64 0, metadata !25), !dbg !36
  tail call void @llvm.dbg.value(metadata !{i32* %ret_optind}, i64 0, metadata !26), !dbg !37
  tail call void @llvm.dbg.value(metadata !{i8** %ret_optname}, i64 0, metadata !27), !dbg !37
  tail call void @llvm.dbg.value(metadata !{i8** %ret_optarg}, i64 0, metadata !28), !dbg !37
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !32), !dbg !38
  %0 = load i32* @Getopt.optind, align 4, !dbg !39, !tbaa !40
  %cmp = icmp slt i32 %0, %argc, !dbg !39
  br i1 %cmp, label %lor.lhs.false, label %if.then, !dbg !39

lor.lhs.false:                                    ; preds = %entry
  %idxprom = sext i32 %0 to i64, !dbg !39
  %arrayidx = getelementptr inbounds i8** %argv, i64 %idxprom, !dbg !39
  %1 = load i8** %arrayidx, align 8, !dbg !39, !tbaa !43
  %2 = load i8* %1, align 1, !dbg !39, !tbaa !41
  %cmp2 = icmp eq i8 %2, 45, !dbg !39
  br i1 %cmp2, label %lor.lhs.false4, label %if.then, !dbg !39

lor.lhs.false4:                                   ; preds = %lor.lhs.false
  %call = tail call i32 @strcmp(i8* %1, i8* getelementptr inbounds ([2 x i8]* @.str, i64 0, i64 0)) #4, !dbg !39
  %cmp7 = icmp eq i32 %call, 0, !dbg !39
  br i1 %cmp7, label %if.then, label %if.end, !dbg !39

if.then:                                          ; preds = %lor.lhs.false, %entry, %lor.lhs.false4
  store i32 %0, i32* %ret_optind, align 4, !dbg !44, !tbaa !40
  store i8* null, i8** %ret_optarg, align 8, !dbg !46, !tbaa !43
  store i8* null, i8** %ret_optname, align 8, !dbg !47, !tbaa !43
  br label %return, !dbg !48

if.end:                                           ; preds = %lor.lhs.false4
  %call11 = tail call i32 @strcmp(i8* %1, i8* getelementptr inbounds ([3 x i8]* @.str1, i64 0, i64 0)) #4, !dbg !49
  %cmp12 = icmp eq i32 %call11, 0, !dbg !49
  br i1 %cmp12, label %if.then14, label %if.end15, !dbg !49

if.then14:                                        ; preds = %if.end
  %inc = add nsw i32 %0, 1, !dbg !50
  store i32 %inc, i32* @Getopt.optind, align 4, !dbg !50, !tbaa !40
  store i32 %inc, i32* %ret_optind, align 4, !dbg !52, !tbaa !40
  store i8* null, i8** %ret_optname, align 8, !dbg !53, !tbaa !43
  store i8* null, i8** %ret_optarg, align 8, !dbg !54, !tbaa !43
  br label %return, !dbg !55

if.end15:                                         ; preds = %if.end
  %3 = load i8** @Getopt.optptr, align 8, !dbg !56, !tbaa !43
  %cmp16 = icmp eq i8* %3, null, !dbg !56
  br i1 %cmp16, label %land.lhs.true, label %for.cond125.preheader, !dbg !56

land.lhs.true:                                    ; preds = %if.end15
  %call20 = tail call i32 @strncmp(i8* %1, i8* getelementptr inbounds ([3 x i8]* @.str1, i64 0, i64 0), i64 2) #4, !dbg !56
  %cmp21 = icmp eq i32 %call20, 0, !dbg !56
  br i1 %cmp21, label %if.then23, label %if.then121, !dbg !56

if.then23:                                        ; preds = %land.lhs.true
  %call26 = tail call i8* @strchr(i8* %1, i32 61) #4, !dbg !57
  store i8* %call26, i8** @Getopt.optptr, align 8, !dbg !57, !tbaa !43
  %cmp27 = icmp eq i8* %call26, null, !dbg !57
  br i1 %cmp27, label %if.end30, label %if.then29, !dbg !57

if.then29:                                        ; preds = %if.then23
  store i8 0, i8* %call26, align 1, !dbg !59, !tbaa !41
  %4 = load i8** @Getopt.optptr, align 8, !dbg !59, !tbaa !43
  %incdec.ptr = getelementptr inbounds i8* %4, i64 1, !dbg !59
  store i8* %incdec.ptr, i8** @Getopt.optptr, align 8, !dbg !59, !tbaa !43
  %.pre = load i32* @Getopt.optind, align 4, !dbg !61, !tbaa !40
  br label %if.end30, !dbg !59

if.end30:                                         ; preds = %if.then23, %if.then29
  %5 = phi i32 [ %0, %if.then23 ], [ %.pre, %if.then29 ]
  %idxprom31 = sext i32 %5 to i64, !dbg !61
  %arrayidx32 = getelementptr inbounds i8** %argv, i64 %idxprom31, !dbg !61
  %6 = load i8** %arrayidx32, align 8, !dbg !61, !tbaa !43
  %call33 = tail call i64 @strlen(i8* %6) #4, !dbg !61
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !31), !dbg !62
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !29), !dbg !63
  %cmp35335 = icmp sgt i32 %nopts, 0, !dbg !63
  br i1 %cmp35335, label %for.body.lr.ph, label %if.then79, !dbg !63

for.body.lr.ph:                                   ; preds = %if.end30
  %sext329 = shl i64 %call33, 32, !dbg !65
  %conv46 = ashr exact i64 %sext329, 32, !dbg !65
  br label %for.body, !dbg !63

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.inc ]
  %opti.0338 = phi i32 [ 0, %for.body.lr.ph ], [ %opti.1, %for.inc ]
  %nmatch.0337 = phi i32 [ 0, %for.body.lr.ph ], [ %nmatch.1, %for.inc ]
  %i.0336 = phi i32 [ 0, %for.body.lr.ph ], [ %inc62, %for.inc ]
  %single = getelementptr inbounds %struct.opt_s* %opt, i64 %indvars.iv, i32 1, !dbg !66
  %7 = load i32* %single, align 4, !dbg !66, !tbaa !40
  %cmp39 = icmp eq i32 %7, 0, !dbg !66
  br i1 %cmp39, label %land.lhs.true41, label %for.inc, !dbg !66

land.lhs.true41:                                  ; preds = %for.body
  %name = getelementptr inbounds %struct.opt_s* %opt, i64 %indvars.iv, i32 0, !dbg !65
  %8 = load i8** %name, align 8, !dbg !65, !tbaa !43
  %call47 = tail call i32 @strncmp(i8* %8, i8* %6, i64 %conv46) #4, !dbg !65
  %cmp48 = icmp eq i32 %call47, 0, !dbg !65
  br i1 %cmp48, label %if.then50, label %for.inc, !dbg !65

if.then50:                                        ; preds = %land.lhs.true41
  %inc51 = add nsw i32 %nmatch.0337, 1, !dbg !67
  tail call void @llvm.dbg.value(metadata !{i32 %inc51}, i64 0, metadata !31), !dbg !67
  tail call void @llvm.dbg.value(metadata !{i32 %i.0.lcssa}, i64 0, metadata !32), !dbg !69
  %call56 = tail call i64 @strlen(i8* %8) #4, !dbg !70
  %cmp57 = icmp eq i64 %conv46, %call56, !dbg !70
  %9 = trunc i64 %indvars.iv to i32, !dbg !70
  br i1 %cmp57, label %for.end, label %for.inc, !dbg !70

for.inc:                                          ; preds = %for.body, %land.lhs.true41, %if.then50
  %nmatch.1 = phi i32 [ %inc51, %if.then50 ], [ %nmatch.0337, %land.lhs.true41 ], [ %nmatch.0337, %for.body ]
  %opti.1 = phi i32 [ %9, %if.then50 ], [ %opti.0338, %land.lhs.true41 ], [ %opti.0338, %for.body ]
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !63
  %inc62 = add nsw i32 %i.0336, 1, !dbg !63
  tail call void @llvm.dbg.value(metadata !{i32 %inc62}, i64 0, metadata !29), !dbg !63
  %10 = trunc i64 %indvars.iv.next to i32, !dbg !63
  %cmp35 = icmp slt i32 %10, %nopts, !dbg !63
  br i1 %cmp35, label %for.body, label %for.end, !dbg !63

for.end:                                          ; preds = %for.inc, %if.then50
  %i.0.lcssa = phi i32 [ %i.0336, %if.then50 ], [ %inc62, %for.inc ]
  %nmatch.2 = phi i32 [ %inc51, %if.then50 ], [ %nmatch.1, %for.inc ]
  %opti.2 = phi i32 [ %i.0336, %if.then50 ], [ %opti.1, %for.inc ]
  %cmp63 = icmp sgt i32 %nmatch.2, 1, !dbg !71
  br i1 %cmp63, label %land.lhs.true65, label %if.end76, !dbg !71

land.lhs.true65:                                  ; preds = %for.end
  %sext = shl i64 %call33, 32, !dbg !71
  %conv66 = ashr exact i64 %sext, 32, !dbg !71
  %idxprom67 = sext i32 %i.0.lcssa to i64, !dbg !71
  %name69 = getelementptr inbounds %struct.opt_s* %opt, i64 %idxprom67, i32 0, !dbg !71
  %11 = load i8** %name69, align 8, !dbg !71, !tbaa !43
  %call70 = tail call i64 @strlen(i8* %11) #4, !dbg !71
  %cmp71 = icmp eq i64 %conv66, %call70, !dbg !71
  br i1 %cmp71, label %if.end76, label %if.then73, !dbg !71

if.then73:                                        ; preds = %land.lhs.true65
  tail call void (i8*, ...)* @Die(i8* getelementptr inbounds ([54 x i8]* @.str2, i64 0, i64 0), i8* %6, i8* %usage) #5, !dbg !72
  br label %if.end76, !dbg !72

if.end76:                                         ; preds = %land.lhs.true65, %if.then73, %for.end
  %cmp77 = icmp eq i32 %nmatch.2, 0, !dbg !73
  br i1 %cmp77, label %if.then79, label %if.end82, !dbg !73

if.then79:                                        ; preds = %if.end30, %if.end76
  %opti.2352355 = phi i32 [ %opti.2, %if.end76 ], [ 0, %if.end30 ]
  %12 = load i32* @Getopt.optind, align 4, !dbg !74, !tbaa !40
  %idxprom80 = sext i32 %12 to i64, !dbg !74
  %arrayidx81 = getelementptr inbounds i8** %argv, i64 %idxprom80, !dbg !74
  %13 = load i8** %arrayidx81, align 8, !dbg !74, !tbaa !43
  tail call void (i8*, ...)* @Die(i8* getelementptr inbounds ([24 x i8]* @.str3, i64 0, i64 0), i8* %13, i8* %usage) #5, !dbg !74
  br label %if.end82, !dbg !74

if.end82:                                         ; preds = %if.then79, %if.end76
  %opti.2352354 = phi i32 [ %opti.2352355, %if.then79 ], [ %opti.2, %if.end76 ]
  %idxprom83 = sext i32 %opti.2352354 to i64, !dbg !75
  %name85 = getelementptr inbounds %struct.opt_s* %opt, i64 %idxprom83, i32 0, !dbg !75
  %14 = load i8** %name85, align 8, !dbg !75, !tbaa !43
  store i8* %14, i8** %ret_optname, align 8, !dbg !75, !tbaa !43
  %argtype = getelementptr inbounds %struct.opt_s* %opt, i64 %idxprom83, i32 2, !dbg !76
  %15 = load i32* %argtype, align 4, !dbg !76, !tbaa !40
  %cmp88 = icmp eq i32 %15, 0, !dbg !76
  %16 = load i8** @Getopt.optptr, align 8, !dbg !77, !tbaa !43
  %cmp91 = icmp ne i8* %16, null, !dbg !77
  br i1 %cmp88, label %if.else108, label %if.then90, !dbg !76

if.then90:                                        ; preds = %if.end82
  br i1 %cmp91, label %if.then93, label %if.else, !dbg !77

if.then93:                                        ; preds = %if.then90
  store i8* %16, i8** %ret_optarg, align 8, !dbg !79, !tbaa !43
  store i8* null, i8** @Getopt.optptr, align 8, !dbg !81, !tbaa !43
  %17 = load i32* @Getopt.optind, align 4, !dbg !82, !tbaa !40
  %inc94 = add nsw i32 %17, 1, !dbg !82
  store i32 %inc94, i32* @Getopt.optind, align 4, !dbg !82, !tbaa !40
  br label %if.end195, !dbg !83

if.else:                                          ; preds = %if.then90
  %18 = load i32* @Getopt.optind, align 4, !dbg !84, !tbaa !40
  %add = add nsw i32 %18, 1, !dbg !84
  %cmp95 = icmp slt i32 %add, %argc, !dbg !84
  br i1 %cmp95, label %if.else101, label %if.then97, !dbg !84

if.then97:                                        ; preds = %if.else
  %19 = load i8** %name85, align 8, !dbg !85, !tbaa !43
  tail call void (i8*, ...)* @Die(i8* getelementptr inbounds ([34 x i8]* @.str4, i64 0, i64 0), i8* %19, i8* %usage) #5, !dbg !85
  br label %if.end195, !dbg !85

if.else101:                                       ; preds = %if.else
  %idxprom103 = sext i32 %add to i64, !dbg !86
  %arrayidx104 = getelementptr inbounds i8** %argv, i64 %idxprom103, !dbg !86
  %20 = load i8** %arrayidx104, align 8, !dbg !86, !tbaa !43
  store i8* %20, i8** %ret_optarg, align 8, !dbg !86, !tbaa !43
  %add105 = add nsw i32 %18, 2, !dbg !88
  store i32 %add105, i32* @Getopt.optind, align 4, !dbg !88, !tbaa !40
  br label %if.end195

if.else108:                                       ; preds = %if.end82
  br i1 %cmp91, label %if.then111, label %if.end115, !dbg !89

if.then111:                                       ; preds = %if.else108
  %21 = load i8** %name85, align 8, !dbg !91, !tbaa !43
  tail call void (i8*, ...)* @Die(i8* getelementptr inbounds ([39 x i8]* @.str5, i64 0, i64 0), i8* %21, i8* %usage) #5, !dbg !91
  br label %if.end115, !dbg !91

if.end115:                                        ; preds = %if.else108, %if.then111
  store i8* null, i8** %ret_optarg, align 8, !dbg !92, !tbaa !43
  %22 = load i32* @Getopt.optind, align 4, !dbg !93, !tbaa !40
  %inc116 = add nsw i32 %22, 1, !dbg !93
  store i32 %inc116, i32* @Getopt.optind, align 4, !dbg !93, !tbaa !40
  br label %if.end195

if.then121:                                       ; preds = %land.lhs.true
  %add.ptr = getelementptr inbounds i8* %1, i64 1, !dbg !94
  store i8* %add.ptr, i8** @Getopt.optptr, align 8, !dbg !94, !tbaa !43
  br label %for.cond125.preheader, !dbg !94

for.cond125.preheader:                            ; preds = %if.then121, %if.end15
  %23 = phi i8* [ %add.ptr, %if.then121 ], [ %3, %if.end15 ]
  %cmp126342 = icmp sgt i32 %nopts, 0, !dbg !96
  br i1 %cmp126342, label %for.body128, label %if.then150.loopexit, !dbg !96

for.body128:                                      ; preds = %for.cond125.preheader, %for.inc145
  %indvars.iv346 = phi i64 [ %indvars.iv.next347, %for.inc145 ], [ 0, %for.cond125.preheader ]
  %i.1343 = phi i32 [ %inc146, %for.inc145 ], [ 0, %for.cond125.preheader ]
  %single131 = getelementptr inbounds %struct.opt_s* %opt, i64 %indvars.iv346, i32 1, !dbg !98
  %24 = load i32* %single131, align 4, !dbg !98, !tbaa !40
  %cmp132 = icmp eq i32 %24, 1, !dbg !98
  br i1 %cmp132, label %land.lhs.true134, label %for.inc145, !dbg !98

land.lhs.true134:                                 ; preds = %for.body128
  %25 = load i8* %23, align 1, !dbg !98, !tbaa !41
  %name138 = getelementptr inbounds %struct.opt_s* %opt, i64 %indvars.iv346, i32 0, !dbg !98
  %26 = load i8** %name138, align 8, !dbg !98, !tbaa !43
  %arrayidx139 = getelementptr inbounds i8* %26, i64 1, !dbg !98
  %27 = load i8* %arrayidx139, align 1, !dbg !98, !tbaa !41
  %cmp141 = icmp eq i8 %25, %27, !dbg !98
  br i1 %cmp141, label %for.end147, label %for.inc145, !dbg !98

for.inc145:                                       ; preds = %for.body128, %land.lhs.true134
  %indvars.iv.next347 = add i64 %indvars.iv346, 1, !dbg !96
  %inc146 = add nsw i32 %i.1343, 1, !dbg !96
  tail call void @llvm.dbg.value(metadata !{i32 %inc146}, i64 0, metadata !29), !dbg !96
  %28 = trunc i64 %indvars.iv.next347 to i32, !dbg !96
  %cmp126 = icmp slt i32 %28, %nopts, !dbg !96
  br i1 %cmp126, label %for.body128, label %if.then150.loopexit, !dbg !96

for.end147:                                       ; preds = %land.lhs.true134
  %cmp148 = icmp eq i32 %i.1343, -1, !dbg !99
  br i1 %cmp148, label %if.then150, label %if.end152, !dbg !99

if.then150.loopexit:                              ; preds = %for.inc145, %for.cond125.preheader
  %.pre348 = load i8* %23, align 1, !dbg !100, !tbaa !41
  br label %if.then150

if.then150:                                       ; preds = %if.then150.loopexit, %for.end147
  %29 = phi i8 [ %.pre348, %if.then150.loopexit ], [ %25, %for.end147 ]
  %conv151 = sext i8 %29 to i32, !dbg !100
  tail call void (i8*, ...)* @Die(i8* getelementptr inbounds ([24 x i8]* @.str6, i64 0, i64 0), i32 %conv151, i8* %usage) #5, !dbg !100
  br label %if.end152, !dbg !100

if.end152:                                        ; preds = %if.then150, %for.end147
  %opti.3332 = phi i32 [ -1, %if.then150 ], [ %i.1343, %for.end147 ]
  %idxprom153 = sext i32 %opti.3332 to i64, !dbg !101
  %name155 = getelementptr inbounds %struct.opt_s* %opt, i64 %idxprom153, i32 0, !dbg !101
  %30 = load i8** %name155, align 8, !dbg !101, !tbaa !43
  store i8* %30, i8** %ret_optname, align 8, !dbg !101, !tbaa !43
  %argtype158 = getelementptr inbounds %struct.opt_s* %opt, i64 %idxprom153, i32 2, !dbg !102
  %31 = load i32* %argtype158, align 4, !dbg !102, !tbaa !40
  %cmp159 = icmp eq i32 %31, 0, !dbg !102
  br i1 %cmp159, label %if.else184, label %if.then161, !dbg !102

if.then161:                                       ; preds = %if.end152
  %32 = load i8** @Getopt.optptr, align 8, !dbg !103, !tbaa !43
  %add.ptr162 = getelementptr inbounds i8* %32, i64 1, !dbg !103
  %33 = load i8* %add.ptr162, align 1, !dbg !103, !tbaa !41
  %cmp164 = icmp eq i8 %33, 0, !dbg !103
  br i1 %cmp164, label %if.else169, label %if.then166, !dbg !103

if.then166:                                       ; preds = %if.then161
  store i8* %add.ptr162, i8** %ret_optarg, align 8, !dbg !105, !tbaa !43
  %34 = load i32* @Getopt.optind, align 4, !dbg !107, !tbaa !40
  %inc168 = add nsw i32 %34, 1, !dbg !107
  store i32 %inc168, i32* @Getopt.optind, align 4, !dbg !107, !tbaa !40
  br label %if.end183, !dbg !108

if.else169:                                       ; preds = %if.then161
  %35 = load i32* @Getopt.optind, align 4, !dbg !109, !tbaa !40
  %add170 = add nsw i32 %35, 1, !dbg !109
  %cmp171 = icmp slt i32 %add170, %argc, !dbg !109
  br i1 %cmp171, label %if.then173, label %if.else178, !dbg !109

if.then173:                                       ; preds = %if.else169
  %idxprom175 = sext i32 %add170 to i64, !dbg !110
  %arrayidx176 = getelementptr inbounds i8** %argv, i64 %idxprom175, !dbg !110
  %36 = load i8** %arrayidx176, align 8, !dbg !110, !tbaa !43
  store i8* %36, i8** %ret_optarg, align 8, !dbg !110, !tbaa !43
  %add177 = add nsw i32 %35, 2, !dbg !112
  store i32 %add177, i32* @Getopt.optind, align 4, !dbg !112, !tbaa !40
  br label %if.end183, !dbg !113

if.else178:                                       ; preds = %if.else169
  %37 = load i8** %name155, align 8, !dbg !114, !tbaa !43
  tail call void (i8*, ...)* @Die(i8* getelementptr inbounds ([34 x i8]* @.str4, i64 0, i64 0), i8* %37, i8* %usage) #5, !dbg !114
  br label %if.end183

if.end183:                                        ; preds = %if.then173, %if.else178, %if.then166
  store i8* null, i8** @Getopt.optptr, align 8, !dbg !115, !tbaa !43
  br label %if.end195, !dbg !116

if.else184:                                       ; preds = %if.end152
  store i8* null, i8** %ret_optarg, align 8, !dbg !117, !tbaa !43
  %38 = load i8** @Getopt.optptr, align 8, !dbg !119, !tbaa !43
  %add.ptr185 = getelementptr inbounds i8* %38, i64 1, !dbg !119
  %39 = load i8* %add.ptr185, align 1, !dbg !119, !tbaa !41
  %cmp187 = icmp eq i8 %39, 0, !dbg !119
  br i1 %cmp187, label %if.else191, label %if.then189, !dbg !119

if.then189:                                       ; preds = %if.else184
  store i8* %add.ptr185, i8** @Getopt.optptr, align 8, !dbg !120, !tbaa !43
  br label %if.end195, !dbg !120

if.else191:                                       ; preds = %if.else184
  %40 = load i32* @Getopt.optind, align 4, !dbg !121, !tbaa !40
  %inc192 = add nsw i32 %40, 1, !dbg !121
  store i32 %inc192, i32* @Getopt.optind, align 4, !dbg !121, !tbaa !40
  store i8* null, i8** @Getopt.optptr, align 8, !dbg !123, !tbaa !43
  br label %if.end195

if.end195:                                        ; preds = %if.end183, %if.else191, %if.then189, %if.end115, %if.then97, %if.else101, %if.then93
  %opti.4 = phi i32 [ %opti.2352354, %if.then93 ], [ %opti.2352354, %if.then97 ], [ %opti.2352354, %if.else101 ], [ %opti.2352354, %if.end115 ], [ %opti.3332, %if.end183 ], [ %opti.3332, %if.then189 ], [ %opti.3332, %if.else191 ]
  %idxprom196 = sext i32 %opti.4 to i64, !dbg !124
  %arrayidx197 = getelementptr inbounds %struct.opt_s* %opt, i64 %idxprom196, !dbg !124
  %argtype198 = getelementptr inbounds %struct.opt_s* %opt, i64 %idxprom196, i32 2, !dbg !124
  %41 = load i32* %argtype198, align 4, !dbg !124, !tbaa !40
  switch i32 %41, label %if.else213 [
    i32 0, label %if.end243
    i32 1, label %land.lhs.true207
  ], !dbg !124

land.lhs.true207:                                 ; preds = %if.end195
  %42 = load i8** %ret_optarg, align 8, !dbg !125, !tbaa !43
  %call208 = tail call i32 @IsInt(i8* %42) #5, !dbg !125
  %tobool = icmp eq i32 %call208, 0, !dbg !125
  br i1 %tobool, label %if.then209, label %if.else213thread-pre-split, !dbg !125

if.then209:                                       ; preds = %land.lhs.true207
  %name212 = getelementptr inbounds %struct.opt_s* %arrayidx197, i64 0, i32 0, !dbg !127
  %43 = load i8** %name212, align 8, !dbg !127, !tbaa !43
  tail call void (i8*, ...)* @Die(i8* getelementptr inbounds ([42 x i8]* @.str7, i64 0, i64 0), i8* %43, i8* %usage) #5, !dbg !127
  br label %if.end243, !dbg !127

if.else213thread-pre-split:                       ; preds = %land.lhs.true207
  %.pr334 = load i32* %argtype198, align 4, !dbg !128, !tbaa !40
  br label %if.else213

if.else213:                                       ; preds = %if.else213thread-pre-split, %if.end195
  %44 = phi i32 [ %.pr334, %if.else213thread-pre-split ], [ %41, %if.end195 ], !dbg !128
  %cmp217 = icmp eq i32 %44, 2, !dbg !128
  br i1 %cmp217, label %land.lhs.true219, label %if.else226, !dbg !128

land.lhs.true219:                                 ; preds = %if.else213
  %45 = load i8** %ret_optarg, align 8, !dbg !128, !tbaa !43
  %call220 = tail call i32 @IsReal(i8* %45) #5, !dbg !128
  %tobool221 = icmp eq i32 %call220, 0, !dbg !128
  br i1 %tobool221, label %if.then222, label %land.lhs.true219.if.else226_crit_edge, !dbg !128

land.lhs.true219.if.else226_crit_edge:            ; preds = %land.lhs.true219
  %.pre349 = load i32* %argtype198, align 4, !dbg !129, !tbaa !40
  br label %if.else226, !dbg !128

if.then222:                                       ; preds = %land.lhs.true219
  %name225 = getelementptr inbounds %struct.opt_s* %arrayidx197, i64 0, i32 0, !dbg !130
  %46 = load i8** %name225, align 8, !dbg !130, !tbaa !43
  tail call void (i8*, ...)* @Die(i8* getelementptr inbounds ([43 x i8]* @.str8, i64 0, i64 0), i8* %46, i8* %usage) #5, !dbg !130
  br label %if.end243, !dbg !130

if.else226:                                       ; preds = %land.lhs.true219.if.else226_crit_edge, %if.else213
  %47 = phi i32 [ %.pre349, %land.lhs.true219.if.else226_crit_edge ], [ %44, %if.else213 ]
  %cmp230 = icmp eq i32 %47, 3, !dbg !129
  br i1 %cmp230, label %land.lhs.true232, label %if.end243, !dbg !129

land.lhs.true232:                                 ; preds = %if.else226
  %48 = load i8** %ret_optarg, align 8, !dbg !129, !tbaa !43
  %call233 = tail call i64 @strlen(i8* %48) #4, !dbg !129
  %cmp234 = icmp eq i64 %call233, 1, !dbg !129
  br i1 %cmp234, label %if.end243, label %if.then236, !dbg !129

if.then236:                                       ; preds = %land.lhs.true232
  %name239 = getelementptr inbounds %struct.opt_s* %arrayidx197, i64 0, i32 0, !dbg !131
  %49 = load i8** %name239, align 8, !dbg !131, !tbaa !43
  tail call void (i8*, ...)* @Die(i8* getelementptr inbounds ([50 x i8]* @.str9, i64 0, i64 0), i8* %49, i8* %usage) #5, !dbg !131
  br label %if.end243, !dbg !131

if.end243:                                        ; preds = %land.lhs.true232, %if.else226, %if.end195, %if.then209, %if.then236, %if.then222
  %50 = load i32* @Getopt.optind, align 4, !dbg !132, !tbaa !40
  store i32 %50, i32* %ret_optind, align 4, !dbg !132, !tbaa !40
  br label %return, !dbg !133

return:                                           ; preds = %if.end243, %if.then14, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %if.then14 ], [ 1, %if.end243 ]
  ret i32 %retval.0, !dbg !133
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

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #3

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }
attributes #4 = { nounwind optsize readonly }
attributes #5 = { nounwind optsize }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !33, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/getopt.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/456.hmmer/src/getopt.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"Getopt", metadata !"Getopt", metadata !"", i32 60, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32, i8**, %struct.opt_s*, i32, i8*, i32*, i8**, i8**)* @Getopt, null, null, metadata !20, i32 62} ; [ DW_TAG_subprogram ] [line 60] [def] [scope 62] [Getopt]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/getopt.c]
!6 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8, metadata !8, metadata !9, metadata !12, metadata !8, metadata !10, metadata !19, metadata !9, metadata !9}
!8 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!9 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !10} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!10 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !11} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from char]
!11 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!12 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !13} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from opt_s]
!13 = metadata !{i32 786451, metadata !14, null, metadata !"opt_s", i32 330, i64 128, i64 64, i32 0, i32 0, null, metadata !15, i32 0, null, null} ; [ DW_TAG_structure_type ] [opt_s] [line 330, size 128, align 64, offset 0] [from ]
!14 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/456.hmmer/src/squid.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!15 = metadata !{metadata !16, metadata !17, metadata !18}
!16 = metadata !{i32 786445, metadata !14, metadata !13, metadata !"name", i32 331, i64 64, i64 64, i64 0, i32 0, metadata !10} ; [ DW_TAG_member ] [name] [line 331, size 64, align 64, offset 0] [from ]
!17 = metadata !{i32 786445, metadata !14, metadata !13, metadata !"single", i32 332, i64 32, i64 32, i64 64, i32 0, metadata !8} ; [ DW_TAG_member ] [single] [line 332, size 32, align 32, offset 64] [from int]
!18 = metadata !{i32 786445, metadata !14, metadata !13, metadata !"argtype", i32 333, i64 32, i64 32, i64 96, i32 0, metadata !8} ; [ DW_TAG_member ] [argtype] [line 333, size 32, align 32, offset 96] [from int]
!19 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !8} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from int]
!20 = metadata !{metadata !21, metadata !22, metadata !23, metadata !24, metadata !25, metadata !26, metadata !27, metadata !28, metadata !29, metadata !30, metadata !31, metadata !32}
!21 = metadata !{i32 786689, metadata !4, metadata !"argc", metadata !5, i32 16777276, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [argc] [line 60]
!22 = metadata !{i32 786689, metadata !4, metadata !"argv", metadata !5, i32 33554492, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [argv] [line 60]
!23 = metadata !{i32 786689, metadata !4, metadata !"opt", metadata !5, i32 50331708, metadata !12, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [opt] [line 60]
!24 = metadata !{i32 786689, metadata !4, metadata !"nopts", metadata !5, i32 67108924, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nopts] [line 60]
!25 = metadata !{i32 786689, metadata !4, metadata !"usage", metadata !5, i32 83886140, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [usage] [line 60]
!26 = metadata !{i32 786689, metadata !4, metadata !"ret_optind", metadata !5, i32 100663357, metadata !19, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ret_optind] [line 61]
!27 = metadata !{i32 786689, metadata !4, metadata !"ret_optname", metadata !5, i32 117440573, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ret_optname] [line 61]
!28 = metadata !{i32 786689, metadata !4, metadata !"ret_optarg", metadata !5, i32 134217789, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ret_optarg] [line 61]
!29 = metadata !{i32 786688, metadata !4, metadata !"i", metadata !5, i32 63, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 63]
!30 = metadata !{i32 786688, metadata !4, metadata !"arglen", metadata !5, i32 64, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [arglen] [line 64]
!31 = metadata !{i32 786688, metadata !4, metadata !"nmatch", metadata !5, i32 65, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nmatch] [line 65]
!32 = metadata !{i32 786688, metadata !4, metadata !"opti", metadata !5, i32 68, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [opti] [line 68]
!33 = metadata !{metadata !34, metadata !35}
!34 = metadata !{i32 786484, i32 0, metadata !4, metadata !"optind", metadata !"optind", metadata !"", metadata !5, i32 66, metadata !8, i32 1, i32 1, i32* @Getopt.optind, null} ; [ DW_TAG_variable ] [optind] [line 66] [local] [def]
!35 = metadata !{i32 786484, i32 0, metadata !4, metadata !"optptr", metadata !"optptr", metadata !"", metadata !5, i32 67, metadata !10, i32 1, i32 1, i8** @Getopt.optptr, null} ; [ DW_TAG_variable ] [optptr] [line 67] [local] [def]
!36 = metadata !{i32 60, i32 0, metadata !4, null}
!37 = metadata !{i32 61, i32 0, metadata !4, null}
!38 = metadata !{i32 68, i32 0, metadata !4, null}
!39 = metadata !{i32 74, i32 0, metadata !4, null}
!40 = metadata !{metadata !"int", metadata !41}
!41 = metadata !{metadata !"omnipotent char", metadata !42}
!42 = metadata !{metadata !"Simple C/C++ TBAA"}
!43 = metadata !{metadata !"any pointer", metadata !41}
!44 = metadata !{i32 76, i32 0, metadata !45, null}
!45 = metadata !{i32 786443, metadata !1, metadata !4, i32 75, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/getopt.c]
!46 = metadata !{i32 77, i32 0, metadata !45, null}
!47 = metadata !{i32 78, i32 0, metadata !45, null}
!48 = metadata !{i32 79, i32 0, metadata !45, null}
!49 = metadata !{i32 85, i32 0, metadata !4, null}
!50 = metadata !{i32 87, i32 0, metadata !51, null}
!51 = metadata !{i32 786443, metadata !1, metadata !4, i32 86, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/getopt.c]
!52 = metadata !{i32 88, i32 0, metadata !51, null}
!53 = metadata !{i32 89, i32 0, metadata !51, null}
!54 = metadata !{i32 90, i32 0, metadata !51, null}
!55 = metadata !{i32 91, i32 0, metadata !51, null}
!56 = metadata !{i32 101, i32 0, metadata !4, null}
!57 = metadata !{i32 105, i32 0, metadata !58, null}
!58 = metadata !{i32 786443, metadata !1, metadata !4, i32 102, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/getopt.c]
!59 = metadata !{i32 106, i32 0, metadata !60, null}
!60 = metadata !{i32 786443, metadata !1, metadata !58, i32 106, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/getopt.c]
!61 = metadata !{i32 108, i32 0, metadata !58, null}
!62 = metadata !{i32 109, i32 0, metadata !58, null}
!63 = metadata !{i32 110, i32 0, metadata !64, null}
!64 = metadata !{i32 786443, metadata !1, metadata !58, i32 110, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/getopt.c]
!65 = metadata !{i32 112, i32 0, metadata !64, null}
!66 = metadata !{i32 111, i32 0, metadata !64, null}
!67 = metadata !{i32 114, i32 0, metadata !68, null}
!68 = metadata !{i32 786443, metadata !1, metadata !64, i32 113, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/getopt.c]
!69 = metadata !{i32 115, i32 0, metadata !68, null}
!70 = metadata !{i32 116, i32 0, metadata !68, null}
!71 = metadata !{i32 118, i32 0, metadata !58, null}
!72 = metadata !{i32 119, i32 0, metadata !58, null}
!73 = metadata !{i32 121, i32 0, metadata !58, null}
!74 = metadata !{i32 122, i32 0, metadata !58, null}
!75 = metadata !{i32 124, i32 0, metadata !58, null}
!76 = metadata !{i32 128, i32 0, metadata !58, null}
!77 = metadata !{i32 130, i32 0, metadata !78, null}
!78 = metadata !{i32 786443, metadata !1, metadata !58, i32 129, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/getopt.c]
!79 = metadata !{i32 132, i32 0, metadata !80, null}
!80 = metadata !{i32 786443, metadata !1, metadata !78, i32 131, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/getopt.c]
!81 = metadata !{i32 133, i32 0, metadata !80, null}
!82 = metadata !{i32 134, i32 0, metadata !80, null}
!83 = metadata !{i32 135, i32 0, metadata !80, null}
!84 = metadata !{i32 136, i32 0, metadata !78, null}
!85 = metadata !{i32 137, i32 0, metadata !78, null}
!86 = metadata !{i32 140, i32 0, metadata !87, null}
!87 = metadata !{i32 786443, metadata !1, metadata !78, i32 139, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/getopt.c]
!88 = metadata !{i32 141, i32 0, metadata !87, null}
!89 = metadata !{i32 146, i32 0, metadata !90, null}
!90 = metadata !{i32 786443, metadata !1, metadata !58, i32 145, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/getopt.c]
!91 = metadata !{i32 147, i32 0, metadata !90, null}
!92 = metadata !{i32 148, i32 0, metadata !90, null}
!93 = metadata !{i32 149, i32 0, metadata !90, null}
!94 = metadata !{i32 156, i32 0, metadata !95, null}
!95 = metadata !{i32 786443, metadata !1, metadata !4, i32 153, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/getopt.c]
!96 = metadata !{i32 157, i32 0, metadata !97, null}
!97 = metadata !{i32 786443, metadata !1, metadata !95, i32 157, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/getopt.c]
!98 = metadata !{i32 158, i32 0, metadata !97, null}
!99 = metadata !{i32 160, i32 0, metadata !95, null}
!100 = metadata !{i32 161, i32 0, metadata !95, null}
!101 = metadata !{i32 162, i32 0, metadata !95, null}
!102 = metadata !{i32 165, i32 0, metadata !95, null}
!103 = metadata !{i32 167, i32 0, metadata !104, null}
!104 = metadata !{i32 786443, metadata !1, metadata !95, i32 166, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/getopt.c]
!105 = metadata !{i32 169, i32 0, metadata !106, null}
!106 = metadata !{i32 786443, metadata !1, metadata !104, i32 168, i32 0, i32 14} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/getopt.c]
!107 = metadata !{i32 170, i32 0, metadata !106, null}
!108 = metadata !{i32 171, i32 0, metadata !106, null}
!109 = metadata !{i32 172, i32 0, metadata !104, null}
!110 = metadata !{i32 174, i32 0, metadata !111, null}
!111 = metadata !{i32 786443, metadata !1, metadata !104, i32 173, i32 0, i32 15} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/getopt.c]
!112 = metadata !{i32 175, i32 0, metadata !111, null}
!113 = metadata !{i32 176, i32 0, metadata !111, null}
!114 = metadata !{i32 177, i32 0, metadata !104, null}
!115 = metadata !{i32 179, i32 0, metadata !104, null}
!116 = metadata !{i32 180, i32 0, metadata !104, null}
!117 = metadata !{i32 183, i32 0, metadata !118, null}
!118 = metadata !{i32 786443, metadata !1, metadata !95, i32 182, i32 0, i32 16} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/getopt.c]
!119 = metadata !{i32 184, i32 0, metadata !118, null}
!120 = metadata !{i32 185, i32 0, metadata !118, null}
!121 = metadata !{i32 188, i32 0, metadata !122, null}
!122 = metadata !{i32 786443, metadata !1, metadata !118, i32 187, i32 0, i32 17} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/getopt.c]
!123 = metadata !{i32 189, i32 0, metadata !122, null}
!124 = metadata !{i32 197, i32 0, metadata !4, null}
!125 = metadata !{i32 199, i32 0, metadata !126, null}
!126 = metadata !{i32 786443, metadata !1, metadata !4, i32 198, i32 0, i32 18} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/getopt.c]
!127 = metadata !{i32 200, i32 0, metadata !126, null}
!128 = metadata !{i32 202, i32 0, metadata !126, null}
!129 = metadata !{i32 205, i32 0, metadata !126, null}
!130 = metadata !{i32 203, i32 0, metadata !126, null}
!131 = metadata !{i32 206, i32 0, metadata !126, null}
!132 = metadata !{i32 211, i32 0, metadata !4, null}
!133 = metadata !{i32 212, i32 0, metadata !4, null}
