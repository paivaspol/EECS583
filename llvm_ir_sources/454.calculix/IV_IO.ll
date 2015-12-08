; ModuleID = '../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/IV/src/IV_IO.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct._IV = type { i32, i32, i32, i32* }

@stderr = external global %struct._IO_FILE*
@.str = private unnamed_addr constant [64 x i8] c"\0A error in IV_readFromFile(%p,%s), file %s, line %d\0A bad input\0A\00", align 1
@.str1 = private unnamed_addr constant [69 x i8] c"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/IV/src/IV_IO.c\00", align 1
@.str2 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str3 = private unnamed_addr constant [58 x i8] c"\0A error in IV_readFromFile(%p,%s)\0A unable to open file %s\00", align 1
@.str4 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str5 = private unnamed_addr constant [100 x i8] c"\0A error in IV_readFromFile(%p,%s)\0A bad IV file name %s,\0A must end in %s (binary) or %s (formatted)\0A\00", align 1
@.str6 = private unnamed_addr constant [55 x i8] c"\0A error in IV_readFromFormattedFile(%p,%p)\0A bad input\0A\00", align 1
@.str7 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str8 = private unnamed_addr constant [65 x i8] c"\0A error in IV_readFromFormattedFile(%p,%p)\0A %d items of %d read\0A\00", align 1
@.str9 = private unnamed_addr constant [58 x i8] c"\0A fatal error in IV_readFromBinaryFile(%p,%p)\0A bad input\0A\00", align 1
@.str10 = private unnamed_addr constant [73 x i8] c"\0A error in IV_readFromBinaryFile(%p,%p)\0A itemp(3) : %d items of %d read\0A\00", align 1
@.str11 = private unnamed_addr constant [74 x i8] c"\0A error in IV_readFromBinaryFile(%p,%p)\0A sizes(%d) : %d items of %d read\0A\00", align 1
@.str12 = private unnamed_addr constant [51 x i8] c"\0A fatal error in IV_writeToFile(%p,%s)\0A bad input\0A\00", align 1
@.str13 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@.str14 = private unnamed_addr constant [57 x i8] c"\0A error in IV_writeToFile(%p,%s)\0A unable to open file %s\00", align 1
@.str15 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str16 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str17 = private unnamed_addr constant [60 x i8] c"\0A fatal error in IV_writeToFormattedFile(%p,%p)\0A bad input\0A\00", align 1
@.str18 = private unnamed_addr constant [16 x i8] c"\0A iv->size = %d\00", align 1
@.str19 = private unnamed_addr constant [5 x i8] c"\0A %d\00", align 1
@.str20 = private unnamed_addr constant [85 x i8] c"\0A fatal error in IV_writeToFormattedFile(%p,%p)\0A rc = %d, return from first fprintf\0A\00", align 1
@.str21 = private unnamed_addr constant [88 x i8] c"\0A fatal error in IV_writeToFormattedFile(%p,%p)\0A ierr = %d, return from sizes[] IVfp80\0A\00", align 1
@.str22 = private unnamed_addr constant [57 x i8] c"\0A fatal error in IV_writeToBinaryFile(%p,%p)\0A bad input\0A\00", align 1
@.str23 = private unnamed_addr constant [71 x i8] c"\0A error in IV_writeToBinaryFile(%p,%p)\0A %d of %d scalar items written\0A\00", align 1
@.str24 = private unnamed_addr constant [75 x i8] c"\0A error in IV_writeToBinaryFile(%p,%p)\0A iv->sizes, %d of %d items written\0A\00", align 1
@.str25 = private unnamed_addr constant [56 x i8] c"\0A fatal error in IV_writeForHumanEye(%p,%p)\0A bad input\0A\00", align 1
@.str26 = private unnamed_addr constant [88 x i8] c"\0A fatal error in IV_writeForHumanEye(%p,%p)\0A rc = %d, return from IV_writeStats(%p,%p)\0A\00", align 1
@.str27 = private unnamed_addr constant [44 x i8] c"\0A error in IV_writeStats(%p,%p)\0A bad input\0A\00", align 1
@.str28 = private unnamed_addr constant [32 x i8] c"\0A IV : integer vector object : \00", align 1
@.str29 = private unnamed_addr constant [37 x i8] c" size = %d, maxsize = %d, owned = %d\00", align 1
@.str30 = private unnamed_addr constant [69 x i8] c"\0A fatal error in IV_writeStats(%p,%p)\0A rc = %d, return from fprintf\0A\00", align 1
@.str31 = private unnamed_addr constant [47 x i8] c"\0A fatal error in IV_fp80(%p,%p,%p)\0A bad input\0A\00", align 1
@.str32 = private unnamed_addr constant [51 x i8] c"\0A error in IV_writeForMatlab(%p,%p,%p)\0A bad input\0A\00", align 1
@.str33 = private unnamed_addr constant [22 x i8] c"\0A %s = zeros(%d,%d) ;\00", align 1
@.str34 = private unnamed_addr constant [16 x i8] c"\0A %s(%d) = %d ;\00", align 1
@.str35 = private unnamed_addr constant [5 x i8] c".ivf\00", align 1
@.str36 = private unnamed_addr constant [5 x i8] c".ivb\00", align 1

; Function Attrs: nounwind optsize uwtable
define i32 @IV_readFromFile(%struct._IV* %iv, i8* %fn) #0 {
entry:
  %cmp = icmp eq %struct._IV* %iv, null
  %cmp1 = icmp eq i8* %fn, null
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([64 x i8]* @.str, i64 0, i64 0), %struct._IV* %iv, i8* %fn, i8* getelementptr inbounds ([69 x i8]* @.str1, i64 0, i64 0), i32 37) #5
  br label %return

if.end:                                           ; preds = %entry
  %call2 = tail call i64 @strlen(i8* %fn) #6
  %conv = trunc i64 %call2 to i32
  %cmp5 = icmp sgt i32 %conv, 4
  br i1 %cmp5, label %if.then7, label %if.else41

if.then7:                                         ; preds = %if.end
  %sub = shl i64 %call2, 32
  %sext = add i64 %sub, -17179869184
  %idxprom = ashr exact i64 %sext, 32
  %arrayidx = getelementptr inbounds i8* %fn, i64 %idxprom
  %call8 = tail call i32 @strcmp(i8* %arrayidx, i8* getelementptr inbounds ([5 x i8]* @.str36, i64 0, i64 0)) #6
  %cmp9 = icmp eq i32 %call8, 0
  br i1 %cmp9, label %if.then11, label %if.else20

if.then11:                                        ; preds = %if.then7
  %call12 = tail call %struct._IO_FILE* @fopen(i8* %fn, i8* getelementptr inbounds ([3 x i8]* @.str2, i64 0, i64 0)) #5
  %cmp13 = icmp eq %struct._IO_FILE* %call12, null
  br i1 %cmp13, label %if.then15, label %if.else

if.then15:                                        ; preds = %if.then11
  %1 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call16 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([58 x i8]* @.str3, i64 0, i64 0), %struct._IV* %iv, i8* %fn, i8* %fn) #5
  br label %return

if.else:                                          ; preds = %if.then11
  %call17 = tail call i32 @IV_readFromBinaryFile(%struct._IV* %iv, %struct._IO_FILE* %call12) #7
  %call18 = tail call i32 @fclose(%struct._IO_FILE* %call12) #5
  br label %return

if.else20:                                        ; preds = %if.then7
  %call24 = tail call i32 @strcmp(i8* %arrayidx, i8* getelementptr inbounds ([5 x i8]* @.str35, i64 0, i64 0)) #6
  %cmp25 = icmp eq i32 %call24, 0
  br i1 %cmp25, label %if.then27, label %if.else37

if.then27:                                        ; preds = %if.else20
  %call28 = tail call %struct._IO_FILE* @fopen(i8* %fn, i8* getelementptr inbounds ([2 x i8]* @.str4, i64 0, i64 0)) #5
  %cmp29 = icmp eq %struct._IO_FILE* %call28, null
  br i1 %cmp29, label %if.then31, label %if.else33

if.then31:                                        ; preds = %if.then27
  %2 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call32 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([58 x i8]* @.str3, i64 0, i64 0), %struct._IV* %iv, i8* %fn, i8* %fn) #5
  br label %return

if.else33:                                        ; preds = %if.then27
  %call34 = tail call i32 @IV_readFromFormattedFile(%struct._IV* %iv, %struct._IO_FILE* %call28) #7
  %call35 = tail call i32 @fclose(%struct._IO_FILE* %call28) #5
  br label %return

if.else37:                                        ; preds = %if.else20
  %3 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call38 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([100 x i8]* @.str5, i64 0, i64 0), %struct._IV* %iv, i8* %fn, i8* %fn, i8* getelementptr inbounds ([5 x i8]* @.str36, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str35, i64 0, i64 0)) #5
  br label %return

if.else41:                                        ; preds = %if.end
  %4 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call42 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([100 x i8]* @.str5, i64 0, i64 0), %struct._IV* %iv, i8* %fn, i8* %fn, i8* getelementptr inbounds ([5 x i8]* @.str36, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str35, i64 0, i64 0)) #5
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
define i32 @IV_readFromBinaryFile(%struct._IV* %iv, %struct._IO_FILE* %fp) #0 {
entry:
  %size = alloca i32, align 4
  %cmp = icmp eq %struct._IV* %iv, null
  %cmp1 = icmp eq %struct._IO_FILE* %fp, null
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([58 x i8]* @.str9, i64 0, i64 0), %struct._IV* %iv, %struct._IO_FILE* %fp) #5
  br label %return

if.end:                                           ; preds = %entry
  call void @IV_clearData(%struct._IV* %iv) #5
  %1 = bitcast i32* %size to i8*
  %call2 = call i64 @fread(i8* %1, i64 4, i64 1, %struct._IO_FILE* %fp) #5
  %conv = trunc i64 %call2 to i32
  %cmp3 = icmp eq i32 %conv, 1
  br i1 %cmp3, label %if.end7, label %if.then5

if.then5:                                         ; preds = %if.end
  %2 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call6 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([73 x i8]* @.str10, i64 0, i64 0), %struct._IV* %iv, %struct._IO_FILE* %fp, i32 %conv, i32 1) #5
  br label %return

if.end7:                                          ; preds = %if.end
  %3 = load i32* %size, align 4, !tbaa !3
  call void @IV_init(%struct._IV* %iv, i32 %3, i32* null) #5
  %size8 = getelementptr inbounds %struct._IV* %iv, i64 0, i32 0
  store i32 %3, i32* %size8, align 4, !tbaa !3
  %vec = getelementptr inbounds %struct._IV* %iv, i64 0, i32 3
  %4 = load i32** %vec, align 8, !tbaa !0
  %5 = bitcast i32* %4 to i8*
  %conv9 = sext i32 %3 to i64
  %call10 = call i64 @fread(i8* %5, i64 4, i64 %conv9, %struct._IO_FILE* %fp) #5
  %conv11 = trunc i64 %call10 to i32
  %cmp12 = icmp eq i32 %conv11, %3
  br i1 %cmp12, label %return, label %if.then14

if.then14:                                        ; preds = %if.end7
  %6 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call15 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %6, i8* getelementptr inbounds ([74 x i8]* @.str11, i64 0, i64 0), %struct._IV* %iv, %struct._IO_FILE* %fp, i32 %3, i32 %conv11, i32 %3) #5
  br label %return

return:                                           ; preds = %if.end7, %if.then14, %if.then5, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %if.then5 ], [ 0, %if.then14 ], [ 1, %if.end7 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind optsize
declare i32 @fclose(%struct._IO_FILE* nocapture) #1

; Function Attrs: nounwind optsize uwtable
define i32 @IV_readFromFormattedFile(%struct._IV* %iv, %struct._IO_FILE* %fp) #0 {
entry:
  %size = alloca i32, align 4
  %cmp = icmp eq %struct._IV* %iv, null
  %cmp1 = icmp eq %struct._IO_FILE* %fp, null
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([55 x i8]* @.str6, i64 0, i64 0), %struct._IV* %iv, %struct._IO_FILE* %fp) #5
  br label %return

if.end:                                           ; preds = %entry
  call void @IV_clearData(%struct._IV* %iv) #5
  %call2 = call i32 (%struct._IO_FILE*, i8*, ...)* @__isoc99_fscanf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([3 x i8]* @.str7, i64 0, i64 0), i32* %size) #5
  %cmp3 = icmp eq i32 %call2, 1
  br i1 %cmp3, label %if.end6, label %if.then4

if.then4:                                         ; preds = %if.end
  %1 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call5 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([65 x i8]* @.str8, i64 0, i64 0), %struct._IV* %iv, %struct._IO_FILE* %fp, i32 %call2, i32 1) #5
  br label %return

if.end6:                                          ; preds = %if.end
  %2 = load i32* %size, align 4, !tbaa !3
  call void @IV_init(%struct._IV* %iv, i32 %2, i32* null) #5
  %3 = load i32* %size, align 4, !tbaa !3
  %size7 = getelementptr inbounds %struct._IV* %iv, i64 0, i32 0
  store i32 %3, i32* %size7, align 4, !tbaa !3
  %vec = getelementptr inbounds %struct._IV* %iv, i64 0, i32 3
  %4 = load i32** %vec, align 8, !tbaa !0
  %call8 = call i32 @IVfscanf(%struct._IO_FILE* %fp, i32 %3, i32* %4) #5
  %5 = load i32* %size, align 4, !tbaa !3
  %cmp9 = icmp eq i32 %call8, %5
  br i1 %cmp9, label %return, label %if.then10

if.then10:                                        ; preds = %if.end6
  %6 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call11 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %6, i8* getelementptr inbounds ([65 x i8]* @.str8, i64 0, i64 0), %struct._IV* %iv, %struct._IO_FILE* %fp, i32 %call8, i32 %5) #5
  br label %return

return:                                           ; preds = %if.end6, %if.then10, %if.then4, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %if.then4 ], [ 0, %if.then10 ], [ 1, %if.end6 ]
  ret i32 %retval.0
}

; Function Attrs: optsize
declare void @IV_clearData(%struct._IV*) #3

; Function Attrs: optsize
declare i32 @__isoc99_fscanf(%struct._IO_FILE*, i8*, ...) #3

; Function Attrs: optsize
declare void @IV_init(%struct._IV*, i32, i32*) #3

; Function Attrs: optsize
declare i32 @IVfscanf(%struct._IO_FILE*, i32, i32*) #3

; Function Attrs: nounwind optsize
declare i64 @fread(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #1

; Function Attrs: nounwind optsize uwtable
define i32 @IV_writeToFile(%struct._IV* %iv, i8* %fn) #0 {
entry:
  %cmp = icmp eq %struct._IV* %iv, null
  %cmp1 = icmp eq i8* %fn, null
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([51 x i8]* @.str12, i64 0, i64 0), %struct._IV* %iv, i8* %fn) #5
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  %call2 = tail call i64 @strlen(i8* %fn) #6
  %conv = trunc i64 %call2 to i32
  %cmp5 = icmp sgt i32 %conv, 4
  br i1 %cmp5, label %if.then7, label %if.else49

if.then7:                                         ; preds = %if.end
  %sub = shl i64 %call2, 32
  %sext = add i64 %sub, -17179869184
  %idxprom = ashr exact i64 %sext, 32
  %arrayidx = getelementptr inbounds i8* %fn, i64 %idxprom
  %call8 = tail call i32 @strcmp(i8* %arrayidx, i8* getelementptr inbounds ([5 x i8]* @.str36, i64 0, i64 0)) #6
  %cmp9 = icmp eq i32 %call8, 0
  br i1 %cmp9, label %if.then11, label %if.else20

if.then11:                                        ; preds = %if.then7
  %call12 = tail call %struct._IO_FILE* @fopen(i8* %fn, i8* getelementptr inbounds ([3 x i8]* @.str13, i64 0, i64 0)) #5
  %cmp13 = icmp eq %struct._IO_FILE* %call12, null
  br i1 %cmp13, label %if.then15, label %if.else

if.then15:                                        ; preds = %if.then11
  %1 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call16 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([57 x i8]* @.str14, i64 0, i64 0), %struct._IV* %iv, i8* %fn, i8* %fn) #5
  br label %if.end59

if.else:                                          ; preds = %if.then11
  %call17 = tail call i32 @IV_writeToBinaryFile(%struct._IV* %iv, %struct._IO_FILE* %call12) #7
  %call18 = tail call i32 @fclose(%struct._IO_FILE* %call12) #5
  br label %if.end59

if.else20:                                        ; preds = %if.then7
  %call24 = tail call i32 @strcmp(i8* %arrayidx, i8* getelementptr inbounds ([5 x i8]* @.str35, i64 0, i64 0)) #6
  %cmp25 = icmp eq i32 %call24, 0
  br i1 %cmp25, label %if.then27, label %if.else37

if.then27:                                        ; preds = %if.else20
  %call28 = tail call %struct._IO_FILE* @fopen(i8* %fn, i8* getelementptr inbounds ([2 x i8]* @.str15, i64 0, i64 0)) #5
  %cmp29 = icmp eq %struct._IO_FILE* %call28, null
  br i1 %cmp29, label %if.then31, label %if.else33

if.then31:                                        ; preds = %if.then27
  %2 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call32 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([57 x i8]* @.str14, i64 0, i64 0), %struct._IV* %iv, i8* %fn, i8* %fn) #5
  br label %if.end59

if.else33:                                        ; preds = %if.then27
  %call34 = tail call i32 @IV_writeToFormattedFile(%struct._IV* %iv, %struct._IO_FILE* %call28) #7
  %call35 = tail call i32 @fclose(%struct._IO_FILE* %call28) #5
  br label %if.end59

if.else37:                                        ; preds = %if.else20
  %call38 = tail call %struct._IO_FILE* @fopen(i8* %fn, i8* getelementptr inbounds ([2 x i8]* @.str16, i64 0, i64 0)) #5
  %cmp39 = icmp eq %struct._IO_FILE* %call38, null
  br i1 %cmp39, label %if.then41, label %if.else43

if.then41:                                        ; preds = %if.else37
  %3 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call42 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([57 x i8]* @.str14, i64 0, i64 0), %struct._IV* %iv, i8* %fn, i8* %fn) #5
  br label %if.end59

if.else43:                                        ; preds = %if.else37
  %call44 = tail call i32 @IV_writeForHumanEye(%struct._IV* %iv, %struct._IO_FILE* %call38) #7
  %call45 = tail call i32 @fclose(%struct._IO_FILE* %call38) #5
  br label %if.end59

if.else49:                                        ; preds = %if.end
  %call50 = tail call %struct._IO_FILE* @fopen(i8* %fn, i8* getelementptr inbounds ([2 x i8]* @.str16, i64 0, i64 0)) #5
  %cmp51 = icmp eq %struct._IO_FILE* %call50, null
  br i1 %cmp51, label %if.then53, label %if.else55

if.then53:                                        ; preds = %if.else49
  %4 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call54 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([57 x i8]* @.str14, i64 0, i64 0), %struct._IV* %iv, i8* %fn, i8* %fn) #5
  br label %if.end59

if.else55:                                        ; preds = %if.else49
  %call56 = tail call i32 @IV_writeForHumanEye(%struct._IV* %iv, %struct._IO_FILE* %call50) #7
  %call57 = tail call i32 @fclose(%struct._IO_FILE* %call50) #5
  br label %if.end59

if.end59:                                         ; preds = %if.then53, %if.else55, %if.else, %if.then15, %if.then41, %if.else43, %if.then31, %if.else33
  %rc.0 = phi i32 [ 0, %if.then15 ], [ %call17, %if.else ], [ 0, %if.then31 ], [ %call34, %if.else33 ], [ 0, %if.then41 ], [ %call44, %if.else43 ], [ 0, %if.then53 ], [ %call56, %if.else55 ]
  ret i32 %rc.0
}

; Function Attrs: nounwind optsize uwtable
define i32 @IV_writeToBinaryFile(%struct._IV* %iv, %struct._IO_FILE* %fp) #0 {
entry:
  %cmp = icmp eq %struct._IV* %iv, null
  %cmp1 = icmp eq %struct._IO_FILE* %fp, null
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %if.then, label %lor.lhs.false2

lor.lhs.false2:                                   ; preds = %entry
  %size = getelementptr inbounds %struct._IV* %iv, i64 0, i32 0
  %0 = load i32* %size, align 4, !tbaa !3
  %cmp3 = icmp slt i32 %0, 1
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false2, %entry
  %1 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([57 x i8]* @.str22, i64 0, i64 0), %struct._IV* %iv, %struct._IO_FILE* %fp) #5
  tail call void @exit(i32 -1) #8
  unreachable

if.end:                                           ; preds = %lor.lhs.false2
  %2 = bitcast %struct._IV* %iv to i8*
  %call5 = tail call i64 @fwrite(i8* %2, i64 4, i64 1, %struct._IO_FILE* %fp) #5
  %conv = trunc i64 %call5 to i32
  %cmp6 = icmp eq i32 %conv, 1
  br i1 %cmp6, label %if.end10, label %if.then8

if.then8:                                         ; preds = %if.end
  %3 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call9 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([71 x i8]* @.str23, i64 0, i64 0), %struct._IV* %iv, %struct._IO_FILE* %fp, i32 %conv, i32 1) #5
  br label %return

if.end10:                                         ; preds = %if.end
  %vec = getelementptr inbounds %struct._IV* %iv, i64 0, i32 3
  %4 = load i32** %vec, align 8, !tbaa !0
  %5 = bitcast i32* %4 to i8*
  %6 = load i32* %size, align 4, !tbaa !3
  %conv12 = sext i32 %6 to i64
  %call13 = tail call i64 @fwrite(i8* %5, i64 4, i64 %conv12, %struct._IO_FILE* %fp) #5
  %conv14 = trunc i64 %call13 to i32
  %7 = load i32* %size, align 4, !tbaa !3
  %cmp16 = icmp eq i32 %conv14, %7
  br i1 %cmp16, label %return, label %if.then18

if.then18:                                        ; preds = %if.end10
  %8 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call20 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %8, i8* getelementptr inbounds ([75 x i8]* @.str24, i64 0, i64 0), %struct._IV* %iv, %struct._IO_FILE* %fp, i32 %conv14, i32 %7) #5
  br label %return

return:                                           ; preds = %if.end10, %if.then18, %if.then8
  %retval.0 = phi i32 [ 0, %if.then8 ], [ 0, %if.then18 ], [ 1, %if.end10 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind optsize uwtable
define i32 @IV_writeToFormattedFile(%struct._IV* %iv, %struct._IO_FILE* %fp) #0 {
entry:
  %ierr = alloca i32, align 4
  %cmp = icmp eq %struct._IV* %iv, null
  %cmp1 = icmp eq %struct._IO_FILE* %fp, null
  %or.cond = or i1 %cmp, %cmp1
  %size4.pre = getelementptr inbounds %struct._IV* %iv, i64 0, i32 0
  br i1 %or.cond, label %if.then, label %lor.lhs.false2

lor.lhs.false2:                                   ; preds = %entry
  %0 = load i32* %size4.pre, align 4, !tbaa !3
  %cmp3 = icmp slt i32 %0, 1
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %entry, %lor.lhs.false2
  %1 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([60 x i8]* @.str17, i64 0, i64 0), %struct._IV* %iv, %struct._IO_FILE* %fp) #5
  %2 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %3 = load i32* %size4.pre, align 4, !tbaa !3
  %call5 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([16 x i8]* @.str18, i64 0, i64 0), i32 %3) #5
  call void @exit(i32 -1) #8
  unreachable

if.end:                                           ; preds = %lor.lhs.false2
  %call7 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([5 x i8]* @.str19, i64 0, i64 0), i32 %0) #5
  %cmp8 = icmp slt i32 %call7, 0
  br i1 %cmp8, label %if.then9, label %if.end11

if.then9:                                         ; preds = %if.end
  %4 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call10 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([85 x i8]* @.str20, i64 0, i64 0), %struct._IV* %iv, %struct._IO_FILE* %fp, i32 %call7) #5
  br label %return

if.end11:                                         ; preds = %if.end
  %5 = load i32* %size4.pre, align 4, !tbaa !3
  %cmp13 = icmp sgt i32 %5, 0
  br i1 %cmp13, label %if.then14, label %return

if.then14:                                        ; preds = %if.end11
  %vec = getelementptr inbounds %struct._IV* %iv, i64 0, i32 3
  %6 = load i32** %vec, align 8, !tbaa !0
  %call16 = call i32 @IVfp80(%struct._IO_FILE* %fp, i32 %5, i32* %6, i32 80, i32* %ierr) #5
  %7 = load i32* %ierr, align 4, !tbaa !3
  %cmp17 = icmp slt i32 %7, 0
  br i1 %cmp17, label %if.then18, label %return

if.then18:                                        ; preds = %if.then14
  %8 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call19 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %8, i8* getelementptr inbounds ([88 x i8]* @.str21, i64 0, i64 0), %struct._IV* %iv, %struct._IO_FILE* %fp, i32 %7) #5
  br label %return

return:                                           ; preds = %if.end11, %if.then14, %if.then18, %if.then9
  %retval.0 = phi i32 [ 0, %if.then9 ], [ 0, %if.then18 ], [ 1, %if.then14 ], [ 1, %if.end11 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind optsize uwtable
define i32 @IV_writeForHumanEye(%struct._IV* %iv, %struct._IO_FILE* %fp) #0 {
entry:
  %ierr = alloca i32, align 4
  %cmp = icmp eq %struct._IV* %iv, null
  %cmp1 = icmp eq %struct._IO_FILE* %fp, null
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([56 x i8]* @.str25, i64 0, i64 0), %struct._IV* %iv, %struct._IO_FILE* %fp) #5
  call void @exit(i32 -1) #8
  unreachable

if.end:                                           ; preds = %entry
  %call2 = call i32 @IV_writeStats(%struct._IV* %iv, %struct._IO_FILE* %fp) #7
  %cmp3 = icmp eq i32 %call2, 0
  br i1 %cmp3, label %if.then4, label %if.end6

if.then4:                                         ; preds = %if.end
  %1 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call5 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([88 x i8]* @.str26, i64 0, i64 0), %struct._IV* %iv, %struct._IO_FILE* %fp, i32 0, %struct._IV* %iv, %struct._IO_FILE* %fp) #5
  br label %return

if.end6:                                          ; preds = %if.end
  %size = getelementptr inbounds %struct._IV* %iv, i64 0, i32 0
  %2 = load i32* %size, align 4, !tbaa !3
  %vec = getelementptr inbounds %struct._IV* %iv, i64 0, i32 3
  %3 = load i32** %vec, align 8, !tbaa !0
  %call7 = call i32 @IVfp80(%struct._IO_FILE* %fp, i32 %2, i32* %3, i32 80, i32* %ierr) #5
  br label %return

return:                                           ; preds = %if.end6, %if.then4
  %retval.0 = phi i32 [ 0, %if.then4 ], [ 1, %if.end6 ]
  ret i32 %retval.0
}

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32) #4

; Function Attrs: optsize
declare i32 @IVfp80(%struct._IO_FILE*, i32, i32*, i32, i32*) #3

; Function Attrs: nounwind optsize
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #1

; Function Attrs: nounwind optsize uwtable
define i32 @IV_writeStats(%struct._IV* %iv, %struct._IO_FILE* %fp) #0 {
entry:
  %cmp = icmp eq %struct._IV* %iv, null
  %cmp1 = icmp eq %struct._IO_FILE* %fp, null
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([44 x i8]* @.str27, i64 0, i64 0), %struct._IV* %iv, %struct._IO_FILE* %fp) #5
  tail call void @exit(i32 -1) #8
  unreachable

if.end:                                           ; preds = %entry
  %call2 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([32 x i8]* @.str28, i64 0, i64 0)) #5
  %cmp3 = icmp slt i32 %call2, 0
  br i1 %cmp3, label %IO_error, label %if.end5

if.end5:                                          ; preds = %if.end
  %size = getelementptr inbounds %struct._IV* %iv, i64 0, i32 0
  %1 = load i32* %size, align 4, !tbaa !3
  %maxsize = getelementptr inbounds %struct._IV* %iv, i64 0, i32 1
  %2 = load i32* %maxsize, align 4, !tbaa !3
  %owned = getelementptr inbounds %struct._IV* %iv, i64 0, i32 2
  %3 = load i32* %owned, align 4, !tbaa !3
  %call6 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([37 x i8]* @.str29, i64 0, i64 0), i32 %1, i32 %2, i32 %3) #5
  %cmp7 = icmp slt i32 %call6, 0
  br i1 %cmp7, label %IO_error, label %return

IO_error:                                         ; preds = %if.end5, %if.end
  %rc.0 = phi i32 [ %call2, %if.end ], [ %call6, %if.end5 ]
  %4 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call10 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([69 x i8]* @.str30, i64 0, i64 0), %struct._IV* %iv, %struct._IO_FILE* %fp, i32 %rc.0) #5
  br label %return

return:                                           ; preds = %if.end5, %IO_error
  %retval.0 = phi i32 [ 0, %IO_error ], [ 1, %if.end5 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind optsize uwtable
define i32 @IV_fp80(%struct._IV* %iv, %struct._IO_FILE* %fp, i32 %column, i32* %pierr) #0 {
entry:
  %cmp = icmp eq %struct._IV* %iv, null
  %cmp1 = icmp eq %struct._IO_FILE* %fp, null
  %or.cond = or i1 %cmp, %cmp1
  %cmp3 = icmp eq i32* %pierr, null
  %or.cond21 = or i1 %or.cond, %cmp3
  br i1 %or.cond21, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([47 x i8]* @.str31, i64 0, i64 0), %struct._IV* %iv, %struct._IO_FILE* %fp, i32* %pierr) #5
  tail call void @exit(i32 -1) #8
  unreachable

if.end:                                           ; preds = %entry
  %size = getelementptr inbounds %struct._IV* %iv, i64 0, i32 0
  %1 = load i32* %size, align 4, !tbaa !3
  %cmp4 = icmp sgt i32 %1, 0
  br i1 %cmp4, label %land.lhs.true, label %if.end10

land.lhs.true:                                    ; preds = %if.end
  %vec = getelementptr inbounds %struct._IV* %iv, i64 0, i32 3
  %2 = load i32** %vec, align 8, !tbaa !0
  %cmp5 = icmp eq i32* %2, null
  br i1 %cmp5, label %if.end10, label %if.then6

if.then6:                                         ; preds = %land.lhs.true
  %call9 = tail call i32 @IVfp80(%struct._IO_FILE* %fp, i32 %1, i32* %2, i32 %column, i32* %pierr) #5
  br label %if.end10

if.end10:                                         ; preds = %land.lhs.true, %if.then6, %if.end
  %column.addr.0 = phi i32 [ %call9, %if.then6 ], [ %column, %land.lhs.true ], [ %column, %if.end ]
  ret i32 %column.addr.0
}

; Function Attrs: nounwind optsize uwtable
define i32 @IV_writeForMatlab(%struct._IV* %iv, i8* %name, %struct._IO_FILE* %fp) #0 {
entry:
  %size = alloca i32, align 4
  %entries = alloca i32*, align 8
  %cmp = icmp eq %struct._IV* %iv, null
  %cmp1 = icmp eq %struct._IO_FILE* %fp, null
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([51 x i8]* @.str32, i64 0, i64 0), %struct._IV* %iv, i8* %name, %struct._IO_FILE* %fp) #5
  call void @exit(i32 -1) #8
  unreachable

if.end:                                           ; preds = %entry
  call void @IV_sizeAndEntries(%struct._IV* %iv, i32* %size, i32** %entries) #5
  %1 = load i32* %size, align 4, !tbaa !3
  %call2 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([22 x i8]* @.str33, i64 0, i64 0), i8* %name, i32 %1, i32 %1) #5
  %2 = load i32* %size, align 4, !tbaa !3
  %cmp316 = icmp sgt i32 %2, 0
  br i1 %cmp316, label %for.body, label %for.end

for.body:                                         ; preds = %if.end, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %if.end ]
  %indvars.iv.next = add i64 %indvars.iv, 1
  %3 = load i32** %entries, align 8, !tbaa !0
  %arrayidx = getelementptr inbounds i32* %3, i64 %indvars.iv
  %4 = load i32* %arrayidx, align 4, !tbaa !3
  %add4 = add nsw i32 %4, 1
  %5 = trunc i64 %indvars.iv.next to i32
  %call5 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([16 x i8]* @.str34, i64 0, i64 0), i8* %name, i32 %5, i32 %add4) #5
  %6 = load i32* %size, align 4, !tbaa !3
  %cmp3 = icmp slt i32 %5, %6
  br i1 %cmp3, label %for.body, label %for.end

for.end:                                          ; preds = %for.body, %if.end
  ret i32 1
}

; Function Attrs: optsize
declare void @IV_sizeAndEntries(%struct._IV*, i32*, i32**) #3

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind optsize readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind optsize }
attributes #6 = { nounwind optsize readonly }
attributes #7 = { optsize }
attributes #8 = { noreturn nounwind optsize }

!0 = metadata !{metadata !"any pointer", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"int", metadata !1}
