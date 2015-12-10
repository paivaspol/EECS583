; ModuleID = '../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_storeFront.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

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
%struct._Chv = type { i32, i32, i32, i32, i32, i32, i32*, i32*, double*, %struct._DV, %struct._Chv* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@.str = private unnamed_addr constant [37 x i8] c"\0A inside FrontMtx_storeFront, J = %d\00", align 1
@.str1 = private unnamed_addr constant [15 x i8] c"\0A locking lock\00", align 1
@.str2 = private unnamed_addr constant [33 x i8] c"\0A setting column indices, J = %d\00", align 1
@.str3 = private unnamed_addr constant [30 x i8] c"\0A setting row indices, J = %d\00", align 1
@.str4 = private unnamed_addr constant [17 x i8] c"\0A unlocking lock\00", align 1
@.str5 = private unnamed_addr constant [25 x i8] c"\0A\0A block diagonal matrix\00", align 1
@.str6 = private unnamed_addr constant [21 x i8] c"\0A\0A entries in SubMtx\00", align 1
@.str7 = private unnamed_addr constant [14 x i8] c"\0A\0A UJJ matrix\00", align 1
@.str8 = private unnamed_addr constant [39 x i8] c"\0A U_{%d,%d}, nD %d, nent %d, nbytes %d\00", align 1
@.str9 = private unnamed_addr constant [15 x i8] c"\0A\0A UJJN matrix\00", align 1
@.str10 = private unnamed_addr constant [46 x i8] c"\0A U_{%d,%d}, nD %d, nU %d, nent %d, nbytes %d\00", align 1
@.str11 = private unnamed_addr constant [14 x i8] c"\0A\0A LJJ matrix\00", align 1
@.str12 = private unnamed_addr constant [39 x i8] c"\0A L_{%d,%d}, nD %d, nent %d, nbytes %d\00", align 1
@.str13 = private unnamed_addr constant [14 x i8] c"\0A\0A LNJ matrix\00", align 1
@.str14 = private unnamed_addr constant [46 x i8] c"\0A L_{%d,%d}, nL %d, nD %d, nent %d, nbytes %d\00", align 1

; Function Attrs: nounwind optsize uwtable
define void @FrontMtx_storeFront(%struct._FrontMtx* %frontmtx, %struct._Chv* %frontJ, %struct._IV* %pivotsizesIV, double %droptol, i32 %msglvl, %struct._IO_FILE* %msgFile) #0 {
entry:
  %entries = alloca double*, align 8
  %inc1 = alloca i32, align 4
  %inc2 = alloca i32, align 4
  %ncol = alloca i32, align 4
  %nD = alloca i32, align 4
  %nent = alloca i32, align 4
  %nL = alloca i32, align 4
  %npivot = alloca i32, align 4
  %nrow = alloca i32, align 4
  %nU = alloca i32, align 4
  %colind = alloca i32*, align 8
  %colindJ = alloca i32*, align 8
  %firstlocs = alloca i32*, align 8
  %indices = alloca i32*, align 8
  %pivots = alloca i32*, align 8
  %pivotsizes = alloca i32*, align 8
  %rowind = alloca i32*, align 8
  %rowindJ = alloca i32*, align 8
  %sizes = alloca i32*, align 8
  call void @llvm.dbg.value(metadata !{%struct._FrontMtx* %frontmtx}, i64 0, metadata !258), !dbg !292
  call void @llvm.dbg.value(metadata !{%struct._Chv* %frontJ}, i64 0, metadata !259), !dbg !293
  call void @llvm.dbg.value(metadata !{%struct._IV* %pivotsizesIV}, i64 0, metadata !260), !dbg !294
  call void @llvm.dbg.value(metadata !{double %droptol}, i64 0, metadata !261), !dbg !295
  call void @llvm.dbg.value(metadata !{i32 %msglvl}, i64 0, metadata !262), !dbg !296
  call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %msgFile}, i64 0, metadata !263), !dbg !297
  call void @llvm.dbg.declare(metadata !{double** %entries}, metadata !265), !dbg !298
  call void @llvm.dbg.declare(metadata !{i32* %inc1}, metadata !266), !dbg !299
  call void @llvm.dbg.declare(metadata !{i32* %inc2}, metadata !267), !dbg !299
  call void @llvm.dbg.declare(metadata !{i32* %ncol}, metadata !274), !dbg !300
  call void @llvm.dbg.declare(metadata !{i32* %nD}, metadata !275), !dbg !300
  call void @llvm.dbg.declare(metadata !{i32* %nent}, metadata !276), !dbg !300
  call void @llvm.dbg.declare(metadata !{i32* %nL}, metadata !278), !dbg !300
  call void @llvm.dbg.declare(metadata !{i32* %npivot}, metadata !279), !dbg !300
  call void @llvm.dbg.declare(metadata !{i32* %nrow}, metadata !280), !dbg !300
  call void @llvm.dbg.declare(metadata !{i32* %nU}, metadata !281), !dbg !300
  call void @llvm.dbg.declare(metadata !{i32** %colind}, metadata !282), !dbg !301
  call void @llvm.dbg.declare(metadata !{i32** %colindJ}, metadata !283), !dbg !301
  call void @llvm.dbg.declare(metadata !{i32** %firstlocs}, metadata !284), !dbg !301
  call void @llvm.dbg.declare(metadata !{i32** %indices}, metadata !285), !dbg !301
  call void @llvm.dbg.declare(metadata !{i32** %pivots}, metadata !286), !dbg !301
  call void @llvm.dbg.declare(metadata !{i32** %pivotsizes}, metadata !287), !dbg !302
  call void @llvm.dbg.declare(metadata !{i32** %rowind}, metadata !288), !dbg !302
  call void @llvm.dbg.declare(metadata !{i32** %rowindJ}, metadata !289), !dbg !302
  call void @llvm.dbg.declare(metadata !{i32** %sizes}, metadata !290), !dbg !302
  %nfront1 = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 0, !dbg !303
  %0 = load i32* %nfront1, align 4, !dbg !303, !tbaa !304
  call void @llvm.dbg.value(metadata !{i32 %0}, i64 0, metadata !277), !dbg !303
  %manager2 = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 25, !dbg !307
  %1 = load %struct._SubMtxManager** %manager2, align 8, !dbg !307, !tbaa !308
  call void @llvm.dbg.value(metadata !{%struct._SubMtxManager* %1}, i64 0, metadata !291), !dbg !307
  %symmetryflag = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 3, !dbg !309
  %2 = load i32* %symmetryflag, align 4, !dbg !309, !tbaa !304
  %switch = icmp ult i32 %2, 2, !dbg !309
  br i1 %switch, label %land.lhs.true, label %if.else, !dbg !309

land.lhs.true:                                    ; preds = %entry
  %pivotingflag = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 5, !dbg !309
  %3 = load i32* %pivotingflag, align 4, !dbg !309, !tbaa !304
  %cmp5 = icmp eq i32 %3, 1, !dbg !309
  br i1 %cmp5, label %if.then, label %if.else, !dbg !309

if.then:                                          ; preds = %land.lhs.true
  call void @IV_sizeAndEntries(%struct._IV* %pivotsizesIV, i32* %npivot, i32** %pivotsizes) #5, !dbg !310
  br label %if.end, !dbg !312

if.else:                                          ; preds = %entry, %land.lhs.true
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !279), !dbg !313
  store i32 0, i32* %npivot, align 4, !dbg !313, !tbaa !304
  call void @llvm.dbg.value(metadata !315, i64 0, metadata !287), !dbg !313
  store i32* null, i32** %pivotsizes, align 8, !dbg !313, !tbaa !308
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %id = getelementptr inbounds %struct._Chv* %frontJ, i64 0, i32 0, !dbg !316
  %4 = load i32* %id, align 4, !dbg !316, !tbaa !304
  call void @llvm.dbg.value(metadata !{i32 %4}, i64 0, metadata !271), !dbg !316
  call void @Chv_dimensions(%struct._Chv* %frontJ, i32* %nD, i32* %nL, i32* %nU) #5, !dbg !317
  call void @Chv_columnIndices(%struct._Chv* %frontJ, i32* %ncol, i32** %colindJ) #5, !dbg !318
  call void @Chv_rowIndices(%struct._Chv* %frontJ, i32* %nrow, i32** %rowindJ) #5, !dbg !319
  %cmp6 = icmp sgt i32 %msglvl, 2, !dbg !320
  br i1 %cmp6, label %if.then7, label %if.end9, !dbg !320

if.then7:                                         ; preds = %if.end
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %msgFile, i8* getelementptr inbounds ([37 x i8]* @.str, i64 0, i64 0), i32 %4) #5, !dbg !321
  %call8 = call i32 @fflush(%struct._IO_FILE* %msgFile) #5, !dbg !323
  br label %if.end9, !dbg !324

if.end9:                                          ; preds = %if.then7, %if.end
  %pivotingflag10 = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 5, !dbg !325
  %5 = load i32* %pivotingflag10, align 4, !dbg !325, !tbaa !304
  %cmp11 = icmp eq i32 %5, 1, !dbg !325
  br i1 %cmp11, label %if.then12, label %if.end46, !dbg !325

if.then12:                                        ; preds = %if.end9
  %lock = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 26, !dbg !326
  %6 = load %struct._Lock** %lock, align 8, !dbg !326, !tbaa !308
  %cmp13 = icmp eq %struct._Lock* %6, null, !dbg !326
  br i1 %cmp13, label %if.end21, label %if.then14, !dbg !326

if.then14:                                        ; preds = %if.then12
  br i1 %cmp6, label %if.then16, label %if.end19, !dbg !328

if.then16:                                        ; preds = %if.then14
  %7 = call i64 @fwrite(i8* getelementptr inbounds ([15 x i8]* @.str1, i64 0, i64 0), i64 14, i64 1, %struct._IO_FILE* %msgFile), !dbg !330
  %call18 = call i32 @fflush(%struct._IO_FILE* %msgFile) #5, !dbg !332
  %.pre716 = load %struct._Lock** %lock, align 8, !dbg !333, !tbaa !308
  br label %if.end19, !dbg !334

if.end19:                                         ; preds = %if.then16, %if.then14
  %8 = phi %struct._Lock* [ %.pre716, %if.then16 ], [ %6, %if.then14 ]
  call void @Lock_lock(%struct._Lock* %8) #5, !dbg !333
  %nlocks = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 28, !dbg !335
  %9 = load i32* %nlocks, align 4, !dbg !335, !tbaa !304
  %inc = add nsw i32 %9, 1, !dbg !335
  store i32 %inc, i32* %nlocks, align 4, !dbg !335, !tbaa !304
  br label %if.end21, !dbg !336

if.end21:                                         ; preds = %if.then12, %if.end19
  call void @llvm.dbg.value(metadata !{i32* %nD}, i64 0, metadata !275), !dbg !337
  %10 = load i32* %nD, align 4, !dbg !337, !tbaa !304
  call void @FrontMtx_setFrontSize(%struct._FrontMtx* %frontmtx, i32 %4, i32 %10) #5, !dbg !337
  br i1 %cmp6, label %if.then23, label %if.end26, !dbg !338

if.then23:                                        ; preds = %if.end21
  %call24 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %msgFile, i8* getelementptr inbounds ([33 x i8]* @.str2, i64 0, i64 0), i32 %4) #5, !dbg !339
  %call25 = call i32 @fflush(%struct._IO_FILE* %msgFile) #5, !dbg !341
  br label %if.end26, !dbg !342

if.end26:                                         ; preds = %if.then23, %if.end21
  %coladjIVL = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 15, !dbg !343
  %11 = load %struct._IVL** %coladjIVL, align 8, !dbg !343, !tbaa !308
  call void @llvm.dbg.value(metadata !{i32* %ncol}, i64 0, metadata !274), !dbg !343
  %12 = load i32* %ncol, align 4, !dbg !343, !tbaa !304
  call void @llvm.dbg.value(metadata !{i32** %colindJ}, i64 0, metadata !283), !dbg !343
  %13 = load i32** %colindJ, align 8, !dbg !343, !tbaa !308
  call void @IVL_setList(%struct._IVL* %11, i32 %4, i32 %12, i32* %13) #5, !dbg !343
  %14 = load i32* %symmetryflag, align 4, !dbg !344, !tbaa !304
  %cmp28 = icmp eq i32 %14, 2, !dbg !344
  br i1 %cmp28, label %if.then29, label %if.end35, !dbg !344

if.then29:                                        ; preds = %if.end26
  br i1 %cmp6, label %if.then31, label %if.end34, !dbg !345

if.then31:                                        ; preds = %if.then29
  %call32 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %msgFile, i8* getelementptr inbounds ([30 x i8]* @.str3, i64 0, i64 0), i32 %4) #5, !dbg !347
  %call33 = call i32 @fflush(%struct._IO_FILE* %msgFile) #5, !dbg !349
  br label %if.end34, !dbg !350

if.end34:                                         ; preds = %if.then31, %if.then29
  %rowadjIVL = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 14, !dbg !351
  %15 = load %struct._IVL** %rowadjIVL, align 8, !dbg !351, !tbaa !308
  call void @llvm.dbg.value(metadata !{i32* %nrow}, i64 0, metadata !280), !dbg !351
  %16 = load i32* %nrow, align 4, !dbg !351, !tbaa !304
  call void @llvm.dbg.value(metadata !{i32** %rowindJ}, i64 0, metadata !289), !dbg !351
  %17 = load i32** %rowindJ, align 8, !dbg !351, !tbaa !308
  call void @IVL_setList(%struct._IVL* %15, i32 %4, i32 %16, i32* %17) #5, !dbg !351
  br label %if.end35, !dbg !352

if.end35:                                         ; preds = %if.end34, %if.end26
  %18 = load %struct._Lock** %lock, align 8, !dbg !353, !tbaa !308
  %cmp37 = icmp eq %struct._Lock* %18, null, !dbg !353
  br i1 %cmp37, label %if.end46, label %if.then38, !dbg !353

if.then38:                                        ; preds = %if.end35
  br i1 %cmp6, label %if.then40, label %if.end43, !dbg !354

if.then40:                                        ; preds = %if.then38
  %19 = call i64 @fwrite(i8* getelementptr inbounds ([17 x i8]* @.str4, i64 0, i64 0), i64 16, i64 1, %struct._IO_FILE* %msgFile), !dbg !356
  %call42 = call i32 @fflush(%struct._IO_FILE* %msgFile) #5, !dbg !358
  %.pre = load %struct._Lock** %lock, align 8, !dbg !359, !tbaa !308
  br label %if.end43, !dbg !360

if.end43:                                         ; preds = %if.then40, %if.then38
  %20 = phi %struct._Lock* [ %.pre, %if.then40 ], [ %18, %if.then38 ]
  call void @Lock_unlock(%struct._Lock* %20) #5, !dbg !359
  br label %if.end46, !dbg !361

if.end46:                                         ; preds = %if.end35, %if.end43, %if.end9
  call void @llvm.dbg.value(metadata !{i32* %nD}, i64 0, metadata !275), !dbg !362
  %21 = load i32* %nD, align 4, !dbg !362, !tbaa !304
  %cmp47 = icmp eq i32 %21, 0, !dbg !362
  br i1 %cmp47, label %return, label %if.end49, !dbg !362

if.end49:                                         ; preds = %if.end46
  call void @llvm.dbg.value(metadata !{i32** %pivotsizes}, i64 0, metadata !287), !dbg !363
  %22 = load i32** %pivotsizes, align 8, !dbg !363, !tbaa !308
  %cmp50 = icmp eq i32* %22, null, !dbg !363
  br i1 %cmp50, label %if.else73, label %if.then51, !dbg !363

if.then51:                                        ; preds = %if.end49
  call void @llvm.dbg.value(metadata !{i32* %npivot}, i64 0, metadata !279), !dbg !364
  %23 = load i32* %npivot, align 4, !dbg !364, !tbaa !304
  %call52 = call i32 @Chv_countEntries(%struct._Chv* %frontJ, i32 %23, i32* %22, i32 2) #5, !dbg !364
  call void @llvm.dbg.value(metadata !{i32 %call52}, i64 0, metadata !276), !dbg !364
  store i32 %call52, i32* %nent, align 4, !dbg !364, !tbaa !304
  %type = getelementptr inbounds %struct._Chv* %frontJ, i64 0, i32 4, !dbg !366
  %24 = load i32* %type, align 4, !dbg !366, !tbaa !304
  call void @llvm.dbg.value(metadata !{i32* %nD}, i64 0, metadata !275), !dbg !366
  %25 = load i32* %nD, align 4, !dbg !366, !tbaa !304
  %call53 = call i32 @SubMtx_nbytesNeeded(i32 %24, i32 8, i32 %25, i32 %25, i32 %call52) #5, !dbg !366
  call void @llvm.dbg.value(metadata !{i32 %call53}, i64 0, metadata !273), !dbg !366
  %call54 = call %struct._SubMtx* @SubMtxManager_newObjectOfSizeNbytes(%struct._SubMtxManager* %1, i32 %call53) #5, !dbg !367
  call void @llvm.dbg.value(metadata !{%struct._SubMtx* %call54}, i64 0, metadata !264), !dbg !367
  %26 = load i32* %symmetryflag, align 4, !dbg !368, !tbaa !304
  switch i32 %26, label %if.end65 [
    i32 0, label %if.then57
    i32 1, label %if.then62
  ], !dbg !368

if.then57:                                        ; preds = %if.then51
  %27 = load i32* %type, align 4, !dbg !369, !tbaa !304
  call void @llvm.dbg.value(metadata !{i32* %nD}, i64 0, metadata !275), !dbg !369
  %28 = load i32* %nD, align 4, !dbg !369, !tbaa !304
  call void @llvm.dbg.value(metadata !{i32* %nent}, i64 0, metadata !276), !dbg !369
  %29 = load i32* %nent, align 4, !dbg !369, !tbaa !304
  call void @SubMtx_init(%struct._SubMtx* %call54, i32 %27, i32 8, i32 %4, i32 %4, i32 %28, i32 %28, i32 %29) #5, !dbg !369
  br label %if.end65, !dbg !371

if.then62:                                        ; preds = %if.then51
  %30 = load i32* %type, align 4, !dbg !372, !tbaa !304
  call void @llvm.dbg.value(metadata !{i32* %nD}, i64 0, metadata !275), !dbg !372
  %31 = load i32* %nD, align 4, !dbg !372, !tbaa !304
  call void @llvm.dbg.value(metadata !{i32* %nent}, i64 0, metadata !276), !dbg !372
  %32 = load i32* %nent, align 4, !dbg !372, !tbaa !304
  call void @SubMtx_init(%struct._SubMtx* %call54, i32 %30, i32 9, i32 %4, i32 %4, i32 %31, i32 %31, i32 %32) #5, !dbg !372
  br label %if.end65, !dbg !374

if.end65:                                         ; preds = %if.then51, %if.then62, %if.then57
  call void @SubMtx_blockDiagonalInfo(%struct._SubMtx* %call54, i32* %nrow, i32* %nent, i32** %pivots, double** %entries) #5, !dbg !375
  call void @llvm.dbg.value(metadata !{i32* %nD}, i64 0, metadata !275), !dbg !376
  %33 = load i32* %nD, align 4, !dbg !376, !tbaa !304
  call void @llvm.dbg.value(metadata !{i32** %pivots}, i64 0, metadata !286), !dbg !376
  %34 = load i32** %pivots, align 8, !dbg !376, !tbaa !308
  call void @IVzero(i32 %33, i32* %34) #5, !dbg !376
  call void @llvm.dbg.value(metadata !{i32* %npivot}, i64 0, metadata !279), !dbg !377
  %35 = load i32* %npivot, align 4, !dbg !377, !tbaa !304
  call void @llvm.dbg.value(metadata !{i32** %pivots}, i64 0, metadata !286), !dbg !377
  %36 = load i32** %pivots, align 8, !dbg !377, !tbaa !308
  call void @llvm.dbg.value(metadata !{i32** %pivotsizes}, i64 0, metadata !287), !dbg !377
  %37 = load i32** %pivotsizes, align 8, !dbg !377, !tbaa !308
  call void @IVcopy(i32 %35, i32* %36, i32* %37) #5, !dbg !377
  call void @llvm.dbg.value(metadata !{i32* %npivot}, i64 0, metadata !279), !dbg !378
  %38 = load i32* %npivot, align 4, !dbg !378, !tbaa !304
  call void @llvm.dbg.value(metadata !{i32** %pivotsizes}, i64 0, metadata !287), !dbg !378
  %39 = load i32** %pivotsizes, align 8, !dbg !378, !tbaa !308
  call void @llvm.dbg.value(metadata !{i32* %nent}, i64 0, metadata !276), !dbg !378
  %40 = load i32* %nent, align 4, !dbg !378, !tbaa !304
  call void @llvm.dbg.value(metadata !{double** %entries}, i64 0, metadata !265), !dbg !378
  %41 = load double** %entries, align 8, !dbg !378, !tbaa !308
  %call66 = call i32 @Chv_copyEntriesToVector(%struct._Chv* %frontJ, i32 %38, i32* %39, i32 %40, double* %41, i32 2, i32 0) #5, !dbg !378
  br i1 %cmp6, label %if.then68, label %if.end72, !dbg !379

if.then68:                                        ; preds = %if.end65
  %42 = call i64 @fwrite(i8* getelementptr inbounds ([25 x i8]* @.str5, i64 0, i64 0), i64 24, i64 1, %struct._IO_FILE* %msgFile), !dbg !380
  %call70 = call i32 @SubMtx_writeForHumanEye(%struct._SubMtx* %call54, %struct._IO_FILE* %msgFile) #5, !dbg !382
  %call71 = call i32 @fflush(%struct._IO_FILE* %msgFile) #5, !dbg !383
  br label %if.end72, !dbg !384

if.end72:                                         ; preds = %if.then68, %if.end65
  call void @llvm.dbg.value(metadata !{i32* %nent}, i64 0, metadata !276), !dbg !385
  %43 = load i32* %nent, align 4, !dbg !385, !tbaa !304
  %nentD = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 7, !dbg !385
  %44 = load i32* %nentD, align 4, !dbg !385, !tbaa !304
  %add = add nsw i32 %44, %43, !dbg !385
  store i32 %add, i32* %nentD, align 4, !dbg !385, !tbaa !304
  %idxprom92.pre = sext i32 %4 to i64, !dbg !386
  %p_mtxDJJ93.pre = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 18, !dbg !386
  br label %if.end91, !dbg !387

if.else73:                                        ; preds = %if.end49
  %idxprom = sext i32 %4 to i64, !dbg !388
  %p_mtxDJJ = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 18, !dbg !388
  %45 = load %struct._SubMtx*** %p_mtxDJJ, align 8, !dbg !388, !tbaa !308
  %arrayidx = getelementptr inbounds %struct._SubMtx** %45, i64 %idxprom, !dbg !388
  %46 = load %struct._SubMtx** %arrayidx, align 8, !dbg !388, !tbaa !308
  call void @llvm.dbg.value(metadata !{%struct._SubMtx* %46}, i64 0, metadata !264), !dbg !388
  %cmp74 = icmp eq %struct._SubMtx* %46, null, !dbg !390
  br i1 %cmp74, label %if.then75, label %if.end80, !dbg !390

if.then75:                                        ; preds = %if.else73
  %type76 = getelementptr inbounds %struct._Chv* %frontJ, i64 0, i32 4, !dbg !391
  %47 = load i32* %type76, align 4, !dbg !391, !tbaa !304
  %call77 = call i32 @SubMtx_nbytesNeeded(i32 %47, i32 7, i32 %21, i32 %21, i32 %21) #5, !dbg !391
  call void @llvm.dbg.value(metadata !{i32 %call77}, i64 0, metadata !273), !dbg !391
  %call78 = call %struct._SubMtx* @SubMtxManager_newObjectOfSizeNbytes(%struct._SubMtxManager* %1, i32 %call77) #5, !dbg !393
  call void @llvm.dbg.value(metadata !{%struct._SubMtx* %call78}, i64 0, metadata !264), !dbg !393
  %48 = load i32* %type76, align 4, !dbg !394, !tbaa !304
  call void @llvm.dbg.value(metadata !{i32* %nD}, i64 0, metadata !275), !dbg !394
  %49 = load i32* %nD, align 4, !dbg !394, !tbaa !304
  call void @SubMtx_init(%struct._SubMtx* %call78, i32 %48, i32 7, i32 %4, i32 %4, i32 %49, i32 %49, i32 %49) #5, !dbg !394
  br label %if.end80, !dbg !395

if.end80:                                         ; preds = %if.then75, %if.else73
  %mtx.0 = phi %struct._SubMtx* [ %call78, %if.then75 ], [ %46, %if.else73 ]
  call void @SubMtx_diagonalInfo(%struct._SubMtx* %mtx.0, i32* %nent, double** %entries) #5, !dbg !396
  call void @llvm.dbg.value(metadata !{i32* %npivot}, i64 0, metadata !279), !dbg !397
  %50 = load i32* %npivot, align 4, !dbg !397, !tbaa !304
  call void @llvm.dbg.value(metadata !{i32** %pivotsizes}, i64 0, metadata !287), !dbg !397
  %51 = load i32** %pivotsizes, align 8, !dbg !397, !tbaa !308
  call void @llvm.dbg.value(metadata !{i32* %nent}, i64 0, metadata !276), !dbg !397
  %52 = load i32* %nent, align 4, !dbg !397, !tbaa !304
  call void @llvm.dbg.value(metadata !{double** %entries}, i64 0, metadata !265), !dbg !397
  %53 = load double** %entries, align 8, !dbg !397, !tbaa !308
  %call81 = call i32 @Chv_copyEntriesToVector(%struct._Chv* %frontJ, i32 %50, i32* %51, i32 %52, double* %53, i32 2, i32 0) #5, !dbg !397
  call void @llvm.dbg.value(metadata !{i32* %nD}, i64 0, metadata !275), !dbg !398
  %54 = load i32* %nD, align 4, !dbg !398, !tbaa !304
  %nentD82 = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 7, !dbg !398
  %55 = load i32* %nentD82, align 4, !dbg !398, !tbaa !304
  %add83 = add nsw i32 %55, %54, !dbg !398
  store i32 %add83, i32* %nentD82, align 4, !dbg !398, !tbaa !304
  br i1 %cmp6, label %if.then85, label %if.end91, !dbg !399

if.then85:                                        ; preds = %if.end80
  %56 = call i64 @fwrite(i8* getelementptr inbounds ([21 x i8]* @.str6, i64 0, i64 0), i64 20, i64 1, %struct._IO_FILE* %msgFile), !dbg !400
  call void @llvm.dbg.value(metadata !{i32* %nent}, i64 0, metadata !276), !dbg !402
  %57 = load i32* %nent, align 4, !dbg !402, !tbaa !304
  call void @llvm.dbg.value(metadata !{double** %entries}, i64 0, metadata !265), !dbg !402
  %58 = load double** %entries, align 8, !dbg !402, !tbaa !308
  call void @DVfprintf(%struct._IO_FILE* %msgFile, i32 %57, double* %58) #5, !dbg !402
  %59 = call i64 @fwrite(i8* getelementptr inbounds ([25 x i8]* @.str5, i64 0, i64 0), i64 24, i64 1, %struct._IO_FILE* %msgFile), !dbg !403
  %call88 = call i32 @SubMtx_writeForHumanEye(%struct._SubMtx* %mtx.0, %struct._IO_FILE* %msgFile) #5, !dbg !404
  %call89 = call i32 @fflush(%struct._IO_FILE* %msgFile) #5, !dbg !405
  br label %if.end91, !dbg !406

if.end91:                                         ; preds = %if.end80, %if.then85, %if.end72
  %p_mtxDJJ93.pre-phi = phi %struct._SubMtx*** [ %p_mtxDJJ, %if.end80 ], [ %p_mtxDJJ, %if.then85 ], [ %p_mtxDJJ93.pre, %if.end72 ], !dbg !386
  %idxprom92.pre-phi = phi i64 [ %idxprom, %if.end80 ], [ %idxprom, %if.then85 ], [ %idxprom92.pre, %if.end72 ], !dbg !386
  %mtx.1 = phi %struct._SubMtx* [ %mtx.0, %if.end80 ], [ %mtx.0, %if.then85 ], [ %call54, %if.end72 ]
  %60 = load %struct._SubMtx*** %p_mtxDJJ93.pre-phi, align 8, !dbg !386, !tbaa !308
  %arrayidx94 = getelementptr inbounds %struct._SubMtx** %60, i64 %idxprom92.pre-phi, !dbg !386
  store %struct._SubMtx* %mtx.1, %struct._SubMtx** %arrayidx94, align 8, !dbg !386, !tbaa !308
  call void @SubMtx_columnIndices(%struct._SubMtx* %mtx.1, i32* %ncol, i32** %colind) #5, !dbg !407
  call void @llvm.dbg.value(metadata !{i32* %ncol}, i64 0, metadata !274), !dbg !408
  %61 = load i32* %ncol, align 4, !dbg !408, !tbaa !304
  call void @llvm.dbg.value(metadata !{i32** %colind}, i64 0, metadata !282), !dbg !408
  %62 = load i32** %colind, align 8, !dbg !408, !tbaa !308
  call void @llvm.dbg.value(metadata !{i32** %colindJ}, i64 0, metadata !283), !dbg !408
  %63 = load i32** %colindJ, align 8, !dbg !408, !tbaa !308
  call void @IVcopy(i32 %61, i32* %62, i32* %63) #5, !dbg !408
  call void @SubMtx_rowIndices(%struct._SubMtx* %mtx.1, i32* %nrow, i32** %rowind) #5, !dbg !409
  call void @llvm.dbg.value(metadata !{i32* %nrow}, i64 0, metadata !280), !dbg !410
  %64 = load i32* %nrow, align 4, !dbg !410, !tbaa !304
  call void @llvm.dbg.value(metadata !{i32** %rowind}, i64 0, metadata !288), !dbg !410
  %65 = load i32** %rowind, align 8, !dbg !410, !tbaa !308
  call void @llvm.dbg.value(metadata !{i32** %rowindJ}, i64 0, metadata !289), !dbg !410
  %66 = load i32** %rowindJ, align 8, !dbg !410, !tbaa !308
  call void @IVcopy(i32 %64, i32* %65, i32* %66) #5, !dbg !410
  %sparsityflag = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 4, !dbg !411
  %67 = load i32* %sparsityflag, align 4, !dbg !411, !tbaa !304
  %cmp95 = icmp eq i32 %67, 0, !dbg !411
  call void @llvm.dbg.value(metadata !{i32* %npivot}, i64 0, metadata !279), !dbg !412
  %68 = load i32* %npivot, align 4, !dbg !412, !tbaa !304
  call void @llvm.dbg.value(metadata !{i32** %pivotsizes}, i64 0, metadata !287), !dbg !412
  %69 = load i32** %pivotsizes, align 8, !dbg !412, !tbaa !308
  br i1 %cmp95, label %if.then96, label %if.else166, !dbg !411

if.then96:                                        ; preds = %if.end91
  %call97 = call i32 @Chv_countEntries(%struct._Chv* %frontJ, i32 %68, i32* %69, i32 6) #5, !dbg !412
  call void @llvm.dbg.value(metadata !{i32 %call97}, i64 0, metadata !276), !dbg !412
  store i32 %call97, i32* %nent, align 4, !dbg !412, !tbaa !304
  %cmp98 = icmp sgt i32 %call97, 0, !dbg !414
  br i1 %cmp98, label %if.then99, label %if.end192, !dbg !414

if.then99:                                        ; preds = %if.then96
  %p_mtxUJJ = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 19, !dbg !415
  %70 = load %struct._SubMtx*** %p_mtxUJJ, align 8, !dbg !415, !tbaa !308
  %arrayidx101 = getelementptr inbounds %struct._SubMtx** %70, i64 %idxprom92.pre-phi, !dbg !415
  %71 = load %struct._SubMtx** %arrayidx101, align 8, !dbg !415, !tbaa !308
  call void @llvm.dbg.value(metadata !{%struct._SubMtx* %71}, i64 0, metadata !264), !dbg !415
  %cmp102 = icmp eq %struct._SubMtx* %71, null, !dbg !417
  br i1 %cmp102, label %if.then103, label %if.end108, !dbg !417

if.then103:                                       ; preds = %if.then99
  %type104 = getelementptr inbounds %struct._Chv* %frontJ, i64 0, i32 4, !dbg !418
  %72 = load i32* %type104, align 4, !dbg !418, !tbaa !304
  call void @llvm.dbg.value(metadata !{i32* %nD}, i64 0, metadata !275), !dbg !418
  %73 = load i32* %nD, align 4, !dbg !418, !tbaa !304
  %call105 = call i32 @SubMtx_nbytesNeeded(i32 %72, i32 6, i32 %73, i32 %73, i32 %call97) #5, !dbg !418
  call void @llvm.dbg.value(metadata !{i32 %call105}, i64 0, metadata !273), !dbg !418
  %call106 = call %struct._SubMtx* @SubMtxManager_newObjectOfSizeNbytes(%struct._SubMtxManager* %1, i32 %call105) #5, !dbg !420
  call void @llvm.dbg.value(metadata !{%struct._SubMtx* %call106}, i64 0, metadata !264), !dbg !420
  %74 = load i32* %type104, align 4, !dbg !421, !tbaa !304
  call void @llvm.dbg.value(metadata !{i32* %nD}, i64 0, metadata !275), !dbg !421
  %75 = load i32* %nD, align 4, !dbg !421, !tbaa !304
  call void @llvm.dbg.value(metadata !{i32* %nent}, i64 0, metadata !276), !dbg !421
  %76 = load i32* %nent, align 4, !dbg !421, !tbaa !304
  call void @SubMtx_init(%struct._SubMtx* %call106, i32 %74, i32 6, i32 %4, i32 %4, i32 %75, i32 %75, i32 %76) #5, !dbg !421
  br label %if.end108, !dbg !422

if.end108:                                        ; preds = %if.then103, %if.then99
  %mtx.2 = phi %struct._SubMtx* [ %call106, %if.then103 ], [ %71, %if.then99 ]
  call void @SubMtx_denseSubcolumnsInfo(%struct._SubMtx* %mtx.2, i32* %ncol, i32* %nent, i32** %firstlocs, i32** %sizes, double** %entries) #5, !dbg !423
  call void @llvm.dbg.value(metadata !{i32** %pivotsizes}, i64 0, metadata !287), !dbg !424
  %77 = load i32** %pivotsizes, align 8, !dbg !424, !tbaa !308
  %cmp109 = icmp eq i32* %77, null, !dbg !424
  call void @llvm.dbg.value(metadata !{i32* %nD}, i64 0, metadata !275), !dbg !425
  %78 = load i32* %nD, align 4, !dbg !425, !tbaa !304
  %cmp140706 = icmp sgt i32 %78, 0, !dbg !425
  br i1 %cmp109, label %for.cond139.preheader, label %for.cond.preheader, !dbg !424

for.cond.preheader:                               ; preds = %if.end108
  br i1 %cmp140706, label %for.body.lr.ph, label %if.end149, !dbg !428

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  call void @llvm.dbg.value(metadata !{i32** %pivotsizes}, i64 0, metadata !287), !dbg !431
  call void @llvm.dbg.value(metadata !{i32** %firstlocs}, i64 0, metadata !284), !dbg !433
  %79 = load i32** %firstlocs, align 8, !dbg !433, !tbaa !308
  call void @llvm.dbg.value(metadata !{i32** %sizes}, i64 0, metadata !290), !dbg !435
  %80 = load i32** %sizes, align 8, !dbg !435, !tbaa !308
  call void @llvm.dbg.value(metadata !{i32** %firstlocs}, i64 0, metadata !284), !dbg !436
  call void @llvm.dbg.value(metadata !{i32** %firstlocs}, i64 0, metadata !284), !dbg !436
  call void @llvm.dbg.value(metadata !{i32** %sizes}, i64 0, metadata !290), !dbg !438
  call void @llvm.dbg.value(metadata !{i32** %sizes}, i64 0, metadata !290), !dbg !438
  br label %for.body, !dbg !428

for.cond139.preheader:                            ; preds = %if.end108
  br i1 %cmp140706, label %for.body141.lr.ph, label %if.end149, !dbg !425

for.body141.lr.ph:                                ; preds = %for.cond139.preheader
  call void @llvm.dbg.value(metadata !{i32** %firstlocs}, i64 0, metadata !284), !dbg !439
  %81 = load i32** %firstlocs, align 8, !dbg !439, !tbaa !308
  call void @llvm.dbg.value(metadata !{i32** %sizes}, i64 0, metadata !290), !dbg !441
  %82 = load i32** %sizes, align 8, !dbg !441, !tbaa !308
  br label %for.body141, !dbg !425

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %indvars.iv714 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next715, %for.inc ]
  %jcol.0710 = phi i32 [ 0, %for.body.lr.ph ], [ %jcol.1, %for.inc ]
  call void @llvm.dbg.value(metadata !{i32** %pivotsizes}, i64 0, metadata !287), !dbg !431
  %arrayidx113 = getelementptr inbounds i32* %77, i64 %indvars.iv714, !dbg !431
  %83 = load i32* %arrayidx113, align 4, !dbg !431, !tbaa !304
  call void @llvm.dbg.value(metadata !{i32 %83}, i64 0, metadata !272), !dbg !431
  switch i32 %83, label %for.inc [
    i32 1, label %if.then115
    i32 2, label %if.then123
  ], !dbg !442

if.then115:                                       ; preds = %for.body
  %idxprom116 = sext i32 %jcol.0710 to i64, !dbg !433
  call void @llvm.dbg.value(metadata !{i32** %firstlocs}, i64 0, metadata !284), !dbg !433
  %arrayidx117 = getelementptr inbounds i32* %79, i64 %idxprom116, !dbg !433
  store i32 0, i32* %arrayidx117, align 4, !dbg !433, !tbaa !304
  call void @llvm.dbg.value(metadata !{i32** %sizes}, i64 0, metadata !290), !dbg !435
  %arrayidx119 = getelementptr inbounds i32* %80, i64 %idxprom116, !dbg !435
  store i32 %jcol.0710, i32* %arrayidx119, align 4, !dbg !435, !tbaa !304
  %inc120 = add nsw i32 %jcol.0710, 1, !dbg !443
  call void @llvm.dbg.value(metadata !{i32 %inc120}, i64 0, metadata !270), !dbg !443
  br label %for.inc, !dbg !444

if.then123:                                       ; preds = %for.body
  %add124 = add nsw i32 %jcol.0710, 1, !dbg !436
  %idxprom125 = sext i32 %add124 to i64, !dbg !436
  call void @llvm.dbg.value(metadata !{i32** %firstlocs}, i64 0, metadata !284), !dbg !436
  %arrayidx126 = getelementptr inbounds i32* %79, i64 %idxprom125, !dbg !436
  store i32 0, i32* %arrayidx126, align 4, !dbg !436, !tbaa !304
  %idxprom127 = sext i32 %jcol.0710 to i64, !dbg !436
  call void @llvm.dbg.value(metadata !{i32** %firstlocs}, i64 0, metadata !284), !dbg !436
  %arrayidx128 = getelementptr inbounds i32* %79, i64 %idxprom127, !dbg !436
  store i32 0, i32* %arrayidx128, align 4, !dbg !436, !tbaa !304
  call void @llvm.dbg.value(metadata !{i32** %sizes}, i64 0, metadata !290), !dbg !438
  %arrayidx131 = getelementptr inbounds i32* %80, i64 %idxprom125, !dbg !438
  store i32 %jcol.0710, i32* %arrayidx131, align 4, !dbg !438, !tbaa !304
  call void @llvm.dbg.value(metadata !{i32** %sizes}, i64 0, metadata !290), !dbg !438
  %arrayidx133 = getelementptr inbounds i32* %80, i64 %idxprom127, !dbg !438
  store i32 %jcol.0710, i32* %arrayidx133, align 4, !dbg !438, !tbaa !304
  %add134 = add nsw i32 %jcol.0710, 2, !dbg !445
  call void @llvm.dbg.value(metadata !{i32 %add134}, i64 0, metadata !270), !dbg !445
  br label %for.inc, !dbg !446

for.inc:                                          ; preds = %for.body, %if.then115, %if.then123
  %jcol.1 = phi i32 [ %inc120, %if.then115 ], [ %add134, %if.then123 ], [ %jcol.0710, %for.body ]
  %indvars.iv.next715 = add i64 %indvars.iv714, 1, !dbg !428
  call void @llvm.dbg.value(metadata !{i32* %nD}, i64 0, metadata !275), !dbg !428
  %84 = load i32* %nD, align 4, !dbg !428, !tbaa !304
  %cmp111 = icmp slt i32 %jcol.1, %84, !dbg !428
  br i1 %cmp111, label %for.body, label %if.end149, !dbg !428

for.body141:                                      ; preds = %for.body141.lr.ph, %for.body141
  %indvars.iv712 = phi i64 [ 0, %for.body141.lr.ph ], [ %indvars.iv.next713, %for.body141 ]
  call void @llvm.dbg.value(metadata !{i32** %firstlocs}, i64 0, metadata !284), !dbg !439
  %arrayidx143 = getelementptr inbounds i32* %81, i64 %indvars.iv712, !dbg !439
  store i32 0, i32* %arrayidx143, align 4, !dbg !439, !tbaa !304
  call void @llvm.dbg.value(metadata !{i32** %sizes}, i64 0, metadata !290), !dbg !441
  %arrayidx145 = getelementptr inbounds i32* %82, i64 %indvars.iv712, !dbg !441
  %85 = trunc i64 %indvars.iv712 to i32, !dbg !441
  store i32 %85, i32* %arrayidx145, align 4, !dbg !441, !tbaa !304
  %indvars.iv.next713 = add i64 %indvars.iv712, 1, !dbg !425
  call void @llvm.dbg.value(metadata !{i32* %nD}, i64 0, metadata !275), !dbg !425
  %86 = load i32* %nD, align 4, !dbg !425, !tbaa !304
  %87 = trunc i64 %indvars.iv.next713 to i32, !dbg !425
  %cmp140 = icmp slt i32 %87, %86, !dbg !425
  br i1 %cmp140, label %for.body141, label %if.end149, !dbg !425

if.end149:                                        ; preds = %for.cond.preheader, %for.inc, %for.cond139.preheader, %for.body141
  %88 = phi i32* [ null, %for.body141 ], [ null, %for.cond139.preheader ], [ %77, %for.inc ], [ %77, %for.cond.preheader ]
  call void @llvm.dbg.value(metadata !{i32* %npivot}, i64 0, metadata !279), !dbg !447
  %89 = load i32* %npivot, align 4, !dbg !447, !tbaa !304
  call void @llvm.dbg.value(metadata !{i32** %pivotsizes}, i64 0, metadata !287), !dbg !447
  call void @llvm.dbg.value(metadata !{i32* %nent}, i64 0, metadata !276), !dbg !447
  %90 = load i32* %nent, align 4, !dbg !447, !tbaa !304
  call void @llvm.dbg.value(metadata !{double** %entries}, i64 0, metadata !265), !dbg !447
  %91 = load double** %entries, align 8, !dbg !447, !tbaa !308
  %call150 = call i32 @Chv_copyEntriesToVector(%struct._Chv* %frontJ, i32 %89, i32* %88, i32 %90, double* %91, i32 6, i32 1) #5, !dbg !447
  %92 = load %struct._SubMtx*** %p_mtxUJJ, align 8, !dbg !448, !tbaa !308
  %arrayidx153 = getelementptr inbounds %struct._SubMtx** %92, i64 %idxprom92.pre-phi, !dbg !448
  store %struct._SubMtx* %mtx.2, %struct._SubMtx** %arrayidx153, align 8, !dbg !448, !tbaa !308
  call void @SubMtx_columnIndices(%struct._SubMtx* %mtx.2, i32* %ncol, i32** %colind) #5, !dbg !449
  call void @llvm.dbg.value(metadata !{i32* %ncol}, i64 0, metadata !274), !dbg !450
  %93 = load i32* %ncol, align 4, !dbg !450, !tbaa !304
  call void @llvm.dbg.value(metadata !{i32** %colind}, i64 0, metadata !282), !dbg !450
  %94 = load i32** %colind, align 8, !dbg !450, !tbaa !308
  call void @llvm.dbg.value(metadata !{i32** %colindJ}, i64 0, metadata !283), !dbg !450
  %95 = load i32** %colindJ, align 8, !dbg !450, !tbaa !308
  call void @IVcopy(i32 %93, i32* %94, i32* %95) #5, !dbg !450
  call void @SubMtx_rowIndices(%struct._SubMtx* %mtx.2, i32* %nrow, i32** %rowind) #5, !dbg !451
  call void @llvm.dbg.value(metadata !{i32* %nrow}, i64 0, metadata !280), !dbg !452
  %96 = load i32* %nrow, align 4, !dbg !452, !tbaa !304
  call void @llvm.dbg.value(metadata !{i32** %rowind}, i64 0, metadata !288), !dbg !452
  %97 = load i32** %rowind, align 8, !dbg !452, !tbaa !308
  call void @llvm.dbg.value(metadata !{i32** %rowindJ}, i64 0, metadata !289), !dbg !452
  %98 = load i32** %rowindJ, align 8, !dbg !452, !tbaa !308
  call void @IVcopy(i32 %96, i32* %97, i32* %98) #5, !dbg !452
  %99 = load i32* %pivotingflag10, align 4, !dbg !453, !tbaa !304
  %cmp155 = icmp eq i32 %99, 1, !dbg !453
  br i1 %cmp155, label %if.then156, label %if.end158, !dbg !453

if.then156:                                       ; preds = %if.end149
  call void @llvm.dbg.value(metadata !{i32* %nent}, i64 0, metadata !276), !dbg !454
  %100 = load i32* %nent, align 4, !dbg !454, !tbaa !304
  %nentU = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 9, !dbg !454
  %101 = load i32* %nentU, align 4, !dbg !454, !tbaa !304
  %add157 = add nsw i32 %101, %100, !dbg !454
  store i32 %add157, i32* %nentU, align 4, !dbg !454, !tbaa !304
  br label %if.end158, !dbg !456

if.end158:                                        ; preds = %if.then156, %if.end149
  br i1 %cmp6, label %if.then160, label %if.end192, !dbg !457

if.then160:                                       ; preds = %if.end158
  %102 = call i64 @fwrite(i8* getelementptr inbounds ([14 x i8]* @.str7, i64 0, i64 0), i64 13, i64 1, %struct._IO_FILE* %msgFile), !dbg !458
  %call162 = call i32 @SubMtx_writeForHumanEye(%struct._SubMtx* %mtx.2, %struct._IO_FILE* %msgFile) #5, !dbg !460
  %call163 = call i32 @fflush(%struct._IO_FILE* %msgFile) #5, !dbg !461
  br label %if.end192, !dbg !462

if.else166:                                       ; preds = %if.end91
  %call167 = call i32 @Chv_countBigEntries(%struct._Chv* %frontJ, i32 %68, i32* %69, i32 6, double %droptol) #5, !dbg !463
  call void @llvm.dbg.value(metadata !{i32 %call167}, i64 0, metadata !276), !dbg !463
  store i32 %call167, i32* %nent, align 4, !dbg !463, !tbaa !304
  %cmp168 = icmp sgt i32 %call167, 0, !dbg !465
  br i1 %cmp168, label %if.then169, label %if.end192, !dbg !465

if.then169:                                       ; preds = %if.else166
  %type170 = getelementptr inbounds %struct._Chv* %frontJ, i64 0, i32 4, !dbg !466
  %103 = load i32* %type170, align 4, !dbg !466, !tbaa !304
  call void @llvm.dbg.value(metadata !{i32* %nD}, i64 0, metadata !275), !dbg !466
  %104 = load i32* %nD, align 4, !dbg !466, !tbaa !304
  %call171 = call i32 @SubMtx_nbytesNeeded(i32 %103, i32 3, i32 %104, i32 %104, i32 %call167) #5, !dbg !466
  call void @llvm.dbg.value(metadata !{i32 %call171}, i64 0, metadata !273), !dbg !466
  br i1 %cmp6, label %if.then173, label %if.end176, !dbg !468

if.then173:                                       ; preds = %if.then169
  call void @llvm.dbg.value(metadata !{i32* %nD}, i64 0, metadata !275), !dbg !469
  %105 = load i32* %nD, align 4, !dbg !469, !tbaa !304
  call void @llvm.dbg.value(metadata !{i32* %nent}, i64 0, metadata !276), !dbg !469
  %106 = load i32* %nent, align 4, !dbg !469, !tbaa !304
  %call174 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %msgFile, i8* getelementptr inbounds ([39 x i8]* @.str8, i64 0, i64 0), i32 %4, i32 %4, i32 %105, i32 %106, i32 %call171) #5, !dbg !469
  %call175 = call i32 @fflush(%struct._IO_FILE* %msgFile) #5, !dbg !471
  br label %if.end176, !dbg !472

if.end176:                                        ; preds = %if.then173, %if.then169
  %call177 = call %struct._SubMtx* @SubMtxManager_newObjectOfSizeNbytes(%struct._SubMtxManager* %1, i32 %call171) #5, !dbg !473
  call void @llvm.dbg.value(metadata !{%struct._SubMtx* %call177}, i64 0, metadata !264), !dbg !473
  %107 = load i32* %type170, align 4, !dbg !474, !tbaa !304
  call void @llvm.dbg.value(metadata !{i32* %nD}, i64 0, metadata !275), !dbg !474
  %108 = load i32* %nD, align 4, !dbg !474, !tbaa !304
  call void @llvm.dbg.value(metadata !{i32* %nent}, i64 0, metadata !276), !dbg !474
  %109 = load i32* %nent, align 4, !dbg !474, !tbaa !304
  call void @SubMtx_init(%struct._SubMtx* %call177, i32 %107, i32 3, i32 %4, i32 %4, i32 %108, i32 %108, i32 %109) #5, !dbg !474
  call void @SubMtx_sparseColumnsInfo(%struct._SubMtx* %call177, i32* %ncol, i32* %nent, i32** %sizes, i32** %indices, double** %entries) #5, !dbg !475
  call void @llvm.dbg.value(metadata !{i32* %npivot}, i64 0, metadata !279), !dbg !476
  %110 = load i32* %npivot, align 4, !dbg !476, !tbaa !304
  call void @llvm.dbg.value(metadata !{i32** %pivotsizes}, i64 0, metadata !287), !dbg !476
  %111 = load i32** %pivotsizes, align 8, !dbg !476, !tbaa !308
  call void @llvm.dbg.value(metadata !{i32** %sizes}, i64 0, metadata !290), !dbg !476
  %112 = load i32** %sizes, align 8, !dbg !476, !tbaa !308
  call void @llvm.dbg.value(metadata !{i32** %indices}, i64 0, metadata !285), !dbg !476
  %113 = load i32** %indices, align 8, !dbg !476, !tbaa !308
  call void @llvm.dbg.value(metadata !{double** %entries}, i64 0, metadata !265), !dbg !476
  %114 = load double** %entries, align 8, !dbg !476, !tbaa !308
  %call179 = call i32 @Chv_copyBigEntriesToVector(%struct._Chv* %frontJ, i32 %110, i32* %111, i32* %112, i32* %113, double* %114, i32 6, i32 1, double %droptol) #5, !dbg !476
  %p_mtxUJJ181 = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 19, !dbg !477
  %115 = load %struct._SubMtx*** %p_mtxUJJ181, align 8, !dbg !477, !tbaa !308
  %arrayidx182 = getelementptr inbounds %struct._SubMtx** %115, i64 %idxprom92.pre-phi, !dbg !477
  store %struct._SubMtx* %call177, %struct._SubMtx** %arrayidx182, align 8, !dbg !477, !tbaa !308
  call void @SubMtx_columnIndices(%struct._SubMtx* %call177, i32* %ncol, i32** %colind) #5, !dbg !478
  call void @llvm.dbg.value(metadata !{i32* %ncol}, i64 0, metadata !274), !dbg !479
  %116 = load i32* %ncol, align 4, !dbg !479, !tbaa !304
  call void @llvm.dbg.value(metadata !{i32** %colind}, i64 0, metadata !282), !dbg !479
  %117 = load i32** %colind, align 8, !dbg !479, !tbaa !308
  call void @llvm.dbg.value(metadata !{i32** %colindJ}, i64 0, metadata !283), !dbg !479
  %118 = load i32** %colindJ, align 8, !dbg !479, !tbaa !308
  call void @IVcopy(i32 %116, i32* %117, i32* %118) #5, !dbg !479
  call void @SubMtx_rowIndices(%struct._SubMtx* %call177, i32* %nrow, i32** %rowind) #5, !dbg !480
  call void @llvm.dbg.value(metadata !{i32* %nrow}, i64 0, metadata !280), !dbg !481
  %119 = load i32* %nrow, align 4, !dbg !481, !tbaa !304
  call void @llvm.dbg.value(metadata !{i32** %rowind}, i64 0, metadata !288), !dbg !481
  %120 = load i32** %rowind, align 8, !dbg !481, !tbaa !308
  call void @llvm.dbg.value(metadata !{i32** %rowindJ}, i64 0, metadata !289), !dbg !481
  %121 = load i32** %rowindJ, align 8, !dbg !481, !tbaa !308
  call void @IVcopy(i32 %119, i32* %120, i32* %121) #5, !dbg !481
  call void @llvm.dbg.value(metadata !{i32* %nent}, i64 0, metadata !276), !dbg !482
  %122 = load i32* %nent, align 4, !dbg !482, !tbaa !304
  %nentU183 = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 9, !dbg !482
  %123 = load i32* %nentU183, align 4, !dbg !482, !tbaa !304
  %add184 = add nsw i32 %123, %122, !dbg !482
  store i32 %add184, i32* %nentU183, align 4, !dbg !482, !tbaa !304
  br i1 %cmp6, label %if.then186, label %if.end192, !dbg !483

if.then186:                                       ; preds = %if.end176
  %124 = call i64 @fwrite(i8* getelementptr inbounds ([14 x i8]* @.str7, i64 0, i64 0), i64 13, i64 1, %struct._IO_FILE* %msgFile), !dbg !484
  %call188 = call i32 @SubMtx_writeForHumanEye(%struct._SubMtx* %call177, %struct._IO_FILE* %msgFile) #5, !dbg !486
  %call189 = call i32 @fflush(%struct._IO_FILE* %msgFile) #5, !dbg !487
  br label %if.end192, !dbg !488

if.end192:                                        ; preds = %if.else166, %if.then186, %if.end176, %if.then96, %if.then160, %if.end158
  %125 = load i32* %sparsityflag, align 4, !dbg !489, !tbaa !304
  %cmp194 = icmp eq i32 %125, 0, !dbg !489
  call void @llvm.dbg.value(metadata !{i32* %npivot}, i64 0, metadata !279), !dbg !490
  %126 = load i32* %npivot, align 4, !dbg !490, !tbaa !304
  call void @llvm.dbg.value(metadata !{i32** %pivotsizes}, i64 0, metadata !287), !dbg !490
  %127 = load i32** %pivotsizes, align 8, !dbg !490, !tbaa !308
  br i1 %cmp194, label %if.then195, label %if.else225, !dbg !489

if.then195:                                       ; preds = %if.end192
  %call196 = call i32 @Chv_countEntries(%struct._Chv* %frontJ, i32 %126, i32* %127, i32 7) #5, !dbg !490
  call void @llvm.dbg.value(metadata !{i32 %call196}, i64 0, metadata !276), !dbg !490
  store i32 %call196, i32* %nent, align 4, !dbg !490, !tbaa !304
  %cmp197 = icmp sgt i32 %call196, 0, !dbg !492
  br i1 %cmp197, label %if.then198, label %if.end253, !dbg !492

if.then198:                                       ; preds = %if.then195
  %p_mtxUJN = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 20, !dbg !493
  %128 = load %struct._SubMtx*** %p_mtxUJN, align 8, !dbg !493, !tbaa !308
  %arrayidx200 = getelementptr inbounds %struct._SubMtx** %128, i64 %idxprom92.pre-phi, !dbg !493
  %129 = load %struct._SubMtx** %arrayidx200, align 8, !dbg !493, !tbaa !308
  call void @llvm.dbg.value(metadata !{%struct._SubMtx* %129}, i64 0, metadata !264), !dbg !493
  %cmp201 = icmp eq %struct._SubMtx* %129, null, !dbg !495
  br i1 %cmp201, label %if.then202, label %if.end207, !dbg !495

if.then202:                                       ; preds = %if.then198
  %type203 = getelementptr inbounds %struct._Chv* %frontJ, i64 0, i32 4, !dbg !496
  %130 = load i32* %type203, align 4, !dbg !496, !tbaa !304
  call void @llvm.dbg.value(metadata !{i32* %nD}, i64 0, metadata !275), !dbg !496
  %131 = load i32* %nD, align 4, !dbg !496, !tbaa !304
  call void @llvm.dbg.value(metadata !{i32* %nU}, i64 0, metadata !281), !dbg !496
  %132 = load i32* %nU, align 4, !dbg !496, !tbaa !304
  %call204 = call i32 @SubMtx_nbytesNeeded(i32 %130, i32 1, i32 %131, i32 %132, i32 %call196) #5, !dbg !496
  call void @llvm.dbg.value(metadata !{i32 %call204}, i64 0, metadata !273), !dbg !496
  %call205 = call %struct._SubMtx* @SubMtxManager_newObjectOfSizeNbytes(%struct._SubMtxManager* %1, i32 %call204) #5, !dbg !498
  call void @llvm.dbg.value(metadata !{%struct._SubMtx* %call205}, i64 0, metadata !264), !dbg !498
  %133 = load i32* %type203, align 4, !dbg !499, !tbaa !304
  call void @llvm.dbg.value(metadata !{i32* %nD}, i64 0, metadata !275), !dbg !499
  %134 = load i32* %nD, align 4, !dbg !499, !tbaa !304
  call void @llvm.dbg.value(metadata !{i32* %nU}, i64 0, metadata !281), !dbg !499
  %135 = load i32* %nU, align 4, !dbg !499, !tbaa !304
  call void @llvm.dbg.value(metadata !{i32* %nent}, i64 0, metadata !276), !dbg !499
  %136 = load i32* %nent, align 4, !dbg !499, !tbaa !304
  call void @SubMtx_init(%struct._SubMtx* %call205, i32 %133, i32 1, i32 %4, i32 %0, i32 %134, i32 %135, i32 %136) #5, !dbg !499
  br label %if.end207, !dbg !500

if.end207:                                        ; preds = %if.then202, %if.then198
  %mtx.3 = phi %struct._SubMtx* [ %call205, %if.then202 ], [ %129, %if.then198 ]
  call void @SubMtx_denseInfo(%struct._SubMtx* %mtx.3, i32* %nrow, i32* %ncol, i32* %inc1, i32* %inc2, double** %entries) #5, !dbg !501
  call void @llvm.dbg.value(metadata !{i32* %npivot}, i64 0, metadata !279), !dbg !502
  %137 = load i32* %npivot, align 4, !dbg !502, !tbaa !304
  call void @llvm.dbg.value(metadata !{i32** %pivotsizes}, i64 0, metadata !287), !dbg !502
  %138 = load i32** %pivotsizes, align 8, !dbg !502, !tbaa !308
  call void @llvm.dbg.value(metadata !{i32* %nent}, i64 0, metadata !276), !dbg !502
  %139 = load i32* %nent, align 4, !dbg !502, !tbaa !304
  call void @llvm.dbg.value(metadata !{double** %entries}, i64 0, metadata !265), !dbg !502
  %140 = load double** %entries, align 8, !dbg !502, !tbaa !308
  %call208 = call i32 @Chv_copyEntriesToVector(%struct._Chv* %frontJ, i32 %137, i32* %138, i32 %139, double* %140, i32 7, i32 1) #5, !dbg !502
  %141 = load %struct._SubMtx*** %p_mtxUJN, align 8, !dbg !503, !tbaa !308
  %arrayidx211 = getelementptr inbounds %struct._SubMtx** %141, i64 %idxprom92.pre-phi, !dbg !503
  store %struct._SubMtx* %mtx.3, %struct._SubMtx** %arrayidx211, align 8, !dbg !503, !tbaa !308
  call void @SubMtx_columnIndices(%struct._SubMtx* %mtx.3, i32* %ncol, i32** %colind) #5, !dbg !504
  call void @llvm.dbg.value(metadata !{i32* %ncol}, i64 0, metadata !274), !dbg !505
  %142 = load i32* %ncol, align 4, !dbg !505, !tbaa !304
  call void @llvm.dbg.value(metadata !{i32** %colind}, i64 0, metadata !282), !dbg !505
  %143 = load i32** %colind, align 8, !dbg !505, !tbaa !308
  call void @llvm.dbg.value(metadata !{i32** %colindJ}, i64 0, metadata !283), !dbg !505
  %144 = load i32** %colindJ, align 8, !dbg !505, !tbaa !308
  call void @llvm.dbg.value(metadata !{i32* %nD}, i64 0, metadata !275), !dbg !505
  %145 = load i32* %nD, align 4, !dbg !505, !tbaa !304
  %idx.ext = sext i32 %145 to i64, !dbg !505
  %add.ptr = getelementptr inbounds i32* %144, i64 %idx.ext, !dbg !505
  call void @IVcopy(i32 %142, i32* %143, i32* %add.ptr) #5, !dbg !505
  call void @SubMtx_rowIndices(%struct._SubMtx* %mtx.3, i32* %nrow, i32** %rowind) #5, !dbg !506
  call void @llvm.dbg.value(metadata !{i32* %nrow}, i64 0, metadata !280), !dbg !507
  %146 = load i32* %nrow, align 4, !dbg !507, !tbaa !304
  call void @llvm.dbg.value(metadata !{i32** %rowind}, i64 0, metadata !288), !dbg !507
  %147 = load i32** %rowind, align 8, !dbg !507, !tbaa !308
  call void @llvm.dbg.value(metadata !{i32** %rowindJ}, i64 0, metadata !289), !dbg !507
  %148 = load i32** %rowindJ, align 8, !dbg !507, !tbaa !308
  call void @IVcopy(i32 %146, i32* %147, i32* %148) #5, !dbg !507
  %149 = load i32* %pivotingflag10, align 4, !dbg !508, !tbaa !304
  %cmp213 = icmp eq i32 %149, 1, !dbg !508
  br i1 %cmp213, label %if.then214, label %if.end217, !dbg !508

if.then214:                                       ; preds = %if.end207
  call void @llvm.dbg.value(metadata !{i32* %nent}, i64 0, metadata !276), !dbg !509
  %150 = load i32* %nent, align 4, !dbg !509, !tbaa !304
  %nentU215 = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 9, !dbg !509
  %151 = load i32* %nentU215, align 4, !dbg !509, !tbaa !304
  %add216 = add nsw i32 %151, %150, !dbg !509
  store i32 %add216, i32* %nentU215, align 4, !dbg !509, !tbaa !304
  br label %if.end217, !dbg !511

if.end217:                                        ; preds = %if.then214, %if.end207
  br i1 %cmp6, label %if.then219, label %if.end253, !dbg !512

if.then219:                                       ; preds = %if.end217
  %152 = call i64 @fwrite(i8* getelementptr inbounds ([15 x i8]* @.str9, i64 0, i64 0), i64 14, i64 1, %struct._IO_FILE* %msgFile), !dbg !513
  %call221 = call i32 @SubMtx_writeForHumanEye(%struct._SubMtx* %mtx.3, %struct._IO_FILE* %msgFile) #5, !dbg !515
  %call222 = call i32 @fflush(%struct._IO_FILE* %msgFile) #5, !dbg !516
  br label %if.end253, !dbg !517

if.else225:                                       ; preds = %if.end192
  %call226 = call i32 @Chv_countBigEntries(%struct._Chv* %frontJ, i32 %126, i32* %127, i32 7, double %droptol) #5, !dbg !518
  call void @llvm.dbg.value(metadata !{i32 %call226}, i64 0, metadata !276), !dbg !518
  store i32 %call226, i32* %nent, align 4, !dbg !518, !tbaa !304
  %cmp227 = icmp sgt i32 %call226, 0, !dbg !520
  br i1 %cmp227, label %if.then228, label %if.end253, !dbg !520

if.then228:                                       ; preds = %if.else225
  %type229 = getelementptr inbounds %struct._Chv* %frontJ, i64 0, i32 4, !dbg !521
  %153 = load i32* %type229, align 4, !dbg !521, !tbaa !304
  call void @llvm.dbg.value(metadata !{i32* %nD}, i64 0, metadata !275), !dbg !521
  %154 = load i32* %nD, align 4, !dbg !521, !tbaa !304
  call void @llvm.dbg.value(metadata !{i32* %nU}, i64 0, metadata !281), !dbg !521
  %155 = load i32* %nU, align 4, !dbg !521, !tbaa !304
  %call230 = call i32 @SubMtx_nbytesNeeded(i32 %153, i32 3, i32 %154, i32 %155, i32 %call226) #5, !dbg !521
  call void @llvm.dbg.value(metadata !{i32 %call230}, i64 0, metadata !273), !dbg !521
  br i1 %cmp6, label %if.then232, label %if.end235, !dbg !523

if.then232:                                       ; preds = %if.then228
  call void @llvm.dbg.value(metadata !{i32* %nD}, i64 0, metadata !275), !dbg !524
  %156 = load i32* %nD, align 4, !dbg !524, !tbaa !304
  call void @llvm.dbg.value(metadata !{i32* %nU}, i64 0, metadata !281), !dbg !524
  %157 = load i32* %nU, align 4, !dbg !524, !tbaa !304
  call void @llvm.dbg.value(metadata !{i32* %nent}, i64 0, metadata !276), !dbg !524
  %158 = load i32* %nent, align 4, !dbg !524, !tbaa !304
  %call233 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %msgFile, i8* getelementptr inbounds ([46 x i8]* @.str10, i64 0, i64 0), i32 %4, i32 %0, i32 %156, i32 %157, i32 %158, i32 %call230) #5, !dbg !524
  %call234 = call i32 @fflush(%struct._IO_FILE* %msgFile) #5, !dbg !526
  br label %if.end235, !dbg !527

if.end235:                                        ; preds = %if.then232, %if.then228
  %call236 = call %struct._SubMtx* @SubMtxManager_newObjectOfSizeNbytes(%struct._SubMtxManager* %1, i32 %call230) #5, !dbg !528
  call void @llvm.dbg.value(metadata !{%struct._SubMtx* %call236}, i64 0, metadata !264), !dbg !528
  %159 = load i32* %type229, align 4, !dbg !529, !tbaa !304
  call void @llvm.dbg.value(metadata !{i32* %nD}, i64 0, metadata !275), !dbg !529
  %160 = load i32* %nD, align 4, !dbg !529, !tbaa !304
  call void @llvm.dbg.value(metadata !{i32* %nU}, i64 0, metadata !281), !dbg !529
  %161 = load i32* %nU, align 4, !dbg !529, !tbaa !304
  call void @llvm.dbg.value(metadata !{i32* %nent}, i64 0, metadata !276), !dbg !529
  %162 = load i32* %nent, align 4, !dbg !529, !tbaa !304
  call void @SubMtx_init(%struct._SubMtx* %call236, i32 %159, i32 3, i32 %4, i32 %0, i32 %160, i32 %161, i32 %162) #5, !dbg !529
  call void @SubMtx_sparseColumnsInfo(%struct._SubMtx* %call236, i32* %nrow, i32* %nent, i32** %sizes, i32** %indices, double** %entries) #5, !dbg !530
  call void @llvm.dbg.value(metadata !{i32* %npivot}, i64 0, metadata !279), !dbg !531
  %163 = load i32* %npivot, align 4, !dbg !531, !tbaa !304
  call void @llvm.dbg.value(metadata !{i32** %pivotsizes}, i64 0, metadata !287), !dbg !531
  %164 = load i32** %pivotsizes, align 8, !dbg !531, !tbaa !308
  call void @llvm.dbg.value(metadata !{i32** %sizes}, i64 0, metadata !290), !dbg !531
  %165 = load i32** %sizes, align 8, !dbg !531, !tbaa !308
  call void @llvm.dbg.value(metadata !{i32** %indices}, i64 0, metadata !285), !dbg !531
  %166 = load i32** %indices, align 8, !dbg !531, !tbaa !308
  call void @llvm.dbg.value(metadata !{double** %entries}, i64 0, metadata !265), !dbg !531
  %167 = load double** %entries, align 8, !dbg !531, !tbaa !308
  %call238 = call i32 @Chv_copyBigEntriesToVector(%struct._Chv* %frontJ, i32 %163, i32* %164, i32* %165, i32* %166, double* %167, i32 7, i32 1, double %droptol) #5, !dbg !531
  %p_mtxUJN240 = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 20, !dbg !532
  %168 = load %struct._SubMtx*** %p_mtxUJN240, align 8, !dbg !532, !tbaa !308
  %arrayidx241 = getelementptr inbounds %struct._SubMtx** %168, i64 %idxprom92.pre-phi, !dbg !532
  store %struct._SubMtx* %call236, %struct._SubMtx** %arrayidx241, align 8, !dbg !532, !tbaa !308
  call void @SubMtx_columnIndices(%struct._SubMtx* %call236, i32* %ncol, i32** %colind) #5, !dbg !533
  call void @llvm.dbg.value(metadata !{i32* %ncol}, i64 0, metadata !274), !dbg !534
  %169 = load i32* %ncol, align 4, !dbg !534, !tbaa !304
  call void @llvm.dbg.value(metadata !{i32** %colind}, i64 0, metadata !282), !dbg !534
  %170 = load i32** %colind, align 8, !dbg !534, !tbaa !308
  call void @llvm.dbg.value(metadata !{i32** %colindJ}, i64 0, metadata !283), !dbg !534
  %171 = load i32** %colindJ, align 8, !dbg !534, !tbaa !308
  call void @llvm.dbg.value(metadata !{i32* %nD}, i64 0, metadata !275), !dbg !534
  %172 = load i32* %nD, align 4, !dbg !534, !tbaa !304
  %idx.ext242 = sext i32 %172 to i64, !dbg !534
  %add.ptr243 = getelementptr inbounds i32* %171, i64 %idx.ext242, !dbg !534
  call void @IVcopy(i32 %169, i32* %170, i32* %add.ptr243) #5, !dbg !534
  call void @SubMtx_rowIndices(%struct._SubMtx* %call236, i32* %nrow, i32** %rowind) #5, !dbg !535
  call void @llvm.dbg.value(metadata !{i32* %nrow}, i64 0, metadata !280), !dbg !536
  %173 = load i32* %nrow, align 4, !dbg !536, !tbaa !304
  call void @llvm.dbg.value(metadata !{i32** %rowind}, i64 0, metadata !288), !dbg !536
  %174 = load i32** %rowind, align 8, !dbg !536, !tbaa !308
  call void @llvm.dbg.value(metadata !{i32** %rowindJ}, i64 0, metadata !289), !dbg !536
  %175 = load i32** %rowindJ, align 8, !dbg !536, !tbaa !308
  call void @IVcopy(i32 %173, i32* %174, i32* %175) #5, !dbg !536
  call void @llvm.dbg.value(metadata !{i32* %nent}, i64 0, metadata !276), !dbg !537
  %176 = load i32* %nent, align 4, !dbg !537, !tbaa !304
  %nentU244 = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 9, !dbg !537
  %177 = load i32* %nentU244, align 4, !dbg !537, !tbaa !304
  %add245 = add nsw i32 %177, %176, !dbg !537
  store i32 %add245, i32* %nentU244, align 4, !dbg !537, !tbaa !304
  br i1 %cmp6, label %if.then247, label %if.end253, !dbg !538

if.then247:                                       ; preds = %if.end235
  %178 = call i64 @fwrite(i8* getelementptr inbounds ([15 x i8]* @.str9, i64 0, i64 0), i64 14, i64 1, %struct._IO_FILE* %msgFile), !dbg !539
  %call249 = call i32 @SubMtx_writeForHumanEye(%struct._SubMtx* %call236, %struct._IO_FILE* %msgFile) #5, !dbg !541
  %call250 = call i32 @fflush(%struct._IO_FILE* %msgFile) #5, !dbg !542
  br label %if.end253, !dbg !543

if.end253:                                        ; preds = %if.else225, %if.then247, %if.end235, %if.then195, %if.then219, %if.end217
  %179 = load i32* %symmetryflag, align 4, !dbg !544, !tbaa !304
  %cmp255 = icmp eq i32 %179, 2, !dbg !544
  br i1 %cmp255, label %if.then256, label %return, !dbg !544

if.then256:                                       ; preds = %if.end253
  %180 = load i32* %sparsityflag, align 4, !dbg !545, !tbaa !304
  %cmp258 = icmp eq i32 %180, 0, !dbg !545
  call void @llvm.dbg.value(metadata !{i32* %npivot}, i64 0, metadata !279), !dbg !547
  %181 = load i32* %npivot, align 4, !dbg !547, !tbaa !304
  call void @llvm.dbg.value(metadata !{i32** %pivotsizes}, i64 0, metadata !287), !dbg !547
  %182 = load i32** %pivotsizes, align 8, !dbg !547, !tbaa !308
  br i1 %cmp258, label %if.then259, label %if.else298, !dbg !545

if.then259:                                       ; preds = %if.then256
  %call260 = call i32 @Chv_countEntries(%struct._Chv* %frontJ, i32 %181, i32* %182, i32 4) #5, !dbg !547
  call void @llvm.dbg.value(metadata !{i32 %call260}, i64 0, metadata !276), !dbg !547
  store i32 %call260, i32* %nent, align 4, !dbg !547, !tbaa !304
  %cmp261 = icmp sgt i32 %call260, 0, !dbg !549
  br i1 %cmp261, label %if.then262, label %if.end324, !dbg !549

if.then262:                                       ; preds = %if.then259
  %p_mtxLJJ = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 21, !dbg !550
  %183 = load %struct._SubMtx*** %p_mtxLJJ, align 8, !dbg !550, !tbaa !308
  %arrayidx264 = getelementptr inbounds %struct._SubMtx** %183, i64 %idxprom92.pre-phi, !dbg !550
  %184 = load %struct._SubMtx** %arrayidx264, align 8, !dbg !550, !tbaa !308
  call void @llvm.dbg.value(metadata !{%struct._SubMtx* %184}, i64 0, metadata !264), !dbg !550
  %cmp265 = icmp eq %struct._SubMtx* %184, null, !dbg !552
  br i1 %cmp265, label %if.then266, label %if.end271, !dbg !552

if.then266:                                       ; preds = %if.then262
  %type267 = getelementptr inbounds %struct._Chv* %frontJ, i64 0, i32 4, !dbg !553
  %185 = load i32* %type267, align 4, !dbg !553, !tbaa !304
  call void @llvm.dbg.value(metadata !{i32* %nD}, i64 0, metadata !275), !dbg !553
  %186 = load i32* %nD, align 4, !dbg !553, !tbaa !304
  %call268 = call i32 @SubMtx_nbytesNeeded(i32 %185, i32 5, i32 %186, i32 %186, i32 %call260) #5, !dbg !553
  call void @llvm.dbg.value(metadata !{i32 %call268}, i64 0, metadata !273), !dbg !553
  %call269 = call %struct._SubMtx* @SubMtxManager_newObjectOfSizeNbytes(%struct._SubMtxManager* %1, i32 %call268) #5, !dbg !555
  call void @llvm.dbg.value(metadata !{%struct._SubMtx* %call269}, i64 0, metadata !264), !dbg !555
  %187 = load i32* %type267, align 4, !dbg !556, !tbaa !304
  call void @llvm.dbg.value(metadata !{i32* %nD}, i64 0, metadata !275), !dbg !556
  %188 = load i32* %nD, align 4, !dbg !556, !tbaa !304
  call void @llvm.dbg.value(metadata !{i32* %nent}, i64 0, metadata !276), !dbg !556
  %189 = load i32* %nent, align 4, !dbg !556, !tbaa !304
  call void @SubMtx_init(%struct._SubMtx* %call269, i32 %187, i32 5, i32 %4, i32 %4, i32 %188, i32 %188, i32 %189) #5, !dbg !556
  br label %if.end271, !dbg !557

if.end271:                                        ; preds = %if.then266, %if.then262
  %mtx.4 = phi %struct._SubMtx* [ %call269, %if.then266 ], [ %184, %if.then262 ]
  call void @SubMtx_denseSubrowsInfo(%struct._SubMtx* %mtx.4, i32* %nrow, i32* %nent, i32** %firstlocs, i32** %sizes, double** %entries) #5, !dbg !558
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !269), !dbg !559
  call void @llvm.dbg.value(metadata !{i32* %nD}, i64 0, metadata !275), !dbg !559
  %190 = load i32* %nD, align 4, !dbg !559, !tbaa !304
  %cmp273704 = icmp sgt i32 %190, 0, !dbg !559
  br i1 %cmp273704, label %for.body274.lr.ph, label %for.end281, !dbg !559

for.body274.lr.ph:                                ; preds = %if.end271
  call void @llvm.dbg.value(metadata !{i32** %firstlocs}, i64 0, metadata !284), !dbg !561
  %191 = load i32** %firstlocs, align 8, !dbg !561, !tbaa !308
  call void @llvm.dbg.value(metadata !{i32** %sizes}, i64 0, metadata !290), !dbg !563
  %192 = load i32** %sizes, align 8, !dbg !563, !tbaa !308
  br label %for.body274, !dbg !559

for.body274:                                      ; preds = %for.body274.lr.ph, %for.body274
  %indvars.iv = phi i64 [ 0, %for.body274.lr.ph ], [ %indvars.iv.next, %for.body274 ]
  call void @llvm.dbg.value(metadata !{i32** %firstlocs}, i64 0, metadata !284), !dbg !561
  %arrayidx276 = getelementptr inbounds i32* %191, i64 %indvars.iv, !dbg !561
  store i32 0, i32* %arrayidx276, align 4, !dbg !561, !tbaa !304
  call void @llvm.dbg.value(metadata !{i32** %sizes}, i64 0, metadata !290), !dbg !563
  %arrayidx278 = getelementptr inbounds i32* %192, i64 %indvars.iv, !dbg !563
  %193 = trunc i64 %indvars.iv to i32, !dbg !563
  store i32 %193, i32* %arrayidx278, align 4, !dbg !563, !tbaa !304
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !559
  call void @llvm.dbg.value(metadata !{i32* %nD}, i64 0, metadata !275), !dbg !559
  %194 = load i32* %nD, align 4, !dbg !559, !tbaa !304
  %195 = trunc i64 %indvars.iv.next to i32, !dbg !559
  %cmp273 = icmp slt i32 %195, %194, !dbg !559
  br i1 %cmp273, label %for.body274, label %for.end281, !dbg !559

for.end281:                                       ; preds = %for.body274, %if.end271
  call void @llvm.dbg.value(metadata !{i32* %npivot}, i64 0, metadata !279), !dbg !564
  %196 = load i32* %npivot, align 4, !dbg !564, !tbaa !304
  call void @llvm.dbg.value(metadata !{i32** %pivotsizes}, i64 0, metadata !287), !dbg !564
  %197 = load i32** %pivotsizes, align 8, !dbg !564, !tbaa !308
  call void @llvm.dbg.value(metadata !{i32* %nent}, i64 0, metadata !276), !dbg !564
  %198 = load i32* %nent, align 4, !dbg !564, !tbaa !304
  call void @llvm.dbg.value(metadata !{double** %entries}, i64 0, metadata !265), !dbg !564
  %199 = load double** %entries, align 8, !dbg !564, !tbaa !308
  %call282 = call i32 @Chv_copyEntriesToVector(%struct._Chv* %frontJ, i32 %196, i32* %197, i32 %198, double* %199, i32 4, i32 0) #5, !dbg !564
  %200 = load %struct._SubMtx*** %p_mtxLJJ, align 8, !dbg !565, !tbaa !308
  %arrayidx285 = getelementptr inbounds %struct._SubMtx** %200, i64 %idxprom92.pre-phi, !dbg !565
  store %struct._SubMtx* %mtx.4, %struct._SubMtx** %arrayidx285, align 8, !dbg !565, !tbaa !308
  call void @SubMtx_columnIndices(%struct._SubMtx* %mtx.4, i32* %ncol, i32** %colind) #5, !dbg !566
  call void @llvm.dbg.value(metadata !{i32* %ncol}, i64 0, metadata !274), !dbg !567
  %201 = load i32* %ncol, align 4, !dbg !567, !tbaa !304
  call void @llvm.dbg.value(metadata !{i32** %colind}, i64 0, metadata !282), !dbg !567
  %202 = load i32** %colind, align 8, !dbg !567, !tbaa !308
  call void @llvm.dbg.value(metadata !{i32** %colindJ}, i64 0, metadata !283), !dbg !567
  %203 = load i32** %colindJ, align 8, !dbg !567, !tbaa !308
  call void @IVcopy(i32 %201, i32* %202, i32* %203) #5, !dbg !567
  call void @SubMtx_rowIndices(%struct._SubMtx* %mtx.4, i32* %nrow, i32** %rowind) #5, !dbg !568
  call void @llvm.dbg.value(metadata !{i32* %nrow}, i64 0, metadata !280), !dbg !569
  %204 = load i32* %nrow, align 4, !dbg !569, !tbaa !304
  call void @llvm.dbg.value(metadata !{i32** %rowind}, i64 0, metadata !288), !dbg !569
  %205 = load i32** %rowind, align 8, !dbg !569, !tbaa !308
  call void @llvm.dbg.value(metadata !{i32** %rowindJ}, i64 0, metadata !289), !dbg !569
  %206 = load i32** %rowindJ, align 8, !dbg !569, !tbaa !308
  call void @IVcopy(i32 %204, i32* %205, i32* %206) #5, !dbg !569
  %207 = load i32* %pivotingflag10, align 4, !dbg !570, !tbaa !304
  %cmp287 = icmp eq i32 %207, 1, !dbg !570
  br i1 %cmp287, label %if.then288, label %if.end290, !dbg !570

if.then288:                                       ; preds = %for.end281
  call void @llvm.dbg.value(metadata !{i32* %nent}, i64 0, metadata !276), !dbg !571
  %208 = load i32* %nent, align 4, !dbg !571, !tbaa !304
  %nentL = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 8, !dbg !571
  %209 = load i32* %nentL, align 4, !dbg !571, !tbaa !304
  %add289 = add nsw i32 %209, %208, !dbg !571
  store i32 %add289, i32* %nentL, align 4, !dbg !571, !tbaa !304
  br label %if.end290, !dbg !573

if.end290:                                        ; preds = %if.then288, %for.end281
  br i1 %cmp6, label %if.then292, label %if.end324, !dbg !574

if.then292:                                       ; preds = %if.end290
  %210 = call i64 @fwrite(i8* getelementptr inbounds ([14 x i8]* @.str11, i64 0, i64 0), i64 13, i64 1, %struct._IO_FILE* %msgFile), !dbg !575
  %call294 = call i32 @SubMtx_writeForHumanEye(%struct._SubMtx* %mtx.4, %struct._IO_FILE* %msgFile) #5, !dbg !577
  %call295 = call i32 @fflush(%struct._IO_FILE* %msgFile) #5, !dbg !578
  br label %if.end324, !dbg !579

if.else298:                                       ; preds = %if.then256
  %call299 = call i32 @Chv_countBigEntries(%struct._Chv* %frontJ, i32 %181, i32* %182, i32 4, double %droptol) #5, !dbg !580
  call void @llvm.dbg.value(metadata !{i32 %call299}, i64 0, metadata !276), !dbg !580
  store i32 %call299, i32* %nent, align 4, !dbg !580, !tbaa !304
  %cmp300 = icmp sgt i32 %call299, 0, !dbg !582
  br i1 %cmp300, label %if.then301, label %if.end324, !dbg !582

if.then301:                                       ; preds = %if.else298
  %type302 = getelementptr inbounds %struct._Chv* %frontJ, i64 0, i32 4, !dbg !583
  %211 = load i32* %type302, align 4, !dbg !583, !tbaa !304
  call void @llvm.dbg.value(metadata !{i32* %nD}, i64 0, metadata !275), !dbg !583
  %212 = load i32* %nD, align 4, !dbg !583, !tbaa !304
  %call303 = call i32 @SubMtx_nbytesNeeded(i32 %211, i32 2, i32 %212, i32 %212, i32 %call299) #5, !dbg !583
  call void @llvm.dbg.value(metadata !{i32 %call303}, i64 0, metadata !273), !dbg !583
  br i1 %cmp6, label %if.then305, label %if.end308, !dbg !585

if.then305:                                       ; preds = %if.then301
  call void @llvm.dbg.value(metadata !{i32* %nD}, i64 0, metadata !275), !dbg !586
  %213 = load i32* %nD, align 4, !dbg !586, !tbaa !304
  call void @llvm.dbg.value(metadata !{i32* %nent}, i64 0, metadata !276), !dbg !586
  %214 = load i32* %nent, align 4, !dbg !586, !tbaa !304
  %call306 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %msgFile, i8* getelementptr inbounds ([39 x i8]* @.str12, i64 0, i64 0), i32 %4, i32 %4, i32 %213, i32 %214, i32 %call303) #5, !dbg !586
  %call307 = call i32 @fflush(%struct._IO_FILE* %msgFile) #5, !dbg !588
  br label %if.end308, !dbg !589

if.end308:                                        ; preds = %if.then305, %if.then301
  %call309 = call %struct._SubMtx* @SubMtxManager_newObjectOfSizeNbytes(%struct._SubMtxManager* %1, i32 %call303) #5, !dbg !590
  call void @llvm.dbg.value(metadata !{%struct._SubMtx* %call309}, i64 0, metadata !264), !dbg !590
  %215 = load i32* %type302, align 4, !dbg !591, !tbaa !304
  call void @llvm.dbg.value(metadata !{i32* %nD}, i64 0, metadata !275), !dbg !591
  %216 = load i32* %nD, align 4, !dbg !591, !tbaa !304
  call void @llvm.dbg.value(metadata !{i32* %nent}, i64 0, metadata !276), !dbg !591
  %217 = load i32* %nent, align 4, !dbg !591, !tbaa !304
  call void @SubMtx_init(%struct._SubMtx* %call309, i32 %215, i32 2, i32 %4, i32 %4, i32 %216, i32 %216, i32 %217) #5, !dbg !591
  call void @SubMtx_sparseRowsInfo(%struct._SubMtx* %call309, i32* %nrow, i32* %nent, i32** %sizes, i32** %indices, double** %entries) #5, !dbg !592
  call void @llvm.dbg.value(metadata !{i32* %npivot}, i64 0, metadata !279), !dbg !593
  %218 = load i32* %npivot, align 4, !dbg !593, !tbaa !304
  call void @llvm.dbg.value(metadata !{i32** %pivotsizes}, i64 0, metadata !287), !dbg !593
  %219 = load i32** %pivotsizes, align 8, !dbg !593, !tbaa !308
  call void @llvm.dbg.value(metadata !{i32** %sizes}, i64 0, metadata !290), !dbg !593
  %220 = load i32** %sizes, align 8, !dbg !593, !tbaa !308
  call void @llvm.dbg.value(metadata !{i32** %indices}, i64 0, metadata !285), !dbg !593
  %221 = load i32** %indices, align 8, !dbg !593, !tbaa !308
  call void @llvm.dbg.value(metadata !{double** %entries}, i64 0, metadata !265), !dbg !593
  %222 = load double** %entries, align 8, !dbg !593, !tbaa !308
  %call311 = call i32 @Chv_copyBigEntriesToVector(%struct._Chv* %frontJ, i32 %218, i32* %219, i32* %220, i32* %221, double* %222, i32 4, i32 0, double %droptol) #5, !dbg !593
  %p_mtxLJJ313 = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 21, !dbg !594
  %223 = load %struct._SubMtx*** %p_mtxLJJ313, align 8, !dbg !594, !tbaa !308
  %arrayidx314 = getelementptr inbounds %struct._SubMtx** %223, i64 %idxprom92.pre-phi, !dbg !594
  store %struct._SubMtx* %call309, %struct._SubMtx** %arrayidx314, align 8, !dbg !594, !tbaa !308
  call void @SubMtx_columnIndices(%struct._SubMtx* %call309, i32* %ncol, i32** %colind) #5, !dbg !595
  call void @llvm.dbg.value(metadata !{i32* %ncol}, i64 0, metadata !274), !dbg !596
  %224 = load i32* %ncol, align 4, !dbg !596, !tbaa !304
  call void @llvm.dbg.value(metadata !{i32** %colind}, i64 0, metadata !282), !dbg !596
  %225 = load i32** %colind, align 8, !dbg !596, !tbaa !308
  call void @llvm.dbg.value(metadata !{i32** %colindJ}, i64 0, metadata !283), !dbg !596
  %226 = load i32** %colindJ, align 8, !dbg !596, !tbaa !308
  call void @IVcopy(i32 %224, i32* %225, i32* %226) #5, !dbg !596
  call void @SubMtx_rowIndices(%struct._SubMtx* %call309, i32* %nrow, i32** %rowind) #5, !dbg !597
  call void @llvm.dbg.value(metadata !{i32* %nrow}, i64 0, metadata !280), !dbg !598
  %227 = load i32* %nrow, align 4, !dbg !598, !tbaa !304
  call void @llvm.dbg.value(metadata !{i32** %rowind}, i64 0, metadata !288), !dbg !598
  %228 = load i32** %rowind, align 8, !dbg !598, !tbaa !308
  call void @llvm.dbg.value(metadata !{i32** %rowindJ}, i64 0, metadata !289), !dbg !598
  %229 = load i32** %rowindJ, align 8, !dbg !598, !tbaa !308
  call void @IVcopy(i32 %227, i32* %228, i32* %229) #5, !dbg !598
  call void @llvm.dbg.value(metadata !{i32* %nent}, i64 0, metadata !276), !dbg !599
  %230 = load i32* %nent, align 4, !dbg !599, !tbaa !304
  %nentL315 = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 8, !dbg !599
  %231 = load i32* %nentL315, align 4, !dbg !599, !tbaa !304
  %add316 = add nsw i32 %231, %230, !dbg !599
  store i32 %add316, i32* %nentL315, align 4, !dbg !599, !tbaa !304
  br i1 %cmp6, label %if.then318, label %if.end324, !dbg !600

if.then318:                                       ; preds = %if.end308
  %232 = call i64 @fwrite(i8* getelementptr inbounds ([14 x i8]* @.str11, i64 0, i64 0), i64 13, i64 1, %struct._IO_FILE* %msgFile), !dbg !601
  %call320 = call i32 @SubMtx_writeForHumanEye(%struct._SubMtx* %call309, %struct._IO_FILE* %msgFile) #5, !dbg !603
  %call321 = call i32 @fflush(%struct._IO_FILE* %msgFile) #5, !dbg !604
  br label %if.end324, !dbg !605

if.end324:                                        ; preds = %if.else298, %if.then318, %if.end308, %if.then259, %if.then292, %if.end290
  %233 = load i32* %sparsityflag, align 4, !dbg !606, !tbaa !304
  %cmp326 = icmp eq i32 %233, 0, !dbg !606
  call void @llvm.dbg.value(metadata !{i32* %npivot}, i64 0, metadata !279), !dbg !607
  %234 = load i32* %npivot, align 4, !dbg !607, !tbaa !304
  call void @llvm.dbg.value(metadata !{i32** %pivotsizes}, i64 0, metadata !287), !dbg !607
  %235 = load i32** %pivotsizes, align 8, !dbg !607, !tbaa !308
  br i1 %cmp326, label %if.then327, label %if.else359, !dbg !606

if.then327:                                       ; preds = %if.end324
  %call328 = call i32 @Chv_countEntries(%struct._Chv* %frontJ, i32 %234, i32* %235, i32 5) #5, !dbg !607
  call void @llvm.dbg.value(metadata !{i32 %call328}, i64 0, metadata !276), !dbg !607
  store i32 %call328, i32* %nent, align 4, !dbg !607, !tbaa !304
  %cmp329 = icmp sgt i32 %call328, 0, !dbg !609
  br i1 %cmp329, label %if.then330, label %return, !dbg !609

if.then330:                                       ; preds = %if.then327
  %p_mtxLNJ = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 22, !dbg !610
  %236 = load %struct._SubMtx*** %p_mtxLNJ, align 8, !dbg !610, !tbaa !308
  %arrayidx332 = getelementptr inbounds %struct._SubMtx** %236, i64 %idxprom92.pre-phi, !dbg !610
  %237 = load %struct._SubMtx** %arrayidx332, align 8, !dbg !610, !tbaa !308
  call void @llvm.dbg.value(metadata !{%struct._SubMtx* %237}, i64 0, metadata !264), !dbg !610
  %cmp333 = icmp eq %struct._SubMtx* %237, null, !dbg !612
  br i1 %cmp333, label %if.then334, label %if.end339, !dbg !612

if.then334:                                       ; preds = %if.then330
  %type335 = getelementptr inbounds %struct._Chv* %frontJ, i64 0, i32 4, !dbg !613
  %238 = load i32* %type335, align 4, !dbg !613, !tbaa !304
  call void @llvm.dbg.value(metadata !{i32* %nL}, i64 0, metadata !278), !dbg !613
  %239 = load i32* %nL, align 4, !dbg !613, !tbaa !304
  call void @llvm.dbg.value(metadata !{i32* %nD}, i64 0, metadata !275), !dbg !613
  %240 = load i32* %nD, align 4, !dbg !613, !tbaa !304
  %call336 = call i32 @SubMtx_nbytesNeeded(i32 %238, i32 0, i32 %239, i32 %240, i32 %call328) #5, !dbg !613
  call void @llvm.dbg.value(metadata !{i32 %call336}, i64 0, metadata !273), !dbg !613
  %call337 = call %struct._SubMtx* @SubMtxManager_newObjectOfSizeNbytes(%struct._SubMtxManager* %1, i32 %call336) #5, !dbg !615
  call void @llvm.dbg.value(metadata !{%struct._SubMtx* %call337}, i64 0, metadata !264), !dbg !615
  %241 = load i32* %type335, align 4, !dbg !616, !tbaa !304
  call void @llvm.dbg.value(metadata !{i32* %nL}, i64 0, metadata !278), !dbg !616
  %242 = load i32* %nL, align 4, !dbg !616, !tbaa !304
  call void @llvm.dbg.value(metadata !{i32* %nD}, i64 0, metadata !275), !dbg !616
  %243 = load i32* %nD, align 4, !dbg !616, !tbaa !304
  call void @llvm.dbg.value(metadata !{i32* %nent}, i64 0, metadata !276), !dbg !616
  %244 = load i32* %nent, align 4, !dbg !616, !tbaa !304
  call void @SubMtx_init(%struct._SubMtx* %call337, i32 %241, i32 0, i32 %0, i32 %4, i32 %242, i32 %243, i32 %244) #5, !dbg !616
  br label %if.end339, !dbg !617

if.end339:                                        ; preds = %if.then334, %if.then330
  %mtx.5 = phi %struct._SubMtx* [ %call337, %if.then334 ], [ %237, %if.then330 ]
  call void @SubMtx_denseInfo(%struct._SubMtx* %mtx.5, i32* %nrow, i32* %ncol, i32* %inc1, i32* %inc2, double** %entries) #5, !dbg !618
  call void @llvm.dbg.value(metadata !{i32* %npivot}, i64 0, metadata !279), !dbg !619
  %245 = load i32* %npivot, align 4, !dbg !619, !tbaa !304
  call void @llvm.dbg.value(metadata !{i32** %pivotsizes}, i64 0, metadata !287), !dbg !619
  %246 = load i32** %pivotsizes, align 8, !dbg !619, !tbaa !308
  call void @llvm.dbg.value(metadata !{i32* %nent}, i64 0, metadata !276), !dbg !619
  %247 = load i32* %nent, align 4, !dbg !619, !tbaa !304
  call void @llvm.dbg.value(metadata !{double** %entries}, i64 0, metadata !265), !dbg !619
  %248 = load double** %entries, align 8, !dbg !619, !tbaa !308
  %call340 = call i32 @Chv_copyEntriesToVector(%struct._Chv* %frontJ, i32 %245, i32* %246, i32 %247, double* %248, i32 5, i32 0) #5, !dbg !619
  %249 = load %struct._SubMtx*** %p_mtxLNJ, align 8, !dbg !620, !tbaa !308
  %arrayidx343 = getelementptr inbounds %struct._SubMtx** %249, i64 %idxprom92.pre-phi, !dbg !620
  store %struct._SubMtx* %mtx.5, %struct._SubMtx** %arrayidx343, align 8, !dbg !620, !tbaa !308
  call void @SubMtx_columnIndices(%struct._SubMtx* %mtx.5, i32* %ncol, i32** %colind) #5, !dbg !621
  call void @llvm.dbg.value(metadata !{i32* %ncol}, i64 0, metadata !274), !dbg !622
  %250 = load i32* %ncol, align 4, !dbg !622, !tbaa !304
  call void @llvm.dbg.value(metadata !{i32** %colind}, i64 0, metadata !282), !dbg !622
  %251 = load i32** %colind, align 8, !dbg !622, !tbaa !308
  call void @llvm.dbg.value(metadata !{i32** %colindJ}, i64 0, metadata !283), !dbg !622
  %252 = load i32** %colindJ, align 8, !dbg !622, !tbaa !308
  call void @IVcopy(i32 %250, i32* %251, i32* %252) #5, !dbg !622
  call void @SubMtx_rowIndices(%struct._SubMtx* %mtx.5, i32* %nrow, i32** %rowind) #5, !dbg !623
  call void @llvm.dbg.value(metadata !{i32* %nrow}, i64 0, metadata !280), !dbg !624
  %253 = load i32* %nrow, align 4, !dbg !624, !tbaa !304
  call void @llvm.dbg.value(metadata !{i32** %rowind}, i64 0, metadata !288), !dbg !624
  %254 = load i32** %rowind, align 8, !dbg !624, !tbaa !308
  call void @llvm.dbg.value(metadata !{i32** %rowindJ}, i64 0, metadata !289), !dbg !624
  %255 = load i32** %rowindJ, align 8, !dbg !624, !tbaa !308
  call void @llvm.dbg.value(metadata !{i32* %nD}, i64 0, metadata !275), !dbg !624
  %256 = load i32* %nD, align 4, !dbg !624, !tbaa !304
  %idx.ext344 = sext i32 %256 to i64, !dbg !624
  %add.ptr345 = getelementptr inbounds i32* %255, i64 %idx.ext344, !dbg !624
  call void @IVcopy(i32 %253, i32* %254, i32* %add.ptr345) #5, !dbg !624
  %257 = load i32* %pivotingflag10, align 4, !dbg !625, !tbaa !304
  %cmp347 = icmp eq i32 %257, 1, !dbg !625
  br i1 %cmp347, label %if.then348, label %if.end351, !dbg !625

if.then348:                                       ; preds = %if.end339
  call void @llvm.dbg.value(metadata !{i32* %nent}, i64 0, metadata !276), !dbg !626
  %258 = load i32* %nent, align 4, !dbg !626, !tbaa !304
  %nentL349 = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 8, !dbg !626
  %259 = load i32* %nentL349, align 4, !dbg !626, !tbaa !304
  %add350 = add nsw i32 %259, %258, !dbg !626
  store i32 %add350, i32* %nentL349, align 4, !dbg !626, !tbaa !304
  br label %if.end351, !dbg !628

if.end351:                                        ; preds = %if.then348, %if.end339
  br i1 %cmp6, label %if.then353, label %return, !dbg !629

if.then353:                                       ; preds = %if.end351
  %260 = call i64 @fwrite(i8* getelementptr inbounds ([14 x i8]* @.str13, i64 0, i64 0), i64 13, i64 1, %struct._IO_FILE* %msgFile), !dbg !630
  %call355 = call i32 @SubMtx_writeForHumanEye(%struct._SubMtx* %mtx.5, %struct._IO_FILE* %msgFile) #5, !dbg !632
  %call356 = call i32 @fflush(%struct._IO_FILE* %msgFile) #5, !dbg !633
  br label %return, !dbg !634

if.else359:                                       ; preds = %if.end324
  %call360 = call i32 @Chv_countBigEntries(%struct._Chv* %frontJ, i32 %234, i32* %235, i32 5, double %droptol) #5, !dbg !635
  call void @llvm.dbg.value(metadata !{i32 %call360}, i64 0, metadata !276), !dbg !635
  store i32 %call360, i32* %nent, align 4, !dbg !635, !tbaa !304
  %cmp361 = icmp sgt i32 %call360, 0, !dbg !637
  br i1 %cmp361, label %if.then362, label %return, !dbg !637

if.then362:                                       ; preds = %if.else359
  %type363 = getelementptr inbounds %struct._Chv* %frontJ, i64 0, i32 4, !dbg !638
  %261 = load i32* %type363, align 4, !dbg !638, !tbaa !304
  call void @llvm.dbg.value(metadata !{i32* %nL}, i64 0, metadata !278), !dbg !638
  %262 = load i32* %nL, align 4, !dbg !638, !tbaa !304
  call void @llvm.dbg.value(metadata !{i32* %nD}, i64 0, metadata !275), !dbg !638
  %263 = load i32* %nD, align 4, !dbg !638, !tbaa !304
  %call364 = call i32 @SubMtx_nbytesNeeded(i32 %261, i32 2, i32 %262, i32 %263, i32 %call360) #5, !dbg !638
  call void @llvm.dbg.value(metadata !{i32 %call364}, i64 0, metadata !273), !dbg !638
  br i1 %cmp6, label %if.then366, label %if.end369, !dbg !640

if.then366:                                       ; preds = %if.then362
  call void @llvm.dbg.value(metadata !{i32* %nL}, i64 0, metadata !278), !dbg !641
  %264 = load i32* %nL, align 4, !dbg !641, !tbaa !304
  call void @llvm.dbg.value(metadata !{i32* %nD}, i64 0, metadata !275), !dbg !641
  %265 = load i32* %nD, align 4, !dbg !641, !tbaa !304
  call void @llvm.dbg.value(metadata !{i32* %nent}, i64 0, metadata !276), !dbg !641
  %266 = load i32* %nent, align 4, !dbg !641, !tbaa !304
  %call367 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %msgFile, i8* getelementptr inbounds ([46 x i8]* @.str14, i64 0, i64 0), i32 %0, i32 %4, i32 %264, i32 %265, i32 %266, i32 %call364) #5, !dbg !641
  %call368 = call i32 @fflush(%struct._IO_FILE* %msgFile) #5, !dbg !643
  br label %if.end369, !dbg !644

if.end369:                                        ; preds = %if.then366, %if.then362
  %call370 = call %struct._SubMtx* @SubMtxManager_newObjectOfSizeNbytes(%struct._SubMtxManager* %1, i32 %call364) #5, !dbg !645
  call void @llvm.dbg.value(metadata !{%struct._SubMtx* %call370}, i64 0, metadata !264), !dbg !645
  %267 = load i32* %type363, align 4, !dbg !646, !tbaa !304
  call void @llvm.dbg.value(metadata !{i32* %nL}, i64 0, metadata !278), !dbg !646
  %268 = load i32* %nL, align 4, !dbg !646, !tbaa !304
  call void @llvm.dbg.value(metadata !{i32* %nD}, i64 0, metadata !275), !dbg !646
  %269 = load i32* %nD, align 4, !dbg !646, !tbaa !304
  call void @llvm.dbg.value(metadata !{i32* %nent}, i64 0, metadata !276), !dbg !646
  %270 = load i32* %nent, align 4, !dbg !646, !tbaa !304
  call void @SubMtx_init(%struct._SubMtx* %call370, i32 %267, i32 2, i32 %0, i32 %4, i32 %268, i32 %269, i32 %270) #5, !dbg !646
  call void @SubMtx_sparseRowsInfo(%struct._SubMtx* %call370, i32* %nrow, i32* %nent, i32** %sizes, i32** %indices, double** %entries) #5, !dbg !647
  call void @llvm.dbg.value(metadata !{i32* %npivot}, i64 0, metadata !279), !dbg !648
  %271 = load i32* %npivot, align 4, !dbg !648, !tbaa !304
  call void @llvm.dbg.value(metadata !{i32** %pivotsizes}, i64 0, metadata !287), !dbg !648
  %272 = load i32** %pivotsizes, align 8, !dbg !648, !tbaa !308
  call void @llvm.dbg.value(metadata !{i32** %sizes}, i64 0, metadata !290), !dbg !648
  %273 = load i32** %sizes, align 8, !dbg !648, !tbaa !308
  call void @llvm.dbg.value(metadata !{i32** %indices}, i64 0, metadata !285), !dbg !648
  %274 = load i32** %indices, align 8, !dbg !648, !tbaa !308
  call void @llvm.dbg.value(metadata !{double** %entries}, i64 0, metadata !265), !dbg !648
  %275 = load double** %entries, align 8, !dbg !648, !tbaa !308
  %call372 = call i32 @Chv_copyBigEntriesToVector(%struct._Chv* %frontJ, i32 %271, i32* %272, i32* %273, i32* %274, double* %275, i32 5, i32 0, double %droptol) #5, !dbg !648
  %p_mtxLNJ374 = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 22, !dbg !649
  %276 = load %struct._SubMtx*** %p_mtxLNJ374, align 8, !dbg !649, !tbaa !308
  %arrayidx375 = getelementptr inbounds %struct._SubMtx** %276, i64 %idxprom92.pre-phi, !dbg !649
  store %struct._SubMtx* %call370, %struct._SubMtx** %arrayidx375, align 8, !dbg !649, !tbaa !308
  call void @SubMtx_columnIndices(%struct._SubMtx* %call370, i32* %ncol, i32** %colind) #5, !dbg !650
  call void @llvm.dbg.value(metadata !{i32* %ncol}, i64 0, metadata !274), !dbg !651
  %277 = load i32* %ncol, align 4, !dbg !651, !tbaa !304
  call void @llvm.dbg.value(metadata !{i32** %colind}, i64 0, metadata !282), !dbg !651
  %278 = load i32** %colind, align 8, !dbg !651, !tbaa !308
  call void @llvm.dbg.value(metadata !{i32** %colindJ}, i64 0, metadata !283), !dbg !651
  %279 = load i32** %colindJ, align 8, !dbg !651, !tbaa !308
  call void @IVcopy(i32 %277, i32* %278, i32* %279) #5, !dbg !651
  call void @SubMtx_rowIndices(%struct._SubMtx* %call370, i32* %nrow, i32** %rowind) #5, !dbg !652
  call void @llvm.dbg.value(metadata !{i32* %nrow}, i64 0, metadata !280), !dbg !653
  %280 = load i32* %nrow, align 4, !dbg !653, !tbaa !304
  call void @llvm.dbg.value(metadata !{i32** %rowind}, i64 0, metadata !288), !dbg !653
  %281 = load i32** %rowind, align 8, !dbg !653, !tbaa !308
  call void @llvm.dbg.value(metadata !{i32** %rowindJ}, i64 0, metadata !289), !dbg !653
  %282 = load i32** %rowindJ, align 8, !dbg !653, !tbaa !308
  call void @llvm.dbg.value(metadata !{i32* %nD}, i64 0, metadata !275), !dbg !653
  %283 = load i32* %nD, align 4, !dbg !653, !tbaa !304
  %idx.ext376 = sext i32 %283 to i64, !dbg !653
  %add.ptr377 = getelementptr inbounds i32* %282, i64 %idx.ext376, !dbg !653
  call void @IVcopy(i32 %280, i32* %281, i32* %add.ptr377) #5, !dbg !653
  call void @llvm.dbg.value(metadata !{i32* %nent}, i64 0, metadata !276), !dbg !654
  %284 = load i32* %nent, align 4, !dbg !654, !tbaa !304
  %nentL378 = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 8, !dbg !654
  %285 = load i32* %nentL378, align 4, !dbg !654, !tbaa !304
  %add379 = add nsw i32 %285, %284, !dbg !654
  store i32 %add379, i32* %nentL378, align 4, !dbg !654, !tbaa !304
  br i1 %cmp6, label %if.then381, label %return, !dbg !655

if.then381:                                       ; preds = %if.end369
  %286 = call i64 @fwrite(i8* getelementptr inbounds ([14 x i8]* @.str13, i64 0, i64 0), i64 13, i64 1, %struct._IO_FILE* %msgFile), !dbg !656
  %call383 = call i32 @SubMtx_writeForHumanEye(%struct._SubMtx* %call370, %struct._IO_FILE* %msgFile) #5, !dbg !658
  %call384 = call i32 @fflush(%struct._IO_FILE* %msgFile) #5, !dbg !659
  br label %return, !dbg !660

return:                                           ; preds = %if.end253, %if.else359, %if.then381, %if.end369, %if.then327, %if.then353, %if.end351, %if.end46
  ret void, !dbg !661
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

; Function Attrs: optsize
declare void @IV_sizeAndEntries(%struct._IV*, i32*, i32**) #2

; Function Attrs: optsize
declare void @Chv_dimensions(%struct._Chv*, i32*, i32*, i32*) #2

; Function Attrs: optsize
declare void @Chv_columnIndices(%struct._Chv*, i32*, i32**) #2

; Function Attrs: optsize
declare void @Chv_rowIndices(%struct._Chv*, i32*, i32**) #2

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #3

; Function Attrs: nounwind optsize
declare i32 @fflush(%struct._IO_FILE* nocapture) #3

; Function Attrs: optsize
declare void @Lock_lock(%struct._Lock*) #2

; Function Attrs: optsize
declare void @FrontMtx_setFrontSize(%struct._FrontMtx*, i32, i32) #2

; Function Attrs: optsize
declare void @IVL_setList(%struct._IVL*, i32, i32, i32*) #2

; Function Attrs: optsize
declare void @Lock_unlock(%struct._Lock*) #2

; Function Attrs: optsize
declare i32 @Chv_countEntries(%struct._Chv*, i32, i32*, i32) #2

; Function Attrs: optsize
declare i32 @SubMtx_nbytesNeeded(i32, i32, i32, i32, i32) #2

; Function Attrs: optsize
declare %struct._SubMtx* @SubMtxManager_newObjectOfSizeNbytes(%struct._SubMtxManager*, i32) #2

; Function Attrs: optsize
declare void @SubMtx_init(%struct._SubMtx*, i32, i32, i32, i32, i32, i32, i32) #2

; Function Attrs: optsize
declare void @SubMtx_blockDiagonalInfo(%struct._SubMtx*, i32*, i32*, i32**, double**) #2

; Function Attrs: optsize
declare void @IVzero(i32, i32*) #2

; Function Attrs: optsize
declare void @IVcopy(i32, i32*, i32*) #2

; Function Attrs: optsize
declare i32 @Chv_copyEntriesToVector(%struct._Chv*, i32, i32*, i32, double*, i32, i32) #2

; Function Attrs: optsize
declare i32 @SubMtx_writeForHumanEye(%struct._SubMtx*, %struct._IO_FILE*) #2

; Function Attrs: optsize
declare void @SubMtx_diagonalInfo(%struct._SubMtx*, i32*, double**) #2

; Function Attrs: optsize
declare void @DVfprintf(%struct._IO_FILE*, i32, double*) #2

; Function Attrs: optsize
declare void @SubMtx_columnIndices(%struct._SubMtx*, i32*, i32**) #2

; Function Attrs: optsize
declare void @SubMtx_rowIndices(%struct._SubMtx*, i32*, i32**) #2

; Function Attrs: optsize
declare void @SubMtx_denseSubcolumnsInfo(%struct._SubMtx*, i32*, i32*, i32**, i32**, double**) #2

; Function Attrs: optsize
declare i32 @Chv_countBigEntries(%struct._Chv*, i32, i32*, i32, double) #2

; Function Attrs: optsize
declare void @SubMtx_sparseColumnsInfo(%struct._SubMtx*, i32*, i32*, i32**, i32**, double**) #2

; Function Attrs: optsize
declare i32 @Chv_copyBigEntriesToVector(%struct._Chv*, i32, i32*, i32*, i32*, double*, i32, i32, double) #2

; Function Attrs: optsize
declare void @SubMtx_denseInfo(%struct._SubMtx*, i32*, i32*, i32*, i32*, double**) #2

; Function Attrs: optsize
declare void @SubMtx_denseSubrowsInfo(%struct._SubMtx*, i32*, i32*, i32**, i32**, double**) #2

; Function Attrs: optsize
declare void @SubMtx_sparseRowsInfo(%struct._SubMtx*, i32*, i32*, i32**, i32**, double**) #2

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #1

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #4

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind optsize }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_storeFront.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_storeFront.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"FrontMtx_storeFront", metadata !"FrontMtx_storeFront", metadata !"", i32 18, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._FrontMtx*, %struct._Chv*, %struct._IV*, double, i32, %struct._IO_FILE*)* @FrontMtx_storeFront, null, null, metadata !257, i32 25} ; [ DW_TAG_subprogram ] [line 18] [def] [scope 25] [FrontMtx_storeFront]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_storeFront.c]
!6 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{null, metadata !8, metadata !183, metadata !46, metadata !101, metadata !14, metadata !201}
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
!183 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !184} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from Chv]
!184 = metadata !{i32 786454, metadata !1, null, metadata !"Chv", i32 30, i64 0, i64 0, i64 0, i32 0, metadata !185} ; [ DW_TAG_typedef ] [Chv] [line 30, size 0, align 0, offset 0] [from _Chv]
!185 = metadata !{i32 786451, metadata !186, null, metadata !"_Chv", i32 31, i64 640, i64 64, i32 0, i32 0, null, metadata !187, i32 0, null, null} ; [ DW_TAG_structure_type ] [_Chv] [line 31, size 640, align 64, offset 0] [from ]
!186 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/../../Chv/Chv.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!187 = metadata !{metadata !188, metadata !189, metadata !190, metadata !191, metadata !192, metadata !193, metadata !194, metadata !195, metadata !196, metadata !197, metadata !198}
!188 = metadata !{i32 786445, metadata !186, metadata !185, metadata !"id", i32 32, i64 32, i64 32, i64 0, i32 0, metadata !14} ; [ DW_TAG_member ] [id] [line 32, size 32, align 32, offset 0] [from int]
!189 = metadata !{i32 786445, metadata !186, metadata !185, metadata !"nD", i32 33, i64 32, i64 32, i64 32, i32 0, metadata !14} ; [ DW_TAG_member ] [nD] [line 33, size 32, align 32, offset 32] [from int]
!190 = metadata !{i32 786445, metadata !186, metadata !185, metadata !"nL", i32 34, i64 32, i64 32, i64 64, i32 0, metadata !14} ; [ DW_TAG_member ] [nL] [line 34, size 32, align 32, offset 64] [from int]
!191 = metadata !{i32 786445, metadata !186, metadata !185, metadata !"nU", i32 35, i64 32, i64 32, i64 96, i32 0, metadata !14} ; [ DW_TAG_member ] [nU] [line 35, size 32, align 32, offset 96] [from int]
!192 = metadata !{i32 786445, metadata !186, metadata !185, metadata !"type", i32 36, i64 32, i64 32, i64 128, i32 0, metadata !14} ; [ DW_TAG_member ] [type] [line 36, size 32, align 32, offset 128] [from int]
!193 = metadata !{i32 786445, metadata !186, metadata !185, metadata !"symflag", i32 37, i64 32, i64 32, i64 160, i32 0, metadata !14} ; [ DW_TAG_member ] [symflag] [line 37, size 32, align 32, offset 160] [from int]
!194 = metadata !{i32 786445, metadata !186, metadata !185, metadata !"rowind", i32 38, i64 64, i64 64, i64 192, i32 0, metadata !33} ; [ DW_TAG_member ] [rowind] [line 38, size 64, align 64, offset 192] [from ]
!195 = metadata !{i32 786445, metadata !186, metadata !185, metadata !"colind", i32 39, i64 64, i64 64, i64 256, i32 0, metadata !33} ; [ DW_TAG_member ] [colind] [line 39, size 64, align 64, offset 256] [from ]
!196 = metadata !{i32 786445, metadata !186, metadata !185, metadata !"entries", i32 40, i64 64, i64 64, i64 320, i32 0, metadata !100} ; [ DW_TAG_member ] [entries] [line 40, size 64, align 64, offset 320] [from ]
!197 = metadata !{i32 786445, metadata !186, metadata !185, metadata !"wrkDV", i32 41, i64 192, i64 64, i64 384, i32 0, metadata !103} ; [ DW_TAG_member ] [wrkDV] [line 41, size 192, align 64, offset 384] [from DV]
!198 = metadata !{i32 786445, metadata !186, metadata !185, metadata !"next", i32 42, i64 64, i64 64, i64 576, i32 0, metadata !199} ; [ DW_TAG_member ] [next] [line 42, size 64, align 64, offset 576] [from ]
!199 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !200} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from Chv]
!200 = metadata !{i32 786454, metadata !186, null, metadata !"Chv", i32 30, i64 0, i64 0, i64 0, i32 0, metadata !185} ; [ DW_TAG_typedef ] [Chv] [line 30, size 0, align 0, offset 0] [from _Chv]
!201 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !202} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from FILE]
!202 = metadata !{i32 786454, metadata !1, null, metadata !"FILE", i32 48, i64 0, i64 0, i64 0, i32 0, metadata !203} ; [ DW_TAG_typedef ] [FILE] [line 48, size 0, align 0, offset 0] [from _IO_FILE]
!203 = metadata !{i32 786451, metadata !204, null, metadata !"_IO_FILE", i32 245, i64 1728, i64 64, i32 0, i32 0, null, metadata !205, i32 0, null, null} ; [ DW_TAG_structure_type ] [_IO_FILE] [line 245, size 1728, align 64, offset 0] [from ]
!204 = metadata !{metadata !"/usr/include/libio.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!205 = metadata !{metadata !206, metadata !207, metadata !210, metadata !211, metadata !212, metadata !213, metadata !214, metadata !215, metadata !216, metadata !217, metadata !218, metadata !219, metadata !220, metadata !228, metadata !229, metadata !230, metadata !231, metadata !234, metadata !236, metadata !238, metadata !242, metadata !243, metadata !245, metadata !246, metadata !247, metadata !248, metadata !249, metadata !252, metadata !253}
!206 = metadata !{i32 786445, metadata !204, metadata !203, metadata !"_flags", i32 246, i64 32, i64 32, i64 0, i32 0, metadata !14} ; [ DW_TAG_member ] [_flags] [line 246, size 32, align 32, offset 0] [from int]
!207 = metadata !{i32 786445, metadata !204, metadata !203, metadata !"_IO_read_ptr", i32 251, i64 64, i64 64, i64 64, i32 0, metadata !208} ; [ DW_TAG_member ] [_IO_read_ptr] [line 251, size 64, align 64, offset 64] [from ]
!208 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !209} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from char]
!209 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!210 = metadata !{i32 786445, metadata !204, metadata !203, metadata !"_IO_read_end", i32 252, i64 64, i64 64, i64 128, i32 0, metadata !208} ; [ DW_TAG_member ] [_IO_read_end] [line 252, size 64, align 64, offset 128] [from ]
!211 = metadata !{i32 786445, metadata !204, metadata !203, metadata !"_IO_read_base", i32 253, i64 64, i64 64, i64 192, i32 0, metadata !208} ; [ DW_TAG_member ] [_IO_read_base] [line 253, size 64, align 64, offset 192] [from ]
!212 = metadata !{i32 786445, metadata !204, metadata !203, metadata !"_IO_write_base", i32 254, i64 64, i64 64, i64 256, i32 0, metadata !208} ; [ DW_TAG_member ] [_IO_write_base] [line 254, size 64, align 64, offset 256] [from ]
!213 = metadata !{i32 786445, metadata !204, metadata !203, metadata !"_IO_write_ptr", i32 255, i64 64, i64 64, i64 320, i32 0, metadata !208} ; [ DW_TAG_member ] [_IO_write_ptr] [line 255, size 64, align 64, offset 320] [from ]
!214 = metadata !{i32 786445, metadata !204, metadata !203, metadata !"_IO_write_end", i32 256, i64 64, i64 64, i64 384, i32 0, metadata !208} ; [ DW_TAG_member ] [_IO_write_end] [line 256, size 64, align 64, offset 384] [from ]
!215 = metadata !{i32 786445, metadata !204, metadata !203, metadata !"_IO_buf_base", i32 257, i64 64, i64 64, i64 448, i32 0, metadata !208} ; [ DW_TAG_member ] [_IO_buf_base] [line 257, size 64, align 64, offset 448] [from ]
!216 = metadata !{i32 786445, metadata !204, metadata !203, metadata !"_IO_buf_end", i32 258, i64 64, i64 64, i64 512, i32 0, metadata !208} ; [ DW_TAG_member ] [_IO_buf_end] [line 258, size 64, align 64, offset 512] [from ]
!217 = metadata !{i32 786445, metadata !204, metadata !203, metadata !"_IO_save_base", i32 260, i64 64, i64 64, i64 576, i32 0, metadata !208} ; [ DW_TAG_member ] [_IO_save_base] [line 260, size 64, align 64, offset 576] [from ]
!218 = metadata !{i32 786445, metadata !204, metadata !203, metadata !"_IO_backup_base", i32 261, i64 64, i64 64, i64 640, i32 0, metadata !208} ; [ DW_TAG_member ] [_IO_backup_base] [line 261, size 64, align 64, offset 640] [from ]
!219 = metadata !{i32 786445, metadata !204, metadata !203, metadata !"_IO_save_end", i32 262, i64 64, i64 64, i64 704, i32 0, metadata !208} ; [ DW_TAG_member ] [_IO_save_end] [line 262, size 64, align 64, offset 704] [from ]
!220 = metadata !{i32 786445, metadata !204, metadata !203, metadata !"_markers", i32 264, i64 64, i64 64, i64 768, i32 0, metadata !221} ; [ DW_TAG_member ] [_markers] [line 264, size 64, align 64, offset 768] [from ]
!221 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !222} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from _IO_marker]
!222 = metadata !{i32 786451, metadata !204, null, metadata !"_IO_marker", i32 160, i64 192, i64 64, i32 0, i32 0, null, metadata !223, i32 0, null, null} ; [ DW_TAG_structure_type ] [_IO_marker] [line 160, size 192, align 64, offset 0] [from ]
!223 = metadata !{metadata !224, metadata !225, metadata !227}
!224 = metadata !{i32 786445, metadata !204, metadata !222, metadata !"_next", i32 161, i64 64, i64 64, i64 0, i32 0, metadata !221} ; [ DW_TAG_member ] [_next] [line 161, size 64, align 64, offset 0] [from ]
!225 = metadata !{i32 786445, metadata !204, metadata !222, metadata !"_sbuf", i32 162, i64 64, i64 64, i64 64, i32 0, metadata !226} ; [ DW_TAG_member ] [_sbuf] [line 162, size 64, align 64, offset 64] [from ]
!226 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !203} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from _IO_FILE]
!227 = metadata !{i32 786445, metadata !204, metadata !222, metadata !"_pos", i32 166, i64 32, i64 32, i64 128, i32 0, metadata !14} ; [ DW_TAG_member ] [_pos] [line 166, size 32, align 32, offset 128] [from int]
!228 = metadata !{i32 786445, metadata !204, metadata !203, metadata !"_chain", i32 266, i64 64, i64 64, i64 832, i32 0, metadata !226} ; [ DW_TAG_member ] [_chain] [line 266, size 64, align 64, offset 832] [from ]
!229 = metadata !{i32 786445, metadata !204, metadata !203, metadata !"_fileno", i32 268, i64 32, i64 32, i64 896, i32 0, metadata !14} ; [ DW_TAG_member ] [_fileno] [line 268, size 32, align 32, offset 896] [from int]
!230 = metadata !{i32 786445, metadata !204, metadata !203, metadata !"_flags2", i32 272, i64 32, i64 32, i64 928, i32 0, metadata !14} ; [ DW_TAG_member ] [_flags2] [line 272, size 32, align 32, offset 928] [from int]
!231 = metadata !{i32 786445, metadata !204, metadata !203, metadata !"_old_offset", i32 274, i64 64, i64 64, i64 960, i32 0, metadata !232} ; [ DW_TAG_member ] [_old_offset] [line 274, size 64, align 64, offset 960] [from __off_t]
!232 = metadata !{i32 786454, metadata !204, null, metadata !"__off_t", i32 131, i64 0, i64 0, i64 0, i32 0, metadata !233} ; [ DW_TAG_typedef ] [__off_t] [line 131, size 0, align 0, offset 0] [from long int]
!233 = metadata !{i32 786468, null, null, metadata !"long int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [long int] [line 0, size 64, align 64, offset 0, enc DW_ATE_signed]
!234 = metadata !{i32 786445, metadata !204, metadata !203, metadata !"_cur_column", i32 278, i64 16, i64 16, i64 1024, i32 0, metadata !235} ; [ DW_TAG_member ] [_cur_column] [line 278, size 16, align 16, offset 1024] [from unsigned short]
!235 = metadata !{i32 786468, null, null, metadata !"unsigned short", i32 0, i64 16, i64 16, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned short] [line 0, size 16, align 16, offset 0, enc DW_ATE_unsigned]
!236 = metadata !{i32 786445, metadata !204, metadata !203, metadata !"_vtable_offset", i32 279, i64 8, i64 8, i64 1040, i32 0, metadata !237} ; [ DW_TAG_member ] [_vtable_offset] [line 279, size 8, align 8, offset 1040] [from signed char]
!237 = metadata !{i32 786468, null, null, metadata !"signed char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [signed char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!238 = metadata !{i32 786445, metadata !204, metadata !203, metadata !"_shortbuf", i32 280, i64 8, i64 8, i64 1048, i32 0, metadata !239} ; [ DW_TAG_member ] [_shortbuf] [line 280, size 8, align 8, offset 1048] [from ]
!239 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 8, i64 8, i32 0, i32 0, metadata !209, metadata !240, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 8, align 8, offset 0] [from char]
!240 = metadata !{metadata !241}
!241 = metadata !{i32 786465, i64 0, i64 1}       ; [ DW_TAG_subrange_type ] [0, 0]
!242 = metadata !{i32 786445, metadata !204, metadata !203, metadata !"_lock", i32 284, i64 64, i64 64, i64 1088, i32 0, metadata !136} ; [ DW_TAG_member ] [_lock] [line 284, size 64, align 64, offset 1088] [from ]
!243 = metadata !{i32 786445, metadata !204, metadata !203, metadata !"_offset", i32 293, i64 64, i64 64, i64 1152, i32 0, metadata !244} ; [ DW_TAG_member ] [_offset] [line 293, size 64, align 64, offset 1152] [from __off64_t]
!244 = metadata !{i32 786454, metadata !204, null, metadata !"__off64_t", i32 132, i64 0, i64 0, i64 0, i32 0, metadata !233} ; [ DW_TAG_typedef ] [__off64_t] [line 132, size 0, align 0, offset 0] [from long int]
!245 = metadata !{i32 786445, metadata !204, metadata !203, metadata !"__pad1", i32 302, i64 64, i64 64, i64 1216, i32 0, metadata !136} ; [ DW_TAG_member ] [__pad1] [line 302, size 64, align 64, offset 1216] [from ]
!246 = metadata !{i32 786445, metadata !204, metadata !203, metadata !"__pad2", i32 303, i64 64, i64 64, i64 1280, i32 0, metadata !136} ; [ DW_TAG_member ] [__pad2] [line 303, size 64, align 64, offset 1280] [from ]
!247 = metadata !{i32 786445, metadata !204, metadata !203, metadata !"__pad3", i32 304, i64 64, i64 64, i64 1344, i32 0, metadata !136} ; [ DW_TAG_member ] [__pad3] [line 304, size 64, align 64, offset 1344] [from ]
!248 = metadata !{i32 786445, metadata !204, metadata !203, metadata !"__pad4", i32 305, i64 64, i64 64, i64 1408, i32 0, metadata !136} ; [ DW_TAG_member ] [__pad4] [line 305, size 64, align 64, offset 1408] [from ]
!249 = metadata !{i32 786445, metadata !204, metadata !203, metadata !"__pad5", i32 306, i64 64, i64 64, i64 1472, i32 0, metadata !250} ; [ DW_TAG_member ] [__pad5] [line 306, size 64, align 64, offset 1472] [from size_t]
!250 = metadata !{i32 786454, metadata !204, null, metadata !"size_t", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !251} ; [ DW_TAG_typedef ] [size_t] [line 42, size 0, align 0, offset 0] [from long unsigned int]
!251 = metadata !{i32 786468, null, null, metadata !"long unsigned int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [long unsigned int] [line 0, size 64, align 64, offset 0, enc DW_ATE_unsigned]
!252 = metadata !{i32 786445, metadata !204, metadata !203, metadata !"_mode", i32 308, i64 32, i64 32, i64 1536, i32 0, metadata !14} ; [ DW_TAG_member ] [_mode] [line 308, size 32, align 32, offset 1536] [from int]
!253 = metadata !{i32 786445, metadata !204, metadata !203, metadata !"_unused2", i32 310, i64 160, i64 8, i64 1568, i32 0, metadata !254} ; [ DW_TAG_member ] [_unused2] [line 310, size 160, align 8, offset 1568] [from ]
!254 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 160, i64 8, i32 0, i32 0, metadata !209, metadata !255, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 160, align 8, offset 0] [from char]
!255 = metadata !{metadata !256}
!256 = metadata !{i32 786465, i64 0, i64 20}      ; [ DW_TAG_subrange_type ] [0, 19]
!257 = metadata !{metadata !258, metadata !259, metadata !260, metadata !261, metadata !262, metadata !263, metadata !264, metadata !265, metadata !266, metadata !267, metadata !268, metadata !269, metadata !270, metadata !271, metadata !272, metadata !273, metadata !274, metadata !275, metadata !276, metadata !277, metadata !278, metadata !279, metadata !280, metadata !281, metadata !282, metadata !283, metadata !284, metadata !285, metadata !286, metadata !287, metadata !288, metadata !289, metadata !290, metadata !291}
!258 = metadata !{i32 786689, metadata !4, metadata !"frontmtx", metadata !5, i32 16777235, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [frontmtx] [line 19]
!259 = metadata !{i32 786689, metadata !4, metadata !"frontJ", metadata !5, i32 33554452, metadata !183, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [frontJ] [line 20]
!260 = metadata !{i32 786689, metadata !4, metadata !"pivotsizesIV", metadata !5, i32 50331669, metadata !46, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [pivotsizesIV] [line 21]
!261 = metadata !{i32 786689, metadata !4, metadata !"droptol", metadata !5, i32 67108886, metadata !101, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [droptol] [line 22]
!262 = metadata !{i32 786689, metadata !4, metadata !"msglvl", metadata !5, i32 83886103, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [msglvl] [line 23]
!263 = metadata !{i32 786689, metadata !4, metadata !"msgFile", metadata !5, i32 100663320, metadata !201, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [msgFile] [line 24]
!264 = metadata !{i32 786688, metadata !4, metadata !"mtx", metadata !5, i32 26, metadata !87, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [mtx] [line 26]
!265 = metadata !{i32 786688, metadata !4, metadata !"entries", metadata !5, i32 27, metadata !100, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [entries] [line 27]
!266 = metadata !{i32 786688, metadata !4, metadata !"inc1", metadata !5, i32 28, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [inc1] [line 28]
!267 = metadata !{i32 786688, metadata !4, metadata !"inc2", metadata !5, i32 28, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [inc2] [line 28]
!268 = metadata !{i32 786688, metadata !4, metadata !"ipivot", metadata !5, i32 28, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ipivot] [line 28]
!269 = metadata !{i32 786688, metadata !4, metadata !"irow", metadata !5, i32 28, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [irow] [line 28]
!270 = metadata !{i32 786688, metadata !4, metadata !"jcol", metadata !5, i32 28, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [jcol] [line 28]
!271 = metadata !{i32 786688, metadata !4, metadata !"J", metadata !5, i32 28, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [J] [line 28]
!272 = metadata !{i32 786688, metadata !4, metadata !"m", metadata !5, i32 28, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [m] [line 28]
!273 = metadata !{i32 786688, metadata !4, metadata !"nbytes", metadata !5, i32 28, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nbytes] [line 28]
!274 = metadata !{i32 786688, metadata !4, metadata !"ncol", metadata !5, i32 29, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ncol] [line 29]
!275 = metadata !{i32 786688, metadata !4, metadata !"nD", metadata !5, i32 29, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nD] [line 29]
!276 = metadata !{i32 786688, metadata !4, metadata !"nent", metadata !5, i32 29, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nent] [line 29]
!277 = metadata !{i32 786688, metadata !4, metadata !"nfront", metadata !5, i32 29, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nfront] [line 29]
!278 = metadata !{i32 786688, metadata !4, metadata !"nL", metadata !5, i32 29, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nL] [line 29]
!279 = metadata !{i32 786688, metadata !4, metadata !"npivot", metadata !5, i32 29, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [npivot] [line 29]
!280 = metadata !{i32 786688, metadata !4, metadata !"nrow", metadata !5, i32 29, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nrow] [line 29]
!281 = metadata !{i32 786688, metadata !4, metadata !"nU", metadata !5, i32 29, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nU] [line 29]
!282 = metadata !{i32 786688, metadata !4, metadata !"colind", metadata !5, i32 30, metadata !33, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [colind] [line 30]
!283 = metadata !{i32 786688, metadata !4, metadata !"colindJ", metadata !5, i32 30, metadata !33, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [colindJ] [line 30]
!284 = metadata !{i32 786688, metadata !4, metadata !"firstlocs", metadata !5, i32 30, metadata !33, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [firstlocs] [line 30]
!285 = metadata !{i32 786688, metadata !4, metadata !"indices", metadata !5, i32 30, metadata !33, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [indices] [line 30]
!286 = metadata !{i32 786688, metadata !4, metadata !"pivots", metadata !5, i32 30, metadata !33, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [pivots] [line 30]
!287 = metadata !{i32 786688, metadata !4, metadata !"pivotsizes", metadata !5, i32 31, metadata !33, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [pivotsizes] [line 31]
!288 = metadata !{i32 786688, metadata !4, metadata !"rowind", metadata !5, i32 31, metadata !33, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rowind] [line 31]
!289 = metadata !{i32 786688, metadata !4, metadata !"rowindJ", metadata !5, i32 31, metadata !33, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rowindJ] [line 31]
!290 = metadata !{i32 786688, metadata !4, metadata !"sizes", metadata !5, i32 31, metadata !33, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sizes] [line 31]
!291 = metadata !{i32 786688, metadata !4, metadata !"manager", metadata !5, i32 32, metadata !145, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [manager] [line 32]
!292 = metadata !{i32 19, i32 0, metadata !4, null}
!293 = metadata !{i32 20, i32 0, metadata !4, null}
!294 = metadata !{i32 21, i32 0, metadata !4, null}
!295 = metadata !{i32 22, i32 0, metadata !4, null}
!296 = metadata !{i32 23, i32 0, metadata !4, null}
!297 = metadata !{i32 24, i32 0, metadata !4, null}
!298 = metadata !{i32 27, i32 0, metadata !4, null}
!299 = metadata !{i32 28, i32 0, metadata !4, null}
!300 = metadata !{i32 29, i32 0, metadata !4, null}
!301 = metadata !{i32 30, i32 0, metadata !4, null}
!302 = metadata !{i32 31, i32 0, metadata !4, null}
!303 = metadata !{i32 38, i32 0, metadata !4, null}
!304 = metadata !{metadata !"int", metadata !305}
!305 = metadata !{metadata !"omnipotent char", metadata !306}
!306 = metadata !{metadata !"Simple C/C++ TBAA"}
!307 = metadata !{i32 39, i32 0, metadata !4, null}
!308 = metadata !{metadata !"any pointer", metadata !305}
!309 = metadata !{i32 40, i32 0, metadata !4, null}
!310 = metadata !{i32 43, i32 0, metadata !311, null}
!311 = metadata !{i32 786443, metadata !1, metadata !4, i32 42, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_storeFront.c]
!312 = metadata !{i32 44, i32 0, metadata !311, null}
!313 = metadata !{i32 45, i32 0, metadata !314, null}
!314 = metadata !{i32 786443, metadata !1, metadata !4, i32 44, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_storeFront.c]
!315 = metadata !{i32* null}
!316 = metadata !{i32 52, i32 0, metadata !4, null}
!317 = metadata !{i32 53, i32 0, metadata !4, null}
!318 = metadata !{i32 54, i32 0, metadata !4, null}
!319 = metadata !{i32 55, i32 0, metadata !4, null}
!320 = metadata !{i32 56, i32 0, metadata !4, null}
!321 = metadata !{i32 57, i32 0, metadata !322, null}
!322 = metadata !{i32 786443, metadata !1, metadata !4, i32 56, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_storeFront.c]
!323 = metadata !{i32 58, i32 0, metadata !322, null} ; [ DW_TAG_imported_module ]
!324 = metadata !{i32 59, i32 0, metadata !322, null}
!325 = metadata !{i32 60, i32 0, metadata !4, null}
!326 = metadata !{i32 61, i32 0, metadata !327, null}
!327 = metadata !{i32 786443, metadata !1, metadata !4, i32 60, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_storeFront.c]
!328 = metadata !{i32 62, i32 0, metadata !329, null}
!329 = metadata !{i32 786443, metadata !1, metadata !327, i32 61, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_storeFront.c]
!330 = metadata !{i32 63, i32 0, metadata !331, null}
!331 = metadata !{i32 786443, metadata !1, metadata !329, i32 62, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_storeFront.c]
!332 = metadata !{i32 64, i32 0, metadata !331, null}
!333 = metadata !{i32 66, i32 0, metadata !329, null}
!334 = metadata !{i32 65, i32 0, metadata !331, null}
!335 = metadata !{i32 67, i32 0, metadata !329, null}
!336 = metadata !{i32 68, i32 0, metadata !329, null}
!337 = metadata !{i32 74, i32 0, metadata !327, null}
!338 = metadata !{i32 80, i32 0, metadata !327, null}
!339 = metadata !{i32 81, i32 0, metadata !340, null}
!340 = metadata !{i32 786443, metadata !1, metadata !327, i32 80, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_storeFront.c]
!341 = metadata !{i32 82, i32 0, metadata !340, null}
!342 = metadata !{i32 83, i32 0, metadata !340, null}
!343 = metadata !{i32 84, i32 0, metadata !327, null}
!344 = metadata !{i32 85, i32 0, metadata !327, null}
!345 = metadata !{i32 91, i32 0, metadata !346, null}
!346 = metadata !{i32 786443, metadata !1, metadata !327, i32 85, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_storeFront.c]
!347 = metadata !{i32 92, i32 0, metadata !348, null}
!348 = metadata !{i32 786443, metadata !1, metadata !346, i32 91, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_storeFront.c]
!349 = metadata !{i32 93, i32 0, metadata !348, null}
!350 = metadata !{i32 94, i32 0, metadata !348, null}
!351 = metadata !{i32 95, i32 0, metadata !346, null}
!352 = metadata !{i32 96, i32 0, metadata !346, null}
!353 = metadata !{i32 97, i32 0, metadata !327, null}
!354 = metadata !{i32 98, i32 0, metadata !355, null}
!355 = metadata !{i32 786443, metadata !1, metadata !327, i32 97, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_storeFront.c]
!356 = metadata !{i32 99, i32 0, metadata !357, null}
!357 = metadata !{i32 786443, metadata !1, metadata !355, i32 98, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_storeFront.c]
!358 = metadata !{i32 100, i32 0, metadata !357, null}
!359 = metadata !{i32 102, i32 0, metadata !355, null}
!360 = metadata !{i32 101, i32 0, metadata !357, null}
!361 = metadata !{i32 103, i32 0, metadata !355, null}
!362 = metadata !{i32 105, i32 0, metadata !4, null}
!363 = metadata !{i32 113, i32 0, metadata !4, null}
!364 = metadata !{i32 119, i32 0, metadata !365, null}
!365 = metadata !{i32 786443, metadata !1, metadata !4, i32 113, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_storeFront.c]
!366 = metadata !{i32 120, i32 0, metadata !365, null}
!367 = metadata !{i32 122, i32 0, metadata !365, null}
!368 = metadata !{i32 123, i32 0, metadata !365, null}
!369 = metadata !{i32 124, i32 0, metadata !370, null}
!370 = metadata !{i32 786443, metadata !1, metadata !365, i32 123, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_storeFront.c]
!371 = metadata !{i32 126, i32 0, metadata !370, null}
!372 = metadata !{i32 127, i32 0, metadata !373, null}
!373 = metadata !{i32 786443, metadata !1, metadata !365, i32 126, i32 0, i32 14} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_storeFront.c]
!374 = metadata !{i32 129, i32 0, metadata !373, null}
!375 = metadata !{i32 130, i32 0, metadata !365, null}
!376 = metadata !{i32 131, i32 0, metadata !365, null}
!377 = metadata !{i32 132, i32 0, metadata !365, null}
!378 = metadata !{i32 133, i32 0, metadata !365, null}
!379 = metadata !{i32 135, i32 0, metadata !365, null}
!380 = metadata !{i32 136, i32 0, metadata !381, null}
!381 = metadata !{i32 786443, metadata !1, metadata !365, i32 135, i32 0, i32 15} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_storeFront.c]
!382 = metadata !{i32 137, i32 0, metadata !381, null}
!383 = metadata !{i32 138, i32 0, metadata !381, null}
!384 = metadata !{i32 139, i32 0, metadata !381, null}
!385 = metadata !{i32 140, i32 0, metadata !365, null}
!386 = metadata !{i32 166, i32 0, metadata !4, null}
!387 = metadata !{i32 141, i32 0, metadata !365, null}
!388 = metadata !{i32 147, i32 0, metadata !389, null}
!389 = metadata !{i32 786443, metadata !1, metadata !4, i32 141, i32 0, i32 16} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_storeFront.c]
!390 = metadata !{i32 148, i32 0, metadata !389, null}
!391 = metadata !{i32 149, i32 0, metadata !392, null}
!392 = metadata !{i32 786443, metadata !1, metadata !389, i32 148, i32 0, i32 17} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_storeFront.c]
!393 = metadata !{i32 151, i32 0, metadata !392, null}
!394 = metadata !{i32 152, i32 0, metadata !392, null}
!395 = metadata !{i32 153, i32 0, metadata !392, null}
!396 = metadata !{i32 154, i32 0, metadata !389, null}
!397 = metadata !{i32 155, i32 0, metadata !389, null}
!398 = metadata !{i32 157, i32 0, metadata !389, null}
!399 = metadata !{i32 158, i32 0, metadata !389, null}
!400 = metadata !{i32 159, i32 0, metadata !401, null}
!401 = metadata !{i32 786443, metadata !1, metadata !389, i32 158, i32 0, i32 18} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_storeFront.c]
!402 = metadata !{i32 160, i32 0, metadata !401, null}
!403 = metadata !{i32 161, i32 0, metadata !401, null}
!404 = metadata !{i32 162, i32 0, metadata !401, null}
!405 = metadata !{i32 163, i32 0, metadata !401, null}
!406 = metadata !{i32 164, i32 0, metadata !401, null}
!407 = metadata !{i32 167, i32 0, metadata !4, null}
!408 = metadata !{i32 168, i32 0, metadata !4, null}
!409 = metadata !{i32 169, i32 0, metadata !4, null}
!410 = metadata !{i32 170, i32 0, metadata !4, null}
!411 = metadata !{i32 176, i32 0, metadata !4, null}
!412 = metadata !{i32 182, i32 0, metadata !413, null}
!413 = metadata !{i32 786443, metadata !1, metadata !4, i32 176, i32 0, i32 19} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_storeFront.c]
!414 = metadata !{i32 184, i32 0, metadata !413, null}
!415 = metadata !{i32 185, i32 0, metadata !416, null}
!416 = metadata !{i32 786443, metadata !1, metadata !413, i32 184, i32 0, i32 20} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_storeFront.c]
!417 = metadata !{i32 186, i32 0, metadata !416, null}
!418 = metadata !{i32 187, i32 0, metadata !419, null}
!419 = metadata !{i32 786443, metadata !1, metadata !416, i32 186, i32 0, i32 21} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_storeFront.c]
!420 = metadata !{i32 189, i32 0, metadata !419, null}
!421 = metadata !{i32 190, i32 0, metadata !419, null}
!422 = metadata !{i32 192, i32 0, metadata !419, null}
!423 = metadata !{i32 193, i32 0, metadata !416, null}
!424 = metadata !{i32 195, i32 0, metadata !416, null}
!425 = metadata !{i32 209, i32 0, metadata !426, null}
!426 = metadata !{i32 786443, metadata !1, metadata !427, i32 209, i32 0, i32 28} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_storeFront.c]
!427 = metadata !{i32 786443, metadata !1, metadata !416, i32 208, i32 0, i32 27} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_storeFront.c]
!428 = metadata !{i32 196, i32 0, metadata !429, null}
!429 = metadata !{i32 786443, metadata !1, metadata !430, i32 196, i32 0, i32 23} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_storeFront.c]
!430 = metadata !{i32 786443, metadata !1, metadata !416, i32 195, i32 0, i32 22} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_storeFront.c]
!431 = metadata !{i32 197, i32 0, metadata !432, null}
!432 = metadata !{i32 786443, metadata !1, metadata !429, i32 196, i32 0, i32 24} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_storeFront.c]
!433 = metadata !{i32 199, i32 0, metadata !434, null}
!434 = metadata !{i32 786443, metadata !1, metadata !432, i32 198, i32 0, i32 25} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_storeFront.c]
!435 = metadata !{i32 200, i32 0, metadata !434, null}
!436 = metadata !{i32 203, i32 0, metadata !437, null}
!437 = metadata !{i32 786443, metadata !1, metadata !432, i32 202, i32 0, i32 26} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_storeFront.c]
!438 = metadata !{i32 204, i32 0, metadata !437, null}
!439 = metadata !{i32 210, i32 0, metadata !440, null}
!440 = metadata !{i32 786443, metadata !1, metadata !426, i32 209, i32 0, i32 29} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_storeFront.c]
!441 = metadata !{i32 211, i32 0, metadata !440, null}
!442 = metadata !{i32 198, i32 0, metadata !432, null}
!443 = metadata !{i32 201, i32 0, metadata !434, null}
!444 = metadata !{i32 202, i32 0, metadata !434, null}
!445 = metadata !{i32 205, i32 0, metadata !437, null}
!446 = metadata !{i32 206, i32 0, metadata !437, null}
!447 = metadata !{i32 214, i32 0, metadata !416, null}
!448 = metadata !{i32 216, i32 0, metadata !416, null}
!449 = metadata !{i32 217, i32 0, metadata !416, null}
!450 = metadata !{i32 218, i32 0, metadata !416, null}
!451 = metadata !{i32 219, i32 0, metadata !416, null}
!452 = metadata !{i32 220, i32 0, metadata !416, null}
!453 = metadata !{i32 221, i32 0, metadata !416, null}
!454 = metadata !{i32 222, i32 0, metadata !455, null}
!455 = metadata !{i32 786443, metadata !1, metadata !416, i32 221, i32 0, i32 30} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_storeFront.c]
!456 = metadata !{i32 223, i32 0, metadata !455, null}
!457 = metadata !{i32 224, i32 0, metadata !416, null}
!458 = metadata !{i32 225, i32 0, metadata !459, null}
!459 = metadata !{i32 786443, metadata !1, metadata !416, i32 224, i32 0, i32 31} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_storeFront.c]
!460 = metadata !{i32 226, i32 0, metadata !459, null}
!461 = metadata !{i32 227, i32 0, metadata !459, null}
!462 = metadata !{i32 228, i32 0, metadata !459, null}
!463 = metadata !{i32 236, i32 0, metadata !464, null}
!464 = metadata !{i32 786443, metadata !1, metadata !4, i32 230, i32 0, i32 32} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_storeFront.c]
!465 = metadata !{i32 238, i32 0, metadata !464, null}
!466 = metadata !{i32 239, i32 0, metadata !467, null}
!467 = metadata !{i32 786443, metadata !1, metadata !464, i32 238, i32 0, i32 33} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_storeFront.c]
!468 = metadata !{i32 241, i32 0, metadata !467, null}
!469 = metadata !{i32 242, i32 0, metadata !470, null}
!470 = metadata !{i32 786443, metadata !1, metadata !467, i32 241, i32 0, i32 34} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_storeFront.c]
!471 = metadata !{i32 245, i32 0, metadata !470, null}
!472 = metadata !{i32 246, i32 0, metadata !470, null}
!473 = metadata !{i32 247, i32 0, metadata !467, null}
!474 = metadata !{i32 248, i32 0, metadata !467, null}
!475 = metadata !{i32 250, i32 0, metadata !467, null}
!476 = metadata !{i32 252, i32 0, metadata !467, null}
!477 = metadata !{i32 255, i32 0, metadata !467, null}
!478 = metadata !{i32 256, i32 0, metadata !467, null}
!479 = metadata !{i32 257, i32 0, metadata !467, null}
!480 = metadata !{i32 258, i32 0, metadata !467, null}
!481 = metadata !{i32 259, i32 0, metadata !467, null}
!482 = metadata !{i32 260, i32 0, metadata !467, null}
!483 = metadata !{i32 261, i32 0, metadata !467, null}
!484 = metadata !{i32 262, i32 0, metadata !485, null}
!485 = metadata !{i32 786443, metadata !1, metadata !467, i32 261, i32 0, i32 35} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_storeFront.c]
!486 = metadata !{i32 263, i32 0, metadata !485, null}
!487 = metadata !{i32 264, i32 0, metadata !485, null}
!488 = metadata !{i32 265, i32 0, metadata !485, null}
!489 = metadata !{i32 273, i32 0, metadata !4, null}
!490 = metadata !{i32 279, i32 0, metadata !491, null}
!491 = metadata !{i32 786443, metadata !1, metadata !4, i32 273, i32 0, i32 36} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_storeFront.c]
!492 = metadata !{i32 280, i32 0, metadata !491, null}
!493 = metadata !{i32 281, i32 0, metadata !494, null}
!494 = metadata !{i32 786443, metadata !1, metadata !491, i32 280, i32 0, i32 37} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_storeFront.c]
!495 = metadata !{i32 282, i32 0, metadata !494, null}
!496 = metadata !{i32 283, i32 0, metadata !497, null}
!497 = metadata !{i32 786443, metadata !1, metadata !494, i32 282, i32 0, i32 38} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_storeFront.c]
!498 = metadata !{i32 285, i32 0, metadata !497, null}
!499 = metadata !{i32 286, i32 0, metadata !497, null}
!500 = metadata !{i32 288, i32 0, metadata !497, null}
!501 = metadata !{i32 289, i32 0, metadata !494, null}
!502 = metadata !{i32 290, i32 0, metadata !494, null}
!503 = metadata !{i32 292, i32 0, metadata !494, null}
!504 = metadata !{i32 293, i32 0, metadata !494, null}
!505 = metadata !{i32 294, i32 0, metadata !494, null}
!506 = metadata !{i32 295, i32 0, metadata !494, null}
!507 = metadata !{i32 296, i32 0, metadata !494, null}
!508 = metadata !{i32 297, i32 0, metadata !494, null}
!509 = metadata !{i32 298, i32 0, metadata !510, null}
!510 = metadata !{i32 786443, metadata !1, metadata !494, i32 297, i32 0, i32 39} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_storeFront.c]
!511 = metadata !{i32 299, i32 0, metadata !510, null}
!512 = metadata !{i32 300, i32 0, metadata !494, null}
!513 = metadata !{i32 301, i32 0, metadata !514, null}
!514 = metadata !{i32 786443, metadata !1, metadata !494, i32 300, i32 0, i32 40} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_storeFront.c]
!515 = metadata !{i32 302, i32 0, metadata !514, null}
!516 = metadata !{i32 303, i32 0, metadata !514, null}
!517 = metadata !{i32 304, i32 0, metadata !514, null}
!518 = metadata !{i32 312, i32 0, metadata !519, null}
!519 = metadata !{i32 786443, metadata !1, metadata !4, i32 306, i32 0, i32 41} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_storeFront.c]
!520 = metadata !{i32 314, i32 0, metadata !519, null}
!521 = metadata !{i32 315, i32 0, metadata !522, null}
!522 = metadata !{i32 786443, metadata !1, metadata !519, i32 314, i32 0, i32 42} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_storeFront.c]
!523 = metadata !{i32 317, i32 0, metadata !522, null}
!524 = metadata !{i32 318, i32 0, metadata !525, null}
!525 = metadata !{i32 786443, metadata !1, metadata !522, i32 317, i32 0, i32 43} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_storeFront.c]
!526 = metadata !{i32 321, i32 0, metadata !525, null}
!527 = metadata !{i32 322, i32 0, metadata !525, null}
!528 = metadata !{i32 323, i32 0, metadata !522, null}
!529 = metadata !{i32 324, i32 0, metadata !522, null}
!530 = metadata !{i32 326, i32 0, metadata !522, null}
!531 = metadata !{i32 328, i32 0, metadata !522, null}
!532 = metadata !{i32 331, i32 0, metadata !522, null}
!533 = metadata !{i32 332, i32 0, metadata !522, null}
!534 = metadata !{i32 333, i32 0, metadata !522, null}
!535 = metadata !{i32 334, i32 0, metadata !522, null}
!536 = metadata !{i32 335, i32 0, metadata !522, null}
!537 = metadata !{i32 336, i32 0, metadata !522, null}
!538 = metadata !{i32 337, i32 0, metadata !522, null}
!539 = metadata !{i32 338, i32 0, metadata !540, null}
!540 = metadata !{i32 786443, metadata !1, metadata !522, i32 337, i32 0, i32 44} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_storeFront.c]
!541 = metadata !{i32 339, i32 0, metadata !540, null}
!542 = metadata !{i32 340, i32 0, metadata !540, null}
!543 = metadata !{i32 341, i32 0, metadata !540, null}
!544 = metadata !{i32 344, i32 0, metadata !4, null}
!545 = metadata !{i32 350, i32 0, metadata !546, null}
!546 = metadata !{i32 786443, metadata !1, metadata !4, i32 344, i32 0, i32 45} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_storeFront.c]
!547 = metadata !{i32 356, i32 0, metadata !548, null}
!548 = metadata !{i32 786443, metadata !1, metadata !546, i32 350, i32 0, i32 46} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_storeFront.c]
!549 = metadata !{i32 358, i32 0, metadata !548, null}
!550 = metadata !{i32 359, i32 0, metadata !551, null}
!551 = metadata !{i32 786443, metadata !1, metadata !548, i32 358, i32 0, i32 47} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_storeFront.c]
!552 = metadata !{i32 360, i32 0, metadata !551, null}
!553 = metadata !{i32 361, i32 0, metadata !554, null}
!554 = metadata !{i32 786443, metadata !1, metadata !551, i32 360, i32 0, i32 48} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_storeFront.c]
!555 = metadata !{i32 363, i32 0, metadata !554, null}
!556 = metadata !{i32 364, i32 0, metadata !554, null}
!557 = metadata !{i32 366, i32 0, metadata !554, null}
!558 = metadata !{i32 367, i32 0, metadata !551, null}
!559 = metadata !{i32 369, i32 0, metadata !560, null}
!560 = metadata !{i32 786443, metadata !1, metadata !551, i32 369, i32 0, i32 49} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_storeFront.c]
!561 = metadata !{i32 370, i32 0, metadata !562, null}
!562 = metadata !{i32 786443, metadata !1, metadata !560, i32 369, i32 0, i32 50} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_storeFront.c]
!563 = metadata !{i32 371, i32 0, metadata !562, null}
!564 = metadata !{i32 373, i32 0, metadata !551, null}
!565 = metadata !{i32 375, i32 0, metadata !551, null}
!566 = metadata !{i32 376, i32 0, metadata !551, null}
!567 = metadata !{i32 377, i32 0, metadata !551, null}
!568 = metadata !{i32 378, i32 0, metadata !551, null}
!569 = metadata !{i32 379, i32 0, metadata !551, null}
!570 = metadata !{i32 380, i32 0, metadata !551, null}
!571 = metadata !{i32 381, i32 0, metadata !572, null}
!572 = metadata !{i32 786443, metadata !1, metadata !551, i32 380, i32 0, i32 51} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_storeFront.c]
!573 = metadata !{i32 382, i32 0, metadata !572, null}
!574 = metadata !{i32 383, i32 0, metadata !551, null}
!575 = metadata !{i32 384, i32 0, metadata !576, null}
!576 = metadata !{i32 786443, metadata !1, metadata !551, i32 383, i32 0, i32 52} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_storeFront.c]
!577 = metadata !{i32 385, i32 0, metadata !576, null}
!578 = metadata !{i32 386, i32 0, metadata !576, null}
!579 = metadata !{i32 387, i32 0, metadata !576, null}
!580 = metadata !{i32 395, i32 0, metadata !581, null}
!581 = metadata !{i32 786443, metadata !1, metadata !546, i32 389, i32 0, i32 53} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_storeFront.c]
!582 = metadata !{i32 397, i32 0, metadata !581, null}
!583 = metadata !{i32 398, i32 0, metadata !584, null}
!584 = metadata !{i32 786443, metadata !1, metadata !581, i32 397, i32 0, i32 54} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_storeFront.c]
!585 = metadata !{i32 400, i32 0, metadata !584, null}
!586 = metadata !{i32 401, i32 0, metadata !587, null}
!587 = metadata !{i32 786443, metadata !1, metadata !584, i32 400, i32 0, i32 55} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_storeFront.c]
!588 = metadata !{i32 404, i32 0, metadata !587, null}
!589 = metadata !{i32 405, i32 0, metadata !587, null}
!590 = metadata !{i32 406, i32 0, metadata !584, null}
!591 = metadata !{i32 407, i32 0, metadata !584, null}
!592 = metadata !{i32 409, i32 0, metadata !584, null}
!593 = metadata !{i32 411, i32 0, metadata !584, null}
!594 = metadata !{i32 414, i32 0, metadata !584, null}
!595 = metadata !{i32 415, i32 0, metadata !584, null}
!596 = metadata !{i32 416, i32 0, metadata !584, null}
!597 = metadata !{i32 417, i32 0, metadata !584, null}
!598 = metadata !{i32 418, i32 0, metadata !584, null}
!599 = metadata !{i32 419, i32 0, metadata !584, null}
!600 = metadata !{i32 420, i32 0, metadata !584, null}
!601 = metadata !{i32 421, i32 0, metadata !602, null}
!602 = metadata !{i32 786443, metadata !1, metadata !584, i32 420, i32 0, i32 56} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_storeFront.c]
!603 = metadata !{i32 422, i32 0, metadata !602, null}
!604 = metadata !{i32 423, i32 0, metadata !602, null}
!605 = metadata !{i32 424, i32 0, metadata !602, null}
!606 = metadata !{i32 432, i32 0, metadata !546, null}
!607 = metadata !{i32 438, i32 0, metadata !608, null}
!608 = metadata !{i32 786443, metadata !1, metadata !546, i32 432, i32 0, i32 57} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_storeFront.c]
!609 = metadata !{i32 439, i32 0, metadata !608, null}
!610 = metadata !{i32 440, i32 0, metadata !611, null}
!611 = metadata !{i32 786443, metadata !1, metadata !608, i32 439, i32 0, i32 58} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_storeFront.c]
!612 = metadata !{i32 441, i32 0, metadata !611, null}
!613 = metadata !{i32 442, i32 0, metadata !614, null}
!614 = metadata !{i32 786443, metadata !1, metadata !611, i32 441, i32 0, i32 59} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_storeFront.c]
!615 = metadata !{i32 444, i32 0, metadata !614, null}
!616 = metadata !{i32 445, i32 0, metadata !614, null}
!617 = metadata !{i32 447, i32 0, metadata !614, null}
!618 = metadata !{i32 448, i32 0, metadata !611, null}
!619 = metadata !{i32 449, i32 0, metadata !611, null}
!620 = metadata !{i32 451, i32 0, metadata !611, null}
!621 = metadata !{i32 452, i32 0, metadata !611, null}
!622 = metadata !{i32 453, i32 0, metadata !611, null}
!623 = metadata !{i32 454, i32 0, metadata !611, null}
!624 = metadata !{i32 455, i32 0, metadata !611, null}
!625 = metadata !{i32 456, i32 0, metadata !611, null}
!626 = metadata !{i32 457, i32 0, metadata !627, null}
!627 = metadata !{i32 786443, metadata !1, metadata !611, i32 456, i32 0, i32 60} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_storeFront.c]
!628 = metadata !{i32 458, i32 0, metadata !627, null}
!629 = metadata !{i32 459, i32 0, metadata !611, null}
!630 = metadata !{i32 460, i32 0, metadata !631, null}
!631 = metadata !{i32 786443, metadata !1, metadata !611, i32 459, i32 0, i32 61} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_storeFront.c]
!632 = metadata !{i32 461, i32 0, metadata !631, null}
!633 = metadata !{i32 462, i32 0, metadata !631, null}
!634 = metadata !{i32 463, i32 0, metadata !631, null}
!635 = metadata !{i32 471, i32 0, metadata !636, null}
!636 = metadata !{i32 786443, metadata !1, metadata !546, i32 465, i32 0, i32 62} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_storeFront.c]
!637 = metadata !{i32 473, i32 0, metadata !636, null}
!638 = metadata !{i32 474, i32 0, metadata !639, null}
!639 = metadata !{i32 786443, metadata !1, metadata !636, i32 473, i32 0, i32 63} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_storeFront.c]
!640 = metadata !{i32 476, i32 0, metadata !639, null}
!641 = metadata !{i32 477, i32 0, metadata !642, null}
!642 = metadata !{i32 786443, metadata !1, metadata !639, i32 476, i32 0, i32 64} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_storeFront.c]
!643 = metadata !{i32 480, i32 0, metadata !642, null}
!644 = metadata !{i32 481, i32 0, metadata !642, null}
!645 = metadata !{i32 482, i32 0, metadata !639, null}
!646 = metadata !{i32 483, i32 0, metadata !639, null}
!647 = metadata !{i32 485, i32 0, metadata !639, null}
!648 = metadata !{i32 487, i32 0, metadata !639, null}
!649 = metadata !{i32 490, i32 0, metadata !639, null}
!650 = metadata !{i32 491, i32 0, metadata !639, null}
!651 = metadata !{i32 492, i32 0, metadata !639, null}
!652 = metadata !{i32 493, i32 0, metadata !639, null}
!653 = metadata !{i32 494, i32 0, metadata !639, null}
!654 = metadata !{i32 495, i32 0, metadata !639, null}
!655 = metadata !{i32 496, i32 0, metadata !639, null}
!656 = metadata !{i32 497, i32 0, metadata !657, null}
!657 = metadata !{i32 786443, metadata !1, metadata !639, i32 496, i32 0, i32 65} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_storeFront.c]
!658 = metadata !{i32 498, i32 0, metadata !657, null}
!659 = metadata !{i32 499, i32 0, metadata !657, null}
!660 = metadata !{i32 500, i32 0, metadata !657, null}
!661 = metadata !{i32 504, i32 0, metadata !4, null}
