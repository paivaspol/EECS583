; ModuleID = '../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_sort.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct._A2 = type { i32, i32, i32, i32, i32, i32, double* }

@stderr = external global %struct._IO_FILE*
@.str = private unnamed_addr constant [54 x i8] c"\0A fatal error in A2_permuteRows(%p,%d,%p)\0A bad input\0A\00", align 1
@.str1 = private unnamed_addr constant [57 x i8] c"\0A fatal error in A2_permuteColumns(%p,%d,%p)\0A bad input\0A\00", align 1
@.str2 = private unnamed_addr constant [53 x i8] c"\0A fatal error in A2_sortRowsUp(%p,%d,%p)\0A bad input\0A\00", align 1
@.str3 = private unnamed_addr constant [96 x i8] c"\0A fatal error in A2_sortRowsUp(%p,%d,%p)\0A bad type %d, must be SPOOLES_REAL or SPOOLES_COMPLEX\0A\00", align 1
@.str4 = private unnamed_addr constant [56 x i8] c"\0A fatal error in A2_sortColumnsUp(%p,%d,%p)\0A bad input\0A\00", align 1
@.str5 = private unnamed_addr constant [99 x i8] c"\0A fatal error in A2_sortColumnsUp(%p,%d,%p)\0A bad type %d, must be SPOOLES_REAL or SPOOLES_COMPLEX\0A\00", align 1

; Function Attrs: nounwind optsize uwtable
define void @A2_permuteRows(%struct._A2* %mtx, i32 %nrow, i32* %index) #0 {
entry:
  %cmp = icmp eq %struct._A2* %mtx, null
  %cmp1 = icmp slt i32 %nrow, 0
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %if.then, label %lor.lhs.false2

lor.lhs.false2:                                   ; preds = %entry
  %n1 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 1
  %0 = load i32* %n1, align 4, !tbaa !0
  %cmp3 = icmp slt i32 %0, %nrow
  %cmp5 = icmp eq i32* %index, null
  %or.cond20 = or i1 %cmp3, %cmp5
  br i1 %or.cond20, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false2, %entry
  %1 = load %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([54 x i8]* @.str, i64 0, i64 0), %struct._A2* %mtx, i32 %nrow, i32* %index) #4
  tail call void @exit(i32 -1) #5
  unreachable

if.end:                                           ; preds = %lor.lhs.false2
  %call6 = tail call i32* @IVinit(i32 %nrow, i32 -1) #4
  tail call void @IVcopy(i32 %nrow, i32* %call6, i32* %index) #4
  %call7 = tail call i32 @A2_sortRowsUp(%struct._A2* %mtx, i32 %nrow, i32* %call6) #6
  tail call void @IVfree(i32* %call6) #4
  ret void
}

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #1

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32) #2

; Function Attrs: optsize
declare i32* @IVinit(i32, i32) #3

; Function Attrs: optsize
declare void @IVcopy(i32, i32*, i32*) #3

; Function Attrs: nounwind optsize uwtable
define i32 @A2_sortRowsUp(%struct._A2* %mtx, i32 %nrow, i32* %rowids) #0 {
entry:
  %cmp = icmp eq %struct._A2* %mtx, null
  br i1 %cmp, label %if.then.thread, label %lor.lhs.false

if.then.thread:                                   ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %call147 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([53 x i8]* @.str2, i64 0, i64 0), %struct._A2* null, i32 %nrow, i32* %rowids) #4
  br label %if.end

lor.lhs.false:                                    ; preds = %entry
  %n1 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 1
  %1 = load i32* %n1, align 4, !tbaa !0
  %cmp1 = icmp slt i32 %1, %nrow
  %cmp3 = icmp slt i32 %nrow, 0
  %or.cond = or i1 %cmp1, %cmp3
  %cmp5 = icmp eq i32* %rowids, null
  %or.cond146 = or i1 %or.cond, %cmp5
  br i1 %or.cond146, label %if.then7, label %if.end8

if.then7:                                         ; preds = %lor.lhs.false
  %2 = load %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([53 x i8]* @.str2, i64 0, i64 0), %struct._A2* %mtx, i32 %nrow, i32* %rowids) #4
  %3 = load %struct._IO_FILE** @stderr, align 8, !tbaa !3
  tail call void @A2_writeStats(%struct._A2* %mtx, %struct._IO_FILE* %3) #4
  br label %if.end

if.end:                                           ; preds = %if.then.thread, %if.then7
  tail call void @exit(i32 -1) #5
  unreachable

if.end8:                                          ; preds = %lor.lhs.false
  %type = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 0
  %4 = load i32* %type, align 4, !tbaa !0
  %.off = add i32 %4, -1
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %if.end16, label %if.then13

if.then13:                                        ; preds = %if.end8
  %5 = load %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %call15 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([96 x i8]* @.str3, i64 0, i64 0), %struct._A2* %mtx, i32 %nrow, i32* %rowids, i32 %4) #4
  tail call void @exit(i32 -1) #5
  unreachable

if.end16:                                         ; preds = %if.end8
  %inc1 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 3
  %6 = load i32* %inc1, align 4, !tbaa !0
  %cmp17 = icmp eq i32 %6, 1
  br i1 %cmp17, label %if.then18, label %for.cond45.outer

if.then18:                                        ; preds = %if.end16
  %call19 = tail call i32* @IVinit(i32 %nrow, i32 -1) #4
  %7 = load i32* %type, align 4, !tbaa !0
  switch i32 %7, label %if.end29 [
    i32 1, label %if.then22
    i32 2, label %if.then26
  ]

if.then22:                                        ; preds = %if.then18
  %call23 = tail call double* @DVinit(i32 %nrow, double 0.000000e+00) #4
  br label %if.end29

if.then26:                                        ; preds = %if.then18
  %mul = shl nsw i32 %nrow, 1
  %call27 = tail call double* @DVinit(i32 %mul, double 0.000000e+00) #4
  br label %if.end29

if.end29:                                         ; preds = %if.then18, %if.then26, %if.then22
  %dvtmp.0 = phi double* [ %call23, %if.then22 ], [ %call27, %if.then26 ], [ undef, %if.then18 ]
  tail call void @IVramp(i32 %nrow, i32* %call19, i32 0, i32 1) #4
  tail call void @IV2qsortUp(i32 %nrow, i32* %rowids, i32* %call19) #4
  %n2 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 2
  %8 = load i32* %n2, align 4, !tbaa !0
  %cmp30148 = icmp sgt i32 %8, 0
  br i1 %cmp30148, label %for.body, label %for.end

for.body:                                         ; preds = %for.inc, %if.end29
  %jcol.0149 = phi i32 [ 0, %if.end29 ], [ %inc, %for.inc ]
  %9 = load i32* %type, align 4, !tbaa !0
  switch i32 %9, label %for.inc [
    i32 1, label %if.then33
    i32 2, label %if.then39
  ]

if.then33:                                        ; preds = %for.body
  %call34 = tail call double* @A2_column(%struct._A2* %mtx, i32 %jcol.0149) #4
  tail call void @DVcopy(i32 %nrow, double* %dvtmp.0, double* %call34) #4
  %call35 = tail call double* @A2_column(%struct._A2* %mtx, i32 %jcol.0149) #4
  tail call void @DVgather(i32 %nrow, double* %call35, double* %dvtmp.0, i32* %call19) #4
  br label %for.inc

if.then39:                                        ; preds = %for.body
  %call40 = tail call double* @A2_column(%struct._A2* %mtx, i32 %jcol.0149) #4
  tail call void @ZVcopy(i32 %nrow, double* %dvtmp.0, double* %call40) #4
  %call41 = tail call double* @A2_column(%struct._A2* %mtx, i32 %jcol.0149) #4
  tail call void @ZVgather(i32 %nrow, double* %call41, double* %dvtmp.0, i32* %call19) #4
  br label %for.inc

for.inc:                                          ; preds = %for.body, %if.then33, %if.then39
  %inc = add nsw i32 %jcol.0149, 1
  %exitcond = icmp eq i32 %inc, %8
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          ; preds = %for.inc, %if.end29
  tail call void @IVfree(i32* %call19) #4
  tail call void @DVfree(double* %dvtmp.0) #4
  br label %if.end74

for.cond45:                                       ; preds = %for.body47, %for.cond45.outer, %for.end60
  %indvars.iv161 = phi i64 [ %15, %for.cond45.outer ], [ %indvars.iv.next162, %for.end60 ], [ %indvars.iv.next162, %for.body47 ]
  %indvars.iv.in = phi i64 [ %15, %for.cond45.outer ], [ %indvars.iv, %for.end60 ], [ %indvars.iv, %for.body47 ]
  %target.0 = phi i32 [ %target.0.ph, %for.cond45.outer ], [ %add, %for.end60 ], [ %add, %for.body47 ]
  %indvars.iv = add i64 %indvars.iv.in, 1
  %10 = trunc i64 %indvars.iv161 to i32
  %cmp46 = icmp slt i32 %10, %nrow
  br i1 %cmp46, label %for.body47, label %if.end74

for.body47:                                       ; preds = %for.cond45
  %arrayidx = getelementptr inbounds i32* %rowids, i64 %indvars.iv161
  %11 = load i32* %arrayidx, align 4, !tbaa !0
  %indvars.iv.next162 = add i64 %indvars.iv161, 1
  %add = add nsw i32 %target.0, 1
  %12 = trunc i64 %indvars.iv.next162 to i32
  %cmp49150 = icmp slt i32 %12, %nrow
  br i1 %cmp49150, label %for.body50, label %for.cond45

for.body50:                                       ; preds = %for.body47, %for.body50
  %indvars.iv156 = phi i64 [ %indvars.iv.next157, %for.body50 ], [ %indvars.iv, %for.body47 ]
  %ii.0153 = phi i32 [ %inc59, %for.body50 ], [ %add, %for.body47 ]
  %minrow.0152 = phi i32 [ %ii.0.minrow.0, %for.body50 ], [ %target.0, %for.body47 ]
  %minrowid.0151 = phi i32 [ %.minrowid.0, %for.body50 ], [ %11, %for.body47 ]
  %arrayidx52 = getelementptr inbounds i32* %rowids, i64 %indvars.iv156
  %13 = load i32* %arrayidx52, align 4, !tbaa !0
  %cmp53 = icmp sgt i32 %minrowid.0151, %13
  %.minrowid.0 = select i1 %cmp53, i32 %13, i32 %minrowid.0151
  %14 = trunc i64 %indvars.iv156 to i32
  %ii.0.minrow.0 = select i1 %cmp53, i32 %14, i32 %minrow.0152
  %inc59 = add nsw i32 %ii.0153, 1
  %indvars.iv.next157 = add i64 %indvars.iv156, 1
  %exitcond159 = icmp eq i32 %inc59, %nrow
  br i1 %exitcond159, label %for.end60, label %for.body50

for.end60:                                        ; preds = %for.body50
  %cmp61 = icmp eq i32 %ii.0.minrow.0, %10
  br i1 %cmp61, label %for.cond45, label %if.then62

if.then62:                                        ; preds = %for.end60
  %idxprom65 = sext i32 %ii.0.minrow.0 to i64
  %arrayidx66 = getelementptr inbounds i32* %rowids, i64 %idxprom65
  store i32 %11, i32* %arrayidx66, align 4, !tbaa !0
  store i32 %.minrowid.0, i32* %arrayidx, align 4, !tbaa !0
  tail call void @A2_swapRows(%struct._A2* %mtx, i32 %target.0, i32 %ii.0.minrow.0) #4
  %inc69 = add nsw i32 %nswap.0.ph, 1
  br label %for.cond45.outer

for.cond45.outer:                                 ; preds = %if.end16, %if.then62
  %nswap.0.ph = phi i32 [ %inc69, %if.then62 ], [ 0, %if.end16 ]
  %target.0.ph = phi i32 [ %add, %if.then62 ], [ 0, %if.end16 ]
  %15 = sext i32 %target.0.ph to i64
  br label %for.cond45

if.end74:                                         ; preds = %for.cond45, %for.end
  %nswap.2 = phi i32 [ 0, %for.end ], [ %nswap.0.ph, %for.cond45 ]
  ret i32 %nswap.2
}

; Function Attrs: optsize
declare void @IVfree(i32*) #3

; Function Attrs: nounwind optsize uwtable
define void @A2_permuteColumns(%struct._A2* %mtx, i32 %ncol, i32* %index) #0 {
entry:
  %cmp = icmp eq %struct._A2* %mtx, null
  %cmp1 = icmp slt i32 %ncol, 0
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %if.then, label %lor.lhs.false2

lor.lhs.false2:                                   ; preds = %entry
  %n2 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 2
  %0 = load i32* %n2, align 4, !tbaa !0
  %cmp3 = icmp slt i32 %0, %ncol
  %cmp5 = icmp eq i32* %index, null
  %or.cond20 = or i1 %cmp3, %cmp5
  br i1 %or.cond20, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false2, %entry
  %1 = load %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([57 x i8]* @.str1, i64 0, i64 0), %struct._A2* %mtx, i32 %ncol, i32* %index) #4
  tail call void @exit(i32 -1) #5
  unreachable

if.end:                                           ; preds = %lor.lhs.false2
  %call6 = tail call i32* @IVinit(i32 %ncol, i32 -1) #4
  tail call void @IVcopy(i32 %ncol, i32* %call6, i32* %index) #4
  %call7 = tail call i32 @A2_sortColumnsUp(%struct._A2* %mtx, i32 %ncol, i32* %call6) #6
  tail call void @IVfree(i32* %call6) #4
  ret void
}

; Function Attrs: nounwind optsize uwtable
define i32 @A2_sortColumnsUp(%struct._A2* %mtx, i32 %ncol, i32* %colids) #0 {
entry:
  %cmp = icmp eq %struct._A2* %mtx, null
  br i1 %cmp, label %if.then.thread, label %lor.lhs.false

if.then.thread:                                   ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %call147 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([56 x i8]* @.str4, i64 0, i64 0), %struct._A2* null, i32 %ncol, i32* %colids) #4
  br label %if.end

lor.lhs.false:                                    ; preds = %entry
  %n2 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 2
  %1 = load i32* %n2, align 4, !tbaa !0
  %cmp1 = icmp slt i32 %1, %ncol
  %cmp3 = icmp slt i32 %ncol, 0
  %or.cond = or i1 %cmp1, %cmp3
  %cmp5 = icmp eq i32* %colids, null
  %or.cond146 = or i1 %or.cond, %cmp5
  br i1 %or.cond146, label %if.then7, label %if.end8

if.then7:                                         ; preds = %lor.lhs.false
  %2 = load %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([56 x i8]* @.str4, i64 0, i64 0), %struct._A2* %mtx, i32 %ncol, i32* %colids) #4
  %3 = load %struct._IO_FILE** @stderr, align 8, !tbaa !3
  tail call void @A2_writeStats(%struct._A2* %mtx, %struct._IO_FILE* %3) #4
  br label %if.end

if.end:                                           ; preds = %if.then.thread, %if.then7
  tail call void @exit(i32 -1) #5
  unreachable

if.end8:                                          ; preds = %lor.lhs.false
  %type = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 0
  %4 = load i32* %type, align 4, !tbaa !0
  %.off = add i32 %4, -1
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %if.end16, label %if.then13

if.then13:                                        ; preds = %if.end8
  %5 = load %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %call15 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([99 x i8]* @.str5, i64 0, i64 0), %struct._A2* %mtx, i32 %ncol, i32* %colids, i32 %4) #4
  tail call void @exit(i32 -1) #5
  unreachable

if.end16:                                         ; preds = %if.end8
  %inc2 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 4
  %6 = load i32* %inc2, align 4, !tbaa !0
  %cmp17 = icmp eq i32 %6, 1
  br i1 %cmp17, label %if.then18, label %for.cond45.outer

if.then18:                                        ; preds = %if.end16
  %call19 = tail call i32* @IVinit(i32 %ncol, i32 -1) #4
  %7 = load i32* %type, align 4, !tbaa !0
  switch i32 %7, label %if.end29 [
    i32 1, label %if.then22
    i32 2, label %if.then26
  ]

if.then22:                                        ; preds = %if.then18
  %call23 = tail call double* @DVinit(i32 %ncol, double 0.000000e+00) #4
  br label %if.end29

if.then26:                                        ; preds = %if.then18
  %mul = shl nsw i32 %ncol, 1
  %call27 = tail call double* @DVinit(i32 %mul, double 0.000000e+00) #4
  br label %if.end29

if.end29:                                         ; preds = %if.then18, %if.then26, %if.then22
  %dvtmp.0 = phi double* [ %call23, %if.then22 ], [ %call27, %if.then26 ], [ undef, %if.then18 ]
  tail call void @IVramp(i32 %ncol, i32* %call19, i32 0, i32 1) #4
  tail call void @IV2qsortUp(i32 %ncol, i32* %colids, i32* %call19) #4
  %n1 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 1
  %8 = load i32* %n1, align 4, !tbaa !0
  %cmp30148 = icmp sgt i32 %8, 0
  br i1 %cmp30148, label %for.body, label %for.end

for.body:                                         ; preds = %for.inc, %if.end29
  %irow.0149 = phi i32 [ 0, %if.end29 ], [ %inc, %for.inc ]
  %9 = load i32* %type, align 4, !tbaa !0
  switch i32 %9, label %for.inc [
    i32 1, label %if.then33
    i32 2, label %if.then39
  ]

if.then33:                                        ; preds = %for.body
  %call34 = tail call double* @A2_row(%struct._A2* %mtx, i32 %irow.0149) #4
  tail call void @DVcopy(i32 %ncol, double* %dvtmp.0, double* %call34) #4
  %call35 = tail call double* @A2_row(%struct._A2* %mtx, i32 %irow.0149) #4
  tail call void @DVgather(i32 %ncol, double* %call35, double* %dvtmp.0, i32* %call19) #4
  br label %for.inc

if.then39:                                        ; preds = %for.body
  %call40 = tail call double* @A2_row(%struct._A2* %mtx, i32 %irow.0149) #4
  tail call void @ZVcopy(i32 %ncol, double* %dvtmp.0, double* %call40) #4
  %call41 = tail call double* @A2_row(%struct._A2* %mtx, i32 %irow.0149) #4
  tail call void @ZVgather(i32 %ncol, double* %call41, double* %dvtmp.0, i32* %call19) #4
  br label %for.inc

for.inc:                                          ; preds = %for.body, %if.then33, %if.then39
  %inc = add nsw i32 %irow.0149, 1
  %exitcond = icmp eq i32 %inc, %8
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          ; preds = %for.inc, %if.end29
  tail call void @IVfree(i32* %call19) #4
  tail call void @DVfree(double* %dvtmp.0) #4
  br label %if.end74

for.cond45:                                       ; preds = %for.body47, %for.cond45.outer, %for.end60
  %indvars.iv161 = phi i64 [ %15, %for.cond45.outer ], [ %indvars.iv.next162, %for.end60 ], [ %indvars.iv.next162, %for.body47 ]
  %indvars.iv.in = phi i64 [ %15, %for.cond45.outer ], [ %indvars.iv, %for.end60 ], [ %indvars.iv, %for.body47 ]
  %target.0 = phi i32 [ %target.0.ph, %for.cond45.outer ], [ %add, %for.end60 ], [ %add, %for.body47 ]
  %indvars.iv = add i64 %indvars.iv.in, 1
  %10 = trunc i64 %indvars.iv161 to i32
  %cmp46 = icmp slt i32 %10, %ncol
  br i1 %cmp46, label %for.body47, label %if.end74

for.body47:                                       ; preds = %for.cond45
  %arrayidx = getelementptr inbounds i32* %colids, i64 %indvars.iv161
  %11 = load i32* %arrayidx, align 4, !tbaa !0
  %indvars.iv.next162 = add i64 %indvars.iv161, 1
  %add = add nsw i32 %target.0, 1
  %12 = trunc i64 %indvars.iv.next162 to i32
  %cmp49150 = icmp slt i32 %12, %ncol
  br i1 %cmp49150, label %for.body50, label %for.cond45

for.body50:                                       ; preds = %for.body47, %for.body50
  %indvars.iv156 = phi i64 [ %indvars.iv.next157, %for.body50 ], [ %indvars.iv, %for.body47 ]
  %ii.0153 = phi i32 [ %inc59, %for.body50 ], [ %add, %for.body47 ]
  %mincol.0152 = phi i32 [ %ii.0.mincol.0, %for.body50 ], [ %target.0, %for.body47 ]
  %mincolid.0151 = phi i32 [ %.mincolid.0, %for.body50 ], [ %11, %for.body47 ]
  %arrayidx52 = getelementptr inbounds i32* %colids, i64 %indvars.iv156
  %13 = load i32* %arrayidx52, align 4, !tbaa !0
  %cmp53 = icmp sgt i32 %mincolid.0151, %13
  %.mincolid.0 = select i1 %cmp53, i32 %13, i32 %mincolid.0151
  %14 = trunc i64 %indvars.iv156 to i32
  %ii.0.mincol.0 = select i1 %cmp53, i32 %14, i32 %mincol.0152
  %inc59 = add nsw i32 %ii.0153, 1
  %indvars.iv.next157 = add i64 %indvars.iv156, 1
  %exitcond159 = icmp eq i32 %inc59, %ncol
  br i1 %exitcond159, label %for.end60, label %for.body50

for.end60:                                        ; preds = %for.body50
  %cmp61 = icmp eq i32 %ii.0.mincol.0, %10
  br i1 %cmp61, label %for.cond45, label %if.then62

if.then62:                                        ; preds = %for.end60
  %idxprom65 = sext i32 %ii.0.mincol.0 to i64
  %arrayidx66 = getelementptr inbounds i32* %colids, i64 %idxprom65
  store i32 %11, i32* %arrayidx66, align 4, !tbaa !0
  store i32 %.mincolid.0, i32* %arrayidx, align 4, !tbaa !0
  tail call void @A2_swapColumns(%struct._A2* %mtx, i32 %target.0, i32 %ii.0.mincol.0) #4
  %inc69 = add nsw i32 %nswap.0.ph, 1
  br label %for.cond45.outer

for.cond45.outer:                                 ; preds = %if.end16, %if.then62
  %nswap.0.ph = phi i32 [ %inc69, %if.then62 ], [ 0, %if.end16 ]
  %target.0.ph = phi i32 [ %add, %if.then62 ], [ 0, %if.end16 ]
  %15 = sext i32 %target.0.ph to i64
  br label %for.cond45

if.end74:                                         ; preds = %for.cond45, %for.end
  %nswap.2 = phi i32 [ 0, %for.end ], [ %nswap.0.ph, %for.cond45 ]
  ret i32 %nswap.2
}

; Function Attrs: optsize
declare void @A2_writeStats(%struct._A2*, %struct._IO_FILE*) #3

; Function Attrs: optsize
declare double* @DVinit(i32, double) #3

; Function Attrs: optsize
declare void @IVramp(i32, i32*, i32, i32) #3

; Function Attrs: optsize
declare void @IV2qsortUp(i32, i32*, i32*) #3

; Function Attrs: optsize
declare void @DVcopy(i32, double*, double*) #3

; Function Attrs: optsize
declare double* @A2_column(%struct._A2*, i32) #3

; Function Attrs: optsize
declare void @DVgather(i32, double*, double*, i32*) #3

; Function Attrs: optsize
declare void @ZVcopy(i32, double*, double*) #3

; Function Attrs: optsize
declare void @ZVgather(i32, double*, double*, i32*) #3

; Function Attrs: optsize
declare void @DVfree(double*) #3

; Function Attrs: optsize
declare void @A2_swapRows(%struct._A2*, i32, i32) #3

; Function Attrs: optsize
declare double* @A2_row(%struct._A2*, i32) #3

; Function Attrs: optsize
declare void @A2_swapColumns(%struct._A2*, i32, i32) #3

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize }
attributes #5 = { noreturn nounwind optsize }
attributes #6 = { optsize }

!0 = metadata !{metadata !"int", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"any pointer", metadata !1}
