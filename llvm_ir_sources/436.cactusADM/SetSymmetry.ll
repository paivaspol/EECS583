; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/CartGrid3D/SetSymmetry.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.cGH = type { i32, i32, i32*, i32*, i32*, i32*, i32*, i32*, i32*, double, double*, double*, i32*, i32*, i32, i32*, double, i8***, i8**, %struct.cGHGroupData* }
%struct.cGHGroupData = type { i8, i8 }
%struct.Symmetry = type { i32** }

@.str = private unnamed_addr constant [9 x i8] c"Symmetry\00", align 1
@.str1 = private unnamed_addr constant [84 x i8] c"../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/CartGrid3D/SetSymmetry.c\00", align 1
@.str2 = private unnamed_addr constant [11 x i8] c"CartGrid3D\00", align 1
@.str3 = private unnamed_addr constant [40 x i8] c"Cannot find variable %s in SetCartSymVN\00", align 1
@.str4 = private unnamed_addr constant [53 x i8] c"Cannot find group %s (grp.index: %d) in SetCartSymGI\00", align 1
@.str5 = private unnamed_addr constant [37 x i8] c"Cannot find group %s in SetCartSymGN\00", align 1
@.str6 = private unnamed_addr constant [97 x i8] c"$Header: /cactus/CactusBase/CartGrid3D/src/SetSymmetry.c,v 1.7 2001/05/10 12:35:37 goodale Exp $\00", align 1

; Function Attrs: nounwind optsize readnone ssp uwtable
define i8* @CCTKi_version_CactusBase_CartGrid3D_SetSymmetry_c() #0 {
  ret i8* getelementptr inbounds ([97 x i8]* @.str6, i64 0, i64 0), !dbg !208
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @SetCartSymVI(%struct.cGH* nocapture readonly %GH, i32* nocapture readonly %sym, i32 %vi) #1 {
  %domainsym = alloca [6 x i32], align 16
  tail call void @llvm.dbg.value(metadata %struct.cGH* %GH, i64 0, metadata !60, metadata !209), !dbg !210
  tail call void @llvm.dbg.value(metadata i32* %sym, i64 0, metadata !61, metadata !209), !dbg !211
  tail call void @llvm.dbg.value(metadata i32 %vi, i64 0, metadata !62, metadata !209), !dbg !212
  tail call void @llvm.dbg.declare(metadata [6 x i32]* %domainsym, metadata !102, metadata !209), !dbg !213
  %1 = tail call i32 @CCTK_GHExtensionHandle(i8* getelementptr inbounds ([9 x i8]* @.str, i64 0, i64 0)) #5, !dbg !214
  %2 = sext i32 %1 to i64, !dbg !215
  %3 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 18, !dbg !216
  %4 = load i8*** %3, align 8, !dbg !216, !tbaa !217
  %5 = getelementptr inbounds i8** %4, i64 %2, !dbg !215
  %6 = bitcast i8** %5 to %struct.Symmetry**, !dbg !215
  %7 = load %struct.Symmetry** %6, align 8, !dbg !215, !tbaa !224
  tail call void @llvm.dbg.value(metadata %struct.Symmetry* %7, i64 0, metadata !106, metadata !209), !dbg !225
  %8 = getelementptr inbounds [6 x i32]* %domainsym, i64 0, i64 0, !dbg !226
  call void @DecodeSymParameters3D(i32* %8) #5, !dbg !227
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !107, metadata !209), !dbg !228
  %9 = sext i32 %vi to i64, !dbg !229
  %10 = getelementptr inbounds %struct.Symmetry* %7, i64 0, i32 0, !dbg !235
  br label %11, !dbg !236

; <label>:11                                      ; preds = %30, %0
  %indvars.iv = phi i64 [ 0, %0 ], [ %indvars.iv.next, %30 ]
  %12 = getelementptr inbounds [6 x i32]* %domainsym, i64 0, i64 %indvars.iv, !dbg !237
  %13 = load i32* %12, align 4, !dbg !237, !tbaa !238
  %14 = icmp eq i32 %13, 0, !dbg !237
  br i1 %14, label %25, label %15, !dbg !239

; <label>:15                                      ; preds = %11
  %16 = trunc i64 %indvars.iv to i32, !dbg !240
  %17 = sdiv i32 %16, 2, !dbg !240
  %18 = sext i32 %17 to i64, !dbg !242
  %19 = getelementptr inbounds i32* %sym, i64 %18, !dbg !242
  %20 = load i32* %19, align 4, !dbg !242, !tbaa !238
  %21 = load i32*** %10, align 8, !dbg !243, !tbaa !244
  %22 = getelementptr inbounds i32** %21, i64 %9, !dbg !246
  %23 = load i32** %22, align 8, !dbg !246, !tbaa !224
  %24 = getelementptr inbounds i32* %23, i64 %indvars.iv, !dbg !246
  store i32 %20, i32* %24, align 4, !dbg !247, !tbaa !238
  br label %30, !dbg !248

; <label>:25                                      ; preds = %11
  %26 = load i32*** %10, align 8, !dbg !235, !tbaa !244
  %27 = getelementptr inbounds i32** %26, i64 %9, !dbg !229
  %28 = load i32** %27, align 8, !dbg !229, !tbaa !224
  %29 = getelementptr inbounds i32* %28, i64 %indvars.iv, !dbg !229
  store i32 -41, i32* %29, align 4, !dbg !249, !tbaa !238
  br label %30

; <label>:30                                      ; preds = %15, %25
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !236
  %exitcond = icmp eq i64 %indvars.iv.next, 6, !dbg !236
  br i1 %exitcond, label %31, label %11, !dbg !236

; <label>:31                                      ; preds = %30
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !99, metadata !209), !dbg !250
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !99, metadata !209), !dbg !250
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !99, metadata !209), !dbg !250
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !99, metadata !209), !dbg !250
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !99, metadata !209), !dbg !250
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !99, metadata !209), !dbg !250
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !99, metadata !209), !dbg !250
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !99, metadata !209), !dbg !250
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !99, metadata !209), !dbg !250
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !99, metadata !209), !dbg !250
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !99, metadata !209), !dbg !250
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !99, metadata !209), !dbg !250
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !99, metadata !209), !dbg !250
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !99, metadata !209), !dbg !250
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !99, metadata !209), !dbg !250
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !99, metadata !209), !dbg !250
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !99, metadata !209), !dbg !250
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !99, metadata !209), !dbg !250
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !99, metadata !209), !dbg !250
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !99, metadata !209), !dbg !250
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !99, metadata !209), !dbg !250
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !99, metadata !209), !dbg !250
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !99, metadata !209), !dbg !250
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !99, metadata !209), !dbg !250
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !99, metadata !209), !dbg !250
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !99, metadata !209), !dbg !250
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !99, metadata !209), !dbg !250
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !99, metadata !209), !dbg !250
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !99, metadata !209), !dbg !250
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !99, metadata !209), !dbg !250
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !99, metadata !209), !dbg !250
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !99, metadata !209), !dbg !250
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !99, metadata !209), !dbg !250
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !99, metadata !209), !dbg !250
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !99, metadata !209), !dbg !250
  ret i32 0, !dbg !251
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: optsize
declare i32 @CCTK_GHExtensionHandle(i8*) #3

; Function Attrs: optsize
declare void @DecodeSymParameters3D(i32*) #3

; Function Attrs: nounwind optsize ssp uwtable
define void @setcartsymvi_(i32* nocapture %ierr, %struct.cGH* nocapture readonly %GH, i32* nocapture readonly %sym, i32* nocapture readonly %vi) #1 {
  tail call void @llvm.dbg.value(metadata i32* %ierr, i64 0, metadata !112, metadata !209), !dbg !252
  tail call void @llvm.dbg.value(metadata %struct.cGH* %GH, i64 0, metadata !113, metadata !209), !dbg !253
  tail call void @llvm.dbg.value(metadata i32* %sym, i64 0, metadata !114, metadata !209), !dbg !254
  tail call void @llvm.dbg.value(metadata i32* %vi, i64 0, metadata !115, metadata !209), !dbg !255
  %1 = load i32* %vi, align 4, !dbg !256, !tbaa !238
  %2 = tail call i32 @SetCartSymVI(%struct.cGH* %GH, i32* %sym, i32 %1) #6, !dbg !257
  store i32 0, i32* %ierr, align 4, !dbg !258, !tbaa !238
  ret void, !dbg !259
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @SetCartSymVN(%struct.cGH* nocapture readonly %GH, i32* nocapture readonly %sym, i8* %vn) #1 {
  tail call void @llvm.dbg.value(metadata %struct.cGH* %GH, i64 0, metadata !120, metadata !209), !dbg !260
  tail call void @llvm.dbg.value(metadata i32* %sym, i64 0, metadata !121, metadata !209), !dbg !261
  tail call void @llvm.dbg.value(metadata i8* %vn, i64 0, metadata !122, metadata !209), !dbg !262
  %1 = tail call i32 @CCTK_VarIndex(i8* %vn) #5, !dbg !263
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !123, metadata !209), !dbg !264
  %2 = icmp sgt i32 %1, -1, !dbg !265
  br i1 %2, label %3, label %5, !dbg !267

; <label>:3                                       ; preds = %0
  %4 = tail call i32 @SetCartSymVI(%struct.cGH* %GH, i32* %sym, i32 %1) #6, !dbg !268
  br label %7, !dbg !270

; <label>:5                                       ; preds = %0
  %6 = tail call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 1, i32 151, i8* getelementptr inbounds ([84 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8]* @.str3, i64 0, i64 0), i8* %vn) #5, !dbg !271
  br label %7, !dbg !273

; <label>:7                                       ; preds = %5, %3
  %.0 = phi i32 [ 0, %3 ], [ -1, %5 ]
  ret i32 %.0, !dbg !274
}

; Function Attrs: optsize
declare i32 @CCTK_VarIndex(i8*) #3

; Function Attrs: optsize
declare i32 @CCTK_VWarn(i32, i32, i8*, i8*, i8*, ...) #3

; Function Attrs: nounwind optsize ssp uwtable
define void @setcartsymvn_(i32* nocapture %ierr, %struct.cGH* nocapture readonly %GH, i32* nocapture readonly %sym, i8* %cctk_str1, i32 %cctk_strlen1) #1 {
  tail call void @llvm.dbg.value(metadata i32* %ierr, i64 0, metadata !130, metadata !209), !dbg !275
  tail call void @llvm.dbg.value(metadata %struct.cGH* %GH, i64 0, metadata !131, metadata !209), !dbg !276
  tail call void @llvm.dbg.value(metadata i32* %sym, i64 0, metadata !132, metadata !209), !dbg !277
  tail call void @llvm.dbg.value(metadata i8* %cctk_str1, i64 0, metadata !133, metadata !209), !dbg !278
  tail call void @llvm.dbg.value(metadata i32 %cctk_strlen1, i64 0, metadata !134, metadata !209), !dbg !278
  %1 = tail call i8* @Util_NullTerminateString(i8* %cctk_str1, i32 %cctk_strlen1) #5, !dbg !279
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !135, metadata !209), !dbg !279
  %2 = tail call i32 @SetCartSymVN(%struct.cGH* %GH, i32* %sym, i8* %1) #6, !dbg !280
  store i32 %2, i32* %ierr, align 4, !dbg !281, !tbaa !238
  tail call void @free(i8* %1) #6, !dbg !282
  ret void, !dbg !283
}

; Function Attrs: optsize
declare i8* @Util_NullTerminateString(i8*, i32) #3

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) #4

; Function Attrs: nounwind optsize ssp uwtable
define i32 @SetCartSymGI(%struct.cGH* nocapture readonly %GH, i32* nocapture readonly %sym, i32 %gi) #1 {
  %domainsym = alloca [6 x i32], align 16
  tail call void @llvm.dbg.value(metadata %struct.cGH* %GH, i64 0, metadata !138, metadata !209), !dbg !284
  tail call void @llvm.dbg.value(metadata i32* %sym, i64 0, metadata !139, metadata !209), !dbg !285
  tail call void @llvm.dbg.value(metadata i32 %gi, i64 0, metadata !140, metadata !209), !dbg !286
  tail call void @llvm.dbg.declare(metadata [6 x i32]* %domainsym, metadata !176, metadata !209), !dbg !287
  %1 = tail call i32 @CCTK_GHExtensionHandle(i8* getelementptr inbounds ([9 x i8]* @.str, i64 0, i64 0)) #5, !dbg !288
  %2 = sext i32 %1 to i64, !dbg !289
  %3 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 18, !dbg !290
  %4 = load i8*** %3, align 8, !dbg !290, !tbaa !217
  %5 = getelementptr inbounds i8** %4, i64 %2, !dbg !289
  %6 = bitcast i8** %5 to %struct.Symmetry**, !dbg !289
  %7 = load %struct.Symmetry** %6, align 8, !dbg !289, !tbaa !224
  tail call void @llvm.dbg.value(metadata %struct.Symmetry* %7, i64 0, metadata !177, metadata !209), !dbg !291
  %8 = tail call i32 @CCTK_FirstVarIndexI(i32 %gi) #5, !dbg !292
  tail call void @llvm.dbg.value(metadata i32 %8, i64 0, metadata !178, metadata !209), !dbg !293
  %9 = tail call i32 @CCTK_NumVarsInGroupI(i32 %gi) #5, !dbg !294
  tail call void @llvm.dbg.value(metadata i32 %9, i64 0, metadata !179, metadata !209), !dbg !295
  %10 = icmp slt i32 %8, 0, !dbg !296
  br i1 %10, label %17, label %.preheader, !dbg !298

.preheader:                                       ; preds = %0
  %11 = icmp sgt i32 %9, 0, !dbg !299
  br i1 %11, label %.lr.ph, label %.loopexit, !dbg !302

.lr.ph:                                           ; preds = %.preheader
  %12 = add nsw i32 %9, %8, !dbg !303
  %13 = getelementptr inbounds [6 x i32]* %domainsym, i64 0, i64 0, !dbg !304
  %14 = getelementptr inbounds %struct.Symmetry* %7, i64 0, i32 0, !dbg !306
  %15 = sext i32 %8 to i64
  %16 = sext i32 %12 to i64, !dbg !302
  br label %20, !dbg !302

; <label>:17                                      ; preds = %0
  %18 = tail call i8* @CCTK_GroupName(i32 %gi) #5, !dbg !312
  %19 = tail call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 1, i32 200, i8* getelementptr inbounds ([84 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str4, i64 0, i64 0), i8* %18, i32 %8) #5, !dbg !314
  br label %.loopexit, !dbg !315

; <label>:20                                      ; preds = %.lr.ph, %41
  %indvars.iv3 = phi i64 [ %15, %.lr.ph ], [ %indvars.iv.next4, %41 ]
  call void @DecodeSymParameters3D(i32* %13) #5, !dbg !316
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !181, metadata !209), !dbg !317
  br label %21, !dbg !318

; <label>:21                                      ; preds = %40, %20
  %indvars.iv = phi i64 [ 0, %20 ], [ %indvars.iv.next, %40 ]
  %22 = getelementptr inbounds [6 x i32]* %domainsym, i64 0, i64 %indvars.iv, !dbg !319
  %23 = load i32* %22, align 4, !dbg !319, !tbaa !238
  %24 = icmp eq i32 %23, 0, !dbg !319
  br i1 %24, label %35, label %25, !dbg !320

; <label>:25                                      ; preds = %21
  %26 = trunc i64 %indvars.iv to i32, !dbg !321
  %27 = sdiv i32 %26, 2, !dbg !321
  %28 = sext i32 %27 to i64, !dbg !323
  %29 = getelementptr inbounds i32* %sym, i64 %28, !dbg !323
  %30 = load i32* %29, align 4, !dbg !323, !tbaa !238
  %31 = load i32*** %14, align 8, !dbg !324, !tbaa !244
  %32 = getelementptr inbounds i32** %31, i64 %indvars.iv3, !dbg !325
  %33 = load i32** %32, align 8, !dbg !325, !tbaa !224
  %34 = getelementptr inbounds i32* %33, i64 %indvars.iv, !dbg !325
  store i32 %30, i32* %34, align 4, !dbg !326, !tbaa !238
  br label %40, !dbg !327

; <label>:35                                      ; preds = %21
  %36 = load i32*** %14, align 8, !dbg !306, !tbaa !244
  %37 = getelementptr inbounds i32** %36, i64 %indvars.iv3, !dbg !328
  %38 = load i32** %37, align 8, !dbg !328, !tbaa !224
  %39 = getelementptr inbounds i32* %38, i64 %indvars.iv, !dbg !328
  store i32 -41, i32* %39, align 4, !dbg !329, !tbaa !238
  br label %40

; <label>:40                                      ; preds = %25, %35
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !318
  %exitcond = icmp eq i64 %indvars.iv.next, 6, !dbg !318
  br i1 %exitcond, label %41, label %21, !dbg !318

; <label>:41                                      ; preds = %40
  %indvars.iv.next4 = add nsw i64 %indvars.iv3, 1, !dbg !302
  %42 = icmp slt i64 %indvars.iv.next4, %16, !dbg !299
  br i1 %42, label %20, label %.loopexit, !dbg !302

.loopexit:                                        ; preds = %41, %.preheader, %17
  %.0 = phi i32 [ -1, %17 ], [ 0, %.preheader ], [ 0, %41 ]
  ret i32 %.0, !dbg !330
}

; Function Attrs: optsize
declare i32 @CCTK_FirstVarIndexI(i32) #3

; Function Attrs: optsize
declare i32 @CCTK_NumVarsInGroupI(i32) #3

; Function Attrs: optsize
declare i8* @CCTK_GroupName(i32) #3

; Function Attrs: nounwind optsize ssp uwtable
define void @setcartsymgi_(i32* nocapture %ierr, %struct.cGH* nocapture readonly %GH, i32* nocapture readonly %sym, i32* nocapture readonly %gi) #1 {
  tail call void @llvm.dbg.value(metadata i32* %ierr, i64 0, metadata !184, metadata !209), !dbg !331
  tail call void @llvm.dbg.value(metadata %struct.cGH* %GH, i64 0, metadata !185, metadata !209), !dbg !332
  tail call void @llvm.dbg.value(metadata i32* %sym, i64 0, metadata !186, metadata !209), !dbg !333
  tail call void @llvm.dbg.value(metadata i32* %gi, i64 0, metadata !187, metadata !209), !dbg !334
  %1 = load i32* %gi, align 4, !dbg !335, !tbaa !238
  %2 = tail call i32 @SetCartSymGI(%struct.cGH* %GH, i32* %sym, i32 %1) #6, !dbg !336
  store i32 %2, i32* %ierr, align 4, !dbg !337, !tbaa !238
  ret void, !dbg !338
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @SetCartSymGN(%struct.cGH* nocapture readonly %GH, i32* nocapture readonly %sym, i8* %gn) #1 {
  tail call void @llvm.dbg.value(metadata %struct.cGH* %GH, i64 0, metadata !190, metadata !209), !dbg !339
  tail call void @llvm.dbg.value(metadata i32* %sym, i64 0, metadata !191, metadata !209), !dbg !340
  tail call void @llvm.dbg.value(metadata i8* %gn, i64 0, metadata !192, metadata !209), !dbg !341
  %1 = tail call i32 @CCTK_GroupIndex(i8* %gn) #5, !dbg !342
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !193, metadata !209), !dbg !343
  %2 = icmp sgt i32 %1, -1, !dbg !344
  br i1 %2, label %3, label %5, !dbg !346

; <label>:3                                       ; preds = %0
  %4 = tail call i32 @SetCartSymGI(%struct.cGH* %GH, i32* %sym, i32 %1) #6, !dbg !347
  br label %7, !dbg !349

; <label>:5                                       ; preds = %0
  %6 = tail call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 1, i32 277, i8* getelementptr inbounds ([84 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([37 x i8]* @.str5, i64 0, i64 0), i8* %gn) #5, !dbg !350
  br label %7, !dbg !352

; <label>:7                                       ; preds = %5, %3
  %.0 = phi i32 [ %4, %3 ], [ -1, %5 ]
  ret i32 %.0, !dbg !353
}

; Function Attrs: optsize
declare i32 @CCTK_GroupIndex(i8*) #3

; Function Attrs: nounwind optsize ssp uwtable
define void @setcartsymgn_(i32* nocapture %ierr, %struct.cGH* nocapture readonly %GH, i32* nocapture readonly %sym, i8* %cctk_str1, i32 %cctk_strlen1) #1 {
  tail call void @llvm.dbg.value(metadata i32* %ierr, i64 0, metadata !196, metadata !209), !dbg !354
  tail call void @llvm.dbg.value(metadata %struct.cGH* %GH, i64 0, metadata !197, metadata !209), !dbg !355
  tail call void @llvm.dbg.value(metadata i32* %sym, i64 0, metadata !198, metadata !209), !dbg !356
  tail call void @llvm.dbg.value(metadata i8* %cctk_str1, i64 0, metadata !199, metadata !209), !dbg !357
  tail call void @llvm.dbg.value(metadata i32 %cctk_strlen1, i64 0, metadata !200, metadata !209), !dbg !357
  %1 = tail call i8* @Util_NullTerminateString(i8* %cctk_str1, i32 %cctk_strlen1) #5, !dbg !358
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !201, metadata !209), !dbg !358
  %2 = tail call i32 @SetCartSymGN(%struct.cGH* %GH, i32* %sym, i8* %1) #6, !dbg !359
  store i32 %2, i32* %ierr, align 4, !dbg !360, !tbaa !238
  tail call void @free(i8* %1) #6, !dbg !361
  ret void, !dbg !362
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #2

attributes #0 = { nounwind optsize readnone ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone }
attributes #3 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind optsize }
attributes #6 = { optsize }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!204, !205, !206}
!llvm.ident = !{!207}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !3, subprograms: !13, globals: !202, imports: !2)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/CartGrid3D/SetSymmetry.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{}
!3 = !{!4}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64, align: 64)
!5 = !DIDerivedType(tag: DW_TAG_typedef, name: "SymmetryGHex", file: !6, line: 36, baseType: !7)
!6 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/CartGrid3D/../include/Symmetry.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!7 = !DICompositeType(tag: DW_TAG_structure_type, name: "Symmetry", file: !6, line: 27, size: 64, align: 64, elements: !8)
!8 = !{!9}
!9 = !DIDerivedType(tag: DW_TAG_member, name: "GFSym", scope: !7, file: !6, line: 34, baseType: !10, size: 64, align: 64)
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64, align: 64)
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64, align: 64)
!12 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!13 = !{!14, !20, !108, !116, !124, !136, !182, !188, !194}
!14 = !DISubprogram(name: "CCTKi_version_CactusBase_CartGrid3D_SetSymmetry_c", scope: !1, file: !1, line: 24, type: !15, isLocal: false, isDefinition: true, scopeLine: 24, flags: DIFlagPrototyped, isOptimized: true, function: i8* ()* @CCTKi_version_CactusBase_CartGrid3D_SetSymmetry_c, variables: !2)
!15 = !DISubroutineType(types: !16)
!16 = !{!17}
!17 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64, align: 64)
!18 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !19)
!19 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!20 = !DISubprogram(name: "SetCartSymVI", scope: !1, file: !1, line: 74, type: !21, isLocal: false, isDefinition: true, scopeLine: 75, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.cGH*, i32*, i32)* @SetCartSymVI, variables: !59)
!21 = !DISubroutineType(types: !22)
!22 = !{!12, !23, !11, !12}
!23 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 64, align: 64)
!24 = !DIDerivedType(tag: DW_TAG_typedef, name: "cGH", file: !25, line: 75, baseType: !26)
!25 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/CartGrid3D/../include/cGH.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!26 = !DICompositeType(tag: DW_TAG_structure_type, file: !25, line: 24, size: 1216, align: 64, elements: !27)
!27 = !{!28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !39, !41, !42, !43, !44, !45, !46, !47, !51, !52}
!28 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_dim", scope: !26, file: !25, line: 26, baseType: !12, size: 32, align: 32)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_iteration", scope: !26, file: !25, line: 27, baseType: !12, size: 32, align: 32, offset: 32)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_gsh", scope: !26, file: !25, line: 30, baseType: !11, size: 64, align: 64, offset: 64)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_lsh", scope: !26, file: !25, line: 31, baseType: !11, size: 64, align: 64, offset: 128)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_lbnd", scope: !26, file: !25, line: 32, baseType: !11, size: 64, align: 64, offset: 192)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_ubnd", scope: !26, file: !25, line: 33, baseType: !11, size: 64, align: 64, offset: 256)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_lssh", scope: !26, file: !25, line: 36, baseType: !11, size: 64, align: 64, offset: 320)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_to", scope: !26, file: !25, line: 39, baseType: !11, size: 64, align: 64, offset: 384)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_from", scope: !26, file: !25, line: 40, baseType: !11, size: 64, align: 64, offset: 448)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_delta_time", scope: !26, file: !25, line: 43, baseType: !38, size: 64, align: 64, offset: 512)
!38 = !DIBasicType(name: "double", size: 64, align: 64, encoding: DW_ATE_float)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_delta_space", scope: !26, file: !25, line: 44, baseType: !40, size: 64, align: 64, offset: 576)
!40 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 64, align: 64)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_origin_space", scope: !26, file: !25, line: 47, baseType: !40, size: 64, align: 64, offset: 640)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_bbox", scope: !26, file: !25, line: 51, baseType: !11, size: 64, align: 64, offset: 704)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_levfac", scope: !26, file: !25, line: 54, baseType: !11, size: 64, align: 64, offset: 768)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_convlevel", scope: !26, file: !25, line: 57, baseType: !12, size: 32, align: 32, offset: 832)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_nghostzones", scope: !26, file: !25, line: 60, baseType: !11, size: 64, align: 64, offset: 896)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_time", scope: !26, file: !25, line: 63, baseType: !38, size: 64, align: 64, offset: 960)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !26, file: !25, line: 67, baseType: !48, size: 64, align: 64, offset: 1024)
!48 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !49, size: 64, align: 64)
!49 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64, align: 64)
!50 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "extensions", scope: !26, file: !25, line: 70, baseType: !49, size: 64, align: 64, offset: 1088)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "GroupData", scope: !26, file: !25, line: 73, baseType: !53, size: 64, align: 64, offset: 1152)
!53 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !54, size: 64, align: 64)
!54 = !DIDerivedType(tag: DW_TAG_typedef, name: "cGHGroupData", file: !25, line: 22, baseType: !55)
!55 = !DICompositeType(tag: DW_TAG_structure_type, file: !25, line: 18, size: 16, align: 8, elements: !56)
!56 = !{!57, !58}
!57 = !DIDerivedType(tag: DW_TAG_member, name: "storage", scope: !55, file: !25, line: 20, baseType: !19, size: 8, align: 8)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !55, file: !25, line: 21, baseType: !19, size: 8, align: 8, offset: 8)
!59 = !{!60, !61, !62, !63, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !102, !106, !107}
!60 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "GH", arg: 1, scope: !20, file: !1, line: 74, type: !23)
!61 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "sym", arg: 2, scope: !20, file: !1, line: 74, type: !11)
!62 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "vi", arg: 3, scope: !20, file: !1, line: 74, type: !12)
!63 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "dx", scope: !20, file: !1, line: 77, type: !64)
!64 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !38)
!65 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "dxyz", scope: !20, file: !1, line: 77, type: !64)
!66 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "dy", scope: !20, file: !1, line: 77, type: !64)
!67 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "dz", scope: !20, file: !1, line: 77, type: !64)
!68 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "xmax", scope: !20, file: !1, line: 77, type: !64)
!69 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "xmin", scope: !20, file: !1, line: 77, type: !64)
!70 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "xyzmax", scope: !20, file: !1, line: 77, type: !64)
!71 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "xyzmin", scope: !20, file: !1, line: 77, type: !64)
!72 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ymax", scope: !20, file: !1, line: 77, type: !64)
!73 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ymin", scope: !20, file: !1, line: 77, type: !64)
!74 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "zmax", scope: !20, file: !1, line: 77, type: !64)
!75 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "zmin", scope: !20, file: !1, line: 77, type: !64)
!76 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "bitant_plane", scope: !20, file: !1, line: 77, type: !17)
!77 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "domain", scope: !20, file: !1, line: 77, type: !17)
!78 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "quadrant_direction", scope: !20, file: !1, line: 77, type: !17)
!79 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "type", scope: !20, file: !1, line: 77, type: !17)
!80 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "symmetry_xmax", scope: !20, file: !1, line: 77, type: !81)
!81 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !12)
!82 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "symmetry_xmin", scope: !20, file: !1, line: 77, type: !81)
!83 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "symmetry_ymax", scope: !20, file: !1, line: 77, type: !81)
!84 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "symmetry_ymin", scope: !20, file: !1, line: 77, type: !81)
!85 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "symmetry_zmax", scope: !20, file: !1, line: 77, type: !81)
!86 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "symmetry_zmin", scope: !20, file: !1, line: 77, type: !81)
!87 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "avoid_origin", scope: !20, file: !1, line: 77, type: !81)
!88 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "avoid_originx", scope: !20, file: !1, line: 77, type: !81)
!89 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "avoid_originy", scope: !20, file: !1, line: 77, type: !81)
!90 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "avoid_originz", scope: !20, file: !1, line: 77, type: !81)
!91 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "no_origin", scope: !20, file: !1, line: 77, type: !81)
!92 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "no_originx", scope: !20, file: !1, line: 77, type: !81)
!93 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "no_originy", scope: !20, file: !1, line: 77, type: !81)
!94 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "no_originz", scope: !20, file: !1, line: 77, type: !81)
!95 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "periodic", scope: !20, file: !1, line: 77, type: !81)
!96 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "periodic_x", scope: !20, file: !1, line: 77, type: !81)
!97 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "periodic_y", scope: !20, file: !1, line: 77, type: !81)
!98 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "periodic_z", scope: !20, file: !1, line: 77, type: !81)
!99 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cctk_pdummy_pointer", scope: !20, file: !1, line: 77, type: !100)
!100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !101, size: 64, align: 64)
!101 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!102 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "domainsym", scope: !20, file: !1, line: 79, type: !103)
!103 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 192, align: 32, elements: !104)
!104 = !{!105}
!105 = !DISubrange(count: 6)
!106 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "sGHex", scope: !20, file: !1, line: 80, type: !4)
!107 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "dir", scope: !20, file: !1, line: 81, type: !12)
!108 = !DISubprogram(name: "setcartsymvi_", scope: !1, file: !1, line: 119, type: !109, isLocal: false, isDefinition: true, scopeLine: 121, flags: DIFlagPrototyped, isOptimized: true, function: void (i32*, %struct.cGH*, i32*, i32*)* @setcartsymvi_, variables: !111)
!109 = !DISubroutineType(types: !110)
!110 = !{null, !11, !23, !11, !11}
!111 = !{!112, !113, !114, !115}
!112 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ierr", arg: 1, scope: !108, file: !1, line: 120, type: !11)
!113 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "GH", arg: 2, scope: !108, file: !1, line: 120, type: !23)
!114 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "sym", arg: 3, scope: !108, file: !1, line: 120, type: !11)
!115 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "vi", arg: 4, scope: !108, file: !1, line: 120, type: !11)
!116 = !DISubprogram(name: "SetCartSymVN", scope: !1, file: !1, line: 141, type: !117, isLocal: false, isDefinition: true, scopeLine: 141, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.cGH*, i32*, i8*)* @SetCartSymVN, variables: !119)
!117 = !DISubroutineType(types: !118)
!118 = !{!12, !23, !11, !17}
!119 = !{!120, !121, !122, !123}
!120 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "GH", arg: 1, scope: !116, file: !1, line: 141, type: !23)
!121 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "sym", arg: 2, scope: !116, file: !1, line: 141, type: !11)
!122 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "vn", arg: 3, scope: !116, file: !1, line: 141, type: !17)
!123 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "vi", scope: !116, file: !1, line: 142, type: !12)
!124 = !DISubprogram(name: "setcartsymvn_", scope: !1, file: !1, line: 157, type: !125, isLocal: false, isDefinition: true, scopeLine: 159, flags: DIFlagPrototyped, isOptimized: true, function: void (i32*, %struct.cGH*, i32*, i8*, i32)* @setcartsymvn_, variables: !129)
!125 = !DISubroutineType(types: !126)
!126 = !{null, !11, !23, !11, !127, !128}
!127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64, align: 64)
!128 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!129 = !{!130, !131, !132, !133, !134, !135}
!130 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ierr", arg: 1, scope: !124, file: !1, line: 158, type: !11)
!131 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "GH", arg: 2, scope: !124, file: !1, line: 158, type: !23)
!132 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "sym", arg: 3, scope: !124, file: !1, line: 158, type: !11)
!133 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "cctk_str1", arg: 4, scope: !124, file: !1, line: 158, type: !127)
!134 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "cctk_strlen1", arg: 5, scope: !124, file: !1, line: 158, type: !128)
!135 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "vn", scope: !124, file: !1, line: 160, type: !127)
!136 = !DISubprogram(name: "SetCartSymGI", scope: !1, file: !1, line: 183, type: !21, isLocal: false, isDefinition: true, scopeLine: 184, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.cGH*, i32*, i32)* @SetCartSymGI, variables: !137)
!137 = !{!138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181}
!138 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "GH", arg: 1, scope: !136, file: !1, line: 183, type: !23)
!139 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "sym", arg: 2, scope: !136, file: !1, line: 183, type: !11)
!140 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "gi", arg: 3, scope: !136, file: !1, line: 183, type: !12)
!141 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "dx", scope: !136, file: !1, line: 186, type: !64)
!142 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "dxyz", scope: !136, file: !1, line: 186, type: !64)
!143 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "dy", scope: !136, file: !1, line: 186, type: !64)
!144 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "dz", scope: !136, file: !1, line: 186, type: !64)
!145 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "xmax", scope: !136, file: !1, line: 186, type: !64)
!146 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "xmin", scope: !136, file: !1, line: 186, type: !64)
!147 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "xyzmax", scope: !136, file: !1, line: 186, type: !64)
!148 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "xyzmin", scope: !136, file: !1, line: 186, type: !64)
!149 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ymax", scope: !136, file: !1, line: 186, type: !64)
!150 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ymin", scope: !136, file: !1, line: 186, type: !64)
!151 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "zmax", scope: !136, file: !1, line: 186, type: !64)
!152 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "zmin", scope: !136, file: !1, line: 186, type: !64)
!153 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "bitant_plane", scope: !136, file: !1, line: 186, type: !17)
!154 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "domain", scope: !136, file: !1, line: 186, type: !17)
!155 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "quadrant_direction", scope: !136, file: !1, line: 186, type: !17)
!156 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "type", scope: !136, file: !1, line: 186, type: !17)
!157 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "symmetry_xmax", scope: !136, file: !1, line: 186, type: !81)
!158 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "symmetry_xmin", scope: !136, file: !1, line: 186, type: !81)
!159 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "symmetry_ymax", scope: !136, file: !1, line: 186, type: !81)
!160 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "symmetry_ymin", scope: !136, file: !1, line: 186, type: !81)
!161 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "symmetry_zmax", scope: !136, file: !1, line: 186, type: !81)
!162 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "symmetry_zmin", scope: !136, file: !1, line: 186, type: !81)
!163 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "avoid_origin", scope: !136, file: !1, line: 186, type: !81)
!164 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "avoid_originx", scope: !136, file: !1, line: 186, type: !81)
!165 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "avoid_originy", scope: !136, file: !1, line: 186, type: !81)
!166 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "avoid_originz", scope: !136, file: !1, line: 186, type: !81)
!167 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "no_origin", scope: !136, file: !1, line: 186, type: !81)
!168 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "no_originx", scope: !136, file: !1, line: 186, type: !81)
!169 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "no_originy", scope: !136, file: !1, line: 186, type: !81)
!170 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "no_originz", scope: !136, file: !1, line: 186, type: !81)
!171 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "periodic", scope: !136, file: !1, line: 186, type: !81)
!172 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "periodic_x", scope: !136, file: !1, line: 186, type: !81)
!173 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "periodic_y", scope: !136, file: !1, line: 186, type: !81)
!174 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "periodic_z", scope: !136, file: !1, line: 186, type: !81)
!175 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cctk_pdummy_pointer", scope: !136, file: !1, line: 186, type: !100)
!176 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "domainsym", scope: !136, file: !1, line: 188, type: !103)
!177 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "sGHex", scope: !136, file: !1, line: 189, type: !4)
!178 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "first_vari", scope: !136, file: !1, line: 190, type: !12)
!179 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "numvars", scope: !136, file: !1, line: 190, type: !12)
!180 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "vi", scope: !136, file: !1, line: 190, type: !12)
!181 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "dir", scope: !136, file: !1, line: 191, type: !12)
!182 = !DISubprogram(name: "setcartsymgi_", scope: !1, file: !1, line: 243, type: !109, isLocal: false, isDefinition: true, scopeLine: 245, flags: DIFlagPrototyped, isOptimized: true, function: void (i32*, %struct.cGH*, i32*, i32*)* @setcartsymgi_, variables: !183)
!183 = !{!184, !185, !186, !187}
!184 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ierr", arg: 1, scope: !182, file: !1, line: 244, type: !11)
!185 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "GH", arg: 2, scope: !182, file: !1, line: 244, type: !23)
!186 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "sym", arg: 3, scope: !182, file: !1, line: 244, type: !11)
!187 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "gi", arg: 4, scope: !182, file: !1, line: 244, type: !11)
!188 = !DISubprogram(name: "SetCartSymGN", scope: !1, file: !1, line: 267, type: !117, isLocal: false, isDefinition: true, scopeLine: 268, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.cGH*, i32*, i8*)* @SetCartSymGN, variables: !189)
!189 = !{!190, !191, !192, !193}
!190 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "GH", arg: 1, scope: !188, file: !1, line: 267, type: !23)
!191 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "sym", arg: 2, scope: !188, file: !1, line: 267, type: !11)
!192 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "gn", arg: 3, scope: !188, file: !1, line: 267, type: !17)
!193 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "gi", scope: !188, file: !1, line: 269, type: !12)
!194 = !DISubprogram(name: "setcartsymgn_", scope: !1, file: !1, line: 283, type: !125, isLocal: false, isDefinition: true, scopeLine: 285, flags: DIFlagPrototyped, isOptimized: true, function: void (i32*, %struct.cGH*, i32*, i8*, i32)* @setcartsymgn_, variables: !195)
!195 = !{!196, !197, !198, !199, !200, !201}
!196 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ierr", arg: 1, scope: !194, file: !1, line: 284, type: !11)
!197 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "GH", arg: 2, scope: !194, file: !1, line: 284, type: !23)
!198 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "sym", arg: 3, scope: !194, file: !1, line: 284, type: !11)
!199 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "cctk_str1", arg: 4, scope: !194, file: !1, line: 284, type: !127)
!200 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "cctk_strlen1", arg: 5, scope: !194, file: !1, line: 284, type: !128)
!201 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "gn", scope: !194, file: !1, line: 286, type: !127)
!202 = !{!203}
!203 = !DIGlobalVariable(name: "rcsid", scope: !0, file: !1, line: 22, type: !17, isLocal: true, isDefinition: true)
!204 = !{i32 2, !"Dwarf Version", i32 2}
!205 = !{i32 2, !"Debug Info Version", i32 700000003}
!206 = !{i32 1, !"PIC Level", i32 2}
!207 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!208 = !DILocation(line: 24, column: 1, scope: !14)
!209 = !DIExpression()
!210 = !DILocation(line: 74, column: 23, scope: !20)
!211 = !DILocation(line: 74, column: 32, scope: !20)
!212 = !DILocation(line: 74, column: 41, scope: !20)
!213 = !DILocation(line: 79, column: 7, scope: !20)
!214 = !DILocation(line: 84, column: 43, scope: !20)
!215 = !DILocation(line: 84, column: 28, scope: !20)
!216 = !DILocation(line: 84, column: 32, scope: !20)
!217 = !{!218, !222, i64 136}
!218 = !{!"", !219, i64 0, !219, i64 4, !222, i64 8, !222, i64 16, !222, i64 24, !222, i64 32, !222, i64 40, !222, i64 48, !222, i64 56, !223, i64 64, !222, i64 72, !222, i64 80, !222, i64 88, !222, i64 96, !219, i64 104, !222, i64 112, !223, i64 120, !222, i64 128, !222, i64 136, !222, i64 144}
!219 = !{!"int", !220, i64 0}
!220 = !{!"omnipotent char", !221, i64 0}
!221 = !{!"Simple C/C++ TBAA"}
!222 = !{!"any pointer", !220, i64 0}
!223 = !{!"double", !220, i64 0}
!224 = !{!222, !222, i64 0}
!225 = !DILocation(line: 80, column: 17, scope: !20)
!226 = !DILocation(line: 97, column: 25, scope: !20)
!227 = !DILocation(line: 97, column: 3, scope: !20)
!228 = !DILocation(line: 81, column: 7, scope: !20)
!229 = !DILocation(line: 106, column: 7, scope: !230)
!230 = distinct !DILexicalBlock(scope: !231, file: !1, line: 105, column: 5)
!231 = distinct !DILexicalBlock(scope: !232, file: !1, line: 100, column: 9)
!232 = distinct !DILexicalBlock(scope: !233, file: !1, line: 99, column: 3)
!233 = distinct !DILexicalBlock(scope: !234, file: !1, line: 98, column: 3)
!234 = distinct !DILexicalBlock(scope: !20, file: !1, line: 98, column: 3)
!235 = !DILocation(line: 106, column: 14, scope: !230)
!236 = !DILocation(line: 98, column: 3, scope: !234)
!237 = !DILocation(line: 100, column: 9, scope: !231)
!238 = !{!219, !219, i64 0}
!239 = !DILocation(line: 100, column: 9, scope: !232)
!240 = !DILocation(line: 102, column: 38, scope: !241)
!241 = distinct !DILexicalBlock(scope: !231, file: !1, line: 101, column: 5)
!242 = !DILocation(line: 102, column: 31, scope: !241)
!243 = !DILocation(line: 102, column: 14, scope: !241)
!244 = !{!245, !222, i64 0}
!245 = !{!"Symmetry", !222, i64 0}
!246 = !DILocation(line: 102, column: 7, scope: !241)
!247 = !DILocation(line: 102, column: 29, scope: !241)
!248 = !DILocation(line: 103, column: 5, scope: !241)
!249 = !DILocation(line: 106, column: 29, scope: !230)
!250 = !DILocation(line: 77, column: 3, scope: !20)
!251 = !DILocation(line: 116, column: 26, scope: !20)
!252 = !DILocation(line: 120, column: 12, scope: !108)
!253 = !DILocation(line: 120, column: 23, scope: !108)
!254 = !DILocation(line: 120, column: 32, scope: !108)
!255 = !DILocation(line: 120, column: 42, scope: !108)
!256 = !DILocation(line: 122, column: 33, scope: !108)
!257 = !DILocation(line: 122, column: 11, scope: !108)
!258 = !DILocation(line: 122, column: 9, scope: !108)
!259 = !DILocation(line: 123, column: 1, scope: !108)
!260 = !DILocation(line: 141, column: 23, scope: !116)
!261 = !DILocation(line: 141, column: 32, scope: !116)
!262 = !DILocation(line: 141, column: 49, scope: !116)
!263 = !DILocation(line: 143, column: 8, scope: !116)
!264 = !DILocation(line: 142, column: 7, scope: !116)
!265 = !DILocation(line: 145, column: 9, scope: !266)
!266 = distinct !DILexicalBlock(scope: !116, file: !1, line: 145, column: 7)
!267 = !DILocation(line: 145, column: 7, scope: !116)
!268 = !DILocation(line: 147, column: 12, scope: !269)
!269 = distinct !DILexicalBlock(scope: !266, file: !1, line: 146, column: 3)
!270 = !DILocation(line: 147, column: 5, scope: !269)
!271 = !DILocation(line: 151, column: 5, scope: !272)
!272 = distinct !DILexicalBlock(scope: !266, file: !1, line: 150, column: 3)
!273 = !DILocation(line: 153, column: 5, scope: !272)
!274 = !DILocation(line: 155, column: 1, scope: !116)
!275 = !DILocation(line: 158, column: 12, scope: !124)
!276 = !DILocation(line: 158, column: 23, scope: !124)
!277 = !DILocation(line: 158, column: 32, scope: !124)
!278 = !DILocation(line: 158, column: 37, scope: !124)
!279 = !DILocation(line: 160, column: 3, scope: !124)
!280 = !DILocation(line: 161, column: 11, scope: !124)
!281 = !DILocation(line: 161, column: 9, scope: !124)
!282 = !DILocation(line: 162, column: 3, scope: !124)
!283 = !DILocation(line: 163, column: 1, scope: !124)
!284 = !DILocation(line: 183, column: 23, scope: !136)
!285 = !DILocation(line: 183, column: 32, scope: !136)
!286 = !DILocation(line: 183, column: 41, scope: !136)
!287 = !DILocation(line: 188, column: 7, scope: !136)
!288 = !DILocation(line: 193, column: 43, scope: !136)
!289 = !DILocation(line: 193, column: 28, scope: !136)
!290 = !DILocation(line: 193, column: 32, scope: !136)
!291 = !DILocation(line: 189, column: 17, scope: !136)
!292 = !DILocation(line: 195, column: 16, scope: !136)
!293 = !DILocation(line: 190, column: 7, scope: !136)
!294 = !DILocation(line: 196, column: 16, scope: !136)
!295 = !DILocation(line: 190, column: 18, scope: !136)
!296 = !DILocation(line: 198, column: 17, scope: !297)
!297 = distinct !DILexicalBlock(scope: !136, file: !1, line: 198, column: 7)
!298 = !DILocation(line: 198, column: 7, scope: !136)
!299 = !DILocation(line: 212, column: 25, scope: !300)
!300 = distinct !DILexicalBlock(scope: !301, file: !1, line: 212, column: 3)
!301 = distinct !DILexicalBlock(scope: !136, file: !1, line: 212, column: 3)
!302 = !DILocation(line: 212, column: 3, scope: !301)
!303 = !DILocation(line: 212, column: 36, scope: !300)
!304 = !DILocation(line: 220, column: 28, scope: !305)
!305 = distinct !DILexicalBlock(scope: !300, file: !1, line: 213, column: 3)
!306 = !DILocation(line: 229, column: 9, scope: !307)
!307 = distinct !DILexicalBlock(scope: !308, file: !1, line: 228, column: 7)
!308 = distinct !DILexicalBlock(scope: !309, file: !1, line: 223, column: 11)
!309 = distinct !DILexicalBlock(scope: !310, file: !1, line: 222, column: 5)
!310 = distinct !DILexicalBlock(scope: !311, file: !1, line: 221, column: 5)
!311 = distinct !DILexicalBlock(scope: !305, file: !1, line: 221, column: 5)
!312 = !DILocation(line: 202, column: 9, scope: !313)
!313 = distinct !DILexicalBlock(scope: !297, file: !1, line: 199, column: 3)
!314 = !DILocation(line: 200, column: 5, scope: !313)
!315 = !DILocation(line: 203, column: 5, scope: !313)
!316 = !DILocation(line: 220, column: 5, scope: !305)
!317 = !DILocation(line: 191, column: 7, scope: !136)
!318 = !DILocation(line: 221, column: 5, scope: !311)
!319 = !DILocation(line: 223, column: 11, scope: !308)
!320 = !DILocation(line: 223, column: 11, scope: !309)
!321 = !DILocation(line: 225, column: 33, scope: !322)
!322 = distinct !DILexicalBlock(scope: !308, file: !1, line: 224, column: 7)
!323 = !DILocation(line: 225, column: 26, scope: !322)
!324 = !DILocation(line: 225, column: 9, scope: !322)
!325 = !DILocation(line: 225, column: 2, scope: !322)
!326 = !DILocation(line: 225, column: 24, scope: !322)
!327 = !DILocation(line: 226, column: 7, scope: !322)
!328 = !DILocation(line: 229, column: 2, scope: !307)
!329 = !DILocation(line: 229, column: 24, scope: !307)
!330 = !DILocation(line: 241, column: 1, scope: !136)
!331 = !DILocation(line: 244, column: 12, scope: !182)
!332 = !DILocation(line: 244, column: 23, scope: !182)
!333 = !DILocation(line: 244, column: 32, scope: !182)
!334 = !DILocation(line: 244, column: 42, scope: !182)
!335 = !DILocation(line: 246, column: 33, scope: !182)
!336 = !DILocation(line: 246, column: 11, scope: !182)
!337 = !DILocation(line: 246, column: 9, scope: !182)
!338 = !DILocation(line: 247, column: 1, scope: !182)
!339 = !DILocation(line: 267, column: 23, scope: !188)
!340 = !DILocation(line: 267, column: 32, scope: !188)
!341 = !DILocation(line: 267, column: 49, scope: !188)
!342 = !DILocation(line: 269, column: 12, scope: !188)
!343 = !DILocation(line: 269, column: 7, scope: !188)
!344 = !DILocation(line: 271, column: 9, scope: !345)
!345 = distinct !DILexicalBlock(scope: !188, file: !1, line: 271, column: 7)
!346 = !DILocation(line: 271, column: 7, scope: !188)
!347 = !DILocation(line: 273, column: 12, scope: !348)
!348 = distinct !DILexicalBlock(scope: !345, file: !1, line: 272, column: 3)
!349 = !DILocation(line: 273, column: 5, scope: !348)
!350 = !DILocation(line: 277, column: 5, scope: !351)
!351 = distinct !DILexicalBlock(scope: !345, file: !1, line: 276, column: 3)
!352 = !DILocation(line: 279, column: 5, scope: !351)
!353 = !DILocation(line: 281, column: 1, scope: !188)
!354 = !DILocation(line: 284, column: 12, scope: !194)
!355 = !DILocation(line: 284, column: 23, scope: !194)
!356 = !DILocation(line: 284, column: 32, scope: !194)
!357 = !DILocation(line: 284, column: 37, scope: !194)
!358 = !DILocation(line: 286, column: 3, scope: !194)
!359 = !DILocation(line: 287, column: 11, scope: !194)
!360 = !DILocation(line: 287, column: 9, scope: !194)
!361 = !DILocation(line: 288, column: 3, scope: !194)
!362 = !DILocation(line: 289, column: 1, scope: !194)
