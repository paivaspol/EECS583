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
  %cmp = icmp eq %struct._FrontMtx* %frontmtx, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([49 x i8]* @.str, i64 0, i64 0), %struct._FrontMtx* null) #5
  tail call void @exit(i32 -1) #6
  unreachable

if.end:                                           ; preds = %entry
  %nfront = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 0
  %1 = load i32* %nfront, align 4, !tbaa !3
  ret i32 %1
}

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #1

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32) #2

; Function Attrs: nounwind optsize uwtable
define i32 @FrontMtx_neqns(%struct._FrontMtx* %frontmtx) #0 {
entry:
  %cmp = icmp eq %struct._FrontMtx* %frontmtx, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([48 x i8]* @.str1, i64 0, i64 0), %struct._FrontMtx* null) #5
  tail call void @exit(i32 -1) #6
  unreachable

if.end:                                           ; preds = %entry
  %neqns = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 1
  %1 = load i32* %neqns, align 4, !tbaa !3
  ret i32 %1
}

; Function Attrs: nounwind optsize uwtable
define %struct._Tree* @FrontMtx_frontTree(%struct._FrontMtx* %frontmtx) #0 {
entry:
  %cmp = icmp eq %struct._FrontMtx* %frontmtx, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([52 x i8]* @.str2, i64 0, i64 0), %struct._FrontMtx* null) #5
  tail call void @exit(i32 -1) #6
  unreachable

if.end:                                           ; preds = %entry
  %tree = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 10
  %1 = load %struct._Tree** %tree, align 8, !tbaa !0
  ret %struct._Tree* %1
}

; Function Attrs: nounwind optsize uwtable
define void @FrontMtx_initialFrontDimensions(%struct._FrontMtx* %frontmtx, i32 %J, i32* %pnD, i32* %pnL, i32* %pnU, i32* %pnbytes) #0 {
entry:
  %cmp = icmp eq %struct._FrontMtx* %frontmtx, null
  %cmp1 = icmp slt i32 %J, 0
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %if.then, label %lor.lhs.false2

lor.lhs.false2:                                   ; preds = %entry
  %nfront = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 0
  %0 = load i32* %nfront, align 4, !tbaa !3
  %cmp3 = icmp sle i32 %0, %J
  %cmp5 = icmp eq i32* %pnD, null
  %or.cond52 = or i1 %cmp3, %cmp5
  %cmp7 = icmp eq i32* %pnL, null
  %or.cond53 = or i1 %or.cond52, %cmp7
  %cmp9 = icmp eq i32* %pnU, null
  %or.cond54 = or i1 %or.cond53, %cmp9
  %cmp11 = icmp eq i32* %pnbytes, null
  %or.cond55 = or i1 %or.cond54, %cmp11
  br i1 %or.cond55, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false2, %entry
  %1 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([118 x i8]* @.str3, i64 0, i64 0), %struct._FrontMtx* %frontmtx, i32 %J, i32* %pnD, i32* %pnL, i32* %pnU, i32* %pnbytes) #5
  tail call void @exit(i32 -1) #6
  unreachable

if.end:                                           ; preds = %lor.lhs.false2
  %type = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 2
  %2 = load i32* %type, align 4, !tbaa !3
  switch i32 %2, label %sw.default18 [
    i32 1, label %sw.bb
    i32 2, label %if.end.sw.epilog20_crit_edge
  ]

if.end.sw.epilog20_crit_edge:                     ; preds = %if.end
  %symmetryflag26.phi.trans.insert = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 3
  %.pre = load i32* %symmetryflag26.phi.trans.insert, align 4, !tbaa !3
  br label %sw.epilog20

sw.bb:                                            ; preds = %if.end
  %symmetryflag = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 3
  %3 = load i32* %symmetryflag, align 4, !tbaa !3
  switch i32 %3, label %sw.default [
    i32 0, label %sw.epilog20
    i32 2, label %sw.epilog20
  ]

sw.default:                                       ; preds = %sw.bb
  %4 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([98 x i8]* @.str4, i64 0, i64 0), i64 97, i64 1, %struct._IO_FILE* %4)
  tail call void @exit(i32 -1) #6
  unreachable

sw.default18:                                     ; preds = %if.end
  %6 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %7 = tail call i64 @fwrite(i8* getelementptr inbounds ([86 x i8]* @.str5, i64 0, i64 0), i64 85, i64 1, %struct._IO_FILE* %6)
  tail call void @exit(i32 -1) #6
  unreachable

sw.epilog20:                                      ; preds = %if.end.sw.epilog20_crit_edge, %sw.bb, %sw.bb
  %8 = phi i32 [ %.pre, %if.end.sw.epilog20_crit_edge ], [ %3, %sw.bb ], [ %3, %sw.bb ]
  %idxprom = sext i32 %J to i64
  %frontETree = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 11
  %9 = load %struct._ETree** %frontETree, align 8, !tbaa !0
  %nodwghtsIV = getelementptr inbounds %struct._ETree* %9, i64 0, i32 3
  %10 = load %struct._IV** %nodwghtsIV, align 8, !tbaa !0
  %vec = getelementptr inbounds %struct._IV* %10, i64 0, i32 3
  %11 = load i32** %vec, align 8, !tbaa !0
  %arrayidx = getelementptr inbounds i32* %11, i64 %idxprom
  %12 = load i32* %arrayidx, align 4, !tbaa !3
  %bndwghtsIV = getelementptr inbounds %struct._ETree* %9, i64 0, i32 4
  %13 = load %struct._IV** %bndwghtsIV, align 8, !tbaa !0
  %vec23 = getelementptr inbounds %struct._IV* %13, i64 0, i32 3
  %14 = load i32** %vec23, align 8, !tbaa !0
  %arrayidx24 = getelementptr inbounds i32* %14, i64 %idxprom
  %15 = load i32* %arrayidx24, align 4, !tbaa !3
  %call27 = tail call i32 @Chv_nbytesNeeded(i32 %12, i32 %15, i32 %15, i32 %2, i32 %8) #5
  store i32 %12, i32* %pnD, align 4, !tbaa !3
  store i32 %15, i32* %pnL, align 4, !tbaa !3
  store i32 %15, i32* %pnU, align 4, !tbaa !3
  store i32 %call27, i32* %pnbytes, align 4, !tbaa !3
  ret void
}

; Function Attrs: optsize
declare i32 @Chv_nbytesNeeded(i32, i32, i32, i32, i32) #3

; Function Attrs: nounwind optsize uwtable
define i32 @FrontMtx_frontSize(%struct._FrontMtx* %frontmtx, i32 %J) #0 {
entry:
  %cmp = icmp eq %struct._FrontMtx* %frontmtx, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %frontsizesIV = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 12
  %0 = load %struct._IV** %frontsizesIV, align 8, !tbaa !0
  %cmp1 = icmp eq %struct._IV* %0, null
  %cmp3 = icmp slt i32 %J, 0
  %or.cond = or i1 %cmp1, %cmp3
  br i1 %or.cond, label %if.then, label %lor.lhs.false4

lor.lhs.false4:                                   ; preds = %lor.lhs.false
  %nfront = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 0
  %1 = load i32* %nfront, align 4, !tbaa !3
  %cmp5 = icmp sgt i32 %1, %J
  br i1 %cmp5, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false4, %lor.lhs.false, %entry
  %2 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([55 x i8]* @.str6, i64 0, i64 0), %struct._FrontMtx* %frontmtx, i32 %J) #5
  tail call void @exit(i32 -1) #6
  unreachable

if.end:                                           ; preds = %lor.lhs.false4
  %call7 = tail call i32 @IV_entry(%struct._IV* %0, i32 %J) #5
  ret i32 %call7
}

; Function Attrs: optsize
declare i32 @IV_entry(%struct._IV*, i32) #3

; Function Attrs: nounwind optsize uwtable
define void @FrontMtx_setFrontSize(%struct._FrontMtx* %frontmtx, i32 %J, i32 %size) #0 {
entry:
  %cmp = icmp eq %struct._FrontMtx* %frontmtx, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %frontsizesIV = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 12
  %0 = load %struct._IV** %frontsizesIV, align 8, !tbaa !0
  %cmp1 = icmp eq %struct._IV* %0, null
  %cmp3 = icmp slt i32 %J, 0
  %or.cond = or i1 %cmp1, %cmp3
  br i1 %or.cond, label %if.then, label %lor.lhs.false4

lor.lhs.false4:                                   ; preds = %lor.lhs.false
  %nfront = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 0
  %1 = load i32* %nfront, align 4, !tbaa !3
  %cmp5 = icmp sle i32 %1, %J
  %cmp7 = icmp slt i32 %size, 0
  %or.cond18 = or i1 %cmp5, %cmp7
  br i1 %or.cond18, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false4, %lor.lhs.false, %entry
  %2 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([61 x i8]* @.str7, i64 0, i64 0), %struct._FrontMtx* %frontmtx, i32 %J, i32 %size) #5
  tail call void @exit(i32 -1) #6
  unreachable

if.end:                                           ; preds = %lor.lhs.false4
  tail call void @IV_setEntry(%struct._IV* %0, i32 %J, i32 %size) #5
  ret void
}

; Function Attrs: optsize
declare void @IV_setEntry(%struct._IV*, i32, i32) #3

; Function Attrs: nounwind optsize uwtable
define void @FrontMtx_columnIndices(%struct._FrontMtx* %frontmtx, i32 %J, i32* %pncol, i32** %pcolind) #0 {
entry:
  %cmp = icmp eq %struct._FrontMtx* %frontmtx, null
  %cmp1 = icmp slt i32 %J, 0
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %if.then, label %lor.lhs.false2

lor.lhs.false2:                                   ; preds = %entry
  %nfront = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 0
  %0 = load i32* %nfront, align 4, !tbaa !3
  %cmp3 = icmp sle i32 %0, %J
  %cmp5 = icmp eq i32* %pncol, null
  %or.cond25 = or i1 %cmp3, %cmp5
  %cmp7 = icmp eq i32** %pcolind, null
  %or.cond26 = or i1 %or.cond25, %cmp7
  br i1 %or.cond26, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false2, %entry
  %1 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([65 x i8]* @.str8, i64 0, i64 0), %struct._FrontMtx* %frontmtx, i32 %J, i32* %pncol, i32** %pcolind) #5
  tail call void @exit(i32 -1) #6
  unreachable

if.end:                                           ; preds = %lor.lhs.false2
  %pivotingflag = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 5
  %2 = load i32* %pivotingflag, align 4, !tbaa !3
  %cmp8 = icmp eq i32 %2, 1
  br i1 %cmp8, label %if.else, label %if.then9

if.then9:                                         ; preds = %if.end
  %symbfacIVL = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 13
  %3 = load %struct._IVL** %symbfacIVL, align 8, !tbaa !0
  tail call void @IVL_listAndSize(%struct._IVL* %3, i32 %J, i32* %pncol, i32** %pcolind) #5
  br label %if.end10

if.else:                                          ; preds = %if.end
  %coladjIVL = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 15
  %4 = load %struct._IVL** %coladjIVL, align 8, !tbaa !0
  tail call void @IVL_listAndSize(%struct._IVL* %4, i32 %J, i32* %pncol, i32** %pcolind) #5
  br label %if.end10

if.end10:                                         ; preds = %if.else, %if.then9
  ret void
}

; Function Attrs: optsize
declare void @IVL_listAndSize(%struct._IVL*, i32, i32*, i32**) #3

; Function Attrs: nounwind optsize uwtable
define void @FrontMtx_rowIndices(%struct._FrontMtx* %frontmtx, i32 %J, i32* %pnrow, i32** %prowind) #0 {
entry:
  %cmp = icmp eq %struct._FrontMtx* %frontmtx, null
  %cmp1 = icmp slt i32 %J, 0
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %if.then, label %lor.lhs.false2

lor.lhs.false2:                                   ; preds = %entry
  %nfront = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 0
  %0 = load i32* %nfront, align 4, !tbaa !3
  %cmp3 = icmp sle i32 %0, %J
  %cmp5 = icmp eq i32* %pnrow, null
  %or.cond43 = or i1 %cmp3, %cmp5
  %cmp7 = icmp eq i32** %prowind, null
  %or.cond44 = or i1 %or.cond43, %cmp7
  br i1 %or.cond44, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false2, %entry
  %1 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([62 x i8]* @.str9, i64 0, i64 0), %struct._FrontMtx* %frontmtx, i32 %J, i32* %pnrow, i32** %prowind) #5
  tail call void @exit(i32 -1) #6
  unreachable

if.end:                                           ; preds = %lor.lhs.false2
  %pivotingflag = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 5
  %2 = load i32* %pivotingflag, align 4, !tbaa !3
  %cmp8 = icmp eq i32 %2, 1
  br i1 %cmp8, label %if.else, label %if.then9

if.then9:                                         ; preds = %if.end
  %symbfacIVL = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 13
  %3 = load %struct._IVL** %symbfacIVL, align 8, !tbaa !0
  tail call void @IVL_listAndSize(%struct._IVL* %3, i32 %J, i32* %pnrow, i32** %prowind) #5
  br label %if.end21

if.else:                                          ; preds = %if.end
  %symmetryflag = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 3
  %4 = load i32* %symmetryflag, align 4, !tbaa !3
  switch i32 %4, label %if.end21 [
    i32 0, label %if.then14
    i32 1, label %if.then14
    i32 2, label %if.then18
  ]

if.then14:                                        ; preds = %if.else, %if.else
  %coladjIVL = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 15
  %5 = load %struct._IVL** %coladjIVL, align 8, !tbaa !0
  tail call void @IVL_listAndSize(%struct._IVL* %5, i32 %J, i32* %pnrow, i32** %prowind) #5
  br label %if.end21

if.then18:                                        ; preds = %if.else
  %rowadjIVL = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 14
  %6 = load %struct._IVL** %rowadjIVL, align 8, !tbaa !0
  tail call void @IVL_listAndSize(%struct._IVL* %6, i32 %J, i32* %pnrow, i32** %prowind) #5
  br label %if.end21

if.end21:                                         ; preds = %if.else, %if.then14, %if.then18, %if.then9
  ret void
}

; Function Attrs: nounwind optsize uwtable
define %struct._SubMtx* @FrontMtx_diagMtx(%struct._FrontMtx* %frontmtx, i32 %J) #0 {
entry:
  %cmp = icmp eq %struct._FrontMtx* %frontmtx, null
  %cmp1 = icmp slt i32 %J, 0
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %if.then, label %lor.lhs.false2

lor.lhs.false2:                                   ; preds = %entry
  %nfront = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 0
  %0 = load i32* %nfront, align 4, !tbaa !3
  %cmp3 = icmp sgt i32 %0, %J
  br i1 %cmp3, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false2, %entry
  %1 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([53 x i8]* @.str10, i64 0, i64 0), %struct._FrontMtx* %frontmtx, i32 %J) #5
  tail call void @exit(i32 -1) #6
  unreachable

if.end:                                           ; preds = %lor.lhs.false2
  %idxprom = sext i32 %J to i64
  %p_mtxDJJ = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 18
  %2 = load %struct._SubMtx*** %p_mtxDJJ, align 8, !tbaa !0
  %arrayidx = getelementptr inbounds %struct._SubMtx** %2, i64 %idxprom
  %3 = load %struct._SubMtx** %arrayidx, align 8, !tbaa !0
  ret %struct._SubMtx* %3
}

; Function Attrs: nounwind optsize uwtable
define %struct._SubMtx* @FrontMtx_upperMtx(%struct._FrontMtx* %frontmtx, i32 %J, i32 %K) #0 {
entry:
  %mtx = alloca %struct._SubMtx*, align 8
  %cmp = icmp eq %struct._FrontMtx* %frontmtx, null
  %cmp1 = icmp slt i32 %J, 0
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %if.then, label %lor.lhs.false2

lor.lhs.false2:                                   ; preds = %entry
  %nfront = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 0
  %0 = load i32* %nfront, align 4, !tbaa !3
  %cmp3 = icmp sle i32 %0, %J
  %cmp5 = icmp slt i32 %K, %J
  %or.cond52 = or i1 %cmp3, %cmp5
  %cmp8 = icmp slt i32 %0, %K
  %or.cond53 = or i1 %or.cond52, %cmp8
  br i1 %or.cond53, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false2, %entry
  %1 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([57 x i8]* @.str11, i64 0, i64 0), %struct._FrontMtx* %frontmtx, i32 %J, i32 %K) #5
  call void @exit(i32 -1) #6
  unreachable

if.end:                                           ; preds = %lor.lhs.false2
  %dataMode = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 6
  %2 = load i32* %dataMode, align 4, !tbaa !3
  %cmp9 = icmp eq i32 %2, 1
  br i1 %cmp9, label %if.then10, label %if.else20

if.then10:                                        ; preds = %if.end
  %cmp12 = icmp eq i32 %0, %K
  br i1 %cmp12, label %if.then13, label %if.else

if.then13:                                        ; preds = %if.then10
  %idxprom = sext i32 %J to i64
  %p_mtxUJN = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 20
  %3 = load %struct._SubMtx*** %p_mtxUJN, align 8, !tbaa !0
  %arrayidx = getelementptr inbounds %struct._SubMtx** %3, i64 %idxprom
  %4 = load %struct._SubMtx** %arrayidx, align 8, !tbaa !0
  store %struct._SubMtx* %4, %struct._SubMtx** %mtx, align 8, !tbaa !0
  br label %if.end30

if.else:                                          ; preds = %if.then10
  %cmp14 = icmp eq i32 %K, %J
  br i1 %cmp14, label %if.then15, label %if.end30

if.then15:                                        ; preds = %if.else
  %idxprom16 = sext i32 %J to i64
  %p_mtxUJJ = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 19
  %5 = load %struct._SubMtx*** %p_mtxUJJ, align 8, !tbaa !0
  %arrayidx17 = getelementptr inbounds %struct._SubMtx** %5, i64 %idxprom16
  %6 = load %struct._SubMtx** %arrayidx17, align 8, !tbaa !0
  store %struct._SubMtx* %6, %struct._SubMtx** %mtx, align 8, !tbaa !0
  br label %if.end30

if.else20:                                        ; preds = %if.end
  %upperhash = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 24
  %7 = load %struct._I2Ohash** %upperhash, align 8, !tbaa !0
  %cmp21 = icmp eq %struct._I2Ohash* %7, null
  br i1 %cmp21, label %if.then22, label %if.else23

if.then22:                                        ; preds = %if.else20
  store %struct._SubMtx* null, %struct._SubMtx** %mtx, align 8, !tbaa !0
  br label %if.end30

if.else23:                                        ; preds = %if.else20
  %8 = bitcast %struct._SubMtx** %mtx to i8**
  %call25 = call i32 @I2Ohash_locate(%struct._I2Ohash* %7, i32 %J, i32 %K, i8** %8) #5
  %cmp26 = icmp eq i32 %call25, 0
  br i1 %cmp26, label %if.then27, label %if.else23.if.end30_crit_edge

if.else23.if.end30_crit_edge:                     ; preds = %if.else23
  %.pre = load %struct._SubMtx** %mtx, align 8, !tbaa !0
  br label %if.end30

if.then27:                                        ; preds = %if.else23
  store %struct._SubMtx* null, %struct._SubMtx** %mtx, align 8, !tbaa !0
  br label %if.end30

if.end30:                                         ; preds = %if.else23.if.end30_crit_edge, %if.then22, %if.then27, %if.then13, %if.then15, %if.else
  %9 = phi %struct._SubMtx* [ %.pre, %if.else23.if.end30_crit_edge ], [ null, %if.then22 ], [ null, %if.then27 ], [ %4, %if.then13 ], [ %6, %if.then15 ], [ undef, %if.else ]
  ret %struct._SubMtx* %9
}

; Function Attrs: optsize
declare i32 @I2Ohash_locate(%struct._I2Ohash*, i32, i32, i8**) #3

; Function Attrs: nounwind optsize uwtable
define %struct._SubMtx* @FrontMtx_lowerMtx(%struct._FrontMtx* %frontmtx, i32 %K, i32 %J) #0 {
entry:
  %mtx = alloca %struct._SubMtx*, align 8
  %cmp = icmp eq %struct._FrontMtx* %frontmtx, null
  %cmp1 = icmp slt i32 %J, 0
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %if.then, label %lor.lhs.false2

lor.lhs.false2:                                   ; preds = %entry
  %nfront = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 0
  %0 = load i32* %nfront, align 4, !tbaa !3
  %cmp3 = icmp sle i32 %0, %J
  %cmp5 = icmp slt i32 %K, %J
  %or.cond52 = or i1 %cmp3, %cmp5
  %cmp8 = icmp slt i32 %0, %K
  %or.cond53 = or i1 %or.cond52, %cmp8
  br i1 %or.cond53, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false2, %entry
  %1 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([57 x i8]* @.str12, i64 0, i64 0), %struct._FrontMtx* %frontmtx, i32 %K, i32 %J) #5
  call void @exit(i32 -1) #6
  unreachable

if.end:                                           ; preds = %lor.lhs.false2
  %dataMode = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 6
  %2 = load i32* %dataMode, align 4, !tbaa !3
  %cmp9 = icmp eq i32 %2, 1
  br i1 %cmp9, label %if.then10, label %if.else20

if.then10:                                        ; preds = %if.end
  %cmp12 = icmp eq i32 %0, %K
  br i1 %cmp12, label %if.then13, label %if.else

if.then13:                                        ; preds = %if.then10
  %idxprom = sext i32 %J to i64
  %p_mtxLNJ = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 22
  %3 = load %struct._SubMtx*** %p_mtxLNJ, align 8, !tbaa !0
  %arrayidx = getelementptr inbounds %struct._SubMtx** %3, i64 %idxprom
  %4 = load %struct._SubMtx** %arrayidx, align 8, !tbaa !0
  store %struct._SubMtx* %4, %struct._SubMtx** %mtx, align 8, !tbaa !0
  br label %if.end30

if.else:                                          ; preds = %if.then10
  %cmp14 = icmp eq i32 %K, %J
  br i1 %cmp14, label %if.then15, label %if.end30

if.then15:                                        ; preds = %if.else
  %idxprom16 = sext i32 %J to i64
  %p_mtxLJJ = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 21
  %5 = load %struct._SubMtx*** %p_mtxLJJ, align 8, !tbaa !0
  %arrayidx17 = getelementptr inbounds %struct._SubMtx** %5, i64 %idxprom16
  %6 = load %struct._SubMtx** %arrayidx17, align 8, !tbaa !0
  store %struct._SubMtx* %6, %struct._SubMtx** %mtx, align 8, !tbaa !0
  br label %if.end30

if.else20:                                        ; preds = %if.end
  %lowerhash = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 23
  %7 = load %struct._I2Ohash** %lowerhash, align 8, !tbaa !0
  %cmp21 = icmp eq %struct._I2Ohash* %7, null
  br i1 %cmp21, label %if.then22, label %if.else23

if.then22:                                        ; preds = %if.else20
  store %struct._SubMtx* null, %struct._SubMtx** %mtx, align 8, !tbaa !0
  br label %if.end30

if.else23:                                        ; preds = %if.else20
  %8 = bitcast %struct._SubMtx** %mtx to i8**
  %call25 = call i32 @I2Ohash_locate(%struct._I2Ohash* %7, i32 %K, i32 %J, i8** %8) #5
  %cmp26 = icmp eq i32 %call25, 0
  br i1 %cmp26, label %if.then27, label %if.else23.if.end30_crit_edge

if.else23.if.end30_crit_edge:                     ; preds = %if.else23
  %.pre = load %struct._SubMtx** %mtx, align 8, !tbaa !0
  br label %if.end30

if.then27:                                        ; preds = %if.else23
  store %struct._SubMtx* null, %struct._SubMtx** %mtx, align 8, !tbaa !0
  br label %if.end30

if.end30:                                         ; preds = %if.else23.if.end30_crit_edge, %if.then22, %if.then27, %if.then13, %if.then15, %if.else
  %9 = phi %struct._SubMtx* [ %.pre, %if.else23.if.end30_crit_edge ], [ null, %if.then22 ], [ null, %if.then27 ], [ %4, %if.then13 ], [ %6, %if.then15 ], [ undef, %if.else ]
  ret %struct._SubMtx* %9
}

; Function Attrs: nounwind optsize uwtable
define void @FrontMtx_lowerAdjFronts(%struct._FrontMtx* %frontmtx, i32 %J, i32* %pnadj, i32** %padj) #0 {
entry:
  %cmp = icmp eq %struct._FrontMtx* %frontmtx, null
  %cmp1 = icmp slt i32 %J, 0
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %if.then, label %lor.lhs.false2

lor.lhs.false2:                                   ; preds = %entry
  %nfront = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 0
  %0 = load i32* %nfront, align 4, !tbaa !3
  %cmp3 = icmp sle i32 %0, %J
  %cmp5 = icmp eq i32* %pnadj, null
  %or.cond31 = or i1 %cmp3, %cmp5
  %cmp7 = icmp eq i32** %padj, null
  %or.cond32 = or i1 %or.cond31, %cmp7
  br i1 %or.cond32, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false2, %entry
  %1 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([66 x i8]* @.str13, i64 0, i64 0), %struct._FrontMtx* %frontmtx, i32 %J, i32* %pnadj, i32** %padj) #5
  tail call void @exit(i32 -1) #6
  unreachable

if.end:                                           ; preds = %lor.lhs.false2
  %dataMode = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 6
  %2 = load i32* %dataMode, align 4, !tbaa !3
  %cmp8 = icmp eq i32 %2, 1
  br i1 %cmp8, label %if.then9, label %if.else

if.then9:                                         ; preds = %if.end
  %3 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %4 = tail call i64 @fwrite(i8* getelementptr inbounds ([71 x i8]* @.str14, i64 0, i64 0), i64 70, i64 1, %struct._IO_FILE* %3)
  tail call void @exit(i32 -1) #6
  unreachable

if.else:                                          ; preds = %if.end
  %symmetryflag = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 3
  %5 = load i32* %symmetryflag, align 4, !tbaa !3
  %cmp11 = icmp eq i32 %5, 2
  br i1 %cmp11, label %if.then12, label %if.else13

if.then12:                                        ; preds = %if.else
  %lowerblockIVL = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 16
  %6 = load %struct._IVL** %lowerblockIVL, align 8, !tbaa !0
  tail call void @IVL_listAndSize(%struct._IVL* %6, i32 %J, i32* %pnadj, i32** %padj) #5
  br label %if.end15

if.else13:                                        ; preds = %if.else
  %upperblockIVL = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 17
  %7 = load %struct._IVL** %upperblockIVL, align 8, !tbaa !0
  tail call void @IVL_listAndSize(%struct._IVL* %7, i32 %J, i32* %pnadj, i32** %padj) #5
  br label %if.end15

if.end15:                                         ; preds = %if.then12, %if.else13
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @FrontMtx_upperAdjFronts(%struct._FrontMtx* %frontmtx, i32 %J, i32* %pnadj, i32** %padj) #0 {
entry:
  %cmp = icmp eq %struct._FrontMtx* %frontmtx, null
  %cmp1 = icmp slt i32 %J, 0
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %if.then, label %lor.lhs.false2

lor.lhs.false2:                                   ; preds = %entry
  %nfront = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 0
  %0 = load i32* %nfront, align 4, !tbaa !3
  %cmp3 = icmp sle i32 %0, %J
  %cmp5 = icmp eq i32* %pnadj, null
  %or.cond23 = or i1 %cmp3, %cmp5
  %cmp7 = icmp eq i32** %padj, null
  %or.cond24 = or i1 %or.cond23, %cmp7
  br i1 %or.cond24, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false2, %entry
  %1 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([66 x i8]* @.str15, i64 0, i64 0), %struct._FrontMtx* %frontmtx, i32 %J, i32* %pnadj, i32** %padj) #5
  tail call void @exit(i32 -1) #6
  unreachable

if.end:                                           ; preds = %lor.lhs.false2
  %dataMode = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 6
  %2 = load i32* %dataMode, align 4, !tbaa !3
  %cmp8 = icmp eq i32 %2, 1
  br i1 %cmp8, label %if.then9, label %if.end11

if.then9:                                         ; preds = %if.end
  %3 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %4 = tail call i64 @fwrite(i8* getelementptr inbounds ([67 x i8]* @.str16, i64 0, i64 0), i64 66, i64 1, %struct._IO_FILE* %3)
  tail call void @exit(i32 -1) #6
  unreachable

if.end11:                                         ; preds = %if.end
  %upperblockIVL = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 17
  %5 = load %struct._IVL** %upperblockIVL, align 8, !tbaa !0
  tail call void @IVL_listAndSize(%struct._IVL* %5, i32 %J, i32* %pnadj, i32** %padj) #5
  ret void
}

; Function Attrs: nounwind optsize uwtable
define i32 @FrontMtx_nLowerBlocks(%struct._FrontMtx* %frontmtx) #0 {
entry:
  %cmp = icmp eq %struct._FrontMtx* %frontmtx, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([55 x i8]* @.str17, i64 0, i64 0), %struct._FrontMtx* null) #5
  tail call void @exit(i32 -1) #6
  unreachable

if.end:                                           ; preds = %entry
  %dataMode = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 6
  %1 = load i32* %dataMode, align 4, !tbaa !3
  %cmp1 = icmp eq i32 %1, 1
  br i1 %cmp1, label %if.then2, label %if.end4

if.then2:                                         ; preds = %if.end
  %2 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %3 = tail call i64 @fwrite(i8* getelementptr inbounds ([65 x i8]* @.str18, i64 0, i64 0), i64 64, i64 1, %struct._IO_FILE* %2)
  tail call void @exit(i32 -1) #6
  unreachable

if.end4:                                          ; preds = %if.end
  %symmetryflag = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 3
  %4 = load i32* %symmetryflag, align 4, !tbaa !3
  %cmp5 = icmp eq i32 %4, 2
  %lowerblockIVL = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 16
  %upperblockIVL = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 17
  %.pn.in = select i1 %cmp5, %struct._IVL** %lowerblockIVL, %struct._IVL** %upperblockIVL
  %.pn = load %struct._IVL** %.pn.in, align 8
  %nblocks.0.in = getelementptr inbounds %struct._IVL* %.pn, i64 0, i32 3
  %nblocks.0 = load i32* %nblocks.0.in, align 4
  ret i32 %nblocks.0
}

; Function Attrs: nounwind optsize uwtable
define i32 @FrontMtx_nUpperBlocks(%struct._FrontMtx* %frontmtx) #0 {
entry:
  %cmp = icmp eq %struct._FrontMtx* %frontmtx, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([55 x i8]* @.str19, i64 0, i64 0), %struct._FrontMtx* null) #5
  tail call void @exit(i32 -1) #6
  unreachable

if.end:                                           ; preds = %entry
  %dataMode = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 6
  %1 = load i32* %dataMode, align 4, !tbaa !3
  %cmp1 = icmp eq i32 %1, 1
  br i1 %cmp1, label %if.then2, label %if.end4

if.then2:                                         ; preds = %if.end
  %2 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %3 = tail call i64 @fwrite(i8* getelementptr inbounds ([65 x i8]* @.str20, i64 0, i64 0), i64 64, i64 1, %struct._IO_FILE* %2)
  tail call void @exit(i32 -1) #6
  unreachable

if.end4:                                          ; preds = %if.end
  %upperblockIVL = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 17
  %4 = load %struct._IVL** %upperblockIVL, align 8, !tbaa !0
  %tsize = getelementptr inbounds %struct._IVL* %4, i64 0, i32 3
  %5 = load i32* %tsize, align 4, !tbaa !3
  ret i32 %5
}

; Function Attrs: nounwind optsize uwtable
define %struct._IVL* @FrontMtx_upperBlockIVL(%struct._FrontMtx* %frontmtx) #0 {
entry:
  %cmp = icmp eq %struct._FrontMtx* %frontmtx, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([56 x i8]* @.str21, i64 0, i64 0), %struct._FrontMtx* null) #5
  tail call void @exit(i32 -1) #6
  unreachable

if.end:                                           ; preds = %entry
  %dataMode = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 6
  %1 = load i32* %dataMode, align 4, !tbaa !3
  %cmp1 = icmp eq i32 %1, 1
  br i1 %cmp1, label %if.then2, label %if.end4

if.then2:                                         ; preds = %if.end
  %2 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %3 = tail call i64 @fwrite(i8* getelementptr inbounds ([66 x i8]* @.str22, i64 0, i64 0), i64 65, i64 1, %struct._IO_FILE* %2)
  tail call void @exit(i32 -1) #6
  unreachable

if.end4:                                          ; preds = %if.end
  %upperblockIVL = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 17
  %4 = load %struct._IVL** %upperblockIVL, align 8, !tbaa !0
  ret %struct._IVL* %4
}

; Function Attrs: nounwind optsize uwtable
define %struct._IVL* @FrontMtx_lowerBlockIVL(%struct._FrontMtx* %frontmtx) #0 {
entry:
  %cmp = icmp eq %struct._FrontMtx* %frontmtx, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([56 x i8]* @.str23, i64 0, i64 0), %struct._FrontMtx* null) #5
  tail call void @exit(i32 -1) #6
  unreachable

if.end:                                           ; preds = %entry
  %dataMode = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 6
  %1 = load i32* %dataMode, align 4, !tbaa !3
  %cmp1 = icmp eq i32 %1, 1
  br i1 %cmp1, label %if.then2, label %if.end4

if.then2:                                         ; preds = %if.end
  %2 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %3 = tail call i64 @fwrite(i8* getelementptr inbounds ([66 x i8]* @.str24, i64 0, i64 0), i64 65, i64 1, %struct._IO_FILE* %2)
  tail call void @exit(i32 -1) #6
  unreachable

if.end4:                                          ; preds = %if.end
  %symmetryflag = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 3
  %4 = load i32* %symmetryflag, align 4, !tbaa !3
  %cmp5 = icmp eq i32 %4, 2
  %lowerblockIVL = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 16
  %upperblockIVL = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 17
  %ivl.0.in = select i1 %cmp5, %struct._IVL** %lowerblockIVL, %struct._IVL** %upperblockIVL
  %ivl.0 = load %struct._IVL** %ivl.0.in, align 8
  ret %struct._IVL* %ivl.0
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
