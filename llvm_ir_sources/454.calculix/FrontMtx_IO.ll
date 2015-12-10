; ModuleID = '../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_IO.c'
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
@.str = private unnamed_addr constant [52 x i8] c"\0A error in FrontMtx_readFromFile(%p,%s)\0A bad input\0A\00", align 1
@.str1 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str2 = private unnamed_addr constant [64 x i8] c"\0A error in FrontMtx_readFromFile(%p,%s)\0A unable to open file %s\00", align 1
@.str3 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str4 = private unnamed_addr constant [112 x i8] c"\0A error in FrontMtx_readFromFile(%p,%s)\0A bad FrontMtx file name %s,\0A must end in %s (binary) or %s (formatted)\0A\00", align 1
@.str5 = private unnamed_addr constant [61 x i8] c"\0A error in FrontMtx_readFromFormattedFile(%p,%p)\0A bad input\0A\00", align 1
@.str6 = private unnamed_addr constant [71 x i8] c"\0A error in FrontMtx_readFromFormattedFile(%p,%p)\0A %d items of %d read\0A\00", align 1
@.str7 = private unnamed_addr constant [95 x i8] c"\0A fatal error in FrontMtx_readFromFormattedFile(%p,%p)\0A error %d reading in frontETree object\0A\00", align 1
@.str8 = private unnamed_addr constant [95 x i8] c"\0A fatal error in FrontMtx_readFromFormattedFile(%p,%p)\0A error %d reading in symbfacIVL object\0A\00", align 1
@.str9 = private unnamed_addr constant [97 x i8] c"\0A fatal error in FrontMtx_readFromFormattedFile(%p,%p)\0A error %d reading in frontsizesIV object\0A\00", align 1
@.str10 = private unnamed_addr constant [94 x i8] c"\0A fatal error in FrontMtx_readFromFormattedFile(%p,%p)\0A error %d reading in rowadjIVL object\0A\00", align 1
@.str11 = private unnamed_addr constant [94 x i8] c"\0A fatal error in FrontMtx_readFromFormattedFile(%p,%p)\0A error %d reading in coladjIVL object\0A\00", align 1
@stdout = external global %struct._IO_FILE*
@.str12 = private unnamed_addr constant [20 x i8] c"\0A coladjIVL read in\00", align 1
@.str13 = private unnamed_addr constant [49 x i8] c"\0A ALLOCATE failure : bytes %zd, line %d, file %s\00", align 1
@.str14 = private unnamed_addr constant [81 x i8] c"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_IO.c\00", align 1
@.str15 = private unnamed_addr constant [47 x i8] c"\0A ALLOCATE error : bytes %zd, line %d, file %s\00", align 1
@.str16 = private unnamed_addr constant [4 x i8] c" %d\00", align 1
@.str17 = private unnamed_addr constant [96 x i8] c"\0A fatal error in FrontMtx_readFromFormattedFile(%p,%p)\0A error %d reading in diag SubMtx object\0A\00", align 1
@.str18 = private unnamed_addr constant [98 x i8] c"\0A fatal error in FrontMtx_readFromFormattedFile(%p,%p)\0A error %d reading in lowerblockIVL object\0A\00", align 1
@.str19 = private unnamed_addr constant [98 x i8] c"\0A fatal error in FrontMtx_readFromFormattedFile(%p,%p)\0A error %d reading in upperblockIVL object\0A\00", align 1
@.str20 = private unnamed_addr constant [97 x i8] c"\0A fatal error in FrontMtx_readFromFormattedFile(%p,%p)\0A error %d reading in lower SubMtx object\0A\00", align 1
@.str21 = private unnamed_addr constant [97 x i8] c"\0A fatal error in FrontMtx_readFromFormattedFile(%p,%p)\0A error %d reading in upper SubMtx object\0A\00", align 1
@.str22 = private unnamed_addr constant [58 x i8] c"\0A error in FrontMtx_readFromBinaryFile(%p,%p)\0A bad input\0A\00", align 1
@.str23 = private unnamed_addr constant [68 x i8] c"\0A error in FrontMtx_readFromBinaryFile(%p,%p)\0A %d items of %d read\0A\00", align 1
@.str24 = private unnamed_addr constant [92 x i8] c"\0A fatal error in FrontMtx_readFromBinaryFile(%p,%p)\0A error %d reading in frontETree object\0A\00", align 1
@.str25 = private unnamed_addr constant [92 x i8] c"\0A fatal error in FrontMtx_readFromBinaryFile(%p,%p)\0A error %d reading in symbfacIVL object\0A\00", align 1
@.str26 = private unnamed_addr constant [94 x i8] c"\0A fatal error in FrontMtx_readFromBinaryFile(%p,%p)\0A error %d reading in frontsizesIV object\0A\00", align 1
@.str27 = private unnamed_addr constant [91 x i8] c"\0A fatal error in FrontMtx_readFromBinaryFile(%p,%p)\0A error %d reading in rowadjIVL object\0A\00", align 1
@.str28 = private unnamed_addr constant [91 x i8] c"\0A fatal error in FrontMtx_readFromBinaryFile(%p,%p)\0A error %d reading in coladjIVL object\0A\00", align 1
@.str29 = private unnamed_addr constant [93 x i8] c"\0A fatal error in FrontMtx_readFromBinaryFile(%p,%p)\0A error %d reading in diag SubMtx object\0A\00", align 1
@.str30 = private unnamed_addr constant [95 x i8] c"\0A fatal error in FrontMtx_readFromBinaryFile(%p,%p)\0A error %d reading in lowerblockIVL object\0A\00", align 1
@.str31 = private unnamed_addr constant [95 x i8] c"\0A fatal error in FrontMtx_readFromBinaryFile(%p,%p)\0A error %d reading in upperblockIVL object\0A\00", align 1
@.str32 = private unnamed_addr constant [94 x i8] c"\0A fatal error in FrontMtx_readFromBinaryFile(%p,%p)\0A error %d reading in lower SubMtx object\0A\00", align 1
@.str33 = private unnamed_addr constant [94 x i8] c"\0A fatal error in FrontMtx_readFromBinaryFile(%p,%p)\0A error %d reading in upper SubMtx object\0A\00", align 1
@.str34 = private unnamed_addr constant [57 x i8] c"\0A fatal error in FrontMtx_writeToFile(%p,%s)\0A bad input\0A\00", align 1
@.str35 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@.str36 = private unnamed_addr constant [63 x i8] c"\0A error in FrontMtx_writeToFile(%p,%s)\0A unable to open file %s\00", align 1
@.str37 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str38 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str39 = private unnamed_addr constant [66 x i8] c"\0A fatal error in FrontMtx_writeToFormattedFile(%p,%p)\0A bad input\0A\00", align 1
@.str40 = private unnamed_addr constant [32 x i8] c"\0A %d %d %d %d %d %d %d %d %d %d\00", align 1
@.str41 = private unnamed_addr constant [91 x i8] c"\0A fatal error in FrontMtx_writeToFormattedFile(%p,%p)\0A rc = %d, return from first fprintf\0A\00", align 1
@.str42 = private unnamed_addr constant [91 x i8] c"\0A fatal error in FrontMtx_writeToFormattedFile(%p,%p)\0A error %d writing frontETree object\0A\00", align 1
@.str43 = private unnamed_addr constant [91 x i8] c"\0A fatal error in FrontMtx_writeToFormattedFile(%p,%p)\0A error %d writing symbfacIVL object\0A\00", align 1
@.str44 = private unnamed_addr constant [93 x i8] c"\0A fatal error in FrontMtx_writeToFormattedFile(%p,%p)\0A error %d writing frontsizesIV object\0A\00", align 1
@.str45 = private unnamed_addr constant [90 x i8] c"\0A fatal error in FrontMtx_writeToFormattedFile(%p,%p)\0A error %d writing rowadjIVL object\0A\00", align 1
@.str46 = private unnamed_addr constant [90 x i8] c"\0A fatal error in FrontMtx_writeToFormattedFile(%p,%p)\0A error %d writing coladjIVL object\0A\00", align 1
@.str47 = private unnamed_addr constant [5 x i8] c"\0A %d\00", align 1
@.str48 = private unnamed_addr constant [94 x i8] c"\0A fatal error in FrontMtx_writeToFormattedFile(%p,%p)\0A error %d writing lowerblockIVL object\0A\00", align 1
@.str49 = private unnamed_addr constant [94 x i8] c"\0A fatal error in FrontMtx_writeToFormattedFile(%p,%p)\0A error %d writing upperblockIVL object\0A\00", align 1
@.str50 = private unnamed_addr constant [63 x i8] c"\0A fatal error in FrontMtx_writeToBinaryFile(%p,%p)\0A bad input\0A\00", align 1
@.str51 = private unnamed_addr constant [88 x i8] c"\0A fatal error in FrontMtx_writeToBinaryFile(%p,%p)\0A rc = %d, return from first fprintf\0A\00", align 1
@.str52 = private unnamed_addr constant [88 x i8] c"\0A fatal error in FrontMtx_writeToBinaryFile(%p,%p)\0A error %d writing frontETree object\0A\00", align 1
@.str53 = private unnamed_addr constant [88 x i8] c"\0A fatal error in FrontMtx_writeToBinaryFile(%p,%p)\0A error %d writing symbfacIVL object\0A\00", align 1
@.str54 = private unnamed_addr constant [90 x i8] c"\0A fatal error in FrontMtx_writeToBinaryFile(%p,%p)\0A error %d writing frontsizesIV object\0A\00", align 1
@.str55 = private unnamed_addr constant [87 x i8] c"\0A fatal error in FrontMtx_writeToBinaryFile(%p,%p)\0A error %d writing rowadjIVL object\0A\00", align 1
@.str56 = private unnamed_addr constant [87 x i8] c"\0A fatal error in FrontMtx_writeToBinaryFile(%p,%p)\0A error %d writing coladjIVL object\0A\00", align 1
@.str57 = private unnamed_addr constant [91 x i8] c"\0A fatal error in FrontMtx_writeToBinaryFile(%p,%p)\0A error %d writing lowerblockIVL object\0A\00", align 1
@.str58 = private unnamed_addr constant [91 x i8] c"\0A fatal error in FrontMtx_writeToBinaryFile(%p,%p)\0A error %d writing upperblockIVL object\0A\00", align 1
@.str59 = private unnamed_addr constant [50 x i8] c"\0A error in FrontMtx_writeStats(%p,%p)\0A bad input\0A\00", align 1
@.str60 = private unnamed_addr constant [46 x i8] c"\0A\0A FrontMtx object at address %p\0A nfront = %d\00", align 1
@.str61 = private unnamed_addr constant [20 x i8] c"\0A symmetric entries\00", align 1
@.str62 = private unnamed_addr constant [12 x i8] c"\0A Hermitian\00", align 1
@.str63 = private unnamed_addr constant [47 x i8] c"\0A nonsymmetric structure, nonsymmetric entries\00", align 1
@.str64 = private unnamed_addr constant [20 x i8] c"\0A pivoting disabled\00", align 1
@.str65 = private unnamed_addr constant [19 x i8] c"\0A pivoting enabled\00", align 1
@.str66 = private unnamed_addr constant [15 x i8] c"\0A dense fronts\00", align 1
@.str67 = private unnamed_addr constant [17 x i8] c"\0A sparse fronts \00", align 1
@.str68 = private unnamed_addr constant [37 x i8] c"\0A one-dimensional data decomposition\00", align 1
@.str69 = private unnamed_addr constant [37 x i8] c"\0A two-dimensional data decomposition\00", align 1
@.str70 = private unnamed_addr constant [52 x i8] c"\0A %d entries in D, %d entries in L, %d entries in U\00", align 1
@.str71 = private unnamed_addr constant [62 x i8] c"\0A fatal error in FrontMtx_writeForHumanEye(%p,%p)\0A bad input\0A\00", align 1
@.str72 = private unnamed_addr constant [30 x i8] c"\0A\0A front tree FrontMtx object\00", align 1
@.str73 = private unnamed_addr constant [25 x i8] c"\0A\0A symbfacIVL IVL object\00", align 1
@.str74 = private unnamed_addr constant [26 x i8] c"\0A\0A frontsizesIV IV object\00", align 1
@.str75 = private unnamed_addr constant [21 x i8] c"\0A\0A rowids IVL object\00", align 1
@.str76 = private unnamed_addr constant [21 x i8] c"\0A\0A colids IVL object\00", align 1
@.str77 = private unnamed_addr constant [36 x i8] c"\0A\0A lower block adjacency IVL object\00", align 1
@.str78 = private unnamed_addr constant [36 x i8] c"\0A\0A upper block adjacency IVL object\00", align 1
@.str79 = private unnamed_addr constant [21 x i8] c"\0A\0A lower submatrices\00", align 1
@.str80 = private unnamed_addr constant [35 x i8] c"\0A\0A --- lower submatrix -- diagonal\00", align 1
@.str81 = private unnamed_addr constant [23 x i8] c"\0A\0A --- lower submatrix\00", align 1
@.str82 = private unnamed_addr constant [24 x i8] c"\0A\0A diagonal submatrices\00", align 1
@.str83 = private unnamed_addr constant [26 x i8] c"\0A\0A --- diagonal submatrix\00", align 1
@.str84 = private unnamed_addr constant [21 x i8] c"\0A\0A upper submatrices\00", align 1
@.str85 = private unnamed_addr constant [36 x i8] c"\0A\0A --- upper submatrix --- diagonal\00", align 1
@.str86 = private unnamed_addr constant [23 x i8] c"\0A\0A --- upper submatrix\00", align 1
@.str87 = private unnamed_addr constant [41 x i8] c"\0A\0A ### leaving FrontMtx_writeForHumanEye\00", align 1
@.str88 = private unnamed_addr constant [55 x i8] c"\0A fatal error in FrontMtx_writeForMatlab()\0A bad input\0A\00", align 1
@.str89 = private unnamed_addr constant [24 x i8] c"\0A\0A %% lower submatrices\00", align 1
@.str90 = private unnamed_addr constant [38 x i8] c"\0A\0A %% --- lower submatrix -- diagonal\00", align 1
@.str91 = private unnamed_addr constant [26 x i8] c"\0A\0A %% --- lower submatrix\00", align 1
@.str92 = private unnamed_addr constant [27 x i8] c"\0A\0A %% diagonal submatrices\00", align 1
@.str93 = private unnamed_addr constant [29 x i8] c"\0A\0A %% --- diagonal submatrix\00", align 1
@.str94 = private unnamed_addr constant [24 x i8] c"\0A\0A %% upper submatrices\00", align 1
@.str95 = private unnamed_addr constant [39 x i8] c"\0A\0A %% --- upper submatrix --- diagonal\00", align 1
@.str96 = private unnamed_addr constant [26 x i8] c"\0A\0A %% --- upper submatrix\00", align 1
@.str97 = private unnamed_addr constant [11 x i8] c".frontmtxf\00", align 1
@.str98 = private unnamed_addr constant [11 x i8] c".frontmtxb\00", align 1

; Function Attrs: nounwind optsize uwtable
define i32 @FrontMtx_readFromFile(%struct._FrontMtx* %frontmtx, i8* %fn) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._FrontMtx* %frontmtx}, i64 0, metadata !186), !dbg !376
  tail call void @llvm.dbg.value(metadata !{i8* %fn}, i64 0, metadata !187), !dbg !377
  %cmp = icmp eq %struct._FrontMtx* %frontmtx, null, !dbg !378
  %cmp1 = icmp eq i8* %fn, null, !dbg !378
  %or.cond = or i1 %cmp, %cmp1, !dbg !378
  br i1 %or.cond, label %if.then, label %if.end, !dbg !378

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !379, !tbaa !381
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([52 x i8]* @.str, i64 0, i64 0), %struct._FrontMtx* %frontmtx, i8* %fn) #7, !dbg !379
  br label %return, !dbg !384

if.end:                                           ; preds = %entry
  %call2 = tail call i64 @strlen(i8* %fn) #8, !dbg !385
  %conv = trunc i64 %call2 to i32, !dbg !385
  tail call void @llvm.dbg.value(metadata !{i32 %conv}, i64 0, metadata !243), !dbg !385
  tail call void @llvm.dbg.value(metadata !386, i64 0, metadata !245), !dbg !387
  %cmp5 = icmp sgt i32 %conv, 10, !dbg !388
  br i1 %cmp5, label %if.then7, label %if.else41, !dbg !388

if.then7:                                         ; preds = %if.end
  %sub = shl i64 %call2, 32, !dbg !389
  %sext = add i64 %sub, -42949672960, !dbg !389
  %idxprom = ashr exact i64 %sext, 32, !dbg !389
  %arrayidx = getelementptr inbounds i8* %fn, i64 %idxprom, !dbg !389
  %call8 = tail call i32 @strcmp(i8* %arrayidx, i8* getelementptr inbounds ([11 x i8]* @.str98, i64 0, i64 0)) #8, !dbg !389
  %cmp9 = icmp eq i32 %call8, 0, !dbg !389
  br i1 %cmp9, label %if.then11, label %if.else20, !dbg !389

if.then11:                                        ; preds = %if.then7
  %call12 = tail call %struct._IO_FILE* @fopen(i8* %fn, i8* getelementptr inbounds ([3 x i8]* @.str1, i64 0, i64 0)) #7, !dbg !391
  tail call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %call12}, i64 0, metadata !188), !dbg !391
  %cmp13 = icmp eq %struct._IO_FILE* %call12, null, !dbg !391
  br i1 %cmp13, label %if.then15, label %if.else, !dbg !391

if.then15:                                        ; preds = %if.then11
  %1 = load %struct._IO_FILE** @stderr, align 8, !dbg !393, !tbaa !381
  %call16 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([64 x i8]* @.str2, i64 0, i64 0), %struct._FrontMtx* %frontmtx, i8* %fn, i8* %fn) #7, !dbg !393
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !244), !dbg !395
  br label %return, !dbg !396

if.else:                                          ; preds = %if.then11
  %call17 = tail call i32 @FrontMtx_readFromBinaryFile(%struct._FrontMtx* %frontmtx, %struct._IO_FILE* %call12) #9, !dbg !397
  tail call void @llvm.dbg.value(metadata !{i32 %call17}, i64 0, metadata !244), !dbg !397
  %call18 = tail call i32 @fclose(%struct._IO_FILE* %call12) #7, !dbg !399
  br label %return

if.else20:                                        ; preds = %if.then7
  %call24 = tail call i32 @strcmp(i8* %arrayidx, i8* getelementptr inbounds ([11 x i8]* @.str97, i64 0, i64 0)) #8, !dbg !400
  %cmp25 = icmp eq i32 %call24, 0, !dbg !400
  br i1 %cmp25, label %if.then27, label %if.else37, !dbg !400

if.then27:                                        ; preds = %if.else20
  %call28 = tail call %struct._IO_FILE* @fopen(i8* %fn, i8* getelementptr inbounds ([2 x i8]* @.str3, i64 0, i64 0)) #7, !dbg !401
  tail call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %call28}, i64 0, metadata !188), !dbg !401
  %cmp29 = icmp eq %struct._IO_FILE* %call28, null, !dbg !401
  br i1 %cmp29, label %if.then31, label %if.else33, !dbg !401

if.then31:                                        ; preds = %if.then27
  %2 = load %struct._IO_FILE** @stderr, align 8, !dbg !403, !tbaa !381
  %call32 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([64 x i8]* @.str2, i64 0, i64 0), %struct._FrontMtx* %frontmtx, i8* %fn, i8* %fn) #7, !dbg !403
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !244), !dbg !405
  br label %return, !dbg !406

if.else33:                                        ; preds = %if.then27
  %call34 = tail call i32 @FrontMtx_readFromFormattedFile(%struct._FrontMtx* %frontmtx, %struct._IO_FILE* %call28) #9, !dbg !407
  tail call void @llvm.dbg.value(metadata !{i32 %call34}, i64 0, metadata !244), !dbg !407
  %call35 = tail call i32 @fclose(%struct._IO_FILE* %call28) #7, !dbg !409
  br label %return

if.else37:                                        ; preds = %if.else20
  %3 = load %struct._IO_FILE** @stderr, align 8, !dbg !410, !tbaa !381
  %call38 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([112 x i8]* @.str4, i64 0, i64 0), %struct._FrontMtx* %frontmtx, i8* %fn, i8* %fn, i8* getelementptr inbounds ([11 x i8]* @.str98, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8]* @.str97, i64 0, i64 0)) #7, !dbg !410
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !244), !dbg !412
  br label %return

if.else41:                                        ; preds = %if.end
  %4 = load %struct._IO_FILE** @stderr, align 8, !dbg !413, !tbaa !381
  %call42 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([112 x i8]* @.str4, i64 0, i64 0), %struct._FrontMtx* %frontmtx, i8* %fn, i8* %fn, i8* getelementptr inbounds ([11 x i8]* @.str98, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8]* @.str97, i64 0, i64 0)) #7, !dbg !413
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !244), !dbg !415
  br label %return

return:                                           ; preds = %if.else41, %if.else37, %if.else33, %if.then31, %if.then15, %if.else, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %if.then15 ], [ %call17, %if.else ], [ 0, %if.then31 ], [ %call34, %if.else33 ], [ 0, %if.else37 ], [ 0, %if.else41 ]
  ret i32 %retval.0, !dbg !416
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #2

; Function Attrs: nounwind optsize readonly
declare i64 @strlen(i8* nocapture) #3

; Function Attrs: nounwind optsize readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) #3

; Function Attrs: nounwind optsize
declare noalias %struct._IO_FILE* @fopen(i8* nocapture, i8* nocapture) #2

; Function Attrs: nounwind optsize uwtable
define i32 @FrontMtx_readFromBinaryFile(%struct._FrontMtx* %frontmtx, %struct._IO_FILE* %fp) #0 {
entry:
  %nmtx = alloca i32, align 4
  %itemp = alloca [10 x i32], align 16
  call void @llvm.dbg.value(metadata !{%struct._FrontMtx* %frontmtx}, i64 0, metadata !266), !dbg !417
  call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %fp}, i64 0, metadata !267), !dbg !418
  call void @llvm.dbg.declare(metadata !{i32* %nmtx}, metadata !274), !dbg !419
  %0 = bitcast [10 x i32]* %itemp to i8*, !dbg !420
  call void @llvm.lifetime.start(i64 40, i8* %0) #4, !dbg !420
  call void @llvm.dbg.declare(metadata !{[10 x i32]* %itemp}, metadata !276), !dbg !420
  %cmp = icmp eq %struct._FrontMtx* %frontmtx, null, !dbg !421
  %cmp1 = icmp eq %struct._IO_FILE* %fp, null, !dbg !421
  %or.cond = or i1 %cmp, %cmp1, !dbg !421
  br i1 %or.cond, label %if.then, label %if.end, !dbg !421

if.then:                                          ; preds = %entry
  %1 = load %struct._IO_FILE** @stderr, align 8, !dbg !422, !tbaa !381
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([58 x i8]* @.str22, i64 0, i64 0), %struct._FrontMtx* %frontmtx, %struct._IO_FILE* %fp) #7, !dbg !422
  br label %cleanup, !dbg !424

if.end:                                           ; preds = %entry
  call void @FrontMtx_clearData(%struct._FrontMtx* %frontmtx) #7, !dbg !425
  %call2 = call i64 @fread(i8* %0, i64 4, i64 10, %struct._IO_FILE* %fp) #7, !dbg !426
  %conv = trunc i64 %call2 to i32, !dbg !426
  call void @llvm.dbg.value(metadata !{i32 %conv}, i64 0, metadata !275), !dbg !426
  %cmp3 = icmp eq i32 %conv, 10, !dbg !426
  br i1 %cmp3, label %if.end7, label %if.then5, !dbg !426

if.then5:                                         ; preds = %if.end
  %2 = load %struct._IO_FILE** @stderr, align 8, !dbg !427, !tbaa !381
  %call6 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([68 x i8]* @.str23, i64 0, i64 0), %struct._FrontMtx* %frontmtx, %struct._IO_FILE* %fp, i32 %conv, i32 10) #7, !dbg !427
  br label %cleanup, !dbg !429

if.end7:                                          ; preds = %if.end
  %3 = bitcast [10 x i32]* %itemp to i64*, !dbg !430
  %4 = load i64* %3, align 16, !dbg !430
  %5 = trunc i64 %4 to i32, !dbg !430
  call void @llvm.dbg.value(metadata !{i32 %5}, i64 0, metadata !273), !dbg !430
  %nfront8 = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 0, !dbg !430
  store i32 %5, i32* %nfront8, align 4, !dbg !430, !tbaa !431
  %6 = lshr i64 %4, 32
  %7 = trunc i64 %6 to i32
  %neqns = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 1, !dbg !432
  store i32 %7, i32* %neqns, align 4, !dbg !432, !tbaa !431
  %arrayidx10 = getelementptr inbounds [10 x i32]* %itemp, i64 0, i64 2, !dbg !433
  %8 = bitcast i32* %arrayidx10 to i64*, !dbg !433
  %9 = load i64* %8, align 8, !dbg !433
  %10 = trunc i64 %9 to i32, !dbg !433
  %type = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 2, !dbg !433
  store i32 %10, i32* %type, align 4, !dbg !433, !tbaa !431
  %11 = lshr i64 %9, 32
  %12 = trunc i64 %11 to i32
  %symmetryflag = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 3, !dbg !434
  store i32 %12, i32* %symmetryflag, align 4, !dbg !434, !tbaa !431
  %arrayidx12 = getelementptr inbounds [10 x i32]* %itemp, i64 0, i64 4, !dbg !435
  %13 = bitcast i32* %arrayidx12 to i64*, !dbg !435
  %14 = load i64* %13, align 16, !dbg !435
  %15 = trunc i64 %14 to i32, !dbg !435
  %pivotingflag = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 5, !dbg !435
  store i32 %15, i32* %pivotingflag, align 4, !dbg !435, !tbaa !431
  %16 = lshr i64 %14, 32
  %17 = trunc i64 %16 to i32
  %sparsityflag = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 4, !dbg !436
  store i32 %17, i32* %sparsityflag, align 4, !dbg !436, !tbaa !431
  %arrayidx14 = getelementptr inbounds [10 x i32]* %itemp, i64 0, i64 6, !dbg !437
  %18 = bitcast i32* %arrayidx14 to i64*, !dbg !437
  %19 = load i64* %18, align 8, !dbg !437
  %20 = trunc i64 %19 to i32, !dbg !437
  %dataMode = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 6, !dbg !437
  store i32 %20, i32* %dataMode, align 4, !dbg !437, !tbaa !431
  %21 = lshr i64 %19, 32
  %22 = trunc i64 %21 to i32
  %nentD = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 7, !dbg !438
  store i32 %22, i32* %nentD, align 4, !dbg !438, !tbaa !431
  %arrayidx16 = getelementptr inbounds [10 x i32]* %itemp, i64 0, i64 8, !dbg !439
  %23 = bitcast i32* %arrayidx16 to i64*, !dbg !439
  %24 = load i64* %23, align 16, !dbg !439
  %25 = trunc i64 %24 to i32, !dbg !439
  %nentL = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 8, !dbg !439
  store i32 %25, i32* %nentL, align 4, !dbg !439, !tbaa !431
  %26 = lshr i64 %24, 32
  %27 = trunc i64 %26 to i32
  %nentU = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 9, !dbg !440
  store i32 %27, i32* %nentU, align 4, !dbg !440, !tbaa !431
  %call18 = call %struct._ETree* @ETree_new() #7, !dbg !441
  %frontETree = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 11, !dbg !441
  store %struct._ETree* %call18, %struct._ETree** %frontETree, align 8, !dbg !441, !tbaa !381
  %call20 = call i32 @ETree_readFromBinaryFile(%struct._ETree* %call18, %struct._IO_FILE* %fp) #7, !dbg !442
  call void @llvm.dbg.value(metadata !{i32 %call20}, i64 0, metadata !275), !dbg !442
  %cmp21 = icmp eq i32 %call20, 1, !dbg !443
  br i1 %cmp21, label %if.end25, label %if.then23, !dbg !443

if.then23:                                        ; preds = %if.end7
  %28 = load %struct._IO_FILE** @stderr, align 8, !dbg !444, !tbaa !381
  %call24 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %28, i8* getelementptr inbounds ([92 x i8]* @.str24, i64 0, i64 0), %struct._FrontMtx* %frontmtx, %struct._IO_FILE* %fp, i32 %call20) #7, !dbg !444
  br label %cleanup, !dbg !446

if.end25:                                         ; preds = %if.end7
  %29 = load %struct._ETree** %frontETree, align 8, !dbg !447, !tbaa !381
  %tree = getelementptr inbounds %struct._ETree* %29, i64 0, i32 2, !dbg !447
  %30 = load %struct._Tree** %tree, align 8, !dbg !447, !tbaa !381
  %tree27 = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 10, !dbg !447
  store %struct._Tree* %30, %struct._Tree** %tree27, align 8, !dbg !447, !tbaa !381
  %call28 = call %struct._IVL* @IVL_new() #7, !dbg !448
  %symbfacIVL = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 13, !dbg !448
  store %struct._IVL* %call28, %struct._IVL** %symbfacIVL, align 8, !dbg !448, !tbaa !381
  %type30 = getelementptr inbounds %struct._IVL* %call28, i64 0, i32 0, !dbg !449
  store i32 1, i32* %type30, align 4, !dbg !449, !tbaa !431
  %call32 = call i32 @IVL_readFromBinaryFile(%struct._IVL* %call28, %struct._IO_FILE* %fp) #7, !dbg !450
  call void @llvm.dbg.value(metadata !{i32 %call32}, i64 0, metadata !275), !dbg !450
  %cmp33 = icmp eq i32 %call32, 1, !dbg !451
  br i1 %cmp33, label %if.end37, label %if.then35, !dbg !451

if.then35:                                        ; preds = %if.end25
  %31 = load %struct._IO_FILE** @stderr, align 8, !dbg !452, !tbaa !381
  %call36 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %31, i8* getelementptr inbounds ([92 x i8]* @.str25, i64 0, i64 0), %struct._FrontMtx* %frontmtx, %struct._IO_FILE* %fp, i32 %call32) #7, !dbg !452
  br label %cleanup, !dbg !454

if.end37:                                         ; preds = %if.end25
  %call38 = call %struct._IV* @IV_new() #7, !dbg !455
  %frontsizesIV = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 12, !dbg !455
  store %struct._IV* %call38, %struct._IV** %frontsizesIV, align 8, !dbg !455, !tbaa !381
  %32 = load i32* %pivotingflag, align 4, !dbg !456, !tbaa !431
  %cmp40 = icmp eq i32 %32, 1, !dbg !456
  br i1 %cmp40, label %if.then42, label %if.else, !dbg !456

if.then42:                                        ; preds = %if.end37
  %call44 = call i32 @IV_readFromBinaryFile(%struct._IV* %call38, %struct._IO_FILE* %fp) #7, !dbg !457
  call void @llvm.dbg.value(metadata !{i32 %call44}, i64 0, metadata !275), !dbg !457
  %cmp45 = icmp eq i32 %call44, 1, !dbg !459
  br i1 %cmp45, label %if.end56, label %if.then47, !dbg !459

if.then47:                                        ; preds = %if.then42
  %33 = load %struct._IO_FILE** @stderr, align 8, !dbg !460, !tbaa !381
  %call48 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %33, i8* getelementptr inbounds ([94 x i8]* @.str26, i64 0, i64 0), %struct._FrontMtx* %frontmtx, %struct._IO_FILE* %fp, i32 %call44) #7, !dbg !460
  br label %cleanup, !dbg !462

if.else:                                          ; preds = %if.end37
  %34 = load i32* %nfront8, align 4, !dbg !463, !tbaa !431
  call void @IV_init(%struct._IV* %call38, i32 %34, i32* null) #7, !dbg !463
  %35 = load %struct._IV** %frontsizesIV, align 8, !dbg !465, !tbaa !381
  %call53 = call i32* @IV_entries(%struct._IV* %35) #7, !dbg !465
  %36 = load %struct._ETree** %frontETree, align 8, !dbg !466, !tbaa !381
  %call55 = call i32* @ETree_nodwghts(%struct._ETree* %36) #7, !dbg !466
  call void @IVcopy(i32 %5, i32* %call53, i32* %call55) #7, !dbg !466
  br label %if.end56

if.end56:                                         ; preds = %if.then42, %if.else
  %37 = load i32* %pivotingflag, align 4, !dbg !467, !tbaa !431
  %cmp58 = icmp eq i32 %37, 1, !dbg !467
  br i1 %cmp58, label %if.then60, label %if.end86, !dbg !467

if.then60:                                        ; preds = %if.end56
  %38 = load i32* %symmetryflag, align 4, !dbg !468, !tbaa !431
  %cmp62 = icmp eq i32 %38, 2, !dbg !468
  br i1 %cmp62, label %if.then64, label %if.end75, !dbg !468

if.then64:                                        ; preds = %if.then60
  %call65 = call %struct._IVL* @IVL_new() #7, !dbg !470
  %rowadjIVL = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 14, !dbg !470
  store %struct._IVL* %call65, %struct._IVL** %rowadjIVL, align 8, !dbg !470, !tbaa !381
  %type67 = getelementptr inbounds %struct._IVL* %call65, i64 0, i32 0, !dbg !472
  store i32 1, i32* %type67, align 4, !dbg !472, !tbaa !431
  %call69 = call i32 @IVL_readFromBinaryFile(%struct._IVL* %call65, %struct._IO_FILE* %fp) #7, !dbg !473
  call void @llvm.dbg.value(metadata !{i32 %call69}, i64 0, metadata !275), !dbg !473
  %cmp70 = icmp eq i32 %call69, 1, !dbg !474
  br i1 %cmp70, label %if.end75, label %if.then72, !dbg !474

if.then72:                                        ; preds = %if.then64
  %39 = load %struct._IO_FILE** @stderr, align 8, !dbg !475, !tbaa !381
  %call73 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %39, i8* getelementptr inbounds ([91 x i8]* @.str27, i64 0, i64 0), %struct._FrontMtx* %frontmtx, %struct._IO_FILE* %fp, i32 %call69) #7, !dbg !475
  br label %cleanup, !dbg !477

if.end75:                                         ; preds = %if.then64, %if.then60
  %call76 = call %struct._IVL* @IVL_new() #7, !dbg !478
  %coladjIVL = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 15, !dbg !478
  store %struct._IVL* %call76, %struct._IVL** %coladjIVL, align 8, !dbg !478, !tbaa !381
  %type78 = getelementptr inbounds %struct._IVL* %call76, i64 0, i32 0, !dbg !479
  store i32 1, i32* %type78, align 4, !dbg !479, !tbaa !431
  %call80 = call i32 @IVL_readFromBinaryFile(%struct._IVL* %call76, %struct._IO_FILE* %fp) #7, !dbg !480
  call void @llvm.dbg.value(metadata !{i32 %call80}, i64 0, metadata !275), !dbg !480
  %cmp81 = icmp eq i32 %call80, 1, !dbg !481
  br i1 %cmp81, label %if.end86, label %if.then83, !dbg !481

if.then83:                                        ; preds = %if.end75
  %40 = load %struct._IO_FILE** @stderr, align 8, !dbg !482, !tbaa !381
  %call84 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %40, i8* getelementptr inbounds ([91 x i8]* @.str28, i64 0, i64 0), %struct._FrontMtx* %frontmtx, %struct._IO_FILE* %fp, i32 %call80) #7, !dbg !482
  br label %cleanup, !dbg !484

if.end86:                                         ; preds = %if.end75, %if.end56
  %41 = load i32* %dataMode, align 4, !dbg !485, !tbaa !431
  %cmp88 = icmp eq i32 %41, 1, !dbg !485
  br i1 %cmp88, label %if.then90, label %if.else371, !dbg !485

if.then90:                                        ; preds = %if.end86
  %cmp91 = icmp sgt i32 %5, 0, !dbg !486
  br i1 %cmp91, label %if.then93, label %if.else104, !dbg !486

if.then93:                                        ; preds = %if.then90
  %sext827 = shl i64 %4, 32, !dbg !488
  %mul = ashr exact i64 %sext827, 29, !dbg !488
  %call95 = call noalias i8* @malloc(i64 %mul) #7, !dbg !488
  %42 = bitcast i8* %call95 to %struct._SubMtx**, !dbg !488
  %p_mtxDJJ = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 18, !dbg !488
  store %struct._SubMtx** %42, %struct._SubMtx*** %p_mtxDJJ, align 8, !dbg !488, !tbaa !381
  %cmp96 = icmp eq i8* %call95, null, !dbg !488
  br i1 %cmp96, label %if.then98, label %if.then117, !dbg !488

if.then98:                                        ; preds = %if.then93
  %43 = load %struct._IO_FILE** @stderr, align 8, !dbg !490, !tbaa !381
  %call101 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %43, i8* getelementptr inbounds ([49 x i8]* @.str13, i64 0, i64 0), i64 %mul, i32 640, i8* getelementptr inbounds ([81 x i8]* @.str14, i64 0, i64 0)) #7, !dbg !490
  call void @exit(i32 -1) #10, !dbg !490
  unreachable, !dbg !490

if.else104:                                       ; preds = %if.then90
  %cmp105 = icmp eq i32 %5, 0, !dbg !486
  br i1 %cmp105, label %if.then157, label %if.else109, !dbg !486

if.else109:                                       ; preds = %if.else104
  %44 = load %struct._IO_FILE** @stderr, align 8, !dbg !492, !tbaa !381
  %sext824 = shl i64 %4, 32, !dbg !492
  %mul111 = ashr exact i64 %sext824, 29, !dbg !492
  %call112 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %44, i8* getelementptr inbounds ([47 x i8]* @.str15, i64 0, i64 0), i64 %mul111, i32 640, i8* getelementptr inbounds ([81 x i8]* @.str14, i64 0, i64 0)) #7, !dbg !492
  call void @exit(i32 -1) #10, !dbg !492
  unreachable, !dbg !492

if.then117:                                       ; preds = %if.then93
  %call120 = call noalias i8* @malloc(i64 %mul) #7, !dbg !494
  %45 = bitcast i8* %call120 to %struct._SubMtx**, !dbg !494
  %p_mtxUJJ = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 19, !dbg !494
  store %struct._SubMtx** %45, %struct._SubMtx*** %p_mtxUJJ, align 8, !dbg !494, !tbaa !381
  %cmp121 = icmp eq i8* %call120, null, !dbg !494
  br i1 %cmp121, label %if.then123, label %if.then142, !dbg !494

if.then123:                                       ; preds = %if.then117
  %46 = load %struct._IO_FILE** @stderr, align 8, !dbg !496, !tbaa !381
  %call126 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %46, i8* getelementptr inbounds ([49 x i8]* @.str13, i64 0, i64 0), i64 %mul, i32 641, i8* getelementptr inbounds ([81 x i8]* @.str14, i64 0, i64 0)) #7, !dbg !496
  call void @exit(i32 -1) #10, !dbg !496
  unreachable, !dbg !496

if.then142:                                       ; preds = %if.then117
  %call145 = call noalias i8* @malloc(i64 %mul) #7, !dbg !498
  %47 = bitcast i8* %call145 to %struct._SubMtx**, !dbg !498
  %p_mtxUJN = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 20, !dbg !498
  store %struct._SubMtx** %47, %struct._SubMtx*** %p_mtxUJN, align 8, !dbg !498, !tbaa !381
  %cmp146 = icmp eq i8* %call145, null, !dbg !498
  br i1 %cmp146, label %if.then148, label %for.cond.preheader, !dbg !498

if.then148:                                       ; preds = %if.then142
  %48 = load %struct._IO_FILE** @stderr, align 8, !dbg !500, !tbaa !381
  %call151 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %48, i8* getelementptr inbounds ([49 x i8]* @.str13, i64 0, i64 0), i64 %mul, i32 642, i8* getelementptr inbounds ([81 x i8]* @.str14, i64 0, i64 0)) #7, !dbg !500
  call void @exit(i32 -1) #10, !dbg !500
  unreachable, !dbg !500

if.then157:                                       ; preds = %if.else104
  %p_mtxDJJ108 = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 18, !dbg !502
  %49 = bitcast %struct._SubMtx*** %p_mtxDJJ108 to i8*
  call void @llvm.memset.p0i8.i64(i8* %49, i8 0, i64 24, i32 8, i1 false), !dbg !504
  br label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.then142, %if.then157
  %50 = phi %struct._SubMtx** [ %42, %if.then142 ], [ null, %if.then157 ]
  br i1 %cmp91, label %for.body.lr.ph, label %for.end, !dbg !506

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %p_mtxDJJ167 = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 18, !dbg !508
  %p_mtxUJJ170 = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 19, !dbg !510
  %p_mtxUJN173 = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 20, !dbg !511
  br label %for.body, !dbg !506

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %51 = phi %struct._SubMtx** [ %50, %for.body.lr.ph ], [ %.pre821, %for.body.for.body_crit_edge ]
  %indvars.iv810 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next811, %for.body.for.body_crit_edge ]
  %arrayidx168 = getelementptr inbounds %struct._SubMtx** %51, i64 %indvars.iv810, !dbg !508
  store %struct._SubMtx* null, %struct._SubMtx** %arrayidx168, align 8, !dbg !508, !tbaa !381
  %52 = load %struct._SubMtx*** %p_mtxUJJ170, align 8, !dbg !510, !tbaa !381
  %arrayidx171 = getelementptr inbounds %struct._SubMtx** %52, i64 %indvars.iv810, !dbg !510
  store %struct._SubMtx* null, %struct._SubMtx** %arrayidx171, align 8, !dbg !510, !tbaa !381
  %53 = load %struct._SubMtx*** %p_mtxUJN173, align 8, !dbg !511, !tbaa !381
  %arrayidx174 = getelementptr inbounds %struct._SubMtx** %53, i64 %indvars.iv810, !dbg !511
  store %struct._SubMtx* null, %struct._SubMtx** %arrayidx174, align 8, !dbg !511, !tbaa !381
  %indvars.iv.next811 = add i64 %indvars.iv810, 1, !dbg !506
  %lftr.wideiv812 = trunc i64 %indvars.iv.next811 to i32, !dbg !506
  %exitcond813 = icmp eq i32 %lftr.wideiv812, %5, !dbg !506
  br i1 %exitcond813, label %for.end, label %for.body.for.body_crit_edge, !dbg !506

for.body.for.body_crit_edge:                      ; preds = %for.body
  %.pre821 = load %struct._SubMtx*** %p_mtxDJJ167, align 8, !dbg !508, !tbaa !381
  br label %for.body, !dbg !506

for.end:                                          ; preds = %for.body, %for.cond.preheader
  %54 = load i32* %symmetryflag, align 4, !dbg !512, !tbaa !431
  %cmp176 = icmp eq i32 %54, 2, !dbg !512
  br i1 %cmp176, label %if.then178, label %if.end296, !dbg !512

if.then178:                                       ; preds = %for.end
  br i1 %cmp91, label %if.then181, label %if.else193, !dbg !513

if.then181:                                       ; preds = %if.then178
  %sext826 = shl i64 %4, 32, !dbg !515
  %mul183 = ashr exact i64 %sext826, 29, !dbg !515
  %call184 = call noalias i8* @malloc(i64 %mul183) #7, !dbg !515
  %55 = bitcast i8* %call184 to %struct._SubMtx**, !dbg !515
  %p_mtxLJJ = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 21, !dbg !515
  store %struct._SubMtx** %55, %struct._SubMtx*** %p_mtxLJJ, align 8, !dbg !515, !tbaa !381
  %cmp185 = icmp eq i8* %call184, null, !dbg !515
  br i1 %cmp185, label %if.then187, label %if.then206, !dbg !515

if.then187:                                       ; preds = %if.then181
  %56 = load %struct._IO_FILE** @stderr, align 8, !dbg !517, !tbaa !381
  %call190 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %56, i8* getelementptr inbounds ([49 x i8]* @.str13, i64 0, i64 0), i64 %mul183, i32 649, i8* getelementptr inbounds ([81 x i8]* @.str14, i64 0, i64 0)) #7, !dbg !517
  call void @exit(i32 -1) #10, !dbg !517
  unreachable, !dbg !517

if.else193:                                       ; preds = %if.then178
  %cmp194 = icmp eq i32 %5, 0, !dbg !513
  br i1 %cmp194, label %if.then221, label %if.else198, !dbg !513

if.else198:                                       ; preds = %if.else193
  %57 = load %struct._IO_FILE** @stderr, align 8, !dbg !519, !tbaa !381
  %sext825 = shl i64 %4, 32, !dbg !519
  %mul200 = ashr exact i64 %sext825, 29, !dbg !519
  %call201 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %57, i8* getelementptr inbounds ([47 x i8]* @.str15, i64 0, i64 0), i64 %mul200, i32 649, i8* getelementptr inbounds ([81 x i8]* @.str14, i64 0, i64 0)) #7, !dbg !519
  call void @exit(i32 -1) #10, !dbg !519
  unreachable, !dbg !519

if.then206:                                       ; preds = %if.then181
  %call209 = call noalias i8* @malloc(i64 %mul183) #7, !dbg !521
  %58 = bitcast i8* %call209 to %struct._SubMtx**, !dbg !521
  %p_mtxLNJ = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 22, !dbg !521
  store %struct._SubMtx** %58, %struct._SubMtx*** %p_mtxLNJ, align 8, !dbg !521, !tbaa !381
  %cmp210 = icmp eq i8* %call209, null, !dbg !521
  br i1 %cmp210, label %if.then212, label %for.cond229.preheader, !dbg !521

if.then212:                                       ; preds = %if.then206
  %59 = load %struct._IO_FILE** @stderr, align 8, !dbg !523, !tbaa !381
  %call215 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %59, i8* getelementptr inbounds ([49 x i8]* @.str13, i64 0, i64 0), i64 %mul183, i32 650, i8* getelementptr inbounds ([81 x i8]* @.str14, i64 0, i64 0)) #7, !dbg !523
  call void @exit(i32 -1) #10, !dbg !523
  unreachable, !dbg !523

if.then221:                                       ; preds = %if.else193
  %p_mtxLJJ197 = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 21, !dbg !525
  %60 = bitcast %struct._SubMtx*** %p_mtxLJJ197 to i8*
  call void @llvm.memset.p0i8.i64(i8* %60, i8 0, i64 16, i32 8, i1 false), !dbg !527
  br label %for.cond229.preheader

for.cond229.preheader:                            ; preds = %if.then206, %if.then221
  %61 = phi %struct._SubMtx** [ %55, %if.then206 ], [ null, %if.then221 ]
  br i1 %cmp91, label %for.body232.lr.ph, label %if.then246, !dbg !529

for.body232.lr.ph:                                ; preds = %for.cond229.preheader
  %p_mtxLJJ234 = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 21, !dbg !531
  %p_mtxLNJ237 = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 22, !dbg !533
  br label %for.body232, !dbg !529

for.body232:                                      ; preds = %for.body232.for.body232_crit_edge, %for.body232.lr.ph
  %62 = phi %struct._SubMtx** [ %61, %for.body232.lr.ph ], [ %.pre, %for.body232.for.body232_crit_edge ]
  %indvars.iv = phi i64 [ 0, %for.body232.lr.ph ], [ %indvars.iv.next, %for.body232.for.body232_crit_edge ]
  %arrayidx235 = getelementptr inbounds %struct._SubMtx** %62, i64 %indvars.iv, !dbg !531
  store %struct._SubMtx* null, %struct._SubMtx** %arrayidx235, align 8, !dbg !531, !tbaa !381
  %63 = load %struct._SubMtx*** %p_mtxLNJ237, align 8, !dbg !533, !tbaa !381
  %arrayidx238 = getelementptr inbounds %struct._SubMtx** %63, i64 %indvars.iv, !dbg !533
  store %struct._SubMtx* null, %struct._SubMtx** %arrayidx238, align 8, !dbg !533, !tbaa !381
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !529
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !529
  %exitcond = icmp eq i32 %lftr.wideiv, %5, !dbg !529
  br i1 %exitcond, label %if.then246, label %for.body232.for.body232_crit_edge, !dbg !529

for.body232.for.body232_crit_edge:                ; preds = %for.body232
  %.pre = load %struct._SubMtx*** %p_mtxLJJ234, align 8, !dbg !531, !tbaa !381
  br label %for.body232, !dbg !529

if.then246:                                       ; preds = %for.cond229.preheader, %for.body232
  %64 = bitcast i32* %nmtx to i8*, !dbg !534
  %call247 = call i64 @fread(i8* %64, i64 4, i64 1, %struct._IO_FILE* %fp) #7, !dbg !534
  %conv248 = trunc i64 %call247 to i32, !dbg !534
  call void @llvm.dbg.value(metadata !{i32 %conv248}, i64 0, metadata !275), !dbg !534
  %cmp249 = icmp eq i32 %conv248, 1, !dbg !534
  br i1 %cmp249, label %for.cond254.preheader, label %if.then251, !dbg !534

for.cond254.preheader:                            ; preds = %if.then246
  call void @llvm.dbg.value(metadata !{i32* %nmtx}, i64 0, metadata !274), !dbg !536
  %65 = load i32* %nmtx, align 4, !dbg !536, !tbaa !431
  %cmp255790 = icmp sgt i32 %65, 0, !dbg !536
  br i1 %cmp255790, label %for.body257.lr.ph, label %for.end270, !dbg !536

for.body257.lr.ph:                                ; preds = %for.cond254.preheader
  %p_mtxLJJ266 = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 21, !dbg !538
  call void @llvm.dbg.value(metadata !{i32* %nmtx}, i64 0, metadata !274), !dbg !536
  br label %for.body257, !dbg !536

if.then251:                                       ; preds = %if.then246
  %66 = load %struct._IO_FILE** @stderr, align 8, !dbg !540, !tbaa !381
  %call252 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %66, i8* getelementptr inbounds ([68 x i8]* @.str23, i64 0, i64 0), %struct._FrontMtx* %frontmtx, %struct._IO_FILE* %fp, i32 %conv248, i32 1) #7, !dbg !540
  br label %cleanup, !dbg !542

for.body257:                                      ; preds = %for.body257.lr.ph, %if.end264
  %imtx.0791 = phi i32 [ 0, %for.body257.lr.ph ], [ %inc269, %if.end264 ]
  %call258 = call %struct._SubMtx* @SubMtx_new() #7, !dbg !543
  call void @llvm.dbg.value(metadata !{%struct._SubMtx* %call258}, i64 0, metadata !268), !dbg !543
  %call259 = call i32 @SubMtx_readFromBinaryFile(%struct._SubMtx* %call258, %struct._IO_FILE* %fp) #7, !dbg !544
  call void @llvm.dbg.value(metadata !{i32 %call259}, i64 0, metadata !275), !dbg !544
  %cmp260 = icmp eq i32 %call259, 1, !dbg !545
  br i1 %cmp260, label %if.end264, label %if.then262, !dbg !545

if.then262:                                       ; preds = %for.body257
  %67 = load %struct._IO_FILE** @stderr, align 8, !dbg !546, !tbaa !381
  %call263 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %67, i8* getelementptr inbounds ([93 x i8]* @.str29, i64 0, i64 0), %struct._FrontMtx* %frontmtx, %struct._IO_FILE* %fp, i32 %call259) #7, !dbg !546
  br label %cleanup, !dbg !548

if.end264:                                        ; preds = %for.body257
  %colid = getelementptr inbounds %struct._SubMtx* %call258, i64 0, i32 3, !dbg !538
  %68 = load i32* %colid, align 4, !dbg !538, !tbaa !431
  %idxprom265 = sext i32 %68 to i64, !dbg !538
  %69 = load %struct._SubMtx*** %p_mtxLJJ266, align 8, !dbg !538, !tbaa !381
  %arrayidx267 = getelementptr inbounds %struct._SubMtx** %69, i64 %idxprom265, !dbg !538
  store %struct._SubMtx* %call258, %struct._SubMtx** %arrayidx267, align 8, !dbg !538, !tbaa !381
  %inc269 = add nsw i32 %imtx.0791, 1, !dbg !536
  call void @llvm.dbg.value(metadata !{i32 %inc269}, i64 0, metadata !269), !dbg !536
  call void @llvm.dbg.value(metadata !{i32* %nmtx}, i64 0, metadata !274), !dbg !536
  %cmp255 = icmp slt i32 %inc269, %65, !dbg !536
  br i1 %cmp255, label %for.body257, label %for.end270, !dbg !536

for.end270:                                       ; preds = %if.end264, %for.cond254.preheader
  %call271 = call i64 @fread(i8* %64, i64 4, i64 1, %struct._IO_FILE* %fp) #7, !dbg !549
  %conv272 = trunc i64 %call271 to i32, !dbg !549
  call void @llvm.dbg.value(metadata !{i32 %conv272}, i64 0, metadata !275), !dbg !549
  %cmp273 = icmp eq i32 %conv272, 1, !dbg !549
  br i1 %cmp273, label %for.cond278.preheader, label %if.then275, !dbg !549

for.cond278.preheader:                            ; preds = %for.end270
  call void @llvm.dbg.value(metadata !{i32* %nmtx}, i64 0, metadata !274), !dbg !550
  %70 = load i32* %nmtx, align 4, !dbg !550, !tbaa !431
  %cmp279788 = icmp sgt i32 %70, 0, !dbg !550
  br i1 %cmp279788, label %for.body281.lr.ph, label %if.end296, !dbg !550

for.body281.lr.ph:                                ; preds = %for.cond278.preheader
  %p_mtxLNJ291 = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 22, !dbg !552
  call void @llvm.dbg.value(metadata !{i32* %nmtx}, i64 0, metadata !274), !dbg !550
  br label %for.body281, !dbg !550

if.then275:                                       ; preds = %for.end270
  %71 = load %struct._IO_FILE** @stderr, align 8, !dbg !554, !tbaa !381
  %call276 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %71, i8* getelementptr inbounds ([68 x i8]* @.str23, i64 0, i64 0), %struct._FrontMtx* %frontmtx, %struct._IO_FILE* %fp, i32 %conv272, i32 1) #7, !dbg !554
  br label %cleanup, !dbg !556

for.body281:                                      ; preds = %for.body281.lr.ph, %if.end288
  %imtx.1789 = phi i32 [ 0, %for.body281.lr.ph ], [ %inc294, %if.end288 ]
  %call282 = call %struct._SubMtx* @SubMtx_new() #7, !dbg !557
  call void @llvm.dbg.value(metadata !{%struct._SubMtx* %call282}, i64 0, metadata !268), !dbg !557
  %call283 = call i32 @SubMtx_readFromBinaryFile(%struct._SubMtx* %call282, %struct._IO_FILE* %fp) #7, !dbg !558
  call void @llvm.dbg.value(metadata !{i32 %call283}, i64 0, metadata !275), !dbg !558
  %cmp284 = icmp eq i32 %call283, 1, !dbg !559
  br i1 %cmp284, label %if.end288, label %if.then286, !dbg !559

if.then286:                                       ; preds = %for.body281
  %72 = load %struct._IO_FILE** @stderr, align 8, !dbg !560, !tbaa !381
  %call287 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %72, i8* getelementptr inbounds ([93 x i8]* @.str29, i64 0, i64 0), %struct._FrontMtx* %frontmtx, %struct._IO_FILE* %fp, i32 %call283) #7, !dbg !560
  br label %cleanup, !dbg !562

if.end288:                                        ; preds = %for.body281
  %colid289 = getelementptr inbounds %struct._SubMtx* %call282, i64 0, i32 3, !dbg !552
  %73 = load i32* %colid289, align 4, !dbg !552, !tbaa !431
  %idxprom290 = sext i32 %73 to i64, !dbg !552
  %74 = load %struct._SubMtx*** %p_mtxLNJ291, align 8, !dbg !552, !tbaa !381
  %arrayidx292 = getelementptr inbounds %struct._SubMtx** %74, i64 %idxprom290, !dbg !552
  store %struct._SubMtx* %call282, %struct._SubMtx** %arrayidx292, align 8, !dbg !552, !tbaa !381
  %inc294 = add nsw i32 %imtx.1789, 1, !dbg !550
  call void @llvm.dbg.value(metadata !{i32 %inc294}, i64 0, metadata !269), !dbg !550
  call void @llvm.dbg.value(metadata !{i32* %nmtx}, i64 0, metadata !274), !dbg !550
  %cmp279 = icmp slt i32 %inc294, %70, !dbg !550
  br i1 %cmp279, label %for.body281, label %if.end296, !dbg !550

if.end296:                                        ; preds = %for.cond278.preheader, %if.end288, %for.end
  %75 = bitcast i32* %nmtx to i8*, !dbg !563
  %call297 = call i64 @fread(i8* %75, i64 4, i64 1, %struct._IO_FILE* %fp) #7, !dbg !563
  %conv298 = trunc i64 %call297 to i32, !dbg !563
  call void @llvm.dbg.value(metadata !{i32 %conv298}, i64 0, metadata !275), !dbg !563
  %cmp299 = icmp eq i32 %conv298, 1, !dbg !563
  br i1 %cmp299, label %for.cond304.preheader, label %if.then301, !dbg !563

for.cond304.preheader:                            ; preds = %if.end296
  call void @llvm.dbg.value(metadata !{i32* %nmtx}, i64 0, metadata !274), !dbg !564
  %76 = load i32* %nmtx, align 4, !dbg !564, !tbaa !431
  %cmp305786 = icmp sgt i32 %76, 0, !dbg !564
  br i1 %cmp305786, label %for.body307.lr.ph, label %for.end320, !dbg !564

for.body307.lr.ph:                                ; preds = %for.cond304.preheader
  %p_mtxDJJ316 = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 18, !dbg !566
  call void @llvm.dbg.value(metadata !{i32* %nmtx}, i64 0, metadata !274), !dbg !564
  br label %for.body307, !dbg !564

if.then301:                                       ; preds = %if.end296
  %77 = load %struct._IO_FILE** @stderr, align 8, !dbg !568, !tbaa !381
  %call302 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %77, i8* getelementptr inbounds ([68 x i8]* @.str23, i64 0, i64 0), %struct._FrontMtx* %frontmtx, %struct._IO_FILE* %fp, i32 %conv298, i32 1) #7, !dbg !568
  br label %cleanup, !dbg !570

for.body307:                                      ; preds = %for.body307.lr.ph, %if.end314
  %imtx.2787 = phi i32 [ 0, %for.body307.lr.ph ], [ %inc319, %if.end314 ]
  %call308 = call %struct._SubMtx* @SubMtx_new() #7, !dbg !571
  call void @llvm.dbg.value(metadata !{%struct._SubMtx* %call308}, i64 0, metadata !268), !dbg !571
  %call309 = call i32 @SubMtx_readFromBinaryFile(%struct._SubMtx* %call308, %struct._IO_FILE* %fp) #7, !dbg !572
  call void @llvm.dbg.value(metadata !{i32 %call309}, i64 0, metadata !275), !dbg !572
  %cmp310 = icmp eq i32 %call309, 1, !dbg !573
  br i1 %cmp310, label %if.end314, label %if.then312, !dbg !573

if.then312:                                       ; preds = %for.body307
  %78 = load %struct._IO_FILE** @stderr, align 8, !dbg !574, !tbaa !381
  %call313 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %78, i8* getelementptr inbounds ([93 x i8]* @.str29, i64 0, i64 0), %struct._FrontMtx* %frontmtx, %struct._IO_FILE* %fp, i32 %call309) #7, !dbg !574
  br label %cleanup, !dbg !576

if.end314:                                        ; preds = %for.body307
  %rowid = getelementptr inbounds %struct._SubMtx* %call308, i64 0, i32 2, !dbg !566
  %79 = load i32* %rowid, align 4, !dbg !566, !tbaa !431
  %idxprom315 = sext i32 %79 to i64, !dbg !566
  %80 = load %struct._SubMtx*** %p_mtxDJJ316, align 8, !dbg !566, !tbaa !381
  %arrayidx317 = getelementptr inbounds %struct._SubMtx** %80, i64 %idxprom315, !dbg !566
  store %struct._SubMtx* %call308, %struct._SubMtx** %arrayidx317, align 8, !dbg !566, !tbaa !381
  %inc319 = add nsw i32 %imtx.2787, 1, !dbg !564
  call void @llvm.dbg.value(metadata !{i32 %inc319}, i64 0, metadata !269), !dbg !564
  call void @llvm.dbg.value(metadata !{i32* %nmtx}, i64 0, metadata !274), !dbg !564
  %cmp305 = icmp slt i32 %inc319, %76, !dbg !564
  br i1 %cmp305, label %for.body307, label %for.end320, !dbg !564

for.end320:                                       ; preds = %if.end314, %for.cond304.preheader
  %call321 = call i64 @fread(i8* %75, i64 4, i64 1, %struct._IO_FILE* %fp) #7, !dbg !577
  %conv322 = trunc i64 %call321 to i32, !dbg !577
  call void @llvm.dbg.value(metadata !{i32 %conv322}, i64 0, metadata !275), !dbg !577
  %cmp323 = icmp eq i32 %conv322, 1, !dbg !577
  br i1 %cmp323, label %for.cond328.preheader, label %if.then325, !dbg !577

for.cond328.preheader:                            ; preds = %for.end320
  call void @llvm.dbg.value(metadata !{i32* %nmtx}, i64 0, metadata !274), !dbg !578
  %81 = load i32* %nmtx, align 4, !dbg !578, !tbaa !431
  %cmp329784 = icmp sgt i32 %81, 0, !dbg !578
  br i1 %cmp329784, label %for.body331.lr.ph, label %for.end345, !dbg !578

for.body331.lr.ph:                                ; preds = %for.cond328.preheader
  %p_mtxUJJ341 = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 19, !dbg !580
  call void @llvm.dbg.value(metadata !{i32* %nmtx}, i64 0, metadata !274), !dbg !578
  br label %for.body331, !dbg !578

if.then325:                                       ; preds = %for.end320
  %82 = load %struct._IO_FILE** @stderr, align 8, !dbg !582, !tbaa !381
  %call326 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %82, i8* getelementptr inbounds ([68 x i8]* @.str23, i64 0, i64 0), %struct._FrontMtx* %frontmtx, %struct._IO_FILE* %fp, i32 %conv322, i32 1) #7, !dbg !582
  br label %cleanup, !dbg !584

for.body331:                                      ; preds = %for.body331.lr.ph, %if.end338
  %imtx.3785 = phi i32 [ 0, %for.body331.lr.ph ], [ %inc344, %if.end338 ]
  %call332 = call %struct._SubMtx* @SubMtx_new() #7, !dbg !585
  call void @llvm.dbg.value(metadata !{%struct._SubMtx* %call332}, i64 0, metadata !268), !dbg !585
  %call333 = call i32 @SubMtx_readFromBinaryFile(%struct._SubMtx* %call332, %struct._IO_FILE* %fp) #7, !dbg !586
  call void @llvm.dbg.value(metadata !{i32 %call333}, i64 0, metadata !275), !dbg !586
  %cmp334 = icmp eq i32 %call333, 1, !dbg !587
  br i1 %cmp334, label %if.end338, label %if.then336, !dbg !587

if.then336:                                       ; preds = %for.body331
  %83 = load %struct._IO_FILE** @stderr, align 8, !dbg !588, !tbaa !381
  %call337 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %83, i8* getelementptr inbounds ([93 x i8]* @.str29, i64 0, i64 0), %struct._FrontMtx* %frontmtx, %struct._IO_FILE* %fp, i32 %call333) #7, !dbg !588
  br label %cleanup, !dbg !590

if.end338:                                        ; preds = %for.body331
  %rowid339 = getelementptr inbounds %struct._SubMtx* %call332, i64 0, i32 2, !dbg !580
  %84 = load i32* %rowid339, align 4, !dbg !580, !tbaa !431
  %idxprom340 = sext i32 %84 to i64, !dbg !580
  %85 = load %struct._SubMtx*** %p_mtxUJJ341, align 8, !dbg !580, !tbaa !381
  %arrayidx342 = getelementptr inbounds %struct._SubMtx** %85, i64 %idxprom340, !dbg !580
  store %struct._SubMtx* %call332, %struct._SubMtx** %arrayidx342, align 8, !dbg !580, !tbaa !381
  %inc344 = add nsw i32 %imtx.3785, 1, !dbg !578
  call void @llvm.dbg.value(metadata !{i32 %inc344}, i64 0, metadata !269), !dbg !578
  call void @llvm.dbg.value(metadata !{i32* %nmtx}, i64 0, metadata !274), !dbg !578
  %cmp329 = icmp slt i32 %inc344, %81, !dbg !578
  br i1 %cmp329, label %for.body331, label %for.end345, !dbg !578

for.end345:                                       ; preds = %if.end338, %for.cond328.preheader
  %call346 = call i64 @fread(i8* %75, i64 4, i64 1, %struct._IO_FILE* %fp) #7, !dbg !591
  %conv347 = trunc i64 %call346 to i32, !dbg !591
  call void @llvm.dbg.value(metadata !{i32 %conv347}, i64 0, metadata !275), !dbg !591
  %cmp348 = icmp eq i32 %conv347, 1, !dbg !591
  br i1 %cmp348, label %for.cond353.preheader, label %if.then350, !dbg !591

for.cond353.preheader:                            ; preds = %for.end345
  call void @llvm.dbg.value(metadata !{i32* %nmtx}, i64 0, metadata !274), !dbg !592
  %86 = load i32* %nmtx, align 4, !dbg !592, !tbaa !431
  %cmp354782 = icmp sgt i32 %86, 0, !dbg !592
  br i1 %cmp354782, label %for.body356.lr.ph, label %cleanup, !dbg !592

for.body356.lr.ph:                                ; preds = %for.cond353.preheader
  %p_mtxUJN366 = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 20, !dbg !594
  call void @llvm.dbg.value(metadata !{i32* %nmtx}, i64 0, metadata !274), !dbg !592
  br label %for.body356, !dbg !592

if.then350:                                       ; preds = %for.end345
  %87 = load %struct._IO_FILE** @stderr, align 8, !dbg !596, !tbaa !381
  %call351 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %87, i8* getelementptr inbounds ([68 x i8]* @.str23, i64 0, i64 0), %struct._FrontMtx* %frontmtx, %struct._IO_FILE* %fp, i32 %conv347, i32 1) #7, !dbg !596
  br label %cleanup, !dbg !598

for.body356:                                      ; preds = %for.body356.lr.ph, %if.end363
  %imtx.4783 = phi i32 [ 0, %for.body356.lr.ph ], [ %inc369, %if.end363 ]
  %call357 = call %struct._SubMtx* @SubMtx_new() #7, !dbg !599
  call void @llvm.dbg.value(metadata !{%struct._SubMtx* %call357}, i64 0, metadata !268), !dbg !599
  %call358 = call i32 @SubMtx_readFromBinaryFile(%struct._SubMtx* %call357, %struct._IO_FILE* %fp) #7, !dbg !600
  call void @llvm.dbg.value(metadata !{i32 %call358}, i64 0, metadata !275), !dbg !600
  %cmp359 = icmp eq i32 %call358, 1, !dbg !601
  br i1 %cmp359, label %if.end363, label %if.then361, !dbg !601

if.then361:                                       ; preds = %for.body356
  %88 = load %struct._IO_FILE** @stderr, align 8, !dbg !602, !tbaa !381
  %call362 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %88, i8* getelementptr inbounds ([93 x i8]* @.str29, i64 0, i64 0), %struct._FrontMtx* %frontmtx, %struct._IO_FILE* %fp, i32 %call358) #7, !dbg !602
  br label %cleanup, !dbg !604

if.end363:                                        ; preds = %for.body356
  %rowid364 = getelementptr inbounds %struct._SubMtx* %call357, i64 0, i32 2, !dbg !594
  %89 = load i32* %rowid364, align 4, !dbg !594, !tbaa !431
  %idxprom365 = sext i32 %89 to i64, !dbg !594
  %90 = load %struct._SubMtx*** %p_mtxUJN366, align 8, !dbg !594, !tbaa !381
  %arrayidx367 = getelementptr inbounds %struct._SubMtx** %90, i64 %idxprom365, !dbg !594
  store %struct._SubMtx* %call357, %struct._SubMtx** %arrayidx367, align 8, !dbg !594, !tbaa !381
  %inc369 = add nsw i32 %imtx.4783, 1, !dbg !592
  call void @llvm.dbg.value(metadata !{i32 %inc369}, i64 0, metadata !269), !dbg !592
  call void @llvm.dbg.value(metadata !{i32* %nmtx}, i64 0, metadata !274), !dbg !592
  %cmp354 = icmp slt i32 %inc369, %86, !dbg !592
  br i1 %cmp354, label %for.body356, label %cleanup, !dbg !592

if.else371:                                       ; preds = %if.end86
  %91 = load i32* %symmetryflag, align 4, !dbg !605, !tbaa !431
  %cmp373 = icmp eq i32 %91, 2, !dbg !605
  br i1 %cmp373, label %if.then375, label %if.end386, !dbg !605

if.then375:                                       ; preds = %if.else371
  %call376 = call %struct._IVL* @IVL_new() #7, !dbg !607
  %lowerblockIVL = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 16, !dbg !607
  store %struct._IVL* %call376, %struct._IVL** %lowerblockIVL, align 8, !dbg !607, !tbaa !381
  %type378 = getelementptr inbounds %struct._IVL* %call376, i64 0, i32 0, !dbg !609
  store i32 1, i32* %type378, align 4, !dbg !609, !tbaa !431
  %call380 = call i32 @IVL_readFromBinaryFile(%struct._IVL* %call376, %struct._IO_FILE* %fp) #7, !dbg !610
  call void @llvm.dbg.value(metadata !{i32 %call380}, i64 0, metadata !275), !dbg !610
  %cmp381 = icmp eq i32 %call380, 1, !dbg !611
  br i1 %cmp381, label %if.end386, label %if.then383, !dbg !611

if.then383:                                       ; preds = %if.then375
  %92 = load %struct._IO_FILE** @stderr, align 8, !dbg !612, !tbaa !381
  %call384 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %92, i8* getelementptr inbounds ([95 x i8]* @.str30, i64 0, i64 0), %struct._FrontMtx* %frontmtx, %struct._IO_FILE* %fp, i32 %call380) #7, !dbg !612
  br label %cleanup, !dbg !614

if.end386:                                        ; preds = %if.then375, %if.else371
  %call387 = call %struct._IVL* @IVL_new() #7, !dbg !615
  %upperblockIVL = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 17, !dbg !615
  store %struct._IVL* %call387, %struct._IVL** %upperblockIVL, align 8, !dbg !615, !tbaa !381
  %type389 = getelementptr inbounds %struct._IVL* %call387, i64 0, i32 0, !dbg !616
  store i32 1, i32* %type389, align 4, !dbg !616, !tbaa !431
  %call391 = call i32 @IVL_readFromBinaryFile(%struct._IVL* %call387, %struct._IO_FILE* %fp) #7, !dbg !617
  call void @llvm.dbg.value(metadata !{i32 %call391}, i64 0, metadata !275), !dbg !617
  %cmp392 = icmp eq i32 %call391, 1, !dbg !618
  br i1 %cmp392, label %if.end396, label %if.then394, !dbg !618

if.then394:                                       ; preds = %if.end386
  %93 = load %struct._IO_FILE** @stderr, align 8, !dbg !619, !tbaa !381
  %call395 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %93, i8* getelementptr inbounds ([95 x i8]* @.str31, i64 0, i64 0), %struct._FrontMtx* %frontmtx, %struct._IO_FILE* %fp, i32 %call391) #7, !dbg !619
  br label %cleanup, !dbg !621

if.end396:                                        ; preds = %if.end386
  %94 = load i32* %symmetryflag, align 4, !dbg !622, !tbaa !431
  %cmp398 = icmp eq i32 %94, 2, !dbg !622
  br i1 %cmp398, label %if.then400, label %if.end428, !dbg !622

if.then400:                                       ; preds = %if.end396
  %call401 = call %struct._I2Ohash* @I2Ohash_new() #7, !dbg !623
  %lowerhash = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 23, !dbg !623
  store %struct._I2Ohash* %call401, %struct._I2Ohash** %lowerhash, align 8, !dbg !623, !tbaa !381
  %95 = bitcast i32* %nmtx to i8*, !dbg !625
  %call402 = call i64 @fread(i8* %95, i64 4, i64 1, %struct._IO_FILE* %fp) #7, !dbg !625
  %conv403 = trunc i64 %call402 to i32, !dbg !625
  call void @llvm.dbg.value(metadata !{i32 %conv403}, i64 0, metadata !275), !dbg !625
  %cmp404 = icmp eq i32 %conv403, 1, !dbg !625
  br i1 %cmp404, label %if.end408, label %if.then406, !dbg !625

if.then406:                                       ; preds = %if.then400
  %96 = load %struct._IO_FILE** @stderr, align 8, !dbg !626, !tbaa !381
  %call407 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %96, i8* getelementptr inbounds ([68 x i8]* @.str23, i64 0, i64 0), %struct._FrontMtx* %frontmtx, %struct._IO_FILE* %fp, i32 %conv403, i32 1) #7, !dbg !626
  br label %cleanup, !dbg !628

if.end408:                                        ; preds = %if.then400
  %97 = load %struct._I2Ohash** %lowerhash, align 8, !dbg !629, !tbaa !381
  %98 = load i32* %nfront8, align 4, !dbg !629, !tbaa !431
  %sub = add nsw i32 %98, -1, !dbg !629
  call void @llvm.dbg.value(metadata !{i32* %nmtx}, i64 0, metadata !274), !dbg !629
  %99 = load i32* %nmtx, align 4, !dbg !629, !tbaa !431
  call void @I2Ohash_init(%struct._I2Ohash* %97, i32 %sub, i32 %99, i32 0) #7, !dbg !629
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !272), !dbg !630
  call void @llvm.dbg.value(metadata !{i32* %nmtx}, i64 0, metadata !274), !dbg !630
  %cmp412803 = icmp sgt i32 %99, 0, !dbg !630
  br i1 %cmp412803, label %for.body414, label %if.end428, !dbg !630

for.body414:                                      ; preds = %if.end408, %if.end421
  %KJ.0804 = phi i32 [ %inc426, %if.end421 ], [ 0, %if.end408 ]
  %call415 = call %struct._SubMtx* @SubMtx_new() #7, !dbg !632
  call void @llvm.dbg.value(metadata !{%struct._SubMtx* %call415}, i64 0, metadata !268), !dbg !632
  %call416 = call i32 @SubMtx_readFromBinaryFile(%struct._SubMtx* %call415, %struct._IO_FILE* %fp) #7, !dbg !634
  call void @llvm.dbg.value(metadata !{i32 %call416}, i64 0, metadata !275), !dbg !634
  %cmp417 = icmp eq i32 %call416, 1, !dbg !635
  br i1 %cmp417, label %if.end421, label %if.then419, !dbg !635

if.then419:                                       ; preds = %for.body414
  %100 = load %struct._IO_FILE** @stderr, align 8, !dbg !636, !tbaa !381
  %call420 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %100, i8* getelementptr inbounds ([94 x i8]* @.str32, i64 0, i64 0), %struct._FrontMtx* %frontmtx, %struct._IO_FILE* %fp, i32 %call416) #7, !dbg !636
  br label %cleanup, !dbg !638

if.end421:                                        ; preds = %for.body414
  %101 = load %struct._I2Ohash** %lowerhash, align 8, !dbg !639, !tbaa !381
  %rowid423 = getelementptr inbounds %struct._SubMtx* %call415, i64 0, i32 2, !dbg !639
  %102 = load i32* %rowid423, align 4, !dbg !639, !tbaa !431
  %colid424 = getelementptr inbounds %struct._SubMtx* %call415, i64 0, i32 3, !dbg !639
  %103 = load i32* %colid424, align 4, !dbg !639, !tbaa !431
  %104 = bitcast %struct._SubMtx* %call415 to i8*, !dbg !639
  call void @I2Ohash_insert(%struct._I2Ohash* %101, i32 %102, i32 %103, i8* %104) #7, !dbg !639
  %inc426 = add nsw i32 %KJ.0804, 1, !dbg !630
  call void @llvm.dbg.value(metadata !{i32 %inc426}, i64 0, metadata !272), !dbg !630
  call void @llvm.dbg.value(metadata !{i32* %nmtx}, i64 0, metadata !274), !dbg !630
  %cmp412 = icmp slt i32 %inc426, %99, !dbg !630
  br i1 %cmp412, label %for.body414, label %if.end428, !dbg !630

if.end428:                                        ; preds = %if.end408, %if.end421, %if.end396
  %cmp429 = icmp sgt i32 %5, 0, !dbg !640
  br i1 %cmp429, label %if.then431, label %if.else444, !dbg !640

if.then431:                                       ; preds = %if.end428
  %sext823 = shl i64 %4, 32, !dbg !641
  %mul433 = ashr exact i64 %sext823, 29, !dbg !641
  %call434 = call noalias i8* @malloc(i64 %mul433) #7, !dbg !641
  %105 = bitcast i8* %call434 to %struct._SubMtx**, !dbg !641
  %p_mtxDJJ435 = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 18, !dbg !641
  store %struct._SubMtx** %105, %struct._SubMtx*** %p_mtxDJJ435, align 8, !dbg !641, !tbaa !381
  %cmp436 = icmp eq i8* %call434, null, !dbg !641
  br i1 %cmp436, label %if.then438, label %for.body458.lr.ph, !dbg !641

if.then438:                                       ; preds = %if.then431
  %106 = load %struct._IO_FILE** @stderr, align 8, !dbg !643, !tbaa !381
  %call441 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %106, i8* getelementptr inbounds ([49 x i8]* @.str13, i64 0, i64 0), i64 %mul433, i32 840, i8* getelementptr inbounds ([81 x i8]* @.str14, i64 0, i64 0)) #7, !dbg !643
  call void @exit(i32 -1) #10, !dbg !643
  unreachable, !dbg !643

if.else444:                                       ; preds = %if.end428
  %cmp445 = icmp eq i32 %5, 0, !dbg !640
  br i1 %cmp445, label %for.cond455.preheader, label %if.else449, !dbg !640

for.cond455.preheader:                            ; preds = %if.else444
  %p_mtxDJJ448 = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 18, !dbg !645
  store %struct._SubMtx** null, %struct._SubMtx*** %p_mtxDJJ448, align 8, !dbg !645, !tbaa !381
  br label %for.end464

for.body458.lr.ph:                                ; preds = %if.then431
  %p_mtxDJJ460 = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 18, !dbg !647
  br label %for.body458, !dbg !650

if.else449:                                       ; preds = %if.else444
  %107 = load %struct._IO_FILE** @stderr, align 8, !dbg !651, !tbaa !381
  %sext = shl i64 %4, 32, !dbg !651
  %mul451 = ashr exact i64 %sext, 29, !dbg !651
  %call452 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %107, i8* getelementptr inbounds ([47 x i8]* @.str15, i64 0, i64 0), i64 %mul451, i32 840, i8* getelementptr inbounds ([81 x i8]* @.str14, i64 0, i64 0)) #7, !dbg !651
  call void @exit(i32 -1) #10, !dbg !651
  unreachable, !dbg !651

for.body458:                                      ; preds = %for.body458.for.body458_crit_edge, %for.body458.lr.ph
  %108 = phi %struct._SubMtx** [ %105, %for.body458.lr.ph ], [ %.pre822, %for.body458.for.body458_crit_edge ]
  %indvars.iv816 = phi i64 [ 0, %for.body458.lr.ph ], [ %indvars.iv.next817, %for.body458.for.body458_crit_edge ]
  %arrayidx461 = getelementptr inbounds %struct._SubMtx** %108, i64 %indvars.iv816, !dbg !647
  store %struct._SubMtx* null, %struct._SubMtx** %arrayidx461, align 8, !dbg !647, !tbaa !381
  %indvars.iv.next817 = add i64 %indvars.iv816, 1, !dbg !650
  %lftr.wideiv818 = trunc i64 %indvars.iv.next817 to i32, !dbg !650
  %exitcond819 = icmp eq i32 %lftr.wideiv818, %5, !dbg !650
  br i1 %exitcond819, label %for.end464, label %for.body458.for.body458_crit_edge, !dbg !650

for.body458.for.body458_crit_edge:                ; preds = %for.body458
  %.pre822 = load %struct._SubMtx*** %p_mtxDJJ460, align 8, !dbg !647, !tbaa !381
  br label %for.body458, !dbg !650

for.end464:                                       ; preds = %for.body458, %for.cond455.preheader
  %109 = bitcast i32* %nmtx to i8*, !dbg !653
  %call465 = call i64 @fread(i8* %109, i64 4, i64 1, %struct._IO_FILE* %fp) #7, !dbg !653
  %conv466 = trunc i64 %call465 to i32, !dbg !653
  call void @llvm.dbg.value(metadata !{i32 %conv466}, i64 0, metadata !275), !dbg !653
  %cmp467 = icmp eq i32 %conv466, 1, !dbg !653
  br i1 %cmp467, label %for.cond472.preheader, label %if.then469, !dbg !653

for.cond472.preheader:                            ; preds = %for.end464
  call void @llvm.dbg.value(metadata !{i32* %nmtx}, i64 0, metadata !274), !dbg !654
  %110 = load i32* %nmtx, align 4, !dbg !654, !tbaa !431
  %cmp473799 = icmp sgt i32 %110, 0, !dbg !654
  br i1 %cmp473799, label %for.body475.lr.ph, label %for.end489, !dbg !654

for.body475.lr.ph:                                ; preds = %for.cond472.preheader
  %p_mtxDJJ485 = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 18, !dbg !656
  br label %for.body475, !dbg !654

if.then469:                                       ; preds = %for.end464
  %111 = load %struct._IO_FILE** @stderr, align 8, !dbg !658, !tbaa !381
  %call470 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %111, i8* getelementptr inbounds ([68 x i8]* @.str23, i64 0, i64 0), %struct._FrontMtx* %frontmtx, %struct._IO_FILE* %fp, i32 %conv466, i32 1) #7, !dbg !658
  br label %cleanup, !dbg !660

for.body475:                                      ; preds = %for.body475.lr.ph, %if.end482
  %J.3800 = phi i32 [ 0, %for.body475.lr.ph ], [ %inc488, %if.end482 ]
  %call476 = call %struct._SubMtx* @SubMtx_new() #7, !dbg !661
  call void @llvm.dbg.value(metadata !{%struct._SubMtx* %call476}, i64 0, metadata !268), !dbg !661
  %call477 = call i32 @SubMtx_readFromBinaryFile(%struct._SubMtx* %call476, %struct._IO_FILE* %fp) #7, !dbg !662
  call void @llvm.dbg.value(metadata !{i32 %call477}, i64 0, metadata !275), !dbg !662
  %cmp478 = icmp eq i32 %call477, 1, !dbg !663
  br i1 %cmp478, label %if.end482, label %if.then480, !dbg !663

if.then480:                                       ; preds = %for.body475
  %112 = load %struct._IO_FILE** @stderr, align 8, !dbg !664, !tbaa !381
  %call481 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %112, i8* getelementptr inbounds ([93 x i8]* @.str29, i64 0, i64 0), %struct._FrontMtx* %frontmtx, %struct._IO_FILE* %fp, i32 %call477) #7, !dbg !664
  br label %cleanup, !dbg !666

if.end482:                                        ; preds = %for.body475
  %rowid483 = getelementptr inbounds %struct._SubMtx* %call476, i64 0, i32 2, !dbg !656
  %113 = load i32* %rowid483, align 4, !dbg !656, !tbaa !431
  %idxprom484 = sext i32 %113 to i64, !dbg !656
  %114 = load %struct._SubMtx*** %p_mtxDJJ485, align 8, !dbg !656, !tbaa !381
  %arrayidx486 = getelementptr inbounds %struct._SubMtx** %114, i64 %idxprom484, !dbg !656
  store %struct._SubMtx* %call476, %struct._SubMtx** %arrayidx486, align 8, !dbg !656, !tbaa !381
  %inc488 = add nsw i32 %J.3800, 1, !dbg !654
  call void @llvm.dbg.value(metadata !{i32 %inc488}, i64 0, metadata !270), !dbg !654
  call void @llvm.dbg.value(metadata !{i32* %nmtx}, i64 0, metadata !274), !dbg !654
  %cmp473 = icmp slt i32 %inc488, %110, !dbg !654
  br i1 %cmp473, label %for.body475, label %for.end489, !dbg !654

for.end489:                                       ; preds = %if.end482, %for.cond472.preheader
  %call490 = call %struct._I2Ohash* @I2Ohash_new() #7, !dbg !667
  %upperhash = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 24, !dbg !667
  store %struct._I2Ohash* %call490, %struct._I2Ohash** %upperhash, align 8, !dbg !667, !tbaa !381
  %call491 = call i64 @fread(i8* %109, i64 4, i64 1, %struct._IO_FILE* %fp) #7, !dbg !668
  %conv492 = trunc i64 %call491 to i32, !dbg !668
  call void @llvm.dbg.value(metadata !{i32 %conv492}, i64 0, metadata !275), !dbg !668
  %cmp493 = icmp eq i32 %conv492, 1, !dbg !668
  br i1 %cmp493, label %if.end497, label %if.then495, !dbg !668

if.then495:                                       ; preds = %for.end489
  %115 = load %struct._IO_FILE** @stderr, align 8, !dbg !669, !tbaa !381
  %call496 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %115, i8* getelementptr inbounds ([68 x i8]* @.str23, i64 0, i64 0), %struct._FrontMtx* %frontmtx, %struct._IO_FILE* %fp, i32 %conv492, i32 1) #7, !dbg !669
  br label %cleanup, !dbg !671

if.end497:                                        ; preds = %for.end489
  %116 = load %struct._I2Ohash** %upperhash, align 8, !dbg !672, !tbaa !381
  %sub499 = add nsw i32 %5, -1, !dbg !672
  call void @llvm.dbg.value(metadata !{i32* %nmtx}, i64 0, metadata !274), !dbg !672
  %117 = load i32* %nmtx, align 4, !dbg !672, !tbaa !431
  call void @I2Ohash_init(%struct._I2Ohash* %116, i32 %sub499, i32 %117, i32 0) #7, !dbg !672
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !271), !dbg !673
  call void @llvm.dbg.value(metadata !{i32* %nmtx}, i64 0, metadata !274), !dbg !673
  %cmp501797 = icmp sgt i32 %117, 0, !dbg !673
  br i1 %cmp501797, label %for.body503, label %cleanup, !dbg !673

for.body503:                                      ; preds = %if.end497, %if.end510
  %JK.0798 = phi i32 [ %inc515, %if.end510 ], [ 0, %if.end497 ]
  %call504 = call %struct._SubMtx* @SubMtx_new() #7, !dbg !675
  call void @llvm.dbg.value(metadata !{%struct._SubMtx* %call504}, i64 0, metadata !268), !dbg !675
  %call505 = call i32 @SubMtx_readFromBinaryFile(%struct._SubMtx* %call504, %struct._IO_FILE* %fp) #7, !dbg !677
  call void @llvm.dbg.value(metadata !{i32 %call505}, i64 0, metadata !275), !dbg !677
  %cmp506 = icmp eq i32 %call505, 1, !dbg !678
  br i1 %cmp506, label %if.end510, label %if.then508, !dbg !678

if.then508:                                       ; preds = %for.body503
  %118 = load %struct._IO_FILE** @stderr, align 8, !dbg !679, !tbaa !381
  %call509 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %118, i8* getelementptr inbounds ([94 x i8]* @.str33, i64 0, i64 0), %struct._FrontMtx* %frontmtx, %struct._IO_FILE* %fp, i32 %call505) #7, !dbg !679
  br label %cleanup, !dbg !681

if.end510:                                        ; preds = %for.body503
  %119 = load %struct._I2Ohash** %upperhash, align 8, !dbg !682, !tbaa !381
  %rowid512 = getelementptr inbounds %struct._SubMtx* %call504, i64 0, i32 2, !dbg !682
  %120 = load i32* %rowid512, align 4, !dbg !682, !tbaa !431
  %colid513 = getelementptr inbounds %struct._SubMtx* %call504, i64 0, i32 3, !dbg !682
  %121 = load i32* %colid513, align 4, !dbg !682, !tbaa !431
  %122 = bitcast %struct._SubMtx* %call504 to i8*, !dbg !682
  call void @I2Ohash_insert(%struct._I2Ohash* %119, i32 %120, i32 %121, i8* %122) #7, !dbg !682
  %inc515 = add nsw i32 %JK.0798, 1, !dbg !673
  call void @llvm.dbg.value(metadata !{i32 %inc515}, i64 0, metadata !271), !dbg !673
  call void @llvm.dbg.value(metadata !{i32* %nmtx}, i64 0, metadata !274), !dbg !673
  %cmp501 = icmp slt i32 %inc515, %117, !dbg !673
  br i1 %cmp501, label %for.body503, label %cleanup, !dbg !673

cleanup:                                          ; preds = %if.end497, %if.end510, %for.cond353.preheader, %if.end363, %if.then508, %if.then495, %if.then480, %if.then469, %if.then419, %if.then406, %if.then394, %if.then383, %if.then361, %if.then350, %if.then336, %if.then325, %if.then312, %if.then301, %if.then286, %if.then275, %if.then262, %if.then251, %if.then83, %if.then72, %if.then47, %if.then35, %if.then23, %if.then5, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %if.then5 ], [ 0, %if.then23 ], [ 0, %if.then35 ], [ 0, %if.then47 ], [ 0, %if.then72 ], [ 0, %if.then83 ], [ 0, %if.then251 ], [ 0, %if.then262 ], [ 0, %if.then275 ], [ 0, %if.then286 ], [ 0, %if.then301 ], [ 0, %if.then312 ], [ 0, %if.then325 ], [ 0, %if.then336 ], [ 0, %if.then350 ], [ 0, %if.then361 ], [ 0, %if.then383 ], [ 0, %if.then394 ], [ 0, %if.then406 ], [ 0, %if.then419 ], [ 0, %if.then469 ], [ 0, %if.then480 ], [ 0, %if.then495 ], [ 0, %if.then508 ], [ 1, %if.end363 ], [ 1, %for.cond353.preheader ], [ 1, %if.end510 ], [ 1, %if.end497 ]
  call void @llvm.lifetime.end(i64 40, i8* %0) #4, !dbg !683
  ret i32 %retval.0, !dbg !683
}

; Function Attrs: nounwind optsize
declare i32 @fclose(%struct._IO_FILE* nocapture) #2

; Function Attrs: nounwind optsize uwtable
define i32 @FrontMtx_readFromFormattedFile(%struct._FrontMtx* %frontmtx, %struct._IO_FILE* %fp) #0 {
entry:
  %nmtx = alloca i32, align 4
  %itemp = alloca [10 x i32], align 16
  call void @llvm.dbg.value(metadata !{%struct._FrontMtx* %frontmtx}, i64 0, metadata !250), !dbg !684
  call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %fp}, i64 0, metadata !251), !dbg !685
  call void @llvm.dbg.declare(metadata !{i32* %nmtx}, metadata !258), !dbg !686
  %0 = bitcast [10 x i32]* %itemp to i8*, !dbg !687
  call void @llvm.lifetime.start(i64 40, i8* %0) #4, !dbg !687
  call void @llvm.dbg.declare(metadata !{[10 x i32]* %itemp}, metadata !260), !dbg !687
  %cmp = icmp eq %struct._FrontMtx* %frontmtx, null, !dbg !688
  %cmp1 = icmp eq %struct._IO_FILE* %fp, null, !dbg !688
  %or.cond = or i1 %cmp, %cmp1, !dbg !688
  br i1 %or.cond, label %if.then, label %if.end, !dbg !688

if.then:                                          ; preds = %entry
  %1 = load %struct._IO_FILE** @stderr, align 8, !dbg !689, !tbaa !381
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([61 x i8]* @.str5, i64 0, i64 0), %struct._FrontMtx* %frontmtx, %struct._IO_FILE* %fp) #7, !dbg !689
  br label %cleanup, !dbg !691

if.end:                                           ; preds = %entry
  call void @FrontMtx_clearData(%struct._FrontMtx* %frontmtx) #7, !dbg !692
  %arraydecay = getelementptr inbounds [10 x i32]* %itemp, i64 0, i64 0, !dbg !693
  %call2 = call i32 @IVfscanf(%struct._IO_FILE* %fp, i32 10, i32* %arraydecay) #7, !dbg !693
  call void @llvm.dbg.value(metadata !{i32 %call2}, i64 0, metadata !259), !dbg !693
  %cmp3 = icmp eq i32 %call2, 10, !dbg !693
  br i1 %cmp3, label %if.end6, label %if.then4, !dbg !693

if.then4:                                         ; preds = %if.end
  %2 = load %struct._IO_FILE** @stderr, align 8, !dbg !694, !tbaa !381
  %call5 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([71 x i8]* @.str6, i64 0, i64 0), %struct._FrontMtx* %frontmtx, %struct._IO_FILE* %fp, i32 %call2, i32 10) #7, !dbg !694
  br label %cleanup, !dbg !696

if.end6:                                          ; preds = %if.end
  %3 = bitcast [10 x i32]* %itemp to i64*, !dbg !697
  %4 = load i64* %3, align 16, !dbg !697
  %5 = trunc i64 %4 to i32, !dbg !697
  call void @llvm.dbg.value(metadata !{i32 %5}, i64 0, metadata !257), !dbg !697
  %nfront7 = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 0, !dbg !697
  store i32 %5, i32* %nfront7, align 4, !dbg !697, !tbaa !431
  %6 = lshr i64 %4, 32
  %7 = trunc i64 %6 to i32
  %neqns = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 1, !dbg !698
  store i32 %7, i32* %neqns, align 4, !dbg !698, !tbaa !431
  %arrayidx9 = getelementptr inbounds [10 x i32]* %itemp, i64 0, i64 2, !dbg !699
  %8 = bitcast i32* %arrayidx9 to i64*, !dbg !699
  %9 = load i64* %8, align 8, !dbg !699
  %10 = trunc i64 %9 to i32, !dbg !699
  %type = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 2, !dbg !699
  store i32 %10, i32* %type, align 4, !dbg !699, !tbaa !431
  %11 = lshr i64 %9, 32
  %12 = trunc i64 %11 to i32
  %symmetryflag = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 3, !dbg !700
  store i32 %12, i32* %symmetryflag, align 4, !dbg !700, !tbaa !431
  %arrayidx11 = getelementptr inbounds [10 x i32]* %itemp, i64 0, i64 4, !dbg !701
  %13 = bitcast i32* %arrayidx11 to i64*, !dbg !701
  %14 = load i64* %13, align 16, !dbg !701
  %15 = trunc i64 %14 to i32, !dbg !701
  %pivotingflag = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 5, !dbg !701
  store i32 %15, i32* %pivotingflag, align 4, !dbg !701, !tbaa !431
  %16 = lshr i64 %14, 32
  %17 = trunc i64 %16 to i32
  %sparsityflag = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 4, !dbg !702
  store i32 %17, i32* %sparsityflag, align 4, !dbg !702, !tbaa !431
  %arrayidx13 = getelementptr inbounds [10 x i32]* %itemp, i64 0, i64 6, !dbg !703
  %18 = bitcast i32* %arrayidx13 to i64*, !dbg !703
  %19 = load i64* %18, align 8, !dbg !703
  %20 = trunc i64 %19 to i32, !dbg !703
  %dataMode = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 6, !dbg !703
  store i32 %20, i32* %dataMode, align 4, !dbg !703, !tbaa !431
  %21 = lshr i64 %19, 32
  %22 = trunc i64 %21 to i32
  %nentD = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 7, !dbg !704
  store i32 %22, i32* %nentD, align 4, !dbg !704, !tbaa !431
  %arrayidx15 = getelementptr inbounds [10 x i32]* %itemp, i64 0, i64 8, !dbg !705
  %23 = bitcast i32* %arrayidx15 to i64*, !dbg !705
  %24 = load i64* %23, align 16, !dbg !705
  %25 = trunc i64 %24 to i32, !dbg !705
  %nentL = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 8, !dbg !705
  store i32 %25, i32* %nentL, align 4, !dbg !705, !tbaa !431
  %26 = lshr i64 %24, 32
  %27 = trunc i64 %26 to i32
  %nentU = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 9, !dbg !706
  store i32 %27, i32* %nentU, align 4, !dbg !706, !tbaa !431
  %call17 = call %struct._ETree* @ETree_new() #7, !dbg !707
  %frontETree = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 11, !dbg !707
  store %struct._ETree* %call17, %struct._ETree** %frontETree, align 8, !dbg !707, !tbaa !381
  %call19 = call i32 @ETree_readFromFormattedFile(%struct._ETree* %call17, %struct._IO_FILE* %fp) #7, !dbg !708
  call void @llvm.dbg.value(metadata !{i32 %call19}, i64 0, metadata !259), !dbg !708
  %cmp20 = icmp eq i32 %call19, 1, !dbg !709
  br i1 %cmp20, label %if.end23, label %if.then21, !dbg !709

if.then21:                                        ; preds = %if.end6
  %28 = load %struct._IO_FILE** @stderr, align 8, !dbg !710, !tbaa !381
  %call22 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %28, i8* getelementptr inbounds ([95 x i8]* @.str7, i64 0, i64 0), %struct._FrontMtx* %frontmtx, %struct._IO_FILE* %fp, i32 %call19) #7, !dbg !710
  br label %cleanup, !dbg !712

if.end23:                                         ; preds = %if.end6
  %29 = load %struct._ETree** %frontETree, align 8, !dbg !713, !tbaa !381
  %tree = getelementptr inbounds %struct._ETree* %29, i64 0, i32 2, !dbg !713
  %30 = load %struct._Tree** %tree, align 8, !dbg !713, !tbaa !381
  %tree25 = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 10, !dbg !713
  store %struct._Tree* %30, %struct._Tree** %tree25, align 8, !dbg !713, !tbaa !381
  %call26 = call %struct._IVL* @IVL_new() #7, !dbg !714
  %symbfacIVL = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 13, !dbg !714
  store %struct._IVL* %call26, %struct._IVL** %symbfacIVL, align 8, !dbg !714, !tbaa !381
  %type28 = getelementptr inbounds %struct._IVL* %call26, i64 0, i32 0, !dbg !715
  store i32 1, i32* %type28, align 4, !dbg !715, !tbaa !431
  %call30 = call i32 @IVL_readFromFormattedFile(%struct._IVL* %call26, %struct._IO_FILE* %fp) #7, !dbg !716
  call void @llvm.dbg.value(metadata !{i32 %call30}, i64 0, metadata !259), !dbg !716
  %cmp31 = icmp eq i32 %call30, 1, !dbg !717
  br i1 %cmp31, label %if.end34, label %if.then32, !dbg !717

if.then32:                                        ; preds = %if.end23
  %31 = load %struct._IO_FILE** @stderr, align 8, !dbg !718, !tbaa !381
  %call33 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %31, i8* getelementptr inbounds ([95 x i8]* @.str8, i64 0, i64 0), %struct._FrontMtx* %frontmtx, %struct._IO_FILE* %fp, i32 %call30) #7, !dbg !718
  br label %cleanup, !dbg !720

if.end34:                                         ; preds = %if.end23
  %call35 = call %struct._IV* @IV_new() #7, !dbg !721
  %frontsizesIV = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 12, !dbg !721
  store %struct._IV* %call35, %struct._IV** %frontsizesIV, align 8, !dbg !721, !tbaa !381
  %32 = load i32* %pivotingflag, align 4, !dbg !722, !tbaa !431
  %cmp37 = icmp eq i32 %32, 1, !dbg !722
  br i1 %cmp37, label %if.then38, label %if.else, !dbg !722

if.then38:                                        ; preds = %if.end34
  %call40 = call i32 @IV_readFromFormattedFile(%struct._IV* %call35, %struct._IO_FILE* %fp) #7, !dbg !723
  call void @llvm.dbg.value(metadata !{i32 %call40}, i64 0, metadata !259), !dbg !723
  %cmp41 = icmp eq i32 %call40, 1, !dbg !725
  br i1 %cmp41, label %if.end51, label %if.then42, !dbg !725

if.then42:                                        ; preds = %if.then38
  %33 = load %struct._IO_FILE** @stderr, align 8, !dbg !726, !tbaa !381
  %call43 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %33, i8* getelementptr inbounds ([97 x i8]* @.str9, i64 0, i64 0), %struct._FrontMtx* %frontmtx, %struct._IO_FILE* %fp, i32 %call40) #7, !dbg !726
  br label %cleanup, !dbg !728

if.else:                                          ; preds = %if.end34
  %34 = load i32* %nfront7, align 4, !dbg !729, !tbaa !431
  call void @IV_init(%struct._IV* %call35, i32 %34, i32* null) #7, !dbg !729
  %35 = load %struct._IV** %frontsizesIV, align 8, !dbg !731, !tbaa !381
  %call48 = call i32* @IV_entries(%struct._IV* %35) #7, !dbg !731
  %36 = load %struct._ETree** %frontETree, align 8, !dbg !732, !tbaa !381
  %call50 = call i32* @ETree_nodwghts(%struct._ETree* %36) #7, !dbg !732
  call void @IVcopy(i32 %5, i32* %call48, i32* %call50) #7, !dbg !732
  br label %if.end51

if.end51:                                         ; preds = %if.then38, %if.else
  %37 = load i32* %pivotingflag, align 4, !dbg !733, !tbaa !431
  %cmp53 = icmp eq i32 %37, 1, !dbg !733
  br i1 %cmp53, label %if.then54, label %if.end79, !dbg !733

if.then54:                                        ; preds = %if.end51
  %38 = load i32* %symmetryflag, align 4, !dbg !734, !tbaa !431
  %cmp56 = icmp eq i32 %38, 2, !dbg !734
  br i1 %cmp56, label %if.then57, label %if.end67, !dbg !734

if.then57:                                        ; preds = %if.then54
  %call58 = call %struct._IVL* @IVL_new() #7, !dbg !736
  %rowadjIVL = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 14, !dbg !736
  store %struct._IVL* %call58, %struct._IVL** %rowadjIVL, align 8, !dbg !736, !tbaa !381
  %type60 = getelementptr inbounds %struct._IVL* %call58, i64 0, i32 0, !dbg !738
  store i32 1, i32* %type60, align 4, !dbg !738, !tbaa !431
  %call62 = call i32 @IVL_readFromFormattedFile(%struct._IVL* %call58, %struct._IO_FILE* %fp) #7, !dbg !739
  call void @llvm.dbg.value(metadata !{i32 %call62}, i64 0, metadata !259), !dbg !739
  %cmp63 = icmp eq i32 %call62, 1, !dbg !740
  br i1 %cmp63, label %if.end67, label %if.then64, !dbg !740

if.then64:                                        ; preds = %if.then57
  %39 = load %struct._IO_FILE** @stderr, align 8, !dbg !741, !tbaa !381
  %call65 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %39, i8* getelementptr inbounds ([94 x i8]* @.str10, i64 0, i64 0), %struct._FrontMtx* %frontmtx, %struct._IO_FILE* %fp, i32 %call62) #7, !dbg !741
  br label %cleanup, !dbg !743

if.end67:                                         ; preds = %if.then57, %if.then54
  %call68 = call %struct._IVL* @IVL_new() #7, !dbg !744
  %coladjIVL = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 15, !dbg !744
  store %struct._IVL* %call68, %struct._IVL** %coladjIVL, align 8, !dbg !744, !tbaa !381
  %type70 = getelementptr inbounds %struct._IVL* %call68, i64 0, i32 0, !dbg !745
  store i32 1, i32* %type70, align 4, !dbg !745, !tbaa !431
  %call72 = call i32 @IVL_readFromFormattedFile(%struct._IVL* %call68, %struct._IO_FILE* %fp) #7, !dbg !746
  call void @llvm.dbg.value(metadata !{i32 %call72}, i64 0, metadata !259), !dbg !746
  %cmp73 = icmp eq i32 %call72, 1, !dbg !747
  br i1 %cmp73, label %if.end76, label %if.then74, !dbg !747

if.then74:                                        ; preds = %if.end67
  %40 = load %struct._IO_FILE** @stderr, align 8, !dbg !748, !tbaa !381
  %call75 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %40, i8* getelementptr inbounds ([94 x i8]* @.str11, i64 0, i64 0), %struct._FrontMtx* %frontmtx, %struct._IO_FILE* %fp, i32 %call72) #7, !dbg !748
  br label %cleanup, !dbg !750

if.end76:                                         ; preds = %if.end67
  %41 = load %struct._IO_FILE** @stdout, align 8, !dbg !751, !tbaa !381
  %42 = call i64 @fwrite(i8* getelementptr inbounds ([20 x i8]* @.str12, i64 0, i64 0), i64 19, i64 1, %struct._IO_FILE* %41) #4, !dbg !751
  %43 = load %struct._IO_FILE** @stdout, align 8, !dbg !752, !tbaa !381
  %call78 = call i32 @fflush(%struct._IO_FILE* %43) #7, !dbg !752
  br label %if.end79, !dbg !753

if.end79:                                         ; preds = %if.end76, %if.end51
  %44 = load i32* %dataMode, align 4, !dbg !754, !tbaa !431
  %cmp81 = icmp eq i32 %44, 1, !dbg !754
  br i1 %cmp81, label %if.then82, label %if.else331, !dbg !754

if.then82:                                        ; preds = %if.end79
  %cmp83 = icmp sgt i32 %5, 0, !dbg !755
  br i1 %cmp83, label %if.then84, label %if.else94, !dbg !755

if.then84:                                        ; preds = %if.then82
  %sext744 = shl i64 %4, 32, !dbg !757
  %mul = ashr exact i64 %sext744, 29, !dbg !757
  %call85 = call noalias i8* @malloc(i64 %mul) #7, !dbg !757
  %45 = bitcast i8* %call85 to %struct._SubMtx**, !dbg !757
  %p_mtxDJJ = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 18, !dbg !757
  store %struct._SubMtx** %45, %struct._SubMtx*** %p_mtxDJJ, align 8, !dbg !757, !tbaa !381
  %cmp86 = icmp eq i8* %call85, null, !dbg !757
  br i1 %cmp86, label %if.then88, label %if.then107, !dbg !757

if.then88:                                        ; preds = %if.then84
  %46 = load %struct._IO_FILE** @stderr, align 8, !dbg !759, !tbaa !381
  %call91 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %46, i8* getelementptr inbounds ([49 x i8]* @.str13, i64 0, i64 0), i64 %mul, i32 262, i8* getelementptr inbounds ([81 x i8]* @.str14, i64 0, i64 0)) #7, !dbg !759
  call void @exit(i32 -1) #10, !dbg !759
  unreachable, !dbg !759

if.else94:                                        ; preds = %if.then82
  %cmp95 = icmp eq i32 %5, 0, !dbg !755
  br i1 %cmp95, label %if.then147, label %if.else99, !dbg !755

if.else99:                                        ; preds = %if.else94
  %47 = load %struct._IO_FILE** @stderr, align 8, !dbg !761, !tbaa !381
  %sext741 = shl i64 %4, 32, !dbg !761
  %mul101 = ashr exact i64 %sext741, 29, !dbg !761
  %call102 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %47, i8* getelementptr inbounds ([47 x i8]* @.str15, i64 0, i64 0), i64 %mul101, i32 262, i8* getelementptr inbounds ([81 x i8]* @.str14, i64 0, i64 0)) #7, !dbg !761
  call void @exit(i32 -1) #10, !dbg !761
  unreachable, !dbg !761

if.then107:                                       ; preds = %if.then84
  %call110 = call noalias i8* @malloc(i64 %mul) #7, !dbg !763
  %48 = bitcast i8* %call110 to %struct._SubMtx**, !dbg !763
  %p_mtxUJJ = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 19, !dbg !763
  store %struct._SubMtx** %48, %struct._SubMtx*** %p_mtxUJJ, align 8, !dbg !763, !tbaa !381
  %cmp111 = icmp eq i8* %call110, null, !dbg !763
  br i1 %cmp111, label %if.then113, label %if.then132, !dbg !763

if.then113:                                       ; preds = %if.then107
  %49 = load %struct._IO_FILE** @stderr, align 8, !dbg !765, !tbaa !381
  %call116 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %49, i8* getelementptr inbounds ([49 x i8]* @.str13, i64 0, i64 0), i64 %mul, i32 263, i8* getelementptr inbounds ([81 x i8]* @.str14, i64 0, i64 0)) #7, !dbg !765
  call void @exit(i32 -1) #10, !dbg !765
  unreachable, !dbg !765

if.then132:                                       ; preds = %if.then107
  %call135 = call noalias i8* @malloc(i64 %mul) #7, !dbg !767
  %50 = bitcast i8* %call135 to %struct._SubMtx**, !dbg !767
  %p_mtxUJN = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 20, !dbg !767
  store %struct._SubMtx** %50, %struct._SubMtx*** %p_mtxUJN, align 8, !dbg !767, !tbaa !381
  %cmp136 = icmp eq i8* %call135, null, !dbg !767
  br i1 %cmp136, label %if.then138, label %for.cond.preheader, !dbg !767

if.then138:                                       ; preds = %if.then132
  %51 = load %struct._IO_FILE** @stderr, align 8, !dbg !769, !tbaa !381
  %call141 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %51, i8* getelementptr inbounds ([49 x i8]* @.str13, i64 0, i64 0), i64 %mul, i32 264, i8* getelementptr inbounds ([81 x i8]* @.str14, i64 0, i64 0)) #7, !dbg !769
  call void @exit(i32 -1) #10, !dbg !769
  unreachable, !dbg !769

if.then147:                                       ; preds = %if.else94
  %p_mtxDJJ98 = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 18, !dbg !771
  %52 = bitcast %struct._SubMtx*** %p_mtxDJJ98 to i8*
  call void @llvm.memset.p0i8.i64(i8* %52, i8 0, i64 24, i32 8, i1 false), !dbg !773
  br label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.then132, %if.then147
  %53 = phi %struct._SubMtx** [ %45, %if.then132 ], [ null, %if.then147 ]
  br i1 %cmp83, label %for.body.lr.ph, label %for.end, !dbg !775

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %p_mtxDJJ157 = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 18, !dbg !777
  %p_mtxUJJ160 = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 19, !dbg !779
  %p_mtxUJN163 = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 20, !dbg !780
  br label %for.body, !dbg !775

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %54 = phi %struct._SubMtx** [ %53, %for.body.lr.ph ], [ %.pre738, %for.body.for.body_crit_edge ]
  %indvars.iv727 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next728, %for.body.for.body_crit_edge ]
  %arrayidx158 = getelementptr inbounds %struct._SubMtx** %54, i64 %indvars.iv727, !dbg !777
  store %struct._SubMtx* null, %struct._SubMtx** %arrayidx158, align 8, !dbg !777, !tbaa !381
  %55 = load %struct._SubMtx*** %p_mtxUJJ160, align 8, !dbg !779, !tbaa !381
  %arrayidx161 = getelementptr inbounds %struct._SubMtx** %55, i64 %indvars.iv727, !dbg !779
  store %struct._SubMtx* null, %struct._SubMtx** %arrayidx161, align 8, !dbg !779, !tbaa !381
  %56 = load %struct._SubMtx*** %p_mtxUJN163, align 8, !dbg !780, !tbaa !381
  %arrayidx164 = getelementptr inbounds %struct._SubMtx** %56, i64 %indvars.iv727, !dbg !780
  store %struct._SubMtx* null, %struct._SubMtx** %arrayidx164, align 8, !dbg !780, !tbaa !381
  %indvars.iv.next728 = add i64 %indvars.iv727, 1, !dbg !775
  %lftr.wideiv729 = trunc i64 %indvars.iv.next728 to i32, !dbg !775
  %exitcond730 = icmp eq i32 %lftr.wideiv729, %5, !dbg !775
  br i1 %exitcond730, label %for.end, label %for.body.for.body_crit_edge, !dbg !775

for.body.for.body_crit_edge:                      ; preds = %for.body
  %.pre738 = load %struct._SubMtx*** %p_mtxDJJ157, align 8, !dbg !777, !tbaa !381
  br label %for.body, !dbg !775

for.end:                                          ; preds = %for.body, %for.cond.preheader
  %57 = load i32* %symmetryflag, align 4, !dbg !781, !tbaa !431
  %cmp166 = icmp eq i32 %57, 2, !dbg !781
  br i1 %cmp166, label %if.then168, label %if.end274, !dbg !781

if.then168:                                       ; preds = %for.end
  br i1 %cmp83, label %if.then171, label %if.else183, !dbg !782

if.then171:                                       ; preds = %if.then168
  %sext743 = shl i64 %4, 32, !dbg !784
  %mul173 = ashr exact i64 %sext743, 29, !dbg !784
  %call174 = call noalias i8* @malloc(i64 %mul173) #7, !dbg !784
  %58 = bitcast i8* %call174 to %struct._SubMtx**, !dbg !784
  %p_mtxLJJ = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 21, !dbg !784
  store %struct._SubMtx** %58, %struct._SubMtx*** %p_mtxLJJ, align 8, !dbg !784, !tbaa !381
  %cmp175 = icmp eq i8* %call174, null, !dbg !784
  br i1 %cmp175, label %if.then177, label %if.then196, !dbg !784

if.then177:                                       ; preds = %if.then171
  %59 = load %struct._IO_FILE** @stderr, align 8, !dbg !786, !tbaa !381
  %call180 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %59, i8* getelementptr inbounds ([49 x i8]* @.str13, i64 0, i64 0), i64 %mul173, i32 271, i8* getelementptr inbounds ([81 x i8]* @.str14, i64 0, i64 0)) #7, !dbg !786
  call void @exit(i32 -1) #10, !dbg !786
  unreachable, !dbg !786

if.else183:                                       ; preds = %if.then168
  %cmp184 = icmp eq i32 %5, 0, !dbg !782
  br i1 %cmp184, label %if.then211, label %if.else188, !dbg !782

if.else188:                                       ; preds = %if.else183
  %60 = load %struct._IO_FILE** @stderr, align 8, !dbg !788, !tbaa !381
  %sext742 = shl i64 %4, 32, !dbg !788
  %mul190 = ashr exact i64 %sext742, 29, !dbg !788
  %call191 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %60, i8* getelementptr inbounds ([47 x i8]* @.str15, i64 0, i64 0), i64 %mul190, i32 271, i8* getelementptr inbounds ([81 x i8]* @.str14, i64 0, i64 0)) #7, !dbg !788
  call void @exit(i32 -1) #10, !dbg !788
  unreachable, !dbg !788

if.then196:                                       ; preds = %if.then171
  %call199 = call noalias i8* @malloc(i64 %mul173) #7, !dbg !790
  %61 = bitcast i8* %call199 to %struct._SubMtx**, !dbg !790
  %p_mtxLNJ = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 22, !dbg !790
  store %struct._SubMtx** %61, %struct._SubMtx*** %p_mtxLNJ, align 8, !dbg !790, !tbaa !381
  %cmp200 = icmp eq i8* %call199, null, !dbg !790
  br i1 %cmp200, label %if.then202, label %for.cond219.preheader, !dbg !790

if.then202:                                       ; preds = %if.then196
  %62 = load %struct._IO_FILE** @stderr, align 8, !dbg !792, !tbaa !381
  %call205 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %62, i8* getelementptr inbounds ([49 x i8]* @.str13, i64 0, i64 0), i64 %mul173, i32 272, i8* getelementptr inbounds ([81 x i8]* @.str14, i64 0, i64 0)) #7, !dbg !792
  call void @exit(i32 -1) #10, !dbg !792
  unreachable, !dbg !792

if.then211:                                       ; preds = %if.else183
  %p_mtxLJJ187 = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 21, !dbg !794
  %63 = bitcast %struct._SubMtx*** %p_mtxLJJ187 to i8*
  call void @llvm.memset.p0i8.i64(i8* %63, i8 0, i64 16, i32 8, i1 false), !dbg !796
  br label %for.cond219.preheader

for.cond219.preheader:                            ; preds = %if.then196, %if.then211
  %64 = phi %struct._SubMtx** [ %58, %if.then196 ], [ null, %if.then211 ]
  br i1 %cmp83, label %for.body222.lr.ph, label %if.then236, !dbg !798

for.body222.lr.ph:                                ; preds = %for.cond219.preheader
  %p_mtxLJJ224 = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 21, !dbg !800
  %p_mtxLNJ227 = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 22, !dbg !802
  br label %for.body222, !dbg !798

for.body222:                                      ; preds = %for.body222.for.body222_crit_edge, %for.body222.lr.ph
  %65 = phi %struct._SubMtx** [ %64, %for.body222.lr.ph ], [ %.pre, %for.body222.for.body222_crit_edge ]
  %indvars.iv = phi i64 [ 0, %for.body222.lr.ph ], [ %indvars.iv.next, %for.body222.for.body222_crit_edge ]
  %arrayidx225 = getelementptr inbounds %struct._SubMtx** %65, i64 %indvars.iv, !dbg !800
  store %struct._SubMtx* null, %struct._SubMtx** %arrayidx225, align 8, !dbg !800, !tbaa !381
  %66 = load %struct._SubMtx*** %p_mtxLNJ227, align 8, !dbg !802, !tbaa !381
  %arrayidx228 = getelementptr inbounds %struct._SubMtx** %66, i64 %indvars.iv, !dbg !802
  store %struct._SubMtx* null, %struct._SubMtx** %arrayidx228, align 8, !dbg !802, !tbaa !381
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !798
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !798
  %exitcond = icmp eq i32 %lftr.wideiv, %5, !dbg !798
  br i1 %exitcond, label %if.then236, label %for.body222.for.body222_crit_edge, !dbg !798

for.body222.for.body222_crit_edge:                ; preds = %for.body222
  %.pre = load %struct._SubMtx*** %p_mtxLJJ224, align 8, !dbg !800, !tbaa !381
  br label %for.body222, !dbg !798

if.then236:                                       ; preds = %for.cond219.preheader, %for.body222
  %call237 = call i32 (%struct._IO_FILE*, i8*, ...)* @__isoc99_fscanf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([4 x i8]* @.str16, i64 0, i64 0), i32* %nmtx) #7, !dbg !803
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !253), !dbg !805
  call void @llvm.dbg.value(metadata !{i32* %nmtx}, i64 0, metadata !258), !dbg !805
  %67 = load i32* %nmtx, align 4, !dbg !805, !tbaa !431
  %cmp239707 = icmp sgt i32 %67, 0, !dbg !805
  br i1 %cmp239707, label %for.body241.lr.ph, label %for.end254, !dbg !805

for.body241.lr.ph:                                ; preds = %if.then236
  %p_mtxLJJ250 = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 21, !dbg !807
  br label %for.body241, !dbg !805

for.body241:                                      ; preds = %for.body241.lr.ph, %if.end248
  %imtx.0708 = phi i32 [ 0, %for.body241.lr.ph ], [ %inc253, %if.end248 ]
  %call242 = call %struct._SubMtx* @SubMtx_new() #7, !dbg !809
  call void @llvm.dbg.value(metadata !{%struct._SubMtx* %call242}, i64 0, metadata !252), !dbg !809
  %call243 = call i32 @SubMtx_readFromFormattedFile(%struct._SubMtx* %call242, %struct._IO_FILE* %fp) #7, !dbg !810
  call void @llvm.dbg.value(metadata !{i32 %call243}, i64 0, metadata !259), !dbg !810
  %cmp244 = icmp eq i32 %call243, 1, !dbg !811
  br i1 %cmp244, label %if.end248, label %if.then246, !dbg !811

if.then246:                                       ; preds = %for.body241
  %68 = load %struct._IO_FILE** @stderr, align 8, !dbg !812, !tbaa !381
  %call247 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %68, i8* getelementptr inbounds ([96 x i8]* @.str17, i64 0, i64 0), %struct._FrontMtx* %frontmtx, %struct._IO_FILE* %fp, i32 %call243) #7, !dbg !812
  br label %cleanup, !dbg !814

if.end248:                                        ; preds = %for.body241
  %colid = getelementptr inbounds %struct._SubMtx* %call242, i64 0, i32 3, !dbg !807
  %69 = load i32* %colid, align 4, !dbg !807, !tbaa !431
  %idxprom249 = sext i32 %69 to i64, !dbg !807
  %70 = load %struct._SubMtx*** %p_mtxLJJ250, align 8, !dbg !807, !tbaa !381
  %arrayidx251 = getelementptr inbounds %struct._SubMtx** %70, i64 %idxprom249, !dbg !807
  store %struct._SubMtx* %call242, %struct._SubMtx** %arrayidx251, align 8, !dbg !807, !tbaa !381
  %inc253 = add nsw i32 %imtx.0708, 1, !dbg !805
  call void @llvm.dbg.value(metadata !{i32 %inc253}, i64 0, metadata !253), !dbg !805
  call void @llvm.dbg.value(metadata !{i32* %nmtx}, i64 0, metadata !258), !dbg !805
  %71 = load i32* %nmtx, align 4, !dbg !805, !tbaa !431
  %cmp239 = icmp slt i32 %inc253, %71, !dbg !805
  br i1 %cmp239, label %for.body241, label %for.end254, !dbg !805

for.end254:                                       ; preds = %if.end248, %if.then236
  %call255 = call i32 (%struct._IO_FILE*, i8*, ...)* @__isoc99_fscanf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([4 x i8]* @.str16, i64 0, i64 0), i32* %nmtx) #7, !dbg !815
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !253), !dbg !816
  call void @llvm.dbg.value(metadata !{i32* %nmtx}, i64 0, metadata !258), !dbg !816
  %72 = load i32* %nmtx, align 4, !dbg !816, !tbaa !431
  %cmp257705 = icmp sgt i32 %72, 0, !dbg !816
  br i1 %cmp257705, label %for.body259.lr.ph, label %if.end274, !dbg !816

for.body259.lr.ph:                                ; preds = %for.end254
  %p_mtxLNJ269 = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 22, !dbg !818
  br label %for.body259, !dbg !816

for.body259:                                      ; preds = %for.body259.lr.ph, %if.end266
  %imtx.1706 = phi i32 [ 0, %for.body259.lr.ph ], [ %inc272, %if.end266 ]
  %call260 = call %struct._SubMtx* @SubMtx_new() #7, !dbg !820
  call void @llvm.dbg.value(metadata !{%struct._SubMtx* %call260}, i64 0, metadata !252), !dbg !820
  %call261 = call i32 @SubMtx_readFromFormattedFile(%struct._SubMtx* %call260, %struct._IO_FILE* %fp) #7, !dbg !821
  call void @llvm.dbg.value(metadata !{i32 %call261}, i64 0, metadata !259), !dbg !821
  %cmp262 = icmp eq i32 %call261, 1, !dbg !822
  br i1 %cmp262, label %if.end266, label %if.then264, !dbg !822

if.then264:                                       ; preds = %for.body259
  %73 = load %struct._IO_FILE** @stderr, align 8, !dbg !823, !tbaa !381
  %call265 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %73, i8* getelementptr inbounds ([96 x i8]* @.str17, i64 0, i64 0), %struct._FrontMtx* %frontmtx, %struct._IO_FILE* %fp, i32 %call261) #7, !dbg !823
  br label %cleanup, !dbg !825

if.end266:                                        ; preds = %for.body259
  %colid267 = getelementptr inbounds %struct._SubMtx* %call260, i64 0, i32 3, !dbg !818
  %74 = load i32* %colid267, align 4, !dbg !818, !tbaa !431
  %idxprom268 = sext i32 %74 to i64, !dbg !818
  %75 = load %struct._SubMtx*** %p_mtxLNJ269, align 8, !dbg !818, !tbaa !381
  %arrayidx270 = getelementptr inbounds %struct._SubMtx** %75, i64 %idxprom268, !dbg !818
  store %struct._SubMtx* %call260, %struct._SubMtx** %arrayidx270, align 8, !dbg !818, !tbaa !381
  %inc272 = add nsw i32 %imtx.1706, 1, !dbg !816
  call void @llvm.dbg.value(metadata !{i32 %inc272}, i64 0, metadata !253), !dbg !816
  call void @llvm.dbg.value(metadata !{i32* %nmtx}, i64 0, metadata !258), !dbg !816
  %76 = load i32* %nmtx, align 4, !dbg !816, !tbaa !431
  %cmp257 = icmp slt i32 %inc272, %76, !dbg !816
  br i1 %cmp257, label %for.body259, label %if.end274, !dbg !816

if.end274:                                        ; preds = %for.end254, %if.end266, %for.end
  %call275 = call i32 (%struct._IO_FILE*, i8*, ...)* @__isoc99_fscanf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([4 x i8]* @.str16, i64 0, i64 0), i32* %nmtx) #7, !dbg !826
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !253), !dbg !827
  call void @llvm.dbg.value(metadata !{i32* %nmtx}, i64 0, metadata !258), !dbg !827
  %77 = load i32* %nmtx, align 4, !dbg !827, !tbaa !431
  %cmp277703 = icmp sgt i32 %77, 0, !dbg !827
  br i1 %cmp277703, label %for.body279.lr.ph, label %for.end292, !dbg !827

for.body279.lr.ph:                                ; preds = %if.end274
  %p_mtxDJJ288 = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 18, !dbg !829
  br label %for.body279, !dbg !827

for.body279:                                      ; preds = %for.body279.lr.ph, %if.end286
  %imtx.2704 = phi i32 [ 0, %for.body279.lr.ph ], [ %inc291, %if.end286 ]
  %call280 = call %struct._SubMtx* @SubMtx_new() #7, !dbg !831
  call void @llvm.dbg.value(metadata !{%struct._SubMtx* %call280}, i64 0, metadata !252), !dbg !831
  %call281 = call i32 @SubMtx_readFromFormattedFile(%struct._SubMtx* %call280, %struct._IO_FILE* %fp) #7, !dbg !832
  call void @llvm.dbg.value(metadata !{i32 %call281}, i64 0, metadata !259), !dbg !832
  %cmp282 = icmp eq i32 %call281, 1, !dbg !833
  br i1 %cmp282, label %if.end286, label %if.then284, !dbg !833

if.then284:                                       ; preds = %for.body279
  %78 = load %struct._IO_FILE** @stderr, align 8, !dbg !834, !tbaa !381
  %call285 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %78, i8* getelementptr inbounds ([96 x i8]* @.str17, i64 0, i64 0), %struct._FrontMtx* %frontmtx, %struct._IO_FILE* %fp, i32 %call281) #7, !dbg !834
  br label %cleanup, !dbg !836

if.end286:                                        ; preds = %for.body279
  %rowid = getelementptr inbounds %struct._SubMtx* %call280, i64 0, i32 2, !dbg !829
  %79 = load i32* %rowid, align 4, !dbg !829, !tbaa !431
  %idxprom287 = sext i32 %79 to i64, !dbg !829
  %80 = load %struct._SubMtx*** %p_mtxDJJ288, align 8, !dbg !829, !tbaa !381
  %arrayidx289 = getelementptr inbounds %struct._SubMtx** %80, i64 %idxprom287, !dbg !829
  store %struct._SubMtx* %call280, %struct._SubMtx** %arrayidx289, align 8, !dbg !829, !tbaa !381
  %inc291 = add nsw i32 %imtx.2704, 1, !dbg !827
  call void @llvm.dbg.value(metadata !{i32 %inc291}, i64 0, metadata !253), !dbg !827
  call void @llvm.dbg.value(metadata !{i32* %nmtx}, i64 0, metadata !258), !dbg !827
  %81 = load i32* %nmtx, align 4, !dbg !827, !tbaa !431
  %cmp277 = icmp slt i32 %inc291, %81, !dbg !827
  br i1 %cmp277, label %for.body279, label %for.end292, !dbg !827

for.end292:                                       ; preds = %if.end286, %if.end274
  %call293 = call i32 (%struct._IO_FILE*, i8*, ...)* @__isoc99_fscanf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([4 x i8]* @.str16, i64 0, i64 0), i32* %nmtx) #7, !dbg !837
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !253), !dbg !838
  call void @llvm.dbg.value(metadata !{i32* %nmtx}, i64 0, metadata !258), !dbg !838
  %82 = load i32* %nmtx, align 4, !dbg !838, !tbaa !431
  %cmp295701 = icmp sgt i32 %82, 0, !dbg !838
  br i1 %cmp295701, label %for.body297.lr.ph, label %for.end311, !dbg !838

for.body297.lr.ph:                                ; preds = %for.end292
  %p_mtxUJJ307 = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 19, !dbg !840
  br label %for.body297, !dbg !838

for.body297:                                      ; preds = %for.body297.lr.ph, %if.end304
  %imtx.3702 = phi i32 [ 0, %for.body297.lr.ph ], [ %inc310, %if.end304 ]
  %call298 = call %struct._SubMtx* @SubMtx_new() #7, !dbg !842
  call void @llvm.dbg.value(metadata !{%struct._SubMtx* %call298}, i64 0, metadata !252), !dbg !842
  %call299 = call i32 @SubMtx_readFromFormattedFile(%struct._SubMtx* %call298, %struct._IO_FILE* %fp) #7, !dbg !843
  call void @llvm.dbg.value(metadata !{i32 %call299}, i64 0, metadata !259), !dbg !843
  %cmp300 = icmp eq i32 %call299, 1, !dbg !844
  br i1 %cmp300, label %if.end304, label %if.then302, !dbg !844

if.then302:                                       ; preds = %for.body297
  %83 = load %struct._IO_FILE** @stderr, align 8, !dbg !845, !tbaa !381
  %call303 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %83, i8* getelementptr inbounds ([96 x i8]* @.str17, i64 0, i64 0), %struct._FrontMtx* %frontmtx, %struct._IO_FILE* %fp, i32 %call299) #7, !dbg !845
  br label %cleanup, !dbg !847

if.end304:                                        ; preds = %for.body297
  %rowid305 = getelementptr inbounds %struct._SubMtx* %call298, i64 0, i32 2, !dbg !840
  %84 = load i32* %rowid305, align 4, !dbg !840, !tbaa !431
  %idxprom306 = sext i32 %84 to i64, !dbg !840
  %85 = load %struct._SubMtx*** %p_mtxUJJ307, align 8, !dbg !840, !tbaa !381
  %arrayidx308 = getelementptr inbounds %struct._SubMtx** %85, i64 %idxprom306, !dbg !840
  store %struct._SubMtx* %call298, %struct._SubMtx** %arrayidx308, align 8, !dbg !840, !tbaa !381
  %inc310 = add nsw i32 %imtx.3702, 1, !dbg !838
  call void @llvm.dbg.value(metadata !{i32 %inc310}, i64 0, metadata !253), !dbg !838
  call void @llvm.dbg.value(metadata !{i32* %nmtx}, i64 0, metadata !258), !dbg !838
  %86 = load i32* %nmtx, align 4, !dbg !838, !tbaa !431
  %cmp295 = icmp slt i32 %inc310, %86, !dbg !838
  br i1 %cmp295, label %for.body297, label %for.end311, !dbg !838

for.end311:                                       ; preds = %if.end304, %for.end292
  %call312 = call i32 (%struct._IO_FILE*, i8*, ...)* @__isoc99_fscanf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([4 x i8]* @.str16, i64 0, i64 0), i32* %nmtx) #7, !dbg !848
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !253), !dbg !849
  call void @llvm.dbg.value(metadata !{i32* %nmtx}, i64 0, metadata !258), !dbg !849
  %87 = load i32* %nmtx, align 4, !dbg !849, !tbaa !431
  %cmp314699 = icmp sgt i32 %87, 0, !dbg !849
  br i1 %cmp314699, label %for.body316.lr.ph, label %cleanup, !dbg !849

for.body316.lr.ph:                                ; preds = %for.end311
  %p_mtxUJN326 = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 20, !dbg !851
  br label %for.body316, !dbg !849

for.body316:                                      ; preds = %for.body316.lr.ph, %if.end323
  %imtx.4700 = phi i32 [ 0, %for.body316.lr.ph ], [ %inc329, %if.end323 ]
  %call317 = call %struct._SubMtx* @SubMtx_new() #7, !dbg !853
  call void @llvm.dbg.value(metadata !{%struct._SubMtx* %call317}, i64 0, metadata !252), !dbg !853
  %call318 = call i32 @SubMtx_readFromFormattedFile(%struct._SubMtx* %call317, %struct._IO_FILE* %fp) #7, !dbg !854
  call void @llvm.dbg.value(metadata !{i32 %call318}, i64 0, metadata !259), !dbg !854
  %cmp319 = icmp eq i32 %call318, 1, !dbg !855
  br i1 %cmp319, label %if.end323, label %if.then321, !dbg !855

if.then321:                                       ; preds = %for.body316
  %88 = load %struct._IO_FILE** @stderr, align 8, !dbg !856, !tbaa !381
  %call322 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %88, i8* getelementptr inbounds ([96 x i8]* @.str17, i64 0, i64 0), %struct._FrontMtx* %frontmtx, %struct._IO_FILE* %fp, i32 %call318) #7, !dbg !856
  br label %cleanup, !dbg !858

if.end323:                                        ; preds = %for.body316
  %rowid324 = getelementptr inbounds %struct._SubMtx* %call317, i64 0, i32 2, !dbg !851
  %89 = load i32* %rowid324, align 4, !dbg !851, !tbaa !431
  %idxprom325 = sext i32 %89 to i64, !dbg !851
  %90 = load %struct._SubMtx*** %p_mtxUJN326, align 8, !dbg !851, !tbaa !381
  %arrayidx327 = getelementptr inbounds %struct._SubMtx** %90, i64 %idxprom325, !dbg !851
  store %struct._SubMtx* %call317, %struct._SubMtx** %arrayidx327, align 8, !dbg !851, !tbaa !381
  %inc329 = add nsw i32 %imtx.4700, 1, !dbg !849
  call void @llvm.dbg.value(metadata !{i32 %inc329}, i64 0, metadata !253), !dbg !849
  call void @llvm.dbg.value(metadata !{i32* %nmtx}, i64 0, metadata !258), !dbg !849
  %91 = load i32* %nmtx, align 4, !dbg !849, !tbaa !431
  %cmp314 = icmp slt i32 %inc329, %91, !dbg !849
  br i1 %cmp314, label %for.body316, label %cleanup, !dbg !849

if.else331:                                       ; preds = %if.end79
  %92 = load i32* %symmetryflag, align 4, !dbg !859, !tbaa !431
  %cmp333 = icmp eq i32 %92, 2, !dbg !859
  br i1 %cmp333, label %if.then335, label %if.end346, !dbg !859

if.then335:                                       ; preds = %if.else331
  %call336 = call %struct._IVL* @IVL_new() #7, !dbg !861
  %lowerblockIVL = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 16, !dbg !861
  store %struct._IVL* %call336, %struct._IVL** %lowerblockIVL, align 8, !dbg !861, !tbaa !381
  %type338 = getelementptr inbounds %struct._IVL* %call336, i64 0, i32 0, !dbg !863
  store i32 1, i32* %type338, align 4, !dbg !863, !tbaa !431
  %call340 = call i32 @IVL_readFromFormattedFile(%struct._IVL* %call336, %struct._IO_FILE* %fp) #7, !dbg !864
  call void @llvm.dbg.value(metadata !{i32 %call340}, i64 0, metadata !259), !dbg !864
  %cmp341 = icmp eq i32 %call340, 1, !dbg !865
  br i1 %cmp341, label %if.end346, label %if.then343, !dbg !865

if.then343:                                       ; preds = %if.then335
  %93 = load %struct._IO_FILE** @stderr, align 8, !dbg !866, !tbaa !381
  %call344 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %93, i8* getelementptr inbounds ([98 x i8]* @.str18, i64 0, i64 0), %struct._FrontMtx* %frontmtx, %struct._IO_FILE* %fp, i32 %call340) #7, !dbg !866
  br label %cleanup, !dbg !868

if.end346:                                        ; preds = %if.then335, %if.else331
  %call347 = call %struct._IVL* @IVL_new() #7, !dbg !869
  %upperblockIVL = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 17, !dbg !869
  store %struct._IVL* %call347, %struct._IVL** %upperblockIVL, align 8, !dbg !869, !tbaa !381
  %type349 = getelementptr inbounds %struct._IVL* %call347, i64 0, i32 0, !dbg !870
  store i32 1, i32* %type349, align 4, !dbg !870, !tbaa !431
  %call351 = call i32 @IVL_readFromFormattedFile(%struct._IVL* %call347, %struct._IO_FILE* %fp) #7, !dbg !871
  call void @llvm.dbg.value(metadata !{i32 %call351}, i64 0, metadata !259), !dbg !871
  %cmp352 = icmp eq i32 %call351, 1, !dbg !872
  br i1 %cmp352, label %if.end356, label %if.then354, !dbg !872

if.then354:                                       ; preds = %if.end346
  %94 = load %struct._IO_FILE** @stderr, align 8, !dbg !873, !tbaa !381
  %call355 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %94, i8* getelementptr inbounds ([98 x i8]* @.str19, i64 0, i64 0), %struct._FrontMtx* %frontmtx, %struct._IO_FILE* %fp, i32 %call351) #7, !dbg !873
  br label %cleanup, !dbg !875

if.end356:                                        ; preds = %if.end346
  %95 = load i32* %symmetryflag, align 4, !dbg !876, !tbaa !431
  %cmp358 = icmp eq i32 %95, 2, !dbg !876
  br i1 %cmp358, label %if.then360, label %if.end381, !dbg !876

if.then360:                                       ; preds = %if.end356
  %call361 = call %struct._I2Ohash* @I2Ohash_new() #7, !dbg !877
  %lowerhash = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 23, !dbg !877
  store %struct._I2Ohash* %call361, %struct._I2Ohash** %lowerhash, align 8, !dbg !877, !tbaa !381
  %call362 = call i32 (%struct._IO_FILE*, i8*, ...)* @__isoc99_fscanf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([4 x i8]* @.str16, i64 0, i64 0), i32* %nmtx) #7, !dbg !879
  %96 = load %struct._I2Ohash** %lowerhash, align 8, !dbg !880, !tbaa !381
  %sub = add nsw i32 %5, -1, !dbg !880
  call void @llvm.dbg.value(metadata !{i32* %nmtx}, i64 0, metadata !258), !dbg !880
  %97 = load i32* %nmtx, align 4, !dbg !880, !tbaa !431
  call void @I2Ohash_init(%struct._I2Ohash* %96, i32 %sub, i32 %97, i32 0) #7, !dbg !880
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !256), !dbg !881
  call void @llvm.dbg.value(metadata !{i32* %nmtx}, i64 0, metadata !258), !dbg !881
  %98 = load i32* %nmtx, align 4, !dbg !881, !tbaa !431
  %cmp365720 = icmp sgt i32 %98, 0, !dbg !881
  br i1 %cmp365720, label %for.body367, label %if.end381, !dbg !881

for.body367:                                      ; preds = %if.then360, %if.end374
  %KJ.0721 = phi i32 [ %inc379, %if.end374 ], [ 0, %if.then360 ]
  %call368 = call %struct._SubMtx* @SubMtx_new() #7, !dbg !883
  call void @llvm.dbg.value(metadata !{%struct._SubMtx* %call368}, i64 0, metadata !252), !dbg !883
  %call369 = call i32 @SubMtx_readFromFormattedFile(%struct._SubMtx* %call368, %struct._IO_FILE* %fp) #7, !dbg !885
  call void @llvm.dbg.value(metadata !{i32 %call369}, i64 0, metadata !259), !dbg !885
  %cmp370 = icmp eq i32 %call369, 1, !dbg !886
  br i1 %cmp370, label %if.end374, label %if.then372, !dbg !886

if.then372:                                       ; preds = %for.body367
  %99 = load %struct._IO_FILE** @stderr, align 8, !dbg !887, !tbaa !381
  %call373 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %99, i8* getelementptr inbounds ([97 x i8]* @.str20, i64 0, i64 0), %struct._FrontMtx* %frontmtx, %struct._IO_FILE* %fp, i32 %call369) #7, !dbg !887
  br label %cleanup, !dbg !889

if.end374:                                        ; preds = %for.body367
  %100 = load %struct._I2Ohash** %lowerhash, align 8, !dbg !890, !tbaa !381
  %rowid376 = getelementptr inbounds %struct._SubMtx* %call368, i64 0, i32 2, !dbg !890
  %101 = load i32* %rowid376, align 4, !dbg !890, !tbaa !431
  %colid377 = getelementptr inbounds %struct._SubMtx* %call368, i64 0, i32 3, !dbg !890
  %102 = load i32* %colid377, align 4, !dbg !890, !tbaa !431
  %103 = bitcast %struct._SubMtx* %call368 to i8*, !dbg !890
  call void @I2Ohash_insert(%struct._I2Ohash* %100, i32 %101, i32 %102, i8* %103) #7, !dbg !890
  %inc379 = add nsw i32 %KJ.0721, 1, !dbg !881
  call void @llvm.dbg.value(metadata !{i32 %inc379}, i64 0, metadata !256), !dbg !881
  call void @llvm.dbg.value(metadata !{i32* %nmtx}, i64 0, metadata !258), !dbg !881
  %104 = load i32* %nmtx, align 4, !dbg !881, !tbaa !431
  %cmp365 = icmp slt i32 %inc379, %104, !dbg !881
  br i1 %cmp365, label %for.body367, label %if.end381, !dbg !881

if.end381:                                        ; preds = %if.then360, %if.end374, %if.end356
  %cmp382 = icmp sgt i32 %5, 0, !dbg !891
  br i1 %cmp382, label %if.then384, label %if.else397, !dbg !891

if.then384:                                       ; preds = %if.end381
  %sext740 = shl i64 %4, 32, !dbg !892
  %mul386 = ashr exact i64 %sext740, 29, !dbg !892
  %call387 = call noalias i8* @malloc(i64 %mul386) #7, !dbg !892
  %105 = bitcast i8* %call387 to %struct._SubMtx**, !dbg !892
  %p_mtxDJJ388 = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 18, !dbg !892
  store %struct._SubMtx** %105, %struct._SubMtx*** %p_mtxDJJ388, align 8, !dbg !892, !tbaa !381
  %cmp389 = icmp eq i8* %call387, null, !dbg !892
  br i1 %cmp389, label %if.then391, label %for.body411.lr.ph, !dbg !892

if.then391:                                       ; preds = %if.then384
  %106 = load %struct._IO_FILE** @stderr, align 8, !dbg !894, !tbaa !381
  %call394 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %106, i8* getelementptr inbounds ([49 x i8]* @.str13, i64 0, i64 0), i64 %mul386, i32 416, i8* getelementptr inbounds ([81 x i8]* @.str14, i64 0, i64 0)) #7, !dbg !894
  call void @exit(i32 -1) #10, !dbg !894
  unreachable, !dbg !894

if.else397:                                       ; preds = %if.end381
  %cmp398 = icmp eq i32 %5, 0, !dbg !891
  br i1 %cmp398, label %for.cond408.preheader, label %if.else402, !dbg !891

for.cond408.preheader:                            ; preds = %if.else397
  %p_mtxDJJ401 = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 18, !dbg !896
  store %struct._SubMtx** null, %struct._SubMtx*** %p_mtxDJJ401, align 8, !dbg !896, !tbaa !381
  br label %for.end417

for.body411.lr.ph:                                ; preds = %if.then384
  %p_mtxDJJ413 = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 18, !dbg !898
  br label %for.body411, !dbg !901

if.else402:                                       ; preds = %if.else397
  %107 = load %struct._IO_FILE** @stderr, align 8, !dbg !902, !tbaa !381
  %sext = shl i64 %4, 32, !dbg !902
  %mul404 = ashr exact i64 %sext, 29, !dbg !902
  %call405 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %107, i8* getelementptr inbounds ([47 x i8]* @.str15, i64 0, i64 0), i64 %mul404, i32 416, i8* getelementptr inbounds ([81 x i8]* @.str14, i64 0, i64 0)) #7, !dbg !902
  call void @exit(i32 -1) #10, !dbg !902
  unreachable, !dbg !902

for.body411:                                      ; preds = %for.body411.for.body411_crit_edge, %for.body411.lr.ph
  %108 = phi %struct._SubMtx** [ %105, %for.body411.lr.ph ], [ %.pre739, %for.body411.for.body411_crit_edge ]
  %indvars.iv733 = phi i64 [ 0, %for.body411.lr.ph ], [ %indvars.iv.next734, %for.body411.for.body411_crit_edge ]
  %arrayidx414 = getelementptr inbounds %struct._SubMtx** %108, i64 %indvars.iv733, !dbg !898
  store %struct._SubMtx* null, %struct._SubMtx** %arrayidx414, align 8, !dbg !898, !tbaa !381
  %indvars.iv.next734 = add i64 %indvars.iv733, 1, !dbg !901
  %lftr.wideiv735 = trunc i64 %indvars.iv.next734 to i32, !dbg !901
  %exitcond736 = icmp eq i32 %lftr.wideiv735, %5, !dbg !901
  br i1 %exitcond736, label %for.end417, label %for.body411.for.body411_crit_edge, !dbg !901

for.body411.for.body411_crit_edge:                ; preds = %for.body411
  %.pre739 = load %struct._SubMtx*** %p_mtxDJJ413, align 8, !dbg !898, !tbaa !381
  br label %for.body411, !dbg !901

for.end417:                                       ; preds = %for.body411, %for.cond408.preheader
  %call418 = call i32 (%struct._IO_FILE*, i8*, ...)* @__isoc99_fscanf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([4 x i8]* @.str16, i64 0, i64 0), i32* %nmtx) #7, !dbg !904
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !254), !dbg !905
  call void @llvm.dbg.value(metadata !{i32* %nmtx}, i64 0, metadata !258), !dbg !905
  %109 = load i32* %nmtx, align 4, !dbg !905, !tbaa !431
  %cmp420716 = icmp sgt i32 %109, 0, !dbg !905
  br i1 %cmp420716, label %for.body422.lr.ph, label %for.end436, !dbg !905

for.body422.lr.ph:                                ; preds = %for.end417
  %p_mtxDJJ432 = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 18, !dbg !907
  br label %for.body422, !dbg !905

for.body422:                                      ; preds = %for.body422.lr.ph, %if.end429
  %J.3717 = phi i32 [ 0, %for.body422.lr.ph ], [ %inc435, %if.end429 ]
  %call423 = call %struct._SubMtx* @SubMtx_new() #7, !dbg !909
  call void @llvm.dbg.value(metadata !{%struct._SubMtx* %call423}, i64 0, metadata !252), !dbg !909
  %call424 = call i32 @SubMtx_readFromFormattedFile(%struct._SubMtx* %call423, %struct._IO_FILE* %fp) #7, !dbg !910
  call void @llvm.dbg.value(metadata !{i32 %call424}, i64 0, metadata !259), !dbg !910
  %cmp425 = icmp eq i32 %call424, 1, !dbg !911
  br i1 %cmp425, label %if.end429, label %if.then427, !dbg !911

if.then427:                                       ; preds = %for.body422
  %110 = load %struct._IO_FILE** @stderr, align 8, !dbg !912, !tbaa !381
  %call428 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %110, i8* getelementptr inbounds ([96 x i8]* @.str17, i64 0, i64 0), %struct._FrontMtx* %frontmtx, %struct._IO_FILE* %fp, i32 %call424) #7, !dbg !912
  br label %cleanup, !dbg !914

if.end429:                                        ; preds = %for.body422
  %rowid430 = getelementptr inbounds %struct._SubMtx* %call423, i64 0, i32 2, !dbg !907
  %111 = load i32* %rowid430, align 4, !dbg !907, !tbaa !431
  %idxprom431 = sext i32 %111 to i64, !dbg !907
  %112 = load %struct._SubMtx*** %p_mtxDJJ432, align 8, !dbg !907, !tbaa !381
  %arrayidx433 = getelementptr inbounds %struct._SubMtx** %112, i64 %idxprom431, !dbg !907
  store %struct._SubMtx* %call423, %struct._SubMtx** %arrayidx433, align 8, !dbg !907, !tbaa !381
  %inc435 = add nsw i32 %J.3717, 1, !dbg !905
  call void @llvm.dbg.value(metadata !{i32 %inc435}, i64 0, metadata !254), !dbg !905
  call void @llvm.dbg.value(metadata !{i32* %nmtx}, i64 0, metadata !258), !dbg !905
  %113 = load i32* %nmtx, align 4, !dbg !905, !tbaa !431
  %cmp420 = icmp slt i32 %inc435, %113, !dbg !905
  br i1 %cmp420, label %for.body422, label %for.end436, !dbg !905

for.end436:                                       ; preds = %if.end429, %for.end417
  %call437 = call %struct._I2Ohash* @I2Ohash_new() #7, !dbg !915
  %upperhash = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 24, !dbg !915
  store %struct._I2Ohash* %call437, %struct._I2Ohash** %upperhash, align 8, !dbg !915, !tbaa !381
  %call438 = call i32 (%struct._IO_FILE*, i8*, ...)* @__isoc99_fscanf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([4 x i8]* @.str16, i64 0, i64 0), i32* %nmtx) #7, !dbg !916
  %114 = load %struct._I2Ohash** %upperhash, align 8, !dbg !917, !tbaa !381
  %sub440 = add nsw i32 %5, -1, !dbg !917
  call void @llvm.dbg.value(metadata !{i32* %nmtx}, i64 0, metadata !258), !dbg !917
  %115 = load i32* %nmtx, align 4, !dbg !917, !tbaa !431
  call void @I2Ohash_init(%struct._I2Ohash* %114, i32 %sub440, i32 %115, i32 0) #7, !dbg !917
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !255), !dbg !918
  call void @llvm.dbg.value(metadata !{i32* %nmtx}, i64 0, metadata !258), !dbg !918
  %116 = load i32* %nmtx, align 4, !dbg !918, !tbaa !431
  %cmp442714 = icmp sgt i32 %116, 0, !dbg !918
  br i1 %cmp442714, label %for.body444, label %cleanup, !dbg !918

for.body444:                                      ; preds = %for.end436, %if.end451
  %JK.0715 = phi i32 [ %inc456, %if.end451 ], [ 0, %for.end436 ]
  %call445 = call %struct._SubMtx* @SubMtx_new() #7, !dbg !920
  call void @llvm.dbg.value(metadata !{%struct._SubMtx* %call445}, i64 0, metadata !252), !dbg !920
  %call446 = call i32 @SubMtx_readFromFormattedFile(%struct._SubMtx* %call445, %struct._IO_FILE* %fp) #7, !dbg !922
  call void @llvm.dbg.value(metadata !{i32 %call446}, i64 0, metadata !259), !dbg !922
  %cmp447 = icmp eq i32 %call446, 1, !dbg !923
  br i1 %cmp447, label %if.end451, label %if.then449, !dbg !923

if.then449:                                       ; preds = %for.body444
  %117 = load %struct._IO_FILE** @stderr, align 8, !dbg !924, !tbaa !381
  %call450 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %117, i8* getelementptr inbounds ([97 x i8]* @.str21, i64 0, i64 0), %struct._FrontMtx* %frontmtx, %struct._IO_FILE* %fp, i32 %call446) #7, !dbg !924
  br label %cleanup, !dbg !926

if.end451:                                        ; preds = %for.body444
  %118 = load %struct._I2Ohash** %upperhash, align 8, !dbg !927, !tbaa !381
  %rowid453 = getelementptr inbounds %struct._SubMtx* %call445, i64 0, i32 2, !dbg !927
  %119 = load i32* %rowid453, align 4, !dbg !927, !tbaa !431
  %colid454 = getelementptr inbounds %struct._SubMtx* %call445, i64 0, i32 3, !dbg !927
  %120 = load i32* %colid454, align 4, !dbg !927, !tbaa !431
  %121 = bitcast %struct._SubMtx* %call445 to i8*, !dbg !927
  call void @I2Ohash_insert(%struct._I2Ohash* %118, i32 %119, i32 %120, i8* %121) #7, !dbg !927
  %inc456 = add nsw i32 %JK.0715, 1, !dbg !918
  call void @llvm.dbg.value(metadata !{i32 %inc456}, i64 0, metadata !255), !dbg !918
  call void @llvm.dbg.value(metadata !{i32* %nmtx}, i64 0, metadata !258), !dbg !918
  %122 = load i32* %nmtx, align 4, !dbg !918, !tbaa !431
  %cmp442 = icmp slt i32 %inc456, %122, !dbg !918
  br i1 %cmp442, label %for.body444, label %cleanup, !dbg !918

cleanup:                                          ; preds = %for.end436, %if.end451, %for.end311, %if.end323, %if.then449, %if.then427, %if.then372, %if.then354, %if.then343, %if.then321, %if.then302, %if.then284, %if.then264, %if.then246, %if.then74, %if.then64, %if.then42, %if.then32, %if.then21, %if.then4, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %if.then4 ], [ 0, %if.then21 ], [ 0, %if.then32 ], [ 0, %if.then42 ], [ 0, %if.then64 ], [ 0, %if.then74 ], [ 0, %if.then246 ], [ 0, %if.then264 ], [ 0, %if.then284 ], [ 0, %if.then302 ], [ 0, %if.then321 ], [ 0, %if.then343 ], [ 0, %if.then354 ], [ 0, %if.then372 ], [ 0, %if.then427 ], [ 0, %if.then449 ], [ 1, %if.end323 ], [ 1, %for.end311 ], [ 1, %if.end451 ], [ 1, %for.end436 ]
  call void @llvm.lifetime.end(i64 40, i8* %0) #4, !dbg !928
  ret i32 %retval.0, !dbg !928
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #4

; Function Attrs: optsize
declare void @FrontMtx_clearData(%struct._FrontMtx*) #5

; Function Attrs: optsize
declare i32 @IVfscanf(%struct._IO_FILE*, i32, i32*) #5

; Function Attrs: optsize
declare %struct._ETree* @ETree_new() #5

; Function Attrs: optsize
declare i32 @ETree_readFromFormattedFile(%struct._ETree*, %struct._IO_FILE*) #5

; Function Attrs: optsize
declare %struct._IVL* @IVL_new() #5

; Function Attrs: optsize
declare i32 @IVL_readFromFormattedFile(%struct._IVL*, %struct._IO_FILE*) #5

; Function Attrs: optsize
declare %struct._IV* @IV_new() #5

; Function Attrs: optsize
declare i32 @IV_readFromFormattedFile(%struct._IV*, %struct._IO_FILE*) #5

; Function Attrs: optsize
declare void @IV_init(%struct._IV*, i32, i32*) #5

; Function Attrs: optsize
declare void @IVcopy(i32, i32*, i32*) #5

; Function Attrs: optsize
declare i32* @IV_entries(%struct._IV*) #5

; Function Attrs: optsize
declare i32* @ETree_nodwghts(%struct._ETree*) #5

; Function Attrs: nounwind optsize
declare i32 @fflush(%struct._IO_FILE* nocapture) #2

; Function Attrs: nounwind optsize
declare noalias i8* @malloc(i64) #2

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32) #6

; Function Attrs: optsize
declare i32 @__isoc99_fscanf(%struct._IO_FILE*, i8*, ...) #5

; Function Attrs: optsize
declare %struct._SubMtx* @SubMtx_new() #5

; Function Attrs: optsize
declare i32 @SubMtx_readFromFormattedFile(%struct._SubMtx*, %struct._IO_FILE*) #5

; Function Attrs: optsize
declare %struct._I2Ohash* @I2Ohash_new() #5

; Function Attrs: optsize
declare void @I2Ohash_init(%struct._I2Ohash*, i32, i32, i32) #5

; Function Attrs: optsize
declare void @I2Ohash_insert(%struct._I2Ohash*, i32, i32, i8*) #5

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #4

; Function Attrs: nounwind optsize
declare i64 @fread(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #2

; Function Attrs: optsize
declare i32 @ETree_readFromBinaryFile(%struct._ETree*, %struct._IO_FILE*) #5

; Function Attrs: optsize
declare i32 @IVL_readFromBinaryFile(%struct._IVL*, %struct._IO_FILE*) #5

; Function Attrs: optsize
declare i32 @IV_readFromBinaryFile(%struct._IV*, %struct._IO_FILE*) #5

; Function Attrs: optsize
declare i32 @SubMtx_readFromBinaryFile(%struct._SubMtx*, %struct._IO_FILE*) #5

; Function Attrs: nounwind optsize uwtable
define i32 @FrontMtx_writeToFile(%struct._FrontMtx* %frontmtx, i8* %fn) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._FrontMtx* %frontmtx}, i64 0, metadata !279), !dbg !929
  tail call void @llvm.dbg.value(metadata !{i8* %fn}, i64 0, metadata !280), !dbg !930
  %cmp = icmp eq %struct._FrontMtx* %frontmtx, null, !dbg !931
  %cmp1 = icmp eq i8* %fn, null, !dbg !931
  %or.cond = or i1 %cmp, %cmp1, !dbg !931
  br i1 %or.cond, label %if.then, label %if.end, !dbg !931

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !932, !tbaa !381
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([57 x i8]* @.str34, i64 0, i64 0), %struct._FrontMtx* %frontmtx, i8* %fn) #7, !dbg !932
  br label %if.end, !dbg !934

if.end:                                           ; preds = %entry, %if.then
  %call2 = tail call i64 @strlen(i8* %fn) #8, !dbg !935
  %conv = trunc i64 %call2 to i32, !dbg !935
  tail call void @llvm.dbg.value(metadata !{i32 %conv}, i64 0, metadata !282), !dbg !935
  tail call void @llvm.dbg.value(metadata !386, i64 0, metadata !284), !dbg !936
  %cmp5 = icmp sgt i32 %conv, 10, !dbg !937
  br i1 %cmp5, label %if.then7, label %if.else49, !dbg !937

if.then7:                                         ; preds = %if.end
  %sub = shl i64 %call2, 32, !dbg !938
  %sext = add i64 %sub, -42949672960, !dbg !938
  %idxprom = ashr exact i64 %sext, 32, !dbg !938
  %arrayidx = getelementptr inbounds i8* %fn, i64 %idxprom, !dbg !938
  %call8 = tail call i32 @strcmp(i8* %arrayidx, i8* getelementptr inbounds ([11 x i8]* @.str98, i64 0, i64 0)) #8, !dbg !938
  %cmp9 = icmp eq i32 %call8, 0, !dbg !938
  br i1 %cmp9, label %if.then11, label %if.else20, !dbg !938

if.then11:                                        ; preds = %if.then7
  %call12 = tail call %struct._IO_FILE* @fopen(i8* %fn, i8* getelementptr inbounds ([3 x i8]* @.str35, i64 0, i64 0)) #7, !dbg !940
  tail call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %call12}, i64 0, metadata !281), !dbg !940
  %cmp13 = icmp eq %struct._IO_FILE* %call12, null, !dbg !940
  br i1 %cmp13, label %if.then15, label %if.else, !dbg !940

if.then15:                                        ; preds = %if.then11
  %1 = load %struct._IO_FILE** @stderr, align 8, !dbg !942, !tbaa !381
  %call16 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([63 x i8]* @.str36, i64 0, i64 0), %struct._FrontMtx* %frontmtx, i8* %fn, i8* %fn) #7, !dbg !942
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !283), !dbg !944
  br label %if.end59, !dbg !945

if.else:                                          ; preds = %if.then11
  %call17 = tail call i32 @FrontMtx_writeToBinaryFile(%struct._FrontMtx* %frontmtx, %struct._IO_FILE* %call12) #9, !dbg !946
  tail call void @llvm.dbg.value(metadata !{i32 %call17}, i64 0, metadata !283), !dbg !946
  %call18 = tail call i32 @fclose(%struct._IO_FILE* %call12) #7, !dbg !948
  br label %if.end59

if.else20:                                        ; preds = %if.then7
  %call24 = tail call i32 @strcmp(i8* %arrayidx, i8* getelementptr inbounds ([11 x i8]* @.str97, i64 0, i64 0)) #8, !dbg !949
  %cmp25 = icmp eq i32 %call24, 0, !dbg !949
  br i1 %cmp25, label %if.then27, label %if.else37, !dbg !949

if.then27:                                        ; preds = %if.else20
  %call28 = tail call %struct._IO_FILE* @fopen(i8* %fn, i8* getelementptr inbounds ([2 x i8]* @.str37, i64 0, i64 0)) #7, !dbg !950
  tail call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %call28}, i64 0, metadata !281), !dbg !950
  %cmp29 = icmp eq %struct._IO_FILE* %call28, null, !dbg !950
  br i1 %cmp29, label %if.then31, label %if.else33, !dbg !950

if.then31:                                        ; preds = %if.then27
  %2 = load %struct._IO_FILE** @stderr, align 8, !dbg !952, !tbaa !381
  %call32 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([63 x i8]* @.str36, i64 0, i64 0), %struct._FrontMtx* %frontmtx, i8* %fn, i8* %fn) #7, !dbg !952
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !283), !dbg !954
  br label %if.end59, !dbg !955

if.else33:                                        ; preds = %if.then27
  %call34 = tail call i32 @FrontMtx_writeToFormattedFile(%struct._FrontMtx* %frontmtx, %struct._IO_FILE* %call28) #9, !dbg !956
  tail call void @llvm.dbg.value(metadata !{i32 %call34}, i64 0, metadata !283), !dbg !956
  %call35 = tail call i32 @fclose(%struct._IO_FILE* %call28) #7, !dbg !958
  br label %if.end59

if.else37:                                        ; preds = %if.else20
  %call38 = tail call %struct._IO_FILE* @fopen(i8* %fn, i8* getelementptr inbounds ([2 x i8]* @.str38, i64 0, i64 0)) #7, !dbg !959
  tail call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %call38}, i64 0, metadata !281), !dbg !959
  %cmp39 = icmp eq %struct._IO_FILE* %call38, null, !dbg !959
  br i1 %cmp39, label %if.then41, label %if.else43, !dbg !959

if.then41:                                        ; preds = %if.else37
  %3 = load %struct._IO_FILE** @stderr, align 8, !dbg !961, !tbaa !381
  %call42 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([63 x i8]* @.str36, i64 0, i64 0), %struct._FrontMtx* %frontmtx, i8* %fn, i8* %fn) #7, !dbg !961
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !283), !dbg !963
  br label %if.end59, !dbg !964

if.else43:                                        ; preds = %if.else37
  %call44 = tail call i32 @FrontMtx_writeForHumanEye(%struct._FrontMtx* %frontmtx, %struct._IO_FILE* %call38) #9, !dbg !965
  tail call void @llvm.dbg.value(metadata !967, i64 0, metadata !283), !dbg !965
  %call45 = tail call i32 @fclose(%struct._IO_FILE* %call38) #7, !dbg !968
  br label %if.end59

if.else49:                                        ; preds = %if.end
  %call50 = tail call %struct._IO_FILE* @fopen(i8* %fn, i8* getelementptr inbounds ([2 x i8]* @.str38, i64 0, i64 0)) #7, !dbg !969
  tail call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %call50}, i64 0, metadata !281), !dbg !969
  %cmp51 = icmp eq %struct._IO_FILE* %call50, null, !dbg !969
  br i1 %cmp51, label %if.then53, label %if.else55, !dbg !969

if.then53:                                        ; preds = %if.else49
  %4 = load %struct._IO_FILE** @stderr, align 8, !dbg !971, !tbaa !381
  %call54 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([63 x i8]* @.str36, i64 0, i64 0), %struct._FrontMtx* %frontmtx, i8* %fn, i8* %fn) #7, !dbg !971
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !283), !dbg !973
  br label %if.end59, !dbg !974

if.else55:                                        ; preds = %if.else49
  %call56 = tail call i32 @FrontMtx_writeForHumanEye(%struct._FrontMtx* %frontmtx, %struct._IO_FILE* %call50) #9, !dbg !975
  tail call void @llvm.dbg.value(metadata !967, i64 0, metadata !283), !dbg !975
  %call57 = tail call i32 @fclose(%struct._IO_FILE* %call50) #7, !dbg !977
  br label %if.end59

if.end59:                                         ; preds = %if.then53, %if.else55, %if.else, %if.then15, %if.then41, %if.else43, %if.then31, %if.else33
  %rc.0 = phi i32 [ 0, %if.then15 ], [ %call17, %if.else ], [ 0, %if.then31 ], [ %call34, %if.else33 ], [ 0, %if.then41 ], [ 1, %if.else43 ], [ 0, %if.then53 ], [ 1, %if.else55 ]
  ret i32 %rc.0, !dbg !978
}

; Function Attrs: nounwind optsize uwtable
define i32 @FrontMtx_writeToBinaryFile(%struct._FrontMtx* %frontmtx, %struct._IO_FILE* %fp) #0 {
entry:
  %nadj = alloca i32, align 4
  %nmtx = alloca i32, align 4
  %adj = alloca i32*, align 8
  %itemp = alloca [10 x i32], align 16
  call void @llvm.dbg.value(metadata !{%struct._FrontMtx* %frontmtx}, i64 0, metadata !300), !dbg !979
  call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %fp}, i64 0, metadata !301), !dbg !980
  call void @llvm.dbg.declare(metadata !{i32* %nadj}, metadata !306), !dbg !981
  call void @llvm.dbg.declare(metadata !{i32* %nmtx}, metadata !308), !dbg !981
  call void @llvm.dbg.declare(metadata !{i32** %adj}, metadata !310), !dbg !982
  %0 = bitcast [10 x i32]* %itemp to i8*, !dbg !983
  call void @llvm.lifetime.start(i64 40, i8* %0) #4, !dbg !983
  call void @llvm.dbg.declare(metadata !{[10 x i32]* %itemp}, metadata !311), !dbg !983
  %cmp = icmp eq %struct._FrontMtx* %frontmtx, null, !dbg !984
  %cmp1 = icmp eq %struct._IO_FILE* %fp, null, !dbg !984
  %or.cond = or i1 %cmp, %cmp1, !dbg !984
  br i1 %or.cond, label %if.then, label %if.end, !dbg !984

if.then:                                          ; preds = %entry
  %1 = load %struct._IO_FILE** @stderr, align 8, !dbg !985, !tbaa !381
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([63 x i8]* @.str50, i64 0, i64 0), %struct._FrontMtx* %frontmtx, %struct._IO_FILE* %fp) #7, !dbg !985
  call void @exit(i32 -1) #10, !dbg !987
  unreachable, !dbg !987

if.end:                                           ; preds = %entry
  %nfront2 = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 0, !dbg !988
  %2 = load i32* %nfront2, align 4, !dbg !988, !tbaa !431
  call void @llvm.dbg.value(metadata !{i32 %2}, i64 0, metadata !307), !dbg !988
  %arrayidx = getelementptr inbounds [10 x i32]* %itemp, i64 0, i64 0, !dbg !988
  store i32 %2, i32* %arrayidx, align 16, !dbg !988, !tbaa !431
  %neqns = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 1, !dbg !989
  %3 = load i32* %neqns, align 4, !dbg !989, !tbaa !431
  %arrayidx3 = getelementptr inbounds [10 x i32]* %itemp, i64 0, i64 1, !dbg !989
  store i32 %3, i32* %arrayidx3, align 4, !dbg !989, !tbaa !431
  %type = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 2, !dbg !990
  %4 = load i32* %type, align 4, !dbg !990, !tbaa !431
  %arrayidx4 = getelementptr inbounds [10 x i32]* %itemp, i64 0, i64 2, !dbg !990
  store i32 %4, i32* %arrayidx4, align 8, !dbg !990, !tbaa !431
  %symmetryflag = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 3, !dbg !991
  %5 = load i32* %symmetryflag, align 4, !dbg !991, !tbaa !431
  %arrayidx5 = getelementptr inbounds [10 x i32]* %itemp, i64 0, i64 3, !dbg !991
  store i32 %5, i32* %arrayidx5, align 4, !dbg !991, !tbaa !431
  %pivotingflag = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 5, !dbg !992
  %6 = load i32* %pivotingflag, align 4, !dbg !992, !tbaa !431
  %arrayidx6 = getelementptr inbounds [10 x i32]* %itemp, i64 0, i64 4, !dbg !992
  store i32 %6, i32* %arrayidx6, align 16, !dbg !992, !tbaa !431
  %sparsityflag = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 4, !dbg !993
  %7 = load i32* %sparsityflag, align 4, !dbg !993, !tbaa !431
  %arrayidx7 = getelementptr inbounds [10 x i32]* %itemp, i64 0, i64 5, !dbg !993
  store i32 %7, i32* %arrayidx7, align 4, !dbg !993, !tbaa !431
  %dataMode = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 6, !dbg !994
  %8 = load i32* %dataMode, align 4, !dbg !994, !tbaa !431
  %arrayidx8 = getelementptr inbounds [10 x i32]* %itemp, i64 0, i64 6, !dbg !994
  store i32 %8, i32* %arrayidx8, align 8, !dbg !994, !tbaa !431
  %nentD = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 7, !dbg !995
  %9 = load i32* %nentD, align 4, !dbg !995, !tbaa !431
  %arrayidx9 = getelementptr inbounds [10 x i32]* %itemp, i64 0, i64 7, !dbg !995
  store i32 %9, i32* %arrayidx9, align 4, !dbg !995, !tbaa !431
  %nentL = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 8, !dbg !996
  %10 = load i32* %nentL, align 4, !dbg !996, !tbaa !431
  %arrayidx10 = getelementptr inbounds [10 x i32]* %itemp, i64 0, i64 8, !dbg !996
  store i32 %10, i32* %arrayidx10, align 16, !dbg !996, !tbaa !431
  %nentU = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 9, !dbg !997
  %11 = load i32* %nentU, align 4, !dbg !997, !tbaa !431
  %arrayidx11 = getelementptr inbounds [10 x i32]* %itemp, i64 0, i64 9, !dbg !997
  store i32 %11, i32* %arrayidx11, align 4, !dbg !997, !tbaa !431
  %call12 = call i64 @fwrite(i8* %0, i64 4, i64 10, %struct._IO_FILE* %fp) #7, !dbg !998
  %conv = trunc i64 %call12 to i32, !dbg !998
  call void @llvm.dbg.value(metadata !{i32 %conv}, i64 0, metadata !309), !dbg !998
  %cmp13 = icmp slt i32 %conv, 0, !dbg !999
  br i1 %cmp13, label %if.then15, label %if.end17, !dbg !999

if.then15:                                        ; preds = %if.end
  %12 = load %struct._IO_FILE** @stderr, align 8, !dbg !1000, !tbaa !381
  %call16 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %12, i8* getelementptr inbounds ([88 x i8]* @.str51, i64 0, i64 0), %struct._FrontMtx* %frontmtx, %struct._IO_FILE* %fp, i32 %conv) #7, !dbg !1000
  br label %cleanup, !dbg !1002

if.end17:                                         ; preds = %if.end
  %frontETree = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 11, !dbg !1003
  %13 = load %struct._ETree** %frontETree, align 8, !dbg !1003, !tbaa !381
  %call18 = call i32 @ETree_writeToBinaryFile(%struct._ETree* %13, %struct._IO_FILE* %fp) #7, !dbg !1003
  call void @llvm.dbg.value(metadata !{i32 %call18}, i64 0, metadata !309), !dbg !1003
  %cmp19 = icmp eq i32 %call18, 1, !dbg !1004
  br i1 %cmp19, label %if.end23, label %if.then21, !dbg !1004

if.then21:                                        ; preds = %if.end17
  %14 = load %struct._IO_FILE** @stderr, align 8, !dbg !1005, !tbaa !381
  %call22 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %14, i8* getelementptr inbounds ([88 x i8]* @.str52, i64 0, i64 0), %struct._FrontMtx* %frontmtx, %struct._IO_FILE* %fp, i32 %call18) #7, !dbg !1005
  br label %cleanup, !dbg !1007

if.end23:                                         ; preds = %if.end17
  %symbfacIVL = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 13, !dbg !1008
  %15 = load %struct._IVL** %symbfacIVL, align 8, !dbg !1008, !tbaa !381
  %call24 = call i32 @IVL_writeToBinaryFile(%struct._IVL* %15, %struct._IO_FILE* %fp) #7, !dbg !1008
  call void @llvm.dbg.value(metadata !{i32 %call24}, i64 0, metadata !309), !dbg !1008
  %cmp25 = icmp eq i32 %call24, 1, !dbg !1009
  br i1 %cmp25, label %if.end29, label %if.then27, !dbg !1009

if.then27:                                        ; preds = %if.end23
  %16 = load %struct._IO_FILE** @stderr, align 8, !dbg !1010, !tbaa !381
  %call28 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %16, i8* getelementptr inbounds ([88 x i8]* @.str53, i64 0, i64 0), %struct._FrontMtx* %frontmtx, %struct._IO_FILE* %fp, i32 %call24) #7, !dbg !1010
  br label %cleanup, !dbg !1012

if.end29:                                         ; preds = %if.end23
  %17 = load i32* %pivotingflag, align 4, !dbg !1013, !tbaa !431
  %cmp31 = icmp eq i32 %17, 1, !dbg !1013
  br i1 %cmp31, label %if.then33, label %if.end62, !dbg !1013

if.then33:                                        ; preds = %if.end29
  %frontsizesIV = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 12, !dbg !1014
  %18 = load %struct._IV** %frontsizesIV, align 8, !dbg !1014, !tbaa !381
  %call34 = call i32 @IV_writeToBinaryFile(%struct._IV* %18, %struct._IO_FILE* %fp) #7, !dbg !1014
  call void @llvm.dbg.value(metadata !{i32 %call34}, i64 0, metadata !309), !dbg !1014
  %cmp35 = icmp eq i32 %call34, 1, !dbg !1016
  br i1 %cmp35, label %if.end40, label %if.then37, !dbg !1016

if.then37:                                        ; preds = %if.then33
  %19 = load %struct._IO_FILE** @stderr, align 8, !dbg !1017, !tbaa !381
  %call38 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %19, i8* getelementptr inbounds ([90 x i8]* @.str54, i64 0, i64 0), %struct._FrontMtx* %frontmtx, %struct._IO_FILE* %fp, i32 %call34) #7, !dbg !1017
  br label %cleanup, !dbg !1019

if.end40:                                         ; preds = %if.then33
  %.pr = load i32* %pivotingflag, align 4, !dbg !1020, !tbaa !431
  %cmp42 = icmp eq i32 %.pr, 1, !dbg !1020
  br i1 %cmp42, label %if.then44, label %if.end62, !dbg !1020

if.then44:                                        ; preds = %if.end40
  %20 = load i32* %symmetryflag, align 4, !dbg !1021, !tbaa !431
  %cmp46 = icmp eq i32 %20, 2, !dbg !1021
  br i1 %cmp46, label %if.then48, label %if.end55, !dbg !1021

if.then48:                                        ; preds = %if.then44
  %rowadjIVL = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 14, !dbg !1023
  %21 = load %struct._IVL** %rowadjIVL, align 8, !dbg !1023, !tbaa !381
  %call49 = call i32 @IVL_writeToBinaryFile(%struct._IVL* %21, %struct._IO_FILE* %fp) #7, !dbg !1023
  call void @llvm.dbg.value(metadata !{i32 %call49}, i64 0, metadata !309), !dbg !1023
  %cmp50 = icmp eq i32 %call49, 1, !dbg !1025
  br i1 %cmp50, label %if.end55, label %if.then52, !dbg !1025

if.then52:                                        ; preds = %if.then48
  %22 = load %struct._IO_FILE** @stderr, align 8, !dbg !1026, !tbaa !381
  %call53 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %22, i8* getelementptr inbounds ([87 x i8]* @.str55, i64 0, i64 0), %struct._FrontMtx* %frontmtx, %struct._IO_FILE* %fp, i32 %call49) #7, !dbg !1026
  br label %cleanup, !dbg !1028

if.end55:                                         ; preds = %if.then48, %if.then44
  %coladjIVL = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 15, !dbg !1029
  %23 = load %struct._IVL** %coladjIVL, align 8, !dbg !1029, !tbaa !381
  %call56 = call i32 @IVL_writeToBinaryFile(%struct._IVL* %23, %struct._IO_FILE* %fp) #7, !dbg !1029
  call void @llvm.dbg.value(metadata !{i32 %call56}, i64 0, metadata !309), !dbg !1029
  %cmp57 = icmp eq i32 %call56, 1, !dbg !1030
  br i1 %cmp57, label %if.end62, label %if.then59, !dbg !1030

if.then59:                                        ; preds = %if.end55
  %24 = load %struct._IO_FILE** @stderr, align 8, !dbg !1031, !tbaa !381
  %call60 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %24, i8* getelementptr inbounds ([87 x i8]* @.str56, i64 0, i64 0), %struct._FrontMtx* %frontmtx, %struct._IO_FILE* %fp, i32 %call56) #7, !dbg !1031
  br label %cleanup, !dbg !1033

if.end62:                                         ; preds = %if.end29, %if.end55, %if.end40
  %25 = load i32* %dataMode, align 4, !dbg !1034, !tbaa !431
  %cmp64 = icmp eq i32 %25, 1, !dbg !1034
  %26 = load i32* %symmetryflag, align 4, !dbg !1035, !tbaa !431
  %cmp68 = icmp eq i32 %26, 2, !dbg !1035
  br i1 %cmp64, label %if.then66, label %if.else, !dbg !1034

if.then66:                                        ; preds = %if.end62
  br i1 %cmp68, label %if.then70, label %if.end122, !dbg !1035

if.then70:                                        ; preds = %if.then66
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !308), !dbg !1037
  store i32 0, i32* %nmtx, align 4, !dbg !1037, !tbaa !431
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !304), !dbg !1037
  %cmp71573 = icmp sgt i32 %2, 0, !dbg !1037
  br i1 %cmp71573, label %for.body, label %for.end.thread, !dbg !1037

for.end.thread:                                   ; preds = %if.then70
  %27 = bitcast i32* %nmtx to i8*, !dbg !1040
  %call79611 = call i64 @fwrite(i8* %27, i64 4, i64 1, %struct._IO_FILE* %fp) #7, !dbg !1040
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !304), !dbg !1041
  br label %for.end93.thread, !dbg !1041

for.body:                                         ; preds = %if.then70, %for.inc
  %J.0574 = phi i32 [ %inc78, %for.inc ], [ 0, %if.then70 ]
  %call73 = call %struct._SubMtx* @FrontMtx_lowerMtx(%struct._FrontMtx* %frontmtx, i32 %J.0574, i32 %J.0574) #7, !dbg !1043
  call void @llvm.dbg.value(metadata !{%struct._SubMtx* %call73}, i64 0, metadata !302), !dbg !1043
  %cmp74 = icmp eq %struct._SubMtx* %call73, null, !dbg !1043
  br i1 %cmp74, label %for.inc, label %if.then76, !dbg !1043

if.then76:                                        ; preds = %for.body
  call void @llvm.dbg.value(metadata !{i32* %nmtx}, i64 0, metadata !308), !dbg !1045
  %28 = load i32* %nmtx, align 4, !dbg !1045, !tbaa !431
  %inc = add nsw i32 %28, 1, !dbg !1045
  call void @llvm.dbg.value(metadata !{i32 %inc}, i64 0, metadata !308), !dbg !1045
  store i32 %inc, i32* %nmtx, align 4, !dbg !1045, !tbaa !431
  br label %for.inc, !dbg !1047

for.inc:                                          ; preds = %for.body, %if.then76
  %inc78 = add nsw i32 %J.0574, 1, !dbg !1037
  call void @llvm.dbg.value(metadata !{i32 %inc78}, i64 0, metadata !304), !dbg !1037
  %exitcond604 = icmp eq i32 %inc78, %2, !dbg !1037
  br i1 %exitcond604, label %for.end, label %for.body, !dbg !1037

for.end:                                          ; preds = %for.inc
  %29 = bitcast i32* %nmtx to i8*, !dbg !1040
  %call79 = call i64 @fwrite(i8* %29, i64 4, i64 1, %struct._IO_FILE* %fp) #7, !dbg !1040
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !304), !dbg !1041
  br i1 %cmp71573, label %for.body84, label %for.end93.thread, !dbg !1041

for.body84:                                       ; preds = %for.end, %for.inc91
  %J.1572 = phi i32 [ %inc92, %for.inc91 ], [ 0, %for.end ]
  %call85 = call %struct._SubMtx* @FrontMtx_lowerMtx(%struct._FrontMtx* %frontmtx, i32 %J.1572, i32 %J.1572) #7, !dbg !1048
  call void @llvm.dbg.value(metadata !{%struct._SubMtx* %call85}, i64 0, metadata !302), !dbg !1048
  %cmp86 = icmp eq %struct._SubMtx* %call85, null, !dbg !1048
  br i1 %cmp86, label %for.inc91, label %if.then88, !dbg !1048

if.then88:                                        ; preds = %for.body84
  %call89 = call i32 @SubMtx_writeToBinaryFile(%struct._SubMtx* %call85, %struct._IO_FILE* %fp) #7, !dbg !1050
  br label %for.inc91, !dbg !1052

for.inc91:                                        ; preds = %for.body84, %if.then88
  %inc92 = add nsw i32 %J.1572, 1, !dbg !1041
  call void @llvm.dbg.value(metadata !{i32 %inc92}, i64 0, metadata !304), !dbg !1041
  %exitcond603 = icmp eq i32 %inc92, %2, !dbg !1041
  br i1 %exitcond603, label %for.end93, label %for.body84, !dbg !1041

for.end93.thread:                                 ; preds = %for.end.thread, %for.end
  %.ph = phi i8* [ %27, %for.end.thread ], [ %29, %for.end ]
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !308), !dbg !1053
  store i32 0, i32* %nmtx, align 4, !dbg !1053, !tbaa !431
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !304), !dbg !1053
  br label %for.end106, !dbg !1053

for.end93:                                        ; preds = %for.inc91
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !308), !dbg !1053
  store i32 0, i32* %nmtx, align 4, !dbg !1053, !tbaa !431
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !304), !dbg !1053
  br i1 %cmp71573, label %for.body97, label %for.end106.thread, !dbg !1053

for.end106.thread:                                ; preds = %for.end93
  %call107612 = call i64 @fwrite(i8* %29, i64 4, i64 1, %struct._IO_FILE* %fp) #7, !dbg !1055
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !304), !dbg !1056
  br label %for.end150.thread, !dbg !1056

for.body97:                                       ; preds = %for.end93, %for.inc104
  %J.2570 = phi i32 [ %inc105, %for.inc104 ], [ 0, %for.end93 ]
  %call98 = call %struct._SubMtx* @FrontMtx_lowerMtx(%struct._FrontMtx* %frontmtx, i32 %2, i32 %J.2570) #7, !dbg !1058
  call void @llvm.dbg.value(metadata !{%struct._SubMtx* %call98}, i64 0, metadata !302), !dbg !1058
  %cmp99 = icmp eq %struct._SubMtx* %call98, null, !dbg !1058
  br i1 %cmp99, label %for.inc104, label %if.then101, !dbg !1058

if.then101:                                       ; preds = %for.body97
  call void @llvm.dbg.value(metadata !{i32* %nmtx}, i64 0, metadata !308), !dbg !1060
  %30 = load i32* %nmtx, align 4, !dbg !1060, !tbaa !431
  %inc102 = add nsw i32 %30, 1, !dbg !1060
  call void @llvm.dbg.value(metadata !{i32 %inc102}, i64 0, metadata !308), !dbg !1060
  store i32 %inc102, i32* %nmtx, align 4, !dbg !1060, !tbaa !431
  br label %for.inc104, !dbg !1062

for.inc104:                                       ; preds = %for.body97, %if.then101
  %inc105 = add nsw i32 %J.2570, 1, !dbg !1053
  call void @llvm.dbg.value(metadata !{i32 %inc105}, i64 0, metadata !304), !dbg !1053
  %exitcond602 = icmp eq i32 %inc105, %2, !dbg !1053
  br i1 %exitcond602, label %for.end106, label %for.body97, !dbg !1053

for.end106:                                       ; preds = %for.inc104, %for.end93.thread
  %31 = phi i8* [ %.ph, %for.end93.thread ], [ %29, %for.inc104 ]
  %call107 = call i64 @fwrite(i8* %31, i64 4, i64 1, %struct._IO_FILE* %fp) #7, !dbg !1055
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !304), !dbg !1056
  br i1 %cmp71573, label %for.body112, label %for.end150.thread, !dbg !1056

for.body112:                                      ; preds = %for.end106, %for.inc119
  %J.3568 = phi i32 [ %inc120, %for.inc119 ], [ 0, %for.end106 ]
  %call113 = call %struct._SubMtx* @FrontMtx_lowerMtx(%struct._FrontMtx* %frontmtx, i32 %2, i32 %J.3568) #7, !dbg !1063
  call void @llvm.dbg.value(metadata !{%struct._SubMtx* %call113}, i64 0, metadata !302), !dbg !1063
  %cmp114 = icmp eq %struct._SubMtx* %call113, null, !dbg !1063
  br i1 %cmp114, label %for.inc119, label %if.then116, !dbg !1063

if.then116:                                       ; preds = %for.body112
  %call117 = call i32 @SubMtx_writeToBinaryFile(%struct._SubMtx* %call113, %struct._IO_FILE* %fp) #7, !dbg !1065
  br label %for.inc119, !dbg !1067

for.inc119:                                       ; preds = %for.body112, %if.then116
  %inc120 = add nsw i32 %J.3568, 1, !dbg !1056
  call void @llvm.dbg.value(metadata !{i32 %inc120}, i64 0, metadata !304), !dbg !1056
  %exitcond601 = icmp eq i32 %inc120, %2, !dbg !1056
  br i1 %exitcond601, label %if.end122, label %for.body112, !dbg !1056

if.end122:                                        ; preds = %for.inc119, %if.then66
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !308), !dbg !1068
  store i32 0, i32* %nmtx, align 4, !dbg !1068, !tbaa !431
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !304), !dbg !1068
  %cmp124565 = icmp sgt i32 %2, 0, !dbg !1068
  br i1 %cmp124565, label %for.body126, label %for.end135.thread, !dbg !1068

for.end135.thread:                                ; preds = %if.end122
  %32 = bitcast i32* %nmtx to i8*, !dbg !1070
  %call136615 = call i64 @fwrite(i8* %32, i64 4, i64 1, %struct._IO_FILE* %fp) #7, !dbg !1070
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !304), !dbg !1071
  br label %for.end178.thread, !dbg !1071

for.body126:                                      ; preds = %if.end122, %for.inc133
  %J.4566 = phi i32 [ %inc134, %for.inc133 ], [ 0, %if.end122 ]
  %call127 = call %struct._SubMtx* @FrontMtx_diagMtx(%struct._FrontMtx* %frontmtx, i32 %J.4566) #7, !dbg !1073
  call void @llvm.dbg.value(metadata !{%struct._SubMtx* %call127}, i64 0, metadata !302), !dbg !1073
  %cmp128 = icmp eq %struct._SubMtx* %call127, null, !dbg !1073
  br i1 %cmp128, label %for.inc133, label %if.then130, !dbg !1073

if.then130:                                       ; preds = %for.body126
  call void @llvm.dbg.value(metadata !{i32* %nmtx}, i64 0, metadata !308), !dbg !1075
  %33 = load i32* %nmtx, align 4, !dbg !1075, !tbaa !431
  %inc131 = add nsw i32 %33, 1, !dbg !1075
  call void @llvm.dbg.value(metadata !{i32 %inc131}, i64 0, metadata !308), !dbg !1075
  store i32 %inc131, i32* %nmtx, align 4, !dbg !1075, !tbaa !431
  br label %for.inc133, !dbg !1077

for.inc133:                                       ; preds = %for.body126, %if.then130
  %inc134 = add nsw i32 %J.4566, 1, !dbg !1068
  call void @llvm.dbg.value(metadata !{i32 %inc134}, i64 0, metadata !304), !dbg !1068
  %exitcond600 = icmp eq i32 %inc134, %2, !dbg !1068
  br i1 %exitcond600, label %for.end135, label %for.body126, !dbg !1068

for.end135:                                       ; preds = %for.inc133
  %34 = bitcast i32* %nmtx to i8*, !dbg !1070
  %call136 = call i64 @fwrite(i8* %34, i64 4, i64 1, %struct._IO_FILE* %fp) #7, !dbg !1070
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !304), !dbg !1071
  br i1 %cmp124565, label %for.body141, label %for.end178.thread, !dbg !1071

for.body141:                                      ; preds = %for.end135, %for.inc148
  %J.5564 = phi i32 [ %inc149, %for.inc148 ], [ 0, %for.end135 ]
  %call142 = call %struct._SubMtx* @FrontMtx_diagMtx(%struct._FrontMtx* %frontmtx, i32 %J.5564) #7, !dbg !1078
  call void @llvm.dbg.value(metadata !{%struct._SubMtx* %call142}, i64 0, metadata !302), !dbg !1078
  %cmp143 = icmp eq %struct._SubMtx* %call142, null, !dbg !1078
  br i1 %cmp143, label %for.inc148, label %if.then145, !dbg !1078

if.then145:                                       ; preds = %for.body141
  %call146 = call i32 @SubMtx_writeToBinaryFile(%struct._SubMtx* %call142, %struct._IO_FILE* %fp) #7, !dbg !1080
  br label %for.inc148, !dbg !1082

for.inc148:                                       ; preds = %for.body141, %if.then145
  %inc149 = add nsw i32 %J.5564, 1, !dbg !1071
  call void @llvm.dbg.value(metadata !{i32 %inc149}, i64 0, metadata !304), !dbg !1071
  %exitcond599 = icmp eq i32 %inc149, %2, !dbg !1071
  br i1 %exitcond599, label %for.end150, label %for.body141, !dbg !1071

for.end150.thread:                                ; preds = %for.end106.thread, %for.end106
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !308), !dbg !1068
  store i32 0, i32* %nmtx, align 4, !dbg !1068, !tbaa !431
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !304), !dbg !1068
  %35 = bitcast i32* %nmtx to i8*, !dbg !1070
  %call136617 = call i64 @fwrite(i8* %35, i64 4, i64 1, %struct._IO_FILE* %fp) #7, !dbg !1070
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !304), !dbg !1071
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !308), !dbg !1083
  store i32 0, i32* %nmtx, align 4, !dbg !1083, !tbaa !431
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !304), !dbg !1083
  %call164623 = call i64 @fwrite(i8* %35, i64 4, i64 1, %struct._IO_FILE* %fp) #7, !dbg !1085
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !304), !dbg !1086
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !308), !dbg !1088
  store i32 0, i32* %nmtx, align 4, !dbg !1088, !tbaa !431
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !304), !dbg !1088
  %call192628633 = call i64 @fwrite(i8* %35, i64 4, i64 1, %struct._IO_FILE* %fp) #7, !dbg !1090
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !304), !dbg !1091
  br label %cleanup

for.end150:                                       ; preds = %for.inc148
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !308), !dbg !1083
  store i32 0, i32* %nmtx, align 4, !dbg !1083, !tbaa !431
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !304), !dbg !1083
  br label %for.body154, !dbg !1083

for.body154:                                      ; preds = %for.end150, %for.inc161
  %J.6562 = phi i32 [ %inc162, %for.inc161 ], [ 0, %for.end150 ]
  %call155 = call %struct._SubMtx* @FrontMtx_upperMtx(%struct._FrontMtx* %frontmtx, i32 %J.6562, i32 %J.6562) #7, !dbg !1093
  call void @llvm.dbg.value(metadata !{%struct._SubMtx* %call155}, i64 0, metadata !302), !dbg !1093
  %cmp156 = icmp eq %struct._SubMtx* %call155, null, !dbg !1093
  br i1 %cmp156, label %for.inc161, label %if.then158, !dbg !1093

if.then158:                                       ; preds = %for.body154
  call void @llvm.dbg.value(metadata !{i32* %nmtx}, i64 0, metadata !308), !dbg !1095
  %36 = load i32* %nmtx, align 4, !dbg !1095, !tbaa !431
  %inc159 = add nsw i32 %36, 1, !dbg !1095
  call void @llvm.dbg.value(metadata !{i32 %inc159}, i64 0, metadata !308), !dbg !1095
  store i32 %inc159, i32* %nmtx, align 4, !dbg !1095, !tbaa !431
  br label %for.inc161, !dbg !1097

for.inc161:                                       ; preds = %for.body154, %if.then158
  %inc162 = add nsw i32 %J.6562, 1, !dbg !1083
  call void @llvm.dbg.value(metadata !{i32 %inc162}, i64 0, metadata !304), !dbg !1083
  %exitcond598 = icmp eq i32 %inc162, %2, !dbg !1083
  br i1 %exitcond598, label %for.end163, label %for.body154, !dbg !1083

for.end163:                                       ; preds = %for.inc161
  %call164 = call i64 @fwrite(i8* %34, i64 4, i64 1, %struct._IO_FILE* %fp) #7, !dbg !1085
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !304), !dbg !1086
  br label %for.body169, !dbg !1086

for.body169:                                      ; preds = %for.inc176, %for.end163
  %J.7560 = phi i32 [ 0, %for.end163 ], [ %inc177, %for.inc176 ]
  %call170 = call %struct._SubMtx* @FrontMtx_upperMtx(%struct._FrontMtx* %frontmtx, i32 %J.7560, i32 %J.7560) #7, !dbg !1098
  call void @llvm.dbg.value(metadata !{%struct._SubMtx* %call170}, i64 0, metadata !302), !dbg !1098
  %cmp171 = icmp eq %struct._SubMtx* %call170, null, !dbg !1098
  br i1 %cmp171, label %for.inc176, label %if.then173, !dbg !1098

if.then173:                                       ; preds = %for.body169
  %call174 = call i32 @SubMtx_writeToBinaryFile(%struct._SubMtx* %call170, %struct._IO_FILE* %fp) #7, !dbg !1100
  br label %for.inc176, !dbg !1102

for.inc176:                                       ; preds = %for.body169, %if.then173
  %inc177 = add nsw i32 %J.7560, 1, !dbg !1086
  call void @llvm.dbg.value(metadata !{i32 %inc177}, i64 0, metadata !304), !dbg !1086
  %exitcond597 = icmp eq i32 %inc177, %2, !dbg !1086
  br i1 %exitcond597, label %for.end178, label %for.body169, !dbg !1086

for.end178.thread:                                ; preds = %for.end135.thread, %for.end135
  %.ph619.ph = phi i8* [ %32, %for.end135.thread ], [ %34, %for.end135 ]
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !308), !dbg !1083
  store i32 0, i32* %nmtx, align 4, !dbg !1083, !tbaa !431
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !304), !dbg !1083
  %call164623631 = call i64 @fwrite(i8* %.ph619.ph, i64 4, i64 1, %struct._IO_FILE* %fp) #7, !dbg !1085
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !304), !dbg !1086
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !308), !dbg !1088
  store i32 0, i32* %nmtx, align 4, !dbg !1088, !tbaa !431
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !304), !dbg !1088
  %call192628 = call i64 @fwrite(i8* %.ph619.ph, i64 4, i64 1, %struct._IO_FILE* %fp) #7, !dbg !1090
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !304), !dbg !1091
  br label %cleanup, !dbg !1091

for.end178:                                       ; preds = %for.inc176
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !308), !dbg !1088
  store i32 0, i32* %nmtx, align 4, !dbg !1088, !tbaa !431
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !304), !dbg !1088
  br label %for.body182, !dbg !1088

for.body182:                                      ; preds = %for.end178, %for.inc189
  %J.8558 = phi i32 [ %inc190, %for.inc189 ], [ 0, %for.end178 ]
  %call183 = call %struct._SubMtx* @FrontMtx_upperMtx(%struct._FrontMtx* %frontmtx, i32 %J.8558, i32 %2) #7, !dbg !1103
  call void @llvm.dbg.value(metadata !{%struct._SubMtx* %call183}, i64 0, metadata !302), !dbg !1103
  %cmp184 = icmp eq %struct._SubMtx* %call183, null, !dbg !1103
  br i1 %cmp184, label %for.inc189, label %if.then186, !dbg !1103

if.then186:                                       ; preds = %for.body182
  call void @llvm.dbg.value(metadata !{i32* %nmtx}, i64 0, metadata !308), !dbg !1105
  %37 = load i32* %nmtx, align 4, !dbg !1105, !tbaa !431
  %inc187 = add nsw i32 %37, 1, !dbg !1105
  call void @llvm.dbg.value(metadata !{i32 %inc187}, i64 0, metadata !308), !dbg !1105
  store i32 %inc187, i32* %nmtx, align 4, !dbg !1105, !tbaa !431
  br label %for.inc189, !dbg !1107

for.inc189:                                       ; preds = %for.body182, %if.then186
  %inc190 = add nsw i32 %J.8558, 1, !dbg !1088
  call void @llvm.dbg.value(metadata !{i32 %inc190}, i64 0, metadata !304), !dbg !1088
  %exitcond596 = icmp eq i32 %inc190, %2, !dbg !1088
  br i1 %exitcond596, label %for.end191, label %for.body182, !dbg !1088

for.end191:                                       ; preds = %for.inc189
  %call192 = call i64 @fwrite(i8* %34, i64 4, i64 1, %struct._IO_FILE* %fp) #7, !dbg !1090
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !304), !dbg !1091
  br label %for.body197, !dbg !1091

for.body197:                                      ; preds = %for.end191, %for.inc204
  %J.9556 = phi i32 [ %inc205, %for.inc204 ], [ 0, %for.end191 ]
  %call198 = call %struct._SubMtx* @FrontMtx_upperMtx(%struct._FrontMtx* %frontmtx, i32 %J.9556, i32 %2) #7, !dbg !1108
  call void @llvm.dbg.value(metadata !{%struct._SubMtx* %call198}, i64 0, metadata !302), !dbg !1108
  %cmp199 = icmp eq %struct._SubMtx* %call198, null, !dbg !1108
  br i1 %cmp199, label %for.inc204, label %if.then201, !dbg !1108

if.then201:                                       ; preds = %for.body197
  %call202 = call i32 @SubMtx_writeToBinaryFile(%struct._SubMtx* %call198, %struct._IO_FILE* %fp) #7, !dbg !1110
  br label %for.inc204, !dbg !1112

for.inc204:                                       ; preds = %for.body197, %if.then201
  %inc205 = add nsw i32 %J.9556, 1, !dbg !1091
  call void @llvm.dbg.value(metadata !{i32 %inc205}, i64 0, metadata !304), !dbg !1091
  %exitcond = icmp eq i32 %inc205, %2, !dbg !1091
  br i1 %exitcond, label %cleanup, label %for.body197, !dbg !1091

if.else:                                          ; preds = %if.end62
  br i1 %cmp68, label %if.then210, label %if.end217, !dbg !1113

if.then210:                                       ; preds = %if.else
  %lowerblockIVL = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 16, !dbg !1115
  %38 = load %struct._IVL** %lowerblockIVL, align 8, !dbg !1115, !tbaa !381
  %call211 = call i32 @IVL_writeToBinaryFile(%struct._IVL* %38, %struct._IO_FILE* %fp) #7, !dbg !1115
  call void @llvm.dbg.value(metadata !{i32 %call211}, i64 0, metadata !309), !dbg !1115
  %cmp212 = icmp eq i32 %call211, 1, !dbg !1117
  br i1 %cmp212, label %if.end217, label %if.then214, !dbg !1117

if.then214:                                       ; preds = %if.then210
  %39 = load %struct._IO_FILE** @stderr, align 8, !dbg !1118, !tbaa !381
  %call215 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %39, i8* getelementptr inbounds ([91 x i8]* @.str57, i64 0, i64 0), %struct._FrontMtx* %frontmtx, %struct._IO_FILE* %fp, i32 %call211) #7, !dbg !1118
  br label %cleanup, !dbg !1120

if.end217:                                        ; preds = %if.then210, %if.else
  %upperblockIVL = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 17, !dbg !1121
  %40 = load %struct._IVL** %upperblockIVL, align 8, !dbg !1121, !tbaa !381
  %call218 = call i32 @IVL_writeToBinaryFile(%struct._IVL* %40, %struct._IO_FILE* %fp) #7, !dbg !1121
  call void @llvm.dbg.value(metadata !{i32 %call218}, i64 0, metadata !309), !dbg !1121
  %cmp219 = icmp eq i32 %call218, 1, !dbg !1122
  br i1 %cmp219, label %if.end223, label %if.then221, !dbg !1122

if.then221:                                       ; preds = %if.end217
  %41 = load %struct._IO_FILE** @stderr, align 8, !dbg !1123, !tbaa !381
  %call222 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %41, i8* getelementptr inbounds ([91 x i8]* @.str58, i64 0, i64 0), %struct._FrontMtx* %frontmtx, %struct._IO_FILE* %fp, i32 %call218) #7, !dbg !1123
  br label %cleanup, !dbg !1125

if.end223:                                        ; preds = %if.end217
  %42 = load i32* %symmetryflag, align 4, !dbg !1126, !tbaa !431
  %cmp225 = icmp eq i32 %42, 2, !dbg !1126
  br i1 %cmp225, label %if.then227, label %if.end223.if.end277_crit_edge, !dbg !1126

if.end223.if.end277_crit_edge:                    ; preds = %if.end223
  %.pre = load i32* %nfront2, align 4, !dbg !1127, !tbaa !431
  br label %if.end277, !dbg !1126

if.then227:                                       ; preds = %if.end223
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !308), !dbg !1129
  store i32 0, i32* %nmtx, align 4, !dbg !1129, !tbaa !431
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !304), !dbg !1129
  %43 = load i32* %nfront2, align 4, !dbg !1129, !tbaa !431
  %cmp230594 = icmp sgt i32 %43, 0, !dbg !1129
  br i1 %cmp230594, label %for.body232.lr.ph, label %for.end250, !dbg !1129

for.body232.lr.ph:                                ; preds = %if.then227
  %lowerblockIVL233 = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 16, !dbg !1132
  br label %for.body232, !dbg !1129

for.body232:                                      ; preds = %for.body232.lr.ph, %for.inc248
  %J.10595 = phi i32 [ 0, %for.body232.lr.ph ], [ %inc249, %for.inc248 ]
  %44 = load %struct._IVL** %lowerblockIVL233, align 8, !dbg !1132, !tbaa !381
  call void @IVL_listAndSize(%struct._IVL* %44, i32 %J.10595, i32* %nadj, i32** %adj) #7, !dbg !1132
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !303), !dbg !1134
  call void @llvm.dbg.value(metadata !{i32* %nadj}, i64 0, metadata !306), !dbg !1134
  %45 = load i32* %nadj, align 4, !dbg !1134, !tbaa !431
  %cmp235592 = icmp sgt i32 %45, 0, !dbg !1134
  br i1 %cmp235592, label %for.body237, label %for.inc248, !dbg !1134

for.body237:                                      ; preds = %for.body232, %for.inc245
  %indvars.iv609 = phi i64 [ %indvars.iv.next610, %for.inc245 ], [ 0, %for.body232 ]
  call void @llvm.dbg.value(metadata !{i32** %adj}, i64 0, metadata !310), !dbg !1136
  %46 = load i32** %adj, align 8, !dbg !1136, !tbaa !381
  %arrayidx238 = getelementptr inbounds i32* %46, i64 %indvars.iv609, !dbg !1136
  %47 = load i32* %arrayidx238, align 4, !dbg !1136, !tbaa !431
  call void @llvm.dbg.value(metadata !{i32 %47}, i64 0, metadata !305), !dbg !1136
  %call239 = call %struct._SubMtx* @FrontMtx_lowerMtx(%struct._FrontMtx* %frontmtx, i32 %47, i32 %J.10595) #7, !dbg !1138
  call void @llvm.dbg.value(metadata !{%struct._SubMtx* %call239}, i64 0, metadata !302), !dbg !1138
  %cmp240 = icmp eq %struct._SubMtx* %call239, null, !dbg !1138
  br i1 %cmp240, label %for.inc245, label %if.then242, !dbg !1138

if.then242:                                       ; preds = %for.body237
  call void @llvm.dbg.value(metadata !{i32* %nmtx}, i64 0, metadata !308), !dbg !1139
  %48 = load i32* %nmtx, align 4, !dbg !1139, !tbaa !431
  %inc243 = add nsw i32 %48, 1, !dbg !1139
  call void @llvm.dbg.value(metadata !{i32 %inc243}, i64 0, metadata !308), !dbg !1139
  store i32 %inc243, i32* %nmtx, align 4, !dbg !1139, !tbaa !431
  br label %for.inc245, !dbg !1141

for.inc245:                                       ; preds = %for.body237, %if.then242
  %indvars.iv.next610 = add i64 %indvars.iv609, 1, !dbg !1134
  call void @llvm.dbg.value(metadata !{i32* %nadj}, i64 0, metadata !306), !dbg !1134
  %49 = load i32* %nadj, align 4, !dbg !1134, !tbaa !431
  %50 = trunc i64 %indvars.iv.next610 to i32, !dbg !1134
  %cmp235 = icmp slt i32 %50, %49, !dbg !1134
  br i1 %cmp235, label %for.body237, label %for.inc248, !dbg !1134

for.inc248:                                       ; preds = %for.inc245, %for.body232
  %inc249 = add nsw i32 %J.10595, 1, !dbg !1129
  call void @llvm.dbg.value(metadata !{i32 %inc249}, i64 0, metadata !304), !dbg !1129
  %51 = load i32* %nfront2, align 4, !dbg !1129, !tbaa !431
  %cmp230 = icmp slt i32 %inc249, %51, !dbg !1129
  br i1 %cmp230, label %for.body232, label %for.end250, !dbg !1129

for.end250:                                       ; preds = %for.inc248, %if.then227
  %52 = bitcast i32* %nmtx to i8*, !dbg !1142
  %call251 = call i64 @fwrite(i8* %52, i64 4, i64 1, %struct._IO_FILE* %fp) #7, !dbg !1142
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !304), !dbg !1143
  %53 = load i32* %nfront2, align 4, !dbg !1143, !tbaa !431
  %cmp255590 = icmp sgt i32 %53, 0, !dbg !1143
  br i1 %cmp255590, label %for.body257.lr.ph, label %if.end277.thread, !dbg !1143

if.end277.thread:                                 ; preds = %for.end250
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !308), !dbg !1127
  store i32 0, i32* %nmtx, align 4, !dbg !1127, !tbaa !431
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !304), !dbg !1127
  br label %for.end291, !dbg !1127

for.body257.lr.ph:                                ; preds = %for.end250
  %lowerblockIVL258 = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 16, !dbg !1145
  br label %for.body257, !dbg !1143

for.body257:                                      ; preds = %for.body257.lr.ph, %for.inc274
  %J.11591 = phi i32 [ 0, %for.body257.lr.ph ], [ %inc275, %for.inc274 ]
  %54 = load %struct._IVL** %lowerblockIVL258, align 8, !dbg !1145, !tbaa !381
  call void @IVL_listAndSize(%struct._IVL* %54, i32 %J.11591, i32* %nadj, i32** %adj) #7, !dbg !1145
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !303), !dbg !1147
  call void @llvm.dbg.value(metadata !{i32* %nadj}, i64 0, metadata !306), !dbg !1147
  %55 = load i32* %nadj, align 4, !dbg !1147, !tbaa !431
  %cmp260588 = icmp sgt i32 %55, 0, !dbg !1147
  br i1 %cmp260588, label %for.body262, label %for.inc274, !dbg !1147

for.body262:                                      ; preds = %for.body257, %for.inc271
  %indvars.iv607 = phi i64 [ %indvars.iv.next608, %for.inc271 ], [ 0, %for.body257 ]
  call void @llvm.dbg.value(metadata !{i32** %adj}, i64 0, metadata !310), !dbg !1149
  %56 = load i32** %adj, align 8, !dbg !1149, !tbaa !381
  %arrayidx264 = getelementptr inbounds i32* %56, i64 %indvars.iv607, !dbg !1149
  %57 = load i32* %arrayidx264, align 4, !dbg !1149, !tbaa !431
  call void @llvm.dbg.value(metadata !{i32 %57}, i64 0, metadata !305), !dbg !1149
  %call265 = call %struct._SubMtx* @FrontMtx_lowerMtx(%struct._FrontMtx* %frontmtx, i32 %57, i32 %J.11591) #7, !dbg !1151
  call void @llvm.dbg.value(metadata !{%struct._SubMtx* %call265}, i64 0, metadata !302), !dbg !1151
  %cmp266 = icmp eq %struct._SubMtx* %call265, null, !dbg !1151
  br i1 %cmp266, label %for.inc271, label %if.then268, !dbg !1151

if.then268:                                       ; preds = %for.body262
  %call269 = call i32 @SubMtx_writeToBinaryFile(%struct._SubMtx* %call265, %struct._IO_FILE* %fp) #7, !dbg !1152
  br label %for.inc271, !dbg !1154

for.inc271:                                       ; preds = %for.body262, %if.then268
  %indvars.iv.next608 = add i64 %indvars.iv607, 1, !dbg !1147
  call void @llvm.dbg.value(metadata !{i32* %nadj}, i64 0, metadata !306), !dbg !1147
  %58 = load i32* %nadj, align 4, !dbg !1147, !tbaa !431
  %59 = trunc i64 %indvars.iv.next608 to i32, !dbg !1147
  %cmp260 = icmp slt i32 %59, %58, !dbg !1147
  br i1 %cmp260, label %for.body262, label %for.inc274, !dbg !1147

for.inc274:                                       ; preds = %for.inc271, %for.body257
  %inc275 = add nsw i32 %J.11591, 1, !dbg !1143
  call void @llvm.dbg.value(metadata !{i32 %inc275}, i64 0, metadata !304), !dbg !1143
  %60 = load i32* %nfront2, align 4, !dbg !1143, !tbaa !431
  %cmp255 = icmp slt i32 %inc275, %60, !dbg !1143
  br i1 %cmp255, label %for.body257, label %if.end277, !dbg !1143

if.end277:                                        ; preds = %for.inc274, %if.end223.if.end277_crit_edge
  %61 = phi i32 [ %.pre, %if.end223.if.end277_crit_edge ], [ %60, %for.inc274 ]
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !308), !dbg !1127
  store i32 0, i32* %nmtx, align 4, !dbg !1127, !tbaa !431
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !304), !dbg !1127
  %cmp280586 = icmp sgt i32 %61, 0, !dbg !1127
  br i1 %cmp280586, label %for.body282, label %for.end291, !dbg !1127

for.body282:                                      ; preds = %if.end277, %for.inc289
  %J.12587 = phi i32 [ %inc290, %for.inc289 ], [ 0, %if.end277 ]
  %call283 = call %struct._SubMtx* @FrontMtx_diagMtx(%struct._FrontMtx* %frontmtx, i32 %J.12587) #7, !dbg !1155
  call void @llvm.dbg.value(metadata !{%struct._SubMtx* %call283}, i64 0, metadata !302), !dbg !1155
  %cmp284 = icmp eq %struct._SubMtx* %call283, null, !dbg !1155
  br i1 %cmp284, label %for.inc289, label %if.then286, !dbg !1155

if.then286:                                       ; preds = %for.body282
  call void @llvm.dbg.value(metadata !{i32* %nmtx}, i64 0, metadata !308), !dbg !1157
  %62 = load i32* %nmtx, align 4, !dbg !1157, !tbaa !431
  %inc287 = add nsw i32 %62, 1, !dbg !1157
  call void @llvm.dbg.value(metadata !{i32 %inc287}, i64 0, metadata !308), !dbg !1157
  store i32 %inc287, i32* %nmtx, align 4, !dbg !1157, !tbaa !431
  br label %for.inc289, !dbg !1159

for.inc289:                                       ; preds = %for.body282, %if.then286
  %inc290 = add nsw i32 %J.12587, 1, !dbg !1127
  call void @llvm.dbg.value(metadata !{i32 %inc290}, i64 0, metadata !304), !dbg !1127
  %63 = load i32* %nfront2, align 4, !dbg !1127, !tbaa !431
  %cmp280 = icmp slt i32 %inc290, %63, !dbg !1127
  br i1 %cmp280, label %for.body282, label %for.end291, !dbg !1127

for.end291:                                       ; preds = %for.inc289, %if.end277.thread, %if.end277
  %64 = bitcast i32* %nmtx to i8*, !dbg !1160
  %call292 = call i64 @fwrite(i8* %64, i64 4, i64 1, %struct._IO_FILE* %fp) #7, !dbg !1160
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !304), !dbg !1161
  %65 = load i32* %nfront2, align 4, !dbg !1161, !tbaa !431
  %cmp296584 = icmp sgt i32 %65, 0, !dbg !1161
  br i1 %cmp296584, label %for.body298, label %for.end307.thread, !dbg !1161

for.end307.thread:                                ; preds = %for.end291
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !308), !dbg !1163
  store i32 0, i32* %nmtx, align 4, !dbg !1163, !tbaa !431
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !304), !dbg !1163
  br label %for.end331, !dbg !1163

for.body298:                                      ; preds = %for.end291, %for.inc305
  %J.13585 = phi i32 [ %inc306, %for.inc305 ], [ 0, %for.end291 ]
  %call299 = call %struct._SubMtx* @FrontMtx_diagMtx(%struct._FrontMtx* %frontmtx, i32 %J.13585) #7, !dbg !1165
  call void @llvm.dbg.value(metadata !{%struct._SubMtx* %call299}, i64 0, metadata !302), !dbg !1165
  %cmp300 = icmp eq %struct._SubMtx* %call299, null, !dbg !1165
  br i1 %cmp300, label %for.inc305, label %if.then302, !dbg !1165

if.then302:                                       ; preds = %for.body298
  %call303 = call i32 @SubMtx_writeToBinaryFile(%struct._SubMtx* %call299, %struct._IO_FILE* %fp) #7, !dbg !1167
  br label %for.inc305, !dbg !1169

for.inc305:                                       ; preds = %for.body298, %if.then302
  %inc306 = add nsw i32 %J.13585, 1, !dbg !1161
  call void @llvm.dbg.value(metadata !{i32 %inc306}, i64 0, metadata !304), !dbg !1161
  %66 = load i32* %nfront2, align 4, !dbg !1161, !tbaa !431
  %cmp296 = icmp slt i32 %inc306, %66, !dbg !1161
  br i1 %cmp296, label %for.body298, label %for.end307, !dbg !1161

for.end307:                                       ; preds = %for.inc305
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !308), !dbg !1163
  store i32 0, i32* %nmtx, align 4, !dbg !1163, !tbaa !431
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !304), !dbg !1163
  %cmp310582 = icmp sgt i32 %66, 0, !dbg !1163
  br i1 %cmp310582, label %for.body312, label %for.end331, !dbg !1163

for.body312:                                      ; preds = %for.end307, %for.inc329
  %J.14583 = phi i32 [ %inc330, %for.inc329 ], [ 0, %for.end307 ]
  %67 = load %struct._IVL** %upperblockIVL, align 8, !dbg !1170, !tbaa !381
  call void @IVL_listAndSize(%struct._IVL* %67, i32 %J.14583, i32* %nadj, i32** %adj) #7, !dbg !1170
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !303), !dbg !1172
  call void @llvm.dbg.value(metadata !{i32* %nadj}, i64 0, metadata !306), !dbg !1172
  %68 = load i32* %nadj, align 4, !dbg !1172, !tbaa !431
  %cmp315580 = icmp sgt i32 %68, 0, !dbg !1172
  br i1 %cmp315580, label %for.body317, label %for.inc329, !dbg !1172

for.body317:                                      ; preds = %for.body312, %for.inc326
  %indvars.iv605 = phi i64 [ %indvars.iv.next606, %for.inc326 ], [ 0, %for.body312 ]
  call void @llvm.dbg.value(metadata !{i32** %adj}, i64 0, metadata !310), !dbg !1174
  %69 = load i32** %adj, align 8, !dbg !1174, !tbaa !381
  %arrayidx319 = getelementptr inbounds i32* %69, i64 %indvars.iv605, !dbg !1174
  %70 = load i32* %arrayidx319, align 4, !dbg !1174, !tbaa !431
  call void @llvm.dbg.value(metadata !{i32 %70}, i64 0, metadata !305), !dbg !1174
  %call320 = call %struct._SubMtx* @FrontMtx_upperMtx(%struct._FrontMtx* %frontmtx, i32 %J.14583, i32 %70) #7, !dbg !1176
  call void @llvm.dbg.value(metadata !{%struct._SubMtx* %call320}, i64 0, metadata !302), !dbg !1176
  %cmp321 = icmp eq %struct._SubMtx* %call320, null, !dbg !1176
  br i1 %cmp321, label %for.inc326, label %if.then323, !dbg !1176

if.then323:                                       ; preds = %for.body317
  call void @llvm.dbg.value(metadata !{i32* %nmtx}, i64 0, metadata !308), !dbg !1177
  %71 = load i32* %nmtx, align 4, !dbg !1177, !tbaa !431
  %inc324 = add nsw i32 %71, 1, !dbg !1177
  call void @llvm.dbg.value(metadata !{i32 %inc324}, i64 0, metadata !308), !dbg !1177
  store i32 %inc324, i32* %nmtx, align 4, !dbg !1177, !tbaa !431
  br label %for.inc326, !dbg !1179

for.inc326:                                       ; preds = %for.body317, %if.then323
  %indvars.iv.next606 = add i64 %indvars.iv605, 1, !dbg !1172
  call void @llvm.dbg.value(metadata !{i32* %nadj}, i64 0, metadata !306), !dbg !1172
  %72 = load i32* %nadj, align 4, !dbg !1172, !tbaa !431
  %73 = trunc i64 %indvars.iv.next606 to i32, !dbg !1172
  %cmp315 = icmp slt i32 %73, %72, !dbg !1172
  br i1 %cmp315, label %for.body317, label %for.inc329, !dbg !1172

for.inc329:                                       ; preds = %for.inc326, %for.body312
  %inc330 = add nsw i32 %J.14583, 1, !dbg !1163
  call void @llvm.dbg.value(metadata !{i32 %inc330}, i64 0, metadata !304), !dbg !1163
  %74 = load i32* %nfront2, align 4, !dbg !1163, !tbaa !431
  %cmp310 = icmp slt i32 %inc330, %74, !dbg !1163
  br i1 %cmp310, label %for.body312, label %for.end331, !dbg !1163

for.end331:                                       ; preds = %for.inc329, %for.end307.thread, %for.end307
  %call332 = call i64 @fwrite(i8* %64, i64 4, i64 1, %struct._IO_FILE* %fp) #7, !dbg !1180
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !304), !dbg !1181
  %75 = load i32* %nfront2, align 4, !dbg !1181, !tbaa !431
  %cmp336578 = icmp sgt i32 %75, 0, !dbg !1181
  br i1 %cmp336578, label %for.body338, label %cleanup, !dbg !1181

for.body338:                                      ; preds = %for.end331, %for.inc355
  %J.15579 = phi i32 [ %inc356, %for.inc355 ], [ 0, %for.end331 ]
  %76 = load %struct._IVL** %upperblockIVL, align 8, !dbg !1183, !tbaa !381
  call void @IVL_listAndSize(%struct._IVL* %76, i32 %J.15579, i32* %nadj, i32** %adj) #7, !dbg !1183
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !303), !dbg !1185
  call void @llvm.dbg.value(metadata !{i32* %nadj}, i64 0, metadata !306), !dbg !1185
  %77 = load i32* %nadj, align 4, !dbg !1185, !tbaa !431
  %cmp341575 = icmp sgt i32 %77, 0, !dbg !1185
  br i1 %cmp341575, label %for.body343, label %for.inc355, !dbg !1185

for.body343:                                      ; preds = %for.body338, %for.inc352
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc352 ], [ 0, %for.body338 ]
  call void @llvm.dbg.value(metadata !{i32** %adj}, i64 0, metadata !310), !dbg !1187
  %78 = load i32** %adj, align 8, !dbg !1187, !tbaa !381
  %arrayidx345 = getelementptr inbounds i32* %78, i64 %indvars.iv, !dbg !1187
  %79 = load i32* %arrayidx345, align 4, !dbg !1187, !tbaa !431
  call void @llvm.dbg.value(metadata !{i32 %79}, i64 0, metadata !305), !dbg !1187
  %call346 = call %struct._SubMtx* @FrontMtx_upperMtx(%struct._FrontMtx* %frontmtx, i32 %J.15579, i32 %79) #7, !dbg !1189
  call void @llvm.dbg.value(metadata !{%struct._SubMtx* %call346}, i64 0, metadata !302), !dbg !1189
  %cmp347 = icmp eq %struct._SubMtx* %call346, null, !dbg !1189
  br i1 %cmp347, label %for.inc352, label %if.then349, !dbg !1189

if.then349:                                       ; preds = %for.body343
  %call350 = call i32 @SubMtx_writeToBinaryFile(%struct._SubMtx* %call346, %struct._IO_FILE* %fp) #7, !dbg !1190
  br label %for.inc352, !dbg !1192

for.inc352:                                       ; preds = %for.body343, %if.then349
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !1185
  call void @llvm.dbg.value(metadata !{i32* %nadj}, i64 0, metadata !306), !dbg !1185
  %80 = load i32* %nadj, align 4, !dbg !1185, !tbaa !431
  %81 = trunc i64 %indvars.iv.next to i32, !dbg !1185
  %cmp341 = icmp slt i32 %81, %80, !dbg !1185
  br i1 %cmp341, label %for.body343, label %for.inc355, !dbg !1185

for.inc355:                                       ; preds = %for.inc352, %for.body338
  %inc356 = add nsw i32 %J.15579, 1, !dbg !1181
  call void @llvm.dbg.value(metadata !{i32 %inc356}, i64 0, metadata !304), !dbg !1181
  %82 = load i32* %nfront2, align 4, !dbg !1181, !tbaa !431
  %cmp336 = icmp slt i32 %inc356, %82, !dbg !1181
  br i1 %cmp336, label %for.body338, label %cleanup, !dbg !1181

cleanup:                                          ; preds = %for.end178.thread, %for.end150.thread, %for.end331, %for.inc355, %for.inc204, %if.then221, %if.then214, %if.then59, %if.then52, %if.then37, %if.then27, %if.then21, %if.then15
  %retval.0 = phi i32 [ 0, %if.then15 ], [ 0, %if.then21 ], [ 0, %if.then27 ], [ 0, %if.then37 ], [ 0, %if.then52 ], [ 0, %if.then59 ], [ 0, %if.then214 ], [ 0, %if.then221 ], [ 1, %for.inc204 ], [ 1, %for.end178.thread ], [ 1, %for.inc355 ], [ 1, %for.end331 ], [ 1, %for.end150.thread ]
  call void @llvm.lifetime.end(i64 40, i8* %0) #4, !dbg !1193
  ret i32 %retval.0, !dbg !1193
}

; Function Attrs: nounwind optsize uwtable
define i32 @FrontMtx_writeToFormattedFile(%struct._FrontMtx* %frontmtx, %struct._IO_FILE* %fp) #0 {
entry:
  %nadj = alloca i32, align 4
  %adj = alloca i32*, align 8
  call void @llvm.dbg.value(metadata !{%struct._FrontMtx* %frontmtx}, i64 0, metadata !287), !dbg !1194
  call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %fp}, i64 0, metadata !288), !dbg !1195
  call void @llvm.dbg.declare(metadata !{i32* %nadj}, metadata !293), !dbg !1196
  call void @llvm.dbg.declare(metadata !{i32** %adj}, metadata !297), !dbg !1197
  %cmp = icmp eq %struct._FrontMtx* %frontmtx, null, !dbg !1198
  %cmp1 = icmp eq %struct._IO_FILE* %fp, null, !dbg !1198
  %or.cond = or i1 %cmp, %cmp1, !dbg !1198
  br i1 %or.cond, label %if.then, label %if.end, !dbg !1198

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !1199, !tbaa !381
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([66 x i8]* @.str39, i64 0, i64 0), %struct._FrontMtx* %frontmtx, %struct._IO_FILE* %fp) #7, !dbg !1199
  call void @exit(i32 -1) #10, !dbg !1201
  unreachable, !dbg !1201

if.end:                                           ; preds = %entry
  %nfront2 = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 0, !dbg !1202
  %1 = load i32* %nfront2, align 4, !dbg !1202, !tbaa !431
  call void @llvm.dbg.value(metadata !{i32 %1}, i64 0, metadata !294), !dbg !1202
  %neqns = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 1, !dbg !1203
  %2 = load i32* %neqns, align 4, !dbg !1203, !tbaa !431
  %type = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 2, !dbg !1203
  %3 = load i32* %type, align 4, !dbg !1203, !tbaa !431
  %symmetryflag = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 3, !dbg !1203
  %4 = load i32* %symmetryflag, align 4, !dbg !1203, !tbaa !431
  %pivotingflag = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 5, !dbg !1203
  %5 = load i32* %pivotingflag, align 4, !dbg !1203, !tbaa !431
  %sparsityflag = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 4, !dbg !1203
  %6 = load i32* %sparsityflag, align 4, !dbg !1203, !tbaa !431
  %dataMode = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 6, !dbg !1203
  %7 = load i32* %dataMode, align 4, !dbg !1203, !tbaa !431
  %nentD = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 7, !dbg !1203
  %8 = load i32* %nentD, align 4, !dbg !1203, !tbaa !431
  %nentL = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 8, !dbg !1203
  %9 = load i32* %nentL, align 4, !dbg !1203, !tbaa !431
  %nentU = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 9, !dbg !1203
  %10 = load i32* %nentU, align 4, !dbg !1203, !tbaa !431
  %call4 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([32 x i8]* @.str40, i64 0, i64 0), i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8, i32 %9, i32 %10) #7, !dbg !1203
  call void @llvm.dbg.value(metadata !{i32 %call4}, i64 0, metadata !296), !dbg !1203
  %cmp5 = icmp slt i32 %call4, 0, !dbg !1204
  br i1 %cmp5, label %if.then6, label %if.end8, !dbg !1204

if.then6:                                         ; preds = %if.end
  %11 = load %struct._IO_FILE** @stderr, align 8, !dbg !1205, !tbaa !381
  %call7 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %11, i8* getelementptr inbounds ([91 x i8]* @.str41, i64 0, i64 0), %struct._FrontMtx* %frontmtx, %struct._IO_FILE* %fp, i32 %call4) #7, !dbg !1205
  br label %return, !dbg !1207

if.end8:                                          ; preds = %if.end
  %frontETree = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 11, !dbg !1208
  %12 = load %struct._ETree** %frontETree, align 8, !dbg !1208, !tbaa !381
  %call9 = call i32 @ETree_writeToFormattedFile(%struct._ETree* %12, %struct._IO_FILE* %fp) #7, !dbg !1208
  call void @llvm.dbg.value(metadata !{i32 %call9}, i64 0, metadata !296), !dbg !1208
  %cmp10 = icmp eq i32 %call9, 1, !dbg !1209
  br i1 %cmp10, label %if.end13, label %if.then11, !dbg !1209

if.then11:                                        ; preds = %if.end8
  %13 = load %struct._IO_FILE** @stderr, align 8, !dbg !1210, !tbaa !381
  %call12 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %13, i8* getelementptr inbounds ([91 x i8]* @.str42, i64 0, i64 0), %struct._FrontMtx* %frontmtx, %struct._IO_FILE* %fp, i32 %call9) #7, !dbg !1210
  br label %return, !dbg !1212

if.end13:                                         ; preds = %if.end8
  %symbfacIVL = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 13, !dbg !1213
  %14 = load %struct._IVL** %symbfacIVL, align 8, !dbg !1213, !tbaa !381
  %call14 = call i32 @IVL_writeToFormattedFile(%struct._IVL* %14, %struct._IO_FILE* %fp) #7, !dbg !1213
  call void @llvm.dbg.value(metadata !{i32 %call14}, i64 0, metadata !296), !dbg !1213
  %cmp15 = icmp eq i32 %call14, 1, !dbg !1214
  br i1 %cmp15, label %if.end18, label %if.then16, !dbg !1214

if.then16:                                        ; preds = %if.end13
  %15 = load %struct._IO_FILE** @stderr, align 8, !dbg !1215, !tbaa !381
  %call17 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %15, i8* getelementptr inbounds ([91 x i8]* @.str43, i64 0, i64 0), %struct._FrontMtx* %frontmtx, %struct._IO_FILE* %fp, i32 %call14) #7, !dbg !1215
  br label %return, !dbg !1217

if.end18:                                         ; preds = %if.end13
  %16 = load i32* %pivotingflag, align 4, !dbg !1218, !tbaa !431
  %cmp20 = icmp eq i32 %16, 1, !dbg !1218
  br i1 %cmp20, label %if.then21, label %if.end45, !dbg !1218

if.then21:                                        ; preds = %if.end18
  %frontsizesIV = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 12, !dbg !1219
  %17 = load %struct._IV** %frontsizesIV, align 8, !dbg !1219, !tbaa !381
  %call22 = call i32 @IV_writeToFormattedFile(%struct._IV* %17, %struct._IO_FILE* %fp) #7, !dbg !1219
  call void @llvm.dbg.value(metadata !{i32 %call22}, i64 0, metadata !296), !dbg !1219
  %cmp23 = icmp eq i32 %call22, 1, !dbg !1221
  br i1 %cmp23, label %if.end27, label %if.then24, !dbg !1221

if.then24:                                        ; preds = %if.then21
  %18 = load %struct._IO_FILE** @stderr, align 8, !dbg !1222, !tbaa !381
  %call25 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %18, i8* getelementptr inbounds ([93 x i8]* @.str44, i64 0, i64 0), %struct._FrontMtx* %frontmtx, %struct._IO_FILE* %fp, i32 %call22) #7, !dbg !1222
  br label %return, !dbg !1224

if.end27:                                         ; preds = %if.then21
  %.pr = load i32* %pivotingflag, align 4, !dbg !1225, !tbaa !431
  %cmp29 = icmp eq i32 %.pr, 1, !dbg !1225
  br i1 %cmp29, label %if.then30, label %if.end45, !dbg !1225

if.then30:                                        ; preds = %if.end27
  %19 = load i32* %symmetryflag, align 4, !dbg !1226, !tbaa !431
  %cmp32 = icmp eq i32 %19, 2, !dbg !1226
  br i1 %cmp32, label %if.then33, label %if.end39, !dbg !1226

if.then33:                                        ; preds = %if.then30
  %rowadjIVL = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 14, !dbg !1228
  %20 = load %struct._IVL** %rowadjIVL, align 8, !dbg !1228, !tbaa !381
  %call34 = call i32 @IVL_writeToFormattedFile(%struct._IVL* %20, %struct._IO_FILE* %fp) #7, !dbg !1228
  call void @llvm.dbg.value(metadata !{i32 %call34}, i64 0, metadata !296), !dbg !1228
  %cmp35 = icmp eq i32 %call34, 1, !dbg !1230
  br i1 %cmp35, label %if.end39, label %if.then36, !dbg !1230

if.then36:                                        ; preds = %if.then33
  %21 = load %struct._IO_FILE** @stderr, align 8, !dbg !1231, !tbaa !381
  %call37 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %21, i8* getelementptr inbounds ([90 x i8]* @.str45, i64 0, i64 0), %struct._FrontMtx* %frontmtx, %struct._IO_FILE* %fp, i32 %call34) #7, !dbg !1231
  br label %return, !dbg !1233

if.end39:                                         ; preds = %if.then33, %if.then30
  %coladjIVL = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 15, !dbg !1234
  %22 = load %struct._IVL** %coladjIVL, align 8, !dbg !1234, !tbaa !381
  %call40 = call i32 @IVL_writeToFormattedFile(%struct._IVL* %22, %struct._IO_FILE* %fp) #7, !dbg !1234
  call void @llvm.dbg.value(metadata !{i32 %call40}, i64 0, metadata !296), !dbg !1234
  %cmp41 = icmp eq i32 %call40, 1, !dbg !1235
  br i1 %cmp41, label %if.end45, label %if.then42, !dbg !1235

if.then42:                                        ; preds = %if.end39
  %23 = load %struct._IO_FILE** @stderr, align 8, !dbg !1236, !tbaa !381
  %call43 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %23, i8* getelementptr inbounds ([90 x i8]* @.str46, i64 0, i64 0), %struct._FrontMtx* %frontmtx, %struct._IO_FILE* %fp, i32 %call40) #7, !dbg !1236
  br label %return, !dbg !1238

if.end45:                                         ; preds = %if.end18, %if.end39, %if.end27
  %24 = load i32* %dataMode, align 4, !dbg !1239, !tbaa !431
  %cmp47 = icmp eq i32 %24, 1, !dbg !1239
  %25 = load i32* %symmetryflag, align 4, !dbg !1240, !tbaa !431
  %cmp50 = icmp eq i32 %25, 2, !dbg !1240
  br i1 %cmp47, label %if.then48, label %if.else, !dbg !1239

if.then48:                                        ; preds = %if.end45
  br i1 %cmp50, label %for.cond.preheader, label %for.cond94.preheader, !dbg !1240

for.cond.preheader:                               ; preds = %if.then48
  %cmp52528 = icmp sgt i32 %1, 0, !dbg !1242
  br i1 %cmp52528, label %for.body, label %for.end.thread, !dbg !1242

for.end.thread:                                   ; preds = %for.cond.preheader
  %call58580 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([5 x i8]* @.str47, i64 0, i64 0), i32 0) #7, !dbg !1245
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !291), !dbg !1246
  br label %for.cond94.preheader.thread, !dbg !1246

for.cond94.preheader:                             ; preds = %for.inc90, %if.then48
  %cmp95516 = icmp sgt i32 %1, 0, !dbg !1248
  br i1 %cmp95516, label %for.body96, label %for.end104.thread, !dbg !1248

for.end104.thread:                                ; preds = %for.cond94.preheader
  %call105582 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([5 x i8]* @.str47, i64 0, i64 0), i32 0) #7, !dbg !1250
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !291), !dbg !1251
  br label %for.cond140.preheader.thread, !dbg !1251

for.body:                                         ; preds = %for.cond.preheader, %for.body
  %nmtx.0530 = phi i32 [ %nmtx.0.inc, %for.body ], [ 0, %for.cond.preheader ]
  %J.0529 = phi i32 [ %inc57, %for.body ], [ 0, %for.cond.preheader ]
  %call53 = call %struct._SubMtx* @FrontMtx_lowerMtx(%struct._FrontMtx* %frontmtx, i32 %J.0529, i32 %J.0529) #7, !dbg !1253
  call void @llvm.dbg.value(metadata !{%struct._SubMtx* %call53}, i64 0, metadata !289), !dbg !1253
  %not.cmp54 = icmp ne %struct._SubMtx* %call53, null, !dbg !1253
  %inc = zext i1 %not.cmp54 to i32, !dbg !1253
  %nmtx.0.inc = add nsw i32 %inc, %nmtx.0530, !dbg !1253
  %inc57 = add nsw i32 %J.0529, 1, !dbg !1242
  call void @llvm.dbg.value(metadata !{i32 %inc57}, i64 0, metadata !291), !dbg !1242
  %exitcond571 = icmp eq i32 %inc57, %1, !dbg !1242
  br i1 %exitcond571, label %for.end, label %for.body, !dbg !1242

for.end:                                          ; preds = %for.body
  %call58 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([5 x i8]* @.str47, i64 0, i64 0), i32 %nmtx.0.inc) #7, !dbg !1245
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !291), !dbg !1246
  br i1 %cmp52528, label %for.body61, label %for.cond94.preheader.thread, !dbg !1246

for.cond70.preheader:                             ; preds = %for.inc67
  br i1 %cmp52528, label %for.body72, label %for.end80.thread, !dbg !1255

for.end80.thread:                                 ; preds = %for.cond70.preheader
  %call81581 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([5 x i8]* @.str47, i64 0, i64 0), i32 0) #7, !dbg !1257
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !291), !dbg !1258
  br label %for.cond117.preheader.thread, !dbg !1258

for.body61:                                       ; preds = %for.end, %for.inc67
  %J.1527 = phi i32 [ %inc68, %for.inc67 ], [ 0, %for.end ]
  %call62 = call %struct._SubMtx* @FrontMtx_lowerMtx(%struct._FrontMtx* %frontmtx, i32 %J.1527, i32 %J.1527) #7, !dbg !1260
  call void @llvm.dbg.value(metadata !{%struct._SubMtx* %call62}, i64 0, metadata !289), !dbg !1260
  %cmp63 = icmp eq %struct._SubMtx* %call62, null, !dbg !1260
  br i1 %cmp63, label %for.inc67, label %if.then64, !dbg !1260

if.then64:                                        ; preds = %for.body61
  %call65 = call i32 @SubMtx_writeToFormattedFile(%struct._SubMtx* %call62, %struct._IO_FILE* %fp) #7, !dbg !1262
  br label %for.inc67, !dbg !1264

for.inc67:                                        ; preds = %for.body61, %if.then64
  %inc68 = add nsw i32 %J.1527, 1, !dbg !1246
  call void @llvm.dbg.value(metadata !{i32 %inc68}, i64 0, metadata !291), !dbg !1246
  %exitcond570 = icmp eq i32 %inc68, %1, !dbg !1246
  br i1 %exitcond570, label %for.cond70.preheader, label %for.body61, !dbg !1246

for.body72:                                       ; preds = %for.cond70.preheader, %for.body72
  %nmtx.2524 = phi i32 [ %nmtx.2.inc76, %for.body72 ], [ 0, %for.cond70.preheader ]
  %J.2523 = phi i32 [ %inc79, %for.body72 ], [ 0, %for.cond70.preheader ]
  %call73 = call %struct._SubMtx* @FrontMtx_lowerMtx(%struct._FrontMtx* %frontmtx, i32 %1, i32 %J.2523) #7, !dbg !1265
  call void @llvm.dbg.value(metadata !{%struct._SubMtx* %call73}, i64 0, metadata !289), !dbg !1265
  %not.cmp74 = icmp ne %struct._SubMtx* %call73, null, !dbg !1265
  %inc76 = zext i1 %not.cmp74 to i32, !dbg !1265
  %nmtx.2.inc76 = add nsw i32 %inc76, %nmtx.2524, !dbg !1265
  %inc79 = add nsw i32 %J.2523, 1, !dbg !1255
  call void @llvm.dbg.value(metadata !{i32 %inc79}, i64 0, metadata !291), !dbg !1255
  %exitcond569 = icmp eq i32 %inc79, %1, !dbg !1255
  br i1 %exitcond569, label %for.end80, label %for.body72, !dbg !1255

for.end80:                                        ; preds = %for.body72
  %call81 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([5 x i8]* @.str47, i64 0, i64 0), i32 %nmtx.2.inc76) #7, !dbg !1257
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !291), !dbg !1258
  br i1 %cmp52528, label %for.body84, label %for.cond117.preheader.thread, !dbg !1258

for.cond94.preheader.thread:                      ; preds = %for.end, %for.end.thread
  %call81597 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([5 x i8]* @.str47, i64 0, i64 0), i32 0) #7, !dbg !1257
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !291), !dbg !1258
  %call105584 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([5 x i8]* @.str47, i64 0, i64 0), i32 0) #7, !dbg !1250
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !291), !dbg !1251
  %call128589601 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([5 x i8]* @.str47, i64 0, i64 0), i32 0) #7, !dbg !1267
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !291), !dbg !1268
  %call151593602 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([5 x i8]* @.str47, i64 0, i64 0), i32 0) #7, !dbg !1270
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !291), !dbg !1271
  br label %return, !dbg !1271

for.body84:                                       ; preds = %for.end80, %for.inc90
  %J.3521 = phi i32 [ %inc91, %for.inc90 ], [ 0, %for.end80 ]
  %call85 = call %struct._SubMtx* @FrontMtx_lowerMtx(%struct._FrontMtx* %frontmtx, i32 %1, i32 %J.3521) #7, !dbg !1273
  call void @llvm.dbg.value(metadata !{%struct._SubMtx* %call85}, i64 0, metadata !289), !dbg !1273
  %cmp86 = icmp eq %struct._SubMtx* %call85, null, !dbg !1273
  br i1 %cmp86, label %for.inc90, label %if.then87, !dbg !1273

if.then87:                                        ; preds = %for.body84
  %call88 = call i32 @SubMtx_writeToFormattedFile(%struct._SubMtx* %call85, %struct._IO_FILE* %fp) #7, !dbg !1275
  br label %for.inc90, !dbg !1277

for.inc90:                                        ; preds = %for.body84, %if.then87
  %inc91 = add nsw i32 %J.3521, 1, !dbg !1258
  call void @llvm.dbg.value(metadata !{i32 %inc91}, i64 0, metadata !291), !dbg !1258
  %exitcond568 = icmp eq i32 %inc91, %1, !dbg !1258
  br i1 %exitcond568, label %for.cond94.preheader, label %for.body84, !dbg !1258

for.body96:                                       ; preds = %for.cond94.preheader, %for.body96
  %nmtx.4518 = phi i32 [ %nmtx.4.inc100, %for.body96 ], [ 0, %for.cond94.preheader ]
  %J.4517 = phi i32 [ %inc103, %for.body96 ], [ 0, %for.cond94.preheader ]
  %call97 = call %struct._SubMtx* @FrontMtx_diagMtx(%struct._FrontMtx* %frontmtx, i32 %J.4517) #7, !dbg !1278
  call void @llvm.dbg.value(metadata !{%struct._SubMtx* %call97}, i64 0, metadata !289), !dbg !1278
  %not.cmp98 = icmp ne %struct._SubMtx* %call97, null, !dbg !1278
  %inc100 = zext i1 %not.cmp98 to i32, !dbg !1278
  %nmtx.4.inc100 = add nsw i32 %inc100, %nmtx.4518, !dbg !1278
  %inc103 = add nsw i32 %J.4517, 1, !dbg !1248
  call void @llvm.dbg.value(metadata !{i32 %inc103}, i64 0, metadata !291), !dbg !1248
  %exitcond567 = icmp eq i32 %inc103, %1, !dbg !1248
  br i1 %exitcond567, label %for.end104, label %for.body96, !dbg !1248

for.end104:                                       ; preds = %for.body96
  %call105 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([5 x i8]* @.str47, i64 0, i64 0), i32 %nmtx.4.inc100) #7, !dbg !1250
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !291), !dbg !1251
  br i1 %cmp95516, label %for.body108, label %for.cond140.preheader.thread, !dbg !1251

for.cond117.preheader.thread:                     ; preds = %for.end80.thread, %for.end80
  %call105584599 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([5 x i8]* @.str47, i64 0, i64 0), i32 0) #7, !dbg !1250
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !291), !dbg !1251
  %call128589 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([5 x i8]* @.str47, i64 0, i64 0), i32 0) #7, !dbg !1267
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !291), !dbg !1268
  %call151593603 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([5 x i8]* @.str47, i64 0, i64 0), i32 0) #7, !dbg !1270
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !291), !dbg !1271
  br label %return

for.body108:                                      ; preds = %for.end104, %for.inc114
  %J.5515 = phi i32 [ %inc115, %for.inc114 ], [ 0, %for.end104 ]
  %call109 = call %struct._SubMtx* @FrontMtx_diagMtx(%struct._FrontMtx* %frontmtx, i32 %J.5515) #7, !dbg !1280
  call void @llvm.dbg.value(metadata !{%struct._SubMtx* %call109}, i64 0, metadata !289), !dbg !1280
  %cmp110 = icmp eq %struct._SubMtx* %call109, null, !dbg !1280
  br i1 %cmp110, label %for.inc114, label %if.then111, !dbg !1280

if.then111:                                       ; preds = %for.body108
  %call112 = call i32 @SubMtx_writeToFormattedFile(%struct._SubMtx* %call109, %struct._IO_FILE* %fp) #7, !dbg !1282
  br label %for.inc114, !dbg !1284

for.inc114:                                       ; preds = %for.body108, %if.then111
  %inc115 = add nsw i32 %J.5515, 1, !dbg !1251
  call void @llvm.dbg.value(metadata !{i32 %inc115}, i64 0, metadata !291), !dbg !1251
  %exitcond566 = icmp eq i32 %inc115, %1, !dbg !1251
  br i1 %exitcond566, label %for.body119, label %for.body108, !dbg !1251

for.body119:                                      ; preds = %for.inc114, %for.body119
  %nmtx.6512 = phi i32 [ %nmtx.6.inc123, %for.body119 ], [ 0, %for.inc114 ]
  %J.6511 = phi i32 [ %inc126, %for.body119 ], [ 0, %for.inc114 ]
  %call120 = call %struct._SubMtx* @FrontMtx_upperMtx(%struct._FrontMtx* %frontmtx, i32 %J.6511, i32 %J.6511) #7, !dbg !1285
  call void @llvm.dbg.value(metadata !{%struct._SubMtx* %call120}, i64 0, metadata !289), !dbg !1285
  %not.cmp121 = icmp ne %struct._SubMtx* %call120, null, !dbg !1285
  %inc123 = zext i1 %not.cmp121 to i32, !dbg !1285
  %nmtx.6.inc123 = add nsw i32 %inc123, %nmtx.6512, !dbg !1285
  %inc126 = add nsw i32 %J.6511, 1, !dbg !1288
  call void @llvm.dbg.value(metadata !{i32 %inc126}, i64 0, metadata !291), !dbg !1288
  %exitcond565 = icmp eq i32 %inc126, %1, !dbg !1288
  br i1 %exitcond565, label %for.end127, label %for.body119, !dbg !1288

for.end127:                                       ; preds = %for.body119
  %call128 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([5 x i8]* @.str47, i64 0, i64 0), i32 %nmtx.6.inc123) #7, !dbg !1267
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !291), !dbg !1268
  br label %for.body131, !dbg !1268

for.cond140.preheader.thread:                     ; preds = %for.end104.thread, %for.end104
  %call128589600 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([5 x i8]* @.str47, i64 0, i64 0), i32 0) #7, !dbg !1267
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !291), !dbg !1268
  %call151593 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([5 x i8]* @.str47, i64 0, i64 0), i32 0) #7, !dbg !1270
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !291), !dbg !1271
  br label %return, !dbg !1271

for.body131:                                      ; preds = %for.inc137, %for.end127
  %J.7509 = phi i32 [ 0, %for.end127 ], [ %inc138, %for.inc137 ]
  %call132 = call %struct._SubMtx* @FrontMtx_upperMtx(%struct._FrontMtx* %frontmtx, i32 %J.7509, i32 %J.7509) #7, !dbg !1289
  call void @llvm.dbg.value(metadata !{%struct._SubMtx* %call132}, i64 0, metadata !289), !dbg !1289
  %cmp133 = icmp eq %struct._SubMtx* %call132, null, !dbg !1289
  br i1 %cmp133, label %for.inc137, label %if.then134, !dbg !1289

if.then134:                                       ; preds = %for.body131
  %call135 = call i32 @SubMtx_writeToFormattedFile(%struct._SubMtx* %call132, %struct._IO_FILE* %fp) #7, !dbg !1291
  br label %for.inc137, !dbg !1293

for.inc137:                                       ; preds = %for.body131, %if.then134
  %inc138 = add nsw i32 %J.7509, 1, !dbg !1268
  call void @llvm.dbg.value(metadata !{i32 %inc138}, i64 0, metadata !291), !dbg !1268
  %exitcond564 = icmp eq i32 %inc138, %1, !dbg !1268
  br i1 %exitcond564, label %for.body142, label %for.body131, !dbg !1268

for.body142:                                      ; preds = %for.inc137, %for.body142
  %nmtx.8507 = phi i32 [ %nmtx.8.inc146, %for.body142 ], [ 0, %for.inc137 ]
  %J.8506 = phi i32 [ %inc149, %for.body142 ], [ 0, %for.inc137 ]
  %call143 = call %struct._SubMtx* @FrontMtx_upperMtx(%struct._FrontMtx* %frontmtx, i32 %J.8506, i32 %1) #7, !dbg !1294
  call void @llvm.dbg.value(metadata !{%struct._SubMtx* %call143}, i64 0, metadata !289), !dbg !1294
  %not.cmp144 = icmp ne %struct._SubMtx* %call143, null, !dbg !1294
  %inc146 = zext i1 %not.cmp144 to i32, !dbg !1294
  %nmtx.8.inc146 = add nsw i32 %inc146, %nmtx.8507, !dbg !1294
  %inc149 = add nsw i32 %J.8506, 1, !dbg !1297
  call void @llvm.dbg.value(metadata !{i32 %inc149}, i64 0, metadata !291), !dbg !1297
  %exitcond563 = icmp eq i32 %inc149, %1, !dbg !1297
  br i1 %exitcond563, label %for.end150, label %for.body142, !dbg !1297

for.end150:                                       ; preds = %for.body142
  %call151 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([5 x i8]* @.str47, i64 0, i64 0), i32 %nmtx.8.inc146) #7, !dbg !1270
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !291), !dbg !1271
  br label %for.body154, !dbg !1271

for.body154:                                      ; preds = %for.end150, %for.inc160
  %J.9504 = phi i32 [ %inc161, %for.inc160 ], [ 0, %for.end150 ]
  %call155 = call %struct._SubMtx* @FrontMtx_upperMtx(%struct._FrontMtx* %frontmtx, i32 %J.9504, i32 %1) #7, !dbg !1298
  call void @llvm.dbg.value(metadata !{%struct._SubMtx* %call155}, i64 0, metadata !289), !dbg !1298
  %cmp156 = icmp eq %struct._SubMtx* %call155, null, !dbg !1298
  br i1 %cmp156, label %for.inc160, label %if.then157, !dbg !1298

if.then157:                                       ; preds = %for.body154
  %call158 = call i32 @SubMtx_writeToFormattedFile(%struct._SubMtx* %call155, %struct._IO_FILE* %fp) #7, !dbg !1300
  br label %for.inc160, !dbg !1302

for.inc160:                                       ; preds = %for.body154, %if.then157
  %inc161 = add nsw i32 %J.9504, 1, !dbg !1271
  call void @llvm.dbg.value(metadata !{i32 %inc161}, i64 0, metadata !291), !dbg !1271
  %exitcond = icmp eq i32 %inc161, %1, !dbg !1271
  br i1 %exitcond, label %return, label %for.body154, !dbg !1271

if.else:                                          ; preds = %if.end45
  br i1 %cmp50, label %if.then165, label %if.end171, !dbg !1303

if.then165:                                       ; preds = %if.else
  %lowerblockIVL = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 16, !dbg !1305
  %26 = load %struct._IVL** %lowerblockIVL, align 8, !dbg !1305, !tbaa !381
  %call166 = call i32 @IVL_writeToFormattedFile(%struct._IVL* %26, %struct._IO_FILE* %fp) #7, !dbg !1305
  call void @llvm.dbg.value(metadata !{i32 %call166}, i64 0, metadata !296), !dbg !1305
  %cmp167 = icmp eq i32 %call166, 1, !dbg !1307
  br i1 %cmp167, label %if.end171, label %if.then168, !dbg !1307

if.then168:                                       ; preds = %if.then165
  %27 = load %struct._IO_FILE** @stderr, align 8, !dbg !1308, !tbaa !381
  %call169 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %27, i8* getelementptr inbounds ([94 x i8]* @.str48, i64 0, i64 0), %struct._FrontMtx* %frontmtx, %struct._IO_FILE* %fp, i32 %call166) #7, !dbg !1308
  br label %return, !dbg !1310

if.end171:                                        ; preds = %if.then165, %if.else
  %upperblockIVL = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 17, !dbg !1311
  %28 = load %struct._IVL** %upperblockIVL, align 8, !dbg !1311, !tbaa !381
  %call172 = call i32 @IVL_writeToFormattedFile(%struct._IVL* %28, %struct._IO_FILE* %fp) #7, !dbg !1311
  call void @llvm.dbg.value(metadata !{i32 %call172}, i64 0, metadata !296), !dbg !1311
  %cmp173 = icmp eq i32 %call172, 1, !dbg !1312
  br i1 %cmp173, label %if.end176, label %if.then174, !dbg !1312

if.then174:                                       ; preds = %if.end171
  %29 = load %struct._IO_FILE** @stderr, align 8, !dbg !1313, !tbaa !381
  %call175 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %29, i8* getelementptr inbounds ([94 x i8]* @.str49, i64 0, i64 0), %struct._FrontMtx* %frontmtx, %struct._IO_FILE* %fp, i32 %call172) #7, !dbg !1313
  br label %return, !dbg !1315

if.end176:                                        ; preds = %if.end171
  %30 = load i32* %symmetryflag, align 4, !dbg !1316, !tbaa !431
  %cmp178 = icmp eq i32 %30, 2, !dbg !1316
  %31 = load i32* %nfront2, align 4, !dbg !1317, !tbaa !431
  br i1 %cmp178, label %for.cond180.preheader, label %for.cond222.preheader, !dbg !1316

for.cond180.preheader:                            ; preds = %if.end176
  %cmp182559 = icmp sgt i32 %31, 0, !dbg !1317
  br i1 %cmp182559, label %for.body183.lr.ph, label %for.end198, !dbg !1317

for.body183.lr.ph:                                ; preds = %for.cond180.preheader
  %lowerblockIVL184 = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 16, !dbg !1320
  br label %for.body183, !dbg !1317

for.cond222.preheader:                            ; preds = %if.end176, %for.inc218
  %32 = phi i32 [ %47, %for.inc218 ], [ %31, %if.end176 ]
  %cmp224547 = icmp sgt i32 %32, 0, !dbg !1322
  br i1 %cmp224547, label %for.body225, label %for.end233, !dbg !1322

for.body183:                                      ; preds = %for.body183.lr.ph, %for.inc196
  %nmtx.10561 = phi i32 [ 0, %for.body183.lr.ph ], [ %nmtx.11.lcssa, %for.inc196 ]
  %J.10560 = phi i32 [ 0, %for.body183.lr.ph ], [ %inc197, %for.inc196 ]
  %33 = load %struct._IVL** %lowerblockIVL184, align 8, !dbg !1320, !tbaa !381
  call void @IVL_listAndSize(%struct._IVL* %33, i32 %J.10560, i32* %nadj, i32** %adj) #7, !dbg !1320
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !290), !dbg !1324
  call void @llvm.dbg.value(metadata !{i32* %nadj}, i64 0, metadata !293), !dbg !1324
  %34 = load i32* %nadj, align 4, !dbg !1324, !tbaa !431
  %cmp186555 = icmp sgt i32 %34, 0, !dbg !1324
  br i1 %cmp186555, label %for.body187, label %for.inc196, !dbg !1324

for.body187:                                      ; preds = %for.body183, %for.body187
  %indvars.iv576 = phi i64 [ %indvars.iv.next577, %for.body187 ], [ 0, %for.body183 ]
  %nmtx.11557 = phi i32 [ %nmtx.11.inc191, %for.body187 ], [ %nmtx.10561, %for.body183 ]
  call void @llvm.dbg.value(metadata !{i32** %adj}, i64 0, metadata !297), !dbg !1326
  %35 = load i32** %adj, align 8, !dbg !1326, !tbaa !381
  %arrayidx = getelementptr inbounds i32* %35, i64 %indvars.iv576, !dbg !1326
  %36 = load i32* %arrayidx, align 4, !dbg !1326, !tbaa !431
  call void @llvm.dbg.value(metadata !{i32 %36}, i64 0, metadata !292), !dbg !1326
  %call188 = call %struct._SubMtx* @FrontMtx_lowerMtx(%struct._FrontMtx* %frontmtx, i32 %36, i32 %J.10560) #7, !dbg !1328
  call void @llvm.dbg.value(metadata !{%struct._SubMtx* %call188}, i64 0, metadata !289), !dbg !1328
  %not.cmp189 = icmp ne %struct._SubMtx* %call188, null, !dbg !1328
  %inc191 = zext i1 %not.cmp189 to i32, !dbg !1328
  %nmtx.11.inc191 = add nsw i32 %inc191, %nmtx.11557, !dbg !1328
  %indvars.iv.next577 = add i64 %indvars.iv576, 1, !dbg !1324
  call void @llvm.dbg.value(metadata !{i32* %nadj}, i64 0, metadata !293), !dbg !1324
  %37 = load i32* %nadj, align 4, !dbg !1324, !tbaa !431
  %38 = trunc i64 %indvars.iv.next577 to i32, !dbg !1324
  %cmp186 = icmp slt i32 %38, %37, !dbg !1324
  br i1 %cmp186, label %for.body187, label %for.inc196, !dbg !1324

for.inc196:                                       ; preds = %for.body187, %for.body183
  %nmtx.11.lcssa = phi i32 [ %nmtx.10561, %for.body183 ], [ %nmtx.11.inc191, %for.body187 ]
  %inc197 = add nsw i32 %J.10560, 1, !dbg !1317
  call void @llvm.dbg.value(metadata !{i32 %inc197}, i64 0, metadata !291), !dbg !1317
  %39 = load i32* %nfront2, align 4, !dbg !1317, !tbaa !431
  %cmp182 = icmp slt i32 %inc197, %39, !dbg !1317
  br i1 %cmp182, label %for.body183, label %for.end198, !dbg !1317

for.end198:                                       ; preds = %for.inc196, %for.cond180.preheader
  %nmtx.10.lcssa = phi i32 [ 0, %for.cond180.preheader ], [ %nmtx.11.lcssa, %for.inc196 ]
  %call199 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([5 x i8]* @.str47, i64 0, i64 0), i32 %nmtx.10.lcssa) #7, !dbg !1329
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !291), !dbg !1330
  %40 = load i32* %nfront2, align 4, !dbg !1330, !tbaa !431
  %cmp202553 = icmp sgt i32 %40, 0, !dbg !1330
  br i1 %cmp202553, label %for.body203.lr.ph, label %for.end233, !dbg !1330

for.body203.lr.ph:                                ; preds = %for.end198
  %lowerblockIVL204 = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 16, !dbg !1332
  br label %for.body203, !dbg !1330

for.body203:                                      ; preds = %for.body203.lr.ph, %for.inc218
  %J.11554 = phi i32 [ 0, %for.body203.lr.ph ], [ %inc219, %for.inc218 ]
  %41 = load %struct._IVL** %lowerblockIVL204, align 8, !dbg !1332, !tbaa !381
  call void @IVL_listAndSize(%struct._IVL* %41, i32 %J.11554, i32* %nadj, i32** %adj) #7, !dbg !1332
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !290), !dbg !1334
  call void @llvm.dbg.value(metadata !{i32* %nadj}, i64 0, metadata !293), !dbg !1334
  %42 = load i32* %nadj, align 4, !dbg !1334, !tbaa !431
  %cmp206551 = icmp sgt i32 %42, 0, !dbg !1334
  br i1 %cmp206551, label %for.body207, label %for.inc218, !dbg !1334

for.body207:                                      ; preds = %for.body203, %for.inc215
  %indvars.iv574 = phi i64 [ %indvars.iv.next575, %for.inc215 ], [ 0, %for.body203 ]
  call void @llvm.dbg.value(metadata !{i32** %adj}, i64 0, metadata !297), !dbg !1336
  %43 = load i32** %adj, align 8, !dbg !1336, !tbaa !381
  %arrayidx209 = getelementptr inbounds i32* %43, i64 %indvars.iv574, !dbg !1336
  %44 = load i32* %arrayidx209, align 4, !dbg !1336, !tbaa !431
  call void @llvm.dbg.value(metadata !{i32 %44}, i64 0, metadata !292), !dbg !1336
  %call210 = call %struct._SubMtx* @FrontMtx_lowerMtx(%struct._FrontMtx* %frontmtx, i32 %44, i32 %J.11554) #7, !dbg !1338
  call void @llvm.dbg.value(metadata !{%struct._SubMtx* %call210}, i64 0, metadata !289), !dbg !1338
  %cmp211 = icmp eq %struct._SubMtx* %call210, null, !dbg !1338
  br i1 %cmp211, label %for.inc215, label %if.then212, !dbg !1338

if.then212:                                       ; preds = %for.body207
  %call213 = call i32 @SubMtx_writeToFormattedFile(%struct._SubMtx* %call210, %struct._IO_FILE* %fp) #7, !dbg !1339
  br label %for.inc215, !dbg !1341

for.inc215:                                       ; preds = %for.body207, %if.then212
  %indvars.iv.next575 = add i64 %indvars.iv574, 1, !dbg !1334
  call void @llvm.dbg.value(metadata !{i32* %nadj}, i64 0, metadata !293), !dbg !1334
  %45 = load i32* %nadj, align 4, !dbg !1334, !tbaa !431
  %46 = trunc i64 %indvars.iv.next575 to i32, !dbg !1334
  %cmp206 = icmp slt i32 %46, %45, !dbg !1334
  br i1 %cmp206, label %for.body207, label %for.inc218, !dbg !1334

for.inc218:                                       ; preds = %for.inc215, %for.body203
  %inc219 = add nsw i32 %J.11554, 1, !dbg !1330
  call void @llvm.dbg.value(metadata !{i32 %inc219}, i64 0, metadata !291), !dbg !1330
  %47 = load i32* %nfront2, align 4, !dbg !1330, !tbaa !431
  %cmp202 = icmp slt i32 %inc219, %47, !dbg !1330
  br i1 %cmp202, label %for.body203, label %for.cond222.preheader, !dbg !1330

for.body225:                                      ; preds = %for.cond222.preheader, %for.body225
  %nmtx.13549 = phi i32 [ %nmtx.13.inc229, %for.body225 ], [ 0, %for.cond222.preheader ]
  %J.12548 = phi i32 [ %inc232, %for.body225 ], [ 0, %for.cond222.preheader ]
  %call226 = call %struct._SubMtx* @FrontMtx_diagMtx(%struct._FrontMtx* %frontmtx, i32 %J.12548) #7, !dbg !1342
  call void @llvm.dbg.value(metadata !{%struct._SubMtx* %call226}, i64 0, metadata !289), !dbg !1342
  %not.cmp227 = icmp ne %struct._SubMtx* %call226, null, !dbg !1342
  %inc229 = zext i1 %not.cmp227 to i32, !dbg !1342
  %nmtx.13.inc229 = add nsw i32 %inc229, %nmtx.13549, !dbg !1342
  %inc232 = add nsw i32 %J.12548, 1, !dbg !1322
  call void @llvm.dbg.value(metadata !{i32 %inc232}, i64 0, metadata !291), !dbg !1322
  %48 = load i32* %nfront2, align 4, !dbg !1322, !tbaa !431
  %cmp224 = icmp slt i32 %inc232, %48, !dbg !1322
  br i1 %cmp224, label %for.body225, label %for.end233, !dbg !1322

for.end233:                                       ; preds = %for.body225, %for.end198, %for.cond222.preheader
  %nmtx.13.lcssa = phi i32 [ 0, %for.cond222.preheader ], [ 0, %for.end198 ], [ %nmtx.13.inc229, %for.body225 ]
  %call234 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([5 x i8]* @.str47, i64 0, i64 0), i32 %nmtx.13.lcssa) #7, !dbg !1344
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !291), !dbg !1345
  %49 = load i32* %nfront2, align 4, !dbg !1345, !tbaa !431
  %cmp237545 = icmp sgt i32 %49, 0, !dbg !1345
  br i1 %cmp237545, label %for.body238, label %for.end267, !dbg !1345

for.cond247.preheader:                            ; preds = %for.inc244
  %cmp249541 = icmp sgt i32 %50, 0, !dbg !1347
  br i1 %cmp249541, label %for.body250, label %for.end267, !dbg !1347

for.body238:                                      ; preds = %for.end233, %for.inc244
  %J.13546 = phi i32 [ %inc245, %for.inc244 ], [ 0, %for.end233 ]
  %call239 = call %struct._SubMtx* @FrontMtx_diagMtx(%struct._FrontMtx* %frontmtx, i32 %J.13546) #7, !dbg !1349
  call void @llvm.dbg.value(metadata !{%struct._SubMtx* %call239}, i64 0, metadata !289), !dbg !1349
  %cmp240 = icmp eq %struct._SubMtx* %call239, null, !dbg !1349
  br i1 %cmp240, label %for.inc244, label %if.then241, !dbg !1349

if.then241:                                       ; preds = %for.body238
  %call242 = call i32 @SubMtx_writeToFormattedFile(%struct._SubMtx* %call239, %struct._IO_FILE* %fp) #7, !dbg !1351
  br label %for.inc244, !dbg !1353

for.inc244:                                       ; preds = %for.body238, %if.then241
  %inc245 = add nsw i32 %J.13546, 1, !dbg !1345
  call void @llvm.dbg.value(metadata !{i32 %inc245}, i64 0, metadata !291), !dbg !1345
  %50 = load i32* %nfront2, align 4, !dbg !1345, !tbaa !431
  %cmp237 = icmp slt i32 %inc245, %50, !dbg !1345
  br i1 %cmp237, label %for.body238, label %for.cond247.preheader, !dbg !1345

for.body250:                                      ; preds = %for.cond247.preheader, %for.inc265
  %nmtx.15543 = phi i32 [ %nmtx.16.lcssa, %for.inc265 ], [ 0, %for.cond247.preheader ]
  %J.14542 = phi i32 [ %inc266, %for.inc265 ], [ 0, %for.cond247.preheader ]
  %51 = load %struct._IVL** %upperblockIVL, align 8, !dbg !1354, !tbaa !381
  call void @IVL_listAndSize(%struct._IVL* %51, i32 %J.14542, i32* %nadj, i32** %adj) #7, !dbg !1354
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !290), !dbg !1356
  call void @llvm.dbg.value(metadata !{i32* %nadj}, i64 0, metadata !293), !dbg !1356
  %52 = load i32* %nadj, align 4, !dbg !1356, !tbaa !431
  %cmp253537 = icmp sgt i32 %52, 0, !dbg !1356
  br i1 %cmp253537, label %for.body254, label %for.inc265, !dbg !1356

for.body254:                                      ; preds = %for.body250, %for.body254
  %indvars.iv572 = phi i64 [ %indvars.iv.next573, %for.body254 ], [ 0, %for.body250 ]
  %nmtx.16539 = phi i32 [ %nmtx.16.inc260, %for.body254 ], [ %nmtx.15543, %for.body250 ]
  call void @llvm.dbg.value(metadata !{i32** %adj}, i64 0, metadata !297), !dbg !1358
  %53 = load i32** %adj, align 8, !dbg !1358, !tbaa !381
  %arrayidx256 = getelementptr inbounds i32* %53, i64 %indvars.iv572, !dbg !1358
  %54 = load i32* %arrayidx256, align 4, !dbg !1358, !tbaa !431
  call void @llvm.dbg.value(metadata !{i32 %54}, i64 0, metadata !292), !dbg !1358
  %call257 = call %struct._SubMtx* @FrontMtx_upperMtx(%struct._FrontMtx* %frontmtx, i32 %J.14542, i32 %54) #7, !dbg !1360
  call void @llvm.dbg.value(metadata !{%struct._SubMtx* %call257}, i64 0, metadata !289), !dbg !1360
  %not.cmp258 = icmp ne %struct._SubMtx* %call257, null, !dbg !1360
  %inc260 = zext i1 %not.cmp258 to i32, !dbg !1360
  %nmtx.16.inc260 = add nsw i32 %inc260, %nmtx.16539, !dbg !1360
  %indvars.iv.next573 = add i64 %indvars.iv572, 1, !dbg !1356
  call void @llvm.dbg.value(metadata !{i32* %nadj}, i64 0, metadata !293), !dbg !1356
  %55 = load i32* %nadj, align 4, !dbg !1356, !tbaa !431
  %56 = trunc i64 %indvars.iv.next573 to i32, !dbg !1356
  %cmp253 = icmp slt i32 %56, %55, !dbg !1356
  br i1 %cmp253, label %for.body254, label %for.inc265, !dbg !1356

for.inc265:                                       ; preds = %for.body254, %for.body250
  %nmtx.16.lcssa = phi i32 [ %nmtx.15543, %for.body250 ], [ %nmtx.16.inc260, %for.body254 ]
  %inc266 = add nsw i32 %J.14542, 1, !dbg !1347
  call void @llvm.dbg.value(metadata !{i32 %inc266}, i64 0, metadata !291), !dbg !1347
  %57 = load i32* %nfront2, align 4, !dbg !1347, !tbaa !431
  %cmp249 = icmp slt i32 %inc266, %57, !dbg !1347
  br i1 %cmp249, label %for.body250, label %for.end267, !dbg !1347

for.end267:                                       ; preds = %for.end233, %for.inc265, %for.cond247.preheader
  %nmtx.15.lcssa = phi i32 [ 0, %for.cond247.preheader ], [ %nmtx.16.lcssa, %for.inc265 ], [ 0, %for.end233 ]
  %call268 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([5 x i8]* @.str47, i64 0, i64 0), i32 %nmtx.15.lcssa) #7, !dbg !1361
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !291), !dbg !1362
  %58 = load i32* %nfront2, align 4, !dbg !1362, !tbaa !431
  %cmp271535 = icmp sgt i32 %58, 0, !dbg !1362
  br i1 %cmp271535, label %for.body272, label %return, !dbg !1362

for.body272:                                      ; preds = %for.end267, %for.inc287
  %J.15536 = phi i32 [ %inc288, %for.inc287 ], [ 0, %for.end267 ]
  %59 = load %struct._IVL** %upperblockIVL, align 8, !dbg !1364, !tbaa !381
  call void @IVL_listAndSize(%struct._IVL* %59, i32 %J.15536, i32* %nadj, i32** %adj) #7, !dbg !1364
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !290), !dbg !1366
  call void @llvm.dbg.value(metadata !{i32* %nadj}, i64 0, metadata !293), !dbg !1366
  %60 = load i32* %nadj, align 4, !dbg !1366, !tbaa !431
  %cmp275532 = icmp sgt i32 %60, 0, !dbg !1366
  br i1 %cmp275532, label %for.body276, label %for.inc287, !dbg !1366

for.body276:                                      ; preds = %for.body272, %for.inc284
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc284 ], [ 0, %for.body272 ]
  call void @llvm.dbg.value(metadata !{i32** %adj}, i64 0, metadata !297), !dbg !1368
  %61 = load i32** %adj, align 8, !dbg !1368, !tbaa !381
  %arrayidx278 = getelementptr inbounds i32* %61, i64 %indvars.iv, !dbg !1368
  %62 = load i32* %arrayidx278, align 4, !dbg !1368, !tbaa !431
  call void @llvm.dbg.value(metadata !{i32 %62}, i64 0, metadata !292), !dbg !1368
  %call279 = call %struct._SubMtx* @FrontMtx_upperMtx(%struct._FrontMtx* %frontmtx, i32 %J.15536, i32 %62) #7, !dbg !1370
  call void @llvm.dbg.value(metadata !{%struct._SubMtx* %call279}, i64 0, metadata !289), !dbg !1370
  %cmp280 = icmp eq %struct._SubMtx* %call279, null, !dbg !1370
  br i1 %cmp280, label %for.inc284, label %if.then281, !dbg !1370

if.then281:                                       ; preds = %for.body276
  %call282 = call i32 @SubMtx_writeToFormattedFile(%struct._SubMtx* %call279, %struct._IO_FILE* %fp) #7, !dbg !1371
  br label %for.inc284, !dbg !1373

for.inc284:                                       ; preds = %for.body276, %if.then281
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !1366
  call void @llvm.dbg.value(metadata !{i32* %nadj}, i64 0, metadata !293), !dbg !1366
  %63 = load i32* %nadj, align 4, !dbg !1366, !tbaa !431
  %64 = trunc i64 %indvars.iv.next to i32, !dbg !1366
  %cmp275 = icmp slt i32 %64, %63, !dbg !1366
  br i1 %cmp275, label %for.body276, label %for.inc287, !dbg !1366

for.inc287:                                       ; preds = %for.inc284, %for.body272
  %inc288 = add nsw i32 %J.15536, 1, !dbg !1362
  call void @llvm.dbg.value(metadata !{i32 %inc288}, i64 0, metadata !291), !dbg !1362
  %65 = load i32* %nfront2, align 4, !dbg !1362, !tbaa !431
  %cmp271 = icmp slt i32 %inc288, %65, !dbg !1362
  br i1 %cmp271, label %for.body272, label %return, !dbg !1362

return:                                           ; preds = %for.cond140.preheader.thread, %for.cond117.preheader.thread, %for.cond94.preheader.thread, %for.end267, %for.inc287, %for.inc160, %if.then174, %if.then168, %if.then42, %if.then36, %if.then24, %if.then16, %if.then11, %if.then6
  %retval.0 = phi i32 [ 0, %if.then6 ], [ 0, %if.then11 ], [ 0, %if.then16 ], [ 0, %if.then24 ], [ 0, %if.then36 ], [ 0, %if.then42 ], [ 0, %if.then168 ], [ 0, %if.then174 ], [ 1, %for.inc160 ], [ 1, %for.cond140.preheader.thread ], [ 1, %for.inc287 ], [ 1, %for.end267 ], [ 1, %for.cond94.preheader.thread ], [ 1, %for.cond117.preheader.thread ]
  ret i32 %retval.0, !dbg !1374
}

; Function Attrs: nounwind optsize uwtable
define i32 @FrontMtx_writeForHumanEye(%struct._FrontMtx* %frontmtx, %struct._IO_FILE* %fp) #0 {
entry:
  %nadj = alloca i32, align 4
  %adj = alloca i32*, align 8
  call void @llvm.dbg.value(metadata !{%struct._FrontMtx* %frontmtx}, i64 0, metadata !318), !dbg !1375
  call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %fp}, i64 0, metadata !319), !dbg !1376
  call void @llvm.dbg.declare(metadata !{i32* %nadj}, metadata !324), !dbg !1377
  call void @llvm.dbg.declare(metadata !{i32** %adj}, metadata !326), !dbg !1378
  %cmp = icmp eq %struct._FrontMtx* %frontmtx, null, !dbg !1379
  %cmp1 = icmp eq %struct._IO_FILE* %fp, null, !dbg !1379
  %or.cond = or i1 %cmp, %cmp1, !dbg !1379
  br i1 %or.cond, label %if.then, label %if.end, !dbg !1379

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !1380, !tbaa !381
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([62 x i8]* @.str71, i64 0, i64 0), %struct._FrontMtx* %frontmtx, %struct._IO_FILE* %fp) #7, !dbg !1380
  call void @exit(i32 -1) #10, !dbg !1382
  unreachable, !dbg !1382

if.end:                                           ; preds = %entry
  %nfront2 = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 0, !dbg !1383
  %1 = load i32* %nfront2, align 4, !dbg !1383, !tbaa !431
  call void @llvm.dbg.value(metadata !{i32 %1}, i64 0, metadata !325), !dbg !1383
  %call3 = call i32 @FrontMtx_writeStats(%struct._FrontMtx* %frontmtx, %struct._IO_FILE* %fp) #9, !dbg !1384
  %frontETree = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 11, !dbg !1385
  %2 = load %struct._ETree** %frontETree, align 8, !dbg !1385, !tbaa !381
  %cmp4 = icmp eq %struct._ETree* %2, null, !dbg !1385
  br i1 %cmp4, label %if.end10, label %if.then5, !dbg !1385

if.then5:                                         ; preds = %if.end
  %3 = call i64 @fwrite(i8* getelementptr inbounds ([30 x i8]* @.str72, i64 0, i64 0), i64 29, i64 1, %struct._IO_FILE* %fp) #4, !dbg !1386
  %4 = load %struct._ETree** %frontETree, align 8, !dbg !1388, !tbaa !381
  %call8 = call i32 @ETree_writeForHumanEye(%struct._ETree* %4, %struct._IO_FILE* %fp) #7, !dbg !1388
  %call9 = call i32 @fflush(%struct._IO_FILE* %fp) #7, !dbg !1389
  br label %if.end10, !dbg !1390

if.end10:                                         ; preds = %if.end, %if.then5
  %symbfacIVL = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 13, !dbg !1391
  %5 = load %struct._IVL** %symbfacIVL, align 8, !dbg !1391, !tbaa !381
  %cmp11 = icmp eq %struct._IVL* %5, null, !dbg !1391
  br i1 %cmp11, label %if.end17, label %if.then12, !dbg !1391

if.then12:                                        ; preds = %if.end10
  %6 = call i64 @fwrite(i8* getelementptr inbounds ([25 x i8]* @.str73, i64 0, i64 0), i64 24, i64 1, %struct._IO_FILE* %fp) #4, !dbg !1392
  %7 = load %struct._IVL** %symbfacIVL, align 8, !dbg !1394, !tbaa !381
  %call15 = call i32 @IVL_writeForHumanEye(%struct._IVL* %7, %struct._IO_FILE* %fp) #7, !dbg !1394
  %call16 = call i32 @fflush(%struct._IO_FILE* %fp) #7, !dbg !1395
  br label %if.end17, !dbg !1396

if.end17:                                         ; preds = %if.end10, %if.then12
  %frontsizesIV = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 12, !dbg !1397
  %8 = load %struct._IV** %frontsizesIV, align 8, !dbg !1397, !tbaa !381
  %cmp18 = icmp eq %struct._IV* %8, null, !dbg !1397
  br i1 %cmp18, label %if.end24, label %if.then19, !dbg !1397

if.then19:                                        ; preds = %if.end17
  %9 = call i64 @fwrite(i8* getelementptr inbounds ([26 x i8]* @.str74, i64 0, i64 0), i64 25, i64 1, %struct._IO_FILE* %fp) #4, !dbg !1398
  %10 = load %struct._IV** %frontsizesIV, align 8, !dbg !1400, !tbaa !381
  %call22 = call i32 @IV_writeForHumanEye(%struct._IV* %10, %struct._IO_FILE* %fp) #7, !dbg !1400
  %call23 = call i32 @fflush(%struct._IO_FILE* %fp) #7, !dbg !1401
  br label %if.end24, !dbg !1402

if.end24:                                         ; preds = %if.end17, %if.then19
  %rowadjIVL = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 14, !dbg !1403
  %11 = load %struct._IVL** %rowadjIVL, align 8, !dbg !1403, !tbaa !381
  %cmp25 = icmp eq %struct._IVL* %11, null, !dbg !1403
  br i1 %cmp25, label %if.end31, label %if.then26, !dbg !1403

if.then26:                                        ; preds = %if.end24
  %12 = call i64 @fwrite(i8* getelementptr inbounds ([21 x i8]* @.str75, i64 0, i64 0), i64 20, i64 1, %struct._IO_FILE* %fp) #4, !dbg !1404
  %13 = load %struct._IVL** %rowadjIVL, align 8, !dbg !1406, !tbaa !381
  %call29 = call i32 @IVL_writeForHumanEye(%struct._IVL* %13, %struct._IO_FILE* %fp) #7, !dbg !1406
  %call30 = call i32 @fflush(%struct._IO_FILE* %fp) #7, !dbg !1407
  br label %if.end31, !dbg !1408

if.end31:                                         ; preds = %if.end24, %if.then26
  %coladjIVL = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 15, !dbg !1409
  %14 = load %struct._IVL** %coladjIVL, align 8, !dbg !1409, !tbaa !381
  %cmp32 = icmp eq %struct._IVL* %14, null, !dbg !1409
  br i1 %cmp32, label %if.end38, label %if.then33, !dbg !1409

if.then33:                                        ; preds = %if.end31
  %15 = call i64 @fwrite(i8* getelementptr inbounds ([21 x i8]* @.str76, i64 0, i64 0), i64 20, i64 1, %struct._IO_FILE* %fp) #4, !dbg !1410
  %16 = load %struct._IVL** %coladjIVL, align 8, !dbg !1412, !tbaa !381
  %call36 = call i32 @IVL_writeForHumanEye(%struct._IVL* %16, %struct._IO_FILE* %fp) #7, !dbg !1412
  %call37 = call i32 @fflush(%struct._IO_FILE* %fp) #7, !dbg !1413
  br label %if.end38, !dbg !1414

if.end38:                                         ; preds = %if.end31, %if.then33
  %lowerblockIVL = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 16, !dbg !1415
  %17 = load %struct._IVL** %lowerblockIVL, align 8, !dbg !1415, !tbaa !381
  %cmp39 = icmp eq %struct._IVL* %17, null, !dbg !1415
  br i1 %cmp39, label %if.end45, label %if.then40, !dbg !1415

if.then40:                                        ; preds = %if.end38
  %18 = call i64 @fwrite(i8* getelementptr inbounds ([36 x i8]* @.str77, i64 0, i64 0), i64 35, i64 1, %struct._IO_FILE* %fp) #4, !dbg !1416
  %19 = load %struct._IVL** %lowerblockIVL, align 8, !dbg !1418, !tbaa !381
  %call43 = call i32 @IVL_writeForHumanEye(%struct._IVL* %19, %struct._IO_FILE* %fp) #7, !dbg !1418
  %call44 = call i32 @fflush(%struct._IO_FILE* %fp) #7, !dbg !1419
  br label %if.end45, !dbg !1420

if.end45:                                         ; preds = %if.end38, %if.then40
  %upperblockIVL = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 17, !dbg !1421
  %20 = load %struct._IVL** %upperblockIVL, align 8, !dbg !1421, !tbaa !381
  %cmp46 = icmp eq %struct._IVL* %20, null, !dbg !1421
  br i1 %cmp46, label %if.end52, label %if.then47, !dbg !1421

if.then47:                                        ; preds = %if.end45
  %21 = call i64 @fwrite(i8* getelementptr inbounds ([36 x i8]* @.str78, i64 0, i64 0), i64 35, i64 1, %struct._IO_FILE* %fp) #4, !dbg !1422
  %22 = load %struct._IVL** %upperblockIVL, align 8, !dbg !1424, !tbaa !381
  %call50 = call i32 @IVL_writeForHumanEye(%struct._IVL* %22, %struct._IO_FILE* %fp) #7, !dbg !1424
  %call51 = call i32 @fflush(%struct._IO_FILE* %fp) #7, !dbg !1425
  br label %if.end52, !dbg !1426

if.end52:                                         ; preds = %if.end45, %if.then47
  %symmetryflag = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 3, !dbg !1427
  %23 = load i32* %symmetryflag, align 4, !dbg !1427, !tbaa !431
  %cmp53 = icmp eq i32 %23, 2, !dbg !1427
  br i1 %cmp53, label %if.then54, label %if.end88, !dbg !1427

if.then54:                                        ; preds = %if.end52
  %24 = call i64 @fwrite(i8* getelementptr inbounds ([21 x i8]* @.str79, i64 0, i64 0), i64 20, i64 1, %struct._IO_FILE* %fp) #4, !dbg !1428
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !322), !dbg !1430
  %cmp56272 = icmp sgt i32 %1, 0, !dbg !1430
  br i1 %cmp56272, label %for.body.lr.ph, label %if.end88.thread, !dbg !1430

if.end88.thread:                                  ; preds = %if.then54
  %25 = call i64 @fwrite(i8* getelementptr inbounds ([24 x i8]* @.str82, i64 0, i64 0), i64 23, i64 1, %struct._IO_FILE* %fp) #4, !dbg !1432
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !322), !dbg !1433
  %26 = call i64 @fwrite(i8* getelementptr inbounds ([21 x i8]* @.str84, i64 0, i64 0), i64 20, i64 1, %struct._IO_FILE* %fp) #4, !dbg !1435
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !322), !dbg !1436
  br label %for.end145

for.body.lr.ph:                                   ; preds = %if.then54
  %dataMode = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 6, !dbg !1438
  br label %for.body, !dbg !1430

for.body:                                         ; preds = %for.inc85, %for.body.lr.ph
  %J.0273 = phi i32 [ 0, %for.body.lr.ph ], [ %inc86, %for.inc85 ]
  %call57 = call %struct._SubMtx* @FrontMtx_lowerMtx(%struct._FrontMtx* %frontmtx, i32 %J.0273, i32 %J.0273) #7, !dbg !1440
  call void @llvm.dbg.value(metadata !{%struct._SubMtx* %call57}, i64 0, metadata !320), !dbg !1440
  %cmp58 = icmp eq %struct._SubMtx* %call57, null, !dbg !1441
  br i1 %cmp58, label %if.end63, label %if.then59, !dbg !1441

if.then59:                                        ; preds = %for.body
  %27 = call i64 @fwrite(i8* getelementptr inbounds ([35 x i8]* @.str80, i64 0, i64 0), i64 34, i64 1, %struct._IO_FILE* %fp) #4, !dbg !1442
  %call61 = call i32 @SubMtx_writeForHumanEye(%struct._SubMtx* %call57, %struct._IO_FILE* %fp) #7, !dbg !1444
  %call62 = call i32 @fflush(%struct._IO_FILE* %fp) #7, !dbg !1445
  br label %if.end63, !dbg !1446

if.end63:                                         ; preds = %for.body, %if.then59
  %28 = load i32* %dataMode, align 4, !dbg !1438, !tbaa !431
  %cmp64 = icmp eq i32 %28, 1, !dbg !1438
  br i1 %cmp64, label %if.then65, label %if.else, !dbg !1438

if.then65:                                        ; preds = %if.end63
  %call66 = call %struct._SubMtx* @FrontMtx_lowerMtx(%struct._FrontMtx* %frontmtx, i32 %1, i32 %J.0273) #7, !dbg !1447
  call void @llvm.dbg.value(metadata !{%struct._SubMtx* %call66}, i64 0, metadata !320), !dbg !1447
  %cmp67 = icmp eq %struct._SubMtx* %call66, null, !dbg !1449
  br i1 %cmp67, label %for.inc85, label %if.then68, !dbg !1449

if.then68:                                        ; preds = %if.then65
  %29 = call i64 @fwrite(i8* getelementptr inbounds ([23 x i8]* @.str81, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %fp) #4, !dbg !1450
  %call70 = call i32 @SubMtx_writeForHumanEye(%struct._SubMtx* %call66, %struct._IO_FILE* %fp) #7, !dbg !1452
  %call71 = call i32 @fflush(%struct._IO_FILE* %fp) #7, !dbg !1453
  br label %for.inc85, !dbg !1454

if.else:                                          ; preds = %if.end63
  call void @FrontMtx_lowerAdjFronts(%struct._FrontMtx* %frontmtx, i32 %J.0273, i32* %nadj, i32** %adj) #7, !dbg !1455
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !321), !dbg !1457
  call void @llvm.dbg.value(metadata !{i32* %nadj}, i64 0, metadata !324), !dbg !1457
  %30 = load i32* %nadj, align 4, !dbg !1457, !tbaa !431
  %cmp74270 = icmp sgt i32 %30, 0, !dbg !1457
  br i1 %cmp74270, label %for.body75, label %for.inc85, !dbg !1457

for.body75:                                       ; preds = %for.inc, %if.else
  %indvars.iv277 = phi i64 [ 0, %if.else ], [ %indvars.iv.next278, %for.inc ]
  call void @llvm.dbg.value(metadata !{i32** %adj}, i64 0, metadata !326), !dbg !1459
  %31 = load i32** %adj, align 8, !dbg !1459, !tbaa !381
  %arrayidx = getelementptr inbounds i32* %31, i64 %indvars.iv277, !dbg !1459
  %32 = load i32* %arrayidx, align 4, !dbg !1459, !tbaa !431
  call void @llvm.dbg.value(metadata !{i32 %32}, i64 0, metadata !323), !dbg !1459
  %cmp76 = icmp sgt i32 %32, %J.0273, !dbg !1459
  br i1 %cmp76, label %land.lhs.true, label %for.inc, !dbg !1459

land.lhs.true:                                    ; preds = %for.body75
  %call77 = call %struct._SubMtx* @FrontMtx_lowerMtx(%struct._FrontMtx* %frontmtx, i32 %32, i32 %J.0273) #7, !dbg !1461
  call void @llvm.dbg.value(metadata !{%struct._SubMtx* %call77}, i64 0, metadata !320), !dbg !1461
  %cmp78 = icmp eq %struct._SubMtx* %call77, null, !dbg !1461
  br i1 %cmp78, label %for.inc, label %if.then79, !dbg !1461

if.then79:                                        ; preds = %land.lhs.true
  %33 = call i64 @fwrite(i8* getelementptr inbounds ([23 x i8]* @.str81, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %fp) #4, !dbg !1462
  %call81 = call i32 @SubMtx_writeForHumanEye(%struct._SubMtx* %call77, %struct._IO_FILE* %fp) #7, !dbg !1464
  %call82 = call i32 @fflush(%struct._IO_FILE* %fp) #7, !dbg !1465
  br label %for.inc, !dbg !1466

for.inc:                                          ; preds = %land.lhs.true, %for.body75, %if.then79
  %indvars.iv.next278 = add i64 %indvars.iv277, 1, !dbg !1457
  call void @llvm.dbg.value(metadata !{i32* %nadj}, i64 0, metadata !324), !dbg !1457
  %34 = load i32* %nadj, align 4, !dbg !1457, !tbaa !431
  %35 = trunc i64 %indvars.iv.next278 to i32, !dbg !1457
  %cmp74 = icmp slt i32 %35, %34, !dbg !1457
  br i1 %cmp74, label %for.body75, label %for.inc85, !dbg !1457

for.inc85:                                        ; preds = %if.else, %for.inc, %if.then65, %if.then68
  %inc86 = add nsw i32 %J.0273, 1, !dbg !1430
  call void @llvm.dbg.value(metadata !{i32 %inc86}, i64 0, metadata !322), !dbg !1430
  %exitcond279 = icmp eq i32 %inc86, %1, !dbg !1430
  br i1 %exitcond279, label %if.end88, label %for.body, !dbg !1430

if.end88:                                         ; preds = %for.inc85, %if.end52
  %36 = call i64 @fwrite(i8* getelementptr inbounds ([24 x i8]* @.str82, i64 0, i64 0), i64 23, i64 1, %struct._IO_FILE* %fp) #4, !dbg !1432
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !322), !dbg !1433
  %cmp91268 = icmp sgt i32 %1, 0, !dbg !1433
  br i1 %cmp91268, label %for.body92, label %for.end102.thread, !dbg !1433

for.end102.thread:                                ; preds = %if.end88
  %37 = call i64 @fwrite(i8* getelementptr inbounds ([21 x i8]* @.str84, i64 0, i64 0), i64 20, i64 1, %struct._IO_FILE* %fp) #4, !dbg !1435
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !322), !dbg !1436
  br label %for.end145, !dbg !1436

for.body92:                                       ; preds = %if.end88, %if.end98
  %J.1269 = phi i32 [ %inc101, %if.end98 ], [ 0, %if.end88 ]
  %call93 = call %struct._SubMtx* @FrontMtx_diagMtx(%struct._FrontMtx* %frontmtx, i32 %J.1269) #7, !dbg !1467
  call void @llvm.dbg.value(metadata !{%struct._SubMtx* %call93}, i64 0, metadata !320), !dbg !1467
  %cmp94 = icmp eq %struct._SubMtx* %call93, null, !dbg !1469
  br i1 %cmp94, label %if.end98, label %if.then95, !dbg !1469

if.then95:                                        ; preds = %for.body92
  %38 = call i64 @fwrite(i8* getelementptr inbounds ([26 x i8]* @.str83, i64 0, i64 0), i64 25, i64 1, %struct._IO_FILE* %fp) #4, !dbg !1470
  %call97 = call i32 @SubMtx_writeForHumanEye(%struct._SubMtx* %call93, %struct._IO_FILE* %fp) #7, !dbg !1472
  br label %if.end98, !dbg !1473

if.end98:                                         ; preds = %for.body92, %if.then95
  %call99 = call i32 @fflush(%struct._IO_FILE* %fp) #7, !dbg !1474
  %inc101 = add nsw i32 %J.1269, 1, !dbg !1433
  call void @llvm.dbg.value(metadata !{i32 %inc101}, i64 0, metadata !322), !dbg !1433
  %exitcond276 = icmp eq i32 %inc101, %1, !dbg !1433
  br i1 %exitcond276, label %for.end102, label %for.body92, !dbg !1433

for.end102:                                       ; preds = %if.end98
  %39 = call i64 @fwrite(i8* getelementptr inbounds ([21 x i8]* @.str84, i64 0, i64 0), i64 20, i64 1, %struct._IO_FILE* %fp) #4, !dbg !1435
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !322), !dbg !1436
  br i1 %cmp91268, label %for.body106.lr.ph, label %for.end145, !dbg !1436

for.body106.lr.ph:                                ; preds = %for.end102
  %dataMode114 = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 6, !dbg !1475
  br label %for.body106, !dbg !1436

for.body106:                                      ; preds = %for.inc143, %for.body106.lr.ph
  %J.2265 = phi i32 [ 0, %for.body106.lr.ph ], [ %inc144, %for.inc143 ]
  %call107 = call %struct._SubMtx* @FrontMtx_upperMtx(%struct._FrontMtx* %frontmtx, i32 %J.2265, i32 %J.2265) #7, !dbg !1477
  call void @llvm.dbg.value(metadata !{%struct._SubMtx* %call107}, i64 0, metadata !320), !dbg !1477
  %cmp108 = icmp eq %struct._SubMtx* %call107, null, !dbg !1478
  br i1 %cmp108, label %if.end113, label %if.then109, !dbg !1478

if.then109:                                       ; preds = %for.body106
  %40 = call i64 @fwrite(i8* getelementptr inbounds ([36 x i8]* @.str85, i64 0, i64 0), i64 35, i64 1, %struct._IO_FILE* %fp) #4, !dbg !1479
  %call111 = call i32 @SubMtx_writeForHumanEye(%struct._SubMtx* %call107, %struct._IO_FILE* %fp) #7, !dbg !1481
  %call112 = call i32 @fflush(%struct._IO_FILE* %fp) #7, !dbg !1482
  br label %if.end113, !dbg !1483

if.end113:                                        ; preds = %for.body106, %if.then109
  %41 = load i32* %dataMode114, align 4, !dbg !1475, !tbaa !431
  %cmp115 = icmp eq i32 %41, 1, !dbg !1475
  br i1 %cmp115, label %if.then116, label %if.else124, !dbg !1475

if.then116:                                       ; preds = %if.end113
  %call117 = call %struct._SubMtx* @FrontMtx_upperMtx(%struct._FrontMtx* %frontmtx, i32 %J.2265, i32 %1) #7, !dbg !1484
  call void @llvm.dbg.value(metadata !{%struct._SubMtx* %call117}, i64 0, metadata !320), !dbg !1484
  %cmp118 = icmp eq %struct._SubMtx* %call117, null, !dbg !1486
  br i1 %cmp118, label %for.inc143, label %if.then119, !dbg !1486

if.then119:                                       ; preds = %if.then116
  %42 = call i64 @fwrite(i8* getelementptr inbounds ([23 x i8]* @.str86, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %fp) #4, !dbg !1487
  %call121 = call i32 @SubMtx_writeForHumanEye(%struct._SubMtx* %call117, %struct._IO_FILE* %fp) #7, !dbg !1489
  %call122 = call i32 @fflush(%struct._IO_FILE* %fp) #7, !dbg !1490
  br label %for.inc143, !dbg !1491

if.else124:                                       ; preds = %if.end113
  call void @FrontMtx_upperAdjFronts(%struct._FrontMtx* %frontmtx, i32 %J.2265, i32* %nadj, i32** %adj) #7, !dbg !1492
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !321), !dbg !1494
  call void @llvm.dbg.value(metadata !{i32* %nadj}, i64 0, metadata !324), !dbg !1494
  %43 = load i32* %nadj, align 4, !dbg !1494, !tbaa !431
  %cmp126262 = icmp sgt i32 %43, 0, !dbg !1494
  br i1 %cmp126262, label %for.body127, label %for.inc143, !dbg !1494

for.body127:                                      ; preds = %for.inc139, %if.else124
  %indvars.iv = phi i64 [ 0, %if.else124 ], [ %indvars.iv.next, %for.inc139 ]
  call void @llvm.dbg.value(metadata !{i32** %adj}, i64 0, metadata !326), !dbg !1496
  %44 = load i32** %adj, align 8, !dbg !1496, !tbaa !381
  %arrayidx129 = getelementptr inbounds i32* %44, i64 %indvars.iv, !dbg !1496
  %45 = load i32* %arrayidx129, align 4, !dbg !1496, !tbaa !431
  call void @llvm.dbg.value(metadata !{i32 %45}, i64 0, metadata !323), !dbg !1496
  %cmp130 = icmp sgt i32 %45, %J.2265, !dbg !1496
  br i1 %cmp130, label %land.lhs.true131, label %for.inc139, !dbg !1496

land.lhs.true131:                                 ; preds = %for.body127
  %call132 = call %struct._SubMtx* @FrontMtx_upperMtx(%struct._FrontMtx* %frontmtx, i32 %J.2265, i32 %45) #7, !dbg !1498
  call void @llvm.dbg.value(metadata !{%struct._SubMtx* %call132}, i64 0, metadata !320), !dbg !1498
  %cmp133 = icmp eq %struct._SubMtx* %call132, null, !dbg !1498
  br i1 %cmp133, label %for.inc139, label %if.then134, !dbg !1498

if.then134:                                       ; preds = %land.lhs.true131
  %46 = call i64 @fwrite(i8* getelementptr inbounds ([23 x i8]* @.str86, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %fp) #4, !dbg !1499
  %call136 = call i32 @SubMtx_writeForHumanEye(%struct._SubMtx* %call132, %struct._IO_FILE* %fp) #7, !dbg !1501
  %call137 = call i32 @fflush(%struct._IO_FILE* %fp) #7, !dbg !1502
  br label %for.inc139, !dbg !1503

for.inc139:                                       ; preds = %land.lhs.true131, %for.body127, %if.then134
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !1494
  call void @llvm.dbg.value(metadata !{i32* %nadj}, i64 0, metadata !324), !dbg !1494
  %47 = load i32* %nadj, align 4, !dbg !1494, !tbaa !431
  %48 = trunc i64 %indvars.iv.next to i32, !dbg !1494
  %cmp126 = icmp slt i32 %48, %47, !dbg !1494
  br i1 %cmp126, label %for.body127, label %for.inc143, !dbg !1494

for.inc143:                                       ; preds = %if.else124, %for.inc139, %if.then116, %if.then119
  %inc144 = add nsw i32 %J.2265, 1, !dbg !1436
  call void @llvm.dbg.value(metadata !{i32 %inc144}, i64 0, metadata !322), !dbg !1436
  %exitcond = icmp eq i32 %inc144, %1, !dbg !1436
  br i1 %exitcond, label %for.end145, label %for.body106, !dbg !1436

for.end145:                                       ; preds = %if.end88.thread, %for.inc143, %for.end102.thread, %for.end102
  %49 = call i64 @fwrite(i8* getelementptr inbounds ([41 x i8]* @.str87, i64 0, i64 0), i64 40, i64 1, %struct._IO_FILE* %fp) #4, !dbg !1504
  %call147 = call i32 @fflush(%struct._IO_FILE* %fp) #7, !dbg !1505
  ret i32 1, !dbg !1506
}

; Function Attrs: optsize
declare i32 @ETree_writeToFormattedFile(%struct._ETree*, %struct._IO_FILE*) #5

; Function Attrs: optsize
declare i32 @IVL_writeToFormattedFile(%struct._IVL*, %struct._IO_FILE*) #5

; Function Attrs: optsize
declare i32 @IV_writeToFormattedFile(%struct._IV*, %struct._IO_FILE*) #5

; Function Attrs: optsize
declare %struct._SubMtx* @FrontMtx_lowerMtx(%struct._FrontMtx*, i32, i32) #5

; Function Attrs: optsize
declare i32 @SubMtx_writeToFormattedFile(%struct._SubMtx*, %struct._IO_FILE*) #5

; Function Attrs: optsize
declare %struct._SubMtx* @FrontMtx_diagMtx(%struct._FrontMtx*, i32) #5

; Function Attrs: optsize
declare %struct._SubMtx* @FrontMtx_upperMtx(%struct._FrontMtx*, i32, i32) #5

; Function Attrs: optsize
declare void @IVL_listAndSize(%struct._IVL*, i32, i32*, i32**) #5

; Function Attrs: nounwind optsize
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #2

; Function Attrs: optsize
declare i32 @ETree_writeToBinaryFile(%struct._ETree*, %struct._IO_FILE*) #5

; Function Attrs: optsize
declare i32 @IVL_writeToBinaryFile(%struct._IVL*, %struct._IO_FILE*) #5

; Function Attrs: optsize
declare i32 @IV_writeToBinaryFile(%struct._IV*, %struct._IO_FILE*) #5

; Function Attrs: optsize
declare i32 @SubMtx_writeToBinaryFile(%struct._SubMtx*, %struct._IO_FILE*) #5

; Function Attrs: nounwind optsize uwtable
define i32 @FrontMtx_writeStats(%struct._FrontMtx* %frontmtx, %struct._IO_FILE* %fp) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._FrontMtx* %frontmtx}, i64 0, metadata !314), !dbg !1507
  tail call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %fp}, i64 0, metadata !315), !dbg !1508
  %cmp = icmp eq %struct._FrontMtx* %frontmtx, null, !dbg !1509
  %cmp1 = icmp eq %struct._IO_FILE* %fp, null, !dbg !1509
  %or.cond = or i1 %cmp, %cmp1, !dbg !1509
  br i1 %or.cond, label %if.then, label %if.end, !dbg !1509

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !1510, !tbaa !381
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([50 x i8]* @.str59, i64 0, i64 0), %struct._FrontMtx* %frontmtx, %struct._IO_FILE* %fp) #7, !dbg !1510
  tail call void @exit(i32 -1) #10, !dbg !1512
  unreachable, !dbg !1512

if.end:                                           ; preds = %entry
  %nfront = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 0, !dbg !1513
  %1 = load i32* %nfront, align 4, !dbg !1513, !tbaa !431
  %call2 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([46 x i8]* @.str60, i64 0, i64 0), %struct._FrontMtx* %frontmtx, i32 %1) #7, !dbg !1513
  %symmetryflag = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 3, !dbg !1514
  %2 = load i32* %symmetryflag, align 4, !dbg !1514, !tbaa !431
  switch i32 %2, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb4
    i32 2, label %sw.bb6
  ], !dbg !1514

sw.bb:                                            ; preds = %if.end
  %3 = tail call i64 @fwrite(i8* getelementptr inbounds ([20 x i8]* @.str61, i64 0, i64 0), i64 19, i64 1, %struct._IO_FILE* %fp) #4, !dbg !1515
  br label %sw.epilog, !dbg !1517

sw.bb4:                                           ; preds = %if.end
  %4 = tail call i64 @fwrite(i8* getelementptr inbounds ([12 x i8]* @.str62, i64 0, i64 0), i64 11, i64 1, %struct._IO_FILE* %fp) #4, !dbg !1518
  br label %sw.epilog, !dbg !1519

sw.bb6:                                           ; preds = %if.end
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([47 x i8]* @.str63, i64 0, i64 0), i64 46, i64 1, %struct._IO_FILE* %fp) #4, !dbg !1520
  br label %sw.epilog, !dbg !1521

sw.epilog:                                        ; preds = %if.end, %sw.bb6, %sw.bb4, %sw.bb
  %pivotingflag = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 5, !dbg !1522
  %6 = load i32* %pivotingflag, align 4, !dbg !1522, !tbaa !431
  switch i32 %6, label %sw.epilog13 [
    i32 0, label %sw.bb8
    i32 1, label %sw.bb10
  ], !dbg !1522

sw.bb8:                                           ; preds = %sw.epilog
  %7 = tail call i64 @fwrite(i8* getelementptr inbounds ([20 x i8]* @.str64, i64 0, i64 0), i64 19, i64 1, %struct._IO_FILE* %fp) #4, !dbg !1523
  br label %sw.epilog13, !dbg !1525

sw.bb10:                                          ; preds = %sw.epilog
  %8 = tail call i64 @fwrite(i8* getelementptr inbounds ([19 x i8]* @.str65, i64 0, i64 0), i64 18, i64 1, %struct._IO_FILE* %fp) #4, !dbg !1526
  br label %sw.epilog13, !dbg !1527

sw.epilog13:                                      ; preds = %sw.epilog, %sw.bb10, %sw.bb8
  %sparsityflag = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 4, !dbg !1528
  %9 = load i32* %sparsityflag, align 4, !dbg !1528, !tbaa !431
  switch i32 %9, label %sw.epilog19 [
    i32 0, label %sw.bb14
    i32 1, label %sw.bb16
  ], !dbg !1528

sw.bb14:                                          ; preds = %sw.epilog13
  %10 = tail call i64 @fwrite(i8* getelementptr inbounds ([15 x i8]* @.str66, i64 0, i64 0), i64 14, i64 1, %struct._IO_FILE* %fp) #4, !dbg !1529
  br label %sw.epilog19, !dbg !1531

sw.bb16:                                          ; preds = %sw.epilog13
  %11 = tail call i64 @fwrite(i8* getelementptr inbounds ([17 x i8]* @.str67, i64 0, i64 0), i64 16, i64 1, %struct._IO_FILE* %fp) #4, !dbg !1532
  br label %sw.epilog19, !dbg !1533

sw.epilog19:                                      ; preds = %sw.epilog13, %sw.bb16, %sw.bb14
  %dataMode = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 6, !dbg !1534
  %12 = load i32* %dataMode, align 4, !dbg !1534, !tbaa !431
  switch i32 %12, label %sw.epilog25 [
    i32 1, label %sw.bb20
    i32 2, label %sw.bb22
  ], !dbg !1534

sw.bb20:                                          ; preds = %sw.epilog19
  %13 = tail call i64 @fwrite(i8* getelementptr inbounds ([37 x i8]* @.str68, i64 0, i64 0), i64 36, i64 1, %struct._IO_FILE* %fp) #4, !dbg !1535
  br label %sw.epilog25, !dbg !1537

sw.bb22:                                          ; preds = %sw.epilog19
  %14 = tail call i64 @fwrite(i8* getelementptr inbounds ([37 x i8]* @.str69, i64 0, i64 0), i64 36, i64 1, %struct._IO_FILE* %fp) #4, !dbg !1538
  br label %sw.epilog25, !dbg !1539

sw.epilog25:                                      ; preds = %sw.epilog19, %sw.bb22, %sw.bb20
  %nentD = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 7, !dbg !1540
  %15 = load i32* %nentD, align 4, !dbg !1540, !tbaa !431
  %nentL = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 8, !dbg !1540
  %16 = load i32* %nentL, align 4, !dbg !1540, !tbaa !431
  %nentU = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 9, !dbg !1540
  %17 = load i32* %nentU, align 4, !dbg !1540, !tbaa !431
  %call26 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([52 x i8]* @.str70, i64 0, i64 0), i32 %15, i32 %16, i32 %17) #7, !dbg !1540
  ret i32 1, !dbg !1541
}

; Function Attrs: optsize
declare i32 @ETree_writeForHumanEye(%struct._ETree*, %struct._IO_FILE*) #5

; Function Attrs: optsize
declare i32 @IVL_writeForHumanEye(%struct._IVL*, %struct._IO_FILE*) #5

; Function Attrs: optsize
declare i32 @IV_writeForHumanEye(%struct._IV*, %struct._IO_FILE*) #5

; Function Attrs: optsize
declare i32 @SubMtx_writeForHumanEye(%struct._SubMtx*, %struct._IO_FILE*) #5

; Function Attrs: optsize
declare void @FrontMtx_lowerAdjFronts(%struct._FrontMtx*, i32, i32*, i32**) #5

; Function Attrs: optsize
declare void @FrontMtx_upperAdjFronts(%struct._FrontMtx*, i32, i32*, i32**) #5

; Function Attrs: nounwind optsize uwtable
define i32 @FrontMtx_writeForMatlab(%struct._FrontMtx* %frontmtx, i8* %Lname, i8* %Dname, i8* %Uname, %struct._IO_FILE* %fp) #0 {
entry:
  %nadj = alloca i32, align 4
  %ncolJ = alloca i32, align 4
  %ncolKJ = alloca i32, align 4
  %nrowK = alloca i32, align 4
  %nrowKJ = alloca i32, align 4
  %adj = alloca i32*, align 8
  %colindJ = alloca i32*, align 8
  %colKJ = alloca i32*, align 8
  %rowindK = alloca i32*, align 8
  %rowKJ = alloca i32*, align 8
  %nadj172 = alloca i32, align 4
  %ncolK = alloca i32, align 4
  %ncolJK = alloca i32, align 4
  %nrowJ = alloca i32, align 4
  %nrowJK = alloca i32, align 4
  %adj173 = alloca i32*, align 8
  %colindK = alloca i32*, align 8
  %colJK = alloca i32*, align 8
  %rowindJ = alloca i32*, align 8
  %rowJK = alloca i32*, align 8
  call void @llvm.dbg.value(metadata !{%struct._FrontMtx* %frontmtx}, i64 0, metadata !331), !dbg !1542
  call void @llvm.dbg.value(metadata !{i8* %Lname}, i64 0, metadata !332), !dbg !1543
  call void @llvm.dbg.value(metadata !{i8* %Dname}, i64 0, metadata !333), !dbg !1544
  call void @llvm.dbg.value(metadata !{i8* %Uname}, i64 0, metadata !334), !dbg !1545
  call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %fp}, i64 0, metadata !335), !dbg !1546
  %cmp = icmp eq %struct._FrontMtx* %frontmtx, null, !dbg !1547
  %cmp1 = icmp eq i8* %Lname, null, !dbg !1547
  %or.cond = or i1 %cmp, %cmp1, !dbg !1547
  %cmp3 = icmp eq i8* %Dname, null, !dbg !1547
  %or.cond429 = or i1 %or.cond, %cmp3, !dbg !1547
  %cmp5 = icmp eq i8* %Uname, null, !dbg !1547
  %or.cond430 = or i1 %or.cond429, %cmp5, !dbg !1547
  %cmp7 = icmp eq %struct._IO_FILE* %fp, null, !dbg !1547
  %or.cond431 = or i1 %or.cond430, %cmp7, !dbg !1547
  br i1 %or.cond431, label %if.then, label %if.end, !dbg !1547

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !1548, !tbaa !381
  %1 = call i64 @fwrite(i8* getelementptr inbounds ([55 x i8]* @.str88, i64 0, i64 0), i64 54, i64 1, %struct._IO_FILE* %0) #4, !dbg !1548
  call void @exit(i32 -1) #10, !dbg !1550
  unreachable, !dbg !1550

if.end:                                           ; preds = %entry
  %dataMode = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 6, !dbg !1551
  %2 = load i32* %dataMode, align 4, !dbg !1551, !tbaa !431
  switch i32 %2, label %if.end260 [
    i32 1, label %if.then9
    i32 2, label %if.then62
  ], !dbg !1551

if.then9:                                         ; preds = %if.end
  %call10 = call i32 @FrontMtx_nfront(%struct._FrontMtx* %frontmtx) #7, !dbg !1552
  call void @llvm.dbg.value(metadata !{i32 %call10}, i64 0, metadata !337), !dbg !1552
  %symmetryflag = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 3, !dbg !1554
  %3 = load i32* %symmetryflag, align 4, !dbg !1554, !tbaa !431
  %cmp11 = icmp eq i32 %3, 2, !dbg !1554
  br i1 %cmp11, label %if.then12, label %if.end27, !dbg !1554

if.then12:                                        ; preds = %if.then9
  %call13 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([24 x i8]* @.str89, i64 0, i64 0)) #7, !dbg !1555
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !336), !dbg !1557
  %cmp14436 = icmp sgt i32 %call10, 0, !dbg !1557
  br i1 %cmp14436, label %for.body, label %if.end27.thread, !dbg !1557

if.end27.thread:                                  ; preds = %if.then12
  %call28500 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([27 x i8]* @.str92, i64 0, i64 0)) #7, !dbg !1559
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !336), !dbg !1560
  %call41504 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([24 x i8]* @.str94, i64 0, i64 0)) #7, !dbg !1562
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !336), !dbg !1563
  br label %if.end260

for.body:                                         ; preds = %if.then12, %for.inc
  %J.0437 = phi i32 [ %inc, %for.inc ], [ 0, %if.then12 ]
  %call15 = call %struct._SubMtx* @FrontMtx_lowerMtx(%struct._FrontMtx* %frontmtx, i32 %J.0437, i32 %J.0437) #7, !dbg !1565
  call void @llvm.dbg.value(metadata !{%struct._SubMtx* %call15}, i64 0, metadata !338), !dbg !1565
  %cmp16 = icmp eq %struct._SubMtx* %call15, null, !dbg !1567
  br i1 %cmp16, label %if.end20, label %if.then17, !dbg !1567

if.then17:                                        ; preds = %for.body
  %call18 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([38 x i8]* @.str90, i64 0, i64 0)) #7, !dbg !1568
  call void @SubMtx_writeForMatlab(%struct._SubMtx* %call15, i8* %Lname, %struct._IO_FILE* %fp) #7, !dbg !1570
  %call19 = call i32 @fflush(%struct._IO_FILE* %fp) #7, !dbg !1571
  br label %if.end20, !dbg !1572

if.end20:                                         ; preds = %for.body, %if.then17
  %call21 = call %struct._SubMtx* @FrontMtx_lowerMtx(%struct._FrontMtx* %frontmtx, i32 %call10, i32 %J.0437) #7, !dbg !1573
  call void @llvm.dbg.value(metadata !{%struct._SubMtx* %call21}, i64 0, metadata !338), !dbg !1573
  %cmp22 = icmp eq %struct._SubMtx* %call21, null, !dbg !1574
  br i1 %cmp22, label %for.inc, label %if.then23, !dbg !1574

if.then23:                                        ; preds = %if.end20
  %call24 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([26 x i8]* @.str91, i64 0, i64 0)) #7, !dbg !1575
  call void @SubMtx_writeForMatlab(%struct._SubMtx* %call21, i8* %Lname, %struct._IO_FILE* %fp) #7, !dbg !1577
  %call25 = call i32 @fflush(%struct._IO_FILE* %fp) #7, !dbg !1578
  br label %for.inc, !dbg !1579

for.inc:                                          ; preds = %if.end20, %if.then23
  %inc = add nsw i32 %J.0437, 1, !dbg !1557
  call void @llvm.dbg.value(metadata !{i32 %inc}, i64 0, metadata !336), !dbg !1557
  %exitcond470 = icmp eq i32 %inc, %call10, !dbg !1557
  br i1 %exitcond470, label %if.end27, label %for.body, !dbg !1557

if.end27:                                         ; preds = %for.inc, %if.then9
  %call28 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([27 x i8]* @.str92, i64 0, i64 0)) #7, !dbg !1559
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !336), !dbg !1560
  %cmp30434 = icmp sgt i32 %call10, 0, !dbg !1560
  br i1 %cmp30434, label %for.body31, label %for.end40.thread, !dbg !1560

for.end40.thread:                                 ; preds = %if.end27
  %call41503 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([24 x i8]* @.str94, i64 0, i64 0)) #7, !dbg !1562
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !336), !dbg !1563
  br label %if.end260, !dbg !1563

for.body31:                                       ; preds = %if.end27, %if.end36
  %J.1435 = phi i32 [ %inc39, %if.end36 ], [ 0, %if.end27 ]
  %call32 = call %struct._SubMtx* @FrontMtx_diagMtx(%struct._FrontMtx* %frontmtx, i32 %J.1435) #7, !dbg !1580
  call void @llvm.dbg.value(metadata !{%struct._SubMtx* %call32}, i64 0, metadata !338), !dbg !1580
  %cmp33 = icmp eq %struct._SubMtx* %call32, null, !dbg !1582
  br i1 %cmp33, label %if.end36, label %if.then34, !dbg !1582

if.then34:                                        ; preds = %for.body31
  %call35 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([29 x i8]* @.str93, i64 0, i64 0)) #7, !dbg !1583
  call void @SubMtx_writeForMatlab(%struct._SubMtx* %call32, i8* %Dname, %struct._IO_FILE* %fp) #7, !dbg !1585
  br label %if.end36, !dbg !1586

if.end36:                                         ; preds = %for.body31, %if.then34
  %call37 = call i32 @fflush(%struct._IO_FILE* %fp) #7, !dbg !1587
  %inc39 = add nsw i32 %J.1435, 1, !dbg !1560
  call void @llvm.dbg.value(metadata !{i32 %inc39}, i64 0, metadata !336), !dbg !1560
  %exitcond469 = icmp eq i32 %inc39, %call10, !dbg !1560
  br i1 %exitcond469, label %for.end40, label %for.body31, !dbg !1560

for.end40:                                        ; preds = %if.end36
  %call41 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([24 x i8]* @.str94, i64 0, i64 0)) #7, !dbg !1562
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !336), !dbg !1563
  br i1 %cmp30434, label %for.body44, label %if.end260, !dbg !1563

for.body44:                                       ; preds = %for.end40, %for.inc57
  %J.2433 = phi i32 [ %inc58, %for.inc57 ], [ 0, %for.end40 ]
  %call45 = call %struct._SubMtx* @FrontMtx_upperMtx(%struct._FrontMtx* %frontmtx, i32 %J.2433, i32 %J.2433) #7, !dbg !1588
  call void @llvm.dbg.value(metadata !{%struct._SubMtx* %call45}, i64 0, metadata !338), !dbg !1588
  %cmp46 = icmp eq %struct._SubMtx* %call45, null, !dbg !1590
  br i1 %cmp46, label %if.end50, label %if.then47, !dbg !1590

if.then47:                                        ; preds = %for.body44
  %call48 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([39 x i8]* @.str95, i64 0, i64 0)) #7, !dbg !1591
  call void @SubMtx_writeForMatlab(%struct._SubMtx* %call45, i8* %Uname, %struct._IO_FILE* %fp) #7, !dbg !1593
  %call49 = call i32 @fflush(%struct._IO_FILE* %fp) #7, !dbg !1594
  br label %if.end50, !dbg !1595

if.end50:                                         ; preds = %for.body44, %if.then47
  %call51 = call %struct._SubMtx* @FrontMtx_upperMtx(%struct._FrontMtx* %frontmtx, i32 %J.2433, i32 %call10) #7, !dbg !1596
  call void @llvm.dbg.value(metadata !{%struct._SubMtx* %call51}, i64 0, metadata !338), !dbg !1596
  %cmp52 = icmp eq %struct._SubMtx* %call51, null, !dbg !1597
  br i1 %cmp52, label %for.inc57, label %if.then53, !dbg !1597

if.then53:                                        ; preds = %if.end50
  %call54 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([26 x i8]* @.str96, i64 0, i64 0)) #7, !dbg !1598
  call void @SubMtx_writeForMatlab(%struct._SubMtx* %call51, i8* %Uname, %struct._IO_FILE* %fp) #7, !dbg !1600
  %call55 = call i32 @fflush(%struct._IO_FILE* %fp) #7, !dbg !1601
  br label %for.inc57, !dbg !1602

for.inc57:                                        ; preds = %if.end50, %if.then53
  %inc58 = add nsw i32 %J.2433, 1, !dbg !1563
  call void @llvm.dbg.value(metadata !{i32 %inc58}, i64 0, metadata !336), !dbg !1563
  %exitcond = icmp eq i32 %inc58, %call10, !dbg !1563
  br i1 %exitcond, label %if.end260, label %for.body44, !dbg !1563

if.then62:                                        ; preds = %if.end
  %call63 = call i32 @FrontMtx_nfront(%struct._FrontMtx* %frontmtx) #7, !dbg !1603
  call void @llvm.dbg.value(metadata !{i32 %call63}, i64 0, metadata !337), !dbg !1603
  %symmetryflag64 = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 3, !dbg !1604
  %4 = load i32* %symmetryflag64, align 4, !dbg !1604, !tbaa !431
  %cmp65 = icmp eq i32 %4, 2, !dbg !1604
  br i1 %cmp65, label %if.then66, label %if.end150, !dbg !1604

if.then66:                                        ; preds = %if.then62
  call void @llvm.dbg.declare(metadata !{i32* %nadj}, metadata !345), !dbg !1605
  call void @llvm.dbg.declare(metadata !{i32* %ncolJ}, metadata !346), !dbg !1605
  call void @llvm.dbg.declare(metadata !{i32* %ncolKJ}, metadata !347), !dbg !1605
  call void @llvm.dbg.declare(metadata !{i32* %nrowK}, metadata !348), !dbg !1605
  call void @llvm.dbg.declare(metadata !{i32* %nrowKJ}, metadata !349), !dbg !1605
  call void @llvm.dbg.declare(metadata !{i32** %adj}, metadata !350), !dbg !1606
  call void @llvm.dbg.declare(metadata !{i32** %colindJ}, metadata !351), !dbg !1606
  call void @llvm.dbg.declare(metadata !{i32** %colKJ}, metadata !352), !dbg !1606
  call void @llvm.dbg.declare(metadata !{i32** %rowindK}, metadata !353), !dbg !1606
  call void @llvm.dbg.declare(metadata !{i32** %rowKJ}, metadata !354), !dbg !1606
  %call67 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([24 x i8]* @.str89, i64 0, i64 0)) #7, !dbg !1607
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !336), !dbg !1608
  %cmp69467 = icmp sgt i32 %call63, 0, !dbg !1608
  br i1 %cmp69467, label %for.body70, label %if.end150.thread, !dbg !1608

if.end150.thread:                                 ; preds = %if.then66
  %call151505 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([27 x i8]* @.str92, i64 0, i64 0)) #7, !dbg !1610
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !336), !dbg !1611
  %call164509 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([24 x i8]* @.str94, i64 0, i64 0)) #7, !dbg !1613
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !336), !dbg !1614
  br label %if.end260

for.body70:                                       ; preds = %if.then66, %for.inc147
  %J.3468 = phi i32 [ %inc148, %for.inc147 ], [ 0, %if.then66 ]
  %call71 = call %struct._SubMtx* @FrontMtx_lowerMtx(%struct._FrontMtx* %frontmtx, i32 %J.3468, i32 %J.3468) #7, !dbg !1615
  call void @llvm.dbg.value(metadata !{%struct._SubMtx* %call71}, i64 0, metadata !338), !dbg !1615
  %cmp72 = icmp eq %struct._SubMtx* %call71, null, !dbg !1617
  br i1 %cmp72, label %if.end76, label %if.then73, !dbg !1617

if.then73:                                        ; preds = %for.body70
  %call74 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([38 x i8]* @.str90, i64 0, i64 0)) #7, !dbg !1618
  call void @SubMtx_writeForMatlab(%struct._SubMtx* %call71, i8* %Lname, %struct._IO_FILE* %fp) #7, !dbg !1620
  %call75 = call i32 @fflush(%struct._IO_FILE* %fp) #7, !dbg !1621
  br label %if.end76, !dbg !1622

if.end76:                                         ; preds = %for.body70, %if.then73
  call void @FrontMtx_lowerAdjFronts(%struct._FrontMtx* %frontmtx, i32 %J.3468, i32* %nadj, i32** %adj) #7, !dbg !1623
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !343), !dbg !1624
  call void @llvm.dbg.value(metadata !{i32* %nadj}, i64 0, metadata !345), !dbg !1624
  %5 = load i32* %nadj, align 4, !dbg !1624, !tbaa !431
  %cmp78465 = icmp sgt i32 %5, 0, !dbg !1624
  br i1 %cmp78465, label %for.body79, label %for.inc147, !dbg !1624

for.body79:                                       ; preds = %for.inc144, %if.end76
  %indvars.iv497 = phi i64 [ 0, %if.end76 ], [ %indvars.iv.next498, %for.inc144 ]
  call void @llvm.dbg.value(metadata !{i32** %adj}, i64 0, metadata !350), !dbg !1626
  %6 = load i32** %adj, align 8, !dbg !1626, !tbaa !381
  %arrayidx = getelementptr inbounds i32* %6, i64 %indvars.iv497, !dbg !1626
  %7 = load i32* %arrayidx, align 4, !dbg !1626, !tbaa !431
  call void @llvm.dbg.value(metadata !{i32 %7}, i64 0, metadata !344), !dbg !1626
  %cmp80 = icmp sgt i32 %7, %J.3468, !dbg !1626
  br i1 %cmp80, label %land.lhs.true, label %for.inc144, !dbg !1626

land.lhs.true:                                    ; preds = %for.body79
  %call81 = call %struct._SubMtx* @FrontMtx_lowerMtx(%struct._FrontMtx* %frontmtx, i32 %7, i32 %J.3468) #7, !dbg !1628
  call void @llvm.dbg.value(metadata !{%struct._SubMtx* %call81}, i64 0, metadata !338), !dbg !1628
  %cmp82 = icmp eq %struct._SubMtx* %call81, null, !dbg !1628
  br i1 %cmp82, label %for.inc144, label %if.then83, !dbg !1628

if.then83:                                        ; preds = %land.lhs.true
  %call84 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([26 x i8]* @.str91, i64 0, i64 0)) #7, !dbg !1629
  call void @SubMtx_columnIndices(%struct._SubMtx* %call81, i32* %ncolKJ, i32** %colKJ) #7, !dbg !1631
  call void @FrontMtx_columnIndices(%struct._FrontMtx* %frontmtx, i32 %J.3468, i32* %ncolJ, i32** %colindJ) #7, !dbg !1632
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !339), !dbg !1633
  call void @llvm.dbg.value(metadata !{i32* %ncolKJ}, i64 0, metadata !347), !dbg !1633
  %8 = load i32* %ncolKJ, align 4, !dbg !1633, !tbaa !431
  %cmp86455 = icmp sgt i32 %8, 0, !dbg !1633
  br i1 %cmp86455, label %for.body87.lr.ph, label %for.end96, !dbg !1633

for.body87.lr.ph:                                 ; preds = %if.then83
  call void @llvm.dbg.value(metadata !{i32** %colKJ}, i64 0, metadata !352), !dbg !1635
  %9 = load i32** %colKJ, align 8, !dbg !1635, !tbaa !381
  call void @llvm.dbg.value(metadata !{i32** %colindJ}, i64 0, metadata !351), !dbg !1635
  %10 = load i32** %colindJ, align 8, !dbg !1635, !tbaa !381
  br label %for.body87, !dbg !1633

for.body87:                                       ; preds = %for.body87.lr.ph, %for.body87
  %indvars.iv485 = phi i64 [ 0, %for.body87.lr.ph ], [ %indvars.iv.next486, %for.body87 ]
  call void @llvm.dbg.value(metadata !{i32** %colKJ}, i64 0, metadata !352), !dbg !1635
  %arrayidx89 = getelementptr inbounds i32* %9, i64 %indvars.iv485, !dbg !1635
  %11 = load i32* %arrayidx89, align 4, !dbg !1635, !tbaa !431
  %idxprom90 = sext i32 %11 to i64, !dbg !1635
  call void @llvm.dbg.value(metadata !{i32** %colindJ}, i64 0, metadata !351), !dbg !1635
  %arrayidx91 = getelementptr inbounds i32* %10, i64 %idxprom90, !dbg !1635
  %12 = load i32* %arrayidx91, align 4, !dbg !1635, !tbaa !431
  store i32 %12, i32* %arrayidx89, align 4, !dbg !1635, !tbaa !431
  %indvars.iv.next486 = add i64 %indvars.iv485, 1, !dbg !1633
  call void @llvm.dbg.value(metadata !{i32* %ncolKJ}, i64 0, metadata !347), !dbg !1633
  %13 = load i32* %ncolKJ, align 4, !dbg !1633, !tbaa !431
  %14 = trunc i64 %indvars.iv.next486 to i32, !dbg !1633
  %cmp86 = icmp slt i32 %14, %13, !dbg !1633
  br i1 %cmp86, label %for.body87, label %for.end96, !dbg !1633

for.end96:                                        ; preds = %for.body87, %if.then83
  call void @SubMtx_rowIndices(%struct._SubMtx* %call81, i32* %nrowKJ, i32** %rowKJ) #7, !dbg !1637
  call void @FrontMtx_rowIndices(%struct._FrontMtx* %frontmtx, i32 %7, i32* %nrowK, i32** %rowindK) #7, !dbg !1638
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !339), !dbg !1639
  call void @llvm.dbg.value(metadata !{i32* %nrowKJ}, i64 0, metadata !349), !dbg !1639
  %15 = load i32* %nrowKJ, align 4, !dbg !1639, !tbaa !431
  %cmp98457 = icmp sgt i32 %15, 0, !dbg !1639
  br i1 %cmp98457, label %for.body99.lr.ph, label %for.end108, !dbg !1639

for.body99.lr.ph:                                 ; preds = %for.end96
  call void @llvm.dbg.value(metadata !{i32** %rowKJ}, i64 0, metadata !354), !dbg !1641
  %16 = load i32** %rowKJ, align 8, !dbg !1641, !tbaa !381
  call void @llvm.dbg.value(metadata !{i32** %rowindK}, i64 0, metadata !353), !dbg !1641
  %17 = load i32** %rowindK, align 8, !dbg !1641, !tbaa !381
  br label %for.body99, !dbg !1639

for.body99:                                       ; preds = %for.body99.lr.ph, %for.body99
  %indvars.iv487 = phi i64 [ 0, %for.body99.lr.ph ], [ %indvars.iv.next488, %for.body99 ]
  call void @llvm.dbg.value(metadata !{i32** %rowKJ}, i64 0, metadata !354), !dbg !1641
  %arrayidx101 = getelementptr inbounds i32* %16, i64 %indvars.iv487, !dbg !1641
  %18 = load i32* %arrayidx101, align 4, !dbg !1641, !tbaa !431
  %idxprom102 = sext i32 %18 to i64, !dbg !1641
  call void @llvm.dbg.value(metadata !{i32** %rowindK}, i64 0, metadata !353), !dbg !1641
  %arrayidx103 = getelementptr inbounds i32* %17, i64 %idxprom102, !dbg !1641
  %19 = load i32* %arrayidx103, align 4, !dbg !1641, !tbaa !431
  store i32 %19, i32* %arrayidx101, align 4, !dbg !1641, !tbaa !431
  %indvars.iv.next488 = add i64 %indvars.iv487, 1, !dbg !1639
  call void @llvm.dbg.value(metadata !{i32* %nrowKJ}, i64 0, metadata !349), !dbg !1639
  %20 = load i32* %nrowKJ, align 4, !dbg !1639, !tbaa !431
  %21 = trunc i64 %indvars.iv.next488 to i32, !dbg !1639
  %cmp98 = icmp slt i32 %21, %20, !dbg !1639
  br i1 %cmp98, label %for.body99, label %for.end108, !dbg !1639

for.end108:                                       ; preds = %for.body99, %for.end96
  call void @SubMtx_writeForMatlab(%struct._SubMtx* %call81, i8* %Lname, %struct._IO_FILE* %fp) #7, !dbg !1643
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !342), !dbg !1644
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !339), !dbg !1644
  call void @llvm.dbg.value(metadata !{i32* %ncolKJ}, i64 0, metadata !347), !dbg !1644
  %22 = load i32* %ncolKJ, align 4, !dbg !1644, !tbaa !431
  %cmp110459 = icmp sgt i32 %22, 0, !dbg !1644
  br i1 %cmp110459, label %while.cond.preheader.lr.ph, label %for.cond124.loopexit, !dbg !1644

while.cond.preheader.lr.ph:                       ; preds = %for.end108
  call void @llvm.dbg.value(metadata !{i32** %colKJ}, i64 0, metadata !352), !dbg !1646
  %23 = load i32** %colKJ, align 8, !dbg !1646, !tbaa !381
  call void @llvm.dbg.value(metadata !{i32** %colindJ}, i64 0, metadata !351), !dbg !1646
  %24 = load i32** %colindJ, align 8, !dbg !1646, !tbaa !381
  br label %while.cond.preheader, !dbg !1644

while.cond.preheader:                             ; preds = %while.cond.preheader.lr.ph, %while.end
  %indvars.iv491 = phi i64 [ 0, %while.cond.preheader.lr.ph ], [ %indvars.iv.next492, %while.end ]
  %jj.0461 = phi i32 [ 0, %while.cond.preheader.lr.ph ], [ %inc117, %while.end ]
  %arrayidx113 = getelementptr inbounds i32* %23, i64 %indvars.iv491, !dbg !1646
  %25 = load i32* %arrayidx113, align 4, !dbg !1646, !tbaa !431
  %26 = sext i32 %jj.0461 to i64
  br label %while.cond, !dbg !1646

while.cond:                                       ; preds = %while.cond.preheader, %while.cond
  %indvars.iv489 = phi i64 [ %26, %while.cond.preheader ], [ %indvars.iv.next490, %while.cond ]
  %jj.1 = phi i32 [ %jj.0461, %while.cond.preheader ], [ %inc117, %while.cond ]
  call void @llvm.dbg.value(metadata !{i32** %colKJ}, i64 0, metadata !352), !dbg !1646
  call void @llvm.dbg.value(metadata !{i32** %colindJ}, i64 0, metadata !351), !dbg !1646
  %arrayidx115 = getelementptr inbounds i32* %24, i64 %indvars.iv489, !dbg !1646
  %27 = load i32* %arrayidx115, align 4, !dbg !1646, !tbaa !431
  %cmp116 = icmp eq i32 %25, %27, !dbg !1646
  %indvars.iv.next490 = add i64 %indvars.iv489, 1, !dbg !1646
  %inc117 = add nsw i32 %jj.1, 1, !dbg !1648
  call void @llvm.dbg.value(metadata !{i32 %inc117}, i64 0, metadata !342), !dbg !1648
  br i1 %cmp116, label %while.end, label %while.cond, !dbg !1646

while.end:                                        ; preds = %while.cond
  store i32 %jj.1, i32* %arrayidx113, align 4, !dbg !1650, !tbaa !431
  %indvars.iv.next492 = add i64 %indvars.iv491, 1, !dbg !1644
  call void @llvm.dbg.value(metadata !{i32* %ncolKJ}, i64 0, metadata !347), !dbg !1644
  %28 = load i32* %ncolKJ, align 4, !dbg !1644, !tbaa !431
  %29 = trunc i64 %indvars.iv.next492 to i32, !dbg !1644
  %cmp110 = icmp slt i32 %29, %28, !dbg !1644
  br i1 %cmp110, label %while.cond.preheader, label %for.cond124.loopexit, !dbg !1644

for.cond124.loopexit:                             ; preds = %while.end, %for.end108
  call void @llvm.dbg.value(metadata !{i32* %nrowKJ}, i64 0, metadata !349), !dbg !1651
  %30 = load i32* %nrowKJ, align 4, !dbg !1651, !tbaa !431
  %cmp125462 = icmp sgt i32 %30, 0, !dbg !1651
  br i1 %cmp125462, label %while.cond127.preheader.lr.ph, label %for.end141, !dbg !1651

while.cond127.preheader.lr.ph:                    ; preds = %for.cond124.loopexit
  call void @llvm.dbg.value(metadata !{i32** %rowKJ}, i64 0, metadata !354), !dbg !1653
  %31 = load i32** %rowKJ, align 8, !dbg !1653, !tbaa !381
  call void @llvm.dbg.value(metadata !{i32** %rowindK}, i64 0, metadata !353), !dbg !1653
  %32 = load i32** %rowindK, align 8, !dbg !1653, !tbaa !381
  br label %while.cond127.preheader, !dbg !1651

while.cond127.preheader:                          ; preds = %while.cond127.preheader.lr.ph, %while.end135
  %indvars.iv495 = phi i64 [ 0, %while.cond127.preheader.lr.ph ], [ %indvars.iv.next496, %while.end135 ]
  %jj.2464 = phi i32 [ 0, %while.cond127.preheader.lr.ph ], [ %inc134, %while.end135 ]
  %arrayidx129 = getelementptr inbounds i32* %31, i64 %indvars.iv495, !dbg !1653
  %33 = load i32* %arrayidx129, align 4, !dbg !1653, !tbaa !431
  %34 = sext i32 %jj.2464 to i64
  br label %while.cond127, !dbg !1653

while.cond127:                                    ; preds = %while.cond127.preheader, %while.cond127
  %indvars.iv493 = phi i64 [ %34, %while.cond127.preheader ], [ %indvars.iv.next494, %while.cond127 ]
  %jj.3 = phi i32 [ %jj.2464, %while.cond127.preheader ], [ %inc134, %while.cond127 ]
  call void @llvm.dbg.value(metadata !{i32** %rowKJ}, i64 0, metadata !354), !dbg !1653
  call void @llvm.dbg.value(metadata !{i32** %rowindK}, i64 0, metadata !353), !dbg !1653
  %arrayidx131 = getelementptr inbounds i32* %32, i64 %indvars.iv493, !dbg !1653
  %35 = load i32* %arrayidx131, align 4, !dbg !1653, !tbaa !431
  %cmp132 = icmp eq i32 %33, %35, !dbg !1653
  %indvars.iv.next494 = add i64 %indvars.iv493, 1, !dbg !1653
  %inc134 = add nsw i32 %jj.3, 1, !dbg !1655
  call void @llvm.dbg.value(metadata !{i32 %inc134}, i64 0, metadata !342), !dbg !1655
  br i1 %cmp132, label %while.end135, label %while.cond127, !dbg !1653

while.end135:                                     ; preds = %while.cond127
  store i32 %jj.3, i32* %arrayidx129, align 4, !dbg !1657, !tbaa !431
  %indvars.iv.next496 = add i64 %indvars.iv495, 1, !dbg !1651
  call void @llvm.dbg.value(metadata !{i32* %nrowKJ}, i64 0, metadata !349), !dbg !1651
  %36 = load i32* %nrowKJ, align 4, !dbg !1651, !tbaa !431
  %37 = trunc i64 %indvars.iv.next496 to i32, !dbg !1651
  %cmp125 = icmp slt i32 %37, %36, !dbg !1651
  br i1 %cmp125, label %while.cond127.preheader, label %for.end141, !dbg !1651

for.end141:                                       ; preds = %while.end135, %for.cond124.loopexit
  %call142 = call i32 @fflush(%struct._IO_FILE* %fp) #7, !dbg !1658
  br label %for.inc144, !dbg !1659

for.inc144:                                       ; preds = %land.lhs.true, %for.body79, %for.end141
  %indvars.iv.next498 = add i64 %indvars.iv497, 1, !dbg !1624
  call void @llvm.dbg.value(metadata !{i32* %nadj}, i64 0, metadata !345), !dbg !1624
  %38 = load i32* %nadj, align 4, !dbg !1624, !tbaa !431
  %39 = trunc i64 %indvars.iv.next498 to i32, !dbg !1624
  %cmp78 = icmp slt i32 %39, %38, !dbg !1624
  br i1 %cmp78, label %for.body79, label %for.inc147, !dbg !1624

for.inc147:                                       ; preds = %for.inc144, %if.end76
  %inc148 = add nsw i32 %J.3468, 1, !dbg !1608
  call void @llvm.dbg.value(metadata !{i32 %inc148}, i64 0, metadata !336), !dbg !1608
  %exitcond499 = icmp eq i32 %inc148, %call63, !dbg !1608
  br i1 %exitcond499, label %if.end150, label %for.body70, !dbg !1608

if.end150:                                        ; preds = %for.inc147, %if.then62
  %call151 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([27 x i8]* @.str92, i64 0, i64 0)) #7, !dbg !1610
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !336), !dbg !1611
  %cmp153453 = icmp sgt i32 %call63, 0, !dbg !1611
  br i1 %cmp153453, label %for.body154, label %for.end163.thread, !dbg !1611

for.end163.thread:                                ; preds = %if.end150
  %call164508 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([24 x i8]* @.str94, i64 0, i64 0)) #7, !dbg !1613
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !336), !dbg !1614
  br label %if.end260, !dbg !1614

for.body154:                                      ; preds = %if.end150, %if.end159
  %J.4454 = phi i32 [ %inc162, %if.end159 ], [ 0, %if.end150 ]
  %call155 = call %struct._SubMtx* @FrontMtx_diagMtx(%struct._FrontMtx* %frontmtx, i32 %J.4454) #7, !dbg !1660
  call void @llvm.dbg.value(metadata !{%struct._SubMtx* %call155}, i64 0, metadata !338), !dbg !1660
  %cmp156 = icmp eq %struct._SubMtx* %call155, null, !dbg !1662
  br i1 %cmp156, label %if.end159, label %if.then157, !dbg !1662

if.then157:                                       ; preds = %for.body154
  %call158 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([29 x i8]* @.str93, i64 0, i64 0)) #7, !dbg !1663
  call void @SubMtx_writeForMatlab(%struct._SubMtx* %call155, i8* %Dname, %struct._IO_FILE* %fp) #7, !dbg !1665
  br label %if.end159, !dbg !1666

if.end159:                                        ; preds = %for.body154, %if.then157
  %call160 = call i32 @fflush(%struct._IO_FILE* %fp) #7, !dbg !1667
  %inc162 = add nsw i32 %J.4454, 1, !dbg !1611
  call void @llvm.dbg.value(metadata !{i32 %inc162}, i64 0, metadata !336), !dbg !1611
  %exitcond484 = icmp eq i32 %inc162, %call63, !dbg !1611
  br i1 %exitcond484, label %for.end163, label %for.body154, !dbg !1611

for.end163:                                       ; preds = %if.end159
  %call164 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([24 x i8]* @.str94, i64 0, i64 0)) #7, !dbg !1613
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !336), !dbg !1614
  br i1 %cmp153453, label %for.body167, label %if.end260, !dbg !1614

for.body167:                                      ; preds = %for.end163, %for.inc256
  %J.5452 = phi i32 [ %inc257, %for.inc256 ], [ 0, %for.end163 ]
  call void @llvm.dbg.declare(metadata !{i32* %nadj172}, metadata !361), !dbg !1668
  call void @llvm.dbg.declare(metadata !{i32* %ncolK}, metadata !362), !dbg !1668
  call void @llvm.dbg.declare(metadata !{i32* %ncolJK}, metadata !363), !dbg !1668
  call void @llvm.dbg.declare(metadata !{i32* %nrowJ}, metadata !364), !dbg !1668
  call void @llvm.dbg.declare(metadata !{i32* %nrowJK}, metadata !365), !dbg !1668
  call void @llvm.dbg.declare(metadata !{i32** %adj173}, metadata !366), !dbg !1669
  call void @llvm.dbg.declare(metadata !{i32** %colindK}, metadata !367), !dbg !1669
  call void @llvm.dbg.declare(metadata !{i32** %colJK}, metadata !368), !dbg !1669
  call void @llvm.dbg.declare(metadata !{i32** %rowindJ}, metadata !369), !dbg !1669
  call void @llvm.dbg.declare(metadata !{i32** %rowJK}, metadata !370), !dbg !1669
  %call174 = call %struct._SubMtx* @FrontMtx_upperMtx(%struct._FrontMtx* %frontmtx, i32 %J.5452, i32 %J.5452) #7, !dbg !1670
  call void @llvm.dbg.value(metadata !{%struct._SubMtx* %call174}, i64 0, metadata !338), !dbg !1670
  %cmp175 = icmp eq %struct._SubMtx* %call174, null, !dbg !1671
  br i1 %cmp175, label %if.end179, label %if.then176, !dbg !1671

if.then176:                                       ; preds = %for.body167
  %call177 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([39 x i8]* @.str95, i64 0, i64 0)) #7, !dbg !1672
  call void @SubMtx_writeForMatlab(%struct._SubMtx* %call174, i8* %Uname, %struct._IO_FILE* %fp) #7, !dbg !1674
  %call178 = call i32 @fflush(%struct._IO_FILE* %fp) #7, !dbg !1675
  br label %if.end179, !dbg !1676

if.end179:                                        ; preds = %for.body167, %if.then176
  call void @FrontMtx_upperAdjFronts(%struct._FrontMtx* %frontmtx, i32 %J.5452, i32* %nadj172, i32** %adj173) #7, !dbg !1677
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !359), !dbg !1678
  call void @llvm.dbg.value(metadata !{i32* %nadj172}, i64 0, metadata !361), !dbg !1678
  %40 = load i32* %nadj172, align 4, !dbg !1678, !tbaa !431
  %cmp181448 = icmp sgt i32 %40, 0, !dbg !1678
  br i1 %cmp181448, label %for.body182, label %for.inc256, !dbg !1678

for.body182:                                      ; preds = %for.inc253, %if.end179
  %indvars.iv481 = phi i64 [ 0, %if.end179 ], [ %indvars.iv.next482, %for.inc253 ]
  call void @llvm.dbg.value(metadata !{i32** %adj173}, i64 0, metadata !366), !dbg !1680
  %41 = load i32** %adj173, align 8, !dbg !1680, !tbaa !381
  %arrayidx184 = getelementptr inbounds i32* %41, i64 %indvars.iv481, !dbg !1680
  %42 = load i32* %arrayidx184, align 4, !dbg !1680, !tbaa !431
  call void @llvm.dbg.value(metadata !{i32 %42}, i64 0, metadata !360), !dbg !1680
  %cmp185 = icmp sgt i32 %42, %J.5452, !dbg !1680
  br i1 %cmp185, label %land.lhs.true186, label %for.inc253, !dbg !1680

land.lhs.true186:                                 ; preds = %for.body182
  %call187 = call %struct._SubMtx* @FrontMtx_upperMtx(%struct._FrontMtx* %frontmtx, i32 %J.5452, i32 %42) #7, !dbg !1682
  call void @llvm.dbg.value(metadata !{%struct._SubMtx* %call187}, i64 0, metadata !338), !dbg !1682
  %cmp188 = icmp eq %struct._SubMtx* %call187, null, !dbg !1682
  br i1 %cmp188, label %for.inc253, label %if.then189, !dbg !1682

if.then189:                                       ; preds = %land.lhs.true186
  %call190 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([26 x i8]* @.str96, i64 0, i64 0)) #7, !dbg !1683
  call void @SubMtx_columnIndices(%struct._SubMtx* %call187, i32* %ncolJK, i32** %colJK) #7, !dbg !1685
  call void @FrontMtx_columnIndices(%struct._FrontMtx* %frontmtx, i32 %42, i32* %ncolK, i32** %colindK) #7, !dbg !1686
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !355), !dbg !1687
  call void @llvm.dbg.value(metadata !{i32* %ncolJK}, i64 0, metadata !363), !dbg !1687
  %43 = load i32* %ncolJK, align 4, !dbg !1687, !tbaa !431
  %cmp192438 = icmp sgt i32 %43, 0, !dbg !1687
  br i1 %cmp192438, label %for.body193.lr.ph, label %for.end202, !dbg !1687

for.body193.lr.ph:                                ; preds = %if.then189
  call void @llvm.dbg.value(metadata !{i32** %colJK}, i64 0, metadata !368), !dbg !1689
  %44 = load i32** %colJK, align 8, !dbg !1689, !tbaa !381
  call void @llvm.dbg.value(metadata !{i32** %colindK}, i64 0, metadata !367), !dbg !1689
  %45 = load i32** %colindK, align 8, !dbg !1689, !tbaa !381
  br label %for.body193, !dbg !1687

for.body193:                                      ; preds = %for.body193.lr.ph, %for.body193
  %indvars.iv = phi i64 [ 0, %for.body193.lr.ph ], [ %indvars.iv.next, %for.body193 ]
  call void @llvm.dbg.value(metadata !{i32** %colJK}, i64 0, metadata !368), !dbg !1689
  %arrayidx195 = getelementptr inbounds i32* %44, i64 %indvars.iv, !dbg !1689
  %46 = load i32* %arrayidx195, align 4, !dbg !1689, !tbaa !431
  %idxprom196 = sext i32 %46 to i64, !dbg !1689
  call void @llvm.dbg.value(metadata !{i32** %colindK}, i64 0, metadata !367), !dbg !1689
  %arrayidx197 = getelementptr inbounds i32* %45, i64 %idxprom196, !dbg !1689
  %47 = load i32* %arrayidx197, align 4, !dbg !1689, !tbaa !431
  store i32 %47, i32* %arrayidx195, align 4, !dbg !1689, !tbaa !431
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !1687
  call void @llvm.dbg.value(metadata !{i32* %ncolJK}, i64 0, metadata !363), !dbg !1687
  %48 = load i32* %ncolJK, align 4, !dbg !1687, !tbaa !431
  %49 = trunc i64 %indvars.iv.next to i32, !dbg !1687
  %cmp192 = icmp slt i32 %49, %48, !dbg !1687
  br i1 %cmp192, label %for.body193, label %for.end202, !dbg !1687

for.end202:                                       ; preds = %for.body193, %if.then189
  call void @SubMtx_rowIndices(%struct._SubMtx* %call187, i32* %nrowJK, i32** %rowJK) #7, !dbg !1691
  call void @FrontMtx_rowIndices(%struct._FrontMtx* %frontmtx, i32 %J.5452, i32* %nrowJ, i32** %rowindJ) #7, !dbg !1692
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !355), !dbg !1693
  call void @llvm.dbg.value(metadata !{i32* %nrowJK}, i64 0, metadata !365), !dbg !1693
  %50 = load i32* %nrowJK, align 4, !dbg !1693, !tbaa !431
  %cmp204440 = icmp sgt i32 %50, 0, !dbg !1693
  br i1 %cmp204440, label %for.body205.lr.ph, label %for.end214, !dbg !1693

for.body205.lr.ph:                                ; preds = %for.end202
  call void @llvm.dbg.value(metadata !{i32** %rowJK}, i64 0, metadata !370), !dbg !1695
  %51 = load i32** %rowJK, align 8, !dbg !1695, !tbaa !381
  call void @llvm.dbg.value(metadata !{i32** %rowindJ}, i64 0, metadata !369), !dbg !1695
  %52 = load i32** %rowindJ, align 8, !dbg !1695, !tbaa !381
  br label %for.body205, !dbg !1693

for.body205:                                      ; preds = %for.body205.lr.ph, %for.body205
  %indvars.iv471 = phi i64 [ 0, %for.body205.lr.ph ], [ %indvars.iv.next472, %for.body205 ]
  call void @llvm.dbg.value(metadata !{i32** %rowJK}, i64 0, metadata !370), !dbg !1695
  %arrayidx207 = getelementptr inbounds i32* %51, i64 %indvars.iv471, !dbg !1695
  %53 = load i32* %arrayidx207, align 4, !dbg !1695, !tbaa !431
  %idxprom208 = sext i32 %53 to i64, !dbg !1695
  call void @llvm.dbg.value(metadata !{i32** %rowindJ}, i64 0, metadata !369), !dbg !1695
  %arrayidx209 = getelementptr inbounds i32* %52, i64 %idxprom208, !dbg !1695
  %54 = load i32* %arrayidx209, align 4, !dbg !1695, !tbaa !431
  store i32 %54, i32* %arrayidx207, align 4, !dbg !1695, !tbaa !431
  %indvars.iv.next472 = add i64 %indvars.iv471, 1, !dbg !1693
  call void @llvm.dbg.value(metadata !{i32* %nrowJK}, i64 0, metadata !365), !dbg !1693
  %55 = load i32* %nrowJK, align 4, !dbg !1693, !tbaa !431
  %56 = trunc i64 %indvars.iv.next472 to i32, !dbg !1693
  %cmp204 = icmp slt i32 %56, %55, !dbg !1693
  br i1 %cmp204, label %for.body205, label %for.end214, !dbg !1693

for.end214:                                       ; preds = %for.body205, %for.end202
  call void @SubMtx_writeForMatlab(%struct._SubMtx* %call187, i8* %Uname, %struct._IO_FILE* %fp) #7, !dbg !1697
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !358), !dbg !1698
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !355), !dbg !1698
  call void @llvm.dbg.value(metadata !{i32* %ncolJK}, i64 0, metadata !363), !dbg !1698
  %57 = load i32* %ncolJK, align 4, !dbg !1698, !tbaa !431
  %cmp216442 = icmp sgt i32 %57, 0, !dbg !1698
  br i1 %cmp216442, label %while.cond218.preheader.lr.ph, label %for.cond233.loopexit, !dbg !1698

while.cond218.preheader.lr.ph:                    ; preds = %for.end214
  call void @llvm.dbg.value(metadata !{i32** %colJK}, i64 0, metadata !368), !dbg !1700
  %58 = load i32** %colJK, align 8, !dbg !1700, !tbaa !381
  call void @llvm.dbg.value(metadata !{i32** %colindK}, i64 0, metadata !367), !dbg !1700
  %59 = load i32** %colindK, align 8, !dbg !1700, !tbaa !381
  br label %while.cond218.preheader, !dbg !1698

while.cond218.preheader:                          ; preds = %while.cond218.preheader.lr.ph, %while.end226
  %indvars.iv475 = phi i64 [ 0, %while.cond218.preheader.lr.ph ], [ %indvars.iv.next476, %while.end226 ]
  %jj169.0444 = phi i32 [ 0, %while.cond218.preheader.lr.ph ], [ %inc225, %while.end226 ]
  %arrayidx220 = getelementptr inbounds i32* %58, i64 %indvars.iv475, !dbg !1700
  %60 = load i32* %arrayidx220, align 4, !dbg !1700, !tbaa !431
  %61 = sext i32 %jj169.0444 to i64
  br label %while.cond218, !dbg !1700

while.cond218:                                    ; preds = %while.cond218.preheader, %while.cond218
  %indvars.iv473 = phi i64 [ %61, %while.cond218.preheader ], [ %indvars.iv.next474, %while.cond218 ]
  %jj169.1 = phi i32 [ %jj169.0444, %while.cond218.preheader ], [ %inc225, %while.cond218 ]
  call void @llvm.dbg.value(metadata !{i32** %colJK}, i64 0, metadata !368), !dbg !1700
  call void @llvm.dbg.value(metadata !{i32** %colindK}, i64 0, metadata !367), !dbg !1700
  %arrayidx222 = getelementptr inbounds i32* %59, i64 %indvars.iv473, !dbg !1700
  %62 = load i32* %arrayidx222, align 4, !dbg !1700, !tbaa !431
  %cmp223 = icmp eq i32 %60, %62, !dbg !1700
  %indvars.iv.next474 = add i64 %indvars.iv473, 1, !dbg !1700
  %inc225 = add nsw i32 %jj169.1, 1, !dbg !1702
  call void @llvm.dbg.value(metadata !{i32 %inc225}, i64 0, metadata !358), !dbg !1702
  br i1 %cmp223, label %while.end226, label %while.cond218, !dbg !1700

while.end226:                                     ; preds = %while.cond218
  store i32 %jj169.1, i32* %arrayidx220, align 4, !dbg !1704, !tbaa !431
  %indvars.iv.next476 = add i64 %indvars.iv475, 1, !dbg !1698
  call void @llvm.dbg.value(metadata !{i32* %ncolJK}, i64 0, metadata !363), !dbg !1698
  %63 = load i32* %ncolJK, align 4, !dbg !1698, !tbaa !431
  %64 = trunc i64 %indvars.iv.next476 to i32, !dbg !1698
  %cmp216 = icmp slt i32 %64, %63, !dbg !1698
  br i1 %cmp216, label %while.cond218.preheader, label %for.cond233.loopexit, !dbg !1698

for.cond233.loopexit:                             ; preds = %while.end226, %for.end214
  call void @llvm.dbg.value(metadata !{i32* %nrowJK}, i64 0, metadata !365), !dbg !1705
  %65 = load i32* %nrowJK, align 4, !dbg !1705, !tbaa !431
  %cmp234445 = icmp sgt i32 %65, 0, !dbg !1705
  br i1 %cmp234445, label %while.cond236.preheader.lr.ph, label %for.end250, !dbg !1705

while.cond236.preheader.lr.ph:                    ; preds = %for.cond233.loopexit
  call void @llvm.dbg.value(metadata !{i32** %rowJK}, i64 0, metadata !370), !dbg !1707
  %66 = load i32** %rowJK, align 8, !dbg !1707, !tbaa !381
  call void @llvm.dbg.value(metadata !{i32** %rowindJ}, i64 0, metadata !369), !dbg !1707
  %67 = load i32** %rowindJ, align 8, !dbg !1707, !tbaa !381
  br label %while.cond236.preheader, !dbg !1705

while.cond236.preheader:                          ; preds = %while.cond236.preheader.lr.ph, %while.end244
  %indvars.iv479 = phi i64 [ 0, %while.cond236.preheader.lr.ph ], [ %indvars.iv.next480, %while.end244 ]
  %jj169.2447 = phi i32 [ 0, %while.cond236.preheader.lr.ph ], [ %inc243, %while.end244 ]
  %arrayidx238 = getelementptr inbounds i32* %66, i64 %indvars.iv479, !dbg !1707
  %68 = load i32* %arrayidx238, align 4, !dbg !1707, !tbaa !431
  %69 = sext i32 %jj169.2447 to i64
  br label %while.cond236, !dbg !1707

while.cond236:                                    ; preds = %while.cond236.preheader, %while.cond236
  %indvars.iv477 = phi i64 [ %69, %while.cond236.preheader ], [ %indvars.iv.next478, %while.cond236 ]
  %jj169.3 = phi i32 [ %jj169.2447, %while.cond236.preheader ], [ %inc243, %while.cond236 ]
  call void @llvm.dbg.value(metadata !{i32** %rowJK}, i64 0, metadata !370), !dbg !1707
  call void @llvm.dbg.value(metadata !{i32** %rowindJ}, i64 0, metadata !369), !dbg !1707
  %arrayidx240 = getelementptr inbounds i32* %67, i64 %indvars.iv477, !dbg !1707
  %70 = load i32* %arrayidx240, align 4, !dbg !1707, !tbaa !431
  %cmp241 = icmp eq i32 %68, %70, !dbg !1707
  %indvars.iv.next478 = add i64 %indvars.iv477, 1, !dbg !1707
  %inc243 = add nsw i32 %jj169.3, 1, !dbg !1709
  call void @llvm.dbg.value(metadata !{i32 %inc243}, i64 0, metadata !358), !dbg !1709
  br i1 %cmp241, label %while.end244, label %while.cond236, !dbg !1707

while.end244:                                     ; preds = %while.cond236
  store i32 %jj169.3, i32* %arrayidx238, align 4, !dbg !1711, !tbaa !431
  %indvars.iv.next480 = add i64 %indvars.iv479, 1, !dbg !1705
  call void @llvm.dbg.value(metadata !{i32* %nrowJK}, i64 0, metadata !365), !dbg !1705
  %71 = load i32* %nrowJK, align 4, !dbg !1705, !tbaa !431
  %72 = trunc i64 %indvars.iv.next480 to i32, !dbg !1705
  %cmp234 = icmp slt i32 %72, %71, !dbg !1705
  br i1 %cmp234, label %while.cond236.preheader, label %for.end250, !dbg !1705

for.end250:                                       ; preds = %while.end244, %for.cond233.loopexit
  %call251 = call i32 @fflush(%struct._IO_FILE* %fp) #7, !dbg !1712
  br label %for.inc253, !dbg !1713

for.inc253:                                       ; preds = %land.lhs.true186, %for.body182, %for.end250
  %indvars.iv.next482 = add i64 %indvars.iv481, 1, !dbg !1678
  call void @llvm.dbg.value(metadata !{i32* %nadj172}, i64 0, metadata !361), !dbg !1678
  %73 = load i32* %nadj172, align 4, !dbg !1678, !tbaa !431
  %74 = trunc i64 %indvars.iv.next482 to i32, !dbg !1678
  %cmp181 = icmp slt i32 %74, %73, !dbg !1678
  br i1 %cmp181, label %for.body182, label %for.inc256, !dbg !1678

for.inc256:                                       ; preds = %for.inc253, %if.end179
  %inc257 = add nsw i32 %J.5452, 1, !dbg !1614
  call void @llvm.dbg.value(metadata !{i32 %inc257}, i64 0, metadata !336), !dbg !1614
  %exitcond483 = icmp eq i32 %inc257, %call63, !dbg !1614
  br i1 %exitcond483, label %if.end260, label %for.body167, !dbg !1614

if.end260:                                        ; preds = %if.end150.thread, %if.end27.thread, %for.end163, %for.end163.thread, %for.inc256, %for.end40, %for.end40.thread, %for.inc57, %if.end
  ret i32 1, !dbg !1714
}

; Function Attrs: optsize
declare i32 @FrontMtx_nfront(%struct._FrontMtx*) #5

; Function Attrs: optsize
declare void @SubMtx_writeForMatlab(%struct._SubMtx*, i8*, %struct._IO_FILE*) #5

; Function Attrs: optsize
declare void @SubMtx_columnIndices(%struct._SubMtx*, i32*, i32**) #5

; Function Attrs: optsize
declare void @FrontMtx_columnIndices(%struct._FrontMtx*, i32, i32*, i32**) #5

; Function Attrs: optsize
declare void @SubMtx_rowIndices(%struct._SubMtx*, i32*, i32**) #5

; Function Attrs: optsize
declare void @FrontMtx_rowIndices(%struct._FrontMtx*, i32, i32*, i32**) #5

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #1

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #4

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { noreturn nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind optsize }
attributes #8 = { nounwind optsize readonly }
attributes #9 = { optsize }
attributes #10 = { noreturn nounwind optsize }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !371, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_IO.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_IO.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4, metadata !246, metadata !264, metadata !277, metadata !285, metadata !298, metadata !312, metadata !316, metadata !327}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"FrontMtx_readFromFile", metadata !"FrontMtx_readFromFile", metadata !"", i32 25, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct._FrontMtx*, i8*)* @FrontMtx_readFromFile, null, null, metadata !185, i32 28} ; [ DW_TAG_subprogram ] [line 25] [def] [scope 28] [FrontMtx_readFromFile]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_IO.c]
!6 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8, metadata !9, metadata !183}
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
!183 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !184} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from char]
!184 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!185 = metadata !{metadata !186, metadata !187, metadata !188, metadata !243, metadata !244, metadata !245}
!186 = metadata !{i32 786689, metadata !4, metadata !"frontmtx", metadata !5, i32 16777242, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [frontmtx] [line 26]
!187 = metadata !{i32 786689, metadata !4, metadata !"fn", metadata !5, i32 33554459, metadata !183, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fn] [line 27]
!188 = metadata !{i32 786688, metadata !4, metadata !"fp", metadata !5, i32 29, metadata !189, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [fp] [line 29]
!189 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !190} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from FILE]
!190 = metadata !{i32 786454, metadata !1, null, metadata !"FILE", i32 48, i64 0, i64 0, i64 0, i32 0, metadata !191} ; [ DW_TAG_typedef ] [FILE] [line 48, size 0, align 0, offset 0] [from _IO_FILE]
!191 = metadata !{i32 786451, metadata !192, null, metadata !"_IO_FILE", i32 245, i64 1728, i64 64, i32 0, i32 0, null, metadata !193, i32 0, null, null} ; [ DW_TAG_structure_type ] [_IO_FILE] [line 245, size 1728, align 64, offset 0] [from ]
!192 = metadata !{metadata !"/usr/include/libio.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!193 = metadata !{metadata !194, metadata !195, metadata !196, metadata !197, metadata !198, metadata !199, metadata !200, metadata !201, metadata !202, metadata !203, metadata !204, metadata !205, metadata !206, metadata !214, metadata !215, metadata !216, metadata !217, metadata !220, metadata !222, metadata !224, metadata !228, metadata !229, metadata !231, metadata !232, metadata !233, metadata !234, metadata !235, metadata !238, metadata !239}
!194 = metadata !{i32 786445, metadata !192, metadata !191, metadata !"_flags", i32 246, i64 32, i64 32, i64 0, i32 0, metadata !8} ; [ DW_TAG_member ] [_flags] [line 246, size 32, align 32, offset 0] [from int]
!195 = metadata !{i32 786445, metadata !192, metadata !191, metadata !"_IO_read_ptr", i32 251, i64 64, i64 64, i64 64, i32 0, metadata !183} ; [ DW_TAG_member ] [_IO_read_ptr] [line 251, size 64, align 64, offset 64] [from ]
!196 = metadata !{i32 786445, metadata !192, metadata !191, metadata !"_IO_read_end", i32 252, i64 64, i64 64, i64 128, i32 0, metadata !183} ; [ DW_TAG_member ] [_IO_read_end] [line 252, size 64, align 64, offset 128] [from ]
!197 = metadata !{i32 786445, metadata !192, metadata !191, metadata !"_IO_read_base", i32 253, i64 64, i64 64, i64 192, i32 0, metadata !183} ; [ DW_TAG_member ] [_IO_read_base] [line 253, size 64, align 64, offset 192] [from ]
!198 = metadata !{i32 786445, metadata !192, metadata !191, metadata !"_IO_write_base", i32 254, i64 64, i64 64, i64 256, i32 0, metadata !183} ; [ DW_TAG_member ] [_IO_write_base] [line 254, size 64, align 64, offset 256] [from ]
!199 = metadata !{i32 786445, metadata !192, metadata !191, metadata !"_IO_write_ptr", i32 255, i64 64, i64 64, i64 320, i32 0, metadata !183} ; [ DW_TAG_member ] [_IO_write_ptr] [line 255, size 64, align 64, offset 320] [from ]
!200 = metadata !{i32 786445, metadata !192, metadata !191, metadata !"_IO_write_end", i32 256, i64 64, i64 64, i64 384, i32 0, metadata !183} ; [ DW_TAG_member ] [_IO_write_end] [line 256, size 64, align 64, offset 384] [from ]
!201 = metadata !{i32 786445, metadata !192, metadata !191, metadata !"_IO_buf_base", i32 257, i64 64, i64 64, i64 448, i32 0, metadata !183} ; [ DW_TAG_member ] [_IO_buf_base] [line 257, size 64, align 64, offset 448] [from ]
!202 = metadata !{i32 786445, metadata !192, metadata !191, metadata !"_IO_buf_end", i32 258, i64 64, i64 64, i64 512, i32 0, metadata !183} ; [ DW_TAG_member ] [_IO_buf_end] [line 258, size 64, align 64, offset 512] [from ]
!203 = metadata !{i32 786445, metadata !192, metadata !191, metadata !"_IO_save_base", i32 260, i64 64, i64 64, i64 576, i32 0, metadata !183} ; [ DW_TAG_member ] [_IO_save_base] [line 260, size 64, align 64, offset 576] [from ]
!204 = metadata !{i32 786445, metadata !192, metadata !191, metadata !"_IO_backup_base", i32 261, i64 64, i64 64, i64 640, i32 0, metadata !183} ; [ DW_TAG_member ] [_IO_backup_base] [line 261, size 64, align 64, offset 640] [from ]
!205 = metadata !{i32 786445, metadata !192, metadata !191, metadata !"_IO_save_end", i32 262, i64 64, i64 64, i64 704, i32 0, metadata !183} ; [ DW_TAG_member ] [_IO_save_end] [line 262, size 64, align 64, offset 704] [from ]
!206 = metadata !{i32 786445, metadata !192, metadata !191, metadata !"_markers", i32 264, i64 64, i64 64, i64 768, i32 0, metadata !207} ; [ DW_TAG_member ] [_markers] [line 264, size 64, align 64, offset 768] [from ]
!207 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !208} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from _IO_marker]
!208 = metadata !{i32 786451, metadata !192, null, metadata !"_IO_marker", i32 160, i64 192, i64 64, i32 0, i32 0, null, metadata !209, i32 0, null, null} ; [ DW_TAG_structure_type ] [_IO_marker] [line 160, size 192, align 64, offset 0] [from ]
!209 = metadata !{metadata !210, metadata !211, metadata !213}
!210 = metadata !{i32 786445, metadata !192, metadata !208, metadata !"_next", i32 161, i64 64, i64 64, i64 0, i32 0, metadata !207} ; [ DW_TAG_member ] [_next] [line 161, size 64, align 64, offset 0] [from ]
!211 = metadata !{i32 786445, metadata !192, metadata !208, metadata !"_sbuf", i32 162, i64 64, i64 64, i64 64, i32 0, metadata !212} ; [ DW_TAG_member ] [_sbuf] [line 162, size 64, align 64, offset 64] [from ]
!212 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !191} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from _IO_FILE]
!213 = metadata !{i32 786445, metadata !192, metadata !208, metadata !"_pos", i32 166, i64 32, i64 32, i64 128, i32 0, metadata !8} ; [ DW_TAG_member ] [_pos] [line 166, size 32, align 32, offset 128] [from int]
!214 = metadata !{i32 786445, metadata !192, metadata !191, metadata !"_chain", i32 266, i64 64, i64 64, i64 832, i32 0, metadata !212} ; [ DW_TAG_member ] [_chain] [line 266, size 64, align 64, offset 832] [from ]
!215 = metadata !{i32 786445, metadata !192, metadata !191, metadata !"_fileno", i32 268, i64 32, i64 32, i64 896, i32 0, metadata !8} ; [ DW_TAG_member ] [_fileno] [line 268, size 32, align 32, offset 896] [from int]
!216 = metadata !{i32 786445, metadata !192, metadata !191, metadata !"_flags2", i32 272, i64 32, i64 32, i64 928, i32 0, metadata !8} ; [ DW_TAG_member ] [_flags2] [line 272, size 32, align 32, offset 928] [from int]
!217 = metadata !{i32 786445, metadata !192, metadata !191, metadata !"_old_offset", i32 274, i64 64, i64 64, i64 960, i32 0, metadata !218} ; [ DW_TAG_member ] [_old_offset] [line 274, size 64, align 64, offset 960] [from __off_t]
!218 = metadata !{i32 786454, metadata !192, null, metadata !"__off_t", i32 131, i64 0, i64 0, i64 0, i32 0, metadata !219} ; [ DW_TAG_typedef ] [__off_t] [line 131, size 0, align 0, offset 0] [from long int]
!219 = metadata !{i32 786468, null, null, metadata !"long int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [long int] [line 0, size 64, align 64, offset 0, enc DW_ATE_signed]
!220 = metadata !{i32 786445, metadata !192, metadata !191, metadata !"_cur_column", i32 278, i64 16, i64 16, i64 1024, i32 0, metadata !221} ; [ DW_TAG_member ] [_cur_column] [line 278, size 16, align 16, offset 1024] [from unsigned short]
!221 = metadata !{i32 786468, null, null, metadata !"unsigned short", i32 0, i64 16, i64 16, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned short] [line 0, size 16, align 16, offset 0, enc DW_ATE_unsigned]
!222 = metadata !{i32 786445, metadata !192, metadata !191, metadata !"_vtable_offset", i32 279, i64 8, i64 8, i64 1040, i32 0, metadata !223} ; [ DW_TAG_member ] [_vtable_offset] [line 279, size 8, align 8, offset 1040] [from signed char]
!223 = metadata !{i32 786468, null, null, metadata !"signed char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [signed char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!224 = metadata !{i32 786445, metadata !192, metadata !191, metadata !"_shortbuf", i32 280, i64 8, i64 8, i64 1048, i32 0, metadata !225} ; [ DW_TAG_member ] [_shortbuf] [line 280, size 8, align 8, offset 1048] [from ]
!225 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 8, i64 8, i32 0, i32 0, metadata !184, metadata !226, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 8, align 8, offset 0] [from char]
!226 = metadata !{metadata !227}
!227 = metadata !{i32 786465, i64 0, i64 1}       ; [ DW_TAG_subrange_type ] [0, 0]
!228 = metadata !{i32 786445, metadata !192, metadata !191, metadata !"_lock", i32 284, i64 64, i64 64, i64 1088, i32 0, metadata !136} ; [ DW_TAG_member ] [_lock] [line 284, size 64, align 64, offset 1088] [from ]
!229 = metadata !{i32 786445, metadata !192, metadata !191, metadata !"_offset", i32 293, i64 64, i64 64, i64 1152, i32 0, metadata !230} ; [ DW_TAG_member ] [_offset] [line 293, size 64, align 64, offset 1152] [from __off64_t]
!230 = metadata !{i32 786454, metadata !192, null, metadata !"__off64_t", i32 132, i64 0, i64 0, i64 0, i32 0, metadata !219} ; [ DW_TAG_typedef ] [__off64_t] [line 132, size 0, align 0, offset 0] [from long int]
!231 = metadata !{i32 786445, metadata !192, metadata !191, metadata !"__pad1", i32 302, i64 64, i64 64, i64 1216, i32 0, metadata !136} ; [ DW_TAG_member ] [__pad1] [line 302, size 64, align 64, offset 1216] [from ]
!232 = metadata !{i32 786445, metadata !192, metadata !191, metadata !"__pad2", i32 303, i64 64, i64 64, i64 1280, i32 0, metadata !136} ; [ DW_TAG_member ] [__pad2] [line 303, size 64, align 64, offset 1280] [from ]
!233 = metadata !{i32 786445, metadata !192, metadata !191, metadata !"__pad3", i32 304, i64 64, i64 64, i64 1344, i32 0, metadata !136} ; [ DW_TAG_member ] [__pad3] [line 304, size 64, align 64, offset 1344] [from ]
!234 = metadata !{i32 786445, metadata !192, metadata !191, metadata !"__pad4", i32 305, i64 64, i64 64, i64 1408, i32 0, metadata !136} ; [ DW_TAG_member ] [__pad4] [line 305, size 64, align 64, offset 1408] [from ]
!235 = metadata !{i32 786445, metadata !192, metadata !191, metadata !"__pad5", i32 306, i64 64, i64 64, i64 1472, i32 0, metadata !236} ; [ DW_TAG_member ] [__pad5] [line 306, size 64, align 64, offset 1472] [from size_t]
!236 = metadata !{i32 786454, metadata !192, null, metadata !"size_t", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !237} ; [ DW_TAG_typedef ] [size_t] [line 42, size 0, align 0, offset 0] [from long unsigned int]
!237 = metadata !{i32 786468, null, null, metadata !"long unsigned int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [long unsigned int] [line 0, size 64, align 64, offset 0, enc DW_ATE_unsigned]
!238 = metadata !{i32 786445, metadata !192, metadata !191, metadata !"_mode", i32 308, i64 32, i64 32, i64 1536, i32 0, metadata !8} ; [ DW_TAG_member ] [_mode] [line 308, size 32, align 32, offset 1536] [from int]
!239 = metadata !{i32 786445, metadata !192, metadata !191, metadata !"_unused2", i32 310, i64 160, i64 8, i64 1568, i32 0, metadata !240} ; [ DW_TAG_member ] [_unused2] [line 310, size 160, align 8, offset 1568] [from ]
!240 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 160, i64 8, i32 0, i32 0, metadata !184, metadata !241, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 160, align 8, offset 0] [from char]
!241 = metadata !{metadata !242}
!242 = metadata !{i32 786465, i64 0, i64 20}      ; [ DW_TAG_subrange_type ] [0, 19]
!243 = metadata !{i32 786688, metadata !4, metadata !"fnlength", metadata !5, i32 30, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [fnlength] [line 30]
!244 = metadata !{i32 786688, metadata !4, metadata !"rc", metadata !5, i32 30, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rc] [line 30]
!245 = metadata !{i32 786688, metadata !4, metadata !"sulength", metadata !5, i32 30, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sulength] [line 30]
!246 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"FrontMtx_readFromFormattedFile", metadata !"FrontMtx_readFromFormattedFile", metadata !"", i32 104, metadata !247, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct._FrontMtx*, %struct._IO_FILE*)* @FrontMtx_readFromFormattedFile, null, null, metadata !249, i32 107} ; [ DW_TAG_subprogram ] [line 104] [def] [scope 107] [FrontMtx_readFromFormattedFile]
!247 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !248, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!248 = metadata !{metadata !8, metadata !9, metadata !189}
!249 = metadata !{metadata !250, metadata !251, metadata !252, metadata !253, metadata !254, metadata !255, metadata !256, metadata !257, metadata !258, metadata !259, metadata !260}
!250 = metadata !{i32 786689, metadata !246, metadata !"frontmtx", metadata !5, i32 16777321, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [frontmtx] [line 105]
!251 = metadata !{i32 786689, metadata !246, metadata !"fp", metadata !5, i32 33554538, metadata !189, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fp] [line 106]
!252 = metadata !{i32 786688, metadata !246, metadata !"mtx", metadata !5, i32 108, metadata !87, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [mtx] [line 108]
!253 = metadata !{i32 786688, metadata !246, metadata !"imtx", metadata !5, i32 109, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [imtx] [line 109]
!254 = metadata !{i32 786688, metadata !246, metadata !"J", metadata !5, i32 109, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [J] [line 109]
!255 = metadata !{i32 786688, metadata !246, metadata !"JK", metadata !5, i32 109, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [JK] [line 109]
!256 = metadata !{i32 786688, metadata !246, metadata !"KJ", metadata !5, i32 109, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [KJ] [line 109]
!257 = metadata !{i32 786688, metadata !246, metadata !"nfront", metadata !5, i32 109, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nfront] [line 109]
!258 = metadata !{i32 786688, metadata !246, metadata !"nmtx", metadata !5, i32 109, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nmtx] [line 109]
!259 = metadata !{i32 786688, metadata !246, metadata !"rc", metadata !5, i32 109, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rc] [line 109]
!260 = metadata !{i32 786688, metadata !246, metadata !"itemp", metadata !5, i32 110, metadata !261, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [itemp] [line 110]
!261 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 320, i64 32, i32 0, i32 0, metadata !8, metadata !262, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 320, align 32, offset 0] [from int]
!262 = metadata !{metadata !263}
!263 = metadata !{i32 786465, i64 0, i64 10}      ; [ DW_TAG_subrange_type ] [0, 9]
!264 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"FrontMtx_readFromBinaryFile", metadata !"FrontMtx_readFromBinaryFile", metadata !"", i32 468, metadata !247, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct._FrontMtx*, %struct._IO_FILE*)* @FrontMtx_readFromBinaryFile, null, null, metadata !265, i32 471} ; [ DW_TAG_subprogram ] [line 468] [def] [scope 471] [FrontMtx_readFromBinaryFile]
!265 = metadata !{metadata !266, metadata !267, metadata !268, metadata !269, metadata !270, metadata !271, metadata !272, metadata !273, metadata !274, metadata !275, metadata !276}
!266 = metadata !{i32 786689, metadata !264, metadata !"frontmtx", metadata !5, i32 16777685, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [frontmtx] [line 469]
!267 = metadata !{i32 786689, metadata !264, metadata !"fp", metadata !5, i32 33554902, metadata !189, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fp] [line 470]
!268 = metadata !{i32 786688, metadata !264, metadata !"mtx", metadata !5, i32 472, metadata !87, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [mtx] [line 472]
!269 = metadata !{i32 786688, metadata !264, metadata !"imtx", metadata !5, i32 473, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [imtx] [line 473]
!270 = metadata !{i32 786688, metadata !264, metadata !"J", metadata !5, i32 473, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [J] [line 473]
!271 = metadata !{i32 786688, metadata !264, metadata !"JK", metadata !5, i32 473, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [JK] [line 473]
!272 = metadata !{i32 786688, metadata !264, metadata !"KJ", metadata !5, i32 473, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [KJ] [line 473]
!273 = metadata !{i32 786688, metadata !264, metadata !"nfront", metadata !5, i32 473, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nfront] [line 473]
!274 = metadata !{i32 786688, metadata !264, metadata !"nmtx", metadata !5, i32 473, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nmtx] [line 473]
!275 = metadata !{i32 786688, metadata !264, metadata !"rc", metadata !5, i32 473, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rc] [line 473]
!276 = metadata !{i32 786688, metadata !264, metadata !"itemp", metadata !5, i32 474, metadata !261, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [itemp] [line 474]
!277 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"FrontMtx_writeToFile", metadata !"FrontMtx_writeToFile", metadata !"", i32 929, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct._FrontMtx*, i8*)* @FrontMtx_writeToFile, null, null, metadata !278, i32 932} ; [ DW_TAG_subprogram ] [line 929] [def] [scope 932] [FrontMtx_writeToFile]
!278 = metadata !{metadata !279, metadata !280, metadata !281, metadata !282, metadata !283, metadata !284}
!279 = metadata !{i32 786689, metadata !277, metadata !"frontmtx", metadata !5, i32 16778146, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [frontmtx] [line 930]
!280 = metadata !{i32 786689, metadata !277, metadata !"fn", metadata !5, i32 33555363, metadata !183, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fn] [line 931]
!281 = metadata !{i32 786688, metadata !277, metadata !"fp", metadata !5, i32 933, metadata !189, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [fp] [line 933]
!282 = metadata !{i32 786688, metadata !277, metadata !"fnlength", metadata !5, i32 934, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [fnlength] [line 934]
!283 = metadata !{i32 786688, metadata !277, metadata !"rc", metadata !5, i32 934, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rc] [line 934]
!284 = metadata !{i32 786688, metadata !277, metadata !"sulength", metadata !5, i32 934, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sulength] [line 934]
!285 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"FrontMtx_writeToFormattedFile", metadata !"FrontMtx_writeToFormattedFile", metadata !"", i32 1003, metadata !247, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct._FrontMtx*, %struct._IO_FILE*)* @FrontMtx_writeToFormattedFile, null, null, metadata !286, i32 1006} ; [ DW_TAG_subprogram ] [line 1003] [def] [scope 1006] [FrontMtx_writeToFormattedFile]
!286 = metadata !{metadata !287, metadata !288, metadata !289, metadata !290, metadata !291, metadata !292, metadata !293, metadata !294, metadata !295, metadata !296, metadata !297}
!287 = metadata !{i32 786689, metadata !285, metadata !"frontmtx", metadata !5, i32 16778220, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [frontmtx] [line 1004]
!288 = metadata !{i32 786689, metadata !285, metadata !"fp", metadata !5, i32 33555437, metadata !189, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fp] [line 1005]
!289 = metadata !{i32 786688, metadata !285, metadata !"mtx", metadata !5, i32 1007, metadata !87, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [mtx] [line 1007]
!290 = metadata !{i32 786688, metadata !285, metadata !"ii", metadata !5, i32 1008, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ii] [line 1008]
!291 = metadata !{i32 786688, metadata !285, metadata !"J", metadata !5, i32 1008, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [J] [line 1008]
!292 = metadata !{i32 786688, metadata !285, metadata !"K", metadata !5, i32 1008, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [K] [line 1008]
!293 = metadata !{i32 786688, metadata !285, metadata !"nadj", metadata !5, i32 1008, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nadj] [line 1008]
!294 = metadata !{i32 786688, metadata !285, metadata !"nfront", metadata !5, i32 1008, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nfront] [line 1008]
!295 = metadata !{i32 786688, metadata !285, metadata !"nmtx", metadata !5, i32 1008, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nmtx] [line 1008]
!296 = metadata !{i32 786688, metadata !285, metadata !"rc", metadata !5, i32 1008, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rc] [line 1008]
!297 = metadata !{i32 786688, metadata !285, metadata !"adj", metadata !5, i32 1009, metadata !33, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [adj] [line 1009]
!298 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"FrontMtx_writeToBinaryFile", metadata !"FrontMtx_writeToBinaryFile", metadata !"", i32 1297, metadata !247, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct._FrontMtx*, %struct._IO_FILE*)* @FrontMtx_writeToBinaryFile, null, null, metadata !299, i32 1300} ; [ DW_TAG_subprogram ] [line 1297] [def] [scope 1300] [FrontMtx_writeToBinaryFile]
!299 = metadata !{metadata !300, metadata !301, metadata !302, metadata !303, metadata !304, metadata !305, metadata !306, metadata !307, metadata !308, metadata !309, metadata !310, metadata !311}
!300 = metadata !{i32 786689, metadata !298, metadata !"frontmtx", metadata !5, i32 16778514, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [frontmtx] [line 1298]
!301 = metadata !{i32 786689, metadata !298, metadata !"fp", metadata !5, i32 33555731, metadata !189, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fp] [line 1299]
!302 = metadata !{i32 786688, metadata !298, metadata !"mtx", metadata !5, i32 1301, metadata !87, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [mtx] [line 1301]
!303 = metadata !{i32 786688, metadata !298, metadata !"ii", metadata !5, i32 1302, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ii] [line 1302]
!304 = metadata !{i32 786688, metadata !298, metadata !"J", metadata !5, i32 1302, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [J] [line 1302]
!305 = metadata !{i32 786688, metadata !298, metadata !"K", metadata !5, i32 1302, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [K] [line 1302]
!306 = metadata !{i32 786688, metadata !298, metadata !"nadj", metadata !5, i32 1302, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nadj] [line 1302]
!307 = metadata !{i32 786688, metadata !298, metadata !"nfront", metadata !5, i32 1302, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nfront] [line 1302]
!308 = metadata !{i32 786688, metadata !298, metadata !"nmtx", metadata !5, i32 1302, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nmtx] [line 1302]
!309 = metadata !{i32 786688, metadata !298, metadata !"rc", metadata !5, i32 1302, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rc] [line 1302]
!310 = metadata !{i32 786688, metadata !298, metadata !"adj", metadata !5, i32 1303, metadata !33, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [adj] [line 1303]
!311 = metadata !{i32 786688, metadata !298, metadata !"itemp", metadata !5, i32 1304, metadata !261, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [itemp] [line 1304]
!312 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"FrontMtx_writeStats", metadata !"FrontMtx_writeStats", metadata !"", i32 1597, metadata !247, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct._FrontMtx*, %struct._IO_FILE*)* @FrontMtx_writeStats, null, null, metadata !313, i32 1600} ; [ DW_TAG_subprogram ] [line 1597] [def] [scope 1600] [FrontMtx_writeStats]
!313 = metadata !{metadata !314, metadata !315}
!314 = metadata !{i32 786689, metadata !312, metadata !"frontmtx", metadata !5, i32 16778814, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [frontmtx] [line 1598]
!315 = metadata !{i32 786689, metadata !312, metadata !"fp", metadata !5, i32 33556031, metadata !189, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fp] [line 1599]
!316 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"FrontMtx_writeForHumanEye", metadata !"FrontMtx_writeForHumanEye", metadata !"", i32 1671, metadata !247, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct._FrontMtx*, %struct._IO_FILE*)* @FrontMtx_writeForHumanEye, null, null, metadata !317, i32 1674} ; [ DW_TAG_subprogram ] [line 1671] [def] [scope 1674] [FrontMtx_writeForHumanEye]
!317 = metadata !{metadata !318, metadata !319, metadata !320, metadata !321, metadata !322, metadata !323, metadata !324, metadata !325, metadata !326}
!318 = metadata !{i32 786689, metadata !316, metadata !"frontmtx", metadata !5, i32 16778888, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [frontmtx] [line 1672]
!319 = metadata !{i32 786689, metadata !316, metadata !"fp", metadata !5, i32 33556105, metadata !189, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fp] [line 1673]
!320 = metadata !{i32 786688, metadata !316, metadata !"mtx", metadata !5, i32 1675, metadata !87, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [mtx] [line 1675]
!321 = metadata !{i32 786688, metadata !316, metadata !"ii", metadata !5, i32 1676, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ii] [line 1676]
!322 = metadata !{i32 786688, metadata !316, metadata !"J", metadata !5, i32 1676, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [J] [line 1676]
!323 = metadata !{i32 786688, metadata !316, metadata !"K", metadata !5, i32 1676, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [K] [line 1676]
!324 = metadata !{i32 786688, metadata !316, metadata !"nadj", metadata !5, i32 1676, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nadj] [line 1676]
!325 = metadata !{i32 786688, metadata !316, metadata !"nfront", metadata !5, i32 1676, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nfront] [line 1676]
!326 = metadata !{i32 786688, metadata !316, metadata !"adj", metadata !5, i32 1677, metadata !33, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [adj] [line 1677]
!327 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"FrontMtx_writeForMatlab", metadata !"FrontMtx_writeForMatlab", metadata !"", i32 1810, metadata !328, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct._FrontMtx*, i8*, i8*, i8*, %struct._IO_FILE*)* @FrontMtx_writeForMatlab, null, null, metadata !330, i32 1816} ; [ DW_TAG_subprogram ] [line 1810] [def] [scope 1816] [FrontMtx_writeForMatlab]
!328 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !329, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!329 = metadata !{metadata !8, metadata !9, metadata !183, metadata !183, metadata !183, metadata !189}
!330 = metadata !{metadata !331, metadata !332, metadata !333, metadata !334, metadata !335, metadata !336, metadata !337, metadata !338, metadata !339, metadata !342, metadata !343, metadata !344, metadata !345, metadata !346, metadata !347, metadata !348, metadata !349, metadata !350, metadata !351, metadata !352, metadata !353, metadata !354, metadata !355, metadata !358, metadata !359, metadata !360, metadata !361, metadata !362, metadata !363, metadata !364, metadata !365, metadata !366, metadata !367, metadata !368, metadata !369, metadata !370}
!331 = metadata !{i32 786689, metadata !327, metadata !"frontmtx", metadata !5, i32 16779027, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [frontmtx] [line 1811]
!332 = metadata !{i32 786689, metadata !327, metadata !"Lname", metadata !5, i32 33556244, metadata !183, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [Lname] [line 1812]
!333 = metadata !{i32 786689, metadata !327, metadata !"Dname", metadata !5, i32 50333461, metadata !183, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [Dname] [line 1813]
!334 = metadata !{i32 786689, metadata !327, metadata !"Uname", metadata !5, i32 67110678, metadata !183, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [Uname] [line 1814]
!335 = metadata !{i32 786689, metadata !327, metadata !"fp", metadata !5, i32 83887895, metadata !189, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fp] [line 1815]
!336 = metadata !{i32 786688, metadata !327, metadata !"J", metadata !5, i32 1817, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [J] [line 1817]
!337 = metadata !{i32 786688, metadata !327, metadata !"nfront", metadata !5, i32 1817, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nfront] [line 1817]
!338 = metadata !{i32 786688, metadata !327, metadata !"mtx", metadata !5, i32 1818, metadata !87, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [mtx] [line 1818]
!339 = metadata !{i32 786688, metadata !340, metadata !"ii", metadata !5, i32 1876, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ii] [line 1876]
!340 = metadata !{i32 786443, metadata !1, metadata !341, i32 1875, i32 0, i32 374} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_IO.c]
!341 = metadata !{i32 786443, metadata !1, metadata !327, i32 1873, i32 0, i32 373} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_IO.c]
!342 = metadata !{i32 786688, metadata !340, metadata !"jj", metadata !5, i32 1876, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [jj] [line 1876]
!343 = metadata !{i32 786688, metadata !340, metadata !"kk", metadata !5, i32 1876, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [kk] [line 1876]
!344 = metadata !{i32 786688, metadata !340, metadata !"K", metadata !5, i32 1876, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [K] [line 1876]
!345 = metadata !{i32 786688, metadata !340, metadata !"nadj", metadata !5, i32 1876, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nadj] [line 1876]
!346 = metadata !{i32 786688, metadata !340, metadata !"ncolJ", metadata !5, i32 1876, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ncolJ] [line 1876]
!347 = metadata !{i32 786688, metadata !340, metadata !"ncolKJ", metadata !5, i32 1876, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ncolKJ] [line 1876]
!348 = metadata !{i32 786688, metadata !340, metadata !"nrowK", metadata !5, i32 1876, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nrowK] [line 1876]
!349 = metadata !{i32 786688, metadata !340, metadata !"nrowKJ", metadata !5, i32 1876, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nrowKJ] [line 1876]
!350 = metadata !{i32 786688, metadata !340, metadata !"adj", metadata !5, i32 1877, metadata !33, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [adj] [line 1877]
!351 = metadata !{i32 786688, metadata !340, metadata !"colindJ", metadata !5, i32 1877, metadata !33, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [colindJ] [line 1877]
!352 = metadata !{i32 786688, metadata !340, metadata !"colKJ", metadata !5, i32 1877, metadata !33, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [colKJ] [line 1877]
!353 = metadata !{i32 786688, metadata !340, metadata !"rowindK", metadata !5, i32 1877, metadata !33, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rowindK] [line 1877]
!354 = metadata !{i32 786688, metadata !340, metadata !"rowKJ", metadata !5, i32 1877, metadata !33, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rowKJ] [line 1877]
!355 = metadata !{i32 786688, metadata !356, metadata !"ii", metadata !5, i32 1931, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ii] [line 1931]
!356 = metadata !{i32 786443, metadata !1, metadata !357, i32 1930, i32 0, i32 395} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_IO.c]
!357 = metadata !{i32 786443, metadata !1, metadata !341, i32 1930, i32 0, i32 394} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_IO.c]
!358 = metadata !{i32 786688, metadata !356, metadata !"jj", metadata !5, i32 1931, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [jj] [line 1931]
!359 = metadata !{i32 786688, metadata !356, metadata !"kk", metadata !5, i32 1931, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [kk] [line 1931]
!360 = metadata !{i32 786688, metadata !356, metadata !"K", metadata !5, i32 1931, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [K] [line 1931]
!361 = metadata !{i32 786688, metadata !356, metadata !"nadj", metadata !5, i32 1931, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nadj] [line 1931]
!362 = metadata !{i32 786688, metadata !356, metadata !"ncolK", metadata !5, i32 1931, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ncolK] [line 1931]
!363 = metadata !{i32 786688, metadata !356, metadata !"ncolJK", metadata !5, i32 1931, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ncolJK] [line 1931]
!364 = metadata !{i32 786688, metadata !356, metadata !"nrowJ", metadata !5, i32 1931, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nrowJ] [line 1931]
!365 = metadata !{i32 786688, metadata !356, metadata !"nrowJK", metadata !5, i32 1931, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nrowJK] [line 1931]
!366 = metadata !{i32 786688, metadata !356, metadata !"adj", metadata !5, i32 1932, metadata !33, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [adj] [line 1932]
!367 = metadata !{i32 786688, metadata !356, metadata !"colindK", metadata !5, i32 1932, metadata !33, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [colindK] [line 1932]
!368 = metadata !{i32 786688, metadata !356, metadata !"colJK", metadata !5, i32 1932, metadata !33, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [colJK] [line 1932]
!369 = metadata !{i32 786688, metadata !356, metadata !"rowindJ", metadata !5, i32 1932, metadata !33, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rowindJ] [line 1932]
!370 = metadata !{i32 786688, metadata !356, metadata !"rowJK", metadata !5, i32 1932, metadata !33, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rowJK] [line 1932]
!371 = metadata !{metadata !372, metadata !375}
!372 = metadata !{i32 786484, i32 0, null, metadata !"suffixf", metadata !"suffixf", metadata !"", metadata !5, i32 6, metadata !373, i32 1, i32 1, null, null}
!373 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !374} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!374 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !184} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from char]
!375 = metadata !{i32 786484, i32 0, null, metadata !"suffixb", metadata !"suffixb", metadata !"", metadata !5, i32 5, metadata !373, i32 1, i32 1, null, null}
!376 = metadata !{i32 26, i32 0, metadata !4, null}
!377 = metadata !{i32 27, i32 0, metadata !4, null}
!378 = metadata !{i32 36, i32 0, metadata !4, null}
!379 = metadata !{i32 37, i32 0, metadata !380, null}
!380 = metadata !{i32 786443, metadata !1, metadata !4, i32 36, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_IO.c]
!381 = metadata !{metadata !"any pointer", metadata !382}
!382 = metadata !{metadata !"omnipotent char", metadata !383}
!383 = metadata !{metadata !"Simple C/C++ TBAA"}
!384 = metadata !{i32 39, i32 0, metadata !380, null}
!385 = metadata !{i32 46, i32 0, metadata !4, null}
!386 = metadata !{i32 10}
!387 = metadata !{i32 47, i32 0, metadata !4, null}
!388 = metadata !{i32 48, i32 0, metadata !4, null}
!389 = metadata !{i32 49, i32 0, metadata !390, null}
!390 = metadata !{i32 786443, metadata !1, metadata !4, i32 48, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_IO.c]
!391 = metadata !{i32 50, i32 0, metadata !392, null}
!392 = metadata !{i32 786443, metadata !1, metadata !390, i32 49, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_IO.c]
!393 = metadata !{i32 51, i32 0, metadata !394, null}
!394 = metadata !{i32 786443, metadata !1, metadata !392, i32 50, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_IO.c]
!395 = metadata !{i32 53, i32 0, metadata !394, null}
!396 = metadata !{i32 54, i32 0, metadata !394, null}
!397 = metadata !{i32 55, i32 0, metadata !398, null}
!398 = metadata !{i32 786443, metadata !1, metadata !392, i32 54, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_IO.c]
!399 = metadata !{i32 61, i32 0, metadata !398, null}
!400 = metadata !{i32 63, i32 0, metadata !390, null}
!401 = metadata !{i32 64, i32 0, metadata !402, null}
!402 = metadata !{i32 786443, metadata !1, metadata !390, i32 63, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_IO.c]
!403 = metadata !{i32 65, i32 0, metadata !404, null}
!404 = metadata !{i32 786443, metadata !1, metadata !402, i32 64, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_IO.c]
!405 = metadata !{i32 67, i32 0, metadata !404, null}
!406 = metadata !{i32 68, i32 0, metadata !404, null}
!407 = metadata !{i32 69, i32 0, metadata !408, null}
!408 = metadata !{i32 786443, metadata !1, metadata !402, i32 68, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_IO.c]
!409 = metadata !{i32 70, i32 0, metadata !408, null}
!410 = metadata !{i32 73, i32 0, metadata !411, null}
!411 = metadata !{i32 786443, metadata !1, metadata !390, i32 72, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_IO.c]
!412 = metadata !{i32 77, i32 0, metadata !411, null}
!413 = metadata !{i32 80, i32 0, metadata !414, null}
!414 = metadata !{i32 786443, metadata !1, metadata !4, i32 79, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_IO.c]
!415 = metadata !{i32 84, i32 0, metadata !414, null}
!416 = metadata !{i32 91, i32 0, metadata !4, null}
!417 = metadata !{i32 469, i32 0, metadata !264, null}
!418 = metadata !{i32 470, i32 0, metadata !264, null}
!419 = metadata !{i32 473, i32 0, metadata !264, null}
!420 = metadata !{i32 474, i32 0, metadata !264, null}
!421 = metadata !{i32 480, i32 0, metadata !264, null}
!422 = metadata !{i32 481, i32 0, metadata !423, null}
!423 = metadata !{i32 786443, metadata !1, metadata !264, i32 480, i32 0, i32 83} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_IO.c]
!424 = metadata !{i32 483, i32 0, metadata !423, null}
!425 = metadata !{i32 490, i32 0, metadata !264, null}
!426 = metadata !{i32 496, i32 0, metadata !264, null}
!427 = metadata !{i32 497, i32 0, metadata !428, null}
!428 = metadata !{i32 786443, metadata !1, metadata !264, i32 496, i32 0, i32 84} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_IO.c]
!429 = metadata !{i32 499, i32 0, metadata !428, null}
!430 = metadata !{i32 501, i32 0, metadata !264, null}
!431 = metadata !{metadata !"int", metadata !382}
!432 = metadata !{i32 502, i32 0, metadata !264, null}
!433 = metadata !{i32 503, i32 0, metadata !264, null}
!434 = metadata !{i32 504, i32 0, metadata !264, null}
!435 = metadata !{i32 505, i32 0, metadata !264, null}
!436 = metadata !{i32 506, i32 0, metadata !264, null}
!437 = metadata !{i32 507, i32 0, metadata !264, null}
!438 = metadata !{i32 508, i32 0, metadata !264, null}
!439 = metadata !{i32 509, i32 0, metadata !264, null}
!440 = metadata !{i32 510, i32 0, metadata !264, null}
!441 = metadata !{i32 534, i32 0, metadata !264, null}
!442 = metadata !{i32 535, i32 0, metadata !264, null}
!443 = metadata !{i32 536, i32 0, metadata !264, null}
!444 = metadata !{i32 537, i32 0, metadata !445, null}
!445 = metadata !{i32 786443, metadata !1, metadata !264, i32 536, i32 0, i32 85} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_IO.c]
!446 = metadata !{i32 541, i32 0, metadata !445, null}
!447 = metadata !{i32 543, i32 0, metadata !264, null}
!448 = metadata !{i32 554, i32 0, metadata !264, null}
!449 = metadata !{i32 555, i32 0, metadata !264, null}
!450 = metadata !{i32 556, i32 0, metadata !264, null}
!451 = metadata !{i32 557, i32 0, metadata !264, null}
!452 = metadata !{i32 558, i32 0, metadata !453, null}
!453 = metadata !{i32 786443, metadata !1, metadata !264, i32 557, i32 0, i32 86} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_IO.c]
!454 = metadata !{i32 562, i32 0, metadata !453, null}
!455 = metadata !{i32 570, i32 0, metadata !264, null}
!456 = metadata !{i32 571, i32 0, metadata !264, null}
!457 = metadata !{i32 577, i32 0, metadata !458, null}
!458 = metadata !{i32 786443, metadata !1, metadata !264, i32 571, i32 0, i32 87} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_IO.c]
!459 = metadata !{i32 578, i32 0, metadata !458, null}
!460 = metadata !{i32 579, i32 0, metadata !461, null}
!461 = metadata !{i32 786443, metadata !1, metadata !458, i32 578, i32 0, i32 88} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_IO.c]
!462 = metadata !{i32 583, i32 0, metadata !461, null}
!463 = metadata !{i32 591, i32 0, metadata !464, null}
!464 = metadata !{i32 786443, metadata !1, metadata !264, i32 585, i32 0, i32 89} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_IO.c]
!465 = metadata !{i32 592, i32 0, metadata !464, null}
!466 = metadata !{i32 593, i32 0, metadata !464, null}
!467 = metadata !{i32 595, i32 0, metadata !264, null}
!468 = metadata !{i32 601, i32 0, metadata !469, null}
!469 = metadata !{i32 786443, metadata !1, metadata !264, i32 595, i32 0, i32 90} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_IO.c]
!470 = metadata !{i32 602, i32 0, metadata !471, null}
!471 = metadata !{i32 786443, metadata !1, metadata !469, i32 601, i32 0, i32 91} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_IO.c]
!472 = metadata !{i32 603, i32 0, metadata !471, null}
!473 = metadata !{i32 604, i32 0, metadata !471, null}
!474 = metadata !{i32 605, i32 0, metadata !471, null}
!475 = metadata !{i32 606, i32 0, metadata !476, null}
!476 = metadata !{i32 786443, metadata !1, metadata !471, i32 605, i32 0, i32 92} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_IO.c]
!477 = metadata !{i32 610, i32 0, metadata !476, null}
!478 = metadata !{i32 618, i32 0, metadata !469, null}
!479 = metadata !{i32 619, i32 0, metadata !469, null}
!480 = metadata !{i32 620, i32 0, metadata !469, null}
!481 = metadata !{i32 621, i32 0, metadata !469, null}
!482 = metadata !{i32 622, i32 0, metadata !483, null}
!483 = metadata !{i32 786443, metadata !1, metadata !469, i32 621, i32 0, i32 93} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_IO.c]
!484 = metadata !{i32 626, i32 0, metadata !483, null}
!485 = metadata !{i32 634, i32 0, metadata !264, null}
!486 = metadata !{i32 640, i32 0, metadata !487, null}
!487 = metadata !{i32 786443, metadata !1, metadata !264, i32 634, i32 0, i32 94} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_IO.c]
!488 = metadata !{i32 640, i32 0, metadata !489, null}
!489 = metadata !{i32 786443, metadata !1, metadata !487, i32 640, i32 0, i32 95} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_IO.c]
!490 = metadata !{i32 640, i32 0, metadata !491, null}
!491 = metadata !{i32 786443, metadata !1, metadata !489, i32 640, i32 0, i32 96} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_IO.c]
!492 = metadata !{i32 640, i32 0, metadata !493, null}
!493 = metadata !{i32 786443, metadata !1, metadata !487, i32 640, i32 0, i32 98} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_IO.c]
!494 = metadata !{i32 641, i32 0, metadata !495, null}
!495 = metadata !{i32 786443, metadata !1, metadata !487, i32 641, i32 0, i32 99} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_IO.c]
!496 = metadata !{i32 641, i32 0, metadata !497, null}
!497 = metadata !{i32 786443, metadata !1, metadata !495, i32 641, i32 0, i32 100} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_IO.c]
!498 = metadata !{i32 642, i32 0, metadata !499, null}
!499 = metadata !{i32 786443, metadata !1, metadata !487, i32 642, i32 0, i32 103} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_IO.c]
!500 = metadata !{i32 642, i32 0, metadata !501, null}
!501 = metadata !{i32 786443, metadata !1, metadata !499, i32 642, i32 0, i32 104} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_IO.c]
!502 = metadata !{i32 640, i32 0, metadata !503, null}
!503 = metadata !{i32 786443, metadata !1, metadata !487, i32 640, i32 0, i32 97} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_IO.c]
!504 = metadata !{i32 641, i32 0, metadata !505, null}
!505 = metadata !{i32 786443, metadata !1, metadata !487, i32 641, i32 0, i32 101} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_IO.c]
!506 = metadata !{i32 643, i32 0, metadata !507, null}
!507 = metadata !{i32 786443, metadata !1, metadata !487, i32 643, i32 0, i32 107} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_IO.c]
!508 = metadata !{i32 644, i32 0, metadata !509, null}
!509 = metadata !{i32 786443, metadata !1, metadata !507, i32 643, i32 0, i32 108} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_IO.c]
!510 = metadata !{i32 645, i32 0, metadata !509, null}
!511 = metadata !{i32 646, i32 0, metadata !509, null}
!512 = metadata !{i32 648, i32 0, metadata !487, null}
!513 = metadata !{i32 649, i32 0, metadata !514, null}
!514 = metadata !{i32 786443, metadata !1, metadata !487, i32 648, i32 0, i32 109} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_IO.c]
!515 = metadata !{i32 649, i32 0, metadata !516, null}
!516 = metadata !{i32 786443, metadata !1, metadata !514, i32 649, i32 0, i32 110} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_IO.c]
!517 = metadata !{i32 649, i32 0, metadata !518, null}
!518 = metadata !{i32 786443, metadata !1, metadata !516, i32 649, i32 0, i32 111} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_IO.c]
!519 = metadata !{i32 649, i32 0, metadata !520, null}
!520 = metadata !{i32 786443, metadata !1, metadata !514, i32 649, i32 0, i32 113} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_IO.c]
!521 = metadata !{i32 650, i32 0, metadata !522, null}
!522 = metadata !{i32 786443, metadata !1, metadata !514, i32 650, i32 0, i32 114} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_IO.c]
!523 = metadata !{i32 650, i32 0, metadata !524, null}
!524 = metadata !{i32 786443, metadata !1, metadata !522, i32 650, i32 0, i32 115} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_IO.c]
!525 = metadata !{i32 649, i32 0, metadata !526, null}
!526 = metadata !{i32 786443, metadata !1, metadata !514, i32 649, i32 0, i32 112} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_IO.c]
!527 = metadata !{i32 650, i32 0, metadata !528, null}
!528 = metadata !{i32 786443, metadata !1, metadata !514, i32 650, i32 0, i32 116} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_IO.c]
!529 = metadata !{i32 651, i32 0, metadata !530, null}
!530 = metadata !{i32 786443, metadata !1, metadata !514, i32 651, i32 0, i32 118} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_IO.c]
!531 = metadata !{i32 652, i32 0, metadata !532, null}
!532 = metadata !{i32 786443, metadata !1, metadata !530, i32 651, i32 0, i32 119} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_IO.c]
!533 = metadata !{i32 653, i32 0, metadata !532, null}
!534 = metadata !{i32 662, i32 0, metadata !535, null}
!535 = metadata !{i32 786443, metadata !1, metadata !487, i32 656, i32 0, i32 120} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_IO.c]
!536 = metadata !{i32 668, i32 0, metadata !537, null}
!537 = metadata !{i32 786443, metadata !1, metadata !535, i32 668, i32 0, i32 122} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_IO.c]
!538 = metadata !{i32 678, i32 0, metadata !539, null}
!539 = metadata !{i32 786443, metadata !1, metadata !537, i32 668, i32 0, i32 123} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_IO.c]
!540 = metadata !{i32 663, i32 0, metadata !541, null}
!541 = metadata !{i32 786443, metadata !1, metadata !535, i32 662, i32 0, i32 121} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_IO.c]
!542 = metadata !{i32 666, i32 0, metadata !541, null}
!543 = metadata !{i32 669, i32 0, metadata !539, null}
!544 = metadata !{i32 670, i32 0, metadata !539, null}
!545 = metadata !{i32 671, i32 0, metadata !539, null}
!546 = metadata !{i32 672, i32 0, metadata !547, null}
!547 = metadata !{i32 786443, metadata !1, metadata !539, i32 671, i32 0, i32 124} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_IO.c]
!548 = metadata !{i32 676, i32 0, metadata !547, null}
!549 = metadata !{i32 680, i32 0, metadata !535, null}
!550 = metadata !{i32 686, i32 0, metadata !551, null}
!551 = metadata !{i32 786443, metadata !1, metadata !535, i32 686, i32 0, i32 126} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_IO.c]
!552 = metadata !{i32 696, i32 0, metadata !553, null}
!553 = metadata !{i32 786443, metadata !1, metadata !551, i32 686, i32 0, i32 127} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_IO.c]
!554 = metadata !{i32 681, i32 0, metadata !555, null}
!555 = metadata !{i32 786443, metadata !1, metadata !535, i32 680, i32 0, i32 125} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_IO.c]
!556 = metadata !{i32 684, i32 0, metadata !555, null}
!557 = metadata !{i32 687, i32 0, metadata !553, null}
!558 = metadata !{i32 688, i32 0, metadata !553, null}
!559 = metadata !{i32 689, i32 0, metadata !553, null}
!560 = metadata !{i32 690, i32 0, metadata !561, null}
!561 = metadata !{i32 786443, metadata !1, metadata !553, i32 689, i32 0, i32 128} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_IO.c]
!562 = metadata !{i32 694, i32 0, metadata !561, null}
!563 = metadata !{i32 704, i32 0, metadata !487, null}
!564 = metadata !{i32 709, i32 0, metadata !565, null}
!565 = metadata !{i32 786443, metadata !1, metadata !487, i32 709, i32 0, i32 130} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_IO.c]
!566 = metadata !{i32 719, i32 0, metadata !567, null}
!567 = metadata !{i32 786443, metadata !1, metadata !565, i32 709, i32 0, i32 131} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_IO.c]
!568 = metadata !{i32 705, i32 0, metadata !569, null}
!569 = metadata !{i32 786443, metadata !1, metadata !487, i32 704, i32 0, i32 129} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_IO.c]
!570 = metadata !{i32 707, i32 0, metadata !569, null}
!571 = metadata !{i32 710, i32 0, metadata !567, null}
!572 = metadata !{i32 711, i32 0, metadata !567, null}
!573 = metadata !{i32 712, i32 0, metadata !567, null}
!574 = metadata !{i32 713, i32 0, metadata !575, null}
!575 = metadata !{i32 786443, metadata !1, metadata !567, i32 712, i32 0, i32 132} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_IO.c]
!576 = metadata !{i32 717, i32 0, metadata !575, null}
!577 = metadata !{i32 726, i32 0, metadata !487, null}
!578 = metadata !{i32 731, i32 0, metadata !579, null}
!579 = metadata !{i32 786443, metadata !1, metadata !487, i32 731, i32 0, i32 134} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_IO.c]
!580 = metadata !{i32 741, i32 0, metadata !581, null}
!581 = metadata !{i32 786443, metadata !1, metadata !579, i32 731, i32 0, i32 135} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_IO.c]
!582 = metadata !{i32 727, i32 0, metadata !583, null}
!583 = metadata !{i32 786443, metadata !1, metadata !487, i32 726, i32 0, i32 133} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_IO.c]
!584 = metadata !{i32 729, i32 0, metadata !583, null}
!585 = metadata !{i32 732, i32 0, metadata !581, null}
!586 = metadata !{i32 733, i32 0, metadata !581, null}
!587 = metadata !{i32 734, i32 0, metadata !581, null}
!588 = metadata !{i32 735, i32 0, metadata !589, null}
!589 = metadata !{i32 786443, metadata !1, metadata !581, i32 734, i32 0, i32 136} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_IO.c]
!590 = metadata !{i32 739, i32 0, metadata !589, null}
!591 = metadata !{i32 743, i32 0, metadata !487, null}
!592 = metadata !{i32 748, i32 0, metadata !593, null}
!593 = metadata !{i32 786443, metadata !1, metadata !487, i32 748, i32 0, i32 138} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_IO.c]
!594 = metadata !{i32 758, i32 0, metadata !595, null}
!595 = metadata !{i32 786443, metadata !1, metadata !593, i32 748, i32 0, i32 139} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_IO.c]
!596 = metadata !{i32 744, i32 0, metadata !597, null}
!597 = metadata !{i32 786443, metadata !1, metadata !487, i32 743, i32 0, i32 137} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_IO.c]
!598 = metadata !{i32 746, i32 0, metadata !597, null}
!599 = metadata !{i32 749, i32 0, metadata !595, null}
!600 = metadata !{i32 750, i32 0, metadata !595, null}
!601 = metadata !{i32 751, i32 0, metadata !595, null}
!602 = metadata !{i32 752, i32 0, metadata !603, null}
!603 = metadata !{i32 786443, metadata !1, metadata !595, i32 751, i32 0, i32 140} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_IO.c]
!604 = metadata !{i32 756, i32 0, metadata !603, null}
!605 = metadata !{i32 766, i32 0, metadata !606, null}
!606 = metadata !{i32 786443, metadata !1, metadata !264, i32 760, i32 0, i32 141} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_IO.c]
!607 = metadata !{i32 767, i32 0, metadata !608, null}
!608 = metadata !{i32 786443, metadata !1, metadata !606, i32 766, i32 0, i32 142} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_IO.c]
!609 = metadata !{i32 768, i32 0, metadata !608, null}
!610 = metadata !{i32 769, i32 0, metadata !608, null}
!611 = metadata !{i32 770, i32 0, metadata !608, null}
!612 = metadata !{i32 771, i32 0, metadata !613, null}
!613 = metadata !{i32 786443, metadata !1, metadata !608, i32 770, i32 0, i32 143} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_IO.c]
!614 = metadata !{i32 775, i32 0, metadata !613, null}
!615 = metadata !{i32 783, i32 0, metadata !606, null}
!616 = metadata !{i32 784, i32 0, metadata !606, null}
!617 = metadata !{i32 785, i32 0, metadata !606, null}
!618 = metadata !{i32 786, i32 0, metadata !606, null}
!619 = metadata !{i32 787, i32 0, metadata !620, null}
!620 = metadata !{i32 786443, metadata !1, metadata !606, i32 786, i32 0, i32 144} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_IO.c]
!621 = metadata !{i32 791, i32 0, metadata !620, null}
!622 = metadata !{i32 798, i32 0, metadata !606, null}
!623 = metadata !{i32 804, i32 0, metadata !624, null}
!624 = metadata !{i32 786443, metadata !1, metadata !606, i32 798, i32 0, i32 145} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_IO.c]
!625 = metadata !{i32 805, i32 0, metadata !624, null}
!626 = metadata !{i32 806, i32 0, metadata !627, null}
!627 = metadata !{i32 786443, metadata !1, metadata !624, i32 805, i32 0, i32 146} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_IO.c]
!628 = metadata !{i32 809, i32 0, metadata !627, null}
!629 = metadata !{i32 815, i32 0, metadata !624, null}
!630 = metadata !{i32 816, i32 0, metadata !631, null}
!631 = metadata !{i32 786443, metadata !1, metadata !624, i32 816, i32 0, i32 147} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_IO.c]
!632 = metadata !{i32 817, i32 0, metadata !633, null}
!633 = metadata !{i32 786443, metadata !1, metadata !631, i32 816, i32 0, i32 148} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_IO.c]
!634 = metadata !{i32 818, i32 0, metadata !633, null}
!635 = metadata !{i32 819, i32 0, metadata !633, null}
!636 = metadata !{i32 820, i32 0, metadata !637, null}
!637 = metadata !{i32 786443, metadata !1, metadata !633, i32 819, i32 0, i32 149} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_IO.c]
!638 = metadata !{i32 824, i32 0, metadata !637, null}
!639 = metadata !{i32 826, i32 0, metadata !633, null}
!640 = metadata !{i32 840, i32 0, metadata !606, null}
!641 = metadata !{i32 840, i32 0, metadata !642, null}
!642 = metadata !{i32 786443, metadata !1, metadata !606, i32 840, i32 0, i32 150} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_IO.c]
!643 = metadata !{i32 840, i32 0, metadata !644, null}
!644 = metadata !{i32 786443, metadata !1, metadata !642, i32 840, i32 0, i32 151} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_IO.c]
!645 = metadata !{i32 840, i32 0, metadata !646, null}
!646 = metadata !{i32 786443, metadata !1, metadata !606, i32 840, i32 0, i32 152} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_IO.c]
!647 = metadata !{i32 842, i32 0, metadata !648, null}
!648 = metadata !{i32 786443, metadata !1, metadata !649, i32 841, i32 0, i32 155} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_IO.c]
!649 = metadata !{i32 786443, metadata !1, metadata !606, i32 841, i32 0, i32 154} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_IO.c]
!650 = metadata !{i32 841, i32 0, metadata !649, null}
!651 = metadata !{i32 840, i32 0, metadata !652, null}
!652 = metadata !{i32 786443, metadata !1, metadata !606, i32 840, i32 0, i32 153} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_IO.c]
!653 = metadata !{i32 844, i32 0, metadata !606, null}
!654 = metadata !{i32 853, i32 0, metadata !655, null}
!655 = metadata !{i32 786443, metadata !1, metadata !606, i32 853, i32 0, i32 157} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_IO.c]
!656 = metadata !{i32 863, i32 0, metadata !657, null}
!657 = metadata !{i32 786443, metadata !1, metadata !655, i32 853, i32 0, i32 158} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_IO.c]
!658 = metadata !{i32 845, i32 0, metadata !659, null}
!659 = metadata !{i32 786443, metadata !1, metadata !606, i32 844, i32 0, i32 156} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_IO.c]
!660 = metadata !{i32 847, i32 0, metadata !659, null}
!661 = metadata !{i32 854, i32 0, metadata !657, null}
!662 = metadata !{i32 855, i32 0, metadata !657, null}
!663 = metadata !{i32 856, i32 0, metadata !657, null}
!664 = metadata !{i32 857, i32 0, metadata !665, null}
!665 = metadata !{i32 786443, metadata !1, metadata !657, i32 856, i32 0, i32 159} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_IO.c]
!666 = metadata !{i32 861, i32 0, metadata !665, null}
!667 = metadata !{i32 875, i32 0, metadata !606, null}
!668 = metadata !{i32 876, i32 0, metadata !606, null}
!669 = metadata !{i32 877, i32 0, metadata !670, null}
!670 = metadata !{i32 786443, metadata !1, metadata !606, i32 876, i32 0, i32 160} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_IO.c]
!671 = metadata !{i32 879, i32 0, metadata !670, null}
!672 = metadata !{i32 885, i32 0, metadata !606, null}
!673 = metadata !{i32 886, i32 0, metadata !674, null}
!674 = metadata !{i32 786443, metadata !1, metadata !606, i32 886, i32 0, i32 161} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_IO.c]
!675 = metadata !{i32 887, i32 0, metadata !676, null}
!676 = metadata !{i32 786443, metadata !1, metadata !674, i32 886, i32 0, i32 162} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_IO.c]
!677 = metadata !{i32 888, i32 0, metadata !676, null}
!678 = metadata !{i32 889, i32 0, metadata !676, null}
!679 = metadata !{i32 890, i32 0, metadata !680, null}
!680 = metadata !{i32 786443, metadata !1, metadata !676, i32 889, i32 0, i32 163} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_IO.c]
!681 = metadata !{i32 894, i32 0, metadata !680, null}
!682 = metadata !{i32 896, i32 0, metadata !676, null}
!683 = metadata !{i32 909, i32 0, metadata !264, null}
!684 = metadata !{i32 105, i32 0, metadata !246, null}
!685 = metadata !{i32 106, i32 0, metadata !246, null}
!686 = metadata !{i32 109, i32 0, metadata !246, null}
!687 = metadata !{i32 110, i32 0, metadata !246, null}
!688 = metadata !{i32 116, i32 0, metadata !246, null}
!689 = metadata !{i32 117, i32 0, metadata !690, null}
!690 = metadata !{i32 786443, metadata !1, metadata !246, i32 116, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_IO.c]
!691 = metadata !{i32 119, i32 0, metadata !690, null}
!692 = metadata !{i32 126, i32 0, metadata !246, null}
!693 = metadata !{i32 132, i32 0, metadata !246, null}
!694 = metadata !{i32 133, i32 0, metadata !695, null}
!695 = metadata !{i32 786443, metadata !1, metadata !246, i32 132, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_IO.c]
!696 = metadata !{i32 135, i32 0, metadata !695, null}
!697 = metadata !{i32 137, i32 0, metadata !246, null}
!698 = metadata !{i32 138, i32 0, metadata !246, null}
!699 = metadata !{i32 139, i32 0, metadata !246, null}
!700 = metadata !{i32 140, i32 0, metadata !246, null}
!701 = metadata !{i32 141, i32 0, metadata !246, null}
!702 = metadata !{i32 142, i32 0, metadata !246, null}
!703 = metadata !{i32 143, i32 0, metadata !246, null}
!704 = metadata !{i32 144, i32 0, metadata !246, null}
!705 = metadata !{i32 145, i32 0, metadata !246, null}
!706 = metadata !{i32 146, i32 0, metadata !246, null}
!707 = metadata !{i32 170, i32 0, metadata !246, null}
!708 = metadata !{i32 171, i32 0, metadata !246, null}
!709 = metadata !{i32 172, i32 0, metadata !246, null}
!710 = metadata !{i32 173, i32 0, metadata !711, null}
!711 = metadata !{i32 786443, metadata !1, metadata !246, i32 172, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_IO.c]
!712 = metadata !{i32 177, i32 0, metadata !711, null}
!713 = metadata !{i32 179, i32 0, metadata !246, null}
!714 = metadata !{i32 190, i32 0, metadata !246, null}
!715 = metadata !{i32 191, i32 0, metadata !246, null}
!716 = metadata !{i32 192, i32 0, metadata !246, null}
!717 = metadata !{i32 193, i32 0, metadata !246, null}
!718 = metadata !{i32 194, i32 0, metadata !719, null}
!719 = metadata !{i32 786443, metadata !1, metadata !246, i32 193, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_IO.c]
!720 = metadata !{i32 198, i32 0, metadata !719, null}
!721 = metadata !{i32 200, i32 0, metadata !246, null}
!722 = metadata !{i32 201, i32 0, metadata !246, null}
!723 = metadata !{i32 207, i32 0, metadata !724, null}
!724 = metadata !{i32 786443, metadata !1, metadata !246, i32 201, i32 0, i32 14} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_IO.c]
!725 = metadata !{i32 208, i32 0, metadata !724, null}
!726 = metadata !{i32 209, i32 0, metadata !727, null}
!727 = metadata !{i32 786443, metadata !1, metadata !724, i32 208, i32 0, i32 15} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_IO.c]
!728 = metadata !{i32 213, i32 0, metadata !727, null}
!729 = metadata !{i32 221, i32 0, metadata !730, null}
!730 = metadata !{i32 786443, metadata !1, metadata !246, i32 215, i32 0, i32 16} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_IO.c]
!731 = metadata !{i32 222, i32 0, metadata !730, null}
!732 = metadata !{i32 223, i32 0, metadata !730, null}
!733 = metadata !{i32 225, i32 0, metadata !246, null}
!734 = metadata !{i32 231, i32 0, metadata !735, null}
!735 = metadata !{i32 786443, metadata !1, metadata !246, i32 225, i32 0, i32 17} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_IO.c]
!736 = metadata !{i32 232, i32 0, metadata !737, null}
!737 = metadata !{i32 786443, metadata !1, metadata !735, i32 231, i32 0, i32 18} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_IO.c]
!738 = metadata !{i32 233, i32 0, metadata !737, null}
!739 = metadata !{i32 234, i32 0, metadata !737, null}
!740 = metadata !{i32 235, i32 0, metadata !737, null}
!741 = metadata !{i32 236, i32 0, metadata !742, null}
!742 = metadata !{i32 786443, metadata !1, metadata !737, i32 235, i32 0, i32 19} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_IO.c]
!743 = metadata !{i32 240, i32 0, metadata !742, null}
!744 = metadata !{i32 243, i32 0, metadata !735, null}
!745 = metadata !{i32 244, i32 0, metadata !735, null}
!746 = metadata !{i32 245, i32 0, metadata !735, null}
!747 = metadata !{i32 246, i32 0, metadata !735, null}
!748 = metadata !{i32 247, i32 0, metadata !749, null}
!749 = metadata !{i32 786443, metadata !1, metadata !735, i32 246, i32 0, i32 20} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_IO.c]
!750 = metadata !{i32 251, i32 0, metadata !749, null}
!751 = metadata !{i32 253, i32 0, metadata !735, null}
!752 = metadata !{i32 254, i32 0, metadata !735, null}
!753 = metadata !{i32 255, i32 0, metadata !735, null}
!754 = metadata !{i32 256, i32 0, metadata !246, null}
!755 = metadata !{i32 262, i32 0, metadata !756, null}
!756 = metadata !{i32 786443, metadata !1, metadata !246, i32 256, i32 0, i32 21} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_IO.c]
!757 = metadata !{i32 262, i32 0, metadata !758, null}
!758 = metadata !{i32 786443, metadata !1, metadata !756, i32 262, i32 0, i32 22} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_IO.c]
!759 = metadata !{i32 262, i32 0, metadata !760, null}
!760 = metadata !{i32 786443, metadata !1, metadata !758, i32 262, i32 0, i32 23} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_IO.c]
!761 = metadata !{i32 262, i32 0, metadata !762, null}
!762 = metadata !{i32 786443, metadata !1, metadata !756, i32 262, i32 0, i32 25} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_IO.c]
!763 = metadata !{i32 263, i32 0, metadata !764, null}
!764 = metadata !{i32 786443, metadata !1, metadata !756, i32 263, i32 0, i32 26} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_IO.c]
!765 = metadata !{i32 263, i32 0, metadata !766, null}
!766 = metadata !{i32 786443, metadata !1, metadata !764, i32 263, i32 0, i32 27} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_IO.c]
!767 = metadata !{i32 264, i32 0, metadata !768, null}
!768 = metadata !{i32 786443, metadata !1, metadata !756, i32 264, i32 0, i32 30} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_IO.c]
!769 = metadata !{i32 264, i32 0, metadata !770, null}
!770 = metadata !{i32 786443, metadata !1, metadata !768, i32 264, i32 0, i32 31} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_IO.c]
!771 = metadata !{i32 262, i32 0, metadata !772, null}
!772 = metadata !{i32 786443, metadata !1, metadata !756, i32 262, i32 0, i32 24} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_IO.c]
!773 = metadata !{i32 263, i32 0, metadata !774, null}
!774 = metadata !{i32 786443, metadata !1, metadata !756, i32 263, i32 0, i32 28} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_IO.c]
!775 = metadata !{i32 265, i32 0, metadata !776, null}
!776 = metadata !{i32 786443, metadata !1, metadata !756, i32 265, i32 0, i32 34} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_IO.c]
!777 = metadata !{i32 266, i32 0, metadata !778, null}
!778 = metadata !{i32 786443, metadata !1, metadata !776, i32 265, i32 0, i32 35} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_IO.c]
!779 = metadata !{i32 267, i32 0, metadata !778, null}
!780 = metadata !{i32 268, i32 0, metadata !778, null}
!781 = metadata !{i32 270, i32 0, metadata !756, null}
!782 = metadata !{i32 271, i32 0, metadata !783, null}
!783 = metadata !{i32 786443, metadata !1, metadata !756, i32 270, i32 0, i32 36} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_IO.c]
!784 = metadata !{i32 271, i32 0, metadata !785, null}
!785 = metadata !{i32 786443, metadata !1, metadata !783, i32 271, i32 0, i32 37} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_IO.c]
!786 = metadata !{i32 271, i32 0, metadata !787, null}
!787 = metadata !{i32 786443, metadata !1, metadata !785, i32 271, i32 0, i32 38} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_IO.c]
!788 = metadata !{i32 271, i32 0, metadata !789, null}
!789 = metadata !{i32 786443, metadata !1, metadata !783, i32 271, i32 0, i32 40} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_IO.c]
!790 = metadata !{i32 272, i32 0, metadata !791, null}
!791 = metadata !{i32 786443, metadata !1, metadata !783, i32 272, i32 0, i32 41} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_IO.c]
!792 = metadata !{i32 272, i32 0, metadata !793, null}
!793 = metadata !{i32 786443, metadata !1, metadata !791, i32 272, i32 0, i32 42} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_IO.c]
!794 = metadata !{i32 271, i32 0, metadata !795, null}
!795 = metadata !{i32 786443, metadata !1, metadata !783, i32 271, i32 0, i32 39} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_IO.c]
!796 = metadata !{i32 272, i32 0, metadata !797, null}
!797 = metadata !{i32 786443, metadata !1, metadata !783, i32 272, i32 0, i32 43} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_IO.c]
!798 = metadata !{i32 273, i32 0, metadata !799, null}
!799 = metadata !{i32 786443, metadata !1, metadata !783, i32 273, i32 0, i32 45} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_IO.c]
!800 = metadata !{i32 274, i32 0, metadata !801, null}
!801 = metadata !{i32 786443, metadata !1, metadata !799, i32 273, i32 0, i32 46} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_IO.c]
!802 = metadata !{i32 275, i32 0, metadata !801, null}
!803 = metadata !{i32 284, i32 0, metadata !804, null}
!804 = metadata !{i32 786443, metadata !1, metadata !756, i32 278, i32 0, i32 47} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_IO.c]
!805 = metadata !{i32 285, i32 0, metadata !806, null}
!806 = metadata !{i32 786443, metadata !1, metadata !804, i32 285, i32 0, i32 48} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_IO.c]
!807 = metadata !{i32 295, i32 0, metadata !808, null}
!808 = metadata !{i32 786443, metadata !1, metadata !806, i32 285, i32 0, i32 49} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_IO.c]
!809 = metadata !{i32 286, i32 0, metadata !808, null}
!810 = metadata !{i32 287, i32 0, metadata !808, null}
!811 = metadata !{i32 288, i32 0, metadata !808, null}
!812 = metadata !{i32 289, i32 0, metadata !813, null}
!813 = metadata !{i32 786443, metadata !1, metadata !808, i32 288, i32 0, i32 50} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_IO.c]
!814 = metadata !{i32 293, i32 0, metadata !813, null}
!815 = metadata !{i32 297, i32 0, metadata !804, null}
!816 = metadata !{i32 298, i32 0, metadata !817, null}
!817 = metadata !{i32 786443, metadata !1, metadata !804, i32 298, i32 0, i32 51} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_IO.c]
!818 = metadata !{i32 308, i32 0, metadata !819, null}
!819 = metadata !{i32 786443, metadata !1, metadata !817, i32 298, i32 0, i32 52} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_IO.c]
!820 = metadata !{i32 299, i32 0, metadata !819, null}
!821 = metadata !{i32 300, i32 0, metadata !819, null}
!822 = metadata !{i32 301, i32 0, metadata !819, null}
!823 = metadata !{i32 302, i32 0, metadata !824, null}
!824 = metadata !{i32 786443, metadata !1, metadata !819, i32 301, i32 0, i32 53} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_IO.c]
!825 = metadata !{i32 306, i32 0, metadata !824, null}
!826 = metadata !{i32 316, i32 0, metadata !756, null}
!827 = metadata !{i32 317, i32 0, metadata !828, null}
!828 = metadata !{i32 786443, metadata !1, metadata !756, i32 317, i32 0, i32 54} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_IO.c]
!829 = metadata !{i32 327, i32 0, metadata !830, null}
!830 = metadata !{i32 786443, metadata !1, metadata !828, i32 317, i32 0, i32 55} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_IO.c]
!831 = metadata !{i32 318, i32 0, metadata !830, null}
!832 = metadata !{i32 319, i32 0, metadata !830, null}
!833 = metadata !{i32 320, i32 0, metadata !830, null}
!834 = metadata !{i32 321, i32 0, metadata !835, null}
!835 = metadata !{i32 786443, metadata !1, metadata !830, i32 320, i32 0, i32 56} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_IO.c]
!836 = metadata !{i32 325, i32 0, metadata !835, null}
!837 = metadata !{i32 334, i32 0, metadata !756, null}
!838 = metadata !{i32 335, i32 0, metadata !839, null}
!839 = metadata !{i32 786443, metadata !1, metadata !756, i32 335, i32 0, i32 57} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_IO.c]
!840 = metadata !{i32 345, i32 0, metadata !841, null}
!841 = metadata !{i32 786443, metadata !1, metadata !839, i32 335, i32 0, i32 58} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_IO.c]
!842 = metadata !{i32 336, i32 0, metadata !841, null}
!843 = metadata !{i32 337, i32 0, metadata !841, null}
!844 = metadata !{i32 338, i32 0, metadata !841, null}
!845 = metadata !{i32 339, i32 0, metadata !846, null}
!846 = metadata !{i32 786443, metadata !1, metadata !841, i32 338, i32 0, i32 59} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_IO.c]
!847 = metadata !{i32 343, i32 0, metadata !846, null}
!848 = metadata !{i32 347, i32 0, metadata !756, null}
!849 = metadata !{i32 348, i32 0, metadata !850, null}
!850 = metadata !{i32 786443, metadata !1, metadata !756, i32 348, i32 0, i32 60} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_IO.c]
!851 = metadata !{i32 358, i32 0, metadata !852, null}
!852 = metadata !{i32 786443, metadata !1, metadata !850, i32 348, i32 0, i32 61} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_IO.c]
!853 = metadata !{i32 349, i32 0, metadata !852, null}
!854 = metadata !{i32 350, i32 0, metadata !852, null}
!855 = metadata !{i32 351, i32 0, metadata !852, null}
!856 = metadata !{i32 352, i32 0, metadata !857, null}
!857 = metadata !{i32 786443, metadata !1, metadata !852, i32 351, i32 0, i32 62} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_IO.c]
!858 = metadata !{i32 356, i32 0, metadata !857, null}
!859 = metadata !{i32 366, i32 0, metadata !860, null}
!860 = metadata !{i32 786443, metadata !1, metadata !246, i32 360, i32 0, i32 63} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_IO.c]
!861 = metadata !{i32 367, i32 0, metadata !862, null}
!862 = metadata !{i32 786443, metadata !1, metadata !860, i32 366, i32 0, i32 64} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_IO.c]
!863 = metadata !{i32 368, i32 0, metadata !862, null}
!864 = metadata !{i32 369, i32 0, metadata !862, null}
!865 = metadata !{i32 370, i32 0, metadata !862, null}
!866 = metadata !{i32 371, i32 0, metadata !867, null}
!867 = metadata !{i32 786443, metadata !1, metadata !862, i32 370, i32 0, i32 65} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_IO.c]
!868 = metadata !{i32 375, i32 0, metadata !867, null}
!869 = metadata !{i32 378, i32 0, metadata !860, null}
!870 = metadata !{i32 379, i32 0, metadata !860, null}
!871 = metadata !{i32 380, i32 0, metadata !860, null}
!872 = metadata !{i32 381, i32 0, metadata !860, null}
!873 = metadata !{i32 382, i32 0, metadata !874, null}
!874 = metadata !{i32 786443, metadata !1, metadata !860, i32 381, i32 0, i32 66} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_IO.c]
!875 = metadata !{i32 386, i32 0, metadata !874, null}
!876 = metadata !{i32 388, i32 0, metadata !860, null}
!877 = metadata !{i32 394, i32 0, metadata !878, null}
!878 = metadata !{i32 786443, metadata !1, metadata !860, i32 388, i32 0, i32 67} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_IO.c]
!879 = metadata !{i32 395, i32 0, metadata !878, null}
!880 = metadata !{i32 396, i32 0, metadata !878, null}
!881 = metadata !{i32 397, i32 0, metadata !882, null}
!882 = metadata !{i32 786443, metadata !1, metadata !878, i32 397, i32 0, i32 68} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_IO.c]
!883 = metadata !{i32 398, i32 0, metadata !884, null}
!884 = metadata !{i32 786443, metadata !1, metadata !882, i32 397, i32 0, i32 69} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_IO.c]
!885 = metadata !{i32 399, i32 0, metadata !884, null}
!886 = metadata !{i32 400, i32 0, metadata !884, null}
!887 = metadata !{i32 401, i32 0, metadata !888, null}
!888 = metadata !{i32 786443, metadata !1, metadata !884, i32 400, i32 0, i32 70} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_IO.c]
!889 = metadata !{i32 405, i32 0, metadata !888, null}
!890 = metadata !{i32 407, i32 0, metadata !884, null}
!891 = metadata !{i32 416, i32 0, metadata !860, null}
!892 = metadata !{i32 416, i32 0, metadata !893, null}
!893 = metadata !{i32 786443, metadata !1, metadata !860, i32 416, i32 0, i32 71} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_IO.c]
!894 = metadata !{i32 416, i32 0, metadata !895, null}
!895 = metadata !{i32 786443, metadata !1, metadata !893, i32 416, i32 0, i32 72} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_IO.c]
!896 = metadata !{i32 416, i32 0, metadata !897, null}
!897 = metadata !{i32 786443, metadata !1, metadata !860, i32 416, i32 0, i32 73} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_IO.c]
!898 = metadata !{i32 418, i32 0, metadata !899, null}
!899 = metadata !{i32 786443, metadata !1, metadata !900, i32 417, i32 0, i32 76} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_IO.c]
!900 = metadata !{i32 786443, metadata !1, metadata !860, i32 417, i32 0, i32 75} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_IO.c]
!901 = metadata !{i32 417, i32 0, metadata !900, null}
!902 = metadata !{i32 416, i32 0, metadata !903, null}
!903 = metadata !{i32 786443, metadata !1, metadata !860, i32 416, i32 0, i32 74} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_IO.c]
!904 = metadata !{i32 420, i32 0, metadata !860, null}
!905 = metadata !{i32 421, i32 0, metadata !906, null}
!906 = metadata !{i32 786443, metadata !1, metadata !860, i32 421, i32 0, i32 77} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_IO.c]
!907 = metadata !{i32 431, i32 0, metadata !908, null}
!908 = metadata !{i32 786443, metadata !1, metadata !906, i32 421, i32 0, i32 78} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_IO.c]
!909 = metadata !{i32 422, i32 0, metadata !908, null}
!910 = metadata !{i32 423, i32 0, metadata !908, null}
!911 = metadata !{i32 424, i32 0, metadata !908, null}
!912 = metadata !{i32 425, i32 0, metadata !913, null}
!913 = metadata !{i32 786443, metadata !1, metadata !908, i32 424, i32 0, i32 79} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_IO.c]
!914 = metadata !{i32 429, i32 0, metadata !913, null}
!915 = metadata !{i32 438, i32 0, metadata !860, null}
!916 = metadata !{i32 439, i32 0, metadata !860, null}
!917 = metadata !{i32 440, i32 0, metadata !860, null}
!918 = metadata !{i32 441, i32 0, metadata !919, null}
!919 = metadata !{i32 786443, metadata !1, metadata !860, i32 441, i32 0, i32 80} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_IO.c]
!920 = metadata !{i32 442, i32 0, metadata !921, null}
!921 = metadata !{i32 786443, metadata !1, metadata !919, i32 441, i32 0, i32 81} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_IO.c]
!922 = metadata !{i32 443, i32 0, metadata !921, null}
!923 = metadata !{i32 444, i32 0, metadata !921, null}
!924 = metadata !{i32 445, i32 0, metadata !925, null}
!925 = metadata !{i32 786443, metadata !1, metadata !921, i32 444, i32 0, i32 82} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_IO.c]
!926 = metadata !{i32 449, i32 0, metadata !925, null}
!927 = metadata !{i32 451, i32 0, metadata !921, null}
!928 = metadata !{i32 455, i32 0, metadata !246, null}
!929 = metadata !{i32 930, i32 0, metadata !277, null}
!930 = metadata !{i32 931, i32 0, metadata !277, null}
!931 = metadata !{i32 940, i32 0, metadata !277, null}
!932 = metadata !{i32 941, i32 0, metadata !933, null}
!933 = metadata !{i32 786443, metadata !1, metadata !277, i32 940, i32 0, i32 164} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_IO.c]
!934 = metadata !{i32 943, i32 0, metadata !933, null}
!935 = metadata !{i32 949, i32 0, metadata !277, null}
!936 = metadata !{i32 950, i32 0, metadata !277, null}
!937 = metadata !{i32 951, i32 0, metadata !277, null}
!938 = metadata !{i32 952, i32 0, metadata !939, null}
!939 = metadata !{i32 786443, metadata !1, metadata !277, i32 951, i32 0, i32 165} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_IO.c]
!940 = metadata !{i32 953, i32 0, metadata !941, null}
!941 = metadata !{i32 786443, metadata !1, metadata !939, i32 952, i32 0, i32 166} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_IO.c]
!942 = metadata !{i32 954, i32 0, metadata !943, null}
!943 = metadata !{i32 786443, metadata !1, metadata !941, i32 953, i32 0, i32 167} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_IO.c]
!944 = metadata !{i32 956, i32 0, metadata !943, null}
!945 = metadata !{i32 957, i32 0, metadata !943, null}
!946 = metadata !{i32 958, i32 0, metadata !947, null}
!947 = metadata !{i32 786443, metadata !1, metadata !941, i32 957, i32 0, i32 168} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_IO.c]
!948 = metadata !{i32 959, i32 0, metadata !947, null}
!949 = metadata !{i32 961, i32 0, metadata !939, null}
!950 = metadata !{i32 962, i32 0, metadata !951, null}
!951 = metadata !{i32 786443, metadata !1, metadata !939, i32 961, i32 0, i32 169} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_IO.c]
!952 = metadata !{i32 963, i32 0, metadata !953, null}
!953 = metadata !{i32 786443, metadata !1, metadata !951, i32 962, i32 0, i32 170} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_IO.c]
!954 = metadata !{i32 965, i32 0, metadata !953, null}
!955 = metadata !{i32 966, i32 0, metadata !953, null}
!956 = metadata !{i32 967, i32 0, metadata !957, null}
!957 = metadata !{i32 786443, metadata !1, metadata !951, i32 966, i32 0, i32 171} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_IO.c]
!958 = metadata !{i32 968, i32 0, metadata !957, null}
!959 = metadata !{i32 971, i32 0, metadata !960, null}
!960 = metadata !{i32 786443, metadata !1, metadata !939, i32 970, i32 0, i32 172} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_IO.c]
!961 = metadata !{i32 972, i32 0, metadata !962, null}
!962 = metadata !{i32 786443, metadata !1, metadata !960, i32 971, i32 0, i32 173} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_IO.c]
!963 = metadata !{i32 974, i32 0, metadata !962, null}
!964 = metadata !{i32 975, i32 0, metadata !962, null}
!965 = metadata !{i32 976, i32 0, metadata !966, null}
!966 = metadata !{i32 786443, metadata !1, metadata !960, i32 975, i32 0, i32 174} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_IO.c]
!967 = metadata !{i32 1}
!968 = metadata !{i32 977, i32 0, metadata !966, null}
!969 = metadata !{i32 981, i32 0, metadata !970, null}
!970 = metadata !{i32 786443, metadata !1, metadata !277, i32 980, i32 0, i32 175} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_IO.c]
!971 = metadata !{i32 982, i32 0, metadata !972, null}
!972 = metadata !{i32 786443, metadata !1, metadata !970, i32 981, i32 0, i32 176} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_IO.c]
!973 = metadata !{i32 984, i32 0, metadata !972, null}
!974 = metadata !{i32 985, i32 0, metadata !972, null}
!975 = metadata !{i32 986, i32 0, metadata !976, null}
!976 = metadata !{i32 786443, metadata !1, metadata !970, i32 985, i32 0, i32 177} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_IO.c]
!977 = metadata !{i32 987, i32 0, metadata !976, null}
!978 = metadata !{i32 990, i32 0, metadata !277, null}
!979 = metadata !{i32 1298, i32 0, metadata !298, null}
!980 = metadata !{i32 1299, i32 0, metadata !298, null}
!981 = metadata !{i32 1302, i32 0, metadata !298, null}
!982 = metadata !{i32 1303, i32 0, metadata !298, null}
!983 = metadata !{i32 1304, i32 0, metadata !298, null}
!984 = metadata !{i32 1310, i32 0, metadata !298, null}
!985 = metadata !{i32 1311, i32 0, metadata !986, null}
!986 = metadata !{i32 786443, metadata !1, metadata !298, i32 1310, i32 0, i32 251} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_IO.c]
!987 = metadata !{i32 1314, i32 0, metadata !986, null}
!988 = metadata !{i32 1321, i32 0, metadata !298, null}
!989 = metadata !{i32 1322, i32 0, metadata !298, null}
!990 = metadata !{i32 1323, i32 0, metadata !298, null}
!991 = metadata !{i32 1324, i32 0, metadata !298, null}
!992 = metadata !{i32 1325, i32 0, metadata !298, null}
!993 = metadata !{i32 1326, i32 0, metadata !298, null}
!994 = metadata !{i32 1327, i32 0, metadata !298, null}
!995 = metadata !{i32 1328, i32 0, metadata !298, null}
!996 = metadata !{i32 1329, i32 0, metadata !298, null}
!997 = metadata !{i32 1330, i32 0, metadata !298, null}
!998 = metadata !{i32 1331, i32 0, metadata !298, null}
!999 = metadata !{i32 1332, i32 0, metadata !298, null}
!1000 = metadata !{i32 1333, i32 0, metadata !1001, null}
!1001 = metadata !{i32 786443, metadata !1, metadata !298, i32 1332, i32 0, i32 252} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_IO.c]
!1002 = metadata !{i32 1337, i32 0, metadata !1001, null}
!1003 = metadata !{i32 1344, i32 0, metadata !298, null}
!1004 = metadata !{i32 1345, i32 0, metadata !298, null}
!1005 = metadata !{i32 1346, i32 0, metadata !1006, null}
!1006 = metadata !{i32 786443, metadata !1, metadata !298, i32 1345, i32 0, i32 253} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_IO.c]
!1007 = metadata !{i32 1350, i32 0, metadata !1006, null}
!1008 = metadata !{i32 1357, i32 0, metadata !298, null}
!1009 = metadata !{i32 1358, i32 0, metadata !298, null}
!1010 = metadata !{i32 1359, i32 0, metadata !1011, null}
!1011 = metadata !{i32 786443, metadata !1, metadata !298, i32 1358, i32 0, i32 254} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_IO.c]
!1012 = metadata !{i32 1363, i32 0, metadata !1011, null}
!1013 = metadata !{i32 1365, i32 0, metadata !298, null}
!1014 = metadata !{i32 1371, i32 0, metadata !1015, null}
!1015 = metadata !{i32 786443, metadata !1, metadata !298, i32 1365, i32 0, i32 255} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_IO.c]
!1016 = metadata !{i32 1372, i32 0, metadata !1015, null}
!1017 = metadata !{i32 1373, i32 0, metadata !1018, null}
!1018 = metadata !{i32 786443, metadata !1, metadata !1015, i32 1372, i32 0, i32 256} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_IO.c]
!1019 = metadata !{i32 1377, i32 0, metadata !1018, null}
!1020 = metadata !{i32 1380, i32 0, metadata !298, null}
!1021 = metadata !{i32 1386, i32 0, metadata !1022, null}
!1022 = metadata !{i32 786443, metadata !1, metadata !298, i32 1380, i32 0, i32 257} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_IO.c]
!1023 = metadata !{i32 1387, i32 0, metadata !1024, null}
!1024 = metadata !{i32 786443, metadata !1, metadata !1022, i32 1386, i32 0, i32 258} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_IO.c]
!1025 = metadata !{i32 1388, i32 0, metadata !1024, null}
!1026 = metadata !{i32 1389, i32 0, metadata !1027, null}
!1027 = metadata !{i32 786443, metadata !1, metadata !1024, i32 1388, i32 0, i32 259} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_IO.c]
!1028 = metadata !{i32 1393, i32 0, metadata !1027, null}
!1029 = metadata !{i32 1396, i32 0, metadata !1022, null}
!1030 = metadata !{i32 1397, i32 0, metadata !1022, null}
!1031 = metadata !{i32 1398, i32 0, metadata !1032, null}
!1032 = metadata !{i32 786443, metadata !1, metadata !1022, i32 1397, i32 0, i32 260} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_IO.c]
!1033 = metadata !{i32 1402, i32 0, metadata !1032, null}
!1034 = metadata !{i32 1405, i32 0, metadata !298, null}
!1035 = metadata !{i32 1406, i32 0, metadata !1036, null}
!1036 = metadata !{i32 786443, metadata !1, metadata !298, i32 1405, i32 0, i32 261} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_IO.c]
!1037 = metadata !{i32 1413, i32 0, metadata !1038, null}
!1038 = metadata !{i32 786443, metadata !1, metadata !1039, i32 1413, i32 0, i32 263} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_IO.c]
!1039 = metadata !{i32 786443, metadata !1, metadata !1036, i32 1406, i32 0, i32 262} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_IO.c]
!1040 = metadata !{i32 1418, i32 0, metadata !1039, null}
!1041 = metadata !{i32 1419, i32 0, metadata !1042, null}
!1042 = metadata !{i32 786443, metadata !1, metadata !1039, i32 1419, i32 0, i32 266} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_IO.c]
!1043 = metadata !{i32 1414, i32 0, metadata !1044, null}
!1044 = metadata !{i32 786443, metadata !1, metadata !1038, i32 1413, i32 0, i32 264} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_IO.c]
!1045 = metadata !{i32 1415, i32 0, metadata !1046, null}
!1046 = metadata !{i32 786443, metadata !1, metadata !1044, i32 1414, i32 0, i32 265} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_IO.c]
!1047 = metadata !{i32 1416, i32 0, metadata !1046, null}
!1048 = metadata !{i32 1420, i32 0, metadata !1049, null}
!1049 = metadata !{i32 786443, metadata !1, metadata !1042, i32 1419, i32 0, i32 267} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_IO.c]
!1050 = metadata !{i32 1421, i32 0, metadata !1051, null}
!1051 = metadata !{i32 786443, metadata !1, metadata !1049, i32 1420, i32 0, i32 268} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_IO.c]
!1052 = metadata !{i32 1422, i32 0, metadata !1051, null}
!1053 = metadata !{i32 1430, i32 0, metadata !1054, null}
!1054 = metadata !{i32 786443, metadata !1, metadata !1039, i32 1430, i32 0, i32 269} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_IO.c]
!1055 = metadata !{i32 1435, i32 0, metadata !1039, null}
!1056 = metadata !{i32 1436, i32 0, metadata !1057, null}
!1057 = metadata !{i32 786443, metadata !1, metadata !1039, i32 1436, i32 0, i32 272} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_IO.c]
!1058 = metadata !{i32 1431, i32 0, metadata !1059, null}
!1059 = metadata !{i32 786443, metadata !1, metadata !1054, i32 1430, i32 0, i32 270} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_IO.c]
!1060 = metadata !{i32 1432, i32 0, metadata !1061, null}
!1061 = metadata !{i32 786443, metadata !1, metadata !1059, i32 1431, i32 0, i32 271} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_IO.c]
!1062 = metadata !{i32 1433, i32 0, metadata !1061, null}
!1063 = metadata !{i32 1437, i32 0, metadata !1064, null}
!1064 = metadata !{i32 786443, metadata !1, metadata !1057, i32 1436, i32 0, i32 273} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_IO.c]
!1065 = metadata !{i32 1438, i32 0, metadata !1066, null}
!1066 = metadata !{i32 786443, metadata !1, metadata !1064, i32 1437, i32 0, i32 274} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_IO.c]
!1067 = metadata !{i32 1439, i32 0, metadata !1066, null}
!1068 = metadata !{i32 1448, i32 0, metadata !1069, null}
!1069 = metadata !{i32 786443, metadata !1, metadata !1036, i32 1448, i32 0, i32 275} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_IO.c]
!1070 = metadata !{i32 1453, i32 0, metadata !1036, null}
!1071 = metadata !{i32 1454, i32 0, metadata !1072, null}
!1072 = metadata !{i32 786443, metadata !1, metadata !1036, i32 1454, i32 0, i32 278} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_IO.c]
!1073 = metadata !{i32 1449, i32 0, metadata !1074, null}
!1074 = metadata !{i32 786443, metadata !1, metadata !1069, i32 1448, i32 0, i32 276} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_IO.c]
!1075 = metadata !{i32 1450, i32 0, metadata !1076, null}
!1076 = metadata !{i32 786443, metadata !1, metadata !1074, i32 1449, i32 0, i32 277} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_IO.c]
!1077 = metadata !{i32 1451, i32 0, metadata !1076, null}
!1078 = metadata !{i32 1455, i32 0, metadata !1079, null}
!1079 = metadata !{i32 786443, metadata !1, metadata !1072, i32 1454, i32 0, i32 279} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_IO.c]
!1080 = metadata !{i32 1456, i32 0, metadata !1081, null}
!1081 = metadata !{i32 786443, metadata !1, metadata !1079, i32 1455, i32 0, i32 280} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_IO.c]
!1082 = metadata !{i32 1457, i32 0, metadata !1081, null}
!1083 = metadata !{i32 1465, i32 0, metadata !1084, null}
!1084 = metadata !{i32 786443, metadata !1, metadata !1036, i32 1465, i32 0, i32 281} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_IO.c]
!1085 = metadata !{i32 1470, i32 0, metadata !1036, null}
!1086 = metadata !{i32 1471, i32 0, metadata !1087, null}
!1087 = metadata !{i32 786443, metadata !1, metadata !1036, i32 1471, i32 0, i32 284} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_IO.c]
!1088 = metadata !{i32 1482, i32 0, metadata !1089, null}
!1089 = metadata !{i32 786443, metadata !1, metadata !1036, i32 1482, i32 0, i32 287} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_IO.c]
!1090 = metadata !{i32 1487, i32 0, metadata !1036, null}
!1091 = metadata !{i32 1488, i32 0, metadata !1092, null}
!1092 = metadata !{i32 786443, metadata !1, metadata !1036, i32 1488, i32 0, i32 290} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_IO.c]
!1093 = metadata !{i32 1466, i32 0, metadata !1094, null}
!1094 = metadata !{i32 786443, metadata !1, metadata !1084, i32 1465, i32 0, i32 282} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_IO.c]
!1095 = metadata !{i32 1467, i32 0, metadata !1096, null}
!1096 = metadata !{i32 786443, metadata !1, metadata !1094, i32 1466, i32 0, i32 283} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_IO.c]
!1097 = metadata !{i32 1468, i32 0, metadata !1096, null}
!1098 = metadata !{i32 1472, i32 0, metadata !1099, null}
!1099 = metadata !{i32 786443, metadata !1, metadata !1087, i32 1471, i32 0, i32 285} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_IO.c]
!1100 = metadata !{i32 1473, i32 0, metadata !1101, null}
!1101 = metadata !{i32 786443, metadata !1, metadata !1099, i32 1472, i32 0, i32 286} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_IO.c]
!1102 = metadata !{i32 1474, i32 0, metadata !1101, null}
!1103 = metadata !{i32 1483, i32 0, metadata !1104, null}
!1104 = metadata !{i32 786443, metadata !1, metadata !1089, i32 1482, i32 0, i32 288} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_IO.c]
!1105 = metadata !{i32 1484, i32 0, metadata !1106, null}
!1106 = metadata !{i32 786443, metadata !1, metadata !1104, i32 1483, i32 0, i32 289} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_IO.c]
!1107 = metadata !{i32 1485, i32 0, metadata !1106, null}
!1108 = metadata !{i32 1489, i32 0, metadata !1109, null}
!1109 = metadata !{i32 786443, metadata !1, metadata !1092, i32 1488, i32 0, i32 291} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_IO.c]
!1110 = metadata !{i32 1490, i32 0, metadata !1111, null}
!1111 = metadata !{i32 786443, metadata !1, metadata !1109, i32 1489, i32 0, i32 292} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_IO.c]
!1112 = metadata !{i32 1491, i32 0, metadata !1111, null}
!1113 = metadata !{i32 1499, i32 0, metadata !1114, null}
!1114 = metadata !{i32 786443, metadata !1, metadata !298, i32 1493, i32 0, i32 293} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_IO.c]
!1115 = metadata !{i32 1500, i32 0, metadata !1116, null}
!1116 = metadata !{i32 786443, metadata !1, metadata !1114, i32 1499, i32 0, i32 294} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_IO.c]
!1117 = metadata !{i32 1501, i32 0, metadata !1116, null}
!1118 = metadata !{i32 1502, i32 0, metadata !1119, null}
!1119 = metadata !{i32 786443, metadata !1, metadata !1116, i32 1501, i32 0, i32 295} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_IO.c]
!1120 = metadata !{i32 1506, i32 0, metadata !1119, null}
!1121 = metadata !{i32 1509, i32 0, metadata !1114, null}
!1122 = metadata !{i32 1510, i32 0, metadata !1114, null}
!1123 = metadata !{i32 1511, i32 0, metadata !1124, null}
!1124 = metadata !{i32 786443, metadata !1, metadata !1114, i32 1510, i32 0, i32 296} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_IO.c]
!1125 = metadata !{i32 1515, i32 0, metadata !1124, null}
!1126 = metadata !{i32 1517, i32 0, metadata !1114, null}
!1127 = metadata !{i32 1548, i32 0, metadata !1128, null}
!1128 = metadata !{i32 786443, metadata !1, metadata !1114, i32 1548, i32 0, i32 308} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_IO.c]
!1129 = metadata !{i32 1523, i32 0, metadata !1130, null}
!1130 = metadata !{i32 786443, metadata !1, metadata !1131, i32 1523, i32 0, i32 298} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_IO.c]
!1131 = metadata !{i32 786443, metadata !1, metadata !1114, i32 1517, i32 0, i32 297} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_IO.c]
!1132 = metadata !{i32 1524, i32 0, metadata !1133, null}
!1133 = metadata !{i32 786443, metadata !1, metadata !1130, i32 1523, i32 0, i32 299} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_IO.c]
!1134 = metadata !{i32 1525, i32 0, metadata !1135, null}
!1135 = metadata !{i32 786443, metadata !1, metadata !1133, i32 1525, i32 0, i32 300} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_IO.c]
!1136 = metadata !{i32 1526, i32 0, metadata !1137, null}
!1137 = metadata !{i32 786443, metadata !1, metadata !1135, i32 1525, i32 0, i32 301} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_IO.c]
!1138 = metadata !{i32 1527, i32 0, metadata !1137, null}
!1139 = metadata !{i32 1528, i32 0, metadata !1140, null}
!1140 = metadata !{i32 786443, metadata !1, metadata !1137, i32 1527, i32 0, i32 302} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_IO.c]
!1141 = metadata !{i32 1529, i32 0, metadata !1140, null}
!1142 = metadata !{i32 1532, i32 0, metadata !1131, null}
!1143 = metadata !{i32 1533, i32 0, metadata !1144, null}
!1144 = metadata !{i32 786443, metadata !1, metadata !1131, i32 1533, i32 0, i32 303} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_IO.c]
!1145 = metadata !{i32 1534, i32 0, metadata !1146, null}
!1146 = metadata !{i32 786443, metadata !1, metadata !1144, i32 1533, i32 0, i32 304} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_IO.c]
!1147 = metadata !{i32 1535, i32 0, metadata !1148, null}
!1148 = metadata !{i32 786443, metadata !1, metadata !1146, i32 1535, i32 0, i32 305} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_IO.c]
!1149 = metadata !{i32 1536, i32 0, metadata !1150, null}
!1150 = metadata !{i32 786443, metadata !1, metadata !1148, i32 1535, i32 0, i32 306} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_IO.c]
!1151 = metadata !{i32 1537, i32 0, metadata !1150, null}
!1152 = metadata !{i32 1538, i32 0, metadata !1153, null}
!1153 = metadata !{i32 786443, metadata !1, metadata !1150, i32 1537, i32 0, i32 307} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_IO.c]
!1154 = metadata !{i32 1539, i32 0, metadata !1153, null}
!1155 = metadata !{i32 1549, i32 0, metadata !1156, null}
!1156 = metadata !{i32 786443, metadata !1, metadata !1128, i32 1548, i32 0, i32 309} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_IO.c]
!1157 = metadata !{i32 1550, i32 0, metadata !1158, null}
!1158 = metadata !{i32 786443, metadata !1, metadata !1156, i32 1549, i32 0, i32 310} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_IO.c]
!1159 = metadata !{i32 1551, i32 0, metadata !1158, null}
!1160 = metadata !{i32 1553, i32 0, metadata !1114, null}
!1161 = metadata !{i32 1554, i32 0, metadata !1162, null}
!1162 = metadata !{i32 786443, metadata !1, metadata !1114, i32 1554, i32 0, i32 311} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_IO.c]
!1163 = metadata !{i32 1564, i32 0, metadata !1164, null}
!1164 = metadata !{i32 786443, metadata !1, metadata !1114, i32 1564, i32 0, i32 314} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_IO.c]
!1165 = metadata !{i32 1555, i32 0, metadata !1166, null}
!1166 = metadata !{i32 786443, metadata !1, metadata !1162, i32 1554, i32 0, i32 312} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_IO.c]
!1167 = metadata !{i32 1556, i32 0, metadata !1168, null}
!1168 = metadata !{i32 786443, metadata !1, metadata !1166, i32 1555, i32 0, i32 313} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_IO.c]
!1169 = metadata !{i32 1557, i32 0, metadata !1168, null}
!1170 = metadata !{i32 1565, i32 0, metadata !1171, null}
!1171 = metadata !{i32 786443, metadata !1, metadata !1164, i32 1564, i32 0, i32 315} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_IO.c]
!1172 = metadata !{i32 1566, i32 0, metadata !1173, null}
!1173 = metadata !{i32 786443, metadata !1, metadata !1171, i32 1566, i32 0, i32 316} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_IO.c]
!1174 = metadata !{i32 1567, i32 0, metadata !1175, null}
!1175 = metadata !{i32 786443, metadata !1, metadata !1173, i32 1566, i32 0, i32 317} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_IO.c]
!1176 = metadata !{i32 1568, i32 0, metadata !1175, null}
!1177 = metadata !{i32 1569, i32 0, metadata !1178, null}
!1178 = metadata !{i32 786443, metadata !1, metadata !1175, i32 1568, i32 0, i32 318} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_IO.c]
!1179 = metadata !{i32 1570, i32 0, metadata !1178, null}
!1180 = metadata !{i32 1573, i32 0, metadata !1114, null}
!1181 = metadata !{i32 1574, i32 0, metadata !1182, null}
!1182 = metadata !{i32 786443, metadata !1, metadata !1114, i32 1574, i32 0, i32 319} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_IO.c]
!1183 = metadata !{i32 1575, i32 0, metadata !1184, null}
!1184 = metadata !{i32 786443, metadata !1, metadata !1182, i32 1574, i32 0, i32 320} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_IO.c]
!1185 = metadata !{i32 1576, i32 0, metadata !1186, null}
!1186 = metadata !{i32 786443, metadata !1, metadata !1184, i32 1576, i32 0, i32 321} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_IO.c]
!1187 = metadata !{i32 1577, i32 0, metadata !1188, null}
!1188 = metadata !{i32 786443, metadata !1, metadata !1186, i32 1576, i32 0, i32 322} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_IO.c]
!1189 = metadata !{i32 1578, i32 0, metadata !1188, null}
!1190 = metadata !{i32 1579, i32 0, metadata !1191, null}
!1191 = metadata !{i32 786443, metadata !1, metadata !1188, i32 1578, i32 0, i32 323} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_IO.c]
!1192 = metadata !{i32 1580, i32 0, metadata !1191, null}
!1193 = metadata !{i32 1584, i32 0, metadata !298, null}
!1194 = metadata !{i32 1004, i32 0, metadata !285, null}
!1195 = metadata !{i32 1005, i32 0, metadata !285, null}
!1196 = metadata !{i32 1008, i32 0, metadata !285, null}
!1197 = metadata !{i32 1009, i32 0, metadata !285, null}
!1198 = metadata !{i32 1015, i32 0, metadata !285, null}
!1199 = metadata !{i32 1016, i32 0, metadata !1200, null}
!1200 = metadata !{i32 786443, metadata !1, metadata !285, i32 1015, i32 0, i32 178} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_IO.c]
!1201 = metadata !{i32 1019, i32 0, metadata !1200, null}
!1202 = metadata !{i32 1021, i32 0, metadata !285, null}
!1203 = metadata !{i32 1027, i32 0, metadata !285, null}
!1204 = metadata !{i32 1032, i32 0, metadata !285, null}
!1205 = metadata !{i32 1033, i32 0, metadata !1206, null}
!1206 = metadata !{i32 786443, metadata !1, metadata !285, i32 1032, i32 0, i32 179} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_IO.c]
!1207 = metadata !{i32 1037, i32 0, metadata !1206, null}
!1208 = metadata !{i32 1044, i32 0, metadata !285, null}
!1209 = metadata !{i32 1045, i32 0, metadata !285, null}
!1210 = metadata !{i32 1046, i32 0, metadata !1211, null}
!1211 = metadata !{i32 786443, metadata !1, metadata !285, i32 1045, i32 0, i32 180} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_IO.c]
!1212 = metadata !{i32 1050, i32 0, metadata !1211, null}
!1213 = metadata !{i32 1057, i32 0, metadata !285, null}
!1214 = metadata !{i32 1058, i32 0, metadata !285, null}
!1215 = metadata !{i32 1059, i32 0, metadata !1216, null}
!1216 = metadata !{i32 786443, metadata !1, metadata !285, i32 1058, i32 0, i32 181} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_IO.c]
!1217 = metadata !{i32 1063, i32 0, metadata !1216, null}
!1218 = metadata !{i32 1065, i32 0, metadata !285, null}
!1219 = metadata !{i32 1071, i32 0, metadata !1220, null}
!1220 = metadata !{i32 786443, metadata !1, metadata !285, i32 1065, i32 0, i32 182} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_IO.c]
!1221 = metadata !{i32 1072, i32 0, metadata !1220, null}
!1222 = metadata !{i32 1073, i32 0, metadata !1223, null}
!1223 = metadata !{i32 786443, metadata !1, metadata !1220, i32 1072, i32 0, i32 183} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_IO.c]
!1224 = metadata !{i32 1077, i32 0, metadata !1223, null}
!1225 = metadata !{i32 1080, i32 0, metadata !285, null}
!1226 = metadata !{i32 1086, i32 0, metadata !1227, null}
!1227 = metadata !{i32 786443, metadata !1, metadata !285, i32 1080, i32 0, i32 184} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_IO.c]
!1228 = metadata !{i32 1087, i32 0, metadata !1229, null}
!1229 = metadata !{i32 786443, metadata !1, metadata !1227, i32 1086, i32 0, i32 185} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_IO.c]
!1230 = metadata !{i32 1088, i32 0, metadata !1229, null}
!1231 = metadata !{i32 1089, i32 0, metadata !1232, null}
!1232 = metadata !{i32 786443, metadata !1, metadata !1229, i32 1088, i32 0, i32 186} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_IO.c]
!1233 = metadata !{i32 1093, i32 0, metadata !1232, null}
!1234 = metadata !{i32 1096, i32 0, metadata !1227, null}
!1235 = metadata !{i32 1097, i32 0, metadata !1227, null}
!1236 = metadata !{i32 1098, i32 0, metadata !1237, null}
!1237 = metadata !{i32 786443, metadata !1, metadata !1227, i32 1097, i32 0, i32 187} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_IO.c]
!1238 = metadata !{i32 1102, i32 0, metadata !1237, null}
!1239 = metadata !{i32 1105, i32 0, metadata !285, null}
!1240 = metadata !{i32 1106, i32 0, metadata !1241, null}
!1241 = metadata !{i32 786443, metadata !1, metadata !285, i32 1105, i32 0, i32 188} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_IO.c]
!1242 = metadata !{i32 1113, i32 0, metadata !1243, null}
!1243 = metadata !{i32 786443, metadata !1, metadata !1244, i32 1113, i32 0, i32 190} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_IO.c]
!1244 = metadata !{i32 786443, metadata !1, metadata !1241, i32 1106, i32 0, i32 189} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_IO.c]
!1245 = metadata !{i32 1118, i32 0, metadata !1244, null}
!1246 = metadata !{i32 1119, i32 0, metadata !1247, null}
!1247 = metadata !{i32 786443, metadata !1, metadata !1244, i32 1119, i32 0, i32 193} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_IO.c]
!1248 = metadata !{i32 1148, i32 0, metadata !1249, null}
!1249 = metadata !{i32 786443, metadata !1, metadata !1241, i32 1148, i32 0, i32 202} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_IO.c]
!1250 = metadata !{i32 1153, i32 0, metadata !1241, null}
!1251 = metadata !{i32 1154, i32 0, metadata !1252, null}
!1252 = metadata !{i32 786443, metadata !1, metadata !1241, i32 1154, i32 0, i32 205} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_IO.c]
!1253 = metadata !{i32 1114, i32 0, metadata !1254, null}
!1254 = metadata !{i32 786443, metadata !1, metadata !1243, i32 1113, i32 0, i32 191} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_IO.c]
!1255 = metadata !{i32 1130, i32 0, metadata !1256, null}
!1256 = metadata !{i32 786443, metadata !1, metadata !1244, i32 1130, i32 0, i32 196} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_IO.c]
!1257 = metadata !{i32 1135, i32 0, metadata !1244, null}
!1258 = metadata !{i32 1136, i32 0, metadata !1259, null}
!1259 = metadata !{i32 786443, metadata !1, metadata !1244, i32 1136, i32 0, i32 199} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_IO.c]
!1260 = metadata !{i32 1120, i32 0, metadata !1261, null}
!1261 = metadata !{i32 786443, metadata !1, metadata !1247, i32 1119, i32 0, i32 194} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_IO.c]
!1262 = metadata !{i32 1121, i32 0, metadata !1263, null}
!1263 = metadata !{i32 786443, metadata !1, metadata !1261, i32 1120, i32 0, i32 195} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_IO.c]
!1264 = metadata !{i32 1122, i32 0, metadata !1263, null}
!1265 = metadata !{i32 1131, i32 0, metadata !1266, null}
!1266 = metadata !{i32 786443, metadata !1, metadata !1256, i32 1130, i32 0, i32 197} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_IO.c]
!1267 = metadata !{i32 1170, i32 0, metadata !1241, null}
!1268 = metadata !{i32 1171, i32 0, metadata !1269, null}
!1269 = metadata !{i32 786443, metadata !1, metadata !1241, i32 1171, i32 0, i32 211} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_IO.c]
!1270 = metadata !{i32 1187, i32 0, metadata !1241, null}
!1271 = metadata !{i32 1188, i32 0, metadata !1272, null}
!1272 = metadata !{i32 786443, metadata !1, metadata !1241, i32 1188, i32 0, i32 217} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_IO.c]
!1273 = metadata !{i32 1137, i32 0, metadata !1274, null}
!1274 = metadata !{i32 786443, metadata !1, metadata !1259, i32 1136, i32 0, i32 200} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_IO.c]
!1275 = metadata !{i32 1138, i32 0, metadata !1276, null}
!1276 = metadata !{i32 786443, metadata !1, metadata !1274, i32 1137, i32 0, i32 201} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_IO.c]
!1277 = metadata !{i32 1139, i32 0, metadata !1276, null}
!1278 = metadata !{i32 1149, i32 0, metadata !1279, null}
!1279 = metadata !{i32 786443, metadata !1, metadata !1249, i32 1148, i32 0, i32 203} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_IO.c]
!1280 = metadata !{i32 1155, i32 0, metadata !1281, null}
!1281 = metadata !{i32 786443, metadata !1, metadata !1252, i32 1154, i32 0, i32 206} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_IO.c]
!1282 = metadata !{i32 1156, i32 0, metadata !1283, null}
!1283 = metadata !{i32 786443, metadata !1, metadata !1281, i32 1155, i32 0, i32 207} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_IO.c]
!1284 = metadata !{i32 1157, i32 0, metadata !1283, null}
!1285 = metadata !{i32 1166, i32 0, metadata !1286, null}
!1286 = metadata !{i32 786443, metadata !1, metadata !1287, i32 1165, i32 0, i32 209} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_IO.c]
!1287 = metadata !{i32 786443, metadata !1, metadata !1241, i32 1165, i32 0, i32 208} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_IO.c]
!1288 = metadata !{i32 1165, i32 0, metadata !1287, null}
!1289 = metadata !{i32 1172, i32 0, metadata !1290, null}
!1290 = metadata !{i32 786443, metadata !1, metadata !1269, i32 1171, i32 0, i32 212} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_IO.c]
!1291 = metadata !{i32 1173, i32 0, metadata !1292, null}
!1292 = metadata !{i32 786443, metadata !1, metadata !1290, i32 1172, i32 0, i32 213} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_IO.c]
!1293 = metadata !{i32 1174, i32 0, metadata !1292, null}
!1294 = metadata !{i32 1183, i32 0, metadata !1295, null}
!1295 = metadata !{i32 786443, metadata !1, metadata !1296, i32 1182, i32 0, i32 215} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_IO.c]
!1296 = metadata !{i32 786443, metadata !1, metadata !1241, i32 1182, i32 0, i32 214} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_IO.c]
!1297 = metadata !{i32 1182, i32 0, metadata !1296, null}
!1298 = metadata !{i32 1189, i32 0, metadata !1299, null}
!1299 = metadata !{i32 786443, metadata !1, metadata !1272, i32 1188, i32 0, i32 218} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_IO.c]
!1300 = metadata !{i32 1190, i32 0, metadata !1301, null}
!1301 = metadata !{i32 786443, metadata !1, metadata !1299, i32 1189, i32 0, i32 219} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_IO.c]
!1302 = metadata !{i32 1191, i32 0, metadata !1301, null}
!1303 = metadata !{i32 1199, i32 0, metadata !1304, null}
!1304 = metadata !{i32 786443, metadata !1, metadata !285, i32 1193, i32 0, i32 220} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_IO.c]
!1305 = metadata !{i32 1200, i32 0, metadata !1306, null}
!1306 = metadata !{i32 786443, metadata !1, metadata !1304, i32 1199, i32 0, i32 221} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_IO.c]
!1307 = metadata !{i32 1201, i32 0, metadata !1306, null}
!1308 = metadata !{i32 1202, i32 0, metadata !1309, null}
!1309 = metadata !{i32 786443, metadata !1, metadata !1306, i32 1201, i32 0, i32 222} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_IO.c]
!1310 = metadata !{i32 1206, i32 0, metadata !1309, null}
!1311 = metadata !{i32 1209, i32 0, metadata !1304, null}
!1312 = metadata !{i32 1210, i32 0, metadata !1304, null}
!1313 = metadata !{i32 1211, i32 0, metadata !1314, null}
!1314 = metadata !{i32 786443, metadata !1, metadata !1304, i32 1210, i32 0, i32 223} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_IO.c]
!1315 = metadata !{i32 1215, i32 0, metadata !1314, null}
!1316 = metadata !{i32 1217, i32 0, metadata !1304, null}
!1317 = metadata !{i32 1223, i32 0, metadata !1318, null}
!1318 = metadata !{i32 786443, metadata !1, metadata !1319, i32 1223, i32 0, i32 225} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_IO.c]
!1319 = metadata !{i32 786443, metadata !1, metadata !1304, i32 1217, i32 0, i32 224} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_IO.c]
!1320 = metadata !{i32 1224, i32 0, metadata !1321, null}
!1321 = metadata !{i32 786443, metadata !1, metadata !1318, i32 1223, i32 0, i32 226} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_IO.c]
!1322 = metadata !{i32 1248, i32 0, metadata !1323, null}
!1323 = metadata !{i32 786443, metadata !1, metadata !1304, i32 1248, i32 0, i32 235} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_IO.c]
!1324 = metadata !{i32 1225, i32 0, metadata !1325, null}
!1325 = metadata !{i32 786443, metadata !1, metadata !1321, i32 1225, i32 0, i32 227} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_IO.c]
!1326 = metadata !{i32 1226, i32 0, metadata !1327, null}
!1327 = metadata !{i32 786443, metadata !1, metadata !1325, i32 1225, i32 0, i32 228} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_IO.c]
!1328 = metadata !{i32 1227, i32 0, metadata !1327, null}
!1329 = metadata !{i32 1232, i32 0, metadata !1319, null}
!1330 = metadata !{i32 1233, i32 0, metadata !1331, null}
!1331 = metadata !{i32 786443, metadata !1, metadata !1319, i32 1233, i32 0, i32 230} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_IO.c]
!1332 = metadata !{i32 1234, i32 0, metadata !1333, null}
!1333 = metadata !{i32 786443, metadata !1, metadata !1331, i32 1233, i32 0, i32 231} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_IO.c]
!1334 = metadata !{i32 1235, i32 0, metadata !1335, null}
!1335 = metadata !{i32 786443, metadata !1, metadata !1333, i32 1235, i32 0, i32 232} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_IO.c]
!1336 = metadata !{i32 1236, i32 0, metadata !1337, null}
!1337 = metadata !{i32 786443, metadata !1, metadata !1335, i32 1235, i32 0, i32 233} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_IO.c]
!1338 = metadata !{i32 1237, i32 0, metadata !1337, null}
!1339 = metadata !{i32 1238, i32 0, metadata !1340, null}
!1340 = metadata !{i32 786443, metadata !1, metadata !1337, i32 1237, i32 0, i32 234} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_IO.c]
!1341 = metadata !{i32 1239, i32 0, metadata !1340, null}
!1342 = metadata !{i32 1249, i32 0, metadata !1343, null}
!1343 = metadata !{i32 786443, metadata !1, metadata !1323, i32 1248, i32 0, i32 236} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_IO.c]
!1344 = metadata !{i32 1253, i32 0, metadata !1304, null}
!1345 = metadata !{i32 1254, i32 0, metadata !1346, null}
!1346 = metadata !{i32 786443, metadata !1, metadata !1304, i32 1254, i32 0, i32 238} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_IO.c]
!1347 = metadata !{i32 1264, i32 0, metadata !1348, null}
!1348 = metadata !{i32 786443, metadata !1, metadata !1304, i32 1264, i32 0, i32 241} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_IO.c]
!1349 = metadata !{i32 1255, i32 0, metadata !1350, null}
!1350 = metadata !{i32 786443, metadata !1, metadata !1346, i32 1254, i32 0, i32 239} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_IO.c]
!1351 = metadata !{i32 1256, i32 0, metadata !1352, null}
!1352 = metadata !{i32 786443, metadata !1, metadata !1350, i32 1255, i32 0, i32 240} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_IO.c]
!1353 = metadata !{i32 1257, i32 0, metadata !1352, null}
!1354 = metadata !{i32 1265, i32 0, metadata !1355, null}
!1355 = metadata !{i32 786443, metadata !1, metadata !1348, i32 1264, i32 0, i32 242} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_IO.c]
!1356 = metadata !{i32 1266, i32 0, metadata !1357, null}
!1357 = metadata !{i32 786443, metadata !1, metadata !1355, i32 1266, i32 0, i32 243} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_IO.c]
!1358 = metadata !{i32 1267, i32 0, metadata !1359, null}
!1359 = metadata !{i32 786443, metadata !1, metadata !1357, i32 1266, i32 0, i32 244} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_IO.c]
!1360 = metadata !{i32 1268, i32 0, metadata !1359, null}
!1361 = metadata !{i32 1273, i32 0, metadata !1304, null}
!1362 = metadata !{i32 1274, i32 0, metadata !1363, null}
!1363 = metadata !{i32 786443, metadata !1, metadata !1304, i32 1274, i32 0, i32 246} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_IO.c]
!1364 = metadata !{i32 1275, i32 0, metadata !1365, null}
!1365 = metadata !{i32 786443, metadata !1, metadata !1363, i32 1274, i32 0, i32 247} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_IO.c]
!1366 = metadata !{i32 1276, i32 0, metadata !1367, null}
!1367 = metadata !{i32 786443, metadata !1, metadata !1365, i32 1276, i32 0, i32 248} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_IO.c]
!1368 = metadata !{i32 1277, i32 0, metadata !1369, null}
!1369 = metadata !{i32 786443, metadata !1, metadata !1367, i32 1276, i32 0, i32 249} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_IO.c]
!1370 = metadata !{i32 1278, i32 0, metadata !1369, null}
!1371 = metadata !{i32 1279, i32 0, metadata !1372, null}
!1372 = metadata !{i32 786443, metadata !1, metadata !1369, i32 1278, i32 0, i32 250} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_IO.c]
!1373 = metadata !{i32 1280, i32 0, metadata !1372, null}
!1374 = metadata !{i32 1284, i32 0, metadata !285, null}
!1375 = metadata !{i32 1672, i32 0, metadata !316, null}
!1376 = metadata !{i32 1673, i32 0, metadata !316, null}
!1377 = metadata !{i32 1676, i32 0, metadata !316, null}
!1378 = metadata !{i32 1677, i32 0, metadata !316, null}
!1379 = metadata !{i32 1683, i32 0, metadata !316, null}
!1380 = metadata !{i32 1684, i32 0, metadata !1381, null}
!1381 = metadata !{i32 786443, metadata !1, metadata !316, i32 1683, i32 0, i32 329} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_IO.c]
!1382 = metadata !{i32 1686, i32 0, metadata !1381, null}
!1383 = metadata !{i32 1688, i32 0, metadata !316, null}
!1384 = metadata !{i32 1689, i32 0, metadata !316, null}
!1385 = metadata !{i32 1690, i32 0, metadata !316, null}
!1386 = metadata !{i32 1691, i32 0, metadata !1387, null}
!1387 = metadata !{i32 786443, metadata !1, metadata !316, i32 1690, i32 0, i32 330} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_IO.c]
!1388 = metadata !{i32 1692, i32 0, metadata !1387, null}
!1389 = metadata !{i32 1693, i32 0, metadata !1387, null}
!1390 = metadata !{i32 1694, i32 0, metadata !1387, null}
!1391 = metadata !{i32 1695, i32 0, metadata !316, null}
!1392 = metadata !{i32 1696, i32 0, metadata !1393, null}
!1393 = metadata !{i32 786443, metadata !1, metadata !316, i32 1695, i32 0, i32 331} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_IO.c]
!1394 = metadata !{i32 1697, i32 0, metadata !1393, null}
!1395 = metadata !{i32 1698, i32 0, metadata !1393, null}
!1396 = metadata !{i32 1699, i32 0, metadata !1393, null}
!1397 = metadata !{i32 1700, i32 0, metadata !316, null}
!1398 = metadata !{i32 1701, i32 0, metadata !1399, null}
!1399 = metadata !{i32 786443, metadata !1, metadata !316, i32 1700, i32 0, i32 332} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_IO.c]
!1400 = metadata !{i32 1702, i32 0, metadata !1399, null}
!1401 = metadata !{i32 1703, i32 0, metadata !1399, null}
!1402 = metadata !{i32 1704, i32 0, metadata !1399, null}
!1403 = metadata !{i32 1705, i32 0, metadata !316, null}
!1404 = metadata !{i32 1706, i32 0, metadata !1405, null}
!1405 = metadata !{i32 786443, metadata !1, metadata !316, i32 1705, i32 0, i32 333} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_IO.c]
!1406 = metadata !{i32 1707, i32 0, metadata !1405, null}
!1407 = metadata !{i32 1708, i32 0, metadata !1405, null}
!1408 = metadata !{i32 1709, i32 0, metadata !1405, null}
!1409 = metadata !{i32 1710, i32 0, metadata !316, null}
!1410 = metadata !{i32 1711, i32 0, metadata !1411, null}
!1411 = metadata !{i32 786443, metadata !1, metadata !316, i32 1710, i32 0, i32 334} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_IO.c]
!1412 = metadata !{i32 1712, i32 0, metadata !1411, null}
!1413 = metadata !{i32 1713, i32 0, metadata !1411, null}
!1414 = metadata !{i32 1714, i32 0, metadata !1411, null}
!1415 = metadata !{i32 1715, i32 0, metadata !316, null}
!1416 = metadata !{i32 1716, i32 0, metadata !1417, null}
!1417 = metadata !{i32 786443, metadata !1, metadata !316, i32 1715, i32 0, i32 335} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_IO.c]
!1418 = metadata !{i32 1717, i32 0, metadata !1417, null}
!1419 = metadata !{i32 1718, i32 0, metadata !1417, null}
!1420 = metadata !{i32 1719, i32 0, metadata !1417, null}
!1421 = metadata !{i32 1720, i32 0, metadata !316, null}
!1422 = metadata !{i32 1721, i32 0, metadata !1423, null}
!1423 = metadata !{i32 786443, metadata !1, metadata !316, i32 1720, i32 0, i32 336} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_IO.c]
!1424 = metadata !{i32 1722, i32 0, metadata !1423, null}
!1425 = metadata !{i32 1723, i32 0, metadata !1423, null}
!1426 = metadata !{i32 1724, i32 0, metadata !1423, null}
!1427 = metadata !{i32 1725, i32 0, metadata !316, null}
!1428 = metadata !{i32 1726, i32 0, metadata !1429, null}
!1429 = metadata !{i32 786443, metadata !1, metadata !316, i32 1725, i32 0, i32 337} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_IO.c]
!1430 = metadata !{i32 1727, i32 0, metadata !1431, null}
!1431 = metadata !{i32 786443, metadata !1, metadata !1429, i32 1727, i32 0, i32 338} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_IO.c]
!1432 = metadata !{i32 1754, i32 0, metadata !316, null}
!1433 = metadata !{i32 1755, i32 0, metadata !1434, null}
!1434 = metadata !{i32 786443, metadata !1, metadata !316, i32 1755, i32 0, i32 347} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_IO.c]
!1435 = metadata !{i32 1763, i32 0, metadata !316, null}
!1436 = metadata !{i32 1764, i32 0, metadata !1437, null}
!1437 = metadata !{i32 786443, metadata !1, metadata !316, i32 1764, i32 0, i32 350} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_IO.c]
!1438 = metadata !{i32 1734, i32 0, metadata !1439, null}
!1439 = metadata !{i32 786443, metadata !1, metadata !1431, i32 1727, i32 0, i32 339} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_IO.c]
!1440 = metadata !{i32 1728, i32 0, metadata !1439, null}
!1441 = metadata !{i32 1729, i32 0, metadata !1439, null}
!1442 = metadata !{i32 1730, i32 0, metadata !1443, null}
!1443 = metadata !{i32 786443, metadata !1, metadata !1439, i32 1729, i32 0, i32 340} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_IO.c]
!1444 = metadata !{i32 1731, i32 0, metadata !1443, null}
!1445 = metadata !{i32 1732, i32 0, metadata !1443, null}
!1446 = metadata !{i32 1733, i32 0, metadata !1443, null}
!1447 = metadata !{i32 1735, i32 0, metadata !1448, null}
!1448 = metadata !{i32 786443, metadata !1, metadata !1439, i32 1734, i32 0, i32 341} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_IO.c]
!1449 = metadata !{i32 1736, i32 0, metadata !1448, null}
!1450 = metadata !{i32 1737, i32 0, metadata !1451, null}
!1451 = metadata !{i32 786443, metadata !1, metadata !1448, i32 1736, i32 0, i32 342} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_IO.c]
!1452 = metadata !{i32 1738, i32 0, metadata !1451, null}
!1453 = metadata !{i32 1739, i32 0, metadata !1451, null}
!1454 = metadata !{i32 1740, i32 0, metadata !1451, null}
!1455 = metadata !{i32 1742, i32 0, metadata !1456, null}
!1456 = metadata !{i32 786443, metadata !1, metadata !1439, i32 1741, i32 0, i32 343} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_IO.c]
!1457 = metadata !{i32 1743, i32 0, metadata !1458, null}
!1458 = metadata !{i32 786443, metadata !1, metadata !1456, i32 1743, i32 0, i32 344} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_IO.c]
!1459 = metadata !{i32 1744, i32 0, metadata !1460, null}
!1460 = metadata !{i32 786443, metadata !1, metadata !1458, i32 1743, i32 0, i32 345} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_IO.c]
!1461 = metadata !{i32 1745, i32 0, metadata !1460, null}
!1462 = metadata !{i32 1746, i32 0, metadata !1463, null}
!1463 = metadata !{i32 786443, metadata !1, metadata !1460, i32 1745, i32 0, i32 346} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_IO.c]
!1464 = metadata !{i32 1747, i32 0, metadata !1463, null}
!1465 = metadata !{i32 1748, i32 0, metadata !1463, null}
!1466 = metadata !{i32 1749, i32 0, metadata !1463, null}
!1467 = metadata !{i32 1756, i32 0, metadata !1468, null}
!1468 = metadata !{i32 786443, metadata !1, metadata !1434, i32 1755, i32 0, i32 348} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_IO.c]
!1469 = metadata !{i32 1757, i32 0, metadata !1468, null}
!1470 = metadata !{i32 1758, i32 0, metadata !1471, null}
!1471 = metadata !{i32 786443, metadata !1, metadata !1468, i32 1757, i32 0, i32 349} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_IO.c]
!1472 = metadata !{i32 1759, i32 0, metadata !1471, null}
!1473 = metadata !{i32 1760, i32 0, metadata !1471, null}
!1474 = metadata !{i32 1761, i32 0, metadata !1468, null}
!1475 = metadata !{i32 1771, i32 0, metadata !1476, null}
!1476 = metadata !{i32 786443, metadata !1, metadata !1437, i32 1764, i32 0, i32 351} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_IO.c]
!1477 = metadata !{i32 1765, i32 0, metadata !1476, null}
!1478 = metadata !{i32 1766, i32 0, metadata !1476, null}
!1479 = metadata !{i32 1767, i32 0, metadata !1480, null}
!1480 = metadata !{i32 786443, metadata !1, metadata !1476, i32 1766, i32 0, i32 352} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_IO.c]
!1481 = metadata !{i32 1768, i32 0, metadata !1480, null}
!1482 = metadata !{i32 1769, i32 0, metadata !1480, null}
!1483 = metadata !{i32 1770, i32 0, metadata !1480, null}
!1484 = metadata !{i32 1772, i32 0, metadata !1485, null}
!1485 = metadata !{i32 786443, metadata !1, metadata !1476, i32 1771, i32 0, i32 353} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_IO.c]
!1486 = metadata !{i32 1773, i32 0, metadata !1485, null}
!1487 = metadata !{i32 1774, i32 0, metadata !1488, null}
!1488 = metadata !{i32 786443, metadata !1, metadata !1485, i32 1773, i32 0, i32 354} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_IO.c]
!1489 = metadata !{i32 1775, i32 0, metadata !1488, null}
!1490 = metadata !{i32 1776, i32 0, metadata !1488, null}
!1491 = metadata !{i32 1777, i32 0, metadata !1488, null}
!1492 = metadata !{i32 1779, i32 0, metadata !1493, null}
!1493 = metadata !{i32 786443, metadata !1, metadata !1476, i32 1778, i32 0, i32 355} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_IO.c]
!1494 = metadata !{i32 1780, i32 0, metadata !1495, null}
!1495 = metadata !{i32 786443, metadata !1, metadata !1493, i32 1780, i32 0, i32 356} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_IO.c]
!1496 = metadata !{i32 1781, i32 0, metadata !1497, null}
!1497 = metadata !{i32 786443, metadata !1, metadata !1495, i32 1780, i32 0, i32 357} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_IO.c]
!1498 = metadata !{i32 1782, i32 0, metadata !1497, null}
!1499 = metadata !{i32 1783, i32 0, metadata !1500, null}
!1500 = metadata !{i32 786443, metadata !1, metadata !1497, i32 1782, i32 0, i32 358} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_IO.c]
!1501 = metadata !{i32 1784, i32 0, metadata !1500, null}
!1502 = metadata !{i32 1785, i32 0, metadata !1500, null}
!1503 = metadata !{i32 1786, i32 0, metadata !1500, null}
!1504 = metadata !{i32 1790, i32 0, metadata !316, null}
!1505 = metadata !{i32 1791, i32 0, metadata !316, null}
!1506 = metadata !{i32 1793, i32 0, metadata !316, null}
!1507 = metadata !{i32 1598, i32 0, metadata !312, null}
!1508 = metadata !{i32 1599, i32 0, metadata !312, null}
!1509 = metadata !{i32 1606, i32 0, metadata !312, null}
!1510 = metadata !{i32 1607, i32 0, metadata !1511, null}
!1511 = metadata !{i32 786443, metadata !1, metadata !312, i32 1606, i32 0, i32 324} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_IO.c]
!1512 = metadata !{i32 1609, i32 0, metadata !1511, null}
!1513 = metadata !{i32 1611, i32 0, metadata !312, null}
!1514 = metadata !{i32 1613, i32 0, metadata !312, null}
!1515 = metadata !{i32 1615, i32 0, metadata !1516, null}
!1516 = metadata !{i32 786443, metadata !1, metadata !312, i32 1613, i32 0, i32 325} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_IO.c]
!1517 = metadata !{i32 1616, i32 0, metadata !1516, null}
!1518 = metadata !{i32 1618, i32 0, metadata !1516, null}
!1519 = metadata !{i32 1619, i32 0, metadata !1516, null}
!1520 = metadata !{i32 1621, i32 0, metadata !1516, null}
!1521 = metadata !{i32 1622, i32 0, metadata !1516, null}
!1522 = metadata !{i32 1626, i32 0, metadata !312, null}
!1523 = metadata !{i32 1628, i32 0, metadata !1524, null}
!1524 = metadata !{i32 786443, metadata !1, metadata !312, i32 1626, i32 0, i32 326} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_IO.c]
!1525 = metadata !{i32 1629, i32 0, metadata !1524, null}
!1526 = metadata !{i32 1631, i32 0, metadata !1524, null}
!1527 = metadata !{i32 1632, i32 0, metadata !1524, null}
!1528 = metadata !{i32 1636, i32 0, metadata !312, null}
!1529 = metadata !{i32 1638, i32 0, metadata !1530, null}
!1530 = metadata !{i32 786443, metadata !1, metadata !312, i32 1636, i32 0, i32 327} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_IO.c]
!1531 = metadata !{i32 1639, i32 0, metadata !1530, null}
!1532 = metadata !{i32 1641, i32 0, metadata !1530, null}
!1533 = metadata !{i32 1642, i32 0, metadata !1530, null}
!1534 = metadata !{i32 1646, i32 0, metadata !312, null}
!1535 = metadata !{i32 1648, i32 0, metadata !1536, null}
!1536 = metadata !{i32 786443, metadata !1, metadata !312, i32 1646, i32 0, i32 328} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_IO.c]
!1537 = metadata !{i32 1649, i32 0, metadata !1536, null}
!1538 = metadata !{i32 1651, i32 0, metadata !1536, null}
!1539 = metadata !{i32 1652, i32 0, metadata !1536, null}
!1540 = metadata !{i32 1656, i32 0, metadata !312, null}
!1541 = metadata !{i32 1659, i32 0, metadata !312, null}
!1542 = metadata !{i32 1811, i32 0, metadata !327, null}
!1543 = metadata !{i32 1812, i32 0, metadata !327, null}
!1544 = metadata !{i32 1813, i32 0, metadata !327, null}
!1545 = metadata !{i32 1814, i32 0, metadata !327, null}
!1546 = metadata !{i32 1815, i32 0, metadata !327, null}
!1547 = metadata !{i32 1824, i32 0, metadata !327, null}
!1548 = metadata !{i32 1826, i32 0, metadata !1549, null}
!1549 = metadata !{i32 786443, metadata !1, metadata !327, i32 1825, i32 0, i32 359} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_IO.c]
!1550 = metadata !{i32 1828, i32 0, metadata !1549, null}
!1551 = metadata !{i32 1830, i32 0, metadata !327, null}
!1552 = metadata !{i32 1831, i32 0, metadata !1553, null}
!1553 = metadata !{i32 786443, metadata !1, metadata !327, i32 1830, i32 0, i32 360} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_IO.c]
!1554 = metadata !{i32 1832, i32 0, metadata !1553, null}
!1555 = metadata !{i32 1833, i32 0, metadata !1556, null}
!1556 = metadata !{i32 786443, metadata !1, metadata !1553, i32 1832, i32 0, i32 361} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_IO.c]
!1557 = metadata !{i32 1834, i32 0, metadata !1558, null}
!1558 = metadata !{i32 786443, metadata !1, metadata !1556, i32 1834, i32 0, i32 362} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_IO.c]
!1559 = metadata !{i32 1849, i32 0, metadata !1553, null}
!1560 = metadata !{i32 1850, i32 0, metadata !1561, null}
!1561 = metadata !{i32 786443, metadata !1, metadata !1553, i32 1850, i32 0, i32 366} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_IO.c]
!1562 = metadata !{i32 1858, i32 0, metadata !1553, null}
!1563 = metadata !{i32 1859, i32 0, metadata !1564, null}
!1564 = metadata !{i32 786443, metadata !1, metadata !1553, i32 1859, i32 0, i32 369} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_IO.c]
!1565 = metadata !{i32 1835, i32 0, metadata !1566, null}
!1566 = metadata !{i32 786443, metadata !1, metadata !1558, i32 1834, i32 0, i32 363} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_IO.c]
!1567 = metadata !{i32 1836, i32 0, metadata !1566, null}
!1568 = metadata !{i32 1837, i32 0, metadata !1569, null}
!1569 = metadata !{i32 786443, metadata !1, metadata !1566, i32 1836, i32 0, i32 364} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_IO.c]
!1570 = metadata !{i32 1838, i32 0, metadata !1569, null}
!1571 = metadata !{i32 1839, i32 0, metadata !1569, null}
!1572 = metadata !{i32 1840, i32 0, metadata !1569, null}
!1573 = metadata !{i32 1841, i32 0, metadata !1566, null}
!1574 = metadata !{i32 1842, i32 0, metadata !1566, null}
!1575 = metadata !{i32 1843, i32 0, metadata !1576, null}
!1576 = metadata !{i32 786443, metadata !1, metadata !1566, i32 1842, i32 0, i32 365} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_IO.c]
!1577 = metadata !{i32 1844, i32 0, metadata !1576, null}
!1578 = metadata !{i32 1845, i32 0, metadata !1576, null}
!1579 = metadata !{i32 1846, i32 0, metadata !1576, null}
!1580 = metadata !{i32 1851, i32 0, metadata !1581, null}
!1581 = metadata !{i32 786443, metadata !1, metadata !1561, i32 1850, i32 0, i32 367} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_IO.c]
!1582 = metadata !{i32 1852, i32 0, metadata !1581, null}
!1583 = metadata !{i32 1853, i32 0, metadata !1584, null}
!1584 = metadata !{i32 786443, metadata !1, metadata !1581, i32 1852, i32 0, i32 368} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_IO.c]
!1585 = metadata !{i32 1854, i32 0, metadata !1584, null}
!1586 = metadata !{i32 1855, i32 0, metadata !1584, null}
!1587 = metadata !{i32 1856, i32 0, metadata !1581, null}
!1588 = metadata !{i32 1860, i32 0, metadata !1589, null}
!1589 = metadata !{i32 786443, metadata !1, metadata !1564, i32 1859, i32 0, i32 370} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_IO.c]
!1590 = metadata !{i32 1861, i32 0, metadata !1589, null}
!1591 = metadata !{i32 1862, i32 0, metadata !1592, null}
!1592 = metadata !{i32 786443, metadata !1, metadata !1589, i32 1861, i32 0, i32 371} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_IO.c]
!1593 = metadata !{i32 1863, i32 0, metadata !1592, null}
!1594 = metadata !{i32 1864, i32 0, metadata !1592, null}
!1595 = metadata !{i32 1865, i32 0, metadata !1592, null}
!1596 = metadata !{i32 1866, i32 0, metadata !1589, null}
!1597 = metadata !{i32 1867, i32 0, metadata !1589, null}
!1598 = metadata !{i32 1868, i32 0, metadata !1599, null}
!1599 = metadata !{i32 786443, metadata !1, metadata !1589, i32 1867, i32 0, i32 372} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_IO.c]
!1600 = metadata !{i32 1869, i32 0, metadata !1599, null}
!1601 = metadata !{i32 1870, i32 0, metadata !1599, null}
!1602 = metadata !{i32 1871, i32 0, metadata !1599, null}
!1603 = metadata !{i32 1874, i32 0, metadata !341, null}
!1604 = metadata !{i32 1875, i32 0, metadata !341, null}
!1605 = metadata !{i32 1876, i32 0, metadata !340, null}
!1606 = metadata !{i32 1877, i32 0, metadata !340, null}
!1607 = metadata !{i32 1879, i32 0, metadata !340, null}
!1608 = metadata !{i32 1880, i32 0, metadata !1609, null}
!1609 = metadata !{i32 786443, metadata !1, metadata !340, i32 1880, i32 0, i32 375} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_IO.c]
!1610 = metadata !{i32 1920, i32 0, metadata !341, null}
!1611 = metadata !{i32 1921, i32 0, metadata !1612, null}
!1612 = metadata !{i32 786443, metadata !1, metadata !341, i32 1921, i32 0, i32 391} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_IO.c]
!1613 = metadata !{i32 1929, i32 0, metadata !341, null}
!1614 = metadata !{i32 1930, i32 0, metadata !357, null}
!1615 = metadata !{i32 1881, i32 0, metadata !1616, null}
!1616 = metadata !{i32 786443, metadata !1, metadata !1609, i32 1880, i32 0, i32 376} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_IO.c]
!1617 = metadata !{i32 1882, i32 0, metadata !1616, null}
!1618 = metadata !{i32 1883, i32 0, metadata !1619, null}
!1619 = metadata !{i32 786443, metadata !1, metadata !1616, i32 1882, i32 0, i32 377} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_IO.c]
!1620 = metadata !{i32 1884, i32 0, metadata !1619, null}
!1621 = metadata !{i32 1885, i32 0, metadata !1619, null}
!1622 = metadata !{i32 1886, i32 0, metadata !1619, null}
!1623 = metadata !{i32 1887, i32 0, metadata !1616, null}
!1624 = metadata !{i32 1888, i32 0, metadata !1625, null}
!1625 = metadata !{i32 786443, metadata !1, metadata !1616, i32 1888, i32 0, i32 378} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_IO.c]
!1626 = metadata !{i32 1889, i32 0, metadata !1627, null}
!1627 = metadata !{i32 786443, metadata !1, metadata !1625, i32 1888, i32 0, i32 379} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_IO.c]
!1628 = metadata !{i32 1890, i32 0, metadata !1627, null}
!1629 = metadata !{i32 1891, i32 0, metadata !1630, null}
!1630 = metadata !{i32 786443, metadata !1, metadata !1627, i32 1890, i32 0, i32 380} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_IO.c]
!1631 = metadata !{i32 1892, i32 0, metadata !1630, null}
!1632 = metadata !{i32 1893, i32 0, metadata !1630, null}
!1633 = metadata !{i32 1894, i32 0, metadata !1634, null}
!1634 = metadata !{i32 786443, metadata !1, metadata !1630, i32 1894, i32 0, i32 381} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_IO.c]
!1635 = metadata !{i32 1895, i32 0, metadata !1636, null}
!1636 = metadata !{i32 786443, metadata !1, metadata !1634, i32 1894, i32 0, i32 382} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_IO.c]
!1637 = metadata !{i32 1897, i32 0, metadata !1630, null}
!1638 = metadata !{i32 1898, i32 0, metadata !1630, null}
!1639 = metadata !{i32 1899, i32 0, metadata !1640, null}
!1640 = metadata !{i32 786443, metadata !1, metadata !1630, i32 1899, i32 0, i32 383} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_IO.c]
!1641 = metadata !{i32 1900, i32 0, metadata !1642, null}
!1642 = metadata !{i32 786443, metadata !1, metadata !1640, i32 1899, i32 0, i32 384} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_IO.c]
!1643 = metadata !{i32 1902, i32 0, metadata !1630, null}
!1644 = metadata !{i32 1903, i32 0, metadata !1645, null}
!1645 = metadata !{i32 786443, metadata !1, metadata !1630, i32 1903, i32 0, i32 385} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_IO.c]
!1646 = metadata !{i32 1904, i32 0, metadata !1647, null}
!1647 = metadata !{i32 786443, metadata !1, metadata !1645, i32 1903, i32 0, i32 386} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_IO.c]
!1648 = metadata !{i32 1905, i32 0, metadata !1649, null}
!1649 = metadata !{i32 786443, metadata !1, metadata !1647, i32 1904, i32 0, i32 387} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_IO.c]
!1650 = metadata !{i32 1907, i32 0, metadata !1647, null}
!1651 = metadata !{i32 1909, i32 0, metadata !1652, null}
!1652 = metadata !{i32 786443, metadata !1, metadata !1630, i32 1909, i32 0, i32 388} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_IO.c]
!1653 = metadata !{i32 1910, i32 0, metadata !1654, null}
!1654 = metadata !{i32 786443, metadata !1, metadata !1652, i32 1909, i32 0, i32 389} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_IO.c]
!1655 = metadata !{i32 1911, i32 0, metadata !1656, null}
!1656 = metadata !{i32 786443, metadata !1, metadata !1654, i32 1910, i32 0, i32 390} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_IO.c]
!1657 = metadata !{i32 1913, i32 0, metadata !1654, null}
!1658 = metadata !{i32 1915, i32 0, metadata !1630, null}
!1659 = metadata !{i32 1916, i32 0, metadata !1630, null}
!1660 = metadata !{i32 1922, i32 0, metadata !1661, null}
!1661 = metadata !{i32 786443, metadata !1, metadata !1612, i32 1921, i32 0, i32 392} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_IO.c]
!1662 = metadata !{i32 1923, i32 0, metadata !1661, null}
!1663 = metadata !{i32 1924, i32 0, metadata !1664, null}
!1664 = metadata !{i32 786443, metadata !1, metadata !1661, i32 1923, i32 0, i32 393} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_IO.c]
!1665 = metadata !{i32 1925, i32 0, metadata !1664, null}
!1666 = metadata !{i32 1926, i32 0, metadata !1664, null}
!1667 = metadata !{i32 1927, i32 0, metadata !1661, null}
!1668 = metadata !{i32 1931, i32 0, metadata !356, null}
!1669 = metadata !{i32 1932, i32 0, metadata !356, null}
!1670 = metadata !{i32 1934, i32 0, metadata !356, null}
!1671 = metadata !{i32 1935, i32 0, metadata !356, null}
!1672 = metadata !{i32 1936, i32 0, metadata !1673, null}
!1673 = metadata !{i32 786443, metadata !1, metadata !356, i32 1935, i32 0, i32 396} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_IO.c]
!1674 = metadata !{i32 1937, i32 0, metadata !1673, null}
!1675 = metadata !{i32 1938, i32 0, metadata !1673, null}
!1676 = metadata !{i32 1939, i32 0, metadata !1673, null}
!1677 = metadata !{i32 1940, i32 0, metadata !356, null}
!1678 = metadata !{i32 1941, i32 0, metadata !1679, null}
!1679 = metadata !{i32 786443, metadata !1, metadata !356, i32 1941, i32 0, i32 397} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_IO.c]
!1680 = metadata !{i32 1942, i32 0, metadata !1681, null}
!1681 = metadata !{i32 786443, metadata !1, metadata !1679, i32 1941, i32 0, i32 398} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_IO.c]
!1682 = metadata !{i32 1943, i32 0, metadata !1681, null}
!1683 = metadata !{i32 1944, i32 0, metadata !1684, null}
!1684 = metadata !{i32 786443, metadata !1, metadata !1681, i32 1943, i32 0, i32 399} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_IO.c]
!1685 = metadata !{i32 1945, i32 0, metadata !1684, null}
!1686 = metadata !{i32 1946, i32 0, metadata !1684, null}
!1687 = metadata !{i32 1947, i32 0, metadata !1688, null}
!1688 = metadata !{i32 786443, metadata !1, metadata !1684, i32 1947, i32 0, i32 400} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_IO.c]
!1689 = metadata !{i32 1948, i32 0, metadata !1690, null}
!1690 = metadata !{i32 786443, metadata !1, metadata !1688, i32 1947, i32 0, i32 401} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_IO.c]
!1691 = metadata !{i32 1950, i32 0, metadata !1684, null}
!1692 = metadata !{i32 1951, i32 0, metadata !1684, null}
!1693 = metadata !{i32 1952, i32 0, metadata !1694, null}
!1694 = metadata !{i32 786443, metadata !1, metadata !1684, i32 1952, i32 0, i32 402} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_IO.c]
!1695 = metadata !{i32 1953, i32 0, metadata !1696, null}
!1696 = metadata !{i32 786443, metadata !1, metadata !1694, i32 1952, i32 0, i32 403} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_IO.c]
!1697 = metadata !{i32 1955, i32 0, metadata !1684, null}
!1698 = metadata !{i32 1956, i32 0, metadata !1699, null}
!1699 = metadata !{i32 786443, metadata !1, metadata !1684, i32 1956, i32 0, i32 404} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_IO.c]
!1700 = metadata !{i32 1957, i32 0, metadata !1701, null}
!1701 = metadata !{i32 786443, metadata !1, metadata !1699, i32 1956, i32 0, i32 405} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_IO.c]
!1702 = metadata !{i32 1958, i32 0, metadata !1703, null}
!1703 = metadata !{i32 786443, metadata !1, metadata !1701, i32 1957, i32 0, i32 406} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_IO.c]
!1704 = metadata !{i32 1960, i32 0, metadata !1701, null}
!1705 = metadata !{i32 1962, i32 0, metadata !1706, null}
!1706 = metadata !{i32 786443, metadata !1, metadata !1684, i32 1962, i32 0, i32 407} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_IO.c]
!1707 = metadata !{i32 1963, i32 0, metadata !1708, null}
!1708 = metadata !{i32 786443, metadata !1, metadata !1706, i32 1962, i32 0, i32 408} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_IO.c]
!1709 = metadata !{i32 1964, i32 0, metadata !1710, null}
!1710 = metadata !{i32 786443, metadata !1, metadata !1708, i32 1963, i32 0, i32 409} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_IO.c]
!1711 = metadata !{i32 1966, i32 0, metadata !1708, null}
!1712 = metadata !{i32 1968, i32 0, metadata !1684, null}
!1713 = metadata !{i32 1969, i32 0, metadata !1684, null}
!1714 = metadata !{i32 1973, i32 0, metadata !327, null}
