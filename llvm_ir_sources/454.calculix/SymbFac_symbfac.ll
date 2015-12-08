; ModuleID = '../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SymbFac/src/SymbFac_symbfac.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct._IVL = type { i32, i32, i32, i32, i32*, i32**, i32, %struct._Ichunk* }
%struct._Ichunk = type { i32, i32, i32*, %struct._Ichunk* }
%struct._ETree = type { i32, i32, %struct._Tree*, %struct._IV*, %struct._IV*, %struct._IV* }
%struct._Tree = type { i32, i32, i32*, i32*, i32* }
%struct._IV = type { i32, i32, i32, i32* }
%struct._Graph = type { i32, i32, i32, i32, i32, i32, %struct._IVL*, i32*, %struct._IVL* }
%struct._InpMtx = type { i32, i32, i32, i32, i32, double, %struct._IV, %struct._IV, %struct._DV, i32, i32, %struct._IV, %struct._IV, %struct._IV }
%struct._DV = type { i32, i32, i32, double* }
%struct._Pencil = type { i32, i32, %struct._InpMtx*, %struct._InpMtx*, [2 x double] }

@stderr = external global %struct._IO_FILE*
@.str = private unnamed_addr constant [54 x i8] c"\0A fatal error in SymbFac_fromGraph(%p,%p)\0A bad input\0A\00", align 1
@.str1 = private unnamed_addr constant [59 x i8] c"\0A fatal error in Symbfac_initFromInpMtx(%p,%p)\0A bad input\0A\00", align 1
@.str2 = private unnamed_addr constant [96 x i8] c"\0A fatal error in Symbfac_initFromInpMtx()\0A bad input, coordType %d, must be INPMTX_BY_CHEVRONS\0A\00", align 1
@.str3 = private unnamed_addr constant [97 x i8] c"\0A fatal error in Symbfac_initFromInpMtx()\0A bad input, storageMode %d, must be INPMTX_BY_VECTORS\0A\00", align 1
@.str4 = private unnamed_addr constant [59 x i8] c"\0A fatal error in SymbFac_initFromPencil(%p,%p)\0A bad input\0A\00", align 1
@.str5 = private unnamed_addr constant [96 x i8] c"\0A fatal error in Symbfac_initFromPencil()\0A bad input, coordType %d, must be INPMTX_BY_CHEVRONS\0A\00", align 1
@.str6 = private unnamed_addr constant [97 x i8] c"\0A fatal error in Symbfac_initFromPencil()\0A bad input, storageMode %d, must be INPMTX_BY_VECTORS\0A\00", align 1

; Function Attrs: nounwind optsize uwtable
define %struct._IVL* @SymbFac_initFromGraph(%struct._ETree* %etree, %struct._Graph* %graph) #0 {
entry:
  %size = alloca i32, align 4
  %adj = alloca i32*, align 8
  %cmp = icmp eq %struct._ETree* %etree, null
  br i1 %cmp, label %if.then.thread, label %lor.lhs.false

if.then.thread:                                   ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call319 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([54 x i8]* @.str, i64 0, i64 0), %struct._ETree* null, %struct._Graph* %graph) #4
  br label %if.end

lor.lhs.false:                                    ; preds = %entry
  %nfront1 = getelementptr inbounds %struct._ETree* %etree, i64 0, i32 0
  %1 = load i32* %nfront1, align 4, !tbaa !3
  %cmp2 = icmp slt i32 %1, 1
  br i1 %cmp2, label %if.then.thread320, label %lor.lhs.false3

if.then.thread320:                                ; preds = %lor.lhs.false
  %2 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call321 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([54 x i8]* @.str, i64 0, i64 0), %struct._ETree* %etree, %struct._Graph* %graph) #4
  br label %if.then12

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %nvtx4 = getelementptr inbounds %struct._ETree* %etree, i64 0, i32 1
  %3 = load i32* %nvtx4, align 4, !tbaa !3
  %cmp5 = icmp slt i32 %3, 1
  %cmp7 = icmp eq %struct._Graph* %graph, null
  %or.cond = or i1 %cmp5, %cmp7
  br i1 %or.cond, label %if.then, label %lor.lhs.false8

lor.lhs.false8:                                   ; preds = %lor.lhs.false3
  %nvtx9 = getelementptr inbounds %struct._Graph* %graph, i64 0, i32 1
  %4 = load i32* %nvtx9, align 4, !tbaa !3
  %cmp10 = icmp eq i32 %4, %3
  br i1 %cmp10, label %if.end18, label %if.then

if.then:                                          ; preds = %lor.lhs.false8, %lor.lhs.false3
  %5 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([54 x i8]* @.str, i64 0, i64 0), %struct._ETree* %etree, %struct._Graph* %graph) #4
  br label %if.then12

if.then12:                                        ; preds = %if.then, %if.then.thread320
  %6 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call13 = call i32 @ETree_writeStats(%struct._ETree* %etree, %struct._IO_FILE* %6) #4
  br label %if.end

if.end:                                           ; preds = %if.then.thread, %if.then12
  %cmp14 = icmp eq %struct._Graph* %graph, null
  br i1 %cmp14, label %if.end17, label %if.then15

if.then15:                                        ; preds = %if.end
  %7 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call16 = call i32 @Graph_writeStats(%struct._Graph* %graph, %struct._IO_FILE* %7) #4
  br label %if.end17

if.end17:                                         ; preds = %if.end, %if.then15
  call void @exit(i32 -1) #5
  unreachable

if.end18:                                         ; preds = %lor.lhs.false8
  %vwghts19 = getelementptr inbounds %struct._Graph* %graph, i64 0, i32 7
  %8 = load i32** %vwghts19, align 8, !tbaa !0
  %call20 = call %struct._IVL* @IVL_new() #4
  call void @IVL_init1(%struct._IVL* %call20, i32 1, i32 %1) #4
  %call21 = call i32* @IVinit(i32 %3, i32 -1) #4
  %call22 = call i32* @IVinit(i32 %3, i32 -1) #4
  %call23 = call i32* @IVinit(i32 %3, i32 -1) #4
  %call24 = call i32* @IVinit(i32 %1, i32 -1) #4
  %call25 = call i32* @IVinit(i32 %3, i32 -1) #4
  %nodwghtsIV = getelementptr inbounds %struct._ETree* %etree, i64 0, i32 3
  %9 = load %struct._IV** %nodwghtsIV, align 8, !tbaa !0
  %call26 = call i32* @IV_entries(%struct._IV* %9) #4
  %bndwghtsIV = getelementptr inbounds %struct._ETree* %etree, i64 0, i32 4
  %10 = load %struct._IV** %bndwghtsIV, align 8, !tbaa !0
  %call27 = call i32* @IV_entries(%struct._IV* %10) #4
  %vtxToFrontIV = getelementptr inbounds %struct._ETree* %etree, i64 0, i32 5
  %11 = load %struct._IV** %vtxToFrontIV, align 8, !tbaa !0
  %call28 = call i32* @IV_entries(%struct._IV* %11) #4
  %cmp29360 = icmp sgt i32 %3, 0
  br i1 %cmp29360, label %for.body, label %for.end

for.body:                                         ; preds = %if.end18, %for.body
  %indvars.iv377 = phi i64 [ %indvars.iv.next378, %for.body ], [ 0, %if.end18 ]
  %arrayidx = getelementptr inbounds i32* %call28, i64 %indvars.iv377
  %12 = load i32* %arrayidx, align 4, !tbaa !3
  %idxprom30 = sext i32 %12 to i64
  %arrayidx31 = getelementptr inbounds i32* %call24, i64 %idxprom30
  %13 = load i32* %arrayidx31, align 4, !tbaa !3
  %arrayidx33 = getelementptr inbounds i32* %call25, i64 %indvars.iv377
  store i32 %13, i32* %arrayidx33, align 4, !tbaa !3
  %14 = trunc i64 %indvars.iv377 to i32
  store i32 %14, i32* %arrayidx31, align 4, !tbaa !3
  %indvars.iv.next378 = add i64 %indvars.iv377, 1
  %lftr.wideiv379 = trunc i64 %indvars.iv.next378 to i32
  %exitcond380 = icmp eq i32 %lftr.wideiv379, %3
  br i1 %exitcond380, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %if.end18
  %tree36 = getelementptr inbounds %struct._ETree* %etree, i64 0, i32 2
  %15 = load %struct._Tree** %tree36, align 8, !tbaa !0
  %fch37 = getelementptr inbounds %struct._Tree* %15, i64 0, i32 3
  %16 = load i32** %fch37, align 8, !tbaa !0
  %sib38 = getelementptr inbounds %struct._Tree* %15, i64 0, i32 4
  %17 = load i32** %sib38, align 8, !tbaa !0
  %call39 = call i32 @Tree_postOTfirst(%struct._Tree* %15) #4
  %cmp41358 = icmp eq i32 %call39, -1
  br i1 %cmp41358, label %for.end183, label %for.body42.lr.ph

for.body42.lr.ph:                                 ; preds = %for.end
  %cmp124 = icmp eq i32* %8, null
  br label %for.body42

for.body42:                                       ; preds = %for.body42.lr.ph, %if.end180
  %J.0359 = phi i32 [ %call39, %for.body42.lr.ph ], [ %call182, %if.end180 ]
  %idxprom43 = sext i32 %J.0359 to i64
  %arrayidx44 = getelementptr inbounds i32* %call24, i64 %idxprom43
  %v.1322 = load i32* %arrayidx44, align 4
  %cmp46323 = icmp eq i32 %v.1322, -1
  br i1 %cmp46323, label %for.end59, label %for.body47

for.body47:                                       ; preds = %for.body42, %cond.end
  %indvars.iv = phi i64 [ %indvars.iv.next, %cond.end ], [ 0, %for.body42 ]
  %v.1326 = phi i32 [ %v.1, %cond.end ], [ %v.1322, %for.body42 ]
  %count.0325 = phi i32 [ %inc50, %cond.end ], [ 0, %for.body42 ]
  %intweight.0324 = phi i32 [ %add, %cond.end ], [ 0, %for.body42 ]
  %idxprom48 = sext i32 %v.1326 to i64
  %arrayidx49 = getelementptr inbounds i32* %call21, i64 %idxprom48
  store i32 %J.0359, i32* %arrayidx49, align 4, !tbaa !3
  %indvars.iv.next = add i64 %indvars.iv, 1
  %inc50 = add nsw i32 %count.0325, 1
  %arrayidx52 = getelementptr inbounds i32* %call23, i64 %indvars.iv
  store i32 %v.1326, i32* %arrayidx52, align 4, !tbaa !3
  br i1 %cmp124, label %cond.end, label %cond.true

cond.true:                                        ; preds = %for.body47
  %arrayidx55 = getelementptr inbounds i32* %8, i64 %idxprom48
  %18 = load i32* %arrayidx55, align 4, !tbaa !3
  br label %cond.end

cond.end:                                         ; preds = %for.body47, %cond.true
  %cond = phi i32 [ %18, %cond.true ], [ 1, %for.body47 ]
  %add = add nsw i32 %cond, %intweight.0324
  %arrayidx58 = getelementptr inbounds i32* %call25, i64 %idxprom48
  %v.1 = load i32* %arrayidx58, align 4
  %cmp46 = icmp eq i32 %v.1, -1
  br i1 %cmp46, label %for.end59, label %for.body47

for.end59:                                        ; preds = %cond.end, %for.body42
  %count.0.lcssa = phi i32 [ 0, %for.body42 ], [ %inc50, %cond.end ]
  %intweight.0.lcssa = phi i32 [ 0, %for.body42 ], [ %add, %cond.end ]
  %arrayidx61 = getelementptr inbounds i32* %16, i64 %idxprom43
  %I.0329 = load i32* %arrayidx61, align 4
  %cmp63330 = icmp eq i32 %I.0329, -1
  br i1 %cmp63330, label %for.cond102.loopexit, label %for.body64

for.body64:                                       ; preds = %for.end59, %for.inc95
  %I.0333 = phi i32 [ %I.0, %for.inc95 ], [ %I.0329, %for.end59 ]
  %bndweight.0332 = phi i32 [ %bndweight.1.ph, %for.inc95 ], [ 0, %for.end59 ]
  %count.1331 = phi i32 [ %count.2.ph, %for.inc95 ], [ %count.0.lcssa, %for.end59 ]
  call void @IVL_listAndSize(%struct._IVL* %call20, i32 %I.0333, i32* %size, i32** %adj) #4
  %19 = load i32* %size, align 4, !tbaa !3
  %20 = load i32** %adj, align 8, !tbaa !0
  %21 = sext i32 %count.1331 to i64
  br label %for.cond65.outer

for.cond65.outer:                                 ; preds = %cond.end88, %for.body64
  %indvars.iv365 = phi i64 [ %indvars.iv.next366, %cond.end88 ], [ %21, %for.body64 ]
  %ii.0.in.ph = phi i32 [ %ii.0, %cond.end88 ], [ %19, %for.body64 ]
  %count.2.ph = phi i32 [ %inc80, %cond.end88 ], [ %count.1331, %for.body64 ]
  %bndweight.1.ph = phi i32 [ %add90, %cond.end88 ], [ %bndweight.0332, %for.body64 ]
  %22 = sext i32 %ii.0.in.ph to i64
  br label %for.cond65

for.cond65:                                       ; preds = %for.cond65.outer, %if.then73
  %indvars.iv363 = phi i64 [ %22, %for.cond65.outer ], [ %indvars.iv.next364, %if.then73 ]
  %ii.0.in = phi i32 [ %ii.0.in.ph, %for.cond65.outer ], [ %ii.0, %if.then73 ]
  %indvars.iv.next364 = add i64 %indvars.iv363, -1
  %ii.0 = add nsw i32 %ii.0.in, -1
  %23 = trunc i64 %indvars.iv363 to i32
  %cmp66 = icmp sgt i32 %23, 0
  br i1 %cmp66, label %for.body67, label %for.inc95

for.body67:                                       ; preds = %for.cond65
  %arrayidx69 = getelementptr inbounds i32* %20, i64 %indvars.iv.next364
  %24 = load i32* %arrayidx69, align 4, !tbaa !3
  %idxprom70 = sext i32 %24 to i64
  %arrayidx71 = getelementptr inbounds i32* %call28, i64 %idxprom70
  %25 = load i32* %arrayidx71, align 4, !tbaa !3
  %cmp72 = icmp sgt i32 %25, %J.0359
  br i1 %cmp72, label %if.then73, label %for.inc95

if.then73:                                        ; preds = %for.body67
  %arrayidx75 = getelementptr inbounds i32* %call21, i64 %idxprom70
  %26 = load i32* %arrayidx75, align 4, !tbaa !3
  %cmp76 = icmp eq i32 %26, %J.0359
  br i1 %cmp76, label %for.cond65, label %if.then77

if.then77:                                        ; preds = %if.then73
  store i32 %J.0359, i32* %arrayidx75, align 4, !tbaa !3
  %indvars.iv.next366 = add i64 %indvars.iv365, 1
  %inc80 = add nsw i32 %count.2.ph, 1
  %arrayidx82 = getelementptr inbounds i32* %call23, i64 %indvars.iv365
  store i32 %24, i32* %arrayidx82, align 4, !tbaa !3
  br i1 %cmp124, label %cond.end88, label %cond.true84

cond.true84:                                      ; preds = %if.then77
  %arrayidx86 = getelementptr inbounds i32* %8, i64 %idxprom70
  %27 = load i32* %arrayidx86, align 4, !tbaa !3
  br label %cond.end88

cond.end88:                                       ; preds = %if.then77, %cond.true84
  %cond89 = phi i32 [ %27, %cond.true84 ], [ 1, %if.then77 ]
  %add90 = add nsw i32 %cond89, %bndweight.1.ph
  br label %for.cond65.outer

for.inc95:                                        ; preds = %for.cond65, %for.body67
  %idxprom96 = sext i32 %I.0333 to i64
  %arrayidx97 = getelementptr inbounds i32* %17, i64 %idxprom96
  %I.0 = load i32* %arrayidx97, align 4
  %cmp63 = icmp eq i32 %I.0, -1
  br i1 %cmp63, label %for.cond102.loopexit, label %for.body64

for.cond102.loopexit:                             ; preds = %for.inc95, %for.end59
  %bndweight.0.lcssa = phi i32 [ 0, %for.end59 ], [ %bndweight.1.ph, %for.inc95 ]
  %count.1.lcssa = phi i32 [ %count.0.lcssa, %for.end59 ], [ %count.2.ph, %for.inc95 ]
  %v.2342 = load i32* %arrayidx44, align 4
  %cmp103343 = icmp eq i32 %v.2342, -1
  br i1 %cmp103343, label %for.end139, label %for.body104

for.body104:                                      ; preds = %for.cond102.loopexit, %for.inc136
  %v.2346 = phi i32 [ %v.2, %for.inc136 ], [ %v.2342, %for.cond102.loopexit ]
  %bndweight.3345 = phi i32 [ %bndweight.4.lcssa, %for.inc136 ], [ %bndweight.0.lcssa, %for.cond102.loopexit ]
  %count.4344 = phi i32 [ %count.5.lcssa, %for.inc136 ], [ %count.1.lcssa, %for.cond102.loopexit ]
  call void @Graph_adjAndSize(%struct._Graph* %graph, i32 %v.2346, i32* %size, i32** %adj) #4
  %28 = load i32* %size, align 4, !tbaa !3
  %cmp106336 = icmp sgt i32 %28, 0
  br i1 %cmp106336, label %for.body107.lr.ph, label %for.inc136

for.body107.lr.ph:                                ; preds = %for.body104
  %29 = load i32** %adj, align 8, !tbaa !0
  br label %for.body107

for.body107:                                      ; preds = %for.body107.lr.ph, %for.inc133
  %30 = phi i32 [ %28, %for.body107.lr.ph ], [ %35, %for.inc133 ]
  %indvars.iv367 = phi i64 [ 0, %for.body107.lr.ph ], [ %indvars.iv.next368, %for.inc133 ]
  %bndweight.4339 = phi i32 [ %bndweight.3345, %for.body107.lr.ph ], [ %bndweight.5, %for.inc133 ]
  %count.5338 = phi i32 [ %count.4344, %for.body107.lr.ph ], [ %count.6, %for.inc133 ]
  %arrayidx109 = getelementptr inbounds i32* %29, i64 %indvars.iv367
  %31 = load i32* %arrayidx109, align 4, !tbaa !3
  %cmp110 = icmp slt i32 %31, %3
  br i1 %cmp110, label %land.lhs.true, label %for.inc133

land.lhs.true:                                    ; preds = %for.body107
  %idxprom111 = sext i32 %31 to i64
  %arrayidx112 = getelementptr inbounds i32* %call28, i64 %idxprom111
  %32 = load i32* %arrayidx112, align 4, !tbaa !3
  %cmp113 = icmp sgt i32 %32, %J.0359
  br i1 %cmp113, label %land.lhs.true114, label %for.inc133

land.lhs.true114:                                 ; preds = %land.lhs.true
  %arrayidx116 = getelementptr inbounds i32* %call21, i64 %idxprom111
  %33 = load i32* %arrayidx116, align 4, !tbaa !3
  %cmp117 = icmp eq i32 %33, %J.0359
  br i1 %cmp117, label %for.inc133, label %if.then118

if.then118:                                       ; preds = %land.lhs.true114
  store i32 %J.0359, i32* %arrayidx116, align 4, !tbaa !3
  %inc121 = add nsw i32 %count.5338, 1
  %idxprom122 = sext i32 %count.5338 to i64
  %arrayidx123 = getelementptr inbounds i32* %call23, i64 %idxprom122
  store i32 %31, i32* %arrayidx123, align 4, !tbaa !3
  br i1 %cmp124, label %cond.end129, label %cond.true125

cond.true125:                                     ; preds = %if.then118
  %arrayidx127 = getelementptr inbounds i32* %8, i64 %idxprom111
  %34 = load i32* %arrayidx127, align 4, !tbaa !3
  br label %cond.end129

cond.end129:                                      ; preds = %if.then118, %cond.true125
  %cond130 = phi i32 [ %34, %cond.true125 ], [ 1, %if.then118 ]
  %add131 = add nsw i32 %cond130, %bndweight.4339
  %.pre = load i32* %size, align 4, !tbaa !3
  br label %for.inc133

for.inc133:                                       ; preds = %land.lhs.true114, %for.body107, %land.lhs.true, %cond.end129
  %35 = phi i32 [ %.pre, %cond.end129 ], [ %30, %land.lhs.true114 ], [ %30, %land.lhs.true ], [ %30, %for.body107 ]
  %count.6 = phi i32 [ %inc121, %cond.end129 ], [ %count.5338, %land.lhs.true114 ], [ %count.5338, %land.lhs.true ], [ %count.5338, %for.body107 ]
  %bndweight.5 = phi i32 [ %add131, %cond.end129 ], [ %bndweight.4339, %land.lhs.true114 ], [ %bndweight.4339, %land.lhs.true ], [ %bndweight.4339, %for.body107 ]
  %indvars.iv.next368 = add i64 %indvars.iv367, 1
  %36 = trunc i64 %indvars.iv.next368 to i32
  %cmp106 = icmp slt i32 %36, %35
  br i1 %cmp106, label %for.body107, label %for.inc136

for.inc136:                                       ; preds = %for.inc133, %for.body104
  %bndweight.4.lcssa = phi i32 [ %bndweight.3345, %for.body104 ], [ %bndweight.5, %for.inc133 ]
  %count.5.lcssa = phi i32 [ %count.4344, %for.body104 ], [ %count.6, %for.inc133 ]
  %idxprom137 = sext i32 %v.2346 to i64
  %arrayidx138 = getelementptr inbounds i32* %call25, i64 %idxprom137
  %v.2 = load i32* %arrayidx138, align 4
  %cmp103 = icmp eq i32 %v.2, -1
  br i1 %cmp103, label %for.end139, label %for.body104

for.end139:                                       ; preds = %for.inc136, %for.cond102.loopexit
  %bndweight.3.lcssa = phi i32 [ %bndweight.0.lcssa, %for.cond102.loopexit ], [ %bndweight.4.lcssa, %for.inc136 ]
  %count.4.lcssa = phi i32 [ %count.1.lcssa, %for.cond102.loopexit ], [ %count.5.lcssa, %for.inc136 ]
  %arrayidx141 = getelementptr inbounds i32* %call26, i64 %idxprom43
  store i32 %intweight.0.lcssa, i32* %arrayidx141, align 4, !tbaa !3
  %arrayidx143 = getelementptr inbounds i32* %call27, i64 %idxprom43
  store i32 %bndweight.3.lcssa, i32* %arrayidx143, align 4, !tbaa !3
  %cmp145349 = icmp sgt i32 %count.4.lcssa, 0
  br i1 %cmp145349, label %for.body146, label %for.end155.thread

for.end155.thread:                                ; preds = %for.end139
  call void @IV2qsortUp(i32 %count.4.lcssa, i32* %call22, i32* %call23) #4
  br label %while.end

for.body146:                                      ; preds = %for.end139, %for.body146
  %indvars.iv369 = phi i64 [ %indvars.iv.next370, %for.body146 ], [ 0, %for.end139 ]
  %arrayidx148 = getelementptr inbounds i32* %call23, i64 %indvars.iv369
  %37 = load i32* %arrayidx148, align 4, !tbaa !3
  %idxprom149 = sext i32 %37 to i64
  %arrayidx150 = getelementptr inbounds i32* %call28, i64 %idxprom149
  %38 = load i32* %arrayidx150, align 4, !tbaa !3
  %arrayidx152 = getelementptr inbounds i32* %call22, i64 %indvars.iv369
  store i32 %38, i32* %arrayidx152, align 4, !tbaa !3
  %indvars.iv.next370 = add i64 %indvars.iv369, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next370 to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %count.4.lcssa
  br i1 %exitcond, label %for.end155, label %for.body146

for.end155:                                       ; preds = %for.body146
  call void @IV2qsortUp(i32 %count.4.lcssa, i32* %call22, i32* %call23) #4
  %cmp156351 = icmp sgt i32 %count.4.lcssa, 1
  br i1 %cmp156351, label %while.body, label %while.end

while.body:                                       ; preds = %for.end155, %if.end171
  %indvars.iv372 = phi i64 [ %indvars.iv.next373, %if.end171 ], [ 1, %for.end155 ]
  %first.0.neg355 = phi i32 [ %first.0.neg, %if.end171 ], [ 0, %for.end155 ]
  %first.0354 = phi i32 [ %first.1, %if.end171 ], [ 0, %for.end155 ]
  %front.0353 = phi i32 [ %front.1, %if.end171 ], [ %J.0359, %for.end155 ]
  %arrayidx158 = getelementptr inbounds i32* %call23, i64 %indvars.iv372
  %39 = load i32* %arrayidx158, align 4, !tbaa !3
  %idxprom159 = sext i32 %39 to i64
  %arrayidx160 = getelementptr inbounds i32* %call28, i64 %idxprom159
  %40 = load i32* %arrayidx160, align 4, !tbaa !3
  %cmp161 = icmp eq i32 %40, %front.0353
  br i1 %cmp161, label %if.end171, label %if.then162

if.then162:                                       ; preds = %while.body
  %41 = add nsw i64 %indvars.iv372, 4294967295
  %42 = trunc i64 %41 to i32
  %sub164 = add i32 %42, %first.0.neg355
  %43 = trunc i64 %indvars.iv372 to i32
  %add165 = add i32 %43, %first.0.neg355
  store i32 %add165, i32* %size, align 4, !tbaa !3
  %cmp166 = icmp sgt i32 %sub164, 0
  br i1 %cmp166, label %if.then167, label %if.end168

if.then167:                                       ; preds = %if.then162
  %idx.ext = sext i32 %first.0354 to i64
  %add.ptr = getelementptr inbounds i32* %call23, i64 %idx.ext
  call void @IVqsortUp(i32 %add165, i32* %add.ptr) #4
  br label %if.end168

if.end168:                                        ; preds = %if.then167, %if.then162
  %44 = load i32* %arrayidx160, align 4, !tbaa !3
  br label %if.end171

if.end171:                                        ; preds = %while.body, %if.end168
  %front.1 = phi i32 [ %44, %if.end168 ], [ %front.0353, %while.body ]
  %first.1 = phi i32 [ %43, %if.end168 ], [ %first.0354, %while.body ]
  %indvars.iv.next373 = add i64 %indvars.iv372, 1
  %first.0.neg = sub i32 0, %first.1
  %lftr.wideiv375 = trunc i64 %indvars.iv.next373 to i32
  %exitcond376 = icmp eq i32 %lftr.wideiv375, %count.4.lcssa
  br i1 %exitcond376, label %while.end, label %while.body

while.end:                                        ; preds = %if.end171, %for.end155.thread, %for.end155
  %first.0.neg.lcssa = phi i32 [ 0, %for.end155 ], [ 0, %for.end155.thread ], [ %first.0.neg, %if.end171 ]
  %first.0.lcssa = phi i32 [ 0, %for.end155 ], [ 0, %for.end155.thread ], [ %first.1, %if.end171 ]
  %sub173 = add nsw i32 %count.4.lcssa, -1
  %sub174 = add i32 %sub173, %first.0.neg.lcssa
  %add175 = add i32 %count.4.lcssa, %first.0.neg.lcssa
  store i32 %add175, i32* %size, align 4, !tbaa !3
  %cmp176 = icmp sgt i32 %sub174, 0
  br i1 %cmp176, label %if.then177, label %if.end180

if.then177:                                       ; preds = %while.end
  %idx.ext178 = sext i32 %first.0.lcssa to i64
  %add.ptr179 = getelementptr inbounds i32* %call23, i64 %idx.ext178
  call void @IVqsortUp(i32 %add175, i32* %add.ptr179) #4
  br label %if.end180

if.end180:                                        ; preds = %if.then177, %while.end
  call void @IVL_setList(%struct._IVL* %call20, i32 %J.0359, i32 %count.4.lcssa, i32* %call23) #4
  %call182 = call i32 @Tree_postOTnext(%struct._Tree* %15, i32 %J.0359) #4
  %cmp41 = icmp eq i32 %call182, -1
  br i1 %cmp41, label %for.end183, label %for.body42

for.end183:                                       ; preds = %if.end180, %for.end
  call void @IVfree(i32* %call23) #4
  call void @IVfree(i32* %call21) #4
  call void @IVfree(i32* %call22) #4
  call void @IVfree(i32* %call24) #4
  call void @IVfree(i32* %call25) #4
  ret %struct._IVL* %call20
}

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #1

; Function Attrs: optsize
declare i32 @ETree_writeStats(%struct._ETree*, %struct._IO_FILE*) #2

; Function Attrs: optsize
declare i32 @Graph_writeStats(%struct._Graph*, %struct._IO_FILE*) #2

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32) #3

; Function Attrs: optsize
declare %struct._IVL* @IVL_new() #2

; Function Attrs: optsize
declare void @IVL_init1(%struct._IVL*, i32, i32) #2

; Function Attrs: optsize
declare i32* @IVinit(i32, i32) #2

; Function Attrs: optsize
declare i32* @IV_entries(%struct._IV*) #2

; Function Attrs: optsize
declare i32 @Tree_postOTfirst(%struct._Tree*) #2

; Function Attrs: optsize
declare void @IVL_listAndSize(%struct._IVL*, i32, i32*, i32**) #2

; Function Attrs: optsize
declare void @Graph_adjAndSize(%struct._Graph*, i32, i32*, i32**) #2

; Function Attrs: optsize
declare void @IV2qsortUp(i32, i32*, i32*) #2

; Function Attrs: optsize
declare void @IVqsortUp(i32, i32*) #2

; Function Attrs: optsize
declare void @IVL_setList(%struct._IVL*, i32, i32, i32*) #2

; Function Attrs: optsize
declare i32 @Tree_postOTnext(%struct._Tree*, i32) #2

; Function Attrs: optsize
declare void @IVfree(i32*) #2

; Function Attrs: nounwind optsize uwtable
define %struct._IVL* @SymbFac_initFromInpMtx(%struct._ETree* %etree, %struct._InpMtx* %inpmtx) #0 {
entry:
  %size = alloca i32, align 4
  %adj = alloca i32*, align 8
  %cmp = icmp eq %struct._ETree* %etree, null
  br i1 %cmp, label %if.then.thread, label %lor.lhs.false

if.then.thread:                                   ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call246 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([59 x i8]* @.str1, i64 0, i64 0), %struct._ETree* null, %struct._InpMtx* %inpmtx) #4
  br label %if.end

lor.lhs.false:                                    ; preds = %entry
  %nfront1 = getelementptr inbounds %struct._ETree* %etree, i64 0, i32 0
  %1 = load i32* %nfront1, align 4, !tbaa !3
  %cmp2 = icmp slt i32 %1, 1
  br i1 %cmp2, label %if.then.thread247, label %lor.lhs.false3

if.then.thread247:                                ; preds = %lor.lhs.false
  %2 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call248 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([59 x i8]* @.str1, i64 0, i64 0), %struct._ETree* %etree, %struct._InpMtx* %inpmtx) #4
  br label %if.then9

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %nvtx4 = getelementptr inbounds %struct._ETree* %etree, i64 0, i32 1
  %3 = load i32* %nvtx4, align 4, !tbaa !3
  %cmp5 = icmp slt i32 %3, 1
  %cmp7 = icmp eq %struct._InpMtx* %inpmtx, null
  %or.cond = or i1 %cmp5, %cmp7
  br i1 %or.cond, label %if.then, label %if.end15

if.then:                                          ; preds = %lor.lhs.false3
  %4 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([59 x i8]* @.str1, i64 0, i64 0), %struct._ETree* %etree, %struct._InpMtx* %inpmtx) #4
  br label %if.then9

if.then9:                                         ; preds = %if.then, %if.then.thread247
  %5 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call10 = call i32 @ETree_writeStats(%struct._ETree* %etree, %struct._IO_FILE* %5) #4
  br label %if.end

if.end:                                           ; preds = %if.then.thread, %if.then9
  %cmp11 = icmp eq %struct._InpMtx* %inpmtx, null
  br i1 %cmp11, label %if.end14, label %if.then12

if.then12:                                        ; preds = %if.end
  %6 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call13 = call i32 @InpMtx_writeStats(%struct._InpMtx* %inpmtx, %struct._IO_FILE* %6) #4
  br label %if.end14

if.end14:                                         ; preds = %if.end, %if.then12
  call void @exit(i32 -1) #5
  unreachable

if.end15:                                         ; preds = %lor.lhs.false3
  %coordType = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 0
  %7 = load i32* %coordType, align 4, !tbaa !3
  %cmp16 = icmp eq i32 %7, 3
  br i1 %cmp16, label %if.end20, label %if.then17

if.then17:                                        ; preds = %if.end15
  %8 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call18 = call i32 @InpMtx_coordType(%struct._InpMtx* %inpmtx) #4
  %call19 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %8, i8* getelementptr inbounds ([96 x i8]* @.str2, i64 0, i64 0), i32 %call18) #4
  call void @exit(i32 -1) #5
  unreachable

if.end20:                                         ; preds = %if.end15
  %storageMode = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 1
  %9 = load i32* %storageMode, align 4, !tbaa !3
  %cmp21 = icmp eq i32 %9, 3
  br i1 %cmp21, label %if.end25, label %if.then22

if.then22:                                        ; preds = %if.end20
  %10 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call23 = call i32 @InpMtx_storageMode(%struct._InpMtx* %inpmtx) #4
  %call24 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %10, i8* getelementptr inbounds ([97 x i8]* @.str3, i64 0, i64 0), i32 %call23) #4
  call void @exit(i32 -1) #5
  unreachable

if.end25:                                         ; preds = %if.end20
  %call26 = call i32 @InpMtx_nvector(%struct._InpMtx* %inpmtx) #4
  %call27 = call %struct._IVL* @IVL_new() #4
  call void @IVL_init1(%struct._IVL* %call27, i32 1, i32 %1) #4
  %call28 = call i32* @IVinit(i32 %3, i32 -1) #4
  %call29 = call i32* @IVinit(i32 %3, i32 -1) #4
  %call30 = call i32* @IVinit(i32 %3, i32 -1) #4
  %call31 = call i32* @IVinit(i32 %1, i32 -1) #4
  %call32 = call i32* @IVinit(i32 %3, i32 -1) #4
  %nodwghtsIV = getelementptr inbounds %struct._ETree* %etree, i64 0, i32 3
  %11 = load %struct._IV** %nodwghtsIV, align 8, !tbaa !0
  %call33 = call i32* @IV_entries(%struct._IV* %11) #4
  %bndwghtsIV = getelementptr inbounds %struct._ETree* %etree, i64 0, i32 4
  %12 = load %struct._IV** %bndwghtsIV, align 8, !tbaa !0
  %call34 = call i32* @IV_entries(%struct._IV* %12) #4
  %vtxToFrontIV = getelementptr inbounds %struct._ETree* %etree, i64 0, i32 5
  %13 = load %struct._IV** %vtxToFrontIV, align 8, !tbaa !0
  %call35 = call i32* @IV_entries(%struct._IV* %13) #4
  %cmp36272 = icmp sgt i32 %3, 0
  br i1 %cmp36272, label %for.body, label %for.end

for.body:                                         ; preds = %if.end25, %for.body
  %indvars.iv281 = phi i64 [ %indvars.iv.next282, %for.body ], [ 0, %if.end25 ]
  %arrayidx = getelementptr inbounds i32* %call35, i64 %indvars.iv281
  %14 = load i32* %arrayidx, align 4, !tbaa !3
  %idxprom37 = sext i32 %14 to i64
  %arrayidx38 = getelementptr inbounds i32* %call31, i64 %idxprom37
  %15 = load i32* %arrayidx38, align 4, !tbaa !3
  %arrayidx40 = getelementptr inbounds i32* %call32, i64 %indvars.iv281
  store i32 %15, i32* %arrayidx40, align 4, !tbaa !3
  %16 = trunc i64 %indvars.iv281 to i32
  store i32 %16, i32* %arrayidx38, align 4, !tbaa !3
  %indvars.iv.next282 = add i64 %indvars.iv281, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next282 to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %3
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %if.end25
  %tree43 = getelementptr inbounds %struct._ETree* %etree, i64 0, i32 2
  %17 = load %struct._Tree** %tree43, align 8, !tbaa !0
  %fch44 = getelementptr inbounds %struct._Tree* %17, i64 0, i32 3
  %18 = load i32** %fch44, align 8, !tbaa !0
  %sib45 = getelementptr inbounds %struct._Tree* %17, i64 0, i32 4
  %19 = load i32** %sib45, align 8, !tbaa !0
  %call46 = call i32 @Tree_postOTfirst(%struct._Tree* %17) #4
  %cmp48270 = icmp eq i32 %call46, -1
  br i1 %cmp48270, label %for.end145, label %for.body49

for.body49:                                       ; preds = %for.end, %for.end137
  %J.0271 = phi i32 [ %call144, %for.end137 ], [ %call46, %for.end ]
  %idxprom50 = sext i32 %J.0271 to i64
  %arrayidx51 = getelementptr inbounds i32* %call31, i64 %idxprom50
  %v.1249 = load i32* %arrayidx51, align 4
  %cmp53250 = icmp eq i32 %v.1249, -1
  br i1 %cmp53250, label %for.end63, label %for.body54

for.body54:                                       ; preds = %for.body49, %for.body54
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body54 ], [ 0, %for.body49 ]
  %v.1252 = phi i32 [ %v.1, %for.body54 ], [ %v.1249, %for.body49 ]
  %count.0251 = phi i32 [ %inc57, %for.body54 ], [ 0, %for.body49 ]
  %idxprom55 = sext i32 %v.1252 to i64
  %arrayidx56 = getelementptr inbounds i32* %call28, i64 %idxprom55
  store i32 %J.0271, i32* %arrayidx56, align 4, !tbaa !3
  %indvars.iv.next = add i64 %indvars.iv, 1
  %inc57 = add nsw i32 %count.0251, 1
  %arrayidx59 = getelementptr inbounds i32* %call30, i64 %indvars.iv
  store i32 %v.1252, i32* %arrayidx59, align 4, !tbaa !3
  %arrayidx62 = getelementptr inbounds i32* %call32, i64 %idxprom55
  %v.1 = load i32* %arrayidx62, align 4
  %cmp53 = icmp eq i32 %v.1, -1
  br i1 %cmp53, label %for.end63, label %for.body54

for.end63:                                        ; preds = %for.body54, %for.body49
  %count.0.lcssa = phi i32 [ 0, %for.body49 ], [ %inc57, %for.body54 ]
  %arrayidx65 = getelementptr inbounds i32* %18, i64 %idxprom50
  %I.0254 = load i32* %arrayidx65, align 4
  %cmp67255 = icmp eq i32 %I.0254, -1
  br i1 %cmp67255, label %for.cond98.loopexit, label %for.body68

for.body68:                                       ; preds = %for.end63, %for.inc91
  %I.0257 = phi i32 [ %I.0, %for.inc91 ], [ %I.0254, %for.end63 ]
  %count.1256 = phi i32 [ %count.2.ph, %for.inc91 ], [ %count.0.lcssa, %for.end63 ]
  call void @IVL_listAndSize(%struct._IVL* %call27, i32 %I.0257, i32* %size, i32** %adj) #4
  %20 = load i32* %size, align 4, !tbaa !3
  %21 = load i32** %adj, align 8, !tbaa !0
  %22 = sext i32 %count.1256 to i64
  br label %for.cond69.outer

for.cond69.outer:                                 ; preds = %if.then81, %for.body68
  %indvars.iv277 = phi i64 [ %indvars.iv.next278, %if.then81 ], [ %22, %for.body68 ]
  %ii.0.in.ph = phi i32 [ %ii.0, %if.then81 ], [ %20, %for.body68 ]
  %count.2.ph = phi i32 [ %inc84, %if.then81 ], [ %count.1256, %for.body68 ]
  %23 = sext i32 %ii.0.in.ph to i64
  br label %for.cond69

for.cond69:                                       ; preds = %for.cond69.outer, %if.then77
  %indvars.iv275 = phi i64 [ %23, %for.cond69.outer ], [ %indvars.iv.next276, %if.then77 ]
  %ii.0.in = phi i32 [ %ii.0.in.ph, %for.cond69.outer ], [ %ii.0, %if.then77 ]
  %indvars.iv.next276 = add i64 %indvars.iv275, -1
  %ii.0 = add nsw i32 %ii.0.in, -1
  %24 = trunc i64 %indvars.iv275 to i32
  %cmp70 = icmp sgt i32 %24, 0
  br i1 %cmp70, label %for.body71, label %for.inc91

for.body71:                                       ; preds = %for.cond69
  %arrayidx73 = getelementptr inbounds i32* %21, i64 %indvars.iv.next276
  %25 = load i32* %arrayidx73, align 4, !tbaa !3
  %idxprom74 = sext i32 %25 to i64
  %arrayidx75 = getelementptr inbounds i32* %call35, i64 %idxprom74
  %26 = load i32* %arrayidx75, align 4, !tbaa !3
  %cmp76 = icmp sgt i32 %26, %J.0271
  br i1 %cmp76, label %if.then77, label %for.inc91

if.then77:                                        ; preds = %for.body71
  %arrayidx79 = getelementptr inbounds i32* %call28, i64 %idxprom74
  %27 = load i32* %arrayidx79, align 4, !tbaa !3
  %cmp80 = icmp eq i32 %27, %J.0271
  br i1 %cmp80, label %for.cond69, label %if.then81

if.then81:                                        ; preds = %if.then77
  store i32 %J.0271, i32* %arrayidx79, align 4, !tbaa !3
  %indvars.iv.next278 = add i64 %indvars.iv277, 1
  %inc84 = add nsw i32 %count.2.ph, 1
  %arrayidx86 = getelementptr inbounds i32* %call30, i64 %indvars.iv277
  store i32 %25, i32* %arrayidx86, align 4, !tbaa !3
  br label %for.cond69.outer

for.inc91:                                        ; preds = %for.cond69, %for.body71
  %idxprom92 = sext i32 %I.0257 to i64
  %arrayidx93 = getelementptr inbounds i32* %19, i64 %idxprom92
  %I.0 = load i32* %arrayidx93, align 4
  %cmp67 = icmp eq i32 %I.0, -1
  br i1 %cmp67, label %for.cond98.loopexit, label %for.body68

for.cond98.loopexit:                              ; preds = %for.inc91, %for.end63
  %count.1.lcssa = phi i32 [ %count.0.lcssa, %for.end63 ], [ %count.2.ph, %for.inc91 ]
  %v.2263 = load i32* %arrayidx51, align 4
  %cmp99264 = icmp eq i32 %v.2263, -1
  br i1 %cmp99264, label %for.end137, label %for.body100

for.body100:                                      ; preds = %for.cond98.loopexit, %for.inc134
  %v.2266 = phi i32 [ %v.2, %for.inc134 ], [ %v.2263, %for.cond98.loopexit ]
  %count.4265 = phi i32 [ %count.7, %for.inc134 ], [ %count.1.lcssa, %for.cond98.loopexit ]
  %cmp101 = icmp slt i32 %v.2266, %call26
  br i1 %cmp101, label %if.then102, label %for.inc134

if.then102:                                       ; preds = %for.body100
  call void @InpMtx_vector(%struct._InpMtx* %inpmtx, i32 %v.2266, i32* %size, i32** %adj) #4
  %28 = load i32* %size, align 4, !tbaa !3
  %cmp104259 = icmp sgt i32 %28, 0
  br i1 %cmp104259, label %for.body105.lr.ph, label %for.inc134

for.body105.lr.ph:                                ; preds = %if.then102
  %29 = load i32** %adj, align 8, !tbaa !0
  br label %for.body105

for.body105:                                      ; preds = %for.body105.lr.ph, %for.inc130
  %30 = phi i32 [ %28, %for.body105.lr.ph ], [ %35, %for.inc130 ]
  %indvars.iv279 = phi i64 [ 0, %for.body105.lr.ph ], [ %indvars.iv.next280, %for.inc130 ]
  %count.5261 = phi i32 [ %count.4265, %for.body105.lr.ph ], [ %count.6, %for.inc130 ]
  %arrayidx107 = getelementptr inbounds i32* %29, i64 %indvars.iv279
  %31 = load i32* %arrayidx107, align 4, !tbaa !3
  %cmp108 = icmp sgt i32 %31, -1
  %32 = sub i32 0, %31
  %w.0.p = select i1 %cmp108, i32 %31, i32 %32
  %w.0 = add i32 %w.0.p, %v.2266
  %idxprom117 = sext i32 %w.0 to i64
  %arrayidx118 = getelementptr inbounds i32* %call35, i64 %idxprom117
  %33 = load i32* %arrayidx118, align 4, !tbaa !3
  %cmp119 = icmp sgt i32 %33, %J.0271
  br i1 %cmp119, label %land.lhs.true, label %for.inc130

land.lhs.true:                                    ; preds = %for.body105
  %arrayidx121 = getelementptr inbounds i32* %call28, i64 %idxprom117
  %34 = load i32* %arrayidx121, align 4, !tbaa !3
  %cmp122 = icmp eq i32 %34, %J.0271
  br i1 %cmp122, label %for.inc130, label %if.then123

if.then123:                                       ; preds = %land.lhs.true
  store i32 %J.0271, i32* %arrayidx121, align 4, !tbaa !3
  %inc126 = add nsw i32 %count.5261, 1
  %idxprom127 = sext i32 %count.5261 to i64
  %arrayidx128 = getelementptr inbounds i32* %call30, i64 %idxprom127
  store i32 %w.0, i32* %arrayidx128, align 4, !tbaa !3
  %.pre = load i32* %size, align 4, !tbaa !3
  br label %for.inc130

for.inc130:                                       ; preds = %land.lhs.true, %for.body105, %if.then123
  %35 = phi i32 [ %.pre, %if.then123 ], [ %30, %land.lhs.true ], [ %30, %for.body105 ]
  %count.6 = phi i32 [ %inc126, %if.then123 ], [ %count.5261, %land.lhs.true ], [ %count.5261, %for.body105 ]
  %indvars.iv.next280 = add i64 %indvars.iv279, 1
  %36 = trunc i64 %indvars.iv.next280 to i32
  %cmp104 = icmp slt i32 %36, %35
  br i1 %cmp104, label %for.body105, label %for.inc134

for.inc134:                                       ; preds = %if.then102, %for.inc130, %for.body100
  %count.7 = phi i32 [ %count.4265, %for.body100 ], [ %count.4265, %if.then102 ], [ %count.6, %for.inc130 ]
  %idxprom135 = sext i32 %v.2266 to i64
  %arrayidx136 = getelementptr inbounds i32* %call32, i64 %idxprom135
  %v.2 = load i32* %arrayidx136, align 4
  %cmp99 = icmp eq i32 %v.2, -1
  br i1 %cmp99, label %for.end137, label %for.body100

for.end137:                                       ; preds = %for.inc134, %for.cond98.loopexit
  %count.4.lcssa = phi i32 [ %count.1.lcssa, %for.cond98.loopexit ], [ %count.7, %for.inc134 ]
  %arrayidx139 = getelementptr inbounds i32* %call33, i64 %idxprom50
  store i32 %count.0.lcssa, i32* %arrayidx139, align 4, !tbaa !3
  %sub140 = sub nsw i32 %count.4.lcssa, %count.0.lcssa
  %arrayidx142 = getelementptr inbounds i32* %call34, i64 %idxprom50
  store i32 %sub140, i32* %arrayidx142, align 4, !tbaa !3
  call void @IVqsortUp(i32 %count.4.lcssa, i32* %call30) #4
  call void @IVL_setList(%struct._IVL* %call27, i32 %J.0271, i32 %count.4.lcssa, i32* %call30) #4
  %call144 = call i32 @Tree_postOTnext(%struct._Tree* %17, i32 %J.0271) #4
  %cmp48 = icmp eq i32 %call144, -1
  br i1 %cmp48, label %for.end145, label %for.body49

for.end145:                                       ; preds = %for.end137, %for.end
  call void @IVfree(i32* %call30) #4
  call void @IVfree(i32* %call28) #4
  call void @IVfree(i32* %call29) #4
  call void @IVfree(i32* %call31) #4
  call void @IVfree(i32* %call32) #4
  ret %struct._IVL* %call27
}

; Function Attrs: optsize
declare i32 @InpMtx_writeStats(%struct._InpMtx*, %struct._IO_FILE*) #2

; Function Attrs: optsize
declare i32 @InpMtx_coordType(%struct._InpMtx*) #2

; Function Attrs: optsize
declare i32 @InpMtx_storageMode(%struct._InpMtx*) #2

; Function Attrs: optsize
declare i32 @InpMtx_nvector(%struct._InpMtx*) #2

; Function Attrs: optsize
declare void @InpMtx_vector(%struct._InpMtx*, i32, i32*, i32**) #2

; Function Attrs: nounwind optsize uwtable
define %struct._IVL* @SymbFac_initFromPencil(%struct._ETree* %etree, %struct._Pencil* %pencil) #0 {
entry:
  %size = alloca i32, align 4
  %adj = alloca i32*, align 8
  %cmp = icmp eq %struct._ETree* %etree, null
  br i1 %cmp, label %if.then.thread, label %lor.lhs.false

if.then.thread:                                   ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call331 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([59 x i8]* @.str4, i64 0, i64 0), %struct._ETree* null, %struct._Pencil* %pencil) #4
  br label %if.end

lor.lhs.false:                                    ; preds = %entry
  %nfront1 = getelementptr inbounds %struct._ETree* %etree, i64 0, i32 0
  %1 = load i32* %nfront1, align 4, !tbaa !3
  %cmp2 = icmp slt i32 %1, 1
  br i1 %cmp2, label %if.then.thread332, label %lor.lhs.false3

if.then.thread332:                                ; preds = %lor.lhs.false
  %2 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call333 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([59 x i8]* @.str4, i64 0, i64 0), %struct._ETree* %etree, %struct._Pencil* %pencil) #4
  br label %if.then9

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %nvtx4 = getelementptr inbounds %struct._ETree* %etree, i64 0, i32 1
  %3 = load i32* %nvtx4, align 4, !tbaa !3
  %cmp5 = icmp slt i32 %3, 1
  %cmp7 = icmp eq %struct._Pencil* %pencil, null
  %or.cond = or i1 %cmp5, %cmp7
  br i1 %or.cond, label %if.then, label %if.end15

if.then:                                          ; preds = %lor.lhs.false3
  %4 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([59 x i8]* @.str4, i64 0, i64 0), %struct._ETree* %etree, %struct._Pencil* %pencil) #4
  br label %if.then9

if.then9:                                         ; preds = %if.then, %if.then.thread332
  %5 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call10 = call i32 @ETree_writeStats(%struct._ETree* %etree, %struct._IO_FILE* %5) #4
  br label %if.end

if.end:                                           ; preds = %if.then.thread, %if.then9
  %cmp11 = icmp eq %struct._Pencil* %pencil, null
  br i1 %cmp11, label %if.end14, label %if.then12

if.then12:                                        ; preds = %if.end
  %6 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call13 = call i32 @Pencil_writeStats(%struct._Pencil* %pencil, %struct._IO_FILE* %6) #4
  br label %if.end14

if.end14:                                         ; preds = %if.end, %if.then12
  call void @exit(i32 -1) #5
  unreachable

if.end15:                                         ; preds = %lor.lhs.false3
  %inpmtxA16 = getelementptr inbounds %struct._Pencil* %pencil, i64 0, i32 2
  %7 = load %struct._InpMtx** %inpmtxA16, align 8, !tbaa !0
  %inpmtxB17 = getelementptr inbounds %struct._Pencil* %pencil, i64 0, i32 3
  %8 = load %struct._InpMtx** %inpmtxB17, align 8, !tbaa !0
  %cmp18 = icmp ne %struct._InpMtx* %7, null
  br i1 %cmp18, label %if.then19, label %if.end31

if.then19:                                        ; preds = %if.end15
  %coordType = getelementptr inbounds %struct._InpMtx* %7, i64 0, i32 0
  %9 = load i32* %coordType, align 4, !tbaa !3
  %cmp20 = icmp eq i32 %9, 3
  br i1 %cmp20, label %if.end24, label %if.then21

if.then21:                                        ; preds = %if.then19
  %10 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call22 = call i32 @InpMtx_coordType(%struct._InpMtx* %7) #4
  %call23 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %10, i8* getelementptr inbounds ([96 x i8]* @.str5, i64 0, i64 0), i32 %call22) #4
  call void @exit(i32 -1) #5
  unreachable

if.end24:                                         ; preds = %if.then19
  %storageMode = getelementptr inbounds %struct._InpMtx* %7, i64 0, i32 1
  %11 = load i32* %storageMode, align 4, !tbaa !3
  %cmp25 = icmp eq i32 %11, 3
  br i1 %cmp25, label %if.end29, label %if.then26

if.then26:                                        ; preds = %if.end24
  %12 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call27 = call i32 @InpMtx_storageMode(%struct._InpMtx* %7) #4
  %call28 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %12, i8* getelementptr inbounds ([97 x i8]* @.str6, i64 0, i64 0), i32 %call27) #4
  call void @exit(i32 -1) #5
  unreachable

if.end29:                                         ; preds = %if.end24
  %call30 = call i32 @InpMtx_nvector(%struct._InpMtx* %7) #4
  br label %if.end31

if.end31:                                         ; preds = %if.end15, %if.end29
  %cmp32 = icmp ne %struct._InpMtx* %8, null
  br i1 %cmp32, label %if.then33, label %if.end48

if.then33:                                        ; preds = %if.end31
  %coordType34 = getelementptr inbounds %struct._InpMtx* %8, i64 0, i32 0
  %13 = load i32* %coordType34, align 4, !tbaa !3
  %cmp35 = icmp eq i32 %13, 3
  br i1 %cmp35, label %if.end39, label %if.then36

if.then36:                                        ; preds = %if.then33
  %14 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call37 = call i32 @InpMtx_coordType(%struct._InpMtx* %8) #4
  %call38 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %14, i8* getelementptr inbounds ([96 x i8]* @.str5, i64 0, i64 0), i32 %call37) #4
  call void @exit(i32 -1) #5
  unreachable

if.end39:                                         ; preds = %if.then33
  %storageMode40 = getelementptr inbounds %struct._InpMtx* %8, i64 0, i32 1
  %15 = load i32* %storageMode40, align 4, !tbaa !3
  %cmp41 = icmp eq i32 %15, 3
  br i1 %cmp41, label %if.end45, label %if.then42

if.then42:                                        ; preds = %if.end39
  %16 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call43 = call i32 @InpMtx_storageMode(%struct._InpMtx* %8) #4
  %call44 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %16, i8* getelementptr inbounds ([97 x i8]* @.str6, i64 0, i64 0), i32 %call43) #4
  call void @exit(i32 -1) #5
  unreachable

if.end45:                                         ; preds = %if.end39
  %call46 = call i32 @InpMtx_nvector(%struct._InpMtx* %8) #4
  br label %if.end48

if.end48:                                         ; preds = %if.end31, %if.end45
  %call49 = call %struct._IVL* @IVL_new() #4
  call void @IVL_init1(%struct._IVL* %call49, i32 1, i32 %1) #4
  %call50 = call i32* @IVinit(i32 %3, i32 -1) #4
  %call51 = call i32* @IVinit(i32 %3, i32 -1) #4
  %call52 = call i32* @IVinit(i32 %3, i32 -1) #4
  %call53 = call i32* @IVinit(i32 %1, i32 -1) #4
  %call54 = call i32* @IVinit(i32 %3, i32 -1) #4
  %nodwghtsIV = getelementptr inbounds %struct._ETree* %etree, i64 0, i32 3
  %17 = load %struct._IV** %nodwghtsIV, align 8, !tbaa !0
  %call55 = call i32* @IV_entries(%struct._IV* %17) #4
  %bndwghtsIV = getelementptr inbounds %struct._ETree* %etree, i64 0, i32 4
  %18 = load %struct._IV** %bndwghtsIV, align 8, !tbaa !0
  %call56 = call i32* @IV_entries(%struct._IV* %18) #4
  %vtxToFrontIV = getelementptr inbounds %struct._ETree* %etree, i64 0, i32 5
  %19 = load %struct._IV** %vtxToFrontIV, align 8, !tbaa !0
  %call57 = call i32* @IV_entries(%struct._IV* %19) #4
  %cmp58361 = icmp sgt i32 %3, 0
  br i1 %cmp58361, label %for.body, label %for.end

for.body:                                         ; preds = %if.end48, %for.body
  %indvars.iv372 = phi i64 [ %indvars.iv.next373, %for.body ], [ 0, %if.end48 ]
  %arrayidx = getelementptr inbounds i32* %call57, i64 %indvars.iv372
  %20 = load i32* %arrayidx, align 4, !tbaa !3
  %idxprom59 = sext i32 %20 to i64
  %arrayidx60 = getelementptr inbounds i32* %call53, i64 %idxprom59
  %21 = load i32* %arrayidx60, align 4, !tbaa !3
  %arrayidx62 = getelementptr inbounds i32* %call54, i64 %indvars.iv372
  store i32 %21, i32* %arrayidx62, align 4, !tbaa !3
  %22 = trunc i64 %indvars.iv372 to i32
  store i32 %22, i32* %arrayidx60, align 4, !tbaa !3
  %indvars.iv.next373 = add i64 %indvars.iv372, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next373 to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %3
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %if.end48
  %tree65 = getelementptr inbounds %struct._ETree* %etree, i64 0, i32 2
  %23 = load %struct._Tree** %tree65, align 8, !tbaa !0
  %fch66 = getelementptr inbounds %struct._Tree* %23, i64 0, i32 3
  %24 = load i32** %fch66, align 8, !tbaa !0
  %sib67 = getelementptr inbounds %struct._Tree* %23, i64 0, i32 4
  %25 = load i32** %sib67, align 8, !tbaa !0
  %call68 = call i32 @Tree_postOTfirst(%struct._Tree* %23) #4
  %cmp70359 = icmp eq i32 %call68, -1
  br i1 %cmp70359, label %for.end203, label %for.body71

for.body71:                                       ; preds = %for.end, %for.end195
  %J.0360 = phi i32 [ %call202, %for.end195 ], [ %call68, %for.end ]
  %idxprom72 = sext i32 %J.0360 to i64
  %arrayidx73 = getelementptr inbounds i32* %call53, i64 %idxprom72
  %v.1334 = load i32* %arrayidx73, align 4
  %cmp75335 = icmp eq i32 %v.1334, -1
  br i1 %cmp75335, label %for.end85, label %for.body76

for.body76:                                       ; preds = %for.body71, %for.body76
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body76 ], [ 0, %for.body71 ]
  %v.1337 = phi i32 [ %v.1, %for.body76 ], [ %v.1334, %for.body71 ]
  %count.0336 = phi i32 [ %inc79, %for.body76 ], [ 0, %for.body71 ]
  %idxprom77 = sext i32 %v.1337 to i64
  %arrayidx78 = getelementptr inbounds i32* %call50, i64 %idxprom77
  store i32 %J.0360, i32* %arrayidx78, align 4, !tbaa !3
  %indvars.iv.next = add i64 %indvars.iv, 1
  %inc79 = add nsw i32 %count.0336, 1
  %arrayidx81 = getelementptr inbounds i32* %call52, i64 %indvars.iv
  store i32 %v.1337, i32* %arrayidx81, align 4, !tbaa !3
  %arrayidx84 = getelementptr inbounds i32* %call54, i64 %idxprom77
  %v.1 = load i32* %arrayidx84, align 4
  %cmp75 = icmp eq i32 %v.1, -1
  br i1 %cmp75, label %for.end85, label %for.body76

for.end85:                                        ; preds = %for.body76, %for.body71
  %count.0.lcssa = phi i32 [ 0, %for.body71 ], [ %inc79, %for.body76 ]
  %arrayidx87 = getelementptr inbounds i32* %24, i64 %idxprom72
  %I.0339 = load i32* %arrayidx87, align 4
  %cmp89340 = icmp eq i32 %I.0339, -1
  br i1 %cmp89340, label %for.cond121.loopexit, label %for.body90

for.body90:                                       ; preds = %for.end85, %for.inc114
  %I.0342 = phi i32 [ %I.0, %for.inc114 ], [ %I.0339, %for.end85 ]
  %count.1341 = phi i32 [ %count.2.ph, %for.inc114 ], [ %count.0.lcssa, %for.end85 ]
  call void @IVL_listAndSize(%struct._IVL* %call49, i32 %I.0342, i32* %size, i32** %adj) #4
  %26 = load i32* %size, align 4, !tbaa !3
  %27 = load i32** %adj, align 8, !tbaa !0
  %28 = sext i32 %count.1341 to i64
  br label %for.cond91.outer

for.cond91.outer:                                 ; preds = %if.then103, %for.body90
  %indvars.iv366 = phi i64 [ %indvars.iv.next367, %if.then103 ], [ %28, %for.body90 ]
  %ii.0.in.ph = phi i32 [ %ii.0, %if.then103 ], [ %26, %for.body90 ]
  %count.2.ph = phi i32 [ %inc106, %if.then103 ], [ %count.1341, %for.body90 ]
  %29 = sext i32 %ii.0.in.ph to i64
  br label %for.cond91

for.cond91:                                       ; preds = %for.cond91.outer, %if.then99
  %indvars.iv364 = phi i64 [ %29, %for.cond91.outer ], [ %indvars.iv.next365, %if.then99 ]
  %ii.0.in = phi i32 [ %ii.0.in.ph, %for.cond91.outer ], [ %ii.0, %if.then99 ]
  %indvars.iv.next365 = add i64 %indvars.iv364, -1
  %ii.0 = add nsw i32 %ii.0.in, -1
  %30 = trunc i64 %indvars.iv364 to i32
  %cmp92 = icmp sgt i32 %30, 0
  br i1 %cmp92, label %for.body93, label %for.inc114

for.body93:                                       ; preds = %for.cond91
  %arrayidx95 = getelementptr inbounds i32* %27, i64 %indvars.iv.next365
  %31 = load i32* %arrayidx95, align 4, !tbaa !3
  %idxprom96 = sext i32 %31 to i64
  %arrayidx97 = getelementptr inbounds i32* %call57, i64 %idxprom96
  %32 = load i32* %arrayidx97, align 4, !tbaa !3
  %cmp98 = icmp sgt i32 %32, %J.0360
  br i1 %cmp98, label %if.then99, label %for.inc114

if.then99:                                        ; preds = %for.body93
  %arrayidx101 = getelementptr inbounds i32* %call50, i64 %idxprom96
  %33 = load i32* %arrayidx101, align 4, !tbaa !3
  %cmp102 = icmp eq i32 %33, %J.0360
  br i1 %cmp102, label %for.cond91, label %if.then103

if.then103:                                       ; preds = %if.then99
  store i32 %J.0360, i32* %arrayidx101, align 4, !tbaa !3
  %indvars.iv.next367 = add i64 %indvars.iv366, 1
  %inc106 = add nsw i32 %count.2.ph, 1
  %arrayidx108 = getelementptr inbounds i32* %call52, i64 %indvars.iv366
  store i32 %31, i32* %arrayidx108, align 4, !tbaa !3
  br label %for.cond91.outer

for.inc114:                                       ; preds = %for.cond91, %for.body93
  %idxprom115 = sext i32 %I.0342 to i64
  %arrayidx116 = getelementptr inbounds i32* %25, i64 %idxprom115
  %I.0 = load i32* %arrayidx116, align 4
  %cmp89 = icmp eq i32 %I.0, -1
  br i1 %cmp89, label %for.cond121.loopexit, label %for.body90

for.cond121.loopexit:                             ; preds = %for.inc114, %for.end85
  %count.1.lcssa = phi i32 [ %count.0.lcssa, %for.end85 ], [ %count.2.ph, %for.inc114 ]
  %v.2352 = load i32* %arrayidx73, align 4
  %cmp122353 = icmp eq i32 %v.2352, -1
  br i1 %cmp122353, label %for.end195, label %for.body123

for.body123:                                      ; preds = %for.cond121.loopexit, %for.inc192
  %v.2355 = phi i32 [ %v.2, %for.inc192 ], [ %v.2352, %for.cond121.loopexit ]
  %count.4354 = phi i32 [ %count.10, %for.inc192 ], [ %count.1.lcssa, %for.cond121.loopexit ]
  br i1 %cmp18, label %if.then125, label %if.end156

if.then125:                                       ; preds = %for.body123
  call void @InpMtx_vector(%struct._InpMtx* %7, i32 %v.2355, i32* %size, i32** %adj) #4
  %34 = load i32* %size, align 4, !tbaa !3
  %cmp127344 = icmp sgt i32 %34, 0
  br i1 %cmp127344, label %for.body128.lr.ph, label %if.end156

for.body128.lr.ph:                                ; preds = %if.then125
  %35 = load i32** %adj, align 8, !tbaa !0
  br label %for.body128

for.body128:                                      ; preds = %for.body128.lr.ph, %for.inc153
  %36 = phi i32 [ %34, %for.body128.lr.ph ], [ %41, %for.inc153 ]
  %indvars.iv368 = phi i64 [ 0, %for.body128.lr.ph ], [ %indvars.iv.next369, %for.inc153 ]
  %count.5346 = phi i32 [ %count.4354, %for.body128.lr.ph ], [ %count.6, %for.inc153 ]
  %arrayidx130 = getelementptr inbounds i32* %35, i64 %indvars.iv368
  %37 = load i32* %arrayidx130, align 4, !tbaa !3
  %cmp131 = icmp sgt i32 %37, -1
  %38 = sub i32 0, %37
  %w.0.p = select i1 %cmp131, i32 %37, i32 %38
  %w.0 = add i32 %w.0.p, %v.2355
  %idxprom140 = sext i32 %w.0 to i64
  %arrayidx141 = getelementptr inbounds i32* %call57, i64 %idxprom140
  %39 = load i32* %arrayidx141, align 4, !tbaa !3
  %cmp142 = icmp sgt i32 %39, %J.0360
  br i1 %cmp142, label %land.lhs.true, label %for.inc153

land.lhs.true:                                    ; preds = %for.body128
  %arrayidx144 = getelementptr inbounds i32* %call50, i64 %idxprom140
  %40 = load i32* %arrayidx144, align 4, !tbaa !3
  %cmp145 = icmp eq i32 %40, %J.0360
  br i1 %cmp145, label %for.inc153, label %if.then146

if.then146:                                       ; preds = %land.lhs.true
  store i32 %J.0360, i32* %arrayidx144, align 4, !tbaa !3
  %inc149 = add nsw i32 %count.5346, 1
  %idxprom150 = sext i32 %count.5346 to i64
  %arrayidx151 = getelementptr inbounds i32* %call52, i64 %idxprom150
  store i32 %w.0, i32* %arrayidx151, align 4, !tbaa !3
  %.pre = load i32* %size, align 4, !tbaa !3
  br label %for.inc153

for.inc153:                                       ; preds = %land.lhs.true, %for.body128, %if.then146
  %41 = phi i32 [ %.pre, %if.then146 ], [ %36, %land.lhs.true ], [ %36, %for.body128 ]
  %count.6 = phi i32 [ %inc149, %if.then146 ], [ %count.5346, %land.lhs.true ], [ %count.5346, %for.body128 ]
  %indvars.iv.next369 = add i64 %indvars.iv368, 1
  %42 = trunc i64 %indvars.iv.next369 to i32
  %cmp127 = icmp slt i32 %42, %41
  br i1 %cmp127, label %for.body128, label %if.end156

if.end156:                                        ; preds = %if.then125, %for.inc153, %for.body123
  %count.7 = phi i32 [ %count.4354, %for.body123 ], [ %count.4354, %if.then125 ], [ %count.6, %for.inc153 ]
  br i1 %cmp32, label %if.then158, label %for.inc192

if.then158:                                       ; preds = %if.end156
  call void @InpMtx_vector(%struct._InpMtx* %8, i32 %v.2355, i32* %size, i32** %adj) #4
  %43 = load i32* %size, align 4, !tbaa !3
  %cmp160348 = icmp sgt i32 %43, 0
  br i1 %cmp160348, label %for.body161.lr.ph, label %for.inc192

for.body161.lr.ph:                                ; preds = %if.then158
  %44 = load i32** %adj, align 8, !tbaa !0
  br label %for.body161

for.body161:                                      ; preds = %for.body161.lr.ph, %for.inc188
  %45 = phi i32 [ %43, %for.body161.lr.ph ], [ %50, %for.inc188 ]
  %indvars.iv370 = phi i64 [ 0, %for.body161.lr.ph ], [ %indvars.iv.next371, %for.inc188 ]
  %count.8350 = phi i32 [ %count.7, %for.body161.lr.ph ], [ %count.9, %for.inc188 ]
  %arrayidx163 = getelementptr inbounds i32* %44, i64 %indvars.iv370
  %46 = load i32* %arrayidx163, align 4, !tbaa !3
  %cmp164 = icmp sgt i32 %46, -1
  %47 = sub i32 0, %46
  %w.1.p = select i1 %cmp164, i32 %46, i32 %47
  %w.1 = add i32 %w.1.p, %v.2355
  %idxprom174 = sext i32 %w.1 to i64
  %arrayidx175 = getelementptr inbounds i32* %call57, i64 %idxprom174
  %48 = load i32* %arrayidx175, align 4, !tbaa !3
  %cmp176 = icmp sgt i32 %48, %J.0360
  br i1 %cmp176, label %land.lhs.true177, label %for.inc188

land.lhs.true177:                                 ; preds = %for.body161
  %arrayidx179 = getelementptr inbounds i32* %call50, i64 %idxprom174
  %49 = load i32* %arrayidx179, align 4, !tbaa !3
  %cmp180 = icmp eq i32 %49, %J.0360
  br i1 %cmp180, label %for.inc188, label %if.then181

if.then181:                                       ; preds = %land.lhs.true177
  store i32 %J.0360, i32* %arrayidx179, align 4, !tbaa !3
  %inc184 = add nsw i32 %count.8350, 1
  %idxprom185 = sext i32 %count.8350 to i64
  %arrayidx186 = getelementptr inbounds i32* %call52, i64 %idxprom185
  store i32 %w.1, i32* %arrayidx186, align 4, !tbaa !3
  %.pre374 = load i32* %size, align 4, !tbaa !3
  br label %for.inc188

for.inc188:                                       ; preds = %land.lhs.true177, %for.body161, %if.then181
  %50 = phi i32 [ %.pre374, %if.then181 ], [ %45, %land.lhs.true177 ], [ %45, %for.body161 ]
  %count.9 = phi i32 [ %inc184, %if.then181 ], [ %count.8350, %land.lhs.true177 ], [ %count.8350, %for.body161 ]
  %indvars.iv.next371 = add i64 %indvars.iv370, 1
  %51 = trunc i64 %indvars.iv.next371 to i32
  %cmp160 = icmp slt i32 %51, %50
  br i1 %cmp160, label %for.body161, label %for.inc192

for.inc192:                                       ; preds = %if.then158, %for.inc188, %if.end156
  %count.10 = phi i32 [ %count.7, %if.end156 ], [ %count.7, %if.then158 ], [ %count.9, %for.inc188 ]
  %idxprom193 = sext i32 %v.2355 to i64
  %arrayidx194 = getelementptr inbounds i32* %call54, i64 %idxprom193
  %v.2 = load i32* %arrayidx194, align 4
  %cmp122 = icmp eq i32 %v.2, -1
  br i1 %cmp122, label %for.end195, label %for.body123

for.end195:                                       ; preds = %for.inc192, %for.cond121.loopexit
  %count.4.lcssa = phi i32 [ %count.1.lcssa, %for.cond121.loopexit ], [ %count.10, %for.inc192 ]
  %arrayidx197 = getelementptr inbounds i32* %call55, i64 %idxprom72
  store i32 %count.0.lcssa, i32* %arrayidx197, align 4, !tbaa !3
  %sub198 = sub nsw i32 %count.4.lcssa, %count.0.lcssa
  %arrayidx200 = getelementptr inbounds i32* %call56, i64 %idxprom72
  store i32 %sub198, i32* %arrayidx200, align 4, !tbaa !3
  call void @IVqsortUp(i32 %count.4.lcssa, i32* %call52) #4
  call void @IVL_setList(%struct._IVL* %call49, i32 %J.0360, i32 %count.4.lcssa, i32* %call52) #4
  %call202 = call i32 @Tree_postOTnext(%struct._Tree* %23, i32 %J.0360) #4
  %cmp70 = icmp eq i32 %call202, -1
  br i1 %cmp70, label %for.end203, label %for.body71

for.end203:                                       ; preds = %for.end195, %for.end
  call void @IVfree(i32* %call52) #4
  call void @IVfree(i32* %call50) #4
  call void @IVfree(i32* %call51) #4
  call void @IVfree(i32* %call53) #4
  call void @IVfree(i32* %call54) #4
  ret %struct._IVL* %call49
}

; Function Attrs: optsize
declare i32 @Pencil_writeStats(%struct._Pencil*, %struct._IO_FILE*) #2

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize }
attributes #5 = { noreturn nounwind optsize }

!0 = metadata !{metadata !"any pointer", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"int", metadata !1}
