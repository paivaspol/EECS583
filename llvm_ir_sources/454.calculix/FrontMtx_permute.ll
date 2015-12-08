; ModuleID = '../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_permute.c'
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
@.str = private unnamed_addr constant [65 x i8] c"\0A fatal error in FrontMtx_permuteUpperAdj(%p,%d,%p)\0A badn input\0A\00", align 1
@.str1 = private unnamed_addr constant [65 x i8] c"\0A fatal error in FrontMtx_permuteLowerAdj(%p,%d,%p)\0A badn input\0A\00", align 1
@.str2 = private unnamed_addr constant [70 x i8] c"\0A fatal error in FrontMtx_permuteUpperMatrices(%p,%d,%p)\0A badn input\0A\00", align 1
@.str3 = private unnamed_addr constant [70 x i8] c"\0A fatal error in FrontMtx_permuteLowerMatrices(%p,%d,%p)\0A badn input\0A\00", align 1
@.str4 = private unnamed_addr constant [35 x i8] c"\0A\0A inside reorderRowIndices(%d,%d)\00", align 1
@.str5 = private unnamed_addr constant [22 x i8] c"\0A nJ = %d, nrowJ = %d\00", align 1
@.str6 = private unnamed_addr constant [13 x i8] c", nrowK = %d\00", align 1
@.str7 = private unnamed_addr constant [93 x i8] c"\0A fatal error FrontMtx_reorderRowIndices()\0A J = %d, K = %d, nJ = %d, nrowJ = %d, nrowK = %d\0A\00", align 1
@.str8 = private unnamed_addr constant [10 x i8] c"\0A rowindJ\00", align 1
@.str9 = private unnamed_addr constant [10 x i8] c"\0A rowindK\00", align 1
@.str10 = private unnamed_addr constant [16 x i8] c"\0A local rowindJ\00", align 1
@.str11 = private unnamed_addr constant [17 x i8] c"\0A global rowindJ\00", align 1
@.str12 = private unnamed_addr constant [38 x i8] c"\0A\0A inside reorderColumnIndices(%d,%d)\00", align 1
@.str13 = private unnamed_addr constant [22 x i8] c"\0A nJ = %d, ncolJ = %d\00", align 1
@.str14 = private unnamed_addr constant [13 x i8] c", ncolK = %d\00", align 1
@.str15 = private unnamed_addr constant [96 x i8] c"\0A fatal error FrontMtx_reorderColumnIndices()\0A J = %d, K = %d, nJ = %d, ncolJ = %d, ncolK = %d\0A\00", align 1
@.str16 = private unnamed_addr constant [10 x i8] c"\0A colindJ\00", align 1
@.str17 = private unnamed_addr constant [10 x i8] c"\0A colindK\00", align 1
@.str18 = private unnamed_addr constant [16 x i8] c"\0A local colindJ\00", align 1
@.str19 = private unnamed_addr constant [17 x i8] c"\0A global colindJ\00", align 1

; Function Attrs: nounwind optsize uwtable
define void @FrontMtx_permuteUpperAdj(%struct._FrontMtx* %frontmtx, i32 %msglvl, %struct._IO_FILE* %msgFile) #0 {
entry:
  %ncolJ.i = alloca i32, align 4
  %ncolK.i = alloca i32, align 4
  %colindJ.i = alloca i32*, align 8
  %colindK.i = alloca i32*, align 8
  %cmp = icmp eq %struct._FrontMtx* %frontmtx, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %cmp1 = icmp sgt i32 %msglvl, 0
  %cmp2 = icmp eq %struct._IO_FILE* %msgFile, null
  %or.cond = and i1 %cmp1, %cmp2
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([65 x i8]* @.str, i64 0, i64 0), %struct._FrontMtx* %frontmtx, i32 %msglvl, %struct._IO_FILE* %msgFile) #5
  call void @exit(i32 -1) #6
  unreachable

if.end:                                           ; preds = %lor.lhs.false
  %call3 = call i32 @FrontMtx_neqns(%struct._FrontMtx* %frontmtx) #5
  %call4 = call i32* @IVinit(i32 %call3, i32 -1) #5
  %call5 = call %struct._Tree* @FrontMtx_frontTree(%struct._FrontMtx* %frontmtx) #5
  %par6 = getelementptr inbounds %struct._Tree* %call5, i64 0, i32 2
  %1 = load i32** %par6, align 8, !tbaa !0
  %call7 = call i32 @Tree_preOTfirst(%struct._Tree* %call5) #5
  %cmp829 = icmp eq i32 %call7, -1
  br i1 %cmp829, label %for.end, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %if.end
  %2 = bitcast i32* %ncolJ.i to i8*
  %3 = bitcast i32* %ncolK.i to i8*
  %4 = bitcast i32** %colindJ.i to i8*
  %5 = bitcast i32** %colindK.i to i8*
  %cmp.i = icmp sgt i32 %msglvl, 2
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %J.030 = phi i32 [ %call7, %for.body.lr.ph ], [ %call12, %for.inc ]
  %idxprom = sext i32 %J.030 to i64
  %arrayidx = getelementptr inbounds i32* %1, i64 %idxprom
  %6 = load i32* %arrayidx, align 4, !tbaa !3
  %cmp9 = icmp eq i32 %6, -1
  br i1 %cmp9, label %for.inc, label %if.then10

if.then10:                                        ; preds = %for.body
  call void @llvm.lifetime.start(i64 4, i8* %2) #4
  call void @llvm.lifetime.start(i64 4, i8* %3) #4
  call void @llvm.lifetime.start(i64 8, i8* %4) #4
  call void @llvm.lifetime.start(i64 8, i8* %5) #4
  br i1 %cmp.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.then10
  %call.i = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %msgFile, i8* getelementptr inbounds ([38 x i8]* @.str12, i64 0, i64 0), i32 %J.030, i32 %6) #5
  %call1.i = call i32 @fflush(%struct._IO_FILE* %msgFile) #5
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.then10
  %call2.i = call i32 @FrontMtx_frontSize(%struct._FrontMtx* %frontmtx, i32 %J.030) #5
  call void @FrontMtx_columnIndices(%struct._FrontMtx* %frontmtx, i32 %J.030, i32* %ncolJ.i, i32** %colindJ.i) #5
  br i1 %cmp.i, label %if.then4.i, label %if.end7.i

if.then4.i:                                       ; preds = %if.end.i
  %7 = load i32* %ncolJ.i, align 4, !tbaa !3
  %call5.i = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %msgFile, i8* getelementptr inbounds ([22 x i8]* @.str13, i64 0, i64 0), i32 %call2.i, i32 %7) #5
  %call6.i = call i32 @fflush(%struct._IO_FILE* %msgFile) #5
  br label %if.end7.i

if.end7.i:                                        ; preds = %if.then4.i, %if.end.i
  %8 = load i32* %ncolJ.i, align 4, !tbaa !3
  %cmp8.i = icmp eq i32 %8, 0
  br i1 %cmp8.i, label %for.inc, label %if.end10.i

if.end10.i:                                       ; preds = %if.end7.i
  call void @FrontMtx_columnIndices(%struct._FrontMtx* %frontmtx, i32 %6, i32* %ncolK.i, i32** %colindK.i) #5
  br i1 %cmp.i, label %if.then12.i, label %if.end15.i

if.then12.i:                                      ; preds = %if.end10.i
  %9 = load i32* %ncolK.i, align 4, !tbaa !3
  %call13.i = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %msgFile, i8* getelementptr inbounds ([13 x i8]* @.str14, i64 0, i64 0), i32 %9) #5
  %call14.i = call i32 @fflush(%struct._IO_FILE* %msgFile) #5
  br label %if.end15.i

if.end15.i:                                       ; preds = %if.then12.i, %if.end10.i
  %10 = load i32* %ncolK.i, align 4, !tbaa !3
  %cmp16.i = icmp eq i32 %10, 0
  br i1 %cmp16.i, label %if.then17.i, label %if.end19.i

if.then17.i:                                      ; preds = %if.end15.i
  %11 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %12 = load i32* %ncolJ.i, align 4, !tbaa !3
  %call18.i = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %11, i8* getelementptr inbounds ([96 x i8]* @.str15, i64 0, i64 0), i32 %J.030, i32 %6, i32 %call2.i, i32 %12, i32 0) #5
  call void @exit(i32 -1) #6
  unreachable

if.end19.i:                                       ; preds = %if.end15.i
  br i1 %cmp.i, label %if.then21.i, label %for.cond.preheader.i

if.then21.i:                                      ; preds = %if.end19.i
  %13 = call i64 @fwrite(i8* getelementptr inbounds ([10 x i8]* @.str16, i64 0, i64 0), i64 9, i64 1, %struct._IO_FILE* %msgFile) #4
  %14 = load i32* %ncolJ.i, align 4, !tbaa !3
  %15 = load i32** %colindJ.i, align 8, !tbaa !0
  call void @IVfprintf(%struct._IO_FILE* %msgFile, i32 %14, i32* %15) #5
  %16 = call i64 @fwrite(i8* getelementptr inbounds ([10 x i8]* @.str17, i64 0, i64 0), i64 9, i64 1, %struct._IO_FILE* %msgFile) #4
  %17 = load i32* %ncolK.i, align 4, !tbaa !3
  %18 = load i32** %colindK.i, align 8, !tbaa !0
  call void @IVfprintf(%struct._IO_FILE* %msgFile, i32 %17, i32* %18) #5
  %call24.i = call i32 @fflush(%struct._IO_FILE* %msgFile) #5
  %.pre.i = load i32* %ncolK.i, align 4, !tbaa !3
  br label %for.cond.preheader.i

for.cond.preheader.i:                             ; preds = %if.then21.i, %if.end19.i
  %19 = phi i32 [ %.pre.i, %if.then21.i ], [ %10, %if.end19.i ]
  %cmp26112.i = icmp sgt i32 %19, 0
  br i1 %cmp26112.i, label %for.body.lr.ph.i, label %for.cond29.preheader.i

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  %20 = load i32** %colindK.i, align 8, !tbaa !0
  br label %for.body.i

for.cond29.preheader.i:                           ; preds = %for.body.i, %for.cond.preheader.i
  %21 = load i32* %ncolJ.i, align 4, !tbaa !3
  %cmp30110.i = icmp slt i32 %call2.i, %21
  br i1 %cmp30110.i, label %for.body31.lr.ph.i, label %for.end40.i

for.body31.lr.ph.i:                               ; preds = %for.cond29.preheader.i
  %22 = load i32** %colindJ.i, align 8, !tbaa !0
  %23 = sext i32 %call2.i to i64
  br label %for.body31.i

for.body.i:                                       ; preds = %for.body.i, %for.body.lr.ph.i
  %indvars.iv116.i = phi i64 [ 0, %for.body.lr.ph.i ], [ %indvars.iv.next117.i, %for.body.i ]
  %arrayidx.i = getelementptr inbounds i32* %20, i64 %indvars.iv116.i
  %24 = load i32* %arrayidx.i, align 4, !tbaa !3
  %idxprom27.i = sext i32 %24 to i64
  %arrayidx28.i = getelementptr inbounds i32* %call4, i64 %idxprom27.i
  %25 = trunc i64 %indvars.iv116.i to i32
  store i32 %25, i32* %arrayidx28.i, align 4, !tbaa !3
  %indvars.iv.next117.i = add i64 %indvars.iv116.i, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next117.i to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %19
  br i1 %exitcond, label %for.cond29.preheader.i, label %for.body.i

for.body31.i:                                     ; preds = %for.body31.i, %for.body31.lr.ph.i
  %indvars.iv114.i = phi i64 [ %23, %for.body31.lr.ph.i ], [ %indvars.iv.next115.i, %for.body31.i ]
  %arrayidx33.i = getelementptr inbounds i32* %22, i64 %indvars.iv114.i
  %26 = load i32* %arrayidx33.i, align 4, !tbaa !3
  %idxprom34.i = sext i32 %26 to i64
  %arrayidx35.i = getelementptr inbounds i32* %call4, i64 %idxprom34.i
  %27 = load i32* %arrayidx35.i, align 4, !tbaa !3
  store i32 %27, i32* %arrayidx33.i, align 4, !tbaa !3
  %indvars.iv.next115.i = add i64 %indvars.iv114.i, 1
  %28 = load i32* %ncolJ.i, align 4, !tbaa !3
  %29 = trunc i64 %indvars.iv.next115.i to i32
  %cmp30.i = icmp slt i32 %29, %28
  br i1 %cmp30.i, label %for.body31.i, label %for.end40.i

for.end40.i:                                      ; preds = %for.body31.i, %for.cond29.preheader.i
  %30 = phi i32 [ %21, %for.cond29.preheader.i ], [ %28, %for.body31.i ]
  br i1 %cmp.i, label %if.then42.i, label %if.end45.i

if.then42.i:                                      ; preds = %for.end40.i
  %31 = call i64 @fwrite(i8* getelementptr inbounds ([16 x i8]* @.str18, i64 0, i64 0), i64 15, i64 1, %struct._IO_FILE* %msgFile) #4
  %32 = load i32* %ncolJ.i, align 4, !tbaa !3
  %33 = load i32** %colindJ.i, align 8, !tbaa !0
  call void @IVfprintf(%struct._IO_FILE* %msgFile, i32 %32, i32* %33) #5
  %call44.i = call i32 @fflush(%struct._IO_FILE* %msgFile) #5
  %.pre118.i = load i32* %ncolJ.i, align 4, !tbaa !3
  br label %if.end45.i

if.end45.i:                                       ; preds = %for.end40.i, %if.then42.i
  %34 = phi i32 [ %.pre118.i, %if.then42.i ], [ %30, %for.end40.i ]
  %sub.i = sub nsw i32 %34, %call2.i
  %35 = load i32** %colindJ.i, align 8, !tbaa !0
  %idx.ext.i = sext i32 %call2.i to i64
  %add.ptr.i = getelementptr inbounds i32* %35, i64 %idx.ext.i
  call void @IVqsortUp(i32 %sub.i, i32* %add.ptr.i) #5
  %36 = load i32* %ncolJ.i, align 4, !tbaa !3
  %cmp47108.i = icmp slt i32 %call2.i, %36
  br i1 %cmp47108.i, label %for.body48.lr.ph.i, label %for.end57.i

for.body48.lr.ph.i:                               ; preds = %if.end45.i
  %37 = load i32** %colindJ.i, align 8, !tbaa !0
  %38 = load i32** %colindK.i, align 8, !tbaa !0
  br label %for.body48.i

for.body48.i:                                     ; preds = %for.body48.i, %for.body48.lr.ph.i
  %indvars.iv.i = phi i64 [ %idx.ext.i, %for.body48.lr.ph.i ], [ %indvars.iv.next.i, %for.body48.i ]
  %arrayidx50.i = getelementptr inbounds i32* %37, i64 %indvars.iv.i
  %39 = load i32* %arrayidx50.i, align 4, !tbaa !3
  %idxprom51.i = sext i32 %39 to i64
  %arrayidx52.i = getelementptr inbounds i32* %38, i64 %idxprom51.i
  %40 = load i32* %arrayidx52.i, align 4, !tbaa !3
  store i32 %40, i32* %arrayidx50.i, align 4, !tbaa !3
  %indvars.iv.next.i = add i64 %indvars.iv.i, 1
  %41 = load i32* %ncolJ.i, align 4, !tbaa !3
  %42 = trunc i64 %indvars.iv.next.i to i32
  %cmp47.i = icmp slt i32 %42, %41
  br i1 %cmp47.i, label %for.body48.i, label %for.end57.i

for.end57.i:                                      ; preds = %for.body48.i, %if.end45.i
  br i1 %cmp.i, label %if.then59.i, label %for.inc

if.then59.i:                                      ; preds = %for.end57.i
  %43 = call i64 @fwrite(i8* getelementptr inbounds ([17 x i8]* @.str19, i64 0, i64 0), i64 16, i64 1, %struct._IO_FILE* %msgFile) #4
  %44 = load i32* %ncolJ.i, align 4, !tbaa !3
  %45 = load i32** %colindJ.i, align 8, !tbaa !0
  call void @IVfprintf(%struct._IO_FILE* %msgFile, i32 %44, i32* %45) #5
  %call61.i = call i32 @fflush(%struct._IO_FILE* %msgFile) #5
  br label %for.inc

for.inc:                                          ; preds = %if.then59.i, %for.end57.i, %if.end7.i, %for.body
  %call12 = call i32 @Tree_preOTnext(%struct._Tree* %call5, i32 %J.030) #5
  %cmp8 = icmp eq i32 %call12, -1
  br i1 %cmp8, label %for.end, label %for.body

for.end:                                          ; preds = %for.inc, %if.end
  call void @IVfree(i32* %call4) #5
  ret void
}

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #1

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32) #2

; Function Attrs: optsize
declare i32 @FrontMtx_neqns(%struct._FrontMtx*) #3

; Function Attrs: optsize
declare i32* @IVinit(i32, i32) #3

; Function Attrs: optsize
declare %struct._Tree* @FrontMtx_frontTree(%struct._FrontMtx*) #3

; Function Attrs: optsize
declare i32 @Tree_preOTfirst(%struct._Tree*) #3

; Function Attrs: optsize
declare i32 @Tree_preOTnext(%struct._Tree*, i32) #3

; Function Attrs: optsize
declare void @IVfree(i32*) #3

; Function Attrs: nounwind optsize uwtable
define void @FrontMtx_permuteLowerAdj(%struct._FrontMtx* %frontmtx, i32 %msglvl, %struct._IO_FILE* %msgFile) #0 {
entry:
  %nrowJ.i = alloca i32, align 4
  %nrowK.i = alloca i32, align 4
  %rowindJ.i = alloca i32*, align 8
  %rowindK.i = alloca i32*, align 8
  %cmp = icmp eq %struct._FrontMtx* %frontmtx, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %cmp1 = icmp sgt i32 %msglvl, 0
  %cmp2 = icmp eq %struct._IO_FILE* %msgFile, null
  %or.cond = and i1 %cmp1, %cmp2
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), %struct._FrontMtx* %frontmtx, i32 %msglvl, %struct._IO_FILE* %msgFile) #5
  call void @exit(i32 -1) #6
  unreachable

if.end:                                           ; preds = %lor.lhs.false
  %call3 = call i32 @FrontMtx_neqns(%struct._FrontMtx* %frontmtx) #5
  %call4 = call i32* @IVinit(i32 %call3, i32 -1) #5
  %call5 = call %struct._Tree* @FrontMtx_frontTree(%struct._FrontMtx* %frontmtx) #5
  %par6 = getelementptr inbounds %struct._Tree* %call5, i64 0, i32 2
  %1 = load i32** %par6, align 8, !tbaa !0
  %call7 = call i32 @Tree_preOTfirst(%struct._Tree* %call5) #5
  %cmp829 = icmp eq i32 %call7, -1
  br i1 %cmp829, label %for.end, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %if.end
  %2 = bitcast i32* %nrowJ.i to i8*
  %3 = bitcast i32* %nrowK.i to i8*
  %4 = bitcast i32** %rowindJ.i to i8*
  %5 = bitcast i32** %rowindK.i to i8*
  %cmp.i = icmp sgt i32 %msglvl, 2
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %J.030 = phi i32 [ %call7, %for.body.lr.ph ], [ %call12, %for.inc ]
  %idxprom = sext i32 %J.030 to i64
  %arrayidx = getelementptr inbounds i32* %1, i64 %idxprom
  %6 = load i32* %arrayidx, align 4, !tbaa !3
  %cmp9 = icmp eq i32 %6, -1
  br i1 %cmp9, label %for.inc, label %if.then10

if.then10:                                        ; preds = %for.body
  call void @llvm.lifetime.start(i64 4, i8* %2) #4
  call void @llvm.lifetime.start(i64 4, i8* %3) #4
  call void @llvm.lifetime.start(i64 8, i8* %4) #4
  call void @llvm.lifetime.start(i64 8, i8* %5) #4
  br i1 %cmp.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.then10
  %call.i = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %msgFile, i8* getelementptr inbounds ([35 x i8]* @.str4, i64 0, i64 0), i32 %J.030, i32 %6) #5
  %call1.i = call i32 @fflush(%struct._IO_FILE* %msgFile) #5
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.then10
  %call2.i = call i32 @FrontMtx_frontSize(%struct._FrontMtx* %frontmtx, i32 %J.030) #5
  call void @FrontMtx_rowIndices(%struct._FrontMtx* %frontmtx, i32 %J.030, i32* %nrowJ.i, i32** %rowindJ.i) #5
  br i1 %cmp.i, label %if.then4.i, label %if.end7.i

if.then4.i:                                       ; preds = %if.end.i
  %7 = load i32* %nrowJ.i, align 4, !tbaa !3
  %call5.i = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %msgFile, i8* getelementptr inbounds ([22 x i8]* @.str5, i64 0, i64 0), i32 %call2.i, i32 %7) #5
  %call6.i = call i32 @fflush(%struct._IO_FILE* %msgFile) #5
  br label %if.end7.i

if.end7.i:                                        ; preds = %if.then4.i, %if.end.i
  %8 = load i32* %nrowJ.i, align 4, !tbaa !3
  %cmp8.i = icmp eq i32 %8, 0
  br i1 %cmp8.i, label %for.inc, label %if.end10.i

if.end10.i:                                       ; preds = %if.end7.i
  call void @FrontMtx_rowIndices(%struct._FrontMtx* %frontmtx, i32 %6, i32* %nrowK.i, i32** %rowindK.i) #5
  br i1 %cmp.i, label %if.then12.i, label %if.end15.i

if.then12.i:                                      ; preds = %if.end10.i
  %9 = load i32* %nrowK.i, align 4, !tbaa !3
  %call13.i = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %msgFile, i8* getelementptr inbounds ([13 x i8]* @.str6, i64 0, i64 0), i32 %9) #5
  %call14.i = call i32 @fflush(%struct._IO_FILE* %msgFile) #5
  br label %if.end15.i

if.end15.i:                                       ; preds = %if.then12.i, %if.end10.i
  %10 = load i32* %nrowK.i, align 4, !tbaa !3
  %cmp16.i = icmp eq i32 %10, 0
  br i1 %cmp16.i, label %if.then17.i, label %if.end19.i

if.then17.i:                                      ; preds = %if.end15.i
  %11 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %12 = load i32* %nrowJ.i, align 4, !tbaa !3
  %call18.i = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %11, i8* getelementptr inbounds ([93 x i8]* @.str7, i64 0, i64 0), i32 %J.030, i32 %6, i32 %call2.i, i32 %12, i32 0) #5
  call void @exit(i32 -1) #6
  unreachable

if.end19.i:                                       ; preds = %if.end15.i
  br i1 %cmp.i, label %if.then21.i, label %for.cond.preheader.i

if.then21.i:                                      ; preds = %if.end19.i
  %13 = call i64 @fwrite(i8* getelementptr inbounds ([10 x i8]* @.str8, i64 0, i64 0), i64 9, i64 1, %struct._IO_FILE* %msgFile) #4
  %14 = load i32* %nrowJ.i, align 4, !tbaa !3
  %15 = load i32** %rowindJ.i, align 8, !tbaa !0
  call void @IVfprintf(%struct._IO_FILE* %msgFile, i32 %14, i32* %15) #5
  %16 = call i64 @fwrite(i8* getelementptr inbounds ([10 x i8]* @.str9, i64 0, i64 0), i64 9, i64 1, %struct._IO_FILE* %msgFile) #4
  %17 = load i32* %nrowK.i, align 4, !tbaa !3
  %18 = load i32** %rowindK.i, align 8, !tbaa !0
  call void @IVfprintf(%struct._IO_FILE* %msgFile, i32 %17, i32* %18) #5
  %call24.i = call i32 @fflush(%struct._IO_FILE* %msgFile) #5
  %.pre.i = load i32* %nrowK.i, align 4, !tbaa !3
  br label %for.cond.preheader.i

for.cond.preheader.i:                             ; preds = %if.then21.i, %if.end19.i
  %19 = phi i32 [ %.pre.i, %if.then21.i ], [ %10, %if.end19.i ]
  %cmp26112.i = icmp sgt i32 %19, 0
  br i1 %cmp26112.i, label %for.body.lr.ph.i, label %for.cond29.preheader.i

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  %20 = load i32** %rowindK.i, align 8, !tbaa !0
  br label %for.body.i

for.cond29.preheader.i:                           ; preds = %for.body.i, %for.cond.preheader.i
  %21 = load i32* %nrowJ.i, align 4, !tbaa !3
  %cmp30110.i = icmp slt i32 %call2.i, %21
  br i1 %cmp30110.i, label %for.body31.lr.ph.i, label %for.end40.i

for.body31.lr.ph.i:                               ; preds = %for.cond29.preheader.i
  %22 = load i32** %rowindJ.i, align 8, !tbaa !0
  %23 = sext i32 %call2.i to i64
  br label %for.body31.i

for.body.i:                                       ; preds = %for.body.i, %for.body.lr.ph.i
  %indvars.iv116.i = phi i64 [ 0, %for.body.lr.ph.i ], [ %indvars.iv.next117.i, %for.body.i ]
  %arrayidx.i = getelementptr inbounds i32* %20, i64 %indvars.iv116.i
  %24 = load i32* %arrayidx.i, align 4, !tbaa !3
  %idxprom27.i = sext i32 %24 to i64
  %arrayidx28.i = getelementptr inbounds i32* %call4, i64 %idxprom27.i
  %25 = trunc i64 %indvars.iv116.i to i32
  store i32 %25, i32* %arrayidx28.i, align 4, !tbaa !3
  %indvars.iv.next117.i = add i64 %indvars.iv116.i, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next117.i to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %19
  br i1 %exitcond, label %for.cond29.preheader.i, label %for.body.i

for.body31.i:                                     ; preds = %for.body31.i, %for.body31.lr.ph.i
  %indvars.iv114.i = phi i64 [ %23, %for.body31.lr.ph.i ], [ %indvars.iv.next115.i, %for.body31.i ]
  %arrayidx33.i = getelementptr inbounds i32* %22, i64 %indvars.iv114.i
  %26 = load i32* %arrayidx33.i, align 4, !tbaa !3
  %idxprom34.i = sext i32 %26 to i64
  %arrayidx35.i = getelementptr inbounds i32* %call4, i64 %idxprom34.i
  %27 = load i32* %arrayidx35.i, align 4, !tbaa !3
  store i32 %27, i32* %arrayidx33.i, align 4, !tbaa !3
  %indvars.iv.next115.i = add i64 %indvars.iv114.i, 1
  %28 = load i32* %nrowJ.i, align 4, !tbaa !3
  %29 = trunc i64 %indvars.iv.next115.i to i32
  %cmp30.i = icmp slt i32 %29, %28
  br i1 %cmp30.i, label %for.body31.i, label %for.end40.i

for.end40.i:                                      ; preds = %for.body31.i, %for.cond29.preheader.i
  %30 = phi i32 [ %21, %for.cond29.preheader.i ], [ %28, %for.body31.i ]
  br i1 %cmp.i, label %if.then42.i, label %if.end45.i

if.then42.i:                                      ; preds = %for.end40.i
  %31 = call i64 @fwrite(i8* getelementptr inbounds ([16 x i8]* @.str10, i64 0, i64 0), i64 15, i64 1, %struct._IO_FILE* %msgFile) #4
  %32 = load i32* %nrowJ.i, align 4, !tbaa !3
  %33 = load i32** %rowindJ.i, align 8, !tbaa !0
  call void @IVfprintf(%struct._IO_FILE* %msgFile, i32 %32, i32* %33) #5
  %call44.i = call i32 @fflush(%struct._IO_FILE* %msgFile) #5
  %.pre118.i = load i32* %nrowJ.i, align 4, !tbaa !3
  br label %if.end45.i

if.end45.i:                                       ; preds = %for.end40.i, %if.then42.i
  %34 = phi i32 [ %.pre118.i, %if.then42.i ], [ %30, %for.end40.i ]
  %sub.i = sub nsw i32 %34, %call2.i
  %35 = load i32** %rowindJ.i, align 8, !tbaa !0
  %idx.ext.i = sext i32 %call2.i to i64
  %add.ptr.i = getelementptr inbounds i32* %35, i64 %idx.ext.i
  call void @IVqsortUp(i32 %sub.i, i32* %add.ptr.i) #5
  %36 = load i32* %nrowJ.i, align 4, !tbaa !3
  %cmp47108.i = icmp slt i32 %call2.i, %36
  br i1 %cmp47108.i, label %for.body48.lr.ph.i, label %for.end57.i

for.body48.lr.ph.i:                               ; preds = %if.end45.i
  %37 = load i32** %rowindJ.i, align 8, !tbaa !0
  %38 = load i32** %rowindK.i, align 8, !tbaa !0
  br label %for.body48.i

for.body48.i:                                     ; preds = %for.body48.i, %for.body48.lr.ph.i
  %indvars.iv.i = phi i64 [ %idx.ext.i, %for.body48.lr.ph.i ], [ %indvars.iv.next.i, %for.body48.i ]
  %arrayidx50.i = getelementptr inbounds i32* %37, i64 %indvars.iv.i
  %39 = load i32* %arrayidx50.i, align 4, !tbaa !3
  %idxprom51.i = sext i32 %39 to i64
  %arrayidx52.i = getelementptr inbounds i32* %38, i64 %idxprom51.i
  %40 = load i32* %arrayidx52.i, align 4, !tbaa !3
  store i32 %40, i32* %arrayidx50.i, align 4, !tbaa !3
  %indvars.iv.next.i = add i64 %indvars.iv.i, 1
  %41 = load i32* %nrowJ.i, align 4, !tbaa !3
  %42 = trunc i64 %indvars.iv.next.i to i32
  %cmp47.i = icmp slt i32 %42, %41
  br i1 %cmp47.i, label %for.body48.i, label %for.end57.i

for.end57.i:                                      ; preds = %for.body48.i, %if.end45.i
  br i1 %cmp.i, label %if.then59.i, label %for.inc

if.then59.i:                                      ; preds = %for.end57.i
  %43 = call i64 @fwrite(i8* getelementptr inbounds ([17 x i8]* @.str11, i64 0, i64 0), i64 16, i64 1, %struct._IO_FILE* %msgFile) #4
  %44 = load i32* %nrowJ.i, align 4, !tbaa !3
  %45 = load i32** %rowindJ.i, align 8, !tbaa !0
  call void @IVfprintf(%struct._IO_FILE* %msgFile, i32 %44, i32* %45) #5
  %call61.i = call i32 @fflush(%struct._IO_FILE* %msgFile) #5
  br label %for.inc

for.inc:                                          ; preds = %if.then59.i, %for.end57.i, %if.end7.i, %for.body
  %call12 = call i32 @Tree_preOTnext(%struct._Tree* %call5, i32 %J.030) #5
  %cmp8 = icmp eq i32 %call12, -1
  br i1 %cmp8, label %for.end, label %for.body

for.end:                                          ; preds = %for.inc, %if.end
  call void @IVfree(i32* %call4) #5
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @FrontMtx_permuteUpperMatrices(%struct._FrontMtx* %frontmtx, i32 %msglvl, %struct._IO_FILE* %msgFile) #0 {
entry:
  %ncolJ = alloca i32, align 4
  %ncolUJ = alloca i32, align 4
  %colindJ = alloca i32*, align 8
  %colindUJ = alloca i32*, align 8
  %cmp = icmp eq %struct._FrontMtx* %frontmtx, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %cmp1 = icmp sgt i32 %msglvl, 0
  %cmp2 = icmp eq %struct._IO_FILE* %msgFile, null
  %or.cond = and i1 %cmp1, %cmp2
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([70 x i8]* @.str2, i64 0, i64 0), %struct._FrontMtx* %frontmtx, i32 %msglvl, %struct._IO_FILE* %msgFile) #5
  call void @exit(i32 -1) #6
  unreachable

if.end:                                           ; preds = %lor.lhs.false
  %call3 = call i32 @FrontMtx_nfront(%struct._FrontMtx* %frontmtx) #5
  %call4 = call i32 @FrontMtx_neqns(%struct._FrontMtx* %frontmtx) #5
  %call5 = call i32* @IVinit(i32 %call4, i32 -1) #5
  %cmp6103 = icmp sgt i32 %call3, 0
  br i1 %cmp6103, label %for.body, label %for.end60

for.body:                                         ; preds = %if.end, %for.inc58
  %J.0104 = phi i32 [ %inc59, %for.inc58 ], [ 0, %if.end ]
  %call7 = call %struct._SubMtx* @FrontMtx_upperMtx(%struct._FrontMtx* %frontmtx, i32 %J.0104, i32 %call3) #5
  %cmp8 = icmp eq %struct._SubMtx* %call7, null
  br i1 %cmp8, label %for.inc58, label %if.then9

if.then9:                                         ; preds = %for.body
  %call10 = call i32 @FrontMtx_frontSize(%struct._FrontMtx* %frontmtx, i32 %J.0104) #5
  call void @FrontMtx_columnIndices(%struct._FrontMtx* %frontmtx, i32 %J.0104, i32* %ncolJ, i32** %colindJ) #5
  call void @SubMtx_columnIndices(%struct._SubMtx* %call7, i32* %ncolUJ, i32** %colindUJ) #5
  %1 = load i32* %ncolJ, align 4, !tbaa !3
  %cmp1293 = icmp slt i32 %call10, %1
  br i1 %cmp1293, label %for.body13.lr.ph, label %for.inc58

for.body13.lr.ph:                                 ; preds = %if.then9
  %2 = load i32** %colindJ, align 8, !tbaa !0
  %3 = load i32** %colindUJ, align 8, !tbaa !0
  %4 = sext i32 %call10 to i64
  br label %for.body13

for.body13:                                       ; preds = %for.body13.lr.ph, %for.inc
  %indvars.iv105 = phi i64 [ 0, %for.body13.lr.ph ], [ %indvars.iv.next106, %for.inc ]
  %indvars.iv = phi i64 [ %4, %for.body13.lr.ph ], [ %indvars.iv.next, %for.inc ]
  %arrayidx = getelementptr inbounds i32* %2, i64 %indvars.iv
  %5 = load i32* %arrayidx, align 4, !tbaa !3
  %arrayidx15 = getelementptr inbounds i32* %3, i64 %indvars.iv105
  %6 = load i32* %arrayidx15, align 4, !tbaa !3
  %cmp16 = icmp eq i32 %5, %6
  br i1 %cmp16, label %for.inc, label %for.cond22.loopexit

for.inc:                                          ; preds = %for.body13
  %indvars.iv.next = add i64 %indvars.iv, 1
  %indvars.iv.next106 = add i64 %indvars.iv105, 1
  %7 = trunc i64 %indvars.iv.next to i32
  %cmp12 = icmp slt i32 %7, %1
  br i1 %cmp12, label %for.body13, label %for.inc58

for.cond22.loopexit:                              ; preds = %for.body13
  %cmp2396 = icmp sgt i32 %1, 0
  br i1 %cmp2396, label %for.body24, label %for.cond32.loopexit

for.body24:                                       ; preds = %for.cond22.loopexit, %for.body24
  %indvars.iv107 = phi i64 [ %indvars.iv.next108, %for.body24 ], [ 0, %for.cond22.loopexit ]
  %arrayidx26 = getelementptr inbounds i32* %2, i64 %indvars.iv107
  %8 = load i32* %arrayidx26, align 4, !tbaa !3
  %idxprom27 = sext i32 %8 to i64
  %arrayidx28 = getelementptr inbounds i32* %call5, i64 %idxprom27
  %9 = trunc i64 %indvars.iv107 to i32
  store i32 %9, i32* %arrayidx28, align 4, !tbaa !3
  %indvars.iv.next108 = add i64 %indvars.iv107, 1
  %10 = load i32* %ncolJ, align 4, !tbaa !3
  %11 = trunc i64 %indvars.iv.next108 to i32
  %cmp23 = icmp slt i32 %11, %10
  br i1 %cmp23, label %for.body24, label %for.cond32.loopexit

for.cond32.loopexit:                              ; preds = %for.body24, %for.cond22.loopexit
  %12 = load i32* %ncolUJ, align 4, !tbaa !3
  %cmp3398 = icmp sgt i32 %12, 0
  br i1 %cmp3398, label %for.body34, label %for.end43

for.body34:                                       ; preds = %for.cond32.loopexit, %for.body34
  %indvars.iv109 = phi i64 [ %indvars.iv.next110, %for.body34 ], [ 0, %for.cond32.loopexit ]
  %arrayidx36 = getelementptr inbounds i32* %3, i64 %indvars.iv109
  %13 = load i32* %arrayidx36, align 4, !tbaa !3
  %idxprom37 = sext i32 %13 to i64
  %arrayidx38 = getelementptr inbounds i32* %call5, i64 %idxprom37
  %14 = load i32* %arrayidx38, align 4, !tbaa !3
  store i32 %14, i32* %arrayidx36, align 4, !tbaa !3
  %indvars.iv.next110 = add i64 %indvars.iv109, 1
  %15 = load i32* %ncolUJ, align 4, !tbaa !3
  %16 = trunc i64 %indvars.iv.next110 to i32
  %cmp33 = icmp slt i32 %16, %15
  br i1 %cmp33, label %for.body34, label %for.end43

for.end43:                                        ; preds = %for.body34, %for.cond32.loopexit
  call void @SubMtx_sortColumnsUp(%struct._SubMtx* %call7) #5
  %17 = load i32* %ncolUJ, align 4, !tbaa !3
  %cmp45101 = icmp sgt i32 %17, 0
  br i1 %cmp45101, label %for.body46.lr.ph, label %for.inc58

for.body46.lr.ph:                                 ; preds = %for.end43
  %18 = load i32** %colindUJ, align 8, !tbaa !0
  %19 = load i32** %colindJ, align 8, !tbaa !0
  br label %for.body46

for.body46:                                       ; preds = %for.body46.lr.ph, %for.body46
  %indvars.iv111 = phi i64 [ 0, %for.body46.lr.ph ], [ %indvars.iv.next112, %for.body46 ]
  %arrayidx48 = getelementptr inbounds i32* %18, i64 %indvars.iv111
  %20 = load i32* %arrayidx48, align 4, !tbaa !3
  %idxprom49 = sext i32 %20 to i64
  %arrayidx50 = getelementptr inbounds i32* %19, i64 %idxprom49
  %21 = load i32* %arrayidx50, align 4, !tbaa !3
  store i32 %21, i32* %arrayidx48, align 4, !tbaa !3
  %indvars.iv.next112 = add i64 %indvars.iv111, 1
  %22 = load i32* %ncolUJ, align 4, !tbaa !3
  %23 = trunc i64 %indvars.iv.next112 to i32
  %cmp45 = icmp slt i32 %23, %22
  br i1 %cmp45, label %for.body46, label %for.inc58

for.inc58:                                        ; preds = %for.end43, %for.body46, %if.then9, %for.inc, %for.body
  %inc59 = add nsw i32 %J.0104, 1
  %exitcond = icmp eq i32 %inc59, %call3
  br i1 %exitcond, label %for.end60, label %for.body

for.end60:                                        ; preds = %for.inc58, %if.end
  call void @IVfree(i32* %call5) #5
  ret void
}

; Function Attrs: optsize
declare i32 @FrontMtx_nfront(%struct._FrontMtx*) #3

; Function Attrs: optsize
declare %struct._SubMtx* @FrontMtx_upperMtx(%struct._FrontMtx*, i32, i32) #3

; Function Attrs: optsize
declare i32 @FrontMtx_frontSize(%struct._FrontMtx*, i32) #3

; Function Attrs: optsize
declare void @FrontMtx_columnIndices(%struct._FrontMtx*, i32, i32*, i32**) #3

; Function Attrs: optsize
declare void @SubMtx_columnIndices(%struct._SubMtx*, i32*, i32**) #3

; Function Attrs: optsize
declare void @SubMtx_sortColumnsUp(%struct._SubMtx*) #3

; Function Attrs: nounwind optsize uwtable
define void @FrontMtx_permuteLowerMatrices(%struct._FrontMtx* %frontmtx, i32 %msglvl, %struct._IO_FILE* %msgFile) #0 {
entry:
  %nrowJ = alloca i32, align 4
  %nrowUJ = alloca i32, align 4
  %rowindJ = alloca i32*, align 8
  %rowindUJ = alloca i32*, align 8
  %cmp = icmp eq %struct._FrontMtx* %frontmtx, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %cmp1 = icmp sgt i32 %msglvl, 0
  %cmp2 = icmp eq %struct._IO_FILE* %msgFile, null
  %or.cond = and i1 %cmp1, %cmp2
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([70 x i8]* @.str3, i64 0, i64 0), %struct._FrontMtx* %frontmtx, i32 %msglvl, %struct._IO_FILE* %msgFile) #5
  call void @exit(i32 -1) #6
  unreachable

if.end:                                           ; preds = %lor.lhs.false
  %call3 = call i32 @FrontMtx_nfront(%struct._FrontMtx* %frontmtx) #5
  %call4 = call i32 @FrontMtx_neqns(%struct._FrontMtx* %frontmtx) #5
  %call5 = call i32* @IVinit(i32 %call4, i32 -1) #5
  %cmp6103 = icmp sgt i32 %call3, 0
  br i1 %cmp6103, label %for.body, label %for.end60

for.body:                                         ; preds = %if.end, %for.inc58
  %J.0104 = phi i32 [ %inc59, %for.inc58 ], [ 0, %if.end ]
  %call7 = call %struct._SubMtx* @FrontMtx_lowerMtx(%struct._FrontMtx* %frontmtx, i32 %call3, i32 %J.0104) #5
  %cmp8 = icmp eq %struct._SubMtx* %call7, null
  br i1 %cmp8, label %for.inc58, label %if.then9

if.then9:                                         ; preds = %for.body
  %call10 = call i32 @FrontMtx_frontSize(%struct._FrontMtx* %frontmtx, i32 %J.0104) #5
  call void @FrontMtx_rowIndices(%struct._FrontMtx* %frontmtx, i32 %J.0104, i32* %nrowJ, i32** %rowindJ) #5
  call void @SubMtx_rowIndices(%struct._SubMtx* %call7, i32* %nrowUJ, i32** %rowindUJ) #5
  %1 = load i32* %nrowJ, align 4, !tbaa !3
  %cmp1293 = icmp slt i32 %call10, %1
  br i1 %cmp1293, label %for.body13.lr.ph, label %for.inc58

for.body13.lr.ph:                                 ; preds = %if.then9
  %2 = load i32** %rowindJ, align 8, !tbaa !0
  %3 = load i32** %rowindUJ, align 8, !tbaa !0
  %4 = sext i32 %call10 to i64
  br label %for.body13

for.body13:                                       ; preds = %for.body13.lr.ph, %for.inc
  %indvars.iv105 = phi i64 [ 0, %for.body13.lr.ph ], [ %indvars.iv.next106, %for.inc ]
  %indvars.iv = phi i64 [ %4, %for.body13.lr.ph ], [ %indvars.iv.next, %for.inc ]
  %arrayidx = getelementptr inbounds i32* %2, i64 %indvars.iv
  %5 = load i32* %arrayidx, align 4, !tbaa !3
  %arrayidx15 = getelementptr inbounds i32* %3, i64 %indvars.iv105
  %6 = load i32* %arrayidx15, align 4, !tbaa !3
  %cmp16 = icmp eq i32 %5, %6
  br i1 %cmp16, label %for.inc, label %for.cond22.loopexit

for.inc:                                          ; preds = %for.body13
  %indvars.iv.next = add i64 %indvars.iv, 1
  %indvars.iv.next106 = add i64 %indvars.iv105, 1
  %7 = trunc i64 %indvars.iv.next to i32
  %cmp12 = icmp slt i32 %7, %1
  br i1 %cmp12, label %for.body13, label %for.inc58

for.cond22.loopexit:                              ; preds = %for.body13
  %cmp2396 = icmp sgt i32 %1, 0
  br i1 %cmp2396, label %for.body24, label %for.cond32.loopexit

for.body24:                                       ; preds = %for.cond22.loopexit, %for.body24
  %indvars.iv107 = phi i64 [ %indvars.iv.next108, %for.body24 ], [ 0, %for.cond22.loopexit ]
  %arrayidx26 = getelementptr inbounds i32* %2, i64 %indvars.iv107
  %8 = load i32* %arrayidx26, align 4, !tbaa !3
  %idxprom27 = sext i32 %8 to i64
  %arrayidx28 = getelementptr inbounds i32* %call5, i64 %idxprom27
  %9 = trunc i64 %indvars.iv107 to i32
  store i32 %9, i32* %arrayidx28, align 4, !tbaa !3
  %indvars.iv.next108 = add i64 %indvars.iv107, 1
  %10 = load i32* %nrowJ, align 4, !tbaa !3
  %11 = trunc i64 %indvars.iv.next108 to i32
  %cmp23 = icmp slt i32 %11, %10
  br i1 %cmp23, label %for.body24, label %for.cond32.loopexit

for.cond32.loopexit:                              ; preds = %for.body24, %for.cond22.loopexit
  %12 = load i32* %nrowUJ, align 4, !tbaa !3
  %cmp3398 = icmp sgt i32 %12, 0
  br i1 %cmp3398, label %for.body34, label %for.end43

for.body34:                                       ; preds = %for.cond32.loopexit, %for.body34
  %indvars.iv109 = phi i64 [ %indvars.iv.next110, %for.body34 ], [ 0, %for.cond32.loopexit ]
  %arrayidx36 = getelementptr inbounds i32* %3, i64 %indvars.iv109
  %13 = load i32* %arrayidx36, align 4, !tbaa !3
  %idxprom37 = sext i32 %13 to i64
  %arrayidx38 = getelementptr inbounds i32* %call5, i64 %idxprom37
  %14 = load i32* %arrayidx38, align 4, !tbaa !3
  store i32 %14, i32* %arrayidx36, align 4, !tbaa !3
  %indvars.iv.next110 = add i64 %indvars.iv109, 1
  %15 = load i32* %nrowUJ, align 4, !tbaa !3
  %16 = trunc i64 %indvars.iv.next110 to i32
  %cmp33 = icmp slt i32 %16, %15
  br i1 %cmp33, label %for.body34, label %for.end43

for.end43:                                        ; preds = %for.body34, %for.cond32.loopexit
  call void @SubMtx_sortRowsUp(%struct._SubMtx* %call7) #5
  %17 = load i32* %nrowUJ, align 4, !tbaa !3
  %cmp45101 = icmp sgt i32 %17, 0
  br i1 %cmp45101, label %for.body46.lr.ph, label %for.inc58

for.body46.lr.ph:                                 ; preds = %for.end43
  %18 = load i32** %rowindUJ, align 8, !tbaa !0
  %19 = load i32** %rowindJ, align 8, !tbaa !0
  br label %for.body46

for.body46:                                       ; preds = %for.body46.lr.ph, %for.body46
  %indvars.iv111 = phi i64 [ 0, %for.body46.lr.ph ], [ %indvars.iv.next112, %for.body46 ]
  %arrayidx48 = getelementptr inbounds i32* %18, i64 %indvars.iv111
  %20 = load i32* %arrayidx48, align 4, !tbaa !3
  %idxprom49 = sext i32 %20 to i64
  %arrayidx50 = getelementptr inbounds i32* %19, i64 %idxprom49
  %21 = load i32* %arrayidx50, align 4, !tbaa !3
  store i32 %21, i32* %arrayidx48, align 4, !tbaa !3
  %indvars.iv.next112 = add i64 %indvars.iv111, 1
  %22 = load i32* %nrowUJ, align 4, !tbaa !3
  %23 = trunc i64 %indvars.iv.next112 to i32
  %cmp45 = icmp slt i32 %23, %22
  br i1 %cmp45, label %for.body46, label %for.inc58

for.inc58:                                        ; preds = %for.end43, %for.body46, %if.then9, %for.inc, %for.body
  %inc59 = add nsw i32 %J.0104, 1
  %exitcond = icmp eq i32 %inc59, %call3
  br i1 %exitcond, label %for.end60, label %for.body

for.end60:                                        ; preds = %for.inc58, %if.end
  call void @IVfree(i32* %call5) #5
  ret void
}

; Function Attrs: optsize
declare %struct._SubMtx* @FrontMtx_lowerMtx(%struct._FrontMtx*, i32, i32) #3

; Function Attrs: optsize
declare void @FrontMtx_rowIndices(%struct._FrontMtx*, i32, i32*, i32**) #3

; Function Attrs: optsize
declare void @SubMtx_rowIndices(%struct._SubMtx*, i32*, i32**) #3

; Function Attrs: optsize
declare void @SubMtx_sortRowsUp(%struct._SubMtx*) #3

; Function Attrs: nounwind optsize
declare i32 @fflush(%struct._IO_FILE* nocapture) #1

; Function Attrs: optsize
declare void @IVfprintf(%struct._IO_FILE*, i32, i32*) #3

; Function Attrs: optsize
declare void @IVqsortUp(i32, i32*) #3

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #4

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #4

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
