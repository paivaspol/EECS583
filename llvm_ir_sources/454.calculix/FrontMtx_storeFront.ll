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
  %nfront1 = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 0
  %0 = load i32* %nfront1, align 4, !tbaa !0
  %manager2 = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 25
  %1 = load %struct._SubMtxManager** %manager2, align 8, !tbaa !3
  %symmetryflag = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 3
  %2 = load i32* %symmetryflag, align 4, !tbaa !0
  %switch = icmp ult i32 %2, 2
  br i1 %switch, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %pivotingflag = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 5
  %3 = load i32* %pivotingflag, align 4, !tbaa !0
  %cmp5 = icmp eq i32 %3, 1
  br i1 %cmp5, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  call void @IV_sizeAndEntries(%struct._IV* %pivotsizesIV, i32* %npivot, i32** %pivotsizes) #4
  br label %if.end

if.else:                                          ; preds = %entry, %land.lhs.true
  store i32 0, i32* %npivot, align 4, !tbaa !0
  store i32* null, i32** %pivotsizes, align 8, !tbaa !3
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %id = getelementptr inbounds %struct._Chv* %frontJ, i64 0, i32 0
  %4 = load i32* %id, align 4, !tbaa !0
  call void @Chv_dimensions(%struct._Chv* %frontJ, i32* %nD, i32* %nL, i32* %nU) #4
  call void @Chv_columnIndices(%struct._Chv* %frontJ, i32* %ncol, i32** %colindJ) #4
  call void @Chv_rowIndices(%struct._Chv* %frontJ, i32* %nrow, i32** %rowindJ) #4
  %cmp6 = icmp sgt i32 %msglvl, 2
  br i1 %cmp6, label %if.then7, label %if.end9

if.then7:                                         ; preds = %if.end
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %msgFile, i8* getelementptr inbounds ([37 x i8]* @.str, i64 0, i64 0), i32 %4) #4
  %call8 = call i32 @fflush(%struct._IO_FILE* %msgFile) #4
  br label %if.end9

if.end9:                                          ; preds = %if.then7, %if.end
  %pivotingflag10 = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 5
  %5 = load i32* %pivotingflag10, align 4, !tbaa !0
  %cmp11 = icmp eq i32 %5, 1
  br i1 %cmp11, label %if.then12, label %if.end46

if.then12:                                        ; preds = %if.end9
  %lock = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 26
  %6 = load %struct._Lock** %lock, align 8, !tbaa !3
  %cmp13 = icmp eq %struct._Lock* %6, null
  br i1 %cmp13, label %if.end21, label %if.then14

if.then14:                                        ; preds = %if.then12
  br i1 %cmp6, label %if.then16, label %if.end19

if.then16:                                        ; preds = %if.then14
  %7 = call i64 @fwrite(i8* getelementptr inbounds ([15 x i8]* @.str1, i64 0, i64 0), i64 14, i64 1, %struct._IO_FILE* %msgFile)
  %call18 = call i32 @fflush(%struct._IO_FILE* %msgFile) #4
  %.pre716 = load %struct._Lock** %lock, align 8, !tbaa !3
  br label %if.end19

if.end19:                                         ; preds = %if.then16, %if.then14
  %8 = phi %struct._Lock* [ %.pre716, %if.then16 ], [ %6, %if.then14 ]
  call void @Lock_lock(%struct._Lock* %8) #4
  %nlocks = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 28
  %9 = load i32* %nlocks, align 4, !tbaa !0
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %nlocks, align 4, !tbaa !0
  br label %if.end21

if.end21:                                         ; preds = %if.then12, %if.end19
  %10 = load i32* %nD, align 4, !tbaa !0
  call void @FrontMtx_setFrontSize(%struct._FrontMtx* %frontmtx, i32 %4, i32 %10) #4
  br i1 %cmp6, label %if.then23, label %if.end26

if.then23:                                        ; preds = %if.end21
  %call24 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %msgFile, i8* getelementptr inbounds ([33 x i8]* @.str2, i64 0, i64 0), i32 %4) #4
  %call25 = call i32 @fflush(%struct._IO_FILE* %msgFile) #4
  br label %if.end26

if.end26:                                         ; preds = %if.then23, %if.end21
  %coladjIVL = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 15
  %11 = load %struct._IVL** %coladjIVL, align 8, !tbaa !3
  %12 = load i32* %ncol, align 4, !tbaa !0
  %13 = load i32** %colindJ, align 8, !tbaa !3
  call void @IVL_setList(%struct._IVL* %11, i32 %4, i32 %12, i32* %13) #4
  %14 = load i32* %symmetryflag, align 4, !tbaa !0
  %cmp28 = icmp eq i32 %14, 2
  br i1 %cmp28, label %if.then29, label %if.end35

if.then29:                                        ; preds = %if.end26
  br i1 %cmp6, label %if.then31, label %if.end34

if.then31:                                        ; preds = %if.then29
  %call32 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %msgFile, i8* getelementptr inbounds ([30 x i8]* @.str3, i64 0, i64 0), i32 %4) #4
  %call33 = call i32 @fflush(%struct._IO_FILE* %msgFile) #4
  br label %if.end34

if.end34:                                         ; preds = %if.then31, %if.then29
  %rowadjIVL = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 14
  %15 = load %struct._IVL** %rowadjIVL, align 8, !tbaa !3
  %16 = load i32* %nrow, align 4, !tbaa !0
  %17 = load i32** %rowindJ, align 8, !tbaa !3
  call void @IVL_setList(%struct._IVL* %15, i32 %4, i32 %16, i32* %17) #4
  br label %if.end35

if.end35:                                         ; preds = %if.end34, %if.end26
  %18 = load %struct._Lock** %lock, align 8, !tbaa !3
  %cmp37 = icmp eq %struct._Lock* %18, null
  br i1 %cmp37, label %if.end46, label %if.then38

if.then38:                                        ; preds = %if.end35
  br i1 %cmp6, label %if.then40, label %if.end43

if.then40:                                        ; preds = %if.then38
  %19 = call i64 @fwrite(i8* getelementptr inbounds ([17 x i8]* @.str4, i64 0, i64 0), i64 16, i64 1, %struct._IO_FILE* %msgFile)
  %call42 = call i32 @fflush(%struct._IO_FILE* %msgFile) #4
  %.pre = load %struct._Lock** %lock, align 8, !tbaa !3
  br label %if.end43

if.end43:                                         ; preds = %if.then40, %if.then38
  %20 = phi %struct._Lock* [ %.pre, %if.then40 ], [ %18, %if.then38 ]
  call void @Lock_unlock(%struct._Lock* %20) #4
  br label %if.end46

if.end46:                                         ; preds = %if.end35, %if.end43, %if.end9
  %21 = load i32* %nD, align 4, !tbaa !0
  %cmp47 = icmp eq i32 %21, 0
  br i1 %cmp47, label %return, label %if.end49

if.end49:                                         ; preds = %if.end46
  %22 = load i32** %pivotsizes, align 8, !tbaa !3
  %cmp50 = icmp eq i32* %22, null
  br i1 %cmp50, label %if.else73, label %if.then51

if.then51:                                        ; preds = %if.end49
  %23 = load i32* %npivot, align 4, !tbaa !0
  %call52 = call i32 @Chv_countEntries(%struct._Chv* %frontJ, i32 %23, i32* %22, i32 2) #4
  store i32 %call52, i32* %nent, align 4, !tbaa !0
  %type = getelementptr inbounds %struct._Chv* %frontJ, i64 0, i32 4
  %24 = load i32* %type, align 4, !tbaa !0
  %25 = load i32* %nD, align 4, !tbaa !0
  %call53 = call i32 @SubMtx_nbytesNeeded(i32 %24, i32 8, i32 %25, i32 %25, i32 %call52) #4
  %call54 = call %struct._SubMtx* @SubMtxManager_newObjectOfSizeNbytes(%struct._SubMtxManager* %1, i32 %call53) #4
  %26 = load i32* %symmetryflag, align 4, !tbaa !0
  switch i32 %26, label %if.end65 [
    i32 0, label %if.then57
    i32 1, label %if.then62
  ]

if.then57:                                        ; preds = %if.then51
  %27 = load i32* %type, align 4, !tbaa !0
  %28 = load i32* %nD, align 4, !tbaa !0
  %29 = load i32* %nent, align 4, !tbaa !0
  call void @SubMtx_init(%struct._SubMtx* %call54, i32 %27, i32 8, i32 %4, i32 %4, i32 %28, i32 %28, i32 %29) #4
  br label %if.end65

if.then62:                                        ; preds = %if.then51
  %30 = load i32* %type, align 4, !tbaa !0
  %31 = load i32* %nD, align 4, !tbaa !0
  %32 = load i32* %nent, align 4, !tbaa !0
  call void @SubMtx_init(%struct._SubMtx* %call54, i32 %30, i32 9, i32 %4, i32 %4, i32 %31, i32 %31, i32 %32) #4
  br label %if.end65

if.end65:                                         ; preds = %if.then51, %if.then62, %if.then57
  call void @SubMtx_blockDiagonalInfo(%struct._SubMtx* %call54, i32* %nrow, i32* %nent, i32** %pivots, double** %entries) #4
  %33 = load i32* %nD, align 4, !tbaa !0
  %34 = load i32** %pivots, align 8, !tbaa !3
  call void @IVzero(i32 %33, i32* %34) #4
  %35 = load i32* %npivot, align 4, !tbaa !0
  %36 = load i32** %pivots, align 8, !tbaa !3
  %37 = load i32** %pivotsizes, align 8, !tbaa !3
  call void @IVcopy(i32 %35, i32* %36, i32* %37) #4
  %38 = load i32* %npivot, align 4, !tbaa !0
  %39 = load i32** %pivotsizes, align 8, !tbaa !3
  %40 = load i32* %nent, align 4, !tbaa !0
  %41 = load double** %entries, align 8, !tbaa !3
  %call66 = call i32 @Chv_copyEntriesToVector(%struct._Chv* %frontJ, i32 %38, i32* %39, i32 %40, double* %41, i32 2, i32 0) #4
  br i1 %cmp6, label %if.then68, label %if.end72

if.then68:                                        ; preds = %if.end65
  %42 = call i64 @fwrite(i8* getelementptr inbounds ([25 x i8]* @.str5, i64 0, i64 0), i64 24, i64 1, %struct._IO_FILE* %msgFile)
  %call70 = call i32 @SubMtx_writeForHumanEye(%struct._SubMtx* %call54, %struct._IO_FILE* %msgFile) #4
  %call71 = call i32 @fflush(%struct._IO_FILE* %msgFile) #4
  br label %if.end72

if.end72:                                         ; preds = %if.then68, %if.end65
  %43 = load i32* %nent, align 4, !tbaa !0
  %nentD = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 7
  %44 = load i32* %nentD, align 4, !tbaa !0
  %add = add nsw i32 %44, %43
  store i32 %add, i32* %nentD, align 4, !tbaa !0
  %idxprom92.pre = sext i32 %4 to i64
  %p_mtxDJJ93.pre = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 18
  br label %if.end91

if.else73:                                        ; preds = %if.end49
  %idxprom = sext i32 %4 to i64
  %p_mtxDJJ = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 18
  %45 = load %struct._SubMtx*** %p_mtxDJJ, align 8, !tbaa !3
  %arrayidx = getelementptr inbounds %struct._SubMtx** %45, i64 %idxprom
  %46 = load %struct._SubMtx** %arrayidx, align 8, !tbaa !3
  %cmp74 = icmp eq %struct._SubMtx* %46, null
  br i1 %cmp74, label %if.then75, label %if.end80

if.then75:                                        ; preds = %if.else73
  %type76 = getelementptr inbounds %struct._Chv* %frontJ, i64 0, i32 4
  %47 = load i32* %type76, align 4, !tbaa !0
  %call77 = call i32 @SubMtx_nbytesNeeded(i32 %47, i32 7, i32 %21, i32 %21, i32 %21) #4
  %call78 = call %struct._SubMtx* @SubMtxManager_newObjectOfSizeNbytes(%struct._SubMtxManager* %1, i32 %call77) #4
  %48 = load i32* %type76, align 4, !tbaa !0
  %49 = load i32* %nD, align 4, !tbaa !0
  call void @SubMtx_init(%struct._SubMtx* %call78, i32 %48, i32 7, i32 %4, i32 %4, i32 %49, i32 %49, i32 %49) #4
  br label %if.end80

if.end80:                                         ; preds = %if.then75, %if.else73
  %mtx.0 = phi %struct._SubMtx* [ %call78, %if.then75 ], [ %46, %if.else73 ]
  call void @SubMtx_diagonalInfo(%struct._SubMtx* %mtx.0, i32* %nent, double** %entries) #4
  %50 = load i32* %npivot, align 4, !tbaa !0
  %51 = load i32** %pivotsizes, align 8, !tbaa !3
  %52 = load i32* %nent, align 4, !tbaa !0
  %53 = load double** %entries, align 8, !tbaa !3
  %call81 = call i32 @Chv_copyEntriesToVector(%struct._Chv* %frontJ, i32 %50, i32* %51, i32 %52, double* %53, i32 2, i32 0) #4
  %54 = load i32* %nD, align 4, !tbaa !0
  %nentD82 = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 7
  %55 = load i32* %nentD82, align 4, !tbaa !0
  %add83 = add nsw i32 %55, %54
  store i32 %add83, i32* %nentD82, align 4, !tbaa !0
  br i1 %cmp6, label %if.then85, label %if.end91

if.then85:                                        ; preds = %if.end80
  %56 = call i64 @fwrite(i8* getelementptr inbounds ([21 x i8]* @.str6, i64 0, i64 0), i64 20, i64 1, %struct._IO_FILE* %msgFile)
  %57 = load i32* %nent, align 4, !tbaa !0
  %58 = load double** %entries, align 8, !tbaa !3
  call void @DVfprintf(%struct._IO_FILE* %msgFile, i32 %57, double* %58) #4
  %59 = call i64 @fwrite(i8* getelementptr inbounds ([25 x i8]* @.str5, i64 0, i64 0), i64 24, i64 1, %struct._IO_FILE* %msgFile)
  %call88 = call i32 @SubMtx_writeForHumanEye(%struct._SubMtx* %mtx.0, %struct._IO_FILE* %msgFile) #4
  %call89 = call i32 @fflush(%struct._IO_FILE* %msgFile) #4
  br label %if.end91

if.end91:                                         ; preds = %if.end80, %if.then85, %if.end72
  %p_mtxDJJ93.pre-phi = phi %struct._SubMtx*** [ %p_mtxDJJ, %if.end80 ], [ %p_mtxDJJ, %if.then85 ], [ %p_mtxDJJ93.pre, %if.end72 ]
  %idxprom92.pre-phi = phi i64 [ %idxprom, %if.end80 ], [ %idxprom, %if.then85 ], [ %idxprom92.pre, %if.end72 ]
  %mtx.1 = phi %struct._SubMtx* [ %mtx.0, %if.end80 ], [ %mtx.0, %if.then85 ], [ %call54, %if.end72 ]
  %60 = load %struct._SubMtx*** %p_mtxDJJ93.pre-phi, align 8, !tbaa !3
  %arrayidx94 = getelementptr inbounds %struct._SubMtx** %60, i64 %idxprom92.pre-phi
  store %struct._SubMtx* %mtx.1, %struct._SubMtx** %arrayidx94, align 8, !tbaa !3
  call void @SubMtx_columnIndices(%struct._SubMtx* %mtx.1, i32* %ncol, i32** %colind) #4
  %61 = load i32* %ncol, align 4, !tbaa !0
  %62 = load i32** %colind, align 8, !tbaa !3
  %63 = load i32** %colindJ, align 8, !tbaa !3
  call void @IVcopy(i32 %61, i32* %62, i32* %63) #4
  call void @SubMtx_rowIndices(%struct._SubMtx* %mtx.1, i32* %nrow, i32** %rowind) #4
  %64 = load i32* %nrow, align 4, !tbaa !0
  %65 = load i32** %rowind, align 8, !tbaa !3
  %66 = load i32** %rowindJ, align 8, !tbaa !3
  call void @IVcopy(i32 %64, i32* %65, i32* %66) #4
  %sparsityflag = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 4
  %67 = load i32* %sparsityflag, align 4, !tbaa !0
  %cmp95 = icmp eq i32 %67, 0
  %68 = load i32* %npivot, align 4, !tbaa !0
  %69 = load i32** %pivotsizes, align 8, !tbaa !3
  br i1 %cmp95, label %if.then96, label %if.else166

if.then96:                                        ; preds = %if.end91
  %call97 = call i32 @Chv_countEntries(%struct._Chv* %frontJ, i32 %68, i32* %69, i32 6) #4
  store i32 %call97, i32* %nent, align 4, !tbaa !0
  %cmp98 = icmp sgt i32 %call97, 0
  br i1 %cmp98, label %if.then99, label %if.end192

if.then99:                                        ; preds = %if.then96
  %p_mtxUJJ = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 19
  %70 = load %struct._SubMtx*** %p_mtxUJJ, align 8, !tbaa !3
  %arrayidx101 = getelementptr inbounds %struct._SubMtx** %70, i64 %idxprom92.pre-phi
  %71 = load %struct._SubMtx** %arrayidx101, align 8, !tbaa !3
  %cmp102 = icmp eq %struct._SubMtx* %71, null
  br i1 %cmp102, label %if.then103, label %if.end108

if.then103:                                       ; preds = %if.then99
  %type104 = getelementptr inbounds %struct._Chv* %frontJ, i64 0, i32 4
  %72 = load i32* %type104, align 4, !tbaa !0
  %73 = load i32* %nD, align 4, !tbaa !0
  %call105 = call i32 @SubMtx_nbytesNeeded(i32 %72, i32 6, i32 %73, i32 %73, i32 %call97) #4
  %call106 = call %struct._SubMtx* @SubMtxManager_newObjectOfSizeNbytes(%struct._SubMtxManager* %1, i32 %call105) #4
  %74 = load i32* %type104, align 4, !tbaa !0
  %75 = load i32* %nD, align 4, !tbaa !0
  %76 = load i32* %nent, align 4, !tbaa !0
  call void @SubMtx_init(%struct._SubMtx* %call106, i32 %74, i32 6, i32 %4, i32 %4, i32 %75, i32 %75, i32 %76) #4
  br label %if.end108

if.end108:                                        ; preds = %if.then103, %if.then99
  %mtx.2 = phi %struct._SubMtx* [ %call106, %if.then103 ], [ %71, %if.then99 ]
  call void @SubMtx_denseSubcolumnsInfo(%struct._SubMtx* %mtx.2, i32* %ncol, i32* %nent, i32** %firstlocs, i32** %sizes, double** %entries) #4
  %77 = load i32** %pivotsizes, align 8, !tbaa !3
  %cmp109 = icmp eq i32* %77, null
  %78 = load i32* %nD, align 4, !tbaa !0
  %cmp140706 = icmp sgt i32 %78, 0
  br i1 %cmp109, label %for.cond139.preheader, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end108
  br i1 %cmp140706, label %for.body.lr.ph, label %if.end149

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %79 = load i32** %firstlocs, align 8, !tbaa !3
  %80 = load i32** %sizes, align 8, !tbaa !3
  br label %for.body

for.cond139.preheader:                            ; preds = %if.end108
  br i1 %cmp140706, label %for.body141.lr.ph, label %if.end149

for.body141.lr.ph:                                ; preds = %for.cond139.preheader
  %81 = load i32** %firstlocs, align 8, !tbaa !3
  %82 = load i32** %sizes, align 8, !tbaa !3
  br label %for.body141

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %indvars.iv714 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next715, %for.inc ]
  %jcol.0710 = phi i32 [ 0, %for.body.lr.ph ], [ %jcol.1, %for.inc ]
  %arrayidx113 = getelementptr inbounds i32* %77, i64 %indvars.iv714
  %83 = load i32* %arrayidx113, align 4, !tbaa !0
  switch i32 %83, label %for.inc [
    i32 1, label %if.then115
    i32 2, label %if.then123
  ]

if.then115:                                       ; preds = %for.body
  %idxprom116 = sext i32 %jcol.0710 to i64
  %arrayidx117 = getelementptr inbounds i32* %79, i64 %idxprom116
  store i32 0, i32* %arrayidx117, align 4, !tbaa !0
  %arrayidx119 = getelementptr inbounds i32* %80, i64 %idxprom116
  store i32 %jcol.0710, i32* %arrayidx119, align 4, !tbaa !0
  %inc120 = add nsw i32 %jcol.0710, 1
  br label %for.inc

if.then123:                                       ; preds = %for.body
  %add124 = add nsw i32 %jcol.0710, 1
  %idxprom125 = sext i32 %add124 to i64
  %arrayidx126 = getelementptr inbounds i32* %79, i64 %idxprom125
  store i32 0, i32* %arrayidx126, align 4, !tbaa !0
  %idxprom127 = sext i32 %jcol.0710 to i64
  %arrayidx128 = getelementptr inbounds i32* %79, i64 %idxprom127
  store i32 0, i32* %arrayidx128, align 4, !tbaa !0
  %arrayidx131 = getelementptr inbounds i32* %80, i64 %idxprom125
  store i32 %jcol.0710, i32* %arrayidx131, align 4, !tbaa !0
  %arrayidx133 = getelementptr inbounds i32* %80, i64 %idxprom127
  store i32 %jcol.0710, i32* %arrayidx133, align 4, !tbaa !0
  %add134 = add nsw i32 %jcol.0710, 2
  br label %for.inc

for.inc:                                          ; preds = %for.body, %if.then115, %if.then123
  %jcol.1 = phi i32 [ %inc120, %if.then115 ], [ %add134, %if.then123 ], [ %jcol.0710, %for.body ]
  %indvars.iv.next715 = add i64 %indvars.iv714, 1
  %84 = load i32* %nD, align 4, !tbaa !0
  %cmp111 = icmp slt i32 %jcol.1, %84
  br i1 %cmp111, label %for.body, label %if.end149

for.body141:                                      ; preds = %for.body141.lr.ph, %for.body141
  %indvars.iv712 = phi i64 [ 0, %for.body141.lr.ph ], [ %indvars.iv.next713, %for.body141 ]
  %arrayidx143 = getelementptr inbounds i32* %81, i64 %indvars.iv712
  store i32 0, i32* %arrayidx143, align 4, !tbaa !0
  %arrayidx145 = getelementptr inbounds i32* %82, i64 %indvars.iv712
  %85 = trunc i64 %indvars.iv712 to i32
  store i32 %85, i32* %arrayidx145, align 4, !tbaa !0
  %indvars.iv.next713 = add i64 %indvars.iv712, 1
  %86 = load i32* %nD, align 4, !tbaa !0
  %87 = trunc i64 %indvars.iv.next713 to i32
  %cmp140 = icmp slt i32 %87, %86
  br i1 %cmp140, label %for.body141, label %if.end149

if.end149:                                        ; preds = %for.cond.preheader, %for.inc, %for.cond139.preheader, %for.body141
  %88 = phi i32* [ null, %for.body141 ], [ null, %for.cond139.preheader ], [ %77, %for.inc ], [ %77, %for.cond.preheader ]
  %89 = load i32* %npivot, align 4, !tbaa !0
  %90 = load i32* %nent, align 4, !tbaa !0
  %91 = load double** %entries, align 8, !tbaa !3
  %call150 = call i32 @Chv_copyEntriesToVector(%struct._Chv* %frontJ, i32 %89, i32* %88, i32 %90, double* %91, i32 6, i32 1) #4
  %92 = load %struct._SubMtx*** %p_mtxUJJ, align 8, !tbaa !3
  %arrayidx153 = getelementptr inbounds %struct._SubMtx** %92, i64 %idxprom92.pre-phi
  store %struct._SubMtx* %mtx.2, %struct._SubMtx** %arrayidx153, align 8, !tbaa !3
  call void @SubMtx_columnIndices(%struct._SubMtx* %mtx.2, i32* %ncol, i32** %colind) #4
  %93 = load i32* %ncol, align 4, !tbaa !0
  %94 = load i32** %colind, align 8, !tbaa !3
  %95 = load i32** %colindJ, align 8, !tbaa !3
  call void @IVcopy(i32 %93, i32* %94, i32* %95) #4
  call void @SubMtx_rowIndices(%struct._SubMtx* %mtx.2, i32* %nrow, i32** %rowind) #4
  %96 = load i32* %nrow, align 4, !tbaa !0
  %97 = load i32** %rowind, align 8, !tbaa !3
  %98 = load i32** %rowindJ, align 8, !tbaa !3
  call void @IVcopy(i32 %96, i32* %97, i32* %98) #4
  %99 = load i32* %pivotingflag10, align 4, !tbaa !0
  %cmp155 = icmp eq i32 %99, 1
  br i1 %cmp155, label %if.then156, label %if.end158

if.then156:                                       ; preds = %if.end149
  %100 = load i32* %nent, align 4, !tbaa !0
  %nentU = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 9
  %101 = load i32* %nentU, align 4, !tbaa !0
  %add157 = add nsw i32 %101, %100
  store i32 %add157, i32* %nentU, align 4, !tbaa !0
  br label %if.end158

if.end158:                                        ; preds = %if.then156, %if.end149
  br i1 %cmp6, label %if.then160, label %if.end192

if.then160:                                       ; preds = %if.end158
  %102 = call i64 @fwrite(i8* getelementptr inbounds ([14 x i8]* @.str7, i64 0, i64 0), i64 13, i64 1, %struct._IO_FILE* %msgFile)
  %call162 = call i32 @SubMtx_writeForHumanEye(%struct._SubMtx* %mtx.2, %struct._IO_FILE* %msgFile) #4
  %call163 = call i32 @fflush(%struct._IO_FILE* %msgFile) #4
  br label %if.end192

if.else166:                                       ; preds = %if.end91
  %call167 = call i32 @Chv_countBigEntries(%struct._Chv* %frontJ, i32 %68, i32* %69, i32 6, double %droptol) #4
  store i32 %call167, i32* %nent, align 4, !tbaa !0
  %cmp168 = icmp sgt i32 %call167, 0
  br i1 %cmp168, label %if.then169, label %if.end192

if.then169:                                       ; preds = %if.else166
  %type170 = getelementptr inbounds %struct._Chv* %frontJ, i64 0, i32 4
  %103 = load i32* %type170, align 4, !tbaa !0
  %104 = load i32* %nD, align 4, !tbaa !0
  %call171 = call i32 @SubMtx_nbytesNeeded(i32 %103, i32 3, i32 %104, i32 %104, i32 %call167) #4
  br i1 %cmp6, label %if.then173, label %if.end176

if.then173:                                       ; preds = %if.then169
  %105 = load i32* %nD, align 4, !tbaa !0
  %106 = load i32* %nent, align 4, !tbaa !0
  %call174 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %msgFile, i8* getelementptr inbounds ([39 x i8]* @.str8, i64 0, i64 0), i32 %4, i32 %4, i32 %105, i32 %106, i32 %call171) #4
  %call175 = call i32 @fflush(%struct._IO_FILE* %msgFile) #4
  br label %if.end176

if.end176:                                        ; preds = %if.then173, %if.then169
  %call177 = call %struct._SubMtx* @SubMtxManager_newObjectOfSizeNbytes(%struct._SubMtxManager* %1, i32 %call171) #4
  %107 = load i32* %type170, align 4, !tbaa !0
  %108 = load i32* %nD, align 4, !tbaa !0
  %109 = load i32* %nent, align 4, !tbaa !0
  call void @SubMtx_init(%struct._SubMtx* %call177, i32 %107, i32 3, i32 %4, i32 %4, i32 %108, i32 %108, i32 %109) #4
  call void @SubMtx_sparseColumnsInfo(%struct._SubMtx* %call177, i32* %ncol, i32* %nent, i32** %sizes, i32** %indices, double** %entries) #4
  %110 = load i32* %npivot, align 4, !tbaa !0
  %111 = load i32** %pivotsizes, align 8, !tbaa !3
  %112 = load i32** %sizes, align 8, !tbaa !3
  %113 = load i32** %indices, align 8, !tbaa !3
  %114 = load double** %entries, align 8, !tbaa !3
  %call179 = call i32 @Chv_copyBigEntriesToVector(%struct._Chv* %frontJ, i32 %110, i32* %111, i32* %112, i32* %113, double* %114, i32 6, i32 1, double %droptol) #4
  %p_mtxUJJ181 = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 19
  %115 = load %struct._SubMtx*** %p_mtxUJJ181, align 8, !tbaa !3
  %arrayidx182 = getelementptr inbounds %struct._SubMtx** %115, i64 %idxprom92.pre-phi
  store %struct._SubMtx* %call177, %struct._SubMtx** %arrayidx182, align 8, !tbaa !3
  call void @SubMtx_columnIndices(%struct._SubMtx* %call177, i32* %ncol, i32** %colind) #4
  %116 = load i32* %ncol, align 4, !tbaa !0
  %117 = load i32** %colind, align 8, !tbaa !3
  %118 = load i32** %colindJ, align 8, !tbaa !3
  call void @IVcopy(i32 %116, i32* %117, i32* %118) #4
  call void @SubMtx_rowIndices(%struct._SubMtx* %call177, i32* %nrow, i32** %rowind) #4
  %119 = load i32* %nrow, align 4, !tbaa !0
  %120 = load i32** %rowind, align 8, !tbaa !3
  %121 = load i32** %rowindJ, align 8, !tbaa !3
  call void @IVcopy(i32 %119, i32* %120, i32* %121) #4
  %122 = load i32* %nent, align 4, !tbaa !0
  %nentU183 = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 9
  %123 = load i32* %nentU183, align 4, !tbaa !0
  %add184 = add nsw i32 %123, %122
  store i32 %add184, i32* %nentU183, align 4, !tbaa !0
  br i1 %cmp6, label %if.then186, label %if.end192

if.then186:                                       ; preds = %if.end176
  %124 = call i64 @fwrite(i8* getelementptr inbounds ([14 x i8]* @.str7, i64 0, i64 0), i64 13, i64 1, %struct._IO_FILE* %msgFile)
  %call188 = call i32 @SubMtx_writeForHumanEye(%struct._SubMtx* %call177, %struct._IO_FILE* %msgFile) #4
  %call189 = call i32 @fflush(%struct._IO_FILE* %msgFile) #4
  br label %if.end192

if.end192:                                        ; preds = %if.else166, %if.then186, %if.end176, %if.then96, %if.then160, %if.end158
  %125 = load i32* %sparsityflag, align 4, !tbaa !0
  %cmp194 = icmp eq i32 %125, 0
  %126 = load i32* %npivot, align 4, !tbaa !0
  %127 = load i32** %pivotsizes, align 8, !tbaa !3
  br i1 %cmp194, label %if.then195, label %if.else225

if.then195:                                       ; preds = %if.end192
  %call196 = call i32 @Chv_countEntries(%struct._Chv* %frontJ, i32 %126, i32* %127, i32 7) #4
  store i32 %call196, i32* %nent, align 4, !tbaa !0
  %cmp197 = icmp sgt i32 %call196, 0
  br i1 %cmp197, label %if.then198, label %if.end253

if.then198:                                       ; preds = %if.then195
  %p_mtxUJN = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 20
  %128 = load %struct._SubMtx*** %p_mtxUJN, align 8, !tbaa !3
  %arrayidx200 = getelementptr inbounds %struct._SubMtx** %128, i64 %idxprom92.pre-phi
  %129 = load %struct._SubMtx** %arrayidx200, align 8, !tbaa !3
  %cmp201 = icmp eq %struct._SubMtx* %129, null
  br i1 %cmp201, label %if.then202, label %if.end207

if.then202:                                       ; preds = %if.then198
  %type203 = getelementptr inbounds %struct._Chv* %frontJ, i64 0, i32 4
  %130 = load i32* %type203, align 4, !tbaa !0
  %131 = load i32* %nD, align 4, !tbaa !0
  %132 = load i32* %nU, align 4, !tbaa !0
  %call204 = call i32 @SubMtx_nbytesNeeded(i32 %130, i32 1, i32 %131, i32 %132, i32 %call196) #4
  %call205 = call %struct._SubMtx* @SubMtxManager_newObjectOfSizeNbytes(%struct._SubMtxManager* %1, i32 %call204) #4
  %133 = load i32* %type203, align 4, !tbaa !0
  %134 = load i32* %nD, align 4, !tbaa !0
  %135 = load i32* %nU, align 4, !tbaa !0
  %136 = load i32* %nent, align 4, !tbaa !0
  call void @SubMtx_init(%struct._SubMtx* %call205, i32 %133, i32 1, i32 %4, i32 %0, i32 %134, i32 %135, i32 %136) #4
  br label %if.end207

if.end207:                                        ; preds = %if.then202, %if.then198
  %mtx.3 = phi %struct._SubMtx* [ %call205, %if.then202 ], [ %129, %if.then198 ]
  call void @SubMtx_denseInfo(%struct._SubMtx* %mtx.3, i32* %nrow, i32* %ncol, i32* %inc1, i32* %inc2, double** %entries) #4
  %137 = load i32* %npivot, align 4, !tbaa !0
  %138 = load i32** %pivotsizes, align 8, !tbaa !3
  %139 = load i32* %nent, align 4, !tbaa !0
  %140 = load double** %entries, align 8, !tbaa !3
  %call208 = call i32 @Chv_copyEntriesToVector(%struct._Chv* %frontJ, i32 %137, i32* %138, i32 %139, double* %140, i32 7, i32 1) #4
  %141 = load %struct._SubMtx*** %p_mtxUJN, align 8, !tbaa !3
  %arrayidx211 = getelementptr inbounds %struct._SubMtx** %141, i64 %idxprom92.pre-phi
  store %struct._SubMtx* %mtx.3, %struct._SubMtx** %arrayidx211, align 8, !tbaa !3
  call void @SubMtx_columnIndices(%struct._SubMtx* %mtx.3, i32* %ncol, i32** %colind) #4
  %142 = load i32* %ncol, align 4, !tbaa !0
  %143 = load i32** %colind, align 8, !tbaa !3
  %144 = load i32** %colindJ, align 8, !tbaa !3
  %145 = load i32* %nD, align 4, !tbaa !0
  %idx.ext = sext i32 %145 to i64
  %add.ptr = getelementptr inbounds i32* %144, i64 %idx.ext
  call void @IVcopy(i32 %142, i32* %143, i32* %add.ptr) #4
  call void @SubMtx_rowIndices(%struct._SubMtx* %mtx.3, i32* %nrow, i32** %rowind) #4
  %146 = load i32* %nrow, align 4, !tbaa !0
  %147 = load i32** %rowind, align 8, !tbaa !3
  %148 = load i32** %rowindJ, align 8, !tbaa !3
  call void @IVcopy(i32 %146, i32* %147, i32* %148) #4
  %149 = load i32* %pivotingflag10, align 4, !tbaa !0
  %cmp213 = icmp eq i32 %149, 1
  br i1 %cmp213, label %if.then214, label %if.end217

if.then214:                                       ; preds = %if.end207
  %150 = load i32* %nent, align 4, !tbaa !0
  %nentU215 = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 9
  %151 = load i32* %nentU215, align 4, !tbaa !0
  %add216 = add nsw i32 %151, %150
  store i32 %add216, i32* %nentU215, align 4, !tbaa !0
  br label %if.end217

if.end217:                                        ; preds = %if.then214, %if.end207
  br i1 %cmp6, label %if.then219, label %if.end253

if.then219:                                       ; preds = %if.end217
  %152 = call i64 @fwrite(i8* getelementptr inbounds ([15 x i8]* @.str9, i64 0, i64 0), i64 14, i64 1, %struct._IO_FILE* %msgFile)
  %call221 = call i32 @SubMtx_writeForHumanEye(%struct._SubMtx* %mtx.3, %struct._IO_FILE* %msgFile) #4
  %call222 = call i32 @fflush(%struct._IO_FILE* %msgFile) #4
  br label %if.end253

if.else225:                                       ; preds = %if.end192
  %call226 = call i32 @Chv_countBigEntries(%struct._Chv* %frontJ, i32 %126, i32* %127, i32 7, double %droptol) #4
  store i32 %call226, i32* %nent, align 4, !tbaa !0
  %cmp227 = icmp sgt i32 %call226, 0
  br i1 %cmp227, label %if.then228, label %if.end253

if.then228:                                       ; preds = %if.else225
  %type229 = getelementptr inbounds %struct._Chv* %frontJ, i64 0, i32 4
  %153 = load i32* %type229, align 4, !tbaa !0
  %154 = load i32* %nD, align 4, !tbaa !0
  %155 = load i32* %nU, align 4, !tbaa !0
  %call230 = call i32 @SubMtx_nbytesNeeded(i32 %153, i32 3, i32 %154, i32 %155, i32 %call226) #4
  br i1 %cmp6, label %if.then232, label %if.end235

if.then232:                                       ; preds = %if.then228
  %156 = load i32* %nD, align 4, !tbaa !0
  %157 = load i32* %nU, align 4, !tbaa !0
  %158 = load i32* %nent, align 4, !tbaa !0
  %call233 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %msgFile, i8* getelementptr inbounds ([46 x i8]* @.str10, i64 0, i64 0), i32 %4, i32 %0, i32 %156, i32 %157, i32 %158, i32 %call230) #4
  %call234 = call i32 @fflush(%struct._IO_FILE* %msgFile) #4
  br label %if.end235

if.end235:                                        ; preds = %if.then232, %if.then228
  %call236 = call %struct._SubMtx* @SubMtxManager_newObjectOfSizeNbytes(%struct._SubMtxManager* %1, i32 %call230) #4
  %159 = load i32* %type229, align 4, !tbaa !0
  %160 = load i32* %nD, align 4, !tbaa !0
  %161 = load i32* %nU, align 4, !tbaa !0
  %162 = load i32* %nent, align 4, !tbaa !0
  call void @SubMtx_init(%struct._SubMtx* %call236, i32 %159, i32 3, i32 %4, i32 %0, i32 %160, i32 %161, i32 %162) #4
  call void @SubMtx_sparseColumnsInfo(%struct._SubMtx* %call236, i32* %nrow, i32* %nent, i32** %sizes, i32** %indices, double** %entries) #4
  %163 = load i32* %npivot, align 4, !tbaa !0
  %164 = load i32** %pivotsizes, align 8, !tbaa !3
  %165 = load i32** %sizes, align 8, !tbaa !3
  %166 = load i32** %indices, align 8, !tbaa !3
  %167 = load double** %entries, align 8, !tbaa !3
  %call238 = call i32 @Chv_copyBigEntriesToVector(%struct._Chv* %frontJ, i32 %163, i32* %164, i32* %165, i32* %166, double* %167, i32 7, i32 1, double %droptol) #4
  %p_mtxUJN240 = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 20
  %168 = load %struct._SubMtx*** %p_mtxUJN240, align 8, !tbaa !3
  %arrayidx241 = getelementptr inbounds %struct._SubMtx** %168, i64 %idxprom92.pre-phi
  store %struct._SubMtx* %call236, %struct._SubMtx** %arrayidx241, align 8, !tbaa !3
  call void @SubMtx_columnIndices(%struct._SubMtx* %call236, i32* %ncol, i32** %colind) #4
  %169 = load i32* %ncol, align 4, !tbaa !0
  %170 = load i32** %colind, align 8, !tbaa !3
  %171 = load i32** %colindJ, align 8, !tbaa !3
  %172 = load i32* %nD, align 4, !tbaa !0
  %idx.ext242 = sext i32 %172 to i64
  %add.ptr243 = getelementptr inbounds i32* %171, i64 %idx.ext242
  call void @IVcopy(i32 %169, i32* %170, i32* %add.ptr243) #4
  call void @SubMtx_rowIndices(%struct._SubMtx* %call236, i32* %nrow, i32** %rowind) #4
  %173 = load i32* %nrow, align 4, !tbaa !0
  %174 = load i32** %rowind, align 8, !tbaa !3
  %175 = load i32** %rowindJ, align 8, !tbaa !3
  call void @IVcopy(i32 %173, i32* %174, i32* %175) #4
  %176 = load i32* %nent, align 4, !tbaa !0
  %nentU244 = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 9
  %177 = load i32* %nentU244, align 4, !tbaa !0
  %add245 = add nsw i32 %177, %176
  store i32 %add245, i32* %nentU244, align 4, !tbaa !0
  br i1 %cmp6, label %if.then247, label %if.end253

if.then247:                                       ; preds = %if.end235
  %178 = call i64 @fwrite(i8* getelementptr inbounds ([15 x i8]* @.str9, i64 0, i64 0), i64 14, i64 1, %struct._IO_FILE* %msgFile)
  %call249 = call i32 @SubMtx_writeForHumanEye(%struct._SubMtx* %call236, %struct._IO_FILE* %msgFile) #4
  %call250 = call i32 @fflush(%struct._IO_FILE* %msgFile) #4
  br label %if.end253

if.end253:                                        ; preds = %if.else225, %if.then247, %if.end235, %if.then195, %if.then219, %if.end217
  %179 = load i32* %symmetryflag, align 4, !tbaa !0
  %cmp255 = icmp eq i32 %179, 2
  br i1 %cmp255, label %if.then256, label %return

if.then256:                                       ; preds = %if.end253
  %180 = load i32* %sparsityflag, align 4, !tbaa !0
  %cmp258 = icmp eq i32 %180, 0
  %181 = load i32* %npivot, align 4, !tbaa !0
  %182 = load i32** %pivotsizes, align 8, !tbaa !3
  br i1 %cmp258, label %if.then259, label %if.else298

if.then259:                                       ; preds = %if.then256
  %call260 = call i32 @Chv_countEntries(%struct._Chv* %frontJ, i32 %181, i32* %182, i32 4) #4
  store i32 %call260, i32* %nent, align 4, !tbaa !0
  %cmp261 = icmp sgt i32 %call260, 0
  br i1 %cmp261, label %if.then262, label %if.end324

if.then262:                                       ; preds = %if.then259
  %p_mtxLJJ = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 21
  %183 = load %struct._SubMtx*** %p_mtxLJJ, align 8, !tbaa !3
  %arrayidx264 = getelementptr inbounds %struct._SubMtx** %183, i64 %idxprom92.pre-phi
  %184 = load %struct._SubMtx** %arrayidx264, align 8, !tbaa !3
  %cmp265 = icmp eq %struct._SubMtx* %184, null
  br i1 %cmp265, label %if.then266, label %if.end271

if.then266:                                       ; preds = %if.then262
  %type267 = getelementptr inbounds %struct._Chv* %frontJ, i64 0, i32 4
  %185 = load i32* %type267, align 4, !tbaa !0
  %186 = load i32* %nD, align 4, !tbaa !0
  %call268 = call i32 @SubMtx_nbytesNeeded(i32 %185, i32 5, i32 %186, i32 %186, i32 %call260) #4
  %call269 = call %struct._SubMtx* @SubMtxManager_newObjectOfSizeNbytes(%struct._SubMtxManager* %1, i32 %call268) #4
  %187 = load i32* %type267, align 4, !tbaa !0
  %188 = load i32* %nD, align 4, !tbaa !0
  %189 = load i32* %nent, align 4, !tbaa !0
  call void @SubMtx_init(%struct._SubMtx* %call269, i32 %187, i32 5, i32 %4, i32 %4, i32 %188, i32 %188, i32 %189) #4
  br label %if.end271

if.end271:                                        ; preds = %if.then266, %if.then262
  %mtx.4 = phi %struct._SubMtx* [ %call269, %if.then266 ], [ %184, %if.then262 ]
  call void @SubMtx_denseSubrowsInfo(%struct._SubMtx* %mtx.4, i32* %nrow, i32* %nent, i32** %firstlocs, i32** %sizes, double** %entries) #4
  %190 = load i32* %nD, align 4, !tbaa !0
  %cmp273704 = icmp sgt i32 %190, 0
  br i1 %cmp273704, label %for.body274.lr.ph, label %for.end281

for.body274.lr.ph:                                ; preds = %if.end271
  %191 = load i32** %firstlocs, align 8, !tbaa !3
  %192 = load i32** %sizes, align 8, !tbaa !3
  br label %for.body274

for.body274:                                      ; preds = %for.body274.lr.ph, %for.body274
  %indvars.iv = phi i64 [ 0, %for.body274.lr.ph ], [ %indvars.iv.next, %for.body274 ]
  %arrayidx276 = getelementptr inbounds i32* %191, i64 %indvars.iv
  store i32 0, i32* %arrayidx276, align 4, !tbaa !0
  %arrayidx278 = getelementptr inbounds i32* %192, i64 %indvars.iv
  %193 = trunc i64 %indvars.iv to i32
  store i32 %193, i32* %arrayidx278, align 4, !tbaa !0
  %indvars.iv.next = add i64 %indvars.iv, 1
  %194 = load i32* %nD, align 4, !tbaa !0
  %195 = trunc i64 %indvars.iv.next to i32
  %cmp273 = icmp slt i32 %195, %194
  br i1 %cmp273, label %for.body274, label %for.end281

for.end281:                                       ; preds = %for.body274, %if.end271
  %196 = load i32* %npivot, align 4, !tbaa !0
  %197 = load i32** %pivotsizes, align 8, !tbaa !3
  %198 = load i32* %nent, align 4, !tbaa !0
  %199 = load double** %entries, align 8, !tbaa !3
  %call282 = call i32 @Chv_copyEntriesToVector(%struct._Chv* %frontJ, i32 %196, i32* %197, i32 %198, double* %199, i32 4, i32 0) #4
  %200 = load %struct._SubMtx*** %p_mtxLJJ, align 8, !tbaa !3
  %arrayidx285 = getelementptr inbounds %struct._SubMtx** %200, i64 %idxprom92.pre-phi
  store %struct._SubMtx* %mtx.4, %struct._SubMtx** %arrayidx285, align 8, !tbaa !3
  call void @SubMtx_columnIndices(%struct._SubMtx* %mtx.4, i32* %ncol, i32** %colind) #4
  %201 = load i32* %ncol, align 4, !tbaa !0
  %202 = load i32** %colind, align 8, !tbaa !3
  %203 = load i32** %colindJ, align 8, !tbaa !3
  call void @IVcopy(i32 %201, i32* %202, i32* %203) #4
  call void @SubMtx_rowIndices(%struct._SubMtx* %mtx.4, i32* %nrow, i32** %rowind) #4
  %204 = load i32* %nrow, align 4, !tbaa !0
  %205 = load i32** %rowind, align 8, !tbaa !3
  %206 = load i32** %rowindJ, align 8, !tbaa !3
  call void @IVcopy(i32 %204, i32* %205, i32* %206) #4
  %207 = load i32* %pivotingflag10, align 4, !tbaa !0
  %cmp287 = icmp eq i32 %207, 1
  br i1 %cmp287, label %if.then288, label %if.end290

if.then288:                                       ; preds = %for.end281
  %208 = load i32* %nent, align 4, !tbaa !0
  %nentL = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 8
  %209 = load i32* %nentL, align 4, !tbaa !0
  %add289 = add nsw i32 %209, %208
  store i32 %add289, i32* %nentL, align 4, !tbaa !0
  br label %if.end290

if.end290:                                        ; preds = %if.then288, %for.end281
  br i1 %cmp6, label %if.then292, label %if.end324

if.then292:                                       ; preds = %if.end290
  %210 = call i64 @fwrite(i8* getelementptr inbounds ([14 x i8]* @.str11, i64 0, i64 0), i64 13, i64 1, %struct._IO_FILE* %msgFile)
  %call294 = call i32 @SubMtx_writeForHumanEye(%struct._SubMtx* %mtx.4, %struct._IO_FILE* %msgFile) #4
  %call295 = call i32 @fflush(%struct._IO_FILE* %msgFile) #4
  br label %if.end324

if.else298:                                       ; preds = %if.then256
  %call299 = call i32 @Chv_countBigEntries(%struct._Chv* %frontJ, i32 %181, i32* %182, i32 4, double %droptol) #4
  store i32 %call299, i32* %nent, align 4, !tbaa !0
  %cmp300 = icmp sgt i32 %call299, 0
  br i1 %cmp300, label %if.then301, label %if.end324

if.then301:                                       ; preds = %if.else298
  %type302 = getelementptr inbounds %struct._Chv* %frontJ, i64 0, i32 4
  %211 = load i32* %type302, align 4, !tbaa !0
  %212 = load i32* %nD, align 4, !tbaa !0
  %call303 = call i32 @SubMtx_nbytesNeeded(i32 %211, i32 2, i32 %212, i32 %212, i32 %call299) #4
  br i1 %cmp6, label %if.then305, label %if.end308

if.then305:                                       ; preds = %if.then301
  %213 = load i32* %nD, align 4, !tbaa !0
  %214 = load i32* %nent, align 4, !tbaa !0
  %call306 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %msgFile, i8* getelementptr inbounds ([39 x i8]* @.str12, i64 0, i64 0), i32 %4, i32 %4, i32 %213, i32 %214, i32 %call303) #4
  %call307 = call i32 @fflush(%struct._IO_FILE* %msgFile) #4
  br label %if.end308

if.end308:                                        ; preds = %if.then305, %if.then301
  %call309 = call %struct._SubMtx* @SubMtxManager_newObjectOfSizeNbytes(%struct._SubMtxManager* %1, i32 %call303) #4
  %215 = load i32* %type302, align 4, !tbaa !0
  %216 = load i32* %nD, align 4, !tbaa !0
  %217 = load i32* %nent, align 4, !tbaa !0
  call void @SubMtx_init(%struct._SubMtx* %call309, i32 %215, i32 2, i32 %4, i32 %4, i32 %216, i32 %216, i32 %217) #4
  call void @SubMtx_sparseRowsInfo(%struct._SubMtx* %call309, i32* %nrow, i32* %nent, i32** %sizes, i32** %indices, double** %entries) #4
  %218 = load i32* %npivot, align 4, !tbaa !0
  %219 = load i32** %pivotsizes, align 8, !tbaa !3
  %220 = load i32** %sizes, align 8, !tbaa !3
  %221 = load i32** %indices, align 8, !tbaa !3
  %222 = load double** %entries, align 8, !tbaa !3
  %call311 = call i32 @Chv_copyBigEntriesToVector(%struct._Chv* %frontJ, i32 %218, i32* %219, i32* %220, i32* %221, double* %222, i32 4, i32 0, double %droptol) #4
  %p_mtxLJJ313 = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 21
  %223 = load %struct._SubMtx*** %p_mtxLJJ313, align 8, !tbaa !3
  %arrayidx314 = getelementptr inbounds %struct._SubMtx** %223, i64 %idxprom92.pre-phi
  store %struct._SubMtx* %call309, %struct._SubMtx** %arrayidx314, align 8, !tbaa !3
  call void @SubMtx_columnIndices(%struct._SubMtx* %call309, i32* %ncol, i32** %colind) #4
  %224 = load i32* %ncol, align 4, !tbaa !0
  %225 = load i32** %colind, align 8, !tbaa !3
  %226 = load i32** %colindJ, align 8, !tbaa !3
  call void @IVcopy(i32 %224, i32* %225, i32* %226) #4
  call void @SubMtx_rowIndices(%struct._SubMtx* %call309, i32* %nrow, i32** %rowind) #4
  %227 = load i32* %nrow, align 4, !tbaa !0
  %228 = load i32** %rowind, align 8, !tbaa !3
  %229 = load i32** %rowindJ, align 8, !tbaa !3
  call void @IVcopy(i32 %227, i32* %228, i32* %229) #4
  %230 = load i32* %nent, align 4, !tbaa !0
  %nentL315 = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 8
  %231 = load i32* %nentL315, align 4, !tbaa !0
  %add316 = add nsw i32 %231, %230
  store i32 %add316, i32* %nentL315, align 4, !tbaa !0
  br i1 %cmp6, label %if.then318, label %if.end324

if.then318:                                       ; preds = %if.end308
  %232 = call i64 @fwrite(i8* getelementptr inbounds ([14 x i8]* @.str11, i64 0, i64 0), i64 13, i64 1, %struct._IO_FILE* %msgFile)
  %call320 = call i32 @SubMtx_writeForHumanEye(%struct._SubMtx* %call309, %struct._IO_FILE* %msgFile) #4
  %call321 = call i32 @fflush(%struct._IO_FILE* %msgFile) #4
  br label %if.end324

if.end324:                                        ; preds = %if.else298, %if.then318, %if.end308, %if.then259, %if.then292, %if.end290
  %233 = load i32* %sparsityflag, align 4, !tbaa !0
  %cmp326 = icmp eq i32 %233, 0
  %234 = load i32* %npivot, align 4, !tbaa !0
  %235 = load i32** %pivotsizes, align 8, !tbaa !3
  br i1 %cmp326, label %if.then327, label %if.else359

if.then327:                                       ; preds = %if.end324
  %call328 = call i32 @Chv_countEntries(%struct._Chv* %frontJ, i32 %234, i32* %235, i32 5) #4
  store i32 %call328, i32* %nent, align 4, !tbaa !0
  %cmp329 = icmp sgt i32 %call328, 0
  br i1 %cmp329, label %if.then330, label %return

if.then330:                                       ; preds = %if.then327
  %p_mtxLNJ = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 22
  %236 = load %struct._SubMtx*** %p_mtxLNJ, align 8, !tbaa !3
  %arrayidx332 = getelementptr inbounds %struct._SubMtx** %236, i64 %idxprom92.pre-phi
  %237 = load %struct._SubMtx** %arrayidx332, align 8, !tbaa !3
  %cmp333 = icmp eq %struct._SubMtx* %237, null
  br i1 %cmp333, label %if.then334, label %if.end339

if.then334:                                       ; preds = %if.then330
  %type335 = getelementptr inbounds %struct._Chv* %frontJ, i64 0, i32 4
  %238 = load i32* %type335, align 4, !tbaa !0
  %239 = load i32* %nL, align 4, !tbaa !0
  %240 = load i32* %nD, align 4, !tbaa !0
  %call336 = call i32 @SubMtx_nbytesNeeded(i32 %238, i32 0, i32 %239, i32 %240, i32 %call328) #4
  %call337 = call %struct._SubMtx* @SubMtxManager_newObjectOfSizeNbytes(%struct._SubMtxManager* %1, i32 %call336) #4
  %241 = load i32* %type335, align 4, !tbaa !0
  %242 = load i32* %nL, align 4, !tbaa !0
  %243 = load i32* %nD, align 4, !tbaa !0
  %244 = load i32* %nent, align 4, !tbaa !0
  call void @SubMtx_init(%struct._SubMtx* %call337, i32 %241, i32 0, i32 %0, i32 %4, i32 %242, i32 %243, i32 %244) #4
  br label %if.end339

if.end339:                                        ; preds = %if.then334, %if.then330
  %mtx.5 = phi %struct._SubMtx* [ %call337, %if.then334 ], [ %237, %if.then330 ]
  call void @SubMtx_denseInfo(%struct._SubMtx* %mtx.5, i32* %nrow, i32* %ncol, i32* %inc1, i32* %inc2, double** %entries) #4
  %245 = load i32* %npivot, align 4, !tbaa !0
  %246 = load i32** %pivotsizes, align 8, !tbaa !3
  %247 = load i32* %nent, align 4, !tbaa !0
  %248 = load double** %entries, align 8, !tbaa !3
  %call340 = call i32 @Chv_copyEntriesToVector(%struct._Chv* %frontJ, i32 %245, i32* %246, i32 %247, double* %248, i32 5, i32 0) #4
  %249 = load %struct._SubMtx*** %p_mtxLNJ, align 8, !tbaa !3
  %arrayidx343 = getelementptr inbounds %struct._SubMtx** %249, i64 %idxprom92.pre-phi
  store %struct._SubMtx* %mtx.5, %struct._SubMtx** %arrayidx343, align 8, !tbaa !3
  call void @SubMtx_columnIndices(%struct._SubMtx* %mtx.5, i32* %ncol, i32** %colind) #4
  %250 = load i32* %ncol, align 4, !tbaa !0
  %251 = load i32** %colind, align 8, !tbaa !3
  %252 = load i32** %colindJ, align 8, !tbaa !3
  call void @IVcopy(i32 %250, i32* %251, i32* %252) #4
  call void @SubMtx_rowIndices(%struct._SubMtx* %mtx.5, i32* %nrow, i32** %rowind) #4
  %253 = load i32* %nrow, align 4, !tbaa !0
  %254 = load i32** %rowind, align 8, !tbaa !3
  %255 = load i32** %rowindJ, align 8, !tbaa !3
  %256 = load i32* %nD, align 4, !tbaa !0
  %idx.ext344 = sext i32 %256 to i64
  %add.ptr345 = getelementptr inbounds i32* %255, i64 %idx.ext344
  call void @IVcopy(i32 %253, i32* %254, i32* %add.ptr345) #4
  %257 = load i32* %pivotingflag10, align 4, !tbaa !0
  %cmp347 = icmp eq i32 %257, 1
  br i1 %cmp347, label %if.then348, label %if.end351

if.then348:                                       ; preds = %if.end339
  %258 = load i32* %nent, align 4, !tbaa !0
  %nentL349 = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 8
  %259 = load i32* %nentL349, align 4, !tbaa !0
  %add350 = add nsw i32 %259, %258
  store i32 %add350, i32* %nentL349, align 4, !tbaa !0
  br label %if.end351

if.end351:                                        ; preds = %if.then348, %if.end339
  br i1 %cmp6, label %if.then353, label %return

if.then353:                                       ; preds = %if.end351
  %260 = call i64 @fwrite(i8* getelementptr inbounds ([14 x i8]* @.str13, i64 0, i64 0), i64 13, i64 1, %struct._IO_FILE* %msgFile)
  %call355 = call i32 @SubMtx_writeForHumanEye(%struct._SubMtx* %mtx.5, %struct._IO_FILE* %msgFile) #4
  %call356 = call i32 @fflush(%struct._IO_FILE* %msgFile) #4
  br label %return

if.else359:                                       ; preds = %if.end324
  %call360 = call i32 @Chv_countBigEntries(%struct._Chv* %frontJ, i32 %234, i32* %235, i32 5, double %droptol) #4
  store i32 %call360, i32* %nent, align 4, !tbaa !0
  %cmp361 = icmp sgt i32 %call360, 0
  br i1 %cmp361, label %if.then362, label %return

if.then362:                                       ; preds = %if.else359
  %type363 = getelementptr inbounds %struct._Chv* %frontJ, i64 0, i32 4
  %261 = load i32* %type363, align 4, !tbaa !0
  %262 = load i32* %nL, align 4, !tbaa !0
  %263 = load i32* %nD, align 4, !tbaa !0
  %call364 = call i32 @SubMtx_nbytesNeeded(i32 %261, i32 2, i32 %262, i32 %263, i32 %call360) #4
  br i1 %cmp6, label %if.then366, label %if.end369

if.then366:                                       ; preds = %if.then362
  %264 = load i32* %nL, align 4, !tbaa !0
  %265 = load i32* %nD, align 4, !tbaa !0
  %266 = load i32* %nent, align 4, !tbaa !0
  %call367 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %msgFile, i8* getelementptr inbounds ([46 x i8]* @.str14, i64 0, i64 0), i32 %0, i32 %4, i32 %264, i32 %265, i32 %266, i32 %call364) #4
  %call368 = call i32 @fflush(%struct._IO_FILE* %msgFile) #4
  br label %if.end369

if.end369:                                        ; preds = %if.then366, %if.then362
  %call370 = call %struct._SubMtx* @SubMtxManager_newObjectOfSizeNbytes(%struct._SubMtxManager* %1, i32 %call364) #4
  %267 = load i32* %type363, align 4, !tbaa !0
  %268 = load i32* %nL, align 4, !tbaa !0
  %269 = load i32* %nD, align 4, !tbaa !0
  %270 = load i32* %nent, align 4, !tbaa !0
  call void @SubMtx_init(%struct._SubMtx* %call370, i32 %267, i32 2, i32 %0, i32 %4, i32 %268, i32 %269, i32 %270) #4
  call void @SubMtx_sparseRowsInfo(%struct._SubMtx* %call370, i32* %nrow, i32* %nent, i32** %sizes, i32** %indices, double** %entries) #4
  %271 = load i32* %npivot, align 4, !tbaa !0
  %272 = load i32** %pivotsizes, align 8, !tbaa !3
  %273 = load i32** %sizes, align 8, !tbaa !3
  %274 = load i32** %indices, align 8, !tbaa !3
  %275 = load double** %entries, align 8, !tbaa !3
  %call372 = call i32 @Chv_copyBigEntriesToVector(%struct._Chv* %frontJ, i32 %271, i32* %272, i32* %273, i32* %274, double* %275, i32 5, i32 0, double %droptol) #4
  %p_mtxLNJ374 = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 22
  %276 = load %struct._SubMtx*** %p_mtxLNJ374, align 8, !tbaa !3
  %arrayidx375 = getelementptr inbounds %struct._SubMtx** %276, i64 %idxprom92.pre-phi
  store %struct._SubMtx* %call370, %struct._SubMtx** %arrayidx375, align 8, !tbaa !3
  call void @SubMtx_columnIndices(%struct._SubMtx* %call370, i32* %ncol, i32** %colind) #4
  %277 = load i32* %ncol, align 4, !tbaa !0
  %278 = load i32** %colind, align 8, !tbaa !3
  %279 = load i32** %colindJ, align 8, !tbaa !3
  call void @IVcopy(i32 %277, i32* %278, i32* %279) #4
  call void @SubMtx_rowIndices(%struct._SubMtx* %call370, i32* %nrow, i32** %rowind) #4
  %280 = load i32* %nrow, align 4, !tbaa !0
  %281 = load i32** %rowind, align 8, !tbaa !3
  %282 = load i32** %rowindJ, align 8, !tbaa !3
  %283 = load i32* %nD, align 4, !tbaa !0
  %idx.ext376 = sext i32 %283 to i64
  %add.ptr377 = getelementptr inbounds i32* %282, i64 %idx.ext376
  call void @IVcopy(i32 %280, i32* %281, i32* %add.ptr377) #4
  %284 = load i32* %nent, align 4, !tbaa !0
  %nentL378 = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 8
  %285 = load i32* %nentL378, align 4, !tbaa !0
  %add379 = add nsw i32 %285, %284
  store i32 %add379, i32* %nentL378, align 4, !tbaa !0
  br i1 %cmp6, label %if.then381, label %return

if.then381:                                       ; preds = %if.end369
  %286 = call i64 @fwrite(i8* getelementptr inbounds ([14 x i8]* @.str13, i64 0, i64 0), i64 13, i64 1, %struct._IO_FILE* %msgFile)
  %call383 = call i32 @SubMtx_writeForHumanEye(%struct._SubMtx* %call370, %struct._IO_FILE* %msgFile) #4
  %call384 = call i32 @fflush(%struct._IO_FILE* %msgFile) #4
  br label %return

return:                                           ; preds = %if.end253, %if.else359, %if.then381, %if.end369, %if.then327, %if.then353, %if.end351, %if.end46
  ret void
}

; Function Attrs: optsize
declare void @IV_sizeAndEntries(%struct._IV*, i32*, i32**) #1

; Function Attrs: optsize
declare void @Chv_dimensions(%struct._Chv*, i32*, i32*, i32*) #1

; Function Attrs: optsize
declare void @Chv_columnIndices(%struct._Chv*, i32*, i32**) #1

; Function Attrs: optsize
declare void @Chv_rowIndices(%struct._Chv*, i32*, i32**) #1

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #2

; Function Attrs: nounwind optsize
declare i32 @fflush(%struct._IO_FILE* nocapture) #2

; Function Attrs: optsize
declare void @Lock_lock(%struct._Lock*) #1

; Function Attrs: optsize
declare void @FrontMtx_setFrontSize(%struct._FrontMtx*, i32, i32) #1

; Function Attrs: optsize
declare void @IVL_setList(%struct._IVL*, i32, i32, i32*) #1

; Function Attrs: optsize
declare void @Lock_unlock(%struct._Lock*) #1

; Function Attrs: optsize
declare i32 @Chv_countEntries(%struct._Chv*, i32, i32*, i32) #1

; Function Attrs: optsize
declare i32 @SubMtx_nbytesNeeded(i32, i32, i32, i32, i32) #1

; Function Attrs: optsize
declare %struct._SubMtx* @SubMtxManager_newObjectOfSizeNbytes(%struct._SubMtxManager*, i32) #1

; Function Attrs: optsize
declare void @SubMtx_init(%struct._SubMtx*, i32, i32, i32, i32, i32, i32, i32) #1

; Function Attrs: optsize
declare void @SubMtx_blockDiagonalInfo(%struct._SubMtx*, i32*, i32*, i32**, double**) #1

; Function Attrs: optsize
declare void @IVzero(i32, i32*) #1

; Function Attrs: optsize
declare void @IVcopy(i32, i32*, i32*) #1

; Function Attrs: optsize
declare i32 @Chv_copyEntriesToVector(%struct._Chv*, i32, i32*, i32, double*, i32, i32) #1

; Function Attrs: optsize
declare i32 @SubMtx_writeForHumanEye(%struct._SubMtx*, %struct._IO_FILE*) #1

; Function Attrs: optsize
declare void @SubMtx_diagonalInfo(%struct._SubMtx*, i32*, double**) #1

; Function Attrs: optsize
declare void @DVfprintf(%struct._IO_FILE*, i32, double*) #1

; Function Attrs: optsize
declare void @SubMtx_columnIndices(%struct._SubMtx*, i32*, i32**) #1

; Function Attrs: optsize
declare void @SubMtx_rowIndices(%struct._SubMtx*, i32*, i32**) #1

; Function Attrs: optsize
declare void @SubMtx_denseSubcolumnsInfo(%struct._SubMtx*, i32*, i32*, i32**, i32**, double**) #1

; Function Attrs: optsize
declare i32 @Chv_countBigEntries(%struct._Chv*, i32, i32*, i32, double) #1

; Function Attrs: optsize
declare void @SubMtx_sparseColumnsInfo(%struct._SubMtx*, i32*, i32*, i32**, i32**, double**) #1

; Function Attrs: optsize
declare i32 @Chv_copyBigEntriesToVector(%struct._Chv*, i32, i32*, i32*, i32*, double*, i32, i32, double) #1

; Function Attrs: optsize
declare void @SubMtx_denseInfo(%struct._SubMtx*, i32*, i32*, i32*, i32*, double**) #1

; Function Attrs: optsize
declare void @SubMtx_denseSubrowsInfo(%struct._SubMtx*, i32*, i32*, i32**, i32**, double**) #1

; Function Attrs: optsize
declare void @SubMtx_sparseRowsInfo(%struct._SubMtx*, i32*, i32*, i32**, i32**, double**) #1

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #3

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { nounwind optsize }

!0 = metadata !{metadata !"int", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"any pointer", metadata !1}