; ModuleID = '../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DenseMtx/src/DenseMtx_instance.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct._DenseMtx = type { i32, i32, i32, i32, i32, i32, i32, i32*, i32*, double*, %struct._DV, %struct._DenseMtx* }
%struct._DV = type { i32, i32, i32, double* }

@stderr = external global %struct._IO_FILE*
@.str = private unnamed_addr constant [48 x i8] c"\0A fatal error in DenseMtx_rowid(%p)\0A bad input\0A\00", align 1
@.str1 = private unnamed_addr constant [48 x i8] c"\0A fatal error in DenseMtx_colid(%p)\0A bad input\0A\00", align 1
@.str2 = private unnamed_addr constant [59 x i8] c"\0A fatal error in DenseMtx_dimensions(%p,%p,%p)\0A bad input\0A\00", align 1
@.str3 = private unnamed_addr constant [55 x i8] c"\0A fatal error in DenseMtx_rowIncrement(%p)\0A bad input\0A\00", align 1
@.str4 = private unnamed_addr constant [58 x i8] c"\0A fatal error in DenseMtx_columnIncrement(%p)\0A bad input\0A\00", align 1
@.str5 = private unnamed_addr constant [59 x i8] c"\0A fatal error in DenseMtx_rowIndices(%p,%p,%p)\0A bad input\0A\00", align 1
@.str6 = private unnamed_addr constant [62 x i8] c"\0A fatal error in DenseMtx_columnIndices(%p,%p,%p)\0A bad input\0A\00", align 1
@.str7 = private unnamed_addr constant [50 x i8] c"\0A fatal error in DenseMtx_entries(%p)\0A bad input\0A\00", align 1
@.str8 = private unnamed_addr constant [52 x i8] c"\0A fatal error in DenseMtx_workspace(%p)\0A bad input\0A\00", align 1
@.str9 = private unnamed_addr constant [62 x i8] c"\0A fatal error in DenseMtx_realEntry()\0A mtx or pValue is NULL\0A\00", align 1
@.str10 = private unnamed_addr constant [70 x i8] c"\0A fatal error in DenseMtx_realEntry()\0A mtx type must be SPOOLES_REAL\0A\00", align 1
@.str11 = private unnamed_addr constant [72 x i8] c"\0A fatal error in DenseMtx_realEntry()\0A irow = %d, mtx->nrow = %d input\0A\00", align 1
@.str12 = private unnamed_addr constant [72 x i8] c"\0A fatal error in DenseMtx_realEntry()\0A jcol = %d, mtx->ncol = %d input\0A\00", align 1
@.str13 = private unnamed_addr constant [62 x i8] c"\0A fatal error in DenseMtx_realEntry()\0A mtx->entries is NULL \0A\00", align 1
@.str14 = private unnamed_addr constant [71 x i8] c"\0A fatal error in DenseMtx_complexEntry()\0A mtxm pReal or pImag is NULL\0A\00", align 1
@.str15 = private unnamed_addr constant [76 x i8] c"\0A fatal error in DenseMtx_complexEntry()\0A mtx type must be SPOOLES_COMPLEX\0A\00", align 1
@.str16 = private unnamed_addr constant [75 x i8] c"\0A fatal error in DenseMtx_complexEntry()\0A irow = %d, mtx->nrow = %d input\0A\00", align 1
@.str17 = private unnamed_addr constant [75 x i8] c"\0A fatal error in DenseMtx_complexEntry()\0A jcol = %d, mtx->ncol = %d input\0A\00", align 1
@.str18 = private unnamed_addr constant [65 x i8] c"\0A fatal error in DenseMtx_complexEntry()\0A mtx->entries is NULL \0A\00", align 1
@.str19 = private unnamed_addr constant [55 x i8] c"\0A fatal error in DenseMtx_setRealEntry()\0A mtx is NULL\0A\00", align 1
@.str20 = private unnamed_addr constant [73 x i8] c"\0A fatal error in DenseMtx_setRealEntry()\0A mtx type must be SPOOLES_REAL\0A\00", align 1
@.str21 = private unnamed_addr constant [75 x i8] c"\0A fatal error in DenseMtx_setRealEntry()\0A irow = %d, mtx->nrow = %d input\0A\00", align 1
@.str22 = private unnamed_addr constant [75 x i8] c"\0A fatal error in DenseMtx_setRealEntry()\0A jcol = %d, mtx->ncol = %d input\0A\00", align 1
@.str23 = private unnamed_addr constant [65 x i8] c"\0A fatal error in DenseMtx_setRealEntry()\0A mtx->entries is NULL \0A\00", align 1
@.str24 = private unnamed_addr constant [58 x i8] c"\0A fatal error in DenseMtx_setComplexEntry()\0A mtx is NULL\0A\00", align 1
@.str25 = private unnamed_addr constant [79 x i8] c"\0A fatal error in DenseMtx_setComplexEntry()\0A mtx type must be SPOOLES_COMPLEX\0A\00", align 1
@.str26 = private unnamed_addr constant [78 x i8] c"\0A fatal error in DenseMtx_setComplexEntry()\0A irow = %d, mtx->nrow = %d input\0A\00", align 1
@.str27 = private unnamed_addr constant [78 x i8] c"\0A fatal error in DenseMtx_setComplexEntry()\0A jcol = %d, mtx->ncol = %d input\0A\00", align 1
@.str28 = private unnamed_addr constant [68 x i8] c"\0A fatal error in DenseMtx_setComplexEntry()\0A mtx->entries is NULL \0A\00", align 1
@.str29 = private unnamed_addr constant [40 x i8] c"\0A error in DenseMtx_row()\0A mtx is NULL\0A\00", align 1
@.str30 = private unnamed_addr constant [44 x i8] c"\0A error in DenseMtx_row()\0A invalid type %d\0A\00", align 1
@.str31 = private unnamed_addr constant [47 x i8] c"\0A error in DenseMtx_row()\0A %d rows, irow = %d\0A\00", align 1
@.str32 = private unnamed_addr constant [44 x i8] c"\0A error in DenseMtx_row()\0A prowent is NULL\0A\00", align 1
@.str33 = private unnamed_addr constant [43 x i8] c"\0A error in DenseMtx_column()\0A mtx is NULL\0A\00", align 1
@.str34 = private unnamed_addr constant [47 x i8] c"\0A error in DenseMtx_column()\0A invalid type %d\0A\00", align 1
@.str35 = private unnamed_addr constant [53 x i8] c"\0A error in DenseMtx_column()\0A %d columns, jcol = %d\0A\00", align 1
@.str36 = private unnamed_addr constant [47 x i8] c"\0A error in DenseMtx_column()\0A pcolent is NULL\0A\00", align 1

; Function Attrs: nounwind optsize uwtable
define i32 @DenseMtx_rowid(%struct._DenseMtx* %mtx) #0 {
entry:
  %cmp = icmp eq %struct._DenseMtx* %mtx, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([48 x i8]* @.str, i64 0, i64 0), %struct._DenseMtx* null) #5
  tail call void @exit(i32 -1) #6
  unreachable

if.end:                                           ; preds = %entry
  %rowid = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 1
  %1 = load i32* %rowid, align 4, !tbaa !3
  ret i32 %1
}

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #1

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32) #2

; Function Attrs: nounwind optsize uwtable
define i32 @DenseMtx_colid(%struct._DenseMtx* %mtx) #0 {
entry:
  %cmp = icmp eq %struct._DenseMtx* %mtx, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([48 x i8]* @.str1, i64 0, i64 0), %struct._DenseMtx* null) #5
  tail call void @exit(i32 -1) #6
  unreachable

if.end:                                           ; preds = %entry
  %colid = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 2
  %1 = load i32* %colid, align 4, !tbaa !3
  ret i32 %1
}

; Function Attrs: nounwind optsize uwtable
define void @DenseMtx_dimensions(%struct._DenseMtx* %mtx, i32* %pnrow, i32* %pncol) #0 {
entry:
  %cmp = icmp eq %struct._DenseMtx* %mtx, null
  %cmp1 = icmp eq i32* %pnrow, null
  %or.cond = or i1 %cmp, %cmp1
  %cmp3 = icmp eq i32* %pncol, null
  %or.cond11 = or i1 %or.cond, %cmp3
  br i1 %or.cond11, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([59 x i8]* @.str2, i64 0, i64 0), %struct._DenseMtx* %mtx, i32* %pnrow, i32* %pncol) #5
  tail call void @exit(i32 -1) #6
  unreachable

if.end:                                           ; preds = %entry
  %nrow = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 3
  %1 = load i32* %nrow, align 4, !tbaa !3
  store i32 %1, i32* %pnrow, align 4, !tbaa !3
  %ncol = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 4
  %2 = load i32* %ncol, align 4, !tbaa !3
  store i32 %2, i32* %pncol, align 4, !tbaa !3
  ret void
}

; Function Attrs: nounwind optsize uwtable
define i32 @DenseMtx_rowIncrement(%struct._DenseMtx* %mtx) #0 {
entry:
  %cmp = icmp eq %struct._DenseMtx* %mtx, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([55 x i8]* @.str3, i64 0, i64 0), %struct._DenseMtx* null) #5
  tail call void @exit(i32 -1) #6
  unreachable

if.end:                                           ; preds = %entry
  %inc1 = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 5
  %1 = load i32* %inc1, align 4, !tbaa !3
  ret i32 %1
}

; Function Attrs: nounwind optsize uwtable
define i32 @DenseMtx_columnIncrement(%struct._DenseMtx* %mtx) #0 {
entry:
  %cmp = icmp eq %struct._DenseMtx* %mtx, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([58 x i8]* @.str4, i64 0, i64 0), %struct._DenseMtx* null) #5
  tail call void @exit(i32 -1) #6
  unreachable

if.end:                                           ; preds = %entry
  %inc2 = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 6
  %1 = load i32* %inc2, align 4, !tbaa !3
  ret i32 %1
}

; Function Attrs: nounwind optsize uwtable
define void @DenseMtx_rowIndices(%struct._DenseMtx* %mtx, i32* %pnrow, i32** %prowind) #0 {
entry:
  %cmp = icmp eq %struct._DenseMtx* %mtx, null
  %cmp1 = icmp eq i32* %pnrow, null
  %or.cond = or i1 %cmp, %cmp1
  %cmp3 = icmp eq i32** %prowind, null
  %or.cond11 = or i1 %or.cond, %cmp3
  br i1 %or.cond11, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([59 x i8]* @.str5, i64 0, i64 0), %struct._DenseMtx* %mtx, i32* %pnrow, i32** %prowind) #5
  tail call void @exit(i32 -1) #6
  unreachable

if.end:                                           ; preds = %entry
  %nrow = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 3
  %1 = load i32* %nrow, align 4, !tbaa !3
  store i32 %1, i32* %pnrow, align 4, !tbaa !3
  %rowind = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 7
  %2 = load i32** %rowind, align 8, !tbaa !0
  store i32* %2, i32** %prowind, align 8, !tbaa !0
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @DenseMtx_columnIndices(%struct._DenseMtx* %mtx, i32* %pncol, i32** %pcolind) #0 {
entry:
  %cmp = icmp eq %struct._DenseMtx* %mtx, null
  %cmp1 = icmp eq i32* %pncol, null
  %or.cond = or i1 %cmp, %cmp1
  %cmp3 = icmp eq i32** %pcolind, null
  %or.cond11 = or i1 %or.cond, %cmp3
  br i1 %or.cond11, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([62 x i8]* @.str6, i64 0, i64 0), %struct._DenseMtx* %mtx, i32* %pncol, i32** %pcolind) #5
  tail call void @exit(i32 -1) #6
  unreachable

if.end:                                           ; preds = %entry
  %ncol = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 4
  %1 = load i32* %ncol, align 4, !tbaa !3
  store i32 %1, i32* %pncol, align 4, !tbaa !3
  %colind = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 8
  %2 = load i32** %colind, align 8, !tbaa !0
  store i32* %2, i32** %pcolind, align 8, !tbaa !0
  ret void
}

; Function Attrs: nounwind optsize uwtable
define double* @DenseMtx_entries(%struct._DenseMtx* %mtx) #0 {
entry:
  %cmp = icmp eq %struct._DenseMtx* %mtx, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([50 x i8]* @.str7, i64 0, i64 0), %struct._DenseMtx* null) #5
  tail call void @exit(i32 -1) #6
  unreachable

if.end:                                           ; preds = %entry
  %entries = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 9
  %1 = load double** %entries, align 8, !tbaa !0
  ret double* %1
}

; Function Attrs: nounwind optsize uwtable
define i8* @DenseMtx_workspace(%struct._DenseMtx* %mtx) #0 {
entry:
  %cmp = icmp eq %struct._DenseMtx* %mtx, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([52 x i8]* @.str8, i64 0, i64 0), %struct._DenseMtx* null) #5
  tail call void @exit(i32 -1) #6
  unreachable

if.end:                                           ; preds = %entry
  %wrkDV = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 10
  %call1 = tail call double* @DV_entries(%struct._DV* %wrkDV) #5
  %1 = bitcast double* %call1 to i8*
  ret i8* %1
}

; Function Attrs: optsize
declare double* @DV_entries(%struct._DV*) #3

; Function Attrs: nounwind optsize uwtable
define void @DenseMtx_realEntry(%struct._DenseMtx* %mtx, i32 %irow, i32 %jcol, double* %pValue) #0 {
entry:
  %cmp = icmp eq %struct._DenseMtx* %mtx, null
  %cmp1 = icmp eq double* %pValue, null
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %1 = tail call i64 @fwrite(i8* getelementptr inbounds ([62 x i8]* @.str9, i64 0, i64 0), i64 61, i64 1, %struct._IO_FILE* %0)
  tail call void @exit(i32 -1) #6
  unreachable

if.end:                                           ; preds = %entry
  %type = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 0
  %2 = load i32* %type, align 4, !tbaa !3
  %cmp2 = icmp eq i32 %2, 1
  br i1 %cmp2, label %if.end5, label %if.then3

if.then3:                                         ; preds = %if.end
  %3 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %4 = tail call i64 @fwrite(i8* getelementptr inbounds ([70 x i8]* @.str10, i64 0, i64 0), i64 69, i64 1, %struct._IO_FILE* %3)
  tail call void @exit(i32 -1) #6
  unreachable

if.end5:                                          ; preds = %if.end
  %cmp6 = icmp sgt i32 %irow, -1
  %nrow10.phi.trans.insert = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 3
  %.pre = load i32* %nrow10.phi.trans.insert, align 4, !tbaa !3
  %cmp8 = icmp sgt i32 %.pre, %irow
  %or.cond43 = and i1 %cmp6, %cmp8
  br i1 %or.cond43, label %if.end12, label %if.then9

if.then9:                                         ; preds = %if.end5
  %5 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call11 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([72 x i8]* @.str11, i64 0, i64 0), i32 %irow, i32 %.pre) #5
  tail call void @exit(i32 -1) #6
  unreachable

if.end12:                                         ; preds = %if.end5
  %cmp13 = icmp sgt i32 %jcol, -1
  %ncol17.phi.trans.insert = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 4
  %.pre42 = load i32* %ncol17.phi.trans.insert, align 4, !tbaa !3
  %cmp15 = icmp sgt i32 %.pre42, %jcol
  %or.cond44 = and i1 %cmp13, %cmp15
  br i1 %or.cond44, label %if.end19, label %if.then16

if.then16:                                        ; preds = %if.end12
  %6 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call18 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %6, i8* getelementptr inbounds ([72 x i8]* @.str12, i64 0, i64 0), i32 %jcol, i32 %.pre42) #5
  tail call void @exit(i32 -1) #6
  unreachable

if.end19:                                         ; preds = %if.end12
  %entries = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 9
  %7 = load double** %entries, align 8, !tbaa !0
  %cmp20 = icmp eq double* %7, null
  br i1 %cmp20, label %if.then21, label %if.end23

if.then21:                                        ; preds = %if.end19
  %8 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %9 = tail call i64 @fwrite(i8* getelementptr inbounds ([62 x i8]* @.str13, i64 0, i64 0), i64 61, i64 1, %struct._IO_FILE* %8)
  tail call void @exit(i32 -1) #6
  unreachable

if.end23:                                         ; preds = %if.end19
  %inc1 = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 5
  %10 = load i32* %inc1, align 4, !tbaa !3
  %mul = mul nsw i32 %10, %irow
  %inc2 = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 6
  %11 = load i32* %inc2, align 4, !tbaa !3
  %mul24 = mul nsw i32 %11, %jcol
  %add = add nsw i32 %mul24, %mul
  %idxprom = sext i32 %add to i64
  %arrayidx = getelementptr inbounds double* %7, i64 %idxprom
  %12 = load double* %arrayidx, align 8, !tbaa !4
  store double %12, double* %pValue, align 8, !tbaa !4
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @DenseMtx_complexEntry(%struct._DenseMtx* %mtx, i32 %irow, i32 %jcol, double* %pReal, double* %pImag) #0 {
entry:
  %cmp = icmp eq %struct._DenseMtx* %mtx, null
  %cmp1 = icmp eq double* %pReal, null
  %or.cond = or i1 %cmp, %cmp1
  %cmp3 = icmp eq double* %pImag, null
  %or.cond53 = or i1 %or.cond, %cmp3
  br i1 %or.cond53, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %1 = tail call i64 @fwrite(i8* getelementptr inbounds ([71 x i8]* @.str14, i64 0, i64 0), i64 70, i64 1, %struct._IO_FILE* %0)
  tail call void @exit(i32 -1) #6
  unreachable

if.end:                                           ; preds = %entry
  %type = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 0
  %2 = load i32* %type, align 4, !tbaa !3
  %cmp4 = icmp eq i32 %2, 2
  br i1 %cmp4, label %if.end7, label %if.then5

if.then5:                                         ; preds = %if.end
  %3 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %4 = tail call i64 @fwrite(i8* getelementptr inbounds ([76 x i8]* @.str15, i64 0, i64 0), i64 75, i64 1, %struct._IO_FILE* %3)
  tail call void @exit(i32 -1) #6
  unreachable

if.end7:                                          ; preds = %if.end
  %cmp8 = icmp sgt i32 %irow, -1
  %nrow12.phi.trans.insert = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 3
  %.pre = load i32* %nrow12.phi.trans.insert, align 4, !tbaa !3
  %cmp10 = icmp sgt i32 %.pre, %irow
  %or.cond55 = and i1 %cmp8, %cmp10
  br i1 %or.cond55, label %if.end14, label %if.then11

if.then11:                                        ; preds = %if.end7
  %5 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call13 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([75 x i8]* @.str16, i64 0, i64 0), i32 %irow, i32 %.pre) #5
  tail call void @exit(i32 -1) #6
  unreachable

if.end14:                                         ; preds = %if.end7
  %cmp15 = icmp sgt i32 %jcol, -1
  %ncol19.phi.trans.insert = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 4
  %.pre54 = load i32* %ncol19.phi.trans.insert, align 4, !tbaa !3
  %cmp17 = icmp sgt i32 %.pre54, %jcol
  %or.cond56 = and i1 %cmp15, %cmp17
  br i1 %or.cond56, label %if.end21, label %if.then18

if.then18:                                        ; preds = %if.end14
  %6 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call20 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %6, i8* getelementptr inbounds ([75 x i8]* @.str17, i64 0, i64 0), i32 %jcol, i32 %.pre54) #5
  tail call void @exit(i32 -1) #6
  unreachable

if.end21:                                         ; preds = %if.end14
  %entries = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 9
  %7 = load double** %entries, align 8, !tbaa !0
  %cmp22 = icmp eq double* %7, null
  br i1 %cmp22, label %if.then23, label %if.end25

if.then23:                                        ; preds = %if.end21
  %8 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %9 = tail call i64 @fwrite(i8* getelementptr inbounds ([65 x i8]* @.str18, i64 0, i64 0), i64 64, i64 1, %struct._IO_FILE* %8)
  tail call void @exit(i32 -1) #6
  unreachable

if.end25:                                         ; preds = %if.end21
  %inc1 = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 5
  %10 = load i32* %inc1, align 4, !tbaa !3
  %mul = mul nsw i32 %10, %irow
  %inc2 = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 6
  %11 = load i32* %inc2, align 4, !tbaa !3
  %mul26 = mul nsw i32 %11, %jcol
  %add = add nsw i32 %mul26, %mul
  %mul27 = shl nsw i32 %add, 1
  %idxprom = sext i32 %mul27 to i64
  %arrayidx = getelementptr inbounds double* %7, i64 %idxprom
  %12 = load double* %arrayidx, align 8, !tbaa !4
  store double %12, double* %pReal, align 8, !tbaa !4
  %add2952 = or i32 %mul27, 1
  %idxprom30 = sext i32 %add2952 to i64
  %arrayidx32 = getelementptr inbounds double* %7, i64 %idxprom30
  %13 = load double* %arrayidx32, align 8, !tbaa !4
  store double %13, double* %pImag, align 8, !tbaa !4
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @DenseMtx_setRealEntry(%struct._DenseMtx* %mtx, i32 %irow, i32 %jcol, double %value) #0 {
entry:
  %cmp = icmp eq %struct._DenseMtx* %mtx, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %1 = tail call i64 @fwrite(i8* getelementptr inbounds ([55 x i8]* @.str19, i64 0, i64 0), i64 54, i64 1, %struct._IO_FILE* %0)
  tail call void @exit(i32 -1) #6
  unreachable

if.end:                                           ; preds = %entry
  %type = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 0
  %2 = load i32* %type, align 4, !tbaa !3
  %cmp1 = icmp eq i32 %2, 1
  br i1 %cmp1, label %if.end4, label %if.then2

if.then2:                                         ; preds = %if.end
  %3 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %4 = tail call i64 @fwrite(i8* getelementptr inbounds ([73 x i8]* @.str20, i64 0, i64 0), i64 72, i64 1, %struct._IO_FILE* %3)
  tail call void @exit(i32 -1) #6
  unreachable

if.end4:                                          ; preds = %if.end
  %cmp5 = icmp sgt i32 %irow, -1
  %nrow8.phi.trans.insert = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 3
  %.pre = load i32* %nrow8.phi.trans.insert, align 4, !tbaa !3
  %cmp6 = icmp sgt i32 %.pre, %irow
  %or.cond = and i1 %cmp5, %cmp6
  br i1 %or.cond, label %if.end10, label %if.then7

if.then7:                                         ; preds = %if.end4
  %5 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call9 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([75 x i8]* @.str21, i64 0, i64 0), i32 %irow, i32 %.pre) #5
  tail call void @exit(i32 -1) #6
  unreachable

if.end10:                                         ; preds = %if.end4
  %cmp11 = icmp sgt i32 %jcol, -1
  %ncol15.phi.trans.insert = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 4
  %.pre39 = load i32* %ncol15.phi.trans.insert, align 4, !tbaa !3
  %cmp13 = icmp sgt i32 %.pre39, %jcol
  %or.cond40 = and i1 %cmp11, %cmp13
  br i1 %or.cond40, label %if.end17, label %if.then14

if.then14:                                        ; preds = %if.end10
  %6 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call16 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %6, i8* getelementptr inbounds ([75 x i8]* @.str22, i64 0, i64 0), i32 %jcol, i32 %.pre39) #5
  tail call void @exit(i32 -1) #6
  unreachable

if.end17:                                         ; preds = %if.end10
  %entries = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 9
  %7 = load double** %entries, align 8, !tbaa !0
  %cmp18 = icmp eq double* %7, null
  br i1 %cmp18, label %if.then19, label %if.end21

if.then19:                                        ; preds = %if.end17
  %8 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %9 = tail call i64 @fwrite(i8* getelementptr inbounds ([65 x i8]* @.str23, i64 0, i64 0), i64 64, i64 1, %struct._IO_FILE* %8)
  tail call void @exit(i32 -1) #6
  unreachable

if.end21:                                         ; preds = %if.end17
  %inc1 = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 5
  %10 = load i32* %inc1, align 4, !tbaa !3
  %mul = mul nsw i32 %10, %irow
  %inc2 = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 6
  %11 = load i32* %inc2, align 4, !tbaa !3
  %mul22 = mul nsw i32 %11, %jcol
  %add = add nsw i32 %mul22, %mul
  %idxprom = sext i32 %add to i64
  %arrayidx = getelementptr inbounds double* %7, i64 %idxprom
  store double %value, double* %arrayidx, align 8, !tbaa !4
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @DenseMtx_setComplexEntry(%struct._DenseMtx* %mtx, i32 %irow, i32 %jcol, double %real, double %imag) #0 {
entry:
  %cmp = icmp eq %struct._DenseMtx* %mtx, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %1 = tail call i64 @fwrite(i8* getelementptr inbounds ([58 x i8]* @.str24, i64 0, i64 0), i64 57, i64 1, %struct._IO_FILE* %0)
  tail call void @exit(i32 -1) #6
  unreachable

if.end:                                           ; preds = %entry
  %type = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 0
  %2 = load i32* %type, align 4, !tbaa !3
  %cmp1 = icmp eq i32 %2, 2
  br i1 %cmp1, label %if.end4, label %if.then2

if.then2:                                         ; preds = %if.end
  %3 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %4 = tail call i64 @fwrite(i8* getelementptr inbounds ([79 x i8]* @.str25, i64 0, i64 0), i64 78, i64 1, %struct._IO_FILE* %3)
  tail call void @exit(i32 -1) #6
  unreachable

if.end4:                                          ; preds = %if.end
  %cmp5 = icmp sgt i32 %irow, -1
  %nrow8.phi.trans.insert = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 3
  %.pre = load i32* %nrow8.phi.trans.insert, align 4, !tbaa !3
  %cmp6 = icmp sgt i32 %.pre, %irow
  %or.cond = and i1 %cmp5, %cmp6
  br i1 %or.cond, label %if.end10, label %if.then7

if.then7:                                         ; preds = %if.end4
  %5 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call9 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([78 x i8]* @.str26, i64 0, i64 0), i32 %irow, i32 %.pre) #5
  tail call void @exit(i32 -1) #6
  unreachable

if.end10:                                         ; preds = %if.end4
  %cmp11 = icmp sgt i32 %jcol, -1
  %ncol15.phi.trans.insert = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 4
  %.pre47 = load i32* %ncol15.phi.trans.insert, align 4, !tbaa !3
  %cmp13 = icmp sgt i32 %.pre47, %jcol
  %or.cond48 = and i1 %cmp11, %cmp13
  br i1 %or.cond48, label %if.end17, label %if.then14

if.then14:                                        ; preds = %if.end10
  %6 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call16 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %6, i8* getelementptr inbounds ([78 x i8]* @.str27, i64 0, i64 0), i32 %jcol, i32 %.pre47) #5
  tail call void @exit(i32 -1) #6
  unreachable

if.end17:                                         ; preds = %if.end10
  %entries = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 9
  %7 = load double** %entries, align 8, !tbaa !0
  %cmp18 = icmp eq double* %7, null
  br i1 %cmp18, label %if.then19, label %if.end21

if.then19:                                        ; preds = %if.end17
  %8 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %9 = tail call i64 @fwrite(i8* getelementptr inbounds ([68 x i8]* @.str28, i64 0, i64 0), i64 67, i64 1, %struct._IO_FILE* %8)
  tail call void @exit(i32 -1) #6
  unreachable

if.end21:                                         ; preds = %if.end17
  %inc1 = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 5
  %10 = load i32* %inc1, align 4, !tbaa !3
  %mul = mul nsw i32 %10, %irow
  %inc2 = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 6
  %11 = load i32* %inc2, align 4, !tbaa !3
  %mul22 = mul nsw i32 %11, %jcol
  %add = add nsw i32 %mul22, %mul
  %mul23 = shl nsw i32 %add, 1
  %idxprom = sext i32 %mul23 to i64
  %arrayidx = getelementptr inbounds double* %7, i64 %idxprom
  store double %real, double* %arrayidx, align 8, !tbaa !4
  %add2546 = or i32 %mul23, 1
  %idxprom26 = sext i32 %add2546 to i64
  %arrayidx28 = getelementptr inbounds double* %7, i64 %idxprom26
  store double %imag, double* %arrayidx28, align 8, !tbaa !4
  ret void
}

; Function Attrs: nounwind optsize uwtable
define i32 @DenseMtx_row(%struct._DenseMtx* %mtx, i32 %irow, double** %prowent) #0 {
entry:
  %cmp = icmp eq %struct._DenseMtx* %mtx, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %1 = tail call i64 @fwrite(i8* getelementptr inbounds ([40 x i8]* @.str29, i64 0, i64 0), i64 39, i64 1, %struct._IO_FILE* %0)
  br label %return

if.end:                                           ; preds = %entry
  %type = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 0
  %2 = load i32* %type, align 4, !tbaa !3
  %.off = add i32 %2, -1
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %if.end7, label %if.then4

if.then4:                                         ; preds = %if.end
  %3 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call6 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([44 x i8]* @.str30, i64 0, i64 0), i32 %2) #5
  br label %return

if.end7:                                          ; preds = %if.end
  %cmp8 = icmp sgt i32 %irow, -1
  %nrow11.phi.trans.insert = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 3
  %.pre = load i32* %nrow11.phi.trans.insert, align 4, !tbaa !3
  %cmp9 = icmp sgt i32 %.pre, %irow
  %or.cond = and i1 %cmp8, %cmp9
  br i1 %or.cond, label %if.end13, label %if.then10

if.then10:                                        ; preds = %if.end7
  %4 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call12 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([47 x i8]* @.str31, i64 0, i64 0), i32 %.pre, i32 %irow) #5
  br label %return

if.end13:                                         ; preds = %if.end7
  %cmp14 = icmp eq double** %prowent, null
  br i1 %cmp14, label %if.then15, label %if.end17

if.then15:                                        ; preds = %if.end13
  %5 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %6 = tail call i64 @fwrite(i8* getelementptr inbounds ([44 x i8]* @.str32, i64 0, i64 0), i64 43, i64 1, %struct._IO_FILE* %5)
  br label %return

if.end17:                                         ; preds = %if.end13
  %cmp19 = icmp eq i32 %2, 1
  %entries = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 9
  %7 = load double** %entries, align 8, !tbaa !0
  br i1 %cmp19, label %if.then20, label %if.else

if.then20:                                        ; preds = %if.end17
  %inc1 = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 5
  %8 = load i32* %inc1, align 4, !tbaa !3
  %mul = mul nsw i32 %8, %irow
  br label %if.end27

if.else:                                          ; preds = %if.end17
  %mul22 = shl i32 %irow, 1
  %inc123 = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 5
  %9 = load i32* %inc123, align 4, !tbaa !3
  %mul24 = mul nsw i32 %mul22, %9
  br label %if.end27

if.end27:                                         ; preds = %if.else, %if.then20
  %idx.ext25.pn.in = phi i32 [ %mul24, %if.else ], [ %mul, %if.then20 ]
  %idx.ext25.pn = sext i32 %idx.ext25.pn.in to i64
  %storemerge = getelementptr inbounds double* %7, i64 %idx.ext25.pn
  store double* %storemerge, double** %prowent, align 8, !tbaa !0
  br label %return

return:                                           ; preds = %if.end27, %if.then15, %if.then10, %if.then4, %if.then
  %retval.0 = phi i32 [ -1, %if.then ], [ -2, %if.then4 ], [ -3, %if.then10 ], [ -4, %if.then15 ], [ 1, %if.end27 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind optsize uwtable
define i32 @DenseMtx_column(%struct._DenseMtx* %mtx, i32 %jcol, double** %pcolent) #0 {
entry:
  %cmp = icmp eq %struct._DenseMtx* %mtx, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %1 = tail call i64 @fwrite(i8* getelementptr inbounds ([43 x i8]* @.str33, i64 0, i64 0), i64 42, i64 1, %struct._IO_FILE* %0)
  br label %return

if.end:                                           ; preds = %entry
  %type = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 0
  %2 = load i32* %type, align 4, !tbaa !3
  %.off = add i32 %2, -1
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %if.end7, label %if.then4

if.then4:                                         ; preds = %if.end
  %3 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call6 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([47 x i8]* @.str34, i64 0, i64 0), i32 %2) #5
  br label %return

if.end7:                                          ; preds = %if.end
  %cmp8 = icmp sgt i32 %jcol, -1
  %ncol11.phi.trans.insert = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 4
  %.pre = load i32* %ncol11.phi.trans.insert, align 4, !tbaa !3
  %cmp9 = icmp sgt i32 %.pre, %jcol
  %or.cond = and i1 %cmp8, %cmp9
  br i1 %or.cond, label %if.end13, label %if.then10

if.then10:                                        ; preds = %if.end7
  %4 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call12 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([53 x i8]* @.str35, i64 0, i64 0), i32 %.pre, i32 %jcol) #5
  br label %return

if.end13:                                         ; preds = %if.end7
  %cmp14 = icmp eq double** %pcolent, null
  br i1 %cmp14, label %if.then15, label %if.end17

if.then15:                                        ; preds = %if.end13
  %5 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %6 = tail call i64 @fwrite(i8* getelementptr inbounds ([47 x i8]* @.str36, i64 0, i64 0), i64 46, i64 1, %struct._IO_FILE* %5)
  br label %return

if.end17:                                         ; preds = %if.end13
  %cmp19 = icmp eq i32 %2, 1
  %entries = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 9
  %7 = load double** %entries, align 8, !tbaa !0
  br i1 %cmp19, label %if.then20, label %if.else

if.then20:                                        ; preds = %if.end17
  %inc2 = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 6
  %8 = load i32* %inc2, align 4, !tbaa !3
  %mul = mul nsw i32 %8, %jcol
  br label %if.end27

if.else:                                          ; preds = %if.end17
  %mul22 = shl i32 %jcol, 1
  %inc223 = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 6
  %9 = load i32* %inc223, align 4, !tbaa !3
  %mul24 = mul nsw i32 %mul22, %9
  br label %if.end27

if.end27:                                         ; preds = %if.else, %if.then20
  %idx.ext25.pn.in = phi i32 [ %mul24, %if.else ], [ %mul, %if.then20 ]
  %idx.ext25.pn = sext i32 %idx.ext25.pn.in to i64
  %storemerge = getelementptr inbounds double* %7, i64 %idx.ext25.pn
  store double* %storemerge, double** %pcolent, align 8, !tbaa !0
  br label %return

return:                                           ; preds = %if.end27, %if.then15, %if.then10, %if.then4, %if.then
  %retval.0 = phi i32 [ -1, %if.then ], [ -2, %if.then4 ], [ -3, %if.then10 ], [ -4, %if.then15 ], [ 1, %if.end27 ]
  ret i32 %retval.0
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

!0 = metadata !{metadata !"any pointer", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"int", metadata !1}
!4 = metadata !{metadata !"double", metadata !1}
