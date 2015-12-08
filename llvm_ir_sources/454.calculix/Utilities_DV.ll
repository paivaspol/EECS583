; ModuleID = '../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_DV.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct._Drand = type { double, double, double, double, double, double, double, double, i32 }

@stderr = external global %struct._IO_FILE*
@.str = private unnamed_addr constant [66 x i8] c"\0A fatal error in DVadd\0A invalid input, size = %d, y = %p, x = %p\0A\00", align 1
@.str1 = private unnamed_addr constant [79 x i8] c"\0A fatal error in DVaxpy\0A invalid input, size = %d, y = %p, alpha = %f, x = %p\0A\00", align 1
@.str2 = private unnamed_addr constant [91 x i8] c"\0A fatal error in DVaxpyi, invalid input\0A size = %d, y = %p, index = %p, alpha = %f, x = %p\00", align 1
@.str3 = private unnamed_addr constant [67 x i8] c"\0A fatal error in DVcopy, invalid input\0A size = %d, y = %p, x = %p\0A\00", align 1
@.str4 = private unnamed_addr constant [102 x i8] c"\0A fatal error in DVcompress, invalid data\0A size1 = %d, x1 = %p, y1 = %p\0A size2 = %d, x2 = %p, y2 = %p\00", align 1
@.str5 = private unnamed_addr constant [65 x i8] c"\0A fatal error in DVdot, invalid data\0A size = %d, y = %p, x = %p\0A\00", align 1
@.str6 = private unnamed_addr constant [49 x i8] c"\0A fatal error in DVdoti(%d,%p,%p,%p)\0A bad input\0A\00", align 1
@.str7 = private unnamed_addr constant [69 x i8] c"\0A fatal error in DVfill, invalid data\0A size = %d, y = %p, dval = %f\0A\00", align 1
@.str8 = private unnamed_addr constant [71 x i8] c"\0A fatal error in DVfprintf, invalid input\0A fp = %p, size = %d, y = %p\0A\00", align 1
@.str9 = private unnamed_addr constant [3 x i8] c"\0A \00", align 1
@.str10 = private unnamed_addr constant [7 x i8] c"%12.4e\00", align 1
@.str11 = private unnamed_addr constant [70 x i8] c"\0A fatal error in DVfscanf, invalid input\0A fp = %p, size = %d, y = %p\0A\00", align 1
@.str12 = private unnamed_addr constant [5 x i8] c" %le\00", align 1
@.str13 = private unnamed_addr constant [81 x i8] c"\0A fatal error in DVgather, invalid input\0A size = %d, y = %p, x = %p, index = %p\0A\00", align 1
@.str14 = private unnamed_addr constant [88 x i8] c"\0A fatal error in DVgatherAddZero, invalid input\0A size = %d, y = %p, x = %p, index = %p\0A\00", align 1
@.str15 = private unnamed_addr constant [85 x i8] c"\0A fatal error in DVgatherZero, invalid input\0A size = %d, y = %p, x = %p, index = %p\0A\00", align 1
@.str16 = private unnamed_addr constant [49 x i8] c"\0A ALLOCATE failure : bytes %zd, line %d, file %s\00", align 1
@.str17 = private unnamed_addr constant [83 x i8] c"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_DV.c\00", align 1
@.str19 = private unnamed_addr constant [72 x i8] c"\0A fatal error in DVinvPerm, invalid data\0A size = %d, y = %p, index = %p\00", align 1
@.str20 = private unnamed_addr constant [68 x i8] c"\0A fatal error in DVmax, invalid data\0A size = %d, y = %p, ploc = %p\0A\00", align 1
@.str21 = private unnamed_addr constant [71 x i8] c"\0A fatal error in DVmaxabs, invalid data\0A size = %d, y = %p, ploc = %p\0A\00", align 1
@.str22 = private unnamed_addr constant [68 x i8] c"\0A fatal error in DVmin, invalid data\0A size = %d, y = %p, ploc = %p\0A\00", align 1
@.str23 = private unnamed_addr constant [71 x i8] c"\0A fatal error in DVminabs, invalid data\0A size = %d, y = %p, ploc = %p\0A\00", align 1
@.str24 = private unnamed_addr constant [70 x i8] c"\0A fatal error in DVperm, invalid data\0A size = %d, y = %p, index = %p\0A\00", align 1
@.str25 = private unnamed_addr constant [81 x i8] c"\0A fatal error in DVramp, invalid input\0A size = %d, y = %p, start = %f, inc = %f\0A\00", align 1
@.str26 = private unnamed_addr constant [65 x i8] c"\0A fatal error in DVsub, invalid input\0A size = %d, y = %p, x = %p\00", align 1
@.str27 = private unnamed_addr constant [71 x i8] c"\0A fatal error in DVscale, invalid data\0A size = %d, y = %p, alpha = %f\0A\00", align 1
@.str28 = private unnamed_addr constant [81 x i8] c"\0A fatal error in DVscatter, invalid data\0A size = %d, y = %p, index = %p, x = %p\0A\00", align 1
@.str29 = private unnamed_addr constant [84 x i8] c"\0A fatal error in DVscatterAdd, invalid data\0A size = %d, y = %p, index = %p, x = %p\0A\00", align 1
@.str30 = private unnamed_addr constant [88 x i8] c"\0A fatal error in DVscatterAddZero, invalid data\0A size = %d, y = %p, index = %p, x = %p\0A\00", align 1
@.str31 = private unnamed_addr constant [85 x i8] c"\0A fatal error in DVscatterZero, invalid data\0A size = %d, y = %p, index = %p, x = %p\0A\00", align 1
@.str32 = private unnamed_addr constant [57 x i8] c"\0A fatal error in DVsum, invalid data\0A size = %d, y = %p\0A\00", align 1
@.str33 = private unnamed_addr constant [60 x i8] c"\0A fatal error in DVsumabs, invalid data\0A size = %d, y = %p\0A\00", align 1
@.str34 = private unnamed_addr constant [65 x i8] c"\0A fatal error in DVswap, invalid data\0A size = %d, y = %p, x = %p\00", align 1
@.str35 = private unnamed_addr constant [58 x i8] c"\0A fatal error in DVzero, invalid data\0A size = %d, y = %p\0A\00", align 1
@.str36 = private unnamed_addr constant [72 x i8] c"\0A fatal error in DVshuffle, invalid data\0A size = %d, y = %p, seed = %d\0A\00", align 1
@.str37 = private unnamed_addr constant [52 x i8] c"\0A fatal error in DVscale2(%d,%p,%p,...)\0A bad input\0A\00", align 1
@.str38 = private unnamed_addr constant [39 x i8] c"\0A fatal error in DVaxpy2()\0A bad input\0A\00", align 1
@.str39 = private unnamed_addr constant [62 x i8] c"\0A fatal error in DVdot33(%d,%p,%p,%p,%p,%p,%p,%p)\0A bad input\0A\00", align 1
@.str40 = private unnamed_addr constant [59 x i8] c"\0A fatal error in DVdot23(%d,%p,%p,%p,%p,%p,%p)\0A bad input\0A\00", align 1
@.str41 = private unnamed_addr constant [56 x i8] c"\0A fatal error in DVdot13(%d,%p,%p,%p,%p,%p)\0A bad input\0A\00", align 1
@.str42 = private unnamed_addr constant [59 x i8] c"\0A fatal error in DVdot32(%d,%p,%p,%p,%p,%p,%p)\0A bad input\0A\00", align 1
@.str43 = private unnamed_addr constant [56 x i8] c"\0A fatal error in DVdot22(%d,%p,%p,%p,%p,%p)\0A bad input\0A\00", align 1
@.str44 = private unnamed_addr constant [53 x i8] c"\0A fatal error in DVdot12(%d,%p,%p,%p,%p)\0A bad input\0A\00", align 1
@.str45 = private unnamed_addr constant [56 x i8] c"\0A fatal error in DVdot31(%d,%p,%p,%p,%p,%p)\0A bad input\0A\00", align 1
@.str46 = private unnamed_addr constant [53 x i8] c"\0A fatal error in DVdot21(%d,%p,%p,%p,%p)\0A bad input\0A\00", align 1
@.str47 = private unnamed_addr constant [50 x i8] c"\0A fatal error in DVdot11(%d,%p,%p,%p)\0A bad input\0A\00", align 1

; Function Attrs: nounwind optsize uwtable
define void @DVadd(i32 %size, double* %y, double* %x) #0 {
entry:
  %cmp = icmp slt i32 %size, 1
  br i1 %cmp, label %return, label %if.else

if.else:                                          ; preds = %entry
  %cmp1 = icmp eq double* %y, null
  %cmp2 = icmp eq double* %x, null
  %or.cond = or i1 %cmp1, %cmp2
  br i1 %or.cond, label %if.then3, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.else
  %cmp518 = icmp sgt i32 %size, 0
  br i1 %cmp518, label %for.body, label %return

if.then3:                                         ; preds = %if.else
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([66 x i8]* @.str, i64 0, i64 0), i32 %size, double* %y, double* %x) #5
  tail call void @exit(i32 -1) #6
  unreachable

for.body:                                         ; preds = %for.cond.preheader, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %for.cond.preheader ]
  %arrayidx = getelementptr inbounds double* %x, i64 %indvars.iv
  %1 = load double* %arrayidx, align 8, !tbaa !3
  %arrayidx7 = getelementptr inbounds double* %y, i64 %indvars.iv
  %2 = load double* %arrayidx7, align 8, !tbaa !3
  %add = fadd double %1, %2
  store double %add, double* %arrayidx7, align 8, !tbaa !3
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %size
  br i1 %exitcond, label %return, label %for.body

return:                                           ; preds = %for.cond.preheader, %for.body, %entry
  ret void
}

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #1

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32) #2

; Function Attrs: nounwind optsize uwtable
define void @DVaxpy(i32 %size, double* %y, double %alpha, double* %x) #0 {
entry:
  %cmp = icmp slt i32 %size, 0
  %cmp1 = fcmp oeq double %alpha, 0.000000e+00
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %return, label %if.else

if.else:                                          ; preds = %entry
  %cmp2 = icmp eq double* %y, null
  %cmp4 = icmp eq double* %x, null
  %or.cond22 = or i1 %cmp2, %cmp4
  br i1 %or.cond22, label %if.then5, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.else
  %cmp723 = icmp sgt i32 %size, 0
  br i1 %cmp723, label %for.body, label %return

if.then5:                                         ; preds = %if.else
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([79 x i8]* @.str1, i64 0, i64 0), i32 %size, double* %y, double %alpha, double* %x) #5
  tail call void @exit(i32 -1) #6
  unreachable

for.body:                                         ; preds = %for.cond.preheader, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %for.cond.preheader ]
  %arrayidx = getelementptr inbounds double* %x, i64 %indvars.iv
  %1 = load double* %arrayidx, align 8, !tbaa !3
  %mul = fmul double %1, %alpha
  %arrayidx9 = getelementptr inbounds double* %y, i64 %indvars.iv
  %2 = load double* %arrayidx9, align 8, !tbaa !3
  %add = fadd double %2, %mul
  store double %add, double* %arrayidx9, align 8, !tbaa !3
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %size
  br i1 %exitcond, label %return, label %for.body

return:                                           ; preds = %for.cond.preheader, %for.body, %entry
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @DVaxpyi(i32 %size, double* %y, i32* %index, double %alpha, double* %x) #0 {
entry:
  %cmp = icmp slt i32 %size, 1
  %cmp1 = fcmp oeq double %alpha, 0.000000e+00
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %return, label %if.else

if.else:                                          ; preds = %entry
  %cmp2 = icmp eq double* %y, null
  %cmp4 = icmp eq i32* %index, null
  %or.cond28 = or i1 %cmp2, %cmp4
  %cmp6 = icmp eq double* %x, null
  %or.cond29 = or i1 %or.cond28, %cmp6
  br i1 %or.cond29, label %if.then7, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.else
  %cmp930 = icmp sgt i32 %size, 0
  br i1 %cmp930, label %for.body, label %return

if.then7:                                         ; preds = %if.else
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([91 x i8]* @.str2, i64 0, i64 0), i32 %size, double* %y, i32* %index, double %alpha, double* %x) #5
  tail call void @exit(i32 -1) #6
  unreachable

for.body:                                         ; preds = %for.cond.preheader, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %for.cond.preheader ]
  %arrayidx = getelementptr inbounds double* %x, i64 %indvars.iv
  %1 = load double* %arrayidx, align 8, !tbaa !3
  %mul = fmul double %1, %alpha
  %arrayidx11 = getelementptr inbounds i32* %index, i64 %indvars.iv
  %2 = load i32* %arrayidx11, align 4, !tbaa !4
  %idxprom12 = sext i32 %2 to i64
  %arrayidx13 = getelementptr inbounds double* %y, i64 %idxprom12
  %3 = load double* %arrayidx13, align 8, !tbaa !3
  %add = fadd double %mul, %3
  store double %add, double* %arrayidx13, align 8, !tbaa !3
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %size
  br i1 %exitcond, label %return, label %for.body

return:                                           ; preds = %for.cond.preheader, %for.body, %entry
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @DVcopy(i32 %size, double* %y, double* %x) #0 {
entry:
  %cmp = icmp slt i32 %size, 1
  br i1 %cmp, label %return, label %if.else

if.else:                                          ; preds = %entry
  %cmp1 = icmp eq double* %y, null
  %cmp2 = icmp eq double* %x, null
  %or.cond = or i1 %cmp1, %cmp2
  br i1 %or.cond, label %if.then3, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.else
  %cmp518 = icmp sgt i32 %size, 0
  br i1 %cmp518, label %for.body, label %return

if.then3:                                         ; preds = %if.else
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([67 x i8]* @.str3, i64 0, i64 0), i32 %size, double* %y, double* %x) #5
  tail call void @exit(i32 -1) #6
  unreachable

for.body:                                         ; preds = %for.cond.preheader, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %for.cond.preheader ]
  %arrayidx = getelementptr inbounds double* %x, i64 %indvars.iv
  %1 = load double* %arrayidx, align 8, !tbaa !3
  %arrayidx7 = getelementptr inbounds double* %y, i64 %indvars.iv
  store double %1, double* %arrayidx7, align 8, !tbaa !3
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %size
  br i1 %exitcond, label %return, label %for.body

return:                                           ; preds = %for.cond.preheader, %for.body, %entry
  ret void
}

; Function Attrs: nounwind optsize uwtable
define i32 @DVcompress(i32 %size1, double* %x1, double* %y1, i32 %size2, double* %x2, double* %y2) #0 {
entry:
  %cmp = icmp slt i32 %size1, 1
  %cmp1 = icmp slt i32 %size2, 1
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %return, label %if.else

if.else:                                          ; preds = %entry
  %cmp2 = icmp eq double* %x1, null
  %cmp4 = icmp eq double* %y1, null
  %or.cond131 = or i1 %cmp2, %cmp4
  %cmp6 = icmp eq double* %x2, null
  %or.cond132 = or i1 %or.cond131, %cmp6
  %cmp8 = icmp eq double* %y2, null
  %or.cond133 = or i1 %or.cond132, %cmp8
  br i1 %or.cond133, label %if.then9, label %if.end10

if.then9:                                         ; preds = %if.else
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([102 x i8]* @.str4, i64 0, i64 0), i32 %size1, double* %x1, double* %y1, i32 %size2, double* %x2, double* %y2) #5
  tail call void @exit(i32 -1) #6
  unreachable

if.end10:                                         ; preds = %if.else
  %call11 = tail call double* @DVinit(i32 %size1, double 0.000000e+00) #7
  %cmp12139 = icmp sgt i32 %size1, 1
  br i1 %cmp12139, label %for.body, label %for.end

for.body:                                         ; preds = %if.end10, %for.body
  %indvars.iv142 = phi i64 [ %indvars.iv.next143, %for.body ], [ 1, %if.end10 ]
  %arrayidx = getelementptr inbounds double* %x1, i64 %indvars.iv142
  %1 = load double* %arrayidx, align 8, !tbaa !3
  %2 = add nsw i64 %indvars.iv142, -1
  %arrayidx14 = getelementptr inbounds double* %x1, i64 %2
  %3 = load double* %arrayidx14, align 8, !tbaa !3
  %sub15 = fsub double %1, %3
  %arrayidx17 = getelementptr inbounds double* %y1, i64 %indvars.iv142
  %4 = load double* %arrayidx17, align 8, !tbaa !3
  %arrayidx20 = getelementptr inbounds double* %y1, i64 %2
  %5 = load double* %arrayidx20, align 8, !tbaa !3
  %sub21 = fsub double %4, %5
  %mul = fmul double %sub15, %sub15
  %mul22 = fmul double %sub21, %sub21
  %add = fadd double %mul, %mul22
  %call23 = tail call double @sqrt(double %add) #5
  %arrayidx26 = getelementptr inbounds double* %call11, i64 %2
  store double %call23, double* %arrayidx26, align 8, !tbaa !3
  %indvars.iv.next143 = add i64 %indvars.iv142, 1
  %lftr.wideiv145 = trunc i64 %indvars.iv.next143 to i32
  %exitcond146 = icmp eq i32 %lftr.wideiv145, %size1
  br i1 %exitcond146, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %if.end10
  %call27 = tail call double @DVsum(i32 %size1, double* %call11) #7
  %sub28 = add nsw i32 %size2, -2
  %conv = sitofp i32 %sub28 to double
  %div = fdiv double %call27, %conv
  %6 = load double* %x1, align 8, !tbaa !3
  store double %6, double* %x2, align 8, !tbaa !3
  %7 = load double* %y1, align 8, !tbaa !3
  store double %7, double* %y2, align 8, !tbaa !3
  %sub39 = add i32 %size1, -1
  %cmp40134 = icmp sgt i32 %sub39, 1
  br i1 %cmp40134, label %for.body42, label %for.end62

for.body42:                                       ; preds = %for.end, %for.inc60
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc60 ], [ 1, %for.end ]
  %i.0136 = phi i32 [ %i.1, %for.inc60 ], [ 1, %for.end ]
  %path.0135 = phi double [ %path.1, %for.inc60 ], [ 0.000000e+00, %for.end ]
  %8 = add nsw i64 %indvars.iv, -1
  %arrayidx45 = getelementptr inbounds double* %call11, i64 %8
  %9 = load double* %arrayidx45, align 8, !tbaa !3
  %add46 = fadd double %path.0135, %9
  %cmp47 = fcmp ult double %add46, %div
  br i1 %cmp47, label %for.inc60, label %if.then49

if.then49:                                        ; preds = %for.body42
  %arrayidx51 = getelementptr inbounds double* %x1, i64 %indvars.iv
  %10 = load double* %arrayidx51, align 8, !tbaa !3
  %idxprom52 = sext i32 %i.0136 to i64
  %arrayidx53 = getelementptr inbounds double* %x2, i64 %idxprom52
  store double %10, double* %arrayidx53, align 8, !tbaa !3
  %arrayidx55 = getelementptr inbounds double* %y1, i64 %indvars.iv
  %11 = load double* %arrayidx55, align 8, !tbaa !3
  %arrayidx57 = getelementptr inbounds double* %y2, i64 %idxprom52
  store double %11, double* %arrayidx57, align 8, !tbaa !3
  %inc58 = add nsw i32 %i.0136, 1
  br label %for.inc60

for.inc60:                                        ; preds = %for.body42, %if.then49
  %path.1 = phi double [ 0.000000e+00, %if.then49 ], [ %add46, %for.body42 ]
  %i.1 = phi i32 [ %inc58, %if.then49 ], [ %i.0136, %for.body42 ]
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %sub39
  br i1 %exitcond, label %for.end62, label %for.body42

for.end62:                                        ; preds = %for.inc60, %for.end
  %i.0.lcssa = phi i32 [ 1, %for.end ], [ %i.1, %for.inc60 ]
  %idxprom64 = sext i32 %sub39 to i64
  %arrayidx65 = getelementptr inbounds double* %x1, i64 %idxprom64
  %12 = load double* %arrayidx65, align 8, !tbaa !3
  %idxprom66 = sext i32 %i.0.lcssa to i64
  %arrayidx67 = getelementptr inbounds double* %x2, i64 %idxprom66
  store double %12, double* %arrayidx67, align 8, !tbaa !3
  %arrayidx70 = getelementptr inbounds double* %y1, i64 %idxprom64
  %13 = load double* %arrayidx70, align 8, !tbaa !3
  %arrayidx72 = getelementptr inbounds double* %y2, i64 %idxprom66
  store double %13, double* %arrayidx72, align 8, !tbaa !3
  %inc73 = add nsw i32 %i.0.lcssa, 1
  %cmp.i = icmp eq double* %call11, null
  br i1 %cmp.i, label %return, label %if.then2.i

if.then2.i:                                       ; preds = %for.end62
  %14 = bitcast double* %call11 to i8*
  tail call void @free(i8* %14) #5
  br label %return

return:                                           ; preds = %if.then2.i, %for.end62, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ %inc73, %for.end62 ], [ %inc73, %if.then2.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind optsize uwtable
define double* @DVinit(i32 %size, double %dval) #0 {
entry:
  %cmp = icmp sgt i32 %size, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = tail call double* @DVinit2(i32 %size) #7
  tail call void @DVfill(i32 %size, double* %call, double %dval) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %y.0 = phi double* [ %call, %if.then ], [ null, %entry ]
  ret double* %y.0
}

; Function Attrs: nounwind optsize
declare double @sqrt(double) #1

; Function Attrs: nounwind optsize uwtable
define double @DVsum(i32 %size, double* %y) #0 {
entry:
  %cmp = icmp sgt i32 %size, 0
  br i1 %cmp, label %if.then, label %if.end4

if.then:                                          ; preds = %entry
  %cmp1 = icmp eq double* %y, null
  br i1 %cmp1, label %if.then2, label %for.body

if.then2:                                         ; preds = %if.then
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([57 x i8]* @.str32, i64 0, i64 0), i32 %size, double* null) #5
  tail call void @exit(i32 -1) #6
  unreachable

for.body:                                         ; preds = %if.then, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %if.then ]
  %sum.013 = phi double [ %add, %for.body ], [ 0.000000e+00, %if.then ]
  %arrayidx = getelementptr inbounds double* %y, i64 %indvars.iv
  %1 = load double* %arrayidx, align 8, !tbaa !3
  %add = fadd double %sum.013, %1
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %size
  br i1 %exitcond, label %if.end4, label %for.body

if.end4:                                          ; preds = %for.body, %entry
  %sum.1 = phi double [ 0.000000e+00, %entry ], [ %add, %for.body ]
  ret double %sum.1
}

; Function Attrs: nounwind optsize uwtable
define void @DVfree(double* %y) #0 {
entry:
  %cmp = icmp eq double* %y, null
  br i1 %cmp, label %if.end3, label %if.then2

if.then2:                                         ; preds = %entry
  %0 = bitcast double* %y to i8*
  tail call void @free(i8* %0) #5
  br label %if.end3

if.end3:                                          ; preds = %entry, %if.then2
  ret void
}

; Function Attrs: nounwind optsize uwtable
define double @DVdot(i32 %size, double* %y, double* %x) #0 {
entry:
  %cmp = icmp sgt i32 %size, 0
  br i1 %cmp, label %if.then, label %if.end7

if.then:                                          ; preds = %entry
  %cmp1 = icmp eq double* %y, null
  %cmp2 = icmp eq double* %x, null
  %or.cond = or i1 %cmp1, %cmp2
  br i1 %or.cond, label %if.then3, label %for.body

if.then3:                                         ; preds = %if.then
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([65 x i8]* @.str5, i64 0, i64 0), i32 %size, double* %y, double* %x) #5
  tail call void @exit(i32 -1) #6
  unreachable

for.body:                                         ; preds = %if.then, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %if.then ]
  %sum.019 = phi double [ %add, %for.body ], [ 0.000000e+00, %if.then ]
  %arrayidx = getelementptr inbounds double* %y, i64 %indvars.iv
  %1 = load double* %arrayidx, align 8, !tbaa !3
  %arrayidx6 = getelementptr inbounds double* %x, i64 %indvars.iv
  %2 = load double* %arrayidx6, align 8, !tbaa !3
  %mul = fmul double %1, %2
  %add = fadd double %sum.019, %mul
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %size
  br i1 %exitcond, label %if.end7, label %for.body

if.end7:                                          ; preds = %for.body, %entry
  %sum.1 = phi double [ 0.000000e+00, %entry ], [ %add, %for.body ]
  ret double %sum.1
}

; Function Attrs: nounwind optsize uwtable
define double @DVdoti(i32 %size, double* %y, i32* %index, double* %x) #0 {
entry:
  %cmp = icmp slt i32 %size, 0
  %cmp1 = icmp eq double* %y, null
  %or.cond = or i1 %cmp, %cmp1
  %cmp3 = icmp eq i32* %index, null
  %or.cond23 = or i1 %or.cond, %cmp3
  %cmp5 = icmp eq double* %x, null
  %or.cond24 = or i1 %or.cond23, %cmp5
  br i1 %or.cond24, label %if.then, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %cmp625 = icmp sgt i32 %size, 0
  br i1 %cmp625, label %for.body, label %for.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([49 x i8]* @.str6, i64 0, i64 0), i32 %size, double* %y, i32* %index, double* %x) #5
  tail call void @exit(i32 -1) #6
  unreachable

for.body:                                         ; preds = %for.cond.preheader, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %for.cond.preheader ]
  %sum.026 = phi double [ %add, %for.body ], [ 0.000000e+00, %for.cond.preheader ]
  %arrayidx = getelementptr inbounds i32* %index, i64 %indvars.iv
  %1 = load i32* %arrayidx, align 4, !tbaa !4
  %idxprom7 = sext i32 %1 to i64
  %arrayidx8 = getelementptr inbounds double* %y, i64 %idxprom7
  %2 = load double* %arrayidx8, align 8, !tbaa !3
  %arrayidx10 = getelementptr inbounds double* %x, i64 %indvars.iv
  %3 = load double* %arrayidx10, align 8, !tbaa !3
  %mul = fmul double %2, %3
  %add = fadd double %sum.026, %mul
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %size
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %for.cond.preheader
  %sum.0.lcssa = phi double [ 0.000000e+00, %for.cond.preheader ], [ %add, %for.body ]
  ret double %sum.0.lcssa
}

; Function Attrs: nounwind optsize uwtable
define void @DVfill(i32 %size, double* %y, double %dval) #0 {
entry:
  %cmp = icmp sgt i32 %size, 0
  br i1 %cmp, label %if.then, label %if.end4

if.then:                                          ; preds = %entry
  %cmp1 = icmp eq double* %y, null
  br i1 %cmp1, label %if.then2, label %for.body

if.then2:                                         ; preds = %if.then
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([69 x i8]* @.str7, i64 0, i64 0), i32 %size, double* null, double %dval) #5
  tail call void @exit(i32 -1) #6
  unreachable

for.body:                                         ; preds = %if.then, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %if.then ]
  %arrayidx = getelementptr inbounds double* %y, i64 %indvars.iv
  store double %dval, double* %arrayidx, align 8, !tbaa !3
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %size
  br i1 %exitcond, label %if.end4, label %for.body

if.end4:                                          ; preds = %for.body, %entry
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @DVfprintf(%struct._IO_FILE* %fp, i32 %size, double* %y) #0 {
entry:
  %cmp = icmp ne %struct._IO_FILE* %fp, null
  %cmp1 = icmp sgt i32 %size, 0
  %or.cond = and i1 %cmp, %cmp1
  br i1 %or.cond, label %if.then, label %if.end10

if.then:                                          ; preds = %entry
  %cmp2 = icmp eq double* %y, null
  br i1 %cmp2, label %if.then3, label %for.body

if.then3:                                         ; preds = %if.then
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([71 x i8]* @.str8, i64 0, i64 0), %struct._IO_FILE* %fp, i32 %size, double* null) #5
  tail call void @exit(i32 -1) #6
  unreachable

for.body:                                         ; preds = %if.then, %if.end
  %indvars.iv = phi i64 [ %indvars.iv.next, %if.end ], [ 0, %if.then ]
  %1 = trunc i64 %indvars.iv to i32
  %rem = srem i32 %1, 6
  %cmp5 = icmp eq i32 %rem, 0
  br i1 %cmp5, label %if.then6, label %if.end

if.then6:                                         ; preds = %for.body
  %2 = tail call i64 @fwrite(i8* getelementptr inbounds ([3 x i8]* @.str9, i64 0, i64 0), i64 2, i64 1, %struct._IO_FILE* %fp)
  br label %if.end

if.end:                                           ; preds = %if.then6, %for.body
  %arrayidx = getelementptr inbounds double* %y, i64 %indvars.iv
  %3 = load double* %arrayidx, align 8, !tbaa !3
  %call8 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([7 x i8]* @.str10, i64 0, i64 0), double %3) #5
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %size
  br i1 %exitcond, label %if.end10, label %for.body

if.end10:                                         ; preds = %if.end, %entry
  ret void
}

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) #1

; Function Attrs: nounwind optsize uwtable
define i32 @DVfscanf(%struct._IO_FILE* %fp, i32 %size, double* %y) #0 {
entry:
  %cmp = icmp ne %struct._IO_FILE* %fp, null
  %cmp1 = icmp sgt i32 %size, 0
  %or.cond = and i1 %cmp, %cmp1
  br i1 %or.cond, label %if.then, label %if.end9

if.then:                                          ; preds = %entry
  %cmp2 = icmp eq double* %y, null
  br i1 %cmp2, label %if.then3, label %for.body

if.then3:                                         ; preds = %if.then
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([70 x i8]* @.str11, i64 0, i64 0), %struct._IO_FILE* %fp, i32 %size, double* null) #5
  tail call void @exit(i32 -1) #6
  unreachable

for.cond:                                         ; preds = %for.body
  %1 = trunc i64 %indvars.iv.next to i32
  %cmp4 = icmp slt i32 %1, %size
  br i1 %cmp4, label %for.body, label %if.end9

for.body:                                         ; preds = %if.then, %for.cond
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.cond ], [ 0, %if.then ]
  %i.020 = phi i32 [ %inc, %for.cond ], [ 0, %if.then ]
  %add.ptr = getelementptr inbounds double* %y, i64 %indvars.iv
  %call5 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @__isoc99_fscanf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([5 x i8]* @.str12, i64 0, i64 0), double* %add.ptr) #5
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
define void @DVgather(i32 %size, double* %y, double* %x, i32* %index) #0 {
entry:
  %cmp = icmp sgt i32 %size, 0
  br i1 %cmp, label %if.then, label %if.end11

if.then:                                          ; preds = %entry
  %cmp1 = icmp eq double* %y, null
  %cmp2 = icmp eq double* %x, null
  %or.cond = or i1 %cmp1, %cmp2
  %cmp4 = icmp eq i32* %index, null
  %or.cond23 = or i1 %or.cond, %cmp4
  br i1 %or.cond23, label %if.then5, label %for.body

if.then5:                                         ; preds = %if.then
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([81 x i8]* @.str13, i64 0, i64 0), i32 %size, double* %y, double* %x, i32* %index) #5
  tail call void @exit(i32 -1) #6
  unreachable

for.body:                                         ; preds = %if.then, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %if.then ]
  %arrayidx = getelementptr inbounds i32* %index, i64 %indvars.iv
  %1 = load i32* %arrayidx, align 4, !tbaa !4
  %idxprom7 = sext i32 %1 to i64
  %arrayidx8 = getelementptr inbounds double* %x, i64 %idxprom7
  %2 = load double* %arrayidx8, align 8, !tbaa !3
  %arrayidx10 = getelementptr inbounds double* %y, i64 %indvars.iv
  store double %2, double* %arrayidx10, align 8, !tbaa !3
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %size
  br i1 %exitcond, label %if.end11, label %for.body

if.end11:                                         ; preds = %for.body, %entry
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @DVgatherAddZero(i32 %size, double* %y, double* %x, i32* %index) #0 {
entry:
  %cmp = icmp sgt i32 %size, 0
  br i1 %cmp, label %if.then, label %if.end13

if.then:                                          ; preds = %entry
  %cmp1 = icmp eq double* %y, null
  %cmp2 = icmp eq double* %x, null
  %or.cond = or i1 %cmp1, %cmp2
  %cmp4 = icmp eq i32* %index, null
  %or.cond27 = or i1 %or.cond, %cmp4
  br i1 %or.cond27, label %if.then5, label %for.body

if.then5:                                         ; preds = %if.then
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([88 x i8]* @.str14, i64 0, i64 0), i32 %size, double* %y, double* %x, i32* %index) #5
  tail call void @exit(i32 -1) #6
  unreachable

for.body:                                         ; preds = %if.then, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %if.then ]
  %arrayidx = getelementptr inbounds i32* %index, i64 %indvars.iv
  %1 = load i32* %arrayidx, align 4, !tbaa !4
  %idxprom7 = sext i32 %1 to i64
  %arrayidx8 = getelementptr inbounds double* %x, i64 %idxprom7
  %2 = load double* %arrayidx8, align 8, !tbaa !3
  %arrayidx10 = getelementptr inbounds double* %y, i64 %indvars.iv
  %3 = load double* %arrayidx10, align 8, !tbaa !3
  %add = fadd double %2, %3
  store double %add, double* %arrayidx10, align 8, !tbaa !3
  store double 0.000000e+00, double* %arrayidx8, align 8, !tbaa !3
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %size
  br i1 %exitcond, label %if.end13, label %for.body

if.end13:                                         ; preds = %for.body, %entry
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @DVgatherZero(i32 %size, double* %y, double* %x, i32* %index) #0 {
entry:
  %cmp = icmp sgt i32 %size, 0
  br i1 %cmp, label %if.then, label %if.end13

if.then:                                          ; preds = %entry
  %cmp1 = icmp eq double* %y, null
  %cmp2 = icmp eq double* %x, null
  %or.cond = or i1 %cmp1, %cmp2
  %cmp4 = icmp eq i32* %index, null
  %or.cond27 = or i1 %or.cond, %cmp4
  br i1 %or.cond27, label %if.then5, label %for.body

if.then5:                                         ; preds = %if.then
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([85 x i8]* @.str15, i64 0, i64 0), i32 %size, double* %y, double* %x, i32* %index) #5
  tail call void @exit(i32 -1) #6
  unreachable

for.body:                                         ; preds = %if.then, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %if.then ]
  %arrayidx = getelementptr inbounds i32* %index, i64 %indvars.iv
  %1 = load i32* %arrayidx, align 4, !tbaa !4
  %idxprom7 = sext i32 %1 to i64
  %arrayidx8 = getelementptr inbounds double* %x, i64 %idxprom7
  %2 = load double* %arrayidx8, align 8, !tbaa !3
  %arrayidx10 = getelementptr inbounds double* %y, i64 %indvars.iv
  store double %2, double* %arrayidx10, align 8, !tbaa !3
  store double 0.000000e+00, double* %arrayidx8, align 8, !tbaa !3
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %size
  br i1 %exitcond, label %if.end13, label %for.body

if.end13:                                         ; preds = %for.body, %entry
  ret void
}

; Function Attrs: nounwind optsize uwtable
define noalias double* @DVinit2(i32 %size) #0 {
entry:
  %cmp = icmp sgt i32 %size, 0
  br i1 %cmp, label %if.then2, label %if.end19

if.then2:                                         ; preds = %entry
  %conv = sext i32 %size to i64
  %mul = shl nsw i64 %conv, 3
  %call = tail call noalias i8* @malloc(i64 %mul) #5
  %0 = bitcast i8* %call to double*
  %cmp3 = icmp eq i8* %call, null
  br i1 %cmp3, label %if.then5, label %if.end19

if.then5:                                         ; preds = %if.then2
  %1 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call8 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([49 x i8]* @.str16, i64 0, i64 0), i64 %mul, i32 517, i8* getelementptr inbounds ([83 x i8]* @.str17, i64 0, i64 0)) #5
  tail call void @exit(i32 -1) #6
  unreachable

if.end19:                                         ; preds = %if.then2, %entry
  %y.0 = phi double* [ %0, %if.then2 ], [ null, %entry ]
  ret double* %y.0
}

; Function Attrs: nounwind optsize
declare noalias i8* @malloc(i64) #1

; Function Attrs: nounwind optsize uwtable
define void @DVinvPerm(i32 %size, double* %y, i32* %index) #0 {
entry:
  %cmp = icmp sgt i32 %size, 0
  br i1 %cmp, label %if.then, label %if.end10

if.then:                                          ; preds = %entry
  %cmp1 = icmp eq double* %y, null
  %cmp2 = icmp eq i32* %index, null
  %or.cond = or i1 %cmp1, %cmp2
  br i1 %or.cond, label %if.then3, label %for.body.lr.ph

if.then3:                                         ; preds = %if.then
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([72 x i8]* @.str19, i64 0, i64 0), i32 %size, double* %y, i32* %index) #5
  tail call void @exit(i32 -1) #6
  unreachable

for.body.lr.ph:                                   ; preds = %if.then
  %call4 = tail call double* @DVinit2(i32 %size) #7
  tail call void @DVcopy(i32 %size, double* %call4, double* %y) #7
  br label %for.body

for.body:                                         ; preds = %for.body, %for.body.lr.ph
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.body ]
  %arrayidx = getelementptr inbounds double* %call4, i64 %indvars.iv
  %1 = load double* %arrayidx, align 8, !tbaa !3
  %arrayidx7 = getelementptr inbounds i32* %index, i64 %indvars.iv
  %2 = load i32* %arrayidx7, align 4, !tbaa !4
  %idxprom8 = sext i32 %2 to i64
  %arrayidx9 = getelementptr inbounds double* %y, i64 %idxprom8
  store double %1, double* %arrayidx9, align 8, !tbaa !3
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %size
  br i1 %exitcond, label %if.then2.i, label %for.body

if.then2.i:                                       ; preds = %for.body
  %3 = bitcast double* %call4 to i8*
  tail call void @free(i8* %3) #5
  br label %if.end10

if.end10:                                         ; preds = %if.then2.i, %entry
  ret void
}

; Function Attrs: nounwind optsize uwtable
define double @DVmax(i32 %size, double* %y, i32* %ploc) #0 {
entry:
  %cmp = icmp sgt i32 %size, 0
  br i1 %cmp, label %if.then, label %if.end10

if.then:                                          ; preds = %entry
  %cmp1 = icmp eq double* %y, null
  br i1 %cmp1, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.then
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([68 x i8]* @.str20, i64 0, i64 0), i32 %size, double* null, i32* %ploc) #5
  tail call void @exit(i32 -1) #6
  unreachable

if.else:                                          ; preds = %if.then
  %1 = load double* %y, align 8, !tbaa !3
  %cmp325 = icmp sgt i32 %size, 1
  br i1 %cmp325, label %for.body, label %for.end

for.body:                                         ; preds = %if.else, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 1, %if.else ]
  %loc.027 = phi i32 [ %loc.1, %for.body ], [ 0, %if.else ]
  %maxval.026 = phi double [ %maxval.1, %for.body ], [ %1, %if.else ]
  %arrayidx4 = getelementptr inbounds double* %y, i64 %indvars.iv
  %2 = load double* %arrayidx4, align 8, !tbaa !3
  %cmp5 = fcmp olt double %maxval.026, %2
  %maxval.1 = select i1 %cmp5, double %2, double %maxval.026
  %3 = trunc i64 %indvars.iv to i32
  %loc.1 = select i1 %cmp5, i32 %3, i32 %loc.027
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %size
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %if.else
  %loc.0.lcssa = phi i32 [ 0, %if.else ], [ %loc.1, %for.body ]
  %maxval.0.lcssa = phi double [ %1, %if.else ], [ %maxval.1, %for.body ]
  store i32 %loc.0.lcssa, i32* %ploc, align 4, !tbaa !4
  br label %if.end10

if.end10:                                         ; preds = %for.end, %entry
  %maxval.2 = phi double [ %maxval.0.lcssa, %for.end ], [ 0.000000e+00, %entry ]
  %loc.2 = phi i32 [ %loc.0.lcssa, %for.end ], [ -1, %entry ]
  store i32 %loc.2, i32* %ploc, align 4, !tbaa !4
  ret double %maxval.2
}

; Function Attrs: nounwind optsize uwtable
define double @DVmaxabs(i32 %size, double* %y, i32* %ploc) #0 {
entry:
  %cmp = icmp sgt i32 %size, 0
  br i1 %cmp, label %if.then, label %if.end21

if.then:                                          ; preds = %entry
  %cmp1 = icmp eq double* %y, null
  br i1 %cmp1, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.then
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([71 x i8]* @.str21, i64 0, i64 0), i32 %size, double* null, i32* %ploc) #5
  tail call void @exit(i32 -1) #6
  unreachable

if.else:                                          ; preds = %if.then
  %1 = load double* %y, align 8, !tbaa !3
  %cmp3 = fcmp ult double %1, 0.000000e+00
  br i1 %cmp3, label %cond.false, label %for.cond.preheader

cond.false:                                       ; preds = %if.else
  %sub = fsub double -0.000000e+00, %1
  br label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.else, %cond.false
  %maxval.0.ph = phi double [ %sub, %cond.false ], [ %1, %if.else ]
  %cmp638 = icmp sgt i32 %size, 1
  br i1 %cmp638, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond.preheader, %cond.end16
  %indvars.iv = phi i64 [ %indvars.iv.next, %cond.end16 ], [ 1, %for.cond.preheader ]
  %maxval.041 = phi double [ %maxval.1, %cond.end16 ], [ %maxval.0.ph, %for.cond.preheader ]
  %loc.039 = phi i32 [ %loc.1, %cond.end16 ], [ 0, %for.cond.preheader ]
  %arrayidx7 = getelementptr inbounds double* %y, i64 %indvars.iv
  %2 = load double* %arrayidx7, align 8, !tbaa !3
  %cmp8 = fcmp ult double %2, 0.000000e+00
  br i1 %cmp8, label %cond.false12, label %cond.end16

cond.false12:                                     ; preds = %for.body
  %sub15 = fsub double -0.000000e+00, %2
  br label %cond.end16

cond.end16:                                       ; preds = %for.body, %cond.false12
  %cond17 = phi double [ %sub15, %cond.false12 ], [ %2, %for.body ]
  %cmp18 = fcmp olt double %maxval.041, %cond17
  %3 = trunc i64 %indvars.iv to i32
  %loc.1 = select i1 %cmp18, i32 %3, i32 %loc.039
  %maxval.1 = select i1 %cmp18, double %cond17, double %maxval.041
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %size
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          ; preds = %cond.end16, %for.cond.preheader
  %maxval.0.lcssa = phi double [ %maxval.0.ph, %for.cond.preheader ], [ %maxval.1, %cond.end16 ]
  %loc.0.lcssa = phi i32 [ 0, %for.cond.preheader ], [ %loc.1, %cond.end16 ]
  store i32 %loc.0.lcssa, i32* %ploc, align 4, !tbaa !4
  br label %if.end21

if.end21:                                         ; preds = %for.end, %entry
  %loc.2 = phi i32 [ %loc.0.lcssa, %for.end ], [ -1, %entry ]
  %maxval.2 = phi double [ %maxval.0.lcssa, %for.end ], [ 0.000000e+00, %entry ]
  store i32 %loc.2, i32* %ploc, align 4, !tbaa !4
  ret double %maxval.2
}

; Function Attrs: nounwind optsize uwtable
define double @DVmin(i32 %size, double* %y, i32* %ploc) #0 {
entry:
  %cmp = icmp sgt i32 %size, 0
  br i1 %cmp, label %if.then, label %if.end10

if.then:                                          ; preds = %entry
  %cmp1 = icmp eq double* %y, null
  br i1 %cmp1, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.then
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([68 x i8]* @.str22, i64 0, i64 0), i32 %size, double* null, i32* %ploc) #5
  tail call void @exit(i32 -1) #6
  unreachable

if.else:                                          ; preds = %if.then
  %1 = load double* %y, align 8, !tbaa !3
  %cmp325 = icmp sgt i32 %size, 1
  br i1 %cmp325, label %for.body, label %for.end

for.body:                                         ; preds = %if.else, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 1, %if.else ]
  %loc.027 = phi i32 [ %loc.1, %for.body ], [ 0, %if.else ]
  %minval.026 = phi double [ %minval.1, %for.body ], [ %1, %if.else ]
  %arrayidx4 = getelementptr inbounds double* %y, i64 %indvars.iv
  %2 = load double* %arrayidx4, align 8, !tbaa !3
  %cmp5 = fcmp ogt double %minval.026, %2
  %minval.1 = select i1 %cmp5, double %2, double %minval.026
  %3 = trunc i64 %indvars.iv to i32
  %loc.1 = select i1 %cmp5, i32 %3, i32 %loc.027
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %size
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %if.else
  %loc.0.lcssa = phi i32 [ 0, %if.else ], [ %loc.1, %for.body ]
  %minval.0.lcssa = phi double [ %1, %if.else ], [ %minval.1, %for.body ]
  store i32 %loc.0.lcssa, i32* %ploc, align 4, !tbaa !4
  br label %if.end10

if.end10:                                         ; preds = %for.end, %entry
  %minval.2 = phi double [ %minval.0.lcssa, %for.end ], [ 0.000000e+00, %entry ]
  %loc.2 = phi i32 [ %loc.0.lcssa, %for.end ], [ -1, %entry ]
  store i32 %loc.2, i32* %ploc, align 4, !tbaa !4
  ret double %minval.2
}

; Function Attrs: nounwind optsize uwtable
define double @DVminabs(i32 %size, double* %y, i32* %ploc) #0 {
entry:
  %cmp = icmp sgt i32 %size, 0
  br i1 %cmp, label %if.then, label %if.end21

if.then:                                          ; preds = %entry
  %cmp1 = icmp eq double* %y, null
  br i1 %cmp1, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.then
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([71 x i8]* @.str23, i64 0, i64 0), i32 %size, double* null, i32* %ploc) #5
  tail call void @exit(i32 -1) #6
  unreachable

if.else:                                          ; preds = %if.then
  %1 = load double* %y, align 8, !tbaa !3
  %cmp3 = fcmp ult double %1, 0.000000e+00
  br i1 %cmp3, label %cond.false, label %for.cond.preheader

cond.false:                                       ; preds = %if.else
  %sub = fsub double -0.000000e+00, %1
  br label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.else, %cond.false
  %minval.0.ph = phi double [ %sub, %cond.false ], [ %1, %if.else ]
  %cmp638 = icmp sgt i32 %size, 1
  br i1 %cmp638, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond.preheader, %cond.end16
  %indvars.iv = phi i64 [ %indvars.iv.next, %cond.end16 ], [ 1, %for.cond.preheader ]
  %minval.041 = phi double [ %minval.1, %cond.end16 ], [ %minval.0.ph, %for.cond.preheader ]
  %loc.039 = phi i32 [ %loc.1, %cond.end16 ], [ 0, %for.cond.preheader ]
  %arrayidx7 = getelementptr inbounds double* %y, i64 %indvars.iv
  %2 = load double* %arrayidx7, align 8, !tbaa !3
  %cmp8 = fcmp ult double %2, 0.000000e+00
  br i1 %cmp8, label %cond.false12, label %cond.end16

cond.false12:                                     ; preds = %for.body
  %sub15 = fsub double -0.000000e+00, %2
  br label %cond.end16

cond.end16:                                       ; preds = %for.body, %cond.false12
  %cond17 = phi double [ %sub15, %cond.false12 ], [ %2, %for.body ]
  %cmp18 = fcmp ogt double %minval.041, %cond17
  %3 = trunc i64 %indvars.iv to i32
  %loc.1 = select i1 %cmp18, i32 %3, i32 %loc.039
  %minval.1 = select i1 %cmp18, double %cond17, double %minval.041
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %size
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          ; preds = %cond.end16, %for.cond.preheader
  %minval.0.lcssa = phi double [ %minval.0.ph, %for.cond.preheader ], [ %minval.1, %cond.end16 ]
  %loc.0.lcssa = phi i32 [ 0, %for.cond.preheader ], [ %loc.1, %cond.end16 ]
  store i32 %loc.0.lcssa, i32* %ploc, align 4, !tbaa !4
  br label %if.end21

if.end21:                                         ; preds = %for.end, %entry
  %loc.2 = phi i32 [ %loc.0.lcssa, %for.end ], [ -1, %entry ]
  %minval.2 = phi double [ %minval.0.lcssa, %for.end ], [ 0.000000e+00, %entry ]
  store i32 %loc.2, i32* %ploc, align 4, !tbaa !4
  ret double %minval.2
}

; Function Attrs: nounwind optsize uwtable
define void @DVperm(i32 %size, double* %y, i32* %index) #0 {
entry:
  %cmp = icmp sgt i32 %size, 0
  br i1 %cmp, label %if.then, label %if.end10

if.then:                                          ; preds = %entry
  %cmp1 = icmp eq double* %y, null
  %cmp2 = icmp eq i32* %index, null
  %or.cond = or i1 %cmp1, %cmp2
  br i1 %or.cond, label %if.then3, label %for.body.lr.ph

if.then3:                                         ; preds = %if.then
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([70 x i8]* @.str24, i64 0, i64 0), i32 %size, double* %y, i32* %index) #5
  tail call void @exit(i32 -1) #6
  unreachable

for.body.lr.ph:                                   ; preds = %if.then
  %call4 = tail call double* @DVinit2(i32 %size) #7
  tail call void @DVcopy(i32 %size, double* %call4, double* %y) #7
  br label %for.body

for.body:                                         ; preds = %for.body, %for.body.lr.ph
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.body ]
  %arrayidx = getelementptr inbounds i32* %index, i64 %indvars.iv
  %1 = load i32* %arrayidx, align 4, !tbaa !4
  %idxprom6 = sext i32 %1 to i64
  %arrayidx7 = getelementptr inbounds double* %call4, i64 %idxprom6
  %2 = load double* %arrayidx7, align 8, !tbaa !3
  %arrayidx9 = getelementptr inbounds double* %y, i64 %indvars.iv
  store double %2, double* %arrayidx9, align 8, !tbaa !3
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %size
  br i1 %exitcond, label %if.then2.i, label %for.body

if.then2.i:                                       ; preds = %for.body
  %3 = bitcast double* %call4 to i8*
  tail call void @free(i8* %3) #5
  br label %if.end10

if.end10:                                         ; preds = %if.then2.i, %entry
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @DVramp(i32 %size, double* %y, double %start, double %inc) #0 {
entry:
  %cmp = icmp sgt i32 %size, 0
  br i1 %cmp, label %if.then, label %if.end5

if.then:                                          ; preds = %entry
  %cmp1 = icmp eq double* %y, null
  br i1 %cmp1, label %if.then2, label %for.body

if.then2:                                         ; preds = %if.then
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([81 x i8]* @.str25, i64 0, i64 0), i32 %size, double* null, double %start, double %inc) #5
  tail call void @exit(i32 -1) #6
  unreachable

for.body:                                         ; preds = %if.then, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %if.then ]
  %val.017 = phi double [ %add, %for.body ], [ %start, %if.then ]
  %arrayidx = getelementptr inbounds double* %y, i64 %indvars.iv
  store double %val.017, double* %arrayidx, align 8, !tbaa !3
  %indvars.iv.next = add i64 %indvars.iv, 1
  %add = fadd double %val.017, %inc
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %size
  br i1 %exitcond, label %if.end5, label %for.body

if.end5:                                          ; preds = %for.body, %entry
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @DVsub(i32 %size, double* %y, double* %x) #0 {
entry:
  %cmp = icmp sgt i32 %size, 0
  br i1 %cmp, label %if.then, label %if.end7

if.then:                                          ; preds = %entry
  %cmp1 = icmp eq double* %y, null
  %cmp2 = icmp eq double* %x, null
  %or.cond = or i1 %cmp1, %cmp2
  br i1 %or.cond, label %if.then3, label %for.body

if.then3:                                         ; preds = %if.then
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([65 x i8]* @.str26, i64 0, i64 0), i32 %size, double* %y, double* %x) #5
  tail call void @exit(i32 -1) #6
  unreachable

for.body:                                         ; preds = %if.then, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %if.then ]
  %arrayidx = getelementptr inbounds double* %x, i64 %indvars.iv
  %1 = load double* %arrayidx, align 8, !tbaa !3
  %arrayidx6 = getelementptr inbounds double* %y, i64 %indvars.iv
  %2 = load double* %arrayidx6, align 8, !tbaa !3
  %sub = fsub double %2, %1
  store double %sub, double* %arrayidx6, align 8, !tbaa !3
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %size
  br i1 %exitcond, label %if.end7, label %for.body

if.end7:                                          ; preds = %for.body, %entry
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @DVscale(i32 %size, double* %y, double %alpha) #0 {
entry:
  %cmp = icmp sgt i32 %size, 0
  %cmp1 = fcmp une double %alpha, 1.000000e+00
  %or.cond = and i1 %cmp, %cmp1
  br i1 %or.cond, label %if.then, label %if.end5

if.then:                                          ; preds = %entry
  %cmp2 = icmp eq double* %y, null
  br i1 %cmp2, label %if.then3, label %for.body

if.then3:                                         ; preds = %if.then
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([71 x i8]* @.str27, i64 0, i64 0), i32 %size, double* null, double %alpha) #5
  tail call void @exit(i32 -1) #6
  unreachable

for.body:                                         ; preds = %if.then, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %if.then ]
  %arrayidx = getelementptr inbounds double* %y, i64 %indvars.iv
  %1 = load double* %arrayidx, align 8, !tbaa !3
  %mul = fmul double %1, %alpha
  store double %mul, double* %arrayidx, align 8, !tbaa !3
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %size
  br i1 %exitcond, label %if.end5, label %for.body

if.end5:                                          ; preds = %for.body, %entry
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @DVscatter(i32 %size, double* %y, i32* %index, double* %x) #0 {
entry:
  %cmp = icmp sgt i32 %size, 0
  br i1 %cmp, label %if.then, label %if.end11

if.then:                                          ; preds = %entry
  %cmp1 = icmp eq double* %y, null
  %cmp2 = icmp eq double* %x, null
  %or.cond = or i1 %cmp1, %cmp2
  %cmp4 = icmp eq i32* %index, null
  %or.cond23 = or i1 %or.cond, %cmp4
  br i1 %or.cond23, label %if.then5, label %for.body

if.then5:                                         ; preds = %if.then
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([81 x i8]* @.str28, i64 0, i64 0), i32 %size, double* %y, i32* %index, double* %x) #5
  tail call void @exit(i32 -1) #6
  unreachable

for.body:                                         ; preds = %if.then, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %if.then ]
  %arrayidx = getelementptr inbounds double* %x, i64 %indvars.iv
  %1 = load double* %arrayidx, align 8, !tbaa !3
  %arrayidx8 = getelementptr inbounds i32* %index, i64 %indvars.iv
  %2 = load i32* %arrayidx8, align 4, !tbaa !4
  %idxprom9 = sext i32 %2 to i64
  %arrayidx10 = getelementptr inbounds double* %y, i64 %idxprom9
  store double %1, double* %arrayidx10, align 8, !tbaa !3
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %size
  br i1 %exitcond, label %if.end11, label %for.body

if.end11:                                         ; preds = %for.body, %entry
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @DVscatterAdd(i32 %size, double* %y, i32* %index, double* %x) #0 {
entry:
  %cmp = icmp sgt i32 %size, 0
  br i1 %cmp, label %if.then, label %if.end11

if.then:                                          ; preds = %entry
  %cmp1 = icmp eq double* %y, null
  %cmp2 = icmp eq double* %x, null
  %or.cond = or i1 %cmp1, %cmp2
  %cmp4 = icmp eq i32* %index, null
  %or.cond23 = or i1 %or.cond, %cmp4
  br i1 %or.cond23, label %if.then5, label %for.body

if.then5:                                         ; preds = %if.then
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([84 x i8]* @.str29, i64 0, i64 0), i32 %size, double* %y, i32* %index, double* %x) #5
  tail call void @exit(i32 -1) #6
  unreachable

for.body:                                         ; preds = %if.then, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %if.then ]
  %arrayidx = getelementptr inbounds double* %x, i64 %indvars.iv
  %1 = load double* %arrayidx, align 8, !tbaa !3
  %arrayidx8 = getelementptr inbounds i32* %index, i64 %indvars.iv
  %2 = load i32* %arrayidx8, align 4, !tbaa !4
  %idxprom9 = sext i32 %2 to i64
  %arrayidx10 = getelementptr inbounds double* %y, i64 %idxprom9
  %3 = load double* %arrayidx10, align 8, !tbaa !3
  %add = fadd double %1, %3
  store double %add, double* %arrayidx10, align 8, !tbaa !3
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %size
  br i1 %exitcond, label %if.end11, label %for.body

if.end11:                                         ; preds = %for.body, %entry
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @DVscatterAddZero(i32 %size, double* %y, i32* %index, double* %x) #0 {
entry:
  %cmp = icmp sgt i32 %size, 0
  br i1 %cmp, label %if.then, label %if.end13

if.then:                                          ; preds = %entry
  %cmp1 = icmp eq double* %y, null
  %cmp2 = icmp eq double* %x, null
  %or.cond = or i1 %cmp1, %cmp2
  %cmp4 = icmp eq i32* %index, null
  %or.cond27 = or i1 %or.cond, %cmp4
  br i1 %or.cond27, label %if.then5, label %for.body

if.then5:                                         ; preds = %if.then
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([88 x i8]* @.str30, i64 0, i64 0), i32 %size, double* %y, i32* %index, double* %x) #5
  tail call void @exit(i32 -1) #6
  unreachable

for.body:                                         ; preds = %if.then, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %if.then ]
  %arrayidx = getelementptr inbounds double* %x, i64 %indvars.iv
  %1 = load double* %arrayidx, align 8, !tbaa !3
  %arrayidx8 = getelementptr inbounds i32* %index, i64 %indvars.iv
  %2 = load i32* %arrayidx8, align 4, !tbaa !4
  %idxprom9 = sext i32 %2 to i64
  %arrayidx10 = getelementptr inbounds double* %y, i64 %idxprom9
  %3 = load double* %arrayidx10, align 8, !tbaa !3
  %add = fadd double %1, %3
  store double %add, double* %arrayidx10, align 8, !tbaa !3
  store double 0.000000e+00, double* %arrayidx, align 8, !tbaa !3
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %size
  br i1 %exitcond, label %if.end13, label %for.body

if.end13:                                         ; preds = %for.body, %entry
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @DVscatterZero(i32 %size, double* %y, i32* %index, double* %x) #0 {
entry:
  %cmp = icmp sgt i32 %size, 0
  br i1 %cmp, label %if.then, label %if.end13

if.then:                                          ; preds = %entry
  %cmp1 = icmp eq double* %y, null
  %cmp2 = icmp eq double* %x, null
  %or.cond = or i1 %cmp1, %cmp2
  %cmp4 = icmp eq i32* %index, null
  %or.cond27 = or i1 %or.cond, %cmp4
  br i1 %or.cond27, label %if.then5, label %for.body

if.then5:                                         ; preds = %if.then
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([85 x i8]* @.str31, i64 0, i64 0), i32 %size, double* %y, i32* %index, double* %x) #5
  tail call void @exit(i32 -1) #6
  unreachable

for.body:                                         ; preds = %if.then, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %if.then ]
  %arrayidx = getelementptr inbounds double* %x, i64 %indvars.iv
  %1 = load double* %arrayidx, align 8, !tbaa !3
  %arrayidx8 = getelementptr inbounds i32* %index, i64 %indvars.iv
  %2 = load i32* %arrayidx8, align 4, !tbaa !4
  %idxprom9 = sext i32 %2 to i64
  %arrayidx10 = getelementptr inbounds double* %y, i64 %idxprom9
  store double %1, double* %arrayidx10, align 8, !tbaa !3
  store double 0.000000e+00, double* %arrayidx, align 8, !tbaa !3
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %size
  br i1 %exitcond, label %if.end13, label %for.body

if.end13:                                         ; preds = %for.body, %entry
  ret void
}

; Function Attrs: nounwind optsize uwtable
define double @DVsumabs(i32 %size, double* %y) #0 {
entry:
  %cmp = icmp sgt i32 %size, 0
  br i1 %cmp, label %if.then, label %if.end9

if.then:                                          ; preds = %entry
  %cmp1 = icmp eq double* %y, null
  br i1 %cmp1, label %if.then2, label %for.body

if.then2:                                         ; preds = %if.then
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([60 x i8]* @.str33, i64 0, i64 0), i32 %size, double* null) #5
  tail call void @exit(i32 -1) #6
  unreachable

for.body:                                         ; preds = %if.then, %cond.end
  %indvars.iv = phi i64 [ %indvars.iv.next, %cond.end ], [ 0, %if.then ]
  %sum.020 = phi double [ %add, %cond.end ], [ 0.000000e+00, %if.then ]
  %arrayidx = getelementptr inbounds double* %y, i64 %indvars.iv
  %1 = load double* %arrayidx, align 8, !tbaa !3
  %cmp4 = fcmp ult double %1, 0.000000e+00
  br i1 %cmp4, label %cond.false, label %cond.end

cond.false:                                       ; preds = %for.body
  %sub = fsub double -0.000000e+00, %1
  br label %cond.end

cond.end:                                         ; preds = %for.body, %cond.false
  %cond = phi double [ %sub, %cond.false ], [ %1, %for.body ]
  %add = fadd double %sum.020, %cond
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %size
  br i1 %exitcond, label %if.end9, label %for.body

if.end9:                                          ; preds = %cond.end, %entry
  %sum.1 = phi double [ 0.000000e+00, %entry ], [ %add, %cond.end ]
  ret double %sum.1
}

; Function Attrs: nounwind optsize uwtable
define void @DVswap(i32 %size, double* %y, double* %x) #0 {
entry:
  %cmp = icmp sgt i32 %size, 0
  br i1 %cmp, label %if.then, label %if.end11

if.then:                                          ; preds = %entry
  %cmp1 = icmp eq double* %y, null
  %cmp2 = icmp eq double* %x, null
  %or.cond = or i1 %cmp1, %cmp2
  br i1 %or.cond, label %if.then3, label %for.body

if.then3:                                         ; preds = %if.then
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([65 x i8]* @.str34, i64 0, i64 0), i32 %size, double* %y, double* %x) #5
  tail call void @exit(i32 -1) #6
  unreachable

for.body:                                         ; preds = %if.then, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %if.then ]
  %arrayidx = getelementptr inbounds double* %x, i64 %indvars.iv
  %1 = load double* %arrayidx, align 8, !tbaa !3
  %arrayidx6 = getelementptr inbounds double* %y, i64 %indvars.iv
  %2 = load double* %arrayidx6, align 8, !tbaa !3
  store double %2, double* %arrayidx, align 8, !tbaa !3
  store double %1, double* %arrayidx6, align 8, !tbaa !3
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %size
  br i1 %exitcond, label %if.end11, label %for.body

if.end11:                                         ; preds = %for.body, %entry
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @DVzero(i32 %size, double* %y) #0 {
entry:
  %y13 = bitcast double* %y to i8*
  %cmp = icmp sgt i32 %size, 0
  br i1 %cmp, label %if.then, label %if.end4

if.then:                                          ; preds = %entry
  %cmp1 = icmp eq double* %y, null
  br i1 %cmp1, label %if.then2, label %if.end4.loopexit

if.then2:                                         ; preds = %if.then
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([58 x i8]* @.str35, i64 0, i64 0), i32 %size, double* null) #5
  tail call void @exit(i32 -1) #6
  unreachable

if.end4.loopexit:                                 ; preds = %if.then
  %1 = add i32 %size, -1
  %2 = zext i32 %1 to i64
  %3 = shl nuw nsw i64 %2, 3
  %4 = add i64 %3, 8
  call void @llvm.memset.p0i8.i64(i8* %y13, i8 0, i64 %4, i32 8, i1 false)
  br label %if.end4

if.end4:                                          ; preds = %if.end4.loopexit, %entry
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @DVshuffle(i32 %size, double* %y, i32 %seed) #0 {
entry:
  %drand = alloca %struct._Drand, align 8
  %cmp = icmp sgt i32 %size, 0
  %cmp1 = icmp slt i32 %seed, 1
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %if.then, label %if.end13

if.then:                                          ; preds = %entry
  %cmp2 = icmp eq double* %y, null
  br i1 %cmp2, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.then
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([72 x i8]* @.str36, i64 0, i64 0), i32 %size, double* null, i32 %seed) #5
  call void @exit(i32 -1) #6
  unreachable

if.else:                                          ; preds = %if.then
  %1 = bitcast %struct._Drand* %drand to i8*
  call void @llvm.lifetime.start(i64 72, i8* %1) #4
  call void @Drand_setDefaultFields(%struct._Drand* %drand) #5
  call void @Drand_setSeed(%struct._Drand* %drand, i32 %seed) #5
  br i1 %cmp, label %for.body.lr.ph, label %if.end13

for.body.lr.ph:                                   ; preds = %if.else
  %conv = sitofp i32 %size to double
  br label %for.body

for.body:                                         ; preds = %for.body, %for.body.lr.ph
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.body ]
  %call5 = call double @Drand_value(%struct._Drand* %drand) #5
  %mul = fmul double %conv, %call5
  %conv6 = fptosi double %mul to i32
  %arrayidx = getelementptr inbounds double* %y, i64 %indvars.iv
  %2 = load double* %arrayidx, align 8, !tbaa !3
  %idxprom7 = sext i32 %conv6 to i64
  %arrayidx8 = getelementptr inbounds double* %y, i64 %idxprom7
  %3 = load double* %arrayidx8, align 8, !tbaa !3
  store double %3, double* %arrayidx, align 8, !tbaa !3
  store double %2, double* %arrayidx8, align 8, !tbaa !3
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %size
  br i1 %exitcond, label %if.end13, label %for.body

if.end13:                                         ; preds = %if.else, %for.body, %entry
  ret void
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #4

; Function Attrs: optsize
declare void @Drand_setDefaultFields(%struct._Drand*) #3

; Function Attrs: optsize
declare void @Drand_setSeed(%struct._Drand*, i32) #3

; Function Attrs: optsize
declare double @Drand_value(%struct._Drand*) #3

; Function Attrs: nounwind optsize uwtable
define void @DVscale2(i32 %size, double* %x, double* %y, double %a, double %b, double %c, double %d) #0 {
entry:
  %cmp = icmp slt i32 %size, 0
  %cmp1 = icmp eq double* %x, null
  %or.cond = or i1 %cmp, %cmp1
  %cmp3 = icmp eq double* %y, null
  %or.cond30 = or i1 %or.cond, %cmp3
  br i1 %or.cond30, label %if.then, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %cmp431 = icmp sgt i32 %size, 0
  br i1 %cmp431, label %for.body, label %for.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([52 x i8]* @.str37, i64 0, i64 0), i32 %size, double* %x, double* %y) #5
  tail call void @exit(i32 -1) #6
  unreachable

for.body:                                         ; preds = %for.cond.preheader, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %for.cond.preheader ]
  %arrayidx = getelementptr inbounds double* %x, i64 %indvars.iv
  %1 = load double* %arrayidx, align 8, !tbaa !3
  %arrayidx6 = getelementptr inbounds double* %y, i64 %indvars.iv
  %2 = load double* %arrayidx6, align 8, !tbaa !3
  %mul = fmul double %1, %a
  %mul7 = fmul double %2, %b
  %add = fadd double %mul, %mul7
  store double %add, double* %arrayidx, align 8, !tbaa !3
  %mul10 = fmul double %1, %c
  %mul11 = fmul double %2, %d
  %add12 = fadd double %mul10, %mul11
  store double %add12, double* %arrayidx6, align 8, !tbaa !3
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %size
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %for.cond.preheader
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @DVaxpy2(i32 %size, double* nocapture %z, double %a, double* %x, double %b, double* %y) #0 {
entry:
  %cmp = icmp slt i32 %size, 0
  %cmp1 = icmp eq double* %y, null
  %or.cond = or i1 %cmp, %cmp1
  %cmp3 = icmp eq double* %x, null
  %or.cond18 = or i1 %or.cond, %cmp3
  br i1 %or.cond18, label %if.then, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %cmp419 = icmp sgt i32 %size, 0
  br i1 %cmp419, label %for.body, label %for.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %1 = tail call i64 @fwrite(i8* getelementptr inbounds ([39 x i8]* @.str38, i64 0, i64 0), i64 38, i64 1, %struct._IO_FILE* %0)
  tail call void @exit(i32 -1) #6
  unreachable

for.body:                                         ; preds = %for.cond.preheader, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %for.cond.preheader ]
  %arrayidx = getelementptr inbounds double* %x, i64 %indvars.iv
  %2 = load double* %arrayidx, align 8, !tbaa !3
  %arrayidx6 = getelementptr inbounds double* %y, i64 %indvars.iv
  %3 = load double* %arrayidx6, align 8, !tbaa !3
  %mul = fmul double %2, %a
  %mul7 = fmul double %3, %b
  %add = fadd double %mul, %mul7
  %arrayidx9 = getelementptr inbounds double* %z, i64 %indvars.iv
  %4 = load double* %arrayidx9, align 8, !tbaa !3
  %add10 = fadd double %4, %add
  store double %add10, double* %arrayidx9, align 8, !tbaa !3
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %size
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %for.cond.preheader
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @DVdot33(i32 %n, double* %row0, double* %row1, double* %row2, double* %col0, double* %col1, double* %col2, double* %sums) #0 {
entry:
  %cmp = icmp eq double* %sums, null
  %cmp1 = icmp eq double* %row0, null
  %or.cond = or i1 %cmp, %cmp1
  %cmp3 = icmp eq double* %row1, null
  %or.cond99 = or i1 %or.cond, %cmp3
  %cmp5 = icmp eq double* %row2, null
  %or.cond100 = or i1 %or.cond99, %cmp5
  %cmp7 = icmp eq double* %col0, null
  %or.cond101 = or i1 %or.cond100, %cmp7
  %cmp9 = icmp eq double* %col1, null
  %or.cond102 = or i1 %or.cond101, %cmp9
  %cmp11 = icmp eq double* %col2, null
  %or.cond103 = or i1 %or.cond102, %cmp11
  br i1 %or.cond103, label %if.then, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %cmp12104 = icmp sgt i32 %n, 0
  br i1 %cmp12104, label %for.body, label %for.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([62 x i8]* @.str39, i64 0, i64 0), i32 %n, double* %row0, double* %row1, double* %row2, double* %col0, double* %col1, double* %col2, double* %sums) #5
  tail call void @exit(i32 -1) #6
  unreachable

for.body:                                         ; preds = %for.cond.preheader, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %for.cond.preheader ]
  %s00.0114 = phi double [ %add, %for.body ], [ 0.000000e+00, %for.cond.preheader ]
  %s01.0113 = phi double [ %add24, %for.body ], [ 0.000000e+00, %for.cond.preheader ]
  %s02.0112 = phi double [ %add26, %for.body ], [ 0.000000e+00, %for.cond.preheader ]
  %s10.0111 = phi double [ %add28, %for.body ], [ 0.000000e+00, %for.cond.preheader ]
  %s11.0110 = phi double [ %add30, %for.body ], [ 0.000000e+00, %for.cond.preheader ]
  %s12.0109 = phi double [ %add32, %for.body ], [ 0.000000e+00, %for.cond.preheader ]
  %s22.0107 = phi double [ %add38, %for.body ], [ 0.000000e+00, %for.cond.preheader ]
  %s21.0106 = phi double [ %add36, %for.body ], [ 0.000000e+00, %for.cond.preheader ]
  %s20.0105 = phi double [ %add34, %for.body ], [ 0.000000e+00, %for.cond.preheader ]
  %arrayidx = getelementptr inbounds double* %row0, i64 %indvars.iv
  %1 = load double* %arrayidx, align 8, !tbaa !3
  %arrayidx14 = getelementptr inbounds double* %row1, i64 %indvars.iv
  %2 = load double* %arrayidx14, align 8, !tbaa !3
  %arrayidx16 = getelementptr inbounds double* %row2, i64 %indvars.iv
  %3 = load double* %arrayidx16, align 8, !tbaa !3
  %arrayidx18 = getelementptr inbounds double* %col0, i64 %indvars.iv
  %4 = load double* %arrayidx18, align 8, !tbaa !3
  %arrayidx20 = getelementptr inbounds double* %col1, i64 %indvars.iv
  %5 = load double* %arrayidx20, align 8, !tbaa !3
  %arrayidx22 = getelementptr inbounds double* %col2, i64 %indvars.iv
  %6 = load double* %arrayidx22, align 8, !tbaa !3
  %mul = fmul double %1, %4
  %add = fadd double %s00.0114, %mul
  %mul23 = fmul double %1, %5
  %add24 = fadd double %s01.0113, %mul23
  %mul25 = fmul double %1, %6
  %add26 = fadd double %s02.0112, %mul25
  %mul27 = fmul double %2, %4
  %add28 = fadd double %s10.0111, %mul27
  %mul29 = fmul double %2, %5
  %add30 = fadd double %s11.0110, %mul29
  %mul31 = fmul double %2, %6
  %add32 = fadd double %s12.0109, %mul31
  %mul33 = fmul double %3, %4
  %add34 = fadd double %s20.0105, %mul33
  %mul35 = fmul double %3, %5
  %add36 = fadd double %s21.0106, %mul35
  %mul37 = fmul double %3, %6
  %add38 = fadd double %s22.0107, %mul37
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %n
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %for.cond.preheader
  %s00.0.lcssa = phi double [ 0.000000e+00, %for.cond.preheader ], [ %add, %for.body ]
  %s01.0.lcssa = phi double [ 0.000000e+00, %for.cond.preheader ], [ %add24, %for.body ]
  %s02.0.lcssa = phi double [ 0.000000e+00, %for.cond.preheader ], [ %add26, %for.body ]
  %s10.0.lcssa = phi double [ 0.000000e+00, %for.cond.preheader ], [ %add28, %for.body ]
  %s11.0.lcssa = phi double [ 0.000000e+00, %for.cond.preheader ], [ %add30, %for.body ]
  %s12.0.lcssa = phi double [ 0.000000e+00, %for.cond.preheader ], [ %add32, %for.body ]
  %s22.0.lcssa = phi double [ 0.000000e+00, %for.cond.preheader ], [ %add38, %for.body ]
  %s21.0.lcssa = phi double [ 0.000000e+00, %for.cond.preheader ], [ %add36, %for.body ]
  %s20.0.lcssa = phi double [ 0.000000e+00, %for.cond.preheader ], [ %add34, %for.body ]
  store double %s00.0.lcssa, double* %sums, align 8, !tbaa !3
  %arrayidx40 = getelementptr inbounds double* %sums, i64 1
  store double %s01.0.lcssa, double* %arrayidx40, align 8, !tbaa !3
  %arrayidx41 = getelementptr inbounds double* %sums, i64 2
  store double %s02.0.lcssa, double* %arrayidx41, align 8, !tbaa !3
  %arrayidx42 = getelementptr inbounds double* %sums, i64 3
  store double %s10.0.lcssa, double* %arrayidx42, align 8, !tbaa !3
  %arrayidx43 = getelementptr inbounds double* %sums, i64 4
  store double %s11.0.lcssa, double* %arrayidx43, align 8, !tbaa !3
  %arrayidx44 = getelementptr inbounds double* %sums, i64 5
  store double %s12.0.lcssa, double* %arrayidx44, align 8, !tbaa !3
  %arrayidx45 = getelementptr inbounds double* %sums, i64 6
  store double %s20.0.lcssa, double* %arrayidx45, align 8, !tbaa !3
  %arrayidx46 = getelementptr inbounds double* %sums, i64 7
  store double %s21.0.lcssa, double* %arrayidx46, align 8, !tbaa !3
  %arrayidx47 = getelementptr inbounds double* %sums, i64 8
  store double %s22.0.lcssa, double* %arrayidx47, align 8, !tbaa !3
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @DVdot23(i32 %n, double* %row0, double* %row1, double* %col0, double* %col1, double* %col2, double* %sums) #0 {
entry:
  %cmp = icmp eq double* %sums, null
  %cmp1 = icmp eq double* %row0, null
  %or.cond = or i1 %cmp, %cmp1
  %cmp3 = icmp eq double* %row1, null
  %or.cond72 = or i1 %or.cond, %cmp3
  %cmp5 = icmp eq double* %col0, null
  %or.cond73 = or i1 %or.cond72, %cmp5
  %cmp7 = icmp eq double* %col1, null
  %or.cond74 = or i1 %or.cond73, %cmp7
  %cmp9 = icmp eq double* %col2, null
  %or.cond75 = or i1 %or.cond74, %cmp9
  br i1 %or.cond75, label %if.then, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %cmp1076 = icmp sgt i32 %n, 0
  br i1 %cmp1076, label %for.body, label %for.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([59 x i8]* @.str40, i64 0, i64 0), i32 %n, double* %row0, double* %row1, double* %col0, double* %col1, double* %col2, double* %sums) #5
  tail call void @exit(i32 -1) #6
  unreachable

for.body:                                         ; preds = %for.cond.preheader, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %for.cond.preheader ]
  %s00.083 = phi double [ %add, %for.body ], [ 0.000000e+00, %for.cond.preheader ]
  %s01.082 = phi double [ %add20, %for.body ], [ 0.000000e+00, %for.cond.preheader ]
  %s02.081 = phi double [ %add22, %for.body ], [ 0.000000e+00, %for.cond.preheader ]
  %s10.080 = phi double [ %add24, %for.body ], [ 0.000000e+00, %for.cond.preheader ]
  %s11.079 = phi double [ %add26, %for.body ], [ 0.000000e+00, %for.cond.preheader ]
  %s12.077 = phi double [ %add28, %for.body ], [ 0.000000e+00, %for.cond.preheader ]
  %arrayidx = getelementptr inbounds double* %row0, i64 %indvars.iv
  %1 = load double* %arrayidx, align 8, !tbaa !3
  %arrayidx12 = getelementptr inbounds double* %row1, i64 %indvars.iv
  %2 = load double* %arrayidx12, align 8, !tbaa !3
  %arrayidx14 = getelementptr inbounds double* %col0, i64 %indvars.iv
  %3 = load double* %arrayidx14, align 8, !tbaa !3
  %arrayidx16 = getelementptr inbounds double* %col1, i64 %indvars.iv
  %4 = load double* %arrayidx16, align 8, !tbaa !3
  %arrayidx18 = getelementptr inbounds double* %col2, i64 %indvars.iv
  %5 = load double* %arrayidx18, align 8, !tbaa !3
  %mul = fmul double %1, %3
  %add = fadd double %s00.083, %mul
  %mul19 = fmul double %1, %4
  %add20 = fadd double %s01.082, %mul19
  %mul21 = fmul double %1, %5
  %add22 = fadd double %s02.081, %mul21
  %mul23 = fmul double %2, %3
  %add24 = fadd double %s10.080, %mul23
  %mul25 = fmul double %2, %4
  %add26 = fadd double %s11.079, %mul25
  %mul27 = fmul double %2, %5
  %add28 = fadd double %s12.077, %mul27
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %n
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %for.cond.preheader
  %s00.0.lcssa = phi double [ 0.000000e+00, %for.cond.preheader ], [ %add, %for.body ]
  %s01.0.lcssa = phi double [ 0.000000e+00, %for.cond.preheader ], [ %add20, %for.body ]
  %s02.0.lcssa = phi double [ 0.000000e+00, %for.cond.preheader ], [ %add22, %for.body ]
  %s10.0.lcssa = phi double [ 0.000000e+00, %for.cond.preheader ], [ %add24, %for.body ]
  %s11.0.lcssa = phi double [ 0.000000e+00, %for.cond.preheader ], [ %add26, %for.body ]
  %s12.0.lcssa = phi double [ 0.000000e+00, %for.cond.preheader ], [ %add28, %for.body ]
  store double %s00.0.lcssa, double* %sums, align 8, !tbaa !3
  %arrayidx30 = getelementptr inbounds double* %sums, i64 1
  store double %s01.0.lcssa, double* %arrayidx30, align 8, !tbaa !3
  %arrayidx31 = getelementptr inbounds double* %sums, i64 2
  store double %s02.0.lcssa, double* %arrayidx31, align 8, !tbaa !3
  %arrayidx32 = getelementptr inbounds double* %sums, i64 3
  store double %s10.0.lcssa, double* %arrayidx32, align 8, !tbaa !3
  %arrayidx33 = getelementptr inbounds double* %sums, i64 4
  store double %s11.0.lcssa, double* %arrayidx33, align 8, !tbaa !3
  %arrayidx34 = getelementptr inbounds double* %sums, i64 5
  store double %s12.0.lcssa, double* %arrayidx34, align 8, !tbaa !3
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @DVdot13(i32 %n, double* %row0, double* %col0, double* %col1, double* %col2, double* %sums) #0 {
entry:
  %cmp = icmp eq double* %sums, null
  %cmp1 = icmp eq double* %row0, null
  %or.cond = or i1 %cmp, %cmp1
  %cmp3 = icmp eq double* %col0, null
  %or.cond45 = or i1 %or.cond, %cmp3
  %cmp5 = icmp eq double* %col1, null
  %or.cond46 = or i1 %or.cond45, %cmp5
  %cmp7 = icmp eq double* %col2, null
  %or.cond47 = or i1 %or.cond46, %cmp7
  br i1 %or.cond47, label %if.then, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %cmp848 = icmp sgt i32 %n, 0
  br i1 %cmp848, label %for.body, label %for.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([56 x i8]* @.str41, i64 0, i64 0), i32 %n, double* %row0, double* %col0, double* %col1, double* %col2, double* %sums) #5
  tail call void @exit(i32 -1) #6
  unreachable

for.body:                                         ; preds = %for.cond.preheader, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %for.cond.preheader ]
  %s00.052 = phi double [ %add, %for.body ], [ 0.000000e+00, %for.cond.preheader ]
  %s01.051 = phi double [ %add16, %for.body ], [ 0.000000e+00, %for.cond.preheader ]
  %s02.050 = phi double [ %add18, %for.body ], [ 0.000000e+00, %for.cond.preheader ]
  %arrayidx = getelementptr inbounds double* %row0, i64 %indvars.iv
  %1 = load double* %arrayidx, align 8, !tbaa !3
  %arrayidx10 = getelementptr inbounds double* %col0, i64 %indvars.iv
  %2 = load double* %arrayidx10, align 8, !tbaa !3
  %arrayidx12 = getelementptr inbounds double* %col1, i64 %indvars.iv
  %3 = load double* %arrayidx12, align 8, !tbaa !3
  %arrayidx14 = getelementptr inbounds double* %col2, i64 %indvars.iv
  %4 = load double* %arrayidx14, align 8, !tbaa !3
  %mul = fmul double %1, %2
  %add = fadd double %s00.052, %mul
  %mul15 = fmul double %1, %3
  %add16 = fadd double %s01.051, %mul15
  %mul17 = fmul double %1, %4
  %add18 = fadd double %s02.050, %mul17
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %n
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %for.cond.preheader
  %s00.0.lcssa = phi double [ 0.000000e+00, %for.cond.preheader ], [ %add, %for.body ]
  %s01.0.lcssa = phi double [ 0.000000e+00, %for.cond.preheader ], [ %add16, %for.body ]
  %s02.0.lcssa = phi double [ 0.000000e+00, %for.cond.preheader ], [ %add18, %for.body ]
  store double %s00.0.lcssa, double* %sums, align 8, !tbaa !3
  %arrayidx20 = getelementptr inbounds double* %sums, i64 1
  store double %s01.0.lcssa, double* %arrayidx20, align 8, !tbaa !3
  %arrayidx21 = getelementptr inbounds double* %sums, i64 2
  store double %s02.0.lcssa, double* %arrayidx21, align 8, !tbaa !3
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @DVdot32(i32 %n, double* %row0, double* %row1, double* %row2, double* %col0, double* %col1, double* %sums) #0 {
entry:
  %cmp = icmp eq double* %sums, null
  %cmp1 = icmp eq double* %row0, null
  %or.cond = or i1 %cmp, %cmp1
  %cmp3 = icmp eq double* %row1, null
  %or.cond72 = or i1 %or.cond, %cmp3
  %cmp5 = icmp eq double* %row2, null
  %or.cond73 = or i1 %or.cond72, %cmp5
  %cmp7 = icmp eq double* %col0, null
  %or.cond74 = or i1 %or.cond73, %cmp7
  %cmp9 = icmp eq double* %col1, null
  %or.cond75 = or i1 %or.cond74, %cmp9
  br i1 %or.cond75, label %if.then, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %cmp1076 = icmp sgt i32 %n, 0
  br i1 %cmp1076, label %for.body, label %for.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([59 x i8]* @.str42, i64 0, i64 0), i32 %n, double* %row0, double* %row1, double* %row2, double* %col0, double* %col1, double* %sums) #5
  tail call void @exit(i32 -1) #6
  unreachable

for.body:                                         ; preds = %for.cond.preheader, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %for.cond.preheader ]
  %s00.083 = phi double [ %add, %for.body ], [ 0.000000e+00, %for.cond.preheader ]
  %s01.082 = phi double [ %add20, %for.body ], [ 0.000000e+00, %for.cond.preheader ]
  %s10.081 = phi double [ %add22, %for.body ], [ 0.000000e+00, %for.cond.preheader ]
  %s11.080 = phi double [ %add24, %for.body ], [ 0.000000e+00, %for.cond.preheader ]
  %s20.079 = phi double [ %add26, %for.body ], [ 0.000000e+00, %for.cond.preheader ]
  %s21.077 = phi double [ %add28, %for.body ], [ 0.000000e+00, %for.cond.preheader ]
  %arrayidx = getelementptr inbounds double* %row0, i64 %indvars.iv
  %1 = load double* %arrayidx, align 8, !tbaa !3
  %arrayidx12 = getelementptr inbounds double* %row1, i64 %indvars.iv
  %2 = load double* %arrayidx12, align 8, !tbaa !3
  %arrayidx14 = getelementptr inbounds double* %row2, i64 %indvars.iv
  %3 = load double* %arrayidx14, align 8, !tbaa !3
  %arrayidx16 = getelementptr inbounds double* %col0, i64 %indvars.iv
  %4 = load double* %arrayidx16, align 8, !tbaa !3
  %arrayidx18 = getelementptr inbounds double* %col1, i64 %indvars.iv
  %5 = load double* %arrayidx18, align 8, !tbaa !3
  %mul = fmul double %1, %4
  %add = fadd double %s00.083, %mul
  %mul19 = fmul double %1, %5
  %add20 = fadd double %s01.082, %mul19
  %mul21 = fmul double %2, %4
  %add22 = fadd double %s10.081, %mul21
  %mul23 = fmul double %2, %5
  %add24 = fadd double %s11.080, %mul23
  %mul25 = fmul double %3, %4
  %add26 = fadd double %s20.079, %mul25
  %mul27 = fmul double %3, %5
  %add28 = fadd double %s21.077, %mul27
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %n
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %for.cond.preheader
  %s00.0.lcssa = phi double [ 0.000000e+00, %for.cond.preheader ], [ %add, %for.body ]
  %s01.0.lcssa = phi double [ 0.000000e+00, %for.cond.preheader ], [ %add20, %for.body ]
  %s10.0.lcssa = phi double [ 0.000000e+00, %for.cond.preheader ], [ %add22, %for.body ]
  %s11.0.lcssa = phi double [ 0.000000e+00, %for.cond.preheader ], [ %add24, %for.body ]
  %s20.0.lcssa = phi double [ 0.000000e+00, %for.cond.preheader ], [ %add26, %for.body ]
  %s21.0.lcssa = phi double [ 0.000000e+00, %for.cond.preheader ], [ %add28, %for.body ]
  store double %s00.0.lcssa, double* %sums, align 8, !tbaa !3
  %arrayidx30 = getelementptr inbounds double* %sums, i64 1
  store double %s01.0.lcssa, double* %arrayidx30, align 8, !tbaa !3
  %arrayidx31 = getelementptr inbounds double* %sums, i64 2
  store double %s10.0.lcssa, double* %arrayidx31, align 8, !tbaa !3
  %arrayidx32 = getelementptr inbounds double* %sums, i64 3
  store double %s11.0.lcssa, double* %arrayidx32, align 8, !tbaa !3
  %arrayidx33 = getelementptr inbounds double* %sums, i64 4
  store double %s20.0.lcssa, double* %arrayidx33, align 8, !tbaa !3
  %arrayidx34 = getelementptr inbounds double* %sums, i64 5
  store double %s21.0.lcssa, double* %arrayidx34, align 8, !tbaa !3
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @DVdot22(i32 %n, double* %row0, double* %row1, double* %col0, double* %col1, double* %sums) #0 {
entry:
  %cmp = icmp eq double* %sums, null
  %cmp1 = icmp eq double* %row0, null
  %or.cond = or i1 %cmp, %cmp1
  %cmp3 = icmp eq double* %row1, null
  %or.cond52 = or i1 %or.cond, %cmp3
  %cmp5 = icmp eq double* %col0, null
  %or.cond53 = or i1 %or.cond52, %cmp5
  %cmp7 = icmp eq double* %col1, null
  %or.cond54 = or i1 %or.cond53, %cmp7
  br i1 %or.cond54, label %if.then, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %cmp855 = icmp sgt i32 %n, 0
  br i1 %cmp855, label %for.body, label %for.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([56 x i8]* @.str43, i64 0, i64 0), i32 %n, double* %row0, double* %row1, double* %col0, double* %col1, double* %sums) #5
  tail call void @exit(i32 -1) #6
  unreachable

for.body:                                         ; preds = %for.cond.preheader, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %for.cond.preheader ]
  %s00.060 = phi double [ %add, %for.body ], [ 0.000000e+00, %for.cond.preheader ]
  %s01.059 = phi double [ %add16, %for.body ], [ 0.000000e+00, %for.cond.preheader ]
  %s10.058 = phi double [ %add18, %for.body ], [ 0.000000e+00, %for.cond.preheader ]
  %s11.057 = phi double [ %add20, %for.body ], [ 0.000000e+00, %for.cond.preheader ]
  %arrayidx = getelementptr inbounds double* %row0, i64 %indvars.iv
  %1 = load double* %arrayidx, align 8, !tbaa !3
  %arrayidx10 = getelementptr inbounds double* %row1, i64 %indvars.iv
  %2 = load double* %arrayidx10, align 8, !tbaa !3
  %arrayidx12 = getelementptr inbounds double* %col0, i64 %indvars.iv
  %3 = load double* %arrayidx12, align 8, !tbaa !3
  %arrayidx14 = getelementptr inbounds double* %col1, i64 %indvars.iv
  %4 = load double* %arrayidx14, align 8, !tbaa !3
  %mul = fmul double %1, %3
  %add = fadd double %s00.060, %mul
  %mul15 = fmul double %1, %4
  %add16 = fadd double %s01.059, %mul15
  %mul17 = fmul double %2, %3
  %add18 = fadd double %s10.058, %mul17
  %mul19 = fmul double %2, %4
  %add20 = fadd double %s11.057, %mul19
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %n
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %for.cond.preheader
  %s00.0.lcssa = phi double [ 0.000000e+00, %for.cond.preheader ], [ %add, %for.body ]
  %s01.0.lcssa = phi double [ 0.000000e+00, %for.cond.preheader ], [ %add16, %for.body ]
  %s10.0.lcssa = phi double [ 0.000000e+00, %for.cond.preheader ], [ %add18, %for.body ]
  %s11.0.lcssa = phi double [ 0.000000e+00, %for.cond.preheader ], [ %add20, %for.body ]
  store double %s00.0.lcssa, double* %sums, align 8, !tbaa !3
  %arrayidx22 = getelementptr inbounds double* %sums, i64 1
  store double %s01.0.lcssa, double* %arrayidx22, align 8, !tbaa !3
  %arrayidx23 = getelementptr inbounds double* %sums, i64 2
  store double %s10.0.lcssa, double* %arrayidx23, align 8, !tbaa !3
  %arrayidx24 = getelementptr inbounds double* %sums, i64 3
  store double %s11.0.lcssa, double* %arrayidx24, align 8, !tbaa !3
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @DVdot12(i32 %n, double* %row0, double* %col0, double* %col1, double* %sums) #0 {
entry:
  %cmp = icmp eq double* %sums, null
  %cmp1 = icmp eq double* %row0, null
  %or.cond = or i1 %cmp, %cmp1
  %cmp3 = icmp eq double* %col0, null
  %or.cond32 = or i1 %or.cond, %cmp3
  %cmp5 = icmp eq double* %col1, null
  %or.cond33 = or i1 %or.cond32, %cmp5
  br i1 %or.cond33, label %if.then, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %cmp634 = icmp sgt i32 %n, 0
  br i1 %cmp634, label %for.body, label %for.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([53 x i8]* @.str44, i64 0, i64 0), i32 %n, double* %row0, double* %col0, double* %col1, double* %sums) #5
  tail call void @exit(i32 -1) #6
  unreachable

for.body:                                         ; preds = %for.cond.preheader, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %for.cond.preheader ]
  %s00.037 = phi double [ %add, %for.body ], [ 0.000000e+00, %for.cond.preheader ]
  %s01.036 = phi double [ %add12, %for.body ], [ 0.000000e+00, %for.cond.preheader ]
  %arrayidx = getelementptr inbounds double* %row0, i64 %indvars.iv
  %1 = load double* %arrayidx, align 8, !tbaa !3
  %arrayidx8 = getelementptr inbounds double* %col0, i64 %indvars.iv
  %2 = load double* %arrayidx8, align 8, !tbaa !3
  %arrayidx10 = getelementptr inbounds double* %col1, i64 %indvars.iv
  %3 = load double* %arrayidx10, align 8, !tbaa !3
  %mul = fmul double %1, %2
  %add = fadd double %s00.037, %mul
  %mul11 = fmul double %1, %3
  %add12 = fadd double %s01.036, %mul11
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %n
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %for.cond.preheader
  %s00.0.lcssa = phi double [ 0.000000e+00, %for.cond.preheader ], [ %add, %for.body ]
  %s01.0.lcssa = phi double [ 0.000000e+00, %for.cond.preheader ], [ %add12, %for.body ]
  store double %s00.0.lcssa, double* %sums, align 8, !tbaa !3
  %arrayidx14 = getelementptr inbounds double* %sums, i64 1
  store double %s01.0.lcssa, double* %arrayidx14, align 8, !tbaa !3
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @DVdot31(i32 %n, double* %row0, double* %row1, double* %row2, double* %col0, double* %sums) #0 {
entry:
  %cmp = icmp eq double* %sums, null
  %cmp1 = icmp eq double* %row0, null
  %or.cond = or i1 %cmp, %cmp1
  %cmp3 = icmp eq double* %row1, null
  %or.cond45 = or i1 %or.cond, %cmp3
  %cmp5 = icmp eq double* %row2, null
  %or.cond46 = or i1 %or.cond45, %cmp5
  %cmp7 = icmp eq double* %col0, null
  %or.cond47 = or i1 %or.cond46, %cmp7
  br i1 %or.cond47, label %if.then, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %cmp848 = icmp sgt i32 %n, 0
  br i1 %cmp848, label %for.body, label %for.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([56 x i8]* @.str45, i64 0, i64 0), i32 %n, double* %row0, double* %row1, double* %row2, double* %col0, double* %sums) #5
  tail call void @exit(i32 -1) #6
  unreachable

for.body:                                         ; preds = %for.cond.preheader, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %for.cond.preheader ]
  %s00.052 = phi double [ %add, %for.body ], [ 0.000000e+00, %for.cond.preheader ]
  %s10.051 = phi double [ %add16, %for.body ], [ 0.000000e+00, %for.cond.preheader ]
  %s20.050 = phi double [ %add18, %for.body ], [ 0.000000e+00, %for.cond.preheader ]
  %arrayidx = getelementptr inbounds double* %row0, i64 %indvars.iv
  %1 = load double* %arrayidx, align 8, !tbaa !3
  %arrayidx10 = getelementptr inbounds double* %row1, i64 %indvars.iv
  %2 = load double* %arrayidx10, align 8, !tbaa !3
  %arrayidx12 = getelementptr inbounds double* %row2, i64 %indvars.iv
  %3 = load double* %arrayidx12, align 8, !tbaa !3
  %arrayidx14 = getelementptr inbounds double* %col0, i64 %indvars.iv
  %4 = load double* %arrayidx14, align 8, !tbaa !3
  %mul = fmul double %1, %4
  %add = fadd double %s00.052, %mul
  %mul15 = fmul double %2, %4
  %add16 = fadd double %s10.051, %mul15
  %mul17 = fmul double %3, %4
  %add18 = fadd double %s20.050, %mul17
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %n
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %for.cond.preheader
  %s00.0.lcssa = phi double [ 0.000000e+00, %for.cond.preheader ], [ %add, %for.body ]
  %s10.0.lcssa = phi double [ 0.000000e+00, %for.cond.preheader ], [ %add16, %for.body ]
  %s20.0.lcssa = phi double [ 0.000000e+00, %for.cond.preheader ], [ %add18, %for.body ]
  store double %s00.0.lcssa, double* %sums, align 8, !tbaa !3
  %arrayidx20 = getelementptr inbounds double* %sums, i64 1
  store double %s10.0.lcssa, double* %arrayidx20, align 8, !tbaa !3
  %arrayidx21 = getelementptr inbounds double* %sums, i64 2
  store double %s20.0.lcssa, double* %arrayidx21, align 8, !tbaa !3
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @DVdot21(i32 %n, double* %row0, double* %row1, double* %col0, double* %sums) #0 {
entry:
  %cmp = icmp eq double* %sums, null
  %cmp1 = icmp eq double* %row0, null
  %or.cond = or i1 %cmp, %cmp1
  %cmp3 = icmp eq double* %row1, null
  %or.cond32 = or i1 %or.cond, %cmp3
  %cmp5 = icmp eq double* %col0, null
  %or.cond33 = or i1 %or.cond32, %cmp5
  br i1 %or.cond33, label %if.then, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %cmp634 = icmp sgt i32 %n, 0
  br i1 %cmp634, label %for.body, label %for.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([53 x i8]* @.str46, i64 0, i64 0), i32 %n, double* %row0, double* %row1, double* %col0, double* %sums) #5
  tail call void @exit(i32 -1) #6
  unreachable

for.body:                                         ; preds = %for.cond.preheader, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %for.cond.preheader ]
  %s00.037 = phi double [ %add, %for.body ], [ 0.000000e+00, %for.cond.preheader ]
  %s10.036 = phi double [ %add12, %for.body ], [ 0.000000e+00, %for.cond.preheader ]
  %arrayidx = getelementptr inbounds double* %row0, i64 %indvars.iv
  %1 = load double* %arrayidx, align 8, !tbaa !3
  %arrayidx8 = getelementptr inbounds double* %row1, i64 %indvars.iv
  %2 = load double* %arrayidx8, align 8, !tbaa !3
  %arrayidx10 = getelementptr inbounds double* %col0, i64 %indvars.iv
  %3 = load double* %arrayidx10, align 8, !tbaa !3
  %mul = fmul double %1, %3
  %add = fadd double %s00.037, %mul
  %mul11 = fmul double %2, %3
  %add12 = fadd double %s10.036, %mul11
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %n
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %for.cond.preheader
  %s00.0.lcssa = phi double [ 0.000000e+00, %for.cond.preheader ], [ %add, %for.body ]
  %s10.0.lcssa = phi double [ 0.000000e+00, %for.cond.preheader ], [ %add12, %for.body ]
  store double %s00.0.lcssa, double* %sums, align 8, !tbaa !3
  %arrayidx14 = getelementptr inbounds double* %sums, i64 1
  store double %s10.0.lcssa, double* %arrayidx14, align 8, !tbaa !3
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @DVdot11(i32 %n, double* %row0, double* %col0, double* %sums) #0 {
entry:
  %cmp = icmp eq double* %sums, null
  %cmp1 = icmp eq double* %row0, null
  %or.cond = or i1 %cmp, %cmp1
  %cmp3 = icmp eq double* %col0, null
  %or.cond19 = or i1 %or.cond, %cmp3
  br i1 %or.cond19, label %if.then, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %cmp420 = icmp sgt i32 %n, 0
  br i1 %cmp420, label %for.body, label %for.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([50 x i8]* @.str47, i64 0, i64 0), i32 %n, double* %row0, double* %col0, double* %sums) #5
  tail call void @exit(i32 -1) #6
  unreachable

for.body:                                         ; preds = %for.cond.preheader, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %for.cond.preheader ]
  %s00.022 = phi double [ %add, %for.body ], [ 0.000000e+00, %for.cond.preheader ]
  %arrayidx = getelementptr inbounds double* %row0, i64 %indvars.iv
  %1 = load double* %arrayidx, align 8, !tbaa !3
  %arrayidx6 = getelementptr inbounds double* %col0, i64 %indvars.iv
  %2 = load double* %arrayidx6, align 8, !tbaa !3
  %mul = fmul double %1, %2
  %add = fadd double %s00.022, %mul
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %n
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %for.cond.preheader
  %s00.0.lcssa = phi double [ 0.000000e+00, %for.cond.preheader ], [ %add, %for.body ]
  store double %s00.0.lcssa, double* %sums, align 8, !tbaa !3
  ret void
}

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #4

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #4

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind optsize }
attributes #6 = { noreturn nounwind optsize }
attributes #7 = { optsize }

!0 = metadata !{metadata !"any pointer", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"double", metadata !1}
!4 = metadata !{metadata !"int", metadata !1}
