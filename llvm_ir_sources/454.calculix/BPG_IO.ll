; ModuleID = '../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/BPG/src/BPG_IO.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct._BPG = type { i32, i32, %struct._Graph* }
%struct._Graph = type { i32, i32, i32, i32, i32, i32, %struct._IVL*, i32*, %struct._IVL* }
%struct._IVL = type { i32, i32, i32, i32, i32*, i32**, i32, %struct._Ichunk* }
%struct._Ichunk = type { i32, i32, i32*, %struct._Ichunk* }

@stderr = external global %struct._IO_FILE*
@.str = private unnamed_addr constant [47 x i8] c"\0A error in BPG_readFromFile(%p,%s)\0A bad input\0A\00", align 1
@.str1 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str2 = private unnamed_addr constant [59 x i8] c"\0A error in BPG_readFromFile(%p,%s)\0A unable to open file %s\00", align 1
@.str3 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str4 = private unnamed_addr constant [102 x i8] c"\0A error in BPG_readFromFile(%p,%s)\0A bad BPG file name %s,\0A must end in %s (binary) or %s (formatted)\0A\00", align 1
@.str5 = private unnamed_addr constant [56 x i8] c"\0A error in BPG_readFromFormattedFile(%p,%p)\0A bad input\0A\00", align 1
@.str6 = private unnamed_addr constant [66 x i8] c"\0A error in BPG_readFromFormattedFile(%p,%p)\0A %d items of %d read\0A\00", align 1
@.str7 = private unnamed_addr constant [121 x i8] c"\0A error in BPG_readFromFormattedFile(%p,%p)\0A trying to read in Graph\0A return code %d from Graph_readFormattedFile(%p,%p)\00", align 1
@.str8 = private unnamed_addr constant [59 x i8] c"\0A fatal error in BPG_readFromBinaryFile(%p,%p)\0A bad input\0A\00", align 1
@.str9 = private unnamed_addr constant [63 x i8] c"\0A error in BPG_readFromBinaryFile(%p,%p)\0A %d items of %d read\0A\00", align 1
@.str10 = private unnamed_addr constant [115 x i8] c"\0A error in BPG_readFromBinaryFile(%p,%p)\0A trying to read in Graph\0A return code %d from Graph_readBinaryFile(%p,%p)\00", align 1
@.str11 = private unnamed_addr constant [52 x i8] c"\0A fatal error in BPG_writeToFile(%p,%s)\0A bad input\0A\00", align 1
@.str12 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@.str13 = private unnamed_addr constant [58 x i8] c"\0A error in BPG_writeToFile(%p,%s)\0A unable to open file %s\00", align 1
@.str14 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str15 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str16 = private unnamed_addr constant [61 x i8] c"\0A fatal error in BPG_writeToFormattedFile(%p,%p)\0A bad input\0A\00", align 1
@.str17 = private unnamed_addr constant [8 x i8] c"\0A %d %d\00", align 1
@.str18 = private unnamed_addr constant [86 x i8] c"\0A fatal error in BPG_writeToFormattedFile(%p,%p)\0A rc = %d, return from first fprintf\0A\00", align 1
@.str19 = private unnamed_addr constant [143 x i8] c"\0A fatal error in BPG_writeToFormattedFile(%p,%p)\0A rc = %d, return from Graph_writeToFormattedFile(%p,%p)\0A while attempting to write out graph\0A\00", align 1
@.str20 = private unnamed_addr constant [58 x i8] c"\0A fatal error in BPG_writeToBinaryFile(%p,%p)\0A bad input\0A\00", align 1
@.str21 = private unnamed_addr constant [72 x i8] c"\0A error in BPG_writeToBinaryFile(%p,%p)\0A %d of %d scalar items written\0A\00", align 1
@.str22 = private unnamed_addr constant [137 x i8] c"\0A fatal error in BPG_writeToBinaryFile(%p,%p)\0A rc = %d, return from Graph_writeToBinaryFile(%p,%p)\0A while attempting to write out graph\0A\00", align 1
@.str23 = private unnamed_addr constant [57 x i8] c"\0A fatal error in BPG_writeForHumanEye(%p,%p)\0A bad input\0A\00", align 1
@.str24 = private unnamed_addr constant [90 x i8] c"\0A fatal error in BPG_writeForHumanEye(%p,%p)\0A rc = %d, return from BPG_writeStats(%p,%p)\0A\00", align 1
@.str25 = private unnamed_addr constant [16 x i8] c"\0A\0A Graph object\00", align 1
@.str26 = private unnamed_addr constant [135 x i8] c"\0A fatal error in BPG_writeForHumanEye(%p,%p)\0A rc = %d, return from Graph_writeForHumanEye(%p,%p)\0A while attempting to write out graph\0A\00", align 1
@.str27 = private unnamed_addr constant [45 x i8] c"\0A error in BPG_writeStats(%p,%p)\0A bad input\0A\00", align 1
@.str28 = private unnamed_addr constant [55 x i8] c"\0A warning in BPG_writeStats(%p,%p)\0A bpg->graph = NULL\0A\00", align 1
@.str29 = private unnamed_addr constant [32 x i8] c"\0A BPG : unweighted bpg object :\00", align 1
@.str30 = private unnamed_addr constant [39 x i8] c"\0A BPG : vertices weighted bpg object :\00", align 1
@.str31 = private unnamed_addr constant [36 x i8] c"\0A BPG : edges weighted bpg object :\00", align 1
@.str32 = private unnamed_addr constant [49 x i8] c"\0A BPG : vertices and edges weighted bpg object :\00", align 1
@.str33 = private unnamed_addr constant [67 x i8] c"\0A fatal error in BPG_writeStats(%p,%p)\0A invalid bpg->g->type = %d\0A\00", align 1
@.str34 = private unnamed_addr constant [18 x i8] c" nX = %d, nY = %d\00", align 1
@.str35 = private unnamed_addr constant [21 x i8] c", |X| = %d, |Y| = %d\00", align 1
@.str36 = private unnamed_addr constant [70 x i8] c"\0A fatal error in BPG_writeStats(%p,%p)\0A rc = %d, return from fprintf\0A\00", align 1
@.str37 = private unnamed_addr constant [6 x i8] c".bpgf\00", align 1
@.str38 = private unnamed_addr constant [6 x i8] c".bpgb\00", align 1

; Function Attrs: nounwind optsize uwtable
define i32 @BPG_readFromFile(%struct._BPG* %bpg, i8* %fn) #0 {
entry:
  %cmp = icmp eq %struct._BPG* %bpg, null
  %cmp1 = icmp eq i8* %fn, null
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([47 x i8]* @.str, i64 0, i64 0), %struct._BPG* %bpg, i8* %fn) #5
  br label %return

if.end:                                           ; preds = %entry
  %call2 = tail call i64 @strlen(i8* %fn) #6
  %conv = trunc i64 %call2 to i32
  %cmp5 = icmp sgt i32 %conv, 5
  br i1 %cmp5, label %if.then7, label %if.else41

if.then7:                                         ; preds = %if.end
  %sub = shl i64 %call2, 32
  %sext = add i64 %sub, -21474836480
  %idxprom = ashr exact i64 %sext, 32
  %arrayidx = getelementptr inbounds i8* %fn, i64 %idxprom
  %call8 = tail call i32 @strcmp(i8* %arrayidx, i8* getelementptr inbounds ([6 x i8]* @.str38, i64 0, i64 0)) #6
  %cmp9 = icmp eq i32 %call8, 0
  br i1 %cmp9, label %if.then11, label %if.else20

if.then11:                                        ; preds = %if.then7
  %call12 = tail call %struct._IO_FILE* @fopen(i8* %fn, i8* getelementptr inbounds ([3 x i8]* @.str1, i64 0, i64 0)) #5
  %cmp13 = icmp eq %struct._IO_FILE* %call12, null
  br i1 %cmp13, label %if.then15, label %if.else

if.then15:                                        ; preds = %if.then11
  %1 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call16 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([59 x i8]* @.str2, i64 0, i64 0), %struct._BPG* %bpg, i8* %fn, i8* %fn) #5
  br label %return

if.else:                                          ; preds = %if.then11
  %call17 = tail call i32 @BPG_readFromBinaryFile(%struct._BPG* %bpg, %struct._IO_FILE* %call12) #7
  %call18 = tail call i32 @fclose(%struct._IO_FILE* %call12) #5
  br label %return

if.else20:                                        ; preds = %if.then7
  %call24 = tail call i32 @strcmp(i8* %arrayidx, i8* getelementptr inbounds ([6 x i8]* @.str37, i64 0, i64 0)) #6
  %cmp25 = icmp eq i32 %call24, 0
  br i1 %cmp25, label %if.then27, label %if.else37

if.then27:                                        ; preds = %if.else20
  %call28 = tail call %struct._IO_FILE* @fopen(i8* %fn, i8* getelementptr inbounds ([2 x i8]* @.str3, i64 0, i64 0)) #5
  %cmp29 = icmp eq %struct._IO_FILE* %call28, null
  br i1 %cmp29, label %if.then31, label %if.else33

if.then31:                                        ; preds = %if.then27
  %2 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call32 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([59 x i8]* @.str2, i64 0, i64 0), %struct._BPG* %bpg, i8* %fn, i8* %fn) #5
  br label %return

if.else33:                                        ; preds = %if.then27
  %call34 = tail call i32 @BPG_readFromFormattedFile(%struct._BPG* %bpg, %struct._IO_FILE* %call28) #7
  %call35 = tail call i32 @fclose(%struct._IO_FILE* %call28) #5
  br label %return

if.else37:                                        ; preds = %if.else20
  %3 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call38 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([102 x i8]* @.str4, i64 0, i64 0), %struct._BPG* %bpg, i8* %fn, i8* %fn, i8* getelementptr inbounds ([6 x i8]* @.str38, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8]* @.str37, i64 0, i64 0)) #5
  br label %return

if.else41:                                        ; preds = %if.end
  %4 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call42 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([102 x i8]* @.str4, i64 0, i64 0), %struct._BPG* %bpg, i8* %fn, i8* %fn, i8* getelementptr inbounds ([6 x i8]* @.str38, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8]* @.str37, i64 0, i64 0)) #5
  br label %return

return:                                           ; preds = %if.else41, %if.else37, %if.else33, %if.then31, %if.then15, %if.else, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %if.then15 ], [ %call17, %if.else ], [ 0, %if.then31 ], [ %call34, %if.else33 ], [ 0, %if.else37 ], [ 0, %if.else41 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #1

; Function Attrs: nounwind optsize readonly
declare i64 @strlen(i8* nocapture) #2

; Function Attrs: nounwind optsize readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) #2

; Function Attrs: nounwind optsize
declare noalias %struct._IO_FILE* @fopen(i8* nocapture, i8* nocapture) #1

; Function Attrs: nounwind optsize uwtable
define i32 @BPG_readFromBinaryFile(%struct._BPG* %bpg, %struct._IO_FILE* %fp) #0 {
entry:
  %itemp = alloca [2 x i32], align 4
  %cmp = icmp eq %struct._BPG* %bpg, null
  %cmp1 = icmp eq %struct._IO_FILE* %fp, null
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([59 x i8]* @.str8, i64 0, i64 0), %struct._BPG* %bpg, %struct._IO_FILE* %fp) #5
  br label %return

if.end:                                           ; preds = %entry
  call void @BPG_clearData(%struct._BPG* %bpg) #5
  %1 = bitcast [2 x i32]* %itemp to i8*
  %call2 = call i64 @fread(i8* %1, i64 4, i64 2, %struct._IO_FILE* %fp) #5
  %conv = trunc i64 %call2 to i32
  %cmp3 = icmp eq i32 %conv, 2
  br i1 %cmp3, label %if.end7, label %if.then5

if.then5:                                         ; preds = %if.end
  %2 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call6 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([63 x i8]* @.str9, i64 0, i64 0), %struct._BPG* %bpg, %struct._IO_FILE* %fp, i32 %conv, i32 2) #5
  br label %return

if.end7:                                          ; preds = %if.end
  %arrayidx = getelementptr inbounds [2 x i32]* %itemp, i64 0, i64 0
  %3 = load i32* %arrayidx, align 4, !tbaa !3
  %arrayidx8 = getelementptr inbounds [2 x i32]* %itemp, i64 0, i64 1
  %4 = load i32* %arrayidx8, align 4, !tbaa !3
  %call9 = call %struct._Graph* @Graph_new() #5
  call void @Graph_setDefaultFields(%struct._Graph* %call9) #5
  %call10 = call i32 @Graph_readFromBinaryFile(%struct._Graph* %call9, %struct._IO_FILE* %fp) #5
  %cmp11 = icmp eq i32 %call10, 1
  br i1 %cmp11, label %if.end15, label %if.then13

if.then13:                                        ; preds = %if.end7
  %5 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call14 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([115 x i8]* @.str10, i64 0, i64 0), %struct._BPG* %bpg, %struct._IO_FILE* %fp, i32 %call10, %struct._Graph* %call9, %struct._IO_FILE* %fp) #5
  br label %return

if.end15:                                         ; preds = %if.end7
  call void @BPG_init(%struct._BPG* %bpg, i32 %3, i32 %4, %struct._Graph* %call9) #5
  br label %return

return:                                           ; preds = %if.end15, %if.then13, %if.then5, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %if.then5 ], [ 0, %if.then13 ], [ 1, %if.end15 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind optsize
declare i32 @fclose(%struct._IO_FILE* nocapture) #1

; Function Attrs: nounwind optsize uwtable
define i32 @BPG_readFromFormattedFile(%struct._BPG* %bpg, %struct._IO_FILE* %fp) #0 {
entry:
  %itemp = alloca [2 x i32], align 4
  %cmp = icmp eq %struct._BPG* %bpg, null
  %cmp1 = icmp eq %struct._IO_FILE* %fp, null
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([56 x i8]* @.str5, i64 0, i64 0), %struct._BPG* %bpg, %struct._IO_FILE* %fp) #5
  br label %return

if.end:                                           ; preds = %entry
  call void @BPG_clearData(%struct._BPG* %bpg) #5
  %arraydecay = getelementptr inbounds [2 x i32]* %itemp, i64 0, i64 0
  %call2 = call i32 @IVfscanf(%struct._IO_FILE* %fp, i32 2, i32* %arraydecay) #5
  %cmp3 = icmp eq i32 %call2, 2
  br i1 %cmp3, label %if.end6, label %if.then4

if.then4:                                         ; preds = %if.end
  %1 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call5 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([66 x i8]* @.str6, i64 0, i64 0), %struct._BPG* %bpg, %struct._IO_FILE* %fp, i32 %call2, i32 2) #5
  br label %return

if.end6:                                          ; preds = %if.end
  %2 = load i32* %arraydecay, align 4, !tbaa !3
  %arrayidx7 = getelementptr inbounds [2 x i32]* %itemp, i64 0, i64 1
  %3 = load i32* %arrayidx7, align 4, !tbaa !3
  %call8 = call %struct._Graph* @Graph_new() #5
  call void @Graph_setDefaultFields(%struct._Graph* %call8) #5
  %call9 = call i32 @Graph_readFromFormattedFile(%struct._Graph* %call8, %struct._IO_FILE* %fp) #5
  %cmp10 = icmp eq i32 %call9, 1
  br i1 %cmp10, label %if.end13, label %if.then11

if.then11:                                        ; preds = %if.end6
  %4 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call12 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([121 x i8]* @.str7, i64 0, i64 0), %struct._BPG* %bpg, %struct._IO_FILE* %fp, i32 %call9, %struct._Graph* %call8, %struct._IO_FILE* %fp) #5
  br label %return

if.end13:                                         ; preds = %if.end6
  call void @BPG_init(%struct._BPG* %bpg, i32 %2, i32 %3, %struct._Graph* %call8) #5
  br label %return

return:                                           ; preds = %if.end13, %if.then11, %if.then4, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %if.then4 ], [ 0, %if.then11 ], [ 1, %if.end13 ]
  ret i32 %retval.0
}

; Function Attrs: optsize
declare void @BPG_clearData(%struct._BPG*) #3

; Function Attrs: optsize
declare i32 @IVfscanf(%struct._IO_FILE*, i32, i32*) #3

; Function Attrs: optsize
declare %struct._Graph* @Graph_new() #3

; Function Attrs: optsize
declare void @Graph_setDefaultFields(%struct._Graph*) #3

; Function Attrs: optsize
declare i32 @Graph_readFromFormattedFile(%struct._Graph*, %struct._IO_FILE*) #3

; Function Attrs: optsize
declare void @BPG_init(%struct._BPG*, i32, i32, %struct._Graph*) #3

; Function Attrs: nounwind optsize
declare i64 @fread(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #1

; Function Attrs: optsize
declare i32 @Graph_readFromBinaryFile(%struct._Graph*, %struct._IO_FILE*) #3

; Function Attrs: nounwind optsize uwtable
define i32 @BPG_writeToFile(%struct._BPG* %bpg, i8* %fn) #0 {
entry:
  %cmp = icmp eq %struct._BPG* %bpg, null
  %cmp1 = icmp eq i8* %fn, null
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([52 x i8]* @.str11, i64 0, i64 0), %struct._BPG* %bpg, i8* %fn) #5
  br label %return

if.end:                                           ; preds = %entry
  %call2 = tail call i64 @strlen(i8* %fn) #6
  %conv = trunc i64 %call2 to i32
  %cmp5 = icmp sgt i32 %conv, 5
  br i1 %cmp5, label %if.then7, label %if.else49

if.then7:                                         ; preds = %if.end
  %sub = shl i64 %call2, 32
  %sext = add i64 %sub, -21474836480
  %idxprom = ashr exact i64 %sext, 32
  %arrayidx = getelementptr inbounds i8* %fn, i64 %idxprom
  %call8 = tail call i32 @strcmp(i8* %arrayidx, i8* getelementptr inbounds ([6 x i8]* @.str38, i64 0, i64 0)) #6
  %cmp9 = icmp eq i32 %call8, 0
  br i1 %cmp9, label %if.then11, label %if.else20

if.then11:                                        ; preds = %if.then7
  %call12 = tail call %struct._IO_FILE* @fopen(i8* %fn, i8* getelementptr inbounds ([3 x i8]* @.str12, i64 0, i64 0)) #5
  %cmp13 = icmp eq %struct._IO_FILE* %call12, null
  br i1 %cmp13, label %if.then15, label %if.else

if.then15:                                        ; preds = %if.then11
  %1 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call16 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([58 x i8]* @.str13, i64 0, i64 0), %struct._BPG* %bpg, i8* %fn, i8* %fn) #5
  br label %return

if.else:                                          ; preds = %if.then11
  %call17 = tail call i32 @BPG_writeToBinaryFile(%struct._BPG* %bpg, %struct._IO_FILE* %call12) #7
  %call18 = tail call i32 @fclose(%struct._IO_FILE* %call12) #5
  br label %return

if.else20:                                        ; preds = %if.then7
  %call24 = tail call i32 @strcmp(i8* %arrayidx, i8* getelementptr inbounds ([6 x i8]* @.str37, i64 0, i64 0)) #6
  %cmp25 = icmp eq i32 %call24, 0
  br i1 %cmp25, label %if.then27, label %if.else37

if.then27:                                        ; preds = %if.else20
  %call28 = tail call %struct._IO_FILE* @fopen(i8* %fn, i8* getelementptr inbounds ([2 x i8]* @.str14, i64 0, i64 0)) #5
  %cmp29 = icmp eq %struct._IO_FILE* %call28, null
  br i1 %cmp29, label %if.then31, label %if.else33

if.then31:                                        ; preds = %if.then27
  %2 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call32 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([58 x i8]* @.str13, i64 0, i64 0), %struct._BPG* %bpg, i8* %fn, i8* %fn) #5
  br label %return

if.else33:                                        ; preds = %if.then27
  %call34 = tail call i32 @BPG_writeToFormattedFile(%struct._BPG* %bpg, %struct._IO_FILE* %call28) #7
  %call35 = tail call i32 @fclose(%struct._IO_FILE* %call28) #5
  br label %return

if.else37:                                        ; preds = %if.else20
  %call38 = tail call %struct._IO_FILE* @fopen(i8* %fn, i8* getelementptr inbounds ([2 x i8]* @.str15, i64 0, i64 0)) #5
  %cmp39 = icmp eq %struct._IO_FILE* %call38, null
  br i1 %cmp39, label %if.then41, label %if.else43

if.then41:                                        ; preds = %if.else37
  %3 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call42 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([58 x i8]* @.str13, i64 0, i64 0), %struct._BPG* %bpg, i8* %fn, i8* %fn) #5
  br label %return

if.else43:                                        ; preds = %if.else37
  %call44 = tail call i32 @BPG_writeForHumanEye(%struct._BPG* %bpg, %struct._IO_FILE* %call38) #7
  %call45 = tail call i32 @fclose(%struct._IO_FILE* %call38) #5
  br label %return

if.else49:                                        ; preds = %if.end
  %call50 = tail call %struct._IO_FILE* @fopen(i8* %fn, i8* getelementptr inbounds ([2 x i8]* @.str15, i64 0, i64 0)) #5
  %cmp51 = icmp eq %struct._IO_FILE* %call50, null
  br i1 %cmp51, label %if.then53, label %if.else55

if.then53:                                        ; preds = %if.else49
  %4 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call54 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([58 x i8]* @.str13, i64 0, i64 0), %struct._BPG* %bpg, i8* %fn, i8* %fn) #5
  br label %return

if.else55:                                        ; preds = %if.else49
  %call56 = tail call i32 @BPG_writeForHumanEye(%struct._BPG* %bpg, %struct._IO_FILE* %call50) #7
  %call57 = tail call i32 @fclose(%struct._IO_FILE* %call50) #5
  br label %return

return:                                           ; preds = %if.else33, %if.then31, %if.else43, %if.then41, %if.then15, %if.else, %if.else55, %if.then53, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %if.then15 ], [ %call17, %if.else ], [ 0, %if.then31 ], [ %call34, %if.else33 ], [ 0, %if.then41 ], [ %call44, %if.else43 ], [ 0, %if.then53 ], [ %call56, %if.else55 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind optsize uwtable
define i32 @BPG_writeToBinaryFile(%struct._BPG* %bpg, %struct._IO_FILE* %fp) #0 {
entry:
  %itemp = alloca [6 x i32], align 16
  %cmp = icmp eq %struct._BPG* %bpg, null
  %cmp1 = icmp eq %struct._IO_FILE* %fp, null
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([58 x i8]* @.str20, i64 0, i64 0), %struct._BPG* %bpg, %struct._IO_FILE* %fp) #5
  br label %return

if.end:                                           ; preds = %entry
  %nX = getelementptr inbounds %struct._BPG* %bpg, i64 0, i32 0
  %1 = load i32* %nX, align 4, !tbaa !3
  %arrayidx = getelementptr inbounds [6 x i32]* %itemp, i64 0, i64 0
  store i32 %1, i32* %arrayidx, align 16, !tbaa !3
  %nY = getelementptr inbounds %struct._BPG* %bpg, i64 0, i32 1
  %2 = load i32* %nY, align 4, !tbaa !3
  %arrayidx2 = getelementptr inbounds [6 x i32]* %itemp, i64 0, i64 1
  store i32 %2, i32* %arrayidx2, align 4, !tbaa !3
  %3 = bitcast [6 x i32]* %itemp to i8*
  %call3 = call i64 @fwrite(i8* %3, i64 4, i64 6, %struct._IO_FILE* %fp) #5
  %conv = trunc i64 %call3 to i32
  %cmp4 = icmp eq i32 %conv, 6
  br i1 %cmp4, label %if.end8, label %if.then6

if.then6:                                         ; preds = %if.end
  %4 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call7 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([72 x i8]* @.str21, i64 0, i64 0), %struct._BPG* %bpg, %struct._IO_FILE* %fp, i32 %conv, i32 6) #5
  br label %return

if.end8:                                          ; preds = %if.end
  %graph = getelementptr inbounds %struct._BPG* %bpg, i64 0, i32 2
  %5 = load %struct._Graph** %graph, align 8, !tbaa !0
  %call9 = call i32 @Graph_writeToBinaryFile(%struct._Graph* %5, %struct._IO_FILE* %fp) #5
  %cmp10 = icmp slt i32 %call9, 0
  br i1 %cmp10, label %if.then12, label %return

if.then12:                                        ; preds = %if.end8
  %6 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %7 = load %struct._Graph** %graph, align 8, !tbaa !0
  %call14 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %6, i8* getelementptr inbounds ([137 x i8]* @.str22, i64 0, i64 0), %struct._BPG* %bpg, %struct._IO_FILE* %fp, i32 %call9, %struct._Graph* %7, %struct._IO_FILE* %fp) #5
  br label %return

return:                                           ; preds = %if.end8, %if.then12, %if.then6, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %if.then6 ], [ 0, %if.then12 ], [ 1, %if.end8 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind optsize uwtable
define i32 @BPG_writeToFormattedFile(%struct._BPG* %bpg, %struct._IO_FILE* %fp) #0 {
entry:
  %cmp = icmp eq %struct._BPG* %bpg, null
  %cmp1 = icmp eq %struct._IO_FILE* %fp, null
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([61 x i8]* @.str16, i64 0, i64 0), %struct._BPG* %bpg, %struct._IO_FILE* %fp) #5
  br label %return

if.end:                                           ; preds = %entry
  %nX = getelementptr inbounds %struct._BPG* %bpg, i64 0, i32 0
  %1 = load i32* %nX, align 4, !tbaa !3
  %nY = getelementptr inbounds %struct._BPG* %bpg, i64 0, i32 1
  %2 = load i32* %nY, align 4, !tbaa !3
  %call2 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([8 x i8]* @.str17, i64 0, i64 0), i32 %1, i32 %2) #5
  %cmp3 = icmp slt i32 %call2, 0
  br i1 %cmp3, label %if.then4, label %if.end6

if.then4:                                         ; preds = %if.end
  %3 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call5 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([86 x i8]* @.str18, i64 0, i64 0), %struct._BPG* %bpg, %struct._IO_FILE* %fp, i32 %call2) #5
  br label %return

if.end6:                                          ; preds = %if.end
  %graph = getelementptr inbounds %struct._BPG* %bpg, i64 0, i32 2
  %4 = load %struct._Graph** %graph, align 8, !tbaa !0
  %call7 = tail call i32 @Graph_writeToFormattedFile(%struct._Graph* %4, %struct._IO_FILE* %fp) #5
  %cmp8 = icmp slt i32 %call7, 0
  br i1 %cmp8, label %if.then9, label %return

if.then9:                                         ; preds = %if.end6
  %5 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %6 = load %struct._Graph** %graph, align 8, !tbaa !0
  %call11 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([143 x i8]* @.str19, i64 0, i64 0), %struct._BPG* %bpg, %struct._IO_FILE* %fp, i32 %call7, %struct._Graph* %6, %struct._IO_FILE* %fp) #5
  br label %return

return:                                           ; preds = %if.end6, %if.then9, %if.then4, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %if.then4 ], [ 0, %if.then9 ], [ 1, %if.end6 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind optsize uwtable
define i32 @BPG_writeForHumanEye(%struct._BPG* %bpg, %struct._IO_FILE* %fp) #0 {
entry:
  %cmp = icmp eq %struct._BPG* %bpg, null
  %cmp1 = icmp eq %struct._IO_FILE* %fp, null
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([57 x i8]* @.str23, i64 0, i64 0), %struct._BPG* %bpg, %struct._IO_FILE* %fp) #5
  tail call void @exit(i32 -1) #8
  unreachable

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @BPG_writeStats(%struct._BPG* %bpg, %struct._IO_FILE* %fp) #7
  %cmp3 = icmp eq i32 %call2, 0
  br i1 %cmp3, label %if.then4, label %if.end6

if.then4:                                         ; preds = %if.end
  %1 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call5 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([90 x i8]* @.str24, i64 0, i64 0), %struct._BPG* %bpg, %struct._IO_FILE* %fp, i32 0, %struct._BPG* %bpg, %struct._IO_FILE* %fp) #5
  br label %return

if.end6:                                          ; preds = %if.end
  %call7 = tail call i32 @fflush(%struct._IO_FILE* %fp) #5
  %graph = getelementptr inbounds %struct._BPG* %bpg, i64 0, i32 2
  %2 = load %struct._Graph** %graph, align 8, !tbaa !0
  %cmp8 = icmp eq %struct._Graph* %2, null
  br i1 %cmp8, label %return, label %if.then9

if.then9:                                         ; preds = %if.end6
  %3 = tail call i64 @fwrite(i8* getelementptr inbounds ([16 x i8]* @.str25, i64 0, i64 0), i64 15, i64 1, %struct._IO_FILE* %fp) #9
  %4 = load %struct._Graph** %graph, align 8, !tbaa !0
  %call12 = tail call i32 @Graph_writeForHumanEye(%struct._Graph* %4, %struct._IO_FILE* %fp) #5
  %cmp13 = icmp slt i32 %call12, 0
  br i1 %cmp13, label %if.then14, label %return

if.then14:                                        ; preds = %if.then9
  %5 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %6 = load %struct._Graph** %graph, align 8, !tbaa !0
  %call16 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([135 x i8]* @.str26, i64 0, i64 0), %struct._BPG* %bpg, %struct._IO_FILE* %fp, i32 %call12, %struct._Graph* %6, %struct._IO_FILE* %fp) #5
  br label %return

return:                                           ; preds = %if.then9, %if.end6, %if.then14, %if.then4
  %retval.0 = phi i32 [ 0, %if.then4 ], [ 0, %if.then14 ], [ 1, %if.end6 ], [ 1, %if.then9 ]
  ret i32 %retval.0
}

; Function Attrs: optsize
declare i32 @Graph_writeToFormattedFile(%struct._Graph*, %struct._IO_FILE*) #3

; Function Attrs: nounwind optsize
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #1

; Function Attrs: optsize
declare i32 @Graph_writeToBinaryFile(%struct._Graph*, %struct._IO_FILE*) #3

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32) #4

; Function Attrs: nounwind optsize uwtable
define i32 @BPG_writeStats(%struct._BPG* %bpg, %struct._IO_FILE* %fp) #0 {
entry:
  %cmp = icmp eq %struct._BPG* %bpg, null
  %cmp1 = icmp eq %struct._IO_FILE* %fp, null
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([45 x i8]* @.str27, i64 0, i64 0), %struct._BPG* %bpg, %struct._IO_FILE* %fp) #5
  tail call void @exit(i32 -1) #8
  unreachable

if.end:                                           ; preds = %entry
  %graph = getelementptr inbounds %struct._BPG* %bpg, i64 0, i32 2
  %1 = load %struct._Graph** %graph, align 8, !tbaa !0
  %cmp2 = icmp eq %struct._Graph* %1, null
  br i1 %cmp2, label %if.then3, label %if.end5

if.then3:                                         ; preds = %if.end
  %2 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call4 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([55 x i8]* @.str28, i64 0, i64 0), %struct._BPG* %bpg, %struct._IO_FILE* %fp) #5
  br label %return

if.end5:                                          ; preds = %if.end
  %type = getelementptr inbounds %struct._Graph* %1, i64 0, i32 0
  %3 = load i32* %type, align 4, !tbaa !3
  switch i32 %3, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb8
    i32 2, label %sw.bb10
    i32 3, label %sw.bb12
  ]

sw.bb:                                            ; preds = %if.end5
  %call7 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([32 x i8]* @.str29, i64 0, i64 0)) #5
  br label %sw.epilog

sw.bb8:                                           ; preds = %if.end5
  %call9 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([39 x i8]* @.str30, i64 0, i64 0)) #5
  br label %sw.epilog

sw.bb10:                                          ; preds = %if.end5
  %call11 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([36 x i8]* @.str31, i64 0, i64 0)) #5
  br label %sw.epilog

sw.bb12:                                          ; preds = %if.end5
  %call13 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([49 x i8]* @.str32, i64 0, i64 0)) #5
  br label %sw.epilog

sw.default:                                       ; preds = %if.end5
  %4 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call16 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([67 x i8]* @.str33, i64 0, i64 0), %struct._BPG* %bpg, %struct._IO_FILE* %fp, i32 %3) #5
  br label %return

sw.epilog:                                        ; preds = %sw.bb12, %sw.bb10, %sw.bb8, %sw.bb
  %rc.0 = phi i32 [ %call13, %sw.bb12 ], [ %call11, %sw.bb10 ], [ %call9, %sw.bb8 ], [ %call7, %sw.bb ]
  %cmp17 = icmp slt i32 %rc.0, 0
  br i1 %cmp17, label %IO_error, label %if.end19

if.end19:                                         ; preds = %sw.epilog
  %call20 = tail call i32 @fflush(%struct._IO_FILE* %fp) #5
  %nX = getelementptr inbounds %struct._BPG* %bpg, i64 0, i32 0
  %5 = load i32* %nX, align 4, !tbaa !3
  %nY = getelementptr inbounds %struct._BPG* %bpg, i64 0, i32 1
  %6 = load i32* %nY, align 4, !tbaa !3
  %call21 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([18 x i8]* @.str34, i64 0, i64 0), i32 %5, i32 %6) #5
  %cmp22 = icmp slt i32 %call21, 0
  br i1 %cmp22, label %IO_error, label %if.end24

if.end24:                                         ; preds = %if.end19
  %call25 = tail call i32 @fflush(%struct._IO_FILE* %fp) #5
  %7 = load %struct._Graph** %graph, align 8, !tbaa !0
  %cmp27 = icmp eq %struct._Graph* %7, null
  br i1 %cmp27, label %if.end49, label %if.then28

if.then28:                                        ; preds = %if.end24
  %vwghts = getelementptr inbounds %struct._Graph* %7, i64 0, i32 7
  %8 = load i32** %vwghts, align 8, !tbaa !0
  %cmp30 = icmp eq i32* %8, null
  %9 = load i32* %nX, align 4, !tbaa !3
  br i1 %cmp30, label %if.else, label %if.then31

if.then31:                                        ; preds = %if.then28
  %call35 = tail call i32 @IVsum(i32 %9, i32* %8) #5
  %10 = load i32* %nY, align 4, !tbaa !3
  %11 = load %struct._Graph** %graph, align 8, !tbaa !0
  %vwghts38 = getelementptr inbounds %struct._Graph* %11, i64 0, i32 7
  %12 = load i32** %vwghts38, align 8, !tbaa !0
  %13 = load i32* %nX, align 4, !tbaa !3
  %idx.ext = sext i32 %13 to i64
  %add.ptr = getelementptr inbounds i32* %12, i64 %idx.ext
  %call40 = tail call i32 @IVsum(i32 %10, i32* %add.ptr) #5
  %call41 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([21 x i8]* @.str35, i64 0, i64 0), i32 %call35, i32 %call40) #5
  br label %if.end46

if.else:                                          ; preds = %if.then28
  %14 = load i32* %nY, align 4, !tbaa !3
  %call44 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([21 x i8]* @.str35, i64 0, i64 0), i32 %9, i32 %14) #5
  br label %if.end46

if.end46:                                         ; preds = %if.then31, %if.else
  %rc.1 = phi i32 [ %call41, %if.then31 ], [ %call44, %if.else ]
  %cmp47 = icmp slt i32 %rc.1, 0
  br i1 %cmp47, label %IO_error, label %if.end49

if.end49:                                         ; preds = %if.end24, %if.end46
  %call50 = tail call i32 @fflush(%struct._IO_FILE* %fp) #5
  br label %return

IO_error:                                         ; preds = %if.end46, %if.end19, %sw.epilog
  %rc.2 = phi i32 [ %rc.0, %sw.epilog ], [ %call21, %if.end19 ], [ %rc.1, %if.end46 ]
  %15 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call51 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %15, i8* getelementptr inbounds ([70 x i8]* @.str36, i64 0, i64 0), %struct._BPG* %bpg, %struct._IO_FILE* %fp, i32 %rc.2) #5
  br label %return

return:                                           ; preds = %IO_error, %if.end49, %sw.default, %if.then3
  %retval.0 = phi i32 [ 1, %if.then3 ], [ 0, %sw.default ], [ 0, %IO_error ], [ 1, %if.end49 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind optsize
declare i32 @fflush(%struct._IO_FILE* nocapture) #1

; Function Attrs: optsize
declare i32 @Graph_writeForHumanEye(%struct._Graph*, %struct._IO_FILE*) #3

; Function Attrs: optsize
declare i32 @IVsum(i32, i32*) #3

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind optsize readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind optsize }
attributes #6 = { nounwind optsize readonly }
attributes #7 = { optsize }
attributes #8 = { noreturn nounwind optsize }
attributes #9 = { nounwind }

!0 = metadata !{metadata !"any pointer", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"int", metadata !1}
