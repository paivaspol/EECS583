; ModuleID = '../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_split.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct._FrontMtx = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct._Tree*, %struct._ETree*, %struct._IV*, %struct._IVL*, %struct._IVL*, %struct._IVL*, %struct._IVL*, %struct._IVL*, %struct._SubMtx**, %struct._SubMtx**, %struct._SubMtx**, %struct._SubMtx**, %struct._SubMtx**, %struct._I2Ohash*, %struct._I2Ohash*, %struct._SubMtxManager*, %struct._Lock*, %struct._PatchAndGoInfo*, i32 }
%struct._Tree = type { i32, i32, i32*, i32*, i32* }
%struct._ETree = type { i32, i32, %struct._Tree*, %struct._IV*, %struct._IV*, %struct._IV* }
%struct._IV = type { i32, i32, i32, i32* }
%struct._IVL = type { i32, i32, i32, i32, i32*, i32**, i32, %struct._Ichunk* }
%struct._Ichunk = type { i32, i32, i32*, %struct._Ichunk* }
%struct._SubMtx = type { i32, i32, i32, i32, i32, i32, i32, double*, %struct._DV, %struct._SubMtx* }
%struct._DV = type { i32, i32, i32, double* }
%struct._I2Ohash = type { i32, i32, i32, %struct._I2OP*, %struct._I2OP*, %struct._I2OP** }
%struct._I2OP = type { i32, i32, i8*, %struct._I2OP* }
%struct._SubMtxManager = type { %struct._SubMtx*, %struct._Lock*, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._Lock = type { i8*, i32, i32 }
%struct._PatchAndGoInfo = type { i32, double, double, %struct._IV*, %struct._DV* }

@stderr = external global %struct._IO_FILE*
@.str = private unnamed_addr constant [67 x i8] c"\0A fatal error in FrontMtx_splitUpperMatrices(%p,%d,%p)\0A bad input\0A\00", align 1
@.str1 = private unnamed_addr constant [12 x i8] c"\0A\0A colmap[]\00", align 1
@.str2 = private unnamed_addr constant [12 x i8] c"\0A\0A locmap[]\00", align 1
@.str3 = private unnamed_addr constant [26 x i8] c"\0A\0A ### J = %d, mtxUJ = %p\00", align 1
@.str4 = private unnamed_addr constant [24 x i8] c"\0A  column indices for J\00", align 1
@.str5 = private unnamed_addr constant [22 x i8] c"\0A  row indices for UJ\00", align 1
@.str6 = private unnamed_addr constant [29 x i8] c"\0A  front %d supports only %d\00", align 1
@.str7 = private unnamed_addr constant [27 x i8] c"\0A\0A ##  inserting U(%d,%d) \00", align 1
@.str8 = private unnamed_addr constant [12 x i8] c"\0A jcol = %d\00", align 1
@.str9 = private unnamed_addr constant [18 x i8] c", colmap[%d] = %d\00", align 1
@.str10 = private unnamed_addr constant [36 x i8] c"\0A ncolUJK %d, nentUJK %d, nbytes %d\00", align 1
@.str11 = private unnamed_addr constant [33 x i8] c"\0A setting row and column indices\00", align 1
@.str12 = private unnamed_addr constant [67 x i8] c"\0A fatal error in FrontMtx_splitLowerMatrices(%p,%d,%p)\0A bad input\0A\00", align 1
@.str13 = private unnamed_addr constant [12 x i8] c"\0A\0A rowmap[]\00", align 1
@.str14 = private unnamed_addr constant [26 x i8] c"\0A\0A ### J = %d, mtxLJ = %p\00", align 1
@.str15 = private unnamed_addr constant [22 x i8] c"\0A  row indices for LJ\00", align 1
@.str16 = private unnamed_addr constant [27 x i8] c"\0A\0A ##  inserting L(%d,%d) \00", align 1
@.str17 = private unnamed_addr constant [12 x i8] c"\0A irow = %d\00", align 1
@.str18 = private unnamed_addr constant [18 x i8] c", rowmap[%d] = %d\00", align 1

; Function Attrs: nounwind optsize uwtable
define void @FrontMtx_splitUpperMatrices(%struct._FrontMtx* %frontmtx, i32 %msglvl, %struct._IO_FILE* %msgFile) #0 {
entry:
  %entUJ = alloca double*, align 8
  %entUJK = alloca double*, align 8
  %inc1 = alloca i32, align 4
  %inc2 = alloca i32, align 4
  %ncolJ = alloca i32, align 4
  %ncolUJ = alloca i32, align 4
  %ncolUJK = alloca i32, align 4
  %nentUJ = alloca i32, align 4
  %nentUJK = alloca i32, align 4
  %nrowUJ = alloca i32, align 4
  %nrowUJK = alloca i32, align 4
  %colindJ = alloca i32*, align 8
  %colindUJ = alloca i32*, align 8
  %colindUJK = alloca i32*, align 8
  %indicesUJ = alloca i32*, align 8
  %indicesUJK = alloca i32*, align 8
  %rowindUJ = alloca i32*, align 8
  %rowindUJK = alloca i32*, align 8
  %sizesUJ = alloca i32*, align 8
  %sizesUJK = alloca i32*, align 8
  %cmp = icmp eq %struct._FrontMtx* %frontmtx, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %cmp1 = icmp sgt i32 %msglvl, 0
  %cmp2 = icmp eq %struct._IO_FILE* %msgFile, null
  %or.cond = and i1 %cmp1, %cmp2
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([67 x i8]* @.str, i64 0, i64 0), %struct._FrontMtx* %frontmtx, i32 %msglvl, %struct._IO_FILE* %msgFile) #5
  call void @exit(i32 -1) #6
  unreachable

if.end:                                           ; preds = %lor.lhs.false
  %call3 = call i32 @FrontMtx_nfront(%struct._FrontMtx* %frontmtx) #5
  %call4 = call i32 @FrontMtx_neqns(%struct._FrontMtx* %frontmtx) #5
  %upperhash5 = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 24
  %1 = load %struct._I2Ohash** %upperhash5, align 8, !tbaa !0
  %manager6 = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 25
  %2 = load %struct._SubMtxManager** %manager6, align 8, !tbaa !0
  %call7 = call i32* @IVinit(i32 %call4, i32 -1) #5
  %call8 = call i32* @IVinit(i32 %call4, i32 -1) #5
  %cmp9456 = icmp sgt i32 %call3, 0
  br i1 %cmp9456, label %for.body, label %for.end28

for.body:                                         ; preds = %if.end, %for.inc26
  %J.0457 = phi i32 [ %inc27, %for.inc26 ], [ 0, %if.end ]
  %call10 = call i32 @FrontMtx_frontSize(%struct._FrontMtx* %frontmtx, i32 %J.0457) #5
  %cmp11 = icmp sgt i32 %call10, 0
  br i1 %cmp11, label %if.then12, label %for.inc26

if.then12:                                        ; preds = %for.body
  call void @FrontMtx_columnIndices(%struct._FrontMtx* %frontmtx, i32 %J.0457, i32* %ncolJ, i32** %colindJ) #5
  %3 = load i32* %ncolJ, align 4, !tbaa !3
  %cmp13 = icmp sgt i32 %3, 0
  br i1 %cmp13, label %land.lhs.true14, label %for.inc26

land.lhs.true14:                                  ; preds = %if.then12
  %4 = load i32** %colindJ, align 8, !tbaa !0
  %cmp15 = icmp eq i32* %4, null
  br i1 %cmp15, label %for.inc26, label %for.body19

for.body19:                                       ; preds = %land.lhs.true14, %for.body19
  %indvars.iv465 = phi i64 [ %indvars.iv.next466, %for.body19 ], [ 0, %land.lhs.true14 ]
  %arrayidx = getelementptr inbounds i32* %4, i64 %indvars.iv465
  %5 = load i32* %arrayidx, align 4, !tbaa !3
  %idxprom20 = sext i32 %5 to i64
  %arrayidx21 = getelementptr inbounds i32* %call7, i64 %idxprom20
  store i32 %J.0457, i32* %arrayidx21, align 4, !tbaa !3
  %arrayidx23 = getelementptr inbounds i32* %call8, i64 %idxprom20
  %6 = trunc i64 %indvars.iv465 to i32
  store i32 %6, i32* %arrayidx23, align 4, !tbaa !3
  %indvars.iv.next466 = add i64 %indvars.iv465, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next466 to i32
  %exitcond467 = icmp eq i32 %lftr.wideiv, %call10
  br i1 %exitcond467, label %for.inc26, label %for.body19

for.inc26:                                        ; preds = %for.body19, %land.lhs.true14, %for.body, %if.then12
  %inc27 = add nsw i32 %J.0457, 1
  %exitcond468 = icmp eq i32 %inc27, %call3
  br i1 %exitcond468, label %for.end28, label %for.body

for.end28:                                        ; preds = %for.inc26, %if.end
  %cmp29 = icmp sgt i32 %msglvl, 2
  br i1 %cmp29, label %if.then30, label %for.cond35.preheader

if.then30:                                        ; preds = %for.end28
  %7 = call i64 @fwrite(i8* getelementptr inbounds ([12 x i8]* @.str1, i64 0, i64 0), i64 11, i64 1, %struct._IO_FILE* %msgFile)
  call void @IVfprintf(%struct._IO_FILE* %msgFile, i32 %call4, i32* %call7) #5
  %8 = call i64 @fwrite(i8* getelementptr inbounds ([12 x i8]* @.str2, i64 0, i64 0), i64 11, i64 1, %struct._IO_FILE* %msgFile)
  call void @IVfprintf(%struct._IO_FILE* %msgFile, i32 %call4, i32* %call8) #5
  %call33 = call i32 @fflush(%struct._IO_FILE* %msgFile) #5
  br label %for.cond35.preheader

for.cond35.preheader:                             ; preds = %if.then30, %for.end28
  br i1 %cmp9456, label %for.body37, label %for.end255

for.cond46.preheader:                             ; preds = %for.inc43
  br i1 %cmp9456, label %for.body48.lr.ph, label %for.end255

for.body48.lr.ph:                                 ; preds = %for.cond46.preheader
  %type167 = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 2
  br label %for.body48

for.body37:                                       ; preds = %for.cond35.preheader, %for.inc43
  %J.1453 = phi i32 [ %inc44, %for.inc43 ], [ 0, %for.cond35.preheader ]
  %call38 = call %struct._SubMtx* @FrontMtx_upperMtx(%struct._FrontMtx* %frontmtx, i32 %J.1453, i32 %J.1453) #5
  %cmp39 = icmp eq %struct._SubMtx* %call38, null
  br i1 %cmp39, label %for.inc43, label %if.then40

if.then40:                                        ; preds = %for.body37
  %9 = load %struct._I2Ohash** %upperhash5, align 8, !tbaa !0
  %10 = bitcast %struct._SubMtx* %call38 to i8*
  call void @I2Ohash_insert(%struct._I2Ohash* %9, i32 %J.1453, i32 %J.1453, i8* %10) #5
  br label %for.inc43

for.inc43:                                        ; preds = %for.body37, %if.then40
  %inc44 = add nsw i32 %J.1453, 1
  %exitcond464 = icmp eq i32 %inc44, %call3
  br i1 %exitcond464, label %for.cond46.preheader, label %for.body37

for.body48:                                       ; preds = %for.inc253, %for.body48.lr.ph
  %count.0451 = phi i32 [ undef, %for.body48.lr.ph ], [ %count.7, %for.inc253 ]
  %offset.0450 = phi i32 [ undef, %for.body48.lr.ph ], [ %offset.6, %for.inc253 ]
  %J.2447 = phi i32 [ 0, %for.body48.lr.ph ], [ %inc254, %for.inc253 ]
  %call49 = call %struct._SubMtx* @FrontMtx_upperMtx(%struct._FrontMtx* %frontmtx, i32 %J.2447, i32 %call3) #5
  br i1 %cmp29, label %if.then51, label %if.end54

if.then51:                                        ; preds = %for.body48
  %call52 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %msgFile, i8* getelementptr inbounds ([26 x i8]* @.str3, i64 0, i64 0), i32 %J.2447, %struct._SubMtx* %call49) #5
  %call53 = call i32 @fflush(%struct._IO_FILE* %msgFile) #5
  br label %if.end54

if.end54:                                         ; preds = %if.then51, %for.body48
  %cmp55 = icmp eq %struct._SubMtx* %call49, null
  br i1 %cmp55, label %for.inc253, label %if.then56

if.then56:                                        ; preds = %if.end54
  br i1 %cmp29, label %if.then58, label %if.end67.critedge

if.then58:                                        ; preds = %if.then56
  %call59 = call i32 @SubMtx_writeForHumanEye(%struct._SubMtx* %call49, %struct._IO_FILE* %msgFile) #5
  %call60 = call i32 @fflush(%struct._IO_FILE* %msgFile) #5
  call void @SubMtx_columnIndices(%struct._SubMtx* %call49, i32* %ncolUJ, i32** %colindUJ) #5
  call void @SubMtx_rowIndices(%struct._SubMtx* %call49, i32* %nrowUJ, i32** %rowindUJ) #5
  %11 = call i64 @fwrite(i8* getelementptr inbounds ([24 x i8]* @.str4, i64 0, i64 0), i64 23, i64 1, %struct._IO_FILE* %msgFile)
  %12 = load i32* %ncolUJ, align 4, !tbaa !3
  %13 = load i32** %colindUJ, align 8, !tbaa !0
  call void @IVfprintf(%struct._IO_FILE* %msgFile, i32 %12, i32* %13) #5
  %14 = call i64 @fwrite(i8* getelementptr inbounds ([22 x i8]* @.str5, i64 0, i64 0), i64 21, i64 1, %struct._IO_FILE* %msgFile)
  %15 = load i32* %nrowUJ, align 4, !tbaa !3
  %16 = load i32** %rowindUJ, align 8, !tbaa !0
  call void @IVfprintf(%struct._IO_FILE* %msgFile, i32 %15, i32* %16) #5
  %call66 = call i32 @fflush(%struct._IO_FILE* %msgFile) #5
  br label %if.end67

if.end67.critedge:                                ; preds = %if.then56
  call void @SubMtx_columnIndices(%struct._SubMtx* %call49, i32* %ncolUJ, i32** %colindUJ) #5
  call void @SubMtx_rowIndices(%struct._SubMtx* %call49, i32* %nrowUJ, i32** %rowindUJ) #5
  br label %if.end67

if.end67:                                         ; preds = %if.end67.critedge, %if.then58
  %17 = load i32** %colindUJ, align 8, !tbaa !0
  %18 = load i32* %17, align 4, !tbaa !3
  %idxprom69 = sext i32 %18 to i64
  %arrayidx70 = getelementptr inbounds i32* %call7, i64 %idxprom69
  %19 = load i32* %arrayidx70, align 4, !tbaa !3
  %20 = load i32* %ncolUJ, align 4, !tbaa !3
  %sub = add nsw i32 %20, -1
  %idxprom71 = sext i32 %sub to i64
  %arrayidx72 = getelementptr inbounds i32* %17, i64 %idxprom71
  %21 = load i32* %arrayidx72, align 4, !tbaa !3
  %idxprom73 = sext i32 %21 to i64
  %arrayidx74 = getelementptr inbounds i32* %call7, i64 %idxprom73
  %22 = load i32* %arrayidx74, align 4, !tbaa !3
  %cmp75 = icmp eq i32 %19, %22
  br i1 %cmp75, label %if.then76, label %if.else

if.then76:                                        ; preds = %if.end67
  br i1 %cmp29, label %if.then78, label %if.end81

if.then78:                                        ; preds = %if.then76
  %call79 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %msgFile, i8* getelementptr inbounds ([29 x i8]* @.str6, i64 0, i64 0), i32 %J.2447, i32 %19) #5
  %call80 = call i32 @fflush(%struct._IO_FILE* %msgFile) #5
  br label %if.end81

if.end81:                                         ; preds = %if.then78, %if.then76
  %23 = load i32* %nrowUJ, align 4, !tbaa !3
  %24 = load i32** %rowindUJ, align 8, !tbaa !0
  call void @IVramp(i32 %23, i32* %24, i32 0, i32 1) #5
  %25 = load i32* %ncolUJ, align 4, !tbaa !3
  %cmp83444 = icmp sgt i32 %25, 0
  br i1 %cmp83444, label %for.body84.lr.ph, label %for.end93

for.body84.lr.ph:                                 ; preds = %if.end81
  %26 = load i32** %colindUJ, align 8, !tbaa !0
  br label %for.body84

for.body84:                                       ; preds = %for.body84.lr.ph, %for.body84
  %indvars.iv462 = phi i64 [ 0, %for.body84.lr.ph ], [ %indvars.iv.next463, %for.body84 ]
  %arrayidx86 = getelementptr inbounds i32* %26, i64 %indvars.iv462
  %27 = load i32* %arrayidx86, align 4, !tbaa !3
  %idxprom87 = sext i32 %27 to i64
  %arrayidx88 = getelementptr inbounds i32* %call8, i64 %idxprom87
  %28 = load i32* %arrayidx88, align 4, !tbaa !3
  store i32 %28, i32* %arrayidx86, align 4, !tbaa !3
  %indvars.iv.next463 = add i64 %indvars.iv462, 1
  %29 = load i32* %ncolUJ, align 4, !tbaa !3
  %30 = trunc i64 %indvars.iv.next463 to i32
  %cmp83 = icmp slt i32 %30, %29
  br i1 %cmp83, label %for.body84, label %for.end93

for.end93:                                        ; preds = %for.body84, %if.end81
  %type = getelementptr inbounds %struct._SubMtx* %call49, i64 0, i32 0
  %31 = load i32* %type, align 4, !tbaa !3
  %mode = getelementptr inbounds %struct._SubMtx* %call49, i64 0, i32 1
  %32 = load i32* %mode, align 4, !tbaa !3
  %nrow = getelementptr inbounds %struct._SubMtx* %call49, i64 0, i32 4
  %33 = load i32* %nrow, align 4, !tbaa !3
  %ncol = getelementptr inbounds %struct._SubMtx* %call49, i64 0, i32 5
  %34 = load i32* %ncol, align 4, !tbaa !3
  %nent = getelementptr inbounds %struct._SubMtx* %call49, i64 0, i32 6
  %35 = load i32* %nent, align 4, !tbaa !3
  call void @SubMtx_setFields(%struct._SubMtx* %call49, i32 %31, i32 %32, i32 %J.2447, i32 %19, i32 %33, i32 %34, i32 %35) #5
  br i1 %cmp29, label %if.then95, label %if.end99

if.then95:                                        ; preds = %for.end93
  %call96 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %msgFile, i8* getelementptr inbounds ([27 x i8]* @.str7, i64 0, i64 0), i32 %J.2447, i32 %19) #5
  %call97 = call i32 @SubMtx_writeForHumanEye(%struct._SubMtx* %call49, %struct._IO_FILE* %msgFile) #5
  %call98 = call i32 @fflush(%struct._IO_FILE* %msgFile) #5
  br label %if.end99

if.end99:                                         ; preds = %if.then95, %for.end93
  %36 = bitcast %struct._SubMtx* %call49 to i8*
  call void @I2Ohash_insert(%struct._I2Ohash* %1, i32 %J.2447, i32 %19, i8* %36) #5
  br label %for.inc253

if.else:                                          ; preds = %if.end67
  %call100 = call i32 @FrontMtx_frontSize(%struct._FrontMtx* %frontmtx, i32 %J.2447) #5
  %mode101 = getelementptr inbounds %struct._SubMtx* %call49, i64 0, i32 1
  %37 = load i32* %mode101, align 4, !tbaa !3
  switch i32 %37, label %if.end110 [
    i32 1, label %if.then103
    i32 3, label %if.then107
  ]

if.then103:                                       ; preds = %if.else
  call void @SubMtx_denseInfo(%struct._SubMtx* %call49, i32* %nrowUJ, i32* %ncolUJ, i32* %inc1, i32* %inc2, double** %entUJ) #5
  br label %if.end110

if.then107:                                       ; preds = %if.else
  call void @SubMtx_sparseColumnsInfo(%struct._SubMtx* %call49, i32* %ncolUJ, i32* %nentUJ, i32** %sizesUJ, i32** %indicesUJ, double** %entUJ) #5
  %38 = load i32** %sizesUJ, align 8, !tbaa !0
  %39 = load i32* %38, align 4, !tbaa !3
  br label %if.end110

if.end110:                                        ; preds = %if.else, %if.then107, %if.then103
  %offset.1 = phi i32 [ %offset.0450, %if.then103 ], [ 0, %if.then107 ], [ %offset.0450, %if.else ]
  %count.1 = phi i32 [ %count.0451, %if.then103 ], [ %39, %if.then107 ], [ %count.0451, %if.else ]
  %40 = load i32* %ncolUJ, align 4, !tbaa !3
  %cmp115436 = icmp slt i32 %40, 1
  br i1 %cmp115436, label %for.end250, label %for.body116.lr.ph

for.body116.lr.ph:                                ; preds = %if.end110
  %41 = load i32** %colindUJ, align 8, !tbaa !0
  %42 = load i32* %41, align 4, !tbaa !3
  %idxprom112 = sext i32 %42 to i64
  %arrayidx113 = getelementptr inbounds i32* %call7, i64 %idxprom112
  %43 = load i32* %arrayidx113, align 4, !tbaa !3
  %type153 = getelementptr inbounds %struct._SubMtx* %call49, i64 0, i32 0
  %mul176 = shl i32 %call100, 1
  br label %for.body116

for.body116:                                      ; preds = %for.inc248.thread, %for.body116.lr.ph
  %44 = phi i32 [ %40, %for.body116.lr.ph ], [ %101, %for.inc248.thread ]
  %indvars.iv460 = phi i64 [ 1, %for.body116.lr.ph ], [ %indvars.iv.next461472, %for.inc248.thread ]
  %count.2442 = phi i32 [ %count.1, %for.body116.lr.ph ], [ %count.6.ph, %for.inc248.thread ]
  %first.0441 = phi i32 [ 0, %for.body116.lr.ph ], [ %first.1, %for.inc248.thread ]
  %offset.2438 = phi i32 [ %offset.1, %for.body116.lr.ph ], [ %offset.5, %for.inc248.thread ]
  %K.0437 = phi i32 [ %43, %for.body116.lr.ph ], [ %K.1, %for.inc248.thread ]
  %45 = trunc i64 %indvars.iv460 to i32
  br i1 %cmp29, label %if.then118, label %if.end131

if.then118:                                       ; preds = %for.body116
  %call119 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %msgFile, i8* getelementptr inbounds ([12 x i8]* @.str8, i64 0, i64 0), i32 %45) #5
  %46 = load i32* %ncolUJ, align 4, !tbaa !3
  %cmp120 = icmp slt i32 %45, %46
  br i1 %cmp120, label %if.then121, label %if.end129

if.then121:                                       ; preds = %if.then118
  %47 = load i32** %colindUJ, align 8, !tbaa !0
  %arrayidx123 = getelementptr inbounds i32* %47, i64 %indvars.iv460
  %48 = load i32* %arrayidx123, align 4, !tbaa !3
  %idxprom126 = sext i32 %48 to i64
  %arrayidx127 = getelementptr inbounds i32* %call7, i64 %idxprom126
  %49 = load i32* %arrayidx127, align 4, !tbaa !3
  %call128 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %msgFile, i8* getelementptr inbounds ([18 x i8]* @.str9, i64 0, i64 0), i32 %48, i32 %49) #5
  br label %if.end129

if.end129:                                        ; preds = %if.then121, %if.then118
  %call130 = call i32 @fflush(%struct._IO_FILE* %msgFile) #5
  %.pre = load i32* %ncolUJ, align 4, !tbaa !3
  br label %if.end131

if.end131:                                        ; preds = %for.body116, %if.end129
  %50 = phi i32 [ %.pre, %if.end129 ], [ %44, %for.body116 ]
  %cmp132 = icmp eq i32 %45, %50
  br i1 %cmp132, label %if.then139, label %lor.lhs.false133

lor.lhs.false133:                                 ; preds = %if.end131
  %51 = load i32** %colindUJ, align 8, !tbaa !0
  %arrayidx135 = getelementptr inbounds i32* %51, i64 %indvars.iv460
  %52 = load i32* %arrayidx135, align 4, !tbaa !3
  %idxprom136 = sext i32 %52 to i64
  %arrayidx137 = getelementptr inbounds i32* %call7, i64 %idxprom136
  %53 = load i32* %arrayidx137, align 4, !tbaa !3
  %cmp138 = icmp eq i32 %K.0437, %53
  br i1 %cmp138, label %if.end238, label %if.then139

if.then139:                                       ; preds = %lor.lhs.false133, %if.end131
  %sub140 = sub nsw i32 %45, %first.0441
  store i32 %sub140, i32* %ncolUJK, align 4, !tbaa !3
  %54 = load i32* %mode101, align 4, !tbaa !3
  switch i32 %54, label %if.then139.if.end152_crit_edge [
    i32 1, label %if.then143
    i32 3, label %if.then147
  ]

if.then139.if.end152_crit_edge:                   ; preds = %if.then139
  %.pre470 = load i32* %nentUJK, align 4, !tbaa !3
  br label %if.end152

if.then143:                                       ; preds = %if.then139
  %mul = mul nsw i32 %sub140, %call100
  store i32 %mul, i32* %nentUJK, align 4, !tbaa !3
  br label %if.end152

if.then147:                                       ; preds = %if.then139
  %cmp148 = icmp eq i32 %count.2442, 0
  br i1 %cmp148, label %no_entries, label %if.end150

if.end150:                                        ; preds = %if.then147
  store i32 %count.2442, i32* %nentUJK, align 4, !tbaa !3
  br label %if.end152

if.end152:                                        ; preds = %if.then139.if.end152_crit_edge, %if.end150, %if.then143
  %55 = phi i32 [ %.pre470, %if.then139.if.end152_crit_edge ], [ %count.2442, %if.end150 ], [ %mul, %if.then143 ]
  %56 = load i32* %type153, align 4, !tbaa !3
  %57 = load i32* %mode101, align 4, !tbaa !3
  %call155 = call i32 @SubMtx_nbytesNeeded(i32 %56, i32 %57, i32 %call100, i32 %sub140, i32 %55) #5
  br i1 %cmp29, label %if.then157, label %if.end160

if.then157:                                       ; preds = %if.end152
  %58 = load i32* %ncolUJK, align 4, !tbaa !3
  %59 = load i32* %nentUJK, align 4, !tbaa !3
  %call158 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %msgFile, i8* getelementptr inbounds ([36 x i8]* @.str10, i64 0, i64 0), i32 %58, i32 %59, i32 %call155) #5
  %call159 = call i32 @fflush(%struct._IO_FILE* %msgFile) #5
  br label %if.end160

if.end160:                                        ; preds = %if.then157, %if.end152
  %call161 = call %struct._SubMtx* @SubMtxManager_newObjectOfSizeNbytes(%struct._SubMtxManager* %2, i32 %call155) #5
  %60 = load i32* %type153, align 4, !tbaa !3
  %61 = load i32* %mode101, align 4, !tbaa !3
  %62 = load i32* %ncolUJK, align 4, !tbaa !3
  %63 = load i32* %nentUJK, align 4, !tbaa !3
  call void @SubMtx_init(%struct._SubMtx* %call161, i32 %60, i32 %61, i32 %J.2447, i32 %K.0437, i32 %call100, i32 %62, i32 %63) #5
  %64 = load i32* %mode101, align 4, !tbaa !3
  switch i32 %64, label %if.end206 [
    i32 1, label %if.then166
    i32 3, label %if.then185
  ]

if.then166:                                       ; preds = %if.end160
  call void @SubMtx_denseInfo(%struct._SubMtx* %call161, i32* %nrowUJK, i32* %ncolUJK, i32* %inc1, i32* %inc2, double** %entUJK) #5
  %65 = load i32* %type167, align 4, !tbaa !3
  switch i32 %65, label %if.end206 [
    i32 1, label %if.then169
    i32 2, label %if.then174
  ]

if.then169:                                       ; preds = %if.then166
  %66 = load i32* %nentUJK, align 4, !tbaa !3
  %67 = load double** %entUJK, align 8, !tbaa !0
  %68 = load double** %entUJ, align 8, !tbaa !0
  %mul170 = mul nsw i32 %first.0441, %call100
  %idx.ext = sext i32 %mul170 to i64
  %add.ptr = getelementptr inbounds double* %68, i64 %idx.ext
  call void @DVcopy(i32 %66, double* %67, double* %add.ptr) #5
  br label %if.end206

if.then174:                                       ; preds = %if.then166
  %69 = load i32* %nentUJK, align 4, !tbaa !3
  %mul175 = shl nsw i32 %69, 1
  %70 = load double** %entUJK, align 8, !tbaa !0
  %71 = load double** %entUJ, align 8, !tbaa !0
  %mul177 = mul i32 %mul176, %first.0441
  %idx.ext178 = sext i32 %mul177 to i64
  %add.ptr179 = getelementptr inbounds double* %71, i64 %idx.ext178
  call void @DVcopy(i32 %mul175, double* %70, double* %add.ptr179) #5
  br label %if.end206

if.then185:                                       ; preds = %if.end160
  call void @SubMtx_sparseColumnsInfo(%struct._SubMtx* %call161, i32* %ncolUJK, i32* %nentUJK, i32** %sizesUJK, i32** %indicesUJK, double** %entUJK) #5
  %72 = load i32* %ncolUJK, align 4, !tbaa !3
  %73 = load i32** %sizesUJK, align 8, !tbaa !0
  %74 = load i32** %sizesUJ, align 8, !tbaa !0
  %idx.ext186 = sext i32 %first.0441 to i64
  %add.ptr187 = getelementptr inbounds i32* %74, i64 %idx.ext186
  call void @IVcopy(i32 %72, i32* %73, i32* %add.ptr187) #5
  %75 = load i32* %nentUJK, align 4, !tbaa !3
  %76 = load i32** %indicesUJK, align 8, !tbaa !0
  %77 = load i32** %indicesUJ, align 8, !tbaa !0
  %idx.ext188 = sext i32 %offset.2438 to i64
  %add.ptr189 = getelementptr inbounds i32* %77, i64 %idx.ext188
  call void @IVcopy(i32 %75, i32* %76, i32* %add.ptr189) #5
  %78 = load i32* %type167, align 4, !tbaa !3
  switch i32 %78, label %if.end204 [
    i32 1, label %if.then192
    i32 2, label %if.then198
  ]

if.then192:                                       ; preds = %if.then185
  %79 = load i32* %nentUJK, align 4, !tbaa !3
  %80 = load double** %entUJK, align 8, !tbaa !0
  %81 = load double** %entUJ, align 8, !tbaa !0
  %add.ptr194 = getelementptr inbounds double* %81, i64 %idx.ext188
  call void @DVcopy(i32 %79, double* %80, double* %add.ptr194) #5
  br label %if.end204

if.then198:                                       ; preds = %if.then185
  %82 = load i32* %nentUJK, align 4, !tbaa !3
  %mul199 = shl nsw i32 %82, 1
  %83 = load double** %entUJK, align 8, !tbaa !0
  %84 = load double** %entUJ, align 8, !tbaa !0
  %mul200 = shl nsw i32 %offset.2438, 1
  %idx.ext201 = sext i32 %mul200 to i64
  %add.ptr202 = getelementptr inbounds double* %84, i64 %idx.ext201
  call void @DVcopy(i32 %mul199, double* %83, double* %add.ptr202) #5
  br label %if.end204

if.end204:                                        ; preds = %if.then185, %if.then198, %if.then192
  %85 = load i32* %nentUJK, align 4, !tbaa !3
  %add = add nsw i32 %85, %offset.2438
  br label %if.end206

if.end206:                                        ; preds = %if.end160, %if.then166, %if.end204, %if.then169, %if.then174
  %offset.3 = phi i32 [ %offset.2438, %if.then169 ], [ %offset.2438, %if.then174 ], [ %add, %if.end204 ], [ %offset.2438, %if.then166 ], [ %offset.2438, %if.end160 ]
  %count.3 = phi i32 [ %count.2442, %if.then169 ], [ %count.2442, %if.then174 ], [ 0, %if.end204 ], [ %count.2442, %if.then166 ], [ %count.2442, %if.end160 ]
  br i1 %cmp29, label %if.then208, label %if.end211

if.then208:                                       ; preds = %if.end206
  %86 = call i64 @fwrite(i8* getelementptr inbounds ([33 x i8]* @.str11, i64 0, i64 0), i64 32, i64 1, %struct._IO_FILE* %msgFile)
  %call210 = call i32 @fflush(%struct._IO_FILE* %msgFile) #5
  br label %if.end211

if.end211:                                        ; preds = %if.then208, %if.end206
  call void @SubMtx_rowIndices(%struct._SubMtx* %call161, i32* %nrowUJK, i32** %rowindUJK) #5
  %87 = load i32** %rowindUJK, align 8, !tbaa !0
  call void @IVramp(i32 %call100, i32* %87, i32 0, i32 1) #5
  call void @SubMtx_columnIndices(%struct._SubMtx* %call161, i32* %ncolUJK, i32** %colindUJK) #5
  %88 = load i32* %ncolUJK, align 4, !tbaa !3
  %cmp213433 = icmp sgt i32 %88, 0
  br i1 %cmp213433, label %for.body214.lr.ph, label %for.end224

for.body214.lr.ph:                                ; preds = %if.end211
  %89 = load i32** %colindUJ, align 8, !tbaa !0
  %90 = load i32** %colindUJK, align 8, !tbaa !0
  %91 = sext i32 %first.0441 to i64
  br label %for.body214

for.body214:                                      ; preds = %for.body214.lr.ph, %for.body214
  %indvars.iv458 = phi i64 [ %91, %for.body214.lr.ph ], [ %indvars.iv.next459, %for.body214 ]
  %indvars.iv = phi i64 [ 0, %for.body214.lr.ph ], [ %indvars.iv.next, %for.body214 ]
  %arrayidx216 = getelementptr inbounds i32* %89, i64 %indvars.iv458
  %92 = load i32* %arrayidx216, align 4, !tbaa !3
  %idxprom217 = sext i32 %92 to i64
  %arrayidx218 = getelementptr inbounds i32* %call8, i64 %idxprom217
  %93 = load i32* %arrayidx218, align 4, !tbaa !3
  %arrayidx220 = getelementptr inbounds i32* %90, i64 %indvars.iv
  store i32 %93, i32* %arrayidx220, align 4, !tbaa !3
  %indvars.iv.next = add i64 %indvars.iv, 1
  %indvars.iv.next459 = add i64 %indvars.iv458, 1
  %94 = load i32* %ncolUJK, align 4, !tbaa !3
  %95 = trunc i64 %indvars.iv.next to i32
  %cmp213 = icmp slt i32 %95, %94
  br i1 %cmp213, label %for.body214, label %for.end224

for.end224:                                       ; preds = %for.body214, %if.end211
  br i1 %cmp29, label %if.then226, label %if.end230

if.then226:                                       ; preds = %for.end224
  %call227 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %msgFile, i8* getelementptr inbounds ([27 x i8]* @.str7, i64 0, i64 0), i32 %J.2447, i32 %K.0437) #5
  %call228 = call i32 @SubMtx_writeForHumanEye(%struct._SubMtx* %call161, %struct._IO_FILE* %msgFile) #5
  %call229 = call i32 @fflush(%struct._IO_FILE* %msgFile) #5
  br label %if.end230

if.end230:                                        ; preds = %if.then226, %for.end224
  %96 = bitcast %struct._SubMtx* %call161 to i8*
  call void @I2Ohash_insert(%struct._I2Ohash* %1, i32 %J.2447, i32 %K.0437, i8* %96) #5
  %.pre469 = load i32* %ncolUJ, align 4, !tbaa !3
  br label %no_entries

no_entries:                                       ; preds = %if.then147, %if.end230
  %97 = phi i32 [ %.pre469, %if.end230 ], [ %50, %if.then147 ]
  %offset.4 = phi i32 [ %offset.3, %if.end230 ], [ %offset.2438, %if.then147 ]
  %count.4 = phi i32 [ %count.3, %if.end230 ], [ 0, %if.then147 ]
  %cmp231 = icmp slt i32 %45, %97
  br i1 %cmp231, label %if.then232, label %if.end238

if.then232:                                       ; preds = %no_entries
  %98 = load i32** %colindUJ, align 8, !tbaa !0
  %arrayidx234 = getelementptr inbounds i32* %98, i64 %indvars.iv460
  %99 = load i32* %arrayidx234, align 4, !tbaa !3
  %idxprom235 = sext i32 %99 to i64
  %arrayidx236 = getelementptr inbounds i32* %call7, i64 %idxprom235
  %100 = load i32* %arrayidx236, align 4, !tbaa !3
  br label %if.end238

if.end238:                                        ; preds = %lor.lhs.false133, %no_entries, %if.then232
  %101 = phi i32 [ %97, %if.then232 ], [ %97, %no_entries ], [ %50, %lor.lhs.false133 ]
  %K.1 = phi i32 [ %100, %if.then232 ], [ %K.0437, %no_entries ], [ %K.0437, %lor.lhs.false133 ]
  %offset.5 = phi i32 [ %offset.4, %if.then232 ], [ %offset.4, %no_entries ], [ %offset.2438, %lor.lhs.false133 ]
  %first.1 = phi i32 [ %45, %if.then232 ], [ %45, %no_entries ], [ %first.0441, %lor.lhs.false133 ]
  %count.5 = phi i32 [ %count.4, %if.then232 ], [ %count.4, %no_entries ], [ %count.2442, %lor.lhs.false133 ]
  %cmp239 = icmp slt i32 %45, %101
  br i1 %cmp239, label %land.lhs.true240, label %for.end250

land.lhs.true240:                                 ; preds = %if.end238
  %102 = load i32* %mode101, align 4, !tbaa !3
  %cmp242 = icmp eq i32 %102, 3
  br i1 %cmp242, label %if.then243, label %for.inc248.thread

if.then243:                                       ; preds = %land.lhs.true240
  %103 = load i32** %sizesUJ, align 8, !tbaa !0
  %arrayidx245 = getelementptr inbounds i32* %103, i64 %indvars.iv460
  %104 = load i32* %arrayidx245, align 4, !tbaa !3
  %add246 = add nsw i32 %104, %count.5
  br label %for.inc248.thread

for.inc248.thread:                                ; preds = %land.lhs.true240, %if.then243
  %count.6.ph = phi i32 [ %count.5, %land.lhs.true240 ], [ %add246, %if.then243 ]
  %indvars.iv.next461472 = add i64 %indvars.iv460, 1
  br label %for.body116

for.end250:                                       ; preds = %if.end238, %if.end110
  %count.2.lcssa = phi i32 [ %count.1, %if.end110 ], [ %count.5, %if.end238 ]
  %offset.2.lcssa = phi i32 [ %offset.1, %if.end110 ], [ %offset.5, %if.end238 ]
  call void @SubMtxManager_releaseObject(%struct._SubMtxManager* %2, %struct._SubMtx* %call49) #5
  br label %for.inc253

for.inc253:                                       ; preds = %if.end54, %for.end250, %if.end99
  %offset.6 = phi i32 [ %offset.0450, %if.end99 ], [ %offset.2.lcssa, %for.end250 ], [ %offset.0450, %if.end54 ]
  %count.7 = phi i32 [ %count.0451, %if.end99 ], [ %count.2.lcssa, %for.end250 ], [ %count.0451, %if.end54 ]
  %inc254 = add nsw i32 %J.2447, 1
  %exitcond = icmp eq i32 %inc254, %call3
  br i1 %exitcond, label %for.end255, label %for.body48

for.end255:                                       ; preds = %for.cond35.preheader, %for.inc253, %for.cond46.preheader
  call void @IVfree(i32* %call7) #5
  call void @IVfree(i32* %call8) #5
  ret void
}

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #1

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32) #2

; Function Attrs: optsize
declare i32 @FrontMtx_nfront(%struct._FrontMtx*) #3

; Function Attrs: optsize
declare i32 @FrontMtx_neqns(%struct._FrontMtx*) #3

; Function Attrs: optsize
declare i32* @IVinit(i32, i32) #3

; Function Attrs: optsize
declare i32 @FrontMtx_frontSize(%struct._FrontMtx*, i32) #3

; Function Attrs: optsize
declare void @FrontMtx_columnIndices(%struct._FrontMtx*, i32, i32*, i32**) #3

; Function Attrs: optsize
declare void @IVfprintf(%struct._IO_FILE*, i32, i32*) #3

; Function Attrs: nounwind optsize
declare i32 @fflush(%struct._IO_FILE* nocapture) #1

; Function Attrs: optsize
declare %struct._SubMtx* @FrontMtx_upperMtx(%struct._FrontMtx*, i32, i32) #3

; Function Attrs: optsize
declare void @I2Ohash_insert(%struct._I2Ohash*, i32, i32, i8*) #3

; Function Attrs: optsize
declare i32 @SubMtx_writeForHumanEye(%struct._SubMtx*, %struct._IO_FILE*) #3

; Function Attrs: optsize
declare void @SubMtx_columnIndices(%struct._SubMtx*, i32*, i32**) #3

; Function Attrs: optsize
declare void @SubMtx_rowIndices(%struct._SubMtx*, i32*, i32**) #3

; Function Attrs: optsize
declare void @IVramp(i32, i32*, i32, i32) #3

; Function Attrs: optsize
declare void @SubMtx_setFields(%struct._SubMtx*, i32, i32, i32, i32, i32, i32, i32) #3

; Function Attrs: optsize
declare void @SubMtx_denseInfo(%struct._SubMtx*, i32*, i32*, i32*, i32*, double**) #3

; Function Attrs: optsize
declare void @SubMtx_sparseColumnsInfo(%struct._SubMtx*, i32*, i32*, i32**, i32**, double**) #3

; Function Attrs: optsize
declare i32 @SubMtx_nbytesNeeded(i32, i32, i32, i32, i32) #3

; Function Attrs: optsize
declare %struct._SubMtx* @SubMtxManager_newObjectOfSizeNbytes(%struct._SubMtxManager*, i32) #3

; Function Attrs: optsize
declare void @SubMtx_init(%struct._SubMtx*, i32, i32, i32, i32, i32, i32, i32) #3

; Function Attrs: optsize
declare void @DVcopy(i32, double*, double*) #3

; Function Attrs: optsize
declare void @IVcopy(i32, i32*, i32*) #3

; Function Attrs: optsize
declare void @SubMtxManager_releaseObject(%struct._SubMtxManager*, %struct._SubMtx*) #3

; Function Attrs: optsize
declare void @IVfree(i32*) #3

; Function Attrs: nounwind optsize uwtable
define void @FrontMtx_splitLowerMatrices(%struct._FrontMtx* %frontmtx, i32 %msglvl, %struct._IO_FILE* %msgFile) #0 {
entry:
  %entLJ = alloca double*, align 8
  %entLKJ = alloca double*, align 8
  %inc1 = alloca i32, align 4
  %inc2 = alloca i32, align 4
  %ncolLJ = alloca i32, align 4
  %ncolLKJ = alloca i32, align 4
  %nentLJ = alloca i32, align 4
  %nentLKJ = alloca i32, align 4
  %nrowJ = alloca i32, align 4
  %nrowLJ = alloca i32, align 4
  %nrowLKJ = alloca i32, align 4
  %colindLJ = alloca i32*, align 8
  %colindLKJ = alloca i32*, align 8
  %indicesLJ = alloca i32*, align 8
  %indicesLKJ = alloca i32*, align 8
  %rowindJ = alloca i32*, align 8
  %rowindLJ = alloca i32*, align 8
  %rowindLKJ = alloca i32*, align 8
  %sizesLJ = alloca i32*, align 8
  %sizesLKJ = alloca i32*, align 8
  %cmp = icmp eq %struct._FrontMtx* %frontmtx, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %cmp1 = icmp sgt i32 %msglvl, 0
  %cmp2 = icmp eq %struct._IO_FILE* %msgFile, null
  %or.cond = and i1 %cmp1, %cmp2
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([67 x i8]* @.str12, i64 0, i64 0), %struct._FrontMtx* %frontmtx, i32 %msglvl, %struct._IO_FILE* %msgFile) #5
  call void @exit(i32 -1) #6
  unreachable

if.end:                                           ; preds = %lor.lhs.false
  %call3 = call i32 @FrontMtx_nfront(%struct._FrontMtx* %frontmtx) #5
  %call4 = call i32 @FrontMtx_neqns(%struct._FrontMtx* %frontmtx) #5
  %lowerhash5 = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 23
  %1 = load %struct._I2Ohash** %lowerhash5, align 8, !tbaa !0
  %manager6 = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 25
  %2 = load %struct._SubMtxManager** %manager6, align 8, !tbaa !0
  %call7 = call i32* @IVinit(i32 %call4, i32 -1) #5
  %call8 = call i32* @IVinit(i32 %call4, i32 -1) #5
  %cmp9438 = icmp sgt i32 %call3, 0
  br i1 %cmp9438, label %for.body, label %for.end28

for.body:                                         ; preds = %if.end, %for.inc26
  %J.0439 = phi i32 [ %inc27, %for.inc26 ], [ 0, %if.end ]
  %call10 = call i32 @FrontMtx_frontSize(%struct._FrontMtx* %frontmtx, i32 %J.0439) #5
  %cmp11 = icmp sgt i32 %call10, 0
  br i1 %cmp11, label %if.then12, label %for.inc26

if.then12:                                        ; preds = %for.body
  call void @FrontMtx_rowIndices(%struct._FrontMtx* %frontmtx, i32 %J.0439, i32* %nrowJ, i32** %rowindJ) #5
  %3 = load i32* %nrowJ, align 4, !tbaa !3
  %cmp13 = icmp sgt i32 %3, 0
  br i1 %cmp13, label %land.lhs.true14, label %for.inc26

land.lhs.true14:                                  ; preds = %if.then12
  %4 = load i32** %rowindJ, align 8, !tbaa !0
  %cmp15 = icmp eq i32* %4, null
  br i1 %cmp15, label %for.inc26, label %for.body19

for.body19:                                       ; preds = %land.lhs.true14, %for.body19
  %indvars.iv447 = phi i64 [ %indvars.iv.next448, %for.body19 ], [ 0, %land.lhs.true14 ]
  %arrayidx = getelementptr inbounds i32* %4, i64 %indvars.iv447
  %5 = load i32* %arrayidx, align 4, !tbaa !3
  %idxprom20 = sext i32 %5 to i64
  %arrayidx21 = getelementptr inbounds i32* %call7, i64 %idxprom20
  store i32 %J.0439, i32* %arrayidx21, align 4, !tbaa !3
  %arrayidx23 = getelementptr inbounds i32* %call8, i64 %idxprom20
  %6 = trunc i64 %indvars.iv447 to i32
  store i32 %6, i32* %arrayidx23, align 4, !tbaa !3
  %indvars.iv.next448 = add i64 %indvars.iv447, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next448 to i32
  %exitcond449 = icmp eq i32 %lftr.wideiv, %call10
  br i1 %exitcond449, label %for.inc26, label %for.body19

for.inc26:                                        ; preds = %for.body19, %land.lhs.true14, %for.body, %if.then12
  %inc27 = add nsw i32 %J.0439, 1
  %exitcond450 = icmp eq i32 %inc27, %call3
  br i1 %exitcond450, label %for.end28, label %for.body

for.end28:                                        ; preds = %for.inc26, %if.end
  %cmp29 = icmp sgt i32 %msglvl, 2
  br i1 %cmp29, label %if.then30, label %for.cond35.preheader

if.then30:                                        ; preds = %for.end28
  %7 = call i64 @fwrite(i8* getelementptr inbounds ([12 x i8]* @.str13, i64 0, i64 0), i64 11, i64 1, %struct._IO_FILE* %msgFile)
  call void @IVfprintf(%struct._IO_FILE* %msgFile, i32 %call4, i32* %call7) #5
  %8 = call i64 @fwrite(i8* getelementptr inbounds ([12 x i8]* @.str2, i64 0, i64 0), i64 11, i64 1, %struct._IO_FILE* %msgFile)
  call void @IVfprintf(%struct._IO_FILE* %msgFile, i32 %call4, i32* %call8) #5
  %call33 = call i32 @fflush(%struct._IO_FILE* %msgFile) #5
  br label %for.cond35.preheader

for.cond35.preheader:                             ; preds = %if.then30, %for.end28
  br i1 %cmp9438, label %for.body37, label %for.end245

for.cond46.preheader:                             ; preds = %for.inc43
  br i1 %cmp9438, label %for.body48.lr.ph, label %for.end245

for.body48.lr.ph:                                 ; preds = %for.cond46.preheader
  %type162 = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 2
  br label %for.body48

for.body37:                                       ; preds = %for.cond35.preheader, %for.inc43
  %J.1435 = phi i32 [ %inc44, %for.inc43 ], [ 0, %for.cond35.preheader ]
  %call38 = call %struct._SubMtx* @FrontMtx_lowerMtx(%struct._FrontMtx* %frontmtx, i32 %J.1435, i32 %J.1435) #5
  %cmp39 = icmp eq %struct._SubMtx* %call38, null
  br i1 %cmp39, label %for.inc43, label %if.then40

if.then40:                                        ; preds = %for.body37
  %9 = load %struct._I2Ohash** %lowerhash5, align 8, !tbaa !0
  %10 = bitcast %struct._SubMtx* %call38 to i8*
  call void @I2Ohash_insert(%struct._I2Ohash* %9, i32 %J.1435, i32 %J.1435, i8* %10) #5
  br label %for.inc43

for.inc43:                                        ; preds = %for.body37, %if.then40
  %inc44 = add nsw i32 %J.1435, 1
  %exitcond446 = icmp eq i32 %inc44, %call3
  br i1 %exitcond446, label %for.cond46.preheader, label %for.body37

for.body48:                                       ; preds = %for.inc243, %for.body48.lr.ph
  %count.0433 = phi i32 [ undef, %for.body48.lr.ph ], [ %count.7, %for.inc243 ]
  %offset.0432 = phi i32 [ undef, %for.body48.lr.ph ], [ %offset.6, %for.inc243 ]
  %J.2429 = phi i32 [ 0, %for.body48.lr.ph ], [ %inc244, %for.inc243 ]
  %call49 = call %struct._SubMtx* @FrontMtx_lowerMtx(%struct._FrontMtx* %frontmtx, i32 %call3, i32 %J.2429) #5
  br i1 %cmp29, label %if.then51, label %if.end54

if.then51:                                        ; preds = %for.body48
  %call52 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %msgFile, i8* getelementptr inbounds ([26 x i8]* @.str14, i64 0, i64 0), i32 %J.2429, %struct._SubMtx* %call49) #5
  %call53 = call i32 @fflush(%struct._IO_FILE* %msgFile) #5
  br label %if.end54

if.end54:                                         ; preds = %if.then51, %for.body48
  %cmp55 = icmp eq %struct._SubMtx* %call49, null
  br i1 %cmp55, label %for.inc243, label %if.then56

if.then56:                                        ; preds = %if.end54
  br i1 %cmp29, label %if.then58, label %if.end67.critedge

if.then58:                                        ; preds = %if.then56
  %call59 = call i32 @SubMtx_writeForHumanEye(%struct._SubMtx* %call49, %struct._IO_FILE* %msgFile) #5
  %call60 = call i32 @fflush(%struct._IO_FILE* %msgFile) #5
  call void @SubMtx_columnIndices(%struct._SubMtx* %call49, i32* %ncolLJ, i32** %colindLJ) #5
  call void @SubMtx_rowIndices(%struct._SubMtx* %call49, i32* %nrowLJ, i32** %rowindLJ) #5
  %11 = call i64 @fwrite(i8* getelementptr inbounds ([24 x i8]* @.str4, i64 0, i64 0), i64 23, i64 1, %struct._IO_FILE* %msgFile)
  %12 = load i32* %ncolLJ, align 4, !tbaa !3
  %13 = load i32** %colindLJ, align 8, !tbaa !0
  call void @IVfprintf(%struct._IO_FILE* %msgFile, i32 %12, i32* %13) #5
  %14 = call i64 @fwrite(i8* getelementptr inbounds ([22 x i8]* @.str15, i64 0, i64 0), i64 21, i64 1, %struct._IO_FILE* %msgFile)
  %15 = load i32* %nrowLJ, align 4, !tbaa !3
  %16 = load i32** %rowindLJ, align 8, !tbaa !0
  call void @IVfprintf(%struct._IO_FILE* %msgFile, i32 %15, i32* %16) #5
  %call66 = call i32 @fflush(%struct._IO_FILE* %msgFile) #5
  br label %if.end67

if.end67.critedge:                                ; preds = %if.then56
  call void @SubMtx_columnIndices(%struct._SubMtx* %call49, i32* %ncolLJ, i32** %colindLJ) #5
  call void @SubMtx_rowIndices(%struct._SubMtx* %call49, i32* %nrowLJ, i32** %rowindLJ) #5
  br label %if.end67

if.end67:                                         ; preds = %if.end67.critedge, %if.then58
  %17 = load i32** %rowindLJ, align 8, !tbaa !0
  %18 = load i32* %17, align 4, !tbaa !3
  %idxprom69 = sext i32 %18 to i64
  %arrayidx70 = getelementptr inbounds i32* %call7, i64 %idxprom69
  %19 = load i32* %arrayidx70, align 4, !tbaa !3
  %20 = load i32* %nrowLJ, align 4, !tbaa !3
  %sub = add nsw i32 %20, -1
  %idxprom71 = sext i32 %sub to i64
  %arrayidx72 = getelementptr inbounds i32* %17, i64 %idxprom71
  %21 = load i32* %arrayidx72, align 4, !tbaa !3
  %idxprom73 = sext i32 %21 to i64
  %arrayidx74 = getelementptr inbounds i32* %call7, i64 %idxprom73
  %22 = load i32* %arrayidx74, align 4, !tbaa !3
  %cmp75 = icmp eq i32 %19, %22
  br i1 %cmp75, label %if.then76, label %if.else

if.then76:                                        ; preds = %if.end67
  br i1 %cmp29, label %if.then78, label %if.end81

if.then78:                                        ; preds = %if.then76
  %call79 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %msgFile, i8* getelementptr inbounds ([29 x i8]* @.str6, i64 0, i64 0), i32 %J.2429, i32 %19) #5
  %call80 = call i32 @fflush(%struct._IO_FILE* %msgFile) #5
  br label %if.end81

if.end81:                                         ; preds = %if.then78, %if.then76
  %23 = load i32* %ncolLJ, align 4, !tbaa !3
  %24 = load i32** %colindLJ, align 8, !tbaa !0
  call void @IVramp(i32 %23, i32* %24, i32 0, i32 1) #5
  %25 = load i32* %nrowLJ, align 4, !tbaa !3
  %cmp83426 = icmp sgt i32 %25, 0
  br i1 %cmp83426, label %for.body84.lr.ph, label %for.end93

for.body84.lr.ph:                                 ; preds = %if.end81
  %26 = load i32** %rowindLJ, align 8, !tbaa !0
  br label %for.body84

for.body84:                                       ; preds = %for.body84.lr.ph, %for.body84
  %indvars.iv444 = phi i64 [ 0, %for.body84.lr.ph ], [ %indvars.iv.next445, %for.body84 ]
  %arrayidx86 = getelementptr inbounds i32* %26, i64 %indvars.iv444
  %27 = load i32* %arrayidx86, align 4, !tbaa !3
  %idxprom87 = sext i32 %27 to i64
  %arrayidx88 = getelementptr inbounds i32* %call8, i64 %idxprom87
  %28 = load i32* %arrayidx88, align 4, !tbaa !3
  store i32 %28, i32* %arrayidx86, align 4, !tbaa !3
  %indvars.iv.next445 = add i64 %indvars.iv444, 1
  %29 = load i32* %nrowLJ, align 4, !tbaa !3
  %30 = trunc i64 %indvars.iv.next445 to i32
  %cmp83 = icmp slt i32 %30, %29
  br i1 %cmp83, label %for.body84, label %for.end93

for.end93:                                        ; preds = %for.body84, %if.end81
  %type = getelementptr inbounds %struct._SubMtx* %call49, i64 0, i32 0
  %31 = load i32* %type, align 4, !tbaa !3
  %mode = getelementptr inbounds %struct._SubMtx* %call49, i64 0, i32 1
  %32 = load i32* %mode, align 4, !tbaa !3
  %nrow = getelementptr inbounds %struct._SubMtx* %call49, i64 0, i32 4
  %33 = load i32* %nrow, align 4, !tbaa !3
  %ncol = getelementptr inbounds %struct._SubMtx* %call49, i64 0, i32 5
  %34 = load i32* %ncol, align 4, !tbaa !3
  %nent = getelementptr inbounds %struct._SubMtx* %call49, i64 0, i32 6
  %35 = load i32* %nent, align 4, !tbaa !3
  call void @SubMtx_setFields(%struct._SubMtx* %call49, i32 %31, i32 %32, i32 %19, i32 %J.2429, i32 %33, i32 %34, i32 %35) #5
  br i1 %cmp29, label %if.then95, label %if.end99

if.then95:                                        ; preds = %for.end93
  %call96 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %msgFile, i8* getelementptr inbounds ([27 x i8]* @.str16, i64 0, i64 0), i32 %19, i32 %J.2429) #5
  %call97 = call i32 @SubMtx_writeForHumanEye(%struct._SubMtx* %call49, %struct._IO_FILE* %msgFile) #5
  %call98 = call i32 @fflush(%struct._IO_FILE* %msgFile) #5
  br label %if.end99

if.end99:                                         ; preds = %if.then95, %for.end93
  %36 = bitcast %struct._SubMtx* %call49 to i8*
  call void @I2Ohash_insert(%struct._I2Ohash* %1, i32 %19, i32 %J.2429, i8* %36) #5
  br label %for.inc243

if.else:                                          ; preds = %if.end67
  %call100 = call i32 @FrontMtx_frontSize(%struct._FrontMtx* %frontmtx, i32 %J.2429) #5
  %mode101 = getelementptr inbounds %struct._SubMtx* %call49, i64 0, i32 1
  %37 = load i32* %mode101, align 4, !tbaa !3
  switch i32 %37, label %if.end110 [
    i32 0, label %if.then103
    i32 2, label %if.then107
  ]

if.then103:                                       ; preds = %if.else
  call void @SubMtx_denseInfo(%struct._SubMtx* %call49, i32* %nrowLJ, i32* %ncolLJ, i32* %inc1, i32* %inc2, double** %entLJ) #5
  br label %if.end110

if.then107:                                       ; preds = %if.else
  call void @SubMtx_sparseRowsInfo(%struct._SubMtx* %call49, i32* %nrowLJ, i32* %nentLJ, i32** %sizesLJ, i32** %indicesLJ, double** %entLJ) #5
  %38 = load i32** %sizesLJ, align 8, !tbaa !0
  %39 = load i32* %38, align 4, !tbaa !3
  br label %if.end110

if.end110:                                        ; preds = %if.else, %if.then107, %if.then103
  %offset.1 = phi i32 [ %offset.0432, %if.then103 ], [ 0, %if.then107 ], [ %offset.0432, %if.else ]
  %count.1 = phi i32 [ %count.0433, %if.then103 ], [ %39, %if.then107 ], [ %count.0433, %if.else ]
  %40 = load i32* %nrowLJ, align 4, !tbaa !3
  %cmp115418 = icmp slt i32 %40, 1
  br i1 %cmp115418, label %for.end240, label %for.body116.lr.ph

for.body116.lr.ph:                                ; preds = %if.end110
  %41 = load i32** %rowindLJ, align 8, !tbaa !0
  %42 = load i32* %41, align 4, !tbaa !3
  %idxprom112 = sext i32 %42 to i64
  %arrayidx113 = getelementptr inbounds i32* %call7, i64 %idxprom112
  %43 = load i32* %arrayidx113, align 4, !tbaa !3
  %type153 = getelementptr inbounds %struct._SubMtx* %call49, i64 0, i32 0
  %mul171 = shl i32 %call100, 1
  br label %for.body116

for.body116:                                      ; preds = %for.inc238.thread, %for.body116.lr.ph
  %44 = phi i32 [ %40, %for.body116.lr.ph ], [ %99, %for.inc238.thread ]
  %indvars.iv442 = phi i64 [ 1, %for.body116.lr.ph ], [ %indvars.iv.next443454, %for.inc238.thread ]
  %count.2424 = phi i32 [ %count.1, %for.body116.lr.ph ], [ %count.6.ph, %for.inc238.thread ]
  %first.0423 = phi i32 [ 0, %for.body116.lr.ph ], [ %first.1, %for.inc238.thread ]
  %offset.2420 = phi i32 [ %offset.1, %for.body116.lr.ph ], [ %offset.5, %for.inc238.thread ]
  %K.0419 = phi i32 [ %43, %for.body116.lr.ph ], [ %K.1, %for.inc238.thread ]
  %45 = trunc i64 %indvars.iv442 to i32
  br i1 %cmp29, label %if.then118, label %if.end131

if.then118:                                       ; preds = %for.body116
  %call119 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %msgFile, i8* getelementptr inbounds ([12 x i8]* @.str17, i64 0, i64 0), i32 %45) #5
  %46 = load i32* %nrowLJ, align 4, !tbaa !3
  %cmp120 = icmp slt i32 %45, %46
  br i1 %cmp120, label %if.then121, label %if.end129

if.then121:                                       ; preds = %if.then118
  %47 = load i32** %rowindLJ, align 8, !tbaa !0
  %arrayidx123 = getelementptr inbounds i32* %47, i64 %indvars.iv442
  %48 = load i32* %arrayidx123, align 4, !tbaa !3
  %idxprom126 = sext i32 %48 to i64
  %arrayidx127 = getelementptr inbounds i32* %call7, i64 %idxprom126
  %49 = load i32* %arrayidx127, align 4, !tbaa !3
  %call128 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %msgFile, i8* getelementptr inbounds ([18 x i8]* @.str18, i64 0, i64 0), i32 %48, i32 %49) #5
  br label %if.end129

if.end129:                                        ; preds = %if.then121, %if.then118
  %call130 = call i32 @fflush(%struct._IO_FILE* %msgFile) #5
  %.pre = load i32* %nrowLJ, align 4, !tbaa !3
  br label %if.end131

if.end131:                                        ; preds = %for.body116, %if.end129
  %50 = phi i32 [ %.pre, %if.end129 ], [ %44, %for.body116 ]
  %cmp132 = icmp eq i32 %45, %50
  br i1 %cmp132, label %if.then139, label %lor.lhs.false133

lor.lhs.false133:                                 ; preds = %if.end131
  %51 = load i32** %rowindLJ, align 8, !tbaa !0
  %arrayidx135 = getelementptr inbounds i32* %51, i64 %indvars.iv442
  %52 = load i32* %arrayidx135, align 4, !tbaa !3
  %idxprom136 = sext i32 %52 to i64
  %arrayidx137 = getelementptr inbounds i32* %call7, i64 %idxprom136
  %53 = load i32* %arrayidx137, align 4, !tbaa !3
  %cmp138 = icmp eq i32 %K.0419, %53
  br i1 %cmp138, label %if.end228, label %if.then139

if.then139:                                       ; preds = %lor.lhs.false133, %if.end131
  %sub140 = sub nsw i32 %45, %first.0423
  store i32 %sub140, i32* %nrowLKJ, align 4, !tbaa !3
  %54 = load i32* %mode101, align 4, !tbaa !3
  switch i32 %54, label %if.then139.if.end152_crit_edge [
    i32 0, label %if.then143
    i32 2, label %if.then147
  ]

if.then139.if.end152_crit_edge:                   ; preds = %if.then139
  %.pre452 = load i32* %nentLKJ, align 4, !tbaa !3
  br label %if.end152

if.then143:                                       ; preds = %if.then139
  %mul = mul nsw i32 %sub140, %call100
  store i32 %mul, i32* %nentLKJ, align 4, !tbaa !3
  br label %if.end152

if.then147:                                       ; preds = %if.then139
  %cmp148 = icmp eq i32 %count.2424, 0
  br i1 %cmp148, label %no_entries, label %if.end150

if.end150:                                        ; preds = %if.then147
  store i32 %count.2424, i32* %nentLKJ, align 4, !tbaa !3
  br label %if.end152

if.end152:                                        ; preds = %if.then139.if.end152_crit_edge, %if.end150, %if.then143
  %55 = phi i32 [ %.pre452, %if.then139.if.end152_crit_edge ], [ %count.2424, %if.end150 ], [ %mul, %if.then143 ]
  %56 = load i32* %type153, align 4, !tbaa !3
  %57 = load i32* %mode101, align 4, !tbaa !3
  %call155 = call i32 @SubMtx_nbytesNeeded(i32 %56, i32 %57, i32 %sub140, i32 %call100, i32 %55) #5
  %call156 = call %struct._SubMtx* @SubMtxManager_newObjectOfSizeNbytes(%struct._SubMtxManager* %2, i32 %call155) #5
  %58 = load i32* %type153, align 4, !tbaa !3
  %59 = load i32* %mode101, align 4, !tbaa !3
  %60 = load i32* %nrowLKJ, align 4, !tbaa !3
  %61 = load i32* %nentLKJ, align 4, !tbaa !3
  call void @SubMtx_init(%struct._SubMtx* %call156, i32 %58, i32 %59, i32 %K.0419, i32 %J.2429, i32 %60, i32 %call100, i32 %61) #5
  %62 = load i32* %mode101, align 4, !tbaa !3
  switch i32 %62, label %if.end201 [
    i32 0, label %if.then161
    i32 2, label %if.then180
  ]

if.then161:                                       ; preds = %if.end152
  call void @SubMtx_denseInfo(%struct._SubMtx* %call156, i32* %nrowLKJ, i32* %ncolLKJ, i32* %inc1, i32* %inc2, double** %entLKJ) #5
  %63 = load i32* %type162, align 4, !tbaa !3
  switch i32 %63, label %if.end201 [
    i32 1, label %if.then164
    i32 2, label %if.then169
  ]

if.then164:                                       ; preds = %if.then161
  %64 = load i32* %nentLKJ, align 4, !tbaa !3
  %65 = load double** %entLKJ, align 8, !tbaa !0
  %66 = load double** %entLJ, align 8, !tbaa !0
  %mul165 = mul nsw i32 %first.0423, %call100
  %idx.ext = sext i32 %mul165 to i64
  %add.ptr = getelementptr inbounds double* %66, i64 %idx.ext
  call void @DVcopy(i32 %64, double* %65, double* %add.ptr) #5
  br label %if.end201

if.then169:                                       ; preds = %if.then161
  %67 = load i32* %nentLKJ, align 4, !tbaa !3
  %mul170 = shl nsw i32 %67, 1
  %68 = load double** %entLKJ, align 8, !tbaa !0
  %69 = load double** %entLJ, align 8, !tbaa !0
  %mul172 = mul i32 %mul171, %first.0423
  %idx.ext173 = sext i32 %mul172 to i64
  %add.ptr174 = getelementptr inbounds double* %69, i64 %idx.ext173
  call void @DVcopy(i32 %mul170, double* %68, double* %add.ptr174) #5
  br label %if.end201

if.then180:                                       ; preds = %if.end152
  call void @SubMtx_sparseRowsInfo(%struct._SubMtx* %call156, i32* %nrowLKJ, i32* %nentLKJ, i32** %sizesLKJ, i32** %indicesLKJ, double** %entLKJ) #5
  %70 = load i32* %nrowLKJ, align 4, !tbaa !3
  %71 = load i32** %sizesLKJ, align 8, !tbaa !0
  %72 = load i32** %sizesLJ, align 8, !tbaa !0
  %idx.ext181 = sext i32 %first.0423 to i64
  %add.ptr182 = getelementptr inbounds i32* %72, i64 %idx.ext181
  call void @IVcopy(i32 %70, i32* %71, i32* %add.ptr182) #5
  %73 = load i32* %nentLKJ, align 4, !tbaa !3
  %74 = load i32** %indicesLKJ, align 8, !tbaa !0
  %75 = load i32** %indicesLJ, align 8, !tbaa !0
  %idx.ext183 = sext i32 %offset.2420 to i64
  %add.ptr184 = getelementptr inbounds i32* %75, i64 %idx.ext183
  call void @IVcopy(i32 %73, i32* %74, i32* %add.ptr184) #5
  %76 = load i32* %type162, align 4, !tbaa !3
  switch i32 %76, label %if.end199 [
    i32 1, label %if.then187
    i32 2, label %if.then193
  ]

if.then187:                                       ; preds = %if.then180
  %77 = load i32* %nentLKJ, align 4, !tbaa !3
  %78 = load double** %entLKJ, align 8, !tbaa !0
  %79 = load double** %entLJ, align 8, !tbaa !0
  %add.ptr189 = getelementptr inbounds double* %79, i64 %idx.ext183
  call void @DVcopy(i32 %77, double* %78, double* %add.ptr189) #5
  br label %if.end199

if.then193:                                       ; preds = %if.then180
  %80 = load i32* %nentLKJ, align 4, !tbaa !3
  %mul194 = shl nsw i32 %80, 1
  %81 = load double** %entLKJ, align 8, !tbaa !0
  %82 = load double** %entLJ, align 8, !tbaa !0
  %mul195 = shl nsw i32 %offset.2420, 1
  %idx.ext196 = sext i32 %mul195 to i64
  %add.ptr197 = getelementptr inbounds double* %82, i64 %idx.ext196
  call void @DVcopy(i32 %mul194, double* %81, double* %add.ptr197) #5
  br label %if.end199

if.end199:                                        ; preds = %if.then180, %if.then193, %if.then187
  %83 = load i32* %nentLKJ, align 4, !tbaa !3
  %add = add nsw i32 %83, %offset.2420
  br label %if.end201

if.end201:                                        ; preds = %if.end152, %if.then161, %if.end199, %if.then164, %if.then169
  %offset.3 = phi i32 [ %offset.2420, %if.then164 ], [ %offset.2420, %if.then169 ], [ %add, %if.end199 ], [ %offset.2420, %if.then161 ], [ %offset.2420, %if.end152 ]
  %count.3 = phi i32 [ %count.2424, %if.then164 ], [ %count.2424, %if.then169 ], [ 0, %if.end199 ], [ %count.2424, %if.then161 ], [ %count.2424, %if.end152 ]
  call void @SubMtx_rowIndices(%struct._SubMtx* %call156, i32* %nrowLKJ, i32** %rowindLKJ) #5
  %84 = load i32* %nrowLKJ, align 4, !tbaa !3
  %cmp203415 = icmp sgt i32 %84, 0
  br i1 %cmp203415, label %for.body204.lr.ph, label %for.end214

for.body204.lr.ph:                                ; preds = %if.end201
  %85 = load i32** %rowindLJ, align 8, !tbaa !0
  %86 = load i32** %rowindLKJ, align 8, !tbaa !0
  %87 = sext i32 %first.0423 to i64
  br label %for.body204

for.body204:                                      ; preds = %for.body204.lr.ph, %for.body204
  %indvars.iv440 = phi i64 [ %87, %for.body204.lr.ph ], [ %indvars.iv.next441, %for.body204 ]
  %indvars.iv = phi i64 [ 0, %for.body204.lr.ph ], [ %indvars.iv.next, %for.body204 ]
  %arrayidx206 = getelementptr inbounds i32* %85, i64 %indvars.iv440
  %88 = load i32* %arrayidx206, align 4, !tbaa !3
  %idxprom207 = sext i32 %88 to i64
  %arrayidx208 = getelementptr inbounds i32* %call8, i64 %idxprom207
  %89 = load i32* %arrayidx208, align 4, !tbaa !3
  %arrayidx210 = getelementptr inbounds i32* %86, i64 %indvars.iv
  store i32 %89, i32* %arrayidx210, align 4, !tbaa !3
  %indvars.iv.next = add i64 %indvars.iv, 1
  %indvars.iv.next441 = add i64 %indvars.iv440, 1
  %90 = load i32* %nrowLKJ, align 4, !tbaa !3
  %91 = trunc i64 %indvars.iv.next to i32
  %cmp203 = icmp slt i32 %91, %90
  br i1 %cmp203, label %for.body204, label %for.end214

for.end214:                                       ; preds = %for.body204, %if.end201
  call void @SubMtx_columnIndices(%struct._SubMtx* %call156, i32* %ncolLKJ, i32** %colindLKJ) #5
  %92 = load i32* %ncolLKJ, align 4, !tbaa !3
  %93 = load i32** %colindLKJ, align 8, !tbaa !0
  call void @IVramp(i32 %92, i32* %93, i32 0, i32 1) #5
  br i1 %cmp29, label %if.then216, label %if.end220

if.then216:                                       ; preds = %for.end214
  %call217 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %msgFile, i8* getelementptr inbounds ([27 x i8]* @.str16, i64 0, i64 0), i32 %K.0419, i32 %J.2429) #5
  %call218 = call i32 @SubMtx_writeForHumanEye(%struct._SubMtx* %call156, %struct._IO_FILE* %msgFile) #5
  %call219 = call i32 @fflush(%struct._IO_FILE* %msgFile) #5
  br label %if.end220

if.end220:                                        ; preds = %if.then216, %for.end214
  %94 = bitcast %struct._SubMtx* %call156 to i8*
  call void @I2Ohash_insert(%struct._I2Ohash* %1, i32 %K.0419, i32 %J.2429, i8* %94) #5
  %.pre451 = load i32* %nrowLJ, align 4, !tbaa !3
  br label %no_entries

no_entries:                                       ; preds = %if.then147, %if.end220
  %95 = phi i32 [ %.pre451, %if.end220 ], [ %50, %if.then147 ]
  %offset.4 = phi i32 [ %offset.3, %if.end220 ], [ %offset.2420, %if.then147 ]
  %count.4 = phi i32 [ %count.3, %if.end220 ], [ 0, %if.then147 ]
  %cmp221 = icmp slt i32 %45, %95
  br i1 %cmp221, label %if.then222, label %if.end228

if.then222:                                       ; preds = %no_entries
  %96 = load i32** %rowindLJ, align 8, !tbaa !0
  %arrayidx224 = getelementptr inbounds i32* %96, i64 %indvars.iv442
  %97 = load i32* %arrayidx224, align 4, !tbaa !3
  %idxprom225 = sext i32 %97 to i64
  %arrayidx226 = getelementptr inbounds i32* %call7, i64 %idxprom225
  %98 = load i32* %arrayidx226, align 4, !tbaa !3
  br label %if.end228

if.end228:                                        ; preds = %lor.lhs.false133, %no_entries, %if.then222
  %99 = phi i32 [ %95, %if.then222 ], [ %95, %no_entries ], [ %50, %lor.lhs.false133 ]
  %K.1 = phi i32 [ %98, %if.then222 ], [ %K.0419, %no_entries ], [ %K.0419, %lor.lhs.false133 ]
  %offset.5 = phi i32 [ %offset.4, %if.then222 ], [ %offset.4, %no_entries ], [ %offset.2420, %lor.lhs.false133 ]
  %first.1 = phi i32 [ %45, %if.then222 ], [ %45, %no_entries ], [ %first.0423, %lor.lhs.false133 ]
  %count.5 = phi i32 [ %count.4, %if.then222 ], [ %count.4, %no_entries ], [ %count.2424, %lor.lhs.false133 ]
  %cmp229 = icmp slt i32 %45, %99
  br i1 %cmp229, label %land.lhs.true230, label %for.end240

land.lhs.true230:                                 ; preds = %if.end228
  %100 = load i32* %mode101, align 4, !tbaa !3
  %cmp232 = icmp eq i32 %100, 2
  br i1 %cmp232, label %if.then233, label %for.inc238.thread

if.then233:                                       ; preds = %land.lhs.true230
  %101 = load i32** %sizesLJ, align 8, !tbaa !0
  %arrayidx235 = getelementptr inbounds i32* %101, i64 %indvars.iv442
  %102 = load i32* %arrayidx235, align 4, !tbaa !3
  %add236 = add nsw i32 %102, %count.5
  br label %for.inc238.thread

for.inc238.thread:                                ; preds = %land.lhs.true230, %if.then233
  %count.6.ph = phi i32 [ %count.5, %land.lhs.true230 ], [ %add236, %if.then233 ]
  %indvars.iv.next443454 = add i64 %indvars.iv442, 1
  br label %for.body116

for.end240:                                       ; preds = %if.end228, %if.end110
  %count.2.lcssa = phi i32 [ %count.1, %if.end110 ], [ %count.5, %if.end228 ]
  %offset.2.lcssa = phi i32 [ %offset.1, %if.end110 ], [ %offset.5, %if.end228 ]
  call void @SubMtxManager_releaseObject(%struct._SubMtxManager* %2, %struct._SubMtx* %call49) #5
  br label %for.inc243

for.inc243:                                       ; preds = %if.end54, %for.end240, %if.end99
  %offset.6 = phi i32 [ %offset.0432, %if.end99 ], [ %offset.2.lcssa, %for.end240 ], [ %offset.0432, %if.end54 ]
  %count.7 = phi i32 [ %count.0433, %if.end99 ], [ %count.2.lcssa, %for.end240 ], [ %count.0433, %if.end54 ]
  %inc244 = add nsw i32 %J.2429, 1
  %exitcond = icmp eq i32 %inc244, %call3
  br i1 %exitcond, label %for.end245, label %for.body48

for.end245:                                       ; preds = %for.cond35.preheader, %for.inc243, %for.cond46.preheader
  call void @IVfree(i32* %call7) #5
  call void @IVfree(i32* %call8) #5
  ret void
}

; Function Attrs: optsize
declare void @FrontMtx_rowIndices(%struct._FrontMtx*, i32, i32*, i32**) #3

; Function Attrs: optsize
declare %struct._SubMtx* @FrontMtx_lowerMtx(%struct._FrontMtx*, i32, i32) #3

; Function Attrs: optsize
declare void @SubMtx_sparseRowsInfo(%struct._SubMtx*, i32*, i32*, i32**, i32**, double**) #3

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
