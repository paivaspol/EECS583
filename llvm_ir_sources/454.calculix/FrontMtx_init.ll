; ModuleID = '../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_init.c'
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
@.str = private unnamed_addr constant [122 x i8] c"\0A fatal error in FrontMtx_init()\0A frontmtx %p, frontETree %p, symbfacIVL %p\0A myid %d, ownersIV %p, manager %p\0A bad input\0A\00", align 1
@.str1 = private unnamed_addr constant [83 x i8] c"\0A fatal error in FrontMtx_init()\0A type %d must be SPOOLES_REAL or SPOOLES_COMPLEX\0A\00", align 1
@.str2 = private unnamed_addr constant [110 x i8] c"\0A fatal error in FrontMtx_init()\0A type is real\0A symmetryflag is not SPOOLES_SYMMETRIC or SPOOLES_NONSYMMETRIC\00", align 1
@.str3 = private unnamed_addr constant [130 x i8] c"\0A fatal error in FrontMtx_init()\0A type is real, symmetryflag is not SPOOLES_SYMMETRIC,\0A SPOOLES_HERMITIAN or SPOOLES_NONSYMMETRIC\00", align 1
@.str4 = private unnamed_addr constant [96 x i8] c"\0A fatal error in FrontMtx_init()\0A pivotingflag must be SPOOLES_PIVOTING or SPOOLES_NO_PIVOTING\0A\00", align 1
@.str5 = private unnamed_addr constant [112 x i8] c"\0A fatal error in FrontMtx_init()\0A invalid lockflag, must be NO_LOCK\0A LOCK_IN_PROCESS or LOCK_OVER_ALL_PROCESSES\00", align 1
@.str6 = private unnamed_addr constant [49 x i8] c"\0A ALLOCATE failure : bytes %zd, line %d, file %s\00", align 1
@.str7 = private unnamed_addr constant [83 x i8] c"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_init.c\00", align 1
@.str8 = private unnamed_addr constant [47 x i8] c"\0A ALLOCATE error : bytes %zd, line %d, file %s\00", align 1
@.str9 = private unnamed_addr constant [22 x i8] c"\0A\0A J %d, nD %d, nU %d\00", align 1
@.str10 = private unnamed_addr constant [51 x i8] c"\0A diagonal (%d,%d) matrix %p, %d entries, %d bytes\00", align 1
@.str11 = private unnamed_addr constant [48 x i8] c"\0A upper (%d,%d) matrix %p, %d entries, %d bytes\00", align 1
@.str12 = private unnamed_addr constant [48 x i8] c"\0A lower (%d,%d) matrix %p, %d entries, %d bytes\00", align 1
@.str13 = private unnamed_addr constant [23 x i8] c"\0A\0A frontmtx->lock = %p\00", align 1

; Function Attrs: nounwind optsize uwtable
define void @FrontMtx_init(%struct._FrontMtx* %frontmtx, %struct._ETree* %frontETree, %struct._IVL* %symbfacIVL, i32 %type, i32 %symmetryflag, i32 %sparsityflag, i32 %pivotingflag, i32 %lockflag, i32 %myid, %struct._IV* %ownersIV, %struct._SubMtxManager* %manager, i32 %msglvl, %struct._IO_FILE* nocapture %msgFile) #0 {
entry:
  %nent = alloca i32, align 4
  %entries = alloca double*, align 8
  %ncol = alloca i32, align 4
  %nrow = alloca i32, align 4
  %firstlocs = alloca i32*, align 8
  %sizes = alloca i32*, align 8
  call void @llvm.dbg.value(metadata !{%struct._FrontMtx* %frontmtx}, i64 0, metadata !240), !dbg !276
  call void @llvm.dbg.value(metadata !{%struct._ETree* %frontETree}, i64 0, metadata !241), !dbg !277
  call void @llvm.dbg.value(metadata !{%struct._IVL* %symbfacIVL}, i64 0, metadata !242), !dbg !278
  call void @llvm.dbg.value(metadata !{i32 %type}, i64 0, metadata !243), !dbg !279
  call void @llvm.dbg.value(metadata !{i32 %symmetryflag}, i64 0, metadata !244), !dbg !280
  call void @llvm.dbg.value(metadata !{i32 %sparsityflag}, i64 0, metadata !245), !dbg !281
  call void @llvm.dbg.value(metadata !{i32 %pivotingflag}, i64 0, metadata !246), !dbg !282
  call void @llvm.dbg.value(metadata !{i32 %lockflag}, i64 0, metadata !247), !dbg !283
  call void @llvm.dbg.value(metadata !{i32 %myid}, i64 0, metadata !248), !dbg !284
  call void @llvm.dbg.value(metadata !{%struct._IV* %ownersIV}, i64 0, metadata !249), !dbg !285
  call void @llvm.dbg.value(metadata !{%struct._SubMtxManager* %manager}, i64 0, metadata !250), !dbg !286
  call void @llvm.dbg.value(metadata !{i32 %msglvl}, i64 0, metadata !251), !dbg !287
  call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %msgFile}, i64 0, metadata !252), !dbg !288
  call void @llvm.dbg.declare(metadata !{i32* %nent}, metadata !261), !dbg !289
  %cmp = icmp eq %struct._FrontMtx* %frontmtx, null, !dbg !290
  %cmp1 = icmp eq %struct._ETree* %frontETree, null, !dbg !290
  %or.cond = or i1 %cmp, %cmp1, !dbg !290
  %cmp3 = icmp eq %struct._IVL* %symbfacIVL, null, !dbg !290
  %or.cond659 = or i1 %or.cond, %cmp3, !dbg !290
  br i1 %or.cond659, label %if.then, label %lor.lhs.false4, !dbg !290

lor.lhs.false4:                                   ; preds = %entry
  %cmp5 = icmp ne %struct._IV* %ownersIV, null, !dbg !290
  %cmp6 = icmp slt i32 %myid, 0, !dbg !290
  %or.cond660 = and i1 %cmp5, %cmp6, !dbg !290
  %cmp8 = icmp eq %struct._SubMtxManager* %manager, null, !dbg !290
  %or.cond661 = or i1 %or.cond660, %cmp8, !dbg !290
  br i1 %or.cond661, label %if.then, label %if.end, !dbg !290

if.then:                                          ; preds = %lor.lhs.false4, %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !291, !tbaa !293
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([122 x i8]* @.str, i64 0, i64 0), %struct._FrontMtx* %frontmtx, %struct._ETree* %frontETree, %struct._IVL* %symbfacIVL, i32 %myid, %struct._IV* %ownersIV, %struct._SubMtxManager* %manager) #6, !dbg !291
  call void @exit(i32 -1) #7, !dbg !296
  unreachable, !dbg !296

if.end:                                           ; preds = %lor.lhs.false4
  %type.off = add i32 %type, -1, !dbg !297
  %1 = icmp ugt i32 %type.off, 1, !dbg !297
  br i1 %1, label %if.then12, label %if.end14, !dbg !297

if.then12:                                        ; preds = %if.end
  %2 = load %struct._IO_FILE** @stderr, align 8, !dbg !298, !tbaa !293
  %call13 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([83 x i8]* @.str1, i64 0, i64 0), i32 %type) #6, !dbg !298
  call void @exit(i32 -1) #7, !dbg !300
  unreachable, !dbg !300

if.end14:                                         ; preds = %if.end
  switch i32 %type, label %if.end32 [
    i32 1, label %land.lhs.true16
    i32 2, label %land.lhs.true24
  ], !dbg !301

land.lhs.true16:                                  ; preds = %if.end14
  %3 = and i32 %symmetryflag, -3, !dbg !301
  %4 = icmp eq i32 %3, 0, !dbg !301
  br i1 %4, label %if.end32, label %if.then20, !dbg !301

if.then20:                                        ; preds = %land.lhs.true16
  %5 = load %struct._IO_FILE** @stderr, align 8, !dbg !302, !tbaa !293
  %6 = call i64 @fwrite(i8* getelementptr inbounds ([110 x i8]* @.str2, i64 0, i64 0), i64 109, i64 1, %struct._IO_FILE* %5), !dbg !302
  call void @exit(i32 -1) #7, !dbg !304
  unreachable, !dbg !304

land.lhs.true24:                                  ; preds = %if.end14
  %.old = icmp ult i32 %symmetryflag, 3, !dbg !305
  br i1 %.old, label %if.end32, label %if.then30, !dbg !305

if.then30:                                        ; preds = %land.lhs.true24
  %7 = load %struct._IO_FILE** @stderr, align 8, !dbg !306, !tbaa !293
  %8 = call i64 @fwrite(i8* getelementptr inbounds ([130 x i8]* @.str3, i64 0, i64 0), i64 129, i64 1, %struct._IO_FILE* %7), !dbg !306
  call void @exit(i32 -1) #7, !dbg !308
  unreachable, !dbg !308

if.end32:                                         ; preds = %land.lhs.true16, %if.end14, %land.lhs.true24
  %9 = icmp ult i32 %pivotingflag, 2, !dbg !309
  br i1 %9, label %if.end38, label %if.then36, !dbg !309

if.then36:                                        ; preds = %if.end32
  %10 = load %struct._IO_FILE** @stderr, align 8, !dbg !310, !tbaa !293
  %11 = call i64 @fwrite(i8* getelementptr inbounds ([96 x i8]* @.str4, i64 0, i64 0), i64 95, i64 1, %struct._IO_FILE* %10), !dbg !310
  call void @exit(i32 -1) #7, !dbg !312
  unreachable, !dbg !312

if.end38:                                         ; preds = %if.end32
  %12 = icmp ult i32 %lockflag, 3, !dbg !313
  br i1 %12, label %if.end46, label %if.then44, !dbg !313

if.then44:                                        ; preds = %if.end38
  %13 = load %struct._IO_FILE** @stderr, align 8, !dbg !314, !tbaa !293
  %14 = call i64 @fwrite(i8* getelementptr inbounds ([112 x i8]* @.str5, i64 0, i64 0), i64 111, i64 1, %struct._IO_FILE* %13), !dbg !314
  call void @exit(i32 -1) #7, !dbg !316
  unreachable, !dbg !316

if.end46:                                         ; preds = %if.end38
  %nfront47 = getelementptr inbounds %struct._ETree* %frontETree, i64 0, i32 0, !dbg !317
  %15 = load i32* %nfront47, align 4, !dbg !317, !tbaa !318
  call void @llvm.dbg.value(metadata !{i32 %15}, i64 0, metadata !262), !dbg !317
  %nvtx = getelementptr inbounds %struct._ETree* %frontETree, i64 0, i32 1, !dbg !319
  %16 = load i32* %nvtx, align 4, !dbg !319, !tbaa !318
  call void @llvm.dbg.value(metadata !{i32 %16}, i64 0, metadata !259), !dbg !319
  %call48 = call i32* @ETree_nodwghts(%struct._ETree* %frontETree) #6, !dbg !320
  call void @llvm.dbg.value(metadata !{i32* %call48}, i64 0, metadata !265), !dbg !320
  %call49 = call i32* @ETree_bndwghts(%struct._ETree* %frontETree) #6, !dbg !321
  call void @llvm.dbg.value(metadata !{i32* %call49}, i64 0, metadata !264), !dbg !321
  %call50 = call i32* @ETree_vtxToFront(%struct._ETree* %frontETree) #6, !dbg !322
  call void @llvm.dbg.value(metadata !{i32* %call50}, i64 0, metadata !267), !dbg !322
  br i1 %cmp5, label %if.then52, label %if.end54, !dbg !323

if.then52:                                        ; preds = %if.end46
  %call53 = call i32* @IV_entries(%struct._IV* %ownersIV) #6, !dbg !324
  call void @llvm.dbg.value(metadata !{i32* %call53}, i64 0, metadata !266), !dbg !324
  br label %if.end54, !dbg !326

if.end54:                                         ; preds = %if.end46, %if.then52
  %owners.0 = phi i32* [ %call53, %if.then52 ], [ null, %if.end46 ]
  call void @FrontMtx_setDefaultFields(%struct._FrontMtx* %frontmtx) #6, !dbg !327
  %nfront55 = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 0, !dbg !328
  store i32 %15, i32* %nfront55, align 4, !dbg !328, !tbaa !318
  %neqns56 = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 1, !dbg !329
  store i32 %16, i32* %neqns56, align 4, !dbg !329, !tbaa !318
  %type57 = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 2, !dbg !330
  store i32 %type, i32* %type57, align 4, !dbg !330, !tbaa !318
  %symmetryflag58 = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 3, !dbg !331
  store i32 %symmetryflag, i32* %symmetryflag58, align 4, !dbg !331, !tbaa !318
  %sparsityflag59 = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 4, !dbg !332
  store i32 %sparsityflag, i32* %sparsityflag59, align 4, !dbg !332, !tbaa !318
  %pivotingflag60 = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 5, !dbg !333
  store i32 %pivotingflag, i32* %pivotingflag60, align 4, !dbg !333, !tbaa !318
  %dataMode = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 6, !dbg !334
  store i32 1, i32* %dataMode, align 4, !dbg !334, !tbaa !318
  %tree = getelementptr inbounds %struct._ETree* %frontETree, i64 0, i32 2, !dbg !335
  %17 = load %struct._Tree** %tree, align 8, !dbg !335, !tbaa !293
  %tree61 = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 10, !dbg !335
  store %struct._Tree* %17, %struct._Tree** %tree61, align 8, !dbg !335, !tbaa !293
  %frontETree62 = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 11, !dbg !336
  store %struct._ETree* %frontETree, %struct._ETree** %frontETree62, align 8, !dbg !336, !tbaa !293
  %symbfacIVL63 = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 13, !dbg !337
  store %struct._IVL* %symbfacIVL, %struct._IVL** %symbfacIVL63, align 8, !dbg !337, !tbaa !293
  %call64 = call %struct._IV* @IV_new() #6, !dbg !338
  %frontsizesIV = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 12, !dbg !338
  store %struct._IV* %call64, %struct._IV** %frontsizesIV, align 8, !dbg !338, !tbaa !293
  %18 = load i32* %pivotingflag60, align 4, !dbg !339, !tbaa !318
  %cmp66 = icmp eq i32 %18, 1, !dbg !339
  br i1 %cmp66, label %if.then67, label %if.else70, !dbg !339

if.then67:                                        ; preds = %if.end54
  call void @IV_init(%struct._IV* %call64, i32 %15, i32* null) #6, !dbg !340
  %19 = load %struct._IV** %frontsizesIV, align 8, !dbg !342, !tbaa !293
  call void @IV_fill(%struct._IV* %19, i32 0) #6, !dbg !342
  br label %if.end72, !dbg !343

if.else70:                                        ; preds = %if.end54
  call void @IV_init(%struct._IV* %call64, i32 %15, i32* %call48) #6, !dbg !344
  br label %if.end72

if.end72:                                         ; preds = %if.else70, %if.then67
  %20 = load i32* %pivotingflag60, align 4, !dbg !346, !tbaa !318
  %cmp74 = icmp eq i32 %20, 1, !dbg !346
  br i1 %cmp74, label %if.then75, label %if.end84, !dbg !346

if.then75:                                        ; preds = %if.end72
  %call76 = call %struct._IVL* @IVL_new() #6, !dbg !347
  %coladjIVL = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 15, !dbg !347
  store %struct._IVL* %call76, %struct._IVL** %coladjIVL, align 8, !dbg !347, !tbaa !293
  call void @IVL_init1(%struct._IVL* %call76, i32 1, i32 %15) #6, !dbg !349
  %21 = load i32* %symmetryflag58, align 4, !dbg !350, !tbaa !318
  %cmp79 = icmp eq i32 %21, 2, !dbg !350
  br i1 %cmp79, label %if.then80, label %if.end84, !dbg !350

if.then80:                                        ; preds = %if.then75
  %call81 = call %struct._IVL* @IVL_new() #6, !dbg !351
  %rowadjIVL = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 14, !dbg !351
  store %struct._IVL* %call81, %struct._IVL** %rowadjIVL, align 8, !dbg !351, !tbaa !293
  call void @IVL_init1(%struct._IVL* %call81, i32 1, i32 %15) #6, !dbg !353
  br label %if.end84, !dbg !354

if.end84:                                         ; preds = %if.then75, %if.then80, %if.end72
  %cmp85 = icmp sgt i32 %15, 0, !dbg !355
  br i1 %cmp85, label %if.then86, label %if.else96, !dbg !355

if.then86:                                        ; preds = %if.end84
  %conv = sext i32 %15 to i64, !dbg !356
  %mul = shl nsw i64 %conv, 3, !dbg !356
  %call87 = call noalias i8* @malloc(i64 %mul) #6, !dbg !356
  %22 = bitcast i8* %call87 to %struct._SubMtx**, !dbg !356
  %p_mtxDJJ = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 18, !dbg !356
  store %struct._SubMtx** %22, %struct._SubMtx*** %p_mtxDJJ, align 8, !dbg !356, !tbaa !293
  %cmp88 = icmp eq i8* %call87, null, !dbg !356
  br i1 %cmp88, label %if.then90, label %if.then109, !dbg !356

if.then90:                                        ; preds = %if.then86
  %23 = load %struct._IO_FILE** @stderr, align 8, !dbg !358, !tbaa !293
  %call93 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %23, i8* getelementptr inbounds ([49 x i8]* @.str6, i64 0, i64 0), i64 %mul, i32 201, i8* getelementptr inbounds ([83 x i8]* @.str7, i64 0, i64 0)) #6, !dbg !358
  call void @exit(i32 -1) #7, !dbg !358
  unreachable, !dbg !358

if.else96:                                        ; preds = %if.end84
  %cmp97 = icmp eq i32 %15, 0, !dbg !355
  br i1 %cmp97, label %if.then149, label %if.else101, !dbg !355

if.else101:                                       ; preds = %if.else96
  %24 = load %struct._IO_FILE** @stderr, align 8, !dbg !360, !tbaa !293
  %conv102 = sext i32 %15 to i64, !dbg !360
  %mul103 = shl nsw i64 %conv102, 3, !dbg !360
  %call104 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %24, i8* getelementptr inbounds ([47 x i8]* @.str8, i64 0, i64 0), i64 %mul103, i32 201, i8* getelementptr inbounds ([83 x i8]* @.str7, i64 0, i64 0)) #6, !dbg !360
  call void @exit(i32 -1) #7, !dbg !360
  unreachable, !dbg !360

if.then109:                                       ; preds = %if.then86
  %call112 = call noalias i8* @malloc(i64 %mul) #6, !dbg !362
  %25 = bitcast i8* %call112 to %struct._SubMtx**, !dbg !362
  %p_mtxUJJ = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 19, !dbg !362
  store %struct._SubMtx** %25, %struct._SubMtx*** %p_mtxUJJ, align 8, !dbg !362, !tbaa !293
  %cmp113 = icmp eq i8* %call112, null, !dbg !362
  br i1 %cmp113, label %if.then115, label %if.then134, !dbg !362

if.then115:                                       ; preds = %if.then109
  %26 = load %struct._IO_FILE** @stderr, align 8, !dbg !364, !tbaa !293
  %call118 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %26, i8* getelementptr inbounds ([49 x i8]* @.str6, i64 0, i64 0), i64 %mul, i32 202, i8* getelementptr inbounds ([83 x i8]* @.str7, i64 0, i64 0)) #6, !dbg !364
  call void @exit(i32 -1) #7, !dbg !364
  unreachable, !dbg !364

if.then134:                                       ; preds = %if.then109
  %call137 = call noalias i8* @malloc(i64 %mul) #6, !dbg !366
  %27 = bitcast i8* %call137 to %struct._SubMtx**, !dbg !366
  %p_mtxUJN = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 20, !dbg !366
  store %struct._SubMtx** %27, %struct._SubMtx*** %p_mtxUJN, align 8, !dbg !366, !tbaa !293
  %cmp138 = icmp eq i8* %call137, null, !dbg !366
  br i1 %cmp138, label %if.then140, label %for.cond.preheader, !dbg !366

if.then140:                                       ; preds = %if.then134
  %28 = load %struct._IO_FILE** @stderr, align 8, !dbg !368, !tbaa !293
  %call143 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %28, i8* getelementptr inbounds ([49 x i8]* @.str6, i64 0, i64 0), i64 %mul, i32 203, i8* getelementptr inbounds ([83 x i8]* @.str7, i64 0, i64 0)) #6, !dbg !368
  call void @exit(i32 -1) #7, !dbg !368
  unreachable, !dbg !368

if.then149:                                       ; preds = %if.else96
  %p_mtxDJJ100 = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 18, !dbg !370
  %29 = bitcast %struct._SubMtx*** %p_mtxDJJ100 to i8*
  call void @llvm.memset.p0i8.i64(i8* %29, i8 0, i64 24, i32 8, i1 false), !dbg !372
  br label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.then134, %if.then149
  %30 = phi %struct._SubMtx** [ %22, %if.then134 ], [ null, %if.then149 ]
  br i1 %cmp85, label %for.body.lr.ph, label %for.end, !dbg !374

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %p_mtxDJJ159 = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 18, !dbg !376
  %p_mtxUJJ161 = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 19, !dbg !378
  %p_mtxUJN164 = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 20, !dbg !379
  br label %for.body, !dbg !374

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %31 = phi %struct._SubMtx** [ %30, %for.body.lr.ph ], [ %.pre692, %for.body.for.body_crit_edge ]
  %indvars.iv688 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next689, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr inbounds %struct._SubMtx** %31, i64 %indvars.iv688, !dbg !376
  store %struct._SubMtx* null, %struct._SubMtx** %arrayidx, align 8, !dbg !376, !tbaa !293
  %32 = load %struct._SubMtx*** %p_mtxUJJ161, align 8, !dbg !378, !tbaa !293
  %arrayidx162 = getelementptr inbounds %struct._SubMtx** %32, i64 %indvars.iv688, !dbg !378
  store %struct._SubMtx* null, %struct._SubMtx** %arrayidx162, align 8, !dbg !378, !tbaa !293
  %33 = load %struct._SubMtx*** %p_mtxUJN164, align 8, !dbg !379, !tbaa !293
  %arrayidx165 = getelementptr inbounds %struct._SubMtx** %33, i64 %indvars.iv688, !dbg !379
  store %struct._SubMtx* null, %struct._SubMtx** %arrayidx165, align 8, !dbg !379, !tbaa !293
  %indvars.iv.next689 = add i64 %indvars.iv688, 1, !dbg !374
  %lftr.wideiv690 = trunc i64 %indvars.iv.next689 to i32, !dbg !374
  %exitcond691 = icmp eq i32 %lftr.wideiv690, %15, !dbg !374
  br i1 %exitcond691, label %for.end, label %for.body.for.body_crit_edge, !dbg !374

for.body.for.body_crit_edge:                      ; preds = %for.body
  %.pre692 = load %struct._SubMtx*** %p_mtxDJJ159, align 8, !dbg !376, !tbaa !293
  br label %for.body, !dbg !374

for.end:                                          ; preds = %for.body, %for.cond.preheader
  %34 = load i32* %symmetryflag58, align 4, !dbg !380, !tbaa !318
  %cmp167 = icmp eq i32 %34, 2, !dbg !380
  br i1 %cmp167, label %if.then169, label %if.end233, !dbg !380

if.then169:                                       ; preds = %for.end
  br i1 %cmp85, label %if.then172, label %if.else184, !dbg !381

if.then172:                                       ; preds = %if.then169
  %conv173 = sext i32 %15 to i64, !dbg !383
  %mul174 = shl nsw i64 %conv173, 3, !dbg !383
  %call175 = call noalias i8* @malloc(i64 %mul174) #6, !dbg !383
  %35 = bitcast i8* %call175 to %struct._SubMtx**, !dbg !383
  %p_mtxLJJ = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 21, !dbg !383
  store %struct._SubMtx** %35, %struct._SubMtx*** %p_mtxLJJ, align 8, !dbg !383, !tbaa !293
  %cmp176 = icmp eq i8* %call175, null, !dbg !383
  br i1 %cmp176, label %if.then178, label %if.then197, !dbg !383

if.then178:                                       ; preds = %if.then172
  %36 = load %struct._IO_FILE** @stderr, align 8, !dbg !385, !tbaa !293
  %call181 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %36, i8* getelementptr inbounds ([49 x i8]* @.str6, i64 0, i64 0), i64 %mul174, i32 210, i8* getelementptr inbounds ([83 x i8]* @.str7, i64 0, i64 0)) #6, !dbg !385
  call void @exit(i32 -1) #7, !dbg !385
  unreachable, !dbg !385

if.else184:                                       ; preds = %if.then169
  %cmp185 = icmp eq i32 %15, 0, !dbg !381
  br i1 %cmp185, label %if.then212, label %if.else189, !dbg !381

if.else189:                                       ; preds = %if.else184
  %37 = load %struct._IO_FILE** @stderr, align 8, !dbg !387, !tbaa !293
  %conv190 = sext i32 %15 to i64, !dbg !387
  %mul191 = shl nsw i64 %conv190, 3, !dbg !387
  %call192 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %37, i8* getelementptr inbounds ([47 x i8]* @.str8, i64 0, i64 0), i64 %mul191, i32 210, i8* getelementptr inbounds ([83 x i8]* @.str7, i64 0, i64 0)) #6, !dbg !387
  call void @exit(i32 -1) #7, !dbg !387
  unreachable, !dbg !387

if.then197:                                       ; preds = %if.then172
  %call200 = call noalias i8* @malloc(i64 %mul174) #6, !dbg !389
  %38 = bitcast i8* %call200 to %struct._SubMtx**, !dbg !389
  %p_mtxLNJ = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 22, !dbg !389
  store %struct._SubMtx** %38, %struct._SubMtx*** %p_mtxLNJ, align 8, !dbg !389, !tbaa !293
  %cmp201 = icmp eq i8* %call200, null, !dbg !389
  br i1 %cmp201, label %if.then203, label %for.cond220.preheader, !dbg !389

if.then203:                                       ; preds = %if.then197
  %39 = load %struct._IO_FILE** @stderr, align 8, !dbg !391, !tbaa !293
  %call206 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %39, i8* getelementptr inbounds ([49 x i8]* @.str6, i64 0, i64 0), i64 %mul174, i32 211, i8* getelementptr inbounds ([83 x i8]* @.str7, i64 0, i64 0)) #6, !dbg !391
  call void @exit(i32 -1) #7, !dbg !391
  unreachable, !dbg !391

if.then212:                                       ; preds = %if.else184
  %p_mtxLJJ188 = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 21, !dbg !393
  %40 = bitcast %struct._SubMtx*** %p_mtxLJJ188 to i8*
  call void @llvm.memset.p0i8.i64(i8* %40, i8 0, i64 16, i32 8, i1 false), !dbg !395
  br label %for.cond220.preheader

for.cond220.preheader:                            ; preds = %if.then197, %if.then212
  %41 = phi %struct._SubMtx** [ %35, %if.then197 ], [ null, %if.then212 ]
  br i1 %cmp85, label %for.body223.lr.ph, label %if.end233, !dbg !397

for.body223.lr.ph:                                ; preds = %for.cond220.preheader
  %p_mtxLJJ225 = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 21, !dbg !399
  %p_mtxLNJ228 = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 22, !dbg !401
  br label %for.body223, !dbg !397

for.body223:                                      ; preds = %for.body223.for.body223_crit_edge, %for.body223.lr.ph
  %42 = phi %struct._SubMtx** [ %41, %for.body223.lr.ph ], [ %.pre, %for.body223.for.body223_crit_edge ]
  %indvars.iv684 = phi i64 [ 0, %for.body223.lr.ph ], [ %indvars.iv.next685, %for.body223.for.body223_crit_edge ]
  %arrayidx226 = getelementptr inbounds %struct._SubMtx** %42, i64 %indvars.iv684, !dbg !399
  store %struct._SubMtx* null, %struct._SubMtx** %arrayidx226, align 8, !dbg !399, !tbaa !293
  %43 = load %struct._SubMtx*** %p_mtxLNJ228, align 8, !dbg !401, !tbaa !293
  %arrayidx229 = getelementptr inbounds %struct._SubMtx** %43, i64 %indvars.iv684, !dbg !401
  store %struct._SubMtx* null, %struct._SubMtx** %arrayidx229, align 8, !dbg !401, !tbaa !293
  %indvars.iv.next685 = add i64 %indvars.iv684, 1, !dbg !397
  %lftr.wideiv686 = trunc i64 %indvars.iv.next685 to i32, !dbg !397
  %exitcond687 = icmp eq i32 %lftr.wideiv686, %15, !dbg !397
  br i1 %exitcond687, label %if.end233, label %for.body223.for.body223_crit_edge, !dbg !397

for.body223.for.body223_crit_edge:                ; preds = %for.body223
  %.pre = load %struct._SubMtx*** %p_mtxLJJ225, align 8, !dbg !399, !tbaa !293
  br label %for.body223, !dbg !397

if.end233:                                        ; preds = %for.cond220.preheader, %for.body223, %for.end
  %manager234 = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 25, !dbg !402
  store %struct._SubMtxManager* %manager, %struct._SubMtxManager** %manager234, align 8, !dbg !402, !tbaa !293
  %44 = load i32* %pivotingflag60, align 4, !dbg !403, !tbaa !318
  %cmp236 = icmp eq i32 %44, 1, !dbg !403
  br i1 %cmp236, label %if.end373, label %land.lhs.true238, !dbg !403

land.lhs.true238:                                 ; preds = %if.end233
  %45 = load i32* %sparsityflag59, align 4, !dbg !403, !tbaa !318
  %cmp240 = icmp eq i32 %45, 0, !dbg !403
  br i1 %cmp240, label %for.cond243.preheader, label %if.end373, !dbg !403

for.cond243.preheader:                            ; preds = %land.lhs.true238
  br i1 %cmp85, label %for.body246.lr.ph, label %for.end369, !dbg !404

for.body246.lr.ph:                                ; preds = %for.cond243.preheader
  %cmp247 = icmp eq i32* %owners.0, null, !dbg !406
  %cmp259 = icmp sgt i32 %msglvl, 3, !dbg !408
  %p_mtxDJJ268 = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 18, !dbg !410
  %p_mtxUJJ295 = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 19, !dbg !411
  %p_mtxLJJ322 = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 21, !dbg !413
  %p_mtxUJN340 = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 20, !dbg !415
  %p_mtxLNJ356 = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 22, !dbg !417
  br label %for.body246, !dbg !404

for.body246:                                      ; preds = %for.inc367, %for.body246.lr.ph
  %indvars.iv682 = phi i64 [ 0, %for.body246.lr.ph ], [ %indvars.iv.next683, %for.inc367 ]
  %nentD.0672 = phi i32 [ 0, %for.body246.lr.ph ], [ %nentD.1, %for.inc367 ]
  %nentL.0671 = phi i32 [ 0, %for.body246.lr.ph ], [ %nentL.2, %for.inc367 ]
  %nentU.0670 = phi i32 [ 0, %for.body246.lr.ph ], [ %nentU.2, %for.inc367 ]
  br i1 %cmp247, label %if.then254, label %lor.lhs.false249, !dbg !406

lor.lhs.false249:                                 ; preds = %for.body246
  %arrayidx251 = getelementptr inbounds i32* %owners.0, i64 %indvars.iv682, !dbg !406
  %46 = load i32* %arrayidx251, align 4, !dbg !406, !tbaa !318
  %cmp252 = icmp eq i32 %46, %myid, !dbg !406
  br i1 %cmp252, label %if.then254, label %for.inc367, !dbg !406

if.then254:                                       ; preds = %lor.lhs.false249, %for.body246
  %arrayidx256 = getelementptr inbounds i32* %call48, i64 %indvars.iv682, !dbg !419
  %47 = load i32* %arrayidx256, align 4, !dbg !419, !tbaa !318
  call void @llvm.dbg.value(metadata !{i32 %47}, i64 0, metadata !260), !dbg !419
  %arrayidx258 = getelementptr inbounds i32* %call49, i64 %indvars.iv682, !dbg !420
  %48 = load i32* %arrayidx258, align 4, !dbg !420, !tbaa !318
  call void @llvm.dbg.value(metadata !{i32 %48}, i64 0, metadata !263), !dbg !420
  %49 = trunc i64 %indvars.iv682 to i32, !dbg !421
  br i1 %cmp259, label %if.then261, label %if.end264, !dbg !408

if.then261:                                       ; preds = %if.then254
  %call262 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %msgFile, i8* getelementptr inbounds ([22 x i8]* @.str9, i64 0, i64 0), i32 %49, i32 %47, i32 %48) #6, !dbg !421
  %call263 = call i32 @fflush(%struct._IO_FILE* %msgFile) #6, !dbg !423
  br label %if.end264, !dbg !424

if.end264:                                        ; preds = %if.then254, %if.then261
  %call265 = call i32 @SubMtx_nbytesNeeded(i32 %type, i32 7, i32 %47, i32 %47, i32 %47) #6, !dbg !425
  call void @llvm.dbg.value(metadata !{i32 %call265}, i64 0, metadata !255), !dbg !425
  %call266 = call %struct._SubMtx* @SubMtxManager_newObjectOfSizeNbytes(%struct._SubMtxManager* %manager, i32 %call265) #6, !dbg !426
  call void @llvm.dbg.value(metadata !{%struct._SubMtx* %call266}, i64 0, metadata !253), !dbg !426
  call void @SubMtx_init(%struct._SubMtx* %call266, i32 %type, i32 7, i32 %49, i32 %49, i32 %47, i32 %47, i32 %47) #6, !dbg !427
  call void @SubMtx_diagonalInfo(%struct._SubMtx* %call266, i32* %ncol, double** %entries) #6, !dbg !428
  call void @SubMtx_zero(%struct._SubMtx* %call266) #6, !dbg !429
  %add = add nsw i32 %47, %nentD.0672, !dbg !430
  call void @llvm.dbg.value(metadata !{i32 %add}, i64 0, metadata !256), !dbg !430
  %50 = load %struct._SubMtx*** %p_mtxDJJ268, align 8, !dbg !410, !tbaa !293
  %arrayidx269 = getelementptr inbounds %struct._SubMtx** %50, i64 %indvars.iv682, !dbg !410
  store %struct._SubMtx* %call266, %struct._SubMtx** %arrayidx269, align 8, !dbg !410, !tbaa !293
  br i1 %cmp259, label %if.then272, label %if.end275, !dbg !431

if.then272:                                       ; preds = %if.end264
  %call273 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %msgFile, i8* getelementptr inbounds ([51 x i8]* @.str10, i64 0, i64 0), i32 %49, i32 %49, %struct._SubMtx* %call266, i32 %47, i32 %call265) #6, !dbg !432
  %call274 = call i32 @fflush(%struct._IO_FILE* %msgFile) #6, !dbg !434
  br label %if.end275, !dbg !435

if.end275:                                        ; preds = %if.then272, %if.end264
  %sub = add nsw i32 %47, -1, !dbg !436
  %mul276 = mul nsw i32 %sub, %47, !dbg !436
  %div = sdiv i32 %mul276, 2, !dbg !436
  call void @llvm.dbg.value(metadata !{i32 %div}, i64 0, metadata !261), !dbg !436
  store i32 %div, i32* %nent, align 4, !dbg !436, !tbaa !318
  %cmp277 = icmp sgt i32 %mul276, 1, !dbg !436
  br i1 %cmp277, label %if.then279, label %if.end331, !dbg !436

if.then279:                                       ; preds = %if.end275
  %call280 = call i32 @SubMtx_nbytesNeeded(i32 %type, i32 6, i32 %47, i32 %47, i32 %div) #6, !dbg !437
  call void @llvm.dbg.value(metadata !{i32 %call280}, i64 0, metadata !255), !dbg !437
  %call281 = call %struct._SubMtx* @SubMtxManager_newObjectOfSizeNbytes(%struct._SubMtxManager* %manager, i32 %call280) #6, !dbg !438
  call void @llvm.dbg.value(metadata !{%struct._SubMtx* %call281}, i64 0, metadata !253), !dbg !438
  call void @llvm.dbg.value(metadata !{i32* %nent}, i64 0, metadata !261), !dbg !439
  %51 = load i32* %nent, align 4, !dbg !439, !tbaa !318
  call void @SubMtx_init(%struct._SubMtx* %call281, i32 %type, i32 6, i32 %49, i32 %49, i32 %47, i32 %47, i32 %51) #6, !dbg !439
  call void @SubMtx_denseSubcolumnsInfo(%struct._SubMtx* %call281, i32* %ncol, i32* %nent, i32** %firstlocs, i32** %sizes, double** %entries) #6, !dbg !440
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !271), !dbg !441
  call void @llvm.dbg.value(metadata !{i32* %ncol}, i64 0, metadata !272), !dbg !441
  %52 = load i32* %ncol, align 4, !dbg !441, !tbaa !318
  %cmp283665 = icmp sgt i32 %52, 0, !dbg !441
  br i1 %cmp283665, label %for.body285.lr.ph, label %for.end292, !dbg !441

for.body285.lr.ph:                                ; preds = %if.then279
  %53 = load i32** %firstlocs, align 8, !dbg !443, !tbaa !293
  %54 = load i32** %sizes, align 8, !dbg !445, !tbaa !293
  br label %for.body285, !dbg !441

for.body285:                                      ; preds = %for.body285.lr.ph, %for.body285
  %indvars.iv = phi i64 [ 0, %for.body285.lr.ph ], [ %indvars.iv.next, %for.body285 ]
  call void @llvm.dbg.value(metadata !{i32** %firstlocs}, i64 0, metadata !274), !dbg !443
  %arrayidx287 = getelementptr inbounds i32* %53, i64 %indvars.iv, !dbg !443
  store i32 0, i32* %arrayidx287, align 4, !dbg !443, !tbaa !318
  call void @llvm.dbg.value(metadata !{i32** %sizes}, i64 0, metadata !275), !dbg !445
  %arrayidx289 = getelementptr inbounds i32* %54, i64 %indvars.iv, !dbg !445
  %55 = trunc i64 %indvars.iv to i32, !dbg !445
  store i32 %55, i32* %arrayidx289, align 4, !dbg !445, !tbaa !318
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !441
  call void @llvm.dbg.value(metadata !{i32* %ncol}, i64 0, metadata !272), !dbg !441
  %56 = load i32* %ncol, align 4, !dbg !441, !tbaa !318
  %57 = trunc i64 %indvars.iv.next to i32, !dbg !441
  %cmp283 = icmp slt i32 %57, %56, !dbg !441
  br i1 %cmp283, label %for.body285, label %for.end292, !dbg !441

for.end292:                                       ; preds = %for.body285, %if.then279
  call void @SubMtx_zero(%struct._SubMtx* %call281) #6, !dbg !446
  call void @llvm.dbg.value(metadata !{i32* %nent}, i64 0, metadata !261), !dbg !447
  %58 = load i32* %nent, align 4, !dbg !447, !tbaa !318
  %add293 = add nsw i32 %58, %nentU.0670, !dbg !447
  call void @llvm.dbg.value(metadata !{i32 %add293}, i64 0, metadata !258), !dbg !447
  %59 = load %struct._SubMtx*** %p_mtxUJJ295, align 8, !dbg !411, !tbaa !293
  %arrayidx296 = getelementptr inbounds %struct._SubMtx** %59, i64 %indvars.iv682, !dbg !411
  store %struct._SubMtx* %call281, %struct._SubMtx** %arrayidx296, align 8, !dbg !411, !tbaa !293
  br i1 %cmp259, label %if.then299, label %if.end302, !dbg !448

if.then299:                                       ; preds = %for.end292
  call void @llvm.dbg.value(metadata !{i32* %nent}, i64 0, metadata !261), !dbg !449
  %call300 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %msgFile, i8* getelementptr inbounds ([48 x i8]* @.str11, i64 0, i64 0), i32 %49, i32 %49, %struct._SubMtx* %call281, i32 %58, i32 %call280) #6, !dbg !449
  %call301 = call i32 @fflush(%struct._IO_FILE* %msgFile) #6, !dbg !451
  br label %if.end302, !dbg !452

if.end302:                                        ; preds = %if.then299, %for.end292
  %60 = load i32* %symmetryflag58, align 4, !dbg !453, !tbaa !318
  %cmp304 = icmp eq i32 %60, 2, !dbg !453
  br i1 %cmp304, label %if.then306, label %if.end331, !dbg !453

if.then306:                                       ; preds = %if.end302
  call void @llvm.dbg.value(metadata !{i32* %nent}, i64 0, metadata !261), !dbg !454
  %61 = load i32* %nent, align 4, !dbg !454, !tbaa !318
  %call307 = call i32 @SubMtx_nbytesNeeded(i32 %type, i32 5, i32 %47, i32 %47, i32 %61) #6, !dbg !454
  call void @llvm.dbg.value(metadata !{i32 %call307}, i64 0, metadata !255), !dbg !454
  %call308 = call %struct._SubMtx* @SubMtxManager_newObjectOfSizeNbytes(%struct._SubMtxManager* %manager, i32 %call307) #6, !dbg !455
  call void @llvm.dbg.value(metadata !{%struct._SubMtx* %call308}, i64 0, metadata !253), !dbg !455
  call void @llvm.dbg.value(metadata !{i32* %nent}, i64 0, metadata !261), !dbg !456
  %62 = load i32* %nent, align 4, !dbg !456, !tbaa !318
  call void @SubMtx_init(%struct._SubMtx* %call308, i32 %type, i32 5, i32 %49, i32 %49, i32 %47, i32 %47, i32 %62) #6, !dbg !456
  call void @SubMtx_denseSubrowsInfo(%struct._SubMtx* %call308, i32* %nrow, i32* %nent, i32** %firstlocs, i32** %sizes, double** %entries) #6, !dbg !457
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !270), !dbg !458
  call void @llvm.dbg.value(metadata !{i32* %nrow}, i64 0, metadata !273), !dbg !458
  %63 = load i32* %nrow, align 4, !dbg !458, !tbaa !318
  %cmp310667 = icmp sgt i32 %63, 0, !dbg !458
  br i1 %cmp310667, label %for.body312.lr.ph, label %for.end319, !dbg !458

for.body312.lr.ph:                                ; preds = %if.then306
  %64 = load i32** %firstlocs, align 8, !dbg !460, !tbaa !293
  %65 = load i32** %sizes, align 8, !dbg !462, !tbaa !293
  br label %for.body312, !dbg !458

for.body312:                                      ; preds = %for.body312.lr.ph, %for.body312
  %indvars.iv680 = phi i64 [ 0, %for.body312.lr.ph ], [ %indvars.iv.next681, %for.body312 ]
  call void @llvm.dbg.value(metadata !{i32** %firstlocs}, i64 0, metadata !274), !dbg !460
  %arrayidx314 = getelementptr inbounds i32* %64, i64 %indvars.iv680, !dbg !460
  store i32 0, i32* %arrayidx314, align 4, !dbg !460, !tbaa !318
  call void @llvm.dbg.value(metadata !{i32** %sizes}, i64 0, metadata !275), !dbg !462
  %arrayidx316 = getelementptr inbounds i32* %65, i64 %indvars.iv680, !dbg !462
  %66 = trunc i64 %indvars.iv680 to i32, !dbg !462
  store i32 %66, i32* %arrayidx316, align 4, !dbg !462, !tbaa !318
  %indvars.iv.next681 = add i64 %indvars.iv680, 1, !dbg !458
  call void @llvm.dbg.value(metadata !{i32* %nrow}, i64 0, metadata !273), !dbg !458
  %67 = load i32* %nrow, align 4, !dbg !458, !tbaa !318
  %68 = trunc i64 %indvars.iv.next681 to i32, !dbg !458
  %cmp310 = icmp slt i32 %68, %67, !dbg !458
  br i1 %cmp310, label %for.body312, label %for.end319, !dbg !458

for.end319:                                       ; preds = %for.body312, %if.then306
  call void @SubMtx_zero(%struct._SubMtx* %call308) #6, !dbg !463
  call void @llvm.dbg.value(metadata !{i32* %nent}, i64 0, metadata !261), !dbg !464
  %69 = load i32* %nent, align 4, !dbg !464, !tbaa !318
  %add320 = add nsw i32 %69, %nentL.0671, !dbg !464
  call void @llvm.dbg.value(metadata !{i32 %add320}, i64 0, metadata !257), !dbg !464
  %70 = load %struct._SubMtx*** %p_mtxLJJ322, align 8, !dbg !413, !tbaa !293
  %arrayidx323 = getelementptr inbounds %struct._SubMtx** %70, i64 %indvars.iv682, !dbg !413
  store %struct._SubMtx* %call308, %struct._SubMtx** %arrayidx323, align 8, !dbg !413, !tbaa !293
  br i1 %cmp259, label %if.then326, label %if.end331, !dbg !465

if.then326:                                       ; preds = %for.end319
  call void @llvm.dbg.value(metadata !{i32* %nent}, i64 0, metadata !261), !dbg !466
  %call327 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %msgFile, i8* getelementptr inbounds ([48 x i8]* @.str12, i64 0, i64 0), i32 %49, i32 %49, %struct._SubMtx* %call308, i32 %69, i32 %call307) #6, !dbg !466
  %call328 = call i32 @fflush(%struct._IO_FILE* %msgFile) #6, !dbg !468
  br label %if.end331, !dbg !469

if.end331:                                        ; preds = %if.end302, %if.then326, %for.end319, %if.end275
  %nentU.1 = phi i32 [ %add293, %if.then326 ], [ %add293, %for.end319 ], [ %add293, %if.end302 ], [ %nentU.0670, %if.end275 ]
  %nentL.1 = phi i32 [ %add320, %if.then326 ], [ %add320, %for.end319 ], [ %nentL.0671, %if.end302 ], [ %nentL.0671, %if.end275 ]
  %mul332 = mul nsw i32 %48, %47, !dbg !470
  call void @llvm.dbg.value(metadata !{i32 %mul332}, i64 0, metadata !261), !dbg !470
  store i32 %mul332, i32* %nent, align 4, !dbg !470, !tbaa !318
  %cmp333 = icmp sgt i32 %mul332, 0, !dbg !470
  br i1 %cmp333, label %if.then335, label %for.inc367, !dbg !470

if.then335:                                       ; preds = %if.end331
  %call336 = call i32 @SubMtx_nbytesNeeded(i32 %type, i32 1, i32 %47, i32 %48, i32 %mul332) #6, !dbg !471
  call void @llvm.dbg.value(metadata !{i32 %call336}, i64 0, metadata !255), !dbg !471
  %call337 = call %struct._SubMtx* @SubMtxManager_newObjectOfSizeNbytes(%struct._SubMtxManager* %manager, i32 %call336) #6, !dbg !472
  call void @llvm.dbg.value(metadata !{%struct._SubMtx* %call337}, i64 0, metadata !253), !dbg !472
  call void @llvm.dbg.value(metadata !{i32* %nent}, i64 0, metadata !261), !dbg !473
  %71 = load i32* %nent, align 4, !dbg !473, !tbaa !318
  call void @SubMtx_init(%struct._SubMtx* %call337, i32 %type, i32 1, i32 %49, i32 %15, i32 %47, i32 %48, i32 %71) #6, !dbg !473
  call void @SubMtx_zero(%struct._SubMtx* %call337) #6, !dbg !474
  call void @llvm.dbg.value(metadata !{i32* %nent}, i64 0, metadata !261), !dbg !475
  %72 = load i32* %nent, align 4, !dbg !475, !tbaa !318
  %add338 = add nsw i32 %72, %nentU.1, !dbg !475
  call void @llvm.dbg.value(metadata !{i32 %add338}, i64 0, metadata !258), !dbg !475
  %73 = load %struct._SubMtx*** %p_mtxUJN340, align 8, !dbg !415, !tbaa !293
  %arrayidx341 = getelementptr inbounds %struct._SubMtx** %73, i64 %indvars.iv682, !dbg !415
  store %struct._SubMtx* %call337, %struct._SubMtx** %arrayidx341, align 8, !dbg !415, !tbaa !293
  br i1 %cmp259, label %if.then344, label %if.end347, !dbg !476

if.then344:                                       ; preds = %if.then335
  call void @llvm.dbg.value(metadata !{i32* %nent}, i64 0, metadata !261), !dbg !477
  %call345 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %msgFile, i8* getelementptr inbounds ([48 x i8]* @.str11, i64 0, i64 0), i32 %49, i32 %15, %struct._SubMtx* %call337, i32 %72, i32 %call336) #6, !dbg !477
  %call346 = call i32 @fflush(%struct._IO_FILE* %msgFile) #6, !dbg !479
  br label %if.end347, !dbg !480

if.end347:                                        ; preds = %if.then344, %if.then335
  %74 = load i32* %symmetryflag58, align 4, !dbg !481, !tbaa !318
  %cmp349 = icmp eq i32 %74, 2, !dbg !481
  br i1 %cmp349, label %if.then351, label %for.inc367, !dbg !481

if.then351:                                       ; preds = %if.end347
  call void @llvm.dbg.value(metadata !{i32* %nent}, i64 0, metadata !261), !dbg !482
  %75 = load i32* %nent, align 4, !dbg !482, !tbaa !318
  %call352 = call i32 @SubMtx_nbytesNeeded(i32 %type, i32 0, i32 %48, i32 %47, i32 %75) #6, !dbg !482
  call void @llvm.dbg.value(metadata !{i32 %call352}, i64 0, metadata !255), !dbg !482
  %call353 = call %struct._SubMtx* @SubMtxManager_newObjectOfSizeNbytes(%struct._SubMtxManager* %manager, i32 %call352) #6, !dbg !483
  call void @llvm.dbg.value(metadata !{%struct._SubMtx* %call353}, i64 0, metadata !253), !dbg !483
  call void @llvm.dbg.value(metadata !{i32* %nent}, i64 0, metadata !261), !dbg !484
  %76 = load i32* %nent, align 4, !dbg !484, !tbaa !318
  call void @SubMtx_init(%struct._SubMtx* %call353, i32 %type, i32 0, i32 %15, i32 %49, i32 %48, i32 %47, i32 %76) #6, !dbg !484
  call void @SubMtx_zero(%struct._SubMtx* %call353) #6, !dbg !485
  call void @llvm.dbg.value(metadata !{i32* %nent}, i64 0, metadata !261), !dbg !486
  %77 = load i32* %nent, align 4, !dbg !486, !tbaa !318
  %add354 = add nsw i32 %77, %nentL.1, !dbg !486
  call void @llvm.dbg.value(metadata !{i32 %add354}, i64 0, metadata !257), !dbg !486
  %78 = load %struct._SubMtx*** %p_mtxLNJ356, align 8, !dbg !417, !tbaa !293
  %arrayidx357 = getelementptr inbounds %struct._SubMtx** %78, i64 %indvars.iv682, !dbg !417
  store %struct._SubMtx* %call353, %struct._SubMtx** %arrayidx357, align 8, !dbg !417, !tbaa !293
  br i1 %cmp259, label %if.then360, label %for.inc367, !dbg !487

if.then360:                                       ; preds = %if.then351
  call void @llvm.dbg.value(metadata !{i32* %nent}, i64 0, metadata !261), !dbg !488
  %call361 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %msgFile, i8* getelementptr inbounds ([48 x i8]* @.str12, i64 0, i64 0), i32 %15, i32 %49, %struct._SubMtx* %call353, i32 %77, i32 %call352) #6, !dbg !488
  %call362 = call i32 @fflush(%struct._IO_FILE* %msgFile) #6, !dbg !490
  br label %for.inc367, !dbg !491

for.inc367:                                       ; preds = %lor.lhs.false249, %if.end347, %if.then360, %if.then351, %if.end331
  %nentU.2 = phi i32 [ %add338, %if.then360 ], [ %add338, %if.then351 ], [ %add338, %if.end347 ], [ %nentU.1, %if.end331 ], [ %nentU.0670, %lor.lhs.false249 ]
  %nentL.2 = phi i32 [ %add354, %if.then360 ], [ %add354, %if.then351 ], [ %nentL.1, %if.end347 ], [ %nentL.1, %if.end331 ], [ %nentL.0671, %lor.lhs.false249 ]
  %nentD.1 = phi i32 [ %add, %if.then360 ], [ %add, %if.then351 ], [ %add, %if.end347 ], [ %add, %if.end331 ], [ %nentD.0672, %lor.lhs.false249 ]
  %indvars.iv.next683 = add i64 %indvars.iv682, 1, !dbg !404
  %lftr.wideiv = trunc i64 %indvars.iv.next683 to i32, !dbg !404
  %exitcond = icmp eq i32 %lftr.wideiv, %15, !dbg !404
  br i1 %exitcond, label %for.end369, label %for.body246, !dbg !404

for.end369:                                       ; preds = %for.inc367, %for.cond243.preheader
  %nentD.0.lcssa = phi i32 [ 0, %for.cond243.preheader ], [ %nentD.1, %for.inc367 ]
  %nentL.0.lcssa = phi i32 [ 0, %for.cond243.preheader ], [ %nentL.2, %for.inc367 ]
  %nentU.0.lcssa = phi i32 [ 0, %for.cond243.preheader ], [ %nentU.2, %for.inc367 ]
  %nentD370 = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 7, !dbg !492
  store i32 %nentD.0.lcssa, i32* %nentD370, align 4, !dbg !492, !tbaa !318
  %nentL371 = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 8, !dbg !493
  store i32 %nentL.0.lcssa, i32* %nentL371, align 4, !dbg !493, !tbaa !318
  %nentU372 = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 9, !dbg !494
  store i32 %nentU.0.lcssa, i32* %nentU372, align 4, !dbg !494, !tbaa !318
  br label %if.end373, !dbg !495

if.end373:                                        ; preds = %for.end369, %land.lhs.true238, %if.end233
  %lockflag.off = add i32 %lockflag, -1, !dbg !496
  %79 = icmp ult i32 %lockflag.off, 2, !dbg !496
  br i1 %79, label %if.then379, label %if.end382, !dbg !496

if.then379:                                       ; preds = %if.end373
  %call380 = call %struct._Lock* @Lock_new() #6, !dbg !497
  %lock = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 26, !dbg !497
  store %struct._Lock* %call380, %struct._Lock** %lock, align 8, !dbg !497, !tbaa !293
  call void @Lock_init(%struct._Lock* %call380, i32 %lockflag) #6, !dbg !499
  br label %if.end382, !dbg !500

if.end382:                                        ; preds = %if.end373, %if.then379
  %patchinfo = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 27, !dbg !501
  store %struct._PatchAndGoInfo* null, %struct._PatchAndGoInfo** %patchinfo, align 8, !dbg !501, !tbaa !293
  %cmp383 = icmp sgt i32 %msglvl, 3, !dbg !502
  br i1 %cmp383, label %if.then385, label %if.end389, !dbg !502

if.then385:                                       ; preds = %if.end382
  %lock386 = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 26, !dbg !503
  %80 = load %struct._Lock** %lock386, align 8, !dbg !503, !tbaa !293
  %call387 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %msgFile, i8* getelementptr inbounds ([23 x i8]* @.str13, i64 0, i64 0), %struct._Lock* %80) #6, !dbg !503
  %call388 = call i32 @fflush(%struct._IO_FILE* %msgFile) #6, !dbg !505
  br label %if.end389, !dbg !506

if.end389:                                        ; preds = %if.then385, %if.end382
  ret void, !dbg !507
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #2

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32) #3

; Function Attrs: optsize
declare i32* @ETree_nodwghts(%struct._ETree*) #4

; Function Attrs: optsize
declare i32* @ETree_bndwghts(%struct._ETree*) #4

; Function Attrs: optsize
declare i32* @ETree_vtxToFront(%struct._ETree*) #4

; Function Attrs: optsize
declare i32* @IV_entries(%struct._IV*) #4

; Function Attrs: optsize
declare void @FrontMtx_setDefaultFields(%struct._FrontMtx*) #4

; Function Attrs: optsize
declare %struct._IV* @IV_new() #4

; Function Attrs: optsize
declare void @IV_init(%struct._IV*, i32, i32*) #4

; Function Attrs: optsize
declare void @IV_fill(%struct._IV*, i32) #4

; Function Attrs: optsize
declare %struct._IVL* @IVL_new() #4

; Function Attrs: optsize
declare void @IVL_init1(%struct._IVL*, i32, i32) #4

; Function Attrs: nounwind optsize
declare noalias i8* @malloc(i64) #2

; Function Attrs: nounwind optsize
declare i32 @fflush(%struct._IO_FILE* nocapture) #2

; Function Attrs: optsize
declare i32 @SubMtx_nbytesNeeded(i32, i32, i32, i32, i32) #4

; Function Attrs: optsize
declare %struct._SubMtx* @SubMtxManager_newObjectOfSizeNbytes(%struct._SubMtxManager*, i32) #4

; Function Attrs: optsize
declare void @SubMtx_init(%struct._SubMtx*, i32, i32, i32, i32, i32, i32, i32) #4

; Function Attrs: optsize
declare void @SubMtx_diagonalInfo(%struct._SubMtx*, i32*, double**) #4

; Function Attrs: optsize
declare void @SubMtx_zero(%struct._SubMtx*) #4

; Function Attrs: optsize
declare void @SubMtx_denseSubcolumnsInfo(%struct._SubMtx*, i32*, i32*, i32**, i32**, double**) #4

; Function Attrs: optsize
declare void @SubMtx_denseSubrowsInfo(%struct._SubMtx*, i32*, i32*, i32**, i32**, double**) #4

; Function Attrs: optsize
declare %struct._Lock* @Lock_new() #4

; Function Attrs: optsize
declare void @Lock_init(%struct._Lock*, i32) #4

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #1

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #5

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #5

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { nounwind optsize }
attributes #7 = { noreturn nounwind optsize }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_init.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_init.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"FrontMtx_init", metadata !"FrontMtx_init", metadata !"", i32 61, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._FrontMtx*, %struct._ETree*, %struct._IVL*, i32, i32, i32, i32, i32, i32, %struct._IV*, %struct._SubMtxManager*, i32, %struct._IO_FILE*)* @FrontMtx_init, null, null, metadata !239, i32 75} ; [ DW_TAG_subprogram ] [line 61] [def] [scope 75] [FrontMtx_init]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_init.c]
!6 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{null, metadata !8, metadata !37, metadata !59, metadata !14, metadata !14, metadata !14, metadata !14, metadata !14, metadata !14, metadata !46, metadata !145, metadata !14, metadata !183}
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
!239 = metadata !{metadata !240, metadata !241, metadata !242, metadata !243, metadata !244, metadata !245, metadata !246, metadata !247, metadata !248, metadata !249, metadata !250, metadata !251, metadata !252, metadata !253, metadata !254, metadata !255, metadata !256, metadata !257, metadata !258, metadata !259, metadata !260, metadata !261, metadata !262, metadata !263, metadata !264, metadata !265, metadata !266, metadata !267, metadata !268, metadata !270, metadata !271, metadata !272, metadata !273, metadata !274, metadata !275}
!240 = metadata !{i32 786689, metadata !4, metadata !"frontmtx", metadata !5, i32 16777278, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [frontmtx] [line 62]
!241 = metadata !{i32 786689, metadata !4, metadata !"frontETree", metadata !5, i32 33554495, metadata !37, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [frontETree] [line 63]
!242 = metadata !{i32 786689, metadata !4, metadata !"symbfacIVL", metadata !5, i32 50331712, metadata !59, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [symbfacIVL] [line 64]
!243 = metadata !{i32 786689, metadata !4, metadata !"type", metadata !5, i32 67108929, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [type] [line 65]
!244 = metadata !{i32 786689, metadata !4, metadata !"symmetryflag", metadata !5, i32 83886146, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [symmetryflag] [line 66]
!245 = metadata !{i32 786689, metadata !4, metadata !"sparsityflag", metadata !5, i32 100663363, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [sparsityflag] [line 67]
!246 = metadata !{i32 786689, metadata !4, metadata !"pivotingflag", metadata !5, i32 117440580, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [pivotingflag] [line 68]
!247 = metadata !{i32 786689, metadata !4, metadata !"lockflag", metadata !5, i32 134217797, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [lockflag] [line 69]
!248 = metadata !{i32 786689, metadata !4, metadata !"myid", metadata !5, i32 150995014, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [myid] [line 70]
!249 = metadata !{i32 786689, metadata !4, metadata !"ownersIV", metadata !5, i32 167772231, metadata !46, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ownersIV] [line 71]
!250 = metadata !{i32 786689, metadata !4, metadata !"manager", metadata !5, i32 184549448, metadata !145, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [manager] [line 72]
!251 = metadata !{i32 786689, metadata !4, metadata !"msglvl", metadata !5, i32 201326665, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [msglvl] [line 73]
!252 = metadata !{i32 786689, metadata !4, metadata !"msgFile", metadata !5, i32 218103882, metadata !183, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [msgFile] [line 74]
!253 = metadata !{i32 786688, metadata !4, metadata !"mtx", metadata !5, i32 76, metadata !87, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [mtx] [line 76]
!254 = metadata !{i32 786688, metadata !4, metadata !"J", metadata !5, i32 77, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [J] [line 77]
!255 = metadata !{i32 786688, metadata !4, metadata !"nbytes", metadata !5, i32 77, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nbytes] [line 77]
!256 = metadata !{i32 786688, metadata !4, metadata !"nentD", metadata !5, i32 77, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nentD] [line 77]
!257 = metadata !{i32 786688, metadata !4, metadata !"nentL", metadata !5, i32 77, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nentL] [line 77]
!258 = metadata !{i32 786688, metadata !4, metadata !"nentU", metadata !5, i32 77, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nentU] [line 77]
!259 = metadata !{i32 786688, metadata !4, metadata !"neqns", metadata !5, i32 77, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [neqns] [line 77]
!260 = metadata !{i32 786688, metadata !4, metadata !"nD", metadata !5, i32 77, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nD] [line 77]
!261 = metadata !{i32 786688, metadata !4, metadata !"nent", metadata !5, i32 77, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nent] [line 77]
!262 = metadata !{i32 786688, metadata !4, metadata !"nfront", metadata !5, i32 77, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nfront] [line 77]
!263 = metadata !{i32 786688, metadata !4, metadata !"nU", metadata !5, i32 77, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nU] [line 77]
!264 = metadata !{i32 786688, metadata !4, metadata !"bndwghts", metadata !5, i32 78, metadata !33, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [bndwghts] [line 78]
!265 = metadata !{i32 786688, metadata !4, metadata !"nodwghts", metadata !5, i32 78, metadata !33, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nodwghts] [line 78]
!266 = metadata !{i32 786688, metadata !4, metadata !"owners", metadata !5, i32 78, metadata !33, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [owners] [line 78]
!267 = metadata !{i32 786688, metadata !4, metadata !"vtxToFront", metadata !5, i32 78, metadata !33, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [vtxToFront] [line 78]
!268 = metadata !{i32 786688, metadata !269, metadata !"entries", metadata !5, i32 230, metadata !100, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [entries] [line 230]
!269 = metadata !{i32 786443, metadata !1, metadata !4, i32 229, i32 0, i32 37} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_init.c]
!270 = metadata !{i32 786688, metadata !269, metadata !"ii", metadata !5, i32 231, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ii] [line 231]
!271 = metadata !{i32 786688, metadata !269, metadata !"jj", metadata !5, i32 231, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [jj] [line 231]
!272 = metadata !{i32 786688, metadata !269, metadata !"ncol", metadata !5, i32 231, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ncol] [line 231]
!273 = metadata !{i32 786688, metadata !269, metadata !"nrow", metadata !5, i32 231, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nrow] [line 231]
!274 = metadata !{i32 786688, metadata !269, metadata !"firstlocs", metadata !5, i32 232, metadata !33, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [firstlocs] [line 232]
!275 = metadata !{i32 786688, metadata !269, metadata !"sizes", metadata !5, i32 232, metadata !33, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sizes] [line 232]
!276 = metadata !{i32 62, i32 0, metadata !4, null}
!277 = metadata !{i32 63, i32 0, metadata !4, null}
!278 = metadata !{i32 64, i32 0, metadata !4, null}
!279 = metadata !{i32 65, i32 0, metadata !4, null}
!280 = metadata !{i32 66, i32 0, metadata !4, null}
!281 = metadata !{i32 67, i32 0, metadata !4, null}
!282 = metadata !{i32 68, i32 0, metadata !4, null}
!283 = metadata !{i32 69, i32 0, metadata !4, null}
!284 = metadata !{i32 70, i32 0, metadata !4, null}
!285 = metadata !{i32 71, i32 0, metadata !4, null}
!286 = metadata !{i32 72, i32 0, metadata !4, null}
!287 = metadata !{i32 73, i32 0, metadata !4, null}
!288 = metadata !{i32 74, i32 0, metadata !4, null}
!289 = metadata !{i32 77, i32 0, metadata !4, null}
!290 = metadata !{i32 84, i32 0, metadata !4, null}
!291 = metadata !{i32 87, i32 0, metadata !292, null}
!292 = metadata !{i32 786443, metadata !1, metadata !4, i32 86, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_init.c]
!293 = metadata !{metadata !"any pointer", metadata !294}
!294 = metadata !{metadata !"omnipotent char", metadata !295}
!295 = metadata !{metadata !"Simple C/C++ TBAA"}
!296 = metadata !{i32 93, i32 0, metadata !292, null}
!297 = metadata !{i32 95, i32 0, metadata !4, null}
!298 = metadata !{i32 96, i32 0, metadata !299, null}
!299 = metadata !{i32 786443, metadata !1, metadata !4, i32 95, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_init.c]
!300 = metadata !{i32 99, i32 0, metadata !299, null}
!301 = metadata !{i32 101, i32 0, metadata !4, null}
!302 = metadata !{i32 104, i32 0, metadata !303, null}
!303 = metadata !{i32 786443, metadata !1, metadata !4, i32 103, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_init.c]
!304 = metadata !{i32 108, i32 0, metadata !303, null}
!305 = metadata !{i32 110, i32 0, metadata !4, null}
!306 = metadata !{i32 114, i32 0, metadata !307, null}
!307 = metadata !{i32 786443, metadata !1, metadata !4, i32 113, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_init.c]
!308 = metadata !{i32 118, i32 0, metadata !307, null}
!309 = metadata !{i32 120, i32 0, metadata !4, null}
!310 = metadata !{i32 122, i32 0, metadata !311, null}
!311 = metadata !{i32 786443, metadata !1, metadata !4, i32 121, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_init.c]
!312 = metadata !{i32 124, i32 0, metadata !311, null}
!313 = metadata !{i32 126, i32 0, metadata !4, null}
!314 = metadata !{i32 129, i32 0, metadata !315, null}
!315 = metadata !{i32 786443, metadata !1, metadata !4, i32 128, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_init.c]
!316 = metadata !{i32 133, i32 0, metadata !315, null}
!317 = metadata !{i32 135, i32 0, metadata !4, null}
!318 = metadata !{metadata !"int", metadata !294}
!319 = metadata !{i32 136, i32 0, metadata !4, null}
!320 = metadata !{i32 137, i32 0, metadata !4, null}
!321 = metadata !{i32 138, i32 0, metadata !4, null}
!322 = metadata !{i32 139, i32 0, metadata !4, null}
!323 = metadata !{i32 140, i32 0, metadata !4, null}
!324 = metadata !{i32 141, i32 0, metadata !325, null}
!325 = metadata !{i32 786443, metadata !1, metadata !4, i32 140, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_init.c]
!326 = metadata !{i32 142, i32 0, metadata !325, null}
!327 = metadata !{i32 150, i32 0, metadata !4, null}
!328 = metadata !{i32 156, i32 0, metadata !4, null}
!329 = metadata !{i32 157, i32 0, metadata !4, null}
!330 = metadata !{i32 158, i32 0, metadata !4, null}
!331 = metadata !{i32 159, i32 0, metadata !4, null}
!332 = metadata !{i32 160, i32 0, metadata !4, null}
!333 = metadata !{i32 161, i32 0, metadata !4, null}
!334 = metadata !{i32 162, i32 0, metadata !4, null}
!335 = metadata !{i32 168, i32 0, metadata !4, null}
!336 = metadata !{i32 169, i32 0, metadata !4, null}
!337 = metadata !{i32 170, i32 0, metadata !4, null}
!338 = metadata !{i32 176, i32 0, metadata !4, null}
!339 = metadata !{i32 177, i32 0, metadata !4, null}
!340 = metadata !{i32 178, i32 0, metadata !341, null}
!341 = metadata !{i32 786443, metadata !1, metadata !4, i32 177, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_init.c]
!342 = metadata !{i32 179, i32 0, metadata !341, null}
!343 = metadata !{i32 180, i32 0, metadata !341, null}
!344 = metadata !{i32 181, i32 0, metadata !345, null}
!345 = metadata !{i32 786443, metadata !1, metadata !4, i32 180, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_init.c]
!346 = metadata !{i32 188, i32 0, metadata !4, null}
!347 = metadata !{i32 189, i32 0, metadata !348, null}
!348 = metadata !{i32 786443, metadata !1, metadata !4, i32 188, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_init.c]
!349 = metadata !{i32 190, i32 0, metadata !348, null}
!350 = metadata !{i32 191, i32 0, metadata !348, null}
!351 = metadata !{i32 192, i32 0, metadata !352, null}
!352 = metadata !{i32 786443, metadata !1, metadata !348, i32 191, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_init.c]
!353 = metadata !{i32 193, i32 0, metadata !352, null}
!354 = metadata !{i32 194, i32 0, metadata !352, null}
!355 = metadata !{i32 201, i32 0, metadata !4, null}
!356 = metadata !{i32 201, i32 0, metadata !357, null}
!357 = metadata !{i32 786443, metadata !1, metadata !4, i32 201, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_init.c]
!358 = metadata !{i32 201, i32 0, metadata !359, null}
!359 = metadata !{i32 786443, metadata !1, metadata !357, i32 201, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_init.c]
!360 = metadata !{i32 201, i32 0, metadata !361, null}
!361 = metadata !{i32 786443, metadata !1, metadata !4, i32 201, i32 0, i32 15} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_init.c]
!362 = metadata !{i32 202, i32 0, metadata !363, null}
!363 = metadata !{i32 786443, metadata !1, metadata !4, i32 202, i32 0, i32 16} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_init.c]
!364 = metadata !{i32 202, i32 0, metadata !365, null}
!365 = metadata !{i32 786443, metadata !1, metadata !363, i32 202, i32 0, i32 17} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_init.c]
!366 = metadata !{i32 203, i32 0, metadata !367, null}
!367 = metadata !{i32 786443, metadata !1, metadata !4, i32 203, i32 0, i32 20} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_init.c]
!368 = metadata !{i32 203, i32 0, metadata !369, null}
!369 = metadata !{i32 786443, metadata !1, metadata !367, i32 203, i32 0, i32 21} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_init.c]
!370 = metadata !{i32 201, i32 0, metadata !371, null}
!371 = metadata !{i32 786443, metadata !1, metadata !4, i32 201, i32 0, i32 14} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_init.c]
!372 = metadata !{i32 202, i32 0, metadata !373, null}
!373 = metadata !{i32 786443, metadata !1, metadata !4, i32 202, i32 0, i32 18} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_init.c]
!374 = metadata !{i32 204, i32 0, metadata !375, null}
!375 = metadata !{i32 786443, metadata !1, metadata !4, i32 204, i32 0, i32 24} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_init.c]
!376 = metadata !{i32 205, i32 0, metadata !377, null}
!377 = metadata !{i32 786443, metadata !1, metadata !375, i32 204, i32 0, i32 25} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_init.c]
!378 = metadata !{i32 206, i32 0, metadata !377, null}
!379 = metadata !{i32 207, i32 0, metadata !377, null}
!380 = metadata !{i32 209, i32 0, metadata !4, null}
!381 = metadata !{i32 210, i32 0, metadata !382, null}
!382 = metadata !{i32 786443, metadata !1, metadata !4, i32 209, i32 0, i32 26} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_init.c]
!383 = metadata !{i32 210, i32 0, metadata !384, null}
!384 = metadata !{i32 786443, metadata !1, metadata !382, i32 210, i32 0, i32 27} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_init.c]
!385 = metadata !{i32 210, i32 0, metadata !386, null}
!386 = metadata !{i32 786443, metadata !1, metadata !384, i32 210, i32 0, i32 28} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_init.c]
!387 = metadata !{i32 210, i32 0, metadata !388, null}
!388 = metadata !{i32 786443, metadata !1, metadata !382, i32 210, i32 0, i32 30} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_init.c]
!389 = metadata !{i32 211, i32 0, metadata !390, null}
!390 = metadata !{i32 786443, metadata !1, metadata !382, i32 211, i32 0, i32 31} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_init.c]
!391 = metadata !{i32 211, i32 0, metadata !392, null}
!392 = metadata !{i32 786443, metadata !1, metadata !390, i32 211, i32 0, i32 32} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_init.c]
!393 = metadata !{i32 210, i32 0, metadata !394, null}
!394 = metadata !{i32 786443, metadata !1, metadata !382, i32 210, i32 0, i32 29} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_init.c]
!395 = metadata !{i32 211, i32 0, metadata !396, null}
!396 = metadata !{i32 786443, metadata !1, metadata !382, i32 211, i32 0, i32 33} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_init.c]
!397 = metadata !{i32 212, i32 0, metadata !398, null}
!398 = metadata !{i32 786443, metadata !1, metadata !382, i32 212, i32 0, i32 35} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_init.c]
!399 = metadata !{i32 213, i32 0, metadata !400, null}
!400 = metadata !{i32 786443, metadata !1, metadata !398, i32 212, i32 0, i32 36} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_init.c]
!401 = metadata !{i32 214, i32 0, metadata !400, null}
!402 = metadata !{i32 222, i32 0, metadata !4, null}
!403 = metadata !{i32 228, i32 0, metadata !4, null}
!404 = metadata !{i32 235, i32 0, metadata !405, null}
!405 = metadata !{i32 786443, metadata !1, metadata !269, i32 235, i32 0, i32 38} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_init.c]
!406 = metadata !{i32 236, i32 0, metadata !407, null}
!407 = metadata !{i32 786443, metadata !1, metadata !405, i32 235, i32 0, i32 39} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_init.c]
!408 = metadata !{i32 239, i32 0, metadata !409, null}
!409 = metadata !{i32 786443, metadata !1, metadata !407, i32 236, i32 0, i32 40} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_init.c]
!410 = metadata !{i32 255, i32 0, metadata !409, null}
!411 = metadata !{i32 281, i32 0, metadata !412, null}
!412 = metadata !{i32 786443, metadata !1, metadata !409, i32 262, i32 0, i32 43} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_init.c]
!413 = metadata !{i32 303, i32 0, metadata !414, null}
!414 = metadata !{i32 786443, metadata !1, metadata !412, i32 288, i32 0, i32 47} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_init.c]
!415 = metadata !{i32 325, i32 0, metadata !416, null}
!416 = metadata !{i32 786443, metadata !1, metadata !409, i32 312, i32 0, i32 51} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_init.c]
!417 = metadata !{i32 341, i32 0, metadata !418, null}
!418 = metadata !{i32 786443, metadata !1, metadata !416, i32 332, i32 0, i32 53} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_init.c]
!419 = metadata !{i32 237, i32 0, metadata !409, null}
!420 = metadata !{i32 238, i32 0, metadata !409, null}
!421 = metadata !{i32 240, i32 0, metadata !422, null}
!422 = metadata !{i32 786443, metadata !1, metadata !409, i32 239, i32 0, i32 41} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_init.c]
!423 = metadata !{i32 241, i32 0, metadata !422, null}
!424 = metadata !{i32 242, i32 0, metadata !422, null}
!425 = metadata !{i32 248, i32 0, metadata !409, null}
!426 = metadata !{i32 250, i32 0, metadata !409, null}
!427 = metadata !{i32 251, i32 0, metadata !409, null}
!428 = metadata !{i32 252, i32 0, metadata !409, null}
!429 = metadata !{i32 253, i32 0, metadata !409, null}
!430 = metadata !{i32 254, i32 0, metadata !409, null}
!431 = metadata !{i32 256, i32 0, metadata !409, null}
!432 = metadata !{i32 257, i32 0, metadata !433, null}
!433 = metadata !{i32 786443, metadata !1, metadata !409, i32 256, i32 0, i32 42} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_init.c]
!434 = metadata !{i32 260, i32 0, metadata !433, null}
!435 = metadata !{i32 261, i32 0, metadata !433, null}
!436 = metadata !{i32 262, i32 0, metadata !409, null}
!437 = metadata !{i32 268, i32 0, metadata !412, null}
!438 = metadata !{i32 270, i32 0, metadata !412, null}
!439 = metadata !{i32 271, i32 0, metadata !412, null}
!440 = metadata !{i32 273, i32 0, metadata !412, null}
!441 = metadata !{i32 275, i32 0, metadata !442, null}
!442 = metadata !{i32 786443, metadata !1, metadata !412, i32 275, i32 0, i32 44} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_init.c]
!443 = metadata !{i32 276, i32 0, metadata !444, null}
!444 = metadata !{i32 786443, metadata !1, metadata !442, i32 275, i32 0, i32 45} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_init.c]
!445 = metadata !{i32 277, i32 0, metadata !444, null}
!446 = metadata !{i32 279, i32 0, metadata !412, null}
!447 = metadata !{i32 280, i32 0, metadata !412, null}
!448 = metadata !{i32 282, i32 0, metadata !412, null}
!449 = metadata !{i32 283, i32 0, metadata !450, null}
!450 = metadata !{i32 786443, metadata !1, metadata !412, i32 282, i32 0, i32 46} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_init.c]
!451 = metadata !{i32 286, i32 0, metadata !450, null}
!452 = metadata !{i32 287, i32 0, metadata !450, null}
!453 = metadata !{i32 288, i32 0, metadata !412, null}
!454 = metadata !{i32 289, i32 0, metadata !414, null}
!455 = metadata !{i32 291, i32 0, metadata !414, null}
!456 = metadata !{i32 293, i32 0, metadata !414, null}
!457 = metadata !{i32 295, i32 0, metadata !414, null}
!458 = metadata !{i32 297, i32 0, metadata !459, null}
!459 = metadata !{i32 786443, metadata !1, metadata !414, i32 297, i32 0, i32 48} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_init.c]
!460 = metadata !{i32 298, i32 0, metadata !461, null}
!461 = metadata !{i32 786443, metadata !1, metadata !459, i32 297, i32 0, i32 49} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_init.c]
!462 = metadata !{i32 299, i32 0, metadata !461, null}
!463 = metadata !{i32 301, i32 0, metadata !414, null}
!464 = metadata !{i32 302, i32 0, metadata !414, null}
!465 = metadata !{i32 304, i32 0, metadata !414, null}
!466 = metadata !{i32 305, i32 0, metadata !467, null}
!467 = metadata !{i32 786443, metadata !1, metadata !414, i32 304, i32 0, i32 50} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_init.c]
!468 = metadata !{i32 308, i32 0, metadata !467, null}
!469 = metadata !{i32 309, i32 0, metadata !467, null}
!470 = metadata !{i32 312, i32 0, metadata !409, null}
!471 = metadata !{i32 318, i32 0, metadata !416, null}
!472 = metadata !{i32 320, i32 0, metadata !416, null}
!473 = metadata !{i32 321, i32 0, metadata !416, null}
!474 = metadata !{i32 323, i32 0, metadata !416, null}
!475 = metadata !{i32 324, i32 0, metadata !416, null}
!476 = metadata !{i32 326, i32 0, metadata !416, null}
!477 = metadata !{i32 327, i32 0, metadata !478, null}
!478 = metadata !{i32 786443, metadata !1, metadata !416, i32 326, i32 0, i32 52} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_init.c]
!479 = metadata !{i32 330, i32 0, metadata !478, null}
!480 = metadata !{i32 331, i32 0, metadata !478, null}
!481 = metadata !{i32 332, i32 0, metadata !416, null}
!482 = metadata !{i32 333, i32 0, metadata !418, null}
!483 = metadata !{i32 335, i32 0, metadata !418, null}
!484 = metadata !{i32 337, i32 0, metadata !418, null}
!485 = metadata !{i32 339, i32 0, metadata !418, null}
!486 = metadata !{i32 340, i32 0, metadata !418, null}
!487 = metadata !{i32 342, i32 0, metadata !418, null}
!488 = metadata !{i32 343, i32 0, metadata !489, null}
!489 = metadata !{i32 786443, metadata !1, metadata !418, i32 342, i32 0, i32 54} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_init.c]
!490 = metadata !{i32 346, i32 0, metadata !489, null}
!491 = metadata !{i32 347, i32 0, metadata !489, null}
!492 = metadata !{i32 352, i32 0, metadata !269, null}
!493 = metadata !{i32 353, i32 0, metadata !269, null}
!494 = metadata !{i32 354, i32 0, metadata !269, null}
!495 = metadata !{i32 355, i32 0, metadata !269, null}
!496 = metadata !{i32 356, i32 0, metadata !4, null}
!497 = metadata !{i32 363, i32 0, metadata !498, null}
!498 = metadata !{i32 786443, metadata !1, metadata !4, i32 357, i32 0, i32 55} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_init.c]
!499 = metadata !{i32 364, i32 0, metadata !498, null}
!500 = metadata !{i32 365, i32 0, metadata !498, null}
!501 = metadata !{i32 371, i32 0, metadata !4, null}
!502 = metadata !{i32 372, i32 0, metadata !4, null}
!503 = metadata !{i32 373, i32 0, metadata !504, null}
!504 = metadata !{i32 786443, metadata !1, metadata !4, i32 372, i32 0, i32 56} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_init.c]
!505 = metadata !{i32 374, i32 0, metadata !504, null}
!506 = metadata !{i32 375, i32 0, metadata !504, null}
!507 = metadata !{i32 377, i32 0, metadata !4, null}
