; ModuleID = '../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ETree/src/ETree_IO.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct._ETree = type { i32, i32, %struct._Tree*, %struct._IV*, %struct._IV*, %struct._IV* }
%struct._Tree = type { i32, i32, i32*, i32*, i32* }
%struct._IV = type { i32, i32, i32, i32* }

@stderr = external global %struct._IO_FILE*
@.str = private unnamed_addr constant [49 x i8] c"\0A error in ETree_readFromFile(%p,%s)\0A bad input\0A\00", align 1
@.str1 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str2 = private unnamed_addr constant [61 x i8] c"\0A error in ETree_readFromFile(%p,%s)\0A unable to open file %s\00", align 1
@.str3 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str4 = private unnamed_addr constant [106 x i8] c"\0A error in ETree_readFromFile(%p,%s)\0A bad ETree file name %s,\0A must end in %s (binary) or %s (formatted)\0A\00", align 1
@.str5 = private unnamed_addr constant [58 x i8] c"\0A error in ETree_readFromFormattedFile(%p,%p)\0A bad input\0A\00", align 1
@.str6 = private unnamed_addr constant [68 x i8] c"\0A error in ETree_readFromFormattedFile(%p,%p)\0A %d items of %d read\0A\00", align 1
@.str7 = private unnamed_addr constant [61 x i8] c"\0A fatal error in ETree_readFromBinaryFile(%p,%p)\0A bad input\0A\00", align 1
@.str8 = private unnamed_addr constant [76 x i8] c"\0A error in ETree_readFromBinaryFile(%p,%p)\0A itemp(2) : %d items of %d read\0A\00", align 1
@.str9 = private unnamed_addr constant [54 x i8] c"\0A fatal error in ETree_writeToFile(%p,%s)\0A bad input\0A\00", align 1
@.str10 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@.str11 = private unnamed_addr constant [60 x i8] c"\0A error in ETree_writeToFile(%p,%s)\0A unable to open file %s\00", align 1
@.str12 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str13 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str14 = private unnamed_addr constant [63 x i8] c"\0A fatal error in ETree_writeToFormattedFile(%p,%p)\0A bad input\0A\00", align 1
@.str15 = private unnamed_addr constant [8 x i8] c"\0A %d %d\00", align 1
@.str16 = private unnamed_addr constant [88 x i8] c"\0A fatal error in ETree_writeToFormattedFile(%p,%p)\0A rc = %d, return from first fprintf\0A\00", align 1
@.str17 = private unnamed_addr constant [95 x i8] c"\0A fatal error in ETree_writeToFormattedFile(%p,%p)\0A rc = %d, return from writing Tree to file\0A\00", align 1
@.str18 = private unnamed_addr constant [101 x i8] c"\0A fatal error in ETree_writeToFormattedFile(%p,%p)\0A rc = %d, return from writing nodwghtsIV to file\0A\00", align 1
@.str19 = private unnamed_addr constant [101 x i8] c"\0A fatal error in ETree_writeToFormattedFile(%p,%p)\0A rc = %d, return from writing bndwghtsIV to file\0A\00", align 1
@.str20 = private unnamed_addr constant [103 x i8] c"\0A fatal error in ETree_writeToFormattedFile(%p,%p)\0A rc = %d, return from writing vtxToFrontIV to file\0A\00", align 1
@.str21 = private unnamed_addr constant [60 x i8] c"\0A fatal error in ETree_writeToBinaryFile(%p,%p)\0A bad input\0A\00", align 1
@.str22 = private unnamed_addr constant [74 x i8] c"\0A error in ETree_writeToBinaryFile(%p,%p)\0A %d of %d scalar items written\0A\00", align 1
@.str23 = private unnamed_addr constant [92 x i8] c"\0A fatal error in ETree_writeToBinaryFile(%p,%p)\0A rc = %d, return from writing Tree to file\0A\00", align 1
@.str24 = private unnamed_addr constant [98 x i8] c"\0A fatal error in ETree_writeToBinaryFile(%p,%p)\0A rc = %d, return from writing nodwghtsIV to file\0A\00", align 1
@.str25 = private unnamed_addr constant [98 x i8] c"\0A fatal error in ETree_writeToBinaryFile(%p,%p)\0A rc = %d, return from writing bndwghtsIV to file\0A\00", align 1
@.str26 = private unnamed_addr constant [100 x i8] c"\0A fatal error in ETree_writeToBinaryFile(%p,%p)\0A rc = %d, return from writing vtxToFrontIV to file\0A\00", align 1
@.str27 = private unnamed_addr constant [59 x i8] c"\0A fatal error in ETree_writeForHumanEye(%p,%p)\0A bad input\0A\00", align 1
@.str28 = private unnamed_addr constant [94 x i8] c"\0A fatal error in ETree_writeForHumanEye(%p,%p)\0A rc = %d, return from ETree_writeStats(%p,%p)\0A\00", align 1
@.str29 = private unnamed_addr constant [57 x i8] c"\0A front    parent   fchild   sibling   nodwght   bndwght\00", align 1
@.str30 = private unnamed_addr constant [27 x i8] c"\0A %5d %9d %9d %9d %9d %9d \00", align 1
@.str31 = private unnamed_addr constant [24 x i8] c"\0A\0A vtxToFront IV object\00", align 1
@.str32 = private unnamed_addr constant [47 x i8] c"\0A error in ETree_writeStats(%p,%p)\0A bad input\0A\00", align 1
@.str33 = private unnamed_addr constant [63 x i8] c"\0A ETree : etree object, %d fronts, %d vertices, takes %d bytes\00", align 1
@.str34 = private unnamed_addr constant [72 x i8] c"\0A fatal error in ETree_writeStats(%p,%p)\0A rc = %d, return from fprintf\0A\00", align 1
@.str35 = private unnamed_addr constant [8 x i8] c".etreef\00", align 1
@.str36 = private unnamed_addr constant [8 x i8] c".etreeb\00", align 1

; Function Attrs: nounwind optsize uwtable
define i32 @ETree_readFromFile(%struct._ETree* %etree, i8* %fn) #0 {
entry:
  %cmp = icmp eq %struct._ETree* %etree, null
  %cmp1 = icmp eq i8* %fn, null
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([49 x i8]* @.str, i64 0, i64 0), %struct._ETree* %etree, i8* %fn) #5
  br label %return

if.end:                                           ; preds = %entry
  %call2 = tail call i64 @strlen(i8* %fn) #6
  %conv = trunc i64 %call2 to i32
  %cmp5 = icmp sgt i32 %conv, 7
  br i1 %cmp5, label %if.then7, label %if.else41

if.then7:                                         ; preds = %if.end
  %sub = shl i64 %call2, 32
  %sext = add i64 %sub, -30064771072
  %idxprom = ashr exact i64 %sext, 32
  %arrayidx = getelementptr inbounds i8* %fn, i64 %idxprom
  %call8 = tail call i32 @strcmp(i8* %arrayidx, i8* getelementptr inbounds ([8 x i8]* @.str36, i64 0, i64 0)) #6
  %cmp9 = icmp eq i32 %call8, 0
  br i1 %cmp9, label %if.then11, label %if.else20

if.then11:                                        ; preds = %if.then7
  %call12 = tail call %struct._IO_FILE* @fopen(i8* %fn, i8* getelementptr inbounds ([3 x i8]* @.str1, i64 0, i64 0)) #5
  %cmp13 = icmp eq %struct._IO_FILE* %call12, null
  br i1 %cmp13, label %if.then15, label %if.else

if.then15:                                        ; preds = %if.then11
  %1 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call16 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([61 x i8]* @.str2, i64 0, i64 0), %struct._ETree* %etree, i8* %fn, i8* %fn) #5
  br label %return

if.else:                                          ; preds = %if.then11
  %call17 = tail call i32 @ETree_readFromBinaryFile(%struct._ETree* %etree, %struct._IO_FILE* %call12) #7
  %call18 = tail call i32 @fclose(%struct._IO_FILE* %call12) #5
  br label %return

if.else20:                                        ; preds = %if.then7
  %call24 = tail call i32 @strcmp(i8* %arrayidx, i8* getelementptr inbounds ([8 x i8]* @.str35, i64 0, i64 0)) #6
  %cmp25 = icmp eq i32 %call24, 0
  br i1 %cmp25, label %if.then27, label %if.else37

if.then27:                                        ; preds = %if.else20
  %call28 = tail call %struct._IO_FILE* @fopen(i8* %fn, i8* getelementptr inbounds ([2 x i8]* @.str3, i64 0, i64 0)) #5
  %cmp29 = icmp eq %struct._IO_FILE* %call28, null
  br i1 %cmp29, label %if.then31, label %if.else33

if.then31:                                        ; preds = %if.then27
  %2 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call32 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([61 x i8]* @.str2, i64 0, i64 0), %struct._ETree* %etree, i8* %fn, i8* %fn) #5
  br label %return

if.else33:                                        ; preds = %if.then27
  %call34 = tail call i32 @ETree_readFromFormattedFile(%struct._ETree* %etree, %struct._IO_FILE* %call28) #7
  %call35 = tail call i32 @fclose(%struct._IO_FILE* %call28) #5
  br label %return

if.else37:                                        ; preds = %if.else20
  %3 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call38 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([106 x i8]* @.str4, i64 0, i64 0), %struct._ETree* %etree, i8* %fn, i8* %fn, i8* getelementptr inbounds ([8 x i8]* @.str36, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str35, i64 0, i64 0)) #5
  br label %return

if.else41:                                        ; preds = %if.end
  %4 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call42 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([106 x i8]* @.str4, i64 0, i64 0), %struct._ETree* %etree, i8* %fn, i8* %fn, i8* getelementptr inbounds ([8 x i8]* @.str36, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str35, i64 0, i64 0)) #5
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
define i32 @ETree_readFromBinaryFile(%struct._ETree* %etree, %struct._IO_FILE* %fp) #0 {
entry:
  %itemp = alloca [2 x i32], align 4
  %cmp = icmp eq %struct._ETree* %etree, null
  %cmp1 = icmp eq %struct._IO_FILE* %fp, null
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([61 x i8]* @.str7, i64 0, i64 0), %struct._ETree* %etree, %struct._IO_FILE* %fp) #5
  br label %return

if.end:                                           ; preds = %entry
  call void @ETree_clearData(%struct._ETree* %etree) #5
  call void @ETree_init1(%struct._ETree* %etree, i32 0, i32 0) #5
  %1 = bitcast [2 x i32]* %itemp to i8*
  %call2 = call i64 @fread(i8* %1, i64 4, i64 2, %struct._IO_FILE* %fp) #5
  %conv = trunc i64 %call2 to i32
  %cmp3 = icmp eq i32 %conv, 2
  br i1 %cmp3, label %if.end7, label %if.then5

if.then5:                                         ; preds = %if.end
  %2 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call6 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([76 x i8]* @.str8, i64 0, i64 0), %struct._ETree* %etree, %struct._IO_FILE* %fp, i32 %conv, i32 2) #5
  br label %return

if.end7:                                          ; preds = %if.end
  %arrayidx = getelementptr inbounds [2 x i32]* %itemp, i64 0, i64 0
  %3 = load i32* %arrayidx, align 4, !tbaa !3
  %nfront = getelementptr inbounds %struct._ETree* %etree, i64 0, i32 0
  store i32 %3, i32* %nfront, align 4, !tbaa !3
  %arrayidx8 = getelementptr inbounds [2 x i32]* %itemp, i64 0, i64 1
  %4 = load i32* %arrayidx8, align 4, !tbaa !3
  %nvtx = getelementptr inbounds %struct._ETree* %etree, i64 0, i32 1
  store i32 %4, i32* %nvtx, align 4, !tbaa !3
  %tree = getelementptr inbounds %struct._ETree* %etree, i64 0, i32 2
  %5 = load %struct._Tree** %tree, align 8, !tbaa !0
  %call9 = call i32 @Tree_readFromBinaryFile(%struct._Tree* %5, %struct._IO_FILE* %fp) #5
  %nodwghtsIV = getelementptr inbounds %struct._ETree* %etree, i64 0, i32 3
  %6 = load %struct._IV** %nodwghtsIV, align 8, !tbaa !0
  %call10 = call i32 @IV_readFromBinaryFile(%struct._IV* %6, %struct._IO_FILE* %fp) #5
  %bndwghtsIV = getelementptr inbounds %struct._ETree* %etree, i64 0, i32 4
  %7 = load %struct._IV** %bndwghtsIV, align 8, !tbaa !0
  %call11 = call i32 @IV_readFromBinaryFile(%struct._IV* %7, %struct._IO_FILE* %fp) #5
  %vtxToFrontIV = getelementptr inbounds %struct._ETree* %etree, i64 0, i32 5
  %8 = load %struct._IV** %vtxToFrontIV, align 8, !tbaa !0
  %call12 = call i32 @IV_readFromBinaryFile(%struct._IV* %8, %struct._IO_FILE* %fp) #5
  br label %return

return:                                           ; preds = %if.end7, %if.then5, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %if.then5 ], [ 1, %if.end7 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind optsize
declare i32 @fclose(%struct._IO_FILE* nocapture) #1

; Function Attrs: nounwind optsize uwtable
define i32 @ETree_readFromFormattedFile(%struct._ETree* %etree, %struct._IO_FILE* %fp) #0 {
entry:
  %itemp = alloca [2 x i32], align 4
  %cmp = icmp eq %struct._ETree* %etree, null
  %cmp1 = icmp eq %struct._IO_FILE* %fp, null
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([58 x i8]* @.str5, i64 0, i64 0), %struct._ETree* %etree, %struct._IO_FILE* %fp) #5
  br label %return

if.end:                                           ; preds = %entry
  call void @ETree_clearData(%struct._ETree* %etree) #5
  call void @ETree_init1(%struct._ETree* %etree, i32 0, i32 0) #5
  %arraydecay = getelementptr inbounds [2 x i32]* %itemp, i64 0, i64 0
  %call2 = call i32 @IVfscanf(%struct._IO_FILE* %fp, i32 2, i32* %arraydecay) #5
  %cmp3 = icmp eq i32 %call2, 2
  br i1 %cmp3, label %if.end6, label %if.then4

if.then4:                                         ; preds = %if.end
  %1 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call5 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([68 x i8]* @.str6, i64 0, i64 0), %struct._ETree* %etree, %struct._IO_FILE* %fp, i32 %call2, i32 2) #5
  br label %return

if.end6:                                          ; preds = %if.end
  %2 = load i32* %arraydecay, align 4, !tbaa !3
  %nfront = getelementptr inbounds %struct._ETree* %etree, i64 0, i32 0
  store i32 %2, i32* %nfront, align 4, !tbaa !3
  %arrayidx7 = getelementptr inbounds [2 x i32]* %itemp, i64 0, i64 1
  %3 = load i32* %arrayidx7, align 4, !tbaa !3
  %nvtx = getelementptr inbounds %struct._ETree* %etree, i64 0, i32 1
  store i32 %3, i32* %nvtx, align 4, !tbaa !3
  %tree = getelementptr inbounds %struct._ETree* %etree, i64 0, i32 2
  %4 = load %struct._Tree** %tree, align 8, !tbaa !0
  %call8 = call i32 @Tree_readFromFormattedFile(%struct._Tree* %4, %struct._IO_FILE* %fp) #5
  %nodwghtsIV = getelementptr inbounds %struct._ETree* %etree, i64 0, i32 3
  %5 = load %struct._IV** %nodwghtsIV, align 8, !tbaa !0
  %call9 = call i32 @IV_readFromFormattedFile(%struct._IV* %5, %struct._IO_FILE* %fp) #5
  %bndwghtsIV = getelementptr inbounds %struct._ETree* %etree, i64 0, i32 4
  %6 = load %struct._IV** %bndwghtsIV, align 8, !tbaa !0
  %call10 = call i32 @IV_readFromFormattedFile(%struct._IV* %6, %struct._IO_FILE* %fp) #5
  %vtxToFrontIV = getelementptr inbounds %struct._ETree* %etree, i64 0, i32 5
  %7 = load %struct._IV** %vtxToFrontIV, align 8, !tbaa !0
  %call11 = call i32 @IV_readFromFormattedFile(%struct._IV* %7, %struct._IO_FILE* %fp) #5
  br label %return

return:                                           ; preds = %if.end6, %if.then4, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %if.then4 ], [ 1, %if.end6 ]
  ret i32 %retval.0
}

; Function Attrs: optsize
declare void @ETree_clearData(%struct._ETree*) #3

; Function Attrs: optsize
declare void @ETree_init1(%struct._ETree*, i32, i32) #3

; Function Attrs: optsize
declare i32 @IVfscanf(%struct._IO_FILE*, i32, i32*) #3

; Function Attrs: optsize
declare i32 @Tree_readFromFormattedFile(%struct._Tree*, %struct._IO_FILE*) #3

; Function Attrs: optsize
declare i32 @IV_readFromFormattedFile(%struct._IV*, %struct._IO_FILE*) #3

; Function Attrs: nounwind optsize
declare i64 @fread(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #1

; Function Attrs: optsize
declare i32 @Tree_readFromBinaryFile(%struct._Tree*, %struct._IO_FILE*) #3

; Function Attrs: optsize
declare i32 @IV_readFromBinaryFile(%struct._IV*, %struct._IO_FILE*) #3

; Function Attrs: nounwind optsize uwtable
define i32 @ETree_writeToFile(%struct._ETree* %etree, i8* %fn) #0 {
entry:
  %cmp = icmp eq %struct._ETree* %etree, null
  %cmp1 = icmp eq i8* %fn, null
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([54 x i8]* @.str9, i64 0, i64 0), %struct._ETree* %etree, i8* %fn) #5
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  %call2 = tail call i64 @strlen(i8* %fn) #6
  %conv = trunc i64 %call2 to i32
  %cmp5 = icmp sgt i32 %conv, 7
  br i1 %cmp5, label %if.then7, label %if.else49

if.then7:                                         ; preds = %if.end
  %sub = shl i64 %call2, 32
  %sext = add i64 %sub, -30064771072
  %idxprom = ashr exact i64 %sext, 32
  %arrayidx = getelementptr inbounds i8* %fn, i64 %idxprom
  %call8 = tail call i32 @strcmp(i8* %arrayidx, i8* getelementptr inbounds ([8 x i8]* @.str36, i64 0, i64 0)) #6
  %cmp9 = icmp eq i32 %call8, 0
  br i1 %cmp9, label %if.then11, label %if.else20

if.then11:                                        ; preds = %if.then7
  %call12 = tail call %struct._IO_FILE* @fopen(i8* %fn, i8* getelementptr inbounds ([3 x i8]* @.str10, i64 0, i64 0)) #5
  %cmp13 = icmp eq %struct._IO_FILE* %call12, null
  br i1 %cmp13, label %if.then15, label %if.else

if.then15:                                        ; preds = %if.then11
  %1 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call16 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([60 x i8]* @.str11, i64 0, i64 0), %struct._ETree* %etree, i8* %fn, i8* %fn) #5
  br label %if.end59

if.else:                                          ; preds = %if.then11
  %call17 = tail call i32 @ETree_writeToBinaryFile(%struct._ETree* %etree, %struct._IO_FILE* %call12) #7
  %call18 = tail call i32 @fclose(%struct._IO_FILE* %call12) #5
  br label %if.end59

if.else20:                                        ; preds = %if.then7
  %call24 = tail call i32 @strcmp(i8* %arrayidx, i8* getelementptr inbounds ([8 x i8]* @.str35, i64 0, i64 0)) #6
  %cmp25 = icmp eq i32 %call24, 0
  br i1 %cmp25, label %if.then27, label %if.else37

if.then27:                                        ; preds = %if.else20
  %call28 = tail call %struct._IO_FILE* @fopen(i8* %fn, i8* getelementptr inbounds ([2 x i8]* @.str12, i64 0, i64 0)) #5
  %cmp29 = icmp eq %struct._IO_FILE* %call28, null
  br i1 %cmp29, label %if.then31, label %if.else33

if.then31:                                        ; preds = %if.then27
  %2 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call32 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([60 x i8]* @.str11, i64 0, i64 0), %struct._ETree* %etree, i8* %fn, i8* %fn) #5
  br label %if.end59

if.else33:                                        ; preds = %if.then27
  %call34 = tail call i32 @ETree_writeToFormattedFile(%struct._ETree* %etree, %struct._IO_FILE* %call28) #7
  %call35 = tail call i32 @fclose(%struct._IO_FILE* %call28) #5
  br label %if.end59

if.else37:                                        ; preds = %if.else20
  %call38 = tail call %struct._IO_FILE* @fopen(i8* %fn, i8* getelementptr inbounds ([2 x i8]* @.str13, i64 0, i64 0)) #5
  %cmp39 = icmp eq %struct._IO_FILE* %call38, null
  br i1 %cmp39, label %if.then41, label %if.else43

if.then41:                                        ; preds = %if.else37
  %3 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call42 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([60 x i8]* @.str11, i64 0, i64 0), %struct._ETree* %etree, i8* %fn, i8* %fn) #5
  br label %if.end59

if.else43:                                        ; preds = %if.else37
  %call44 = tail call i32 @ETree_writeForHumanEye(%struct._ETree* %etree, %struct._IO_FILE* %call38) #7
  %call45 = tail call i32 @fclose(%struct._IO_FILE* %call38) #5
  br label %if.end59

if.else49:                                        ; preds = %if.end
  %call50 = tail call %struct._IO_FILE* @fopen(i8* %fn, i8* getelementptr inbounds ([2 x i8]* @.str13, i64 0, i64 0)) #5
  %cmp51 = icmp eq %struct._IO_FILE* %call50, null
  br i1 %cmp51, label %if.then53, label %if.else55

if.then53:                                        ; preds = %if.else49
  %4 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call54 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([60 x i8]* @.str11, i64 0, i64 0), %struct._ETree* %etree, i8* %fn, i8* %fn) #5
  br label %if.end59

if.else55:                                        ; preds = %if.else49
  %call56 = tail call i32 @ETree_writeForHumanEye(%struct._ETree* %etree, %struct._IO_FILE* %call50) #7
  %call57 = tail call i32 @fclose(%struct._IO_FILE* %call50) #5
  br label %if.end59

if.end59:                                         ; preds = %if.then53, %if.else55, %if.else, %if.then15, %if.then41, %if.else43, %if.then31, %if.else33
  %rc.0 = phi i32 [ 0, %if.then15 ], [ %call17, %if.else ], [ 0, %if.then31 ], [ %call34, %if.else33 ], [ 0, %if.then41 ], [ %call44, %if.else43 ], [ 0, %if.then53 ], [ %call56, %if.else55 ]
  ret i32 %rc.0
}

; Function Attrs: nounwind optsize uwtable
define i32 @ETree_writeToBinaryFile(%struct._ETree* %etree, %struct._IO_FILE* %fp) #0 {
entry:
  %itemp = alloca [2 x i32], align 4
  %cmp = icmp eq %struct._ETree* %etree, null
  %cmp1 = icmp eq %struct._IO_FILE* %fp, null
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %if.then, label %lor.lhs.false2

lor.lhs.false2:                                   ; preds = %entry
  %tree = getelementptr inbounds %struct._ETree* %etree, i64 0, i32 2
  %0 = load %struct._Tree** %tree, align 8, !tbaa !0
  %cmp3 = icmp eq %struct._Tree* %0, null
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false2, %entry
  %1 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([60 x i8]* @.str21, i64 0, i64 0), %struct._ETree* %etree, %struct._IO_FILE* %fp) #5
  call void @exit(i32 -1) #8
  unreachable

if.end:                                           ; preds = %lor.lhs.false2
  %nfront = getelementptr inbounds %struct._ETree* %etree, i64 0, i32 0
  %2 = load i32* %nfront, align 4, !tbaa !3
  %arrayidx = getelementptr inbounds [2 x i32]* %itemp, i64 0, i64 0
  store i32 %2, i32* %arrayidx, align 4, !tbaa !3
  %nvtx = getelementptr inbounds %struct._ETree* %etree, i64 0, i32 1
  %3 = load i32* %nvtx, align 4, !tbaa !3
  %arrayidx4 = getelementptr inbounds [2 x i32]* %itemp, i64 0, i64 1
  store i32 %3, i32* %arrayidx4, align 4, !tbaa !3
  %4 = bitcast [2 x i32]* %itemp to i8*
  %call5 = call i64 @fwrite(i8* %4, i64 4, i64 2, %struct._IO_FILE* %fp) #5
  %conv = trunc i64 %call5 to i32
  %cmp6 = icmp eq i32 %conv, 2
  br i1 %cmp6, label %if.end10, label %if.then8

if.then8:                                         ; preds = %if.end
  %5 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call9 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([74 x i8]* @.str22, i64 0, i64 0), %struct._ETree* %etree, %struct._IO_FILE* %fp, i32 %conv, i32 2) #5
  br label %return

if.end10:                                         ; preds = %if.end
  %6 = load %struct._Tree** %tree, align 8, !tbaa !0
  %call12 = call i32 @Tree_writeToBinaryFile(%struct._Tree* %6, %struct._IO_FILE* %fp) #5
  %cmp13 = icmp slt i32 %call12, 0
  br i1 %cmp13, label %if.then15, label %if.end17

if.then15:                                        ; preds = %if.end10
  %7 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call16 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %7, i8* getelementptr inbounds ([92 x i8]* @.str23, i64 0, i64 0), %struct._ETree* %etree, %struct._IO_FILE* %fp, i32 %call12) #5
  br label %return

if.end17:                                         ; preds = %if.end10
  %nodwghtsIV = getelementptr inbounds %struct._ETree* %etree, i64 0, i32 3
  %8 = load %struct._IV** %nodwghtsIV, align 8, !tbaa !0
  %call18 = call i32 @IV_writeToBinaryFile(%struct._IV* %8, %struct._IO_FILE* %fp) #5
  %cmp19 = icmp slt i32 %call18, 0
  br i1 %cmp19, label %if.then21, label %if.end23

if.then21:                                        ; preds = %if.end17
  %9 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call22 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %9, i8* getelementptr inbounds ([98 x i8]* @.str24, i64 0, i64 0), %struct._ETree* %etree, %struct._IO_FILE* %fp, i32 %call18) #5
  br label %return

if.end23:                                         ; preds = %if.end17
  %bndwghtsIV = getelementptr inbounds %struct._ETree* %etree, i64 0, i32 4
  %10 = load %struct._IV** %bndwghtsIV, align 8, !tbaa !0
  %call24 = call i32 @IV_writeToBinaryFile(%struct._IV* %10, %struct._IO_FILE* %fp) #5
  %cmp25 = icmp slt i32 %call24, 0
  br i1 %cmp25, label %if.then27, label %if.end29

if.then27:                                        ; preds = %if.end23
  %11 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call28 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %11, i8* getelementptr inbounds ([98 x i8]* @.str25, i64 0, i64 0), %struct._ETree* %etree, %struct._IO_FILE* %fp, i32 %call24) #5
  br label %return

if.end29:                                         ; preds = %if.end23
  %vtxToFrontIV = getelementptr inbounds %struct._ETree* %etree, i64 0, i32 5
  %12 = load %struct._IV** %vtxToFrontIV, align 8, !tbaa !0
  %call30 = call i32 @IV_writeToBinaryFile(%struct._IV* %12, %struct._IO_FILE* %fp) #5
  %cmp31 = icmp slt i32 %call30, 0
  br i1 %cmp31, label %if.then33, label %return

if.then33:                                        ; preds = %if.end29
  %13 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call34 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %13, i8* getelementptr inbounds ([100 x i8]* @.str26, i64 0, i64 0), %struct._ETree* %etree, %struct._IO_FILE* %fp, i32 %call30) #5
  br label %return

return:                                           ; preds = %if.end29, %if.then33, %if.then27, %if.then21, %if.then15, %if.then8
  %retval.0 = phi i32 [ 0, %if.then8 ], [ 0, %if.then15 ], [ 0, %if.then21 ], [ 0, %if.then27 ], [ 0, %if.then33 ], [ 1, %if.end29 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind optsize uwtable
define i32 @ETree_writeToFormattedFile(%struct._ETree* %etree, %struct._IO_FILE* %fp) #0 {
entry:
  %cmp = icmp eq %struct._ETree* %etree, null
  %cmp1 = icmp eq %struct._IO_FILE* %fp, null
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %if.then, label %lor.lhs.false2

lor.lhs.false2:                                   ; preds = %entry
  %tree = getelementptr inbounds %struct._ETree* %etree, i64 0, i32 2
  %0 = load %struct._Tree** %tree, align 8, !tbaa !0
  %cmp3 = icmp eq %struct._Tree* %0, null
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false2, %entry
  %1 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([63 x i8]* @.str14, i64 0, i64 0), %struct._ETree* %etree, %struct._IO_FILE* %fp) #5
  tail call void @exit(i32 -1) #8
  unreachable

if.end:                                           ; preds = %lor.lhs.false2
  %nfront = getelementptr inbounds %struct._ETree* %etree, i64 0, i32 0
  %2 = load i32* %nfront, align 4, !tbaa !3
  %nvtx = getelementptr inbounds %struct._ETree* %etree, i64 0, i32 1
  %3 = load i32* %nvtx, align 4, !tbaa !3
  %call4 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([8 x i8]* @.str15, i64 0, i64 0), i32 %2, i32 %3) #5
  %cmp5 = icmp slt i32 %call4, 0
  br i1 %cmp5, label %if.then6, label %if.end8

if.then6:                                         ; preds = %if.end
  %4 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call7 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([88 x i8]* @.str16, i64 0, i64 0), %struct._ETree* %etree, %struct._IO_FILE* %fp, i32 %call4) #5
  br label %return

if.end8:                                          ; preds = %if.end
  %5 = load %struct._Tree** %tree, align 8, !tbaa !0
  %call10 = tail call i32 @Tree_writeToFormattedFile(%struct._Tree* %5, %struct._IO_FILE* %fp) #5
  %cmp11 = icmp slt i32 %call10, 0
  br i1 %cmp11, label %if.then12, label %if.end14

if.then12:                                        ; preds = %if.end8
  %6 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call13 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %6, i8* getelementptr inbounds ([95 x i8]* @.str17, i64 0, i64 0), %struct._ETree* %etree, %struct._IO_FILE* %fp, i32 %call10) #5
  br label %return

if.end14:                                         ; preds = %if.end8
  %nodwghtsIV = getelementptr inbounds %struct._ETree* %etree, i64 0, i32 3
  %7 = load %struct._IV** %nodwghtsIV, align 8, !tbaa !0
  %call15 = tail call i32 @IV_writeToFormattedFile(%struct._IV* %7, %struct._IO_FILE* %fp) #5
  %cmp16 = icmp slt i32 %call15, 0
  br i1 %cmp16, label %if.then17, label %if.end19

if.then17:                                        ; preds = %if.end14
  %8 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call18 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %8, i8* getelementptr inbounds ([101 x i8]* @.str18, i64 0, i64 0), %struct._ETree* %etree, %struct._IO_FILE* %fp, i32 %call15) #5
  br label %return

if.end19:                                         ; preds = %if.end14
  %bndwghtsIV = getelementptr inbounds %struct._ETree* %etree, i64 0, i32 4
  %9 = load %struct._IV** %bndwghtsIV, align 8, !tbaa !0
  %call20 = tail call i32 @IV_writeToFormattedFile(%struct._IV* %9, %struct._IO_FILE* %fp) #5
  %cmp21 = icmp slt i32 %call20, 0
  br i1 %cmp21, label %if.then22, label %if.end24

if.then22:                                        ; preds = %if.end19
  %10 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call23 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %10, i8* getelementptr inbounds ([101 x i8]* @.str19, i64 0, i64 0), %struct._ETree* %etree, %struct._IO_FILE* %fp, i32 %call20) #5
  br label %return

if.end24:                                         ; preds = %if.end19
  %vtxToFrontIV = getelementptr inbounds %struct._ETree* %etree, i64 0, i32 5
  %11 = load %struct._IV** %vtxToFrontIV, align 8, !tbaa !0
  %call25 = tail call i32 @IV_writeToFormattedFile(%struct._IV* %11, %struct._IO_FILE* %fp) #5
  %cmp26 = icmp slt i32 %call25, 0
  br i1 %cmp26, label %if.then27, label %return

if.then27:                                        ; preds = %if.end24
  %12 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call28 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %12, i8* getelementptr inbounds ([103 x i8]* @.str20, i64 0, i64 0), %struct._ETree* %etree, %struct._IO_FILE* %fp, i32 %call25) #5
  br label %return

return:                                           ; preds = %if.end24, %if.then27, %if.then22, %if.then17, %if.then12, %if.then6
  %retval.0 = phi i32 [ 0, %if.then6 ], [ 0, %if.then12 ], [ 0, %if.then17 ], [ 0, %if.then22 ], [ 0, %if.then27 ], [ 1, %if.end24 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind optsize uwtable
define i32 @ETree_writeForHumanEye(%struct._ETree* %etree, %struct._IO_FILE* %fp) #0 {
entry:
  %cmp = icmp eq %struct._ETree* %etree, null
  %cmp1 = icmp eq %struct._IO_FILE* %fp, null
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %if.then, label %lor.lhs.false2

lor.lhs.false2:                                   ; preds = %entry
  %nfront3 = getelementptr inbounds %struct._ETree* %etree, i64 0, i32 0
  %0 = load i32* %nfront3, align 4, !tbaa !3
  %cmp4 = icmp slt i32 %0, 1
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false2, %entry
  %1 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([59 x i8]* @.str27, i64 0, i64 0), %struct._ETree* %etree, %struct._IO_FILE* %fp) #5
  tail call void @exit(i32 -1) #8
  unreachable

if.end:                                           ; preds = %lor.lhs.false2
  %call5 = tail call i32 @ETree_writeStats(%struct._ETree* %etree, %struct._IO_FILE* %fp) #7
  %cmp6 = icmp eq i32 %call5, 0
  br i1 %cmp6, label %if.then7, label %for.body.lr.ph

if.then7:                                         ; preds = %if.end
  %2 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call8 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([94 x i8]* @.str28, i64 0, i64 0), %struct._ETree* %etree, %struct._IO_FILE* %fp, i32 0, %struct._ETree* %etree, %struct._IO_FILE* %fp) #5
  br label %return

for.body.lr.ph:                                   ; preds = %if.end
  %tree = getelementptr inbounds %struct._ETree* %etree, i64 0, i32 2
  %3 = load %struct._Tree** %tree, align 8, !tbaa !0
  %par10 = getelementptr inbounds %struct._Tree* %3, i64 0, i32 2
  %4 = load i32** %par10, align 8, !tbaa !0
  %fch12 = getelementptr inbounds %struct._Tree* %3, i64 0, i32 3
  %5 = load i32** %fch12, align 8, !tbaa !0
  %sib14 = getelementptr inbounds %struct._Tree* %3, i64 0, i32 4
  %6 = load i32** %sib14, align 8, !tbaa !0
  %nodwghtsIV = getelementptr inbounds %struct._ETree* %etree, i64 0, i32 3
  %7 = load %struct._IV** %nodwghtsIV, align 8, !tbaa !0
  %call15 = tail call i32* @IV_entries(%struct._IV* %7) #5
  %bndwghtsIV = getelementptr inbounds %struct._ETree* %etree, i64 0, i32 4
  %8 = load %struct._IV** %bndwghtsIV, align 8, !tbaa !0
  %call16 = tail call i32* @IV_entries(%struct._IV* %8) #5
  %9 = tail call i64 @fwrite(i8* getelementptr inbounds ([57 x i8]* @.str29, i64 0, i64 0), i64 56, i64 1, %struct._IO_FILE* %fp) #9
  br label %for.body

for.body:                                         ; preds = %for.body, %for.body.lr.ph
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.body ]
  %arrayidx = getelementptr inbounds i32* %4, i64 %indvars.iv
  %10 = load i32* %arrayidx, align 4, !tbaa !3
  %arrayidx20 = getelementptr inbounds i32* %5, i64 %indvars.iv
  %11 = load i32* %arrayidx20, align 4, !tbaa !3
  %arrayidx22 = getelementptr inbounds i32* %6, i64 %indvars.iv
  %12 = load i32* %arrayidx22, align 4, !tbaa !3
  %arrayidx24 = getelementptr inbounds i32* %call15, i64 %indvars.iv
  %13 = load i32* %arrayidx24, align 4, !tbaa !3
  %arrayidx26 = getelementptr inbounds i32* %call16, i64 %indvars.iv
  %14 = load i32* %arrayidx26, align 4, !tbaa !3
  %15 = trunc i64 %indvars.iv to i32
  %call27 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([27 x i8]* @.str30, i64 0, i64 0), i32 %15, i32 %10, i32 %11, i32 %12, i32 %13, i32 %14) #5
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %0
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          ; preds = %for.body
  %call28 = tail call i32 @fflush(%struct._IO_FILE* %fp) #5
  %16 = tail call i64 @fwrite(i8* getelementptr inbounds ([24 x i8]* @.str31, i64 0, i64 0), i64 23, i64 1, %struct._IO_FILE* %fp) #9
  %vtxToFrontIV = getelementptr inbounds %struct._ETree* %etree, i64 0, i32 5
  %17 = load %struct._IV** %vtxToFrontIV, align 8, !tbaa !0
  %call30 = tail call i32 @IV_writeForHumanEye(%struct._IV* %17, %struct._IO_FILE* %fp) #5
  %call31 = tail call i32 @fflush(%struct._IO_FILE* %fp) #5
  br label %return

return:                                           ; preds = %for.end, %if.then7
  %retval.0 = phi i32 [ 0, %if.then7 ], [ 1, %for.end ]
  ret i32 %retval.0
}

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32) #4

; Function Attrs: optsize
declare i32 @Tree_writeToFormattedFile(%struct._Tree*, %struct._IO_FILE*) #3

; Function Attrs: optsize
declare i32 @IV_writeToFormattedFile(%struct._IV*, %struct._IO_FILE*) #3

; Function Attrs: nounwind optsize
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #1

; Function Attrs: optsize
declare i32 @Tree_writeToBinaryFile(%struct._Tree*, %struct._IO_FILE*) #3

; Function Attrs: optsize
declare i32 @IV_writeToBinaryFile(%struct._IV*, %struct._IO_FILE*) #3

; Function Attrs: nounwind optsize uwtable
define i32 @ETree_writeStats(%struct._ETree* %etree, %struct._IO_FILE* %fp) #0 {
entry:
  %cmp = icmp eq %struct._ETree* %etree, null
  %cmp1 = icmp eq %struct._IO_FILE* %fp, null
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([47 x i8]* @.str32, i64 0, i64 0), %struct._ETree* %etree, %struct._IO_FILE* %fp) #5
  tail call void @exit(i32 -1) #8
  unreachable

if.end:                                           ; preds = %entry
  %nfront = getelementptr inbounds %struct._ETree* %etree, i64 0, i32 0
  %1 = load i32* %nfront, align 4, !tbaa !3
  %nvtx = getelementptr inbounds %struct._ETree* %etree, i64 0, i32 1
  %2 = load i32* %nvtx, align 4, !tbaa !3
  %call2 = tail call i32 @ETree_sizeOf(%struct._ETree* %etree) #5
  %call3 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([63 x i8]* @.str33, i64 0, i64 0), i32 %1, i32 %2, i32 %call2) #5
  %cmp4 = icmp slt i32 %call3, 0
  br i1 %cmp4, label %if.then5, label %return

if.then5:                                         ; preds = %if.end
  %3 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call6 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([72 x i8]* @.str34, i64 0, i64 0), %struct._ETree* %etree, %struct._IO_FILE* %fp, i32 %call3) #5
  br label %return

return:                                           ; preds = %if.end, %if.then5
  %retval.0 = phi i32 [ 0, %if.then5 ], [ 1, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: optsize
declare i32* @IV_entries(%struct._IV*) #3

; Function Attrs: nounwind optsize
declare i32 @fflush(%struct._IO_FILE* nocapture) #1

; Function Attrs: optsize
declare i32 @IV_writeForHumanEye(%struct._IV*, %struct._IO_FILE*) #3

; Function Attrs: optsize
declare i32 @ETree_sizeOf(%struct._ETree*) #3

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
