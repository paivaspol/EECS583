; ModuleID = '../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_IV.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct._Drand = type { double, double, double, double, double, double, double, double, i32 }

@stderr = external global %struct._IO_FILE*
@.str = private unnamed_addr constant [103 x i8] c"\0A fatal error in IVcompress, invalid data\0A size1 = %d, x1 = %p, y1 = %p\0A size2 = %d, x2 = %p, y2 = %p\0A\00", align 1
@.str1 = private unnamed_addr constant [65 x i8] c"\0A fatal error in IVcopy, invalid data\0A size = %d, y = %p, x = %p\00", align 1
@.str2 = private unnamed_addr constant [69 x i8] c"\0A fatal error in IVfill, invalid data\0A size = %d, y = %p, ival = %d\0A\00", align 1
@.str3 = private unnamed_addr constant [70 x i8] c"\0A fatal error in IVfprintf, invalid data\0A fp = %p, size = %d, y = %p\0A\00", align 1
@.str5 = private unnamed_addr constant [5 x i8] c" %4d\00", align 1
@.str6 = private unnamed_addr constant [81 x i8] c"\0A fatal error in IVfp80, invalid input\0A fp = %p, size = %d, y = %p, column = %d\0A\00", align 1
@.str7 = private unnamed_addr constant [4 x i8] c" %d\00", align 1
@.str8 = private unnamed_addr constant [69 x i8] c"\0A fatal error in IVfscanf, invalid data\0A fp = %p, size = %d, y = %p\0A\00", align 1
@.str9 = private unnamed_addr constant [80 x i8] c"\0A fatal error in IVgather, invalid data\0A size = %d, y = %p, x = %p, index = %p\0A\00", align 1
@.str10 = private unnamed_addr constant [49 x i8] c"\0A ALLOCATE failure : bytes %zd, line %d, file %s\00", align 1
@.str11 = private unnamed_addr constant [83 x i8] c"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_IV.c\00", align 1
@.str13 = private unnamed_addr constant [61 x i8] c"\0A fatal error in IVinverse, invalid data\0A size = %d, y = %p\0A\00", align 1
@.str14 = private unnamed_addr constant [71 x i8] c"\0A fatal error in IVinverse\0A y[%d] = %d, value out-of-range or repeated\00", align 1
@.str15 = private unnamed_addr constant [73 x i8] c"\0A fatal error in IVinvPerm, invalid data\0A size = %d, y = %p, index = %p\0A\00", align 1
@.str16 = private unnamed_addr constant [68 x i8] c"\0A fatal error in IVmax, invalid data\0A size = %d, y = %p, ploc = %p\0A\00", align 1
@.str17 = private unnamed_addr constant [71 x i8] c"\0A fatal error in IVmaxabs, invalid data\0A size = %d, y = %p, ploc = %p\0A\00", align 1
@.str18 = private unnamed_addr constant [68 x i8] c"\0A fatal error in IVmin, invalid data\0A size = %d, y = %p, ploc = %p\0A\00", align 1
@.str19 = private unnamed_addr constant [71 x i8] c"\0A fatal error in IVminabs, invalid data\0A size = %d, y = %p, ploc = %p\0A\00", align 1
@.str20 = private unnamed_addr constant [70 x i8] c"\0A fatal error in IVperm, invalid data\0A size = %d, y = %p, index = %p\0A\00", align 1
@.str21 = private unnamed_addr constant [80 x i8] c"\0A fatal error in IVramp, invalid data\0A size = %d, y = %p, start = %d, inc = %d\0A\00", align 1
@.str22 = private unnamed_addr constant [81 x i8] c"\0A fatal error in IVscatter, invalid data\0A size = %d, y = %p, index = %p, x = %p\0A\00", align 1
@.str23 = private unnamed_addr constant [57 x i8] c"\0A fatal error in IVsum, invalid data\0A size = %d, y = %p\0A\00", align 1
@.str24 = private unnamed_addr constant [60 x i8] c"\0A fatal error in IVsumabs, invalid data\0A size = %d, y = %p\0A\00", align 1
@.str25 = private unnamed_addr constant [66 x i8] c"\0A fatal error in IVswap, invalid data\0A size = %d, y = %p, x = %p\0A\00", align 1
@.str26 = private unnamed_addr constant [58 x i8] c"\0A fatal error in IVzero, invalid data\0A size = %d, y = %p\0A\00", align 1
@.str27 = private unnamed_addr constant [72 x i8] c"\0A fatal error in IVshuffle, invalid data\0A size = %d, y = %p, seed = %d\0A\00", align 1

; Function Attrs: nounwind optsize uwtable
define i32 @IVcompress(i32 %size1, i32* %x1, i32* %y1, i32 %size2, i32* %x2, i32* %y2) #0 {
entry:
  %cmp = icmp slt i32 %size1, 1
  %cmp1 = icmp slt i32 %size2, 1
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %return, label %if.else

if.else:                                          ; preds = %entry
  %cmp2 = icmp eq i32* %x1, null
  %cmp4 = icmp eq i32* %y1, null
  %or.cond133 = or i1 %cmp2, %cmp4
  %cmp6 = icmp eq i32* %x2, null
  %or.cond134 = or i1 %or.cond133, %cmp6
  %cmp8 = icmp eq i32* %y2, null
  %or.cond135 = or i1 %or.cond134, %cmp8
  br i1 %or.cond135, label %if.then9, label %if.end10

if.then9:                                         ; preds = %if.else
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([103 x i8]* @.str, i64 0, i64 0), i32 %size1, i32* %x1, i32* %y1, i32 %size2, i32* %x2, i32* %y2) #6
  tail call void @exit(i32 -1) #7
  unreachable

if.end10:                                         ; preds = %if.else
  %call11 = tail call double* @DVinit(i32 %size1, double 0.000000e+00) #6
  %cmp12141 = icmp sgt i32 %size1, 1
  br i1 %cmp12141, label %for.body, label %for.end

for.body:                                         ; preds = %if.end10, %for.body
  %indvars.iv144 = phi i64 [ %indvars.iv.next145, %for.body ], [ 1, %if.end10 ]
  %arrayidx = getelementptr inbounds i32* %x1, i64 %indvars.iv144
  %1 = load i32* %arrayidx, align 4, !tbaa !3
  %2 = add nsw i64 %indvars.iv144, -1
  %arrayidx14 = getelementptr inbounds i32* %x1, i64 %2
  %3 = load i32* %arrayidx14, align 4, !tbaa !3
  %sub15 = sub nsw i32 %1, %3
  %conv = sitofp i32 %sub15 to double
  %arrayidx17 = getelementptr inbounds i32* %y1, i64 %indvars.iv144
  %4 = load i32* %arrayidx17, align 4, !tbaa !3
  %arrayidx20 = getelementptr inbounds i32* %y1, i64 %2
  %5 = load i32* %arrayidx20, align 4, !tbaa !3
  %sub21 = sub nsw i32 %4, %5
  %conv22 = sitofp i32 %sub21 to double
  %mul = fmul double %conv, %conv
  %mul23 = fmul double %conv22, %conv22
  %add = fadd double %mul, %mul23
  %call24 = tail call double @sqrt(double %add) #6
  %arrayidx27 = getelementptr inbounds double* %call11, i64 %2
  store double %call24, double* %arrayidx27, align 8, !tbaa !4
  %indvars.iv.next145 = add i64 %indvars.iv144, 1
  %lftr.wideiv147 = trunc i64 %indvars.iv.next145 to i32
  %exitcond148 = icmp eq i32 %lftr.wideiv147, %size1
  br i1 %exitcond148, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %if.end10
  %call28 = tail call double @DVsum(i32 %size1, double* %call11) #6
  %sub29 = add nsw i32 %size2, -2
  %conv30 = sitofp i32 %sub29 to double
  %div = fdiv double %call28, %conv30
  %6 = load i32* %x1, align 4, !tbaa !3
  store i32 %6, i32* %x2, align 4, !tbaa !3
  %7 = load i32* %y1, align 4, !tbaa !3
  store i32 %7, i32* %y2, align 4, !tbaa !3
  %sub41 = add i32 %size1, -1
  %cmp42136 = icmp sgt i32 %sub41, 1
  br i1 %cmp42136, label %for.body44, label %for.end64

for.body44:                                       ; preds = %for.end, %for.inc62
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc62 ], [ 1, %for.end ]
  %i.0138 = phi i32 [ %i.1, %for.inc62 ], [ 1, %for.end ]
  %path.0137 = phi double [ %path.1, %for.inc62 ], [ 0.000000e+00, %for.end ]
  %8 = add nsw i64 %indvars.iv, -1
  %arrayidx47 = getelementptr inbounds double* %call11, i64 %8
  %9 = load double* %arrayidx47, align 8, !tbaa !4
  %add48 = fadd double %path.0137, %9
  %cmp49 = fcmp ult double %add48, %div
  br i1 %cmp49, label %for.inc62, label %if.then51

if.then51:                                        ; preds = %for.body44
  %arrayidx53 = getelementptr inbounds i32* %x1, i64 %indvars.iv
  %10 = load i32* %arrayidx53, align 4, !tbaa !3
  %idxprom54 = sext i32 %i.0138 to i64
  %arrayidx55 = getelementptr inbounds i32* %x2, i64 %idxprom54
  store i32 %10, i32* %arrayidx55, align 4, !tbaa !3
  %arrayidx57 = getelementptr inbounds i32* %y1, i64 %indvars.iv
  %11 = load i32* %arrayidx57, align 4, !tbaa !3
  %arrayidx59 = getelementptr inbounds i32* %y2, i64 %idxprom54
  store i32 %11, i32* %arrayidx59, align 4, !tbaa !3
  %inc60 = add nsw i32 %i.0138, 1
  br label %for.inc62

for.inc62:                                        ; preds = %for.body44, %if.then51
  %path.1 = phi double [ 0.000000e+00, %if.then51 ], [ %add48, %for.body44 ]
  %i.1 = phi i32 [ %inc60, %if.then51 ], [ %i.0138, %for.body44 ]
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %sub41
  br i1 %exitcond, label %for.end64, label %for.body44

for.end64:                                        ; preds = %for.inc62, %for.end
  %i.0.lcssa = phi i32 [ 1, %for.end ], [ %i.1, %for.inc62 ]
  %idxprom66 = sext i32 %sub41 to i64
  %arrayidx67 = getelementptr inbounds i32* %x1, i64 %idxprom66
  %12 = load i32* %arrayidx67, align 4, !tbaa !3
  %idxprom68 = sext i32 %i.0.lcssa to i64
  %arrayidx69 = getelementptr inbounds i32* %x2, i64 %idxprom68
  store i32 %12, i32* %arrayidx69, align 4, !tbaa !3
  %arrayidx72 = getelementptr inbounds i32* %y1, i64 %idxprom66
  %13 = load i32* %arrayidx72, align 4, !tbaa !3
  %arrayidx74 = getelementptr inbounds i32* %y2, i64 %idxprom68
  store i32 %13, i32* %arrayidx74, align 4, !tbaa !3
  %inc75 = add nsw i32 %i.0.lcssa, 1
  tail call void @DVfree(double* %call11) #6
  br label %return

return:                                           ; preds = %entry, %for.end64
  %retval.0 = phi i32 [ %inc75, %for.end64 ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #1

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32) #2

; Function Attrs: optsize
declare double* @DVinit(i32, double) #3

; Function Attrs: nounwind optsize
declare double @sqrt(double) #1

; Function Attrs: optsize
declare double @DVsum(i32, double*) #3

; Function Attrs: optsize
declare void @DVfree(double*) #3

; Function Attrs: nounwind optsize uwtable
define void @IVcopy(i32 %size, i32* %y, i32* %x) #0 {
entry:
  %cmp = icmp sgt i32 %size, 0
  br i1 %cmp, label %if.then, label %if.end7

if.then:                                          ; preds = %entry
  %cmp1 = icmp eq i32* %y, null
  %cmp2 = icmp eq i32* %x, null
  %or.cond = or i1 %cmp1, %cmp2
  br i1 %or.cond, label %if.then3, label %for.body

if.then3:                                         ; preds = %if.then
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 %size, i32* %y, i32* %x) #6
  tail call void @exit(i32 -1) #7
  unreachable

for.body:                                         ; preds = %if.then, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %if.then ]
  %arrayidx = getelementptr inbounds i32* %x, i64 %indvars.iv
  %1 = load i32* %arrayidx, align 4, !tbaa !3
  %arrayidx6 = getelementptr inbounds i32* %y, i64 %indvars.iv
  store i32 %1, i32* %arrayidx6, align 4, !tbaa !3
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %size
  br i1 %exitcond, label %if.end7, label %for.body

if.end7:                                          ; preds = %for.body, %entry
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @IVfill(i32 %size, i32* %y, i32 %ival) #0 {
entry:
  %cmp = icmp sgt i32 %size, 0
  br i1 %cmp, label %if.then, label %if.end4

if.then:                                          ; preds = %entry
  %cmp1 = icmp eq i32* %y, null
  br i1 %cmp1, label %if.then2, label %for.body

if.then2:                                         ; preds = %if.then
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([69 x i8]* @.str2, i64 0, i64 0), i32 %size, i32* null, i32 %ival) #6
  tail call void @exit(i32 -1) #7
  unreachable

for.body:                                         ; preds = %if.then, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %if.then ]
  %arrayidx = getelementptr inbounds i32* %y, i64 %indvars.iv
  store i32 %ival, i32* %arrayidx, align 4, !tbaa !3
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %size
  br i1 %exitcond, label %if.end4, label %for.body

if.end4:                                          ; preds = %for.body, %entry
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @IVfprintf(%struct._IO_FILE* %fp, i32 %size, i32* %y) #0 {
entry:
  %cmp = icmp ne %struct._IO_FILE* %fp, null
  %cmp1 = icmp sgt i32 %size, 0
  %or.cond = and i1 %cmp, %cmp1
  br i1 %or.cond, label %if.then, label %if.end10

if.then:                                          ; preds = %entry
  %cmp2 = icmp eq i32* %y, null
  br i1 %cmp2, label %if.then3, label %for.body

if.then3:                                         ; preds = %if.then
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([70 x i8]* @.str3, i64 0, i64 0), %struct._IO_FILE* %fp, i32 %size, i32* null) #6
  tail call void @exit(i32 -1) #7
  unreachable

for.body:                                         ; preds = %if.then, %if.end
  %indvars.iv = phi i64 [ %indvars.iv.next, %if.end ], [ 0, %if.then ]
  %rem21 = and i64 %indvars.iv, 15
  %cmp5 = icmp eq i64 %rem21, 0
  br i1 %cmp5, label %if.then6, label %if.end

if.then6:                                         ; preds = %for.body
  %fputc = tail call i32 @fputc(i32 10, %struct._IO_FILE* %fp)
  br label %if.end

if.end:                                           ; preds = %if.then6, %for.body
  %arrayidx = getelementptr inbounds i32* %y, i64 %indvars.iv
  %1 = load i32* %arrayidx, align 4, !tbaa !3
  %call8 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([5 x i8]* @.str5, i64 0, i64 0), i32 %1) #6
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %size
  br i1 %exitcond, label %if.end10, label %for.body

if.end10:                                         ; preds = %if.end, %entry
  ret void
}

; Function Attrs: nounwind optsize uwtable
define i32 @IVfp80(%struct._IO_FILE* %fp, i32 %size, i32* %y, i32 %column, i32* nocapture %pierr) #0 {
entry:
  store i32 1, i32* %pierr, align 4, !tbaa !3
  %cmp = icmp ne %struct._IO_FILE* %fp, null
  %cmp1 = icmp sgt i32 %size, 0
  %or.cond = and i1 %cmp, %cmp1
  br i1 %or.cond, label %if.then, label %if.end25

if.then:                                          ; preds = %entry
  %cmp2 = icmp eq i32* %y, null
  br i1 %cmp2, label %if.then3, label %for.body

if.then3:                                         ; preds = %if.then
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([81 x i8]* @.str6, i64 0, i64 0), %struct._IO_FILE* %fp, i32 %size, i32* null, i32 %column) #6
  tail call void @exit(i32 -1) #7
  unreachable

for.cond:                                         ; preds = %if.end16
  %1 = trunc i64 %indvars.iv.next to i32
  %cmp4 = icmp slt i32 %1, %size
  br i1 %cmp4, label %for.body, label %if.end25

for.body:                                         ; preds = %if.then, %for.cond
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.cond ], [ 0, %if.then ]
  %column.addr.048 = phi i32 [ %column.addr.1, %for.cond ], [ %column, %if.then ]
  %arrayidx = getelementptr inbounds i32* %y, i64 %indvars.iv
  %2 = load i32* %arrayidx, align 4, !tbaa !3
  %cmp5 = icmp slt i32 %2, 0
  br i1 %cmp5, label %if.then6, label %if.else7

if.then6:                                         ; preds = %for.body
  %sub = sub nsw i32 0, %2
  br label %while.cond.preheader

if.else7:                                         ; preds = %for.body
  %cmp8 = icmp eq i32 %2, 0
  %. = select i1 %cmp8, i32 2, i32 1
  br label %while.cond.preheader

while.cond.preheader:                             ; preds = %if.then6, %if.else7
  %inum.0.ph = phi i32 [ %2, %if.else7 ], [ %sub, %if.then6 ]
  %nchar.0.ph = phi i32 [ %., %if.else7 ], [ 2, %if.then6 ]
  %cmp1244 = icmp sgt i32 %inum.0.ph, 0
  br i1 %cmp1244, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond.preheader, %while.body
  %nchar.046 = phi i32 [ %inc, %while.body ], [ %nchar.0.ph, %while.cond.preheader ]
  %inum.045 = phi i32 [ %div, %while.body ], [ %inum.0.ph, %while.cond.preheader ]
  %inc = add nsw i32 %nchar.046, 1
  %div = sdiv i32 %inum.045, 10
  %cmp12 = icmp sgt i32 %inum.045, 9
  br i1 %cmp12, label %while.body, label %while.end

while.end:                                        ; preds = %while.body, %while.cond.preheader
  %nchar.0.lcssa = phi i32 [ %nchar.0.ph, %while.cond.preheader ], [ %inc, %while.body ]
  %add = add nsw i32 %nchar.0.lcssa, %column.addr.048
  %cmp13 = icmp sgt i32 %add, 79
  br i1 %cmp13, label %if.then14, label %if.end16

if.then14:                                        ; preds = %while.end
  %fputc = tail call i32 @fputc(i32 10, %struct._IO_FILE* %fp)
  %.pre = load i32* %arrayidx, align 4, !tbaa !3
  br label %if.end16

if.end16:                                         ; preds = %if.then14, %while.end
  %3 = phi i32 [ %.pre, %if.then14 ], [ %2, %while.end ]
  %column.addr.1 = phi i32 [ %nchar.0.lcssa, %if.then14 ], [ %add, %while.end ]
  %call19 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([4 x i8]* @.str7, i64 0, i64 0), i32 %3) #6
  store i32 %call19, i32* %pierr, align 4, !tbaa !3
  %cmp20 = icmp slt i32 %call19, 0
  %indvars.iv.next = add i64 %indvars.iv, 1
  br i1 %cmp20, label %if.end25, label %for.cond

if.end25:                                         ; preds = %if.end16, %for.cond, %entry
  %column.addr.2 = phi i32 [ %column, %entry ], [ %column.addr.1, %for.cond ], [ %column.addr.1, %if.end16 ]
  ret i32 %column.addr.2
}

; Function Attrs: nounwind optsize uwtable
define void @IVfree(i32* %y) #0 {
entry:
  %cmp = icmp eq i32* %y, null
  br i1 %cmp, label %if.end3, label %if.then2

if.then2:                                         ; preds = %entry
  %0 = bitcast i32* %y to i8*
  tail call void @free(i8* %0) #6
  br label %if.end3

if.end3:                                          ; preds = %entry, %if.then2
  ret void
}

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) #1

; Function Attrs: nounwind optsize uwtable
define i32 @IVfscanf(%struct._IO_FILE* %fp, i32 %size, i32* %y) #0 {
entry:
  %cmp = icmp ne %struct._IO_FILE* %fp, null
  %cmp1 = icmp sgt i32 %size, 0
  %or.cond = and i1 %cmp, %cmp1
  br i1 %or.cond, label %if.then, label %if.end9

if.then:                                          ; preds = %entry
  %cmp2 = icmp eq i32* %y, null
  br i1 %cmp2, label %if.then3, label %for.body

if.then3:                                         ; preds = %if.then
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([69 x i8]* @.str8, i64 0, i64 0), %struct._IO_FILE* %fp, i32 %size, i32* null) #6
  tail call void @exit(i32 -1) #7
  unreachable

for.cond:                                         ; preds = %for.body
  %1 = trunc i64 %indvars.iv.next to i32
  %cmp4 = icmp slt i32 %1, %size
  br i1 %cmp4, label %for.body, label %if.end9

for.body:                                         ; preds = %if.then, %for.cond
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.cond ], [ 0, %if.then ]
  %i.020 = phi i32 [ %inc, %for.cond ], [ 0, %if.then ]
  %add.ptr = getelementptr inbounds i32* %y, i64 %indvars.iv
  %call5 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @__isoc99_fscanf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([4 x i8]* @.str7, i64 0, i64 0), i32* %add.ptr) #6
  %cmp6 = icmp eq i32 %call5, 1
  %indvars.iv.next = add i64 %indvars.iv, 1
  %inc = add nsw i32 %i.020, 1
  br i1 %cmp6, label %for.cond, label %if.end9

if.end9:                                          ; preds = %for.body, %for.cond, %entry
  %i.1 = phi i32 [ 0, %entry ], [ %i.020, %for.body ], [ %inc, %for.cond ]
  ret i32 %i.1
}

; Function Attrs: optsize
declare i32 @__isoc99_fscanf(%struct._IO_FILE*, i8*, ...) #3

; Function Attrs: nounwind optsize uwtable
define void @IVgather(i32 %size, i32* %y, i32* %x, i32* %index) #0 {
entry:
  %cmp = icmp sgt i32 %size, 0
  br i1 %cmp, label %if.then, label %if.end11

if.then:                                          ; preds = %entry
  %cmp1 = icmp eq i32* %y, null
  %cmp2 = icmp eq i32* %x, null
  %or.cond = or i1 %cmp1, %cmp2
  %cmp4 = icmp eq i32* %index, null
  %or.cond23 = or i1 %or.cond, %cmp4
  br i1 %or.cond23, label %if.then5, label %for.body

if.then5:                                         ; preds = %if.then
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([80 x i8]* @.str9, i64 0, i64 0), i32 %size, i32* %y, i32* %x, i32* %index) #6
  tail call void @exit(i32 -1) #7
  unreachable

for.body:                                         ; preds = %if.then, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %if.then ]
  %arrayidx = getelementptr inbounds i32* %index, i64 %indvars.iv
  %1 = load i32* %arrayidx, align 4, !tbaa !3
  %idxprom7 = sext i32 %1 to i64
  %arrayidx8 = getelementptr inbounds i32* %x, i64 %idxprom7
  %2 = load i32* %arrayidx8, align 4, !tbaa !3
  %arrayidx10 = getelementptr inbounds i32* %y, i64 %indvars.iv
  store i32 %2, i32* %arrayidx10, align 4, !tbaa !3
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %size
  br i1 %exitcond, label %if.end11, label %for.body

if.end11:                                         ; preds = %for.body, %entry
  ret void
}

; Function Attrs: nounwind optsize uwtable
define i32* @IVinit(i32 %size, i32 %ival) #0 {
entry:
  %cmp = icmp sgt i32 %size, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = tail call i32* @IVinit2(i32 %size) #8
  tail call void @IVfill(i32 %size, i32* %call, i32 %ival) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %y.0 = phi i32* [ %call, %if.then ], [ null, %entry ]
  ret i32* %y.0
}

; Function Attrs: nounwind optsize uwtable
define noalias i32* @IVinit2(i32 %size) #0 {
entry:
  %cmp = icmp sgt i32 %size, 0
  br i1 %cmp, label %if.then2, label %if.end19

if.then2:                                         ; preds = %entry
  %conv = sext i32 %size to i64
  %mul = shl nsw i64 %conv, 2
  %call = tail call noalias i8* @malloc(i64 %mul) #6
  %0 = bitcast i8* %call to i32*
  %cmp3 = icmp eq i8* %call, null
  br i1 %cmp3, label %if.then5, label %if.end19

if.then5:                                         ; preds = %if.then2
  %1 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call8 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([49 x i8]* @.str10, i64 0, i64 0), i64 %mul, i32 374, i8* getelementptr inbounds ([83 x i8]* @.str11, i64 0, i64 0)) #6
  tail call void @exit(i32 -1) #7
  unreachable

if.end19:                                         ; preds = %if.then2, %entry
  %y.0 = phi i32* [ %0, %if.then2 ], [ null, %entry ]
  ret i32* %y.0
}

; Function Attrs: nounwind optsize
declare noalias i8* @malloc(i64) #1

; Function Attrs: nounwind optsize uwtable
define i32* @IVinverse(i32 %size, i32* %y) #0 {
entry:
  %cmp = icmp sgt i32 %size, 0
  br i1 %cmp, label %if.then, label %if.end16

if.then:                                          ; preds = %entry
  %cmp1 = icmp eq i32* %y, null
  br i1 %cmp1, label %if.then2, label %for.body.lr.ph

if.then2:                                         ; preds = %if.then
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([61 x i8]* @.str13, i64 0, i64 0), i32 %size, i32* null) #6
  tail call void @exit(i32 -1) #7
  unreachable

for.body.lr.ph:                                   ; preds = %if.then
  %call3 = tail call i32* @IVinit(i32 %size, i32 -1) #8
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %if.end
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %if.end ]
  %i.035 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end ]
  %arrayidx = getelementptr inbounds i32* %y, i64 %indvars.iv
  %1 = load i32* %arrayidx, align 4, !tbaa !3
  %cmp5 = icmp sgt i32 %1, -1
  %cmp6 = icmp slt i32 %1, %size
  %or.cond = and i1 %cmp5, %cmp6
  br i1 %or.cond, label %lor.lhs.false7, label %if.then11

lor.lhs.false7:                                   ; preds = %for.body
  %idxprom8 = sext i32 %1 to i64
  %arrayidx9 = getelementptr inbounds i32* %call3, i64 %idxprom8
  %2 = load i32* %arrayidx9, align 4, !tbaa !3
  %cmp10 = icmp eq i32 %2, -1
  br i1 %cmp10, label %if.end, label %if.then11

if.then11:                                        ; preds = %for.body, %lor.lhs.false7
  %3 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call12 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([71 x i8]* @.str14, i64 0, i64 0), i32 %i.035, i32 %1) #6
  tail call void @exit(i32 -1) #7
  unreachable

if.end:                                           ; preds = %lor.lhs.false7
  %4 = trunc i64 %indvars.iv to i32
  store i32 %4, i32* %arrayidx9, align 4, !tbaa !3
  %indvars.iv.next = add i64 %indvars.iv, 1
  %inc = add nsw i32 %i.035, 1
  %5 = trunc i64 %indvars.iv.next to i32
  %cmp4 = icmp slt i32 %5, %size
  br i1 %cmp4, label %for.body, label %if.end16

if.end16:                                         ; preds = %if.end, %entry
  %x.0 = phi i32* [ null, %entry ], [ %call3, %if.end ]
  ret i32* %x.0
}

; Function Attrs: nounwind optsize uwtable
define void @IVinvPerm(i32 %size, i32* %y, i32* %index) #0 {
entry:
  %cmp = icmp sgt i32 %size, 0
  br i1 %cmp, label %if.then, label %if.end10

if.then:                                          ; preds = %entry
  %cmp1 = icmp eq i32* %y, null
  %cmp2 = icmp eq i32* %index, null
  %or.cond = or i1 %cmp1, %cmp2
  br i1 %or.cond, label %if.then3, label %for.body.lr.ph

if.then3:                                         ; preds = %if.then
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([73 x i8]* @.str15, i64 0, i64 0), i32 %size, i32* %y, i32* %index) #6
  tail call void @exit(i32 -1) #7
  unreachable

for.body.lr.ph:                                   ; preds = %if.then
  %call4 = tail call i32* @IVinit2(i32 %size) #8
  tail call void @IVcopy(i32 %size, i32* %call4, i32* %y) #8
  br label %for.body

for.body:                                         ; preds = %for.body, %for.body.lr.ph
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.body ]
  %arrayidx = getelementptr inbounds i32* %call4, i64 %indvars.iv
  %1 = load i32* %arrayidx, align 4, !tbaa !3
  %arrayidx7 = getelementptr inbounds i32* %index, i64 %indvars.iv
  %2 = load i32* %arrayidx7, align 4, !tbaa !3
  %idxprom8 = sext i32 %2 to i64
  %arrayidx9 = getelementptr inbounds i32* %y, i64 %idxprom8
  store i32 %1, i32* %arrayidx9, align 4, !tbaa !3
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %size
  br i1 %exitcond, label %if.then2.i, label %for.body

if.then2.i:                                       ; preds = %for.body
  %3 = bitcast i32* %call4 to i8*
  tail call void @free(i8* %3) #6
  br label %if.end10

if.end10:                                         ; preds = %if.then2.i, %entry
  ret void
}

; Function Attrs: nounwind optsize uwtable
define i32 @IVmax(i32 %size, i32* %y, i32* %ploc) #0 {
entry:
  %cmp = icmp sgt i32 %size, 0
  br i1 %cmp, label %if.then, label %if.end10

if.then:                                          ; preds = %entry
  %cmp1 = icmp eq i32* %y, null
  br i1 %cmp1, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.then
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([68 x i8]* @.str16, i64 0, i64 0), i32 %size, i32* null, i32* %ploc) #6
  tail call void @exit(i32 -1) #7
  unreachable

if.else:                                          ; preds = %if.then
  %1 = load i32* %y, align 4, !tbaa !3
  %cmp325 = icmp sgt i32 %size, 1
  br i1 %cmp325, label %for.body, label %for.end

for.body:                                         ; preds = %if.else, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 1, %if.else ]
  %loc.027 = phi i32 [ %i.0.loc.0, %for.body ], [ 0, %if.else ]
  %maxval.026 = phi i32 [ %.maxval.0, %for.body ], [ %1, %if.else ]
  %arrayidx4 = getelementptr inbounds i32* %y, i64 %indvars.iv
  %2 = load i32* %arrayidx4, align 4, !tbaa !3
  %cmp5 = icmp slt i32 %maxval.026, %2
  %.maxval.0 = select i1 %cmp5, i32 %2, i32 %maxval.026
  %3 = trunc i64 %indvars.iv to i32
  %i.0.loc.0 = select i1 %cmp5, i32 %3, i32 %loc.027
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %size
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %if.else
  %loc.0.lcssa = phi i32 [ 0, %if.else ], [ %i.0.loc.0, %for.body ]
  %maxval.0.lcssa = phi i32 [ %1, %if.else ], [ %.maxval.0, %for.body ]
  store i32 %loc.0.lcssa, i32* %ploc, align 4, !tbaa !3
  br label %if.end10

if.end10:                                         ; preds = %for.end, %entry
  %maxval.2 = phi i32 [ %maxval.0.lcssa, %for.end ], [ 0, %entry ]
  %loc.2 = phi i32 [ %loc.0.lcssa, %for.end ], [ -1, %entry ]
  store i32 %loc.2, i32* %ploc, align 4, !tbaa !3
  ret i32 %maxval.2
}

; Function Attrs: nounwind optsize uwtable
define i32 @IVmaxabs(i32 %size, i32* %y, i32* %ploc) #0 {
entry:
  %cmp = icmp sgt i32 %size, 0
  br i1 %cmp, label %if.then, label %if.end21

if.then:                                          ; preds = %entry
  %cmp1 = icmp eq i32* %y, null
  br i1 %cmp1, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.then
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([71 x i8]* @.str17, i64 0, i64 0), i32 %size, i32* null, i32* %ploc) #6
  tail call void @exit(i32 -1) #7
  unreachable

if.else:                                          ; preds = %if.then
  %1 = load i32* %y, align 4, !tbaa !3
  %cmp3 = icmp sgt i32 %1, -1
  %sub = sub nsw i32 0, %1
  %cond = select i1 %cmp3, i32 %1, i32 %sub
  %cmp638 = icmp sgt i32 %size, 1
  br i1 %cmp638, label %for.body, label %for.end

for.body:                                         ; preds = %if.else, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 1, %if.else ]
  %maxval.041 = phi i32 [ %cond17.maxval.0, %for.body ], [ %cond, %if.else ]
  %loc.039 = phi i32 [ %i.0.loc.0, %for.body ], [ 0, %if.else ]
  %arrayidx7 = getelementptr inbounds i32* %y, i64 %indvars.iv
  %2 = load i32* %arrayidx7, align 4, !tbaa !3
  %cmp8 = icmp sgt i32 %2, -1
  %sub15 = sub nsw i32 0, %2
  %cond17 = select i1 %cmp8, i32 %2, i32 %sub15
  %cmp18 = icmp slt i32 %maxval.041, %cond17
  %3 = trunc i64 %indvars.iv to i32
  %i.0.loc.0 = select i1 %cmp18, i32 %3, i32 %loc.039
  %cond17.maxval.0 = select i1 %cmp18, i32 %cond17, i32 %maxval.041
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %size
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %if.else
  %maxval.0.lcssa = phi i32 [ %cond, %if.else ], [ %cond17.maxval.0, %for.body ]
  %loc.0.lcssa = phi i32 [ 0, %if.else ], [ %i.0.loc.0, %for.body ]
  store i32 %loc.0.lcssa, i32* %ploc, align 4, !tbaa !3
  br label %if.end21

if.end21:                                         ; preds = %for.end, %entry
  %loc.2 = phi i32 [ %loc.0.lcssa, %for.end ], [ -1, %entry ]
  %maxval.2 = phi i32 [ %maxval.0.lcssa, %for.end ], [ 0, %entry ]
  store i32 %loc.2, i32* %ploc, align 4, !tbaa !3
  ret i32 %maxval.2
}

; Function Attrs: nounwind optsize uwtable
define i32 @IVmin(i32 %size, i32* %y, i32* %ploc) #0 {
entry:
  %cmp = icmp sgt i32 %size, 0
  br i1 %cmp, label %if.then, label %if.end10

if.then:                                          ; preds = %entry
  %cmp1 = icmp eq i32* %y, null
  br i1 %cmp1, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.then
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([68 x i8]* @.str18, i64 0, i64 0), i32 %size, i32* null, i32* %ploc) #6
  tail call void @exit(i32 -1) #7
  unreachable

if.else:                                          ; preds = %if.then
  %1 = load i32* %y, align 4, !tbaa !3
  %cmp325 = icmp sgt i32 %size, 1
  br i1 %cmp325, label %for.body, label %for.end

for.body:                                         ; preds = %if.else, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 1, %if.else ]
  %loc.027 = phi i32 [ %i.0.loc.0, %for.body ], [ 0, %if.else ]
  %minval.026 = phi i32 [ %.minval.0, %for.body ], [ %1, %if.else ]
  %arrayidx4 = getelementptr inbounds i32* %y, i64 %indvars.iv
  %2 = load i32* %arrayidx4, align 4, !tbaa !3
  %cmp5 = icmp sgt i32 %minval.026, %2
  %.minval.0 = select i1 %cmp5, i32 %2, i32 %minval.026
  %3 = trunc i64 %indvars.iv to i32
  %i.0.loc.0 = select i1 %cmp5, i32 %3, i32 %loc.027
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %size
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %if.else
  %loc.0.lcssa = phi i32 [ 0, %if.else ], [ %i.0.loc.0, %for.body ]
  %minval.0.lcssa = phi i32 [ %1, %if.else ], [ %.minval.0, %for.body ]
  store i32 %loc.0.lcssa, i32* %ploc, align 4, !tbaa !3
  br label %if.end10

if.end10:                                         ; preds = %for.end, %entry
  %minval.2 = phi i32 [ %minval.0.lcssa, %for.end ], [ 0, %entry ]
  %loc.2 = phi i32 [ %loc.0.lcssa, %for.end ], [ -1, %entry ]
  store i32 %loc.2, i32* %ploc, align 4, !tbaa !3
  ret i32 %minval.2
}

; Function Attrs: nounwind optsize uwtable
define i32 @IVminabs(i32 %size, i32* %y, i32* %ploc) #0 {
entry:
  %cmp = icmp sgt i32 %size, 0
  br i1 %cmp, label %if.then, label %if.end21

if.then:                                          ; preds = %entry
  %cmp1 = icmp eq i32* %y, null
  br i1 %cmp1, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.then
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([71 x i8]* @.str19, i64 0, i64 0), i32 %size, i32* null, i32* %ploc) #6
  tail call void @exit(i32 -1) #7
  unreachable

if.else:                                          ; preds = %if.then
  %1 = load i32* %y, align 4, !tbaa !3
  %cmp3 = icmp sgt i32 %1, -1
  %sub = sub nsw i32 0, %1
  %cond = select i1 %cmp3, i32 %1, i32 %sub
  %cmp638 = icmp sgt i32 %size, 1
  br i1 %cmp638, label %for.body, label %for.end

for.body:                                         ; preds = %if.else, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 1, %if.else ]
  %minval.041 = phi i32 [ %cond17.minval.0, %for.body ], [ %cond, %if.else ]
  %loc.039 = phi i32 [ %i.0.loc.0, %for.body ], [ 0, %if.else ]
  %arrayidx7 = getelementptr inbounds i32* %y, i64 %indvars.iv
  %2 = load i32* %arrayidx7, align 4, !tbaa !3
  %cmp8 = icmp sgt i32 %2, -1
  %sub15 = sub nsw i32 0, %2
  %cond17 = select i1 %cmp8, i32 %2, i32 %sub15
  %cmp18 = icmp sgt i32 %minval.041, %cond17
  %3 = trunc i64 %indvars.iv to i32
  %i.0.loc.0 = select i1 %cmp18, i32 %3, i32 %loc.039
  %cond17.minval.0 = select i1 %cmp18, i32 %cond17, i32 %minval.041
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %size
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %if.else
  %minval.0.lcssa = phi i32 [ %cond, %if.else ], [ %cond17.minval.0, %for.body ]
  %loc.0.lcssa = phi i32 [ 0, %if.else ], [ %i.0.loc.0, %for.body ]
  store i32 %loc.0.lcssa, i32* %ploc, align 4, !tbaa !3
  br label %if.end21

if.end21:                                         ; preds = %for.end, %entry
  %loc.2 = phi i32 [ %loc.0.lcssa, %for.end ], [ -1, %entry ]
  %minval.2 = phi i32 [ %minval.0.lcssa, %for.end ], [ 0, %entry ]
  store i32 %loc.2, i32* %ploc, align 4, !tbaa !3
  ret i32 %minval.2
}

; Function Attrs: nounwind optsize uwtable
define void @IVperm(i32 %size, i32* %y, i32* %index) #0 {
entry:
  %cmp = icmp sgt i32 %size, 0
  br i1 %cmp, label %if.then, label %if.end10

if.then:                                          ; preds = %entry
  %cmp1 = icmp eq i32* %y, null
  %cmp2 = icmp eq i32* %index, null
  %or.cond = or i1 %cmp1, %cmp2
  br i1 %or.cond, label %if.then3, label %for.body.lr.ph

if.then3:                                         ; preds = %if.then
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([70 x i8]* @.str20, i64 0, i64 0), i32 %size, i32* %y, i32* %index) #6
  tail call void @exit(i32 -1) #7
  unreachable

for.body.lr.ph:                                   ; preds = %if.then
  %call4 = tail call i32* @IVinit2(i32 %size) #8
  tail call void @IVcopy(i32 %size, i32* %call4, i32* %y) #8
  br label %for.body

for.body:                                         ; preds = %for.body, %for.body.lr.ph
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.body ]
  %arrayidx = getelementptr inbounds i32* %index, i64 %indvars.iv
  %1 = load i32* %arrayidx, align 4, !tbaa !3
  %idxprom6 = sext i32 %1 to i64
  %arrayidx7 = getelementptr inbounds i32* %call4, i64 %idxprom6
  %2 = load i32* %arrayidx7, align 4, !tbaa !3
  %arrayidx9 = getelementptr inbounds i32* %y, i64 %indvars.iv
  store i32 %2, i32* %arrayidx9, align 4, !tbaa !3
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %size
  br i1 %exitcond, label %if.then2.i, label %for.body

if.then2.i:                                       ; preds = %for.body
  %3 = bitcast i32* %call4 to i8*
  tail call void @free(i8* %3) #6
  br label %if.end10

if.end10:                                         ; preds = %if.then2.i, %entry
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @IVramp(i32 %size, i32* %y, i32 %start, i32 %inc) #0 {
entry:
  %cmp = icmp sgt i32 %size, 0
  br i1 %cmp, label %if.then, label %if.end5

if.then:                                          ; preds = %entry
  %cmp1 = icmp eq i32* %y, null
  br i1 %cmp1, label %if.then2, label %for.body

if.then2:                                         ; preds = %if.then
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([80 x i8]* @.str21, i64 0, i64 0), i32 %size, i32* null, i32 %start, i32 %inc) #6
  tail call void @exit(i32 -1) #7
  unreachable

for.body:                                         ; preds = %if.then, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %if.then ]
  %j.017 = phi i32 [ %add, %for.body ], [ %start, %if.then ]
  %arrayidx = getelementptr inbounds i32* %y, i64 %indvars.iv
  store i32 %j.017, i32* %arrayidx, align 4, !tbaa !3
  %indvars.iv.next = add i64 %indvars.iv, 1
  %add = add nsw i32 %j.017, %inc
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %size
  br i1 %exitcond, label %if.end5, label %for.body

if.end5:                                          ; preds = %for.body, %entry
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @IVscatter(i32 %size, i32* %y, i32* %index, i32* %x) #0 {
entry:
  %cmp = icmp sgt i32 %size, 0
  br i1 %cmp, label %if.then, label %if.end11

if.then:                                          ; preds = %entry
  %cmp1 = icmp eq i32* %y, null
  %cmp2 = icmp eq i32* %x, null
  %or.cond = or i1 %cmp1, %cmp2
  %cmp4 = icmp eq i32* %index, null
  %or.cond23 = or i1 %or.cond, %cmp4
  br i1 %or.cond23, label %if.then5, label %for.body

if.then5:                                         ; preds = %if.then
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([81 x i8]* @.str22, i64 0, i64 0), i32 %size, i32* %y, i32* %index, i32* %x) #6
  tail call void @exit(i32 -1) #7
  unreachable

for.body:                                         ; preds = %if.then, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %if.then ]
  %arrayidx = getelementptr inbounds i32* %x, i64 %indvars.iv
  %1 = load i32* %arrayidx, align 4, !tbaa !3
  %arrayidx8 = getelementptr inbounds i32* %index, i64 %indvars.iv
  %2 = load i32* %arrayidx8, align 4, !tbaa !3
  %idxprom9 = sext i32 %2 to i64
  %arrayidx10 = getelementptr inbounds i32* %y, i64 %idxprom9
  store i32 %1, i32* %arrayidx10, align 4, !tbaa !3
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %size
  br i1 %exitcond, label %if.end11, label %for.body

if.end11:                                         ; preds = %for.body, %entry
  ret void
}

; Function Attrs: nounwind optsize uwtable
define i32 @IVsum(i32 %size, i32* %y) #0 {
entry:
  %cmp = icmp sgt i32 %size, 0
  br i1 %cmp, label %if.then, label %if.end4

if.then:                                          ; preds = %entry
  %cmp1 = icmp eq i32* %y, null
  br i1 %cmp1, label %if.then2, label %for.body

if.then2:                                         ; preds = %if.then
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([57 x i8]* @.str23, i64 0, i64 0), i32 %size, i32* null) #6
  tail call void @exit(i32 -1) #7
  unreachable

for.body:                                         ; preds = %if.then, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %if.then ]
  %sum.013 = phi i32 [ %add, %for.body ], [ 0, %if.then ]
  %arrayidx = getelementptr inbounds i32* %y, i64 %indvars.iv
  %1 = load i32* %arrayidx, align 4, !tbaa !3
  %add = add nsw i32 %1, %sum.013
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %size
  br i1 %exitcond, label %if.end4, label %for.body

if.end4:                                          ; preds = %for.body, %entry
  %sum.1 = phi i32 [ 0, %entry ], [ %add, %for.body ]
  ret i32 %sum.1
}

; Function Attrs: nounwind optsize uwtable
define i32 @IVsumabs(i32 %size, i32* %y) #0 {
entry:
  %cmp = icmp sgt i32 %size, 0
  %cmp1 = icmp eq i32* %y, null
  %or.cond = and i1 %cmp, %cmp1
  br i1 %or.cond, label %if.then2, label %if.end10

if.then2:                                         ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([60 x i8]* @.str24, i64 0, i64 0), i32 %size, i32* null) #6
  tail call void @exit(i32 -1) #7
  unreachable

if.end10:                                         ; preds = %entry
  ret i32 0
}

; Function Attrs: nounwind optsize uwtable
define void @IVswap(i32 %size, i32* %y, i32* %x) #0 {
entry:
  %cmp = icmp sgt i32 %size, 0
  br i1 %cmp, label %if.then, label %if.end11

if.then:                                          ; preds = %entry
  %cmp1 = icmp eq i32* %y, null
  %cmp2 = icmp eq i32* %x, null
  %or.cond = or i1 %cmp1, %cmp2
  br i1 %or.cond, label %if.then3, label %for.body

if.then3:                                         ; preds = %if.then
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([66 x i8]* @.str25, i64 0, i64 0), i32 %size, i32* %y, i32* %x) #6
  tail call void @exit(i32 -1) #7
  unreachable

for.body:                                         ; preds = %if.then, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %if.then ]
  %arrayidx = getelementptr inbounds i32* %x, i64 %indvars.iv
  %1 = load i32* %arrayidx, align 4, !tbaa !3
  %arrayidx6 = getelementptr inbounds i32* %y, i64 %indvars.iv
  %2 = load i32* %arrayidx6, align 4, !tbaa !3
  store i32 %2, i32* %arrayidx, align 4, !tbaa !3
  store i32 %1, i32* %arrayidx6, align 4, !tbaa !3
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %size
  br i1 %exitcond, label %if.end11, label %for.body

if.end11:                                         ; preds = %for.body, %entry
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @IVzero(i32 %size, i32* %y) #0 {
entry:
  %y13 = bitcast i32* %y to i8*
  %cmp = icmp sgt i32 %size, 0
  br i1 %cmp, label %if.then, label %if.end4

if.then:                                          ; preds = %entry
  %cmp1 = icmp eq i32* %y, null
  br i1 %cmp1, label %if.then2, label %if.end4.loopexit

if.then2:                                         ; preds = %if.then
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([58 x i8]* @.str26, i64 0, i64 0), i32 %size, i32* null) #6
  tail call void @exit(i32 -1) #7
  unreachable

if.end4.loopexit:                                 ; preds = %if.then
  %1 = add i32 %size, -1
  %2 = zext i32 %1 to i64
  %3 = shl nuw nsw i64 %2, 2
  %4 = add i64 %3, 4
  call void @llvm.memset.p0i8.i64(i8* %y13, i8 0, i64 %4, i32 4, i1 false)
  br label %if.end4

if.end4:                                          ; preds = %if.end4.loopexit, %entry
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @IVshuffle(i32 %size, i32* %y, i32 %seed) #0 {
entry:
  %drand = alloca %struct._Drand, align 8
  %cmp = icmp sgt i32 %size, 0
  %cmp1 = icmp sgt i32 %seed, 0
  %or.cond = and i1 %cmp, %cmp1
  br i1 %or.cond, label %if.then, label %if.end13

if.then:                                          ; preds = %entry
  %cmp2 = icmp eq i32* %y, null
  br i1 %cmp2, label %if.then3, label %for.body.lr.ph

if.then3:                                         ; preds = %if.then
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([72 x i8]* @.str27, i64 0, i64 0), i32 %size, i32* null, i32 %seed) #6
  call void @exit(i32 -1) #7
  unreachable

for.body.lr.ph:                                   ; preds = %if.then
  %1 = bitcast %struct._Drand* %drand to i8*
  call void @llvm.lifetime.start(i64 72, i8* %1) #4
  call void @Drand_setDefaultFields(%struct._Drand* %drand) #6
  call void @Drand_setSeed(%struct._Drand* %drand, i32 %seed) #6
  call void @Drand_setUniform(%struct._Drand* %drand, double 0.000000e+00, double 1.000000e+00) #6
  %conv = sitofp i32 %size to double
  br label %for.body

for.body:                                         ; preds = %for.body, %for.body.lr.ph
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.body ]
  %call5 = call double @Drand_value(%struct._Drand* %drand) #6
  %mul = fmul double %conv, %call5
  %conv6 = fptosi double %mul to i32
  %arrayidx = getelementptr inbounds i32* %y, i64 %indvars.iv
  %2 = load i32* %arrayidx, align 4, !tbaa !3
  %idxprom7 = sext i32 %conv6 to i64
  %arrayidx8 = getelementptr inbounds i32* %y, i64 %idxprom7
  %3 = load i32* %arrayidx8, align 4, !tbaa !3
  store i32 %3, i32* %arrayidx, align 4, !tbaa !3
  store i32 %2, i32* %arrayidx8, align 4, !tbaa !3
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %size
  br i1 %exitcond, label %if.end13, label %for.body

if.end13:                                         ; preds = %for.body, %entry
  ret void
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #4

; Function Attrs: optsize
declare void @Drand_setDefaultFields(%struct._Drand*) #3

; Function Attrs: optsize
declare void @Drand_setSeed(%struct._Drand*, i32) #3

; Function Attrs: optsize
declare void @Drand_setUniform(%struct._Drand*, double, double) #3

; Function Attrs: optsize
declare double @Drand_value(%struct._Drand*) #3

; Function Attrs: nounwind optsize readonly uwtable
define i32 @IVlocateViaBinarySearch(i32 %size, i32* %ivec, i32 %target) #5 {
entry:
  %cmp = icmp slt i32 %size, 1
  %cmp1 = icmp eq i32* %ivec, null
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %return, label %if.end

if.end:                                           ; preds = %entry
  %sub = add nsw i32 %size, -1
  %0 = load i32* %ivec, align 4, !tbaa !3
  %cmp2 = icmp sgt i32 %0, %target
  br i1 %cmp2, label %return, label %lor.lhs.false3

lor.lhs.false3:                                   ; preds = %if.end
  %idxprom4 = sext i32 %sub to i64
  %arrayidx5 = getelementptr inbounds i32* %ivec, i64 %idxprom4
  %1 = load i32* %arrayidx5, align 4, !tbaa !3
  %cmp6 = icmp slt i32 %1, %target
  br i1 %cmp6, label %return, label %if.else

if.else:                                          ; preds = %lor.lhs.false3
  %cmp10 = icmp eq i32 %0, %target
  br i1 %cmp10, label %return, label %if.else12

if.else12:                                        ; preds = %if.else
  %cmp15 = icmp eq i32 %1, %target
  br i1 %cmp15, label %return, label %while.cond.outer

while.cond.outer:                                 ; preds = %if.else12, %if.else24
  %left.0.ph = phi i32 [ %div, %if.else24 ], [ 0, %if.else12 ]
  %right.0.ph = phi i32 [ %right.0, %if.else24 ], [ %sub, %if.else12 ]
  %add = add nsw i32 %left.0.ph, 1
  br label %while.cond

while.cond:                                       ; preds = %while.cond.outer, %while.body
  %right.0 = phi i32 [ %div, %while.body ], [ %right.0.ph, %while.cond.outer ]
  %cmp18 = icmp sgt i32 %right.0, %add
  br i1 %cmp18, label %while.body, label %return

while.body:                                       ; preds = %while.cond
  %add19 = add nsw i32 %right.0, %left.0.ph
  %div = sdiv i32 %add19, 2
  %idxprom20 = sext i32 %div to i64
  %arrayidx21 = getelementptr inbounds i32* %ivec, i64 %idxprom20
  %2 = load i32* %arrayidx21, align 4, !tbaa !3
  %cmp22 = icmp sgt i32 %2, %target
  br i1 %cmp22, label %while.cond, label %if.else24

if.else24:                                        ; preds = %while.body
  %cmp27 = icmp slt i32 %2, %target
  br i1 %cmp27, label %while.cond.outer, label %return

return:                                           ; preds = %while.cond, %if.else24, %if.else12, %if.else, %if.end, %lor.lhs.false3, %entry
  %retval.0 = phi i32 [ -1, %entry ], [ -1, %lor.lhs.false3 ], [ -1, %if.end ], [ 0, %if.else ], [ %sub, %if.else12 ], [ -1, %while.cond ], [ %div, %if.else24 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind
declare i32 @fputc(i32, %struct._IO_FILE* nocapture) #4

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #4

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind optsize readonly uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind optsize }
attributes #7 = { noreturn nounwind optsize }
attributes #8 = { optsize }

!0 = metadata !{metadata !"any pointer", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"int", metadata !1}
!4 = metadata !{metadata !"double", metadata !1}
