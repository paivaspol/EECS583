; ModuleID = '../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_factorUtil.c'
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
%struct._Chv = type { i32, i32, i32, i32, i32, i32, i32*, i32*, double*, %struct._DV, %struct._Chv* }
%struct._Pencil = type { i32, i32, %struct._InpMtx*, %struct._InpMtx*, [2 x double] }
%struct._InpMtx = type { i32, i32, i32, i32, i32, double, %struct._IV, %struct._IV, %struct._DV, i32, i32, %struct._IV, %struct._IV, %struct._IV }
%struct._IP = type { i32, %struct._IP* }
%struct._ChvList = type { i32, %struct._Chv**, i32*, %struct._Lock*, i8*, i32 }
%struct._ChvManager = type { %struct._Chv*, %struct._Lock*, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._Ideq = type { i32, i32, i32, %struct._IV }

@.str = private unnamed_addr constant [21 x i8] c"\0A performing updates\00", align 1
@.str1 = private unnamed_addr constant [43 x i8] c"\0A\0A allUpdatesDone %c, allAggregatesHere %c\00", align 1
@.str2 = private unnamed_addr constant [24 x i8] c"\0A\0A allPostponedAssmb %c\00", align 1
@.str3 = private unnamed_addr constant [22 x i8] c"\0A\0A J = %d, nelim = %d\00", align 1
@.str4 = private unnamed_addr constant [30 x i8] c"\0A done with unowned front %3d\00", align 1
@.str5 = private unnamed_addr constant [129 x i8] c"\0A\0A inside FrontMtx_setupFront()\0A frontmtx %p, pencil %p, J %d, myid %d\0A owners %p, chvmanager %p, cpus %p\0A msglvl %d, msgFile %p\00", align 1
@.str6 = private unnamed_addr constant [33 x i8] c"\0A nD %d, nL %d, nU %d, nbytes %d\00", align 1
@.str7 = private unnamed_addr constant [14 x i8] c"\0A frontJ = %p\00", align 1
@.str8 = private unnamed_addr constant [26 x i8] c"\0A original entries loaded\00", align 1
@.str9 = private unnamed_addr constant [21 x i8] c"\0A\0A front initialized\00", align 1
@stderr = external global %struct._IO_FILE*
@.str10 = private unnamed_addr constant [49 x i8] c"\0A ALLOCATE failure : bytes %zd, line %d, file %s\00", align 1
@.str11 = private unnamed_addr constant [89 x i8] c"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_factorUtil.c\00", align 1
@.str12 = private unnamed_addr constant [47 x i8] c"\0A ALLOCATE error : bytes %zd, line %d, file %s\00", align 1
@.str13 = private unnamed_addr constant [31 x i8] c"\0A linking L(%d,%d) to L(%d,%d)\00", align 1
@.str14 = private unnamed_addr constant [60 x i8] c"\0A fatal error in FrontMtx_nativeChild(%p,%p,%d)\0A bad input\0A\00", align 1
@.str15 = private unnamed_addr constant [139 x i8] c"\0A fatal error in FrontMtx_setUpDequeue()\0A frontmtx %p, owners %p, myid %d, status %p\0A heads %p, activeFlag %c, inactiveFlag %c\0A bad input\0A\00", align 1
@.str16 = private unnamed_addr constant [57 x i8] c"\0A fatal error in FrontMtx_postList(%p,%p,%d)\0A bad input\0A\00", align 1
@.str17 = private unnamed_addr constant [62 x i8] c"\0A fatal error in FrontMtx_aggregateList(%p,%p,%d)\0A bad input\0A\00", align 1
@.str18 = private unnamed_addr constant [34 x i8] c"\0A storing factor data, nelim = %d\00", align 1
@.str19 = private unnamed_addr constant [30 x i8] c"\0A postponed data for front %d\00", align 1
@.str20 = private unnamed_addr constant [28 x i8] c"\0A storing postponed data %p\00", align 1
@.str21 = private unnamed_addr constant [27 x i8] c"\0A frontJ = %p, ndelay = %d\00", align 1
@.str22 = private unnamed_addr constant [15 x i8] c"\0A tau = %12.4e\00", align 1
@.str23 = private unnamed_addr constant [20 x i8] c"\0A stats %p, cpus %p\00", align 1
@.str24 = private unnamed_addr constant [36 x i8] c"\0A\0A front %d, nelim = %d, npost = %d\00", align 1
@.str25 = private unnamed_addr constant [86 x i8] c"\0A\0A frontmtx %p, frontJ %p, pndelay %p\0A fronts %p, postList %p, chvmanager %p, cpus %p\00", align 1
@.str26 = private unnamed_addr constant [29 x i8] c"\0A all postponed data is here\00", align 1
@.str27 = private unnamed_addr constant [34 x i8] c"\0A still waiting on postponed data\00", align 1
@.str28 = private unnamed_addr constant [28 x i8] c"\0A assembling postponed data\00", align 1
@.str29 = private unnamed_addr constant [22 x i8] c"\0A releasing old front\00", align 1
@.str30 = private unnamed_addr constant [17 x i8] c"\0A after assembly\00", align 1

; Function Attrs: nounwind optsize uwtable
define void @FrontMtx_initializeFront(%struct._FrontMtx* nocapture %frontmtx, %struct._Chv* %frontJ, i32 %J) #0 {
entry:
  %ncolJ = alloca i32, align 4
  %nrowJ = alloca i32, align 4
  %colindJ = alloca i32*, align 8
  %ivec = alloca i32*, align 8
  %frontETree = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 11
  %0 = load %struct._ETree** %frontETree, align 8, !tbaa !0
  %call = call i32 @ETree_frontSize(%struct._ETree* %0, i32 %J) #5
  %symbfacIVL = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 13
  %1 = load %struct._IVL** %symbfacIVL, align 8, !tbaa !0
  call void @IVL_listAndSize(%struct._IVL* %1, i32 %J, i32* %ncolJ, i32** %colindJ) #5
  %2 = load i32* %ncolJ, align 4, !tbaa !3
  %sub = sub nsw i32 %2, %call
  %type = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 2
  %3 = load i32* %type, align 4, !tbaa !3
  %symmetryflag = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 3
  %4 = load i32* %symmetryflag, align 4, !tbaa !3
  call void @Chv_init(%struct._Chv* %frontJ, i32 %J, i32 %call, i32 %sub, i32 %sub, i32 %3, i32 %4) #5
  call void @Chv_columnIndices(%struct._Chv* %frontJ, i32* %ncolJ, i32** %ivec) #5
  %5 = load i32* %ncolJ, align 4, !tbaa !3
  %6 = load i32** %ivec, align 8, !tbaa !0
  %7 = load i32** %colindJ, align 8, !tbaa !0
  call void @IVcopy(i32 %5, i32* %6, i32* %7) #5
  %8 = load i32* %symmetryflag, align 4, !tbaa !3
  %cmp = icmp eq i32 %8, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @Chv_rowIndices(%struct._Chv* %frontJ, i32* %nrowJ, i32** %ivec) #5
  %9 = load i32* %nrowJ, align 4, !tbaa !3
  %10 = load i32** %ivec, align 8, !tbaa !0
  %11 = load i32** %colindJ, align 8, !tbaa !0
  call void @IVcopy(i32 %9, i32* %10, i32* %11) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  call void @Chv_zero(%struct._Chv* %frontJ) #5
  ret void
}

; Function Attrs: optsize
declare i32 @ETree_frontSize(%struct._ETree*, i32) #1

; Function Attrs: optsize
declare void @IVL_listAndSize(%struct._IVL*, i32, i32*, i32**) #1

; Function Attrs: optsize
declare void @Chv_init(%struct._Chv*, i32, i32, i32, i32, i32, i32) #1

; Function Attrs: optsize
declare void @Chv_columnIndices(%struct._Chv*, i32*, i32**) #1

; Function Attrs: optsize
declare void @IVcopy(i32, i32*, i32*) #1

; Function Attrs: optsize
declare void @Chv_rowIndices(%struct._Chv*, i32*, i32**) #1

; Function Attrs: optsize
declare void @Chv_zero(%struct._Chv*) #1

; Function Attrs: nounwind optsize uwtable
define signext i8 @FrontMtx_factorVisit(%struct._FrontMtx* %frontmtx, %struct._Pencil* %pencil, i32 %J, i32 %myid, i32* %owners, %struct._Chv** %fronts, i32 %lookahead, double %tau, double %droptol, i8* %status, %struct._IP** %heads, %struct._IV* %pivotsizesIV, %struct._DV* %workDV, i32* nocapture %parent, %struct._ChvList* %aggList, %struct._ChvList* %postList, %struct._ChvManager* %chvmanager, i32* %stats, double* %cpus, i32 %msglvl, %struct._IO_FILE* %msgFile) #0 {
entry:
  %ndelay = alloca i32, align 4
  %idxprom = sext i32 %J to i64
  %arrayidx = getelementptr inbounds i8* %status, i64 %idxprom
  %0 = load i8* %arrayidx, align 1, !tbaa !1
  %cmp = icmp eq i8 %0, 70
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %arrayidx3 = getelementptr inbounds %struct._IP** %heads, i64 %idxprom
  %1 = load %struct._IP** %arrayidx3, align 8, !tbaa !0
  %cmp4 = icmp eq %struct._IP* %1, null
  br i1 %cmp4, label %if.end26, label %if.then6

if.then6:                                         ; preds = %if.end
  %arrayidx8 = getelementptr inbounds %struct._Chv** %fronts, i64 %idxprom
  %2 = load %struct._Chv** %arrayidx8, align 8, !tbaa !0
  %cmp9 = icmp eq %struct._Chv* %2, null
  br i1 %cmp9, label %if.then11, label %if.end18

if.then11:                                        ; preds = %if.then6
  %call = call %struct._Chv* @FrontMtx_setupFront(%struct._FrontMtx* %frontmtx, %struct._Pencil* %pencil, i32 %J, i32 %myid, i32* %owners, %struct._ChvManager* %chvmanager, double* %cpus, i32 %msglvl, %struct._IO_FILE* %msgFile) #6
  store %struct._Chv* %call, %struct._Chv** %arrayidx8, align 8, !tbaa !0
  store i8 65, i8* %arrayidx, align 1, !tbaa !1
  br label %if.end18

if.end18:                                         ; preds = %if.then11, %if.then6
  %frontJ.0 = phi %struct._Chv* [ %call, %if.then11 ], [ %2, %if.then6 ]
  %cmp19 = icmp sgt i32 %msglvl, 1
  br i1 %cmp19, label %if.then21, label %if.end24

if.then21:                                        ; preds = %if.end18
  %3 = call i64 @fwrite(i8* getelementptr inbounds ([21 x i8]* @.str, i64 0, i64 0), i64 20, i64 1, %struct._IO_FILE* %msgFile)
  %call23 = call i32 @fflush(%struct._IO_FILE* %msgFile) #5
  br label %if.end24

if.end24:                                         ; preds = %if.then21, %if.end18
  call void @FrontMtx_update(%struct._FrontMtx* %frontmtx, %struct._Chv* %frontJ.0, %struct._IP** %heads, i8* %status, %struct._DV* %workDV, i32 %msglvl, %struct._IO_FILE* %msgFile) #5
  %arrayidx25 = getelementptr inbounds double* %cpus, i64 2
  %4 = load double* %arrayidx25, align 8, !tbaa !4
  %add = fadd double %4, 0.000000e+00
  store double %add, double* %arrayidx25, align 8, !tbaa !4
  %.pr = load %struct._IP** %arrayidx3, align 8, !tbaa !0
  %phitmp350 = icmp eq %struct._IP* %.pr, null
  br label %if.end26

if.end26:                                         ; preds = %if.end, %if.end24
  %5 = phi i1 [ true, %if.end ], [ %phitmp350, %if.end24 ]
  %frontJ.1 = phi %struct._Chv* [ null, %if.end ], [ %frontJ.0, %if.end24 ]
  %. = select i1 %5, i32 89, i32 78
  %cmp33 = icmp eq i32* %owners, null
  br i1 %cmp33, label %if.then39, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end26
  %arrayidx36 = getelementptr inbounds i32* %owners, i64 %idxprom
  %6 = load i32* %arrayidx36, align 4, !tbaa !3
  %cmp37 = icmp eq i32 %6, %myid
  br i1 %cmp37, label %if.then39, label %if.else131

if.then39:                                        ; preds = %lor.lhs.false, %if.end26
  %arrayidx41 = getelementptr inbounds %struct._Chv** %fronts, i64 %idxprom
  %7 = load %struct._Chv** %arrayidx41, align 8, !tbaa !0
  %cmp42 = icmp eq %struct._Chv* %7, null
  br i1 %cmp42, label %if.then44, label %if.end52

if.then44:                                        ; preds = %if.then39
  %call45 = call %struct._Chv* @FrontMtx_setupFront(%struct._FrontMtx* %frontmtx, %struct._Pencil* %pencil, i32 %J, i32 %myid, i32* %owners, %struct._ChvManager* %chvmanager, double* %cpus, i32 %msglvl, %struct._IO_FILE* %msgFile) #6
  store %struct._Chv* %call45, %struct._Chv** %arrayidx41, align 8, !tbaa !0
  store i8 65, i8* %arrayidx, align 1, !tbaa !1
  br label %if.end52

if.end52:                                         ; preds = %if.then44, %if.then39
  %frontJ.2 = phi %struct._Chv* [ %call45, %if.then44 ], [ %7, %if.then39 ]
  %cmp53 = icmp eq %struct._ChvList* %aggList, null
  br i1 %cmp53, label %if.end71, label %if.then55

if.then55:                                        ; preds = %if.end52
  %call56 = call i32 @ChvList_isListNonempty(%struct._ChvList* %aggList, i32 %J) #5
  %cmp57 = icmp eq i32 %call56, 1
  br i1 %cmp57, label %if.then59, label %if.end60

if.then59:                                        ; preds = %if.then55
  call fastcc void @assembleAggregates(%struct._Chv* %frontJ.2, %struct._ChvList* %aggList, %struct._ChvManager* %chvmanager, double* %cpus, i32 %msglvl, %struct._IO_FILE* %msgFile) #6
  br label %if.end60

if.end60:                                         ; preds = %if.then59, %if.then55
  %call61 = call i32 @ChvList_isCountZero(%struct._ChvList* %aggList, i32 %J) #5
  %cmp62 = icmp eq i32 %call61, 1
  br i1 %cmp62, label %if.then64, label %if.end71

if.then64:                                        ; preds = %if.end60
  %call65 = call i32 @ChvList_isListNonempty(%struct._ChvList* %aggList, i32 %J) #5
  %cmp66 = icmp eq i32 %call65, 1
  br i1 %cmp66, label %if.then68, label %if.end71

if.then68:                                        ; preds = %if.then64
  call fastcc void @assembleAggregates(%struct._Chv* %frontJ.2, %struct._ChvList* %aggList, %struct._ChvManager* %chvmanager, double* %cpus, i32 %msglvl, %struct._IO_FILE* %msgFile) #6
  br label %if.end71

if.end71:                                         ; preds = %if.end52, %if.then64, %if.then68, %if.end60
  %allAggregatesHere.0 = phi i32 [ 78, %if.end60 ], [ 89, %if.then68 ], [ 89, %if.then64 ], [ 89, %if.end52 ]
  %cmp72 = icmp sgt i32 %msglvl, 1
  br i1 %cmp72, label %if.then74, label %if.end79

if.then74:                                        ; preds = %if.end71
  %call77 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %msgFile, i8* getelementptr inbounds ([43 x i8]* @.str1, i64 0, i64 0), i32 %., i32 %allAggregatesHere.0) #5
  %call78 = call i32 @fflush(%struct._IO_FILE* %msgFile) #5
  br label %if.end79

if.end79:                                         ; preds = %if.then74, %if.end71
  %cmp84 = icmp eq i32 %allAggregatesHere.0, 89
  %or.cond = and i1 %5, %cmp84
  br i1 %or.cond, label %if.then86, label %if.end157

if.then86:                                        ; preds = %if.end79
  %cmp87 = icmp eq %struct._ChvList* %postList, null
  br i1 %cmp87, label %if.else93, label %if.then89

if.then89:                                        ; preds = %if.then86
  %cmp.i = icmp sgt i32 %msglvl, 4
  br i1 %cmp.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.then89
  %call.i = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %msgFile, i8* getelementptr inbounds ([86 x i8]* @.str25, i64 0, i64 0), %struct._FrontMtx* %frontmtx, %struct._Chv* %frontJ.2, i32* %ndelay, %struct._Chv** %fronts, %struct._ChvList* %postList, %struct._ChvManager* %chvmanager, double* %cpus) #5
  %call1.i = call i32 @fflush(%struct._IO_FILE* %msgFile) #5
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.then89
  %id.i = getelementptr inbounds %struct._Chv* %frontJ.2, i64 0, i32 0
  %8 = load i32* %id.i, align 4, !tbaa !3
  br i1 %cmp72, label %if.then3.i, label %if.end12.i

if.then3.i:                                       ; preds = %if.end.i
  %call4.i = call i32 @ChvList_isCountZero(%struct._ChvList* %postList, i32 %8) #5
  %cmp5.i = icmp eq i32 %call4.i, 1
  br i1 %cmp5.i, label %if.then6.i, label %if.else.i

if.then6.i:                                       ; preds = %if.then3.i
  %9 = call i64 @fwrite(i8* getelementptr inbounds ([29 x i8]* @.str26, i64 0, i64 0), i64 28, i64 1, %struct._IO_FILE* %msgFile) #4
  %call8.i = call i32 @fflush(%struct._IO_FILE* %msgFile) #5
  br label %if.end12.i

if.else.i:                                        ; preds = %if.then3.i
  %10 = call i64 @fwrite(i8* getelementptr inbounds ([34 x i8]* @.str27, i64 0, i64 0), i64 33, i64 1, %struct._IO_FILE* %msgFile) #4
  %call10.i = call i32 @fflush(%struct._IO_FILE* %msgFile) #5
  br label %if.end12.i

if.end12.i:                                       ; preds = %if.else.i, %if.then6.i, %if.end.i
  %call13.i = call i32 @ChvList_isCountZero(%struct._ChvList* %postList, i32 %8) #5
  %cmp14.i = icmp eq i32 %call13.i, 1
  br i1 %cmp14.i, label %if.then15.i, label %assemblePostponedData.exit

if.then15.i:                                      ; preds = %if.end12.i
  br i1 %cmp72, label %if.then17.i, label %if.end20.i

if.then17.i:                                      ; preds = %if.then15.i
  %11 = call i64 @fwrite(i8* getelementptr inbounds ([28 x i8]* @.str28, i64 0, i64 0), i64 27, i64 1, %struct._IO_FILE* %msgFile) #4
  %call19.i = call i32 @fflush(%struct._IO_FILE* %msgFile) #5
  br label %if.end20.i

if.end20.i:                                       ; preds = %if.then17.i, %if.then15.i
  %call21.i = call %struct._Chv* @FrontMtx_assemblePostponedData(%struct._FrontMtx* %frontmtx, %struct._Chv* %frontJ.2, %struct._ChvList* %postList, %struct._ChvManager* %chvmanager, i32* %ndelay) #5
  %idxprom.i = sext i32 %8 to i64
  %arrayidx.i = getelementptr inbounds %struct._Chv** %fronts, i64 %idxprom.i
  store %struct._Chv* %call21.i, %struct._Chv** %arrayidx.i, align 8, !tbaa !0
  %cmp24.i = icmp eq %struct._Chv* %call21.i, %frontJ.2
  br i1 %cmp24.i, label %if.end31.i, label %if.then25.i

if.then25.i:                                      ; preds = %if.end20.i
  br i1 %cmp72, label %if.then27.i, label %if.end30.i

if.then27.i:                                      ; preds = %if.then25.i
  %12 = call i64 @fwrite(i8* getelementptr inbounds ([22 x i8]* @.str29, i64 0, i64 0), i64 21, i64 1, %struct._IO_FILE* %msgFile) #4
  %call29.i = call i32 @fflush(%struct._IO_FILE* %msgFile) #5
  br label %if.end30.i

if.end30.i:                                       ; preds = %if.then27.i, %if.then25.i
  call void @ChvManager_releaseObject(%struct._ChvManager* %chvmanager, %struct._Chv* %frontJ.2) #5
  br label %if.end31.i

if.end31.i:                                       ; preds = %if.end30.i, %if.end20.i
  %arrayidx32.i = getelementptr inbounds double* %cpus, i64 3
  %13 = load double* %arrayidx32.i, align 8, !tbaa !4
  %add.i = fadd double %13, 0.000000e+00
  store double %add.i, double* %arrayidx32.i, align 8, !tbaa !4
  br label %assemblePostponedData.exit

assemblePostponedData.exit:                       ; preds = %if.end12.i, %if.end31.i
  %rc.0.i = phi i32 [ 89, %if.end31.i ], [ 78, %if.end12.i ]
  %14 = load %struct._Chv** %arrayidx41, align 8, !tbaa !0
  br label %if.end94

if.else93:                                        ; preds = %if.then86
  store i32 0, i32* %ndelay, align 4, !tbaa !3
  br label %if.end94

if.end94:                                         ; preds = %if.else93, %assemblePostponedData.exit
  %allPostponedAssmb.0 = phi i32 [ %rc.0.i, %assemblePostponedData.exit ], [ 89, %if.else93 ]
  %frontJ.3 = phi %struct._Chv* [ %14, %assemblePostponedData.exit ], [ %frontJ.2, %if.else93 ]
  br i1 %cmp72, label %if.then97, label %if.end101

if.then97:                                        ; preds = %if.end94
  %call99 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %msgFile, i8* getelementptr inbounds ([24 x i8]* @.str2, i64 0, i64 0), i32 %allPostponedAssmb.0) #5
  %call100 = call i32 @fflush(%struct._IO_FILE* %msgFile) #5
  br label %if.end101

if.end101:                                        ; preds = %if.then97, %if.end94
  %cmp103 = icmp eq i32 %allPostponedAssmb.0, 89
  br i1 %cmp103, label %if.then105, label %if.end157

if.then105:                                       ; preds = %if.end101
  %15 = load i32* %ndelay, align 4, !tbaa !3
  %cmp.i326 = icmp sgt i32 %msglvl, 2
  br i1 %cmp.i326, label %if.then.i329, label %if.end7.i

if.then.i329:                                     ; preds = %if.then105
  %call.i327 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %msgFile, i8* getelementptr inbounds ([27 x i8]* @.str21, i64 0, i64 0), %struct._Chv* %frontJ.3, i32 %15) #5
  %call1.i328 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %msgFile, i8* getelementptr inbounds ([15 x i8]* @.str22, i64 0, i64 0), double %tau) #5
  %call2.i = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %msgFile, i8* getelementptr inbounds ([20 x i8]* @.str23, i64 0, i64 0), i32* %stats, double* %cpus) #5
  %call3.i = call i32 @fflush(%struct._IO_FILE* %msgFile) #5
  call void @Chv_writeForHumanEye(%struct._Chv* %frontJ.3, %struct._IO_FILE* %msgFile) #5
  %call6.i = call i32 @fflush(%struct._IO_FILE* %msgFile) #5
  br label %if.end7.i

if.end7.i:                                        ; preds = %if.then.i329, %if.then105
  %pivotingflag.i = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 5
  %16 = load i32* %pivotingflag.i, align 4, !tbaa !3
  %cmp8.i = icmp eq i32 %16, 1
  br i1 %cmp8.i, label %if.then9.i, label %if.else.i331

if.then9.i:                                       ; preds = %if.end7.i
  %arrayidx.i330 = getelementptr inbounds i32* %stats, i64 1
  %call11.i = call i32 @Chv_factorWithPivoting(%struct._Chv* %frontJ.3, i32 %15, i32 1, %struct._IV* %pivotsizesIV, %struct._DV* %workDV, double %tau, i32* %arrayidx.i330) #5
  br label %if.end13.i

if.else.i331:                                     ; preds = %if.end7.i
  %patchinfo.i = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 27
  %17 = load %struct._PatchAndGoInfo** %patchinfo.i, align 8, !tbaa !0
  %call12.i = call i32 @Chv_factorWithNoPivoting(%struct._Chv* %frontJ.3, %struct._PatchAndGoInfo* %17) #5
  br label %if.end13.i

if.end13.i:                                       ; preds = %if.else.i331, %if.then9.i
  %nelim.0.i = phi i32 [ %call11.i, %if.then9.i ], [ %call12.i, %if.else.i331 ]
  %nD.i = getelementptr inbounds %struct._Chv* %frontJ.3, i64 0, i32 1
  %18 = load i32* %nD.i, align 4, !tbaa !3
  %sub.i = sub nsw i32 %18, %nelim.0.i
  %arrayidx14.i = getelementptr inbounds i32* %stats, i64 2
  %19 = load i32* %arrayidx14.i, align 4, !tbaa !3
  %add.i332 = add nsw i32 %19, %sub.i
  store i32 %add.i332, i32* %arrayidx14.i, align 4, !tbaa !3
  %20 = load i32* %pivotingflag.i, align 4, !tbaa !3
  %cmp16.i = icmp eq i32 %20, 1
  br i1 %cmp16.i, label %lor.lhs.false.i, label %if.then18.i

lor.lhs.false.i:                                  ; preds = %if.end13.i
  %symmetryflag.i = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 3
  %21 = load i32* %symmetryflag.i, align 4, !tbaa !3
  %cmp17.i = icmp eq i32 %21, 2
  br i1 %cmp17.i, label %if.then18.i, label %if.else21.i

if.then18.i:                                      ; preds = %lor.lhs.false.i, %if.end13.i
  %22 = load i32* %stats, align 4, !tbaa !3
  %add20.i = add nsw i32 %22, %nelim.0.i
  br label %if.end25.i

if.else21.i:                                      ; preds = %lor.lhs.false.i
  %call22.i = call i32 @IV_size(%struct._IV* %pivotsizesIV) #5
  %23 = load i32* %stats, align 4, !tbaa !3
  %add24.i = add nsw i32 %23, %call22.i
  br label %if.end25.i

if.end25.i:                                       ; preds = %if.else21.i, %if.then18.i
  %storemerge.i = phi i32 [ %add20.i, %if.then18.i ], [ %add24.i, %if.else21.i ]
  store i32 %storemerge.i, i32* %stats, align 4, !tbaa !3
  %arrayidx27.i = getelementptr inbounds double* %cpus, i64 4
  %24 = load double* %arrayidx27.i, align 8, !tbaa !4
  %add28.i = fadd double %24, 0.000000e+00
  store double %add28.i, double* %arrayidx27.i, align 8, !tbaa !4
  br i1 %cmp72, label %if.then30.i, label %if.end33.i

if.then30.i:                                      ; preds = %if.end25.i
  %id.i333 = getelementptr inbounds %struct._Chv* %frontJ.3, i64 0, i32 0
  %25 = load i32* %id.i333, align 4, !tbaa !3
  %call31.i = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %msgFile, i8* getelementptr inbounds ([36 x i8]* @.str24, i64 0, i64 0), i32 %25, i32 %nelim.0.i, i32 %sub.i) #5
  %call32.i = call i32 @fflush(%struct._IO_FILE* %msgFile) #5
  br label %if.end33.i

if.end33.i:                                       ; preds = %if.then30.i, %if.end25.i
  br i1 %cmp.i326, label %if.then35.i, label %factorFront.exit

if.then35.i:                                      ; preds = %if.end33.i
  call void @Chv_writeForHumanEye(%struct._Chv* %frontJ.3, %struct._IO_FILE* %msgFile) #5
  %call36.i = call i32 @fflush(%struct._IO_FILE* %msgFile) #5
  br label %factorFront.exit

factorFront.exit:                                 ; preds = %if.end33.i, %if.then35.i
  br i1 %cmp72, label %if.then109, label %if.end112

if.then109:                                       ; preds = %factorFront.exit
  %id = getelementptr inbounds %struct._Chv* %frontJ.3, i64 0, i32 0
  %26 = load i32* %id, align 4, !tbaa !3
  %call110 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %msgFile, i8* getelementptr inbounds ([22 x i8]* @.str3, i64 0, i64 0), i32 %26, i32 %nelim.0.i) #5
  %call111 = call i32 @fflush(%struct._IO_FILE* %msgFile) #5
  br label %if.end112

if.end112:                                        ; preds = %if.then109, %factorFront.exit
  %27 = load i32* %pivotingflag.i, align 4, !tbaa !3
  %cmp113 = icmp ne i32 %27, 1
  %.pre = load i32* %nD.i, align 4, !tbaa !3
  %cmp116 = icmp slt i32 %nelim.0.i, %.pre
  %or.cond351 = and i1 %cmp113, %cmp116
  br i1 %or.cond351, label %if.then118, label %if.else123

if.then118:                                       ; preds = %if.end112
  call void @ChvManager_releaseObject(%struct._ChvManager* %chvmanager, %struct._Chv* %frontJ.3) #5
  store %struct._Chv* null, %struct._Chv** %arrayidx41, align 8, !tbaa !0
  store i8 69, i8* %arrayidx, align 1, !tbaa !1
  br label %if.end157

if.else123:                                       ; preds = %if.end112
  %sub.i335 = sub nsw i32 %.pre, %nelim.0.i
  br i1 %cmp72, label %if.then.i339, label %if.end.i342

if.then.i339:                                     ; preds = %if.else123
  %call.i337 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %msgFile, i8* getelementptr inbounds ([34 x i8]* @.str18, i64 0, i64 0), i32 %nelim.0.i) #5
  %call1.i338 = call i32 @fflush(%struct._IO_FILE* %msgFile) #5
  %.pre.i = load i32* %nD.i, align 4, !tbaa !3
  br label %if.end.i342

if.end.i342:                                      ; preds = %if.then.i339, %if.else123
  %28 = phi i32 [ %.pre.i, %if.then.i339 ], [ %.pre, %if.else123 ]
  %sub3.i = sub nsw i32 %28, %sub.i335
  store i32 %sub3.i, i32* %nD.i, align 4, !tbaa !3
  %nL.i = getelementptr inbounds %struct._Chv* %frontJ.3, i64 0, i32 2
  %29 = load i32* %nL.i, align 4, !tbaa !3
  %add.i340 = add nsw i32 %29, %sub.i335
  store i32 %add.i340, i32* %nL.i, align 4, !tbaa !3
  %nU.i = getelementptr inbounds %struct._Chv* %frontJ.3, i64 0, i32 3
  %30 = load i32* %nU.i, align 4, !tbaa !3
  %add4.i = add nsw i32 %30, %sub.i335
  store i32 %add4.i, i32* %nU.i, align 4, !tbaa !3
  call void @FrontMtx_storeFront(%struct._FrontMtx* %frontmtx, %struct._Chv* %frontJ.3, %struct._IV* %pivotsizesIV, double %droptol, i32 %msglvl, %struct._IO_FILE* %msgFile) #5
  %31 = load i32* %nD.i, align 4, !tbaa !3
  %add6.i = add nsw i32 %31, %sub.i335
  store i32 %add6.i, i32* %nD.i, align 4, !tbaa !3
  %32 = load i32* %nL.i, align 4, !tbaa !3
  %sub8.i = sub nsw i32 %32, %sub.i335
  store i32 %sub8.i, i32* %nL.i, align 4, !tbaa !3
  %33 = load i32* %nU.i, align 4, !tbaa !3
  %sub10.i = sub nsw i32 %33, %sub.i335
  store i32 %sub10.i, i32* %nU.i, align 4, !tbaa !3
  %arrayidx.i341 = getelementptr inbounds double* %cpus, i64 6
  %34 = load double* %arrayidx.i341, align 8, !tbaa !4
  %add12.i = fadd double %34, 0.000000e+00
  store double %add12.i, double* %arrayidx.i341, align 8, !tbaa !4
  br i1 %cmp87, label %storeEntries.exit, label %if.then14.i

if.then14.i:                                      ; preds = %if.end.i342
  %cmp15.i.not = icmp slt i32 %sub.i335, 1
  %cmp.i326.not = xor i1 %cmp.i326, true
  %brmerge = or i1 %cmp15.i.not, %cmp.i326.not
  %.mux = select i1 %cmp15.i.not, %struct._Chv* null, %struct._Chv* %frontJ.3
  br i1 %brmerge, label %if.end22.i, label %if.then18.i346

if.then18.i346:                                   ; preds = %if.then14.i
  %id.i344 = getelementptr inbounds %struct._Chv* %frontJ.3, i64 0, i32 0
  %35 = load i32* %id.i344, align 4, !tbaa !3
  %call19.i345 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %msgFile, i8* getelementptr inbounds ([30 x i8]* @.str19, i64 0, i64 0), i32 %35) #5
  call void @Chv_writeForHumanEye(%struct._Chv* %frontJ.3, %struct._IO_FILE* %msgFile) #5
  %call20.i = call i32 @fflush(%struct._IO_FILE* %msgFile) #5
  br label %if.end22.i

if.end22.i:                                       ; preds = %if.then14.i, %if.then18.i346
  %postponedchv.0.i = phi %struct._Chv* [ %frontJ.3, %if.then18.i346 ], [ %.mux, %if.then14.i ]
  br i1 %cmp72, label %if.then24.i, label %if.end27.i

if.then24.i:                                      ; preds = %if.end22.i
  %call25.i = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %msgFile, i8* getelementptr inbounds ([28 x i8]* @.str20, i64 0, i64 0), %struct._Chv* %postponedchv.0.i) #5
  %call26.i = call i32 @fflush(%struct._IO_FILE* %msgFile) #5
  br label %if.end27.i

if.end27.i:                                       ; preds = %if.then24.i, %if.end22.i
  %id28.i = getelementptr inbounds %struct._Chv* %frontJ.3, i64 0, i32 0
  %36 = load i32* %id28.i, align 4, !tbaa !3
  %idxprom.i347 = sext i32 %36 to i64
  %arrayidx29.i = getelementptr inbounds i32* %parent, i64 %idxprom.i347
  %37 = load i32* %arrayidx29.i, align 4, !tbaa !3
  call void @FrontMtx_storePostponedData(%struct._FrontMtx* %frontmtx, %struct._Chv* %postponedchv.0.i, i32 %sub.i335, i32 %37, %struct._ChvList* %postList, %struct._ChvManager* %chvmanager) #5
  %arrayidx31.i = getelementptr inbounds double* %cpus, i64 5
  %38 = load double* %arrayidx31.i, align 8, !tbaa !4
  %add32.i = fadd double %38, 0.000000e+00
  store double %add32.i, double* %arrayidx31.i, align 8, !tbaa !4
  br label %storeEntries.exit

storeEntries.exit:                                ; preds = %if.end.i342, %if.end27.i
  call void @ChvManager_releaseObject(%struct._ChvManager* %chvmanager, %struct._Chv* %frontJ.3) #5
  store %struct._Chv* null, %struct._Chv** %arrayidx41, align 8, !tbaa !0
  store i8 70, i8* %arrayidx, align 1, !tbaa !1
  br label %if.end157

if.else131:                                       ; preds = %lor.lhs.false
  br i1 %5, label %if.then135, label %if.end157

if.then135:                                       ; preds = %if.else131
  %cmp136 = icmp eq %struct._Chv* %frontJ.1, null
  br i1 %cmp136, label %if.end153, label %if.then138

if.then138:                                       ; preds = %if.then135
  %cmp139 = icmp sgt i32 %msglvl, 1
  br i1 %cmp139, label %if.end144, label %if.end149

if.end144:                                        ; preds = %if.then138
  %call142 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %msgFile, i8* getelementptr inbounds ([30 x i8]* @.str4, i64 0, i64 0), i32 %J) #5
  %call143 = call i32 @fflush(%struct._IO_FILE* %msgFile) #5
  %cmp145 = icmp sgt i32 %msglvl, 3
  br i1 %cmp145, label %if.then147, label %if.end149

if.then147:                                       ; preds = %if.end144
  call void @Chv_writeForHumanEye(%struct._Chv* %frontJ.1, %struct._IO_FILE* %msgFile) #5
  %call148 = call i32 @fflush(%struct._IO_FILE* %msgFile) #5
  br label %if.end149

if.end149:                                        ; preds = %if.then138, %if.then147, %if.end144
  call void @ChvList_addObjectToList(%struct._ChvList* %aggList, %struct._Chv* %frontJ.1, i32 %J) #5
  %arrayidx151 = getelementptr inbounds double* %cpus, i64 7
  %39 = load double* %arrayidx151, align 8, !tbaa !4
  %add152 = fadd double %39, 0.000000e+00
  store double %add152, double* %arrayidx151, align 8, !tbaa !4
  br label %if.end153

if.end153:                                        ; preds = %if.then135, %if.end149
  store i8 70, i8* %arrayidx, align 1, !tbaa !1
  br label %if.end157

if.end157:                                        ; preds = %if.else131, %if.end153, %if.end79, %if.then118, %storeEntries.exit, %if.end101
  %dec = add nsw i32 %lookahead, -1
  %cmp158 = icmp sgt i32 %lookahead, 0
  br i1 %cmp158, label %land.lhs.true160, label %if.end167

land.lhs.true160:                                 ; preds = %if.end157
  %arrayidx162 = getelementptr inbounds i32* %parent, i64 %idxprom
  %40 = load i32* %arrayidx162, align 4, !tbaa !3
  %cmp163 = icmp eq i32 %40, -1
  br i1 %cmp163, label %if.end167, label %if.then165

if.then165:                                       ; preds = %land.lhs.true160
  %call166 = call signext i8 @FrontMtx_factorVisit(%struct._FrontMtx* %frontmtx, %struct._Pencil* %pencil, i32 %J, i32 %myid, i32* %owners, %struct._Chv** %fronts, i32 %dec, double %tau, double %droptol, i8* %status, %struct._IP** %heads, %struct._IV* %pivotsizesIV, %struct._DV* %workDV, i32* %parent, %struct._ChvList* %aggList, %struct._ChvList* %postList, %struct._ChvManager* %chvmanager, i32* %stats, double* %cpus, i32 %msglvl, %struct._IO_FILE* %msgFile) #6
  br label %if.end167

if.end167:                                        ; preds = %land.lhs.true160, %if.end157, %if.then165
  %41 = load i8* %arrayidx, align 1, !tbaa !1
  br label %return

return:                                           ; preds = %entry, %if.end167
  %retval.0 = phi i8 [ %41, %if.end167 ], [ 70, %entry ]
  ret i8 %retval.0
}

; Function Attrs: nounwind optsize uwtable
define %struct._Chv* @FrontMtx_setupFront(%struct._FrontMtx* %frontmtx, %struct._Pencil* %pencil, i32 %J, i32 %myid, i32* %owners, %struct._ChvManager* %chvmanager, double* %cpus, i32 %msglvl, %struct._IO_FILE* %msgFile) #0 {
entry:
  %nbytes = alloca i32, align 4
  %nD = alloca i32, align 4
  %nL = alloca i32, align 4
  %nU = alloca i32, align 4
  %cmp = icmp sgt i32 %msglvl, 4
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %msgFile, i8* getelementptr inbounds ([129 x i8]* @.str5, i64 0, i64 0), %struct._FrontMtx* %frontmtx, %struct._Pencil* %pencil, i32 %J, i32 %myid, i32* %owners, %struct._ChvManager* %chvmanager, double* %cpus, i32 %msglvl, %struct._IO_FILE* %msgFile) #5
  %call1 = call i32 @fflush(%struct._IO_FILE* %msgFile) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  call void @FrontMtx_initialFrontDimensions(%struct._FrontMtx* %frontmtx, i32 %J, i32* %nD, i32* %nL, i32* %nU, i32* %nbytes) #5
  %cmp2 = icmp sgt i32 %msglvl, 2
  br i1 %cmp2, label %if.then9, label %if.end6

if.end6:                                          ; preds = %if.end
  %0 = load i32* %nbytes, align 4, !tbaa !3
  %call7 = call %struct._Chv* @ChvManager_newObjectOfSizeNbytes(%struct._ChvManager* %chvmanager, i32 %0) #5
  br label %if.end12

if.then9:                                         ; preds = %if.end
  %1 = load i32* %nD, align 4, !tbaa !3
  %2 = load i32* %nL, align 4, !tbaa !3
  %3 = load i32* %nU, align 4, !tbaa !3
  %4 = load i32* %nbytes, align 4, !tbaa !3
  %call4 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %msgFile, i8* getelementptr inbounds ([33 x i8]* @.str6, i64 0, i64 0), i32 %1, i32 %2, i32 %3, i32 %4) #5
  %call5 = call i32 @fflush(%struct._IO_FILE* %msgFile) #5
  %5 = load i32* %nbytes, align 4, !tbaa !3
  %call779 = call %struct._Chv* @ChvManager_newObjectOfSizeNbytes(%struct._ChvManager* %chvmanager, i32 %5) #5
  %call10 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %msgFile, i8* getelementptr inbounds ([14 x i8]* @.str7, i64 0, i64 0), %struct._Chv* %call779) #5
  %call11 = call i32 @fflush(%struct._IO_FILE* %msgFile) #5
  br label %if.end12

if.end12:                                         ; preds = %if.end6, %if.then9
  %call780 = phi %struct._Chv* [ %call779, %if.then9 ], [ %call7, %if.end6 ]
  %6 = load i32* %nD, align 4, !tbaa !3
  %7 = load i32* %nL, align 4, !tbaa !3
  %8 = load i32* %nU, align 4, !tbaa !3
  %type = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 2
  %9 = load i32* %type, align 4, !tbaa !3
  %symmetryflag = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 3
  %10 = load i32* %symmetryflag, align 4, !tbaa !3
  call void @Chv_init(%struct._Chv* %call780, i32 %J, i32 %6, i32 %7, i32 %8, i32 %9, i32 %10) #5
  call void @FrontMtx_initializeFront(%struct._FrontMtx* %frontmtx, %struct._Chv* %call780, i32 %J) #6
  %11 = load double* %cpus, align 8, !tbaa !4
  %add = fadd double %11, 0.000000e+00
  store double %add, double* %cpus, align 8, !tbaa !4
  %cmp13 = icmp eq %struct._Pencil* %pencil, null
  br i1 %cmp13, label %if.end26, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end12
  %cmp14 = icmp eq i32* %owners, null
  br i1 %cmp14, label %if.then17, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %idxprom = sext i32 %J to i64
  %arrayidx15 = getelementptr inbounds i32* %owners, i64 %idxprom
  %12 = load i32* %arrayidx15, align 4, !tbaa !3
  %cmp16 = icmp eq i32 %12, %myid
  br i1 %cmp16, label %if.then17, label %if.end26

if.then17:                                        ; preds = %lor.lhs.false, %land.lhs.true
  call void @FrontMtx_loadEntries(%struct._Chv* %call780, %struct._Pencil* %pencil, i32 %msglvl, %struct._IO_FILE* %msgFile) #5
  %arrayidx19 = getelementptr inbounds double* %cpus, i64 1
  %13 = load double* %arrayidx19, align 8, !tbaa !4
  %add20 = fadd double %13, 0.000000e+00
  store double %add20, double* %arrayidx19, align 8, !tbaa !4
  %cmp21 = icmp sgt i32 %msglvl, 1
  br i1 %cmp21, label %if.end26.thread, label %if.end35

if.end26.thread:                                  ; preds = %if.then17
  %14 = call i64 @fwrite(i8* getelementptr inbounds ([26 x i8]* @.str8, i64 0, i64 0), i64 25, i64 1, %struct._IO_FILE* %msgFile)
  %call24 = call i32 @fflush(%struct._IO_FILE* %msgFile) #5
  br label %if.end31

if.end26:                                         ; preds = %if.end12, %lor.lhs.false
  %cmp27 = icmp sgt i32 %msglvl, 1
  br i1 %cmp27, label %if.end31, label %if.end35

if.end31:                                         ; preds = %if.end26, %if.end26.thread
  %15 = call i64 @fwrite(i8* getelementptr inbounds ([21 x i8]* @.str9, i64 0, i64 0), i64 20, i64 1, %struct._IO_FILE* %msgFile)
  %call30 = call i32 @fflush(%struct._IO_FILE* %msgFile) #5
  %cmp32 = icmp sgt i32 %msglvl, 3
  br i1 %cmp32, label %if.then33, label %if.end35

if.then33:                                        ; preds = %if.end31
  call void @Chv_writeForHumanEye(%struct._Chv* %call780, %struct._IO_FILE* %msgFile) #5
  %call34 = call i32 @fflush(%struct._IO_FILE* %msgFile) #5
  br label %if.end35

if.end35:                                         ; preds = %if.then17, %if.end26, %if.then33, %if.end31
  ret %struct._Chv* %call780
}

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #2

; Function Attrs: nounwind optsize
declare i32 @fflush(%struct._IO_FILE* nocapture) #2

; Function Attrs: optsize
declare void @FrontMtx_update(%struct._FrontMtx*, %struct._Chv*, %struct._IP**, i8*, %struct._DV*, i32, %struct._IO_FILE*) #1

; Function Attrs: optsize
declare i32 @ChvList_isListNonempty(%struct._ChvList*, i32) #1

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @assembleAggregates(%struct._Chv* %frontJ, %struct._ChvList* %aggList, %struct._ChvManager* %chvmanager, double* nocapture %cpus, i32 %msglvl, %struct._IO_FILE* %msgFile) #0 {
entry:
  %id = getelementptr inbounds %struct._Chv* %frontJ, i64 0, i32 0
  %0 = load i32* %id, align 4, !tbaa !3
  %call = tail call %struct._Chv* @ChvList_getList(%struct._ChvList* %aggList, i32 %0) #5
  %cmp11 = icmp eq %struct._Chv* %call, null
  br i1 %cmp11, label %for.end, label %for.body

for.body:                                         ; preds = %entry, %for.body
  %chv.012 = phi %struct._Chv* [ %1, %for.body ], [ %call, %entry ]
  tail call void @Chv_assembleChv(%struct._Chv* %frontJ, %struct._Chv* %chv.012) #5
  %next = getelementptr inbounds %struct._Chv* %chv.012, i64 0, i32 10
  %1 = load %struct._Chv** %next, align 8, !tbaa !0
  %cmp = icmp eq %struct._Chv* %1, null
  br i1 %cmp, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %entry
  %arrayidx = getelementptr inbounds double* %cpus, i64 8
  %2 = load double* %arrayidx, align 8, !tbaa !4
  %add = fadd double %2, 0.000000e+00
  store double %add, double* %arrayidx, align 8, !tbaa !4
  tail call void @ChvManager_releaseListOfObjects(%struct._ChvManager* %chvmanager, %struct._Chv* %call) #5
  %cmp1 = icmp sgt i32 %msglvl, 3
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.end
  %3 = tail call i64 @fwrite(i8* getelementptr inbounds ([17 x i8]* @.str30, i64 0, i64 0), i64 16, i64 1, %struct._IO_FILE* %msgFile)
  tail call void @Chv_writeForHumanEye(%struct._Chv* %frontJ, %struct._IO_FILE* %msgFile) #5
  %call3 = tail call i32 @fflush(%struct._IO_FILE* %msgFile) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end
  ret void
}

; Function Attrs: optsize
declare i32 @ChvList_isCountZero(%struct._ChvList*, i32) #1

; Function Attrs: optsize
declare void @ChvManager_releaseObject(%struct._ChvManager*, %struct._Chv*) #1

; Function Attrs: optsize
declare void @Chv_writeForHumanEye(%struct._Chv*, %struct._IO_FILE*) #1

; Function Attrs: optsize
declare void @ChvList_addObjectToList(%struct._ChvList*, %struct._Chv*, i32) #1

; Function Attrs: optsize
declare void @FrontMtx_initialFrontDimensions(%struct._FrontMtx*, i32, i32*, i32*, i32*, i32*) #1

; Function Attrs: optsize
declare %struct._Chv* @ChvManager_newObjectOfSizeNbytes(%struct._ChvManager*, i32) #1

; Function Attrs: optsize
declare void @FrontMtx_loadEntries(%struct._Chv*, %struct._Pencil*, i32, %struct._IO_FILE*) #1

; Function Attrs: nounwind optsize uwtable
define noalias %struct._IP** @FrontMtx_factorSetup(%struct._FrontMtx* %frontmtx, %struct._IV* %frontOwnersIV, i32 %myid, i32 %msglvl, %struct._IO_FILE* nocapture %msgFile) #0 {
entry:
  %nadj = alloca i32, align 4
  %adj = alloca i32*, align 8
  %call = call i32 @FrontMtx_nfront(%struct._FrontMtx* %frontmtx) #5
  %cmp = icmp eq %struct._IV* %frontOwnersIV, null
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call1 = call i32* @IV_entries(%struct._IV* %frontOwnersIV) #5
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  %owners.0 = phi i32* [ %call1, %if.then ], [ null, %entry ]
  %symbfacIVL2 = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 13
  %0 = load %struct._IVL** %symbfacIVL2, align 8, !tbaa !0
  %frontETree = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 11
  %1 = load %struct._ETree** %frontETree, align 8, !tbaa !0
  %call3 = call i32* @ETree_vtxToFront(%struct._ETree* %1) #5
  %call4 = call i32* @IVinit(i32 %call, i32 -1) #5
  %cmp5212 = icmp sgt i32 %call, 0
  br i1 %cmp5212, label %for.body.lr.ph, label %for.end29

for.body.lr.ph:                                   ; preds = %if.end
  %cmp6 = icmp eq i32* %owners.0, null
  br label %for.body

for.body:                                         ; preds = %for.inc27, %for.body.lr.ph
  %indvars.iv225 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next226, %for.inc27 ]
  %count.0214 = phi i32 [ 0, %for.body.lr.ph ], [ %count.3, %for.inc27 ]
  br i1 %cmp6, label %if.then8, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %arrayidx = getelementptr inbounds i32* %owners.0, i64 %indvars.iv225
  %2 = load i32* %arrayidx, align 4, !tbaa !3
  %cmp7 = icmp eq i32 %2, %myid
  br i1 %cmp7, label %if.then8, label %for.inc27

if.then8:                                         ; preds = %lor.lhs.false, %for.body
  %3 = trunc i64 %indvars.iv225 to i32
  call void @IVL_listAndSize(%struct._IVL* %0, i32 %3, i32* %nadj, i32** %adj) #5
  %arrayidx10 = getelementptr inbounds i32* %call4, i64 %indvars.iv225
  store i32 %3, i32* %arrayidx10, align 4, !tbaa !3
  %4 = load i32* %nadj, align 4, !tbaa !3
  %cmp12208 = icmp sgt i32 %4, 0
  br i1 %cmp12208, label %for.body13.lr.ph, label %for.inc27

for.body13.lr.ph:                                 ; preds = %if.then8
  %5 = load i32** %adj, align 8, !tbaa !0
  br label %for.body13

for.body13:                                       ; preds = %for.body13.lr.ph, %for.inc
  %6 = phi i32 [ %4, %for.body13.lr.ph ], [ %10, %for.inc ]
  %indvars.iv223 = phi i64 [ 0, %for.body13.lr.ph ], [ %indvars.iv.next224, %for.inc ]
  %count.1210 = phi i32 [ %count.0214, %for.body13.lr.ph ], [ %count.2, %for.inc ]
  %arrayidx15 = getelementptr inbounds i32* %5, i64 %indvars.iv223
  %7 = load i32* %arrayidx15, align 4, !tbaa !3
  %idxprom16 = sext i32 %7 to i64
  %arrayidx17 = getelementptr inbounds i32* %call3, i64 %idxprom16
  %8 = load i32* %arrayidx17, align 4, !tbaa !3
  %idxprom18 = sext i32 %8 to i64
  %arrayidx19 = getelementptr inbounds i32* %call4, i64 %idxprom18
  %9 = load i32* %arrayidx19, align 4, !tbaa !3
  %cmp20 = icmp eq i32 %9, %3
  br i1 %cmp20, label %for.inc, label %if.then21

if.then21:                                        ; preds = %for.body13
  store i32 %3, i32* %arrayidx19, align 4, !tbaa !3
  %inc = add nsw i32 %count.1210, 1
  %.pre = load i32* %nadj, align 4, !tbaa !3
  br label %for.inc

for.inc:                                          ; preds = %for.body13, %if.then21
  %10 = phi i32 [ %.pre, %if.then21 ], [ %6, %for.body13 ]
  %count.2 = phi i32 [ %inc, %if.then21 ], [ %count.1210, %for.body13 ]
  %indvars.iv.next224 = add i64 %indvars.iv223, 1
  %11 = trunc i64 %indvars.iv.next224 to i32
  %cmp12 = icmp slt i32 %11, %10
  br i1 %cmp12, label %for.body13, label %for.inc27

for.inc27:                                        ; preds = %if.then8, %for.inc, %lor.lhs.false
  %count.3 = phi i32 [ %count.0214, %lor.lhs.false ], [ %count.0214, %if.then8 ], [ %count.2, %for.inc ]
  %indvars.iv.next226 = add i64 %indvars.iv225, 1
  %lftr.wideiv227 = trunc i64 %indvars.iv.next226 to i32
  %exitcond228 = icmp eq i32 %lftr.wideiv227, %call
  br i1 %exitcond228, label %for.end29, label %for.body

for.end29:                                        ; preds = %for.inc27, %if.end
  %count.0.lcssa = phi i32 [ 0, %if.end ], [ %count.3, %for.inc27 ]
  %add = add i32 %call, 2
  %cmp30 = icmp sgt i32 %add, 0
  br i1 %cmp30, label %if.then31, label %if.else43

if.then31:                                        ; preds = %for.end29
  %conv = sext i32 %add to i64
  %mul = shl nsw i64 %conv, 3
  %call33 = call noalias i8* @malloc(i64 %mul) #5
  %12 = bitcast i8* %call33 to %struct._IP**
  %cmp34 = icmp eq i8* %call33, null
  br i1 %cmp34, label %if.then36, label %if.end54

if.then36:                                        ; preds = %if.then31
  %13 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call40 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %13, i8* getelementptr inbounds ([49 x i8]* @.str10, i64 0, i64 0), i64 %mul, i32 776, i8* getelementptr inbounds ([89 x i8]* @.str11, i64 0, i64 0)) #5
  call void @exit(i32 -1) #7
  unreachable

if.else43:                                        ; preds = %for.end29
  %cmp45 = icmp eq i32 %add, 0
  br i1 %cmp45, label %if.end54, label %if.else48

if.else48:                                        ; preds = %if.else43
  %14 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %conv50 = sext i32 %add to i64
  %mul51 = shl nsw i64 %conv50, 3
  %call52 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %14, i8* getelementptr inbounds ([47 x i8]* @.str12, i64 0, i64 0), i64 %mul51, i32 776, i8* getelementptr inbounds ([89 x i8]* @.str11, i64 0, i64 0)) #5
  call void @exit(i32 -1) #7
  unreachable

if.end54:                                         ; preds = %if.else43, %if.then31
  %heads.0 = phi %struct._IP** [ %12, %if.then31 ], [ null, %if.else43 ]
  %add56 = add i32 %call, 1
  %cmp57206 = icmp slt i32 %add56, 0
  br i1 %cmp57206, label %for.end64, label %for.body59.lr.ph

for.body59.lr.ph:                                 ; preds = %if.end54
  %heads.0222 = bitcast %struct._IP** %heads.0 to i8*
  %15 = zext i32 %add56 to i64
  %16 = shl nuw nsw i64 %15, 3
  %17 = add i64 %16, 8
  call void @llvm.memset.p0i8.i64(i8* %heads.0222, i8 0, i64 %17, i32 8, i1 false)
  br label %for.end64

for.end64:                                        ; preds = %for.body59.lr.ph, %if.end54
  %call65 = call %struct._IP* @IP_init(i32 %count.0.lcssa, i32 1) #5
  %idxprom67 = sext i32 %add56 to i64
  %arrayidx68 = getelementptr inbounds %struct._IP** %heads.0, i64 %idxprom67
  store %struct._IP* %call65, %struct._IP** %arrayidx68, align 8, !tbaa !0
  %idxprom69 = sext i32 %call to i64
  %arrayidx70 = getelementptr inbounds %struct._IP** %heads.0, i64 %idxprom69
  store %struct._IP* %call65, %struct._IP** %arrayidx70, align 8, !tbaa !0
  call void @IVfill(i32 %call, i32* %call4, i32 -1) #5
  br i1 %cmp5212, label %for.body74.lr.ph, label %for.end127

for.body74.lr.ph:                                 ; preds = %for.end64
  %cmp75 = icmp eq i32* %owners.0, null
  %cmp109 = icmp sgt i32 %msglvl, 3
  br label %for.body74

for.body74:                                       ; preds = %for.inc125, %for.body74.lr.ph
  %indvars.iv216 = phi i64 [ 0, %for.body74.lr.ph ], [ %indvars.iv.next217, %for.inc125 ]
  br i1 %cmp75, label %if.then82, label %lor.lhs.false77

lor.lhs.false77:                                  ; preds = %for.body74
  %arrayidx79 = getelementptr inbounds i32* %owners.0, i64 %indvars.iv216
  %18 = load i32* %arrayidx79, align 4, !tbaa !3
  %cmp80 = icmp eq i32 %18, %myid
  br i1 %cmp80, label %if.then82, label %for.inc125

if.then82:                                        ; preds = %lor.lhs.false77, %for.body74
  %19 = trunc i64 %indvars.iv216 to i32
  call void @IVL_listAndSize(%struct._IVL* %0, i32 %19, i32* %nadj, i32** %adj) #5
  %arrayidx84 = getelementptr inbounds i32* %call4, i64 %indvars.iv216
  store i32 %19, i32* %arrayidx84, align 4, !tbaa !3
  %20 = load i32* %nadj, align 4, !tbaa !3
  %cmp86202 = icmp sgt i32 %20, 0
  br i1 %cmp86202, label %for.body88, label %for.inc125

for.body88:                                       ; preds = %for.inc121, %if.then82
  %indvars.iv = phi i64 [ 0, %if.then82 ], [ %indvars.iv.next, %for.inc121 ]
  %21 = load i32** %adj, align 8, !tbaa !0
  %arrayidx90 = getelementptr inbounds i32* %21, i64 %indvars.iv
  %22 = load i32* %arrayidx90, align 4, !tbaa !3
  %idxprom91 = sext i32 %22 to i64
  %arrayidx92 = getelementptr inbounds i32* %call3, i64 %idxprom91
  %23 = load i32* %arrayidx92, align 4, !tbaa !3
  %idxprom93 = sext i32 %23 to i64
  %arrayidx94 = getelementptr inbounds i32* %call4, i64 %idxprom93
  %24 = load i32* %arrayidx94, align 4, !tbaa !3
  %cmp95 = icmp eq i32 %24, %19
  br i1 %cmp95, label %for.inc121, label %if.then97

if.then97:                                        ; preds = %for.body88
  store i32 %19, i32* %arrayidx94, align 4, !tbaa !3
  %25 = load %struct._IP** %arrayidx70, align 8, !tbaa !0
  %next = getelementptr inbounds %struct._IP* %25, i64 0, i32 1
  %26 = load %struct._IP** %next, align 8, !tbaa !0
  store %struct._IP* %26, %struct._IP** %arrayidx70, align 8, !tbaa !0
  %val = getelementptr inbounds %struct._IP* %25, i64 0, i32 0
  store i32 %19, i32* %val, align 4, !tbaa !3
  %arrayidx105 = getelementptr inbounds %struct._IP** %heads.0, i64 %idxprom93
  %27 = load %struct._IP** %arrayidx105, align 8, !tbaa !0
  store %struct._IP* %27, %struct._IP** %next, align 8, !tbaa !0
  store %struct._IP* %25, %struct._IP** %arrayidx105, align 8, !tbaa !0
  br i1 %cmp109, label %if.then111, label %for.inc121

if.then111:                                       ; preds = %if.then97
  %cmp113 = icmp eq %struct._IP* %27, null
  br i1 %cmp113, label %cond.end, label %cond.false

cond.false:                                       ; preds = %if.then111
  %val116 = getelementptr inbounds %struct._IP* %27, i64 0, i32 0
  %28 = load i32* %val116, align 4, !tbaa !3
  br label %cond.end

cond.end:                                         ; preds = %if.then111, %cond.false
  %cond = phi i32 [ %28, %cond.false ], [ -1, %if.then111 ]
  %call117 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %msgFile, i8* getelementptr inbounds ([31 x i8]* @.str13, i64 0, i64 0), i32 %23, i32 %19, i32 %23, i32 %cond) #5
  %call118 = call i32 @fflush(%struct._IO_FILE* %msgFile) #5
  br label %for.inc121

for.inc121:                                       ; preds = %if.then97, %for.body88, %cond.end
  %indvars.iv.next = add i64 %indvars.iv, 1
  %29 = load i32* %nadj, align 4, !tbaa !3
  %30 = trunc i64 %indvars.iv.next to i32
  %cmp86 = icmp slt i32 %30, %29
  br i1 %cmp86, label %for.body88, label %for.inc125

for.inc125:                                       ; preds = %if.then82, %for.inc121, %lor.lhs.false77
  %indvars.iv.next217 = add i64 %indvars.iv216, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next217 to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %call
  br i1 %exitcond, label %for.end127, label %for.body74

for.end127:                                       ; preds = %for.inc125, %for.end64
  call void @IVfree(i32* %call4) #5
  ret %struct._IP** %heads.0
}

; Function Attrs: optsize
declare i32 @FrontMtx_nfront(%struct._FrontMtx*) #1

; Function Attrs: optsize
declare i32* @IV_entries(%struct._IV*) #1

; Function Attrs: optsize
declare i32* @ETree_vtxToFront(%struct._ETree*) #1

; Function Attrs: optsize
declare i32* @IVinit(i32, i32) #1

; Function Attrs: nounwind optsize
declare noalias i8* @malloc(i64) #2

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32) #3

; Function Attrs: optsize
declare %struct._IP* @IP_init(i32, i32) #1

; Function Attrs: optsize
declare void @IVfill(i32, i32*, i32) #1

; Function Attrs: optsize
declare void @IVfree(i32*) #1

; Function Attrs: nounwind optsize uwtable
define i32* @FrontMtx_nactiveChild(%struct._FrontMtx* %frontmtx, i8* %status, i32 %myid) #0 {
entry:
  %cmp = icmp eq %struct._FrontMtx* %frontmtx, null
  %cmp1 = icmp eq i8* %status, null
  %or.cond = or i1 %cmp, %cmp1
  %cmp3 = icmp slt i32 %myid, 0
  %or.cond30 = or i1 %or.cond, %cmp3
  br i1 %or.cond30, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([60 x i8]* @.str14, i64 0, i64 0), %struct._FrontMtx* %frontmtx, i8* %status, i32 %myid) #5
  tail call void @exit(i32 -1) #7
  unreachable

if.end:                                           ; preds = %entry
  %nfront4 = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 0
  %1 = load i32* %nfront4, align 4, !tbaa !3
  %frontETree = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 11
  %2 = load %struct._ETree** %frontETree, align 8, !tbaa !0
  %call5 = tail call i32* @ETree_par(%struct._ETree* %2) #5
  %call6 = tail call i32* @IVinit(i32 %1, i32 0) #5
  %cmp731 = icmp sgt i32 %1, 0
  br i1 %cmp731, label %for.body, label %for.end

for.body:                                         ; preds = %if.end, %for.inc
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %if.end ]
  %arrayidx = getelementptr inbounds i8* %status, i64 %indvars.iv
  %3 = load i8* %arrayidx, align 1, !tbaa !1
  %cmp8 = icmp eq i8 %3, 87
  br i1 %cmp8, label %land.lhs.true, label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %arrayidx11 = getelementptr inbounds i32* %call5, i64 %indvars.iv
  %4 = load i32* %arrayidx11, align 4, !tbaa !3
  %cmp12 = icmp eq i32 %4, -1
  br i1 %cmp12, label %for.inc, label %if.then14

if.then14:                                        ; preds = %land.lhs.true
  %idxprom15 = sext i32 %4 to i64
  %arrayidx16 = getelementptr inbounds i32* %call6, i64 %idxprom15
  %5 = load i32* %arrayidx16, align 4, !tbaa !3
  %inc = add nsw i32 %5, 1
  store i32 %inc, i32* %arrayidx16, align 4, !tbaa !3
  br label %for.inc

for.inc:                                          ; preds = %land.lhs.true, %for.body, %if.then14
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %1
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          ; preds = %for.inc, %if.end
  ret i32* %call6
}

; Function Attrs: optsize
declare i32* @ETree_par(%struct._ETree*) #1

; Function Attrs: nounwind optsize uwtable
define %struct._Ideq* @FrontMtx_setUpDequeue(%struct._FrontMtx* %frontmtx, i32* %owners, i32 %myid, i8* %status, %struct._IP** %heads, i8 signext %activeFlag, i8 signext %inactiveFlag, i32 %msglvl, %struct._IO_FILE* nocapture %msgFile) #0 {
entry:
  %cmp = icmp eq %struct._FrontMtx* %frontmtx, null
  %cmp1 = icmp eq i32* %owners, null
  %or.cond = or i1 %cmp, %cmp1
  %cmp3 = icmp eq i8* %status, null
  %or.cond79 = or i1 %or.cond, %cmp3
  %cmp5 = icmp slt i32 %myid, 0
  %or.cond80 = or i1 %or.cond79, %cmp5
  br i1 %or.cond80, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %conv = sext i8 %activeFlag to i32
  %conv6 = sext i8 %inactiveFlag to i32
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([139 x i8]* @.str15, i64 0, i64 0), %struct._FrontMtx* %frontmtx, i32* %owners, i32 %myid, i8* %status, %struct._IP** %heads, i32 %conv, i32 %conv6) #5
  tail call void @exit(i32 -1) #7
  unreachable

if.end:                                           ; preds = %entry
  %nfront7 = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 0
  %1 = load i32* %nfront7, align 4, !tbaa !3
  %tree8 = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 10
  %2 = load %struct._Tree** %tree8, align 8, !tbaa !0
  %par9 = getelementptr inbounds %struct._Tree* %2, i64 0, i32 2
  %3 = load i32** %par9, align 8, !tbaa !0
  tail call void @CVfill(i32 %1, i8* %status, i8 signext %inactiveFlag) #5
  %cmp1083 = icmp sgt i32 %1, 0
  br i1 %cmp1083, label %for.body.lr.ph, label %for.end47

for.body.lr.ph:                                   ; preds = %if.end
  %cmp22 = icmp eq %struct._IP** %heads, null
  br label %for.body

for.body:                                         ; preds = %for.inc45, %for.body.lr.ph
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.inc45 ]
  %J.085 = phi i32 [ 0, %for.body.lr.ph ], [ %inc46, %for.inc45 ]
  %npath.084 = phi i32 [ 0, %for.body.lr.ph ], [ %npath.1, %for.inc45 ]
  %arrayidx = getelementptr inbounds i8* %status, i64 %indvars.iv
  %4 = load i8* %arrayidx, align 1, !tbaa !1
  %cmp14 = icmp eq i8 %4, %inactiveFlag
  br i1 %cmp14, label %if.then16, label %for.inc45

if.then16:                                        ; preds = %for.body
  %arrayidx18 = getelementptr inbounds i32* %owners, i64 %indvars.iv
  %5 = load i32* %arrayidx18, align 4, !tbaa !3
  %cmp19 = icmp eq i32 %5, %myid
  br i1 %cmp19, label %land.rhs.lr.ph, label %lor.lhs.false21

lor.lhs.false21:                                  ; preds = %if.then16
  br i1 %cmp22, label %for.inc45, label %land.lhs.true

land.lhs.true:                                    ; preds = %lor.lhs.false21
  %arrayidx25 = getelementptr inbounds %struct._IP** %heads, i64 %indvars.iv
  %6 = load %struct._IP** %arrayidx25, align 8, !tbaa !0
  %cmp26 = icmp eq %struct._IP* %6, null
  br i1 %cmp26, label %for.inc45, label %land.rhs.lr.ph

land.rhs.lr.ph:                                   ; preds = %if.then16, %land.lhs.true
  %inc = add nsw i32 %npath.084, 1
  br label %land.rhs

land.rhs:                                         ; preds = %land.rhs.lr.ph, %for.body38
  %K.082 = phi i32 [ %J.085, %land.rhs.lr.ph ], [ %8, %for.body38 ]
  %idxprom32 = sext i32 %K.082 to i64
  %arrayidx33 = getelementptr inbounds i8* %status, i64 %idxprom32
  %7 = load i8* %arrayidx33, align 1, !tbaa !1
  %cmp36 = icmp eq i8 %7, %activeFlag
  br i1 %cmp36, label %for.inc45, label %for.body38

for.body38:                                       ; preds = %land.rhs
  store i8 %activeFlag, i8* %arrayidx33, align 1, !tbaa !1
  %arrayidx42 = getelementptr inbounds i32* %3, i64 %idxprom32
  %8 = load i32* %arrayidx42, align 4, !tbaa !3
  %cmp30 = icmp eq i32 %8, -1
  br i1 %cmp30, label %for.inc45, label %land.rhs

for.inc45:                                        ; preds = %land.rhs, %for.body38, %land.lhs.true, %lor.lhs.false21, %for.body
  %npath.1 = phi i32 [ %npath.084, %land.lhs.true ], [ %npath.084, %lor.lhs.false21 ], [ %npath.084, %for.body ], [ %inc, %for.body38 ], [ %inc, %land.rhs ]
  %indvars.iv.next = add i64 %indvars.iv, 1
  %inc46 = add nsw i32 %J.085, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %1
  br i1 %exitcond, label %for.end47, label %for.body

for.end47:                                        ; preds = %for.inc45, %if.end
  %npath.0.lcssa = phi i32 [ 0, %if.end ], [ %npath.1, %for.inc45 ]
  %call48 = tail call %struct._Ideq* @Ideq_new() #5
  %call49 = tail call i32 @Ideq_resize(%struct._Ideq* %call48, i32 %npath.0.lcssa) #5
  ret %struct._Ideq* %call48
}

; Function Attrs: optsize
declare void @CVfill(i32, i8*, i8 signext) #1

; Function Attrs: optsize
declare %struct._Ideq* @Ideq_new() #1

; Function Attrs: optsize
declare i32 @Ideq_resize(%struct._Ideq*, i32) #1

; Function Attrs: nounwind optsize uwtable
define void @FrontMtx_loadActiveLeaves(%struct._FrontMtx* nocapture %frontmtx, i8* nocapture %status, i8 signext %activeFlag, %struct._Ideq* %dequeue) #0 {
entry:
  %nfront1 = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 0
  %0 = load i32* %nfront1, align 4, !tbaa !3
  %tree = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 10
  %1 = load %struct._Tree** %tree, align 8, !tbaa !0
  %fch2 = getelementptr inbounds %struct._Tree* %1, i64 0, i32 3
  %2 = load i32** %fch2, align 8, !tbaa !0
  %sib4 = getelementptr inbounds %struct._Tree* %1, i64 0, i32 4
  %3 = load i32** %sib4, align 8, !tbaa !0
  %cmp55 = icmp sgt i32 %0, 0
  br i1 %cmp55, label %for.body, label %for.end37

for.body:                                         ; preds = %entry, %for.inc35
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc35 ], [ 0, %entry ]
  %arrayidx = getelementptr inbounds i8* %status, i64 %indvars.iv
  %4 = load i8* %arrayidx, align 1, !tbaa !1
  %cmp6 = icmp eq i8 %4, %activeFlag
  br i1 %cmp6, label %if.then, label %for.inc35

if.then:                                          ; preds = %for.body
  %arrayidx9 = getelementptr inbounds i32* %2, i64 %indvars.iv
  %5 = load i32* %arrayidx9, align 4, !tbaa !3
  %cmp10 = icmp eq i32 %5, -1
  br i1 %cmp10, label %if.then12, label %for.body18

if.then12:                                        ; preds = %if.then
  %6 = trunc i64 %indvars.iv to i32
  %call = tail call i32 @Ideq_insertAtTail(%struct._Ideq* %dequeue, i32 %6) #5
  br label %for.inc35

for.body18:                                       ; preds = %if.then, %for.inc
  %I.054 = phi i32 [ %8, %for.inc ], [ %5, %if.then ]
  %idxprom19 = sext i32 %I.054 to i64
  %arrayidx20 = getelementptr inbounds i8* %status, i64 %idxprom19
  %7 = load i8* %arrayidx20, align 1, !tbaa !1
  %cmp23 = icmp eq i8 %7, %activeFlag
  br i1 %cmp23, label %for.inc35, label %for.inc

for.inc:                                          ; preds = %for.body18
  %arrayidx27 = getelementptr inbounds i32* %3, i64 %idxprom19
  %8 = load i32* %arrayidx27, align 4, !tbaa !3
  %cmp16 = icmp eq i32 %8, -1
  br i1 %cmp16, label %if.then30.critedge, label %for.body18

if.then30.critedge:                               ; preds = %for.inc
  %9 = trunc i64 %indvars.iv to i32
  %call31 = tail call i32 @Ideq_insertAtTail(%struct._Ideq* %dequeue, i32 %9) #5
  br label %for.inc35

for.inc35:                                        ; preds = %for.body18, %for.body, %if.then30.critedge, %if.then12
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %0
  br i1 %exitcond, label %for.end37, label %for.body

for.end37:                                        ; preds = %for.inc35, %entry
  ret void
}

; Function Attrs: optsize
declare i32 @Ideq_insertAtTail(%struct._Ideq*, i32) #1

; Function Attrs: nounwind optsize uwtable
define %struct._ChvList* @FrontMtx_postList(%struct._FrontMtx* %frontmtx, %struct._IV* %frontOwnersIV, i32 %lockflag) #0 {
entry:
  %nfront = alloca i32, align 4
  %frontOwners = alloca i32*, align 8
  %cmp = icmp eq %struct._FrontMtx* %frontmtx, null
  %cmp1 = icmp eq %struct._IV* %frontOwnersIV, null
  %or.cond = or i1 %cmp, %cmp1
  %0 = icmp ugt i32 %lockflag, 2
  %or.cond134 = or i1 %or.cond, %0
  br i1 %or.cond134, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([57 x i8]* @.str16, i64 0, i64 0), %struct._FrontMtx* %frontmtx, %struct._IV* %frontOwnersIV, i32 %lockflag) #5
  call void @exit(i32 -1) #7
  unreachable

if.end:                                           ; preds = %entry
  %frontETree = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 11
  %2 = load %struct._ETree** %frontETree, align 8, !tbaa !0
  %call6 = call i32* @ETree_fch(%struct._ETree* %2) #5
  %3 = load %struct._ETree** %frontETree, align 8, !tbaa !0
  %call8 = call i32* @ETree_sib(%struct._ETree* %3) #5
  call void @IV_sizeAndEntries(%struct._IV* %frontOwnersIV, i32* %nfront, i32** %frontOwners) #5
  %4 = load i32* %nfront, align 4, !tbaa !3
  %add = add nsw i32 %4, 1
  %call9 = call i32* @IVinit(i32 %add, i32 0) #5
  %cmp10 = icmp sgt i32 %lockflag, 0
  br i1 %cmp10, label %if.then11, label %if.end14

if.then11:                                        ; preds = %if.end
  %5 = load i32* %nfront, align 4, !tbaa !3
  %add12 = add nsw i32 %5, 1
  %call13 = call i8* @CVinit(i32 %add12, i8 signext 78) #5
  br label %if.end14

if.end14:                                         ; preds = %if.end, %if.then11
  %flags.0 = phi i8* [ %call13, %if.then11 ], [ null, %if.end ]
  %call15 = call i32 @IV_max(%struct._IV* %frontOwnersIV) #5
  %add16 = add nsw i32 %call15, 1
  %call17 = call i32* @IVinit(i32 %add16, i32 -1) #5
  %6 = load i32* %nfront, align 4, !tbaa !3
  %cmp18147 = icmp sgt i32 %6, 0
  br i1 %cmp18147, label %for.body.lr.ph, label %for.end49

for.body.lr.ph:                                   ; preds = %if.end14
  %cmp36 = icmp eq i8* %flags.0, null
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc47
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.inc47 ]
  %arrayidx = getelementptr inbounds i32* %call6, i64 %indvars.iv
  %I.0140 = load i32* %arrayidx, align 4
  %cmp20141 = icmp eq i32 %I.0140, -1
  br i1 %cmp20141, label %for.end, label %for.body21.lr.ph

for.body21.lr.ph:                                 ; preds = %for.body
  %.pre = load i32** %frontOwners, align 8, !tbaa !0
  br label %for.body21

for.body21:                                       ; preds = %for.body21.lr.ph, %for.inc
  %I.0144 = phi i32 [ %I.0140, %for.body21.lr.ph ], [ %I.0, %for.inc ]
  %count.0143 = phi i32 [ 0, %for.body21.lr.ph ], [ %count.1, %for.inc ]
  %nchild.0142 = phi i32 [ 0, %for.body21.lr.ph ], [ %inc, %for.inc ]
  %inc = add nsw i32 %nchild.0142, 1
  %idxprom22 = sext i32 %I.0144 to i64
  %arrayidx23 = getelementptr inbounds i32* %.pre, i64 %idxprom22
  %7 = load i32* %arrayidx23, align 4, !tbaa !3
  %idxprom24 = sext i32 %7 to i64
  %arrayidx25 = getelementptr inbounds i32* %call17, i64 %idxprom24
  %8 = load i32* %arrayidx25, align 4, !tbaa !3
  %9 = trunc i64 %indvars.iv to i32
  %cmp26 = icmp eq i32 %8, %9
  br i1 %cmp26, label %for.inc, label %if.then27

if.then27:                                        ; preds = %for.body21
  store i32 %9, i32* %arrayidx25, align 4, !tbaa !3
  %inc30 = add nsw i32 %count.0143, 1
  br label %for.inc

for.inc:                                          ; preds = %for.body21, %if.then27
  %count.1 = phi i32 [ %inc30, %if.then27 ], [ %count.0143, %for.body21 ]
  %arrayidx33 = getelementptr inbounds i32* %call8, i64 %idxprom22
  %I.0 = load i32* %arrayidx33, align 4
  %cmp20 = icmp eq i32 %I.0, -1
  br i1 %cmp20, label %for.end, label %for.body21

for.end:                                          ; preds = %for.inc, %for.body
  %count.0.lcssa = phi i32 [ 0, %for.body ], [ %count.1, %for.inc ]
  %nchild.0.lcssa = phi i32 [ 0, %for.body ], [ %inc, %for.inc ]
  %arrayidx35 = getelementptr inbounds i32* %call9, i64 %indvars.iv
  store i32 %nchild.0.lcssa, i32* %arrayidx35, align 4, !tbaa !3
  br i1 %cmp36, label %for.inc47, label %if.then37

if.then37:                                        ; preds = %for.end
  %cmp38 = icmp sgt i32 %count.0.lcssa, 1
  %arrayidx41 = getelementptr inbounds i8* %flags.0, i64 %indvars.iv
  br i1 %cmp38, label %if.then39, label %if.else42

if.then39:                                        ; preds = %if.then37
  store i8 89, i8* %arrayidx41, align 1, !tbaa !1
  br label %for.inc47

if.else42:                                        ; preds = %if.then37
  store i8 78, i8* %arrayidx41, align 1, !tbaa !1
  br label %for.inc47

for.inc47:                                        ; preds = %for.end, %if.else42, %if.then39
  %indvars.iv.next = add i64 %indvars.iv, 1
  %10 = load i32* %nfront, align 4, !tbaa !3
  %11 = trunc i64 %indvars.iv.next to i32
  %cmp18 = icmp slt i32 %11, %10
  br i1 %cmp18, label %for.body, label %for.end49

for.end49:                                        ; preds = %for.inc47, %if.end14
  %12 = load %struct._ETree** %frontETree, align 8, !tbaa !0
  %call51 = call i32 @ETree_root(%struct._ETree* %12) #5
  %cmp53135 = icmp eq i32 %call51, -1
  br i1 %cmp53135, label %for.end69, label %for.body54.lr.ph

for.body54.lr.ph:                                 ; preds = %for.end49
  %13 = load i32** %frontOwners, align 8, !tbaa !0
  br label %for.body54

for.body54:                                       ; preds = %for.body54.lr.ph, %for.inc66
  %count.2138 = phi i32 [ 0, %for.body54.lr.ph ], [ %count.3, %for.inc66 ]
  %J.1137 = phi i32 [ %call51, %for.body54.lr.ph ], [ %16, %for.inc66 ]
  %nchild.1136 = phi i32 [ 0, %for.body54.lr.ph ], [ %inc55, %for.inc66 ]
  %inc55 = add nsw i32 %nchild.1136, 1
  %idxprom56 = sext i32 %J.1137 to i64
  %arrayidx57 = getelementptr inbounds i32* %13, i64 %idxprom56
  %14 = load i32* %arrayidx57, align 4, !tbaa !3
  %idxprom58 = sext i32 %14 to i64
  %arrayidx59 = getelementptr inbounds i32* %call17, i64 %idxprom58
  %15 = load i32* %arrayidx59, align 4, !tbaa !3
  %cmp60 = icmp eq i32 %15, %J.1137
  br i1 %cmp60, label %for.inc66, label %if.then61

if.then61:                                        ; preds = %for.body54
  store i32 %J.1137, i32* %arrayidx59, align 4, !tbaa !3
  %inc64 = add nsw i32 %count.2138, 1
  br label %for.inc66

for.inc66:                                        ; preds = %for.body54, %if.then61
  %count.3 = phi i32 [ %inc64, %if.then61 ], [ %count.2138, %for.body54 ]
  %arrayidx68 = getelementptr inbounds i32* %call8, i64 %idxprom56
  %16 = load i32* %arrayidx68, align 4, !tbaa !3
  %cmp53 = icmp eq i32 %16, -1
  br i1 %cmp53, label %for.end69, label %for.body54

for.end69:                                        ; preds = %for.inc66, %for.end49
  %count.2.lcssa = phi i32 [ 0, %for.end49 ], [ %count.3, %for.inc66 ]
  %nchild.1.lcssa = phi i32 [ 0, %for.end49 ], [ %inc55, %for.inc66 ]
  %17 = load i32* %nfront, align 4, !tbaa !3
  %idxprom70 = sext i32 %17 to i64
  %arrayidx71 = getelementptr inbounds i32* %call9, i64 %idxprom70
  store i32 %nchild.1.lcssa, i32* %arrayidx71, align 4, !tbaa !3
  %cmp72 = icmp ne i8* %flags.0, null
  br i1 %cmp72, label %if.then73, label %if.end82

if.then73:                                        ; preds = %for.end69
  %cmp74 = icmp sgt i32 %count.2.lcssa, 1
  %18 = load i32* %nfront, align 4, !tbaa !3
  %idxprom76 = sext i32 %18 to i64
  %arrayidx77 = getelementptr inbounds i8* %flags.0, i64 %idxprom76
  br i1 %cmp74, label %if.then75, label %if.else78

if.then75:                                        ; preds = %if.then73
  store i8 89, i8* %arrayidx77, align 1, !tbaa !1
  br label %if.end82

if.else78:                                        ; preds = %if.then73
  store i8 78, i8* %arrayidx77, align 1, !tbaa !1
  br label %if.end82

if.end82:                                         ; preds = %if.then75, %if.else78, %for.end69
  %call83 = call %struct._ChvList* @ChvList_new() #5
  %19 = load i32* %nfront, align 4, !tbaa !3
  %add84 = add nsw i32 %19, 1
  call void @ChvList_init(%struct._ChvList* %call83, i32 %add84, i32* %call9, i32 %lockflag, i8* %flags.0) #5
  call void @IVfree(i32* %call17) #5
  call void @IVfree(i32* %call9) #5
  br i1 %cmp72, label %if.then86, label %if.end87

if.then86:                                        ; preds = %if.end82
  call void @CVfree(i8* %flags.0) #5
  br label %if.end87

if.end87:                                         ; preds = %if.then86, %if.end82
  ret %struct._ChvList* %call83
}

; Function Attrs: optsize
declare i32* @ETree_fch(%struct._ETree*) #1

; Function Attrs: optsize
declare i32* @ETree_sib(%struct._ETree*) #1

; Function Attrs: optsize
declare void @IV_sizeAndEntries(%struct._IV*, i32*, i32**) #1

; Function Attrs: optsize
declare i8* @CVinit(i32, i8 signext) #1

; Function Attrs: optsize
declare i32 @IV_max(%struct._IV*) #1

; Function Attrs: optsize
declare i32 @ETree_root(%struct._ETree*) #1

; Function Attrs: optsize
declare %struct._ChvList* @ChvList_new() #1

; Function Attrs: optsize
declare void @ChvList_init(%struct._ChvList*, i32, i32*, i32, i8*) #1

; Function Attrs: optsize
declare void @CVfree(i8*) #1

; Function Attrs: nounwind optsize uwtable
define %struct._ChvList* @FrontMtx_aggregateList(%struct._FrontMtx* %frontmtx, %struct._IV* %frontOwnersIV, i32 %lockflag) #0 {
entry:
  %nfront = alloca i32, align 4
  %size = alloca i32, align 4
  %frontOwners = alloca i32*, align 8
  %indices = alloca i32*, align 8
  %cmp = icmp eq %struct._FrontMtx* %frontmtx, null
  %cmp1 = icmp eq %struct._IV* %frontOwnersIV, null
  %or.cond = or i1 %cmp, %cmp1
  %0 = icmp ugt i32 %lockflag, 2
  %or.cond178 = or i1 %or.cond, %0
  br i1 %or.cond178, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([62 x i8]* @.str17, i64 0, i64 0), %struct._FrontMtx* %frontmtx, %struct._IV* %frontOwnersIV, i32 %lockflag) #5
  call void @exit(i32 -1) #7
  unreachable

if.end:                                           ; preds = %entry
  %symbfacIVL6 = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 13
  %2 = load %struct._IVL** %symbfacIVL6, align 8, !tbaa !0
  %frontETree = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 11
  %3 = load %struct._ETree** %frontETree, align 8, !tbaa !0
  %call7 = call i32* @ETree_vtxToFront(%struct._ETree* %3) #5
  call void @IV_sizeAndEntries(%struct._IV* %frontOwnersIV, i32* %nfront, i32** %frontOwners) #5
  %call8 = call i32 @IV_max(%struct._IV* %frontOwnersIV) #5
  %add = add nsw i32 %call8, 1
  %call9 = call i32* @IVinit(i32 %add, i32 -1) #5
  %4 = load i32* %nfront, align 4, !tbaa !3
  %call10 = call i32* @IVinit(i32 %4, i32 -1) #5
  %5 = load i32* %nfront, align 4, !tbaa !3
  %call11 = call i32* @IVinit(i32 %5, i32 -1) #5
  %6 = load i32* %nfront, align 4, !tbaa !3
  %call12 = call i32* @IVinit(i32 %6, i32 0) #5
  %7 = load i32* %nfront, align 4, !tbaa !3
  %call13 = call i32* @IVinit(i32 %7, i32 0) #5
  %cmp14 = icmp sgt i32 %lockflag, 0
  br i1 %cmp14, label %if.then15, label %if.end17

if.then15:                                        ; preds = %if.end
  %8 = load i32* %nfront, align 4, !tbaa !3
  %call16 = call i8* @CVinit(i32 %8, i8 signext 78) #5
  br label %if.end17

if.end17:                                         ; preds = %if.end, %if.then15
  %flags.0 = phi i8* [ %call16, %if.then15 ], [ null, %if.end ]
  %9 = load i32* %nfront, align 4, !tbaa !3
  %cmp18187 = icmp sgt i32 %9, 0
  br i1 %cmp18187, label %for.body.lr.ph, label %for.end101

for.body.lr.ph:                                   ; preds = %if.end17
  %cmp63 = icmp eq i8* %flags.0, null
  br label %for.body

for.body:                                         ; preds = %for.inc99, %for.body.lr.ph
  %indvars.iv193 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next194, %for.inc99 ]
  %10 = load i32** %frontOwners, align 8, !tbaa !0
  %arrayidx = getelementptr inbounds i32* %10, i64 %indvars.iv193
  %11 = load i32* %arrayidx, align 4, !tbaa !3
  %idxprom19 = sext i32 %11 to i64
  %arrayidx20 = getelementptr inbounds i32* %call9, i64 %idxprom19
  %12 = trunc i64 %indvars.iv193 to i32
  store i32 %12, i32* %arrayidx20, align 4, !tbaa !3
  %arrayidx22 = getelementptr inbounds i32* %call10, i64 %indvars.iv193
  %13 = load i32* %arrayidx22, align 4, !tbaa !3
  %cmp23182 = icmp eq i32 %13, -1
  br i1 %cmp23182, label %while.end, label %while.body

while.body:                                       ; preds = %for.body, %while.cond.backedge.while.body_crit_edge
  %14 = phi i32* [ %.pre, %while.cond.backedge.while.body_crit_edge ], [ %10, %for.body ]
  %15 = phi i32 [ %28, %while.cond.backedge.while.body_crit_edge ], [ %13, %for.body ]
  %count.0183 = phi i32 [ %count.1, %while.cond.backedge.while.body_crit_edge ], [ 0, %for.body ]
  %idxprom24 = sext i32 %15 to i64
  %arrayidx25 = getelementptr inbounds i32* %call11, i64 %idxprom24
  %16 = load i32* %arrayidx25, align 4, !tbaa !3
  store i32 %16, i32* %arrayidx22, align 4, !tbaa !3
  %arrayidx29 = getelementptr inbounds i32* %14, i64 %idxprom24
  %17 = load i32* %arrayidx29, align 4, !tbaa !3
  %idxprom30 = sext i32 %17 to i64
  %arrayidx31 = getelementptr inbounds i32* %call9, i64 %idxprom30
  %18 = load i32* %arrayidx31, align 4, !tbaa !3
  %cmp32 = icmp eq i32 %18, %12
  br i1 %cmp32, label %if.end36, label %if.then33

if.then33:                                        ; preds = %while.body
  store i32 %12, i32* %arrayidx31, align 4, !tbaa !3
  %inc = add nsw i32 %count.0183, 1
  br label %if.end36

if.end36:                                         ; preds = %while.body, %if.then33
  %count.1 = phi i32 [ %inc, %if.then33 ], [ %count.0183, %while.body ]
  call void @IVL_listAndSize(%struct._IVL* %2, i32 %15, i32* %size, i32** %indices) #5
  %arrayidx38 = getelementptr inbounds i32* %call12, i64 %idxprom24
  %19 = load i32* %arrayidx38, align 4, !tbaa !3
  %20 = load i32* %size, align 4, !tbaa !3
  %cmp40180 = icmp slt i32 %19, %20
  br i1 %cmp40180, label %for.body41.lr.ph, label %while.cond.backedge

for.body41.lr.ph:                                 ; preds = %if.end36
  %21 = load i32** %indices, align 8, !tbaa !0
  %22 = load i32** %frontOwners, align 8, !tbaa !0
  %23 = sext i32 %19 to i64
  br label %for.body41

for.body41:                                       ; preds = %for.body41.lr.ph, %for.inc
  %indvars.iv = phi i64 [ %23, %for.body41.lr.ph ], [ %indvars.iv.next, %for.inc ]
  %ii.0181 = phi i32 [ %19, %for.body41.lr.ph ], [ %inc60, %for.inc ]
  %arrayidx43 = getelementptr inbounds i32* %21, i64 %indvars.iv
  %24 = load i32* %arrayidx43, align 4, !tbaa !3
  %idxprom44 = sext i32 %24 to i64
  %arrayidx45 = getelementptr inbounds i32* %call7, i64 %idxprom44
  %25 = load i32* %arrayidx45, align 4, !tbaa !3
  %cmp46 = icmp sgt i32 %25, %12
  br i1 %cmp46, label %land.lhs.true, label %for.inc

land.lhs.true:                                    ; preds = %for.body41
  %idxprom47 = sext i32 %25 to i64
  %arrayidx48 = getelementptr inbounds i32* %22, i64 %idxprom47
  %26 = load i32* %arrayidx48, align 4, !tbaa !3
  %cmp49 = icmp eq i32 %26, %17
  br i1 %cmp49, label %for.inc, label %if.then50

if.then50:                                        ; preds = %land.lhs.true
  store i32 %ii.0181, i32* %arrayidx38, align 4, !tbaa !3
  %arrayidx54 = getelementptr inbounds i32* %call10, i64 %idxprom47
  %27 = load i32* %arrayidx54, align 4, !tbaa !3
  store i32 %27, i32* %arrayidx25, align 4, !tbaa !3
  store i32 %15, i32* %arrayidx54, align 4, !tbaa !3
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %if.end36, %for.inc, %if.then50
  %28 = load i32* %arrayidx22, align 4, !tbaa !3
  %cmp23 = icmp eq i32 %28, -1
  br i1 %cmp23, label %while.end, label %while.cond.backedge.while.body_crit_edge

while.cond.backedge.while.body_crit_edge:         ; preds = %while.cond.backedge
  %.pre = load i32** %frontOwners, align 8, !tbaa !0
  br label %while.body

for.inc:                                          ; preds = %land.lhs.true, %for.body41
  %indvars.iv.next = add i64 %indvars.iv, 1
  %inc60 = add nsw i32 %ii.0181, 1
  %29 = trunc i64 %indvars.iv.next to i32
  %cmp40 = icmp slt i32 %29, %20
  br i1 %cmp40, label %for.body41, label %while.cond.backedge

while.end:                                        ; preds = %while.cond.backedge, %for.body
  %count.0.lcssa = phi i32 [ 0, %for.body ], [ %count.1, %while.cond.backedge ]
  %arrayidx62 = getelementptr inbounds i32* %call13, i64 %indvars.iv193
  store i32 %count.0.lcssa, i32* %arrayidx62, align 4, !tbaa !3
  br i1 %cmp63, label %if.end73, label %if.then64

if.then64:                                        ; preds = %while.end
  %cmp65 = icmp sgt i32 %count.0.lcssa, 1
  %arrayidx68 = getelementptr inbounds i8* %flags.0, i64 %indvars.iv193
  br i1 %cmp65, label %if.then66, label %if.else69

if.then66:                                        ; preds = %if.then64
  store i8 89, i8* %arrayidx68, align 1, !tbaa !1
  br label %if.end73

if.else69:                                        ; preds = %if.then64
  store i8 78, i8* %arrayidx68, align 1, !tbaa !1
  br label %if.end73

if.end73:                                         ; preds = %while.end, %if.then66, %if.else69
  call void @IVL_listAndSize(%struct._IVL* %2, i32 %12, i32* %size, i32** %indices) #5
  %30 = load i32* %size, align 4, !tbaa !3
  %cmp75185 = icmp sgt i32 %30, 0
  br i1 %cmp75185, label %for.body76.lr.ph, label %for.inc99

for.body76.lr.ph:                                 ; preds = %if.end73
  %31 = load i32** %indices, align 8, !tbaa !0
  %32 = load i32** %frontOwners, align 8, !tbaa !0
  br label %for.body76

for.body76:                                       ; preds = %for.body76.lr.ph, %for.inc96
  %indvars.iv191 = phi i64 [ 0, %for.body76.lr.ph ], [ %indvars.iv.next192, %for.inc96 ]
  %ii.1186 = phi i32 [ 0, %for.body76.lr.ph ], [ %inc97, %for.inc96 ]
  %arrayidx78 = getelementptr inbounds i32* %31, i64 %indvars.iv191
  %33 = load i32* %arrayidx78, align 4, !tbaa !3
  %idxprom79 = sext i32 %33 to i64
  %arrayidx80 = getelementptr inbounds i32* %call7, i64 %idxprom79
  %34 = load i32* %arrayidx80, align 4, !tbaa !3
  %cmp81 = icmp sgt i32 %34, %12
  br i1 %cmp81, label %land.lhs.true82, label %for.inc96

land.lhs.true82:                                  ; preds = %for.body76
  %idxprom83 = sext i32 %34 to i64
  %arrayidx84 = getelementptr inbounds i32* %32, i64 %idxprom83
  %35 = load i32* %arrayidx84, align 4, !tbaa !3
  %cmp85 = icmp eq i32 %35, %11
  br i1 %cmp85, label %for.inc96, label %if.then86

if.then86:                                        ; preds = %land.lhs.true82
  %arrayidx88 = getelementptr inbounds i32* %call12, i64 %indvars.iv193
  store i32 %ii.1186, i32* %arrayidx88, align 4, !tbaa !3
  %arrayidx90 = getelementptr inbounds i32* %call10, i64 %idxprom83
  %36 = load i32* %arrayidx90, align 4, !tbaa !3
  %arrayidx92 = getelementptr inbounds i32* %call11, i64 %indvars.iv193
  store i32 %36, i32* %arrayidx92, align 4, !tbaa !3
  store i32 %12, i32* %arrayidx90, align 4, !tbaa !3
  br label %for.inc99

for.inc96:                                        ; preds = %land.lhs.true82, %for.body76
  %indvars.iv.next192 = add i64 %indvars.iv191, 1
  %inc97 = add nsw i32 %ii.1186, 1
  %37 = trunc i64 %indvars.iv.next192 to i32
  %cmp75 = icmp slt i32 %37, %30
  br i1 %cmp75, label %for.body76, label %for.inc99

for.inc99:                                        ; preds = %if.end73, %for.inc96, %if.then86
  %indvars.iv.next194 = add i64 %indvars.iv193, 1
  %38 = load i32* %nfront, align 4, !tbaa !3
  %39 = trunc i64 %indvars.iv.next194 to i32
  %cmp18 = icmp slt i32 %39, %38
  br i1 %cmp18, label %for.body, label %for.end101

for.end101:                                       ; preds = %for.inc99, %if.end17
  %call102 = call %struct._ChvList* @ChvList_new() #5
  %40 = load i32* %nfront, align 4, !tbaa !3
  call void @ChvList_init(%struct._ChvList* %call102, i32 %40, i32* %call13, i32 %lockflag, i8* %flags.0) #5
  call void @IVfree(i32* %call13) #5
  call void @IVfree(i32* %call10) #5
  call void @IVfree(i32* %call11) #5
  call void @IVfree(i32* %call12) #5
  call void @IVfree(i32* %call9) #5
  %cmp103 = icmp eq i8* %flags.0, null
  br i1 %cmp103, label %if.end105, label %if.then104

if.then104:                                       ; preds = %for.end101
  call void @CVfree(i8* %flags.0) #5
  br label %if.end105

if.end105:                                        ; preds = %for.end101, %if.then104
  ret %struct._ChvList* %call102
}

; Function Attrs: optsize
declare void @FrontMtx_storeFront(%struct._FrontMtx*, %struct._Chv*, %struct._IV*, double, i32, %struct._IO_FILE*) #1

; Function Attrs: optsize
declare void @FrontMtx_storePostponedData(%struct._FrontMtx*, %struct._Chv*, i32, i32, %struct._ChvList*, %struct._ChvManager*) #1

; Function Attrs: optsize
declare i32 @Chv_factorWithPivoting(%struct._Chv*, i32, i32, %struct._IV*, %struct._DV*, double, i32*) #1

; Function Attrs: optsize
declare i32 @Chv_factorWithNoPivoting(%struct._Chv*, %struct._PatchAndGoInfo*) #1

; Function Attrs: optsize
declare i32 @IV_size(%struct._IV*) #1

; Function Attrs: optsize
declare %struct._Chv* @FrontMtx_assemblePostponedData(%struct._FrontMtx*, %struct._Chv*, %struct._ChvList*, %struct._ChvManager*, i32*) #1

; Function Attrs: optsize
declare %struct._Chv* @ChvList_getList(%struct._ChvList*, i32) #1

; Function Attrs: optsize
declare void @Chv_assembleChv(%struct._Chv*, %struct._Chv*) #1

; Function Attrs: optsize
declare void @ChvManager_releaseListOfObjects(%struct._ChvManager*, %struct._Chv*) #1

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #4

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #4

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind optsize }
attributes #6 = { optsize }
attributes #7 = { noreturn nounwind optsize }

!0 = metadata !{metadata !"any pointer", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"int", metadata !1}
!4 = metadata !{metadata !"double", metadata !1}
