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
  tail call void @llvm.dbg.value(metadata !{%struct._SubMtx* %mtx}, i64 0, metadata !38), !dbg !477
  tail call void @llvm.dbg.value(metadata !{i32* %prowid}, i64 0, metadata !39), !dbg !478
  tail call void @llvm.dbg.value(metadata !{i32* %pcolid}, i64 0, metadata !40), !dbg !479
  %cmp = icmp eq %struct._SubMtx* %mtx, null, !dbg !480
  %cmp1 = icmp eq i32* %prowid, null, !dbg !480
  %or.cond = or i1 %cmp, %cmp1, !dbg !480
  %cmp3 = icmp eq i32* %pcolid, null, !dbg !480
  %or.cond11 = or i1 %or.cond, %cmp3, !dbg !480
  br i1 %or.cond11, label %if.then, label %if.end, !dbg !480

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !481, !tbaa !483
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([50 x i8]* @.str, i64 0, i64 0), %struct._SubMtx* %mtx, i32* %prowid, i32* %pcolid) #5, !dbg !481
  tail call void @exit(i32 -1) #6, !dbg !486
  unreachable, !dbg !486

if.end:                                           ; preds = %entry
  %rowid = getelementptr inbounds %struct._SubMtx* %mtx, i64 0, i32 2, !dbg !487
  %1 = load i32* %rowid, align 4, !dbg !487, !tbaa !488
  store i32 %1, i32* %prowid, align 4, !dbg !487, !tbaa !488
  %colid = getelementptr inbounds %struct._SubMtx* %mtx, i64 0, i32 3, !dbg !489
  %2 = load i32* %colid, align 4, !dbg !489, !tbaa !488
  store i32 %2, i32* %pcolid, align 4, !dbg !489, !tbaa !488
  ret void, !dbg !490
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #2

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32) #3

; Function Attrs: nounwind optsize uwtable
define void @SubMtx_setIds(%struct._SubMtx* %mtx, i32 %rowid, i32 %colid) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._SubMtx* %mtx}, i64 0, metadata !45), !dbg !491
  tail call void @llvm.dbg.value(metadata !{i32 %rowid}, i64 0, metadata !46), !dbg !492
  tail call void @llvm.dbg.value(metadata !{i32 %colid}, i64 0, metadata !47), !dbg !493
  %cmp = icmp eq %struct._SubMtx* %mtx, null, !dbg !494
  br i1 %cmp, label %if.then, label %if.end, !dbg !494

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !495, !tbaa !483
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([50 x i8]* @.str1, i64 0, i64 0), %struct._SubMtx* null, i32 %rowid, i32 %colid) #5, !dbg !495
  tail call void @exit(i32 -1) #6, !dbg !497
  unreachable, !dbg !497

if.end:                                           ; preds = %entry
  %vec = getelementptr inbounds %struct._SubMtx* %mtx, i64 0, i32 8, i32 3, !dbg !498
  %1 = load double** %vec, align 8, !dbg !498, !tbaa !483
  %2 = bitcast double* %1 to i32*, !dbg !498
  tail call void @llvm.dbg.value(metadata !{i32* %2}, i64 0, metadata !48), !dbg !498
  %rowid1 = getelementptr inbounds %struct._SubMtx* %mtx, i64 0, i32 2, !dbg !499
  store i32 %rowid, i32* %rowid1, align 4, !dbg !499, !tbaa !488
  %arrayidx11 = getelementptr inbounds double* %1, i64 1, !dbg !499
  %arrayidx = bitcast double* %arrayidx11 to i32*, !dbg !499
  store i32 %rowid, i32* %arrayidx, align 4, !dbg !499, !tbaa !488
  %colid2 = getelementptr inbounds %struct._SubMtx* %mtx, i64 0, i32 3, !dbg !500
  store i32 %colid, i32* %colid2, align 4, !dbg !500, !tbaa !488
  %arrayidx3 = getelementptr inbounds i32* %2, i64 3, !dbg !500
  store i32 %colid, i32* %arrayidx3, align 4, !dbg !500, !tbaa !488
  ret void, !dbg !501
}

; Function Attrs: nounwind optsize uwtable
define void @SubMtx_dimensions(%struct._SubMtx* %mtx, i32* %pnrow, i32* %pncol, i32* %pnent) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._SubMtx* %mtx}, i64 0, metadata !53), !dbg !502
  tail call void @llvm.dbg.value(metadata !{i32* %pnrow}, i64 0, metadata !54), !dbg !503
  tail call void @llvm.dbg.value(metadata !{i32* %pncol}, i64 0, metadata !55), !dbg !504
  tail call void @llvm.dbg.value(metadata !{i32* %pnent}, i64 0, metadata !56), !dbg !505
  %cmp = icmp eq %struct._SubMtx* %mtx, null, !dbg !506
  %cmp1 = icmp eq i32* %pnrow, null, !dbg !506
  %or.cond = or i1 %cmp, %cmp1, !dbg !506
  %cmp3 = icmp eq i32* %pncol, null, !dbg !506
  %or.cond16 = or i1 %or.cond, %cmp3, !dbg !506
  %cmp5 = icmp eq i32* %pnent, null, !dbg !506
  %or.cond17 = or i1 %or.cond16, %cmp5, !dbg !506
  br i1 %or.cond17, label %if.then, label %if.end, !dbg !506

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !507, !tbaa !483
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([53 x i8]* @.str2, i64 0, i64 0), %struct._SubMtx* %mtx, i32* %pnrow, i32* %pncol, i32* %pnent) #5, !dbg !507
  tail call void @exit(i32 -1) #6, !dbg !509
  unreachable, !dbg !509

if.end:                                           ; preds = %entry
  %nrow = getelementptr inbounds %struct._SubMtx* %mtx, i64 0, i32 4, !dbg !510
  %1 = load i32* %nrow, align 4, !dbg !510, !tbaa !488
  store i32 %1, i32* %pnrow, align 4, !dbg !510, !tbaa !488
  %ncol = getelementptr inbounds %struct._SubMtx* %mtx, i64 0, i32 5, !dbg !511
  %2 = load i32* %ncol, align 4, !dbg !511, !tbaa !488
  store i32 %2, i32* %pncol, align 4, !dbg !511, !tbaa !488
  %nent = getelementptr inbounds %struct._SubMtx* %mtx, i64 0, i32 6, !dbg !512
  %3 = load i32* %nent, align 4, !dbg !512, !tbaa !488
  store i32 %3, i32* %pnent, align 4, !dbg !512, !tbaa !488
  ret void, !dbg !513
}

; Function Attrs: nounwind optsize uwtable
define void @SubMtx_rowIndices(%struct._SubMtx* nocapture %mtx, i32* nocapture %pnrow, i32** %prowind) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._SubMtx* %mtx}, i64 0, metadata !62), !dbg !514
  tail call void @llvm.dbg.value(metadata !{i32* %pnrow}, i64 0, metadata !63), !dbg !515
  tail call void @llvm.dbg.value(metadata !{i32** %prowind}, i64 0, metadata !64), !dbg !516
  %nrow = getelementptr inbounds %struct._SubMtx* %mtx, i64 0, i32 4, !dbg !517
  %0 = load i32* %nrow, align 4, !dbg !517, !tbaa !488
  store i32 %0, i32* %pnrow, align 4, !dbg !517, !tbaa !488
  %cmp = icmp eq i32** %prowind, null, !dbg !518
  br i1 %cmp, label %if.end, label %if.then, !dbg !518

if.then:                                          ; preds = %entry
  %vec = getelementptr inbounds %struct._SubMtx* %mtx, i64 0, i32 8, i32 3, !dbg !519
  %1 = load double** %vec, align 8, !dbg !519, !tbaa !483
  %2 = bitcast double* %1 to i32*, !dbg !519
  %add.ptr = getelementptr inbounds i32* %2, i64 7, !dbg !519
  store i32* %add.ptr, i32** %prowind, align 8, !dbg !519, !tbaa !483
  br label %if.end, !dbg !521

if.end:                                           ; preds = %entry, %if.then
  ret void, !dbg !522
}

; Function Attrs: nounwind optsize uwtable
define void @SubMtx_columnIndices(%struct._SubMtx* nocapture %mtx, i32* nocapture %pncol, i32** %pcolind) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._SubMtx* %mtx}, i64 0, metadata !67), !dbg !523
  tail call void @llvm.dbg.value(metadata !{i32* %pncol}, i64 0, metadata !68), !dbg !524
  tail call void @llvm.dbg.value(metadata !{i32** %pcolind}, i64 0, metadata !69), !dbg !525
  %ncol = getelementptr inbounds %struct._SubMtx* %mtx, i64 0, i32 5, !dbg !526
  %0 = load i32* %ncol, align 4, !dbg !526, !tbaa !488
  store i32 %0, i32* %pncol, align 4, !dbg !526, !tbaa !488
  %cmp = icmp eq i32** %pcolind, null, !dbg !527
  br i1 %cmp, label %if.end, label %if.then, !dbg !527

if.then:                                          ; preds = %entry
  %vec = getelementptr inbounds %struct._SubMtx* %mtx, i64 0, i32 8, i32 3, !dbg !528
  %1 = load double** %vec, align 8, !dbg !528, !tbaa !483
  %2 = bitcast double* %1 to i32*, !dbg !528
  %nrow = getelementptr inbounds %struct._SubMtx* %mtx, i64 0, i32 4, !dbg !528
  %3 = load i32* %nrow, align 4, !dbg !528, !tbaa !488
  %idx.ext = sext i32 %3 to i64, !dbg !528
  %add.ptr.sum = add i64 %idx.ext, 7, !dbg !528
  %add.ptr1 = getelementptr inbounds i32* %2, i64 %add.ptr.sum, !dbg !528
  store i32* %add.ptr1, i32** %pcolind, align 8, !dbg !528, !tbaa !483
  br label %if.end, !dbg !530

if.end:                                           ; preds = %entry, %if.then
  ret void, !dbg !531
}

; Function Attrs: nounwind optsize uwtable
define void @SubMtx_denseInfo(%struct._SubMtx* %mtx, i32* %pnrow, i32* %pncol, i32* %pinc1, i32* %pinc2, double** %pentries) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._SubMtx* %mtx}, i64 0, metadata !75), !dbg !532
  tail call void @llvm.dbg.value(metadata !{i32* %pnrow}, i64 0, metadata !76), !dbg !533
  tail call void @llvm.dbg.value(metadata !{i32* %pncol}, i64 0, metadata !77), !dbg !534
  tail call void @llvm.dbg.value(metadata !{i32* %pinc1}, i64 0, metadata !78), !dbg !535
  tail call void @llvm.dbg.value(metadata !{i32* %pinc2}, i64 0, metadata !79), !dbg !536
  tail call void @llvm.dbg.value(metadata !{double** %pentries}, i64 0, metadata !80), !dbg !537
  %cmp = icmp eq %struct._SubMtx* %mtx, null, !dbg !538
  %cmp1 = icmp eq i32* %pnrow, null, !dbg !538
  %or.cond = or i1 %cmp, %cmp1, !dbg !538
  %cmp3 = icmp eq i32* %pncol, null, !dbg !538
  %or.cond75 = or i1 %or.cond, %cmp3, !dbg !538
  %cmp5 = icmp eq i32* %pinc1, null, !dbg !538
  %or.cond76 = or i1 %or.cond75, %cmp5, !dbg !538
  %cmp7 = icmp eq i32* %pinc2, null, !dbg !538
  %or.cond77 = or i1 %or.cond76, %cmp7, !dbg !538
  %cmp9 = icmp eq double** %pentries, null, !dbg !538
  %or.cond78 = or i1 %or.cond77, %cmp9, !dbg !538
  br i1 %or.cond78, label %if.then, label %if.end, !dbg !538

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !539, !tbaa !483
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([65 x i8]* @.str3, i64 0, i64 0), %struct._SubMtx* %mtx, i32* %pnrow, i32* %pncol, i32* %pinc1, i32* %pinc2, double** %pentries) #5, !dbg !539
  tail call void @exit(i32 -1) #6, !dbg !541
  unreachable, !dbg !541

if.end:                                           ; preds = %entry
  %type = getelementptr inbounds %struct._SubMtx* %mtx, i64 0, i32 0, !dbg !542
  %1 = load i32* %type, align 4, !dbg !542, !tbaa !488
  %.off = add i32 %1, -1, !dbg !542
  %switch = icmp ult i32 %.off, 2, !dbg !542
  br i1 %switch, label %if.end17, label %if.then14, !dbg !542

if.then14:                                        ; preds = %if.end
  %2 = load %struct._IO_FILE** @stderr, align 8, !dbg !543, !tbaa !483
  %call16 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([108 x i8]* @.str4, i64 0, i64 0), %struct._SubMtx* %mtx, i32* %pnrow, i32* %pncol, i32* %pinc1, i32* %pinc2, double** %pentries, i32 %1) #5, !dbg !543
  tail call void @exit(i32 -1) #6, !dbg !545
  unreachable, !dbg !545

if.end17:                                         ; preds = %if.end
  %mode = getelementptr inbounds %struct._SubMtx* %mtx, i64 0, i32 1, !dbg !546
  %3 = load i32* %mode, align 4, !dbg !546, !tbaa !488
  %switch79 = icmp ult i32 %3, 2, !dbg !546
  br i1 %switch79, label %if.end25, label %if.then22, !dbg !546

if.then22:                                        ; preds = %if.end17
  %4 = load %struct._IO_FILE** @stderr, align 8, !dbg !547, !tbaa !483
  %call24 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([118 x i8]* @.str5, i64 0, i64 0), %struct._SubMtx* %mtx, i32* %pnrow, i32* %pncol, i32* %pinc1, i32* %pinc2, double** %pentries, i32 %3) #5, !dbg !547
  tail call void @exit(i32 -1) #6, !dbg !549
  unreachable, !dbg !549

if.end25:                                         ; preds = %if.end17
  %nrow = getelementptr inbounds %struct._SubMtx* %mtx, i64 0, i32 4, !dbg !550
  %5 = load i32* %nrow, align 4, !dbg !550, !tbaa !488
  store i32 %5, i32* %pnrow, align 4, !dbg !550, !tbaa !488
  %ncol = getelementptr inbounds %struct._SubMtx* %mtx, i64 0, i32 5, !dbg !551
  %6 = load i32* %ncol, align 4, !dbg !551, !tbaa !488
  store i32 %6, i32* %pncol, align 4, !dbg !551, !tbaa !488
  %7 = load i32* %mode, align 4, !dbg !552, !tbaa !488
  %cmp27 = icmp eq i32 %7, 0, !dbg !552
  br i1 %cmp27, label %if.then28, label %if.else, !dbg !552

if.then28:                                        ; preds = %if.end25
  %8 = load i32* %ncol, align 4, !dbg !553, !tbaa !488
  store i32 %8, i32* %pinc1, align 4, !dbg !553, !tbaa !488
  br label %if.end31, !dbg !555

if.else:                                          ; preds = %if.end25
  store i32 1, i32* %pinc1, align 4, !dbg !556, !tbaa !488
  %9 = load i32* %nrow, align 4, !dbg !558, !tbaa !488
  br label %if.end31

if.end31:                                         ; preds = %if.else, %if.then28
  %storemerge = phi i32 [ %9, %if.else ], [ 1, %if.then28 ]
  store i32 %storemerge, i32* %pinc2, align 4, !dbg !559, !tbaa !488
  %vec = getelementptr inbounds %struct._SubMtx* %mtx, i64 0, i32 8, i32 3, !dbg !560
  %10 = load double** %vec, align 8, !dbg !560, !tbaa !483
  tail call void @llvm.dbg.value(metadata !{double* %10}, i64 0, metadata !81), !dbg !560
  %11 = load i32* %nrow, align 4, !dbg !561, !tbaa !488
  %12 = load i32* %ncol, align 4, !dbg !561, !tbaa !488
  tail call void @llvm.dbg.value(metadata !{i32 %add34}, i64 0, metadata !82), !dbg !561
  %add34 = add i32 %11, 8, !dbg !561
  %add35 = add i32 %add34, %12, !dbg !562
  %div = sdiv i32 %add35, 2, !dbg !562
  %idx.ext = sext i32 %div to i64, !dbg !562
  %add.ptr = getelementptr inbounds double* %10, i64 %idx.ext, !dbg !562
  store double* %add.ptr, double** %pentries, align 8, !dbg !562, !tbaa !483
  ret void, !dbg !564
}

; Function Attrs: nounwind optsize uwtable
define void @SubMtx_sparseRowsInfo(%struct._SubMtx* %mtx, i32* %pnrow, i32* %pnent, i32** %psizes, i32** %pindices, double** %pentries) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._SubMtx* %mtx}, i64 0, metadata !87), !dbg !565
  tail call void @llvm.dbg.value(metadata !{i32* %pnrow}, i64 0, metadata !88), !dbg !566
  tail call void @llvm.dbg.value(metadata !{i32* %pnent}, i64 0, metadata !89), !dbg !567
  tail call void @llvm.dbg.value(metadata !{i32** %psizes}, i64 0, metadata !90), !dbg !568
  tail call void @llvm.dbg.value(metadata !{i32** %pindices}, i64 0, metadata !91), !dbg !569
  tail call void @llvm.dbg.value(metadata !{double** %pentries}, i64 0, metadata !92), !dbg !570
  %cmp = icmp eq %struct._SubMtx* %mtx, null, !dbg !571
  %cmp1 = icmp eq i32* %pnrow, null, !dbg !571
  %or.cond = or i1 %cmp, %cmp1, !dbg !571
  %cmp3 = icmp eq i32* %pnent, null, !dbg !571
  %or.cond75 = or i1 %or.cond, %cmp3, !dbg !571
  %cmp5 = icmp eq i32** %psizes, null, !dbg !571
  %or.cond76 = or i1 %or.cond75, %cmp5, !dbg !571
  %cmp7 = icmp eq i32** %pindices, null, !dbg !571
  %or.cond77 = or i1 %or.cond76, %cmp7, !dbg !571
  %cmp9 = icmp eq double** %pentries, null, !dbg !571
  %or.cond78 = or i1 %or.cond77, %cmp9, !dbg !571
  br i1 %or.cond78, label %if.then, label %if.end, !dbg !571

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !572, !tbaa !483
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([70 x i8]* @.str6, i64 0, i64 0), %struct._SubMtx* %mtx, i32* %pnrow, i32* %pnent, i32** %psizes, i32** %pindices, double** %pentries) #5, !dbg !572
  tail call void @exit(i32 -1) #6, !dbg !574
  unreachable, !dbg !574

if.end:                                           ; preds = %entry
  %type = getelementptr inbounds %struct._SubMtx* %mtx, i64 0, i32 0, !dbg !575
  %1 = load i32* %type, align 4, !dbg !575, !tbaa !488
  %.off = add i32 %1, -1, !dbg !575
  %switch = icmp ult i32 %.off, 2, !dbg !575
  br i1 %switch, label %if.end17, label %if.then14, !dbg !575

if.then14:                                        ; preds = %if.end
  %2 = load %struct._IO_FILE** @stderr, align 8, !dbg !576, !tbaa !483
  %call16 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([113 x i8]* @.str7, i64 0, i64 0), %struct._SubMtx* %mtx, i32* %pnrow, i32* %pnent, i32** %psizes, i32** %pindices, double** %pentries, i32 %1) #5, !dbg !576
  tail call void @exit(i32 -1) #6, !dbg !578
  unreachable, !dbg !578

if.end17:                                         ; preds = %if.end
  %mode = getelementptr inbounds %struct._SubMtx* %mtx, i64 0, i32 1, !dbg !579
  %3 = load i32* %mode, align 4, !dbg !579, !tbaa !488
  %cmp18 = icmp eq i32 %3, 2, !dbg !579
  br i1 %cmp18, label %if.end22, label %if.then19, !dbg !579

if.then19:                                        ; preds = %if.end17
  %4 = load %struct._IO_FILE** @stderr, align 8, !dbg !580, !tbaa !483
  %call21 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([100 x i8]* @.str8, i64 0, i64 0), %struct._SubMtx* %mtx, i32* %pnrow, i32* %pnent, i32** %psizes, i32** %pindices, double** %pentries, i32 %3) #5, !dbg !580
  tail call void @exit(i32 -1) #6, !dbg !582
  unreachable, !dbg !582

if.end22:                                         ; preds = %if.end17
  %nrow = getelementptr inbounds %struct._SubMtx* %mtx, i64 0, i32 4, !dbg !583
  %5 = load i32* %nrow, align 4, !dbg !583, !tbaa !488
  store i32 %5, i32* %pnrow, align 4, !dbg !583, !tbaa !488
  %nent = getelementptr inbounds %struct._SubMtx* %mtx, i64 0, i32 6, !dbg !584
  %6 = load i32* %nent, align 4, !dbg !584, !tbaa !488
  store i32 %6, i32* %pnent, align 4, !dbg !584, !tbaa !488
  %vec = getelementptr inbounds %struct._SubMtx* %mtx, i64 0, i32 8, i32 3, !dbg !585
  %7 = load double** %vec, align 8, !dbg !585, !tbaa !483
  tail call void @llvm.dbg.value(metadata !{double* %7}, i64 0, metadata !93), !dbg !585
  %8 = bitcast double* %7 to i32*, !dbg !586
  tail call void @llvm.dbg.value(metadata !{i32* %8}, i64 0, metadata !95), !dbg !586
  %9 = load i32* %nrow, align 4, !dbg !587, !tbaa !488
  %add = add nsw i32 %9, 7, !dbg !587
  %ncol = getelementptr inbounds %struct._SubMtx* %mtx, i64 0, i32 5, !dbg !587
  %10 = load i32* %ncol, align 4, !dbg !587, !tbaa !488
  %add24 = add nsw i32 %add, %10, !dbg !587
  tail call void @llvm.dbg.value(metadata !{i32 %add24}, i64 0, metadata !94), !dbg !587
  %idx.ext = sext i32 %add24 to i64, !dbg !588
  %add.ptr = getelementptr inbounds i32* %8, i64 %idx.ext, !dbg !588
  store i32* %add.ptr, i32** %psizes, align 8, !dbg !588, !tbaa !483
  %add26 = add nsw i32 %add24, %9, !dbg !589
  tail call void @llvm.dbg.value(metadata !{i32 %add26}, i64 0, metadata !94), !dbg !589
  %idx.ext27 = sext i32 %add26 to i64, !dbg !590
  %add.ptr28 = getelementptr inbounds i32* %8, i64 %idx.ext27, !dbg !590
  store i32* %add.ptr28, i32** %pindices, align 8, !dbg !590, !tbaa !483
  %11 = load i32* %nent, align 4, !dbg !591, !tbaa !488
  tail call void @llvm.dbg.value(metadata !{i32 %add30}, i64 0, metadata !94), !dbg !591
  %add30 = add i32 %11, 1, !dbg !591
  %add31 = add i32 %add30, %add26, !dbg !592
  %div = sdiv i32 %add31, 2, !dbg !592
  %idx.ext32 = sext i32 %div to i64, !dbg !592
  %add.ptr33 = getelementptr inbounds double* %7, i64 %idx.ext32, !dbg !592
  store double* %add.ptr33, double** %pentries, align 8, !dbg !592, !tbaa !483
  ret void, !dbg !594
}

; Function Attrs: nounwind optsize uwtable
define void @SubMtx_sparseColumnsInfo(%struct._SubMtx* %mtx, i32* %pncol, i32* %pnent, i32** %psizes, i32** %pindices, double** %pentries) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._SubMtx* %mtx}, i64 0, metadata !98), !dbg !595
  tail call void @llvm.dbg.value(metadata !{i32* %pncol}, i64 0, metadata !99), !dbg !596
  tail call void @llvm.dbg.value(metadata !{i32* %pnent}, i64 0, metadata !100), !dbg !597
  tail call void @llvm.dbg.value(metadata !{i32** %psizes}, i64 0, metadata !101), !dbg !598
  tail call void @llvm.dbg.value(metadata !{i32** %pindices}, i64 0, metadata !102), !dbg !599
  tail call void @llvm.dbg.value(metadata !{double** %pentries}, i64 0, metadata !103), !dbg !600
  %cmp = icmp eq %struct._SubMtx* %mtx, null, !dbg !601
  %cmp1 = icmp eq i32* %pncol, null, !dbg !601
  %or.cond = or i1 %cmp, %cmp1, !dbg !601
  %cmp3 = icmp eq i32* %pnent, null, !dbg !601
  %or.cond75 = or i1 %or.cond, %cmp3, !dbg !601
  %cmp5 = icmp eq i32** %psizes, null, !dbg !601
  %or.cond76 = or i1 %or.cond75, %cmp5, !dbg !601
  %cmp7 = icmp eq i32** %pindices, null, !dbg !601
  %or.cond77 = or i1 %or.cond76, %cmp7, !dbg !601
  %cmp9 = icmp eq double** %pentries, null, !dbg !601
  %or.cond78 = or i1 %or.cond77, %cmp9, !dbg !601
  br i1 %or.cond78, label %if.then, label %if.end, !dbg !601

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !602, !tbaa !483
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([73 x i8]* @.str9, i64 0, i64 0), %struct._SubMtx* %mtx, i32* %pncol, i32* %pnent, i32** %psizes, i32** %pindices, double** %pentries) #5, !dbg !602
  tail call void @exit(i32 -1) #6, !dbg !604
  unreachable, !dbg !604

if.end:                                           ; preds = %entry
  %type = getelementptr inbounds %struct._SubMtx* %mtx, i64 0, i32 0, !dbg !605
  %1 = load i32* %type, align 4, !dbg !605, !tbaa !488
  %.off = add i32 %1, -1, !dbg !605
  %switch = icmp ult i32 %.off, 2, !dbg !605
  br i1 %switch, label %if.end17, label %if.then14, !dbg !605

if.then14:                                        ; preds = %if.end
  %2 = load %struct._IO_FILE** @stderr, align 8, !dbg !606, !tbaa !483
  %call16 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([116 x i8]* @.str10, i64 0, i64 0), %struct._SubMtx* %mtx, i32* %pncol, i32* %pnent, i32** %psizes, i32** %pindices, double** %pentries, i32 %1) #5, !dbg !606
  tail call void @exit(i32 -1) #6, !dbg !608
  unreachable, !dbg !608

if.end17:                                         ; preds = %if.end
  %mode = getelementptr inbounds %struct._SubMtx* %mtx, i64 0, i32 1, !dbg !609
  %3 = load i32* %mode, align 4, !dbg !609, !tbaa !488
  %cmp18 = icmp eq i32 %3, 3, !dbg !609
  br i1 %cmp18, label %if.end22, label %if.then19, !dbg !609

if.then19:                                        ; preds = %if.end17
  %4 = load %struct._IO_FILE** @stderr, align 8, !dbg !610, !tbaa !483
  %call21 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([106 x i8]* @.str11, i64 0, i64 0), %struct._SubMtx* %mtx, i32* %pncol, i32* %pnent, i32** %psizes, i32** %pindices, double** %pentries, i32 %3) #5, !dbg !610
  tail call void @exit(i32 -1) #6, !dbg !612
  unreachable, !dbg !612

if.end22:                                         ; preds = %if.end17
  %ncol = getelementptr inbounds %struct._SubMtx* %mtx, i64 0, i32 5, !dbg !613
  %5 = load i32* %ncol, align 4, !dbg !613, !tbaa !488
  store i32 %5, i32* %pncol, align 4, !dbg !613, !tbaa !488
  %nent = getelementptr inbounds %struct._SubMtx* %mtx, i64 0, i32 6, !dbg !614
  %6 = load i32* %nent, align 4, !dbg !614, !tbaa !488
  store i32 %6, i32* %pnent, align 4, !dbg !614, !tbaa !488
  %vec = getelementptr inbounds %struct._SubMtx* %mtx, i64 0, i32 8, i32 3, !dbg !615
  %7 = load double** %vec, align 8, !dbg !615, !tbaa !483
  tail call void @llvm.dbg.value(metadata !{double* %7}, i64 0, metadata !104), !dbg !615
  %8 = bitcast double* %7 to i32*, !dbg !616
  tail call void @llvm.dbg.value(metadata !{i32* %8}, i64 0, metadata !106), !dbg !616
  %nrow = getelementptr inbounds %struct._SubMtx* %mtx, i64 0, i32 4, !dbg !617
  %9 = load i32* %nrow, align 4, !dbg !617, !tbaa !488
  %add = add nsw i32 %9, 7, !dbg !617
  %10 = load i32* %ncol, align 4, !dbg !617, !tbaa !488
  %add24 = add nsw i32 %add, %10, !dbg !617
  tail call void @llvm.dbg.value(metadata !{i32 %add24}, i64 0, metadata !105), !dbg !617
  %idx.ext = sext i32 %add24 to i64, !dbg !618
  %add.ptr = getelementptr inbounds i32* %8, i64 %idx.ext, !dbg !618
  store i32* %add.ptr, i32** %psizes, align 8, !dbg !618, !tbaa !483
  %add26 = add nsw i32 %add24, %10, !dbg !619
  tail call void @llvm.dbg.value(metadata !{i32 %add26}, i64 0, metadata !105), !dbg !619
  %idx.ext27 = sext i32 %add26 to i64, !dbg !620
  %add.ptr28 = getelementptr inbounds i32* %8, i64 %idx.ext27, !dbg !620
  store i32* %add.ptr28, i32** %pindices, align 8, !dbg !620, !tbaa !483
  %11 = load i32* %nent, align 4, !dbg !621, !tbaa !488
  tail call void @llvm.dbg.value(metadata !{i32 %add30}, i64 0, metadata !105), !dbg !621
  %add30 = add i32 %11, 1, !dbg !621
  %add31 = add i32 %add30, %add26, !dbg !622
  %div = sdiv i32 %add31, 2, !dbg !622
  %idx.ext32 = sext i32 %div to i64, !dbg !622
  %add.ptr33 = getelementptr inbounds double* %7, i64 %idx.ext32, !dbg !622
  store double* %add.ptr33, double** %pentries, align 8, !dbg !622, !tbaa !483
  ret void, !dbg !624
}

; Function Attrs: nounwind optsize uwtable
define void @SubMtx_sparseTriplesInfo(%struct._SubMtx* %mtx, i32* %pnent, i32** %prowids, i32** %pcolids, double** %pentries) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._SubMtx* %mtx}, i64 0, metadata !111), !dbg !625
  tail call void @llvm.dbg.value(metadata !{i32* %pnent}, i64 0, metadata !112), !dbg !626
  tail call void @llvm.dbg.value(metadata !{i32** %prowids}, i64 0, metadata !113), !dbg !627
  tail call void @llvm.dbg.value(metadata !{i32** %pcolids}, i64 0, metadata !114), !dbg !628
  tail call void @llvm.dbg.value(metadata !{double** %pentries}, i64 0, metadata !115), !dbg !629
  %cmp = icmp eq %struct._SubMtx* %mtx, null, !dbg !630
  %cmp1 = icmp eq i32* %pnent, null, !dbg !630
  %or.cond = or i1 %cmp, %cmp1, !dbg !630
  %cmp3 = icmp eq i32** %prowids, null, !dbg !630
  %or.cond67 = or i1 %or.cond, %cmp3, !dbg !630
  %cmp5 = icmp eq i32** %pcolids, null, !dbg !630
  %or.cond68 = or i1 %or.cond67, %cmp5, !dbg !630
  %cmp7 = icmp eq double** %pentries, null, !dbg !630
  %or.cond69 = or i1 %or.cond68, %cmp7, !dbg !630
  br i1 %or.cond69, label %if.then, label %if.end, !dbg !630

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !631, !tbaa !483
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([70 x i8]* @.str12, i64 0, i64 0), %struct._SubMtx* %mtx, i32* %pnent, i32** %prowids, i32** %pcolids, double** %pentries) #5, !dbg !631
  tail call void @exit(i32 -1) #6, !dbg !633
  unreachable, !dbg !633

if.end:                                           ; preds = %entry
  %type = getelementptr inbounds %struct._SubMtx* %mtx, i64 0, i32 0, !dbg !634
  %1 = load i32* %type, align 4, !dbg !634, !tbaa !488
  %.off = add i32 %1, -1, !dbg !634
  %switch = icmp ult i32 %.off, 2, !dbg !634
  br i1 %switch, label %if.end15, label %if.then12, !dbg !634

if.then12:                                        ; preds = %if.end
  %2 = load %struct._IO_FILE** @stderr, align 8, !dbg !635, !tbaa !483
  %call14 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([113 x i8]* @.str13, i64 0, i64 0), %struct._SubMtx* %mtx, i32* %pnent, i32** %prowids, i32** %pcolids, double** %pentries, i32 %1) #5, !dbg !635
  tail call void @exit(i32 -1) #6, !dbg !637
  unreachable, !dbg !637

if.end15:                                         ; preds = %if.end
  %mode = getelementptr inbounds %struct._SubMtx* %mtx, i64 0, i32 1, !dbg !638
  %3 = load i32* %mode, align 4, !dbg !638, !tbaa !488
  %cmp16 = icmp eq i32 %3, 4, !dbg !638
  br i1 %cmp16, label %if.end20, label %if.then17, !dbg !638

if.then17:                                        ; preds = %if.end15
  %4 = load %struct._IO_FILE** @stderr, align 8, !dbg !639, !tbaa !483
  %call19 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([103 x i8]* @.str14, i64 0, i64 0), %struct._SubMtx* %mtx, i32* %pnent, i32** %prowids, i32** %pcolids, double** %pentries, i32 %3) #5, !dbg !639
  tail call void @exit(i32 -1) #6, !dbg !641
  unreachable, !dbg !641

if.end20:                                         ; preds = %if.end15
  %nent = getelementptr inbounds %struct._SubMtx* %mtx, i64 0, i32 6, !dbg !642
  %5 = load i32* %nent, align 4, !dbg !642, !tbaa !488
  store i32 %5, i32* %pnent, align 4, !dbg !642, !tbaa !488
  %vec = getelementptr inbounds %struct._SubMtx* %mtx, i64 0, i32 8, i32 3, !dbg !643
  %6 = load double** %vec, align 8, !dbg !643, !tbaa !483
  tail call void @llvm.dbg.value(metadata !{double* %6}, i64 0, metadata !116), !dbg !643
  %7 = bitcast double* %6 to i32*, !dbg !644
  tail call void @llvm.dbg.value(metadata !{i32* %7}, i64 0, metadata !118), !dbg !644
  %nrow = getelementptr inbounds %struct._SubMtx* %mtx, i64 0, i32 4, !dbg !645
  %8 = load i32* %nrow, align 4, !dbg !645, !tbaa !488
  %add = add nsw i32 %8, 7, !dbg !645
  %ncol = getelementptr inbounds %struct._SubMtx* %mtx, i64 0, i32 5, !dbg !645
  %9 = load i32* %ncol, align 4, !dbg !645, !tbaa !488
  %add21 = add nsw i32 %add, %9, !dbg !645
  tail call void @llvm.dbg.value(metadata !{i32 %add21}, i64 0, metadata !117), !dbg !645
  %idx.ext = sext i32 %add21 to i64, !dbg !646
  %add.ptr = getelementptr inbounds i32* %7, i64 %idx.ext, !dbg !646
  store i32* %add.ptr, i32** %prowids, align 8, !dbg !646, !tbaa !483
  %10 = load i32* %nent, align 4, !dbg !647, !tbaa !488
  %add23 = add nsw i32 %add21, %10, !dbg !647
  tail call void @llvm.dbg.value(metadata !{i32 %add23}, i64 0, metadata !117), !dbg !647
  %idx.ext24 = sext i32 %add23 to i64, !dbg !648
  %add.ptr25 = getelementptr inbounds i32* %7, i64 %idx.ext24, !dbg !648
  store i32* %add.ptr25, i32** %pcolids, align 8, !dbg !648, !tbaa !483
  tail call void @llvm.dbg.value(metadata !{i32 %add27}, i64 0, metadata !117), !dbg !649
  %add27 = add i32 %10, 1, !dbg !649
  %add28 = add i32 %add27, %add23, !dbg !650
  %div = sdiv i32 %add28, 2, !dbg !650
  %idx.ext29 = sext i32 %div to i64, !dbg !650
  %add.ptr30 = getelementptr inbounds double* %6, i64 %idx.ext29, !dbg !650
  store double* %add.ptr30, double** %pentries, align 8, !dbg !650, !tbaa !483
  ret void, !dbg !652
}

; Function Attrs: nounwind optsize uwtable
define void @SubMtx_denseSubrowsInfo(%struct._SubMtx* %mtx, i32* %pnrow, i32* %pnent, i32** %pfirstlocs, i32** %psizes, double** %pentries) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._SubMtx* %mtx}, i64 0, metadata !121), !dbg !653
  tail call void @llvm.dbg.value(metadata !{i32* %pnrow}, i64 0, metadata !122), !dbg !654
  tail call void @llvm.dbg.value(metadata !{i32* %pnent}, i64 0, metadata !123), !dbg !655
  tail call void @llvm.dbg.value(metadata !{i32** %pfirstlocs}, i64 0, metadata !124), !dbg !656
  tail call void @llvm.dbg.value(metadata !{i32** %psizes}, i64 0, metadata !125), !dbg !657
  tail call void @llvm.dbg.value(metadata !{double** %pentries}, i64 0, metadata !126), !dbg !658
  %cmp = icmp eq %struct._SubMtx* %mtx, null, !dbg !659
  %cmp1 = icmp eq i32* %pnrow, null, !dbg !659
  %or.cond = or i1 %cmp, %cmp1, !dbg !659
  %cmp3 = icmp eq i32* %pnent, null, !dbg !659
  %or.cond81 = or i1 %or.cond, %cmp3, !dbg !659
  %cmp5 = icmp eq i32** %pfirstlocs, null, !dbg !659
  %or.cond82 = or i1 %or.cond81, %cmp5, !dbg !659
  %cmp7 = icmp eq i32** %psizes, null, !dbg !659
  %or.cond83 = or i1 %or.cond82, %cmp7, !dbg !659
  %cmp9 = icmp eq double** %pentries, null, !dbg !659
  %or.cond84 = or i1 %or.cond83, %cmp9, !dbg !659
  br i1 %or.cond84, label %if.then, label %if.end13, !dbg !659

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !660, !tbaa !483
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([72 x i8]* @.str15, i64 0, i64 0), %struct._SubMtx* %mtx, i32* %pnrow, i32* %pnent, i32** %pfirstlocs, i32** %psizes, double** %pentries) #5, !dbg !660
  br i1 %cmp, label %if.end, label %if.then11, !dbg !662

if.then11:                                        ; preds = %if.then
  %1 = load %struct._IO_FILE** @stderr, align 8, !dbg !663, !tbaa !483
  %call12 = tail call i32 @SubMtx_writeForHumanEye(%struct._SubMtx* %mtx, %struct._IO_FILE* %1) #5, !dbg !663
  br label %if.end, !dbg !665

if.end:                                           ; preds = %if.then, %if.then11
  tail call void @exit(i32 -1) #6, !dbg !666
  unreachable, !dbg !666

if.end13:                                         ; preds = %entry
  %type = getelementptr inbounds %struct._SubMtx* %mtx, i64 0, i32 0, !dbg !667
  %2 = load i32* %type, align 4, !dbg !667, !tbaa !488
  %.off = add i32 %2, -1, !dbg !667
  %switch = icmp ult i32 %.off, 2, !dbg !667
  br i1 %switch, label %if.end21, label %if.then18, !dbg !667

if.then18:                                        ; preds = %if.end13
  %3 = load %struct._IO_FILE** @stderr, align 8, !dbg !668, !tbaa !483
  %call20 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([115 x i8]* @.str16, i64 0, i64 0), %struct._SubMtx* %mtx, i32* %pnrow, i32* %pnent, i32** %pfirstlocs, i32** %psizes, double** %pentries, i32 %2) #5, !dbg !668
  tail call void @exit(i32 -1) #6, !dbg !670
  unreachable, !dbg !670

if.end21:                                         ; preds = %if.end13
  %mode = getelementptr inbounds %struct._SubMtx* %mtx, i64 0, i32 1, !dbg !671
  %4 = load i32* %mode, align 4, !dbg !671, !tbaa !488
  %cmp22 = icmp eq i32 %4, 5, !dbg !671
  br i1 %cmp22, label %if.end26, label %if.then23, !dbg !671

if.then23:                                        ; preds = %if.end21
  %5 = load %struct._IO_FILE** @stderr, align 8, !dbg !672, !tbaa !483
  %call25 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([104 x i8]* @.str17, i64 0, i64 0), %struct._SubMtx* %mtx, i32* %pnrow, i32* %pnent, i32** %pfirstlocs, i32** %psizes, double** %pentries, i32 %4) #5, !dbg !672
  tail call void @exit(i32 -1) #6, !dbg !674
  unreachable, !dbg !674

if.end26:                                         ; preds = %if.end21
  %nrow = getelementptr inbounds %struct._SubMtx* %mtx, i64 0, i32 4, !dbg !675
  %6 = load i32* %nrow, align 4, !dbg !675, !tbaa !488
  store i32 %6, i32* %pnrow, align 4, !dbg !675, !tbaa !488
  %nent = getelementptr inbounds %struct._SubMtx* %mtx, i64 0, i32 6, !dbg !676
  %7 = load i32* %nent, align 4, !dbg !676, !tbaa !488
  store i32 %7, i32* %pnent, align 4, !dbg !676, !tbaa !488
  %vec = getelementptr inbounds %struct._SubMtx* %mtx, i64 0, i32 8, i32 3, !dbg !677
  %8 = load double** %vec, align 8, !dbg !677, !tbaa !483
  tail call void @llvm.dbg.value(metadata !{double* %8}, i64 0, metadata !127), !dbg !677
  %9 = bitcast double* %8 to i32*, !dbg !678
  tail call void @llvm.dbg.value(metadata !{i32* %9}, i64 0, metadata !129), !dbg !678
  %10 = load i32* %nrow, align 4, !dbg !679, !tbaa !488
  %add = add nsw i32 %10, 7, !dbg !679
  %ncol = getelementptr inbounds %struct._SubMtx* %mtx, i64 0, i32 5, !dbg !679
  %11 = load i32* %ncol, align 4, !dbg !679, !tbaa !488
  %add28 = add nsw i32 %add, %11, !dbg !679
  tail call void @llvm.dbg.value(metadata !{i32 %add28}, i64 0, metadata !128), !dbg !679
  %idx.ext = sext i32 %add28 to i64, !dbg !680
  %add.ptr = getelementptr inbounds i32* %9, i64 %idx.ext, !dbg !680
  store i32* %add.ptr, i32** %pfirstlocs, align 8, !dbg !680, !tbaa !483
  %add30 = add nsw i32 %add28, %10, !dbg !681
  tail call void @llvm.dbg.value(metadata !{i32 %add30}, i64 0, metadata !128), !dbg !681
  %idx.ext31 = sext i32 %add30 to i64, !dbg !682
  %add.ptr32 = getelementptr inbounds i32* %9, i64 %idx.ext31, !dbg !682
  store i32* %add.ptr32, i32** %psizes, align 8, !dbg !682, !tbaa !483
  tail call void @llvm.dbg.value(metadata !{i32 %add34}, i64 0, metadata !128), !dbg !683
  %add34 = add i32 %10, 1, !dbg !683
  %add35 = add i32 %add34, %add30, !dbg !684
  %div = sdiv i32 %add35, 2, !dbg !684
  %idx.ext36 = sext i32 %div to i64, !dbg !684
  %add.ptr37 = getelementptr inbounds double* %8, i64 %idx.ext36, !dbg !684
  store double* %add.ptr37, double** %pentries, align 8, !dbg !684, !tbaa !483
  ret void, !dbg !686
}

; Function Attrs: optsize
declare i32 @SubMtx_writeForHumanEye(%struct._SubMtx*, %struct._IO_FILE*) #4

; Function Attrs: nounwind optsize uwtable
define void @SubMtx_denseSubcolumnsInfo(%struct._SubMtx* %mtx, i32* %pncol, i32* %pnent, i32** %pfirstlocs, i32** %psizes, double** %pentries) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._SubMtx* %mtx}, i64 0, metadata !132), !dbg !687
  tail call void @llvm.dbg.value(metadata !{i32* %pncol}, i64 0, metadata !133), !dbg !688
  tail call void @llvm.dbg.value(metadata !{i32* %pnent}, i64 0, metadata !134), !dbg !689
  tail call void @llvm.dbg.value(metadata !{i32** %pfirstlocs}, i64 0, metadata !135), !dbg !690
  tail call void @llvm.dbg.value(metadata !{i32** %psizes}, i64 0, metadata !136), !dbg !691
  tail call void @llvm.dbg.value(metadata !{double** %pentries}, i64 0, metadata !137), !dbg !692
  %cmp = icmp eq %struct._SubMtx* %mtx, null, !dbg !693
  %cmp1 = icmp eq i32** %pfirstlocs, null, !dbg !693
  %or.cond = or i1 %cmp, %cmp1, !dbg !693
  %cmp3 = icmp eq i32** %psizes, null, !dbg !693
  %or.cond69 = or i1 %or.cond, %cmp3, !dbg !693
  %cmp5 = icmp eq double** %pentries, null, !dbg !693
  %or.cond70 = or i1 %or.cond69, %cmp5, !dbg !693
  br i1 %or.cond70, label %if.then, label %if.end, !dbg !693

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !694, !tbaa !483
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([75 x i8]* @.str18, i64 0, i64 0), %struct._SubMtx* %mtx, i32* %pncol, i32* %pnent, i32** %pfirstlocs, i32** %psizes, double** %pentries) #5, !dbg !694
  tail call void @exit(i32 -1) #6, !dbg !696
  unreachable, !dbg !696

if.end:                                           ; preds = %entry
  %type = getelementptr inbounds %struct._SubMtx* %mtx, i64 0, i32 0, !dbg !697
  %1 = load i32* %type, align 4, !dbg !697, !tbaa !488
  %.off = add i32 %1, -1, !dbg !697
  %switch = icmp ult i32 %.off, 2, !dbg !697
  br i1 %switch, label %if.end13, label %if.then10, !dbg !697

if.then10:                                        ; preds = %if.end
  %2 = load %struct._IO_FILE** @stderr, align 8, !dbg !698, !tbaa !483
  %call12 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([117 x i8]* @.str19, i64 0, i64 0), %struct._SubMtx* %mtx, i32* %pncol, i32* %pnent, i32** %pfirstlocs, i32** %psizes, double** %pentries, i32 %1) #5, !dbg !698
  tail call void @exit(i32 -1) #6, !dbg !700
  unreachable, !dbg !700

if.end13:                                         ; preds = %if.end
  %mode = getelementptr inbounds %struct._SubMtx* %mtx, i64 0, i32 1, !dbg !701
  %3 = load i32* %mode, align 4, !dbg !701, !tbaa !488
  %cmp14 = icmp eq i32 %3, 6, !dbg !701
  br i1 %cmp14, label %if.end18, label %if.then15, !dbg !701

if.then15:                                        ; preds = %if.end13
  %4 = load %struct._IO_FILE** @stderr, align 8, !dbg !702, !tbaa !483
  %call17 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([110 x i8]* @.str20, i64 0, i64 0), %struct._SubMtx* %mtx, i32* %pncol, i32* %pnent, i32** %pfirstlocs, i32** %psizes, double** %pentries, i32 %3) #5, !dbg !702
  tail call void @exit(i32 -1) #6, !dbg !704
  unreachable, !dbg !704

if.end18:                                         ; preds = %if.end13
  %ncol = getelementptr inbounds %struct._SubMtx* %mtx, i64 0, i32 5, !dbg !705
  %5 = load i32* %ncol, align 4, !dbg !705, !tbaa !488
  store i32 %5, i32* %pncol, align 4, !dbg !705, !tbaa !488
  %nent = getelementptr inbounds %struct._SubMtx* %mtx, i64 0, i32 6, !dbg !706
  %6 = load i32* %nent, align 4, !dbg !706, !tbaa !488
  store i32 %6, i32* %pnent, align 4, !dbg !706, !tbaa !488
  %vec = getelementptr inbounds %struct._SubMtx* %mtx, i64 0, i32 8, i32 3, !dbg !707
  %7 = load double** %vec, align 8, !dbg !707, !tbaa !483
  tail call void @llvm.dbg.value(metadata !{double* %7}, i64 0, metadata !138), !dbg !707
  %8 = bitcast double* %7 to i32*, !dbg !708
  tail call void @llvm.dbg.value(metadata !{i32* %8}, i64 0, metadata !140), !dbg !708
  %nrow = getelementptr inbounds %struct._SubMtx* %mtx, i64 0, i32 4, !dbg !709
  %9 = load i32* %nrow, align 4, !dbg !709, !tbaa !488
  %add = add nsw i32 %9, 7, !dbg !709
  %10 = load i32* %ncol, align 4, !dbg !709, !tbaa !488
  %add20 = add nsw i32 %add, %10, !dbg !709
  tail call void @llvm.dbg.value(metadata !{i32 %add20}, i64 0, metadata !139), !dbg !709
  %idx.ext = sext i32 %add20 to i64, !dbg !710
  %add.ptr = getelementptr inbounds i32* %8, i64 %idx.ext, !dbg !710
  store i32* %add.ptr, i32** %pfirstlocs, align 8, !dbg !710, !tbaa !483
  %add22 = add nsw i32 %add20, %10, !dbg !711
  tail call void @llvm.dbg.value(metadata !{i32 %add22}, i64 0, metadata !139), !dbg !711
  %idx.ext23 = sext i32 %add22 to i64, !dbg !712
  %add.ptr24 = getelementptr inbounds i32* %8, i64 %idx.ext23, !dbg !712
  store i32* %add.ptr24, i32** %psizes, align 8, !dbg !712, !tbaa !483
  tail call void @llvm.dbg.value(metadata !{i32 %add26}, i64 0, metadata !139), !dbg !713
  %add26 = add i32 %10, 1, !dbg !713
  %add27 = add i32 %add26, %add22, !dbg !714
  %div = sdiv i32 %add27, 2, !dbg !714
  %idx.ext28 = sext i32 %div to i64, !dbg !714
  %add.ptr29 = getelementptr inbounds double* %7, i64 %idx.ext28, !dbg !714
  store double* %add.ptr29, double** %pentries, align 8, !dbg !714, !tbaa !483
  ret void, !dbg !716
}

; Function Attrs: nounwind optsize uwtable
define void @SubMtx_diagonalInfo(%struct._SubMtx* %mtx, i32* %pncol, double** %pentries) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._SubMtx* %mtx}, i64 0, metadata !145), !dbg !717
  tail call void @llvm.dbg.value(metadata !{i32* %pncol}, i64 0, metadata !146), !dbg !718
  tail call void @llvm.dbg.value(metadata !{double** %pentries}, i64 0, metadata !147), !dbg !719
  %cmp = icmp eq %struct._SubMtx* %mtx, null, !dbg !720
  %cmp1 = icmp eq i32* %pncol, null, !dbg !720
  %or.cond = or i1 %cmp, %cmp1, !dbg !720
  %cmp3 = icmp eq double** %pentries, null, !dbg !720
  %or.cond41 = or i1 %or.cond, %cmp3, !dbg !720
  br i1 %or.cond41, label %if.then, label %if.end, !dbg !720

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !721, !tbaa !483
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([59 x i8]* @.str21, i64 0, i64 0), %struct._SubMtx* %mtx, i32* %pncol, double** %pentries) #5, !dbg !721
  tail call void @exit(i32 -1) #6, !dbg !723
  unreachable, !dbg !723

if.end:                                           ; preds = %entry
  %type = getelementptr inbounds %struct._SubMtx* %mtx, i64 0, i32 0, !dbg !724
  %1 = load i32* %type, align 4, !dbg !724, !tbaa !488
  %.off = add i32 %1, -1, !dbg !724
  %switch = icmp ult i32 %.off, 2, !dbg !724
  br i1 %switch, label %if.end11, label %if.then8, !dbg !724

if.then8:                                         ; preds = %if.end
  %2 = load %struct._IO_FILE** @stderr, align 8, !dbg !725, !tbaa !483
  %call10 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([102 x i8]* @.str22, i64 0, i64 0), %struct._SubMtx* %mtx, i32* %pncol, double** %pentries, i32 %1) #5, !dbg !725
  tail call void @exit(i32 -1) #6, !dbg !727
  unreachable, !dbg !727

if.end11:                                         ; preds = %if.end
  %mode = getelementptr inbounds %struct._SubMtx* %mtx, i64 0, i32 1, !dbg !728
  %3 = load i32* %mode, align 4, !dbg !728, !tbaa !488
  %cmp12 = icmp eq i32 %3, 7, !dbg !728
  br i1 %cmp12, label %if.end16, label %if.then13, !dbg !728

if.then13:                                        ; preds = %if.end11
  %4 = load %struct._IO_FILE** @stderr, align 8, !dbg !729, !tbaa !483
  %call15 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([86 x i8]* @.str23, i64 0, i64 0), %struct._SubMtx* %mtx, i32* %pncol, double** %pentries, i32 %3) #5, !dbg !729
  tail call void @exit(i32 -1) #6, !dbg !731
  unreachable, !dbg !731

if.end16:                                         ; preds = %if.end11
  %ncol = getelementptr inbounds %struct._SubMtx* %mtx, i64 0, i32 5, !dbg !732
  %5 = load i32* %ncol, align 4, !dbg !732, !tbaa !488
  store i32 %5, i32* %pncol, align 4, !dbg !732, !tbaa !488
  %vec = getelementptr inbounds %struct._SubMtx* %mtx, i64 0, i32 8, i32 3, !dbg !733
  %6 = load double** %vec, align 8, !dbg !733, !tbaa !483
  tail call void @llvm.dbg.value(metadata !{double* %6}, i64 0, metadata !148), !dbg !733
  %nrow = getelementptr inbounds %struct._SubMtx* %mtx, i64 0, i32 4, !dbg !734
  %7 = load i32* %nrow, align 4, !dbg !734, !tbaa !488
  %8 = load i32* %ncol, align 4, !dbg !734, !tbaa !488
  tail call void @llvm.dbg.value(metadata !{i32 %add18}, i64 0, metadata !149), !dbg !734
  %add18 = add i32 %7, 8, !dbg !734
  %add19 = add i32 %add18, %8, !dbg !735
  %div = sdiv i32 %add19, 2, !dbg !735
  %idx.ext = sext i32 %div to i64, !dbg !735
  %add.ptr = getelementptr inbounds double* %6, i64 %idx.ext, !dbg !735
  store double* %add.ptr, double** %pentries, align 8, !dbg !735, !tbaa !483
  ret void, !dbg !737
}

; Function Attrs: nounwind optsize uwtable
define void @SubMtx_blockDiagonalInfo(%struct._SubMtx* %mtx, i32* %pncol, i32* %pnent, i32** %ppivotsizes, double** %pentries) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._SubMtx* %mtx}, i64 0, metadata !155), !dbg !738
  tail call void @llvm.dbg.value(metadata !{i32* %pncol}, i64 0, metadata !156), !dbg !739
  tail call void @llvm.dbg.value(metadata !{i32* %pnent}, i64 0, metadata !157), !dbg !740
  tail call void @llvm.dbg.value(metadata !{i32** %ppivotsizes}, i64 0, metadata !158), !dbg !741
  tail call void @llvm.dbg.value(metadata !{double** %pentries}, i64 0, metadata !159), !dbg !742
  %cmp = icmp eq %struct._SubMtx* %mtx, null, !dbg !743
  %cmp1 = icmp eq i32* %pncol, null, !dbg !743
  %or.cond = or i1 %cmp, %cmp1, !dbg !743
  %cmp3 = icmp eq i32* %pnent, null, !dbg !743
  %or.cond62 = or i1 %or.cond, %cmp3, !dbg !743
  %cmp5 = icmp eq i32** %ppivotsizes, null, !dbg !743
  %or.cond63 = or i1 %or.cond62, %cmp5, !dbg !743
  %cmp7 = icmp eq double** %pentries, null, !dbg !743
  %or.cond64 = or i1 %or.cond63, %cmp7, !dbg !743
  br i1 %or.cond64, label %if.then, label %if.end, !dbg !743

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !744, !tbaa !483
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([70 x i8]* @.str24, i64 0, i64 0), %struct._SubMtx* %mtx, i32* %pncol, i32* %pnent, i32** %ppivotsizes, double** %pentries) #5, !dbg !744
  tail call void @exit(i32 -1) #6, !dbg !746
  unreachable, !dbg !746

if.end:                                           ; preds = %entry
  %type = getelementptr inbounds %struct._SubMtx* %mtx, i64 0, i32 0, !dbg !747
  %1 = load i32* %type, align 4, !dbg !747, !tbaa !488
  %.off = add i32 %1, -1, !dbg !747
  %switch = icmp ult i32 %.off, 2, !dbg !747
  br i1 %switch, label %if.end15, label %if.then12, !dbg !747

if.then12:                                        ; preds = %if.end
  %2 = load %struct._IO_FILE** @stderr, align 8, !dbg !748, !tbaa !483
  %call14 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([113 x i8]* @.str25, i64 0, i64 0), %struct._SubMtx* %mtx, i32* %pncol, i32* %pnent, i32** %ppivotsizes, double** %pentries, i32 %1) #5, !dbg !748
  tail call void @exit(i32 -1) #6, !dbg !750
  unreachable, !dbg !750

if.end15:                                         ; preds = %if.end
  %mode = getelementptr inbounds %struct._SubMtx* %mtx, i64 0, i32 1, !dbg !751
  %3 = load i32* %mode, align 4, !dbg !751, !tbaa !488
  %.off65 = add i32 %3, -8, !dbg !751
  %switch66 = icmp ult i32 %.off65, 2, !dbg !751
  br i1 %switch66, label %if.end23, label %if.then20, !dbg !751

if.then20:                                        ; preds = %if.end15
  %4 = load %struct._IO_FILE** @stderr, align 8, !dbg !752, !tbaa !483
  %call22 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([138 x i8]* @.str26, i64 0, i64 0), %struct._SubMtx* %mtx, i32* %pncol, i32* %pnent, i32** %ppivotsizes, double** %pentries, i32 %3) #5, !dbg !752
  tail call void @exit(i32 -1) #6, !dbg !754
  unreachable, !dbg !754

if.end23:                                         ; preds = %if.end15
  %ncol = getelementptr inbounds %struct._SubMtx* %mtx, i64 0, i32 5, !dbg !755
  %5 = load i32* %ncol, align 4, !dbg !755, !tbaa !488
  store i32 %5, i32* %pncol, align 4, !dbg !755, !tbaa !488
  %nent = getelementptr inbounds %struct._SubMtx* %mtx, i64 0, i32 6, !dbg !756
  %6 = load i32* %nent, align 4, !dbg !756, !tbaa !488
  store i32 %6, i32* %pnent, align 4, !dbg !756, !tbaa !488
  %vec = getelementptr inbounds %struct._SubMtx* %mtx, i64 0, i32 8, i32 3, !dbg !757
  %7 = load double** %vec, align 8, !dbg !757, !tbaa !483
  tail call void @llvm.dbg.value(metadata !{double* %7}, i64 0, metadata !160), !dbg !757
  %8 = bitcast double* %7 to i32*, !dbg !758
  tail call void @llvm.dbg.value(metadata !{i32* %8}, i64 0, metadata !162), !dbg !758
  %nrow = getelementptr inbounds %struct._SubMtx* %mtx, i64 0, i32 4, !dbg !759
  %9 = load i32* %nrow, align 4, !dbg !759, !tbaa !488
  %mul = shl nsw i32 %9, 1, !dbg !759
  %add = add nsw i32 %mul, 7, !dbg !759
  tail call void @llvm.dbg.value(metadata !{i32 %add}, i64 0, metadata !161), !dbg !759
  %idx.ext = sext i32 %add to i64, !dbg !760
  %add.ptr = getelementptr inbounds i32* %8, i64 %idx.ext, !dbg !760
  store i32* %add.ptr, i32** %ppivotsizes, align 8, !dbg !760, !tbaa !483
  tail call void @llvm.dbg.value(metadata !{i32 %add25}, i64 0, metadata !161), !dbg !761
  %add25 = add i32 %9, 1, !dbg !761
  %add26 = add i32 %add25, %add, !dbg !762
  %div = sdiv i32 %add26, 2, !dbg !762
  %idx.ext27 = sext i32 %div to i64, !dbg !762
  %add.ptr28 = getelementptr inbounds double* %7, i64 %idx.ext27, !dbg !762
  store double* %add.ptr28, double** %pentries, align 8, !dbg !762, !tbaa !483
  ret void, !dbg !764
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
  call void @llvm.dbg.value(metadata !{%struct._SubMtx* %mtx}, i64 0, metadata !167), !dbg !765
  call void @llvm.dbg.value(metadata !{i32 %irow}, i64 0, metadata !168), !dbg !766
  call void @llvm.dbg.value(metadata !{i32 %jcol}, i64 0, metadata !169), !dbg !767
  call void @llvm.dbg.value(metadata !{double* %pValue}, i64 0, metadata !170), !dbg !768
  %cmp = icmp eq %struct._SubMtx* %mtx, null, !dbg !769
  %cmp1 = icmp slt i32 %irow, 0, !dbg !769
  %or.cond585 = or i1 %cmp, %cmp1, !dbg !769
  br i1 %or.cond585, label %if.then, label %lor.lhs.false2, !dbg !769

lor.lhs.false2:                                   ; preds = %entry
  %nrow = getelementptr inbounds %struct._SubMtx* %mtx, i64 0, i32 4, !dbg !769
  %0 = load i32* %nrow, align 4, !dbg !769, !tbaa !488
  %cmp3 = icmp sle i32 %0, %irow, !dbg !769
  %cmp5 = icmp slt i32 %jcol, 0, !dbg !769
  %or.cond586 = or i1 %cmp3, %cmp5, !dbg !769
  br i1 %or.cond586, label %if.then, label %lor.lhs.false6, !dbg !769

lor.lhs.false6:                                   ; preds = %lor.lhs.false2
  %ncol = getelementptr inbounds %struct._SubMtx* %mtx, i64 0, i32 5, !dbg !769
  %1 = load i32* %ncol, align 4, !dbg !769, !tbaa !488
  %cmp7 = icmp sle i32 %1, %jcol, !dbg !769
  %cmp9 = icmp eq double* %pValue, null, !dbg !769
  %or.cond = or i1 %cmp7, %cmp9, !dbg !769
  br i1 %or.cond, label %if.then, label %if.end, !dbg !769

if.then:                                          ; preds = %lor.lhs.false2, %lor.lhs.false6, %entry
  %2 = load %struct._IO_FILE** @stderr, align 8, !dbg !770, !tbaa !483
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([59 x i8]* @.str27, i64 0, i64 0), %struct._SubMtx* %mtx, i32 %irow, i32 %jcol, double* %pValue) #5, !dbg !770
  call void @exit(i32 -1) #6, !dbg !772
  unreachable, !dbg !772

if.end:                                           ; preds = %lor.lhs.false6
  %type = getelementptr inbounds %struct._SubMtx* %mtx, i64 0, i32 0, !dbg !773
  %3 = load i32* %type, align 4, !dbg !773, !tbaa !488
  %cmp10 = icmp eq i32 %3, 1, !dbg !773
  br i1 %cmp10, label %if.end14, label %if.then11, !dbg !773

if.then11:                                        ; preds = %if.end
  %4 = load %struct._IO_FILE** @stderr, align 8, !dbg !774, !tbaa !483
  %call13 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([83 x i8]* @.str28, i64 0, i64 0), %struct._SubMtx* %mtx, i32 %irow, i32 %jcol, double* %pValue, i32 %3) #5, !dbg !774
  call void @exit(i32 -1) #6, !dbg !776
  unreachable, !dbg !776

if.end14:                                         ; preds = %if.end
  store double 0.000000e+00, double* %pValue, align 8, !dbg !777, !tbaa !778
  %mode = getelementptr inbounds %struct._SubMtx* %mtx, i64 0, i32 1, !dbg !779
  %5 = load i32* %mode, align 4, !dbg !779, !tbaa !488
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
  ], !dbg !779

lor.lhs.false18:                                  ; preds = %if.end14, %if.end14
  call void @llvm.dbg.declare(metadata !{double** %entries}, metadata !171), !dbg !780
  call void @llvm.dbg.declare(metadata !{i32* %inc1}, metadata !174), !dbg !781
  call void @llvm.dbg.declare(metadata !{i32* %inc2}, metadata !175), !dbg !781
  call void @llvm.dbg.declare(metadata !{i32* %ncol15}, metadata !176), !dbg !781
  call void @llvm.dbg.declare(metadata !{i32* %nrow16}, metadata !177), !dbg !781
  call void @SubMtx_denseInfo(%struct._SubMtx* %mtx, i32* %nrow16, i32* %ncol15, i32* %inc1, i32* %inc2, double** %entries) #7, !dbg !782
  call void @llvm.dbg.value(metadata !{i32* %nrow16}, i64 0, metadata !177), !dbg !783
  %6 = load i32* %nrow16, align 4, !dbg !783, !tbaa !488
  %cmp19.not = icmp sgt i32 %6, %irow, !dbg !783
  br i1 %cmp19.not, label %lor.lhs.false22, label %return, !dbg !783

lor.lhs.false22:                                  ; preds = %lor.lhs.false18
  call void @llvm.dbg.value(metadata !{i32* %ncol15}, i64 0, metadata !176), !dbg !783
  %7 = load i32* %ncol15, align 4, !dbg !783, !tbaa !488
  %cmp23 = icmp sgt i32 %7, %jcol, !dbg !783
  br i1 %cmp23, label %if.end25, label %return, !dbg !783

if.end25:                                         ; preds = %lor.lhs.false22
  call void @llvm.dbg.value(metadata !{i32* %inc1}, i64 0, metadata !174), !dbg !784
  %8 = load i32* %inc1, align 4, !dbg !784, !tbaa !488
  %mul = mul nsw i32 %8, %irow, !dbg !784
  call void @llvm.dbg.value(metadata !{i32* %inc2}, i64 0, metadata !175), !dbg !784
  %9 = load i32* %inc2, align 4, !dbg !784, !tbaa !488
  %mul26 = mul nsw i32 %9, %jcol, !dbg !784
  %add = add nsw i32 %mul26, %mul, !dbg !784
  call void @llvm.dbg.value(metadata !{i32 %add}, i64 0, metadata !178), !dbg !784
  %idxprom = sext i32 %add to i64, !dbg !785
  call void @llvm.dbg.value(metadata !{double** %entries}, i64 0, metadata !171), !dbg !785
  %10 = load double** %entries, align 8, !dbg !785, !tbaa !483
  %arrayidx = getelementptr inbounds double* %10, i64 %idxprom, !dbg !785
  %11 = load double* %arrayidx, align 8, !dbg !785, !tbaa !778
  store double %11, double* %pValue, align 8, !dbg !785, !tbaa !778
  br label %return, !dbg !786

lor.lhs.false32:                                  ; preds = %if.end14
  call void @llvm.dbg.declare(metadata !{double** %entries28}, metadata !179), !dbg !787
  call void @llvm.dbg.declare(metadata !{i32* %nent}, metadata !183), !dbg !788
  call void @llvm.dbg.declare(metadata !{i32* %nrow29}, metadata !184), !dbg !788
  call void @llvm.dbg.declare(metadata !{i32** %indices}, metadata !186), !dbg !788
  call void @llvm.dbg.declare(metadata !{i32** %sizes}, metadata !187), !dbg !788
  call void @SubMtx_sparseRowsInfo(%struct._SubMtx* %mtx, i32* %nrow29, i32* %nent, i32** %sizes, i32** %indices, double** %entries28) #7, !dbg !789
  call void @llvm.dbg.value(metadata !{i32* %nrow29}, i64 0, metadata !184), !dbg !790
  %12 = load i32* %nrow29, align 4, !dbg !790, !tbaa !488
  %cmp33 = icmp sgt i32 %12, %irow, !dbg !790
  br i1 %cmp33, label %for.cond.preheader, label %return, !dbg !790

for.cond.preheader:                               ; preds = %lor.lhs.false32
  %cmp36490 = icmp sgt i32 %irow, 0, !dbg !791
  call void @llvm.dbg.value(metadata !{i32** %sizes}, i64 0, metadata !187), !dbg !793
  %13 = load i32** %sizes, align 8, !dbg !793, !tbaa !483
  br i1 %cmp36490, label %for.body, label %for.cond40.preheader, !dbg !791

for.cond40.preheader:                             ; preds = %for.cond.preheader, %for.body
  %offset30.0.lcssa = phi i32 [ %add39, %for.body ], [ 0, %for.cond.preheader ]
  %idxprom41 = sext i32 %irow to i64, !dbg !795
  call void @llvm.dbg.value(metadata !{i32** %sizes}, i64 0, metadata !187), !dbg !795
  %arrayidx42486 = getelementptr inbounds i32* %13, i64 %idxprom41, !dbg !795
  %14 = load i32* %arrayidx42486, align 4, !dbg !795, !tbaa !488
  %cmp43487 = icmp sgt i32 %14, 0, !dbg !795
  br i1 %cmp43487, label %for.body44.lr.ph, label %return, !dbg !795

for.body44.lr.ph:                                 ; preds = %for.cond40.preheader
  call void @llvm.dbg.value(metadata !{i32** %indices}, i64 0, metadata !186), !dbg !797
  %15 = load i32** %indices, align 8, !dbg !797, !tbaa !483
  call void @llvm.dbg.value(metadata !{i32** %sizes}, i64 0, metadata !187), !dbg !795
  %16 = sext i32 %offset30.0.lcssa to i64
  br label %for.body44, !dbg !795

for.body:                                         ; preds = %for.cond.preheader, %for.body
  %indvars.iv552 = phi i64 [ %indvars.iv.next553, %for.body ], [ 0, %for.cond.preheader ]
  %offset30.0491 = phi i32 [ %add39, %for.body ], [ 0, %for.cond.preheader ]
  call void @llvm.dbg.value(metadata !{i32** %sizes}, i64 0, metadata !187), !dbg !793
  %arrayidx38 = getelementptr inbounds i32* %13, i64 %indvars.iv552, !dbg !793
  %17 = load i32* %arrayidx38, align 4, !dbg !793, !tbaa !488
  %add39 = add nsw i32 %17, %offset30.0491, !dbg !793
  call void @llvm.dbg.value(metadata !{i32 %add39}, i64 0, metadata !185), !dbg !793
  %indvars.iv.next553 = add i64 %indvars.iv552, 1, !dbg !791
  %lftr.wideiv = trunc i64 %indvars.iv.next553 to i32, !dbg !791
  %exitcond = icmp eq i32 %lftr.wideiv, %irow, !dbg !791
  br i1 %exitcond, label %for.cond40.preheader, label %for.body, !dbg !791

for.body44:                                       ; preds = %for.body44.lr.ph, %for.inc52
  %indvars.iv = phi i64 [ %16, %for.body44.lr.ph ], [ %indvars.iv.next, %for.inc52 ]
  %ii.1489 = phi i32 [ 0, %for.body44.lr.ph ], [ %inc53, %for.inc52 ]
  %jj.0488 = phi i32 [ %offset30.0.lcssa, %for.body44.lr.ph ], [ %inc54, %for.inc52 ]
  call void @llvm.dbg.value(metadata !{i32** %indices}, i64 0, metadata !186), !dbg !797
  %arrayidx46 = getelementptr inbounds i32* %15, i64 %indvars.iv, !dbg !797
  %18 = load i32* %arrayidx46, align 4, !dbg !797, !tbaa !488
  %cmp47 = icmp eq i32 %18, %jcol, !dbg !797
  br i1 %cmp47, label %if.then48, label %for.inc52, !dbg !797

if.then48:                                        ; preds = %for.body44
  call void @llvm.dbg.value(metadata !{double** %entries28}, i64 0, metadata !179), !dbg !799
  %19 = load double** %entries28, align 8, !dbg !799, !tbaa !483
  %arrayidx50 = getelementptr inbounds double* %19, i64 %indvars.iv, !dbg !799
  %20 = load double* %arrayidx50, align 8, !dbg !799, !tbaa !778
  store double %20, double* %pValue, align 8, !dbg !799, !tbaa !778
  br label %return, !dbg !801

for.inc52:                                        ; preds = %for.body44
  %inc53 = add nsw i32 %ii.1489, 1, !dbg !795
  call void @llvm.dbg.value(metadata !{i32 %inc53}, i64 0, metadata !181), !dbg !795
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !795
  %inc54 = add nsw i32 %jj.0488, 1, !dbg !795
  call void @llvm.dbg.value(metadata !{i32 %inc54}, i64 0, metadata !182), !dbg !795
  call void @llvm.dbg.value(metadata !{i32** %sizes}, i64 0, metadata !187), !dbg !795
  %cmp43 = icmp slt i32 %inc53, %14, !dbg !795
  br i1 %cmp43, label %for.body44, label %return, !dbg !795

lor.lhs.false66:                                  ; preds = %if.end14
  call void @llvm.dbg.declare(metadata !{double** %entries57}, metadata !188), !dbg !802
  call void @llvm.dbg.declare(metadata !{i32* %nent60}, metadata !192), !dbg !803
  call void @llvm.dbg.declare(metadata !{i32* %ncol61}, metadata !193), !dbg !803
  call void @llvm.dbg.declare(metadata !{i32** %indices63}, metadata !195), !dbg !803
  call void @llvm.dbg.declare(metadata !{i32** %sizes64}, metadata !196), !dbg !803
  call void @SubMtx_sparseColumnsInfo(%struct._SubMtx* %mtx, i32* %ncol61, i32* %nent60, i32** %sizes64, i32** %indices63, double** %entries57) #7, !dbg !804
  call void @llvm.dbg.value(metadata !{i32* %ncol61}, i64 0, metadata !193), !dbg !805
  %21 = load i32* %ncol61, align 4, !dbg !805, !tbaa !488
  %cmp67 = icmp sgt i32 %21, %jcol, !dbg !805
  br i1 %cmp67, label %for.cond70.preheader, label %return, !dbg !805

for.cond70.preheader:                             ; preds = %lor.lhs.false66
  %cmp71499 = icmp sgt i32 %jcol, 0, !dbg !806
  call void @llvm.dbg.value(metadata !{i32** %sizes64}, i64 0, metadata !196), !dbg !808
  %22 = load i32** %sizes64, align 8, !dbg !808, !tbaa !483
  br i1 %cmp71499, label %for.body72, label %for.cond79.preheader, !dbg !806

for.cond79.preheader:                             ; preds = %for.cond70.preheader, %for.body72
  %offset62.0.lcssa = phi i32 [ %add75, %for.body72 ], [ 0, %for.cond70.preheader ]
  %idxprom80 = sext i32 %jcol to i64, !dbg !810
  call void @llvm.dbg.value(metadata !{i32** %sizes64}, i64 0, metadata !196), !dbg !810
  %arrayidx81495 = getelementptr inbounds i32* %22, i64 %idxprom80, !dbg !810
  %23 = load i32* %arrayidx81495, align 4, !dbg !810, !tbaa !488
  %cmp82496 = icmp sgt i32 %23, 0, !dbg !810
  br i1 %cmp82496, label %for.body83.lr.ph, label %return, !dbg !810

for.body83.lr.ph:                                 ; preds = %for.cond79.preheader
  call void @llvm.dbg.value(metadata !{i32** %indices63}, i64 0, metadata !195), !dbg !812
  %24 = load i32** %indices63, align 8, !dbg !812, !tbaa !483
  call void @llvm.dbg.value(metadata !{i32** %sizes64}, i64 0, metadata !196), !dbg !810
  %25 = sext i32 %offset62.0.lcssa to i64
  br label %for.body83, !dbg !810

for.body72:                                       ; preds = %for.cond70.preheader, %for.body72
  %indvars.iv558 = phi i64 [ %indvars.iv.next559, %for.body72 ], [ 0, %for.cond70.preheader ]
  %offset62.0501 = phi i32 [ %add75, %for.body72 ], [ 0, %for.cond70.preheader ]
  call void @llvm.dbg.value(metadata !{i32** %sizes64}, i64 0, metadata !196), !dbg !808
  %arrayidx74 = getelementptr inbounds i32* %22, i64 %indvars.iv558, !dbg !808
  %26 = load i32* %arrayidx74, align 4, !dbg !808, !tbaa !488
  %add75 = add nsw i32 %26, %offset62.0501, !dbg !808
  call void @llvm.dbg.value(metadata !{i32 %add75}, i64 0, metadata !194), !dbg !808
  %indvars.iv.next559 = add i64 %indvars.iv558, 1, !dbg !806
  %lftr.wideiv560 = trunc i64 %indvars.iv.next559 to i32, !dbg !806
  %exitcond561 = icmp eq i32 %lftr.wideiv560, %jcol, !dbg !806
  br i1 %exitcond561, label %for.cond79.preheader, label %for.body72, !dbg !806

for.body83:                                       ; preds = %for.body83.lr.ph, %for.inc91
  %indvars.iv556 = phi i64 [ %25, %for.body83.lr.ph ], [ %indvars.iv.next557, %for.inc91 ]
  %jj59.0498 = phi i32 [ %offset62.0.lcssa, %for.body83.lr.ph ], [ %inc93, %for.inc91 ]
  %ii58.1497 = phi i32 [ 0, %for.body83.lr.ph ], [ %inc92, %for.inc91 ]
  call void @llvm.dbg.value(metadata !{i32** %indices63}, i64 0, metadata !195), !dbg !812
  %arrayidx85 = getelementptr inbounds i32* %24, i64 %indvars.iv556, !dbg !812
  %27 = load i32* %arrayidx85, align 4, !dbg !812, !tbaa !488
  %cmp86 = icmp eq i32 %27, %irow, !dbg !812
  br i1 %cmp86, label %if.then87, label %for.inc91, !dbg !812

if.then87:                                        ; preds = %for.body83
  call void @llvm.dbg.value(metadata !{double** %entries57}, i64 0, metadata !188), !dbg !814
  %28 = load double** %entries57, align 8, !dbg !814, !tbaa !483
  %arrayidx89 = getelementptr inbounds double* %28, i64 %indvars.iv556, !dbg !814
  %29 = load double* %arrayidx89, align 8, !dbg !814, !tbaa !778
  store double %29, double* %pValue, align 8, !dbg !814, !tbaa !778
  br label %return, !dbg !816

for.inc91:                                        ; preds = %for.body83
  %inc92 = add nsw i32 %ii58.1497, 1, !dbg !810
  call void @llvm.dbg.value(metadata !{i32 %inc92}, i64 0, metadata !190), !dbg !810
  %indvars.iv.next557 = add i64 %indvars.iv556, 1, !dbg !810
  %inc93 = add nsw i32 %jj59.0498, 1, !dbg !810
  call void @llvm.dbg.value(metadata !{i32 %inc93}, i64 0, metadata !191), !dbg !810
  call void @llvm.dbg.value(metadata !{i32** %sizes64}, i64 0, metadata !196), !dbg !810
  %cmp82 = icmp slt i32 %inc92, %23, !dbg !810
  br i1 %cmp82, label %for.body83, label %return, !dbg !810

sw.bb95:                                          ; preds = %if.end14
  call void @llvm.dbg.declare(metadata !{double** %entries96}, metadata !197), !dbg !817
  call void @llvm.dbg.declare(metadata !{i32* %nent98}, metadata !200), !dbg !818
  call void @llvm.dbg.declare(metadata !{i32** %colids}, metadata !201), !dbg !818
  call void @llvm.dbg.declare(metadata !{i32** %rowids}, metadata !202), !dbg !818
  call void @SubMtx_sparseTriplesInfo(%struct._SubMtx* %mtx, i32* %nent98, i32** %rowids, i32** %colids, double** %entries96) #7, !dbg !819
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !199), !dbg !820
  call void @llvm.dbg.value(metadata !{i32* %nent98}, i64 0, metadata !200), !dbg !820
  %30 = load i32* %nent98, align 4, !dbg !820, !tbaa !488
  %cmp100505 = icmp sgt i32 %30, 0, !dbg !820
  br i1 %cmp100505, label %for.body101.lr.ph, label %return, !dbg !820

for.body101.lr.ph:                                ; preds = %sw.bb95
  call void @llvm.dbg.value(metadata !{i32** %rowids}, i64 0, metadata !202), !dbg !822
  %31 = load i32** %rowids, align 8, !dbg !822, !tbaa !483
  call void @llvm.dbg.value(metadata !{i32** %colids}, i64 0, metadata !201), !dbg !822
  %32 = load i32** %colids, align 8, !dbg !822, !tbaa !483
  call void @llvm.dbg.value(metadata !{i32* %nent98}, i64 0, metadata !200), !dbg !820
  br label %for.body101, !dbg !820

for.body101:                                      ; preds = %for.body101.lr.ph, %for.inc112
  %indvars.iv564 = phi i64 [ 0, %for.body101.lr.ph ], [ %indvars.iv.next565, %for.inc112 ]
  %ii97.0506 = phi i32 [ 0, %for.body101.lr.ph ], [ %inc113, %for.inc112 ]
  call void @llvm.dbg.value(metadata !{i32** %rowids}, i64 0, metadata !202), !dbg !822
  %arrayidx103 = getelementptr inbounds i32* %31, i64 %indvars.iv564, !dbg !822
  %33 = load i32* %arrayidx103, align 4, !dbg !822, !tbaa !488
  %cmp104 = icmp eq i32 %33, %irow, !dbg !822
  br i1 %cmp104, label %land.lhs.true, label %for.inc112, !dbg !822

land.lhs.true:                                    ; preds = %for.body101
  call void @llvm.dbg.value(metadata !{i32** %colids}, i64 0, metadata !201), !dbg !822
  %arrayidx106 = getelementptr inbounds i32* %32, i64 %indvars.iv564, !dbg !822
  %34 = load i32* %arrayidx106, align 4, !dbg !822, !tbaa !488
  %cmp107 = icmp eq i32 %34, %jcol, !dbg !822
  br i1 %cmp107, label %if.then108, label %for.inc112, !dbg !822

if.then108:                                       ; preds = %land.lhs.true
  call void @llvm.dbg.value(metadata !{double** %entries96}, i64 0, metadata !197), !dbg !824
  %35 = load double** %entries96, align 8, !dbg !824, !tbaa !483
  %arrayidx110 = getelementptr inbounds double* %35, i64 %indvars.iv564, !dbg !824
  %36 = load double* %arrayidx110, align 8, !dbg !824, !tbaa !778
  store double %36, double* %pValue, align 8, !dbg !824, !tbaa !778
  br label %return, !dbg !826

for.inc112:                                       ; preds = %for.body101, %land.lhs.true
  %indvars.iv.next565 = add i64 %indvars.iv564, 1, !dbg !820
  %inc113 = add nsw i32 %ii97.0506, 1, !dbg !820
  call void @llvm.dbg.value(metadata !{i32 %inc113}, i64 0, metadata !199), !dbg !820
  call void @llvm.dbg.value(metadata !{i32* %nent98}, i64 0, metadata !200), !dbg !820
  %37 = trunc i64 %indvars.iv.next565 to i32, !dbg !820
  %cmp100 = icmp slt i32 %37, %30, !dbg !820
  br i1 %cmp100, label %for.body101, label %return, !dbg !820

lor.lhs.false123:                                 ; preds = %if.end14
  call void @llvm.dbg.declare(metadata !{double** %entries116}, metadata !203), !dbg !827
  call void @llvm.dbg.declare(metadata !{i32* %nent118}, metadata !207), !dbg !828
  call void @llvm.dbg.declare(metadata !{i32* %nrow119}, metadata !208), !dbg !828
  call void @llvm.dbg.declare(metadata !{i32** %firstlocs}, metadata !210), !dbg !828
  call void @llvm.dbg.declare(metadata !{i32** %sizes121}, metadata !211), !dbg !828
  call void @SubMtx_denseSubrowsInfo(%struct._SubMtx* %mtx, i32* %nrow119, i32* %nent118, i32** %firstlocs, i32** %sizes121, double** %entries116) #7, !dbg !829
  call void @llvm.dbg.value(metadata !{i32* %nrow119}, i64 0, metadata !208), !dbg !830
  %38 = load i32* %nrow119, align 4, !dbg !830, !tbaa !488
  %cmp124 = icmp sgt i32 %38, %irow, !dbg !830
  br i1 %cmp124, label %lor.lhs.false125, label %return, !dbg !830

lor.lhs.false125:                                 ; preds = %lor.lhs.false123
  %idxprom126 = sext i32 %irow to i64, !dbg !830
  call void @llvm.dbg.value(metadata !{i32** %sizes121}, i64 0, metadata !211), !dbg !830
  %39 = load i32** %sizes121, align 8, !dbg !830, !tbaa !483
  %arrayidx127 = getelementptr inbounds i32* %39, i64 %idxprom126, !dbg !830
  %40 = load i32* %arrayidx127, align 4, !dbg !830, !tbaa !488
  %cmp128 = icmp eq i32 %40, 0, !dbg !830
  br i1 %cmp128, label %return, label %for.cond131.preheader, !dbg !830

for.cond131.preheader:                            ; preds = %lor.lhs.false125
  %cmp132507 = icmp sgt i32 %irow, 0, !dbg !831
  br i1 %cmp132507, label %for.body133, label %for.end139, !dbg !831

for.body133:                                      ; preds = %for.cond131.preheader, %for.body133
  %indvars.iv566 = phi i64 [ %indvars.iv.next567, %for.body133 ], [ 0, %for.cond131.preheader ]
  %offset120.0509 = phi i32 [ %add136, %for.body133 ], [ 0, %for.cond131.preheader ]
  call void @llvm.dbg.value(metadata !{i32** %sizes121}, i64 0, metadata !211), !dbg !833
  %arrayidx135 = getelementptr inbounds i32* %39, i64 %indvars.iv566, !dbg !833
  %41 = load i32* %arrayidx135, align 4, !dbg !833, !tbaa !488
  %add136 = add nsw i32 %41, %offset120.0509, !dbg !833
  call void @llvm.dbg.value(metadata !{i32 %add136}, i64 0, metadata !209), !dbg !833
  %indvars.iv.next567 = add i64 %indvars.iv566, 1, !dbg !831
  %lftr.wideiv568 = trunc i64 %indvars.iv.next567 to i32, !dbg !831
  %exitcond569 = icmp eq i32 %lftr.wideiv568, %irow, !dbg !831
  br i1 %exitcond569, label %for.end139, label %for.body133, !dbg !831

for.end139:                                       ; preds = %for.body133, %for.cond131.preheader
  %offset120.0.lcssa = phi i32 [ 0, %for.cond131.preheader ], [ %add136, %for.body133 ]
  call void @llvm.dbg.value(metadata !{i32** %firstlocs}, i64 0, metadata !210), !dbg !835
  %42 = load i32** %firstlocs, align 8, !dbg !835, !tbaa !483
  %arrayidx141 = getelementptr inbounds i32* %42, i64 %idxprom126, !dbg !835
  %43 = load i32* %arrayidx141, align 4, !dbg !835, !tbaa !488
  %sub = sub nsw i32 %jcol, %43, !dbg !835
  call void @llvm.dbg.value(metadata !{i32 %sub}, i64 0, metadata !206), !dbg !835
  %cmp142 = icmp sgt i32 %sub, -1, !dbg !835
  %cmp146 = icmp slt i32 %sub, %40, !dbg !835
  %or.cond587 = and i1 %cmp142, %cmp146, !dbg !835
  call void @llvm.dbg.value(metadata !{i32** %sizes121}, i64 0, metadata !211), !dbg !835
  br i1 %or.cond587, label %if.then147, label %return, !dbg !835

if.then147:                                       ; preds = %for.end139
  %add148 = add nsw i32 %sub, %offset120.0.lcssa, !dbg !836
  call void @llvm.dbg.value(metadata !{i32 %add148}, i64 0, metadata !209), !dbg !836
  %idxprom149 = sext i32 %add148 to i64, !dbg !838
  call void @llvm.dbg.value(metadata !{double** %entries116}, i64 0, metadata !203), !dbg !838
  %44 = load double** %entries116, align 8, !dbg !838, !tbaa !483
  %arrayidx150 = getelementptr inbounds double* %44, i64 %idxprom149, !dbg !838
  %45 = load double* %arrayidx150, align 8, !dbg !838, !tbaa !778
  store double %45, double* %pValue, align 8, !dbg !838, !tbaa !778
  br label %return, !dbg !839

lor.lhs.false161:                                 ; preds = %if.end14
  call void @llvm.dbg.declare(metadata !{double** %entries153}, metadata !212), !dbg !840
  call void @llvm.dbg.declare(metadata !{i32* %nent155}, metadata !216), !dbg !841
  call void @llvm.dbg.declare(metadata !{i32* %ncol156}, metadata !217), !dbg !841
  call void @llvm.dbg.declare(metadata !{i32** %firstlocs158}, metadata !219), !dbg !841
  call void @llvm.dbg.declare(metadata !{i32** %sizes159}, metadata !220), !dbg !841
  call void @SubMtx_denseSubcolumnsInfo(%struct._SubMtx* %mtx, i32* %ncol156, i32* %nent155, i32** %firstlocs158, i32** %sizes159, double** %entries153) #7, !dbg !842
  call void @llvm.dbg.value(metadata !{i32* %ncol156}, i64 0, metadata !217), !dbg !843
  %46 = load i32* %ncol156, align 4, !dbg !843, !tbaa !488
  %cmp162 = icmp sgt i32 %46, %jcol, !dbg !843
  br i1 %cmp162, label %lor.lhs.false163, label %return, !dbg !843

lor.lhs.false163:                                 ; preds = %lor.lhs.false161
  %idxprom164 = sext i32 %jcol to i64, !dbg !843
  call void @llvm.dbg.value(metadata !{i32** %sizes159}, i64 0, metadata !220), !dbg !843
  %47 = load i32** %sizes159, align 8, !dbg !843, !tbaa !483
  %arrayidx165 = getelementptr inbounds i32* %47, i64 %idxprom164, !dbg !843
  %48 = load i32* %arrayidx165, align 4, !dbg !843, !tbaa !488
  %cmp166 = icmp eq i32 %48, 0, !dbg !843
  br i1 %cmp166, label %return, label %for.cond169.preheader, !dbg !843

for.cond169.preheader:                            ; preds = %lor.lhs.false163
  %cmp170511 = icmp sgt i32 %jcol, 0, !dbg !844
  br i1 %cmp170511, label %for.body171, label %for.end177, !dbg !844

for.body171:                                      ; preds = %for.cond169.preheader, %for.body171
  %indvars.iv570 = phi i64 [ %indvars.iv.next571, %for.body171 ], [ 0, %for.cond169.preheader ]
  %offset157.0513 = phi i32 [ %add174, %for.body171 ], [ 0, %for.cond169.preheader ]
  call void @llvm.dbg.value(metadata !{i32** %sizes159}, i64 0, metadata !220), !dbg !846
  %arrayidx173 = getelementptr inbounds i32* %47, i64 %indvars.iv570, !dbg !846
  %49 = load i32* %arrayidx173, align 4, !dbg !846, !tbaa !488
  %add174 = add nsw i32 %49, %offset157.0513, !dbg !846
  call void @llvm.dbg.value(metadata !{i32 %add174}, i64 0, metadata !218), !dbg !846
  %indvars.iv.next571 = add i64 %indvars.iv570, 1, !dbg !844
  %lftr.wideiv572 = trunc i64 %indvars.iv.next571 to i32, !dbg !844
  %exitcond573 = icmp eq i32 %lftr.wideiv572, %jcol, !dbg !844
  br i1 %exitcond573, label %for.end177, label %for.body171, !dbg !844

for.end177:                                       ; preds = %for.body171, %for.cond169.preheader
  %offset157.0.lcssa = phi i32 [ 0, %for.cond169.preheader ], [ %add174, %for.body171 ]
  call void @llvm.dbg.value(metadata !{i32** %firstlocs158}, i64 0, metadata !219), !dbg !848
  %50 = load i32** %firstlocs158, align 8, !dbg !848, !tbaa !483
  %arrayidx179 = getelementptr inbounds i32* %50, i64 %idxprom164, !dbg !848
  %51 = load i32* %arrayidx179, align 4, !dbg !848, !tbaa !488
  %sub180 = sub nsw i32 %irow, %51, !dbg !848
  call void @llvm.dbg.value(metadata !{i32 %sub180}, i64 0, metadata !215), !dbg !848
  %cmp181 = icmp sgt i32 %sub180, -1, !dbg !848
  %cmp185 = icmp slt i32 %sub180, %48, !dbg !848
  %or.cond588 = and i1 %cmp181, %cmp185, !dbg !848
  call void @llvm.dbg.value(metadata !{i32** %sizes159}, i64 0, metadata !220), !dbg !848
  br i1 %or.cond588, label %if.then186, label %return, !dbg !848

if.then186:                                       ; preds = %for.end177
  %add187 = add nsw i32 %sub180, %offset157.0.lcssa, !dbg !849
  call void @llvm.dbg.value(metadata !{i32 %add187}, i64 0, metadata !218), !dbg !849
  %idxprom188 = sext i32 %add187 to i64, !dbg !851
  call void @llvm.dbg.value(metadata !{double** %entries153}, i64 0, metadata !212), !dbg !851
  %52 = load double** %entries153, align 8, !dbg !851, !tbaa !483
  %arrayidx189 = getelementptr inbounds double* %52, i64 %idxprom188, !dbg !851
  %53 = load double* %arrayidx189, align 8, !dbg !851, !tbaa !778
  store double %53, double* %pValue, align 8, !dbg !851, !tbaa !778
  br label %return, !dbg !852

sw.bb191:                                         ; preds = %if.end14
  call void @llvm.dbg.declare(metadata !{double** %entries192}, metadata !221), !dbg !853
  call void @llvm.dbg.declare(metadata !{i32* %ncol193}, metadata !223), !dbg !854
  %54 = or i32 %jcol, %irow, !dbg !855
  %brmerge476.not = icmp sgt i32 %54, -1, !dbg !855
  %cmp198 = icmp eq i32 %irow, %jcol, !dbg !855
  %or.cond477 = and i1 %brmerge476.not, %cmp198, !dbg !855
  br i1 %or.cond477, label %if.end200, label %return, !dbg !855

if.end200:                                        ; preds = %sw.bb191
  call void @SubMtx_diagonalInfo(%struct._SubMtx* %mtx, i32* %ncol193, double** %entries192) #7, !dbg !856
  call void @llvm.dbg.value(metadata !{i32* %ncol193}, i64 0, metadata !223), !dbg !857
  %55 = load i32* %ncol193, align 4, !dbg !857, !tbaa !488
  %cmp201 = icmp sgt i32 %55, %irow, !dbg !857
  br i1 %cmp201, label %if.end205, label %return, !dbg !857

if.end205:                                        ; preds = %if.end200
  %idxprom206 = sext i32 %irow to i64, !dbg !858
  call void @llvm.dbg.value(metadata !{double** %entries192}, i64 0, metadata !221), !dbg !858
  %56 = load double** %entries192, align 8, !dbg !858, !tbaa !483
  %arrayidx207 = getelementptr inbounds double* %56, i64 %idxprom206, !dbg !858
  %57 = load double* %arrayidx207, align 8, !dbg !858, !tbaa !778
  store double %57, double* %pValue, align 8, !dbg !858, !tbaa !778
  br label %return, !dbg !859

sw.bb208:                                         ; preds = %if.end14
  call void @llvm.dbg.declare(metadata !{double** %entries209}, metadata !224), !dbg !860
  call void @llvm.dbg.declare(metadata !{i32* %ncol211}, metadata !231), !dbg !861
  call void @llvm.dbg.declare(metadata !{i32* %nent212}, metadata !232), !dbg !861
  call void @llvm.dbg.declare(metadata !{i32** %pivotsizes}, metadata !234), !dbg !862
  %58 = or i32 %jcol, %irow, !dbg !863
  %59 = icmp slt i32 %58, 0, !dbg !863
  br i1 %59, label %return, label %if.end217, !dbg !863

if.end217:                                        ; preds = %sw.bb208
  %cmp218 = icmp sgt i32 %irow, %jcol, !dbg !864
  call void @llvm.dbg.value(metadata !{i32 %irow}, i64 0, metadata !226), !dbg !865
  call void @llvm.dbg.value(metadata !{i32 %jcol}, i64 0, metadata !168), !dbg !867
  call void @llvm.dbg.value(metadata !{i32 %irow}, i64 0, metadata !169), !dbg !868
  %irow.jcol = select i1 %cmp218, i32 %irow, i32 %jcol, !dbg !864
  %jcol.irow = select i1 %cmp218, i32 %jcol, i32 %irow, !dbg !864
  call void @SubMtx_blockDiagonalInfo(%struct._SubMtx* %mtx, i32* %ncol211, i32* %nent212, i32** %pivotsizes, double** %entries209) #7, !dbg !869
  call void @llvm.dbg.value(metadata !{i32* %ncol211}, i64 0, metadata !231), !dbg !870
  %60 = load i32* %ncol211, align 4, !dbg !870, !tbaa !488
  %cmp221 = icmp slt i32 %jcol.irow, %60, !dbg !870
  %cmp223 = icmp slt i32 %irow.jcol, %60, !dbg !870
  %or.cond480 = and i1 %cmp221, %cmp223, !dbg !870
  br i1 %or.cond480, label %for.cond226.preheader, label %return, !dbg !870

for.cond226.preheader:                            ; preds = %if.end217
  %cmp227527 = icmp slt i32 %jcol.irow, 0, !dbg !871
  br i1 %cmp227527, label %return, label %for.body228.lr.ph, !dbg !871

for.body228.lr.ph:                                ; preds = %for.cond226.preheader
  call void @llvm.dbg.value(metadata !{i32** %pivotsizes}, i64 0, metadata !234), !dbg !873
  %61 = load i32** %pivotsizes, align 8, !dbg !873, !tbaa !483
  br label %for.body228, !dbg !871

for.body228:                                      ; preds = %for.body228.lr.ph, %for.inc252
  %indvars.iv577 = phi i64 [ 0, %for.body228.lr.ph ], [ %indvars.iv.next578, %for.inc252 ]
  %kk.0530 = phi i32 [ 0, %for.body228.lr.ph ], [ %kk.1.lcssa, %for.inc252 ]
  %jrow.0529 = phi i32 [ 0, %for.body228.lr.ph ], [ %jrow.1.lcssa, %for.inc252 ]
  call void @llvm.dbg.value(metadata !{i32** %pivotsizes}, i64 0, metadata !234), !dbg !873
  %arrayidx230 = getelementptr inbounds i32* %61, i64 %indvars.iv577, !dbg !873
  %62 = load i32* %arrayidx230, align 4, !dbg !873, !tbaa !488
  call void @llvm.dbg.value(metadata !{i32 %62}, i64 0, metadata !230), !dbg !873
  call void @llvm.dbg.value(metadata !{i32 %62}, i64 0, metadata !233), !dbg !873
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !226), !dbg !875
  %cmp232518 = icmp sgt i32 %62, 0, !dbg !875
  br i1 %cmp232518, label %for.body233, label %for.inc252, !dbg !875

for.body233:                                      ; preds = %for.body228, %if.else245
  %size.0522 = phi i32 [ %dec, %if.else245 ], [ %62, %for.body228 ]
  %kk.1521 = phi i32 [ %add246, %if.else245 ], [ %kk.0530, %for.body228 ]
  %jrow.1520 = phi i32 [ %inc250, %if.else245 ], [ %jrow.0529, %for.body228 ]
  %ii210.0519 = phi i32 [ %inc249, %if.else245 ], [ 0, %for.body228 ]
  %cmp234 = icmp eq i32 %jrow.1520, %jcol.irow, !dbg !877
  br i1 %cmp234, label %if.then235, label %if.else245, !dbg !877

if.then235:                                       ; preds = %for.body233
  %sub236 = sub nsw i32 %irow.jcol, %jcol.irow, !dbg !879
  %sub237 = add i32 %62, -1, !dbg !879
  %sub238 = sub i32 %sub237, %ii210.0519, !dbg !879
  %cmp239 = icmp sgt i32 %sub236, %sub238, !dbg !879
  br i1 %cmp239, label %return, label %if.else, !dbg !879

if.else:                                          ; preds = %if.then235
  %add242 = add nsw i32 %kk.1521, %sub236, !dbg !881
  call void @llvm.dbg.value(metadata !{i32 %add242}, i64 0, metadata !229), !dbg !881
  %idxprom243 = sext i32 %add242 to i64, !dbg !883
  call void @llvm.dbg.value(metadata !{double** %entries209}, i64 0, metadata !224), !dbg !883
  %63 = load double** %entries209, align 8, !dbg !883, !tbaa !483
  %arrayidx244 = getelementptr inbounds double* %63, i64 %idxprom243, !dbg !883
  %64 = load double* %arrayidx244, align 8, !dbg !883, !tbaa !778
  store double %64, double* %pValue, align 8, !dbg !883, !tbaa !778
  br label %return, !dbg !884

if.else245:                                       ; preds = %for.body233
  %dec = add nsw i32 %size.0522, -1, !dbg !885
  call void @llvm.dbg.value(metadata !{i32 %dec}, i64 0, metadata !233), !dbg !885
  %add246 = add nsw i32 %size.0522, %kk.1521, !dbg !885
  call void @llvm.dbg.value(metadata !{i32 %add246}, i64 0, metadata !229), !dbg !885
  %inc249 = add nsw i32 %ii210.0519, 1, !dbg !875
  call void @llvm.dbg.value(metadata !{i32 %inc249}, i64 0, metadata !226), !dbg !875
  %inc250 = add nsw i32 %jrow.1520, 1, !dbg !875
  call void @llvm.dbg.value(metadata !{i32 %inc250}, i64 0, metadata !228), !dbg !875
  %cmp232 = icmp slt i32 %inc249, %62, !dbg !875
  br i1 %cmp232, label %for.body233, label %for.inc252, !dbg !875

for.inc252:                                       ; preds = %if.else245, %for.body228
  %kk.1.lcssa = phi i32 [ %kk.0530, %for.body228 ], [ %add246, %if.else245 ]
  %jrow.1.lcssa = phi i32 [ %jrow.0529, %for.body228 ], [ %inc250, %if.else245 ]
  %indvars.iv.next578 = add i64 %indvars.iv577, 1, !dbg !871
  %cmp227 = icmp sgt i32 %jrow.1.lcssa, %jcol.irow, !dbg !871
  br i1 %cmp227, label %return, label %for.body228, !dbg !871

sw.bb255:                                         ; preds = %if.end14
  call void @llvm.dbg.declare(metadata !{double** %entries256}, metadata !237), !dbg !887
  call void @llvm.dbg.declare(metadata !{i32* %ncol262}, metadata !243), !dbg !888
  call void @llvm.dbg.declare(metadata !{i32* %nent263}, metadata !244), !dbg !888
  call void @llvm.dbg.declare(metadata !{i32** %pivotsizes265}, metadata !246), !dbg !889
  %65 = or i32 %jcol, %irow, !dbg !890
  %66 = icmp slt i32 %65, 0, !dbg !890
  br i1 %66, label %return, label %if.end270, !dbg !890

if.end270:                                        ; preds = %sw.bb255
  %cmp271 = icmp sgt i32 %irow, %jcol, !dbg !891
  %irow.jcol482 = select i1 %cmp271, i32 %irow, i32 %jcol, !dbg !892
  %jcol.irow483 = select i1 %cmp271, i32 %jcol, i32 %irow, !dbg !892
  call void @SubMtx_blockDiagonalInfo(%struct._SubMtx* %mtx, i32* %ncol262, i32* %nent263, i32** %pivotsizes265, double** %entries256) #7, !dbg !894
  call void @llvm.dbg.value(metadata !{i32* %ncol262}, i64 0, metadata !243), !dbg !895
  %67 = load i32* %ncol262, align 4, !dbg !895, !tbaa !488
  %cmp275 = icmp slt i32 %jcol.irow483, %67, !dbg !895
  %cmp277 = icmp slt i32 %irow.jcol482, %67, !dbg !895
  %or.cond484 = and i1 %cmp275, %cmp277, !dbg !895
  br i1 %or.cond484, label %for.cond280.preheader, label %return, !dbg !895

for.cond280.preheader:                            ; preds = %if.end270
  %cmp281545 = icmp slt i32 %jcol.irow483, 0, !dbg !896
  br i1 %cmp281545, label %return, label %for.body282.lr.ph, !dbg !896

for.body282.lr.ph:                                ; preds = %for.cond280.preheader
  call void @llvm.dbg.value(metadata !{i32** %pivotsizes265}, i64 0, metadata !246), !dbg !898
  %68 = load i32** %pivotsizes265, align 8, !dbg !898, !tbaa !483
  br label %for.body282, !dbg !896

for.body282:                                      ; preds = %for.body282.lr.ph, %for.inc308
  %indvars.iv582 = phi i64 [ 0, %for.body282.lr.ph ], [ %indvars.iv.next583, %for.inc308 ]
  %kk260.0548 = phi i32 [ 0, %for.body282.lr.ph ], [ %kk260.1.lcssa, %for.inc308 ]
  %jrow259.0547 = phi i32 [ 0, %for.body282.lr.ph ], [ %jrow259.1.lcssa, %for.inc308 ]
  call void @llvm.dbg.value(metadata !{i32** %pivotsizes265}, i64 0, metadata !246), !dbg !898
  %arrayidx284 = getelementptr inbounds i32* %68, i64 %indvars.iv582, !dbg !898
  %69 = load i32* %arrayidx284, align 4, !dbg !898, !tbaa !488
  call void @llvm.dbg.value(metadata !{i32 %69}, i64 0, metadata !242), !dbg !898
  call void @llvm.dbg.value(metadata !{i32 %69}, i64 0, metadata !245), !dbg !898
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !238), !dbg !900
  %cmp286535 = icmp sgt i32 %69, 0, !dbg !900
  br i1 %cmp286535, label %for.body287, label %for.inc308, !dbg !900

for.body287:                                      ; preds = %for.body282, %if.else300
  %size264.0539 = phi i32 [ %dec301, %if.else300 ], [ %69, %for.body282 ]
  %kk260.1538 = phi i32 [ %add302, %if.else300 ], [ %kk260.0548, %for.body282 ]
  %jrow259.1537 = phi i32 [ %inc306, %if.else300 ], [ %jrow259.0547, %for.body282 ]
  %ii257.0536 = phi i32 [ %inc305, %if.else300 ], [ 0, %for.body282 ]
  %cmp288 = icmp eq i32 %jrow259.1537, %jcol.irow483, !dbg !902
  br i1 %cmp288, label %if.then289, label %if.else300, !dbg !902

if.then289:                                       ; preds = %for.body287
  %sub290 = sub nsw i32 %irow.jcol482, %jcol.irow483, !dbg !904
  %sub291 = add i32 %69, -1, !dbg !904
  %sub292 = sub i32 %sub291, %ii257.0536, !dbg !904
  %cmp293 = icmp sgt i32 %sub290, %sub292, !dbg !904
  br i1 %cmp293, label %return, label %if.else295, !dbg !904

if.else295:                                       ; preds = %if.then289
  %add297 = add nsw i32 %kk260.1538, %sub290, !dbg !906
  call void @llvm.dbg.value(metadata !{i32 %add297}, i64 0, metadata !241), !dbg !906
  %idxprom298 = sext i32 %add297 to i64, !dbg !908
  call void @llvm.dbg.value(metadata !{double** %entries256}, i64 0, metadata !237), !dbg !908
  %70 = load double** %entries256, align 8, !dbg !908, !tbaa !483
  %arrayidx299 = getelementptr inbounds double* %70, i64 %idxprom298, !dbg !908
  %71 = load double* %arrayidx299, align 8, !dbg !908, !tbaa !778
  store double %71, double* %pValue, align 8, !dbg !908, !tbaa !778
  br label %return, !dbg !909

if.else300:                                       ; preds = %for.body287
  %dec301 = add nsw i32 %size264.0539, -1, !dbg !910
  call void @llvm.dbg.value(metadata !{i32 %dec301}, i64 0, metadata !245), !dbg !910
  %add302 = add nsw i32 %size264.0539, %kk260.1538, !dbg !910
  call void @llvm.dbg.value(metadata !{i32 %add302}, i64 0, metadata !241), !dbg !910
  %inc305 = add nsw i32 %ii257.0536, 1, !dbg !900
  call void @llvm.dbg.value(metadata !{i32 %inc305}, i64 0, metadata !238), !dbg !900
  %inc306 = add nsw i32 %jrow259.1537, 1, !dbg !900
  call void @llvm.dbg.value(metadata !{i32 %inc306}, i64 0, metadata !240), !dbg !900
  %cmp286 = icmp slt i32 %inc305, %69, !dbg !900
  br i1 %cmp286, label %for.body287, label %for.inc308, !dbg !900

for.inc308:                                       ; preds = %if.else300, %for.body282
  %kk260.1.lcssa = phi i32 [ %kk260.0548, %for.body282 ], [ %add302, %if.else300 ]
  %jrow259.1.lcssa = phi i32 [ %jrow259.0547, %for.body282 ], [ %inc306, %if.else300 ]
  %indvars.iv.next583 = add i64 %indvars.iv582, 1, !dbg !896
  %cmp281 = icmp sgt i32 %jrow259.1.lcssa, %jcol.irow483, !dbg !896
  br i1 %cmp281, label %return, label %for.body282, !dbg !896

sw.default:                                       ; preds = %if.end14
  %72 = load %struct._IO_FILE** @stderr, align 8, !dbg !912, !tbaa !483
  %call312 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %72, i8* getelementptr inbounds ([60 x i8]* @.str29, i64 0, i64 0), %struct._SubMtx* %mtx, i32 %irow, i32 %jcol, double* %pValue, i32 %5) #5, !dbg !912
  call void @exit(i32 -1) #6, !dbg !913
  unreachable, !dbg !913

return:                                           ; preds = %for.cond280.preheader, %for.inc308, %for.cond226.preheader, %for.inc252, %sw.bb95, %for.inc112, %for.cond79.preheader, %for.inc91, %for.cond40.preheader, %for.inc52, %lor.lhs.false18, %if.then289, %if.end270, %sw.bb255, %if.then235, %if.end217, %sw.bb208, %if.end200, %sw.bb191, %for.end177, %lor.lhs.false163, %lor.lhs.false161, %for.end139, %lor.lhs.false125, %lor.lhs.false123, %lor.lhs.false66, %lor.lhs.false32, %lor.lhs.false22, %if.else295, %if.else, %if.end205, %if.then186, %if.then147, %if.then108, %if.then87, %if.then48, %if.end25
  %retval.0 = phi i32 [ %add297, %if.else295 ], [ %add242, %if.else ], [ %irow, %if.end205 ], [ %add187, %if.then186 ], [ %add148, %if.then147 ], [ %ii97.0506, %if.then108 ], [ %jj59.0498, %if.then87 ], [ %jj.0488, %if.then48 ], [ %add, %if.end25 ], [ -1, %lor.lhs.false18 ], [ -1, %lor.lhs.false22 ], [ -1, %lor.lhs.false32 ], [ -1, %lor.lhs.false66 ], [ -1, %lor.lhs.false123 ], [ -1, %lor.lhs.false125 ], [ -1, %for.end139 ], [ -1, %lor.lhs.false161 ], [ -1, %lor.lhs.false163 ], [ -1, %for.end177 ], [ -1, %sw.bb191 ], [ -1, %if.end200 ], [ -1, %sw.bb208 ], [ -1, %if.end217 ], [ -1, %if.then235 ], [ -1, %sw.bb255 ], [ -1, %if.end270 ], [ -1, %if.then289 ], [ -1, %for.inc52 ], [ -1, %for.cond40.preheader ], [ -1, %for.inc91 ], [ -1, %for.cond79.preheader ], [ -1, %for.inc112 ], [ -1, %sw.bb95 ], [ 0, %for.cond226.preheader ], [ %kk.1.lcssa, %for.inc252 ], [ 0, %for.cond280.preheader ], [ %kk260.1.lcssa, %for.inc308 ]
  ret i32 %retval.0, !dbg !914
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
  call void @llvm.dbg.value(metadata !{%struct._SubMtx* %mtx}, i64 0, metadata !251), !dbg !915
  call void @llvm.dbg.value(metadata !{i32 %irow}, i64 0, metadata !252), !dbg !916
  call void @llvm.dbg.value(metadata !{i32 %jcol}, i64 0, metadata !253), !dbg !917
  call void @llvm.dbg.value(metadata !{double* %pReal}, i64 0, metadata !254), !dbg !918
  call void @llvm.dbg.value(metadata !{double* %pImag}, i64 0, metadata !255), !dbg !919
  %cmp = icmp eq %struct._SubMtx* %mtx, null, !dbg !920
  %cmp1 = icmp slt i32 %irow, 0, !dbg !920
  %or.cond662 = or i1 %cmp, %cmp1, !dbg !920
  br i1 %or.cond662, label %if.then, label %lor.lhs.false2, !dbg !920

lor.lhs.false2:                                   ; preds = %entry
  %nrow = getelementptr inbounds %struct._SubMtx* %mtx, i64 0, i32 4, !dbg !920
  %0 = load i32* %nrow, align 4, !dbg !920, !tbaa !488
  %cmp3 = icmp sle i32 %0, %irow, !dbg !920
  %cmp5 = icmp slt i32 %jcol, 0, !dbg !920
  %or.cond663 = or i1 %cmp3, %cmp5, !dbg !920
  br i1 %or.cond663, label %if.then, label %lor.lhs.false6, !dbg !920

lor.lhs.false6:                                   ; preds = %lor.lhs.false2
  %ncol = getelementptr inbounds %struct._SubMtx* %mtx, i64 0, i32 5, !dbg !920
  %1 = load i32* %ncol, align 4, !dbg !920, !tbaa !488
  %cmp7 = icmp sle i32 %1, %jcol, !dbg !920
  %cmp9 = icmp eq double* %pReal, null, !dbg !920
  %or.cond = or i1 %cmp7, %cmp9, !dbg !920
  %cmp11 = icmp eq double* %pImag, null, !dbg !920
  %or.cond555 = or i1 %or.cond, %cmp11, !dbg !920
  br i1 %or.cond555, label %if.then, label %if.end, !dbg !920

if.then:                                          ; preds = %lor.lhs.false2, %lor.lhs.false6, %entry
  %2 = load %struct._IO_FILE** @stderr, align 8, !dbg !921, !tbaa !483
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([65 x i8]* @.str30, i64 0, i64 0), %struct._SubMtx* %mtx, i32 %irow, i32 %jcol, double* %pReal, double* %pImag) #5, !dbg !921
  call void @exit(i32 -1) #6, !dbg !923
  unreachable, !dbg !923

if.end:                                           ; preds = %lor.lhs.false6
  %type = getelementptr inbounds %struct._SubMtx* %mtx, i64 0, i32 0, !dbg !924
  %3 = load i32* %type, align 4, !dbg !924, !tbaa !488
  %cmp12 = icmp eq i32 %3, 2, !dbg !924
  br i1 %cmp12, label %if.end16, label %if.then13, !dbg !924

if.then13:                                        ; preds = %if.end
  %4 = load %struct._IO_FILE** @stderr, align 8, !dbg !925, !tbaa !483
  %call15 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([92 x i8]* @.str31, i64 0, i64 0), %struct._SubMtx* %mtx, i32 %irow, i32 %jcol, double* %pReal, double* %pImag, i32 %3) #5, !dbg !925
  call void @exit(i32 -1) #6, !dbg !927
  unreachable, !dbg !927

if.end16:                                         ; preds = %if.end
  store double 0.000000e+00, double* %pImag, align 8, !dbg !928, !tbaa !778
  store double 0.000000e+00, double* %pReal, align 8, !dbg !928, !tbaa !778
  %mode = getelementptr inbounds %struct._SubMtx* %mtx, i64 0, i32 1, !dbg !929
  %5 = load i32* %mode, align 4, !dbg !929, !tbaa !488
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
  ], !dbg !929

lor.lhs.false20:                                  ; preds = %if.end16, %if.end16
  call void @llvm.dbg.declare(metadata !{double** %entries}, metadata !256), !dbg !930
  call void @llvm.dbg.declare(metadata !{i32* %inc1}, metadata !259), !dbg !931
  call void @llvm.dbg.declare(metadata !{i32* %inc2}, metadata !260), !dbg !931
  call void @llvm.dbg.declare(metadata !{i32* %ncol17}, metadata !261), !dbg !931
  call void @llvm.dbg.declare(metadata !{i32* %nrow18}, metadata !262), !dbg !931
  call void @SubMtx_denseInfo(%struct._SubMtx* %mtx, i32* %nrow18, i32* %ncol17, i32* %inc1, i32* %inc2, double** %entries) #7, !dbg !932
  call void @llvm.dbg.value(metadata !{i32* %nrow18}, i64 0, metadata !262), !dbg !933
  %6 = load i32* %nrow18, align 4, !dbg !933, !tbaa !488
  %cmp21.not = icmp sgt i32 %6, %irow, !dbg !933
  br i1 %cmp21.not, label %lor.lhs.false24, label %return, !dbg !933

lor.lhs.false24:                                  ; preds = %lor.lhs.false20
  call void @llvm.dbg.value(metadata !{i32* %ncol17}, i64 0, metadata !261), !dbg !933
  %7 = load i32* %ncol17, align 4, !dbg !933, !tbaa !488
  %cmp25 = icmp sgt i32 %7, %jcol, !dbg !933
  br i1 %cmp25, label %if.end27, label %return, !dbg !933

if.end27:                                         ; preds = %lor.lhs.false24
  call void @llvm.dbg.value(metadata !{i32* %inc1}, i64 0, metadata !259), !dbg !934
  %8 = load i32* %inc1, align 4, !dbg !934, !tbaa !488
  %mul = mul nsw i32 %8, %irow, !dbg !934
  call void @llvm.dbg.value(metadata !{i32* %inc2}, i64 0, metadata !260), !dbg !934
  %9 = load i32* %inc2, align 4, !dbg !934, !tbaa !488
  %mul28 = mul nsw i32 %9, %jcol, !dbg !934
  %add = add nsw i32 %mul28, %mul, !dbg !934
  call void @llvm.dbg.value(metadata !{i32 %add}, i64 0, metadata !263), !dbg !934
  %mul29 = shl nsw i32 %add, 1, !dbg !935
  %idxprom = sext i32 %mul29 to i64, !dbg !935
  call void @llvm.dbg.value(metadata !{double** %entries}, i64 0, metadata !256), !dbg !935
  %10 = load double** %entries, align 8, !dbg !935, !tbaa !483
  %arrayidx = getelementptr inbounds double* %10, i64 %idxprom, !dbg !935
  %11 = load double* %arrayidx, align 8, !dbg !935, !tbaa !778
  store double %11, double* %pReal, align 8, !dbg !935, !tbaa !778
  %add31554 = or i32 %mul29, 1, !dbg !936
  %idxprom32 = sext i32 %add31554 to i64, !dbg !936
  call void @llvm.dbg.value(metadata !{double** %entries}, i64 0, metadata !256), !dbg !936
  %arrayidx33 = getelementptr inbounds double* %10, i64 %idxprom32, !dbg !936
  %12 = load double* %arrayidx33, align 8, !dbg !936, !tbaa !778
  store double %12, double* %pImag, align 8, !dbg !936, !tbaa !778
  br label %return, !dbg !937

lor.lhs.false39:                                  ; preds = %if.end16
  call void @llvm.dbg.declare(metadata !{double** %entries35}, metadata !264), !dbg !938
  call void @llvm.dbg.declare(metadata !{i32* %nent}, metadata !268), !dbg !939
  call void @llvm.dbg.declare(metadata !{i32* %nrow36}, metadata !269), !dbg !939
  call void @llvm.dbg.declare(metadata !{i32** %indices}, metadata !271), !dbg !939
  call void @llvm.dbg.declare(metadata !{i32** %sizes}, metadata !272), !dbg !939
  call void @SubMtx_sparseRowsInfo(%struct._SubMtx* %mtx, i32* %nrow36, i32* %nent, i32** %sizes, i32** %indices, double** %entries35) #7, !dbg !940
  call void @llvm.dbg.value(metadata !{i32* %nrow36}, i64 0, metadata !269), !dbg !941
  %13 = load i32* %nrow36, align 4, !dbg !941, !tbaa !488
  %cmp40 = icmp sgt i32 %13, %irow, !dbg !941
  br i1 %cmp40, label %for.cond.preheader, label %return, !dbg !941

for.cond.preheader:                               ; preds = %lor.lhs.false39
  %cmp43570 = icmp sgt i32 %irow, 0, !dbg !942
  call void @llvm.dbg.value(metadata !{i32** %sizes}, i64 0, metadata !272), !dbg !944
  %14 = load i32** %sizes, align 8, !dbg !944, !tbaa !483
  br i1 %cmp43570, label %for.body, label %for.cond47.preheader, !dbg !942

for.cond47.preheader:                             ; preds = %for.cond.preheader, %for.body
  %offset37.0.lcssa = phi i32 [ %add46, %for.body ], [ 0, %for.cond.preheader ]
  %idxprom48 = sext i32 %irow to i64, !dbg !946
  call void @llvm.dbg.value(metadata !{i32** %sizes}, i64 0, metadata !272), !dbg !946
  %arrayidx49566 = getelementptr inbounds i32* %14, i64 %idxprom48, !dbg !946
  %15 = load i32* %arrayidx49566, align 4, !dbg !946, !tbaa !488
  %cmp50567 = icmp sgt i32 %15, 0, !dbg !946
  br i1 %cmp50567, label %for.body51.lr.ph, label %return, !dbg !946

for.body51.lr.ph:                                 ; preds = %for.cond47.preheader
  call void @llvm.dbg.value(metadata !{i32** %indices}, i64 0, metadata !271), !dbg !948
  %16 = load i32** %indices, align 8, !dbg !948, !tbaa !483
  call void @llvm.dbg.value(metadata !{i32** %sizes}, i64 0, metadata !272), !dbg !946
  %17 = sext i32 %offset37.0.lcssa to i64
  br label %for.body51, !dbg !946

for.body:                                         ; preds = %for.cond.preheader, %for.body
  %indvars.iv631 = phi i64 [ %indvars.iv.next632, %for.body ], [ 0, %for.cond.preheader ]
  %offset37.0571 = phi i32 [ %add46, %for.body ], [ 0, %for.cond.preheader ]
  call void @llvm.dbg.value(metadata !{i32** %sizes}, i64 0, metadata !272), !dbg !944
  %arrayidx45 = getelementptr inbounds i32* %14, i64 %indvars.iv631, !dbg !944
  %18 = load i32* %arrayidx45, align 4, !dbg !944, !tbaa !488
  %add46 = add nsw i32 %18, %offset37.0571, !dbg !944
  call void @llvm.dbg.value(metadata !{i32 %add46}, i64 0, metadata !270), !dbg !944
  %indvars.iv.next632 = add i64 %indvars.iv631, 1, !dbg !942
  %lftr.wideiv = trunc i64 %indvars.iv.next632 to i32, !dbg !942
  %exitcond = icmp eq i32 %lftr.wideiv, %irow, !dbg !942
  br i1 %exitcond, label %for.cond47.preheader, label %for.body, !dbg !942

for.body51:                                       ; preds = %for.body51.lr.ph, %for.inc64
  %indvars.iv = phi i64 [ %17, %for.body51.lr.ph ], [ %indvars.iv.next, %for.inc64 ]
  %ii.1569 = phi i32 [ 0, %for.body51.lr.ph ], [ %inc65, %for.inc64 ]
  %jj.0568 = phi i32 [ %offset37.0.lcssa, %for.body51.lr.ph ], [ %inc66, %for.inc64 ]
  call void @llvm.dbg.value(metadata !{i32** %indices}, i64 0, metadata !271), !dbg !948
  %arrayidx53 = getelementptr inbounds i32* %16, i64 %indvars.iv, !dbg !948
  %19 = load i32* %arrayidx53, align 4, !dbg !948, !tbaa !488
  %cmp54 = icmp eq i32 %19, %jcol, !dbg !948
  br i1 %cmp54, label %if.then55, label %for.inc64, !dbg !948

if.then55:                                        ; preds = %for.body51
  %mul56 = shl nsw i32 %jj.0568, 1, !dbg !950
  %idxprom57 = sext i32 %mul56 to i64, !dbg !950
  call void @llvm.dbg.value(metadata !{double** %entries35}, i64 0, metadata !264), !dbg !950
  %20 = load double** %entries35, align 8, !dbg !950, !tbaa !483
  %arrayidx58 = getelementptr inbounds double* %20, i64 %idxprom57, !dbg !950
  %21 = load double* %arrayidx58, align 8, !dbg !950, !tbaa !778
  store double %21, double* %pReal, align 8, !dbg !950, !tbaa !778
  %add60553 = or i32 %mul56, 1, !dbg !952
  %idxprom61 = sext i32 %add60553 to i64, !dbg !952
  call void @llvm.dbg.value(metadata !{double** %entries35}, i64 0, metadata !264), !dbg !952
  %arrayidx62 = getelementptr inbounds double* %20, i64 %idxprom61, !dbg !952
  %22 = load double* %arrayidx62, align 8, !dbg !952, !tbaa !778
  store double %22, double* %pImag, align 8, !dbg !952, !tbaa !778
  br label %return, !dbg !953

for.inc64:                                        ; preds = %for.body51
  %inc65 = add nsw i32 %ii.1569, 1, !dbg !946
  call void @llvm.dbg.value(metadata !{i32 %inc65}, i64 0, metadata !266), !dbg !946
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !946
  %inc66 = add nsw i32 %jj.0568, 1, !dbg !946
  call void @llvm.dbg.value(metadata !{i32 %inc66}, i64 0, metadata !267), !dbg !946
  call void @llvm.dbg.value(metadata !{i32** %sizes}, i64 0, metadata !272), !dbg !946
  %cmp50 = icmp slt i32 %inc65, %15, !dbg !946
  br i1 %cmp50, label %for.body51, label %return, !dbg !946

lor.lhs.false78:                                  ; preds = %if.end16
  call void @llvm.dbg.declare(metadata !{double** %entries69}, metadata !273), !dbg !954
  call void @llvm.dbg.declare(metadata !{i32* %nent72}, metadata !277), !dbg !955
  call void @llvm.dbg.declare(metadata !{i32* %ncol73}, metadata !278), !dbg !955
  call void @llvm.dbg.declare(metadata !{i32** %indices75}, metadata !280), !dbg !955
  call void @llvm.dbg.declare(metadata !{i32** %sizes76}, metadata !281), !dbg !955
  call void @SubMtx_sparseColumnsInfo(%struct._SubMtx* %mtx, i32* %ncol73, i32* %nent72, i32** %sizes76, i32** %indices75, double** %entries69) #7, !dbg !956
  call void @llvm.dbg.value(metadata !{i32* %ncol73}, i64 0, metadata !278), !dbg !957
  %23 = load i32* %ncol73, align 4, !dbg !957, !tbaa !488
  %cmp79 = icmp sgt i32 %23, %jcol, !dbg !957
  br i1 %cmp79, label %for.cond82.preheader, label %return, !dbg !957

for.cond82.preheader:                             ; preds = %lor.lhs.false78
  %cmp83579 = icmp sgt i32 %jcol, 0, !dbg !958
  call void @llvm.dbg.value(metadata !{i32** %sizes76}, i64 0, metadata !281), !dbg !960
  %24 = load i32** %sizes76, align 8, !dbg !960, !tbaa !483
  br i1 %cmp83579, label %for.body84, label %for.cond91.preheader, !dbg !958

for.cond91.preheader:                             ; preds = %for.cond82.preheader, %for.body84
  %offset74.0.lcssa = phi i32 [ %add87, %for.body84 ], [ 0, %for.cond82.preheader ]
  %idxprom92 = sext i32 %jcol to i64, !dbg !962
  call void @llvm.dbg.value(metadata !{i32** %sizes76}, i64 0, metadata !281), !dbg !962
  %arrayidx93575 = getelementptr inbounds i32* %24, i64 %idxprom92, !dbg !962
  %25 = load i32* %arrayidx93575, align 4, !dbg !962, !tbaa !488
  %cmp94576 = icmp sgt i32 %25, 0, !dbg !962
  br i1 %cmp94576, label %for.body95.lr.ph, label %return, !dbg !962

for.body95.lr.ph:                                 ; preds = %for.cond91.preheader
  call void @llvm.dbg.value(metadata !{i32** %indices75}, i64 0, metadata !280), !dbg !964
  %26 = load i32** %indices75, align 8, !dbg !964, !tbaa !483
  call void @llvm.dbg.value(metadata !{i32** %sizes76}, i64 0, metadata !281), !dbg !962
  %27 = sext i32 %offset74.0.lcssa to i64
  br label %for.body95, !dbg !962

for.body84:                                       ; preds = %for.cond82.preheader, %for.body84
  %indvars.iv636 = phi i64 [ %indvars.iv.next637, %for.body84 ], [ 0, %for.cond82.preheader ]
  %offset74.0581 = phi i32 [ %add87, %for.body84 ], [ 0, %for.cond82.preheader ]
  call void @llvm.dbg.value(metadata !{i32** %sizes76}, i64 0, metadata !281), !dbg !960
  %arrayidx86 = getelementptr inbounds i32* %24, i64 %indvars.iv636, !dbg !960
  %28 = load i32* %arrayidx86, align 4, !dbg !960, !tbaa !488
  %add87 = add nsw i32 %28, %offset74.0581, !dbg !960
  call void @llvm.dbg.value(metadata !{i32 %add87}, i64 0, metadata !279), !dbg !960
  %indvars.iv.next637 = add i64 %indvars.iv636, 1, !dbg !958
  %lftr.wideiv638 = trunc i64 %indvars.iv.next637 to i32, !dbg !958
  %exitcond639 = icmp eq i32 %lftr.wideiv638, %jcol, !dbg !958
  br i1 %exitcond639, label %for.cond91.preheader, label %for.body84, !dbg !958

for.body95:                                       ; preds = %for.body95.lr.ph, %for.inc108
  %indvars.iv634 = phi i64 [ %27, %for.body95.lr.ph ], [ %indvars.iv.next635, %for.inc108 ]
  %jj71.0578 = phi i32 [ %offset74.0.lcssa, %for.body95.lr.ph ], [ %inc110, %for.inc108 ]
  %ii70.1577 = phi i32 [ 0, %for.body95.lr.ph ], [ %inc109, %for.inc108 ]
  call void @llvm.dbg.value(metadata !{i32** %indices75}, i64 0, metadata !280), !dbg !964
  %arrayidx97 = getelementptr inbounds i32* %26, i64 %indvars.iv634, !dbg !964
  %29 = load i32* %arrayidx97, align 4, !dbg !964, !tbaa !488
  %cmp98 = icmp eq i32 %29, %irow, !dbg !964
  br i1 %cmp98, label %if.then99, label %for.inc108, !dbg !964

if.then99:                                        ; preds = %for.body95
  %mul100 = shl nsw i32 %jj71.0578, 1, !dbg !966
  %idxprom101 = sext i32 %mul100 to i64, !dbg !966
  call void @llvm.dbg.value(metadata !{double** %entries69}, i64 0, metadata !273), !dbg !966
  %30 = load double** %entries69, align 8, !dbg !966, !tbaa !483
  %arrayidx102 = getelementptr inbounds double* %30, i64 %idxprom101, !dbg !966
  %31 = load double* %arrayidx102, align 8, !dbg !966, !tbaa !778
  store double %31, double* %pReal, align 8, !dbg !966, !tbaa !778
  %add104552 = or i32 %mul100, 1, !dbg !968
  %idxprom105 = sext i32 %add104552 to i64, !dbg !968
  call void @llvm.dbg.value(metadata !{double** %entries69}, i64 0, metadata !273), !dbg !968
  %arrayidx106 = getelementptr inbounds double* %30, i64 %idxprom105, !dbg !968
  %32 = load double* %arrayidx106, align 8, !dbg !968, !tbaa !778
  store double %32, double* %pImag, align 8, !dbg !968, !tbaa !778
  br label %return, !dbg !969

for.inc108:                                       ; preds = %for.body95
  %inc109 = add nsw i32 %ii70.1577, 1, !dbg !962
  call void @llvm.dbg.value(metadata !{i32 %inc109}, i64 0, metadata !275), !dbg !962
  %indvars.iv.next635 = add i64 %indvars.iv634, 1, !dbg !962
  %inc110 = add nsw i32 %jj71.0578, 1, !dbg !962
  call void @llvm.dbg.value(metadata !{i32 %inc110}, i64 0, metadata !276), !dbg !962
  call void @llvm.dbg.value(metadata !{i32** %sizes76}, i64 0, metadata !281), !dbg !962
  %cmp94 = icmp slt i32 %inc109, %25, !dbg !962
  br i1 %cmp94, label %for.body95, label %return, !dbg !962

sw.bb112:                                         ; preds = %if.end16
  call void @llvm.dbg.declare(metadata !{double** %entries113}, metadata !282), !dbg !970
  call void @llvm.dbg.declare(metadata !{i32* %nent115}, metadata !285), !dbg !971
  call void @llvm.dbg.declare(metadata !{i32** %colids}, metadata !286), !dbg !971
  call void @llvm.dbg.declare(metadata !{i32** %rowids}, metadata !287), !dbg !971
  call void @SubMtx_sparseTriplesInfo(%struct._SubMtx* %mtx, i32* %nent115, i32** %rowids, i32** %colids, double** %entries113) #7, !dbg !972
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !284), !dbg !973
  call void @llvm.dbg.value(metadata !{i32* %nent115}, i64 0, metadata !285), !dbg !973
  %33 = load i32* %nent115, align 4, !dbg !973, !tbaa !488
  %cmp117585 = icmp sgt i32 %33, 0, !dbg !973
  br i1 %cmp117585, label %for.body118.lr.ph, label %return, !dbg !973

for.body118.lr.ph:                                ; preds = %sw.bb112
  call void @llvm.dbg.value(metadata !{i32** %rowids}, i64 0, metadata !287), !dbg !975
  %34 = load i32** %rowids, align 8, !dbg !975, !tbaa !483
  call void @llvm.dbg.value(metadata !{i32** %colids}, i64 0, metadata !286), !dbg !975
  %35 = load i32** %colids, align 8, !dbg !975, !tbaa !483
  call void @llvm.dbg.value(metadata !{i32* %nent115}, i64 0, metadata !285), !dbg !973
  br label %for.body118, !dbg !973

for.body118:                                      ; preds = %for.body118.lr.ph, %for.inc134
  %indvars.iv641 = phi i64 [ 0, %for.body118.lr.ph ], [ %indvars.iv.next642, %for.inc134 ]
  %ii114.0586 = phi i32 [ 0, %for.body118.lr.ph ], [ %inc135, %for.inc134 ]
  call void @llvm.dbg.value(metadata !{i32** %rowids}, i64 0, metadata !287), !dbg !975
  %arrayidx120 = getelementptr inbounds i32* %34, i64 %indvars.iv641, !dbg !975
  %36 = load i32* %arrayidx120, align 4, !dbg !975, !tbaa !488
  %cmp121 = icmp eq i32 %36, %irow, !dbg !975
  br i1 %cmp121, label %land.lhs.true, label %for.inc134, !dbg !975

land.lhs.true:                                    ; preds = %for.body118
  call void @llvm.dbg.value(metadata !{i32** %colids}, i64 0, metadata !286), !dbg !975
  %arrayidx123 = getelementptr inbounds i32* %35, i64 %indvars.iv641, !dbg !975
  %37 = load i32* %arrayidx123, align 4, !dbg !975, !tbaa !488
  %cmp124 = icmp eq i32 %37, %jcol, !dbg !975
  br i1 %cmp124, label %if.then125, label %for.inc134, !dbg !975

if.then125:                                       ; preds = %land.lhs.true
  %mul126 = shl nsw i32 %ii114.0586, 1, !dbg !977
  %idxprom127 = sext i32 %mul126 to i64, !dbg !977
  call void @llvm.dbg.value(metadata !{double** %entries113}, i64 0, metadata !282), !dbg !977
  %38 = load double** %entries113, align 8, !dbg !977, !tbaa !483
  %arrayidx128 = getelementptr inbounds double* %38, i64 %idxprom127, !dbg !977
  %39 = load double* %arrayidx128, align 8, !dbg !977, !tbaa !778
  store double %39, double* %pReal, align 8, !dbg !977, !tbaa !778
  %add130551 = or i32 %mul126, 1, !dbg !979
  %idxprom131 = sext i32 %add130551 to i64, !dbg !979
  call void @llvm.dbg.value(metadata !{double** %entries113}, i64 0, metadata !282), !dbg !979
  %arrayidx132 = getelementptr inbounds double* %38, i64 %idxprom131, !dbg !979
  %40 = load double* %arrayidx132, align 8, !dbg !979, !tbaa !778
  store double %40, double* %pImag, align 8, !dbg !979, !tbaa !778
  br label %return, !dbg !980

for.inc134:                                       ; preds = %for.body118, %land.lhs.true
  %indvars.iv.next642 = add i64 %indvars.iv641, 1, !dbg !973
  %inc135 = add nsw i32 %ii114.0586, 1, !dbg !973
  call void @llvm.dbg.value(metadata !{i32 %inc135}, i64 0, metadata !284), !dbg !973
  call void @llvm.dbg.value(metadata !{i32* %nent115}, i64 0, metadata !285), !dbg !973
  %41 = trunc i64 %indvars.iv.next642 to i32, !dbg !973
  %cmp117 = icmp slt i32 %41, %33, !dbg !973
  br i1 %cmp117, label %for.body118, label %return, !dbg !973

lor.lhs.false145:                                 ; preds = %if.end16
  call void @llvm.dbg.declare(metadata !{double** %entries138}, metadata !288), !dbg !981
  call void @llvm.dbg.declare(metadata !{i32* %nent140}, metadata !292), !dbg !982
  call void @llvm.dbg.declare(metadata !{i32* %nrow141}, metadata !293), !dbg !982
  call void @llvm.dbg.declare(metadata !{i32** %firstlocs}, metadata !295), !dbg !982
  call void @llvm.dbg.declare(metadata !{i32** %sizes143}, metadata !296), !dbg !982
  call void @SubMtx_denseSubrowsInfo(%struct._SubMtx* %mtx, i32* %nrow141, i32* %nent140, i32** %firstlocs, i32** %sizes143, double** %entries138) #7, !dbg !983
  call void @llvm.dbg.value(metadata !{i32* %nrow141}, i64 0, metadata !293), !dbg !984
  %42 = load i32* %nrow141, align 4, !dbg !984, !tbaa !488
  %cmp146 = icmp sgt i32 %42, %irow, !dbg !984
  br i1 %cmp146, label %lor.lhs.false147, label %return, !dbg !984

lor.lhs.false147:                                 ; preds = %lor.lhs.false145
  %idxprom148 = sext i32 %irow to i64, !dbg !984
  call void @llvm.dbg.value(metadata !{i32** %sizes143}, i64 0, metadata !296), !dbg !984
  %43 = load i32** %sizes143, align 8, !dbg !984, !tbaa !483
  %arrayidx149 = getelementptr inbounds i32* %43, i64 %idxprom148, !dbg !984
  %44 = load i32* %arrayidx149, align 4, !dbg !984, !tbaa !488
  %cmp150 = icmp eq i32 %44, 0, !dbg !984
  br i1 %cmp150, label %return, label %for.cond153.preheader, !dbg !984

for.cond153.preheader:                            ; preds = %lor.lhs.false147
  %cmp154587 = icmp sgt i32 %irow, 0, !dbg !985
  br i1 %cmp154587, label %for.body155, label %for.end161, !dbg !985

for.body155:                                      ; preds = %for.cond153.preheader, %for.body155
  %indvars.iv643 = phi i64 [ %indvars.iv.next644, %for.body155 ], [ 0, %for.cond153.preheader ]
  %offset142.0589 = phi i32 [ %add158, %for.body155 ], [ 0, %for.cond153.preheader ]
  call void @llvm.dbg.value(metadata !{i32** %sizes143}, i64 0, metadata !296), !dbg !987
  %arrayidx157 = getelementptr inbounds i32* %43, i64 %indvars.iv643, !dbg !987
  %45 = load i32* %arrayidx157, align 4, !dbg !987, !tbaa !488
  %add158 = add nsw i32 %45, %offset142.0589, !dbg !987
  call void @llvm.dbg.value(metadata !{i32 %add158}, i64 0, metadata !294), !dbg !987
  %indvars.iv.next644 = add i64 %indvars.iv643, 1, !dbg !985
  %lftr.wideiv645 = trunc i64 %indvars.iv.next644 to i32, !dbg !985
  %exitcond646 = icmp eq i32 %lftr.wideiv645, %irow, !dbg !985
  br i1 %exitcond646, label %for.end161, label %for.body155, !dbg !985

for.end161:                                       ; preds = %for.body155, %for.cond153.preheader
  %offset142.0.lcssa = phi i32 [ 0, %for.cond153.preheader ], [ %add158, %for.body155 ]
  call void @llvm.dbg.value(metadata !{i32** %firstlocs}, i64 0, metadata !295), !dbg !989
  %46 = load i32** %firstlocs, align 8, !dbg !989, !tbaa !483
  %arrayidx163 = getelementptr inbounds i32* %46, i64 %idxprom148, !dbg !989
  %47 = load i32* %arrayidx163, align 4, !dbg !989, !tbaa !488
  %sub = sub nsw i32 %jcol, %47, !dbg !989
  call void @llvm.dbg.value(metadata !{i32 %sub}, i64 0, metadata !291), !dbg !989
  %cmp164 = icmp sgt i32 %sub, -1, !dbg !989
  %cmp168 = icmp slt i32 %sub, %44, !dbg !989
  %or.cond664 = and i1 %cmp164, %cmp168, !dbg !989
  call void @llvm.dbg.value(metadata !{i32** %sizes143}, i64 0, metadata !296), !dbg !989
  br i1 %or.cond664, label %if.then169, label %return, !dbg !989

if.then169:                                       ; preds = %for.end161
  %add170 = add nsw i32 %sub, %offset142.0.lcssa, !dbg !990
  call void @llvm.dbg.value(metadata !{i32 %add170}, i64 0, metadata !294), !dbg !990
  %mul171 = shl nsw i32 %add170, 1, !dbg !992
  %idxprom172 = sext i32 %mul171 to i64, !dbg !992
  call void @llvm.dbg.value(metadata !{double** %entries138}, i64 0, metadata !288), !dbg !992
  %48 = load double** %entries138, align 8, !dbg !992, !tbaa !483
  %arrayidx173 = getelementptr inbounds double* %48, i64 %idxprom172, !dbg !992
  %49 = load double* %arrayidx173, align 8, !dbg !992, !tbaa !778
  store double %49, double* %pReal, align 8, !dbg !992, !tbaa !778
  %add175550 = or i32 %mul171, 1, !dbg !993
  %idxprom176 = sext i32 %add175550 to i64, !dbg !993
  call void @llvm.dbg.value(metadata !{double** %entries138}, i64 0, metadata !288), !dbg !993
  %arrayidx177 = getelementptr inbounds double* %48, i64 %idxprom176, !dbg !993
  %50 = load double* %arrayidx177, align 8, !dbg !993, !tbaa !778
  store double %50, double* %pImag, align 8, !dbg !993, !tbaa !778
  br label %return, !dbg !994

lor.lhs.false188:                                 ; preds = %if.end16
  call void @llvm.dbg.declare(metadata !{double** %entries180}, metadata !297), !dbg !995
  call void @llvm.dbg.declare(metadata !{i32* %nent182}, metadata !301), !dbg !996
  call void @llvm.dbg.declare(metadata !{i32* %ncol183}, metadata !302), !dbg !996
  call void @llvm.dbg.declare(metadata !{i32** %firstlocs185}, metadata !304), !dbg !996
  call void @llvm.dbg.declare(metadata !{i32** %sizes186}, metadata !305), !dbg !996
  call void @SubMtx_denseSubcolumnsInfo(%struct._SubMtx* %mtx, i32* %ncol183, i32* %nent182, i32** %firstlocs185, i32** %sizes186, double** %entries180) #7, !dbg !997
  call void @llvm.dbg.value(metadata !{i32* %ncol183}, i64 0, metadata !302), !dbg !998
  %51 = load i32* %ncol183, align 4, !dbg !998, !tbaa !488
  %cmp189 = icmp sgt i32 %51, %jcol, !dbg !998
  br i1 %cmp189, label %lor.lhs.false190, label %return, !dbg !998

lor.lhs.false190:                                 ; preds = %lor.lhs.false188
  %idxprom191 = sext i32 %jcol to i64, !dbg !998
  call void @llvm.dbg.value(metadata !{i32** %sizes186}, i64 0, metadata !305), !dbg !998
  %52 = load i32** %sizes186, align 8, !dbg !998, !tbaa !483
  %arrayidx192 = getelementptr inbounds i32* %52, i64 %idxprom191, !dbg !998
  %53 = load i32* %arrayidx192, align 4, !dbg !998, !tbaa !488
  %cmp193 = icmp eq i32 %53, 0, !dbg !998
  br i1 %cmp193, label %return, label %for.cond196.preheader, !dbg !998

for.cond196.preheader:                            ; preds = %lor.lhs.false190
  %cmp197591 = icmp sgt i32 %jcol, 0, !dbg !999
  br i1 %cmp197591, label %for.body198, label %for.end204, !dbg !999

for.body198:                                      ; preds = %for.cond196.preheader, %for.body198
  %indvars.iv647 = phi i64 [ %indvars.iv.next648, %for.body198 ], [ 0, %for.cond196.preheader ]
  %offset184.0593 = phi i32 [ %add201, %for.body198 ], [ 0, %for.cond196.preheader ]
  call void @llvm.dbg.value(metadata !{i32** %sizes186}, i64 0, metadata !305), !dbg !1001
  %arrayidx200 = getelementptr inbounds i32* %52, i64 %indvars.iv647, !dbg !1001
  %54 = load i32* %arrayidx200, align 4, !dbg !1001, !tbaa !488
  %add201 = add nsw i32 %54, %offset184.0593, !dbg !1001
  call void @llvm.dbg.value(metadata !{i32 %add201}, i64 0, metadata !303), !dbg !1001
  %indvars.iv.next648 = add i64 %indvars.iv647, 1, !dbg !999
  %lftr.wideiv649 = trunc i64 %indvars.iv.next648 to i32, !dbg !999
  %exitcond650 = icmp eq i32 %lftr.wideiv649, %jcol, !dbg !999
  br i1 %exitcond650, label %for.end204, label %for.body198, !dbg !999

for.end204:                                       ; preds = %for.body198, %for.cond196.preheader
  %offset184.0.lcssa = phi i32 [ 0, %for.cond196.preheader ], [ %add201, %for.body198 ]
  call void @llvm.dbg.value(metadata !{i32** %firstlocs185}, i64 0, metadata !304), !dbg !1003
  %55 = load i32** %firstlocs185, align 8, !dbg !1003, !tbaa !483
  %arrayidx206 = getelementptr inbounds i32* %55, i64 %idxprom191, !dbg !1003
  %56 = load i32* %arrayidx206, align 4, !dbg !1003, !tbaa !488
  %sub207 = sub nsw i32 %irow, %56, !dbg !1003
  call void @llvm.dbg.value(metadata !{i32 %sub207}, i64 0, metadata !300), !dbg !1003
  %cmp208 = icmp sgt i32 %sub207, -1, !dbg !1003
  %cmp212 = icmp slt i32 %sub207, %53, !dbg !1003
  %or.cond665 = and i1 %cmp208, %cmp212, !dbg !1003
  call void @llvm.dbg.value(metadata !{i32** %sizes186}, i64 0, metadata !305), !dbg !1003
  br i1 %or.cond665, label %if.then213, label %return, !dbg !1003

if.then213:                                       ; preds = %for.end204
  %add214 = add nsw i32 %sub207, %offset184.0.lcssa, !dbg !1004
  call void @llvm.dbg.value(metadata !{i32 %add214}, i64 0, metadata !303), !dbg !1004
  %mul215 = shl nsw i32 %add214, 1, !dbg !1006
  %idxprom216 = sext i32 %mul215 to i64, !dbg !1006
  call void @llvm.dbg.value(metadata !{double** %entries180}, i64 0, metadata !297), !dbg !1006
  %57 = load double** %entries180, align 8, !dbg !1006, !tbaa !483
  %arrayidx217 = getelementptr inbounds double* %57, i64 %idxprom216, !dbg !1006
  %58 = load double* %arrayidx217, align 8, !dbg !1006, !tbaa !778
  store double %58, double* %pReal, align 8, !dbg !1006, !tbaa !778
  %add219549 = or i32 %mul215, 1, !dbg !1007
  %idxprom220 = sext i32 %add219549 to i64, !dbg !1007
  call void @llvm.dbg.value(metadata !{double** %entries180}, i64 0, metadata !297), !dbg !1007
  %arrayidx221 = getelementptr inbounds double* %57, i64 %idxprom220, !dbg !1007
  %59 = load double* %arrayidx221, align 8, !dbg !1007, !tbaa !778
  store double %59, double* %pImag, align 8, !dbg !1007, !tbaa !778
  br label %return, !dbg !1008

sw.bb223:                                         ; preds = %if.end16
  call void @llvm.dbg.declare(metadata !{double** %entries224}, metadata !306), !dbg !1009
  call void @llvm.dbg.declare(metadata !{i32* %ncol225}, metadata !308), !dbg !1010
  %60 = or i32 %jcol, %irow, !dbg !1011
  %brmerge556.not = icmp sgt i32 %60, -1, !dbg !1011
  %cmp230 = icmp eq i32 %irow, %jcol, !dbg !1011
  %or.cond557 = and i1 %brmerge556.not, %cmp230, !dbg !1011
  br i1 %or.cond557, label %if.end232, label %return, !dbg !1011

if.end232:                                        ; preds = %sw.bb223
  call void @SubMtx_diagonalInfo(%struct._SubMtx* %mtx, i32* %ncol225, double** %entries224) #7, !dbg !1012
  call void @llvm.dbg.value(metadata !{i32* %ncol225}, i64 0, metadata !308), !dbg !1013
  %61 = load i32* %ncol225, align 4, !dbg !1013, !tbaa !488
  %cmp233 = icmp sgt i32 %61, %irow, !dbg !1013
  br i1 %cmp233, label %if.end237, label %return, !dbg !1013

if.end237:                                        ; preds = %if.end232
  %mul238 = shl nsw i32 %irow, 1, !dbg !1014
  %idxprom239 = sext i32 %mul238 to i64, !dbg !1014
  call void @llvm.dbg.value(metadata !{double** %entries224}, i64 0, metadata !306), !dbg !1014
  %62 = load double** %entries224, align 8, !dbg !1014, !tbaa !483
  %arrayidx240 = getelementptr inbounds double* %62, i64 %idxprom239, !dbg !1014
  %63 = load double* %arrayidx240, align 8, !dbg !1014, !tbaa !778
  store double %63, double* %pReal, align 8, !dbg !1014, !tbaa !778
  %add242548 = or i32 %mul238, 1, !dbg !1015
  %idxprom243 = sext i32 %add242548 to i64, !dbg !1015
  call void @llvm.dbg.value(metadata !{double** %entries224}, i64 0, metadata !306), !dbg !1015
  %arrayidx244 = getelementptr inbounds double* %62, i64 %idxprom243, !dbg !1015
  %64 = load double* %arrayidx244, align 8, !dbg !1015, !tbaa !778
  store double %64, double* %pImag, align 8, !dbg !1015, !tbaa !778
  br label %return, !dbg !1016

sw.bb245:                                         ; preds = %if.end16
  call void @llvm.dbg.declare(metadata !{double** %entries246}, metadata !309), !dbg !1017
  call void @llvm.dbg.declare(metadata !{i32* %ncol248}, metadata !316), !dbg !1018
  call void @llvm.dbg.declare(metadata !{i32* %nent249}, metadata !317), !dbg !1018
  call void @llvm.dbg.declare(metadata !{i32** %pivotsizes}, metadata !319), !dbg !1019
  %65 = or i32 %jcol, %irow, !dbg !1020
  %66 = icmp slt i32 %65, 0, !dbg !1020
  br i1 %66, label %return, label %if.end254, !dbg !1020

if.end254:                                        ; preds = %sw.bb245
  %cmp255 = icmp sgt i32 %irow, %jcol, !dbg !1021
  call void @llvm.dbg.value(metadata !{i32 %irow}, i64 0, metadata !311), !dbg !1022
  call void @llvm.dbg.value(metadata !{i32 %jcol}, i64 0, metadata !252), !dbg !1024
  call void @llvm.dbg.value(metadata !{i32 %irow}, i64 0, metadata !253), !dbg !1025
  %irow.jcol = select i1 %cmp255, i32 %irow, i32 %jcol, !dbg !1021
  %jcol.irow = select i1 %cmp255, i32 %jcol, i32 %irow, !dbg !1021
  call void @SubMtx_blockDiagonalInfo(%struct._SubMtx* %mtx, i32* %ncol248, i32* %nent249, i32** %pivotsizes, double** %entries246) #7, !dbg !1026
  call void @llvm.dbg.value(metadata !{i32* %ncol248}, i64 0, metadata !316), !dbg !1027
  %67 = load i32* %ncol248, align 4, !dbg !1027, !tbaa !488
  %cmp258 = icmp slt i32 %jcol.irow, %67, !dbg !1027
  %cmp260 = icmp slt i32 %irow.jcol, %67, !dbg !1027
  %or.cond560 = and i1 %cmp258, %cmp260, !dbg !1027
  br i1 %or.cond560, label %for.cond263.preheader, label %return, !dbg !1027

for.cond263.preheader:                            ; preds = %if.end254
  %cmp264607 = icmp slt i32 %jcol.irow, 0, !dbg !1028
  br i1 %cmp264607, label %return, label %for.body265.lr.ph, !dbg !1028

for.body265.lr.ph:                                ; preds = %for.cond263.preheader
  call void @llvm.dbg.value(metadata !{i32** %pivotsizes}, i64 0, metadata !319), !dbg !1030
  %68 = load i32** %pivotsizes, align 8, !dbg !1030, !tbaa !483
  br label %for.body265, !dbg !1028

for.body265:                                      ; preds = %for.body265.lr.ph, %for.inc294
  %indvars.iv654 = phi i64 [ 0, %for.body265.lr.ph ], [ %indvars.iv.next655, %for.inc294 ]
  %kk.0610 = phi i32 [ 0, %for.body265.lr.ph ], [ %kk.1.lcssa, %for.inc294 ]
  %jrow.0609 = phi i32 [ 0, %for.body265.lr.ph ], [ %jrow.1.lcssa, %for.inc294 ]
  call void @llvm.dbg.value(metadata !{i32** %pivotsizes}, i64 0, metadata !319), !dbg !1030
  %arrayidx267 = getelementptr inbounds i32* %68, i64 %indvars.iv654, !dbg !1030
  %69 = load i32* %arrayidx267, align 4, !dbg !1030, !tbaa !488
  call void @llvm.dbg.value(metadata !{i32 %69}, i64 0, metadata !315), !dbg !1030
  call void @llvm.dbg.value(metadata !{i32 %69}, i64 0, metadata !318), !dbg !1030
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !311), !dbg !1032
  %cmp269598 = icmp sgt i32 %69, 0, !dbg !1032
  br i1 %cmp269598, label %for.body270, label %for.inc294, !dbg !1032

for.body270:                                      ; preds = %for.body265, %if.else287
  %size.0602 = phi i32 [ %dec, %if.else287 ], [ %69, %for.body265 ]
  %kk.1601 = phi i32 [ %add288, %if.else287 ], [ %kk.0610, %for.body265 ]
  %jrow.1600 = phi i32 [ %inc292, %if.else287 ], [ %jrow.0609, %for.body265 ]
  %ii247.0599 = phi i32 [ %inc291, %if.else287 ], [ 0, %for.body265 ]
  %cmp271 = icmp eq i32 %jrow.1600, %jcol.irow, !dbg !1034
  br i1 %cmp271, label %if.then272, label %if.else287, !dbg !1034

if.then272:                                       ; preds = %for.body270
  %sub273 = sub nsw i32 %irow.jcol, %jcol.irow, !dbg !1036
  %sub274 = add i32 %69, -1, !dbg !1036
  %sub275 = sub i32 %sub274, %ii247.0599, !dbg !1036
  %cmp276 = icmp sgt i32 %sub273, %sub275, !dbg !1036
  br i1 %cmp276, label %return, label %if.else, !dbg !1036

if.else:                                          ; preds = %if.then272
  %add279 = add nsw i32 %kk.1601, %sub273, !dbg !1038
  call void @llvm.dbg.value(metadata !{i32 %add279}, i64 0, metadata !314), !dbg !1038
  %mul280 = shl nsw i32 %add279, 1, !dbg !1040
  %idxprom281 = sext i32 %mul280 to i64, !dbg !1040
  call void @llvm.dbg.value(metadata !{double** %entries246}, i64 0, metadata !309), !dbg !1040
  %70 = load double** %entries246, align 8, !dbg !1040, !tbaa !483
  %arrayidx282 = getelementptr inbounds double* %70, i64 %idxprom281, !dbg !1040
  %71 = load double* %arrayidx282, align 8, !dbg !1040, !tbaa !778
  store double %71, double* %pReal, align 8, !dbg !1040, !tbaa !778
  %add284547 = or i32 %mul280, 1, !dbg !1041
  %idxprom285 = sext i32 %add284547 to i64, !dbg !1041
  call void @llvm.dbg.value(metadata !{double** %entries246}, i64 0, metadata !309), !dbg !1041
  %arrayidx286 = getelementptr inbounds double* %70, i64 %idxprom285, !dbg !1041
  %72 = load double* %arrayidx286, align 8, !dbg !1041, !tbaa !778
  store double %72, double* %pImag, align 8, !dbg !1041, !tbaa !778
  br label %return, !dbg !1042

if.else287:                                       ; preds = %for.body270
  %dec = add nsw i32 %size.0602, -1, !dbg !1043
  call void @llvm.dbg.value(metadata !{i32 %dec}, i64 0, metadata !318), !dbg !1043
  %add288 = add nsw i32 %size.0602, %kk.1601, !dbg !1043
  call void @llvm.dbg.value(metadata !{i32 %add288}, i64 0, metadata !314), !dbg !1043
  %inc291 = add nsw i32 %ii247.0599, 1, !dbg !1032
  call void @llvm.dbg.value(metadata !{i32 %inc291}, i64 0, metadata !311), !dbg !1032
  %inc292 = add nsw i32 %jrow.1600, 1, !dbg !1032
  call void @llvm.dbg.value(metadata !{i32 %inc292}, i64 0, metadata !313), !dbg !1032
  %cmp269 = icmp slt i32 %inc291, %69, !dbg !1032
  br i1 %cmp269, label %for.body270, label %for.inc294, !dbg !1032

for.inc294:                                       ; preds = %if.else287, %for.body265
  %kk.1.lcssa = phi i32 [ %kk.0610, %for.body265 ], [ %add288, %if.else287 ]
  %jrow.1.lcssa = phi i32 [ %jrow.0609, %for.body265 ], [ %inc292, %if.else287 ]
  %indvars.iv.next655 = add i64 %indvars.iv654, 1, !dbg !1028
  %cmp264 = icmp sgt i32 %jrow.1.lcssa, %jcol.irow, !dbg !1028
  br i1 %cmp264, label %return, label %for.body265, !dbg !1028

sw.bb297:                                         ; preds = %if.end16
  call void @llvm.dbg.declare(metadata !{double** %entries298}, metadata !322), !dbg !1045
  call void @llvm.dbg.declare(metadata !{i32* %ncol304}, metadata !328), !dbg !1046
  call void @llvm.dbg.declare(metadata !{i32* %nent305}, metadata !329), !dbg !1046
  call void @llvm.dbg.declare(metadata !{i32** %pivotsizes307}, metadata !331), !dbg !1047
  %73 = or i32 %jcol, %irow, !dbg !1048
  %74 = icmp slt i32 %73, 0, !dbg !1048
  br i1 %74, label %return, label %if.end312, !dbg !1048

if.end312:                                        ; preds = %sw.bb297
  %cmp313 = icmp sgt i32 %irow, %jcol, !dbg !1049
  %irow.jcol562 = select i1 %cmp313, i32 %irow, i32 %jcol, !dbg !1050
  %jcol.irow563 = select i1 %cmp313, i32 %jcol, i32 %irow, !dbg !1050
  %. = select i1 %cmp313, double -1.000000e+00, double 1.000000e+00, !dbg !1050
  call void @SubMtx_blockDiagonalInfo(%struct._SubMtx* %mtx, i32* %ncol304, i32* %nent305, i32** %pivotsizes307, double** %entries298) #7, !dbg !1052
  call void @llvm.dbg.value(metadata !{i32* %ncol304}, i64 0, metadata !328), !dbg !1053
  %75 = load i32* %ncol304, align 4, !dbg !1053, !tbaa !488
  %cmp317 = icmp slt i32 %jcol.irow563, %75, !dbg !1053
  %cmp319 = icmp slt i32 %irow.jcol562, %75, !dbg !1053
  %or.cond564 = and i1 %cmp317, %cmp319, !dbg !1053
  br i1 %or.cond564, label %for.cond322.preheader, label %return, !dbg !1053

for.cond322.preheader:                            ; preds = %if.end312
  %cmp323625 = icmp slt i32 %jcol.irow563, 0, !dbg !1054
  br i1 %cmp323625, label %return, label %for.body324.lr.ph, !dbg !1054

for.body324.lr.ph:                                ; preds = %for.cond322.preheader
  call void @llvm.dbg.value(metadata !{i32** %pivotsizes307}, i64 0, metadata !331), !dbg !1056
  %76 = load i32** %pivotsizes307, align 8, !dbg !1056, !tbaa !483
  br label %for.body324, !dbg !1054

for.body324:                                      ; preds = %for.body324.lr.ph, %for.inc356
  %indvars.iv659 = phi i64 [ 0, %for.body324.lr.ph ], [ %indvars.iv.next660, %for.inc356 ]
  %kk302.0628 = phi i32 [ 0, %for.body324.lr.ph ], [ %kk302.1.lcssa, %for.inc356 ]
  %jrow301.0627 = phi i32 [ 0, %for.body324.lr.ph ], [ %jrow301.1.lcssa, %for.inc356 ]
  call void @llvm.dbg.value(metadata !{i32** %pivotsizes307}, i64 0, metadata !331), !dbg !1056
  %arrayidx326 = getelementptr inbounds i32* %76, i64 %indvars.iv659, !dbg !1056
  %77 = load i32* %arrayidx326, align 4, !dbg !1056, !tbaa !488
  call void @llvm.dbg.value(metadata !{i32 %77}, i64 0, metadata !327), !dbg !1056
  call void @llvm.dbg.value(metadata !{i32 %77}, i64 0, metadata !330), !dbg !1056
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !323), !dbg !1058
  %cmp328615 = icmp sgt i32 %77, 0, !dbg !1058
  br i1 %cmp328615, label %for.body329, label %for.inc356, !dbg !1058

for.body329:                                      ; preds = %for.body324, %if.else348
  %size306.0619 = phi i32 [ %dec349, %if.else348 ], [ %77, %for.body324 ]
  %kk302.1618 = phi i32 [ %add350, %if.else348 ], [ %kk302.0628, %for.body324 ]
  %jrow301.1617 = phi i32 [ %inc354, %if.else348 ], [ %jrow301.0627, %for.body324 ]
  %ii299.0616 = phi i32 [ %inc353, %if.else348 ], [ 0, %for.body324 ]
  %cmp330 = icmp eq i32 %jrow301.1617, %jcol.irow563, !dbg !1060
  br i1 %cmp330, label %if.then331, label %if.else348, !dbg !1060

if.then331:                                       ; preds = %for.body329
  %sub332 = sub nsw i32 %irow.jcol562, %jcol.irow563, !dbg !1062
  %sub333 = add i32 %77, -1, !dbg !1062
  %sub334 = sub i32 %sub333, %ii299.0616, !dbg !1062
  %cmp335 = icmp sgt i32 %sub332, %sub334, !dbg !1062
  br i1 %cmp335, label %return, label %if.else337, !dbg !1062

if.else337:                                       ; preds = %if.then331
  %add339 = add nsw i32 %kk302.1618, %sub332, !dbg !1064
  call void @llvm.dbg.value(metadata !{i32 %add339}, i64 0, metadata !326), !dbg !1064
  %mul340 = shl nsw i32 %add339, 1, !dbg !1066
  %idxprom341 = sext i32 %mul340 to i64, !dbg !1066
  call void @llvm.dbg.value(metadata !{double** %entries298}, i64 0, metadata !322), !dbg !1066
  %78 = load double** %entries298, align 8, !dbg !1066, !tbaa !483
  %arrayidx342 = getelementptr inbounds double* %78, i64 %idxprom341, !dbg !1066
  %79 = load double* %arrayidx342, align 8, !dbg !1066, !tbaa !778
  store double %79, double* %pReal, align 8, !dbg !1066, !tbaa !778
  %add344546 = or i32 %mul340, 1, !dbg !1067
  %idxprom345 = sext i32 %add344546 to i64, !dbg !1067
  call void @llvm.dbg.value(metadata !{double** %entries298}, i64 0, metadata !322), !dbg !1067
  %arrayidx346 = getelementptr inbounds double* %78, i64 %idxprom345, !dbg !1067
  %80 = load double* %arrayidx346, align 8, !dbg !1067, !tbaa !778
  %mul347 = fmul double %., %80, !dbg !1067
  store double %mul347, double* %pImag, align 8, !dbg !1067, !tbaa !778
  br label %return, !dbg !1068

if.else348:                                       ; preds = %for.body329
  %dec349 = add nsw i32 %size306.0619, -1, !dbg !1069
  call void @llvm.dbg.value(metadata !{i32 %dec349}, i64 0, metadata !330), !dbg !1069
  %add350 = add nsw i32 %size306.0619, %kk302.1618, !dbg !1069
  call void @llvm.dbg.value(metadata !{i32 %add350}, i64 0, metadata !326), !dbg !1069
  %inc353 = add nsw i32 %ii299.0616, 1, !dbg !1058
  call void @llvm.dbg.value(metadata !{i32 %inc353}, i64 0, metadata !323), !dbg !1058
  %inc354 = add nsw i32 %jrow301.1617, 1, !dbg !1058
  call void @llvm.dbg.value(metadata !{i32 %inc354}, i64 0, metadata !325), !dbg !1058
  %cmp328 = icmp slt i32 %inc353, %77, !dbg !1058
  br i1 %cmp328, label %for.body329, label %for.inc356, !dbg !1058

for.inc356:                                       ; preds = %if.else348, %for.body324
  %kk302.1.lcssa = phi i32 [ %kk302.0628, %for.body324 ], [ %add350, %if.else348 ]
  %jrow301.1.lcssa = phi i32 [ %jrow301.0627, %for.body324 ], [ %inc354, %if.else348 ]
  %indvars.iv.next660 = add i64 %indvars.iv659, 1, !dbg !1054
  %cmp323 = icmp sgt i32 %jrow301.1.lcssa, %jcol.irow563, !dbg !1054
  br i1 %cmp323, label %return, label %for.body324, !dbg !1054

sw.default:                                       ; preds = %if.end16
  %81 = load %struct._IO_FILE** @stderr, align 8, !dbg !1071, !tbaa !483
  %call360 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %81, i8* getelementptr inbounds ([66 x i8]* @.str32, i64 0, i64 0), %struct._SubMtx* %mtx, i32 %irow, i32 %jcol, double* %pReal, double* %pImag, i32 %5) #5, !dbg !1071
  call void @exit(i32 -1) #6, !dbg !1072
  unreachable, !dbg !1072

return:                                           ; preds = %for.cond322.preheader, %for.inc356, %for.cond263.preheader, %for.inc294, %sw.bb112, %for.inc134, %for.cond91.preheader, %for.inc108, %for.cond47.preheader, %for.inc64, %lor.lhs.false20, %if.then331, %if.end312, %sw.bb297, %if.then272, %if.end254, %sw.bb245, %if.end232, %sw.bb223, %for.end204, %lor.lhs.false190, %lor.lhs.false188, %for.end161, %lor.lhs.false147, %lor.lhs.false145, %lor.lhs.false78, %lor.lhs.false39, %lor.lhs.false24, %if.else337, %if.else, %if.end237, %if.then213, %if.then169, %if.then125, %if.then99, %if.then55, %if.end27
  %retval.0 = phi i32 [ %add339, %if.else337 ], [ %add279, %if.else ], [ %irow, %if.end237 ], [ %add214, %if.then213 ], [ %add170, %if.then169 ], [ %ii114.0586, %if.then125 ], [ %jj71.0578, %if.then99 ], [ %jj.0568, %if.then55 ], [ %add, %if.end27 ], [ -1, %lor.lhs.false20 ], [ -1, %lor.lhs.false24 ], [ -1, %lor.lhs.false39 ], [ -1, %lor.lhs.false78 ], [ -1, %lor.lhs.false145 ], [ -1, %lor.lhs.false147 ], [ -1, %for.end161 ], [ -1, %lor.lhs.false188 ], [ -1, %lor.lhs.false190 ], [ -1, %for.end204 ], [ -1, %sw.bb223 ], [ -1, %if.end232 ], [ -1, %sw.bb245 ], [ -1, %if.end254 ], [ -1, %if.then272 ], [ -1, %sw.bb297 ], [ -1, %if.end312 ], [ -1, %if.then331 ], [ -1, %for.inc64 ], [ -1, %for.cond47.preheader ], [ -1, %for.inc108 ], [ -1, %for.cond91.preheader ], [ -1, %for.inc134 ], [ -1, %sw.bb112 ], [ 0, %for.cond263.preheader ], [ %kk.1.lcssa, %for.inc294 ], [ 0, %for.cond322.preheader ], [ %kk302.1.lcssa, %for.inc356 ]
  ret i32 %retval.0, !dbg !1073
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
  call void @llvm.dbg.value(metadata !{%struct._SubMtx* %mtx}, i64 0, metadata !336), !dbg !1074
  call void @llvm.dbg.value(metadata !{i32 %irow}, i64 0, metadata !337), !dbg !1075
  call void @llvm.dbg.value(metadata !{i32 %jcol}, i64 0, metadata !338), !dbg !1076
  call void @llvm.dbg.value(metadata !{double** %ppValue}, i64 0, metadata !339), !dbg !1077
  %cmp = icmp eq %struct._SubMtx* %mtx, null, !dbg !1078
  %cmp1 = icmp slt i32 %irow, 0, !dbg !1078
  %or.cond = or i1 %cmp, %cmp1, !dbg !1078
  br i1 %or.cond, label %if.then, label %lor.lhs.false2, !dbg !1078

lor.lhs.false2:                                   ; preds = %entry
  %nrow = getelementptr inbounds %struct._SubMtx* %mtx, i64 0, i32 4, !dbg !1078
  %0 = load i32* %nrow, align 4, !dbg !1078, !tbaa !488
  %cmp3 = icmp sle i32 %0, %irow, !dbg !1078
  %cmp5 = icmp slt i32 %jcol, 0, !dbg !1078
  %or.cond378 = or i1 %cmp3, %cmp5, !dbg !1078
  br i1 %or.cond378, label %if.then, label %lor.lhs.false6, !dbg !1078

lor.lhs.false6:                                   ; preds = %lor.lhs.false2
  %ncol = getelementptr inbounds %struct._SubMtx* %mtx, i64 0, i32 5, !dbg !1078
  %1 = load i32* %ncol, align 4, !dbg !1078, !tbaa !488
  %cmp7 = icmp sle i32 %1, %jcol, !dbg !1078
  %cmp9 = icmp eq double** %ppValue, null, !dbg !1078
  %or.cond379 = or i1 %cmp7, %cmp9, !dbg !1078
  br i1 %or.cond379, label %if.then, label %if.end, !dbg !1078

if.then:                                          ; preds = %lor.lhs.false6, %lor.lhs.false2, %entry
  %2 = load %struct._IO_FILE** @stderr, align 8, !dbg !1079, !tbaa !483
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([69 x i8]* @.str33, i64 0, i64 0), %struct._SubMtx* %mtx, i32 %irow, i32 %jcol, double** %ppValue) #5, !dbg !1079
  call void @exit(i32 -1) #6, !dbg !1081
  unreachable, !dbg !1081

if.end:                                           ; preds = %lor.lhs.false6
  %type = getelementptr inbounds %struct._SubMtx* %mtx, i64 0, i32 0, !dbg !1082
  %3 = load i32* %type, align 4, !dbg !1082, !tbaa !488
  %cmp10 = icmp eq i32 %3, 1, !dbg !1082
  br i1 %cmp10, label %if.end14, label %if.then11, !dbg !1082

if.then11:                                        ; preds = %if.end
  %4 = load %struct._IO_FILE** @stderr, align 8, !dbg !1083, !tbaa !483
  %call13 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([93 x i8]* @.str34, i64 0, i64 0), %struct._SubMtx* %mtx, i32 %irow, i32 %jcol, double** %ppValue, i32 %3) #5, !dbg !1083
  call void @exit(i32 -1) #6, !dbg !1085
  unreachable, !dbg !1085

if.end14:                                         ; preds = %if.end
  store double* null, double** %ppValue, align 8, !dbg !1086, !tbaa !483
  %mode = getelementptr inbounds %struct._SubMtx* %mtx, i64 0, i32 1, !dbg !1087
  %5 = load i32* %mode, align 4, !dbg !1087, !tbaa !488
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
  ], !dbg !1087

sw.bb:                                            ; preds = %if.end14, %if.end14
  call void @llvm.dbg.declare(metadata !{double** %entries}, metadata !340), !dbg !1088
  call void @llvm.dbg.declare(metadata !{i32* %inc1}, metadata !343), !dbg !1089
  call void @llvm.dbg.declare(metadata !{i32* %inc2}, metadata !344), !dbg !1089
  call void @llvm.dbg.declare(metadata !{i32* %ncol15}, metadata !345), !dbg !1089
  call void @llvm.dbg.declare(metadata !{i32* %nrow16}, metadata !346), !dbg !1089
  call void @SubMtx_denseInfo(%struct._SubMtx* %mtx, i32* %nrow16, i32* %ncol15, i32* %inc1, i32* %inc2, double** %entries) #7, !dbg !1090
  %cmp17 = icmp sgt i32 %irow, -1, !dbg !1091
  br i1 %cmp17, label %land.lhs.true, label %sw.epilog, !dbg !1091

land.lhs.true:                                    ; preds = %sw.bb
  call void @llvm.dbg.value(metadata !{i32* %nrow16}, i64 0, metadata !346), !dbg !1091
  %6 = load i32* %nrow16, align 4, !dbg !1091, !tbaa !488
  %cmp18 = icmp sgt i32 %6, %irow, !dbg !1091
  %cmp20 = icmp sgt i32 %jcol, -1, !dbg !1091
  %or.cond380 = and i1 %cmp18, %cmp20, !dbg !1091
  br i1 %or.cond380, label %land.lhs.true21, label %sw.epilog, !dbg !1091

land.lhs.true21:                                  ; preds = %land.lhs.true
  call void @llvm.dbg.value(metadata !{i32* %ncol15}, i64 0, metadata !345), !dbg !1091
  %7 = load i32* %ncol15, align 4, !dbg !1091, !tbaa !488
  %cmp22 = icmp sgt i32 %7, %jcol, !dbg !1091
  br i1 %cmp22, label %if.then23, label %sw.epilog, !dbg !1091

if.then23:                                        ; preds = %land.lhs.true21
  call void @llvm.dbg.value(metadata !{i32* %inc1}, i64 0, metadata !343), !dbg !1092
  %8 = load i32* %inc1, align 4, !dbg !1092, !tbaa !488
  %mul = mul nsw i32 %8, %irow, !dbg !1092
  call void @llvm.dbg.value(metadata !{i32* %inc2}, i64 0, metadata !344), !dbg !1092
  %9 = load i32* %inc2, align 4, !dbg !1092, !tbaa !488
  %mul24 = mul nsw i32 %9, %jcol, !dbg !1092
  %add = add nsw i32 %mul24, %mul, !dbg !1092
  call void @llvm.dbg.value(metadata !{i32 %add}, i64 0, metadata !347), !dbg !1092
  call void @llvm.dbg.value(metadata !{double** %entries}, i64 0, metadata !340), !dbg !1094
  %10 = load double** %entries, align 8, !dbg !1094, !tbaa !483
  %idx.ext = sext i32 %add to i64, !dbg !1094
  %add.ptr = getelementptr inbounds double* %10, i64 %idx.ext, !dbg !1094
  store double* %add.ptr, double** %ppValue, align 8, !dbg !1094, !tbaa !483
  br label %sw.epilog, !dbg !1095

sw.bb26:                                          ; preds = %if.end14
  call void @llvm.dbg.declare(metadata !{double** %entries27}, metadata !348), !dbg !1096
  call void @llvm.dbg.declare(metadata !{i32* %nent}, metadata !352), !dbg !1097
  call void @llvm.dbg.declare(metadata !{i32* %nrow28}, metadata !353), !dbg !1097
  call void @llvm.dbg.declare(metadata !{i32** %indices}, metadata !355), !dbg !1097
  call void @llvm.dbg.declare(metadata !{i32** %sizes}, metadata !356), !dbg !1097
  call void @SubMtx_sparseRowsInfo(%struct._SubMtx* %mtx, i32* %nrow28, i32* %nent, i32** %sizes, i32** %indices, double** %entries27) #7, !dbg !1098
  %cmp30 = icmp sgt i32 %irow, -1, !dbg !1099
  br i1 %cmp30, label %land.lhs.true31, label %sw.epilog, !dbg !1099

land.lhs.true31:                                  ; preds = %sw.bb26
  call void @llvm.dbg.value(metadata !{i32* %nrow28}, i64 0, metadata !353), !dbg !1099
  %11 = load i32* %nrow28, align 4, !dbg !1099, !tbaa !488
  %cmp32 = icmp sgt i32 %11, %irow, !dbg !1099
  br i1 %cmp32, label %for.cond.preheader, label %sw.epilog, !dbg !1099

for.cond.preheader:                               ; preds = %land.lhs.true31
  %cmp34390 = icmp sgt i32 %irow, 0, !dbg !1100
  call void @llvm.dbg.value(metadata !{i32** %sizes}, i64 0, metadata !356), !dbg !1103
  %12 = load i32** %sizes, align 8, !dbg !1103, !tbaa !483
  br i1 %cmp34390, label %for.body, label %for.cond36.preheader, !dbg !1100

for.cond.for.cond36.preheader_crit_edge:          ; preds = %for.body
  %phitmp447 = sext i32 %add35 to i64, !dbg !1100
  br label %for.cond36.preheader, !dbg !1100

for.cond36.preheader:                             ; preds = %for.cond.preheader, %for.cond.for.cond36.preheader_crit_edge
  %offset29.0.lcssa = phi i64 [ %phitmp447, %for.cond.for.cond36.preheader_crit_edge ], [ 0, %for.cond.preheader ]
  %idxprom37 = sext i32 %irow to i64, !dbg !1105
  call void @llvm.dbg.value(metadata !{i32** %sizes}, i64 0, metadata !356), !dbg !1105
  %arrayidx38386 = getelementptr inbounds i32* %12, i64 %idxprom37, !dbg !1105
  %13 = load i32* %arrayidx38386, align 4, !dbg !1105, !tbaa !488
  %cmp39387 = icmp sgt i32 %13, 0, !dbg !1105
  br i1 %cmp39387, label %for.body40.lr.ph, label %sw.epilog, !dbg !1105

for.body40.lr.ph:                                 ; preds = %for.cond36.preheader
  call void @llvm.dbg.value(metadata !{i32** %indices}, i64 0, metadata !355), !dbg !1107
  %14 = load i32** %indices, align 8, !dbg !1107, !tbaa !483
  call void @llvm.dbg.value(metadata !{i32** %sizes}, i64 0, metadata !356), !dbg !1105
  br label %for.body40, !dbg !1105

for.body:                                         ; preds = %for.cond.preheader, %for.body
  %indvars.iv426 = phi i64 [ %indvars.iv.next427, %for.body ], [ 0, %for.cond.preheader ]
  %offset29.0391 = phi i32 [ %add35, %for.body ], [ 0, %for.cond.preheader ]
  call void @llvm.dbg.value(metadata !{i32** %sizes}, i64 0, metadata !356), !dbg !1103
  %arrayidx = getelementptr inbounds i32* %12, i64 %indvars.iv426, !dbg !1103
  %15 = load i32* %arrayidx, align 4, !dbg !1103, !tbaa !488
  %add35 = add nsw i32 %15, %offset29.0391, !dbg !1103
  call void @llvm.dbg.value(metadata !{i32 %add35}, i64 0, metadata !354), !dbg !1103
  %indvars.iv.next427 = add i64 %indvars.iv426, 1, !dbg !1100
  %lftr.wideiv = trunc i64 %indvars.iv.next427 to i32, !dbg !1100
  %exitcond = icmp eq i32 %lftr.wideiv, %irow, !dbg !1100
  br i1 %exitcond, label %for.cond.for.cond36.preheader_crit_edge, label %for.body, !dbg !1100

for.body40:                                       ; preds = %for.body40.lr.ph, %for.inc48
  %indvars.iv = phi i64 [ %offset29.0.lcssa, %for.body40.lr.ph ], [ %indvars.iv.next, %for.inc48 ]
  %ii.1389 = phi i32 [ 0, %for.body40.lr.ph ], [ %inc49, %for.inc48 ]
  call void @llvm.dbg.value(metadata !{i32** %indices}, i64 0, metadata !355), !dbg !1107
  %arrayidx42 = getelementptr inbounds i32* %14, i64 %indvars.iv, !dbg !1107
  %16 = load i32* %arrayidx42, align 4, !dbg !1107, !tbaa !488
  %cmp43 = icmp eq i32 %16, %jcol, !dbg !1107
  br i1 %cmp43, label %if.then44, label %for.inc48, !dbg !1107

if.then44:                                        ; preds = %for.body40
  call void @llvm.dbg.value(metadata !{double** %entries27}, i64 0, metadata !348), !dbg !1109
  %17 = load double** %entries27, align 8, !dbg !1109, !tbaa !483
  %add.ptr46 = getelementptr inbounds double* %17, i64 %indvars.iv, !dbg !1109
  store double* %add.ptr46, double** %ppValue, align 8, !dbg !1109, !tbaa !483
  br label %sw.epilog, !dbg !1111

for.inc48:                                        ; preds = %for.body40
  %inc49 = add nsw i32 %ii.1389, 1, !dbg !1105
  call void @llvm.dbg.value(metadata !{i32 %inc49}, i64 0, metadata !350), !dbg !1105
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !1105
  call void @llvm.dbg.value(metadata !{i32** %sizes}, i64 0, metadata !356), !dbg !1105
  %cmp39 = icmp slt i32 %inc49, %13, !dbg !1105
  br i1 %cmp39, label %for.body40, label %sw.epilog, !dbg !1105

sw.bb53:                                          ; preds = %if.end14
  call void @llvm.dbg.declare(metadata !{double** %entries54}, metadata !357), !dbg !1112
  call void @llvm.dbg.declare(metadata !{i32* %nent57}, metadata !361), !dbg !1113
  call void @llvm.dbg.declare(metadata !{i32* %ncol58}, metadata !362), !dbg !1113
  call void @llvm.dbg.declare(metadata !{i32** %indices60}, metadata !364), !dbg !1113
  call void @llvm.dbg.declare(metadata !{i32** %sizes61}, metadata !365), !dbg !1113
  call void @SubMtx_sparseColumnsInfo(%struct._SubMtx* %mtx, i32* %ncol58, i32* %nent57, i32** %sizes61, i32** %indices60, double** %entries54) #7, !dbg !1114
  %cmp62 = icmp sgt i32 %jcol, -1, !dbg !1115
  br i1 %cmp62, label %land.lhs.true63, label %sw.epilog, !dbg !1115

land.lhs.true63:                                  ; preds = %sw.bb53
  call void @llvm.dbg.value(metadata !{i32* %ncol58}, i64 0, metadata !362), !dbg !1115
  %18 = load i32* %ncol58, align 4, !dbg !1115, !tbaa !488
  %cmp64 = icmp sgt i32 %18, %jcol, !dbg !1115
  br i1 %cmp64, label %for.cond66.preheader, label %sw.epilog, !dbg !1115

for.cond66.preheader:                             ; preds = %land.lhs.true63
  %cmp67398 = icmp sgt i32 %jcol, 0, !dbg !1116
  call void @llvm.dbg.value(metadata !{i32** %sizes61}, i64 0, metadata !365), !dbg !1119
  %19 = load i32** %sizes61, align 8, !dbg !1119, !tbaa !483
  br i1 %cmp67398, label %for.body68, label %for.cond75.preheader, !dbg !1116

for.cond66.for.cond75.preheader_crit_edge:        ; preds = %for.body68
  %phitmp = sext i32 %add71 to i64, !dbg !1116
  br label %for.cond75.preheader, !dbg !1116

for.cond75.preheader:                             ; preds = %for.cond66.preheader, %for.cond66.for.cond75.preheader_crit_edge
  %offset59.0.lcssa = phi i64 [ %phitmp, %for.cond66.for.cond75.preheader_crit_edge ], [ 0, %for.cond66.preheader ]
  %idxprom76 = sext i32 %jcol to i64, !dbg !1121
  call void @llvm.dbg.value(metadata !{i32** %sizes61}, i64 0, metadata !365), !dbg !1121
  %arrayidx77394 = getelementptr inbounds i32* %19, i64 %idxprom76, !dbg !1121
  %20 = load i32* %arrayidx77394, align 4, !dbg !1121, !tbaa !488
  %cmp78395 = icmp sgt i32 %20, 0, !dbg !1121
  br i1 %cmp78395, label %for.body79.lr.ph, label %sw.epilog, !dbg !1121

for.body79.lr.ph:                                 ; preds = %for.cond75.preheader
  call void @llvm.dbg.value(metadata !{i32** %indices60}, i64 0, metadata !364), !dbg !1123
  %21 = load i32** %indices60, align 8, !dbg !1123, !tbaa !483
  call void @llvm.dbg.value(metadata !{i32** %sizes61}, i64 0, metadata !365), !dbg !1121
  br label %for.body79, !dbg !1121

for.body68:                                       ; preds = %for.cond66.preheader, %for.body68
  %indvars.iv431 = phi i64 [ %indvars.iv.next432, %for.body68 ], [ 0, %for.cond66.preheader ]
  %offset59.0400 = phi i32 [ %add71, %for.body68 ], [ 0, %for.cond66.preheader ]
  call void @llvm.dbg.value(metadata !{i32** %sizes61}, i64 0, metadata !365), !dbg !1119
  %arrayidx70 = getelementptr inbounds i32* %19, i64 %indvars.iv431, !dbg !1119
  %22 = load i32* %arrayidx70, align 4, !dbg !1119, !tbaa !488
  %add71 = add nsw i32 %22, %offset59.0400, !dbg !1119
  call void @llvm.dbg.value(metadata !{i32 %add71}, i64 0, metadata !363), !dbg !1119
  %indvars.iv.next432 = add i64 %indvars.iv431, 1, !dbg !1116
  %lftr.wideiv433 = trunc i64 %indvars.iv.next432 to i32, !dbg !1116
  %exitcond434 = icmp eq i32 %lftr.wideiv433, %jcol, !dbg !1116
  br i1 %exitcond434, label %for.cond66.for.cond75.preheader_crit_edge, label %for.body68, !dbg !1116

for.body79:                                       ; preds = %for.body79.lr.ph, %for.inc87
  %indvars.iv429 = phi i64 [ %offset59.0.lcssa, %for.body79.lr.ph ], [ %indvars.iv.next430, %for.inc87 ]
  %ii55.1396 = phi i32 [ 0, %for.body79.lr.ph ], [ %inc88, %for.inc87 ]
  call void @llvm.dbg.value(metadata !{i32** %indices60}, i64 0, metadata !364), !dbg !1123
  %arrayidx81 = getelementptr inbounds i32* %21, i64 %indvars.iv429, !dbg !1123
  %23 = load i32* %arrayidx81, align 4, !dbg !1123, !tbaa !488
  %cmp82 = icmp eq i32 %23, %irow, !dbg !1123
  br i1 %cmp82, label %if.then83, label %for.inc87, !dbg !1123

if.then83:                                        ; preds = %for.body79
  call void @llvm.dbg.value(metadata !{double** %entries54}, i64 0, metadata !357), !dbg !1125
  %24 = load double** %entries54, align 8, !dbg !1125, !tbaa !483
  %add.ptr85 = getelementptr inbounds double* %24, i64 %indvars.iv429, !dbg !1125
  store double* %add.ptr85, double** %ppValue, align 8, !dbg !1125, !tbaa !483
  br label %sw.epilog, !dbg !1127

for.inc87:                                        ; preds = %for.body79
  %inc88 = add nsw i32 %ii55.1396, 1, !dbg !1121
  call void @llvm.dbg.value(metadata !{i32 %inc88}, i64 0, metadata !359), !dbg !1121
  %indvars.iv.next430 = add i64 %indvars.iv429, 1, !dbg !1121
  call void @llvm.dbg.value(metadata !{i32** %sizes61}, i64 0, metadata !365), !dbg !1121
  %cmp78 = icmp slt i32 %inc88, %20, !dbg !1121
  br i1 %cmp78, label %for.body79, label %sw.epilog, !dbg !1121

sw.bb92:                                          ; preds = %if.end14
  call void @llvm.dbg.declare(metadata !{double** %entries93}, metadata !366), !dbg !1128
  call void @llvm.dbg.declare(metadata !{i32* %nent95}, metadata !369), !dbg !1129
  call void @llvm.dbg.declare(metadata !{i32** %colids}, metadata !370), !dbg !1129
  call void @llvm.dbg.declare(metadata !{i32** %rowids}, metadata !371), !dbg !1129
  call void @SubMtx_sparseTriplesInfo(%struct._SubMtx* %mtx, i32* %nent95, i32** %rowids, i32** %colids, double** %entries93) #7, !dbg !1130
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !368), !dbg !1131
  call void @llvm.dbg.value(metadata !{i32* %nent95}, i64 0, metadata !369), !dbg !1131
  %25 = load i32* %nent95, align 4, !dbg !1131, !tbaa !488
  %cmp97403 = icmp sgt i32 %25, 0, !dbg !1131
  br i1 %cmp97403, label %for.body98.lr.ph, label %sw.epilog, !dbg !1131

for.body98.lr.ph:                                 ; preds = %sw.bb92
  call void @llvm.dbg.value(metadata !{i32** %rowids}, i64 0, metadata !371), !dbg !1133
  %26 = load i32** %rowids, align 8, !dbg !1133, !tbaa !483
  call void @llvm.dbg.value(metadata !{i32** %colids}, i64 0, metadata !370), !dbg !1133
  %27 = load i32** %colids, align 8, !dbg !1133, !tbaa !483
  call void @llvm.dbg.value(metadata !{i32* %nent95}, i64 0, metadata !369), !dbg !1131
  br label %for.body98, !dbg !1131

for.body98:                                       ; preds = %for.body98.lr.ph, %for.inc110
  %indvars.iv436 = phi i64 [ 0, %for.body98.lr.ph ], [ %indvars.iv.next437, %for.inc110 ]
  call void @llvm.dbg.value(metadata !{i32** %rowids}, i64 0, metadata !371), !dbg !1133
  %arrayidx100 = getelementptr inbounds i32* %26, i64 %indvars.iv436, !dbg !1133
  %28 = load i32* %arrayidx100, align 4, !dbg !1133, !tbaa !488
  %cmp101 = icmp eq i32 %28, %irow, !dbg !1133
  br i1 %cmp101, label %land.lhs.true102, label %for.inc110, !dbg !1133

land.lhs.true102:                                 ; preds = %for.body98
  call void @llvm.dbg.value(metadata !{i32** %colids}, i64 0, metadata !370), !dbg !1133
  %arrayidx104 = getelementptr inbounds i32* %27, i64 %indvars.iv436, !dbg !1133
  %29 = load i32* %arrayidx104, align 4, !dbg !1133, !tbaa !488
  %cmp105 = icmp eq i32 %29, %jcol, !dbg !1133
  br i1 %cmp105, label %if.then106, label %for.inc110, !dbg !1133

if.then106:                                       ; preds = %land.lhs.true102
  call void @llvm.dbg.value(metadata !{double** %entries93}, i64 0, metadata !366), !dbg !1135
  %30 = load double** %entries93, align 8, !dbg !1135, !tbaa !483
  %add.ptr108 = getelementptr inbounds double* %30, i64 %indvars.iv436, !dbg !1135
  store double* %add.ptr108, double** %ppValue, align 8, !dbg !1135, !tbaa !483
  br label %sw.epilog, !dbg !1137

for.inc110:                                       ; preds = %for.body98, %land.lhs.true102
  %indvars.iv.next437 = add i64 %indvars.iv436, 1, !dbg !1131
  call void @llvm.dbg.value(metadata !{i32* %nent95}, i64 0, metadata !369), !dbg !1131
  %31 = trunc i64 %indvars.iv.next437 to i32, !dbg !1131
  %cmp97 = icmp slt i32 %31, %25, !dbg !1131
  br i1 %cmp97, label %for.body98, label %sw.epilog, !dbg !1131

sw.bb113:                                         ; preds = %if.end14
  call void @llvm.dbg.declare(metadata !{double** %entries114}, metadata !372), !dbg !1138
  call void @llvm.dbg.declare(metadata !{i32* %nent116}, metadata !376), !dbg !1139
  call void @llvm.dbg.declare(metadata !{i32* %nrow117}, metadata !377), !dbg !1139
  call void @llvm.dbg.declare(metadata !{i32** %firstlocs}, metadata !379), !dbg !1139
  call void @llvm.dbg.declare(metadata !{i32** %sizes119}, metadata !380), !dbg !1139
  call void @SubMtx_denseSubrowsInfo(%struct._SubMtx* %mtx, i32* %nrow117, i32* %nent116, i32** %firstlocs, i32** %sizes119, double** %entries114) #7, !dbg !1140
  %cmp120 = icmp sgt i32 %irow, -1, !dbg !1141
  br i1 %cmp120, label %land.lhs.true121, label %sw.epilog, !dbg !1141

land.lhs.true121:                                 ; preds = %sw.bb113
  call void @llvm.dbg.value(metadata !{i32* %nrow117}, i64 0, metadata !377), !dbg !1141
  %32 = load i32* %nrow117, align 4, !dbg !1141, !tbaa !488
  %cmp122 = icmp sgt i32 %32, %irow, !dbg !1141
  br i1 %cmp122, label %land.lhs.true123, label %sw.epilog, !dbg !1141

land.lhs.true123:                                 ; preds = %land.lhs.true121
  %idxprom124 = sext i32 %irow to i64, !dbg !1141
  call void @llvm.dbg.value(metadata !{i32** %sizes119}, i64 0, metadata !380), !dbg !1141
  %33 = load i32** %sizes119, align 8, !dbg !1141, !tbaa !483
  %arrayidx125 = getelementptr inbounds i32* %33, i64 %idxprom124, !dbg !1141
  %34 = load i32* %arrayidx125, align 4, !dbg !1141, !tbaa !488
  %cmp126 = icmp eq i32 %34, 0, !dbg !1141
  br i1 %cmp126, label %sw.epilog, label %for.cond128.preheader, !dbg !1141

for.cond128.preheader:                            ; preds = %land.lhs.true123
  %cmp129405 = icmp sgt i32 %irow, 0, !dbg !1142
  br i1 %cmp129405, label %for.body130, label %for.end136, !dbg !1142

for.body130:                                      ; preds = %for.cond128.preheader, %for.body130
  %indvars.iv438 = phi i64 [ %indvars.iv.next439, %for.body130 ], [ 0, %for.cond128.preheader ]
  %offset118.0407 = phi i32 [ %add133, %for.body130 ], [ 0, %for.cond128.preheader ]
  call void @llvm.dbg.value(metadata !{i32** %sizes119}, i64 0, metadata !380), !dbg !1145
  %arrayidx132 = getelementptr inbounds i32* %33, i64 %indvars.iv438, !dbg !1145
  %35 = load i32* %arrayidx132, align 4, !dbg !1145, !tbaa !488
  %add133 = add nsw i32 %35, %offset118.0407, !dbg !1145
  call void @llvm.dbg.value(metadata !{i32 %add133}, i64 0, metadata !378), !dbg !1145
  %indvars.iv.next439 = add i64 %indvars.iv438, 1, !dbg !1142
  %lftr.wideiv440 = trunc i64 %indvars.iv.next439 to i32, !dbg !1142
  %exitcond441 = icmp eq i32 %lftr.wideiv440, %irow, !dbg !1142
  br i1 %exitcond441, label %for.end136, label %for.body130, !dbg !1142

for.end136:                                       ; preds = %for.body130, %for.cond128.preheader
  %offset118.0.lcssa = phi i32 [ 0, %for.cond128.preheader ], [ %add133, %for.body130 ]
  call void @llvm.dbg.value(metadata !{i32** %firstlocs}, i64 0, metadata !379), !dbg !1147
  %36 = load i32** %firstlocs, align 8, !dbg !1147, !tbaa !483
  %arrayidx138 = getelementptr inbounds i32* %36, i64 %idxprom124, !dbg !1147
  %37 = load i32* %arrayidx138, align 4, !dbg !1147, !tbaa !488
  %sub = sub nsw i32 %jcol, %37, !dbg !1147
  call void @llvm.dbg.value(metadata !{i32 %sub}, i64 0, metadata !375), !dbg !1147
  %cmp139 = icmp sgt i32 %sub, -1, !dbg !1147
  %cmp143 = icmp slt i32 %sub, %34, !dbg !1147
  %or.cond448 = and i1 %cmp139, %cmp143, !dbg !1147
  call void @llvm.dbg.value(metadata !{i32** %sizes119}, i64 0, metadata !380), !dbg !1147
  br i1 %or.cond448, label %if.then144, label %sw.epilog, !dbg !1147

if.then144:                                       ; preds = %for.end136
  %add145 = add nsw i32 %sub, %offset118.0.lcssa, !dbg !1148
  call void @llvm.dbg.value(metadata !{i32 %add145}, i64 0, metadata !378), !dbg !1148
  call void @llvm.dbg.value(metadata !{double** %entries114}, i64 0, metadata !372), !dbg !1150
  %38 = load double** %entries114, align 8, !dbg !1150, !tbaa !483
  %idx.ext146 = sext i32 %add145 to i64, !dbg !1150
  %add.ptr147 = getelementptr inbounds double* %38, i64 %idx.ext146, !dbg !1150
  store double* %add.ptr147, double** %ppValue, align 8, !dbg !1150, !tbaa !483
  br label %sw.epilog, !dbg !1151

sw.bb150:                                         ; preds = %if.end14
  call void @llvm.dbg.declare(metadata !{double** %entries151}, metadata !381), !dbg !1152
  call void @llvm.dbg.declare(metadata !{i32* %nent153}, metadata !385), !dbg !1153
  call void @llvm.dbg.declare(metadata !{i32* %ncol154}, metadata !386), !dbg !1153
  call void @llvm.dbg.declare(metadata !{i32** %firstlocs156}, metadata !388), !dbg !1153
  call void @llvm.dbg.declare(metadata !{i32** %sizes157}, metadata !389), !dbg !1153
  call void @SubMtx_denseSubcolumnsInfo(%struct._SubMtx* %mtx, i32* %ncol154, i32* %nent153, i32** %firstlocs156, i32** %sizes157, double** %entries151) #7, !dbg !1154
  %cmp158 = icmp sgt i32 %jcol, -1, !dbg !1155
  br i1 %cmp158, label %land.lhs.true159, label %sw.epilog, !dbg !1155

land.lhs.true159:                                 ; preds = %sw.bb150
  call void @llvm.dbg.value(metadata !{i32* %ncol154}, i64 0, metadata !386), !dbg !1155
  %39 = load i32* %ncol154, align 4, !dbg !1155, !tbaa !488
  %cmp160 = icmp sgt i32 %39, %jcol, !dbg !1155
  br i1 %cmp160, label %land.lhs.true161, label %sw.epilog, !dbg !1155

land.lhs.true161:                                 ; preds = %land.lhs.true159
  %idxprom162 = sext i32 %jcol to i64, !dbg !1155
  call void @llvm.dbg.value(metadata !{i32** %sizes157}, i64 0, metadata !389), !dbg !1155
  %40 = load i32** %sizes157, align 8, !dbg !1155, !tbaa !483
  %arrayidx163 = getelementptr inbounds i32* %40, i64 %idxprom162, !dbg !1155
  %41 = load i32* %arrayidx163, align 4, !dbg !1155, !tbaa !488
  %cmp164 = icmp eq i32 %41, 0, !dbg !1155
  br i1 %cmp164, label %sw.epilog, label %for.cond166.preheader, !dbg !1155

for.cond166.preheader:                            ; preds = %land.lhs.true161
  %cmp167409 = icmp sgt i32 %jcol, 0, !dbg !1156
  br i1 %cmp167409, label %for.body168.lr.ph, label %for.end174, !dbg !1156

for.body168.lr.ph:                                ; preds = %for.cond166.preheader
  call void @llvm.dbg.value(metadata !{i32** %sizes157}, i64 0, metadata !389), !dbg !1159
  %42 = mul i32 %41, %jcol, !dbg !1156
  br label %for.end174, !dbg !1156

for.end174:                                       ; preds = %for.body168.lr.ph, %for.cond166.preheader
  %offset155.0.lcssa = phi i32 [ %42, %for.body168.lr.ph ], [ 0, %for.cond166.preheader ]
  call void @llvm.dbg.value(metadata !{i32** %firstlocs156}, i64 0, metadata !388), !dbg !1161
  %43 = load i32** %firstlocs156, align 8, !dbg !1161, !tbaa !483
  %arrayidx176 = getelementptr inbounds i32* %43, i64 %idxprom162, !dbg !1161
  %44 = load i32* %arrayidx176, align 4, !dbg !1161, !tbaa !488
  %sub177 = sub nsw i32 %irow, %44, !dbg !1161
  call void @llvm.dbg.value(metadata !{i32 %sub177}, i64 0, metadata !384), !dbg !1161
  %cmp178 = icmp sgt i32 %sub177, -1, !dbg !1161
  %cmp182 = icmp slt i32 %sub177, %41, !dbg !1161
  %or.cond449 = and i1 %cmp178, %cmp182, !dbg !1161
  call void @llvm.dbg.value(metadata !{i32** %sizes157}, i64 0, metadata !389), !dbg !1161
  br i1 %or.cond449, label %if.then183, label %sw.epilog, !dbg !1161

if.then183:                                       ; preds = %for.end174
  %add184 = add nsw i32 %sub177, %offset155.0.lcssa, !dbg !1162
  call void @llvm.dbg.value(metadata !{i32 %add184}, i64 0, metadata !387), !dbg !1162
  call void @llvm.dbg.value(metadata !{double** %entries151}, i64 0, metadata !381), !dbg !1164
  %45 = load double** %entries151, align 8, !dbg !1164, !tbaa !483
  %idx.ext185 = sext i32 %add184 to i64, !dbg !1164
  %add.ptr186 = getelementptr inbounds double* %45, i64 %idx.ext185, !dbg !1164
  store double* %add.ptr186, double** %ppValue, align 8, !dbg !1164, !tbaa !483
  br label %sw.epilog, !dbg !1165

sw.bb189:                                         ; preds = %if.end14
  call void @llvm.dbg.declare(metadata !{double** %entries190}, metadata !390), !dbg !1166
  call void @llvm.dbg.declare(metadata !{i32* %ncol191}, metadata !392), !dbg !1167
  %46 = or i32 %jcol, %irow, !dbg !1168
  %47 = icmp sgt i32 %46, -1, !dbg !1168
  %cmp196 = icmp eq i32 %irow, %jcol, !dbg !1168
  %or.cond382 = and i1 %47, %cmp196, !dbg !1168
  br i1 %or.cond382, label %if.then197, label %sw.epilog, !dbg !1168

if.then197:                                       ; preds = %sw.bb189
  call void @SubMtx_diagonalInfo(%struct._SubMtx* %mtx, i32* %ncol191, double** %entries190) #7, !dbg !1169
  call void @llvm.dbg.value(metadata !{i32* %ncol191}, i64 0, metadata !392), !dbg !1171
  %48 = load i32* %ncol191, align 4, !dbg !1171, !tbaa !488
  %cmp198 = icmp sgt i32 %48, %irow, !dbg !1171
  br i1 %cmp198, label %if.then201, label %sw.epilog, !dbg !1171

if.then201:                                       ; preds = %if.then197
  call void @llvm.dbg.value(metadata !{double** %entries190}, i64 0, metadata !390), !dbg !1172
  %49 = load double** %entries190, align 8, !dbg !1172, !tbaa !483
  %idx.ext202 = sext i32 %irow to i64, !dbg !1172
  %add.ptr203 = getelementptr inbounds double* %49, i64 %idx.ext202, !dbg !1172
  store double* %add.ptr203, double** %ppValue, align 8, !dbg !1172, !tbaa !483
  br label %sw.epilog, !dbg !1174

sw.bb206:                                         ; preds = %if.end14, %if.end14
  call void @llvm.dbg.declare(metadata !{double** %entries207}, metadata !393), !dbg !1175
  call void @llvm.dbg.declare(metadata !{i32* %ncol209}, metadata !400), !dbg !1176
  call void @llvm.dbg.declare(metadata !{i32* %nent210}, metadata !401), !dbg !1176
  call void @llvm.dbg.declare(metadata !{i32** %pivotsizes}, metadata !403), !dbg !1177
  %50 = or i32 %jcol, %irow, !dbg !1178
  %51 = icmp sgt i32 %50, -1, !dbg !1178
  br i1 %51, label %if.then214, label %sw.epilog, !dbg !1178

if.then214:                                       ; preds = %sw.bb206
  call void @SubMtx_blockDiagonalInfo(%struct._SubMtx* %mtx, i32* %ncol209, i32* %nent210, i32** %pivotsizes, double** %entries207) #7, !dbg !1179
  call void @llvm.dbg.value(metadata !{i32* %ncol209}, i64 0, metadata !400), !dbg !1181
  %52 = load i32* %ncol209, align 4, !dbg !1181, !tbaa !488
  %cmp215 = icmp sgt i32 %52, %irow, !dbg !1181
  %cmp217 = icmp sgt i32 %52, %jcol, !dbg !1181
  %or.cond385 = and i1 %cmp215, %cmp217, !dbg !1181
  br i1 %or.cond385, label %for.body221.lr.ph, label %sw.epilog, !dbg !1181

for.body221.lr.ph:                                ; preds = %if.then214
  call void @llvm.dbg.value(metadata !{i32** %pivotsizes}, i64 0, metadata !403), !dbg !1182
  %53 = load i32** %pivotsizes, align 8, !dbg !1182, !tbaa !483
  br label %for.body221, !dbg !1186

for.body221:                                      ; preds = %for.body221.lr.ph, %for.inc243
  %indvars.iv444 = phi i64 [ 0, %for.body221.lr.ph ], [ %indvars.iv.next445, %for.inc243 ]
  %kk.0423 = phi i32 [ 0, %for.body221.lr.ph ], [ %kk.1.lcssa, %for.inc243 ]
  %jrow.0422 = phi i32 [ 0, %for.body221.lr.ph ], [ %jrow.1.lcssa, %for.inc243 ]
  call void @llvm.dbg.value(metadata !{i32** %pivotsizes}, i64 0, metadata !403), !dbg !1182
  %arrayidx223 = getelementptr inbounds i32* %53, i64 %indvars.iv444, !dbg !1182
  %54 = load i32* %arrayidx223, align 4, !dbg !1182, !tbaa !488
  call void @llvm.dbg.value(metadata !{i32 %54}, i64 0, metadata !399), !dbg !1182
  call void @llvm.dbg.value(metadata !{i32 %54}, i64 0, metadata !402), !dbg !1182
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !395), !dbg !1187
  %cmp225413 = icmp sgt i32 %54, 0, !dbg !1187
  br i1 %cmp225413, label %for.body226, label %for.inc243, !dbg !1187

for.body226:                                      ; preds = %for.body221, %for.inc239
  %size.0417 = phi i32 [ %size.1, %for.inc239 ], [ %54, %for.body221 ]
  %kk.1416 = phi i32 [ %kk.2, %for.inc239 ], [ %kk.0423, %for.body221 ]
  %jrow.1415 = phi i32 [ %inc241, %for.inc239 ], [ %jrow.0422, %for.body221 ]
  %ii208.0414 = phi i32 [ %inc240, %for.inc239 ], [ 0, %for.body221 ]
  %cmp227 = icmp eq i32 %jrow.1415, %irow, !dbg !1189
  br i1 %cmp227, label %if.then228, label %if.else236, !dbg !1189

if.then228:                                       ; preds = %for.body226
  %sub230 = sub nsw i32 %54, %ii208.0414, !dbg !1191
  %cmp231 = icmp slt i32 %sub230, 0, !dbg !1191
  call void @llvm.dbg.value(metadata !{i32 %kk.1416}, i64 0, metadata !398), !dbg !1193
  %.add234 = select i1 %cmp231, i32 -1, i32 %kk.1416, !dbg !1191
  br label %for.inc239, !dbg !1191

if.else236:                                       ; preds = %for.body226
  %dec = add nsw i32 %size.0417, -1, !dbg !1195
  call void @llvm.dbg.value(metadata !{i32 %dec}, i64 0, metadata !402), !dbg !1195
  %add237 = add nsw i32 %size.0417, %kk.1416, !dbg !1195
  call void @llvm.dbg.value(metadata !{i32 %add237}, i64 0, metadata !398), !dbg !1195
  br label %for.inc239

for.inc239:                                       ; preds = %if.then228, %if.else236
  %kk.2 = phi i32 [ %add237, %if.else236 ], [ %.add234, %if.then228 ]
  %size.1 = phi i32 [ %dec, %if.else236 ], [ %size.0417, %if.then228 ]
  %inc240 = add nsw i32 %ii208.0414, 1, !dbg !1187
  call void @llvm.dbg.value(metadata !{i32 %inc240}, i64 0, metadata !395), !dbg !1187
  %inc241 = add nsw i32 %jrow.1415, 1, !dbg !1187
  call void @llvm.dbg.value(metadata !{i32 %55}, i64 0, metadata !397), !dbg !1187
  %exitcond443 = icmp eq i32 %inc240, %54, !dbg !1187
  br i1 %exitcond443, label %for.cond224.for.inc243_crit_edge, label %for.body226, !dbg !1187

for.cond224.for.inc243_crit_edge:                 ; preds = %for.inc239
  %55 = add i32 %jrow.0422, %54, !dbg !1187
  br label %for.inc243, !dbg !1187

for.inc243:                                       ; preds = %for.cond224.for.inc243_crit_edge, %for.body221
  %kk.1.lcssa = phi i32 [ %kk.2, %for.cond224.for.inc243_crit_edge ], [ %kk.0423, %for.body221 ]
  %jrow.1.lcssa = phi i32 [ %55, %for.cond224.for.inc243_crit_edge ], [ %jrow.0422, %for.body221 ]
  %indvars.iv.next445 = add i64 %indvars.iv444, 1, !dbg !1186
  %cmp220 = icmp sgt i32 %jrow.1.lcssa, %irow, !dbg !1186
  br i1 %cmp220, label %for.end245, label %for.body221, !dbg !1186

for.end245:                                       ; preds = %for.inc243
  %cmp246 = icmp eq i32 %kk.1.lcssa, -1, !dbg !1197
  br i1 %cmp246, label %sw.epilog, label %if.then247, !dbg !1197

if.then247:                                       ; preds = %for.end245
  call void @llvm.dbg.value(metadata !{double** %entries207}, i64 0, metadata !393), !dbg !1198
  %56 = load double** %entries207, align 8, !dbg !1198, !tbaa !483
  %idx.ext248 = sext i32 %kk.1.lcssa to i64, !dbg !1198
  %add.ptr249 = getelementptr inbounds double* %56, i64 %idx.ext248, !dbg !1198
  store double* %add.ptr249, double** %ppValue, align 8, !dbg !1198, !tbaa !483
  br label %sw.epilog, !dbg !1200

sw.default:                                       ; preds = %if.end14
  %57 = load %struct._IO_FILE** @stderr, align 8, !dbg !1201, !tbaa !483
  %call254 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %57, i8* getelementptr inbounds ([70 x i8]* @.str35, i64 0, i64 0), %struct._SubMtx* %mtx, i32 %irow, i32 %jcol, double** %ppValue, i32 %5) #5, !dbg !1201
  call void @exit(i32 -1) #6, !dbg !1202
  unreachable, !dbg !1202

sw.epilog:                                        ; preds = %sw.bb92, %for.inc110, %for.cond75.preheader, %for.inc87, %for.cond36.preheader, %for.inc48, %land.lhs.true123, %land.lhs.true161, %for.end245, %sw.bb206, %if.then247, %if.then214, %sw.bb189, %if.then201, %if.then197, %sw.bb150, %land.lhs.true159, %for.end174, %sw.bb113, %land.lhs.true121, %for.end136, %if.then106, %sw.bb53, %land.lhs.true63, %if.then83, %sw.bb26, %land.lhs.true31, %if.then44, %sw.bb, %land.lhs.true, %land.lhs.true21, %if.then23, %if.then183, %if.then144
  ret void, !dbg !1203
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
  call void @llvm.dbg.value(metadata !{%struct._SubMtx* %mtx}, i64 0, metadata !408), !dbg !1204
  call void @llvm.dbg.value(metadata !{i32 %irow}, i64 0, metadata !409), !dbg !1205
  call void @llvm.dbg.value(metadata !{i32 %jcol}, i64 0, metadata !410), !dbg !1206
  call void @llvm.dbg.value(metadata !{double** %ppReal}, i64 0, metadata !411), !dbg !1207
  call void @llvm.dbg.value(metadata !{double** %ppImag}, i64 0, metadata !412), !dbg !1208
  %cmp = icmp eq %struct._SubMtx* %mtx, null, !dbg !1209
  %cmp1 = icmp slt i32 %irow, 0, !dbg !1209
  %or.cond = or i1 %cmp, %cmp1, !dbg !1209
  br i1 %or.cond, label %if.then, label %lor.lhs.false2, !dbg !1209

lor.lhs.false2:                                   ; preds = %entry
  %nrow = getelementptr inbounds %struct._SubMtx* %mtx, i64 0, i32 4, !dbg !1209
  %0 = load i32* %nrow, align 4, !dbg !1209, !tbaa !488
  %cmp3 = icmp sle i32 %0, %irow, !dbg !1209
  %cmp5 = icmp slt i32 %jcol, 0, !dbg !1209
  %or.cond448 = or i1 %cmp3, %cmp5, !dbg !1209
  br i1 %or.cond448, label %if.then, label %lor.lhs.false6, !dbg !1209

lor.lhs.false6:                                   ; preds = %lor.lhs.false2
  %ncol = getelementptr inbounds %struct._SubMtx* %mtx, i64 0, i32 5, !dbg !1209
  %1 = load i32* %ncol, align 4, !dbg !1209, !tbaa !488
  %cmp7 = icmp sle i32 %1, %jcol, !dbg !1209
  %cmp9 = icmp eq double** %ppReal, null, !dbg !1209
  %or.cond449 = or i1 %cmp7, %cmp9, !dbg !1209
  %cmp11 = icmp eq double** %ppImag, null, !dbg !1209
  %or.cond450 = or i1 %or.cond449, %cmp11, !dbg !1209
  br i1 %or.cond450, label %if.then, label %if.end, !dbg !1209

if.then:                                          ; preds = %lor.lhs.false6, %lor.lhs.false2, %entry
  %2 = load %struct._IO_FILE** @stderr, align 8, !dbg !1210, !tbaa !483
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([75 x i8]* @.str36, i64 0, i64 0), %struct._SubMtx* %mtx, i32 %irow, i32 %jcol, double** %ppReal, double** %ppImag) #5, !dbg !1210
  call void @exit(i32 -1) #6, !dbg !1212
  unreachable, !dbg !1212

if.end:                                           ; preds = %lor.lhs.false6
  %type = getelementptr inbounds %struct._SubMtx* %mtx, i64 0, i32 0, !dbg !1213
  %3 = load i32* %type, align 4, !dbg !1213, !tbaa !488
  %cmp12 = icmp eq i32 %3, 2, !dbg !1213
  br i1 %cmp12, label %if.end16, label %if.then13, !dbg !1213

if.then13:                                        ; preds = %if.end
  %4 = load %struct._IO_FILE** @stderr, align 8, !dbg !1214, !tbaa !483
  %call15 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([102 x i8]* @.str37, i64 0, i64 0), %struct._SubMtx* %mtx, i32 %irow, i32 %jcol, double** %ppReal, double** %ppImag, i32 %3) #5, !dbg !1214
  call void @exit(i32 -1) #6, !dbg !1216
  unreachable, !dbg !1216

if.end16:                                         ; preds = %if.end
  store double* null, double** %ppReal, align 8, !dbg !1217, !tbaa !483
  store double* null, double** %ppImag, align 8, !dbg !1218, !tbaa !483
  %mode = getelementptr inbounds %struct._SubMtx* %mtx, i64 0, i32 1, !dbg !1219
  %5 = load i32* %mode, align 4, !dbg !1219, !tbaa !488
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
  ], !dbg !1219

sw.bb:                                            ; preds = %if.end16, %if.end16
  call void @llvm.dbg.declare(metadata !{double** %entries}, metadata !413), !dbg !1220
  call void @llvm.dbg.declare(metadata !{i32* %inc1}, metadata !416), !dbg !1221
  call void @llvm.dbg.declare(metadata !{i32* %inc2}, metadata !417), !dbg !1221
  call void @llvm.dbg.declare(metadata !{i32* %ncol17}, metadata !418), !dbg !1221
  call void @llvm.dbg.declare(metadata !{i32* %nrow18}, metadata !419), !dbg !1221
  call void @SubMtx_denseInfo(%struct._SubMtx* %mtx, i32* %nrow18, i32* %ncol17, i32* %inc1, i32* %inc2, double** %entries) #7, !dbg !1222
  %cmp19 = icmp sgt i32 %irow, -1, !dbg !1223
  br i1 %cmp19, label %land.lhs.true, label %sw.epilog, !dbg !1223

land.lhs.true:                                    ; preds = %sw.bb
  call void @llvm.dbg.value(metadata !{i32* %nrow18}, i64 0, metadata !419), !dbg !1223
  %6 = load i32* %nrow18, align 4, !dbg !1223, !tbaa !488
  %cmp20 = icmp sgt i32 %6, %irow, !dbg !1223
  %cmp22 = icmp sgt i32 %jcol, -1, !dbg !1223
  %or.cond451 = and i1 %cmp20, %cmp22, !dbg !1223
  br i1 %or.cond451, label %land.lhs.true23, label %sw.epilog, !dbg !1223

land.lhs.true23:                                  ; preds = %land.lhs.true
  call void @llvm.dbg.value(metadata !{i32* %ncol17}, i64 0, metadata !418), !dbg !1223
  %7 = load i32* %ncol17, align 4, !dbg !1223, !tbaa !488
  %cmp24 = icmp sgt i32 %7, %jcol, !dbg !1223
  br i1 %cmp24, label %if.then25, label %sw.epilog, !dbg !1223

if.then25:                                        ; preds = %land.lhs.true23
  call void @llvm.dbg.value(metadata !{i32* %inc1}, i64 0, metadata !416), !dbg !1224
  %8 = load i32* %inc1, align 4, !dbg !1224, !tbaa !488
  %mul = mul nsw i32 %8, %irow, !dbg !1224
  call void @llvm.dbg.value(metadata !{i32* %inc2}, i64 0, metadata !417), !dbg !1224
  %9 = load i32* %inc2, align 4, !dbg !1224, !tbaa !488
  %mul26 = mul nsw i32 %9, %jcol, !dbg !1224
  %add = add nsw i32 %mul26, %mul, !dbg !1224
  call void @llvm.dbg.value(metadata !{i32 %add}, i64 0, metadata !420), !dbg !1224
  call void @llvm.dbg.value(metadata !{double** %entries}, i64 0, metadata !413), !dbg !1226
  %10 = load double** %entries, align 8, !dbg !1226, !tbaa !483
  %mul27 = shl nsw i32 %add, 1, !dbg !1226
  %idx.ext = sext i32 %mul27 to i64, !dbg !1226
  %add.ptr = getelementptr inbounds double* %10, i64 %idx.ext, !dbg !1226
  store double* %add.ptr, double** %ppReal, align 8, !dbg !1226, !tbaa !483
  call void @llvm.dbg.value(metadata !{double** %entries}, i64 0, metadata !413), !dbg !1227
  %add.ptr30.sum447 = or i64 %idx.ext, 1, !dbg !1227
  %add.ptr31 = getelementptr inbounds double* %10, i64 %add.ptr30.sum447, !dbg !1227
  store double* %add.ptr31, double** %ppImag, align 8, !dbg !1227, !tbaa !483
  br label %sw.epilog, !dbg !1228

sw.bb33:                                          ; preds = %if.end16
  call void @llvm.dbg.declare(metadata !{double** %entries34}, metadata !421), !dbg !1229
  call void @llvm.dbg.declare(metadata !{i32* %nent}, metadata !425), !dbg !1230
  call void @llvm.dbg.declare(metadata !{i32* %nrow35}, metadata !426), !dbg !1230
  call void @llvm.dbg.declare(metadata !{i32** %indices}, metadata !428), !dbg !1230
  call void @llvm.dbg.declare(metadata !{i32** %sizes}, metadata !429), !dbg !1230
  call void @SubMtx_sparseRowsInfo(%struct._SubMtx* %mtx, i32* %nrow35, i32* %nent, i32** %sizes, i32** %indices, double** %entries34) #7, !dbg !1231
  %cmp37 = icmp sgt i32 %irow, -1, !dbg !1232
  br i1 %cmp37, label %land.lhs.true38, label %sw.epilog, !dbg !1232

land.lhs.true38:                                  ; preds = %sw.bb33
  call void @llvm.dbg.value(metadata !{i32* %nrow35}, i64 0, metadata !426), !dbg !1232
  %11 = load i32* %nrow35, align 4, !dbg !1232, !tbaa !488
  %cmp39 = icmp sgt i32 %11, %irow, !dbg !1232
  br i1 %cmp39, label %for.cond.preheader, label %sw.epilog, !dbg !1232

for.cond.preheader:                               ; preds = %land.lhs.true38
  %cmp41462 = icmp sgt i32 %irow, 0, !dbg !1233
  call void @llvm.dbg.value(metadata !{i32** %sizes}, i64 0, metadata !429), !dbg !1236
  %12 = load i32** %sizes, align 8, !dbg !1236, !tbaa !483
  br i1 %cmp41462, label %for.body, label %for.cond43.preheader, !dbg !1233

for.cond43.preheader:                             ; preds = %for.cond.preheader, %for.body
  %offset36.0.lcssa = phi i32 [ %add42, %for.body ], [ 0, %for.cond.preheader ]
  %idxprom44 = sext i32 %irow to i64, !dbg !1238
  call void @llvm.dbg.value(metadata !{i32** %sizes}, i64 0, metadata !429), !dbg !1238
  %arrayidx45458 = getelementptr inbounds i32* %12, i64 %idxprom44, !dbg !1238
  %13 = load i32* %arrayidx45458, align 4, !dbg !1238, !tbaa !488
  %cmp46459 = icmp sgt i32 %13, 0, !dbg !1238
  br i1 %cmp46459, label %for.body47.lr.ph, label %sw.epilog, !dbg !1238

for.body47.lr.ph:                                 ; preds = %for.cond43.preheader
  call void @llvm.dbg.value(metadata !{i32** %indices}, i64 0, metadata !428), !dbg !1240
  %14 = load i32** %indices, align 8, !dbg !1240, !tbaa !483
  call void @llvm.dbg.value(metadata !{i32** %sizes}, i64 0, metadata !429), !dbg !1238
  %15 = sext i32 %offset36.0.lcssa to i64
  br label %for.body47, !dbg !1238

for.body:                                         ; preds = %for.cond.preheader, %for.body
  %indvars.iv500 = phi i64 [ %indvars.iv.next501, %for.body ], [ 0, %for.cond.preheader ]
  %offset36.0463 = phi i32 [ %add42, %for.body ], [ 0, %for.cond.preheader ]
  call void @llvm.dbg.value(metadata !{i32** %sizes}, i64 0, metadata !429), !dbg !1236
  %arrayidx = getelementptr inbounds i32* %12, i64 %indvars.iv500, !dbg !1236
  %16 = load i32* %arrayidx, align 4, !dbg !1236, !tbaa !488
  %add42 = add nsw i32 %16, %offset36.0463, !dbg !1236
  call void @llvm.dbg.value(metadata !{i32 %add42}, i64 0, metadata !427), !dbg !1236
  %indvars.iv.next501 = add i64 %indvars.iv500, 1, !dbg !1233
  %lftr.wideiv = trunc i64 %indvars.iv.next501 to i32, !dbg !1233
  %exitcond = icmp eq i32 %lftr.wideiv, %irow, !dbg !1233
  br i1 %exitcond, label %for.cond43.preheader, label %for.body, !dbg !1233

for.body47:                                       ; preds = %for.body47.lr.ph, %for.inc60
  %indvars.iv = phi i64 [ %15, %for.body47.lr.ph ], [ %indvars.iv.next, %for.inc60 ]
  %ii.1461 = phi i32 [ 0, %for.body47.lr.ph ], [ %inc61, %for.inc60 ]
  %jj.0460 = phi i32 [ %offset36.0.lcssa, %for.body47.lr.ph ], [ %inc62, %for.inc60 ]
  call void @llvm.dbg.value(metadata !{i32** %indices}, i64 0, metadata !428), !dbg !1240
  %arrayidx49 = getelementptr inbounds i32* %14, i64 %indvars.iv, !dbg !1240
  %17 = load i32* %arrayidx49, align 4, !dbg !1240, !tbaa !488
  %cmp50 = icmp eq i32 %17, %jcol, !dbg !1240
  br i1 %cmp50, label %if.then51, label %for.inc60, !dbg !1240

if.then51:                                        ; preds = %for.body47
  call void @llvm.dbg.value(metadata !{double** %entries34}, i64 0, metadata !421), !dbg !1242
  %18 = load double** %entries34, align 8, !dbg !1242, !tbaa !483
  %mul52 = shl nsw i32 %jj.0460, 1, !dbg !1242
  %idx.ext53 = sext i32 %mul52 to i64, !dbg !1242
  %add.ptr54 = getelementptr inbounds double* %18, i64 %idx.ext53, !dbg !1242
  store double* %add.ptr54, double** %ppReal, align 8, !dbg !1242, !tbaa !483
  call void @llvm.dbg.value(metadata !{double** %entries34}, i64 0, metadata !421), !dbg !1244
  %add.ptr57.sum446 = or i64 %idx.ext53, 1, !dbg !1244
  %add.ptr58 = getelementptr inbounds double* %18, i64 %add.ptr57.sum446, !dbg !1244
  store double* %add.ptr58, double** %ppImag, align 8, !dbg !1244, !tbaa !483
  br label %sw.epilog, !dbg !1245

for.inc60:                                        ; preds = %for.body47
  %inc61 = add nsw i32 %ii.1461, 1, !dbg !1238
  call void @llvm.dbg.value(metadata !{i32 %inc61}, i64 0, metadata !423), !dbg !1238
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !1238
  %inc62 = add nsw i32 %jj.0460, 1, !dbg !1238
  call void @llvm.dbg.value(metadata !{i32 %inc62}, i64 0, metadata !424), !dbg !1238
  call void @llvm.dbg.value(metadata !{i32** %sizes}, i64 0, metadata !429), !dbg !1238
  %cmp46 = icmp slt i32 %inc61, %13, !dbg !1238
  br i1 %cmp46, label %for.body47, label %sw.epilog, !dbg !1238

sw.bb65:                                          ; preds = %if.end16
  call void @llvm.dbg.declare(metadata !{double** %entries66}, metadata !430), !dbg !1246
  call void @llvm.dbg.declare(metadata !{i32* %nent69}, metadata !434), !dbg !1247
  call void @llvm.dbg.declare(metadata !{i32* %ncol70}, metadata !435), !dbg !1247
  call void @llvm.dbg.declare(metadata !{i32** %indices72}, metadata !437), !dbg !1247
  call void @llvm.dbg.declare(metadata !{i32** %sizes73}, metadata !438), !dbg !1247
  call void @SubMtx_sparseColumnsInfo(%struct._SubMtx* %mtx, i32* %ncol70, i32* %nent69, i32** %sizes73, i32** %indices72, double** %entries66) #7, !dbg !1248
  %cmp74 = icmp sgt i32 %jcol, -1, !dbg !1249
  br i1 %cmp74, label %land.lhs.true75, label %sw.epilog, !dbg !1249

land.lhs.true75:                                  ; preds = %sw.bb65
  call void @llvm.dbg.value(metadata !{i32* %ncol70}, i64 0, metadata !435), !dbg !1249
  %19 = load i32* %ncol70, align 4, !dbg !1249, !tbaa !488
  %cmp76 = icmp sgt i32 %19, %jcol, !dbg !1249
  br i1 %cmp76, label %for.cond78.preheader, label %sw.epilog, !dbg !1249

for.cond78.preheader:                             ; preds = %land.lhs.true75
  %cmp79471 = icmp sgt i32 %jcol, 0, !dbg !1250
  call void @llvm.dbg.value(metadata !{i32** %sizes73}, i64 0, metadata !438), !dbg !1253
  %20 = load i32** %sizes73, align 8, !dbg !1253, !tbaa !483
  br i1 %cmp79471, label %for.body80, label %for.cond87.preheader, !dbg !1250

for.cond87.preheader:                             ; preds = %for.cond78.preheader, %for.body80
  %offset71.0.lcssa = phi i32 [ %add83, %for.body80 ], [ 0, %for.cond78.preheader ]
  %idxprom88 = sext i32 %jcol to i64, !dbg !1255
  call void @llvm.dbg.value(metadata !{i32** %sizes73}, i64 0, metadata !438), !dbg !1255
  %arrayidx89467 = getelementptr inbounds i32* %20, i64 %idxprom88, !dbg !1255
  %21 = load i32* %arrayidx89467, align 4, !dbg !1255, !tbaa !488
  %cmp90468 = icmp sgt i32 %21, 0, !dbg !1255
  br i1 %cmp90468, label %for.body91.lr.ph, label %sw.epilog, !dbg !1255

for.body91.lr.ph:                                 ; preds = %for.cond87.preheader
  call void @llvm.dbg.value(metadata !{i32** %indices72}, i64 0, metadata !437), !dbg !1257
  %22 = load i32** %indices72, align 8, !dbg !1257, !tbaa !483
  call void @llvm.dbg.value(metadata !{i32** %sizes73}, i64 0, metadata !438), !dbg !1255
  %23 = sext i32 %offset71.0.lcssa to i64
  br label %for.body91, !dbg !1255

for.body80:                                       ; preds = %for.cond78.preheader, %for.body80
  %indvars.iv505 = phi i64 [ %indvars.iv.next506, %for.body80 ], [ 0, %for.cond78.preheader ]
  %offset71.0473 = phi i32 [ %add83, %for.body80 ], [ 0, %for.cond78.preheader ]
  call void @llvm.dbg.value(metadata !{i32** %sizes73}, i64 0, metadata !438), !dbg !1253
  %arrayidx82 = getelementptr inbounds i32* %20, i64 %indvars.iv505, !dbg !1253
  %24 = load i32* %arrayidx82, align 4, !dbg !1253, !tbaa !488
  %add83 = add nsw i32 %24, %offset71.0473, !dbg !1253
  call void @llvm.dbg.value(metadata !{i32 %add83}, i64 0, metadata !436), !dbg !1253
  %indvars.iv.next506 = add i64 %indvars.iv505, 1, !dbg !1250
  %lftr.wideiv507 = trunc i64 %indvars.iv.next506 to i32, !dbg !1250
  %exitcond508 = icmp eq i32 %lftr.wideiv507, %jcol, !dbg !1250
  br i1 %exitcond508, label %for.cond87.preheader, label %for.body80, !dbg !1250

for.body91:                                       ; preds = %for.body91.lr.ph, %for.inc104
  %indvars.iv503 = phi i64 [ %23, %for.body91.lr.ph ], [ %indvars.iv.next504, %for.inc104 ]
  %jj68.0470 = phi i32 [ %offset71.0.lcssa, %for.body91.lr.ph ], [ %inc106, %for.inc104 ]
  %ii67.1469 = phi i32 [ 0, %for.body91.lr.ph ], [ %inc105, %for.inc104 ]
  call void @llvm.dbg.value(metadata !{i32** %indices72}, i64 0, metadata !437), !dbg !1257
  %arrayidx93 = getelementptr inbounds i32* %22, i64 %indvars.iv503, !dbg !1257
  %25 = load i32* %arrayidx93, align 4, !dbg !1257, !tbaa !488
  %cmp94 = icmp eq i32 %25, %irow, !dbg !1257
  br i1 %cmp94, label %if.then95, label %for.inc104, !dbg !1257

if.then95:                                        ; preds = %for.body91
  call void @llvm.dbg.value(metadata !{double** %entries66}, i64 0, metadata !430), !dbg !1259
  %26 = load double** %entries66, align 8, !dbg !1259, !tbaa !483
  %mul96 = shl nsw i32 %jj68.0470, 1, !dbg !1259
  %idx.ext97 = sext i32 %mul96 to i64, !dbg !1259
  %add.ptr98 = getelementptr inbounds double* %26, i64 %idx.ext97, !dbg !1259
  store double* %add.ptr98, double** %ppReal, align 8, !dbg !1259, !tbaa !483
  call void @llvm.dbg.value(metadata !{double** %entries66}, i64 0, metadata !430), !dbg !1261
  %add.ptr101.sum445 = or i64 %idx.ext97, 1, !dbg !1261
  %add.ptr102 = getelementptr inbounds double* %26, i64 %add.ptr101.sum445, !dbg !1261
  store double* %add.ptr102, double** %ppImag, align 8, !dbg !1261, !tbaa !483
  br label %sw.epilog, !dbg !1262

for.inc104:                                       ; preds = %for.body91
  %inc105 = add nsw i32 %ii67.1469, 1, !dbg !1255
  call void @llvm.dbg.value(metadata !{i32 %inc105}, i64 0, metadata !432), !dbg !1255
  %indvars.iv.next504 = add i64 %indvars.iv503, 1, !dbg !1255
  %inc106 = add nsw i32 %jj68.0470, 1, !dbg !1255
  call void @llvm.dbg.value(metadata !{i32 %inc106}, i64 0, metadata !433), !dbg !1255
  call void @llvm.dbg.value(metadata !{i32** %sizes73}, i64 0, metadata !438), !dbg !1255
  %cmp90 = icmp slt i32 %inc105, %21, !dbg !1255
  br i1 %cmp90, label %for.body91, label %sw.epilog, !dbg !1255

sw.bb109:                                         ; preds = %if.end16
  call void @llvm.dbg.declare(metadata !{double** %entries110}, metadata !439), !dbg !1263
  call void @llvm.dbg.declare(metadata !{i32* %nent112}, metadata !442), !dbg !1264
  call void @llvm.dbg.declare(metadata !{i32** %colids}, metadata !443), !dbg !1264
  call void @llvm.dbg.declare(metadata !{i32** %rowids}, metadata !444), !dbg !1264
  call void @SubMtx_sparseTriplesInfo(%struct._SubMtx* %mtx, i32* %nent112, i32** %rowids, i32** %colids, double** %entries110) #7, !dbg !1265
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !441), !dbg !1266
  call void @llvm.dbg.value(metadata !{i32* %nent112}, i64 0, metadata !442), !dbg !1266
  %27 = load i32* %nent112, align 4, !dbg !1266, !tbaa !488
  %cmp114477 = icmp sgt i32 %27, 0, !dbg !1266
  br i1 %cmp114477, label %for.body115.lr.ph, label %sw.epilog, !dbg !1266

for.body115.lr.ph:                                ; preds = %sw.bb109
  call void @llvm.dbg.value(metadata !{i32** %rowids}, i64 0, metadata !444), !dbg !1268
  %28 = load i32** %rowids, align 8, !dbg !1268, !tbaa !483
  call void @llvm.dbg.value(metadata !{i32** %colids}, i64 0, metadata !443), !dbg !1268
  %29 = load i32** %colids, align 8, !dbg !1268, !tbaa !483
  call void @llvm.dbg.value(metadata !{i32* %nent112}, i64 0, metadata !442), !dbg !1266
  br label %for.body115, !dbg !1266

for.body115:                                      ; preds = %for.body115.lr.ph, %for.inc132
  %indvars.iv510 = phi i64 [ 0, %for.body115.lr.ph ], [ %indvars.iv.next511, %for.inc132 ]
  %ii111.0478 = phi i32 [ 0, %for.body115.lr.ph ], [ %inc133, %for.inc132 ]
  call void @llvm.dbg.value(metadata !{i32** %rowids}, i64 0, metadata !444), !dbg !1268
  %arrayidx117 = getelementptr inbounds i32* %28, i64 %indvars.iv510, !dbg !1268
  %30 = load i32* %arrayidx117, align 4, !dbg !1268, !tbaa !488
  %cmp118 = icmp eq i32 %30, %irow, !dbg !1268
  br i1 %cmp118, label %land.lhs.true119, label %for.inc132, !dbg !1268

land.lhs.true119:                                 ; preds = %for.body115
  call void @llvm.dbg.value(metadata !{i32** %colids}, i64 0, metadata !443), !dbg !1268
  %arrayidx121 = getelementptr inbounds i32* %29, i64 %indvars.iv510, !dbg !1268
  %31 = load i32* %arrayidx121, align 4, !dbg !1268, !tbaa !488
  %cmp122 = icmp eq i32 %31, %jcol, !dbg !1268
  br i1 %cmp122, label %if.then123, label %for.inc132, !dbg !1268

if.then123:                                       ; preds = %land.lhs.true119
  call void @llvm.dbg.value(metadata !{double** %entries110}, i64 0, metadata !439), !dbg !1270
  %32 = load double** %entries110, align 8, !dbg !1270, !tbaa !483
  %mul124 = shl nsw i32 %ii111.0478, 1, !dbg !1270
  %idx.ext125 = sext i32 %mul124 to i64, !dbg !1270
  %add.ptr126 = getelementptr inbounds double* %32, i64 %idx.ext125, !dbg !1270
  store double* %add.ptr126, double** %ppReal, align 8, !dbg !1270, !tbaa !483
  call void @llvm.dbg.value(metadata !{double** %entries110}, i64 0, metadata !439), !dbg !1272
  %add.ptr129.sum444 = or i64 %idx.ext125, 1, !dbg !1272
  %add.ptr130 = getelementptr inbounds double* %32, i64 %add.ptr129.sum444, !dbg !1272
  store double* %add.ptr130, double** %ppImag, align 8, !dbg !1272, !tbaa !483
  br label %sw.epilog, !dbg !1273

for.inc132:                                       ; preds = %for.body115, %land.lhs.true119
  %indvars.iv.next511 = add i64 %indvars.iv510, 1, !dbg !1266
  %inc133 = add nsw i32 %ii111.0478, 1, !dbg !1266
  call void @llvm.dbg.value(metadata !{i32 %inc133}, i64 0, metadata !441), !dbg !1266
  call void @llvm.dbg.value(metadata !{i32* %nent112}, i64 0, metadata !442), !dbg !1266
  %33 = trunc i64 %indvars.iv.next511 to i32, !dbg !1266
  %cmp114 = icmp slt i32 %33, %27, !dbg !1266
  br i1 %cmp114, label %for.body115, label %sw.epilog, !dbg !1266

sw.bb135:                                         ; preds = %if.end16
  call void @llvm.dbg.declare(metadata !{double** %entries136}, metadata !445), !dbg !1274
  call void @llvm.dbg.declare(metadata !{i32* %nent138}, metadata !449), !dbg !1275
  call void @llvm.dbg.declare(metadata !{i32* %nrow139}, metadata !450), !dbg !1275
  call void @llvm.dbg.declare(metadata !{i32** %firstlocs}, metadata !452), !dbg !1275
  call void @llvm.dbg.declare(metadata !{i32** %sizes141}, metadata !453), !dbg !1275
  call void @SubMtx_denseSubrowsInfo(%struct._SubMtx* %mtx, i32* %nrow139, i32* %nent138, i32** %firstlocs, i32** %sizes141, double** %entries136) #7, !dbg !1276
  %cmp142 = icmp sgt i32 %irow, -1, !dbg !1277
  br i1 %cmp142, label %land.lhs.true143, label %sw.epilog, !dbg !1277

land.lhs.true143:                                 ; preds = %sw.bb135
  call void @llvm.dbg.value(metadata !{i32* %nrow139}, i64 0, metadata !450), !dbg !1277
  %34 = load i32* %nrow139, align 4, !dbg !1277, !tbaa !488
  %cmp144 = icmp sgt i32 %34, %irow, !dbg !1277
  br i1 %cmp144, label %land.lhs.true145, label %sw.epilog, !dbg !1277

land.lhs.true145:                                 ; preds = %land.lhs.true143
  %idxprom146 = sext i32 %irow to i64, !dbg !1277
  call void @llvm.dbg.value(metadata !{i32** %sizes141}, i64 0, metadata !453), !dbg !1277
  %35 = load i32** %sizes141, align 8, !dbg !1277, !tbaa !483
  %arrayidx147 = getelementptr inbounds i32* %35, i64 %idxprom146, !dbg !1277
  %36 = load i32* %arrayidx147, align 4, !dbg !1277, !tbaa !488
  %cmp148 = icmp eq i32 %36, 0, !dbg !1277
  br i1 %cmp148, label %sw.epilog, label %for.cond150.preheader, !dbg !1277

for.cond150.preheader:                            ; preds = %land.lhs.true145
  %cmp151479 = icmp sgt i32 %irow, 0, !dbg !1278
  br i1 %cmp151479, label %for.body152, label %for.end158, !dbg !1278

for.body152:                                      ; preds = %for.cond150.preheader, %for.body152
  %indvars.iv512 = phi i64 [ %indvars.iv.next513, %for.body152 ], [ 0, %for.cond150.preheader ]
  %offset140.0481 = phi i32 [ %add155, %for.body152 ], [ 0, %for.cond150.preheader ]
  call void @llvm.dbg.value(metadata !{i32** %sizes141}, i64 0, metadata !453), !dbg !1281
  %arrayidx154 = getelementptr inbounds i32* %35, i64 %indvars.iv512, !dbg !1281
  %37 = load i32* %arrayidx154, align 4, !dbg !1281, !tbaa !488
  %add155 = add nsw i32 %37, %offset140.0481, !dbg !1281
  call void @llvm.dbg.value(metadata !{i32 %add155}, i64 0, metadata !451), !dbg !1281
  %indvars.iv.next513 = add i64 %indvars.iv512, 1, !dbg !1278
  %lftr.wideiv514 = trunc i64 %indvars.iv.next513 to i32, !dbg !1278
  %exitcond515 = icmp eq i32 %lftr.wideiv514, %irow, !dbg !1278
  br i1 %exitcond515, label %for.end158, label %for.body152, !dbg !1278

for.end158:                                       ; preds = %for.body152, %for.cond150.preheader
  %offset140.0.lcssa = phi i32 [ 0, %for.cond150.preheader ], [ %add155, %for.body152 ]
  call void @llvm.dbg.value(metadata !{i32** %firstlocs}, i64 0, metadata !452), !dbg !1283
  %38 = load i32** %firstlocs, align 8, !dbg !1283, !tbaa !483
  %arrayidx160 = getelementptr inbounds i32* %38, i64 %idxprom146, !dbg !1283
  %39 = load i32* %arrayidx160, align 4, !dbg !1283, !tbaa !488
  %sub = sub nsw i32 %jcol, %39, !dbg !1283
  call void @llvm.dbg.value(metadata !{i32 %sub}, i64 0, metadata !448), !dbg !1283
  %cmp161 = icmp sgt i32 %sub, -1, !dbg !1283
  %cmp165 = icmp slt i32 %sub, %36, !dbg !1283
  %or.cond521 = and i1 %cmp161, %cmp165, !dbg !1283
  call void @llvm.dbg.value(metadata !{i32** %sizes141}, i64 0, metadata !453), !dbg !1283
  br i1 %or.cond521, label %if.then166, label %sw.epilog, !dbg !1283

if.then166:                                       ; preds = %for.end158
  %add167 = add nsw i32 %sub, %offset140.0.lcssa, !dbg !1284
  call void @llvm.dbg.value(metadata !{i32 %add167}, i64 0, metadata !451), !dbg !1284
  call void @llvm.dbg.value(metadata !{double** %entries136}, i64 0, metadata !445), !dbg !1286
  %40 = load double** %entries136, align 8, !dbg !1286, !tbaa !483
  %mul168 = shl nsw i32 %add167, 1, !dbg !1286
  %idx.ext169 = sext i32 %mul168 to i64, !dbg !1286
  %add.ptr170 = getelementptr inbounds double* %40, i64 %idx.ext169, !dbg !1286
  store double* %add.ptr170, double** %ppReal, align 8, !dbg !1286, !tbaa !483
  call void @llvm.dbg.value(metadata !{double** %entries136}, i64 0, metadata !445), !dbg !1287
  %add.ptr173.sum443 = or i64 %idx.ext169, 1, !dbg !1287
  %add.ptr174 = getelementptr inbounds double* %40, i64 %add.ptr173.sum443, !dbg !1287
  store double* %add.ptr174, double** %ppImag, align 8, !dbg !1287, !tbaa !483
  br label %sw.epilog, !dbg !1288

sw.bb177:                                         ; preds = %if.end16
  call void @llvm.dbg.declare(metadata !{double** %entries178}, metadata !454), !dbg !1289
  call void @llvm.dbg.declare(metadata !{i32* %nent180}, metadata !458), !dbg !1290
  call void @llvm.dbg.declare(metadata !{i32* %ncol181}, metadata !459), !dbg !1290
  call void @llvm.dbg.declare(metadata !{i32** %firstlocs183}, metadata !461), !dbg !1290
  call void @llvm.dbg.declare(metadata !{i32** %sizes184}, metadata !462), !dbg !1290
  call void @SubMtx_denseSubcolumnsInfo(%struct._SubMtx* %mtx, i32* %ncol181, i32* %nent180, i32** %firstlocs183, i32** %sizes184, double** %entries178) #7, !dbg !1291
  %cmp185 = icmp sgt i32 %jcol, -1, !dbg !1292
  br i1 %cmp185, label %land.lhs.true186, label %sw.epilog, !dbg !1292

land.lhs.true186:                                 ; preds = %sw.bb177
  call void @llvm.dbg.value(metadata !{i32* %ncol181}, i64 0, metadata !459), !dbg !1292
  %41 = load i32* %ncol181, align 4, !dbg !1292, !tbaa !488
  %cmp187 = icmp sgt i32 %41, %jcol, !dbg !1292
  br i1 %cmp187, label %land.lhs.true188, label %sw.epilog, !dbg !1292

land.lhs.true188:                                 ; preds = %land.lhs.true186
  %idxprom189 = sext i32 %jcol to i64, !dbg !1292
  call void @llvm.dbg.value(metadata !{i32** %sizes184}, i64 0, metadata !462), !dbg !1292
  %42 = load i32** %sizes184, align 8, !dbg !1292, !tbaa !483
  %arrayidx190 = getelementptr inbounds i32* %42, i64 %idxprom189, !dbg !1292
  %43 = load i32* %arrayidx190, align 4, !dbg !1292, !tbaa !488
  %cmp191 = icmp eq i32 %43, 0, !dbg !1292
  br i1 %cmp191, label %sw.epilog, label %for.cond193.preheader, !dbg !1292

for.cond193.preheader:                            ; preds = %land.lhs.true188
  %cmp194483 = icmp sgt i32 %jcol, 0, !dbg !1293
  br i1 %cmp194483, label %for.body195.lr.ph, label %for.end201, !dbg !1293

for.body195.lr.ph:                                ; preds = %for.cond193.preheader
  call void @llvm.dbg.value(metadata !{i32** %sizes184}, i64 0, metadata !462), !dbg !1296
  %44 = mul i32 %43, %jcol, !dbg !1293
  br label %for.end201, !dbg !1293

for.end201:                                       ; preds = %for.body195.lr.ph, %for.cond193.preheader
  %offset182.0.lcssa = phi i32 [ %44, %for.body195.lr.ph ], [ 0, %for.cond193.preheader ]
  call void @llvm.dbg.value(metadata !{i32** %firstlocs183}, i64 0, metadata !461), !dbg !1298
  %45 = load i32** %firstlocs183, align 8, !dbg !1298, !tbaa !483
  %arrayidx203 = getelementptr inbounds i32* %45, i64 %idxprom189, !dbg !1298
  %46 = load i32* %arrayidx203, align 4, !dbg !1298, !tbaa !488
  %sub204 = sub nsw i32 %irow, %46, !dbg !1298
  call void @llvm.dbg.value(metadata !{i32 %sub204}, i64 0, metadata !457), !dbg !1298
  %cmp205 = icmp sgt i32 %sub204, -1, !dbg !1298
  %cmp209 = icmp slt i32 %sub204, %43, !dbg !1298
  %or.cond522 = and i1 %cmp205, %cmp209, !dbg !1298
  call void @llvm.dbg.value(metadata !{i32** %sizes184}, i64 0, metadata !462), !dbg !1298
  br i1 %or.cond522, label %if.then210, label %sw.epilog, !dbg !1298

if.then210:                                       ; preds = %for.end201
  %add211 = add nsw i32 %sub204, %offset182.0.lcssa, !dbg !1299
  call void @llvm.dbg.value(metadata !{i32 %add211}, i64 0, metadata !460), !dbg !1299
  call void @llvm.dbg.value(metadata !{double** %entries178}, i64 0, metadata !454), !dbg !1301
  %47 = load double** %entries178, align 8, !dbg !1301, !tbaa !483
  %mul212 = shl nsw i32 %add211, 1, !dbg !1301
  %idx.ext213 = sext i32 %mul212 to i64, !dbg !1301
  %add.ptr214 = getelementptr inbounds double* %47, i64 %idx.ext213, !dbg !1301
  store double* %add.ptr214, double** %ppReal, align 8, !dbg !1301, !tbaa !483
  call void @llvm.dbg.value(metadata !{double** %entries178}, i64 0, metadata !454), !dbg !1302
  %add.ptr217.sum442 = or i64 %idx.ext213, 1, !dbg !1302
  %add.ptr218 = getelementptr inbounds double* %47, i64 %add.ptr217.sum442, !dbg !1302
  store double* %add.ptr218, double** %ppImag, align 8, !dbg !1302, !tbaa !483
  br label %sw.epilog, !dbg !1303

sw.bb221:                                         ; preds = %if.end16
  call void @llvm.dbg.declare(metadata !{double** %entries222}, metadata !463), !dbg !1304
  call void @llvm.dbg.declare(metadata !{i32* %ncol223}, metadata !465), !dbg !1305
  %48 = or i32 %jcol, %irow, !dbg !1306
  %49 = icmp sgt i32 %48, -1, !dbg !1306
  %cmp228 = icmp eq i32 %irow, %jcol, !dbg !1306
  %or.cond453 = and i1 %49, %cmp228, !dbg !1306
  br i1 %or.cond453, label %if.then229, label %sw.epilog, !dbg !1306

if.then229:                                       ; preds = %sw.bb221
  call void @SubMtx_diagonalInfo(%struct._SubMtx* %mtx, i32* %ncol223, double** %entries222) #7, !dbg !1307
  call void @llvm.dbg.value(metadata !{i32* %ncol223}, i64 0, metadata !465), !dbg !1309
  %50 = load i32* %ncol223, align 4, !dbg !1309, !tbaa !488
  %cmp230 = icmp sgt i32 %50, %irow, !dbg !1309
  br i1 %cmp230, label %if.then233, label %sw.epilog, !dbg !1309

if.then233:                                       ; preds = %if.then229
  call void @llvm.dbg.value(metadata !{double** %entries222}, i64 0, metadata !463), !dbg !1310
  %51 = load double** %entries222, align 8, !dbg !1310, !tbaa !483
  %mul234 = shl nsw i32 %irow, 1, !dbg !1310
  %idx.ext235 = sext i32 %mul234 to i64, !dbg !1310
  %add.ptr236 = getelementptr inbounds double* %51, i64 %idx.ext235, !dbg !1310
  store double* %add.ptr236, double** %ppReal, align 8, !dbg !1310, !tbaa !483
  call void @llvm.dbg.value(metadata !{double** %entries222}, i64 0, metadata !463), !dbg !1312
  %add.ptr239.sum441 = or i64 %idx.ext235, 1, !dbg !1312
  %add.ptr240 = getelementptr inbounds double* %51, i64 %add.ptr239.sum441, !dbg !1312
  store double* %add.ptr240, double** %ppImag, align 8, !dbg !1312, !tbaa !483
  br label %sw.epilog, !dbg !1313

sw.bb243:                                         ; preds = %if.end16, %if.end16
  call void @llvm.dbg.declare(metadata !{double** %entries244}, metadata !466), !dbg !1314
  call void @llvm.dbg.declare(metadata !{i32* %ncol246}, metadata !473), !dbg !1315
  call void @llvm.dbg.declare(metadata !{i32* %nent247}, metadata !474), !dbg !1315
  call void @llvm.dbg.declare(metadata !{i32** %pivotsizes}, metadata !476), !dbg !1316
  %52 = or i32 %jcol, %irow, !dbg !1317
  %53 = icmp sgt i32 %52, -1, !dbg !1317
  br i1 %53, label %if.then251, label %sw.epilog, !dbg !1317

if.then251:                                       ; preds = %sw.bb243
  call void @SubMtx_blockDiagonalInfo(%struct._SubMtx* %mtx, i32* %ncol246, i32* %nent247, i32** %pivotsizes, double** %entries244) #7, !dbg !1318
  call void @llvm.dbg.value(metadata !{i32* %ncol246}, i64 0, metadata !473), !dbg !1320
  %54 = load i32* %ncol246, align 4, !dbg !1320, !tbaa !488
  %cmp252 = icmp sgt i32 %54, %irow, !dbg !1320
  %cmp254 = icmp sgt i32 %54, %jcol, !dbg !1320
  %or.cond456 = and i1 %cmp252, %cmp254, !dbg !1320
  br i1 %or.cond456, label %for.body258.lr.ph, label %sw.epilog, !dbg !1320

for.body258.lr.ph:                                ; preds = %if.then251
  call void @llvm.dbg.value(metadata !{i32** %pivotsizes}, i64 0, metadata !476), !dbg !1321
  %55 = load i32** %pivotsizes, align 8, !dbg !1321, !tbaa !483
  br label %for.body258, !dbg !1325

for.body258:                                      ; preds = %for.body258.lr.ph, %for.inc280
  %indvars.iv518 = phi i64 [ 0, %for.body258.lr.ph ], [ %indvars.iv.next519, %for.inc280 ]
  %kk.0497 = phi i32 [ 0, %for.body258.lr.ph ], [ %kk.1.lcssa, %for.inc280 ]
  %jrow.0496 = phi i32 [ 0, %for.body258.lr.ph ], [ %jrow.1.lcssa, %for.inc280 ]
  call void @llvm.dbg.value(metadata !{i32** %pivotsizes}, i64 0, metadata !476), !dbg !1321
  %arrayidx260 = getelementptr inbounds i32* %55, i64 %indvars.iv518, !dbg !1321
  %56 = load i32* %arrayidx260, align 4, !dbg !1321, !tbaa !488
  call void @llvm.dbg.value(metadata !{i32 %56}, i64 0, metadata !472), !dbg !1321
  call void @llvm.dbg.value(metadata !{i32 %56}, i64 0, metadata !475), !dbg !1321
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !468), !dbg !1326
  %cmp262487 = icmp sgt i32 %56, 0, !dbg !1326
  br i1 %cmp262487, label %for.body263, label %for.inc280, !dbg !1326

for.body263:                                      ; preds = %for.body258, %for.inc276
  %size.0491 = phi i32 [ %size.1, %for.inc276 ], [ %56, %for.body258 ]
  %kk.1490 = phi i32 [ %kk.2, %for.inc276 ], [ %kk.0497, %for.body258 ]
  %jrow.1489 = phi i32 [ %inc278, %for.inc276 ], [ %jrow.0496, %for.body258 ]
  %ii245.0488 = phi i32 [ %inc277, %for.inc276 ], [ 0, %for.body258 ]
  %cmp264 = icmp eq i32 %jrow.1489, %irow, !dbg !1328
  br i1 %cmp264, label %if.then265, label %if.else273, !dbg !1328

if.then265:                                       ; preds = %for.body263
  %sub267 = sub nsw i32 %56, %ii245.0488, !dbg !1330
  %cmp268 = icmp slt i32 %sub267, 0, !dbg !1330
  call void @llvm.dbg.value(metadata !{i32 %kk.1490}, i64 0, metadata !471), !dbg !1332
  %.add271 = select i1 %cmp268, i32 -1, i32 %kk.1490, !dbg !1330
  br label %for.inc276, !dbg !1330

if.else273:                                       ; preds = %for.body263
  %dec = add nsw i32 %size.0491, -1, !dbg !1334
  call void @llvm.dbg.value(metadata !{i32 %dec}, i64 0, metadata !475), !dbg !1334
  %add274 = add nsw i32 %size.0491, %kk.1490, !dbg !1334
  call void @llvm.dbg.value(metadata !{i32 %add274}, i64 0, metadata !471), !dbg !1334
  br label %for.inc276

for.inc276:                                       ; preds = %if.then265, %if.else273
  %kk.2 = phi i32 [ %add274, %if.else273 ], [ %.add271, %if.then265 ]
  %size.1 = phi i32 [ %dec, %if.else273 ], [ %size.0491, %if.then265 ]
  %inc277 = add nsw i32 %ii245.0488, 1, !dbg !1326
  call void @llvm.dbg.value(metadata !{i32 %inc277}, i64 0, metadata !468), !dbg !1326
  %inc278 = add nsw i32 %jrow.1489, 1, !dbg !1326
  call void @llvm.dbg.value(metadata !{i32 %57}, i64 0, metadata !470), !dbg !1326
  %exitcond517 = icmp eq i32 %inc277, %56, !dbg !1326
  br i1 %exitcond517, label %for.cond261.for.inc280_crit_edge, label %for.body263, !dbg !1326

for.cond261.for.inc280_crit_edge:                 ; preds = %for.inc276
  %57 = add i32 %jrow.0496, %56, !dbg !1326
  br label %for.inc280, !dbg !1326

for.inc280:                                       ; preds = %for.cond261.for.inc280_crit_edge, %for.body258
  %kk.1.lcssa = phi i32 [ %kk.2, %for.cond261.for.inc280_crit_edge ], [ %kk.0497, %for.body258 ]
  %jrow.1.lcssa = phi i32 [ %57, %for.cond261.for.inc280_crit_edge ], [ %jrow.0496, %for.body258 ]
  %indvars.iv.next519 = add i64 %indvars.iv518, 1, !dbg !1325
  %cmp257 = icmp sgt i32 %jrow.1.lcssa, %irow, !dbg !1325
  br i1 %cmp257, label %for.end282, label %for.body258, !dbg !1325

for.end282:                                       ; preds = %for.inc280
  %cmp283 = icmp eq i32 %kk.1.lcssa, -1, !dbg !1336
  br i1 %cmp283, label %sw.epilog, label %if.then284, !dbg !1336

if.then284:                                       ; preds = %for.end282
  call void @llvm.dbg.value(metadata !{double** %entries244}, i64 0, metadata !466), !dbg !1337
  %58 = load double** %entries244, align 8, !dbg !1337, !tbaa !483
  %mul285 = shl nsw i32 %kk.1.lcssa, 1, !dbg !1337
  %idx.ext286 = sext i32 %mul285 to i64, !dbg !1337
  %add.ptr287 = getelementptr inbounds double* %58, i64 %idx.ext286, !dbg !1337
  store double* %add.ptr287, double** %ppReal, align 8, !dbg !1337, !tbaa !483
  call void @llvm.dbg.value(metadata !{double** %entries244}, i64 0, metadata !466), !dbg !1339
  %add.ptr290.sum440 = or i64 %idx.ext286, 1, !dbg !1339
  %add.ptr291 = getelementptr inbounds double* %58, i64 %add.ptr290.sum440, !dbg !1339
  store double* %add.ptr291, double** %ppImag, align 8, !dbg !1339, !tbaa !483
  br label %sw.epilog, !dbg !1340

sw.default:                                       ; preds = %if.end16
  %59 = load %struct._IO_FILE** @stderr, align 8, !dbg !1341, !tbaa !483
  %call296 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %59, i8* getelementptr inbounds ([76 x i8]* @.str38, i64 0, i64 0), %struct._SubMtx* %mtx, i32 %irow, i32 %jcol, double** %ppReal, double** %ppImag, i32 %5) #5, !dbg !1341
  call void @exit(i32 -1) #6, !dbg !1342
  unreachable, !dbg !1342

sw.epilog:                                        ; preds = %sw.bb109, %for.inc132, %for.cond87.preheader, %for.inc104, %for.cond43.preheader, %for.inc60, %land.lhs.true145, %land.lhs.true188, %for.end282, %sw.bb243, %if.then284, %if.then251, %sw.bb221, %if.then233, %if.then229, %sw.bb177, %land.lhs.true186, %for.end201, %sw.bb135, %land.lhs.true143, %for.end158, %if.then123, %sw.bb65, %land.lhs.true75, %if.then95, %sw.bb33, %land.lhs.true38, %if.then51, %sw.bb, %land.lhs.true, %land.lhs.true23, %if.then25, %if.then210, %if.then166
  ret void, !dbg !1343
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #1

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind optsize }
attributes #6 = { noreturn nounwind optsize }
attributes #7 = { optsize }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_instance.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_instance.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4, metadata !41, metadata !49, metadata !57, metadata !65, metadata !70, metadata !83, metadata !96, metadata !107, metadata !119, metadata !130, metadata !141, metadata !151, metadata !163, metadata !247, metadata !332, metadata !404}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"SubMtx_ids", metadata !"SubMtx_ids", metadata !"", i32 15, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._SubMtx*, i32*, i32*)* @SubMtx_ids, null, null, metadata !37, i32 19} ; [ DW_TAG_subprogram ] [line 15] [def] [scope 19] [SubMtx_ids]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_instance.c]
!6 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{null, metadata !8, metadata !36, metadata !36}
!8 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !9} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from SubMtx]
!9 = metadata !{i32 786454, metadata !1, null, metadata !"SubMtx", i32 43, i64 0, i64 0, i64 0, i32 0, metadata !10} ; [ DW_TAG_typedef ] [SubMtx] [line 43, size 0, align 0, offset 0] [from _SubMtx]
!10 = metadata !{i32 786451, metadata !11, null, metadata !"_SubMtx", i32 44, i64 576, i64 64, i32 0, i32 0, null, metadata !12, i32 0, null, null} ; [ DW_TAG_structure_type ] [_SubMtx] [line 44, size 576, align 64, offset 0] [from ]
!11 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/../SubMtx.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!12 = metadata !{metadata !13, metadata !15, metadata !16, metadata !17, metadata !18, metadata !19, metadata !20, metadata !21, metadata !24, metadata !33}
!13 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"type", i32 45, i64 32, i64 32, i64 0, i32 0, metadata !14} ; [ DW_TAG_member ] [type] [line 45, size 32, align 32, offset 0] [from int]
!14 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!15 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"mode", i32 46, i64 32, i64 32, i64 32, i32 0, metadata !14} ; [ DW_TAG_member ] [mode] [line 46, size 32, align 32, offset 32] [from int]
!16 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"rowid", i32 47, i64 32, i64 32, i64 64, i32 0, metadata !14} ; [ DW_TAG_member ] [rowid] [line 47, size 32, align 32, offset 64] [from int]
!17 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"colid", i32 48, i64 32, i64 32, i64 96, i32 0, metadata !14} ; [ DW_TAG_member ] [colid] [line 48, size 32, align 32, offset 96] [from int]
!18 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"nrow", i32 49, i64 32, i64 32, i64 128, i32 0, metadata !14} ; [ DW_TAG_member ] [nrow] [line 49, size 32, align 32, offset 128] [from int]
!19 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"ncol", i32 50, i64 32, i64 32, i64 160, i32 0, metadata !14} ; [ DW_TAG_member ] [ncol] [line 50, size 32, align 32, offset 160] [from int]
!20 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"nent", i32 51, i64 32, i64 32, i64 192, i32 0, metadata !14} ; [ DW_TAG_member ] [nent] [line 51, size 32, align 32, offset 192] [from int]
!21 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"entries", i32 52, i64 64, i64 64, i64 256, i32 0, metadata !22} ; [ DW_TAG_member ] [entries] [line 52, size 64, align 64, offset 256] [from ]
!22 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !23} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from double]
!23 = metadata !{i32 786468, null, null, metadata !"double", i32 0, i64 64, i64 64, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [double] [line 0, size 64, align 64, offset 0, enc DW_ATE_float]
!24 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"wrkDV", i32 53, i64 192, i64 64, i64 320, i32 0, metadata !25} ; [ DW_TAG_member ] [wrkDV] [line 53, size 192, align 64, offset 320] [from DV]
!25 = metadata !{i32 786454, metadata !11, null, metadata !"DV", i32 20, i64 0, i64 0, i64 0, i32 0, metadata !26} ; [ DW_TAG_typedef ] [DV] [line 20, size 0, align 0, offset 0] [from _DV]
!26 = metadata !{i32 786451, metadata !27, null, metadata !"_DV", i32 21, i64 192, i64 64, i32 0, i32 0, null, metadata !28, i32 0, null, null} ; [ DW_TAG_structure_type ] [_DV] [line 21, size 192, align 64, offset 0] [from ]
!27 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/../../DV/DV.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!28 = metadata !{metadata !29, metadata !30, metadata !31, metadata !32}
!29 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"size", i32 22, i64 32, i64 32, i64 0, i32 0, metadata !14} ; [ DW_TAG_member ] [size] [line 22, size 32, align 32, offset 0] [from int]
!30 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"maxsize", i32 23, i64 32, i64 32, i64 32, i32 0, metadata !14} ; [ DW_TAG_member ] [maxsize] [line 23, size 32, align 32, offset 32] [from int]
!31 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"owned", i32 24, i64 32, i64 32, i64 64, i32 0, metadata !14} ; [ DW_TAG_member ] [owned] [line 24, size 32, align 32, offset 64] [from int]
!32 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"vec", i32 25, i64 64, i64 64, i64 128, i32 0, metadata !22} ; [ DW_TAG_member ] [vec] [line 25, size 64, align 64, offset 128] [from ]
!33 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"next", i32 54, i64 64, i64 64, i64 512, i32 0, metadata !34} ; [ DW_TAG_member ] [next] [line 54, size 64, align 64, offset 512] [from ]
!34 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !35} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from SubMtx]
!35 = metadata !{i32 786454, metadata !11, null, metadata !"SubMtx", i32 43, i64 0, i64 0, i64 0, i32 0, metadata !10} ; [ DW_TAG_typedef ] [SubMtx] [line 43, size 0, align 0, offset 0] [from _SubMtx]
!36 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !14} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from int]
!37 = metadata !{metadata !38, metadata !39, metadata !40}
!38 = metadata !{i32 786689, metadata !4, metadata !"mtx", metadata !5, i32 16777232, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mtx] [line 16]
!39 = metadata !{i32 786689, metadata !4, metadata !"prowid", metadata !5, i32 33554449, metadata !36, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [prowid] [line 17]
!40 = metadata !{i32 786689, metadata !4, metadata !"pcolid", metadata !5, i32 50331666, metadata !36, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [pcolid] [line 18]
!41 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"SubMtx_setIds", metadata !"SubMtx_setIds", metadata !"", i32 45, metadata !42, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._SubMtx*, i32, i32)* @SubMtx_setIds, null, null, metadata !44, i32 49} ; [ DW_TAG_subprogram ] [line 45] [def] [scope 49] [SubMtx_setIds]
!42 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !43, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!43 = metadata !{null, metadata !8, metadata !14, metadata !14}
!44 = metadata !{metadata !45, metadata !46, metadata !47, metadata !48}
!45 = metadata !{i32 786689, metadata !41, metadata !"mtx", metadata !5, i32 16777262, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mtx] [line 46]
!46 = metadata !{i32 786689, metadata !41, metadata !"rowid", metadata !5, i32 33554479, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [rowid] [line 47]
!47 = metadata !{i32 786689, metadata !41, metadata !"colid", metadata !5, i32 50331696, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [colid] [line 48]
!48 = metadata !{i32 786688, metadata !41, metadata !"buffer", metadata !5, i32 50, metadata !36, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [buffer] [line 50]
!49 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"SubMtx_dimensions", metadata !"SubMtx_dimensions", metadata !"", i32 79, metadata !50, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._SubMtx*, i32*, i32*, i32*)* @SubMtx_dimensions, null, null, metadata !52, i32 84} ; [ DW_TAG_subprogram ] [line 79] [def] [scope 84] [SubMtx_dimensions]
!50 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !51, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!51 = metadata !{null, metadata !8, metadata !36, metadata !36, metadata !36}
!52 = metadata !{metadata !53, metadata !54, metadata !55, metadata !56}
!53 = metadata !{i32 786689, metadata !49, metadata !"mtx", metadata !5, i32 16777296, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mtx] [line 80]
!54 = metadata !{i32 786689, metadata !49, metadata !"pnrow", metadata !5, i32 33554513, metadata !36, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [pnrow] [line 81]
!55 = metadata !{i32 786689, metadata !49, metadata !"pncol", metadata !5, i32 50331730, metadata !36, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [pncol] [line 82]
!56 = metadata !{i32 786689, metadata !49, metadata !"pnent", metadata !5, i32 67108947, metadata !36, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [pnent] [line 83]
!57 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"SubMtx_rowIndices", metadata !"SubMtx_rowIndices", metadata !"", i32 115, metadata !58, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._SubMtx*, i32*, i32**)* @SubMtx_rowIndices, null, null, metadata !61, i32 119} ; [ DW_TAG_subprogram ] [line 115] [def] [scope 119] [SubMtx_rowIndices]
!58 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !59, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!59 = metadata !{null, metadata !8, metadata !36, metadata !60}
!60 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !36} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!61 = metadata !{metadata !62, metadata !63, metadata !64}
!62 = metadata !{i32 786689, metadata !57, metadata !"mtx", metadata !5, i32 16777332, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mtx] [line 116]
!63 = metadata !{i32 786689, metadata !57, metadata !"pnrow", metadata !5, i32 33554549, metadata !36, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [pnrow] [line 117]
!64 = metadata !{i32 786689, metadata !57, metadata !"prowind", metadata !5, i32 50331766, metadata !60, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [prowind] [line 118]
!65 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"SubMtx_columnIndices", metadata !"SubMtx_columnIndices", metadata !"", i32 139, metadata !58, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._SubMtx*, i32*, i32**)* @SubMtx_columnIndices, null, null, metadata !66, i32 143} ; [ DW_TAG_subprogram ] [line 139] [def] [scope 143] [SubMtx_columnIndices]
!66 = metadata !{metadata !67, metadata !68, metadata !69}
!67 = metadata !{i32 786689, metadata !65, metadata !"mtx", metadata !5, i32 16777356, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mtx] [line 140]
!68 = metadata !{i32 786689, metadata !65, metadata !"pncol", metadata !5, i32 33554573, metadata !36, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [pncol] [line 141]
!69 = metadata !{i32 786689, metadata !65, metadata !"pcolind", metadata !5, i32 50331790, metadata !60, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [pcolind] [line 142]
!70 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"SubMtx_denseInfo", metadata !"SubMtx_denseInfo", metadata !"", i32 164, metadata !71, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._SubMtx*, i32*, i32*, i32*, i32*, double**)* @SubMtx_denseInfo, null, null, metadata !74, i32 171} ; [ DW_TAG_subprogram ] [line 164] [def] [scope 171] [SubMtx_denseInfo]
!71 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !72, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!72 = metadata !{null, metadata !8, metadata !36, metadata !36, metadata !36, metadata !36, metadata !73}
!73 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !22} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!74 = metadata !{metadata !75, metadata !76, metadata !77, metadata !78, metadata !79, metadata !80, metadata !81, metadata !82}
!75 = metadata !{i32 786689, metadata !70, metadata !"mtx", metadata !5, i32 16777381, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mtx] [line 165]
!76 = metadata !{i32 786689, metadata !70, metadata !"pnrow", metadata !5, i32 33554598, metadata !36, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [pnrow] [line 166]
!77 = metadata !{i32 786689, metadata !70, metadata !"pncol", metadata !5, i32 50331815, metadata !36, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [pncol] [line 167]
!78 = metadata !{i32 786689, metadata !70, metadata !"pinc1", metadata !5, i32 67109032, metadata !36, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [pinc1] [line 168]
!79 = metadata !{i32 786689, metadata !70, metadata !"pinc2", metadata !5, i32 83886249, metadata !36, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [pinc2] [line 169]
!80 = metadata !{i32 786689, metadata !70, metadata !"pentries", metadata !5, i32 100663466, metadata !73, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [pentries] [line 170]
!81 = metadata !{i32 786688, metadata !70, metadata !"dbuffer", metadata !5, i32 172, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dbuffer] [line 172]
!82 = metadata !{i32 786688, metadata !70, metadata !"nint", metadata !5, i32 173, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nint] [line 173]
!83 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"SubMtx_sparseRowsInfo", metadata !"SubMtx_sparseRowsInfo", metadata !"", i32 234, metadata !84, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._SubMtx*, i32*, i32*, i32**, i32**, double**)* @SubMtx_sparseRowsInfo, null, null, metadata !86, i32 241} ; [ DW_TAG_subprogram ] [line 234] [def] [scope 241] [SubMtx_sparseRowsInfo]
!84 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !85, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!85 = metadata !{null, metadata !8, metadata !36, metadata !36, metadata !60, metadata !60, metadata !73}
!86 = metadata !{metadata !87, metadata !88, metadata !89, metadata !90, metadata !91, metadata !92, metadata !93, metadata !94, metadata !95}
!87 = metadata !{i32 786689, metadata !83, metadata !"mtx", metadata !5, i32 16777451, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mtx] [line 235]
!88 = metadata !{i32 786689, metadata !83, metadata !"pnrow", metadata !5, i32 33554668, metadata !36, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [pnrow] [line 236]
!89 = metadata !{i32 786689, metadata !83, metadata !"pnent", metadata !5, i32 50331885, metadata !36, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [pnent] [line 237]
!90 = metadata !{i32 786689, metadata !83, metadata !"psizes", metadata !5, i32 67109102, metadata !60, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [psizes] [line 238]
!91 = metadata !{i32 786689, metadata !83, metadata !"pindices", metadata !5, i32 83886319, metadata !60, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [pindices] [line 239]
!92 = metadata !{i32 786689, metadata !83, metadata !"pentries", metadata !5, i32 100663536, metadata !73, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [pentries] [line 240]
!93 = metadata !{i32 786688, metadata !83, metadata !"dbuffer", metadata !5, i32 242, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dbuffer] [line 242]
!94 = metadata !{i32 786688, metadata !83, metadata !"nint", metadata !5, i32 243, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nint] [line 243]
!95 = metadata !{i32 786688, metadata !83, metadata !"ibuffer", metadata !5, i32 244, metadata !36, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ibuffer] [line 244]
!96 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"SubMtx_sparseColumnsInfo", metadata !"SubMtx_sparseColumnsInfo", metadata !"", i32 302, metadata !84, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._SubMtx*, i32*, i32*, i32**, i32**, double**)* @SubMtx_sparseColumnsInfo, null, null, metadata !97, i32 309} ; [ DW_TAG_subprogram ] [line 302] [def] [scope 309] [SubMtx_sparseColumnsInfo]
!97 = metadata !{metadata !98, metadata !99, metadata !100, metadata !101, metadata !102, metadata !103, metadata !104, metadata !105, metadata !106}
!98 = metadata !{i32 786689, metadata !96, metadata !"mtx", metadata !5, i32 16777519, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mtx] [line 303]
!99 = metadata !{i32 786689, metadata !96, metadata !"pncol", metadata !5, i32 33554736, metadata !36, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [pncol] [line 304]
!100 = metadata !{i32 786689, metadata !96, metadata !"pnent", metadata !5, i32 50331953, metadata !36, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [pnent] [line 305]
!101 = metadata !{i32 786689, metadata !96, metadata !"psizes", metadata !5, i32 67109170, metadata !60, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [psizes] [line 306]
!102 = metadata !{i32 786689, metadata !96, metadata !"pindices", metadata !5, i32 83886387, metadata !60, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [pindices] [line 307]
!103 = metadata !{i32 786689, metadata !96, metadata !"pentries", metadata !5, i32 100663604, metadata !73, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [pentries] [line 308]
!104 = metadata !{i32 786688, metadata !96, metadata !"dbuffer", metadata !5, i32 310, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dbuffer] [line 310]
!105 = metadata !{i32 786688, metadata !96, metadata !"nint", metadata !5, i32 311, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nint] [line 311]
!106 = metadata !{i32 786688, metadata !96, metadata !"ibuffer", metadata !5, i32 312, metadata !36, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ibuffer] [line 312]
!107 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"SubMtx_sparseTriplesInfo", metadata !"SubMtx_sparseTriplesInfo", metadata !"", i32 370, metadata !108, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._SubMtx*, i32*, i32**, i32**, double**)* @SubMtx_sparseTriplesInfo, null, null, metadata !110, i32 376} ; [ DW_TAG_subprogram ] [line 370] [def] [scope 376] [SubMtx_sparseTriplesInfo]
!108 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !109, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!109 = metadata !{null, metadata !8, metadata !36, metadata !60, metadata !60, metadata !73}
!110 = metadata !{metadata !111, metadata !112, metadata !113, metadata !114, metadata !115, metadata !116, metadata !117, metadata !118}
!111 = metadata !{i32 786689, metadata !107, metadata !"mtx", metadata !5, i32 16777587, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mtx] [line 371]
!112 = metadata !{i32 786689, metadata !107, metadata !"pnent", metadata !5, i32 33554804, metadata !36, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [pnent] [line 372]
!113 = metadata !{i32 786689, metadata !107, metadata !"prowids", metadata !5, i32 50332021, metadata !60, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [prowids] [line 373]
!114 = metadata !{i32 786689, metadata !107, metadata !"pcolids", metadata !5, i32 67109238, metadata !60, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [pcolids] [line 374]
!115 = metadata !{i32 786689, metadata !107, metadata !"pentries", metadata !5, i32 83886455, metadata !73, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [pentries] [line 375]
!116 = metadata !{i32 786688, metadata !107, metadata !"dbuffer", metadata !5, i32 377, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dbuffer] [line 377]
!117 = metadata !{i32 786688, metadata !107, metadata !"nint", metadata !5, i32 378, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nint] [line 378]
!118 = metadata !{i32 786688, metadata !107, metadata !"ibuffer", metadata !5, i32 379, metadata !36, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ibuffer] [line 379]
!119 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"SubMtx_denseSubrowsInfo", metadata !"SubMtx_denseSubrowsInfo", metadata !"", i32 437, metadata !84, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._SubMtx*, i32*, i32*, i32**, i32**, double**)* @SubMtx_denseSubrowsInfo, null, null, metadata !120, i32 444} ; [ DW_TAG_subprogram ] [line 437] [def] [scope 444] [SubMtx_denseSubrowsInfo]
!120 = metadata !{metadata !121, metadata !122, metadata !123, metadata !124, metadata !125, metadata !126, metadata !127, metadata !128, metadata !129}
!121 = metadata !{i32 786689, metadata !119, metadata !"mtx", metadata !5, i32 16777654, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mtx] [line 438]
!122 = metadata !{i32 786689, metadata !119, metadata !"pnrow", metadata !5, i32 33554871, metadata !36, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [pnrow] [line 439]
!123 = metadata !{i32 786689, metadata !119, metadata !"pnent", metadata !5, i32 50332088, metadata !36, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [pnent] [line 440]
!124 = metadata !{i32 786689, metadata !119, metadata !"pfirstlocs", metadata !5, i32 67109305, metadata !60, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [pfirstlocs] [line 441]
!125 = metadata !{i32 786689, metadata !119, metadata !"psizes", metadata !5, i32 83886522, metadata !60, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [psizes] [line 442]
!126 = metadata !{i32 786689, metadata !119, metadata !"pentries", metadata !5, i32 100663739, metadata !73, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [pentries] [line 443]
!127 = metadata !{i32 786688, metadata !119, metadata !"dbuffer", metadata !5, i32 445, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dbuffer] [line 445]
!128 = metadata !{i32 786688, metadata !119, metadata !"nint", metadata !5, i32 446, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nint] [line 446]
!129 = metadata !{i32 786688, metadata !119, metadata !"ibuffer", metadata !5, i32 447, metadata !36, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ibuffer] [line 447]
!130 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"SubMtx_denseSubcolumnsInfo", metadata !"SubMtx_denseSubcolumnsInfo", metadata !"", i32 510, metadata !84, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._SubMtx*, i32*, i32*, i32**, i32**, double**)* @SubMtx_denseSubcolumnsInfo, null, null, metadata !131, i32 517} ; [ DW_TAG_subprogram ] [line 510] [def] [scope 517] [SubMtx_denseSubcolumnsInfo]
!131 = metadata !{metadata !132, metadata !133, metadata !134, metadata !135, metadata !136, metadata !137, metadata !138, metadata !139, metadata !140}
!132 = metadata !{i32 786689, metadata !130, metadata !"mtx", metadata !5, i32 16777727, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mtx] [line 511]
!133 = metadata !{i32 786689, metadata !130, metadata !"pncol", metadata !5, i32 33554944, metadata !36, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [pncol] [line 512]
!134 = metadata !{i32 786689, metadata !130, metadata !"pnent", metadata !5, i32 50332161, metadata !36, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [pnent] [line 513]
!135 = metadata !{i32 786689, metadata !130, metadata !"pfirstlocs", metadata !5, i32 67109378, metadata !60, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [pfirstlocs] [line 514]
!136 = metadata !{i32 786689, metadata !130, metadata !"psizes", metadata !5, i32 83886595, metadata !60, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [psizes] [line 515]
!137 = metadata !{i32 786689, metadata !130, metadata !"pentries", metadata !5, i32 100663812, metadata !73, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [pentries] [line 516]
!138 = metadata !{i32 786688, metadata !130, metadata !"dbuffer", metadata !5, i32 518, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dbuffer] [line 518]
!139 = metadata !{i32 786688, metadata !130, metadata !"nint", metadata !5, i32 519, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nint] [line 519]
!140 = metadata !{i32 786688, metadata !130, metadata !"ibuffer", metadata !5, i32 520, metadata !36, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ibuffer] [line 520]
!141 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"SubMtx_diagonalInfo", metadata !"SubMtx_diagonalInfo", metadata !"", i32 577, metadata !142, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._SubMtx*, i32*, double**)* @SubMtx_diagonalInfo, null, null, metadata !144, i32 581} ; [ DW_TAG_subprogram ] [line 577] [def] [scope 581] [SubMtx_diagonalInfo]
!142 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !143, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!143 = metadata !{null, metadata !8, metadata !36, metadata !73}
!144 = metadata !{metadata !145, metadata !146, metadata !147, metadata !148, metadata !149, metadata !150}
!145 = metadata !{i32 786689, metadata !141, metadata !"mtx", metadata !5, i32 16777794, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mtx] [line 578]
!146 = metadata !{i32 786689, metadata !141, metadata !"pncol", metadata !5, i32 33555011, metadata !36, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [pncol] [line 579]
!147 = metadata !{i32 786689, metadata !141, metadata !"pentries", metadata !5, i32 50332228, metadata !73, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [pentries] [line 580]
!148 = metadata !{i32 786688, metadata !141, metadata !"dbuffer", metadata !5, i32 582, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dbuffer] [line 582]
!149 = metadata !{i32 786688, metadata !141, metadata !"nint", metadata !5, i32 583, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nint] [line 583]
!150 = metadata !{i32 786688, metadata !141, metadata !"ibuffer", metadata !5, i32 584, metadata !36, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ibuffer] [line 584]
!151 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"SubMtx_blockDiagonalInfo", metadata !"SubMtx_blockDiagonalInfo", metadata !"", i32 636, metadata !152, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._SubMtx*, i32*, i32*, i32**, double**)* @SubMtx_blockDiagonalInfo, null, null, metadata !154, i32 642} ; [ DW_TAG_subprogram ] [line 636] [def] [scope 642] [SubMtx_blockDiagonalInfo]
!152 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !153, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!153 = metadata !{null, metadata !8, metadata !36, metadata !36, metadata !60, metadata !73}
!154 = metadata !{metadata !155, metadata !156, metadata !157, metadata !158, metadata !159, metadata !160, metadata !161, metadata !162}
!155 = metadata !{i32 786689, metadata !151, metadata !"mtx", metadata !5, i32 16777853, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mtx] [line 637]
!156 = metadata !{i32 786689, metadata !151, metadata !"pncol", metadata !5, i32 33555070, metadata !36, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [pncol] [line 638]
!157 = metadata !{i32 786689, metadata !151, metadata !"pnent", metadata !5, i32 50332287, metadata !36, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [pnent] [line 639]
!158 = metadata !{i32 786689, metadata !151, metadata !"ppivotsizes", metadata !5, i32 67109504, metadata !60, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ppivotsizes] [line 640]
!159 = metadata !{i32 786689, metadata !151, metadata !"pentries", metadata !5, i32 83886721, metadata !73, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [pentries] [line 641]
!160 = metadata !{i32 786688, metadata !151, metadata !"dbuffer", metadata !5, i32 643, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dbuffer] [line 643]
!161 = metadata !{i32 786688, metadata !151, metadata !"nint", metadata !5, i32 644, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nint] [line 644]
!162 = metadata !{i32 786688, metadata !151, metadata !"ibuffer", metadata !5, i32 645, metadata !36, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ibuffer] [line 645]
!163 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"SubMtx_realEntry", metadata !"SubMtx_realEntry", metadata !"", i32 708, metadata !164, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct._SubMtx*, i32, i32, double*)* @SubMtx_realEntry, null, null, metadata !166, i32 713} ; [ DW_TAG_subprogram ] [line 708] [def] [scope 713] [SubMtx_realEntry]
!164 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !165, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!165 = metadata !{metadata !14, metadata !8, metadata !14, metadata !14, metadata !22}
!166 = metadata !{metadata !167, metadata !168, metadata !169, metadata !170, metadata !171, metadata !174, metadata !175, metadata !176, metadata !177, metadata !178, metadata !179, metadata !181, metadata !182, metadata !183, metadata !184, metadata !185, metadata !186, metadata !187, metadata !188, metadata !190, metadata !191, metadata !192, metadata !193, metadata !194, metadata !195, metadata !196, metadata !197, metadata !199, metadata !200, metadata !201, metadata !202, metadata !203, metadata !205, metadata !206, metadata !207, metadata !208, metadata !209, metadata !210, metadata !211, metadata !212, metadata !214, metadata !215, metadata !216, metadata !217, metadata !218, metadata !219, metadata !220, metadata !221, metadata !223, metadata !224, metadata !226, metadata !227, metadata !228, metadata !229, metadata !230, metadata !231, metadata !232, metadata !233, metadata !234, metadata !235, metadata !237, metadata !238, metadata !239, metadata !240, metadata !241, metadata !242, metadata !243, metadata !244, metadata !245, metadata !246}
!167 = metadata !{i32 786689, metadata !163, metadata !"mtx", metadata !5, i32 16777925, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mtx] [line 709]
!168 = metadata !{i32 786689, metadata !163, metadata !"irow", metadata !5, i32 33555142, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [irow] [line 710]
!169 = metadata !{i32 786689, metadata !163, metadata !"jcol", metadata !5, i32 50332359, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [jcol] [line 711]
!170 = metadata !{i32 786689, metadata !163, metadata !"pValue", metadata !5, i32 67109576, metadata !22, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [pValue] [line 712]
!171 = metadata !{i32 786688, metadata !172, metadata !"entries", metadata !5, i32 737, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [entries] [line 737]
!172 = metadata !{i32 786443, metadata !1, metadata !173, i32 736, i32 0, i32 43} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_instance.c]
!173 = metadata !{i32 786443, metadata !1, metadata !163, i32 734, i32 0, i32 42} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_instance.c]
!174 = metadata !{i32 786688, metadata !172, metadata !"inc1", metadata !5, i32 738, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [inc1] [line 738]
!175 = metadata !{i32 786688, metadata !172, metadata !"inc2", metadata !5, i32 738, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [inc2] [line 738]
!176 = metadata !{i32 786688, metadata !172, metadata !"ncol", metadata !5, i32 738, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ncol] [line 738]
!177 = metadata !{i32 786688, metadata !172, metadata !"nrow", metadata !5, i32 738, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nrow] [line 738]
!178 = metadata !{i32 786688, metadata !172, metadata !"offset", metadata !5, i32 738, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [offset] [line 738]
!179 = metadata !{i32 786688, metadata !180, metadata !"entries", metadata !5, i32 749, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [entries] [line 749]
!180 = metadata !{i32 786443, metadata !1, metadata !173, i32 748, i32 0, i32 45} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_instance.c]
!181 = metadata !{i32 786688, metadata !180, metadata !"ii", metadata !5, i32 750, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ii] [line 750]
!182 = metadata !{i32 786688, metadata !180, metadata !"jj", metadata !5, i32 750, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [jj] [line 750]
!183 = metadata !{i32 786688, metadata !180, metadata !"nent", metadata !5, i32 750, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nent] [line 750]
!184 = metadata !{i32 786688, metadata !180, metadata !"nrow", metadata !5, i32 750, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nrow] [line 750]
!185 = metadata !{i32 786688, metadata !180, metadata !"offset", metadata !5, i32 750, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [offset] [line 750]
!186 = metadata !{i32 786688, metadata !180, metadata !"indices", metadata !5, i32 750, metadata !36, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [indices] [line 750]
!187 = metadata !{i32 786688, metadata !180, metadata !"sizes", metadata !5, i32 750, metadata !36, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sizes] [line 750]
!188 = metadata !{i32 786688, metadata !189, metadata !"entries", metadata !5, i32 768, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [entries] [line 768]
!189 = metadata !{i32 786443, metadata !1, metadata !173, i32 767, i32 0, i32 52} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_instance.c]
!190 = metadata !{i32 786688, metadata !189, metadata !"ii", metadata !5, i32 769, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ii] [line 769]
!191 = metadata !{i32 786688, metadata !189, metadata !"jj", metadata !5, i32 769, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [jj] [line 769]
!192 = metadata !{i32 786688, metadata !189, metadata !"nent", metadata !5, i32 769, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nent] [line 769]
!193 = metadata !{i32 786688, metadata !189, metadata !"ncol", metadata !5, i32 769, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ncol] [line 769]
!194 = metadata !{i32 786688, metadata !189, metadata !"offset", metadata !5, i32 769, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [offset] [line 769]
!195 = metadata !{i32 786688, metadata !189, metadata !"indices", metadata !5, i32 769, metadata !36, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [indices] [line 769]
!196 = metadata !{i32 786688, metadata !189, metadata !"sizes", metadata !5, i32 769, metadata !36, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sizes] [line 769]
!197 = metadata !{i32 786688, metadata !198, metadata !"entries", metadata !5, i32 788, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [entries] [line 788]
!198 = metadata !{i32 786443, metadata !1, metadata !173, i32 787, i32 0, i32 59} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_instance.c]
!199 = metadata !{i32 786688, metadata !198, metadata !"ii", metadata !5, i32 789, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ii] [line 789]
!200 = metadata !{i32 786688, metadata !198, metadata !"nent", metadata !5, i32 789, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nent] [line 789]
!201 = metadata !{i32 786688, metadata !198, metadata !"colids", metadata !5, i32 789, metadata !36, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [colids] [line 789]
!202 = metadata !{i32 786688, metadata !198, metadata !"rowids", metadata !5, i32 789, metadata !36, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rowids] [line 789]
!203 = metadata !{i32 786688, metadata !204, metadata !"entries", metadata !5, i32 801, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [entries] [line 801]
!204 = metadata !{i32 786443, metadata !1, metadata !173, i32 800, i32 0, i32 63} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_instance.c]
!205 = metadata !{i32 786688, metadata !204, metadata !"ii", metadata !5, i32 802, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ii] [line 802]
!206 = metadata !{i32 786688, metadata !204, metadata !"joff", metadata !5, i32 802, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [joff] [line 802]
!207 = metadata !{i32 786688, metadata !204, metadata !"nent", metadata !5, i32 802, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nent] [line 802]
!208 = metadata !{i32 786688, metadata !204, metadata !"nrow", metadata !5, i32 802, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nrow] [line 802]
!209 = metadata !{i32 786688, metadata !204, metadata !"offset", metadata !5, i32 802, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [offset] [line 802]
!210 = metadata !{i32 786688, metadata !204, metadata !"firstlocs", metadata !5, i32 802, metadata !36, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [firstlocs] [line 802]
!211 = metadata !{i32 786688, metadata !204, metadata !"sizes", metadata !5, i32 802, metadata !36, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sizes] [line 802]
!212 = metadata !{i32 786688, metadata !213, metadata !"entries", metadata !5, i32 820, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [entries] [line 820]
!213 = metadata !{i32 786443, metadata !1, metadata !173, i32 819, i32 0, i32 68} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_instance.c]
!214 = metadata !{i32 786688, metadata !213, metadata !"ii", metadata !5, i32 821, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ii] [line 821]
!215 = metadata !{i32 786688, metadata !213, metadata !"ioff", metadata !5, i32 821, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ioff] [line 821]
!216 = metadata !{i32 786688, metadata !213, metadata !"nent", metadata !5, i32 821, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nent] [line 821]
!217 = metadata !{i32 786688, metadata !213, metadata !"ncol", metadata !5, i32 821, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ncol] [line 821]
!218 = metadata !{i32 786688, metadata !213, metadata !"offset", metadata !5, i32 821, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [offset] [line 821]
!219 = metadata !{i32 786688, metadata !213, metadata !"firstlocs", metadata !5, i32 821, metadata !36, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [firstlocs] [line 821]
!220 = metadata !{i32 786688, metadata !213, metadata !"sizes", metadata !5, i32 821, metadata !36, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sizes] [line 821]
!221 = metadata !{i32 786688, metadata !222, metadata !"entries", metadata !5, i32 839, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [entries] [line 839]
!222 = metadata !{i32 786443, metadata !1, metadata !173, i32 838, i32 0, i32 73} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_instance.c]
!223 = metadata !{i32 786688, metadata !222, metadata !"ncol", metadata !5, i32 840, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ncol] [line 840]
!224 = metadata !{i32 786688, metadata !225, metadata !"entries", metadata !5, i32 853, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [entries] [line 853]
!225 = metadata !{i32 786443, metadata !1, metadata !173, i32 852, i32 0, i32 76} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_instance.c]
!226 = metadata !{i32 786688, metadata !225, metadata !"ii", metadata !5, i32 854, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ii] [line 854]
!227 = metadata !{i32 786688, metadata !225, metadata !"ipivot", metadata !5, i32 854, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ipivot] [line 854]
!228 = metadata !{i32 786688, metadata !225, metadata !"jrow", metadata !5, i32 854, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [jrow] [line 854]
!229 = metadata !{i32 786688, metadata !225, metadata !"kk", metadata !5, i32 854, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [kk] [line 854]
!230 = metadata !{i32 786688, metadata !225, metadata !"m", metadata !5, i32 854, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [m] [line 854]
!231 = metadata !{i32 786688, metadata !225, metadata !"ncol", metadata !5, i32 854, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ncol] [line 854]
!232 = metadata !{i32 786688, metadata !225, metadata !"nent", metadata !5, i32 854, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nent] [line 854]
!233 = metadata !{i32 786688, metadata !225, metadata !"size", metadata !5, i32 854, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [size] [line 854]
!234 = metadata !{i32 786688, metadata !225, metadata !"pivotsizes", metadata !5, i32 855, metadata !36, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [pivotsizes] [line 855]
!235 = metadata !{i32 786688, metadata !236, metadata !"sign", metadata !5, i32 888, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sign] [line 888]
!236 = metadata !{i32 786443, metadata !1, metadata !173, i32 887, i32 0, i32 88} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_instance.c]
!237 = metadata !{i32 786688, metadata !236, metadata !"entries", metadata !5, i32 889, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [entries] [line 889]
!238 = metadata !{i32 786688, metadata !236, metadata !"ii", metadata !5, i32 890, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ii] [line 890]
!239 = metadata !{i32 786688, metadata !236, metadata !"ipivot", metadata !5, i32 890, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ipivot] [line 890]
!240 = metadata !{i32 786688, metadata !236, metadata !"jrow", metadata !5, i32 890, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [jrow] [line 890]
!241 = metadata !{i32 786688, metadata !236, metadata !"kk", metadata !5, i32 890, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [kk] [line 890]
!242 = metadata !{i32 786688, metadata !236, metadata !"m", metadata !5, i32 890, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [m] [line 890]
!243 = metadata !{i32 786688, metadata !236, metadata !"ncol", metadata !5, i32 890, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ncol] [line 890]
!244 = metadata !{i32 786688, metadata !236, metadata !"nent", metadata !5, i32 890, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nent] [line 890]
!245 = metadata !{i32 786688, metadata !236, metadata !"size", metadata !5, i32 890, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [size] [line 890]
!246 = metadata !{i32 786688, metadata !236, metadata !"pivotsizes", metadata !5, i32 891, metadata !36, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [pivotsizes] [line 891]
!247 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"SubMtx_complexEntry", metadata !"SubMtx_complexEntry", metadata !"", i32 953, metadata !248, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct._SubMtx*, i32, i32, double*, double*)* @SubMtx_complexEntry, null, null, metadata !250, i32 959} ; [ DW_TAG_subprogram ] [line 953] [def] [scope 959] [SubMtx_complexEntry]
!248 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !249, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!249 = metadata !{metadata !14, metadata !8, metadata !14, metadata !14, metadata !22, metadata !22}
!250 = metadata !{metadata !251, metadata !252, metadata !253, metadata !254, metadata !255, metadata !256, metadata !259, metadata !260, metadata !261, metadata !262, metadata !263, metadata !264, metadata !266, metadata !267, metadata !268, metadata !269, metadata !270, metadata !271, metadata !272, metadata !273, metadata !275, metadata !276, metadata !277, metadata !278, metadata !279, metadata !280, metadata !281, metadata !282, metadata !284, metadata !285, metadata !286, metadata !287, metadata !288, metadata !290, metadata !291, metadata !292, metadata !293, metadata !294, metadata !295, metadata !296, metadata !297, metadata !299, metadata !300, metadata !301, metadata !302, metadata !303, metadata !304, metadata !305, metadata !306, metadata !308, metadata !309, metadata !311, metadata !312, metadata !313, metadata !314, metadata !315, metadata !316, metadata !317, metadata !318, metadata !319, metadata !320, metadata !322, metadata !323, metadata !324, metadata !325, metadata !326, metadata !327, metadata !328, metadata !329, metadata !330, metadata !331}
!251 = metadata !{i32 786689, metadata !247, metadata !"mtx", metadata !5, i32 16778170, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mtx] [line 954]
!252 = metadata !{i32 786689, metadata !247, metadata !"irow", metadata !5, i32 33555387, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [irow] [line 955]
!253 = metadata !{i32 786689, metadata !247, metadata !"jcol", metadata !5, i32 50332604, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [jcol] [line 956]
!254 = metadata !{i32 786689, metadata !247, metadata !"pReal", metadata !5, i32 67109821, metadata !22, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [pReal] [line 957]
!255 = metadata !{i32 786689, metadata !247, metadata !"pImag", metadata !5, i32 83887038, metadata !22, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [pImag] [line 958]
!256 = metadata !{i32 786688, metadata !257, metadata !"entries", metadata !5, i32 983, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [entries] [line 983]
!257 = metadata !{i32 786443, metadata !1, metadata !258, i32 982, i32 0, i32 104} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_instance.c]
!258 = metadata !{i32 786443, metadata !1, metadata !247, i32 980, i32 0, i32 103} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_instance.c]
!259 = metadata !{i32 786688, metadata !257, metadata !"inc1", metadata !5, i32 984, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [inc1] [line 984]
!260 = metadata !{i32 786688, metadata !257, metadata !"inc2", metadata !5, i32 984, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [inc2] [line 984]
!261 = metadata !{i32 786688, metadata !257, metadata !"ncol", metadata !5, i32 984, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ncol] [line 984]
!262 = metadata !{i32 786688, metadata !257, metadata !"nrow", metadata !5, i32 984, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nrow] [line 984]
!263 = metadata !{i32 786688, metadata !257, metadata !"offset", metadata !5, i32 984, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [offset] [line 984]
!264 = metadata !{i32 786688, metadata !265, metadata !"entries", metadata !5, i32 996, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [entries] [line 996]
!265 = metadata !{i32 786443, metadata !1, metadata !258, i32 995, i32 0, i32 106} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_instance.c]
!266 = metadata !{i32 786688, metadata !265, metadata !"ii", metadata !5, i32 997, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ii] [line 997]
!267 = metadata !{i32 786688, metadata !265, metadata !"jj", metadata !5, i32 997, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [jj] [line 997]
!268 = metadata !{i32 786688, metadata !265, metadata !"nent", metadata !5, i32 997, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nent] [line 997]
!269 = metadata !{i32 786688, metadata !265, metadata !"nrow", metadata !5, i32 997, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nrow] [line 997]
!270 = metadata !{i32 786688, metadata !265, metadata !"offset", metadata !5, i32 997, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [offset] [line 997]
!271 = metadata !{i32 786688, metadata !265, metadata !"indices", metadata !5, i32 997, metadata !36, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [indices] [line 997]
!272 = metadata !{i32 786688, metadata !265, metadata !"sizes", metadata !5, i32 997, metadata !36, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sizes] [line 997]
!273 = metadata !{i32 786688, metadata !274, metadata !"entries", metadata !5, i32 1016, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [entries] [line 1016]
!274 = metadata !{i32 786443, metadata !1, metadata !258, i32 1015, i32 0, i32 113} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_instance.c]
!275 = metadata !{i32 786688, metadata !274, metadata !"ii", metadata !5, i32 1017, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ii] [line 1017]
!276 = metadata !{i32 786688, metadata !274, metadata !"jj", metadata !5, i32 1017, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [jj] [line 1017]
!277 = metadata !{i32 786688, metadata !274, metadata !"nent", metadata !5, i32 1017, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nent] [line 1017]
!278 = metadata !{i32 786688, metadata !274, metadata !"ncol", metadata !5, i32 1017, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ncol] [line 1017]
!279 = metadata !{i32 786688, metadata !274, metadata !"offset", metadata !5, i32 1017, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [offset] [line 1017]
!280 = metadata !{i32 786688, metadata !274, metadata !"indices", metadata !5, i32 1017, metadata !36, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [indices] [line 1017]
!281 = metadata !{i32 786688, metadata !274, metadata !"sizes", metadata !5, i32 1017, metadata !36, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sizes] [line 1017]
!282 = metadata !{i32 786688, metadata !283, metadata !"entries", metadata !5, i32 1037, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [entries] [line 1037]
!283 = metadata !{i32 786443, metadata !1, metadata !258, i32 1036, i32 0, i32 120} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_instance.c]
!284 = metadata !{i32 786688, metadata !283, metadata !"ii", metadata !5, i32 1038, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ii] [line 1038]
!285 = metadata !{i32 786688, metadata !283, metadata !"nent", metadata !5, i32 1038, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nent] [line 1038]
!286 = metadata !{i32 786688, metadata !283, metadata !"colids", metadata !5, i32 1038, metadata !36, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [colids] [line 1038]
!287 = metadata !{i32 786688, metadata !283, metadata !"rowids", metadata !5, i32 1038, metadata !36, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rowids] [line 1038]
!288 = metadata !{i32 786688, metadata !289, metadata !"entries", metadata !5, i32 1051, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [entries] [line 1051]
!289 = metadata !{i32 786443, metadata !1, metadata !258, i32 1050, i32 0, i32 124} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_instance.c]
!290 = metadata !{i32 786688, metadata !289, metadata !"ii", metadata !5, i32 1052, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ii] [line 1052]
!291 = metadata !{i32 786688, metadata !289, metadata !"joff", metadata !5, i32 1052, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [joff] [line 1052]
!292 = metadata !{i32 786688, metadata !289, metadata !"nent", metadata !5, i32 1052, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nent] [line 1052]
!293 = metadata !{i32 786688, metadata !289, metadata !"nrow", metadata !5, i32 1052, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nrow] [line 1052]
!294 = metadata !{i32 786688, metadata !289, metadata !"offset", metadata !5, i32 1052, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [offset] [line 1052]
!295 = metadata !{i32 786688, metadata !289, metadata !"firstlocs", metadata !5, i32 1052, metadata !36, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [firstlocs] [line 1052]
!296 = metadata !{i32 786688, metadata !289, metadata !"sizes", metadata !5, i32 1052, metadata !36, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sizes] [line 1052]
!297 = metadata !{i32 786688, metadata !298, metadata !"entries", metadata !5, i32 1071, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [entries] [line 1071]
!298 = metadata !{i32 786443, metadata !1, metadata !258, i32 1070, i32 0, i32 129} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_instance.c]
!299 = metadata !{i32 786688, metadata !298, metadata !"ii", metadata !5, i32 1072, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ii] [line 1072]
!300 = metadata !{i32 786688, metadata !298, metadata !"ioff", metadata !5, i32 1072, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ioff] [line 1072]
!301 = metadata !{i32 786688, metadata !298, metadata !"nent", metadata !5, i32 1072, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nent] [line 1072]
!302 = metadata !{i32 786688, metadata !298, metadata !"ncol", metadata !5, i32 1072, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ncol] [line 1072]
!303 = metadata !{i32 786688, metadata !298, metadata !"offset", metadata !5, i32 1072, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [offset] [line 1072]
!304 = metadata !{i32 786688, metadata !298, metadata !"firstlocs", metadata !5, i32 1072, metadata !36, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [firstlocs] [line 1072]
!305 = metadata !{i32 786688, metadata !298, metadata !"sizes", metadata !5, i32 1072, metadata !36, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sizes] [line 1072]
!306 = metadata !{i32 786688, metadata !307, metadata !"entries", metadata !5, i32 1091, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [entries] [line 1091]
!307 = metadata !{i32 786443, metadata !1, metadata !258, i32 1090, i32 0, i32 134} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_instance.c]
!308 = metadata !{i32 786688, metadata !307, metadata !"ncol", metadata !5, i32 1092, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ncol] [line 1092]
!309 = metadata !{i32 786688, metadata !310, metadata !"entries", metadata !5, i32 1106, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [entries] [line 1106]
!310 = metadata !{i32 786443, metadata !1, metadata !258, i32 1105, i32 0, i32 137} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_instance.c]
!311 = metadata !{i32 786688, metadata !310, metadata !"ii", metadata !5, i32 1107, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ii] [line 1107]
!312 = metadata !{i32 786688, metadata !310, metadata !"ipivot", metadata !5, i32 1107, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ipivot] [line 1107]
!313 = metadata !{i32 786688, metadata !310, metadata !"jrow", metadata !5, i32 1107, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [jrow] [line 1107]
!314 = metadata !{i32 786688, metadata !310, metadata !"kk", metadata !5, i32 1107, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [kk] [line 1107]
!315 = metadata !{i32 786688, metadata !310, metadata !"m", metadata !5, i32 1107, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [m] [line 1107]
!316 = metadata !{i32 786688, metadata !310, metadata !"ncol", metadata !5, i32 1107, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ncol] [line 1107]
!317 = metadata !{i32 786688, metadata !310, metadata !"nent", metadata !5, i32 1107, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nent] [line 1107]
!318 = metadata !{i32 786688, metadata !310, metadata !"size", metadata !5, i32 1107, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [size] [line 1107]
!319 = metadata !{i32 786688, metadata !310, metadata !"pivotsizes", metadata !5, i32 1108, metadata !36, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [pivotsizes] [line 1108]
!320 = metadata !{i32 786688, metadata !321, metadata !"sign", metadata !5, i32 1142, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sign] [line 1142]
!321 = metadata !{i32 786443, metadata !1, metadata !258, i32 1141, i32 0, i32 149} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_instance.c]
!322 = metadata !{i32 786688, metadata !321, metadata !"entries", metadata !5, i32 1143, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [entries] [line 1143]
!323 = metadata !{i32 786688, metadata !321, metadata !"ii", metadata !5, i32 1144, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ii] [line 1144]
!324 = metadata !{i32 786688, metadata !321, metadata !"ipivot", metadata !5, i32 1144, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ipivot] [line 1144]
!325 = metadata !{i32 786688, metadata !321, metadata !"jrow", metadata !5, i32 1144, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [jrow] [line 1144]
!326 = metadata !{i32 786688, metadata !321, metadata !"kk", metadata !5, i32 1144, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [kk] [line 1144]
!327 = metadata !{i32 786688, metadata !321, metadata !"m", metadata !5, i32 1144, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [m] [line 1144]
!328 = metadata !{i32 786688, metadata !321, metadata !"ncol", metadata !5, i32 1144, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ncol] [line 1144]
!329 = metadata !{i32 786688, metadata !321, metadata !"nent", metadata !5, i32 1144, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nent] [line 1144]
!330 = metadata !{i32 786688, metadata !321, metadata !"size", metadata !5, i32 1144, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [size] [line 1144]
!331 = metadata !{i32 786688, metadata !321, metadata !"pivotsizes", metadata !5, i32 1145, metadata !36, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [pivotsizes] [line 1145]
!332 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"SubMtx_locationOfRealEntry", metadata !"SubMtx_locationOfRealEntry", metadata !"", i32 1206, metadata !333, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._SubMtx*, i32, i32, double**)* @SubMtx_locationOfRealEntry, null, null, metadata !335, i32 1211} ; [ DW_TAG_subprogram ] [line 1206] [def] [scope 1211] [SubMtx_locationOfRealEntry]
!333 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !334, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!334 = metadata !{null, metadata !8, metadata !14, metadata !14, metadata !73}
!335 = metadata !{metadata !336, metadata !337, metadata !338, metadata !339, metadata !340, metadata !343, metadata !344, metadata !345, metadata !346, metadata !347, metadata !348, metadata !350, metadata !351, metadata !352, metadata !353, metadata !354, metadata !355, metadata !356, metadata !357, metadata !359, metadata !360, metadata !361, metadata !362, metadata !363, metadata !364, metadata !365, metadata !366, metadata !368, metadata !369, metadata !370, metadata !371, metadata !372, metadata !374, metadata !375, metadata !376, metadata !377, metadata !378, metadata !379, metadata !380, metadata !381, metadata !383, metadata !384, metadata !385, metadata !386, metadata !387, metadata !388, metadata !389, metadata !390, metadata !392, metadata !393, metadata !395, metadata !396, metadata !397, metadata !398, metadata !399, metadata !400, metadata !401, metadata !402, metadata !403}
!336 = metadata !{i32 786689, metadata !332, metadata !"mtx", metadata !5, i32 16778423, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mtx] [line 1207]
!337 = metadata !{i32 786689, metadata !332, metadata !"irow", metadata !5, i32 33555640, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [irow] [line 1208]
!338 = metadata !{i32 786689, metadata !332, metadata !"jcol", metadata !5, i32 50332857, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [jcol] [line 1209]
!339 = metadata !{i32 786689, metadata !332, metadata !"ppValue", metadata !5, i32 67110074, metadata !73, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ppValue] [line 1210]
!340 = metadata !{i32 786688, metadata !341, metadata !"entries", metadata !5, i32 1235, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [entries] [line 1235]
!341 = metadata !{i32 786443, metadata !1, metadata !342, i32 1234, i32 0, i32 165} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_instance.c]
!342 = metadata !{i32 786443, metadata !1, metadata !332, i32 1232, i32 0, i32 164} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_instance.c]
!343 = metadata !{i32 786688, metadata !341, metadata !"inc1", metadata !5, i32 1236, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [inc1] [line 1236]
!344 = metadata !{i32 786688, metadata !341, metadata !"inc2", metadata !5, i32 1236, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [inc2] [line 1236]
!345 = metadata !{i32 786688, metadata !341, metadata !"ncol", metadata !5, i32 1236, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ncol] [line 1236]
!346 = metadata !{i32 786688, metadata !341, metadata !"nrow", metadata !5, i32 1236, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nrow] [line 1236]
!347 = metadata !{i32 786688, metadata !341, metadata !"offset", metadata !5, i32 1236, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [offset] [line 1236]
!348 = metadata !{i32 786688, metadata !349, metadata !"entries", metadata !5, i32 1245, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [entries] [line 1245]
!349 = metadata !{i32 786443, metadata !1, metadata !342, i32 1244, i32 0, i32 167} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_instance.c]
!350 = metadata !{i32 786688, metadata !349, metadata !"ii", metadata !5, i32 1246, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ii] [line 1246]
!351 = metadata !{i32 786688, metadata !349, metadata !"jj", metadata !5, i32 1246, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [jj] [line 1246]
!352 = metadata !{i32 786688, metadata !349, metadata !"nent", metadata !5, i32 1246, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nent] [line 1246]
!353 = metadata !{i32 786688, metadata !349, metadata !"nrow", metadata !5, i32 1246, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nrow] [line 1246]
!354 = metadata !{i32 786688, metadata !349, metadata !"offset", metadata !5, i32 1246, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [offset] [line 1246]
!355 = metadata !{i32 786688, metadata !349, metadata !"indices", metadata !5, i32 1246, metadata !36, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [indices] [line 1246]
!356 = metadata !{i32 786688, metadata !349, metadata !"sizes", metadata !5, i32 1246, metadata !36, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sizes] [line 1246]
!357 = metadata !{i32 786688, metadata !358, metadata !"entries", metadata !5, i32 1262, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [entries] [line 1262]
!358 = metadata !{i32 786443, metadata !1, metadata !342, i32 1261, i32 0, i32 174} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_instance.c]
!359 = metadata !{i32 786688, metadata !358, metadata !"ii", metadata !5, i32 1263, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ii] [line 1263]
!360 = metadata !{i32 786688, metadata !358, metadata !"jj", metadata !5, i32 1263, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [jj] [line 1263]
!361 = metadata !{i32 786688, metadata !358, metadata !"nent", metadata !5, i32 1263, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nent] [line 1263]
!362 = metadata !{i32 786688, metadata !358, metadata !"ncol", metadata !5, i32 1263, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ncol] [line 1263]
!363 = metadata !{i32 786688, metadata !358, metadata !"offset", metadata !5, i32 1263, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [offset] [line 1263]
!364 = metadata !{i32 786688, metadata !358, metadata !"indices", metadata !5, i32 1263, metadata !36, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [indices] [line 1263]
!365 = metadata !{i32 786688, metadata !358, metadata !"sizes", metadata !5, i32 1263, metadata !36, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sizes] [line 1263]
!366 = metadata !{i32 786688, metadata !367, metadata !"entries", metadata !5, i32 1280, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [entries] [line 1280]
!367 = metadata !{i32 786443, metadata !1, metadata !342, i32 1279, i32 0, i32 181} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_instance.c]
!368 = metadata !{i32 786688, metadata !367, metadata !"ii", metadata !5, i32 1281, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ii] [line 1281]
!369 = metadata !{i32 786688, metadata !367, metadata !"nent", metadata !5, i32 1281, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nent] [line 1281]
!370 = metadata !{i32 786688, metadata !367, metadata !"colids", metadata !5, i32 1281, metadata !36, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [colids] [line 1281]
!371 = metadata !{i32 786688, metadata !367, metadata !"rowids", metadata !5, i32 1281, metadata !36, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rowids] [line 1281]
!372 = metadata !{i32 786688, metadata !373, metadata !"entries", metadata !5, i32 1292, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [entries] [line 1292]
!373 = metadata !{i32 786443, metadata !1, metadata !342, i32 1291, i32 0, i32 185} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_instance.c]
!374 = metadata !{i32 786688, metadata !373, metadata !"ii", metadata !5, i32 1293, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ii] [line 1293]
!375 = metadata !{i32 786688, metadata !373, metadata !"joff", metadata !5, i32 1293, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [joff] [line 1293]
!376 = metadata !{i32 786688, metadata !373, metadata !"nent", metadata !5, i32 1293, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nent] [line 1293]
!377 = metadata !{i32 786688, metadata !373, metadata !"nrow", metadata !5, i32 1293, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nrow] [line 1293]
!378 = metadata !{i32 786688, metadata !373, metadata !"offset", metadata !5, i32 1293, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [offset] [line 1293]
!379 = metadata !{i32 786688, metadata !373, metadata !"firstlocs", metadata !5, i32 1293, metadata !36, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [firstlocs] [line 1293]
!380 = metadata !{i32 786688, metadata !373, metadata !"sizes", metadata !5, i32 1293, metadata !36, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sizes] [line 1293]
!381 = metadata !{i32 786688, metadata !382, metadata !"entries", metadata !5, i32 1310, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [entries] [line 1310]
!382 = metadata !{i32 786443, metadata !1, metadata !342, i32 1309, i32 0, i32 190} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_instance.c]
!383 = metadata !{i32 786688, metadata !382, metadata !"ii", metadata !5, i32 1311, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ii] [line 1311]
!384 = metadata !{i32 786688, metadata !382, metadata !"ioff", metadata !5, i32 1311, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ioff] [line 1311]
!385 = metadata !{i32 786688, metadata !382, metadata !"nent", metadata !5, i32 1311, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nent] [line 1311]
!386 = metadata !{i32 786688, metadata !382, metadata !"ncol", metadata !5, i32 1311, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ncol] [line 1311]
!387 = metadata !{i32 786688, metadata !382, metadata !"offset", metadata !5, i32 1311, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [offset] [line 1311]
!388 = metadata !{i32 786688, metadata !382, metadata !"firstlocs", metadata !5, i32 1311, metadata !36, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [firstlocs] [line 1311]
!389 = metadata !{i32 786688, metadata !382, metadata !"sizes", metadata !5, i32 1311, metadata !36, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sizes] [line 1311]
!390 = metadata !{i32 786688, metadata !391, metadata !"entries", metadata !5, i32 1328, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [entries] [line 1328]
!391 = metadata !{i32 786443, metadata !1, metadata !342, i32 1327, i32 0, i32 195} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_instance.c]
!392 = metadata !{i32 786688, metadata !391, metadata !"ncol", metadata !5, i32 1329, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ncol] [line 1329]
!393 = metadata !{i32 786688, metadata !394, metadata !"entries", metadata !5, i32 1340, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [entries] [line 1340]
!394 = metadata !{i32 786443, metadata !1, metadata !342, i32 1339, i32 0, i32 198} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_instance.c]
!395 = metadata !{i32 786688, metadata !394, metadata !"ii", metadata !5, i32 1341, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ii] [line 1341]
!396 = metadata !{i32 786688, metadata !394, metadata !"ipivot", metadata !5, i32 1341, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ipivot] [line 1341]
!397 = metadata !{i32 786688, metadata !394, metadata !"jrow", metadata !5, i32 1341, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [jrow] [line 1341]
!398 = metadata !{i32 786688, metadata !394, metadata !"kk", metadata !5, i32 1341, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [kk] [line 1341]
!399 = metadata !{i32 786688, metadata !394, metadata !"m", metadata !5, i32 1341, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [m] [line 1341]
!400 = metadata !{i32 786688, metadata !394, metadata !"ncol", metadata !5, i32 1341, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ncol] [line 1341]
!401 = metadata !{i32 786688, metadata !394, metadata !"nent", metadata !5, i32 1341, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nent] [line 1341]
!402 = metadata !{i32 786688, metadata !394, metadata !"size", metadata !5, i32 1341, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [size] [line 1341]
!403 = metadata !{i32 786688, metadata !394, metadata !"pivotsizes", metadata !5, i32 1342, metadata !36, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [pivotsizes] [line 1342]
!404 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"SubMtx_locationOfComplexEntry", metadata !"SubMtx_locationOfComplexEntry", metadata !"", i32 1393, metadata !405, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._SubMtx*, i32, i32, double**, double**)* @SubMtx_locationOfComplexEntry, null, null, metadata !407, i32 1399} ; [ DW_TAG_subprogram ] [line 1393] [def] [scope 1399] [SubMtx_locationOfComplexEntry]
!405 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !406, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!406 = metadata !{null, metadata !8, metadata !14, metadata !14, metadata !73, metadata !73}
!407 = metadata !{metadata !408, metadata !409, metadata !410, metadata !411, metadata !412, metadata !413, metadata !416, metadata !417, metadata !418, metadata !419, metadata !420, metadata !421, metadata !423, metadata !424, metadata !425, metadata !426, metadata !427, metadata !428, metadata !429, metadata !430, metadata !432, metadata !433, metadata !434, metadata !435, metadata !436, metadata !437, metadata !438, metadata !439, metadata !441, metadata !442, metadata !443, metadata !444, metadata !445, metadata !447, metadata !448, metadata !449, metadata !450, metadata !451, metadata !452, metadata !453, metadata !454, metadata !456, metadata !457, metadata !458, metadata !459, metadata !460, metadata !461, metadata !462, metadata !463, metadata !465, metadata !466, metadata !468, metadata !469, metadata !470, metadata !471, metadata !472, metadata !473, metadata !474, metadata !475, metadata !476}
!408 = metadata !{i32 786689, metadata !404, metadata !"mtx", metadata !5, i32 16778610, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mtx] [line 1394]
!409 = metadata !{i32 786689, metadata !404, metadata !"irow", metadata !5, i32 33555827, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [irow] [line 1395]
!410 = metadata !{i32 786689, metadata !404, metadata !"jcol", metadata !5, i32 50333044, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [jcol] [line 1396]
!411 = metadata !{i32 786689, metadata !404, metadata !"ppReal", metadata !5, i32 67110261, metadata !73, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ppReal] [line 1397]
!412 = metadata !{i32 786689, metadata !404, metadata !"ppImag", metadata !5, i32 83887478, metadata !73, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ppImag] [line 1398]
!413 = metadata !{i32 786688, metadata !414, metadata !"entries", metadata !5, i32 1424, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [entries] [line 1424]
!414 = metadata !{i32 786443, metadata !1, metadata !415, i32 1423, i32 0, i32 213} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_instance.c]
!415 = metadata !{i32 786443, metadata !1, metadata !404, i32 1421, i32 0, i32 212} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_instance.c]
!416 = metadata !{i32 786688, metadata !414, metadata !"inc1", metadata !5, i32 1425, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [inc1] [line 1425]
!417 = metadata !{i32 786688, metadata !414, metadata !"inc2", metadata !5, i32 1425, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [inc2] [line 1425]
!418 = metadata !{i32 786688, metadata !414, metadata !"ncol", metadata !5, i32 1425, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ncol] [line 1425]
!419 = metadata !{i32 786688, metadata !414, metadata !"nrow", metadata !5, i32 1425, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nrow] [line 1425]
!420 = metadata !{i32 786688, metadata !414, metadata !"offset", metadata !5, i32 1425, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [offset] [line 1425]
!421 = metadata !{i32 786688, metadata !422, metadata !"entries", metadata !5, i32 1435, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [entries] [line 1435]
!422 = metadata !{i32 786443, metadata !1, metadata !415, i32 1434, i32 0, i32 215} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_instance.c]
!423 = metadata !{i32 786688, metadata !422, metadata !"ii", metadata !5, i32 1436, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ii] [line 1436]
!424 = metadata !{i32 786688, metadata !422, metadata !"jj", metadata !5, i32 1436, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [jj] [line 1436]
!425 = metadata !{i32 786688, metadata !422, metadata !"nent", metadata !5, i32 1436, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nent] [line 1436]
!426 = metadata !{i32 786688, metadata !422, metadata !"nrow", metadata !5, i32 1436, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nrow] [line 1436]
!427 = metadata !{i32 786688, metadata !422, metadata !"offset", metadata !5, i32 1436, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [offset] [line 1436]
!428 = metadata !{i32 786688, metadata !422, metadata !"indices", metadata !5, i32 1436, metadata !36, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [indices] [line 1436]
!429 = metadata !{i32 786688, metadata !422, metadata !"sizes", metadata !5, i32 1436, metadata !36, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sizes] [line 1436]
!430 = metadata !{i32 786688, metadata !431, metadata !"entries", metadata !5, i32 1453, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [entries] [line 1453]
!431 = metadata !{i32 786443, metadata !1, metadata !415, i32 1452, i32 0, i32 222} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_instance.c]
!432 = metadata !{i32 786688, metadata !431, metadata !"ii", metadata !5, i32 1454, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ii] [line 1454]
!433 = metadata !{i32 786688, metadata !431, metadata !"jj", metadata !5, i32 1454, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [jj] [line 1454]
!434 = metadata !{i32 786688, metadata !431, metadata !"nent", metadata !5, i32 1454, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nent] [line 1454]
!435 = metadata !{i32 786688, metadata !431, metadata !"ncol", metadata !5, i32 1454, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ncol] [line 1454]
!436 = metadata !{i32 786688, metadata !431, metadata !"offset", metadata !5, i32 1454, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [offset] [line 1454]
!437 = metadata !{i32 786688, metadata !431, metadata !"indices", metadata !5, i32 1454, metadata !36, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [indices] [line 1454]
!438 = metadata !{i32 786688, metadata !431, metadata !"sizes", metadata !5, i32 1454, metadata !36, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sizes] [line 1454]
!439 = metadata !{i32 786688, metadata !440, metadata !"entries", metadata !5, i32 1472, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [entries] [line 1472]
!440 = metadata !{i32 786443, metadata !1, metadata !415, i32 1471, i32 0, i32 229} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_instance.c]
!441 = metadata !{i32 786688, metadata !440, metadata !"ii", metadata !5, i32 1473, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ii] [line 1473]
!442 = metadata !{i32 786688, metadata !440, metadata !"nent", metadata !5, i32 1473, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nent] [line 1473]
!443 = metadata !{i32 786688, metadata !440, metadata !"colids", metadata !5, i32 1473, metadata !36, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [colids] [line 1473]
!444 = metadata !{i32 786688, metadata !440, metadata !"rowids", metadata !5, i32 1473, metadata !36, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rowids] [line 1473]
!445 = metadata !{i32 786688, metadata !446, metadata !"entries", metadata !5, i32 1485, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [entries] [line 1485]
!446 = metadata !{i32 786443, metadata !1, metadata !415, i32 1484, i32 0, i32 233} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_instance.c]
!447 = metadata !{i32 786688, metadata !446, metadata !"ii", metadata !5, i32 1486, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ii] [line 1486]
!448 = metadata !{i32 786688, metadata !446, metadata !"joff", metadata !5, i32 1486, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [joff] [line 1486]
!449 = metadata !{i32 786688, metadata !446, metadata !"nent", metadata !5, i32 1486, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nent] [line 1486]
!450 = metadata !{i32 786688, metadata !446, metadata !"nrow", metadata !5, i32 1486, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nrow] [line 1486]
!451 = metadata !{i32 786688, metadata !446, metadata !"offset", metadata !5, i32 1486, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [offset] [line 1486]
!452 = metadata !{i32 786688, metadata !446, metadata !"firstlocs", metadata !5, i32 1486, metadata !36, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [firstlocs] [line 1486]
!453 = metadata !{i32 786688, metadata !446, metadata !"sizes", metadata !5, i32 1486, metadata !36, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sizes] [line 1486]
!454 = metadata !{i32 786688, metadata !455, metadata !"entries", metadata !5, i32 1504, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [entries] [line 1504]
!455 = metadata !{i32 786443, metadata !1, metadata !415, i32 1503, i32 0, i32 238} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_instance.c]
!456 = metadata !{i32 786688, metadata !455, metadata !"ii", metadata !5, i32 1505, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ii] [line 1505]
!457 = metadata !{i32 786688, metadata !455, metadata !"ioff", metadata !5, i32 1505, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ioff] [line 1505]
!458 = metadata !{i32 786688, metadata !455, metadata !"nent", metadata !5, i32 1505, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nent] [line 1505]
!459 = metadata !{i32 786688, metadata !455, metadata !"ncol", metadata !5, i32 1505, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ncol] [line 1505]
!460 = metadata !{i32 786688, metadata !455, metadata !"offset", metadata !5, i32 1505, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [offset] [line 1505]
!461 = metadata !{i32 786688, metadata !455, metadata !"firstlocs", metadata !5, i32 1505, metadata !36, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [firstlocs] [line 1505]
!462 = metadata !{i32 786688, metadata !455, metadata !"sizes", metadata !5, i32 1505, metadata !36, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sizes] [line 1505]
!463 = metadata !{i32 786688, metadata !464, metadata !"entries", metadata !5, i32 1523, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [entries] [line 1523]
!464 = metadata !{i32 786443, metadata !1, metadata !415, i32 1522, i32 0, i32 243} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_instance.c]
!465 = metadata !{i32 786688, metadata !464, metadata !"ncol", metadata !5, i32 1524, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ncol] [line 1524]
!466 = metadata !{i32 786688, metadata !467, metadata !"entries", metadata !5, i32 1536, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [entries] [line 1536]
!467 = metadata !{i32 786443, metadata !1, metadata !415, i32 1535, i32 0, i32 246} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_instance.c]
!468 = metadata !{i32 786688, metadata !467, metadata !"ii", metadata !5, i32 1537, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ii] [line 1537]
!469 = metadata !{i32 786688, metadata !467, metadata !"ipivot", metadata !5, i32 1537, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ipivot] [line 1537]
!470 = metadata !{i32 786688, metadata !467, metadata !"jrow", metadata !5, i32 1537, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [jrow] [line 1537]
!471 = metadata !{i32 786688, metadata !467, metadata !"kk", metadata !5, i32 1537, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [kk] [line 1537]
!472 = metadata !{i32 786688, metadata !467, metadata !"m", metadata !5, i32 1537, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [m] [line 1537]
!473 = metadata !{i32 786688, metadata !467, metadata !"ncol", metadata !5, i32 1537, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ncol] [line 1537]
!474 = metadata !{i32 786688, metadata !467, metadata !"nent", metadata !5, i32 1537, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nent] [line 1537]
!475 = metadata !{i32 786688, metadata !467, metadata !"size", metadata !5, i32 1537, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [size] [line 1537]
!476 = metadata !{i32 786688, metadata !467, metadata !"pivotsizes", metadata !5, i32 1538, metadata !36, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [pivotsizes] [line 1538]
!477 = metadata !{i32 16, i32 0, metadata !4, null}
!478 = metadata !{i32 17, i32 0, metadata !4, null}
!479 = metadata !{i32 18, i32 0, metadata !4, null}
!480 = metadata !{i32 25, i32 0, metadata !4, null}
!481 = metadata !{i32 26, i32 0, metadata !482, null}
!482 = metadata !{i32 786443, metadata !1, metadata !4, i32 25, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_instance.c]
!483 = metadata !{metadata !"any pointer", metadata !484}
!484 = metadata !{metadata !"omnipotent char", metadata !485}
!485 = metadata !{metadata !"Simple C/C++ TBAA"}
!486 = metadata !{i32 29, i32 0, metadata !482, null}
!487 = metadata !{i32 31, i32 0, metadata !4, null}
!488 = metadata !{metadata !"int", metadata !484}
!489 = metadata !{i32 32, i32 0, metadata !4, null}
!490 = metadata !{i32 34, i32 0, metadata !4, null}
!491 = metadata !{i32 46, i32 0, metadata !41, null}
!492 = metadata !{i32 47, i32 0, metadata !41, null}
!493 = metadata !{i32 48, i32 0, metadata !41, null}
!494 = metadata !{i32 56, i32 0, metadata !41, null}
!495 = metadata !{i32 57, i32 0, metadata !496, null}
!496 = metadata !{i32 786443, metadata !1, metadata !41, i32 56, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_instance.c]
!497 = metadata !{i32 60, i32 0, metadata !496, null}
!498 = metadata !{i32 62, i32 0, metadata !41, null}
!499 = metadata !{i32 63, i32 0, metadata !41, null}
!500 = metadata !{i32 64, i32 0, metadata !41, null}
!501 = metadata !{i32 66, i32 0, metadata !41, null}
!502 = metadata !{i32 80, i32 0, metadata !49, null}
!503 = metadata !{i32 81, i32 0, metadata !49, null}
!504 = metadata !{i32 82, i32 0, metadata !49, null}
!505 = metadata !{i32 83, i32 0, metadata !49, null}
!506 = metadata !{i32 90, i32 0, metadata !49, null}
!507 = metadata !{i32 91, i32 0, metadata !508, null}
!508 = metadata !{i32 786443, metadata !1, metadata !49, i32 90, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_instance.c]
!509 = metadata !{i32 94, i32 0, metadata !508, null}
!510 = metadata !{i32 96, i32 0, metadata !49, null}
!511 = metadata !{i32 97, i32 0, metadata !49, null}
!512 = metadata !{i32 98, i32 0, metadata !49, null}
!513 = metadata !{i32 100, i32 0, metadata !49, null}
!514 = metadata !{i32 116, i32 0, metadata !57, null}
!515 = metadata !{i32 117, i32 0, metadata !57, null}
!516 = metadata !{i32 118, i32 0, metadata !57, null}
!517 = metadata !{i32 120, i32 0, metadata !57, null}
!518 = metadata !{i32 121, i32 0, metadata !57, null}
!519 = metadata !{i32 122, i32 0, metadata !520, null}
!520 = metadata !{i32 786443, metadata !1, metadata !57, i32 121, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_instance.c]
!521 = metadata !{i32 123, i32 0, metadata !520, null}
!522 = metadata !{i32 124, i32 0, metadata !57, null}
!523 = metadata !{i32 140, i32 0, metadata !65, null}
!524 = metadata !{i32 141, i32 0, metadata !65, null}
!525 = metadata !{i32 142, i32 0, metadata !65, null}
!526 = metadata !{i32 144, i32 0, metadata !65, null}
!527 = metadata !{i32 145, i32 0, metadata !65, null}
!528 = metadata !{i32 146, i32 0, metadata !529, null}
!529 = metadata !{i32 786443, metadata !1, metadata !65, i32 145, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_instance.c]
!530 = metadata !{i32 147, i32 0, metadata !529, null}
!531 = metadata !{i32 148, i32 0, metadata !65, null}
!532 = metadata !{i32 165, i32 0, metadata !70, null}
!533 = metadata !{i32 166, i32 0, metadata !70, null}
!534 = metadata !{i32 167, i32 0, metadata !70, null}
!535 = metadata !{i32 168, i32 0, metadata !70, null}
!536 = metadata !{i32 169, i32 0, metadata !70, null}
!537 = metadata !{i32 170, i32 0, metadata !70, null}
!538 = metadata !{i32 179, i32 0, metadata !70, null}
!539 = metadata !{i32 181, i32 0, metadata !540, null}
!540 = metadata !{i32 786443, metadata !1, metadata !70, i32 180, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_instance.c]
!541 = metadata !{i32 185, i32 0, metadata !540, null}
!542 = metadata !{i32 187, i32 0, metadata !70, null}
!543 = metadata !{i32 188, i32 0, metadata !544, null}
!544 = metadata !{i32 786443, metadata !1, metadata !70, i32 187, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_instance.c]
!545 = metadata !{i32 192, i32 0, metadata !544, null}
!546 = metadata !{i32 194, i32 0, metadata !70, null}
!547 = metadata !{i32 195, i32 0, metadata !548, null}
!548 = metadata !{i32 786443, metadata !1, metadata !70, i32 194, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_instance.c]
!549 = metadata !{i32 200, i32 0, metadata !548, null}
!550 = metadata !{i32 202, i32 0, metadata !70, null}
!551 = metadata !{i32 203, i32 0, metadata !70, null}
!552 = metadata !{i32 204, i32 0, metadata !70, null}
!553 = metadata !{i32 205, i32 0, metadata !554, null}
!554 = metadata !{i32 786443, metadata !1, metadata !70, i32 204, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_instance.c]
!555 = metadata !{i32 207, i32 0, metadata !554, null}
!556 = metadata !{i32 208, i32 0, metadata !557, null}
!557 = metadata !{i32 786443, metadata !1, metadata !70, i32 207, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_instance.c]
!558 = metadata !{i32 209, i32 0, metadata !557, null}
!559 = metadata !{i32 206, i32 0, metadata !554, null}
!560 = metadata !{i32 211, i32 0, metadata !70, null}
!561 = metadata !{i32 212, i32 0, metadata !70, null}
!562 = metadata !{i32 216, i32 0, metadata !563, null}
!563 = metadata !{i32 786443, metadata !1, metadata !70, i32 215, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_instance.c]
!564 = metadata !{i32 218, i32 0, metadata !70, null}
!565 = metadata !{i32 235, i32 0, metadata !83, null}
!566 = metadata !{i32 236, i32 0, metadata !83, null}
!567 = metadata !{i32 237, i32 0, metadata !83, null}
!568 = metadata !{i32 238, i32 0, metadata !83, null}
!569 = metadata !{i32 239, i32 0, metadata !83, null}
!570 = metadata !{i32 240, i32 0, metadata !83, null}
!571 = metadata !{i32 250, i32 0, metadata !83, null}
!572 = metadata !{i32 252, i32 0, metadata !573, null}
!573 = metadata !{i32 786443, metadata !1, metadata !83, i32 251, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_instance.c]
!574 = metadata !{i32 256, i32 0, metadata !573, null}
!575 = metadata !{i32 258, i32 0, metadata !83, null}
!576 = metadata !{i32 259, i32 0, metadata !577, null}
!577 = metadata !{i32 786443, metadata !1, metadata !83, i32 258, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_instance.c]
!578 = metadata !{i32 263, i32 0, metadata !577, null}
!579 = metadata !{i32 265, i32 0, metadata !83, null}
!580 = metadata !{i32 266, i32 0, metadata !581, null}
!581 = metadata !{i32 786443, metadata !1, metadata !83, i32 265, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_instance.c]
!582 = metadata !{i32 270, i32 0, metadata !581, null}
!583 = metadata !{i32 272, i32 0, metadata !83, null}
!584 = metadata !{i32 273, i32 0, metadata !83, null}
!585 = metadata !{i32 274, i32 0, metadata !83, null}
!586 = metadata !{i32 275, i32 0, metadata !83, null}
!587 = metadata !{i32 276, i32 0, metadata !83, null}
!588 = metadata !{i32 277, i32 0, metadata !83, null}
!589 = metadata !{i32 278, i32 0, metadata !83, null}
!590 = metadata !{i32 279, i32 0, metadata !83, null}
!591 = metadata !{i32 280, i32 0, metadata !83, null}
!592 = metadata !{i32 284, i32 0, metadata !593, null}
!593 = metadata !{i32 786443, metadata !1, metadata !83, i32 283, i32 0, i32 14} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_instance.c]
!594 = metadata !{i32 286, i32 0, metadata !83, null}
!595 = metadata !{i32 303, i32 0, metadata !96, null}
!596 = metadata !{i32 304, i32 0, metadata !96, null}
!597 = metadata !{i32 305, i32 0, metadata !96, null}
!598 = metadata !{i32 306, i32 0, metadata !96, null}
!599 = metadata !{i32 307, i32 0, metadata !96, null}
!600 = metadata !{i32 308, i32 0, metadata !96, null}
!601 = metadata !{i32 318, i32 0, metadata !96, null}
!602 = metadata !{i32 320, i32 0, metadata !603, null}
!603 = metadata !{i32 786443, metadata !1, metadata !96, i32 319, i32 0, i32 15} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_instance.c]
!604 = metadata !{i32 324, i32 0, metadata !603, null}
!605 = metadata !{i32 326, i32 0, metadata !96, null}
!606 = metadata !{i32 327, i32 0, metadata !607, null}
!607 = metadata !{i32 786443, metadata !1, metadata !96, i32 326, i32 0, i32 16} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_instance.c]
!608 = metadata !{i32 331, i32 0, metadata !607, null}
!609 = metadata !{i32 333, i32 0, metadata !96, null}
!610 = metadata !{i32 334, i32 0, metadata !611, null}
!611 = metadata !{i32 786443, metadata !1, metadata !96, i32 333, i32 0, i32 17} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_instance.c]
!612 = metadata !{i32 339, i32 0, metadata !611, null}
!613 = metadata !{i32 341, i32 0, metadata !96, null}
!614 = metadata !{i32 342, i32 0, metadata !96, null}
!615 = metadata !{i32 343, i32 0, metadata !96, null}
!616 = metadata !{i32 344, i32 0, metadata !96, null}
!617 = metadata !{i32 345, i32 0, metadata !96, null}
!618 = metadata !{i32 346, i32 0, metadata !96, null}
!619 = metadata !{i32 347, i32 0, metadata !96, null}
!620 = metadata !{i32 348, i32 0, metadata !96, null}
!621 = metadata !{i32 349, i32 0, metadata !96, null}
!622 = metadata !{i32 353, i32 0, metadata !623, null}
!623 = metadata !{i32 786443, metadata !1, metadata !96, i32 352, i32 0, i32 18} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_instance.c]
!624 = metadata !{i32 355, i32 0, metadata !96, null}
!625 = metadata !{i32 371, i32 0, metadata !107, null}
!626 = metadata !{i32 372, i32 0, metadata !107, null}
!627 = metadata !{i32 373, i32 0, metadata !107, null}
!628 = metadata !{i32 374, i32 0, metadata !107, null}
!629 = metadata !{i32 375, i32 0, metadata !107, null}
!630 = metadata !{i32 385, i32 0, metadata !107, null}
!631 = metadata !{i32 387, i32 0, metadata !632, null}
!632 = metadata !{i32 786443, metadata !1, metadata !107, i32 386, i32 0, i32 19} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_instance.c]
!633 = metadata !{i32 391, i32 0, metadata !632, null}
!634 = metadata !{i32 393, i32 0, metadata !107, null}
!635 = metadata !{i32 394, i32 0, metadata !636, null}
!636 = metadata !{i32 786443, metadata !1, metadata !107, i32 393, i32 0, i32 20} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_instance.c]
!637 = metadata !{i32 398, i32 0, metadata !636, null}
!638 = metadata !{i32 400, i32 0, metadata !107, null}
!639 = metadata !{i32 401, i32 0, metadata !640, null}
!640 = metadata !{i32 786443, metadata !1, metadata !107, i32 400, i32 0, i32 21} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_instance.c]
!641 = metadata !{i32 406, i32 0, metadata !640, null}
!642 = metadata !{i32 408, i32 0, metadata !107, null}
!643 = metadata !{i32 409, i32 0, metadata !107, null}
!644 = metadata !{i32 410, i32 0, metadata !107, null}
!645 = metadata !{i32 411, i32 0, metadata !107, null}
!646 = metadata !{i32 412, i32 0, metadata !107, null}
!647 = metadata !{i32 413, i32 0, metadata !107, null}
!648 = metadata !{i32 414, i32 0, metadata !107, null}
!649 = metadata !{i32 415, i32 0, metadata !107, null}
!650 = metadata !{i32 419, i32 0, metadata !651, null}
!651 = metadata !{i32 786443, metadata !1, metadata !107, i32 418, i32 0, i32 22} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_instance.c]
!652 = metadata !{i32 421, i32 0, metadata !107, null}
!653 = metadata !{i32 438, i32 0, metadata !119, null}
!654 = metadata !{i32 439, i32 0, metadata !119, null}
!655 = metadata !{i32 440, i32 0, metadata !119, null}
!656 = metadata !{i32 441, i32 0, metadata !119, null}
!657 = metadata !{i32 442, i32 0, metadata !119, null}
!658 = metadata !{i32 443, i32 0, metadata !119, null}
!659 = metadata !{i32 453, i32 0, metadata !119, null}
!660 = metadata !{i32 455, i32 0, metadata !661, null}
!661 = metadata !{i32 786443, metadata !1, metadata !119, i32 454, i32 0, i32 23} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_instance.c]
!662 = metadata !{i32 459, i32 0, metadata !661, null}
!663 = metadata !{i32 460, i32 0, metadata !664, null}
!664 = metadata !{i32 786443, metadata !1, metadata !661, i32 459, i32 0, i32 24} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_instance.c]
!665 = metadata !{i32 461, i32 0, metadata !664, null}
!666 = metadata !{i32 462, i32 0, metadata !661, null}
!667 = metadata !{i32 464, i32 0, metadata !119, null}
!668 = metadata !{i32 465, i32 0, metadata !669, null}
!669 = metadata !{i32 786443, metadata !1, metadata !119, i32 464, i32 0, i32 25} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_instance.c]
!670 = metadata !{i32 469, i32 0, metadata !669, null}
!671 = metadata !{i32 471, i32 0, metadata !119, null}
!672 = metadata !{i32 472, i32 0, metadata !673, null}
!673 = metadata !{i32 786443, metadata !1, metadata !119, i32 471, i32 0, i32 26} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_instance.c]
!674 = metadata !{i32 477, i32 0, metadata !673, null}
!675 = metadata !{i32 479, i32 0, metadata !119, null}
!676 = metadata !{i32 480, i32 0, metadata !119, null}
!677 = metadata !{i32 481, i32 0, metadata !119, null}
!678 = metadata !{i32 482, i32 0, metadata !119, null}
!679 = metadata !{i32 483, i32 0, metadata !119, null}
!680 = metadata !{i32 484, i32 0, metadata !119, null}
!681 = metadata !{i32 485, i32 0, metadata !119, null}
!682 = metadata !{i32 486, i32 0, metadata !119, null}
!683 = metadata !{i32 487, i32 0, metadata !119, null}
!684 = metadata !{i32 491, i32 0, metadata !685, null}
!685 = metadata !{i32 786443, metadata !1, metadata !119, i32 490, i32 0, i32 27} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_instance.c]
!686 = metadata !{i32 494, i32 0, metadata !119, null}
!687 = metadata !{i32 511, i32 0, metadata !130, null}
!688 = metadata !{i32 512, i32 0, metadata !130, null}
!689 = metadata !{i32 513, i32 0, metadata !130, null}
!690 = metadata !{i32 514, i32 0, metadata !130, null}
!691 = metadata !{i32 515, i32 0, metadata !130, null}
!692 = metadata !{i32 516, i32 0, metadata !130, null}
!693 = metadata !{i32 526, i32 0, metadata !130, null}
!694 = metadata !{i32 528, i32 0, metadata !695, null}
!695 = metadata !{i32 786443, metadata !1, metadata !130, i32 527, i32 0, i32 28} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_instance.c]
!696 = metadata !{i32 532, i32 0, metadata !695, null}
!697 = metadata !{i32 534, i32 0, metadata !130, null}
!698 = metadata !{i32 535, i32 0, metadata !699, null}
!699 = metadata !{i32 786443, metadata !1, metadata !130, i32 534, i32 0, i32 29} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_instance.c]
!700 = metadata !{i32 539, i32 0, metadata !699, null}
!701 = metadata !{i32 541, i32 0, metadata !130, null}
!702 = metadata !{i32 542, i32 0, metadata !703, null}
!703 = metadata !{i32 786443, metadata !1, metadata !130, i32 541, i32 0, i32 30} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_instance.c]
!704 = metadata !{i32 547, i32 0, metadata !703, null}
!705 = metadata !{i32 549, i32 0, metadata !130, null}
!706 = metadata !{i32 550, i32 0, metadata !130, null}
!707 = metadata !{i32 551, i32 0, metadata !130, null}
!708 = metadata !{i32 552, i32 0, metadata !130, null}
!709 = metadata !{i32 553, i32 0, metadata !130, null}
!710 = metadata !{i32 554, i32 0, metadata !130, null}
!711 = metadata !{i32 555, i32 0, metadata !130, null}
!712 = metadata !{i32 556, i32 0, metadata !130, null}
!713 = metadata !{i32 557, i32 0, metadata !130, null}
!714 = metadata !{i32 561, i32 0, metadata !715, null}
!715 = metadata !{i32 786443, metadata !1, metadata !130, i32 560, i32 0, i32 31} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_instance.c]
!716 = metadata !{i32 564, i32 0, metadata !130, null}
!717 = metadata !{i32 578, i32 0, metadata !141, null}
!718 = metadata !{i32 579, i32 0, metadata !141, null}
!719 = metadata !{i32 580, i32 0, metadata !141, null}
!720 = metadata !{i32 590, i32 0, metadata !141, null}
!721 = metadata !{i32 591, i32 0, metadata !722, null}
!722 = metadata !{i32 786443, metadata !1, metadata !141, i32 590, i32 0, i32 32} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_instance.c]
!723 = metadata !{i32 595, i32 0, metadata !722, null}
!724 = metadata !{i32 597, i32 0, metadata !141, null}
!725 = metadata !{i32 598, i32 0, metadata !726, null}
!726 = metadata !{i32 786443, metadata !1, metadata !141, i32 597, i32 0, i32 33} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_instance.c]
!727 = metadata !{i32 602, i32 0, metadata !726, null}
!728 = metadata !{i32 604, i32 0, metadata !141, null}
!729 = metadata !{i32 605, i32 0, metadata !730, null}
!730 = metadata !{i32 786443, metadata !1, metadata !141, i32 604, i32 0, i32 34} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_instance.c]
!731 = metadata !{i32 610, i32 0, metadata !730, null}
!732 = metadata !{i32 612, i32 0, metadata !141, null}
!733 = metadata !{i32 613, i32 0, metadata !141, null}
!734 = metadata !{i32 615, i32 0, metadata !141, null}
!735 = metadata !{i32 619, i32 0, metadata !736, null}
!736 = metadata !{i32 786443, metadata !1, metadata !141, i32 618, i32 0, i32 35} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_instance.c]
!737 = metadata !{i32 621, i32 0, metadata !141, null}
!738 = metadata !{i32 637, i32 0, metadata !151, null}
!739 = metadata !{i32 638, i32 0, metadata !151, null}
!740 = metadata !{i32 639, i32 0, metadata !151, null}
!741 = metadata !{i32 640, i32 0, metadata !151, null}
!742 = metadata !{i32 641, i32 0, metadata !151, null}
!743 = metadata !{i32 651, i32 0, metadata !151, null}
!744 = metadata !{i32 654, i32 0, metadata !745, null}
!745 = metadata !{i32 786443, metadata !1, metadata !151, i32 653, i32 0, i32 36} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_instance.c]
!746 = metadata !{i32 658, i32 0, metadata !745, null}
!747 = metadata !{i32 660, i32 0, metadata !151, null}
!748 = metadata !{i32 661, i32 0, metadata !749, null}
!749 = metadata !{i32 786443, metadata !1, metadata !151, i32 660, i32 0, i32 37} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_instance.c]
!750 = metadata !{i32 665, i32 0, metadata !749, null}
!751 = metadata !{i32 667, i32 0, metadata !151, null}
!752 = metadata !{i32 669, i32 0, metadata !753, null}
!753 = metadata !{i32 786443, metadata !1, metadata !151, i32 668, i32 0, i32 38} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_instance.c]
!754 = metadata !{i32 674, i32 0, metadata !753, null}
!755 = metadata !{i32 676, i32 0, metadata !151, null}
!756 = metadata !{i32 677, i32 0, metadata !151, null}
!757 = metadata !{i32 678, i32 0, metadata !151, null}
!758 = metadata !{i32 679, i32 0, metadata !151, null}
!759 = metadata !{i32 680, i32 0, metadata !151, null}
!760 = metadata !{i32 681, i32 0, metadata !151, null}
!761 = metadata !{i32 682, i32 0, metadata !151, null}
!762 = metadata !{i32 686, i32 0, metadata !763, null}
!763 = metadata !{i32 786443, metadata !1, metadata !151, i32 685, i32 0, i32 39} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_instance.c]
!764 = metadata !{i32 688, i32 0, metadata !151, null}
!765 = metadata !{i32 709, i32 0, metadata !163, null}
!766 = metadata !{i32 710, i32 0, metadata !163, null}
!767 = metadata !{i32 711, i32 0, metadata !163, null}
!768 = metadata !{i32 712, i32 0, metadata !163, null}
!769 = metadata !{i32 719, i32 0, metadata !163, null}
!770 = metadata !{i32 721, i32 0, metadata !771, null}
!771 = metadata !{i32 786443, metadata !1, metadata !163, i32 720, i32 0, i32 40} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_instance.c]
!772 = metadata !{i32 724, i32 0, metadata !771, null}
!773 = metadata !{i32 726, i32 0, metadata !163, null}
!774 = metadata !{i32 727, i32 0, metadata !775, null}
!775 = metadata !{i32 786443, metadata !1, metadata !163, i32 726, i32 0, i32 41} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_instance.c]
!776 = metadata !{i32 731, i32 0, metadata !775, null}
!777 = metadata !{i32 733, i32 0, metadata !163, null}
!778 = metadata !{metadata !"double", metadata !484}
!779 = metadata !{i32 734, i32 0, metadata !163, null}
!780 = metadata !{i32 737, i32 0, metadata !172, null}
!781 = metadata !{i32 738, i32 0, metadata !172, null}
!782 = metadata !{i32 740, i32 0, metadata !172, null}
!783 = metadata !{i32 741, i32 0, metadata !172, null}
!784 = metadata !{i32 744, i32 0, metadata !172, null}
!785 = metadata !{i32 745, i32 0, metadata !172, null}
!786 = metadata !{i32 746, i32 0, metadata !172, null}
!787 = metadata !{i32 749, i32 0, metadata !180, null}
!788 = metadata !{i32 750, i32 0, metadata !180, null}
!789 = metadata !{i32 752, i32 0, metadata !180, null}
!790 = metadata !{i32 753, i32 0, metadata !180, null}
!791 = metadata !{i32 756, i32 0, metadata !792, null}
!792 = metadata !{i32 786443, metadata !1, metadata !180, i32 756, i32 0, i32 47} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_instance.c]
!793 = metadata !{i32 757, i32 0, metadata !794, null}
!794 = metadata !{i32 786443, metadata !1, metadata !792, i32 756, i32 0, i32 48} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_instance.c]
!795 = metadata !{i32 759, i32 0, metadata !796, null}
!796 = metadata !{i32 786443, metadata !1, metadata !180, i32 759, i32 0, i32 49} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_instance.c]
!797 = metadata !{i32 760, i32 0, metadata !798, null}
!798 = metadata !{i32 786443, metadata !1, metadata !796, i32 759, i32 0, i32 50} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_instance.c]
!799 = metadata !{i32 761, i32 0, metadata !800, null}
!800 = metadata !{i32 786443, metadata !1, metadata !798, i32 760, i32 0, i32 51} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_instance.c]
!801 = metadata !{i32 762, i32 0, metadata !800, null}
!802 = metadata !{i32 768, i32 0, metadata !189, null}
!803 = metadata !{i32 769, i32 0, metadata !189, null}
!804 = metadata !{i32 771, i32 0, metadata !189, null}
!805 = metadata !{i32 773, i32 0, metadata !189, null}
!806 = metadata !{i32 776, i32 0, metadata !807, null}
!807 = metadata !{i32 786443, metadata !1, metadata !189, i32 776, i32 0, i32 54} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_instance.c]
!808 = metadata !{i32 777, i32 0, metadata !809, null}
!809 = metadata !{i32 786443, metadata !1, metadata !807, i32 776, i32 0, i32 55} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_instance.c]
!810 = metadata !{i32 779, i32 0, metadata !811, null}
!811 = metadata !{i32 786443, metadata !1, metadata !189, i32 779, i32 0, i32 56} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_instance.c]
!812 = metadata !{i32 780, i32 0, metadata !813, null}
!813 = metadata !{i32 786443, metadata !1, metadata !811, i32 779, i32 0, i32 57} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_instance.c]
!814 = metadata !{i32 781, i32 0, metadata !815, null}
!815 = metadata !{i32 786443, metadata !1, metadata !813, i32 780, i32 0, i32 58} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_instance.c]
!816 = metadata !{i32 782, i32 0, metadata !815, null}
!817 = metadata !{i32 788, i32 0, metadata !198, null}
!818 = metadata !{i32 789, i32 0, metadata !198, null}
!819 = metadata !{i32 791, i32 0, metadata !198, null}
!820 = metadata !{i32 792, i32 0, metadata !821, null}
!821 = metadata !{i32 786443, metadata !1, metadata !198, i32 792, i32 0, i32 60} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_instance.c]
!822 = metadata !{i32 793, i32 0, metadata !823, null}
!823 = metadata !{i32 786443, metadata !1, metadata !821, i32 792, i32 0, i32 61} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_instance.c]
!824 = metadata !{i32 794, i32 0, metadata !825, null}
!825 = metadata !{i32 786443, metadata !1, metadata !823, i32 793, i32 0, i32 62} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_instance.c]
!826 = metadata !{i32 795, i32 0, metadata !825, null}
!827 = metadata !{i32 801, i32 0, metadata !204, null}
!828 = metadata !{i32 802, i32 0, metadata !204, null}
!829 = metadata !{i32 804, i32 0, metadata !204, null}
!830 = metadata !{i32 806, i32 0, metadata !204, null}
!831 = metadata !{i32 809, i32 0, metadata !832, null}
!832 = metadata !{i32 786443, metadata !1, metadata !204, i32 809, i32 0, i32 65} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_instance.c]
!833 = metadata !{i32 810, i32 0, metadata !834, null}
!834 = metadata !{i32 786443, metadata !1, metadata !832, i32 809, i32 0, i32 66} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_instance.c]
!835 = metadata !{i32 812, i32 0, metadata !204, null}
!836 = metadata !{i32 813, i32 0, metadata !837, null}
!837 = metadata !{i32 786443, metadata !1, metadata !204, i32 812, i32 0, i32 67} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_instance.c]
!838 = metadata !{i32 814, i32 0, metadata !837, null}
!839 = metadata !{i32 815, i32 0, metadata !837, null}
!840 = metadata !{i32 820, i32 0, metadata !213, null}
!841 = metadata !{i32 821, i32 0, metadata !213, null}
!842 = metadata !{i32 823, i32 0, metadata !213, null}
!843 = metadata !{i32 825, i32 0, metadata !213, null}
!844 = metadata !{i32 828, i32 0, metadata !845, null}
!845 = metadata !{i32 786443, metadata !1, metadata !213, i32 828, i32 0, i32 70} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_instance.c]
!846 = metadata !{i32 829, i32 0, metadata !847, null}
!847 = metadata !{i32 786443, metadata !1, metadata !845, i32 828, i32 0, i32 71} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_instance.c]
!848 = metadata !{i32 831, i32 0, metadata !213, null}
!849 = metadata !{i32 832, i32 0, metadata !850, null}
!850 = metadata !{i32 786443, metadata !1, metadata !213, i32 831, i32 0, i32 72} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_instance.c]
!851 = metadata !{i32 833, i32 0, metadata !850, null}
!852 = metadata !{i32 834, i32 0, metadata !850, null}
!853 = metadata !{i32 839, i32 0, metadata !222, null}
!854 = metadata !{i32 840, i32 0, metadata !222, null}
!855 = metadata !{i32 842, i32 0, metadata !222, null}
!856 = metadata !{i32 845, i32 0, metadata !222, null}
!857 = metadata !{i32 846, i32 0, metadata !222, null}
!858 = metadata !{i32 849, i32 0, metadata !222, null}
!859 = metadata !{i32 850, i32 0, metadata !222, null}
!860 = metadata !{i32 853, i32 0, metadata !225, null}
!861 = metadata !{i32 854, i32 0, metadata !225, null}
!862 = metadata !{i32 855, i32 0, metadata !225, null}
!863 = metadata !{i32 857, i32 0, metadata !225, null}
!864 = metadata !{i32 860, i32 0, metadata !225, null}
!865 = metadata !{i32 861, i32 0, metadata !866, null}
!866 = metadata !{i32 786443, metadata !1, metadata !225, i32 860, i32 0, i32 78} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_instance.c]
!867 = metadata !{i32 862, i32 0, metadata !866, null}
!868 = metadata !{i32 863, i32 0, metadata !866, null}
!869 = metadata !{i32 865, i32 0, metadata !225, null}
!870 = metadata !{i32 866, i32 0, metadata !225, null}
!871 = metadata !{i32 869, i32 0, metadata !872, null}
!872 = metadata !{i32 786443, metadata !1, metadata !225, i32 869, i32 0, i32 80} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_instance.c]
!873 = metadata !{i32 870, i32 0, metadata !874, null}
!874 = metadata !{i32 786443, metadata !1, metadata !872, i32 869, i32 0, i32 81} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_instance.c]
!875 = metadata !{i32 871, i32 0, metadata !876, null}
!876 = metadata !{i32 786443, metadata !1, metadata !874, i32 871, i32 0, i32 82} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_instance.c]
!877 = metadata !{i32 872, i32 0, metadata !878, null}
!878 = metadata !{i32 786443, metadata !1, metadata !876, i32 871, i32 0, i32 83} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_instance.c]
!879 = metadata !{i32 873, i32 0, metadata !880, null}
!880 = metadata !{i32 786443, metadata !1, metadata !878, i32 872, i32 0, i32 84} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_instance.c]
!881 = metadata !{i32 876, i32 0, metadata !882, null}
!882 = metadata !{i32 786443, metadata !1, metadata !880, i32 875, i32 0, i32 86} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_instance.c]
!883 = metadata !{i32 877, i32 0, metadata !882, null}
!884 = metadata !{i32 878, i32 0, metadata !882, null}
!885 = metadata !{i32 881, i32 0, metadata !886, null}
!886 = metadata !{i32 786443, metadata !1, metadata !878, i32 880, i32 0, i32 87} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_instance.c]
!887 = metadata !{i32 889, i32 0, metadata !236, null}
!888 = metadata !{i32 890, i32 0, metadata !236, null}
!889 = metadata !{i32 891, i32 0, metadata !236, null}
!890 = metadata !{i32 893, i32 0, metadata !236, null}
!891 = metadata !{i32 896, i32 0, metadata !236, null}
!892 = metadata !{i32 901, i32 0, metadata !893, null}
!893 = metadata !{i32 786443, metadata !1, metadata !236, i32 896, i32 0, i32 90} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_instance.c]
!894 = metadata !{i32 904, i32 0, metadata !236, null}
!895 = metadata !{i32 905, i32 0, metadata !236, null}
!896 = metadata !{i32 908, i32 0, metadata !897, null}
!897 = metadata !{i32 786443, metadata !1, metadata !236, i32 908, i32 0, i32 93} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_instance.c]
!898 = metadata !{i32 909, i32 0, metadata !899, null}
!899 = metadata !{i32 786443, metadata !1, metadata !897, i32 908, i32 0, i32 94} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_instance.c]
!900 = metadata !{i32 910, i32 0, metadata !901, null}
!901 = metadata !{i32 786443, metadata !1, metadata !899, i32 910, i32 0, i32 95} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_instance.c]
!902 = metadata !{i32 911, i32 0, metadata !903, null}
!903 = metadata !{i32 786443, metadata !1, metadata !901, i32 910, i32 0, i32 96} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_instance.c]
!904 = metadata !{i32 912, i32 0, metadata !905, null}
!905 = metadata !{i32 786443, metadata !1, metadata !903, i32 911, i32 0, i32 97} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_instance.c]
!906 = metadata !{i32 915, i32 0, metadata !907, null}
!907 = metadata !{i32 786443, metadata !1, metadata !905, i32 914, i32 0, i32 99} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_instance.c]
!908 = metadata !{i32 916, i32 0, metadata !907, null}
!909 = metadata !{i32 917, i32 0, metadata !907, null}
!910 = metadata !{i32 920, i32 0, metadata !911, null}
!911 = metadata !{i32 786443, metadata !1, metadata !903, i32 919, i32 0, i32 100} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_instance.c]
!912 = metadata !{i32 927, i32 0, metadata !173, null}
!913 = metadata !{i32 930, i32 0, metadata !173, null}
!914 = metadata !{i32 933, i32 0, metadata !163, null}
!915 = metadata !{i32 954, i32 0, metadata !247, null}
!916 = metadata !{i32 955, i32 0, metadata !247, null}
!917 = metadata !{i32 956, i32 0, metadata !247, null}
!918 = metadata !{i32 957, i32 0, metadata !247, null}
!919 = metadata !{i32 958, i32 0, metadata !247, null}
!920 = metadata !{i32 965, i32 0, metadata !247, null}
!921 = metadata !{i32 967, i32 0, metadata !922, null}
!922 = metadata !{i32 786443, metadata !1, metadata !247, i32 966, i32 0, i32 101} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_instance.c]
!923 = metadata !{i32 970, i32 0, metadata !922, null}
!924 = metadata !{i32 972, i32 0, metadata !247, null}
!925 = metadata !{i32 973, i32 0, metadata !926, null}
!926 = metadata !{i32 786443, metadata !1, metadata !247, i32 972, i32 0, i32 102} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_instance.c]
!927 = metadata !{i32 977, i32 0, metadata !926, null}
!928 = metadata !{i32 979, i32 0, metadata !247, null}
!929 = metadata !{i32 980, i32 0, metadata !247, null}
!930 = metadata !{i32 983, i32 0, metadata !257, null}
!931 = metadata !{i32 984, i32 0, metadata !257, null}
!932 = metadata !{i32 986, i32 0, metadata !257, null}
!933 = metadata !{i32 987, i32 0, metadata !257, null}
!934 = metadata !{i32 990, i32 0, metadata !257, null}
!935 = metadata !{i32 991, i32 0, metadata !257, null}
!936 = metadata !{i32 992, i32 0, metadata !257, null}
!937 = metadata !{i32 993, i32 0, metadata !257, null}
!938 = metadata !{i32 996, i32 0, metadata !265, null}
!939 = metadata !{i32 997, i32 0, metadata !265, null}
!940 = metadata !{i32 999, i32 0, metadata !265, null}
!941 = metadata !{i32 1000, i32 0, metadata !265, null}
!942 = metadata !{i32 1003, i32 0, metadata !943, null}
!943 = metadata !{i32 786443, metadata !1, metadata !265, i32 1003, i32 0, i32 108} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_instance.c]
!944 = metadata !{i32 1004, i32 0, metadata !945, null}
!945 = metadata !{i32 786443, metadata !1, metadata !943, i32 1003, i32 0, i32 109} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_instance.c]
!946 = metadata !{i32 1006, i32 0, metadata !947, null}
!947 = metadata !{i32 786443, metadata !1, metadata !265, i32 1006, i32 0, i32 110} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_instance.c]
!948 = metadata !{i32 1007, i32 0, metadata !949, null}
!949 = metadata !{i32 786443, metadata !1, metadata !947, i32 1006, i32 0, i32 111} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_instance.c]
!950 = metadata !{i32 1008, i32 0, metadata !951, null}
!951 = metadata !{i32 786443, metadata !1, metadata !949, i32 1007, i32 0, i32 112} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_instance.c]
!952 = metadata !{i32 1009, i32 0, metadata !951, null}
!953 = metadata !{i32 1010, i32 0, metadata !951, null}
!954 = metadata !{i32 1016, i32 0, metadata !274, null}
!955 = metadata !{i32 1017, i32 0, metadata !274, null}
!956 = metadata !{i32 1019, i32 0, metadata !274, null}
!957 = metadata !{i32 1021, i32 0, metadata !274, null}
!958 = metadata !{i32 1024, i32 0, metadata !959, null}
!959 = metadata !{i32 786443, metadata !1, metadata !274, i32 1024, i32 0, i32 115} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_instance.c]
!960 = metadata !{i32 1025, i32 0, metadata !961, null}
!961 = metadata !{i32 786443, metadata !1, metadata !959, i32 1024, i32 0, i32 116} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_instance.c]
!962 = metadata !{i32 1027, i32 0, metadata !963, null}
!963 = metadata !{i32 786443, metadata !1, metadata !274, i32 1027, i32 0, i32 117} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_instance.c]
!964 = metadata !{i32 1028, i32 0, metadata !965, null}
!965 = metadata !{i32 786443, metadata !1, metadata !963, i32 1027, i32 0, i32 118} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_instance.c]
!966 = metadata !{i32 1029, i32 0, metadata !967, null}
!967 = metadata !{i32 786443, metadata !1, metadata !965, i32 1028, i32 0, i32 119} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_instance.c]
!968 = metadata !{i32 1030, i32 0, metadata !967, null}
!969 = metadata !{i32 1031, i32 0, metadata !967, null}
!970 = metadata !{i32 1037, i32 0, metadata !283, null}
!971 = metadata !{i32 1038, i32 0, metadata !283, null}
!972 = metadata !{i32 1040, i32 0, metadata !283, null}
!973 = metadata !{i32 1041, i32 0, metadata !974, null}
!974 = metadata !{i32 786443, metadata !1, metadata !283, i32 1041, i32 0, i32 121} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_instance.c]
!975 = metadata !{i32 1042, i32 0, metadata !976, null}
!976 = metadata !{i32 786443, metadata !1, metadata !974, i32 1041, i32 0, i32 122} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_instance.c]
!977 = metadata !{i32 1043, i32 0, metadata !978, null}
!978 = metadata !{i32 786443, metadata !1, metadata !976, i32 1042, i32 0, i32 123} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_instance.c]
!979 = metadata !{i32 1044, i32 0, metadata !978, null}
!980 = metadata !{i32 1045, i32 0, metadata !978, null}
!981 = metadata !{i32 1051, i32 0, metadata !289, null}
!982 = metadata !{i32 1052, i32 0, metadata !289, null}
!983 = metadata !{i32 1054, i32 0, metadata !289, null}
!984 = metadata !{i32 1056, i32 0, metadata !289, null}
!985 = metadata !{i32 1059, i32 0, metadata !986, null}
!986 = metadata !{i32 786443, metadata !1, metadata !289, i32 1059, i32 0, i32 126} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_instance.c]
!987 = metadata !{i32 1060, i32 0, metadata !988, null}
!988 = metadata !{i32 786443, metadata !1, metadata !986, i32 1059, i32 0, i32 127} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_instance.c]
!989 = metadata !{i32 1062, i32 0, metadata !289, null}
!990 = metadata !{i32 1063, i32 0, metadata !991, null}
!991 = metadata !{i32 786443, metadata !1, metadata !289, i32 1062, i32 0, i32 128} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_instance.c]
!992 = metadata !{i32 1064, i32 0, metadata !991, null}
!993 = metadata !{i32 1065, i32 0, metadata !991, null}
!994 = metadata !{i32 1066, i32 0, metadata !991, null}
!995 = metadata !{i32 1071, i32 0, metadata !298, null}
!996 = metadata !{i32 1072, i32 0, metadata !298, null}
!997 = metadata !{i32 1074, i32 0, metadata !298, null}
!998 = metadata !{i32 1076, i32 0, metadata !298, null}
!999 = metadata !{i32 1079, i32 0, metadata !1000, null}
!1000 = metadata !{i32 786443, metadata !1, metadata !298, i32 1079, i32 0, i32 131} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_instance.c]
!1001 = metadata !{i32 1080, i32 0, metadata !1002, null}
!1002 = metadata !{i32 786443, metadata !1, metadata !1000, i32 1079, i32 0, i32 132} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_instance.c]
!1003 = metadata !{i32 1082, i32 0, metadata !298, null}
!1004 = metadata !{i32 1083, i32 0, metadata !1005, null}
!1005 = metadata !{i32 786443, metadata !1, metadata !298, i32 1082, i32 0, i32 133} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_instance.c]
!1006 = metadata !{i32 1084, i32 0, metadata !1005, null}
!1007 = metadata !{i32 1085, i32 0, metadata !1005, null}
!1008 = metadata !{i32 1086, i32 0, metadata !1005, null}
!1009 = metadata !{i32 1091, i32 0, metadata !307, null}
!1010 = metadata !{i32 1092, i32 0, metadata !307, null}
!1011 = metadata !{i32 1094, i32 0, metadata !307, null}
!1012 = metadata !{i32 1097, i32 0, metadata !307, null}
!1013 = metadata !{i32 1098, i32 0, metadata !307, null}
!1014 = metadata !{i32 1101, i32 0, metadata !307, null}
!1015 = metadata !{i32 1102, i32 0, metadata !307, null}
!1016 = metadata !{i32 1103, i32 0, metadata !307, null}
!1017 = metadata !{i32 1106, i32 0, metadata !310, null}
!1018 = metadata !{i32 1107, i32 0, metadata !310, null}
!1019 = metadata !{i32 1108, i32 0, metadata !310, null}
!1020 = metadata !{i32 1110, i32 0, metadata !310, null}
!1021 = metadata !{i32 1113, i32 0, metadata !310, null}
!1022 = metadata !{i32 1114, i32 0, metadata !1023, null}
!1023 = metadata !{i32 786443, metadata !1, metadata !310, i32 1113, i32 0, i32 139} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_instance.c]
!1024 = metadata !{i32 1115, i32 0, metadata !1023, null}
!1025 = metadata !{i32 1116, i32 0, metadata !1023, null}
!1026 = metadata !{i32 1118, i32 0, metadata !310, null}
!1027 = metadata !{i32 1119, i32 0, metadata !310, null}
!1028 = metadata !{i32 1122, i32 0, metadata !1029, null}
!1029 = metadata !{i32 786443, metadata !1, metadata !310, i32 1122, i32 0, i32 141} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_instance.c]
!1030 = metadata !{i32 1123, i32 0, metadata !1031, null}
!1031 = metadata !{i32 786443, metadata !1, metadata !1029, i32 1122, i32 0, i32 142} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_instance.c]
!1032 = metadata !{i32 1124, i32 0, metadata !1033, null}
!1033 = metadata !{i32 786443, metadata !1, metadata !1031, i32 1124, i32 0, i32 143} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_instance.c]
!1034 = metadata !{i32 1125, i32 0, metadata !1035, null}
!1035 = metadata !{i32 786443, metadata !1, metadata !1033, i32 1124, i32 0, i32 144} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_instance.c]
!1036 = metadata !{i32 1126, i32 0, metadata !1037, null}
!1037 = metadata !{i32 786443, metadata !1, metadata !1035, i32 1125, i32 0, i32 145} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_instance.c]
!1038 = metadata !{i32 1129, i32 0, metadata !1039, null}
!1039 = metadata !{i32 786443, metadata !1, metadata !1037, i32 1128, i32 0, i32 147} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_instance.c]
!1040 = metadata !{i32 1130, i32 0, metadata !1039, null}
!1041 = metadata !{i32 1131, i32 0, metadata !1039, null}
!1042 = metadata !{i32 1132, i32 0, metadata !1039, null}
!1043 = metadata !{i32 1135, i32 0, metadata !1044, null}
!1044 = metadata !{i32 786443, metadata !1, metadata !1035, i32 1134, i32 0, i32 148} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_instance.c]
!1045 = metadata !{i32 1143, i32 0, metadata !321, null}
!1046 = metadata !{i32 1144, i32 0, metadata !321, null}
!1047 = metadata !{i32 1145, i32 0, metadata !321, null}
!1048 = metadata !{i32 1147, i32 0, metadata !321, null}
!1049 = metadata !{i32 1150, i32 0, metadata !321, null}
!1050 = metadata !{i32 1155, i32 0, metadata !1051, null}
!1051 = metadata !{i32 786443, metadata !1, metadata !321, i32 1150, i32 0, i32 151} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_instance.c]
!1052 = metadata !{i32 1158, i32 0, metadata !321, null}
!1053 = metadata !{i32 1159, i32 0, metadata !321, null}
!1054 = metadata !{i32 1162, i32 0, metadata !1055, null}
!1055 = metadata !{i32 786443, metadata !1, metadata !321, i32 1162, i32 0, i32 154} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_instance.c]
!1056 = metadata !{i32 1163, i32 0, metadata !1057, null}
!1057 = metadata !{i32 786443, metadata !1, metadata !1055, i32 1162, i32 0, i32 155} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_instance.c]
!1058 = metadata !{i32 1164, i32 0, metadata !1059, null}
!1059 = metadata !{i32 786443, metadata !1, metadata !1057, i32 1164, i32 0, i32 156} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_instance.c]
!1060 = metadata !{i32 1165, i32 0, metadata !1061, null}
!1061 = metadata !{i32 786443, metadata !1, metadata !1059, i32 1164, i32 0, i32 157} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_instance.c]
!1062 = metadata !{i32 1166, i32 0, metadata !1063, null}
!1063 = metadata !{i32 786443, metadata !1, metadata !1061, i32 1165, i32 0, i32 158} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_instance.c]
!1064 = metadata !{i32 1169, i32 0, metadata !1065, null}
!1065 = metadata !{i32 786443, metadata !1, metadata !1063, i32 1168, i32 0, i32 160} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_instance.c]
!1066 = metadata !{i32 1170, i32 0, metadata !1065, null}
!1067 = metadata !{i32 1171, i32 0, metadata !1065, null}
!1068 = metadata !{i32 1172, i32 0, metadata !1065, null}
!1069 = metadata !{i32 1175, i32 0, metadata !1070, null}
!1070 = metadata !{i32 786443, metadata !1, metadata !1061, i32 1174, i32 0, i32 161} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_instance.c]
!1071 = metadata !{i32 1182, i32 0, metadata !258, null}
!1072 = metadata !{i32 1185, i32 0, metadata !258, null}
!1073 = metadata !{i32 1188, i32 0, metadata !247, null}
!1074 = metadata !{i32 1207, i32 0, metadata !332, null}
!1075 = metadata !{i32 1208, i32 0, metadata !332, null}
!1076 = metadata !{i32 1209, i32 0, metadata !332, null}
!1077 = metadata !{i32 1210, i32 0, metadata !332, null}
!1078 = metadata !{i32 1217, i32 0, metadata !332, null}
!1079 = metadata !{i32 1219, i32 0, metadata !1080, null}
!1080 = metadata !{i32 786443, metadata !1, metadata !332, i32 1218, i32 0, i32 162} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_instance.c]
!1081 = metadata !{i32 1222, i32 0, metadata !1080, null}
!1082 = metadata !{i32 1224, i32 0, metadata !332, null}
!1083 = metadata !{i32 1225, i32 0, metadata !1084, null}
!1084 = metadata !{i32 786443, metadata !1, metadata !332, i32 1224, i32 0, i32 163} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_instance.c]
!1085 = metadata !{i32 1229, i32 0, metadata !1084, null}
!1086 = metadata !{i32 1231, i32 0, metadata !332, null}
!1087 = metadata !{i32 1232, i32 0, metadata !332, null}
!1088 = metadata !{i32 1235, i32 0, metadata !341, null}
!1089 = metadata !{i32 1236, i32 0, metadata !341, null}
!1090 = metadata !{i32 1238, i32 0, metadata !341, null}
!1091 = metadata !{i32 1239, i32 0, metadata !341, null}
!1092 = metadata !{i32 1240, i32 0, metadata !1093, null}
!1093 = metadata !{i32 786443, metadata !1, metadata !341, i32 1239, i32 0, i32 166} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_instance.c]
!1094 = metadata !{i32 1241, i32 0, metadata !1093, null}
!1095 = metadata !{i32 1242, i32 0, metadata !1093, null}
!1096 = metadata !{i32 1245, i32 0, metadata !349, null}
!1097 = metadata !{i32 1246, i32 0, metadata !349, null}
!1098 = metadata !{i32 1248, i32 0, metadata !349, null}
!1099 = metadata !{i32 1249, i32 0, metadata !349, null}
!1100 = metadata !{i32 1250, i32 0, metadata !1101, null}
!1101 = metadata !{i32 786443, metadata !1, metadata !1102, i32 1250, i32 0, i32 169} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_instance.c]
!1102 = metadata !{i32 786443, metadata !1, metadata !349, i32 1249, i32 0, i32 168} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_instance.c]
!1103 = metadata !{i32 1251, i32 0, metadata !1104, null}
!1104 = metadata !{i32 786443, metadata !1, metadata !1101, i32 1250, i32 0, i32 170} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_instance.c]
!1105 = metadata !{i32 1253, i32 0, metadata !1106, null}
!1106 = metadata !{i32 786443, metadata !1, metadata !1102, i32 1253, i32 0, i32 171} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_instance.c]
!1107 = metadata !{i32 1254, i32 0, metadata !1108, null}
!1108 = metadata !{i32 786443, metadata !1, metadata !1106, i32 1253, i32 0, i32 172} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_instance.c]
!1109 = metadata !{i32 1255, i32 0, metadata !1110, null}
!1110 = metadata !{i32 786443, metadata !1, metadata !1108, i32 1254, i32 0, i32 173} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_instance.c]
!1111 = metadata !{i32 1256, i32 0, metadata !1110, null}
!1112 = metadata !{i32 1262, i32 0, metadata !358, null}
!1113 = metadata !{i32 1263, i32 0, metadata !358, null}
!1114 = metadata !{i32 1265, i32 0, metadata !358, null}
!1115 = metadata !{i32 1267, i32 0, metadata !358, null}
!1116 = metadata !{i32 1268, i32 0, metadata !1117, null}
!1117 = metadata !{i32 786443, metadata !1, metadata !1118, i32 1268, i32 0, i32 176} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_instance.c]
!1118 = metadata !{i32 786443, metadata !1, metadata !358, i32 1267, i32 0, i32 175} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_instance.c]
!1119 = metadata !{i32 1269, i32 0, metadata !1120, null}
!1120 = metadata !{i32 786443, metadata !1, metadata !1117, i32 1268, i32 0, i32 177} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_instance.c]
!1121 = metadata !{i32 1271, i32 0, metadata !1122, null}
!1122 = metadata !{i32 786443, metadata !1, metadata !1118, i32 1271, i32 0, i32 178} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_instance.c]
!1123 = metadata !{i32 1272, i32 0, metadata !1124, null}
!1124 = metadata !{i32 786443, metadata !1, metadata !1122, i32 1271, i32 0, i32 179} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_instance.c]
!1125 = metadata !{i32 1273, i32 0, metadata !1126, null}
!1126 = metadata !{i32 786443, metadata !1, metadata !1124, i32 1272, i32 0, i32 180} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_instance.c]
!1127 = metadata !{i32 1274, i32 0, metadata !1126, null}
!1128 = metadata !{i32 1280, i32 0, metadata !367, null}
!1129 = metadata !{i32 1281, i32 0, metadata !367, null}
!1130 = metadata !{i32 1283, i32 0, metadata !367, null}
!1131 = metadata !{i32 1284, i32 0, metadata !1132, null}
!1132 = metadata !{i32 786443, metadata !1, metadata !367, i32 1284, i32 0, i32 182} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_instance.c]
!1133 = metadata !{i32 1285, i32 0, metadata !1134, null}
!1134 = metadata !{i32 786443, metadata !1, metadata !1132, i32 1284, i32 0, i32 183} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_instance.c]
!1135 = metadata !{i32 1286, i32 0, metadata !1136, null}
!1136 = metadata !{i32 786443, metadata !1, metadata !1134, i32 1285, i32 0, i32 184} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_instance.c]
!1137 = metadata !{i32 1287, i32 0, metadata !1136, null}
!1138 = metadata !{i32 1292, i32 0, metadata !373, null}
!1139 = metadata !{i32 1293, i32 0, metadata !373, null}
!1140 = metadata !{i32 1295, i32 0, metadata !373, null}
!1141 = metadata !{i32 1297, i32 0, metadata !373, null}
!1142 = metadata !{i32 1298, i32 0, metadata !1143, null}
!1143 = metadata !{i32 786443, metadata !1, metadata !1144, i32 1298, i32 0, i32 187} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_instance.c]
!1144 = metadata !{i32 786443, metadata !1, metadata !373, i32 1297, i32 0, i32 186} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_instance.c]
!1145 = metadata !{i32 1299, i32 0, metadata !1146, null}
!1146 = metadata !{i32 786443, metadata !1, metadata !1143, i32 1298, i32 0, i32 188} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_instance.c]
!1147 = metadata !{i32 1301, i32 0, metadata !1144, null}
!1148 = metadata !{i32 1303, i32 0, metadata !1149, null}
!1149 = metadata !{i32 786443, metadata !1, metadata !1144, i32 1302, i32 0, i32 189} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_instance.c]
!1150 = metadata !{i32 1304, i32 0, metadata !1149, null}
!1151 = metadata !{i32 1305, i32 0, metadata !1149, null}
!1152 = metadata !{i32 1310, i32 0, metadata !382, null}
!1153 = metadata !{i32 1311, i32 0, metadata !382, null}
!1154 = metadata !{i32 1313, i32 0, metadata !382, null}
!1155 = metadata !{i32 1315, i32 0, metadata !382, null}
!1156 = metadata !{i32 1316, i32 0, metadata !1157, null}
!1157 = metadata !{i32 786443, metadata !1, metadata !1158, i32 1316, i32 0, i32 192} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_instance.c]
!1158 = metadata !{i32 786443, metadata !1, metadata !382, i32 1315, i32 0, i32 191} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_instance.c]
!1159 = metadata !{i32 1317, i32 0, metadata !1160, null}
!1160 = metadata !{i32 786443, metadata !1, metadata !1157, i32 1316, i32 0, i32 193} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_instance.c]
!1161 = metadata !{i32 1319, i32 0, metadata !1158, null}
!1162 = metadata !{i32 1321, i32 0, metadata !1163, null}
!1163 = metadata !{i32 786443, metadata !1, metadata !1158, i32 1320, i32 0, i32 194} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_instance.c]
!1164 = metadata !{i32 1322, i32 0, metadata !1163, null}
!1165 = metadata !{i32 1323, i32 0, metadata !1163, null}
!1166 = metadata !{i32 1328, i32 0, metadata !391, null}
!1167 = metadata !{i32 1329, i32 0, metadata !391, null}
!1168 = metadata !{i32 1331, i32 0, metadata !391, null}
!1169 = metadata !{i32 1332, i32 0, metadata !1170, null}
!1170 = metadata !{i32 786443, metadata !1, metadata !391, i32 1331, i32 0, i32 196} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_instance.c]
!1171 = metadata !{i32 1333, i32 0, metadata !1170, null}
!1172 = metadata !{i32 1334, i32 0, metadata !1173, null}
!1173 = metadata !{i32 786443, metadata !1, metadata !1170, i32 1333, i32 0, i32 197} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_instance.c]
!1174 = metadata !{i32 1335, i32 0, metadata !1173, null}
!1175 = metadata !{i32 1340, i32 0, metadata !394, null}
!1176 = metadata !{i32 1341, i32 0, metadata !394, null}
!1177 = metadata !{i32 1342, i32 0, metadata !394, null}
!1178 = metadata !{i32 1344, i32 0, metadata !394, null}
!1179 = metadata !{i32 1345, i32 0, metadata !1180, null}
!1180 = metadata !{i32 786443, metadata !1, metadata !394, i32 1344, i32 0, i32 199} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_instance.c]
!1181 = metadata !{i32 1347, i32 0, metadata !1180, null}
!1182 = metadata !{i32 1349, i32 0, metadata !1183, null}
!1183 = metadata !{i32 786443, metadata !1, metadata !1184, i32 1348, i32 0, i32 202} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_instance.c]
!1184 = metadata !{i32 786443, metadata !1, metadata !1185, i32 1348, i32 0, i32 201} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_instance.c]
!1185 = metadata !{i32 786443, metadata !1, metadata !1180, i32 1347, i32 0, i32 200} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_instance.c]
!1186 = metadata !{i32 1348, i32 0, metadata !1184, null}
!1187 = metadata !{i32 1350, i32 0, metadata !1188, null}
!1188 = metadata !{i32 786443, metadata !1, metadata !1183, i32 1350, i32 0, i32 203} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_instance.c]
!1189 = metadata !{i32 1351, i32 0, metadata !1190, null}
!1190 = metadata !{i32 786443, metadata !1, metadata !1188, i32 1350, i32 0, i32 204} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_instance.c]
!1191 = metadata !{i32 1352, i32 0, metadata !1192, null}
!1192 = metadata !{i32 786443, metadata !1, metadata !1190, i32 1351, i32 0, i32 205} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_instance.c]
!1193 = metadata !{i32 1355, i32 0, metadata !1194, null}
!1194 = metadata !{i32 786443, metadata !1, metadata !1192, i32 1354, i32 0, i32 207} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_instance.c]
!1195 = metadata !{i32 1358, i32 0, metadata !1196, null}
!1196 = metadata !{i32 786443, metadata !1, metadata !1190, i32 1357, i32 0, i32 208} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_instance.c]
!1197 = metadata !{i32 1362, i32 0, metadata !1185, null}
!1198 = metadata !{i32 1363, i32 0, metadata !1199, null}
!1199 = metadata !{i32 786443, metadata !1, metadata !1185, i32 1362, i32 0, i32 209} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_instance.c]
!1200 = metadata !{i32 1364, i32 0, metadata !1199, null}
!1201 = metadata !{i32 1369, i32 0, metadata !342, null}
!1202 = metadata !{i32 1372, i32 0, metadata !342, null}
!1203 = metadata !{i32 1375, i32 0, metadata !332, null}
!1204 = metadata !{i32 1394, i32 0, metadata !404, null}
!1205 = metadata !{i32 1395, i32 0, metadata !404, null}
!1206 = metadata !{i32 1396, i32 0, metadata !404, null}
!1207 = metadata !{i32 1397, i32 0, metadata !404, null}
!1208 = metadata !{i32 1398, i32 0, metadata !404, null}
!1209 = metadata !{i32 1405, i32 0, metadata !404, null}
!1210 = metadata !{i32 1407, i32 0, metadata !1211, null}
!1211 = metadata !{i32 786443, metadata !1, metadata !404, i32 1406, i32 0, i32 210} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_instance.c]
!1212 = metadata !{i32 1410, i32 0, metadata !1211, null}
!1213 = metadata !{i32 1412, i32 0, metadata !404, null}
!1214 = metadata !{i32 1413, i32 0, metadata !1215, null}
!1215 = metadata !{i32 786443, metadata !1, metadata !404, i32 1412, i32 0, i32 211} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_instance.c]
!1216 = metadata !{i32 1417, i32 0, metadata !1215, null}
!1217 = metadata !{i32 1419, i32 0, metadata !404, null}
!1218 = metadata !{i32 1420, i32 0, metadata !404, null}
!1219 = metadata !{i32 1421, i32 0, metadata !404, null}
!1220 = metadata !{i32 1424, i32 0, metadata !414, null}
!1221 = metadata !{i32 1425, i32 0, metadata !414, null}
!1222 = metadata !{i32 1427, i32 0, metadata !414, null}
!1223 = metadata !{i32 1428, i32 0, metadata !414, null}
!1224 = metadata !{i32 1429, i32 0, metadata !1225, null}
!1225 = metadata !{i32 786443, metadata !1, metadata !414, i32 1428, i32 0, i32 214} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_instance.c]
!1226 = metadata !{i32 1430, i32 0, metadata !1225, null}
!1227 = metadata !{i32 1431, i32 0, metadata !1225, null}
!1228 = metadata !{i32 1432, i32 0, metadata !1225, null}
!1229 = metadata !{i32 1435, i32 0, metadata !422, null}
!1230 = metadata !{i32 1436, i32 0, metadata !422, null}
!1231 = metadata !{i32 1438, i32 0, metadata !422, null}
!1232 = metadata !{i32 1439, i32 0, metadata !422, null}
!1233 = metadata !{i32 1440, i32 0, metadata !1234, null}
!1234 = metadata !{i32 786443, metadata !1, metadata !1235, i32 1440, i32 0, i32 217} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_instance.c]
!1235 = metadata !{i32 786443, metadata !1, metadata !422, i32 1439, i32 0, i32 216} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_instance.c]
!1236 = metadata !{i32 1441, i32 0, metadata !1237, null}
!1237 = metadata !{i32 786443, metadata !1, metadata !1234, i32 1440, i32 0, i32 218} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_instance.c]
!1238 = metadata !{i32 1443, i32 0, metadata !1239, null}
!1239 = metadata !{i32 786443, metadata !1, metadata !1235, i32 1443, i32 0, i32 219} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_instance.c]
!1240 = metadata !{i32 1444, i32 0, metadata !1241, null}
!1241 = metadata !{i32 786443, metadata !1, metadata !1239, i32 1443, i32 0, i32 220} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_instance.c]
!1242 = metadata !{i32 1445, i32 0, metadata !1243, null}
!1243 = metadata !{i32 786443, metadata !1, metadata !1241, i32 1444, i32 0, i32 221} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_instance.c]
!1244 = metadata !{i32 1446, i32 0, metadata !1243, null}
!1245 = metadata !{i32 1447, i32 0, metadata !1243, null}
!1246 = metadata !{i32 1453, i32 0, metadata !431, null}
!1247 = metadata !{i32 1454, i32 0, metadata !431, null}
!1248 = metadata !{i32 1456, i32 0, metadata !431, null}
!1249 = metadata !{i32 1458, i32 0, metadata !431, null}
!1250 = metadata !{i32 1459, i32 0, metadata !1251, null}
!1251 = metadata !{i32 786443, metadata !1, metadata !1252, i32 1459, i32 0, i32 224} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_instance.c]
!1252 = metadata !{i32 786443, metadata !1, metadata !431, i32 1458, i32 0, i32 223} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_instance.c]
!1253 = metadata !{i32 1460, i32 0, metadata !1254, null}
!1254 = metadata !{i32 786443, metadata !1, metadata !1251, i32 1459, i32 0, i32 225} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_instance.c]
!1255 = metadata !{i32 1462, i32 0, metadata !1256, null}
!1256 = metadata !{i32 786443, metadata !1, metadata !1252, i32 1462, i32 0, i32 226} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_instance.c]
!1257 = metadata !{i32 1463, i32 0, metadata !1258, null}
!1258 = metadata !{i32 786443, metadata !1, metadata !1256, i32 1462, i32 0, i32 227} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_instance.c]
!1259 = metadata !{i32 1464, i32 0, metadata !1260, null}
!1260 = metadata !{i32 786443, metadata !1, metadata !1258, i32 1463, i32 0, i32 228} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_instance.c]
!1261 = metadata !{i32 1465, i32 0, metadata !1260, null}
!1262 = metadata !{i32 1466, i32 0, metadata !1260, null}
!1263 = metadata !{i32 1472, i32 0, metadata !440, null}
!1264 = metadata !{i32 1473, i32 0, metadata !440, null}
!1265 = metadata !{i32 1475, i32 0, metadata !440, null}
!1266 = metadata !{i32 1476, i32 0, metadata !1267, null}
!1267 = metadata !{i32 786443, metadata !1, metadata !440, i32 1476, i32 0, i32 230} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_instance.c]
!1268 = metadata !{i32 1477, i32 0, metadata !1269, null}
!1269 = metadata !{i32 786443, metadata !1, metadata !1267, i32 1476, i32 0, i32 231} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_instance.c]
!1270 = metadata !{i32 1478, i32 0, metadata !1271, null}
!1271 = metadata !{i32 786443, metadata !1, metadata !1269, i32 1477, i32 0, i32 232} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_instance.c]
!1272 = metadata !{i32 1479, i32 0, metadata !1271, null}
!1273 = metadata !{i32 1480, i32 0, metadata !1271, null}
!1274 = metadata !{i32 1485, i32 0, metadata !446, null}
!1275 = metadata !{i32 1486, i32 0, metadata !446, null}
!1276 = metadata !{i32 1488, i32 0, metadata !446, null}
!1277 = metadata !{i32 1490, i32 0, metadata !446, null}
!1278 = metadata !{i32 1491, i32 0, metadata !1279, null}
!1279 = metadata !{i32 786443, metadata !1, metadata !1280, i32 1491, i32 0, i32 235} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_instance.c]
!1280 = metadata !{i32 786443, metadata !1, metadata !446, i32 1490, i32 0, i32 234} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_instance.c]
!1281 = metadata !{i32 1492, i32 0, metadata !1282, null}
!1282 = metadata !{i32 786443, metadata !1, metadata !1279, i32 1491, i32 0, i32 236} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_instance.c]
!1283 = metadata !{i32 1494, i32 0, metadata !1280, null}
!1284 = metadata !{i32 1496, i32 0, metadata !1285, null}
!1285 = metadata !{i32 786443, metadata !1, metadata !1280, i32 1495, i32 0, i32 237} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_instance.c]
!1286 = metadata !{i32 1497, i32 0, metadata !1285, null}
!1287 = metadata !{i32 1498, i32 0, metadata !1285, null}
!1288 = metadata !{i32 1499, i32 0, metadata !1285, null}
!1289 = metadata !{i32 1504, i32 0, metadata !455, null}
!1290 = metadata !{i32 1505, i32 0, metadata !455, null}
!1291 = metadata !{i32 1507, i32 0, metadata !455, null}
!1292 = metadata !{i32 1509, i32 0, metadata !455, null}
!1293 = metadata !{i32 1510, i32 0, metadata !1294, null}
!1294 = metadata !{i32 786443, metadata !1, metadata !1295, i32 1510, i32 0, i32 240} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_instance.c]
!1295 = metadata !{i32 786443, metadata !1, metadata !455, i32 1509, i32 0, i32 239} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_instance.c]
!1296 = metadata !{i32 1511, i32 0, metadata !1297, null}
!1297 = metadata !{i32 786443, metadata !1, metadata !1294, i32 1510, i32 0, i32 241} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_instance.c]
!1298 = metadata !{i32 1513, i32 0, metadata !1295, null}
!1299 = metadata !{i32 1515, i32 0, metadata !1300, null}
!1300 = metadata !{i32 786443, metadata !1, metadata !1295, i32 1514, i32 0, i32 242} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_instance.c]
!1301 = metadata !{i32 1516, i32 0, metadata !1300, null}
!1302 = metadata !{i32 1517, i32 0, metadata !1300, null}
!1303 = metadata !{i32 1518, i32 0, metadata !1300, null}
!1304 = metadata !{i32 1523, i32 0, metadata !464, null}
!1305 = metadata !{i32 1524, i32 0, metadata !464, null}
!1306 = metadata !{i32 1526, i32 0, metadata !464, null}
!1307 = metadata !{i32 1527, i32 0, metadata !1308, null}
!1308 = metadata !{i32 786443, metadata !1, metadata !464, i32 1526, i32 0, i32 244} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_instance.c]
!1309 = metadata !{i32 1528, i32 0, metadata !1308, null}
!1310 = metadata !{i32 1529, i32 0, metadata !1311, null}
!1311 = metadata !{i32 786443, metadata !1, metadata !1308, i32 1528, i32 0, i32 245} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_instance.c]
!1312 = metadata !{i32 1530, i32 0, metadata !1311, null}
!1313 = metadata !{i32 1531, i32 0, metadata !1311, null}
!1314 = metadata !{i32 1536, i32 0, metadata !467, null}
!1315 = metadata !{i32 1537, i32 0, metadata !467, null}
!1316 = metadata !{i32 1538, i32 0, metadata !467, null}
!1317 = metadata !{i32 1540, i32 0, metadata !467, null}
!1318 = metadata !{i32 1541, i32 0, metadata !1319, null}
!1319 = metadata !{i32 786443, metadata !1, metadata !467, i32 1540, i32 0, i32 247} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_instance.c]
!1320 = metadata !{i32 1543, i32 0, metadata !1319, null}
!1321 = metadata !{i32 1545, i32 0, metadata !1322, null}
!1322 = metadata !{i32 786443, metadata !1, metadata !1323, i32 1544, i32 0, i32 250} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_instance.c]
!1323 = metadata !{i32 786443, metadata !1, metadata !1324, i32 1544, i32 0, i32 249} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_instance.c]
!1324 = metadata !{i32 786443, metadata !1, metadata !1319, i32 1543, i32 0, i32 248} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_instance.c]
!1325 = metadata !{i32 1544, i32 0, metadata !1323, null}
!1326 = metadata !{i32 1546, i32 0, metadata !1327, null}
!1327 = metadata !{i32 786443, metadata !1, metadata !1322, i32 1546, i32 0, i32 251} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_instance.c]
!1328 = metadata !{i32 1547, i32 0, metadata !1329, null}
!1329 = metadata !{i32 786443, metadata !1, metadata !1327, i32 1546, i32 0, i32 252} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_instance.c]
!1330 = metadata !{i32 1548, i32 0, metadata !1331, null}
!1331 = metadata !{i32 786443, metadata !1, metadata !1329, i32 1547, i32 0, i32 253} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_instance.c]
!1332 = metadata !{i32 1551, i32 0, metadata !1333, null}
!1333 = metadata !{i32 786443, metadata !1, metadata !1331, i32 1550, i32 0, i32 255} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_instance.c]
!1334 = metadata !{i32 1554, i32 0, metadata !1335, null}
!1335 = metadata !{i32 786443, metadata !1, metadata !1329, i32 1553, i32 0, i32 256} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_instance.c]
!1336 = metadata !{i32 1558, i32 0, metadata !1324, null}
!1337 = metadata !{i32 1559, i32 0, metadata !1338, null}
!1338 = metadata !{i32 786443, metadata !1, metadata !1324, i32 1558, i32 0, i32 257} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_instance.c]
!1339 = metadata !{i32 1560, i32 0, metadata !1338, null}
!1340 = metadata !{i32 1561, i32 0, metadata !1338, null}
!1341 = metadata !{i32 1566, i32 0, metadata !415, null}
!1342 = metadata !{i32 1569, i32 0, metadata !415, null}
!1343 = metadata !{i32 1572, i32 0, metadata !404, null}
