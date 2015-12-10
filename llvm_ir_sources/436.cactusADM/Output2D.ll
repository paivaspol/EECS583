; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/IOASCII/Output2D.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.anon = type { double, double, double, double, double, double, double, double, double, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.anon.0 = type { double, double, double, double, double, double, double, double, double, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.cGH = type { i32, i32, i32*, i32*, i32*, i32*, i32*, i32*, i32*, double, double*, double*, i32*, i32*, i32, i32*, double, i8***, i8**, %struct.cGHGroupData* }
%struct.cGHGroupData = type { i8, i8 }
%struct.IOASCIIGH = type { i32, i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i32*, i32*, i32*, %struct.PNamedData*, %struct.PNamedData*, %struct.PNamedData*, i32***, i32** }
%struct.PNamedData = type { %struct.PNamedData*, %struct.PNamedData*, i8*, i8* }
%struct.cGroup = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [8 x i8] c"IOASCII\00", align 1
@.str1 = private unnamed_addr constant [78 x i8] c"../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/IOASCII/Output2D.c\00", align 1
@.str2 = private unnamed_addr constant [85 x i8] c"Already done IOASCII 2D output for '%s' in current iteration (probably via triggers)\00", align 1
@.str3 = private unnamed_addr constant [56 x i8] c"$Id: Output2D.c,v 1.12 2001/12/28 21:22:44 tradke Exp $\00", align 1
@CheckSteerableParameters.out2D_vars_lastset = internal unnamed_addr global i32 -1, align 4
@ioasciipriv_ = external global %struct.anon
@iorest_ = external global %struct.anon.0
@.str4 = private unnamed_addr constant [9 x i8] c"standard\00", align 1
@.str5 = private unnamed_addr constant [5 x i8] c"full\00", align 1
@.str6 = private unnamed_addr constant [39 x i8] c"IOASCII_2D: Output every %d iterations\00", align 1
@.str7 = private unnamed_addr constant [11 x i8] c"out2D_vars\00", align 1
@.str8 = private unnamed_addr constant [36 x i8] c"IOASCII_2D: Output requested for %s\00", align 1
@.str9 = private unnamed_addr constant [6 x i8] c"%s %s\00", align 1
@.str10 = private unnamed_addr constant [46 x i8] c"Optional string '%s' in variable name ignored\00", align 1
@.str11 = private unnamed_addr constant [45 x i8] c"No IOASCII 2D output for '%s' (dim != [2,3])\00", align 1
@.str12 = private unnamed_addr constant [61 x i8] c"No IOASCII 2D output for '%s' (not a grid function or array)\00", align 1

; Function Attrs: nounwind optsize readnone ssp uwtable
define i8* @CCTKi_version_CactusBase_IOASCII_Output2D_c() #0 {
  ret i8* getelementptr inbounds ([56 x i8]* @.str3, i64 0, i64 0), !dbg !230
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @IOASCII_Output2DGH(%struct.cGH* %GH) #1 {
  tail call void @llvm.dbg.value(metadata %struct.cGH* %GH, i64 0, metadata !89, metadata !231), !dbg !232
  %1 = tail call i8* @CCTK_GHExtension(%struct.cGH* %GH, i8* getelementptr inbounds ([8 x i8]* @.str, i64 0, i64 0)) #5, !dbg !233
  %2 = bitcast i8* %1 to %struct.IOASCIIGH*, !dbg !234
  tail call void @llvm.dbg.value(metadata %struct.IOASCIIGH* %2, i64 0, metadata !92, metadata !231), !dbg !235
  tail call fastcc void @CheckSteerableParameters(%struct.IOASCIIGH* %2) #6, !dbg !236
  %3 = getelementptr inbounds i8* %1, i64 4, !dbg !237
  %4 = bitcast i8* %3 to i32*, !dbg !237
  %5 = load i32* %4, align 4, !dbg !237, !tbaa !239
  %6 = icmp slt i32 %5, 1, !dbg !245
  br i1 %6, label %.loopexit, label %.preheader, !dbg !246

.preheader:                                       ; preds = %0
  %7 = tail call i32 @CCTK_NumVars() #5, !dbg !247
  %8 = icmp sgt i32 %7, 0, !dbg !250
  br i1 %8, label %.lr.ph, label %.loopexit, !dbg !251

.lr.ph:                                           ; preds = %.preheader
  %9 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 1, !dbg !252
  %10 = getelementptr inbounds i8* %1, i64 72, !dbg !256
  %11 = bitcast i8* %10 to i32**, !dbg !256
  br label %12, !dbg !251

; <label>:12                                      ; preds = %.lr.ph, %25
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %25 ]
  %retval.01 = phi i32 [ 0, %.lr.ph ], [ %retval.1, %25 ]
  %13 = trunc i64 %indvars.iv to i32, !dbg !257
  %14 = tail call i32 @IOASCII_TimeFor2D(%struct.cGH* %GH, i32 %13) #6, !dbg !257
  %15 = icmp eq i32 %14, 0, !dbg !257
  br i1 %15, label %25, label %16, !dbg !259

; <label>:16                                      ; preds = %12
  %17 = tail call i8* @CCTK_VarName(i32 %13) #5, !dbg !260
  tail call void @llvm.dbg.value(metadata i8* %17, i64 0, metadata !93, metadata !231), !dbg !261
  %18 = tail call i32 @IOASCII_Write2D(%struct.cGH* %GH, i32 %13, i8* %17) #5, !dbg !262
  %19 = icmp eq i32 %18, 0, !dbg !263
  br i1 %19, label %20, label %25, !dbg !264

; <label>:20                                      ; preds = %16
  %21 = load i32* %9, align 4, !dbg !252, !tbaa !265
  %22 = load i32** %11, align 8, !dbg !256, !tbaa !268
  %23 = getelementptr inbounds i32* %22, i64 %indvars.iv, !dbg !269
  store i32 %21, i32* %23, align 4, !dbg !270, !tbaa !271
  %24 = add nsw i32 %retval.01, 1, !dbg !272
  tail call void @llvm.dbg.value(metadata i32 %24, i64 0, metadata !91, metadata !231), !dbg !273
  br label %25, !dbg !274

; <label>:25                                      ; preds = %12, %16, %20
  %retval.1 = phi i32 [ %24, %20 ], [ %retval.01, %16 ], [ %retval.01, %12 ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !251
  %26 = tail call i32 @CCTK_NumVars() #5, !dbg !247
  %27 = sext i32 %26 to i64, !dbg !250
  %28 = icmp slt i64 %indvars.iv.next, %27, !dbg !250
  br i1 %28, label %12, label %.loopexit, !dbg !251

.loopexit:                                        ; preds = %25, %.preheader, %0
  %.0 = phi i32 [ 0, %0 ], [ 0, %.preheader ], [ %retval.1, %25 ]
  ret i32 %.0, !dbg !275
}

; Function Attrs: optsize
declare i8* @CCTK_GHExtension(%struct.cGH*, i8*) #2

; Function Attrs: nounwind optsize ssp uwtable
define internal fastcc void @CheckSteerableParameters(%struct.IOASCIIGH* nocapture %myGH) #1 {
  %msg = alloca i8*, align 8
  tail call void @llvm.dbg.value(metadata %struct.IOASCIIGH* %myGH, i64 0, metadata !123, metadata !231), !dbg !276
  %1 = load i8** getelementptr inbounds (%struct.anon* @ioasciipriv_, i64 0, i32 12), align 8, !dbg !277, !tbaa !278
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !143, metadata !231), !dbg !277
  %2 = load i32* getelementptr inbounds (%struct.anon* @ioasciipriv_, i64 0, i32 31), align 4, !dbg !277, !tbaa !280
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !163, metadata !231), !dbg !277
  %3 = load i32* getelementptr inbounds (%struct.anon.0* @iorest_, i64 0, i32 37), align 8, !dbg !277, !tbaa !281
  tail call void @llvm.dbg.value(metadata i32 %3, i64 0, metadata !169, metadata !231), !dbg !277
  %4 = load i8** getelementptr inbounds (%struct.anon.0* @iorest_, i64 0, i32 12), align 8, !dbg !277, !tbaa !283
  tail call void @llvm.dbg.value(metadata i8* %4, i64 0, metadata !188, metadata !231), !dbg !277
  %5 = getelementptr inbounds %struct.IOASCIIGH* %myGH, i64 0, i32 1, !dbg !284
  %6 = load i32* %5, align 4, !dbg !284, !tbaa !239
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !125, metadata !231), !dbg !285
  %7 = icmp sgt i32 %3, 0, !dbg !286
  %8 = select i1 %7, i32 %3, i32 -1, !dbg !287
  %9 = icmp sgt i32 %2, 0, !dbg !288
  %. = select i1 %9, i32 %2, i32 %8, !dbg !290
  store i32 %., i32* %5, align 4, !dbg !291, !tbaa !239
  %10 = icmp eq i32 %., %6, !dbg !292
  br i1 %10, label %20, label %11, !dbg !294

; <label>:11                                      ; preds = %0
  %12 = tail call i32 @CCTK_Equals(i8* %4, i8* getelementptr inbounds ([9 x i8]* @.str4, i64 0, i64 0)) #5, !dbg !295
  %13 = icmp eq i32 %12, 0, !dbg !295
  br i1 %13, label %14, label %17, !dbg !298

; <label>:14                                      ; preds = %11
  %15 = tail call i32 @CCTK_Equals(i8* %4, i8* getelementptr inbounds ([5 x i8]* @.str5, i64 0, i64 0)) #5, !dbg !299
  %16 = icmp eq i32 %15, 0, !dbg !299
  br i1 %16, label %20, label %17, !dbg !300

; <label>:17                                      ; preds = %14, %11
  %18 = load i32* %5, align 4, !dbg !301, !tbaa !239
  %19 = tail call i32 (i8*, i8*, ...)* @CCTK_VInfo(i8* getelementptr inbounds ([8 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8]* @.str6, i64 0, i64 0), i32 %18) #5, !dbg !303
  br label %20, !dbg !304

; <label>:20                                      ; preds = %14, %0, %17
  %21 = tail call i32 @CCTK_ParameterQueryTimesSet(i8* getelementptr inbounds ([11 x i8]* @.str7, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str, i64 0, i64 0)) #5, !dbg !305
  tail call void @llvm.dbg.value(metadata i32 %21, i64 0, metadata !126, metadata !231), !dbg !306
  %22 = load i32* @CheckSteerableParameters.out2D_vars_lastset, align 4, !dbg !307, !tbaa !271
  %23 = icmp eq i32 %21, %22, !dbg !309
  br i1 %23, label %60, label %24, !dbg !310

; <label>:24                                      ; preds = %20
  %25 = tail call i32 @CCTK_NumVars() #5, !dbg !311
  tail call void @llvm.dbg.value(metadata i32 %25, i64 0, metadata !127, metadata !231), !dbg !313
  %26 = getelementptr inbounds %struct.IOASCIIGH* %myGH, i64 0, i32 4, !dbg !314
  %27 = load i8** %26, align 8, !dbg !314, !tbaa !315
  %28 = sext i32 %25 to i64, !dbg !314
  %29 = tail call i64 @llvm.objectsize.i64.p0i8(i8* %27, i1 false), !dbg !314
  %30 = tail call i8* @__memset_chk(i8* %27, i32 0, i64 %28, i64 %29) #5, !dbg !314
  %31 = load i8** %26, align 8, !dbg !316, !tbaa !315
  %32 = tail call i32 @CCTK_TraverseString(i8* %1, void (i32, i8*, i8*)* @SetOutputFlag, i8* %31, i32 3) #5, !dbg !317
  %33 = tail call i32 @CCTK_Equals(i8* %4, i8* getelementptr inbounds ([9 x i8]* @.str4, i64 0, i64 0)) #5, !dbg !318
  %34 = icmp eq i32 %33, 0, !dbg !318
  br i1 %34, label %35, label %38, !dbg !320

; <label>:35                                      ; preds = %24
  %36 = tail call i32 @CCTK_Equals(i8* %4, i8* getelementptr inbounds ([5 x i8]* @.str5, i64 0, i64 0)) #5, !dbg !321
  %37 = icmp eq i32 %36, 0, !dbg !321
  br i1 %37, label %.thread, label %38, !dbg !322

; <label>:38                                      ; preds = %35, %24
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !129, metadata !231), !dbg !323
  store i8* null, i8** %msg, align 8, !dbg !324, !tbaa !326
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !124, metadata !231), !dbg !327
  %39 = icmp sgt i32 %25, 0, !dbg !328
  br i1 %39, label %.lr.ph, label %.thread, !dbg !331

.lr.ph:                                           ; preds = %38
  %40 = add i32 %25, -1, !dbg !331
  br label %41, !dbg !331

; <label>:41                                      ; preds = %._crit_edge2, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %._crit_edge2 ]
  %42 = load i8** %26, align 8, !dbg !332, !tbaa !315
  %43 = getelementptr inbounds i8* %42, i64 %indvars.iv, !dbg !335
  %44 = load i8* %43, align 1, !dbg !335, !tbaa !336
  %45 = icmp eq i8 %44, 0, !dbg !335
  %.pre3 = trunc i64 %indvars.iv to i32, !dbg !331
  br i1 %45, label %._crit_edge2, label %46, !dbg !337

; <label>:46                                      ; preds = %41
  %47 = call i8* @CCTK_FullName(i32 %.pre3) #5, !dbg !338
  call void @llvm.dbg.value(metadata i8* %47, i64 0, metadata !128, metadata !231), !dbg !340
  call void @llvm.dbg.value(metadata i8** %msg, i64 0, metadata !129, metadata !231), !dbg !323
  %48 = load i8** %msg, align 8, !dbg !341, !tbaa !326
  %49 = icmp eq i8* %48, null, !dbg !341
  call void @llvm.dbg.value(metadata i8** %msg, i64 0, metadata !129, metadata !231), !dbg !323
  br i1 %49, label %50, label %52, !dbg !343

; <label>:50                                      ; preds = %46
  %51 = call i32 (i8**, i8*, ...)* @Util_asprintf(i8** %msg, i8* getelementptr inbounds ([36 x i8]* @.str8, i64 0, i64 0), i8* %47) #5, !dbg !344
  br label %54, !dbg !346

; <label>:52                                      ; preds = %46
  %53 = call i32 (i8**, i8*, ...)* @Util_asprintf(i8** %msg, i8* getelementptr inbounds ([6 x i8]* @.str9, i64 0, i64 0), i8* %48, i8* %47) #5, !dbg !347
  br label %54

; <label>:54                                      ; preds = %52, %50
  call void @free(i8* %47) #6, !dbg !349
  br label %._crit_edge2, !dbg !350

._crit_edge2:                                     ; preds = %41, %54
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !331
  %exitcond = icmp eq i32 %.pre3, %40, !dbg !331
  br i1 %exitcond, label %55, label %41, !dbg !331

; <label>:55                                      ; preds = %._crit_edge2
  %.pre = load i8** %msg, align 8, !dbg !351, !tbaa !326
  call void @llvm.dbg.value(metadata i8** %msg, i64 0, metadata !129, metadata !231), !dbg !323
  %56 = icmp eq i8* %.pre, null, !dbg !351
  br i1 %56, label %.thread, label %57, !dbg !353

; <label>:57                                      ; preds = %55
  %58 = call i32 @CCTK_Info(i8* getelementptr inbounds ([8 x i8]* @.str, i64 0, i64 0), i8* %.pre) #5, !dbg !354
  call void @llvm.dbg.value(metadata i8** %msg, i64 0, metadata !129, metadata !231), !dbg !323
  %59 = load i8** %msg, align 8, !dbg !356, !tbaa !326
  call void @free(i8* %59) #6, !dbg !357
  br label %.thread, !dbg !358

.thread:                                          ; preds = %38, %55, %35, %57
  store i32 %21, i32* @CheckSteerableParameters.out2D_vars_lastset, align 4, !dbg !359, !tbaa !271
  br label %60, !dbg !360

; <label>:60                                      ; preds = %20, %.thread
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !191, metadata !231), !dbg !277
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !191, metadata !231), !dbg !277
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !191, metadata !231), !dbg !277
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !191, metadata !231), !dbg !277
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !191, metadata !231), !dbg !277
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !191, metadata !231), !dbg !277
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !191, metadata !231), !dbg !277
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !191, metadata !231), !dbg !277
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !191, metadata !231), !dbg !277
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !191, metadata !231), !dbg !277
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !191, metadata !231), !dbg !277
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !191, metadata !231), !dbg !277
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !191, metadata !231), !dbg !277
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !191, metadata !231), !dbg !277
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !191, metadata !231), !dbg !277
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !191, metadata !231), !dbg !277
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !191, metadata !231), !dbg !277
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !191, metadata !231), !dbg !277
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !191, metadata !231), !dbg !277
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !191, metadata !231), !dbg !277
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !191, metadata !231), !dbg !277
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !191, metadata !231), !dbg !277
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !191, metadata !231), !dbg !277
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !191, metadata !231), !dbg !277
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !191, metadata !231), !dbg !277
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !191, metadata !231), !dbg !277
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !191, metadata !231), !dbg !277
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !191, metadata !231), !dbg !277
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !191, metadata !231), !dbg !277
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !191, metadata !231), !dbg !277
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !191, metadata !231), !dbg !277
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !191, metadata !231), !dbg !277
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !191, metadata !231), !dbg !277
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !191, metadata !231), !dbg !277
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !191, metadata !231), !dbg !277
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !191, metadata !231), !dbg !277
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !191, metadata !231), !dbg !277
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !191, metadata !231), !dbg !277
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !191, metadata !231), !dbg !277
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !191, metadata !231), !dbg !277
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !191, metadata !231), !dbg !277
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !191, metadata !231), !dbg !277
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !191, metadata !231), !dbg !277
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !191, metadata !231), !dbg !277
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !191, metadata !231), !dbg !277
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !191, metadata !231), !dbg !277
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !191, metadata !231), !dbg !277
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !191, metadata !231), !dbg !277
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !191, metadata !231), !dbg !277
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !191, metadata !231), !dbg !277
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !191, metadata !231), !dbg !277
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !191, metadata !231), !dbg !277
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !191, metadata !231), !dbg !277
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !191, metadata !231), !dbg !277
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !191, metadata !231), !dbg !277
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !191, metadata !231), !dbg !277
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !191, metadata !231), !dbg !277
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !191, metadata !231), !dbg !277
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !191, metadata !231), !dbg !277
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !191, metadata !231), !dbg !277
  ret void, !dbg !361
}

; Function Attrs: optsize
declare i32 @CCTK_NumVars() #2

; Function Attrs: nounwind optsize ssp uwtable
define i32 @IOASCII_TimeFor2D(%struct.cGH* %GH, i32 %vindex) #1 {
  tail call void @llvm.dbg.value(metadata %struct.cGH* %GH, i64 0, metadata !107, metadata !231), !dbg !362
  tail call void @llvm.dbg.value(metadata i32 %vindex, i64 0, metadata !108, metadata !231), !dbg !363
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !109, metadata !231), !dbg !364
  %1 = tail call i8* @CCTK_GHExtension(%struct.cGH* %GH, i8* getelementptr inbounds ([8 x i8]* @.str, i64 0, i64 0)) #5, !dbg !365
  %2 = bitcast i8* %1 to %struct.IOASCIIGH*, !dbg !366
  tail call void @llvm.dbg.value(metadata %struct.IOASCIIGH* %2, i64 0, metadata !110, metadata !231), !dbg !367
  tail call fastcc void @CheckSteerableParameters(%struct.IOASCIIGH* %2) #6, !dbg !368
  %3 = getelementptr inbounds i8* %1, i64 4, !dbg !369
  %4 = bitcast i8* %3 to i32*, !dbg !369
  %5 = load i32* %4, align 4, !dbg !369, !tbaa !239
  %6 = icmp slt i32 %5, 1, !dbg !371
  br i1 %6, label %30, label %7, !dbg !372

; <label>:7                                       ; preds = %0
  %8 = sext i32 %vindex to i64, !dbg !373
  %9 = getelementptr inbounds i8* %1, i64 24, !dbg !375
  %10 = bitcast i8* %9 to i8**, !dbg !375
  %11 = load i8** %10, align 8, !dbg !375, !tbaa !315
  %12 = getelementptr inbounds i8* %11, i64 %8, !dbg !373
  %13 = load i8* %12, align 1, !dbg !373, !tbaa !336
  %14 = icmp eq i8 %13, 0, !dbg !373
  br i1 %14, label %30, label %15, !dbg !376

; <label>:15                                      ; preds = %7
  %16 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 1, !dbg !377
  %17 = load i32* %16, align 4, !dbg !377, !tbaa !265
  %18 = srem i32 %17, %5, !dbg !378
  %19 = icmp eq i32 %18, 0, !dbg !379
  br i1 %19, label %20, label %30, !dbg !380

; <label>:20                                      ; preds = %15
  %21 = getelementptr inbounds i8* %1, i64 72, !dbg !381
  %22 = bitcast i8* %21 to i32**, !dbg !381
  %23 = load i32** %22, align 8, !dbg !381, !tbaa !268
  %24 = getelementptr inbounds i32* %23, i64 %8, !dbg !384
  %25 = load i32* %24, align 4, !dbg !384, !tbaa !271
  %26 = icmp eq i32 %25, %17, !dbg !385
  br i1 %26, label %27, label %30, !dbg !386

; <label>:27                                      ; preds = %20
  %28 = tail call i8* @CCTK_FullName(i32 %vindex) #5, !dbg !387
  tail call void @llvm.dbg.value(metadata i8* %28, i64 0, metadata !111, metadata !231), !dbg !389
  %29 = tail call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 5, i32 224, i8* getelementptr inbounds ([78 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([85 x i8]* @.str2, i64 0, i64 0), i8* %28) #5, !dbg !390
  tail call void @free(i8* %28) #6, !dbg !391
  br label %30, !dbg !392

; <label>:30                                      ; preds = %15, %27, %7, %20, %0
  %.0 = phi i32 [ 0, %0 ], [ 0, %27 ], [ 0, %15 ], [ 0, %7 ], [ 1, %20 ]
  ret i32 %.0, !dbg !393
}

; Function Attrs: optsize
declare i8* @CCTK_VarName(i32) #2

; Function Attrs: optsize
declare i32 @IOASCII_Write2D(%struct.cGH*, i32, i8*) #2

; Function Attrs: nounwind optsize ssp uwtable
define i32 @IOASCII_Output2DVarAs(%struct.cGH* %GH, i8* %fullname, i8* %alias) #1 {
  tail call void @llvm.dbg.value(metadata %struct.cGH* %GH, i64 0, metadata !98, metadata !231), !dbg !394
  tail call void @llvm.dbg.value(metadata i8* %fullname, i64 0, metadata !99, metadata !231), !dbg !395
  tail call void @llvm.dbg.value(metadata i8* %alias, i64 0, metadata !100, metadata !231), !dbg !396
  %1 = tail call i32 @CCTK_VarIndex(i8* %fullname) #5, !dbg !397
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !101, metadata !231), !dbg !398
  tail call void @llvm.dbg.value(metadata i32 -1, i64 0, metadata !102, metadata !231), !dbg !399
  %2 = tail call fastcc i32 @CheckOutputVar(i32 %1) #6, !dbg !400
  %3 = icmp eq i32 %2, 0, !dbg !402
  br i1 %3, label %4, label %6, !dbg !403

; <label>:4                                       ; preds = %0
  %5 = tail call i32 @IOASCII_Write2D(%struct.cGH* %GH, i32 %1, i8* %alias) #5, !dbg !404
  tail call void @llvm.dbg.value(metadata i32 %5, i64 0, metadata !102, metadata !231), !dbg !399
  br label %6, !dbg !406

; <label>:6                                       ; preds = %4, %0
  %retval.0 = phi i32 [ %5, %4 ], [ -1, %0 ]
  ret i32 %retval.0, !dbg !407
}

; Function Attrs: optsize
declare i32 @CCTK_VarIndex(i8*) #2

; Function Attrs: nounwind optsize ssp uwtable
define internal fastcc i32 @CheckOutputVar(i32 %vindex) #1 {
  %groupinfo = alloca %struct.cGroup, align 4
  tail call void @llvm.dbg.value(metadata i32 %vindex, i64 0, metadata !206, metadata !231), !dbg !408
  %1 = tail call i32 @CCTK_GroupIndexFromVarI(i32 %vindex) #5, !dbg !409
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !207, metadata !231), !dbg !410
  tail call void @llvm.dbg.value(metadata %struct.cGroup* %groupinfo, i64 0, metadata !208, metadata !231), !dbg !411
  %2 = call i32 @CCTK_GroupData(i32 %1, %struct.cGroup* %groupinfo) #5, !dbg !412
  call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !222, metadata !231), !dbg !413
  %3 = getelementptr inbounds %struct.cGroup* %groupinfo, i64 0, i32 4, !dbg !414
  %4 = load i32* %3, align 4, !dbg !414, !tbaa !416
  %5 = and i32 %4, -2, !dbg !418
  %6 = icmp eq i32 %5, 2, !dbg !418
  br i1 %6, label %7, label %11, !dbg !418

; <label>:7                                       ; preds = %0
  %8 = getelementptr inbounds %struct.cGroup* %groupinfo, i64 0, i32 0, !dbg !419
  %9 = load i32* %8, align 4, !dbg !419, !tbaa !421
  %10 = and i32 %9, -2, !dbg !422
  %switch = icmp eq i32 %10, 2, !dbg !422
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !222, metadata !231), !dbg !413
  br i1 %switch, label %14, label %11

; <label>:11                                      ; preds = %0, %7
  %errormsg.0.ph = phi i8* [ getelementptr inbounds ([61 x i8]* @.str12, i64 0, i64 0), %7 ], [ getelementptr inbounds ([45 x i8]* @.str11, i64 0, i64 0), %0 ]
  %12 = call i8* @CCTK_FullName(i32 %vindex) #5, !dbg !423
  call void @llvm.dbg.value(metadata i8* %12, i64 0, metadata !221, metadata !231), !dbg !426
  %13 = call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 2, i32 398, i8* getelementptr inbounds ([78 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str, i64 0, i64 0), i8* %errormsg.0.ph, i8* %12) #5, !dbg !427
  call void @free(i8* %12) #6, !dbg !428
  br label %14, !dbg !429

; <label>:14                                      ; preds = %7, %11
  %15 = phi i32 [ 1, %11 ], [ 0, %7 ]
  ret i32 %15, !dbg !430
}

; Function Attrs: optsize
declare i8* @CCTK_FullName(i32) #2

; Function Attrs: optsize
declare i32 @CCTK_VWarn(i32, i32, i8*, i8*, i8*, ...) #2

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) #3

; Function Attrs: nounwind optsize ssp uwtable
define i32 @IOASCII_TriggerOutput2D(%struct.cGH* %GH, i32 %vindex) #1 {
  tail call void @llvm.dbg.value(metadata %struct.cGH* %GH, i64 0, metadata !114, metadata !231), !dbg !431
  tail call void @llvm.dbg.value(metadata i32 %vindex, i64 0, metadata !115, metadata !231), !dbg !432
  %1 = tail call i8* @CCTK_GHExtension(%struct.cGH* %GH, i8* getelementptr inbounds ([8 x i8]* @.str, i64 0, i64 0)) #5, !dbg !433
  %2 = tail call i8* @CCTK_VarName(i32 %vindex) #5, !dbg !434
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !117, metadata !231), !dbg !435
  %3 = tail call i32 @IOASCII_Write2D(%struct.cGH* %GH, i32 %vindex, i8* %2) #5, !dbg !436
  tail call void @llvm.dbg.value(metadata i32 %3, i64 0, metadata !116, metadata !231), !dbg !437
  %4 = icmp eq i32 %3, 0, !dbg !438
  br i1 %4, label %5, label %13, !dbg !440

; <label>:5                                       ; preds = %0
  %6 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 1, !dbg !441
  %7 = load i32* %6, align 4, !dbg !441, !tbaa !265
  %8 = sext i32 %vindex to i64, !dbg !443
  %9 = getelementptr inbounds i8* %1, i64 72, !dbg !444
  %10 = bitcast i8* %9 to i32**, !dbg !444
  %11 = load i32** %10, align 8, !dbg !444, !tbaa !268
  %12 = getelementptr inbounds i32* %11, i64 %8, !dbg !443
  store i32 %7, i32* %12, align 4, !dbg !445, !tbaa !271
  br label %13, !dbg !446

; <label>:13                                      ; preds = %5, %0
  ret i32 %3, !dbg !447
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
  tail call void @llvm.dbg.value(metadata i32 %vindex, i64 0, metadata !198, metadata !231), !dbg !448
  tail call void @llvm.dbg.value(metadata i8* %optstring, i64 0, metadata !199, metadata !231), !dbg !449
  tail call void @llvm.dbg.value(metadata i8* %arg, i64 0, metadata !200, metadata !231), !dbg !450
  tail call void @llvm.dbg.value(metadata i8* %arg, i64 0, metadata !201, metadata !231), !dbg !451
  %1 = tail call fastcc i32 @CheckOutputVar(i32 %vindex) #6, !dbg !452
  %2 = icmp eq i32 %1, 0, !dbg !454
  br i1 %2, label %3, label %6, !dbg !455

; <label>:3                                       ; preds = %0
  %4 = sext i32 %vindex to i64, !dbg !456
  %5 = getelementptr inbounds i8* %arg, i64 %4, !dbg !456
  store i8 1, i8* %5, align 1, !dbg !458, !tbaa !336
  br label %6, !dbg !459

; <label>:6                                       ; preds = %3, %0
  %7 = icmp eq i8* %optstring, null, !dbg !460
  br i1 %7, label %10, label %8, !dbg !462

; <label>:8                                       ; preds = %6
  %9 = tail call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 5, i32 421, i8* getelementptr inbounds ([78 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([46 x i8]* @.str10, i64 0, i64 0), i8* %optstring) #5, !dbg !463
  br label %10, !dbg !465

; <label>:10                                      ; preds = %6, %8
  ret void, !dbg !466
}

; Function Attrs: optsize
declare i32 @Util_asprintf(i8**, i8*, ...) #2

; Function Attrs: optsize
declare i32 @CCTK_Info(i8*, i8*) #2

; Function Attrs: optsize
declare i32 @CCTK_GroupIndexFromVarI(i32) #2

; Function Attrs: optsize
declare i32 @CCTK_GroupData(i32, %struct.cGroup*) #2

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
!llvm.module.flags = !{!226, !227, !228}
!llvm.ident = !{!229}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !3, subprograms: !43, globals: !223, imports: !2)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/IOASCII/Output2D.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{}
!3 = !{!4, !14, !36}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64, align: 64)
!5 = !DIDerivedType(tag: DW_TAG_typedef, name: "asciiioGH", file: !6, line: 55, baseType: !7)
!6 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/IOASCII/../include/ioASCIIGH.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!7 = !DICompositeType(tag: DW_TAG_structure_type, name: "IOASCIIGH", file: !6, line: 20, size: 1024, align: 64, elements: !8)
!8 = !{!9, !11, !12, !13, !16, !17, !18, !19, !20, !21, !23, !24, !25, !37, !38, !39, !42}
!9 = !DIDerivedType(tag: DW_TAG_member, name: "out1D_every", scope: !7, file: !6, line: 23, baseType: !10, size: 32, align: 32)
!10 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!11 = !DIDerivedType(tag: DW_TAG_member, name: "out2D_every", scope: !7, file: !6, line: 24, baseType: !10, size: 32, align: 32, offset: 32)
!12 = !DIDerivedType(tag: DW_TAG_member, name: "out3D_every", scope: !7, file: !6, line: 25, baseType: !10, size: 32, align: 32, offset: 64)
!13 = !DIDerivedType(tag: DW_TAG_member, name: "do_out1D", scope: !7, file: !6, line: 28, baseType: !14, size: 64, align: 64, offset: 128)
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64, align: 64)
!15 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!16 = !DIDerivedType(tag: DW_TAG_member, name: "do_out2D", scope: !7, file: !6, line: 29, baseType: !14, size: 64, align: 64, offset: 192)
!17 = !DIDerivedType(tag: DW_TAG_member, name: "do_out3D", scope: !7, file: !6, line: 30, baseType: !14, size: 64, align: 64, offset: 256)
!18 = !DIDerivedType(tag: DW_TAG_member, name: "outdir1D", scope: !7, file: !6, line: 33, baseType: !14, size: 64, align: 64, offset: 320)
!19 = !DIDerivedType(tag: DW_TAG_member, name: "outdir2D", scope: !7, file: !6, line: 34, baseType: !14, size: 64, align: 64, offset: 384)
!20 = !DIDerivedType(tag: DW_TAG_member, name: "outdir3D", scope: !7, file: !6, line: 35, baseType: !14, size: 64, align: 64, offset: 448)
!21 = !DIDerivedType(tag: DW_TAG_member, name: "out1D_last", scope: !7, file: !6, line: 38, baseType: !22, size: 64, align: 64, offset: 512)
!22 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64, align: 64)
!23 = !DIDerivedType(tag: DW_TAG_member, name: "out2D_last", scope: !7, file: !6, line: 39, baseType: !22, size: 64, align: 64, offset: 576)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "out3D_last", scope: !7, file: !6, line: 40, baseType: !22, size: 64, align: 64, offset: 640)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "filenameList1D", scope: !7, file: !6, line: 43, baseType: !26, size: 64, align: 64, offset: 704)
!26 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !27, size: 64, align: 64)
!27 = !DIDerivedType(tag: DW_TAG_typedef, name: "pNamedData", file: !28, line: 26, baseType: !29)
!28 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/IOASCII/../include/StoreNamedData.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!29 = !DICompositeType(tag: DW_TAG_structure_type, name: "PNamedData", file: !28, line: 18, size: 256, align: 64, elements: !30)
!30 = !{!31, !33, !34, !35}
!31 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !29, file: !28, line: 20, baseType: !32, size: 64, align: 64)
!32 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64, align: 64)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !29, file: !28, line: 21, baseType: !32, size: 64, align: 64, offset: 64)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !29, file: !28, line: 23, baseType: !14, size: 64, align: 64, offset: 128)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !29, file: !28, line: 25, baseType: !36, size: 64, align: 64, offset: 192)
!36 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "fileList_2D", scope: !7, file: !6, line: 44, baseType: !26, size: 64, align: 64, offset: 768)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "fileList_3D", scope: !7, file: !6, line: 45, baseType: !26, size: 64, align: 64, offset: 832)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "spxyz", scope: !7, file: !6, line: 49, baseType: !40, size: 64, align: 64, offset: 896)
!40 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !41, size: 64, align: 64)
!41 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64, align: 64)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "sp2xyz", scope: !7, file: !6, line: 53, baseType: !41, size: 64, align: 64, offset: 960)
!43 = !{!44, !49, !94, !103, !112, !119, !194, !202}
!44 = !DISubprogram(name: "CCTKi_version_CactusBase_IOASCII_Output2D_c", scope: !1, file: !1, line: 25, type: !45, isLocal: false, isDefinition: true, scopeLine: 25, flags: DIFlagPrototyped, isOptimized: true, function: i8* ()* @CCTKi_version_CactusBase_IOASCII_Output2D_c, variables: !2)
!45 = !DISubroutineType(types: !46)
!46 = !{!47}
!47 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !48, size: 64, align: 64)
!48 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !15)
!49 = !DISubprogram(name: "IOASCII_Output2DGH", scope: !1, file: !1, line: 61, type: !50, isLocal: false, isDefinition: true, scopeLine: 62, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.cGH*)* @IOASCII_Output2DGH, variables: !88)
!50 = !DISubroutineType(types: !51)
!51 = !{!10, !52}
!52 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !53, size: 64, align: 64)
!53 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !54)
!54 = !DIDerivedType(tag: DW_TAG_typedef, name: "cGH", file: !55, line: 75, baseType: !56)
!55 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/IOASCII/../include/cGH.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!56 = !DICompositeType(tag: DW_TAG_structure_type, file: !55, line: 24, size: 1216, align: 64, elements: !57)
!57 = !{!58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !69, !71, !72, !73, !74, !75, !76, !77, !80, !81}
!58 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_dim", scope: !56, file: !55, line: 26, baseType: !10, size: 32, align: 32)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_iteration", scope: !56, file: !55, line: 27, baseType: !10, size: 32, align: 32, offset: 32)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_gsh", scope: !56, file: !55, line: 30, baseType: !22, size: 64, align: 64, offset: 64)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_lsh", scope: !56, file: !55, line: 31, baseType: !22, size: 64, align: 64, offset: 128)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_lbnd", scope: !56, file: !55, line: 32, baseType: !22, size: 64, align: 64, offset: 192)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_ubnd", scope: !56, file: !55, line: 33, baseType: !22, size: 64, align: 64, offset: 256)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_lssh", scope: !56, file: !55, line: 36, baseType: !22, size: 64, align: 64, offset: 320)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_to", scope: !56, file: !55, line: 39, baseType: !22, size: 64, align: 64, offset: 384)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_from", scope: !56, file: !55, line: 40, baseType: !22, size: 64, align: 64, offset: 448)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_delta_time", scope: !56, file: !55, line: 43, baseType: !68, size: 64, align: 64, offset: 512)
!68 = !DIBasicType(name: "double", size: 64, align: 64, encoding: DW_ATE_float)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_delta_space", scope: !56, file: !55, line: 44, baseType: !70, size: 64, align: 64, offset: 576)
!70 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !68, size: 64, align: 64)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_origin_space", scope: !56, file: !55, line: 47, baseType: !70, size: 64, align: 64, offset: 640)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_bbox", scope: !56, file: !55, line: 51, baseType: !22, size: 64, align: 64, offset: 704)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_levfac", scope: !56, file: !55, line: 54, baseType: !22, size: 64, align: 64, offset: 768)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_convlevel", scope: !56, file: !55, line: 57, baseType: !10, size: 32, align: 32, offset: 832)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_nghostzones", scope: !56, file: !55, line: 60, baseType: !22, size: 64, align: 64, offset: 896)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_time", scope: !56, file: !55, line: 63, baseType: !68, size: 64, align: 64, offset: 960)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !56, file: !55, line: 67, baseType: !78, size: 64, align: 64, offset: 1024)
!78 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !79, size: 64, align: 64)
!79 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !36, size: 64, align: 64)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "extensions", scope: !56, file: !55, line: 70, baseType: !79, size: 64, align: 64, offset: 1088)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "GroupData", scope: !56, file: !55, line: 73, baseType: !82, size: 64, align: 64, offset: 1152)
!82 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !83, size: 64, align: 64)
!83 = !DIDerivedType(tag: DW_TAG_typedef, name: "cGHGroupData", file: !55, line: 22, baseType: !84)
!84 = !DICompositeType(tag: DW_TAG_structure_type, file: !55, line: 18, size: 16, align: 8, elements: !85)
!85 = !{!86, !87}
!86 = !DIDerivedType(tag: DW_TAG_member, name: "storage", scope: !84, file: !55, line: 20, baseType: !15, size: 8, align: 8)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !84, file: !55, line: 21, baseType: !15, size: 8, align: 8, offset: 8)
!88 = !{!89, !90, !91, !92, !93}
!89 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "GH", arg: 1, scope: !49, file: !1, line: 61, type: !52)
!90 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "vindex", scope: !49, file: !1, line: 63, type: !10)
!91 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "retval", scope: !49, file: !1, line: 63, type: !10)
!92 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "myGH", scope: !49, file: !1, line: 64, type: !4)
!93 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "name", scope: !49, file: !1, line: 65, type: !47)
!94 = !DISubprogram(name: "IOASCII_Output2DVarAs", scope: !1, file: !1, line: 146, type: !95, isLocal: false, isDefinition: true, scopeLine: 147, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.cGH*, i8*, i8*)* @IOASCII_Output2DVarAs, variables: !97)
!95 = !DISubroutineType(types: !96)
!96 = !{!10, !52, !47, !47}
!97 = !{!98, !99, !100, !101, !102}
!98 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "GH", arg: 1, scope: !94, file: !1, line: 146, type: !52)
!99 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "fullname", arg: 2, scope: !94, file: !1, line: 146, type: !47)
!100 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "alias", arg: 3, scope: !94, file: !1, line: 146, type: !47)
!101 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "vindex", scope: !94, file: !1, line: 148, type: !10)
!102 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "retval", scope: !94, file: !1, line: 148, type: !10)
!103 = !DISubprogram(name: "IOASCII_TimeFor2D", scope: !1, file: !1, line: 196, type: !104, isLocal: false, isDefinition: true, scopeLine: 197, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.cGH*, i32)* @IOASCII_TimeFor2D, variables: !106)
!104 = !DISubroutineType(types: !105)
!105 = !{!10, !52, !10}
!106 = !{!107, !108, !109, !110, !111}
!107 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "GH", arg: 1, scope: !103, file: !1, line: 196, type: !52)
!108 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "vindex", arg: 2, scope: !103, file: !1, line: 196, type: !10)
!109 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "return_type", scope: !103, file: !1, line: 198, type: !10)
!110 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "myGH", scope: !103, file: !1, line: 199, type: !4)
!111 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "fullname", scope: !103, file: !1, line: 200, type: !14)
!112 = !DISubprogram(name: "IOASCII_TriggerOutput2D", scope: !1, file: !1, line: 265, type: !104, isLocal: false, isDefinition: true, scopeLine: 266, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.cGH*, i32)* @IOASCII_TriggerOutput2D, variables: !113)
!113 = !{!114, !115, !116, !117, !118}
!114 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "GH", arg: 1, scope: !112, file: !1, line: 265, type: !52)
!115 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "vindex", arg: 2, scope: !112, file: !1, line: 265, type: !10)
!116 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "retval", scope: !112, file: !1, line: 267, type: !10)
!117 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "var", scope: !112, file: !1, line: 268, type: !47)
!118 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "myGH", scope: !112, file: !1, line: 269, type: !4)
!119 = !DISubprogram(name: "CheckSteerableParameters", scope: !1, file: !1, line: 298, type: !120, isLocal: true, isDefinition: true, scopeLine: 299, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.IOASCIIGH*)* @CheckSteerableParameters, variables: !122)
!120 = !DISubroutineType(types: !121)
!121 = !{null, !4}
!122 = !{!123, !124, !125, !126, !127, !128, !129, !130, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191}
!123 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "myGH", arg: 1, scope: !119, file: !1, line: 298, type: !4)
!124 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !119, file: !1, line: 300, type: !10)
!125 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "out_old", scope: !119, file: !1, line: 300, type: !10)
!126 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "times_set", scope: !119, file: !1, line: 300, type: !10)
!127 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "num_vars", scope: !119, file: !1, line: 300, type: !10)
!128 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "fullname", scope: !119, file: !1, line: 301, type: !14)
!129 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "msg", scope: !119, file: !1, line: 301, type: !14)
!130 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "out1D_xline_y", scope: !119, file: !1, line: 303, type: !131)
!131 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !68)
!132 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "out1D_xline_z", scope: !119, file: !1, line: 303, type: !131)
!133 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "out1D_yline_x", scope: !119, file: !1, line: 303, type: !131)
!134 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "out1D_yline_z", scope: !119, file: !1, line: 303, type: !131)
!135 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "out1D_zline_x", scope: !119, file: !1, line: 303, type: !131)
!136 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "out1D_zline_y", scope: !119, file: !1, line: 303, type: !131)
!137 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "out2D_xyplane_z", scope: !119, file: !1, line: 303, type: !131)
!138 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "out2D_xzplane_y", scope: !119, file: !1, line: 303, type: !131)
!139 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "out2D_yzplane_x", scope: !119, file: !1, line: 303, type: !131)
!140 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "out1D_style", scope: !119, file: !1, line: 303, type: !47)
!141 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "out1D_vars", scope: !119, file: !1, line: 303, type: !47)
!142 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "out2D_style", scope: !119, file: !1, line: 303, type: !47)
!143 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "out2D_vars", scope: !119, file: !1, line: 303, type: !47)
!144 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "out3D_style", scope: !119, file: !1, line: 303, type: !47)
!145 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "out3D_vars", scope: !119, file: !1, line: 303, type: !47)
!146 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "out_format", scope: !119, file: !1, line: 303, type: !47)
!147 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "out_style", scope: !119, file: !1, line: 303, type: !47)
!148 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "outdir1D", scope: !119, file: !1, line: 303, type: !47)
!149 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "outdir2D", scope: !119, file: !1, line: 303, type: !47)
!150 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "outdir3D", scope: !119, file: !1, line: 303, type: !47)
!151 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "out1D_d", scope: !119, file: !1, line: 303, type: !152)
!152 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !10)
!153 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "out1D_every", scope: !119, file: !1, line: 303, type: !152)
!154 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "out1D_x", scope: !119, file: !1, line: 303, type: !152)
!155 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "out1D_xline_yi", scope: !119, file: !1, line: 303, type: !152)
!156 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "out1D_xline_zi", scope: !119, file: !1, line: 303, type: !152)
!157 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "out1D_y", scope: !119, file: !1, line: 303, type: !152)
!158 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "out1D_yline_xi", scope: !119, file: !1, line: 303, type: !152)
!159 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "out1D_yline_zi", scope: !119, file: !1, line: 303, type: !152)
!160 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "out1D_z", scope: !119, file: !1, line: 303, type: !152)
!161 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "out1D_zline_xi", scope: !119, file: !1, line: 303, type: !152)
!162 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "out1D_zline_yi", scope: !119, file: !1, line: 303, type: !152)
!163 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "out2D_every", scope: !119, file: !1, line: 303, type: !152)
!164 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "out2D_xyplane_zi", scope: !119, file: !1, line: 303, type: !152)
!165 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "out2D_xzplane_yi", scope: !119, file: !1, line: 303, type: !152)
!166 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "out2D_yzplane_xi", scope: !119, file: !1, line: 303, type: !152)
!167 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "out3D_every", scope: !119, file: !1, line: 303, type: !152)
!168 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "outdir", scope: !119, file: !1, line: 303, type: !47)
!169 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "out_every", scope: !119, file: !1, line: 303, type: !152)
!170 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "out_xline_y", scope: !119, file: !1, line: 303, type: !131)
!171 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "out_xline_z", scope: !119, file: !1, line: 303, type: !131)
!172 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "out_yline_x", scope: !119, file: !1, line: 303, type: !131)
!173 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "out_yline_z", scope: !119, file: !1, line: 303, type: !131)
!174 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "out_zline_x", scope: !119, file: !1, line: 303, type: !131)
!175 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "out_zline_y", scope: !119, file: !1, line: 303, type: !131)
!176 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "out_xline_yi", scope: !119, file: !1, line: 303, type: !152)
!177 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "out_xline_zi", scope: !119, file: !1, line: 303, type: !152)
!178 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "out_yline_xi", scope: !119, file: !1, line: 303, type: !152)
!179 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "out_yline_zi", scope: !119, file: !1, line: 303, type: !152)
!180 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "out_zline_xi", scope: !119, file: !1, line: 303, type: !152)
!181 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "out_zline_yi", scope: !119, file: !1, line: 303, type: !152)
!182 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "out_yzplane_x", scope: !119, file: !1, line: 303, type: !131)
!183 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "out_xzplane_y", scope: !119, file: !1, line: 303, type: !131)
!184 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "out_xyplane_z", scope: !119, file: !1, line: 303, type: !131)
!185 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "out_xyplane_zi", scope: !119, file: !1, line: 303, type: !152)
!186 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "out_xzplane_yi", scope: !119, file: !1, line: 303, type: !152)
!187 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "out_yzplane_xi", scope: !119, file: !1, line: 303, type: !152)
!188 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "newverbose", scope: !119, file: !1, line: 303, type: !47)
!189 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "new_filename_scheme", scope: !119, file: !1, line: 303, type: !152)
!190 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "out_fileinfo", scope: !119, file: !1, line: 303, type: !47)
!191 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cctk_pdummy_pointer", scope: !119, file: !1, line: 303, type: !192)
!192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !193, size: 64, align: 64)
!193 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!194 = !DISubprogram(name: "SetOutputFlag", scope: !1, file: !1, line: 408, type: !195, isLocal: true, isDefinition: true, scopeLine: 409, flags: DIFlagPrototyped, isOptimized: true, function: void (i32, i8*, i8*)* @SetOutputFlag, variables: !197)
!195 = !DISubroutineType(types: !196)
!196 = !{null, !10, !47, !36}
!197 = !{!198, !199, !200, !201}
!198 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "vindex", arg: 1, scope: !194, file: !1, line: 408, type: !10)
!199 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "optstring", arg: 2, scope: !194, file: !1, line: 408, type: !47)
!200 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "arg", arg: 3, scope: !194, file: !1, line: 408, type: !36)
!201 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "flags", scope: !194, file: !1, line: 410, type: !14)
!202 = !DISubprogram(name: "CheckOutputVar", scope: !1, file: !1, line: 372, type: !203, isLocal: true, isDefinition: true, scopeLine: 373, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i32)* @CheckOutputVar, variables: !205)
!203 = !DISubroutineType(types: !204)
!204 = !{!10, !10}
!205 = !{!206, !207, !208, !221, !222}
!206 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "vindex", arg: 1, scope: !202, file: !1, line: 372, type: !10)
!207 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "groupindex", scope: !202, file: !1, line: 374, type: !10)
!208 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "groupinfo", scope: !202, file: !1, line: 375, type: !209)
!209 = !DIDerivedType(tag: DW_TAG_typedef, name: "cGroup", file: !210, line: 24, baseType: !211)
!210 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/IOASCII/../include/cctk_Groups.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!211 = !DICompositeType(tag: DW_TAG_structure_type, file: !210, line: 14, size: 256, align: 32, elements: !212)
!212 = !{!213, !214, !215, !216, !217, !218, !219, !220}
!213 = !DIDerivedType(tag: DW_TAG_member, name: "grouptype", scope: !211, file: !210, line: 16, baseType: !10, size: 32, align: 32)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "vartype", scope: !211, file: !210, line: 17, baseType: !10, size: 32, align: 32, offset: 32)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "disttype", scope: !211, file: !210, line: 18, baseType: !10, size: 32, align: 32, offset: 64)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "stagtype", scope: !211, file: !210, line: 19, baseType: !10, size: 32, align: 32, offset: 96)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "dim", scope: !211, file: !210, line: 20, baseType: !10, size: 32, align: 32, offset: 128)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "numvars", scope: !211, file: !210, line: 21, baseType: !10, size: 32, align: 32, offset: 160)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "numtimelevels", scope: !211, file: !210, line: 22, baseType: !10, size: 32, align: 32, offset: 192)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "vectorgroup", scope: !211, file: !210, line: 23, baseType: !10, size: 32, align: 32, offset: 224)
!221 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "fullname", scope: !202, file: !1, line: 376, type: !14)
!222 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "errormsg", scope: !202, file: !1, line: 377, type: !47)
!223 = !{!224, !225}
!224 = !DIGlobalVariable(name: "rcsid", scope: !0, file: !1, line: 24, type: !47, isLocal: true, isDefinition: true)
!225 = !DIGlobalVariable(name: "out2D_vars_lastset", scope: !119, file: !1, line: 302, type: !10, isLocal: true, isDefinition: true, variable: i32* @CheckSteerableParameters.out2D_vars_lastset)
!226 = !{i32 2, !"Dwarf Version", i32 2}
!227 = !{i32 2, !"Debug Info Version", i32 700000003}
!228 = !{i32 1, !"PIC Level", i32 2}
!229 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!230 = !DILocation(line: 25, column: 1, scope: !44)
!231 = !DIExpression()
!232 = !DILocation(line: 61, column: 36, scope: !49)
!233 = !DILocation(line: 69, column: 24, scope: !49)
!234 = !DILocation(line: 69, column: 10, scope: !49)
!235 = !DILocation(line: 64, column: 14, scope: !49)
!236 = !DILocation(line: 71, column: 3, scope: !49)
!237 = !DILocation(line: 74, column: 13, scope: !238)
!238 = distinct !DILexicalBlock(scope: !49, file: !1, line: 74, column: 7)
!239 = !{!240, !241, i64 4}
!240 = !{!"IOASCIIGH", !241, i64 0, !241, i64 4, !241, i64 8, !244, i64 16, !244, i64 24, !244, i64 32, !244, i64 40, !244, i64 48, !244, i64 56, !244, i64 64, !244, i64 72, !244, i64 80, !244, i64 88, !244, i64 96, !244, i64 104, !244, i64 112, !244, i64 120}
!241 = !{!"int", !242, i64 0}
!242 = !{!"omnipotent char", !243, i64 0}
!243 = !{!"Simple C/C++ TBAA"}
!244 = !{!"any pointer", !242, i64 0}
!245 = !DILocation(line: 74, column: 25, scope: !238)
!246 = !DILocation(line: 74, column: 7, scope: !49)
!247 = !DILocation(line: 80, column: 38, scope: !248)
!248 = distinct !DILexicalBlock(scope: !249, file: !1, line: 80, column: 3)
!249 = distinct !DILexicalBlock(scope: !49, file: !1, line: 80, column: 3)
!250 = !DILocation(line: 80, column: 36, scope: !248)
!251 = !DILocation(line: 80, column: 3, scope: !249)
!252 = !DILocation(line: 104, column: 38, scope: !253)
!253 = distinct !DILexicalBlock(scope: !254, file: !1, line: 102, column: 5)
!254 = distinct !DILexicalBlock(scope: !255, file: !1, line: 101, column: 9)
!255 = distinct !DILexicalBlock(scope: !248, file: !1, line: 81, column: 3)
!256 = !DILocation(line: 104, column: 13, scope: !253)
!257 = !DILocation(line: 84, column: 11, scope: !258)
!258 = distinct !DILexicalBlock(scope: !255, file: !1, line: 84, column: 9)
!259 = !DILocation(line: 84, column: 9, scope: !255)
!260 = !DILocation(line: 90, column: 12, scope: !255)
!261 = !DILocation(line: 65, column: 15, scope: !49)
!262 = !DILocation(line: 101, column: 9, scope: !254)
!263 = !DILocation(line: 101, column: 44, scope: !254)
!264 = !DILocation(line: 101, column: 9, scope: !255)
!265 = !{!266, !241, i64 4}
!266 = !{!"", !241, i64 0, !241, i64 4, !244, i64 8, !244, i64 16, !244, i64 24, !244, i64 32, !244, i64 40, !244, i64 48, !244, i64 56, !267, i64 64, !244, i64 72, !244, i64 80, !244, i64 88, !244, i64 96, !241, i64 104, !244, i64 112, !267, i64 120, !244, i64 128, !244, i64 136, !244, i64 144}
!267 = !{!"double", !242, i64 0}
!268 = !{!240, !244, i64 72}
!269 = !DILocation(line: 104, column: 7, scope: !253)
!270 = !DILocation(line: 104, column: 32, scope: !253)
!271 = !{!241, !241, i64 0}
!272 = !DILocation(line: 105, column: 13, scope: !253)
!273 = !DILocation(line: 63, column: 15, scope: !49)
!274 = !DILocation(line: 106, column: 5, scope: !253)
!275 = !DILocation(line: 110, column: 1, scope: !49)
!276 = !DILocation(line: 298, column: 50, scope: !119)
!277 = !DILocation(line: 303, column: 3, scope: !119)
!278 = !{!279, !244, i64 96}
!279 = !{!"", !267, i64 0, !267, i64 8, !267, i64 16, !267, i64 24, !267, i64 32, !267, i64 40, !267, i64 48, !267, i64 56, !267, i64 64, !244, i64 72, !244, i64 80, !244, i64 88, !244, i64 96, !244, i64 104, !244, i64 112, !244, i64 120, !244, i64 128, !244, i64 136, !244, i64 144, !244, i64 152, !241, i64 160, !241, i64 164, !241, i64 168, !241, i64 172, !241, i64 176, !241, i64 180, !241, i64 184, !241, i64 188, !241, i64 192, !241, i64 196, !241, i64 200, !241, i64 204, !241, i64 208, !241, i64 212, !241, i64 216, !241, i64 220}
!280 = !{!279, !241, i64 204}
!281 = !{!282, !241, i64 240}
!282 = !{!"", !267, i64 0, !267, i64 8, !267, i64 16, !267, i64 24, !267, i64 32, !267, i64 40, !267, i64 48, !267, i64 56, !267, i64 64, !244, i64 72, !244, i64 80, !244, i64 88, !244, i64 96, !244, i64 104, !244, i64 112, !244, i64 120, !244, i64 128, !244, i64 136, !244, i64 144, !244, i64 152, !244, i64 160, !244, i64 168, !244, i64 176, !241, i64 184, !241, i64 188, !241, i64 192, !241, i64 196, !241, i64 200, !241, i64 204, !241, i64 208, !241, i64 212, !241, i64 216, !241, i64 220, !241, i64 224, !241, i64 228, !241, i64 232, !241, i64 236, !241, i64 240, !241, i64 244, !241, i64 248, !241, i64 252, !241, i64 256, !241, i64 260, !241, i64 264, !241, i64 268, !241, i64 272, !241, i64 276, !241, i64 280, !241, i64 284, !241, i64 288, !241, i64 292}
!283 = !{!282, !244, i64 96}
!284 = !DILocation(line: 306, column: 19, scope: !119)
!285 = !DILocation(line: 300, column: 10, scope: !119)
!286 = !DILocation(line: 309, column: 33, scope: !119)
!287 = !DILocation(line: 309, column: 23, scope: !119)
!288 = !DILocation(line: 310, column: 19, scope: !289)
!289 = distinct !DILexicalBlock(scope: !119, file: !1, line: 310, column: 7)
!290 = !DILocation(line: 310, column: 7, scope: !119)
!291 = !DILocation(line: 309, column: 21, scope: !119)
!292 = !DILocation(line: 317, column: 25, scope: !293)
!293 = distinct !DILexicalBlock(scope: !119, file: !1, line: 317, column: 7)
!294 = !DILocation(line: 317, column: 7, scope: !119)
!295 = !DILocation(line: 319, column: 9, scope: !296)
!296 = distinct !DILexicalBlock(scope: !297, file: !1, line: 319, column: 9)
!297 = distinct !DILexicalBlock(scope: !293, file: !1, line: 318, column: 3)
!298 = !DILocation(line: 319, column: 46, scope: !296)
!299 = !DILocation(line: 320, column: 9, scope: !296)
!300 = !DILocation(line: 319, column: 9, scope: !297)
!301 = !DILocation(line: 323, column: 25, scope: !302)
!302 = distinct !DILexicalBlock(scope: !296, file: !1, line: 321, column: 5)
!303 = !DILocation(line: 322, column: 7, scope: !302)
!304 = !DILocation(line: 324, column: 5, scope: !302)
!305 = !DILocation(line: 328, column: 15, scope: !119)
!306 = !DILocation(line: 300, column: 19, scope: !119)
!307 = !DILocation(line: 329, column: 20, scope: !308)
!308 = distinct !DILexicalBlock(scope: !119, file: !1, line: 329, column: 7)
!309 = !DILocation(line: 329, column: 17, scope: !308)
!310 = !DILocation(line: 329, column: 7, scope: !119)
!311 = !DILocation(line: 331, column: 16, scope: !312)
!312 = distinct !DILexicalBlock(scope: !308, file: !1, line: 330, column: 3)
!313 = !DILocation(line: 300, column: 30, scope: !119)
!314 = !DILocation(line: 332, column: 5, scope: !312)
!315 = !{!240, !244, i64 24}
!316 = !DILocation(line: 333, column: 59, scope: !312)
!317 = !DILocation(line: 333, column: 5, scope: !312)
!318 = !DILocation(line: 336, column: 9, scope: !319)
!319 = distinct !DILexicalBlock(scope: !312, file: !1, line: 336, column: 9)
!320 = !DILocation(line: 336, column: 46, scope: !319)
!321 = !DILocation(line: 337, column: 9, scope: !319)
!322 = !DILocation(line: 336, column: 9, scope: !312)
!323 = !DILocation(line: 301, column: 20, scope: !119)
!324 = !DILocation(line: 339, column: 11, scope: !325)
!325 = distinct !DILexicalBlock(scope: !319, file: !1, line: 338, column: 5)
!326 = !{!244, !244, i64 0}
!327 = !DILocation(line: 300, column: 7, scope: !119)
!328 = !DILocation(line: 340, column: 21, scope: !329)
!329 = distinct !DILexicalBlock(scope: !330, file: !1, line: 340, column: 7)
!330 = distinct !DILexicalBlock(scope: !325, file: !1, line: 340, column: 7)
!331 = !DILocation(line: 340, column: 7, scope: !330)
!332 = !DILocation(line: 342, column: 19, scope: !333)
!333 = distinct !DILexicalBlock(scope: !334, file: !1, line: 342, column: 13)
!334 = distinct !DILexicalBlock(scope: !329, file: !1, line: 341, column: 7)
!335 = !DILocation(line: 342, column: 13, scope: !333)
!336 = !{!242, !242, i64 0}
!337 = !DILocation(line: 342, column: 13, scope: !334)
!338 = !DILocation(line: 344, column: 22, scope: !339)
!339 = distinct !DILexicalBlock(scope: !333, file: !1, line: 343, column: 9)
!340 = !DILocation(line: 301, column: 9, scope: !119)
!341 = !DILocation(line: 345, column: 17, scope: !342)
!342 = distinct !DILexicalBlock(scope: !339, file: !1, line: 345, column: 15)
!343 = !DILocation(line: 345, column: 15, scope: !339)
!344 = !DILocation(line: 347, column: 13, scope: !345)
!345 = distinct !DILexicalBlock(scope: !342, file: !1, line: 346, column: 11)
!346 = !DILocation(line: 349, column: 11, scope: !345)
!347 = !DILocation(line: 352, column: 13, scope: !348)
!348 = distinct !DILexicalBlock(scope: !342, file: !1, line: 351, column: 11)
!349 = !DILocation(line: 354, column: 11, scope: !339)
!350 = !DILocation(line: 355, column: 9, scope: !339)
!351 = !DILocation(line: 357, column: 11, scope: !352)
!352 = distinct !DILexicalBlock(scope: !325, file: !1, line: 357, column: 11)
!353 = !DILocation(line: 357, column: 11, scope: !325)
!354 = !DILocation(line: 359, column: 9, scope: !355)
!355 = distinct !DILexicalBlock(scope: !352, file: !1, line: 358, column: 7)
!356 = !DILocation(line: 360, column: 15, scope: !355)
!357 = !DILocation(line: 360, column: 9, scope: !355)
!358 = !DILocation(line: 361, column: 7, scope: !355)
!359 = !DILocation(line: 365, column: 24, scope: !312)
!360 = !DILocation(line: 366, column: 3, scope: !312)
!361 = !DILocation(line: 368, column: 24, scope: !119)
!362 = !DILocation(line: 196, column: 35, scope: !103)
!363 = !DILocation(line: 196, column: 43, scope: !103)
!364 = !DILocation(line: 198, column: 7, scope: !103)
!365 = !DILocation(line: 207, column: 24, scope: !103)
!366 = !DILocation(line: 207, column: 10, scope: !103)
!367 = !DILocation(line: 199, column: 14, scope: !103)
!368 = !DILocation(line: 209, column: 3, scope: !103)
!369 = !DILocation(line: 212, column: 13, scope: !370)
!370 = distinct !DILexicalBlock(scope: !103, file: !1, line: 212, column: 7)
!371 = !DILocation(line: 212, column: 25, scope: !370)
!372 = !DILocation(line: 212, column: 7, scope: !103)
!373 = !DILocation(line: 218, column: 7, scope: !374)
!374 = distinct !DILexicalBlock(scope: !103, file: !1, line: 218, column: 7)
!375 = !DILocation(line: 218, column: 13, scope: !374)
!376 = !DILocation(line: 218, column: 30, scope: !374)
!377 = !DILocation(line: 218, column: 38, scope: !374)
!378 = !DILocation(line: 218, column: 53, scope: !374)
!379 = !DILocation(line: 218, column: 73, scope: !374)
!380 = !DILocation(line: 218, column: 7, scope: !103)
!381 = !DILocation(line: 221, column: 15, scope: !382)
!382 = distinct !DILexicalBlock(scope: !383, file: !1, line: 221, column: 9)
!383 = distinct !DILexicalBlock(scope: !374, file: !1, line: 219, column: 3)
!384 = !DILocation(line: 221, column: 9, scope: !382)
!385 = !DILocation(line: 221, column: 34, scope: !382)
!386 = !DILocation(line: 221, column: 9, scope: !383)
!387 = !DILocation(line: 223, column: 18, scope: !388)
!388 = distinct !DILexicalBlock(scope: !382, file: !1, line: 222, column: 5)
!389 = !DILocation(line: 200, column: 9, scope: !103)
!390 = !DILocation(line: 224, column: 7, scope: !388)
!391 = !DILocation(line: 227, column: 7, scope: !388)
!392 = !DILocation(line: 228, column: 5, scope: !388)
!393 = !DILocation(line: 236, column: 1, scope: !103)
!394 = !DILocation(line: 146, column: 39, scope: !94)
!395 = !DILocation(line: 146, column: 55, scope: !94)
!396 = !DILocation(line: 146, column: 77, scope: !94)
!397 = !DILocation(line: 151, column: 12, scope: !94)
!398 = !DILocation(line: 148, column: 7, scope: !94)
!399 = !DILocation(line: 148, column: 15, scope: !94)
!400 = !DILocation(line: 161, column: 7, scope: !401)
!401 = distinct !DILexicalBlock(scope: !94, file: !1, line: 161, column: 7)
!402 = !DILocation(line: 161, column: 31, scope: !401)
!403 = !DILocation(line: 161, column: 7, scope: !94)
!404 = !DILocation(line: 163, column: 14, scope: !405)
!405 = distinct !DILexicalBlock(scope: !401, file: !1, line: 162, column: 3)
!406 = !DILocation(line: 164, column: 3, scope: !405)
!407 = !DILocation(line: 166, column: 3, scope: !94)
!408 = !DILocation(line: 372, column: 32, scope: !202)
!409 = !DILocation(line: 381, column: 16, scope: !202)
!410 = !DILocation(line: 374, column: 7, scope: !202)
!411 = !DILocation(line: 375, column: 10, scope: !202)
!412 = !DILocation(line: 382, column: 3, scope: !202)
!413 = !DILocation(line: 377, column: 15, scope: !202)
!414 = !DILocation(line: 386, column: 17, scope: !415)
!415 = distinct !DILexicalBlock(scope: !202, file: !1, line: 386, column: 7)
!416 = !{!417, !241, i64 16}
!417 = !{!"", !241, i64 0, !241, i64 4, !241, i64 8, !241, i64 12, !241, i64 16, !241, i64 20, !241, i64 24, !241, i64 28}
!418 = !DILocation(line: 386, column: 25, scope: !415)
!419 = !DILocation(line: 390, column: 22, scope: !420)
!420 = distinct !DILexicalBlock(scope: !415, file: !1, line: 390, column: 12)
!421 = !{!417, !241, i64 0}
!422 = !DILocation(line: 390, column: 43, scope: !420)
!423 = !DILocation(line: 397, column: 16, scope: !424)
!424 = distinct !DILexicalBlock(scope: !425, file: !1, line: 396, column: 3)
!425 = distinct !DILexicalBlock(scope: !202, file: !1, line: 395, column: 7)
!426 = !DILocation(line: 376, column: 9, scope: !202)
!427 = !DILocation(line: 398, column: 5, scope: !424)
!428 = !DILocation(line: 399, column: 5, scope: !424)
!429 = !DILocation(line: 400, column: 3, scope: !424)
!430 = !DILocation(line: 402, column: 3, scope: !202)
!431 = !DILocation(line: 265, column: 41, scope: !112)
!432 = !DILocation(line: 265, column: 49, scope: !112)
!433 = !DILocation(line: 273, column: 24, scope: !112)
!434 = !DILocation(line: 275, column: 9, scope: !112)
!435 = !DILocation(line: 268, column: 15, scope: !112)
!436 = !DILocation(line: 284, column: 12, scope: !112)
!437 = !DILocation(line: 267, column: 7, scope: !112)
!438 = !DILocation(line: 286, column: 14, scope: !439)
!439 = distinct !DILexicalBlock(scope: !112, file: !1, line: 286, column: 7)
!440 = !DILocation(line: 286, column: 7, scope: !112)
!441 = !DILocation(line: 289, column: 36, scope: !442)
!442 = distinct !DILexicalBlock(scope: !439, file: !1, line: 287, column: 3)
!443 = !DILocation(line: 289, column: 5, scope: !442)
!444 = !DILocation(line: 289, column: 11, scope: !442)
!445 = !DILocation(line: 289, column: 30, scope: !442)
!446 = !DILocation(line: 290, column: 3, scope: !442)
!447 = !DILocation(line: 292, column: 3, scope: !112)
!448 = !DILocation(line: 408, column: 32, scope: !194)
!449 = !DILocation(line: 408, column: 52, scope: !194)
!450 = !DILocation(line: 408, column: 69, scope: !194)
!451 = !DILocation(line: 410, column: 9, scope: !194)
!452 = !DILocation(line: 414, column: 7, scope: !453)
!453 = distinct !DILexicalBlock(scope: !194, file: !1, line: 414, column: 7)
!454 = !DILocation(line: 414, column: 31, scope: !453)
!455 = !DILocation(line: 414, column: 7, scope: !194)
!456 = !DILocation(line: 416, column: 5, scope: !457)
!457 = distinct !DILexicalBlock(scope: !453, file: !1, line: 415, column: 3)
!458 = !DILocation(line: 416, column: 19, scope: !457)
!459 = !DILocation(line: 417, column: 3, scope: !457)
!460 = !DILocation(line: 419, column: 7, scope: !461)
!461 = distinct !DILexicalBlock(scope: !194, file: !1, line: 419, column: 7)
!462 = !DILocation(line: 419, column: 7, scope: !194)
!463 = !DILocation(line: 421, column: 5, scope: !464)
!464 = distinct !DILexicalBlock(scope: !461, file: !1, line: 420, column: 3)
!465 = !DILocation(line: 423, column: 3, scope: !464)
!466 = !DILocation(line: 424, column: 1, scope: !194)
