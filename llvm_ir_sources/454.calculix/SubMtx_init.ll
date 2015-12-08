; ModuleID = '../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_init.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct._SubMtx = type { i32, i32, i32, i32, i32, i32, i32, double*, %struct._DV, %struct._SubMtx* }
%struct._DV = type { i32, i32, i32, double* }

@stderr = external global %struct._IO_FILE*
@.str = private unnamed_addr constant [65 x i8] c"\0A fatal error in SubMtx_nbytesNeeded(%d,%d,%d,%d,%d)\0A bad input\0A\00", align 1
@.str1 = private unnamed_addr constant [64 x i8] c"\0A fatal error in SubMtx_nbytesNeeded(%d,%d,%d,%d,%d)\0A bad type\0A\00", align 1
@.str2 = private unnamed_addr constant [64 x i8] c"\0A fatal error in SubMtx_nbytesNeeded(%d,%d,%d,%d,%d)\0A bad mode\0A\00", align 1
@.str3 = private unnamed_addr constant [52 x i8] c"\0A fatal error in SubMtx_nbytesInUse(%p)\0A bad input\0A\00", align 1
@.str4 = private unnamed_addr constant [50 x i8] c"\0A fatal error in SubMtx_workspace(%p)\0A bad input\0A\00", align 1
@.str5 = private unnamed_addr constant [58 x i8] c"\0A fatal error in SubMtx_nbytesInWorkspace(%p)\0A bad input\0A\00", align 1
@.str6 = private unnamed_addr constant [61 x i8] c"\0A fatal error in SubMtx_setNbytesInWorkspace(%p)\0A bad input\0A\00", align 1
@.str7 = private unnamed_addr constant [50 x i8] c"\0A fatal error in SubMtx_setFields()\0A mtx is NULL\0A\00", align 1
@.str8 = private unnamed_addr constant [53 x i8] c"\0A fatal error in SubMtx_setFields()\0A nrow = %d <= 0\0A\00", align 1
@.str9 = private unnamed_addr constant [53 x i8] c"\0A fatal error in SubMtx_setFields()\0A ncol = %d <= 0\0A\00", align 1
@.str11 = private unnamed_addr constant [53 x i8] c"\0A fatal error in SubMtx_setFields()\0A invalid type %d\00", align 1
@.str12 = private unnamed_addr constant [53 x i8] c"\0A fatal error in SubMtx_setFields()\0A invalid mode %d\00", align 1
@.str13 = private unnamed_addr constant [45 x i8] c"\0A fatal error in SubMtx_init()\0A mtx is NULL\0A\00", align 1
@.str14 = private unnamed_addr constant [48 x i8] c"\0A fatal error in SubMtx_init()\0A nrow = %d <= 0\0A\00", align 1
@.str15 = private unnamed_addr constant [48 x i8] c"\0A fatal error in SubMtx_init()\0A ncol = %d <= 0\0A\00", align 1
@.str17 = private unnamed_addr constant [48 x i8] c"\0A fatal error in SubMtx_init()\0A invalid type %d\00", align 1
@.str18 = private unnamed_addr constant [48 x i8] c"\0A fatal error in SubMtx_init()\0A invalid mode %d\00", align 1
@.str19 = private unnamed_addr constant [55 x i8] c"\0A fatal error in SubMtx_initFromBuffer(%p)\0A bad input\0A\00", align 1

; Function Attrs: nounwind optsize uwtable
define i32 @SubMtx_nbytesNeeded(i32 %type, i32 %mode, i32 %nrow, i32 %ncol, i32 %nent) #0 {
entry:
  %cmp = icmp slt i32 %nrow, 1
  %cmp1 = icmp slt i32 %ncol, 1
  %or.cond = or i1 %cmp, %cmp1
  %cmp3 = icmp slt i32 %nent, 0
  %or.cond76 = or i1 %or.cond, %cmp3
  br i1 %or.cond76, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([65 x i8]* @.str, i64 0, i64 0), i32 %type, i32 %mode, i32 %nrow, i32 %ncol, i32 %nent) #5
  tail call void @exit(i32 -1) #6
  unreachable

if.end:                                           ; preds = %entry
  %.off = add i32 %type, -1
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %sw.epilog, label %sw.default

sw.default:                                       ; preds = %if.end
  %1 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call4 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([64 x i8]* @.str1, i64 0, i64 0), i32 %type, i32 %mode, i32 %nrow, i32 %ncol, i32 %nent) #5
  tail call void @exit(i32 -1) #6
  unreachable

sw.epilog:                                        ; preds = %if.end
  %switch39 = icmp ult i32 %mode, 10
  br i1 %switch39, label %sw.epilog8, label %sw.default6

sw.default6:                                      ; preds = %sw.epilog
  %2 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call7 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([64 x i8]* @.str2, i64 0, i64 0), i32 %type, i32 %mode, i32 %nrow, i32 %ncol, i32 %nent) #5
  tail call void @exit(i32 -1) #6
  unreachable

sw.epilog8:                                       ; preds = %sw.epilog
  %add = add nsw i32 %nrow, 7
  %add9 = add nsw i32 %add, %ncol
  %not.cmp10 = icmp ne i32 %type, 1
  %mul = zext i1 %not.cmp10 to i32
  %nent.mul = shl nsw i32 %nent, %mul
  switch i32 %mode, label %sw.epilog34 [
    i32 2, label %sw.bb16
    i32 3, label %sw.bb19
    i32 4, label %sw.bb22
    i32 5, label %sw.bb25
    i32 6, label %sw.bb28
    i32 9, label %sw.bb31
    i32 8, label %sw.bb31
  ]

sw.bb16:                                          ; preds = %sw.epilog8
  %add17 = add nsw i32 %nent, %nrow
  %add18 = add nsw i32 %add17, %add9
  br label %sw.epilog34

sw.bb19:                                          ; preds = %sw.epilog8
  %add20 = add nsw i32 %nent, %ncol
  %add21 = add nsw i32 %add20, %add9
  br label %sw.epilog34

sw.bb22:                                          ; preds = %sw.epilog8
  %mul23 = shl i32 %nent, 1
  %add24 = add nsw i32 %mul23, %add9
  br label %sw.epilog34

sw.bb25:                                          ; preds = %sw.epilog8
  %mul26 = shl i32 %nrow, 1
  %add27 = add nsw i32 %add9, %mul26
  br label %sw.epilog34

sw.bb28:                                          ; preds = %sw.epilog8
  %mul29 = shl i32 %ncol, 1
  %add30 = add nsw i32 %add9, %mul29
  br label %sw.epilog34

sw.bb31:                                          ; preds = %sw.epilog8, %sw.epilog8
  %add32 = add nsw i32 %add9, %ncol
  br label %sw.epilog34

sw.epilog34:                                      ; preds = %sw.epilog8, %sw.bb31, %sw.bb28, %sw.bb25, %sw.bb22, %sw.bb19, %sw.bb16
  %nint.0 = phi i32 [ %add9, %sw.epilog8 ], [ %add32, %sw.bb31 ], [ %add30, %sw.bb28 ], [ %add27, %sw.bb25 ], [ %add24, %sw.bb22 ], [ %add21, %sw.bb19 ], [ %add18, %sw.bb16 ]
  %add35 = add nsw i32 %nint.0, 1
  %div = sdiv i32 %add35, 2
  %add36 = add nsw i32 %div, %nent.mul
  %mul37 = shl i32 %add36, 3
  ret i32 %mul37
}

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #1

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32) #2

; Function Attrs: nounwind optsize uwtable
define i32 @SubMtx_nbytesInUse(%struct._SubMtx* %mtx) #0 {
entry:
  %cmp = icmp eq %struct._SubMtx* %mtx, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([52 x i8]* @.str3, i64 0, i64 0), %struct._SubMtx* null) #5
  tail call void @exit(i32 -1) #6
  unreachable

if.end:                                           ; preds = %entry
  %wrkDV = getelementptr inbounds %struct._SubMtx* %mtx, i64 0, i32 8
  %call1 = tail call i32 @DV_size(%struct._DV* %wrkDV) #5
  %mul = shl i32 %call1, 3
  ret i32 %mul
}

; Function Attrs: optsize
declare i32 @DV_size(%struct._DV*) #3

; Function Attrs: nounwind optsize uwtable
define i8* @SubMtx_workspace(%struct._SubMtx* %mtx) #0 {
entry:
  %cmp = icmp eq %struct._SubMtx* %mtx, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([50 x i8]* @.str4, i64 0, i64 0), %struct._SubMtx* null) #5
  tail call void @exit(i32 -1) #6
  unreachable

if.end:                                           ; preds = %entry
  %wrkDV = getelementptr inbounds %struct._SubMtx* %mtx, i64 0, i32 8
  %call1 = tail call double* @DV_entries(%struct._DV* %wrkDV) #5
  %1 = bitcast double* %call1 to i8*
  ret i8* %1
}

; Function Attrs: optsize
declare double* @DV_entries(%struct._DV*) #3

; Function Attrs: nounwind optsize uwtable
define i32 @SubMtx_nbytesInWorkspace(%struct._SubMtx* %mtx) #0 {
entry:
  %cmp = icmp eq %struct._SubMtx* %mtx, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([58 x i8]* @.str5, i64 0, i64 0), %struct._SubMtx* null) #5
  tail call void @exit(i32 -1) #6
  unreachable

if.end:                                           ; preds = %entry
  %wrkDV = getelementptr inbounds %struct._SubMtx* %mtx, i64 0, i32 8
  %call1 = tail call i32 @DV_maxsize(%struct._DV* %wrkDV) #5
  %mul = shl i32 %call1, 3
  ret i32 %mul
}

; Function Attrs: optsize
declare i32 @DV_maxsize(%struct._DV*) #3

; Function Attrs: nounwind optsize uwtable
define void @SubMtx_setNbytesInWorkspace(%struct._SubMtx* %mtx, i32 %nbytes) #0 {
entry:
  %cmp = icmp eq %struct._SubMtx* %mtx, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([61 x i8]* @.str6, i64 0, i64 0), %struct._SubMtx* null) #5
  tail call void @exit(i32 -1) #6
  unreachable

if.end:                                           ; preds = %entry
  %wrkDV = getelementptr inbounds %struct._SubMtx* %mtx, i64 0, i32 8
  %conv = sext i32 %nbytes to i64
  %div = lshr i64 %conv, 3
  %conv1 = trunc i64 %div to i32
  tail call void @DV_setSize(%struct._DV* %wrkDV, i32 %conv1) #5
  ret void
}

; Function Attrs: optsize
declare void @DV_setSize(%struct._DV*, i32) #3

; Function Attrs: nounwind optsize uwtable
define void @SubMtx_setFields(%struct._SubMtx* %mtx, i32 %type, i32 %mode, i32 %rowid, i32 %colid, i32 %nrow, i32 %ncol, i32 %nent) #0 {
entry:
  %cmp = icmp eq %struct._SubMtx* %mtx, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %1 = tail call i64 @fwrite(i8* getelementptr inbounds ([50 x i8]* @.str7, i64 0, i64 0), i64 49, i64 1, %struct._IO_FILE* %0)
  tail call void @exit(i32 -1) #6
  unreachable

if.end:                                           ; preds = %entry
  %cmp1 = icmp slt i32 %nrow, 1
  br i1 %cmp1, label %if.then2, label %if.end4

if.then2:                                         ; preds = %if.end
  %2 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call3 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([53 x i8]* @.str8, i64 0, i64 0), i32 %nrow) #5
  tail call void @exit(i32 -1) #6
  unreachable

if.end4:                                          ; preds = %if.end
  %cmp5 = icmp slt i32 %ncol, 1
  br i1 %cmp5, label %if.then6, label %if.end12

if.then6:                                         ; preds = %if.end4
  %3 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call7 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([53 x i8]* @.str9, i64 0, i64 0), i32 %ncol) #5
  tail call void @exit(i32 -1) #6
  unreachable

if.end12:                                         ; preds = %if.end4
  %.off = add i32 %type, -1
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %sw.epilog, label %sw.default

sw.default:                                       ; preds = %if.end12
  %4 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call13 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([53 x i8]* @.str11, i64 0, i64 0), i32 %type) #5
  tail call void @exit(i32 -1) #6
  unreachable

sw.epilog:                                        ; preds = %if.end12
  %switch90 = icmp ult i32 %mode, 10
  br i1 %switch90, label %sw.epilog17, label %sw.default15

sw.default15:                                     ; preds = %sw.epilog
  %5 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call16 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([53 x i8]* @.str12, i64 0, i64 0), i32 %mode) #5
  tail call void @exit(i32 -1) #6
  unreachable

sw.epilog17:                                      ; preds = %sw.epilog
  %wrkDV = getelementptr inbounds %struct._SubMtx* %mtx, i64 0, i32 8
  %call18 = tail call double* @DV_entries(%struct._DV* %wrkDV) #5
  %6 = bitcast double* %call18 to i32*
  store i32 %type, i32* %6, align 4, !tbaa !3
  %type19 = getelementptr inbounds %struct._SubMtx* %mtx, i64 0, i32 0
  store i32 %type, i32* %type19, align 4, !tbaa !3
  %arrayidx20 = getelementptr inbounds i32* %6, i64 1
  store i32 %mode, i32* %arrayidx20, align 4, !tbaa !3
  %mode21 = getelementptr inbounds %struct._SubMtx* %mtx, i64 0, i32 1
  store i32 %mode, i32* %mode21, align 4, !tbaa !3
  %arrayidx22143 = getelementptr inbounds double* %call18, i64 1
  %arrayidx22 = bitcast double* %arrayidx22143 to i32*
  store i32 %rowid, i32* %arrayidx22, align 4, !tbaa !3
  %rowid23 = getelementptr inbounds %struct._SubMtx* %mtx, i64 0, i32 2
  store i32 %rowid, i32* %rowid23, align 4, !tbaa !3
  %arrayidx24 = getelementptr inbounds i32* %6, i64 3
  store i32 %colid, i32* %arrayidx24, align 4, !tbaa !3
  %colid25 = getelementptr inbounds %struct._SubMtx* %mtx, i64 0, i32 3
  store i32 %colid, i32* %colid25, align 4, !tbaa !3
  %arrayidx26144 = getelementptr inbounds double* %call18, i64 2
  %arrayidx26 = bitcast double* %arrayidx26144 to i32*
  store i32 %nrow, i32* %arrayidx26, align 4, !tbaa !3
  %nrow27 = getelementptr inbounds %struct._SubMtx* %mtx, i64 0, i32 4
  store i32 %nrow, i32* %nrow27, align 4, !tbaa !3
  %arrayidx28 = getelementptr inbounds i32* %6, i64 5
  store i32 %ncol, i32* %arrayidx28, align 4, !tbaa !3
  %ncol29 = getelementptr inbounds %struct._SubMtx* %mtx, i64 0, i32 5
  store i32 %ncol, i32* %ncol29, align 4, !tbaa !3
  %arrayidx30145 = getelementptr inbounds double* %call18, i64 3
  %arrayidx30 = bitcast double* %arrayidx30145 to i32*
  store i32 %nent, i32* %arrayidx30, align 4, !tbaa !3
  %nent31 = getelementptr inbounds %struct._SubMtx* %mtx, i64 0, i32 6
  store i32 %nent, i32* %nent31, align 4, !tbaa !3
  switch i32 %mode, label %sw.epilog88 [
    i32 0, label %sw.bb32
    i32 1, label %sw.bb32
    i32 7, label %sw.bb32
    i32 2, label %sw.bb36
    i32 3, label %sw.bb45
    i32 4, label %sw.bb54
    i32 5, label %sw.bb63
    i32 6, label %sw.bb72
    i32 8, label %sw.bb81
    i32 9, label %sw.bb81
  ]

sw.bb32:                                          ; preds = %sw.epilog17, %sw.epilog17, %sw.epilog17
  %7 = load i32* %nrow27, align 4, !tbaa !3
  %add = add nsw i32 %7, 7
  %8 = load i32* %ncol29, align 4, !tbaa !3
  %add35 = add nsw i32 %add, %8
  br label %sw.epilog88

sw.bb36:                                          ; preds = %sw.epilog17
  %9 = load i32* %nrow27, align 4, !tbaa !3
  %10 = load i32* %ncol29, align 4, !tbaa !3
  %factor = shl i32 %9, 1
  %add40 = add i32 %nent, 7
  %add42 = add i32 %add40, %10
  %add44 = add i32 %add42, %factor
  br label %sw.epilog88

sw.bb45:                                          ; preds = %sw.epilog17
  %11 = load i32* %nrow27, align 4, !tbaa !3
  %12 = load i32* %ncol29, align 4, !tbaa !3
  %factor146 = shl i32 %12, 1
  %add49 = add i32 %nent, 7
  %add51 = add i32 %add49, %11
  %add53 = add i32 %add51, %factor146
  br label %sw.epilog88

sw.bb54:                                          ; preds = %sw.epilog17
  %13 = load i32* %nrow27, align 4, !tbaa !3
  %14 = load i32* %ncol29, align 4, !tbaa !3
  %factor147 = shl i32 %nent, 1
  %add58 = add i32 %13, 7
  %add60 = add i32 %add58, %14
  %add62 = add i32 %add60, %factor147
  br label %sw.epilog88

sw.bb63:                                          ; preds = %sw.epilog17
  %15 = load i32* %nrow27, align 4, !tbaa !3
  %16 = load i32* %ncol29, align 4, !tbaa !3
  %factor148 = mul i32 %15, 3
  %add69 = add i32 %16, 7
  %add71 = add i32 %add69, %factor148
  br label %sw.epilog88

sw.bb72:                                          ; preds = %sw.epilog17
  %17 = load i32* %nrow27, align 4, !tbaa !3
  %18 = load i32* %ncol29, align 4, !tbaa !3
  %factor149 = mul i32 %18, 3
  %add78 = add i32 %17, 7
  %add80 = add i32 %add78, %factor149
  br label %sw.epilog88

sw.bb81:                                          ; preds = %sw.epilog17, %sw.epilog17
  %19 = load i32* %nrow27, align 4, !tbaa !3
  %20 = load i32* %ncol29, align 4, !tbaa !3
  %factor150 = shl i32 %19, 1
  %add85 = add i32 %20, 7
  %add87 = add i32 %add85, %factor150
  br label %sw.epilog88

sw.epilog88:                                      ; preds = %sw.epilog17, %sw.bb81, %sw.bb72, %sw.bb63, %sw.bb54, %sw.bb45, %sw.bb36, %sw.bb32
  %nint.0 = phi i32 [ undef, %sw.epilog17 ], [ %add87, %sw.bb81 ], [ %add80, %sw.bb72 ], [ %add71, %sw.bb63 ], [ %add62, %sw.bb54 ], [ %add53, %sw.bb45 ], [ %add44, %sw.bb36 ], [ %add35, %sw.bb32 ]
  %add89 = add nsw i32 %nint.0, 1
  %div = sdiv i32 %add89, 2
  %idx.ext = sext i32 %div to i64
  %add.ptr = getelementptr inbounds double* %call18, i64 %idx.ext
  %entries = getelementptr inbounds %struct._SubMtx* %mtx, i64 0, i32 7
  store double* %add.ptr, double** %entries, align 8, !tbaa !0
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @SubMtx_init(%struct._SubMtx* %mtx, i32 %type, i32 %mode, i32 %rowid, i32 %colid, i32 %nrow, i32 %ncol, i32 %nent) #0 {
entry:
  %nrow.addr = alloca i32, align 4
  %ncol.addr = alloca i32, align 4
  %colind = alloca i32*, align 8
  %rowind = alloca i32*, align 8
  store i32 %nrow, i32* %nrow.addr, align 4, !tbaa !3
  store i32 %ncol, i32* %ncol.addr, align 4, !tbaa !3
  %cmp = icmp eq %struct._SubMtx* %mtx, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %1 = call i64 @fwrite(i8* getelementptr inbounds ([45 x i8]* @.str13, i64 0, i64 0), i64 44, i64 1, %struct._IO_FILE* %0)
  call void @exit(i32 -1) #6
  unreachable

if.end:                                           ; preds = %entry
  %cmp1 = icmp slt i32 %nrow, 1
  br i1 %cmp1, label %if.then2, label %if.end4

if.then2:                                         ; preds = %if.end
  %2 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call3 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([48 x i8]* @.str14, i64 0, i64 0), i32 %nrow) #5
  call void @exit(i32 -1) #6
  unreachable

if.end4:                                          ; preds = %if.end
  %cmp5 = icmp slt i32 %ncol, 1
  br i1 %cmp5, label %if.then6, label %if.end12

if.then6:                                         ; preds = %if.end4
  %3 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call7 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([48 x i8]* @.str15, i64 0, i64 0), i32 %ncol) #5
  call void @exit(i32 -1) #6
  unreachable

if.end12:                                         ; preds = %if.end4
  %.off = add i32 %type, -1
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %sw.epilog, label %sw.default

sw.default:                                       ; preds = %if.end12
  %4 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call13 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([48 x i8]* @.str17, i64 0, i64 0), i32 %type) #5
  call void @exit(i32 -1) #6
  unreachable

sw.epilog:                                        ; preds = %if.end12
  %switch21 = icmp ult i32 %mode, 10
  br i1 %switch21, label %sw.epilog17, label %sw.default15

sw.default15:                                     ; preds = %sw.epilog
  %5 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call16 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([48 x i8]* @.str18, i64 0, i64 0), i32 %mode) #5
  call void @exit(i32 -1) #6
  unreachable

sw.epilog17:                                      ; preds = %sw.epilog
  %call18 = call i32 @SubMtx_nbytesNeeded(i32 %type, i32 %mode, i32 %nrow, i32 %ncol, i32 %nent) #7
  call void @SubMtx_setNbytesInWorkspace(%struct._SubMtx* %mtx, i32 %call18) #7
  %conv = sext i32 %call18 to i64
  %div = lshr i64 %conv, 3
  %conv19 = trunc i64 %div to i32
  %call20 = call i8* @SubMtx_workspace(%struct._SubMtx* %mtx) #7
  %6 = bitcast i8* %call20 to double*
  call void @DVzero(i32 %conv19, double* %6) #5
  call void @SubMtx_setFields(%struct._SubMtx* %mtx, i32 %type, i32 %mode, i32 %rowid, i32 %colid, i32 %nrow, i32 %ncol, i32 %nent) #7
  call void @SubMtx_rowIndices(%struct._SubMtx* %mtx, i32* %nrow.addr, i32** %rowind) #5
  %7 = load i32* %nrow.addr, align 4, !tbaa !3
  %8 = load i32** %rowind, align 8, !tbaa !0
  call void @IVramp(i32 %7, i32* %8, i32 0, i32 1) #5
  call void @SubMtx_columnIndices(%struct._SubMtx* %mtx, i32* %ncol.addr, i32** %colind) #5
  %9 = load i32* %ncol.addr, align 4, !tbaa !3
  %10 = load i32** %colind, align 8, !tbaa !0
  call void @IVramp(i32 %9, i32* %10, i32 0, i32 1) #5
  ret void
}

; Function Attrs: optsize
declare void @DVzero(i32, double*) #3

; Function Attrs: optsize
declare void @SubMtx_rowIndices(%struct._SubMtx*, i32*, i32**) #3

; Function Attrs: optsize
declare void @IVramp(i32, i32*, i32, i32) #3

; Function Attrs: optsize
declare void @SubMtx_columnIndices(%struct._SubMtx*, i32*, i32**) #3

; Function Attrs: nounwind optsize uwtable
define void @SubMtx_initFromBuffer(%struct._SubMtx* %mtx) #0 {
entry:
  %cmp = icmp eq %struct._SubMtx* %mtx, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([55 x i8]* @.str19, i64 0, i64 0), %struct._SubMtx* null) #5
  tail call void @exit(i32 -1) #6
  unreachable

if.end:                                           ; preds = %entry
  %wrkDV = getelementptr inbounds %struct._SubMtx* %mtx, i64 0, i32 8
  %call1 = tail call double* @DV_entries(%struct._DV* %wrkDV) #5
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
  tail call void @SubMtx_setFields(%struct._SubMtx* %mtx, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8) #7
  ret void
}

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #4

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
!3 = metadata !{metadata !"int", metadata !1}
