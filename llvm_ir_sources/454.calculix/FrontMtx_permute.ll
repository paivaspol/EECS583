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
  call void @llvm.dbg.value(metadata !{%struct._FrontMtx* %frontmtx}, i64 0, metadata !240), !dbg !326
  call void @llvm.dbg.value(metadata !{i32 %msglvl}, i64 0, metadata !241), !dbg !327
  call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %msgFile}, i64 0, metadata !242), !dbg !328
  %cmp = icmp eq %struct._FrontMtx* %frontmtx, null, !dbg !329
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !329

lor.lhs.false:                                    ; preds = %entry
  %cmp1 = icmp sgt i32 %msglvl, 0, !dbg !329
  %cmp2 = icmp eq %struct._IO_FILE* %msgFile, null, !dbg !329
  %or.cond = and i1 %cmp1, %cmp2, !dbg !329
  br i1 %or.cond, label %if.then, label %if.end, !dbg !329

if.then:                                          ; preds = %lor.lhs.false, %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !330, !tbaa !332
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([65 x i8]* @.str, i64 0, i64 0), %struct._FrontMtx* %frontmtx, i32 %msglvl, %struct._IO_FILE* %msgFile) #6, !dbg !330
  call void @exit(i32 -1) #7, !dbg !335
  unreachable, !dbg !335

if.end:                                           ; preds = %lor.lhs.false
  %call3 = call i32 @FrontMtx_neqns(%struct._FrontMtx* %frontmtx) #6, !dbg !336
  call void @llvm.dbg.value(metadata !{i32 %call3}, i64 0, metadata !245), !dbg !336
  %call4 = call i32* @IVinit(i32 %call3, i32 -1) #6, !dbg !337
  call void @llvm.dbg.value(metadata !{i32* %call4}, i64 0, metadata !246), !dbg !337
  %call5 = call %struct._Tree* @FrontMtx_frontTree(%struct._FrontMtx* %frontmtx) #6, !dbg !338
  call void @llvm.dbg.value(metadata !{%struct._Tree* %call5}, i64 0, metadata !248), !dbg !338
  %par6 = getelementptr inbounds %struct._Tree* %call5, i64 0, i32 2, !dbg !339
  %1 = load i32** %par6, align 8, !dbg !339, !tbaa !332
  call void @llvm.dbg.value(metadata !{i32* %1}, i64 0, metadata !247), !dbg !339
  %call7 = call i32 @Tree_preOTfirst(%struct._Tree* %call5) #6, !dbg !340
  call void @llvm.dbg.value(metadata !{i32 %call7}, i64 0, metadata !243), !dbg !340
  %cmp829 = icmp eq i32 %call7, -1, !dbg !340
  br i1 %cmp829, label %for.end, label %for.body.lr.ph, !dbg !340

for.body.lr.ph:                                   ; preds = %if.end
  %2 = bitcast i32* %ncolJ.i to i8*, !dbg !342
  %3 = bitcast i32* %ncolK.i to i8*, !dbg !342
  %4 = bitcast i32** %colindJ.i to i8*, !dbg !342
  %5 = bitcast i32** %colindK.i to i8*, !dbg !342
  %cmp.i = icmp sgt i32 %msglvl, 2, !dbg !346
  br label %for.body, !dbg !340

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %J.030 = phi i32 [ %call7, %for.body.lr.ph ], [ %call12, %for.inc ]
  %idxprom = sext i32 %J.030 to i64, !dbg !347
  %arrayidx = getelementptr inbounds i32* %1, i64 %idxprom, !dbg !347
  %6 = load i32* %arrayidx, align 4, !dbg !347, !tbaa !348
  call void @llvm.dbg.value(metadata !{i32 %6}, i64 0, metadata !244), !dbg !347
  %cmp9 = icmp eq i32 %6, -1, !dbg !347
  br i1 %cmp9, label %for.inc, label %if.then10, !dbg !347

if.then10:                                        ; preds = %for.body
  call void @llvm.lifetime.start(i64 4, i8* %2) #5, !dbg !342
  call void @llvm.lifetime.start(i64 4, i8* %3) #5, !dbg !342
  call void @llvm.lifetime.start(i64 8, i8* %4) #5, !dbg !342
  call void @llvm.lifetime.start(i64 8, i8* %5) #5, !dbg !342
  call void @llvm.dbg.value(metadata !{%struct._FrontMtx* %frontmtx}, i64 0, metadata !349) #5, !dbg !342
  call void @llvm.dbg.value(metadata !{i32 %J.030}, i64 0, metadata !350) #5, !dbg !351
  call void @llvm.dbg.value(metadata !{i32 %6}, i64 0, metadata !352) #5, !dbg !353
  call void @llvm.dbg.value(metadata !{i32* %call4}, i64 0, metadata !354) #5, !dbg !355
  call void @llvm.dbg.value(metadata !{i32 %msglvl}, i64 0, metadata !356) #5, !dbg !357
  call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %msgFile}, i64 0, metadata !358) #5, !dbg !359
  call void @llvm.dbg.declare(metadata !{i32* %ncolJ.i}, metadata !321) #5, !dbg !360
  call void @llvm.dbg.declare(metadata !{i32* %ncolK.i}, metadata !322) #5, !dbg !360
  call void @llvm.dbg.declare(metadata !{i32** %colindJ.i}, metadata !324) #5, !dbg !361
  call void @llvm.dbg.declare(metadata !{i32** %colindK.i}, metadata !325) #5, !dbg !361
  br i1 %cmp.i, label %if.then.i, label %if.end.i, !dbg !346

if.then.i:                                        ; preds = %if.then10
  %call.i = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %msgFile, i8* getelementptr inbounds ([38 x i8]* @.str12, i64 0, i64 0), i32 %J.030, i32 %6) #6, !dbg !362
  %call1.i = call i32 @fflush(%struct._IO_FILE* %msgFile) #6, !dbg !364
  br label %if.end.i, !dbg !365

if.end.i:                                         ; preds = %if.then.i, %if.then10
  %call2.i = call i32 @FrontMtx_frontSize(%struct._FrontMtx* %frontmtx, i32 %J.030) #6, !dbg !366
  call void @llvm.dbg.value(metadata !{i32 %call2.i}, i64 0, metadata !367) #5, !dbg !366
  call void @FrontMtx_columnIndices(%struct._FrontMtx* %frontmtx, i32 %J.030, i32* %ncolJ.i, i32** %colindJ.i) #6, !dbg !368
  br i1 %cmp.i, label %if.then4.i, label %if.end7.i, !dbg !369

if.then4.i:                                       ; preds = %if.end.i
  call void @llvm.dbg.value(metadata !{i32* %ncolJ.i}, i64 0, metadata !370) #5, !dbg !371
  call void @llvm.dbg.value(metadata !{i32* %ncolJ.i}, i64 0, metadata !321), !dbg !371
  %7 = load i32* %ncolJ.i, align 4, !dbg !371, !tbaa !348
  %call5.i = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %msgFile, i8* getelementptr inbounds ([22 x i8]* @.str13, i64 0, i64 0), i32 %call2.i, i32 %7) #6, !dbg !371
  %call6.i = call i32 @fflush(%struct._IO_FILE* %msgFile) #6, !dbg !373
  br label %if.end7.i, !dbg !374

if.end7.i:                                        ; preds = %if.then4.i, %if.end.i
  call void @llvm.dbg.value(metadata !{i32* %ncolJ.i}, i64 0, metadata !370) #5, !dbg !375
  call void @llvm.dbg.value(metadata !{i32* %ncolJ.i}, i64 0, metadata !321), !dbg !375
  %8 = load i32* %ncolJ.i, align 4, !dbg !375, !tbaa !348
  %cmp8.i = icmp eq i32 %8, 0, !dbg !375
  br i1 %cmp8.i, label %for.inc, label %if.end10.i, !dbg !375

if.end10.i:                                       ; preds = %if.end7.i
  call void @FrontMtx_columnIndices(%struct._FrontMtx* %frontmtx, i32 %6, i32* %ncolK.i, i32** %colindK.i) #6, !dbg !376
  br i1 %cmp.i, label %if.then12.i, label %if.end15.i, !dbg !377

if.then12.i:                                      ; preds = %if.end10.i
  call void @llvm.dbg.value(metadata !{i32* %ncolK.i}, i64 0, metadata !378) #5, !dbg !379
  call void @llvm.dbg.value(metadata !{i32* %ncolK.i}, i64 0, metadata !322), !dbg !379
  %9 = load i32* %ncolK.i, align 4, !dbg !379, !tbaa !348
  %call13.i = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %msgFile, i8* getelementptr inbounds ([13 x i8]* @.str14, i64 0, i64 0), i32 %9) #6, !dbg !379
  %call14.i = call i32 @fflush(%struct._IO_FILE* %msgFile) #6, !dbg !381
  br label %if.end15.i, !dbg !382

if.end15.i:                                       ; preds = %if.then12.i, %if.end10.i
  call void @llvm.dbg.value(metadata !{i32* %ncolK.i}, i64 0, metadata !378) #5, !dbg !383
  call void @llvm.dbg.value(metadata !{i32* %ncolK.i}, i64 0, metadata !322), !dbg !383
  %10 = load i32* %ncolK.i, align 4, !dbg !383, !tbaa !348
  %cmp16.i = icmp eq i32 %10, 0, !dbg !383
  br i1 %cmp16.i, label %if.then17.i, label %if.end19.i, !dbg !383

if.then17.i:                                      ; preds = %if.end15.i
  %11 = load %struct._IO_FILE** @stderr, align 8, !dbg !384, !tbaa !332
  call void @llvm.dbg.value(metadata !{i32* %ncolJ.i}, i64 0, metadata !370) #5, !dbg !384
  call void @llvm.dbg.value(metadata !{i32* %ncolJ.i}, i64 0, metadata !321), !dbg !384
  %12 = load i32* %ncolJ.i, align 4, !dbg !384, !tbaa !348
  %call18.i = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %11, i8* getelementptr inbounds ([96 x i8]* @.str15, i64 0, i64 0), i32 %J.030, i32 %6, i32 %call2.i, i32 %12, i32 0) #6, !dbg !384
  call void @exit(i32 -1) #7, !dbg !386
  unreachable, !dbg !386

if.end19.i:                                       ; preds = %if.end15.i
  br i1 %cmp.i, label %if.then21.i, label %for.cond.preheader.i, !dbg !387

if.then21.i:                                      ; preds = %if.end19.i
  %13 = call i64 @fwrite(i8* getelementptr inbounds ([10 x i8]* @.str16, i64 0, i64 0), i64 9, i64 1, %struct._IO_FILE* %msgFile) #5, !dbg !388
  call void @llvm.dbg.value(metadata !{i32* %ncolJ.i}, i64 0, metadata !370) #5, !dbg !390
  call void @llvm.dbg.value(metadata !{i32* %ncolJ.i}, i64 0, metadata !321), !dbg !390
  %14 = load i32* %ncolJ.i, align 4, !dbg !390, !tbaa !348
  call void @llvm.dbg.value(metadata !{i32** %colindJ.i}, i64 0, metadata !391) #5, !dbg !390
  call void @llvm.dbg.value(metadata !{i32** %colindJ.i}, i64 0, metadata !324), !dbg !390
  %15 = load i32** %colindJ.i, align 8, !dbg !390, !tbaa !332
  call void @IVfprintf(%struct._IO_FILE* %msgFile, i32 %14, i32* %15) #6, !dbg !390
  %16 = call i64 @fwrite(i8* getelementptr inbounds ([10 x i8]* @.str17, i64 0, i64 0), i64 9, i64 1, %struct._IO_FILE* %msgFile) #5, !dbg !392
  call void @llvm.dbg.value(metadata !{i32* %ncolK.i}, i64 0, metadata !378) #5, !dbg !393
  call void @llvm.dbg.value(metadata !{i32* %ncolK.i}, i64 0, metadata !322), !dbg !393
  %17 = load i32* %ncolK.i, align 4, !dbg !393, !tbaa !348
  call void @llvm.dbg.value(metadata !{i32** %colindK.i}, i64 0, metadata !394) #5, !dbg !393
  call void @llvm.dbg.value(metadata !{i32** %colindK.i}, i64 0, metadata !325), !dbg !393
  %18 = load i32** %colindK.i, align 8, !dbg !393, !tbaa !332
  call void @IVfprintf(%struct._IO_FILE* %msgFile, i32 %17, i32* %18) #6, !dbg !393
  %call24.i = call i32 @fflush(%struct._IO_FILE* %msgFile) #6, !dbg !395
  call void @llvm.dbg.value(metadata !{i32* %ncolK.i}, i64 0, metadata !378) #5, !dbg !396
  call void @llvm.dbg.value(metadata !{i32* %ncolK.i}, i64 0, metadata !322), !dbg !396
  %.pre.i = load i32* %ncolK.i, align 4, !dbg !396, !tbaa !348
  br label %for.cond.preheader.i, !dbg !398

for.cond.preheader.i:                             ; preds = %if.then21.i, %if.end19.i
  %19 = phi i32 [ %.pre.i, %if.then21.i ], [ %10, %if.end19.i ]
  call void @llvm.dbg.value(metadata !{i32* %ncolK.i}, i64 0, metadata !378) #5, !dbg !396
  %cmp26112.i = icmp sgt i32 %19, 0, !dbg !396
  br i1 %cmp26112.i, label %for.body.lr.ph.i, label %for.cond29.preheader.i, !dbg !396

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  call void @llvm.dbg.value(metadata !{i32** %colindK.i}, i64 0, metadata !394) #5, !dbg !399
  call void @llvm.dbg.value(metadata !{i32** %colindK.i}, i64 0, metadata !325), !dbg !399
  %20 = load i32** %colindK.i, align 8, !dbg !399, !tbaa !332
  br label %for.body.i, !dbg !396

for.cond29.preheader.i:                           ; preds = %for.body.i, %for.cond.preheader.i
  call void @llvm.dbg.value(metadata !{i32* %ncolJ.i}, i64 0, metadata !370) #5, !dbg !401
  call void @llvm.dbg.value(metadata !{i32* %ncolJ.i}, i64 0, metadata !321), !dbg !401
  %21 = load i32* %ncolJ.i, align 4, !dbg !401, !tbaa !348
  %cmp30110.i = icmp slt i32 %call2.i, %21, !dbg !401
  br i1 %cmp30110.i, label %for.body31.lr.ph.i, label %for.end40.i, !dbg !401

for.body31.lr.ph.i:                               ; preds = %for.cond29.preheader.i
  call void @llvm.dbg.value(metadata !{i32** %colindJ.i}, i64 0, metadata !391) #5, !dbg !403
  call void @llvm.dbg.value(metadata !{i32** %colindJ.i}, i64 0, metadata !324), !dbg !403
  %22 = load i32** %colindJ.i, align 8, !dbg !403, !tbaa !332
  %23 = sext i32 %call2.i to i64
  br label %for.body31.i, !dbg !401

for.body.i:                                       ; preds = %for.body.i, %for.body.lr.ph.i
  %indvars.iv116.i = phi i64 [ 0, %for.body.lr.ph.i ], [ %indvars.iv.next117.i, %for.body.i ]
  call void @llvm.dbg.value(metadata !{i32** %colindK.i}, i64 0, metadata !394) #5, !dbg !399
  %arrayidx.i = getelementptr inbounds i32* %20, i64 %indvars.iv116.i, !dbg !399
  %24 = load i32* %arrayidx.i, align 4, !dbg !399, !tbaa !348
  %idxprom27.i = sext i32 %24 to i64, !dbg !399
  %arrayidx28.i = getelementptr inbounds i32* %call4, i64 %idxprom27.i, !dbg !399
  %25 = trunc i64 %indvars.iv116.i to i32, !dbg !399
  store i32 %25, i32* %arrayidx28.i, align 4, !dbg !399, !tbaa !348
  %indvars.iv.next117.i = add i64 %indvars.iv116.i, 1, !dbg !396
  call void @llvm.dbg.value(metadata !{i32* %ncolK.i}, i64 0, metadata !378) #5, !dbg !396
  %lftr.wideiv = trunc i64 %indvars.iv.next117.i to i32, !dbg !396
  %exitcond = icmp eq i32 %lftr.wideiv, %19, !dbg !396
  br i1 %exitcond, label %for.cond29.preheader.i, label %for.body.i, !dbg !396

for.body31.i:                                     ; preds = %for.body31.i, %for.body31.lr.ph.i
  %indvars.iv114.i = phi i64 [ %23, %for.body31.lr.ph.i ], [ %indvars.iv.next115.i, %for.body31.i ]
  call void @llvm.dbg.value(metadata !{i32** %colindJ.i}, i64 0, metadata !391) #5, !dbg !403
  %arrayidx33.i = getelementptr inbounds i32* %22, i64 %indvars.iv114.i, !dbg !403
  %26 = load i32* %arrayidx33.i, align 4, !dbg !403, !tbaa !348
  %idxprom34.i = sext i32 %26 to i64, !dbg !403
  %arrayidx35.i = getelementptr inbounds i32* %call4, i64 %idxprom34.i, !dbg !403
  %27 = load i32* %arrayidx35.i, align 4, !dbg !403, !tbaa !348
  store i32 %27, i32* %arrayidx33.i, align 4, !dbg !403, !tbaa !348
  %indvars.iv.next115.i = add i64 %indvars.iv114.i, 1, !dbg !401
  call void @llvm.dbg.value(metadata !{i32* %ncolJ.i}, i64 0, metadata !370) #5, !dbg !401
  call void @llvm.dbg.value(metadata !{i32* %ncolJ.i}, i64 0, metadata !321), !dbg !401
  %28 = load i32* %ncolJ.i, align 4, !dbg !401, !tbaa !348
  %29 = trunc i64 %indvars.iv.next115.i to i32, !dbg !401
  %cmp30.i = icmp slt i32 %29, %28, !dbg !401
  br i1 %cmp30.i, label %for.body31.i, label %for.end40.i, !dbg !401

for.end40.i:                                      ; preds = %for.body31.i, %for.cond29.preheader.i
  %30 = phi i32 [ %21, %for.cond29.preheader.i ], [ %28, %for.body31.i ]
  br i1 %cmp.i, label %if.then42.i, label %if.end45.i, !dbg !405

if.then42.i:                                      ; preds = %for.end40.i
  %31 = call i64 @fwrite(i8* getelementptr inbounds ([16 x i8]* @.str18, i64 0, i64 0), i64 15, i64 1, %struct._IO_FILE* %msgFile) #5, !dbg !406
  call void @llvm.dbg.value(metadata !{i32* %ncolJ.i}, i64 0, metadata !370) #5, !dbg !408
  call void @llvm.dbg.value(metadata !{i32* %ncolJ.i}, i64 0, metadata !321), !dbg !408
  %32 = load i32* %ncolJ.i, align 4, !dbg !408, !tbaa !348
  call void @llvm.dbg.value(metadata !{i32** %colindJ.i}, i64 0, metadata !391) #5, !dbg !408
  call void @llvm.dbg.value(metadata !{i32** %colindJ.i}, i64 0, metadata !324), !dbg !408
  %33 = load i32** %colindJ.i, align 8, !dbg !408, !tbaa !332
  call void @IVfprintf(%struct._IO_FILE* %msgFile, i32 %32, i32* %33) #6, !dbg !408
  %call44.i = call i32 @fflush(%struct._IO_FILE* %msgFile) #6, !dbg !409
  call void @llvm.dbg.value(metadata !{i32* %ncolJ.i}, i64 0, metadata !370) #5, !dbg !410
  call void @llvm.dbg.value(metadata !{i32* %ncolJ.i}, i64 0, metadata !321), !dbg !410
  %.pre118.i = load i32* %ncolJ.i, align 4, !dbg !410, !tbaa !348
  br label %if.end45.i, !dbg !411

if.end45.i:                                       ; preds = %for.end40.i, %if.then42.i
  %34 = phi i32 [ %.pre118.i, %if.then42.i ], [ %30, %for.end40.i ]
  call void @llvm.dbg.value(metadata !{i32* %ncolJ.i}, i64 0, metadata !370) #5, !dbg !410
  %sub.i = sub nsw i32 %34, %call2.i, !dbg !410
  call void @llvm.dbg.value(metadata !{i32** %colindJ.i}, i64 0, metadata !391) #5, !dbg !410
  call void @llvm.dbg.value(metadata !{i32** %colindJ.i}, i64 0, metadata !324), !dbg !410
  %35 = load i32** %colindJ.i, align 8, !dbg !410, !tbaa !332
  %idx.ext.i = sext i32 %call2.i to i64, !dbg !410
  %add.ptr.i = getelementptr inbounds i32* %35, i64 %idx.ext.i, !dbg !410
  call void @IVqsortUp(i32 %sub.i, i32* %add.ptr.i) #6, !dbg !410
  call void @llvm.dbg.value(metadata !{i32 %call2.i}, i64 0, metadata !412) #5, !dbg !413
  call void @llvm.dbg.value(metadata !{i32* %ncolJ.i}, i64 0, metadata !370) #5, !dbg !413
  call void @llvm.dbg.value(metadata !{i32* %ncolJ.i}, i64 0, metadata !321), !dbg !413
  %36 = load i32* %ncolJ.i, align 4, !dbg !413, !tbaa !348
  %cmp47108.i = icmp slt i32 %call2.i, %36, !dbg !413
  br i1 %cmp47108.i, label %for.body48.lr.ph.i, label %for.end57.i, !dbg !413

for.body48.lr.ph.i:                               ; preds = %if.end45.i
  call void @llvm.dbg.value(metadata !{i32** %colindJ.i}, i64 0, metadata !391) #5, !dbg !415
  call void @llvm.dbg.value(metadata !{i32** %colindJ.i}, i64 0, metadata !324), !dbg !415
  %37 = load i32** %colindJ.i, align 8, !dbg !415, !tbaa !332
  call void @llvm.dbg.value(metadata !{i32** %colindK.i}, i64 0, metadata !394) #5, !dbg !415
  call void @llvm.dbg.value(metadata !{i32** %colindK.i}, i64 0, metadata !325), !dbg !415
  %38 = load i32** %colindK.i, align 8, !dbg !415, !tbaa !332
  br label %for.body48.i, !dbg !413

for.body48.i:                                     ; preds = %for.body48.i, %for.body48.lr.ph.i
  %indvars.iv.i = phi i64 [ %idx.ext.i, %for.body48.lr.ph.i ], [ %indvars.iv.next.i, %for.body48.i ]
  call void @llvm.dbg.value(metadata !{i32** %colindJ.i}, i64 0, metadata !391) #5, !dbg !415
  %arrayidx50.i = getelementptr inbounds i32* %37, i64 %indvars.iv.i, !dbg !415
  %39 = load i32* %arrayidx50.i, align 4, !dbg !415, !tbaa !348
  %idxprom51.i = sext i32 %39 to i64, !dbg !415
  call void @llvm.dbg.value(metadata !{i32** %colindK.i}, i64 0, metadata !394) #5, !dbg !415
  %arrayidx52.i = getelementptr inbounds i32* %38, i64 %idxprom51.i, !dbg !415
  %40 = load i32* %arrayidx52.i, align 4, !dbg !415, !tbaa !348
  store i32 %40, i32* %arrayidx50.i, align 4, !dbg !415, !tbaa !348
  %indvars.iv.next.i = add i64 %indvars.iv.i, 1, !dbg !413
  call void @llvm.dbg.value(metadata !{i32* %ncolJ.i}, i64 0, metadata !370) #5, !dbg !413
  call void @llvm.dbg.value(metadata !{i32* %ncolJ.i}, i64 0, metadata !321), !dbg !413
  %41 = load i32* %ncolJ.i, align 4, !dbg !413, !tbaa !348
  %42 = trunc i64 %indvars.iv.next.i to i32, !dbg !413
  %cmp47.i = icmp slt i32 %42, %41, !dbg !413
  br i1 %cmp47.i, label %for.body48.i, label %for.end57.i, !dbg !413

for.end57.i:                                      ; preds = %for.body48.i, %if.end45.i
  br i1 %cmp.i, label %if.then59.i, label %for.inc, !dbg !417

if.then59.i:                                      ; preds = %for.end57.i
  %43 = call i64 @fwrite(i8* getelementptr inbounds ([17 x i8]* @.str19, i64 0, i64 0), i64 16, i64 1, %struct._IO_FILE* %msgFile) #5, !dbg !418
  call void @llvm.dbg.value(metadata !{i32* %ncolJ.i}, i64 0, metadata !370) #5, !dbg !420
  call void @llvm.dbg.value(metadata !{i32* %ncolJ.i}, i64 0, metadata !321), !dbg !420
  %44 = load i32* %ncolJ.i, align 4, !dbg !420, !tbaa !348
  call void @llvm.dbg.value(metadata !{i32** %colindJ.i}, i64 0, metadata !391) #5, !dbg !420
  call void @llvm.dbg.value(metadata !{i32** %colindJ.i}, i64 0, metadata !324), !dbg !420
  %45 = load i32** %colindJ.i, align 8, !dbg !420, !tbaa !332
  call void @IVfprintf(%struct._IO_FILE* %msgFile, i32 %44, i32* %45) #6, !dbg !420
  %call61.i = call i32 @fflush(%struct._IO_FILE* %msgFile) #6, !dbg !421
  br label %for.inc, !dbg !422

for.inc:                                          ; preds = %if.then59.i, %for.end57.i, %if.end7.i, %for.body
  %call12 = call i32 @Tree_preOTnext(%struct._Tree* %call5, i32 %J.030) #6, !dbg !423
  call void @llvm.dbg.value(metadata !{i32 %call12}, i64 0, metadata !243), !dbg !423
  %cmp8 = icmp eq i32 %call12, -1, !dbg !340
  br i1 %cmp8, label %for.end, label %for.body, !dbg !340

for.end:                                          ; preds = %for.inc, %if.end
  call void @IVfree(i32* %call4) #6, !dbg !424
  ret void, !dbg !425
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #2

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32) #3

; Function Attrs: optsize
declare i32 @FrontMtx_neqns(%struct._FrontMtx*) #4

; Function Attrs: optsize
declare i32* @IVinit(i32, i32) #4

; Function Attrs: optsize
declare %struct._Tree* @FrontMtx_frontTree(%struct._FrontMtx*) #4

; Function Attrs: optsize
declare i32 @Tree_preOTfirst(%struct._Tree*) #4

; Function Attrs: optsize
declare i32 @Tree_preOTnext(%struct._Tree*, i32) #4

; Function Attrs: optsize
declare void @IVfree(i32*) #4

; Function Attrs: nounwind optsize uwtable
define void @FrontMtx_permuteLowerAdj(%struct._FrontMtx* %frontmtx, i32 %msglvl, %struct._IO_FILE* %msgFile) #0 {
entry:
  %nrowJ.i = alloca i32, align 4
  %nrowK.i = alloca i32, align 4
  %rowindJ.i = alloca i32*, align 8
  %rowindK.i = alloca i32*, align 8
  call void @llvm.dbg.value(metadata !{%struct._FrontMtx* %frontmtx}, i64 0, metadata !251), !dbg !426
  call void @llvm.dbg.value(metadata !{i32 %msglvl}, i64 0, metadata !252), !dbg !427
  call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %msgFile}, i64 0, metadata !253), !dbg !428
  %cmp = icmp eq %struct._FrontMtx* %frontmtx, null, !dbg !429
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !429

lor.lhs.false:                                    ; preds = %entry
  %cmp1 = icmp sgt i32 %msglvl, 0, !dbg !429
  %cmp2 = icmp eq %struct._IO_FILE* %msgFile, null, !dbg !429
  %or.cond = and i1 %cmp1, %cmp2, !dbg !429
  br i1 %or.cond, label %if.then, label %if.end, !dbg !429

if.then:                                          ; preds = %lor.lhs.false, %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !430, !tbaa !332
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), %struct._FrontMtx* %frontmtx, i32 %msglvl, %struct._IO_FILE* %msgFile) #6, !dbg !430
  call void @exit(i32 -1) #7, !dbg !432
  unreachable, !dbg !432

if.end:                                           ; preds = %lor.lhs.false
  %call3 = call i32 @FrontMtx_neqns(%struct._FrontMtx* %frontmtx) #6, !dbg !433
  call void @llvm.dbg.value(metadata !{i32 %call3}, i64 0, metadata !256), !dbg !433
  %call4 = call i32* @IVinit(i32 %call3, i32 -1) #6, !dbg !434
  call void @llvm.dbg.value(metadata !{i32* %call4}, i64 0, metadata !257), !dbg !434
  %call5 = call %struct._Tree* @FrontMtx_frontTree(%struct._FrontMtx* %frontmtx) #6, !dbg !435
  call void @llvm.dbg.value(metadata !{%struct._Tree* %call5}, i64 0, metadata !259), !dbg !435
  %par6 = getelementptr inbounds %struct._Tree* %call5, i64 0, i32 2, !dbg !436
  %1 = load i32** %par6, align 8, !dbg !436, !tbaa !332
  call void @llvm.dbg.value(metadata !{i32* %1}, i64 0, metadata !258), !dbg !436
  %call7 = call i32 @Tree_preOTfirst(%struct._Tree* %call5) #6, !dbg !437
  call void @llvm.dbg.value(metadata !{i32 %call7}, i64 0, metadata !254), !dbg !437
  %cmp829 = icmp eq i32 %call7, -1, !dbg !437
  br i1 %cmp829, label %for.end, label %for.body.lr.ph, !dbg !437

for.body.lr.ph:                                   ; preds = %if.end
  %2 = bitcast i32* %nrowJ.i to i8*, !dbg !439
  %3 = bitcast i32* %nrowK.i to i8*, !dbg !439
  %4 = bitcast i32** %rowindJ.i to i8*, !dbg !439
  %5 = bitcast i32** %rowindK.i to i8*, !dbg !439
  %cmp.i = icmp sgt i32 %msglvl, 2, !dbg !443
  br label %for.body, !dbg !437

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %J.030 = phi i32 [ %call7, %for.body.lr.ph ], [ %call12, %for.inc ]
  %idxprom = sext i32 %J.030 to i64, !dbg !444
  %arrayidx = getelementptr inbounds i32* %1, i64 %idxprom, !dbg !444
  %6 = load i32* %arrayidx, align 4, !dbg !444, !tbaa !348
  call void @llvm.dbg.value(metadata !{i32 %6}, i64 0, metadata !255), !dbg !444
  %cmp9 = icmp eq i32 %6, -1, !dbg !444
  br i1 %cmp9, label %for.inc, label %if.then10, !dbg !444

if.then10:                                        ; preds = %for.body
  call void @llvm.lifetime.start(i64 4, i8* %2) #5, !dbg !439
  call void @llvm.lifetime.start(i64 4, i8* %3) #5, !dbg !439
  call void @llvm.lifetime.start(i64 8, i8* %4) #5, !dbg !439
  call void @llvm.lifetime.start(i64 8, i8* %5) #5, !dbg !439
  call void @llvm.dbg.value(metadata !{%struct._FrontMtx* %frontmtx}, i64 0, metadata !445) #5, !dbg !439
  call void @llvm.dbg.value(metadata !{i32 %J.030}, i64 0, metadata !446) #5, !dbg !447
  call void @llvm.dbg.value(metadata !{i32 %6}, i64 0, metadata !448) #5, !dbg !449
  call void @llvm.dbg.value(metadata !{i32* %call4}, i64 0, metadata !450) #5, !dbg !451
  call void @llvm.dbg.value(metadata !{i32 %msglvl}, i64 0, metadata !452) #5, !dbg !453
  call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %msgFile}, i64 0, metadata !454) #5, !dbg !455
  call void @llvm.dbg.declare(metadata !{i32* %nrowJ.i}, metadata !307) #5, !dbg !456
  call void @llvm.dbg.declare(metadata !{i32* %nrowK.i}, metadata !308) #5, !dbg !456
  call void @llvm.dbg.declare(metadata !{i32** %rowindJ.i}, metadata !310) #5, !dbg !457
  call void @llvm.dbg.declare(metadata !{i32** %rowindK.i}, metadata !311) #5, !dbg !457
  br i1 %cmp.i, label %if.then.i, label %if.end.i, !dbg !443

if.then.i:                                        ; preds = %if.then10
  %call.i = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %msgFile, i8* getelementptr inbounds ([35 x i8]* @.str4, i64 0, i64 0), i32 %J.030, i32 %6) #6, !dbg !458
  %call1.i = call i32 @fflush(%struct._IO_FILE* %msgFile) #6, !dbg !460
  br label %if.end.i, !dbg !461

if.end.i:                                         ; preds = %if.then.i, %if.then10
  %call2.i = call i32 @FrontMtx_frontSize(%struct._FrontMtx* %frontmtx, i32 %J.030) #6, !dbg !462
  call void @llvm.dbg.value(metadata !{i32 %call2.i}, i64 0, metadata !463) #5, !dbg !462
  call void @FrontMtx_rowIndices(%struct._FrontMtx* %frontmtx, i32 %J.030, i32* %nrowJ.i, i32** %rowindJ.i) #6, !dbg !464
  br i1 %cmp.i, label %if.then4.i, label %if.end7.i, !dbg !465

if.then4.i:                                       ; preds = %if.end.i
  call void @llvm.dbg.value(metadata !{i32* %nrowJ.i}, i64 0, metadata !466) #5, !dbg !467
  call void @llvm.dbg.value(metadata !{i32* %nrowJ.i}, i64 0, metadata !307), !dbg !467
  %7 = load i32* %nrowJ.i, align 4, !dbg !467, !tbaa !348
  %call5.i = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %msgFile, i8* getelementptr inbounds ([22 x i8]* @.str5, i64 0, i64 0), i32 %call2.i, i32 %7) #6, !dbg !467
  %call6.i = call i32 @fflush(%struct._IO_FILE* %msgFile) #6, !dbg !469
  br label %if.end7.i, !dbg !470

if.end7.i:                                        ; preds = %if.then4.i, %if.end.i
  call void @llvm.dbg.value(metadata !{i32* %nrowJ.i}, i64 0, metadata !466) #5, !dbg !471
  call void @llvm.dbg.value(metadata !{i32* %nrowJ.i}, i64 0, metadata !307), !dbg !471
  %8 = load i32* %nrowJ.i, align 4, !dbg !471, !tbaa !348
  %cmp8.i = icmp eq i32 %8, 0, !dbg !471
  br i1 %cmp8.i, label %for.inc, label %if.end10.i, !dbg !471

if.end10.i:                                       ; preds = %if.end7.i
  call void @FrontMtx_rowIndices(%struct._FrontMtx* %frontmtx, i32 %6, i32* %nrowK.i, i32** %rowindK.i) #6, !dbg !472
  br i1 %cmp.i, label %if.then12.i, label %if.end15.i, !dbg !473

if.then12.i:                                      ; preds = %if.end10.i
  call void @llvm.dbg.value(metadata !{i32* %nrowK.i}, i64 0, metadata !474) #5, !dbg !475
  call void @llvm.dbg.value(metadata !{i32* %nrowK.i}, i64 0, metadata !308), !dbg !475
  %9 = load i32* %nrowK.i, align 4, !dbg !475, !tbaa !348
  %call13.i = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %msgFile, i8* getelementptr inbounds ([13 x i8]* @.str6, i64 0, i64 0), i32 %9) #6, !dbg !475
  %call14.i = call i32 @fflush(%struct._IO_FILE* %msgFile) #6, !dbg !477
  br label %if.end15.i, !dbg !478

if.end15.i:                                       ; preds = %if.then12.i, %if.end10.i
  call void @llvm.dbg.value(metadata !{i32* %nrowK.i}, i64 0, metadata !474) #5, !dbg !479
  call void @llvm.dbg.value(metadata !{i32* %nrowK.i}, i64 0, metadata !308), !dbg !479
  %10 = load i32* %nrowK.i, align 4, !dbg !479, !tbaa !348
  %cmp16.i = icmp eq i32 %10, 0, !dbg !479
  br i1 %cmp16.i, label %if.then17.i, label %if.end19.i, !dbg !479

if.then17.i:                                      ; preds = %if.end15.i
  %11 = load %struct._IO_FILE** @stderr, align 8, !dbg !480, !tbaa !332
  call void @llvm.dbg.value(metadata !{i32* %nrowJ.i}, i64 0, metadata !466) #5, !dbg !480
  call void @llvm.dbg.value(metadata !{i32* %nrowJ.i}, i64 0, metadata !307), !dbg !480
  %12 = load i32* %nrowJ.i, align 4, !dbg !480, !tbaa !348
  %call18.i = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %11, i8* getelementptr inbounds ([93 x i8]* @.str7, i64 0, i64 0), i32 %J.030, i32 %6, i32 %call2.i, i32 %12, i32 0) #6, !dbg !480
  call void @exit(i32 -1) #7, !dbg !482
  unreachable, !dbg !482

if.end19.i:                                       ; preds = %if.end15.i
  br i1 %cmp.i, label %if.then21.i, label %for.cond.preheader.i, !dbg !483

if.then21.i:                                      ; preds = %if.end19.i
  %13 = call i64 @fwrite(i8* getelementptr inbounds ([10 x i8]* @.str8, i64 0, i64 0), i64 9, i64 1, %struct._IO_FILE* %msgFile) #5, !dbg !484
  call void @llvm.dbg.value(metadata !{i32* %nrowJ.i}, i64 0, metadata !466) #5, !dbg !486
  call void @llvm.dbg.value(metadata !{i32* %nrowJ.i}, i64 0, metadata !307), !dbg !486
  %14 = load i32* %nrowJ.i, align 4, !dbg !486, !tbaa !348
  call void @llvm.dbg.value(metadata !{i32** %rowindJ.i}, i64 0, metadata !487) #5, !dbg !486
  call void @llvm.dbg.value(metadata !{i32** %rowindJ.i}, i64 0, metadata !310), !dbg !486
  %15 = load i32** %rowindJ.i, align 8, !dbg !486, !tbaa !332
  call void @IVfprintf(%struct._IO_FILE* %msgFile, i32 %14, i32* %15) #6, !dbg !486
  %16 = call i64 @fwrite(i8* getelementptr inbounds ([10 x i8]* @.str9, i64 0, i64 0), i64 9, i64 1, %struct._IO_FILE* %msgFile) #5, !dbg !488
  call void @llvm.dbg.value(metadata !{i32* %nrowK.i}, i64 0, metadata !474) #5, !dbg !489
  call void @llvm.dbg.value(metadata !{i32* %nrowK.i}, i64 0, metadata !308), !dbg !489
  %17 = load i32* %nrowK.i, align 4, !dbg !489, !tbaa !348
  call void @llvm.dbg.value(metadata !{i32** %rowindK.i}, i64 0, metadata !490) #5, !dbg !489
  call void @llvm.dbg.value(metadata !{i32** %rowindK.i}, i64 0, metadata !311), !dbg !489
  %18 = load i32** %rowindK.i, align 8, !dbg !489, !tbaa !332
  call void @IVfprintf(%struct._IO_FILE* %msgFile, i32 %17, i32* %18) #6, !dbg !489
  %call24.i = call i32 @fflush(%struct._IO_FILE* %msgFile) #6, !dbg !491
  call void @llvm.dbg.value(metadata !{i32* %nrowK.i}, i64 0, metadata !474) #5, !dbg !492
  call void @llvm.dbg.value(metadata !{i32* %nrowK.i}, i64 0, metadata !308), !dbg !492
  %.pre.i = load i32* %nrowK.i, align 4, !dbg !492, !tbaa !348
  br label %for.cond.preheader.i, !dbg !494

for.cond.preheader.i:                             ; preds = %if.then21.i, %if.end19.i
  %19 = phi i32 [ %.pre.i, %if.then21.i ], [ %10, %if.end19.i ]
  call void @llvm.dbg.value(metadata !{i32* %nrowK.i}, i64 0, metadata !474) #5, !dbg !492
  %cmp26112.i = icmp sgt i32 %19, 0, !dbg !492
  br i1 %cmp26112.i, label %for.body.lr.ph.i, label %for.cond29.preheader.i, !dbg !492

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  call void @llvm.dbg.value(metadata !{i32** %rowindK.i}, i64 0, metadata !490) #5, !dbg !495
  call void @llvm.dbg.value(metadata !{i32** %rowindK.i}, i64 0, metadata !311), !dbg !495
  %20 = load i32** %rowindK.i, align 8, !dbg !495, !tbaa !332
  br label %for.body.i, !dbg !492

for.cond29.preheader.i:                           ; preds = %for.body.i, %for.cond.preheader.i
  call void @llvm.dbg.value(metadata !{i32* %nrowJ.i}, i64 0, metadata !466) #5, !dbg !497
  call void @llvm.dbg.value(metadata !{i32* %nrowJ.i}, i64 0, metadata !307), !dbg !497
  %21 = load i32* %nrowJ.i, align 4, !dbg !497, !tbaa !348
  %cmp30110.i = icmp slt i32 %call2.i, %21, !dbg !497
  br i1 %cmp30110.i, label %for.body31.lr.ph.i, label %for.end40.i, !dbg !497

for.body31.lr.ph.i:                               ; preds = %for.cond29.preheader.i
  call void @llvm.dbg.value(metadata !{i32** %rowindJ.i}, i64 0, metadata !487) #5, !dbg !499
  call void @llvm.dbg.value(metadata !{i32** %rowindJ.i}, i64 0, metadata !310), !dbg !499
  %22 = load i32** %rowindJ.i, align 8, !dbg !499, !tbaa !332
  %23 = sext i32 %call2.i to i64
  br label %for.body31.i, !dbg !497

for.body.i:                                       ; preds = %for.body.i, %for.body.lr.ph.i
  %indvars.iv116.i = phi i64 [ 0, %for.body.lr.ph.i ], [ %indvars.iv.next117.i, %for.body.i ]
  call void @llvm.dbg.value(metadata !{i32** %rowindK.i}, i64 0, metadata !490) #5, !dbg !495
  %arrayidx.i = getelementptr inbounds i32* %20, i64 %indvars.iv116.i, !dbg !495
  %24 = load i32* %arrayidx.i, align 4, !dbg !495, !tbaa !348
  %idxprom27.i = sext i32 %24 to i64, !dbg !495
  %arrayidx28.i = getelementptr inbounds i32* %call4, i64 %idxprom27.i, !dbg !495
  %25 = trunc i64 %indvars.iv116.i to i32, !dbg !495
  store i32 %25, i32* %arrayidx28.i, align 4, !dbg !495, !tbaa !348
  %indvars.iv.next117.i = add i64 %indvars.iv116.i, 1, !dbg !492
  call void @llvm.dbg.value(metadata !{i32* %nrowK.i}, i64 0, metadata !474) #5, !dbg !492
  %lftr.wideiv = trunc i64 %indvars.iv.next117.i to i32, !dbg !492
  %exitcond = icmp eq i32 %lftr.wideiv, %19, !dbg !492
  br i1 %exitcond, label %for.cond29.preheader.i, label %for.body.i, !dbg !492

for.body31.i:                                     ; preds = %for.body31.i, %for.body31.lr.ph.i
  %indvars.iv114.i = phi i64 [ %23, %for.body31.lr.ph.i ], [ %indvars.iv.next115.i, %for.body31.i ]
  call void @llvm.dbg.value(metadata !{i32** %rowindJ.i}, i64 0, metadata !487) #5, !dbg !499
  %arrayidx33.i = getelementptr inbounds i32* %22, i64 %indvars.iv114.i, !dbg !499
  %26 = load i32* %arrayidx33.i, align 4, !dbg !499, !tbaa !348
  %idxprom34.i = sext i32 %26 to i64, !dbg !499
  %arrayidx35.i = getelementptr inbounds i32* %call4, i64 %idxprom34.i, !dbg !499
  %27 = load i32* %arrayidx35.i, align 4, !dbg !499, !tbaa !348
  store i32 %27, i32* %arrayidx33.i, align 4, !dbg !499, !tbaa !348
  %indvars.iv.next115.i = add i64 %indvars.iv114.i, 1, !dbg !497
  call void @llvm.dbg.value(metadata !{i32* %nrowJ.i}, i64 0, metadata !466) #5, !dbg !497
  call void @llvm.dbg.value(metadata !{i32* %nrowJ.i}, i64 0, metadata !307), !dbg !497
  %28 = load i32* %nrowJ.i, align 4, !dbg !497, !tbaa !348
  %29 = trunc i64 %indvars.iv.next115.i to i32, !dbg !497
  %cmp30.i = icmp slt i32 %29, %28, !dbg !497
  br i1 %cmp30.i, label %for.body31.i, label %for.end40.i, !dbg !497

for.end40.i:                                      ; preds = %for.body31.i, %for.cond29.preheader.i
  %30 = phi i32 [ %21, %for.cond29.preheader.i ], [ %28, %for.body31.i ]
  br i1 %cmp.i, label %if.then42.i, label %if.end45.i, !dbg !501

if.then42.i:                                      ; preds = %for.end40.i
  %31 = call i64 @fwrite(i8* getelementptr inbounds ([16 x i8]* @.str10, i64 0, i64 0), i64 15, i64 1, %struct._IO_FILE* %msgFile) #5, !dbg !502
  call void @llvm.dbg.value(metadata !{i32* %nrowJ.i}, i64 0, metadata !466) #5, !dbg !504
  call void @llvm.dbg.value(metadata !{i32* %nrowJ.i}, i64 0, metadata !307), !dbg !504
  %32 = load i32* %nrowJ.i, align 4, !dbg !504, !tbaa !348
  call void @llvm.dbg.value(metadata !{i32** %rowindJ.i}, i64 0, metadata !487) #5, !dbg !504
  call void @llvm.dbg.value(metadata !{i32** %rowindJ.i}, i64 0, metadata !310), !dbg !504
  %33 = load i32** %rowindJ.i, align 8, !dbg !504, !tbaa !332
  call void @IVfprintf(%struct._IO_FILE* %msgFile, i32 %32, i32* %33) #6, !dbg !504
  %call44.i = call i32 @fflush(%struct._IO_FILE* %msgFile) #6, !dbg !505
  call void @llvm.dbg.value(metadata !{i32* %nrowJ.i}, i64 0, metadata !466) #5, !dbg !506
  call void @llvm.dbg.value(metadata !{i32* %nrowJ.i}, i64 0, metadata !307), !dbg !506
  %.pre118.i = load i32* %nrowJ.i, align 4, !dbg !506, !tbaa !348
  br label %if.end45.i, !dbg !507

if.end45.i:                                       ; preds = %for.end40.i, %if.then42.i
  %34 = phi i32 [ %.pre118.i, %if.then42.i ], [ %30, %for.end40.i ]
  call void @llvm.dbg.value(metadata !{i32* %nrowJ.i}, i64 0, metadata !466) #5, !dbg !506
  %sub.i = sub nsw i32 %34, %call2.i, !dbg !506
  call void @llvm.dbg.value(metadata !{i32** %rowindJ.i}, i64 0, metadata !487) #5, !dbg !506
  call void @llvm.dbg.value(metadata !{i32** %rowindJ.i}, i64 0, metadata !310), !dbg !506
  %35 = load i32** %rowindJ.i, align 8, !dbg !506, !tbaa !332
  %idx.ext.i = sext i32 %call2.i to i64, !dbg !506
  %add.ptr.i = getelementptr inbounds i32* %35, i64 %idx.ext.i, !dbg !506
  call void @IVqsortUp(i32 %sub.i, i32* %add.ptr.i) #6, !dbg !506
  call void @llvm.dbg.value(metadata !{i32 %call2.i}, i64 0, metadata !508) #5, !dbg !509
  call void @llvm.dbg.value(metadata !{i32* %nrowJ.i}, i64 0, metadata !466) #5, !dbg !509
  call void @llvm.dbg.value(metadata !{i32* %nrowJ.i}, i64 0, metadata !307), !dbg !509
  %36 = load i32* %nrowJ.i, align 4, !dbg !509, !tbaa !348
  %cmp47108.i = icmp slt i32 %call2.i, %36, !dbg !509
  br i1 %cmp47108.i, label %for.body48.lr.ph.i, label %for.end57.i, !dbg !509

for.body48.lr.ph.i:                               ; preds = %if.end45.i
  call void @llvm.dbg.value(metadata !{i32** %rowindJ.i}, i64 0, metadata !487) #5, !dbg !511
  call void @llvm.dbg.value(metadata !{i32** %rowindJ.i}, i64 0, metadata !310), !dbg !511
  %37 = load i32** %rowindJ.i, align 8, !dbg !511, !tbaa !332
  call void @llvm.dbg.value(metadata !{i32** %rowindK.i}, i64 0, metadata !490) #5, !dbg !511
  call void @llvm.dbg.value(metadata !{i32** %rowindK.i}, i64 0, metadata !311), !dbg !511
  %38 = load i32** %rowindK.i, align 8, !dbg !511, !tbaa !332
  br label %for.body48.i, !dbg !509

for.body48.i:                                     ; preds = %for.body48.i, %for.body48.lr.ph.i
  %indvars.iv.i = phi i64 [ %idx.ext.i, %for.body48.lr.ph.i ], [ %indvars.iv.next.i, %for.body48.i ]
  call void @llvm.dbg.value(metadata !{i32** %rowindJ.i}, i64 0, metadata !487) #5, !dbg !511
  %arrayidx50.i = getelementptr inbounds i32* %37, i64 %indvars.iv.i, !dbg !511
  %39 = load i32* %arrayidx50.i, align 4, !dbg !511, !tbaa !348
  %idxprom51.i = sext i32 %39 to i64, !dbg !511
  call void @llvm.dbg.value(metadata !{i32** %rowindK.i}, i64 0, metadata !490) #5, !dbg !511
  %arrayidx52.i = getelementptr inbounds i32* %38, i64 %idxprom51.i, !dbg !511
  %40 = load i32* %arrayidx52.i, align 4, !dbg !511, !tbaa !348
  store i32 %40, i32* %arrayidx50.i, align 4, !dbg !511, !tbaa !348
  %indvars.iv.next.i = add i64 %indvars.iv.i, 1, !dbg !509
  call void @llvm.dbg.value(metadata !{i32* %nrowJ.i}, i64 0, metadata !466) #5, !dbg !509
  call void @llvm.dbg.value(metadata !{i32* %nrowJ.i}, i64 0, metadata !307), !dbg !509
  %41 = load i32* %nrowJ.i, align 4, !dbg !509, !tbaa !348
  %42 = trunc i64 %indvars.iv.next.i to i32, !dbg !509
  %cmp47.i = icmp slt i32 %42, %41, !dbg !509
  br i1 %cmp47.i, label %for.body48.i, label %for.end57.i, !dbg !509

for.end57.i:                                      ; preds = %for.body48.i, %if.end45.i
  br i1 %cmp.i, label %if.then59.i, label %for.inc, !dbg !513

if.then59.i:                                      ; preds = %for.end57.i
  %43 = call i64 @fwrite(i8* getelementptr inbounds ([17 x i8]* @.str11, i64 0, i64 0), i64 16, i64 1, %struct._IO_FILE* %msgFile) #5, !dbg !514
  call void @llvm.dbg.value(metadata !{i32* %nrowJ.i}, i64 0, metadata !466) #5, !dbg !516
  call void @llvm.dbg.value(metadata !{i32* %nrowJ.i}, i64 0, metadata !307), !dbg !516
  %44 = load i32* %nrowJ.i, align 4, !dbg !516, !tbaa !348
  call void @llvm.dbg.value(metadata !{i32** %rowindJ.i}, i64 0, metadata !487) #5, !dbg !516
  call void @llvm.dbg.value(metadata !{i32** %rowindJ.i}, i64 0, metadata !310), !dbg !516
  %45 = load i32** %rowindJ.i, align 8, !dbg !516, !tbaa !332
  call void @IVfprintf(%struct._IO_FILE* %msgFile, i32 %44, i32* %45) #6, !dbg !516
  %call61.i = call i32 @fflush(%struct._IO_FILE* %msgFile) #6, !dbg !517
  br label %for.inc, !dbg !518

for.inc:                                          ; preds = %if.then59.i, %for.end57.i, %if.end7.i, %for.body
  %call12 = call i32 @Tree_preOTnext(%struct._Tree* %call5, i32 %J.030) #6, !dbg !519
  call void @llvm.dbg.value(metadata !{i32 %call12}, i64 0, metadata !254), !dbg !519
  %cmp8 = icmp eq i32 %call12, -1, !dbg !437
  br i1 %cmp8, label %for.end, label %for.body, !dbg !437

for.end:                                          ; preds = %for.inc, %if.end
  call void @IVfree(i32* %call4) #6, !dbg !520
  ret void, !dbg !521
}

; Function Attrs: nounwind optsize uwtable
define void @FrontMtx_permuteUpperMatrices(%struct._FrontMtx* %frontmtx, i32 %msglvl, %struct._IO_FILE* %msgFile) #0 {
entry:
  %ncolJ = alloca i32, align 4
  %ncolUJ = alloca i32, align 4
  %colindJ = alloca i32*, align 8
  %colindUJ = alloca i32*, align 8
  call void @llvm.dbg.value(metadata !{%struct._FrontMtx* %frontmtx}, i64 0, metadata !262), !dbg !522
  call void @llvm.dbg.value(metadata !{i32 %msglvl}, i64 0, metadata !263), !dbg !523
  call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %msgFile}, i64 0, metadata !264), !dbg !524
  call void @llvm.dbg.declare(metadata !{i32* %ncolJ}, metadata !272), !dbg !525
  call void @llvm.dbg.declare(metadata !{i32* %ncolUJ}, metadata !273), !dbg !525
  call void @llvm.dbg.declare(metadata !{i32** %colindJ}, metadata !276), !dbg !526
  call void @llvm.dbg.declare(metadata !{i32** %colindUJ}, metadata !277), !dbg !526
  %cmp = icmp eq %struct._FrontMtx* %frontmtx, null, !dbg !527
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !527

lor.lhs.false:                                    ; preds = %entry
  %cmp1 = icmp sgt i32 %msglvl, 0, !dbg !527
  %cmp2 = icmp eq %struct._IO_FILE* %msgFile, null, !dbg !527
  %or.cond = and i1 %cmp1, %cmp2, !dbg !527
  br i1 %or.cond, label %if.then, label %if.end, !dbg !527

if.then:                                          ; preds = %lor.lhs.false, %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !528, !tbaa !332
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([70 x i8]* @.str2, i64 0, i64 0), %struct._FrontMtx* %frontmtx, i32 %msglvl, %struct._IO_FILE* %msgFile) #6, !dbg !528
  call void @exit(i32 -1) #7, !dbg !530
  unreachable, !dbg !530

if.end:                                           ; preds = %lor.lhs.false
  %call3 = call i32 @FrontMtx_nfront(%struct._FrontMtx* %frontmtx) #6, !dbg !531
  call void @llvm.dbg.value(metadata !{i32 %call3}, i64 0, metadata !271), !dbg !531
  %call4 = call i32 @FrontMtx_neqns(%struct._FrontMtx* %frontmtx) #6, !dbg !532
  call void @llvm.dbg.value(metadata !{i32 %call4}, i64 0, metadata !270), !dbg !532
  %call5 = call i32* @IVinit(i32 %call4, i32 -1) #6, !dbg !533
  call void @llvm.dbg.value(metadata !{i32* %call5}, i64 0, metadata !275), !dbg !533
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !268), !dbg !534
  %cmp6103 = icmp sgt i32 %call3, 0, !dbg !534
  br i1 %cmp6103, label %for.body, label %for.end60, !dbg !534

for.body:                                         ; preds = %if.end, %for.inc58
  %J.0104 = phi i32 [ %inc59, %for.inc58 ], [ 0, %if.end ]
  %call7 = call %struct._SubMtx* @FrontMtx_upperMtx(%struct._FrontMtx* %frontmtx, i32 %J.0104, i32 %call3) #6, !dbg !536
  call void @llvm.dbg.value(metadata !{%struct._SubMtx* %call7}, i64 0, metadata !265), !dbg !536
  %cmp8 = icmp eq %struct._SubMtx* %call7, null, !dbg !538
  br i1 %cmp8, label %for.inc58, label %if.then9, !dbg !538

if.then9:                                         ; preds = %for.body
  %call10 = call i32 @FrontMtx_frontSize(%struct._FrontMtx* %frontmtx, i32 %J.0104) #6, !dbg !539
  call void @llvm.dbg.value(metadata !{i32 %call10}, i64 0, metadata !274), !dbg !539
  call void @FrontMtx_columnIndices(%struct._FrontMtx* %frontmtx, i32 %J.0104, i32* %ncolJ, i32** %colindJ) #6, !dbg !541
  call void @SubMtx_columnIndices(%struct._SubMtx* %call7, i32* %ncolUJ, i32** %colindUJ) #6, !dbg !542
  call void @llvm.dbg.value(metadata !{i32 %call10}, i64 0, metadata !266), !dbg !543
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !269), !dbg !543
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !267), !dbg !543
  call void @llvm.dbg.value(metadata !{i32* %ncolJ}, i64 0, metadata !272), !dbg !543
  %1 = load i32* %ncolJ, align 4, !dbg !543, !tbaa !348
  %cmp1293 = icmp slt i32 %call10, %1, !dbg !543
  br i1 %cmp1293, label %for.body13.lr.ph, label %for.inc58, !dbg !543

for.body13.lr.ph:                                 ; preds = %if.then9
  call void @llvm.dbg.value(metadata !{i32** %colindJ}, i64 0, metadata !276), !dbg !545
  %2 = load i32** %colindJ, align 8, !dbg !545, !tbaa !332
  call void @llvm.dbg.value(metadata !{i32** %colindUJ}, i64 0, metadata !277), !dbg !545
  %3 = load i32** %colindUJ, align 8, !dbg !545, !tbaa !332
  call void @llvm.dbg.value(metadata !{i32* %ncolJ}, i64 0, metadata !272), !dbg !543
  %4 = sext i32 %call10 to i64
  br label %for.body13, !dbg !543

for.body13:                                       ; preds = %for.body13.lr.ph, %for.inc
  %indvars.iv105 = phi i64 [ 0, %for.body13.lr.ph ], [ %indvars.iv.next106, %for.inc ], !dbg !543
  %indvars.iv = phi i64 [ %4, %for.body13.lr.ph ], [ %indvars.iv.next, %for.inc ]
  call void @llvm.dbg.value(metadata !{i32** %colindJ}, i64 0, metadata !276), !dbg !545
  %arrayidx = getelementptr inbounds i32* %2, i64 %indvars.iv, !dbg !545
  %5 = load i32* %arrayidx, align 4, !dbg !545, !tbaa !348
  call void @llvm.dbg.value(metadata !{i32** %colindUJ}, i64 0, metadata !277), !dbg !545
  %arrayidx15 = getelementptr inbounds i32* %3, i64 %indvars.iv105, !dbg !545
  %6 = load i32* %arrayidx15, align 4, !dbg !545, !tbaa !348
  %cmp16 = icmp eq i32 %5, %6, !dbg !545
  br i1 %cmp16, label %for.inc, label %for.cond22.loopexit, !dbg !545

for.inc:                                          ; preds = %for.body13
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !543
  %indvars.iv.next106 = add i64 %indvars.iv105, 1, !dbg !543
  call void @llvm.dbg.value(metadata !{i32* %ncolJ}, i64 0, metadata !272), !dbg !543
  %7 = trunc i64 %indvars.iv.next to i32, !dbg !543
  %cmp12 = icmp slt i32 %7, %1, !dbg !543
  br i1 %cmp12, label %for.body13, label %for.inc58, !dbg !543

for.cond22.loopexit:                              ; preds = %for.body13
  call void @llvm.dbg.value(metadata !{i32* %ncolJ}, i64 0, metadata !272), !dbg !547
  %cmp2396 = icmp sgt i32 %1, 0, !dbg !547
  br i1 %cmp2396, label %for.body24, label %for.cond32.loopexit, !dbg !547

for.body24:                                       ; preds = %for.cond22.loopexit, %for.body24
  %indvars.iv107 = phi i64 [ %indvars.iv.next108, %for.body24 ], [ 0, %for.cond22.loopexit ]
  call void @llvm.dbg.value(metadata !{i32** %colindJ}, i64 0, metadata !276), !dbg !550
  %arrayidx26 = getelementptr inbounds i32* %2, i64 %indvars.iv107, !dbg !550
  %8 = load i32* %arrayidx26, align 4, !dbg !550, !tbaa !348
  %idxprom27 = sext i32 %8 to i64, !dbg !550
  %arrayidx28 = getelementptr inbounds i32* %call5, i64 %idxprom27, !dbg !550
  %9 = trunc i64 %indvars.iv107 to i32, !dbg !550
  store i32 %9, i32* %arrayidx28, align 4, !dbg !550, !tbaa !348
  %indvars.iv.next108 = add i64 %indvars.iv107, 1, !dbg !547
  call void @llvm.dbg.value(metadata !{i32* %ncolJ}, i64 0, metadata !272), !dbg !547
  %10 = load i32* %ncolJ, align 4, !dbg !547, !tbaa !348
  %11 = trunc i64 %indvars.iv.next108 to i32, !dbg !547
  %cmp23 = icmp slt i32 %11, %10, !dbg !547
  br i1 %cmp23, label %for.body24, label %for.cond32.loopexit, !dbg !547

for.cond32.loopexit:                              ; preds = %for.body24, %for.cond22.loopexit
  call void @llvm.dbg.value(metadata !{i32* %ncolUJ}, i64 0, metadata !273), !dbg !552
  %12 = load i32* %ncolUJ, align 4, !dbg !552, !tbaa !348
  %cmp3398 = icmp sgt i32 %12, 0, !dbg !552
  br i1 %cmp3398, label %for.body34, label %for.end43, !dbg !552

for.body34:                                       ; preds = %for.cond32.loopexit, %for.body34
  %indvars.iv109 = phi i64 [ %indvars.iv.next110, %for.body34 ], [ 0, %for.cond32.loopexit ]
  call void @llvm.dbg.value(metadata !{i32** %colindUJ}, i64 0, metadata !277), !dbg !554
  %arrayidx36 = getelementptr inbounds i32* %3, i64 %indvars.iv109, !dbg !554
  %13 = load i32* %arrayidx36, align 4, !dbg !554, !tbaa !348
  %idxprom37 = sext i32 %13 to i64, !dbg !554
  %arrayidx38 = getelementptr inbounds i32* %call5, i64 %idxprom37, !dbg !554
  %14 = load i32* %arrayidx38, align 4, !dbg !554, !tbaa !348
  store i32 %14, i32* %arrayidx36, align 4, !dbg !554, !tbaa !348
  %indvars.iv.next110 = add i64 %indvars.iv109, 1, !dbg !552
  call void @llvm.dbg.value(metadata !{i32* %ncolUJ}, i64 0, metadata !273), !dbg !552
  %15 = load i32* %ncolUJ, align 4, !dbg !552, !tbaa !348
  %16 = trunc i64 %indvars.iv.next110 to i32, !dbg !552
  %cmp33 = icmp slt i32 %16, %15, !dbg !552
  br i1 %cmp33, label %for.body34, label %for.end43, !dbg !552

for.end43:                                        ; preds = %for.body34, %for.cond32.loopexit
  call void @SubMtx_sortColumnsUp(%struct._SubMtx* %call7) #6, !dbg !556
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !266), !dbg !557
  call void @llvm.dbg.value(metadata !{i32* %ncolUJ}, i64 0, metadata !273), !dbg !557
  %17 = load i32* %ncolUJ, align 4, !dbg !557, !tbaa !348
  %cmp45101 = icmp sgt i32 %17, 0, !dbg !557
  br i1 %cmp45101, label %for.body46.lr.ph, label %for.inc58, !dbg !557

for.body46.lr.ph:                                 ; preds = %for.end43
  call void @llvm.dbg.value(metadata !{i32** %colindUJ}, i64 0, metadata !277), !dbg !559
  %18 = load i32** %colindUJ, align 8, !dbg !559, !tbaa !332
  call void @llvm.dbg.value(metadata !{i32** %colindJ}, i64 0, metadata !276), !dbg !559
  %19 = load i32** %colindJ, align 8, !dbg !559, !tbaa !332
  br label %for.body46, !dbg !557

for.body46:                                       ; preds = %for.body46.lr.ph, %for.body46
  %indvars.iv111 = phi i64 [ 0, %for.body46.lr.ph ], [ %indvars.iv.next112, %for.body46 ]
  call void @llvm.dbg.value(metadata !{i32** %colindUJ}, i64 0, metadata !277), !dbg !559
  %arrayidx48 = getelementptr inbounds i32* %18, i64 %indvars.iv111, !dbg !559
  %20 = load i32* %arrayidx48, align 4, !dbg !559, !tbaa !348
  %idxprom49 = sext i32 %20 to i64, !dbg !559
  call void @llvm.dbg.value(metadata !{i32** %colindJ}, i64 0, metadata !276), !dbg !559
  %arrayidx50 = getelementptr inbounds i32* %19, i64 %idxprom49, !dbg !559
  %21 = load i32* %arrayidx50, align 4, !dbg !559, !tbaa !348
  store i32 %21, i32* %arrayidx48, align 4, !dbg !559, !tbaa !348
  %indvars.iv.next112 = add i64 %indvars.iv111, 1, !dbg !557
  call void @llvm.dbg.value(metadata !{i32* %ncolUJ}, i64 0, metadata !273), !dbg !557
  %22 = load i32* %ncolUJ, align 4, !dbg !557, !tbaa !348
  %23 = trunc i64 %indvars.iv.next112 to i32, !dbg !557
  %cmp45 = icmp slt i32 %23, %22, !dbg !557
  br i1 %cmp45, label %for.body46, label %for.inc58, !dbg !557

for.inc58:                                        ; preds = %for.end43, %for.body46, %if.then9, %for.inc, %for.body
  %inc59 = add nsw i32 %J.0104, 1, !dbg !534
  call void @llvm.dbg.value(metadata !{i32 %inc59}, i64 0, metadata !268), !dbg !534
  %exitcond = icmp eq i32 %inc59, %call3, !dbg !534
  br i1 %exitcond, label %for.end60, label %for.body, !dbg !534

for.end60:                                        ; preds = %for.inc58, %if.end
  call void @IVfree(i32* %call5) #6, !dbg !561
  ret void, !dbg !562
}

; Function Attrs: optsize
declare i32 @FrontMtx_nfront(%struct._FrontMtx*) #4

; Function Attrs: optsize
declare %struct._SubMtx* @FrontMtx_upperMtx(%struct._FrontMtx*, i32, i32) #4

; Function Attrs: optsize
declare i32 @FrontMtx_frontSize(%struct._FrontMtx*, i32) #4

; Function Attrs: optsize
declare void @FrontMtx_columnIndices(%struct._FrontMtx*, i32, i32*, i32**) #4

; Function Attrs: optsize
declare void @SubMtx_columnIndices(%struct._SubMtx*, i32*, i32**) #4

; Function Attrs: optsize
declare void @SubMtx_sortColumnsUp(%struct._SubMtx*) #4

; Function Attrs: nounwind optsize uwtable
define void @FrontMtx_permuteLowerMatrices(%struct._FrontMtx* %frontmtx, i32 %msglvl, %struct._IO_FILE* %msgFile) #0 {
entry:
  %nrowJ = alloca i32, align 4
  %nrowUJ = alloca i32, align 4
  %rowindJ = alloca i32*, align 8
  %rowindUJ = alloca i32*, align 8
  call void @llvm.dbg.value(metadata !{%struct._FrontMtx* %frontmtx}, i64 0, metadata !280), !dbg !563
  call void @llvm.dbg.value(metadata !{i32 %msglvl}, i64 0, metadata !281), !dbg !564
  call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %msgFile}, i64 0, metadata !282), !dbg !565
  call void @llvm.dbg.declare(metadata !{i32* %nrowJ}, metadata !291), !dbg !566
  call void @llvm.dbg.declare(metadata !{i32* %nrowUJ}, metadata !292), !dbg !566
  call void @llvm.dbg.declare(metadata !{i32** %rowindJ}, metadata !294), !dbg !567
  call void @llvm.dbg.declare(metadata !{i32** %rowindUJ}, metadata !295), !dbg !567
  %cmp = icmp eq %struct._FrontMtx* %frontmtx, null, !dbg !568
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !568

lor.lhs.false:                                    ; preds = %entry
  %cmp1 = icmp sgt i32 %msglvl, 0, !dbg !568
  %cmp2 = icmp eq %struct._IO_FILE* %msgFile, null, !dbg !568
  %or.cond = and i1 %cmp1, %cmp2, !dbg !568
  br i1 %or.cond, label %if.then, label %if.end, !dbg !568

if.then:                                          ; preds = %lor.lhs.false, %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !569, !tbaa !332
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([70 x i8]* @.str3, i64 0, i64 0), %struct._FrontMtx* %frontmtx, i32 %msglvl, %struct._IO_FILE* %msgFile) #6, !dbg !569
  call void @exit(i32 -1) #7, !dbg !571
  unreachable, !dbg !571

if.end:                                           ; preds = %lor.lhs.false
  %call3 = call i32 @FrontMtx_nfront(%struct._FrontMtx* %frontmtx) #6, !dbg !572
  call void @llvm.dbg.value(metadata !{i32 %call3}, i64 0, metadata !289), !dbg !572
  %call4 = call i32 @FrontMtx_neqns(%struct._FrontMtx* %frontmtx) #6, !dbg !573
  call void @llvm.dbg.value(metadata !{i32 %call4}, i64 0, metadata !288), !dbg !573
  %call5 = call i32* @IVinit(i32 %call4, i32 -1) #6, !dbg !574
  call void @llvm.dbg.value(metadata !{i32* %call5}, i64 0, metadata !293), !dbg !574
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !286), !dbg !575
  %cmp6103 = icmp sgt i32 %call3, 0, !dbg !575
  br i1 %cmp6103, label %for.body, label %for.end60, !dbg !575

for.body:                                         ; preds = %if.end, %for.inc58
  %J.0104 = phi i32 [ %inc59, %for.inc58 ], [ 0, %if.end ]
  %call7 = call %struct._SubMtx* @FrontMtx_lowerMtx(%struct._FrontMtx* %frontmtx, i32 %call3, i32 %J.0104) #6, !dbg !577
  call void @llvm.dbg.value(metadata !{%struct._SubMtx* %call7}, i64 0, metadata !283), !dbg !577
  %cmp8 = icmp eq %struct._SubMtx* %call7, null, !dbg !579
  br i1 %cmp8, label %for.inc58, label %if.then9, !dbg !579

if.then9:                                         ; preds = %for.body
  %call10 = call i32 @FrontMtx_frontSize(%struct._FrontMtx* %frontmtx, i32 %J.0104) #6, !dbg !580
  call void @llvm.dbg.value(metadata !{i32 %call10}, i64 0, metadata !290), !dbg !580
  call void @FrontMtx_rowIndices(%struct._FrontMtx* %frontmtx, i32 %J.0104, i32* %nrowJ, i32** %rowindJ) #6, !dbg !582
  call void @SubMtx_rowIndices(%struct._SubMtx* %call7, i32* %nrowUJ, i32** %rowindUJ) #6, !dbg !583
  call void @llvm.dbg.value(metadata !{i32 %call10}, i64 0, metadata !284), !dbg !584
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !287), !dbg !584
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !285), !dbg !584
  call void @llvm.dbg.value(metadata !{i32* %nrowJ}, i64 0, metadata !291), !dbg !584
  %1 = load i32* %nrowJ, align 4, !dbg !584, !tbaa !348
  %cmp1293 = icmp slt i32 %call10, %1, !dbg !584
  br i1 %cmp1293, label %for.body13.lr.ph, label %for.inc58, !dbg !584

for.body13.lr.ph:                                 ; preds = %if.then9
  call void @llvm.dbg.value(metadata !{i32** %rowindJ}, i64 0, metadata !294), !dbg !586
  %2 = load i32** %rowindJ, align 8, !dbg !586, !tbaa !332
  call void @llvm.dbg.value(metadata !{i32** %rowindUJ}, i64 0, metadata !295), !dbg !586
  %3 = load i32** %rowindUJ, align 8, !dbg !586, !tbaa !332
  call void @llvm.dbg.value(metadata !{i32* %nrowJ}, i64 0, metadata !291), !dbg !584
  %4 = sext i32 %call10 to i64
  br label %for.body13, !dbg !584

for.body13:                                       ; preds = %for.body13.lr.ph, %for.inc
  %indvars.iv105 = phi i64 [ 0, %for.body13.lr.ph ], [ %indvars.iv.next106, %for.inc ], !dbg !584
  %indvars.iv = phi i64 [ %4, %for.body13.lr.ph ], [ %indvars.iv.next, %for.inc ]
  call void @llvm.dbg.value(metadata !{i32** %rowindJ}, i64 0, metadata !294), !dbg !586
  %arrayidx = getelementptr inbounds i32* %2, i64 %indvars.iv, !dbg !586
  %5 = load i32* %arrayidx, align 4, !dbg !586, !tbaa !348
  call void @llvm.dbg.value(metadata !{i32** %rowindUJ}, i64 0, metadata !295), !dbg !586
  %arrayidx15 = getelementptr inbounds i32* %3, i64 %indvars.iv105, !dbg !586
  %6 = load i32* %arrayidx15, align 4, !dbg !586, !tbaa !348
  %cmp16 = icmp eq i32 %5, %6, !dbg !586
  br i1 %cmp16, label %for.inc, label %for.cond22.loopexit, !dbg !586

for.inc:                                          ; preds = %for.body13
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !584
  %indvars.iv.next106 = add i64 %indvars.iv105, 1, !dbg !584
  call void @llvm.dbg.value(metadata !{i32* %nrowJ}, i64 0, metadata !291), !dbg !584
  %7 = trunc i64 %indvars.iv.next to i32, !dbg !584
  %cmp12 = icmp slt i32 %7, %1, !dbg !584
  br i1 %cmp12, label %for.body13, label %for.inc58, !dbg !584

for.cond22.loopexit:                              ; preds = %for.body13
  call void @llvm.dbg.value(metadata !{i32* %nrowJ}, i64 0, metadata !291), !dbg !588
  %cmp2396 = icmp sgt i32 %1, 0, !dbg !588
  br i1 %cmp2396, label %for.body24, label %for.cond32.loopexit, !dbg !588

for.body24:                                       ; preds = %for.cond22.loopexit, %for.body24
  %indvars.iv107 = phi i64 [ %indvars.iv.next108, %for.body24 ], [ 0, %for.cond22.loopexit ]
  call void @llvm.dbg.value(metadata !{i32** %rowindJ}, i64 0, metadata !294), !dbg !591
  %arrayidx26 = getelementptr inbounds i32* %2, i64 %indvars.iv107, !dbg !591
  %8 = load i32* %arrayidx26, align 4, !dbg !591, !tbaa !348
  %idxprom27 = sext i32 %8 to i64, !dbg !591
  %arrayidx28 = getelementptr inbounds i32* %call5, i64 %idxprom27, !dbg !591
  %9 = trunc i64 %indvars.iv107 to i32, !dbg !591
  store i32 %9, i32* %arrayidx28, align 4, !dbg !591, !tbaa !348
  %indvars.iv.next108 = add i64 %indvars.iv107, 1, !dbg !588
  call void @llvm.dbg.value(metadata !{i32* %nrowJ}, i64 0, metadata !291), !dbg !588
  %10 = load i32* %nrowJ, align 4, !dbg !588, !tbaa !348
  %11 = trunc i64 %indvars.iv.next108 to i32, !dbg !588
  %cmp23 = icmp slt i32 %11, %10, !dbg !588
  br i1 %cmp23, label %for.body24, label %for.cond32.loopexit, !dbg !588

for.cond32.loopexit:                              ; preds = %for.body24, %for.cond22.loopexit
  call void @llvm.dbg.value(metadata !{i32* %nrowUJ}, i64 0, metadata !292), !dbg !593
  %12 = load i32* %nrowUJ, align 4, !dbg !593, !tbaa !348
  %cmp3398 = icmp sgt i32 %12, 0, !dbg !593
  br i1 %cmp3398, label %for.body34, label %for.end43, !dbg !593

for.body34:                                       ; preds = %for.cond32.loopexit, %for.body34
  %indvars.iv109 = phi i64 [ %indvars.iv.next110, %for.body34 ], [ 0, %for.cond32.loopexit ]
  call void @llvm.dbg.value(metadata !{i32** %rowindUJ}, i64 0, metadata !295), !dbg !595
  %arrayidx36 = getelementptr inbounds i32* %3, i64 %indvars.iv109, !dbg !595
  %13 = load i32* %arrayidx36, align 4, !dbg !595, !tbaa !348
  %idxprom37 = sext i32 %13 to i64, !dbg !595
  %arrayidx38 = getelementptr inbounds i32* %call5, i64 %idxprom37, !dbg !595
  %14 = load i32* %arrayidx38, align 4, !dbg !595, !tbaa !348
  store i32 %14, i32* %arrayidx36, align 4, !dbg !595, !tbaa !348
  %indvars.iv.next110 = add i64 %indvars.iv109, 1, !dbg !593
  call void @llvm.dbg.value(metadata !{i32* %nrowUJ}, i64 0, metadata !292), !dbg !593
  %15 = load i32* %nrowUJ, align 4, !dbg !593, !tbaa !348
  %16 = trunc i64 %indvars.iv.next110 to i32, !dbg !593
  %cmp33 = icmp slt i32 %16, %15, !dbg !593
  br i1 %cmp33, label %for.body34, label %for.end43, !dbg !593

for.end43:                                        ; preds = %for.body34, %for.cond32.loopexit
  call void @SubMtx_sortRowsUp(%struct._SubMtx* %call7) #6, !dbg !597
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !284), !dbg !598
  call void @llvm.dbg.value(metadata !{i32* %nrowUJ}, i64 0, metadata !292), !dbg !598
  %17 = load i32* %nrowUJ, align 4, !dbg !598, !tbaa !348
  %cmp45101 = icmp sgt i32 %17, 0, !dbg !598
  br i1 %cmp45101, label %for.body46.lr.ph, label %for.inc58, !dbg !598

for.body46.lr.ph:                                 ; preds = %for.end43
  call void @llvm.dbg.value(metadata !{i32** %rowindUJ}, i64 0, metadata !295), !dbg !600
  %18 = load i32** %rowindUJ, align 8, !dbg !600, !tbaa !332
  call void @llvm.dbg.value(metadata !{i32** %rowindJ}, i64 0, metadata !294), !dbg !600
  %19 = load i32** %rowindJ, align 8, !dbg !600, !tbaa !332
  br label %for.body46, !dbg !598

for.body46:                                       ; preds = %for.body46.lr.ph, %for.body46
  %indvars.iv111 = phi i64 [ 0, %for.body46.lr.ph ], [ %indvars.iv.next112, %for.body46 ]
  call void @llvm.dbg.value(metadata !{i32** %rowindUJ}, i64 0, metadata !295), !dbg !600
  %arrayidx48 = getelementptr inbounds i32* %18, i64 %indvars.iv111, !dbg !600
  %20 = load i32* %arrayidx48, align 4, !dbg !600, !tbaa !348
  %idxprom49 = sext i32 %20 to i64, !dbg !600
  call void @llvm.dbg.value(metadata !{i32** %rowindJ}, i64 0, metadata !294), !dbg !600
  %arrayidx50 = getelementptr inbounds i32* %19, i64 %idxprom49, !dbg !600
  %21 = load i32* %arrayidx50, align 4, !dbg !600, !tbaa !348
  store i32 %21, i32* %arrayidx48, align 4, !dbg !600, !tbaa !348
  %indvars.iv.next112 = add i64 %indvars.iv111, 1, !dbg !598
  call void @llvm.dbg.value(metadata !{i32* %nrowUJ}, i64 0, metadata !292), !dbg !598
  %22 = load i32* %nrowUJ, align 4, !dbg !598, !tbaa !348
  %23 = trunc i64 %indvars.iv.next112 to i32, !dbg !598
  %cmp45 = icmp slt i32 %23, %22, !dbg !598
  br i1 %cmp45, label %for.body46, label %for.inc58, !dbg !598

for.inc58:                                        ; preds = %for.end43, %for.body46, %if.then9, %for.inc, %for.body
  %inc59 = add nsw i32 %J.0104, 1, !dbg !575
  call void @llvm.dbg.value(metadata !{i32 %inc59}, i64 0, metadata !286), !dbg !575
  %exitcond = icmp eq i32 %inc59, %call3, !dbg !575
  br i1 %exitcond, label %for.end60, label %for.body, !dbg !575

for.end60:                                        ; preds = %for.inc58, %if.end
  call void @IVfree(i32* %call5) #6, !dbg !602
  ret void, !dbg !603
}

; Function Attrs: optsize
declare %struct._SubMtx* @FrontMtx_lowerMtx(%struct._FrontMtx*, i32, i32) #4

; Function Attrs: optsize
declare void @FrontMtx_rowIndices(%struct._FrontMtx*, i32, i32*, i32**) #4

; Function Attrs: optsize
declare void @SubMtx_rowIndices(%struct._SubMtx*, i32*, i32**) #4

; Function Attrs: optsize
declare void @SubMtx_sortRowsUp(%struct._SubMtx*) #4

; Function Attrs: nounwind optsize
declare i32 @fflush(%struct._IO_FILE* nocapture) #2

; Function Attrs: optsize
declare void @IVfprintf(%struct._IO_FILE*, i32, i32*) #4

; Function Attrs: optsize
declare void @IVqsortUp(i32, i32*) #4

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #1

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #5

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #5

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { nounwind optsize }
attributes #7 = { noreturn nounwind optsize }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_permute.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_permute.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4, metadata !249, metadata !260, metadata !278, metadata !296, metadata !312}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"FrontMtx_permuteUpperAdj", metadata !"FrontMtx_permuteUpperAdj", metadata !"", i32 20, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._FrontMtx*, i32, %struct._IO_FILE*)* @FrontMtx_permuteUpperAdj, null, null, metadata !239, i32 24} ; [ DW_TAG_subprogram ] [line 20] [def] [scope 24] [FrontMtx_permuteUpperAdj]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_permute.c]
!6 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{null, metadata !8, metadata !14, metadata !183}
!8 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !9} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from FrontMtx]
!9 = metadata !{i32 786454, metadata !1, null, metadata !"FrontMtx", i32 96, i64 0, i64 0, i64 0, i32 0, metadata !10} ; [ DW_TAG_typedef ] [FrontMtx] [line 96, size 0, align 0, offset 0] [from _FrontMtx]
!10 = metadata !{i32 786451, metadata !11, null, metadata !"_FrontMtx", i32 97, i64 1536, i64 64, i32 0, i32 0, null, metadata !12, i32 0, null, null} ; [ DW_TAG_structure_type ] [_FrontMtx] [line 97, size 1536, align 64, offset 0] [from ]
!11 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/../FrontMtx.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!12 = metadata !{metadata !13, metadata !15, metadata !16, metadata !17, metadata !18, metadata !19, metadata !20, metadata !21, metadata !22, metadata !23, metadata !24, metadata !36, metadata !57, metadata !58, metadata !81, metadata !82, metadata !83, metadata !84, metadata !85, metadata !114, metadata !115, metadata !116, metadata !117, metadata !118, metadata !143, metadata !144, metadata !169, metadata !170, metadata !182}
!13 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"nfront", i32 98, i64 32, i64 32, i64 0, i32 0, metadata !14} ; [ DW_TAG_member ] [nfront] [line 98, size 32, align 32, offset 0] [from int]
!14 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!15 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"neqns", i32 99, i64 32, i64 32, i64 32, i32 0, metadata !14} ; [ DW_TAG_member ] [neqns] [line 99, size 32, align 32, offset 32] [from int]
!16 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"type", i32 100, i64 32, i64 32, i64 64, i32 0, metadata !14} ; [ DW_TAG_member ] [type] [line 100, size 32, align 32, offset 64] [from int]
!17 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"symmetryflag", i32 101, i64 32, i64 32, i64 96, i32 0, metadata !14} ; [ DW_TAG_member ] [symmetryflag] [line 101, size 32, align 32, offset 96] [from int]
!18 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"sparsityflag", i32 102, i64 32, i64 32, i64 128, i32 0, metadata !14} ; [ DW_TAG_member ] [sparsityflag] [line 102, size 32, align 32, offset 128] [from int]
!19 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"pivotingflag", i32 103, i64 32, i64 32, i64 160, i32 0, metadata !14} ; [ DW_TAG_member ] [pivotingflag] [line 103, size 32, align 32, offset 160] [from int]
!20 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"dataMode", i32 104, i64 32, i64 32, i64 192, i32 0, metadata !14} ; [ DW_TAG_member ] [dataMode] [line 104, size 32, align 32, offset 192] [from int]
!21 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"nentD", i32 105, i64 32, i64 32, i64 224, i32 0, metadata !14} ; [ DW_TAG_member ] [nentD] [line 105, size 32, align 32, offset 224] [from int]
!22 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"nentL", i32 106, i64 32, i64 32, i64 256, i32 0, metadata !14} ; [ DW_TAG_member ] [nentL] [line 106, size 32, align 32, offset 256] [from int]
!23 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"nentU", i32 107, i64 32, i64 32, i64 288, i32 0, metadata !14} ; [ DW_TAG_member ] [nentU] [line 107, size 32, align 32, offset 288] [from int]
!24 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"tree", i32 108, i64 64, i64 64, i64 320, i32 0, metadata !25} ; [ DW_TAG_member ] [tree] [line 108, size 64, align 64, offset 320] [from ]
!25 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !26} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from Tree]
!26 = metadata !{i32 786454, metadata !11, null, metadata !"Tree", i32 15, i64 0, i64 0, i64 0, i32 0, metadata !27} ; [ DW_TAG_typedef ] [Tree] [line 15, size 0, align 0, offset 0] [from _Tree]
!27 = metadata !{i32 786451, metadata !28, null, metadata !"_Tree", i32 16, i64 256, i64 64, i32 0, i32 0, null, metadata !29, i32 0, null, null} ; [ DW_TAG_structure_type ] [_Tree] [line 16, size 256, align 64, offset 0] [from ]
!28 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/../../Tree/Tree.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!29 = metadata !{metadata !30, metadata !31, metadata !32, metadata !34, metadata !35}
!30 = metadata !{i32 786445, metadata !28, metadata !27, metadata !"n", i32 17, i64 32, i64 32, i64 0, i32 0, metadata !14} ; [ DW_TAG_member ] [n] [line 17, size 32, align 32, offset 0] [from int]
!31 = metadata !{i32 786445, metadata !28, metadata !27, metadata !"root", i32 18, i64 32, i64 32, i64 32, i32 0, metadata !14} ; [ DW_TAG_member ] [root] [line 18, size 32, align 32, offset 32] [from int]
!32 = metadata !{i32 786445, metadata !28, metadata !27, metadata !"par", i32 19, i64 64, i64 64, i64 64, i32 0, metadata !33} ; [ DW_TAG_member ] [par] [line 19, size 64, align 64, offset 64] [from ]
!33 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !14} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from int]
!34 = metadata !{i32 786445, metadata !28, metadata !27, metadata !"fch", i32 20, i64 64, i64 64, i64 128, i32 0, metadata !33} ; [ DW_TAG_member ] [fch] [line 20, size 64, align 64, offset 128] [from ]
!35 = metadata !{i32 786445, metadata !28, metadata !27, metadata !"sib", i32 21, i64 64, i64 64, i64 192, i32 0, metadata !33} ; [ DW_TAG_member ] [sib] [line 21, size 64, align 64, offset 192] [from ]
!36 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"frontETree", i32 109, i64 64, i64 64, i64 384, i32 0, metadata !37} ; [ DW_TAG_member ] [frontETree] [line 109, size 64, align 64, offset 384] [from ]
!37 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !38} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ETree]
!38 = metadata !{i32 786454, metadata !11, null, metadata !"ETree", i32 31, i64 0, i64 0, i64 0, i32 0, metadata !39} ; [ DW_TAG_typedef ] [ETree] [line 31, size 0, align 0, offset 0] [from _ETree]
!39 = metadata !{i32 786451, metadata !40, null, metadata !"_ETree", i32 32, i64 320, i64 64, i32 0, i32 0, null, metadata !41, i32 0, null, null} ; [ DW_TAG_structure_type ] [_ETree] [line 32, size 320, align 64, offset 0] [from ]
!40 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/../../ETree/ETree.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!41 = metadata !{metadata !42, metadata !43, metadata !44, metadata !45, metadata !55, metadata !56}
!42 = metadata !{i32 786445, metadata !40, metadata !39, metadata !"nfront", i32 33, i64 32, i64 32, i64 0, i32 0, metadata !14} ; [ DW_TAG_member ] [nfront] [line 33, size 32, align 32, offset 0] [from int]
!43 = metadata !{i32 786445, metadata !40, metadata !39, metadata !"nvtx", i32 34, i64 32, i64 32, i64 32, i32 0, metadata !14} ; [ DW_TAG_member ] [nvtx] [line 34, size 32, align 32, offset 32] [from int]
!44 = metadata !{i32 786445, metadata !40, metadata !39, metadata !"tree", i32 35, i64 64, i64 64, i64 64, i32 0, metadata !25} ; [ DW_TAG_member ] [tree] [line 35, size 64, align 64, offset 64] [from ]
!45 = metadata !{i32 786445, metadata !40, metadata !39, metadata !"nodwghtsIV", i32 36, i64 64, i64 64, i64 128, i32 0, metadata !46} ; [ DW_TAG_member ] [nodwghtsIV] [line 36, size 64, align 64, offset 128] [from ]
!46 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !47} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from IV]
!47 = metadata !{i32 786454, metadata !40, null, metadata !"IV", i32 20, i64 0, i64 0, i64 0, i32 0, metadata !48} ; [ DW_TAG_typedef ] [IV] [line 20, size 0, align 0, offset 0] [from _IV]
!48 = metadata !{i32 786451, metadata !49, null, metadata !"_IV", i32 21, i64 192, i64 64, i32 0, i32 0, null, metadata !50, i32 0, null, null} ; [ DW_TAG_structure_type ] [_IV] [line 21, size 192, align 64, offset 0] [from ]
!49 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/../../IV/IV.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!50 = metadata !{metadata !51, metadata !52, metadata !53, metadata !54}
!51 = metadata !{i32 786445, metadata !49, metadata !48, metadata !"size", i32 22, i64 32, i64 32, i64 0, i32 0, metadata !14} ; [ DW_TAG_member ] [size] [line 22, size 32, align 32, offset 0] [from int]
!52 = metadata !{i32 786445, metadata !49, metadata !48, metadata !"maxsize", i32 23, i64 32, i64 32, i64 32, i32 0, metadata !14} ; [ DW_TAG_member ] [maxsize] [line 23, size 32, align 32, offset 32] [from int]
!53 = metadata !{i32 786445, metadata !49, metadata !48, metadata !"owned", i32 24, i64 32, i64 32, i64 64, i32 0, metadata !14} ; [ DW_TAG_member ] [owned] [line 24, size 32, align 32, offset 64] [from int]
!54 = metadata !{i32 786445, metadata !49, metadata !48, metadata !"vec", i32 25, i64 64, i64 64, i64 128, i32 0, metadata !33} ; [ DW_TAG_member ] [vec] [line 25, size 64, align 64, offset 128] [from ]
!55 = metadata !{i32 786445, metadata !40, metadata !39, metadata !"bndwghtsIV", i32 37, i64 64, i64 64, i64 192, i32 0, metadata !46} ; [ DW_TAG_member ] [bndwghtsIV] [line 37, size 64, align 64, offset 192] [from ]
!56 = metadata !{i32 786445, metadata !40, metadata !39, metadata !"vtxToFrontIV", i32 38, i64 64, i64 64, i64 256, i32 0, metadata !46} ; [ DW_TAG_member ] [vtxToFrontIV] [line 38, size 64, align 64, offset 256] [from ]
!57 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"frontsizesIV", i32 110, i64 64, i64 64, i64 448, i32 0, metadata !46} ; [ DW_TAG_member ] [frontsizesIV] [line 110, size 64, align 64, offset 448] [from ]
!58 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"symbfacIVL", i32 111, i64 64, i64 64, i64 512, i32 0, metadata !59} ; [ DW_TAG_member ] [symbfacIVL] [line 111, size 64, align 64, offset 512] [from ]
!59 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !60} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from IVL]
!60 = metadata !{i32 786454, metadata !11, null, metadata !"IVL", i32 55, i64 0, i64 0, i64 0, i32 0, metadata !61} ; [ DW_TAG_typedef ] [IVL] [line 55, size 0, align 0, offset 0] [from _IVL]
!61 = metadata !{i32 786451, metadata !62, null, metadata !"_IVL", i32 79, i64 384, i64 64, i32 0, i32 0, null, metadata !63, i32 0, null, null} ; [ DW_TAG_structure_type ] [_IVL] [line 79, size 384, align 64, offset 0] [from ]
!62 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/../../IVL/IVL.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!63 = metadata !{metadata !64, metadata !65, metadata !66, metadata !67, metadata !68, metadata !69, metadata !71, metadata !72}
!64 = metadata !{i32 786445, metadata !62, metadata !61, metadata !"type", i32 80, i64 32, i64 32, i64 0, i32 0, metadata !14} ; [ DW_TAG_member ] [type] [line 80, size 32, align 32, offset 0] [from int]
!65 = metadata !{i32 786445, metadata !62, metadata !61, metadata !"maxnlist", i32 81, i64 32, i64 32, i64 32, i32 0, metadata !14} ; [ DW_TAG_member ] [maxnlist] [line 81, size 32, align 32, offset 32] [from int]
!66 = metadata !{i32 786445, metadata !62, metadata !61, metadata !"nlist", i32 82, i64 32, i64 32, i64 64, i32 0, metadata !14} ; [ DW_TAG_member ] [nlist] [line 82, size 32, align 32, offset 64] [from int]
!67 = metadata !{i32 786445, metadata !62, metadata !61, metadata !"tsize", i32 83, i64 32, i64 32, i64 96, i32 0, metadata !14} ; [ DW_TAG_member ] [tsize] [line 83, size 32, align 32, offset 96] [from int]
!68 = metadata !{i32 786445, metadata !62, metadata !61, metadata !"sizes", i32 84, i64 64, i64 64, i64 128, i32 0, metadata !33} ; [ DW_TAG_member ] [sizes] [line 84, size 64, align 64, offset 128] [from ]
!69 = metadata !{i32 786445, metadata !62, metadata !61, metadata !"p_vec", i32 85, i64 64, i64 64, i64 192, i32 0, metadata !70} ; [ DW_TAG_member ] [p_vec] [line 85, size 64, align 64, offset 192] [from ]
!70 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !33} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!71 = metadata !{i32 786445, metadata !62, metadata !61, metadata !"incr", i32 86, i64 32, i64 32, i64 256, i32 0, metadata !14} ; [ DW_TAG_member ] [incr] [line 86, size 32, align 32, offset 256] [from int]
!72 = metadata !{i32 786445, metadata !62, metadata !61, metadata !"chunk", i32 87, i64 64, i64 64, i64 320, i32 0, metadata !73} ; [ DW_TAG_member ] [chunk] [line 87, size 64, align 64, offset 320] [from ]
!73 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !74} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from Ichunk]
!74 = metadata !{i32 786454, metadata !62, null, metadata !"Ichunk", i32 56, i64 0, i64 0, i64 0, i32 0, metadata !75} ; [ DW_TAG_typedef ] [Ichunk] [line 56, size 0, align 0, offset 0] [from _Ichunk]
!75 = metadata !{i32 786451, metadata !62, null, metadata !"_Ichunk", i32 102, i64 192, i64 64, i32 0, i32 0, null, metadata !76, i32 0, null, null} ; [ DW_TAG_structure_type ] [_Ichunk] [line 102, size 192, align 64, offset 0] [from ]
!76 = metadata !{metadata !77, metadata !78, metadata !79, metadata !80}
!77 = metadata !{i32 786445, metadata !62, metadata !75, metadata !"size", i32 103, i64 32, i64 32, i64 0, i32 0, metadata !14} ; [ DW_TAG_member ] [size] [line 103, size 32, align 32, offset 0] [from int]
!78 = metadata !{i32 786445, metadata !62, metadata !75, metadata !"inuse", i32 104, i64 32, i64 32, i64 32, i32 0, metadata !14} ; [ DW_TAG_member ] [inuse] [line 104, size 32, align 32, offset 32] [from int]
!79 = metadata !{i32 786445, metadata !62, metadata !75, metadata !"base", i32 105, i64 64, i64 64, i64 64, i32 0, metadata !33} ; [ DW_TAG_member ] [base] [line 105, size 64, align 64, offset 64] [from ]
!80 = metadata !{i32 786445, metadata !62, metadata !75, metadata !"next", i32 106, i64 64, i64 64, i64 128, i32 0, metadata !73} ; [ DW_TAG_member ] [next] [line 106, size 64, align 64, offset 128] [from ]
!81 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"rowadjIVL", i32 112, i64 64, i64 64, i64 576, i32 0, metadata !59} ; [ DW_TAG_member ] [rowadjIVL] [line 112, size 64, align 64, offset 576] [from ]
!82 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"coladjIVL", i32 113, i64 64, i64 64, i64 640, i32 0, metadata !59} ; [ DW_TAG_member ] [coladjIVL] [line 113, size 64, align 64, offset 640] [from ]
!83 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"lowerblockIVL", i32 114, i64 64, i64 64, i64 704, i32 0, metadata !59} ; [ DW_TAG_member ] [lowerblockIVL] [line 114, size 64, align 64, offset 704] [from ]
!84 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"upperblockIVL", i32 115, i64 64, i64 64, i64 768, i32 0, metadata !59} ; [ DW_TAG_member ] [upperblockIVL] [line 115, size 64, align 64, offset 768] [from ]
!85 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"p_mtxDJJ", i32 116, i64 64, i64 64, i64 832, i32 0, metadata !86} ; [ DW_TAG_member ] [p_mtxDJJ] [line 116, size 64, align 64, offset 832] [from ]
!86 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !87} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!87 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !88} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from SubMtx]
!88 = metadata !{i32 786454, metadata !11, null, metadata !"SubMtx", i32 43, i64 0, i64 0, i64 0, i32 0, metadata !89} ; [ DW_TAG_typedef ] [SubMtx] [line 43, size 0, align 0, offset 0] [from _SubMtx]
!89 = metadata !{i32 786451, metadata !90, null, metadata !"_SubMtx", i32 44, i64 576, i64 64, i32 0, i32 0, null, metadata !91, i32 0, null, null} ; [ DW_TAG_structure_type ] [_SubMtx] [line 44, size 576, align 64, offset 0] [from ]
!90 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/../../SubMtx/SubMtx.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!91 = metadata !{metadata !92, metadata !93, metadata !94, metadata !95, metadata !96, metadata !97, metadata !98, metadata !99, metadata !102, metadata !111}
!92 = metadata !{i32 786445, metadata !90, metadata !89, metadata !"type", i32 45, i64 32, i64 32, i64 0, i32 0, metadata !14} ; [ DW_TAG_member ] [type] [line 45, size 32, align 32, offset 0] [from int]
!93 = metadata !{i32 786445, metadata !90, metadata !89, metadata !"mode", i32 46, i64 32, i64 32, i64 32, i32 0, metadata !14} ; [ DW_TAG_member ] [mode] [line 46, size 32, align 32, offset 32] [from int]
!94 = metadata !{i32 786445, metadata !90, metadata !89, metadata !"rowid", i32 47, i64 32, i64 32, i64 64, i32 0, metadata !14} ; [ DW_TAG_member ] [rowid] [line 47, size 32, align 32, offset 64] [from int]
!95 = metadata !{i32 786445, metadata !90, metadata !89, metadata !"colid", i32 48, i64 32, i64 32, i64 96, i32 0, metadata !14} ; [ DW_TAG_member ] [colid] [line 48, size 32, align 32, offset 96] [from int]
!96 = metadata !{i32 786445, metadata !90, metadata !89, metadata !"nrow", i32 49, i64 32, i64 32, i64 128, i32 0, metadata !14} ; [ DW_TAG_member ] [nrow] [line 49, size 32, align 32, offset 128] [from int]
!97 = metadata !{i32 786445, metadata !90, metadata !89, metadata !"ncol", i32 50, i64 32, i64 32, i64 160, i32 0, metadata !14} ; [ DW_TAG_member ] [ncol] [line 50, size 32, align 32, offset 160] [from int]
!98 = metadata !{i32 786445, metadata !90, metadata !89, metadata !"nent", i32 51, i64 32, i64 32, i64 192, i32 0, metadata !14} ; [ DW_TAG_member ] [nent] [line 51, size 32, align 32, offset 192] [from int]
!99 = metadata !{i32 786445, metadata !90, metadata !89, metadata !"entries", i32 52, i64 64, i64 64, i64 256, i32 0, metadata !100} ; [ DW_TAG_member ] [entries] [line 52, size 64, align 64, offset 256] [from ]
!100 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !101} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from double]
!101 = metadata !{i32 786468, null, null, metadata !"double", i32 0, i64 64, i64 64, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [double] [line 0, size 64, align 64, offset 0, enc DW_ATE_float]
!102 = metadata !{i32 786445, metadata !90, metadata !89, metadata !"wrkDV", i32 53, i64 192, i64 64, i64 320, i32 0, metadata !103} ; [ DW_TAG_member ] [wrkDV] [line 53, size 192, align 64, offset 320] [from DV]
!103 = metadata !{i32 786454, metadata !90, null, metadata !"DV", i32 20, i64 0, i64 0, i64 0, i32 0, metadata !104} ; [ DW_TAG_typedef ] [DV] [line 20, size 0, align 0, offset 0] [from _DV]
!104 = metadata !{i32 786451, metadata !105, null, metadata !"_DV", i32 21, i64 192, i64 64, i32 0, i32 0, null, metadata !106, i32 0, null, null} ; [ DW_TAG_structure_type ] [_DV] [line 21, size 192, align 64, offset 0] [from ]
!105 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/../../DV/DV.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!106 = metadata !{metadata !107, metadata !108, metadata !109, metadata !110}
!107 = metadata !{i32 786445, metadata !105, metadata !104, metadata !"size", i32 22, i64 32, i64 32, i64 0, i32 0, metadata !14} ; [ DW_TAG_member ] [size] [line 22, size 32, align 32, offset 0] [from int]
!108 = metadata !{i32 786445, metadata !105, metadata !104, metadata !"maxsize", i32 23, i64 32, i64 32, i64 32, i32 0, metadata !14} ; [ DW_TAG_member ] [maxsize] [line 23, size 32, align 32, offset 32] [from int]
!109 = metadata !{i32 786445, metadata !105, metadata !104, metadata !"owned", i32 24, i64 32, i64 32, i64 64, i32 0, metadata !14} ; [ DW_TAG_member ] [owned] [line 24, size 32, align 32, offset 64] [from int]
!110 = metadata !{i32 786445, metadata !105, metadata !104, metadata !"vec", i32 25, i64 64, i64 64, i64 128, i32 0, metadata !100} ; [ DW_TAG_member ] [vec] [line 25, size 64, align 64, offset 128] [from ]
!111 = metadata !{i32 786445, metadata !90, metadata !89, metadata !"next", i32 54, i64 64, i64 64, i64 512, i32 0, metadata !112} ; [ DW_TAG_member ] [next] [line 54, size 64, align 64, offset 512] [from ]
!112 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !113} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from SubMtx]
!113 = metadata !{i32 786454, metadata !90, null, metadata !"SubMtx", i32 43, i64 0, i64 0, i64 0, i32 0, metadata !89} ; [ DW_TAG_typedef ] [SubMtx] [line 43, size 0, align 0, offset 0] [from _SubMtx]
!114 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"p_mtxUJJ", i32 117, i64 64, i64 64, i64 896, i32 0, metadata !86} ; [ DW_TAG_member ] [p_mtxUJJ] [line 117, size 64, align 64, offset 896] [from ]
!115 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"p_mtxUJN", i32 118, i64 64, i64 64, i64 960, i32 0, metadata !86} ; [ DW_TAG_member ] [p_mtxUJN] [line 118, size 64, align 64, offset 960] [from ]
!116 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"p_mtxLJJ", i32 119, i64 64, i64 64, i64 1024, i32 0, metadata !86} ; [ DW_TAG_member ] [p_mtxLJJ] [line 119, size 64, align 64, offset 1024] [from ]
!117 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"p_mtxLNJ", i32 120, i64 64, i64 64, i64 1088, i32 0, metadata !86} ; [ DW_TAG_member ] [p_mtxLNJ] [line 120, size 64, align 64, offset 1088] [from ]
!118 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"lowerhash", i32 121, i64 64, i64 64, i64 1152, i32 0, metadata !119} ; [ DW_TAG_member ] [lowerhash] [line 121, size 64, align 64, offset 1152] [from ]
!119 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !120} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from I2Ohash]
!120 = metadata !{i32 786454, metadata !11, null, metadata !"I2Ohash", i32 6, i64 0, i64 0, i64 0, i32 0, metadata !121} ; [ DW_TAG_typedef ] [I2Ohash] [line 6, size 0, align 0, offset 0] [from _I2Ohash]
!121 = metadata !{i32 786451, metadata !122, null, metadata !"_I2Ohash", i32 7, i64 320, i64 64, i32 0, i32 0, null, metadata !123, i32 0, null, null} ; [ DW_TAG_structure_type ] [_I2Ohash] [line 7, size 320, align 64, offset 0] [from ]
!122 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/../../I2Ohash/I2Ohash.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!123 = metadata !{metadata !124, metadata !125, metadata !126, metadata !127, metadata !140, metadata !141}
!124 = metadata !{i32 786445, metadata !122, metadata !121, metadata !"nlist", i32 8, i64 32, i64 32, i64 0, i32 0, metadata !14} ; [ DW_TAG_member ] [nlist] [line 8, size 32, align 32, offset 0] [from int]
!125 = metadata !{i32 786445, metadata !122, metadata !121, metadata !"grow", i32 9, i64 32, i64 32, i64 32, i32 0, metadata !14} ; [ DW_TAG_member ] [grow] [line 9, size 32, align 32, offset 32] [from int]
!126 = metadata !{i32 786445, metadata !122, metadata !121, metadata !"nitem", i32 10, i64 32, i64 32, i64 64, i32 0, metadata !14} ; [ DW_TAG_member ] [nitem] [line 10, size 32, align 32, offset 64] [from int]
!127 = metadata !{i32 786445, metadata !122, metadata !121, metadata !"baseI2OP", i32 11, i64 64, i64 64, i64 128, i32 0, metadata !128} ; [ DW_TAG_member ] [baseI2OP] [line 11, size 64, align 64, offset 128] [from ]
!128 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !129} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from I2OP]
!129 = metadata !{i32 786454, metadata !122, null, metadata !"I2OP", i32 5, i64 0, i64 0, i64 0, i32 0, metadata !130} ; [ DW_TAG_typedef ] [I2OP] [line 5, size 0, align 0, offset 0] [from _I2OP]
!130 = metadata !{i32 786451, metadata !131, null, metadata !"_I2OP", i32 6, i64 192, i64 64, i32 0, i32 0, null, metadata !132, i32 0, null, null} ; [ DW_TAG_structure_type ] [_I2OP] [line 6, size 192, align 64, offset 0] [from ]
!131 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/../../Utilities/I2OP.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!132 = metadata !{metadata !133, metadata !134, metadata !135, metadata !137}
!133 = metadata !{i32 786445, metadata !131, metadata !130, metadata !"value0", i32 7, i64 32, i64 32, i64 0, i32 0, metadata !14} ; [ DW_TAG_member ] [value0] [line 7, size 32, align 32, offset 0] [from int]
!134 = metadata !{i32 786445, metadata !131, metadata !130, metadata !"value1", i32 8, i64 32, i64 32, i64 32, i32 0, metadata !14} ; [ DW_TAG_member ] [value1] [line 8, size 32, align 32, offset 32] [from int]
!135 = metadata !{i32 786445, metadata !131, metadata !130, metadata !"value2", i32 9, i64 64, i64 64, i64 64, i32 0, metadata !136} ; [ DW_TAG_member ] [value2] [line 9, size 64, align 64, offset 64] [from ]
!136 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, null} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!137 = metadata !{i32 786445, metadata !131, metadata !130, metadata !"next", i32 10, i64 64, i64 64, i64 128, i32 0, metadata !138} ; [ DW_TAG_member ] [next] [line 10, size 64, align 64, offset 128] [from ]
!138 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !139} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from I2OP]
!139 = metadata !{i32 786454, metadata !131, null, metadata !"I2OP", i32 5, i64 0, i64 0, i64 0, i32 0, metadata !130} ; [ DW_TAG_typedef ] [I2OP] [line 5, size 0, align 0, offset 0] [from _I2OP]
!140 = metadata !{i32 786445, metadata !122, metadata !121, metadata !"freeI2OP", i32 12, i64 64, i64 64, i64 192, i32 0, metadata !128} ; [ DW_TAG_member ] [freeI2OP] [line 12, size 64, align 64, offset 192] [from ]
!141 = metadata !{i32 786445, metadata !122, metadata !121, metadata !"heads", i32 13, i64 64, i64 64, i64 256, i32 0, metadata !142} ; [ DW_TAG_member ] [heads] [line 13, size 64, align 64, offset 256] [from ]
!142 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !128} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!143 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"upperhash", i32 122, i64 64, i64 64, i64 1216, i32 0, metadata !119} ; [ DW_TAG_member ] [upperhash] [line 122, size 64, align 64, offset 1216] [from ]
!144 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"manager", i32 123, i64 64, i64 64, i64 1280, i32 0, metadata !145} ; [ DW_TAG_member ] [manager] [line 123, size 64, align 64, offset 1280] [from ]
!145 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !146} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from SubMtxManager]
!146 = metadata !{i32 786454, metadata !11, null, metadata !"SubMtxManager", i32 9, i64 0, i64 0, i64 0, i32 0, metadata !147} ; [ DW_TAG_typedef ] [SubMtxManager] [line 9, size 0, align 0, offset 0] [from _SubMtxManager]
!147 = metadata !{i32 786451, metadata !148, null, metadata !"_SubMtxManager", i32 10, i64 448, i64 64, i32 0, i32 0, null, metadata !149, i32 0, null, null} ; [ DW_TAG_structure_type ] [_SubMtxManager] [line 10, size 448, align 64, offset 0] [from ]
!148 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/../../SubMtxManager/SubMtxManager.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!149 = metadata !{metadata !150, metadata !151, metadata !160, metadata !161, metadata !162, metadata !163, metadata !164, metadata !165, metadata !166, metadata !167, metadata !168}
!150 = metadata !{i32 786445, metadata !148, metadata !147, metadata !"head", i32 11, i64 64, i64 64, i64 0, i32 0, metadata !87} ; [ DW_TAG_member ] [head] [line 11, size 64, align 64, offset 0] [from ]
!151 = metadata !{i32 786445, metadata !148, metadata !147, metadata !"lock", i32 12, i64 64, i64 64, i64 64, i32 0, metadata !152} ; [ DW_TAG_member ] [lock] [line 12, size 64, align 64, offset 64] [from ]
!152 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !153} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from Lock]
!153 = metadata !{i32 786454, metadata !148, null, metadata !"Lock", i32 36, i64 0, i64 0, i64 0, i32 0, metadata !154} ; [ DW_TAG_typedef ] [Lock] [line 36, size 0, align 0, offset 0] [from _Lock]
!154 = metadata !{i32 786451, metadata !155, null, metadata !"_Lock", i32 37, i64 128, i64 64, i32 0, i32 0, null, metadata !156, i32 0, null, null} ; [ DW_TAG_structure_type ] [_Lock] [line 37, size 128, align 64, offset 0] [from ]
!155 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/../../Lock/Lock.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!156 = metadata !{metadata !157, metadata !158, metadata !159}
!157 = metadata !{i32 786445, metadata !155, metadata !154, metadata !"mutex", i32 45, i64 64, i64 64, i64 0, i32 0, metadata !136} ; [ DW_TAG_member ] [mutex] [line 45, size 64, align 64, offset 0] [from ]
!158 = metadata !{i32 786445, metadata !155, metadata !154, metadata !"nlocks", i32 47, i64 32, i64 32, i64 64, i32 0, metadata !14} ; [ DW_TAG_member ] [nlocks] [line 47, size 32, align 32, offset 64] [from int]
!159 = metadata !{i32 786445, metadata !155, metadata !154, metadata !"nunlocks", i32 48, i64 32, i64 32, i64 96, i32 0, metadata !14} ; [ DW_TAG_member ] [nunlocks] [line 48, size 32, align 32, offset 96] [from int]
!160 = metadata !{i32 786445, metadata !148, metadata !147, metadata !"mode", i32 13, i64 32, i64 32, i64 128, i32 0, metadata !14} ; [ DW_TAG_member ] [mode] [line 13, size 32, align 32, offset 128] [from int]
!161 = metadata !{i32 786445, metadata !148, metadata !147, metadata !"nactive", i32 14, i64 32, i64 32, i64 160, i32 0, metadata !14} ; [ DW_TAG_member ] [nactive] [line 14, size 32, align 32, offset 160] [from int]
!162 = metadata !{i32 786445, metadata !148, metadata !147, metadata !"nbytesactive", i32 15, i64 32, i64 32, i64 192, i32 0, metadata !14} ; [ DW_TAG_member ] [nbytesactive] [line 15, size 32, align 32, offset 192] [from int]
!163 = metadata !{i32 786445, metadata !148, metadata !147, metadata !"nbytesrequested", i32 16, i64 32, i64 32, i64 224, i32 0, metadata !14} ; [ DW_TAG_member ] [nbytesrequested] [line 16, size 32, align 32, offset 224] [from int]
!164 = metadata !{i32 786445, metadata !148, metadata !147, metadata !"nbytesalloc", i32 17, i64 32, i64 32, i64 256, i32 0, metadata !14} ; [ DW_TAG_member ] [nbytesalloc] [line 17, size 32, align 32, offset 256] [from int]
!165 = metadata !{i32 786445, metadata !148, metadata !147, metadata !"nrequests", i32 18, i64 32, i64 32, i64 288, i32 0, metadata !14} ; [ DW_TAG_member ] [nrequests] [line 18, size 32, align 32, offset 288] [from int]
!166 = metadata !{i32 786445, metadata !148, metadata !147, metadata !"nreleases", i32 19, i64 32, i64 32, i64 320, i32 0, metadata !14} ; [ DW_TAG_member ] [nreleases] [line 19, size 32, align 32, offset 320] [from int]
!167 = metadata !{i32 786445, metadata !148, metadata !147, metadata !"nlocks", i32 20, i64 32, i64 32, i64 352, i32 0, metadata !14} ; [ DW_TAG_member ] [nlocks] [line 20, size 32, align 32, offset 352] [from int]
!168 = metadata !{i32 786445, metadata !148, metadata !147, metadata !"nunlocks", i32 21, i64 32, i64 32, i64 384, i32 0, metadata !14} ; [ DW_TAG_member ] [nunlocks] [line 21, size 32, align 32, offset 384] [from int]
!169 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"lock", i32 124, i64 64, i64 64, i64 1344, i32 0, metadata !152} ; [ DW_TAG_member ] [lock] [line 124, size 64, align 64, offset 1344] [from ]
!170 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"patchinfo", i32 125, i64 64, i64 64, i64 1408, i32 0, metadata !171} ; [ DW_TAG_member ] [patchinfo] [line 125, size 64, align 64, offset 1408] [from ]
!171 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !172} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from PatchAndGoInfo]
!172 = metadata !{i32 786454, metadata !11, null, metadata !"PatchAndGoInfo", i32 31, i64 0, i64 0, i64 0, i32 0, metadata !173} ; [ DW_TAG_typedef ] [PatchAndGoInfo] [line 31, size 0, align 0, offset 0] [from _PatchAndGoInfo]
!173 = metadata !{i32 786451, metadata !174, null, metadata !"_PatchAndGoInfo", i32 32, i64 320, i64 64, i32 0, i32 0, null, metadata !175, i32 0, null, null} ; [ DW_TAG_structure_type ] [_PatchAndGoInfo] [line 32, size 320, align 64, offset 0] [from ]
!174 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/../../PatchAndGoInfo/PatchAndGoInfo.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!175 = metadata !{metadata !176, metadata !177, metadata !178, metadata !179, metadata !180}
!176 = metadata !{i32 786445, metadata !174, metadata !173, metadata !"strategy", i32 33, i64 32, i64 32, i64 0, i32 0, metadata !14} ; [ DW_TAG_member ] [strategy] [line 33, size 32, align 32, offset 0] [from int]
!177 = metadata !{i32 786445, metadata !174, metadata !173, metadata !"toosmall", i32 34, i64 64, i64 64, i64 64, i32 0, metadata !101} ; [ DW_TAG_member ] [toosmall] [line 34, size 64, align 64, offset 64] [from double]
!178 = metadata !{i32 786445, metadata !174, metadata !173, metadata !"fudge", i32 35, i64 64, i64 64, i64 128, i32 0, metadata !101} ; [ DW_TAG_member ] [fudge] [line 35, size 64, align 64, offset 128] [from double]
!179 = metadata !{i32 786445, metadata !174, metadata !173, metadata !"fudgeIV", i32 36, i64 64, i64 64, i64 192, i32 0, metadata !46} ; [ DW_TAG_member ] [fudgeIV] [line 36, size 64, align 64, offset 192] [from ]
!180 = metadata !{i32 786445, metadata !174, metadata !173, metadata !"fudgeDV", i32 37, i64 64, i64 64, i64 256, i32 0, metadata !181} ; [ DW_TAG_member ] [fudgeDV] [line 37, size 64, align 64, offset 256] [from ]
!181 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !103} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from DV]
!182 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"nlocks", i32 126, i64 32, i64 32, i64 1472, i32 0, metadata !14} ; [ DW_TAG_member ] [nlocks] [line 126, size 32, align 32, offset 1472] [from int]
!183 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !184} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from FILE]
!184 = metadata !{i32 786454, metadata !1, null, metadata !"FILE", i32 48, i64 0, i64 0, i64 0, i32 0, metadata !185} ; [ DW_TAG_typedef ] [FILE] [line 48, size 0, align 0, offset 0] [from _IO_FILE]
!185 = metadata !{i32 786451, metadata !186, null, metadata !"_IO_FILE", i32 245, i64 1728, i64 64, i32 0, i32 0, null, metadata !187, i32 0, null, null} ; [ DW_TAG_structure_type ] [_IO_FILE] [line 245, size 1728, align 64, offset 0] [from ]
!186 = metadata !{metadata !"/usr/include/libio.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!187 = metadata !{metadata !188, metadata !189, metadata !192, metadata !193, metadata !194, metadata !195, metadata !196, metadata !197, metadata !198, metadata !199, metadata !200, metadata !201, metadata !202, metadata !210, metadata !211, metadata !212, metadata !213, metadata !216, metadata !218, metadata !220, metadata !224, metadata !225, metadata !227, metadata !228, metadata !229, metadata !230, metadata !231, metadata !234, metadata !235}
!188 = metadata !{i32 786445, metadata !186, metadata !185, metadata !"_flags", i32 246, i64 32, i64 32, i64 0, i32 0, metadata !14} ; [ DW_TAG_member ] [_flags] [line 246, size 32, align 32, offset 0] [from int]
!189 = metadata !{i32 786445, metadata !186, metadata !185, metadata !"_IO_read_ptr", i32 251, i64 64, i64 64, i64 64, i32 0, metadata !190} ; [ DW_TAG_member ] [_IO_read_ptr] [line 251, size 64, align 64, offset 64] [from ]
!190 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !191} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from char]
!191 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!192 = metadata !{i32 786445, metadata !186, metadata !185, metadata !"_IO_read_end", i32 252, i64 64, i64 64, i64 128, i32 0, metadata !190} ; [ DW_TAG_member ] [_IO_read_end] [line 252, size 64, align 64, offset 128] [from ]
!193 = metadata !{i32 786445, metadata !186, metadata !185, metadata !"_IO_read_base", i32 253, i64 64, i64 64, i64 192, i32 0, metadata !190} ; [ DW_TAG_member ] [_IO_read_base] [line 253, size 64, align 64, offset 192] [from ]
!194 = metadata !{i32 786445, metadata !186, metadata !185, metadata !"_IO_write_base", i32 254, i64 64, i64 64, i64 256, i32 0, metadata !190} ; [ DW_TAG_member ] [_IO_write_base] [line 254, size 64, align 64, offset 256] [from ]
!195 = metadata !{i32 786445, metadata !186, metadata !185, metadata !"_IO_write_ptr", i32 255, i64 64, i64 64, i64 320, i32 0, metadata !190} ; [ DW_TAG_member ] [_IO_write_ptr] [line 255, size 64, align 64, offset 320] [from ]
!196 = metadata !{i32 786445, metadata !186, metadata !185, metadata !"_IO_write_end", i32 256, i64 64, i64 64, i64 384, i32 0, metadata !190} ; [ DW_TAG_member ] [_IO_write_end] [line 256, size 64, align 64, offset 384] [from ]
!197 = metadata !{i32 786445, metadata !186, metadata !185, metadata !"_IO_buf_base", i32 257, i64 64, i64 64, i64 448, i32 0, metadata !190} ; [ DW_TAG_member ] [_IO_buf_base] [line 257, size 64, align 64, offset 448] [from ]
!198 = metadata !{i32 786445, metadata !186, metadata !185, metadata !"_IO_buf_end", i32 258, i64 64, i64 64, i64 512, i32 0, metadata !190} ; [ DW_TAG_member ] [_IO_buf_end] [line 258, size 64, align 64, offset 512] [from ]
!199 = metadata !{i32 786445, metadata !186, metadata !185, metadata !"_IO_save_base", i32 260, i64 64, i64 64, i64 576, i32 0, metadata !190} ; [ DW_TAG_member ] [_IO_save_base] [line 260, size 64, align 64, offset 576] [from ]
!200 = metadata !{i32 786445, metadata !186, metadata !185, metadata !"_IO_backup_base", i32 261, i64 64, i64 64, i64 640, i32 0, metadata !190} ; [ DW_TAG_member ] [_IO_backup_base] [line 261, size 64, align 64, offset 640] [from ]
!201 = metadata !{i32 786445, metadata !186, metadata !185, metadata !"_IO_save_end", i32 262, i64 64, i64 64, i64 704, i32 0, metadata !190} ; [ DW_TAG_member ] [_IO_save_end] [line 262, size 64, align 64, offset 704] [from ]
!202 = metadata !{i32 786445, metadata !186, metadata !185, metadata !"_markers", i32 264, i64 64, i64 64, i64 768, i32 0, metadata !203} ; [ DW_TAG_member ] [_markers] [line 264, size 64, align 64, offset 768] [from ]
!203 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !204} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from _IO_marker]
!204 = metadata !{i32 786451, metadata !186, null, metadata !"_IO_marker", i32 160, i64 192, i64 64, i32 0, i32 0, null, metadata !205, i32 0, null, null} ; [ DW_TAG_structure_type ] [_IO_marker] [line 160, size 192, align 64, offset 0] [from ]
!205 = metadata !{metadata !206, metadata !207, metadata !209}
!206 = metadata !{i32 786445, metadata !186, metadata !204, metadata !"_next", i32 161, i64 64, i64 64, i64 0, i32 0, metadata !203} ; [ DW_TAG_member ] [_next] [line 161, size 64, align 64, offset 0] [from ]
!207 = metadata !{i32 786445, metadata !186, metadata !204, metadata !"_sbuf", i32 162, i64 64, i64 64, i64 64, i32 0, metadata !208} ; [ DW_TAG_member ] [_sbuf] [line 162, size 64, align 64, offset 64] [from ]
!208 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !185} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from _IO_FILE]
!209 = metadata !{i32 786445, metadata !186, metadata !204, metadata !"_pos", i32 166, i64 32, i64 32, i64 128, i32 0, metadata !14} ; [ DW_TAG_member ] [_pos] [line 166, size 32, align 32, offset 128] [from int]
!210 = metadata !{i32 786445, metadata !186, metadata !185, metadata !"_chain", i32 266, i64 64, i64 64, i64 832, i32 0, metadata !208} ; [ DW_TAG_member ] [_chain] [line 266, size 64, align 64, offset 832] [from ]
!211 = metadata !{i32 786445, metadata !186, metadata !185, metadata !"_fileno", i32 268, i64 32, i64 32, i64 896, i32 0, metadata !14} ; [ DW_TAG_member ] [_fileno] [line 268, size 32, align 32, offset 896] [from int]
!212 = metadata !{i32 786445, metadata !186, metadata !185, metadata !"_flags2", i32 272, i64 32, i64 32, i64 928, i32 0, metadata !14} ; [ DW_TAG_member ] [_flags2] [line 272, size 32, align 32, offset 928] [from int]
!213 = metadata !{i32 786445, metadata !186, metadata !185, metadata !"_old_offset", i32 274, i64 64, i64 64, i64 960, i32 0, metadata !214} ; [ DW_TAG_member ] [_old_offset] [line 274, size 64, align 64, offset 960] [from __off_t]
!214 = metadata !{i32 786454, metadata !186, null, metadata !"__off_t", i32 131, i64 0, i64 0, i64 0, i32 0, metadata !215} ; [ DW_TAG_typedef ] [__off_t] [line 131, size 0, align 0, offset 0] [from long int]
!215 = metadata !{i32 786468, null, null, metadata !"long int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [long int] [line 0, size 64, align 64, offset 0, enc DW_ATE_signed]
!216 = metadata !{i32 786445, metadata !186, metadata !185, metadata !"_cur_column", i32 278, i64 16, i64 16, i64 1024, i32 0, metadata !217} ; [ DW_TAG_member ] [_cur_column] [line 278, size 16, align 16, offset 1024] [from unsigned short]
!217 = metadata !{i32 786468, null, null, metadata !"unsigned short", i32 0, i64 16, i64 16, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned short] [line 0, size 16, align 16, offset 0, enc DW_ATE_unsigned]
!218 = metadata !{i32 786445, metadata !186, metadata !185, metadata !"_vtable_offset", i32 279, i64 8, i64 8, i64 1040, i32 0, metadata !219} ; [ DW_TAG_member ] [_vtable_offset] [line 279, size 8, align 8, offset 1040] [from signed char]
!219 = metadata !{i32 786468, null, null, metadata !"signed char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [signed char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!220 = metadata !{i32 786445, metadata !186, metadata !185, metadata !"_shortbuf", i32 280, i64 8, i64 8, i64 1048, i32 0, metadata !221} ; [ DW_TAG_member ] [_shortbuf] [line 280, size 8, align 8, offset 1048] [from ]
!221 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 8, i64 8, i32 0, i32 0, metadata !191, metadata !222, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 8, align 8, offset 0] [from char]
!222 = metadata !{metadata !223}
!223 = metadata !{i32 786465, i64 0, i64 1}       ; [ DW_TAG_subrange_type ] [0, 0]
!224 = metadata !{i32 786445, metadata !186, metadata !185, metadata !"_lock", i32 284, i64 64, i64 64, i64 1088, i32 0, metadata !136} ; [ DW_TAG_member ] [_lock] [line 284, size 64, align 64, offset 1088] [from ]
!225 = metadata !{i32 786445, metadata !186, metadata !185, metadata !"_offset", i32 293, i64 64, i64 64, i64 1152, i32 0, metadata !226} ; [ DW_TAG_member ] [_offset] [line 293, size 64, align 64, offset 1152] [from __off64_t]
!226 = metadata !{i32 786454, metadata !186, null, metadata !"__off64_t", i32 132, i64 0, i64 0, i64 0, i32 0, metadata !215} ; [ DW_TAG_typedef ] [__off64_t] [line 132, size 0, align 0, offset 0] [from long int]
!227 = metadata !{i32 786445, metadata !186, metadata !185, metadata !"__pad1", i32 302, i64 64, i64 64, i64 1216, i32 0, metadata !136} ; [ DW_TAG_member ] [__pad1] [line 302, size 64, align 64, offset 1216] [from ]
!228 = metadata !{i32 786445, metadata !186, metadata !185, metadata !"__pad2", i32 303, i64 64, i64 64, i64 1280, i32 0, metadata !136} ; [ DW_TAG_member ] [__pad2] [line 303, size 64, align 64, offset 1280] [from ]
!229 = metadata !{i32 786445, metadata !186, metadata !185, metadata !"__pad3", i32 304, i64 64, i64 64, i64 1344, i32 0, metadata !136} ; [ DW_TAG_member ] [__pad3] [line 304, size 64, align 64, offset 1344] [from ]
!230 = metadata !{i32 786445, metadata !186, metadata !185, metadata !"__pad4", i32 305, i64 64, i64 64, i64 1408, i32 0, metadata !136} ; [ DW_TAG_member ] [__pad4] [line 305, size 64, align 64, offset 1408] [from ]
!231 = metadata !{i32 786445, metadata !186, metadata !185, metadata !"__pad5", i32 306, i64 64, i64 64, i64 1472, i32 0, metadata !232} ; [ DW_TAG_member ] [__pad5] [line 306, size 64, align 64, offset 1472] [from size_t]
!232 = metadata !{i32 786454, metadata !186, null, metadata !"size_t", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !233} ; [ DW_TAG_typedef ] [size_t] [line 42, size 0, align 0, offset 0] [from long unsigned int]
!233 = metadata !{i32 786468, null, null, metadata !"long unsigned int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [long unsigned int] [line 0, size 64, align 64, offset 0, enc DW_ATE_unsigned]
!234 = metadata !{i32 786445, metadata !186, metadata !185, metadata !"_mode", i32 308, i64 32, i64 32, i64 1536, i32 0, metadata !14} ; [ DW_TAG_member ] [_mode] [line 308, size 32, align 32, offset 1536] [from int]
!235 = metadata !{i32 786445, metadata !186, metadata !185, metadata !"_unused2", i32 310, i64 160, i64 8, i64 1568, i32 0, metadata !236} ; [ DW_TAG_member ] [_unused2] [line 310, size 160, align 8, offset 1568] [from ]
!236 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 160, i64 8, i32 0, i32 0, metadata !191, metadata !237, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 160, align 8, offset 0] [from char]
!237 = metadata !{metadata !238}
!238 = metadata !{i32 786465, i64 0, i64 20}      ; [ DW_TAG_subrange_type ] [0, 19]
!239 = metadata !{metadata !240, metadata !241, metadata !242, metadata !243, metadata !244, metadata !245, metadata !246, metadata !247, metadata !248}
!240 = metadata !{i32 786689, metadata !4, metadata !"frontmtx", metadata !5, i32 16777237, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [frontmtx] [line 21]
!241 = metadata !{i32 786689, metadata !4, metadata !"msglvl", metadata !5, i32 33554454, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [msglvl] [line 22]
!242 = metadata !{i32 786689, metadata !4, metadata !"msgFile", metadata !5, i32 50331671, metadata !183, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [msgFile] [line 23]
!243 = metadata !{i32 786688, metadata !4, metadata !"J", metadata !5, i32 25, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [J] [line 25]
!244 = metadata !{i32 786688, metadata !4, metadata !"K", metadata !5, i32 25, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [K] [line 25]
!245 = metadata !{i32 786688, metadata !4, metadata !"neqns", metadata !5, i32 25, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [neqns] [line 25]
!246 = metadata !{i32 786688, metadata !4, metadata !"map", metadata !5, i32 26, metadata !33, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [map] [line 26]
!247 = metadata !{i32 786688, metadata !4, metadata !"par", metadata !5, i32 26, metadata !33, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [par] [line 26]
!248 = metadata !{i32 786688, metadata !4, metadata !"tree", metadata !5, i32 27, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [tree] [line 27]
!249 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"FrontMtx_permuteLowerAdj", metadata !"FrontMtx_permuteLowerAdj", metadata !"", i32 65, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._FrontMtx*, i32, %struct._IO_FILE*)* @FrontMtx_permuteLowerAdj, null, null, metadata !250, i32 69} ; [ DW_TAG_subprogram ] [line 65] [def] [scope 69] [FrontMtx_permuteLowerAdj]
!250 = metadata !{metadata !251, metadata !252, metadata !253, metadata !254, metadata !255, metadata !256, metadata !257, metadata !258, metadata !259}
!251 = metadata !{i32 786689, metadata !249, metadata !"frontmtx", metadata !5, i32 16777282, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [frontmtx] [line 66]
!252 = metadata !{i32 786689, metadata !249, metadata !"msglvl", metadata !5, i32 33554499, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [msglvl] [line 67]
!253 = metadata !{i32 786689, metadata !249, metadata !"msgFile", metadata !5, i32 50331716, metadata !183, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [msgFile] [line 68]
!254 = metadata !{i32 786688, metadata !249, metadata !"J", metadata !5, i32 70, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [J] [line 70]
!255 = metadata !{i32 786688, metadata !249, metadata !"K", metadata !5, i32 70, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [K] [line 70]
!256 = metadata !{i32 786688, metadata !249, metadata !"neqns", metadata !5, i32 70, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [neqns] [line 70]
!257 = metadata !{i32 786688, metadata !249, metadata !"map", metadata !5, i32 71, metadata !33, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [map] [line 71]
!258 = metadata !{i32 786688, metadata !249, metadata !"par", metadata !5, i32 71, metadata !33, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [par] [line 71]
!259 = metadata !{i32 786688, metadata !249, metadata !"tree", metadata !5, i32 72, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [tree] [line 72]
!260 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"FrontMtx_permuteUpperMatrices", metadata !"FrontMtx_permuteUpperMatrices", metadata !"", i32 112, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._FrontMtx*, i32, %struct._IO_FILE*)* @FrontMtx_permuteUpperMatrices, null, null, metadata !261, i32 116} ; [ DW_TAG_subprogram ] [line 112] [def] [scope 116] [FrontMtx_permuteUpperMatrices]
!261 = metadata !{metadata !262, metadata !263, metadata !264, metadata !265, metadata !266, metadata !267, metadata !268, metadata !269, metadata !270, metadata !271, metadata !272, metadata !273, metadata !274, metadata !275, metadata !276, metadata !277}
!262 = metadata !{i32 786689, metadata !260, metadata !"frontmtx", metadata !5, i32 16777329, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [frontmtx] [line 113]
!263 = metadata !{i32 786689, metadata !260, metadata !"msglvl", metadata !5, i32 33554546, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [msglvl] [line 114]
!264 = metadata !{i32 786689, metadata !260, metadata !"msgFile", metadata !5, i32 50331763, metadata !183, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [msgFile] [line 115]
!265 = metadata !{i32 786688, metadata !260, metadata !"mtxUJ", metadata !5, i32 117, metadata !87, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [mtxUJ] [line 117]
!266 = metadata !{i32 786688, metadata !260, metadata !"ii", metadata !5, i32 118, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ii] [line 118]
!267 = metadata !{i32 786688, metadata !260, metadata !"jj", metadata !5, i32 118, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [jj] [line 118]
!268 = metadata !{i32 786688, metadata !260, metadata !"J", metadata !5, i32 118, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [J] [line 118]
!269 = metadata !{i32 786688, metadata !260, metadata !"mustdo", metadata !5, i32 118, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [mustdo] [line 118]
!270 = metadata !{i32 786688, metadata !260, metadata !"neqns", metadata !5, i32 118, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [neqns] [line 118]
!271 = metadata !{i32 786688, metadata !260, metadata !"nfront", metadata !5, i32 118, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nfront] [line 118]
!272 = metadata !{i32 786688, metadata !260, metadata !"ncolJ", metadata !5, i32 118, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ncolJ] [line 118]
!273 = metadata !{i32 786688, metadata !260, metadata !"ncolUJ", metadata !5, i32 118, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ncolUJ] [line 118]
!274 = metadata !{i32 786688, metadata !260, metadata !"nJ", metadata !5, i32 118, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nJ] [line 118]
!275 = metadata !{i32 786688, metadata !260, metadata !"map", metadata !5, i32 119, metadata !33, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [map] [line 119]
!276 = metadata !{i32 786688, metadata !260, metadata !"colindJ", metadata !5, i32 119, metadata !33, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [colindJ] [line 119]
!277 = metadata !{i32 786688, metadata !260, metadata !"colindUJ", metadata !5, i32 119, metadata !33, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [colindUJ] [line 119]
!278 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"FrontMtx_permuteLowerMatrices", metadata !"FrontMtx_permuteLowerMatrices", metadata !"", i32 175, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._FrontMtx*, i32, %struct._IO_FILE*)* @FrontMtx_permuteLowerMatrices, null, null, metadata !279, i32 179} ; [ DW_TAG_subprogram ] [line 175] [def] [scope 179] [FrontMtx_permuteLowerMatrices]
!279 = metadata !{metadata !280, metadata !281, metadata !282, metadata !283, metadata !284, metadata !285, metadata !286, metadata !287, metadata !288, metadata !289, metadata !290, metadata !291, metadata !292, metadata !293, metadata !294, metadata !295}
!280 = metadata !{i32 786689, metadata !278, metadata !"frontmtx", metadata !5, i32 16777392, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [frontmtx] [line 176]
!281 = metadata !{i32 786689, metadata !278, metadata !"msglvl", metadata !5, i32 33554609, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [msglvl] [line 177]
!282 = metadata !{i32 786689, metadata !278, metadata !"msgFile", metadata !5, i32 50331826, metadata !183, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [msgFile] [line 178]
!283 = metadata !{i32 786688, metadata !278, metadata !"mtxLJ", metadata !5, i32 180, metadata !87, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [mtxLJ] [line 180]
!284 = metadata !{i32 786688, metadata !278, metadata !"ii", metadata !5, i32 181, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ii] [line 181]
!285 = metadata !{i32 786688, metadata !278, metadata !"jj", metadata !5, i32 181, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [jj] [line 181]
!286 = metadata !{i32 786688, metadata !278, metadata !"J", metadata !5, i32 181, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [J] [line 181]
!287 = metadata !{i32 786688, metadata !278, metadata !"mustdo", metadata !5, i32 181, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [mustdo] [line 181]
!288 = metadata !{i32 786688, metadata !278, metadata !"neqns", metadata !5, i32 181, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [neqns] [line 181]
!289 = metadata !{i32 786688, metadata !278, metadata !"nfront", metadata !5, i32 181, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nfront] [line 181]
!290 = metadata !{i32 786688, metadata !278, metadata !"nJ", metadata !5, i32 181, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nJ] [line 181]
!291 = metadata !{i32 786688, metadata !278, metadata !"nrowJ", metadata !5, i32 181, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nrowJ] [line 181]
!292 = metadata !{i32 786688, metadata !278, metadata !"nrowUJ", metadata !5, i32 181, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nrowUJ] [line 181]
!293 = metadata !{i32 786688, metadata !278, metadata !"map", metadata !5, i32 182, metadata !33, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [map] [line 182]
!294 = metadata !{i32 786688, metadata !278, metadata !"rowindJ", metadata !5, i32 182, metadata !33, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rowindJ] [line 182]
!295 = metadata !{i32 786688, metadata !278, metadata !"rowindUJ", metadata !5, i32 182, metadata !33, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rowindUJ] [line 182]
!296 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"FrontMtx_reorderRowIndices", metadata !"FrontMtx_reorderRowIndices", metadata !"", i32 310, metadata !297, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !299, i32 317} ; [ DW_TAG_subprogram ] [line 310] [local] [def] [scope 317] [FrontMtx_reorderRowIndices]
!297 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !298, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!298 = metadata !{null, metadata !8, metadata !14, metadata !14, metadata !33, metadata !14, metadata !183}
!299 = metadata !{metadata !300, metadata !301, metadata !302, metadata !303, metadata !304, metadata !305, metadata !306, metadata !307, metadata !308, metadata !309, metadata !310, metadata !311}
!300 = metadata !{i32 786689, metadata !296, metadata !"frontmtx", metadata !5, i32 16777527, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [frontmtx] [line 311]
!301 = metadata !{i32 786689, metadata !296, metadata !"J", metadata !5, i32 33554744, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [J] [line 312]
!302 = metadata !{i32 786689, metadata !296, metadata !"K", metadata !5, i32 50331961, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [K] [line 313]
!303 = metadata !{i32 786689, metadata !296, metadata !"map", metadata !5, i32 67109178, metadata !33, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [map] [line 314]
!304 = metadata !{i32 786689, metadata !296, metadata !"msglvl", metadata !5, i32 83886395, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [msglvl] [line 315]
!305 = metadata !{i32 786689, metadata !296, metadata !"msgFile", metadata !5, i32 100663612, metadata !183, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [msgFile] [line 316]
!306 = metadata !{i32 786688, metadata !296, metadata !"ii", metadata !5, i32 318, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ii] [line 318]
!307 = metadata !{i32 786688, metadata !296, metadata !"nrowJ", metadata !5, i32 318, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nrowJ] [line 318]
!308 = metadata !{i32 786688, metadata !296, metadata !"nrowK", metadata !5, i32 318, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nrowK] [line 318]
!309 = metadata !{i32 786688, metadata !296, metadata !"nJ", metadata !5, i32 318, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nJ] [line 318]
!310 = metadata !{i32 786688, metadata !296, metadata !"rowindJ", metadata !5, i32 319, metadata !33, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rowindJ] [line 319]
!311 = metadata !{i32 786688, metadata !296, metadata !"rowindK", metadata !5, i32 319, metadata !33, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rowindK] [line 319]
!312 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"FrontMtx_reorderColumnIndices", metadata !"FrontMtx_reorderColumnIndices", metadata !"", i32 236, metadata !297, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !313, i32 243} ; [ DW_TAG_subprogram ] [line 236] [local] [def] [scope 243] [FrontMtx_reorderColumnIndices]
!313 = metadata !{metadata !314, metadata !315, metadata !316, metadata !317, metadata !318, metadata !319, metadata !320, metadata !321, metadata !322, metadata !323, metadata !324, metadata !325}
!314 = metadata !{i32 786689, metadata !312, metadata !"frontmtx", metadata !5, i32 16777453, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [frontmtx] [line 237]
!315 = metadata !{i32 786689, metadata !312, metadata !"J", metadata !5, i32 33554670, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [J] [line 238]
!316 = metadata !{i32 786689, metadata !312, metadata !"K", metadata !5, i32 50331887, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [K] [line 239]
!317 = metadata !{i32 786689, metadata !312, metadata !"map", metadata !5, i32 67109104, metadata !33, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [map] [line 240]
!318 = metadata !{i32 786689, metadata !312, metadata !"msglvl", metadata !5, i32 83886321, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [msglvl] [line 241]
!319 = metadata !{i32 786689, metadata !312, metadata !"msgFile", metadata !5, i32 100663538, metadata !183, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [msgFile] [line 242]
!320 = metadata !{i32 786688, metadata !312, metadata !"ii", metadata !5, i32 244, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ii] [line 244]
!321 = metadata !{i32 786688, metadata !312, metadata !"ncolJ", metadata !5, i32 244, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ncolJ] [line 244]
!322 = metadata !{i32 786688, metadata !312, metadata !"ncolK", metadata !5, i32 244, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ncolK] [line 244]
!323 = metadata !{i32 786688, metadata !312, metadata !"nJ", metadata !5, i32 244, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nJ] [line 244]
!324 = metadata !{i32 786688, metadata !312, metadata !"colindJ", metadata !5, i32 245, metadata !33, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [colindJ] [line 245]
!325 = metadata !{i32 786688, metadata !312, metadata !"colindK", metadata !5, i32 245, metadata !33, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [colindK] [line 245]
!326 = metadata !{i32 21, i32 0, metadata !4, null}
!327 = metadata !{i32 22, i32 0, metadata !4, null}
!328 = metadata !{i32 23, i32 0, metadata !4, null}
!329 = metadata !{i32 33, i32 0, metadata !4, null}
!330 = metadata !{i32 34, i32 0, metadata !331, null}
!331 = metadata !{i32 786443, metadata !1, metadata !4, i32 33, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_permute.c]
!332 = metadata !{metadata !"any pointer", metadata !333}
!333 = metadata !{metadata !"omnipotent char", metadata !334}
!334 = metadata !{metadata !"Simple C/C++ TBAA"}
!335 = metadata !{i32 37, i32 0, metadata !331, null}
!336 = metadata !{i32 39, i32 0, metadata !4, null}
!337 = metadata !{i32 40, i32 0, metadata !4, null}
!338 = metadata !{i32 41, i32 0, metadata !4, null}
!339 = metadata !{i32 42, i32 0, metadata !4, null}
!340 = metadata !{i32 43, i32 0, metadata !341, null}
!341 = metadata !{i32 786443, metadata !1, metadata !4, i32 43, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_permute.c]
!342 = metadata !{i32 237, i32 0, metadata !312, metadata !343}
!343 = metadata !{i32 47, i32 0, metadata !344, null}
!344 = metadata !{i32 786443, metadata !1, metadata !345, i32 46, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_permute.c]
!345 = metadata !{i32 786443, metadata !1, metadata !341, i32 45, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_permute.c]
!346 = metadata !{i32 247, i32 0, metadata !312, metadata !343}
!347 = metadata !{i32 46, i32 0, metadata !345, null}
!348 = metadata !{metadata !"int", metadata !333}
!349 = metadata !{i32 786689, metadata !312, metadata !"frontmtx", metadata !5, i32 16777453, metadata !8, i32 0, metadata !343} ; [ DW_TAG_arg_variable ] [frontmtx] [line 237]
!350 = metadata !{i32 786689, metadata !312, metadata !"J", metadata !5, i32 33554670, metadata !14, i32 0, metadata !343} ; [ DW_TAG_arg_variable ] [J] [line 238]
!351 = metadata !{i32 238, i32 0, metadata !312, metadata !343}
!352 = metadata !{i32 786689, metadata !312, metadata !"K", metadata !5, i32 50331887, metadata !14, i32 0, metadata !343} ; [ DW_TAG_arg_variable ] [K] [line 239]
!353 = metadata !{i32 239, i32 0, metadata !312, metadata !343}
!354 = metadata !{i32 786689, metadata !312, metadata !"map", metadata !5, i32 67109104, metadata !33, i32 0, metadata !343} ; [ DW_TAG_arg_variable ] [map] [line 240]
!355 = metadata !{i32 240, i32 0, metadata !312, metadata !343}
!356 = metadata !{i32 786689, metadata !312, metadata !"msglvl", metadata !5, i32 83886321, metadata !14, i32 0, metadata !343} ; [ DW_TAG_arg_variable ] [msglvl] [line 241]
!357 = metadata !{i32 241, i32 0, metadata !312, metadata !343}
!358 = metadata !{i32 786689, metadata !312, metadata !"msgFile", metadata !5, i32 100663538, metadata !183, i32 0, metadata !343} ; [ DW_TAG_arg_variable ] [msgFile] [line 242]
!359 = metadata !{i32 242, i32 0, metadata !312, metadata !343}
!360 = metadata !{i32 244, i32 0, metadata !312, metadata !343}
!361 = metadata !{i32 245, i32 0, metadata !312, metadata !343}
!362 = metadata !{i32 248, i32 0, metadata !363, metadata !343}
!363 = metadata !{i32 786443, metadata !1, metadata !312, i32 247, i32 0, i32 50} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_permute.c]
!364 = metadata !{i32 249, i32 0, metadata !363, metadata !343}
!365 = metadata !{i32 250, i32 0, metadata !363, metadata !343}
!366 = metadata !{i32 251, i32 0, metadata !312, metadata !343}
!367 = metadata !{i32 786688, metadata !312, metadata !"nJ", metadata !5, i32 244, metadata !14, i32 0, metadata !343} ; [ DW_TAG_auto_variable ] [nJ] [line 244]
!368 = metadata !{i32 252, i32 0, metadata !312, metadata !343}
!369 = metadata !{i32 253, i32 0, metadata !312, metadata !343}
!370 = metadata !{i32 786688, metadata !312, metadata !"ncolJ", metadata !5, i32 244, metadata !14, i32 0, metadata !343} ; [ DW_TAG_auto_variable ] [ncolJ] [line 244]
!371 = metadata !{i32 254, i32 0, metadata !372, metadata !343}
!372 = metadata !{i32 786443, metadata !1, metadata !312, i32 253, i32 0, i32 51} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_permute.c]
!373 = metadata !{i32 255, i32 0, metadata !372, metadata !343}
!374 = metadata !{i32 256, i32 0, metadata !372, metadata !343}
!375 = metadata !{i32 257, i32 0, metadata !312, metadata !343}
!376 = metadata !{i32 260, i32 0, metadata !312, metadata !343}
!377 = metadata !{i32 261, i32 0, metadata !312, metadata !343}
!378 = metadata !{i32 786688, metadata !312, metadata !"ncolK", metadata !5, i32 244, metadata !14, i32 0, metadata !343} ; [ DW_TAG_auto_variable ] [ncolK] [line 244]
!379 = metadata !{i32 262, i32 0, metadata !380, metadata !343}
!380 = metadata !{i32 786443, metadata !1, metadata !312, i32 261, i32 0, i32 53} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_permute.c]
!381 = metadata !{i32 263, i32 0, metadata !380, metadata !343}
!382 = metadata !{i32 264, i32 0, metadata !380, metadata !343}
!383 = metadata !{i32 265, i32 0, metadata !312, metadata !343}
!384 = metadata !{i32 266, i32 0, metadata !385, metadata !343}
!385 = metadata !{i32 786443, metadata !1, metadata !312, i32 265, i32 0, i32 54} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_permute.c]
!386 = metadata !{i32 269, i32 0, metadata !385, metadata !343}
!387 = metadata !{i32 271, i32 0, metadata !312, metadata !343}
!388 = metadata !{i32 272, i32 0, metadata !389, metadata !343}
!389 = metadata !{i32 786443, metadata !1, metadata !312, i32 271, i32 0, i32 55} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_permute.c]
!390 = metadata !{i32 273, i32 0, metadata !389, metadata !343}
!391 = metadata !{i32 786688, metadata !312, metadata !"colindJ", metadata !5, i32 245, metadata !33, i32 0, metadata !343} ; [ DW_TAG_auto_variable ] [colindJ] [line 245]
!392 = metadata !{i32 274, i32 0, metadata !389, metadata !343}
!393 = metadata !{i32 275, i32 0, metadata !389, metadata !343}
!394 = metadata !{i32 786688, metadata !312, metadata !"colindK", metadata !5, i32 245, metadata !33, i32 0, metadata !343} ; [ DW_TAG_auto_variable ] [colindK] [line 245]
!395 = metadata !{i32 276, i32 0, metadata !389, metadata !343}
!396 = metadata !{i32 278, i32 0, metadata !397, metadata !343}
!397 = metadata !{i32 786443, metadata !1, metadata !312, i32 278, i32 0, i32 56} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_permute.c]
!398 = metadata !{i32 277, i32 0, metadata !389, metadata !343}
!399 = metadata !{i32 279, i32 0, metadata !400, metadata !343}
!400 = metadata !{i32 786443, metadata !1, metadata !397, i32 278, i32 0, i32 57} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_permute.c]
!401 = metadata !{i32 281, i32 0, metadata !402, metadata !343}
!402 = metadata !{i32 786443, metadata !1, metadata !312, i32 281, i32 0, i32 58} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_permute.c]
!403 = metadata !{i32 282, i32 0, metadata !404, metadata !343}
!404 = metadata !{i32 786443, metadata !1, metadata !402, i32 281, i32 0, i32 59} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_permute.c]
!405 = metadata !{i32 284, i32 0, metadata !312, metadata !343}
!406 = metadata !{i32 285, i32 0, metadata !407, metadata !343}
!407 = metadata !{i32 786443, metadata !1, metadata !312, i32 284, i32 0, i32 60} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_permute.c]
!408 = metadata !{i32 286, i32 0, metadata !407, metadata !343}
!409 = metadata !{i32 287, i32 0, metadata !407, metadata !343}
!410 = metadata !{i32 289, i32 0, metadata !312, metadata !343}
!411 = metadata !{i32 288, i32 0, metadata !407, metadata !343}
!412 = metadata !{i32 786688, metadata !312, metadata !"ii", metadata !5, i32 244, metadata !14, i32 0, metadata !343} ; [ DW_TAG_auto_variable ] [ii] [line 244]
!413 = metadata !{i32 290, i32 0, metadata !414, metadata !343}
!414 = metadata !{i32 786443, metadata !1, metadata !312, i32 290, i32 0, i32 61} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_permute.c]
!415 = metadata !{i32 291, i32 0, metadata !416, metadata !343}
!416 = metadata !{i32 786443, metadata !1, metadata !414, i32 290, i32 0, i32 62} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_permute.c]
!417 = metadata !{i32 293, i32 0, metadata !312, metadata !343}
!418 = metadata !{i32 294, i32 0, metadata !419, metadata !343}
!419 = metadata !{i32 786443, metadata !1, metadata !312, i32 293, i32 0, i32 63} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_permute.c]
!420 = metadata !{i32 295, i32 0, metadata !419, metadata !343}
!421 = metadata !{i32 296, i32 0, metadata !419, metadata !343}
!422 = metadata !{i32 297, i32 0, metadata !419, metadata !343}
!423 = metadata !{i32 45, i32 0, metadata !341, null}
!424 = metadata !{i32 51, i32 0, metadata !4, null}
!425 = metadata !{i32 53, i32 0, metadata !4, null}
!426 = metadata !{i32 66, i32 0, metadata !249, null}
!427 = metadata !{i32 67, i32 0, metadata !249, null}
!428 = metadata !{i32 68, i32 0, metadata !249, null}
!429 = metadata !{i32 78, i32 0, metadata !249, null}
!430 = metadata !{i32 79, i32 0, metadata !431, null}
!431 = metadata !{i32 786443, metadata !1, metadata !249, i32 78, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_permute.c]
!432 = metadata !{i32 82, i32 0, metadata !431, null}
!433 = metadata !{i32 84, i32 0, metadata !249, null}
!434 = metadata !{i32 85, i32 0, metadata !249, null}
!435 = metadata !{i32 86, i32 0, metadata !249, null}
!436 = metadata !{i32 87, i32 0, metadata !249, null}
!437 = metadata !{i32 88, i32 0, metadata !438, null}
!438 = metadata !{i32 786443, metadata !1, metadata !249, i32 88, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_permute.c]
!439 = metadata !{i32 311, i32 0, metadata !296, metadata !440}
!440 = metadata !{i32 92, i32 0, metadata !441, null}
!441 = metadata !{i32 786443, metadata !1, metadata !442, i32 91, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_permute.c]
!442 = metadata !{i32 786443, metadata !1, metadata !438, i32 90, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_permute.c]
!443 = metadata !{i32 321, i32 0, metadata !296, metadata !440}
!444 = metadata !{i32 91, i32 0, metadata !442, null}
!445 = metadata !{i32 786689, metadata !296, metadata !"frontmtx", metadata !5, i32 16777527, metadata !8, i32 0, metadata !440} ; [ DW_TAG_arg_variable ] [frontmtx] [line 311]
!446 = metadata !{i32 786689, metadata !296, metadata !"J", metadata !5, i32 33554744, metadata !14, i32 0, metadata !440} ; [ DW_TAG_arg_variable ] [J] [line 312]
!447 = metadata !{i32 312, i32 0, metadata !296, metadata !440}
!448 = metadata !{i32 786689, metadata !296, metadata !"K", metadata !5, i32 50331961, metadata !14, i32 0, metadata !440} ; [ DW_TAG_arg_variable ] [K] [line 313]
!449 = metadata !{i32 313, i32 0, metadata !296, metadata !440}
!450 = metadata !{i32 786689, metadata !296, metadata !"map", metadata !5, i32 67109178, metadata !33, i32 0, metadata !440} ; [ DW_TAG_arg_variable ] [map] [line 314]
!451 = metadata !{i32 314, i32 0, metadata !296, metadata !440}
!452 = metadata !{i32 786689, metadata !296, metadata !"msglvl", metadata !5, i32 83886395, metadata !14, i32 0, metadata !440} ; [ DW_TAG_arg_variable ] [msglvl] [line 315]
!453 = metadata !{i32 315, i32 0, metadata !296, metadata !440}
!454 = metadata !{i32 786689, metadata !296, metadata !"msgFile", metadata !5, i32 100663612, metadata !183, i32 0, metadata !440} ; [ DW_TAG_arg_variable ] [msgFile] [line 316]
!455 = metadata !{i32 316, i32 0, metadata !296, metadata !440}
!456 = metadata !{i32 318, i32 0, metadata !296, metadata !440}
!457 = metadata !{i32 319, i32 0, metadata !296, metadata !440}
!458 = metadata !{i32 322, i32 0, metadata !459, metadata !440}
!459 = metadata !{i32 786443, metadata !1, metadata !296, i32 321, i32 0, i32 36} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_permute.c]
!460 = metadata !{i32 323, i32 0, metadata !459, metadata !440}
!461 = metadata !{i32 324, i32 0, metadata !459, metadata !440}
!462 = metadata !{i32 325, i32 0, metadata !296, metadata !440}
!463 = metadata !{i32 786688, metadata !296, metadata !"nJ", metadata !5, i32 318, metadata !14, i32 0, metadata !440} ; [ DW_TAG_auto_variable ] [nJ] [line 318]
!464 = metadata !{i32 326, i32 0, metadata !296, metadata !440}
!465 = metadata !{i32 327, i32 0, metadata !296, metadata !440}
!466 = metadata !{i32 786688, metadata !296, metadata !"nrowJ", metadata !5, i32 318, metadata !14, i32 0, metadata !440} ; [ DW_TAG_auto_variable ] [nrowJ] [line 318]
!467 = metadata !{i32 328, i32 0, metadata !468, metadata !440}
!468 = metadata !{i32 786443, metadata !1, metadata !296, i32 327, i32 0, i32 37} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_permute.c]
!469 = metadata !{i32 329, i32 0, metadata !468, metadata !440}
!470 = metadata !{i32 330, i32 0, metadata !468, metadata !440}
!471 = metadata !{i32 331, i32 0, metadata !296, metadata !440}
!472 = metadata !{i32 334, i32 0, metadata !296, metadata !440}
!473 = metadata !{i32 335, i32 0, metadata !296, metadata !440}
!474 = metadata !{i32 786688, metadata !296, metadata !"nrowK", metadata !5, i32 318, metadata !14, i32 0, metadata !440} ; [ DW_TAG_auto_variable ] [nrowK] [line 318]
!475 = metadata !{i32 336, i32 0, metadata !476, metadata !440}
!476 = metadata !{i32 786443, metadata !1, metadata !296, i32 335, i32 0, i32 39} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_permute.c]
!477 = metadata !{i32 337, i32 0, metadata !476, metadata !440}
!478 = metadata !{i32 338, i32 0, metadata !476, metadata !440}
!479 = metadata !{i32 339, i32 0, metadata !296, metadata !440}
!480 = metadata !{i32 340, i32 0, metadata !481, metadata !440}
!481 = metadata !{i32 786443, metadata !1, metadata !296, i32 339, i32 0, i32 40} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_permute.c]
!482 = metadata !{i32 343, i32 0, metadata !481, metadata !440}
!483 = metadata !{i32 345, i32 0, metadata !296, metadata !440}
!484 = metadata !{i32 346, i32 0, metadata !485, metadata !440}
!485 = metadata !{i32 786443, metadata !1, metadata !296, i32 345, i32 0, i32 41} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_permute.c]
!486 = metadata !{i32 347, i32 0, metadata !485, metadata !440}
!487 = metadata !{i32 786688, metadata !296, metadata !"rowindJ", metadata !5, i32 319, metadata !33, i32 0, metadata !440} ; [ DW_TAG_auto_variable ] [rowindJ] [line 319]
!488 = metadata !{i32 348, i32 0, metadata !485, metadata !440}
!489 = metadata !{i32 349, i32 0, metadata !485, metadata !440}
!490 = metadata !{i32 786688, metadata !296, metadata !"rowindK", metadata !5, i32 319, metadata !33, i32 0, metadata !440} ; [ DW_TAG_auto_variable ] [rowindK] [line 319]
!491 = metadata !{i32 350, i32 0, metadata !485, metadata !440}
!492 = metadata !{i32 352, i32 0, metadata !493, metadata !440}
!493 = metadata !{i32 786443, metadata !1, metadata !296, i32 352, i32 0, i32 42} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_permute.c]
!494 = metadata !{i32 351, i32 0, metadata !485, metadata !440}
!495 = metadata !{i32 353, i32 0, metadata !496, metadata !440}
!496 = metadata !{i32 786443, metadata !1, metadata !493, i32 352, i32 0, i32 43} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_permute.c]
!497 = metadata !{i32 355, i32 0, metadata !498, metadata !440}
!498 = metadata !{i32 786443, metadata !1, metadata !296, i32 355, i32 0, i32 44} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_permute.c]
!499 = metadata !{i32 356, i32 0, metadata !500, metadata !440}
!500 = metadata !{i32 786443, metadata !1, metadata !498, i32 355, i32 0, i32 45} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_permute.c]
!501 = metadata !{i32 358, i32 0, metadata !296, metadata !440}
!502 = metadata !{i32 359, i32 0, metadata !503, metadata !440}
!503 = metadata !{i32 786443, metadata !1, metadata !296, i32 358, i32 0, i32 46} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_permute.c]
!504 = metadata !{i32 360, i32 0, metadata !503, metadata !440}
!505 = metadata !{i32 361, i32 0, metadata !503, metadata !440}
!506 = metadata !{i32 363, i32 0, metadata !296, metadata !440}
!507 = metadata !{i32 362, i32 0, metadata !503, metadata !440}
!508 = metadata !{i32 786688, metadata !296, metadata !"ii", metadata !5, i32 318, metadata !14, i32 0, metadata !440} ; [ DW_TAG_auto_variable ] [ii] [line 318]
!509 = metadata !{i32 364, i32 0, metadata !510, metadata !440}
!510 = metadata !{i32 786443, metadata !1, metadata !296, i32 364, i32 0, i32 47} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_permute.c]
!511 = metadata !{i32 365, i32 0, metadata !512, metadata !440}
!512 = metadata !{i32 786443, metadata !1, metadata !510, i32 364, i32 0, i32 48} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_permute.c]
!513 = metadata !{i32 367, i32 0, metadata !296, metadata !440}
!514 = metadata !{i32 368, i32 0, metadata !515, metadata !440}
!515 = metadata !{i32 786443, metadata !1, metadata !296, i32 367, i32 0, i32 49} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_permute.c]
!516 = metadata !{i32 369, i32 0, metadata !515, metadata !440}
!517 = metadata !{i32 370, i32 0, metadata !515, metadata !440}
!518 = metadata !{i32 371, i32 0, metadata !515, metadata !440}
!519 = metadata !{i32 90, i32 0, metadata !438, null}
!520 = metadata !{i32 96, i32 0, metadata !249, null}
!521 = metadata !{i32 98, i32 0, metadata !249, null}
!522 = metadata !{i32 113, i32 0, metadata !260, null}
!523 = metadata !{i32 114, i32 0, metadata !260, null}
!524 = metadata !{i32 115, i32 0, metadata !260, null}
!525 = metadata !{i32 118, i32 0, metadata !260, null}
!526 = metadata !{i32 119, i32 0, metadata !260, null}
!527 = metadata !{i32 125, i32 0, metadata !260, null}
!528 = metadata !{i32 126, i32 0, metadata !529, null}
!529 = metadata !{i32 786443, metadata !1, metadata !260, i32 125, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_permute.c]
!530 = metadata !{i32 129, i32 0, metadata !529, null}
!531 = metadata !{i32 131, i32 0, metadata !260, null}
!532 = metadata !{i32 132, i32 0, metadata !260, null}
!533 = metadata !{i32 133, i32 0, metadata !260, null}
!534 = metadata !{i32 134, i32 0, metadata !535, null}
!535 = metadata !{i32 786443, metadata !1, metadata !260, i32 134, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_permute.c]
!536 = metadata !{i32 135, i32 0, metadata !537, null}
!537 = metadata !{i32 786443, metadata !1, metadata !535, i32 134, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_permute.c]
!538 = metadata !{i32 136, i32 0, metadata !537, null}
!539 = metadata !{i32 137, i32 0, metadata !540, null}
!540 = metadata !{i32 786443, metadata !1, metadata !537, i32 136, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_permute.c]
!541 = metadata !{i32 138, i32 0, metadata !540, null}
!542 = metadata !{i32 139, i32 0, metadata !540, null}
!543 = metadata !{i32 140, i32 0, metadata !544, null}
!544 = metadata !{i32 786443, metadata !1, metadata !540, i32 140, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_permute.c]
!545 = metadata !{i32 141, i32 0, metadata !546, null}
!546 = metadata !{i32 786443, metadata !1, metadata !544, i32 140, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_permute.c]
!547 = metadata !{i32 146, i32 0, metadata !548, null}
!548 = metadata !{i32 786443, metadata !1, metadata !549, i32 146, i32 0, i32 16} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_permute.c]
!549 = metadata !{i32 786443, metadata !1, metadata !540, i32 145, i32 0, i32 15} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_permute.c]
!550 = metadata !{i32 147, i32 0, metadata !551, null}
!551 = metadata !{i32 786443, metadata !1, metadata !548, i32 146, i32 0, i32 17} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_permute.c]
!552 = metadata !{i32 149, i32 0, metadata !553, null}
!553 = metadata !{i32 786443, metadata !1, metadata !549, i32 149, i32 0, i32 18} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_permute.c]
!554 = metadata !{i32 150, i32 0, metadata !555, null}
!555 = metadata !{i32 786443, metadata !1, metadata !553, i32 149, i32 0, i32 19} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_permute.c]
!556 = metadata !{i32 152, i32 0, metadata !549, null}
!557 = metadata !{i32 153, i32 0, metadata !558, null}
!558 = metadata !{i32 786443, metadata !1, metadata !549, i32 153, i32 0, i32 20} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_permute.c]
!559 = metadata !{i32 154, i32 0, metadata !560, null}
!560 = metadata !{i32 786443, metadata !1, metadata !558, i32 153, i32 0, i32 21} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_permute.c]
!561 = metadata !{i32 159, i32 0, metadata !260, null}
!562 = metadata !{i32 161, i32 0, metadata !260, null}
!563 = metadata !{i32 176, i32 0, metadata !278, null}
!564 = metadata !{i32 177, i32 0, metadata !278, null}
!565 = metadata !{i32 178, i32 0, metadata !278, null}
!566 = metadata !{i32 181, i32 0, metadata !278, null}
!567 = metadata !{i32 182, i32 0, metadata !278, null}
!568 = metadata !{i32 188, i32 0, metadata !278, null}
!569 = metadata !{i32 189, i32 0, metadata !570, null}
!570 = metadata !{i32 786443, metadata !1, metadata !278, i32 188, i32 0, i32 22} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_permute.c]
!571 = metadata !{i32 192, i32 0, metadata !570, null}
!572 = metadata !{i32 194, i32 0, metadata !278, null}
!573 = metadata !{i32 195, i32 0, metadata !278, null}
!574 = metadata !{i32 196, i32 0, metadata !278, null}
!575 = metadata !{i32 197, i32 0, metadata !576, null}
!576 = metadata !{i32 786443, metadata !1, metadata !278, i32 197, i32 0, i32 23} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_permute.c]
!577 = metadata !{i32 198, i32 0, metadata !578, null}
!578 = metadata !{i32 786443, metadata !1, metadata !576, i32 197, i32 0, i32 24} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_permute.c]
!579 = metadata !{i32 199, i32 0, metadata !578, null}
!580 = metadata !{i32 200, i32 0, metadata !581, null}
!581 = metadata !{i32 786443, metadata !1, metadata !578, i32 199, i32 0, i32 25} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_permute.c]
!582 = metadata !{i32 201, i32 0, metadata !581, null}
!583 = metadata !{i32 202, i32 0, metadata !581, null}
!584 = metadata !{i32 203, i32 0, metadata !585, null}
!585 = metadata !{i32 786443, metadata !1, metadata !581, i32 203, i32 0, i32 26} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_permute.c]
!586 = metadata !{i32 204, i32 0, metadata !587, null}
!587 = metadata !{i32 786443, metadata !1, metadata !585, i32 203, i32 0, i32 27} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_permute.c]
!588 = metadata !{i32 209, i32 0, metadata !589, null}
!589 = metadata !{i32 786443, metadata !1, metadata !590, i32 209, i32 0, i32 30} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_permute.c]
!590 = metadata !{i32 786443, metadata !1, metadata !581, i32 208, i32 0, i32 29} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_permute.c]
!591 = metadata !{i32 210, i32 0, metadata !592, null}
!592 = metadata !{i32 786443, metadata !1, metadata !589, i32 209, i32 0, i32 31} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_permute.c]
!593 = metadata !{i32 212, i32 0, metadata !594, null}
!594 = metadata !{i32 786443, metadata !1, metadata !590, i32 212, i32 0, i32 32} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_permute.c]
!595 = metadata !{i32 213, i32 0, metadata !596, null}
!596 = metadata !{i32 786443, metadata !1, metadata !594, i32 212, i32 0, i32 33} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_permute.c]
!597 = metadata !{i32 215, i32 0, metadata !590, null}
!598 = metadata !{i32 216, i32 0, metadata !599, null}
!599 = metadata !{i32 786443, metadata !1, metadata !590, i32 216, i32 0, i32 34} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_permute.c]
!600 = metadata !{i32 217, i32 0, metadata !601, null}
!601 = metadata !{i32 786443, metadata !1, metadata !599, i32 216, i32 0, i32 35} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_permute.c]
!602 = metadata !{i32 222, i32 0, metadata !278, null}
!603 = metadata !{i32 224, i32 0, metadata !278, null}
