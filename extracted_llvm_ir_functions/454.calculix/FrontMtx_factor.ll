; ModuleID = '../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_factor.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct._Chv = type { i32, i32, i32, i32, i32, i32, i32*, i32*, double*, %struct._DV, %struct._Chv* }
%struct._DV = type { i32, i32, i32, double* }
%struct._FrontMtx = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct._Tree*, %struct._ETree*, %struct._IV*, %struct._IVL*, %struct._IVL*, %struct._IVL*, %struct._IVL*, %struct._IVL*, %struct._SubMtx**, %struct._SubMtx**, %struct._SubMtx**, %struct._SubMtx**, %struct._SubMtx**, %struct._I2Ohash*, %struct._I2Ohash*, %struct._SubMtxManager*, %struct._Lock*, %struct._PatchAndGoInfo*, i32 }
%struct._Tree = type { i32, i32, i32*, i32*, i32* }
%struct._ETree = type { i32, i32, %struct._Tree*, %struct._IV*, %struct._IV*, %struct._IV* }
%struct._IV = type { i32, i32, i32, i32* }
%struct._IVL = type { i32, i32, i32, i32, i32*, i32**, i32, %struct._Ichunk* }
%struct._Ichunk = type { i32, i32, i32*, %struct._Ichunk* }
%struct._SubMtx = type { i32, i32, i32, i32, i32, i32, i32, double*, %struct._DV, %struct._SubMtx* }
%struct._I2Ohash = type { i32, i32, i32, %struct._I2OP*, %struct._I2OP*, %struct._I2OP** }
%struct._I2OP = type { i32, i32, i8*, %struct._I2OP* }
%struct._SubMtxManager = type { %struct._SubMtx*, %struct._Lock*, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._Lock = type { i8*, i32, i32 }
%struct._PatchAndGoInfo = type { i32, double, double, %struct._IV*, %struct._DV* }
%struct._InpMtx = type { i32, i32, i32, i32, i32, double, %struct._IV, %struct._IV, %struct._DV, i32, i32, %struct._IV, %struct._IV, %struct._IV }
%struct._ChvManager = type { %struct._Chv*, %struct._Lock*, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._Pencil = type { i32, i32, %struct._InpMtx*, %struct._InpMtx*, [2 x double] }
%struct._IP = type { i32, %struct._IP* }
%struct._ChvList = type { i32, %struct._Chv**, i32*, %struct._Lock*, i8*, i32 }

@stderr = external global %struct._IO_FILE*
@.str = private unnamed_addr constant [143 x i8] c"\0A fatal error in FrontMtx_factorPencil()\0A frontmtx = %p, pencil = %p\0A tau = %e, droptol = %e, cpus = %p\0A msglvl = %d, msgFile = %p\0A bad input\0A\00", align 1
@.str1 = private unnamed_addr constant [34 x i8] c"\0A\0A INSIDE FrontMtx_factorPencil()\00", align 1
@.str2 = private unnamed_addr constant [30 x i8] c"\0A got pointers and dimensions\00", align 1
@.str3 = private unnamed_addr constant [49 x i8] c"\0A ALLOCATE failure : bytes %zd, line %d, file %s\00", align 1
@.str4 = private unnamed_addr constant [85 x i8] c"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_factor.c\00", align 1
@.str5 = private unnamed_addr constant [47 x i8] c"\0A ALLOCATE error : bytes %zd, line %d, file %s\00", align 1
@.str6 = private unnamed_addr constant [28 x i8] c"\0A allocated working storage\00", align 1
@.str7 = private unnamed_addr constant [40 x i8] c"\0A\0A ##### working on front %d, parent %d\00", align 1
@.str8 = private unnamed_addr constant [39 x i8] c"\0A fatal error, return %c from front %d\00", align 1

; Function Attrs: nounwind optsize uwtable
define %struct._Chv* @FrontMtx_factorInpMtx(%struct._FrontMtx* %frontmtx, %struct._InpMtx* %inpmtx, double %tau, double %droptol, %struct._ChvManager* %chvmanager, i32* nocapture %perror, double* %cpus, i32* %stats, i32 %msglvl, %struct._IO_FILE* %msgFile) #0 {
entry:
  %zero = alloca [2 x double], align 16
  %pencil = alloca %struct._Pencil, align 8
  %0 = bitcast [2 x double]* %zero to i8*
  call void @llvm.memset.p0i8.i64(i8* %0, i8 0, i64 16, i32 16, i1 false)
  %1 = bitcast %struct._Pencil* %pencil to i8*
  call void @llvm.lifetime.start(i64 40, i8* %1) #1
  call void @Pencil_setDefaultFields(%struct._Pencil* %pencil) #5
  %type = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 2
  %2 = load i32* %type, align 4, !tbaa !0
  %symmetryflag = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 3
  %3 = load i32* %symmetryflag, align 4, !tbaa !0
  %arraydecay = getelementptr inbounds [2 x double]* %zero, i64 0, i64 0
  call void @Pencil_init(%struct._Pencil* %pencil, i32 %2, i32 %3, %struct._InpMtx* %inpmtx, double* %arraydecay, %struct._InpMtx* null) #5
  %call = call %struct._Chv* @FrontMtx_factorPencil(%struct._FrontMtx* %frontmtx, %struct._Pencil* %pencil, double %tau, double %droptol, %struct._ChvManager* %chvmanager, i32* %perror, double* %cpus, i32* %stats, i32 %msglvl, %struct._IO_FILE* %msgFile) #6
  call void @llvm.lifetime.end(i64 40, i8* %1) #1
  ret %struct._Chv* %call
}

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #1

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: optsize
declare void @Pencil_setDefaultFields(%struct._Pencil*) #2

; Function Attrs: optsize
declare void @Pencil_init(%struct._Pencil*, i32, i32, %struct._InpMtx*, double*, %struct._InpMtx*) #2

; Function Attrs: nounwind optsize uwtable
define %struct._Chv* @FrontMtx_factorPencil(%struct._FrontMtx* %frontmtx, %struct._Pencil* %pencil, double %tau, double %droptol, %struct._ChvManager* %chvmanager, i32* nocapture %perror, double* %cpus, i32* %stats, i32 %msglvl, %struct._IO_FILE* %msgFile) #0 {
entry:
  %tmpDV = alloca %struct._DV, align 8
  %pivotsizesIV = alloca %struct._IV, align 8
  %cmp = icmp eq %struct._FrontMtx* %frontmtx, null
  %cmp1 = icmp eq %struct._Pencil* %pencil, null
  %or.cond = or i1 %cmp, %cmp1
  %cmp3 = icmp eq double* %cpus, null
  %or.cond221 = or i1 %or.cond, %cmp3
  %cmp5 = icmp eq i32* %stats, null
  %or.cond222 = or i1 %or.cond221, %cmp5
  br i1 %or.cond222, label %if.then, label %lor.lhs.false6

lor.lhs.false6:                                   ; preds = %entry
  %cmp7 = icmp sgt i32 %msglvl, 0
  %cmp8 = icmp eq %struct._IO_FILE* %msgFile, null
  %or.cond223 = and i1 %cmp7, %cmp8
  br i1 %or.cond223, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false6, %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([143 x i8]* @.str, i64 0, i64 0), %struct._FrontMtx* %frontmtx, %struct._Pencil* %pencil, double %tau, double %droptol, double* %cpus, i32 %msglvl, %struct._IO_FILE* %msgFile) #5
  call void @exit(i32 -1) #7
  unreachable

if.end:                                           ; preds = %lor.lhs.false6
  %cmp9 = icmp sgt i32 %msglvl, 2
  br i1 %cmp9, label %if.then10, label %if.end13

if.then10:                                        ; preds = %if.end
  %1 = call i64 @fwrite(i8* getelementptr inbounds ([34 x i8]* @.str1, i64 0, i64 0), i64 33, i64 1, %struct._IO_FILE* %msgFile)
  %call12 = call i32 @fflush(%struct._IO_FILE* %msgFile) #5
  br label %if.end13

if.end13:                                         ; preds = %if.then10, %if.end
  %frontETree14 = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 11
  %2 = load %struct._ETree** %frontETree14, align 8, !tbaa !3
  %call15 = call i32 @ETree_nfront(%struct._ETree* %2) #5
  %call16 = call %struct._Tree* @ETree_tree(%struct._ETree* %2) #5
  %call17 = call i32* @ETree_par(%struct._ETree* %2) #5
  br i1 %cmp9, label %if.then19, label %if.end22

if.then19:                                        ; preds = %if.end13
  %3 = call i64 @fwrite(i8* getelementptr inbounds ([30 x i8]* @.str2, i64 0, i64 0), i64 29, i64 1, %struct._IO_FILE* %msgFile)
  %call21 = call i32 @fflush(%struct._IO_FILE* %msgFile) #5
  br label %if.end22

if.end22:                                         ; preds = %if.then19, %if.end13
  %call23 = call %struct._IP** @FrontMtx_factorSetup(%struct._FrontMtx* %frontmtx, %struct._IV* null, i32 0, i32 %msglvl, %struct._IO_FILE* %msgFile) #5
  %call24 = call i8* @CVinit(i32 %call15, i8 signext 87) #5
  %cmp25 = icmp sgt i32 %call15, 0
  br i1 %cmp25, label %if.then26, label %if.else35

if.then26:                                        ; preds = %if.end22
  %conv = sext i32 %call15 to i64
  %mul = shl nsw i64 %conv, 3
  %call27 = call noalias i8* @malloc(i64 %mul) #5
  %cmp28 = icmp eq i8* %call27, null
  br i1 %cmp28, label %if.then30, label %for.body.lr.ph

if.then30:                                        ; preds = %if.then26
  %4 = load %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %call33 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([49 x i8]* @.str3, i64 0, i64 0), i64 %mul, i32 182, i8* getelementptr inbounds ([85 x i8]* @.str4, i64 0, i64 0)) #5
  call void @exit(i32 -1) #7
  unreachable

if.else35:                                        ; preds = %if.end22
  %cmp36 = icmp eq i32 %call15, 0
  br i1 %cmp36, label %if.end44, label %if.else39

if.else39:                                        ; preds = %if.else35
  %5 = load %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %conv40 = sext i32 %call15 to i64
  %mul41 = shl nsw i64 %conv40, 3
  %call42 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([47 x i8]* @.str5, i64 0, i64 0), i64 %mul41, i32 182, i8* getelementptr inbounds ([85 x i8]* @.str4, i64 0, i64 0)) #5
  call void @exit(i32 -1) #7
  unreachable

if.end44:                                         ; preds = %if.else35
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.then26
  %6 = bitcast i8* %call27 to %struct._Chv**
  %7 = add i32 %call15, -1
  %8 = zext i32 %7 to i64
  %9 = shl nuw nsw i64 %8, 3
  %10 = add i64 %9, 8
  call void @llvm.memset.p0i8.i64(i8* %call27, i8 0, i64 %10, i32 8, i1 false)
  br label %for.end

for.end:                                          ; preds = %if.end44, %for.body.lr.ph
  %11 = phi i8* [ %call27, %for.body.lr.ph ], [ null, %if.end44 ]
  %fronts.0235 = phi %struct._Chv** [ %6, %for.body.lr.ph ], [ null, %if.end44 ]
  call void @DV_setDefaultFields(%struct._DV* %tmpDV) #5
  call void @IV_setDefaultFields(%struct._IV* %pivotsizesIV) #5
  %pivotingflag = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 5
  %12 = load i32* %pivotingflag, align 4, !tbaa !0
  %cmp47 = icmp eq i32 %12, 1
  br i1 %cmp47, label %if.then49, label %if.end52

if.then49:                                        ; preds = %for.end
  %call50 = call %struct._ChvList* @ChvList_new() #5
  %add = add nsw i32 %call15, 1
  call void @ChvList_init(%struct._ChvList* %call50, i32 %add, i32* null, i32 0, i8* null) #5
  br label %if.end52

if.end52:                                         ; preds = %for.end, %if.then49
  %postList.0 = phi %struct._ChvList* [ %call50, %if.then49 ], [ null, %for.end ]
  %cmp53 = icmp sgt i32 %msglvl, 1
  br i1 %cmp53, label %if.then55, label %if.end58

if.then55:                                        ; preds = %if.end52
  %13 = call i64 @fwrite(i8* getelementptr inbounds ([28 x i8]* @.str6, i64 0, i64 0), i64 27, i64 1, %struct._IO_FILE* %msgFile)
  %call57 = call i32 @fflush(%struct._IO_FILE* %msgFile) #5
  br label %if.end58

if.end58:                                         ; preds = %if.then55, %if.end52
  store i32 -1, i32* %perror, align 4, !tbaa !0
  %call59 = call i32 @Tree_postOTfirst(%struct._Tree* %call16) #5
  %cmp61227 = icmp eq i32 %call59, -1
  br i1 %cmp61227, label %for.end94, label %for.body63

for.body63:                                       ; preds = %if.end58, %for.inc92
  %J.1228 = phi i32 [ %call93, %for.inc92 ], [ %call59, %if.end58 ]
  %idxprom64 = sext i32 %J.1228 to i64
  br i1 %cmp53, label %if.then68, label %if.end71

if.then68:                                        ; preds = %for.body63
  %arrayidx65 = getelementptr inbounds i32* %call17, i64 %idxprom64
  %14 = load i32* %arrayidx65, align 4, !tbaa !0
  %call69 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %msgFile, i8* getelementptr inbounds ([40 x i8]* @.str7, i64 0, i64 0), i32 %J.1228, i32 %14) #5
  %call70 = call i32 @fflush(%struct._IO_FILE* %msgFile) #5
  br label %if.end71

if.end71:                                         ; preds = %if.then68, %for.body63
  %call72 = call signext i8 @FrontMtx_factorVisit(%struct._FrontMtx* %frontmtx, %struct._Pencil* %pencil, i32 %J.1228, i32 0, i32* null, %struct._Chv** %fronts.0235, i32 0, double %tau, double %droptol, i8* %call24, %struct._IP** %call23, %struct._IV* %pivotsizesIV, %struct._DV* %tmpDV, i32* %call17, %struct._ChvList* null, %struct._ChvList* %postList.0, %struct._ChvManager* %chvmanager, i32* %stats, double* %cpus, i32 %msglvl, %struct._IO_FILE* %msgFile) #5
  %arrayidx74 = getelementptr inbounds i8* %call24, i64 %idxprom64
  %15 = load i8* %arrayidx74, align 1, !tbaa !1
  switch i8 %15, label %if.then85 [
    i8 69, label %if.then78
    i8 70, label %for.inc92
  ]

if.then78:                                        ; preds = %if.end71
  store i32 %J.1228, i32* %perror, align 4, !tbaa !0
  br label %for.end94

if.then85:                                        ; preds = %if.end71
  %conv75 = sext i8 %15 to i32
  %16 = load %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %call89 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %16, i8* getelementptr inbounds ([39 x i8]* @.str8, i64 0, i64 0), i32 %conv75, i32 %J.1228) #5
  call void @exit(i32 -1) #7
  unreachable

for.inc92:                                        ; preds = %if.end71
  %call93 = call i32 @Tree_postOTnext(%struct._Tree* %call16, i32 %J.1228) #5
  %cmp61 = icmp eq i32 %call93, -1
  br i1 %cmp61, label %for.end94, label %for.body63

for.end94:                                        ; preds = %if.end58, %for.inc92, %if.then78
  %cmp95 = icmp eq %struct._ChvList* %postList.0, null
  br i1 %cmp95, label %if.end100, label %if.else98

if.else98:                                        ; preds = %for.end94
  %call99 = call %struct._Chv* @ChvList_getList(%struct._ChvList* %postList.0, i32 %call15) #5
  br label %if.end100

if.end100:                                        ; preds = %for.end94, %if.else98
  %rootchv.0 = phi %struct._Chv* [ %call99, %if.else98 ], [ null, %for.end94 ]
  %nentD = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 7
  %17 = load i32* %nentD, align 4, !tbaa !0
  %arrayidx101 = getelementptr inbounds i32* %stats, i64 3
  store i32 %17, i32* %arrayidx101, align 4, !tbaa !0
  %nentL = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 8
  %18 = load i32* %nentL, align 4, !tbaa !0
  %arrayidx102 = getelementptr inbounds i32* %stats, i64 4
  store i32 %18, i32* %arrayidx102, align 4, !tbaa !0
  %nentU = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 9
  %19 = load i32* %nentU, align 4, !tbaa !0
  %arrayidx103 = getelementptr inbounds i32* %stats, i64 5
  store i32 %19, i32* %arrayidx103, align 4, !tbaa !0
  %add104 = add nsw i32 %call15, 1
  %idxprom105 = sext i32 %add104 to i64
  %arrayidx106 = getelementptr inbounds %struct._IP** %call23, i64 %idxprom105
  %20 = load %struct._IP** %arrayidx106, align 8, !tbaa !3
  call void @IP_free(%struct._IP* %20) #5
  %cmp107 = icmp eq %struct._IP** %call23, null
  br i1 %cmp107, label %if.end110, label %if.then109

if.then109:                                       ; preds = %if.end100
  %21 = bitcast %struct._IP** %call23 to i8*
  call void @free(i8* %21) #5
  br label %if.end110

if.end110:                                        ; preds = %if.end100, %if.then109
  call void @DV_clearData(%struct._DV* %tmpDV) #5
  call void @IV_clearData(%struct._IV* %pivotsizesIV) #5
  call void @CVfree(i8* %call24) #5
  %cmp111 = icmp eq %struct._Chv** %fronts.0235, null
  br i1 %cmp111, label %if.end114, label %if.then113

if.then113:                                       ; preds = %if.end110
  call void @free(i8* %11) #5
  br label %if.end114

if.end114:                                        ; preds = %if.end110, %if.then113
  br i1 %cmp95, label %if.end118, label %if.then117

if.then117:                                       ; preds = %if.end114
  call void @ChvList_free(%struct._ChvList* %postList.0) #5
  br label %if.end118

if.end118:                                        ; preds = %if.end114, %if.then117
  %arrayidx119 = getelementptr inbounds double* %cpus, i64 8
  store double 0.000000e+00, double* %arrayidx119, align 8, !tbaa !4
  %22 = load double* %cpus, align 8, !tbaa !4
  %sub122 = fsub double 0.000000e+00, %22
  %arrayidx123 = getelementptr inbounds double* %cpus, i64 1
  %23 = load double* %arrayidx123, align 8, !tbaa !4
  %sub124 = fsub double %sub122, %23
  %arrayidx125 = getelementptr inbounds double* %cpus, i64 2
  %24 = load double* %arrayidx125, align 8, !tbaa !4
  %sub126 = fsub double %sub124, %24
  %arrayidx127 = getelementptr inbounds double* %cpus, i64 3
  %25 = load double* %arrayidx127, align 8, !tbaa !4
  %sub128 = fsub double %sub126, %25
  %arrayidx129 = getelementptr inbounds double* %cpus, i64 4
  %26 = load double* %arrayidx129, align 8, !tbaa !4
  %sub130 = fsub double %sub128, %26
  %arrayidx131 = getelementptr inbounds double* %cpus, i64 5
  %27 = load double* %arrayidx131, align 8, !tbaa !4
  %sub132 = fsub double %sub130, %27
  %arrayidx133 = getelementptr inbounds double* %cpus, i64 6
  %28 = load double* %arrayidx133, align 8, !tbaa !4
  %sub134 = fsub double %sub132, %28
  %arrayidx135 = getelementptr inbounds double* %cpus, i64 7
  store double %sub134, double* %arrayidx135, align 8, !tbaa !4
  ret %struct._Chv* %rootchv.0
}

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #3

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32) #4

; Function Attrs: nounwind optsize
declare i32 @fflush(%struct._IO_FILE* nocapture) #3

; Function Attrs: optsize
declare i32 @ETree_nfront(%struct._ETree*) #2

; Function Attrs: optsize
declare %struct._Tree* @ETree_tree(%struct._ETree*) #2

; Function Attrs: optsize
declare i32* @ETree_par(%struct._ETree*) #2

; Function Attrs: optsize
declare %struct._IP** @FrontMtx_factorSetup(%struct._FrontMtx*, %struct._IV*, i32, i32, %struct._IO_FILE*) #2

; Function Attrs: optsize
declare i8* @CVinit(i32, i8 signext) #2

; Function Attrs: nounwind optsize
declare noalias i8* @malloc(i64) #3

; Function Attrs: optsize
declare void @DV_setDefaultFields(%struct._DV*) #2

; Function Attrs: optsize
declare void @IV_setDefaultFields(%struct._IV*) #2

; Function Attrs: optsize
declare %struct._ChvList* @ChvList_new() #2

; Function Attrs: optsize
declare void @ChvList_init(%struct._ChvList*, i32, i32*, i32, i8*) #2

; Function Attrs: optsize
declare i32 @Tree_postOTfirst(%struct._Tree*) #2

; Function Attrs: optsize
declare signext i8 @FrontMtx_factorVisit(%struct._FrontMtx*, %struct._Pencil*, i32, i32, i32*, %struct._Chv**, i32, double, double, i8*, %struct._IP**, %struct._IV*, %struct._DV*, i32*, %struct._ChvList*, %struct._ChvList*, %struct._ChvManager*, i32*, double*, i32, %struct._IO_FILE*) #2

; Function Attrs: optsize
declare i32 @Tree_postOTnext(%struct._Tree*, i32) #2

; Function Attrs: optsize
declare %struct._Chv* @ChvList_getList(%struct._ChvList*, i32) #2

; Function Attrs: optsize
declare void @IP_free(%struct._IP*) #2

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) #3

; Function Attrs: optsize
declare void @DV_clearData(%struct._DV*) #2

; Function Attrs: optsize
declare void @IV_clearData(%struct._IV*) #2

; Function Attrs: optsize
declare void @CVfree(i8*) #2

; Function Attrs: optsize
declare void @ChvList_free(%struct._ChvList*) #2

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #1

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind optsize }
attributes #6 = { optsize }
attributes #7 = { noreturn nounwind optsize }

!0 = metadata !{metadata !"int", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"any pointer", metadata !1}
!4 = metadata !{metadata !"double", metadata !1}
