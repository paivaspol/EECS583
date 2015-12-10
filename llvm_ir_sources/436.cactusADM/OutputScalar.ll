; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/IOBasic/OutputScalar.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.anon = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32 }
%struct.anon.0 = type { double, double, double, double, double, double, double, double, double, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.cGH = type { i32, i32, i32*, i32*, i32*, i32*, i32*, i32*, i32*, double, double*, double*, i32*, i32*, i32, i32*, double, i8***, i8**, %struct.cGHGroupData* }
%struct.cGHGroupData = type { i8, i8 }
%struct.IOBASIC_GH = type { i32, i32, i8, i8*, i8*, i32*, i32*, %struct.IOBASIC_REDUCTIONLIST*, %struct.PNamedData* }
%struct.IOBASIC_REDUCTIONLIST = type { i32, %struct.IOBASIC_REDUCTION* }
%struct.IOBASIC_REDUCTION = type { i32, i8*, i8, double, %struct.IOBASIC_REDUCTION* }
%struct.PNamedData = type { %struct.PNamedData*, %struct.PNamedData*, i8*, i8* }

@.str = private unnamed_addr constant [8 x i8] c"IOBasic\00", align 1
@.str1 = private unnamed_addr constant [82 x i8] c"../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/IOBasic/OutputScalar.c\00", align 1
@.str2 = private unnamed_addr constant [89 x i8] c"Already done IOBasic scalar output for '%s' in current iteration (probably via triggers)\00", align 1
@.str3 = private unnamed_addr constant [94 x i8] c"$Header: /cactus/CactusBase/IOBasic/src/OutputScalar.c,v 1.7 2002/01/18 16:06:47 tradke Exp $\00", align 1
@CheckSteerableParameters.outScalar_vars_lastset = internal unnamed_addr global i32 -1, align 4
@iobasicpriv_ = external global %struct.anon
@iorest_ = external global %struct.anon.0
@.str4 = private unnamed_addr constant [9 x i8] c"standard\00", align 1
@.str5 = private unnamed_addr constant [5 x i8] c"full\00", align 1
@.str6 = private unnamed_addr constant [35 x i8] c"Scalar: Output every %d iterations\00", align 1
@.str7 = private unnamed_addr constant [15 x i8] c"outScalar_vars\00", align 1
@.str8 = private unnamed_addr constant [32 x i8] c"Scalar: Output requested for %s\00", align 1
@.str9 = private unnamed_addr constant [6 x i8] c"%s %s\00", align 1
@.str10 = private unnamed_addr constant [46 x i8] c"Optional string '%s' in variable name ignored\00", align 1

; Function Attrs: nounwind optsize readnone ssp uwtable
define i8* @CCTKi_version_CactusBase_IOBasic_OutputScalar_c() #0 {
  ret i8* getelementptr inbounds ([94 x i8]* @.str3, i64 0, i64 0), !dbg !172
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @IOBasic_ScalarOutputGH(%struct.cGH* %GH) #1 {
  tail call void @llvm.dbg.value(metadata %struct.cGH* %GH, i64 0, metadata !96, metadata !173), !dbg !174
  %1 = tail call i8* @CCTK_GHExtension(%struct.cGH* %GH, i8* getelementptr inbounds ([8 x i8]* @.str, i64 0, i64 0)) #5, !dbg !175
  %2 = bitcast i8* %1 to %struct.IOBASIC_GH*, !dbg !176
  tail call void @llvm.dbg.value(metadata %struct.IOBASIC_GH* %2, i64 0, metadata !101, metadata !173), !dbg !177
  tail call fastcc void @CheckSteerableParameters(%struct.IOBASIC_GH* %2) #6, !dbg !178
  %3 = bitcast i8* %1 to i32*, !dbg !179
  %4 = load i32* %3, align 4, !dbg !179, !tbaa !181
  %5 = icmp slt i32 %4, 1, !dbg !187
  br i1 %5, label %.loopexit, label %.preheader, !dbg !188

.preheader:                                       ; preds = %0
  %6 = tail call i32 @CCTK_NumVars() #5, !dbg !189
  %7 = icmp sgt i32 %6, 0, !dbg !192
  br i1 %7, label %.lr.ph, label %.loopexit, !dbg !193

.lr.ph:                                           ; preds = %.preheader
  %8 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 1, !dbg !194
  %9 = getelementptr inbounds i8* %1, i64 40, !dbg !198
  %10 = bitcast i8* %9 to i32**, !dbg !198
  br label %11, !dbg !193

; <label>:11                                      ; preds = %.lr.ph, %30
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %30 ]
  %retval.02 = phi i32 [ 0, %.lr.ph ], [ %retval.1, %30 ]
  %12 = trunc i64 %indvars.iv to i32, !dbg !199
  %13 = tail call i32 @IOBasic_TimeForScalarOutput(%struct.cGH* %GH, i32 %12) #6, !dbg !199
  %14 = icmp eq i32 %13, 0, !dbg !199
  br i1 %14, label %30, label %15, !dbg !201

; <label>:15                                      ; preds = %11
  %16 = tail call i8* @CCTK_VarName(i32 %12) #5, !dbg !202
  tail call void @llvm.dbg.value(metadata i8* %16, i64 0, metadata !100, metadata !173), !dbg !203
  %17 = tail call i32 @CCTK_GroupTypeFromVarI(i32 %12) #5, !dbg !204
  %18 = icmp eq i32 %17, 1, !dbg !206
  br i1 %18, label %19, label %21, !dbg !207

; <label>:19                                      ; preds = %15
  %20 = tail call i32 @IOBasic_WriteScalarGS(%struct.cGH* %GH, i32 %12, i8* %16) #5, !dbg !208
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !97, metadata !173), !dbg !210
  br label %23, !dbg !211

; <label>:21                                      ; preds = %15
  %22 = tail call i32 @IOBasic_WriteScalarGA(%struct.cGH* %GH, i32 %12, i8* %16) #5, !dbg !212
  tail call void @llvm.dbg.value(metadata i32 %22, i64 0, metadata !97, metadata !173), !dbg !210
  br label %23

; <label>:23                                      ; preds = %21, %19
  %i.0 = phi i32 [ %20, %19 ], [ %22, %21 ]
  %24 = icmp eq i32 %i.0, 0, !dbg !214
  br i1 %24, label %25, label %30, !dbg !215

; <label>:25                                      ; preds = %23
  %26 = load i32* %8, align 4, !dbg !194, !tbaa !216
  %27 = load i32** %10, align 8, !dbg !198, !tbaa !219
  %28 = getelementptr inbounds i32* %27, i64 %indvars.iv, !dbg !220
  store i32 %26, i32* %28, align 4, !dbg !221, !tbaa !222
  %29 = add nsw i32 %retval.02, 1, !dbg !223
  tail call void @llvm.dbg.value(metadata i32 %29, i64 0, metadata !99, metadata !173), !dbg !224
  br label %30, !dbg !225

; <label>:30                                      ; preds = %11, %23, %25
  %retval.1 = phi i32 [ %29, %25 ], [ %retval.02, %23 ], [ %retval.02, %11 ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !193
  %31 = tail call i32 @CCTK_NumVars() #5, !dbg !189
  %32 = sext i32 %31 to i64, !dbg !192
  %33 = icmp slt i64 %indvars.iv.next, %32, !dbg !192
  br i1 %33, label %11, label %.loopexit, !dbg !193

.loopexit:                                        ; preds = %30, %.preheader, %0
  %.0 = phi i32 [ 0, %0 ], [ 0, %.preheader ], [ %retval.1, %30 ]
  ret i32 %.0, !dbg !226
}

; Function Attrs: optsize
declare i8* @CCTK_GHExtension(%struct.cGH*, i8*) #2

; Function Attrs: nounwind optsize ssp uwtable
define internal fastcc void @CheckSteerableParameters(%struct.IOBASIC_GH* nocapture %myGH) #1 {
  %msg = alloca i8*, align 8
  tail call void @llvm.dbg.value(metadata %struct.IOBASIC_GH* %myGH, i64 0, metadata !131, metadata !173), !dbg !227
  %1 = load i8** getelementptr inbounds (%struct.anon* @iobasicpriv_, i64 0, i32 4), align 8, !dbg !228, !tbaa !229
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !143, metadata !173), !dbg !228
  %2 = load i32* getelementptr inbounds (%struct.anon* @iobasicpriv_, i64 0, i32 8), align 4, !dbg !228, !tbaa !231
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !148, metadata !173), !dbg !228
  %3 = load i32* getelementptr inbounds (%struct.anon.0* @iorest_, i64 0, i32 37), align 8, !dbg !228, !tbaa !232
  tail call void @llvm.dbg.value(metadata i32 %3, i64 0, metadata !150, metadata !173), !dbg !228
  %4 = load i8** getelementptr inbounds (%struct.anon.0* @iorest_, i64 0, i32 12), align 8, !dbg !228, !tbaa !234
  tail call void @llvm.dbg.value(metadata i8* %4, i64 0, metadata !151, metadata !173), !dbg !228
  %5 = getelementptr inbounds %struct.IOBASIC_GH* %myGH, i64 0, i32 0, !dbg !235
  %6 = load i32* %5, align 4, !dbg !235, !tbaa !181
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !134, metadata !173), !dbg !236
  %7 = icmp sgt i32 %3, 0, !dbg !237
  %8 = select i1 %7, i32 %3, i32 -1, !dbg !238
  %9 = icmp sgt i32 %2, 0, !dbg !239
  %. = select i1 %9, i32 %2, i32 %8, !dbg !241
  store i32 %., i32* %5, align 4, !dbg !242, !tbaa !181
  %10 = icmp eq i32 %., %6, !dbg !243
  br i1 %10, label %20, label %11, !dbg !245

; <label>:11                                      ; preds = %0
  %12 = tail call i32 @CCTK_Equals(i8* %4, i8* getelementptr inbounds ([9 x i8]* @.str4, i64 0, i64 0)) #5, !dbg !246
  %13 = icmp eq i32 %12, 0, !dbg !246
  br i1 %13, label %14, label %17, !dbg !249

; <label>:14                                      ; preds = %11
  %15 = tail call i32 @CCTK_Equals(i8* %4, i8* getelementptr inbounds ([5 x i8]* @.str5, i64 0, i64 0)) #5, !dbg !250
  %16 = icmp eq i32 %15, 0, !dbg !250
  br i1 %16, label %20, label %17, !dbg !251

; <label>:17                                      ; preds = %14, %11
  %18 = load i32* %5, align 4, !dbg !252, !tbaa !181
  %19 = tail call i32 (i8*, i8*, ...)* @CCTK_VInfo(i8* getelementptr inbounds ([8 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([35 x i8]* @.str6, i64 0, i64 0), i32 %18) #5, !dbg !254
  br label %20, !dbg !255

; <label>:20                                      ; preds = %14, %0, %17
  %21 = tail call i32 @CCTK_ParameterQueryTimesSet(i8* getelementptr inbounds ([15 x i8]* @.str7, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str, i64 0, i64 0)) #5, !dbg !256
  tail call void @llvm.dbg.value(metadata i32 %21, i64 0, metadata !135, metadata !173), !dbg !257
  %22 = load i32* @CheckSteerableParameters.outScalar_vars_lastset, align 4, !dbg !258, !tbaa !222
  %23 = icmp eq i32 %21, %22, !dbg !260
  br i1 %23, label %63, label %24, !dbg !261

; <label>:24                                      ; preds = %20
  %25 = tail call i32 @CCTK_NumVars() #5, !dbg !262
  tail call void @llvm.dbg.value(metadata i32 %25, i64 0, metadata !133, metadata !173), !dbg !264
  %26 = getelementptr inbounds %struct.IOBASIC_GH* %myGH, i64 0, i32 3, !dbg !265
  %27 = load i8** %26, align 8, !dbg !265, !tbaa !266
  %28 = sext i32 %25 to i64, !dbg !265
  %29 = tail call i64 @llvm.objectsize.i64.p0i8(i8* %27, i1 false), !dbg !265
  %30 = tail call i8* @__memset_chk(i8* %27, i32 0, i64 %28, i64 %29) #5, !dbg !265
  %31 = load i8** %26, align 8, !dbg !267, !tbaa !266
  %32 = tail call i32 @CCTK_TraverseString(i8* %1, void (i32, i8*, i8*)* @SetOutputFlag, i8* %31, i32 3) #5, !dbg !268
  %33 = load i32* %5, align 4, !dbg !269, !tbaa !181
  %34 = icmp eq i32 %33, 0, !dbg !271
  br i1 %34, label %.thread, label %35, !dbg !272

; <label>:35                                      ; preds = %24
  %36 = tail call i32 @CCTK_Equals(i8* %4, i8* getelementptr inbounds ([9 x i8]* @.str4, i64 0, i64 0)) #5, !dbg !273
  %37 = icmp eq i32 %36, 0, !dbg !273
  br i1 %37, label %38, label %41, !dbg !274

; <label>:38                                      ; preds = %35
  %39 = tail call i32 @CCTK_Equals(i8* %4, i8* getelementptr inbounds ([5 x i8]* @.str5, i64 0, i64 0)) #5, !dbg !275
  %40 = icmp eq i32 %39, 0, !dbg !275
  br i1 %40, label %.thread, label %41, !dbg !276

; <label>:41                                      ; preds = %38, %35
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !137, metadata !173), !dbg !277
  store i8* null, i8** %msg, align 8, !dbg !278, !tbaa !280
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !132, metadata !173), !dbg !281
  %42 = icmp sgt i32 %25, 0, !dbg !282
  br i1 %42, label %.lr.ph, label %.thread, !dbg !285

.lr.ph:                                           ; preds = %41
  %43 = add i32 %25, -1, !dbg !285
  br label %44, !dbg !285

; <label>:44                                      ; preds = %._crit_edge2, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %._crit_edge2 ]
  %45 = load i8** %26, align 8, !dbg !286, !tbaa !266
  %46 = getelementptr inbounds i8* %45, i64 %indvars.iv, !dbg !289
  %47 = load i8* %46, align 1, !dbg !289, !tbaa !290
  %48 = icmp eq i8 %47, 0, !dbg !289
  %.pre3 = trunc i64 %indvars.iv to i32, !dbg !285
  br i1 %48, label %._crit_edge2, label %49, !dbg !291

; <label>:49                                      ; preds = %44
  %50 = call i8* @CCTK_FullName(i32 %.pre3) #5, !dbg !292
  call void @llvm.dbg.value(metadata i8* %50, i64 0, metadata !136, metadata !173), !dbg !294
  call void @llvm.dbg.value(metadata i8** %msg, i64 0, metadata !137, metadata !173), !dbg !277
  %51 = load i8** %msg, align 8, !dbg !295, !tbaa !280
  %52 = icmp eq i8* %51, null, !dbg !295
  br i1 %52, label %53, label %55, !dbg !297

; <label>:53                                      ; preds = %49
  call void @llvm.dbg.value(metadata i8** %msg, i64 0, metadata !137, metadata !173), !dbg !277
  %54 = call i32 (i8**, i8*, ...)* @Util_asprintf(i8** %msg, i8* getelementptr inbounds ([32 x i8]* @.str8, i64 0, i64 0), i8* %50) #5, !dbg !298
  br label %57, !dbg !300

; <label>:55                                      ; preds = %49
  call void @llvm.dbg.value(metadata i8* %51, i64 0, metadata !138, metadata !173), !dbg !301
  call void @llvm.dbg.value(metadata i8** %msg, i64 0, metadata !137, metadata !173), !dbg !277
  %56 = call i32 (i8**, i8*, ...)* @Util_asprintf(i8** %msg, i8* getelementptr inbounds ([6 x i8]* @.str9, i64 0, i64 0), i8* %51, i8* %50) #5, !dbg !302
  call void @free(i8* %51) #6, !dbg !304
  br label %57

; <label>:57                                      ; preds = %55, %53
  call void @free(i8* %50) #6, !dbg !305
  br label %._crit_edge2, !dbg !306

._crit_edge2:                                     ; preds = %44, %57
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !285
  %exitcond = icmp eq i32 %.pre3, %43, !dbg !285
  br i1 %exitcond, label %58, label %44, !dbg !285

; <label>:58                                      ; preds = %._crit_edge2
  %.pre = load i8** %msg, align 8, !dbg !307, !tbaa !280
  call void @llvm.dbg.value(metadata i8** %msg, i64 0, metadata !137, metadata !173), !dbg !277
  %59 = icmp eq i8* %.pre, null, !dbg !307
  br i1 %59, label %.thread, label %60, !dbg !309

; <label>:60                                      ; preds = %58
  %61 = call i32 @CCTK_Info(i8* getelementptr inbounds ([8 x i8]* @.str, i64 0, i64 0), i8* %.pre) #5, !dbg !310
  call void @llvm.dbg.value(metadata i8** %msg, i64 0, metadata !137, metadata !173), !dbg !277
  %62 = load i8** %msg, align 8, !dbg !312, !tbaa !280
  call void @free(i8* %62) #6, !dbg !313
  br label %.thread, !dbg !314

.thread:                                          ; preds = %41, %58, %38, %24, %60
  store i32 %21, i32* @CheckSteerableParameters.outScalar_vars_lastset, align 4, !dbg !315, !tbaa !222
  br label %63, !dbg !316

; <label>:63                                      ; preds = %20, %.thread
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !154, metadata !173), !dbg !228
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !154, metadata !173), !dbg !228
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !154, metadata !173), !dbg !228
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !154, metadata !173), !dbg !228
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !154, metadata !173), !dbg !228
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !154, metadata !173), !dbg !228
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !154, metadata !173), !dbg !228
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !154, metadata !173), !dbg !228
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !154, metadata !173), !dbg !228
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !154, metadata !173), !dbg !228
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !154, metadata !173), !dbg !228
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !154, metadata !173), !dbg !228
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !154, metadata !173), !dbg !228
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !154, metadata !173), !dbg !228
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !154, metadata !173), !dbg !228
  ret void, !dbg !317
}

; Function Attrs: optsize
declare i32 @CCTK_NumVars() #2

; Function Attrs: nounwind optsize ssp uwtable
define i32 @IOBasic_TimeForScalarOutput(%struct.cGH* %GH, i32 %vindex) #1 {
  tail call void @llvm.dbg.value(metadata %struct.cGH* %GH, i64 0, metadata !115, metadata !173), !dbg !318
  tail call void @llvm.dbg.value(metadata i32 %vindex, i64 0, metadata !116, metadata !173), !dbg !319
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !117, metadata !173), !dbg !320
  %1 = tail call i8* @CCTK_GHExtension(%struct.cGH* %GH, i8* getelementptr inbounds ([8 x i8]* @.str, i64 0, i64 0)) #5, !dbg !321
  %2 = bitcast i8* %1 to %struct.IOBASIC_GH*, !dbg !322
  tail call void @llvm.dbg.value(metadata %struct.IOBASIC_GH* %2, i64 0, metadata !118, metadata !173), !dbg !323
  tail call fastcc void @CheckSteerableParameters(%struct.IOBASIC_GH* %2) #6, !dbg !324
  %3 = bitcast i8* %1 to i32*, !dbg !325
  %4 = load i32* %3, align 4, !dbg !325, !tbaa !181
  %5 = icmp slt i32 %4, 1, !dbg !327
  br i1 %5, label %29, label %6, !dbg !328

; <label>:6                                       ; preds = %0
  %7 = sext i32 %vindex to i64, !dbg !329
  %8 = getelementptr inbounds i8* %1, i64 16, !dbg !331
  %9 = bitcast i8* %8 to i8**, !dbg !331
  %10 = load i8** %9, align 8, !dbg !331, !tbaa !266
  %11 = getelementptr inbounds i8* %10, i64 %7, !dbg !329
  %12 = load i8* %11, align 1, !dbg !329, !tbaa !290
  %13 = icmp eq i8 %12, 0, !dbg !329
  br i1 %13, label %29, label %14, !dbg !332

; <label>:14                                      ; preds = %6
  %15 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 1, !dbg !333
  %16 = load i32* %15, align 4, !dbg !333, !tbaa !216
  %17 = srem i32 %16, %4, !dbg !334
  %18 = icmp eq i32 %17, 0, !dbg !335
  br i1 %18, label %19, label %29, !dbg !336

; <label>:19                                      ; preds = %14
  %20 = getelementptr inbounds i8* %1, i64 40, !dbg !337
  %21 = bitcast i8* %20 to i32**, !dbg !337
  %22 = load i32** %21, align 8, !dbg !337, !tbaa !219
  %23 = getelementptr inbounds i32* %22, i64 %7, !dbg !340
  %24 = load i32* %23, align 4, !dbg !340, !tbaa !222
  %25 = icmp eq i32 %24, %16, !dbg !341
  br i1 %25, label %26, label %29, !dbg !342

; <label>:26                                      ; preds = %19
  %27 = tail call i8* @CCTK_FullName(i32 %vindex) #5, !dbg !343
  tail call void @llvm.dbg.value(metadata i8* %27, i64 0, metadata !119, metadata !173), !dbg !345
  %28 = tail call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 5, i32 231, i8* getelementptr inbounds ([82 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([89 x i8]* @.str2, i64 0, i64 0), i8* %27) #5, !dbg !346
  tail call void @free(i8* %27) #6, !dbg !347
  br label %29, !dbg !348

; <label>:29                                      ; preds = %14, %26, %6, %19, %0
  %.0 = phi i32 [ 0, %0 ], [ 0, %26 ], [ 0, %14 ], [ 0, %6 ], [ 1, %19 ]
  ret i32 %.0, !dbg !349
}

; Function Attrs: optsize
declare i8* @CCTK_VarName(i32) #2

; Function Attrs: optsize
declare i32 @CCTK_GroupTypeFromVarI(i32) #2

; Function Attrs: optsize
declare i32 @IOBasic_WriteScalarGS(%struct.cGH*, i32, i8*) #2

; Function Attrs: optsize
declare i32 @IOBasic_WriteScalarGA(%struct.cGH*, i32, i8*) #2

; Function Attrs: nounwind optsize ssp uwtable
define i32 @IOBasic_ScalarOutputVarAs(%struct.cGH* %GH, i8* %fullname, i8* %alias) #1 {
  tail call void @llvm.dbg.value(metadata %struct.cGH* %GH, i64 0, metadata !106, metadata !173), !dbg !350
  tail call void @llvm.dbg.value(metadata i8* %fullname, i64 0, metadata !107, metadata !173), !dbg !351
  tail call void @llvm.dbg.value(metadata i8* %alias, i64 0, metadata !108, metadata !173), !dbg !352
  %1 = tail call i32 @CCTK_VarIndex(i8* %fullname) #5, !dbg !353
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !109, metadata !173), !dbg !354
  %2 = tail call i32 @CCTK_GroupTypeFromVarI(i32 %1) #5, !dbg !355
  %3 = icmp eq i32 %2, 1, !dbg !357
  br i1 %3, label %4, label %6, !dbg !358

; <label>:4                                       ; preds = %0
  %5 = tail call i32 @IOBasic_WriteScalarGS(%struct.cGH* %GH, i32 %1, i8* %alias) #5, !dbg !359
  tail call void @llvm.dbg.value(metadata i32 %5, i64 0, metadata !110, metadata !173), !dbg !361
  br label %8, !dbg !362

; <label>:6                                       ; preds = %0
  %7 = tail call i32 @IOBasic_WriteScalarGA(%struct.cGH* %GH, i32 %1, i8* %alias) #5, !dbg !363
  tail call void @llvm.dbg.value(metadata i32 %7, i64 0, metadata !110, metadata !173), !dbg !361
  br label %8

; <label>:8                                       ; preds = %6, %4
  %retval.0 = phi i32 [ %5, %4 ], [ %7, %6 ]
  ret i32 %retval.0, !dbg !365
}

; Function Attrs: optsize
declare i32 @CCTK_VarIndex(i8*) #2

; Function Attrs: optsize
declare i8* @CCTK_FullName(i32) #2

; Function Attrs: optsize
declare i32 @CCTK_VWarn(i32, i32, i8*, i8*, i8*, ...) #2

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) #3

; Function Attrs: nounwind optsize ssp uwtable
define i32 @IOBasic_TriggerScalarOutput(%struct.cGH* %GH, i32 %vindex) #1 {
  tail call void @llvm.dbg.value(metadata %struct.cGH* %GH, i64 0, metadata !122, metadata !173), !dbg !366
  tail call void @llvm.dbg.value(metadata i32 %vindex, i64 0, metadata !123, metadata !173), !dbg !367
  %1 = tail call i8* @CCTK_GHExtension(%struct.cGH* %GH, i8* getelementptr inbounds ([8 x i8]* @.str, i64 0, i64 0)) #5, !dbg !368
  %2 = tail call i8* @CCTK_VarName(i32 %vindex) #5, !dbg !369
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !125, metadata !173), !dbg !370
  %3 = tail call i32 @CCTK_GroupTypeFromVarI(i32 %vindex) #5, !dbg !371
  %4 = icmp eq i32 %3, 1, !dbg !373
  br i1 %4, label %5, label %7, !dbg !374

; <label>:5                                       ; preds = %0
  %6 = tail call i32 @IOBasic_WriteScalarGS(%struct.cGH* %GH, i32 %vindex, i8* %2) #5, !dbg !375
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !124, metadata !173), !dbg !377
  br label %9, !dbg !378

; <label>:7                                       ; preds = %0
  %8 = tail call i32 @IOBasic_WriteScalarGA(%struct.cGH* %GH, i32 %vindex, i8* %2) #5, !dbg !379
  tail call void @llvm.dbg.value(metadata i32 %8, i64 0, metadata !124, metadata !173), !dbg !377
  br label %9

; <label>:9                                       ; preds = %7, %5
  %retval.0 = phi i32 [ %6, %5 ], [ %8, %7 ]
  %10 = icmp eq i32 %retval.0, 0, !dbg !381
  br i1 %10, label %11, label %19, !dbg !383

; <label>:11                                      ; preds = %9
  %12 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 1, !dbg !384
  %13 = load i32* %12, align 4, !dbg !384, !tbaa !216
  %14 = sext i32 %vindex to i64, !dbg !386
  %15 = getelementptr inbounds i8* %1, i64 40, !dbg !387
  %16 = bitcast i8* %15 to i32**, !dbg !387
  %17 = load i32** %16, align 8, !dbg !387, !tbaa !219
  %18 = getelementptr inbounds i32* %17, i64 %14, !dbg !386
  store i32 %13, i32* %18, align 4, !dbg !388, !tbaa !222
  br label %19, !dbg !389

; <label>:19                                      ; preds = %11, %9
  ret i32 %retval.0, !dbg !390
}

; Function Attrs: optsize
declare i32 @CCTK_Equals(i8*, i8*) #2

; Function Attrs: optsize
declare i32 @CCTK_VInfo(i8*, i8*, ...) #2

; Function Attrs: optsize
declare i32 @CCTK_ParameterQueryTimesSet(i8*, i8*) #2

; Function Attrs: nounwind optsize
declare i8* @__memset_chk(i8*, i32, i64, i64) #3

; Function Attrs: nounwind readnone
declare i64 @llvm.objectsize.i64.p0i8(i8*, i1) #4

; Function Attrs: optsize
declare i32 @CCTK_TraverseString(i8*, void (i32, i8*, i8*)*, i8*, i32) #2

; Function Attrs: nounwind optsize ssp uwtable
define internal void @SetOutputFlag(i32 %vindex, i8* %optstring, i8* nocapture %arg) #1 {
  tail call void @llvm.dbg.value(metadata i32 %vindex, i64 0, metadata !161, metadata !173), !dbg !391
  tail call void @llvm.dbg.value(metadata i8* %optstring, i64 0, metadata !162, metadata !173), !dbg !392
  tail call void @llvm.dbg.value(metadata i8* %arg, i64 0, metadata !163, metadata !173), !dbg !393
  tail call void @llvm.dbg.value(metadata i8* %arg, i64 0, metadata !164, metadata !173), !dbg !394
  %1 = sext i32 %vindex to i64, !dbg !395
  %2 = getelementptr inbounds i8* %arg, i64 %1, !dbg !395
  store i8 1, i8* %2, align 1, !dbg !396, !tbaa !290
  %3 = icmp eq i8* %optstring, null, !dbg !397
  br i1 %3, label %6, label %4, !dbg !399

; <label>:4                                       ; preds = %0
  %5 = tail call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 5, i32 396, i8* getelementptr inbounds ([82 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([46 x i8]* @.str10, i64 0, i64 0), i8* %optstring) #5, !dbg !400
  br label %6, !dbg !402

; <label>:6                                       ; preds = %0, %4
  ret void, !dbg !403
}

; Function Attrs: optsize
declare i32 @Util_asprintf(i8**, i8*, ...) #2

; Function Attrs: optsize
declare i32 @CCTK_Info(i8*, i8*) #2

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #4

attributes #0 = { nounwind optsize readnone ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone }
attributes #5 = { nounwind optsize }
attributes #6 = { optsize }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!168, !169, !170}
!llvm.ident = !{!171}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !3, subprograms: !51, globals: !165, imports: !2)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/IOBasic/OutputScalar.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{}
!3 = !{!4, !15}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64, align: 64)
!5 = !DIDerivedType(tag: DW_TAG_typedef, name: "iobasicGH", file: !6, line: 52, baseType: !7)
!6 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/IOBasic/../include/iobasicGH.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!7 = !DICompositeType(tag: DW_TAG_structure_type, name: "IOBASIC_GH", file: !6, line: 29, size: 512, align: 64, elements: !8)
!8 = !{!9, !11, !12, !14, !16, !17, !19, !20, !39}
!9 = !DIDerivedType(tag: DW_TAG_member, name: "outScalar_every", scope: !7, file: !6, line: 32, baseType: !10, size: 32, align: 32)
!10 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!11 = !DIDerivedType(tag: DW_TAG_member, name: "outInfo_every", scope: !7, file: !6, line: 33, baseType: !10, size: 32, align: 32, offset: 32)
!12 = !DIDerivedType(tag: DW_TAG_member, name: "info_reductions_changed", scope: !7, file: !6, line: 34, baseType: !13, size: 8, align: 8, offset: 64)
!13 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!14 = !DIDerivedType(tag: DW_TAG_member, name: "do_outScalar", scope: !7, file: !6, line: 37, baseType: !15, size: 64, align: 64, offset: 128)
!15 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64, align: 64)
!16 = !DIDerivedType(tag: DW_TAG_member, name: "outdirScalar", scope: !7, file: !6, line: 40, baseType: !15, size: 64, align: 64, offset: 192)
!17 = !DIDerivedType(tag: DW_TAG_member, name: "outInfo_last", scope: !7, file: !6, line: 43, baseType: !18, size: 64, align: 64, offset: 256)
!18 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64, align: 64)
!19 = !DIDerivedType(tag: DW_TAG_member, name: "outScalar_last", scope: !7, file: !6, line: 44, baseType: !18, size: 64, align: 64, offset: 320)
!20 = !DIDerivedType(tag: DW_TAG_member, name: "info_reductions", scope: !7, file: !6, line: 47, baseType: !21, size: 64, align: 64, offset: 384)
!21 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64, align: 64)
!22 = !DIDerivedType(tag: DW_TAG_typedef, name: "iobasic_reductionlist_t", file: !6, line: 27, baseType: !23)
!23 = !DICompositeType(tag: DW_TAG_structure_type, name: "IOBASIC_REDUCTIONLIST", file: !6, line: 23, size: 128, align: 64, elements: !24)
!24 = !{!25, !27}
!25 = !DIDerivedType(tag: DW_TAG_member, name: "num_reductions", scope: !23, file: !6, line: 25, baseType: !26, size: 32, align: 32)
!26 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "reductions", scope: !23, file: !6, line: 26, baseType: !28, size: 64, align: 64, offset: 64)
!28 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64, align: 64)
!29 = !DIDerivedType(tag: DW_TAG_typedef, name: "iobasic_reduction_t", file: !6, line: 21, baseType: !30)
!30 = !DICompositeType(tag: DW_TAG_structure_type, name: "IOBASIC_REDUCTION", file: !6, line: 14, size: 320, align: 64, elements: !31)
!31 = !{!32, !33, !34, !35, !37}
!32 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !30, file: !6, line: 16, baseType: !10, size: 32, align: 32)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !30, file: !6, line: 17, baseType: !15, size: 64, align: 64, offset: 64)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "is_valid", scope: !30, file: !6, line: 18, baseType: !13, size: 8, align: 8, offset: 128)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !30, file: !6, line: 19, baseType: !36, size: 64, align: 64, offset: 192)
!36 = !DIBasicType(name: "double", size: 64, align: 64, encoding: DW_ATE_float)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !30, file: !6, line: 20, baseType: !38, size: 64, align: 64, offset: 256)
!38 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64, align: 64)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "filenameListScalar", scope: !7, file: !6, line: 50, baseType: !40, size: 64, align: 64, offset: 448)
!40 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !41, size: 64, align: 64)
!41 = !DIDerivedType(tag: DW_TAG_typedef, name: "pNamedData", file: !42, line: 26, baseType: !43)
!42 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/IOBasic/../include/StoreNamedData.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!43 = !DICompositeType(tag: DW_TAG_structure_type, name: "PNamedData", file: !42, line: 18, size: 256, align: 64, elements: !44)
!44 = !{!45, !47, !48, !49}
!45 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !43, file: !42, line: 20, baseType: !46, size: 64, align: 64)
!46 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !43, size: 64, align: 64)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !43, file: !42, line: 21, baseType: !46, size: 64, align: 64, offset: 64)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !43, file: !42, line: 23, baseType: !15, size: 64, align: 64, offset: 128)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !43, file: !42, line: 25, baseType: !50, size: 64, align: 64, offset: 192)
!50 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!51 = !{!52, !57, !102, !111, !120, !127, !157}
!52 = !DISubprogram(name: "CCTKi_version_CactusBase_IOBasic_OutputScalar_c", scope: !1, file: !1, line: 26, type: !53, isLocal: false, isDefinition: true, scopeLine: 26, flags: DIFlagPrototyped, isOptimized: true, function: i8* ()* @CCTKi_version_CactusBase_IOBasic_OutputScalar_c, variables: !2)
!53 = !DISubroutineType(types: !54)
!54 = !{!55}
!55 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !56, size: 64, align: 64)
!56 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !13)
!57 = !DISubprogram(name: "IOBasic_ScalarOutputGH", scope: !1, file: !1, line: 59, type: !58, isLocal: false, isDefinition: true, scopeLine: 60, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.cGH*)* @IOBasic_ScalarOutputGH, variables: !95)
!58 = !DISubroutineType(types: !59)
!59 = !{!10, !60}
!60 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !61, size: 64, align: 64)
!61 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !62)
!62 = !DIDerivedType(tag: DW_TAG_typedef, name: "cGH", file: !63, line: 75, baseType: !64)
!63 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/IOBasic/../include/cGH.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!64 = !DICompositeType(tag: DW_TAG_structure_type, file: !63, line: 24, size: 1216, align: 64, elements: !65)
!65 = !{!66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !78, !79, !80, !81, !82, !83, !84, !87, !88}
!66 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_dim", scope: !64, file: !63, line: 26, baseType: !10, size: 32, align: 32)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_iteration", scope: !64, file: !63, line: 27, baseType: !10, size: 32, align: 32, offset: 32)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_gsh", scope: !64, file: !63, line: 30, baseType: !18, size: 64, align: 64, offset: 64)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_lsh", scope: !64, file: !63, line: 31, baseType: !18, size: 64, align: 64, offset: 128)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_lbnd", scope: !64, file: !63, line: 32, baseType: !18, size: 64, align: 64, offset: 192)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_ubnd", scope: !64, file: !63, line: 33, baseType: !18, size: 64, align: 64, offset: 256)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_lssh", scope: !64, file: !63, line: 36, baseType: !18, size: 64, align: 64, offset: 320)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_to", scope: !64, file: !63, line: 39, baseType: !18, size: 64, align: 64, offset: 384)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_from", scope: !64, file: !63, line: 40, baseType: !18, size: 64, align: 64, offset: 448)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_delta_time", scope: !64, file: !63, line: 43, baseType: !36, size: 64, align: 64, offset: 512)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_delta_space", scope: !64, file: !63, line: 44, baseType: !77, size: 64, align: 64, offset: 576)
!77 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !36, size: 64, align: 64)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_origin_space", scope: !64, file: !63, line: 47, baseType: !77, size: 64, align: 64, offset: 640)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_bbox", scope: !64, file: !63, line: 51, baseType: !18, size: 64, align: 64, offset: 704)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_levfac", scope: !64, file: !63, line: 54, baseType: !18, size: 64, align: 64, offset: 768)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_convlevel", scope: !64, file: !63, line: 57, baseType: !10, size: 32, align: 32, offset: 832)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_nghostzones", scope: !64, file: !63, line: 60, baseType: !18, size: 64, align: 64, offset: 896)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_time", scope: !64, file: !63, line: 63, baseType: !36, size: 64, align: 64, offset: 960)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !64, file: !63, line: 67, baseType: !85, size: 64, align: 64, offset: 1024)
!85 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !86, size: 64, align: 64)
!86 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64, align: 64)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "extensions", scope: !64, file: !63, line: 70, baseType: !86, size: 64, align: 64, offset: 1088)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "GroupData", scope: !64, file: !63, line: 73, baseType: !89, size: 64, align: 64, offset: 1152)
!89 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !90, size: 64, align: 64)
!90 = !DIDerivedType(tag: DW_TAG_typedef, name: "cGHGroupData", file: !63, line: 22, baseType: !91)
!91 = !DICompositeType(tag: DW_TAG_structure_type, file: !63, line: 18, size: 16, align: 8, elements: !92)
!92 = !{!93, !94}
!93 = !DIDerivedType(tag: DW_TAG_member, name: "storage", scope: !91, file: !63, line: 20, baseType: !13, size: 8, align: 8)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !91, file: !63, line: 21, baseType: !13, size: 8, align: 8, offset: 8)
!95 = !{!96, !97, !98, !99, !100, !101}
!96 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "GH", arg: 1, scope: !57, file: !1, line: 59, type: !60)
!97 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !57, file: !1, line: 61, type: !10)
!98 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "vindex", scope: !57, file: !1, line: 61, type: !10)
!99 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "retval", scope: !57, file: !1, line: 61, type: !10)
!100 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "name", scope: !57, file: !1, line: 62, type: !55)
!101 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "myGH", scope: !57, file: !1, line: 63, type: !4)
!102 = !DISubprogram(name: "IOBasic_ScalarOutputVarAs", scope: !1, file: !1, line: 150, type: !103, isLocal: false, isDefinition: true, scopeLine: 151, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.cGH*, i8*, i8*)* @IOBasic_ScalarOutputVarAs, variables: !105)
!103 = !DISubroutineType(types: !104)
!104 = !{!10, !60, !55, !55}
!105 = !{!106, !107, !108, !109, !110}
!106 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "GH", arg: 1, scope: !102, file: !1, line: 150, type: !60)
!107 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "fullname", arg: 2, scope: !102, file: !1, line: 150, type: !55)
!108 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "alias", arg: 3, scope: !102, file: !1, line: 150, type: !55)
!109 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "vindex", scope: !102, file: !1, line: 152, type: !10)
!110 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "retval", scope: !102, file: !1, line: 152, type: !10)
!111 = !DISubprogram(name: "IOBasic_TimeForScalarOutput", scope: !1, file: !1, line: 202, type: !112, isLocal: false, isDefinition: true, scopeLine: 203, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.cGH*, i32)* @IOBasic_TimeForScalarOutput, variables: !114)
!112 = !DISubroutineType(types: !113)
!113 = !{!10, !60, !10}
!114 = !{!115, !116, !117, !118, !119}
!115 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "GH", arg: 1, scope: !111, file: !1, line: 202, type: !60)
!116 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "vindex", arg: 2, scope: !111, file: !1, line: 202, type: !10)
!117 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "return_type", scope: !111, file: !1, line: 204, type: !10)
!118 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "myGH", scope: !111, file: !1, line: 205, type: !4)
!119 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "fullname", scope: !111, file: !1, line: 206, type: !15)
!120 = !DISubprogram(name: "IOBasic_TriggerScalarOutput", scope: !1, file: !1, line: 272, type: !112, isLocal: false, isDefinition: true, scopeLine: 273, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.cGH*, i32)* @IOBasic_TriggerScalarOutput, variables: !121)
!121 = !{!122, !123, !124, !125, !126}
!122 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "GH", arg: 1, scope: !120, file: !1, line: 272, type: !60)
!123 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "vindex", arg: 2, scope: !120, file: !1, line: 272, type: !10)
!124 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "retval", scope: !120, file: !1, line: 274, type: !10)
!125 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "name", scope: !120, file: !1, line: 275, type: !55)
!126 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "myGH", scope: !120, file: !1, line: 276, type: !4)
!127 = !DISubprogram(name: "CheckSteerableParameters", scope: !1, file: !1, line: 312, type: !128, isLocal: true, isDefinition: true, scopeLine: 313, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.IOBASIC_GH*)* @CheckSteerableParameters, variables: !130)
!128 = !DISubroutineType(types: !129)
!129 = !{null, !4}
!130 = !{!131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !148, !149, !150, !151, !152, !153, !154}
!131 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "myGH", arg: 1, scope: !127, file: !1, line: 312, type: !4)
!132 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !127, file: !1, line: 314, type: !10)
!133 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "num_vars", scope: !127, file: !1, line: 314, type: !10)
!134 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "out_old", scope: !127, file: !1, line: 314, type: !10)
!135 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "times_set", scope: !127, file: !1, line: 315, type: !10)
!136 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "fullname", scope: !127, file: !1, line: 316, type: !15)
!137 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "msg", scope: !127, file: !1, line: 316, type: !15)
!138 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "oldmsg", scope: !127, file: !1, line: 316, type: !15)
!139 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "outInfo_reductions", scope: !127, file: !1, line: 318, type: !55)
!140 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "outInfo_vars", scope: !127, file: !1, line: 318, type: !55)
!141 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "outScalar_reductions", scope: !127, file: !1, line: 318, type: !55)
!142 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "outScalar_style", scope: !127, file: !1, line: 318, type: !55)
!143 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "outScalar_vars", scope: !127, file: !1, line: 318, type: !55)
!144 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "out_format", scope: !127, file: !1, line: 318, type: !55)
!145 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "outdirScalar", scope: !127, file: !1, line: 318, type: !55)
!146 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "outInfo_every", scope: !127, file: !1, line: 318, type: !147)
!147 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !10)
!148 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "outScalar_every", scope: !127, file: !1, line: 318, type: !147)
!149 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "outdir", scope: !127, file: !1, line: 318, type: !55)
!150 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "out_every", scope: !127, file: !1, line: 318, type: !147)
!151 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "newverbose", scope: !127, file: !1, line: 318, type: !55)
!152 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "new_filename_scheme", scope: !127, file: !1, line: 318, type: !147)
!153 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "out_fileinfo", scope: !127, file: !1, line: 318, type: !55)
!154 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cctk_pdummy_pointer", scope: !127, file: !1, line: 318, type: !155)
!155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !156, size: 64, align: 64)
!156 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!157 = !DISubprogram(name: "SetOutputFlag", scope: !1, file: !1, line: 387, type: !158, isLocal: true, isDefinition: true, scopeLine: 388, flags: DIFlagPrototyped, isOptimized: true, function: void (i32, i8*, i8*)* @SetOutputFlag, variables: !160)
!158 = !DISubroutineType(types: !159)
!159 = !{null, !10, !55, !50}
!160 = !{!161, !162, !163, !164}
!161 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "vindex", arg: 1, scope: !157, file: !1, line: 387, type: !10)
!162 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "optstring", arg: 2, scope: !157, file: !1, line: 387, type: !55)
!163 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "arg", arg: 3, scope: !157, file: !1, line: 387, type: !50)
!164 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "flags", scope: !157, file: !1, line: 389, type: !15)
!165 = !{!166, !167}
!166 = !DIGlobalVariable(name: "rcsid", scope: !0, file: !1, line: 24, type: !55, isLocal: true, isDefinition: true)
!167 = !DIGlobalVariable(name: "outScalar_vars_lastset", scope: !127, file: !1, line: 317, type: !10, isLocal: true, isDefinition: true, variable: i32* @CheckSteerableParameters.outScalar_vars_lastset)
!168 = !{i32 2, !"Dwarf Version", i32 2}
!169 = !{i32 2, !"Debug Info Version", i32 700000003}
!170 = !{i32 1, !"PIC Level", i32 2}
!171 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!172 = !DILocation(line: 26, column: 1, scope: !52)
!173 = !DIExpression()
!174 = !DILocation(line: 59, column: 40, scope: !57)
!175 = !DILocation(line: 67, column: 24, scope: !57)
!176 = !DILocation(line: 67, column: 10, scope: !57)
!177 = !DILocation(line: 63, column: 14, scope: !57)
!178 = !DILocation(line: 69, column: 3, scope: !57)
!179 = !DILocation(line: 72, column: 13, scope: !180)
!180 = distinct !DILexicalBlock(scope: !57, file: !1, line: 72, column: 7)
!181 = !{!182, !183, i64 0}
!182 = !{!"IOBASIC_GH", !183, i64 0, !183, i64 4, !184, i64 8, !186, i64 16, !186, i64 24, !186, i64 32, !186, i64 40, !186, i64 48, !186, i64 56}
!183 = !{!"int", !184, i64 0}
!184 = !{!"omnipotent char", !185, i64 0}
!185 = !{!"Simple C/C++ TBAA"}
!186 = !{!"any pointer", !184, i64 0}
!187 = !DILocation(line: 72, column: 29, scope: !180)
!188 = !DILocation(line: 72, column: 7, scope: !57)
!189 = !DILocation(line: 78, column: 38, scope: !190)
!190 = distinct !DILexicalBlock(scope: !191, file: !1, line: 78, column: 3)
!191 = distinct !DILexicalBlock(scope: !57, file: !1, line: 78, column: 3)
!192 = !DILocation(line: 78, column: 36, scope: !190)
!193 = !DILocation(line: 78, column: 3, scope: !191)
!194 = !DILocation(line: 108, column: 43, scope: !195)
!195 = distinct !DILexicalBlock(scope: !196, file: !1, line: 106, column: 5)
!196 = distinct !DILexicalBlock(scope: !197, file: !1, line: 105, column: 9)
!197 = distinct !DILexicalBlock(scope: !190, file: !1, line: 79, column: 3)
!198 = !DILocation(line: 108, column: 13, scope: !195)
!199 = !DILocation(line: 81, column: 11, scope: !200)
!200 = distinct !DILexicalBlock(scope: !197, file: !1, line: 81, column: 9)
!201 = !DILocation(line: 81, column: 9, scope: !197)
!202 = !DILocation(line: 87, column: 12, scope: !197)
!203 = !DILocation(line: 62, column: 15, scope: !57)
!204 = !DILocation(line: 97, column: 9, scope: !205)
!205 = distinct !DILexicalBlock(scope: !197, file: !1, line: 97, column: 9)
!206 = !DILocation(line: 97, column: 41, scope: !205)
!207 = !DILocation(line: 97, column: 9, scope: !197)
!208 = !DILocation(line: 99, column: 11, scope: !209)
!209 = distinct !DILexicalBlock(scope: !205, file: !1, line: 98, column: 5)
!210 = !DILocation(line: 61, column: 7, scope: !57)
!211 = !DILocation(line: 100, column: 5, scope: !209)
!212 = !DILocation(line: 103, column: 11, scope: !213)
!213 = distinct !DILexicalBlock(scope: !205, file: !1, line: 102, column: 5)
!214 = !DILocation(line: 105, column: 11, scope: !196)
!215 = !DILocation(line: 105, column: 9, scope: !197)
!216 = !{!217, !183, i64 4}
!217 = !{!"", !183, i64 0, !183, i64 4, !186, i64 8, !186, i64 16, !186, i64 24, !186, i64 32, !186, i64 40, !186, i64 48, !186, i64 56, !218, i64 64, !186, i64 72, !186, i64 80, !186, i64 88, !186, i64 96, !183, i64 104, !186, i64 112, !218, i64 120, !186, i64 128, !186, i64 136, !186, i64 144}
!218 = !{!"double", !184, i64 0}
!219 = !{!182, !186, i64 40}
!220 = !DILocation(line: 108, column: 7, scope: !195)
!221 = !DILocation(line: 108, column: 37, scope: !195)
!222 = !{!183, !183, i64 0}
!223 = !DILocation(line: 109, column: 13, scope: !195)
!224 = !DILocation(line: 61, column: 18, scope: !57)
!225 = !DILocation(line: 110, column: 5, scope: !195)
!226 = !DILocation(line: 114, column: 1, scope: !57)
!227 = !DILocation(line: 312, column: 50, scope: !127)
!228 = !DILocation(line: 318, column: 3, scope: !127)
!229 = !{!230, !186, i64 32}
!230 = !{!"", !186, i64 0, !186, i64 8, !186, i64 16, !186, i64 24, !186, i64 32, !186, i64 40, !186, i64 48, !183, i64 56, !183, i64 60}
!231 = !{!230, !183, i64 60}
!232 = !{!233, !183, i64 240}
!233 = !{!"", !218, i64 0, !218, i64 8, !218, i64 16, !218, i64 24, !218, i64 32, !218, i64 40, !218, i64 48, !218, i64 56, !218, i64 64, !186, i64 72, !186, i64 80, !186, i64 88, !186, i64 96, !186, i64 104, !186, i64 112, !186, i64 120, !186, i64 128, !186, i64 136, !186, i64 144, !186, i64 152, !186, i64 160, !186, i64 168, !186, i64 176, !183, i64 184, !183, i64 188, !183, i64 192, !183, i64 196, !183, i64 200, !183, i64 204, !183, i64 208, !183, i64 212, !183, i64 216, !183, i64 220, !183, i64 224, !183, i64 228, !183, i64 232, !183, i64 236, !183, i64 240, !183, i64 244, !183, i64 248, !183, i64 252, !183, i64 256, !183, i64 260, !183, i64 264, !183, i64 268, !183, i64 272, !183, i64 276, !183, i64 280, !183, i64 284, !183, i64 288, !183, i64 292}
!234 = !{!233, !186, i64 96}
!235 = !DILocation(line: 322, column: 19, scope: !127)
!236 = !DILocation(line: 314, column: 20, scope: !127)
!237 = !DILocation(line: 323, column: 37, scope: !127)
!238 = !DILocation(line: 323, column: 27, scope: !127)
!239 = !DILocation(line: 324, column: 23, scope: !240)
!240 = distinct !DILexicalBlock(scope: !127, file: !1, line: 324, column: 7)
!241 = !DILocation(line: 324, column: 7, scope: !127)
!242 = !DILocation(line: 323, column: 25, scope: !127)
!243 = !DILocation(line: 329, column: 29, scope: !244)
!244 = distinct !DILexicalBlock(scope: !127, file: !1, line: 329, column: 7)
!245 = !DILocation(line: 329, column: 7, scope: !127)
!246 = !DILocation(line: 331, column: 9, scope: !247)
!247 = distinct !DILexicalBlock(scope: !248, file: !1, line: 331, column: 9)
!248 = distinct !DILexicalBlock(scope: !244, file: !1, line: 330, column: 3)
!249 = !DILocation(line: 331, column: 46, scope: !247)
!250 = !DILocation(line: 332, column: 9, scope: !247)
!251 = !DILocation(line: 331, column: 9, scope: !248)
!252 = !DILocation(line: 335, column: 25, scope: !253)
!253 = distinct !DILexicalBlock(scope: !247, file: !1, line: 333, column: 5)
!254 = !DILocation(line: 334, column: 7, scope: !253)
!255 = !DILocation(line: 336, column: 5, scope: !253)
!256 = !DILocation(line: 340, column: 15, scope: !127)
!257 = !DILocation(line: 315, column: 7, scope: !127)
!258 = !DILocation(line: 341, column: 20, scope: !259)
!259 = distinct !DILexicalBlock(scope: !127, file: !1, line: 341, column: 7)
!260 = !DILocation(line: 341, column: 17, scope: !259)
!261 = !DILocation(line: 341, column: 7, scope: !127)
!262 = !DILocation(line: 343, column: 16, scope: !263)
!263 = distinct !DILexicalBlock(scope: !259, file: !1, line: 342, column: 3)
!264 = !DILocation(line: 314, column: 10, scope: !127)
!265 = !DILocation(line: 344, column: 5, scope: !263)
!266 = !{!182, !186, i64 16}
!267 = !DILocation(line: 345, column: 63, scope: !263)
!268 = !DILocation(line: 345, column: 5, scope: !263)
!269 = !DILocation(line: 348, column: 15, scope: !270)
!270 = distinct !DILexicalBlock(scope: !263, file: !1, line: 348, column: 9)
!271 = !DILocation(line: 348, column: 9, scope: !270)
!272 = !DILocation(line: 348, column: 31, scope: !270)
!273 = !DILocation(line: 349, column: 10, scope: !270)
!274 = !DILocation(line: 349, column: 47, scope: !270)
!275 = !DILocation(line: 350, column: 10, scope: !270)
!276 = !DILocation(line: 348, column: 9, scope: !263)
!277 = !DILocation(line: 316, column: 20, scope: !127)
!278 = !DILocation(line: 352, column: 11, scope: !279)
!279 = distinct !DILexicalBlock(scope: !270, file: !1, line: 351, column: 5)
!280 = !{!186, !186, i64 0}
!281 = !DILocation(line: 314, column: 7, scope: !127)
!282 = !DILocation(line: 353, column: 21, scope: !283)
!283 = distinct !DILexicalBlock(scope: !284, file: !1, line: 353, column: 7)
!284 = distinct !DILexicalBlock(scope: !279, file: !1, line: 353, column: 7)
!285 = !DILocation(line: 353, column: 7, scope: !284)
!286 = !DILocation(line: 355, column: 19, scope: !287)
!287 = distinct !DILexicalBlock(scope: !288, file: !1, line: 355, column: 13)
!288 = distinct !DILexicalBlock(scope: !283, file: !1, line: 354, column: 7)
!289 = !DILocation(line: 355, column: 13, scope: !287)
!290 = !{!184, !184, i64 0}
!291 = !DILocation(line: 355, column: 13, scope: !288)
!292 = !DILocation(line: 357, column: 22, scope: !293)
!293 = distinct !DILexicalBlock(scope: !287, file: !1, line: 356, column: 9)
!294 = !DILocation(line: 316, column: 9, scope: !127)
!295 = !DILocation(line: 358, column: 17, scope: !296)
!296 = distinct !DILexicalBlock(scope: !293, file: !1, line: 358, column: 15)
!297 = !DILocation(line: 358, column: 15, scope: !293)
!298 = !DILocation(line: 360, column: 13, scope: !299)
!299 = distinct !DILexicalBlock(scope: !296, file: !1, line: 359, column: 11)
!300 = !DILocation(line: 361, column: 11, scope: !299)
!301 = !DILocation(line: 316, column: 26, scope: !127)
!302 = !DILocation(line: 365, column: 13, scope: !303)
!303 = distinct !DILexicalBlock(scope: !296, file: !1, line: 363, column: 11)
!304 = !DILocation(line: 366, column: 13, scope: !303)
!305 = !DILocation(line: 368, column: 11, scope: !293)
!306 = !DILocation(line: 369, column: 9, scope: !293)
!307 = !DILocation(line: 371, column: 11, scope: !308)
!308 = distinct !DILexicalBlock(scope: !279, file: !1, line: 371, column: 11)
!309 = !DILocation(line: 371, column: 11, scope: !279)
!310 = !DILocation(line: 373, column: 9, scope: !311)
!311 = distinct !DILexicalBlock(scope: !308, file: !1, line: 372, column: 7)
!312 = !DILocation(line: 374, column: 15, scope: !311)
!313 = !DILocation(line: 374, column: 9, scope: !311)
!314 = !DILocation(line: 375, column: 7, scope: !311)
!315 = !DILocation(line: 379, column: 28, scope: !263)
!316 = !DILocation(line: 380, column: 3, scope: !263)
!317 = !DILocation(line: 382, column: 24, scope: !127)
!318 = !DILocation(line: 202, column: 45, scope: !111)
!319 = !DILocation(line: 202, column: 53, scope: !111)
!320 = !DILocation(line: 204, column: 7, scope: !111)
!321 = !DILocation(line: 213, column: 24, scope: !111)
!322 = !DILocation(line: 213, column: 10, scope: !111)
!323 = !DILocation(line: 205, column: 14, scope: !111)
!324 = !DILocation(line: 215, column: 3, scope: !111)
!325 = !DILocation(line: 218, column: 13, scope: !326)
!326 = distinct !DILexicalBlock(scope: !111, file: !1, line: 218, column: 7)
!327 = !DILocation(line: 218, column: 29, scope: !326)
!328 = !DILocation(line: 218, column: 7, scope: !111)
!329 = !DILocation(line: 224, column: 7, scope: !330)
!330 = distinct !DILexicalBlock(scope: !111, file: !1, line: 224, column: 7)
!331 = !DILocation(line: 224, column: 13, scope: !330)
!332 = !DILocation(line: 224, column: 35, scope: !330)
!333 = !DILocation(line: 225, column: 12, scope: !330)
!334 = !DILocation(line: 225, column: 27, scope: !330)
!335 = !DILocation(line: 225, column: 52, scope: !330)
!336 = !DILocation(line: 224, column: 7, scope: !111)
!337 = !DILocation(line: 228, column: 15, scope: !338)
!338 = distinct !DILexicalBlock(scope: !339, file: !1, line: 228, column: 9)
!339 = distinct !DILexicalBlock(scope: !330, file: !1, line: 226, column: 3)
!340 = !DILocation(line: 228, column: 9, scope: !338)
!341 = !DILocation(line: 228, column: 39, scope: !338)
!342 = !DILocation(line: 228, column: 9, scope: !339)
!343 = !DILocation(line: 230, column: 18, scope: !344)
!344 = distinct !DILexicalBlock(scope: !338, file: !1, line: 229, column: 5)
!345 = !DILocation(line: 206, column: 9, scope: !111)
!346 = !DILocation(line: 231, column: 7, scope: !344)
!347 = !DILocation(line: 234, column: 7, scope: !344)
!348 = !DILocation(line: 235, column: 5, scope: !344)
!349 = !DILocation(line: 243, column: 1, scope: !111)
!350 = !DILocation(line: 150, column: 43, scope: !102)
!351 = !DILocation(line: 150, column: 59, scope: !102)
!352 = !DILocation(line: 150, column: 81, scope: !102)
!353 = !DILocation(line: 155, column: 12, scope: !102)
!354 = !DILocation(line: 152, column: 7, scope: !102)
!355 = !DILocation(line: 164, column: 7, scope: !356)
!356 = distinct !DILexicalBlock(scope: !102, file: !1, line: 164, column: 7)
!357 = !DILocation(line: 164, column: 39, scope: !356)
!358 = !DILocation(line: 164, column: 7, scope: !102)
!359 = !DILocation(line: 166, column: 14, scope: !360)
!360 = distinct !DILexicalBlock(scope: !356, file: !1, line: 165, column: 3)
!361 = !DILocation(line: 152, column: 15, scope: !102)
!362 = !DILocation(line: 167, column: 3, scope: !360)
!363 = !DILocation(line: 170, column: 14, scope: !364)
!364 = distinct !DILexicalBlock(scope: !356, file: !1, line: 169, column: 3)
!365 = !DILocation(line: 173, column: 3, scope: !102)
!366 = !DILocation(line: 272, column: 45, scope: !120)
!367 = !DILocation(line: 272, column: 53, scope: !120)
!368 = !DILocation(line: 280, column: 24, scope: !120)
!369 = !DILocation(line: 282, column: 10, scope: !120)
!370 = !DILocation(line: 275, column: 15, scope: !120)
!371 = !DILocation(line: 291, column: 7, scope: !372)
!372 = distinct !DILexicalBlock(scope: !120, file: !1, line: 291, column: 7)
!373 = !DILocation(line: 291, column: 39, scope: !372)
!374 = !DILocation(line: 291, column: 7, scope: !120)
!375 = !DILocation(line: 293, column: 14, scope: !376)
!376 = distinct !DILexicalBlock(scope: !372, file: !1, line: 292, column: 3)
!377 = !DILocation(line: 274, column: 7, scope: !120)
!378 = !DILocation(line: 294, column: 3, scope: !376)
!379 = !DILocation(line: 297, column: 14, scope: !380)
!380 = distinct !DILexicalBlock(scope: !372, file: !1, line: 296, column: 3)
!381 = !DILocation(line: 300, column: 14, scope: !382)
!382 = distinct !DILexicalBlock(scope: !120, file: !1, line: 300, column: 7)
!383 = !DILocation(line: 300, column: 7, scope: !120)
!384 = !DILocation(line: 303, column: 41, scope: !385)
!385 = distinct !DILexicalBlock(scope: !382, file: !1, line: 301, column: 3)
!386 = !DILocation(line: 303, column: 5, scope: !385)
!387 = !DILocation(line: 303, column: 11, scope: !385)
!388 = !DILocation(line: 303, column: 35, scope: !385)
!389 = !DILocation(line: 304, column: 3, scope: !385)
!390 = !DILocation(line: 306, column: 3, scope: !120)
!391 = !DILocation(line: 387, column: 32, scope: !157)
!392 = !DILocation(line: 387, column: 52, scope: !157)
!393 = !DILocation(line: 387, column: 69, scope: !157)
!394 = !DILocation(line: 389, column: 9, scope: !157)
!395 = !DILocation(line: 392, column: 3, scope: !157)
!396 = !DILocation(line: 392, column: 17, scope: !157)
!397 = !DILocation(line: 394, column: 7, scope: !398)
!398 = distinct !DILexicalBlock(scope: !157, file: !1, line: 394, column: 7)
!399 = !DILocation(line: 394, column: 7, scope: !157)
!400 = !DILocation(line: 396, column: 5, scope: !401)
!401 = distinct !DILexicalBlock(scope: !398, file: !1, line: 395, column: 3)
!402 = !DILocation(line: 398, column: 3, scope: !401)
!403 = !DILocation(line: 399, column: 1, scope: !157)
