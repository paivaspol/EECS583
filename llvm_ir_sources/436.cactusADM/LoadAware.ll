; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/PUGH/LoadAware.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.anon.0 = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@partition_1D.0 = internal unnamed_addr global i8* null
@partition_2D.0 = internal unnamed_addr global i8* null, align 16
@partition_2D.1 = internal unnamed_addr global i8* null
@partition_3D.0 = internal unnamed_addr global i8* null, align 16
@partition_3D.1 = internal unnamed_addr global i8* null
@partition_3D.2 = internal unnamed_addr global i8* null, align 16
@.str = private unnamed_addr constant [76 x i8] c"../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/PUGH/LoadAware.c\00", align 1
@.str1 = private unnamed_addr constant [5 x i8] c"PUGH\00", align 1
@.str2 = private unnamed_addr constant [30 x i8] c"Only 1D, 2D, and 3D supported\00", align 1
@pughpriv_ = external global %struct.anon.0
@.str3 = private unnamed_addr constant [7 x i8] c"manual\00", align 1
@.str4 = private unnamed_addr constant [55 x i8] c"Only 1D, 2D, and 3D supported in manual topology setup\00", align 1
@.str5 = private unnamed_addr constant [89 x i8] c"$Header: /cactus/CactusPUGH/PUGH/src/LoadAware.c,v 1.10 2002/01/07 13:51:27 tradke Exp $\00", align 1
@.str6 = private unnamed_addr constant [18 x i8] c"Not enough memory\00", align 1
@.str7 = private unnamed_addr constant [61 x i8] c"Wrong partition parameters: expect data for fewer processors\00", align 1
@.str8 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str9 = private unnamed_addr constant [60 x i8] c"Wrong partition parameters: expect data for more processors\00", align 1
@.str10 = private unnamed_addr constant [69 x i8] c"Wrong partition parameters: total number of grid points doesnt match\00", align 1

; Function Attrs: nounwind optsize readnone ssp uwtable
define i8* @CCTKi_version_CactusPUGH_PUGH_LoadAware_c() #0 {
  ret i8* getelementptr inbounds ([89 x i8]* @.str5, i64 0, i64 0), !dbg !149
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @PUGH_SetPartitionInfo(i32 %dim, i8** nocapture readonly %partition_info) #1 {
  tail call void @llvm.dbg.value(metadata i32 %dim, i64 0, metadata !19, metadata !150), !dbg !151
  tail call void @llvm.dbg.value(metadata i8** %partition_info, i64 0, metadata !20, metadata !150), !dbg !152
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !21, metadata !150), !dbg !153
  switch i32 %dim, label %43 [
    i32 1, label %1
    i32 2, label %8
    i32 3, label %22
  ], !dbg !154

; <label>:1                                       ; preds = %0
  %2 = load i8** @partition_1D.0, align 8, !dbg !155, !tbaa !159
  %3 = icmp eq i8* %2, null, !dbg !155
  br i1 %3, label %5, label %4, !dbg !163

; <label>:4                                       ; preds = %1
  tail call void @free(i8* %2) #5, !dbg !164
  br label %5, !dbg !166

; <label>:5                                       ; preds = %1, %4
  %6 = load i8** %partition_info, align 8, !dbg !167, !tbaa !159
  %7 = tail call i8* @strdup(i8* %6) #6, !dbg !168
  store i8* %7, i8** @partition_1D.0, align 8, !dbg !169, !tbaa !159
  br label %45, !dbg !170

; <label>:8                                       ; preds = %0
  %9 = load i8** @partition_2D.0, align 16, !dbg !171, !tbaa !159
  %10 = icmp eq i8* %9, null, !dbg !171
  br i1 %10, label %12, label %11, !dbg !175

; <label>:11                                      ; preds = %8
  tail call void @free(i8* %9) #5, !dbg !176
  br label %12, !dbg !178

; <label>:12                                      ; preds = %8, %11
  %13 = load i8** @partition_2D.1, align 8, !dbg !179, !tbaa !159
  %14 = icmp eq i8* %13, null, !dbg !179
  br i1 %14, label %16, label %15, !dbg !181

; <label>:15                                      ; preds = %12
  tail call void @free(i8* %13) #5, !dbg !182
  br label %16, !dbg !184

; <label>:16                                      ; preds = %12, %15
  %17 = load i8** %partition_info, align 8, !dbg !185, !tbaa !159
  %18 = tail call i8* @strdup(i8* %17) #6, !dbg !186
  store i8* %18, i8** @partition_2D.0, align 16, !dbg !187, !tbaa !159
  %19 = getelementptr inbounds i8** %partition_info, i64 1, !dbg !188
  %20 = load i8** %19, align 8, !dbg !188, !tbaa !159
  %21 = tail call i8* @strdup(i8* %20) #6, !dbg !189
  store i8* %21, i8** @partition_2D.1, align 8, !dbg !190, !tbaa !159
  br label %45, !dbg !191

; <label>:22                                      ; preds = %0
  %23 = load i8** @partition_3D.0, align 16, !dbg !192, !tbaa !159
  %24 = icmp eq i8* %23, null, !dbg !192
  br i1 %24, label %26, label %25, !dbg !196

; <label>:25                                      ; preds = %22
  tail call void @free(i8* %23) #5, !dbg !197
  br label %26, !dbg !199

; <label>:26                                      ; preds = %22, %25
  %27 = load i8** @partition_3D.1, align 8, !dbg !200, !tbaa !159
  %28 = icmp eq i8* %27, null, !dbg !200
  br i1 %28, label %30, label %29, !dbg !202

; <label>:29                                      ; preds = %26
  tail call void @free(i8* %27) #5, !dbg !203
  br label %30, !dbg !205

; <label>:30                                      ; preds = %26, %29
  %31 = load i8** @partition_3D.2, align 16, !dbg !206, !tbaa !159
  %32 = icmp eq i8* %31, null, !dbg !206
  br i1 %32, label %34, label %33, !dbg !208

; <label>:33                                      ; preds = %30
  tail call void @free(i8* %31) #5, !dbg !209
  br label %34, !dbg !211

; <label>:34                                      ; preds = %30, %33
  %35 = load i8** %partition_info, align 8, !dbg !212, !tbaa !159
  %36 = tail call i8* @strdup(i8* %35) #6, !dbg !213
  store i8* %36, i8** @partition_3D.0, align 16, !dbg !214, !tbaa !159
  %37 = getelementptr inbounds i8** %partition_info, i64 1, !dbg !215
  %38 = load i8** %37, align 8, !dbg !215, !tbaa !159
  %39 = tail call i8* @strdup(i8* %38) #6, !dbg !216
  store i8* %39, i8** @partition_3D.1, align 8, !dbg !217, !tbaa !159
  %40 = getelementptr inbounds i8** %partition_info, i64 2, !dbg !218
  %41 = load i8** %40, align 8, !dbg !218, !tbaa !159
  %42 = tail call i8* @strdup(i8* %41) #6, !dbg !219
  store i8* %42, i8** @partition_3D.2, align 16, !dbg !220, !tbaa !159
  br label %45, !dbg !221

; <label>:43                                      ; preds = %0
  %44 = tail call i32 @CCTK_Warn(i32 1, i32 125, i8* getelementptr inbounds ([76 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([30 x i8]* @.str2, i64 0, i64 0)) #6, !dbg !222
  tail call void @llvm.dbg.value(metadata i32 -1, i64 0, metadata !21, metadata !150), !dbg !153
  br label %45

; <label>:45                                      ; preds = %16, %43, %34, %5
  %retval.0 = phi i32 [ 0, %5 ], [ 0, %16 ], [ 0, %34 ], [ -1, %43 ]
  ret i32 %retval.0, !dbg !224
}

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) #2

; Function Attrs: nounwind optsize
declare noalias i8* @strdup(i8* nocapture readonly) #2

; Function Attrs: optsize
declare i32 @CCTK_Warn(i32, i32, i8*, i8*, i8*) #3

; Function Attrs: nounwind optsize ssp uwtable
define i32 @PUGH_GetBounds(i32 %dim, i32** nocapture %bounds, i32* nocapture readonly %nprocs, i32* nocapture readonly %nsize) #1 {
  tail call void @llvm.dbg.value(metadata i32 %dim, i64 0, metadata !27, metadata !150), !dbg !225
  tail call void @llvm.dbg.value(metadata i32** %bounds, i64 0, metadata !28, metadata !150), !dbg !226
  tail call void @llvm.dbg.value(metadata i32* %nprocs, i64 0, metadata !29, metadata !150), !dbg !227
  tail call void @llvm.dbg.value(metadata i32* %nsize, i64 0, metadata !30, metadata !150), !dbg !228
  %1 = load i8** getelementptr inbounds (%struct.anon.0* @pughpriv_, i64 0, i32 2), align 8, !dbg !229, !tbaa !230
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !46, metadata !150), !dbg !229
  %2 = load i8** getelementptr inbounds (%struct.anon.0* @pughpriv_, i64 0, i32 3), align 8, !dbg !229, !tbaa !233
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !47, metadata !150), !dbg !229
  %3 = load i8** getelementptr inbounds (%struct.anon.0* @pughpriv_, i64 0, i32 4), align 8, !dbg !229, !tbaa !234
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !48, metadata !150), !dbg !229
  %4 = load i8** getelementptr inbounds (%struct.anon.0* @pughpriv_, i64 0, i32 5), align 8, !dbg !229, !tbaa !235
  tail call void @llvm.dbg.value(metadata i8* %4, i64 0, metadata !49, metadata !150), !dbg !229
  %5 = load i8** getelementptr inbounds (%struct.anon.0* @pughpriv_, i64 0, i32 6), align 8, !dbg !229, !tbaa !236
  tail call void @llvm.dbg.value(metadata i8* %5, i64 0, metadata !50, metadata !150), !dbg !229
  %6 = load i8** getelementptr inbounds (%struct.anon.0* @pughpriv_, i64 0, i32 7), align 8, !dbg !229, !tbaa !237
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !51, metadata !150), !dbg !229
  %7 = load i8** getelementptr inbounds (%struct.anon.0* @pughpriv_, i64 0, i32 8), align 8, !dbg !229, !tbaa !238
  tail call void @llvm.dbg.value(metadata i8* %7, i64 0, metadata !52, metadata !150), !dbg !229
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !99, metadata !150), !dbg !239
  %8 = tail call i32 @CCTK_Equals(i8* %1, i8* getelementptr inbounds ([7 x i8]* @.str3, i64 0, i64 0)) #6, !dbg !240
  tail call void @llvm.dbg.value(metadata i32 %8, i64 0, metadata !100, metadata !150), !dbg !241
  switch i32 %dim, label %61 [
    i32 1, label %9
    i32 2, label %16
    i32 3, label %34
  ], !dbg !242

; <label>:9                                       ; preds = %0
  %10 = load i8** @partition_1D.0, align 8, !dbg !243, !tbaa !159
  %11 = icmp ne i8* %10, null, !dbg !246
  %12 = select i1 %11, i8* %10, i8* %2, !dbg !247
  tail call void @llvm.dbg.value(metadata i8* %12, i64 0, metadata !102, metadata !150), !dbg !248
  %13 = load i32* %nprocs, align 4, !dbg !249, !tbaa !250
  %14 = load i32* %nsize, align 4, !dbg !251, !tbaa !250
  %not. = icmp ne i32 %8, 0, !dbg !252
  %. = or i1 %not., %11, !dbg !252
  %15 = zext i1 %. to i32, !dbg !252
  tail call fastcc void @PUGH_GetSliceSizes(i32 %13, i32 %14, i8* %12, i32** %bounds, i32 %15) #5, !dbg !253
  br label %.loopexit, !dbg !254

; <label>:16                                      ; preds = %0
  %17 = load i8** @partition_2D.0, align 16, !dbg !255, !tbaa !159
  %18 = icmp ne i8* %17, null, !dbg !258
  %19 = select i1 %18, i8* %17, i8* %3, !dbg !259
  tail call void @llvm.dbg.value(metadata i8* %19, i64 0, metadata !102, metadata !150), !dbg !248
  %20 = load i32* %nprocs, align 4, !dbg !260, !tbaa !250
  %21 = load i32* %nsize, align 4, !dbg !261, !tbaa !250
  %22 = icmp ne i32 %8, 0, !dbg !262
  %.1 = or i1 %22, %18, !dbg !263
  %23 = zext i1 %.1 to i32, !dbg !263
  tail call fastcc void @PUGH_GetSliceSizes(i32 %20, i32 %21, i8* %19, i32** %bounds, i32 %23) #5, !dbg !264
  %24 = load i8** @partition_2D.1, align 8, !dbg !265, !tbaa !159
  %25 = icmp ne i8* %24, null, !dbg !266
  %26 = select i1 %25, i8* %24, i8* %4, !dbg !267
  tail call void @llvm.dbg.value(metadata i8* %26, i64 0, metadata !102, metadata !150), !dbg !248
  %27 = getelementptr inbounds i32* %nprocs, i64 1, !dbg !268
  %28 = load i32* %27, align 4, !dbg !268, !tbaa !250
  %29 = getelementptr inbounds i32* %nsize, i64 1, !dbg !269
  %30 = load i32* %29, align 4, !dbg !269, !tbaa !250
  %31 = getelementptr inbounds i32** %bounds, i64 1, !dbg !270
  %32 = or i1 %22, %25, !dbg !271
  %33 = zext i1 %32 to i32, !dbg !271
  tail call fastcc void @PUGH_GetSliceSizes(i32 %28, i32 %30, i8* %26, i32** %31, i32 %33) #5, !dbg !272
  br label %.loopexit, !dbg !273

; <label>:34                                      ; preds = %0
  %35 = load i8** @partition_3D.0, align 16, !dbg !274, !tbaa !159
  %36 = icmp ne i8* %35, null, !dbg !277
  %37 = select i1 %36, i8* %35, i8* %5, !dbg !278
  tail call void @llvm.dbg.value(metadata i8* %37, i64 0, metadata !102, metadata !150), !dbg !248
  %38 = load i32* %nprocs, align 4, !dbg !279, !tbaa !250
  %39 = load i32* %nsize, align 4, !dbg !280, !tbaa !250
  %40 = icmp ne i32 %8, 0, !dbg !281
  %.2 = or i1 %40, %36, !dbg !282
  %41 = zext i1 %.2 to i32, !dbg !282
  tail call fastcc void @PUGH_GetSliceSizes(i32 %38, i32 %39, i8* %37, i32** %bounds, i32 %41) #5, !dbg !283
  %42 = load i8** @partition_3D.1, align 8, !dbg !284, !tbaa !159
  %43 = icmp ne i8* %42, null, !dbg !285
  %44 = select i1 %43, i8* %42, i8* %6, !dbg !286
  tail call void @llvm.dbg.value(metadata i8* %44, i64 0, metadata !102, metadata !150), !dbg !248
  %45 = getelementptr inbounds i32* %nprocs, i64 1, !dbg !287
  %46 = load i32* %45, align 4, !dbg !287, !tbaa !250
  %47 = getelementptr inbounds i32* %nsize, i64 1, !dbg !288
  %48 = load i32* %47, align 4, !dbg !288, !tbaa !250
  %49 = getelementptr inbounds i32** %bounds, i64 1, !dbg !289
  %50 = or i1 %40, %43, !dbg !290
  %51 = zext i1 %50 to i32, !dbg !290
  tail call fastcc void @PUGH_GetSliceSizes(i32 %46, i32 %48, i8* %44, i32** %49, i32 %51) #5, !dbg !291
  %52 = load i8** @partition_3D.2, align 16, !dbg !292, !tbaa !159
  %53 = icmp ne i8* %52, null, !dbg !293
  %54 = select i1 %53, i8* %52, i8* %7, !dbg !294
  tail call void @llvm.dbg.value(metadata i8* %54, i64 0, metadata !102, metadata !150), !dbg !248
  %55 = getelementptr inbounds i32* %nprocs, i64 2, !dbg !295
  %56 = load i32* %55, align 4, !dbg !295, !tbaa !250
  %57 = getelementptr inbounds i32* %nsize, i64 2, !dbg !296
  %58 = load i32* %57, align 4, !dbg !296, !tbaa !250
  %59 = getelementptr inbounds i32** %bounds, i64 2, !dbg !297
  %.3 = or i1 %40, %53, !dbg !298
  %60 = zext i1 %.3 to i32, !dbg !298
  tail call fastcc void @PUGH_GetSliceSizes(i32 %56, i32 %58, i8* %54, i32** %59, i32 %60) #5, !dbg !299
  br label %.loopexit, !dbg !300

; <label>:61                                      ; preds = %0
  %62 = icmp eq i32 %8, 0, !dbg !301
  br i1 %62, label %.preheader, label %65, !dbg !304

.preheader:                                       ; preds = %61
  %63 = icmp sgt i32 %dim, 0, !dbg !305
  br i1 %63, label %.lr.ph, label %.loopexit, !dbg !309

.lr.ph:                                           ; preds = %.preheader
  %64 = add i32 %dim, -1, !dbg !309
  br label %67, !dbg !309

; <label>:65                                      ; preds = %61
  %66 = tail call i32 @CCTK_Warn(i32 1, i32 222, i8* getelementptr inbounds ([76 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([55 x i8]* @.str4, i64 0, i64 0)) #6, !dbg !310
  tail call void @llvm.dbg.value(metadata i32 -1, i64 0, metadata !99, metadata !150), !dbg !239
  br label %.loopexit, !dbg !312

; <label>:67                                      ; preds = %67, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %67 ]
  %68 = getelementptr inbounds i32* %nprocs, i64 %indvars.iv, !dbg !313
  %69 = load i32* %68, align 4, !dbg !313, !tbaa !250
  %70 = getelementptr inbounds i32* %nsize, i64 %indvars.iv, !dbg !315
  %71 = load i32* %70, align 4, !dbg !315, !tbaa !250
  %72 = getelementptr inbounds i32** %bounds, i64 %indvars.iv, !dbg !316
  tail call fastcc void @PUGH_GetSliceSizes(i32 %69, i32 %71, i8* null, i32** %72, i32 0) #5, !dbg !317
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !309
  %lftr.wideiv = trunc i64 %indvars.iv to i32, !dbg !309
  %exitcond = icmp eq i32 %lftr.wideiv, %64, !dbg !309
  br i1 %exitcond, label %.loopexit, label %67, !dbg !309

.loopexit:                                        ; preds = %67, %.preheader, %16, %65, %34, %9
  %retval.0 = phi i32 [ 0, %9 ], [ 0, %16 ], [ 0, %34 ], [ -1, %65 ], [ 0, %.preheader ], [ 0, %67 ]
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !95, metadata !150), !dbg !229
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !95, metadata !150), !dbg !229
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !95, metadata !150), !dbg !229
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !95, metadata !150), !dbg !229
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !95, metadata !150), !dbg !229
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !95, metadata !150), !dbg !229
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !95, metadata !150), !dbg !229
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !95, metadata !150), !dbg !229
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !95, metadata !150), !dbg !229
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !95, metadata !150), !dbg !229
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !95, metadata !150), !dbg !229
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !95, metadata !150), !dbg !229
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !95, metadata !150), !dbg !229
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !95, metadata !150), !dbg !229
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !95, metadata !150), !dbg !229
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !95, metadata !150), !dbg !229
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !95, metadata !150), !dbg !229
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !95, metadata !150), !dbg !229
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !95, metadata !150), !dbg !229
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !95, metadata !150), !dbg !229
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !95, metadata !150), !dbg !229
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !95, metadata !150), !dbg !229
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !95, metadata !150), !dbg !229
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !95, metadata !150), !dbg !229
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !95, metadata !150), !dbg !229
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !95, metadata !150), !dbg !229
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !95, metadata !150), !dbg !229
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !95, metadata !150), !dbg !229
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !95, metadata !150), !dbg !229
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !95, metadata !150), !dbg !229
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !95, metadata !150), !dbg !229
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !95, metadata !150), !dbg !229
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !95, metadata !150), !dbg !229
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !95, metadata !150), !dbg !229
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !95, metadata !150), !dbg !229
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !95, metadata !150), !dbg !229
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !95, metadata !150), !dbg !229
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !95, metadata !150), !dbg !229
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !95, metadata !150), !dbg !229
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !95, metadata !150), !dbg !229
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !95, metadata !150), !dbg !229
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !95, metadata !150), !dbg !229
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !95, metadata !150), !dbg !229
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !95, metadata !150), !dbg !229
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !95, metadata !150), !dbg !229
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !95, metadata !150), !dbg !229
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !95, metadata !150), !dbg !229
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !95, metadata !150), !dbg !229
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !95, metadata !150), !dbg !229
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !95, metadata !150), !dbg !229
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !95, metadata !150), !dbg !229
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !95, metadata !150), !dbg !229
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !95, metadata !150), !dbg !229
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !95, metadata !150), !dbg !229
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !95, metadata !150), !dbg !229
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !95, metadata !150), !dbg !229
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !95, metadata !150), !dbg !229
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !95, metadata !150), !dbg !229
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !95, metadata !150), !dbg !229
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !95, metadata !150), !dbg !229
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !95, metadata !150), !dbg !229
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !95, metadata !150), !dbg !229
  ret i32 %retval.0, !dbg !318
}

; Function Attrs: optsize
declare i32 @CCTK_Equals(i8*, i8*) #3

; Function Attrs: nounwind optsize ssp uwtable
define internal fastcc void @PUGH_GetSliceSizes(i32 %np, i32 %grid_points, i8* nocapture readonly %slicesS, i32** nocapture %slices, i32 %manual) #1 {
  %tmp = alloca i32, align 4
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !113, metadata !150), !dbg !319
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !114, metadata !150), !dbg !320
  %1 = sext i32 %np to i64, !dbg !321
  %2 = shl nsw i64 %1, 2, !dbg !322
  %3 = tail call i8* @malloc(i64 %2) #6, !dbg !323
  %4 = bitcast i32** %slices to i8**, !dbg !324
  store i8* %3, i8** %4, align 8, !dbg !324, !tbaa !159
  %5 = icmp eq i8* %3, null, !dbg !325
  %6 = bitcast i8* %3 to i32*
  br i1 %5, label %7, label %9, !dbg !327

; <label>:7                                       ; preds = %0
  %8 = tail call i32 @CCTK_Warn(i32 1, i32 293, i8* getelementptr inbounds ([76 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8]* @.str6, i64 0, i64 0)) #6, !dbg !328
  br label %.loopexit, !dbg !330

; <label>:9                                       ; preds = %0
  %10 = icmp eq i32 %manual, 0, !dbg !331
  br i1 %10, label %.preheader, label %14, !dbg !333

.preheader:                                       ; preds = %14, %9
  %11 = icmp sgt i32 %np, 0, !dbg !334
  br i1 %11, label %.lr.ph, label %.loopexit, !dbg !338

.lr.ph:                                           ; preds = %.preheader
  %12 = add i32 %grid_points, -1, !dbg !339
  %13 = add i32 %np, -1, !dbg !338
  br label %52, !dbg !338

; <label>:14                                      ; preds = %9
  %strlenfirst = load i8* %slicesS, align 1, !dbg !341
  %15 = icmp eq i8 %strlenfirst, 0, !dbg !342
  br i1 %15, label %.preheader, label %.lr.ph15.preheader, !dbg !343

.lr.ph15.preheader:                               ; preds = %14
  %16 = icmp sgt i32 %np, 0, !dbg !344
  br i1 %16, label %.lr.ph34, label %.lr.ph15._crit_edge, !dbg !348

.lr.ph15.loopexit:                                ; preds = %.lr.ph9
  %17 = icmp slt i64 %indvars.iv.next22, %1, !dbg !344
  br i1 %17, label %.lr.ph34, label %.lr.ph15._crit_edge, !dbg !348

.lr.ph15._crit_edge:                              ; preds = %.lr.ph15.loopexit, %.lr.ph15.preheader
  %18 = call i32 @CCTK_Warn(i32 1, i32 304, i8* getelementptr inbounds ([76 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([61 x i8]* @.str7, i64 0, i64 0)) #6, !dbg !349
  br label %.loopexit, !dbg !351

.lr.ph34:                                         ; preds = %.lr.ph15.preheader, %.lr.ph15.loopexit
  %.011233 = phi i8* [ %.28, %.lr.ph15.loopexit ], [ %slicesS, %.lr.ph15.preheader ]
  %rt.01432 = phi i32 [ %31, %.lr.ph15.loopexit ], [ 0, %.lr.ph15.preheader ]
  %indvars.iv2131 = phi i64 [ %indvars.iv.next22, %.lr.ph15.loopexit ], [ 0, %.lr.ph15.preheader ]
  call void @llvm.dbg.value(metadata i32* %tmp, i64 0, metadata !112, metadata !150), !dbg !352
  %19 = call i32 (i8*, i8*, ...)* @sscanf(i8* %.011233, i8* getelementptr inbounds ([3 x i8]* @.str8, i64 0, i64 0), i32* %tmp) #6, !dbg !353
  %20 = trunc i64 %indvars.iv2131 to i32, !dbg !354
  %21 = icmp eq i32 %20, 0, !dbg !354
  br i1 %21, label %22, label %25, !dbg !356

; <label>:22                                      ; preds = %.lr.ph34
  %23 = load i32** %slices, align 8, !dbg !357, !tbaa !159
  %24 = getelementptr inbounds i32* %23, i64 %indvars.iv2131, !dbg !359
  store i32 0, i32* %24, align 4, !dbg !360, !tbaa !250
  br label %29, !dbg !361

; <label>:25                                      ; preds = %.lr.ph34
  %26 = add nsw i32 %rt.01432, -1, !dbg !362
  %27 = load i32** %slices, align 8, !dbg !364, !tbaa !159
  %28 = getelementptr inbounds i32* %27, i64 %indvars.iv2131, !dbg !365
  store i32 %26, i32* %28, align 4, !dbg !366, !tbaa !250
  br label %29

; <label>:29                                      ; preds = %25, %22
  call void @llvm.dbg.value(metadata i32* %tmp, i64 0, metadata !112, metadata !150), !dbg !352
  %30 = load i32* %tmp, align 4, !dbg !367, !tbaa !250
  %31 = add nsw i32 %30, %rt.01432, !dbg !368
  call void @llvm.dbg.value(metadata i32 %31, i64 0, metadata !114, metadata !150), !dbg !320
  br label %32, !dbg !369

; <label>:32                                      ; preds = %32, %29
  %.1 = phi i8* [ %.011233, %29 ], [ %35, %32 ]
  %33 = load i8* %.1, align 1, !dbg !370, !tbaa !371
  %34 = sext i8 %33 to i32, !dbg !372
  %isdigittmp = add nsw i32 %34, -48, !dbg !373
  %isdigit = icmp ult i32 %isdigittmp, 10, !dbg !373
  %35 = getelementptr inbounds i8* %.1, i64 1, !dbg !374
  call void @llvm.dbg.value(metadata i8* %35, i64 0, metadata !109, metadata !150), !dbg !376
  br i1 %isdigit, label %32, label %.preheader3, !dbg !369

.preheader3:                                      ; preds = %32
  %indvars.iv.next22 = add nuw nsw i64 %indvars.iv2131, 1, !dbg !377
  %36 = icmp eq i8 %33, 0, !dbg !378
  br i1 %36, label %.loopexit24, label %.lr.ph9, !dbg !379

.lr.ph9:                                          ; preds = %.preheader3, %40
  %37 = phi i8 [ %42, %40 ], [ %33, %.preheader3 ]
  %.28 = phi i8* [ %41, %40 ], [ %.1, %.preheader3 ]
  %38 = sext i8 %37 to i32, !dbg !378
  %isdigittmp1 = add nsw i32 %38, -48, !dbg !380
  %39 = icmp ugt i32 %isdigittmp1, 9, !dbg !381
  br i1 %39, label %40, label %.lr.ph15.loopexit, !dbg !382

; <label>:40                                      ; preds = %.lr.ph9
  %41 = getelementptr inbounds i8* %.28, i64 1, !dbg !383
  call void @llvm.dbg.value(metadata i8* %41, i64 0, metadata !109, metadata !150), !dbg !376
  %42 = load i8* %41, align 1, !dbg !378, !tbaa !371
  %43 = icmp eq i8 %42, 0, !dbg !378
  br i1 %43, label %.loopexit24, label %.lr.ph9, !dbg !379

.loopexit24:                                      ; preds = %.preheader3, %40
  %44 = trunc i64 %indvars.iv.next22 to i32, !dbg !377
  %45 = icmp eq i32 %44, %np, !dbg !385
  br i1 %45, label %48, label %46, !dbg !387

; <label>:46                                      ; preds = %.loopexit24
  %47 = call i32 @CCTK_Warn(i32 1, i32 331, i8* getelementptr inbounds ([76 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([60 x i8]* @.str9, i64 0, i64 0)) #6, !dbg !388
  br label %.loopexit, !dbg !390

; <label>:48                                      ; preds = %.loopexit24
  %49 = icmp eq i32 %31, %grid_points, !dbg !391
  br i1 %49, label %.loopexit, label %50, !dbg !393

; <label>:50                                      ; preds = %48
  %51 = call i32 @CCTK_Warn(i32 1, i32 338, i8* getelementptr inbounds ([76 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([69 x i8]* @.str10, i64 0, i64 0)) #6, !dbg !394
  br label %.loopexit, !dbg !396

; <label>:52                                      ; preds = %52, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %52 ]
  %rt.17 = phi i32 [ 0, %.lr.ph ], [ %58, %52 ]
  %53 = getelementptr inbounds i32* %6, i64 %indvars.iv, !dbg !397
  store i32 %rt.17, i32* %53, align 4, !dbg !398, !tbaa !250
  %54 = sub i32 %12, %rt.17, !dbg !399
  %55 = sub nsw i64 %1, %indvars.iv, !dbg !400
  %56 = trunc i64 %55 to i32, !dbg !401
  %57 = sdiv i32 %54, %56, !dbg !401
  tail call void @llvm.dbg.value(metadata i32 %57, i64 0, metadata !112, metadata !150), !dbg !352
  store i32 %57, i32* %tmp, align 4, !dbg !402, !tbaa !250
  %58 = add nsw i32 %57, %rt.17, !dbg !403
  tail call void @llvm.dbg.value(metadata i32 %58, i64 0, metadata !114, metadata !150), !dbg !320
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !338
  %lftr.wideiv = trunc i64 %indvars.iv to i32, !dbg !338
  %exitcond = icmp eq i32 %lftr.wideiv, %13, !dbg !338
  br i1 %exitcond, label %.loopexit, label %52, !dbg !338

.loopexit:                                        ; preds = %52, %.preheader, %48, %50, %46, %.lr.ph15._crit_edge, %7
  ret void
}

; Function Attrs: nounwind optsize
declare noalias i8* @malloc(i64) #2

; Function Attrs: nounwind optsize
declare i32 @sscanf(i8* nocapture readonly, i8* nocapture readonly, ...) #2

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #4

attributes #0 = { nounwind optsize readnone ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone }
attributes #5 = { optsize }
attributes #6 = { nounwind optsize }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!145, !146, !147}
!llvm.ident = !{!148}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !3, subprograms: !10, globals: !130, imports: !2)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/PUGH/LoadAware.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{}
!3 = !{!4, !5, !8, !9}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64, align: 64)
!6 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!7 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!8 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64, align: 64)
!9 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!10 = !{!11, !14, !22, !103, !115, !121}
!11 = !DISubprogram(name: "CCTKi_version_CactusPUGH_PUGH_LoadAware_c", scope: !1, file: !1, line: 25, type: !12, isLocal: false, isDefinition: true, scopeLine: 25, flags: DIFlagPrototyped, isOptimized: true, function: i8* ()* @CCTKi_version_CactusPUGH_PUGH_LoadAware_c, variables: !2)
!12 = !DISubroutineType(types: !13)
!13 = !{!5}
!14 = !DISubprogram(name: "PUGH_SetPartitionInfo", scope: !1, file: !1, line: 78, type: !15, isLocal: false, isDefinition: true, scopeLine: 79, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i32, i8**)* @PUGH_SetPartitionInfo, variables: !18)
!15 = !DISubroutineType(types: !16)
!16 = !{!9, !9, !17}
!17 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64, align: 64)
!18 = !{!19, !20, !21}
!19 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "dim", arg: 1, scope: !14, file: !1, line: 78, type: !9)
!20 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "partition_info", arg: 2, scope: !14, file: !1, line: 78, type: !17)
!21 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "retval", scope: !14, file: !1, line: 80, type: !9)
!22 = !DISubprogram(name: "PUGH_GetBounds", scope: !1, file: !1, line: 169, type: !23, isLocal: false, isDefinition: true, scopeLine: 170, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i32, i32**, i32*, i32*)* @PUGH_GetBounds, variables: !26)
!23 = !DISubroutineType(types: !24)
!24 = !{!9, !9, !25, !8, !8}
!25 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64, align: 64)
!26 = !{!27, !28, !29, !30, !31, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !92, !93, !94, !95, !98, !99, !100, !101, !102}
!27 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "dim", arg: 1, scope: !22, file: !1, line: 169, type: !9)
!28 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "bounds", arg: 2, scope: !22, file: !1, line: 169, type: !25)
!29 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "nprocs", arg: 3, scope: !22, file: !1, line: 169, type: !8)
!30 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "nsize", arg: 4, scope: !22, file: !1, line: 169, type: !8)
!31 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ghost_size", scope: !22, file: !1, line: 171, type: !32)
!32 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !9)
!33 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ghost_size_x", scope: !22, file: !1, line: 171, type: !32)
!34 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ghost_size_y", scope: !22, file: !1, line: 171, type: !32)
!35 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ghost_size_z", scope: !22, file: !1, line: 171, type: !32)
!36 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "global_nsize", scope: !22, file: !1, line: 171, type: !32)
!37 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "global_nx", scope: !22, file: !1, line: 171, type: !32)
!38 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "global_ny", scope: !22, file: !1, line: 171, type: !32)
!39 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "global_nz", scope: !22, file: !1, line: 171, type: !32)
!40 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "periodic", scope: !22, file: !1, line: 171, type: !32)
!41 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "periodic_x", scope: !22, file: !1, line: 171, type: !32)
!42 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "periodic_y", scope: !22, file: !1, line: 171, type: !32)
!43 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "periodic_z", scope: !22, file: !1, line: 171, type: !32)
!44 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "info", scope: !22, file: !1, line: 171, type: !5)
!45 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "initialize_memory", scope: !22, file: !1, line: 171, type: !5)
!46 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "partition", scope: !22, file: !1, line: 171, type: !5)
!47 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "partition_1d_x", scope: !22, file: !1, line: 171, type: !5)
!48 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "partition_2d_x", scope: !22, file: !1, line: 171, type: !5)
!49 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "partition_2d_y", scope: !22, file: !1, line: 171, type: !5)
!50 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "partition_3d_x", scope: !22, file: !1, line: 171, type: !5)
!51 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "partition_3d_y", scope: !22, file: !1, line: 171, type: !5)
!52 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "partition_3d_z", scope: !22, file: !1, line: 171, type: !5)
!53 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "processor_topology", scope: !22, file: !1, line: 171, type: !5)
!54 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "storage_verbose", scope: !22, file: !1, line: 171, type: !5)
!55 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cacheline_mult", scope: !22, file: !1, line: 171, type: !32)
!56 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "enable_all_storage", scope: !22, file: !1, line: 171, type: !32)
!57 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "local_nsize", scope: !22, file: !1, line: 171, type: !32)
!58 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "local_nx", scope: !22, file: !1, line: 171, type: !32)
!59 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "local_ny", scope: !22, file: !1, line: 171, type: !32)
!60 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "local_nz", scope: !22, file: !1, line: 171, type: !32)
!61 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "overloadabort", scope: !22, file: !1, line: 171, type: !32)
!62 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "overloadarraygroupsizeb", scope: !22, file: !1, line: 171, type: !32)
!63 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "overloadbarrier", scope: !22, file: !1, line: 171, type: !32)
!64 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "overloaddisablegroupcomm", scope: !22, file: !1, line: 171, type: !32)
!65 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "overloaddisablegroupstorage", scope: !22, file: !1, line: 171, type: !32)
!66 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "overloadenablegroupcomm", scope: !22, file: !1, line: 171, type: !32)
!67 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "overloadenablegroupstorage", scope: !22, file: !1, line: 171, type: !32)
!68 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "overloadevolve", scope: !22, file: !1, line: 171, type: !32)
!69 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "overloadexit", scope: !22, file: !1, line: 171, type: !32)
!70 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "overloadgroupdynamicdata", scope: !22, file: !1, line: 171, type: !32)
!71 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "overloadmyproc", scope: !22, file: !1, line: 171, type: !32)
!72 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "overloadnprocs", scope: !22, file: !1, line: 171, type: !32)
!73 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "overloadparallelinit", scope: !22, file: !1, line: 171, type: !32)
!74 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "overloadquerygroupstorageb", scope: !22, file: !1, line: 171, type: !32)
!75 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "overloadsyncgroup", scope: !22, file: !1, line: 171, type: !32)
!76 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "padding_active", scope: !22, file: !1, line: 171, type: !32)
!77 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "padding_address_spacing", scope: !22, file: !1, line: 171, type: !32)
!78 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "padding_cacheline_bits", scope: !22, file: !1, line: 171, type: !32)
!79 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "padding_size", scope: !22, file: !1, line: 171, type: !32)
!80 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "processor_topology_1d_x", scope: !22, file: !1, line: 171, type: !32)
!81 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "processor_topology_2d_x", scope: !22, file: !1, line: 171, type: !32)
!82 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "processor_topology_2d_y", scope: !22, file: !1, line: 171, type: !32)
!83 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "processor_topology_3d_x", scope: !22, file: !1, line: 171, type: !32)
!84 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "processor_topology_3d_y", scope: !22, file: !1, line: 171, type: !32)
!85 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "processor_topology_3d_z", scope: !22, file: !1, line: 171, type: !32)
!86 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "storage_report_every", scope: !22, file: !1, line: 171, type: !32)
!87 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "timer_output", scope: !22, file: !1, line: 171, type: !32)
!88 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "terminate", scope: !22, file: !1, line: 171, type: !5)
!89 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cctk_initial_time", scope: !22, file: !1, line: 171, type: !90)
!90 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !91)
!91 = !DIBasicType(name: "double", size: 64, align: 64, encoding: DW_ATE_float)
!92 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cctk_final_time", scope: !22, file: !1, line: 171, type: !90)
!93 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cctk_itlast", scope: !22, file: !1, line: 171, type: !32)
!94 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "terminate_next", scope: !22, file: !1, line: 171, type: !32)
!95 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cctk_pdummy_pointer", scope: !22, file: !1, line: 171, type: !96)
!96 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !97, size: 64, align: 64)
!97 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!98 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !22, file: !1, line: 172, type: !9)
!99 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "retval", scope: !22, file: !1, line: 172, type: !9)
!100 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "manual", scope: !22, file: !1, line: 172, type: !9)
!101 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "external_manual", scope: !22, file: !1, line: 172, type: !9)
!102 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "partition_info", scope: !22, file: !1, line: 173, type: !5)
!103 = !DISubprogram(name: "PUGH_GetSliceSizes", scope: !1, file: !1, line: 281, type: !104, isLocal: true, isDefinition: true, scopeLine: 286, flags: DIFlagPrototyped, isOptimized: true, function: void (i32, i32, i8*, i32**, i32)* @PUGH_GetSliceSizes, variables: !106)
!104 = !DISubroutineType(types: !105)
!105 = !{!9, !9, !9, !5, !25, !9}
!106 = !{!107, !108, !109, !110, !111, !112, !113, !114}
!107 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "np", arg: 1, scope: !103, file: !1, line: 281, type: !9)
!108 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "grid_points", arg: 2, scope: !103, file: !1, line: 282, type: !9)
!109 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "slicesS", arg: 3, scope: !103, file: !1, line: 283, type: !5)
!110 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "slices", arg: 4, scope: !103, file: !1, line: 284, type: !25)
!111 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "manual", arg: 5, scope: !103, file: !1, line: 285, type: !9)
!112 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tmp", scope: !103, file: !1, line: 287, type: !9)
!113 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !103, file: !1, line: 287, type: !9)
!114 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "rt", scope: !103, file: !1, line: 287, type: !9)
!115 = !DISubprogram(name: "isdigit", scope: !116, file: !116, line: 237, type: !117, isLocal: false, isDefinition: true, scopeLine: 238, flags: DIFlagPrototyped, isOptimized: true, variables: !119)
!116 = !DIFile(filename: "/usr/include/ctype.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!117 = !DISubroutineType(types: !118)
!118 = !{!9, !9}
!119 = !{!120}
!120 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "_c", arg: 1, scope: !115, file: !116, line: 237, type: !9)
!121 = !DISubprogram(name: "__isctype", scope: !116, file: !116, line: 164, type: !122, isLocal: false, isDefinition: true, scopeLine: 165, flags: DIFlagPrototyped, isOptimized: true, variables: !127)
!122 = !DISubroutineType(types: !123)
!123 = !{!124, !124, !126}
!124 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_ct_rune_t", file: !125, line: 70, baseType: !9)
!125 = !DIFile(filename: "/usr/include/i386/_types.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!126 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!127 = !{!128, !129}
!128 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "_c", arg: 1, scope: !121, file: !116, line: 164, type: !124)
!129 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "_f", arg: 2, scope: !121, file: !116, line: 164, type: !126)
!130 = !{!131, !132, !137, !141}
!131 = !DIGlobalVariable(name: "rcsid", scope: !0, file: !1, line: 23, type: !5, isLocal: true, isDefinition: true)
!132 = !DIGlobalVariable(name: "partition_1D", scope: !0, file: !1, line: 40, type: !133, isLocal: true, isDefinition: true)
!133 = !DICompositeType(tag: DW_TAG_array_type, baseType: !134, size: 64, align: 64, elements: !135)
!134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64, align: 64)
!135 = !{!136}
!136 = !DISubrange(count: 1)
!137 = !DIGlobalVariable(name: "partition_2D", scope: !0, file: !1, line: 41, type: !138, isLocal: true, isDefinition: true)
!138 = !DICompositeType(tag: DW_TAG_array_type, baseType: !134, size: 128, align: 64, elements: !139)
!139 = !{!140}
!140 = !DISubrange(count: 2)
!141 = !DIGlobalVariable(name: "partition_3D", scope: !0, file: !1, line: 42, type: !142, isLocal: true, isDefinition: true)
!142 = !DICompositeType(tag: DW_TAG_array_type, baseType: !134, size: 192, align: 64, elements: !143)
!143 = !{!144}
!144 = !DISubrange(count: 3)
!145 = !{i32 2, !"Dwarf Version", i32 2}
!146 = !{i32 2, !"Debug Info Version", i32 700000003}
!147 = !{i32 1, !"PIC Level", i32 2}
!148 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!149 = !DILocation(line: 25, column: 1, scope: !11)
!150 = !DIExpression()
!151 = !DILocation(line: 78, column: 32, scope: !14)
!152 = !DILocation(line: 78, column: 49, scope: !14)
!153 = !DILocation(line: 80, column: 7, scope: !14)
!154 = !DILocation(line: 84, column: 7, scope: !14)
!155 = !DILocation(line: 86, column: 9, scope: !156)
!156 = distinct !DILexicalBlock(scope: !157, file: !1, line: 86, column: 9)
!157 = distinct !DILexicalBlock(scope: !158, file: !1, line: 85, column: 3)
!158 = distinct !DILexicalBlock(scope: !14, file: !1, line: 84, column: 7)
!159 = !{!160, !160, i64 0}
!160 = !{!"any pointer", !161, i64 0}
!161 = !{!"omnipotent char", !162, i64 0}
!162 = !{!"Simple C/C++ TBAA"}
!163 = !DILocation(line: 86, column: 9, scope: !157)
!164 = !DILocation(line: 88, column: 7, scope: !165)
!165 = distinct !DILexicalBlock(scope: !156, file: !1, line: 87, column: 5)
!166 = !DILocation(line: 89, column: 5, scope: !165)
!167 = !DILocation(line: 90, column: 31, scope: !157)
!168 = !DILocation(line: 90, column: 23, scope: !157)
!169 = !DILocation(line: 90, column: 21, scope: !157)
!170 = !DILocation(line: 91, column: 3, scope: !157)
!171 = !DILocation(line: 94, column: 9, scope: !172)
!172 = distinct !DILexicalBlock(scope: !173, file: !1, line: 94, column: 9)
!173 = distinct !DILexicalBlock(scope: !174, file: !1, line: 93, column: 3)
!174 = distinct !DILexicalBlock(scope: !158, file: !1, line: 92, column: 12)
!175 = !DILocation(line: 94, column: 9, scope: !173)
!176 = !DILocation(line: 96, column: 7, scope: !177)
!177 = distinct !DILexicalBlock(scope: !172, file: !1, line: 95, column: 5)
!178 = !DILocation(line: 97, column: 5, scope: !177)
!179 = !DILocation(line: 98, column: 9, scope: !180)
!180 = distinct !DILexicalBlock(scope: !173, file: !1, line: 98, column: 9)
!181 = !DILocation(line: 98, column: 9, scope: !173)
!182 = !DILocation(line: 100, column: 7, scope: !183)
!183 = distinct !DILexicalBlock(scope: !180, file: !1, line: 99, column: 5)
!184 = !DILocation(line: 101, column: 5, scope: !183)
!185 = !DILocation(line: 102, column: 31, scope: !173)
!186 = !DILocation(line: 102, column: 23, scope: !173)
!187 = !DILocation(line: 102, column: 21, scope: !173)
!188 = !DILocation(line: 103, column: 31, scope: !173)
!189 = !DILocation(line: 103, column: 23, scope: !173)
!190 = !DILocation(line: 103, column: 21, scope: !173)
!191 = !DILocation(line: 104, column: 3, scope: !173)
!192 = !DILocation(line: 107, column: 9, scope: !193)
!193 = distinct !DILexicalBlock(scope: !194, file: !1, line: 107, column: 9)
!194 = distinct !DILexicalBlock(scope: !195, file: !1, line: 106, column: 3)
!195 = distinct !DILexicalBlock(scope: !174, file: !1, line: 105, column: 12)
!196 = !DILocation(line: 107, column: 9, scope: !194)
!197 = !DILocation(line: 109, column: 7, scope: !198)
!198 = distinct !DILexicalBlock(scope: !193, file: !1, line: 108, column: 5)
!199 = !DILocation(line: 110, column: 5, scope: !198)
!200 = !DILocation(line: 111, column: 9, scope: !201)
!201 = distinct !DILexicalBlock(scope: !194, file: !1, line: 111, column: 9)
!202 = !DILocation(line: 111, column: 9, scope: !194)
!203 = !DILocation(line: 113, column: 7, scope: !204)
!204 = distinct !DILexicalBlock(scope: !201, file: !1, line: 112, column: 5)
!205 = !DILocation(line: 114, column: 5, scope: !204)
!206 = !DILocation(line: 115, column: 9, scope: !207)
!207 = distinct !DILexicalBlock(scope: !194, file: !1, line: 115, column: 9)
!208 = !DILocation(line: 115, column: 9, scope: !194)
!209 = !DILocation(line: 117, column: 7, scope: !210)
!210 = distinct !DILexicalBlock(scope: !207, file: !1, line: 116, column: 5)
!211 = !DILocation(line: 118, column: 5, scope: !210)
!212 = !DILocation(line: 119, column: 31, scope: !194)
!213 = !DILocation(line: 119, column: 23, scope: !194)
!214 = !DILocation(line: 119, column: 21, scope: !194)
!215 = !DILocation(line: 120, column: 31, scope: !194)
!216 = !DILocation(line: 120, column: 23, scope: !194)
!217 = !DILocation(line: 120, column: 21, scope: !194)
!218 = !DILocation(line: 121, column: 31, scope: !194)
!219 = !DILocation(line: 121, column: 23, scope: !194)
!220 = !DILocation(line: 121, column: 21, scope: !194)
!221 = !DILocation(line: 122, column: 3, scope: !194)
!222 = !DILocation(line: 125, column: 5, scope: !223)
!223 = distinct !DILexicalBlock(scope: !195, file: !1, line: 124, column: 3)
!224 = !DILocation(line: 129, column: 3, scope: !14)
!225 = !DILocation(line: 169, column: 25, scope: !22)
!226 = !DILocation(line: 169, column: 35, scope: !22)
!227 = !DILocation(line: 169, column: 49, scope: !22)
!228 = !DILocation(line: 169, column: 63, scope: !22)
!229 = !DILocation(line: 171, column: 3, scope: !22)
!230 = !{!231, !160, i64 16}
!231 = !{!"", !160, i64 0, !160, i64 8, !160, i64 16, !160, i64 24, !160, i64 32, !160, i64 40, !160, i64 48, !160, i64 56, !160, i64 64, !160, i64 72, !160, i64 80, !232, i64 88, !232, i64 92, !232, i64 96, !232, i64 100, !232, i64 104, !232, i64 108, !232, i64 112, !232, i64 116, !232, i64 120, !232, i64 124, !232, i64 128, !232, i64 132, !232, i64 136, !232, i64 140, !232, i64 144, !232, i64 148, !232, i64 152, !232, i64 156, !232, i64 160, !232, i64 164, !232, i64 168, !232, i64 172, !232, i64 176, !232, i64 180, !232, i64 184, !232, i64 188, !232, i64 192, !232, i64 196, !232, i64 200, !232, i64 204, !232, i64 208, !232, i64 212, !232, i64 216}
!232 = !{!"int", !161, i64 0}
!233 = !{!231, !160, i64 24}
!234 = !{!231, !160, i64 32}
!235 = !{!231, !160, i64 40}
!236 = !{!231, !160, i64 48}
!237 = !{!231, !160, i64 56}
!238 = !{!231, !160, i64 64}
!239 = !DILocation(line: 172, column: 10, scope: !22)
!240 = !DILocation(line: 177, column: 12, scope: !22)
!241 = !DILocation(line: 172, column: 18, scope: !22)
!242 = !DILocation(line: 179, column: 7, scope: !22)
!243 = !DILocation(line: 181, column: 23, scope: !244)
!244 = distinct !DILexicalBlock(scope: !245, file: !1, line: 180, column: 3)
!245 = distinct !DILexicalBlock(scope: !22, file: !1, line: 179, column: 7)
!246 = !DILocation(line: 181, column: 39, scope: !244)
!247 = !DILocation(line: 182, column: 22, scope: !244)
!248 = !DILocation(line: 173, column: 15, scope: !22)
!249 = !DILocation(line: 184, column: 25, scope: !244)
!250 = !{!232, !232, i64 0}
!251 = !DILocation(line: 184, column: 36, scope: !244)
!252 = !DILocation(line: 185, column: 32, scope: !244)
!253 = !DILocation(line: 184, column: 5, scope: !244)
!254 = !DILocation(line: 186, column: 3, scope: !244)
!255 = !DILocation(line: 189, column: 23, scope: !256)
!256 = distinct !DILexicalBlock(scope: !257, file: !1, line: 188, column: 3)
!257 = distinct !DILexicalBlock(scope: !245, file: !1, line: 187, column: 12)
!258 = !DILocation(line: 189, column: 39, scope: !256)
!259 = !DILocation(line: 190, column: 22, scope: !256)
!260 = !DILocation(line: 192, column: 25, scope: !256)
!261 = !DILocation(line: 192, column: 36, scope: !256)
!262 = !DILocation(line: 193, column: 25, scope: !256)
!263 = !DILocation(line: 193, column: 32, scope: !256)
!264 = !DILocation(line: 192, column: 5, scope: !256)
!265 = !DILocation(line: 194, column: 23, scope: !256)
!266 = !DILocation(line: 194, column: 39, scope: !256)
!267 = !DILocation(line: 195, column: 22, scope: !256)
!268 = !DILocation(line: 197, column: 25, scope: !256)
!269 = !DILocation(line: 197, column: 36, scope: !256)
!270 = !DILocation(line: 197, column: 63, scope: !256)
!271 = !DILocation(line: 198, column: 32, scope: !256)
!272 = !DILocation(line: 197, column: 5, scope: !256)
!273 = !DILocation(line: 199, column: 3, scope: !256)
!274 = !DILocation(line: 202, column: 23, scope: !275)
!275 = distinct !DILexicalBlock(scope: !276, file: !1, line: 201, column: 3)
!276 = distinct !DILexicalBlock(scope: !257, file: !1, line: 200, column: 12)
!277 = !DILocation(line: 202, column: 39, scope: !275)
!278 = !DILocation(line: 203, column: 22, scope: !275)
!279 = !DILocation(line: 205, column: 25, scope: !275)
!280 = !DILocation(line: 205, column: 36, scope: !275)
!281 = !DILocation(line: 206, column: 25, scope: !275)
!282 = !DILocation(line: 206, column: 32, scope: !275)
!283 = !DILocation(line: 205, column: 5, scope: !275)
!284 = !DILocation(line: 207, column: 23, scope: !275)
!285 = !DILocation(line: 207, column: 39, scope: !275)
!286 = !DILocation(line: 208, column: 22, scope: !275)
!287 = !DILocation(line: 210, column: 25, scope: !275)
!288 = !DILocation(line: 210, column: 36, scope: !275)
!289 = !DILocation(line: 210, column: 63, scope: !275)
!290 = !DILocation(line: 211, column: 32, scope: !275)
!291 = !DILocation(line: 210, column: 5, scope: !275)
!292 = !DILocation(line: 212, column: 23, scope: !275)
!293 = !DILocation(line: 212, column: 39, scope: !275)
!294 = !DILocation(line: 213, column: 22, scope: !275)
!295 = !DILocation(line: 215, column: 25, scope: !275)
!296 = !DILocation(line: 215, column: 36, scope: !275)
!297 = !DILocation(line: 215, column: 63, scope: !275)
!298 = !DILocation(line: 216, column: 32, scope: !275)
!299 = !DILocation(line: 215, column: 5, scope: !275)
!300 = !DILocation(line: 217, column: 3, scope: !275)
!301 = !DILocation(line: 220, column: 9, scope: !302)
!302 = distinct !DILexicalBlock(scope: !303, file: !1, line: 220, column: 9)
!303 = distinct !DILexicalBlock(scope: !276, file: !1, line: 219, column: 3)
!304 = !DILocation(line: 220, column: 9, scope: !303)
!305 = !DILocation(line: 227, column: 21, scope: !306)
!306 = distinct !DILexicalBlock(scope: !307, file: !1, line: 227, column: 7)
!307 = distinct !DILexicalBlock(scope: !308, file: !1, line: 227, column: 7)
!308 = distinct !DILexicalBlock(scope: !302, file: !1, line: 226, column: 5)
!309 = !DILocation(line: 227, column: 7, scope: !307)
!310 = !DILocation(line: 222, column: 7, scope: !311)
!311 = distinct !DILexicalBlock(scope: !302, file: !1, line: 221, column: 5)
!312 = !DILocation(line: 224, column: 5, scope: !311)
!313 = !DILocation(line: 229, column: 29, scope: !314)
!314 = distinct !DILexicalBlock(scope: !306, file: !1, line: 228, column: 7)
!315 = !DILocation(line: 229, column: 40, scope: !314)
!316 = !DILocation(line: 229, column: 57, scope: !314)
!317 = !DILocation(line: 229, column: 9, scope: !314)
!318 = !DILocation(line: 234, column: 26, scope: !22)
!319 = !DILocation(line: 287, column: 12, scope: !103)
!320 = !DILocation(line: 287, column: 17, scope: !103)
!321 = !DILocation(line: 290, column: 29, scope: !103)
!322 = !DILocation(line: 290, column: 32, scope: !103)
!323 = !DILocation(line: 290, column: 21, scope: !103)
!324 = !DILocation(line: 290, column: 11, scope: !103)
!325 = !DILocation(line: 291, column: 15, scope: !326)
!326 = distinct !DILexicalBlock(scope: !103, file: !1, line: 291, column: 7)
!327 = !DILocation(line: 291, column: 7, scope: !103)
!328 = !DILocation(line: 293, column: 5, scope: !329)
!329 = distinct !DILexicalBlock(scope: !326, file: !1, line: 292, column: 3)
!330 = !DILocation(line: 294, column: 5, scope: !329)
!331 = !DILocation(line: 297, column: 7, scope: !332)
!332 = distinct !DILexicalBlock(scope: !103, file: !1, line: 297, column: 7)
!333 = !DILocation(line: 297, column: 14, scope: !332)
!334 = !DILocation(line: 345, column: 19, scope: !335)
!335 = distinct !DILexicalBlock(scope: !336, file: !1, line: 345, column: 5)
!336 = distinct !DILexicalBlock(scope: !337, file: !1, line: 345, column: 5)
!337 = distinct !DILexicalBlock(scope: !332, file: !1, line: 344, column: 3)
!338 = !DILocation(line: 345, column: 5, scope: !336)
!339 = !DILocation(line: 348, column: 26, scope: !340)
!340 = distinct !DILexicalBlock(scope: !335, file: !1, line: 346, column: 5)
!341 = !DILocation(line: 297, column: 18, scope: !332)
!342 = !DILocation(line: 297, column: 35, scope: !332)
!343 = !DILocation(line: 297, column: 7, scope: !103)
!344 = !DILocation(line: 301, column: 13, scope: !345)
!345 = distinct !DILexicalBlock(scope: !346, file: !1, line: 301, column: 11)
!346 = distinct !DILexicalBlock(scope: !347, file: !1, line: 300, column: 5)
!347 = distinct !DILexicalBlock(scope: !332, file: !1, line: 298, column: 3)
!348 = !DILocation(line: 301, column: 11, scope: !346)
!349 = !DILocation(line: 303, column: 9, scope: !350)
!350 = distinct !DILexicalBlock(scope: !345, file: !1, line: 302, column: 7)
!351 = !DILocation(line: 305, column: 9, scope: !350)
!352 = !DILocation(line: 287, column: 7, scope: !103)
!353 = !DILocation(line: 307, column: 7, scope: !346)
!354 = !DILocation(line: 308, column: 13, scope: !355)
!355 = distinct !DILexicalBlock(scope: !346, file: !1, line: 308, column: 11)
!356 = !DILocation(line: 308, column: 11, scope: !346)
!357 = !DILocation(line: 310, column: 10, scope: !358)
!358 = distinct !DILexicalBlock(scope: !355, file: !1, line: 309, column: 7)
!359 = !DILocation(line: 310, column: 9, scope: !358)
!360 = !DILocation(line: 310, column: 22, scope: !358)
!361 = !DILocation(line: 311, column: 7, scope: !358)
!362 = !DILocation(line: 314, column: 27, scope: !363)
!363 = distinct !DILexicalBlock(scope: !355, file: !1, line: 313, column: 7)
!364 = !DILocation(line: 314, column: 10, scope: !363)
!365 = !DILocation(line: 314, column: 9, scope: !363)
!366 = !DILocation(line: 314, column: 22, scope: !363)
!367 = !DILocation(line: 316, column: 17, scope: !346)
!368 = !DILocation(line: 316, column: 15, scope: !346)
!369 = !DILocation(line: 318, column: 7, scope: !346)
!370 = !DILocation(line: 318, column: 29, scope: !346)
!371 = !{!161, !161, i64 0}
!372 = !DILocation(line: 318, column: 23, scope: !346)
!373 = !DILocation(line: 318, column: 14, scope: !346)
!374 = !DILocation(line: 320, column: 16, scope: !375)
!375 = distinct !DILexicalBlock(scope: !346, file: !1, line: 319, column: 7)
!376 = !DILocation(line: 283, column: 44, scope: !103)
!377 = !DILocation(line: 299, column: 5, scope: !347)
!378 = !DILocation(line: 322, column: 14, scope: !346)
!379 = !DILocation(line: 322, column: 23, scope: !346)
!380 = !DILocation(line: 322, column: 28, scope: !346)
!381 = !DILocation(line: 322, column: 26, scope: !346)
!382 = !DILocation(line: 322, column: 7, scope: !346)
!383 = !DILocation(line: 324, column: 16, scope: !384)
!384 = distinct !DILexicalBlock(scope: !346, file: !1, line: 323, column: 7)
!385 = !DILocation(line: 328, column: 11, scope: !386)
!386 = distinct !DILexicalBlock(scope: !347, file: !1, line: 328, column: 9)
!387 = !DILocation(line: 328, column: 9, scope: !347)
!388 = !DILocation(line: 330, column: 7, scope: !389)
!389 = distinct !DILexicalBlock(scope: !386, file: !1, line: 329, column: 5)
!390 = !DILocation(line: 332, column: 7, scope: !389)
!391 = !DILocation(line: 335, column: 12, scope: !392)
!392 = distinct !DILexicalBlock(scope: !347, file: !1, line: 335, column: 9)
!393 = !DILocation(line: 335, column: 9, scope: !347)
!394 = !DILocation(line: 337, column: 7, scope: !395)
!395 = distinct !DILexicalBlock(scope: !392, file: !1, line: 336, column: 5)
!396 = !DILocation(line: 339, column: 7, scope: !395)
!397 = !DILocation(line: 347, column: 7, scope: !340)
!398 = !DILocation(line: 347, column: 20, scope: !340)
!399 = !DILocation(line: 348, column: 31, scope: !340)
!400 = !DILocation(line: 348, column: 41, scope: !340)
!401 = !DILocation(line: 348, column: 35, scope: !340)
!402 = !DILocation(line: 348, column: 11, scope: !340)
!403 = !DILocation(line: 349, column: 15, scope: !340)
