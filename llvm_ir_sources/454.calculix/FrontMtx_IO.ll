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
  %cmp = icmp eq %struct._FrontMtx* %frontmtx, null
  %cmp1 = icmp eq i8* %fn, null
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([52 x i8]* @.str, i64 0, i64 0), %struct._FrontMtx* %frontmtx, i8* %fn) #6
  br label %return

if.end:                                           ; preds = %entry
  %call2 = tail call i64 @strlen(i8* %fn) #7
  %conv = trunc i64 %call2 to i32
  %cmp5 = icmp sgt i32 %conv, 10
  br i1 %cmp5, label %if.then7, label %if.else41

if.then7:                                         ; preds = %if.end
  %sub = shl i64 %call2, 32
  %sext = add i64 %sub, -42949672960
  %idxprom = ashr exact i64 %sext, 32
  %arrayidx = getelementptr inbounds i8* %fn, i64 %idxprom
  %call8 = tail call i32 @strcmp(i8* %arrayidx, i8* getelementptr inbounds ([11 x i8]* @.str98, i64 0, i64 0)) #7
  %cmp9 = icmp eq i32 %call8, 0
  br i1 %cmp9, label %if.then11, label %if.else20

if.then11:                                        ; preds = %if.then7
  %call12 = tail call %struct._IO_FILE* @fopen(i8* %fn, i8* getelementptr inbounds ([3 x i8]* @.str1, i64 0, i64 0)) #6
  %cmp13 = icmp eq %struct._IO_FILE* %call12, null
  br i1 %cmp13, label %if.then15, label %if.else

if.then15:                                        ; preds = %if.then11
  %1 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call16 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([64 x i8]* @.str2, i64 0, i64 0), %struct._FrontMtx* %frontmtx, i8* %fn, i8* %fn) #6
  br label %return

if.else:                                          ; preds = %if.then11
  %call17 = tail call i32 @FrontMtx_readFromBinaryFile(%struct._FrontMtx* %frontmtx, %struct._IO_FILE* %call12) #8
  %call18 = tail call i32 @fclose(%struct._IO_FILE* %call12) #6
  br label %return

if.else20:                                        ; preds = %if.then7
  %call24 = tail call i32 @strcmp(i8* %arrayidx, i8* getelementptr inbounds ([11 x i8]* @.str97, i64 0, i64 0)) #7
  %cmp25 = icmp eq i32 %call24, 0
  br i1 %cmp25, label %if.then27, label %if.else37

if.then27:                                        ; preds = %if.else20
  %call28 = tail call %struct._IO_FILE* @fopen(i8* %fn, i8* getelementptr inbounds ([2 x i8]* @.str3, i64 0, i64 0)) #6
  %cmp29 = icmp eq %struct._IO_FILE* %call28, null
  br i1 %cmp29, label %if.then31, label %if.else33

if.then31:                                        ; preds = %if.then27
  %2 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call32 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([64 x i8]* @.str2, i64 0, i64 0), %struct._FrontMtx* %frontmtx, i8* %fn, i8* %fn) #6
  br label %return

if.else33:                                        ; preds = %if.then27
  %call34 = tail call i32 @FrontMtx_readFromFormattedFile(%struct._FrontMtx* %frontmtx, %struct._IO_FILE* %call28) #8
  %call35 = tail call i32 @fclose(%struct._IO_FILE* %call28) #6
  br label %return

if.else37:                                        ; preds = %if.else20
  %3 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call38 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([112 x i8]* @.str4, i64 0, i64 0), %struct._FrontMtx* %frontmtx, i8* %fn, i8* %fn, i8* getelementptr inbounds ([11 x i8]* @.str98, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8]* @.str97, i64 0, i64 0)) #6
  br label %return

if.else41:                                        ; preds = %if.end
  %4 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call42 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([112 x i8]* @.str4, i64 0, i64 0), %struct._FrontMtx* %frontmtx, i8* %fn, i8* %fn, i8* getelementptr inbounds ([11 x i8]* @.str98, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8]* @.str97, i64 0, i64 0)) #6
  br label %return

return:                                           ; preds = %if.else41, %if.else37, %if.else33, %if.then31, %if.then15, %if.else, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %if.then15 ], [ %call17, %if.else ], [ 0, %if.then31 ], [ %call34, %if.else33 ], [ 0, %if.else37 ], [ 0, %if.else41 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #1

; Function Attrs: nounwind optsize readonly
declare i64 @strlen(i8* nocapture) #2

; Function Attrs: nounwind optsize readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) #2

; Function Attrs: nounwind optsize
declare noalias %struct._IO_FILE* @fopen(i8* nocapture, i8* nocapture) #1

; Function Attrs: nounwind optsize uwtable
define i32 @FrontMtx_readFromBinaryFile(%struct._FrontMtx* %frontmtx, %struct._IO_FILE* %fp) #0 {
entry:
  %nmtx = alloca i32, align 4
  %itemp = alloca [10 x i32], align 16
  %0 = bitcast [10 x i32]* %itemp to i8*
  call void @llvm.lifetime.start(i64 40, i8* %0) #3
  %cmp = icmp eq %struct._FrontMtx* %frontmtx, null
  %cmp1 = icmp eq %struct._IO_FILE* %fp, null
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([58 x i8]* @.str22, i64 0, i64 0), %struct._FrontMtx* %frontmtx, %struct._IO_FILE* %fp) #6
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @FrontMtx_clearData(%struct._FrontMtx* %frontmtx) #6
  %call2 = call i64 @fread(i8* %0, i64 4, i64 10, %struct._IO_FILE* %fp) #6
  %conv = trunc i64 %call2 to i32
  %cmp3 = icmp eq i32 %conv, 10
  br i1 %cmp3, label %if.end7, label %if.then5

if.then5:                                         ; preds = %if.end
  %2 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call6 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([68 x i8]* @.str23, i64 0, i64 0), %struct._FrontMtx* %frontmtx, %struct._IO_FILE* %fp, i32 %conv, i32 10) #6
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %3 = bitcast [10 x i32]* %itemp to i64*
  %4 = load i64* %3, align 16
  %5 = trunc i64 %4 to i32
  %nfront8 = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 0
  store i32 %5, i32* %nfront8, align 4, !tbaa !3
  %6 = lshr i64 %4, 32
  %7 = trunc i64 %6 to i32
  %neqns = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 1
  store i32 %7, i32* %neqns, align 4, !tbaa !3
  %arrayidx10 = getelementptr inbounds [10 x i32]* %itemp, i64 0, i64 2
  %8 = bitcast i32* %arrayidx10 to i64*
  %9 = load i64* %8, align 8
  %10 = trunc i64 %9 to i32
  %type = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 2
  store i32 %10, i32* %type, align 4, !tbaa !3
  %11 = lshr i64 %9, 32
  %12 = trunc i64 %11 to i32
  %symmetryflag = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 3
  store i32 %12, i32* %symmetryflag, align 4, !tbaa !3
  %arrayidx12 = getelementptr inbounds [10 x i32]* %itemp, i64 0, i64 4
  %13 = bitcast i32* %arrayidx12 to i64*
  %14 = load i64* %13, align 16
  %15 = trunc i64 %14 to i32
  %pivotingflag = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 5
  store i32 %15, i32* %pivotingflag, align 4, !tbaa !3
  %16 = lshr i64 %14, 32
  %17 = trunc i64 %16 to i32
  %sparsityflag = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 4
  store i32 %17, i32* %sparsityflag, align 4, !tbaa !3
  %arrayidx14 = getelementptr inbounds [10 x i32]* %itemp, i64 0, i64 6
  %18 = bitcast i32* %arrayidx14 to i64*
  %19 = load i64* %18, align 8
  %20 = trunc i64 %19 to i32
  %dataMode = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 6
  store i32 %20, i32* %dataMode, align 4, !tbaa !3
  %21 = lshr i64 %19, 32
  %22 = trunc i64 %21 to i32
  %nentD = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 7
  store i32 %22, i32* %nentD, align 4, !tbaa !3
  %arrayidx16 = getelementptr inbounds [10 x i32]* %itemp, i64 0, i64 8
  %23 = bitcast i32* %arrayidx16 to i64*
  %24 = load i64* %23, align 16
  %25 = trunc i64 %24 to i32
  %nentL = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 8
  store i32 %25, i32* %nentL, align 4, !tbaa !3
  %26 = lshr i64 %24, 32
  %27 = trunc i64 %26 to i32
  %nentU = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 9
  store i32 %27, i32* %nentU, align 4, !tbaa !3
  %call18 = call %struct._ETree* @ETree_new() #6
  %frontETree = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 11
  store %struct._ETree* %call18, %struct._ETree** %frontETree, align 8, !tbaa !0
  %call20 = call i32 @ETree_readFromBinaryFile(%struct._ETree* %call18, %struct._IO_FILE* %fp) #6
  %cmp21 = icmp eq i32 %call20, 1
  br i1 %cmp21, label %if.end25, label %if.then23

if.then23:                                        ; preds = %if.end7
  %28 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call24 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %28, i8* getelementptr inbounds ([92 x i8]* @.str24, i64 0, i64 0), %struct._FrontMtx* %frontmtx, %struct._IO_FILE* %fp, i32 %call20) #6
  br label %cleanup

if.end25:                                         ; preds = %if.end7
  %29 = load %struct._ETree** %frontETree, align 8, !tbaa !0
  %tree = getelementptr inbounds %struct._ETree* %29, i64 0, i32 2
  %30 = load %struct._Tree** %tree, align 8, !tbaa !0
  %tree27 = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 10
  store %struct._Tree* %30, %struct._Tree** %tree27, align 8, !tbaa !0
  %call28 = call %struct._IVL* @IVL_new() #6
  %symbfacIVL = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 13
  store %struct._IVL* %call28, %struct._IVL** %symbfacIVL, align 8, !tbaa !0
  %type30 = getelementptr inbounds %struct._IVL* %call28, i64 0, i32 0
  store i32 1, i32* %type30, align 4, !tbaa !3
  %call32 = call i32 @IVL_readFromBinaryFile(%struct._IVL* %call28, %struct._IO_FILE* %fp) #6
  %cmp33 = icmp eq i32 %call32, 1
  br i1 %cmp33, label %if.end37, label %if.then35

if.then35:                                        ; preds = %if.end25
  %31 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call36 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %31, i8* getelementptr inbounds ([92 x i8]* @.str25, i64 0, i64 0), %struct._FrontMtx* %frontmtx, %struct._IO_FILE* %fp, i32 %call32) #6
  br label %cleanup

if.end37:                                         ; preds = %if.end25
  %call38 = call %struct._IV* @IV_new() #6
  %frontsizesIV = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 12
  store %struct._IV* %call38, %struct._IV** %frontsizesIV, align 8, !tbaa !0
  %32 = load i32* %pivotingflag, align 4, !tbaa !3
  %cmp40 = icmp eq i32 %32, 1
  br i1 %cmp40, label %if.then42, label %if.else

if.then42:                                        ; preds = %if.end37
  %call44 = call i32 @IV_readFromBinaryFile(%struct._IV* %call38, %struct._IO_FILE* %fp) #6
  %cmp45 = icmp eq i32 %call44, 1
  br i1 %cmp45, label %if.end56, label %if.then47

if.then47:                                        ; preds = %if.then42
  %33 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call48 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %33, i8* getelementptr inbounds ([94 x i8]* @.str26, i64 0, i64 0), %struct._FrontMtx* %frontmtx, %struct._IO_FILE* %fp, i32 %call44) #6
  br label %cleanup

if.else:                                          ; preds = %if.end37
  %34 = load i32* %nfront8, align 4, !tbaa !3
  call void @IV_init(%struct._IV* %call38, i32 %34, i32* null) #6
  %35 = load %struct._IV** %frontsizesIV, align 8, !tbaa !0
  %call53 = call i32* @IV_entries(%struct._IV* %35) #6
  %36 = load %struct._ETree** %frontETree, align 8, !tbaa !0
  %call55 = call i32* @ETree_nodwghts(%struct._ETree* %36) #6
  call void @IVcopy(i32 %5, i32* %call53, i32* %call55) #6
  br label %if.end56

if.end56:                                         ; preds = %if.then42, %if.else
  %37 = load i32* %pivotingflag, align 4, !tbaa !3
  %cmp58 = icmp eq i32 %37, 1
  br i1 %cmp58, label %if.then60, label %if.end86

if.then60:                                        ; preds = %if.end56
  %38 = load i32* %symmetryflag, align 4, !tbaa !3
  %cmp62 = icmp eq i32 %38, 2
  br i1 %cmp62, label %if.then64, label %if.end75

if.then64:                                        ; preds = %if.then60
  %call65 = call %struct._IVL* @IVL_new() #6
  %rowadjIVL = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 14
  store %struct._IVL* %call65, %struct._IVL** %rowadjIVL, align 8, !tbaa !0
  %type67 = getelementptr inbounds %struct._IVL* %call65, i64 0, i32 0
  store i32 1, i32* %type67, align 4, !tbaa !3
  %call69 = call i32 @IVL_readFromBinaryFile(%struct._IVL* %call65, %struct._IO_FILE* %fp) #6
  %cmp70 = icmp eq i32 %call69, 1
  br i1 %cmp70, label %if.end75, label %if.then72

if.then72:                                        ; preds = %if.then64
  %39 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call73 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %39, i8* getelementptr inbounds ([91 x i8]* @.str27, i64 0, i64 0), %struct._FrontMtx* %frontmtx, %struct._IO_FILE* %fp, i32 %call69) #6
  br label %cleanup

if.end75:                                         ; preds = %if.then64, %if.then60
  %call76 = call %struct._IVL* @IVL_new() #6
  %coladjIVL = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 15
  store %struct._IVL* %call76, %struct._IVL** %coladjIVL, align 8, !tbaa !0
  %type78 = getelementptr inbounds %struct._IVL* %call76, i64 0, i32 0
  store i32 1, i32* %type78, align 4, !tbaa !3
  %call80 = call i32 @IVL_readFromBinaryFile(%struct._IVL* %call76, %struct._IO_FILE* %fp) #6
  %cmp81 = icmp eq i32 %call80, 1
  br i1 %cmp81, label %if.end86, label %if.then83

if.then83:                                        ; preds = %if.end75
  %40 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call84 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %40, i8* getelementptr inbounds ([91 x i8]* @.str28, i64 0, i64 0), %struct._FrontMtx* %frontmtx, %struct._IO_FILE* %fp, i32 %call80) #6
  br label %cleanup

if.end86:                                         ; preds = %if.end75, %if.end56
  %41 = load i32* %dataMode, align 4, !tbaa !3
  %cmp88 = icmp eq i32 %41, 1
  br i1 %cmp88, label %if.then90, label %if.else371

if.then90:                                        ; preds = %if.end86
  %cmp91 = icmp sgt i32 %5, 0
  br i1 %cmp91, label %if.then93, label %if.else104

if.then93:                                        ; preds = %if.then90
  %sext827 = shl i64 %4, 32
  %mul = ashr exact i64 %sext827, 29
  %call95 = call noalias i8* @malloc(i64 %mul) #6
  %42 = bitcast i8* %call95 to %struct._SubMtx**
  %p_mtxDJJ = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 18
  store %struct._SubMtx** %42, %struct._SubMtx*** %p_mtxDJJ, align 8, !tbaa !0
  %cmp96 = icmp eq i8* %call95, null
  br i1 %cmp96, label %if.then98, label %if.then117

if.then98:                                        ; preds = %if.then93
  %43 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call101 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %43, i8* getelementptr inbounds ([49 x i8]* @.str13, i64 0, i64 0), i64 %mul, i32 640, i8* getelementptr inbounds ([81 x i8]* @.str14, i64 0, i64 0)) #6
  call void @exit(i32 -1) #9
  unreachable

if.else104:                                       ; preds = %if.then90
  %cmp105 = icmp eq i32 %5, 0
  br i1 %cmp105, label %if.then157, label %if.else109

if.else109:                                       ; preds = %if.else104
  %44 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %sext824 = shl i64 %4, 32
  %mul111 = ashr exact i64 %sext824, 29
  %call112 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %44, i8* getelementptr inbounds ([47 x i8]* @.str15, i64 0, i64 0), i64 %mul111, i32 640, i8* getelementptr inbounds ([81 x i8]* @.str14, i64 0, i64 0)) #6
  call void @exit(i32 -1) #9
  unreachable

if.then117:                                       ; preds = %if.then93
  %call120 = call noalias i8* @malloc(i64 %mul) #6
  %45 = bitcast i8* %call120 to %struct._SubMtx**
  %p_mtxUJJ = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 19
  store %struct._SubMtx** %45, %struct._SubMtx*** %p_mtxUJJ, align 8, !tbaa !0
  %cmp121 = icmp eq i8* %call120, null
  br i1 %cmp121, label %if.then123, label %if.then142

if.then123:                                       ; preds = %if.then117
  %46 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call126 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %46, i8* getelementptr inbounds ([49 x i8]* @.str13, i64 0, i64 0), i64 %mul, i32 641, i8* getelementptr inbounds ([81 x i8]* @.str14, i64 0, i64 0)) #6
  call void @exit(i32 -1) #9
  unreachable

if.then142:                                       ; preds = %if.then117
  %call145 = call noalias i8* @malloc(i64 %mul) #6
  %47 = bitcast i8* %call145 to %struct._SubMtx**
  %p_mtxUJN = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 20
  store %struct._SubMtx** %47, %struct._SubMtx*** %p_mtxUJN, align 8, !tbaa !0
  %cmp146 = icmp eq i8* %call145, null
  br i1 %cmp146, label %if.then148, label %for.cond.preheader

if.then148:                                       ; preds = %if.then142
  %48 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call151 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %48, i8* getelementptr inbounds ([49 x i8]* @.str13, i64 0, i64 0), i64 %mul, i32 642, i8* getelementptr inbounds ([81 x i8]* @.str14, i64 0, i64 0)) #6
  call void @exit(i32 -1) #9
  unreachable

if.then157:                                       ; preds = %if.else104
  %p_mtxDJJ108 = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 18
  %49 = bitcast %struct._SubMtx*** %p_mtxDJJ108 to i8*
  call void @llvm.memset.p0i8.i64(i8* %49, i8 0, i64 24, i32 8, i1 false)
  br label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.then142, %if.then157
  %50 = phi %struct._SubMtx** [ %42, %if.then142 ], [ null, %if.then157 ]
  br i1 %cmp91, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %p_mtxDJJ167 = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 18
  %p_mtxUJJ170 = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 19
  %p_mtxUJN173 = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 20
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %51 = phi %struct._SubMtx** [ %50, %for.body.lr.ph ], [ %.pre821, %for.body.for.body_crit_edge ]
  %indvars.iv810 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next811, %for.body.for.body_crit_edge ]
  %arrayidx168 = getelementptr inbounds %struct._SubMtx** %51, i64 %indvars.iv810
  store %struct._SubMtx* null, %struct._SubMtx** %arrayidx168, align 8, !tbaa !0
  %52 = load %struct._SubMtx*** %p_mtxUJJ170, align 8, !tbaa !0
  %arrayidx171 = getelementptr inbounds %struct._SubMtx** %52, i64 %indvars.iv810
  store %struct._SubMtx* null, %struct._SubMtx** %arrayidx171, align 8, !tbaa !0
  %53 = load %struct._SubMtx*** %p_mtxUJN173, align 8, !tbaa !0
  %arrayidx174 = getelementptr inbounds %struct._SubMtx** %53, i64 %indvars.iv810
  store %struct._SubMtx* null, %struct._SubMtx** %arrayidx174, align 8, !tbaa !0
  %indvars.iv.next811 = add i64 %indvars.iv810, 1
  %lftr.wideiv812 = trunc i64 %indvars.iv.next811 to i32
  %exitcond813 = icmp eq i32 %lftr.wideiv812, %5
  br i1 %exitcond813, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  %.pre821 = load %struct._SubMtx*** %p_mtxDJJ167, align 8, !tbaa !0
  br label %for.body

for.end:                                          ; preds = %for.body, %for.cond.preheader
  %54 = load i32* %symmetryflag, align 4, !tbaa !3
  %cmp176 = icmp eq i32 %54, 2
  br i1 %cmp176, label %if.then178, label %if.end296

if.then178:                                       ; preds = %for.end
  br i1 %cmp91, label %if.then181, label %if.else193

if.then181:                                       ; preds = %if.then178
  %sext826 = shl i64 %4, 32
  %mul183 = ashr exact i64 %sext826, 29
  %call184 = call noalias i8* @malloc(i64 %mul183) #6
  %55 = bitcast i8* %call184 to %struct._SubMtx**
  %p_mtxLJJ = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 21
  store %struct._SubMtx** %55, %struct._SubMtx*** %p_mtxLJJ, align 8, !tbaa !0
  %cmp185 = icmp eq i8* %call184, null
  br i1 %cmp185, label %if.then187, label %if.then206

if.then187:                                       ; preds = %if.then181
  %56 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call190 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %56, i8* getelementptr inbounds ([49 x i8]* @.str13, i64 0, i64 0), i64 %mul183, i32 649, i8* getelementptr inbounds ([81 x i8]* @.str14, i64 0, i64 0)) #6
  call void @exit(i32 -1) #9
  unreachable

if.else193:                                       ; preds = %if.then178
  %cmp194 = icmp eq i32 %5, 0
  br i1 %cmp194, label %if.then221, label %if.else198

if.else198:                                       ; preds = %if.else193
  %57 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %sext825 = shl i64 %4, 32
  %mul200 = ashr exact i64 %sext825, 29
  %call201 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %57, i8* getelementptr inbounds ([47 x i8]* @.str15, i64 0, i64 0), i64 %mul200, i32 649, i8* getelementptr inbounds ([81 x i8]* @.str14, i64 0, i64 0)) #6
  call void @exit(i32 -1) #9
  unreachable

if.then206:                                       ; preds = %if.then181
  %call209 = call noalias i8* @malloc(i64 %mul183) #6
  %58 = bitcast i8* %call209 to %struct._SubMtx**
  %p_mtxLNJ = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 22
  store %struct._SubMtx** %58, %struct._SubMtx*** %p_mtxLNJ, align 8, !tbaa !0
  %cmp210 = icmp eq i8* %call209, null
  br i1 %cmp210, label %if.then212, label %for.cond229.preheader

if.then212:                                       ; preds = %if.then206
  %59 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call215 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %59, i8* getelementptr inbounds ([49 x i8]* @.str13, i64 0, i64 0), i64 %mul183, i32 650, i8* getelementptr inbounds ([81 x i8]* @.str14, i64 0, i64 0)) #6
  call void @exit(i32 -1) #9
  unreachable

if.then221:                                       ; preds = %if.else193
  %p_mtxLJJ197 = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 21
  %60 = bitcast %struct._SubMtx*** %p_mtxLJJ197 to i8*
  call void @llvm.memset.p0i8.i64(i8* %60, i8 0, i64 16, i32 8, i1 false)
  br label %for.cond229.preheader

for.cond229.preheader:                            ; preds = %if.then206, %if.then221
  %61 = phi %struct._SubMtx** [ %55, %if.then206 ], [ null, %if.then221 ]
  br i1 %cmp91, label %for.body232.lr.ph, label %if.then246

for.body232.lr.ph:                                ; preds = %for.cond229.preheader
  %p_mtxLJJ234 = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 21
  %p_mtxLNJ237 = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 22
  br label %for.body232

for.body232:                                      ; preds = %for.body232.for.body232_crit_edge, %for.body232.lr.ph
  %62 = phi %struct._SubMtx** [ %61, %for.body232.lr.ph ], [ %.pre, %for.body232.for.body232_crit_edge ]
  %indvars.iv = phi i64 [ 0, %for.body232.lr.ph ], [ %indvars.iv.next, %for.body232.for.body232_crit_edge ]
  %arrayidx235 = getelementptr inbounds %struct._SubMtx** %62, i64 %indvars.iv
  store %struct._SubMtx* null, %struct._SubMtx** %arrayidx235, align 8, !tbaa !0
  %63 = load %struct._SubMtx*** %p_mtxLNJ237, align 8, !tbaa !0
  %arrayidx238 = getelementptr inbounds %struct._SubMtx** %63, i64 %indvars.iv
  store %struct._SubMtx* null, %struct._SubMtx** %arrayidx238, align 8, !tbaa !0
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %5
  br i1 %exitcond, label %if.then246, label %for.body232.for.body232_crit_edge

for.body232.for.body232_crit_edge:                ; preds = %for.body232
  %.pre = load %struct._SubMtx*** %p_mtxLJJ234, align 8, !tbaa !0
  br label %for.body232

if.then246:                                       ; preds = %for.cond229.preheader, %for.body232
  %64 = bitcast i32* %nmtx to i8*
  %call247 = call i64 @fread(i8* %64, i64 4, i64 1, %struct._IO_FILE* %fp) #6
  %conv248 = trunc i64 %call247 to i32
  %cmp249 = icmp eq i32 %conv248, 1
  br i1 %cmp249, label %for.cond254.preheader, label %if.then251

for.cond254.preheader:                            ; preds = %if.then246
  %65 = load i32* %nmtx, align 4, !tbaa !3
  %cmp255790 = icmp sgt i32 %65, 0
  br i1 %cmp255790, label %for.body257.lr.ph, label %for.end270

for.body257.lr.ph:                                ; preds = %for.cond254.preheader
  %p_mtxLJJ266 = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 21
  br label %for.body257

if.then251:                                       ; preds = %if.then246
  %66 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call252 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %66, i8* getelementptr inbounds ([68 x i8]* @.str23, i64 0, i64 0), %struct._FrontMtx* %frontmtx, %struct._IO_FILE* %fp, i32 %conv248, i32 1) #6
  br label %cleanup

for.body257:                                      ; preds = %for.body257.lr.ph, %if.end264
  %imtx.0791 = phi i32 [ 0, %for.body257.lr.ph ], [ %inc269, %if.end264 ]
  %call258 = call %struct._SubMtx* @SubMtx_new() #6
  %call259 = call i32 @SubMtx_readFromBinaryFile(%struct._SubMtx* %call258, %struct._IO_FILE* %fp) #6
  %cmp260 = icmp eq i32 %call259, 1
  br i1 %cmp260, label %if.end264, label %if.then262

if.then262:                                       ; preds = %for.body257
  %67 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call263 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %67, i8* getelementptr inbounds ([93 x i8]* @.str29, i64 0, i64 0), %struct._FrontMtx* %frontmtx, %struct._IO_FILE* %fp, i32 %call259) #6
  br label %cleanup

if.end264:                                        ; preds = %for.body257
  %colid = getelementptr inbounds %struct._SubMtx* %call258, i64 0, i32 3
  %68 = load i32* %colid, align 4, !tbaa !3
  %idxprom265 = sext i32 %68 to i64
  %69 = load %struct._SubMtx*** %p_mtxLJJ266, align 8, !tbaa !0
  %arrayidx267 = getelementptr inbounds %struct._SubMtx** %69, i64 %idxprom265
  store %struct._SubMtx* %call258, %struct._SubMtx** %arrayidx267, align 8, !tbaa !0
  %inc269 = add nsw i32 %imtx.0791, 1
  %cmp255 = icmp slt i32 %inc269, %65
  br i1 %cmp255, label %for.body257, label %for.end270

for.end270:                                       ; preds = %if.end264, %for.cond254.preheader
  %call271 = call i64 @fread(i8* %64, i64 4, i64 1, %struct._IO_FILE* %fp) #6
  %conv272 = trunc i64 %call271 to i32
  %cmp273 = icmp eq i32 %conv272, 1
  br i1 %cmp273, label %for.cond278.preheader, label %if.then275

for.cond278.preheader:                            ; preds = %for.end270
  %70 = load i32* %nmtx, align 4, !tbaa !3
  %cmp279788 = icmp sgt i32 %70, 0
  br i1 %cmp279788, label %for.body281.lr.ph, label %if.end296

for.body281.lr.ph:                                ; preds = %for.cond278.preheader
  %p_mtxLNJ291 = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 22
  br label %for.body281

if.then275:                                       ; preds = %for.end270
  %71 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call276 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %71, i8* getelementptr inbounds ([68 x i8]* @.str23, i64 0, i64 0), %struct._FrontMtx* %frontmtx, %struct._IO_FILE* %fp, i32 %conv272, i32 1) #6
  br label %cleanup

for.body281:                                      ; preds = %for.body281.lr.ph, %if.end288
  %imtx.1789 = phi i32 [ 0, %for.body281.lr.ph ], [ %inc294, %if.end288 ]
  %call282 = call %struct._SubMtx* @SubMtx_new() #6
  %call283 = call i32 @SubMtx_readFromBinaryFile(%struct._SubMtx* %call282, %struct._IO_FILE* %fp) #6
  %cmp284 = icmp eq i32 %call283, 1
  br i1 %cmp284, label %if.end288, label %if.then286

if.then286:                                       ; preds = %for.body281
  %72 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call287 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %72, i8* getelementptr inbounds ([93 x i8]* @.str29, i64 0, i64 0), %struct._FrontMtx* %frontmtx, %struct._IO_FILE* %fp, i32 %call283) #6
  br label %cleanup

if.end288:                                        ; preds = %for.body281
  %colid289 = getelementptr inbounds %struct._SubMtx* %call282, i64 0, i32 3
  %73 = load i32* %colid289, align 4, !tbaa !3
  %idxprom290 = sext i32 %73 to i64
  %74 = load %struct._SubMtx*** %p_mtxLNJ291, align 8, !tbaa !0
  %arrayidx292 = getelementptr inbounds %struct._SubMtx** %74, i64 %idxprom290
  store %struct._SubMtx* %call282, %struct._SubMtx** %arrayidx292, align 8, !tbaa !0
  %inc294 = add nsw i32 %imtx.1789, 1
  %cmp279 = icmp slt i32 %inc294, %70
  br i1 %cmp279, label %for.body281, label %if.end296

if.end296:                                        ; preds = %for.cond278.preheader, %if.end288, %for.end
  %75 = bitcast i32* %nmtx to i8*
  %call297 = call i64 @fread(i8* %75, i64 4, i64 1, %struct._IO_FILE* %fp) #6
  %conv298 = trunc i64 %call297 to i32
  %cmp299 = icmp eq i32 %conv298, 1
  br i1 %cmp299, label %for.cond304.preheader, label %if.then301

for.cond304.preheader:                            ; preds = %if.end296
  %76 = load i32* %nmtx, align 4, !tbaa !3
  %cmp305786 = icmp sgt i32 %76, 0
  br i1 %cmp305786, label %for.body307.lr.ph, label %for.end320

for.body307.lr.ph:                                ; preds = %for.cond304.preheader
  %p_mtxDJJ316 = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 18
  br label %for.body307

if.then301:                                       ; preds = %if.end296
  %77 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call302 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %77, i8* getelementptr inbounds ([68 x i8]* @.str23, i64 0, i64 0), %struct._FrontMtx* %frontmtx, %struct._IO_FILE* %fp, i32 %conv298, i32 1) #6
  br label %cleanup

for.body307:                                      ; preds = %for.body307.lr.ph, %if.end314
  %imtx.2787 = phi i32 [ 0, %for.body307.lr.ph ], [ %inc319, %if.end314 ]
  %call308 = call %struct._SubMtx* @SubMtx_new() #6
  %call309 = call i32 @SubMtx_readFromBinaryFile(%struct._SubMtx* %call308, %struct._IO_FILE* %fp) #6
  %cmp310 = icmp eq i32 %call309, 1
  br i1 %cmp310, label %if.end314, label %if.then312

if.then312:                                       ; preds = %for.body307
  %78 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call313 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %78, i8* getelementptr inbounds ([93 x i8]* @.str29, i64 0, i64 0), %struct._FrontMtx* %frontmtx, %struct._IO_FILE* %fp, i32 %call309) #6
  br label %cleanup

if.end314:                                        ; preds = %for.body307
  %rowid = getelementptr inbounds %struct._SubMtx* %call308, i64 0, i32 2
  %79 = load i32* %rowid, align 4, !tbaa !3
  %idxprom315 = sext i32 %79 to i64
  %80 = load %struct._SubMtx*** %p_mtxDJJ316, align 8, !tbaa !0
  %arrayidx317 = getelementptr inbounds %struct._SubMtx** %80, i64 %idxprom315
  store %struct._SubMtx* %call308, %struct._SubMtx** %arrayidx317, align 8, !tbaa !0
  %inc319 = add nsw i32 %imtx.2787, 1
  %cmp305 = icmp slt i32 %inc319, %76
  br i1 %cmp305, label %for.body307, label %for.end320

for.end320:                                       ; preds = %if.end314, %for.cond304.preheader
  %call321 = call i64 @fread(i8* %75, i64 4, i64 1, %struct._IO_FILE* %fp) #6
  %conv322 = trunc i64 %call321 to i32
  %cmp323 = icmp eq i32 %conv322, 1
  br i1 %cmp323, label %for.cond328.preheader, label %if.then325

for.cond328.preheader:                            ; preds = %for.end320
  %81 = load i32* %nmtx, align 4, !tbaa !3
  %cmp329784 = icmp sgt i32 %81, 0
  br i1 %cmp329784, label %for.body331.lr.ph, label %for.end345

for.body331.lr.ph:                                ; preds = %for.cond328.preheader
  %p_mtxUJJ341 = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 19
  br label %for.body331

if.then325:                                       ; preds = %for.end320
  %82 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call326 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %82, i8* getelementptr inbounds ([68 x i8]* @.str23, i64 0, i64 0), %struct._FrontMtx* %frontmtx, %struct._IO_FILE* %fp, i32 %conv322, i32 1) #6
  br label %cleanup

for.body331:                                      ; preds = %for.body331.lr.ph, %if.end338
  %imtx.3785 = phi i32 [ 0, %for.body331.lr.ph ], [ %inc344, %if.end338 ]
  %call332 = call %struct._SubMtx* @SubMtx_new() #6
  %call333 = call i32 @SubMtx_readFromBinaryFile(%struct._SubMtx* %call332, %struct._IO_FILE* %fp) #6
  %cmp334 = icmp eq i32 %call333, 1
  br i1 %cmp334, label %if.end338, label %if.then336

if.then336:                                       ; preds = %for.body331
  %83 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call337 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %83, i8* getelementptr inbounds ([93 x i8]* @.str29, i64 0, i64 0), %struct._FrontMtx* %frontmtx, %struct._IO_FILE* %fp, i32 %call333) #6
  br label %cleanup

if.end338:                                        ; preds = %for.body331
  %rowid339 = getelementptr inbounds %struct._SubMtx* %call332, i64 0, i32 2
  %84 = load i32* %rowid339, align 4, !tbaa !3
  %idxprom340 = sext i32 %84 to i64
  %85 = load %struct._SubMtx*** %p_mtxUJJ341, align 8, !tbaa !0
  %arrayidx342 = getelementptr inbounds %struct._SubMtx** %85, i64 %idxprom340
  store %struct._SubMtx* %call332, %struct._SubMtx** %arrayidx342, align 8, !tbaa !0
  %inc344 = add nsw i32 %imtx.3785, 1
  %cmp329 = icmp slt i32 %inc344, %81
  br i1 %cmp329, label %for.body331, label %for.end345

for.end345:                                       ; preds = %if.end338, %for.cond328.preheader
  %call346 = call i64 @fread(i8* %75, i64 4, i64 1, %struct._IO_FILE* %fp) #6
  %conv347 = trunc i64 %call346 to i32
  %cmp348 = icmp eq i32 %conv347, 1
  br i1 %cmp348, label %for.cond353.preheader, label %if.then350

for.cond353.preheader:                            ; preds = %for.end345
  %86 = load i32* %nmtx, align 4, !tbaa !3
  %cmp354782 = icmp sgt i32 %86, 0
  br i1 %cmp354782, label %for.body356.lr.ph, label %cleanup

for.body356.lr.ph:                                ; preds = %for.cond353.preheader
  %p_mtxUJN366 = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 20
  br label %for.body356

if.then350:                                       ; preds = %for.end345
  %87 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call351 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %87, i8* getelementptr inbounds ([68 x i8]* @.str23, i64 0, i64 0), %struct._FrontMtx* %frontmtx, %struct._IO_FILE* %fp, i32 %conv347, i32 1) #6
  br label %cleanup

for.body356:                                      ; preds = %for.body356.lr.ph, %if.end363
  %imtx.4783 = phi i32 [ 0, %for.body356.lr.ph ], [ %inc369, %if.end363 ]
  %call357 = call %struct._SubMtx* @SubMtx_new() #6
  %call358 = call i32 @SubMtx_readFromBinaryFile(%struct._SubMtx* %call357, %struct._IO_FILE* %fp) #6
  %cmp359 = icmp eq i32 %call358, 1
  br i1 %cmp359, label %if.end363, label %if.then361

if.then361:                                       ; preds = %for.body356
  %88 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call362 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %88, i8* getelementptr inbounds ([93 x i8]* @.str29, i64 0, i64 0), %struct._FrontMtx* %frontmtx, %struct._IO_FILE* %fp, i32 %call358) #6
  br label %cleanup

if.end363:                                        ; preds = %for.body356
  %rowid364 = getelementptr inbounds %struct._SubMtx* %call357, i64 0, i32 2
  %89 = load i32* %rowid364, align 4, !tbaa !3
  %idxprom365 = sext i32 %89 to i64
  %90 = load %struct._SubMtx*** %p_mtxUJN366, align 8, !tbaa !0
  %arrayidx367 = getelementptr inbounds %struct._SubMtx** %90, i64 %idxprom365
  store %struct._SubMtx* %call357, %struct._SubMtx** %arrayidx367, align 8, !tbaa !0
  %inc369 = add nsw i32 %imtx.4783, 1
  %cmp354 = icmp slt i32 %inc369, %86
  br i1 %cmp354, label %for.body356, label %cleanup

if.else371:                                       ; preds = %if.end86
  %91 = load i32* %symmetryflag, align 4, !tbaa !3
  %cmp373 = icmp eq i32 %91, 2
  br i1 %cmp373, label %if.then375, label %if.end386

if.then375:                                       ; preds = %if.else371
  %call376 = call %struct._IVL* @IVL_new() #6
  %lowerblockIVL = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 16
  store %struct._IVL* %call376, %struct._IVL** %lowerblockIVL, align 8, !tbaa !0
  %type378 = getelementptr inbounds %struct._IVL* %call376, i64 0, i32 0
  store i32 1, i32* %type378, align 4, !tbaa !3
  %call380 = call i32 @IVL_readFromBinaryFile(%struct._IVL* %call376, %struct._IO_FILE* %fp) #6
  %cmp381 = icmp eq i32 %call380, 1
  br i1 %cmp381, label %if.end386, label %if.then383

if.then383:                                       ; preds = %if.then375
  %92 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call384 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %92, i8* getelementptr inbounds ([95 x i8]* @.str30, i64 0, i64 0), %struct._FrontMtx* %frontmtx, %struct._IO_FILE* %fp, i32 %call380) #6
  br label %cleanup

if.end386:                                        ; preds = %if.then375, %if.else371
  %call387 = call %struct._IVL* @IVL_new() #6
  %upperblockIVL = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 17
  store %struct._IVL* %call387, %struct._IVL** %upperblockIVL, align 8, !tbaa !0
  %type389 = getelementptr inbounds %struct._IVL* %call387, i64 0, i32 0
  store i32 1, i32* %type389, align 4, !tbaa !3
  %call391 = call i32 @IVL_readFromBinaryFile(%struct._IVL* %call387, %struct._IO_FILE* %fp) #6
  %cmp392 = icmp eq i32 %call391, 1
  br i1 %cmp392, label %if.end396, label %if.then394

if.then394:                                       ; preds = %if.end386
  %93 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call395 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %93, i8* getelementptr inbounds ([95 x i8]* @.str31, i64 0, i64 0), %struct._FrontMtx* %frontmtx, %struct._IO_FILE* %fp, i32 %call391) #6
  br label %cleanup

if.end396:                                        ; preds = %if.end386
  %94 = load i32* %symmetryflag, align 4, !tbaa !3
  %cmp398 = icmp eq i32 %94, 2
  br i1 %cmp398, label %if.then400, label %if.end428

if.then400:                                       ; preds = %if.end396
  %call401 = call %struct._I2Ohash* @I2Ohash_new() #6
  %lowerhash = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 23
  store %struct._I2Ohash* %call401, %struct._I2Ohash** %lowerhash, align 8, !tbaa !0
  %95 = bitcast i32* %nmtx to i8*
  %call402 = call i64 @fread(i8* %95, i64 4, i64 1, %struct._IO_FILE* %fp) #6
  %conv403 = trunc i64 %call402 to i32
  %cmp404 = icmp eq i32 %conv403, 1
  br i1 %cmp404, label %if.end408, label %if.then406

if.then406:                                       ; preds = %if.then400
  %96 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call407 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %96, i8* getelementptr inbounds ([68 x i8]* @.str23, i64 0, i64 0), %struct._FrontMtx* %frontmtx, %struct._IO_FILE* %fp, i32 %conv403, i32 1) #6
  br label %cleanup

if.end408:                                        ; preds = %if.then400
  %97 = load %struct._I2Ohash** %lowerhash, align 8, !tbaa !0
  %98 = load i32* %nfront8, align 4, !tbaa !3
  %sub = add nsw i32 %98, -1
  %99 = load i32* %nmtx, align 4, !tbaa !3
  call void @I2Ohash_init(%struct._I2Ohash* %97, i32 %sub, i32 %99, i32 0) #6
  %cmp412803 = icmp sgt i32 %99, 0
  br i1 %cmp412803, label %for.body414, label %if.end428

for.body414:                                      ; preds = %if.end408, %if.end421
  %KJ.0804 = phi i32 [ %inc426, %if.end421 ], [ 0, %if.end408 ]
  %call415 = call %struct._SubMtx* @SubMtx_new() #6
  %call416 = call i32 @SubMtx_readFromBinaryFile(%struct._SubMtx* %call415, %struct._IO_FILE* %fp) #6
  %cmp417 = icmp eq i32 %call416, 1
  br i1 %cmp417, label %if.end421, label %if.then419

if.then419:                                       ; preds = %for.body414
  %100 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call420 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %100, i8* getelementptr inbounds ([94 x i8]* @.str32, i64 0, i64 0), %struct._FrontMtx* %frontmtx, %struct._IO_FILE* %fp, i32 %call416) #6
  br label %cleanup

if.end421:                                        ; preds = %for.body414
  %101 = load %struct._I2Ohash** %lowerhash, align 8, !tbaa !0
  %rowid423 = getelementptr inbounds %struct._SubMtx* %call415, i64 0, i32 2
  %102 = load i32* %rowid423, align 4, !tbaa !3
  %colid424 = getelementptr inbounds %struct._SubMtx* %call415, i64 0, i32 3
  %103 = load i32* %colid424, align 4, !tbaa !3
  %104 = bitcast %struct._SubMtx* %call415 to i8*
  call void @I2Ohash_insert(%struct._I2Ohash* %101, i32 %102, i32 %103, i8* %104) #6
  %inc426 = add nsw i32 %KJ.0804, 1
  %cmp412 = icmp slt i32 %inc426, %99
  br i1 %cmp412, label %for.body414, label %if.end428

if.end428:                                        ; preds = %if.end408, %if.end421, %if.end396
  %cmp429 = icmp sgt i32 %5, 0
  br i1 %cmp429, label %if.then431, label %if.else444

if.then431:                                       ; preds = %if.end428
  %sext823 = shl i64 %4, 32
  %mul433 = ashr exact i64 %sext823, 29
  %call434 = call noalias i8* @malloc(i64 %mul433) #6
  %105 = bitcast i8* %call434 to %struct._SubMtx**
  %p_mtxDJJ435 = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 18
  store %struct._SubMtx** %105, %struct._SubMtx*** %p_mtxDJJ435, align 8, !tbaa !0
  %cmp436 = icmp eq i8* %call434, null
  br i1 %cmp436, label %if.then438, label %for.body458.lr.ph

if.then438:                                       ; preds = %if.then431
  %106 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call441 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %106, i8* getelementptr inbounds ([49 x i8]* @.str13, i64 0, i64 0), i64 %mul433, i32 840, i8* getelementptr inbounds ([81 x i8]* @.str14, i64 0, i64 0)) #6
  call void @exit(i32 -1) #9
  unreachable

if.else444:                                       ; preds = %if.end428
  %cmp445 = icmp eq i32 %5, 0
  br i1 %cmp445, label %for.cond455.preheader, label %if.else449

for.cond455.preheader:                            ; preds = %if.else444
  %p_mtxDJJ448 = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 18
  store %struct._SubMtx** null, %struct._SubMtx*** %p_mtxDJJ448, align 8, !tbaa !0
  br label %for.end464

for.body458.lr.ph:                                ; preds = %if.then431
  %p_mtxDJJ460 = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 18
  br label %for.body458

if.else449:                                       ; preds = %if.else444
  %107 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %sext = shl i64 %4, 32
  %mul451 = ashr exact i64 %sext, 29
  %call452 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %107, i8* getelementptr inbounds ([47 x i8]* @.str15, i64 0, i64 0), i64 %mul451, i32 840, i8* getelementptr inbounds ([81 x i8]* @.str14, i64 0, i64 0)) #6
  call void @exit(i32 -1) #9
  unreachable

for.body458:                                      ; preds = %for.body458.for.body458_crit_edge, %for.body458.lr.ph
  %108 = phi %struct._SubMtx** [ %105, %for.body458.lr.ph ], [ %.pre822, %for.body458.for.body458_crit_edge ]
  %indvars.iv816 = phi i64 [ 0, %for.body458.lr.ph ], [ %indvars.iv.next817, %for.body458.for.body458_crit_edge ]
  %arrayidx461 = getelementptr inbounds %struct._SubMtx** %108, i64 %indvars.iv816
  store %struct._SubMtx* null, %struct._SubMtx** %arrayidx461, align 8, !tbaa !0
  %indvars.iv.next817 = add i64 %indvars.iv816, 1
  %lftr.wideiv818 = trunc i64 %indvars.iv.next817 to i32
  %exitcond819 = icmp eq i32 %lftr.wideiv818, %5
  br i1 %exitcond819, label %for.end464, label %for.body458.for.body458_crit_edge

for.body458.for.body458_crit_edge:                ; preds = %for.body458
  %.pre822 = load %struct._SubMtx*** %p_mtxDJJ460, align 8, !tbaa !0
  br label %for.body458

for.end464:                                       ; preds = %for.body458, %for.cond455.preheader
  %109 = bitcast i32* %nmtx to i8*
  %call465 = call i64 @fread(i8* %109, i64 4, i64 1, %struct._IO_FILE* %fp) #6
  %conv466 = trunc i64 %call465 to i32
  %cmp467 = icmp eq i32 %conv466, 1
  br i1 %cmp467, label %for.cond472.preheader, label %if.then469

for.cond472.preheader:                            ; preds = %for.end464
  %110 = load i32* %nmtx, align 4, !tbaa !3
  %cmp473799 = icmp sgt i32 %110, 0
  br i1 %cmp473799, label %for.body475.lr.ph, label %for.end489

for.body475.lr.ph:                                ; preds = %for.cond472.preheader
  %p_mtxDJJ485 = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 18
  br label %for.body475

if.then469:                                       ; preds = %for.end464
  %111 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call470 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %111, i8* getelementptr inbounds ([68 x i8]* @.str23, i64 0, i64 0), %struct._FrontMtx* %frontmtx, %struct._IO_FILE* %fp, i32 %conv466, i32 1) #6
  br label %cleanup

for.body475:                                      ; preds = %for.body475.lr.ph, %if.end482
  %J.3800 = phi i32 [ 0, %for.body475.lr.ph ], [ %inc488, %if.end482 ]
  %call476 = call %struct._SubMtx* @SubMtx_new() #6
  %call477 = call i32 @SubMtx_readFromBinaryFile(%struct._SubMtx* %call476, %struct._IO_FILE* %fp) #6
  %cmp478 = icmp eq i32 %call477, 1
  br i1 %cmp478, label %if.end482, label %if.then480

if.then480:                                       ; preds = %for.body475
  %112 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call481 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %112, i8* getelementptr inbounds ([93 x i8]* @.str29, i64 0, i64 0), %struct._FrontMtx* %frontmtx, %struct._IO_FILE* %fp, i32 %call477) #6
  br label %cleanup

if.end482:                                        ; preds = %for.body475
  %rowid483 = getelementptr inbounds %struct._SubMtx* %call476, i64 0, i32 2
  %113 = load i32* %rowid483, align 4, !tbaa !3
  %idxprom484 = sext i32 %113 to i64
  %114 = load %struct._SubMtx*** %p_mtxDJJ485, align 8, !tbaa !0
  %arrayidx486 = getelementptr inbounds %struct._SubMtx** %114, i64 %idxprom484
  store %struct._SubMtx* %call476, %struct._SubMtx** %arrayidx486, align 8, !tbaa !0
  %inc488 = add nsw i32 %J.3800, 1
  %cmp473 = icmp slt i32 %inc488, %110
  br i1 %cmp473, label %for.body475, label %for.end489

for.end489:                                       ; preds = %if.end482, %for.cond472.preheader
  %call490 = call %struct._I2Ohash* @I2Ohash_new() #6
  %upperhash = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 24
  store %struct._I2Ohash* %call490, %struct._I2Ohash** %upperhash, align 8, !tbaa !0
  %call491 = call i64 @fread(i8* %109, i64 4, i64 1, %struct._IO_FILE* %fp) #6
  %conv492 = trunc i64 %call491 to i32
  %cmp493 = icmp eq i32 %conv492, 1
  br i1 %cmp493, label %if.end497, label %if.then495

if.then495:                                       ; preds = %for.end489
  %115 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call496 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %115, i8* getelementptr inbounds ([68 x i8]* @.str23, i64 0, i64 0), %struct._FrontMtx* %frontmtx, %struct._IO_FILE* %fp, i32 %conv492, i32 1) #6
  br label %cleanup

if.end497:                                        ; preds = %for.end489
  %116 = load %struct._I2Ohash** %upperhash, align 8, !tbaa !0
  %sub499 = add nsw i32 %5, -1
  %117 = load i32* %nmtx, align 4, !tbaa !3
  call void @I2Ohash_init(%struct._I2Ohash* %116, i32 %sub499, i32 %117, i32 0) #6
  %cmp501797 = icmp sgt i32 %117, 0
  br i1 %cmp501797, label %for.body503, label %cleanup

for.body503:                                      ; preds = %if.end497, %if.end510
  %JK.0798 = phi i32 [ %inc515, %if.end510 ], [ 0, %if.end497 ]
  %call504 = call %struct._SubMtx* @SubMtx_new() #6
  %call505 = call i32 @SubMtx_readFromBinaryFile(%struct._SubMtx* %call504, %struct._IO_FILE* %fp) #6
  %cmp506 = icmp eq i32 %call505, 1
  br i1 %cmp506, label %if.end510, label %if.then508

if.then508:                                       ; preds = %for.body503
  %118 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call509 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %118, i8* getelementptr inbounds ([94 x i8]* @.str33, i64 0, i64 0), %struct._FrontMtx* %frontmtx, %struct._IO_FILE* %fp, i32 %call505) #6
  br label %cleanup

if.end510:                                        ; preds = %for.body503
  %119 = load %struct._I2Ohash** %upperhash, align 8, !tbaa !0
  %rowid512 = getelementptr inbounds %struct._SubMtx* %call504, i64 0, i32 2
  %120 = load i32* %rowid512, align 4, !tbaa !3
  %colid513 = getelementptr inbounds %struct._SubMtx* %call504, i64 0, i32 3
  %121 = load i32* %colid513, align 4, !tbaa !3
  %122 = bitcast %struct._SubMtx* %call504 to i8*
  call void @I2Ohash_insert(%struct._I2Ohash* %119, i32 %120, i32 %121, i8* %122) #6
  %inc515 = add nsw i32 %JK.0798, 1
  %cmp501 = icmp slt i32 %inc515, %117
  br i1 %cmp501, label %for.body503, label %cleanup

cleanup:                                          ; preds = %if.end497, %if.end510, %for.cond353.preheader, %if.end363, %if.then508, %if.then495, %if.then480, %if.then469, %if.then419, %if.then406, %if.then394, %if.then383, %if.then361, %if.then350, %if.then336, %if.then325, %if.then312, %if.then301, %if.then286, %if.then275, %if.then262, %if.then251, %if.then83, %if.then72, %if.then47, %if.then35, %if.then23, %if.then5, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %if.then5 ], [ 0, %if.then23 ], [ 0, %if.then35 ], [ 0, %if.then47 ], [ 0, %if.then72 ], [ 0, %if.then83 ], [ 0, %if.then251 ], [ 0, %if.then262 ], [ 0, %if.then275 ], [ 0, %if.then286 ], [ 0, %if.then301 ], [ 0, %if.then312 ], [ 0, %if.then325 ], [ 0, %if.then336 ], [ 0, %if.then350 ], [ 0, %if.then361 ], [ 0, %if.then383 ], [ 0, %if.then394 ], [ 0, %if.then406 ], [ 0, %if.then419 ], [ 0, %if.then469 ], [ 0, %if.then480 ], [ 0, %if.then495 ], [ 0, %if.then508 ], [ 1, %if.end363 ], [ 1, %for.cond353.preheader ], [ 1, %if.end510 ], [ 1, %if.end497 ]
  call void @llvm.lifetime.end(i64 40, i8* %0) #3
  ret i32 %retval.0
}

; Function Attrs: nounwind optsize
declare i32 @fclose(%struct._IO_FILE* nocapture) #1

; Function Attrs: nounwind optsize uwtable
define i32 @FrontMtx_readFromFormattedFile(%struct._FrontMtx* %frontmtx, %struct._IO_FILE* %fp) #0 {
entry:
  %nmtx = alloca i32, align 4
  %itemp = alloca [10 x i32], align 16
  %0 = bitcast [10 x i32]* %itemp to i8*
  call void @llvm.lifetime.start(i64 40, i8* %0) #3
  %cmp = icmp eq %struct._FrontMtx* %frontmtx, null
  %cmp1 = icmp eq %struct._IO_FILE* %fp, null
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([61 x i8]* @.str5, i64 0, i64 0), %struct._FrontMtx* %frontmtx, %struct._IO_FILE* %fp) #6
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @FrontMtx_clearData(%struct._FrontMtx* %frontmtx) #6
  %arraydecay = getelementptr inbounds [10 x i32]* %itemp, i64 0, i64 0
  %call2 = call i32 @IVfscanf(%struct._IO_FILE* %fp, i32 10, i32* %arraydecay) #6
  %cmp3 = icmp eq i32 %call2, 10
  br i1 %cmp3, label %if.end6, label %if.then4

if.then4:                                         ; preds = %if.end
  %2 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call5 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([71 x i8]* @.str6, i64 0, i64 0), %struct._FrontMtx* %frontmtx, %struct._IO_FILE* %fp, i32 %call2, i32 10) #6
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %3 = bitcast [10 x i32]* %itemp to i64*
  %4 = load i64* %3, align 16
  %5 = trunc i64 %4 to i32
  %nfront7 = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 0
  store i32 %5, i32* %nfront7, align 4, !tbaa !3
  %6 = lshr i64 %4, 32
  %7 = trunc i64 %6 to i32
  %neqns = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 1
  store i32 %7, i32* %neqns, align 4, !tbaa !3
  %arrayidx9 = getelementptr inbounds [10 x i32]* %itemp, i64 0, i64 2
  %8 = bitcast i32* %arrayidx9 to i64*
  %9 = load i64* %8, align 8
  %10 = trunc i64 %9 to i32
  %type = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 2
  store i32 %10, i32* %type, align 4, !tbaa !3
  %11 = lshr i64 %9, 32
  %12 = trunc i64 %11 to i32
  %symmetryflag = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 3
  store i32 %12, i32* %symmetryflag, align 4, !tbaa !3
  %arrayidx11 = getelementptr inbounds [10 x i32]* %itemp, i64 0, i64 4
  %13 = bitcast i32* %arrayidx11 to i64*
  %14 = load i64* %13, align 16
  %15 = trunc i64 %14 to i32
  %pivotingflag = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 5
  store i32 %15, i32* %pivotingflag, align 4, !tbaa !3
  %16 = lshr i64 %14, 32
  %17 = trunc i64 %16 to i32
  %sparsityflag = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 4
  store i32 %17, i32* %sparsityflag, align 4, !tbaa !3
  %arrayidx13 = getelementptr inbounds [10 x i32]* %itemp, i64 0, i64 6
  %18 = bitcast i32* %arrayidx13 to i64*
  %19 = load i64* %18, align 8
  %20 = trunc i64 %19 to i32
  %dataMode = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 6
  store i32 %20, i32* %dataMode, align 4, !tbaa !3
  %21 = lshr i64 %19, 32
  %22 = trunc i64 %21 to i32
  %nentD = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 7
  store i32 %22, i32* %nentD, align 4, !tbaa !3
  %arrayidx15 = getelementptr inbounds [10 x i32]* %itemp, i64 0, i64 8
  %23 = bitcast i32* %arrayidx15 to i64*
  %24 = load i64* %23, align 16
  %25 = trunc i64 %24 to i32
  %nentL = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 8
  store i32 %25, i32* %nentL, align 4, !tbaa !3
  %26 = lshr i64 %24, 32
  %27 = trunc i64 %26 to i32
  %nentU = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 9
  store i32 %27, i32* %nentU, align 4, !tbaa !3
  %call17 = call %struct._ETree* @ETree_new() #6
  %frontETree = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 11
  store %struct._ETree* %call17, %struct._ETree** %frontETree, align 8, !tbaa !0
  %call19 = call i32 @ETree_readFromFormattedFile(%struct._ETree* %call17, %struct._IO_FILE* %fp) #6
  %cmp20 = icmp eq i32 %call19, 1
  br i1 %cmp20, label %if.end23, label %if.then21

if.then21:                                        ; preds = %if.end6
  %28 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call22 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %28, i8* getelementptr inbounds ([95 x i8]* @.str7, i64 0, i64 0), %struct._FrontMtx* %frontmtx, %struct._IO_FILE* %fp, i32 %call19) #6
  br label %cleanup

if.end23:                                         ; preds = %if.end6
  %29 = load %struct._ETree** %frontETree, align 8, !tbaa !0
  %tree = getelementptr inbounds %struct._ETree* %29, i64 0, i32 2
  %30 = load %struct._Tree** %tree, align 8, !tbaa !0
  %tree25 = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 10
  store %struct._Tree* %30, %struct._Tree** %tree25, align 8, !tbaa !0
  %call26 = call %struct._IVL* @IVL_new() #6
  %symbfacIVL = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 13
  store %struct._IVL* %call26, %struct._IVL** %symbfacIVL, align 8, !tbaa !0
  %type28 = getelementptr inbounds %struct._IVL* %call26, i64 0, i32 0
  store i32 1, i32* %type28, align 4, !tbaa !3
  %call30 = call i32 @IVL_readFromFormattedFile(%struct._IVL* %call26, %struct._IO_FILE* %fp) #6
  %cmp31 = icmp eq i32 %call30, 1
  br i1 %cmp31, label %if.end34, label %if.then32

if.then32:                                        ; preds = %if.end23
  %31 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call33 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %31, i8* getelementptr inbounds ([95 x i8]* @.str8, i64 0, i64 0), %struct._FrontMtx* %frontmtx, %struct._IO_FILE* %fp, i32 %call30) #6
  br label %cleanup

if.end34:                                         ; preds = %if.end23
  %call35 = call %struct._IV* @IV_new() #6
  %frontsizesIV = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 12
  store %struct._IV* %call35, %struct._IV** %frontsizesIV, align 8, !tbaa !0
  %32 = load i32* %pivotingflag, align 4, !tbaa !3
  %cmp37 = icmp eq i32 %32, 1
  br i1 %cmp37, label %if.then38, label %if.else

if.then38:                                        ; preds = %if.end34
  %call40 = call i32 @IV_readFromFormattedFile(%struct._IV* %call35, %struct._IO_FILE* %fp) #6
  %cmp41 = icmp eq i32 %call40, 1
  br i1 %cmp41, label %if.end51, label %if.then42

if.then42:                                        ; preds = %if.then38
  %33 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call43 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %33, i8* getelementptr inbounds ([97 x i8]* @.str9, i64 0, i64 0), %struct._FrontMtx* %frontmtx, %struct._IO_FILE* %fp, i32 %call40) #6
  br label %cleanup

if.else:                                          ; preds = %if.end34
  %34 = load i32* %nfront7, align 4, !tbaa !3
  call void @IV_init(%struct._IV* %call35, i32 %34, i32* null) #6
  %35 = load %struct._IV** %frontsizesIV, align 8, !tbaa !0
  %call48 = call i32* @IV_entries(%struct._IV* %35) #6
  %36 = load %struct._ETree** %frontETree, align 8, !tbaa !0
  %call50 = call i32* @ETree_nodwghts(%struct._ETree* %36) #6
  call void @IVcopy(i32 %5, i32* %call48, i32* %call50) #6
  br label %if.end51

if.end51:                                         ; preds = %if.then38, %if.else
  %37 = load i32* %pivotingflag, align 4, !tbaa !3
  %cmp53 = icmp eq i32 %37, 1
  br i1 %cmp53, label %if.then54, label %if.end79

if.then54:                                        ; preds = %if.end51
  %38 = load i32* %symmetryflag, align 4, !tbaa !3
  %cmp56 = icmp eq i32 %38, 2
  br i1 %cmp56, label %if.then57, label %if.end67

if.then57:                                        ; preds = %if.then54
  %call58 = call %struct._IVL* @IVL_new() #6
  %rowadjIVL = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 14
  store %struct._IVL* %call58, %struct._IVL** %rowadjIVL, align 8, !tbaa !0
  %type60 = getelementptr inbounds %struct._IVL* %call58, i64 0, i32 0
  store i32 1, i32* %type60, align 4, !tbaa !3
  %call62 = call i32 @IVL_readFromFormattedFile(%struct._IVL* %call58, %struct._IO_FILE* %fp) #6
  %cmp63 = icmp eq i32 %call62, 1
  br i1 %cmp63, label %if.end67, label %if.then64

if.then64:                                        ; preds = %if.then57
  %39 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call65 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %39, i8* getelementptr inbounds ([94 x i8]* @.str10, i64 0, i64 0), %struct._FrontMtx* %frontmtx, %struct._IO_FILE* %fp, i32 %call62) #6
  br label %cleanup

if.end67:                                         ; preds = %if.then57, %if.then54
  %call68 = call %struct._IVL* @IVL_new() #6
  %coladjIVL = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 15
  store %struct._IVL* %call68, %struct._IVL** %coladjIVL, align 8, !tbaa !0
  %type70 = getelementptr inbounds %struct._IVL* %call68, i64 0, i32 0
  store i32 1, i32* %type70, align 4, !tbaa !3
  %call72 = call i32 @IVL_readFromFormattedFile(%struct._IVL* %call68, %struct._IO_FILE* %fp) #6
  %cmp73 = icmp eq i32 %call72, 1
  br i1 %cmp73, label %if.end76, label %if.then74

if.then74:                                        ; preds = %if.end67
  %40 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call75 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %40, i8* getelementptr inbounds ([94 x i8]* @.str11, i64 0, i64 0), %struct._FrontMtx* %frontmtx, %struct._IO_FILE* %fp, i32 %call72) #6
  br label %cleanup

if.end76:                                         ; preds = %if.end67
  %41 = load %struct._IO_FILE** @stdout, align 8, !tbaa !0
  %42 = call i64 @fwrite(i8* getelementptr inbounds ([20 x i8]* @.str12, i64 0, i64 0), i64 19, i64 1, %struct._IO_FILE* %41) #3
  %43 = load %struct._IO_FILE** @stdout, align 8, !tbaa !0
  %call78 = call i32 @fflush(%struct._IO_FILE* %43) #6
  br label %if.end79

if.end79:                                         ; preds = %if.end76, %if.end51
  %44 = load i32* %dataMode, align 4, !tbaa !3
  %cmp81 = icmp eq i32 %44, 1
  br i1 %cmp81, label %if.then82, label %if.else331

if.then82:                                        ; preds = %if.end79
  %cmp83 = icmp sgt i32 %5, 0
  br i1 %cmp83, label %if.then84, label %if.else94

if.then84:                                        ; preds = %if.then82
  %sext744 = shl i64 %4, 32
  %mul = ashr exact i64 %sext744, 29
  %call85 = call noalias i8* @malloc(i64 %mul) #6
  %45 = bitcast i8* %call85 to %struct._SubMtx**
  %p_mtxDJJ = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 18
  store %struct._SubMtx** %45, %struct._SubMtx*** %p_mtxDJJ, align 8, !tbaa !0
  %cmp86 = icmp eq i8* %call85, null
  br i1 %cmp86, label %if.then88, label %if.then107

if.then88:                                        ; preds = %if.then84
  %46 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call91 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %46, i8* getelementptr inbounds ([49 x i8]* @.str13, i64 0, i64 0), i64 %mul, i32 262, i8* getelementptr inbounds ([81 x i8]* @.str14, i64 0, i64 0)) #6
  call void @exit(i32 -1) #9
  unreachable

if.else94:                                        ; preds = %if.then82
  %cmp95 = icmp eq i32 %5, 0
  br i1 %cmp95, label %if.then147, label %if.else99

if.else99:                                        ; preds = %if.else94
  %47 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %sext741 = shl i64 %4, 32
  %mul101 = ashr exact i64 %sext741, 29
  %call102 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %47, i8* getelementptr inbounds ([47 x i8]* @.str15, i64 0, i64 0), i64 %mul101, i32 262, i8* getelementptr inbounds ([81 x i8]* @.str14, i64 0, i64 0)) #6
  call void @exit(i32 -1) #9
  unreachable

if.then107:                                       ; preds = %if.then84
  %call110 = call noalias i8* @malloc(i64 %mul) #6
  %48 = bitcast i8* %call110 to %struct._SubMtx**
  %p_mtxUJJ = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 19
  store %struct._SubMtx** %48, %struct._SubMtx*** %p_mtxUJJ, align 8, !tbaa !0
  %cmp111 = icmp eq i8* %call110, null
  br i1 %cmp111, label %if.then113, label %if.then132

if.then113:                                       ; preds = %if.then107
  %49 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call116 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %49, i8* getelementptr inbounds ([49 x i8]* @.str13, i64 0, i64 0), i64 %mul, i32 263, i8* getelementptr inbounds ([81 x i8]* @.str14, i64 0, i64 0)) #6
  call void @exit(i32 -1) #9
  unreachable

if.then132:                                       ; preds = %if.then107
  %call135 = call noalias i8* @malloc(i64 %mul) #6
  %50 = bitcast i8* %call135 to %struct._SubMtx**
  %p_mtxUJN = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 20
  store %struct._SubMtx** %50, %struct._SubMtx*** %p_mtxUJN, align 8, !tbaa !0
  %cmp136 = icmp eq i8* %call135, null
  br i1 %cmp136, label %if.then138, label %for.cond.preheader

if.then138:                                       ; preds = %if.then132
  %51 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call141 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %51, i8* getelementptr inbounds ([49 x i8]* @.str13, i64 0, i64 0), i64 %mul, i32 264, i8* getelementptr inbounds ([81 x i8]* @.str14, i64 0, i64 0)) #6
  call void @exit(i32 -1) #9
  unreachable

if.then147:                                       ; preds = %if.else94
  %p_mtxDJJ98 = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 18
  %52 = bitcast %struct._SubMtx*** %p_mtxDJJ98 to i8*
  call void @llvm.memset.p0i8.i64(i8* %52, i8 0, i64 24, i32 8, i1 false)
  br label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.then132, %if.then147
  %53 = phi %struct._SubMtx** [ %45, %if.then132 ], [ null, %if.then147 ]
  br i1 %cmp83, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %p_mtxDJJ157 = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 18
  %p_mtxUJJ160 = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 19
  %p_mtxUJN163 = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 20
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %54 = phi %struct._SubMtx** [ %53, %for.body.lr.ph ], [ %.pre738, %for.body.for.body_crit_edge ]
  %indvars.iv727 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next728, %for.body.for.body_crit_edge ]
  %arrayidx158 = getelementptr inbounds %struct._SubMtx** %54, i64 %indvars.iv727
  store %struct._SubMtx* null, %struct._SubMtx** %arrayidx158, align 8, !tbaa !0
  %55 = load %struct._SubMtx*** %p_mtxUJJ160, align 8, !tbaa !0
  %arrayidx161 = getelementptr inbounds %struct._SubMtx** %55, i64 %indvars.iv727
  store %struct._SubMtx* null, %struct._SubMtx** %arrayidx161, align 8, !tbaa !0
  %56 = load %struct._SubMtx*** %p_mtxUJN163, align 8, !tbaa !0
  %arrayidx164 = getelementptr inbounds %struct._SubMtx** %56, i64 %indvars.iv727
  store %struct._SubMtx* null, %struct._SubMtx** %arrayidx164, align 8, !tbaa !0
  %indvars.iv.next728 = add i64 %indvars.iv727, 1
  %lftr.wideiv729 = trunc i64 %indvars.iv.next728 to i32
  %exitcond730 = icmp eq i32 %lftr.wideiv729, %5
  br i1 %exitcond730, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  %.pre738 = load %struct._SubMtx*** %p_mtxDJJ157, align 8, !tbaa !0
  br label %for.body

for.end:                                          ; preds = %for.body, %for.cond.preheader
  %57 = load i32* %symmetryflag, align 4, !tbaa !3
  %cmp166 = icmp eq i32 %57, 2
  br i1 %cmp166, label %if.then168, label %if.end274

if.then168:                                       ; preds = %for.end
  br i1 %cmp83, label %if.then171, label %if.else183

if.then171:                                       ; preds = %if.then168
  %sext743 = shl i64 %4, 32
  %mul173 = ashr exact i64 %sext743, 29
  %call174 = call noalias i8* @malloc(i64 %mul173) #6
  %58 = bitcast i8* %call174 to %struct._SubMtx**
  %p_mtxLJJ = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 21
  store %struct._SubMtx** %58, %struct._SubMtx*** %p_mtxLJJ, align 8, !tbaa !0
  %cmp175 = icmp eq i8* %call174, null
  br i1 %cmp175, label %if.then177, label %if.then196

if.then177:                                       ; preds = %if.then171
  %59 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call180 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %59, i8* getelementptr inbounds ([49 x i8]* @.str13, i64 0, i64 0), i64 %mul173, i32 271, i8* getelementptr inbounds ([81 x i8]* @.str14, i64 0, i64 0)) #6
  call void @exit(i32 -1) #9
  unreachable

if.else183:                                       ; preds = %if.then168
  %cmp184 = icmp eq i32 %5, 0
  br i1 %cmp184, label %if.then211, label %if.else188

if.else188:                                       ; preds = %if.else183
  %60 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %sext742 = shl i64 %4, 32
  %mul190 = ashr exact i64 %sext742, 29
  %call191 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %60, i8* getelementptr inbounds ([47 x i8]* @.str15, i64 0, i64 0), i64 %mul190, i32 271, i8* getelementptr inbounds ([81 x i8]* @.str14, i64 0, i64 0)) #6
  call void @exit(i32 -1) #9
  unreachable

if.then196:                                       ; preds = %if.then171
  %call199 = call noalias i8* @malloc(i64 %mul173) #6
  %61 = bitcast i8* %call199 to %struct._SubMtx**
  %p_mtxLNJ = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 22
  store %struct._SubMtx** %61, %struct._SubMtx*** %p_mtxLNJ, align 8, !tbaa !0
  %cmp200 = icmp eq i8* %call199, null
  br i1 %cmp200, label %if.then202, label %for.cond219.preheader

if.then202:                                       ; preds = %if.then196
  %62 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call205 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %62, i8* getelementptr inbounds ([49 x i8]* @.str13, i64 0, i64 0), i64 %mul173, i32 272, i8* getelementptr inbounds ([81 x i8]* @.str14, i64 0, i64 0)) #6
  call void @exit(i32 -1) #9
  unreachable

if.then211:                                       ; preds = %if.else183
  %p_mtxLJJ187 = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 21
  %63 = bitcast %struct._SubMtx*** %p_mtxLJJ187 to i8*
  call void @llvm.memset.p0i8.i64(i8* %63, i8 0, i64 16, i32 8, i1 false)
  br label %for.cond219.preheader

for.cond219.preheader:                            ; preds = %if.then196, %if.then211
  %64 = phi %struct._SubMtx** [ %58, %if.then196 ], [ null, %if.then211 ]
  br i1 %cmp83, label %for.body222.lr.ph, label %if.then236

for.body222.lr.ph:                                ; preds = %for.cond219.preheader
  %p_mtxLJJ224 = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 21
  %p_mtxLNJ227 = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 22
  br label %for.body222

for.body222:                                      ; preds = %for.body222.for.body222_crit_edge, %for.body222.lr.ph
  %65 = phi %struct._SubMtx** [ %64, %for.body222.lr.ph ], [ %.pre, %for.body222.for.body222_crit_edge ]
  %indvars.iv = phi i64 [ 0, %for.body222.lr.ph ], [ %indvars.iv.next, %for.body222.for.body222_crit_edge ]
  %arrayidx225 = getelementptr inbounds %struct._SubMtx** %65, i64 %indvars.iv
  store %struct._SubMtx* null, %struct._SubMtx** %arrayidx225, align 8, !tbaa !0
  %66 = load %struct._SubMtx*** %p_mtxLNJ227, align 8, !tbaa !0
  %arrayidx228 = getelementptr inbounds %struct._SubMtx** %66, i64 %indvars.iv
  store %struct._SubMtx* null, %struct._SubMtx** %arrayidx228, align 8, !tbaa !0
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %5
  br i1 %exitcond, label %if.then236, label %for.body222.for.body222_crit_edge

for.body222.for.body222_crit_edge:                ; preds = %for.body222
  %.pre = load %struct._SubMtx*** %p_mtxLJJ224, align 8, !tbaa !0
  br label %for.body222

if.then236:                                       ; preds = %for.cond219.preheader, %for.body222
  %call237 = call i32 (%struct._IO_FILE*, i8*, ...)* @__isoc99_fscanf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([4 x i8]* @.str16, i64 0, i64 0), i32* %nmtx) #6
  %67 = load i32* %nmtx, align 4, !tbaa !3
  %cmp239707 = icmp sgt i32 %67, 0
  br i1 %cmp239707, label %for.body241.lr.ph, label %for.end254

for.body241.lr.ph:                                ; preds = %if.then236
  %p_mtxLJJ250 = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 21
  br label %for.body241

for.body241:                                      ; preds = %for.body241.lr.ph, %if.end248
  %imtx.0708 = phi i32 [ 0, %for.body241.lr.ph ], [ %inc253, %if.end248 ]
  %call242 = call %struct._SubMtx* @SubMtx_new() #6
  %call243 = call i32 @SubMtx_readFromFormattedFile(%struct._SubMtx* %call242, %struct._IO_FILE* %fp) #6
  %cmp244 = icmp eq i32 %call243, 1
  br i1 %cmp244, label %if.end248, label %if.then246

if.then246:                                       ; preds = %for.body241
  %68 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call247 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %68, i8* getelementptr inbounds ([96 x i8]* @.str17, i64 0, i64 0), %struct._FrontMtx* %frontmtx, %struct._IO_FILE* %fp, i32 %call243) #6
  br label %cleanup

if.end248:                                        ; preds = %for.body241
  %colid = getelementptr inbounds %struct._SubMtx* %call242, i64 0, i32 3
  %69 = load i32* %colid, align 4, !tbaa !3
  %idxprom249 = sext i32 %69 to i64
  %70 = load %struct._SubMtx*** %p_mtxLJJ250, align 8, !tbaa !0
  %arrayidx251 = getelementptr inbounds %struct._SubMtx** %70, i64 %idxprom249
  store %struct._SubMtx* %call242, %struct._SubMtx** %arrayidx251, align 8, !tbaa !0
  %inc253 = add nsw i32 %imtx.0708, 1
  %71 = load i32* %nmtx, align 4, !tbaa !3
  %cmp239 = icmp slt i32 %inc253, %71
  br i1 %cmp239, label %for.body241, label %for.end254

for.end254:                                       ; preds = %if.end248, %if.then236
  %call255 = call i32 (%struct._IO_FILE*, i8*, ...)* @__isoc99_fscanf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([4 x i8]* @.str16, i64 0, i64 0), i32* %nmtx) #6
  %72 = load i32* %nmtx, align 4, !tbaa !3
  %cmp257705 = icmp sgt i32 %72, 0
  br i1 %cmp257705, label %for.body259.lr.ph, label %if.end274

for.body259.lr.ph:                                ; preds = %for.end254
  %p_mtxLNJ269 = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 22
  br label %for.body259

for.body259:                                      ; preds = %for.body259.lr.ph, %if.end266
  %imtx.1706 = phi i32 [ 0, %for.body259.lr.ph ], [ %inc272, %if.end266 ]
  %call260 = call %struct._SubMtx* @SubMtx_new() #6
  %call261 = call i32 @SubMtx_readFromFormattedFile(%struct._SubMtx* %call260, %struct._IO_FILE* %fp) #6
  %cmp262 = icmp eq i32 %call261, 1
  br i1 %cmp262, label %if.end266, label %if.then264

if.then264:                                       ; preds = %for.body259
  %73 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call265 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %73, i8* getelementptr inbounds ([96 x i8]* @.str17, i64 0, i64 0), %struct._FrontMtx* %frontmtx, %struct._IO_FILE* %fp, i32 %call261) #6
  br label %cleanup

if.end266:                                        ; preds = %for.body259
  %colid267 = getelementptr inbounds %struct._SubMtx* %call260, i64 0, i32 3
  %74 = load i32* %colid267, align 4, !tbaa !3
  %idxprom268 = sext i32 %74 to i64
  %75 = load %struct._SubMtx*** %p_mtxLNJ269, align 8, !tbaa !0
  %arrayidx270 = getelementptr inbounds %struct._SubMtx** %75, i64 %idxprom268
  store %struct._SubMtx* %call260, %struct._SubMtx** %arrayidx270, align 8, !tbaa !0
  %inc272 = add nsw i32 %imtx.1706, 1
  %76 = load i32* %nmtx, align 4, !tbaa !3
  %cmp257 = icmp slt i32 %inc272, %76
  br i1 %cmp257, label %for.body259, label %if.end274

if.end274:                                        ; preds = %for.end254, %if.end266, %for.end
  %call275 = call i32 (%struct._IO_FILE*, i8*, ...)* @__isoc99_fscanf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([4 x i8]* @.str16, i64 0, i64 0), i32* %nmtx) #6
  %77 = load i32* %nmtx, align 4, !tbaa !3
  %cmp277703 = icmp sgt i32 %77, 0
  br i1 %cmp277703, label %for.body279.lr.ph, label %for.end292

for.body279.lr.ph:                                ; preds = %if.end274
  %p_mtxDJJ288 = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 18
  br label %for.body279

for.body279:                                      ; preds = %for.body279.lr.ph, %if.end286
  %imtx.2704 = phi i32 [ 0, %for.body279.lr.ph ], [ %inc291, %if.end286 ]
  %call280 = call %struct._SubMtx* @SubMtx_new() #6
  %call281 = call i32 @SubMtx_readFromFormattedFile(%struct._SubMtx* %call280, %struct._IO_FILE* %fp) #6
  %cmp282 = icmp eq i32 %call281, 1
  br i1 %cmp282, label %if.end286, label %if.then284

if.then284:                                       ; preds = %for.body279
  %78 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call285 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %78, i8* getelementptr inbounds ([96 x i8]* @.str17, i64 0, i64 0), %struct._FrontMtx* %frontmtx, %struct._IO_FILE* %fp, i32 %call281) #6
  br label %cleanup

if.end286:                                        ; preds = %for.body279
  %rowid = getelementptr inbounds %struct._SubMtx* %call280, i64 0, i32 2
  %79 = load i32* %rowid, align 4, !tbaa !3
  %idxprom287 = sext i32 %79 to i64
  %80 = load %struct._SubMtx*** %p_mtxDJJ288, align 8, !tbaa !0
  %arrayidx289 = getelementptr inbounds %struct._SubMtx** %80, i64 %idxprom287
  store %struct._SubMtx* %call280, %struct._SubMtx** %arrayidx289, align 8, !tbaa !0
  %inc291 = add nsw i32 %imtx.2704, 1
  %81 = load i32* %nmtx, align 4, !tbaa !3
  %cmp277 = icmp slt i32 %inc291, %81
  br i1 %cmp277, label %for.body279, label %for.end292

for.end292:                                       ; preds = %if.end286, %if.end274
  %call293 = call i32 (%struct._IO_FILE*, i8*, ...)* @__isoc99_fscanf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([4 x i8]* @.str16, i64 0, i64 0), i32* %nmtx) #6
  %82 = load i32* %nmtx, align 4, !tbaa !3
  %cmp295701 = icmp sgt i32 %82, 0
  br i1 %cmp295701, label %for.body297.lr.ph, label %for.end311

for.body297.lr.ph:                                ; preds = %for.end292
  %p_mtxUJJ307 = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 19
  br label %for.body297

for.body297:                                      ; preds = %for.body297.lr.ph, %if.end304
  %imtx.3702 = phi i32 [ 0, %for.body297.lr.ph ], [ %inc310, %if.end304 ]
  %call298 = call %struct._SubMtx* @SubMtx_new() #6
  %call299 = call i32 @SubMtx_readFromFormattedFile(%struct._SubMtx* %call298, %struct._IO_FILE* %fp) #6
  %cmp300 = icmp eq i32 %call299, 1
  br i1 %cmp300, label %if.end304, label %if.then302

if.then302:                                       ; preds = %for.body297
  %83 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call303 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %83, i8* getelementptr inbounds ([96 x i8]* @.str17, i64 0, i64 0), %struct._FrontMtx* %frontmtx, %struct._IO_FILE* %fp, i32 %call299) #6
  br label %cleanup

if.end304:                                        ; preds = %for.body297
  %rowid305 = getelementptr inbounds %struct._SubMtx* %call298, i64 0, i32 2
  %84 = load i32* %rowid305, align 4, !tbaa !3
  %idxprom306 = sext i32 %84 to i64
  %85 = load %struct._SubMtx*** %p_mtxUJJ307, align 8, !tbaa !0
  %arrayidx308 = getelementptr inbounds %struct._SubMtx** %85, i64 %idxprom306
  store %struct._SubMtx* %call298, %struct._SubMtx** %arrayidx308, align 8, !tbaa !0
  %inc310 = add nsw i32 %imtx.3702, 1
  %86 = load i32* %nmtx, align 4, !tbaa !3
  %cmp295 = icmp slt i32 %inc310, %86
  br i1 %cmp295, label %for.body297, label %for.end311

for.end311:                                       ; preds = %if.end304, %for.end292
  %call312 = call i32 (%struct._IO_FILE*, i8*, ...)* @__isoc99_fscanf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([4 x i8]* @.str16, i64 0, i64 0), i32* %nmtx) #6
  %87 = load i32* %nmtx, align 4, !tbaa !3
  %cmp314699 = icmp sgt i32 %87, 0
  br i1 %cmp314699, label %for.body316.lr.ph, label %cleanup

for.body316.lr.ph:                                ; preds = %for.end311
  %p_mtxUJN326 = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 20
  br label %for.body316

for.body316:                                      ; preds = %for.body316.lr.ph, %if.end323
  %imtx.4700 = phi i32 [ 0, %for.body316.lr.ph ], [ %inc329, %if.end323 ]
  %call317 = call %struct._SubMtx* @SubMtx_new() #6
  %call318 = call i32 @SubMtx_readFromFormattedFile(%struct._SubMtx* %call317, %struct._IO_FILE* %fp) #6
  %cmp319 = icmp eq i32 %call318, 1
  br i1 %cmp319, label %if.end323, label %if.then321

if.then321:                                       ; preds = %for.body316
  %88 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call322 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %88, i8* getelementptr inbounds ([96 x i8]* @.str17, i64 0, i64 0), %struct._FrontMtx* %frontmtx, %struct._IO_FILE* %fp, i32 %call318) #6
  br label %cleanup

if.end323:                                        ; preds = %for.body316
  %rowid324 = getelementptr inbounds %struct._SubMtx* %call317, i64 0, i32 2
  %89 = load i32* %rowid324, align 4, !tbaa !3
  %idxprom325 = sext i32 %89 to i64
  %90 = load %struct._SubMtx*** %p_mtxUJN326, align 8, !tbaa !0
  %arrayidx327 = getelementptr inbounds %struct._SubMtx** %90, i64 %idxprom325
  store %struct._SubMtx* %call317, %struct._SubMtx** %arrayidx327, align 8, !tbaa !0
  %inc329 = add nsw i32 %imtx.4700, 1
  %91 = load i32* %nmtx, align 4, !tbaa !3
  %cmp314 = icmp slt i32 %inc329, %91
  br i1 %cmp314, label %for.body316, label %cleanup

if.else331:                                       ; preds = %if.end79
  %92 = load i32* %symmetryflag, align 4, !tbaa !3
  %cmp333 = icmp eq i32 %92, 2
  br i1 %cmp333, label %if.then335, label %if.end346

if.then335:                                       ; preds = %if.else331
  %call336 = call %struct._IVL* @IVL_new() #6
  %lowerblockIVL = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 16
  store %struct._IVL* %call336, %struct._IVL** %lowerblockIVL, align 8, !tbaa !0
  %type338 = getelementptr inbounds %struct._IVL* %call336, i64 0, i32 0
  store i32 1, i32* %type338, align 4, !tbaa !3
  %call340 = call i32 @IVL_readFromFormattedFile(%struct._IVL* %call336, %struct._IO_FILE* %fp) #6
  %cmp341 = icmp eq i32 %call340, 1
  br i1 %cmp341, label %if.end346, label %if.then343

if.then343:                                       ; preds = %if.then335
  %93 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call344 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %93, i8* getelementptr inbounds ([98 x i8]* @.str18, i64 0, i64 0), %struct._FrontMtx* %frontmtx, %struct._IO_FILE* %fp, i32 %call340) #6
  br label %cleanup

if.end346:                                        ; preds = %if.then335, %if.else331
  %call347 = call %struct._IVL* @IVL_new() #6
  %upperblockIVL = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 17
  store %struct._IVL* %call347, %struct._IVL** %upperblockIVL, align 8, !tbaa !0
  %type349 = getelementptr inbounds %struct._IVL* %call347, i64 0, i32 0
  store i32 1, i32* %type349, align 4, !tbaa !3
  %call351 = call i32 @IVL_readFromFormattedFile(%struct._IVL* %call347, %struct._IO_FILE* %fp) #6
  %cmp352 = icmp eq i32 %call351, 1
  br i1 %cmp352, label %if.end356, label %if.then354

if.then354:                                       ; preds = %if.end346
  %94 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call355 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %94, i8* getelementptr inbounds ([98 x i8]* @.str19, i64 0, i64 0), %struct._FrontMtx* %frontmtx, %struct._IO_FILE* %fp, i32 %call351) #6
  br label %cleanup

if.end356:                                        ; preds = %if.end346
  %95 = load i32* %symmetryflag, align 4, !tbaa !3
  %cmp358 = icmp eq i32 %95, 2
  br i1 %cmp358, label %if.then360, label %if.end381

if.then360:                                       ; preds = %if.end356
  %call361 = call %struct._I2Ohash* @I2Ohash_new() #6
  %lowerhash = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 23
  store %struct._I2Ohash* %call361, %struct._I2Ohash** %lowerhash, align 8, !tbaa !0
  %call362 = call i32 (%struct._IO_FILE*, i8*, ...)* @__isoc99_fscanf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([4 x i8]* @.str16, i64 0, i64 0), i32* %nmtx) #6
  %96 = load %struct._I2Ohash** %lowerhash, align 8, !tbaa !0
  %sub = add nsw i32 %5, -1
  %97 = load i32* %nmtx, align 4, !tbaa !3
  call void @I2Ohash_init(%struct._I2Ohash* %96, i32 %sub, i32 %97, i32 0) #6
  %98 = load i32* %nmtx, align 4, !tbaa !3
  %cmp365720 = icmp sgt i32 %98, 0
  br i1 %cmp365720, label %for.body367, label %if.end381

for.body367:                                      ; preds = %if.then360, %if.end374
  %KJ.0721 = phi i32 [ %inc379, %if.end374 ], [ 0, %if.then360 ]
  %call368 = call %struct._SubMtx* @SubMtx_new() #6
  %call369 = call i32 @SubMtx_readFromFormattedFile(%struct._SubMtx* %call368, %struct._IO_FILE* %fp) #6
  %cmp370 = icmp eq i32 %call369, 1
  br i1 %cmp370, label %if.end374, label %if.then372

if.then372:                                       ; preds = %for.body367
  %99 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call373 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %99, i8* getelementptr inbounds ([97 x i8]* @.str20, i64 0, i64 0), %struct._FrontMtx* %frontmtx, %struct._IO_FILE* %fp, i32 %call369) #6
  br label %cleanup

if.end374:                                        ; preds = %for.body367
  %100 = load %struct._I2Ohash** %lowerhash, align 8, !tbaa !0
  %rowid376 = getelementptr inbounds %struct._SubMtx* %call368, i64 0, i32 2
  %101 = load i32* %rowid376, align 4, !tbaa !3
  %colid377 = getelementptr inbounds %struct._SubMtx* %call368, i64 0, i32 3
  %102 = load i32* %colid377, align 4, !tbaa !3
  %103 = bitcast %struct._SubMtx* %call368 to i8*
  call void @I2Ohash_insert(%struct._I2Ohash* %100, i32 %101, i32 %102, i8* %103) #6
  %inc379 = add nsw i32 %KJ.0721, 1
  %104 = load i32* %nmtx, align 4, !tbaa !3
  %cmp365 = icmp slt i32 %inc379, %104
  br i1 %cmp365, label %for.body367, label %if.end381

if.end381:                                        ; preds = %if.then360, %if.end374, %if.end356
  %cmp382 = icmp sgt i32 %5, 0
  br i1 %cmp382, label %if.then384, label %if.else397

if.then384:                                       ; preds = %if.end381
  %sext740 = shl i64 %4, 32
  %mul386 = ashr exact i64 %sext740, 29
  %call387 = call noalias i8* @malloc(i64 %mul386) #6
  %105 = bitcast i8* %call387 to %struct._SubMtx**
  %p_mtxDJJ388 = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 18
  store %struct._SubMtx** %105, %struct._SubMtx*** %p_mtxDJJ388, align 8, !tbaa !0
  %cmp389 = icmp eq i8* %call387, null
  br i1 %cmp389, label %if.then391, label %for.body411.lr.ph

if.then391:                                       ; preds = %if.then384
  %106 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call394 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %106, i8* getelementptr inbounds ([49 x i8]* @.str13, i64 0, i64 0), i64 %mul386, i32 416, i8* getelementptr inbounds ([81 x i8]* @.str14, i64 0, i64 0)) #6
  call void @exit(i32 -1) #9
  unreachable

if.else397:                                       ; preds = %if.end381
  %cmp398 = icmp eq i32 %5, 0
  br i1 %cmp398, label %for.cond408.preheader, label %if.else402

for.cond408.preheader:                            ; preds = %if.else397
  %p_mtxDJJ401 = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 18
  store %struct._SubMtx** null, %struct._SubMtx*** %p_mtxDJJ401, align 8, !tbaa !0
  br label %for.end417

for.body411.lr.ph:                                ; preds = %if.then384
  %p_mtxDJJ413 = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 18
  br label %for.body411

if.else402:                                       ; preds = %if.else397
  %107 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %sext = shl i64 %4, 32
  %mul404 = ashr exact i64 %sext, 29
  %call405 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %107, i8* getelementptr inbounds ([47 x i8]* @.str15, i64 0, i64 0), i64 %mul404, i32 416, i8* getelementptr inbounds ([81 x i8]* @.str14, i64 0, i64 0)) #6
  call void @exit(i32 -1) #9
  unreachable

for.body411:                                      ; preds = %for.body411.for.body411_crit_edge, %for.body411.lr.ph
  %108 = phi %struct._SubMtx** [ %105, %for.body411.lr.ph ], [ %.pre739, %for.body411.for.body411_crit_edge ]
  %indvars.iv733 = phi i64 [ 0, %for.body411.lr.ph ], [ %indvars.iv.next734, %for.body411.for.body411_crit_edge ]
  %arrayidx414 = getelementptr inbounds %struct._SubMtx** %108, i64 %indvars.iv733
  store %struct._SubMtx* null, %struct._SubMtx** %arrayidx414, align 8, !tbaa !0
  %indvars.iv.next734 = add i64 %indvars.iv733, 1
  %lftr.wideiv735 = trunc i64 %indvars.iv.next734 to i32
  %exitcond736 = icmp eq i32 %lftr.wideiv735, %5
  br i1 %exitcond736, label %for.end417, label %for.body411.for.body411_crit_edge

for.body411.for.body411_crit_edge:                ; preds = %for.body411
  %.pre739 = load %struct._SubMtx*** %p_mtxDJJ413, align 8, !tbaa !0
  br label %for.body411

for.end417:                                       ; preds = %for.body411, %for.cond408.preheader
  %call418 = call i32 (%struct._IO_FILE*, i8*, ...)* @__isoc99_fscanf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([4 x i8]* @.str16, i64 0, i64 0), i32* %nmtx) #6
  %109 = load i32* %nmtx, align 4, !tbaa !3
  %cmp420716 = icmp sgt i32 %109, 0
  br i1 %cmp420716, label %for.body422.lr.ph, label %for.end436

for.body422.lr.ph:                                ; preds = %for.end417
  %p_mtxDJJ432 = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 18
  br label %for.body422

for.body422:                                      ; preds = %for.body422.lr.ph, %if.end429
  %J.3717 = phi i32 [ 0, %for.body422.lr.ph ], [ %inc435, %if.end429 ]
  %call423 = call %struct._SubMtx* @SubMtx_new() #6
  %call424 = call i32 @SubMtx_readFromFormattedFile(%struct._SubMtx* %call423, %struct._IO_FILE* %fp) #6
  %cmp425 = icmp eq i32 %call424, 1
  br i1 %cmp425, label %if.end429, label %if.then427

if.then427:                                       ; preds = %for.body422
  %110 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call428 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %110, i8* getelementptr inbounds ([96 x i8]* @.str17, i64 0, i64 0), %struct._FrontMtx* %frontmtx, %struct._IO_FILE* %fp, i32 %call424) #6
  br label %cleanup

if.end429:                                        ; preds = %for.body422
  %rowid430 = getelementptr inbounds %struct._SubMtx* %call423, i64 0, i32 2
  %111 = load i32* %rowid430, align 4, !tbaa !3
  %idxprom431 = sext i32 %111 to i64
  %112 = load %struct._SubMtx*** %p_mtxDJJ432, align 8, !tbaa !0
  %arrayidx433 = getelementptr inbounds %struct._SubMtx** %112, i64 %idxprom431
  store %struct._SubMtx* %call423, %struct._SubMtx** %arrayidx433, align 8, !tbaa !0
  %inc435 = add nsw i32 %J.3717, 1
  %113 = load i32* %nmtx, align 4, !tbaa !3
  %cmp420 = icmp slt i32 %inc435, %113
  br i1 %cmp420, label %for.body422, label %for.end436

for.end436:                                       ; preds = %if.end429, %for.end417
  %call437 = call %struct._I2Ohash* @I2Ohash_new() #6
  %upperhash = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 24
  store %struct._I2Ohash* %call437, %struct._I2Ohash** %upperhash, align 8, !tbaa !0
  %call438 = call i32 (%struct._IO_FILE*, i8*, ...)* @__isoc99_fscanf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([4 x i8]* @.str16, i64 0, i64 0), i32* %nmtx) #6
  %114 = load %struct._I2Ohash** %upperhash, align 8, !tbaa !0
  %sub440 = add nsw i32 %5, -1
  %115 = load i32* %nmtx, align 4, !tbaa !3
  call void @I2Ohash_init(%struct._I2Ohash* %114, i32 %sub440, i32 %115, i32 0) #6
  %116 = load i32* %nmtx, align 4, !tbaa !3
  %cmp442714 = icmp sgt i32 %116, 0
  br i1 %cmp442714, label %for.body444, label %cleanup

for.body444:                                      ; preds = %for.end436, %if.end451
  %JK.0715 = phi i32 [ %inc456, %if.end451 ], [ 0, %for.end436 ]
  %call445 = call %struct._SubMtx* @SubMtx_new() #6
  %call446 = call i32 @SubMtx_readFromFormattedFile(%struct._SubMtx* %call445, %struct._IO_FILE* %fp) #6
  %cmp447 = icmp eq i32 %call446, 1
  br i1 %cmp447, label %if.end451, label %if.then449

if.then449:                                       ; preds = %for.body444
  %117 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call450 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %117, i8* getelementptr inbounds ([97 x i8]* @.str21, i64 0, i64 0), %struct._FrontMtx* %frontmtx, %struct._IO_FILE* %fp, i32 %call446) #6
  br label %cleanup

if.end451:                                        ; preds = %for.body444
  %118 = load %struct._I2Ohash** %upperhash, align 8, !tbaa !0
  %rowid453 = getelementptr inbounds %struct._SubMtx* %call445, i64 0, i32 2
  %119 = load i32* %rowid453, align 4, !tbaa !3
  %colid454 = getelementptr inbounds %struct._SubMtx* %call445, i64 0, i32 3
  %120 = load i32* %colid454, align 4, !tbaa !3
  %121 = bitcast %struct._SubMtx* %call445 to i8*
  call void @I2Ohash_insert(%struct._I2Ohash* %118, i32 %119, i32 %120, i8* %121) #6
  %inc456 = add nsw i32 %JK.0715, 1
  %122 = load i32* %nmtx, align 4, !tbaa !3
  %cmp442 = icmp slt i32 %inc456, %122
  br i1 %cmp442, label %for.body444, label %cleanup

cleanup:                                          ; preds = %for.end436, %if.end451, %for.end311, %if.end323, %if.then449, %if.then427, %if.then372, %if.then354, %if.then343, %if.then321, %if.then302, %if.then284, %if.then264, %if.then246, %if.then74, %if.then64, %if.then42, %if.then32, %if.then21, %if.then4, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %if.then4 ], [ 0, %if.then21 ], [ 0, %if.then32 ], [ 0, %if.then42 ], [ 0, %if.then64 ], [ 0, %if.then74 ], [ 0, %if.then246 ], [ 0, %if.then264 ], [ 0, %if.then284 ], [ 0, %if.then302 ], [ 0, %if.then321 ], [ 0, %if.then343 ], [ 0, %if.then354 ], [ 0, %if.then372 ], [ 0, %if.then427 ], [ 0, %if.then449 ], [ 1, %if.end323 ], [ 1, %for.end311 ], [ 1, %if.end451 ], [ 1, %for.end436 ]
  call void @llvm.lifetime.end(i64 40, i8* %0) #3
  ret i32 %retval.0
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #3

; Function Attrs: optsize
declare void @FrontMtx_clearData(%struct._FrontMtx*) #4

; Function Attrs: optsize
declare i32 @IVfscanf(%struct._IO_FILE*, i32, i32*) #4

; Function Attrs: optsize
declare %struct._ETree* @ETree_new() #4

; Function Attrs: optsize
declare i32 @ETree_readFromFormattedFile(%struct._ETree*, %struct._IO_FILE*) #4

; Function Attrs: optsize
declare %struct._IVL* @IVL_new() #4

; Function Attrs: optsize
declare i32 @IVL_readFromFormattedFile(%struct._IVL*, %struct._IO_FILE*) #4

; Function Attrs: optsize
declare %struct._IV* @IV_new() #4

; Function Attrs: optsize
declare i32 @IV_readFromFormattedFile(%struct._IV*, %struct._IO_FILE*) #4

; Function Attrs: optsize
declare void @IV_init(%struct._IV*, i32, i32*) #4

; Function Attrs: optsize
declare void @IVcopy(i32, i32*, i32*) #4

; Function Attrs: optsize
declare i32* @IV_entries(%struct._IV*) #4

; Function Attrs: optsize
declare i32* @ETree_nodwghts(%struct._ETree*) #4

; Function Attrs: nounwind optsize
declare i32 @fflush(%struct._IO_FILE* nocapture) #1

; Function Attrs: nounwind optsize
declare noalias i8* @malloc(i64) #1

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32) #5

; Function Attrs: optsize
declare i32 @__isoc99_fscanf(%struct._IO_FILE*, i8*, ...) #4

; Function Attrs: optsize
declare %struct._SubMtx* @SubMtx_new() #4

; Function Attrs: optsize
declare i32 @SubMtx_readFromFormattedFile(%struct._SubMtx*, %struct._IO_FILE*) #4

; Function Attrs: optsize
declare %struct._I2Ohash* @I2Ohash_new() #4

; Function Attrs: optsize
declare void @I2Ohash_init(%struct._I2Ohash*, i32, i32, i32) #4

; Function Attrs: optsize
declare void @I2Ohash_insert(%struct._I2Ohash*, i32, i32, i8*) #4

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #3

; Function Attrs: nounwind optsize
declare i64 @fread(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #1

; Function Attrs: optsize
declare i32 @ETree_readFromBinaryFile(%struct._ETree*, %struct._IO_FILE*) #4

; Function Attrs: optsize
declare i32 @IVL_readFromBinaryFile(%struct._IVL*, %struct._IO_FILE*) #4

; Function Attrs: optsize
declare i32 @IV_readFromBinaryFile(%struct._IV*, %struct._IO_FILE*) #4

; Function Attrs: optsize
declare i32 @SubMtx_readFromBinaryFile(%struct._SubMtx*, %struct._IO_FILE*) #4

; Function Attrs: nounwind optsize uwtable
define i32 @FrontMtx_writeToFile(%struct._FrontMtx* %frontmtx, i8* %fn) #0 {
entry:
  %cmp = icmp eq %struct._FrontMtx* %frontmtx, null
  %cmp1 = icmp eq i8* %fn, null
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([57 x i8]* @.str34, i64 0, i64 0), %struct._FrontMtx* %frontmtx, i8* %fn) #6
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  %call2 = tail call i64 @strlen(i8* %fn) #7
  %conv = trunc i64 %call2 to i32
  %cmp5 = icmp sgt i32 %conv, 10
  br i1 %cmp5, label %if.then7, label %if.else49

if.then7:                                         ; preds = %if.end
  %sub = shl i64 %call2, 32
  %sext = add i64 %sub, -42949672960
  %idxprom = ashr exact i64 %sext, 32
  %arrayidx = getelementptr inbounds i8* %fn, i64 %idxprom
  %call8 = tail call i32 @strcmp(i8* %arrayidx, i8* getelementptr inbounds ([11 x i8]* @.str98, i64 0, i64 0)) #7
  %cmp9 = icmp eq i32 %call8, 0
  br i1 %cmp9, label %if.then11, label %if.else20

if.then11:                                        ; preds = %if.then7
  %call12 = tail call %struct._IO_FILE* @fopen(i8* %fn, i8* getelementptr inbounds ([3 x i8]* @.str35, i64 0, i64 0)) #6
  %cmp13 = icmp eq %struct._IO_FILE* %call12, null
  br i1 %cmp13, label %if.then15, label %if.else

if.then15:                                        ; preds = %if.then11
  %1 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call16 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([63 x i8]* @.str36, i64 0, i64 0), %struct._FrontMtx* %frontmtx, i8* %fn, i8* %fn) #6
  br label %if.end59

if.else:                                          ; preds = %if.then11
  %call17 = tail call i32 @FrontMtx_writeToBinaryFile(%struct._FrontMtx* %frontmtx, %struct._IO_FILE* %call12) #8
  %call18 = tail call i32 @fclose(%struct._IO_FILE* %call12) #6
  br label %if.end59

if.else20:                                        ; preds = %if.then7
  %call24 = tail call i32 @strcmp(i8* %arrayidx, i8* getelementptr inbounds ([11 x i8]* @.str97, i64 0, i64 0)) #7
  %cmp25 = icmp eq i32 %call24, 0
  br i1 %cmp25, label %if.then27, label %if.else37

if.then27:                                        ; preds = %if.else20
  %call28 = tail call %struct._IO_FILE* @fopen(i8* %fn, i8* getelementptr inbounds ([2 x i8]* @.str37, i64 0, i64 0)) #6
  %cmp29 = icmp eq %struct._IO_FILE* %call28, null
  br i1 %cmp29, label %if.then31, label %if.else33

if.then31:                                        ; preds = %if.then27
  %2 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call32 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([63 x i8]* @.str36, i64 0, i64 0), %struct._FrontMtx* %frontmtx, i8* %fn, i8* %fn) #6
  br label %if.end59

if.else33:                                        ; preds = %if.then27
  %call34 = tail call i32 @FrontMtx_writeToFormattedFile(%struct._FrontMtx* %frontmtx, %struct._IO_FILE* %call28) #8
  %call35 = tail call i32 @fclose(%struct._IO_FILE* %call28) #6
  br label %if.end59

if.else37:                                        ; preds = %if.else20
  %call38 = tail call %struct._IO_FILE* @fopen(i8* %fn, i8* getelementptr inbounds ([2 x i8]* @.str38, i64 0, i64 0)) #6
  %cmp39 = icmp eq %struct._IO_FILE* %call38, null
  br i1 %cmp39, label %if.then41, label %if.else43

if.then41:                                        ; preds = %if.else37
  %3 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call42 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([63 x i8]* @.str36, i64 0, i64 0), %struct._FrontMtx* %frontmtx, i8* %fn, i8* %fn) #6
  br label %if.end59

if.else43:                                        ; preds = %if.else37
  %call44 = tail call i32 @FrontMtx_writeForHumanEye(%struct._FrontMtx* %frontmtx, %struct._IO_FILE* %call38) #8
  %call45 = tail call i32 @fclose(%struct._IO_FILE* %call38) #6
  br label %if.end59

if.else49:                                        ; preds = %if.end
  %call50 = tail call %struct._IO_FILE* @fopen(i8* %fn, i8* getelementptr inbounds ([2 x i8]* @.str38, i64 0, i64 0)) #6
  %cmp51 = icmp eq %struct._IO_FILE* %call50, null
  br i1 %cmp51, label %if.then53, label %if.else55

if.then53:                                        ; preds = %if.else49
  %4 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call54 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([63 x i8]* @.str36, i64 0, i64 0), %struct._FrontMtx* %frontmtx, i8* %fn, i8* %fn) #6
  br label %if.end59

if.else55:                                        ; preds = %if.else49
  %call56 = tail call i32 @FrontMtx_writeForHumanEye(%struct._FrontMtx* %frontmtx, %struct._IO_FILE* %call50) #8
  %call57 = tail call i32 @fclose(%struct._IO_FILE* %call50) #6
  br label %if.end59

if.end59:                                         ; preds = %if.then53, %if.else55, %if.else, %if.then15, %if.then41, %if.else43, %if.then31, %if.else33
  %rc.0 = phi i32 [ 0, %if.then15 ], [ %call17, %if.else ], [ 0, %if.then31 ], [ %call34, %if.else33 ], [ 0, %if.then41 ], [ 1, %if.else43 ], [ 0, %if.then53 ], [ 1, %if.else55 ]
  ret i32 %rc.0
}

; Function Attrs: nounwind optsize uwtable
define i32 @FrontMtx_writeToBinaryFile(%struct._FrontMtx* %frontmtx, %struct._IO_FILE* %fp) #0 {
entry:
  %nadj = alloca i32, align 4
  %nmtx = alloca i32, align 4
  %adj = alloca i32*, align 8
  %itemp = alloca [10 x i32], align 16
  %0 = bitcast [10 x i32]* %itemp to i8*
  call void @llvm.lifetime.start(i64 40, i8* %0) #3
  %cmp = icmp eq %struct._FrontMtx* %frontmtx, null
  %cmp1 = icmp eq %struct._IO_FILE* %fp, null
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([63 x i8]* @.str50, i64 0, i64 0), %struct._FrontMtx* %frontmtx, %struct._IO_FILE* %fp) #6
  call void @exit(i32 -1) #9
  unreachable

if.end:                                           ; preds = %entry
  %nfront2 = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 0
  %2 = load i32* %nfront2, align 4, !tbaa !3
  %arrayidx = getelementptr inbounds [10 x i32]* %itemp, i64 0, i64 0
  store i32 %2, i32* %arrayidx, align 16, !tbaa !3
  %neqns = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 1
  %3 = load i32* %neqns, align 4, !tbaa !3
  %arrayidx3 = getelementptr inbounds [10 x i32]* %itemp, i64 0, i64 1
  store i32 %3, i32* %arrayidx3, align 4, !tbaa !3
  %type = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 2
  %4 = load i32* %type, align 4, !tbaa !3
  %arrayidx4 = getelementptr inbounds [10 x i32]* %itemp, i64 0, i64 2
  store i32 %4, i32* %arrayidx4, align 8, !tbaa !3
  %symmetryflag = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 3
  %5 = load i32* %symmetryflag, align 4, !tbaa !3
  %arrayidx5 = getelementptr inbounds [10 x i32]* %itemp, i64 0, i64 3
  store i32 %5, i32* %arrayidx5, align 4, !tbaa !3
  %pivotingflag = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 5
  %6 = load i32* %pivotingflag, align 4, !tbaa !3
  %arrayidx6 = getelementptr inbounds [10 x i32]* %itemp, i64 0, i64 4
  store i32 %6, i32* %arrayidx6, align 16, !tbaa !3
  %sparsityflag = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 4
  %7 = load i32* %sparsityflag, align 4, !tbaa !3
  %arrayidx7 = getelementptr inbounds [10 x i32]* %itemp, i64 0, i64 5
  store i32 %7, i32* %arrayidx7, align 4, !tbaa !3
  %dataMode = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 6
  %8 = load i32* %dataMode, align 4, !tbaa !3
  %arrayidx8 = getelementptr inbounds [10 x i32]* %itemp, i64 0, i64 6
  store i32 %8, i32* %arrayidx8, align 8, !tbaa !3
  %nentD = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 7
  %9 = load i32* %nentD, align 4, !tbaa !3
  %arrayidx9 = getelementptr inbounds [10 x i32]* %itemp, i64 0, i64 7
  store i32 %9, i32* %arrayidx9, align 4, !tbaa !3
  %nentL = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 8
  %10 = load i32* %nentL, align 4, !tbaa !3
  %arrayidx10 = getelementptr inbounds [10 x i32]* %itemp, i64 0, i64 8
  store i32 %10, i32* %arrayidx10, align 16, !tbaa !3
  %nentU = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 9
  %11 = load i32* %nentU, align 4, !tbaa !3
  %arrayidx11 = getelementptr inbounds [10 x i32]* %itemp, i64 0, i64 9
  store i32 %11, i32* %arrayidx11, align 4, !tbaa !3
  %call12 = call i64 @fwrite(i8* %0, i64 4, i64 10, %struct._IO_FILE* %fp) #6
  %conv = trunc i64 %call12 to i32
  %cmp13 = icmp slt i32 %conv, 0
  br i1 %cmp13, label %if.then15, label %if.end17

if.then15:                                        ; preds = %if.end
  %12 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call16 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %12, i8* getelementptr inbounds ([88 x i8]* @.str51, i64 0, i64 0), %struct._FrontMtx* %frontmtx, %struct._IO_FILE* %fp, i32 %conv) #6
  br label %cleanup

if.end17:                                         ; preds = %if.end
  %frontETree = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 11
  %13 = load %struct._ETree** %frontETree, align 8, !tbaa !0
  %call18 = call i32 @ETree_writeToBinaryFile(%struct._ETree* %13, %struct._IO_FILE* %fp) #6
  %cmp19 = icmp eq i32 %call18, 1
  br i1 %cmp19, label %if.end23, label %if.then21

if.then21:                                        ; preds = %if.end17
  %14 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call22 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %14, i8* getelementptr inbounds ([88 x i8]* @.str52, i64 0, i64 0), %struct._FrontMtx* %frontmtx, %struct._IO_FILE* %fp, i32 %call18) #6
  br label %cleanup

if.end23:                                         ; preds = %if.end17
  %symbfacIVL = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 13
  %15 = load %struct._IVL** %symbfacIVL, align 8, !tbaa !0
  %call24 = call i32 @IVL_writeToBinaryFile(%struct._IVL* %15, %struct._IO_FILE* %fp) #6
  %cmp25 = icmp eq i32 %call24, 1
  br i1 %cmp25, label %if.end29, label %if.then27

if.then27:                                        ; preds = %if.end23
  %16 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call28 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %16, i8* getelementptr inbounds ([88 x i8]* @.str53, i64 0, i64 0), %struct._FrontMtx* %frontmtx, %struct._IO_FILE* %fp, i32 %call24) #6
  br label %cleanup

if.end29:                                         ; preds = %if.end23
  %17 = load i32* %pivotingflag, align 4, !tbaa !3
  %cmp31 = icmp eq i32 %17, 1
  br i1 %cmp31, label %if.then33, label %if.end62

if.then33:                                        ; preds = %if.end29
  %frontsizesIV = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 12
  %18 = load %struct._IV** %frontsizesIV, align 8, !tbaa !0
  %call34 = call i32 @IV_writeToBinaryFile(%struct._IV* %18, %struct._IO_FILE* %fp) #6
  %cmp35 = icmp eq i32 %call34, 1
  br i1 %cmp35, label %if.end40, label %if.then37

if.then37:                                        ; preds = %if.then33
  %19 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call38 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %19, i8* getelementptr inbounds ([90 x i8]* @.str54, i64 0, i64 0), %struct._FrontMtx* %frontmtx, %struct._IO_FILE* %fp, i32 %call34) #6
  br label %cleanup

if.end40:                                         ; preds = %if.then33
  %.pr = load i32* %pivotingflag, align 4, !tbaa !3
  %cmp42 = icmp eq i32 %.pr, 1
  br i1 %cmp42, label %if.then44, label %if.end62

if.then44:                                        ; preds = %if.end40
  %20 = load i32* %symmetryflag, align 4, !tbaa !3
  %cmp46 = icmp eq i32 %20, 2
  br i1 %cmp46, label %if.then48, label %if.end55

if.then48:                                        ; preds = %if.then44
  %rowadjIVL = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 14
  %21 = load %struct._IVL** %rowadjIVL, align 8, !tbaa !0
  %call49 = call i32 @IVL_writeToBinaryFile(%struct._IVL* %21, %struct._IO_FILE* %fp) #6
  %cmp50 = icmp eq i32 %call49, 1
  br i1 %cmp50, label %if.end55, label %if.then52

if.then52:                                        ; preds = %if.then48
  %22 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call53 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %22, i8* getelementptr inbounds ([87 x i8]* @.str55, i64 0, i64 0), %struct._FrontMtx* %frontmtx, %struct._IO_FILE* %fp, i32 %call49) #6
  br label %cleanup

if.end55:                                         ; preds = %if.then48, %if.then44
  %coladjIVL = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 15
  %23 = load %struct._IVL** %coladjIVL, align 8, !tbaa !0
  %call56 = call i32 @IVL_writeToBinaryFile(%struct._IVL* %23, %struct._IO_FILE* %fp) #6
  %cmp57 = icmp eq i32 %call56, 1
  br i1 %cmp57, label %if.end62, label %if.then59

if.then59:                                        ; preds = %if.end55
  %24 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call60 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %24, i8* getelementptr inbounds ([87 x i8]* @.str56, i64 0, i64 0), %struct._FrontMtx* %frontmtx, %struct._IO_FILE* %fp, i32 %call56) #6
  br label %cleanup

if.end62:                                         ; preds = %if.end29, %if.end55, %if.end40
  %25 = load i32* %dataMode, align 4, !tbaa !3
  %cmp64 = icmp eq i32 %25, 1
  %26 = load i32* %symmetryflag, align 4, !tbaa !3
  %cmp68 = icmp eq i32 %26, 2
  br i1 %cmp64, label %if.then66, label %if.else

if.then66:                                        ; preds = %if.end62
  br i1 %cmp68, label %if.then70, label %if.end122

if.then70:                                        ; preds = %if.then66
  store i32 0, i32* %nmtx, align 4, !tbaa !3
  %cmp71573 = icmp sgt i32 %2, 0
  br i1 %cmp71573, label %for.body, label %for.end.thread

for.end.thread:                                   ; preds = %if.then70
  %27 = bitcast i32* %nmtx to i8*
  %call79611 = call i64 @fwrite(i8* %27, i64 4, i64 1, %struct._IO_FILE* %fp) #6
  br label %for.end93.thread

for.body:                                         ; preds = %if.then70, %for.inc
  %J.0574 = phi i32 [ %inc78, %for.inc ], [ 0, %if.then70 ]
  %call73 = call %struct._SubMtx* @FrontMtx_lowerMtx(%struct._FrontMtx* %frontmtx, i32 %J.0574, i32 %J.0574) #6
  %cmp74 = icmp eq %struct._SubMtx* %call73, null
  br i1 %cmp74, label %for.inc, label %if.then76

if.then76:                                        ; preds = %for.body
  %28 = load i32* %nmtx, align 4, !tbaa !3
  %inc = add nsw i32 %28, 1
  store i32 %inc, i32* %nmtx, align 4, !tbaa !3
  br label %for.inc

for.inc:                                          ; preds = %for.body, %if.then76
  %inc78 = add nsw i32 %J.0574, 1
  %exitcond604 = icmp eq i32 %inc78, %2
  br i1 %exitcond604, label %for.end, label %for.body

for.end:                                          ; preds = %for.inc
  %29 = bitcast i32* %nmtx to i8*
  %call79 = call i64 @fwrite(i8* %29, i64 4, i64 1, %struct._IO_FILE* %fp) #6
  br i1 %cmp71573, label %for.body84, label %for.end93.thread

for.body84:                                       ; preds = %for.end, %for.inc91
  %J.1572 = phi i32 [ %inc92, %for.inc91 ], [ 0, %for.end ]
  %call85 = call %struct._SubMtx* @FrontMtx_lowerMtx(%struct._FrontMtx* %frontmtx, i32 %J.1572, i32 %J.1572) #6
  %cmp86 = icmp eq %struct._SubMtx* %call85, null
  br i1 %cmp86, label %for.inc91, label %if.then88

if.then88:                                        ; preds = %for.body84
  %call89 = call i32 @SubMtx_writeToBinaryFile(%struct._SubMtx* %call85, %struct._IO_FILE* %fp) #6
  br label %for.inc91

for.inc91:                                        ; preds = %for.body84, %if.then88
  %inc92 = add nsw i32 %J.1572, 1
  %exitcond603 = icmp eq i32 %inc92, %2
  br i1 %exitcond603, label %for.end93, label %for.body84

for.end93.thread:                                 ; preds = %for.end.thread, %for.end
  %.ph = phi i8* [ %27, %for.end.thread ], [ %29, %for.end ]
  store i32 0, i32* %nmtx, align 4, !tbaa !3
  br label %for.end106

for.end93:                                        ; preds = %for.inc91
  store i32 0, i32* %nmtx, align 4, !tbaa !3
  br i1 %cmp71573, label %for.body97, label %for.end106.thread

for.end106.thread:                                ; preds = %for.end93
  %call107612 = call i64 @fwrite(i8* %29, i64 4, i64 1, %struct._IO_FILE* %fp) #6
  br label %for.end150.thread

for.body97:                                       ; preds = %for.end93, %for.inc104
  %J.2570 = phi i32 [ %inc105, %for.inc104 ], [ 0, %for.end93 ]
  %call98 = call %struct._SubMtx* @FrontMtx_lowerMtx(%struct._FrontMtx* %frontmtx, i32 %2, i32 %J.2570) #6
  %cmp99 = icmp eq %struct._SubMtx* %call98, null
  br i1 %cmp99, label %for.inc104, label %if.then101

if.then101:                                       ; preds = %for.body97
  %30 = load i32* %nmtx, align 4, !tbaa !3
  %inc102 = add nsw i32 %30, 1
  store i32 %inc102, i32* %nmtx, align 4, !tbaa !3
  br label %for.inc104

for.inc104:                                       ; preds = %for.body97, %if.then101
  %inc105 = add nsw i32 %J.2570, 1
  %exitcond602 = icmp eq i32 %inc105, %2
  br i1 %exitcond602, label %for.end106, label %for.body97

for.end106:                                       ; preds = %for.inc104, %for.end93.thread
  %31 = phi i8* [ %.ph, %for.end93.thread ], [ %29, %for.inc104 ]
  %call107 = call i64 @fwrite(i8* %31, i64 4, i64 1, %struct._IO_FILE* %fp) #6
  br i1 %cmp71573, label %for.body112, label %for.end150.thread

for.body112:                                      ; preds = %for.end106, %for.inc119
  %J.3568 = phi i32 [ %inc120, %for.inc119 ], [ 0, %for.end106 ]
  %call113 = call %struct._SubMtx* @FrontMtx_lowerMtx(%struct._FrontMtx* %frontmtx, i32 %2, i32 %J.3568) #6
  %cmp114 = icmp eq %struct._SubMtx* %call113, null
  br i1 %cmp114, label %for.inc119, label %if.then116

if.then116:                                       ; preds = %for.body112
  %call117 = call i32 @SubMtx_writeToBinaryFile(%struct._SubMtx* %call113, %struct._IO_FILE* %fp) #6
  br label %for.inc119

for.inc119:                                       ; preds = %for.body112, %if.then116
  %inc120 = add nsw i32 %J.3568, 1
  %exitcond601 = icmp eq i32 %inc120, %2
  br i1 %exitcond601, label %if.end122, label %for.body112

if.end122:                                        ; preds = %for.inc119, %if.then66
  store i32 0, i32* %nmtx, align 4, !tbaa !3
  %cmp124565 = icmp sgt i32 %2, 0
  br i1 %cmp124565, label %for.body126, label %for.end135.thread

for.end135.thread:                                ; preds = %if.end122
  %32 = bitcast i32* %nmtx to i8*
  %call136615 = call i64 @fwrite(i8* %32, i64 4, i64 1, %struct._IO_FILE* %fp) #6
  br label %for.end178.thread

for.body126:                                      ; preds = %if.end122, %for.inc133
  %J.4566 = phi i32 [ %inc134, %for.inc133 ], [ 0, %if.end122 ]
  %call127 = call %struct._SubMtx* @FrontMtx_diagMtx(%struct._FrontMtx* %frontmtx, i32 %J.4566) #6
  %cmp128 = icmp eq %struct._SubMtx* %call127, null
  br i1 %cmp128, label %for.inc133, label %if.then130

if.then130:                                       ; preds = %for.body126
  %33 = load i32* %nmtx, align 4, !tbaa !3
  %inc131 = add nsw i32 %33, 1
  store i32 %inc131, i32* %nmtx, align 4, !tbaa !3
  br label %for.inc133

for.inc133:                                       ; preds = %for.body126, %if.then130
  %inc134 = add nsw i32 %J.4566, 1
  %exitcond600 = icmp eq i32 %inc134, %2
  br i1 %exitcond600, label %for.end135, label %for.body126

for.end135:                                       ; preds = %for.inc133
  %34 = bitcast i32* %nmtx to i8*
  %call136 = call i64 @fwrite(i8* %34, i64 4, i64 1, %struct._IO_FILE* %fp) #6
  br i1 %cmp124565, label %for.body141, label %for.end178.thread

for.body141:                                      ; preds = %for.end135, %for.inc148
  %J.5564 = phi i32 [ %inc149, %for.inc148 ], [ 0, %for.end135 ]
  %call142 = call %struct._SubMtx* @FrontMtx_diagMtx(%struct._FrontMtx* %frontmtx, i32 %J.5564) #6
  %cmp143 = icmp eq %struct._SubMtx* %call142, null
  br i1 %cmp143, label %for.inc148, label %if.then145

if.then145:                                       ; preds = %for.body141
  %call146 = call i32 @SubMtx_writeToBinaryFile(%struct._SubMtx* %call142, %struct._IO_FILE* %fp) #6
  br label %for.inc148

for.inc148:                                       ; preds = %for.body141, %if.then145
  %inc149 = add nsw i32 %J.5564, 1
  %exitcond599 = icmp eq i32 %inc149, %2
  br i1 %exitcond599, label %for.end150, label %for.body141

for.end150.thread:                                ; preds = %for.end106.thread, %for.end106
  store i32 0, i32* %nmtx, align 4, !tbaa !3
  %35 = bitcast i32* %nmtx to i8*
  %call136617 = call i64 @fwrite(i8* %35, i64 4, i64 1, %struct._IO_FILE* %fp) #6
  store i32 0, i32* %nmtx, align 4, !tbaa !3
  %call164623 = call i64 @fwrite(i8* %35, i64 4, i64 1, %struct._IO_FILE* %fp) #6
  store i32 0, i32* %nmtx, align 4, !tbaa !3
  %call192628633 = call i64 @fwrite(i8* %35, i64 4, i64 1, %struct._IO_FILE* %fp) #6
  br label %cleanup

for.end150:                                       ; preds = %for.inc148
  store i32 0, i32* %nmtx, align 4, !tbaa !3
  br label %for.body154

for.body154:                                      ; preds = %for.end150, %for.inc161
  %J.6562 = phi i32 [ %inc162, %for.inc161 ], [ 0, %for.end150 ]
  %call155 = call %struct._SubMtx* @FrontMtx_upperMtx(%struct._FrontMtx* %frontmtx, i32 %J.6562, i32 %J.6562) #6
  %cmp156 = icmp eq %struct._SubMtx* %call155, null
  br i1 %cmp156, label %for.inc161, label %if.then158

if.then158:                                       ; preds = %for.body154
  %36 = load i32* %nmtx, align 4, !tbaa !3
  %inc159 = add nsw i32 %36, 1
  store i32 %inc159, i32* %nmtx, align 4, !tbaa !3
  br label %for.inc161

for.inc161:                                       ; preds = %for.body154, %if.then158
  %inc162 = add nsw i32 %J.6562, 1
  %exitcond598 = icmp eq i32 %inc162, %2
  br i1 %exitcond598, label %for.end163, label %for.body154

for.end163:                                       ; preds = %for.inc161
  %call164 = call i64 @fwrite(i8* %34, i64 4, i64 1, %struct._IO_FILE* %fp) #6
  br label %for.body169

for.body169:                                      ; preds = %for.inc176, %for.end163
  %J.7560 = phi i32 [ 0, %for.end163 ], [ %inc177, %for.inc176 ]
  %call170 = call %struct._SubMtx* @FrontMtx_upperMtx(%struct._FrontMtx* %frontmtx, i32 %J.7560, i32 %J.7560) #6
  %cmp171 = icmp eq %struct._SubMtx* %call170, null
  br i1 %cmp171, label %for.inc176, label %if.then173

if.then173:                                       ; preds = %for.body169
  %call174 = call i32 @SubMtx_writeToBinaryFile(%struct._SubMtx* %call170, %struct._IO_FILE* %fp) #6
  br label %for.inc176

for.inc176:                                       ; preds = %for.body169, %if.then173
  %inc177 = add nsw i32 %J.7560, 1
  %exitcond597 = icmp eq i32 %inc177, %2
  br i1 %exitcond597, label %for.end178, label %for.body169

for.end178.thread:                                ; preds = %for.end135.thread, %for.end135
  %.ph619.ph = phi i8* [ %32, %for.end135.thread ], [ %34, %for.end135 ]
  store i32 0, i32* %nmtx, align 4, !tbaa !3
  %call164623631 = call i64 @fwrite(i8* %.ph619.ph, i64 4, i64 1, %struct._IO_FILE* %fp) #6
  store i32 0, i32* %nmtx, align 4, !tbaa !3
  %call192628 = call i64 @fwrite(i8* %.ph619.ph, i64 4, i64 1, %struct._IO_FILE* %fp) #6
  br label %cleanup

for.end178:                                       ; preds = %for.inc176
  store i32 0, i32* %nmtx, align 4, !tbaa !3
  br label %for.body182

for.body182:                                      ; preds = %for.end178, %for.inc189
  %J.8558 = phi i32 [ %inc190, %for.inc189 ], [ 0, %for.end178 ]
  %call183 = call %struct._SubMtx* @FrontMtx_upperMtx(%struct._FrontMtx* %frontmtx, i32 %J.8558, i32 %2) #6
  %cmp184 = icmp eq %struct._SubMtx* %call183, null
  br i1 %cmp184, label %for.inc189, label %if.then186

if.then186:                                       ; preds = %for.body182
  %37 = load i32* %nmtx, align 4, !tbaa !3
  %inc187 = add nsw i32 %37, 1
  store i32 %inc187, i32* %nmtx, align 4, !tbaa !3
  br label %for.inc189

for.inc189:                                       ; preds = %for.body182, %if.then186
  %inc190 = add nsw i32 %J.8558, 1
  %exitcond596 = icmp eq i32 %inc190, %2
  br i1 %exitcond596, label %for.end191, label %for.body182

for.end191:                                       ; preds = %for.inc189
  %call192 = call i64 @fwrite(i8* %34, i64 4, i64 1, %struct._IO_FILE* %fp) #6
  br label %for.body197

for.body197:                                      ; preds = %for.end191, %for.inc204
  %J.9556 = phi i32 [ %inc205, %for.inc204 ], [ 0, %for.end191 ]
  %call198 = call %struct._SubMtx* @FrontMtx_upperMtx(%struct._FrontMtx* %frontmtx, i32 %J.9556, i32 %2) #6
  %cmp199 = icmp eq %struct._SubMtx* %call198, null
  br i1 %cmp199, label %for.inc204, label %if.then201

if.then201:                                       ; preds = %for.body197
  %call202 = call i32 @SubMtx_writeToBinaryFile(%struct._SubMtx* %call198, %struct._IO_FILE* %fp) #6
  br label %for.inc204

for.inc204:                                       ; preds = %for.body197, %if.then201
  %inc205 = add nsw i32 %J.9556, 1
  %exitcond = icmp eq i32 %inc205, %2
  br i1 %exitcond, label %cleanup, label %for.body197

if.else:                                          ; preds = %if.end62
  br i1 %cmp68, label %if.then210, label %if.end217

if.then210:                                       ; preds = %if.else
  %lowerblockIVL = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 16
  %38 = load %struct._IVL** %lowerblockIVL, align 8, !tbaa !0
  %call211 = call i32 @IVL_writeToBinaryFile(%struct._IVL* %38, %struct._IO_FILE* %fp) #6
  %cmp212 = icmp eq i32 %call211, 1
  br i1 %cmp212, label %if.end217, label %if.then214

if.then214:                                       ; preds = %if.then210
  %39 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call215 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %39, i8* getelementptr inbounds ([91 x i8]* @.str57, i64 0, i64 0), %struct._FrontMtx* %frontmtx, %struct._IO_FILE* %fp, i32 %call211) #6
  br label %cleanup

if.end217:                                        ; preds = %if.then210, %if.else
  %upperblockIVL = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 17
  %40 = load %struct._IVL** %upperblockIVL, align 8, !tbaa !0
  %call218 = call i32 @IVL_writeToBinaryFile(%struct._IVL* %40, %struct._IO_FILE* %fp) #6
  %cmp219 = icmp eq i32 %call218, 1
  br i1 %cmp219, label %if.end223, label %if.then221

if.then221:                                       ; preds = %if.end217
  %41 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call222 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %41, i8* getelementptr inbounds ([91 x i8]* @.str58, i64 0, i64 0), %struct._FrontMtx* %frontmtx, %struct._IO_FILE* %fp, i32 %call218) #6
  br label %cleanup

if.end223:                                        ; preds = %if.end217
  %42 = load i32* %symmetryflag, align 4, !tbaa !3
  %cmp225 = icmp eq i32 %42, 2
  br i1 %cmp225, label %if.then227, label %if.end223.if.end277_crit_edge

if.end223.if.end277_crit_edge:                    ; preds = %if.end223
  %.pre = load i32* %nfront2, align 4, !tbaa !3
  br label %if.end277

if.then227:                                       ; preds = %if.end223
  store i32 0, i32* %nmtx, align 4, !tbaa !3
  %43 = load i32* %nfront2, align 4, !tbaa !3
  %cmp230594 = icmp sgt i32 %43, 0
  br i1 %cmp230594, label %for.body232.lr.ph, label %for.end250

for.body232.lr.ph:                                ; preds = %if.then227
  %lowerblockIVL233 = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 16
  br label %for.body232

for.body232:                                      ; preds = %for.body232.lr.ph, %for.inc248
  %J.10595 = phi i32 [ 0, %for.body232.lr.ph ], [ %inc249, %for.inc248 ]
  %44 = load %struct._IVL** %lowerblockIVL233, align 8, !tbaa !0
  call void @IVL_listAndSize(%struct._IVL* %44, i32 %J.10595, i32* %nadj, i32** %adj) #6
  %45 = load i32* %nadj, align 4, !tbaa !3
  %cmp235592 = icmp sgt i32 %45, 0
  br i1 %cmp235592, label %for.body237, label %for.inc248

for.body237:                                      ; preds = %for.body232, %for.inc245
  %indvars.iv609 = phi i64 [ %indvars.iv.next610, %for.inc245 ], [ 0, %for.body232 ]
  %46 = load i32** %adj, align 8, !tbaa !0
  %arrayidx238 = getelementptr inbounds i32* %46, i64 %indvars.iv609
  %47 = load i32* %arrayidx238, align 4, !tbaa !3
  %call239 = call %struct._SubMtx* @FrontMtx_lowerMtx(%struct._FrontMtx* %frontmtx, i32 %47, i32 %J.10595) #6
  %cmp240 = icmp eq %struct._SubMtx* %call239, null
  br i1 %cmp240, label %for.inc245, label %if.then242

if.then242:                                       ; preds = %for.body237
  %48 = load i32* %nmtx, align 4, !tbaa !3
  %inc243 = add nsw i32 %48, 1
  store i32 %inc243, i32* %nmtx, align 4, !tbaa !3
  br label %for.inc245

for.inc245:                                       ; preds = %for.body237, %if.then242
  %indvars.iv.next610 = add i64 %indvars.iv609, 1
  %49 = load i32* %nadj, align 4, !tbaa !3
  %50 = trunc i64 %indvars.iv.next610 to i32
  %cmp235 = icmp slt i32 %50, %49
  br i1 %cmp235, label %for.body237, label %for.inc248

for.inc248:                                       ; preds = %for.inc245, %for.body232
  %inc249 = add nsw i32 %J.10595, 1
  %51 = load i32* %nfront2, align 4, !tbaa !3
  %cmp230 = icmp slt i32 %inc249, %51
  br i1 %cmp230, label %for.body232, label %for.end250

for.end250:                                       ; preds = %for.inc248, %if.then227
  %52 = bitcast i32* %nmtx to i8*
  %call251 = call i64 @fwrite(i8* %52, i64 4, i64 1, %struct._IO_FILE* %fp) #6
  %53 = load i32* %nfront2, align 4, !tbaa !3
  %cmp255590 = icmp sgt i32 %53, 0
  br i1 %cmp255590, label %for.body257.lr.ph, label %if.end277.thread

if.end277.thread:                                 ; preds = %for.end250
  store i32 0, i32* %nmtx, align 4, !tbaa !3
  br label %for.end291

for.body257.lr.ph:                                ; preds = %for.end250
  %lowerblockIVL258 = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 16
  br label %for.body257

for.body257:                                      ; preds = %for.body257.lr.ph, %for.inc274
  %J.11591 = phi i32 [ 0, %for.body257.lr.ph ], [ %inc275, %for.inc274 ]
  %54 = load %struct._IVL** %lowerblockIVL258, align 8, !tbaa !0
  call void @IVL_listAndSize(%struct._IVL* %54, i32 %J.11591, i32* %nadj, i32** %adj) #6
  %55 = load i32* %nadj, align 4, !tbaa !3
  %cmp260588 = icmp sgt i32 %55, 0
  br i1 %cmp260588, label %for.body262, label %for.inc274

for.body262:                                      ; preds = %for.body257, %for.inc271
  %indvars.iv607 = phi i64 [ %indvars.iv.next608, %for.inc271 ], [ 0, %for.body257 ]
  %56 = load i32** %adj, align 8, !tbaa !0
  %arrayidx264 = getelementptr inbounds i32* %56, i64 %indvars.iv607
  %57 = load i32* %arrayidx264, align 4, !tbaa !3
  %call265 = call %struct._SubMtx* @FrontMtx_lowerMtx(%struct._FrontMtx* %frontmtx, i32 %57, i32 %J.11591) #6
  %cmp266 = icmp eq %struct._SubMtx* %call265, null
  br i1 %cmp266, label %for.inc271, label %if.then268

if.then268:                                       ; preds = %for.body262
  %call269 = call i32 @SubMtx_writeToBinaryFile(%struct._SubMtx* %call265, %struct._IO_FILE* %fp) #6
  br label %for.inc271

for.inc271:                                       ; preds = %for.body262, %if.then268
  %indvars.iv.next608 = add i64 %indvars.iv607, 1
  %58 = load i32* %nadj, align 4, !tbaa !3
  %59 = trunc i64 %indvars.iv.next608 to i32
  %cmp260 = icmp slt i32 %59, %58
  br i1 %cmp260, label %for.body262, label %for.inc274

for.inc274:                                       ; preds = %for.inc271, %for.body257
  %inc275 = add nsw i32 %J.11591, 1
  %60 = load i32* %nfront2, align 4, !tbaa !3
  %cmp255 = icmp slt i32 %inc275, %60
  br i1 %cmp255, label %for.body257, label %if.end277

if.end277:                                        ; preds = %for.inc274, %if.end223.if.end277_crit_edge
  %61 = phi i32 [ %.pre, %if.end223.if.end277_crit_edge ], [ %60, %for.inc274 ]
  store i32 0, i32* %nmtx, align 4, !tbaa !3
  %cmp280586 = icmp sgt i32 %61, 0
  br i1 %cmp280586, label %for.body282, label %for.end291

for.body282:                                      ; preds = %if.end277, %for.inc289
  %J.12587 = phi i32 [ %inc290, %for.inc289 ], [ 0, %if.end277 ]
  %call283 = call %struct._SubMtx* @FrontMtx_diagMtx(%struct._FrontMtx* %frontmtx, i32 %J.12587) #6
  %cmp284 = icmp eq %struct._SubMtx* %call283, null
  br i1 %cmp284, label %for.inc289, label %if.then286

if.then286:                                       ; preds = %for.body282
  %62 = load i32* %nmtx, align 4, !tbaa !3
  %inc287 = add nsw i32 %62, 1
  store i32 %inc287, i32* %nmtx, align 4, !tbaa !3
  br label %for.inc289

for.inc289:                                       ; preds = %for.body282, %if.then286
  %inc290 = add nsw i32 %J.12587, 1
  %63 = load i32* %nfront2, align 4, !tbaa !3
  %cmp280 = icmp slt i32 %inc290, %63
  br i1 %cmp280, label %for.body282, label %for.end291

for.end291:                                       ; preds = %for.inc289, %if.end277.thread, %if.end277
  %64 = bitcast i32* %nmtx to i8*
  %call292 = call i64 @fwrite(i8* %64, i64 4, i64 1, %struct._IO_FILE* %fp) #6
  %65 = load i32* %nfront2, align 4, !tbaa !3
  %cmp296584 = icmp sgt i32 %65, 0
  br i1 %cmp296584, label %for.body298, label %for.end307.thread

for.end307.thread:                                ; preds = %for.end291
  store i32 0, i32* %nmtx, align 4, !tbaa !3
  br label %for.end331

for.body298:                                      ; preds = %for.end291, %for.inc305
  %J.13585 = phi i32 [ %inc306, %for.inc305 ], [ 0, %for.end291 ]
  %call299 = call %struct._SubMtx* @FrontMtx_diagMtx(%struct._FrontMtx* %frontmtx, i32 %J.13585) #6
  %cmp300 = icmp eq %struct._SubMtx* %call299, null
  br i1 %cmp300, label %for.inc305, label %if.then302

if.then302:                                       ; preds = %for.body298
  %call303 = call i32 @SubMtx_writeToBinaryFile(%struct._SubMtx* %call299, %struct._IO_FILE* %fp) #6
  br label %for.inc305

for.inc305:                                       ; preds = %for.body298, %if.then302
  %inc306 = add nsw i32 %J.13585, 1
  %66 = load i32* %nfront2, align 4, !tbaa !3
  %cmp296 = icmp slt i32 %inc306, %66
  br i1 %cmp296, label %for.body298, label %for.end307

for.end307:                                       ; preds = %for.inc305
  store i32 0, i32* %nmtx, align 4, !tbaa !3
  %cmp310582 = icmp sgt i32 %66, 0
  br i1 %cmp310582, label %for.body312, label %for.end331

for.body312:                                      ; preds = %for.end307, %for.inc329
  %J.14583 = phi i32 [ %inc330, %for.inc329 ], [ 0, %for.end307 ]
  %67 = load %struct._IVL** %upperblockIVL, align 8, !tbaa !0
  call void @IVL_listAndSize(%struct._IVL* %67, i32 %J.14583, i32* %nadj, i32** %adj) #6
  %68 = load i32* %nadj, align 4, !tbaa !3
  %cmp315580 = icmp sgt i32 %68, 0
  br i1 %cmp315580, label %for.body317, label %for.inc329

for.body317:                                      ; preds = %for.body312, %for.inc326
  %indvars.iv605 = phi i64 [ %indvars.iv.next606, %for.inc326 ], [ 0, %for.body312 ]
  %69 = load i32** %adj, align 8, !tbaa !0
  %arrayidx319 = getelementptr inbounds i32* %69, i64 %indvars.iv605
  %70 = load i32* %arrayidx319, align 4, !tbaa !3
  %call320 = call %struct._SubMtx* @FrontMtx_upperMtx(%struct._FrontMtx* %frontmtx, i32 %J.14583, i32 %70) #6
  %cmp321 = icmp eq %struct._SubMtx* %call320, null
  br i1 %cmp321, label %for.inc326, label %if.then323

if.then323:                                       ; preds = %for.body317
  %71 = load i32* %nmtx, align 4, !tbaa !3
  %inc324 = add nsw i32 %71, 1
  store i32 %inc324, i32* %nmtx, align 4, !tbaa !3
  br label %for.inc326

for.inc326:                                       ; preds = %for.body317, %if.then323
  %indvars.iv.next606 = add i64 %indvars.iv605, 1
  %72 = load i32* %nadj, align 4, !tbaa !3
  %73 = trunc i64 %indvars.iv.next606 to i32
  %cmp315 = icmp slt i32 %73, %72
  br i1 %cmp315, label %for.body317, label %for.inc329

for.inc329:                                       ; preds = %for.inc326, %for.body312
  %inc330 = add nsw i32 %J.14583, 1
  %74 = load i32* %nfront2, align 4, !tbaa !3
  %cmp310 = icmp slt i32 %inc330, %74
  br i1 %cmp310, label %for.body312, label %for.end331

for.end331:                                       ; preds = %for.inc329, %for.end307.thread, %for.end307
  %call332 = call i64 @fwrite(i8* %64, i64 4, i64 1, %struct._IO_FILE* %fp) #6
  %75 = load i32* %nfront2, align 4, !tbaa !3
  %cmp336578 = icmp sgt i32 %75, 0
  br i1 %cmp336578, label %for.body338, label %cleanup

for.body338:                                      ; preds = %for.end331, %for.inc355
  %J.15579 = phi i32 [ %inc356, %for.inc355 ], [ 0, %for.end331 ]
  %76 = load %struct._IVL** %upperblockIVL, align 8, !tbaa !0
  call void @IVL_listAndSize(%struct._IVL* %76, i32 %J.15579, i32* %nadj, i32** %adj) #6
  %77 = load i32* %nadj, align 4, !tbaa !3
  %cmp341575 = icmp sgt i32 %77, 0
  br i1 %cmp341575, label %for.body343, label %for.inc355

for.body343:                                      ; preds = %for.body338, %for.inc352
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc352 ], [ 0, %for.body338 ]
  %78 = load i32** %adj, align 8, !tbaa !0
  %arrayidx345 = getelementptr inbounds i32* %78, i64 %indvars.iv
  %79 = load i32* %arrayidx345, align 4, !tbaa !3
  %call346 = call %struct._SubMtx* @FrontMtx_upperMtx(%struct._FrontMtx* %frontmtx, i32 %J.15579, i32 %79) #6
  %cmp347 = icmp eq %struct._SubMtx* %call346, null
  br i1 %cmp347, label %for.inc352, label %if.then349

if.then349:                                       ; preds = %for.body343
  %call350 = call i32 @SubMtx_writeToBinaryFile(%struct._SubMtx* %call346, %struct._IO_FILE* %fp) #6
  br label %for.inc352

for.inc352:                                       ; preds = %for.body343, %if.then349
  %indvars.iv.next = add i64 %indvars.iv, 1
  %80 = load i32* %nadj, align 4, !tbaa !3
  %81 = trunc i64 %indvars.iv.next to i32
  %cmp341 = icmp slt i32 %81, %80
  br i1 %cmp341, label %for.body343, label %for.inc355

for.inc355:                                       ; preds = %for.inc352, %for.body338
  %inc356 = add nsw i32 %J.15579, 1
  %82 = load i32* %nfront2, align 4, !tbaa !3
  %cmp336 = icmp slt i32 %inc356, %82
  br i1 %cmp336, label %for.body338, label %cleanup

cleanup:                                          ; preds = %for.end178.thread, %for.end150.thread, %for.end331, %for.inc355, %for.inc204, %if.then221, %if.then214, %if.then59, %if.then52, %if.then37, %if.then27, %if.then21, %if.then15
  %retval.0 = phi i32 [ 0, %if.then15 ], [ 0, %if.then21 ], [ 0, %if.then27 ], [ 0, %if.then37 ], [ 0, %if.then52 ], [ 0, %if.then59 ], [ 0, %if.then214 ], [ 0, %if.then221 ], [ 1, %for.inc204 ], [ 1, %for.end178.thread ], [ 1, %for.inc355 ], [ 1, %for.end331 ], [ 1, %for.end150.thread ]
  call void @llvm.lifetime.end(i64 40, i8* %0) #3
  ret i32 %retval.0
}

; Function Attrs: nounwind optsize uwtable
define i32 @FrontMtx_writeToFormattedFile(%struct._FrontMtx* %frontmtx, %struct._IO_FILE* %fp) #0 {
entry:
  %nadj = alloca i32, align 4
  %adj = alloca i32*, align 8
  %cmp = icmp eq %struct._FrontMtx* %frontmtx, null
  %cmp1 = icmp eq %struct._IO_FILE* %fp, null
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([66 x i8]* @.str39, i64 0, i64 0), %struct._FrontMtx* %frontmtx, %struct._IO_FILE* %fp) #6
  call void @exit(i32 -1) #9
  unreachable

if.end:                                           ; preds = %entry
  %nfront2 = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 0
  %1 = load i32* %nfront2, align 4, !tbaa !3
  %neqns = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 1
  %2 = load i32* %neqns, align 4, !tbaa !3
  %type = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 2
  %3 = load i32* %type, align 4, !tbaa !3
  %symmetryflag = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 3
  %4 = load i32* %symmetryflag, align 4, !tbaa !3
  %pivotingflag = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 5
  %5 = load i32* %pivotingflag, align 4, !tbaa !3
  %sparsityflag = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 4
  %6 = load i32* %sparsityflag, align 4, !tbaa !3
  %dataMode = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 6
  %7 = load i32* %dataMode, align 4, !tbaa !3
  %nentD = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 7
  %8 = load i32* %nentD, align 4, !tbaa !3
  %nentL = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 8
  %9 = load i32* %nentL, align 4, !tbaa !3
  %nentU = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 9
  %10 = load i32* %nentU, align 4, !tbaa !3
  %call4 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([32 x i8]* @.str40, i64 0, i64 0), i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8, i32 %9, i32 %10) #6
  %cmp5 = icmp slt i32 %call4, 0
  br i1 %cmp5, label %if.then6, label %if.end8

if.then6:                                         ; preds = %if.end
  %11 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call7 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %11, i8* getelementptr inbounds ([91 x i8]* @.str41, i64 0, i64 0), %struct._FrontMtx* %frontmtx, %struct._IO_FILE* %fp, i32 %call4) #6
  br label %return

if.end8:                                          ; preds = %if.end
  %frontETree = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 11
  %12 = load %struct._ETree** %frontETree, align 8, !tbaa !0
  %call9 = call i32 @ETree_writeToFormattedFile(%struct._ETree* %12, %struct._IO_FILE* %fp) #6
  %cmp10 = icmp eq i32 %call9, 1
  br i1 %cmp10, label %if.end13, label %if.then11

if.then11:                                        ; preds = %if.end8
  %13 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call12 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %13, i8* getelementptr inbounds ([91 x i8]* @.str42, i64 0, i64 0), %struct._FrontMtx* %frontmtx, %struct._IO_FILE* %fp, i32 %call9) #6
  br label %return

if.end13:                                         ; preds = %if.end8
  %symbfacIVL = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 13
  %14 = load %struct._IVL** %symbfacIVL, align 8, !tbaa !0
  %call14 = call i32 @IVL_writeToFormattedFile(%struct._IVL* %14, %struct._IO_FILE* %fp) #6
  %cmp15 = icmp eq i32 %call14, 1
  br i1 %cmp15, label %if.end18, label %if.then16

if.then16:                                        ; preds = %if.end13
  %15 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call17 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %15, i8* getelementptr inbounds ([91 x i8]* @.str43, i64 0, i64 0), %struct._FrontMtx* %frontmtx, %struct._IO_FILE* %fp, i32 %call14) #6
  br label %return

if.end18:                                         ; preds = %if.end13
  %16 = load i32* %pivotingflag, align 4, !tbaa !3
  %cmp20 = icmp eq i32 %16, 1
  br i1 %cmp20, label %if.then21, label %if.end45

if.then21:                                        ; preds = %if.end18
  %frontsizesIV = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 12
  %17 = load %struct._IV** %frontsizesIV, align 8, !tbaa !0
  %call22 = call i32 @IV_writeToFormattedFile(%struct._IV* %17, %struct._IO_FILE* %fp) #6
  %cmp23 = icmp eq i32 %call22, 1
  br i1 %cmp23, label %if.end27, label %if.then24

if.then24:                                        ; preds = %if.then21
  %18 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call25 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %18, i8* getelementptr inbounds ([93 x i8]* @.str44, i64 0, i64 0), %struct._FrontMtx* %frontmtx, %struct._IO_FILE* %fp, i32 %call22) #6
  br label %return

if.end27:                                         ; preds = %if.then21
  %.pr = load i32* %pivotingflag, align 4, !tbaa !3
  %cmp29 = icmp eq i32 %.pr, 1
  br i1 %cmp29, label %if.then30, label %if.end45

if.then30:                                        ; preds = %if.end27
  %19 = load i32* %symmetryflag, align 4, !tbaa !3
  %cmp32 = icmp eq i32 %19, 2
  br i1 %cmp32, label %if.then33, label %if.end39

if.then33:                                        ; preds = %if.then30
  %rowadjIVL = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 14
  %20 = load %struct._IVL** %rowadjIVL, align 8, !tbaa !0
  %call34 = call i32 @IVL_writeToFormattedFile(%struct._IVL* %20, %struct._IO_FILE* %fp) #6
  %cmp35 = icmp eq i32 %call34, 1
  br i1 %cmp35, label %if.end39, label %if.then36

if.then36:                                        ; preds = %if.then33
  %21 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call37 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %21, i8* getelementptr inbounds ([90 x i8]* @.str45, i64 0, i64 0), %struct._FrontMtx* %frontmtx, %struct._IO_FILE* %fp, i32 %call34) #6
  br label %return

if.end39:                                         ; preds = %if.then33, %if.then30
  %coladjIVL = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 15
  %22 = load %struct._IVL** %coladjIVL, align 8, !tbaa !0
  %call40 = call i32 @IVL_writeToFormattedFile(%struct._IVL* %22, %struct._IO_FILE* %fp) #6
  %cmp41 = icmp eq i32 %call40, 1
  br i1 %cmp41, label %if.end45, label %if.then42

if.then42:                                        ; preds = %if.end39
  %23 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call43 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %23, i8* getelementptr inbounds ([90 x i8]* @.str46, i64 0, i64 0), %struct._FrontMtx* %frontmtx, %struct._IO_FILE* %fp, i32 %call40) #6
  br label %return

if.end45:                                         ; preds = %if.end18, %if.end39, %if.end27
  %24 = load i32* %dataMode, align 4, !tbaa !3
  %cmp47 = icmp eq i32 %24, 1
  %25 = load i32* %symmetryflag, align 4, !tbaa !3
  %cmp50 = icmp eq i32 %25, 2
  br i1 %cmp47, label %if.then48, label %if.else

if.then48:                                        ; preds = %if.end45
  br i1 %cmp50, label %for.cond.preheader, label %for.cond94.preheader

for.cond.preheader:                               ; preds = %if.then48
  %cmp52528 = icmp sgt i32 %1, 0
  br i1 %cmp52528, label %for.body, label %for.end.thread

for.end.thread:                                   ; preds = %for.cond.preheader
  %call58580 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([5 x i8]* @.str47, i64 0, i64 0), i32 0) #6
  br label %for.cond94.preheader.thread

for.cond94.preheader:                             ; preds = %for.inc90, %if.then48
  %cmp95516 = icmp sgt i32 %1, 0
  br i1 %cmp95516, label %for.body96, label %for.end104.thread

for.end104.thread:                                ; preds = %for.cond94.preheader
  %call105582 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([5 x i8]* @.str47, i64 0, i64 0), i32 0) #6
  br label %for.cond140.preheader.thread

for.body:                                         ; preds = %for.cond.preheader, %for.body
  %nmtx.0530 = phi i32 [ %nmtx.0.inc, %for.body ], [ 0, %for.cond.preheader ]
  %J.0529 = phi i32 [ %inc57, %for.body ], [ 0, %for.cond.preheader ]
  %call53 = call %struct._SubMtx* @FrontMtx_lowerMtx(%struct._FrontMtx* %frontmtx, i32 %J.0529, i32 %J.0529) #6
  %not.cmp54 = icmp ne %struct._SubMtx* %call53, null
  %inc = zext i1 %not.cmp54 to i32
  %nmtx.0.inc = add nsw i32 %inc, %nmtx.0530
  %inc57 = add nsw i32 %J.0529, 1
  %exitcond571 = icmp eq i32 %inc57, %1
  br i1 %exitcond571, label %for.end, label %for.body

for.end:                                          ; preds = %for.body
  %call58 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([5 x i8]* @.str47, i64 0, i64 0), i32 %nmtx.0.inc) #6
  br i1 %cmp52528, label %for.body61, label %for.cond94.preheader.thread

for.cond70.preheader:                             ; preds = %for.inc67
  br i1 %cmp52528, label %for.body72, label %for.end80.thread

for.end80.thread:                                 ; preds = %for.cond70.preheader
  %call81581 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([5 x i8]* @.str47, i64 0, i64 0), i32 0) #6
  br label %for.cond117.preheader.thread

for.body61:                                       ; preds = %for.end, %for.inc67
  %J.1527 = phi i32 [ %inc68, %for.inc67 ], [ 0, %for.end ]
  %call62 = call %struct._SubMtx* @FrontMtx_lowerMtx(%struct._FrontMtx* %frontmtx, i32 %J.1527, i32 %J.1527) #6
  %cmp63 = icmp eq %struct._SubMtx* %call62, null
  br i1 %cmp63, label %for.inc67, label %if.then64

if.then64:                                        ; preds = %for.body61
  %call65 = call i32 @SubMtx_writeToFormattedFile(%struct._SubMtx* %call62, %struct._IO_FILE* %fp) #6
  br label %for.inc67

for.inc67:                                        ; preds = %for.body61, %if.then64
  %inc68 = add nsw i32 %J.1527, 1
  %exitcond570 = icmp eq i32 %inc68, %1
  br i1 %exitcond570, label %for.cond70.preheader, label %for.body61

for.body72:                                       ; preds = %for.cond70.preheader, %for.body72
  %nmtx.2524 = phi i32 [ %nmtx.2.inc76, %for.body72 ], [ 0, %for.cond70.preheader ]
  %J.2523 = phi i32 [ %inc79, %for.body72 ], [ 0, %for.cond70.preheader ]
  %call73 = call %struct._SubMtx* @FrontMtx_lowerMtx(%struct._FrontMtx* %frontmtx, i32 %1, i32 %J.2523) #6
  %not.cmp74 = icmp ne %struct._SubMtx* %call73, null
  %inc76 = zext i1 %not.cmp74 to i32
  %nmtx.2.inc76 = add nsw i32 %inc76, %nmtx.2524
  %inc79 = add nsw i32 %J.2523, 1
  %exitcond569 = icmp eq i32 %inc79, %1
  br i1 %exitcond569, label %for.end80, label %for.body72

for.end80:                                        ; preds = %for.body72
  %call81 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([5 x i8]* @.str47, i64 0, i64 0), i32 %nmtx.2.inc76) #6
  br i1 %cmp52528, label %for.body84, label %for.cond117.preheader.thread

for.cond94.preheader.thread:                      ; preds = %for.end, %for.end.thread
  %call81597 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([5 x i8]* @.str47, i64 0, i64 0), i32 0) #6
  %call105584 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([5 x i8]* @.str47, i64 0, i64 0), i32 0) #6
  %call128589601 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([5 x i8]* @.str47, i64 0, i64 0), i32 0) #6
  %call151593602 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([5 x i8]* @.str47, i64 0, i64 0), i32 0) #6
  br label %return

for.body84:                                       ; preds = %for.end80, %for.inc90
  %J.3521 = phi i32 [ %inc91, %for.inc90 ], [ 0, %for.end80 ]
  %call85 = call %struct._SubMtx* @FrontMtx_lowerMtx(%struct._FrontMtx* %frontmtx, i32 %1, i32 %J.3521) #6
  %cmp86 = icmp eq %struct._SubMtx* %call85, null
  br i1 %cmp86, label %for.inc90, label %if.then87

if.then87:                                        ; preds = %for.body84
  %call88 = call i32 @SubMtx_writeToFormattedFile(%struct._SubMtx* %call85, %struct._IO_FILE* %fp) #6
  br label %for.inc90

for.inc90:                                        ; preds = %for.body84, %if.then87
  %inc91 = add nsw i32 %J.3521, 1
  %exitcond568 = icmp eq i32 %inc91, %1
  br i1 %exitcond568, label %for.cond94.preheader, label %for.body84

for.body96:                                       ; preds = %for.cond94.preheader, %for.body96
  %nmtx.4518 = phi i32 [ %nmtx.4.inc100, %for.body96 ], [ 0, %for.cond94.preheader ]
  %J.4517 = phi i32 [ %inc103, %for.body96 ], [ 0, %for.cond94.preheader ]
  %call97 = call %struct._SubMtx* @FrontMtx_diagMtx(%struct._FrontMtx* %frontmtx, i32 %J.4517) #6
  %not.cmp98 = icmp ne %struct._SubMtx* %call97, null
  %inc100 = zext i1 %not.cmp98 to i32
  %nmtx.4.inc100 = add nsw i32 %inc100, %nmtx.4518
  %inc103 = add nsw i32 %J.4517, 1
  %exitcond567 = icmp eq i32 %inc103, %1
  br i1 %exitcond567, label %for.end104, label %for.body96

for.end104:                                       ; preds = %for.body96
  %call105 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([5 x i8]* @.str47, i64 0, i64 0), i32 %nmtx.4.inc100) #6
  br i1 %cmp95516, label %for.body108, label %for.cond140.preheader.thread

for.cond117.preheader.thread:                     ; preds = %for.end80.thread, %for.end80
  %call105584599 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([5 x i8]* @.str47, i64 0, i64 0), i32 0) #6
  %call128589 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([5 x i8]* @.str47, i64 0, i64 0), i32 0) #6
  %call151593603 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([5 x i8]* @.str47, i64 0, i64 0), i32 0) #6
  br label %return

for.body108:                                      ; preds = %for.end104, %for.inc114
  %J.5515 = phi i32 [ %inc115, %for.inc114 ], [ 0, %for.end104 ]
  %call109 = call %struct._SubMtx* @FrontMtx_diagMtx(%struct._FrontMtx* %frontmtx, i32 %J.5515) #6
  %cmp110 = icmp eq %struct._SubMtx* %call109, null
  br i1 %cmp110, label %for.inc114, label %if.then111

if.then111:                                       ; preds = %for.body108
  %call112 = call i32 @SubMtx_writeToFormattedFile(%struct._SubMtx* %call109, %struct._IO_FILE* %fp) #6
  br label %for.inc114

for.inc114:                                       ; preds = %for.body108, %if.then111
  %inc115 = add nsw i32 %J.5515, 1
  %exitcond566 = icmp eq i32 %inc115, %1
  br i1 %exitcond566, label %for.body119, label %for.body108

for.body119:                                      ; preds = %for.inc114, %for.body119
  %nmtx.6512 = phi i32 [ %nmtx.6.inc123, %for.body119 ], [ 0, %for.inc114 ]
  %J.6511 = phi i32 [ %inc126, %for.body119 ], [ 0, %for.inc114 ]
  %call120 = call %struct._SubMtx* @FrontMtx_upperMtx(%struct._FrontMtx* %frontmtx, i32 %J.6511, i32 %J.6511) #6
  %not.cmp121 = icmp ne %struct._SubMtx* %call120, null
  %inc123 = zext i1 %not.cmp121 to i32
  %nmtx.6.inc123 = add nsw i32 %inc123, %nmtx.6512
  %inc126 = add nsw i32 %J.6511, 1
  %exitcond565 = icmp eq i32 %inc126, %1
  br i1 %exitcond565, label %for.end127, label %for.body119

for.end127:                                       ; preds = %for.body119
  %call128 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([5 x i8]* @.str47, i64 0, i64 0), i32 %nmtx.6.inc123) #6
  br label %for.body131

for.cond140.preheader.thread:                     ; preds = %for.end104.thread, %for.end104
  %call128589600 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([5 x i8]* @.str47, i64 0, i64 0), i32 0) #6
  %call151593 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([5 x i8]* @.str47, i64 0, i64 0), i32 0) #6
  br label %return

for.body131:                                      ; preds = %for.inc137, %for.end127
  %J.7509 = phi i32 [ 0, %for.end127 ], [ %inc138, %for.inc137 ]
  %call132 = call %struct._SubMtx* @FrontMtx_upperMtx(%struct._FrontMtx* %frontmtx, i32 %J.7509, i32 %J.7509) #6
  %cmp133 = icmp eq %struct._SubMtx* %call132, null
  br i1 %cmp133, label %for.inc137, label %if.then134

if.then134:                                       ; preds = %for.body131
  %call135 = call i32 @SubMtx_writeToFormattedFile(%struct._SubMtx* %call132, %struct._IO_FILE* %fp) #6
  br label %for.inc137

for.inc137:                                       ; preds = %for.body131, %if.then134
  %inc138 = add nsw i32 %J.7509, 1
  %exitcond564 = icmp eq i32 %inc138, %1
  br i1 %exitcond564, label %for.body142, label %for.body131

for.body142:                                      ; preds = %for.inc137, %for.body142
  %nmtx.8507 = phi i32 [ %nmtx.8.inc146, %for.body142 ], [ 0, %for.inc137 ]
  %J.8506 = phi i32 [ %inc149, %for.body142 ], [ 0, %for.inc137 ]
  %call143 = call %struct._SubMtx* @FrontMtx_upperMtx(%struct._FrontMtx* %frontmtx, i32 %J.8506, i32 %1) #6
  %not.cmp144 = icmp ne %struct._SubMtx* %call143, null
  %inc146 = zext i1 %not.cmp144 to i32
  %nmtx.8.inc146 = add nsw i32 %inc146, %nmtx.8507
  %inc149 = add nsw i32 %J.8506, 1
  %exitcond563 = icmp eq i32 %inc149, %1
  br i1 %exitcond563, label %for.end150, label %for.body142

for.end150:                                       ; preds = %for.body142
  %call151 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([5 x i8]* @.str47, i64 0, i64 0), i32 %nmtx.8.inc146) #6
  br label %for.body154

for.body154:                                      ; preds = %for.end150, %for.inc160
  %J.9504 = phi i32 [ %inc161, %for.inc160 ], [ 0, %for.end150 ]
  %call155 = call %struct._SubMtx* @FrontMtx_upperMtx(%struct._FrontMtx* %frontmtx, i32 %J.9504, i32 %1) #6
  %cmp156 = icmp eq %struct._SubMtx* %call155, null
  br i1 %cmp156, label %for.inc160, label %if.then157

if.then157:                                       ; preds = %for.body154
  %call158 = call i32 @SubMtx_writeToFormattedFile(%struct._SubMtx* %call155, %struct._IO_FILE* %fp) #6
  br label %for.inc160

for.inc160:                                       ; preds = %for.body154, %if.then157
  %inc161 = add nsw i32 %J.9504, 1
  %exitcond = icmp eq i32 %inc161, %1
  br i1 %exitcond, label %return, label %for.body154

if.else:                                          ; preds = %if.end45
  br i1 %cmp50, label %if.then165, label %if.end171

if.then165:                                       ; preds = %if.else
  %lowerblockIVL = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 16
  %26 = load %struct._IVL** %lowerblockIVL, align 8, !tbaa !0
  %call166 = call i32 @IVL_writeToFormattedFile(%struct._IVL* %26, %struct._IO_FILE* %fp) #6
  %cmp167 = icmp eq i32 %call166, 1
  br i1 %cmp167, label %if.end171, label %if.then168

if.then168:                                       ; preds = %if.then165
  %27 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call169 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %27, i8* getelementptr inbounds ([94 x i8]* @.str48, i64 0, i64 0), %struct._FrontMtx* %frontmtx, %struct._IO_FILE* %fp, i32 %call166) #6
  br label %return

if.end171:                                        ; preds = %if.then165, %if.else
  %upperblockIVL = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 17
  %28 = load %struct._IVL** %upperblockIVL, align 8, !tbaa !0
  %call172 = call i32 @IVL_writeToFormattedFile(%struct._IVL* %28, %struct._IO_FILE* %fp) #6
  %cmp173 = icmp eq i32 %call172, 1
  br i1 %cmp173, label %if.end176, label %if.then174

if.then174:                                       ; preds = %if.end171
  %29 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call175 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %29, i8* getelementptr inbounds ([94 x i8]* @.str49, i64 0, i64 0), %struct._FrontMtx* %frontmtx, %struct._IO_FILE* %fp, i32 %call172) #6
  br label %return

if.end176:                                        ; preds = %if.end171
  %30 = load i32* %symmetryflag, align 4, !tbaa !3
  %cmp178 = icmp eq i32 %30, 2
  %31 = load i32* %nfront2, align 4, !tbaa !3
  br i1 %cmp178, label %for.cond180.preheader, label %for.cond222.preheader

for.cond180.preheader:                            ; preds = %if.end176
  %cmp182559 = icmp sgt i32 %31, 0
  br i1 %cmp182559, label %for.body183.lr.ph, label %for.end198

for.body183.lr.ph:                                ; preds = %for.cond180.preheader
  %lowerblockIVL184 = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 16
  br label %for.body183

for.cond222.preheader:                            ; preds = %if.end176, %for.inc218
  %32 = phi i32 [ %47, %for.inc218 ], [ %31, %if.end176 ]
  %cmp224547 = icmp sgt i32 %32, 0
  br i1 %cmp224547, label %for.body225, label %for.end233

for.body183:                                      ; preds = %for.body183.lr.ph, %for.inc196
  %nmtx.10561 = phi i32 [ 0, %for.body183.lr.ph ], [ %nmtx.11.lcssa, %for.inc196 ]
  %J.10560 = phi i32 [ 0, %for.body183.lr.ph ], [ %inc197, %for.inc196 ]
  %33 = load %struct._IVL** %lowerblockIVL184, align 8, !tbaa !0
  call void @IVL_listAndSize(%struct._IVL* %33, i32 %J.10560, i32* %nadj, i32** %adj) #6
  %34 = load i32* %nadj, align 4, !tbaa !3
  %cmp186555 = icmp sgt i32 %34, 0
  br i1 %cmp186555, label %for.body187, label %for.inc196

for.body187:                                      ; preds = %for.body183, %for.body187
  %indvars.iv576 = phi i64 [ %indvars.iv.next577, %for.body187 ], [ 0, %for.body183 ]
  %nmtx.11557 = phi i32 [ %nmtx.11.inc191, %for.body187 ], [ %nmtx.10561, %for.body183 ]
  %35 = load i32** %adj, align 8, !tbaa !0
  %arrayidx = getelementptr inbounds i32* %35, i64 %indvars.iv576
  %36 = load i32* %arrayidx, align 4, !tbaa !3
  %call188 = call %struct._SubMtx* @FrontMtx_lowerMtx(%struct._FrontMtx* %frontmtx, i32 %36, i32 %J.10560) #6
  %not.cmp189 = icmp ne %struct._SubMtx* %call188, null
  %inc191 = zext i1 %not.cmp189 to i32
  %nmtx.11.inc191 = add nsw i32 %inc191, %nmtx.11557
  %indvars.iv.next577 = add i64 %indvars.iv576, 1
  %37 = load i32* %nadj, align 4, !tbaa !3
  %38 = trunc i64 %indvars.iv.next577 to i32
  %cmp186 = icmp slt i32 %38, %37
  br i1 %cmp186, label %for.body187, label %for.inc196

for.inc196:                                       ; preds = %for.body187, %for.body183
  %nmtx.11.lcssa = phi i32 [ %nmtx.10561, %for.body183 ], [ %nmtx.11.inc191, %for.body187 ]
  %inc197 = add nsw i32 %J.10560, 1
  %39 = load i32* %nfront2, align 4, !tbaa !3
  %cmp182 = icmp slt i32 %inc197, %39
  br i1 %cmp182, label %for.body183, label %for.end198

for.end198:                                       ; preds = %for.inc196, %for.cond180.preheader
  %nmtx.10.lcssa = phi i32 [ 0, %for.cond180.preheader ], [ %nmtx.11.lcssa, %for.inc196 ]
  %call199 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([5 x i8]* @.str47, i64 0, i64 0), i32 %nmtx.10.lcssa) #6
  %40 = load i32* %nfront2, align 4, !tbaa !3
  %cmp202553 = icmp sgt i32 %40, 0
  br i1 %cmp202553, label %for.body203.lr.ph, label %for.end233

for.body203.lr.ph:                                ; preds = %for.end198
  %lowerblockIVL204 = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 16
  br label %for.body203

for.body203:                                      ; preds = %for.body203.lr.ph, %for.inc218
  %J.11554 = phi i32 [ 0, %for.body203.lr.ph ], [ %inc219, %for.inc218 ]
  %41 = load %struct._IVL** %lowerblockIVL204, align 8, !tbaa !0
  call void @IVL_listAndSize(%struct._IVL* %41, i32 %J.11554, i32* %nadj, i32** %adj) #6
  %42 = load i32* %nadj, align 4, !tbaa !3
  %cmp206551 = icmp sgt i32 %42, 0
  br i1 %cmp206551, label %for.body207, label %for.inc218

for.body207:                                      ; preds = %for.body203, %for.inc215
  %indvars.iv574 = phi i64 [ %indvars.iv.next575, %for.inc215 ], [ 0, %for.body203 ]
  %43 = load i32** %adj, align 8, !tbaa !0
  %arrayidx209 = getelementptr inbounds i32* %43, i64 %indvars.iv574
  %44 = load i32* %arrayidx209, align 4, !tbaa !3
  %call210 = call %struct._SubMtx* @FrontMtx_lowerMtx(%struct._FrontMtx* %frontmtx, i32 %44, i32 %J.11554) #6
  %cmp211 = icmp eq %struct._SubMtx* %call210, null
  br i1 %cmp211, label %for.inc215, label %if.then212

if.then212:                                       ; preds = %for.body207
  %call213 = call i32 @SubMtx_writeToFormattedFile(%struct._SubMtx* %call210, %struct._IO_FILE* %fp) #6
  br label %for.inc215

for.inc215:                                       ; preds = %for.body207, %if.then212
  %indvars.iv.next575 = add i64 %indvars.iv574, 1
  %45 = load i32* %nadj, align 4, !tbaa !3
  %46 = trunc i64 %indvars.iv.next575 to i32
  %cmp206 = icmp slt i32 %46, %45
  br i1 %cmp206, label %for.body207, label %for.inc218

for.inc218:                                       ; preds = %for.inc215, %for.body203
  %inc219 = add nsw i32 %J.11554, 1
  %47 = load i32* %nfront2, align 4, !tbaa !3
  %cmp202 = icmp slt i32 %inc219, %47
  br i1 %cmp202, label %for.body203, label %for.cond222.preheader

for.body225:                                      ; preds = %for.cond222.preheader, %for.body225
  %nmtx.13549 = phi i32 [ %nmtx.13.inc229, %for.body225 ], [ 0, %for.cond222.preheader ]
  %J.12548 = phi i32 [ %inc232, %for.body225 ], [ 0, %for.cond222.preheader ]
  %call226 = call %struct._SubMtx* @FrontMtx_diagMtx(%struct._FrontMtx* %frontmtx, i32 %J.12548) #6
  %not.cmp227 = icmp ne %struct._SubMtx* %call226, null
  %inc229 = zext i1 %not.cmp227 to i32
  %nmtx.13.inc229 = add nsw i32 %inc229, %nmtx.13549
  %inc232 = add nsw i32 %J.12548, 1
  %48 = load i32* %nfront2, align 4, !tbaa !3
  %cmp224 = icmp slt i32 %inc232, %48
  br i1 %cmp224, label %for.body225, label %for.end233

for.end233:                                       ; preds = %for.body225, %for.end198, %for.cond222.preheader
  %nmtx.13.lcssa = phi i32 [ 0, %for.cond222.preheader ], [ 0, %for.end198 ], [ %nmtx.13.inc229, %for.body225 ]
  %call234 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([5 x i8]* @.str47, i64 0, i64 0), i32 %nmtx.13.lcssa) #6
  %49 = load i32* %nfront2, align 4, !tbaa !3
  %cmp237545 = icmp sgt i32 %49, 0
  br i1 %cmp237545, label %for.body238, label %for.end267

for.cond247.preheader:                            ; preds = %for.inc244
  %cmp249541 = icmp sgt i32 %50, 0
  br i1 %cmp249541, label %for.body250, label %for.end267

for.body238:                                      ; preds = %for.end233, %for.inc244
  %J.13546 = phi i32 [ %inc245, %for.inc244 ], [ 0, %for.end233 ]
  %call239 = call %struct._SubMtx* @FrontMtx_diagMtx(%struct._FrontMtx* %frontmtx, i32 %J.13546) #6
  %cmp240 = icmp eq %struct._SubMtx* %call239, null
  br i1 %cmp240, label %for.inc244, label %if.then241

if.then241:                                       ; preds = %for.body238
  %call242 = call i32 @SubMtx_writeToFormattedFile(%struct._SubMtx* %call239, %struct._IO_FILE* %fp) #6
  br label %for.inc244

for.inc244:                                       ; preds = %for.body238, %if.then241
  %inc245 = add nsw i32 %J.13546, 1
  %50 = load i32* %nfront2, align 4, !tbaa !3
  %cmp237 = icmp slt i32 %inc245, %50
  br i1 %cmp237, label %for.body238, label %for.cond247.preheader

for.body250:                                      ; preds = %for.cond247.preheader, %for.inc265
  %nmtx.15543 = phi i32 [ %nmtx.16.lcssa, %for.inc265 ], [ 0, %for.cond247.preheader ]
  %J.14542 = phi i32 [ %inc266, %for.inc265 ], [ 0, %for.cond247.preheader ]
  %51 = load %struct._IVL** %upperblockIVL, align 8, !tbaa !0
  call void @IVL_listAndSize(%struct._IVL* %51, i32 %J.14542, i32* %nadj, i32** %adj) #6
  %52 = load i32* %nadj, align 4, !tbaa !3
  %cmp253537 = icmp sgt i32 %52, 0
  br i1 %cmp253537, label %for.body254, label %for.inc265

for.body254:                                      ; preds = %for.body250, %for.body254
  %indvars.iv572 = phi i64 [ %indvars.iv.next573, %for.body254 ], [ 0, %for.body250 ]
  %nmtx.16539 = phi i32 [ %nmtx.16.inc260, %for.body254 ], [ %nmtx.15543, %for.body250 ]
  %53 = load i32** %adj, align 8, !tbaa !0
  %arrayidx256 = getelementptr inbounds i32* %53, i64 %indvars.iv572
  %54 = load i32* %arrayidx256, align 4, !tbaa !3
  %call257 = call %struct._SubMtx* @FrontMtx_upperMtx(%struct._FrontMtx* %frontmtx, i32 %J.14542, i32 %54) #6
  %not.cmp258 = icmp ne %struct._SubMtx* %call257, null
  %inc260 = zext i1 %not.cmp258 to i32
  %nmtx.16.inc260 = add nsw i32 %inc260, %nmtx.16539
  %indvars.iv.next573 = add i64 %indvars.iv572, 1
  %55 = load i32* %nadj, align 4, !tbaa !3
  %56 = trunc i64 %indvars.iv.next573 to i32
  %cmp253 = icmp slt i32 %56, %55
  br i1 %cmp253, label %for.body254, label %for.inc265

for.inc265:                                       ; preds = %for.body254, %for.body250
  %nmtx.16.lcssa = phi i32 [ %nmtx.15543, %for.body250 ], [ %nmtx.16.inc260, %for.body254 ]
  %inc266 = add nsw i32 %J.14542, 1
  %57 = load i32* %nfront2, align 4, !tbaa !3
  %cmp249 = icmp slt i32 %inc266, %57
  br i1 %cmp249, label %for.body250, label %for.end267

for.end267:                                       ; preds = %for.end233, %for.inc265, %for.cond247.preheader
  %nmtx.15.lcssa = phi i32 [ 0, %for.cond247.preheader ], [ %nmtx.16.lcssa, %for.inc265 ], [ 0, %for.end233 ]
  %call268 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([5 x i8]* @.str47, i64 0, i64 0), i32 %nmtx.15.lcssa) #6
  %58 = load i32* %nfront2, align 4, !tbaa !3
  %cmp271535 = icmp sgt i32 %58, 0
  br i1 %cmp271535, label %for.body272, label %return

for.body272:                                      ; preds = %for.end267, %for.inc287
  %J.15536 = phi i32 [ %inc288, %for.inc287 ], [ 0, %for.end267 ]
  %59 = load %struct._IVL** %upperblockIVL, align 8, !tbaa !0
  call void @IVL_listAndSize(%struct._IVL* %59, i32 %J.15536, i32* %nadj, i32** %adj) #6
  %60 = load i32* %nadj, align 4, !tbaa !3
  %cmp275532 = icmp sgt i32 %60, 0
  br i1 %cmp275532, label %for.body276, label %for.inc287

for.body276:                                      ; preds = %for.body272, %for.inc284
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc284 ], [ 0, %for.body272 ]
  %61 = load i32** %adj, align 8, !tbaa !0
  %arrayidx278 = getelementptr inbounds i32* %61, i64 %indvars.iv
  %62 = load i32* %arrayidx278, align 4, !tbaa !3
  %call279 = call %struct._SubMtx* @FrontMtx_upperMtx(%struct._FrontMtx* %frontmtx, i32 %J.15536, i32 %62) #6
  %cmp280 = icmp eq %struct._SubMtx* %call279, null
  br i1 %cmp280, label %for.inc284, label %if.then281

if.then281:                                       ; preds = %for.body276
  %call282 = call i32 @SubMtx_writeToFormattedFile(%struct._SubMtx* %call279, %struct._IO_FILE* %fp) #6
  br label %for.inc284

for.inc284:                                       ; preds = %for.body276, %if.then281
  %indvars.iv.next = add i64 %indvars.iv, 1
  %63 = load i32* %nadj, align 4, !tbaa !3
  %64 = trunc i64 %indvars.iv.next to i32
  %cmp275 = icmp slt i32 %64, %63
  br i1 %cmp275, label %for.body276, label %for.inc287

for.inc287:                                       ; preds = %for.inc284, %for.body272
  %inc288 = add nsw i32 %J.15536, 1
  %65 = load i32* %nfront2, align 4, !tbaa !3
  %cmp271 = icmp slt i32 %inc288, %65
  br i1 %cmp271, label %for.body272, label %return

return:                                           ; preds = %for.cond140.preheader.thread, %for.cond117.preheader.thread, %for.cond94.preheader.thread, %for.end267, %for.inc287, %for.inc160, %if.then174, %if.then168, %if.then42, %if.then36, %if.then24, %if.then16, %if.then11, %if.then6
  %retval.0 = phi i32 [ 0, %if.then6 ], [ 0, %if.then11 ], [ 0, %if.then16 ], [ 0, %if.then24 ], [ 0, %if.then36 ], [ 0, %if.then42 ], [ 0, %if.then168 ], [ 0, %if.then174 ], [ 1, %for.inc160 ], [ 1, %for.cond140.preheader.thread ], [ 1, %for.inc287 ], [ 1, %for.end267 ], [ 1, %for.cond94.preheader.thread ], [ 1, %for.cond117.preheader.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind optsize uwtable
define i32 @FrontMtx_writeForHumanEye(%struct._FrontMtx* %frontmtx, %struct._IO_FILE* %fp) #0 {
entry:
  %nadj = alloca i32, align 4
  %adj = alloca i32*, align 8
  %cmp = icmp eq %struct._FrontMtx* %frontmtx, null
  %cmp1 = icmp eq %struct._IO_FILE* %fp, null
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([62 x i8]* @.str71, i64 0, i64 0), %struct._FrontMtx* %frontmtx, %struct._IO_FILE* %fp) #6
  call void @exit(i32 -1) #9
  unreachable

if.end:                                           ; preds = %entry
  %nfront2 = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 0
  %1 = load i32* %nfront2, align 4, !tbaa !3
  %call3 = call i32 @FrontMtx_writeStats(%struct._FrontMtx* %frontmtx, %struct._IO_FILE* %fp) #8
  %frontETree = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 11
  %2 = load %struct._ETree** %frontETree, align 8, !tbaa !0
  %cmp4 = icmp eq %struct._ETree* %2, null
  br i1 %cmp4, label %if.end10, label %if.then5

if.then5:                                         ; preds = %if.end
  %3 = call i64 @fwrite(i8* getelementptr inbounds ([30 x i8]* @.str72, i64 0, i64 0), i64 29, i64 1, %struct._IO_FILE* %fp) #3
  %4 = load %struct._ETree** %frontETree, align 8, !tbaa !0
  %call8 = call i32 @ETree_writeForHumanEye(%struct._ETree* %4, %struct._IO_FILE* %fp) #6
  %call9 = call i32 @fflush(%struct._IO_FILE* %fp) #6
  br label %if.end10

if.end10:                                         ; preds = %if.end, %if.then5
  %symbfacIVL = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 13
  %5 = load %struct._IVL** %symbfacIVL, align 8, !tbaa !0
  %cmp11 = icmp eq %struct._IVL* %5, null
  br i1 %cmp11, label %if.end17, label %if.then12

if.then12:                                        ; preds = %if.end10
  %6 = call i64 @fwrite(i8* getelementptr inbounds ([25 x i8]* @.str73, i64 0, i64 0), i64 24, i64 1, %struct._IO_FILE* %fp) #3
  %7 = load %struct._IVL** %symbfacIVL, align 8, !tbaa !0
  %call15 = call i32 @IVL_writeForHumanEye(%struct._IVL* %7, %struct._IO_FILE* %fp) #6
  %call16 = call i32 @fflush(%struct._IO_FILE* %fp) #6
  br label %if.end17

if.end17:                                         ; preds = %if.end10, %if.then12
  %frontsizesIV = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 12
  %8 = load %struct._IV** %frontsizesIV, align 8, !tbaa !0
  %cmp18 = icmp eq %struct._IV* %8, null
  br i1 %cmp18, label %if.end24, label %if.then19

if.then19:                                        ; preds = %if.end17
  %9 = call i64 @fwrite(i8* getelementptr inbounds ([26 x i8]* @.str74, i64 0, i64 0), i64 25, i64 1, %struct._IO_FILE* %fp) #3
  %10 = load %struct._IV** %frontsizesIV, align 8, !tbaa !0
  %call22 = call i32 @IV_writeForHumanEye(%struct._IV* %10, %struct._IO_FILE* %fp) #6
  %call23 = call i32 @fflush(%struct._IO_FILE* %fp) #6
  br label %if.end24

if.end24:                                         ; preds = %if.end17, %if.then19
  %rowadjIVL = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 14
  %11 = load %struct._IVL** %rowadjIVL, align 8, !tbaa !0
  %cmp25 = icmp eq %struct._IVL* %11, null
  br i1 %cmp25, label %if.end31, label %if.then26

if.then26:                                        ; preds = %if.end24
  %12 = call i64 @fwrite(i8* getelementptr inbounds ([21 x i8]* @.str75, i64 0, i64 0), i64 20, i64 1, %struct._IO_FILE* %fp) #3
  %13 = load %struct._IVL** %rowadjIVL, align 8, !tbaa !0
  %call29 = call i32 @IVL_writeForHumanEye(%struct._IVL* %13, %struct._IO_FILE* %fp) #6
  %call30 = call i32 @fflush(%struct._IO_FILE* %fp) #6
  br label %if.end31

if.end31:                                         ; preds = %if.end24, %if.then26
  %coladjIVL = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 15
  %14 = load %struct._IVL** %coladjIVL, align 8, !tbaa !0
  %cmp32 = icmp eq %struct._IVL* %14, null
  br i1 %cmp32, label %if.end38, label %if.then33

if.then33:                                        ; preds = %if.end31
  %15 = call i64 @fwrite(i8* getelementptr inbounds ([21 x i8]* @.str76, i64 0, i64 0), i64 20, i64 1, %struct._IO_FILE* %fp) #3
  %16 = load %struct._IVL** %coladjIVL, align 8, !tbaa !0
  %call36 = call i32 @IVL_writeForHumanEye(%struct._IVL* %16, %struct._IO_FILE* %fp) #6
  %call37 = call i32 @fflush(%struct._IO_FILE* %fp) #6
  br label %if.end38

if.end38:                                         ; preds = %if.end31, %if.then33
  %lowerblockIVL = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 16
  %17 = load %struct._IVL** %lowerblockIVL, align 8, !tbaa !0
  %cmp39 = icmp eq %struct._IVL* %17, null
  br i1 %cmp39, label %if.end45, label %if.then40

if.then40:                                        ; preds = %if.end38
  %18 = call i64 @fwrite(i8* getelementptr inbounds ([36 x i8]* @.str77, i64 0, i64 0), i64 35, i64 1, %struct._IO_FILE* %fp) #3
  %19 = load %struct._IVL** %lowerblockIVL, align 8, !tbaa !0
  %call43 = call i32 @IVL_writeForHumanEye(%struct._IVL* %19, %struct._IO_FILE* %fp) #6
  %call44 = call i32 @fflush(%struct._IO_FILE* %fp) #6
  br label %if.end45

if.end45:                                         ; preds = %if.end38, %if.then40
  %upperblockIVL = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 17
  %20 = load %struct._IVL** %upperblockIVL, align 8, !tbaa !0
  %cmp46 = icmp eq %struct._IVL* %20, null
  br i1 %cmp46, label %if.end52, label %if.then47

if.then47:                                        ; preds = %if.end45
  %21 = call i64 @fwrite(i8* getelementptr inbounds ([36 x i8]* @.str78, i64 0, i64 0), i64 35, i64 1, %struct._IO_FILE* %fp) #3
  %22 = load %struct._IVL** %upperblockIVL, align 8, !tbaa !0
  %call50 = call i32 @IVL_writeForHumanEye(%struct._IVL* %22, %struct._IO_FILE* %fp) #6
  %call51 = call i32 @fflush(%struct._IO_FILE* %fp) #6
  br label %if.end52

if.end52:                                         ; preds = %if.end45, %if.then47
  %symmetryflag = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 3
  %23 = load i32* %symmetryflag, align 4, !tbaa !3
  %cmp53 = icmp eq i32 %23, 2
  br i1 %cmp53, label %if.then54, label %if.end88

if.then54:                                        ; preds = %if.end52
  %24 = call i64 @fwrite(i8* getelementptr inbounds ([21 x i8]* @.str79, i64 0, i64 0), i64 20, i64 1, %struct._IO_FILE* %fp) #3
  %cmp56272 = icmp sgt i32 %1, 0
  br i1 %cmp56272, label %for.body.lr.ph, label %if.end88.thread

if.end88.thread:                                  ; preds = %if.then54
  %25 = call i64 @fwrite(i8* getelementptr inbounds ([24 x i8]* @.str82, i64 0, i64 0), i64 23, i64 1, %struct._IO_FILE* %fp) #3
  %26 = call i64 @fwrite(i8* getelementptr inbounds ([21 x i8]* @.str84, i64 0, i64 0), i64 20, i64 1, %struct._IO_FILE* %fp) #3
  br label %for.end145

for.body.lr.ph:                                   ; preds = %if.then54
  %dataMode = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 6
  br label %for.body

for.body:                                         ; preds = %for.inc85, %for.body.lr.ph
  %J.0273 = phi i32 [ 0, %for.body.lr.ph ], [ %inc86, %for.inc85 ]
  %call57 = call %struct._SubMtx* @FrontMtx_lowerMtx(%struct._FrontMtx* %frontmtx, i32 %J.0273, i32 %J.0273) #6
  %cmp58 = icmp eq %struct._SubMtx* %call57, null
  br i1 %cmp58, label %if.end63, label %if.then59

if.then59:                                        ; preds = %for.body
  %27 = call i64 @fwrite(i8* getelementptr inbounds ([35 x i8]* @.str80, i64 0, i64 0), i64 34, i64 1, %struct._IO_FILE* %fp) #3
  %call61 = call i32 @SubMtx_writeForHumanEye(%struct._SubMtx* %call57, %struct._IO_FILE* %fp) #6
  %call62 = call i32 @fflush(%struct._IO_FILE* %fp) #6
  br label %if.end63

if.end63:                                         ; preds = %for.body, %if.then59
  %28 = load i32* %dataMode, align 4, !tbaa !3
  %cmp64 = icmp eq i32 %28, 1
  br i1 %cmp64, label %if.then65, label %if.else

if.then65:                                        ; preds = %if.end63
  %call66 = call %struct._SubMtx* @FrontMtx_lowerMtx(%struct._FrontMtx* %frontmtx, i32 %1, i32 %J.0273) #6
  %cmp67 = icmp eq %struct._SubMtx* %call66, null
  br i1 %cmp67, label %for.inc85, label %if.then68

if.then68:                                        ; preds = %if.then65
  %29 = call i64 @fwrite(i8* getelementptr inbounds ([23 x i8]* @.str81, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %fp) #3
  %call70 = call i32 @SubMtx_writeForHumanEye(%struct._SubMtx* %call66, %struct._IO_FILE* %fp) #6
  %call71 = call i32 @fflush(%struct._IO_FILE* %fp) #6
  br label %for.inc85

if.else:                                          ; preds = %if.end63
  call void @FrontMtx_lowerAdjFronts(%struct._FrontMtx* %frontmtx, i32 %J.0273, i32* %nadj, i32** %adj) #6
  %30 = load i32* %nadj, align 4, !tbaa !3
  %cmp74270 = icmp sgt i32 %30, 0
  br i1 %cmp74270, label %for.body75, label %for.inc85

for.body75:                                       ; preds = %for.inc, %if.else
  %indvars.iv277 = phi i64 [ 0, %if.else ], [ %indvars.iv.next278, %for.inc ]
  %31 = load i32** %adj, align 8, !tbaa !0
  %arrayidx = getelementptr inbounds i32* %31, i64 %indvars.iv277
  %32 = load i32* %arrayidx, align 4, !tbaa !3
  %cmp76 = icmp sgt i32 %32, %J.0273
  br i1 %cmp76, label %land.lhs.true, label %for.inc

land.lhs.true:                                    ; preds = %for.body75
  %call77 = call %struct._SubMtx* @FrontMtx_lowerMtx(%struct._FrontMtx* %frontmtx, i32 %32, i32 %J.0273) #6
  %cmp78 = icmp eq %struct._SubMtx* %call77, null
  br i1 %cmp78, label %for.inc, label %if.then79

if.then79:                                        ; preds = %land.lhs.true
  %33 = call i64 @fwrite(i8* getelementptr inbounds ([23 x i8]* @.str81, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %fp) #3
  %call81 = call i32 @SubMtx_writeForHumanEye(%struct._SubMtx* %call77, %struct._IO_FILE* %fp) #6
  %call82 = call i32 @fflush(%struct._IO_FILE* %fp) #6
  br label %for.inc

for.inc:                                          ; preds = %land.lhs.true, %for.body75, %if.then79
  %indvars.iv.next278 = add i64 %indvars.iv277, 1
  %34 = load i32* %nadj, align 4, !tbaa !3
  %35 = trunc i64 %indvars.iv.next278 to i32
  %cmp74 = icmp slt i32 %35, %34
  br i1 %cmp74, label %for.body75, label %for.inc85

for.inc85:                                        ; preds = %if.else, %for.inc, %if.then65, %if.then68
  %inc86 = add nsw i32 %J.0273, 1
  %exitcond279 = icmp eq i32 %inc86, %1
  br i1 %exitcond279, label %if.end88, label %for.body

if.end88:                                         ; preds = %for.inc85, %if.end52
  %36 = call i64 @fwrite(i8* getelementptr inbounds ([24 x i8]* @.str82, i64 0, i64 0), i64 23, i64 1, %struct._IO_FILE* %fp) #3
  %cmp91268 = icmp sgt i32 %1, 0
  br i1 %cmp91268, label %for.body92, label %for.end102.thread

for.end102.thread:                                ; preds = %if.end88
  %37 = call i64 @fwrite(i8* getelementptr inbounds ([21 x i8]* @.str84, i64 0, i64 0), i64 20, i64 1, %struct._IO_FILE* %fp) #3
  br label %for.end145

for.body92:                                       ; preds = %if.end88, %if.end98
  %J.1269 = phi i32 [ %inc101, %if.end98 ], [ 0, %if.end88 ]
  %call93 = call %struct._SubMtx* @FrontMtx_diagMtx(%struct._FrontMtx* %frontmtx, i32 %J.1269) #6
  %cmp94 = icmp eq %struct._SubMtx* %call93, null
  br i1 %cmp94, label %if.end98, label %if.then95

if.then95:                                        ; preds = %for.body92
  %38 = call i64 @fwrite(i8* getelementptr inbounds ([26 x i8]* @.str83, i64 0, i64 0), i64 25, i64 1, %struct._IO_FILE* %fp) #3
  %call97 = call i32 @SubMtx_writeForHumanEye(%struct._SubMtx* %call93, %struct._IO_FILE* %fp) #6
  br label %if.end98

if.end98:                                         ; preds = %for.body92, %if.then95
  %call99 = call i32 @fflush(%struct._IO_FILE* %fp) #6
  %inc101 = add nsw i32 %J.1269, 1
  %exitcond276 = icmp eq i32 %inc101, %1
  br i1 %exitcond276, label %for.end102, label %for.body92

for.end102:                                       ; preds = %if.end98
  %39 = call i64 @fwrite(i8* getelementptr inbounds ([21 x i8]* @.str84, i64 0, i64 0), i64 20, i64 1, %struct._IO_FILE* %fp) #3
  br i1 %cmp91268, label %for.body106.lr.ph, label %for.end145

for.body106.lr.ph:                                ; preds = %for.end102
  %dataMode114 = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 6
  br label %for.body106

for.body106:                                      ; preds = %for.inc143, %for.body106.lr.ph
  %J.2265 = phi i32 [ 0, %for.body106.lr.ph ], [ %inc144, %for.inc143 ]
  %call107 = call %struct._SubMtx* @FrontMtx_upperMtx(%struct._FrontMtx* %frontmtx, i32 %J.2265, i32 %J.2265) #6
  %cmp108 = icmp eq %struct._SubMtx* %call107, null
  br i1 %cmp108, label %if.end113, label %if.then109

if.then109:                                       ; preds = %for.body106
  %40 = call i64 @fwrite(i8* getelementptr inbounds ([36 x i8]* @.str85, i64 0, i64 0), i64 35, i64 1, %struct._IO_FILE* %fp) #3
  %call111 = call i32 @SubMtx_writeForHumanEye(%struct._SubMtx* %call107, %struct._IO_FILE* %fp) #6
  %call112 = call i32 @fflush(%struct._IO_FILE* %fp) #6
  br label %if.end113

if.end113:                                        ; preds = %for.body106, %if.then109
  %41 = load i32* %dataMode114, align 4, !tbaa !3
  %cmp115 = icmp eq i32 %41, 1
  br i1 %cmp115, label %if.then116, label %if.else124

if.then116:                                       ; preds = %if.end113
  %call117 = call %struct._SubMtx* @FrontMtx_upperMtx(%struct._FrontMtx* %frontmtx, i32 %J.2265, i32 %1) #6
  %cmp118 = icmp eq %struct._SubMtx* %call117, null
  br i1 %cmp118, label %for.inc143, label %if.then119

if.then119:                                       ; preds = %if.then116
  %42 = call i64 @fwrite(i8* getelementptr inbounds ([23 x i8]* @.str86, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %fp) #3
  %call121 = call i32 @SubMtx_writeForHumanEye(%struct._SubMtx* %call117, %struct._IO_FILE* %fp) #6
  %call122 = call i32 @fflush(%struct._IO_FILE* %fp) #6
  br label %for.inc143

if.else124:                                       ; preds = %if.end113
  call void @FrontMtx_upperAdjFronts(%struct._FrontMtx* %frontmtx, i32 %J.2265, i32* %nadj, i32** %adj) #6
  %43 = load i32* %nadj, align 4, !tbaa !3
  %cmp126262 = icmp sgt i32 %43, 0
  br i1 %cmp126262, label %for.body127, label %for.inc143

for.body127:                                      ; preds = %for.inc139, %if.else124
  %indvars.iv = phi i64 [ 0, %if.else124 ], [ %indvars.iv.next, %for.inc139 ]
  %44 = load i32** %adj, align 8, !tbaa !0
  %arrayidx129 = getelementptr inbounds i32* %44, i64 %indvars.iv
  %45 = load i32* %arrayidx129, align 4, !tbaa !3
  %cmp130 = icmp sgt i32 %45, %J.2265
  br i1 %cmp130, label %land.lhs.true131, label %for.inc139

land.lhs.true131:                                 ; preds = %for.body127
  %call132 = call %struct._SubMtx* @FrontMtx_upperMtx(%struct._FrontMtx* %frontmtx, i32 %J.2265, i32 %45) #6
  %cmp133 = icmp eq %struct._SubMtx* %call132, null
  br i1 %cmp133, label %for.inc139, label %if.then134

if.then134:                                       ; preds = %land.lhs.true131
  %46 = call i64 @fwrite(i8* getelementptr inbounds ([23 x i8]* @.str86, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %fp) #3
  %call136 = call i32 @SubMtx_writeForHumanEye(%struct._SubMtx* %call132, %struct._IO_FILE* %fp) #6
  %call137 = call i32 @fflush(%struct._IO_FILE* %fp) #6
  br label %for.inc139

for.inc139:                                       ; preds = %land.lhs.true131, %for.body127, %if.then134
  %indvars.iv.next = add i64 %indvars.iv, 1
  %47 = load i32* %nadj, align 4, !tbaa !3
  %48 = trunc i64 %indvars.iv.next to i32
  %cmp126 = icmp slt i32 %48, %47
  br i1 %cmp126, label %for.body127, label %for.inc143

for.inc143:                                       ; preds = %if.else124, %for.inc139, %if.then116, %if.then119
  %inc144 = add nsw i32 %J.2265, 1
  %exitcond = icmp eq i32 %inc144, %1
  br i1 %exitcond, label %for.end145, label %for.body106

for.end145:                                       ; preds = %if.end88.thread, %for.inc143, %for.end102.thread, %for.end102
  %49 = call i64 @fwrite(i8* getelementptr inbounds ([41 x i8]* @.str87, i64 0, i64 0), i64 40, i64 1, %struct._IO_FILE* %fp) #3
  %call147 = call i32 @fflush(%struct._IO_FILE* %fp) #6
  ret i32 1
}

; Function Attrs: optsize
declare i32 @ETree_writeToFormattedFile(%struct._ETree*, %struct._IO_FILE*) #4

; Function Attrs: optsize
declare i32 @IVL_writeToFormattedFile(%struct._IVL*, %struct._IO_FILE*) #4

; Function Attrs: optsize
declare i32 @IV_writeToFormattedFile(%struct._IV*, %struct._IO_FILE*) #4

; Function Attrs: optsize
declare %struct._SubMtx* @FrontMtx_lowerMtx(%struct._FrontMtx*, i32, i32) #4

; Function Attrs: optsize
declare i32 @SubMtx_writeToFormattedFile(%struct._SubMtx*, %struct._IO_FILE*) #4

; Function Attrs: optsize
declare %struct._SubMtx* @FrontMtx_diagMtx(%struct._FrontMtx*, i32) #4

; Function Attrs: optsize
declare %struct._SubMtx* @FrontMtx_upperMtx(%struct._FrontMtx*, i32, i32) #4

; Function Attrs: optsize
declare void @IVL_listAndSize(%struct._IVL*, i32, i32*, i32**) #4

; Function Attrs: nounwind optsize
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #1

; Function Attrs: optsize
declare i32 @ETree_writeToBinaryFile(%struct._ETree*, %struct._IO_FILE*) #4

; Function Attrs: optsize
declare i32 @IVL_writeToBinaryFile(%struct._IVL*, %struct._IO_FILE*) #4

; Function Attrs: optsize
declare i32 @IV_writeToBinaryFile(%struct._IV*, %struct._IO_FILE*) #4

; Function Attrs: optsize
declare i32 @SubMtx_writeToBinaryFile(%struct._SubMtx*, %struct._IO_FILE*) #4

; Function Attrs: nounwind optsize uwtable
define i32 @FrontMtx_writeStats(%struct._FrontMtx* %frontmtx, %struct._IO_FILE* %fp) #0 {
entry:
  %cmp = icmp eq %struct._FrontMtx* %frontmtx, null
  %cmp1 = icmp eq %struct._IO_FILE* %fp, null
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([50 x i8]* @.str59, i64 0, i64 0), %struct._FrontMtx* %frontmtx, %struct._IO_FILE* %fp) #6
  tail call void @exit(i32 -1) #9
  unreachable

if.end:                                           ; preds = %entry
  %nfront = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 0
  %1 = load i32* %nfront, align 4, !tbaa !3
  %call2 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([46 x i8]* @.str60, i64 0, i64 0), %struct._FrontMtx* %frontmtx, i32 %1) #6
  %symmetryflag = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 3
  %2 = load i32* %symmetryflag, align 4, !tbaa !3
  switch i32 %2, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb4
    i32 2, label %sw.bb6
  ]

sw.bb:                                            ; preds = %if.end
  %3 = tail call i64 @fwrite(i8* getelementptr inbounds ([20 x i8]* @.str61, i64 0, i64 0), i64 19, i64 1, %struct._IO_FILE* %fp) #3
  br label %sw.epilog

sw.bb4:                                           ; preds = %if.end
  %4 = tail call i64 @fwrite(i8* getelementptr inbounds ([12 x i8]* @.str62, i64 0, i64 0), i64 11, i64 1, %struct._IO_FILE* %fp) #3
  br label %sw.epilog

sw.bb6:                                           ; preds = %if.end
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([47 x i8]* @.str63, i64 0, i64 0), i64 46, i64 1, %struct._IO_FILE* %fp) #3
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end, %sw.bb6, %sw.bb4, %sw.bb
  %pivotingflag = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 5
  %6 = load i32* %pivotingflag, align 4, !tbaa !3
  switch i32 %6, label %sw.epilog13 [
    i32 0, label %sw.bb8
    i32 1, label %sw.bb10
  ]

sw.bb8:                                           ; preds = %sw.epilog
  %7 = tail call i64 @fwrite(i8* getelementptr inbounds ([20 x i8]* @.str64, i64 0, i64 0), i64 19, i64 1, %struct._IO_FILE* %fp) #3
  br label %sw.epilog13

sw.bb10:                                          ; preds = %sw.epilog
  %8 = tail call i64 @fwrite(i8* getelementptr inbounds ([19 x i8]* @.str65, i64 0, i64 0), i64 18, i64 1, %struct._IO_FILE* %fp) #3
  br label %sw.epilog13

sw.epilog13:                                      ; preds = %sw.epilog, %sw.bb10, %sw.bb8
  %sparsityflag = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 4
  %9 = load i32* %sparsityflag, align 4, !tbaa !3
  switch i32 %9, label %sw.epilog19 [
    i32 0, label %sw.bb14
    i32 1, label %sw.bb16
  ]

sw.bb14:                                          ; preds = %sw.epilog13
  %10 = tail call i64 @fwrite(i8* getelementptr inbounds ([15 x i8]* @.str66, i64 0, i64 0), i64 14, i64 1, %struct._IO_FILE* %fp) #3
  br label %sw.epilog19

sw.bb16:                                          ; preds = %sw.epilog13
  %11 = tail call i64 @fwrite(i8* getelementptr inbounds ([17 x i8]* @.str67, i64 0, i64 0), i64 16, i64 1, %struct._IO_FILE* %fp) #3
  br label %sw.epilog19

sw.epilog19:                                      ; preds = %sw.epilog13, %sw.bb16, %sw.bb14
  %dataMode = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 6
  %12 = load i32* %dataMode, align 4, !tbaa !3
  switch i32 %12, label %sw.epilog25 [
    i32 1, label %sw.bb20
    i32 2, label %sw.bb22
  ]

sw.bb20:                                          ; preds = %sw.epilog19
  %13 = tail call i64 @fwrite(i8* getelementptr inbounds ([37 x i8]* @.str68, i64 0, i64 0), i64 36, i64 1, %struct._IO_FILE* %fp) #3
  br label %sw.epilog25

sw.bb22:                                          ; preds = %sw.epilog19
  %14 = tail call i64 @fwrite(i8* getelementptr inbounds ([37 x i8]* @.str69, i64 0, i64 0), i64 36, i64 1, %struct._IO_FILE* %fp) #3
  br label %sw.epilog25

sw.epilog25:                                      ; preds = %sw.epilog19, %sw.bb22, %sw.bb20
  %nentD = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 7
  %15 = load i32* %nentD, align 4, !tbaa !3
  %nentL = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 8
  %16 = load i32* %nentL, align 4, !tbaa !3
  %nentU = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 9
  %17 = load i32* %nentU, align 4, !tbaa !3
  %call26 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([52 x i8]* @.str70, i64 0, i64 0), i32 %15, i32 %16, i32 %17) #6
  ret i32 1
}

; Function Attrs: optsize
declare i32 @ETree_writeForHumanEye(%struct._ETree*, %struct._IO_FILE*) #4

; Function Attrs: optsize
declare i32 @IVL_writeForHumanEye(%struct._IVL*, %struct._IO_FILE*) #4

; Function Attrs: optsize
declare i32 @IV_writeForHumanEye(%struct._IV*, %struct._IO_FILE*) #4

; Function Attrs: optsize
declare i32 @SubMtx_writeForHumanEye(%struct._SubMtx*, %struct._IO_FILE*) #4

; Function Attrs: optsize
declare void @FrontMtx_lowerAdjFronts(%struct._FrontMtx*, i32, i32*, i32**) #4

; Function Attrs: optsize
declare void @FrontMtx_upperAdjFronts(%struct._FrontMtx*, i32, i32*, i32**) #4

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
  %cmp = icmp eq %struct._FrontMtx* %frontmtx, null
  %cmp1 = icmp eq i8* %Lname, null
  %or.cond = or i1 %cmp, %cmp1
  %cmp3 = icmp eq i8* %Dname, null
  %or.cond429 = or i1 %or.cond, %cmp3
  %cmp5 = icmp eq i8* %Uname, null
  %or.cond430 = or i1 %or.cond429, %cmp5
  %cmp7 = icmp eq %struct._IO_FILE* %fp, null
  %or.cond431 = or i1 %or.cond430, %cmp7
  br i1 %or.cond431, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %1 = call i64 @fwrite(i8* getelementptr inbounds ([55 x i8]* @.str88, i64 0, i64 0), i64 54, i64 1, %struct._IO_FILE* %0) #3
  call void @exit(i32 -1) #9
  unreachable

if.end:                                           ; preds = %entry
  %dataMode = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 6
  %2 = load i32* %dataMode, align 4, !tbaa !3
  switch i32 %2, label %if.end260 [
    i32 1, label %if.then9
    i32 2, label %if.then62
  ]

if.then9:                                         ; preds = %if.end
  %call10 = call i32 @FrontMtx_nfront(%struct._FrontMtx* %frontmtx) #6
  %symmetryflag = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 3
  %3 = load i32* %symmetryflag, align 4, !tbaa !3
  %cmp11 = icmp eq i32 %3, 2
  br i1 %cmp11, label %if.then12, label %if.end27

if.then12:                                        ; preds = %if.then9
  %call13 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([24 x i8]* @.str89, i64 0, i64 0)) #6
  %cmp14436 = icmp sgt i32 %call10, 0
  br i1 %cmp14436, label %for.body, label %if.end27.thread

if.end27.thread:                                  ; preds = %if.then12
  %call28500 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([27 x i8]* @.str92, i64 0, i64 0)) #6
  %call41504 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([24 x i8]* @.str94, i64 0, i64 0)) #6
  br label %if.end260

for.body:                                         ; preds = %if.then12, %for.inc
  %J.0437 = phi i32 [ %inc, %for.inc ], [ 0, %if.then12 ]
  %call15 = call %struct._SubMtx* @FrontMtx_lowerMtx(%struct._FrontMtx* %frontmtx, i32 %J.0437, i32 %J.0437) #6
  %cmp16 = icmp eq %struct._SubMtx* %call15, null
  br i1 %cmp16, label %if.end20, label %if.then17

if.then17:                                        ; preds = %for.body
  %call18 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([38 x i8]* @.str90, i64 0, i64 0)) #6
  call void @SubMtx_writeForMatlab(%struct._SubMtx* %call15, i8* %Lname, %struct._IO_FILE* %fp) #6
  %call19 = call i32 @fflush(%struct._IO_FILE* %fp) #6
  br label %if.end20

if.end20:                                         ; preds = %for.body, %if.then17
  %call21 = call %struct._SubMtx* @FrontMtx_lowerMtx(%struct._FrontMtx* %frontmtx, i32 %call10, i32 %J.0437) #6
  %cmp22 = icmp eq %struct._SubMtx* %call21, null
  br i1 %cmp22, label %for.inc, label %if.then23

if.then23:                                        ; preds = %if.end20
  %call24 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([26 x i8]* @.str91, i64 0, i64 0)) #6
  call void @SubMtx_writeForMatlab(%struct._SubMtx* %call21, i8* %Lname, %struct._IO_FILE* %fp) #6
  %call25 = call i32 @fflush(%struct._IO_FILE* %fp) #6
  br label %for.inc

for.inc:                                          ; preds = %if.end20, %if.then23
  %inc = add nsw i32 %J.0437, 1
  %exitcond470 = icmp eq i32 %inc, %call10
  br i1 %exitcond470, label %if.end27, label %for.body

if.end27:                                         ; preds = %for.inc, %if.then9
  %call28 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([27 x i8]* @.str92, i64 0, i64 0)) #6
  %cmp30434 = icmp sgt i32 %call10, 0
  br i1 %cmp30434, label %for.body31, label %for.end40.thread

for.end40.thread:                                 ; preds = %if.end27
  %call41503 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([24 x i8]* @.str94, i64 0, i64 0)) #6
  br label %if.end260

for.body31:                                       ; preds = %if.end27, %if.end36
  %J.1435 = phi i32 [ %inc39, %if.end36 ], [ 0, %if.end27 ]
  %call32 = call %struct._SubMtx* @FrontMtx_diagMtx(%struct._FrontMtx* %frontmtx, i32 %J.1435) #6
  %cmp33 = icmp eq %struct._SubMtx* %call32, null
  br i1 %cmp33, label %if.end36, label %if.then34

if.then34:                                        ; preds = %for.body31
  %call35 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([29 x i8]* @.str93, i64 0, i64 0)) #6
  call void @SubMtx_writeForMatlab(%struct._SubMtx* %call32, i8* %Dname, %struct._IO_FILE* %fp) #6
  br label %if.end36

if.end36:                                         ; preds = %for.body31, %if.then34
  %call37 = call i32 @fflush(%struct._IO_FILE* %fp) #6
  %inc39 = add nsw i32 %J.1435, 1
  %exitcond469 = icmp eq i32 %inc39, %call10
  br i1 %exitcond469, label %for.end40, label %for.body31

for.end40:                                        ; preds = %if.end36
  %call41 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([24 x i8]* @.str94, i64 0, i64 0)) #6
  br i1 %cmp30434, label %for.body44, label %if.end260

for.body44:                                       ; preds = %for.end40, %for.inc57
  %J.2433 = phi i32 [ %inc58, %for.inc57 ], [ 0, %for.end40 ]
  %call45 = call %struct._SubMtx* @FrontMtx_upperMtx(%struct._FrontMtx* %frontmtx, i32 %J.2433, i32 %J.2433) #6
  %cmp46 = icmp eq %struct._SubMtx* %call45, null
  br i1 %cmp46, label %if.end50, label %if.then47

if.then47:                                        ; preds = %for.body44
  %call48 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([39 x i8]* @.str95, i64 0, i64 0)) #6
  call void @SubMtx_writeForMatlab(%struct._SubMtx* %call45, i8* %Uname, %struct._IO_FILE* %fp) #6
  %call49 = call i32 @fflush(%struct._IO_FILE* %fp) #6
  br label %if.end50

if.end50:                                         ; preds = %for.body44, %if.then47
  %call51 = call %struct._SubMtx* @FrontMtx_upperMtx(%struct._FrontMtx* %frontmtx, i32 %J.2433, i32 %call10) #6
  %cmp52 = icmp eq %struct._SubMtx* %call51, null
  br i1 %cmp52, label %for.inc57, label %if.then53

if.then53:                                        ; preds = %if.end50
  %call54 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([26 x i8]* @.str96, i64 0, i64 0)) #6
  call void @SubMtx_writeForMatlab(%struct._SubMtx* %call51, i8* %Uname, %struct._IO_FILE* %fp) #6
  %call55 = call i32 @fflush(%struct._IO_FILE* %fp) #6
  br label %for.inc57

for.inc57:                                        ; preds = %if.end50, %if.then53
  %inc58 = add nsw i32 %J.2433, 1
  %exitcond = icmp eq i32 %inc58, %call10
  br i1 %exitcond, label %if.end260, label %for.body44

if.then62:                                        ; preds = %if.end
  %call63 = call i32 @FrontMtx_nfront(%struct._FrontMtx* %frontmtx) #6
  %symmetryflag64 = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 3
  %4 = load i32* %symmetryflag64, align 4, !tbaa !3
  %cmp65 = icmp eq i32 %4, 2
  br i1 %cmp65, label %if.then66, label %if.end150

if.then66:                                        ; preds = %if.then62
  %call67 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([24 x i8]* @.str89, i64 0, i64 0)) #6
  %cmp69467 = icmp sgt i32 %call63, 0
  br i1 %cmp69467, label %for.body70, label %if.end150.thread

if.end150.thread:                                 ; preds = %if.then66
  %call151505 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([27 x i8]* @.str92, i64 0, i64 0)) #6
  %call164509 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([24 x i8]* @.str94, i64 0, i64 0)) #6
  br label %if.end260

for.body70:                                       ; preds = %if.then66, %for.inc147
  %J.3468 = phi i32 [ %inc148, %for.inc147 ], [ 0, %if.then66 ]
  %call71 = call %struct._SubMtx* @FrontMtx_lowerMtx(%struct._FrontMtx* %frontmtx, i32 %J.3468, i32 %J.3468) #6
  %cmp72 = icmp eq %struct._SubMtx* %call71, null
  br i1 %cmp72, label %if.end76, label %if.then73

if.then73:                                        ; preds = %for.body70
  %call74 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([38 x i8]* @.str90, i64 0, i64 0)) #6
  call void @SubMtx_writeForMatlab(%struct._SubMtx* %call71, i8* %Lname, %struct._IO_FILE* %fp) #6
  %call75 = call i32 @fflush(%struct._IO_FILE* %fp) #6
  br label %if.end76

if.end76:                                         ; preds = %for.body70, %if.then73
  call void @FrontMtx_lowerAdjFronts(%struct._FrontMtx* %frontmtx, i32 %J.3468, i32* %nadj, i32** %adj) #6
  %5 = load i32* %nadj, align 4, !tbaa !3
  %cmp78465 = icmp sgt i32 %5, 0
  br i1 %cmp78465, label %for.body79, label %for.inc147

for.body79:                                       ; preds = %for.inc144, %if.end76
  %indvars.iv497 = phi i64 [ 0, %if.end76 ], [ %indvars.iv.next498, %for.inc144 ]
  %6 = load i32** %adj, align 8, !tbaa !0
  %arrayidx = getelementptr inbounds i32* %6, i64 %indvars.iv497
  %7 = load i32* %arrayidx, align 4, !tbaa !3
  %cmp80 = icmp sgt i32 %7, %J.3468
  br i1 %cmp80, label %land.lhs.true, label %for.inc144

land.lhs.true:                                    ; preds = %for.body79
  %call81 = call %struct._SubMtx* @FrontMtx_lowerMtx(%struct._FrontMtx* %frontmtx, i32 %7, i32 %J.3468) #6
  %cmp82 = icmp eq %struct._SubMtx* %call81, null
  br i1 %cmp82, label %for.inc144, label %if.then83

if.then83:                                        ; preds = %land.lhs.true
  %call84 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([26 x i8]* @.str91, i64 0, i64 0)) #6
  call void @SubMtx_columnIndices(%struct._SubMtx* %call81, i32* %ncolKJ, i32** %colKJ) #6
  call void @FrontMtx_columnIndices(%struct._FrontMtx* %frontmtx, i32 %J.3468, i32* %ncolJ, i32** %colindJ) #6
  %8 = load i32* %ncolKJ, align 4, !tbaa !3
  %cmp86455 = icmp sgt i32 %8, 0
  br i1 %cmp86455, label %for.body87.lr.ph, label %for.end96

for.body87.lr.ph:                                 ; preds = %if.then83
  %9 = load i32** %colKJ, align 8, !tbaa !0
  %10 = load i32** %colindJ, align 8, !tbaa !0
  br label %for.body87

for.body87:                                       ; preds = %for.body87.lr.ph, %for.body87
  %indvars.iv485 = phi i64 [ 0, %for.body87.lr.ph ], [ %indvars.iv.next486, %for.body87 ]
  %arrayidx89 = getelementptr inbounds i32* %9, i64 %indvars.iv485
  %11 = load i32* %arrayidx89, align 4, !tbaa !3
  %idxprom90 = sext i32 %11 to i64
  %arrayidx91 = getelementptr inbounds i32* %10, i64 %idxprom90
  %12 = load i32* %arrayidx91, align 4, !tbaa !3
  store i32 %12, i32* %arrayidx89, align 4, !tbaa !3
  %indvars.iv.next486 = add i64 %indvars.iv485, 1
  %13 = load i32* %ncolKJ, align 4, !tbaa !3
  %14 = trunc i64 %indvars.iv.next486 to i32
  %cmp86 = icmp slt i32 %14, %13
  br i1 %cmp86, label %for.body87, label %for.end96

for.end96:                                        ; preds = %for.body87, %if.then83
  call void @SubMtx_rowIndices(%struct._SubMtx* %call81, i32* %nrowKJ, i32** %rowKJ) #6
  call void @FrontMtx_rowIndices(%struct._FrontMtx* %frontmtx, i32 %7, i32* %nrowK, i32** %rowindK) #6
  %15 = load i32* %nrowKJ, align 4, !tbaa !3
  %cmp98457 = icmp sgt i32 %15, 0
  br i1 %cmp98457, label %for.body99.lr.ph, label %for.end108

for.body99.lr.ph:                                 ; preds = %for.end96
  %16 = load i32** %rowKJ, align 8, !tbaa !0
  %17 = load i32** %rowindK, align 8, !tbaa !0
  br label %for.body99

for.body99:                                       ; preds = %for.body99.lr.ph, %for.body99
  %indvars.iv487 = phi i64 [ 0, %for.body99.lr.ph ], [ %indvars.iv.next488, %for.body99 ]
  %arrayidx101 = getelementptr inbounds i32* %16, i64 %indvars.iv487
  %18 = load i32* %arrayidx101, align 4, !tbaa !3
  %idxprom102 = sext i32 %18 to i64
  %arrayidx103 = getelementptr inbounds i32* %17, i64 %idxprom102
  %19 = load i32* %arrayidx103, align 4, !tbaa !3
  store i32 %19, i32* %arrayidx101, align 4, !tbaa !3
  %indvars.iv.next488 = add i64 %indvars.iv487, 1
  %20 = load i32* %nrowKJ, align 4, !tbaa !3
  %21 = trunc i64 %indvars.iv.next488 to i32
  %cmp98 = icmp slt i32 %21, %20
  br i1 %cmp98, label %for.body99, label %for.end108

for.end108:                                       ; preds = %for.body99, %for.end96
  call void @SubMtx_writeForMatlab(%struct._SubMtx* %call81, i8* %Lname, %struct._IO_FILE* %fp) #6
  %22 = load i32* %ncolKJ, align 4, !tbaa !3
  %cmp110459 = icmp sgt i32 %22, 0
  br i1 %cmp110459, label %while.cond.preheader.lr.ph, label %for.cond124.loopexit

while.cond.preheader.lr.ph:                       ; preds = %for.end108
  %23 = load i32** %colKJ, align 8, !tbaa !0
  %24 = load i32** %colindJ, align 8, !tbaa !0
  br label %while.cond.preheader

while.cond.preheader:                             ; preds = %while.cond.preheader.lr.ph, %while.end
  %indvars.iv491 = phi i64 [ 0, %while.cond.preheader.lr.ph ], [ %indvars.iv.next492, %while.end ]
  %jj.0461 = phi i32 [ 0, %while.cond.preheader.lr.ph ], [ %inc117, %while.end ]
  %arrayidx113 = getelementptr inbounds i32* %23, i64 %indvars.iv491
  %25 = load i32* %arrayidx113, align 4, !tbaa !3
  %26 = sext i32 %jj.0461 to i64
  br label %while.cond

while.cond:                                       ; preds = %while.cond.preheader, %while.cond
  %indvars.iv489 = phi i64 [ %26, %while.cond.preheader ], [ %indvars.iv.next490, %while.cond ]
  %jj.1 = phi i32 [ %jj.0461, %while.cond.preheader ], [ %inc117, %while.cond ]
  %arrayidx115 = getelementptr inbounds i32* %24, i64 %indvars.iv489
  %27 = load i32* %arrayidx115, align 4, !tbaa !3
  %cmp116 = icmp eq i32 %25, %27
  %indvars.iv.next490 = add i64 %indvars.iv489, 1
  %inc117 = add nsw i32 %jj.1, 1
  br i1 %cmp116, label %while.end, label %while.cond

while.end:                                        ; preds = %while.cond
  store i32 %jj.1, i32* %arrayidx113, align 4, !tbaa !3
  %indvars.iv.next492 = add i64 %indvars.iv491, 1
  %28 = load i32* %ncolKJ, align 4, !tbaa !3
  %29 = trunc i64 %indvars.iv.next492 to i32
  %cmp110 = icmp slt i32 %29, %28
  br i1 %cmp110, label %while.cond.preheader, label %for.cond124.loopexit

for.cond124.loopexit:                             ; preds = %while.end, %for.end108
  %30 = load i32* %nrowKJ, align 4, !tbaa !3
  %cmp125462 = icmp sgt i32 %30, 0
  br i1 %cmp125462, label %while.cond127.preheader.lr.ph, label %for.end141

while.cond127.preheader.lr.ph:                    ; preds = %for.cond124.loopexit
  %31 = load i32** %rowKJ, align 8, !tbaa !0
  %32 = load i32** %rowindK, align 8, !tbaa !0
  br label %while.cond127.preheader

while.cond127.preheader:                          ; preds = %while.cond127.preheader.lr.ph, %while.end135
  %indvars.iv495 = phi i64 [ 0, %while.cond127.preheader.lr.ph ], [ %indvars.iv.next496, %while.end135 ]
  %jj.2464 = phi i32 [ 0, %while.cond127.preheader.lr.ph ], [ %inc134, %while.end135 ]
  %arrayidx129 = getelementptr inbounds i32* %31, i64 %indvars.iv495
  %33 = load i32* %arrayidx129, align 4, !tbaa !3
  %34 = sext i32 %jj.2464 to i64
  br label %while.cond127

while.cond127:                                    ; preds = %while.cond127.preheader, %while.cond127
  %indvars.iv493 = phi i64 [ %34, %while.cond127.preheader ], [ %indvars.iv.next494, %while.cond127 ]
  %jj.3 = phi i32 [ %jj.2464, %while.cond127.preheader ], [ %inc134, %while.cond127 ]
  %arrayidx131 = getelementptr inbounds i32* %32, i64 %indvars.iv493
  %35 = load i32* %arrayidx131, align 4, !tbaa !3
  %cmp132 = icmp eq i32 %33, %35
  %indvars.iv.next494 = add i64 %indvars.iv493, 1
  %inc134 = add nsw i32 %jj.3, 1
  br i1 %cmp132, label %while.end135, label %while.cond127

while.end135:                                     ; preds = %while.cond127
  store i32 %jj.3, i32* %arrayidx129, align 4, !tbaa !3
  %indvars.iv.next496 = add i64 %indvars.iv495, 1
  %36 = load i32* %nrowKJ, align 4, !tbaa !3
  %37 = trunc i64 %indvars.iv.next496 to i32
  %cmp125 = icmp slt i32 %37, %36
  br i1 %cmp125, label %while.cond127.preheader, label %for.end141

for.end141:                                       ; preds = %while.end135, %for.cond124.loopexit
  %call142 = call i32 @fflush(%struct._IO_FILE* %fp) #6
  br label %for.inc144

for.inc144:                                       ; preds = %land.lhs.true, %for.body79, %for.end141
  %indvars.iv.next498 = add i64 %indvars.iv497, 1
  %38 = load i32* %nadj, align 4, !tbaa !3
  %39 = trunc i64 %indvars.iv.next498 to i32
  %cmp78 = icmp slt i32 %39, %38
  br i1 %cmp78, label %for.body79, label %for.inc147

for.inc147:                                       ; preds = %for.inc144, %if.end76
  %inc148 = add nsw i32 %J.3468, 1
  %exitcond499 = icmp eq i32 %inc148, %call63
  br i1 %exitcond499, label %if.end150, label %for.body70

if.end150:                                        ; preds = %for.inc147, %if.then62
  %call151 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([27 x i8]* @.str92, i64 0, i64 0)) #6
  %cmp153453 = icmp sgt i32 %call63, 0
  br i1 %cmp153453, label %for.body154, label %for.end163.thread

for.end163.thread:                                ; preds = %if.end150
  %call164508 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([24 x i8]* @.str94, i64 0, i64 0)) #6
  br label %if.end260

for.body154:                                      ; preds = %if.end150, %if.end159
  %J.4454 = phi i32 [ %inc162, %if.end159 ], [ 0, %if.end150 ]
  %call155 = call %struct._SubMtx* @FrontMtx_diagMtx(%struct._FrontMtx* %frontmtx, i32 %J.4454) #6
  %cmp156 = icmp eq %struct._SubMtx* %call155, null
  br i1 %cmp156, label %if.end159, label %if.then157

if.then157:                                       ; preds = %for.body154
  %call158 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([29 x i8]* @.str93, i64 0, i64 0)) #6
  call void @SubMtx_writeForMatlab(%struct._SubMtx* %call155, i8* %Dname, %struct._IO_FILE* %fp) #6
  br label %if.end159

if.end159:                                        ; preds = %for.body154, %if.then157
  %call160 = call i32 @fflush(%struct._IO_FILE* %fp) #6
  %inc162 = add nsw i32 %J.4454, 1
  %exitcond484 = icmp eq i32 %inc162, %call63
  br i1 %exitcond484, label %for.end163, label %for.body154

for.end163:                                       ; preds = %if.end159
  %call164 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([24 x i8]* @.str94, i64 0, i64 0)) #6
  br i1 %cmp153453, label %for.body167, label %if.end260

for.body167:                                      ; preds = %for.end163, %for.inc256
  %J.5452 = phi i32 [ %inc257, %for.inc256 ], [ 0, %for.end163 ]
  %call174 = call %struct._SubMtx* @FrontMtx_upperMtx(%struct._FrontMtx* %frontmtx, i32 %J.5452, i32 %J.5452) #6
  %cmp175 = icmp eq %struct._SubMtx* %call174, null
  br i1 %cmp175, label %if.end179, label %if.then176

if.then176:                                       ; preds = %for.body167
  %call177 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([39 x i8]* @.str95, i64 0, i64 0)) #6
  call void @SubMtx_writeForMatlab(%struct._SubMtx* %call174, i8* %Uname, %struct._IO_FILE* %fp) #6
  %call178 = call i32 @fflush(%struct._IO_FILE* %fp) #6
  br label %if.end179

if.end179:                                        ; preds = %for.body167, %if.then176
  call void @FrontMtx_upperAdjFronts(%struct._FrontMtx* %frontmtx, i32 %J.5452, i32* %nadj172, i32** %adj173) #6
  %40 = load i32* %nadj172, align 4, !tbaa !3
  %cmp181448 = icmp sgt i32 %40, 0
  br i1 %cmp181448, label %for.body182, label %for.inc256

for.body182:                                      ; preds = %for.inc253, %if.end179
  %indvars.iv481 = phi i64 [ 0, %if.end179 ], [ %indvars.iv.next482, %for.inc253 ]
  %41 = load i32** %adj173, align 8, !tbaa !0
  %arrayidx184 = getelementptr inbounds i32* %41, i64 %indvars.iv481
  %42 = load i32* %arrayidx184, align 4, !tbaa !3
  %cmp185 = icmp sgt i32 %42, %J.5452
  br i1 %cmp185, label %land.lhs.true186, label %for.inc253

land.lhs.true186:                                 ; preds = %for.body182
  %call187 = call %struct._SubMtx* @FrontMtx_upperMtx(%struct._FrontMtx* %frontmtx, i32 %J.5452, i32 %42) #6
  %cmp188 = icmp eq %struct._SubMtx* %call187, null
  br i1 %cmp188, label %for.inc253, label %if.then189

if.then189:                                       ; preds = %land.lhs.true186
  %call190 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([26 x i8]* @.str96, i64 0, i64 0)) #6
  call void @SubMtx_columnIndices(%struct._SubMtx* %call187, i32* %ncolJK, i32** %colJK) #6
  call void @FrontMtx_columnIndices(%struct._FrontMtx* %frontmtx, i32 %42, i32* %ncolK, i32** %colindK) #6
  %43 = load i32* %ncolJK, align 4, !tbaa !3
  %cmp192438 = icmp sgt i32 %43, 0
  br i1 %cmp192438, label %for.body193.lr.ph, label %for.end202

for.body193.lr.ph:                                ; preds = %if.then189
  %44 = load i32** %colJK, align 8, !tbaa !0
  %45 = load i32** %colindK, align 8, !tbaa !0
  br label %for.body193

for.body193:                                      ; preds = %for.body193.lr.ph, %for.body193
  %indvars.iv = phi i64 [ 0, %for.body193.lr.ph ], [ %indvars.iv.next, %for.body193 ]
  %arrayidx195 = getelementptr inbounds i32* %44, i64 %indvars.iv
  %46 = load i32* %arrayidx195, align 4, !tbaa !3
  %idxprom196 = sext i32 %46 to i64
  %arrayidx197 = getelementptr inbounds i32* %45, i64 %idxprom196
  %47 = load i32* %arrayidx197, align 4, !tbaa !3
  store i32 %47, i32* %arrayidx195, align 4, !tbaa !3
  %indvars.iv.next = add i64 %indvars.iv, 1
  %48 = load i32* %ncolJK, align 4, !tbaa !3
  %49 = trunc i64 %indvars.iv.next to i32
  %cmp192 = icmp slt i32 %49, %48
  br i1 %cmp192, label %for.body193, label %for.end202

for.end202:                                       ; preds = %for.body193, %if.then189
  call void @SubMtx_rowIndices(%struct._SubMtx* %call187, i32* %nrowJK, i32** %rowJK) #6
  call void @FrontMtx_rowIndices(%struct._FrontMtx* %frontmtx, i32 %J.5452, i32* %nrowJ, i32** %rowindJ) #6
  %50 = load i32* %nrowJK, align 4, !tbaa !3
  %cmp204440 = icmp sgt i32 %50, 0
  br i1 %cmp204440, label %for.body205.lr.ph, label %for.end214

for.body205.lr.ph:                                ; preds = %for.end202
  %51 = load i32** %rowJK, align 8, !tbaa !0
  %52 = load i32** %rowindJ, align 8, !tbaa !0
  br label %for.body205

for.body205:                                      ; preds = %for.body205.lr.ph, %for.body205
  %indvars.iv471 = phi i64 [ 0, %for.body205.lr.ph ], [ %indvars.iv.next472, %for.body205 ]
  %arrayidx207 = getelementptr inbounds i32* %51, i64 %indvars.iv471
  %53 = load i32* %arrayidx207, align 4, !tbaa !3
  %idxprom208 = sext i32 %53 to i64
  %arrayidx209 = getelementptr inbounds i32* %52, i64 %idxprom208
  %54 = load i32* %arrayidx209, align 4, !tbaa !3
  store i32 %54, i32* %arrayidx207, align 4, !tbaa !3
  %indvars.iv.next472 = add i64 %indvars.iv471, 1
  %55 = load i32* %nrowJK, align 4, !tbaa !3
  %56 = trunc i64 %indvars.iv.next472 to i32
  %cmp204 = icmp slt i32 %56, %55
  br i1 %cmp204, label %for.body205, label %for.end214

for.end214:                                       ; preds = %for.body205, %for.end202
  call void @SubMtx_writeForMatlab(%struct._SubMtx* %call187, i8* %Uname, %struct._IO_FILE* %fp) #6
  %57 = load i32* %ncolJK, align 4, !tbaa !3
  %cmp216442 = icmp sgt i32 %57, 0
  br i1 %cmp216442, label %while.cond218.preheader.lr.ph, label %for.cond233.loopexit

while.cond218.preheader.lr.ph:                    ; preds = %for.end214
  %58 = load i32** %colJK, align 8, !tbaa !0
  %59 = load i32** %colindK, align 8, !tbaa !0
  br label %while.cond218.preheader

while.cond218.preheader:                          ; preds = %while.cond218.preheader.lr.ph, %while.end226
  %indvars.iv475 = phi i64 [ 0, %while.cond218.preheader.lr.ph ], [ %indvars.iv.next476, %while.end226 ]
  %jj169.0444 = phi i32 [ 0, %while.cond218.preheader.lr.ph ], [ %inc225, %while.end226 ]
  %arrayidx220 = getelementptr inbounds i32* %58, i64 %indvars.iv475
  %60 = load i32* %arrayidx220, align 4, !tbaa !3
  %61 = sext i32 %jj169.0444 to i64
  br label %while.cond218

while.cond218:                                    ; preds = %while.cond218.preheader, %while.cond218
  %indvars.iv473 = phi i64 [ %61, %while.cond218.preheader ], [ %indvars.iv.next474, %while.cond218 ]
  %jj169.1 = phi i32 [ %jj169.0444, %while.cond218.preheader ], [ %inc225, %while.cond218 ]
  %arrayidx222 = getelementptr inbounds i32* %59, i64 %indvars.iv473
  %62 = load i32* %arrayidx222, align 4, !tbaa !3
  %cmp223 = icmp eq i32 %60, %62
  %indvars.iv.next474 = add i64 %indvars.iv473, 1
  %inc225 = add nsw i32 %jj169.1, 1
  br i1 %cmp223, label %while.end226, label %while.cond218

while.end226:                                     ; preds = %while.cond218
  store i32 %jj169.1, i32* %arrayidx220, align 4, !tbaa !3
  %indvars.iv.next476 = add i64 %indvars.iv475, 1
  %63 = load i32* %ncolJK, align 4, !tbaa !3
  %64 = trunc i64 %indvars.iv.next476 to i32
  %cmp216 = icmp slt i32 %64, %63
  br i1 %cmp216, label %while.cond218.preheader, label %for.cond233.loopexit

for.cond233.loopexit:                             ; preds = %while.end226, %for.end214
  %65 = load i32* %nrowJK, align 4, !tbaa !3
  %cmp234445 = icmp sgt i32 %65, 0
  br i1 %cmp234445, label %while.cond236.preheader.lr.ph, label %for.end250

while.cond236.preheader.lr.ph:                    ; preds = %for.cond233.loopexit
  %66 = load i32** %rowJK, align 8, !tbaa !0
  %67 = load i32** %rowindJ, align 8, !tbaa !0
  br label %while.cond236.preheader

while.cond236.preheader:                          ; preds = %while.cond236.preheader.lr.ph, %while.end244
  %indvars.iv479 = phi i64 [ 0, %while.cond236.preheader.lr.ph ], [ %indvars.iv.next480, %while.end244 ]
  %jj169.2447 = phi i32 [ 0, %while.cond236.preheader.lr.ph ], [ %inc243, %while.end244 ]
  %arrayidx238 = getelementptr inbounds i32* %66, i64 %indvars.iv479
  %68 = load i32* %arrayidx238, align 4, !tbaa !3
  %69 = sext i32 %jj169.2447 to i64
  br label %while.cond236

while.cond236:                                    ; preds = %while.cond236.preheader, %while.cond236
  %indvars.iv477 = phi i64 [ %69, %while.cond236.preheader ], [ %indvars.iv.next478, %while.cond236 ]
  %jj169.3 = phi i32 [ %jj169.2447, %while.cond236.preheader ], [ %inc243, %while.cond236 ]
  %arrayidx240 = getelementptr inbounds i32* %67, i64 %indvars.iv477
  %70 = load i32* %arrayidx240, align 4, !tbaa !3
  %cmp241 = icmp eq i32 %68, %70
  %indvars.iv.next478 = add i64 %indvars.iv477, 1
  %inc243 = add nsw i32 %jj169.3, 1
  br i1 %cmp241, label %while.end244, label %while.cond236

while.end244:                                     ; preds = %while.cond236
  store i32 %jj169.3, i32* %arrayidx238, align 4, !tbaa !3
  %indvars.iv.next480 = add i64 %indvars.iv479, 1
  %71 = load i32* %nrowJK, align 4, !tbaa !3
  %72 = trunc i64 %indvars.iv.next480 to i32
  %cmp234 = icmp slt i32 %72, %71
  br i1 %cmp234, label %while.cond236.preheader, label %for.end250

for.end250:                                       ; preds = %while.end244, %for.cond233.loopexit
  %call251 = call i32 @fflush(%struct._IO_FILE* %fp) #6
  br label %for.inc253

for.inc253:                                       ; preds = %land.lhs.true186, %for.body182, %for.end250
  %indvars.iv.next482 = add i64 %indvars.iv481, 1
  %73 = load i32* %nadj172, align 4, !tbaa !3
  %74 = trunc i64 %indvars.iv.next482 to i32
  %cmp181 = icmp slt i32 %74, %73
  br i1 %cmp181, label %for.body182, label %for.inc256

for.inc256:                                       ; preds = %for.inc253, %if.end179
  %inc257 = add nsw i32 %J.5452, 1
  %exitcond483 = icmp eq i32 %inc257, %call63
  br i1 %exitcond483, label %if.end260, label %for.body167

if.end260:                                        ; preds = %if.end150.thread, %if.end27.thread, %for.end163, %for.end163.thread, %for.inc256, %for.end40, %for.end40.thread, %for.inc57, %if.end
  ret i32 1
}

; Function Attrs: optsize
declare i32 @FrontMtx_nfront(%struct._FrontMtx*) #4

; Function Attrs: optsize
declare void @SubMtx_writeForMatlab(%struct._SubMtx*, i8*, %struct._IO_FILE*) #4

; Function Attrs: optsize
declare void @SubMtx_columnIndices(%struct._SubMtx*, i32*, i32**) #4

; Function Attrs: optsize
declare void @FrontMtx_columnIndices(%struct._FrontMtx*, i32, i32*, i32**) #4

; Function Attrs: optsize
declare void @SubMtx_rowIndices(%struct._SubMtx*, i32*, i32**) #4

; Function Attrs: optsize
declare void @FrontMtx_rowIndices(%struct._FrontMtx*, i32, i32*, i32**) #4

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #3

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind optsize readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind optsize }
attributes #7 = { nounwind optsize readonly }
attributes #8 = { optsize }
attributes #9 = { noreturn nounwind optsize }

!0 = metadata !{metadata !"any pointer", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"int", metadata !1}
