; ModuleID = '../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_instance.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct._SubMtx = type { i32, i32, i32, i32, i32, i32, i32, double*, %struct._DV, %struct._SubMtx* }
%struct._DV = type { i32, i32, i32, double* }

@stderr = external global %struct._IO_FILE*
@.str = private unnamed_addr constant [50 x i8] c"\0A fatal error in SubMtx_ids(%p,%p,%p)\0A bad input\0A\00", align 1
@.str1 = private unnamed_addr constant [50 x i8] c"\0A fatal error in SubMtx_ids(%p,%d,%d)\0A bad input\0A\00", align 1
@.str2 = private unnamed_addr constant [53 x i8] c"\0A fatal error in SubMtx_ids(%p,%p,%p,%p)\0A bad input\0A\00", align 1
@.str3 = private unnamed_addr constant [65 x i8] c"\0A fatal error in SubMtx_denseInfo(%p,%p,%p,%p,%p,%p)\0A bad input\0A\00", align 1
@.str4 = private unnamed_addr constant [108 x i8] c"\0A fatal error in SubMtx_denseInfo(%p,%p,%p,%p,%p,%p)\0A bad type %d, must be SPOOLES_REAL or SPOOLES_COMPLEX\0A\00", align 1
@.str5 = private unnamed_addr constant [118 x i8] c"\0A fatal error in SubMtx_denseInfo(%p,%p,%p,%p,%p,%p)\0A bad mode %d\0A must be SUBMTX_DENSE_ROWS or SUBMTX_DENSE_COLUMNS\0A\00", align 1
@.str6 = private unnamed_addr constant [70 x i8] c"\0A fatal error in SubMtx_sparseRowsInfo(%p,%p,%p,%p,%p,%p)\0A bad input\0A\00", align 1
@.str7 = private unnamed_addr constant [113 x i8] c"\0A fatal error in SubMtx_sparseRowsInfo(%p,%p,%p,%p,%p,%p)\0A bad type %d, must be SPOOLES_REAL or SPOOLES_COMPLEX\0A\00", align 1
@.str8 = private unnamed_addr constant [100 x i8] c"\0A fatal error in SubMtx_sparseRowsInfo(%p,%p,%p,%p,%p,%p)\0A bad mode %d, must be SUBMTX_SPARSE_ROWS\0A\00", align 1
@.str9 = private unnamed_addr constant [73 x i8] c"\0A fatal error in SubMtx_sparseColumnsInfo(%p,%p,%p,%p,%p,%p)\0A bad input\0A\00", align 1
@.str10 = private unnamed_addr constant [116 x i8] c"\0A fatal error in SubMtx_sparseColumnsInfo(%p,%p,%p,%p,%p,%p)\0A bad type %d, must be SPOOLES_REAL or SPOOLES_COMPLEX\0A\00", align 1
@.str11 = private unnamed_addr constant [106 x i8] c"\0A fatal error in SubMtx_sparseColumnsInfo(%p,%p,%p,%p,%p,%p)\0A bad mode %d\0A must be SUBMTX_SPARSE_COLUMNS\0A\00", align 1
@.str12 = private unnamed_addr constant [70 x i8] c"\0A fatal error in SubMtx_sparseTriplesInfo(%p,%p,%p,%p,%p)\0A bad input\0A\00", align 1
@.str13 = private unnamed_addr constant [113 x i8] c"\0A fatal error in SubMtx_sparseTriplesInfo(%p,%p,%p,%p,%p)\0A bad type %d, must be SPOOLES_REAL or SPOOLES_COMPLEX\0A\00", align 1
@.str14 = private unnamed_addr constant [103 x i8] c"\0A fatal error in SubMtx_sparseTriplesInfo(%p,%p,%p,%p,%p)\0A bad mode %d\0A must be SUBMTX_SPARSE_TRIPLES\0A\00", align 1
@.str15 = private unnamed_addr constant [72 x i8] c"\0A fatal error in SubMtx_denseSubrowsInfo(%p,%p,%p,%p,%p,%p)\0A bad input\0A\00", align 1
@.str16 = private unnamed_addr constant [115 x i8] c"\0A fatal error in SubMtx_denseSubrowsInfo(%p,%p,%p,%p,%p,%p)\0A bad type %d, must be SPOOLES_REAL or SPOOLES_COMPLEX\0A\00", align 1
@.str17 = private unnamed_addr constant [104 x i8] c"\0A fatal error in SubMtx_denseSubrowsInfo(%p,%p,%p,%p,%p,%p)\0A bad mode %d\0A must be SUBMTX_DENSE_SUBROWS\0A\00", align 1
@.str18 = private unnamed_addr constant [75 x i8] c"\0A fatal error in SubMtx_denseSubcolumnsInfo(%p,%p,%p,%p,%p,%p)\0A bad input\0A\00", align 1
@.str19 = private unnamed_addr constant [117 x i8] c"\0A fatal error in SubMtx_denseSubcolumsInfo(%p,%p,%p,%p,%p,%p)\0A bad type %d, must be SPOOLES_REAL or SPOOLES_COMPLEX\0A\00", align 1
@.str20 = private unnamed_addr constant [110 x i8] c"\0A fatal error in SubMtx_denseSubcolumnsInfo(%p,%p,%p,%p,%p,%p)\0A bad mode %d\0A must be SUBMTX_DENSE_SUBCOLUMNS\0A\00", align 1
@.str21 = private unnamed_addr constant [59 x i8] c"\0A fatal error in SubMtx_diagonalInfo(%p,%p,%p)\0A bad input\0A\00", align 1
@.str22 = private unnamed_addr constant [102 x i8] c"\0A fatal error in SubMtx_diagonalInfo(%p,%p,%p)\0A bad type %d, must be SPOOLES_REAL or SPOOLES_COMPLEX\0A\00", align 1
@.str23 = private unnamed_addr constant [86 x i8] c"\0A fatal error in SubMtx_diagonalInfo(%p,%p,%p)\0A bad mode %d\0A must be SUBMTX_DIAGONAL\0A\00", align 1
@.str24 = private unnamed_addr constant [70 x i8] c"\0A fatal error in SubMtx_blockDiagonalInfo(%p,%p,%p,%p,%p)\0A bad input\0A\00", align 1
@.str25 = private unnamed_addr constant [113 x i8] c"\0A fatal error in SubMtx_blockDiagonalInfo(%p,%p,%p,%p,%p)\0A bad type %d, must be SPOOLES_REAL or SPOOLES_COMPLEX\0A\00", align 1
@.str26 = private unnamed_addr constant [138 x i8] c"\0A fatal error in SubMtx_blockDiagonalInfo(%p,%p,%p,%p,%p)\0A bad mode %d\0A must be SUBMTX_BLOCK_DIAGONAL_SYM or SUBMTX_BLOCK_DIAGONAL_HERM \0A\00", align 1
@.str27 = private unnamed_addr constant [59 x i8] c"\0A fatal error in SubMtx_realEntry(%p,%d,%d,%p)\0A bad input\0A\00", align 1
@.str28 = private unnamed_addr constant [83 x i8] c"\0A fatal error in SubMtx_realEntry(%p,%d,%d,%p)\0A bad type %d, must be SPOOLES_REAL\0A\00", align 1
@.str29 = private unnamed_addr constant [60 x i8] c"\0A fatal error in SubMtx_realEntry(%p,%d,%d,%p)\0A bad mode %d\00", align 1
@.str30 = private unnamed_addr constant [65 x i8] c"\0A fatal error in SubMtx_complexEntry(%p,%d,%d,%p,%p)\0A bad input\0A\00", align 1
@.str31 = private unnamed_addr constant [92 x i8] c"\0A fatal error in SubMtx_complexEntry(%p,%d,%d,%p,%p)\0A bad type %d, must be SPOOLES_COMPLEX\0A\00", align 1
@.str32 = private unnamed_addr constant [66 x i8] c"\0A fatal error in SubMtx_complexEntry(%p,%d,%d,%p,%p)\0A bad mode %d\00", align 1
@.str33 = private unnamed_addr constant [69 x i8] c"\0A fatal error in SubMtx_locationOfRealEntry(%p,%d,%d,%p)\0A bad input\0A\00", align 1
@.str34 = private unnamed_addr constant [93 x i8] c"\0A fatal error in SubMtx_locationOfRealEntry(%p,%d,%d,%p)\0A bad type %d, must be SPOOLES_REAL\0A\00", align 1
@.str35 = private unnamed_addr constant [70 x i8] c"\0A fatal error in SubMtx_locationOfRealEntry(%p,%d,%d,%p)\0A bad mode %d\00", align 1
@.str36 = private unnamed_addr constant [75 x i8] c"\0A fatal error in SubMtx_locationOfComplexEntry(%p,%d,%d,%p,%p)\0A bad input\0A\00", align 1
@.str37 = private unnamed_addr constant [102 x i8] c"\0A fatal error in SubMtx_locationOfComplexEntry(%p,%d,%d,%p,%p)\0A bad type %d, must be SPOOLES_COMPLEX\0A\00", align 1
@.str38 = private unnamed_addr constant [76 x i8] c"\0A fatal error in SubMtx_locationOfComplexEntry(%p,%d,%d,%p,%p)\0A bad mode %d\00", align 1

; Function Attrs: nounwind optsize uwtable
define void @SubMtx_ids(%struct._SubMtx* %mtx, i32* %prowid, i32* %pcolid) #0 {
entry:
  %cmp = icmp eq %struct._SubMtx* %mtx, null
  %cmp1 = icmp eq i32* %prowid, null
  %or.cond = or i1 %cmp, %cmp1
  %cmp3 = icmp eq i32* %pcolid, null
  %or.cond11 = or i1 %or.cond, %cmp3
  br i1 %or.cond11, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([50 x i8]* @.str, i64 0, i64 0), %struct._SubMtx* %mtx, i32* %prowid, i32* %pcolid) #4
  tail call void @exit(i32 -1) #5
  unreachable

if.end:                                           ; preds = %entry
  %rowid = getelementptr inbounds %struct._SubMtx* %mtx, i64 0, i32 2
  %1 = load i32* %rowid, align 4, !tbaa !3
  store i32 %1, i32* %prowid, align 4, !tbaa !3
  %colid = getelementptr inbounds %struct._SubMtx* %mtx, i64 0, i32 3
  %2 = load i32* %colid, align 4, !tbaa !3
  store i32 %2, i32* %pcolid, align 4, !tbaa !3
  ret void
}

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #1

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32) #2

; Function Attrs: nounwind optsize uwtable
define void @SubMtx_setIds(%struct._SubMtx* %mtx, i32 %rowid, i32 %colid) #0 {
entry:
  %cmp = icmp eq %struct._SubMtx* %mtx, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([50 x i8]* @.str1, i64 0, i64 0), %struct._SubMtx* null, i32 %rowid, i32 %colid) #4
  tail call void @exit(i32 -1) #5
  unreachable

if.end:                                           ; preds = %entry
  %vec = getelementptr inbounds %struct._SubMtx* %mtx, i64 0, i32 8, i32 3
  %1 = load double** %vec, align 8, !tbaa !0
  %2 = bitcast double* %1 to i32*
  %rowid1 = getelementptr inbounds %struct._SubMtx* %mtx, i64 0, i32 2
  store i32 %rowid, i32* %rowid1, align 4, !tbaa !3
  %arrayidx11 = getelementptr inbounds double* %1, i64 1
  %arrayidx = bitcast double* %arrayidx11 to i32*
  store i32 %rowid, i32* %arrayidx, align 4, !tbaa !3
  %colid2 = getelementptr inbounds %struct._SubMtx* %mtx, i64 0, i32 3
  store i32 %colid, i32* %colid2, align 4, !tbaa !3
  %arrayidx3 = getelementptr inbounds i32* %2, i64 3
  store i32 %colid, i32* %arrayidx3, align 4, !tbaa !3
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @SubMtx_dimensions(%struct._SubMtx* %mtx, i32* %pnrow, i32* %pncol, i32* %pnent) #0 {
entry:
  %cmp = icmp eq %struct._SubMtx* %mtx, null
  %cmp1 = icmp eq i32* %pnrow, null
  %or.cond = or i1 %cmp, %cmp1
  %cmp3 = icmp eq i32* %pncol, null
  %or.cond16 = or i1 %or.cond, %cmp3
  %cmp5 = icmp eq i32* %pnent, null
  %or.cond17 = or i1 %or.cond16, %cmp5
  br i1 %or.cond17, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([53 x i8]* @.str2, i64 0, i64 0), %struct._SubMtx* %mtx, i32* %pnrow, i32* %pncol, i32* %pnent) #4
  tail call void @exit(i32 -1) #5
  unreachable

if.end:                                           ; preds = %entry
  %nrow = getelementptr inbounds %struct._SubMtx* %mtx, i64 0, i32 4
  %1 = load i32* %nrow, align 4, !tbaa !3
  store i32 %1, i32* %pnrow, align 4, !tbaa !3
  %ncol = getelementptr inbounds %struct._SubMtx* %mtx, i64 0, i32 5
  %2 = load i32* %ncol, align 4, !tbaa !3
  store i32 %2, i32* %pncol, align 4, !tbaa !3
  %nent = getelementptr inbounds %struct._SubMtx* %mtx, i64 0, i32 6
  %3 = load i32* %nent, align 4, !tbaa !3
  store i32 %3, i32* %pnent, align 4, !tbaa !3
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @SubMtx_rowIndices(%struct._SubMtx* nocapture %mtx, i32* nocapture %pnrow, i32** %prowind) #0 {
entry:
  %nrow = getelementptr inbounds %struct._SubMtx* %mtx, i64 0, i32 4
  %0 = load i32* %nrow, align 4, !tbaa !3
  store i32 %0, i32* %pnrow, align 4, !tbaa !3
  %cmp = icmp eq i32** %prowind, null
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %vec = getelementptr inbounds %struct._SubMtx* %mtx, i64 0, i32 8, i32 3
  %1 = load double** %vec, align 8, !tbaa !0
  %2 = bitcast double* %1 to i32*
  %add.ptr = getelementptr inbounds i32* %2, i64 7
  store i32* %add.ptr, i32** %prowind, align 8, !tbaa !0
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @SubMtx_columnIndices(%struct._SubMtx* nocapture %mtx, i32* nocapture %pncol, i32** %pcolind) #0 {
entry:
  %ncol = getelementptr inbounds %struct._SubMtx* %mtx, i64 0, i32 5
  %0 = load i32* %ncol, align 4, !tbaa !3
  store i32 %0, i32* %pncol, align 4, !tbaa !3
  %cmp = icmp eq i32** %pcolind, null
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %vec = getelementptr inbounds %struct._SubMtx* %mtx, i64 0, i32 8, i32 3
  %1 = load double** %vec, align 8, !tbaa !0
  %2 = bitcast double* %1 to i32*
  %nrow = getelementptr inbounds %struct._SubMtx* %mtx, i64 0, i32 4
  %3 = load i32* %nrow, align 4, !tbaa !3
  %idx.ext = sext i32 %3 to i64
  %add.ptr.sum = add i64 %idx.ext, 7
  %add.ptr1 = getelementptr inbounds i32* %2, i64 %add.ptr.sum
  store i32* %add.ptr1, i32** %pcolind, align 8, !tbaa !0
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @SubMtx_denseInfo(%struct._SubMtx* %mtx, i32* %pnrow, i32* %pncol, i32* %pinc1, i32* %pinc2, double** %pentries) #0 {
entry:
  %cmp = icmp eq %struct._SubMtx* %mtx, null
  %cmp1 = icmp eq i32* %pnrow, null
  %or.cond = or i1 %cmp, %cmp1
  %cmp3 = icmp eq i32* %pncol, null
  %or.cond75 = or i1 %or.cond, %cmp3
  %cmp5 = icmp eq i32* %pinc1, null
  %or.cond76 = or i1 %or.cond75, %cmp5
  %cmp7 = icmp eq i32* %pinc2, null
  %or.cond77 = or i1 %or.cond76, %cmp7
  %cmp9 = icmp eq double** %pentries, null
  %or.cond78 = or i1 %or.cond77, %cmp9
  br i1 %or.cond78, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([65 x i8]* @.str3, i64 0, i64 0), %struct._SubMtx* %mtx, i32* %pnrow, i32* %pncol, i32* %pinc1, i32* %pinc2, double** %pentries) #4
  tail call void @exit(i32 -1) #5
  unreachable

if.end:                                           ; preds = %entry
  %type = getelementptr inbounds %struct._SubMtx* %mtx, i64 0, i32 0
  %1 = load i32* %type, align 4, !tbaa !3
  %.off = add i32 %1, -1
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %if.end17, label %if.then14

if.then14:                                        ; preds = %if.end
  %2 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call16 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([108 x i8]* @.str4, i64 0, i64 0), %struct._SubMtx* %mtx, i32* %pnrow, i32* %pncol, i32* %pinc1, i32* %pinc2, double** %pentries, i32 %1) #4
  tail call void @exit(i32 -1) #5
  unreachable

if.end17:                                         ; preds = %if.end
  %mode = getelementptr inbounds %struct._SubMtx* %mtx, i64 0, i32 1
  %3 = load i32* %mode, align 4, !tbaa !3
  %switch79 = icmp ult i32 %3, 2
  br i1 %switch79, label %if.end25, label %if.then22

if.then22:                                        ; preds = %if.end17
  %4 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call24 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([118 x i8]* @.str5, i64 0, i64 0), %struct._SubMtx* %mtx, i32* %pnrow, i32* %pncol, i32* %pinc1, i32* %pinc2, double** %pentries, i32 %3) #4
  tail call void @exit(i32 -1) #5
  unreachable

if.end25:                                         ; preds = %if.end17
  %nrow = getelementptr inbounds %struct._SubMtx* %mtx, i64 0, i32 4
  %5 = load i32* %nrow, align 4, !tbaa !3
  store i32 %5, i32* %pnrow, align 4, !tbaa !3
  %ncol = getelementptr inbounds %struct._SubMtx* %mtx, i64 0, i32 5
  %6 = load i32* %ncol, align 4, !tbaa !3
  store i32 %6, i32* %pncol, align 4, !tbaa !3
  %7 = load i32* %mode, align 4, !tbaa !3
  %cmp27 = icmp eq i32 %7, 0
  br i1 %cmp27, label %if.then28, label %if.else

if.then28:                                        ; preds = %if.end25
  %8 = load i32* %ncol, align 4, !tbaa !3
  store i32 %8, i32* %pinc1, align 4, !tbaa !3
  br label %if.end31

if.else:                                          ; preds = %if.end25
  store i32 1, i32* %pinc1, align 4, !tbaa !3
  %9 = load i32* %nrow, align 4, !tbaa !3
  br label %if.end31

if.end31:                                         ; preds = %if.else, %if.then28
  %storemerge = phi i32 [ %9, %if.else ], [ 1, %if.then28 ]
  store i32 %storemerge, i32* %pinc2, align 4, !tbaa !3
  %vec = getelementptr inbounds %struct._SubMtx* %mtx, i64 0, i32 8, i32 3
  %10 = load double** %vec, align 8, !tbaa !0
  %11 = load i32* %nrow, align 4, !tbaa !3
  %12 = load i32* %ncol, align 4, !tbaa !3
  %add34 = add i32 %11, 8
  %add35 = add i32 %add34, %12
  %div = sdiv i32 %add35, 2
  %idx.ext = sext i32 %div to i64
  %add.ptr = getelementptr inbounds double* %10, i64 %idx.ext
  store double* %add.ptr, double** %pentries, align 8, !tbaa !0
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @SubMtx_sparseRowsInfo(%struct._SubMtx* %mtx, i32* %pnrow, i32* %pnent, i32** %psizes, i32** %pindices, double** %pentries) #0 {
entry:
  %cmp = icmp eq %struct._SubMtx* %mtx, null
  %cmp1 = icmp eq i32* %pnrow, null
  %or.cond = or i1 %cmp, %cmp1
  %cmp3 = icmp eq i32* %pnent, null
  %or.cond75 = or i1 %or.cond, %cmp3
  %cmp5 = icmp eq i32** %psizes, null
  %or.cond76 = or i1 %or.cond75, %cmp5
  %cmp7 = icmp eq i32** %pindices, null
  %or.cond77 = or i1 %or.cond76, %cmp7
  %cmp9 = icmp eq double** %pentries, null
  %or.cond78 = or i1 %or.cond77, %cmp9
  br i1 %or.cond78, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([70 x i8]* @.str6, i64 0, i64 0), %struct._SubMtx* %mtx, i32* %pnrow, i32* %pnent, i32** %psizes, i32** %pindices, double** %pentries) #4
  tail call void @exit(i32 -1) #5
  unreachable

if.end:                                           ; preds = %entry
  %type = getelementptr inbounds %struct._SubMtx* %mtx, i64 0, i32 0
  %1 = load i32* %type, align 4, !tbaa !3
  %.off = add i32 %1, -1
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %if.end17, label %if.then14

if.then14:                                        ; preds = %if.end
  %2 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call16 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([113 x i8]* @.str7, i64 0, i64 0), %struct._SubMtx* %mtx, i32* %pnrow, i32* %pnent, i32** %psizes, i32** %pindices, double** %pentries, i32 %1) #4
  tail call void @exit(i32 -1) #5
  unreachable

if.end17:                                         ; preds = %if.end
  %mode = getelementptr inbounds %struct._SubMtx* %mtx, i64 0, i32 1
  %3 = load i32* %mode, align 4, !tbaa !3
  %cmp18 = icmp eq i32 %3, 2
  br i1 %cmp18, label %if.end22, label %if.then19

if.then19:                                        ; preds = %if.end17
  %4 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call21 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([100 x i8]* @.str8, i64 0, i64 0), %struct._SubMtx* %mtx, i32* %pnrow, i32* %pnent, i32** %psizes, i32** %pindices, double** %pentries, i32 %3) #4
  tail call void @exit(i32 -1) #5
  unreachable

if.end22:                                         ; preds = %if.end17
  %nrow = getelementptr inbounds %struct._SubMtx* %mtx, i64 0, i32 4
  %5 = load i32* %nrow, align 4, !tbaa !3
  store i32 %5, i32* %pnrow, align 4, !tbaa !3
  %nent = getelementptr inbounds %struct._SubMtx* %mtx, i64 0, i32 6
  %6 = load i32* %nent, align 4, !tbaa !3
  store i32 %6, i32* %pnent, align 4, !tbaa !3
  %vec = getelementptr inbounds %struct._SubMtx* %mtx, i64 0, i32 8, i32 3
  %7 = load double** %vec, align 8, !tbaa !0
  %8 = bitcast double* %7 to i32*
  %9 = load i32* %nrow, align 4, !tbaa !3
  %add = add nsw i32 %9, 7
  %ncol = getelementptr inbounds %struct._SubMtx* %mtx, i64 0, i32 5
  %10 = load i32* %ncol, align 4, !tbaa !3
  %add24 = add nsw i32 %add, %10
  %idx.ext = sext i32 %add24 to i64
  %add.ptr = getelementptr inbounds i32* %8, i64 %idx.ext
  store i32* %add.ptr, i32** %psizes, align 8, !tbaa !0
  %add26 = add nsw i32 %add24, %9
  %idx.ext27 = sext i32 %add26 to i64
  %add.ptr28 = getelementptr inbounds i32* %8, i64 %idx.ext27
  store i32* %add.ptr28, i32** %pindices, align 8, !tbaa !0
  %11 = load i32* %nent, align 4, !tbaa !3
  %add30 = add i32 %11, 1
  %add31 = add i32 %add30, %add26
  %div = sdiv i32 %add31, 2
  %idx.ext32 = sext i32 %div to i64
  %add.ptr33 = getelementptr inbounds double* %7, i64 %idx.ext32
  store double* %add.ptr33, double** %pentries, align 8, !tbaa !0
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @SubMtx_sparseColumnsInfo(%struct._SubMtx* %mtx, i32* %pncol, i32* %pnent, i32** %psizes, i32** %pindices, double** %pentries) #0 {
entry:
  %cmp = icmp eq %struct._SubMtx* %mtx, null
  %cmp1 = icmp eq i32* %pncol, null
  %or.cond = or i1 %cmp, %cmp1
  %cmp3 = icmp eq i32* %pnent, null
  %or.cond75 = or i1 %or.cond, %cmp3
  %cmp5 = icmp eq i32** %psizes, null
  %or.cond76 = or i1 %or.cond75, %cmp5
  %cmp7 = icmp eq i32** %pindices, null
  %or.cond77 = or i1 %or.cond76, %cmp7
  %cmp9 = icmp eq double** %pentries, null
  %or.cond78 = or i1 %or.cond77, %cmp9
  br i1 %or.cond78, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([73 x i8]* @.str9, i64 0, i64 0), %struct._SubMtx* %mtx, i32* %pncol, i32* %pnent, i32** %psizes, i32** %pindices, double** %pentries) #4
  tail call void @exit(i32 -1) #5
  unreachable

if.end:                                           ; preds = %entry
  %type = getelementptr inbounds %struct._SubMtx* %mtx, i64 0, i32 0
  %1 = load i32* %type, align 4, !tbaa !3
  %.off = add i32 %1, -1
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %if.end17, label %if.then14

if.then14:                                        ; preds = %if.end
  %2 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call16 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([116 x i8]* @.str10, i64 0, i64 0), %struct._SubMtx* %mtx, i32* %pncol, i32* %pnent, i32** %psizes, i32** %pindices, double** %pentries, i32 %1) #4
  tail call void @exit(i32 -1) #5
  unreachable

if.end17:                                         ; preds = %if.end
  %mode = getelementptr inbounds %struct._SubMtx* %mtx, i64 0, i32 1
  %3 = load i32* %mode, align 4, !tbaa !3
  %cmp18 = icmp eq i32 %3, 3
  br i1 %cmp18, label %if.end22, label %if.then19

if.then19:                                        ; preds = %if.end17
  %4 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call21 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([106 x i8]* @.str11, i64 0, i64 0), %struct._SubMtx* %mtx, i32* %pncol, i32* %pnent, i32** %psizes, i32** %pindices, double** %pentries, i32 %3) #4
  tail call void @exit(i32 -1) #5
  unreachable

if.end22:                                         ; preds = %if.end17
  %ncol = getelementptr inbounds %struct._SubMtx* %mtx, i64 0, i32 5
  %5 = load i32* %ncol, align 4, !tbaa !3
  store i32 %5, i32* %pncol, align 4, !tbaa !3
  %nent = getelementptr inbounds %struct._SubMtx* %mtx, i64 0, i32 6
  %6 = load i32* %nent, align 4, !tbaa !3
  store i32 %6, i32* %pnent, align 4, !tbaa !3
  %vec = getelementptr inbounds %struct._SubMtx* %mtx, i64 0, i32 8, i32 3
  %7 = load double** %vec, align 8, !tbaa !0
  %8 = bitcast double* %7 to i32*
  %nrow = getelementptr inbounds %struct._SubMtx* %mtx, i64 0, i32 4
  %9 = load i32* %nrow, align 4, !tbaa !3
  %add = add nsw i32 %9, 7
  %10 = load i32* %ncol, align 4, !tbaa !3
  %add24 = add nsw i32 %add, %10
  %idx.ext = sext i32 %add24 to i64
  %add.ptr = getelementptr inbounds i32* %8, i64 %idx.ext
  store i32* %add.ptr, i32** %psizes, align 8, !tbaa !0
  %add26 = add nsw i32 %add24, %10
  %idx.ext27 = sext i32 %add26 to i64
  %add.ptr28 = getelementptr inbounds i32* %8, i64 %idx.ext27
  store i32* %add.ptr28, i32** %pindices, align 8, !tbaa !0
  %11 = load i32* %nent, align 4, !tbaa !3
  %add30 = add i32 %11, 1
  %add31 = add i32 %add30, %add26
  %div = sdiv i32 %add31, 2
  %idx.ext32 = sext i32 %div to i64
  %add.ptr33 = getelementptr inbounds double* %7, i64 %idx.ext32
  store double* %add.ptr33, double** %pentries, align 8, !tbaa !0
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @SubMtx_sparseTriplesInfo(%struct._SubMtx* %mtx, i32* %pnent, i32** %prowids, i32** %pcolids, double** %pentries) #0 {
entry:
  %cmp = icmp eq %struct._SubMtx* %mtx, null
  %cmp1 = icmp eq i32* %pnent, null
  %or.cond = or i1 %cmp, %cmp1
  %cmp3 = icmp eq i32** %prowids, null
  %or.cond67 = or i1 %or.cond, %cmp3
  %cmp5 = icmp eq i32** %pcolids, null
  %or.cond68 = or i1 %or.cond67, %cmp5
  %cmp7 = icmp eq double** %pentries, null
  %or.cond69 = or i1 %or.cond68, %cmp7
  br i1 %or.cond69, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([70 x i8]* @.str12, i64 0, i64 0), %struct._SubMtx* %mtx, i32* %pnent, i32** %prowids, i32** %pcolids, double** %pentries) #4
  tail call void @exit(i32 -1) #5
  unreachable

if.end:                                           ; preds = %entry
  %type = getelementptr inbounds %struct._SubMtx* %mtx, i64 0, i32 0
  %1 = load i32* %type, align 4, !tbaa !3
  %.off = add i32 %1, -1
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %if.end15, label %if.then12

if.then12:                                        ; preds = %if.end
  %2 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call14 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([113 x i8]* @.str13, i64 0, i64 0), %struct._SubMtx* %mtx, i32* %pnent, i32** %prowids, i32** %pcolids, double** %pentries, i32 %1) #4
  tail call void @exit(i32 -1) #5
  unreachable

if.end15:                                         ; preds = %if.end
  %mode = getelementptr inbounds %struct._SubMtx* %mtx, i64 0, i32 1
  %3 = load i32* %mode, align 4, !tbaa !3
  %cmp16 = icmp eq i32 %3, 4
  br i1 %cmp16, label %if.end20, label %if.then17

if.then17:                                        ; preds = %if.end15
  %4 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call19 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([103 x i8]* @.str14, i64 0, i64 0), %struct._SubMtx* %mtx, i32* %pnent, i32** %prowids, i32** %pcolids, double** %pentries, i32 %3) #4
  tail call void @exit(i32 -1) #5
  unreachable

if.end20:                                         ; preds = %if.end15
  %nent = getelementptr inbounds %struct._SubMtx* %mtx, i64 0, i32 6
  %5 = load i32* %nent, align 4, !tbaa !3
  store i32 %5, i32* %pnent, align 4, !tbaa !3
  %vec = getelementptr inbounds %struct._SubMtx* %mtx, i64 0, i32 8, i32 3
  %6 = load double** %vec, align 8, !tbaa !0
  %7 = bitcast double* %6 to i32*
  %nrow = getelementptr inbounds %struct._SubMtx* %mtx, i64 0, i32 4
  %8 = load i32* %nrow, align 4, !tbaa !3
  %add = add nsw i32 %8, 7
  %ncol = getelementptr inbounds %struct._SubMtx* %mtx, i64 0, i32 5
  %9 = load i32* %ncol, align 4, !tbaa !3
  %add21 = add nsw i32 %add, %9
  %idx.ext = sext i32 %add21 to i64
  %add.ptr = getelementptr inbounds i32* %7, i64 %idx.ext
  store i32* %add.ptr, i32** %prowids, align 8, !tbaa !0
  %10 = load i32* %nent, align 4, !tbaa !3
  %add23 = add nsw i32 %add21, %10
  %idx.ext24 = sext i32 %add23 to i64
  %add.ptr25 = getelementptr inbounds i32* %7, i64 %idx.ext24
  store i32* %add.ptr25, i32** %pcolids, align 8, !tbaa !0
  %add27 = add i32 %10, 1
  %add28 = add i32 %add27, %add23
  %div = sdiv i32 %add28, 2
  %idx.ext29 = sext i32 %div to i64
  %add.ptr30 = getelementptr inbounds double* %6, i64 %idx.ext29
  store double* %add.ptr30, double** %pentries, align 8, !tbaa !0
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @SubMtx_denseSubrowsInfo(%struct._SubMtx* %mtx, i32* %pnrow, i32* %pnent, i32** %pfirstlocs, i32** %psizes, double** %pentries) #0 {
entry:
  %cmp = icmp eq %struct._SubMtx* %mtx, null
  %cmp1 = icmp eq i32* %pnrow, null
  %or.cond = or i1 %cmp, %cmp1
  %cmp3 = icmp eq i32* %pnent, null
  %or.cond81 = or i1 %or.cond, %cmp3
  %cmp5 = icmp eq i32** %pfirstlocs, null
  %or.cond82 = or i1 %or.cond81, %cmp5
  %cmp7 = icmp eq i32** %psizes, null
  %or.cond83 = or i1 %or.cond82, %cmp7
  %cmp9 = icmp eq double** %pentries, null
  %or.cond84 = or i1 %or.cond83, %cmp9
  br i1 %or.cond84, label %if.then, label %if.end13

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([72 x i8]* @.str15, i64 0, i64 0), %struct._SubMtx* %mtx, i32* %pnrow, i32* %pnent, i32** %pfirstlocs, i32** %psizes, double** %pentries) #4
  br i1 %cmp, label %if.end, label %if.then11

if.then11:                                        ; preds = %if.then
  %1 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call12 = tail call i32 @SubMtx_writeForHumanEye(%struct._SubMtx* %mtx, %struct._IO_FILE* %1) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %if.then11
  tail call void @exit(i32 -1) #5
  unreachable

if.end13:                                         ; preds = %entry
  %type = getelementptr inbounds %struct._SubMtx* %mtx, i64 0, i32 0
  %2 = load i32* %type, align 4, !tbaa !3
  %.off = add i32 %2, -1
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %if.end21, label %if.then18

if.then18:                                        ; preds = %if.end13
  %3 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call20 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([115 x i8]* @.str16, i64 0, i64 0), %struct._SubMtx* %mtx, i32* %pnrow, i32* %pnent, i32** %pfirstlocs, i32** %psizes, double** %pentries, i32 %2) #4
  tail call void @exit(i32 -1) #5
  unreachable

if.end21:                                         ; preds = %if.end13
  %mode = getelementptr inbounds %struct._SubMtx* %mtx, i64 0, i32 1
  %4 = load i32* %mode, align 4, !tbaa !3
  %cmp22 = icmp eq i32 %4, 5
  br i1 %cmp22, label %if.end26, label %if.then23

if.then23:                                        ; preds = %if.end21
  %5 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call25 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([104 x i8]* @.str17, i64 0, i64 0), %struct._SubMtx* %mtx, i32* %pnrow, i32* %pnent, i32** %pfirstlocs, i32** %psizes, double** %pentries, i32 %4) #4
  tail call void @exit(i32 -1) #5
  unreachable

if.end26:                                         ; preds = %if.end21
  %nrow = getelementptr inbounds %struct._SubMtx* %mtx, i64 0, i32 4
  %6 = load i32* %nrow, align 4, !tbaa !3
  store i32 %6, i32* %pnrow, align 4, !tbaa !3
  %nent = getelementptr inbounds %struct._SubMtx* %mtx, i64 0, i32 6
  %7 = load i32* %nent, align 4, !tbaa !3
  store i32 %7, i32* %pnent, align 4, !tbaa !3
  %vec = getelementptr inbounds %struct._SubMtx* %mtx, i64 0, i32 8, i32 3
  %8 = load double** %vec, align 8, !tbaa !0
  %9 = bitcast double* %8 to i32*
  %10 = load i32* %nrow, align 4, !tbaa !3
  %add = add nsw i32 %10, 7
  %ncol = getelementptr inbounds %struct._SubMtx* %mtx, i64 0, i32 5
  %11 = load i32* %ncol, align 4, !tbaa !3
  %add28 = add nsw i32 %add, %11
  %idx.ext = sext i32 %add28 to i64
  %add.ptr = getelementptr inbounds i32* %9, i64 %idx.ext
  store i32* %add.ptr, i32** %pfirstlocs, align 8, !tbaa !0
  %add30 = add nsw i32 %add28, %10
  %idx.ext31 = sext i32 %add30 to i64
  %add.ptr32 = getelementptr inbounds i32* %9, i64 %idx.ext31
  store i32* %add.ptr32, i32** %psizes, align 8, !tbaa !0
  %add34 = add i32 %10, 1
  %add35 = add i32 %add34, %add30
  %div = sdiv i32 %add35, 2
  %idx.ext36 = sext i32 %div to i64
  %add.ptr37 = getelementptr inbounds double* %8, i64 %idx.ext36
  store double* %add.ptr37, double** %pentries, align 8, !tbaa !0
  ret void
}

; Function Attrs: optsize
declare i32 @SubMtx_writeForHumanEye(%struct._SubMtx*, %struct._IO_FILE*) #3

; Function Attrs: nounwind optsize uwtable
define void @SubMtx_denseSubcolumnsInfo(%struct._SubMtx* %mtx, i32* %pncol, i32* %pnent, i32** %pfirstlocs, i32** %psizes, double** %pentries) #0 {
entry:
  %cmp = icmp eq %struct._SubMtx* %mtx, null
  %cmp1 = icmp eq i32** %pfirstlocs, null
  %or.cond = or i1 %cmp, %cmp1
  %cmp3 = icmp eq i32** %psizes, null
  %or.cond69 = or i1 %or.cond, %cmp3
  %cmp5 = icmp eq double** %pentries, null
  %or.cond70 = or i1 %or.cond69, %cmp5
  br i1 %or.cond70, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([75 x i8]* @.str18, i64 0, i64 0), %struct._SubMtx* %mtx, i32* %pncol, i32* %pnent, i32** %pfirstlocs, i32** %psizes, double** %pentries) #4
  tail call void @exit(i32 -1) #5
  unreachable

if.end:                                           ; preds = %entry
  %type = getelementptr inbounds %struct._SubMtx* %mtx, i64 0, i32 0
  %1 = load i32* %type, align 4, !tbaa !3
  %.off = add i32 %1, -1
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %if.end13, label %if.then10

if.then10:                                        ; preds = %if.end
  %2 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call12 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([117 x i8]* @.str19, i64 0, i64 0), %struct._SubMtx* %mtx, i32* %pncol, i32* %pnent, i32** %pfirstlocs, i32** %psizes, double** %pentries, i32 %1) #4
  tail call void @exit(i32 -1) #5
  unreachable

if.end13:                                         ; preds = %if.end
  %mode = getelementptr inbounds %struct._SubMtx* %mtx, i64 0, i32 1
  %3 = load i32* %mode, align 4, !tbaa !3
  %cmp14 = icmp eq i32 %3, 6
  br i1 %cmp14, label %if.end18, label %if.then15

if.then15:                                        ; preds = %if.end13
  %4 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call17 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([110 x i8]* @.str20, i64 0, i64 0), %struct._SubMtx* %mtx, i32* %pncol, i32* %pnent, i32** %pfirstlocs, i32** %psizes, double** %pentries, i32 %3) #4
  tail call void @exit(i32 -1) #5
  unreachable

if.end18:                                         ; preds = %if.end13
  %ncol = getelementptr inbounds %struct._SubMtx* %mtx, i64 0, i32 5
  %5 = load i32* %ncol, align 4, !tbaa !3
  store i32 %5, i32* %pncol, align 4, !tbaa !3
  %nent = getelementptr inbounds %struct._SubMtx* %mtx, i64 0, i32 6
  %6 = load i32* %nent, align 4, !tbaa !3
  store i32 %6, i32* %pnent, align 4, !tbaa !3
  %vec = getelementptr inbounds %struct._SubMtx* %mtx, i64 0, i32 8, i32 3
  %7 = load double** %vec, align 8, !tbaa !0
  %8 = bitcast double* %7 to i32*
  %nrow = getelementptr inbounds %struct._SubMtx* %mtx, i64 0, i32 4
  %9 = load i32* %nrow, align 4, !tbaa !3
  %add = add nsw i32 %9, 7
  %10 = load i32* %ncol, align 4, !tbaa !3
  %add20 = add nsw i32 %add, %10
  %idx.ext = sext i32 %add20 to i64
  %add.ptr = getelementptr inbounds i32* %8, i64 %idx.ext
  store i32* %add.ptr, i32** %pfirstlocs, align 8, !tbaa !0
  %add22 = add nsw i32 %add20, %10
  %idx.ext23 = sext i32 %add22 to i64
  %add.ptr24 = getelementptr inbounds i32* %8, i64 %idx.ext23
  store i32* %add.ptr24, i32** %psizes, align 8, !tbaa !0
  %add26 = add i32 %10, 1
  %add27 = add i32 %add26, %add22
  %div = sdiv i32 %add27, 2
  %idx.ext28 = sext i32 %div to i64
  %add.ptr29 = getelementptr inbounds double* %7, i64 %idx.ext28
  store double* %add.ptr29, double** %pentries, align 8, !tbaa !0
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @SubMtx_diagonalInfo(%struct._SubMtx* %mtx, i32* %pncol, double** %pentries) #0 {
entry:
  %cmp = icmp eq %struct._SubMtx* %mtx, null
  %cmp1 = icmp eq i32* %pncol, null
  %or.cond = or i1 %cmp, %cmp1
  %cmp3 = icmp eq double** %pentries, null
  %or.cond41 = or i1 %or.cond, %cmp3
  br i1 %or.cond41, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([59 x i8]* @.str21, i64 0, i64 0), %struct._SubMtx* %mtx, i32* %pncol, double** %pentries) #4
  tail call void @exit(i32 -1) #5
  unreachable

if.end:                                           ; preds = %entry
  %type = getelementptr inbounds %struct._SubMtx* %mtx, i64 0, i32 0
  %1 = load i32* %type, align 4, !tbaa !3
  %.off = add i32 %1, -1
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %if.end11, label %if.then8

if.then8:                                         ; preds = %if.end
  %2 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call10 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([102 x i8]* @.str22, i64 0, i64 0), %struct._SubMtx* %mtx, i32* %pncol, double** %pentries, i32 %1) #4
  tail call void @exit(i32 -1) #5
  unreachable

if.end11:                                         ; preds = %if.end
  %mode = getelementptr inbounds %struct._SubMtx* %mtx, i64 0, i32 1
  %3 = load i32* %mode, align 4, !tbaa !3
  %cmp12 = icmp eq i32 %3, 7
  br i1 %cmp12, label %if.end16, label %if.then13

if.then13:                                        ; preds = %if.end11
  %4 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call15 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([86 x i8]* @.str23, i64 0, i64 0), %struct._SubMtx* %mtx, i32* %pncol, double** %pentries, i32 %3) #4
  tail call void @exit(i32 -1) #5
  unreachable

if.end16:                                         ; preds = %if.end11
  %ncol = getelementptr inbounds %struct._SubMtx* %mtx, i64 0, i32 5
  %5 = load i32* %ncol, align 4, !tbaa !3
  store i32 %5, i32* %pncol, align 4, !tbaa !3
  %vec = getelementptr inbounds %struct._SubMtx* %mtx, i64 0, i32 8, i32 3
  %6 = load double** %vec, align 8, !tbaa !0
  %nrow = getelementptr inbounds %struct._SubMtx* %mtx, i64 0, i32 4
  %7 = load i32* %nrow, align 4, !tbaa !3
  %8 = load i32* %ncol, align 4, !tbaa !3
  %add18 = add i32 %7, 8
  %add19 = add i32 %add18, %8
  %div = sdiv i32 %add19, 2
  %idx.ext = sext i32 %div to i64
  %add.ptr = getelementptr inbounds double* %6, i64 %idx.ext
  store double* %add.ptr, double** %pentries, align 8, !tbaa !0
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @SubMtx_blockDiagonalInfo(%struct._SubMtx* %mtx, i32* %pncol, i32* %pnent, i32** %ppivotsizes, double** %pentries) #0 {
entry:
  %cmp = icmp eq %struct._SubMtx* %mtx, null
  %cmp1 = icmp eq i32* %pncol, null
  %or.cond = or i1 %cmp, %cmp1
  %cmp3 = icmp eq i32* %pnent, null
  %or.cond62 = or i1 %or.cond, %cmp3
  %cmp5 = icmp eq i32** %ppivotsizes, null
  %or.cond63 = or i1 %or.cond62, %cmp5
  %cmp7 = icmp eq double** %pentries, null
  %or.cond64 = or i1 %or.cond63, %cmp7
  br i1 %or.cond64, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([70 x i8]* @.str24, i64 0, i64 0), %struct._SubMtx* %mtx, i32* %pncol, i32* %pnent, i32** %ppivotsizes, double** %pentries) #4
  tail call void @exit(i32 -1) #5
  unreachable

if.end:                                           ; preds = %entry
  %type = getelementptr inbounds %struct._SubMtx* %mtx, i64 0, i32 0
  %1 = load i32* %type, align 4, !tbaa !3
  %.off = add i32 %1, -1
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %if.end15, label %if.then12

if.then12:                                        ; preds = %if.end
  %2 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call14 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([113 x i8]* @.str25, i64 0, i64 0), %struct._SubMtx* %mtx, i32* %pncol, i32* %pnent, i32** %ppivotsizes, double** %pentries, i32 %1) #4
  tail call void @exit(i32 -1) #5
  unreachable

if.end15:                                         ; preds = %if.end
  %mode = getelementptr inbounds %struct._SubMtx* %mtx, i64 0, i32 1
  %3 = load i32* %mode, align 4, !tbaa !3
  %.off65 = add i32 %3, -8
  %switch66 = icmp ult i32 %.off65, 2
  br i1 %switch66, label %if.end23, label %if.then20

if.then20:                                        ; preds = %if.end15
  %4 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call22 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([138 x i8]* @.str26, i64 0, i64 0), %struct._SubMtx* %mtx, i32* %pncol, i32* %pnent, i32** %ppivotsizes, double** %pentries, i32 %3) #4
  tail call void @exit(i32 -1) #5
  unreachable

if.end23:                                         ; preds = %if.end15
  %ncol = getelementptr inbounds %struct._SubMtx* %mtx, i64 0, i32 5
  %5 = load i32* %ncol, align 4, !tbaa !3
  store i32 %5, i32* %pncol, align 4, !tbaa !3
  %nent = getelementptr inbounds %struct._SubMtx* %mtx, i64 0, i32 6
  %6 = load i32* %nent, align 4, !tbaa !3
  store i32 %6, i32* %pnent, align 4, !tbaa !3
  %vec = getelementptr inbounds %struct._SubMtx* %mtx, i64 0, i32 8, i32 3
  %7 = load double** %vec, align 8, !tbaa !0
  %8 = bitcast double* %7 to i32*
  %nrow = getelementptr inbounds %struct._SubMtx* %mtx, i64 0, i32 4
  %9 = load i32* %nrow, align 4, !tbaa !3
  %mul = shl nsw i32 %9, 1
  %add = add nsw i32 %mul, 7
  %idx.ext = sext i32 %add to i64
  %add.ptr = getelementptr inbounds i32* %8, i64 %idx.ext
  store i32* %add.ptr, i32** %ppivotsizes, align 8, !tbaa !0
  %add25 = add i32 %9, 1
  %add26 = add i32 %add25, %add
  %div = sdiv i32 %add26, 2
  %idx.ext27 = sext i32 %div to i64
  %add.ptr28 = getelementptr inbounds double* %7, i64 %idx.ext27
  store double* %add.ptr28, double** %pentries, align 8, !tbaa !0
  ret void
}

; Function Attrs: nounwind optsize uwtable
define i32 @SubMtx_realEntry(%struct._SubMtx* %mtx, i32 %irow, i32 %jcol, double* %pValue) #0 {
entry:
  %entries = alloca double*, align 8
  %inc1 = alloca i32, align 4
  %inc2 = alloca i32, align 4
  %ncol15 = alloca i32, align 4
  %nrow16 = alloca i32, align 4
  %entries28 = alloca double*, align 8
  %nent = alloca i32, align 4
  %nrow29 = alloca i32, align 4
  %indices = alloca i32*, align 8
  %sizes = alloca i32*, align 8
  %entries57 = alloca double*, align 8
  %nent60 = alloca i32, align 4
  %ncol61 = alloca i32, align 4
  %indices63 = alloca i32*, align 8
  %sizes64 = alloca i32*, align 8
  %entries96 = alloca double*, align 8
  %nent98 = alloca i32, align 4
  %colids = alloca i32*, align 8
  %rowids = alloca i32*, align 8
  %entries116 = alloca double*, align 8
  %nent118 = alloca i32, align 4
  %nrow119 = alloca i32, align 4
  %firstlocs = alloca i32*, align 8
  %sizes121 = alloca i32*, align 8
  %entries153 = alloca double*, align 8
  %nent155 = alloca i32, align 4
  %ncol156 = alloca i32, align 4
  %firstlocs158 = alloca i32*, align 8
  %sizes159 = alloca i32*, align 8
  %entries192 = alloca double*, align 8
  %ncol193 = alloca i32, align 4
  %entries209 = alloca double*, align 8
  %ncol211 = alloca i32, align 4
  %nent212 = alloca i32, align 4
  %pivotsizes = alloca i32*, align 8
  %entries256 = alloca double*, align 8
  %ncol262 = alloca i32, align 4
  %nent263 = alloca i32, align 4
  %pivotsizes265 = alloca i32*, align 8
  %cmp = icmp eq %struct._SubMtx* %mtx, null
  %cmp1 = icmp slt i32 %irow, 0
  %or.cond585 = or i1 %cmp, %cmp1
  br i1 %or.cond585, label %if.then, label %lor.lhs.false2

lor.lhs.false2:                                   ; preds = %entry
  %nrow = getelementptr inbounds %struct._SubMtx* %mtx, i64 0, i32 4
  %0 = load i32* %nrow, align 4, !tbaa !3
  %cmp3 = icmp sle i32 %0, %irow
  %cmp5 = icmp slt i32 %jcol, 0
  %or.cond586 = or i1 %cmp3, %cmp5
  br i1 %or.cond586, label %if.then, label %lor.lhs.false6

lor.lhs.false6:                                   ; preds = %lor.lhs.false2
  %ncol = getelementptr inbounds %struct._SubMtx* %mtx, i64 0, i32 5
  %1 = load i32* %ncol, align 4, !tbaa !3
  %cmp7 = icmp sle i32 %1, %jcol
  %cmp9 = icmp eq double* %pValue, null
  %or.cond = or i1 %cmp7, %cmp9
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false2, %lor.lhs.false6, %entry
  %2 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([59 x i8]* @.str27, i64 0, i64 0), %struct._SubMtx* %mtx, i32 %irow, i32 %jcol, double* %pValue) #4
  call void @exit(i32 -1) #5
  unreachable

if.end:                                           ; preds = %lor.lhs.false6
  %type = getelementptr inbounds %struct._SubMtx* %mtx, i64 0, i32 0
  %3 = load i32* %type, align 4, !tbaa !3
  %cmp10 = icmp eq i32 %3, 1
  br i1 %cmp10, label %if.end14, label %if.then11

if.then11:                                        ; preds = %if.end
  %4 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call13 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([83 x i8]* @.str28, i64 0, i64 0), %struct._SubMtx* %mtx, i32 %irow, i32 %jcol, double* %pValue, i32 %3) #4
  call void @exit(i32 -1) #5
  unreachable

if.end14:                                         ; preds = %if.end
  store double 0.000000e+00, double* %pValue, align 8, !tbaa !4
  %mode = getelementptr inbounds %struct._SubMtx* %mtx, i64 0, i32 1
  %5 = load i32* %mode, align 4, !tbaa !3
  switch i32 %5, label %sw.default [
    i32 0, label %lor.lhs.false18
    i32 1, label %lor.lhs.false18
    i32 2, label %lor.lhs.false32
    i32 3, label %lor.lhs.false66
    i32 4, label %sw.bb95
    i32 5, label %lor.lhs.false123
    i32 6, label %lor.lhs.false161
    i32 7, label %sw.bb191
    i32 8, label %sw.bb208
    i32 9, label %sw.bb255
  ]

lor.lhs.false18:                                  ; preds = %if.end14, %if.end14
  call void @SubMtx_denseInfo(%struct._SubMtx* %mtx, i32* %nrow16, i32* %ncol15, i32* %inc1, i32* %inc2, double** %entries) #6
  %6 = load i32* %nrow16, align 4, !tbaa !3
  %cmp19.not = icmp sgt i32 %6, %irow
  br i1 %cmp19.not, label %lor.lhs.false22, label %return

lor.lhs.false22:                                  ; preds = %lor.lhs.false18
  %7 = load i32* %ncol15, align 4, !tbaa !3
  %cmp23 = icmp sgt i32 %7, %jcol
  br i1 %cmp23, label %if.end25, label %return

if.end25:                                         ; preds = %lor.lhs.false22
  %8 = load i32* %inc1, align 4, !tbaa !3
  %mul = mul nsw i32 %8, %irow
  %9 = load i32* %inc2, align 4, !tbaa !3
  %mul26 = mul nsw i32 %9, %jcol
  %add = add nsw i32 %mul26, %mul
  %idxprom = sext i32 %add to i64
  %10 = load double** %entries, align 8, !tbaa !0
  %arrayidx = getelementptr inbounds double* %10, i64 %idxprom
  %11 = load double* %arrayidx, align 8, !tbaa !4
  store double %11, double* %pValue, align 8, !tbaa !4
  br label %return

lor.lhs.false32:                                  ; preds = %if.end14
  call void @SubMtx_sparseRowsInfo(%struct._SubMtx* %mtx, i32* %nrow29, i32* %nent, i32** %sizes, i32** %indices, double** %entries28) #6
  %12 = load i32* %nrow29, align 4, !tbaa !3
  %cmp33 = icmp sgt i32 %12, %irow
  br i1 %cmp33, label %for.cond.preheader, label %return

for.cond.preheader:                               ; preds = %lor.lhs.false32
  %cmp36490 = icmp sgt i32 %irow, 0
  %13 = load i32** %sizes, align 8, !tbaa !0
  br i1 %cmp36490, label %for.body, label %for.cond40.preheader

for.cond40.preheader:                             ; preds = %for.cond.preheader, %for.body
  %offset30.0.lcssa = phi i32 [ %add39, %for.body ], [ 0, %for.cond.preheader ]
  %idxprom41 = sext i32 %irow to i64
  %arrayidx42486 = getelementptr inbounds i32* %13, i64 %idxprom41
  %14 = load i32* %arrayidx42486, align 4, !tbaa !3
  %cmp43487 = icmp sgt i32 %14, 0
  br i1 %cmp43487, label %for.body44.lr.ph, label %return

for.body44.lr.ph:                                 ; preds = %for.cond40.preheader
  %15 = load i32** %indices, align 8, !tbaa !0
  %16 = sext i32 %offset30.0.lcssa to i64
  br label %for.body44

for.body:                                         ; preds = %for.cond.preheader, %for.body
  %indvars.iv552 = phi i64 [ %indvars.iv.next553, %for.body ], [ 0, %for.cond.preheader ]
  %offset30.0491 = phi i32 [ %add39, %for.body ], [ 0, %for.cond.preheader ]
  %arrayidx38 = getelementptr inbounds i32* %13, i64 %indvars.iv552
  %17 = load i32* %arrayidx38, align 4, !tbaa !3
  %add39 = add nsw i32 %17, %offset30.0491
  %indvars.iv.next553 = add i64 %indvars.iv552, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next553 to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %irow
  br i1 %exitcond, label %for.cond40.preheader, label %for.body

for.body44:                                       ; preds = %for.body44.lr.ph, %for.inc52
  %indvars.iv = phi i64 [ %16, %for.body44.lr.ph ], [ %indvars.iv.next, %for.inc52 ]
  %ii.1489 = phi i32 [ 0, %for.body44.lr.ph ], [ %inc53, %for.inc52 ]
  %jj.0488 = phi i32 [ %offset30.0.lcssa, %for.body44.lr.ph ], [ %inc54, %for.inc52 ]
  %arrayidx46 = getelementptr inbounds i32* %15, i64 %indvars.iv
  %18 = load i32* %arrayidx46, align 4, !tbaa !3
  %cmp47 = icmp eq i32 %18, %jcol
  br i1 %cmp47, label %if.then48, label %for.inc52

if.then48:                                        ; preds = %for.body44
  %19 = load double** %entries28, align 8, !tbaa !0
  %arrayidx50 = getelementptr inbounds double* %19, i64 %indvars.iv
  %20 = load double* %arrayidx50, align 8, !tbaa !4
  store double %20, double* %pValue, align 8, !tbaa !4
  br label %return

for.inc52:                                        ; preds = %for.body44
  %inc53 = add nsw i32 %ii.1489, 1
  %indvars.iv.next = add i64 %indvars.iv, 1
  %inc54 = add nsw i32 %jj.0488, 1
  %cmp43 = icmp slt i32 %inc53, %14
  br i1 %cmp43, label %for.body44, label %return

lor.lhs.false66:                                  ; preds = %if.end14
  call void @SubMtx_sparseColumnsInfo(%struct._SubMtx* %mtx, i32* %ncol61, i32* %nent60, i32** %sizes64, i32** %indices63, double** %entries57) #6
  %21 = load i32* %ncol61, align 4, !tbaa !3
  %cmp67 = icmp sgt i32 %21, %jcol
  br i1 %cmp67, label %for.cond70.preheader, label %return

for.cond70.preheader:                             ; preds = %lor.lhs.false66
  %cmp71499 = icmp sgt i32 %jcol, 0
  %22 = load i32** %sizes64, align 8, !tbaa !0
  br i1 %cmp71499, label %for.body72, label %for.cond79.preheader

for.cond79.preheader:                             ; preds = %for.cond70.preheader, %for.body72
  %offset62.0.lcssa = phi i32 [ %add75, %for.body72 ], [ 0, %for.cond70.preheader ]
  %idxprom80 = sext i32 %jcol to i64
  %arrayidx81495 = getelementptr inbounds i32* %22, i64 %idxprom80
  %23 = load i32* %arrayidx81495, align 4, !tbaa !3
  %cmp82496 = icmp sgt i32 %23, 0
  br i1 %cmp82496, label %for.body83.lr.ph, label %return

for.body83.lr.ph:                                 ; preds = %for.cond79.preheader
  %24 = load i32** %indices63, align 8, !tbaa !0
  %25 = sext i32 %offset62.0.lcssa to i64
  br label %for.body83

for.body72:                                       ; preds = %for.cond70.preheader, %for.body72
  %indvars.iv558 = phi i64 [ %indvars.iv.next559, %for.body72 ], [ 0, %for.cond70.preheader ]
  %offset62.0501 = phi i32 [ %add75, %for.body72 ], [ 0, %for.cond70.preheader ]
  %arrayidx74 = getelementptr inbounds i32* %22, i64 %indvars.iv558
  %26 = load i32* %arrayidx74, align 4, !tbaa !3
  %add75 = add nsw i32 %26, %offset62.0501
  %indvars.iv.next559 = add i64 %indvars.iv558, 1
  %lftr.wideiv560 = trunc i64 %indvars.iv.next559 to i32
  %exitcond561 = icmp eq i32 %lftr.wideiv560, %jcol
  br i1 %exitcond561, label %for.cond79.preheader, label %for.body72

for.body83:                                       ; preds = %for.body83.lr.ph, %for.inc91
  %indvars.iv556 = phi i64 [ %25, %for.body83.lr.ph ], [ %indvars.iv.next557, %for.inc91 ]
  %jj59.0498 = phi i32 [ %offset62.0.lcssa, %for.body83.lr.ph ], [ %inc93, %for.inc91 ]
  %ii58.1497 = phi i32 [ 0, %for.body83.lr.ph ], [ %inc92, %for.inc91 ]
  %arrayidx85 = getelementptr inbounds i32* %24, i64 %indvars.iv556
  %27 = load i32* %arrayidx85, align 4, !tbaa !3
  %cmp86 = icmp eq i32 %27, %irow
  br i1 %cmp86, label %if.then87, label %for.inc91

if.then87:                                        ; preds = %for.body83
  %28 = load double** %entries57, align 8, !tbaa !0
  %arrayidx89 = getelementptr inbounds double* %28, i64 %indvars.iv556
  %29 = load double* %arrayidx89, align 8, !tbaa !4
  store double %29, double* %pValue, align 8, !tbaa !4
  br label %return

for.inc91:                                        ; preds = %for.body83
  %inc92 = add nsw i32 %ii58.1497, 1
  %indvars.iv.next557 = add i64 %indvars.iv556, 1
  %inc93 = add nsw i32 %jj59.0498, 1
  %cmp82 = icmp slt i32 %inc92, %23
  br i1 %cmp82, label %for.body83, label %return

sw.bb95:                                          ; preds = %if.end14
  call void @SubMtx_sparseTriplesInfo(%struct._SubMtx* %mtx, i32* %nent98, i32** %rowids, i32** %colids, double** %entries96) #6
  %30 = load i32* %nent98, align 4, !tbaa !3
  %cmp100505 = icmp sgt i32 %30, 0
  br i1 %cmp100505, label %for.body101.lr.ph, label %return

for.body101.lr.ph:                                ; preds = %sw.bb95
  %31 = load i32** %rowids, align 8, !tbaa !0
  %32 = load i32** %colids, align 8, !tbaa !0
  br label %for.body101

for.body101:                                      ; preds = %for.body101.lr.ph, %for.inc112
  %indvars.iv564 = phi i64 [ 0, %for.body101.lr.ph ], [ %indvars.iv.next565, %for.inc112 ]
  %ii97.0506 = phi i32 [ 0, %for.body101.lr.ph ], [ %inc113, %for.inc112 ]
  %arrayidx103 = getelementptr inbounds i32* %31, i64 %indvars.iv564
  %33 = load i32* %arrayidx103, align 4, !tbaa !3
  %cmp104 = icmp eq i32 %33, %irow
  br i1 %cmp104, label %land.lhs.true, label %for.inc112

land.lhs.true:                                    ; preds = %for.body101
  %arrayidx106 = getelementptr inbounds i32* %32, i64 %indvars.iv564
  %34 = load i32* %arrayidx106, align 4, !tbaa !3
  %cmp107 = icmp eq i32 %34, %jcol
  br i1 %cmp107, label %if.then108, label %for.inc112

if.then108:                                       ; preds = %land.lhs.true
  %35 = load double** %entries96, align 8, !tbaa !0
  %arrayidx110 = getelementptr inbounds double* %35, i64 %indvars.iv564
  %36 = load double* %arrayidx110, align 8, !tbaa !4
  store double %36, double* %pValue, align 8, !tbaa !4
  br label %return

for.inc112:                                       ; preds = %for.body101, %land.lhs.true
  %indvars.iv.next565 = add i64 %indvars.iv564, 1
  %inc113 = add nsw i32 %ii97.0506, 1
  %37 = trunc i64 %indvars.iv.next565 to i32
  %cmp100 = icmp slt i32 %37, %30
  br i1 %cmp100, label %for.body101, label %return

lor.lhs.false123:                                 ; preds = %if.end14
  call void @SubMtx_denseSubrowsInfo(%struct._SubMtx* %mtx, i32* %nrow119, i32* %nent118, i32** %firstlocs, i32** %sizes121, double** %entries116) #6
  %38 = load i32* %nrow119, align 4, !tbaa !3
  %cmp124 = icmp sgt i32 %38, %irow
  br i1 %cmp124, label %lor.lhs.false125, label %return

lor.lhs.false125:                                 ; preds = %lor.lhs.false123
  %idxprom126 = sext i32 %irow to i64
  %39 = load i32** %sizes121, align 8, !tbaa !0
  %arrayidx127 = getelementptr inbounds i32* %39, i64 %idxprom126
  %40 = load i32* %arrayidx127, align 4, !tbaa !3
  %cmp128 = icmp eq i32 %40, 0
  br i1 %cmp128, label %return, label %for.cond131.preheader

for.cond131.preheader:                            ; preds = %lor.lhs.false125
  %cmp132507 = icmp sgt i32 %irow, 0
  br i1 %cmp132507, label %for.body133, label %for.end139

for.body133:                                      ; preds = %for.cond131.preheader, %for.body133
  %indvars.iv566 = phi i64 [ %indvars.iv.next567, %for.body133 ], [ 0, %for.cond131.preheader ]
  %offset120.0509 = phi i32 [ %add136, %for.body133 ], [ 0, %for.cond131.preheader ]
  %arrayidx135 = getelementptr inbounds i32* %39, i64 %indvars.iv566
  %41 = load i32* %arrayidx135, align 4, !tbaa !3
  %add136 = add nsw i32 %41, %offset120.0509
  %indvars.iv.next567 = add i64 %indvars.iv566, 1
  %lftr.wideiv568 = trunc i64 %indvars.iv.next567 to i32
  %exitcond569 = icmp eq i32 %lftr.wideiv568, %irow
  br i1 %exitcond569, label %for.end139, label %for.body133

for.end139:                                       ; preds = %for.body133, %for.cond131.preheader
  %offset120.0.lcssa = phi i32 [ 0, %for.cond131.preheader ], [ %add136, %for.body133 ]
  %42 = load i32** %firstlocs, align 8, !tbaa !0
  %arrayidx141 = getelementptr inbounds i32* %42, i64 %idxprom126
  %43 = load i32* %arrayidx141, align 4, !tbaa !3
  %sub = sub nsw i32 %jcol, %43
  %cmp142 = icmp sgt i32 %sub, -1
  %cmp146 = icmp slt i32 %sub, %40
  %or.cond587 = and i1 %cmp142, %cmp146
  br i1 %or.cond587, label %if.then147, label %return

if.then147:                                       ; preds = %for.end139
  %add148 = add nsw i32 %sub, %offset120.0.lcssa
  %idxprom149 = sext i32 %add148 to i64
  %44 = load double** %entries116, align 8, !tbaa !0
  %arrayidx150 = getelementptr inbounds double* %44, i64 %idxprom149
  %45 = load double* %arrayidx150, align 8, !tbaa !4
  store double %45, double* %pValue, align 8, !tbaa !4
  br label %return

lor.lhs.false161:                                 ; preds = %if.end14
  call void @SubMtx_denseSubcolumnsInfo(%struct._SubMtx* %mtx, i32* %ncol156, i32* %nent155, i32** %firstlocs158, i32** %sizes159, double** %entries153) #6
  %46 = load i32* %ncol156, align 4, !tbaa !3
  %cmp162 = icmp sgt i32 %46, %jcol
  br i1 %cmp162, label %lor.lhs.false163, label %return

lor.lhs.false163:                                 ; preds = %lor.lhs.false161
  %idxprom164 = sext i32 %jcol to i64
  %47 = load i32** %sizes159, align 8, !tbaa !0
  %arrayidx165 = getelementptr inbounds i32* %47, i64 %idxprom164
  %48 = load i32* %arrayidx165, align 4, !tbaa !3
  %cmp166 = icmp eq i32 %48, 0
  br i1 %cmp166, label %return, label %for.cond169.preheader

for.cond169.preheader:                            ; preds = %lor.lhs.false163
  %cmp170511 = icmp sgt i32 %jcol, 0
  br i1 %cmp170511, label %for.body171, label %for.end177

for.body171:                                      ; preds = %for.cond169.preheader, %for.body171
  %indvars.iv570 = phi i64 [ %indvars.iv.next571, %for.body171 ], [ 0, %for.cond169.preheader ]
  %offset157.0513 = phi i32 [ %add174, %for.body171 ], [ 0, %for.cond169.preheader ]
  %arrayidx173 = getelementptr inbounds i32* %47, i64 %indvars.iv570
  %49 = load i32* %arrayidx173, align 4, !tbaa !3
  %add174 = add nsw i32 %49, %offset157.0513
  %indvars.iv.next571 = add i64 %indvars.iv570, 1
  %lftr.wideiv572 = trunc i64 %indvars.iv.next571 to i32
  %exitcond573 = icmp eq i32 %lftr.wideiv572, %jcol
  br i1 %exitcond573, label %for.end177, label %for.body171

for.end177:                                       ; preds = %for.body171, %for.cond169.preheader
  %offset157.0.lcssa = phi i32 [ 0, %for.cond169.preheader ], [ %add174, %for.body171 ]
  %50 = load i32** %firstlocs158, align 8, !tbaa !0
  %arrayidx179 = getelementptr inbounds i32* %50, i64 %idxprom164
  %51 = load i32* %arrayidx179, align 4, !tbaa !3
  %sub180 = sub nsw i32 %irow, %51
  %cmp181 = icmp sgt i32 %sub180, -1
  %cmp185 = icmp slt i32 %sub180, %48
  %or.cond588 = and i1 %cmp181, %cmp185
  br i1 %or.cond588, label %if.then186, label %return

if.then186:                                       ; preds = %for.end177
  %add187 = add nsw i32 %sub180, %offset157.0.lcssa
  %idxprom188 = sext i32 %add187 to i64
  %52 = load double** %entries153, align 8, !tbaa !0
  %arrayidx189 = getelementptr inbounds double* %52, i64 %idxprom188
  %53 = load double* %arrayidx189, align 8, !tbaa !4
  store double %53, double* %pValue, align 8, !tbaa !4
  br label %return

sw.bb191:                                         ; preds = %if.end14
  %54 = or i32 %jcol, %irow
  %brmerge476.not = icmp sgt i32 %54, -1
  %cmp198 = icmp eq i32 %irow, %jcol
  %or.cond477 = and i1 %brmerge476.not, %cmp198
  br i1 %or.cond477, label %if.end200, label %return

if.end200:                                        ; preds = %sw.bb191
  call void @SubMtx_diagonalInfo(%struct._SubMtx* %mtx, i32* %ncol193, double** %entries192) #6
  %55 = load i32* %ncol193, align 4, !tbaa !3
  %cmp201 = icmp sgt i32 %55, %irow
  br i1 %cmp201, label %if.end205, label %return

if.end205:                                        ; preds = %if.end200
  %idxprom206 = sext i32 %irow to i64
  %56 = load double** %entries192, align 8, !tbaa !0
  %arrayidx207 = getelementptr inbounds double* %56, i64 %idxprom206
  %57 = load double* %arrayidx207, align 8, !tbaa !4
  store double %57, double* %pValue, align 8, !tbaa !4
  br label %return

sw.bb208:                                         ; preds = %if.end14
  %58 = or i32 %jcol, %irow
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %return, label %if.end217

if.end217:                                        ; preds = %sw.bb208
  %cmp218 = icmp sgt i32 %irow, %jcol
  %irow.jcol = select i1 %cmp218, i32 %irow, i32 %jcol
  %jcol.irow = select i1 %cmp218, i32 %jcol, i32 %irow
  call void @SubMtx_blockDiagonalInfo(%struct._SubMtx* %mtx, i32* %ncol211, i32* %nent212, i32** %pivotsizes, double** %entries209) #6
  %60 = load i32* %ncol211, align 4, !tbaa !3
  %cmp221 = icmp slt i32 %jcol.irow, %60
  %cmp223 = icmp slt i32 %irow.jcol, %60
  %or.cond480 = and i1 %cmp221, %cmp223
  br i1 %or.cond480, label %for.cond226.preheader, label %return

for.cond226.preheader:                            ; preds = %if.end217
  %cmp227527 = icmp slt i32 %jcol.irow, 0
  br i1 %cmp227527, label %return, label %for.body228.lr.ph

for.body228.lr.ph:                                ; preds = %for.cond226.preheader
  %61 = load i32** %pivotsizes, align 8, !tbaa !0
  br label %for.body228

for.body228:                                      ; preds = %for.body228.lr.ph, %for.inc252
  %indvars.iv577 = phi i64 [ 0, %for.body228.lr.ph ], [ %indvars.iv.next578, %for.inc252 ]
  %kk.0530 = phi i32 [ 0, %for.body228.lr.ph ], [ %kk.1.lcssa, %for.inc252 ]
  %jrow.0529 = phi i32 [ 0, %for.body228.lr.ph ], [ %jrow.1.lcssa, %for.inc252 ]
  %arrayidx230 = getelementptr inbounds i32* %61, i64 %indvars.iv577
  %62 = load i32* %arrayidx230, align 4, !tbaa !3
  %cmp232518 = icmp sgt i32 %62, 0
  br i1 %cmp232518, label %for.body233, label %for.inc252

for.body233:                                      ; preds = %for.body228, %if.else245
  %size.0522 = phi i32 [ %dec, %if.else245 ], [ %62, %for.body228 ]
  %kk.1521 = phi i32 [ %add246, %if.else245 ], [ %kk.0530, %for.body228 ]
  %jrow.1520 = phi i32 [ %inc250, %if.else245 ], [ %jrow.0529, %for.body228 ]
  %ii210.0519 = phi i32 [ %inc249, %if.else245 ], [ 0, %for.body228 ]
  %cmp234 = icmp eq i32 %jrow.1520, %jcol.irow
  br i1 %cmp234, label %if.then235, label %if.else245

if.then235:                                       ; preds = %for.body233
  %sub236 = sub nsw i32 %irow.jcol, %jcol.irow
  %sub237 = add i32 %62, -1
  %sub238 = sub i32 %sub237, %ii210.0519
  %cmp239 = icmp sgt i32 %sub236, %sub238
  br i1 %cmp239, label %return, label %if.else

if.else:                                          ; preds = %if.then235
  %add242 = add nsw i32 %kk.1521, %sub236
  %idxprom243 = sext i32 %add242 to i64
  %63 = load double** %entries209, align 8, !tbaa !0
  %arrayidx244 = getelementptr inbounds double* %63, i64 %idxprom243
  %64 = load double* %arrayidx244, align 8, !tbaa !4
  store double %64, double* %pValue, align 8, !tbaa !4
  br label %return

if.else245:                                       ; preds = %for.body233
  %dec = add nsw i32 %size.0522, -1
  %add246 = add nsw i32 %size.0522, %kk.1521
  %inc249 = add nsw i32 %ii210.0519, 1
  %inc250 = add nsw i32 %jrow.1520, 1
  %cmp232 = icmp slt i32 %inc249, %62
  br i1 %cmp232, label %for.body233, label %for.inc252

for.inc252:                                       ; preds = %if.else245, %for.body228
  %kk.1.lcssa = phi i32 [ %kk.0530, %for.body228 ], [ %add246, %if.else245 ]
  %jrow.1.lcssa = phi i32 [ %jrow.0529, %for.body228 ], [ %inc250, %if.else245 ]
  %indvars.iv.next578 = add i64 %indvars.iv577, 1
  %cmp227 = icmp sgt i32 %jrow.1.lcssa, %jcol.irow
  br i1 %cmp227, label %return, label %for.body228

sw.bb255:                                         ; preds = %if.end14
  %65 = or i32 %jcol, %irow
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %return, label %if.end270

if.end270:                                        ; preds = %sw.bb255
  %cmp271 = icmp sgt i32 %irow, %jcol
  %irow.jcol482 = select i1 %cmp271, i32 %irow, i32 %jcol
  %jcol.irow483 = select i1 %cmp271, i32 %jcol, i32 %irow
  call void @SubMtx_blockDiagonalInfo(%struct._SubMtx* %mtx, i32* %ncol262, i32* %nent263, i32** %pivotsizes265, double** %entries256) #6
  %67 = load i32* %ncol262, align 4, !tbaa !3
  %cmp275 = icmp slt i32 %jcol.irow483, %67
  %cmp277 = icmp slt i32 %irow.jcol482, %67
  %or.cond484 = and i1 %cmp275, %cmp277
  br i1 %or.cond484, label %for.cond280.preheader, label %return

for.cond280.preheader:                            ; preds = %if.end270
  %cmp281545 = icmp slt i32 %jcol.irow483, 0
  br i1 %cmp281545, label %return, label %for.body282.lr.ph

for.body282.lr.ph:                                ; preds = %for.cond280.preheader
  %68 = load i32** %pivotsizes265, align 8, !tbaa !0
  br label %for.body282

for.body282:                                      ; preds = %for.body282.lr.ph, %for.inc308
  %indvars.iv582 = phi i64 [ 0, %for.body282.lr.ph ], [ %indvars.iv.next583, %for.inc308 ]
  %kk260.0548 = phi i32 [ 0, %for.body282.lr.ph ], [ %kk260.1.lcssa, %for.inc308 ]
  %jrow259.0547 = phi i32 [ 0, %for.body282.lr.ph ], [ %jrow259.1.lcssa, %for.inc308 ]
  %arrayidx284 = getelementptr inbounds i32* %68, i64 %indvars.iv582
  %69 = load i32* %arrayidx284, align 4, !tbaa !3
  %cmp286535 = icmp sgt i32 %69, 0
  br i1 %cmp286535, label %for.body287, label %for.inc308

for.body287:                                      ; preds = %for.body282, %if.else300
  %size264.0539 = phi i32 [ %dec301, %if.else300 ], [ %69, %for.body282 ]
  %kk260.1538 = phi i32 [ %add302, %if.else300 ], [ %kk260.0548, %for.body282 ]
  %jrow259.1537 = phi i32 [ %inc306, %if.else300 ], [ %jrow259.0547, %for.body282 ]
  %ii257.0536 = phi i32 [ %inc305, %if.else300 ], [ 0, %for.body282 ]
  %cmp288 = icmp eq i32 %jrow259.1537, %jcol.irow483
  br i1 %cmp288, label %if.then289, label %if.else300

if.then289:                                       ; preds = %for.body287
  %sub290 = sub nsw i32 %irow.jcol482, %jcol.irow483
  %sub291 = add i32 %69, -1
  %sub292 = sub i32 %sub291, %ii257.0536
  %cmp293 = icmp sgt i32 %sub290, %sub292
  br i1 %cmp293, label %return, label %if.else295

if.else295:                                       ; preds = %if.then289
  %add297 = add nsw i32 %kk260.1538, %sub290
  %idxprom298 = sext i32 %add297 to i64
  %70 = load double** %entries256, align 8, !tbaa !0
  %arrayidx299 = getelementptr inbounds double* %70, i64 %idxprom298
  %71 = load double* %arrayidx299, align 8, !tbaa !4
  store double %71, double* %pValue, align 8, !tbaa !4
  br label %return

if.else300:                                       ; preds = %for.body287
  %dec301 = add nsw i32 %size264.0539, -1
  %add302 = add nsw i32 %size264.0539, %kk260.1538
  %inc305 = add nsw i32 %ii257.0536, 1
  %inc306 = add nsw i32 %jrow259.1537, 1
  %cmp286 = icmp slt i32 %inc305, %69
  br i1 %cmp286, label %for.body287, label %for.inc308

for.inc308:                                       ; preds = %if.else300, %for.body282
  %kk260.1.lcssa = phi i32 [ %kk260.0548, %for.body282 ], [ %add302, %if.else300 ]
  %jrow259.1.lcssa = phi i32 [ %jrow259.0547, %for.body282 ], [ %inc306, %if.else300 ]
  %indvars.iv.next583 = add i64 %indvars.iv582, 1
  %cmp281 = icmp sgt i32 %jrow259.1.lcssa, %jcol.irow483
  br i1 %cmp281, label %return, label %for.body282

sw.default:                                       ; preds = %if.end14
  %72 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call312 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %72, i8* getelementptr inbounds ([60 x i8]* @.str29, i64 0, i64 0), %struct._SubMtx* %mtx, i32 %irow, i32 %jcol, double* %pValue, i32 %5) #4
  call void @exit(i32 -1) #5
  unreachable

return:                                           ; preds = %for.cond280.preheader, %for.inc308, %for.cond226.preheader, %for.inc252, %sw.bb95, %for.inc112, %for.cond79.preheader, %for.inc91, %for.cond40.preheader, %for.inc52, %lor.lhs.false18, %if.then289, %if.end270, %sw.bb255, %if.then235, %if.end217, %sw.bb208, %if.end200, %sw.bb191, %for.end177, %lor.lhs.false163, %lor.lhs.false161, %for.end139, %lor.lhs.false125, %lor.lhs.false123, %lor.lhs.false66, %lor.lhs.false32, %lor.lhs.false22, %if.else295, %if.else, %if.end205, %if.then186, %if.then147, %if.then108, %if.then87, %if.then48, %if.end25
  %retval.0 = phi i32 [ %add297, %if.else295 ], [ %add242, %if.else ], [ %irow, %if.end205 ], [ %add187, %if.then186 ], [ %add148, %if.then147 ], [ %ii97.0506, %if.then108 ], [ %jj59.0498, %if.then87 ], [ %jj.0488, %if.then48 ], [ %add, %if.end25 ], [ -1, %lor.lhs.false18 ], [ -1, %lor.lhs.false22 ], [ -1, %lor.lhs.false32 ], [ -1, %lor.lhs.false66 ], [ -1, %lor.lhs.false123 ], [ -1, %lor.lhs.false125 ], [ -1, %for.end139 ], [ -1, %lor.lhs.false161 ], [ -1, %lor.lhs.false163 ], [ -1, %for.end177 ], [ -1, %sw.bb191 ], [ -1, %if.end200 ], [ -1, %sw.bb208 ], [ -1, %if.end217 ], [ -1, %if.then235 ], [ -1, %sw.bb255 ], [ -1, %if.end270 ], [ -1, %if.then289 ], [ -1, %for.inc52 ], [ -1, %for.cond40.preheader ], [ -1, %for.inc91 ], [ -1, %for.cond79.preheader ], [ -1, %for.inc112 ], [ -1, %sw.bb95 ], [ 0, %for.cond226.preheader ], [ %kk.1.lcssa, %for.inc252 ], [ 0, %for.cond280.preheader ], [ %kk260.1.lcssa, %for.inc308 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind optsize uwtable
define i32 @SubMtx_complexEntry(%struct._SubMtx* %mtx, i32 %irow, i32 %jcol, double* %pReal, double* %pImag) #0 {
entry:
  %entries = alloca double*, align 8
  %inc1 = alloca i32, align 4
  %inc2 = alloca i32, align 4
  %ncol17 = alloca i32, align 4
  %nrow18 = alloca i32, align 4
  %entries35 = alloca double*, align 8
  %nent = alloca i32, align 4
  %nrow36 = alloca i32, align 4
  %indices = alloca i32*, align 8
  %sizes = alloca i32*, align 8
  %entries69 = alloca double*, align 8
  %nent72 = alloca i32, align 4
  %ncol73 = alloca i32, align 4
  %indices75 = alloca i32*, align 8
  %sizes76 = alloca i32*, align 8
  %entries113 = alloca double*, align 8
  %nent115 = alloca i32, align 4
  %colids = alloca i32*, align 8
  %rowids = alloca i32*, align 8
  %entries138 = alloca double*, align 8
  %nent140 = alloca i32, align 4
  %nrow141 = alloca i32, align 4
  %firstlocs = alloca i32*, align 8
  %sizes143 = alloca i32*, align 8
  %entries180 = alloca double*, align 8
  %nent182 = alloca i32, align 4
  %ncol183 = alloca i32, align 4
  %firstlocs185 = alloca i32*, align 8
  %sizes186 = alloca i32*, align 8
  %entries224 = alloca double*, align 8
  %ncol225 = alloca i32, align 4
  %entries246 = alloca double*, align 8
  %ncol248 = alloca i32, align 4
  %nent249 = alloca i32, align 4
  %pivotsizes = alloca i32*, align 8
  %entries298 = alloca double*, align 8
  %ncol304 = alloca i32, align 4
  %nent305 = alloca i32, align 4
  %pivotsizes307 = alloca i32*, align 8
  %cmp = icmp eq %struct._SubMtx* %mtx, null
  %cmp1 = icmp slt i32 %irow, 0
  %or.cond662 = or i1 %cmp, %cmp1
  br i1 %or.cond662, label %if.then, label %lor.lhs.false2

lor.lhs.false2:                                   ; preds = %entry
  %nrow = getelementptr inbounds %struct._SubMtx* %mtx, i64 0, i32 4
  %0 = load i32* %nrow, align 4, !tbaa !3
  %cmp3 = icmp sle i32 %0, %irow
  %cmp5 = icmp slt i32 %jcol, 0
  %or.cond663 = or i1 %cmp3, %cmp5
  br i1 %or.cond663, label %if.then, label %lor.lhs.false6

lor.lhs.false6:                                   ; preds = %lor.lhs.false2
  %ncol = getelementptr inbounds %struct._SubMtx* %mtx, i64 0, i32 5
  %1 = load i32* %ncol, align 4, !tbaa !3
  %cmp7 = icmp sle i32 %1, %jcol
  %cmp9 = icmp eq double* %pReal, null
  %or.cond = or i1 %cmp7, %cmp9
  %cmp11 = icmp eq double* %pImag, null
  %or.cond555 = or i1 %or.cond, %cmp11
  br i1 %or.cond555, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false2, %lor.lhs.false6, %entry
  %2 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([65 x i8]* @.str30, i64 0, i64 0), %struct._SubMtx* %mtx, i32 %irow, i32 %jcol, double* %pReal, double* %pImag) #4
  call void @exit(i32 -1) #5
  unreachable

if.end:                                           ; preds = %lor.lhs.false6
  %type = getelementptr inbounds %struct._SubMtx* %mtx, i64 0, i32 0
  %3 = load i32* %type, align 4, !tbaa !3
  %cmp12 = icmp eq i32 %3, 2
  br i1 %cmp12, label %if.end16, label %if.then13

if.then13:                                        ; preds = %if.end
  %4 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call15 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([92 x i8]* @.str31, i64 0, i64 0), %struct._SubMtx* %mtx, i32 %irow, i32 %jcol, double* %pReal, double* %pImag, i32 %3) #4
  call void @exit(i32 -1) #5
  unreachable

if.end16:                                         ; preds = %if.end
  store double 0.000000e+00, double* %pImag, align 8, !tbaa !4
  store double 0.000000e+00, double* %pReal, align 8, !tbaa !4
  %mode = getelementptr inbounds %struct._SubMtx* %mtx, i64 0, i32 1
  %5 = load i32* %mode, align 4, !tbaa !3
  switch i32 %5, label %sw.default [
    i32 0, label %lor.lhs.false20
    i32 1, label %lor.lhs.false20
    i32 2, label %lor.lhs.false39
    i32 3, label %lor.lhs.false78
    i32 4, label %sw.bb112
    i32 5, label %lor.lhs.false145
    i32 6, label %lor.lhs.false188
    i32 7, label %sw.bb223
    i32 8, label %sw.bb245
    i32 9, label %sw.bb297
  ]

lor.lhs.false20:                                  ; preds = %if.end16, %if.end16
  call void @SubMtx_denseInfo(%struct._SubMtx* %mtx, i32* %nrow18, i32* %ncol17, i32* %inc1, i32* %inc2, double** %entries) #6
  %6 = load i32* %nrow18, align 4, !tbaa !3
  %cmp21.not = icmp sgt i32 %6, %irow
  br i1 %cmp21.not, label %lor.lhs.false24, label %return

lor.lhs.false24:                                  ; preds = %lor.lhs.false20
  %7 = load i32* %ncol17, align 4, !tbaa !3
  %cmp25 = icmp sgt i32 %7, %jcol
  br i1 %cmp25, label %if.end27, label %return

if.end27:                                         ; preds = %lor.lhs.false24
  %8 = load i32* %inc1, align 4, !tbaa !3
  %mul = mul nsw i32 %8, %irow
  %9 = load i32* %inc2, align 4, !tbaa !3
  %mul28 = mul nsw i32 %9, %jcol
  %add = add nsw i32 %mul28, %mul
  %mul29 = shl nsw i32 %add, 1
  %idxprom = sext i32 %mul29 to i64
  %10 = load double** %entries, align 8, !tbaa !0
  %arrayidx = getelementptr inbounds double* %10, i64 %idxprom
  %11 = load double* %arrayidx, align 8, !tbaa !4
  store double %11, double* %pReal, align 8, !tbaa !4
  %add31554 = or i32 %mul29, 1
  %idxprom32 = sext i32 %add31554 to i64
  %arrayidx33 = getelementptr inbounds double* %10, i64 %idxprom32
  %12 = load double* %arrayidx33, align 8, !tbaa !4
  store double %12, double* %pImag, align 8, !tbaa !4
  br label %return

lor.lhs.false39:                                  ; preds = %if.end16
  call void @SubMtx_sparseRowsInfo(%struct._SubMtx* %mtx, i32* %nrow36, i32* %nent, i32** %sizes, i32** %indices, double** %entries35) #6
  %13 = load i32* %nrow36, align 4, !tbaa !3
  %cmp40 = icmp sgt i32 %13, %irow
  br i1 %cmp40, label %for.cond.preheader, label %return

for.cond.preheader:                               ; preds = %lor.lhs.false39
  %cmp43570 = icmp sgt i32 %irow, 0
  %14 = load i32** %sizes, align 8, !tbaa !0
  br i1 %cmp43570, label %for.body, label %for.cond47.preheader

for.cond47.preheader:                             ; preds = %for.cond.preheader, %for.body
  %offset37.0.lcssa = phi i32 [ %add46, %for.body ], [ 0, %for.cond.preheader ]
  %idxprom48 = sext i32 %irow to i64
  %arrayidx49566 = getelementptr inbounds i32* %14, i64 %idxprom48
  %15 = load i32* %arrayidx49566, align 4, !tbaa !3
  %cmp50567 = icmp sgt i32 %15, 0
  br i1 %cmp50567, label %for.body51.lr.ph, label %return

for.body51.lr.ph:                                 ; preds = %for.cond47.preheader
  %16 = load i32** %indices, align 8, !tbaa !0
  %17 = sext i32 %offset37.0.lcssa to i64
  br label %for.body51

for.body:                                         ; preds = %for.cond.preheader, %for.body
  %indvars.iv631 = phi i64 [ %indvars.iv.next632, %for.body ], [ 0, %for.cond.preheader ]
  %offset37.0571 = phi i32 [ %add46, %for.body ], [ 0, %for.cond.preheader ]
  %arrayidx45 = getelementptr inbounds i32* %14, i64 %indvars.iv631
  %18 = load i32* %arrayidx45, align 4, !tbaa !3
  %add46 = add nsw i32 %18, %offset37.0571
  %indvars.iv.next632 = add i64 %indvars.iv631, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next632 to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %irow
  br i1 %exitcond, label %for.cond47.preheader, label %for.body

for.body51:                                       ; preds = %for.body51.lr.ph, %for.inc64
  %indvars.iv = phi i64 [ %17, %for.body51.lr.ph ], [ %indvars.iv.next, %for.inc64 ]
  %ii.1569 = phi i32 [ 0, %for.body51.lr.ph ], [ %inc65, %for.inc64 ]
  %jj.0568 = phi i32 [ %offset37.0.lcssa, %for.body51.lr.ph ], [ %inc66, %for.inc64 ]
  %arrayidx53 = getelementptr inbounds i32* %16, i64 %indvars.iv
  %19 = load i32* %arrayidx53, align 4, !tbaa !3
  %cmp54 = icmp eq i32 %19, %jcol
  br i1 %cmp54, label %if.then55, label %for.inc64

if.then55:                                        ; preds = %for.body51
  %mul56 = shl nsw i32 %jj.0568, 1
  %idxprom57 = sext i32 %mul56 to i64
  %20 = load double** %entries35, align 8, !tbaa !0
  %arrayidx58 = getelementptr inbounds double* %20, i64 %idxprom57
  %21 = load double* %arrayidx58, align 8, !tbaa !4
  store double %21, double* %pReal, align 8, !tbaa !4
  %add60553 = or i32 %mul56, 1
  %idxprom61 = sext i32 %add60553 to i64
  %arrayidx62 = getelementptr inbounds double* %20, i64 %idxprom61
  %22 = load double* %arrayidx62, align 8, !tbaa !4
  store double %22, double* %pImag, align 8, !tbaa !4
  br label %return

for.inc64:                                        ; preds = %for.body51
  %inc65 = add nsw i32 %ii.1569, 1
  %indvars.iv.next = add i64 %indvars.iv, 1
  %inc66 = add nsw i32 %jj.0568, 1
  %cmp50 = icmp slt i32 %inc65, %15
  br i1 %cmp50, label %for.body51, label %return

lor.lhs.false78:                                  ; preds = %if.end16
  call void @SubMtx_sparseColumnsInfo(%struct._SubMtx* %mtx, i32* %ncol73, i32* %nent72, i32** %sizes76, i32** %indices75, double** %entries69) #6
  %23 = load i32* %ncol73, align 4, !tbaa !3
  %cmp79 = icmp sgt i32 %23, %jcol
  br i1 %cmp79, label %for.cond82.preheader, label %return

for.cond82.preheader:                             ; preds = %lor.lhs.false78
  %cmp83579 = icmp sgt i32 %jcol, 0
  %24 = load i32** %sizes76, align 8, !tbaa !0
  br i1 %cmp83579, label %for.body84, label %for.cond91.preheader

for.cond91.preheader:                             ; preds = %for.cond82.preheader, %for.body84
  %offset74.0.lcssa = phi i32 [ %add87, %for.body84 ], [ 0, %for.cond82.preheader ]
  %idxprom92 = sext i32 %jcol to i64
  %arrayidx93575 = getelementptr inbounds i32* %24, i64 %idxprom92
  %25 = load i32* %arrayidx93575, align 4, !tbaa !3
  %cmp94576 = icmp sgt i32 %25, 0
  br i1 %cmp94576, label %for.body95.lr.ph, label %return

for.body95.lr.ph:                                 ; preds = %for.cond91.preheader
  %26 = load i32** %indices75, align 8, !tbaa !0
  %27 = sext i32 %offset74.0.lcssa to i64
  br label %for.body95

for.body84:                                       ; preds = %for.cond82.preheader, %for.body84
  %indvars.iv636 = phi i64 [ %indvars.iv.next637, %for.body84 ], [ 0, %for.cond82.preheader ]
  %offset74.0581 = phi i32 [ %add87, %for.body84 ], [ 0, %for.cond82.preheader ]
  %arrayidx86 = getelementptr inbounds i32* %24, i64 %indvars.iv636
  %28 = load i32* %arrayidx86, align 4, !tbaa !3
  %add87 = add nsw i32 %28, %offset74.0581
  %indvars.iv.next637 = add i64 %indvars.iv636, 1
  %lftr.wideiv638 = trunc i64 %indvars.iv.next637 to i32
  %exitcond639 = icmp eq i32 %lftr.wideiv638, %jcol
  br i1 %exitcond639, label %for.cond91.preheader, label %for.body84

for.body95:                                       ; preds = %for.body95.lr.ph, %for.inc108
  %indvars.iv634 = phi i64 [ %27, %for.body95.lr.ph ], [ %indvars.iv.next635, %for.inc108 ]
  %jj71.0578 = phi i32 [ %offset74.0.lcssa, %for.body95.lr.ph ], [ %inc110, %for.inc108 ]
  %ii70.1577 = phi i32 [ 0, %for.body95.lr.ph ], [ %inc109, %for.inc108 ]
  %arrayidx97 = getelementptr inbounds i32* %26, i64 %indvars.iv634
  %29 = load i32* %arrayidx97, align 4, !tbaa !3
  %cmp98 = icmp eq i32 %29, %irow
  br i1 %cmp98, label %if.then99, label %for.inc108

if.then99:                                        ; preds = %for.body95
  %mul100 = shl nsw i32 %jj71.0578, 1
  %idxprom101 = sext i32 %mul100 to i64
  %30 = load double** %entries69, align 8, !tbaa !0
  %arrayidx102 = getelementptr inbounds double* %30, i64 %idxprom101
  %31 = load double* %arrayidx102, align 8, !tbaa !4
  store double %31, double* %pReal, align 8, !tbaa !4
  %add104552 = or i32 %mul100, 1
  %idxprom105 = sext i32 %add104552 to i64
  %arrayidx106 = getelementptr inbounds double* %30, i64 %idxprom105
  %32 = load double* %arrayidx106, align 8, !tbaa !4
  store double %32, double* %pImag, align 8, !tbaa !4
  br label %return

for.inc108:                                       ; preds = %for.body95
  %inc109 = add nsw i32 %ii70.1577, 1
  %indvars.iv.next635 = add i64 %indvars.iv634, 1
  %inc110 = add nsw i32 %jj71.0578, 1
  %cmp94 = icmp slt i32 %inc109, %25
  br i1 %cmp94, label %for.body95, label %return

sw.bb112:                                         ; preds = %if.end16
  call void @SubMtx_sparseTriplesInfo(%struct._SubMtx* %mtx, i32* %nent115, i32** %rowids, i32** %colids, double** %entries113) #6
  %33 = load i32* %nent115, align 4, !tbaa !3
  %cmp117585 = icmp sgt i32 %33, 0
  br i1 %cmp117585, label %for.body118.lr.ph, label %return

for.body118.lr.ph:                                ; preds = %sw.bb112
  %34 = load i32** %rowids, align 8, !tbaa !0
  %35 = load i32** %colids, align 8, !tbaa !0
  br label %for.body118

for.body118:                                      ; preds = %for.body118.lr.ph, %for.inc134
  %indvars.iv641 = phi i64 [ 0, %for.body118.lr.ph ], [ %indvars.iv.next642, %for.inc134 ]
  %ii114.0586 = phi i32 [ 0, %for.body118.lr.ph ], [ %inc135, %for.inc134 ]
  %arrayidx120 = getelementptr inbounds i32* %34, i64 %indvars.iv641
  %36 = load i32* %arrayidx120, align 4, !tbaa !3
  %cmp121 = icmp eq i32 %36, %irow
  br i1 %cmp121, label %land.lhs.true, label %for.inc134

land.lhs.true:                                    ; preds = %for.body118
  %arrayidx123 = getelementptr inbounds i32* %35, i64 %indvars.iv641
  %37 = load i32* %arrayidx123, align 4, !tbaa !3
  %cmp124 = icmp eq i32 %37, %jcol
  br i1 %cmp124, label %if.then125, label %for.inc134

if.then125:                                       ; preds = %land.lhs.true
  %mul126 = shl nsw i32 %ii114.0586, 1
  %idxprom127 = sext i32 %mul126 to i64
  %38 = load double** %entries113, align 8, !tbaa !0
  %arrayidx128 = getelementptr inbounds double* %38, i64 %idxprom127
  %39 = load double* %arrayidx128, align 8, !tbaa !4
  store double %39, double* %pReal, align 8, !tbaa !4
  %add130551 = or i32 %mul126, 1
  %idxprom131 = sext i32 %add130551 to i64
  %arrayidx132 = getelementptr inbounds double* %38, i64 %idxprom131
  %40 = load double* %arrayidx132, align 8, !tbaa !4
  store double %40, double* %pImag, align 8, !tbaa !4
  br label %return

for.inc134:                                       ; preds = %for.body118, %land.lhs.true
  %indvars.iv.next642 = add i64 %indvars.iv641, 1
  %inc135 = add nsw i32 %ii114.0586, 1
  %41 = trunc i64 %indvars.iv.next642 to i32
  %cmp117 = icmp slt i32 %41, %33
  br i1 %cmp117, label %for.body118, label %return

lor.lhs.false145:                                 ; preds = %if.end16
  call void @SubMtx_denseSubrowsInfo(%struct._SubMtx* %mtx, i32* %nrow141, i32* %nent140, i32** %firstlocs, i32** %sizes143, double** %entries138) #6
  %42 = load i32* %nrow141, align 4, !tbaa !3
  %cmp146 = icmp sgt i32 %42, %irow
  br i1 %cmp146, label %lor.lhs.false147, label %return

lor.lhs.false147:                                 ; preds = %lor.lhs.false145
  %idxprom148 = sext i32 %irow to i64
  %43 = load i32** %sizes143, align 8, !tbaa !0
  %arrayidx149 = getelementptr inbounds i32* %43, i64 %idxprom148
  %44 = load i32* %arrayidx149, align 4, !tbaa !3
  %cmp150 = icmp eq i32 %44, 0
  br i1 %cmp150, label %return, label %for.cond153.preheader

for.cond153.preheader:                            ; preds = %lor.lhs.false147
  %cmp154587 = icmp sgt i32 %irow, 0
  br i1 %cmp154587, label %for.body155, label %for.end161

for.body155:                                      ; preds = %for.cond153.preheader, %for.body155
  %indvars.iv643 = phi i64 [ %indvars.iv.next644, %for.body155 ], [ 0, %for.cond153.preheader ]
  %offset142.0589 = phi i32 [ %add158, %for.body155 ], [ 0, %for.cond153.preheader ]
  %arrayidx157 = getelementptr inbounds i32* %43, i64 %indvars.iv643
  %45 = load i32* %arrayidx157, align 4, !tbaa !3
  %add158 = add nsw i32 %45, %offset142.0589
  %indvars.iv.next644 = add i64 %indvars.iv643, 1
  %lftr.wideiv645 = trunc i64 %indvars.iv.next644 to i32
  %exitcond646 = icmp eq i32 %lftr.wideiv645, %irow
  br i1 %exitcond646, label %for.end161, label %for.body155

for.end161:                                       ; preds = %for.body155, %for.cond153.preheader
  %offset142.0.lcssa = phi i32 [ 0, %for.cond153.preheader ], [ %add158, %for.body155 ]
  %46 = load i32** %firstlocs, align 8, !tbaa !0
  %arrayidx163 = getelementptr inbounds i32* %46, i64 %idxprom148
  %47 = load i32* %arrayidx163, align 4, !tbaa !3
  %sub = sub nsw i32 %jcol, %47
  %cmp164 = icmp sgt i32 %sub, -1
  %cmp168 = icmp slt i32 %sub, %44
  %or.cond664 = and i1 %cmp164, %cmp168
  br i1 %or.cond664, label %if.then169, label %return

if.then169:                                       ; preds = %for.end161
  %add170 = add nsw i32 %sub, %offset142.0.lcssa
  %mul171 = shl nsw i32 %add170, 1
  %idxprom172 = sext i32 %mul171 to i64
  %48 = load double** %entries138, align 8, !tbaa !0
  %arrayidx173 = getelementptr inbounds double* %48, i64 %idxprom172
  %49 = load double* %arrayidx173, align 8, !tbaa !4
  store double %49, double* %pReal, align 8, !tbaa !4
  %add175550 = or i32 %mul171, 1
  %idxprom176 = sext i32 %add175550 to i64
  %arrayidx177 = getelementptr inbounds double* %48, i64 %idxprom176
  %50 = load double* %arrayidx177, align 8, !tbaa !4
  store double %50, double* %pImag, align 8, !tbaa !4
  br label %return

lor.lhs.false188:                                 ; preds = %if.end16
  call void @SubMtx_denseSubcolumnsInfo(%struct._SubMtx* %mtx, i32* %ncol183, i32* %nent182, i32** %firstlocs185, i32** %sizes186, double** %entries180) #6
  %51 = load i32* %ncol183, align 4, !tbaa !3
  %cmp189 = icmp sgt i32 %51, %jcol
  br i1 %cmp189, label %lor.lhs.false190, label %return

lor.lhs.false190:                                 ; preds = %lor.lhs.false188
  %idxprom191 = sext i32 %jcol to i64
  %52 = load i32** %sizes186, align 8, !tbaa !0
  %arrayidx192 = getelementptr inbounds i32* %52, i64 %idxprom191
  %53 = load i32* %arrayidx192, align 4, !tbaa !3
  %cmp193 = icmp eq i32 %53, 0
  br i1 %cmp193, label %return, label %for.cond196.preheader

for.cond196.preheader:                            ; preds = %lor.lhs.false190
  %cmp197591 = icmp sgt i32 %jcol, 0
  br i1 %cmp197591, label %for.body198, label %for.end204

for.body198:                                      ; preds = %for.cond196.preheader, %for.body198
  %indvars.iv647 = phi i64 [ %indvars.iv.next648, %for.body198 ], [ 0, %for.cond196.preheader ]
  %offset184.0593 = phi i32 [ %add201, %for.body198 ], [ 0, %for.cond196.preheader ]
  %arrayidx200 = getelementptr inbounds i32* %52, i64 %indvars.iv647
  %54 = load i32* %arrayidx200, align 4, !tbaa !3
  %add201 = add nsw i32 %54, %offset184.0593
  %indvars.iv.next648 = add i64 %indvars.iv647, 1
  %lftr.wideiv649 = trunc i64 %indvars.iv.next648 to i32
  %exitcond650 = icmp eq i32 %lftr.wideiv649, %jcol
  br i1 %exitcond650, label %for.end204, label %for.body198

for.end204:                                       ; preds = %for.body198, %for.cond196.preheader
  %offset184.0.lcssa = phi i32 [ 0, %for.cond196.preheader ], [ %add201, %for.body198 ]
  %55 = load i32** %firstlocs185, align 8, !tbaa !0
  %arrayidx206 = getelementptr inbounds i32* %55, i64 %idxprom191
  %56 = load i32* %arrayidx206, align 4, !tbaa !3
  %sub207 = sub nsw i32 %irow, %56
  %cmp208 = icmp sgt i32 %sub207, -1
  %cmp212 = icmp slt i32 %sub207, %53
  %or.cond665 = and i1 %cmp208, %cmp212
  br i1 %or.cond665, label %if.then213, label %return

if.then213:                                       ; preds = %for.end204
  %add214 = add nsw i32 %sub207, %offset184.0.lcssa
  %mul215 = shl nsw i32 %add214, 1
  %idxprom216 = sext i32 %mul215 to i64
  %57 = load double** %entries180, align 8, !tbaa !0
  %arrayidx217 = getelementptr inbounds double* %57, i64 %idxprom216
  %58 = load double* %arrayidx217, align 8, !tbaa !4
  store double %58, double* %pReal, align 8, !tbaa !4
  %add219549 = or i32 %mul215, 1
  %idxprom220 = sext i32 %add219549 to i64
  %arrayidx221 = getelementptr inbounds double* %57, i64 %idxprom220
  %59 = load double* %arrayidx221, align 8, !tbaa !4
  store double %59, double* %pImag, align 8, !tbaa !4
  br label %return

sw.bb223:                                         ; preds = %if.end16
  %60 = or i32 %jcol, %irow
  %brmerge556.not = icmp sgt i32 %60, -1
  %cmp230 = icmp eq i32 %irow, %jcol
  %or.cond557 = and i1 %brmerge556.not, %cmp230
  br i1 %or.cond557, label %if.end232, label %return

if.end232:                                        ; preds = %sw.bb223
  call void @SubMtx_diagonalInfo(%struct._SubMtx* %mtx, i32* %ncol225, double** %entries224) #6
  %61 = load i32* %ncol225, align 4, !tbaa !3
  %cmp233 = icmp sgt i32 %61, %irow
  br i1 %cmp233, label %if.end237, label %return

if.end237:                                        ; preds = %if.end232
  %mul238 = shl nsw i32 %irow, 1
  %idxprom239 = sext i32 %mul238 to i64
  %62 = load double** %entries224, align 8, !tbaa !0
  %arrayidx240 = getelementptr inbounds double* %62, i64 %idxprom239
  %63 = load double* %arrayidx240, align 8, !tbaa !4
  store double %63, double* %pReal, align 8, !tbaa !4
  %add242548 = or i32 %mul238, 1
  %idxprom243 = sext i32 %add242548 to i64
  %arrayidx244 = getelementptr inbounds double* %62, i64 %idxprom243
  %64 = load double* %arrayidx244, align 8, !tbaa !4
  store double %64, double* %pImag, align 8, !tbaa !4
  br label %return

sw.bb245:                                         ; preds = %if.end16
  %65 = or i32 %jcol, %irow
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %return, label %if.end254

if.end254:                                        ; preds = %sw.bb245
  %cmp255 = icmp sgt i32 %irow, %jcol
  %irow.jcol = select i1 %cmp255, i32 %irow, i32 %jcol
  %jcol.irow = select i1 %cmp255, i32 %jcol, i32 %irow
  call void @SubMtx_blockDiagonalInfo(%struct._SubMtx* %mtx, i32* %ncol248, i32* %nent249, i32** %pivotsizes, double** %entries246) #6
  %67 = load i32* %ncol248, align 4, !tbaa !3
  %cmp258 = icmp slt i32 %jcol.irow, %67
  %cmp260 = icmp slt i32 %irow.jcol, %67
  %or.cond560 = and i1 %cmp258, %cmp260
  br i1 %or.cond560, label %for.cond263.preheader, label %return

for.cond263.preheader:                            ; preds = %if.end254
  %cmp264607 = icmp slt i32 %jcol.irow, 0
  br i1 %cmp264607, label %return, label %for.body265.lr.ph

for.body265.lr.ph:                                ; preds = %for.cond263.preheader
  %68 = load i32** %pivotsizes, align 8, !tbaa !0
  br label %for.body265

for.body265:                                      ; preds = %for.body265.lr.ph, %for.inc294
  %indvars.iv654 = phi i64 [ 0, %for.body265.lr.ph ], [ %indvars.iv.next655, %for.inc294 ]
  %kk.0610 = phi i32 [ 0, %for.body265.lr.ph ], [ %kk.1.lcssa, %for.inc294 ]
  %jrow.0609 = phi i32 [ 0, %for.body265.lr.ph ], [ %jrow.1.lcssa, %for.inc294 ]
  %arrayidx267 = getelementptr inbounds i32* %68, i64 %indvars.iv654
  %69 = load i32* %arrayidx267, align 4, !tbaa !3
  %cmp269598 = icmp sgt i32 %69, 0
  br i1 %cmp269598, label %for.body270, label %for.inc294

for.body270:                                      ; preds = %for.body265, %if.else287
  %size.0602 = phi i32 [ %dec, %if.else287 ], [ %69, %for.body265 ]
  %kk.1601 = phi i32 [ %add288, %if.else287 ], [ %kk.0610, %for.body265 ]
  %jrow.1600 = phi i32 [ %inc292, %if.else287 ], [ %jrow.0609, %for.body265 ]
  %ii247.0599 = phi i32 [ %inc291, %if.else287 ], [ 0, %for.body265 ]
  %cmp271 = icmp eq i32 %jrow.1600, %jcol.irow
  br i1 %cmp271, label %if.then272, label %if.else287

if.then272:                                       ; preds = %for.body270
  %sub273 = sub nsw i32 %irow.jcol, %jcol.irow
  %sub274 = add i32 %69, -1
  %sub275 = sub i32 %sub274, %ii247.0599
  %cmp276 = icmp sgt i32 %sub273, %sub275
  br i1 %cmp276, label %return, label %if.else

if.else:                                          ; preds = %if.then272
  %add279 = add nsw i32 %kk.1601, %sub273
  %mul280 = shl nsw i32 %add279, 1
  %idxprom281 = sext i32 %mul280 to i64
  %70 = load double** %entries246, align 8, !tbaa !0
  %arrayidx282 = getelementptr inbounds double* %70, i64 %idxprom281
  %71 = load double* %arrayidx282, align 8, !tbaa !4
  store double %71, double* %pReal, align 8, !tbaa !4
  %add284547 = or i32 %mul280, 1
  %idxprom285 = sext i32 %add284547 to i64
  %arrayidx286 = getelementptr inbounds double* %70, i64 %idxprom285
  %72 = load double* %arrayidx286, align 8, !tbaa !4
  store double %72, double* %pImag, align 8, !tbaa !4
  br label %return

if.else287:                                       ; preds = %for.body270
  %dec = add nsw i32 %size.0602, -1
  %add288 = add nsw i32 %size.0602, %kk.1601
  %inc291 = add nsw i32 %ii247.0599, 1
  %inc292 = add nsw i32 %jrow.1600, 1
  %cmp269 = icmp slt i32 %inc291, %69
  br i1 %cmp269, label %for.body270, label %for.inc294

for.inc294:                                       ; preds = %if.else287, %for.body265
  %kk.1.lcssa = phi i32 [ %kk.0610, %for.body265 ], [ %add288, %if.else287 ]
  %jrow.1.lcssa = phi i32 [ %jrow.0609, %for.body265 ], [ %inc292, %if.else287 ]
  %indvars.iv.next655 = add i64 %indvars.iv654, 1
  %cmp264 = icmp sgt i32 %jrow.1.lcssa, %jcol.irow
  br i1 %cmp264, label %return, label %for.body265

sw.bb297:                                         ; preds = %if.end16
  %73 = or i32 %jcol, %irow
  %74 = icmp slt i32 %73, 0
  br i1 %74, label %return, label %if.end312

if.end312:                                        ; preds = %sw.bb297
  %cmp313 = icmp sgt i32 %irow, %jcol
  %irow.jcol562 = select i1 %cmp313, i32 %irow, i32 %jcol
  %jcol.irow563 = select i1 %cmp313, i32 %jcol, i32 %irow
  %. = select i1 %cmp313, double -1.000000e+00, double 1.000000e+00
  call void @SubMtx_blockDiagonalInfo(%struct._SubMtx* %mtx, i32* %ncol304, i32* %nent305, i32** %pivotsizes307, double** %entries298) #6
  %75 = load i32* %ncol304, align 4, !tbaa !3
  %cmp317 = icmp slt i32 %jcol.irow563, %75
  %cmp319 = icmp slt i32 %irow.jcol562, %75
  %or.cond564 = and i1 %cmp317, %cmp319
  br i1 %or.cond564, label %for.cond322.preheader, label %return

for.cond322.preheader:                            ; preds = %if.end312
  %cmp323625 = icmp slt i32 %jcol.irow563, 0
  br i1 %cmp323625, label %return, label %for.body324.lr.ph

for.body324.lr.ph:                                ; preds = %for.cond322.preheader
  %76 = load i32** %pivotsizes307, align 8, !tbaa !0
  br label %for.body324

for.body324:                                      ; preds = %for.body324.lr.ph, %for.inc356
  %indvars.iv659 = phi i64 [ 0, %for.body324.lr.ph ], [ %indvars.iv.next660, %for.inc356 ]
  %kk302.0628 = phi i32 [ 0, %for.body324.lr.ph ], [ %kk302.1.lcssa, %for.inc356 ]
  %jrow301.0627 = phi i32 [ 0, %for.body324.lr.ph ], [ %jrow301.1.lcssa, %for.inc356 ]
  %arrayidx326 = getelementptr inbounds i32* %76, i64 %indvars.iv659
  %77 = load i32* %arrayidx326, align 4, !tbaa !3
  %cmp328615 = icmp sgt i32 %77, 0
  br i1 %cmp328615, label %for.body329, label %for.inc356

for.body329:                                      ; preds = %for.body324, %if.else348
  %size306.0619 = phi i32 [ %dec349, %if.else348 ], [ %77, %for.body324 ]
  %kk302.1618 = phi i32 [ %add350, %if.else348 ], [ %kk302.0628, %for.body324 ]
  %jrow301.1617 = phi i32 [ %inc354, %if.else348 ], [ %jrow301.0627, %for.body324 ]
  %ii299.0616 = phi i32 [ %inc353, %if.else348 ], [ 0, %for.body324 ]
  %cmp330 = icmp eq i32 %jrow301.1617, %jcol.irow563
  br i1 %cmp330, label %if.then331, label %if.else348

if.then331:                                       ; preds = %for.body329
  %sub332 = sub nsw i32 %irow.jcol562, %jcol.irow563
  %sub333 = add i32 %77, -1
  %sub334 = sub i32 %sub333, %ii299.0616
  %cmp335 = icmp sgt i32 %sub332, %sub334
  br i1 %cmp335, label %return, label %if.else337

if.else337:                                       ; preds = %if.then331
  %add339 = add nsw i32 %kk302.1618, %sub332
  %mul340 = shl nsw i32 %add339, 1
  %idxprom341 = sext i32 %mul340 to i64
  %78 = load double** %entries298, align 8, !tbaa !0
  %arrayidx342 = getelementptr inbounds double* %78, i64 %idxprom341
  %79 = load double* %arrayidx342, align 8, !tbaa !4
  store double %79, double* %pReal, align 8, !tbaa !4
  %add344546 = or i32 %mul340, 1
  %idxprom345 = sext i32 %add344546 to i64
  %arrayidx346 = getelementptr inbounds double* %78, i64 %idxprom345
  %80 = load double* %arrayidx346, align 8, !tbaa !4
  %mul347 = fmul double %., %80
  store double %mul347, double* %pImag, align 8, !tbaa !4
  br label %return

if.else348:                                       ; preds = %for.body329
  %dec349 = add nsw i32 %size306.0619, -1
  %add350 = add nsw i32 %size306.0619, %kk302.1618
  %inc353 = add nsw i32 %ii299.0616, 1
  %inc354 = add nsw i32 %jrow301.1617, 1
  %cmp328 = icmp slt i32 %inc353, %77
  br i1 %cmp328, label %for.body329, label %for.inc356

for.inc356:                                       ; preds = %if.else348, %for.body324
  %kk302.1.lcssa = phi i32 [ %kk302.0628, %for.body324 ], [ %add350, %if.else348 ]
  %jrow301.1.lcssa = phi i32 [ %jrow301.0627, %for.body324 ], [ %inc354, %if.else348 ]
  %indvars.iv.next660 = add i64 %indvars.iv659, 1
  %cmp323 = icmp sgt i32 %jrow301.1.lcssa, %jcol.irow563
  br i1 %cmp323, label %return, label %for.body324

sw.default:                                       ; preds = %if.end16
  %81 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call360 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %81, i8* getelementptr inbounds ([66 x i8]* @.str32, i64 0, i64 0), %struct._SubMtx* %mtx, i32 %irow, i32 %jcol, double* %pReal, double* %pImag, i32 %5) #4
  call void @exit(i32 -1) #5
  unreachable

return:                                           ; preds = %for.cond322.preheader, %for.inc356, %for.cond263.preheader, %for.inc294, %sw.bb112, %for.inc134, %for.cond91.preheader, %for.inc108, %for.cond47.preheader, %for.inc64, %lor.lhs.false20, %if.then331, %if.end312, %sw.bb297, %if.then272, %if.end254, %sw.bb245, %if.end232, %sw.bb223, %for.end204, %lor.lhs.false190, %lor.lhs.false188, %for.end161, %lor.lhs.false147, %lor.lhs.false145, %lor.lhs.false78, %lor.lhs.false39, %lor.lhs.false24, %if.else337, %if.else, %if.end237, %if.then213, %if.then169, %if.then125, %if.then99, %if.then55, %if.end27
  %retval.0 = phi i32 [ %add339, %if.else337 ], [ %add279, %if.else ], [ %irow, %if.end237 ], [ %add214, %if.then213 ], [ %add170, %if.then169 ], [ %ii114.0586, %if.then125 ], [ %jj71.0578, %if.then99 ], [ %jj.0568, %if.then55 ], [ %add, %if.end27 ], [ -1, %lor.lhs.false20 ], [ -1, %lor.lhs.false24 ], [ -1, %lor.lhs.false39 ], [ -1, %lor.lhs.false78 ], [ -1, %lor.lhs.false145 ], [ -1, %lor.lhs.false147 ], [ -1, %for.end161 ], [ -1, %lor.lhs.false188 ], [ -1, %lor.lhs.false190 ], [ -1, %for.end204 ], [ -1, %sw.bb223 ], [ -1, %if.end232 ], [ -1, %sw.bb245 ], [ -1, %if.end254 ], [ -1, %if.then272 ], [ -1, %sw.bb297 ], [ -1, %if.end312 ], [ -1, %if.then331 ], [ -1, %for.inc64 ], [ -1, %for.cond47.preheader ], [ -1, %for.inc108 ], [ -1, %for.cond91.preheader ], [ -1, %for.inc134 ], [ -1, %sw.bb112 ], [ 0, %for.cond263.preheader ], [ %kk.1.lcssa, %for.inc294 ], [ 0, %for.cond322.preheader ], [ %kk302.1.lcssa, %for.inc356 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind optsize uwtable
define void @SubMtx_locationOfRealEntry(%struct._SubMtx* %mtx, i32 %irow, i32 %jcol, double** %ppValue) #0 {
entry:
  %entries = alloca double*, align 8
  %inc1 = alloca i32, align 4
  %inc2 = alloca i32, align 4
  %ncol15 = alloca i32, align 4
  %nrow16 = alloca i32, align 4
  %entries27 = alloca double*, align 8
  %nent = alloca i32, align 4
  %nrow28 = alloca i32, align 4
  %indices = alloca i32*, align 8
  %sizes = alloca i32*, align 8
  %entries54 = alloca double*, align 8
  %nent57 = alloca i32, align 4
  %ncol58 = alloca i32, align 4
  %indices60 = alloca i32*, align 8
  %sizes61 = alloca i32*, align 8
  %entries93 = alloca double*, align 8
  %nent95 = alloca i32, align 4
  %colids = alloca i32*, align 8
  %rowids = alloca i32*, align 8
  %entries114 = alloca double*, align 8
  %nent116 = alloca i32, align 4
  %nrow117 = alloca i32, align 4
  %firstlocs = alloca i32*, align 8
  %sizes119 = alloca i32*, align 8
  %entries151 = alloca double*, align 8
  %nent153 = alloca i32, align 4
  %ncol154 = alloca i32, align 4
  %firstlocs156 = alloca i32*, align 8
  %sizes157 = alloca i32*, align 8
  %entries190 = alloca double*, align 8
  %ncol191 = alloca i32, align 4
  %entries207 = alloca double*, align 8
  %ncol209 = alloca i32, align 4
  %nent210 = alloca i32, align 4
  %pivotsizes = alloca i32*, align 8
  %cmp = icmp eq %struct._SubMtx* %mtx, null
  %cmp1 = icmp slt i32 %irow, 0
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %if.then, label %lor.lhs.false2

lor.lhs.false2:                                   ; preds = %entry
  %nrow = getelementptr inbounds %struct._SubMtx* %mtx, i64 0, i32 4
  %0 = load i32* %nrow, align 4, !tbaa !3
  %cmp3 = icmp sle i32 %0, %irow
  %cmp5 = icmp slt i32 %jcol, 0
  %or.cond378 = or i1 %cmp3, %cmp5
  br i1 %or.cond378, label %if.then, label %lor.lhs.false6

lor.lhs.false6:                                   ; preds = %lor.lhs.false2
  %ncol = getelementptr inbounds %struct._SubMtx* %mtx, i64 0, i32 5
  %1 = load i32* %ncol, align 4, !tbaa !3
  %cmp7 = icmp sle i32 %1, %jcol
  %cmp9 = icmp eq double** %ppValue, null
  %or.cond379 = or i1 %cmp7, %cmp9
  br i1 %or.cond379, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false6, %lor.lhs.false2, %entry
  %2 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([69 x i8]* @.str33, i64 0, i64 0), %struct._SubMtx* %mtx, i32 %irow, i32 %jcol, double** %ppValue) #4
  call void @exit(i32 -1) #5
  unreachable

if.end:                                           ; preds = %lor.lhs.false6
  %type = getelementptr inbounds %struct._SubMtx* %mtx, i64 0, i32 0
  %3 = load i32* %type, align 4, !tbaa !3
  %cmp10 = icmp eq i32 %3, 1
  br i1 %cmp10, label %if.end14, label %if.then11

if.then11:                                        ; preds = %if.end
  %4 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call13 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([93 x i8]* @.str34, i64 0, i64 0), %struct._SubMtx* %mtx, i32 %irow, i32 %jcol, double** %ppValue, i32 %3) #4
  call void @exit(i32 -1) #5
  unreachable

if.end14:                                         ; preds = %if.end
  store double* null, double** %ppValue, align 8, !tbaa !0
  %mode = getelementptr inbounds %struct._SubMtx* %mtx, i64 0, i32 1
  %5 = load i32* %mode, align 4, !tbaa !3
  switch i32 %5, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb
    i32 2, label %sw.bb26
    i32 3, label %sw.bb53
    i32 4, label %sw.bb92
    i32 5, label %sw.bb113
    i32 6, label %sw.bb150
    i32 7, label %sw.bb189
    i32 8, label %sw.bb206
    i32 9, label %sw.bb206
  ]

sw.bb:                                            ; preds = %if.end14, %if.end14
  call void @SubMtx_denseInfo(%struct._SubMtx* %mtx, i32* %nrow16, i32* %ncol15, i32* %inc1, i32* %inc2, double** %entries) #6
  %cmp17 = icmp sgt i32 %irow, -1
  br i1 %cmp17, label %land.lhs.true, label %sw.epilog

land.lhs.true:                                    ; preds = %sw.bb
  %6 = load i32* %nrow16, align 4, !tbaa !3
  %cmp18 = icmp sgt i32 %6, %irow
  %cmp20 = icmp sgt i32 %jcol, -1
  %or.cond380 = and i1 %cmp18, %cmp20
  br i1 %or.cond380, label %land.lhs.true21, label %sw.epilog

land.lhs.true21:                                  ; preds = %land.lhs.true
  %7 = load i32* %ncol15, align 4, !tbaa !3
  %cmp22 = icmp sgt i32 %7, %jcol
  br i1 %cmp22, label %if.then23, label %sw.epilog

if.then23:                                        ; preds = %land.lhs.true21
  %8 = load i32* %inc1, align 4, !tbaa !3
  %mul = mul nsw i32 %8, %irow
  %9 = load i32* %inc2, align 4, !tbaa !3
  %mul24 = mul nsw i32 %9, %jcol
  %add = add nsw i32 %mul24, %mul
  %10 = load double** %entries, align 8, !tbaa !0
  %idx.ext = sext i32 %add to i64
  %add.ptr = getelementptr inbounds double* %10, i64 %idx.ext
  store double* %add.ptr, double** %ppValue, align 8, !tbaa !0
  br label %sw.epilog

sw.bb26:                                          ; preds = %if.end14
  call void @SubMtx_sparseRowsInfo(%struct._SubMtx* %mtx, i32* %nrow28, i32* %nent, i32** %sizes, i32** %indices, double** %entries27) #6
  %cmp30 = icmp sgt i32 %irow, -1
  br i1 %cmp30, label %land.lhs.true31, label %sw.epilog

land.lhs.true31:                                  ; preds = %sw.bb26
  %11 = load i32* %nrow28, align 4, !tbaa !3
  %cmp32 = icmp sgt i32 %11, %irow
  br i1 %cmp32, label %for.cond.preheader, label %sw.epilog

for.cond.preheader:                               ; preds = %land.lhs.true31
  %cmp34390 = icmp sgt i32 %irow, 0
  %12 = load i32** %sizes, align 8, !tbaa !0
  br i1 %cmp34390, label %for.body, label %for.cond36.preheader

for.cond.for.cond36.preheader_crit_edge:          ; preds = %for.body
  %phitmp447 = sext i32 %add35 to i64
  br label %for.cond36.preheader

for.cond36.preheader:                             ; preds = %for.cond.preheader, %for.cond.for.cond36.preheader_crit_edge
  %offset29.0.lcssa = phi i64 [ %phitmp447, %for.cond.for.cond36.preheader_crit_edge ], [ 0, %for.cond.preheader ]
  %idxprom37 = sext i32 %irow to i64
  %arrayidx38386 = getelementptr inbounds i32* %12, i64 %idxprom37
  %13 = load i32* %arrayidx38386, align 4, !tbaa !3
  %cmp39387 = icmp sgt i32 %13, 0
  br i1 %cmp39387, label %for.body40.lr.ph, label %sw.epilog

for.body40.lr.ph:                                 ; preds = %for.cond36.preheader
  %14 = load i32** %indices, align 8, !tbaa !0
  br label %for.body40

for.body:                                         ; preds = %for.cond.preheader, %for.body
  %indvars.iv426 = phi i64 [ %indvars.iv.next427, %for.body ], [ 0, %for.cond.preheader ]
  %offset29.0391 = phi i32 [ %add35, %for.body ], [ 0, %for.cond.preheader ]
  %arrayidx = getelementptr inbounds i32* %12, i64 %indvars.iv426
  %15 = load i32* %arrayidx, align 4, !tbaa !3
  %add35 = add nsw i32 %15, %offset29.0391
  %indvars.iv.next427 = add i64 %indvars.iv426, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next427 to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %irow
  br i1 %exitcond, label %for.cond.for.cond36.preheader_crit_edge, label %for.body

for.body40:                                       ; preds = %for.body40.lr.ph, %for.inc48
  %indvars.iv = phi i64 [ %offset29.0.lcssa, %for.body40.lr.ph ], [ %indvars.iv.next, %for.inc48 ]
  %ii.1389 = phi i32 [ 0, %for.body40.lr.ph ], [ %inc49, %for.inc48 ]
  %arrayidx42 = getelementptr inbounds i32* %14, i64 %indvars.iv
  %16 = load i32* %arrayidx42, align 4, !tbaa !3
  %cmp43 = icmp eq i32 %16, %jcol
  br i1 %cmp43, label %if.then44, label %for.inc48

if.then44:                                        ; preds = %for.body40
  %17 = load double** %entries27, align 8, !tbaa !0
  %add.ptr46 = getelementptr inbounds double* %17, i64 %indvars.iv
  store double* %add.ptr46, double** %ppValue, align 8, !tbaa !0
  br label %sw.epilog

for.inc48:                                        ; preds = %for.body40
  %inc49 = add nsw i32 %ii.1389, 1
  %indvars.iv.next = add i64 %indvars.iv, 1
  %cmp39 = icmp slt i32 %inc49, %13
  br i1 %cmp39, label %for.body40, label %sw.epilog

sw.bb53:                                          ; preds = %if.end14
  call void @SubMtx_sparseColumnsInfo(%struct._SubMtx* %mtx, i32* %ncol58, i32* %nent57, i32** %sizes61, i32** %indices60, double** %entries54) #6
  %cmp62 = icmp sgt i32 %jcol, -1
  br i1 %cmp62, label %land.lhs.true63, label %sw.epilog

land.lhs.true63:                                  ; preds = %sw.bb53
  %18 = load i32* %ncol58, align 4, !tbaa !3
  %cmp64 = icmp sgt i32 %18, %jcol
  br i1 %cmp64, label %for.cond66.preheader, label %sw.epilog

for.cond66.preheader:                             ; preds = %land.lhs.true63
  %cmp67398 = icmp sgt i32 %jcol, 0
  %19 = load i32** %sizes61, align 8, !tbaa !0
  br i1 %cmp67398, label %for.body68, label %for.cond75.preheader

for.cond66.for.cond75.preheader_crit_edge:        ; preds = %for.body68
  %phitmp = sext i32 %add71 to i64
  br label %for.cond75.preheader

for.cond75.preheader:                             ; preds = %for.cond66.preheader, %for.cond66.for.cond75.preheader_crit_edge
  %offset59.0.lcssa = phi i64 [ %phitmp, %for.cond66.for.cond75.preheader_crit_edge ], [ 0, %for.cond66.preheader ]
  %idxprom76 = sext i32 %jcol to i64
  %arrayidx77394 = getelementptr inbounds i32* %19, i64 %idxprom76
  %20 = load i32* %arrayidx77394, align 4, !tbaa !3
  %cmp78395 = icmp sgt i32 %20, 0
  br i1 %cmp78395, label %for.body79.lr.ph, label %sw.epilog

for.body79.lr.ph:                                 ; preds = %for.cond75.preheader
  %21 = load i32** %indices60, align 8, !tbaa !0
  br label %for.body79

for.body68:                                       ; preds = %for.cond66.preheader, %for.body68
  %indvars.iv431 = phi i64 [ %indvars.iv.next432, %for.body68 ], [ 0, %for.cond66.preheader ]
  %offset59.0400 = phi i32 [ %add71, %for.body68 ], [ 0, %for.cond66.preheader ]
  %arrayidx70 = getelementptr inbounds i32* %19, i64 %indvars.iv431
  %22 = load i32* %arrayidx70, align 4, !tbaa !3
  %add71 = add nsw i32 %22, %offset59.0400
  %indvars.iv.next432 = add i64 %indvars.iv431, 1
  %lftr.wideiv433 = trunc i64 %indvars.iv.next432 to i32
  %exitcond434 = icmp eq i32 %lftr.wideiv433, %jcol
  br i1 %exitcond434, label %for.cond66.for.cond75.preheader_crit_edge, label %for.body68

for.body79:                                       ; preds = %for.body79.lr.ph, %for.inc87
  %indvars.iv429 = phi i64 [ %offset59.0.lcssa, %for.body79.lr.ph ], [ %indvars.iv.next430, %for.inc87 ]
  %ii55.1396 = phi i32 [ 0, %for.body79.lr.ph ], [ %inc88, %for.inc87 ]
  %arrayidx81 = getelementptr inbounds i32* %21, i64 %indvars.iv429
  %23 = load i32* %arrayidx81, align 4, !tbaa !3
  %cmp82 = icmp eq i32 %23, %irow
  br i1 %cmp82, label %if.then83, label %for.inc87

if.then83:                                        ; preds = %for.body79
  %24 = load double** %entries54, align 8, !tbaa !0
  %add.ptr85 = getelementptr inbounds double* %24, i64 %indvars.iv429
  store double* %add.ptr85, double** %ppValue, align 8, !tbaa !0
  br label %sw.epilog

for.inc87:                                        ; preds = %for.body79
  %inc88 = add nsw i32 %ii55.1396, 1
  %indvars.iv.next430 = add i64 %indvars.iv429, 1
  %cmp78 = icmp slt i32 %inc88, %20
  br i1 %cmp78, label %for.body79, label %sw.epilog

sw.bb92:                                          ; preds = %if.end14
  call void @SubMtx_sparseTriplesInfo(%struct._SubMtx* %mtx, i32* %nent95, i32** %rowids, i32** %colids, double** %entries93) #6
  %25 = load i32* %nent95, align 4, !tbaa !3
  %cmp97403 = icmp sgt i32 %25, 0
  br i1 %cmp97403, label %for.body98.lr.ph, label %sw.epilog

for.body98.lr.ph:                                 ; preds = %sw.bb92
  %26 = load i32** %rowids, align 8, !tbaa !0
  %27 = load i32** %colids, align 8, !tbaa !0
  br label %for.body98

for.body98:                                       ; preds = %for.body98.lr.ph, %for.inc110
  %indvars.iv436 = phi i64 [ 0, %for.body98.lr.ph ], [ %indvars.iv.next437, %for.inc110 ]
  %arrayidx100 = getelementptr inbounds i32* %26, i64 %indvars.iv436
  %28 = load i32* %arrayidx100, align 4, !tbaa !3
  %cmp101 = icmp eq i32 %28, %irow
  br i1 %cmp101, label %land.lhs.true102, label %for.inc110

land.lhs.true102:                                 ; preds = %for.body98
  %arrayidx104 = getelementptr inbounds i32* %27, i64 %indvars.iv436
  %29 = load i32* %arrayidx104, align 4, !tbaa !3
  %cmp105 = icmp eq i32 %29, %jcol
  br i1 %cmp105, label %if.then106, label %for.inc110

if.then106:                                       ; preds = %land.lhs.true102
  %30 = load double** %entries93, align 8, !tbaa !0
  %add.ptr108 = getelementptr inbounds double* %30, i64 %indvars.iv436
  store double* %add.ptr108, double** %ppValue, align 8, !tbaa !0
  br label %sw.epilog

for.inc110:                                       ; preds = %for.body98, %land.lhs.true102
  %indvars.iv.next437 = add i64 %indvars.iv436, 1
  %31 = trunc i64 %indvars.iv.next437 to i32
  %cmp97 = icmp slt i32 %31, %25
  br i1 %cmp97, label %for.body98, label %sw.epilog

sw.bb113:                                         ; preds = %if.end14
  call void @SubMtx_denseSubrowsInfo(%struct._SubMtx* %mtx, i32* %nrow117, i32* %nent116, i32** %firstlocs, i32** %sizes119, double** %entries114) #6
  %cmp120 = icmp sgt i32 %irow, -1
  br i1 %cmp120, label %land.lhs.true121, label %sw.epilog

land.lhs.true121:                                 ; preds = %sw.bb113
  %32 = load i32* %nrow117, align 4, !tbaa !3
  %cmp122 = icmp sgt i32 %32, %irow
  br i1 %cmp122, label %land.lhs.true123, label %sw.epilog

land.lhs.true123:                                 ; preds = %land.lhs.true121
  %idxprom124 = sext i32 %irow to i64
  %33 = load i32** %sizes119, align 8, !tbaa !0
  %arrayidx125 = getelementptr inbounds i32* %33, i64 %idxprom124
  %34 = load i32* %arrayidx125, align 4, !tbaa !3
  %cmp126 = icmp eq i32 %34, 0
  br i1 %cmp126, label %sw.epilog, label %for.cond128.preheader

for.cond128.preheader:                            ; preds = %land.lhs.true123
  %cmp129405 = icmp sgt i32 %irow, 0
  br i1 %cmp129405, label %for.body130, label %for.end136

for.body130:                                      ; preds = %for.cond128.preheader, %for.body130
  %indvars.iv438 = phi i64 [ %indvars.iv.next439, %for.body130 ], [ 0, %for.cond128.preheader ]
  %offset118.0407 = phi i32 [ %add133, %for.body130 ], [ 0, %for.cond128.preheader ]
  %arrayidx132 = getelementptr inbounds i32* %33, i64 %indvars.iv438
  %35 = load i32* %arrayidx132, align 4, !tbaa !3
  %add133 = add nsw i32 %35, %offset118.0407
  %indvars.iv.next439 = add i64 %indvars.iv438, 1
  %lftr.wideiv440 = trunc i64 %indvars.iv.next439 to i32
  %exitcond441 = icmp eq i32 %lftr.wideiv440, %irow
  br i1 %exitcond441, label %for.end136, label %for.body130

for.end136:                                       ; preds = %for.body130, %for.cond128.preheader
  %offset118.0.lcssa = phi i32 [ 0, %for.cond128.preheader ], [ %add133, %for.body130 ]
  %36 = load i32** %firstlocs, align 8, !tbaa !0
  %arrayidx138 = getelementptr inbounds i32* %36, i64 %idxprom124
  %37 = load i32* %arrayidx138, align 4, !tbaa !3
  %sub = sub nsw i32 %jcol, %37
  %cmp139 = icmp sgt i32 %sub, -1
  %cmp143 = icmp slt i32 %sub, %34
  %or.cond448 = and i1 %cmp139, %cmp143
  br i1 %or.cond448, label %if.then144, label %sw.epilog

if.then144:                                       ; preds = %for.end136
  %add145 = add nsw i32 %sub, %offset118.0.lcssa
  %38 = load double** %entries114, align 8, !tbaa !0
  %idx.ext146 = sext i32 %add145 to i64
  %add.ptr147 = getelementptr inbounds double* %38, i64 %idx.ext146
  store double* %add.ptr147, double** %ppValue, align 8, !tbaa !0
  br label %sw.epilog

sw.bb150:                                         ; preds = %if.end14
  call void @SubMtx_denseSubcolumnsInfo(%struct._SubMtx* %mtx, i32* %ncol154, i32* %nent153, i32** %firstlocs156, i32** %sizes157, double** %entries151) #6
  %cmp158 = icmp sgt i32 %jcol, -1
  br i1 %cmp158, label %land.lhs.true159, label %sw.epilog

land.lhs.true159:                                 ; preds = %sw.bb150
  %39 = load i32* %ncol154, align 4, !tbaa !3
  %cmp160 = icmp sgt i32 %39, %jcol
  br i1 %cmp160, label %land.lhs.true161, label %sw.epilog

land.lhs.true161:                                 ; preds = %land.lhs.true159
  %idxprom162 = sext i32 %jcol to i64
  %40 = load i32** %sizes157, align 8, !tbaa !0
  %arrayidx163 = getelementptr inbounds i32* %40, i64 %idxprom162
  %41 = load i32* %arrayidx163, align 4, !tbaa !3
  %cmp164 = icmp eq i32 %41, 0
  br i1 %cmp164, label %sw.epilog, label %for.cond166.preheader

for.cond166.preheader:                            ; preds = %land.lhs.true161
  %cmp167409 = icmp sgt i32 %jcol, 0
  br i1 %cmp167409, label %for.body168.lr.ph, label %for.end174

for.body168.lr.ph:                                ; preds = %for.cond166.preheader
  %42 = mul i32 %41, %jcol
  br label %for.end174

for.end174:                                       ; preds = %for.body168.lr.ph, %for.cond166.preheader
  %offset155.0.lcssa = phi i32 [ %42, %for.body168.lr.ph ], [ 0, %for.cond166.preheader ]
  %43 = load i32** %firstlocs156, align 8, !tbaa !0
  %arrayidx176 = getelementptr inbounds i32* %43, i64 %idxprom162
  %44 = load i32* %arrayidx176, align 4, !tbaa !3
  %sub177 = sub nsw i32 %irow, %44
  %cmp178 = icmp sgt i32 %sub177, -1
  %cmp182 = icmp slt i32 %sub177, %41
  %or.cond449 = and i1 %cmp178, %cmp182
  br i1 %or.cond449, label %if.then183, label %sw.epilog

if.then183:                                       ; preds = %for.end174
  %add184 = add nsw i32 %sub177, %offset155.0.lcssa
  %45 = load double** %entries151, align 8, !tbaa !0
  %idx.ext185 = sext i32 %add184 to i64
  %add.ptr186 = getelementptr inbounds double* %45, i64 %idx.ext185
  store double* %add.ptr186, double** %ppValue, align 8, !tbaa !0
  br label %sw.epilog

sw.bb189:                                         ; preds = %if.end14
  %46 = or i32 %jcol, %irow
  %47 = icmp sgt i32 %46, -1
  %cmp196 = icmp eq i32 %irow, %jcol
  %or.cond382 = and i1 %47, %cmp196
  br i1 %or.cond382, label %if.then197, label %sw.epilog

if.then197:                                       ; preds = %sw.bb189
  call void @SubMtx_diagonalInfo(%struct._SubMtx* %mtx, i32* %ncol191, double** %entries190) #6
  %48 = load i32* %ncol191, align 4, !tbaa !3
  %cmp198 = icmp sgt i32 %48, %irow
  br i1 %cmp198, label %if.then201, label %sw.epilog

if.then201:                                       ; preds = %if.then197
  %49 = load double** %entries190, align 8, !tbaa !0
  %idx.ext202 = sext i32 %irow to i64
  %add.ptr203 = getelementptr inbounds double* %49, i64 %idx.ext202
  store double* %add.ptr203, double** %ppValue, align 8, !tbaa !0
  br label %sw.epilog

sw.bb206:                                         ; preds = %if.end14, %if.end14
  %50 = or i32 %jcol, %irow
  %51 = icmp sgt i32 %50, -1
  br i1 %51, label %if.then214, label %sw.epilog

if.then214:                                       ; preds = %sw.bb206
  call void @SubMtx_blockDiagonalInfo(%struct._SubMtx* %mtx, i32* %ncol209, i32* %nent210, i32** %pivotsizes, double** %entries207) #6
  %52 = load i32* %ncol209, align 4, !tbaa !3
  %cmp215 = icmp sgt i32 %52, %irow
  %cmp217 = icmp sgt i32 %52, %jcol
  %or.cond385 = and i1 %cmp215, %cmp217
  br i1 %or.cond385, label %for.body221.lr.ph, label %sw.epilog

for.body221.lr.ph:                                ; preds = %if.then214
  %53 = load i32** %pivotsizes, align 8, !tbaa !0
  br label %for.body221

for.body221:                                      ; preds = %for.body221.lr.ph, %for.inc243
  %indvars.iv444 = phi i64 [ 0, %for.body221.lr.ph ], [ %indvars.iv.next445, %for.inc243 ]
  %kk.0423 = phi i32 [ 0, %for.body221.lr.ph ], [ %kk.1.lcssa, %for.inc243 ]
  %jrow.0422 = phi i32 [ 0, %for.body221.lr.ph ], [ %jrow.1.lcssa, %for.inc243 ]
  %arrayidx223 = getelementptr inbounds i32* %53, i64 %indvars.iv444
  %54 = load i32* %arrayidx223, align 4, !tbaa !3
  %cmp225413 = icmp sgt i32 %54, 0
  br i1 %cmp225413, label %for.body226, label %for.inc243

for.body226:                                      ; preds = %for.body221, %for.inc239
  %size.0417 = phi i32 [ %size.1, %for.inc239 ], [ %54, %for.body221 ]
  %kk.1416 = phi i32 [ %kk.2, %for.inc239 ], [ %kk.0423, %for.body221 ]
  %jrow.1415 = phi i32 [ %inc241, %for.inc239 ], [ %jrow.0422, %for.body221 ]
  %ii208.0414 = phi i32 [ %inc240, %for.inc239 ], [ 0, %for.body221 ]
  %cmp227 = icmp eq i32 %jrow.1415, %irow
  br i1 %cmp227, label %if.then228, label %if.else236

if.then228:                                       ; preds = %for.body226
  %sub230 = sub nsw i32 %54, %ii208.0414
  %cmp231 = icmp slt i32 %sub230, 0
  %.add234 = select i1 %cmp231, i32 -1, i32 %kk.1416
  br label %for.inc239

if.else236:                                       ; preds = %for.body226
  %dec = add nsw i32 %size.0417, -1
  %add237 = add nsw i32 %size.0417, %kk.1416
  br label %for.inc239

for.inc239:                                       ; preds = %if.then228, %if.else236
  %kk.2 = phi i32 [ %add237, %if.else236 ], [ %.add234, %if.then228 ]
  %size.1 = phi i32 [ %dec, %if.else236 ], [ %size.0417, %if.then228 ]
  %inc240 = add nsw i32 %ii208.0414, 1
  %inc241 = add nsw i32 %jrow.1415, 1
  %exitcond443 = icmp eq i32 %inc240, %54
  br i1 %exitcond443, label %for.cond224.for.inc243_crit_edge, label %for.body226

for.cond224.for.inc243_crit_edge:                 ; preds = %for.inc239
  %55 = add i32 %jrow.0422, %54
  br label %for.inc243

for.inc243:                                       ; preds = %for.cond224.for.inc243_crit_edge, %for.body221
  %kk.1.lcssa = phi i32 [ %kk.2, %for.cond224.for.inc243_crit_edge ], [ %kk.0423, %for.body221 ]
  %jrow.1.lcssa = phi i32 [ %55, %for.cond224.for.inc243_crit_edge ], [ %jrow.0422, %for.body221 ]
  %indvars.iv.next445 = add i64 %indvars.iv444, 1
  %cmp220 = icmp sgt i32 %jrow.1.lcssa, %irow
  br i1 %cmp220, label %for.end245, label %for.body221

for.end245:                                       ; preds = %for.inc243
  %cmp246 = icmp eq i32 %kk.1.lcssa, -1
  br i1 %cmp246, label %sw.epilog, label %if.then247

if.then247:                                       ; preds = %for.end245
  %56 = load double** %entries207, align 8, !tbaa !0
  %idx.ext248 = sext i32 %kk.1.lcssa to i64
  %add.ptr249 = getelementptr inbounds double* %56, i64 %idx.ext248
  store double* %add.ptr249, double** %ppValue, align 8, !tbaa !0
  br label %sw.epilog

sw.default:                                       ; preds = %if.end14
  %57 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call254 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %57, i8* getelementptr inbounds ([70 x i8]* @.str35, i64 0, i64 0), %struct._SubMtx* %mtx, i32 %irow, i32 %jcol, double** %ppValue, i32 %5) #4
  call void @exit(i32 -1) #5
  unreachable

sw.epilog:                                        ; preds = %sw.bb92, %for.inc110, %for.cond75.preheader, %for.inc87, %for.cond36.preheader, %for.inc48, %land.lhs.true123, %land.lhs.true161, %for.end245, %sw.bb206, %if.then247, %if.then214, %sw.bb189, %if.then201, %if.then197, %sw.bb150, %land.lhs.true159, %for.end174, %sw.bb113, %land.lhs.true121, %for.end136, %if.then106, %sw.bb53, %land.lhs.true63, %if.then83, %sw.bb26, %land.lhs.true31, %if.then44, %sw.bb, %land.lhs.true, %land.lhs.true21, %if.then23, %if.then183, %if.then144
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @SubMtx_locationOfComplexEntry(%struct._SubMtx* %mtx, i32 %irow, i32 %jcol, double** %ppReal, double** %ppImag) #0 {
entry:
  %entries = alloca double*, align 8
  %inc1 = alloca i32, align 4
  %inc2 = alloca i32, align 4
  %ncol17 = alloca i32, align 4
  %nrow18 = alloca i32, align 4
  %entries34 = alloca double*, align 8
  %nent = alloca i32, align 4
  %nrow35 = alloca i32, align 4
  %indices = alloca i32*, align 8
  %sizes = alloca i32*, align 8
  %entries66 = alloca double*, align 8
  %nent69 = alloca i32, align 4
  %ncol70 = alloca i32, align 4
  %indices72 = alloca i32*, align 8
  %sizes73 = alloca i32*, align 8
  %entries110 = alloca double*, align 8
  %nent112 = alloca i32, align 4
  %colids = alloca i32*, align 8
  %rowids = alloca i32*, align 8
  %entries136 = alloca double*, align 8
  %nent138 = alloca i32, align 4
  %nrow139 = alloca i32, align 4
  %firstlocs = alloca i32*, align 8
  %sizes141 = alloca i32*, align 8
  %entries178 = alloca double*, align 8
  %nent180 = alloca i32, align 4
  %ncol181 = alloca i32, align 4
  %firstlocs183 = alloca i32*, align 8
  %sizes184 = alloca i32*, align 8
  %entries222 = alloca double*, align 8
  %ncol223 = alloca i32, align 4
  %entries244 = alloca double*, align 8
  %ncol246 = alloca i32, align 4
  %nent247 = alloca i32, align 4
  %pivotsizes = alloca i32*, align 8
  %cmp = icmp eq %struct._SubMtx* %mtx, null
  %cmp1 = icmp slt i32 %irow, 0
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %if.then, label %lor.lhs.false2

lor.lhs.false2:                                   ; preds = %entry
  %nrow = getelementptr inbounds %struct._SubMtx* %mtx, i64 0, i32 4
  %0 = load i32* %nrow, align 4, !tbaa !3
  %cmp3 = icmp sle i32 %0, %irow
  %cmp5 = icmp slt i32 %jcol, 0
  %or.cond448 = or i1 %cmp3, %cmp5
  br i1 %or.cond448, label %if.then, label %lor.lhs.false6

lor.lhs.false6:                                   ; preds = %lor.lhs.false2
  %ncol = getelementptr inbounds %struct._SubMtx* %mtx, i64 0, i32 5
  %1 = load i32* %ncol, align 4, !tbaa !3
  %cmp7 = icmp sle i32 %1, %jcol
  %cmp9 = icmp eq double** %ppReal, null
  %or.cond449 = or i1 %cmp7, %cmp9
  %cmp11 = icmp eq double** %ppImag, null
  %or.cond450 = or i1 %or.cond449, %cmp11
  br i1 %or.cond450, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false6, %lor.lhs.false2, %entry
  %2 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([75 x i8]* @.str36, i64 0, i64 0), %struct._SubMtx* %mtx, i32 %irow, i32 %jcol, double** %ppReal, double** %ppImag) #4
  call void @exit(i32 -1) #5
  unreachable

if.end:                                           ; preds = %lor.lhs.false6
  %type = getelementptr inbounds %struct._SubMtx* %mtx, i64 0, i32 0
  %3 = load i32* %type, align 4, !tbaa !3
  %cmp12 = icmp eq i32 %3, 2
  br i1 %cmp12, label %if.end16, label %if.then13

if.then13:                                        ; preds = %if.end
  %4 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call15 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([102 x i8]* @.str37, i64 0, i64 0), %struct._SubMtx* %mtx, i32 %irow, i32 %jcol, double** %ppReal, double** %ppImag, i32 %3) #4
  call void @exit(i32 -1) #5
  unreachable

if.end16:                                         ; preds = %if.end
  store double* null, double** %ppReal, align 8, !tbaa !0
  store double* null, double** %ppImag, align 8, !tbaa !0
  %mode = getelementptr inbounds %struct._SubMtx* %mtx, i64 0, i32 1
  %5 = load i32* %mode, align 4, !tbaa !3
  switch i32 %5, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb
    i32 2, label %sw.bb33
    i32 3, label %sw.bb65
    i32 4, label %sw.bb109
    i32 5, label %sw.bb135
    i32 6, label %sw.bb177
    i32 7, label %sw.bb221
    i32 8, label %sw.bb243
    i32 9, label %sw.bb243
  ]

sw.bb:                                            ; preds = %if.end16, %if.end16
  call void @SubMtx_denseInfo(%struct._SubMtx* %mtx, i32* %nrow18, i32* %ncol17, i32* %inc1, i32* %inc2, double** %entries) #6
  %cmp19 = icmp sgt i32 %irow, -1
  br i1 %cmp19, label %land.lhs.true, label %sw.epilog

land.lhs.true:                                    ; preds = %sw.bb
  %6 = load i32* %nrow18, align 4, !tbaa !3
  %cmp20 = icmp sgt i32 %6, %irow
  %cmp22 = icmp sgt i32 %jcol, -1
  %or.cond451 = and i1 %cmp20, %cmp22
  br i1 %or.cond451, label %land.lhs.true23, label %sw.epilog

land.lhs.true23:                                  ; preds = %land.lhs.true
  %7 = load i32* %ncol17, align 4, !tbaa !3
  %cmp24 = icmp sgt i32 %7, %jcol
  br i1 %cmp24, label %if.then25, label %sw.epilog

if.then25:                                        ; preds = %land.lhs.true23
  %8 = load i32* %inc1, align 4, !tbaa !3
  %mul = mul nsw i32 %8, %irow
  %9 = load i32* %inc2, align 4, !tbaa !3
  %mul26 = mul nsw i32 %9, %jcol
  %add = add nsw i32 %mul26, %mul
  %10 = load double** %entries, align 8, !tbaa !0
  %mul27 = shl nsw i32 %add, 1
  %idx.ext = sext i32 %mul27 to i64
  %add.ptr = getelementptr inbounds double* %10, i64 %idx.ext
  store double* %add.ptr, double** %ppReal, align 8, !tbaa !0
  %add.ptr30.sum447 = or i64 %idx.ext, 1
  %add.ptr31 = getelementptr inbounds double* %10, i64 %add.ptr30.sum447
  store double* %add.ptr31, double** %ppImag, align 8, !tbaa !0
  br label %sw.epilog

sw.bb33:                                          ; preds = %if.end16
  call void @SubMtx_sparseRowsInfo(%struct._SubMtx* %mtx, i32* %nrow35, i32* %nent, i32** %sizes, i32** %indices, double** %entries34) #6
  %cmp37 = icmp sgt i32 %irow, -1
  br i1 %cmp37, label %land.lhs.true38, label %sw.epilog

land.lhs.true38:                                  ; preds = %sw.bb33
  %11 = load i32* %nrow35, align 4, !tbaa !3
  %cmp39 = icmp sgt i32 %11, %irow
  br i1 %cmp39, label %for.cond.preheader, label %sw.epilog

for.cond.preheader:                               ; preds = %land.lhs.true38
  %cmp41462 = icmp sgt i32 %irow, 0
  %12 = load i32** %sizes, align 8, !tbaa !0
  br i1 %cmp41462, label %for.body, label %for.cond43.preheader

for.cond43.preheader:                             ; preds = %for.cond.preheader, %for.body
  %offset36.0.lcssa = phi i32 [ %add42, %for.body ], [ 0, %for.cond.preheader ]
  %idxprom44 = sext i32 %irow to i64
  %arrayidx45458 = getelementptr inbounds i32* %12, i64 %idxprom44
  %13 = load i32* %arrayidx45458, align 4, !tbaa !3
  %cmp46459 = icmp sgt i32 %13, 0
  br i1 %cmp46459, label %for.body47.lr.ph, label %sw.epilog

for.body47.lr.ph:                                 ; preds = %for.cond43.preheader
  %14 = load i32** %indices, align 8, !tbaa !0
  %15 = sext i32 %offset36.0.lcssa to i64
  br label %for.body47

for.body:                                         ; preds = %for.cond.preheader, %for.body
  %indvars.iv500 = phi i64 [ %indvars.iv.next501, %for.body ], [ 0, %for.cond.preheader ]
  %offset36.0463 = phi i32 [ %add42, %for.body ], [ 0, %for.cond.preheader ]
  %arrayidx = getelementptr inbounds i32* %12, i64 %indvars.iv500
  %16 = load i32* %arrayidx, align 4, !tbaa !3
  %add42 = add nsw i32 %16, %offset36.0463
  %indvars.iv.next501 = add i64 %indvars.iv500, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next501 to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %irow
  br i1 %exitcond, label %for.cond43.preheader, label %for.body

for.body47:                                       ; preds = %for.body47.lr.ph, %for.inc60
  %indvars.iv = phi i64 [ %15, %for.body47.lr.ph ], [ %indvars.iv.next, %for.inc60 ]
  %ii.1461 = phi i32 [ 0, %for.body47.lr.ph ], [ %inc61, %for.inc60 ]
  %jj.0460 = phi i32 [ %offset36.0.lcssa, %for.body47.lr.ph ], [ %inc62, %for.inc60 ]
  %arrayidx49 = getelementptr inbounds i32* %14, i64 %indvars.iv
  %17 = load i32* %arrayidx49, align 4, !tbaa !3
  %cmp50 = icmp eq i32 %17, %jcol
  br i1 %cmp50, label %if.then51, label %for.inc60

if.then51:                                        ; preds = %for.body47
  %18 = load double** %entries34, align 8, !tbaa !0
  %mul52 = shl nsw i32 %jj.0460, 1
  %idx.ext53 = sext i32 %mul52 to i64
  %add.ptr54 = getelementptr inbounds double* %18, i64 %idx.ext53
  store double* %add.ptr54, double** %ppReal, align 8, !tbaa !0
  %add.ptr57.sum446 = or i64 %idx.ext53, 1
  %add.ptr58 = getelementptr inbounds double* %18, i64 %add.ptr57.sum446
  store double* %add.ptr58, double** %ppImag, align 8, !tbaa !0
  br label %sw.epilog

for.inc60:                                        ; preds = %for.body47
  %inc61 = add nsw i32 %ii.1461, 1
  %indvars.iv.next = add i64 %indvars.iv, 1
  %inc62 = add nsw i32 %jj.0460, 1
  %cmp46 = icmp slt i32 %inc61, %13
  br i1 %cmp46, label %for.body47, label %sw.epilog

sw.bb65:                                          ; preds = %if.end16
  call void @SubMtx_sparseColumnsInfo(%struct._SubMtx* %mtx, i32* %ncol70, i32* %nent69, i32** %sizes73, i32** %indices72, double** %entries66) #6
  %cmp74 = icmp sgt i32 %jcol, -1
  br i1 %cmp74, label %land.lhs.true75, label %sw.epilog

land.lhs.true75:                                  ; preds = %sw.bb65
  %19 = load i32* %ncol70, align 4, !tbaa !3
  %cmp76 = icmp sgt i32 %19, %jcol
  br i1 %cmp76, label %for.cond78.preheader, label %sw.epilog

for.cond78.preheader:                             ; preds = %land.lhs.true75
  %cmp79471 = icmp sgt i32 %jcol, 0
  %20 = load i32** %sizes73, align 8, !tbaa !0
  br i1 %cmp79471, label %for.body80, label %for.cond87.preheader

for.cond87.preheader:                             ; preds = %for.cond78.preheader, %for.body80
  %offset71.0.lcssa = phi i32 [ %add83, %for.body80 ], [ 0, %for.cond78.preheader ]
  %idxprom88 = sext i32 %jcol to i64
  %arrayidx89467 = getelementptr inbounds i32* %20, i64 %idxprom88
  %21 = load i32* %arrayidx89467, align 4, !tbaa !3
  %cmp90468 = icmp sgt i32 %21, 0
  br i1 %cmp90468, label %for.body91.lr.ph, label %sw.epilog

for.body91.lr.ph:                                 ; preds = %for.cond87.preheader
  %22 = load i32** %indices72, align 8, !tbaa !0
  %23 = sext i32 %offset71.0.lcssa to i64
  br label %for.body91

for.body80:                                       ; preds = %for.cond78.preheader, %for.body80
  %indvars.iv505 = phi i64 [ %indvars.iv.next506, %for.body80 ], [ 0, %for.cond78.preheader ]
  %offset71.0473 = phi i32 [ %add83, %for.body80 ], [ 0, %for.cond78.preheader ]
  %arrayidx82 = getelementptr inbounds i32* %20, i64 %indvars.iv505
  %24 = load i32* %arrayidx82, align 4, !tbaa !3
  %add83 = add nsw i32 %24, %offset71.0473
  %indvars.iv.next506 = add i64 %indvars.iv505, 1
  %lftr.wideiv507 = trunc i64 %indvars.iv.next506 to i32
  %exitcond508 = icmp eq i32 %lftr.wideiv507, %jcol
  br i1 %exitcond508, label %for.cond87.preheader, label %for.body80

for.body91:                                       ; preds = %for.body91.lr.ph, %for.inc104
  %indvars.iv503 = phi i64 [ %23, %for.body91.lr.ph ], [ %indvars.iv.next504, %for.inc104 ]
  %jj68.0470 = phi i32 [ %offset71.0.lcssa, %for.body91.lr.ph ], [ %inc106, %for.inc104 ]
  %ii67.1469 = phi i32 [ 0, %for.body91.lr.ph ], [ %inc105, %for.inc104 ]
  %arrayidx93 = getelementptr inbounds i32* %22, i64 %indvars.iv503
  %25 = load i32* %arrayidx93, align 4, !tbaa !3
  %cmp94 = icmp eq i32 %25, %irow
  br i1 %cmp94, label %if.then95, label %for.inc104

if.then95:                                        ; preds = %for.body91
  %26 = load double** %entries66, align 8, !tbaa !0
  %mul96 = shl nsw i32 %jj68.0470, 1
  %idx.ext97 = sext i32 %mul96 to i64
  %add.ptr98 = getelementptr inbounds double* %26, i64 %idx.ext97
  store double* %add.ptr98, double** %ppReal, align 8, !tbaa !0
  %add.ptr101.sum445 = or i64 %idx.ext97, 1
  %add.ptr102 = getelementptr inbounds double* %26, i64 %add.ptr101.sum445
  store double* %add.ptr102, double** %ppImag, align 8, !tbaa !0
  br label %sw.epilog

for.inc104:                                       ; preds = %for.body91
  %inc105 = add nsw i32 %ii67.1469, 1
  %indvars.iv.next504 = add i64 %indvars.iv503, 1
  %inc106 = add nsw i32 %jj68.0470, 1
  %cmp90 = icmp slt i32 %inc105, %21
  br i1 %cmp90, label %for.body91, label %sw.epilog

sw.bb109:                                         ; preds = %if.end16
  call void @SubMtx_sparseTriplesInfo(%struct._SubMtx* %mtx, i32* %nent112, i32** %rowids, i32** %colids, double** %entries110) #6
  %27 = load i32* %nent112, align 4, !tbaa !3
  %cmp114477 = icmp sgt i32 %27, 0
  br i1 %cmp114477, label %for.body115.lr.ph, label %sw.epilog

for.body115.lr.ph:                                ; preds = %sw.bb109
  %28 = load i32** %rowids, align 8, !tbaa !0
  %29 = load i32** %colids, align 8, !tbaa !0
  br label %for.body115

for.body115:                                      ; preds = %for.body115.lr.ph, %for.inc132
  %indvars.iv510 = phi i64 [ 0, %for.body115.lr.ph ], [ %indvars.iv.next511, %for.inc132 ]
  %ii111.0478 = phi i32 [ 0, %for.body115.lr.ph ], [ %inc133, %for.inc132 ]
  %arrayidx117 = getelementptr inbounds i32* %28, i64 %indvars.iv510
  %30 = load i32* %arrayidx117, align 4, !tbaa !3
  %cmp118 = icmp eq i32 %30, %irow
  br i1 %cmp118, label %land.lhs.true119, label %for.inc132

land.lhs.true119:                                 ; preds = %for.body115
  %arrayidx121 = getelementptr inbounds i32* %29, i64 %indvars.iv510
  %31 = load i32* %arrayidx121, align 4, !tbaa !3
  %cmp122 = icmp eq i32 %31, %jcol
  br i1 %cmp122, label %if.then123, label %for.inc132

if.then123:                                       ; preds = %land.lhs.true119
  %32 = load double** %entries110, align 8, !tbaa !0
  %mul124 = shl nsw i32 %ii111.0478, 1
  %idx.ext125 = sext i32 %mul124 to i64
  %add.ptr126 = getelementptr inbounds double* %32, i64 %idx.ext125
  store double* %add.ptr126, double** %ppReal, align 8, !tbaa !0
  %add.ptr129.sum444 = or i64 %idx.ext125, 1
  %add.ptr130 = getelementptr inbounds double* %32, i64 %add.ptr129.sum444
  store double* %add.ptr130, double** %ppImag, align 8, !tbaa !0
  br label %sw.epilog

for.inc132:                                       ; preds = %for.body115, %land.lhs.true119
  %indvars.iv.next511 = add i64 %indvars.iv510, 1
  %inc133 = add nsw i32 %ii111.0478, 1
  %33 = trunc i64 %indvars.iv.next511 to i32
  %cmp114 = icmp slt i32 %33, %27
  br i1 %cmp114, label %for.body115, label %sw.epilog

sw.bb135:                                         ; preds = %if.end16
  call void @SubMtx_denseSubrowsInfo(%struct._SubMtx* %mtx, i32* %nrow139, i32* %nent138, i32** %firstlocs, i32** %sizes141, double** %entries136) #6
  %cmp142 = icmp sgt i32 %irow, -1
  br i1 %cmp142, label %land.lhs.true143, label %sw.epilog

land.lhs.true143:                                 ; preds = %sw.bb135
  %34 = load i32* %nrow139, align 4, !tbaa !3
  %cmp144 = icmp sgt i32 %34, %irow
  br i1 %cmp144, label %land.lhs.true145, label %sw.epilog

land.lhs.true145:                                 ; preds = %land.lhs.true143
  %idxprom146 = sext i32 %irow to i64
  %35 = load i32** %sizes141, align 8, !tbaa !0
  %arrayidx147 = getelementptr inbounds i32* %35, i64 %idxprom146
  %36 = load i32* %arrayidx147, align 4, !tbaa !3
  %cmp148 = icmp eq i32 %36, 0
  br i1 %cmp148, label %sw.epilog, label %for.cond150.preheader

for.cond150.preheader:                            ; preds = %land.lhs.true145
  %cmp151479 = icmp sgt i32 %irow, 0
  br i1 %cmp151479, label %for.body152, label %for.end158

for.body152:                                      ; preds = %for.cond150.preheader, %for.body152
  %indvars.iv512 = phi i64 [ %indvars.iv.next513, %for.body152 ], [ 0, %for.cond150.preheader ]
  %offset140.0481 = phi i32 [ %add155, %for.body152 ], [ 0, %for.cond150.preheader ]
  %arrayidx154 = getelementptr inbounds i32* %35, i64 %indvars.iv512
  %37 = load i32* %arrayidx154, align 4, !tbaa !3
  %add155 = add nsw i32 %37, %offset140.0481
  %indvars.iv.next513 = add i64 %indvars.iv512, 1
  %lftr.wideiv514 = trunc i64 %indvars.iv.next513 to i32
  %exitcond515 = icmp eq i32 %lftr.wideiv514, %irow
  br i1 %exitcond515, label %for.end158, label %for.body152

for.end158:                                       ; preds = %for.body152, %for.cond150.preheader
  %offset140.0.lcssa = phi i32 [ 0, %for.cond150.preheader ], [ %add155, %for.body152 ]
  %38 = load i32** %firstlocs, align 8, !tbaa !0
  %arrayidx160 = getelementptr inbounds i32* %38, i64 %idxprom146
  %39 = load i32* %arrayidx160, align 4, !tbaa !3
  %sub = sub nsw i32 %jcol, %39
  %cmp161 = icmp sgt i32 %sub, -1
  %cmp165 = icmp slt i32 %sub, %36
  %or.cond521 = and i1 %cmp161, %cmp165
  br i1 %or.cond521, label %if.then166, label %sw.epilog

if.then166:                                       ; preds = %for.end158
  %add167 = add nsw i32 %sub, %offset140.0.lcssa
  %40 = load double** %entries136, align 8, !tbaa !0
  %mul168 = shl nsw i32 %add167, 1
  %idx.ext169 = sext i32 %mul168 to i64
  %add.ptr170 = getelementptr inbounds double* %40, i64 %idx.ext169
  store double* %add.ptr170, double** %ppReal, align 8, !tbaa !0
  %add.ptr173.sum443 = or i64 %idx.ext169, 1
  %add.ptr174 = getelementptr inbounds double* %40, i64 %add.ptr173.sum443
  store double* %add.ptr174, double** %ppImag, align 8, !tbaa !0
  br label %sw.epilog

sw.bb177:                                         ; preds = %if.end16
  call void @SubMtx_denseSubcolumnsInfo(%struct._SubMtx* %mtx, i32* %ncol181, i32* %nent180, i32** %firstlocs183, i32** %sizes184, double** %entries178) #6
  %cmp185 = icmp sgt i32 %jcol, -1
  br i1 %cmp185, label %land.lhs.true186, label %sw.epilog

land.lhs.true186:                                 ; preds = %sw.bb177
  %41 = load i32* %ncol181, align 4, !tbaa !3
  %cmp187 = icmp sgt i32 %41, %jcol
  br i1 %cmp187, label %land.lhs.true188, label %sw.epilog

land.lhs.true188:                                 ; preds = %land.lhs.true186
  %idxprom189 = sext i32 %jcol to i64
  %42 = load i32** %sizes184, align 8, !tbaa !0
  %arrayidx190 = getelementptr inbounds i32* %42, i64 %idxprom189
  %43 = load i32* %arrayidx190, align 4, !tbaa !3
  %cmp191 = icmp eq i32 %43, 0
  br i1 %cmp191, label %sw.epilog, label %for.cond193.preheader

for.cond193.preheader:                            ; preds = %land.lhs.true188
  %cmp194483 = icmp sgt i32 %jcol, 0
  br i1 %cmp194483, label %for.body195.lr.ph, label %for.end201

for.body195.lr.ph:                                ; preds = %for.cond193.preheader
  %44 = mul i32 %43, %jcol
  br label %for.end201

for.end201:                                       ; preds = %for.body195.lr.ph, %for.cond193.preheader
  %offset182.0.lcssa = phi i32 [ %44, %for.body195.lr.ph ], [ 0, %for.cond193.preheader ]
  %45 = load i32** %firstlocs183, align 8, !tbaa !0
  %arrayidx203 = getelementptr inbounds i32* %45, i64 %idxprom189
  %46 = load i32* %arrayidx203, align 4, !tbaa !3
  %sub204 = sub nsw i32 %irow, %46
  %cmp205 = icmp sgt i32 %sub204, -1
  %cmp209 = icmp slt i32 %sub204, %43
  %or.cond522 = and i1 %cmp205, %cmp209
  br i1 %or.cond522, label %if.then210, label %sw.epilog

if.then210:                                       ; preds = %for.end201
  %add211 = add nsw i32 %sub204, %offset182.0.lcssa
  %47 = load double** %entries178, align 8, !tbaa !0
  %mul212 = shl nsw i32 %add211, 1
  %idx.ext213 = sext i32 %mul212 to i64
  %add.ptr214 = getelementptr inbounds double* %47, i64 %idx.ext213
  store double* %add.ptr214, double** %ppReal, align 8, !tbaa !0
  %add.ptr217.sum442 = or i64 %idx.ext213, 1
  %add.ptr218 = getelementptr inbounds double* %47, i64 %add.ptr217.sum442
  store double* %add.ptr218, double** %ppImag, align 8, !tbaa !0
  br label %sw.epilog

sw.bb221:                                         ; preds = %if.end16
  %48 = or i32 %jcol, %irow
  %49 = icmp sgt i32 %48, -1
  %cmp228 = icmp eq i32 %irow, %jcol
  %or.cond453 = and i1 %49, %cmp228
  br i1 %or.cond453, label %if.then229, label %sw.epilog

if.then229:                                       ; preds = %sw.bb221
  call void @SubMtx_diagonalInfo(%struct._SubMtx* %mtx, i32* %ncol223, double** %entries222) #6
  %50 = load i32* %ncol223, align 4, !tbaa !3
  %cmp230 = icmp sgt i32 %50, %irow
  br i1 %cmp230, label %if.then233, label %sw.epilog

if.then233:                                       ; preds = %if.then229
  %51 = load double** %entries222, align 8, !tbaa !0
  %mul234 = shl nsw i32 %irow, 1
  %idx.ext235 = sext i32 %mul234 to i64
  %add.ptr236 = getelementptr inbounds double* %51, i64 %idx.ext235
  store double* %add.ptr236, double** %ppReal, align 8, !tbaa !0
  %add.ptr239.sum441 = or i64 %idx.ext235, 1
  %add.ptr240 = getelementptr inbounds double* %51, i64 %add.ptr239.sum441
  store double* %add.ptr240, double** %ppImag, align 8, !tbaa !0
  br label %sw.epilog

sw.bb243:                                         ; preds = %if.end16, %if.end16
  %52 = or i32 %jcol, %irow
  %53 = icmp sgt i32 %52, -1
  br i1 %53, label %if.then251, label %sw.epilog

if.then251:                                       ; preds = %sw.bb243
  call void @SubMtx_blockDiagonalInfo(%struct._SubMtx* %mtx, i32* %ncol246, i32* %nent247, i32** %pivotsizes, double** %entries244) #6
  %54 = load i32* %ncol246, align 4, !tbaa !3
  %cmp252 = icmp sgt i32 %54, %irow
  %cmp254 = icmp sgt i32 %54, %jcol
  %or.cond456 = and i1 %cmp252, %cmp254
  br i1 %or.cond456, label %for.body258.lr.ph, label %sw.epilog

for.body258.lr.ph:                                ; preds = %if.then251
  %55 = load i32** %pivotsizes, align 8, !tbaa !0
  br label %for.body258

for.body258:                                      ; preds = %for.body258.lr.ph, %for.inc280
  %indvars.iv518 = phi i64 [ 0, %for.body258.lr.ph ], [ %indvars.iv.next519, %for.inc280 ]
  %kk.0497 = phi i32 [ 0, %for.body258.lr.ph ], [ %kk.1.lcssa, %for.inc280 ]
  %jrow.0496 = phi i32 [ 0, %for.body258.lr.ph ], [ %jrow.1.lcssa, %for.inc280 ]
  %arrayidx260 = getelementptr inbounds i32* %55, i64 %indvars.iv518
  %56 = load i32* %arrayidx260, align 4, !tbaa !3
  %cmp262487 = icmp sgt i32 %56, 0
  br i1 %cmp262487, label %for.body263, label %for.inc280

for.body263:                                      ; preds = %for.body258, %for.inc276
  %size.0491 = phi i32 [ %size.1, %for.inc276 ], [ %56, %for.body258 ]
  %kk.1490 = phi i32 [ %kk.2, %for.inc276 ], [ %kk.0497, %for.body258 ]
  %jrow.1489 = phi i32 [ %inc278, %for.inc276 ], [ %jrow.0496, %for.body258 ]
  %ii245.0488 = phi i32 [ %inc277, %for.inc276 ], [ 0, %for.body258 ]
  %cmp264 = icmp eq i32 %jrow.1489, %irow
  br i1 %cmp264, label %if.then265, label %if.else273

if.then265:                                       ; preds = %for.body263
  %sub267 = sub nsw i32 %56, %ii245.0488
  %cmp268 = icmp slt i32 %sub267, 0
  %.add271 = select i1 %cmp268, i32 -1, i32 %kk.1490
  br label %for.inc276

if.else273:                                       ; preds = %for.body263
  %dec = add nsw i32 %size.0491, -1
  %add274 = add nsw i32 %size.0491, %kk.1490
  br label %for.inc276

for.inc276:                                       ; preds = %if.then265, %if.else273
  %kk.2 = phi i32 [ %add274, %if.else273 ], [ %.add271, %if.then265 ]
  %size.1 = phi i32 [ %dec, %if.else273 ], [ %size.0491, %if.then265 ]
  %inc277 = add nsw i32 %ii245.0488, 1
  %inc278 = add nsw i32 %jrow.1489, 1
  %exitcond517 = icmp eq i32 %inc277, %56
  br i1 %exitcond517, label %for.cond261.for.inc280_crit_edge, label %for.body263

for.cond261.for.inc280_crit_edge:                 ; preds = %for.inc276
  %57 = add i32 %jrow.0496, %56
  br label %for.inc280

for.inc280:                                       ; preds = %for.cond261.for.inc280_crit_edge, %for.body258
  %kk.1.lcssa = phi i32 [ %kk.2, %for.cond261.for.inc280_crit_edge ], [ %kk.0497, %for.body258 ]
  %jrow.1.lcssa = phi i32 [ %57, %for.cond261.for.inc280_crit_edge ], [ %jrow.0496, %for.body258 ]
  %indvars.iv.next519 = add i64 %indvars.iv518, 1
  %cmp257 = icmp sgt i32 %jrow.1.lcssa, %irow
  br i1 %cmp257, label %for.end282, label %for.body258

for.end282:                                       ; preds = %for.inc280
  %cmp283 = icmp eq i32 %kk.1.lcssa, -1
  br i1 %cmp283, label %sw.epilog, label %if.then284

if.then284:                                       ; preds = %for.end282
  %58 = load double** %entries244, align 8, !tbaa !0
  %mul285 = shl nsw i32 %kk.1.lcssa, 1
  %idx.ext286 = sext i32 %mul285 to i64
  %add.ptr287 = getelementptr inbounds double* %58, i64 %idx.ext286
  store double* %add.ptr287, double** %ppReal, align 8, !tbaa !0
  %add.ptr290.sum440 = or i64 %idx.ext286, 1
  %add.ptr291 = getelementptr inbounds double* %58, i64 %add.ptr290.sum440
  store double* %add.ptr291, double** %ppImag, align 8, !tbaa !0
  br label %sw.epilog

sw.default:                                       ; preds = %if.end16
  %59 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call296 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %59, i8* getelementptr inbounds ([76 x i8]* @.str38, i64 0, i64 0), %struct._SubMtx* %mtx, i32 %irow, i32 %jcol, double** %ppReal, double** %ppImag, i32 %5) #4
  call void @exit(i32 -1) #5
  unreachable

sw.epilog:                                        ; preds = %sw.bb109, %for.inc132, %for.cond87.preheader, %for.inc104, %for.cond43.preheader, %for.inc60, %land.lhs.true145, %land.lhs.true188, %for.end282, %sw.bb243, %if.then284, %if.then251, %sw.bb221, %if.then233, %if.then229, %sw.bb177, %land.lhs.true186, %for.end201, %sw.bb135, %land.lhs.true143, %for.end158, %if.then123, %sw.bb65, %land.lhs.true75, %if.then95, %sw.bb33, %land.lhs.true38, %if.then51, %sw.bb, %land.lhs.true, %land.lhs.true23, %if.then25, %if.then210, %if.then166
  ret void
}

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
!4 = metadata !{metadata !"double", metadata !1}
