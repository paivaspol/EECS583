; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/PUGH/PughUtils.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.anon.0 = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.cGH = type { i32, i32, i32*, i32*, i32*, i32*, i32*, i32*, i32*, double, double*, double*, i32*, i32*, i32, i32*, double, i8***, i8**, %struct.cGHGroupData* }
%struct.cGHGroupData = type { i8, i8 }
%struct.PConnectivity = type { i32, i32*, i32**, i32* }
%struct.PGH = type { i8*, i32, i32, i32, i32, i32, i32, i8***, i32, i32*, i32, i32, double, double, double, double, i32, i32, i32, i32, i32, %struct.PGExtras**, %struct.PConnectivity**, i8* }
%struct.PGExtras = type { i32, i32*, double, i32**, i32**, i32*, i32*, i32, i32*, i32**, i32*, i32*, i32*, [4 x [2 x i32*]], [4 x [2 x i32**]], [4 x [2 x i32**]] }

@pughpriv_ = external global %struct.anon.0
@.str = private unnamed_addr constant [5 x i8] c"PUGH\00", align 1
@.str1 = private unnamed_addr constant [27 x i8] c"Single processor evolution\00", align 1
@.str2 = private unnamed_addr constant [30 x i8] c"%d-dimensional grid functions\00", align 1
@.str3 = private unnamed_addr constant [8 x i8] c"  Size:\00", align 1
@.str4 = private unnamed_addr constant [6 x i8] c"%s %d\00", align 1
@.str5 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str6 = private unnamed_addr constant [6 x i8] c"%s%s \00", align 1
@.str7 = private unnamed_addr constant [37 x i8] c"Grid Variables with storage enabled:\00", align 1
@.str8 = private unnamed_addr constant [20 x i8] c" Grid Functions: %s\00", align 1
@.str9 = private unnamed_addr constant [17 x i8] c" Grid Arrays: %s\00", align 1
@.str10 = private unnamed_addr constant [18 x i8] c" Grid Scalars: %s\00", align 1
@.str11 = private unnamed_addr constant [90 x i8] c"$Header: /cactus/CactusPUGH/PUGH/src/PughUtils.c,v 1.32 2001/11/11 17:52:25 goodale Exp $\00", align 1

; Function Attrs: nounwind optsize readnone ssp uwtable
define i8* @CCTKi_version_CactusPUGH_PUGH_PughUtils_c() #0 {
  ret i8* getelementptr inbounds ([90 x i8]* @.str11, i64 0, i64 0), !dbg !294
}

; Function Attrs: nounwind optsize ssp uwtable
define i32* @PUGH_Topology(%struct.cGH* %GH, i32 %dim) #1 {
  tail call void @llvm.dbg.value(metadata %struct.cGH* %GH, i64 0, metadata !123, metadata !295), !dbg !296
  tail call void @llvm.dbg.value(metadata i32 %dim, i64 0, metadata !124, metadata !295), !dbg !297
  tail call void @llvm.dbg.value(metadata %struct.cGH* %GH, i64 0, metadata !206, metadata !295) #6, !dbg !298
  %1 = tail call i8* @CCTK_GHExtension(%struct.cGH* %GH, i8* getelementptr inbounds ([5 x i8]* @.str, i64 0, i64 0)) #7, !dbg !300
  %2 = add nsw i32 %dim, -1, !dbg !301
  %3 = sext i32 %2 to i64, !dbg !302
  %4 = getelementptr inbounds i8* %1, i64 128, !dbg !303
  %5 = bitcast i8* %4 to %struct.PConnectivity***, !dbg !303
  %6 = load %struct.PConnectivity*** %5, align 8, !dbg !303, !tbaa !304
  %7 = getelementptr inbounds %struct.PConnectivity** %6, i64 %3, !dbg !302
  %8 = load %struct.PConnectivity** %7, align 8, !dbg !302, !tbaa !311
  %9 = getelementptr inbounds %struct.PConnectivity* %8, i64 0, i32 1, !dbg !312
  %10 = load i32** %9, align 8, !dbg !312, !tbaa !313
  ret i32* %10, !dbg !315
}

; Function Attrs: nounwind optsize ssp uwtable
define %struct.PGH* @PUGH_pGH(%struct.cGH* %GH) #1 {
  tail call void @llvm.dbg.value(metadata %struct.cGH* %GH, i64 0, metadata !206, metadata !295), !dbg !316
  %1 = tail call i8* @CCTK_GHExtension(%struct.cGH* %GH, i8* getelementptr inbounds ([5 x i8]* @.str, i64 0, i64 0)) #7, !dbg !317
  %2 = bitcast i8* %1 to %struct.PGH*, !dbg !318
  ret %struct.PGH* %2, !dbg !319
}

; Function Attrs: nounwind optsize ssp uwtable
define void @PUGH_Report(%struct.cGH* %GH) #1 {
  tail call void @llvm.dbg.value(metadata %struct.cGH* %GH, i64 0, metadata !130, metadata !295), !dbg !320
  tail call void @llvm.dbg.value(metadata %struct.cGH* %GH, i64 0, metadata !206, metadata !295) #6, !dbg !321
  %1 = tail call i8* @CCTK_GHExtension(%struct.cGH* %GH, i8* getelementptr inbounds ([5 x i8]* @.str, i64 0, i64 0)) #7, !dbg !323
  %2 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 0, !dbg !324
  %3 = load i32* %2, align 4, !dbg !324, !tbaa !325
  %4 = sext i32 %3 to i64, !dbg !327
  %5 = tail call i8* @calloc(i64 %4, i64 4) #7, !dbg !328
  %6 = bitcast i8* %5 to i32*, !dbg !329
  tail call void @llvm.dbg.value(metadata i32* %6, i64 0, metadata !135, metadata !295), !dbg !330
  %7 = tail call i8* @malloc(i64 200) #7, !dbg !331
  tail call void @llvm.dbg.value(metadata i8* %7, i64 0, metadata !136, metadata !295), !dbg !332
  %8 = tail call i32 (i8*, i8*, ...)* @CCTK_VInfo(i8* getelementptr inbounds ([5 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([27 x i8]* @.str1, i64 0, i64 0)) #7, !dbg !333
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !133, metadata !295), !dbg !334
  %9 = tail call i32 @CCTK_NumGroups() #7, !dbg !335
  %10 = icmp sgt i32 %9, 0, !dbg !338
  br i1 %10, label %.lr.ph7, label %.preheader, !dbg !339

.preheader:                                       ; preds = %22, %0
  %11 = load i32* %2, align 4, !dbg !340, !tbaa !325
  %12 = icmp sgt i32 %11, 0, !dbg !343
  br i1 %12, label %.lr.ph3, label %._crit_edge4, !dbg !344

.lr.ph3:                                          ; preds = %.preheader
  %13 = getelementptr inbounds i8* %1, i64 120, !dbg !345
  %14 = bitcast i8* %13 to %struct.PGExtras***, !dbg !345
  br label %26, !dbg !344

.lr.ph7:                                          ; preds = %0, %22
  %gi.05 = phi i32 [ %23, %22 ], [ 0, %0 ]
  %15 = tail call i32 @CCTK_GroupTypeI(i32 %gi.05) #7, !dbg !352
  %16 = icmp eq i32 %15, 2, !dbg !355
  br i1 %16, label %17, label %22, !dbg !356

; <label>:17                                      ; preds = %.lr.ph7
  %18 = tail call i32 @CCTK_GroupDimI(i32 %gi.05) #7, !dbg !357
  tail call void @llvm.dbg.value(metadata i32 %18, i64 0, metadata !134, metadata !295), !dbg !359
  %19 = add nsw i32 %18, -1, !dbg !360
  %20 = sext i32 %19 to i64, !dbg !361
  %21 = getelementptr inbounds i32* %6, i64 %20, !dbg !361
  store i32 1, i32* %21, align 4, !dbg !362, !tbaa !363
  br label %22, !dbg !364

; <label>:22                                      ; preds = %.lr.ph7, %17
  %23 = add nuw nsw i32 %gi.05, 1, !dbg !365
  tail call void @llvm.dbg.value(metadata i32 %23, i64 0, metadata !133, metadata !295), !dbg !334
  %24 = tail call i32 @CCTK_NumGroups() #7, !dbg !335
  %25 = icmp slt i32 %23, %24, !dbg !338
  br i1 %25, label %.lr.ph7, label %.preheader, !dbg !339

; <label>:26                                      ; preds = %.lr.ph3, %._crit_edge11
  %27 = phi i32 [ %11, %.lr.ph3 ], [ %45, %._crit_edge11 ]
  %indvars.iv8 = phi i64 [ 0, %.lr.ph3 ], [ %.pre12, %._crit_edge11 ]
  %28 = getelementptr inbounds i32* %6, i64 %indvars.iv8, !dbg !366
  %29 = load i32* %28, align 4, !dbg !366, !tbaa !363
  %30 = icmp eq i32 %29, 0, !dbg !366
  %.pre12 = add nuw nsw i64 %indvars.iv8, 1, !dbg !344
  br i1 %30, label %._crit_edge11, label %.lr.ph, !dbg !367

.lr.ph:                                           ; preds = %26
  %31 = trunc i64 %.pre12 to i32, !dbg !368
  %32 = tail call i32 (i8*, i8*, ...)* @CCTK_VInfo(i8* getelementptr inbounds ([5 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([30 x i8]* @.str2, i64 0, i64 0), i32 %31) #7, !dbg !368
  %33 = tail call i32 (i8*, i32, i64, i8*, ...)* @__sprintf_chk(i8* %7, i32 0, i64 200, i8* getelementptr inbounds ([8 x i8]* @.str3, i64 0, i64 0)) #7, !dbg !369
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !132, metadata !295), !dbg !370
  br label %34, !dbg !371

; <label>:34                                      ; preds = %.lr.ph, %34
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %34 ]
  %35 = load %struct.PGExtras*** %14, align 8, !dbg !345, !tbaa !372
  %36 = getelementptr inbounds %struct.PGExtras** %35, i64 %indvars.iv8, !dbg !345
  %37 = load %struct.PGExtras** %36, align 8, !dbg !345, !tbaa !311
  %38 = getelementptr inbounds %struct.PGExtras* %37, i64 0, i32 1, !dbg !345
  %39 = load i32** %38, align 8, !dbg !345, !tbaa !373
  %40 = getelementptr inbounds i32* %39, i64 %indvars.iv, !dbg !345
  %41 = load i32* %40, align 4, !dbg !345, !tbaa !363
  %42 = tail call i32 (i8*, i32, i64, i8*, ...)* @__sprintf_chk(i8* %7, i32 0, i64 200, i8* getelementptr inbounds ([6 x i8]* @.str4, i64 0, i64 0), i8* %7, i32 %41) #7, !dbg !345
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !371
  %43 = icmp slt i64 %indvars.iv.next, %.pre12, !dbg !375
  br i1 %43, label %34, label %._crit_edge, !dbg !371

._crit_edge:                                      ; preds = %34
  %44 = tail call i32 @CCTK_Info(i8* getelementptr inbounds ([5 x i8]* @.str, i64 0, i64 0), i8* %7) #7, !dbg !376
  %.pre = load i32* %2, align 4, !dbg !340, !tbaa !325
  br label %._crit_edge11, !dbg !377

._crit_edge11:                                    ; preds = %26, %._crit_edge
  %45 = phi i32 [ %.pre, %._crit_edge ], [ %27, %26 ], !dbg !344
  %46 = sext i32 %45 to i64, !dbg !343
  %47 = icmp slt i64 %.pre12, %46, !dbg !343
  br i1 %47, label %26, label %._crit_edge4, !dbg !344

._crit_edge4:                                     ; preds = %._crit_edge11, %.preheader
  tail call void @free(i8* %5) #8, !dbg !378
  tail call void @free(i8* %7) #8, !dbg !379
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !199, metadata !295), !dbg !380
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !199, metadata !295), !dbg !380
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !199, metadata !295), !dbg !380
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !199, metadata !295), !dbg !380
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !199, metadata !295), !dbg !380
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !199, metadata !295), !dbg !380
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !199, metadata !295), !dbg !380
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !199, metadata !295), !dbg !380
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !199, metadata !295), !dbg !380
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !199, metadata !295), !dbg !380
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !199, metadata !295), !dbg !380
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !199, metadata !295), !dbg !380
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !199, metadata !295), !dbg !380
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !199, metadata !295), !dbg !380
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !199, metadata !295), !dbg !380
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !199, metadata !295), !dbg !380
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !199, metadata !295), !dbg !380
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !199, metadata !295), !dbg !380
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !199, metadata !295), !dbg !380
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !199, metadata !295), !dbg !380
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !199, metadata !295), !dbg !380
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !199, metadata !295), !dbg !380
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !199, metadata !295), !dbg !380
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !199, metadata !295), !dbg !380
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !199, metadata !295), !dbg !380
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !199, metadata !295), !dbg !380
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !199, metadata !295), !dbg !380
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !199, metadata !295), !dbg !380
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !199, metadata !295), !dbg !380
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !199, metadata !295), !dbg !380
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !199, metadata !295), !dbg !380
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !199, metadata !295), !dbg !380
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !199, metadata !295), !dbg !380
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !199, metadata !295), !dbg !380
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !199, metadata !295), !dbg !380
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !199, metadata !295), !dbg !380
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !199, metadata !295), !dbg !380
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !199, metadata !295), !dbg !380
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !199, metadata !295), !dbg !380
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !199, metadata !295), !dbg !380
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !199, metadata !295), !dbg !380
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !199, metadata !295), !dbg !380
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !199, metadata !295), !dbg !380
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !199, metadata !295), !dbg !380
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !199, metadata !295), !dbg !380
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !199, metadata !295), !dbg !380
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !199, metadata !295), !dbg !380
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !199, metadata !295), !dbg !380
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !199, metadata !295), !dbg !380
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !199, metadata !295), !dbg !380
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !199, metadata !295), !dbg !380
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !199, metadata !295), !dbg !380
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !199, metadata !295), !dbg !380
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !199, metadata !295), !dbg !380
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !199, metadata !295), !dbg !380
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !199, metadata !295), !dbg !380
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !199, metadata !295), !dbg !380
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !199, metadata !295), !dbg !380
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !199, metadata !295), !dbg !380
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !199, metadata !295), !dbg !380
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !199, metadata !295), !dbg !380
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !199, metadata !295), !dbg !380
  ret void, !dbg !381
}

; Function Attrs: nounwind optsize
declare noalias i8* @calloc(i64, i64) #2

; Function Attrs: nounwind optsize
declare noalias i8* @malloc(i64) #2

; Function Attrs: optsize
declare i32 @CCTK_VInfo(i8*, i8*, ...) #3

; Function Attrs: optsize
declare i32 @CCTK_NumGroups() #3

; Function Attrs: optsize
declare i32 @CCTK_GroupTypeI(i32) #3

; Function Attrs: optsize
declare i32 @CCTK_GroupDimI(i32) #3

; Function Attrs: optsize
declare i32 @__sprintf_chk(i8*, i32, i64, i8*, ...) #3

; Function Attrs: nounwind readnone
declare i64 @llvm.objectsize.i64.p0i8(i8*, i1) #4

; Function Attrs: optsize
declare i32 @CCTK_Info(i8*, i8*) #3

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) #2

; Function Attrs: optsize
declare i8* @CCTK_GHExtension(%struct.cGH*, i8*) #3

; Function Attrs: nounwind optsize ssp uwtable
define void @PUGH_PrintStorageReport(%struct.cGH* nocapture readonly %GH) #1 {
  tail call void @llvm.dbg.value(metadata %struct.cGH* %GH, i64 0, metadata !209, metadata !295), !dbg !382
  %1 = load i32* getelementptr inbounds (%struct.anon.0* @pughpriv_, i64 0, i32 42), align 4, !dbg !383, !tbaa !384
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !264, metadata !295), !dbg !383
  %2 = icmp sgt i32 %1, 0, !dbg !386
  br i1 %2, label %3, label %9, !dbg !388

; <label>:3                                       ; preds = %0
  %4 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 1, !dbg !389
  %5 = load i32* %4, align 4, !dbg !389, !tbaa !390
  %6 = srem i32 %5, %1, !dbg !391
  %7 = icmp eq i32 %6, 0, !dbg !392
  br i1 %7, label %8, label %9, !dbg !393

; <label>:8                                       ; preds = %3
  tail call void @PUGHi_PrintStorageReport() #7, !dbg !394
  br label %9, !dbg !396

; <label>:9                                       ; preds = %8, %3, %0
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !271, metadata !295), !dbg !383
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !271, metadata !295), !dbg !383
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !271, metadata !295), !dbg !383
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !271, metadata !295), !dbg !383
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !271, metadata !295), !dbg !383
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !271, metadata !295), !dbg !383
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !271, metadata !295), !dbg !383
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !271, metadata !295), !dbg !383
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !271, metadata !295), !dbg !383
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !271, metadata !295), !dbg !383
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !271, metadata !295), !dbg !383
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !271, metadata !295), !dbg !383
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !271, metadata !295), !dbg !383
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !271, metadata !295), !dbg !383
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !271, metadata !295), !dbg !383
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !271, metadata !295), !dbg !383
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !271, metadata !295), !dbg !383
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !271, metadata !295), !dbg !383
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !271, metadata !295), !dbg !383
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !271, metadata !295), !dbg !383
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !271, metadata !295), !dbg !383
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !271, metadata !295), !dbg !383
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !271, metadata !295), !dbg !383
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !271, metadata !295), !dbg !383
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !271, metadata !295), !dbg !383
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !271, metadata !295), !dbg !383
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !271, metadata !295), !dbg !383
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !271, metadata !295), !dbg !383
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !271, metadata !295), !dbg !383
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !271, metadata !295), !dbg !383
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !271, metadata !295), !dbg !383
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !271, metadata !295), !dbg !383
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !271, metadata !295), !dbg !383
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !271, metadata !295), !dbg !383
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !271, metadata !295), !dbg !383
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !271, metadata !295), !dbg !383
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !271, metadata !295), !dbg !383
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !271, metadata !295), !dbg !383
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !271, metadata !295), !dbg !383
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !271, metadata !295), !dbg !383
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !271, metadata !295), !dbg !383
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !271, metadata !295), !dbg !383
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !271, metadata !295), !dbg !383
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !271, metadata !295), !dbg !383
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !271, metadata !295), !dbg !383
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !271, metadata !295), !dbg !383
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !271, metadata !295), !dbg !383
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !271, metadata !295), !dbg !383
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !271, metadata !295), !dbg !383
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !271, metadata !295), !dbg !383
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !271, metadata !295), !dbg !383
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !271, metadata !295), !dbg !383
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !271, metadata !295), !dbg !383
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !271, metadata !295), !dbg !383
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !271, metadata !295), !dbg !383
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !271, metadata !295), !dbg !383
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !271, metadata !295), !dbg !383
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !271, metadata !295), !dbg !383
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !271, metadata !295), !dbg !383
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !271, metadata !295), !dbg !383
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !271, metadata !295), !dbg !383
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !271, metadata !295), !dbg !383
  ret void, !dbg !397
}

; Function Attrs: optsize
declare void @PUGHi_PrintStorageReport() #3

; Function Attrs: nounwind optsize ssp uwtable
define void @PUGH_PrintFinalStorageReport(%struct.cGH* nocapture readnone %GH) #1 {
  tail call void @llvm.dbg.value(metadata %struct.cGH* %GH, i64 0, metadata !274, metadata !295), !dbg !398
  tail call void @llvm.dbg.value(metadata %struct.cGH* %GH, i64 0, metadata !274, metadata !295), !dbg !398
  tail call void @PUGHi_PrintStorageReport() #7, !dbg !399
  ret void, !dbg !400
}

; Function Attrs: nounwind optsize ssp uwtable
define void @PUGH_PrintStorage(%struct.cGH* %GH) #1 {
  tail call void @llvm.dbg.value(metadata %struct.cGH* %GH, i64 0, metadata !277, metadata !295), !dbg !401
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !282, metadata !295), !dbg !402
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !283, metadata !295), !dbg !403
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !284, metadata !295), !dbg !404
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !279, metadata !295), !dbg !405
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !280, metadata !295), !dbg !406
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !281, metadata !295), !dbg !407
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !278, metadata !295), !dbg !408
  %1 = tail call i32 @CCTK_NumGroups() #7, !dbg !409
  %2 = icmp sgt i32 %1, 0, !dbg !412
  br i1 %2, label %.lr.ph10, label %.thread19, !dbg !413

.lr.ph10:                                         ; preds = %0, %35
  %countscalar.08 = phi i32 [ %countscalar.1, %35 ], [ 0, %0 ]
  %countarray.07 = phi i32 [ %countarray.1, %35 ], [ 0, %0 ]
  %countgf.06 = phi i32 [ %countgf.1, %35 ], [ 0, %0 ]
  %i.05 = phi i32 [ %36, %35 ], [ 0, %0 ]
  %3 = tail call i32 @PUGH_QueryGroupStorage(%struct.cGH* %GH, i32 %i.05, i8* null) #7, !dbg !414
  %4 = icmp eq i32 %3, 0, !dbg !414
  br i1 %4, label %35, label %5, !dbg !417

; <label>:5                                       ; preds = %.lr.ph10
  %6 = tail call i32 @CCTK_GroupTypeI(i32 %i.05) #7, !dbg !418
  %7 = icmp eq i32 %6, 2, !dbg !421
  br i1 %7, label %8, label %15, !dbg !422

; <label>:8                                       ; preds = %5
  %9 = tail call i8* @CCTK_GroupName(i32 %i.05) #7, !dbg !423
  %10 = tail call i64 @strlen(i8* %9) #7, !dbg !425
  %11 = zext i32 %countgf.06 to i64, !dbg !426
  %12 = add nuw nsw i64 %11, 1, !dbg !427
  %13 = add i64 %12, %10, !dbg !426
  %14 = trunc i64 %13 to i32, !dbg !426
  tail call void @llvm.dbg.value(metadata i32 %14, i64 0, metadata !279, metadata !295), !dbg !405
  br label %35, !dbg !428

; <label>:15                                      ; preds = %5
  %16 = tail call i32 @CCTK_GroupTypeI(i32 %i.05) #7, !dbg !429
  %17 = icmp eq i32 %16, 3, !dbg !431
  br i1 %17, label %18, label %25, !dbg !432

; <label>:18                                      ; preds = %15
  %19 = tail call i8* @CCTK_GroupName(i32 %i.05) #7, !dbg !433
  %20 = tail call i64 @strlen(i8* %19) #7, !dbg !435
  %21 = zext i32 %countarray.07 to i64, !dbg !436
  %22 = add nuw nsw i64 %21, 1, !dbg !437
  %23 = add i64 %22, %20, !dbg !436
  %24 = trunc i64 %23 to i32, !dbg !436
  tail call void @llvm.dbg.value(metadata i32 %24, i64 0, metadata !280, metadata !295), !dbg !406
  br label %35, !dbg !438

; <label>:25                                      ; preds = %15
  %26 = tail call i32 @CCTK_GroupTypeI(i32 %i.05) #7, !dbg !439
  %27 = icmp eq i32 %26, 1, !dbg !441
  br i1 %27, label %28, label %35, !dbg !442

; <label>:28                                      ; preds = %25
  %29 = tail call i8* @CCTK_GroupName(i32 %i.05) #7, !dbg !443
  %30 = tail call i64 @strlen(i8* %29) #7, !dbg !445
  %31 = zext i32 %countscalar.08 to i64, !dbg !446
  %32 = add nuw nsw i64 %31, 1, !dbg !447
  %33 = add i64 %32, %30, !dbg !446
  %34 = trunc i64 %33 to i32, !dbg !446
  tail call void @llvm.dbg.value(metadata i32 %34, i64 0, metadata !281, metadata !295), !dbg !407
  br label %35, !dbg !448

; <label>:35                                      ; preds = %.lr.ph10, %18, %28, %25, %8
  %countgf.1 = phi i32 [ %14, %8 ], [ %countgf.06, %18 ], [ %countgf.06, %28 ], [ %countgf.06, %25 ], [ %countgf.06, %.lr.ph10 ]
  %countarray.1 = phi i32 [ %countarray.07, %8 ], [ %24, %18 ], [ %countarray.07, %28 ], [ %countarray.07, %25 ], [ %countarray.07, %.lr.ph10 ]
  %countscalar.1 = phi i32 [ %countscalar.08, %8 ], [ %countscalar.08, %18 ], [ %34, %28 ], [ %countscalar.08, %25 ], [ %countscalar.08, %.lr.ph10 ]
  %36 = add nuw nsw i32 %i.05, 1, !dbg !449
  tail call void @llvm.dbg.value(metadata i32 %36, i64 0, metadata !278, metadata !295), !dbg !408
  %37 = tail call i32 @CCTK_NumGroups() #7, !dbg !409
  %38 = icmp slt i32 %36, %37, !dbg !412
  br i1 %38, label %.lr.ph10, label %._crit_edge11, !dbg !413

._crit_edge11:                                    ; preds = %35
  %39 = icmp eq i32 %countgf.1, 0, !dbg !450
  br i1 %39, label %46, label %40, !dbg !452

; <label>:40                                      ; preds = %._crit_edge11
  %41 = add nsw i32 %countgf.1, 1, !dbg !453
  %42 = sext i32 %41 to i64, !dbg !455
  %43 = tail call i8* @malloc(i64 %42) #7, !dbg !456
  tail call void @llvm.dbg.value(metadata i8* %43, i64 0, metadata !282, metadata !295), !dbg !402
  %44 = tail call i64 @llvm.objectsize.i64.p0i8(i8* %43, i1 false), !dbg !457
  %45 = tail call i8* @__memcpy_chk(i8* %43, i8* getelementptr inbounds ([1 x i8]* @.str5, i64 0, i64 0), i64 1, i64 %44), !dbg !457
  br label %46, !dbg !458

; <label>:46                                      ; preds = %._crit_edge11, %40
  %messgf.0 = phi i8* [ %43, %40 ], [ null, %._crit_edge11 ]
  %47 = icmp eq i32 %countarray.1, 0, !dbg !459
  br i1 %47, label %54, label %48, !dbg !461

; <label>:48                                      ; preds = %46
  %49 = add nsw i32 %countarray.1, 100, !dbg !462
  %50 = sext i32 %49 to i64, !dbg !464
  %51 = tail call i8* @malloc(i64 %50) #7, !dbg !465
  tail call void @llvm.dbg.value(metadata i8* %51, i64 0, metadata !283, metadata !295), !dbg !403
  %52 = tail call i64 @llvm.objectsize.i64.p0i8(i8* %51, i1 false), !dbg !466
  %53 = tail call i8* @__memcpy_chk(i8* %51, i8* getelementptr inbounds ([1 x i8]* @.str5, i64 0, i64 0), i64 1, i64 %52), !dbg !466
  br label %54, !dbg !467

; <label>:54                                      ; preds = %46, %48
  %messarray.0 = phi i8* [ %51, %48 ], [ null, %46 ]
  %55 = icmp eq i32 %countscalar.1, 0, !dbg !468
  br i1 %55, label %.thread19, label %56, !dbg !470

; <label>:56                                      ; preds = %54
  %57 = add nsw i32 %countscalar.1, 100, !dbg !471
  %58 = sext i32 %57 to i64, !dbg !473
  %59 = tail call i8* @malloc(i64 %58) #7, !dbg !474
  tail call void @llvm.dbg.value(metadata i8* %59, i64 0, metadata !284, metadata !295), !dbg !404
  %60 = tail call i64 @llvm.objectsize.i64.p0i8(i8* %59, i1 false), !dbg !475
  %61 = tail call i8* @__memcpy_chk(i8* %59, i8* getelementptr inbounds ([1 x i8]* @.str5, i64 0, i64 0), i64 1, i64 %60), !dbg !475
  br label %.thread19, !dbg !476

.thread19:                                        ; preds = %0, %54, %56
  %messarray.021 = phi i8* [ %messarray.0, %56 ], [ %messarray.0, %54 ], [ null, %0 ]
  %messgf.01720 = phi i8* [ %messgf.0, %56 ], [ %messgf.0, %54 ], [ null, %0 ]
  %messscalar.0 = phi i8* [ %59, %56 ], [ null, %54 ], [ null, %0 ]
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !278, metadata !295), !dbg !408
  %62 = tail call i32 @CCTK_NumGroups() #7, !dbg !477
  %63 = icmp sgt i32 %62, 0, !dbg !480
  br i1 %63, label %.lr.ph, label %._crit_edge, !dbg !481

.lr.ph:                                           ; preds = %.thread19
  %64 = tail call i64 @llvm.objectsize.i64.p0i8(i8* %messgf.01720, i1 false), !dbg !482
  %65 = tail call i64 @llvm.objectsize.i64.p0i8(i8* %messarray.021, i1 false), !dbg !488
  %66 = tail call i64 @llvm.objectsize.i64.p0i8(i8* %messscalar.0, i1 false), !dbg !491
  br label %67, !dbg !481

; <label>:67                                      ; preds = %.lr.ph, %88
  %i.14 = phi i32 [ 0, %.lr.ph ], [ %89, %88 ]
  %68 = tail call i32 @PUGH_QueryGroupStorage(%struct.cGH* %GH, i32 %i.14, i8* null) #7, !dbg !494
  %69 = icmp eq i32 %68, 0, !dbg !494
  br i1 %69, label %88, label %70, !dbg !495

; <label>:70                                      ; preds = %67
  %71 = tail call i32 @CCTK_GroupTypeI(i32 %i.14) #7, !dbg !496
  %72 = icmp eq i32 %71, 2, !dbg !497
  br i1 %72, label %73, label %76, !dbg !498

; <label>:73                                      ; preds = %70
  %74 = tail call i8* @CCTK_GroupName(i32 %i.14) #7, !dbg !482
  %75 = tail call i32 (i8*, i32, i64, i8*, ...)* @__sprintf_chk(i8* %messgf.01720, i32 0, i64 %64, i8* getelementptr inbounds ([6 x i8]* @.str6, i64 0, i64 0), i8* %messgf.01720, i8* %74) #7, !dbg !482
  br label %88, !dbg !499

; <label>:76                                      ; preds = %70
  %77 = tail call i32 @CCTK_GroupTypeI(i32 %i.14) #7, !dbg !500
  %78 = icmp eq i32 %77, 3, !dbg !501
  br i1 %78, label %79, label %82, !dbg !502

; <label>:79                                      ; preds = %76
  %80 = tail call i8* @CCTK_GroupName(i32 %i.14) #7, !dbg !488
  %81 = tail call i32 (i8*, i32, i64, i8*, ...)* @__sprintf_chk(i8* %messarray.021, i32 0, i64 %65, i8* getelementptr inbounds ([6 x i8]* @.str6, i64 0, i64 0), i8* %messarray.021, i8* %80) #7, !dbg !488
  br label %88, !dbg !503

; <label>:82                                      ; preds = %76
  %83 = tail call i32 @CCTK_GroupTypeI(i32 %i.14) #7, !dbg !504
  %84 = icmp eq i32 %83, 1, !dbg !505
  br i1 %84, label %85, label %88, !dbg !506

; <label>:85                                      ; preds = %82
  %86 = tail call i8* @CCTK_GroupName(i32 %i.14) #7, !dbg !491
  %87 = tail call i32 (i8*, i32, i64, i8*, ...)* @__sprintf_chk(i8* %messscalar.0, i32 0, i64 %66, i8* getelementptr inbounds ([6 x i8]* @.str6, i64 0, i64 0), i8* %messscalar.0, i8* %86) #7, !dbg !491
  br label %88, !dbg !507

; <label>:88                                      ; preds = %67, %79, %85, %82, %73
  %89 = add nuw nsw i32 %i.14, 1, !dbg !508
  tail call void @llvm.dbg.value(metadata i32 %89, i64 0, metadata !278, metadata !295), !dbg !408
  %90 = tail call i32 @CCTK_NumGroups() #7, !dbg !477
  %91 = icmp slt i32 %89, %90, !dbg !480
  br i1 %91, label %67, label %._crit_edge, !dbg !481

._crit_edge:                                      ; preds = %88, %.thread19
  %92 = icmp ne i8* %messgf.01720, null, !dbg !509
  %93 = icmp ne i8* %messarray.021, null, !dbg !511
  %or.cond = or i1 %92, %93, !dbg !512
  %94 = icmp ne i8* %messscalar.0, null, !dbg !513
  %or.cond3 = or i1 %or.cond, %94, !dbg !512
  br i1 %or.cond3, label %95, label %105, !dbg !512

; <label>:95                                      ; preds = %._crit_edge
  %96 = tail call i32 (i8*, i8*, ...)* @CCTK_VInfo(i8* getelementptr inbounds ([5 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([37 x i8]* @.str7, i64 0, i64 0)) #7, !dbg !514
  br i1 %92, label %97, label %99, !dbg !516

; <label>:97                                      ; preds = %95
  %98 = tail call i32 (i8*, i8*, ...)* @CCTK_VInfo(i8* getelementptr inbounds ([5 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([20 x i8]* @.str8, i64 0, i64 0), i8* %messgf.01720) #7, !dbg !517
  br label %99, !dbg !520

; <label>:99                                      ; preds = %97, %95
  br i1 %93, label %100, label %102, !dbg !521

; <label>:100                                     ; preds = %99
  %101 = tail call i32 (i8*, i8*, ...)* @CCTK_VInfo(i8* getelementptr inbounds ([5 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8]* @.str9, i64 0, i64 0), i8* %messarray.021) #7, !dbg !522
  br label %102, !dbg !525

; <label>:102                                     ; preds = %100, %99
  br i1 %94, label %103, label %105, !dbg !526

; <label>:103                                     ; preds = %102
  %104 = tail call i32 (i8*, i8*, ...)* @CCTK_VInfo(i8* getelementptr inbounds ([5 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8]* @.str10, i64 0, i64 0), i8* %messscalar.0) #7, !dbg !527
  br label %105, !dbg !530

; <label>:105                                     ; preds = %102, %103, %._crit_edge
  br i1 %92, label %106, label %107, !dbg !531

; <label>:106                                     ; preds = %105
  tail call void @free(i8* %messgf.01720) #8, !dbg !532
  br label %107, !dbg !532

; <label>:107                                     ; preds = %106, %105
  br i1 %93, label %108, label %109, !dbg !534

; <label>:108                                     ; preds = %107
  tail call void @free(i8* %messarray.021) #8, !dbg !535
  br label %109, !dbg !535

; <label>:109                                     ; preds = %108, %107
  br i1 %94, label %110, label %111, !dbg !537

; <label>:110                                     ; preds = %109
  tail call void @free(i8* %messscalar.0) #8, !dbg !538
  br label %111, !dbg !538

; <label>:111                                     ; preds = %110, %109
  ret void, !dbg !540
}

; Function Attrs: optsize
declare i32 @PUGH_QueryGroupStorage(%struct.cGH*, i32, i8*) #3

; Function Attrs: nounwind optsize readonly
declare i64 @strlen(i8* nocapture) #5

; Function Attrs: optsize
declare i8* @CCTK_GroupName(i32) #3

; Function Attrs: nounwind optsize ssp uwtable
define void @pugh_printstorage_(%struct.cGH* %GH) #1 {
  tail call void @llvm.dbg.value(metadata %struct.cGH* %GH, i64 0, metadata !287, metadata !295), !dbg !541
  tail call void @PUGH_PrintStorage(%struct.cGH* %GH) #8, !dbg !542
  ret void, !dbg !543
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #4

; Function Attrs: nounwind
declare i8* @__memcpy_chk(i8*, i8*, i64, i64) #6

attributes #0 = { nounwind optsize readnone ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone }
attributes #5 = { nounwind optsize readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }
attributes #7 = { nounwind optsize }
attributes #8 = { optsize }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!290, !291, !292}
!llvm.ident = !{!293}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !3, subprograms: !78, globals: !288, imports: !2)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/PUGH/PughUtils.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{}
!3 = !{!4, !6, !8}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64, align: 64)
!5 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64, align: 64)
!7 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!8 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64, align: 64)
!9 = !DIDerivedType(tag: DW_TAG_typedef, name: "pGH", file: !10, line: 81, baseType: !11)
!10 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/PUGH/../include/pGH.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!11 = !DICompositeType(tag: DW_TAG_structure_type, name: "PGH", file: !10, line: 13, size: 1152, align: 64, elements: !12)
!12 = !{!13, !15, !16, !17, !18, !19, !20, !21, !24, !25, !26, !27, !28, !30, !31, !32, !33, !34, !35, !36, !37, !38, !67, !77}
!13 = !DIDerivedType(tag: DW_TAG_member, name: "callerid", scope: !11, file: !10, line: 17, baseType: !14, size: 64, align: 64)
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!15 = !DIDerivedType(tag: DW_TAG_member, name: "dim", scope: !11, file: !10, line: 18, baseType: !5, size: 32, align: 32, offset: 64)
!16 = !DIDerivedType(tag: DW_TAG_member, name: "nprocs", scope: !11, file: !10, line: 21, baseType: !5, size: 32, align: 32, offset: 96)
!17 = !DIDerivedType(tag: DW_TAG_member, name: "myproc", scope: !11, file: !10, line: 22, baseType: !5, size: 32, align: 32, offset: 128)
!18 = !DIDerivedType(tag: DW_TAG_member, name: "commmodel", scope: !11, file: !10, line: 23, baseType: !5, size: 32, align: 32, offset: 160)
!19 = !DIDerivedType(tag: DW_TAG_member, name: "nvariables", scope: !11, file: !10, line: 27, baseType: !5, size: 32, align: 32, offset: 192)
!20 = !DIDerivedType(tag: DW_TAG_member, name: "narrays", scope: !11, file: !10, line: 28, baseType: !5, size: 32, align: 32, offset: 224)
!21 = !DIDerivedType(tag: DW_TAG_member, name: "variables", scope: !11, file: !10, line: 29, baseType: !22, size: 64, align: 64, offset: 256)
!22 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64, align: 64)
!23 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64, align: 64)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "timelevel", scope: !11, file: !10, line: 32, baseType: !5, size: 32, align: 32, offset: 320)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "perme", scope: !11, file: !10, line: 34, baseType: !4, size: 64, align: 64, offset: 384)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "periodic", scope: !11, file: !10, line: 35, baseType: !5, size: 32, align: 32, offset: 448)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "forceSync", scope: !11, file: !10, line: 37, baseType: !5, size: 32, align: 32, offset: 480)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "dx0", scope: !11, file: !10, line: 41, baseType: !29, size: 64, align: 64, offset: 512)
!29 = !DIBasicType(name: "double", size: 64, align: 64, encoding: DW_ATE_float)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "dy0", scope: !11, file: !10, line: 41, baseType: !29, size: 64, align: 64, offset: 576)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "dz0", scope: !11, file: !10, line: 41, baseType: !29, size: 64, align: 64, offset: 640)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "dt0", scope: !11, file: !10, line: 41, baseType: !29, size: 64, align: 64, offset: 704)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !11, file: !10, line: 44, baseType: !5, size: 32, align: 32, offset: 768)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "mglevel", scope: !11, file: !10, line: 45, baseType: !5, size: 32, align: 32, offset: 800)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "convlevel", scope: !11, file: !10, line: 46, baseType: !5, size: 32, align: 32, offset: 832)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !11, file: !10, line: 49, baseType: !5, size: 32, align: 32, offset: 864)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "comm_time", scope: !11, file: !10, line: 53, baseType: !5, size: 32, align: 32, offset: 896)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "GFExtras", scope: !11, file: !10, line: 76, baseType: !39, size: 64, align: 64, offset: 960)
!39 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !40, size: 64, align: 64)
!40 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !41, size: 64, align: 64)
!41 = !DIDerivedType(tag: DW_TAG_typedef, name: "pGExtras", file: !42, line: 72, baseType: !43)
!42 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/PUGH/../include/pGV.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!43 = !DICompositeType(tag: DW_TAG_structure_type, name: "PGExtras", file: !42, line: 37, size: 2368, align: 64, elements: !44)
!44 = !{!45, !46, !47, !48, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !64, !66}
!45 = !DIDerivedType(tag: DW_TAG_member, name: "dim", scope: !43, file: !42, line: 39, baseType: !5, size: 32, align: 32)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "nsize", scope: !43, file: !42, line: 41, baseType: !4, size: 64, align: 64, offset: 64)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "maxskew", scope: !43, file: !42, line: 44, baseType: !29, size: 64, align: 64, offset: 128)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "lb", scope: !43, file: !42, line: 45, baseType: !49, size: 64, align: 64, offset: 192)
!49 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64, align: 64)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "ub", scope: !43, file: !42, line: 46, baseType: !49, size: 64, align: 64, offset: 256)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "bbox", scope: !43, file: !42, line: 47, baseType: !4, size: 64, align: 64, offset: 320)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "lnsize", scope: !43, file: !42, line: 49, baseType: !4, size: 64, align: 64, offset: 384)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "npoints", scope: !43, file: !42, line: 50, baseType: !5, size: 32, align: 32, offset: 448)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "rnpoints", scope: !43, file: !42, line: 51, baseType: !4, size: 64, align: 64, offset: 512)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "rnsize", scope: !43, file: !42, line: 52, baseType: !49, size: 64, align: 64, offset: 576)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "iterator", scope: !43, file: !42, line: 55, baseType: !4, size: 64, align: 64, offset: 640)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "hyper_volume", scope: !43, file: !42, line: 56, baseType: !4, size: 64, align: 64, offset: 704)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "nghostzones", scope: !43, file: !42, line: 59, baseType: !4, size: 64, align: 64, offset: 768)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "ownership", scope: !43, file: !42, line: 60, baseType: !60, size: 512, align: 64, offset: 832)
!60 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 512, align: 64, elements: !61)
!61 = !{!62, !63}
!62 = !DISubrange(count: 4)
!63 = !DISubrange(count: 2)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "ghosts", scope: !43, file: !42, line: 64, baseType: !65, size: 512, align: 64, offset: 1344)
!65 = !DICompositeType(tag: DW_TAG_array_type, baseType: !49, size: 512, align: 64, elements: !61)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "overlap", scope: !43, file: !42, line: 68, baseType: !65, size: 512, align: 64, offset: 1856)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "Connectivity", scope: !11, file: !10, line: 77, baseType: !68, size: 64, align: 64, offset: 1024)
!68 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !69, size: 64, align: 64)
!69 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !70, size: 64, align: 64)
!70 = !DIDerivedType(tag: DW_TAG_typedef, name: "pConnectivity", file: !42, line: 29, baseType: !71)
!71 = !DICompositeType(tag: DW_TAG_structure_type, name: "PConnectivity", file: !42, line: 23, size: 256, align: 64, elements: !72)
!72 = !{!73, !74, !75, !76}
!73 = !DIDerivedType(tag: DW_TAG_member, name: "dim", scope: !71, file: !42, line: 25, baseType: !5, size: 32, align: 32)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "nprocs", scope: !71, file: !42, line: 26, baseType: !4, size: 64, align: 64, offset: 64)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "neighbours", scope: !71, file: !42, line: 27, baseType: !49, size: 64, align: 64, offset: 128)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "perme", scope: !71, file: !42, line: 28, baseType: !4, size: 64, align: 64, offset: 192)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "identity_string", scope: !11, file: !10, line: 79, baseType: !6, size: 64, align: 64, offset: 1088)
!78 = !{!79, !84, !126, !202, !207, !272, !275, !285}
!79 = !DISubprogram(name: "CCTKi_version_CactusPUGH_PUGH_PughUtils_c", scope: !1, file: !1, line: 24, type: !80, isLocal: false, isDefinition: true, scopeLine: 24, flags: DIFlagPrototyped, isOptimized: true, function: i8* ()* @CCTKi_version_CactusPUGH_PUGH_PughUtils_c, variables: !2)
!80 = !DISubroutineType(types: !81)
!81 = !{!82}
!82 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !83, size: 64, align: 64)
!83 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!84 = !DISubprogram(name: "PUGH_Topology", scope: !1, file: !1, line: 57, type: !85, isLocal: false, isDefinition: true, scopeLine: 58, flags: DIFlagPrototyped, isOptimized: true, function: i32* (%struct.cGH*, i32)* @PUGH_Topology, variables: !122)
!85 = !DISubroutineType(types: !86)
!86 = !{!87, !89, !5}
!87 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !88, size: 64, align: 64)
!88 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5)
!89 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !90, size: 64, align: 64)
!90 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !91)
!91 = !DIDerivedType(tag: DW_TAG_typedef, name: "cGH", file: !92, line: 75, baseType: !93)
!92 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/PUGH/../include/cGH.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!93 = !DICompositeType(tag: DW_TAG_structure_type, file: !92, line: 24, size: 1216, align: 64, elements: !94)
!94 = !{!95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !107, !108, !109, !110, !111, !112, !113, !114, !115}
!95 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_dim", scope: !93, file: !92, line: 26, baseType: !5, size: 32, align: 32)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_iteration", scope: !93, file: !92, line: 27, baseType: !5, size: 32, align: 32, offset: 32)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_gsh", scope: !93, file: !92, line: 30, baseType: !4, size: 64, align: 64, offset: 64)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_lsh", scope: !93, file: !92, line: 31, baseType: !4, size: 64, align: 64, offset: 128)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_lbnd", scope: !93, file: !92, line: 32, baseType: !4, size: 64, align: 64, offset: 192)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_ubnd", scope: !93, file: !92, line: 33, baseType: !4, size: 64, align: 64, offset: 256)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_lssh", scope: !93, file: !92, line: 36, baseType: !4, size: 64, align: 64, offset: 320)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_to", scope: !93, file: !92, line: 39, baseType: !4, size: 64, align: 64, offset: 384)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_from", scope: !93, file: !92, line: 40, baseType: !4, size: 64, align: 64, offset: 448)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_delta_time", scope: !93, file: !92, line: 43, baseType: !29, size: 64, align: 64, offset: 512)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_delta_space", scope: !93, file: !92, line: 44, baseType: !106, size: 64, align: 64, offset: 576)
!106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64, align: 64)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_origin_space", scope: !93, file: !92, line: 47, baseType: !106, size: 64, align: 64, offset: 640)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_bbox", scope: !93, file: !92, line: 51, baseType: !4, size: 64, align: 64, offset: 704)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_levfac", scope: !93, file: !92, line: 54, baseType: !4, size: 64, align: 64, offset: 768)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_convlevel", scope: !93, file: !92, line: 57, baseType: !5, size: 32, align: 32, offset: 832)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_nghostzones", scope: !93, file: !92, line: 60, baseType: !4, size: 64, align: 64, offset: 896)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_time", scope: !93, file: !92, line: 63, baseType: !29, size: 64, align: 64, offset: 960)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !93, file: !92, line: 67, baseType: !22, size: 64, align: 64, offset: 1024)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "extensions", scope: !93, file: !92, line: 70, baseType: !23, size: 64, align: 64, offset: 1088)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "GroupData", scope: !93, file: !92, line: 73, baseType: !116, size: 64, align: 64, offset: 1152)
!116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !117, size: 64, align: 64)
!117 = !DIDerivedType(tag: DW_TAG_typedef, name: "cGHGroupData", file: !92, line: 22, baseType: !118)
!118 = !DICompositeType(tag: DW_TAG_structure_type, file: !92, line: 18, size: 16, align: 8, elements: !119)
!119 = !{!120, !121}
!120 = !DIDerivedType(tag: DW_TAG_member, name: "storage", scope: !118, file: !92, line: 20, baseType: !7, size: 8, align: 8)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !118, file: !92, line: 21, baseType: !7, size: 8, align: 8, offset: 8)
!122 = !{!123, !124, !125}
!123 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "GH", arg: 1, scope: !84, file: !1, line: 57, type: !89)
!124 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "dim", arg: 2, scope: !84, file: !1, line: 57, type: !5)
!125 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "pughGH", scope: !84, file: !1, line: 59, type: !8)
!126 = !DISubprogram(name: "PUGH_Report", scope: !1, file: !1, line: 74, type: !127, isLocal: false, isDefinition: true, scopeLine: 75, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.cGH*)* @PUGH_Report, variables: !129)
!127 = !DISubroutineType(types: !128)
!128 = !{null, !89}
!129 = !{!130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !196, !197, !198, !199}
!130 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "GH", arg: 1, scope: !126, file: !1, line: 74, type: !89)
!131 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "pughGH", scope: !126, file: !1, line: 76, type: !8)
!132 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !126, file: !1, line: 77, type: !5)
!133 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "gi", scope: !126, file: !1, line: 77, type: !5)
!134 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "dim", scope: !126, file: !1, line: 77, type: !5)
!135 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "havedims", scope: !126, file: !1, line: 78, type: !4)
!136 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "mess", scope: !126, file: !1, line: 79, type: !6)
!137 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ghost_size", scope: !126, file: !1, line: 83, type: !88)
!138 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ghost_size_x", scope: !126, file: !1, line: 83, type: !88)
!139 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ghost_size_y", scope: !126, file: !1, line: 83, type: !88)
!140 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ghost_size_z", scope: !126, file: !1, line: 83, type: !88)
!141 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "global_nsize", scope: !126, file: !1, line: 83, type: !88)
!142 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "global_nx", scope: !126, file: !1, line: 83, type: !88)
!143 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "global_ny", scope: !126, file: !1, line: 83, type: !88)
!144 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "global_nz", scope: !126, file: !1, line: 83, type: !88)
!145 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "periodic", scope: !126, file: !1, line: 83, type: !88)
!146 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "periodic_x", scope: !126, file: !1, line: 83, type: !88)
!147 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "periodic_y", scope: !126, file: !1, line: 83, type: !88)
!148 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "periodic_z", scope: !126, file: !1, line: 83, type: !88)
!149 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "info", scope: !126, file: !1, line: 83, type: !82)
!150 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "initialize_memory", scope: !126, file: !1, line: 83, type: !82)
!151 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "partition", scope: !126, file: !1, line: 83, type: !82)
!152 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "partition_1d_x", scope: !126, file: !1, line: 83, type: !82)
!153 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "partition_2d_x", scope: !126, file: !1, line: 83, type: !82)
!154 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "partition_2d_y", scope: !126, file: !1, line: 83, type: !82)
!155 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "partition_3d_x", scope: !126, file: !1, line: 83, type: !82)
!156 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "partition_3d_y", scope: !126, file: !1, line: 83, type: !82)
!157 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "partition_3d_z", scope: !126, file: !1, line: 83, type: !82)
!158 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "processor_topology", scope: !126, file: !1, line: 83, type: !82)
!159 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "storage_verbose", scope: !126, file: !1, line: 83, type: !82)
!160 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cacheline_mult", scope: !126, file: !1, line: 83, type: !88)
!161 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "enable_all_storage", scope: !126, file: !1, line: 83, type: !88)
!162 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "local_nsize", scope: !126, file: !1, line: 83, type: !88)
!163 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "local_nx", scope: !126, file: !1, line: 83, type: !88)
!164 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "local_ny", scope: !126, file: !1, line: 83, type: !88)
!165 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "local_nz", scope: !126, file: !1, line: 83, type: !88)
!166 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "overloadabort", scope: !126, file: !1, line: 83, type: !88)
!167 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "overloadarraygroupsizeb", scope: !126, file: !1, line: 83, type: !88)
!168 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "overloadbarrier", scope: !126, file: !1, line: 83, type: !88)
!169 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "overloaddisablegroupcomm", scope: !126, file: !1, line: 83, type: !88)
!170 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "overloaddisablegroupstorage", scope: !126, file: !1, line: 83, type: !88)
!171 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "overloadenablegroupcomm", scope: !126, file: !1, line: 83, type: !88)
!172 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "overloadenablegroupstorage", scope: !126, file: !1, line: 83, type: !88)
!173 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "overloadevolve", scope: !126, file: !1, line: 83, type: !88)
!174 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "overloadexit", scope: !126, file: !1, line: 83, type: !88)
!175 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "overloadgroupdynamicdata", scope: !126, file: !1, line: 83, type: !88)
!176 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "overloadmyproc", scope: !126, file: !1, line: 83, type: !88)
!177 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "overloadnprocs", scope: !126, file: !1, line: 83, type: !88)
!178 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "overloadparallelinit", scope: !126, file: !1, line: 83, type: !88)
!179 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "overloadquerygroupstorageb", scope: !126, file: !1, line: 83, type: !88)
!180 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "overloadsyncgroup", scope: !126, file: !1, line: 83, type: !88)
!181 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "padding_active", scope: !126, file: !1, line: 83, type: !88)
!182 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "padding_address_spacing", scope: !126, file: !1, line: 83, type: !88)
!183 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "padding_cacheline_bits", scope: !126, file: !1, line: 83, type: !88)
!184 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "padding_size", scope: !126, file: !1, line: 83, type: !88)
!185 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "processor_topology_1d_x", scope: !126, file: !1, line: 83, type: !88)
!186 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "processor_topology_2d_x", scope: !126, file: !1, line: 83, type: !88)
!187 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "processor_topology_2d_y", scope: !126, file: !1, line: 83, type: !88)
!188 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "processor_topology_3d_x", scope: !126, file: !1, line: 83, type: !88)
!189 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "processor_topology_3d_y", scope: !126, file: !1, line: 83, type: !88)
!190 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "processor_topology_3d_z", scope: !126, file: !1, line: 83, type: !88)
!191 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "storage_report_every", scope: !126, file: !1, line: 83, type: !88)
!192 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "timer_output", scope: !126, file: !1, line: 83, type: !88)
!193 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "terminate", scope: !126, file: !1, line: 83, type: !82)
!194 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cctk_initial_time", scope: !126, file: !1, line: 83, type: !195)
!195 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !29)
!196 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cctk_final_time", scope: !126, file: !1, line: 83, type: !195)
!197 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cctk_itlast", scope: !126, file: !1, line: 83, type: !88)
!198 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "terminate_next", scope: !126, file: !1, line: 83, type: !88)
!199 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cctk_pdummy_pointer", scope: !126, file: !1, line: 83, type: !200)
!200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !201, size: 64, align: 64)
!201 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!202 = !DISubprogram(name: "PUGH_pGH", scope: !1, file: !1, line: 204, type: !203, isLocal: false, isDefinition: true, scopeLine: 205, flags: DIFlagPrototyped, isOptimized: true, function: %struct.PGH* (%struct.cGH*)* @PUGH_pGH, variables: !205)
!203 = !DISubroutineType(types: !204)
!204 = !{!8, !89}
!205 = !{!206}
!206 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "GH", arg: 1, scope: !202, file: !1, line: 204, type: !89)
!207 = !DISubprogram(name: "PUGH_PrintStorageReport", scope: !1, file: !1, line: 288, type: !127, isLocal: false, isDefinition: true, scopeLine: 289, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.cGH*)* @PUGH_PrintStorageReport, variables: !208)
!208 = !{!209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271}
!209 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "GH", arg: 1, scope: !207, file: !1, line: 288, type: !89)
!210 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ghost_size", scope: !207, file: !1, line: 290, type: !88)
!211 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ghost_size_x", scope: !207, file: !1, line: 290, type: !88)
!212 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ghost_size_y", scope: !207, file: !1, line: 290, type: !88)
!213 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ghost_size_z", scope: !207, file: !1, line: 290, type: !88)
!214 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "global_nsize", scope: !207, file: !1, line: 290, type: !88)
!215 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "global_nx", scope: !207, file: !1, line: 290, type: !88)
!216 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "global_ny", scope: !207, file: !1, line: 290, type: !88)
!217 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "global_nz", scope: !207, file: !1, line: 290, type: !88)
!218 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "periodic", scope: !207, file: !1, line: 290, type: !88)
!219 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "periodic_x", scope: !207, file: !1, line: 290, type: !88)
!220 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "periodic_y", scope: !207, file: !1, line: 290, type: !88)
!221 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "periodic_z", scope: !207, file: !1, line: 290, type: !88)
!222 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "info", scope: !207, file: !1, line: 290, type: !82)
!223 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "initialize_memory", scope: !207, file: !1, line: 290, type: !82)
!224 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "partition", scope: !207, file: !1, line: 290, type: !82)
!225 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "partition_1d_x", scope: !207, file: !1, line: 290, type: !82)
!226 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "partition_2d_x", scope: !207, file: !1, line: 290, type: !82)
!227 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "partition_2d_y", scope: !207, file: !1, line: 290, type: !82)
!228 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "partition_3d_x", scope: !207, file: !1, line: 290, type: !82)
!229 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "partition_3d_y", scope: !207, file: !1, line: 290, type: !82)
!230 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "partition_3d_z", scope: !207, file: !1, line: 290, type: !82)
!231 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "processor_topology", scope: !207, file: !1, line: 290, type: !82)
!232 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "storage_verbose", scope: !207, file: !1, line: 290, type: !82)
!233 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cacheline_mult", scope: !207, file: !1, line: 290, type: !88)
!234 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "enable_all_storage", scope: !207, file: !1, line: 290, type: !88)
!235 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "local_nsize", scope: !207, file: !1, line: 290, type: !88)
!236 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "local_nx", scope: !207, file: !1, line: 290, type: !88)
!237 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "local_ny", scope: !207, file: !1, line: 290, type: !88)
!238 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "local_nz", scope: !207, file: !1, line: 290, type: !88)
!239 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "overloadabort", scope: !207, file: !1, line: 290, type: !88)
!240 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "overloadarraygroupsizeb", scope: !207, file: !1, line: 290, type: !88)
!241 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "overloadbarrier", scope: !207, file: !1, line: 290, type: !88)
!242 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "overloaddisablegroupcomm", scope: !207, file: !1, line: 290, type: !88)
!243 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "overloaddisablegroupstorage", scope: !207, file: !1, line: 290, type: !88)
!244 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "overloadenablegroupcomm", scope: !207, file: !1, line: 290, type: !88)
!245 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "overloadenablegroupstorage", scope: !207, file: !1, line: 290, type: !88)
!246 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "overloadevolve", scope: !207, file: !1, line: 290, type: !88)
!247 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "overloadexit", scope: !207, file: !1, line: 290, type: !88)
!248 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "overloadgroupdynamicdata", scope: !207, file: !1, line: 290, type: !88)
!249 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "overloadmyproc", scope: !207, file: !1, line: 290, type: !88)
!250 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "overloadnprocs", scope: !207, file: !1, line: 290, type: !88)
!251 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "overloadparallelinit", scope: !207, file: !1, line: 290, type: !88)
!252 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "overloadquerygroupstorageb", scope: !207, file: !1, line: 290, type: !88)
!253 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "overloadsyncgroup", scope: !207, file: !1, line: 290, type: !88)
!254 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "padding_active", scope: !207, file: !1, line: 290, type: !88)
!255 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "padding_address_spacing", scope: !207, file: !1, line: 290, type: !88)
!256 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "padding_cacheline_bits", scope: !207, file: !1, line: 290, type: !88)
!257 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "padding_size", scope: !207, file: !1, line: 290, type: !88)
!258 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "processor_topology_1d_x", scope: !207, file: !1, line: 290, type: !88)
!259 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "processor_topology_2d_x", scope: !207, file: !1, line: 290, type: !88)
!260 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "processor_topology_2d_y", scope: !207, file: !1, line: 290, type: !88)
!261 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "processor_topology_3d_x", scope: !207, file: !1, line: 290, type: !88)
!262 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "processor_topology_3d_y", scope: !207, file: !1, line: 290, type: !88)
!263 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "processor_topology_3d_z", scope: !207, file: !1, line: 290, type: !88)
!264 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "storage_report_every", scope: !207, file: !1, line: 290, type: !88)
!265 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "timer_output", scope: !207, file: !1, line: 290, type: !88)
!266 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "terminate", scope: !207, file: !1, line: 290, type: !82)
!267 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cctk_initial_time", scope: !207, file: !1, line: 290, type: !195)
!268 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cctk_final_time", scope: !207, file: !1, line: 290, type: !195)
!269 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cctk_itlast", scope: !207, file: !1, line: 290, type: !88)
!270 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "terminate_next", scope: !207, file: !1, line: 290, type: !88)
!271 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cctk_pdummy_pointer", scope: !207, file: !1, line: 290, type: !200)
!272 = !DISubprogram(name: "PUGH_PrintFinalStorageReport", scope: !1, file: !1, line: 309, type: !127, isLocal: false, isDefinition: true, scopeLine: 310, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.cGH*)* @PUGH_PrintFinalStorageReport, variables: !273)
!273 = !{!274}
!274 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "GH", arg: 1, scope: !272, file: !1, line: 309, type: !89)
!275 = !DISubprogram(name: "PUGH_PrintStorage", scope: !1, file: !1, line: 324, type: !127, isLocal: false, isDefinition: true, scopeLine: 325, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.cGH*)* @PUGH_PrintStorage, variables: !276)
!276 = !{!277, !278, !279, !280, !281, !282, !283, !284}
!277 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "GH", arg: 1, scope: !275, file: !1, line: 324, type: !89)
!278 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !275, file: !1, line: 326, type: !5)
!279 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "countgf", scope: !275, file: !1, line: 327, type: !5)
!280 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "countarray", scope: !275, file: !1, line: 328, type: !5)
!281 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "countscalar", scope: !275, file: !1, line: 329, type: !5)
!282 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "messgf", scope: !275, file: !1, line: 330, type: !6)
!283 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "messarray", scope: !275, file: !1, line: 331, type: !6)
!284 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "messscalar", scope: !275, file: !1, line: 332, type: !6)
!285 = !DISubprogram(name: "pugh_printstorage_", scope: !1, file: !1, line: 418, type: !127, isLocal: false, isDefinition: true, scopeLine: 420, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.cGH*)* @pugh_printstorage_, variables: !286)
!286 = !{!287}
!287 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "GH", arg: 1, scope: !285, file: !1, line: 419, type: !89)
!288 = !{!289}
!289 = !DIGlobalVariable(name: "rcsid", scope: !0, file: !1, line: 22, type: !82, isLocal: true, isDefinition: true)
!290 = !{i32 2, !"Dwarf Version", i32 2}
!291 = !{i32 2, !"Debug Info Version", i32 700000003}
!292 = !{i32 1, !"PIC Level", i32 2}
!293 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!294 = !DILocation(line: 24, column: 1, scope: !79)
!295 = !DIExpression()
!296 = !DILocation(line: 57, column: 38, scope: !84)
!297 = !DILocation(line: 57, column: 46, scope: !84)
!298 = !DILocation(line: 204, column: 27, scope: !202, inlinedAt: !299)
!299 = distinct !DILocation(line: 61, column: 12, scope: !84)
!300 = !DILocation(line: 206, column: 19, scope: !202, inlinedAt: !299)
!301 = !DILocation(line: 63, column: 34, scope: !84)
!302 = !DILocation(line: 63, column: 10, scope: !84)
!303 = !DILocation(line: 63, column: 18, scope: !84)
!304 = !{!305, !306, i64 128}
!305 = !{!"PGH", !306, i64 0, !309, i64 8, !309, i64 12, !309, i64 16, !309, i64 20, !309, i64 24, !309, i64 28, !306, i64 32, !309, i64 40, !306, i64 48, !309, i64 56, !309, i64 60, !310, i64 64, !310, i64 72, !310, i64 80, !310, i64 88, !309, i64 96, !309, i64 100, !309, i64 104, !309, i64 108, !309, i64 112, !306, i64 120, !306, i64 128, !306, i64 136}
!306 = !{!"any pointer", !307, i64 0}
!307 = !{!"omnipotent char", !308, i64 0}
!308 = !{!"Simple C/C++ TBAA"}
!309 = !{!"int", !307, i64 0}
!310 = !{!"double", !307, i64 0}
!311 = !{!306, !306, i64 0}
!312 = !DILocation(line: 63, column: 39, scope: !84)
!313 = !{!314, !306, i64 8}
!314 = !{!"PConnectivity", !309, i64 0, !306, i64 8, !306, i64 16, !306, i64 24}
!315 = !DILocation(line: 63, column: 3, scope: !84)
!316 = !DILocation(line: 204, column: 27, scope: !202)
!317 = !DILocation(line: 206, column: 19, scope: !202)
!318 = !DILocation(line: 206, column: 11, scope: !202)
!319 = !DILocation(line: 206, column: 3, scope: !202)
!320 = !DILocation(line: 74, column: 30, scope: !126)
!321 = !DILocation(line: 204, column: 27, scope: !202, inlinedAt: !322)
!322 = distinct !DILocation(line: 85, column: 12, scope: !126)
!323 = !DILocation(line: 206, column: 19, scope: !202, inlinedAt: !322)
!324 = !DILocation(line: 87, column: 32, scope: !126)
!325 = !{!326, !309, i64 0}
!326 = !{!"", !309, i64 0, !309, i64 4, !306, i64 8, !306, i64 16, !306, i64 24, !306, i64 32, !306, i64 40, !306, i64 48, !306, i64 56, !310, i64 64, !306, i64 72, !306, i64 80, !306, i64 88, !306, i64 96, !309, i64 104, !306, i64 112, !310, i64 120, !306, i64 128, !306, i64 136, !306, i64 144}
!327 = !DILocation(line: 87, column: 28, scope: !126)
!328 = !DILocation(line: 87, column: 21, scope: !126)
!329 = !DILocation(line: 87, column: 14, scope: !126)
!330 = !DILocation(line: 78, column: 8, scope: !126)
!331 = !DILocation(line: 89, column: 18, scope: !126)
!332 = !DILocation(line: 79, column: 9, scope: !126)
!333 = !DILocation(line: 94, column: 3, scope: !126)
!334 = !DILocation(line: 77, column: 9, scope: !126)
!335 = !DILocation(line: 98, column: 16, scope: !336)
!336 = distinct !DILexicalBlock(scope: !337, file: !1, line: 98, column: 3)
!337 = distinct !DILexicalBlock(scope: !126, file: !1, line: 98, column: 3)
!338 = !DILocation(line: 98, column: 15, scope: !336)
!339 = !DILocation(line: 98, column: 3, scope: !337)
!340 = !DILocation(line: 107, column: 22, scope: !341)
!341 = distinct !DILexicalBlock(scope: !342, file: !1, line: 107, column: 3)
!342 = distinct !DILexicalBlock(scope: !126, file: !1, line: 107, column: 3)
!343 = !DILocation(line: 107, column: 17, scope: !341)
!344 = !DILocation(line: 107, column: 3, scope: !342)
!345 = !DILocation(line: 115, column: 9, scope: !346)
!346 = distinct !DILexicalBlock(scope: !347, file: !1, line: 114, column: 7)
!347 = distinct !DILexicalBlock(scope: !348, file: !1, line: 113, column: 7)
!348 = distinct !DILexicalBlock(scope: !349, file: !1, line: 113, column: 7)
!349 = distinct !DILexicalBlock(scope: !350, file: !1, line: 110, column: 5)
!350 = distinct !DILexicalBlock(scope: !351, file: !1, line: 109, column: 9)
!351 = distinct !DILexicalBlock(scope: !341, file: !1, line: 108, column: 3)
!352 = !DILocation(line: 100, column: 9, scope: !353)
!353 = distinct !DILexicalBlock(scope: !354, file: !1, line: 100, column: 9)
!354 = distinct !DILexicalBlock(scope: !336, file: !1, line: 99, column: 3)
!355 = !DILocation(line: 100, column: 29, scope: !353)
!356 = !DILocation(line: 100, column: 9, scope: !354)
!357 = !DILocation(line: 102, column: 13, scope: !358)
!358 = distinct !DILexicalBlock(scope: !353, file: !1, line: 101, column: 5)
!359 = !DILocation(line: 77, column: 12, scope: !126)
!360 = !DILocation(line: 103, column: 19, scope: !358)
!361 = !DILocation(line: 103, column: 7, scope: !358)
!362 = !DILocation(line: 103, column: 22, scope: !358)
!363 = !{!309, !309, i64 0}
!364 = !DILocation(line: 104, column: 5, scope: !358)
!365 = !DILocation(line: 98, column: 35, scope: !336)
!366 = !DILocation(line: 109, column: 9, scope: !350)
!367 = !DILocation(line: 109, column: 9, scope: !351)
!368 = !DILocation(line: 111, column: 7, scope: !349)
!369 = !DILocation(line: 112, column: 7, scope: !349)
!370 = !DILocation(line: 77, column: 7, scope: !126)
!371 = !DILocation(line: 113, column: 7, scope: !348)
!372 = !{!305, !306, i64 120}
!373 = !{!374, !306, i64 8}
!374 = !{!"PGExtras", !309, i64 0, !306, i64 8, !310, i64 16, !306, i64 24, !306, i64 32, !306, i64 40, !306, i64 48, !309, i64 56, !306, i64 64, !306, i64 72, !306, i64 80, !306, i64 88, !306, i64 96, !307, i64 104, !307, i64 168, !307, i64 232}
!375 = !DILocation(line: 113, column: 17, scope: !347)
!376 = !DILocation(line: 117, column: 7, scope: !349)
!377 = !DILocation(line: 173, column: 5, scope: !349)
!378 = !DILocation(line: 176, column: 3, scope: !126)
!379 = !DILocation(line: 177, column: 3, scope: !126)
!380 = !DILocation(line: 83, column: 3, scope: !126)
!381 = !DILocation(line: 179, column: 24, scope: !126)
!382 = !DILocation(line: 288, column: 42, scope: !207)
!383 = !DILocation(line: 290, column: 3, scope: !207)
!384 = !{!385, !309, i64 212}
!385 = !{!"", !306, i64 0, !306, i64 8, !306, i64 16, !306, i64 24, !306, i64 32, !306, i64 40, !306, i64 48, !306, i64 56, !306, i64 64, !306, i64 72, !306, i64 80, !309, i64 88, !309, i64 92, !309, i64 96, !309, i64 100, !309, i64 104, !309, i64 108, !309, i64 112, !309, i64 116, !309, i64 120, !309, i64 124, !309, i64 128, !309, i64 132, !309, i64 136, !309, i64 140, !309, i64 144, !309, i64 148, !309, i64 152, !309, i64 156, !309, i64 160, !309, i64 164, !309, i64 168, !309, i64 172, !309, i64 176, !309, i64 180, !309, i64 184, !309, i64 188, !309, i64 192, !309, i64 196, !309, i64 200, !309, i64 204, !309, i64 208, !309, i64 212, !309, i64 216}
!386 = !DILocation(line: 293, column: 28, scope: !387)
!387 = distinct !DILexicalBlock(scope: !207, file: !1, line: 293, column: 7)
!388 = !DILocation(line: 293, column: 32, scope: !387)
!389 = !DILocation(line: 294, column: 11, scope: !387)
!390 = !{!326, !309, i64 4}
!391 = !DILocation(line: 294, column: 26, scope: !387)
!392 = !DILocation(line: 294, column: 49, scope: !387)
!393 = !DILocation(line: 293, column: 7, scope: !207)
!394 = !DILocation(line: 296, column: 5, scope: !395)
!395 = distinct !DILexicalBlock(scope: !387, file: !1, line: 295, column: 3)
!396 = !DILocation(line: 297, column: 3, scope: !395)
!397 = !DILocation(line: 298, column: 24, scope: !207)
!398 = !DILocation(line: 309, column: 47, scope: !272)
!399 = !DILocation(line: 312, column: 3, scope: !272)
!400 = !DILocation(line: 313, column: 1, scope: !272)
!401 = !DILocation(line: 324, column: 36, scope: !275)
!402 = !DILocation(line: 330, column: 9, scope: !275)
!403 = !DILocation(line: 331, column: 9, scope: !275)
!404 = !DILocation(line: 332, column: 9, scope: !275)
!405 = !DILocation(line: 327, column: 7, scope: !275)
!406 = !DILocation(line: 328, column: 7, scope: !275)
!407 = !DILocation(line: 329, column: 7, scope: !275)
!408 = !DILocation(line: 326, column: 7, scope: !275)
!409 = !DILocation(line: 340, column: 14, scope: !410)
!410 = distinct !DILexicalBlock(scope: !411, file: !1, line: 340, column: 3)
!411 = distinct !DILexicalBlock(scope: !275, file: !1, line: 340, column: 3)
!412 = !DILocation(line: 340, column: 13, scope: !410)
!413 = !DILocation(line: 340, column: 3, scope: !411)
!414 = !DILocation(line: 342, column: 9, scope: !415)
!415 = distinct !DILexicalBlock(scope: !416, file: !1, line: 342, column: 9)
!416 = distinct !DILexicalBlock(scope: !410, file: !1, line: 341, column: 3)
!417 = !DILocation(line: 342, column: 9, scope: !416)
!418 = !DILocation(line: 344, column: 11, scope: !419)
!419 = distinct !DILexicalBlock(scope: !420, file: !1, line: 344, column: 11)
!420 = distinct !DILexicalBlock(scope: !415, file: !1, line: 343, column: 5)
!421 = !DILocation(line: 344, column: 30, scope: !419)
!422 = !DILocation(line: 344, column: 11, scope: !420)
!423 = !DILocation(line: 346, column: 27, scope: !424)
!424 = distinct !DILexicalBlock(scope: !419, file: !1, line: 345, column: 7)
!425 = !DILocation(line: 346, column: 20, scope: !424)
!426 = !DILocation(line: 346, column: 17, scope: !424)
!427 = !DILocation(line: 346, column: 45, scope: !424)
!428 = !DILocation(line: 347, column: 7, scope: !424)
!429 = !DILocation(line: 348, column: 16, scope: !430)
!430 = distinct !DILexicalBlock(scope: !419, file: !1, line: 348, column: 16)
!431 = !DILocation(line: 348, column: 35, scope: !430)
!432 = !DILocation(line: 348, column: 16, scope: !419)
!433 = !DILocation(line: 350, column: 30, scope: !434)
!434 = distinct !DILexicalBlock(scope: !430, file: !1, line: 349, column: 7)
!435 = !DILocation(line: 350, column: 23, scope: !434)
!436 = !DILocation(line: 350, column: 20, scope: !434)
!437 = !DILocation(line: 350, column: 48, scope: !434)
!438 = !DILocation(line: 351, column: 7, scope: !434)
!439 = !DILocation(line: 352, column: 16, scope: !440)
!440 = distinct !DILexicalBlock(scope: !430, file: !1, line: 352, column: 16)
!441 = !DILocation(line: 352, column: 35, scope: !440)
!442 = !DILocation(line: 352, column: 16, scope: !430)
!443 = !DILocation(line: 354, column: 31, scope: !444)
!444 = distinct !DILexicalBlock(scope: !440, file: !1, line: 353, column: 7)
!445 = !DILocation(line: 354, column: 24, scope: !444)
!446 = !DILocation(line: 354, column: 21, scope: !444)
!447 = !DILocation(line: 354, column: 49, scope: !444)
!448 = !DILocation(line: 355, column: 7, scope: !444)
!449 = !DILocation(line: 340, column: 32, scope: !410)
!450 = !DILocation(line: 360, column: 7, scope: !451)
!451 = distinct !DILexicalBlock(scope: !275, file: !1, line: 360, column: 7)
!452 = !DILocation(line: 360, column: 7, scope: !275)
!453 = !DILocation(line: 362, column: 37, scope: !454)
!454 = distinct !DILexicalBlock(scope: !451, file: !1, line: 361, column: 3)
!455 = !DILocation(line: 362, column: 29, scope: !454)
!456 = !DILocation(line: 362, column: 22, scope: !454)
!457 = !DILocation(line: 363, column: 5, scope: !454)
!458 = !DILocation(line: 364, column: 3, scope: !454)
!459 = !DILocation(line: 365, column: 7, scope: !460)
!460 = distinct !DILexicalBlock(scope: !275, file: !1, line: 365, column: 7)
!461 = !DILocation(line: 365, column: 7, scope: !275)
!462 = !DILocation(line: 367, column: 43, scope: !463)
!463 = distinct !DILexicalBlock(scope: !460, file: !1, line: 366, column: 3)
!464 = !DILocation(line: 367, column: 32, scope: !463)
!465 = !DILocation(line: 367, column: 25, scope: !463)
!466 = !DILocation(line: 368, column: 5, scope: !463)
!467 = !DILocation(line: 369, column: 3, scope: !463)
!468 = !DILocation(line: 370, column: 7, scope: !469)
!469 = distinct !DILexicalBlock(scope: !275, file: !1, line: 370, column: 7)
!470 = !DILocation(line: 370, column: 7, scope: !275)
!471 = !DILocation(line: 372, column: 45, scope: !472)
!472 = distinct !DILexicalBlock(scope: !469, file: !1, line: 371, column: 3)
!473 = !DILocation(line: 372, column: 33, scope: !472)
!474 = !DILocation(line: 372, column: 26, scope: !472)
!475 = !DILocation(line: 373, column: 5, scope: !472)
!476 = !DILocation(line: 374, column: 3, scope: !472)
!477 = !DILocation(line: 376, column: 14, scope: !478)
!478 = distinct !DILexicalBlock(scope: !479, file: !1, line: 376, column: 3)
!479 = distinct !DILexicalBlock(scope: !275, file: !1, line: 376, column: 3)
!480 = !DILocation(line: 376, column: 13, scope: !478)
!481 = !DILocation(line: 376, column: 3, scope: !479)
!482 = !DILocation(line: 382, column: 9, scope: !483)
!483 = distinct !DILexicalBlock(scope: !484, file: !1, line: 381, column: 7)
!484 = distinct !DILexicalBlock(scope: !485, file: !1, line: 380, column: 11)
!485 = distinct !DILexicalBlock(scope: !486, file: !1, line: 379, column: 5)
!486 = distinct !DILexicalBlock(scope: !487, file: !1, line: 378, column: 9)
!487 = distinct !DILexicalBlock(scope: !478, file: !1, line: 377, column: 3)
!488 = !DILocation(line: 386, column: 9, scope: !489)
!489 = distinct !DILexicalBlock(scope: !490, file: !1, line: 385, column: 7)
!490 = distinct !DILexicalBlock(scope: !484, file: !1, line: 384, column: 16)
!491 = !DILocation(line: 390, column: 9, scope: !492)
!492 = distinct !DILexicalBlock(scope: !493, file: !1, line: 389, column: 7)
!493 = distinct !DILexicalBlock(scope: !490, file: !1, line: 388, column: 16)
!494 = !DILocation(line: 378, column: 9, scope: !486)
!495 = !DILocation(line: 378, column: 9, scope: !487)
!496 = !DILocation(line: 380, column: 11, scope: !484)
!497 = !DILocation(line: 380, column: 30, scope: !484)
!498 = !DILocation(line: 380, column: 11, scope: !485)
!499 = !DILocation(line: 383, column: 7, scope: !483)
!500 = !DILocation(line: 384, column: 16, scope: !490)
!501 = !DILocation(line: 384, column: 35, scope: !490)
!502 = !DILocation(line: 384, column: 16, scope: !484)
!503 = !DILocation(line: 387, column: 7, scope: !489)
!504 = !DILocation(line: 388, column: 16, scope: !493)
!505 = !DILocation(line: 388, column: 35, scope: !493)
!506 = !DILocation(line: 388, column: 16, scope: !490)
!507 = !DILocation(line: 391, column: 7, scope: !492)
!508 = !DILocation(line: 376, column: 32, scope: !478)
!509 = !DILocation(line: 395, column: 7, scope: !510)
!510 = distinct !DILexicalBlock(scope: !275, file: !1, line: 395, column: 7)
!511 = !DILocation(line: 395, column: 15, scope: !510)
!512 = !DILocation(line: 395, column: 13, scope: !510)
!513 = !DILocation(line: 395, column: 26, scope: !510)
!514 = !DILocation(line: 397, column: 5, scope: !515)
!515 = distinct !DILexicalBlock(scope: !510, file: !1, line: 396, column: 3)
!516 = !DILocation(line: 398, column: 9, scope: !515)
!517 = !DILocation(line: 400, column: 7, scope: !518)
!518 = distinct !DILexicalBlock(scope: !519, file: !1, line: 399, column: 5)
!519 = distinct !DILexicalBlock(scope: !515, file: !1, line: 398, column: 9)
!520 = !DILocation(line: 401, column: 5, scope: !518)
!521 = !DILocation(line: 402, column: 9, scope: !515)
!522 = !DILocation(line: 404, column: 7, scope: !523)
!523 = distinct !DILexicalBlock(scope: !524, file: !1, line: 403, column: 5)
!524 = distinct !DILexicalBlock(scope: !515, file: !1, line: 402, column: 9)
!525 = !DILocation(line: 405, column: 5, scope: !523)
!526 = !DILocation(line: 406, column: 9, scope: !515)
!527 = !DILocation(line: 408, column: 7, scope: !528)
!528 = distinct !DILexicalBlock(scope: !529, file: !1, line: 407, column: 5)
!529 = distinct !DILexicalBlock(scope: !515, file: !1, line: 406, column: 9)
!530 = !DILocation(line: 409, column: 5, scope: !528)
!531 = !DILocation(line: 412, column: 7, scope: !275)
!532 = !DILocation(line: 412, column: 15, scope: !533)
!533 = distinct !DILexicalBlock(scope: !275, file: !1, line: 412, column: 7)
!534 = !DILocation(line: 413, column: 7, scope: !275)
!535 = !DILocation(line: 413, column: 18, scope: !536)
!536 = distinct !DILexicalBlock(scope: !275, file: !1, line: 413, column: 7)
!537 = !DILocation(line: 414, column: 7, scope: !275)
!538 = !DILocation(line: 414, column: 19, scope: !539)
!539 = distinct !DILexicalBlock(scope: !275, file: !1, line: 414, column: 7)
!540 = !DILocation(line: 416, column: 1, scope: !275)
!541 = !DILocation(line: 419, column: 40, scope: !285)
!542 = !DILocation(line: 421, column: 3, scope: !285)
!543 = !DILocation(line: 422, column: 1, scope: !285)
