; ModuleID = '../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Graph/src/Graph_compress.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct._Graph = type { i32, i32, i32, i32, i32, i32, %struct._IVL*, i32*, %struct._IVL* }
%struct._IVL = type { i32, i32, i32, i32, i32*, i32**, i32, %struct._Ichunk* }
%struct._Ichunk = type { i32, i32, i32*, %struct._Ichunk* }
%struct._IV = type { i32, i32, i32, i32* }

@stderr = external global %struct._IO_FILE*
@.str = private unnamed_addr constant [55 x i8] c"\0A fatal error in Graph_compress2(%p,%p,%d)\0A bad input\0A\00", align 1
@.str1 = private unnamed_addr constant [54 x i8] c"\0A fatal error in Graph_compress(%p,%p,%d)\0A bad input\0A\00", align 1
@.str2 = private unnamed_addr constant [54 x i8] c"\0A fatal error in Graph_compress(%p,%p,%d)\0A nvtx = %d\0A\00", align 1
@.str3 = private unnamed_addr constant [59 x i8] c"\0A fatal error in Graph_compress(%p,%p,%d)\0A adjIVL is NULL\0A\00", align 1
@.str4 = private unnamed_addr constant [79 x i8] c"\0A fatal error in Graph_compress(%p,%p,%d)\0A g->type = %d and g->vwghts is NULL\0A\00", align 1
@.str5 = private unnamed_addr constant [81 x i8] c"\0A fatal error in Graph_compress(%p,%p,%d)\0A g->type = %d and g->ewghtIVL is NULL\0A\00", align 1
@.str6 = private unnamed_addr constant [61 x i8] c"\0A fatal error in Graph_compress(%p,%p,%d)\0A IVmin(cmap) = %d\0A\00", align 1
@.str7 = private unnamed_addr constant [59 x i8] c"\0A fatal error in Graph_compress(%p,%p,%d)\0A AdjIVL is NULL\0A\00", align 1
@.str8 = private unnamed_addr constant [81 x i8] c"\0A fatal error in Graph_compress(%p,%p,%d)\0A g2->type = %d and g2->vwghts is NULL\0A\00", align 1
@.str9 = private unnamed_addr constant [83 x i8] c"\0A fatal error in Graph_compress(%p,%p,%d)\0A g2->type = %d and g2->ewghtIVL is NULL\0A\00", align 1

; Function Attrs: nounwind optsize uwtable
define %struct._Graph* @Graph_compress2(%struct._Graph* %g, %struct._IV* %mapIV, i32 %coarseType) #0 {
entry:
  %cmp = icmp eq %struct._Graph* %g, null
  %cmp1 = icmp eq %struct._IV* %mapIV, null
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %if.then, label %lor.lhs.false2

lor.lhs.false2:                                   ; preds = %entry
  %nvtx = getelementptr inbounds %struct._Graph* %g, i64 0, i32 1
  %0 = load i32* %nvtx, align 4, !tbaa !0
  %call = tail call i32 @IV_size(%struct._IV* %mapIV) #4
  %cmp3 = icmp ne i32 %0, %call
  %1 = icmp ugt i32 %coarseType, 3
  %or.cond32 = or i1 %cmp3, %1
  br i1 %or.cond32, label %if.then, label %if.end16

if.then:                                          ; preds = %lor.lhs.false2, %entry
  %2 = load %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %call8 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([55 x i8]* @.str, i64 0, i64 0), %struct._Graph* %g, %struct._IV* %mapIV, i32 %coarseType) #4
  br i1 %cmp, label %if.end, label %if.then10

if.then10:                                        ; preds = %if.then
  %3 = load %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %call11 = tail call i32 @Graph_writeStats(%struct._Graph* %g, %struct._IO_FILE* %3) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %if.then10
  br i1 %cmp1, label %if.end15, label %if.then13

if.then13:                                        ; preds = %if.end
  %4 = load %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %call14 = tail call i32 @IV_writeStats(%struct._IV* %mapIV, %struct._IO_FILE* %4) #4
  br label %if.end15

if.end15:                                         ; preds = %if.end, %if.then13
  tail call void @exit(i32 -1) #5
  unreachable

if.end16:                                         ; preds = %lor.lhs.false2
  %call17 = tail call i32* @IV_entries(%struct._IV* %mapIV) #4
  %call18 = tail call %struct._Graph* @Graph_compress(%struct._Graph* %g, i32* %call17, i32 %coarseType) #6
  ret %struct._Graph* %call18
}

; Function Attrs: optsize
declare i32 @IV_size(%struct._IV*) #1

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #2

; Function Attrs: optsize
declare i32 @Graph_writeStats(%struct._Graph*, %struct._IO_FILE*) #1

; Function Attrs: optsize
declare i32 @IV_writeStats(%struct._IV*, %struct._IO_FILE*) #1

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32) #3

; Function Attrs: nounwind optsize uwtable
define %struct._Graph* @Graph_compress(%struct._Graph* %g, i32* %cmap, i32 %coarseType) #0 {
entry:
  %j = alloca i32, align 4
  %jsize = alloca i32, align 4
  %Jsize = alloca i32, align 4
  %jind = alloca i32*, align 8
  %Jind = alloca i32*, align 8
  %jwghts = alloca i32*, align 8
  %Jwghts = alloca i32*, align 8
  %cmp = icmp eq %struct._Graph* %g, null
  %cmp1 = icmp eq i32* %cmap, null
  %or.cond = or i1 %cmp, %cmp1
  %0 = icmp ugt i32 %coarseType, 3
  %or.cond389 = or i1 %or.cond, %0
  br i1 %or.cond389, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([54 x i8]* @.str1, i64 0, i64 0), %struct._Graph* %g, i32* %cmap, i32 %coarseType) #4
  call void @exit(i32 -1) #5
  unreachable

if.end:                                           ; preds = %entry
  %nvtx6 = getelementptr inbounds %struct._Graph* %g, i64 0, i32 1
  %2 = load i32* %nvtx6, align 4, !tbaa !0
  %cmp7 = icmp slt i32 %2, 1
  br i1 %cmp7, label %if.then8, label %if.end10

if.then8:                                         ; preds = %if.end
  %3 = load %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %call9 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([54 x i8]* @.str2, i64 0, i64 0), %struct._Graph* %g, i32* %cmap, i32 %coarseType, i32 %2) #4
  call void @exit(i32 -1) #5
  unreachable

if.end10:                                         ; preds = %if.end
  %adjIVL11 = getelementptr inbounds %struct._Graph* %g, i64 0, i32 6
  %4 = load %struct._IVL** %adjIVL11, align 8, !tbaa !3
  %cmp12 = icmp eq %struct._IVL* %4, null
  br i1 %cmp12, label %if.then13, label %if.end15

if.then13:                                        ; preds = %if.end10
  %5 = load %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %call14 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([59 x i8]* @.str3, i64 0, i64 0), %struct._Graph* %g, i32* %cmap, i32 %coarseType) #4
  call void @exit(i32 -1) #5
  unreachable

if.end15:                                         ; preds = %if.end10
  %type = getelementptr inbounds %struct._Graph* %g, i64 0, i32 0
  %6 = load i32* %type, align 4, !tbaa !0
  %rem = srem i32 %6, 2
  %cmp16 = icmp eq i32 %rem, 1
  br i1 %cmp16, label %land.lhs.true, label %if.end22

land.lhs.true:                                    ; preds = %if.end15
  %vwghts17 = getelementptr inbounds %struct._Graph* %g, i64 0, i32 7
  %7 = load i32** %vwghts17, align 8, !tbaa !3
  %cmp18 = icmp eq i32* %7, null
  br i1 %cmp18, label %if.then19, label %if.end22

if.then19:                                        ; preds = %land.lhs.true
  %8 = load %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %call21 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %8, i8* getelementptr inbounds ([79 x i8]* @.str4, i64 0, i64 0), %struct._Graph* %g, i32* %cmap, i32 %coarseType, i32 %6) #4
  call void @exit(i32 -1) #5
  unreachable

if.end22:                                         ; preds = %land.lhs.true, %if.end15
  %vwghts.0 = phi i32* [ undef, %if.end15 ], [ %7, %land.lhs.true ]
  %cmp24 = icmp sgt i32 %6, 1
  br i1 %cmp24, label %land.lhs.true25, label %if.end31

land.lhs.true25:                                  ; preds = %if.end22
  %ewghtIVL26 = getelementptr inbounds %struct._Graph* %g, i64 0, i32 8
  %9 = load %struct._IVL** %ewghtIVL26, align 8, !tbaa !3
  %cmp27 = icmp eq %struct._IVL* %9, null
  br i1 %cmp27, label %if.then28, label %if.end31

if.then28:                                        ; preds = %land.lhs.true25
  %10 = load %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %call30 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %10, i8* getelementptr inbounds ([81 x i8]* @.str5, i64 0, i64 0), %struct._Graph* %g, i32* %cmap, i32 %coarseType, i32 %6) #4
  call void @exit(i32 -1) #5
  unreachable

if.end31:                                         ; preds = %land.lhs.true25, %if.end22
  %ewghtIVL.0 = phi %struct._IVL* [ %9, %land.lhs.true25 ], [ undef, %if.end22 ]
  %call32 = call i32 @IVmin(i32 %2, i32* %cmap, i32* %j) #4
  %cmp33 = icmp slt i32 %call32, 0
  br i1 %cmp33, label %if.then34, label %if.end37

if.then34:                                        ; preds = %if.end31
  %11 = load %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %call35 = call i32 @IVmin(i32 %2, i32* %cmap, i32* %j) #4
  %call36 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %11, i8* getelementptr inbounds ([61 x i8]* @.str6, i64 0, i64 0), %struct._Graph* %g, i32* %cmap, i32 %coarseType, i32 %call35) #4
  call void @exit(i32 -1) #5
  unreachable

if.end37:                                         ; preds = %if.end31
  %call38 = call i32 @IVmax(i32 %2, i32* %cmap, i32* %j) #4
  %add = add nsw i32 %call38, 1
  %call39 = call %struct._Graph* @Graph_new() #4
  call void @Graph_init1(%struct._Graph* %call39, i32 %coarseType, i32 %add, i32 0, i32 0, i32 1, i32 1) #4
  %adjIVL40 = getelementptr inbounds %struct._Graph* %call39, i64 0, i32 6
  %12 = load %struct._IVL** %adjIVL40, align 8, !tbaa !3
  %cmp41 = icmp eq %struct._IVL* %12, null
  br i1 %cmp41, label %if.then42, label %if.end44

if.then42:                                        ; preds = %if.end37
  %13 = load %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %call43 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %13, i8* getelementptr inbounds ([59 x i8]* @.str7, i64 0, i64 0), %struct._Graph* %g, i32* %cmap, i32 %coarseType) #4
  call void @exit(i32 -1) #5
  unreachable

if.end44:                                         ; preds = %if.end37
  %type45 = getelementptr inbounds %struct._Graph* %call39, i64 0, i32 0
  %14 = load i32* %type45, align 4, !tbaa !0
  %rem46 = srem i32 %14, 2
  %cmp47 = icmp eq i32 %rem46, 1
  br i1 %cmp47, label %land.lhs.true48, label %if.end54

land.lhs.true48:                                  ; preds = %if.end44
  %vwghts49 = getelementptr inbounds %struct._Graph* %call39, i64 0, i32 7
  %15 = load i32** %vwghts49, align 8, !tbaa !3
  %cmp50 = icmp eq i32* %15, null
  br i1 %cmp50, label %if.then51, label %if.end54

if.then51:                                        ; preds = %land.lhs.true48
  %16 = load %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %call53 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %16, i8* getelementptr inbounds ([81 x i8]* @.str8, i64 0, i64 0), %struct._Graph* %g, i32* %cmap, i32 %coarseType, i32 %14) #4
  call void @exit(i32 -1) #5
  unreachable

if.end54:                                         ; preds = %land.lhs.true48, %if.end44
  %Vwghts.0 = phi i32* [ undef, %if.end44 ], [ %15, %land.lhs.true48 ]
  %cmp56 = icmp sgt i32 %14, 1
  br i1 %cmp56, label %land.lhs.true57, label %if.end63

land.lhs.true57:                                  ; preds = %if.end54
  %ewghtIVL58 = getelementptr inbounds %struct._Graph* %call39, i64 0, i32 8
  %17 = load %struct._IVL** %ewghtIVL58, align 8, !tbaa !3
  %cmp59 = icmp eq %struct._IVL* %17, null
  br i1 %cmp59, label %if.then60, label %if.end63

if.then60:                                        ; preds = %land.lhs.true57
  %18 = load %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %call62 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %18, i8* getelementptr inbounds ([83 x i8]* @.str9, i64 0, i64 0), %struct._Graph* %g, i32* %cmap, i32 %coarseType, i32 %14) #4
  call void @exit(i32 -1) #5
  unreachable

if.end63:                                         ; preds = %land.lhs.true57, %if.end54
  %EwghtIVL.0 = phi %struct._IVL* [ %17, %land.lhs.true57 ], [ undef, %if.end54 ]
  %call64 = call i32* @IVinit(i32 %add, i32 -1) #4
  %call65 = call i32* @IVinit(i32 %2, i32 -1) #4
  store i32 0, i32* %j, align 4, !tbaa !0
  %cmp66417 = icmp sgt i32 %2, 0
  br i1 %cmp66417, label %for.body, label %for.end

for.body:                                         ; preds = %if.end63, %for.body
  %storemerge418 = phi i32 [ %inc, %for.body ], [ 0, %if.end63 ]
  %idxprom = sext i32 %storemerge418 to i64
  %arrayidx = getelementptr inbounds i32* %cmap, i64 %idxprom
  %19 = load i32* %arrayidx, align 4, !tbaa !0
  %idxprom67 = sext i32 %19 to i64
  %arrayidx68 = getelementptr inbounds i32* %call64, i64 %idxprom67
  %20 = load i32* %arrayidx68, align 4, !tbaa !0
  %arrayidx70 = getelementptr inbounds i32* %call65, i64 %idxprom
  store i32 %20, i32* %arrayidx70, align 4, !tbaa !0
  %21 = load i32* %j, align 4, !tbaa !0
  store i32 %21, i32* %arrayidx68, align 4, !tbaa !0
  %22 = load i32* %j, align 4, !tbaa !0
  %inc = add nsw i32 %22, 1
  store i32 %inc, i32* %j, align 4, !tbaa !0
  %cmp66 = icmp slt i32 %inc, %2
  br i1 %cmp66, label %for.body, label %for.end

for.end:                                          ; preds = %for.body, %if.end63
  %call73 = call i32* @IVinit2(i32 %add) #4
  %call74 = call i32* @IVinit(i32 %add, i32 -1) #4
  %cmp76415 = icmp sgt i32 %call38, -1
  br i1 %cmp76415, label %for.body77, label %for.end115

for.body77:                                       ; preds = %for.end, %if.end112
  %indvars.iv431 = phi i64 [ %indvars.iv.next432, %if.end112 ], [ 0, %for.end ]
  store i32 0, i32* %Jsize, align 4, !tbaa !0
  %arrayidx79 = getelementptr inbounds i32* %call64, i64 %indvars.iv431
  %storemerge388412 = load i32* %arrayidx79, align 4
  store i32 %storemerge388412, i32* %j, align 4, !tbaa !0
  %cmp81413 = icmp eq i32 %storemerge388412, -1
  br i1 %cmp81413, label %if.end112, label %for.body82

for.body82:                                       ; preds = %for.body77, %for.inc106
  %storemerge388414 = phi i32 [ %storemerge388, %for.inc106 ], [ %storemerge388412, %for.body77 ]
  call void @IVL_listAndSize(%struct._IVL* %4, i32 %storemerge388414, i32* %jsize, i32** %jind) #4
  %23 = load i32* %jsize, align 4, !tbaa !0
  %cmp84410 = icmp sgt i32 %23, 0
  br i1 %cmp84410, label %for.body85.lr.ph, label %for.inc106

for.body85.lr.ph:                                 ; preds = %for.body82
  %24 = load i32** %jind, align 8, !tbaa !3
  br label %for.body85

for.body85:                                       ; preds = %for.body85.lr.ph, %for.inc103
  %25 = phi i32 [ %23, %for.body85.lr.ph ], [ %31, %for.inc103 ]
  %indvars.iv429 = phi i64 [ 0, %for.body85.lr.ph ], [ %indvars.iv.next430, %for.inc103 ]
  %arrayidx87 = getelementptr inbounds i32* %24, i64 %indvars.iv429
  %26 = load i32* %arrayidx87, align 4, !tbaa !0
  %cmp88 = icmp slt i32 %26, %2
  br i1 %cmp88, label %if.then89, label %for.inc103

if.then89:                                        ; preds = %for.body85
  %idxprom90 = sext i32 %26 to i64
  %arrayidx91 = getelementptr inbounds i32* %cmap, i64 %idxprom90
  %27 = load i32* %arrayidx91, align 4, !tbaa !0
  %idxprom92 = sext i32 %27 to i64
  %arrayidx93 = getelementptr inbounds i32* %call74, i64 %idxprom92
  %28 = load i32* %arrayidx93, align 4, !tbaa !0
  %29 = trunc i64 %indvars.iv431 to i32
  %cmp94 = icmp eq i32 %28, %29
  br i1 %cmp94, label %for.inc103, label %if.then95

if.then95:                                        ; preds = %if.then89
  store i32 %29, i32* %arrayidx93, align 4, !tbaa !0
  %30 = load i32* %Jsize, align 4, !tbaa !0
  %inc98 = add nsw i32 %30, 1
  store i32 %inc98, i32* %Jsize, align 4, !tbaa !0
  %idxprom99 = sext i32 %30 to i64
  %arrayidx100 = getelementptr inbounds i32* %call73, i64 %idxprom99
  store i32 %27, i32* %arrayidx100, align 4, !tbaa !0
  %.pre437 = load i32* %jsize, align 4, !tbaa !0
  br label %for.inc103

for.inc103:                                       ; preds = %if.then89, %for.body85, %if.then95
  %31 = phi i32 [ %25, %if.then89 ], [ %25, %for.body85 ], [ %.pre437, %if.then95 ]
  %indvars.iv.next430 = add i64 %indvars.iv429, 1
  %32 = trunc i64 %indvars.iv.next430 to i32
  %cmp84 = icmp slt i32 %32, %31
  br i1 %cmp84, label %for.body85, label %for.inc106

for.inc106:                                       ; preds = %for.inc103, %for.body82
  %33 = load i32* %j, align 4, !tbaa !0
  %idxprom107 = sext i32 %33 to i64
  %arrayidx108 = getelementptr inbounds i32* %call65, i64 %idxprom107
  %storemerge388 = load i32* %arrayidx108, align 4
  store i32 %storemerge388, i32* %j, align 4, !tbaa !0
  %cmp81 = icmp eq i32 %storemerge388, -1
  br i1 %cmp81, label %for.end109, label %for.body82

for.end109:                                       ; preds = %for.inc106
  %.pre435 = load i32* %Jsize, align 4, !tbaa !0
  %cmp110 = icmp sgt i32 %.pre435, 0
  br i1 %cmp110, label %if.then111, label %if.end112

if.then111:                                       ; preds = %for.end109
  call void @IVqsortUp(i32 %.pre435, i32* %call73) #4
  %.pre436 = load i32* %Jsize, align 4, !tbaa !0
  br label %if.end112

if.end112:                                        ; preds = %for.body77, %if.then111, %for.end109
  %34 = phi i32 [ %.pre436, %if.then111 ], [ %.pre435, %for.end109 ], [ 0, %for.body77 ]
  %35 = trunc i64 %indvars.iv431 to i32
  call void @IVL_setList(%struct._IVL* %12, i32 %35, i32 %34, i32* %call73) #4
  %indvars.iv.next432 = add i64 %indvars.iv431, 1
  %36 = trunc i64 %indvars.iv.next432 to i32
  %cmp76 = icmp slt i32 %36, %add
  br i1 %cmp76, label %for.body77, label %for.end115

for.end115:                                       ; preds = %if.end112, %for.end
  %tsize = getelementptr inbounds %struct._IVL* %12, i64 0, i32 3
  %37 = load i32* %tsize, align 4, !tbaa !0
  %nedges = getelementptr inbounds %struct._Graph* %call39, i64 0, i32 3
  store i32 %37, i32* %nedges, align 4, !tbaa !0
  call void @IVfree(i32* %call73) #4
  call void @IVfree(i32* %call74) #4
  %rem116 = srem i32 %coarseType, 2
  %cmp117 = icmp eq i32 %rem116, 1
  br i1 %cmp117, label %for.cond119.preheader, label %if.else146

for.cond119.preheader:                            ; preds = %for.end115
  br i1 %cmp76415, label %for.body121, label %for.end144

for.body121:                                      ; preds = %for.cond119.preheader, %for.end139
  %indvars.iv427 = phi i64 [ %indvars.iv.next428, %for.end139 ], [ 0, %for.cond119.preheader ]
  %arrayidx123 = getelementptr inbounds i32* %call64, i64 %indvars.iv427
  %storemerge387404 = load i32* %arrayidx123, align 4
  store i32 %storemerge387404, i32* %j, align 4, !tbaa !0
  %cmp125405 = icmp eq i32 %storemerge387404, -1
  br i1 %cmp125405, label %for.end139, label %for.body126.lr.ph

for.body126.lr.ph:                                ; preds = %for.body121
  %.pre434 = load i32* %type, align 4, !tbaa !0
  br label %for.body126

for.body126:                                      ; preds = %for.body126.lr.ph, %for.inc136
  %38 = phi i32 [ %storemerge387404, %for.body126.lr.ph ], [ %storemerge387, %for.inc136 ]
  %wght.0406 = phi i32 [ 0, %for.body126.lr.ph ], [ %wght.1, %for.inc136 ]
  %rem128 = srem i32 %.pre434, 2
  %cmp129 = icmp eq i32 %rem128, 1
  %idxprom131 = sext i32 %38 to i64
  br i1 %cmp129, label %if.then130, label %for.inc136

if.then130:                                       ; preds = %for.body126
  %arrayidx132 = getelementptr inbounds i32* %vwghts.0, i64 %idxprom131
  %39 = load i32* %arrayidx132, align 4, !tbaa !0
  br label %for.inc136

for.inc136:                                       ; preds = %for.body126, %if.then130
  %.pn = phi i32 [ %39, %if.then130 ], [ 1, %for.body126 ]
  %wght.1 = add nsw i32 %.pn, %wght.0406
  %arrayidx138 = getelementptr inbounds i32* %call65, i64 %idxprom131
  %storemerge387 = load i32* %arrayidx138, align 4
  store i32 %storemerge387, i32* %j, align 4, !tbaa !0
  %cmp125 = icmp eq i32 %storemerge387, -1
  br i1 %cmp125, label %for.end139, label %for.body126

for.end139:                                       ; preds = %for.inc136, %for.body121
  %wght.0.lcssa = phi i32 [ 0, %for.body121 ], [ %wght.1, %for.inc136 ]
  %arrayidx141 = getelementptr inbounds i32* %Vwghts.0, i64 %indvars.iv427
  store i32 %wght.0.lcssa, i32* %arrayidx141, align 4, !tbaa !0
  %indvars.iv.next428 = add i64 %indvars.iv427, 1
  %40 = trunc i64 %indvars.iv.next428 to i32
  %cmp120 = icmp slt i32 %40, %add
  br i1 %cmp120, label %for.body121, label %for.end144

for.end144:                                       ; preds = %for.end139, %for.cond119.preheader
  %call145 = call i32 @IVsum(i32 %add, i32* %Vwghts.0) #4
  %totvwght = getelementptr inbounds %struct._Graph* %call39, i64 0, i32 4
  store i32 %call145, i32* %totvwght, align 4, !tbaa !0
  br label %if.end148

if.else146:                                       ; preds = %for.end115
  %totvwght147 = getelementptr inbounds %struct._Graph* %call39, i64 0, i32 4
  store i32 %add, i32* %totvwght147, align 4, !tbaa !0
  br label %if.end148

if.end148:                                        ; preds = %if.else146, %for.end144
  %cmp149 = icmp sgt i32 %coarseType, 1
  br i1 %cmp149, label %for.cond151.preheader, label %if.else235

for.cond151.preheader:                            ; preds = %if.end148
  br i1 %cmp76415, label %for.body153, label %for.end156

for.body153:                                      ; preds = %for.cond151.preheader, %for.body153
  %J.2403 = phi i32 [ %inc155, %for.body153 ], [ 0, %for.cond151.preheader ]
  call void @IVL_listAndSize(%struct._IVL* %12, i32 %J.2403, i32* %Jsize, i32** %Jind) #4
  %41 = load i32* %Jsize, align 4, !tbaa !0
  call void @IVL_setList(%struct._IVL* %EwghtIVL.0, i32 %J.2403, i32 %41, i32* null) #4
  %inc155 = add nsw i32 %J.2403, 1
  %cmp152 = icmp slt i32 %inc155, %add
  br i1 %cmp152, label %for.body153, label %for.end156

for.end156:                                       ; preds = %for.body153, %for.cond151.preheader
  %42 = load i32* %type, align 4, !tbaa !0
  %cmp158 = icmp sgt i32 %42, 1
  store i32 0, i32* %j, align 4, !tbaa !0
  br i1 %cmp158, label %for.cond160.preheader, label %for.cond198.preheader

for.cond198.preheader:                            ; preds = %for.end156
  br i1 %cmp66417, label %for.body200, label %if.end233

for.cond160.preheader:                            ; preds = %for.end156
  br i1 %cmp66417, label %for.body162, label %if.end233

for.body162:                                      ; preds = %for.cond160.preheader, %for.inc194
  %43 = phi i32 [ %inc195, %for.inc194 ], [ 0, %for.cond160.preheader ]
  %idxprom163 = sext i32 %43 to i64
  %arrayidx164 = getelementptr inbounds i32* %cmap, i64 %idxprom163
  %44 = load i32* %arrayidx164, align 4, !tbaa !0
  call void @IVL_listAndSize(%struct._IVL* %4, i32 %43, i32* %jsize, i32** %jind) #4
  %45 = load i32* %j, align 4, !tbaa !0
  call void @IVL_listAndSize(%struct._IVL* %ewghtIVL.0, i32 %45, i32* %jsize, i32** %jwghts) #4
  call void @IVL_listAndSize(%struct._IVL* %12, i32 %44, i32* %Jsize, i32** %Jind) #4
  call void @IVL_listAndSize(%struct._IVL* %EwghtIVL.0, i32 %44, i32* %Jsize, i32** %Jwghts) #4
  %46 = load i32* %jsize, align 4, !tbaa !0
  %cmp166393 = icmp sgt i32 %46, 0
  br i1 %cmp166393, label %for.body167.lr.ph, label %for.inc194

for.body167.lr.ph:                                ; preds = %for.body162
  %47 = load i32** %jind, align 8, !tbaa !3
  %48 = load i32** %Jind, align 8, !tbaa !3
  %49 = load i32** %jwghts, align 8, !tbaa !3
  %50 = load i32** %Jwghts, align 8, !tbaa !3
  br label %for.body167

for.body167:                                      ; preds = %for.body167.lr.ph, %for.inc191
  %51 = phi i32 [ %46, %for.body167.lr.ph ], [ %59, %for.inc191 ]
  %indvars.iv420 = phi i64 [ 0, %for.body167.lr.ph ], [ %indvars.iv.next421, %for.inc191 ]
  %arrayidx169 = getelementptr inbounds i32* %47, i64 %indvars.iv420
  %52 = load i32* %arrayidx169, align 4, !tbaa !0
  %cmp170 = icmp slt i32 %52, %2
  br i1 %cmp170, label %if.then171, label %for.inc191

if.then171:                                       ; preds = %for.body167
  %idxprom172 = sext i32 %52 to i64
  %arrayidx173 = getelementptr inbounds i32* %cmap, i64 %idxprom172
  %53 = load i32* %arrayidx173, align 4, !tbaa !0
  %54 = load i32* %Jsize, align 4, !tbaa !0
  %cmp175391 = icmp sgt i32 %54, 0
  br i1 %cmp175391, label %for.body176, label %for.inc191

for.cond174:                                      ; preds = %for.body176
  %55 = trunc i64 %indvars.iv.next to i32
  %cmp175 = icmp slt i32 %55, %54
  br i1 %cmp175, label %for.body176, label %for.inc191

for.body176:                                      ; preds = %if.then171, %for.cond174
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.cond174 ], [ 0, %if.then171 ]
  %arrayidx178 = getelementptr inbounds i32* %48, i64 %indvars.iv
  %56 = load i32* %arrayidx178, align 4, !tbaa !0
  %cmp179 = icmp eq i32 %56, %53
  %indvars.iv.next = add i64 %indvars.iv, 1
  br i1 %cmp179, label %if.then180, label %for.cond174

if.then180:                                       ; preds = %for.body176
  %arrayidx182 = getelementptr inbounds i32* %49, i64 %indvars.iv420
  %57 = load i32* %arrayidx182, align 4, !tbaa !0
  %arrayidx184 = getelementptr inbounds i32* %50, i64 %indvars.iv
  %58 = load i32* %arrayidx184, align 4, !tbaa !0
  %add185 = add nsw i32 %58, %57
  store i32 %add185, i32* %arrayidx184, align 4, !tbaa !0
  %.pre = load i32* %jsize, align 4, !tbaa !0
  br label %for.inc191

for.inc191:                                       ; preds = %if.then171, %for.cond174, %for.body167, %if.then180
  %59 = phi i32 [ %51, %for.body167 ], [ %.pre, %if.then180 ], [ %51, %for.cond174 ], [ %51, %if.then171 ]
  %indvars.iv.next421 = add i64 %indvars.iv420, 1
  %60 = trunc i64 %indvars.iv.next421 to i32
  %cmp166 = icmp slt i32 %60, %59
  br i1 %cmp166, label %for.body167, label %for.inc194

for.inc194:                                       ; preds = %for.inc191, %for.body162
  %61 = load i32* %j, align 4, !tbaa !0
  %inc195 = add nsw i32 %61, 1
  store i32 %inc195, i32* %j, align 4, !tbaa !0
  %cmp161 = icmp slt i32 %inc195, %2
  br i1 %cmp161, label %for.body162, label %if.end233

for.body200:                                      ; preds = %for.cond198.preheader, %for.inc230
  %62 = phi i32 [ %inc231, %for.inc230 ], [ 0, %for.cond198.preheader ]
  %idxprom201 = sext i32 %62 to i64
  %arrayidx202 = getelementptr inbounds i32* %cmap, i64 %idxprom201
  %63 = load i32* %arrayidx202, align 4, !tbaa !0
  call void @IVL_listAndSize(%struct._IVL* %4, i32 %62, i32* %jsize, i32** %jind) #4
  call void @IVL_listAndSize(%struct._IVL* %12, i32 %63, i32* %Jsize, i32** %Jind) #4
  call void @IVL_listAndSize(%struct._IVL* %EwghtIVL.0, i32 %63, i32* %Jsize, i32** %Jwghts) #4
  %64 = load i32* %jsize, align 4, !tbaa !0
  %cmp204398 = icmp sgt i32 %64, 0
  br i1 %cmp204398, label %for.body205.lr.ph, label %for.inc230

for.body205.lr.ph:                                ; preds = %for.body200
  %65 = load i32** %jind, align 8, !tbaa !3
  %66 = load i32** %Jind, align 8, !tbaa !3
  %67 = load i32** %Jwghts, align 8, !tbaa !3
  br label %for.body205

for.body205:                                      ; preds = %for.body205.lr.ph, %for.inc227
  %68 = phi i32 [ %64, %for.body205.lr.ph ], [ %75, %for.inc227 ]
  %indvars.iv425 = phi i64 [ 0, %for.body205.lr.ph ], [ %indvars.iv.next426, %for.inc227 ]
  %arrayidx207 = getelementptr inbounds i32* %65, i64 %indvars.iv425
  %69 = load i32* %arrayidx207, align 4, !tbaa !0
  %cmp208 = icmp slt i32 %69, %2
  br i1 %cmp208, label %if.then209, label %for.inc227

if.then209:                                       ; preds = %for.body205
  %idxprom210 = sext i32 %69 to i64
  %arrayidx211 = getelementptr inbounds i32* %cmap, i64 %idxprom210
  %70 = load i32* %arrayidx211, align 4, !tbaa !0
  %71 = load i32* %Jsize, align 4, !tbaa !0
  %cmp213396 = icmp sgt i32 %71, 0
  br i1 %cmp213396, label %for.body214, label %for.inc227

for.cond212:                                      ; preds = %for.body214
  %72 = trunc i64 %indvars.iv.next424 to i32
  %cmp213 = icmp slt i32 %72, %71
  br i1 %cmp213, label %for.body214, label %for.inc227

for.body214:                                      ; preds = %if.then209, %for.cond212
  %indvars.iv423 = phi i64 [ %indvars.iv.next424, %for.cond212 ], [ 0, %if.then209 ]
  %arrayidx216 = getelementptr inbounds i32* %66, i64 %indvars.iv423
  %73 = load i32* %arrayidx216, align 4, !tbaa !0
  %cmp217 = icmp eq i32 %73, %70
  %indvars.iv.next424 = add i64 %indvars.iv423, 1
  br i1 %cmp217, label %if.then218, label %for.cond212

if.then218:                                       ; preds = %for.body214
  %arrayidx220 = getelementptr inbounds i32* %67, i64 %indvars.iv423
  %74 = load i32* %arrayidx220, align 4, !tbaa !0
  %inc221 = add nsw i32 %74, 1
  store i32 %inc221, i32* %arrayidx220, align 4, !tbaa !0
  %.pre433 = load i32* %jsize, align 4, !tbaa !0
  br label %for.inc227

for.inc227:                                       ; preds = %if.then209, %for.cond212, %for.body205, %if.then218
  %75 = phi i32 [ %68, %for.body205 ], [ %.pre433, %if.then218 ], [ %68, %for.cond212 ], [ %68, %if.then209 ]
  %indvars.iv.next426 = add i64 %indvars.iv425, 1
  %76 = trunc i64 %indvars.iv.next426 to i32
  %cmp204 = icmp slt i32 %76, %75
  br i1 %cmp204, label %for.body205, label %for.inc230

for.inc230:                                       ; preds = %for.inc227, %for.body200
  %77 = load i32* %j, align 4, !tbaa !0
  %inc231 = add nsw i32 %77, 1
  store i32 %inc231, i32* %j, align 4, !tbaa !0
  %cmp199 = icmp slt i32 %inc231, %2
  br i1 %cmp199, label %for.body200, label %if.end233

if.end233:                                        ; preds = %for.cond198.preheader, %for.inc230, %for.cond160.preheader, %for.inc194
  %call234 = call i32 @IVL_sum(%struct._IVL* %EwghtIVL.0) #4
  %totewght = getelementptr inbounds %struct._Graph* %call39, i64 0, i32 5
  store i32 %call234, i32* %totewght, align 4, !tbaa !0
  br label %if.end238

if.else235:                                       ; preds = %if.end148
  %78 = load i32* %nedges, align 4, !tbaa !0
  %totewght237 = getelementptr inbounds %struct._Graph* %call39, i64 0, i32 5
  store i32 %78, i32* %totewght237, align 4, !tbaa !0
  br label %if.end238

if.end238:                                        ; preds = %if.else235, %if.end233
  call void @IVfree(i32* %call64) #4
  call void @IVfree(i32* %call65) #4
  ret %struct._Graph* %call39
}

; Function Attrs: optsize
declare i32* @IV_entries(%struct._IV*) #1

; Function Attrs: optsize
declare i32 @IVmin(i32, i32*, i32*) #1

; Function Attrs: optsize
declare i32 @IVmax(i32, i32*, i32*) #1

; Function Attrs: optsize
declare %struct._Graph* @Graph_new() #1

; Function Attrs: optsize
declare void @Graph_init1(%struct._Graph*, i32, i32, i32, i32, i32, i32) #1

; Function Attrs: optsize
declare i32* @IVinit(i32, i32) #1

; Function Attrs: optsize
declare i32* @IVinit2(i32) #1

; Function Attrs: optsize
declare void @IVL_listAndSize(%struct._IVL*, i32, i32*, i32**) #1

; Function Attrs: optsize
declare void @IVqsortUp(i32, i32*) #1

; Function Attrs: optsize
declare void @IVL_setList(%struct._IVL*, i32, i32, i32*) #1

; Function Attrs: optsize
declare void @IVfree(i32*) #1

; Function Attrs: optsize
declare i32 @IVsum(i32, i32*) #1

; Function Attrs: optsize
declare i32 @IVL_sum(%struct._IVL*) #1

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize }
attributes #5 = { noreturn nounwind optsize }
attributes #6 = { optsize }

!0 = metadata !{metadata !"int", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"any pointer", metadata !1}
