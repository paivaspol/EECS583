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
  call void @llvm.dbg.value(metadata !{%struct._ETree* %etree}, i64 0, metadata !77), !dbg !221
  call void @llvm.dbg.value(metadata !{%struct._Graph* %graph}, i64 0, metadata !78), !dbg !222
  call void @llvm.dbg.declare(metadata !{i32* %size}, metadata !93), !dbg !223
  call void @llvm.dbg.declare(metadata !{i32** %adj}, metadata !96), !dbg !224
  %cmp = icmp eq %struct._ETree* %etree, null, !dbg !225
  br i1 %cmp, label %if.then.thread, label %lor.lhs.false, !dbg !225

if.then.thread:                                   ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !226, !tbaa !228
  %call319 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([54 x i8]* @.str, i64 0, i64 0), %struct._ETree* null, %struct._Graph* %graph) #5, !dbg !226
  br label %if.end, !dbg !231

lor.lhs.false:                                    ; preds = %entry
  %nfront1 = getelementptr inbounds %struct._ETree* %etree, i64 0, i32 0, !dbg !225
  %1 = load i32* %nfront1, align 4, !dbg !225, !tbaa !232
  call void @llvm.dbg.value(metadata !{i32 %1}, i64 0, metadata !91), !dbg !225
  %cmp2 = icmp slt i32 %1, 1, !dbg !225
  br i1 %cmp2, label %if.then.thread320, label %lor.lhs.false3, !dbg !225

if.then.thread320:                                ; preds = %lor.lhs.false
  %2 = load %struct._IO_FILE** @stderr, align 8, !dbg !226, !tbaa !228
  %call321 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([54 x i8]* @.str, i64 0, i64 0), %struct._ETree* %etree, %struct._Graph* %graph) #5, !dbg !226
  br label %if.then12, !dbg !231

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %nvtx4 = getelementptr inbounds %struct._ETree* %etree, i64 0, i32 1, !dbg !225
  %3 = load i32* %nvtx4, align 4, !dbg !225, !tbaa !232
  call void @llvm.dbg.value(metadata !{i32 %3}, i64 0, metadata !92), !dbg !225
  %cmp5 = icmp slt i32 %3, 1, !dbg !225
  %cmp7 = icmp eq %struct._Graph* %graph, null, !dbg !225
  %or.cond = or i1 %cmp5, %cmp7, !dbg !225
  br i1 %or.cond, label %if.then, label %lor.lhs.false8, !dbg !225

lor.lhs.false8:                                   ; preds = %lor.lhs.false3
  %nvtx9 = getelementptr inbounds %struct._Graph* %graph, i64 0, i32 1, !dbg !225
  %4 = load i32* %nvtx9, align 4, !dbg !225, !tbaa !232
  %cmp10 = icmp eq i32 %4, %3, !dbg !225
  br i1 %cmp10, label %if.end18, label %if.then, !dbg !225

if.then:                                          ; preds = %lor.lhs.false8, %lor.lhs.false3
  %5 = load %struct._IO_FILE** @stderr, align 8, !dbg !226, !tbaa !228
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([54 x i8]* @.str, i64 0, i64 0), %struct._ETree* %etree, %struct._Graph* %graph) #5, !dbg !226
  br label %if.then12, !dbg !231

if.then12:                                        ; preds = %if.then, %if.then.thread320
  %6 = load %struct._IO_FILE** @stderr, align 8, !dbg !233, !tbaa !228
  %call13 = call i32 @ETree_writeStats(%struct._ETree* %etree, %struct._IO_FILE* %6) #5, !dbg !233
  br label %if.end, !dbg !235

if.end:                                           ; preds = %if.then.thread, %if.then12
  %cmp14 = icmp eq %struct._Graph* %graph, null, !dbg !236
  br i1 %cmp14, label %if.end17, label %if.then15, !dbg !236

if.then15:                                        ; preds = %if.end
  %7 = load %struct._IO_FILE** @stderr, align 8, !dbg !237, !tbaa !228
  %call16 = call i32 @Graph_writeStats(%struct._Graph* %graph, %struct._IO_FILE* %7) #5, !dbg !237
  br label %if.end17, !dbg !239

if.end17:                                         ; preds = %if.end, %if.then15
  call void @exit(i32 -1) #6, !dbg !240
  unreachable, !dbg !240

if.end18:                                         ; preds = %lor.lhs.false8
  %vwghts19 = getelementptr inbounds %struct._Graph* %graph, i64 0, i32 7, !dbg !241
  %8 = load i32** %vwghts19, align 8, !dbg !241, !tbaa !228
  call void @llvm.dbg.value(metadata !{i32* %8}, i64 0, metadata !106), !dbg !241
  %call20 = call %struct._IVL* @IVL_new() #5, !dbg !242
  call void @llvm.dbg.value(metadata !{%struct._IVL* %call20}, i64 0, metadata !108), !dbg !242
  call void @IVL_init1(%struct._IVL* %call20, i32 1, i32 %1) #5, !dbg !243
  %call21 = call i32* @IVinit(i32 %3, i32 -1) #5, !dbg !244
  call void @llvm.dbg.value(metadata !{i32* %call21}, i64 0, metadata !103), !dbg !244
  %call22 = call i32* @IVinit(i32 %3, i32 -1) #5, !dbg !245
  call void @llvm.dbg.value(metadata !{i32* %call22}, i64 0, metadata !101), !dbg !245
  %call23 = call i32* @IVinit(i32 %3, i32 -1) #5, !dbg !246
  call void @llvm.dbg.value(metadata !{i32* %call23}, i64 0, metadata !100), !dbg !246
  %call24 = call i32* @IVinit(i32 %1, i32 -1) #5, !dbg !247
  call void @llvm.dbg.value(metadata !{i32* %call24}, i64 0, metadata !99), !dbg !247
  %call25 = call i32* @IVinit(i32 %3, i32 -1) #5, !dbg !248
  call void @llvm.dbg.value(metadata !{i32* %call25}, i64 0, metadata !102), !dbg !248
  %nodwghtsIV = getelementptr inbounds %struct._ETree* %etree, i64 0, i32 3, !dbg !249
  %9 = load %struct._IV** %nodwghtsIV, align 8, !dbg !249, !tbaa !228
  %call26 = call i32* @IV_entries(%struct._IV* %9) #5, !dbg !249
  call void @llvm.dbg.value(metadata !{i32* %call26}, i64 0, metadata !104), !dbg !249
  %bndwghtsIV = getelementptr inbounds %struct._ETree* %etree, i64 0, i32 4, !dbg !250
  %10 = load %struct._IV** %bndwghtsIV, align 8, !dbg !250, !tbaa !228
  %call27 = call i32* @IV_entries(%struct._IV* %10) #5, !dbg !250
  call void @llvm.dbg.value(metadata !{i32* %call27}, i64 0, metadata !97), !dbg !250
  %vtxToFrontIV = getelementptr inbounds %struct._ETree* %etree, i64 0, i32 5, !dbg !251
  %11 = load %struct._IV** %vtxToFrontIV, align 8, !dbg !251, !tbaa !228
  %call28 = call i32* @IV_entries(%struct._IV* %11) #5, !dbg !251
  call void @llvm.dbg.value(metadata !{i32* %call28}, i64 0, metadata !107), !dbg !251
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !94), !dbg !252
  %cmp29360 = icmp sgt i32 %3, 0, !dbg !252
  br i1 %cmp29360, label %for.body, label %for.end, !dbg !252

for.body:                                         ; preds = %if.end18, %for.body
  %indvars.iv377 = phi i64 [ %indvars.iv.next378, %for.body ], [ 0, %if.end18 ]
  %arrayidx = getelementptr inbounds i32* %call28, i64 %indvars.iv377, !dbg !254
  %12 = load i32* %arrayidx, align 4, !dbg !254, !tbaa !232
  call void @llvm.dbg.value(metadata !{i32 %12}, i64 0, metadata !82), !dbg !254
  %idxprom30 = sext i32 %12 to i64, !dbg !256
  %arrayidx31 = getelementptr inbounds i32* %call24, i64 %idxprom30, !dbg !256
  %13 = load i32* %arrayidx31, align 4, !dbg !256, !tbaa !232
  %arrayidx33 = getelementptr inbounds i32* %call25, i64 %indvars.iv377, !dbg !256
  store i32 %13, i32* %arrayidx33, align 4, !dbg !256, !tbaa !232
  %14 = trunc i64 %indvars.iv377 to i32, !dbg !257
  store i32 %14, i32* %arrayidx31, align 4, !dbg !257, !tbaa !232
  %indvars.iv.next378 = add i64 %indvars.iv377, 1, !dbg !252
  %lftr.wideiv379 = trunc i64 %indvars.iv.next378 to i32, !dbg !252
  %exitcond380 = icmp eq i32 %lftr.wideiv379, %3, !dbg !252
  br i1 %exitcond380, label %for.end, label %for.body, !dbg !252

for.end:                                          ; preds = %for.body, %if.end18
  %tree36 = getelementptr inbounds %struct._ETree* %etree, i64 0, i32 2, !dbg !258
  %15 = load %struct._Tree** %tree36, align 8, !dbg !258, !tbaa !228
  call void @llvm.dbg.value(metadata !{%struct._Tree* %15}, i64 0, metadata !109), !dbg !258
  %fch37 = getelementptr inbounds %struct._Tree* %15, i64 0, i32 3, !dbg !259
  %16 = load i32** %fch37, align 8, !dbg !259, !tbaa !228
  call void @llvm.dbg.value(metadata !{i32* %16}, i64 0, metadata !98), !dbg !259
  %sib38 = getelementptr inbounds %struct._Tree* %15, i64 0, i32 4, !dbg !260
  %17 = load i32** %sib38, align 8, !dbg !260, !tbaa !228
  call void @llvm.dbg.value(metadata !{i32* %17}, i64 0, metadata !105), !dbg !260
  %call39 = call i32 @Tree_postOTfirst(%struct._Tree* %15) #5, !dbg !261
  call void @llvm.dbg.value(metadata !{i32 %call39}, i64 0, metadata !87), !dbg !261
  %cmp41358 = icmp eq i32 %call39, -1, !dbg !261
  br i1 %cmp41358, label %for.end183, label %for.body42.lr.ph, !dbg !261

for.body42.lr.ph:                                 ; preds = %for.end
  %cmp124 = icmp eq i32* %8, null, !dbg !263
  br label %for.body42, !dbg !261

for.body42:                                       ; preds = %for.body42.lr.ph, %if.end180
  %J.0359 = phi i32 [ %call39, %for.body42.lr.ph ], [ %call182, %if.end180 ]
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !80), !dbg !270
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !85), !dbg !271
  %idxprom43 = sext i32 %J.0359 to i64, !dbg !272
  %arrayidx44 = getelementptr inbounds i32* %call24, i64 %idxprom43, !dbg !272
  %v.1322 = load i32* %arrayidx44, align 4, !dbg !272
  %cmp46323 = icmp eq i32 %v.1322, -1, !dbg !272
  br i1 %cmp46323, label %for.end59, label %for.body47, !dbg !272

for.body47:                                       ; preds = %for.body42, %cond.end
  %indvars.iv = phi i64 [ %indvars.iv.next, %cond.end ], [ 0, %for.body42 ]
  %v.1326 = phi i32 [ %v.1, %cond.end ], [ %v.1322, %for.body42 ]
  %count.0325 = phi i32 [ %inc50, %cond.end ], [ 0, %for.body42 ]
  %intweight.0324 = phi i32 [ %add, %cond.end ], [ 0, %for.body42 ]
  %idxprom48 = sext i32 %v.1326 to i64, !dbg !274
  %arrayidx49 = getelementptr inbounds i32* %call21, i64 %idxprom48, !dbg !274
  store i32 %J.0359, i32* %arrayidx49, align 4, !dbg !274, !tbaa !232
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !272
  %inc50 = add nsw i32 %count.0325, 1, !dbg !276
  call void @llvm.dbg.value(metadata !{i32 %inc50}, i64 0, metadata !80), !dbg !276
  %arrayidx52 = getelementptr inbounds i32* %call23, i64 %indvars.iv, !dbg !276
  store i32 %v.1326, i32* %arrayidx52, align 4, !dbg !276, !tbaa !232
  br i1 %cmp124, label %cond.end, label %cond.true, !dbg !277

cond.true:                                        ; preds = %for.body47
  %arrayidx55 = getelementptr inbounds i32* %8, i64 %idxprom48, !dbg !277
  %18 = load i32* %arrayidx55, align 4, !dbg !277, !tbaa !232
  br label %cond.end, !dbg !277

cond.end:                                         ; preds = %for.body47, %cond.true
  %cond = phi i32 [ %18, %cond.true ], [ 1, %for.body47 ], !dbg !277
  %add = add nsw i32 %cond, %intweight.0324, !dbg !277
  call void @llvm.dbg.value(metadata !{i32 %add}, i64 0, metadata !85), !dbg !277
  %arrayidx58 = getelementptr inbounds i32* %call25, i64 %idxprom48, !dbg !272
  %v.1 = load i32* %arrayidx58, align 4, !dbg !272
  %cmp46 = icmp eq i32 %v.1, -1, !dbg !272
  br i1 %cmp46, label %for.end59, label %for.body47, !dbg !272

for.end59:                                        ; preds = %cond.end, %for.body42
  %count.0.lcssa = phi i32 [ 0, %for.body42 ], [ %inc50, %cond.end ]
  %intweight.0.lcssa = phi i32 [ 0, %for.body42 ], [ %add, %cond.end ]
  call void @llvm.dbg.value(metadata !{i32 %count.0.lcssa}, i64 0, metadata !90), !dbg !278
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !79), !dbg !279
  %arrayidx61 = getelementptr inbounds i32* %16, i64 %idxprom43, !dbg !280
  %I.0329 = load i32* %arrayidx61, align 4, !dbg !280
  %cmp63330 = icmp eq i32 %I.0329, -1, !dbg !280
  br i1 %cmp63330, label %for.cond102.loopexit, label %for.body64, !dbg !280

for.body64:                                       ; preds = %for.end59, %for.inc95
  %I.0333 = phi i32 [ %I.0, %for.inc95 ], [ %I.0329, %for.end59 ]
  %bndweight.0332 = phi i32 [ %bndweight.1.ph, %for.inc95 ], [ 0, %for.end59 ]
  %count.1331 = phi i32 [ %count.2.ph, %for.inc95 ], [ %count.0.lcssa, %for.end59 ]
  call void @IVL_listAndSize(%struct._IVL* %call20, i32 %I.0333, i32* %size, i32** %adj) #5, !dbg !282
  call void @llvm.dbg.value(metadata !{i32* %size}, i64 0, metadata !93), !dbg !284
  %19 = load i32* %size, align 4, !dbg !284, !tbaa !232
  call void @llvm.dbg.value(metadata !{i32** %adj}, i64 0, metadata !96), !dbg !286
  %20 = load i32** %adj, align 8, !dbg !286, !tbaa !228
  %21 = sext i32 %count.1331 to i64
  br label %for.cond65.outer, !dbg !284

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
  %indvars.iv.next364 = add i64 %indvars.iv363, -1, !dbg !288
  %ii.0 = add nsw i32 %ii.0.in, -1, !dbg !284
  %23 = trunc i64 %indvars.iv363 to i32, !dbg !284
  %cmp66 = icmp sgt i32 %23, 0, !dbg !284
  br i1 %cmp66, label %for.body67, label %for.inc95, !dbg !284

for.body67:                                       ; preds = %for.cond65
  call void @llvm.dbg.value(metadata !{i32** %adj}, i64 0, metadata !96), !dbg !286
  %arrayidx69 = getelementptr inbounds i32* %20, i64 %indvars.iv.next364, !dbg !286
  %24 = load i32* %arrayidx69, align 4, !dbg !286, !tbaa !232
  call void @llvm.dbg.value(metadata !{i32 %24}, i64 0, metadata !94), !dbg !286
  %idxprom70 = sext i32 %24 to i64, !dbg !290
  %arrayidx71 = getelementptr inbounds i32* %call28, i64 %idxprom70, !dbg !290
  %25 = load i32* %arrayidx71, align 4, !dbg !290, !tbaa !232
  %cmp72 = icmp sgt i32 %25, %J.0359, !dbg !290
  br i1 %cmp72, label %if.then73, label %for.inc95, !dbg !290

if.then73:                                        ; preds = %for.body67
  %arrayidx75 = getelementptr inbounds i32* %call21, i64 %idxprom70, !dbg !288
  %26 = load i32* %arrayidx75, align 4, !dbg !288, !tbaa !232
  %cmp76 = icmp eq i32 %26, %J.0359, !dbg !288
  br i1 %cmp76, label %for.cond65, label %if.then77, !dbg !288

if.then77:                                        ; preds = %if.then73
  store i32 %J.0359, i32* %arrayidx75, align 4, !dbg !291, !tbaa !232
  %indvars.iv.next366 = add i64 %indvars.iv365, 1, !dbg !293
  %inc80 = add nsw i32 %count.2.ph, 1, !dbg !294
  call void @llvm.dbg.value(metadata !{i32 %inc80}, i64 0, metadata !80), !dbg !294
  %arrayidx82 = getelementptr inbounds i32* %call23, i64 %indvars.iv365, !dbg !294
  store i32 %24, i32* %arrayidx82, align 4, !dbg !294, !tbaa !232
  br i1 %cmp124, label %cond.end88, label %cond.true84, !dbg !295

cond.true84:                                      ; preds = %if.then77
  %arrayidx86 = getelementptr inbounds i32* %8, i64 %idxprom70, !dbg !295
  %27 = load i32* %arrayidx86, align 4, !dbg !295, !tbaa !232
  br label %cond.end88, !dbg !295

cond.end88:                                       ; preds = %if.then77, %cond.true84
  %cond89 = phi i32 [ %27, %cond.true84 ], [ 1, %if.then77 ], !dbg !295
  %add90 = add nsw i32 %cond89, %bndweight.1.ph, !dbg !295
  call void @llvm.dbg.value(metadata !{i32 %add90}, i64 0, metadata !79), !dbg !295
  br label %for.cond65.outer, !dbg !293

for.inc95:                                        ; preds = %for.cond65, %for.body67
  %idxprom96 = sext i32 %I.0333 to i64, !dbg !280
  %arrayidx97 = getelementptr inbounds i32* %17, i64 %idxprom96, !dbg !280
  %I.0 = load i32* %arrayidx97, align 4, !dbg !280
  %cmp63 = icmp eq i32 %I.0, -1, !dbg !280
  br i1 %cmp63, label %for.cond102.loopexit, label %for.body64, !dbg !280

for.cond102.loopexit:                             ; preds = %for.inc95, %for.end59
  %bndweight.0.lcssa = phi i32 [ 0, %for.end59 ], [ %bndweight.1.ph, %for.inc95 ]
  %count.1.lcssa = phi i32 [ %count.0.lcssa, %for.end59 ], [ %count.2.ph, %for.inc95 ]
  %v.2342 = load i32* %arrayidx44, align 4, !dbg !296
  %cmp103343 = icmp eq i32 %v.2342, -1, !dbg !296
  br i1 %cmp103343, label %for.end139, label %for.body104, !dbg !296

for.body104:                                      ; preds = %for.cond102.loopexit, %for.inc136
  %v.2346 = phi i32 [ %v.2, %for.inc136 ], [ %v.2342, %for.cond102.loopexit ]
  %bndweight.3345 = phi i32 [ %bndweight.4.lcssa, %for.inc136 ], [ %bndweight.0.lcssa, %for.cond102.loopexit ]
  %count.4344 = phi i32 [ %count.5.lcssa, %for.inc136 ], [ %count.1.lcssa, %for.cond102.loopexit ]
  call void @Graph_adjAndSize(%struct._Graph* %graph, i32 %v.2346, i32* %size, i32** %adj) #5, !dbg !297
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !84), !dbg !298
  call void @llvm.dbg.value(metadata !{i32* %size}, i64 0, metadata !93), !dbg !298
  %28 = load i32* %size, align 4, !dbg !298, !tbaa !232
  %cmp106336 = icmp sgt i32 %28, 0, !dbg !298
  br i1 %cmp106336, label %for.body107.lr.ph, label %for.inc136, !dbg !298

for.body107.lr.ph:                                ; preds = %for.body104
  call void @llvm.dbg.value(metadata !{i32** %adj}, i64 0, metadata !96), !dbg !299
  %29 = load i32** %adj, align 8, !dbg !299, !tbaa !228
  br label %for.body107, !dbg !298

for.body107:                                      ; preds = %for.body107.lr.ph, %for.inc133
  %30 = phi i32 [ %28, %for.body107.lr.ph ], [ %35, %for.inc133 ]
  %indvars.iv367 = phi i64 [ 0, %for.body107.lr.ph ], [ %indvars.iv.next368, %for.inc133 ]
  %bndweight.4339 = phi i32 [ %bndweight.3345, %for.body107.lr.ph ], [ %bndweight.5, %for.inc133 ]
  %count.5338 = phi i32 [ %count.4344, %for.body107.lr.ph ], [ %count.6, %for.inc133 ]
  call void @llvm.dbg.value(metadata !{i32** %adj}, i64 0, metadata !96), !dbg !299
  %arrayidx109 = getelementptr inbounds i32* %29, i64 %indvars.iv367, !dbg !299
  %31 = load i32* %arrayidx109, align 4, !dbg !299, !tbaa !232
  call void @llvm.dbg.value(metadata !{i32 %31}, i64 0, metadata !95), !dbg !299
  %cmp110 = icmp slt i32 %31, %3, !dbg !300
  br i1 %cmp110, label %land.lhs.true, label %for.inc133, !dbg !300

land.lhs.true:                                    ; preds = %for.body107
  %idxprom111 = sext i32 %31 to i64, !dbg !300
  %arrayidx112 = getelementptr inbounds i32* %call28, i64 %idxprom111, !dbg !300
  %32 = load i32* %arrayidx112, align 4, !dbg !300, !tbaa !232
  %cmp113 = icmp sgt i32 %32, %J.0359, !dbg !300
  br i1 %cmp113, label %land.lhs.true114, label %for.inc133, !dbg !300

land.lhs.true114:                                 ; preds = %land.lhs.true
  %arrayidx116 = getelementptr inbounds i32* %call21, i64 %idxprom111, !dbg !300
  %33 = load i32* %arrayidx116, align 4, !dbg !300, !tbaa !232
  %cmp117 = icmp eq i32 %33, %J.0359, !dbg !300
  br i1 %cmp117, label %for.inc133, label %if.then118, !dbg !300

if.then118:                                       ; preds = %land.lhs.true114
  store i32 %J.0359, i32* %arrayidx116, align 4, !dbg !301, !tbaa !232
  %inc121 = add nsw i32 %count.5338, 1, !dbg !302
  call void @llvm.dbg.value(metadata !{i32 %inc121}, i64 0, metadata !80), !dbg !302
  %idxprom122 = sext i32 %count.5338 to i64, !dbg !302
  %arrayidx123 = getelementptr inbounds i32* %call23, i64 %idxprom122, !dbg !302
  store i32 %31, i32* %arrayidx123, align 4, !dbg !302, !tbaa !232
  br i1 %cmp124, label %cond.end129, label %cond.true125, !dbg !263

cond.true125:                                     ; preds = %if.then118
  %arrayidx127 = getelementptr inbounds i32* %8, i64 %idxprom111, !dbg !263
  %34 = load i32* %arrayidx127, align 4, !dbg !263, !tbaa !232
  br label %cond.end129, !dbg !263

cond.end129:                                      ; preds = %if.then118, %cond.true125
  %cond130 = phi i32 [ %34, %cond.true125 ], [ 1, %if.then118 ], !dbg !263
  %add131 = add nsw i32 %cond130, %bndweight.4339, !dbg !263
  call void @llvm.dbg.value(metadata !{i32 %add131}, i64 0, metadata !79), !dbg !263
  call void @llvm.dbg.value(metadata !{i32* %size}, i64 0, metadata !93), !dbg !298
  %.pre = load i32* %size, align 4, !dbg !298, !tbaa !232
  br label %for.inc133, !dbg !303

for.inc133:                                       ; preds = %land.lhs.true114, %for.body107, %land.lhs.true, %cond.end129
  %35 = phi i32 [ %.pre, %cond.end129 ], [ %30, %land.lhs.true114 ], [ %30, %land.lhs.true ], [ %30, %for.body107 ], !dbg !298
  %count.6 = phi i32 [ %inc121, %cond.end129 ], [ %count.5338, %land.lhs.true114 ], [ %count.5338, %land.lhs.true ], [ %count.5338, %for.body107 ]
  %bndweight.5 = phi i32 [ %add131, %cond.end129 ], [ %bndweight.4339, %land.lhs.true114 ], [ %bndweight.4339, %land.lhs.true ], [ %bndweight.4339, %for.body107 ]
  %indvars.iv.next368 = add i64 %indvars.iv367, 1, !dbg !298
  call void @llvm.dbg.value(metadata !{i32* %size}, i64 0, metadata !93), !dbg !298
  %36 = trunc i64 %indvars.iv.next368 to i32, !dbg !298
  %cmp106 = icmp slt i32 %36, %35, !dbg !298
  br i1 %cmp106, label %for.body107, label %for.inc136, !dbg !298

for.inc136:                                       ; preds = %for.inc133, %for.body104
  %bndweight.4.lcssa = phi i32 [ %bndweight.3345, %for.body104 ], [ %bndweight.5, %for.inc133 ]
  %count.5.lcssa = phi i32 [ %count.4344, %for.body104 ], [ %count.6, %for.inc133 ]
  %idxprom137 = sext i32 %v.2346 to i64, !dbg !296
  %arrayidx138 = getelementptr inbounds i32* %call25, i64 %idxprom137, !dbg !296
  %v.2 = load i32* %arrayidx138, align 4, !dbg !296
  %cmp103 = icmp eq i32 %v.2, -1, !dbg !296
  br i1 %cmp103, label %for.end139, label %for.body104, !dbg !296

for.end139:                                       ; preds = %for.inc136, %for.cond102.loopexit
  %bndweight.3.lcssa = phi i32 [ %bndweight.0.lcssa, %for.cond102.loopexit ], [ %bndweight.4.lcssa, %for.inc136 ]
  %count.4.lcssa = phi i32 [ %count.1.lcssa, %for.cond102.loopexit ], [ %count.5.lcssa, %for.inc136 ]
  %arrayidx141 = getelementptr inbounds i32* %call26, i64 %idxprom43, !dbg !304
  store i32 %intweight.0.lcssa, i32* %arrayidx141, align 4, !dbg !304, !tbaa !232
  %arrayidx143 = getelementptr inbounds i32* %call27, i64 %idxprom43, !dbg !305
  store i32 %bndweight.3.lcssa, i32* %arrayidx143, align 4, !dbg !305, !tbaa !232
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !84), !dbg !306
  %cmp145349 = icmp sgt i32 %count.4.lcssa, 0, !dbg !306
  br i1 %cmp145349, label %for.body146, label %for.end155.thread, !dbg !306

for.end155.thread:                                ; preds = %for.end139
  call void @IV2qsortUp(i32 %count.4.lcssa, i32* %call22, i32* %call23) #5, !dbg !308
  call void @llvm.dbg.value(metadata !{i32 %J.0359}, i64 0, metadata !82), !dbg !309
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !81), !dbg !310
  call void @llvm.dbg.value(metadata !311, i64 0, metadata !84), !dbg !312
  br label %while.end, !dbg !313

for.body146:                                      ; preds = %for.end139, %for.body146
  %indvars.iv369 = phi i64 [ %indvars.iv.next370, %for.body146 ], [ 0, %for.end139 ]
  %arrayidx148 = getelementptr inbounds i32* %call23, i64 %indvars.iv369, !dbg !314
  %37 = load i32* %arrayidx148, align 4, !dbg !314, !tbaa !232
  call void @llvm.dbg.value(metadata !{i32 %37}, i64 0, metadata !94), !dbg !314
  %idxprom149 = sext i32 %37 to i64, !dbg !316
  %arrayidx150 = getelementptr inbounds i32* %call28, i64 %idxprom149, !dbg !316
  %38 = load i32* %arrayidx150, align 4, !dbg !316, !tbaa !232
  %arrayidx152 = getelementptr inbounds i32* %call22, i64 %indvars.iv369, !dbg !316
  store i32 %38, i32* %arrayidx152, align 4, !dbg !316, !tbaa !232
  %indvars.iv.next370 = add i64 %indvars.iv369, 1, !dbg !306
  %lftr.wideiv = trunc i64 %indvars.iv.next370 to i32, !dbg !306
  %exitcond = icmp eq i32 %lftr.wideiv, %count.4.lcssa, !dbg !306
  br i1 %exitcond, label %for.end155, label %for.body146, !dbg !306

for.end155:                                       ; preds = %for.body146
  call void @IV2qsortUp(i32 %count.4.lcssa, i32* %call22, i32* %call23) #5, !dbg !308
  call void @llvm.dbg.value(metadata !{i32 %J.0359}, i64 0, metadata !82), !dbg !309
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !81), !dbg !310
  call void @llvm.dbg.value(metadata !311, i64 0, metadata !84), !dbg !312
  %cmp156351 = icmp sgt i32 %count.4.lcssa, 1, !dbg !313
  br i1 %cmp156351, label %while.body, label %while.end, !dbg !313

while.body:                                       ; preds = %for.end155, %if.end171
  %indvars.iv372 = phi i64 [ %indvars.iv.next373, %if.end171 ], [ 1, %for.end155 ]
  %first.0.neg355 = phi i32 [ %first.0.neg, %if.end171 ], [ 0, %for.end155 ]
  %first.0354 = phi i32 [ %first.1, %if.end171 ], [ 0, %for.end155 ]
  %front.0353 = phi i32 [ %front.1, %if.end171 ], [ %J.0359, %for.end155 ]
  %arrayidx158 = getelementptr inbounds i32* %call23, i64 %indvars.iv372, !dbg !317
  %39 = load i32* %arrayidx158, align 4, !dbg !317, !tbaa !232
  call void @llvm.dbg.value(metadata !{i32 %39}, i64 0, metadata !94), !dbg !317
  %idxprom159 = sext i32 %39 to i64, !dbg !319
  %arrayidx160 = getelementptr inbounds i32* %call28, i64 %idxprom159, !dbg !319
  %40 = load i32* %arrayidx160, align 4, !dbg !319, !tbaa !232
  %cmp161 = icmp eq i32 %40, %front.0353, !dbg !319
  br i1 %cmp161, label %if.end171, label %if.then162, !dbg !319

if.then162:                                       ; preds = %while.body
  %41 = add nsw i64 %indvars.iv372, 4294967295, !dbg !320
  %42 = trunc i64 %41 to i32, !dbg !322
  %sub164 = add i32 %42, %first.0.neg355, !dbg !322
  %43 = trunc i64 %indvars.iv372 to i32, !dbg !322
  %add165 = add i32 %43, %first.0.neg355, !dbg !322
  call void @llvm.dbg.value(metadata !{i32 %add165}, i64 0, metadata !93), !dbg !322
  store i32 %add165, i32* %size, align 4, !dbg !322, !tbaa !232
  %cmp166 = icmp sgt i32 %sub164, 0, !dbg !322
  br i1 %cmp166, label %if.then167, label %if.end168, !dbg !322

if.then167:                                       ; preds = %if.then162
  %idx.ext = sext i32 %first.0354 to i64, !dbg !323
  %add.ptr = getelementptr inbounds i32* %call23, i64 %idx.ext, !dbg !323
  call void @IVqsortUp(i32 %add165, i32* %add.ptr) #5, !dbg !323
  br label %if.end168, !dbg !325

if.end168:                                        ; preds = %if.then167, %if.then162
  call void @llvm.dbg.value(metadata !326, i64 0, metadata !81), !dbg !327
  %44 = load i32* %arrayidx160, align 4, !dbg !328, !tbaa !232
  call void @llvm.dbg.value(metadata !{i32 %44}, i64 0, metadata !82), !dbg !328
  br label %if.end171, !dbg !329

if.end171:                                        ; preds = %while.body, %if.end168
  %front.1 = phi i32 [ %44, %if.end168 ], [ %front.0353, %while.body ]
  %first.1 = phi i32 [ %43, %if.end168 ], [ %first.0354, %while.body ]
  %indvars.iv.next373 = add i64 %indvars.iv372, 1, !dbg !313
  %first.0.neg = sub i32 0, %first.1
  %lftr.wideiv375 = trunc i64 %indvars.iv.next373 to i32, !dbg !313
  %exitcond376 = icmp eq i32 %lftr.wideiv375, %count.4.lcssa, !dbg !313
  br i1 %exitcond376, label %while.end, label %while.body, !dbg !313

while.end:                                        ; preds = %if.end171, %for.end155.thread, %for.end155
  %first.0.neg.lcssa = phi i32 [ 0, %for.end155 ], [ 0, %for.end155.thread ], [ %first.0.neg, %if.end171 ]
  %first.0.lcssa = phi i32 [ 0, %for.end155 ], [ 0, %for.end155.thread ], [ %first.1, %if.end171 ]
  %sub173 = add nsw i32 %count.4.lcssa, -1, !dbg !330
  call void @llvm.dbg.value(metadata !{i32 %sub173}, i64 0, metadata !88), !dbg !330
  %sub174 = add i32 %sub173, %first.0.neg.lcssa, !dbg !331
  %add175 = add i32 %count.4.lcssa, %first.0.neg.lcssa, !dbg !331
  call void @llvm.dbg.value(metadata !{i32 %add175}, i64 0, metadata !93), !dbg !331
  store i32 %add175, i32* %size, align 4, !dbg !331, !tbaa !232
  %cmp176 = icmp sgt i32 %sub174, 0, !dbg !331
  br i1 %cmp176, label %if.then177, label %if.end180, !dbg !331

if.then177:                                       ; preds = %while.end
  %idx.ext178 = sext i32 %first.0.lcssa to i64, !dbg !332
  %add.ptr179 = getelementptr inbounds i32* %call23, i64 %idx.ext178, !dbg !332
  call void @IVqsortUp(i32 %add175, i32* %add.ptr179) #5, !dbg !332
  br label %if.end180, !dbg !334

if.end180:                                        ; preds = %if.then177, %while.end
  call void @IVL_setList(%struct._IVL* %call20, i32 %J.0359, i32 %count.4.lcssa, i32* %call23) #5, !dbg !335
  %call182 = call i32 @Tree_postOTnext(%struct._Tree* %15, i32 %J.0359) #5, !dbg !336
  call void @llvm.dbg.value(metadata !{i32 %call182}, i64 0, metadata !87), !dbg !336
  %cmp41 = icmp eq i32 %call182, -1, !dbg !261
  br i1 %cmp41, label %for.end183, label %for.body42, !dbg !261

for.end183:                                       ; preds = %if.end180, %for.end
  call void @IVfree(i32* %call23) #5, !dbg !337
  call void @IVfree(i32* %call21) #5, !dbg !338
  call void @IVfree(i32* %call22) #5, !dbg !339
  call void @IVfree(i32* %call24) #5, !dbg !340
  call void @IVfree(i32* %call25) #5, !dbg !341
  ret %struct._IVL* %call20, !dbg !342
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #2

; Function Attrs: optsize
declare i32 @ETree_writeStats(%struct._ETree*, %struct._IO_FILE*) #3

; Function Attrs: optsize
declare i32 @Graph_writeStats(%struct._Graph*, %struct._IO_FILE*) #3

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32) #4

; Function Attrs: optsize
declare %struct._IVL* @IVL_new() #3

; Function Attrs: optsize
declare void @IVL_init1(%struct._IVL*, i32, i32) #3

; Function Attrs: optsize
declare i32* @IVinit(i32, i32) #3

; Function Attrs: optsize
declare i32* @IV_entries(%struct._IV*) #3

; Function Attrs: optsize
declare i32 @Tree_postOTfirst(%struct._Tree*) #3

; Function Attrs: optsize
declare void @IVL_listAndSize(%struct._IVL*, i32, i32*, i32**) #3

; Function Attrs: optsize
declare void @Graph_adjAndSize(%struct._Graph*, i32, i32*, i32**) #3

; Function Attrs: optsize
declare void @IV2qsortUp(i32, i32*, i32*) #3

; Function Attrs: optsize
declare void @IVqsortUp(i32, i32*) #3

; Function Attrs: optsize
declare void @IVL_setList(%struct._IVL*, i32, i32, i32*) #3

; Function Attrs: optsize
declare i32 @Tree_postOTnext(%struct._Tree*, i32) #3

; Function Attrs: optsize
declare void @IVfree(i32*) #3

; Function Attrs: nounwind optsize uwtable
define %struct._IVL* @SymbFac_initFromInpMtx(%struct._ETree* %etree, %struct._InpMtx* %inpmtx) #0 {
entry:
  %size = alloca i32, align 4
  %adj = alloca i32*, align 8
  call void @llvm.dbg.value(metadata !{%struct._ETree* %etree}, i64 0, metadata !143), !dbg !343
  call void @llvm.dbg.value(metadata !{%struct._InpMtx* %inpmtx}, i64 0, metadata !144), !dbg !344
  call void @llvm.dbg.declare(metadata !{i32* %size}, metadata !156), !dbg !345
  call void @llvm.dbg.declare(metadata !{i32** %adj}, metadata !159), !dbg !346
  %cmp = icmp eq %struct._ETree* %etree, null, !dbg !347
  br i1 %cmp, label %if.then.thread, label %lor.lhs.false, !dbg !347

if.then.thread:                                   ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !348, !tbaa !228
  %call246 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([59 x i8]* @.str1, i64 0, i64 0), %struct._ETree* null, %struct._InpMtx* %inpmtx) #5, !dbg !348
  br label %if.end, !dbg !350

lor.lhs.false:                                    ; preds = %entry
  %nfront1 = getelementptr inbounds %struct._ETree* %etree, i64 0, i32 0, !dbg !347
  %1 = load i32* %nfront1, align 4, !dbg !347, !tbaa !232
  call void @llvm.dbg.value(metadata !{i32 %1}, i64 0, metadata !153), !dbg !347
  %cmp2 = icmp slt i32 %1, 1, !dbg !347
  br i1 %cmp2, label %if.then.thread247, label %lor.lhs.false3, !dbg !347

if.then.thread247:                                ; preds = %lor.lhs.false
  %2 = load %struct._IO_FILE** @stderr, align 8, !dbg !348, !tbaa !228
  %call248 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([59 x i8]* @.str1, i64 0, i64 0), %struct._ETree* %etree, %struct._InpMtx* %inpmtx) #5, !dbg !348
  br label %if.then9, !dbg !350

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %nvtx4 = getelementptr inbounds %struct._ETree* %etree, i64 0, i32 1, !dbg !347
  %3 = load i32* %nvtx4, align 4, !dbg !347, !tbaa !232
  call void @llvm.dbg.value(metadata !{i32 %3}, i64 0, metadata !155), !dbg !347
  %cmp5 = icmp slt i32 %3, 1, !dbg !347
  %cmp7 = icmp eq %struct._InpMtx* %inpmtx, null, !dbg !347
  %or.cond = or i1 %cmp5, %cmp7, !dbg !347
  br i1 %or.cond, label %if.then, label %if.end15, !dbg !347

if.then:                                          ; preds = %lor.lhs.false3
  %4 = load %struct._IO_FILE** @stderr, align 8, !dbg !348, !tbaa !228
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([59 x i8]* @.str1, i64 0, i64 0), %struct._ETree* %etree, %struct._InpMtx* %inpmtx) #5, !dbg !348
  br label %if.then9, !dbg !350

if.then9:                                         ; preds = %if.then, %if.then.thread247
  %5 = load %struct._IO_FILE** @stderr, align 8, !dbg !351, !tbaa !228
  %call10 = call i32 @ETree_writeStats(%struct._ETree* %etree, %struct._IO_FILE* %5) #5, !dbg !351
  br label %if.end, !dbg !353

if.end:                                           ; preds = %if.then.thread, %if.then9
  %cmp11 = icmp eq %struct._InpMtx* %inpmtx, null, !dbg !354
  br i1 %cmp11, label %if.end14, label %if.then12, !dbg !354

if.then12:                                        ; preds = %if.end
  %6 = load %struct._IO_FILE** @stderr, align 8, !dbg !355, !tbaa !228
  %call13 = call i32 @InpMtx_writeStats(%struct._InpMtx* %inpmtx, %struct._IO_FILE* %6) #5, !dbg !355
  br label %if.end14, !dbg !357

if.end14:                                         ; preds = %if.end, %if.then12
  call void @exit(i32 -1) #6, !dbg !358
  unreachable, !dbg !358

if.end15:                                         ; preds = %lor.lhs.false3
  %coordType = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 0, !dbg !359
  %7 = load i32* %coordType, align 4, !dbg !359, !tbaa !232
  %cmp16 = icmp eq i32 %7, 3, !dbg !359
  br i1 %cmp16, label %if.end20, label %if.then17, !dbg !359

if.then17:                                        ; preds = %if.end15
  %8 = load %struct._IO_FILE** @stderr, align 8, !dbg !360, !tbaa !228
  %call18 = call i32 @InpMtx_coordType(%struct._InpMtx* %inpmtx) #5, !dbg !362
  %call19 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %8, i8* getelementptr inbounds ([96 x i8]* @.str2, i64 0, i64 0), i32 %call18) #5, !dbg !362
  call void @exit(i32 -1) #6, !dbg !363
  unreachable, !dbg !363

if.end20:                                         ; preds = %if.end15
  %storageMode = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 1, !dbg !364
  %9 = load i32* %storageMode, align 4, !dbg !364, !tbaa !232
  %cmp21 = icmp eq i32 %9, 3, !dbg !364
  br i1 %cmp21, label %if.end25, label %if.then22, !dbg !364

if.then22:                                        ; preds = %if.end20
  %10 = load %struct._IO_FILE** @stderr, align 8, !dbg !365, !tbaa !228
  %call23 = call i32 @InpMtx_storageMode(%struct._InpMtx* %inpmtx) #5, !dbg !367
  %call24 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %10, i8* getelementptr inbounds ([97 x i8]* @.str3, i64 0, i64 0), i32 %call23) #5, !dbg !367
  call void @exit(i32 -1) #6, !dbg !368
  unreachable, !dbg !368

if.end25:                                         ; preds = %if.end20
  %call26 = call i32 @InpMtx_nvector(%struct._InpMtx* %inpmtx) #5, !dbg !369
  call void @llvm.dbg.value(metadata !{i32 %call26}, i64 0, metadata !154), !dbg !369
  %call27 = call %struct._IVL* @IVL_new() #5, !dbg !370
  call void @llvm.dbg.value(metadata !{%struct._IVL* %call27}, i64 0, metadata !170), !dbg !370
  call void @IVL_init1(%struct._IVL* %call27, i32 1, i32 %1) #5, !dbg !371
  %call28 = call i32* @IVinit(i32 %3, i32 -1) #5, !dbg !372
  call void @llvm.dbg.value(metadata !{i32* %call28}, i64 0, metadata !166), !dbg !372
  %call29 = call i32* @IVinit(i32 %3, i32 -1) #5, !dbg !373
  call void @llvm.dbg.value(metadata !{i32* %call29}, i64 0, metadata !164), !dbg !373
  %call30 = call i32* @IVinit(i32 %3, i32 -1) #5, !dbg !374
  call void @llvm.dbg.value(metadata !{i32* %call30}, i64 0, metadata !163), !dbg !374
  %call31 = call i32* @IVinit(i32 %1, i32 -1) #5, !dbg !375
  call void @llvm.dbg.value(metadata !{i32* %call31}, i64 0, metadata !162), !dbg !375
  %call32 = call i32* @IVinit(i32 %3, i32 -1) #5, !dbg !376
  call void @llvm.dbg.value(metadata !{i32* %call32}, i64 0, metadata !165), !dbg !376
  %nodwghtsIV = getelementptr inbounds %struct._ETree* %etree, i64 0, i32 3, !dbg !377
  %11 = load %struct._IV** %nodwghtsIV, align 8, !dbg !377, !tbaa !228
  %call33 = call i32* @IV_entries(%struct._IV* %11) #5, !dbg !377
  call void @llvm.dbg.value(metadata !{i32* %call33}, i64 0, metadata !167), !dbg !377
  %bndwghtsIV = getelementptr inbounds %struct._ETree* %etree, i64 0, i32 4, !dbg !378
  %12 = load %struct._IV** %bndwghtsIV, align 8, !dbg !378, !tbaa !228
  %call34 = call i32* @IV_entries(%struct._IV* %12) #5, !dbg !378
  call void @llvm.dbg.value(metadata !{i32* %call34}, i64 0, metadata !160), !dbg !378
  %vtxToFrontIV = getelementptr inbounds %struct._ETree* %etree, i64 0, i32 5, !dbg !379
  %13 = load %struct._IV** %vtxToFrontIV, align 8, !dbg !379, !tbaa !228
  %call35 = call i32* @IV_entries(%struct._IV* %13) #5, !dbg !379
  call void @llvm.dbg.value(metadata !{i32* %call35}, i64 0, metadata !169), !dbg !379
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !157), !dbg !380
  %cmp36272 = icmp sgt i32 %3, 0, !dbg !380
  br i1 %cmp36272, label %for.body, label %for.end, !dbg !380

for.body:                                         ; preds = %if.end25, %for.body
  %indvars.iv281 = phi i64 [ %indvars.iv.next282, %for.body ], [ 0, %if.end25 ]
  %arrayidx = getelementptr inbounds i32* %call35, i64 %indvars.iv281, !dbg !382
  %14 = load i32* %arrayidx, align 4, !dbg !382, !tbaa !232
  call void @llvm.dbg.value(metadata !{i32 %14}, i64 0, metadata !146), !dbg !382
  %idxprom37 = sext i32 %14 to i64, !dbg !384
  %arrayidx38 = getelementptr inbounds i32* %call31, i64 %idxprom37, !dbg !384
  %15 = load i32* %arrayidx38, align 4, !dbg !384, !tbaa !232
  %arrayidx40 = getelementptr inbounds i32* %call32, i64 %indvars.iv281, !dbg !384
  store i32 %15, i32* %arrayidx40, align 4, !dbg !384, !tbaa !232
  %16 = trunc i64 %indvars.iv281 to i32, !dbg !385
  store i32 %16, i32* %arrayidx38, align 4, !dbg !385, !tbaa !232
  %indvars.iv.next282 = add i64 %indvars.iv281, 1, !dbg !380
  %lftr.wideiv = trunc i64 %indvars.iv.next282 to i32, !dbg !380
  %exitcond = icmp eq i32 %lftr.wideiv, %3, !dbg !380
  br i1 %exitcond, label %for.end, label %for.body, !dbg !380

for.end:                                          ; preds = %for.body, %if.end25
  %tree43 = getelementptr inbounds %struct._ETree* %etree, i64 0, i32 2, !dbg !386
  %17 = load %struct._Tree** %tree43, align 8, !dbg !386, !tbaa !228
  call void @llvm.dbg.value(metadata !{%struct._Tree* %17}, i64 0, metadata !171), !dbg !386
  %fch44 = getelementptr inbounds %struct._Tree* %17, i64 0, i32 3, !dbg !387
  %18 = load i32** %fch44, align 8, !dbg !387, !tbaa !228
  call void @llvm.dbg.value(metadata !{i32* %18}, i64 0, metadata !161), !dbg !387
  %sib45 = getelementptr inbounds %struct._Tree* %17, i64 0, i32 4, !dbg !388
  %19 = load i32** %sib45, align 8, !dbg !388, !tbaa !228
  call void @llvm.dbg.value(metadata !{i32* %19}, i64 0, metadata !168), !dbg !388
  %call46 = call i32 @Tree_postOTfirst(%struct._Tree* %17) #5, !dbg !389
  call void @llvm.dbg.value(metadata !{i32 %call46}, i64 0, metadata !150), !dbg !389
  %cmp48270 = icmp eq i32 %call46, -1, !dbg !389
  br i1 %cmp48270, label %for.end145, label %for.body49, !dbg !389

for.body49:                                       ; preds = %for.end, %for.end137
  %J.0271 = phi i32 [ %call144, %for.end137 ], [ %call46, %for.end ]
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !145), !dbg !391
  %idxprom50 = sext i32 %J.0271 to i64, !dbg !393
  %arrayidx51 = getelementptr inbounds i32* %call31, i64 %idxprom50, !dbg !393
  %v.1249 = load i32* %arrayidx51, align 4, !dbg !393
  %cmp53250 = icmp eq i32 %v.1249, -1, !dbg !393
  br i1 %cmp53250, label %for.end63, label %for.body54, !dbg !393

for.body54:                                       ; preds = %for.body49, %for.body54
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body54 ], [ 0, %for.body49 ]
  %v.1252 = phi i32 [ %v.1, %for.body54 ], [ %v.1249, %for.body49 ]
  %count.0251 = phi i32 [ %inc57, %for.body54 ], [ 0, %for.body49 ]
  %idxprom55 = sext i32 %v.1252 to i64, !dbg !395
  %arrayidx56 = getelementptr inbounds i32* %call28, i64 %idxprom55, !dbg !395
  store i32 %J.0271, i32* %arrayidx56, align 4, !dbg !395, !tbaa !232
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !393
  %inc57 = add nsw i32 %count.0251, 1, !dbg !397
  call void @llvm.dbg.value(metadata !{i32 %inc57}, i64 0, metadata !145), !dbg !397
  %arrayidx59 = getelementptr inbounds i32* %call30, i64 %indvars.iv, !dbg !397
  store i32 %v.1252, i32* %arrayidx59, align 4, !dbg !397, !tbaa !232
  %arrayidx62 = getelementptr inbounds i32* %call32, i64 %idxprom55, !dbg !393
  %v.1 = load i32* %arrayidx62, align 4, !dbg !393
  %cmp53 = icmp eq i32 %v.1, -1, !dbg !393
  br i1 %cmp53, label %for.end63, label %for.body54, !dbg !393

for.end63:                                        ; preds = %for.body54, %for.body49
  %count.0.lcssa = phi i32 [ 0, %for.body49 ], [ %inc57, %for.body54 ]
  call void @llvm.dbg.value(metadata !{i32 %count.0.lcssa}, i64 0, metadata !152), !dbg !398
  %arrayidx65 = getelementptr inbounds i32* %18, i64 %idxprom50, !dbg !399
  %I.0254 = load i32* %arrayidx65, align 4, !dbg !399
  %cmp67255 = icmp eq i32 %I.0254, -1, !dbg !399
  br i1 %cmp67255, label %for.cond98.loopexit, label %for.body68, !dbg !399

for.body68:                                       ; preds = %for.end63, %for.inc91
  %I.0257 = phi i32 [ %I.0, %for.inc91 ], [ %I.0254, %for.end63 ]
  %count.1256 = phi i32 [ %count.2.ph, %for.inc91 ], [ %count.0.lcssa, %for.end63 ]
  call void @IVL_listAndSize(%struct._IVL* %call27, i32 %I.0257, i32* %size, i32** %adj) #5, !dbg !401
  call void @llvm.dbg.value(metadata !{i32* %size}, i64 0, metadata !156), !dbg !403
  %20 = load i32* %size, align 4, !dbg !403, !tbaa !232
  call void @llvm.dbg.value(metadata !{i32** %adj}, i64 0, metadata !159), !dbg !405
  %21 = load i32** %adj, align 8, !dbg !405, !tbaa !228
  %22 = sext i32 %count.1256 to i64
  br label %for.cond69.outer, !dbg !403

for.cond69.outer:                                 ; preds = %if.then81, %for.body68
  %indvars.iv277 = phi i64 [ %indvars.iv.next278, %if.then81 ], [ %22, %for.body68 ]
  %ii.0.in.ph = phi i32 [ %ii.0, %if.then81 ], [ %20, %for.body68 ]
  %count.2.ph = phi i32 [ %inc84, %if.then81 ], [ %count.1256, %for.body68 ]
  %23 = sext i32 %ii.0.in.ph to i64
  br label %for.cond69

for.cond69:                                       ; preds = %for.cond69.outer, %if.then77
  %indvars.iv275 = phi i64 [ %23, %for.cond69.outer ], [ %indvars.iv.next276, %if.then77 ]
  %ii.0.in = phi i32 [ %ii.0.in.ph, %for.cond69.outer ], [ %ii.0, %if.then77 ]
  %indvars.iv.next276 = add i64 %indvars.iv275, -1, !dbg !407
  %ii.0 = add nsw i32 %ii.0.in, -1, !dbg !403
  %24 = trunc i64 %indvars.iv275 to i32, !dbg !403
  %cmp70 = icmp sgt i32 %24, 0, !dbg !403
  br i1 %cmp70, label %for.body71, label %for.inc91, !dbg !403

for.body71:                                       ; preds = %for.cond69
  call void @llvm.dbg.value(metadata !{i32** %adj}, i64 0, metadata !159), !dbg !405
  %arrayidx73 = getelementptr inbounds i32* %21, i64 %indvars.iv.next276, !dbg !405
  %25 = load i32* %arrayidx73, align 4, !dbg !405, !tbaa !232
  call void @llvm.dbg.value(metadata !{i32 %25}, i64 0, metadata !157), !dbg !405
  %idxprom74 = sext i32 %25 to i64, !dbg !409
  %arrayidx75 = getelementptr inbounds i32* %call35, i64 %idxprom74, !dbg !409
  %26 = load i32* %arrayidx75, align 4, !dbg !409, !tbaa !232
  %cmp76 = icmp sgt i32 %26, %J.0271, !dbg !409
  br i1 %cmp76, label %if.then77, label %for.inc91, !dbg !409

if.then77:                                        ; preds = %for.body71
  %arrayidx79 = getelementptr inbounds i32* %call28, i64 %idxprom74, !dbg !407
  %27 = load i32* %arrayidx79, align 4, !dbg !407, !tbaa !232
  %cmp80 = icmp eq i32 %27, %J.0271, !dbg !407
  br i1 %cmp80, label %for.cond69, label %if.then81, !dbg !407

if.then81:                                        ; preds = %if.then77
  store i32 %J.0271, i32* %arrayidx79, align 4, !dbg !410, !tbaa !232
  %indvars.iv.next278 = add i64 %indvars.iv277, 1, !dbg !412
  %inc84 = add nsw i32 %count.2.ph, 1, !dbg !413
  call void @llvm.dbg.value(metadata !{i32 %inc84}, i64 0, metadata !145), !dbg !413
  %arrayidx86 = getelementptr inbounds i32* %call30, i64 %indvars.iv277, !dbg !413
  store i32 %25, i32* %arrayidx86, align 4, !dbg !413, !tbaa !232
  br label %for.cond69.outer, !dbg !412

for.inc91:                                        ; preds = %for.cond69, %for.body71
  %idxprom92 = sext i32 %I.0257 to i64, !dbg !399
  %arrayidx93 = getelementptr inbounds i32* %19, i64 %idxprom92, !dbg !399
  %I.0 = load i32* %arrayidx93, align 4, !dbg !399
  %cmp67 = icmp eq i32 %I.0, -1, !dbg !399
  br i1 %cmp67, label %for.cond98.loopexit, label %for.body68, !dbg !399

for.cond98.loopexit:                              ; preds = %for.inc91, %for.end63
  %count.1.lcssa = phi i32 [ %count.0.lcssa, %for.end63 ], [ %count.2.ph, %for.inc91 ]
  %v.2263 = load i32* %arrayidx51, align 4, !dbg !414
  %cmp99264 = icmp eq i32 %v.2263, -1, !dbg !414
  br i1 %cmp99264, label %for.end137, label %for.body100, !dbg !414

for.body100:                                      ; preds = %for.cond98.loopexit, %for.inc134
  %v.2266 = phi i32 [ %v.2, %for.inc134 ], [ %v.2263, %for.cond98.loopexit ]
  %count.4265 = phi i32 [ %count.7, %for.inc134 ], [ %count.1.lcssa, %for.cond98.loopexit ]
  %cmp101 = icmp slt i32 %v.2266, %call26, !dbg !416
  br i1 %cmp101, label %if.then102, label %for.inc134, !dbg !416

if.then102:                                       ; preds = %for.body100
  call void @InpMtx_vector(%struct._InpMtx* %inpmtx, i32 %v.2266, i32* %size, i32** %adj) #5, !dbg !418
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !148), !dbg !420
  call void @llvm.dbg.value(metadata !{i32* %size}, i64 0, metadata !156), !dbg !420
  %28 = load i32* %size, align 4, !dbg !420, !tbaa !232
  %cmp104259 = icmp sgt i32 %28, 0, !dbg !420
  br i1 %cmp104259, label %for.body105.lr.ph, label %for.inc134, !dbg !420

for.body105.lr.ph:                                ; preds = %if.then102
  call void @llvm.dbg.value(metadata !{i32** %adj}, i64 0, metadata !159), !dbg !422
  %29 = load i32** %adj, align 8, !dbg !422, !tbaa !228
  br label %for.body105, !dbg !420

for.body105:                                      ; preds = %for.body105.lr.ph, %for.inc130
  %30 = phi i32 [ %28, %for.body105.lr.ph ], [ %35, %for.inc130 ]
  %indvars.iv279 = phi i64 [ 0, %for.body105.lr.ph ], [ %indvars.iv.next280, %for.inc130 ]
  %count.5261 = phi i32 [ %count.4265, %for.body105.lr.ph ], [ %count.6, %for.inc130 ]
  call void @llvm.dbg.value(metadata !{i32** %adj}, i64 0, metadata !159), !dbg !422
  %arrayidx107 = getelementptr inbounds i32* %29, i64 %indvars.iv279, !dbg !422
  %31 = load i32* %arrayidx107, align 4, !dbg !422, !tbaa !232
  %cmp108 = icmp sgt i32 %31, -1, !dbg !422
  %32 = sub i32 0, %31, !dbg !422
  %w.0.p = select i1 %cmp108, i32 %31, i32 %32, !dbg !422
  %w.0 = add i32 %w.0.p, %v.2266, !dbg !422
  %idxprom117 = sext i32 %w.0 to i64, !dbg !424
  %arrayidx118 = getelementptr inbounds i32* %call35, i64 %idxprom117, !dbg !424
  %33 = load i32* %arrayidx118, align 4, !dbg !424, !tbaa !232
  %cmp119 = icmp sgt i32 %33, %J.0271, !dbg !424
  br i1 %cmp119, label %land.lhs.true, label %for.inc130, !dbg !424

land.lhs.true:                                    ; preds = %for.body105
  %arrayidx121 = getelementptr inbounds i32* %call28, i64 %idxprom117, !dbg !424
  %34 = load i32* %arrayidx121, align 4, !dbg !424, !tbaa !232
  %cmp122 = icmp eq i32 %34, %J.0271, !dbg !424
  br i1 %cmp122, label %for.inc130, label %if.then123, !dbg !424

if.then123:                                       ; preds = %land.lhs.true
  store i32 %J.0271, i32* %arrayidx121, align 4, !dbg !425, !tbaa !232
  %inc126 = add nsw i32 %count.5261, 1, !dbg !427
  call void @llvm.dbg.value(metadata !{i32 %inc126}, i64 0, metadata !145), !dbg !427
  %idxprom127 = sext i32 %count.5261 to i64, !dbg !427
  %arrayidx128 = getelementptr inbounds i32* %call30, i64 %idxprom127, !dbg !427
  store i32 %w.0, i32* %arrayidx128, align 4, !dbg !427, !tbaa !232
  call void @llvm.dbg.value(metadata !{i32* %size}, i64 0, metadata !156), !dbg !420
  %.pre = load i32* %size, align 4, !dbg !420, !tbaa !232
  br label %for.inc130, !dbg !428

for.inc130:                                       ; preds = %land.lhs.true, %for.body105, %if.then123
  %35 = phi i32 [ %.pre, %if.then123 ], [ %30, %land.lhs.true ], [ %30, %for.body105 ], !dbg !420
  %count.6 = phi i32 [ %inc126, %if.then123 ], [ %count.5261, %land.lhs.true ], [ %count.5261, %for.body105 ]
  %indvars.iv.next280 = add i64 %indvars.iv279, 1, !dbg !420
  call void @llvm.dbg.value(metadata !{i32* %size}, i64 0, metadata !156), !dbg !420
  %36 = trunc i64 %indvars.iv.next280 to i32, !dbg !420
  %cmp104 = icmp slt i32 %36, %35, !dbg !420
  br i1 %cmp104, label %for.body105, label %for.inc134, !dbg !420

for.inc134:                                       ; preds = %if.then102, %for.inc130, %for.body100
  %count.7 = phi i32 [ %count.4265, %for.body100 ], [ %count.4265, %if.then102 ], [ %count.6, %for.inc130 ]
  %idxprom135 = sext i32 %v.2266 to i64, !dbg !414
  %arrayidx136 = getelementptr inbounds i32* %call32, i64 %idxprom135, !dbg !414
  %v.2 = load i32* %arrayidx136, align 4, !dbg !414
  %cmp99 = icmp eq i32 %v.2, -1, !dbg !414
  br i1 %cmp99, label %for.end137, label %for.body100, !dbg !414

for.end137:                                       ; preds = %for.inc134, %for.cond98.loopexit
  %count.4.lcssa = phi i32 [ %count.1.lcssa, %for.cond98.loopexit ], [ %count.7, %for.inc134 ]
  %arrayidx139 = getelementptr inbounds i32* %call33, i64 %idxprom50, !dbg !429
  store i32 %count.0.lcssa, i32* %arrayidx139, align 4, !dbg !429, !tbaa !232
  %sub140 = sub nsw i32 %count.4.lcssa, %count.0.lcssa, !dbg !430
  %arrayidx142 = getelementptr inbounds i32* %call34, i64 %idxprom50, !dbg !430
  store i32 %sub140, i32* %arrayidx142, align 4, !dbg !430, !tbaa !232
  call void @IVqsortUp(i32 %count.4.lcssa, i32* %call30) #5, !dbg !431
  call void @IVL_setList(%struct._IVL* %call27, i32 %J.0271, i32 %count.4.lcssa, i32* %call30) #5, !dbg !432
  %call144 = call i32 @Tree_postOTnext(%struct._Tree* %17, i32 %J.0271) #5, !dbg !433
  call void @llvm.dbg.value(metadata !{i32 %call144}, i64 0, metadata !150), !dbg !433
  %cmp48 = icmp eq i32 %call144, -1, !dbg !389
  br i1 %cmp48, label %for.end145, label %for.body49, !dbg !389

for.end145:                                       ; preds = %for.end137, %for.end
  call void @IVfree(i32* %call30) #5, !dbg !434
  call void @IVfree(i32* %call28) #5, !dbg !435
  call void @IVfree(i32* %call29) #5, !dbg !436
  call void @IVfree(i32* %call31) #5, !dbg !437
  call void @IVfree(i32* %call32) #5, !dbg !438
  ret %struct._IVL* %call27, !dbg !439
}

; Function Attrs: optsize
declare i32 @InpMtx_writeStats(%struct._InpMtx*, %struct._IO_FILE*) #3

; Function Attrs: optsize
declare i32 @InpMtx_coordType(%struct._InpMtx*) #3

; Function Attrs: optsize
declare i32 @InpMtx_storageMode(%struct._InpMtx*) #3

; Function Attrs: optsize
declare i32 @InpMtx_nvector(%struct._InpMtx*) #3

; Function Attrs: optsize
declare void @InpMtx_vector(%struct._InpMtx*, i32, i32*, i32**) #3

; Function Attrs: nounwind optsize uwtable
define %struct._IVL* @SymbFac_initFromPencil(%struct._ETree* %etree, %struct._Pencil* %pencil) #0 {
entry:
  %size = alloca i32, align 4
  %adj = alloca i32*, align 8
  call void @llvm.dbg.value(metadata !{%struct._ETree* %etree}, i64 0, metadata !189), !dbg !440
  call void @llvm.dbg.value(metadata !{%struct._Pencil* %pencil}, i64 0, metadata !190), !dbg !441
  call void @llvm.dbg.declare(metadata !{i32* %size}, metadata !205), !dbg !442
  call void @llvm.dbg.declare(metadata !{i32** %adj}, metadata !208), !dbg !443
  %cmp = icmp eq %struct._ETree* %etree, null, !dbg !444
  br i1 %cmp, label %if.then.thread, label %lor.lhs.false, !dbg !444

if.then.thread:                                   ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !445, !tbaa !228
  %call331 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([59 x i8]* @.str4, i64 0, i64 0), %struct._ETree* null, %struct._Pencil* %pencil) #5, !dbg !445
  br label %if.end, !dbg !447

lor.lhs.false:                                    ; preds = %entry
  %nfront1 = getelementptr inbounds %struct._ETree* %etree, i64 0, i32 0, !dbg !444
  %1 = load i32* %nfront1, align 4, !dbg !444, !tbaa !232
  call void @llvm.dbg.value(metadata !{i32 %1}, i64 0, metadata !201), !dbg !444
  %cmp2 = icmp slt i32 %1, 1, !dbg !444
  br i1 %cmp2, label %if.then.thread332, label %lor.lhs.false3, !dbg !444

if.then.thread332:                                ; preds = %lor.lhs.false
  %2 = load %struct._IO_FILE** @stderr, align 8, !dbg !445, !tbaa !228
  %call333 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([59 x i8]* @.str4, i64 0, i64 0), %struct._ETree* %etree, %struct._Pencil* %pencil) #5, !dbg !445
  br label %if.then9, !dbg !447

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %nvtx4 = getelementptr inbounds %struct._ETree* %etree, i64 0, i32 1, !dbg !444
  %3 = load i32* %nvtx4, align 4, !dbg !444, !tbaa !232
  call void @llvm.dbg.value(metadata !{i32 %3}, i64 0, metadata !204), !dbg !444
  %cmp5 = icmp slt i32 %3, 1, !dbg !444
  %cmp7 = icmp eq %struct._Pencil* %pencil, null, !dbg !444
  %or.cond = or i1 %cmp5, %cmp7, !dbg !444
  br i1 %or.cond, label %if.then, label %if.end15, !dbg !444

if.then:                                          ; preds = %lor.lhs.false3
  %4 = load %struct._IO_FILE** @stderr, align 8, !dbg !445, !tbaa !228
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([59 x i8]* @.str4, i64 0, i64 0), %struct._ETree* %etree, %struct._Pencil* %pencil) #5, !dbg !445
  br label %if.then9, !dbg !447

if.then9:                                         ; preds = %if.then, %if.then.thread332
  %5 = load %struct._IO_FILE** @stderr, align 8, !dbg !448, !tbaa !228
  %call10 = call i32 @ETree_writeStats(%struct._ETree* %etree, %struct._IO_FILE* %5) #5, !dbg !448
  br label %if.end, !dbg !450

if.end:                                           ; preds = %if.then.thread, %if.then9
  %cmp11 = icmp eq %struct._Pencil* %pencil, null, !dbg !451
  br i1 %cmp11, label %if.end14, label %if.then12, !dbg !451

if.then12:                                        ; preds = %if.end
  %6 = load %struct._IO_FILE** @stderr, align 8, !dbg !452, !tbaa !228
  %call13 = call i32 @Pencil_writeStats(%struct._Pencil* %pencil, %struct._IO_FILE* %6) #5, !dbg !452
  br label %if.end14, !dbg !454

if.end14:                                         ; preds = %if.end, %if.then12
  call void @exit(i32 -1) #6, !dbg !455
  unreachable, !dbg !455

if.end15:                                         ; preds = %lor.lhs.false3
  %inpmtxA16 = getelementptr inbounds %struct._Pencil* %pencil, i64 0, i32 2, !dbg !456
  %7 = load %struct._InpMtx** %inpmtxA16, align 8, !dbg !456, !tbaa !228
  call void @llvm.dbg.value(metadata !{%struct._InpMtx* %7}, i64 0, metadata !191), !dbg !456
  %inpmtxB17 = getelementptr inbounds %struct._Pencil* %pencil, i64 0, i32 3, !dbg !457
  %8 = load %struct._InpMtx** %inpmtxB17, align 8, !dbg !457, !tbaa !228
  call void @llvm.dbg.value(metadata !{%struct._InpMtx* %8}, i64 0, metadata !192), !dbg !457
  %cmp18 = icmp ne %struct._InpMtx* %7, null, !dbg !458
  br i1 %cmp18, label %if.then19, label %if.end31, !dbg !458

if.then19:                                        ; preds = %if.end15
  %coordType = getelementptr inbounds %struct._InpMtx* %7, i64 0, i32 0, !dbg !459
  %9 = load i32* %coordType, align 4, !dbg !459, !tbaa !232
  %cmp20 = icmp eq i32 %9, 3, !dbg !459
  br i1 %cmp20, label %if.end24, label %if.then21, !dbg !459

if.then21:                                        ; preds = %if.then19
  %10 = load %struct._IO_FILE** @stderr, align 8, !dbg !461, !tbaa !228
  %call22 = call i32 @InpMtx_coordType(%struct._InpMtx* %7) #5, !dbg !463
  %call23 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %10, i8* getelementptr inbounds ([96 x i8]* @.str5, i64 0, i64 0), i32 %call22) #5, !dbg !463
  call void @exit(i32 -1) #6, !dbg !464
  unreachable, !dbg !464

if.end24:                                         ; preds = %if.then19
  %storageMode = getelementptr inbounds %struct._InpMtx* %7, i64 0, i32 1, !dbg !465
  %11 = load i32* %storageMode, align 4, !dbg !465, !tbaa !232
  %cmp25 = icmp eq i32 %11, 3, !dbg !465
  br i1 %cmp25, label %if.end29, label %if.then26, !dbg !465

if.then26:                                        ; preds = %if.end24
  %12 = load %struct._IO_FILE** @stderr, align 8, !dbg !466, !tbaa !228
  %call27 = call i32 @InpMtx_storageMode(%struct._InpMtx* %7) #5, !dbg !468
  %call28 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %12, i8* getelementptr inbounds ([97 x i8]* @.str6, i64 0, i64 0), i32 %call27) #5, !dbg !468
  call void @exit(i32 -1) #6, !dbg !469
  unreachable, !dbg !469

if.end29:                                         ; preds = %if.end24
  %call30 = call i32 @InpMtx_nvector(%struct._InpMtx* %7) #5, !dbg !470
  call void @llvm.dbg.value(metadata !{i32 %call30}, i64 0, metadata !202), !dbg !470
  br label %if.end31, !dbg !471

if.end31:                                         ; preds = %if.end15, %if.end29
  %cmp32 = icmp ne %struct._InpMtx* %8, null, !dbg !472
  br i1 %cmp32, label %if.then33, label %if.end48, !dbg !472

if.then33:                                        ; preds = %if.end31
  %coordType34 = getelementptr inbounds %struct._InpMtx* %8, i64 0, i32 0, !dbg !473
  %13 = load i32* %coordType34, align 4, !dbg !473, !tbaa !232
  %cmp35 = icmp eq i32 %13, 3, !dbg !473
  br i1 %cmp35, label %if.end39, label %if.then36, !dbg !473

if.then36:                                        ; preds = %if.then33
  %14 = load %struct._IO_FILE** @stderr, align 8, !dbg !475, !tbaa !228
  %call37 = call i32 @InpMtx_coordType(%struct._InpMtx* %8) #5, !dbg !477
  %call38 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %14, i8* getelementptr inbounds ([96 x i8]* @.str5, i64 0, i64 0), i32 %call37) #5, !dbg !477
  call void @exit(i32 -1) #6, !dbg !478
  unreachable, !dbg !478

if.end39:                                         ; preds = %if.then33
  %storageMode40 = getelementptr inbounds %struct._InpMtx* %8, i64 0, i32 1, !dbg !479
  %15 = load i32* %storageMode40, align 4, !dbg !479, !tbaa !232
  %cmp41 = icmp eq i32 %15, 3, !dbg !479
  br i1 %cmp41, label %if.end45, label %if.then42, !dbg !479

if.then42:                                        ; preds = %if.end39
  %16 = load %struct._IO_FILE** @stderr, align 8, !dbg !480, !tbaa !228
  %call43 = call i32 @InpMtx_storageMode(%struct._InpMtx* %8) #5, !dbg !482
  %call44 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %16, i8* getelementptr inbounds ([97 x i8]* @.str6, i64 0, i64 0), i32 %call43) #5, !dbg !482
  call void @exit(i32 -1) #6, !dbg !483
  unreachable, !dbg !483

if.end45:                                         ; preds = %if.end39
  %call46 = call i32 @InpMtx_nvector(%struct._InpMtx* %8) #5, !dbg !484
  call void @llvm.dbg.value(metadata !{i32 %call46}, i64 0, metadata !203), !dbg !484
  br label %if.end48, !dbg !485

if.end48:                                         ; preds = %if.end31, %if.end45
  %call49 = call %struct._IVL* @IVL_new() #5, !dbg !486
  call void @llvm.dbg.value(metadata !{%struct._IVL* %call49}, i64 0, metadata !219), !dbg !486
  call void @IVL_init1(%struct._IVL* %call49, i32 1, i32 %1) #5, !dbg !487
  %call50 = call i32* @IVinit(i32 %3, i32 -1) #5, !dbg !488
  call void @llvm.dbg.value(metadata !{i32* %call50}, i64 0, metadata !215), !dbg !488
  %call51 = call i32* @IVinit(i32 %3, i32 -1) #5, !dbg !489
  call void @llvm.dbg.value(metadata !{i32* %call51}, i64 0, metadata !213), !dbg !489
  %call52 = call i32* @IVinit(i32 %3, i32 -1) #5, !dbg !490
  call void @llvm.dbg.value(metadata !{i32* %call52}, i64 0, metadata !212), !dbg !490
  %call53 = call i32* @IVinit(i32 %1, i32 -1) #5, !dbg !491
  call void @llvm.dbg.value(metadata !{i32* %call53}, i64 0, metadata !211), !dbg !491
  %call54 = call i32* @IVinit(i32 %3, i32 -1) #5, !dbg !492
  call void @llvm.dbg.value(metadata !{i32* %call54}, i64 0, metadata !214), !dbg !492
  %nodwghtsIV = getelementptr inbounds %struct._ETree* %etree, i64 0, i32 3, !dbg !493
  %17 = load %struct._IV** %nodwghtsIV, align 8, !dbg !493, !tbaa !228
  %call55 = call i32* @IV_entries(%struct._IV* %17) #5, !dbg !493
  call void @llvm.dbg.value(metadata !{i32* %call55}, i64 0, metadata !216), !dbg !493
  %bndwghtsIV = getelementptr inbounds %struct._ETree* %etree, i64 0, i32 4, !dbg !494
  %18 = load %struct._IV** %bndwghtsIV, align 8, !dbg !494, !tbaa !228
  %call56 = call i32* @IV_entries(%struct._IV* %18) #5, !dbg !494
  call void @llvm.dbg.value(metadata !{i32* %call56}, i64 0, metadata !209), !dbg !494
  %vtxToFrontIV = getelementptr inbounds %struct._ETree* %etree, i64 0, i32 5, !dbg !495
  %19 = load %struct._IV** %vtxToFrontIV, align 8, !dbg !495, !tbaa !228
  %call57 = call i32* @IV_entries(%struct._IV* %19) #5, !dbg !495
  call void @llvm.dbg.value(metadata !{i32* %call57}, i64 0, metadata !218), !dbg !495
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !206), !dbg !496
  %cmp58361 = icmp sgt i32 %3, 0, !dbg !496
  br i1 %cmp58361, label %for.body, label %for.end, !dbg !496

for.body:                                         ; preds = %if.end48, %for.body
  %indvars.iv372 = phi i64 [ %indvars.iv.next373, %for.body ], [ 0, %if.end48 ]
  %arrayidx = getelementptr inbounds i32* %call57, i64 %indvars.iv372, !dbg !498
  %20 = load i32* %arrayidx, align 4, !dbg !498, !tbaa !232
  call void @llvm.dbg.value(metadata !{i32 %20}, i64 0, metadata !194), !dbg !498
  %idxprom59 = sext i32 %20 to i64, !dbg !500
  %arrayidx60 = getelementptr inbounds i32* %call53, i64 %idxprom59, !dbg !500
  %21 = load i32* %arrayidx60, align 4, !dbg !500, !tbaa !232
  %arrayidx62 = getelementptr inbounds i32* %call54, i64 %indvars.iv372, !dbg !500
  store i32 %21, i32* %arrayidx62, align 4, !dbg !500, !tbaa !232
  %22 = trunc i64 %indvars.iv372 to i32, !dbg !501
  store i32 %22, i32* %arrayidx60, align 4, !dbg !501, !tbaa !232
  %indvars.iv.next373 = add i64 %indvars.iv372, 1, !dbg !496
  %lftr.wideiv = trunc i64 %indvars.iv.next373 to i32, !dbg !496
  %exitcond = icmp eq i32 %lftr.wideiv, %3, !dbg !496
  br i1 %exitcond, label %for.end, label %for.body, !dbg !496

for.end:                                          ; preds = %for.body, %if.end48
  %tree65 = getelementptr inbounds %struct._ETree* %etree, i64 0, i32 2, !dbg !502
  %23 = load %struct._Tree** %tree65, align 8, !dbg !502, !tbaa !228
  call void @llvm.dbg.value(metadata !{%struct._Tree* %23}, i64 0, metadata !220), !dbg !502
  %fch66 = getelementptr inbounds %struct._Tree* %23, i64 0, i32 3, !dbg !503
  %24 = load i32** %fch66, align 8, !dbg !503, !tbaa !228
  call void @llvm.dbg.value(metadata !{i32* %24}, i64 0, metadata !210), !dbg !503
  %sib67 = getelementptr inbounds %struct._Tree* %23, i64 0, i32 4, !dbg !504
  %25 = load i32** %sib67, align 8, !dbg !504, !tbaa !228
  call void @llvm.dbg.value(metadata !{i32* %25}, i64 0, metadata !217), !dbg !504
  %call68 = call i32 @Tree_postOTfirst(%struct._Tree* %23) #5, !dbg !505
  call void @llvm.dbg.value(metadata !{i32 %call68}, i64 0, metadata !198), !dbg !505
  %cmp70359 = icmp eq i32 %call68, -1, !dbg !505
  br i1 %cmp70359, label %for.end203, label %for.body71, !dbg !505

for.body71:                                       ; preds = %for.end, %for.end195
  %J.0360 = phi i32 [ %call202, %for.end195 ], [ %call68, %for.end ]
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !193), !dbg !507
  %idxprom72 = sext i32 %J.0360 to i64, !dbg !509
  %arrayidx73 = getelementptr inbounds i32* %call53, i64 %idxprom72, !dbg !509
  %v.1334 = load i32* %arrayidx73, align 4, !dbg !509
  %cmp75335 = icmp eq i32 %v.1334, -1, !dbg !509
  br i1 %cmp75335, label %for.end85, label %for.body76, !dbg !509

for.body76:                                       ; preds = %for.body71, %for.body76
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body76 ], [ 0, %for.body71 ]
  %v.1337 = phi i32 [ %v.1, %for.body76 ], [ %v.1334, %for.body71 ]
  %count.0336 = phi i32 [ %inc79, %for.body76 ], [ 0, %for.body71 ]
  %idxprom77 = sext i32 %v.1337 to i64, !dbg !511
  %arrayidx78 = getelementptr inbounds i32* %call50, i64 %idxprom77, !dbg !511
  store i32 %J.0360, i32* %arrayidx78, align 4, !dbg !511, !tbaa !232
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !509
  %inc79 = add nsw i32 %count.0336, 1, !dbg !513
  call void @llvm.dbg.value(metadata !{i32 %inc79}, i64 0, metadata !193), !dbg !513
  %arrayidx81 = getelementptr inbounds i32* %call52, i64 %indvars.iv, !dbg !513
  store i32 %v.1337, i32* %arrayidx81, align 4, !dbg !513, !tbaa !232
  %arrayidx84 = getelementptr inbounds i32* %call54, i64 %idxprom77, !dbg !509
  %v.1 = load i32* %arrayidx84, align 4, !dbg !509
  %cmp75 = icmp eq i32 %v.1, -1, !dbg !509
  br i1 %cmp75, label %for.end85, label %for.body76, !dbg !509

for.end85:                                        ; preds = %for.body76, %for.body71
  %count.0.lcssa = phi i32 [ 0, %for.body71 ], [ %inc79, %for.body76 ]
  call void @llvm.dbg.value(metadata !{i32 %count.0.lcssa}, i64 0, metadata !200), !dbg !514
  %arrayidx87 = getelementptr inbounds i32* %24, i64 %idxprom72, !dbg !515
  %I.0339 = load i32* %arrayidx87, align 4, !dbg !515
  %cmp89340 = icmp eq i32 %I.0339, -1, !dbg !515
  br i1 %cmp89340, label %for.cond121.loopexit, label %for.body90, !dbg !515

for.body90:                                       ; preds = %for.end85, %for.inc114
  %I.0342 = phi i32 [ %I.0, %for.inc114 ], [ %I.0339, %for.end85 ]
  %count.1341 = phi i32 [ %count.2.ph, %for.inc114 ], [ %count.0.lcssa, %for.end85 ]
  call void @IVL_listAndSize(%struct._IVL* %call49, i32 %I.0342, i32* %size, i32** %adj) #5, !dbg !517
  call void @llvm.dbg.value(metadata !{i32* %size}, i64 0, metadata !205), !dbg !519
  %26 = load i32* %size, align 4, !dbg !519, !tbaa !232
  call void @llvm.dbg.value(metadata !{i32** %adj}, i64 0, metadata !208), !dbg !521
  %27 = load i32** %adj, align 8, !dbg !521, !tbaa !228
  %28 = sext i32 %count.1341 to i64
  br label %for.cond91.outer, !dbg !519

for.cond91.outer:                                 ; preds = %if.then103, %for.body90
  %indvars.iv366 = phi i64 [ %indvars.iv.next367, %if.then103 ], [ %28, %for.body90 ]
  %ii.0.in.ph = phi i32 [ %ii.0, %if.then103 ], [ %26, %for.body90 ]
  %count.2.ph = phi i32 [ %inc106, %if.then103 ], [ %count.1341, %for.body90 ]
  %29 = sext i32 %ii.0.in.ph to i64
  br label %for.cond91

for.cond91:                                       ; preds = %for.cond91.outer, %if.then99
  %indvars.iv364 = phi i64 [ %29, %for.cond91.outer ], [ %indvars.iv.next365, %if.then99 ]
  %ii.0.in = phi i32 [ %ii.0.in.ph, %for.cond91.outer ], [ %ii.0, %if.then99 ]
  %indvars.iv.next365 = add i64 %indvars.iv364, -1, !dbg !523
  %ii.0 = add nsw i32 %ii.0.in, -1, !dbg !519
  %30 = trunc i64 %indvars.iv364 to i32, !dbg !519
  %cmp92 = icmp sgt i32 %30, 0, !dbg !519
  br i1 %cmp92, label %for.body93, label %for.inc114, !dbg !519

for.body93:                                       ; preds = %for.cond91
  call void @llvm.dbg.value(metadata !{i32** %adj}, i64 0, metadata !208), !dbg !521
  %arrayidx95 = getelementptr inbounds i32* %27, i64 %indvars.iv.next365, !dbg !521
  %31 = load i32* %arrayidx95, align 4, !dbg !521, !tbaa !232
  call void @llvm.dbg.value(metadata !{i32 %31}, i64 0, metadata !206), !dbg !521
  %idxprom96 = sext i32 %31 to i64, !dbg !525
  %arrayidx97 = getelementptr inbounds i32* %call57, i64 %idxprom96, !dbg !525
  %32 = load i32* %arrayidx97, align 4, !dbg !525, !tbaa !232
  %cmp98 = icmp sgt i32 %32, %J.0360, !dbg !525
  br i1 %cmp98, label %if.then99, label %for.inc114, !dbg !525

if.then99:                                        ; preds = %for.body93
  %arrayidx101 = getelementptr inbounds i32* %call50, i64 %idxprom96, !dbg !523
  %33 = load i32* %arrayidx101, align 4, !dbg !523, !tbaa !232
  %cmp102 = icmp eq i32 %33, %J.0360, !dbg !523
  br i1 %cmp102, label %for.cond91, label %if.then103, !dbg !523

if.then103:                                       ; preds = %if.then99
  store i32 %J.0360, i32* %arrayidx101, align 4, !dbg !526, !tbaa !232
  %indvars.iv.next367 = add i64 %indvars.iv366, 1, !dbg !528
  %inc106 = add nsw i32 %count.2.ph, 1, !dbg !529
  call void @llvm.dbg.value(metadata !{i32 %inc106}, i64 0, metadata !193), !dbg !529
  %arrayidx108 = getelementptr inbounds i32* %call52, i64 %indvars.iv366, !dbg !529
  store i32 %31, i32* %arrayidx108, align 4, !dbg !529, !tbaa !232
  br label %for.cond91.outer, !dbg !528

for.inc114:                                       ; preds = %for.cond91, %for.body93
  %idxprom115 = sext i32 %I.0342 to i64, !dbg !515
  %arrayidx116 = getelementptr inbounds i32* %25, i64 %idxprom115, !dbg !515
  %I.0 = load i32* %arrayidx116, align 4, !dbg !515
  %cmp89 = icmp eq i32 %I.0, -1, !dbg !515
  br i1 %cmp89, label %for.cond121.loopexit, label %for.body90, !dbg !515

for.cond121.loopexit:                             ; preds = %for.inc114, %for.end85
  %count.1.lcssa = phi i32 [ %count.0.lcssa, %for.end85 ], [ %count.2.ph, %for.inc114 ]
  %v.2352 = load i32* %arrayidx73, align 4, !dbg !530
  %cmp122353 = icmp eq i32 %v.2352, -1, !dbg !530
  br i1 %cmp122353, label %for.end195, label %for.body123, !dbg !530

for.body123:                                      ; preds = %for.cond121.loopexit, %for.inc192
  %v.2355 = phi i32 [ %v.2, %for.inc192 ], [ %v.2352, %for.cond121.loopexit ]
  %count.4354 = phi i32 [ %count.10, %for.inc192 ], [ %count.1.lcssa, %for.cond121.loopexit ]
  br i1 %cmp18, label %if.then125, label %if.end156, !dbg !532

if.then125:                                       ; preds = %for.body123
  call void @InpMtx_vector(%struct._InpMtx* %7, i32 %v.2355, i32* %size, i32** %adj) #5, !dbg !534
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !196), !dbg !536
  call void @llvm.dbg.value(metadata !{i32* %size}, i64 0, metadata !205), !dbg !536
  %34 = load i32* %size, align 4, !dbg !536, !tbaa !232
  %cmp127344 = icmp sgt i32 %34, 0, !dbg !536
  br i1 %cmp127344, label %for.body128.lr.ph, label %if.end156, !dbg !536

for.body128.lr.ph:                                ; preds = %if.then125
  call void @llvm.dbg.value(metadata !{i32** %adj}, i64 0, metadata !208), !dbg !538
  %35 = load i32** %adj, align 8, !dbg !538, !tbaa !228
  br label %for.body128, !dbg !536

for.body128:                                      ; preds = %for.body128.lr.ph, %for.inc153
  %36 = phi i32 [ %34, %for.body128.lr.ph ], [ %41, %for.inc153 ]
  %indvars.iv368 = phi i64 [ 0, %for.body128.lr.ph ], [ %indvars.iv.next369, %for.inc153 ]
  %count.5346 = phi i32 [ %count.4354, %for.body128.lr.ph ], [ %count.6, %for.inc153 ]
  call void @llvm.dbg.value(metadata !{i32** %adj}, i64 0, metadata !208), !dbg !538
  %arrayidx130 = getelementptr inbounds i32* %35, i64 %indvars.iv368, !dbg !538
  %37 = load i32* %arrayidx130, align 4, !dbg !538, !tbaa !232
  %cmp131 = icmp sgt i32 %37, -1, !dbg !538
  %38 = sub i32 0, %37, !dbg !538
  %w.0.p = select i1 %cmp131, i32 %37, i32 %38, !dbg !538
  %w.0 = add i32 %w.0.p, %v.2355, !dbg !538
  %idxprom140 = sext i32 %w.0 to i64, !dbg !540
  %arrayidx141 = getelementptr inbounds i32* %call57, i64 %idxprom140, !dbg !540
  %39 = load i32* %arrayidx141, align 4, !dbg !540, !tbaa !232
  %cmp142 = icmp sgt i32 %39, %J.0360, !dbg !540
  br i1 %cmp142, label %land.lhs.true, label %for.inc153, !dbg !540

land.lhs.true:                                    ; preds = %for.body128
  %arrayidx144 = getelementptr inbounds i32* %call50, i64 %idxprom140, !dbg !540
  %40 = load i32* %arrayidx144, align 4, !dbg !540, !tbaa !232
  %cmp145 = icmp eq i32 %40, %J.0360, !dbg !540
  br i1 %cmp145, label %for.inc153, label %if.then146, !dbg !540

if.then146:                                       ; preds = %land.lhs.true
  store i32 %J.0360, i32* %arrayidx144, align 4, !dbg !541, !tbaa !232
  %inc149 = add nsw i32 %count.5346, 1, !dbg !543
  call void @llvm.dbg.value(metadata !{i32 %inc149}, i64 0, metadata !193), !dbg !543
  %idxprom150 = sext i32 %count.5346 to i64, !dbg !543
  %arrayidx151 = getelementptr inbounds i32* %call52, i64 %idxprom150, !dbg !543
  store i32 %w.0, i32* %arrayidx151, align 4, !dbg !543, !tbaa !232
  call void @llvm.dbg.value(metadata !{i32* %size}, i64 0, metadata !205), !dbg !536
  %.pre = load i32* %size, align 4, !dbg !536, !tbaa !232
  br label %for.inc153, !dbg !544

for.inc153:                                       ; preds = %land.lhs.true, %for.body128, %if.then146
  %41 = phi i32 [ %.pre, %if.then146 ], [ %36, %land.lhs.true ], [ %36, %for.body128 ], !dbg !536
  %count.6 = phi i32 [ %inc149, %if.then146 ], [ %count.5346, %land.lhs.true ], [ %count.5346, %for.body128 ]
  %indvars.iv.next369 = add i64 %indvars.iv368, 1, !dbg !536
  call void @llvm.dbg.value(metadata !{i32* %size}, i64 0, metadata !205), !dbg !536
  %42 = trunc i64 %indvars.iv.next369 to i32, !dbg !536
  %cmp127 = icmp slt i32 %42, %41, !dbg !536
  br i1 %cmp127, label %for.body128, label %if.end156, !dbg !536

if.end156:                                        ; preds = %if.then125, %for.inc153, %for.body123
  %count.7 = phi i32 [ %count.4354, %for.body123 ], [ %count.4354, %if.then125 ], [ %count.6, %for.inc153 ]
  br i1 %cmp32, label %if.then158, label %for.inc192, !dbg !545

if.then158:                                       ; preds = %if.end156
  call void @InpMtx_vector(%struct._InpMtx* %8, i32 %v.2355, i32* %size, i32** %adj) #5, !dbg !546
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !196), !dbg !548
  call void @llvm.dbg.value(metadata !{i32* %size}, i64 0, metadata !205), !dbg !548
  %43 = load i32* %size, align 4, !dbg !548, !tbaa !232
  %cmp160348 = icmp sgt i32 %43, 0, !dbg !548
  br i1 %cmp160348, label %for.body161.lr.ph, label %for.inc192, !dbg !548

for.body161.lr.ph:                                ; preds = %if.then158
  call void @llvm.dbg.value(metadata !{i32** %adj}, i64 0, metadata !208), !dbg !550
  %44 = load i32** %adj, align 8, !dbg !550, !tbaa !228
  br label %for.body161, !dbg !548

for.body161:                                      ; preds = %for.body161.lr.ph, %for.inc188
  %45 = phi i32 [ %43, %for.body161.lr.ph ], [ %50, %for.inc188 ]
  %indvars.iv370 = phi i64 [ 0, %for.body161.lr.ph ], [ %indvars.iv.next371, %for.inc188 ]
  %count.8350 = phi i32 [ %count.7, %for.body161.lr.ph ], [ %count.9, %for.inc188 ]
  call void @llvm.dbg.value(metadata !{i32** %adj}, i64 0, metadata !208), !dbg !550
  %arrayidx163 = getelementptr inbounds i32* %44, i64 %indvars.iv370, !dbg !550
  %46 = load i32* %arrayidx163, align 4, !dbg !550, !tbaa !232
  %cmp164 = icmp sgt i32 %46, -1, !dbg !550
  %47 = sub i32 0, %46, !dbg !550
  %w.1.p = select i1 %cmp164, i32 %46, i32 %47, !dbg !550
  %w.1 = add i32 %w.1.p, %v.2355, !dbg !550
  %idxprom174 = sext i32 %w.1 to i64, !dbg !552
  %arrayidx175 = getelementptr inbounds i32* %call57, i64 %idxprom174, !dbg !552
  %48 = load i32* %arrayidx175, align 4, !dbg !552, !tbaa !232
  %cmp176 = icmp sgt i32 %48, %J.0360, !dbg !552
  br i1 %cmp176, label %land.lhs.true177, label %for.inc188, !dbg !552

land.lhs.true177:                                 ; preds = %for.body161
  %arrayidx179 = getelementptr inbounds i32* %call50, i64 %idxprom174, !dbg !552
  %49 = load i32* %arrayidx179, align 4, !dbg !552, !tbaa !232
  %cmp180 = icmp eq i32 %49, %J.0360, !dbg !552
  br i1 %cmp180, label %for.inc188, label %if.then181, !dbg !552

if.then181:                                       ; preds = %land.lhs.true177
  store i32 %J.0360, i32* %arrayidx179, align 4, !dbg !553, !tbaa !232
  %inc184 = add nsw i32 %count.8350, 1, !dbg !555
  call void @llvm.dbg.value(metadata !{i32 %inc184}, i64 0, metadata !193), !dbg !555
  %idxprom185 = sext i32 %count.8350 to i64, !dbg !555
  %arrayidx186 = getelementptr inbounds i32* %call52, i64 %idxprom185, !dbg !555
  store i32 %w.1, i32* %arrayidx186, align 4, !dbg !555, !tbaa !232
  call void @llvm.dbg.value(metadata !{i32* %size}, i64 0, metadata !205), !dbg !548
  %.pre374 = load i32* %size, align 4, !dbg !548, !tbaa !232
  br label %for.inc188, !dbg !556

for.inc188:                                       ; preds = %land.lhs.true177, %for.body161, %if.then181
  %50 = phi i32 [ %.pre374, %if.then181 ], [ %45, %land.lhs.true177 ], [ %45, %for.body161 ], !dbg !548
  %count.9 = phi i32 [ %inc184, %if.then181 ], [ %count.8350, %land.lhs.true177 ], [ %count.8350, %for.body161 ]
  %indvars.iv.next371 = add i64 %indvars.iv370, 1, !dbg !548
  call void @llvm.dbg.value(metadata !{i32* %size}, i64 0, metadata !205), !dbg !548
  %51 = trunc i64 %indvars.iv.next371 to i32, !dbg !548
  %cmp160 = icmp slt i32 %51, %50, !dbg !548
  br i1 %cmp160, label %for.body161, label %for.inc192, !dbg !548

for.inc192:                                       ; preds = %if.then158, %for.inc188, %if.end156
  %count.10 = phi i32 [ %count.7, %if.end156 ], [ %count.7, %if.then158 ], [ %count.9, %for.inc188 ]
  %idxprom193 = sext i32 %v.2355 to i64, !dbg !530
  %arrayidx194 = getelementptr inbounds i32* %call54, i64 %idxprom193, !dbg !530
  %v.2 = load i32* %arrayidx194, align 4, !dbg !530
  %cmp122 = icmp eq i32 %v.2, -1, !dbg !530
  br i1 %cmp122, label %for.end195, label %for.body123, !dbg !530

for.end195:                                       ; preds = %for.inc192, %for.cond121.loopexit
  %count.4.lcssa = phi i32 [ %count.1.lcssa, %for.cond121.loopexit ], [ %count.10, %for.inc192 ]
  %arrayidx197 = getelementptr inbounds i32* %call55, i64 %idxprom72, !dbg !557
  store i32 %count.0.lcssa, i32* %arrayidx197, align 4, !dbg !557, !tbaa !232
  %sub198 = sub nsw i32 %count.4.lcssa, %count.0.lcssa, !dbg !558
  %arrayidx200 = getelementptr inbounds i32* %call56, i64 %idxprom72, !dbg !558
  store i32 %sub198, i32* %arrayidx200, align 4, !dbg !558, !tbaa !232
  call void @IVqsortUp(i32 %count.4.lcssa, i32* %call52) #5, !dbg !559
  call void @IVL_setList(%struct._IVL* %call49, i32 %J.0360, i32 %count.4.lcssa, i32* %call52) #5, !dbg !560
  %call202 = call i32 @Tree_postOTnext(%struct._Tree* %23, i32 %J.0360) #5, !dbg !561
  call void @llvm.dbg.value(metadata !{i32 %call202}, i64 0, metadata !198), !dbg !561
  %cmp70 = icmp eq i32 %call202, -1, !dbg !505
  br i1 %cmp70, label %for.end203, label %for.body71, !dbg !505

for.end203:                                       ; preds = %for.end195, %for.end
  call void @IVfree(i32* %call52) #5, !dbg !562
  call void @IVfree(i32* %call50) #5, !dbg !563
  call void @IVfree(i32* %call51) #5, !dbg !564
  call void @IVfree(i32* %call53) #5, !dbg !565
  call void @IVfree(i32* %call54) #5, !dbg !566
  ret %struct._IVL* %call49, !dbg !567
}

; Function Attrs: optsize
declare i32 @Pencil_writeStats(%struct._Pencil*, %struct._IO_FILE*) #3

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #1

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind optsize }
attributes #6 = { noreturn nounwind optsize }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SymbFac/src/SymbFac_symbfac.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SymbFac/src/SymbFac_symbfac.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4, metadata !110, metadata !172}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"SymbFac_initFromGraph", metadata !"SymbFac_initFromGraph", metadata !"", i32 17, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, %struct._IVL* (%struct._ETree*, %struct._Graph*)* @SymbFac_initFromGraph, null, null, metadata !76, i32 20} ; [ DW_TAG_subprogram ] [line 17] [def] [scope 20] [SymbFac_initFromGraph]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SymbFac/src/SymbFac_symbfac.c]
!6 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8, metadata !32, metadata !62}
!8 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !9} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from IVL]
!9 = metadata !{i32 786454, metadata !1, null, metadata !"IVL", i32 55, i64 0, i64 0, i64 0, i32 0, metadata !10} ; [ DW_TAG_typedef ] [IVL] [line 55, size 0, align 0, offset 0] [from _IVL]
!10 = metadata !{i32 786451, metadata !11, null, metadata !"_IVL", i32 79, i64 384, i64 64, i32 0, i32 0, null, metadata !12, i32 0, null, null} ; [ DW_TAG_structure_type ] [_IVL] [line 79, size 384, align 64, offset 0] [from ]
!11 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SymbFac/src/../../IVL/IVL.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!12 = metadata !{metadata !13, metadata !15, metadata !16, metadata !17, metadata !18, metadata !20, metadata !22, metadata !23}
!13 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"type", i32 80, i64 32, i64 32, i64 0, i32 0, metadata !14} ; [ DW_TAG_member ] [type] [line 80, size 32, align 32, offset 0] [from int]
!14 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!15 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"maxnlist", i32 81, i64 32, i64 32, i64 32, i32 0, metadata !14} ; [ DW_TAG_member ] [maxnlist] [line 81, size 32, align 32, offset 32] [from int]
!16 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"nlist", i32 82, i64 32, i64 32, i64 64, i32 0, metadata !14} ; [ DW_TAG_member ] [nlist] [line 82, size 32, align 32, offset 64] [from int]
!17 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"tsize", i32 83, i64 32, i64 32, i64 96, i32 0, metadata !14} ; [ DW_TAG_member ] [tsize] [line 83, size 32, align 32, offset 96] [from int]
!18 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"sizes", i32 84, i64 64, i64 64, i64 128, i32 0, metadata !19} ; [ DW_TAG_member ] [sizes] [line 84, size 64, align 64, offset 128] [from ]
!19 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !14} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from int]
!20 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"p_vec", i32 85, i64 64, i64 64, i64 192, i32 0, metadata !21} ; [ DW_TAG_member ] [p_vec] [line 85, size 64, align 64, offset 192] [from ]
!21 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !19} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!22 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"incr", i32 86, i64 32, i64 32, i64 256, i32 0, metadata !14} ; [ DW_TAG_member ] [incr] [line 86, size 32, align 32, offset 256] [from int]
!23 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"chunk", i32 87, i64 64, i64 64, i64 320, i32 0, metadata !24} ; [ DW_TAG_member ] [chunk] [line 87, size 64, align 64, offset 320] [from ]
!24 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !25} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from Ichunk]
!25 = metadata !{i32 786454, metadata !11, null, metadata !"Ichunk", i32 56, i64 0, i64 0, i64 0, i32 0, metadata !26} ; [ DW_TAG_typedef ] [Ichunk] [line 56, size 0, align 0, offset 0] [from _Ichunk]
!26 = metadata !{i32 786451, metadata !11, null, metadata !"_Ichunk", i32 102, i64 192, i64 64, i32 0, i32 0, null, metadata !27, i32 0, null, null} ; [ DW_TAG_structure_type ] [_Ichunk] [line 102, size 192, align 64, offset 0] [from ]
!27 = metadata !{metadata !28, metadata !29, metadata !30, metadata !31}
!28 = metadata !{i32 786445, metadata !11, metadata !26, metadata !"size", i32 103, i64 32, i64 32, i64 0, i32 0, metadata !14} ; [ DW_TAG_member ] [size] [line 103, size 32, align 32, offset 0] [from int]
!29 = metadata !{i32 786445, metadata !11, metadata !26, metadata !"inuse", i32 104, i64 32, i64 32, i64 32, i32 0, metadata !14} ; [ DW_TAG_member ] [inuse] [line 104, size 32, align 32, offset 32] [from int]
!30 = metadata !{i32 786445, metadata !11, metadata !26, metadata !"base", i32 105, i64 64, i64 64, i64 64, i32 0, metadata !19} ; [ DW_TAG_member ] [base] [line 105, size 64, align 64, offset 64] [from ]
!31 = metadata !{i32 786445, metadata !11, metadata !26, metadata !"next", i32 106, i64 64, i64 64, i64 128, i32 0, metadata !24} ; [ DW_TAG_member ] [next] [line 106, size 64, align 64, offset 128] [from ]
!32 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !33} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ETree]
!33 = metadata !{i32 786454, metadata !1, null, metadata !"ETree", i32 31, i64 0, i64 0, i64 0, i32 0, metadata !34} ; [ DW_TAG_typedef ] [ETree] [line 31, size 0, align 0, offset 0] [from _ETree]
!34 = metadata !{i32 786451, metadata !35, null, metadata !"_ETree", i32 32, i64 320, i64 64, i32 0, i32 0, null, metadata !36, i32 0, null, null} ; [ DW_TAG_structure_type ] [_ETree] [line 32, size 320, align 64, offset 0] [from ]
!35 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SymbFac/src/../../ETree/ETree.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!36 = metadata !{metadata !37, metadata !38, metadata !39, metadata !50, metadata !60, metadata !61}
!37 = metadata !{i32 786445, metadata !35, metadata !34, metadata !"nfront", i32 33, i64 32, i64 32, i64 0, i32 0, metadata !14} ; [ DW_TAG_member ] [nfront] [line 33, size 32, align 32, offset 0] [from int]
!38 = metadata !{i32 786445, metadata !35, metadata !34, metadata !"nvtx", i32 34, i64 32, i64 32, i64 32, i32 0, metadata !14} ; [ DW_TAG_member ] [nvtx] [line 34, size 32, align 32, offset 32] [from int]
!39 = metadata !{i32 786445, metadata !35, metadata !34, metadata !"tree", i32 35, i64 64, i64 64, i64 64, i32 0, metadata !40} ; [ DW_TAG_member ] [tree] [line 35, size 64, align 64, offset 64] [from ]
!40 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !41} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from Tree]
!41 = metadata !{i32 786454, metadata !35, null, metadata !"Tree", i32 15, i64 0, i64 0, i64 0, i32 0, metadata !42} ; [ DW_TAG_typedef ] [Tree] [line 15, size 0, align 0, offset 0] [from _Tree]
!42 = metadata !{i32 786451, metadata !43, null, metadata !"_Tree", i32 16, i64 256, i64 64, i32 0, i32 0, null, metadata !44, i32 0, null, null} ; [ DW_TAG_structure_type ] [_Tree] [line 16, size 256, align 64, offset 0] [from ]
!43 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SymbFac/src/../../Tree/Tree.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!44 = metadata !{metadata !45, metadata !46, metadata !47, metadata !48, metadata !49}
!45 = metadata !{i32 786445, metadata !43, metadata !42, metadata !"n", i32 17, i64 32, i64 32, i64 0, i32 0, metadata !14} ; [ DW_TAG_member ] [n] [line 17, size 32, align 32, offset 0] [from int]
!46 = metadata !{i32 786445, metadata !43, metadata !42, metadata !"root", i32 18, i64 32, i64 32, i64 32, i32 0, metadata !14} ; [ DW_TAG_member ] [root] [line 18, size 32, align 32, offset 32] [from int]
!47 = metadata !{i32 786445, metadata !43, metadata !42, metadata !"par", i32 19, i64 64, i64 64, i64 64, i32 0, metadata !19} ; [ DW_TAG_member ] [par] [line 19, size 64, align 64, offset 64] [from ]
!48 = metadata !{i32 786445, metadata !43, metadata !42, metadata !"fch", i32 20, i64 64, i64 64, i64 128, i32 0, metadata !19} ; [ DW_TAG_member ] [fch] [line 20, size 64, align 64, offset 128] [from ]
!49 = metadata !{i32 786445, metadata !43, metadata !42, metadata !"sib", i32 21, i64 64, i64 64, i64 192, i32 0, metadata !19} ; [ DW_TAG_member ] [sib] [line 21, size 64, align 64, offset 192] [from ]
!50 = metadata !{i32 786445, metadata !35, metadata !34, metadata !"nodwghtsIV", i32 36, i64 64, i64 64, i64 128, i32 0, metadata !51} ; [ DW_TAG_member ] [nodwghtsIV] [line 36, size 64, align 64, offset 128] [from ]
!51 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !52} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from IV]
!52 = metadata !{i32 786454, metadata !35, null, metadata !"IV", i32 20, i64 0, i64 0, i64 0, i32 0, metadata !53} ; [ DW_TAG_typedef ] [IV] [line 20, size 0, align 0, offset 0] [from _IV]
!53 = metadata !{i32 786451, metadata !54, null, metadata !"_IV", i32 21, i64 192, i64 64, i32 0, i32 0, null, metadata !55, i32 0, null, null} ; [ DW_TAG_structure_type ] [_IV] [line 21, size 192, align 64, offset 0] [from ]
!54 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SymbFac/src/../../IV/IV.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!55 = metadata !{metadata !56, metadata !57, metadata !58, metadata !59}
!56 = metadata !{i32 786445, metadata !54, metadata !53, metadata !"size", i32 22, i64 32, i64 32, i64 0, i32 0, metadata !14} ; [ DW_TAG_member ] [size] [line 22, size 32, align 32, offset 0] [from int]
!57 = metadata !{i32 786445, metadata !54, metadata !53, metadata !"maxsize", i32 23, i64 32, i64 32, i64 32, i32 0, metadata !14} ; [ DW_TAG_member ] [maxsize] [line 23, size 32, align 32, offset 32] [from int]
!58 = metadata !{i32 786445, metadata !54, metadata !53, metadata !"owned", i32 24, i64 32, i64 32, i64 64, i32 0, metadata !14} ; [ DW_TAG_member ] [owned] [line 24, size 32, align 32, offset 64] [from int]
!59 = metadata !{i32 786445, metadata !54, metadata !53, metadata !"vec", i32 25, i64 64, i64 64, i64 128, i32 0, metadata !19} ; [ DW_TAG_member ] [vec] [line 25, size 64, align 64, offset 128] [from ]
!60 = metadata !{i32 786445, metadata !35, metadata !34, metadata !"bndwghtsIV", i32 37, i64 64, i64 64, i64 192, i32 0, metadata !51} ; [ DW_TAG_member ] [bndwghtsIV] [line 37, size 64, align 64, offset 192] [from ]
!61 = metadata !{i32 786445, metadata !35, metadata !34, metadata !"vtxToFrontIV", i32 38, i64 64, i64 64, i64 256, i32 0, metadata !51} ; [ DW_TAG_member ] [vtxToFrontIV] [line 38, size 64, align 64, offset 256] [from ]
!62 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !63} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from Graph]
!63 = metadata !{i32 786454, metadata !1, null, metadata !"Graph", i32 49, i64 0, i64 0, i64 0, i32 0, metadata !64} ; [ DW_TAG_typedef ] [Graph] [line 49, size 0, align 0, offset 0] [from _Graph]
!64 = metadata !{i32 786451, metadata !65, null, metadata !"_Graph", i32 50, i64 384, i64 64, i32 0, i32 0, null, metadata !66, i32 0, null, null} ; [ DW_TAG_structure_type ] [_Graph] [line 50, size 384, align 64, offset 0] [from ]
!65 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SymbFac/src/../../Graph/Graph.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!66 = metadata !{metadata !67, metadata !68, metadata !69, metadata !70, metadata !71, metadata !72, metadata !73, metadata !74, metadata !75}
!67 = metadata !{i32 786445, metadata !65, metadata !64, metadata !"type", i32 51, i64 32, i64 32, i64 0, i32 0, metadata !14} ; [ DW_TAG_member ] [type] [line 51, size 32, align 32, offset 0] [from int]
!68 = metadata !{i32 786445, metadata !65, metadata !64, metadata !"nvtx", i32 52, i64 32, i64 32, i64 32, i32 0, metadata !14} ; [ DW_TAG_member ] [nvtx] [line 52, size 32, align 32, offset 32] [from int]
!69 = metadata !{i32 786445, metadata !65, metadata !64, metadata !"nvbnd", i32 53, i64 32, i64 32, i64 64, i32 0, metadata !14} ; [ DW_TAG_member ] [nvbnd] [line 53, size 32, align 32, offset 64] [from int]
!70 = metadata !{i32 786445, metadata !65, metadata !64, metadata !"nedges", i32 54, i64 32, i64 32, i64 96, i32 0, metadata !14} ; [ DW_TAG_member ] [nedges] [line 54, size 32, align 32, offset 96] [from int]
!71 = metadata !{i32 786445, metadata !65, metadata !64, metadata !"totvwght", i32 55, i64 32, i64 32, i64 128, i32 0, metadata !14} ; [ DW_TAG_member ] [totvwght] [line 55, size 32, align 32, offset 128] [from int]
!72 = metadata !{i32 786445, metadata !65, metadata !64, metadata !"totewght", i32 56, i64 32, i64 32, i64 160, i32 0, metadata !14} ; [ DW_TAG_member ] [totewght] [line 56, size 32, align 32, offset 160] [from int]
!73 = metadata !{i32 786445, metadata !65, metadata !64, metadata !"adjIVL", i32 57, i64 64, i64 64, i64 192, i32 0, metadata !8} ; [ DW_TAG_member ] [adjIVL] [line 57, size 64, align 64, offset 192] [from ]
!74 = metadata !{i32 786445, metadata !65, metadata !64, metadata !"vwghts", i32 58, i64 64, i64 64, i64 256, i32 0, metadata !19} ; [ DW_TAG_member ] [vwghts] [line 58, size 64, align 64, offset 256] [from ]
!75 = metadata !{i32 786445, metadata !65, metadata !64, metadata !"ewghtIVL", i32 59, i64 64, i64 64, i64 320, i32 0, metadata !8} ; [ DW_TAG_member ] [ewghtIVL] [line 59, size 64, align 64, offset 320] [from ]
!76 = metadata !{metadata !77, metadata !78, metadata !79, metadata !80, metadata !81, metadata !82, metadata !83, metadata !84, metadata !85, metadata !86, metadata !87, metadata !88, metadata !89, metadata !90, metadata !91, metadata !92, metadata !93, metadata !94, metadata !95, metadata !96, metadata !97, metadata !98, metadata !99, metadata !100, metadata !101, metadata !102, metadata !103, metadata !104, metadata !105, metadata !106, metadata !107, metadata !108, metadata !109}
!77 = metadata !{i32 786689, metadata !4, metadata !"etree", metadata !5, i32 16777234, metadata !32, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [etree] [line 18]
!78 = metadata !{i32 786689, metadata !4, metadata !"graph", metadata !5, i32 33554451, metadata !62, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [graph] [line 19]
!79 = metadata !{i32 786688, metadata !4, metadata !"bndweight", metadata !5, i32 21, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [bndweight] [line 21]
!80 = metadata !{i32 786688, metadata !4, metadata !"count", metadata !5, i32 21, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [count] [line 21]
!81 = metadata !{i32 786688, metadata !4, metadata !"first", metadata !5, i32 21, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [first] [line 21]
!82 = metadata !{i32 786688, metadata !4, metadata !"front", metadata !5, i32 21, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [front] [line 21]
!83 = metadata !{i32 786688, metadata !4, metadata !"ierr", metadata !5, i32 21, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ierr] [line 21]
!84 = metadata !{i32 786688, metadata !4, metadata !"ii", metadata !5, i32 21, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ii] [line 21]
!85 = metadata !{i32 786688, metadata !4, metadata !"intweight", metadata !5, i32 21, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [intweight] [line 21]
!86 = metadata !{i32 786688, metadata !4, metadata !"I", metadata !5, i32 21, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [I] [line 21]
!87 = metadata !{i32 786688, metadata !4, metadata !"J", metadata !5, i32 21, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [J] [line 21]
!88 = metadata !{i32 786688, metadata !4, metadata !"last", metadata !5, i32 22, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [last] [line 22]
!89 = metadata !{i32 786688, metadata !4, metadata !"nfromchildren", metadata !5, i32 22, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nfromchildren] [line 22]
!90 = metadata !{i32 786688, metadata !4, metadata !"nint", metadata !5, i32 22, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nint] [line 22]
!91 = metadata !{i32 786688, metadata !4, metadata !"nfront", metadata !5, i32 22, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nfront] [line 22]
!92 = metadata !{i32 786688, metadata !4, metadata !"nvtx", metadata !5, i32 22, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nvtx] [line 22]
!93 = metadata !{i32 786688, metadata !4, metadata !"size", metadata !5, i32 22, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [size] [line 22]
!94 = metadata !{i32 786688, metadata !4, metadata !"v", metadata !5, i32 22, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [v] [line 22]
!95 = metadata !{i32 786688, metadata !4, metadata !"w", metadata !5, i32 22, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [w] [line 22]
!96 = metadata !{i32 786688, metadata !4, metadata !"adj", metadata !5, i32 23, metadata !19, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [adj] [line 23]
!97 = metadata !{i32 786688, metadata !4, metadata !"bndwghts", metadata !5, i32 23, metadata !19, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [bndwghts] [line 23]
!98 = metadata !{i32 786688, metadata !4, metadata !"fch", metadata !5, i32 23, metadata !19, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [fch] [line 23]
!99 = metadata !{i32 786688, metadata !4, metadata !"head", metadata !5, i32 23, metadata !19, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [head] [line 23]
!100 = metadata !{i32 786688, metadata !4, metadata !"indices", metadata !5, i32 23, metadata !19, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [indices] [line 23]
!101 = metadata !{i32 786688, metadata !4, metadata !"keys", metadata !5, i32 23, metadata !19, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [keys] [line 23]
!102 = metadata !{i32 786688, metadata !4, metadata !"link", metadata !5, i32 23, metadata !19, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [link] [line 23]
!103 = metadata !{i32 786688, metadata !4, metadata !"marker", metadata !5, i32 23, metadata !19, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [marker] [line 23]
!104 = metadata !{i32 786688, metadata !4, metadata !"nodwghts", metadata !5, i32 24, metadata !19, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nodwghts] [line 24]
!105 = metadata !{i32 786688, metadata !4, metadata !"sib", metadata !5, i32 24, metadata !19, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sib] [line 24]
!106 = metadata !{i32 786688, metadata !4, metadata !"vwghts", metadata !5, i32 24, metadata !19, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [vwghts] [line 24]
!107 = metadata !{i32 786688, metadata !4, metadata !"vtxToFront", metadata !5, i32 24, metadata !19, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [vtxToFront] [line 24]
!108 = metadata !{i32 786688, metadata !4, metadata !"frontToVtxIVL", metadata !5, i32 25, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [frontToVtxIVL] [line 25]
!109 = metadata !{i32 786688, metadata !4, metadata !"tree", metadata !5, i32 26, metadata !40, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [tree] [line 26]
!110 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"SymbFac_initFromInpMtx", metadata !"SymbFac_initFromInpMtx", metadata !"", i32 233, metadata !111, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, %struct._IVL* (%struct._ETree*, %struct._InpMtx*)* @SymbFac_initFromInpMtx, null, null, metadata !142, i32 236} ; [ DW_TAG_subprogram ] [line 233] [def] [scope 236] [SymbFac_initFromInpMtx]
!111 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !112, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!112 = metadata !{metadata !8, metadata !32, metadata !113}
!113 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !114} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from InpMtx]
!114 = metadata !{i32 786454, metadata !1, null, metadata !"InpMtx", i32 51, i64 0, i64 0, i64 0, i32 0, metadata !115} ; [ DW_TAG_typedef ] [InpMtx] [line 51, size 0, align 0, offset 0] [from _InpMtx]
!115 = metadata !{i32 786451, metadata !116, null, metadata !"_InpMtx", i32 52, i64 1472, i64 64, i32 0, i32 0, null, metadata !117, i32 0, null, null} ; [ DW_TAG_structure_type ] [_InpMtx] [line 52, size 1472, align 64, offset 0] [from ]
!116 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SymbFac/src/../../InpMtx/InpMtx.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!117 = metadata !{metadata !118, metadata !119, metadata !120, metadata !121, metadata !122, metadata !123, metadata !125, metadata !126, metadata !127, metadata !137, metadata !138, metadata !139, metadata !140, metadata !141}
!118 = metadata !{i32 786445, metadata !116, metadata !115, metadata !"coordType", i32 53, i64 32, i64 32, i64 0, i32 0, metadata !14} ; [ DW_TAG_member ] [coordType] [line 53, size 32, align 32, offset 0] [from int]
!119 = metadata !{i32 786445, metadata !116, metadata !115, metadata !"storageMode", i32 54, i64 32, i64 32, i64 32, i32 0, metadata !14} ; [ DW_TAG_member ] [storageMode] [line 54, size 32, align 32, offset 32] [from int]
!120 = metadata !{i32 786445, metadata !116, metadata !115, metadata !"inputMode", i32 55, i64 32, i64 32, i64 64, i32 0, metadata !14} ; [ DW_TAG_member ] [inputMode] [line 55, size 32, align 32, offset 64] [from int]
!121 = metadata !{i32 786445, metadata !116, metadata !115, metadata !"maxnent", i32 56, i64 32, i64 32, i64 96, i32 0, metadata !14} ; [ DW_TAG_member ] [maxnent] [line 56, size 32, align 32, offset 96] [from int]
!122 = metadata !{i32 786445, metadata !116, metadata !115, metadata !"nent", i32 57, i64 32, i64 32, i64 128, i32 0, metadata !14} ; [ DW_TAG_member ] [nent] [line 57, size 32, align 32, offset 128] [from int]
!123 = metadata !{i32 786445, metadata !116, metadata !115, metadata !"resizeMultiple", i32 58, i64 64, i64 64, i64 192, i32 0, metadata !124} ; [ DW_TAG_member ] [resizeMultiple] [line 58, size 64, align 64, offset 192] [from double]
!124 = metadata !{i32 786468, null, null, metadata !"double", i32 0, i64 64, i64 64, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [double] [line 0, size 64, align 64, offset 0, enc DW_ATE_float]
!125 = metadata !{i32 786445, metadata !116, metadata !115, metadata !"ivec1IV", i32 59, i64 192, i64 64, i64 256, i32 0, metadata !52} ; [ DW_TAG_member ] [ivec1IV] [line 59, size 192, align 64, offset 256] [from IV]
!126 = metadata !{i32 786445, metadata !116, metadata !115, metadata !"ivec2IV", i32 60, i64 192, i64 64, i64 448, i32 0, metadata !52} ; [ DW_TAG_member ] [ivec2IV] [line 60, size 192, align 64, offset 448] [from IV]
!127 = metadata !{i32 786445, metadata !116, metadata !115, metadata !"dvecDV", i32 61, i64 192, i64 64, i64 640, i32 0, metadata !128} ; [ DW_TAG_member ] [dvecDV] [line 61, size 192, align 64, offset 640] [from DV]
!128 = metadata !{i32 786454, metadata !116, null, metadata !"DV", i32 20, i64 0, i64 0, i64 0, i32 0, metadata !129} ; [ DW_TAG_typedef ] [DV] [line 20, size 0, align 0, offset 0] [from _DV]
!129 = metadata !{i32 786451, metadata !130, null, metadata !"_DV", i32 21, i64 192, i64 64, i32 0, i32 0, null, metadata !131, i32 0, null, null} ; [ DW_TAG_structure_type ] [_DV] [line 21, size 192, align 64, offset 0] [from ]
!130 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SymbFac/src/../../DV/DV.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!131 = metadata !{metadata !132, metadata !133, metadata !134, metadata !135}
!132 = metadata !{i32 786445, metadata !130, metadata !129, metadata !"size", i32 22, i64 32, i64 32, i64 0, i32 0, metadata !14} ; [ DW_TAG_member ] [size] [line 22, size 32, align 32, offset 0] [from int]
!133 = metadata !{i32 786445, metadata !130, metadata !129, metadata !"maxsize", i32 23, i64 32, i64 32, i64 32, i32 0, metadata !14} ; [ DW_TAG_member ] [maxsize] [line 23, size 32, align 32, offset 32] [from int]
!134 = metadata !{i32 786445, metadata !130, metadata !129, metadata !"owned", i32 24, i64 32, i64 32, i64 64, i32 0, metadata !14} ; [ DW_TAG_member ] [owned] [line 24, size 32, align 32, offset 64] [from int]
!135 = metadata !{i32 786445, metadata !130, metadata !129, metadata !"vec", i32 25, i64 64, i64 64, i64 128, i32 0, metadata !136} ; [ DW_TAG_member ] [vec] [line 25, size 64, align 64, offset 128] [from ]
!136 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !124} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from double]
!137 = metadata !{i32 786445, metadata !116, metadata !115, metadata !"maxnvector", i32 62, i64 32, i64 32, i64 832, i32 0, metadata !14} ; [ DW_TAG_member ] [maxnvector] [line 62, size 32, align 32, offset 832] [from int]
!138 = metadata !{i32 786445, metadata !116, metadata !115, metadata !"nvector", i32 63, i64 32, i64 32, i64 864, i32 0, metadata !14} ; [ DW_TAG_member ] [nvector] [line 63, size 32, align 32, offset 864] [from int]
!139 = metadata !{i32 786445, metadata !116, metadata !115, metadata !"vecidsIV", i32 64, i64 192, i64 64, i64 896, i32 0, metadata !52} ; [ DW_TAG_member ] [vecidsIV] [line 64, size 192, align 64, offset 896] [from IV]
!140 = metadata !{i32 786445, metadata !116, metadata !115, metadata !"sizesIV", i32 65, i64 192, i64 64, i64 1088, i32 0, metadata !52} ; [ DW_TAG_member ] [sizesIV] [line 65, size 192, align 64, offset 1088] [from IV]
!141 = metadata !{i32 786445, metadata !116, metadata !115, metadata !"offsetsIV", i32 66, i64 192, i64 64, i64 1280, i32 0, metadata !52} ; [ DW_TAG_member ] [offsetsIV] [line 66, size 192, align 64, offset 1280] [from IV]
!142 = metadata !{metadata !143, metadata !144, metadata !145, metadata !146, metadata !147, metadata !148, metadata !149, metadata !150, metadata !151, metadata !152, metadata !153, metadata !154, metadata !155, metadata !156, metadata !157, metadata !158, metadata !159, metadata !160, metadata !161, metadata !162, metadata !163, metadata !164, metadata !165, metadata !166, metadata !167, metadata !168, metadata !169, metadata !170, metadata !171}
!143 = metadata !{i32 786689, metadata !110, metadata !"etree", metadata !5, i32 16777450, metadata !32, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [etree] [line 234]
!144 = metadata !{i32 786689, metadata !110, metadata !"inpmtx", metadata !5, i32 33554667, metadata !113, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [inpmtx] [line 235]
!145 = metadata !{i32 786688, metadata !110, metadata !"count", metadata !5, i32 237, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [count] [line 237]
!146 = metadata !{i32 786688, metadata !110, metadata !"front", metadata !5, i32 237, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [front] [line 237]
!147 = metadata !{i32 786688, metadata !110, metadata !"ierr", metadata !5, i32 237, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ierr] [line 237]
!148 = metadata !{i32 786688, metadata !110, metadata !"ii", metadata !5, i32 237, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ii] [line 237]
!149 = metadata !{i32 786688, metadata !110, metadata !"I", metadata !5, i32 237, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [I] [line 237]
!150 = metadata !{i32 786688, metadata !110, metadata !"J", metadata !5, i32 237, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [J] [line 237]
!151 = metadata !{i32 786688, metadata !110, metadata !"nfromchildren", metadata !5, i32 237, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nfromchildren] [line 237]
!152 = metadata !{i32 786688, metadata !110, metadata !"nint", metadata !5, i32 237, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nint] [line 237]
!153 = metadata !{i32 786688, metadata !110, metadata !"nfront", metadata !5, i32 237, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nfront] [line 237]
!154 = metadata !{i32 786688, metadata !110, metadata !"nvector", metadata !5, i32 238, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nvector] [line 238]
!155 = metadata !{i32 786688, metadata !110, metadata !"nvtx", metadata !5, i32 238, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nvtx] [line 238]
!156 = metadata !{i32 786688, metadata !110, metadata !"size", metadata !5, i32 238, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [size] [line 238]
!157 = metadata !{i32 786688, metadata !110, metadata !"v", metadata !5, i32 238, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [v] [line 238]
!158 = metadata !{i32 786688, metadata !110, metadata !"w", metadata !5, i32 238, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [w] [line 238]
!159 = metadata !{i32 786688, metadata !110, metadata !"adj", metadata !5, i32 239, metadata !19, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [adj] [line 239]
!160 = metadata !{i32 786688, metadata !110, metadata !"bndwghts", metadata !5, i32 239, metadata !19, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [bndwghts] [line 239]
!161 = metadata !{i32 786688, metadata !110, metadata !"fch", metadata !5, i32 239, metadata !19, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [fch] [line 239]
!162 = metadata !{i32 786688, metadata !110, metadata !"head", metadata !5, i32 239, metadata !19, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [head] [line 239]
!163 = metadata !{i32 786688, metadata !110, metadata !"indices", metadata !5, i32 239, metadata !19, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [indices] [line 239]
!164 = metadata !{i32 786688, metadata !110, metadata !"keys", metadata !5, i32 239, metadata !19, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [keys] [line 239]
!165 = metadata !{i32 786688, metadata !110, metadata !"link", metadata !5, i32 239, metadata !19, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [link] [line 239]
!166 = metadata !{i32 786688, metadata !110, metadata !"marker", metadata !5, i32 239, metadata !19, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [marker] [line 239]
!167 = metadata !{i32 786688, metadata !110, metadata !"nodwghts", metadata !5, i32 240, metadata !19, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nodwghts] [line 240]
!168 = metadata !{i32 786688, metadata !110, metadata !"sib", metadata !5, i32 240, metadata !19, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sib] [line 240]
!169 = metadata !{i32 786688, metadata !110, metadata !"vtxToFront", metadata !5, i32 240, metadata !19, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [vtxToFront] [line 240]
!170 = metadata !{i32 786688, metadata !110, metadata !"frontToVtxIVL", metadata !5, i32 241, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [frontToVtxIVL] [line 241]
!171 = metadata !{i32 786688, metadata !110, metadata !"tree", metadata !5, i32 242, metadata !40, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [tree] [line 242]
!172 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"SymbFac_initFromPencil", metadata !"SymbFac_initFromPencil", metadata !"", i32 435, metadata !173, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, %struct._IVL* (%struct._ETree*, %struct._Pencil*)* @SymbFac_initFromPencil, null, null, metadata !188, i32 438} ; [ DW_TAG_subprogram ] [line 435] [def] [scope 438] [SymbFac_initFromPencil]
!173 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !174, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!174 = metadata !{metadata !8, metadata !32, metadata !175}
!175 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !176} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from Pencil]
!176 = metadata !{i32 786454, metadata !1, null, metadata !"Pencil", i32 17, i64 0, i64 0, i64 0, i32 0, metadata !177} ; [ DW_TAG_typedef ] [Pencil] [line 17, size 0, align 0, offset 0] [from _Pencil]
!177 = metadata !{i32 786451, metadata !178, null, metadata !"_Pencil", i32 18, i64 320, i64 64, i32 0, i32 0, null, metadata !179, i32 0, null, null} ; [ DW_TAG_structure_type ] [_Pencil] [line 18, size 320, align 64, offset 0] [from ]
!178 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SymbFac/src/../../Pencil/Pencil.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!179 = metadata !{metadata !180, metadata !181, metadata !182, metadata !183, metadata !184}
!180 = metadata !{i32 786445, metadata !178, metadata !177, metadata !"type", i32 19, i64 32, i64 32, i64 0, i32 0, metadata !14} ; [ DW_TAG_member ] [type] [line 19, size 32, align 32, offset 0] [from int]
!181 = metadata !{i32 786445, metadata !178, metadata !177, metadata !"symflag", i32 20, i64 32, i64 32, i64 32, i32 0, metadata !14} ; [ DW_TAG_member ] [symflag] [line 20, size 32, align 32, offset 32] [from int]
!182 = metadata !{i32 786445, metadata !178, metadata !177, metadata !"inpmtxA", i32 21, i64 64, i64 64, i64 64, i32 0, metadata !113} ; [ DW_TAG_member ] [inpmtxA] [line 21, size 64, align 64, offset 64] [from ]
!183 = metadata !{i32 786445, metadata !178, metadata !177, metadata !"inpmtxB", i32 22, i64 64, i64 64, i64 128, i32 0, metadata !113} ; [ DW_TAG_member ] [inpmtxB] [line 22, size 64, align 64, offset 128] [from ]
!184 = metadata !{i32 786445, metadata !178, metadata !177, metadata !"sigma", i32 23, i64 128, i64 64, i64 192, i32 0, metadata !185} ; [ DW_TAG_member ] [sigma] [line 23, size 128, align 64, offset 192] [from ]
!185 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 128, i64 64, i32 0, i32 0, metadata !124, metadata !186, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 128, align 64, offset 0] [from double]
!186 = metadata !{metadata !187}
!187 = metadata !{i32 786465, i64 0, i64 2}       ; [ DW_TAG_subrange_type ] [0, 1]
!188 = metadata !{metadata !189, metadata !190, metadata !191, metadata !192, metadata !193, metadata !194, metadata !195, metadata !196, metadata !197, metadata !198, metadata !199, metadata !200, metadata !201, metadata !202, metadata !203, metadata !204, metadata !205, metadata !206, metadata !207, metadata !208, metadata !209, metadata !210, metadata !211, metadata !212, metadata !213, metadata !214, metadata !215, metadata !216, metadata !217, metadata !218, metadata !219, metadata !220}
!189 = metadata !{i32 786689, metadata !172, metadata !"etree", metadata !5, i32 16777652, metadata !32, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [etree] [line 436]
!190 = metadata !{i32 786689, metadata !172, metadata !"pencil", metadata !5, i32 33554869, metadata !175, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [pencil] [line 437]
!191 = metadata !{i32 786688, metadata !172, metadata !"inpmtxA", metadata !5, i32 439, metadata !113, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [inpmtxA] [line 439]
!192 = metadata !{i32 786688, metadata !172, metadata !"inpmtxB", metadata !5, i32 439, metadata !113, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [inpmtxB] [line 439]
!193 = metadata !{i32 786688, metadata !172, metadata !"count", metadata !5, i32 440, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [count] [line 440]
!194 = metadata !{i32 786688, metadata !172, metadata !"front", metadata !5, i32 440, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [front] [line 440]
!195 = metadata !{i32 786688, metadata !172, metadata !"ierr", metadata !5, i32 440, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ierr] [line 440]
!196 = metadata !{i32 786688, metadata !172, metadata !"ii", metadata !5, i32 440, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ii] [line 440]
!197 = metadata !{i32 786688, metadata !172, metadata !"I", metadata !5, i32 440, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [I] [line 440]
!198 = metadata !{i32 786688, metadata !172, metadata !"J", metadata !5, i32 440, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [J] [line 440]
!199 = metadata !{i32 786688, metadata !172, metadata !"nfromchildren", metadata !5, i32 440, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nfromchildren] [line 440]
!200 = metadata !{i32 786688, metadata !172, metadata !"nint", metadata !5, i32 440, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nint] [line 440]
!201 = metadata !{i32 786688, metadata !172, metadata !"nfront", metadata !5, i32 440, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nfront] [line 440]
!202 = metadata !{i32 786688, metadata !172, metadata !"nvectorA", metadata !5, i32 441, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nvectorA] [line 441]
!203 = metadata !{i32 786688, metadata !172, metadata !"nvectorB", metadata !5, i32 441, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nvectorB] [line 441]
!204 = metadata !{i32 786688, metadata !172, metadata !"nvtx", metadata !5, i32 441, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nvtx] [line 441]
!205 = metadata !{i32 786688, metadata !172, metadata !"size", metadata !5, i32 441, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [size] [line 441]
!206 = metadata !{i32 786688, metadata !172, metadata !"v", metadata !5, i32 441, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [v] [line 441]
!207 = metadata !{i32 786688, metadata !172, metadata !"w", metadata !5, i32 441, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [w] [line 441]
!208 = metadata !{i32 786688, metadata !172, metadata !"adj", metadata !5, i32 442, metadata !19, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [adj] [line 442]
!209 = metadata !{i32 786688, metadata !172, metadata !"bndwghts", metadata !5, i32 442, metadata !19, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [bndwghts] [line 442]
!210 = metadata !{i32 786688, metadata !172, metadata !"fch", metadata !5, i32 442, metadata !19, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [fch] [line 442]
!211 = metadata !{i32 786688, metadata !172, metadata !"head", metadata !5, i32 442, metadata !19, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [head] [line 442]
!212 = metadata !{i32 786688, metadata !172, metadata !"indices", metadata !5, i32 442, metadata !19, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [indices] [line 442]
!213 = metadata !{i32 786688, metadata !172, metadata !"keys", metadata !5, i32 442, metadata !19, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [keys] [line 442]
!214 = metadata !{i32 786688, metadata !172, metadata !"link", metadata !5, i32 442, metadata !19, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [link] [line 442]
!215 = metadata !{i32 786688, metadata !172, metadata !"marker", metadata !5, i32 443, metadata !19, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [marker] [line 443]
!216 = metadata !{i32 786688, metadata !172, metadata !"nodwghts", metadata !5, i32 443, metadata !19, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nodwghts] [line 443]
!217 = metadata !{i32 786688, metadata !172, metadata !"sib", metadata !5, i32 443, metadata !19, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sib] [line 443]
!218 = metadata !{i32 786688, metadata !172, metadata !"vtxToFront", metadata !5, i32 443, metadata !19, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [vtxToFront] [line 443]
!219 = metadata !{i32 786688, metadata !172, metadata !"frontToVtxIVL", metadata !5, i32 444, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [frontToVtxIVL] [line 444]
!220 = metadata !{i32 786688, metadata !172, metadata !"tree", metadata !5, i32 445, metadata !40, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [tree] [line 445]
!221 = metadata !{i32 18, i32 0, metadata !4, null}
!222 = metadata !{i32 19, i32 0, metadata !4, null}
!223 = metadata !{i32 22, i32 0, metadata !4, null}
!224 = metadata !{i32 23, i32 0, metadata !4, null}
!225 = metadata !{i32 32, i32 0, metadata !4, null}
!226 = metadata !{i32 37, i32 0, metadata !227, null}
!227 = metadata !{i32 786443, metadata !1, metadata !4, i32 36, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SymbFac/src/SymbFac_symbfac.c]
!228 = metadata !{metadata !"any pointer", metadata !229}
!229 = metadata !{metadata !"omnipotent char", metadata !230}
!230 = metadata !{metadata !"Simple C/C++ TBAA"}
!231 = metadata !{i32 39, i32 0, metadata !227, null}
!232 = metadata !{metadata !"int", metadata !229}
!233 = metadata !{i32 40, i32 0, metadata !234, null}
!234 = metadata !{i32 786443, metadata !1, metadata !227, i32 39, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SymbFac/src/SymbFac_symbfac.c]
!235 = metadata !{i32 41, i32 0, metadata !234, null}
!236 = metadata !{i32 42, i32 0, metadata !227, null}
!237 = metadata !{i32 43, i32 0, metadata !238, null}
!238 = metadata !{i32 786443, metadata !1, metadata !227, i32 42, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SymbFac/src/SymbFac_symbfac.c]
!239 = metadata !{i32 44, i32 0, metadata !238, null}
!240 = metadata !{i32 45, i32 0, metadata !227, null}
!241 = metadata !{i32 47, i32 0, metadata !4, null}
!242 = metadata !{i32 54, i32 0, metadata !4, null}
!243 = metadata !{i32 55, i32 0, metadata !4, null}
!244 = metadata !{i32 56, i32 0, metadata !4, null}
!245 = metadata !{i32 57, i32 0, metadata !4, null}
!246 = metadata !{i32 58, i32 0, metadata !4, null} ; [ DW_TAG_imported_module ]
!247 = metadata !{i32 59, i32 0, metadata !4, null}
!248 = metadata !{i32 60, i32 0, metadata !4, null}
!249 = metadata !{i32 61, i32 0, metadata !4, null}
!250 = metadata !{i32 62, i32 0, metadata !4, null}
!251 = metadata !{i32 63, i32 0, metadata !4, null}
!252 = metadata !{i32 64, i32 0, metadata !253, null}
!253 = metadata !{i32 786443, metadata !1, metadata !4, i32 64, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SymbFac/src/SymbFac_symbfac.c]
!254 = metadata !{i32 65, i32 0, metadata !255, null}
!255 = metadata !{i32 786443, metadata !1, metadata !253, i32 64, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SymbFac/src/SymbFac_symbfac.c]
!256 = metadata !{i32 66, i32 0, metadata !255, null}
!257 = metadata !{i32 67, i32 0, metadata !255, null}
!258 = metadata !{i32 69, i32 0, metadata !4, null}
!259 = metadata !{i32 70, i32 0, metadata !4, null}
!260 = metadata !{i32 71, i32 0, metadata !4, null}
!261 = metadata !{i32 77, i32 0, metadata !262, null}
!262 = metadata !{i32 786443, metadata !1, metadata !4, i32 77, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SymbFac/src/SymbFac_symbfac.c]
!263 = metadata !{i32 138, i32 0, metadata !264, null}
!264 = metadata !{i32 786443, metadata !1, metadata !265, i32 135, i32 0, i32 20} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SymbFac/src/SymbFac_symbfac.c]
!265 = metadata !{i32 786443, metadata !1, metadata !266, i32 133, i32 0, i32 19} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SymbFac/src/SymbFac_symbfac.c]
!266 = metadata !{i32 786443, metadata !1, metadata !267, i32 133, i32 0, i32 18} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SymbFac/src/SymbFac_symbfac.c]
!267 = metadata !{i32 786443, metadata !1, metadata !268, i32 131, i32 0, i32 17} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SymbFac/src/SymbFac_symbfac.c]
!268 = metadata !{i32 786443, metadata !1, metadata !269, i32 131, i32 0, i32 16} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SymbFac/src/SymbFac_symbfac.c]
!269 = metadata !{i32 786443, metadata !1, metadata !262, i32 79, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SymbFac/src/SymbFac_symbfac.c]
!270 = metadata !{i32 83, i32 0, metadata !269, null}
!271 = metadata !{i32 89, i32 0, metadata !269, null}
!272 = metadata !{i32 90, i32 0, metadata !273, null}
!273 = metadata !{i32 786443, metadata !1, metadata !269, i32 90, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SymbFac/src/SymbFac_symbfac.c]
!274 = metadata !{i32 91, i32 0, metadata !275, null}
!275 = metadata !{i32 786443, metadata !1, metadata !273, i32 90, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SymbFac/src/SymbFac_symbfac.c]
!276 = metadata !{i32 92, i32 0, metadata !275, null}
!277 = metadata !{i32 93, i32 0, metadata !275, null}
!278 = metadata !{i32 95, i32 0, metadata !269, null}
!279 = metadata !{i32 105, i32 0, metadata !269, null}
!280 = metadata !{i32 106, i32 0, metadata !281, null}
!281 = metadata !{i32 786443, metadata !1, metadata !269, i32 106, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SymbFac/src/SymbFac_symbfac.c]
!282 = metadata !{i32 107, i32 0, metadata !283, null}
!283 = metadata !{i32 786443, metadata !1, metadata !281, i32 106, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SymbFac/src/SymbFac_symbfac.c]
!284 = metadata !{i32 108, i32 0, metadata !285, null}
!285 = metadata !{i32 786443, metadata !1, metadata !283, i32 108, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SymbFac/src/SymbFac_symbfac.c]
!286 = metadata !{i32 109, i32 0, metadata !287, null}
!287 = metadata !{i32 786443, metadata !1, metadata !285, i32 108, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SymbFac/src/SymbFac_symbfac.c]
!288 = metadata !{i32 111, i32 0, metadata !289, null}
!289 = metadata !{i32 786443, metadata !1, metadata !287, i32 110, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SymbFac/src/SymbFac_symbfac.c]
!290 = metadata !{i32 110, i32 0, metadata !287, null}
!291 = metadata !{i32 112, i32 0, metadata !292, null}
!292 = metadata !{i32 786443, metadata !1, metadata !289, i32 111, i32 0, i32 14} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SymbFac/src/SymbFac_symbfac.c]
!293 = metadata !{i32 115, i32 0, metadata !292, null}
!294 = metadata !{i32 113, i32 0, metadata !292, null}
!295 = metadata !{i32 114, i32 0, metadata !292, null}
!296 = metadata !{i32 131, i32 0, metadata !268, null}
!297 = metadata !{i32 132, i32 0, metadata !267, null}
!298 = metadata !{i32 133, i32 0, metadata !266, null}
!299 = metadata !{i32 134, i32 0, metadata !265, null}
!300 = metadata !{i32 135, i32 0, metadata !265, null}
!301 = metadata !{i32 136, i32 0, metadata !264, null}
!302 = metadata !{i32 137, i32 0, metadata !264, null}
!303 = metadata !{i32 139, i32 0, metadata !264, null}
!304 = metadata !{i32 157, i32 0, metadata !269, null}
!305 = metadata !{i32 158, i32 0, metadata !269, null}
!306 = metadata !{i32 164, i32 0, metadata !307, null}
!307 = metadata !{i32 786443, metadata !1, metadata !269, i32 164, i32 0, i32 21} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SymbFac/src/SymbFac_symbfac.c]
!308 = metadata !{i32 168, i32 0, metadata !269, null}
!309 = metadata !{i32 178, i32 0, metadata !269, null}
!310 = metadata !{i32 179, i32 0, metadata !269, null}
!311 = metadata !{i32 1}
!312 = metadata !{i32 180, i32 0, metadata !269, null}
!313 = metadata !{i32 181, i32 0, metadata !269, null}
!314 = metadata !{i32 165, i32 0, metadata !315, null}
!315 = metadata !{i32 786443, metadata !1, metadata !307, i32 164, i32 0, i32 22} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SymbFac/src/SymbFac_symbfac.c]
!316 = metadata !{i32 166, i32 0, metadata !315, null}
!317 = metadata !{i32 182, i32 0, metadata !318, null}
!318 = metadata !{i32 786443, metadata !1, metadata !269, i32 181, i32 0, i32 23} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SymbFac/src/SymbFac_symbfac.c]
!319 = metadata !{i32 183, i32 0, metadata !318, null}
!320 = metadata !{i32 184, i32 0, metadata !321, null}
!321 = metadata !{i32 786443, metadata !1, metadata !318, i32 183, i32 0, i32 24} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SymbFac/src/SymbFac_symbfac.c]
!322 = metadata !{i32 185, i32 0, metadata !321, null}
!323 = metadata !{i32 186, i32 0, metadata !324, null}
!324 = metadata !{i32 786443, metadata !1, metadata !321, i32 185, i32 0, i32 25} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SymbFac/src/SymbFac_symbfac.c]
!325 = metadata !{i32 187, i32 0, metadata !324, null}
!326 = metadata !{i32 undef}
!327 = metadata !{i32 188, i32 0, metadata !321, null}
!328 = metadata !{i32 189, i32 0, metadata !321, null}
!329 = metadata !{i32 190, i32 0, metadata !321, null}
!330 = metadata !{i32 193, i32 0, metadata !269, null}
!331 = metadata !{i32 194, i32 0, metadata !269, null}
!332 = metadata !{i32 195, i32 0, metadata !333, null}
!333 = metadata !{i32 786443, metadata !1, metadata !269, i32 194, i32 0, i32 26} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SymbFac/src/SymbFac_symbfac.c]
!334 = metadata !{i32 196, i32 0, metadata !333, null}
!335 = metadata !{i32 206, i32 0, metadata !269, null}
!336 = metadata !{i32 79, i32 0, metadata !262, null}
!337 = metadata !{i32 213, i32 0, metadata !4, null}
!338 = metadata !{i32 214, i32 0, metadata !4, null}
!339 = metadata !{i32 215, i32 0, metadata !4, null}
!340 = metadata !{i32 216, i32 0, metadata !4, null}
!341 = metadata !{i32 217, i32 0, metadata !4, null}
!342 = metadata !{i32 219, i32 0, metadata !4, null}
!343 = metadata !{i32 234, i32 0, metadata !110, null}
!344 = metadata !{i32 235, i32 0, metadata !110, null}
!345 = metadata !{i32 238, i32 0, metadata !110, null}
!346 = metadata !{i32 239, i32 0, metadata !110, null}
!347 = metadata !{i32 248, i32 0, metadata !110, null}
!348 = metadata !{i32 252, i32 0, metadata !349, null}
!349 = metadata !{i32 786443, metadata !1, metadata !110, i32 251, i32 0, i32 27} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SymbFac/src/SymbFac_symbfac.c]
!350 = metadata !{i32 254, i32 0, metadata !349, null}
!351 = metadata !{i32 255, i32 0, metadata !352, null}
!352 = metadata !{i32 786443, metadata !1, metadata !349, i32 254, i32 0, i32 28} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SymbFac/src/SymbFac_symbfac.c]
!353 = metadata !{i32 256, i32 0, metadata !352, null}
!354 = metadata !{i32 257, i32 0, metadata !349, null}
!355 = metadata !{i32 258, i32 0, metadata !356, null}
!356 = metadata !{i32 786443, metadata !1, metadata !349, i32 257, i32 0, i32 29} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SymbFac/src/SymbFac_symbfac.c]
!357 = metadata !{i32 259, i32 0, metadata !356, null}
!358 = metadata !{i32 260, i32 0, metadata !349, null}
!359 = metadata !{i32 267, i32 0, metadata !110, null}
!360 = metadata !{i32 268, i32 0, metadata !361, null}
!361 = metadata !{i32 786443, metadata !1, metadata !110, i32 267, i32 0, i32 30} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SymbFac/src/SymbFac_symbfac.c]
!362 = metadata !{i32 270, i32 0, metadata !361, null}
!363 = metadata !{i32 271, i32 0, metadata !361, null}
!364 = metadata !{i32 273, i32 0, metadata !110, null}
!365 = metadata !{i32 274, i32 0, metadata !366, null}
!366 = metadata !{i32 786443, metadata !1, metadata !110, i32 273, i32 0, i32 31} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SymbFac/src/SymbFac_symbfac.c]
!367 = metadata !{i32 276, i32 0, metadata !366, null}
!368 = metadata !{i32 277, i32 0, metadata !366, null}
!369 = metadata !{i32 279, i32 0, metadata !110, null}
!370 = metadata !{i32 290, i32 0, metadata !110, null}
!371 = metadata !{i32 291, i32 0, metadata !110, null}
!372 = metadata !{i32 292, i32 0, metadata !110, null}
!373 = metadata !{i32 293, i32 0, metadata !110, null}
!374 = metadata !{i32 294, i32 0, metadata !110, null}
!375 = metadata !{i32 295, i32 0, metadata !110, null}
!376 = metadata !{i32 296, i32 0, metadata !110, null}
!377 = metadata !{i32 297, i32 0, metadata !110, null}
!378 = metadata !{i32 298, i32 0, metadata !110, null}
!379 = metadata !{i32 299, i32 0, metadata !110, null}
!380 = metadata !{i32 300, i32 0, metadata !381, null}
!381 = metadata !{i32 786443, metadata !1, metadata !110, i32 300, i32 0, i32 32} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SymbFac/src/SymbFac_symbfac.c]
!382 = metadata !{i32 301, i32 0, metadata !383, null}
!383 = metadata !{i32 786443, metadata !1, metadata !381, i32 300, i32 0, i32 33} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SymbFac/src/SymbFac_symbfac.c]
!384 = metadata !{i32 302, i32 0, metadata !383, null}
!385 = metadata !{i32 303, i32 0, metadata !383, null}
!386 = metadata !{i32 305, i32 0, metadata !110, null}
!387 = metadata !{i32 306, i32 0, metadata !110, null}
!388 = metadata !{i32 307, i32 0, metadata !110, null}
!389 = metadata !{i32 313, i32 0, metadata !390, null}
!390 = metadata !{i32 786443, metadata !1, metadata !110, i32 313, i32 0, i32 34} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SymbFac/src/SymbFac_symbfac.c]
!391 = metadata !{i32 319, i32 0, metadata !392, null}
!392 = metadata !{i32 786443, metadata !1, metadata !390, i32 315, i32 0, i32 35} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SymbFac/src/SymbFac_symbfac.c]
!393 = metadata !{i32 325, i32 0, metadata !394, null}
!394 = metadata !{i32 786443, metadata !1, metadata !392, i32 325, i32 0, i32 36} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SymbFac/src/SymbFac_symbfac.c]
!395 = metadata !{i32 326, i32 0, metadata !396, null}
!396 = metadata !{i32 786443, metadata !1, metadata !394, i32 325, i32 0, i32 37} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SymbFac/src/SymbFac_symbfac.c]
!397 = metadata !{i32 327, i32 0, metadata !396, null}
!398 = metadata !{i32 329, i32 0, metadata !392, null}
!399 = metadata !{i32 339, i32 0, metadata !400, null}
!400 = metadata !{i32 786443, metadata !1, metadata !392, i32 339, i32 0, i32 38} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SymbFac/src/SymbFac_symbfac.c]
!401 = metadata !{i32 340, i32 0, metadata !402, null}
!402 = metadata !{i32 786443, metadata !1, metadata !400, i32 339, i32 0, i32 39} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SymbFac/src/SymbFac_symbfac.c]
!403 = metadata !{i32 341, i32 0, metadata !404, null}
!404 = metadata !{i32 786443, metadata !1, metadata !402, i32 341, i32 0, i32 40} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SymbFac/src/SymbFac_symbfac.c]
!405 = metadata !{i32 342, i32 0, metadata !406, null}
!406 = metadata !{i32 786443, metadata !1, metadata !404, i32 341, i32 0, i32 41} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SymbFac/src/SymbFac_symbfac.c]
!407 = metadata !{i32 344, i32 0, metadata !408, null}
!408 = metadata !{i32 786443, metadata !1, metadata !406, i32 343, i32 0, i32 42} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SymbFac/src/SymbFac_symbfac.c]
!409 = metadata !{i32 343, i32 0, metadata !406, null}
!410 = metadata !{i32 345, i32 0, metadata !411, null}
!411 = metadata !{i32 786443, metadata !1, metadata !408, i32 344, i32 0, i32 43} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SymbFac/src/SymbFac_symbfac.c]
!412 = metadata !{i32 347, i32 0, metadata !411, null}
!413 = metadata !{i32 346, i32 0, metadata !411, null}
!414 = metadata !{i32 363, i32 0, metadata !415, null}
!415 = metadata !{i32 786443, metadata !1, metadata !392, i32 363, i32 0, i32 45} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SymbFac/src/SymbFac_symbfac.c]
!416 = metadata !{i32 364, i32 0, metadata !417, null}
!417 = metadata !{i32 786443, metadata !1, metadata !415, i32 363, i32 0, i32 46} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SymbFac/src/SymbFac_symbfac.c]
!418 = metadata !{i32 365, i32 0, metadata !419, null}
!419 = metadata !{i32 786443, metadata !1, metadata !417, i32 364, i32 0, i32 47} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SymbFac/src/SymbFac_symbfac.c]
!420 = metadata !{i32 366, i32 0, metadata !421, null}
!421 = metadata !{i32 786443, metadata !1, metadata !419, i32 366, i32 0, i32 48} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SymbFac/src/SymbFac_symbfac.c]
!422 = metadata !{i32 367, i32 0, metadata !423, null}
!423 = metadata !{i32 786443, metadata !1, metadata !421, i32 366, i32 0, i32 49} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SymbFac/src/SymbFac_symbfac.c]
!424 = metadata !{i32 372, i32 0, metadata !423, null}
!425 = metadata !{i32 373, i32 0, metadata !426, null}
!426 = metadata !{i32 786443, metadata !1, metadata !423, i32 372, i32 0, i32 52} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SymbFac/src/SymbFac_symbfac.c]
!427 = metadata !{i32 374, i32 0, metadata !426, null}
!428 = metadata !{i32 375, i32 0, metadata !426, null}
!429 = metadata !{i32 392, i32 0, metadata !392, null}
!430 = metadata !{i32 393, i32 0, metadata !392, null}
!431 = metadata !{i32 399, i32 0, metadata !392, null}
!432 = metadata !{i32 409, i32 0, metadata !392, null}
!433 = metadata !{i32 315, i32 0, metadata !390, null}
!434 = metadata !{i32 416, i32 0, metadata !110, null}
!435 = metadata !{i32 417, i32 0, metadata !110, null}
!436 = metadata !{i32 418, i32 0, metadata !110, null}
!437 = metadata !{i32 419, i32 0, metadata !110, null}
!438 = metadata !{i32 420, i32 0, metadata !110, null}
!439 = metadata !{i32 422, i32 0, metadata !110, null}
!440 = metadata !{i32 436, i32 0, metadata !172, null}
!441 = metadata !{i32 437, i32 0, metadata !172, null}
!442 = metadata !{i32 441, i32 0, metadata !172, null}
!443 = metadata !{i32 442, i32 0, metadata !172, null}
!444 = metadata !{i32 451, i32 0, metadata !172, null}
!445 = metadata !{i32 455, i32 0, metadata !446, null}
!446 = metadata !{i32 786443, metadata !1, metadata !172, i32 454, i32 0, i32 53} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SymbFac/src/SymbFac_symbfac.c]
!447 = metadata !{i32 458, i32 0, metadata !446, null}
!448 = metadata !{i32 459, i32 0, metadata !449, null}
!449 = metadata !{i32 786443, metadata !1, metadata !446, i32 458, i32 0, i32 54} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SymbFac/src/SymbFac_symbfac.c]
!450 = metadata !{i32 460, i32 0, metadata !449, null}
!451 = metadata !{i32 461, i32 0, metadata !446, null}
!452 = metadata !{i32 462, i32 0, metadata !453, null}
!453 = metadata !{i32 786443, metadata !1, metadata !446, i32 461, i32 0, i32 55} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SymbFac/src/SymbFac_symbfac.c]
!454 = metadata !{i32 463, i32 0, metadata !453, null}
!455 = metadata !{i32 464, i32 0, metadata !446, null}
!456 = metadata !{i32 466, i32 0, metadata !172, null}
!457 = metadata !{i32 467, i32 0, metadata !172, null}
!458 = metadata !{i32 473, i32 0, metadata !172, null}
!459 = metadata !{i32 474, i32 0, metadata !460, null}
!460 = metadata !{i32 786443, metadata !1, metadata !172, i32 473, i32 0, i32 56} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SymbFac/src/SymbFac_symbfac.c]
!461 = metadata !{i32 475, i32 0, metadata !462, null}
!462 = metadata !{i32 786443, metadata !1, metadata !460, i32 474, i32 0, i32 57} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SymbFac/src/SymbFac_symbfac.c]
!463 = metadata !{i32 477, i32 0, metadata !462, null}
!464 = metadata !{i32 478, i32 0, metadata !462, null}
!465 = metadata !{i32 480, i32 0, metadata !460, null}
!466 = metadata !{i32 481, i32 0, metadata !467, null}
!467 = metadata !{i32 786443, metadata !1, metadata !460, i32 480, i32 0, i32 58} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SymbFac/src/SymbFac_symbfac.c]
!468 = metadata !{i32 483, i32 0, metadata !467, null}
!469 = metadata !{i32 484, i32 0, metadata !467, null}
!470 = metadata !{i32 486, i32 0, metadata !460, null}
!471 = metadata !{i32 487, i32 0, metadata !460, null}
!472 = metadata !{i32 490, i32 0, metadata !172, null}
!473 = metadata !{i32 491, i32 0, metadata !474, null}
!474 = metadata !{i32 786443, metadata !1, metadata !172, i32 490, i32 0, i32 60} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SymbFac/src/SymbFac_symbfac.c]
!475 = metadata !{i32 492, i32 0, metadata !476, null}
!476 = metadata !{i32 786443, metadata !1, metadata !474, i32 491, i32 0, i32 61} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SymbFac/src/SymbFac_symbfac.c]
!477 = metadata !{i32 494, i32 0, metadata !476, null}
!478 = metadata !{i32 495, i32 0, metadata !476, null}
!479 = metadata !{i32 497, i32 0, metadata !474, null}
!480 = metadata !{i32 498, i32 0, metadata !481, null}
!481 = metadata !{i32 786443, metadata !1, metadata !474, i32 497, i32 0, i32 62} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SymbFac/src/SymbFac_symbfac.c]
!482 = metadata !{i32 500, i32 0, metadata !481, null}
!483 = metadata !{i32 501, i32 0, metadata !481, null}
!484 = metadata !{i32 503, i32 0, metadata !474, null}
!485 = metadata !{i32 504, i32 0, metadata !474, null}
!486 = metadata !{i32 518, i32 0, metadata !172, null}
!487 = metadata !{i32 519, i32 0, metadata !172, null}
!488 = metadata !{i32 520, i32 0, metadata !172, null}
!489 = metadata !{i32 521, i32 0, metadata !172, null}
!490 = metadata !{i32 522, i32 0, metadata !172, null}
!491 = metadata !{i32 523, i32 0, metadata !172, null}
!492 = metadata !{i32 524, i32 0, metadata !172, null}
!493 = metadata !{i32 525, i32 0, metadata !172, null}
!494 = metadata !{i32 526, i32 0, metadata !172, null}
!495 = metadata !{i32 527, i32 0, metadata !172, null}
!496 = metadata !{i32 528, i32 0, metadata !497, null}
!497 = metadata !{i32 786443, metadata !1, metadata !172, i32 528, i32 0, i32 64} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SymbFac/src/SymbFac_symbfac.c]
!498 = metadata !{i32 529, i32 0, metadata !499, null}
!499 = metadata !{i32 786443, metadata !1, metadata !497, i32 528, i32 0, i32 65} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SymbFac/src/SymbFac_symbfac.c]
!500 = metadata !{i32 530, i32 0, metadata !499, null}
!501 = metadata !{i32 531, i32 0, metadata !499, null}
!502 = metadata !{i32 533, i32 0, metadata !172, null}
!503 = metadata !{i32 534, i32 0, metadata !172, null}
!504 = metadata !{i32 535, i32 0, metadata !172, null}
!505 = metadata !{i32 541, i32 0, metadata !506, null}
!506 = metadata !{i32 786443, metadata !1, metadata !172, i32 541, i32 0, i32 66} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SymbFac/src/SymbFac_symbfac.c]
!507 = metadata !{i32 547, i32 0, metadata !508, null}
!508 = metadata !{i32 786443, metadata !1, metadata !506, i32 543, i32 0, i32 67} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SymbFac/src/SymbFac_symbfac.c]
!509 = metadata !{i32 553, i32 0, metadata !510, null}
!510 = metadata !{i32 786443, metadata !1, metadata !508, i32 553, i32 0, i32 68} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SymbFac/src/SymbFac_symbfac.c]
!511 = metadata !{i32 554, i32 0, metadata !512, null}
!512 = metadata !{i32 786443, metadata !1, metadata !510, i32 553, i32 0, i32 69} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SymbFac/src/SymbFac_symbfac.c]
!513 = metadata !{i32 555, i32 0, metadata !512, null}
!514 = metadata !{i32 557, i32 0, metadata !508, null}
!515 = metadata !{i32 567, i32 0, metadata !516, null}
!516 = metadata !{i32 786443, metadata !1, metadata !508, i32 567, i32 0, i32 70} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SymbFac/src/SymbFac_symbfac.c]
!517 = metadata !{i32 568, i32 0, metadata !518, null}
!518 = metadata !{i32 786443, metadata !1, metadata !516, i32 567, i32 0, i32 71} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SymbFac/src/SymbFac_symbfac.c]
!519 = metadata !{i32 569, i32 0, metadata !520, null}
!520 = metadata !{i32 786443, metadata !1, metadata !518, i32 569, i32 0, i32 72} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SymbFac/src/SymbFac_symbfac.c]
!521 = metadata !{i32 570, i32 0, metadata !522, null}
!522 = metadata !{i32 786443, metadata !1, metadata !520, i32 569, i32 0, i32 73} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SymbFac/src/SymbFac_symbfac.c]
!523 = metadata !{i32 572, i32 0, metadata !524, null}
!524 = metadata !{i32 786443, metadata !1, metadata !522, i32 571, i32 0, i32 74} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SymbFac/src/SymbFac_symbfac.c]
!525 = metadata !{i32 571, i32 0, metadata !522, null}
!526 = metadata !{i32 573, i32 0, metadata !527, null}
!527 = metadata !{i32 786443, metadata !1, metadata !524, i32 572, i32 0, i32 75} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SymbFac/src/SymbFac_symbfac.c]
!528 = metadata !{i32 575, i32 0, metadata !527, null}
!529 = metadata !{i32 574, i32 0, metadata !527, null}
!530 = metadata !{i32 591, i32 0, metadata !531, null}
!531 = metadata !{i32 786443, metadata !1, metadata !508, i32 591, i32 0, i32 77} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SymbFac/src/SymbFac_symbfac.c]
!532 = metadata !{i32 592, i32 0, metadata !533, null}
!533 = metadata !{i32 786443, metadata !1, metadata !531, i32 591, i32 0, i32 78} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SymbFac/src/SymbFac_symbfac.c]
!534 = metadata !{i32 593, i32 0, metadata !535, null}
!535 = metadata !{i32 786443, metadata !1, metadata !533, i32 592, i32 0, i32 79} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SymbFac/src/SymbFac_symbfac.c]
!536 = metadata !{i32 594, i32 0, metadata !537, null}
!537 = metadata !{i32 786443, metadata !1, metadata !535, i32 594, i32 0, i32 80} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SymbFac/src/SymbFac_symbfac.c]
!538 = metadata !{i32 595, i32 0, metadata !539, null}
!539 = metadata !{i32 786443, metadata !1, metadata !537, i32 594, i32 0, i32 81} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SymbFac/src/SymbFac_symbfac.c]
!540 = metadata !{i32 600, i32 0, metadata !539, null}
!541 = metadata !{i32 601, i32 0, metadata !542, null}
!542 = metadata !{i32 786443, metadata !1, metadata !539, i32 600, i32 0, i32 84} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SymbFac/src/SymbFac_symbfac.c]
!543 = metadata !{i32 602, i32 0, metadata !542, null}
!544 = metadata !{i32 603, i32 0, metadata !542, null}
!545 = metadata !{i32 606, i32 0, metadata !533, null}
!546 = metadata !{i32 607, i32 0, metadata !547, null}
!547 = metadata !{i32 786443, metadata !1, metadata !533, i32 606, i32 0, i32 85} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SymbFac/src/SymbFac_symbfac.c]
!548 = metadata !{i32 608, i32 0, metadata !549, null}
!549 = metadata !{i32 786443, metadata !1, metadata !547, i32 608, i32 0, i32 86} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SymbFac/src/SymbFac_symbfac.c]
!550 = metadata !{i32 609, i32 0, metadata !551, null}
!551 = metadata !{i32 786443, metadata !1, metadata !549, i32 608, i32 0, i32 87} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SymbFac/src/SymbFac_symbfac.c]
!552 = metadata !{i32 614, i32 0, metadata !551, null}
!553 = metadata !{i32 615, i32 0, metadata !554, null}
!554 = metadata !{i32 786443, metadata !1, metadata !551, i32 614, i32 0, i32 90} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SymbFac/src/SymbFac_symbfac.c]
!555 = metadata !{i32 616, i32 0, metadata !554, null}
!556 = metadata !{i32 617, i32 0, metadata !554, null}
!557 = metadata !{i32 634, i32 0, metadata !508, null}
!558 = metadata !{i32 635, i32 0, metadata !508, null}
!559 = metadata !{i32 641, i32 0, metadata !508, null}
!560 = metadata !{i32 651, i32 0, metadata !508, null}
!561 = metadata !{i32 543, i32 0, metadata !506, null}
!562 = metadata !{i32 658, i32 0, metadata !172, null}
!563 = metadata !{i32 659, i32 0, metadata !172, null}
!564 = metadata !{i32 660, i32 0, metadata !172, null}
!565 = metadata !{i32 661, i32 0, metadata !172, null}
!566 = metadata !{i32 662, i32 0, metadata !172, null}
!567 = metadata !{i32 664, i32 0, metadata !172, null}
