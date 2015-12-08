; ModuleID = '../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DenseMtx/src/DenseMtx_init.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct._DenseMtx = type { i32, i32, i32, i32, i32, i32, i32, i32*, i32*, double*, %struct._DV, %struct._DenseMtx* }
%struct._DV = type { i32, i32, i32, double* }
%struct._A2 = type { i32, i32, i32, i32, i32, i32, double* }

@stderr = external global %struct._IO_FILE*
@.str = private unnamed_addr constant [61 x i8] c"\0A fatal error in DenseMtx_nbytesNeeded(%d,%d,%d)\0A bad input\0A\00", align 1
@.str1 = private unnamed_addr constant [63 x i8] c"\0A fatal error in DenseMtx_nbytesNeeded(%d,%d,%d)\0A bad type %d\0A\00", align 1
@.str2 = private unnamed_addr constant [60 x i8] c"\0A fatal error in DenseMtx_nbytesInWorkspace(%p)\0A bad input\0A\00", align 1
@.str3 = private unnamed_addr constant [63 x i8] c"\0A fatal error in DenseMtx_setNbytesInWorkspace(%p)\0A bad input\0A\00", align 1
@.str4 = private unnamed_addr constant [70 x i8] c"\0A fatal error in DenseMtx_setFields(%p,%d,%d,%d,%d,%d,%d)\0A bad input\0A\00", align 1
@.str5 = private unnamed_addr constant [65 x i8] c"\0A fatal error in DenseMtx_init(%p,%d,%d,%d,%d,%d,%d)\0A bad input\0A\00", align 1
@.str6 = private unnamed_addr constant [70 x i8] c"\0A fatal error in DenseMtx_init(%p,%d,%d,%d,%d,%d,%d,%d)\0A bad type %d\0A\00", align 1
@.str7 = private unnamed_addr constant [57 x i8] c"\0A fatal error in DenseMtx_initFromBuffer(%p)\0A bad input\0A\00", align 1
@.str8 = private unnamed_addr constant [176 x i8] c"\0A fatal error in DenseMtx_initWithPointers()\0A mtx = %p, rowid = %d, colid = %d\0A nrow = %d, ncol = %d, inc1 = %d, inc2 = %d\0A rowind = %p, colind = %p, entries = %p \0A bad input\0A\00", align 1
@.str9 = private unnamed_addr constant [59 x i8] c"\0A fatal error in DenseMtx_initWithPointers()\0A bad type %d\0A\00", align 1
@.str10 = private unnamed_addr constant [52 x i8] c"\0A fatal error in DenseMtx_setZA2(%p,%p)\0A bad input\0A\00", align 1

; Function Attrs: nounwind optsize uwtable
define i32 @DenseMtx_nbytesNeeded(i32 %type, i32 %nrow, i32 %ncol) #0 {
entry:
  %0 = or i32 %ncol, %nrow
  %1 = icmp slt i32 %0, 0
  br i1 %1, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([61 x i8]* @.str, i64 0, i64 0), i32 %type, i32 %nrow, i32 %ncol) #4
  tail call void @exit(i32 -1) #5
  unreachable

if.end:                                           ; preds = %entry
  switch i32 %type, label %if.else9 [
    i32 1, label %if.end12
    i32 2, label %if.then6
  ]

if.then6:                                         ; preds = %if.end
  %mul7 = shl nsw i32 %nrow, 1
  br label %if.end12

if.else9:                                         ; preds = %if.end
  %3 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call10 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([63 x i8]* @.str1, i64 0, i64 0), i32 %type, i32 %nrow, i32 %ncol, i32 %type) #4
  tail call void @exit(i32 -1) #5
  unreachable

if.end12:                                         ; preds = %if.end, %if.then6
  %nrow.pn = phi i32 [ %mul7, %if.then6 ], [ %nrow, %if.end ]
  %ndouble.0 = mul nsw i32 %nrow.pn, %ncol
  %add2 = add i32 %nrow, 8
  %add13 = add i32 %add2, %ncol
  %div = sdiv i32 %add13, 2
  %add14 = add nsw i32 %div, %ndouble.0
  %mul15 = shl i32 %add14, 3
  ret i32 %mul15
}

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #1

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32) #2

; Function Attrs: nounwind optsize uwtable
define i32 @DenseMtx_nbytesInWorkspace(%struct._DenseMtx* %mtx) #0 {
entry:
  %cmp = icmp eq %struct._DenseMtx* %mtx, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([60 x i8]* @.str2, i64 0, i64 0), %struct._DenseMtx* null) #4
  tail call void @exit(i32 -1) #5
  unreachable

if.end:                                           ; preds = %entry
  %wrkDV = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 10
  %call1 = tail call i32 @DV_maxsize(%struct._DV* %wrkDV) #4
  %mul = shl i32 %call1, 3
  ret i32 %mul
}

; Function Attrs: optsize
declare i32 @DV_maxsize(%struct._DV*) #3

; Function Attrs: nounwind optsize uwtable
define void @DenseMtx_setNbytesInWorkspace(%struct._DenseMtx* %mtx, i32 %nbytes) #0 {
entry:
  %cmp = icmp eq %struct._DenseMtx* %mtx, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([63 x i8]* @.str3, i64 0, i64 0), %struct._DenseMtx* null) #4
  tail call void @exit(i32 -1) #5
  unreachable

if.end:                                           ; preds = %entry
  %wrkDV = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 10
  %conv = sext i32 %nbytes to i64
  %div = lshr i64 %conv, 3
  %conv1 = trunc i64 %div to i32
  tail call void @DV_setSize(%struct._DV* %wrkDV, i32 %conv1) #4
  ret void
}

; Function Attrs: optsize
declare void @DV_setSize(%struct._DV*, i32) #3

; Function Attrs: nounwind optsize uwtable
define void @DenseMtx_setFields(%struct._DenseMtx* %mtx, i32 %type, i32 %rowid, i32 %colid, i32 %nrow, i32 %ncol, i32 %inc1, i32 %inc2) #0 {
entry:
  %cmp = icmp eq %struct._DenseMtx* %mtx, null
  %cmp1 = icmp slt i32 %nrow, 0
  %or.cond = or i1 %cmp, %cmp1
  %cmp3 = icmp slt i32 %ncol, 0
  %or.cond71 = or i1 %or.cond, %cmp3
  br i1 %or.cond71, label %if.then, label %lor.lhs.false4

lor.lhs.false4:                                   ; preds = %entry
  %cmp5 = icmp eq i32 %inc1, %ncol
  %cmp6 = icmp eq i32 %inc2, 1
  %or.cond72 = and i1 %cmp5, %cmp6
  br i1 %or.cond72, label %if.end, label %lor.lhs.false7

lor.lhs.false7:                                   ; preds = %lor.lhs.false4
  %cmp8 = icmp eq i32 %inc1, 1
  %cmp10 = icmp eq i32 %inc2, %nrow
  %or.cond73 = and i1 %cmp8, %cmp10
  br i1 %or.cond73, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false7, %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([70 x i8]* @.str4, i64 0, i64 0), %struct._DenseMtx* %mtx, i32 %rowid, i32 %colid, i32 %nrow, i32 %ncol, i32 %inc1, i32 %inc2) #4
  tail call void @exit(i32 -1) #5
  unreachable

if.end:                                           ; preds = %lor.lhs.false7, %lor.lhs.false4
  %wrkDV = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 10
  %call11 = tail call double* @DV_entries(%struct._DV* %wrkDV) #4
  %1 = bitcast double* %call11 to i32*
  store i32 %type, i32* %1, align 4, !tbaa !3
  %type12 = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 0
  store i32 %type, i32* %type12, align 4, !tbaa !3
  %arrayidx13 = getelementptr inbounds i32* %1, i64 1
  store i32 %rowid, i32* %arrayidx13, align 4, !tbaa !3
  %rowid14 = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 1
  store i32 %rowid, i32* %rowid14, align 4, !tbaa !3
  %arrayidx1568 = getelementptr inbounds double* %call11, i64 1
  %arrayidx15 = bitcast double* %arrayidx1568 to i32*
  store i32 %colid, i32* %arrayidx15, align 4, !tbaa !3
  %colid16 = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 2
  store i32 %colid, i32* %colid16, align 4, !tbaa !3
  %arrayidx17 = getelementptr inbounds i32* %1, i64 3
  store i32 %nrow, i32* %arrayidx17, align 4, !tbaa !3
  %nrow18 = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 3
  store i32 %nrow, i32* %nrow18, align 4, !tbaa !3
  %arrayidx1969 = getelementptr inbounds double* %call11, i64 2
  %arrayidx19 = bitcast double* %arrayidx1969 to i32*
  store i32 %ncol, i32* %arrayidx19, align 4, !tbaa !3
  %ncol20 = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 4
  store i32 %ncol, i32* %ncol20, align 4, !tbaa !3
  %arrayidx21 = getelementptr inbounds i32* %1, i64 5
  store i32 %inc1, i32* %arrayidx21, align 4, !tbaa !3
  %inc122 = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 5
  store i32 %inc1, i32* %inc122, align 4, !tbaa !3
  %arrayidx2370 = getelementptr inbounds double* %call11, i64 3
  %arrayidx23 = bitcast double* %arrayidx2370 to i32*
  store i32 %inc2, i32* %arrayidx23, align 4, !tbaa !3
  %inc224 = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 6
  store i32 %inc2, i32* %inc224, align 4, !tbaa !3
  %add.ptr = getelementptr inbounds i32* %1, i64 7
  %rowind = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 7
  store i32* %add.ptr, i32** %rowind, align 8, !tbaa !0
  %idx.ext = sext i32 %nrow to i64
  %add.ptr.sum = add i64 %idx.ext, 7
  %add.ptr26 = getelementptr inbounds i32* %1, i64 %add.ptr.sum
  %colind = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 8
  store i32* %add.ptr26, i32** %colind, align 8, !tbaa !0
  %add = add nsw i32 %nrow, 8
  %add27 = add nsw i32 %add, %ncol
  %div = sdiv i32 %add27, 2
  %idx.ext28 = sext i32 %div to i64
  %add.ptr29 = getelementptr inbounds double* %call11, i64 %idx.ext28
  %entries = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 9
  store double* %add.ptr29, double** %entries, align 8, !tbaa !0
  ret void
}

; Function Attrs: optsize
declare double* @DV_entries(%struct._DV*) #3

; Function Attrs: nounwind optsize uwtable
define void @DenseMtx_init(%struct._DenseMtx* %mtx, i32 %type, i32 %rowid, i32 %colid, i32 %nrow, i32 %ncol, i32 %inc1, i32 %inc2) #0 {
entry:
  %cmp = icmp eq %struct._DenseMtx* %mtx, null
  %cmp1 = icmp slt i32 %nrow, 0
  %or.cond = or i1 %cmp, %cmp1
  %cmp3 = icmp slt i32 %ncol, 0
  %or.cond55 = or i1 %or.cond, %cmp3
  br i1 %or.cond55, label %if.then, label %lor.lhs.false4

lor.lhs.false4:                                   ; preds = %entry
  %cmp5 = icmp eq i32 %inc1, %ncol
  %cmp6 = icmp eq i32 %inc2, 1
  %or.cond56 = and i1 %cmp5, %cmp6
  br i1 %or.cond56, label %if.end, label %lor.lhs.false7

lor.lhs.false7:                                   ; preds = %lor.lhs.false4
  %cmp8 = icmp eq i32 %inc1, 1
  %cmp10 = icmp eq i32 %inc2, %nrow
  %or.cond57 = and i1 %cmp8, %cmp10
  br i1 %or.cond57, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false7, %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([65 x i8]* @.str5, i64 0, i64 0), %struct._DenseMtx* %mtx, i32 %rowid, i32 %colid, i32 %nrow, i32 %ncol, i32 %inc1, i32 %inc2) #4
  tail call void @exit(i32 -1) #5
  unreachable

if.end:                                           ; preds = %lor.lhs.false7, %lor.lhs.false4
  %.off = add i32 %type, -1
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %sw.epilog, label %sw.default

sw.default:                                       ; preds = %if.end
  %1 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call11 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([70 x i8]* @.str6, i64 0, i64 0), %struct._DenseMtx* %mtx, i32 %type, i32 %rowid, i32 %colid, i32 %nrow, i32 %ncol, i32 %inc1, i32 %inc2, i32 %type) #4
  tail call void @exit(i32 -1) #5
  unreachable

sw.epilog:                                        ; preds = %if.end
  %call12 = tail call i32 @DenseMtx_nbytesNeeded(i32 %type, i32 %nrow, i32 %ncol) #6
  tail call void @DenseMtx_setNbytesInWorkspace(%struct._DenseMtx* %mtx, i32 %call12) #6
  tail call void @DenseMtx_setFields(%struct._DenseMtx* %mtx, i32 %type, i32 %rowid, i32 %colid, i32 %nrow, i32 %ncol, i32 %inc1, i32 %inc2) #6
  %cmp13 = icmp sgt i32 %nrow, 0
  br i1 %cmp13, label %if.then14, label %if.end15

if.then14:                                        ; preds = %sw.epilog
  %rowind = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 7
  %2 = load i32** %rowind, align 8, !tbaa !0
  tail call void @IVramp(i32 %nrow, i32* %2, i32 0, i32 1) #4
  br label %if.end15

if.end15:                                         ; preds = %if.then14, %sw.epilog
  %cmp16 = icmp sgt i32 %ncol, 0
  br i1 %cmp16, label %if.then17, label %if.end18

if.then17:                                        ; preds = %if.end15
  %colind = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 8
  %3 = load i32** %colind, align 8, !tbaa !0
  tail call void @IVramp(i32 %ncol, i32* %3, i32 0, i32 1) #4
  br label %if.end18

if.end18:                                         ; preds = %if.then17, %if.end15
  ret void
}

; Function Attrs: optsize
declare void @IVramp(i32, i32*, i32, i32) #3

; Function Attrs: nounwind optsize uwtable
define void @DenseMtx_initFromBuffer(%struct._DenseMtx* %mtx) #0 {
entry:
  %cmp = icmp eq %struct._DenseMtx* %mtx, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([57 x i8]* @.str7, i64 0, i64 0), %struct._DenseMtx* null) #4
  tail call void @exit(i32 -1) #5
  unreachable

if.end:                                           ; preds = %entry
  %wrkDV = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 10
  %call1 = tail call double* @DV_entries(%struct._DV* %wrkDV) #4
  %1 = bitcast double* %call1 to i32*
  %2 = load i32* %1, align 4, !tbaa !3
  %arrayidx2 = getelementptr inbounds i32* %1, i64 1
  %3 = load i32* %arrayidx2, align 4, !tbaa !3
  %arrayidx317 = getelementptr inbounds double* %call1, i64 1
  %arrayidx3 = bitcast double* %arrayidx317 to i32*
  %4 = load i32* %arrayidx3, align 4, !tbaa !3
  %arrayidx4 = getelementptr inbounds i32* %1, i64 3
  %5 = load i32* %arrayidx4, align 4, !tbaa !3
  %arrayidx518 = getelementptr inbounds double* %call1, i64 2
  %arrayidx5 = bitcast double* %arrayidx518 to i32*
  %6 = load i32* %arrayidx5, align 4, !tbaa !3
  %arrayidx6 = getelementptr inbounds i32* %1, i64 5
  %7 = load i32* %arrayidx6, align 4, !tbaa !3
  %arrayidx719 = getelementptr inbounds double* %call1, i64 3
  %arrayidx7 = bitcast double* %arrayidx719 to i32*
  %8 = load i32* %arrayidx7, align 4, !tbaa !3
  tail call void @DenseMtx_setFields(%struct._DenseMtx* %mtx, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8) #6
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @DenseMtx_initWithPointers(%struct._DenseMtx* %mtx, i32 %type, i32 %rowid, i32 %colid, i32 %nrow, i32 %ncol, i32 %inc1, i32 %inc2, i32* %rowind, i32* %colind, double* %entries) #0 {
entry:
  %cmp = icmp eq %struct._DenseMtx* %mtx, null
  %cmp1 = icmp slt i32 %nrow, 1
  %or.cond = or i1 %cmp, %cmp1
  %cmp3 = icmp slt i32 %ncol, 1
  %or.cond59 = or i1 %or.cond, %cmp3
  %cmp5 = icmp slt i32 %inc1, 0
  %or.cond60 = or i1 %or.cond59, %cmp5
  %cmp7 = icmp slt i32 %inc2, 0
  %or.cond61 = or i1 %or.cond60, %cmp7
  br i1 %or.cond61, label %if.then, label %lor.lhs.false8

lor.lhs.false8:                                   ; preds = %entry
  %notlhs = icmp ne i32 %inc1, 1
  %notrhs = icmp ne i32 %inc2, 1
  %or.cond62.not = and i1 %notrhs, %notlhs
  %cmp12 = icmp eq double* %entries, null
  %or.cond63 = or i1 %or.cond62.not, %cmp12
  %cmp14 = icmp eq i32* %colind, null
  %or.cond64 = or i1 %or.cond63, %cmp14
  %cmp16 = icmp eq i32* %rowind, null
  %or.cond65 = or i1 %or.cond64, %cmp16
  br i1 %or.cond65, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false8, %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([176 x i8]* @.str8, i64 0, i64 0), %struct._DenseMtx* %mtx, i32 %rowid, i32 %colid, i32 %nrow, i32 %ncol, i32 %inc1, i32 %inc2, i32* %rowind, i32* %colind, double* %entries) #4
  tail call void @exit(i32 -1) #5
  unreachable

if.end:                                           ; preds = %lor.lhs.false8
  %.off = add i32 %type, -1
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %sw.epilog, label %sw.default

sw.default:                                       ; preds = %if.end
  %1 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call17 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([59 x i8]* @.str9, i64 0, i64 0), i32 %type) #4
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end, %sw.default
  %type18 = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 0
  store i32 %type, i32* %type18, align 4, !tbaa !3
  %rowid19 = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 1
  store i32 %rowid, i32* %rowid19, align 4, !tbaa !3
  %colid20 = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 2
  store i32 %colid, i32* %colid20, align 4, !tbaa !3
  %nrow21 = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 3
  store i32 %nrow, i32* %nrow21, align 4, !tbaa !3
  %ncol22 = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 4
  store i32 %ncol, i32* %ncol22, align 4, !tbaa !3
  %inc123 = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 5
  store i32 %inc1, i32* %inc123, align 4, !tbaa !3
  %inc224 = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 6
  store i32 %inc2, i32* %inc224, align 4, !tbaa !3
  %rowind25 = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 7
  store i32* %rowind, i32** %rowind25, align 8, !tbaa !0
  %colind26 = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 8
  store i32* %colind, i32** %colind26, align 8, !tbaa !0
  %entries27 = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 9
  store double* %entries, double** %entries27, align 8, !tbaa !0
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @DenseMtx_setA2(%struct._DenseMtx* %mtx, %struct._A2* %a2) #0 {
entry:
  %cmp = icmp eq %struct._DenseMtx* %mtx, null
  %cmp1 = icmp eq %struct._A2* %a2, null
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([52 x i8]* @.str10, i64 0, i64 0), %struct._DenseMtx* %mtx, %struct._A2* %a2) #4
  tail call void @exit(i32 -1) #5
  unreachable

if.end:                                           ; preds = %entry
  %type = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 0
  %1 = load i32* %type, align 4, !tbaa !3
  %nrow = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 3
  %2 = load i32* %nrow, align 4, !tbaa !3
  %ncol = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 4
  %3 = load i32* %ncol, align 4, !tbaa !3
  %inc1 = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 5
  %4 = load i32* %inc1, align 4, !tbaa !3
  %inc2 = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 6
  %5 = load i32* %inc2, align 4, !tbaa !3
  %entries = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 9
  %6 = load double** %entries, align 8, !tbaa !0
  tail call void @A2_init(%struct._A2* %a2, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, double* %6) #4
  ret void
}

; Function Attrs: optsize
declare void @A2_init(%struct._A2*, i32, i32, i32, i32, i32, double*) #3

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize }
attributes #5 = { noreturn nounwind optsize }
attributes #6 = { optsize }

!0 = metadata !{metadata !"any pointer", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"int", metadata !1}
