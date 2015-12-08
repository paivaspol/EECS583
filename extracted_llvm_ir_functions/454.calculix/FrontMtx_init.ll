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
  %cmp = icmp eq %struct._FrontMtx* %frontmtx, null
  %cmp1 = icmp eq %struct._ETree* %frontETree, null
  %or.cond = or i1 %cmp, %cmp1
  %cmp3 = icmp eq %struct._IVL* %symbfacIVL, null
  %or.cond659 = or i1 %or.cond, %cmp3
  br i1 %or.cond659, label %if.then, label %lor.lhs.false4

lor.lhs.false4:                                   ; preds = %entry
  %cmp5 = icmp ne %struct._IV* %ownersIV, null
  %cmp6 = icmp slt i32 %myid, 0
  %or.cond660 = and i1 %cmp5, %cmp6
  %cmp8 = icmp eq %struct._SubMtxManager* %manager, null
  %or.cond661 = or i1 %or.cond660, %cmp8
  br i1 %or.cond661, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false4, %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([122 x i8]* @.str, i64 0, i64 0), %struct._FrontMtx* %frontmtx, %struct._ETree* %frontETree, %struct._IVL* %symbfacIVL, i32 %myid, %struct._IV* %ownersIV, %struct._SubMtxManager* %manager) #5
  call void @exit(i32 -1) #6
  unreachable

if.end:                                           ; preds = %lor.lhs.false4
  %type.off = add i32 %type, -1
  %1 = icmp ugt i32 %type.off, 1
  br i1 %1, label %if.then12, label %if.end14

if.then12:                                        ; preds = %if.end
  %2 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call13 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([83 x i8]* @.str1, i64 0, i64 0), i32 %type) #5
  call void @exit(i32 -1) #6
  unreachable

if.end14:                                         ; preds = %if.end
  switch i32 %type, label %if.end32 [
    i32 1, label %land.lhs.true16
    i32 2, label %land.lhs.true24
  ]

land.lhs.true16:                                  ; preds = %if.end14
  %3 = and i32 %symmetryflag, -3
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %if.end32, label %if.then20

if.then20:                                        ; preds = %land.lhs.true16
  %5 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %6 = call i64 @fwrite(i8* getelementptr inbounds ([110 x i8]* @.str2, i64 0, i64 0), i64 109, i64 1, %struct._IO_FILE* %5)
  call void @exit(i32 -1) #6
  unreachable

land.lhs.true24:                                  ; preds = %if.end14
  %.old = icmp ult i32 %symmetryflag, 3
  br i1 %.old, label %if.end32, label %if.then30

if.then30:                                        ; preds = %land.lhs.true24
  %7 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %8 = call i64 @fwrite(i8* getelementptr inbounds ([130 x i8]* @.str3, i64 0, i64 0), i64 129, i64 1, %struct._IO_FILE* %7)
  call void @exit(i32 -1) #6
  unreachable

if.end32:                                         ; preds = %land.lhs.true16, %if.end14, %land.lhs.true24
  %9 = icmp ult i32 %pivotingflag, 2
  br i1 %9, label %if.end38, label %if.then36

if.then36:                                        ; preds = %if.end32
  %10 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %11 = call i64 @fwrite(i8* getelementptr inbounds ([96 x i8]* @.str4, i64 0, i64 0), i64 95, i64 1, %struct._IO_FILE* %10)
  call void @exit(i32 -1) #6
  unreachable

if.end38:                                         ; preds = %if.end32
  %12 = icmp ult i32 %lockflag, 3
  br i1 %12, label %if.end46, label %if.then44

if.then44:                                        ; preds = %if.end38
  %13 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %14 = call i64 @fwrite(i8* getelementptr inbounds ([112 x i8]* @.str5, i64 0, i64 0), i64 111, i64 1, %struct._IO_FILE* %13)
  call void @exit(i32 -1) #6
  unreachable

if.end46:                                         ; preds = %if.end38
  %nfront47 = getelementptr inbounds %struct._ETree* %frontETree, i64 0, i32 0
  %15 = load i32* %nfront47, align 4, !tbaa !3
  %nvtx = getelementptr inbounds %struct._ETree* %frontETree, i64 0, i32 1
  %16 = load i32* %nvtx, align 4, !tbaa !3
  %call48 = call i32* @ETree_nodwghts(%struct._ETree* %frontETree) #5
  %call49 = call i32* @ETree_bndwghts(%struct._ETree* %frontETree) #5
  %call50 = call i32* @ETree_vtxToFront(%struct._ETree* %frontETree) #5
  br i1 %cmp5, label %if.then52, label %if.end54

if.then52:                                        ; preds = %if.end46
  %call53 = call i32* @IV_entries(%struct._IV* %ownersIV) #5
  br label %if.end54

if.end54:                                         ; preds = %if.end46, %if.then52
  %owners.0 = phi i32* [ %call53, %if.then52 ], [ null, %if.end46 ]
  call void @FrontMtx_setDefaultFields(%struct._FrontMtx* %frontmtx) #5
  %nfront55 = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 0
  store i32 %15, i32* %nfront55, align 4, !tbaa !3
  %neqns56 = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 1
  store i32 %16, i32* %neqns56, align 4, !tbaa !3
  %type57 = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 2
  store i32 %type, i32* %type57, align 4, !tbaa !3
  %symmetryflag58 = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 3
  store i32 %symmetryflag, i32* %symmetryflag58, align 4, !tbaa !3
  %sparsityflag59 = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 4
  store i32 %sparsityflag, i32* %sparsityflag59, align 4, !tbaa !3
  %pivotingflag60 = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 5
  store i32 %pivotingflag, i32* %pivotingflag60, align 4, !tbaa !3
  %dataMode = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 6
  store i32 1, i32* %dataMode, align 4, !tbaa !3
  %tree = getelementptr inbounds %struct._ETree* %frontETree, i64 0, i32 2
  %17 = load %struct._Tree** %tree, align 8, !tbaa !0
  %tree61 = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 10
  store %struct._Tree* %17, %struct._Tree** %tree61, align 8, !tbaa !0
  %frontETree62 = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 11
  store %struct._ETree* %frontETree, %struct._ETree** %frontETree62, align 8, !tbaa !0
  %symbfacIVL63 = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 13
  store %struct._IVL* %symbfacIVL, %struct._IVL** %symbfacIVL63, align 8, !tbaa !0
  %call64 = call %struct._IV* @IV_new() #5
  %frontsizesIV = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 12
  store %struct._IV* %call64, %struct._IV** %frontsizesIV, align 8, !tbaa !0
  %18 = load i32* %pivotingflag60, align 4, !tbaa !3
  %cmp66 = icmp eq i32 %18, 1
  br i1 %cmp66, label %if.then67, label %if.else70

if.then67:                                        ; preds = %if.end54
  call void @IV_init(%struct._IV* %call64, i32 %15, i32* null) #5
  %19 = load %struct._IV** %frontsizesIV, align 8, !tbaa !0
  call void @IV_fill(%struct._IV* %19, i32 0) #5
  br label %if.end72

if.else70:                                        ; preds = %if.end54
  call void @IV_init(%struct._IV* %call64, i32 %15, i32* %call48) #5
  br label %if.end72

if.end72:                                         ; preds = %if.else70, %if.then67
  %20 = load i32* %pivotingflag60, align 4, !tbaa !3
  %cmp74 = icmp eq i32 %20, 1
  br i1 %cmp74, label %if.then75, label %if.end84

if.then75:                                        ; preds = %if.end72
  %call76 = call %struct._IVL* @IVL_new() #5
  %coladjIVL = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 15
  store %struct._IVL* %call76, %struct._IVL** %coladjIVL, align 8, !tbaa !0
  call void @IVL_init1(%struct._IVL* %call76, i32 1, i32 %15) #5
  %21 = load i32* %symmetryflag58, align 4, !tbaa !3
  %cmp79 = icmp eq i32 %21, 2
  br i1 %cmp79, label %if.then80, label %if.end84

if.then80:                                        ; preds = %if.then75
  %call81 = call %struct._IVL* @IVL_new() #5
  %rowadjIVL = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 14
  store %struct._IVL* %call81, %struct._IVL** %rowadjIVL, align 8, !tbaa !0
  call void @IVL_init1(%struct._IVL* %call81, i32 1, i32 %15) #5
  br label %if.end84

if.end84:                                         ; preds = %if.then75, %if.then80, %if.end72
  %cmp85 = icmp sgt i32 %15, 0
  br i1 %cmp85, label %if.then86, label %if.else96

if.then86:                                        ; preds = %if.end84
  %conv = sext i32 %15 to i64
  %mul = shl nsw i64 %conv, 3
  %call87 = call noalias i8* @malloc(i64 %mul) #5
  %22 = bitcast i8* %call87 to %struct._SubMtx**
  %p_mtxDJJ = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 18
  store %struct._SubMtx** %22, %struct._SubMtx*** %p_mtxDJJ, align 8, !tbaa !0
  %cmp88 = icmp eq i8* %call87, null
  br i1 %cmp88, label %if.then90, label %if.then109

if.then90:                                        ; preds = %if.then86
  %23 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call93 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %23, i8* getelementptr inbounds ([49 x i8]* @.str6, i64 0, i64 0), i64 %mul, i32 201, i8* getelementptr inbounds ([83 x i8]* @.str7, i64 0, i64 0)) #5
  call void @exit(i32 -1) #6
  unreachable

if.else96:                                        ; preds = %if.end84
  %cmp97 = icmp eq i32 %15, 0
  br i1 %cmp97, label %if.then149, label %if.else101

if.else101:                                       ; preds = %if.else96
  %24 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %conv102 = sext i32 %15 to i64
  %mul103 = shl nsw i64 %conv102, 3
  %call104 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %24, i8* getelementptr inbounds ([47 x i8]* @.str8, i64 0, i64 0), i64 %mul103, i32 201, i8* getelementptr inbounds ([83 x i8]* @.str7, i64 0, i64 0)) #5
  call void @exit(i32 -1) #6
  unreachable

if.then109:                                       ; preds = %if.then86
  %call112 = call noalias i8* @malloc(i64 %mul) #5
  %25 = bitcast i8* %call112 to %struct._SubMtx**
  %p_mtxUJJ = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 19
  store %struct._SubMtx** %25, %struct._SubMtx*** %p_mtxUJJ, align 8, !tbaa !0
  %cmp113 = icmp eq i8* %call112, null
  br i1 %cmp113, label %if.then115, label %if.then134

if.then115:                                       ; preds = %if.then109
  %26 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call118 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %26, i8* getelementptr inbounds ([49 x i8]* @.str6, i64 0, i64 0), i64 %mul, i32 202, i8* getelementptr inbounds ([83 x i8]* @.str7, i64 0, i64 0)) #5
  call void @exit(i32 -1) #6
  unreachable

if.then134:                                       ; preds = %if.then109
  %call137 = call noalias i8* @malloc(i64 %mul) #5
  %27 = bitcast i8* %call137 to %struct._SubMtx**
  %p_mtxUJN = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 20
  store %struct._SubMtx** %27, %struct._SubMtx*** %p_mtxUJN, align 8, !tbaa !0
  %cmp138 = icmp eq i8* %call137, null
  br i1 %cmp138, label %if.then140, label %for.cond.preheader

if.then140:                                       ; preds = %if.then134
  %28 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call143 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %28, i8* getelementptr inbounds ([49 x i8]* @.str6, i64 0, i64 0), i64 %mul, i32 203, i8* getelementptr inbounds ([83 x i8]* @.str7, i64 0, i64 0)) #5
  call void @exit(i32 -1) #6
  unreachable

if.then149:                                       ; preds = %if.else96
  %p_mtxDJJ100 = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 18
  %29 = bitcast %struct._SubMtx*** %p_mtxDJJ100 to i8*
  call void @llvm.memset.p0i8.i64(i8* %29, i8 0, i64 24, i32 8, i1 false)
  br label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.then134, %if.then149
  %30 = phi %struct._SubMtx** [ %22, %if.then134 ], [ null, %if.then149 ]
  br i1 %cmp85, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %p_mtxDJJ159 = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 18
  %p_mtxUJJ161 = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 19
  %p_mtxUJN164 = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 20
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %31 = phi %struct._SubMtx** [ %30, %for.body.lr.ph ], [ %.pre692, %for.body.for.body_crit_edge ]
  %indvars.iv688 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next689, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr inbounds %struct._SubMtx** %31, i64 %indvars.iv688
  store %struct._SubMtx* null, %struct._SubMtx** %arrayidx, align 8, !tbaa !0
  %32 = load %struct._SubMtx*** %p_mtxUJJ161, align 8, !tbaa !0
  %arrayidx162 = getelementptr inbounds %struct._SubMtx** %32, i64 %indvars.iv688
  store %struct._SubMtx* null, %struct._SubMtx** %arrayidx162, align 8, !tbaa !0
  %33 = load %struct._SubMtx*** %p_mtxUJN164, align 8, !tbaa !0
  %arrayidx165 = getelementptr inbounds %struct._SubMtx** %33, i64 %indvars.iv688
  store %struct._SubMtx* null, %struct._SubMtx** %arrayidx165, align 8, !tbaa !0
  %indvars.iv.next689 = add i64 %indvars.iv688, 1
  %lftr.wideiv690 = trunc i64 %indvars.iv.next689 to i32
  %exitcond691 = icmp eq i32 %lftr.wideiv690, %15
  br i1 %exitcond691, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  %.pre692 = load %struct._SubMtx*** %p_mtxDJJ159, align 8, !tbaa !0
  br label %for.body

for.end:                                          ; preds = %for.body, %for.cond.preheader
  %34 = load i32* %symmetryflag58, align 4, !tbaa !3
  %cmp167 = icmp eq i32 %34, 2
  br i1 %cmp167, label %if.then169, label %if.end233

if.then169:                                       ; preds = %for.end
  br i1 %cmp85, label %if.then172, label %if.else184

if.then172:                                       ; preds = %if.then169
  %conv173 = sext i32 %15 to i64
  %mul174 = shl nsw i64 %conv173, 3
  %call175 = call noalias i8* @malloc(i64 %mul174) #5
  %35 = bitcast i8* %call175 to %struct._SubMtx**
  %p_mtxLJJ = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 21
  store %struct._SubMtx** %35, %struct._SubMtx*** %p_mtxLJJ, align 8, !tbaa !0
  %cmp176 = icmp eq i8* %call175, null
  br i1 %cmp176, label %if.then178, label %if.then197

if.then178:                                       ; preds = %if.then172
  %36 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call181 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %36, i8* getelementptr inbounds ([49 x i8]* @.str6, i64 0, i64 0), i64 %mul174, i32 210, i8* getelementptr inbounds ([83 x i8]* @.str7, i64 0, i64 0)) #5
  call void @exit(i32 -1) #6
  unreachable

if.else184:                                       ; preds = %if.then169
  %cmp185 = icmp eq i32 %15, 0
  br i1 %cmp185, label %if.then212, label %if.else189

if.else189:                                       ; preds = %if.else184
  %37 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %conv190 = sext i32 %15 to i64
  %mul191 = shl nsw i64 %conv190, 3
  %call192 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %37, i8* getelementptr inbounds ([47 x i8]* @.str8, i64 0, i64 0), i64 %mul191, i32 210, i8* getelementptr inbounds ([83 x i8]* @.str7, i64 0, i64 0)) #5
  call void @exit(i32 -1) #6
  unreachable

if.then197:                                       ; preds = %if.then172
  %call200 = call noalias i8* @malloc(i64 %mul174) #5
  %38 = bitcast i8* %call200 to %struct._SubMtx**
  %p_mtxLNJ = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 22
  store %struct._SubMtx** %38, %struct._SubMtx*** %p_mtxLNJ, align 8, !tbaa !0
  %cmp201 = icmp eq i8* %call200, null
  br i1 %cmp201, label %if.then203, label %for.cond220.preheader

if.then203:                                       ; preds = %if.then197
  %39 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call206 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %39, i8* getelementptr inbounds ([49 x i8]* @.str6, i64 0, i64 0), i64 %mul174, i32 211, i8* getelementptr inbounds ([83 x i8]* @.str7, i64 0, i64 0)) #5
  call void @exit(i32 -1) #6
  unreachable

if.then212:                                       ; preds = %if.else184
  %p_mtxLJJ188 = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 21
  %40 = bitcast %struct._SubMtx*** %p_mtxLJJ188 to i8*
  call void @llvm.memset.p0i8.i64(i8* %40, i8 0, i64 16, i32 8, i1 false)
  br label %for.cond220.preheader

for.cond220.preheader:                            ; preds = %if.then197, %if.then212
  %41 = phi %struct._SubMtx** [ %35, %if.then197 ], [ null, %if.then212 ]
  br i1 %cmp85, label %for.body223.lr.ph, label %if.end233

for.body223.lr.ph:                                ; preds = %for.cond220.preheader
  %p_mtxLJJ225 = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 21
  %p_mtxLNJ228 = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 22
  br label %for.body223

for.body223:                                      ; preds = %for.body223.for.body223_crit_edge, %for.body223.lr.ph
  %42 = phi %struct._SubMtx** [ %41, %for.body223.lr.ph ], [ %.pre, %for.body223.for.body223_crit_edge ]
  %indvars.iv684 = phi i64 [ 0, %for.body223.lr.ph ], [ %indvars.iv.next685, %for.body223.for.body223_crit_edge ]
  %arrayidx226 = getelementptr inbounds %struct._SubMtx** %42, i64 %indvars.iv684
  store %struct._SubMtx* null, %struct._SubMtx** %arrayidx226, align 8, !tbaa !0
  %43 = load %struct._SubMtx*** %p_mtxLNJ228, align 8, !tbaa !0
  %arrayidx229 = getelementptr inbounds %struct._SubMtx** %43, i64 %indvars.iv684
  store %struct._SubMtx* null, %struct._SubMtx** %arrayidx229, align 8, !tbaa !0
  %indvars.iv.next685 = add i64 %indvars.iv684, 1
  %lftr.wideiv686 = trunc i64 %indvars.iv.next685 to i32
  %exitcond687 = icmp eq i32 %lftr.wideiv686, %15
  br i1 %exitcond687, label %if.end233, label %for.body223.for.body223_crit_edge

for.body223.for.body223_crit_edge:                ; preds = %for.body223
  %.pre = load %struct._SubMtx*** %p_mtxLJJ225, align 8, !tbaa !0
  br label %for.body223

if.end233:                                        ; preds = %for.cond220.preheader, %for.body223, %for.end
  %manager234 = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 25
  store %struct._SubMtxManager* %manager, %struct._SubMtxManager** %manager234, align 8, !tbaa !0
  %44 = load i32* %pivotingflag60, align 4, !tbaa !3
  %cmp236 = icmp eq i32 %44, 1
  br i1 %cmp236, label %if.end373, label %land.lhs.true238

land.lhs.true238:                                 ; preds = %if.end233
  %45 = load i32* %sparsityflag59, align 4, !tbaa !3
  %cmp240 = icmp eq i32 %45, 0
  br i1 %cmp240, label %for.cond243.preheader, label %if.end373

for.cond243.preheader:                            ; preds = %land.lhs.true238
  br i1 %cmp85, label %for.body246.lr.ph, label %for.end369

for.body246.lr.ph:                                ; preds = %for.cond243.preheader
  %cmp247 = icmp eq i32* %owners.0, null
  %cmp259 = icmp sgt i32 %msglvl, 3
  %p_mtxDJJ268 = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 18
  %p_mtxUJJ295 = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 19
  %p_mtxLJJ322 = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 21
  %p_mtxUJN340 = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 20
  %p_mtxLNJ356 = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 22
  br label %for.body246

for.body246:                                      ; preds = %for.inc367, %for.body246.lr.ph
  %indvars.iv682 = phi i64 [ 0, %for.body246.lr.ph ], [ %indvars.iv.next683, %for.inc367 ]
  %nentD.0672 = phi i32 [ 0, %for.body246.lr.ph ], [ %nentD.1, %for.inc367 ]
  %nentL.0671 = phi i32 [ 0, %for.body246.lr.ph ], [ %nentL.2, %for.inc367 ]
  %nentU.0670 = phi i32 [ 0, %for.body246.lr.ph ], [ %nentU.2, %for.inc367 ]
  br i1 %cmp247, label %if.then254, label %lor.lhs.false249

lor.lhs.false249:                                 ; preds = %for.body246
  %arrayidx251 = getelementptr inbounds i32* %owners.0, i64 %indvars.iv682
  %46 = load i32* %arrayidx251, align 4, !tbaa !3
  %cmp252 = icmp eq i32 %46, %myid
  br i1 %cmp252, label %if.then254, label %for.inc367

if.then254:                                       ; preds = %lor.lhs.false249, %for.body246
  %arrayidx256 = getelementptr inbounds i32* %call48, i64 %indvars.iv682
  %47 = load i32* %arrayidx256, align 4, !tbaa !3
  %arrayidx258 = getelementptr inbounds i32* %call49, i64 %indvars.iv682
  %48 = load i32* %arrayidx258, align 4, !tbaa !3
  %49 = trunc i64 %indvars.iv682 to i32
  br i1 %cmp259, label %if.then261, label %if.end264

if.then261:                                       ; preds = %if.then254
  %call262 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %msgFile, i8* getelementptr inbounds ([22 x i8]* @.str9, i64 0, i64 0), i32 %49, i32 %47, i32 %48) #5
  %call263 = call i32 @fflush(%struct._IO_FILE* %msgFile) #5
  br label %if.end264

if.end264:                                        ; preds = %if.then254, %if.then261
  %call265 = call i32 @SubMtx_nbytesNeeded(i32 %type, i32 7, i32 %47, i32 %47, i32 %47) #5
  %call266 = call %struct._SubMtx* @SubMtxManager_newObjectOfSizeNbytes(%struct._SubMtxManager* %manager, i32 %call265) #5
  call void @SubMtx_init(%struct._SubMtx* %call266, i32 %type, i32 7, i32 %49, i32 %49, i32 %47, i32 %47, i32 %47) #5
  call void @SubMtx_diagonalInfo(%struct._SubMtx* %call266, i32* %ncol, double** %entries) #5
  call void @SubMtx_zero(%struct._SubMtx* %call266) #5
  %add = add nsw i32 %47, %nentD.0672
  %50 = load %struct._SubMtx*** %p_mtxDJJ268, align 8, !tbaa !0
  %arrayidx269 = getelementptr inbounds %struct._SubMtx** %50, i64 %indvars.iv682
  store %struct._SubMtx* %call266, %struct._SubMtx** %arrayidx269, align 8, !tbaa !0
  br i1 %cmp259, label %if.then272, label %if.end275

if.then272:                                       ; preds = %if.end264
  %call273 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %msgFile, i8* getelementptr inbounds ([51 x i8]* @.str10, i64 0, i64 0), i32 %49, i32 %49, %struct._SubMtx* %call266, i32 %47, i32 %call265) #5
  %call274 = call i32 @fflush(%struct._IO_FILE* %msgFile) #5
  br label %if.end275

if.end275:                                        ; preds = %if.then272, %if.end264
  %sub = add nsw i32 %47, -1
  %mul276 = mul nsw i32 %sub, %47
  %div = sdiv i32 %mul276, 2
  store i32 %div, i32* %nent, align 4, !tbaa !3
  %cmp277 = icmp sgt i32 %mul276, 1
  br i1 %cmp277, label %if.then279, label %if.end331

if.then279:                                       ; preds = %if.end275
  %call280 = call i32 @SubMtx_nbytesNeeded(i32 %type, i32 6, i32 %47, i32 %47, i32 %div) #5
  %call281 = call %struct._SubMtx* @SubMtxManager_newObjectOfSizeNbytes(%struct._SubMtxManager* %manager, i32 %call280) #5
  %51 = load i32* %nent, align 4, !tbaa !3
  call void @SubMtx_init(%struct._SubMtx* %call281, i32 %type, i32 6, i32 %49, i32 %49, i32 %47, i32 %47, i32 %51) #5
  call void @SubMtx_denseSubcolumnsInfo(%struct._SubMtx* %call281, i32* %ncol, i32* %nent, i32** %firstlocs, i32** %sizes, double** %entries) #5
  %52 = load i32* %ncol, align 4, !tbaa !3
  %cmp283665 = icmp sgt i32 %52, 0
  br i1 %cmp283665, label %for.body285.lr.ph, label %for.end292

for.body285.lr.ph:                                ; preds = %if.then279
  %53 = load i32** %firstlocs, align 8, !tbaa !0
  %54 = load i32** %sizes, align 8, !tbaa !0
  br label %for.body285

for.body285:                                      ; preds = %for.body285.lr.ph, %for.body285
  %indvars.iv = phi i64 [ 0, %for.body285.lr.ph ], [ %indvars.iv.next, %for.body285 ]
  %arrayidx287 = getelementptr inbounds i32* %53, i64 %indvars.iv
  store i32 0, i32* %arrayidx287, align 4, !tbaa !3
  %arrayidx289 = getelementptr inbounds i32* %54, i64 %indvars.iv
  %55 = trunc i64 %indvars.iv to i32
  store i32 %55, i32* %arrayidx289, align 4, !tbaa !3
  %indvars.iv.next = add i64 %indvars.iv, 1
  %56 = load i32* %ncol, align 4, !tbaa !3
  %57 = trunc i64 %indvars.iv.next to i32
  %cmp283 = icmp slt i32 %57, %56
  br i1 %cmp283, label %for.body285, label %for.end292

for.end292:                                       ; preds = %for.body285, %if.then279
  call void @SubMtx_zero(%struct._SubMtx* %call281) #5
  %58 = load i32* %nent, align 4, !tbaa !3
  %add293 = add nsw i32 %58, %nentU.0670
  %59 = load %struct._SubMtx*** %p_mtxUJJ295, align 8, !tbaa !0
  %arrayidx296 = getelementptr inbounds %struct._SubMtx** %59, i64 %indvars.iv682
  store %struct._SubMtx* %call281, %struct._SubMtx** %arrayidx296, align 8, !tbaa !0
  br i1 %cmp259, label %if.then299, label %if.end302

if.then299:                                       ; preds = %for.end292
  %call300 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %msgFile, i8* getelementptr inbounds ([48 x i8]* @.str11, i64 0, i64 0), i32 %49, i32 %49, %struct._SubMtx* %call281, i32 %58, i32 %call280) #5
  %call301 = call i32 @fflush(%struct._IO_FILE* %msgFile) #5
  br label %if.end302

if.end302:                                        ; preds = %if.then299, %for.end292
  %60 = load i32* %symmetryflag58, align 4, !tbaa !3
  %cmp304 = icmp eq i32 %60, 2
  br i1 %cmp304, label %if.then306, label %if.end331

if.then306:                                       ; preds = %if.end302
  %61 = load i32* %nent, align 4, !tbaa !3
  %call307 = call i32 @SubMtx_nbytesNeeded(i32 %type, i32 5, i32 %47, i32 %47, i32 %61) #5
  %call308 = call %struct._SubMtx* @SubMtxManager_newObjectOfSizeNbytes(%struct._SubMtxManager* %manager, i32 %call307) #5
  %62 = load i32* %nent, align 4, !tbaa !3
  call void @SubMtx_init(%struct._SubMtx* %call308, i32 %type, i32 5, i32 %49, i32 %49, i32 %47, i32 %47, i32 %62) #5
  call void @SubMtx_denseSubrowsInfo(%struct._SubMtx* %call308, i32* %nrow, i32* %nent, i32** %firstlocs, i32** %sizes, double** %entries) #5
  %63 = load i32* %nrow, align 4, !tbaa !3
  %cmp310667 = icmp sgt i32 %63, 0
  br i1 %cmp310667, label %for.body312.lr.ph, label %for.end319

for.body312.lr.ph:                                ; preds = %if.then306
  %64 = load i32** %firstlocs, align 8, !tbaa !0
  %65 = load i32** %sizes, align 8, !tbaa !0
  br label %for.body312

for.body312:                                      ; preds = %for.body312.lr.ph, %for.body312
  %indvars.iv680 = phi i64 [ 0, %for.body312.lr.ph ], [ %indvars.iv.next681, %for.body312 ]
  %arrayidx314 = getelementptr inbounds i32* %64, i64 %indvars.iv680
  store i32 0, i32* %arrayidx314, align 4, !tbaa !3
  %arrayidx316 = getelementptr inbounds i32* %65, i64 %indvars.iv680
  %66 = trunc i64 %indvars.iv680 to i32
  store i32 %66, i32* %arrayidx316, align 4, !tbaa !3
  %indvars.iv.next681 = add i64 %indvars.iv680, 1
  %67 = load i32* %nrow, align 4, !tbaa !3
  %68 = trunc i64 %indvars.iv.next681 to i32
  %cmp310 = icmp slt i32 %68, %67
  br i1 %cmp310, label %for.body312, label %for.end319

for.end319:                                       ; preds = %for.body312, %if.then306
  call void @SubMtx_zero(%struct._SubMtx* %call308) #5
  %69 = load i32* %nent, align 4, !tbaa !3
  %add320 = add nsw i32 %69, %nentL.0671
  %70 = load %struct._SubMtx*** %p_mtxLJJ322, align 8, !tbaa !0
  %arrayidx323 = getelementptr inbounds %struct._SubMtx** %70, i64 %indvars.iv682
  store %struct._SubMtx* %call308, %struct._SubMtx** %arrayidx323, align 8, !tbaa !0
  br i1 %cmp259, label %if.then326, label %if.end331

if.then326:                                       ; preds = %for.end319
  %call327 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %msgFile, i8* getelementptr inbounds ([48 x i8]* @.str12, i64 0, i64 0), i32 %49, i32 %49, %struct._SubMtx* %call308, i32 %69, i32 %call307) #5
  %call328 = call i32 @fflush(%struct._IO_FILE* %msgFile) #5
  br label %if.end331

if.end331:                                        ; preds = %if.end302, %if.then326, %for.end319, %if.end275
  %nentU.1 = phi i32 [ %add293, %if.then326 ], [ %add293, %for.end319 ], [ %add293, %if.end302 ], [ %nentU.0670, %if.end275 ]
  %nentL.1 = phi i32 [ %add320, %if.then326 ], [ %add320, %for.end319 ], [ %nentL.0671, %if.end302 ], [ %nentL.0671, %if.end275 ]
  %mul332 = mul nsw i32 %48, %47
  store i32 %mul332, i32* %nent, align 4, !tbaa !3
  %cmp333 = icmp sgt i32 %mul332, 0
  br i1 %cmp333, label %if.then335, label %for.inc367

if.then335:                                       ; preds = %if.end331
  %call336 = call i32 @SubMtx_nbytesNeeded(i32 %type, i32 1, i32 %47, i32 %48, i32 %mul332) #5
  %call337 = call %struct._SubMtx* @SubMtxManager_newObjectOfSizeNbytes(%struct._SubMtxManager* %manager, i32 %call336) #5
  %71 = load i32* %nent, align 4, !tbaa !3
  call void @SubMtx_init(%struct._SubMtx* %call337, i32 %type, i32 1, i32 %49, i32 %15, i32 %47, i32 %48, i32 %71) #5
  call void @SubMtx_zero(%struct._SubMtx* %call337) #5
  %72 = load i32* %nent, align 4, !tbaa !3
  %add338 = add nsw i32 %72, %nentU.1
  %73 = load %struct._SubMtx*** %p_mtxUJN340, align 8, !tbaa !0
  %arrayidx341 = getelementptr inbounds %struct._SubMtx** %73, i64 %indvars.iv682
  store %struct._SubMtx* %call337, %struct._SubMtx** %arrayidx341, align 8, !tbaa !0
  br i1 %cmp259, label %if.then344, label %if.end347

if.then344:                                       ; preds = %if.then335
  %call345 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %msgFile, i8* getelementptr inbounds ([48 x i8]* @.str11, i64 0, i64 0), i32 %49, i32 %15, %struct._SubMtx* %call337, i32 %72, i32 %call336) #5
  %call346 = call i32 @fflush(%struct._IO_FILE* %msgFile) #5
  br label %if.end347

if.end347:                                        ; preds = %if.then344, %if.then335
  %74 = load i32* %symmetryflag58, align 4, !tbaa !3
  %cmp349 = icmp eq i32 %74, 2
  br i1 %cmp349, label %if.then351, label %for.inc367

if.then351:                                       ; preds = %if.end347
  %75 = load i32* %nent, align 4, !tbaa !3
  %call352 = call i32 @SubMtx_nbytesNeeded(i32 %type, i32 0, i32 %48, i32 %47, i32 %75) #5
  %call353 = call %struct._SubMtx* @SubMtxManager_newObjectOfSizeNbytes(%struct._SubMtxManager* %manager, i32 %call352) #5
  %76 = load i32* %nent, align 4, !tbaa !3
  call void @SubMtx_init(%struct._SubMtx* %call353, i32 %type, i32 0, i32 %15, i32 %49, i32 %48, i32 %47, i32 %76) #5
  call void @SubMtx_zero(%struct._SubMtx* %call353) #5
  %77 = load i32* %nent, align 4, !tbaa !3
  %add354 = add nsw i32 %77, %nentL.1
  %78 = load %struct._SubMtx*** %p_mtxLNJ356, align 8, !tbaa !0
  %arrayidx357 = getelementptr inbounds %struct._SubMtx** %78, i64 %indvars.iv682
  store %struct._SubMtx* %call353, %struct._SubMtx** %arrayidx357, align 8, !tbaa !0
  br i1 %cmp259, label %if.then360, label %for.inc367

if.then360:                                       ; preds = %if.then351
  %call361 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %msgFile, i8* getelementptr inbounds ([48 x i8]* @.str12, i64 0, i64 0), i32 %15, i32 %49, %struct._SubMtx* %call353, i32 %77, i32 %call352) #5
  %call362 = call i32 @fflush(%struct._IO_FILE* %msgFile) #5
  br label %for.inc367

for.inc367:                                       ; preds = %lor.lhs.false249, %if.end347, %if.then360, %if.then351, %if.end331
  %nentU.2 = phi i32 [ %add338, %if.then360 ], [ %add338, %if.then351 ], [ %add338, %if.end347 ], [ %nentU.1, %if.end331 ], [ %nentU.0670, %lor.lhs.false249 ]
  %nentL.2 = phi i32 [ %add354, %if.then360 ], [ %add354, %if.then351 ], [ %nentL.1, %if.end347 ], [ %nentL.1, %if.end331 ], [ %nentL.0671, %lor.lhs.false249 ]
  %nentD.1 = phi i32 [ %add, %if.then360 ], [ %add, %if.then351 ], [ %add, %if.end347 ], [ %add, %if.end331 ], [ %nentD.0672, %lor.lhs.false249 ]
  %indvars.iv.next683 = add i64 %indvars.iv682, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next683 to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %15
  br i1 %exitcond, label %for.end369, label %for.body246

for.end369:                                       ; preds = %for.inc367, %for.cond243.preheader
  %nentD.0.lcssa = phi i32 [ 0, %for.cond243.preheader ], [ %nentD.1, %for.inc367 ]
  %nentL.0.lcssa = phi i32 [ 0, %for.cond243.preheader ], [ %nentL.2, %for.inc367 ]
  %nentU.0.lcssa = phi i32 [ 0, %for.cond243.preheader ], [ %nentU.2, %for.inc367 ]
  %nentD370 = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 7
  store i32 %nentD.0.lcssa, i32* %nentD370, align 4, !tbaa !3
  %nentL371 = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 8
  store i32 %nentL.0.lcssa, i32* %nentL371, align 4, !tbaa !3
  %nentU372 = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 9
  store i32 %nentU.0.lcssa, i32* %nentU372, align 4, !tbaa !3
  br label %if.end373

if.end373:                                        ; preds = %for.end369, %land.lhs.true238, %if.end233
  %lockflag.off = add i32 %lockflag, -1
  %79 = icmp ult i32 %lockflag.off, 2
  br i1 %79, label %if.then379, label %if.end382

if.then379:                                       ; preds = %if.end373
  %call380 = call %struct._Lock* @Lock_new() #5
  %lock = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 26
  store %struct._Lock* %call380, %struct._Lock** %lock, align 8, !tbaa !0
  call void @Lock_init(%struct._Lock* %call380, i32 %lockflag) #5
  br label %if.end382

if.end382:                                        ; preds = %if.end373, %if.then379
  %patchinfo = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 27
  store %struct._PatchAndGoInfo* null, %struct._PatchAndGoInfo** %patchinfo, align 8, !tbaa !0
  %cmp383 = icmp sgt i32 %msglvl, 3
  br i1 %cmp383, label %if.then385, label %if.end389

if.then385:                                       ; preds = %if.end382
  %lock386 = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 26
  %80 = load %struct._Lock** %lock386, align 8, !tbaa !0
  %call387 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %msgFile, i8* getelementptr inbounds ([23 x i8]* @.str13, i64 0, i64 0), %struct._Lock* %80) #5
  %call388 = call i32 @fflush(%struct._IO_FILE* %msgFile) #5
  br label %if.end389

if.end389:                                        ; preds = %if.then385, %if.end382
  ret void
}

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #1

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32) #2

; Function Attrs: optsize
declare i32* @ETree_nodwghts(%struct._ETree*) #3

; Function Attrs: optsize
declare i32* @ETree_bndwghts(%struct._ETree*) #3

; Function Attrs: optsize
declare i32* @ETree_vtxToFront(%struct._ETree*) #3

; Function Attrs: optsize
declare i32* @IV_entries(%struct._IV*) #3

; Function Attrs: optsize
declare void @FrontMtx_setDefaultFields(%struct._FrontMtx*) #3

; Function Attrs: optsize
declare %struct._IV* @IV_new() #3

; Function Attrs: optsize
declare void @IV_init(%struct._IV*, i32, i32*) #3

; Function Attrs: optsize
declare void @IV_fill(%struct._IV*, i32) #3

; Function Attrs: optsize
declare %struct._IVL* @IVL_new() #3

; Function Attrs: optsize
declare void @IVL_init1(%struct._IVL*, i32, i32) #3

; Function Attrs: nounwind optsize
declare noalias i8* @malloc(i64) #1

; Function Attrs: nounwind optsize
declare i32 @fflush(%struct._IO_FILE* nocapture) #1

; Function Attrs: optsize
declare i32 @SubMtx_nbytesNeeded(i32, i32, i32, i32, i32) #3

; Function Attrs: optsize
declare %struct._SubMtx* @SubMtxManager_newObjectOfSizeNbytes(%struct._SubMtxManager*, i32) #3

; Function Attrs: optsize
declare void @SubMtx_init(%struct._SubMtx*, i32, i32, i32, i32, i32, i32, i32) #3

; Function Attrs: optsize
declare void @SubMtx_diagonalInfo(%struct._SubMtx*, i32*, double**) #3

; Function Attrs: optsize
declare void @SubMtx_zero(%struct._SubMtx*) #3

; Function Attrs: optsize
declare void @SubMtx_denseSubcolumnsInfo(%struct._SubMtx*, i32*, i32*, i32**, i32**, double**) #3

; Function Attrs: optsize
declare void @SubMtx_denseSubrowsInfo(%struct._SubMtx*, i32*, i32*, i32**, i32**, double**) #3

; Function Attrs: optsize
declare %struct._Lock* @Lock_new() #3

; Function Attrs: optsize
declare void @Lock_init(%struct._Lock*, i32) #3

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #4

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #4

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
