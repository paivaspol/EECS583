; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/IOASCII/Output1D.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.anon = type { double, double, double, double, double, double, double, double, double, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.anon.0 = type { double, double, double, double, double, double, double, double, double, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.cGH = type { i32, i32, i32*, i32*, i32*, i32*, i32*, i32*, i32*, double, double*, double*, i32*, i32*, i32, i32*, double, i8***, i8**, %struct.cGHGroupData* }
%struct.cGHGroupData = type { i8, i8 }
%struct.IOASCIIGH = type { i32, i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i32*, i32*, i32*, %struct.PNamedData*, %struct.PNamedData*, %struct.PNamedData*, i32***, i32** }
%struct.PNamedData = type { %struct.PNamedData*, %struct.PNamedData*, i8*, i8* }

@.str = private unnamed_addr constant [8 x i8] c"IOASCII\00", align 1
@.str1 = private unnamed_addr constant [78 x i8] c"../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/IOASCII/Output1D.c\00", align 1
@.str2 = private unnamed_addr constant [85 x i8] c"Already done IOASCII 1D output for '%s' in current iteration (probably via triggers)\00", align 1
@.str3 = private unnamed_addr constant [56 x i8] c"$Id: Output1D.c,v 1.15 2001/12/28 21:22:44 tradke Exp $\00", align 1
@CheckSteerableParameters.out1D_vars_lastset = internal unnamed_addr global i32 -1, align 4
@ioasciipriv_ = external global %struct.anon
@iorest_ = external global %struct.anon.0
@.str4 = private unnamed_addr constant [9 x i8] c"standard\00", align 1
@.str5 = private unnamed_addr constant [5 x i8] c"full\00", align 1
@.str6 = private unnamed_addr constant [39 x i8] c"IOASCII_1D: Output every %d iterations\00", align 1
@.str7 = private unnamed_addr constant [11 x i8] c"out1D_vars\00", align 1
@.str8 = private unnamed_addr constant [34 x i8] c"IOASCII_1D: Output requested for \00", align 1
@.str9 = private unnamed_addr constant [6 x i8] c"%s %s\00", align 1
@.str10 = private unnamed_addr constant [61 x i8] c"SetOutputFlag: Optional string '%s' in variable name ignored\00", align 1
@.str11 = private unnamed_addr constant [80 x i8] c"CheckOutputVar: No IOASCII 1D output for '%s' (not a grid function or an array)\00", align 1

; Function Attrs: nounwind optsize readnone ssp uwtable
define i8* @CCTKi_version_CactusBase_IOASCII_Output1D_c() #0 {
  ret i8* getelementptr inbounds ([56 x i8]* @.str3, i64 0, i64 0), !dbg !218
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @IOASCII_Output1DGH(%struct.cGH* %GH) #1 {
  tail call void @llvm.dbg.value(metadata %struct.cGH* %GH, i64 0, metadata !89, metadata !219), !dbg !220
  %1 = tail call i8* @CCTK_GHExtension(%struct.cGH* %GH, i8* getelementptr inbounds ([8 x i8]* @.str, i64 0, i64 0)) #6, !dbg !221
  %2 = bitcast i8* %1 to %struct.IOASCIIGH*, !dbg !222
  tail call void @llvm.dbg.value(metadata %struct.IOASCIIGH* %2, i64 0, metadata !92, metadata !219), !dbg !223
  tail call fastcc void @CheckSteerableParameters(%struct.IOASCIIGH* %2) #7, !dbg !224
  %3 = bitcast i8* %1 to i32*, !dbg !225
  %4 = load i32* %3, align 4, !dbg !225, !tbaa !227
  %5 = icmp slt i32 %4, 1, !dbg !233
  br i1 %5, label %.loopexit, label %.preheader, !dbg !234

.preheader:                                       ; preds = %0
  %6 = tail call i32 @CCTK_NumVars() #6, !dbg !235
  %7 = icmp sgt i32 %6, 0, !dbg !238
  br i1 %7, label %.lr.ph, label %.loopexit, !dbg !239

.lr.ph:                                           ; preds = %.preheader
  %8 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 1, !dbg !240
  %9 = getelementptr inbounds i8* %1, i64 64, !dbg !244
  %10 = bitcast i8* %9 to i32**, !dbg !244
  br label %11, !dbg !239

; <label>:11                                      ; preds = %.lr.ph, %24
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %24 ]
  %retval.01 = phi i32 [ 0, %.lr.ph ], [ %retval.1, %24 ]
  %12 = trunc i64 %indvars.iv to i32, !dbg !245
  %13 = tail call i32 @IOASCII_TimeFor1D(%struct.cGH* %GH, i32 %12) #7, !dbg !245
  %14 = icmp eq i32 %13, 0, !dbg !245
  br i1 %14, label %24, label %15, !dbg !247

; <label>:15                                      ; preds = %11
  %16 = tail call i8* @CCTK_VarName(i32 %12) #6, !dbg !248
  tail call void @llvm.dbg.value(metadata i8* %16, i64 0, metadata !93, metadata !219), !dbg !249
  %17 = tail call i32 @IOASCII_Write1D(%struct.cGH* %GH, i32 %12, i8* %16) #6, !dbg !250
  %18 = icmp eq i32 %17, 0, !dbg !251
  br i1 %18, label %19, label %24, !dbg !252

; <label>:19                                      ; preds = %15
  %20 = load i32* %8, align 4, !dbg !240, !tbaa !253
  %21 = load i32** %10, align 8, !dbg !244, !tbaa !256
  %22 = getelementptr inbounds i32* %21, i64 %indvars.iv, !dbg !257
  store i32 %20, i32* %22, align 4, !dbg !258, !tbaa !259
  %23 = add nsw i32 %retval.01, 1, !dbg !260
  tail call void @llvm.dbg.value(metadata i32 %23, i64 0, metadata !91, metadata !219), !dbg !261
  br label %24, !dbg !262

; <label>:24                                      ; preds = %11, %15, %19
  %retval.1 = phi i32 [ %23, %19 ], [ %retval.01, %15 ], [ %retval.01, %11 ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !239
  %25 = tail call i32 @CCTK_NumVars() #6, !dbg !235
  %26 = sext i32 %25 to i64, !dbg !238
  %27 = icmp slt i64 %indvars.iv.next, %26, !dbg !238
  br i1 %27, label %11, label %.loopexit, !dbg !239

.loopexit:                                        ; preds = %24, %.preheader, %0
  %.0 = phi i32 [ 0, %0 ], [ 0, %.preheader ], [ %retval.1, %24 ]
  ret i32 %.0, !dbg !263
}

; Function Attrs: optsize
declare i8* @CCTK_GHExtension(%struct.cGH*, i8*) #2

; Function Attrs: nounwind optsize ssp uwtable
define internal fastcc void @CheckSteerableParameters(%struct.IOASCIIGH* nocapture %myGH) #1 {
  tail call void @llvm.dbg.value(metadata %struct.IOASCIIGH* %myGH, i64 0, metadata !123, metadata !219), !dbg !264
  %1 = load i8** getelementptr inbounds (%struct.anon* @ioasciipriv_, i64 0, i32 10), align 8, !dbg !265, !tbaa !266
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !142, metadata !219), !dbg !265
  %2 = load i32* getelementptr inbounds (%struct.anon* @ioasciipriv_, i64 0, i32 21), align 4, !dbg !265, !tbaa !268
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !154, metadata !219), !dbg !265
  %3 = load i32* getelementptr inbounds (%struct.anon.0* @iorest_, i64 0, i32 37), align 8, !dbg !265, !tbaa !269
  tail call void @llvm.dbg.value(metadata i32 %3, i64 0, metadata !170, metadata !219), !dbg !265
  %4 = load i8** getelementptr inbounds (%struct.anon.0* @iorest_, i64 0, i32 12), align 8, !dbg !265, !tbaa !271
  tail call void @llvm.dbg.value(metadata i8* %4, i64 0, metadata !189, metadata !219), !dbg !265
  %5 = getelementptr inbounds %struct.IOASCIIGH* %myGH, i64 0, i32 0, !dbg !272
  %6 = load i32* %5, align 4, !dbg !272, !tbaa !227
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !126, metadata !219), !dbg !273
  %7 = icmp sgt i32 %3, 0, !dbg !274
  %8 = select i1 %7, i32 %3, i32 -1, !dbg !275
  %9 = icmp sgt i32 %2, 0, !dbg !276
  %. = select i1 %9, i32 %2, i32 %8, !dbg !278
  store i32 %., i32* %5, align 4, !dbg !279, !tbaa !227
  %10 = icmp eq i32 %., %6, !dbg !280
  br i1 %10, label %20, label %11, !dbg !282

; <label>:11                                      ; preds = %0
  %12 = tail call i32 @CCTK_Equals(i8* %4, i8* getelementptr inbounds ([9 x i8]* @.str4, i64 0, i64 0)) #6, !dbg !283
  %13 = icmp eq i32 %12, 0, !dbg !283
  br i1 %13, label %14, label %17, !dbg !286

; <label>:14                                      ; preds = %11
  %15 = tail call i32 @CCTK_Equals(i8* %4, i8* getelementptr inbounds ([5 x i8]* @.str5, i64 0, i64 0)) #6, !dbg !287
  %16 = icmp eq i32 %15, 0, !dbg !287
  br i1 %16, label %20, label %17, !dbg !288

; <label>:17                                      ; preds = %14, %11
  %18 = load i32* %5, align 4, !dbg !289, !tbaa !227
  %19 = tail call i32 (i8*, i8*, ...)* @CCTK_VInfo(i8* getelementptr inbounds ([8 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8]* @.str6, i64 0, i64 0), i32 %18) #6, !dbg !291
  br label %20, !dbg !292

; <label>:20                                      ; preds = %14, %0, %17
  %21 = tail call i32 @CCTK_ParameterQueryTimesSet(i8* getelementptr inbounds ([11 x i8]* @.str7, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str, i64 0, i64 0)) #6, !dbg !293
  tail call void @llvm.dbg.value(metadata i32 %21, i64 0, metadata !127, metadata !219), !dbg !294
  %22 = load i32* @CheckSteerableParameters.out1D_vars_lastset, align 4, !dbg !295, !tbaa !259
  %23 = icmp eq i32 %21, %22, !dbg !297
  br i1 %23, label %70, label %24, !dbg !298

; <label>:24                                      ; preds = %20
  %25 = tail call i32 @CCTK_NumVars() #6, !dbg !299
  tail call void @llvm.dbg.value(metadata i32 %25, i64 0, metadata !125, metadata !219), !dbg !301
  %26 = getelementptr inbounds %struct.IOASCIIGH* %myGH, i64 0, i32 3, !dbg !302
  %27 = load i8** %26, align 8, !dbg !302, !tbaa !303
  %28 = sext i32 %25 to i64, !dbg !302
  %29 = tail call i64 @llvm.objectsize.i64.p0i8(i8* %27, i1 false), !dbg !302
  %30 = tail call i8* @__memset_chk(i8* %27, i32 0, i64 %28, i64 %29) #6, !dbg !302
  %31 = load i8** %26, align 8, !dbg !304, !tbaa !303
  %32 = tail call i32 @CCTK_TraverseString(i8* %1, void (i32, i8*, i8*)* @SetOutputFlag, i8* %31, i32 3) #6, !dbg !305
  %33 = tail call i32 @CCTK_Equals(i8* %4, i8* getelementptr inbounds ([9 x i8]* @.str4, i64 0, i64 0)) #6, !dbg !306
  %34 = icmp eq i32 %33, 0, !dbg !306
  br i1 %34, label %35, label %.preheader, !dbg !308

; <label>:35                                      ; preds = %24
  %36 = tail call i32 @CCTK_Equals(i8* %4, i8* getelementptr inbounds ([5 x i8]* @.str5, i64 0, i64 0)) #6, !dbg !309
  %37 = icmp eq i32 %36, 0, !dbg !309
  br i1 %37, label %69, label %.preheader, !dbg !310

.preheader:                                       ; preds = %35, %24
  %38 = icmp sgt i32 %25, 0, !dbg !311
  br i1 %38, label %.lr.ph4, label %._crit_edge5, !dbg !315

.lr.ph4:                                          ; preds = %.preheader
  %39 = add i32 %25, -1, !dbg !315
  br label %40, !dbg !315

; <label>:40                                      ; preds = %._crit_edge11, %.lr.ph4
  %indvars.iv6 = phi i64 [ 0, %.lr.ph4 ], [ %indvars.iv.next7, %._crit_edge11 ]
  %verboselength.02 = phi i32 [ 0, %.lr.ph4 ], [ %verboselength.1, %._crit_edge11 ]
  %41 = load i8** %26, align 8, !dbg !316, !tbaa !303
  %42 = getelementptr inbounds i8* %41, i64 %indvars.iv6, !dbg !319
  %43 = load i8* %42, align 1, !dbg !319, !tbaa !320
  %44 = icmp eq i8 %43, 0, !dbg !319
  %.pre = trunc i64 %indvars.iv6 to i32, !dbg !315
  br i1 %44, label %._crit_edge11, label %45, !dbg !321

; <label>:45                                      ; preds = %40
  %46 = tail call i8* @CCTK_FullName(i32 %.pre) #6, !dbg !322
  tail call void @llvm.dbg.value(metadata i8* %46, i64 0, metadata !129, metadata !219), !dbg !324
  %47 = tail call i64 @strlen(i8* %46) #6, !dbg !325
  %48 = zext i32 %verboselength.02 to i64, !dbg !326
  %49 = add nuw nsw i64 %48, 1, !dbg !327
  %50 = add i64 %49, %47, !dbg !326
  %51 = trunc i64 %50 to i32, !dbg !326
  tail call void @llvm.dbg.value(metadata i32 %51, i64 0, metadata !128, metadata !219), !dbg !328
  tail call void @free(i8* %46) #7, !dbg !329
  br label %._crit_edge11, !dbg !330

._crit_edge11:                                    ; preds = %40, %45
  %verboselength.1 = phi i32 [ %51, %45 ], [ %verboselength.02, %40 ]
  %indvars.iv.next7 = add nuw nsw i64 %indvars.iv6, 1, !dbg !315
  %exitcond9 = icmp eq i32 %.pre, %39, !dbg !315
  br i1 %exitcond9, label %._crit_edge5, label %40, !dbg !315

._crit_edge5:                                     ; preds = %._crit_edge11, %.preheader
  %verboselength.0.lcssa = phi i32 [ 0, %.preheader ], [ %verboselength.1, %._crit_edge11 ]
  %52 = add i32 %verboselength.0.lcssa, 34, !dbg !331
  %53 = sext i32 %52 to i64, !dbg !332
  %54 = tail call i8* @malloc(i64 %53) #6, !dbg !333
  tail call void @llvm.dbg.value(metadata i8* %54, i64 0, metadata !130, metadata !219), !dbg !334
  %55 = tail call i64 @llvm.objectsize.i64.p0i8(i8* %54, i1 false), !dbg !335
  %56 = tail call i32 (i8*, i32, i64, i8*, ...)* @__sprintf_chk(i8* %54, i32 0, i64 %55, i8* getelementptr inbounds ([34 x i8]* @.str8, i64 0, i64 0)) #6, !dbg !335
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !124, metadata !219), !dbg !336
  br i1 %38, label %.lr.ph, label %._crit_edge, !dbg !337

.lr.ph:                                           ; preds = %._crit_edge5
  %57 = add i32 %25, -1, !dbg !337
  br label %58, !dbg !337

; <label>:58                                      ; preds = %._crit_edge10, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %._crit_edge10 ]
  %59 = load i8** %26, align 8, !dbg !339, !tbaa !303
  %60 = getelementptr inbounds i8* %59, i64 %indvars.iv, !dbg !343
  %61 = load i8* %60, align 1, !dbg !343, !tbaa !320
  %62 = icmp eq i8 %61, 0, !dbg !343
  %.pre12 = trunc i64 %indvars.iv to i32, !dbg !337
  br i1 %62, label %._crit_edge10, label %63, !dbg !344

; <label>:63                                      ; preds = %58
  %64 = tail call i8* @CCTK_FullName(i32 %.pre12) #6, !dbg !345
  tail call void @llvm.dbg.value(metadata i8* %64, i64 0, metadata !129, metadata !219), !dbg !324
  %65 = tail call i32 (i8*, i32, i64, i8*, ...)* @__sprintf_chk(i8* %54, i32 0, i64 %55, i8* getelementptr inbounds ([6 x i8]* @.str9, i64 0, i64 0), i8* %54, i8* %64) #6, !dbg !347
  tail call void @free(i8* %64) #7, !dbg !348
  br label %._crit_edge10, !dbg !349

._crit_edge10:                                    ; preds = %58, %63
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !337
  %exitcond = icmp eq i32 %.pre12, %57, !dbg !337
  br i1 %exitcond, label %._crit_edge, label %58, !dbg !337

._crit_edge:                                      ; preds = %._crit_edge10, %._crit_edge5
  %66 = icmp eq i8* %54, null, !dbg !350
  br i1 %66, label %69, label %67, !dbg !352

; <label>:67                                      ; preds = %._crit_edge
  %68 = tail call i32 @CCTK_Info(i8* getelementptr inbounds ([8 x i8]* @.str, i64 0, i64 0), i8* %54) #6, !dbg !353
  tail call void @free(i8* %54) #7, !dbg !355
  br label %69, !dbg !356

; <label>:69                                      ; preds = %._crit_edge, %35, %67
  store i32 %21, i32* @CheckSteerableParameters.out1D_vars_lastset, align 4, !dbg !357, !tbaa !259
  br label %70, !dbg !358

; <label>:70                                      ; preds = %20, %69
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !192, metadata !219), !dbg !265
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !192, metadata !219), !dbg !265
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !192, metadata !219), !dbg !265
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !192, metadata !219), !dbg !265
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !192, metadata !219), !dbg !265
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !192, metadata !219), !dbg !265
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !192, metadata !219), !dbg !265
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !192, metadata !219), !dbg !265
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !192, metadata !219), !dbg !265
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !192, metadata !219), !dbg !265
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !192, metadata !219), !dbg !265
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !192, metadata !219), !dbg !265
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !192, metadata !219), !dbg !265
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !192, metadata !219), !dbg !265
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !192, metadata !219), !dbg !265
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !192, metadata !219), !dbg !265
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !192, metadata !219), !dbg !265
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !192, metadata !219), !dbg !265
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !192, metadata !219), !dbg !265
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !192, metadata !219), !dbg !265
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !192, metadata !219), !dbg !265
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !192, metadata !219), !dbg !265
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !192, metadata !219), !dbg !265
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !192, metadata !219), !dbg !265
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !192, metadata !219), !dbg !265
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !192, metadata !219), !dbg !265
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !192, metadata !219), !dbg !265
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !192, metadata !219), !dbg !265
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !192, metadata !219), !dbg !265
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !192, metadata !219), !dbg !265
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !192, metadata !219), !dbg !265
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !192, metadata !219), !dbg !265
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !192, metadata !219), !dbg !265
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !192, metadata !219), !dbg !265
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !192, metadata !219), !dbg !265
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !192, metadata !219), !dbg !265
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !192, metadata !219), !dbg !265
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !192, metadata !219), !dbg !265
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !192, metadata !219), !dbg !265
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !192, metadata !219), !dbg !265
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !192, metadata !219), !dbg !265
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !192, metadata !219), !dbg !265
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !192, metadata !219), !dbg !265
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !192, metadata !219), !dbg !265
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !192, metadata !219), !dbg !265
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !192, metadata !219), !dbg !265
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !192, metadata !219), !dbg !265
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !192, metadata !219), !dbg !265
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !192, metadata !219), !dbg !265
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !192, metadata !219), !dbg !265
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !192, metadata !219), !dbg !265
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !192, metadata !219), !dbg !265
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !192, metadata !219), !dbg !265
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !192, metadata !219), !dbg !265
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !192, metadata !219), !dbg !265
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !192, metadata !219), !dbg !265
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !192, metadata !219), !dbg !265
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !192, metadata !219), !dbg !265
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !192, metadata !219), !dbg !265
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !192, metadata !219), !dbg !265
  ret void, !dbg !359
}

; Function Attrs: optsize
declare i32 @CCTK_NumVars() #2

; Function Attrs: nounwind optsize ssp uwtable
define i32 @IOASCII_TimeFor1D(%struct.cGH* %GH, i32 %vindex) #1 {
  tail call void @llvm.dbg.value(metadata %struct.cGH* %GH, i64 0, metadata !107, metadata !219), !dbg !360
  tail call void @llvm.dbg.value(metadata i32 %vindex, i64 0, metadata !108, metadata !219), !dbg !361
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !109, metadata !219), !dbg !362
  %1 = tail call i8* @CCTK_GHExtension(%struct.cGH* %GH, i8* getelementptr inbounds ([8 x i8]* @.str, i64 0, i64 0)) #6, !dbg !363
  %2 = bitcast i8* %1 to %struct.IOASCIIGH*, !dbg !364
  tail call void @llvm.dbg.value(metadata %struct.IOASCIIGH* %2, i64 0, metadata !110, metadata !219), !dbg !365
  tail call fastcc void @CheckSteerableParameters(%struct.IOASCIIGH* %2) #7, !dbg !366
  %3 = bitcast i8* %1 to i32*, !dbg !367
  %4 = load i32* %3, align 4, !dbg !367, !tbaa !227
  %5 = icmp slt i32 %4, 1, !dbg !369
  br i1 %5, label %29, label %6, !dbg !370

; <label>:6                                       ; preds = %0
  %7 = sext i32 %vindex to i64, !dbg !371
  %8 = getelementptr inbounds i8* %1, i64 16, !dbg !373
  %9 = bitcast i8* %8 to i8**, !dbg !373
  %10 = load i8** %9, align 8, !dbg !373, !tbaa !303
  %11 = getelementptr inbounds i8* %10, i64 %7, !dbg !371
  %12 = load i8* %11, align 1, !dbg !371, !tbaa !320
  %13 = icmp eq i8 %12, 0, !dbg !371
  br i1 %13, label %29, label %14, !dbg !374

; <label>:14                                      ; preds = %6
  %15 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 1, !dbg !375
  %16 = load i32* %15, align 4, !dbg !375, !tbaa !253
  %17 = srem i32 %16, %4, !dbg !376
  %18 = icmp eq i32 %17, 0, !dbg !377
  br i1 %18, label %19, label %29, !dbg !378

; <label>:19                                      ; preds = %14
  %20 = getelementptr inbounds i8* %1, i64 64, !dbg !379
  %21 = bitcast i8* %20 to i32**, !dbg !379
  %22 = load i32** %21, align 8, !dbg !379, !tbaa !256
  %23 = getelementptr inbounds i32* %22, i64 %7, !dbg !382
  %24 = load i32* %23, align 4, !dbg !382, !tbaa !259
  %25 = icmp eq i32 %24, %16, !dbg !383
  br i1 %25, label %26, label %29, !dbg !384

; <label>:26                                      ; preds = %19
  %27 = tail call i8* @CCTK_FullName(i32 %vindex) #6, !dbg !385
  tail call void @llvm.dbg.value(metadata i8* %27, i64 0, metadata !111, metadata !219), !dbg !387
  %28 = tail call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 5, i32 224, i8* getelementptr inbounds ([78 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([85 x i8]* @.str2, i64 0, i64 0), i8* %27) #6, !dbg !388
  tail call void @free(i8* %27) #7, !dbg !389
  br label %29, !dbg !390

; <label>:29                                      ; preds = %14, %26, %6, %19, %0
  %.0 = phi i32 [ 0, %0 ], [ 0, %26 ], [ 0, %14 ], [ 0, %6 ], [ 1, %19 ]
  ret i32 %.0, !dbg !391
}

; Function Attrs: optsize
declare i8* @CCTK_VarName(i32) #2

; Function Attrs: optsize
declare i32 @IOASCII_Write1D(%struct.cGH*, i32, i8*) #2

; Function Attrs: nounwind optsize ssp uwtable
define i32 @IOASCII_Output1DVarAs(%struct.cGH* %GH, i8* %fullname, i8* %alias) #1 {
  tail call void @llvm.dbg.value(metadata %struct.cGH* %GH, i64 0, metadata !98, metadata !219), !dbg !392
  tail call void @llvm.dbg.value(metadata i8* %fullname, i64 0, metadata !99, metadata !219), !dbg !393
  tail call void @llvm.dbg.value(metadata i8* %alias, i64 0, metadata !100, metadata !219), !dbg !394
  %1 = tail call i32 @CCTK_VarIndex(i8* %fullname) #6, !dbg !395
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !101, metadata !219), !dbg !396
  tail call void @llvm.dbg.value(metadata i32 -1, i64 0, metadata !102, metadata !219), !dbg !397
  %2 = tail call fastcc i32 @CheckOutputVar(i32 %1) #7, !dbg !398
  %3 = icmp eq i32 %2, 0, !dbg !400
  br i1 %3, label %4, label %6, !dbg !401

; <label>:4                                       ; preds = %0
  %5 = tail call i32 @IOASCII_Write1D(%struct.cGH* %GH, i32 %1, i8* %alias) #6, !dbg !402
  tail call void @llvm.dbg.value(metadata i32 %5, i64 0, metadata !102, metadata !219), !dbg !397
  br label %6, !dbg !404

; <label>:6                                       ; preds = %4, %0
  %retval.0 = phi i32 [ %5, %4 ], [ -1, %0 ]
  ret i32 %retval.0, !dbg !405
}

; Function Attrs: optsize
declare i32 @CCTK_VarIndex(i8*) #2

; Function Attrs: nounwind optsize ssp uwtable
define internal fastcc i32 @CheckOutputVar(i32 %vindex) #1 {
  tail call void @llvm.dbg.value(metadata i32 %vindex, i64 0, metadata !207, metadata !219), !dbg !406
  %1 = tail call i32 @CCTK_GroupTypeFromVarI(i32 %vindex) #6, !dbg !407
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !209, metadata !219), !dbg !408
  %2 = and i32 %1, -2, !dbg !409
  %.cmp = icmp ne i32 %2, 2, !dbg !409
  %3 = zext i1 %.cmp to i32, !dbg !409
  tail call void @llvm.dbg.value(metadata i32 %3, i64 0, metadata !208, metadata !219), !dbg !410
  br i1 %.cmp, label %4, label %7, !dbg !411

; <label>:4                                       ; preds = %0
  %5 = tail call i8* @CCTK_FullName(i32 %vindex) #6, !dbg !412
  tail call void @llvm.dbg.value(metadata i8* %5, i64 0, metadata !210, metadata !219), !dbg !415
  %6 = tail call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 2, i32 391, i8* getelementptr inbounds ([78 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([80 x i8]* @.str11, i64 0, i64 0), i8* %5) #6, !dbg !416
  tail call void @free(i8* %5) #7, !dbg !417
  br label %7, !dbg !418

; <label>:7                                       ; preds = %4, %0
  ret i32 %3, !dbg !419
}

; Function Attrs: optsize
declare i8* @CCTK_FullName(i32) #2

; Function Attrs: optsize
declare i32 @CCTK_VWarn(i32, i32, i8*, i8*, i8*, ...) #2

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) #3

; Function Attrs: nounwind optsize ssp uwtable
define i32 @IOASCII_TriggerOutput1D(%struct.cGH* %GH, i32 %vindex) #1 {
  tail call void @llvm.dbg.value(metadata %struct.cGH* %GH, i64 0, metadata !114, metadata !219), !dbg !420
  tail call void @llvm.dbg.value(metadata i32 %vindex, i64 0, metadata !115, metadata !219), !dbg !421
  %1 = tail call i8* @CCTK_GHExtension(%struct.cGH* %GH, i8* getelementptr inbounds ([8 x i8]* @.str, i64 0, i64 0)) #6, !dbg !422
  %2 = tail call i8* @CCTK_VarName(i32 %vindex) #6, !dbg !423
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !117, metadata !219), !dbg !424
  %3 = tail call i32 @IOASCII_Write1D(%struct.cGH* %GH, i32 %vindex, i8* %2) #6, !dbg !425
  tail call void @llvm.dbg.value(metadata i32 %3, i64 0, metadata !116, metadata !219), !dbg !426
  %4 = icmp eq i32 %3, 0, !dbg !427
  br i1 %4, label %5, label %13, !dbg !429

; <label>:5                                       ; preds = %0
  %6 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 1, !dbg !430
  %7 = load i32* %6, align 4, !dbg !430, !tbaa !253
  %8 = sext i32 %vindex to i64, !dbg !432
  %9 = getelementptr inbounds i8* %1, i64 64, !dbg !433
  %10 = bitcast i8* %9 to i32**, !dbg !433
  %11 = load i32** %10, align 8, !dbg !433, !tbaa !256
  %12 = getelementptr inbounds i32* %11, i64 %8, !dbg !432
  store i32 %7, i32* %12, align 4, !dbg !434, !tbaa !259
  br label %13, !dbg !435

; <label>:13                                      ; preds = %5, %0
  ret i32 %3, !dbg !436
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
  tail call void @llvm.dbg.value(metadata i32 %vindex, i64 0, metadata !199, metadata !219), !dbg !437
  tail call void @llvm.dbg.value(metadata i8* %optstring, i64 0, metadata !200, metadata !219), !dbg !438
  tail call void @llvm.dbg.value(metadata i8* %arg, i64 0, metadata !201, metadata !219), !dbg !439
  tail call void @llvm.dbg.value(metadata i8* %arg, i64 0, metadata !202, metadata !219), !dbg !440
  %1 = tail call fastcc i32 @CheckOutputVar(i32 %vindex) #7, !dbg !441
  %2 = icmp eq i32 %1, 0, !dbg !443
  br i1 %2, label %3, label %6, !dbg !444

; <label>:3                                       ; preds = %0
  %4 = sext i32 %vindex to i64, !dbg !445
  %5 = getelementptr inbounds i8* %arg, i64 %4, !dbg !445
  store i8 1, i8* %5, align 1, !dbg !447, !tbaa !320
  br label %6, !dbg !448

; <label>:6                                       ; preds = %3, %0
  %7 = icmp eq i8* %optstring, null, !dbg !449
  br i1 %7, label %10, label %8, !dbg !451

; <label>:8                                       ; preds = %6
  %9 = tail call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 5, i32 415, i8* getelementptr inbounds ([78 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([61 x i8]* @.str10, i64 0, i64 0), i8* %optstring) #6, !dbg !452
  br label %10, !dbg !454

; <label>:10                                      ; preds = %6, %8
  ret void, !dbg !455
}

; Function Attrs: nounwind optsize readonly
declare i64 @strlen(i8* nocapture) #5

; Function Attrs: nounwind optsize
declare noalias i8* @malloc(i64) #3

; Function Attrs: optsize
declare i32 @__sprintf_chk(i8*, i32, i64, i8*, ...) #2

; Function Attrs: optsize
declare i32 @CCTK_Info(i8*, i8*) #2

; Function Attrs: optsize
declare i32 @CCTK_GroupTypeFromVarI(i32) #2

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #4

attributes #0 = { nounwind optsize readnone ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone }
attributes #5 = { nounwind optsize readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind optsize }
attributes #7 = { optsize }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!214, !215, !216}
!llvm.ident = !{!217}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !3, subprograms: !43, globals: !211, imports: !2)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/IOASCII/Output1D.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{}
!3 = !{!4, !14}
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
!43 = !{!44, !49, !94, !103, !112, !119, !195, !203}
!44 = !DISubprogram(name: "CCTKi_version_CactusBase_IOASCII_Output1D_c", scope: !1, file: !1, line: 25, type: !45, isLocal: false, isDefinition: true, scopeLine: 25, flags: DIFlagPrototyped, isOptimized: true, function: i8* ()* @CCTKi_version_CactusBase_IOASCII_Output1D_c, variables: !2)
!45 = !DISubroutineType(types: !46)
!46 = !{!47}
!47 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !48, size: 64, align: 64)
!48 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !15)
!49 = !DISubprogram(name: "IOASCII_Output1DGH", scope: !1, file: !1, line: 61, type: !50, isLocal: false, isDefinition: true, scopeLine: 62, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.cGH*)* @IOASCII_Output1DGH, variables: !88)
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
!94 = !DISubprogram(name: "IOASCII_Output1DVarAs", scope: !1, file: !1, line: 145, type: !95, isLocal: false, isDefinition: true, scopeLine: 146, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.cGH*, i8*, i8*)* @IOASCII_Output1DVarAs, variables: !97)
!95 = !DISubroutineType(types: !96)
!96 = !{!10, !52, !47, !47}
!97 = !{!98, !99, !100, !101, !102}
!98 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "GH", arg: 1, scope: !94, file: !1, line: 145, type: !52)
!99 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "fullname", arg: 2, scope: !94, file: !1, line: 145, type: !47)
!100 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "alias", arg: 3, scope: !94, file: !1, line: 145, type: !47)
!101 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "vindex", scope: !94, file: !1, line: 147, type: !10)
!102 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "retval", scope: !94, file: !1, line: 147, type: !10)
!103 = !DISubprogram(name: "IOASCII_TimeFor1D", scope: !1, file: !1, line: 195, type: !104, isLocal: false, isDefinition: true, scopeLine: 196, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.cGH*, i32)* @IOASCII_TimeFor1D, variables: !106)
!104 = !DISubroutineType(types: !105)
!105 = !{!10, !52, !10}
!106 = !{!107, !108, !109, !110, !111}
!107 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "GH", arg: 1, scope: !103, file: !1, line: 195, type: !52)
!108 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "vindex", arg: 2, scope: !103, file: !1, line: 195, type: !10)
!109 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "return_type", scope: !103, file: !1, line: 197, type: !10)
!110 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "myGH", scope: !103, file: !1, line: 198, type: !4)
!111 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "fullname", scope: !103, file: !1, line: 199, type: !14)
!112 = !DISubprogram(name: "IOASCII_TriggerOutput1D", scope: !1, file: !1, line: 265, type: !104, isLocal: false, isDefinition: true, scopeLine: 266, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.cGH*, i32)* @IOASCII_TriggerOutput1D, variables: !113)
!113 = !{!114, !115, !116, !117, !118}
!114 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "GH", arg: 1, scope: !112, file: !1, line: 265, type: !52)
!115 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "vindex", arg: 2, scope: !112, file: !1, line: 265, type: !10)
!116 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "retval", scope: !112, file: !1, line: 267, type: !10)
!117 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "var", scope: !112, file: !1, line: 268, type: !47)
!118 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "myGH", scope: !112, file: !1, line: 269, type: !4)
!119 = !DISubprogram(name: "CheckSteerableParameters", scope: !1, file: !1, line: 297, type: !120, isLocal: true, isDefinition: true, scopeLine: 298, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.IOASCIIGH*)* @CheckSteerableParameters, variables: !122)
!120 = !DISubroutineType(types: !121)
!121 = !{null, !4}
!122 = !{!123, !124, !125, !126, !127, !128, !129, !130, !131, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192}
!123 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "myGH", arg: 1, scope: !119, file: !1, line: 297, type: !4)
!124 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !119, file: !1, line: 299, type: !10)
!125 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "num_vars", scope: !119, file: !1, line: 299, type: !10)
!126 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "out_old", scope: !119, file: !1, line: 299, type: !10)
!127 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "times_set", scope: !119, file: !1, line: 299, type: !10)
!128 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "verboselength", scope: !119, file: !1, line: 300, type: !10)
!129 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "fullname", scope: !119, file: !1, line: 301, type: !14)
!130 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "msg", scope: !119, file: !1, line: 301, type: !14)
!131 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "out1D_xline_y", scope: !119, file: !1, line: 303, type: !132)
!132 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !68)
!133 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "out1D_xline_z", scope: !119, file: !1, line: 303, type: !132)
!134 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "out1D_yline_x", scope: !119, file: !1, line: 303, type: !132)
!135 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "out1D_yline_z", scope: !119, file: !1, line: 303, type: !132)
!136 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "out1D_zline_x", scope: !119, file: !1, line: 303, type: !132)
!137 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "out1D_zline_y", scope: !119, file: !1, line: 303, type: !132)
!138 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "out2D_xyplane_z", scope: !119, file: !1, line: 303, type: !132)
!139 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "out2D_xzplane_y", scope: !119, file: !1, line: 303, type: !132)
!140 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "out2D_yzplane_x", scope: !119, file: !1, line: 303, type: !132)
!141 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "out1D_style", scope: !119, file: !1, line: 303, type: !47)
!142 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "out1D_vars", scope: !119, file: !1, line: 303, type: !47)
!143 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "out2D_style", scope: !119, file: !1, line: 303, type: !47)
!144 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "out2D_vars", scope: !119, file: !1, line: 303, type: !47)
!145 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "out3D_style", scope: !119, file: !1, line: 303, type: !47)
!146 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "out3D_vars", scope: !119, file: !1, line: 303, type: !47)
!147 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "out_format", scope: !119, file: !1, line: 303, type: !47)
!148 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "out_style", scope: !119, file: !1, line: 303, type: !47)
!149 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "outdir1D", scope: !119, file: !1, line: 303, type: !47)
!150 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "outdir2D", scope: !119, file: !1, line: 303, type: !47)
!151 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "outdir3D", scope: !119, file: !1, line: 303, type: !47)
!152 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "out1D_d", scope: !119, file: !1, line: 303, type: !153)
!153 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !10)
!154 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "out1D_every", scope: !119, file: !1, line: 303, type: !153)
!155 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "out1D_x", scope: !119, file: !1, line: 303, type: !153)
!156 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "out1D_xline_yi", scope: !119, file: !1, line: 303, type: !153)
!157 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "out1D_xline_zi", scope: !119, file: !1, line: 303, type: !153)
!158 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "out1D_y", scope: !119, file: !1, line: 303, type: !153)
!159 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "out1D_yline_xi", scope: !119, file: !1, line: 303, type: !153)
!160 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "out1D_yline_zi", scope: !119, file: !1, line: 303, type: !153)
!161 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "out1D_z", scope: !119, file: !1, line: 303, type: !153)
!162 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "out1D_zline_xi", scope: !119, file: !1, line: 303, type: !153)
!163 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "out1D_zline_yi", scope: !119, file: !1, line: 303, type: !153)
!164 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "out2D_every", scope: !119, file: !1, line: 303, type: !153)
!165 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "out2D_xyplane_zi", scope: !119, file: !1, line: 303, type: !153)
!166 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "out2D_xzplane_yi", scope: !119, file: !1, line: 303, type: !153)
!167 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "out2D_yzplane_xi", scope: !119, file: !1, line: 303, type: !153)
!168 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "out3D_every", scope: !119, file: !1, line: 303, type: !153)
!169 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "outdir", scope: !119, file: !1, line: 303, type: !47)
!170 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "out_every", scope: !119, file: !1, line: 303, type: !153)
!171 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "out_xline_y", scope: !119, file: !1, line: 303, type: !132)
!172 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "out_xline_z", scope: !119, file: !1, line: 303, type: !132)
!173 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "out_yline_x", scope: !119, file: !1, line: 303, type: !132)
!174 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "out_yline_z", scope: !119, file: !1, line: 303, type: !132)
!175 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "out_zline_x", scope: !119, file: !1, line: 303, type: !132)
!176 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "out_zline_y", scope: !119, file: !1, line: 303, type: !132)
!177 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "out_xline_yi", scope: !119, file: !1, line: 303, type: !153)
!178 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "out_xline_zi", scope: !119, file: !1, line: 303, type: !153)
!179 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "out_yline_xi", scope: !119, file: !1, line: 303, type: !153)
!180 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "out_yline_zi", scope: !119, file: !1, line: 303, type: !153)
!181 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "out_zline_xi", scope: !119, file: !1, line: 303, type: !153)
!182 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "out_zline_yi", scope: !119, file: !1, line: 303, type: !153)
!183 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "out_yzplane_x", scope: !119, file: !1, line: 303, type: !132)
!184 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "out_xzplane_y", scope: !119, file: !1, line: 303, type: !132)
!185 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "out_xyplane_z", scope: !119, file: !1, line: 303, type: !132)
!186 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "out_xyplane_zi", scope: !119, file: !1, line: 303, type: !153)
!187 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "out_xzplane_yi", scope: !119, file: !1, line: 303, type: !153)
!188 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "out_yzplane_xi", scope: !119, file: !1, line: 303, type: !153)
!189 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "newverbose", scope: !119, file: !1, line: 303, type: !47)
!190 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "new_filename_scheme", scope: !119, file: !1, line: 303, type: !153)
!191 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "out_fileinfo", scope: !119, file: !1, line: 303, type: !47)
!192 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cctk_pdummy_pointer", scope: !119, file: !1, line: 303, type: !193)
!193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !194, size: 64, align: 64)
!194 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!195 = !DISubprogram(name: "SetOutputFlag", scope: !1, file: !1, line: 403, type: !196, isLocal: true, isDefinition: true, scopeLine: 404, flags: DIFlagPrototyped, isOptimized: true, function: void (i32, i8*, i8*)* @SetOutputFlag, variables: !198)
!196 = !DISubroutineType(types: !197)
!197 = !{null, !10, !47, !36}
!198 = !{!199, !200, !201, !202}
!199 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "vindex", arg: 1, scope: !195, file: !1, line: 403, type: !10)
!200 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "optstring", arg: 2, scope: !195, file: !1, line: 403, type: !47)
!201 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "arg", arg: 3, scope: !195, file: !1, line: 403, type: !36)
!202 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "flags", scope: !195, file: !1, line: 405, type: !14)
!203 = !DISubprogram(name: "CheckOutputVar", scope: !1, file: !1, line: 378, type: !204, isLocal: true, isDefinition: true, scopeLine: 379, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i32)* @CheckOutputVar, variables: !206)
!204 = !DISubroutineType(types: !205)
!205 = !{!10, !10}
!206 = !{!207, !208, !209, !210}
!207 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "vindex", arg: 1, scope: !203, file: !1, line: 378, type: !10)
!208 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "retval", scope: !203, file: !1, line: 380, type: !10)
!209 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "grouptype", scope: !203, file: !1, line: 381, type: !10)
!210 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "fullname", scope: !203, file: !1, line: 382, type: !14)
!211 = !{!212, !213}
!212 = !DIGlobalVariable(name: "rcsid", scope: !0, file: !1, line: 24, type: !47, isLocal: true, isDefinition: true)
!213 = !DIGlobalVariable(name: "out1D_vars_lastset", scope: !119, file: !1, line: 302, type: !10, isLocal: true, isDefinition: true, variable: i32* @CheckSteerableParameters.out1D_vars_lastset)
!214 = !{i32 2, !"Dwarf Version", i32 2}
!215 = !{i32 2, !"Debug Info Version", i32 700000003}
!216 = !{i32 1, !"PIC Level", i32 2}
!217 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!218 = !DILocation(line: 25, column: 1, scope: !44)
!219 = !DIExpression()
!220 = !DILocation(line: 61, column: 36, scope: !49)
!221 = !DILocation(line: 69, column: 24, scope: !49)
!222 = !DILocation(line: 69, column: 10, scope: !49)
!223 = !DILocation(line: 64, column: 14, scope: !49)
!224 = !DILocation(line: 71, column: 3, scope: !49)
!225 = !DILocation(line: 74, column: 13, scope: !226)
!226 = distinct !DILexicalBlock(scope: !49, file: !1, line: 74, column: 7)
!227 = !{!228, !229, i64 0}
!228 = !{!"IOASCIIGH", !229, i64 0, !229, i64 4, !229, i64 8, !232, i64 16, !232, i64 24, !232, i64 32, !232, i64 40, !232, i64 48, !232, i64 56, !232, i64 64, !232, i64 72, !232, i64 80, !232, i64 88, !232, i64 96, !232, i64 104, !232, i64 112, !232, i64 120}
!229 = !{!"int", !230, i64 0}
!230 = !{!"omnipotent char", !231, i64 0}
!231 = !{!"Simple C/C++ TBAA"}
!232 = !{!"any pointer", !230, i64 0}
!233 = !DILocation(line: 74, column: 25, scope: !226)
!234 = !DILocation(line: 74, column: 7, scope: !49)
!235 = !DILocation(line: 80, column: 38, scope: !236)
!236 = distinct !DILexicalBlock(scope: !237, file: !1, line: 80, column: 3)
!237 = distinct !DILexicalBlock(scope: !49, file: !1, line: 80, column: 3)
!238 = !DILocation(line: 80, column: 36, scope: !236)
!239 = !DILocation(line: 80, column: 3, scope: !237)
!240 = !DILocation(line: 103, column: 38, scope: !241)
!241 = distinct !DILexicalBlock(scope: !242, file: !1, line: 101, column: 5)
!242 = distinct !DILexicalBlock(scope: !243, file: !1, line: 100, column: 9)
!243 = distinct !DILexicalBlock(scope: !236, file: !1, line: 81, column: 3)
!244 = !DILocation(line: 103, column: 13, scope: !241)
!245 = !DILocation(line: 83, column: 11, scope: !246)
!246 = distinct !DILexicalBlock(scope: !243, file: !1, line: 83, column: 9)
!247 = !DILocation(line: 83, column: 9, scope: !243)
!248 = !DILocation(line: 89, column: 12, scope: !243)
!249 = !DILocation(line: 65, column: 15, scope: !49)
!250 = !DILocation(line: 100, column: 9, scope: !242)
!251 = !DILocation(line: 100, column: 44, scope: !242)
!252 = !DILocation(line: 100, column: 9, scope: !243)
!253 = !{!254, !229, i64 4}
!254 = !{!"", !229, i64 0, !229, i64 4, !232, i64 8, !232, i64 16, !232, i64 24, !232, i64 32, !232, i64 40, !232, i64 48, !232, i64 56, !255, i64 64, !232, i64 72, !232, i64 80, !232, i64 88, !232, i64 96, !229, i64 104, !232, i64 112, !255, i64 120, !232, i64 128, !232, i64 136, !232, i64 144}
!255 = !{!"double", !230, i64 0}
!256 = !{!228, !232, i64 64}
!257 = !DILocation(line: 103, column: 7, scope: !241)
!258 = !DILocation(line: 103, column: 32, scope: !241)
!259 = !{!229, !229, i64 0}
!260 = !DILocation(line: 104, column: 13, scope: !241)
!261 = !DILocation(line: 63, column: 15, scope: !49)
!262 = !DILocation(line: 105, column: 5, scope: !241)
!263 = !DILocation(line: 109, column: 1, scope: !49)
!264 = !DILocation(line: 297, column: 50, scope: !119)
!265 = !DILocation(line: 303, column: 3, scope: !119)
!266 = !{!267, !232, i64 80}
!267 = !{!"", !255, i64 0, !255, i64 8, !255, i64 16, !255, i64 24, !255, i64 32, !255, i64 40, !255, i64 48, !255, i64 56, !255, i64 64, !232, i64 72, !232, i64 80, !232, i64 88, !232, i64 96, !232, i64 104, !232, i64 112, !232, i64 120, !232, i64 128, !232, i64 136, !232, i64 144, !232, i64 152, !229, i64 160, !229, i64 164, !229, i64 168, !229, i64 172, !229, i64 176, !229, i64 180, !229, i64 184, !229, i64 188, !229, i64 192, !229, i64 196, !229, i64 200, !229, i64 204, !229, i64 208, !229, i64 212, !229, i64 216, !229, i64 220}
!268 = !{!267, !229, i64 164}
!269 = !{!270, !229, i64 240}
!270 = !{!"", !255, i64 0, !255, i64 8, !255, i64 16, !255, i64 24, !255, i64 32, !255, i64 40, !255, i64 48, !255, i64 56, !255, i64 64, !232, i64 72, !232, i64 80, !232, i64 88, !232, i64 96, !232, i64 104, !232, i64 112, !232, i64 120, !232, i64 128, !232, i64 136, !232, i64 144, !232, i64 152, !232, i64 160, !232, i64 168, !232, i64 176, !229, i64 184, !229, i64 188, !229, i64 192, !229, i64 196, !229, i64 200, !229, i64 204, !229, i64 208, !229, i64 212, !229, i64 216, !229, i64 220, !229, i64 224, !229, i64 228, !229, i64 232, !229, i64 236, !229, i64 240, !229, i64 244, !229, i64 248, !229, i64 252, !229, i64 256, !229, i64 260, !229, i64 264, !229, i64 268, !229, i64 272, !229, i64 276, !229, i64 280, !229, i64 284, !229, i64 288, !229, i64 292}
!271 = !{!270, !232, i64 96}
!272 = !DILocation(line: 306, column: 19, scope: !119)
!273 = !DILocation(line: 299, column: 20, scope: !119)
!274 = !DILocation(line: 309, column: 33, scope: !119)
!275 = !DILocation(line: 309, column: 23, scope: !119)
!276 = !DILocation(line: 310, column: 19, scope: !277)
!277 = distinct !DILexicalBlock(scope: !119, file: !1, line: 310, column: 7)
!278 = !DILocation(line: 310, column: 7, scope: !119)
!279 = !DILocation(line: 309, column: 21, scope: !119)
!280 = !DILocation(line: 316, column: 25, scope: !281)
!281 = distinct !DILexicalBlock(scope: !119, file: !1, line: 316, column: 7)
!282 = !DILocation(line: 316, column: 7, scope: !119)
!283 = !DILocation(line: 318, column: 9, scope: !284)
!284 = distinct !DILexicalBlock(scope: !285, file: !1, line: 318, column: 9)
!285 = distinct !DILexicalBlock(scope: !281, file: !1, line: 317, column: 3)
!286 = !DILocation(line: 318, column: 46, scope: !284)
!287 = !DILocation(line: 319, column: 9, scope: !284)
!288 = !DILocation(line: 318, column: 9, scope: !285)
!289 = !DILocation(line: 322, column: 25, scope: !290)
!290 = distinct !DILexicalBlock(scope: !284, file: !1, line: 320, column: 5)
!291 = !DILocation(line: 321, column: 7, scope: !290)
!292 = !DILocation(line: 323, column: 5, scope: !290)
!293 = !DILocation(line: 327, column: 15, scope: !119)
!294 = !DILocation(line: 299, column: 29, scope: !119)
!295 = !DILocation(line: 328, column: 20, scope: !296)
!296 = distinct !DILexicalBlock(scope: !119, file: !1, line: 328, column: 7)
!297 = !DILocation(line: 328, column: 17, scope: !296)
!298 = !DILocation(line: 328, column: 7, scope: !119)
!299 = !DILocation(line: 330, column: 16, scope: !300)
!300 = distinct !DILexicalBlock(scope: !296, file: !1, line: 329, column: 3)
!301 = !DILocation(line: 299, column: 10, scope: !119)
!302 = !DILocation(line: 331, column: 5, scope: !300)
!303 = !{!228, !232, i64 16}
!304 = !DILocation(line: 332, column: 59, scope: !300)
!305 = !DILocation(line: 332, column: 5, scope: !300)
!306 = !DILocation(line: 335, column: 9, scope: !307)
!307 = distinct !DILexicalBlock(scope: !300, file: !1, line: 335, column: 9)
!308 = !DILocation(line: 335, column: 46, scope: !307)
!309 = !DILocation(line: 336, column: 9, scope: !307)
!310 = !DILocation(line: 335, column: 9, scope: !300)
!311 = !DILocation(line: 341, column: 21, scope: !312)
!312 = distinct !DILexicalBlock(scope: !313, file: !1, line: 341, column: 7)
!313 = distinct !DILexicalBlock(scope: !314, file: !1, line: 341, column: 7)
!314 = distinct !DILexicalBlock(scope: !307, file: !1, line: 337, column: 5)
!315 = !DILocation(line: 341, column: 7, scope: !313)
!316 = !DILocation(line: 343, column: 19, scope: !317)
!317 = distinct !DILexicalBlock(scope: !318, file: !1, line: 343, column: 13)
!318 = distinct !DILexicalBlock(scope: !312, file: !1, line: 342, column: 7)
!319 = !DILocation(line: 343, column: 13, scope: !317)
!320 = !{!230, !230, i64 0}
!321 = !DILocation(line: 343, column: 13, scope: !318)
!322 = !DILocation(line: 345, column: 22, scope: !323)
!323 = distinct !DILexicalBlock(scope: !317, file: !1, line: 344, column: 9)
!324 = !DILocation(line: 301, column: 9, scope: !119)
!325 = !DILocation(line: 346, column: 28, scope: !323)
!326 = !DILocation(line: 346, column: 25, scope: !323)
!327 = !DILocation(line: 346, column: 44, scope: !323)
!328 = !DILocation(line: 300, column: 7, scope: !119)
!329 = !DILocation(line: 347, column: 11, scope: !323)
!330 = !DILocation(line: 348, column: 9, scope: !323)
!331 = !DILocation(line: 351, column: 42, scope: !314)
!332 = !DILocation(line: 351, column: 28, scope: !314)
!333 = !DILocation(line: 351, column: 21, scope: !314)
!334 = !DILocation(line: 301, column: 20, scope: !119)
!335 = !DILocation(line: 353, column: 7, scope: !314)
!336 = !DILocation(line: 299, column: 7, scope: !119)
!337 = !DILocation(line: 354, column: 7, scope: !338)
!338 = distinct !DILexicalBlock(scope: !314, file: !1, line: 354, column: 7)
!339 = !DILocation(line: 356, column: 19, scope: !340)
!340 = distinct !DILexicalBlock(scope: !341, file: !1, line: 356, column: 13)
!341 = distinct !DILexicalBlock(scope: !342, file: !1, line: 355, column: 7)
!342 = distinct !DILexicalBlock(scope: !338, file: !1, line: 354, column: 7)
!343 = !DILocation(line: 356, column: 13, scope: !340)
!344 = !DILocation(line: 356, column: 13, scope: !341)
!345 = !DILocation(line: 358, column: 22, scope: !346)
!346 = distinct !DILexicalBlock(scope: !340, file: !1, line: 357, column: 9)
!347 = !DILocation(line: 359, column: 11, scope: !346)
!348 = !DILocation(line: 360, column: 11, scope: !346)
!349 = !DILocation(line: 361, column: 9, scope: !346)
!350 = !DILocation(line: 363, column: 11, scope: !351)
!351 = distinct !DILexicalBlock(scope: !314, file: !1, line: 363, column: 11)
!352 = !DILocation(line: 363, column: 11, scope: !314)
!353 = !DILocation(line: 365, column: 9, scope: !354)
!354 = distinct !DILexicalBlock(scope: !351, file: !1, line: 364, column: 7)
!355 = !DILocation(line: 366, column: 9, scope: !354)
!356 = !DILocation(line: 367, column: 7, scope: !354)
!357 = !DILocation(line: 371, column: 24, scope: !300)
!358 = !DILocation(line: 372, column: 3, scope: !300)
!359 = !DILocation(line: 374, column: 24, scope: !119)
!360 = !DILocation(line: 195, column: 35, scope: !103)
!361 = !DILocation(line: 195, column: 43, scope: !103)
!362 = !DILocation(line: 197, column: 7, scope: !103)
!363 = !DILocation(line: 206, column: 24, scope: !103)
!364 = !DILocation(line: 206, column: 10, scope: !103)
!365 = !DILocation(line: 198, column: 14, scope: !103)
!366 = !DILocation(line: 208, column: 3, scope: !103)
!367 = !DILocation(line: 211, column: 13, scope: !368)
!368 = distinct !DILexicalBlock(scope: !103, file: !1, line: 211, column: 7)
!369 = !DILocation(line: 211, column: 25, scope: !368)
!370 = !DILocation(line: 211, column: 7, scope: !103)
!371 = !DILocation(line: 217, column: 7, scope: !372)
!372 = distinct !DILexicalBlock(scope: !103, file: !1, line: 217, column: 7)
!373 = !DILocation(line: 217, column: 13, scope: !372)
!374 = !DILocation(line: 217, column: 30, scope: !372)
!375 = !DILocation(line: 218, column: 11, scope: !372)
!376 = !DILocation(line: 218, column: 26, scope: !372)
!377 = !DILocation(line: 218, column: 46, scope: !372)
!378 = !DILocation(line: 217, column: 7, scope: !103)
!379 = !DILocation(line: 221, column: 15, scope: !380)
!380 = distinct !DILexicalBlock(scope: !381, file: !1, line: 221, column: 9)
!381 = distinct !DILexicalBlock(scope: !372, file: !1, line: 219, column: 3)
!382 = !DILocation(line: 221, column: 9, scope: !380)
!383 = !DILocation(line: 221, column: 34, scope: !380)
!384 = !DILocation(line: 221, column: 9, scope: !381)
!385 = !DILocation(line: 223, column: 18, scope: !386)
!386 = distinct !DILexicalBlock(scope: !380, file: !1, line: 222, column: 5)
!387 = !DILocation(line: 199, column: 9, scope: !103)
!388 = !DILocation(line: 224, column: 7, scope: !386)
!389 = !DILocation(line: 227, column: 7, scope: !386)
!390 = !DILocation(line: 228, column: 5, scope: !386)
!391 = !DILocation(line: 236, column: 1, scope: !103)
!392 = !DILocation(line: 145, column: 39, scope: !94)
!393 = !DILocation(line: 145, column: 55, scope: !94)
!394 = !DILocation(line: 145, column: 77, scope: !94)
!395 = !DILocation(line: 150, column: 12, scope: !94)
!396 = !DILocation(line: 147, column: 7, scope: !94)
!397 = !DILocation(line: 147, column: 15, scope: !94)
!398 = !DILocation(line: 160, column: 7, scope: !399)
!399 = distinct !DILexicalBlock(scope: !94, file: !1, line: 160, column: 7)
!400 = !DILocation(line: 160, column: 31, scope: !399)
!401 = !DILocation(line: 160, column: 7, scope: !94)
!402 = !DILocation(line: 162, column: 14, scope: !403)
!403 = distinct !DILexicalBlock(scope: !399, file: !1, line: 161, column: 3)
!404 = !DILocation(line: 163, column: 3, scope: !403)
!405 = !DILocation(line: 165, column: 3, scope: !94)
!406 = !DILocation(line: 378, column: 32, scope: !203)
!407 = !DILocation(line: 386, column: 15, scope: !203)
!408 = !DILocation(line: 381, column: 7, scope: !203)
!409 = !DILocation(line: 387, column: 33, scope: !203)
!410 = !DILocation(line: 380, column: 7, scope: !203)
!411 = !DILocation(line: 388, column: 7, scope: !203)
!412 = !DILocation(line: 390, column: 16, scope: !413)
!413 = distinct !DILexicalBlock(scope: !414, file: !1, line: 389, column: 3)
!414 = distinct !DILexicalBlock(scope: !203, file: !1, line: 388, column: 7)
!415 = !DILocation(line: 382, column: 9, scope: !203)
!416 = !DILocation(line: 391, column: 5, scope: !413)
!417 = !DILocation(line: 394, column: 5, scope: !413)
!418 = !DILocation(line: 395, column: 3, scope: !413)
!419 = !DILocation(line: 397, column: 3, scope: !203)
!420 = !DILocation(line: 265, column: 41, scope: !112)
!421 = !DILocation(line: 265, column: 49, scope: !112)
!422 = !DILocation(line: 272, column: 24, scope: !112)
!423 = !DILocation(line: 274, column: 9, scope: !112)
!424 = !DILocation(line: 268, column: 15, scope: !112)
!425 = !DILocation(line: 283, column: 12, scope: !112)
!426 = !DILocation(line: 267, column: 7, scope: !112)
!427 = !DILocation(line: 285, column: 14, scope: !428)
!428 = distinct !DILexicalBlock(scope: !112, file: !1, line: 285, column: 7)
!429 = !DILocation(line: 285, column: 7, scope: !112)
!430 = !DILocation(line: 288, column: 36, scope: !431)
!431 = distinct !DILexicalBlock(scope: !428, file: !1, line: 286, column: 3)
!432 = !DILocation(line: 288, column: 5, scope: !431)
!433 = !DILocation(line: 288, column: 11, scope: !431)
!434 = !DILocation(line: 288, column: 30, scope: !431)
!435 = !DILocation(line: 289, column: 3, scope: !431)
!436 = !DILocation(line: 291, column: 3, scope: !112)
!437 = !DILocation(line: 403, column: 32, scope: !195)
!438 = !DILocation(line: 403, column: 52, scope: !195)
!439 = !DILocation(line: 403, column: 69, scope: !195)
!440 = !DILocation(line: 405, column: 9, scope: !195)
!441 = !DILocation(line: 408, column: 7, scope: !442)
!442 = distinct !DILexicalBlock(scope: !195, file: !1, line: 408, column: 7)
!443 = !DILocation(line: 408, column: 31, scope: !442)
!444 = !DILocation(line: 408, column: 7, scope: !195)
!445 = !DILocation(line: 410, column: 5, scope: !446)
!446 = distinct !DILexicalBlock(scope: !442, file: !1, line: 409, column: 3)
!447 = !DILocation(line: 410, column: 19, scope: !446)
!448 = !DILocation(line: 411, column: 3, scope: !446)
!449 = !DILocation(line: 413, column: 7, scope: !450)
!450 = distinct !DILexicalBlock(scope: !195, file: !1, line: 413, column: 7)
!451 = !DILocation(line: 413, column: 7, scope: !195)
!452 = !DILocation(line: 415, column: 5, scope: !453)
!453 = distinct !DILexicalBlock(scope: !450, file: !1, line: 414, column: 3)
!454 = !DILocation(line: 418, column: 3, scope: !453)
!455 = !DILocation(line: 419, column: 1, scope: !195)
