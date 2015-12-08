; ModuleID = '../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Tree/src/Tree_IO.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct._Tree = type { i32, i32, i32*, i32*, i32* }

@stderr = external global %struct._IO_FILE*
@.str = private unnamed_addr constant [48 x i8] c"\0A error in Tree_readFromFile(%p,%s)\0A bad input\0A\00", align 1
@.str1 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str2 = private unnamed_addr constant [60 x i8] c"\0A error in Tree_readFromFile(%p,%s)\0A unable to open file %s\00", align 1
@.str3 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str4 = private unnamed_addr constant [104 x i8] c"\0A error in Tree_readFromFile(%p,%s)\0A bad Tree file name %s,\0A must end in %s (binary) or %s (formatted)\0A\00", align 1
@.str5 = private unnamed_addr constant [57 x i8] c"\0A error in Tree_readFromFormattedFile(%p,%p)\0A bad input\0A\00", align 1
@.str6 = private unnamed_addr constant [67 x i8] c"\0A error in Tree_readFromFormattedFile(%p,%p)\0A %d items of %d read\0A\00", align 1
@.str7 = private unnamed_addr constant [72 x i8] c"\0A par: error in Tree_readFromFormattedFile(%p,%p)\0A %d items of %d read\0A\00", align 1
@.str8 = private unnamed_addr constant [72 x i8] c"\0A fch: error in Tree_readFromFormattedFile(%p,%p)\0A %d items of %d read\0A\00", align 1
@.str9 = private unnamed_addr constant [72 x i8] c"\0A sib: error in Tree_readFromFormattedFile(%p,%p)\0A %d items of %d read\0A\00", align 1
@.str10 = private unnamed_addr constant [60 x i8] c"\0A fatal error in Tree_readFromBinaryFile(%p,%p)\0A bad input\0A\00", align 1
@.str11 = private unnamed_addr constant [75 x i8] c"\0A error in Tree_readFromBinaryFile(%p,%p)\0A itemp(2) : %d items of %d read\0A\00", align 1
@.str12 = private unnamed_addr constant [70 x i8] c"\0A par : error in Tree_readFromBinaryFile(%p,%p)\0A %d items of %d read\0A\00", align 1
@.str13 = private unnamed_addr constant [70 x i8] c"\0A fch : error in Tree_readFromBinaryFile(%p,%p)\0A %d items of %d read\0A\00", align 1
@.str14 = private unnamed_addr constant [70 x i8] c"\0A sib : error in Tree_readFromBinaryFile(%p,%p)\0A %d items of %d read\0A\00", align 1
@.str15 = private unnamed_addr constant [53 x i8] c"\0A fatal error in Tree_writeToFile(%p,%s)\0A bad input\0A\00", align 1
@.str16 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@.str17 = private unnamed_addr constant [59 x i8] c"\0A error in Tree_writeToFile(%p,%s)\0A unable to open file %s\00", align 1
@.str18 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str19 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str20 = private unnamed_addr constant [62 x i8] c"\0A fatal error in Tree_writeToFormattedFile(%p,%p)\0A bad input\0A\00", align 1
@.str21 = private unnamed_addr constant [8 x i8] c"\0A %d %d\00", align 1
@.str22 = private unnamed_addr constant [87 x i8] c"\0A fatal error in Tree_writeToFormattedFile(%p,%p)\0A rc = %d, return from first fprintf\0A\00", align 1
@.str23 = private unnamed_addr constant [59 x i8] c"\0A fatal error in Tree_writeToBinaryFile(%p,%p)\0A bad input\0A\00", align 1
@.str24 = private unnamed_addr constant [73 x i8] c"\0A error in Tree_writeToBinaryFile(%p,%p)\0A %d of %d scalar items written\0A\00", align 1
@.str25 = private unnamed_addr constant [77 x i8] c"\0A error in Tree_writeToBinaryFile(%p,%p)\0A tree->par, %d of %d items written\0A\00", align 1
@.str26 = private unnamed_addr constant [77 x i8] c"\0A error in Tree_writeToBinaryFile(%p,%p)\0A tree->fch, %d of %d items written\0A\00", align 1
@.str27 = private unnamed_addr constant [77 x i8] c"\0A error in Tree_writeToBinaryFile(%p,%p)\0A tree->sib, %d of %d items written\0A\00", align 1
@.str28 = private unnamed_addr constant [58 x i8] c"\0A fatal error in Tree_writeForHumanEye(%p,%p)\0A bad input\0A\00", align 1
@.str29 = private unnamed_addr constant [92 x i8] c"\0A fatal error in Tree_writeForHumanEye(%p,%p)\0A rc = %d, return from Tree_writeStats(%p,%p)\0A\00", align 1
@.str30 = private unnamed_addr constant [37 x i8] c"\0A vertex   parent   fchild   sibling\00", align 1
@.str31 = private unnamed_addr constant [20 x i8] c"\0A %5d %9d %9d %9d :\00", align 1
@.str32 = private unnamed_addr constant [46 x i8] c"\0A error in Tree_writeStats(%p,%p)\0A bad input\0A\00", align 1
@.str33 = private unnamed_addr constant [61 x i8] c"\0A Tree : tree object, %d vertices, root = %d, takes %d bytes\00", align 1
@.str34 = private unnamed_addr constant [71 x i8] c"\0A fatal error in Tree_writeStats(%p,%p)\0A rc = %d, return from fprintf\0A\00", align 1
@.str35 = private unnamed_addr constant [7 x i8] c".treef\00", align 1
@.str36 = private unnamed_addr constant [7 x i8] c".treeb\00", align 1

; Function Attrs: nounwind optsize uwtable
define i32 @Tree_readFromFile(%struct._Tree* %tree, i8* %fn) #0 {
entry:
  %cmp = icmp eq %struct._Tree* %tree, null
  %cmp1 = icmp eq i8* %fn, null
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([48 x i8]* @.str, i64 0, i64 0), %struct._Tree* %tree, i8* %fn) #5
  br label %return

if.end:                                           ; preds = %entry
  %call2 = tail call i64 @strlen(i8* %fn) #6
  %conv = trunc i64 %call2 to i32
  %cmp5 = icmp sgt i32 %conv, 6
  br i1 %cmp5, label %if.then7, label %if.else41

if.then7:                                         ; preds = %if.end
  %sub = shl i64 %call2, 32
  %sext = add i64 %sub, -25769803776
  %idxprom = ashr exact i64 %sext, 32
  %arrayidx = getelementptr inbounds i8* %fn, i64 %idxprom
  %call8 = tail call i32 @strcmp(i8* %arrayidx, i8* getelementptr inbounds ([7 x i8]* @.str36, i64 0, i64 0)) #6
  %cmp9 = icmp eq i32 %call8, 0
  br i1 %cmp9, label %if.then11, label %if.else20

if.then11:                                        ; preds = %if.then7
  %call12 = tail call %struct._IO_FILE* @fopen(i8* %fn, i8* getelementptr inbounds ([3 x i8]* @.str1, i64 0, i64 0)) #5
  %cmp13 = icmp eq %struct._IO_FILE* %call12, null
  br i1 %cmp13, label %if.then15, label %if.else

if.then15:                                        ; preds = %if.then11
  %1 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call16 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([60 x i8]* @.str2, i64 0, i64 0), %struct._Tree* %tree, i8* %fn, i8* %fn) #5
  br label %return

if.else:                                          ; preds = %if.then11
  %call17 = tail call i32 @Tree_readFromBinaryFile(%struct._Tree* %tree, %struct._IO_FILE* %call12) #7
  %call18 = tail call i32 @fclose(%struct._IO_FILE* %call12) #5
  br label %return

if.else20:                                        ; preds = %if.then7
  %call24 = tail call i32 @strcmp(i8* %arrayidx, i8* getelementptr inbounds ([7 x i8]* @.str35, i64 0, i64 0)) #6
  %cmp25 = icmp eq i32 %call24, 0
  br i1 %cmp25, label %if.then27, label %if.else37

if.then27:                                        ; preds = %if.else20
  %call28 = tail call %struct._IO_FILE* @fopen(i8* %fn, i8* getelementptr inbounds ([2 x i8]* @.str3, i64 0, i64 0)) #5
  %cmp29 = icmp eq %struct._IO_FILE* %call28, null
  br i1 %cmp29, label %if.then31, label %if.else33

if.then31:                                        ; preds = %if.then27
  %2 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call32 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([60 x i8]* @.str2, i64 0, i64 0), %struct._Tree* %tree, i8* %fn, i8* %fn) #5
  br label %return

if.else33:                                        ; preds = %if.then27
  %call34 = tail call i32 @Tree_readFromFormattedFile(%struct._Tree* %tree, %struct._IO_FILE* %call28) #7
  %call35 = tail call i32 @fclose(%struct._IO_FILE* %call28) #5
  br label %return

if.else37:                                        ; preds = %if.else20
  %3 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call38 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([104 x i8]* @.str4, i64 0, i64 0), %struct._Tree* %tree, i8* %fn, i8* %fn, i8* getelementptr inbounds ([7 x i8]* @.str36, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str35, i64 0, i64 0)) #5
  br label %return

if.else41:                                        ; preds = %if.end
  %4 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call42 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([104 x i8]* @.str4, i64 0, i64 0), %struct._Tree* %tree, i8* %fn, i8* %fn, i8* getelementptr inbounds ([7 x i8]* @.str36, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str35, i64 0, i64 0)) #5
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
define i32 @Tree_readFromBinaryFile(%struct._Tree* %tree, %struct._IO_FILE* %fp) #0 {
entry:
  %itemp = alloca [2 x i32], align 4
  %cmp = icmp eq %struct._Tree* %tree, null
  %cmp1 = icmp eq %struct._IO_FILE* %fp, null
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([60 x i8]* @.str10, i64 0, i64 0), %struct._Tree* %tree, %struct._IO_FILE* %fp) #5
  br label %return

if.end:                                           ; preds = %entry
  call void @Tree_clearData(%struct._Tree* %tree) #5
  %1 = bitcast [2 x i32]* %itemp to i8*
  %call2 = call i64 @fread(i8* %1, i64 4, i64 2, %struct._IO_FILE* %fp) #5
  %conv = trunc i64 %call2 to i32
  %cmp3 = icmp eq i32 %conv, 2
  br i1 %cmp3, label %if.end7, label %if.then5

if.then5:                                         ; preds = %if.end
  %2 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call6 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([75 x i8]* @.str11, i64 0, i64 0), %struct._Tree* %tree, %struct._IO_FILE* %fp, i32 %conv, i32 2) #5
  br label %return

if.end7:                                          ; preds = %if.end
  %arrayidx = getelementptr inbounds [2 x i32]* %itemp, i64 0, i64 0
  %3 = load i32* %arrayidx, align 4, !tbaa !3
  call void @Tree_init1(%struct._Tree* %tree, i32 %3) #5
  %arrayidx8 = getelementptr inbounds [2 x i32]* %itemp, i64 0, i64 1
  %4 = load i32* %arrayidx8, align 4, !tbaa !3
  %root = getelementptr inbounds %struct._Tree* %tree, i64 0, i32 1
  store i32 %4, i32* %root, align 4, !tbaa !3
  %par = getelementptr inbounds %struct._Tree* %tree, i64 0, i32 2
  %5 = load i32** %par, align 8, !tbaa !0
  %6 = bitcast i32* %5 to i8*
  %n = getelementptr inbounds %struct._Tree* %tree, i64 0, i32 0
  %7 = load i32* %n, align 4, !tbaa !3
  %conv9 = sext i32 %7 to i64
  %call10 = call i64 @fread(i8* %6, i64 4, i64 %conv9, %struct._IO_FILE* %fp) #5
  %conv11 = trunc i64 %call10 to i32
  %8 = load i32* %n, align 4, !tbaa !3
  %cmp13 = icmp eq i32 %conv11, %8
  br i1 %cmp13, label %if.end18, label %if.then15

if.then15:                                        ; preds = %if.end7
  %9 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call17 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %9, i8* getelementptr inbounds ([70 x i8]* @.str12, i64 0, i64 0), %struct._Tree* %tree, %struct._IO_FILE* %fp, i32 %conv11, i32 %8) #5
  br label %return

if.end18:                                         ; preds = %if.end7
  %fch = getelementptr inbounds %struct._Tree* %tree, i64 0, i32 3
  %10 = load i32** %fch, align 8, !tbaa !0
  %11 = bitcast i32* %10 to i8*
  %sext = shl i64 %call10, 32
  %conv20 = ashr exact i64 %sext, 32
  %call21 = call i64 @fread(i8* %11, i64 4, i64 %conv20, %struct._IO_FILE* %fp) #5
  %conv22 = trunc i64 %call21 to i32
  %12 = load i32* %n, align 4, !tbaa !3
  %cmp24 = icmp eq i32 %conv22, %12
  br i1 %cmp24, label %if.end29, label %if.then26

if.then26:                                        ; preds = %if.end18
  %13 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call28 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %13, i8* getelementptr inbounds ([70 x i8]* @.str13, i64 0, i64 0), %struct._Tree* %tree, %struct._IO_FILE* %fp, i32 %conv22, i32 %12) #5
  br label %return

if.end29:                                         ; preds = %if.end18
  %sib = getelementptr inbounds %struct._Tree* %tree, i64 0, i32 4
  %14 = load i32** %sib, align 8, !tbaa !0
  %15 = bitcast i32* %14 to i8*
  %sext73 = shl i64 %call21, 32
  %conv31 = ashr exact i64 %sext73, 32
  %call32 = call i64 @fread(i8* %15, i64 4, i64 %conv31, %struct._IO_FILE* %fp) #5
  %conv33 = trunc i64 %call32 to i32
  %16 = load i32* %n, align 4, !tbaa !3
  %cmp35 = icmp eq i32 %conv33, %16
  br i1 %cmp35, label %return, label %if.then37

if.then37:                                        ; preds = %if.end29
  %17 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call39 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %17, i8* getelementptr inbounds ([70 x i8]* @.str14, i64 0, i64 0), %struct._Tree* %tree, %struct._IO_FILE* %fp, i32 %conv33, i32 %16) #5
  br label %return

return:                                           ; preds = %if.end29, %if.then37, %if.then26, %if.then15, %if.then5, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %if.then5 ], [ 0, %if.then15 ], [ 0, %if.then26 ], [ 0, %if.then37 ], [ 1, %if.end29 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind optsize
declare i32 @fclose(%struct._IO_FILE* nocapture) #1

; Function Attrs: nounwind optsize uwtable
define i32 @Tree_readFromFormattedFile(%struct._Tree* %tree, %struct._IO_FILE* %fp) #0 {
entry:
  %itemp = alloca [2 x i32], align 4
  %cmp = icmp eq %struct._Tree* %tree, null
  %cmp1 = icmp eq %struct._IO_FILE* %fp, null
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([57 x i8]* @.str5, i64 0, i64 0), %struct._Tree* %tree, %struct._IO_FILE* %fp) #5
  br label %return

if.end:                                           ; preds = %entry
  call void @Tree_clearData(%struct._Tree* %tree) #5
  %arraydecay = getelementptr inbounds [2 x i32]* %itemp, i64 0, i64 0
  %call2 = call i32 @IVfscanf(%struct._IO_FILE* %fp, i32 2, i32* %arraydecay) #5
  %cmp3 = icmp eq i32 %call2, 2
  br i1 %cmp3, label %if.end6, label %if.then4

if.then4:                                         ; preds = %if.end
  %1 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call5 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([67 x i8]* @.str6, i64 0, i64 0), %struct._Tree* %tree, %struct._IO_FILE* %fp, i32 %call2, i32 2) #5
  br label %return

if.end6:                                          ; preds = %if.end
  %2 = load i32* %arraydecay, align 4, !tbaa !3
  call void @Tree_init1(%struct._Tree* %tree, i32 %2) #5
  %arrayidx7 = getelementptr inbounds [2 x i32]* %itemp, i64 0, i64 1
  %3 = load i32* %arrayidx7, align 4, !tbaa !3
  %root = getelementptr inbounds %struct._Tree* %tree, i64 0, i32 1
  store i32 %3, i32* %root, align 4, !tbaa !3
  %n = getelementptr inbounds %struct._Tree* %tree, i64 0, i32 0
  %4 = load i32* %n, align 4, !tbaa !3
  %par = getelementptr inbounds %struct._Tree* %tree, i64 0, i32 2
  %5 = load i32** %par, align 8, !tbaa !0
  %call8 = call i32 @IVfscanf(%struct._IO_FILE* %fp, i32 %4, i32* %5) #5
  %6 = load i32* %n, align 4, !tbaa !3
  %cmp10 = icmp eq i32 %call8, %6
  br i1 %cmp10, label %if.end14, label %if.then11

if.then11:                                        ; preds = %if.end6
  %7 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call13 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %7, i8* getelementptr inbounds ([72 x i8]* @.str7, i64 0, i64 0), %struct._Tree* %tree, %struct._IO_FILE* %fp, i32 %call8, i32 %6) #5
  br label %return

if.end14:                                         ; preds = %if.end6
  %fch = getelementptr inbounds %struct._Tree* %tree, i64 0, i32 3
  %8 = load i32** %fch, align 8, !tbaa !0
  %call16 = call i32 @IVfscanf(%struct._IO_FILE* %fp, i32 %call8, i32* %8) #5
  %9 = load i32* %n, align 4, !tbaa !3
  %cmp18 = icmp eq i32 %call16, %9
  br i1 %cmp18, label %if.end22, label %if.then19

if.then19:                                        ; preds = %if.end14
  %10 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call21 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %10, i8* getelementptr inbounds ([72 x i8]* @.str8, i64 0, i64 0), %struct._Tree* %tree, %struct._IO_FILE* %fp, i32 %call16, i32 %9) #5
  br label %return

if.end22:                                         ; preds = %if.end14
  %sib = getelementptr inbounds %struct._Tree* %tree, i64 0, i32 4
  %11 = load i32** %sib, align 8, !tbaa !0
  %call24 = call i32 @IVfscanf(%struct._IO_FILE* %fp, i32 %call16, i32* %11) #5
  %12 = load i32* %n, align 4, !tbaa !3
  %cmp26 = icmp eq i32 %call24, %12
  br i1 %cmp26, label %return, label %if.then27

if.then27:                                        ; preds = %if.end22
  %13 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call29 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %13, i8* getelementptr inbounds ([72 x i8]* @.str9, i64 0, i64 0), %struct._Tree* %tree, %struct._IO_FILE* %fp, i32 %call24, i32 %12) #5
  br label %return

return:                                           ; preds = %if.end22, %if.then27, %if.then19, %if.then11, %if.then4, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %if.then4 ], [ 0, %if.then11 ], [ 0, %if.then19 ], [ 0, %if.then27 ], [ 1, %if.end22 ]
  ret i32 %retval.0
}

; Function Attrs: optsize
declare void @Tree_clearData(%struct._Tree*) #3

; Function Attrs: optsize
declare i32 @IVfscanf(%struct._IO_FILE*, i32, i32*) #3

; Function Attrs: optsize
declare void @Tree_init1(%struct._Tree*, i32) #3

; Function Attrs: nounwind optsize
declare i64 @fread(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #1

; Function Attrs: nounwind optsize uwtable
define i32 @Tree_writeToFile(%struct._Tree* %tree, i8* %fn) #0 {
entry:
  %cmp = icmp eq %struct._Tree* %tree, null
  %cmp1 = icmp eq i8* %fn, null
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([53 x i8]* @.str15, i64 0, i64 0), %struct._Tree* %tree, i8* %fn) #5
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  %call2 = tail call i64 @strlen(i8* %fn) #6
  %conv = trunc i64 %call2 to i32
  %cmp5 = icmp sgt i32 %conv, 6
  br i1 %cmp5, label %if.then7, label %if.else49

if.then7:                                         ; preds = %if.end
  %sub = shl i64 %call2, 32
  %sext = add i64 %sub, -25769803776
  %idxprom = ashr exact i64 %sext, 32
  %arrayidx = getelementptr inbounds i8* %fn, i64 %idxprom
  %call8 = tail call i32 @strcmp(i8* %arrayidx, i8* getelementptr inbounds ([7 x i8]* @.str36, i64 0, i64 0)) #6
  %cmp9 = icmp eq i32 %call8, 0
  br i1 %cmp9, label %if.then11, label %if.else20

if.then11:                                        ; preds = %if.then7
  %call12 = tail call %struct._IO_FILE* @fopen(i8* %fn, i8* getelementptr inbounds ([3 x i8]* @.str16, i64 0, i64 0)) #5
  %cmp13 = icmp eq %struct._IO_FILE* %call12, null
  br i1 %cmp13, label %if.then15, label %if.else

if.then15:                                        ; preds = %if.then11
  %1 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call16 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([59 x i8]* @.str17, i64 0, i64 0), %struct._Tree* %tree, i8* %fn, i8* %fn) #5
  br label %if.end59

if.else:                                          ; preds = %if.then11
  %call17 = tail call i32 @Tree_writeToBinaryFile(%struct._Tree* %tree, %struct._IO_FILE* %call12) #7
  %call18 = tail call i32 @fclose(%struct._IO_FILE* %call12) #5
  br label %if.end59

if.else20:                                        ; preds = %if.then7
  %call24 = tail call i32 @strcmp(i8* %arrayidx, i8* getelementptr inbounds ([7 x i8]* @.str35, i64 0, i64 0)) #6
  %cmp25 = icmp eq i32 %call24, 0
  br i1 %cmp25, label %if.then27, label %if.else37

if.then27:                                        ; preds = %if.else20
  %call28 = tail call %struct._IO_FILE* @fopen(i8* %fn, i8* getelementptr inbounds ([2 x i8]* @.str18, i64 0, i64 0)) #5
  %cmp29 = icmp eq %struct._IO_FILE* %call28, null
  br i1 %cmp29, label %if.then31, label %if.else33

if.then31:                                        ; preds = %if.then27
  %2 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call32 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([59 x i8]* @.str17, i64 0, i64 0), %struct._Tree* %tree, i8* %fn, i8* %fn) #5
  br label %if.end59

if.else33:                                        ; preds = %if.then27
  %call34 = tail call i32 @Tree_writeToFormattedFile(%struct._Tree* %tree, %struct._IO_FILE* %call28) #7
  %call35 = tail call i32 @fclose(%struct._IO_FILE* %call28) #5
  br label %if.end59

if.else37:                                        ; preds = %if.else20
  %call38 = tail call %struct._IO_FILE* @fopen(i8* %fn, i8* getelementptr inbounds ([2 x i8]* @.str19, i64 0, i64 0)) #5
  %cmp39 = icmp eq %struct._IO_FILE* %call38, null
  br i1 %cmp39, label %if.then41, label %if.else43

if.then41:                                        ; preds = %if.else37
  %3 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call42 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([59 x i8]* @.str17, i64 0, i64 0), %struct._Tree* %tree, i8* %fn, i8* %fn) #5
  br label %if.end59

if.else43:                                        ; preds = %if.else37
  %call44 = tail call i32 @Tree_writeForHumanEye(%struct._Tree* %tree, %struct._IO_FILE* %call38) #7
  %call45 = tail call i32 @fclose(%struct._IO_FILE* %call38) #5
  br label %if.end59

if.else49:                                        ; preds = %if.end
  %call50 = tail call %struct._IO_FILE* @fopen(i8* %fn, i8* getelementptr inbounds ([2 x i8]* @.str19, i64 0, i64 0)) #5
  %cmp51 = icmp eq %struct._IO_FILE* %call50, null
  br i1 %cmp51, label %if.then53, label %if.else55

if.then53:                                        ; preds = %if.else49
  %4 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call54 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([59 x i8]* @.str17, i64 0, i64 0), %struct._Tree* %tree, i8* %fn, i8* %fn) #5
  br label %if.end59

if.else55:                                        ; preds = %if.else49
  %call56 = tail call i32 @Tree_writeForHumanEye(%struct._Tree* %tree, %struct._IO_FILE* %call50) #7
  %call57 = tail call i32 @fclose(%struct._IO_FILE* %call50) #5
  br label %if.end59

if.end59:                                         ; preds = %if.then53, %if.else55, %if.else, %if.then15, %if.then41, %if.else43, %if.then31, %if.else33
  %rc.0 = phi i32 [ 0, %if.then15 ], [ %call17, %if.else ], [ 0, %if.then31 ], [ %call34, %if.else33 ], [ 0, %if.then41 ], [ %call44, %if.else43 ], [ 0, %if.then53 ], [ %call56, %if.else55 ]
  ret i32 %rc.0
}

; Function Attrs: nounwind optsize uwtable
define i32 @Tree_writeToBinaryFile(%struct._Tree* %tree, %struct._IO_FILE* %fp) #0 {
entry:
  %itemp = alloca [2 x i32], align 4
  %cmp = icmp eq %struct._Tree* %tree, null
  %cmp1 = icmp eq %struct._IO_FILE* %fp, null
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %if.then, label %lor.lhs.false2

lor.lhs.false2:                                   ; preds = %entry
  %n = getelementptr inbounds %struct._Tree* %tree, i64 0, i32 0
  %0 = load i32* %n, align 4, !tbaa !3
  %cmp3 = icmp slt i32 %0, 1
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false2, %entry
  %1 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([59 x i8]* @.str23, i64 0, i64 0), %struct._Tree* %tree, %struct._IO_FILE* %fp) #5
  call void @exit(i32 -1) #8
  unreachable

if.end:                                           ; preds = %lor.lhs.false2
  %arrayidx = getelementptr inbounds [2 x i32]* %itemp, i64 0, i64 0
  store i32 %0, i32* %arrayidx, align 4, !tbaa !3
  %root = getelementptr inbounds %struct._Tree* %tree, i64 0, i32 1
  %2 = load i32* %root, align 4, !tbaa !3
  %arrayidx5 = getelementptr inbounds [2 x i32]* %itemp, i64 0, i64 1
  store i32 %2, i32* %arrayidx5, align 4, !tbaa !3
  %3 = bitcast [2 x i32]* %itemp to i8*
  %call6 = call i64 @fwrite(i8* %3, i64 4, i64 2, %struct._IO_FILE* %fp) #5
  %conv = trunc i64 %call6 to i32
  %cmp7 = icmp eq i32 %conv, 2
  br i1 %cmp7, label %if.end11, label %if.then9

if.then9:                                         ; preds = %if.end
  %4 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call10 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([73 x i8]* @.str24, i64 0, i64 0), %struct._Tree* %tree, %struct._IO_FILE* %fp, i32 %conv, i32 2) #5
  br label %return

if.end11:                                         ; preds = %if.end
  %par = getelementptr inbounds %struct._Tree* %tree, i64 0, i32 2
  %5 = load i32** %par, align 8, !tbaa !0
  %6 = bitcast i32* %5 to i8*
  %7 = load i32* %n, align 4, !tbaa !3
  %conv13 = sext i32 %7 to i64
  %call14 = call i64 @fwrite(i8* %6, i64 4, i64 %conv13, %struct._IO_FILE* %fp) #5
  %conv15 = trunc i64 %call14 to i32
  %8 = load i32* %n, align 4, !tbaa !3
  %cmp17 = icmp eq i32 %conv15, %8
  br i1 %cmp17, label %if.end22, label %if.then19

if.then19:                                        ; preds = %if.end11
  %9 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call21 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %9, i8* getelementptr inbounds ([77 x i8]* @.str25, i64 0, i64 0), %struct._Tree* %tree, %struct._IO_FILE* %fp, i32 %conv15, i32 %8) #5
  br label %return

if.end22:                                         ; preds = %if.end11
  %fch = getelementptr inbounds %struct._Tree* %tree, i64 0, i32 3
  %10 = load i32** %fch, align 8, !tbaa !0
  %11 = bitcast i32* %10 to i8*
  %sext = shl i64 %call14, 32
  %conv24 = ashr exact i64 %sext, 32
  %call25 = call i64 @fwrite(i8* %11, i64 4, i64 %conv24, %struct._IO_FILE* %fp) #5
  %conv26 = trunc i64 %call25 to i32
  %12 = load i32* %n, align 4, !tbaa !3
  %cmp28 = icmp eq i32 %conv26, %12
  br i1 %cmp28, label %if.end33, label %if.then30

if.then30:                                        ; preds = %if.end22
  %13 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call32 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %13, i8* getelementptr inbounds ([77 x i8]* @.str26, i64 0, i64 0), %struct._Tree* %tree, %struct._IO_FILE* %fp, i32 %conv26, i32 %12) #5
  br label %return

if.end33:                                         ; preds = %if.end22
  %sib = getelementptr inbounds %struct._Tree* %tree, i64 0, i32 4
  %14 = load i32** %sib, align 8, !tbaa !0
  %15 = bitcast i32* %14 to i8*
  %sext81 = shl i64 %call25, 32
  %conv35 = ashr exact i64 %sext81, 32
  %call36 = call i64 @fwrite(i8* %15, i64 4, i64 %conv35, %struct._IO_FILE* %fp) #5
  %conv37 = trunc i64 %call36 to i32
  %16 = load i32* %n, align 4, !tbaa !3
  %cmp39 = icmp eq i32 %conv37, %16
  br i1 %cmp39, label %return, label %if.then41

if.then41:                                        ; preds = %if.end33
  %17 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call43 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %17, i8* getelementptr inbounds ([77 x i8]* @.str27, i64 0, i64 0), %struct._Tree* %tree, %struct._IO_FILE* %fp, i32 %conv37, i32 %16) #5
  br label %return

return:                                           ; preds = %if.end33, %if.then41, %if.then30, %if.then19, %if.then9
  %retval.0 = phi i32 [ 0, %if.then9 ], [ 0, %if.then19 ], [ 0, %if.then30 ], [ 0, %if.then41 ], [ 1, %if.end33 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind optsize uwtable
define i32 @Tree_writeToFormattedFile(%struct._Tree* %tree, %struct._IO_FILE* %fp) #0 {
entry:
  %ierr = alloca i32, align 4
  %cmp = icmp eq %struct._Tree* %tree, null
  %cmp1 = icmp eq %struct._IO_FILE* %fp, null
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %if.then, label %lor.lhs.false2

lor.lhs.false2:                                   ; preds = %entry
  %n = getelementptr inbounds %struct._Tree* %tree, i64 0, i32 0
  %0 = load i32* %n, align 4, !tbaa !3
  %cmp3 = icmp slt i32 %0, 1
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false2, %entry
  %1 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([62 x i8]* @.str20, i64 0, i64 0), %struct._Tree* %tree, %struct._IO_FILE* %fp) #5
  call void @exit(i32 -1) #8
  unreachable

if.end:                                           ; preds = %lor.lhs.false2
  %root = getelementptr inbounds %struct._Tree* %tree, i64 0, i32 1
  %2 = load i32* %root, align 4, !tbaa !3
  %call5 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([8 x i8]* @.str21, i64 0, i64 0), i32 %0, i32 %2) #5
  %cmp6 = icmp slt i32 %call5, 0
  br i1 %cmp6, label %if.then7, label %if.end9

if.then7:                                         ; preds = %if.end
  %3 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call8 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([87 x i8]* @.str22, i64 0, i64 0), %struct._Tree* %tree, %struct._IO_FILE* %fp, i32 %call5) #5
  br label %return

if.end9:                                          ; preds = %if.end
  %4 = load i32* %n, align 4, !tbaa !3
  %par = getelementptr inbounds %struct._Tree* %tree, i64 0, i32 2
  %5 = load i32** %par, align 8, !tbaa !0
  %call11 = call i32 @IVfp80(%struct._IO_FILE* %fp, i32 %4, i32* %5, i32 80, i32* %ierr) #5
  %6 = load i32* %n, align 4, !tbaa !3
  %fch = getelementptr inbounds %struct._Tree* %tree, i64 0, i32 3
  %7 = load i32** %fch, align 8, !tbaa !0
  %call13 = call i32 @IVfp80(%struct._IO_FILE* %fp, i32 %6, i32* %7, i32 80, i32* %ierr) #5
  %8 = load i32* %n, align 4, !tbaa !3
  %sib = getelementptr inbounds %struct._Tree* %tree, i64 0, i32 4
  %9 = load i32** %sib, align 8, !tbaa !0
  %call15 = call i32 @IVfp80(%struct._IO_FILE* %fp, i32 %8, i32* %9, i32 80, i32* %ierr) #5
  br label %return

return:                                           ; preds = %if.end9, %if.then7
  %retval.0 = phi i32 [ 0, %if.then7 ], [ 1, %if.end9 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind optsize uwtable
define i32 @Tree_writeForHumanEye(%struct._Tree* %tree, %struct._IO_FILE* %fp) #0 {
entry:
  %cmp = icmp eq %struct._Tree* %tree, null
  %cmp1 = icmp eq %struct._IO_FILE* %fp, null
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([58 x i8]* @.str28, i64 0, i64 0), %struct._Tree* %tree, %struct._IO_FILE* %fp) #5
  tail call void @exit(i32 -1) #8
  unreachable

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @Tree_writeStats(%struct._Tree* %tree, %struct._IO_FILE* %fp) #7
  %cmp3 = icmp eq i32 %call2, 0
  br i1 %cmp3, label %if.then4, label %if.end6

if.then4:                                         ; preds = %if.end
  %1 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call5 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([92 x i8]* @.str29, i64 0, i64 0), %struct._Tree* %tree, %struct._IO_FILE* %fp, i32 0, %struct._Tree* %tree, %struct._IO_FILE* %fp) #5
  br label %return

if.end6:                                          ; preds = %if.end
  %2 = tail call i64 @fwrite(i8* getelementptr inbounds ([37 x i8]* @.str30, i64 0, i64 0), i64 36, i64 1, %struct._IO_FILE* %fp) #9
  %n = getelementptr inbounds %struct._Tree* %tree, i64 0, i32 0
  %3 = load i32* %n, align 4, !tbaa !3
  %cmp833 = icmp sgt i32 %3, 0
  br i1 %cmp833, label %for.body.lr.ph, label %return

for.body.lr.ph:                                   ; preds = %if.end6
  %par = getelementptr inbounds %struct._Tree* %tree, i64 0, i32 2
  %fch = getelementptr inbounds %struct._Tree* %tree, i64 0, i32 3
  %sib = getelementptr inbounds %struct._Tree* %tree, i64 0, i32 4
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.body ]
  %4 = load i32** %par, align 8, !tbaa !0
  %arrayidx = getelementptr inbounds i32* %4, i64 %indvars.iv
  %5 = load i32* %arrayidx, align 4, !tbaa !3
  %6 = load i32** %fch, align 8, !tbaa !0
  %arrayidx10 = getelementptr inbounds i32* %6, i64 %indvars.iv
  %7 = load i32* %arrayidx10, align 4, !tbaa !3
  %8 = load i32** %sib, align 8, !tbaa !0
  %arrayidx12 = getelementptr inbounds i32* %8, i64 %indvars.iv
  %9 = load i32* %arrayidx12, align 4, !tbaa !3
  %10 = trunc i64 %indvars.iv to i32
  %call13 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([20 x i8]* @.str31, i64 0, i64 0), i32 %10, i32 %5, i32 %7, i32 %9) #5
  %indvars.iv.next = add i64 %indvars.iv, 1
  %11 = load i32* %n, align 4, !tbaa !3
  %12 = trunc i64 %indvars.iv.next to i32
  %cmp8 = icmp slt i32 %12, %11
  br i1 %cmp8, label %for.body, label %return

return:                                           ; preds = %if.end6, %for.body, %if.then4
  %retval.0 = phi i32 [ 0, %if.then4 ], [ 1, %for.body ], [ 1, %if.end6 ]
  ret i32 %retval.0
}

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32) #4

; Function Attrs: optsize
declare i32 @IVfp80(%struct._IO_FILE*, i32, i32*, i32, i32*) #3

; Function Attrs: nounwind optsize
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #1

; Function Attrs: nounwind optsize uwtable
define i32 @Tree_writeStats(%struct._Tree* %tree, %struct._IO_FILE* %fp) #0 {
entry:
  %cmp = icmp eq %struct._Tree* %tree, null
  %cmp1 = icmp eq %struct._IO_FILE* %fp, null
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([46 x i8]* @.str32, i64 0, i64 0), %struct._Tree* %tree, %struct._IO_FILE* %fp) #5
  tail call void @exit(i32 -1) #8
  unreachable

if.end:                                           ; preds = %entry
  %n = getelementptr inbounds %struct._Tree* %tree, i64 0, i32 0
  %1 = load i32* %n, align 4, !tbaa !3
  %root = getelementptr inbounds %struct._Tree* %tree, i64 0, i32 1
  %2 = load i32* %root, align 4, !tbaa !3
  %call2 = tail call i32 @Tree_sizeOf(%struct._Tree* %tree) #5
  %call3 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([61 x i8]* @.str33, i64 0, i64 0), i32 %1, i32 %2, i32 %call2) #5
  %cmp4 = icmp slt i32 %call3, 0
  br i1 %cmp4, label %if.then5, label %return

if.then5:                                         ; preds = %if.end
  %3 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call6 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([71 x i8]* @.str34, i64 0, i64 0), %struct._Tree* %tree, %struct._IO_FILE* %fp, i32 %call3) #5
  br label %return

return:                                           ; preds = %if.end, %if.then5
  %retval.0 = phi i32 [ 0, %if.then5 ], [ 1, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: optsize
declare i32 @Tree_sizeOf(%struct._Tree*) #3

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
