; ModuleID = '../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/IVL/src/IVL_IO.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct._IVL = type { i32, i32, i32, i32, i32*, i32**, i32, %struct._Ichunk* }
%struct._Ichunk = type { i32, i32, i32*, %struct._Ichunk* }

@stderr = external global %struct._IO_FILE*
@.str = private unnamed_addr constant [65 x i8] c"\0A error in IVL_readFromFile(%p,%s), file %s, line %d\0A bad input\0A\00", align 1
@.str1 = private unnamed_addr constant [71 x i8] c"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/IVL/src/IVL_IO.c\00", align 1
@.str2 = private unnamed_addr constant [50 x i8] c"\0A error in IVL_readFromFile(%p,%s)\0A bad type = %d\00", align 1
@.str3 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str4 = private unnamed_addr constant [59 x i8] c"\0A error in IVL_readFromFile(%p,%s)\0A unable to open file %s\00", align 1
@.str5 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str6 = private unnamed_addr constant [102 x i8] c"\0A error in IVL_readFromFile(%p,%s)\0A bad IVL file name %s,\0A must end in %s (binary) or %s (formatted)\0A\00", align 1
@.str7 = private unnamed_addr constant [56 x i8] c"\0A error in IVL_readFromFormattedFile(%p,%p)\0A bad input\0A\00", align 1
@.str8 = private unnamed_addr constant [55 x i8] c"\0A error in IVL_readFormattedFile(%p,%p)\0A bad type = %d\00", align 1
@.str9 = private unnamed_addr constant [66 x i8] c"\0A error in IVL_readFromFormattedFile(%p,%p)\0A %d items of %d read\0A\00", align 1
@.str10 = private unnamed_addr constant [75 x i8] c"\0A error in IVL_readFromFormattedFile(%p,%p)\0A list %d, %d items of %d read\0A\00", align 1
@.str11 = private unnamed_addr constant [59 x i8] c"\0A fatal error in IVL_readFromBinaryFile(%p,%p)\0A bad input\0A\00", align 1
@.str12 = private unnamed_addr constant [52 x i8] c"\0A error in IVL_readBinaryFile(%p,%p)\0A bad type = %d\00", align 1
@.str13 = private unnamed_addr constant [74 x i8] c"\0A error in IVL_readFromBinaryFile(%p,%p)\0A itemp(3) : %d items of %d read\0A\00", align 1
@.str14 = private unnamed_addr constant [75 x i8] c"\0A error in IVL_readFromBinaryFile(%p,%p)\0A sizes(%d) : %d items of %d read\0A\00", align 1
@.str15 = private unnamed_addr constant [72 x i8] c"\0A error in IVL_readFromBinaryFile(%p,%p)\0A list %d, %d items of %d read\0A\00", align 1
@.str16 = private unnamed_addr constant [77 x i8] c"\0A error in IVL_readFromBinaryFile(%p,%p)\0A indices(%d) : %d items of %d read\0A\00", align 1
@.str17 = private unnamed_addr constant [52 x i8] c"\0A fatal error in IVL_writeToFile(%p,%s)\0A bad input\0A\00", align 1
@.str18 = private unnamed_addr constant [55 x i8] c"\0A fatal error in IVL_writeToFile(%p,%s)\0A bad type = %d\00", align 1
@.str19 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@.str20 = private unnamed_addr constant [58 x i8] c"\0A error in IVL_writeToFile(%p,%s)\0A unable to open file %s\00", align 1
@.str21 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str22 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str23 = private unnamed_addr constant [61 x i8] c"\0A fatal error in IVL_writeToFormattedFile(%p,%p)\0A bad input\0A\00", align 1
@.str24 = private unnamed_addr constant [11 x i8] c"\0A %d %d %d\00", align 1
@.str25 = private unnamed_addr constant [86 x i8] c"\0A fatal error in IVL_writeToFormattedFile(%p,%p)\0A rc = %d, return from first fprintf\0A\00", align 1
@.str26 = private unnamed_addr constant [89 x i8] c"\0A fatal error in IVL_writeToFormattedFile(%p,%p)\0A ierr = %d, return from sizes[] IVfp80\0A\00", align 1
@.str27 = private unnamed_addr constant [90 x i8] c"\0A fatal error in IVL_writeToFormattedFile(%p,%p)\0A ierr = %d, return from IVfp80, list %d\0A\00", align 1
@.str28 = private unnamed_addr constant [58 x i8] c"\0A fatal error in IVL_writeToBinaryFile(%p,%p)\0A bad input\0A\00", align 1
@.str29 = private unnamed_addr constant [72 x i8] c"\0A error in IVL_writeToBinaryFile(%p,%p)\0A %d of %d scalar items written\0A\00", align 1
@.str30 = private unnamed_addr constant [77 x i8] c"\0A error in IVL_writeToBinaryFile(%p,%p)\0A ivl->sizes, %d of %d items written\0A\00", align 1
@.str31 = private unnamed_addr constant [74 x i8] c"\0A error in IVL_writeToBinaryFile(%p,%p)\0A list %d, %d of %d items written\0A\00", align 1
@.str32 = private unnamed_addr constant [57 x i8] c"\0A fatal error in IVL_writeForHumanEye(%p,%p)\0A bad input\0A\00", align 1
@.str33 = private unnamed_addr constant [90 x i8] c"\0A fatal error in IVL_writeForHumanEye(%p,%p)\0A rc = %d, return from IVL_writeStats(%p,%p)\0A\00", align 1
@.str34 = private unnamed_addr constant [8 x i8] c"\0A %5d :\00", align 1
@.str35 = private unnamed_addr constant [86 x i8] c"\0A fatal error in IVL_writeForHumanEye(%p,%p)\0A ierr = %d, return from IVfp80, list %d\0A\00", align 1
@.str36 = private unnamed_addr constant [45 x i8] c"\0A error in IVL_writeStats(%p,%p)\0A bad input\0A\00", align 1
@.str37 = private unnamed_addr constant [37 x i8] c"\0A IVL : integer vector list object :\00", align 1
@.str38 = private unnamed_addr constant [10 x i8] c"\0A type %d\00", align 1
@.str39 = private unnamed_addr constant [18 x i8] c", chunked storage\00", align 1
@.str40 = private unnamed_addr constant [15 x i8] c", solo storage\00", align 1
@.str41 = private unnamed_addr constant [18 x i8] c", unknown storage\00", align 1
@.str42 = private unnamed_addr constant [55 x i8] c"\0A %d lists, %d maximum lists, %d tsize, %d total bytes\00", align 1
@.str43 = private unnamed_addr constant [45 x i8] c"\0A %d chunks, %d active entries, %d allocated\00", align 1
@.str44 = private unnamed_addr constant [15 x i8] c", %.2f %% used\00", align 1
@.str45 = private unnamed_addr constant [51 x i8] c"\0A %d lists separately allocated, %d active entries\00", align 1
@.str46 = private unnamed_addr constant [70 x i8] c"\0A fatal error in IVL_writeStats(%p,%p)\0A rc = %d, return from fprintf\0A\00", align 1
@.str47 = private unnamed_addr constant [6 x i8] c".ivlf\00", align 1
@.str48 = private unnamed_addr constant [6 x i8] c".ivlb\00", align 1

; Function Attrs: nounwind optsize uwtable
define i32 @IVL_readFromFile(%struct._IVL* %ivl, i8* %fn) #0 {
entry:
  %cmp = icmp eq %struct._IVL* %ivl, null
  %cmp1 = icmp eq i8* %fn, null
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([65 x i8]* @.str, i64 0, i64 0), %struct._IVL* %ivl, i8* %fn, i8* getelementptr inbounds ([71 x i8]* @.str1, i64 0, i64 0), i32 37) #5
  br label %return

if.end:                                           ; preds = %entry
  %type = getelementptr inbounds %struct._IVL* %ivl, i64 0, i32 0
  %1 = load i32* %type, align 4, !tbaa !3
  %.off = add i32 %1, -1
  %switch = icmp ult i32 %.off, 3
  br i1 %switch, label %sw.epilog, label %sw.default

sw.default:                                       ; preds = %if.end
  %2 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call3 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([50 x i8]* @.str2, i64 0, i64 0), %struct._IVL* %ivl, i8* %fn, i32 %1) #5
  br label %return

sw.epilog:                                        ; preds = %if.end
  %call4 = tail call i64 @strlen(i8* %fn) #6
  %conv = trunc i64 %call4 to i32
  %cmp7 = icmp sgt i32 %conv, 5
  br i1 %cmp7, label %if.then9, label %if.else43

if.then9:                                         ; preds = %sw.epilog
  %sub = shl i64 %call4, 32
  %sext = add i64 %sub, -21474836480
  %idxprom = ashr exact i64 %sext, 32
  %arrayidx = getelementptr inbounds i8* %fn, i64 %idxprom
  %call10 = tail call i32 @strcmp(i8* %arrayidx, i8* getelementptr inbounds ([6 x i8]* @.str48, i64 0, i64 0)) #6
  %cmp11 = icmp eq i32 %call10, 0
  br i1 %cmp11, label %if.then13, label %if.else22

if.then13:                                        ; preds = %if.then9
  %call14 = tail call %struct._IO_FILE* @fopen(i8* %fn, i8* getelementptr inbounds ([3 x i8]* @.str3, i64 0, i64 0)) #5
  %cmp15 = icmp eq %struct._IO_FILE* %call14, null
  br i1 %cmp15, label %if.then17, label %if.else

if.then17:                                        ; preds = %if.then13
  %3 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call18 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([59 x i8]* @.str4, i64 0, i64 0), %struct._IVL* %ivl, i8* %fn, i8* %fn) #5
  br label %return

if.else:                                          ; preds = %if.then13
  %call19 = tail call i32 @IVL_readFromBinaryFile(%struct._IVL* %ivl, %struct._IO_FILE* %call14) #7
  %call20 = tail call i32 @fclose(%struct._IO_FILE* %call14) #5
  br label %return

if.else22:                                        ; preds = %if.then9
  %call26 = tail call i32 @strcmp(i8* %arrayidx, i8* getelementptr inbounds ([6 x i8]* @.str47, i64 0, i64 0)) #6
  %cmp27 = icmp eq i32 %call26, 0
  br i1 %cmp27, label %if.then29, label %if.else39

if.then29:                                        ; preds = %if.else22
  %call30 = tail call %struct._IO_FILE* @fopen(i8* %fn, i8* getelementptr inbounds ([2 x i8]* @.str5, i64 0, i64 0)) #5
  %cmp31 = icmp eq %struct._IO_FILE* %call30, null
  br i1 %cmp31, label %if.then33, label %if.else35

if.then33:                                        ; preds = %if.then29
  %4 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call34 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([59 x i8]* @.str4, i64 0, i64 0), %struct._IVL* %ivl, i8* %fn, i8* %fn) #5
  br label %return

if.else35:                                        ; preds = %if.then29
  %call36 = tail call i32 @IVL_readFromFormattedFile(%struct._IVL* %ivl, %struct._IO_FILE* %call30) #7
  %call37 = tail call i32 @fclose(%struct._IO_FILE* %call30) #5
  br label %return

if.else39:                                        ; preds = %if.else22
  %5 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call40 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([102 x i8]* @.str6, i64 0, i64 0), %struct._IVL* %ivl, i8* %fn, i8* %fn, i8* getelementptr inbounds ([6 x i8]* @.str48, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8]* @.str47, i64 0, i64 0)) #5
  br label %return

if.else43:                                        ; preds = %sw.epilog
  %6 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call44 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %6, i8* getelementptr inbounds ([102 x i8]* @.str6, i64 0, i64 0), %struct._IVL* %ivl, i8* %fn, i8* %fn, i8* getelementptr inbounds ([6 x i8]* @.str48, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8]* @.str47, i64 0, i64 0)) #5
  br label %return

return:                                           ; preds = %if.else43, %if.else39, %if.else35, %if.then33, %if.then17, %if.else, %sw.default, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %sw.default ], [ 0, %if.then17 ], [ %call19, %if.else ], [ 0, %if.then33 ], [ %call36, %if.else35 ], [ 0, %if.else39 ], [ 0, %if.else43 ]
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
define i32 @IVL_readFromBinaryFile(%struct._IVL* %ivl, %struct._IO_FILE* %fp) #0 {
entry:
  %itemp = alloca [3 x i32], align 4
  %size = alloca i32, align 4
  %ind = alloca i32*, align 8
  %cmp = icmp eq %struct._IVL* %ivl, null
  %cmp1 = icmp eq %struct._IO_FILE* %fp, null
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([59 x i8]* @.str11, i64 0, i64 0), %struct._IVL* %ivl, %struct._IO_FILE* %fp) #5
  br label %return

if.end:                                           ; preds = %entry
  %type2 = getelementptr inbounds %struct._IVL* %ivl, i64 0, i32 0
  %1 = load i32* %type2, align 4, !tbaa !3
  %.off = add i32 %1, -1
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %sw.epilog, label %sw.default

sw.default:                                       ; preds = %if.end
  %2 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call4 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([52 x i8]* @.str12, i64 0, i64 0), %struct._IVL* %ivl, %struct._IO_FILE* %fp, i32 %1) #5
  br label %return

sw.epilog:                                        ; preds = %if.end
  call void @IVL_clearData(%struct._IVL* %ivl) #5
  %3 = bitcast [3 x i32]* %itemp to i8*
  %call6 = call i64 @fread(i8* %3, i64 4, i64 3, %struct._IO_FILE* %fp) #5
  %conv = trunc i64 %call6 to i32
  %cmp7 = icmp eq i32 %conv, 3
  br i1 %cmp7, label %if.end11, label %if.then9

if.then9:                                         ; preds = %sw.epilog
  %4 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call10 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([74 x i8]* @.str13, i64 0, i64 0), %struct._IVL* %ivl, %struct._IO_FILE* %fp, i32 %conv, i32 3) #5
  br label %return

if.end11:                                         ; preds = %sw.epilog
  %arrayidx = getelementptr inbounds [3 x i32]* %itemp, i64 0, i64 1
  %5 = load i32* %arrayidx, align 4, !tbaa !3
  %call12 = call i32* @IVinit(i32 %5, i32 0) #5
  %6 = bitcast i32* %call12 to i8*
  %conv13 = sext i32 %5 to i64
  %call14 = call i64 @fread(i8* %6, i64 4, i64 %conv13, %struct._IO_FILE* %fp) #5
  %conv15 = trunc i64 %call14 to i32
  %cmp16 = icmp eq i32 %conv15, %5
  br i1 %cmp16, label %if.end20, label %if.then18

if.then18:                                        ; preds = %if.end11
  %7 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call19 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %7, i8* getelementptr inbounds ([75 x i8]* @.str14, i64 0, i64 0), %struct._IVL* %ivl, %struct._IO_FILE* %fp, i32 %5, i32 %conv15, i32 %5) #5
  br label %return

if.end20:                                         ; preds = %if.end11
  call void @IVL_init3(%struct._IVL* %ivl, i32 %1, i32 %5, i32* %call12) #5
  call void @IVfree(i32* %call12) #5
  switch i32 %1, label %return [
    i32 2, label %for.cond.preheader
    i32 1, label %sw.bb32
  ]

for.cond.preheader:                               ; preds = %if.end20
  %cmp2288 = icmp sgt i32 %5, 0
  br i1 %cmp2288, label %for.body, label %return

for.cond:                                         ; preds = %for.body
  %cmp22 = icmp slt i32 %inc, %5
  br i1 %cmp22, label %for.body, label %return

for.body:                                         ; preds = %for.cond.preheader, %for.cond
  %ilist.089 = phi i32 [ %inc, %for.cond ], [ 0, %for.cond.preheader ]
  call void @IVL_listAndSize(%struct._IVL* %ivl, i32 %ilist.089, i32* %size, i32** %ind) #5
  %8 = load i32** %ind, align 8, !tbaa !0
  %9 = bitcast i32* %8 to i8*
  %10 = load i32* %size, align 4, !tbaa !3
  %conv24 = sext i32 %10 to i64
  %call25 = call i64 @fread(i8* %9, i64 4, i64 %conv24, %struct._IO_FILE* %fp) #5
  %conv26 = trunc i64 %call25 to i32
  %11 = load i32* %size, align 4, !tbaa !3
  %cmp27 = icmp eq i32 %conv26, %11
  %inc = add nsw i32 %ilist.089, 1
  br i1 %cmp27, label %for.cond, label %if.then29

if.then29:                                        ; preds = %for.body
  %12 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call30 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %12, i8* getelementptr inbounds ([72 x i8]* @.str15, i64 0, i64 0), %struct._IVL* %ivl, %struct._IO_FILE* %fp, i32 %ilist.089, i32 %conv26, i32 %11) #5
  br label %return

sw.bb32:                                          ; preds = %if.end20
  %chunk = getelementptr inbounds %struct._IVL* %ivl, i64 0, i32 7
  %13 = load %struct._Ichunk** %chunk, align 8, !tbaa !0
  %base = getelementptr inbounds %struct._Ichunk* %13, i64 0, i32 2
  %14 = load i32** %base, align 8, !tbaa !0
  %15 = bitcast i32* %14 to i8*
  %tsize = getelementptr inbounds %struct._IVL* %ivl, i64 0, i32 3
  %16 = load i32* %tsize, align 4, !tbaa !3
  %conv33 = sext i32 %16 to i64
  %call34 = call i64 @fread(i8* %15, i64 4, i64 %conv33, %struct._IO_FILE* %fp) #5
  %conv35 = trunc i64 %call34 to i32
  %17 = load i32* %tsize, align 4, !tbaa !3
  %cmp37 = icmp eq i32 %conv35, %17
  br i1 %cmp37, label %return, label %if.then39

if.then39:                                        ; preds = %sw.bb32
  %18 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call42 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %18, i8* getelementptr inbounds ([77 x i8]* @.str16, i64 0, i64 0), %struct._IVL* %ivl, %struct._IO_FILE* %fp, i32 %17, i32 %conv35, i32 %17) #5
  br label %return

return:                                           ; preds = %for.cond.preheader, %for.cond, %if.end20, %sw.bb32, %if.then39, %if.then29, %if.then18, %if.then9, %sw.default, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %if.then9 ], [ 0, %if.then18 ], [ 0, %if.then39 ], [ 0, %if.then29 ], [ 0, %sw.default ], [ 1, %sw.bb32 ], [ 1, %if.end20 ], [ 1, %for.cond ], [ 1, %for.cond.preheader ]
  ret i32 %retval.0
}

; Function Attrs: nounwind optsize
declare i32 @fclose(%struct._IO_FILE* nocapture) #1

; Function Attrs: nounwind optsize uwtable
define i32 @IVL_readFromFormattedFile(%struct._IVL* %ivl, %struct._IO_FILE* %fp) #0 {
entry:
  %itemp = alloca [3 x i32], align 4
  %size = alloca i32, align 4
  %ind = alloca i32*, align 8
  %cmp = icmp eq %struct._IVL* %ivl, null
  %cmp1 = icmp eq %struct._IO_FILE* %fp, null
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([56 x i8]* @.str7, i64 0, i64 0), %struct._IVL* %ivl, %struct._IO_FILE* %fp) #5
  br label %return

if.end:                                           ; preds = %entry
  %type2 = getelementptr inbounds %struct._IVL* %ivl, i64 0, i32 0
  %1 = load i32* %type2, align 4, !tbaa !3
  %.off = add i32 %1, -1
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %sw.epilog, label %sw.default

sw.default:                                       ; preds = %if.end
  %2 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call4 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([55 x i8]* @.str8, i64 0, i64 0), %struct._IVL* %ivl, %struct._IO_FILE* %fp, i32 %1) #5
  br label %return

sw.epilog:                                        ; preds = %if.end
  call void @IVL_clearData(%struct._IVL* %ivl) #5
  %arraydecay = getelementptr inbounds [3 x i32]* %itemp, i64 0, i64 0
  %call6 = call i32 @IVfscanf(%struct._IO_FILE* %fp, i32 3, i32* %arraydecay) #5
  %cmp7 = icmp eq i32 %call6, 3
  br i1 %cmp7, label %if.end10, label %if.then8

if.then8:                                         ; preds = %sw.epilog
  %3 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call9 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([66 x i8]* @.str9, i64 0, i64 0), %struct._IVL* %ivl, %struct._IO_FILE* %fp, i32 %call6, i32 3) #5
  br label %return

if.end10:                                         ; preds = %sw.epilog
  %arrayidx = getelementptr inbounds [3 x i32]* %itemp, i64 0, i64 1
  %4 = load i32* %arrayidx, align 4, !tbaa !3
  %call11 = call i32* @IVinit(i32 %4, i32 0) #5
  %call12 = call i32 @IVfscanf(%struct._IO_FILE* %fp, i32 %4, i32* %call11) #5
  %cmp13 = icmp eq i32 %call12, %4
  br i1 %cmp13, label %if.end16, label %if.then14

if.then14:                                        ; preds = %if.end10
  %5 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call15 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([66 x i8]* @.str9, i64 0, i64 0), %struct._IVL* %ivl, %struct._IO_FILE* %fp, i32 %call12, i32 %4) #5
  br label %return

if.end16:                                         ; preds = %if.end10
  call void @IVL_init3(%struct._IVL* %ivl, i32 %1, i32 %4, i32* %call11) #5
  call void @IVfree(i32* %call11) #5
  switch i32 %1, label %return [
    i32 2, label %for.cond.preheader
    i32 1, label %sw.bb27
  ]

for.cond.preheader:                               ; preds = %if.end16
  %cmp1877 = icmp sgt i32 %4, 0
  br i1 %cmp1877, label %for.body, label %return

for.body:                                         ; preds = %for.cond.preheader, %for.inc
  %ilist.078 = phi i32 [ %inc, %for.inc ], [ 0, %for.cond.preheader ]
  call void @IVL_listAndSize(%struct._IVL* %ivl, i32 %ilist.078, i32* %size, i32** %ind) #5
  %6 = load i32* %size, align 4, !tbaa !3
  %cmp19 = icmp sgt i32 %6, 0
  br i1 %cmp19, label %if.then20, label %for.inc

if.then20:                                        ; preds = %for.body
  %7 = load i32** %ind, align 8, !tbaa !0
  %call21 = call i32 @IVfscanf(%struct._IO_FILE* %fp, i32 %6, i32* %7) #5
  %8 = load i32* %size, align 4, !tbaa !3
  %cmp22 = icmp eq i32 %call21, %8
  br i1 %cmp22, label %for.inc, label %if.then23

if.then23:                                        ; preds = %if.then20
  %9 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call24 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %9, i8* getelementptr inbounds ([75 x i8]* @.str10, i64 0, i64 0), %struct._IVL* %ivl, %struct._IO_FILE* %fp, i32 %ilist.078, i32 %call21, i32 %8) #5
  br label %return

for.inc:                                          ; preds = %if.then20, %for.body
  %inc = add nsw i32 %ilist.078, 1
  %cmp18 = icmp slt i32 %inc, %4
  br i1 %cmp18, label %for.body, label %return

sw.bb27:                                          ; preds = %if.end16
  %tsize = getelementptr inbounds %struct._IVL* %ivl, i64 0, i32 3
  %10 = load i32* %tsize, align 4, !tbaa !3
  %chunk = getelementptr inbounds %struct._IVL* %ivl, i64 0, i32 7
  %11 = load %struct._Ichunk** %chunk, align 8, !tbaa !0
  %base = getelementptr inbounds %struct._Ichunk* %11, i64 0, i32 2
  %12 = load i32** %base, align 8, !tbaa !0
  %call28 = call i32 @IVfscanf(%struct._IO_FILE* %fp, i32 %10, i32* %12) #5
  %13 = load i32* %tsize, align 4, !tbaa !3
  %cmp30 = icmp eq i32 %call28, %13
  br i1 %cmp30, label %return, label %if.then31

if.then31:                                        ; preds = %sw.bb27
  %14 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call33 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %14, i8* getelementptr inbounds ([66 x i8]* @.str9, i64 0, i64 0), %struct._IVL* %ivl, %struct._IO_FILE* %fp, i32 %call28, i32 %13) #5
  br label %return

return:                                           ; preds = %for.cond.preheader, %for.inc, %if.end16, %sw.bb27, %if.then31, %if.then23, %if.then14, %if.then8, %sw.default, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %if.then8 ], [ 0, %if.then14 ], [ 0, %if.then31 ], [ 0, %if.then23 ], [ 0, %sw.default ], [ 1, %sw.bb27 ], [ 1, %if.end16 ], [ 1, %for.inc ], [ 1, %for.cond.preheader ]
  ret i32 %retval.0
}

; Function Attrs: optsize
declare void @IVL_clearData(%struct._IVL*) #3

; Function Attrs: optsize
declare i32 @IVfscanf(%struct._IO_FILE*, i32, i32*) #3

; Function Attrs: optsize
declare i32* @IVinit(i32, i32) #3

; Function Attrs: optsize
declare void @IVL_init3(%struct._IVL*, i32, i32, i32*) #3

; Function Attrs: optsize
declare void @IVfree(i32*) #3

; Function Attrs: optsize
declare void @IVL_listAndSize(%struct._IVL*, i32, i32*, i32**) #3

; Function Attrs: nounwind optsize
declare i64 @fread(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #1

; Function Attrs: nounwind optsize uwtable
define i32 @IVL_writeToFile(%struct._IVL* %ivl, i8* %fn) #0 {
entry:
  %cmp = icmp eq %struct._IVL* %ivl, null
  %cmp1 = icmp eq i8* %fn, null
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([52 x i8]* @.str17, i64 0, i64 0), %struct._IVL* %ivl, i8* %fn) #5
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  %type = getelementptr inbounds %struct._IVL* %ivl, i64 0, i32 0
  %1 = load i32* %type, align 4, !tbaa !3
  %.off = add i32 %1, -1
  %switch = icmp ult i32 %.off, 3
  br i1 %switch, label %sw.epilog, label %sw.default

sw.default:                                       ; preds = %if.end
  %2 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call3 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([55 x i8]* @.str18, i64 0, i64 0), %struct._IVL* %ivl, i8* %fn, i32 %1) #5
  br label %return

sw.epilog:                                        ; preds = %if.end
  %call4 = tail call i64 @strlen(i8* %fn) #6
  %conv = trunc i64 %call4 to i32
  %cmp7 = icmp sgt i32 %conv, 5
  br i1 %cmp7, label %if.then9, label %if.else51

if.then9:                                         ; preds = %sw.epilog
  %sub = shl i64 %call4, 32
  %sext = add i64 %sub, -21474836480
  %idxprom = ashr exact i64 %sext, 32
  %arrayidx = getelementptr inbounds i8* %fn, i64 %idxprom
  %call10 = tail call i32 @strcmp(i8* %arrayidx, i8* getelementptr inbounds ([6 x i8]* @.str48, i64 0, i64 0)) #6
  %cmp11 = icmp eq i32 %call10, 0
  br i1 %cmp11, label %if.then13, label %if.else22

if.then13:                                        ; preds = %if.then9
  %call14 = tail call %struct._IO_FILE* @fopen(i8* %fn, i8* getelementptr inbounds ([3 x i8]* @.str19, i64 0, i64 0)) #5
  %cmp15 = icmp eq %struct._IO_FILE* %call14, null
  br i1 %cmp15, label %if.then17, label %if.else

if.then17:                                        ; preds = %if.then13
  %3 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call18 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([58 x i8]* @.str20, i64 0, i64 0), %struct._IVL* %ivl, i8* %fn, i8* %fn) #5
  br label %return

if.else:                                          ; preds = %if.then13
  %call19 = tail call i32 @IVL_writeToBinaryFile(%struct._IVL* %ivl, %struct._IO_FILE* %call14) #7
  %call20 = tail call i32 @fclose(%struct._IO_FILE* %call14) #5
  br label %return

if.else22:                                        ; preds = %if.then9
  %call26 = tail call i32 @strcmp(i8* %arrayidx, i8* getelementptr inbounds ([6 x i8]* @.str47, i64 0, i64 0)) #6
  %cmp27 = icmp eq i32 %call26, 0
  br i1 %cmp27, label %if.then29, label %if.else39

if.then29:                                        ; preds = %if.else22
  %call30 = tail call %struct._IO_FILE* @fopen(i8* %fn, i8* getelementptr inbounds ([2 x i8]* @.str21, i64 0, i64 0)) #5
  %cmp31 = icmp eq %struct._IO_FILE* %call30, null
  br i1 %cmp31, label %if.then33, label %if.else35

if.then33:                                        ; preds = %if.then29
  %4 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call34 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([58 x i8]* @.str20, i64 0, i64 0), %struct._IVL* %ivl, i8* %fn, i8* %fn) #5
  br label %return

if.else35:                                        ; preds = %if.then29
  %call36 = tail call i32 @IVL_writeToFormattedFile(%struct._IVL* %ivl, %struct._IO_FILE* %call30) #7
  %call37 = tail call i32 @fclose(%struct._IO_FILE* %call30) #5
  br label %return

if.else39:                                        ; preds = %if.else22
  %call40 = tail call %struct._IO_FILE* @fopen(i8* %fn, i8* getelementptr inbounds ([2 x i8]* @.str22, i64 0, i64 0)) #5
  %cmp41 = icmp eq %struct._IO_FILE* %call40, null
  br i1 %cmp41, label %if.then43, label %if.else45

if.then43:                                        ; preds = %if.else39
  %5 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call44 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([58 x i8]* @.str20, i64 0, i64 0), %struct._IVL* %ivl, i8* %fn, i8* %fn) #5
  br label %return

if.else45:                                        ; preds = %if.else39
  %call46 = tail call i32 @IVL_writeForHumanEye(%struct._IVL* %ivl, %struct._IO_FILE* %call40) #7
  %call47 = tail call i32 @fclose(%struct._IO_FILE* %call40) #5
  br label %return

if.else51:                                        ; preds = %sw.epilog
  %call52 = tail call %struct._IO_FILE* @fopen(i8* %fn, i8* getelementptr inbounds ([2 x i8]* @.str22, i64 0, i64 0)) #5
  %cmp53 = icmp eq %struct._IO_FILE* %call52, null
  br i1 %cmp53, label %if.then55, label %if.else57

if.then55:                                        ; preds = %if.else51
  %6 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call56 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %6, i8* getelementptr inbounds ([58 x i8]* @.str20, i64 0, i64 0), %struct._IVL* %ivl, i8* %fn, i8* %fn) #5
  br label %return

if.else57:                                        ; preds = %if.else51
  %call58 = tail call i32 @IVL_writeForHumanEye(%struct._IVL* %ivl, %struct._IO_FILE* %call52) #7
  %call59 = tail call i32 @fclose(%struct._IO_FILE* %call52) #5
  br label %return

return:                                           ; preds = %if.else35, %if.then33, %if.else45, %if.then43, %if.then17, %if.else, %if.else57, %if.then55, %sw.default
  %retval.0 = phi i32 [ 0, %sw.default ], [ 0, %if.then17 ], [ %call19, %if.else ], [ 0, %if.then33 ], [ %call36, %if.else35 ], [ 0, %if.then43 ], [ %call46, %if.else45 ], [ 0, %if.then55 ], [ %call58, %if.else57 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind optsize uwtable
define i32 @IVL_writeToBinaryFile(%struct._IVL* %ivl, %struct._IO_FILE* %fp) #0 {
entry:
  %jsize = alloca i32, align 4
  %jind = alloca i32*, align 8
  %itemp = alloca [3 x i32], align 4
  %cmp = icmp eq %struct._IVL* %ivl, null
  %cmp1 = icmp eq %struct._IO_FILE* %fp, null
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %if.then, label %lor.lhs.false2

lor.lhs.false2:                                   ; preds = %entry
  %nlist3 = getelementptr inbounds %struct._IVL* %ivl, i64 0, i32 2
  %0 = load i32* %nlist3, align 4, !tbaa !3
  %cmp4 = icmp slt i32 %0, 1
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false2, %entry
  %1 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([58 x i8]* @.str28, i64 0, i64 0), %struct._IVL* %ivl, %struct._IO_FILE* %fp) #5
  call void @exit(i32 -1) #8
  unreachable

if.end:                                           ; preds = %lor.lhs.false2
  %type = getelementptr inbounds %struct._IVL* %ivl, i64 0, i32 0
  %2 = load i32* %type, align 4, !tbaa !3
  %arrayidx = getelementptr inbounds [3 x i32]* %itemp, i64 0, i64 0
  store i32 %2, i32* %arrayidx, align 4, !tbaa !3
  %arrayidx6 = getelementptr inbounds [3 x i32]* %itemp, i64 0, i64 1
  store i32 %0, i32* %arrayidx6, align 4, !tbaa !3
  %tsize = getelementptr inbounds %struct._IVL* %ivl, i64 0, i32 3
  %3 = load i32* %tsize, align 4, !tbaa !3
  %arrayidx7 = getelementptr inbounds [3 x i32]* %itemp, i64 0, i64 2
  store i32 %3, i32* %arrayidx7, align 4, !tbaa !3
  %4 = bitcast [3 x i32]* %itemp to i8*
  %call8 = call i64 @fwrite(i8* %4, i64 4, i64 3, %struct._IO_FILE* %fp) #5
  %conv = trunc i64 %call8 to i32
  %cmp9 = icmp eq i32 %conv, 3
  br i1 %cmp9, label %if.end13, label %if.then11

if.then11:                                        ; preds = %if.end
  %5 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call12 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([72 x i8]* @.str29, i64 0, i64 0), %struct._IVL* %ivl, %struct._IO_FILE* %fp, i32 %conv, i32 3) #5
  br label %return

if.end13:                                         ; preds = %if.end
  %sizes = getelementptr inbounds %struct._IVL* %ivl, i64 0, i32 4
  %6 = load i32** %sizes, align 8, !tbaa !0
  %7 = bitcast i32* %6 to i8*
  %8 = load i32* %nlist3, align 4, !tbaa !3
  %conv15 = sext i32 %8 to i64
  %call16 = call i64 @fwrite(i8* %7, i64 4, i64 %conv15, %struct._IO_FILE* %fp) #5
  %conv17 = trunc i64 %call16 to i32
  %9 = load i32* %nlist3, align 4, !tbaa !3
  %cmp19 = icmp eq i32 %conv17, %9
  br i1 %cmp19, label %if.end24, label %if.then21

if.then21:                                        ; preds = %if.end13
  %10 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call23 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %10, i8* getelementptr inbounds ([77 x i8]* @.str30, i64 0, i64 0), %struct._IVL* %ivl, %struct._IO_FILE* %fp, i32 %conv17, i32 %9) #5
  br label %return

if.end24:                                         ; preds = %if.end13
  %11 = load i32* %type, align 4, !tbaa !3
  %.off = add i32 %11, -1
  %switch = icmp ult i32 %.off, 3
  %cmp2772 = icmp sgt i32 %conv17, 0
  %or.cond75 = and i1 %switch, %cmp2772
  br i1 %or.cond75, label %for.body, label %return

for.body:                                         ; preds = %if.end24, %for.inc
  %j.073 = phi i32 [ %inc, %for.inc ], [ 0, %if.end24 ]
  call void @IVL_listAndSize(%struct._IVL* %ivl, i32 %j.073, i32* %jsize, i32** %jind) #5
  %12 = load i32* %jsize, align 4, !tbaa !3
  %cmp29 = icmp sgt i32 %12, 0
  br i1 %cmp29, label %if.then31, label %for.inc

if.then31:                                        ; preds = %for.body
  %13 = load i32** %jind, align 8, !tbaa !0
  %14 = bitcast i32* %13 to i8*
  %conv32 = sext i32 %12 to i64
  %call33 = call i64 @fwrite(i8* %14, i64 4, i64 %conv32, %struct._IO_FILE* %fp) #5
  %conv34 = trunc i64 %call33 to i32
  %15 = load i32* %jsize, align 4, !tbaa !3
  %cmp35 = icmp eq i32 %conv34, %15
  br i1 %cmp35, label %for.inc, label %if.then37

if.then37:                                        ; preds = %if.then31
  %16 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call38 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %16, i8* getelementptr inbounds ([74 x i8]* @.str31, i64 0, i64 0), %struct._IVL* %ivl, %struct._IO_FILE* %fp, i32 %j.073, i32 %conv34, i32 %15) #5
  br label %return

for.inc:                                          ; preds = %if.then31, %for.body
  %inc = add nsw i32 %j.073, 1
  %17 = load i32* %nlist3, align 4, !tbaa !3
  %cmp27 = icmp slt i32 %inc, %17
  br i1 %cmp27, label %for.body, label %return

return:                                           ; preds = %for.inc, %if.end24, %if.then37, %if.then21, %if.then11
  %retval.0 = phi i32 [ 0, %if.then11 ], [ 0, %if.then21 ], [ 0, %if.then37 ], [ 1, %if.end24 ], [ 1, %for.inc ]
  ret i32 %retval.0
}

; Function Attrs: nounwind optsize uwtable
define i32 @IVL_writeToFormattedFile(%struct._IVL* %ivl, %struct._IO_FILE* %fp) #0 {
entry:
  %ierr = alloca i32, align 4
  %jsize = alloca i32, align 4
  %jind = alloca i32*, align 8
  %cmp = icmp eq %struct._IVL* %ivl, null
  %cmp1 = icmp eq %struct._IO_FILE* %fp, null
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %if.then, label %lor.lhs.false2

lor.lhs.false2:                                   ; preds = %entry
  %nlist3 = getelementptr inbounds %struct._IVL* %ivl, i64 0, i32 2
  %0 = load i32* %nlist3, align 4, !tbaa !3
  %cmp4 = icmp slt i32 %0, 1
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false2, %entry
  %1 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([61 x i8]* @.str23, i64 0, i64 0), %struct._IVL* %ivl, %struct._IO_FILE* %fp) #5
  call void @exit(i32 -1) #8
  unreachable

if.end:                                           ; preds = %lor.lhs.false2
  %type = getelementptr inbounds %struct._IVL* %ivl, i64 0, i32 0
  %2 = load i32* %type, align 4, !tbaa !3
  %tsize = getelementptr inbounds %struct._IVL* %ivl, i64 0, i32 3
  %3 = load i32* %tsize, align 4, !tbaa !3
  %call6 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([11 x i8]* @.str24, i64 0, i64 0), i32 %2, i32 %0, i32 %3) #5
  %cmp7 = icmp slt i32 %call6, 0
  br i1 %cmp7, label %if.then8, label %if.end10

if.then8:                                         ; preds = %if.end
  %4 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call9 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([86 x i8]* @.str25, i64 0, i64 0), %struct._IVL* %ivl, %struct._IO_FILE* %fp, i32 %call6) #5
  br label %return

if.end10:                                         ; preds = %if.end
  %5 = load i32* %nlist3, align 4, !tbaa !3
  %cmp12 = icmp sgt i32 %5, 0
  br i1 %cmp12, label %if.then13, label %if.end20

if.then13:                                        ; preds = %if.end10
  %sizes = getelementptr inbounds %struct._IVL* %ivl, i64 0, i32 4
  %6 = load i32** %sizes, align 8, !tbaa !0
  %call15 = call i32 @IVfp80(%struct._IO_FILE* %fp, i32 %5, i32* %6, i32 80, i32* %ierr) #5
  %7 = load i32* %ierr, align 4, !tbaa !3
  %cmp16 = icmp slt i32 %7, 0
  br i1 %cmp16, label %if.then17, label %if.end20

if.then17:                                        ; preds = %if.then13
  %8 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call18 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %8, i8* getelementptr inbounds ([89 x i8]* @.str26, i64 0, i64 0), %struct._IVL* %ivl, %struct._IO_FILE* %fp, i32 %7) #5
  br label %return

if.end20:                                         ; preds = %if.then13, %if.end10
  %9 = load i32* %type, align 4, !tbaa !3
  %.off = add i32 %9, -1
  %switch = icmp ult i32 %.off, 3
  br i1 %switch, label %for.cond.preheader, label %return

for.cond.preheader:                               ; preds = %if.end20
  %10 = load i32* %nlist3, align 4, !tbaa !3
  %cmp2358 = icmp sgt i32 %10, 0
  br i1 %cmp2358, label %for.body, label %return

for.body:                                         ; preds = %for.cond.preheader, %for.inc
  %count.060 = phi i32 [ %count.1, %for.inc ], [ 80, %for.cond.preheader ]
  %j.059 = phi i32 [ %inc, %for.inc ], [ 0, %for.cond.preheader ]
  call void @IVL_listAndSize(%struct._IVL* %ivl, i32 %j.059, i32* %jsize, i32** %jind) #5
  %11 = load i32* %jsize, align 4, !tbaa !3
  %cmp24 = icmp sgt i32 %11, 0
  br i1 %cmp24, label %if.then25, label %for.inc

if.then25:                                        ; preds = %for.body
  %12 = load i32** %jind, align 8, !tbaa !0
  %call26 = call i32 @IVfp80(%struct._IO_FILE* %fp, i32 %11, i32* %12, i32 %count.060, i32* %ierr) #5
  %13 = load i32* %ierr, align 4, !tbaa !3
  %cmp27 = icmp slt i32 %13, 0
  br i1 %cmp27, label %if.then28, label %for.inc

if.then28:                                        ; preds = %if.then25
  %14 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call29 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %14, i8* getelementptr inbounds ([90 x i8]* @.str27, i64 0, i64 0), %struct._IVL* %ivl, %struct._IO_FILE* %fp, i32 %13, i32 %j.059) #5
  br label %return

for.inc:                                          ; preds = %for.body, %if.then25
  %count.1 = phi i32 [ %call26, %if.then25 ], [ %count.060, %for.body ]
  %inc = add nsw i32 %j.059, 1
  %15 = load i32* %nlist3, align 4, !tbaa !3
  %cmp23 = icmp slt i32 %inc, %15
  br i1 %cmp23, label %for.body, label %return

return:                                           ; preds = %for.cond.preheader, %for.inc, %if.end20, %if.then28, %if.then17, %if.then8
  %retval.0 = phi i32 [ 0, %if.then8 ], [ 0, %if.then17 ], [ 0, %if.then28 ], [ 1, %if.end20 ], [ 1, %for.inc ], [ 1, %for.cond.preheader ]
  ret i32 %retval.0
}

; Function Attrs: nounwind optsize uwtable
define i32 @IVL_writeForHumanEye(%struct._IVL* %ivl, %struct._IO_FILE* %fp) #0 {
entry:
  %ierr = alloca i32, align 4
  %size = alloca i32, align 4
  %ind = alloca i32*, align 8
  %cmp = icmp eq %struct._IVL* %ivl, null
  %cmp1 = icmp eq %struct._IO_FILE* %fp, null
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([57 x i8]* @.str32, i64 0, i64 0), %struct._IVL* %ivl, %struct._IO_FILE* %fp) #5
  call void @exit(i32 -1) #8
  unreachable

if.end:                                           ; preds = %entry
  %call2 = call i32 @IVL_writeStats(%struct._IVL* %ivl, %struct._IO_FILE* %fp) #7
  %cmp3 = icmp eq i32 %call2, 0
  br i1 %cmp3, label %if.then4, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end
  %nlist = getelementptr inbounds %struct._IVL* %ivl, i64 0, i32 2
  %1 = load i32* %nlist, align 4, !tbaa !3
  %cmp736 = icmp sgt i32 %1, 0
  br i1 %cmp736, label %for.body, label %return

if.then4:                                         ; preds = %if.end
  %2 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call5 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([90 x i8]* @.str33, i64 0, i64 0), %struct._IVL* %ivl, %struct._IO_FILE* %fp, i32 0, %struct._IVL* %ivl, %struct._IO_FILE* %fp) #5
  br label %return

for.body:                                         ; preds = %for.cond.preheader, %for.inc
  %j.037 = phi i32 [ %inc, %for.inc ], [ 0, %for.cond.preheader ]
  call void @IVL_listAndSize(%struct._IVL* %ivl, i32 %j.037, i32* %size, i32** %ind) #5
  %3 = load i32* %size, align 4, !tbaa !3
  %cmp8 = icmp sgt i32 %3, 0
  br i1 %cmp8, label %if.then9, label %for.inc

if.then9:                                         ; preds = %for.body
  %call10 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([8 x i8]* @.str34, i64 0, i64 0), i32 %j.037) #5
  %4 = load i32* %size, align 4, !tbaa !3
  %5 = load i32** %ind, align 8, !tbaa !0
  %call11 = call i32 @IVfp80(%struct._IO_FILE* %fp, i32 %4, i32* %5, i32 8, i32* %ierr) #5
  %6 = load i32* %ierr, align 4, !tbaa !3
  %cmp12 = icmp slt i32 %6, 0
  br i1 %cmp12, label %if.then13, label %for.inc

if.then13:                                        ; preds = %if.then9
  %7 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call14 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %7, i8* getelementptr inbounds ([86 x i8]* @.str35, i64 0, i64 0), %struct._IVL* %ivl, %struct._IO_FILE* %fp, i32 %6, i32 %j.037) #5
  br label %return

for.inc:                                          ; preds = %for.body, %if.then9
  %inc = add nsw i32 %j.037, 1
  %8 = load i32* %nlist, align 4, !tbaa !3
  %cmp7 = icmp slt i32 %inc, %8
  br i1 %cmp7, label %for.body, label %return

return:                                           ; preds = %for.cond.preheader, %for.inc, %if.then13, %if.then4
  %retval.0 = phi i32 [ 0, %if.then4 ], [ 0, %if.then13 ], [ 1, %for.inc ], [ 1, %for.cond.preheader ]
  ret i32 %retval.0
}

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32) #4

; Function Attrs: optsize
declare i32 @IVfp80(%struct._IO_FILE*, i32, i32*, i32, i32*) #3

; Function Attrs: nounwind optsize
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #1

; Function Attrs: nounwind optsize uwtable
define i32 @IVL_writeStats(%struct._IVL* %ivl, %struct._IO_FILE* %fp) #0 {
entry:
  %cmp = icmp eq %struct._IVL* %ivl, null
  %cmp1 = icmp eq %struct._IO_FILE* %fp, null
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([45 x i8]* @.str36, i64 0, i64 0), %struct._IVL* %ivl, %struct._IO_FILE* %fp) #5
  tail call void @exit(i32 -1) #8
  unreachable

if.end:                                           ; preds = %entry
  %nlist = getelementptr inbounds %struct._IVL* %ivl, i64 0, i32 2
  %1 = load i32* %nlist, align 4, !tbaa !3
  %cmp2 = icmp sgt i32 %1, 0
  br i1 %cmp2, label %if.then3, label %if.end6

if.then3:                                         ; preds = %if.end
  %sizes = getelementptr inbounds %struct._IVL* %ivl, i64 0, i32 4
  %2 = load i32** %sizes, align 8, !tbaa !0
  %call5 = tail call i32 @IVsum(i32 %1, i32* %2) #5
  br label %if.end6

if.end6:                                          ; preds = %if.then3, %if.end
  %nactive.0 = phi i32 [ %call5, %if.then3 ], [ 0, %if.end ]
  %call7 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([37 x i8]* @.str37, i64 0, i64 0)) #5
  %cmp8 = icmp slt i32 %call7, 0
  br i1 %cmp8, label %IO_error, label %if.end10

if.end10:                                         ; preds = %if.end6
  %type = getelementptr inbounds %struct._IVL* %ivl, i64 0, i32 0
  %3 = load i32* %type, align 4, !tbaa !3
  %call11 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([10 x i8]* @.str38, i64 0, i64 0), i32 %3) #5
  %cmp12 = icmp slt i32 %call11, 0
  br i1 %cmp12, label %IO_error, label %if.end14

if.end14:                                         ; preds = %if.end10
  %4 = load i32* %type, align 4, !tbaa !3
  switch i32 %4, label %if.end23 [
    i32 1, label %sw.bb
    i32 2, label %sw.bb17
    i32 3, label %sw.bb19
  ]

sw.bb:                                            ; preds = %if.end14
  %call16 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([18 x i8]* @.str39, i64 0, i64 0)) #5
  br label %sw.epilog

sw.bb17:                                          ; preds = %if.end14
  %call18 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([15 x i8]* @.str40, i64 0, i64 0)) #5
  br label %sw.epilog

sw.bb19:                                          ; preds = %if.end14
  %call20 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([18 x i8]* @.str41, i64 0, i64 0)) #5
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb19, %sw.bb17, %sw.bb
  %rc.0 = phi i32 [ %call20, %sw.bb19 ], [ %call18, %sw.bb17 ], [ %call16, %sw.bb ]
  %cmp21 = icmp slt i32 %rc.0, 0
  br i1 %cmp21, label %IO_error, label %if.end23

if.end23:                                         ; preds = %if.end14, %sw.epilog
  %5 = load i32* %nlist, align 4, !tbaa !3
  %maxnlist = getelementptr inbounds %struct._IVL* %ivl, i64 0, i32 1
  %6 = load i32* %maxnlist, align 4, !tbaa !3
  %tsize = getelementptr inbounds %struct._IVL* %ivl, i64 0, i32 3
  %7 = load i32* %tsize, align 4, !tbaa !3
  %call25 = tail call i32 @IVL_sizeOf(%struct._IVL* %ivl) #5
  %call26 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([55 x i8]* @.str42, i64 0, i64 0), i32 %5, i32 %6, i32 %7, i32 %call25) #5
  %cmp27 = icmp slt i32 %call26, 0
  br i1 %cmp27, label %IO_error, label %if.end29

if.end29:                                         ; preds = %if.end23
  %8 = load i32* %type, align 4, !tbaa !3
  switch i32 %8, label %return [
    i32 1, label %sw.bb31
    i32 2, label %sw.bb47
  ]

sw.bb31:                                          ; preds = %if.end29
  %chunk32 = getelementptr inbounds %struct._IVL* %ivl, i64 0, i32 7
  %chunk.097 = load %struct._Ichunk** %chunk32, align 8
  %cmp3398 = icmp eq %struct._Ichunk* %chunk.097, null
  br i1 %cmp3398, label %for.end, label %for.body

for.body:                                         ; preds = %sw.bb31, %for.body
  %chunk.0101 = phi %struct._Ichunk* [ %chunk.0, %for.body ], [ %chunk.097, %sw.bb31 ]
  %nchunk.0100 = phi i32 [ %inc, %for.body ], [ 0, %sw.bb31 ]
  %nalloc.099 = phi i32 [ %add, %for.body ], [ 0, %sw.bb31 ]
  %inc = add nsw i32 %nchunk.0100, 1
  %size = getelementptr inbounds %struct._Ichunk* %chunk.0101, i64 0, i32 0
  %9 = load i32* %size, align 4, !tbaa !3
  %add = add nsw i32 %9, %nalloc.099
  %next = getelementptr inbounds %struct._Ichunk* %chunk.0101, i64 0, i32 3
  %chunk.0 = load %struct._Ichunk** %next, align 8
  %cmp33 = icmp eq %struct._Ichunk* %chunk.0, null
  br i1 %cmp33, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %sw.bb31
  %nchunk.0.lcssa = phi i32 [ 0, %sw.bb31 ], [ %inc, %for.body ]
  %nalloc.0.lcssa = phi i32 [ 0, %sw.bb31 ], [ %add, %for.body ]
  %call34 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([45 x i8]* @.str43, i64 0, i64 0), i32 %nchunk.0.lcssa, i32 %nactive.0, i32 %nalloc.0.lcssa) #5
  %cmp35 = icmp slt i32 %call34, 0
  br i1 %cmp35, label %IO_error, label %if.end37

if.end37:                                         ; preds = %for.end
  %cmp38 = icmp sgt i32 %nalloc.0.lcssa, 0
  br i1 %cmp38, label %if.then39, label %return

if.then39:                                        ; preds = %if.end37
  %conv = sitofp i32 %nactive.0 to double
  %mul = fmul double %conv, 1.000000e+02
  %conv40 = sitofp i32 %nalloc.0.lcssa to double
  %div = fdiv double %mul, %conv40
  %call41 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([15 x i8]* @.str44, i64 0, i64 0), double %div) #5
  %cmp42 = icmp slt i32 %call41, 0
  br i1 %cmp42, label %IO_error, label %return

sw.bb47:                                          ; preds = %if.end29
  %10 = load i32* %nlist, align 4, !tbaa !3
  %call49 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([51 x i8]* @.str45, i64 0, i64 0), i32 %10, i32 %nactive.0) #5
  %cmp50 = icmp slt i32 %call49, 0
  br i1 %cmp50, label %IO_error, label %return

IO_error:                                         ; preds = %sw.bb47, %if.then39, %for.end, %if.end23, %sw.epilog, %if.end10, %if.end6
  %rc.1 = phi i32 [ %call7, %if.end6 ], [ %call11, %if.end10 ], [ %rc.0, %sw.epilog ], [ %call26, %if.end23 ], [ %call49, %sw.bb47 ], [ %call34, %for.end ], [ %call41, %if.then39 ]
  %11 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call55 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %11, i8* getelementptr inbounds ([70 x i8]* @.str46, i64 0, i64 0), %struct._IVL* %ivl, %struct._IO_FILE* %fp, i32 %rc.1) #5
  br label %return

return:                                           ; preds = %if.end29, %if.then39, %if.end37, %sw.bb47, %IO_error
  %retval.0 = phi i32 [ 0, %IO_error ], [ 1, %sw.bb47 ], [ 1, %if.end37 ], [ 1, %if.then39 ], [ 1, %if.end29 ]
  ret i32 %retval.0
}

; Function Attrs: optsize
declare i32 @IVsum(i32, i32*) #3

; Function Attrs: optsize
declare i32 @IVL_sizeOf(%struct._IVL*) #3

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
