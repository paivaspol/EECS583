; ModuleID = '../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_instance.c'
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
@.str = private unnamed_addr constant [49 x i8] c"\0A fatal error in FrontMtx_nfront(%p)\0A bad input\0A\00", align 1
@.str1 = private unnamed_addr constant [48 x i8] c"\0A fatal error in FrontMtx_neqns(%p)\0A bad input\0A\00", align 1
@.str2 = private unnamed_addr constant [52 x i8] c"\0A fatal error in FrontMtx_frontTree(%p)\0A bad input\0A\00", align 1
@.str3 = private unnamed_addr constant [118 x i8] c"\0A fatal error in FrontMtx_initialFrontDimensions()\0A frontmtx = %p, J = %d, pnD = %p, pnL = %p, pnU = %p, pnbytes = %p\00", align 1
@.str4 = private unnamed_addr constant [98 x i8] c"\0A fatal error in FrontMtx_initialFrontDimensions()\0A real type, must be symmetric or nonsymmetric\0A\00", align 1
@.str5 = private unnamed_addr constant [86 x i8] c"\0A fatal error in FrontMtx_initialFrontDimensions()\0A bad type, must be real or complex\00", align 1
@.str6 = private unnamed_addr constant [55 x i8] c"\0A fatal error in FrontMtx_frontSize(%p,%d)\0A bad input\0A\00", align 1
@.str7 = private unnamed_addr constant [61 x i8] c"\0A fatal error in FrontMtx_setFrontSize(%p,%d,%d)\0A bad input\0A\00", align 1
@.str8 = private unnamed_addr constant [65 x i8] c"\0A fatal error in FrontMtx_columnIndices(%p,%d,%p,%p)\0A bad input\0A\00", align 1
@.str9 = private unnamed_addr constant [62 x i8] c"\0A fatal error in FrontMtx_rowIndices(%p,%d,%p,%p)\0A bad input\0A\00", align 1
@.str10 = private unnamed_addr constant [53 x i8] c"\0A fatal error in FrontMtx_diagMtx(%p,%d)\0A bad input\0A\00", align 1
@.str11 = private unnamed_addr constant [57 x i8] c"\0A fatal error in FrontMtx_upperMtx(%p,%d,%d)\0A bad input\0A\00", align 1
@.str12 = private unnamed_addr constant [57 x i8] c"\0A fatal error in FrontMtx_lowerMtx(%p,%d,%d)\0A bad input\0A\00", align 1
@.str13 = private unnamed_addr constant [66 x i8] c"\0A fatal error in FrontMtx_lowerAdjFronts(%p,%d,%p,%p)\0A bad input\0A\00", align 1
@.str14 = private unnamed_addr constant [71 x i8] c"\0A fatal error in FrontMtx_lowerAdjFronts()\0A data mode is 1-D, not 2-D\0A\00", align 1
@.str15 = private unnamed_addr constant [66 x i8] c"\0A fatal error in FrontMtx_upperAdjFronts(%p,%d,%p,%p)\0A bad input\0A\00", align 1
@.str16 = private unnamed_addr constant [67 x i8] c"\0A fatal error in FrontMtx_upperAdjFronts()\0A data mode is 1, not 2\0A\00", align 1
@.str17 = private unnamed_addr constant [55 x i8] c"\0A fatal error in FrontMtx_nLowerBlocks(%p)\0A bad input\0A\00", align 1
@.str18 = private unnamed_addr constant [65 x i8] c"\0A fatal error in FrontMtx_nLowerBlocks()\0A data mode is 1, not 2\0A\00", align 1
@.str19 = private unnamed_addr constant [55 x i8] c"\0A fatal error in FrontMtx_nUpperBlocks(%p)\0A bad input\0A\00", align 1
@.str20 = private unnamed_addr constant [65 x i8] c"\0A fatal error in FrontMtx_nUpperBlocks()\0A data mode is 1, not 2\0A\00", align 1
@.str21 = private unnamed_addr constant [56 x i8] c"\0A fatal error in FrontMtx_upperBlockIVL(%p)\0A bad input\0A\00", align 1
@.str22 = private unnamed_addr constant [66 x i8] c"\0A fatal error in FrontMtx_upperBlockIVL()\0A data mode is 1, not 2\0A\00", align 1
@.str23 = private unnamed_addr constant [56 x i8] c"\0A fatal error in FrontMtx_lowerBlockIVL(%p)\0A bad input\0A\00", align 1
@.str24 = private unnamed_addr constant [66 x i8] c"\0A fatal error in FrontMtx_lowerBlockIVL()\0A data mode is 1, not 2\0A\00", align 1

; Function Attrs: nounwind optsize uwtable
define i32 @FrontMtx_nfront(%struct._FrontMtx* %frontmtx) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._FrontMtx* %frontmtx}, i64 0, metadata !184), !dbg !284
  %cmp = icmp eq %struct._FrontMtx* %frontmtx, null, !dbg !285
  br i1 %cmp, label %if.then, label %if.end, !dbg !285

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !286, !tbaa !288
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([49 x i8]* @.str, i64 0, i64 0), %struct._FrontMtx* null) #6, !dbg !286
  tail call void @exit(i32 -1) #7, !dbg !291
  unreachable, !dbg !291

if.end:                                           ; preds = %entry
  %nfront = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 0, !dbg !292
  %1 = load i32* %nfront, align 4, !dbg !292, !tbaa !293
  ret i32 %1, !dbg !292
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #2

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32) #3

; Function Attrs: nounwind optsize uwtable
define i32 @FrontMtx_neqns(%struct._FrontMtx* %frontmtx) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._FrontMtx* %frontmtx}, i64 0, metadata !187), !dbg !294
  %cmp = icmp eq %struct._FrontMtx* %frontmtx, null, !dbg !295
  br i1 %cmp, label %if.then, label %if.end, !dbg !295

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !296, !tbaa !288
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([48 x i8]* @.str1, i64 0, i64 0), %struct._FrontMtx* null) #6, !dbg !296
  tail call void @exit(i32 -1) #7, !dbg !298
  unreachable, !dbg !298

if.end:                                           ; preds = %entry
  %neqns = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 1, !dbg !299
  %1 = load i32* %neqns, align 4, !dbg !299, !tbaa !293
  ret i32 %1, !dbg !299
}

; Function Attrs: nounwind optsize uwtable
define %struct._Tree* @FrontMtx_frontTree(%struct._FrontMtx* %frontmtx) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._FrontMtx* %frontmtx}, i64 0, metadata !192), !dbg !300
  %cmp = icmp eq %struct._FrontMtx* %frontmtx, null, !dbg !301
  br i1 %cmp, label %if.then, label %if.end, !dbg !301

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !302, !tbaa !288
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([52 x i8]* @.str2, i64 0, i64 0), %struct._FrontMtx* null) #6, !dbg !302
  tail call void @exit(i32 -1) #7, !dbg !304
  unreachable, !dbg !304

if.end:                                           ; preds = %entry
  %tree = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 10, !dbg !305
  %1 = load %struct._Tree** %tree, align 8, !dbg !305, !tbaa !288
  ret %struct._Tree* %1, !dbg !305
}

; Function Attrs: nounwind optsize uwtable
define void @FrontMtx_initialFrontDimensions(%struct._FrontMtx* %frontmtx, i32 %J, i32* %pnD, i32* %pnL, i32* %pnU, i32* %pnbytes) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._FrontMtx* %frontmtx}, i64 0, metadata !197), !dbg !306
  tail call void @llvm.dbg.value(metadata !{i32 %J}, i64 0, metadata !198), !dbg !307
  tail call void @llvm.dbg.value(metadata !{i32* %pnD}, i64 0, metadata !199), !dbg !308
  tail call void @llvm.dbg.value(metadata !{i32* %pnL}, i64 0, metadata !200), !dbg !309
  tail call void @llvm.dbg.value(metadata !{i32* %pnU}, i64 0, metadata !201), !dbg !310
  tail call void @llvm.dbg.value(metadata !{i32* %pnbytes}, i64 0, metadata !202), !dbg !311
  %cmp = icmp eq %struct._FrontMtx* %frontmtx, null, !dbg !312
  %cmp1 = icmp slt i32 %J, 0, !dbg !312
  %or.cond = or i1 %cmp, %cmp1, !dbg !312
  br i1 %or.cond, label %if.then, label %lor.lhs.false2, !dbg !312

lor.lhs.false2:                                   ; preds = %entry
  %nfront = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 0, !dbg !312
  %0 = load i32* %nfront, align 4, !dbg !312, !tbaa !293
  %cmp3 = icmp sle i32 %0, %J, !dbg !312
  %cmp5 = icmp eq i32* %pnD, null, !dbg !312
  %or.cond52 = or i1 %cmp3, %cmp5, !dbg !312
  %cmp7 = icmp eq i32* %pnL, null, !dbg !312
  %or.cond53 = or i1 %or.cond52, %cmp7, !dbg !312
  %cmp9 = icmp eq i32* %pnU, null, !dbg !312
  %or.cond54 = or i1 %or.cond53, %cmp9, !dbg !312
  %cmp11 = icmp eq i32* %pnbytes, null, !dbg !312
  %or.cond55 = or i1 %or.cond54, %cmp11, !dbg !312
  br i1 %or.cond55, label %if.then, label %if.end, !dbg !312

if.then:                                          ; preds = %lor.lhs.false2, %entry
  %1 = load %struct._IO_FILE** @stderr, align 8, !dbg !313, !tbaa !288
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([118 x i8]* @.str3, i64 0, i64 0), %struct._FrontMtx* %frontmtx, i32 %J, i32* %pnD, i32* %pnL, i32* %pnU, i32* %pnbytes) #6, !dbg !313
  tail call void @exit(i32 -1) #7, !dbg !315
  unreachable, !dbg !315

if.end:                                           ; preds = %lor.lhs.false2
  %type = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 2, !dbg !316
  %2 = load i32* %type, align 4, !dbg !316, !tbaa !293
  switch i32 %2, label %sw.default18 [
    i32 1, label %sw.bb
    i32 2, label %if.end.sw.epilog20_crit_edge
  ], !dbg !316

if.end.sw.epilog20_crit_edge:                     ; preds = %if.end
  %symmetryflag26.phi.trans.insert = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 3
  %.pre = load i32* %symmetryflag26.phi.trans.insert, align 4, !dbg !317, !tbaa !293
  br label %sw.epilog20, !dbg !316

sw.bb:                                            ; preds = %if.end
  %symmetryflag = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 3, !dbg !318
  %3 = load i32* %symmetryflag, align 4, !dbg !318, !tbaa !293
  switch i32 %3, label %sw.default [
    i32 0, label %sw.epilog20
    i32 2, label %sw.epilog20
  ], !dbg !318

sw.default:                                       ; preds = %sw.bb
  %4 = load %struct._IO_FILE** @stderr, align 8, !dbg !320, !tbaa !288
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([98 x i8]* @.str4, i64 0, i64 0), i64 97, i64 1, %struct._IO_FILE* %4), !dbg !320
  tail call void @exit(i32 -1) #7, !dbg !322
  unreachable, !dbg !322

sw.default18:                                     ; preds = %if.end
  %6 = load %struct._IO_FILE** @stderr, align 8, !dbg !323, !tbaa !288
  %7 = tail call i64 @fwrite(i8* getelementptr inbounds ([86 x i8]* @.str5, i64 0, i64 0), i64 85, i64 1, %struct._IO_FILE* %6), !dbg !323
  tail call void @exit(i32 -1) #7, !dbg !324
  unreachable, !dbg !324

sw.epilog20:                                      ; preds = %if.end.sw.epilog20_crit_edge, %sw.bb, %sw.bb
  %8 = phi i32 [ %.pre, %if.end.sw.epilog20_crit_edge ], [ %3, %sw.bb ], [ %3, %sw.bb ]
  %idxprom = sext i32 %J to i64, !dbg !325
  %frontETree = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 11, !dbg !325
  %9 = load %struct._ETree** %frontETree, align 8, !dbg !325, !tbaa !288
  %nodwghtsIV = getelementptr inbounds %struct._ETree* %9, i64 0, i32 3, !dbg !325
  %10 = load %struct._IV** %nodwghtsIV, align 8, !dbg !325, !tbaa !288
  %vec = getelementptr inbounds %struct._IV* %10, i64 0, i32 3, !dbg !325
  %11 = load i32** %vec, align 8, !dbg !325, !tbaa !288
  %arrayidx = getelementptr inbounds i32* %11, i64 %idxprom, !dbg !325
  %12 = load i32* %arrayidx, align 4, !dbg !325, !tbaa !293
  tail call void @llvm.dbg.value(metadata !{i32 %12}, i64 0, metadata !204), !dbg !325
  %bndwghtsIV = getelementptr inbounds %struct._ETree* %9, i64 0, i32 4, !dbg !326
  %13 = load %struct._IV** %bndwghtsIV, align 8, !dbg !326, !tbaa !288
  %vec23 = getelementptr inbounds %struct._IV* %13, i64 0, i32 3, !dbg !326
  %14 = load i32** %vec23, align 8, !dbg !326, !tbaa !288
  %arrayidx24 = getelementptr inbounds i32* %14, i64 %idxprom, !dbg !326
  %15 = load i32* %arrayidx24, align 4, !dbg !326, !tbaa !293
  tail call void @llvm.dbg.value(metadata !{i32 %15}, i64 0, metadata !206), !dbg !326
  tail call void @llvm.dbg.value(metadata !{i32 %15}, i64 0, metadata !205), !dbg !326
  %call27 = tail call i32 @Chv_nbytesNeeded(i32 %12, i32 %15, i32 %15, i32 %2, i32 %8) #6, !dbg !317
  tail call void @llvm.dbg.value(metadata !{i32 %call27}, i64 0, metadata !203), !dbg !317
  store i32 %12, i32* %pnD, align 4, !dbg !327, !tbaa !293
  store i32 %15, i32* %pnL, align 4, !dbg !328, !tbaa !293
  store i32 %15, i32* %pnU, align 4, !dbg !329, !tbaa !293
  store i32 %call27, i32* %pnbytes, align 4, !dbg !330, !tbaa !293
  ret void, !dbg !331
}

; Function Attrs: optsize
declare i32 @Chv_nbytesNeeded(i32, i32, i32, i32, i32) #4

; Function Attrs: nounwind optsize uwtable
define i32 @FrontMtx_frontSize(%struct._FrontMtx* %frontmtx, i32 %J) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._FrontMtx* %frontmtx}, i64 0, metadata !211), !dbg !332
  tail call void @llvm.dbg.value(metadata !{i32 %J}, i64 0, metadata !212), !dbg !333
  %cmp = icmp eq %struct._FrontMtx* %frontmtx, null, !dbg !334
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !334

lor.lhs.false:                                    ; preds = %entry
  %frontsizesIV = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 12, !dbg !334
  %0 = load %struct._IV** %frontsizesIV, align 8, !dbg !334, !tbaa !288
  %cmp1 = icmp eq %struct._IV* %0, null, !dbg !334
  %cmp3 = icmp slt i32 %J, 0, !dbg !334
  %or.cond = or i1 %cmp1, %cmp3, !dbg !334
  br i1 %or.cond, label %if.then, label %lor.lhs.false4, !dbg !334

lor.lhs.false4:                                   ; preds = %lor.lhs.false
  %nfront = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 0, !dbg !334
  %1 = load i32* %nfront, align 4, !dbg !334, !tbaa !293
  %cmp5 = icmp sgt i32 %1, %J, !dbg !334
  br i1 %cmp5, label %if.end, label %if.then, !dbg !334

if.then:                                          ; preds = %lor.lhs.false4, %lor.lhs.false, %entry
  %2 = load %struct._IO_FILE** @stderr, align 8, !dbg !335, !tbaa !288
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([55 x i8]* @.str6, i64 0, i64 0), %struct._FrontMtx* %frontmtx, i32 %J) #6, !dbg !335
  tail call void @exit(i32 -1) #7, !dbg !337
  unreachable, !dbg !337

if.end:                                           ; preds = %lor.lhs.false4
  %call7 = tail call i32 @IV_entry(%struct._IV* %0, i32 %J) #6, !dbg !338
  ret i32 %call7, !dbg !338
}

; Function Attrs: optsize
declare i32 @IV_entry(%struct._IV*, i32) #4

; Function Attrs: nounwind optsize uwtable
define void @FrontMtx_setFrontSize(%struct._FrontMtx* %frontmtx, i32 %J, i32 %size) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._FrontMtx* %frontmtx}, i64 0, metadata !217), !dbg !339
  tail call void @llvm.dbg.value(metadata !{i32 %J}, i64 0, metadata !218), !dbg !340
  tail call void @llvm.dbg.value(metadata !{i32 %size}, i64 0, metadata !219), !dbg !341
  %cmp = icmp eq %struct._FrontMtx* %frontmtx, null, !dbg !342
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !342

lor.lhs.false:                                    ; preds = %entry
  %frontsizesIV = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 12, !dbg !342
  %0 = load %struct._IV** %frontsizesIV, align 8, !dbg !342, !tbaa !288
  %cmp1 = icmp eq %struct._IV* %0, null, !dbg !342
  %cmp3 = icmp slt i32 %J, 0, !dbg !342
  %or.cond = or i1 %cmp1, %cmp3, !dbg !342
  br i1 %or.cond, label %if.then, label %lor.lhs.false4, !dbg !342

lor.lhs.false4:                                   ; preds = %lor.lhs.false
  %nfront = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 0, !dbg !342
  %1 = load i32* %nfront, align 4, !dbg !342, !tbaa !293
  %cmp5 = icmp sle i32 %1, %J, !dbg !342
  %cmp7 = icmp slt i32 %size, 0, !dbg !342
  %or.cond18 = or i1 %cmp5, %cmp7, !dbg !342
  br i1 %or.cond18, label %if.then, label %if.end, !dbg !342

if.then:                                          ; preds = %lor.lhs.false4, %lor.lhs.false, %entry
  %2 = load %struct._IO_FILE** @stderr, align 8, !dbg !343, !tbaa !288
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([61 x i8]* @.str7, i64 0, i64 0), %struct._FrontMtx* %frontmtx, i32 %J, i32 %size) #6, !dbg !343
  tail call void @exit(i32 -1) #7, !dbg !345
  unreachable, !dbg !345

if.end:                                           ; preds = %lor.lhs.false4
  tail call void @IV_setEntry(%struct._IV* %0, i32 %J, i32 %size) #6, !dbg !346
  ret void, !dbg !347
}

; Function Attrs: optsize
declare void @IV_setEntry(%struct._IV*, i32, i32) #4

; Function Attrs: nounwind optsize uwtable
define void @FrontMtx_columnIndices(%struct._FrontMtx* %frontmtx, i32 %J, i32* %pncol, i32** %pcolind) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._FrontMtx* %frontmtx}, i64 0, metadata !224), !dbg !348
  tail call void @llvm.dbg.value(metadata !{i32 %J}, i64 0, metadata !225), !dbg !349
  tail call void @llvm.dbg.value(metadata !{i32* %pncol}, i64 0, metadata !226), !dbg !350
  tail call void @llvm.dbg.value(metadata !{i32** %pcolind}, i64 0, metadata !227), !dbg !351
  %cmp = icmp eq %struct._FrontMtx* %frontmtx, null, !dbg !352
  %cmp1 = icmp slt i32 %J, 0, !dbg !352
  %or.cond = or i1 %cmp, %cmp1, !dbg !352
  br i1 %or.cond, label %if.then, label %lor.lhs.false2, !dbg !352

lor.lhs.false2:                                   ; preds = %entry
  %nfront = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 0, !dbg !352
  %0 = load i32* %nfront, align 4, !dbg !352, !tbaa !293
  %cmp3 = icmp sle i32 %0, %J, !dbg !352
  %cmp5 = icmp eq i32* %pncol, null, !dbg !352
  %or.cond25 = or i1 %cmp3, %cmp5, !dbg !352
  %cmp7 = icmp eq i32** %pcolind, null, !dbg !352
  %or.cond26 = or i1 %or.cond25, %cmp7, !dbg !352
  br i1 %or.cond26, label %if.then, label %if.end, !dbg !352

if.then:                                          ; preds = %lor.lhs.false2, %entry
  %1 = load %struct._IO_FILE** @stderr, align 8, !dbg !353, !tbaa !288
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([65 x i8]* @.str8, i64 0, i64 0), %struct._FrontMtx* %frontmtx, i32 %J, i32* %pncol, i32** %pcolind) #6, !dbg !353
  tail call void @exit(i32 -1) #7, !dbg !355
  unreachable, !dbg !355

if.end:                                           ; preds = %lor.lhs.false2
  %pivotingflag = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 5, !dbg !356
  %2 = load i32* %pivotingflag, align 4, !dbg !356, !tbaa !293
  %cmp8 = icmp eq i32 %2, 1, !dbg !356
  br i1 %cmp8, label %if.else, label %if.then9, !dbg !356

if.then9:                                         ; preds = %if.end
  %symbfacIVL = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 13, !dbg !357
  %3 = load %struct._IVL** %symbfacIVL, align 8, !dbg !357, !tbaa !288
  tail call void @IVL_listAndSize(%struct._IVL* %3, i32 %J, i32* %pncol, i32** %pcolind) #6, !dbg !357
  br label %if.end10, !dbg !359

if.else:                                          ; preds = %if.end
  %coladjIVL = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 15, !dbg !360
  %4 = load %struct._IVL** %coladjIVL, align 8, !dbg !360, !tbaa !288
  tail call void @IVL_listAndSize(%struct._IVL* %4, i32 %J, i32* %pncol, i32** %pcolind) #6, !dbg !360
  br label %if.end10

if.end10:                                         ; preds = %if.else, %if.then9
  ret void, !dbg !362
}

; Function Attrs: optsize
declare void @IVL_listAndSize(%struct._IVL*, i32, i32*, i32**) #4

; Function Attrs: nounwind optsize uwtable
define void @FrontMtx_rowIndices(%struct._FrontMtx* %frontmtx, i32 %J, i32* %pnrow, i32** %prowind) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._FrontMtx* %frontmtx}, i64 0, metadata !230), !dbg !363
  tail call void @llvm.dbg.value(metadata !{i32 %J}, i64 0, metadata !231), !dbg !364
  tail call void @llvm.dbg.value(metadata !{i32* %pnrow}, i64 0, metadata !232), !dbg !365
  tail call void @llvm.dbg.value(metadata !{i32** %prowind}, i64 0, metadata !233), !dbg !366
  %cmp = icmp eq %struct._FrontMtx* %frontmtx, null, !dbg !367
  %cmp1 = icmp slt i32 %J, 0, !dbg !367
  %or.cond = or i1 %cmp, %cmp1, !dbg !367
  br i1 %or.cond, label %if.then, label %lor.lhs.false2, !dbg !367

lor.lhs.false2:                                   ; preds = %entry
  %nfront = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 0, !dbg !367
  %0 = load i32* %nfront, align 4, !dbg !367, !tbaa !293
  %cmp3 = icmp sle i32 %0, %J, !dbg !367
  %cmp5 = icmp eq i32* %pnrow, null, !dbg !367
  %or.cond43 = or i1 %cmp3, %cmp5, !dbg !367
  %cmp7 = icmp eq i32** %prowind, null, !dbg !367
  %or.cond44 = or i1 %or.cond43, %cmp7, !dbg !367
  br i1 %or.cond44, label %if.then, label %if.end, !dbg !367

if.then:                                          ; preds = %lor.lhs.false2, %entry
  %1 = load %struct._IO_FILE** @stderr, align 8, !dbg !368, !tbaa !288
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([62 x i8]* @.str9, i64 0, i64 0), %struct._FrontMtx* %frontmtx, i32 %J, i32* %pnrow, i32** %prowind) #6, !dbg !368
  tail call void @exit(i32 -1) #7, !dbg !370
  unreachable, !dbg !370

if.end:                                           ; preds = %lor.lhs.false2
  %pivotingflag = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 5, !dbg !371
  %2 = load i32* %pivotingflag, align 4, !dbg !371, !tbaa !293
  %cmp8 = icmp eq i32 %2, 1, !dbg !371
  br i1 %cmp8, label %if.else, label %if.then9, !dbg !371

if.then9:                                         ; preds = %if.end
  %symbfacIVL = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 13, !dbg !372
  %3 = load %struct._IVL** %symbfacIVL, align 8, !dbg !372, !tbaa !288
  tail call void @IVL_listAndSize(%struct._IVL* %3, i32 %J, i32* %pnrow, i32** %prowind) #6, !dbg !372
  br label %if.end21, !dbg !374

if.else:                                          ; preds = %if.end
  %symmetryflag = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 3, !dbg !375
  %4 = load i32* %symmetryflag, align 4, !dbg !375, !tbaa !293
  switch i32 %4, label %if.end21 [
    i32 0, label %if.then14
    i32 1, label %if.then14
    i32 2, label %if.then18
  ], !dbg !375

if.then14:                                        ; preds = %if.else, %if.else
  %coladjIVL = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 15, !dbg !376
  %5 = load %struct._IVL** %coladjIVL, align 8, !dbg !376, !tbaa !288
  tail call void @IVL_listAndSize(%struct._IVL* %5, i32 %J, i32* %pnrow, i32** %prowind) #6, !dbg !376
  br label %if.end21, !dbg !378

if.then18:                                        ; preds = %if.else
  %rowadjIVL = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 14, !dbg !379
  %6 = load %struct._IVL** %rowadjIVL, align 8, !dbg !379, !tbaa !288
  tail call void @IVL_listAndSize(%struct._IVL* %6, i32 %J, i32* %pnrow, i32** %prowind) #6, !dbg !379
  br label %if.end21, !dbg !381

if.end21:                                         ; preds = %if.else, %if.then14, %if.then18, %if.then9
  ret void, !dbg !382
}

; Function Attrs: nounwind optsize uwtable
define %struct._SubMtx* @FrontMtx_diagMtx(%struct._FrontMtx* %frontmtx, i32 %J) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._FrontMtx* %frontmtx}, i64 0, metadata !238), !dbg !383
  tail call void @llvm.dbg.value(metadata !{i32 %J}, i64 0, metadata !239), !dbg !384
  %cmp = icmp eq %struct._FrontMtx* %frontmtx, null, !dbg !385
  %cmp1 = icmp slt i32 %J, 0, !dbg !385
  %or.cond = or i1 %cmp, %cmp1, !dbg !385
  br i1 %or.cond, label %if.then, label %lor.lhs.false2, !dbg !385

lor.lhs.false2:                                   ; preds = %entry
  %nfront = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 0, !dbg !385
  %0 = load i32* %nfront, align 4, !dbg !385, !tbaa !293
  %cmp3 = icmp sgt i32 %0, %J, !dbg !385
  br i1 %cmp3, label %if.end, label %if.then, !dbg !385

if.then:                                          ; preds = %lor.lhs.false2, %entry
  %1 = load %struct._IO_FILE** @stderr, align 8, !dbg !386, !tbaa !288
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([53 x i8]* @.str10, i64 0, i64 0), %struct._FrontMtx* %frontmtx, i32 %J) #6, !dbg !386
  tail call void @exit(i32 -1) #7, !dbg !388
  unreachable, !dbg !388

if.end:                                           ; preds = %lor.lhs.false2
  %idxprom = sext i32 %J to i64, !dbg !389
  %p_mtxDJJ = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 18, !dbg !389
  %2 = load %struct._SubMtx*** %p_mtxDJJ, align 8, !dbg !389, !tbaa !288
  %arrayidx = getelementptr inbounds %struct._SubMtx** %2, i64 %idxprom, !dbg !389
  %3 = load %struct._SubMtx** %arrayidx, align 8, !dbg !389, !tbaa !288
  ret %struct._SubMtx* %3, !dbg !389
}

; Function Attrs: nounwind optsize uwtable
define %struct._SubMtx* @FrontMtx_upperMtx(%struct._FrontMtx* %frontmtx, i32 %J, i32 %K) #0 {
entry:
  %mtx = alloca %struct._SubMtx*, align 8
  call void @llvm.dbg.value(metadata !{%struct._FrontMtx* %frontmtx}, i64 0, metadata !244), !dbg !390
  call void @llvm.dbg.value(metadata !{i32 %J}, i64 0, metadata !245), !dbg !391
  call void @llvm.dbg.value(metadata !{i32 %K}, i64 0, metadata !246), !dbg !392
  call void @llvm.dbg.declare(metadata !{%struct._SubMtx** %mtx}, metadata !248), !dbg !393
  %cmp = icmp eq %struct._FrontMtx* %frontmtx, null, !dbg !394
  %cmp1 = icmp slt i32 %J, 0, !dbg !394
  %or.cond = or i1 %cmp, %cmp1, !dbg !394
  br i1 %or.cond, label %if.then, label %lor.lhs.false2, !dbg !394

lor.lhs.false2:                                   ; preds = %entry
  %nfront = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 0, !dbg !394
  %0 = load i32* %nfront, align 4, !dbg !394, !tbaa !293
  %cmp3 = icmp sle i32 %0, %J, !dbg !394
  %cmp5 = icmp slt i32 %K, %J, !dbg !394
  %or.cond52 = or i1 %cmp3, %cmp5, !dbg !394
  %cmp8 = icmp slt i32 %0, %K, !dbg !394
  %or.cond53 = or i1 %or.cond52, %cmp8, !dbg !394
  br i1 %or.cond53, label %if.then, label %if.end, !dbg !394

if.then:                                          ; preds = %lor.lhs.false2, %entry
  %1 = load %struct._IO_FILE** @stderr, align 8, !dbg !395, !tbaa !288
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([57 x i8]* @.str11, i64 0, i64 0), %struct._FrontMtx* %frontmtx, i32 %J, i32 %K) #6, !dbg !395
  call void @exit(i32 -1) #7, !dbg !397
  unreachable, !dbg !397

if.end:                                           ; preds = %lor.lhs.false2
  %dataMode = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 6, !dbg !398
  %2 = load i32* %dataMode, align 4, !dbg !398, !tbaa !293
  %cmp9 = icmp eq i32 %2, 1, !dbg !398
  br i1 %cmp9, label %if.then10, label %if.else20, !dbg !398

if.then10:                                        ; preds = %if.end
  %cmp12 = icmp eq i32 %0, %K, !dbg !399
  br i1 %cmp12, label %if.then13, label %if.else, !dbg !399

if.then13:                                        ; preds = %if.then10
  %idxprom = sext i32 %J to i64, !dbg !401
  %p_mtxUJN = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 20, !dbg !401
  %3 = load %struct._SubMtx*** %p_mtxUJN, align 8, !dbg !401, !tbaa !288
  %arrayidx = getelementptr inbounds %struct._SubMtx** %3, i64 %idxprom, !dbg !401
  %4 = load %struct._SubMtx** %arrayidx, align 8, !dbg !401, !tbaa !288
  call void @llvm.dbg.value(metadata !{%struct._SubMtx* %4}, i64 0, metadata !248), !dbg !401
  store %struct._SubMtx* %4, %struct._SubMtx** %mtx, align 8, !dbg !401, !tbaa !288
  br label %if.end30, !dbg !403

if.else:                                          ; preds = %if.then10
  %cmp14 = icmp eq i32 %K, %J, !dbg !404
  br i1 %cmp14, label %if.then15, label %if.end30, !dbg !404

if.then15:                                        ; preds = %if.else
  %idxprom16 = sext i32 %J to i64, !dbg !405
  %p_mtxUJJ = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 19, !dbg !405
  %5 = load %struct._SubMtx*** %p_mtxUJJ, align 8, !dbg !405, !tbaa !288
  %arrayidx17 = getelementptr inbounds %struct._SubMtx** %5, i64 %idxprom16, !dbg !405
  %6 = load %struct._SubMtx** %arrayidx17, align 8, !dbg !405, !tbaa !288
  call void @llvm.dbg.value(metadata !{%struct._SubMtx* %6}, i64 0, metadata !248), !dbg !405
  store %struct._SubMtx* %6, %struct._SubMtx** %mtx, align 8, !dbg !405, !tbaa !288
  br label %if.end30, !dbg !407

if.else20:                                        ; preds = %if.end
  %upperhash = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 24, !dbg !408
  %7 = load %struct._I2Ohash** %upperhash, align 8, !dbg !408, !tbaa !288
  %cmp21 = icmp eq %struct._I2Ohash* %7, null, !dbg !408
  br i1 %cmp21, label %if.then22, label %if.else23, !dbg !408

if.then22:                                        ; preds = %if.else20
  call void @llvm.dbg.value(metadata !409, i64 0, metadata !248), !dbg !410
  store %struct._SubMtx* null, %struct._SubMtx** %mtx, align 8, !dbg !410, !tbaa !288
  br label %if.end30, !dbg !412

if.else23:                                        ; preds = %if.else20
  %8 = bitcast %struct._SubMtx** %mtx to i8**, !dbg !413
  %call25 = call i32 @I2Ohash_locate(%struct._I2Ohash* %7, i32 %J, i32 %K, i8** %8) #6, !dbg !413
  call void @llvm.dbg.value(metadata !{i32 %call25}, i64 0, metadata !247), !dbg !413
  %cmp26 = icmp eq i32 %call25, 0, !dbg !415
  br i1 %cmp26, label %if.then27, label %if.else23.if.end30_crit_edge, !dbg !415

if.else23.if.end30_crit_edge:                     ; preds = %if.else23
  call void @llvm.dbg.value(metadata !{%struct._SubMtx** %mtx}, i64 0, metadata !248), !dbg !416
  %.pre = load %struct._SubMtx** %mtx, align 8, !dbg !416, !tbaa !288
  br label %if.end30, !dbg !415

if.then27:                                        ; preds = %if.else23
  call void @llvm.dbg.value(metadata !409, i64 0, metadata !248), !dbg !417
  store %struct._SubMtx* null, %struct._SubMtx** %mtx, align 8, !dbg !417, !tbaa !288
  br label %if.end30, !dbg !419

if.end30:                                         ; preds = %if.else23.if.end30_crit_edge, %if.then22, %if.then27, %if.then13, %if.then15, %if.else
  %9 = phi %struct._SubMtx* [ %.pre, %if.else23.if.end30_crit_edge ], [ null, %if.then22 ], [ null, %if.then27 ], [ %4, %if.then13 ], [ %6, %if.then15 ], [ undef, %if.else ]
  call void @llvm.dbg.value(metadata !{%struct._SubMtx** %mtx}, i64 0, metadata !248), !dbg !416
  ret %struct._SubMtx* %9, !dbg !416
}

; Function Attrs: optsize
declare i32 @I2Ohash_locate(%struct._I2Ohash*, i32, i32, i8**) #4

; Function Attrs: nounwind optsize uwtable
define %struct._SubMtx* @FrontMtx_lowerMtx(%struct._FrontMtx* %frontmtx, i32 %K, i32 %J) #0 {
entry:
  %mtx = alloca %struct._SubMtx*, align 8
  call void @llvm.dbg.value(metadata !{%struct._FrontMtx* %frontmtx}, i64 0, metadata !251), !dbg !420
  call void @llvm.dbg.value(metadata !{i32 %K}, i64 0, metadata !252), !dbg !421
  call void @llvm.dbg.value(metadata !{i32 %J}, i64 0, metadata !253), !dbg !422
  call void @llvm.dbg.declare(metadata !{%struct._SubMtx** %mtx}, metadata !255), !dbg !423
  %cmp = icmp eq %struct._FrontMtx* %frontmtx, null, !dbg !424
  %cmp1 = icmp slt i32 %J, 0, !dbg !424
  %or.cond = or i1 %cmp, %cmp1, !dbg !424
  br i1 %or.cond, label %if.then, label %lor.lhs.false2, !dbg !424

lor.lhs.false2:                                   ; preds = %entry
  %nfront = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 0, !dbg !424
  %0 = load i32* %nfront, align 4, !dbg !424, !tbaa !293
  %cmp3 = icmp sle i32 %0, %J, !dbg !424
  %cmp5 = icmp slt i32 %K, %J, !dbg !424
  %or.cond52 = or i1 %cmp3, %cmp5, !dbg !424
  %cmp8 = icmp slt i32 %0, %K, !dbg !424
  %or.cond53 = or i1 %or.cond52, %cmp8, !dbg !424
  br i1 %or.cond53, label %if.then, label %if.end, !dbg !424

if.then:                                          ; preds = %lor.lhs.false2, %entry
  %1 = load %struct._IO_FILE** @stderr, align 8, !dbg !425, !tbaa !288
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([57 x i8]* @.str12, i64 0, i64 0), %struct._FrontMtx* %frontmtx, i32 %K, i32 %J) #6, !dbg !425
  call void @exit(i32 -1) #7, !dbg !427
  unreachable, !dbg !427

if.end:                                           ; preds = %lor.lhs.false2
  %dataMode = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 6, !dbg !428
  %2 = load i32* %dataMode, align 4, !dbg !428, !tbaa !293
  %cmp9 = icmp eq i32 %2, 1, !dbg !428
  br i1 %cmp9, label %if.then10, label %if.else20, !dbg !428

if.then10:                                        ; preds = %if.end
  %cmp12 = icmp eq i32 %0, %K, !dbg !429
  br i1 %cmp12, label %if.then13, label %if.else, !dbg !429

if.then13:                                        ; preds = %if.then10
  %idxprom = sext i32 %J to i64, !dbg !431
  %p_mtxLNJ = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 22, !dbg !431
  %3 = load %struct._SubMtx*** %p_mtxLNJ, align 8, !dbg !431, !tbaa !288
  %arrayidx = getelementptr inbounds %struct._SubMtx** %3, i64 %idxprom, !dbg !431
  %4 = load %struct._SubMtx** %arrayidx, align 8, !dbg !431, !tbaa !288
  call void @llvm.dbg.value(metadata !{%struct._SubMtx* %4}, i64 0, metadata !255), !dbg !431
  store %struct._SubMtx* %4, %struct._SubMtx** %mtx, align 8, !dbg !431, !tbaa !288
  br label %if.end30, !dbg !433

if.else:                                          ; preds = %if.then10
  %cmp14 = icmp eq i32 %K, %J, !dbg !434
  br i1 %cmp14, label %if.then15, label %if.end30, !dbg !434

if.then15:                                        ; preds = %if.else
  %idxprom16 = sext i32 %J to i64, !dbg !435
  %p_mtxLJJ = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 21, !dbg !435
  %5 = load %struct._SubMtx*** %p_mtxLJJ, align 8, !dbg !435, !tbaa !288
  %arrayidx17 = getelementptr inbounds %struct._SubMtx** %5, i64 %idxprom16, !dbg !435
  %6 = load %struct._SubMtx** %arrayidx17, align 8, !dbg !435, !tbaa !288
  call void @llvm.dbg.value(metadata !{%struct._SubMtx* %6}, i64 0, metadata !255), !dbg !435
  store %struct._SubMtx* %6, %struct._SubMtx** %mtx, align 8, !dbg !435, !tbaa !288
  br label %if.end30, !dbg !437

if.else20:                                        ; preds = %if.end
  %lowerhash = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 23, !dbg !438
  %7 = load %struct._I2Ohash** %lowerhash, align 8, !dbg !438, !tbaa !288
  %cmp21 = icmp eq %struct._I2Ohash* %7, null, !dbg !438
  br i1 %cmp21, label %if.then22, label %if.else23, !dbg !438

if.then22:                                        ; preds = %if.else20
  call void @llvm.dbg.value(metadata !409, i64 0, metadata !255), !dbg !439
  store %struct._SubMtx* null, %struct._SubMtx** %mtx, align 8, !dbg !439, !tbaa !288
  br label %if.end30, !dbg !441

if.else23:                                        ; preds = %if.else20
  %8 = bitcast %struct._SubMtx** %mtx to i8**, !dbg !442
  %call25 = call i32 @I2Ohash_locate(%struct._I2Ohash* %7, i32 %K, i32 %J, i8** %8) #6, !dbg !442
  call void @llvm.dbg.value(metadata !{i32 %call25}, i64 0, metadata !254), !dbg !442
  %cmp26 = icmp eq i32 %call25, 0, !dbg !444
  br i1 %cmp26, label %if.then27, label %if.else23.if.end30_crit_edge, !dbg !444

if.else23.if.end30_crit_edge:                     ; preds = %if.else23
  call void @llvm.dbg.value(metadata !{%struct._SubMtx** %mtx}, i64 0, metadata !255), !dbg !445
  %.pre = load %struct._SubMtx** %mtx, align 8, !dbg !445, !tbaa !288
  br label %if.end30, !dbg !444

if.then27:                                        ; preds = %if.else23
  call void @llvm.dbg.value(metadata !409, i64 0, metadata !255), !dbg !446
  store %struct._SubMtx* null, %struct._SubMtx** %mtx, align 8, !dbg !446, !tbaa !288
  br label %if.end30, !dbg !448

if.end30:                                         ; preds = %if.else23.if.end30_crit_edge, %if.then22, %if.then27, %if.then13, %if.then15, %if.else
  %9 = phi %struct._SubMtx* [ %.pre, %if.else23.if.end30_crit_edge ], [ null, %if.then22 ], [ null, %if.then27 ], [ %4, %if.then13 ], [ %6, %if.then15 ], [ undef, %if.else ]
  call void @llvm.dbg.value(metadata !{%struct._SubMtx** %mtx}, i64 0, metadata !255), !dbg !445
  ret %struct._SubMtx* %9, !dbg !445
}

; Function Attrs: nounwind optsize uwtable
define void @FrontMtx_lowerAdjFronts(%struct._FrontMtx* %frontmtx, i32 %J, i32* %pnadj, i32** %padj) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._FrontMtx* %frontmtx}, i64 0, metadata !258), !dbg !449
  tail call void @llvm.dbg.value(metadata !{i32 %J}, i64 0, metadata !259), !dbg !450
  tail call void @llvm.dbg.value(metadata !{i32* %pnadj}, i64 0, metadata !260), !dbg !451
  tail call void @llvm.dbg.value(metadata !{i32** %padj}, i64 0, metadata !261), !dbg !452
  %cmp = icmp eq %struct._FrontMtx* %frontmtx, null, !dbg !453
  %cmp1 = icmp slt i32 %J, 0, !dbg !453
  %or.cond = or i1 %cmp, %cmp1, !dbg !453
  br i1 %or.cond, label %if.then, label %lor.lhs.false2, !dbg !453

lor.lhs.false2:                                   ; preds = %entry
  %nfront = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 0, !dbg !453
  %0 = load i32* %nfront, align 4, !dbg !453, !tbaa !293
  %cmp3 = icmp sle i32 %0, %J, !dbg !453
  %cmp5 = icmp eq i32* %pnadj, null, !dbg !453
  %or.cond31 = or i1 %cmp3, %cmp5, !dbg !453
  %cmp7 = icmp eq i32** %padj, null, !dbg !453
  %or.cond32 = or i1 %or.cond31, %cmp7, !dbg !453
  br i1 %or.cond32, label %if.then, label %if.end, !dbg !453

if.then:                                          ; preds = %lor.lhs.false2, %entry
  %1 = load %struct._IO_FILE** @stderr, align 8, !dbg !454, !tbaa !288
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([66 x i8]* @.str13, i64 0, i64 0), %struct._FrontMtx* %frontmtx, i32 %J, i32* %pnadj, i32** %padj) #6, !dbg !454
  tail call void @exit(i32 -1) #7, !dbg !456
  unreachable, !dbg !456

if.end:                                           ; preds = %lor.lhs.false2
  %dataMode = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 6, !dbg !457
  %2 = load i32* %dataMode, align 4, !dbg !457, !tbaa !293
  %cmp8 = icmp eq i32 %2, 1, !dbg !457
  br i1 %cmp8, label %if.then9, label %if.else, !dbg !457

if.then9:                                         ; preds = %if.end
  %3 = load %struct._IO_FILE** @stderr, align 8, !dbg !458, !tbaa !288
  %4 = tail call i64 @fwrite(i8* getelementptr inbounds ([71 x i8]* @.str14, i64 0, i64 0), i64 70, i64 1, %struct._IO_FILE* %3), !dbg !458
  tail call void @exit(i32 -1) #7, !dbg !460
  unreachable, !dbg !460

if.else:                                          ; preds = %if.end
  %symmetryflag = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 3, !dbg !461
  %5 = load i32* %symmetryflag, align 4, !dbg !461, !tbaa !293
  %cmp11 = icmp eq i32 %5, 2, !dbg !461
  br i1 %cmp11, label %if.then12, label %if.else13, !dbg !461

if.then12:                                        ; preds = %if.else
  %lowerblockIVL = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 16, !dbg !462
  %6 = load %struct._IVL** %lowerblockIVL, align 8, !dbg !462, !tbaa !288
  tail call void @IVL_listAndSize(%struct._IVL* %6, i32 %J, i32* %pnadj, i32** %padj) #6, !dbg !462
  br label %if.end15, !dbg !464

if.else13:                                        ; preds = %if.else
  %upperblockIVL = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 17, !dbg !465
  %7 = load %struct._IVL** %upperblockIVL, align 8, !dbg !465, !tbaa !288
  tail call void @IVL_listAndSize(%struct._IVL* %7, i32 %J, i32* %pnadj, i32** %padj) #6, !dbg !465
  br label %if.end15

if.end15:                                         ; preds = %if.then12, %if.else13
  ret void, !dbg !467
}

; Function Attrs: nounwind optsize uwtable
define void @FrontMtx_upperAdjFronts(%struct._FrontMtx* %frontmtx, i32 %J, i32* %pnadj, i32** %padj) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._FrontMtx* %frontmtx}, i64 0, metadata !264), !dbg !468
  tail call void @llvm.dbg.value(metadata !{i32 %J}, i64 0, metadata !265), !dbg !469
  tail call void @llvm.dbg.value(metadata !{i32* %pnadj}, i64 0, metadata !266), !dbg !470
  tail call void @llvm.dbg.value(metadata !{i32** %padj}, i64 0, metadata !267), !dbg !471
  %cmp = icmp eq %struct._FrontMtx* %frontmtx, null, !dbg !472
  %cmp1 = icmp slt i32 %J, 0, !dbg !472
  %or.cond = or i1 %cmp, %cmp1, !dbg !472
  br i1 %or.cond, label %if.then, label %lor.lhs.false2, !dbg !472

lor.lhs.false2:                                   ; preds = %entry
  %nfront = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 0, !dbg !472
  %0 = load i32* %nfront, align 4, !dbg !472, !tbaa !293
  %cmp3 = icmp sle i32 %0, %J, !dbg !472
  %cmp5 = icmp eq i32* %pnadj, null, !dbg !472
  %or.cond23 = or i1 %cmp3, %cmp5, !dbg !472
  %cmp7 = icmp eq i32** %padj, null, !dbg !472
  %or.cond24 = or i1 %or.cond23, %cmp7, !dbg !472
  br i1 %or.cond24, label %if.then, label %if.end, !dbg !472

if.then:                                          ; preds = %lor.lhs.false2, %entry
  %1 = load %struct._IO_FILE** @stderr, align 8, !dbg !473, !tbaa !288
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([66 x i8]* @.str15, i64 0, i64 0), %struct._FrontMtx* %frontmtx, i32 %J, i32* %pnadj, i32** %padj) #6, !dbg !473
  tail call void @exit(i32 -1) #7, !dbg !475
  unreachable, !dbg !475

if.end:                                           ; preds = %lor.lhs.false2
  %dataMode = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 6, !dbg !476
  %2 = load i32* %dataMode, align 4, !dbg !476, !tbaa !293
  %cmp8 = icmp eq i32 %2, 1, !dbg !476
  br i1 %cmp8, label %if.then9, label %if.end11, !dbg !476

if.then9:                                         ; preds = %if.end
  %3 = load %struct._IO_FILE** @stderr, align 8, !dbg !477, !tbaa !288
  %4 = tail call i64 @fwrite(i8* getelementptr inbounds ([67 x i8]* @.str16, i64 0, i64 0), i64 66, i64 1, %struct._IO_FILE* %3), !dbg !477
  tail call void @exit(i32 -1) #7, !dbg !479
  unreachable, !dbg !479

if.end11:                                         ; preds = %if.end
  %upperblockIVL = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 17, !dbg !480
  %5 = load %struct._IVL** %upperblockIVL, align 8, !dbg !480, !tbaa !288
  tail call void @IVL_listAndSize(%struct._IVL* %5, i32 %J, i32* %pnadj, i32** %padj) #6, !dbg !480
  ret void, !dbg !481
}

; Function Attrs: nounwind optsize uwtable
define i32 @FrontMtx_nLowerBlocks(%struct._FrontMtx* %frontmtx) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._FrontMtx* %frontmtx}, i64 0, metadata !270), !dbg !482
  %cmp = icmp eq %struct._FrontMtx* %frontmtx, null, !dbg !483
  br i1 %cmp, label %if.then, label %if.end, !dbg !483

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !484, !tbaa !288
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([55 x i8]* @.str17, i64 0, i64 0), %struct._FrontMtx* null) #6, !dbg !484
  tail call void @exit(i32 -1) #7, !dbg !486
  unreachable, !dbg !486

if.end:                                           ; preds = %entry
  %dataMode = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 6, !dbg !487
  %1 = load i32* %dataMode, align 4, !dbg !487, !tbaa !293
  %cmp1 = icmp eq i32 %1, 1, !dbg !487
  br i1 %cmp1, label %if.then2, label %if.end4, !dbg !487

if.then2:                                         ; preds = %if.end
  %2 = load %struct._IO_FILE** @stderr, align 8, !dbg !488, !tbaa !288
  %3 = tail call i64 @fwrite(i8* getelementptr inbounds ([65 x i8]* @.str18, i64 0, i64 0), i64 64, i64 1, %struct._IO_FILE* %2), !dbg !488
  tail call void @exit(i32 -1) #7, !dbg !490
  unreachable, !dbg !490

if.end4:                                          ; preds = %if.end
  %symmetryflag = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 3, !dbg !491
  %4 = load i32* %symmetryflag, align 4, !dbg !491, !tbaa !293
  %cmp5 = icmp eq i32 %4, 2, !dbg !491
  %lowerblockIVL = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 16, !dbg !492
  %upperblockIVL = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 17, !dbg !494
  %.pn.in = select i1 %cmp5, %struct._IVL** %lowerblockIVL, %struct._IVL** %upperblockIVL, !dbg !491
  %.pn = load %struct._IVL** %.pn.in, align 8, !dbg !492
  %nblocks.0.in = getelementptr inbounds %struct._IVL* %.pn, i64 0, i32 3, !dbg !492
  %nblocks.0 = load i32* %nblocks.0.in, align 4, !dbg !492
  ret i32 %nblocks.0, !dbg !496
}

; Function Attrs: nounwind optsize uwtable
define i32 @FrontMtx_nUpperBlocks(%struct._FrontMtx* %frontmtx) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._FrontMtx* %frontmtx}, i64 0, metadata !274), !dbg !497
  %cmp = icmp eq %struct._FrontMtx* %frontmtx, null, !dbg !498
  br i1 %cmp, label %if.then, label %if.end, !dbg !498

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !499, !tbaa !288
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([55 x i8]* @.str19, i64 0, i64 0), %struct._FrontMtx* null) #6, !dbg !499
  tail call void @exit(i32 -1) #7, !dbg !501
  unreachable, !dbg !501

if.end:                                           ; preds = %entry
  %dataMode = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 6, !dbg !502
  %1 = load i32* %dataMode, align 4, !dbg !502, !tbaa !293
  %cmp1 = icmp eq i32 %1, 1, !dbg !502
  br i1 %cmp1, label %if.then2, label %if.end4, !dbg !502

if.then2:                                         ; preds = %if.end
  %2 = load %struct._IO_FILE** @stderr, align 8, !dbg !503, !tbaa !288
  %3 = tail call i64 @fwrite(i8* getelementptr inbounds ([65 x i8]* @.str20, i64 0, i64 0), i64 64, i64 1, %struct._IO_FILE* %2), !dbg !503
  tail call void @exit(i32 -1) #7, !dbg !505
  unreachable, !dbg !505

if.end4:                                          ; preds = %if.end
  %upperblockIVL = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 17, !dbg !506
  %4 = load %struct._IVL** %upperblockIVL, align 8, !dbg !506, !tbaa !288
  %tsize = getelementptr inbounds %struct._IVL* %4, i64 0, i32 3, !dbg !506
  %5 = load i32* %tsize, align 4, !dbg !506, !tbaa !293
  ret i32 %5, !dbg !506
}

; Function Attrs: nounwind optsize uwtable
define %struct._IVL* @FrontMtx_upperBlockIVL(%struct._FrontMtx* %frontmtx) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._FrontMtx* %frontmtx}, i64 0, metadata !279), !dbg !507
  %cmp = icmp eq %struct._FrontMtx* %frontmtx, null, !dbg !508
  br i1 %cmp, label %if.then, label %if.end, !dbg !508

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !509, !tbaa !288
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([56 x i8]* @.str21, i64 0, i64 0), %struct._FrontMtx* null) #6, !dbg !509
  tail call void @exit(i32 -1) #7, !dbg !511
  unreachable, !dbg !511

if.end:                                           ; preds = %entry
  %dataMode = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 6, !dbg !512
  %1 = load i32* %dataMode, align 4, !dbg !512, !tbaa !293
  %cmp1 = icmp eq i32 %1, 1, !dbg !512
  br i1 %cmp1, label %if.then2, label %if.end4, !dbg !512

if.then2:                                         ; preds = %if.end
  %2 = load %struct._IO_FILE** @stderr, align 8, !dbg !513, !tbaa !288
  %3 = tail call i64 @fwrite(i8* getelementptr inbounds ([66 x i8]* @.str22, i64 0, i64 0), i64 65, i64 1, %struct._IO_FILE* %2), !dbg !513
  tail call void @exit(i32 -1) #7, !dbg !515
  unreachable, !dbg !515

if.end4:                                          ; preds = %if.end
  %upperblockIVL = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 17, !dbg !516
  %4 = load %struct._IVL** %upperblockIVL, align 8, !dbg !516, !tbaa !288
  ret %struct._IVL* %4, !dbg !516
}

; Function Attrs: nounwind optsize uwtable
define %struct._IVL* @FrontMtx_lowerBlockIVL(%struct._FrontMtx* %frontmtx) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._FrontMtx* %frontmtx}, i64 0, metadata !282), !dbg !517
  %cmp = icmp eq %struct._FrontMtx* %frontmtx, null, !dbg !518
  br i1 %cmp, label %if.then, label %if.end, !dbg !518

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !519, !tbaa !288
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([56 x i8]* @.str23, i64 0, i64 0), %struct._FrontMtx* null) #6, !dbg !519
  tail call void @exit(i32 -1) #7, !dbg !521
  unreachable, !dbg !521

if.end:                                           ; preds = %entry
  %dataMode = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 6, !dbg !522
  %1 = load i32* %dataMode, align 4, !dbg !522, !tbaa !293
  %cmp1 = icmp eq i32 %1, 1, !dbg !522
  br i1 %cmp1, label %if.then2, label %if.end4, !dbg !522

if.then2:                                         ; preds = %if.end
  %2 = load %struct._IO_FILE** @stderr, align 8, !dbg !523, !tbaa !288
  %3 = tail call i64 @fwrite(i8* getelementptr inbounds ([66 x i8]* @.str24, i64 0, i64 0), i64 65, i64 1, %struct._IO_FILE* %2), !dbg !523
  tail call void @exit(i32 -1) #7, !dbg !525
  unreachable, !dbg !525

if.end4:                                          ; preds = %if.end
  %symmetryflag = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 3, !dbg !526
  %4 = load i32* %symmetryflag, align 4, !dbg !526, !tbaa !293
  %cmp5 = icmp eq i32 %4, 2, !dbg !526
  %lowerblockIVL = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 16, !dbg !527
  %upperblockIVL = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 17, !dbg !529
  %ivl.0.in = select i1 %cmp5, %struct._IVL** %lowerblockIVL, %struct._IVL** %upperblockIVL, !dbg !526
  %ivl.0 = load %struct._IVL** %ivl.0.in, align 8, !dbg !527
  ret %struct._IVL* %ivl.0, !dbg !531
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #1

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #5

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { nounwind optsize }
attributes #7 = { noreturn nounwind optsize }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_instance.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_instance.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4, metadata !185, metadata !188, metadata !193, metadata !207, metadata !213, metadata !220, metadata !228, metadata !234, metadata !240, metadata !249, metadata !256, metadata !262, metadata !268, metadata !272, metadata !275, metadata !280}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"FrontMtx_nfront", metadata !"FrontMtx_nfront", metadata !"", i32 14, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct._FrontMtx*)* @FrontMtx_nfront, null, null, metadata !183, i32 16} ; [ DW_TAG_subprogram ] [line 14] [def] [scope 16] [FrontMtx_nfront]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_instance.c]
!6 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8, metadata !9}
!8 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!9 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !10} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from FrontMtx]
!10 = metadata !{i32 786454, metadata !1, null, metadata !"FrontMtx", i32 96, i64 0, i64 0, i64 0, i32 0, metadata !11} ; [ DW_TAG_typedef ] [FrontMtx] [line 96, size 0, align 0, offset 0] [from _FrontMtx]
!11 = metadata !{i32 786451, metadata !12, null, metadata !"_FrontMtx", i32 97, i64 1536, i64 64, i32 0, i32 0, null, metadata !13, i32 0, null, null} ; [ DW_TAG_structure_type ] [_FrontMtx] [line 97, size 1536, align 64, offset 0] [from ]
!12 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/../FrontMtx.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!13 = metadata !{metadata !14, metadata !15, metadata !16, metadata !17, metadata !18, metadata !19, metadata !20, metadata !21, metadata !22, metadata !23, metadata !24, metadata !36, metadata !57, metadata !58, metadata !81, metadata !82, metadata !83, metadata !84, metadata !85, metadata !114, metadata !115, metadata !116, metadata !117, metadata !118, metadata !143, metadata !144, metadata !169, metadata !170, metadata !182}
!14 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"nfront", i32 98, i64 32, i64 32, i64 0, i32 0, metadata !8} ; [ DW_TAG_member ] [nfront] [line 98, size 32, align 32, offset 0] [from int]
!15 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"neqns", i32 99, i64 32, i64 32, i64 32, i32 0, metadata !8} ; [ DW_TAG_member ] [neqns] [line 99, size 32, align 32, offset 32] [from int]
!16 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"type", i32 100, i64 32, i64 32, i64 64, i32 0, metadata !8} ; [ DW_TAG_member ] [type] [line 100, size 32, align 32, offset 64] [from int]
!17 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"symmetryflag", i32 101, i64 32, i64 32, i64 96, i32 0, metadata !8} ; [ DW_TAG_member ] [symmetryflag] [line 101, size 32, align 32, offset 96] [from int]
!18 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"sparsityflag", i32 102, i64 32, i64 32, i64 128, i32 0, metadata !8} ; [ DW_TAG_member ] [sparsityflag] [line 102, size 32, align 32, offset 128] [from int]
!19 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"pivotingflag", i32 103, i64 32, i64 32, i64 160, i32 0, metadata !8} ; [ DW_TAG_member ] [pivotingflag] [line 103, size 32, align 32, offset 160] [from int]
!20 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"dataMode", i32 104, i64 32, i64 32, i64 192, i32 0, metadata !8} ; [ DW_TAG_member ] [dataMode] [line 104, size 32, align 32, offset 192] [from int]
!21 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"nentD", i32 105, i64 32, i64 32, i64 224, i32 0, metadata !8} ; [ DW_TAG_member ] [nentD] [line 105, size 32, align 32, offset 224] [from int]
!22 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"nentL", i32 106, i64 32, i64 32, i64 256, i32 0, metadata !8} ; [ DW_TAG_member ] [nentL] [line 106, size 32, align 32, offset 256] [from int]
!23 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"nentU", i32 107, i64 32, i64 32, i64 288, i32 0, metadata !8} ; [ DW_TAG_member ] [nentU] [line 107, size 32, align 32, offset 288] [from int]
!24 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"tree", i32 108, i64 64, i64 64, i64 320, i32 0, metadata !25} ; [ DW_TAG_member ] [tree] [line 108, size 64, align 64, offset 320] [from ]
!25 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !26} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from Tree]
!26 = metadata !{i32 786454, metadata !12, null, metadata !"Tree", i32 15, i64 0, i64 0, i64 0, i32 0, metadata !27} ; [ DW_TAG_typedef ] [Tree] [line 15, size 0, align 0, offset 0] [from _Tree]
!27 = metadata !{i32 786451, metadata !28, null, metadata !"_Tree", i32 16, i64 256, i64 64, i32 0, i32 0, null, metadata !29, i32 0, null, null} ; [ DW_TAG_structure_type ] [_Tree] [line 16, size 256, align 64, offset 0] [from ]
!28 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/../../Tree/Tree.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!29 = metadata !{metadata !30, metadata !31, metadata !32, metadata !34, metadata !35}
!30 = metadata !{i32 786445, metadata !28, metadata !27, metadata !"n", i32 17, i64 32, i64 32, i64 0, i32 0, metadata !8} ; [ DW_TAG_member ] [n] [line 17, size 32, align 32, offset 0] [from int]
!31 = metadata !{i32 786445, metadata !28, metadata !27, metadata !"root", i32 18, i64 32, i64 32, i64 32, i32 0, metadata !8} ; [ DW_TAG_member ] [root] [line 18, size 32, align 32, offset 32] [from int]
!32 = metadata !{i32 786445, metadata !28, metadata !27, metadata !"par", i32 19, i64 64, i64 64, i64 64, i32 0, metadata !33} ; [ DW_TAG_member ] [par] [line 19, size 64, align 64, offset 64] [from ]
!33 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !8} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from int]
!34 = metadata !{i32 786445, metadata !28, metadata !27, metadata !"fch", i32 20, i64 64, i64 64, i64 128, i32 0, metadata !33} ; [ DW_TAG_member ] [fch] [line 20, size 64, align 64, offset 128] [from ]
!35 = metadata !{i32 786445, metadata !28, metadata !27, metadata !"sib", i32 21, i64 64, i64 64, i64 192, i32 0, metadata !33} ; [ DW_TAG_member ] [sib] [line 21, size 64, align 64, offset 192] [from ]
!36 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"frontETree", i32 109, i64 64, i64 64, i64 384, i32 0, metadata !37} ; [ DW_TAG_member ] [frontETree] [line 109, size 64, align 64, offset 384] [from ]
!37 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !38} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ETree]
!38 = metadata !{i32 786454, metadata !12, null, metadata !"ETree", i32 31, i64 0, i64 0, i64 0, i32 0, metadata !39} ; [ DW_TAG_typedef ] [ETree] [line 31, size 0, align 0, offset 0] [from _ETree]
!39 = metadata !{i32 786451, metadata !40, null, metadata !"_ETree", i32 32, i64 320, i64 64, i32 0, i32 0, null, metadata !41, i32 0, null, null} ; [ DW_TAG_structure_type ] [_ETree] [line 32, size 320, align 64, offset 0] [from ]
!40 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/../../ETree/ETree.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!41 = metadata !{metadata !42, metadata !43, metadata !44, metadata !45, metadata !55, metadata !56}
!42 = metadata !{i32 786445, metadata !40, metadata !39, metadata !"nfront", i32 33, i64 32, i64 32, i64 0, i32 0, metadata !8} ; [ DW_TAG_member ] [nfront] [line 33, size 32, align 32, offset 0] [from int]
!43 = metadata !{i32 786445, metadata !40, metadata !39, metadata !"nvtx", i32 34, i64 32, i64 32, i64 32, i32 0, metadata !8} ; [ DW_TAG_member ] [nvtx] [line 34, size 32, align 32, offset 32] [from int]
!44 = metadata !{i32 786445, metadata !40, metadata !39, metadata !"tree", i32 35, i64 64, i64 64, i64 64, i32 0, metadata !25} ; [ DW_TAG_member ] [tree] [line 35, size 64, align 64, offset 64] [from ]
!45 = metadata !{i32 786445, metadata !40, metadata !39, metadata !"nodwghtsIV", i32 36, i64 64, i64 64, i64 128, i32 0, metadata !46} ; [ DW_TAG_member ] [nodwghtsIV] [line 36, size 64, align 64, offset 128] [from ]
!46 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !47} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from IV]
!47 = metadata !{i32 786454, metadata !40, null, metadata !"IV", i32 20, i64 0, i64 0, i64 0, i32 0, metadata !48} ; [ DW_TAG_typedef ] [IV] [line 20, size 0, align 0, offset 0] [from _IV]
!48 = metadata !{i32 786451, metadata !49, null, metadata !"_IV", i32 21, i64 192, i64 64, i32 0, i32 0, null, metadata !50, i32 0, null, null} ; [ DW_TAG_structure_type ] [_IV] [line 21, size 192, align 64, offset 0] [from ]
!49 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/../../IV/IV.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!50 = metadata !{metadata !51, metadata !52, metadata !53, metadata !54}
!51 = metadata !{i32 786445, metadata !49, metadata !48, metadata !"size", i32 22, i64 32, i64 32, i64 0, i32 0, metadata !8} ; [ DW_TAG_member ] [size] [line 22, size 32, align 32, offset 0] [from int]
!52 = metadata !{i32 786445, metadata !49, metadata !48, metadata !"maxsize", i32 23, i64 32, i64 32, i64 32, i32 0, metadata !8} ; [ DW_TAG_member ] [maxsize] [line 23, size 32, align 32, offset 32] [from int]
!53 = metadata !{i32 786445, metadata !49, metadata !48, metadata !"owned", i32 24, i64 32, i64 32, i64 64, i32 0, metadata !8} ; [ DW_TAG_member ] [owned] [line 24, size 32, align 32, offset 64] [from int]
!54 = metadata !{i32 786445, metadata !49, metadata !48, metadata !"vec", i32 25, i64 64, i64 64, i64 128, i32 0, metadata !33} ; [ DW_TAG_member ] [vec] [line 25, size 64, align 64, offset 128] [from ]
!55 = metadata !{i32 786445, metadata !40, metadata !39, metadata !"bndwghtsIV", i32 37, i64 64, i64 64, i64 192, i32 0, metadata !46} ; [ DW_TAG_member ] [bndwghtsIV] [line 37, size 64, align 64, offset 192] [from ]
!56 = metadata !{i32 786445, metadata !40, metadata !39, metadata !"vtxToFrontIV", i32 38, i64 64, i64 64, i64 256, i32 0, metadata !46} ; [ DW_TAG_member ] [vtxToFrontIV] [line 38, size 64, align 64, offset 256] [from ]
!57 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"frontsizesIV", i32 110, i64 64, i64 64, i64 448, i32 0, metadata !46} ; [ DW_TAG_member ] [frontsizesIV] [line 110, size 64, align 64, offset 448] [from ]
!58 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"symbfacIVL", i32 111, i64 64, i64 64, i64 512, i32 0, metadata !59} ; [ DW_TAG_member ] [symbfacIVL] [line 111, size 64, align 64, offset 512] [from ]
!59 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !60} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from IVL]
!60 = metadata !{i32 786454, metadata !12, null, metadata !"IVL", i32 55, i64 0, i64 0, i64 0, i32 0, metadata !61} ; [ DW_TAG_typedef ] [IVL] [line 55, size 0, align 0, offset 0] [from _IVL]
!61 = metadata !{i32 786451, metadata !62, null, metadata !"_IVL", i32 79, i64 384, i64 64, i32 0, i32 0, null, metadata !63, i32 0, null, null} ; [ DW_TAG_structure_type ] [_IVL] [line 79, size 384, align 64, offset 0] [from ]
!62 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/../../IVL/IVL.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!63 = metadata !{metadata !64, metadata !65, metadata !66, metadata !67, metadata !68, metadata !69, metadata !71, metadata !72}
!64 = metadata !{i32 786445, metadata !62, metadata !61, metadata !"type", i32 80, i64 32, i64 32, i64 0, i32 0, metadata !8} ; [ DW_TAG_member ] [type] [line 80, size 32, align 32, offset 0] [from int]
!65 = metadata !{i32 786445, metadata !62, metadata !61, metadata !"maxnlist", i32 81, i64 32, i64 32, i64 32, i32 0, metadata !8} ; [ DW_TAG_member ] [maxnlist] [line 81, size 32, align 32, offset 32] [from int]
!66 = metadata !{i32 786445, metadata !62, metadata !61, metadata !"nlist", i32 82, i64 32, i64 32, i64 64, i32 0, metadata !8} ; [ DW_TAG_member ] [nlist] [line 82, size 32, align 32, offset 64] [from int]
!67 = metadata !{i32 786445, metadata !62, metadata !61, metadata !"tsize", i32 83, i64 32, i64 32, i64 96, i32 0, metadata !8} ; [ DW_TAG_member ] [tsize] [line 83, size 32, align 32, offset 96] [from int]
!68 = metadata !{i32 786445, metadata !62, metadata !61, metadata !"sizes", i32 84, i64 64, i64 64, i64 128, i32 0, metadata !33} ; [ DW_TAG_member ] [sizes] [line 84, size 64, align 64, offset 128] [from ]
!69 = metadata !{i32 786445, metadata !62, metadata !61, metadata !"p_vec", i32 85, i64 64, i64 64, i64 192, i32 0, metadata !70} ; [ DW_TAG_member ] [p_vec] [line 85, size 64, align 64, offset 192] [from ]
!70 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !33} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!71 = metadata !{i32 786445, metadata !62, metadata !61, metadata !"incr", i32 86, i64 32, i64 32, i64 256, i32 0, metadata !8} ; [ DW_TAG_member ] [incr] [line 86, size 32, align 32, offset 256] [from int]
!72 = metadata !{i32 786445, metadata !62, metadata !61, metadata !"chunk", i32 87, i64 64, i64 64, i64 320, i32 0, metadata !73} ; [ DW_TAG_member ] [chunk] [line 87, size 64, align 64, offset 320] [from ]
!73 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !74} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from Ichunk]
!74 = metadata !{i32 786454, metadata !62, null, metadata !"Ichunk", i32 56, i64 0, i64 0, i64 0, i32 0, metadata !75} ; [ DW_TAG_typedef ] [Ichunk] [line 56, size 0, align 0, offset 0] [from _Ichunk]
!75 = metadata !{i32 786451, metadata !62, null, metadata !"_Ichunk", i32 102, i64 192, i64 64, i32 0, i32 0, null, metadata !76, i32 0, null, null} ; [ DW_TAG_structure_type ] [_Ichunk] [line 102, size 192, align 64, offset 0] [from ]
!76 = metadata !{metadata !77, metadata !78, metadata !79, metadata !80}
!77 = metadata !{i32 786445, metadata !62, metadata !75, metadata !"size", i32 103, i64 32, i64 32, i64 0, i32 0, metadata !8} ; [ DW_TAG_member ] [size] [line 103, size 32, align 32, offset 0] [from int]
!78 = metadata !{i32 786445, metadata !62, metadata !75, metadata !"inuse", i32 104, i64 32, i64 32, i64 32, i32 0, metadata !8} ; [ DW_TAG_member ] [inuse] [line 104, size 32, align 32, offset 32] [from int]
!79 = metadata !{i32 786445, metadata !62, metadata !75, metadata !"base", i32 105, i64 64, i64 64, i64 64, i32 0, metadata !33} ; [ DW_TAG_member ] [base] [line 105, size 64, align 64, offset 64] [from ]
!80 = metadata !{i32 786445, metadata !62, metadata !75, metadata !"next", i32 106, i64 64, i64 64, i64 128, i32 0, metadata !73} ; [ DW_TAG_member ] [next] [line 106, size 64, align 64, offset 128] [from ]
!81 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"rowadjIVL", i32 112, i64 64, i64 64, i64 576, i32 0, metadata !59} ; [ DW_TAG_member ] [rowadjIVL] [line 112, size 64, align 64, offset 576] [from ]
!82 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"coladjIVL", i32 113, i64 64, i64 64, i64 640, i32 0, metadata !59} ; [ DW_TAG_member ] [coladjIVL] [line 113, size 64, align 64, offset 640] [from ]
!83 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"lowerblockIVL", i32 114, i64 64, i64 64, i64 704, i32 0, metadata !59} ; [ DW_TAG_member ] [lowerblockIVL] [line 114, size 64, align 64, offset 704] [from ]
!84 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"upperblockIVL", i32 115, i64 64, i64 64, i64 768, i32 0, metadata !59} ; [ DW_TAG_member ] [upperblockIVL] [line 115, size 64, align 64, offset 768] [from ]
!85 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"p_mtxDJJ", i32 116, i64 64, i64 64, i64 832, i32 0, metadata !86} ; [ DW_TAG_member ] [p_mtxDJJ] [line 116, size 64, align 64, offset 832] [from ]
!86 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !87} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!87 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !88} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from SubMtx]
!88 = metadata !{i32 786454, metadata !12, null, metadata !"SubMtx", i32 43, i64 0, i64 0, i64 0, i32 0, metadata !89} ; [ DW_TAG_typedef ] [SubMtx] [line 43, size 0, align 0, offset 0] [from _SubMtx]
!89 = metadata !{i32 786451, metadata !90, null, metadata !"_SubMtx", i32 44, i64 576, i64 64, i32 0, i32 0, null, metadata !91, i32 0, null, null} ; [ DW_TAG_structure_type ] [_SubMtx] [line 44, size 576, align 64, offset 0] [from ]
!90 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/../../SubMtx/SubMtx.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!91 = metadata !{metadata !92, metadata !93, metadata !94, metadata !95, metadata !96, metadata !97, metadata !98, metadata !99, metadata !102, metadata !111}
!92 = metadata !{i32 786445, metadata !90, metadata !89, metadata !"type", i32 45, i64 32, i64 32, i64 0, i32 0, metadata !8} ; [ DW_TAG_member ] [type] [line 45, size 32, align 32, offset 0] [from int]
!93 = metadata !{i32 786445, metadata !90, metadata !89, metadata !"mode", i32 46, i64 32, i64 32, i64 32, i32 0, metadata !8} ; [ DW_TAG_member ] [mode] [line 46, size 32, align 32, offset 32] [from int]
!94 = metadata !{i32 786445, metadata !90, metadata !89, metadata !"rowid", i32 47, i64 32, i64 32, i64 64, i32 0, metadata !8} ; [ DW_TAG_member ] [rowid] [line 47, size 32, align 32, offset 64] [from int]
!95 = metadata !{i32 786445, metadata !90, metadata !89, metadata !"colid", i32 48, i64 32, i64 32, i64 96, i32 0, metadata !8} ; [ DW_TAG_member ] [colid] [line 48, size 32, align 32, offset 96] [from int]
!96 = metadata !{i32 786445, metadata !90, metadata !89, metadata !"nrow", i32 49, i64 32, i64 32, i64 128, i32 0, metadata !8} ; [ DW_TAG_member ] [nrow] [line 49, size 32, align 32, offset 128] [from int]
!97 = metadata !{i32 786445, metadata !90, metadata !89, metadata !"ncol", i32 50, i64 32, i64 32, i64 160, i32 0, metadata !8} ; [ DW_TAG_member ] [ncol] [line 50, size 32, align 32, offset 160] [from int]
!98 = metadata !{i32 786445, metadata !90, metadata !89, metadata !"nent", i32 51, i64 32, i64 32, i64 192, i32 0, metadata !8} ; [ DW_TAG_member ] [nent] [line 51, size 32, align 32, offset 192] [from int]
!99 = metadata !{i32 786445, metadata !90, metadata !89, metadata !"entries", i32 52, i64 64, i64 64, i64 256, i32 0, metadata !100} ; [ DW_TAG_member ] [entries] [line 52, size 64, align 64, offset 256] [from ]
!100 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !101} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from double]
!101 = metadata !{i32 786468, null, null, metadata !"double", i32 0, i64 64, i64 64, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [double] [line 0, size 64, align 64, offset 0, enc DW_ATE_float]
!102 = metadata !{i32 786445, metadata !90, metadata !89, metadata !"wrkDV", i32 53, i64 192, i64 64, i64 320, i32 0, metadata !103} ; [ DW_TAG_member ] [wrkDV] [line 53, size 192, align 64, offset 320] [from DV]
!103 = metadata !{i32 786454, metadata !90, null, metadata !"DV", i32 20, i64 0, i64 0, i64 0, i32 0, metadata !104} ; [ DW_TAG_typedef ] [DV] [line 20, size 0, align 0, offset 0] [from _DV]
!104 = metadata !{i32 786451, metadata !105, null, metadata !"_DV", i32 21, i64 192, i64 64, i32 0, i32 0, null, metadata !106, i32 0, null, null} ; [ DW_TAG_structure_type ] [_DV] [line 21, size 192, align 64, offset 0] [from ]
!105 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/../../DV/DV.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!106 = metadata !{metadata !107, metadata !108, metadata !109, metadata !110}
!107 = metadata !{i32 786445, metadata !105, metadata !104, metadata !"size", i32 22, i64 32, i64 32, i64 0, i32 0, metadata !8} ; [ DW_TAG_member ] [size] [line 22, size 32, align 32, offset 0] [from int]
!108 = metadata !{i32 786445, metadata !105, metadata !104, metadata !"maxsize", i32 23, i64 32, i64 32, i64 32, i32 0, metadata !8} ; [ DW_TAG_member ] [maxsize] [line 23, size 32, align 32, offset 32] [from int]
!109 = metadata !{i32 786445, metadata !105, metadata !104, metadata !"owned", i32 24, i64 32, i64 32, i64 64, i32 0, metadata !8} ; [ DW_TAG_member ] [owned] [line 24, size 32, align 32, offset 64] [from int]
!110 = metadata !{i32 786445, metadata !105, metadata !104, metadata !"vec", i32 25, i64 64, i64 64, i64 128, i32 0, metadata !100} ; [ DW_TAG_member ] [vec] [line 25, size 64, align 64, offset 128] [from ]
!111 = metadata !{i32 786445, metadata !90, metadata !89, metadata !"next", i32 54, i64 64, i64 64, i64 512, i32 0, metadata !112} ; [ DW_TAG_member ] [next] [line 54, size 64, align 64, offset 512] [from ]
!112 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !113} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from SubMtx]
!113 = metadata !{i32 786454, metadata !90, null, metadata !"SubMtx", i32 43, i64 0, i64 0, i64 0, i32 0, metadata !89} ; [ DW_TAG_typedef ] [SubMtx] [line 43, size 0, align 0, offset 0] [from _SubMtx]
!114 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"p_mtxUJJ", i32 117, i64 64, i64 64, i64 896, i32 0, metadata !86} ; [ DW_TAG_member ] [p_mtxUJJ] [line 117, size 64, align 64, offset 896] [from ]
!115 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"p_mtxUJN", i32 118, i64 64, i64 64, i64 960, i32 0, metadata !86} ; [ DW_TAG_member ] [p_mtxUJN] [line 118, size 64, align 64, offset 960] [from ]
!116 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"p_mtxLJJ", i32 119, i64 64, i64 64, i64 1024, i32 0, metadata !86} ; [ DW_TAG_member ] [p_mtxLJJ] [line 119, size 64, align 64, offset 1024] [from ]
!117 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"p_mtxLNJ", i32 120, i64 64, i64 64, i64 1088, i32 0, metadata !86} ; [ DW_TAG_member ] [p_mtxLNJ] [line 120, size 64, align 64, offset 1088] [from ]
!118 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"lowerhash", i32 121, i64 64, i64 64, i64 1152, i32 0, metadata !119} ; [ DW_TAG_member ] [lowerhash] [line 121, size 64, align 64, offset 1152] [from ]
!119 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !120} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from I2Ohash]
!120 = metadata !{i32 786454, metadata !12, null, metadata !"I2Ohash", i32 6, i64 0, i64 0, i64 0, i32 0, metadata !121} ; [ DW_TAG_typedef ] [I2Ohash] [line 6, size 0, align 0, offset 0] [from _I2Ohash]
!121 = metadata !{i32 786451, metadata !122, null, metadata !"_I2Ohash", i32 7, i64 320, i64 64, i32 0, i32 0, null, metadata !123, i32 0, null, null} ; [ DW_TAG_structure_type ] [_I2Ohash] [line 7, size 320, align 64, offset 0] [from ]
!122 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/../../I2Ohash/I2Ohash.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!123 = metadata !{metadata !124, metadata !125, metadata !126, metadata !127, metadata !140, metadata !141}
!124 = metadata !{i32 786445, metadata !122, metadata !121, metadata !"nlist", i32 8, i64 32, i64 32, i64 0, i32 0, metadata !8} ; [ DW_TAG_member ] [nlist] [line 8, size 32, align 32, offset 0] [from int]
!125 = metadata !{i32 786445, metadata !122, metadata !121, metadata !"grow", i32 9, i64 32, i64 32, i64 32, i32 0, metadata !8} ; [ DW_TAG_member ] [grow] [line 9, size 32, align 32, offset 32] [from int]
!126 = metadata !{i32 786445, metadata !122, metadata !121, metadata !"nitem", i32 10, i64 32, i64 32, i64 64, i32 0, metadata !8} ; [ DW_TAG_member ] [nitem] [line 10, size 32, align 32, offset 64] [from int]
!127 = metadata !{i32 786445, metadata !122, metadata !121, metadata !"baseI2OP", i32 11, i64 64, i64 64, i64 128, i32 0, metadata !128} ; [ DW_TAG_member ] [baseI2OP] [line 11, size 64, align 64, offset 128] [from ]
!128 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !129} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from I2OP]
!129 = metadata !{i32 786454, metadata !122, null, metadata !"I2OP", i32 5, i64 0, i64 0, i64 0, i32 0, metadata !130} ; [ DW_TAG_typedef ] [I2OP] [line 5, size 0, align 0, offset 0] [from _I2OP]
!130 = metadata !{i32 786451, metadata !131, null, metadata !"_I2OP", i32 6, i64 192, i64 64, i32 0, i32 0, null, metadata !132, i32 0, null, null} ; [ DW_TAG_structure_type ] [_I2OP] [line 6, size 192, align 64, offset 0] [from ]
!131 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/../../Utilities/I2OP.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!132 = metadata !{metadata !133, metadata !134, metadata !135, metadata !137}
!133 = metadata !{i32 786445, metadata !131, metadata !130, metadata !"value0", i32 7, i64 32, i64 32, i64 0, i32 0, metadata !8} ; [ DW_TAG_member ] [value0] [line 7, size 32, align 32, offset 0] [from int]
!134 = metadata !{i32 786445, metadata !131, metadata !130, metadata !"value1", i32 8, i64 32, i64 32, i64 32, i32 0, metadata !8} ; [ DW_TAG_member ] [value1] [line 8, size 32, align 32, offset 32] [from int]
!135 = metadata !{i32 786445, metadata !131, metadata !130, metadata !"value2", i32 9, i64 64, i64 64, i64 64, i32 0, metadata !136} ; [ DW_TAG_member ] [value2] [line 9, size 64, align 64, offset 64] [from ]
!136 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, null} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!137 = metadata !{i32 786445, metadata !131, metadata !130, metadata !"next", i32 10, i64 64, i64 64, i64 128, i32 0, metadata !138} ; [ DW_TAG_member ] [next] [line 10, size 64, align 64, offset 128] [from ]
!138 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !139} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from I2OP]
!139 = metadata !{i32 786454, metadata !131, null, metadata !"I2OP", i32 5, i64 0, i64 0, i64 0, i32 0, metadata !130} ; [ DW_TAG_typedef ] [I2OP] [line 5, size 0, align 0, offset 0] [from _I2OP]
!140 = metadata !{i32 786445, metadata !122, metadata !121, metadata !"freeI2OP", i32 12, i64 64, i64 64, i64 192, i32 0, metadata !128} ; [ DW_TAG_member ] [freeI2OP] [line 12, size 64, align 64, offset 192] [from ]
!141 = metadata !{i32 786445, metadata !122, metadata !121, metadata !"heads", i32 13, i64 64, i64 64, i64 256, i32 0, metadata !142} ; [ DW_TAG_member ] [heads] [line 13, size 64, align 64, offset 256] [from ]
!142 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !128} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!143 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"upperhash", i32 122, i64 64, i64 64, i64 1216, i32 0, metadata !119} ; [ DW_TAG_member ] [upperhash] [line 122, size 64, align 64, offset 1216] [from ]
!144 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"manager", i32 123, i64 64, i64 64, i64 1280, i32 0, metadata !145} ; [ DW_TAG_member ] [manager] [line 123, size 64, align 64, offset 1280] [from ]
!145 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !146} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from SubMtxManager]
!146 = metadata !{i32 786454, metadata !12, null, metadata !"SubMtxManager", i32 9, i64 0, i64 0, i64 0, i32 0, metadata !147} ; [ DW_TAG_typedef ] [SubMtxManager] [line 9, size 0, align 0, offset 0] [from _SubMtxManager]
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
!158 = metadata !{i32 786445, metadata !155, metadata !154, metadata !"nlocks", i32 47, i64 32, i64 32, i64 64, i32 0, metadata !8} ; [ DW_TAG_member ] [nlocks] [line 47, size 32, align 32, offset 64] [from int]
!159 = metadata !{i32 786445, metadata !155, metadata !154, metadata !"nunlocks", i32 48, i64 32, i64 32, i64 96, i32 0, metadata !8} ; [ DW_TAG_member ] [nunlocks] [line 48, size 32, align 32, offset 96] [from int]
!160 = metadata !{i32 786445, metadata !148, metadata !147, metadata !"mode", i32 13, i64 32, i64 32, i64 128, i32 0, metadata !8} ; [ DW_TAG_member ] [mode] [line 13, size 32, align 32, offset 128] [from int]
!161 = metadata !{i32 786445, metadata !148, metadata !147, metadata !"nactive", i32 14, i64 32, i64 32, i64 160, i32 0, metadata !8} ; [ DW_TAG_member ] [nactive] [line 14, size 32, align 32, offset 160] [from int]
!162 = metadata !{i32 786445, metadata !148, metadata !147, metadata !"nbytesactive", i32 15, i64 32, i64 32, i64 192, i32 0, metadata !8} ; [ DW_TAG_member ] [nbytesactive] [line 15, size 32, align 32, offset 192] [from int]
!163 = metadata !{i32 786445, metadata !148, metadata !147, metadata !"nbytesrequested", i32 16, i64 32, i64 32, i64 224, i32 0, metadata !8} ; [ DW_TAG_member ] [nbytesrequested] [line 16, size 32, align 32, offset 224] [from int]
!164 = metadata !{i32 786445, metadata !148, metadata !147, metadata !"nbytesalloc", i32 17, i64 32, i64 32, i64 256, i32 0, metadata !8} ; [ DW_TAG_member ] [nbytesalloc] [line 17, size 32, align 32, offset 256] [from int]
!165 = metadata !{i32 786445, metadata !148, metadata !147, metadata !"nrequests", i32 18, i64 32, i64 32, i64 288, i32 0, metadata !8} ; [ DW_TAG_member ] [nrequests] [line 18, size 32, align 32, offset 288] [from int]
!166 = metadata !{i32 786445, metadata !148, metadata !147, metadata !"nreleases", i32 19, i64 32, i64 32, i64 320, i32 0, metadata !8} ; [ DW_TAG_member ] [nreleases] [line 19, size 32, align 32, offset 320] [from int]
!167 = metadata !{i32 786445, metadata !148, metadata !147, metadata !"nlocks", i32 20, i64 32, i64 32, i64 352, i32 0, metadata !8} ; [ DW_TAG_member ] [nlocks] [line 20, size 32, align 32, offset 352] [from int]
!168 = metadata !{i32 786445, metadata !148, metadata !147, metadata !"nunlocks", i32 21, i64 32, i64 32, i64 384, i32 0, metadata !8} ; [ DW_TAG_member ] [nunlocks] [line 21, size 32, align 32, offset 384] [from int]
!169 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"lock", i32 124, i64 64, i64 64, i64 1344, i32 0, metadata !152} ; [ DW_TAG_member ] [lock] [line 124, size 64, align 64, offset 1344] [from ]
!170 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"patchinfo", i32 125, i64 64, i64 64, i64 1408, i32 0, metadata !171} ; [ DW_TAG_member ] [patchinfo] [line 125, size 64, align 64, offset 1408] [from ]
!171 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !172} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from PatchAndGoInfo]
!172 = metadata !{i32 786454, metadata !12, null, metadata !"PatchAndGoInfo", i32 31, i64 0, i64 0, i64 0, i32 0, metadata !173} ; [ DW_TAG_typedef ] [PatchAndGoInfo] [line 31, size 0, align 0, offset 0] [from _PatchAndGoInfo]
!173 = metadata !{i32 786451, metadata !174, null, metadata !"_PatchAndGoInfo", i32 32, i64 320, i64 64, i32 0, i32 0, null, metadata !175, i32 0, null, null} ; [ DW_TAG_structure_type ] [_PatchAndGoInfo] [line 32, size 320, align 64, offset 0] [from ]
!174 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/../../PatchAndGoInfo/PatchAndGoInfo.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!175 = metadata !{metadata !176, metadata !177, metadata !178, metadata !179, metadata !180}
!176 = metadata !{i32 786445, metadata !174, metadata !173, metadata !"strategy", i32 33, i64 32, i64 32, i64 0, i32 0, metadata !8} ; [ DW_TAG_member ] [strategy] [line 33, size 32, align 32, offset 0] [from int]
!177 = metadata !{i32 786445, metadata !174, metadata !173, metadata !"toosmall", i32 34, i64 64, i64 64, i64 64, i32 0, metadata !101} ; [ DW_TAG_member ] [toosmall] [line 34, size 64, align 64, offset 64] [from double]
!178 = metadata !{i32 786445, metadata !174, metadata !173, metadata !"fudge", i32 35, i64 64, i64 64, i64 128, i32 0, metadata !101} ; [ DW_TAG_member ] [fudge] [line 35, size 64, align 64, offset 128] [from double]
!179 = metadata !{i32 786445, metadata !174, metadata !173, metadata !"fudgeIV", i32 36, i64 64, i64 64, i64 192, i32 0, metadata !46} ; [ DW_TAG_member ] [fudgeIV] [line 36, size 64, align 64, offset 192] [from ]
!180 = metadata !{i32 786445, metadata !174, metadata !173, metadata !"fudgeDV", i32 37, i64 64, i64 64, i64 256, i32 0, metadata !181} ; [ DW_TAG_member ] [fudgeDV] [line 37, size 64, align 64, offset 256] [from ]
!181 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !103} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from DV]
!182 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"nlocks", i32 126, i64 32, i64 32, i64 1472, i32 0, metadata !8} ; [ DW_TAG_member ] [nlocks] [line 126, size 32, align 32, offset 1472] [from int]
!183 = metadata !{metadata !184}
!184 = metadata !{i32 786689, metadata !4, metadata !"frontmtx", metadata !5, i32 16777231, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [frontmtx] [line 15]
!185 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"FrontMtx_neqns", metadata !"FrontMtx_neqns", metadata !"", i32 38, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct._FrontMtx*)* @FrontMtx_neqns, null, null, metadata !186, i32 40} ; [ DW_TAG_subprogram ] [line 38] [def] [scope 40] [FrontMtx_neqns]
!186 = metadata !{metadata !187}
!187 = metadata !{i32 786689, metadata !185, metadata !"frontmtx", metadata !5, i32 16777255, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [frontmtx] [line 39]
!188 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"FrontMtx_frontTree", metadata !"FrontMtx_frontTree", metadata !"", i32 62, metadata !189, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, %struct._Tree* (%struct._FrontMtx*)* @FrontMtx_frontTree, null, null, metadata !191, i32 64} ; [ DW_TAG_subprogram ] [line 62] [def] [scope 64] [FrontMtx_frontTree]
!189 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !190, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!190 = metadata !{metadata !25, metadata !9}
!191 = metadata !{metadata !192}
!192 = metadata !{i32 786689, metadata !188, metadata !"frontmtx", metadata !5, i32 16777279, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [frontmtx] [line 63]
!193 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"FrontMtx_initialFrontDimensions", metadata !"FrontMtx_initialFrontDimensions", metadata !"", i32 87, metadata !194, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._FrontMtx*, i32, i32*, i32*, i32*, i32*)* @FrontMtx_initialFrontDimensions, null, null, metadata !196, i32 94} ; [ DW_TAG_subprogram ] [line 87] [def] [scope 94] [FrontMtx_initialFrontDimensions]
!194 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !195, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!195 = metadata !{null, metadata !9, metadata !8, metadata !33, metadata !33, metadata !33, metadata !33}
!196 = metadata !{metadata !197, metadata !198, metadata !199, metadata !200, metadata !201, metadata !202, metadata !203, metadata !204, metadata !205, metadata !206}
!197 = metadata !{i32 786689, metadata !193, metadata !"frontmtx", metadata !5, i32 16777304, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [frontmtx] [line 88]
!198 = metadata !{i32 786689, metadata !193, metadata !"J", metadata !5, i32 33554521, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [J] [line 89]
!199 = metadata !{i32 786689, metadata !193, metadata !"pnD", metadata !5, i32 50331738, metadata !33, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [pnD] [line 90]
!200 = metadata !{i32 786689, metadata !193, metadata !"pnL", metadata !5, i32 67108955, metadata !33, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [pnL] [line 91]
!201 = metadata !{i32 786689, metadata !193, metadata !"pnU", metadata !5, i32 83886172, metadata !33, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [pnU] [line 92]
!202 = metadata !{i32 786689, metadata !193, metadata !"pnbytes", metadata !5, i32 100663389, metadata !33, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [pnbytes] [line 93]
!203 = metadata !{i32 786688, metadata !193, metadata !"nbytes", metadata !5, i32 95, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nbytes] [line 95]
!204 = metadata !{i32 786688, metadata !193, metadata !"nD", metadata !5, i32 95, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nD] [line 95]
!205 = metadata !{i32 786688, metadata !193, metadata !"nL", metadata !5, i32 95, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nL] [line 95]
!206 = metadata !{i32 786688, metadata !193, metadata !"nU", metadata !5, i32 95, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nU] [line 95]
!207 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"FrontMtx_frontSize", metadata !"FrontMtx_frontSize", metadata !"", i32 165, metadata !208, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct._FrontMtx*, i32)* @FrontMtx_frontSize, null, null, metadata !210, i32 168} ; [ DW_TAG_subprogram ] [line 165] [def] [scope 168] [FrontMtx_frontSize]
!208 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !209, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!209 = metadata !{metadata !8, metadata !9, metadata !8}
!210 = metadata !{metadata !211, metadata !212}
!211 = metadata !{i32 786689, metadata !207, metadata !"frontmtx", metadata !5, i32 16777382, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [frontmtx] [line 166]
!212 = metadata !{i32 786689, metadata !207, metadata !"J", metadata !5, i32 33554599, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [J] [line 167]
!213 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"FrontMtx_setFrontSize", metadata !"FrontMtx_setFrontSize", metadata !"", i32 191, metadata !214, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._FrontMtx*, i32, i32)* @FrontMtx_setFrontSize, null, null, metadata !216, i32 195} ; [ DW_TAG_subprogram ] [line 191] [def] [scope 195] [FrontMtx_setFrontSize]
!214 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !215, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!215 = metadata !{null, metadata !9, metadata !8, metadata !8}
!216 = metadata !{metadata !217, metadata !218, metadata !219}
!217 = metadata !{i32 786689, metadata !213, metadata !"frontmtx", metadata !5, i32 16777408, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [frontmtx] [line 192]
!218 = metadata !{i32 786689, metadata !213, metadata !"J", metadata !5, i32 33554625, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [J] [line 193]
!219 = metadata !{i32 786689, metadata !213, metadata !"size", metadata !5, i32 50331842, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [size] [line 194]
!220 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"FrontMtx_columnIndices", metadata !"FrontMtx_columnIndices", metadata !"", i32 221, metadata !221, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._FrontMtx*, i32, i32*, i32**)* @FrontMtx_columnIndices, null, null, metadata !223, i32 226} ; [ DW_TAG_subprogram ] [line 221] [def] [scope 226] [FrontMtx_columnIndices]
!221 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !222, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!222 = metadata !{null, metadata !9, metadata !8, metadata !33, metadata !70}
!223 = metadata !{metadata !224, metadata !225, metadata !226, metadata !227}
!224 = metadata !{i32 786689, metadata !220, metadata !"frontmtx", metadata !5, i32 16777438, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [frontmtx] [line 222]
!225 = metadata !{i32 786689, metadata !220, metadata !"J", metadata !5, i32 33554655, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [J] [line 223]
!226 = metadata !{i32 786689, metadata !220, metadata !"pncol", metadata !5, i32 50331872, metadata !33, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [pncol] [line 224]
!227 = metadata !{i32 786689, metadata !220, metadata !"pcolind", metadata !5, i32 67109089, metadata !70, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [pcolind] [line 225]
!228 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"FrontMtx_rowIndices", metadata !"FrontMtx_rowIndices", metadata !"", i32 256, metadata !221, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._FrontMtx*, i32, i32*, i32**)* @FrontMtx_rowIndices, null, null, metadata !229, i32 261} ; [ DW_TAG_subprogram ] [line 256] [def] [scope 261] [FrontMtx_rowIndices]
!229 = metadata !{metadata !230, metadata !231, metadata !232, metadata !233}
!230 = metadata !{i32 786689, metadata !228, metadata !"frontmtx", metadata !5, i32 16777473, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [frontmtx] [line 257]
!231 = metadata !{i32 786689, metadata !228, metadata !"J", metadata !5, i32 33554690, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [J] [line 258]
!232 = metadata !{i32 786689, metadata !228, metadata !"pnrow", metadata !5, i32 50331907, metadata !33, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [pnrow] [line 259]
!233 = metadata !{i32 786689, metadata !228, metadata !"prowind", metadata !5, i32 67109124, metadata !70, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [prowind] [line 260]
!234 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"FrontMtx_diagMtx", metadata !"FrontMtx_diagMtx", metadata !"", i32 293, metadata !235, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, %struct._SubMtx* (%struct._FrontMtx*, i32)* @FrontMtx_diagMtx, null, null, metadata !237, i32 296} ; [ DW_TAG_subprogram ] [line 293] [def] [scope 296] [FrontMtx_diagMtx]
!235 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !236, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!236 = metadata !{metadata !87, metadata !9, metadata !8}
!237 = metadata !{metadata !238, metadata !239}
!238 = metadata !{i32 786689, metadata !234, metadata !"frontmtx", metadata !5, i32 16777510, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [frontmtx] [line 294]
!239 = metadata !{i32 786689, metadata !234, metadata !"J", metadata !5, i32 33554727, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [J] [line 295]
!240 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"FrontMtx_upperMtx", metadata !"FrontMtx_upperMtx", metadata !"", i32 318, metadata !241, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, %struct._SubMtx* (%struct._FrontMtx*, i32, i32)* @FrontMtx_upperMtx, null, null, metadata !243, i32 322} ; [ DW_TAG_subprogram ] [line 318] [def] [scope 322] [FrontMtx_upperMtx]
!241 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !242, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!242 = metadata !{metadata !87, metadata !9, metadata !8, metadata !8}
!243 = metadata !{metadata !244, metadata !245, metadata !246, metadata !247, metadata !248}
!244 = metadata !{i32 786689, metadata !240, metadata !"frontmtx", metadata !5, i32 16777535, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [frontmtx] [line 319]
!245 = metadata !{i32 786689, metadata !240, metadata !"J", metadata !5, i32 33554752, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [J] [line 320]
!246 = metadata !{i32 786689, metadata !240, metadata !"K", metadata !5, i32 50331969, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [K] [line 321]
!247 = metadata !{i32 786688, metadata !240, metadata !"rc", metadata !5, i32 323, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rc] [line 323]
!248 = metadata !{i32 786688, metadata !240, metadata !"mtx", metadata !5, i32 324, metadata !87, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [mtx] [line 324]
!249 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"FrontMtx_lowerMtx", metadata !"FrontMtx_lowerMtx", metadata !"", i32 362, metadata !241, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, %struct._SubMtx* (%struct._FrontMtx*, i32, i32)* @FrontMtx_lowerMtx, null, null, metadata !250, i32 366} ; [ DW_TAG_subprogram ] [line 362] [def] [scope 366] [FrontMtx_lowerMtx]
!250 = metadata !{metadata !251, metadata !252, metadata !253, metadata !254, metadata !255}
!251 = metadata !{i32 786689, metadata !249, metadata !"frontmtx", metadata !5, i32 16777579, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [frontmtx] [line 363]
!252 = metadata !{i32 786689, metadata !249, metadata !"K", metadata !5, i32 33554796, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [K] [line 364]
!253 = metadata !{i32 786689, metadata !249, metadata !"J", metadata !5, i32 50332013, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [J] [line 365]
!254 = metadata !{i32 786688, metadata !249, metadata !"rc", metadata !5, i32 367, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rc] [line 367]
!255 = metadata !{i32 786688, metadata !249, metadata !"mtx", metadata !5, i32 368, metadata !87, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [mtx] [line 368]
!256 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"FrontMtx_lowerAdjFronts", metadata !"FrontMtx_lowerAdjFronts", metadata !"", i32 408, metadata !221, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._FrontMtx*, i32, i32*, i32**)* @FrontMtx_lowerAdjFronts, null, null, metadata !257, i32 413} ; [ DW_TAG_subprogram ] [line 408] [def] [scope 413] [FrontMtx_lowerAdjFronts]
!257 = metadata !{metadata !258, metadata !259, metadata !260, metadata !261}
!258 = metadata !{i32 786689, metadata !256, metadata !"frontmtx", metadata !5, i32 16777625, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [frontmtx] [line 409]
!259 = metadata !{i32 786689, metadata !256, metadata !"J", metadata !5, i32 33554842, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [J] [line 410]
!260 = metadata !{i32 786689, metadata !256, metadata !"pnadj", metadata !5, i32 50332059, metadata !33, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [pnadj] [line 411]
!261 = metadata !{i32 786689, metadata !256, metadata !"padj", metadata !5, i32 67109276, metadata !70, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [padj] [line 412]
!262 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"FrontMtx_upperAdjFronts", metadata !"FrontMtx_upperAdjFronts", metadata !"", i32 449, metadata !221, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._FrontMtx*, i32, i32*, i32**)* @FrontMtx_upperAdjFronts, null, null, metadata !263, i32 454} ; [ DW_TAG_subprogram ] [line 449] [def] [scope 454] [FrontMtx_upperAdjFronts]
!263 = metadata !{metadata !264, metadata !265, metadata !266, metadata !267}
!264 = metadata !{i32 786689, metadata !262, metadata !"frontmtx", metadata !5, i32 16777666, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [frontmtx] [line 450]
!265 = metadata !{i32 786689, metadata !262, metadata !"J", metadata !5, i32 33554883, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [J] [line 451]
!266 = metadata !{i32 786689, metadata !262, metadata !"pnadj", metadata !5, i32 50332100, metadata !33, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [pnadj] [line 452]
!267 = metadata !{i32 786689, metadata !262, metadata !"padj", metadata !5, i32 67109317, metadata !70, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [padj] [line 453]
!268 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"FrontMtx_nLowerBlocks", metadata !"FrontMtx_nLowerBlocks", metadata !"", i32 486, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct._FrontMtx*)* @FrontMtx_nLowerBlocks, null, null, metadata !269, i32 488} ; [ DW_TAG_subprogram ] [line 486] [def] [scope 488] [FrontMtx_nLowerBlocks]
!269 = metadata !{metadata !270, metadata !271}
!270 = metadata !{i32 786689, metadata !268, metadata !"frontmtx", metadata !5, i32 16777703, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [frontmtx] [line 487]
!271 = metadata !{i32 786688, metadata !268, metadata !"nblocks", metadata !5, i32 489, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nblocks] [line 489]
!272 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"FrontMtx_nUpperBlocks", metadata !"FrontMtx_nUpperBlocks", metadata !"", i32 521, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct._FrontMtx*)* @FrontMtx_nUpperBlocks, null, null, metadata !273, i32 523} ; [ DW_TAG_subprogram ] [line 521] [def] [scope 523] [FrontMtx_nUpperBlocks]
!273 = metadata !{metadata !274}
!274 = metadata !{i32 786689, metadata !272, metadata !"frontmtx", metadata !5, i32 16777738, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [frontmtx] [line 522]
!275 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"FrontMtx_upperBlockIVL", metadata !"FrontMtx_upperBlockIVL", metadata !"", i32 550, metadata !276, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, %struct._IVL* (%struct._FrontMtx*)* @FrontMtx_upperBlockIVL, null, null, metadata !278, i32 552} ; [ DW_TAG_subprogram ] [line 550] [def] [scope 552] [FrontMtx_upperBlockIVL]
!276 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !277, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!277 = metadata !{metadata !59, metadata !9}
!278 = metadata !{metadata !279}
!279 = metadata !{i32 786689, metadata !275, metadata !"frontmtx", metadata !5, i32 16777767, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [frontmtx] [line 551]
!280 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"FrontMtx_lowerBlockIVL", metadata !"FrontMtx_lowerBlockIVL", metadata !"", i32 579, metadata !276, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, %struct._IVL* (%struct._FrontMtx*)* @FrontMtx_lowerBlockIVL, null, null, metadata !281, i32 581} ; [ DW_TAG_subprogram ] [line 579] [def] [scope 581] [FrontMtx_lowerBlockIVL]
!281 = metadata !{metadata !282, metadata !283}
!282 = metadata !{i32 786689, metadata !280, metadata !"frontmtx", metadata !5, i32 16777796, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [frontmtx] [line 580]
!283 = metadata !{i32 786688, metadata !280, metadata !"ivl", metadata !5, i32 582, metadata !59, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ivl] [line 582]
!284 = metadata !{i32 15, i32 0, metadata !4, null}
!285 = metadata !{i32 22, i32 0, metadata !4, null}
!286 = metadata !{i32 23, i32 0, metadata !287, null}
!287 = metadata !{i32 786443, metadata !1, metadata !4, i32 22, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_instance.c]
!288 = metadata !{metadata !"any pointer", metadata !289}
!289 = metadata !{metadata !"omnipotent char", metadata !290}
!290 = metadata !{metadata !"Simple C/C++ TBAA"}
!291 = metadata !{i32 25, i32 0, metadata !287, null}
!292 = metadata !{i32 27, i32 0, metadata !4, null}
!293 = metadata !{metadata !"int", metadata !289}
!294 = metadata !{i32 39, i32 0, metadata !185, null}
!295 = metadata !{i32 46, i32 0, metadata !185, null}
!296 = metadata !{i32 47, i32 0, metadata !297, null}
!297 = metadata !{i32 786443, metadata !1, metadata !185, i32 46, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_instance.c]
!298 = metadata !{i32 49, i32 0, metadata !297, null}
!299 = metadata !{i32 51, i32 0, metadata !185, null}
!300 = metadata !{i32 63, i32 0, metadata !188, null}
!301 = metadata !{i32 70, i32 0, metadata !188, null}
!302 = metadata !{i32 71, i32 0, metadata !303, null}
!303 = metadata !{i32 786443, metadata !1, metadata !188, i32 70, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_instance.c]
!304 = metadata !{i32 73, i32 0, metadata !303, null}
!305 = metadata !{i32 75, i32 0, metadata !188, null}
!306 = metadata !{i32 88, i32 0, metadata !193, null}
!307 = metadata !{i32 89, i32 0, metadata !193, null}
!308 = metadata !{i32 90, i32 0, metadata !193, null}
!309 = metadata !{i32 91, i32 0, metadata !193, null}
!310 = metadata !{i32 92, i32 0, metadata !193, null}
!311 = metadata !{i32 93, i32 0, metadata !193, null}
!312 = metadata !{i32 101, i32 0, metadata !193, null}
!313 = metadata !{i32 103, i32 0, metadata !314, null}
!314 = metadata !{i32 786443, metadata !1, metadata !193, i32 102, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_instance.c]
!315 = metadata !{i32 108, i32 0, metadata !314, null}
!316 = metadata !{i32 110, i32 0, metadata !193, null}
!317 = metadata !{i32 147, i32 0, metadata !193, null}
!318 = metadata !{i32 112, i32 0, metadata !319, null}
!319 = metadata !{i32 786443, metadata !1, metadata !193, i32 110, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_instance.c]
!320 = metadata !{i32 117, i32 0, metadata !321, null}
!321 = metadata !{i32 786443, metadata !1, metadata !319, i32 112, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_instance.c]
!322 = metadata !{i32 120, i32 0, metadata !321, null}
!323 = metadata !{i32 139, i32 0, metadata !319, null}
!324 = metadata !{i32 142, i32 0, metadata !319, null}
!325 = metadata !{i32 145, i32 0, metadata !193, null}
!326 = metadata !{i32 146, i32 0, metadata !193, null}
!327 = metadata !{i32 149, i32 0, metadata !193, null}
!328 = metadata !{i32 150, i32 0, metadata !193, null}
!329 = metadata !{i32 151, i32 0, metadata !193, null}
!330 = metadata !{i32 152, i32 0, metadata !193, null}
!331 = metadata !{i32 154, i32 0, metadata !193, null}
!332 = metadata !{i32 166, i32 0, metadata !207, null}
!333 = metadata !{i32 167, i32 0, metadata !207, null}
!334 = metadata !{i32 174, i32 0, metadata !207, null}
!335 = metadata !{i32 176, i32 0, metadata !336, null}
!336 = metadata !{i32 786443, metadata !1, metadata !207, i32 175, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_instance.c]
!337 = metadata !{i32 178, i32 0, metadata !336, null}
!338 = metadata !{i32 180, i32 0, metadata !207, null}
!339 = metadata !{i32 192, i32 0, metadata !213, null}
!340 = metadata !{i32 193, i32 0, metadata !213, null}
!341 = metadata !{i32 194, i32 0, metadata !213, null}
!342 = metadata !{i32 201, i32 0, metadata !213, null}
!343 = metadata !{i32 203, i32 0, metadata !344, null}
!344 = metadata !{i32 786443, metadata !1, metadata !213, i32 202, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_instance.c]
!345 = metadata !{i32 205, i32 0, metadata !344, null}
!346 = metadata !{i32 207, i32 0, metadata !213, null}
!347 = metadata !{i32 209, i32 0, metadata !213, null}
!348 = metadata !{i32 222, i32 0, metadata !220, null}
!349 = metadata !{i32 223, i32 0, metadata !220, null}
!350 = metadata !{i32 224, i32 0, metadata !220, null}
!351 = metadata !{i32 225, i32 0, metadata !220, null}
!352 = metadata !{i32 232, i32 0, metadata !220, null}
!353 = metadata !{i32 234, i32 0, metadata !354, null}
!354 = metadata !{i32 786443, metadata !1, metadata !220, i32 233, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_instance.c]
!355 = metadata !{i32 237, i32 0, metadata !354, null}
!356 = metadata !{i32 239, i32 0, metadata !220, null}
!357 = metadata !{i32 240, i32 0, metadata !358, null}
!358 = metadata !{i32 786443, metadata !1, metadata !220, i32 239, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_instance.c]
!359 = metadata !{i32 241, i32 0, metadata !358, null}
!360 = metadata !{i32 242, i32 0, metadata !361, null}
!361 = metadata !{i32 786443, metadata !1, metadata !220, i32 241, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_instance.c]
!362 = metadata !{i32 244, i32 0, metadata !220, null}
!363 = metadata !{i32 257, i32 0, metadata !228, null}
!364 = metadata !{i32 258, i32 0, metadata !228, null}
!365 = metadata !{i32 259, i32 0, metadata !228, null}
!366 = metadata !{i32 260, i32 0, metadata !228, null}
!367 = metadata !{i32 267, i32 0, metadata !228, null}
!368 = metadata !{i32 269, i32 0, metadata !369, null}
!369 = metadata !{i32 786443, metadata !1, metadata !228, i32 268, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_instance.c]
!370 = metadata !{i32 272, i32 0, metadata !369, null}
!371 = metadata !{i32 274, i32 0, metadata !228, null}
!372 = metadata !{i32 275, i32 0, metadata !373, null}
!373 = metadata !{i32 786443, metadata !1, metadata !228, i32 274, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_instance.c]
!374 = metadata !{i32 276, i32 0, metadata !373, null}
!375 = metadata !{i32 276, i32 0, metadata !228, null}
!376 = metadata !{i32 278, i32 0, metadata !377, null}
!377 = metadata !{i32 786443, metadata !1, metadata !228, i32 277, i32 0, i32 14} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_instance.c]
!378 = metadata !{i32 279, i32 0, metadata !377, null}
!379 = metadata !{i32 280, i32 0, metadata !380, null}
!380 = metadata !{i32 786443, metadata !1, metadata !228, i32 279, i32 0, i32 15} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_instance.c]
!381 = metadata !{i32 281, i32 0, metadata !380, null}
!382 = metadata !{i32 282, i32 0, metadata !228, null}
!383 = metadata !{i32 294, i32 0, metadata !234, null}
!384 = metadata !{i32 295, i32 0, metadata !234, null}
!385 = metadata !{i32 302, i32 0, metadata !234, null}
!386 = metadata !{i32 303, i32 0, metadata !387, null}
!387 = metadata !{i32 786443, metadata !1, metadata !234, i32 302, i32 0, i32 16} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_instance.c]
!388 = metadata !{i32 305, i32 0, metadata !387, null}
!389 = metadata !{i32 307, i32 0, metadata !234, null}
!390 = metadata !{i32 319, i32 0, metadata !240, null}
!391 = metadata !{i32 320, i32 0, metadata !240, null}
!392 = metadata !{i32 321, i32 0, metadata !240, null}
!393 = metadata !{i32 324, i32 0, metadata !240, null}
!394 = metadata !{i32 330, i32 0, metadata !240, null}
!395 = metadata !{i32 333, i32 0, metadata !396, null}
!396 = metadata !{i32 786443, metadata !1, metadata !240, i32 332, i32 0, i32 17} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_instance.c]
!397 = metadata !{i32 335, i32 0, metadata !396, null}
!398 = metadata !{i32 337, i32 0, metadata !240, null}
!399 = metadata !{i32 338, i32 0, metadata !400, null}
!400 = metadata !{i32 786443, metadata !1, metadata !240, i32 337, i32 0, i32 18} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_instance.c]
!401 = metadata !{i32 339, i32 0, metadata !402, null}
!402 = metadata !{i32 786443, metadata !1, metadata !400, i32 338, i32 0, i32 19} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_instance.c]
!403 = metadata !{i32 340, i32 0, metadata !402, null}
!404 = metadata !{i32 340, i32 0, metadata !400, null}
!405 = metadata !{i32 341, i32 0, metadata !406, null}
!406 = metadata !{i32 786443, metadata !1, metadata !400, i32 340, i32 0, i32 20} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_instance.c]
!407 = metadata !{i32 342, i32 0, metadata !406, null}
!408 = metadata !{i32 343, i32 0, metadata !240, null}
!409 = metadata !{%struct._SubMtx* null}
!410 = metadata !{i32 344, i32 0, metadata !411, null}
!411 = metadata !{i32 786443, metadata !1, metadata !240, i32 343, i32 0, i32 21} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_instance.c]
!412 = metadata !{i32 345, i32 0, metadata !411, null}
!413 = metadata !{i32 346, i32 0, metadata !414, null}
!414 = metadata !{i32 786443, metadata !1, metadata !240, i32 345, i32 0, i32 22} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_instance.c]
!415 = metadata !{i32 347, i32 0, metadata !414, null}
!416 = metadata !{i32 351, i32 0, metadata !240, null}
!417 = metadata !{i32 348, i32 0, metadata !418, null}
!418 = metadata !{i32 786443, metadata !1, metadata !414, i32 347, i32 0, i32 23} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_instance.c]
!419 = metadata !{i32 349, i32 0, metadata !418, null}
!420 = metadata !{i32 363, i32 0, metadata !249, null}
!421 = metadata !{i32 364, i32 0, metadata !249, null}
!422 = metadata !{i32 365, i32 0, metadata !249, null}
!423 = metadata !{i32 368, i32 0, metadata !249, null}
!424 = metadata !{i32 374, i32 0, metadata !249, null}
!425 = metadata !{i32 377, i32 0, metadata !426, null}
!426 = metadata !{i32 786443, metadata !1, metadata !249, i32 376, i32 0, i32 24} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_instance.c]
!427 = metadata !{i32 379, i32 0, metadata !426, null}
!428 = metadata !{i32 381, i32 0, metadata !249, null}
!429 = metadata !{i32 382, i32 0, metadata !430, null}
!430 = metadata !{i32 786443, metadata !1, metadata !249, i32 381, i32 0, i32 25} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_instance.c]
!431 = metadata !{i32 383, i32 0, metadata !432, null}
!432 = metadata !{i32 786443, metadata !1, metadata !430, i32 382, i32 0, i32 26} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_instance.c]
!433 = metadata !{i32 384, i32 0, metadata !432, null}
!434 = metadata !{i32 384, i32 0, metadata !430, null}
!435 = metadata !{i32 385, i32 0, metadata !436, null}
!436 = metadata !{i32 786443, metadata !1, metadata !430, i32 384, i32 0, i32 27} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_instance.c]
!437 = metadata !{i32 386, i32 0, metadata !436, null}
!438 = metadata !{i32 387, i32 0, metadata !249, null}
!439 = metadata !{i32 388, i32 0, metadata !440, null}
!440 = metadata !{i32 786443, metadata !1, metadata !249, i32 387, i32 0, i32 28} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_instance.c]
!441 = metadata !{i32 389, i32 0, metadata !440, null}
!442 = metadata !{i32 390, i32 0, metadata !443, null}
!443 = metadata !{i32 786443, metadata !1, metadata !249, i32 389, i32 0, i32 29} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_instance.c]
!444 = metadata !{i32 391, i32 0, metadata !443, null}
!445 = metadata !{i32 395, i32 0, metadata !249, null}
!446 = metadata !{i32 392, i32 0, metadata !447, null}
!447 = metadata !{i32 786443, metadata !1, metadata !443, i32 391, i32 0, i32 30} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_instance.c]
!448 = metadata !{i32 393, i32 0, metadata !447, null}
!449 = metadata !{i32 409, i32 0, metadata !256, null}
!450 = metadata !{i32 410, i32 0, metadata !256, null}
!451 = metadata !{i32 411, i32 0, metadata !256, null}
!452 = metadata !{i32 412, i32 0, metadata !256, null}
!453 = metadata !{i32 419, i32 0, metadata !256, null}
!454 = metadata !{i32 422, i32 0, metadata !455, null}
!455 = metadata !{i32 786443, metadata !1, metadata !256, i32 421, i32 0, i32 31} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_instance.c]
!456 = metadata !{i32 425, i32 0, metadata !455, null}
!457 = metadata !{i32 427, i32 0, metadata !256, null}
!458 = metadata !{i32 428, i32 0, metadata !459, null}
!459 = metadata !{i32 786443, metadata !1, metadata !256, i32 427, i32 0, i32 32} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_instance.c]
!460 = metadata !{i32 430, i32 0, metadata !459, null}
!461 = metadata !{i32 431, i32 0, metadata !256, null}
!462 = metadata !{i32 432, i32 0, metadata !463, null}
!463 = metadata !{i32 786443, metadata !1, metadata !256, i32 431, i32 0, i32 33} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_instance.c]
!464 = metadata !{i32 433, i32 0, metadata !463, null}
!465 = metadata !{i32 434, i32 0, metadata !466, null}
!466 = metadata !{i32 786443, metadata !1, metadata !256, i32 433, i32 0, i32 34} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_instance.c]
!467 = metadata !{i32 436, i32 0, metadata !256, null}
!468 = metadata !{i32 450, i32 0, metadata !262, null}
!469 = metadata !{i32 451, i32 0, metadata !262, null}
!470 = metadata !{i32 452, i32 0, metadata !262, null}
!471 = metadata !{i32 453, i32 0, metadata !262, null}
!472 = metadata !{i32 460, i32 0, metadata !262, null}
!473 = metadata !{i32 463, i32 0, metadata !474, null}
!474 = metadata !{i32 786443, metadata !1, metadata !262, i32 462, i32 0, i32 35} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_instance.c]
!475 = metadata !{i32 466, i32 0, metadata !474, null}
!476 = metadata !{i32 468, i32 0, metadata !262, null}
!477 = metadata !{i32 469, i32 0, metadata !478, null}
!478 = metadata !{i32 786443, metadata !1, metadata !262, i32 468, i32 0, i32 36} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_instance.c]
!479 = metadata !{i32 471, i32 0, metadata !478, null}
!480 = metadata !{i32 473, i32 0, metadata !262, null}
!481 = metadata !{i32 475, i32 0, metadata !262, null}
!482 = metadata !{i32 487, i32 0, metadata !268, null}
!483 = metadata !{i32 495, i32 0, metadata !268, null}
!484 = metadata !{i32 496, i32 0, metadata !485, null}
!485 = metadata !{i32 786443, metadata !1, metadata !268, i32 495, i32 0, i32 37} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_instance.c]
!486 = metadata !{i32 498, i32 0, metadata !485, null}
!487 = metadata !{i32 500, i32 0, metadata !268, null}
!488 = metadata !{i32 501, i32 0, metadata !489, null}
!489 = metadata !{i32 786443, metadata !1, metadata !268, i32 500, i32 0, i32 38} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_instance.c]
!490 = metadata !{i32 503, i32 0, metadata !489, null}
!491 = metadata !{i32 505, i32 0, metadata !268, null}
!492 = metadata !{i32 506, i32 0, metadata !493, null}
!493 = metadata !{i32 786443, metadata !1, metadata !268, i32 505, i32 0, i32 39} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_instance.c]
!494 = metadata !{i32 508, i32 0, metadata !495, null}
!495 = metadata !{i32 786443, metadata !1, metadata !268, i32 507, i32 0, i32 40} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_instance.c]
!496 = metadata !{i32 510, i32 0, metadata !268, null}
!497 = metadata !{i32 522, i32 0, metadata !272, null}
!498 = metadata !{i32 529, i32 0, metadata !272, null}
!499 = metadata !{i32 530, i32 0, metadata !500, null}
!500 = metadata !{i32 786443, metadata !1, metadata !272, i32 529, i32 0, i32 41} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_instance.c]
!501 = metadata !{i32 532, i32 0, metadata !500, null}
!502 = metadata !{i32 534, i32 0, metadata !272, null}
!503 = metadata !{i32 535, i32 0, metadata !504, null}
!504 = metadata !{i32 786443, metadata !1, metadata !272, i32 534, i32 0, i32 42} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_instance.c]
!505 = metadata !{i32 537, i32 0, metadata !504, null}
!506 = metadata !{i32 539, i32 0, metadata !272, null}
!507 = metadata !{i32 551, i32 0, metadata !275, null}
!508 = metadata !{i32 558, i32 0, metadata !275, null}
!509 = metadata !{i32 559, i32 0, metadata !510, null}
!510 = metadata !{i32 786443, metadata !1, metadata !275, i32 558, i32 0, i32 43} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_instance.c]
!511 = metadata !{i32 561, i32 0, metadata !510, null}
!512 = metadata !{i32 563, i32 0, metadata !275, null}
!513 = metadata !{i32 564, i32 0, metadata !514, null}
!514 = metadata !{i32 786443, metadata !1, metadata !275, i32 563, i32 0, i32 44} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_instance.c]
!515 = metadata !{i32 566, i32 0, metadata !514, null}
!516 = metadata !{i32 568, i32 0, metadata !275, null}
!517 = metadata !{i32 580, i32 0, metadata !280, null}
!518 = metadata !{i32 588, i32 0, metadata !280, null}
!519 = metadata !{i32 589, i32 0, metadata !520, null}
!520 = metadata !{i32 786443, metadata !1, metadata !280, i32 588, i32 0, i32 45} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_instance.c]
!521 = metadata !{i32 591, i32 0, metadata !520, null}
!522 = metadata !{i32 593, i32 0, metadata !280, null}
!523 = metadata !{i32 594, i32 0, metadata !524, null}
!524 = metadata !{i32 786443, metadata !1, metadata !280, i32 593, i32 0, i32 46} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_instance.c]
!525 = metadata !{i32 596, i32 0, metadata !524, null}
!526 = metadata !{i32 598, i32 0, metadata !280, null}
!527 = metadata !{i32 599, i32 0, metadata !528, null}
!528 = metadata !{i32 786443, metadata !1, metadata !280, i32 598, i32 0, i32 47} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_instance.c]
!529 = metadata !{i32 601, i32 0, metadata !530, null}
!530 = metadata !{i32 786443, metadata !1, metadata !280, i32 600, i32 0, i32 48} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_instance.c]
!531 = metadata !{i32 603, i32 0, metadata !280, null}
