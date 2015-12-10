; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/CartGrid3D/SymmetryWrappers.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.anon = type { double, double, double, double, double, double, double, double, double, double, double, double, i8*, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32 }
%struct.anon.0 = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.cGH = type { i32, i32, i32*, i32*, i32*, i32*, i32*, i32*, i32*, double, double*, double*, i32*, i32*, i32, i32*, double, i8***, i8**, %struct.cGHGroupData* }
%struct.cGHGroupData = type { i8, i8 }
%struct.Symmetry = type { i32** }

@gridrest_ = external global %struct.anon
@cartgrid3dpriv_ = external global %struct.anon.0
@.str = private unnamed_addr constant [89 x i8] c"../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/CartGrid3D/SymmetryWrappers.c\00", align 1
@.str1 = private unnamed_addr constant [11 x i8] c"CartGrid3D\00", align 1
@.str2 = private unnamed_addr constant [37 x i8] c"CartSymGI: Cannot find group %d (%s)\00", align 1
@.str3 = private unnamed_addr constant [9 x i8] c"Symmetry\00", align 1
@.str4 = private unnamed_addr constant [30 x i8] c"Symmetries unspecified for %s\00", align 1
@.str5 = private unnamed_addr constant [30 x i8] c"No Symmetries for GF of dim>3\00", align 1
@.str6 = private unnamed_addr constant [32 x i8] c"CartSymGN: Cannot find group %s\00", align 1
@.str7 = private unnamed_addr constant [5 x i8] c"full\00", align 1
@.str8 = private unnamed_addr constant [48 x i8] c"Cannot find variable index %d (%s) in CartSymVI\00", align 1
@.str9 = private unnamed_addr constant [27 x i8] c"No Symmetries for GF dim>3\00", align 1
@.str10 = private unnamed_addr constant [37 x i8] c"Cannot find variable %s in CartSymVN\00", align 1
@.str11 = private unnamed_addr constant [101 x i8] c"$Header: /cactus/CactusBase/CartGrid3D/src/SymmetryWrappers.c,v 1.15 2001/08/18 21:40:41 allen Exp $\00", align 1

; Function Attrs: nounwind optsize readnone ssp uwtable
define i8* @CCTKi_version_CactusBase_CartGrid3D_SymmetryWrappers_c() #0 {
  ret i8* getelementptr inbounds ([101 x i8]* @.str11, i64 0, i64 0), !dbg !213
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @CartSymGI(%struct.cGH* %GH, i32 %gi) #1 {
  tail call void @llvm.dbg.value(metadata %struct.cGH* %GH, i64 0, metadata !60, metadata !214), !dbg !215
  tail call void @llvm.dbg.value(metadata i32 %gi, i64 0, metadata !61, metadata !214), !dbg !216
  %1 = load i32* getelementptr inbounds (%struct.anon.0* @cartgrid3dpriv_, i64 0, i32 0), align 4, !dbg !217, !tbaa !218
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !86, metadata !214), !dbg !217
  %2 = load i32* getelementptr inbounds (%struct.anon.0* @cartgrid3dpriv_, i64 0, i32 1), align 4, !dbg !217, !tbaa !223
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !87, metadata !214), !dbg !217
  %3 = load i32* getelementptr inbounds (%struct.anon.0* @cartgrid3dpriv_, i64 0, i32 2), align 4, !dbg !217, !tbaa !224
  tail call void @llvm.dbg.value(metadata i32 %3, i64 0, metadata !88, metadata !214), !dbg !217
  %4 = load i32* getelementptr inbounds (%struct.anon.0* @cartgrid3dpriv_, i64 0, i32 3), align 4, !dbg !217, !tbaa !225
  tail call void @llvm.dbg.value(metadata i32 %4, i64 0, metadata !89, metadata !214), !dbg !217
  %5 = load i32* getelementptr inbounds (%struct.anon.0* @cartgrid3dpriv_, i64 0, i32 4), align 4, !dbg !217, !tbaa !226
  tail call void @llvm.dbg.value(metadata i32 %5, i64 0, metadata !90, metadata !214), !dbg !217
  %6 = load i32* getelementptr inbounds (%struct.anon.0* @cartgrid3dpriv_, i64 0, i32 5), align 4, !dbg !217, !tbaa !227
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !91, metadata !214), !dbg !217
  %7 = load i32* getelementptr inbounds (%struct.anon.0* @cartgrid3dpriv_, i64 0, i32 6), align 4, !dbg !217, !tbaa !228
  tail call void @llvm.dbg.value(metadata i32 %7, i64 0, metadata !92, metadata !214), !dbg !217
  %8 = load i32* getelementptr inbounds (%struct.anon.0* @cartgrid3dpriv_, i64 0, i32 7), align 4, !dbg !217, !tbaa !229
  tail call void @llvm.dbg.value(metadata i32 %8, i64 0, metadata !93, metadata !214), !dbg !217
  tail call void @llvm.dbg.value(metadata i32 -1, i64 0, metadata !106, metadata !214), !dbg !230
  tail call void @llvm.dbg.value(metadata i32 -1, i64 0, metadata !107, metadata !214), !dbg !231
  %9 = tail call i32 @CCTK_FirstVarIndexI(i32 %gi) #5, !dbg !232
  tail call void @llvm.dbg.value(metadata i32 %9, i64 0, metadata !103, metadata !214), !dbg !233
  %10 = icmp slt i32 %9, 0, !dbg !234
  br i1 %10, label %11, label %14, !dbg !236

; <label>:11                                      ; preds = %0
  %12 = tail call i8* @CCTK_GroupName(i32 %gi) #5, !dbg !237
  %13 = tail call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 1, i32 92, i8* getelementptr inbounds ([89 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([37 x i8]* @.str2, i64 0, i64 0), i32 %gi, i8* %12) #5, !dbg !239
  br label %141, !dbg !240

; <label>:14                                      ; preds = %0
  %15 = tail call i32 @CCTK_NumVarsInGroupI(i32 %gi) #5, !dbg !241
  tail call void @llvm.dbg.value(metadata i32 %15, i64 0, metadata !101, metadata !214), !dbg !242
  %16 = tail call i32 @CCTK_GroupDimI(i32 %gi) #5, !dbg !243
  tail call void @llvm.dbg.value(metadata i32 %16, i64 0, metadata !105, metadata !214), !dbg !244
  %17 = tail call i32 @CCTK_GHExtensionHandle(i8* getelementptr inbounds ([9 x i8]* @.str3, i64 0, i64 0)) #5, !dbg !245
  %18 = sext i32 %17 to i64, !dbg !246
  %19 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 18, !dbg !247
  %20 = load i8*** %19, align 8, !dbg !247, !tbaa !248
  %21 = getelementptr inbounds i8** %20, i64 %18, !dbg !246
  %22 = bitcast i8** %21 to %struct.Symmetry**, !dbg !246
  %23 = load %struct.Symmetry** %22, align 8, !dbg !246, !tbaa !252
  tail call void @llvm.dbg.value(metadata %struct.Symmetry* %23, i64 0, metadata !113, metadata !214), !dbg !253
  %24 = shl nsw i32 %16, 1, !dbg !254
  %25 = sext i32 %24 to i64, !dbg !255
  %26 = shl nsw i64 %25, 2, !dbg !256
  %27 = tail call i8* @malloc(i64 %26) #5, !dbg !257
  %28 = bitcast i8* %27 to i32*, !dbg !258
  tail call void @llvm.dbg.value(metadata i32* %28, i64 0, metadata !109, metadata !214), !dbg !259
  %29 = sext i32 %16 to i64, !dbg !260
  %30 = shl nsw i64 %29, 2, !dbg !261
  %31 = tail call i8* @malloc(i64 %30) #5, !dbg !262
  %32 = bitcast i8* %31 to i32*, !dbg !263
  tail call void @llvm.dbg.value(metadata i32* %32, i64 0, metadata !110, metadata !214), !dbg !264
  %33 = tail call i8* @malloc(i64 %30) #5, !dbg !265
  %34 = bitcast i8* %33 to i32*, !dbg !266
  tail call void @llvm.dbg.value(metadata i32* %34, i64 0, metadata !111, metadata !214), !dbg !267
  %35 = tail call i8* @malloc(i64 %30) #5, !dbg !268
  %36 = bitcast i8* %35 to i32*, !dbg !269
  tail call void @llvm.dbg.value(metadata i32* %36, i64 0, metadata !112, metadata !214), !dbg !270
  %37 = tail call i32 @CCTK_GroupStaggerDirArrayGI(i32* %32, i32 %16, i32 %gi) #5, !dbg !271
  tail call void @llvm.dbg.value(metadata i32 %37, i64 0, metadata !107, metadata !214), !dbg !231
  %38 = icmp ne i32 %5, 0, !dbg !272
  %39 = icmp ne i32 %6, 0, !dbg !273
  %or.cond = and i1 %38, %39, !dbg !274
  %40 = icmp ne i32 %1, 0, !dbg !275
  %or.cond3 = and i1 %40, %or.cond, !dbg !274
  %41 = icmp ne i32 %2, 0, !dbg !276
  %. = and i1 %41, %or.cond3, !dbg !274
  %42 = zext i1 %. to i32, !dbg !276
  store i32 %42, i32* %36, align 4, !dbg !277, !tbaa !278
  %43 = icmp ne i32 %7, 0, !dbg !279
  %or.cond5 = and i1 %38, %43, !dbg !280
  %or.cond7 = and i1 %40, %or.cond5, !dbg !280
  %44 = icmp ne i32 %3, 0, !dbg !281
  %.13 = and i1 %44, %or.cond7, !dbg !280
  %45 = zext i1 %.13 to i32, !dbg !281
  %46 = getelementptr inbounds i8* %35, i64 4, !dbg !282
  %47 = bitcast i8* %46 to i32*, !dbg !282
  store i32 %45, i32* %47, align 4, !dbg !283, !tbaa !278
  %48 = icmp ne i32 %8, 0, !dbg !284
  %or.cond9 = and i1 %38, %48, !dbg !285
  %or.cond11 = and i1 %40, %or.cond9, !dbg !285
  %49 = icmp ne i32 %4, 0, !dbg !286
  %.12 = and i1 %49, %or.cond11, !dbg !285
  %50 = zext i1 %.12 to i32, !dbg !286
  %51 = getelementptr inbounds i8* %35, i64 8, !dbg !287
  %52 = bitcast i8* %51 to i32*, !dbg !287
  store i32 %50, i32* %52, align 4, !dbg !288, !tbaa !278
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !108, metadata !214), !dbg !289
  tail call void @llvm.dbg.value(metadata i32 %9, i64 0, metadata !102, metadata !214), !dbg !290
  %53 = icmp sgt i32 %15, 0, !dbg !291
  br i1 %53, label %.preheader.lr.ph, label %._crit_edge17, !dbg !294

.preheader.lr.ph:                                 ; preds = %14
  %54 = add nsw i32 %15, %9, !dbg !295
  %55 = icmp sgt i32 %16, 0, !dbg !296
  %56 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 15, !dbg !300
  %57 = getelementptr inbounds %struct.Symmetry* %23, i64 0, i32 0, !dbg !302
  %58 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 17, !dbg !303
  %59 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 6, !dbg !304
  %60 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 12, !dbg !306
  %61 = add i32 %16, -1, !dbg !294
  %62 = sext i32 %9 to i64
  %63 = sext i32 %54 to i64, !dbg !294
  br label %.preheader, !dbg !294

.preheader:                                       ; preds = %.preheader.lr.ph, %139
  %indvars.iv18 = phi i64 [ %62, %.preheader.lr.ph ], [ %indvars.iv.next19, %139 ]
  br i1 %55, label %.lr.ph, label %._crit_edge, !dbg !307

.lr.ph:                                           ; preds = %.preheader
  %.pre = load i32*** %57, align 8, !dbg !308, !tbaa !310
  %.phi.trans.insert = getelementptr inbounds i32** %.pre, i64 %indvars.iv18
  %.pre20 = load i32** %.phi.trans.insert, align 8, !dbg !312, !tbaa !252
  br label %64, !dbg !307

; <label>:64                                      ; preds = %97, %.lr.ph
  %65 = phi i32* [ %.pre20, %.lr.ph ], [ %77, %97 ]
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %97 ]
  %66 = trunc i64 %indvars.iv to i32, !dbg !313
  %67 = shl nsw i32 %66, 1, !dbg !313
  %68 = sext i32 %67 to i64, !dbg !312
  %69 = getelementptr inbounds i32* %65, i64 %68, !dbg !312
  %70 = load i32* %69, align 4, !dbg !312, !tbaa !278
  %71 = icmp eq i32 %70, -42, !dbg !314
  br i1 %71, label %72, label %76, !dbg !315

; <label>:72                                      ; preds = %64
  %73 = trunc i64 %indvars.iv18 to i32, !dbg !316
  %74 = tail call i8* @CCTK_FullName(i32 %73) #5, !dbg !316
  %75 = tail call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 0, i32 140, i8* getelementptr inbounds ([89 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([30 x i8]* @.str4, i64 0, i64 0), i8* %74) #5, !dbg !318
  %.pre21 = load i32*** %57, align 8, !dbg !319, !tbaa !310
  %.phi.trans.insert22 = getelementptr inbounds i32** %.pre21, i64 %indvars.iv18
  %.pre23 = load i32** %.phi.trans.insert22, align 8, !dbg !320, !tbaa !252
  br label %76, !dbg !321

; <label>:76                                      ; preds = %72, %64
  %77 = phi i32* [ %.pre23, %72 ], [ %65, %64 ], !dbg !322
  %78 = getelementptr inbounds i32* %32, i64 %indvars.iv, !dbg !322
  %79 = load i32* %78, align 4, !dbg !322, !tbaa !278
  %80 = mul nsw i64 %indvars.iv, 3, !dbg !322
  %81 = trunc i64 %80 to i32, !dbg !322
  %82 = add nsw i32 %79, %81, !dbg !322
  %83 = sext i32 %82 to i64, !dbg !323
  %84 = load i32** %59, align 8, !dbg !304, !tbaa !324
  %85 = getelementptr inbounds i32* %84, i64 %83, !dbg !323
  %86 = load i32* %85, align 4, !dbg !323, !tbaa !278
  %87 = getelementptr inbounds i32* %34, i64 %indvars.iv, !dbg !325
  store i32 %86, i32* %87, align 4, !dbg !326, !tbaa !278
  %88 = getelementptr inbounds i32* %77, i64 %68, !dbg !320
  %89 = load i32* %88, align 4, !dbg !320, !tbaa !278
  %90 = and i32 %89, -2, !dbg !327
  %switch = icmp ne i32 %90, -42, !dbg !327
  %91 = icmp sgt i32 %86, 1, !dbg !328
  %or.cond14 = and i1 %91, %switch, !dbg !327
  br i1 %or.cond14, label %92, label %97, !dbg !327

; <label>:92                                      ; preds = %76
  %93 = load i32** %60, align 8, !dbg !306, !tbaa !329
  %94 = getelementptr inbounds i32* %93, i64 %68, !dbg !330
  %95 = load i32* %94, align 4, !dbg !330, !tbaa !278
  %96 = icmp eq i32 %95, 1, !dbg !331
  br label %97

; <label>:97                                      ; preds = %76, %92
  %98 = phi i1 [ %96, %92 ], [ false, %76 ]
  %99 = zext i1 %98 to i32, !dbg !332
  %100 = getelementptr inbounds i32* %28, i64 %68, !dbg !333
  store i32 %99, i32* %100, align 4, !dbg !334, !tbaa !278
  %101 = or i32 %67, 1, !dbg !335
  %102 = sext i32 %101 to i64, !dbg !336
  %103 = getelementptr inbounds i32* %28, i64 %102, !dbg !336
  store i32 0, i32* %103, align 4, !dbg !337, !tbaa !278
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !307
  %exitcond = icmp eq i32 %66, %61, !dbg !307
  br i1 %exitcond, label %._crit_edge, label %64, !dbg !307

._crit_edge:                                      ; preds = %97, %.preheader
  switch i32 %16, label %137 [
    i32 1, label %104
    i32 2, label %115
    i32 3, label %126
  ], !dbg !338

; <label>:104                                     ; preds = %._crit_edge
  %105 = load i32** %56, align 8, !dbg !300, !tbaa !339
  %106 = load i32*** %57, align 8, !dbg !302, !tbaa !310
  %107 = getelementptr inbounds i32** %106, i64 %indvars.iv18, !dbg !340
  %108 = load i32** %107, align 8, !dbg !340, !tbaa !252
  %109 = load i8**** %58, align 8, !dbg !303, !tbaa !341
  %110 = getelementptr inbounds i8*** %109, i64 %indvars.iv18, !dbg !342
  %111 = bitcast i8*** %110 to double***, !dbg !342
  %112 = load double*** %111, align 8, !dbg !342, !tbaa !252
  %113 = load double** %112, align 8, !dbg !342, !tbaa !252
  %114 = tail call i32 @CartApplySym1Di(%struct.cGH* %GH, i32* %28, i32* %36, i32* %34, i32* %105, i32* %108, double* %113) #5, !dbg !343
  tail call void @llvm.dbg.value(metadata i32 %114, i64 0, metadata !106, metadata !214), !dbg !230
  br label %139, !dbg !344

; <label>:115                                     ; preds = %._crit_edge
  %116 = load i32** %56, align 8, !dbg !345, !tbaa !339
  %117 = load i32*** %57, align 8, !dbg !346, !tbaa !310
  %118 = getelementptr inbounds i32** %117, i64 %indvars.iv18, !dbg !347
  %119 = load i32** %118, align 8, !dbg !347, !tbaa !252
  %120 = load i8**** %58, align 8, !dbg !348, !tbaa !341
  %121 = getelementptr inbounds i8*** %120, i64 %indvars.iv18, !dbg !349
  %122 = bitcast i8*** %121 to double***, !dbg !349
  %123 = load double*** %122, align 8, !dbg !349, !tbaa !252
  %124 = load double** %123, align 8, !dbg !349, !tbaa !252
  %125 = tail call i32 @CartApplySym2Di(%struct.cGH* %GH, i32* %28, i32* %36, i32* %34, i32* %116, i32* %119, double* %124) #5, !dbg !350
  tail call void @llvm.dbg.value(metadata i32 %125, i64 0, metadata !106, metadata !214), !dbg !230
  br label %139, !dbg !351

; <label>:126                                     ; preds = %._crit_edge
  %127 = load i32** %56, align 8, !dbg !352, !tbaa !339
  %128 = load i32*** %57, align 8, !dbg !353, !tbaa !310
  %129 = getelementptr inbounds i32** %128, i64 %indvars.iv18, !dbg !354
  %130 = load i32** %129, align 8, !dbg !354, !tbaa !252
  %131 = load i8**** %58, align 8, !dbg !355, !tbaa !341
  %132 = getelementptr inbounds i8*** %131, i64 %indvars.iv18, !dbg !356
  %133 = bitcast i8*** %132 to double***, !dbg !356
  %134 = load double*** %133, align 8, !dbg !356, !tbaa !252
  %135 = load double** %134, align 8, !dbg !356, !tbaa !252
  %136 = tail call i32 @CartApplySym3Di(%struct.cGH* %GH, i32* %28, i32* %36, i32* %34, i32* %127, i32* %130, double* %135) #5, !dbg !357
  tail call void @llvm.dbg.value(metadata i32 %136, i64 0, metadata !106, metadata !214), !dbg !230
  br label %139, !dbg !358

; <label>:137                                     ; preds = %._crit_edge
  tail call void @llvm.dbg.value(metadata i32 -1, i64 0, metadata !106, metadata !214), !dbg !230
  %138 = tail call i32 @CCTK_Warn(i32 1, i32 187, i8* getelementptr inbounds ([89 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([30 x i8]* @.str5, i64 0, i64 0)) #5, !dbg !359
  br label %139, !dbg !360

; <label>:139                                     ; preds = %137, %126, %115, %104
  %indvars.iv.next19 = add nsw i64 %indvars.iv18, 1, !dbg !294
  %140 = icmp slt i64 %indvars.iv.next19, %63, !dbg !291
  br i1 %140, label %.preheader, label %._crit_edge17, !dbg !294

._crit_edge17:                                    ; preds = %139, %14
  tail call void @free(i8* %31) #6, !dbg !361
  tail call void @free(i8* %27) #6, !dbg !362
  tail call void @free(i8* %33) #6, !dbg !363
  tail call void @free(i8* %35) #6, !dbg !364
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !98, metadata !214), !dbg !217
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !98, metadata !214), !dbg !217
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !98, metadata !214), !dbg !217
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !98, metadata !214), !dbg !217
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !98, metadata !214), !dbg !217
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !98, metadata !214), !dbg !217
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !98, metadata !214), !dbg !217
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !98, metadata !214), !dbg !217
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !98, metadata !214), !dbg !217
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !98, metadata !214), !dbg !217
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !98, metadata !214), !dbg !217
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !98, metadata !214), !dbg !217
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !98, metadata !214), !dbg !217
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !98, metadata !214), !dbg !217
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !98, metadata !214), !dbg !217
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !98, metadata !214), !dbg !217
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !98, metadata !214), !dbg !217
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !98, metadata !214), !dbg !217
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !98, metadata !214), !dbg !217
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !98, metadata !214), !dbg !217
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !98, metadata !214), !dbg !217
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !98, metadata !214), !dbg !217
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !98, metadata !214), !dbg !217
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !98, metadata !214), !dbg !217
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !98, metadata !214), !dbg !217
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !98, metadata !214), !dbg !217
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !98, metadata !214), !dbg !217
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !98, metadata !214), !dbg !217
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !98, metadata !214), !dbg !217
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !98, metadata !214), !dbg !217
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !98, metadata !214), !dbg !217
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !98, metadata !214), !dbg !217
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !98, metadata !214), !dbg !217
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !98, metadata !214), !dbg !217
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !98, metadata !214), !dbg !217
  br label %141, !dbg !365

; <label>:141                                     ; preds = %._crit_edge17, %11
  %.0 = phi i32 [ -1, %11 ], [ %37, %._crit_edge17 ]
  ret i32 %.0, !dbg !366
}

; Function Attrs: optsize
declare i32 @CCTK_FirstVarIndexI(i32) #2

; Function Attrs: optsize
declare i32 @CCTK_VWarn(i32, i32, i8*, i8*, i8*, ...) #2

; Function Attrs: optsize
declare i8* @CCTK_GroupName(i32) #2

; Function Attrs: optsize
declare i32 @CCTK_NumVarsInGroupI(i32) #2

; Function Attrs: optsize
declare i32 @CCTK_GroupDimI(i32) #2

; Function Attrs: optsize
declare i32 @CCTK_GHExtensionHandle(i8*) #2

; Function Attrs: nounwind optsize
declare noalias i8* @malloc(i64) #3

; Function Attrs: optsize
declare i32 @CCTK_GroupStaggerDirArrayGI(i32*, i32, i32) #2

; Function Attrs: optsize
declare i8* @CCTK_FullName(i32) #2

; Function Attrs: optsize
declare i32 @CartApplySym1Di(%struct.cGH*, i32*, i32*, i32*, i32*, i32*, double*) #2

; Function Attrs: optsize
declare i32 @CartApplySym2Di(%struct.cGH*, i32*, i32*, i32*, i32*, i32*, double*) #2

; Function Attrs: optsize
declare i32 @CartApplySym3Di(%struct.cGH*, i32*, i32*, i32*, i32*, i32*, double*) #2

; Function Attrs: optsize
declare i32 @CCTK_Warn(i32, i32, i8*, i8*, i8*) #2

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) #3

; Function Attrs: nounwind optsize ssp uwtable
define void @cartsymgi_(i32* nocapture %ierr, %struct.cGH* %GH, i32* nocapture readonly %gi) #1 {
  tail call void @llvm.dbg.value(metadata i32* %ierr, i64 0, metadata !118, metadata !214), !dbg !367
  tail call void @llvm.dbg.value(metadata %struct.cGH* %GH, i64 0, metadata !119, metadata !214), !dbg !368
  tail call void @llvm.dbg.value(metadata i32* %gi, i64 0, metadata !120, metadata !214), !dbg !369
  %1 = load i32* %gi, align 4, !dbg !370, !tbaa !278
  %2 = tail call i32 @CartSymGI(%struct.cGH* %GH, i32 %1) #6, !dbg !371
  store i32 %2, i32* %ierr, align 4, !dbg !372, !tbaa !278
  ret void, !dbg !373
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @CartSymGN(%struct.cGH* %GH, i8* %gn) #1 {
  tail call void @llvm.dbg.value(metadata %struct.cGH* %GH, i64 0, metadata !125, metadata !214), !dbg !374
  tail call void @llvm.dbg.value(metadata i8* %gn, i64 0, metadata !126, metadata !214), !dbg !375
  %1 = tail call i32 @CCTK_GroupIndex(i8* %gn) #5, !dbg !376
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !127, metadata !214), !dbg !377
  tail call void @llvm.dbg.value(metadata i32 -1, i64 0, metadata !128, metadata !214), !dbg !378
  %2 = icmp sgt i32 %1, -1, !dbg !379
  br i1 %2, label %3, label %5, !dbg !381

; <label>:3                                       ; preds = %0
  %4 = tail call i32 @CartSymGI(%struct.cGH* %GH, i32 %1) #6, !dbg !382
  tail call void @llvm.dbg.value(metadata i32 %4, i64 0, metadata !128, metadata !214), !dbg !378
  br label %7, !dbg !384

; <label>:5                                       ; preds = %0
  %6 = tail call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 1, i32 233, i8* getelementptr inbounds ([89 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([32 x i8]* @.str6, i64 0, i64 0), i8* %gn) #5, !dbg !385
  br label %7

; <label>:7                                       ; preds = %5, %3
  %retval.0 = phi i32 [ %4, %3 ], [ -1, %5 ]
  ret i32 %retval.0, !dbg !387
}

; Function Attrs: optsize
declare i32 @CCTK_GroupIndex(i8*) #2

; Function Attrs: nounwind optsize ssp uwtable
define void @cartsymgn_(i32* nocapture %ierr, %struct.cGH* %GH, i8* %cctk_str1, i32 %cctk_strlen1) #1 {
  tail call void @llvm.dbg.value(metadata i32* %ierr, i64 0, metadata !135, metadata !214), !dbg !388
  tail call void @llvm.dbg.value(metadata %struct.cGH* %GH, i64 0, metadata !136, metadata !214), !dbg !389
  tail call void @llvm.dbg.value(metadata i8* %cctk_str1, i64 0, metadata !137, metadata !214), !dbg !390
  tail call void @llvm.dbg.value(metadata i32 %cctk_strlen1, i64 0, metadata !138, metadata !214), !dbg !390
  %1 = tail call i8* @Util_NullTerminateString(i8* %cctk_str1, i32 %cctk_strlen1) #5, !dbg !391
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !139, metadata !214), !dbg !391
  %2 = tail call i32 @CartSymGN(%struct.cGH* %GH, i8* %1) #6, !dbg !392
  store i32 %2, i32* %ierr, align 4, !dbg !393, !tbaa !278
  tail call void @free(i8* %1) #6, !dbg !394
  ret void, !dbg !395
}

; Function Attrs: optsize
declare i8* @Util_NullTerminateString(i8*, i32) #2

; Function Attrs: nounwind optsize ssp uwtable
define i32 @CartSymVI(%struct.cGH* %GH, i32 %vi) #1 {
  tail call void @llvm.dbg.value(metadata %struct.cGH* %GH, i64 0, metadata !142, metadata !214), !dbg !396
  tail call void @llvm.dbg.value(metadata i32 %vi, i64 0, metadata !143, metadata !214), !dbg !397
  %1 = load i8** getelementptr inbounds (%struct.anon* @gridrest_, i64 0, i32 13), align 8, !dbg !398, !tbaa !399
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !157, metadata !214), !dbg !398
  %2 = load i32* getelementptr inbounds (%struct.anon.0* @cartgrid3dpriv_, i64 0, i32 0), align 4, !dbg !398, !tbaa !218
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !166, metadata !214), !dbg !398
  %3 = load i32* getelementptr inbounds (%struct.anon.0* @cartgrid3dpriv_, i64 0, i32 1), align 4, !dbg !398, !tbaa !223
  tail call void @llvm.dbg.value(metadata i32 %3, i64 0, metadata !167, metadata !214), !dbg !398
  %4 = load i32* getelementptr inbounds (%struct.anon.0* @cartgrid3dpriv_, i64 0, i32 2), align 4, !dbg !398, !tbaa !224
  tail call void @llvm.dbg.value(metadata i32 %4, i64 0, metadata !168, metadata !214), !dbg !398
  %5 = load i32* getelementptr inbounds (%struct.anon.0* @cartgrid3dpriv_, i64 0, i32 3), align 4, !dbg !398, !tbaa !225
  tail call void @llvm.dbg.value(metadata i32 %5, i64 0, metadata !169, metadata !214), !dbg !398
  %6 = load i32* getelementptr inbounds (%struct.anon.0* @cartgrid3dpriv_, i64 0, i32 4), align 4, !dbg !398, !tbaa !226
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !170, metadata !214), !dbg !398
  %7 = load i32* getelementptr inbounds (%struct.anon.0* @cartgrid3dpriv_, i64 0, i32 5), align 4, !dbg !398, !tbaa !227
  tail call void @llvm.dbg.value(metadata i32 %7, i64 0, metadata !171, metadata !214), !dbg !398
  %8 = load i32* getelementptr inbounds (%struct.anon.0* @cartgrid3dpriv_, i64 0, i32 6), align 4, !dbg !398, !tbaa !228
  tail call void @llvm.dbg.value(metadata i32 %8, i64 0, metadata !172, metadata !214), !dbg !398
  %9 = load i32* getelementptr inbounds (%struct.anon.0* @cartgrid3dpriv_, i64 0, i32 7), align 4, !dbg !398, !tbaa !229
  tail call void @llvm.dbg.value(metadata i32 %9, i64 0, metadata !173, metadata !214), !dbg !398
  tail call void @llvm.dbg.value(metadata i32 -1, i64 0, metadata !182, metadata !214), !dbg !401
  %10 = tail call i32 @CCTK_Equals(i8* %1, i8* getelementptr inbounds ([5 x i8]* @.str7, i64 0, i64 0)) #5, !dbg !402
  %11 = icmp eq i32 %10, 0, !dbg !402
  br i1 %11, label %12, label %149, !dbg !404

; <label>:12                                      ; preds = %0
  %13 = tail call i32 @CCTK_GroupIndexFromVarI(i32 %vi) #5, !dbg !405
  tail call void @llvm.dbg.value(metadata i32 %13, i64 0, metadata !179, metadata !214), !dbg !406
  %14 = icmp slt i32 %13, 0, !dbg !407
  br i1 %14, label %15, label %18, !dbg !409

; <label>:15                                      ; preds = %12
  %16 = tail call i8* @CCTK_FullName(i32 %vi) #5, !dbg !410
  %17 = tail call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 1, i32 284, i8* getelementptr inbounds ([89 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([48 x i8]* @.str8, i64 0, i64 0), i32 %vi, i8* %16) #5, !dbg !412
  br label %149, !dbg !413

; <label>:18                                      ; preds = %12
  %19 = tail call i32 @CCTK_GroupDimI(i32 %13) #5, !dbg !414
  tail call void @llvm.dbg.value(metadata i32 %19, i64 0, metadata !181, metadata !214), !dbg !415
  %20 = tail call i32 @CCTK_GHExtensionHandle(i8* getelementptr inbounds ([9 x i8]* @.str3, i64 0, i64 0)) #5, !dbg !416
  %21 = sext i32 %20 to i64, !dbg !417
  %22 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 18, !dbg !418
  %23 = load i8*** %22, align 8, !dbg !418, !tbaa !248
  %24 = getelementptr inbounds i8** %23, i64 %21, !dbg !417
  %25 = bitcast i8** %24 to %struct.Symmetry**, !dbg !417
  %26 = load %struct.Symmetry** %25, align 8, !dbg !417, !tbaa !252
  tail call void @llvm.dbg.value(metadata %struct.Symmetry* %26, i64 0, metadata !188, metadata !214), !dbg !419
  %27 = shl nsw i32 %19, 1, !dbg !420
  %28 = sext i32 %27 to i64, !dbg !421
  %29 = shl nsw i64 %28, 2, !dbg !422
  %30 = tail call i8* @malloc(i64 %29) #5, !dbg !423
  %31 = bitcast i8* %30 to i32*, !dbg !424
  tail call void @llvm.dbg.value(metadata i32* %31, i64 0, metadata !184, metadata !214), !dbg !425
  %32 = sext i32 %19 to i64, !dbg !426
  %33 = shl nsw i64 %32, 2, !dbg !427
  %34 = tail call i8* @malloc(i64 %33) #5, !dbg !428
  %35 = bitcast i8* %34 to i32*, !dbg !429
  tail call void @llvm.dbg.value(metadata i32* %35, i64 0, metadata !185, metadata !214), !dbg !430
  %36 = tail call i8* @malloc(i64 %33) #5, !dbg !431
  %37 = bitcast i8* %36 to i32*, !dbg !432
  tail call void @llvm.dbg.value(metadata i32* %37, i64 0, metadata !186, metadata !214), !dbg !433
  %38 = tail call i8* @malloc(i64 %33) #5, !dbg !434
  %39 = bitcast i8* %38 to i32*, !dbg !435
  tail call void @llvm.dbg.value(metadata i32* %39, i64 0, metadata !187, metadata !214), !dbg !436
  %40 = tail call i32 @CCTK_GroupStaggerDirArrayGI(i32* %35, i32 %19, i32 %13) #5, !dbg !437
  tail call void @llvm.dbg.value(metadata i32 %40, i64 0, metadata !182, metadata !214), !dbg !401
  %41 = icmp ne i32 %6, 0, !dbg !438
  %42 = icmp ne i32 %7, 0, !dbg !439
  %or.cond = and i1 %41, %42, !dbg !440
  %43 = icmp ne i32 %2, 0, !dbg !441
  %or.cond3 = and i1 %43, %or.cond, !dbg !440
  %44 = icmp ne i32 %3, 0, !dbg !442
  %. = and i1 %44, %or.cond3, !dbg !440
  %45 = zext i1 %. to i32, !dbg !442
  store i32 %45, i32* %39, align 4, !dbg !443, !tbaa !278
  %46 = icmp ne i32 %8, 0, !dbg !444
  %or.cond5 = and i1 %41, %46, !dbg !445
  %or.cond7 = and i1 %43, %or.cond5, !dbg !445
  %47 = icmp ne i32 %4, 0, !dbg !446
  %.13 = and i1 %47, %or.cond7, !dbg !445
  %48 = zext i1 %.13 to i32, !dbg !446
  %49 = getelementptr inbounds i8* %38, i64 4, !dbg !447
  %50 = bitcast i8* %49 to i32*, !dbg !447
  store i32 %48, i32* %50, align 4, !dbg !448, !tbaa !278
  %51 = icmp ne i32 %9, 0, !dbg !449
  %or.cond9 = and i1 %41, %51, !dbg !450
  %or.cond11 = and i1 %43, %or.cond9, !dbg !450
  %52 = icmp ne i32 %5, 0, !dbg !451
  %.12 = and i1 %52, %or.cond11, !dbg !450
  %53 = zext i1 %.12 to i32, !dbg !451
  %54 = getelementptr inbounds i8* %38, i64 8, !dbg !452
  %55 = bitcast i8* %54 to i32*, !dbg !452
  store i32 %53, i32* %55, align 4, !dbg !453, !tbaa !278
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !183, metadata !214), !dbg !454
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !180, metadata !214), !dbg !455
  %56 = icmp sgt i32 %19, 0, !dbg !456
  br i1 %56, label %.lr.ph, label %._crit_edge, !dbg !459

.lr.ph:                                           ; preds = %18
  %57 = sext i32 %vi to i64, !dbg !460
  %58 = getelementptr inbounds %struct.Symmetry* %26, i64 0, i32 0, !dbg !463
  %59 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 6, !dbg !464
  %60 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 12, !dbg !465
  %61 = add i32 %19, -1, !dbg !459
  %.pre = load i32*** %58, align 8, !dbg !463, !tbaa !310
  %.phi.trans.insert = getelementptr inbounds i32** %.pre, i64 %57
  %.pre16 = load i32** %.phi.trans.insert, align 8, !dbg !460, !tbaa !252
  br label %62, !dbg !459

; <label>:62                                      ; preds = %94, %.lr.ph
  %63 = phi i32* [ %.pre16, %.lr.ph ], [ %74, %94 ]
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %94 ]
  %64 = trunc i64 %indvars.iv to i32, !dbg !466
  %65 = shl nsw i32 %64, 1, !dbg !466
  %66 = sext i32 %65 to i64, !dbg !460
  %67 = getelementptr inbounds i32* %63, i64 %66, !dbg !460
  %68 = load i32* %67, align 4, !dbg !460, !tbaa !278
  %69 = icmp eq i32 %68, -42, !dbg !467
  br i1 %69, label %70, label %73, !dbg !468

; <label>:70                                      ; preds = %62
  %71 = tail call i8* @CCTK_FullName(i32 %vi) #5, !dbg !469
  %72 = tail call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 0, i32 328, i8* getelementptr inbounds ([89 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([30 x i8]* @.str4, i64 0, i64 0), i8* %71) #5, !dbg !471
  %.pre17 = load i32*** %58, align 8, !dbg !472, !tbaa !310
  %.phi.trans.insert18 = getelementptr inbounds i32** %.pre17, i64 %57
  %.pre19 = load i32** %.phi.trans.insert18, align 8, !dbg !473, !tbaa !252
  br label %73, !dbg !474

; <label>:73                                      ; preds = %70, %62
  %74 = phi i32* [ %.pre19, %70 ], [ %63, %62 ], !dbg !475
  %75 = getelementptr inbounds i32* %35, i64 %indvars.iv, !dbg !475
  %76 = load i32* %75, align 4, !dbg !475, !tbaa !278
  %77 = mul nsw i64 %indvars.iv, 3, !dbg !475
  %78 = trunc i64 %77 to i32, !dbg !475
  %79 = add nsw i32 %76, %78, !dbg !475
  %80 = sext i32 %79 to i64, !dbg !476
  %81 = load i32** %59, align 8, !dbg !464, !tbaa !324
  %82 = getelementptr inbounds i32* %81, i64 %80, !dbg !476
  %83 = load i32* %82, align 4, !dbg !476, !tbaa !278
  %84 = getelementptr inbounds i32* %37, i64 %indvars.iv, !dbg !477
  store i32 %83, i32* %84, align 4, !dbg !478, !tbaa !278
  %85 = getelementptr inbounds i32* %74, i64 %66, !dbg !473
  %86 = load i32* %85, align 4, !dbg !473, !tbaa !278
  %87 = and i32 %86, -2, !dbg !479
  %switch = icmp ne i32 %87, -42, !dbg !479
  %88 = icmp sgt i32 %83, 1, !dbg !480
  %or.cond14 = and i1 %88, %switch, !dbg !479
  br i1 %or.cond14, label %89, label %94, !dbg !479

; <label>:89                                      ; preds = %73
  %90 = load i32** %60, align 8, !dbg !465, !tbaa !329
  %91 = getelementptr inbounds i32* %90, i64 %66, !dbg !481
  %92 = load i32* %91, align 4, !dbg !481, !tbaa !278
  %93 = icmp ne i32 %92, 0, !dbg !482
  br label %94

; <label>:94                                      ; preds = %73, %89
  %95 = phi i1 [ %93, %89 ], [ false, %73 ]
  %96 = zext i1 %95 to i32, !dbg !482
  %97 = getelementptr inbounds i32* %31, i64 %66, !dbg !483
  store i32 %96, i32* %97, align 4, !dbg !484, !tbaa !278
  %98 = or i32 %65, 1, !dbg !485
  %99 = sext i32 %98 to i64, !dbg !486
  %100 = getelementptr inbounds i32* %31, i64 %99, !dbg !486
  store i32 0, i32* %100, align 4, !dbg !487, !tbaa !278
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !459
  %exitcond = icmp eq i32 %64, %61, !dbg !459
  br i1 %exitcond, label %._crit_edge, label %62, !dbg !459

._crit_edge:                                      ; preds = %94, %18
  switch i32 %19, label %146 [
    i32 1, label %101
    i32 2, label %116
    i32 3, label %131
  ], !dbg !488

; <label>:101                                     ; preds = %._crit_edge
  %102 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 15, !dbg !489
  %103 = load i32** %102, align 8, !dbg !489, !tbaa !339
  %104 = sext i32 %vi to i64, !dbg !491
  %105 = getelementptr inbounds %struct.Symmetry* %26, i64 0, i32 0, !dbg !492
  %106 = load i32*** %105, align 8, !dbg !492, !tbaa !310
  %107 = getelementptr inbounds i32** %106, i64 %104, !dbg !491
  %108 = load i32** %107, align 8, !dbg !491, !tbaa !252
  %109 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 17, !dbg !493
  %110 = load i8**** %109, align 8, !dbg !493, !tbaa !341
  %111 = getelementptr inbounds i8*** %110, i64 %104, !dbg !494
  %112 = bitcast i8*** %111 to double***, !dbg !494
  %113 = load double*** %112, align 8, !dbg !494, !tbaa !252
  %114 = load double** %113, align 8, !dbg !494, !tbaa !252
  %115 = tail call i32 @CartApplySym1Di(%struct.cGH* %GH, i32* %31, i32* %39, i32* %37, i32* %103, i32* %108, double* %114) #5, !dbg !495
  tail call void @llvm.dbg.value(metadata i32 %115, i64 0, metadata !182, metadata !214), !dbg !401
  br label %148, !dbg !496

; <label>:116                                     ; preds = %._crit_edge
  %117 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 15, !dbg !497
  %118 = load i32** %117, align 8, !dbg !497, !tbaa !339
  %119 = sext i32 %vi to i64, !dbg !498
  %120 = getelementptr inbounds %struct.Symmetry* %26, i64 0, i32 0, !dbg !499
  %121 = load i32*** %120, align 8, !dbg !499, !tbaa !310
  %122 = getelementptr inbounds i32** %121, i64 %119, !dbg !498
  %123 = load i32** %122, align 8, !dbg !498, !tbaa !252
  %124 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 17, !dbg !500
  %125 = load i8**** %124, align 8, !dbg !500, !tbaa !341
  %126 = getelementptr inbounds i8*** %125, i64 %119, !dbg !501
  %127 = bitcast i8*** %126 to double***, !dbg !501
  %128 = load double*** %127, align 8, !dbg !501, !tbaa !252
  %129 = load double** %128, align 8, !dbg !501, !tbaa !252
  %130 = tail call i32 @CartApplySym2Di(%struct.cGH* %GH, i32* %31, i32* %39, i32* %37, i32* %118, i32* %123, double* %129) #5, !dbg !502
  tail call void @llvm.dbg.value(metadata i32 %130, i64 0, metadata !182, metadata !214), !dbg !401
  br label %148, !dbg !503

; <label>:131                                     ; preds = %._crit_edge
  %132 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 15, !dbg !504
  %133 = load i32** %132, align 8, !dbg !504, !tbaa !339
  %134 = sext i32 %vi to i64, !dbg !505
  %135 = getelementptr inbounds %struct.Symmetry* %26, i64 0, i32 0, !dbg !506
  %136 = load i32*** %135, align 8, !dbg !506, !tbaa !310
  %137 = getelementptr inbounds i32** %136, i64 %134, !dbg !505
  %138 = load i32** %137, align 8, !dbg !505, !tbaa !252
  %139 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 17, !dbg !507
  %140 = load i8**** %139, align 8, !dbg !507, !tbaa !341
  %141 = getelementptr inbounds i8*** %140, i64 %134, !dbg !508
  %142 = bitcast i8*** %141 to double***, !dbg !508
  %143 = load double*** %142, align 8, !dbg !508, !tbaa !252
  %144 = load double** %143, align 8, !dbg !508, !tbaa !252
  %145 = tail call i32 @CartApplySym3Di(%struct.cGH* %GH, i32* %31, i32* %39, i32* %37, i32* %133, i32* %138, double* %144) #5, !dbg !509
  tail call void @llvm.dbg.value(metadata i32 %145, i64 0, metadata !182, metadata !214), !dbg !401
  br label %148, !dbg !510

; <label>:146                                     ; preds = %._crit_edge
  tail call void @llvm.dbg.value(metadata i32 -1, i64 0, metadata !182, metadata !214), !dbg !401
  %147 = tail call i32 @CCTK_Warn(i32 1, i32 376, i8* getelementptr inbounds ([89 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([27 x i8]* @.str9, i64 0, i64 0)) #5, !dbg !511
  br label %148, !dbg !512

; <label>:148                                     ; preds = %146, %131, %116, %101
  %berr.0 = phi i32 [ -1, %146 ], [ %145, %131 ], [ %130, %116 ], [ %115, %101 ]
  tail call void @free(i8* %36) #6, !dbg !513
  tail call void @free(i8* %34) #6, !dbg !514
  tail call void @free(i8* %30) #6, !dbg !515
  tail call void @free(i8* %38) #6, !dbg !516
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !178, metadata !214), !dbg !398
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !178, metadata !214), !dbg !398
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !178, metadata !214), !dbg !398
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !178, metadata !214), !dbg !398
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !178, metadata !214), !dbg !398
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !178, metadata !214), !dbg !398
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !178, metadata !214), !dbg !398
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !178, metadata !214), !dbg !398
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !178, metadata !214), !dbg !398
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !178, metadata !214), !dbg !398
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !178, metadata !214), !dbg !398
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !178, metadata !214), !dbg !398
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !178, metadata !214), !dbg !398
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !178, metadata !214), !dbg !398
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !178, metadata !214), !dbg !398
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !178, metadata !214), !dbg !398
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !178, metadata !214), !dbg !398
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !178, metadata !214), !dbg !398
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !178, metadata !214), !dbg !398
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !178, metadata !214), !dbg !398
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !178, metadata !214), !dbg !398
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !178, metadata !214), !dbg !398
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !178, metadata !214), !dbg !398
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !178, metadata !214), !dbg !398
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !178, metadata !214), !dbg !398
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !178, metadata !214), !dbg !398
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !178, metadata !214), !dbg !398
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !178, metadata !214), !dbg !398
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !178, metadata !214), !dbg !398
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !178, metadata !214), !dbg !398
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !178, metadata !214), !dbg !398
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !178, metadata !214), !dbg !398
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !178, metadata !214), !dbg !398
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !178, metadata !214), !dbg !398
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !178, metadata !214), !dbg !398
  br label %149, !dbg !517

; <label>:149                                     ; preds = %0, %148, %15
  %.0 = phi i32 [ -1, %15 ], [ %berr.0, %148 ], [ 0, %0 ]
  ret i32 %.0, !dbg !518
}

; Function Attrs: optsize
declare i32 @CCTK_Equals(i8*, i8*) #2

; Function Attrs: optsize
declare i32 @CCTK_GroupIndexFromVarI(i32) #2

; Function Attrs: nounwind optsize ssp uwtable
define void @cartsymvi_(i32* nocapture %ierr, %struct.cGH* %GH, i32* nocapture readonly %vi) #1 {
  tail call void @llvm.dbg.value(metadata i32* %ierr, i64 0, metadata !191, metadata !214), !dbg !519
  tail call void @llvm.dbg.value(metadata %struct.cGH* %GH, i64 0, metadata !192, metadata !214), !dbg !520
  tail call void @llvm.dbg.value(metadata i32* %vi, i64 0, metadata !193, metadata !214), !dbg !521
  %1 = load i32* %vi, align 4, !dbg !522, !tbaa !278
  %2 = tail call i32 @CartSymVI(%struct.cGH* %GH, i32 %1) #6, !dbg !523
  store i32 %2, i32* %ierr, align 4, !dbg !524, !tbaa !278
  ret void, !dbg !525
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @CartSymVN(%struct.cGH* %GH, i8* %vn) #1 {
  tail call void @llvm.dbg.value(metadata %struct.cGH* %GH, i64 0, metadata !196, metadata !214), !dbg !526
  tail call void @llvm.dbg.value(metadata i8* %vn, i64 0, metadata !197, metadata !214), !dbg !527
  tail call void @llvm.dbg.value(metadata i32 -1, i64 0, metadata !198, metadata !214), !dbg !528
  %1 = tail call i32 @CCTK_VarIndex(i8* %vn) #5, !dbg !529
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !199, metadata !214), !dbg !530
  %2 = icmp sgt i32 %1, -1, !dbg !531
  br i1 %2, label %3, label %5, !dbg !533

; <label>:3                                       ; preds = %0
  %4 = tail call i32 @CartSymVI(%struct.cGH* %GH, i32 %1) #6, !dbg !534
  tail call void @llvm.dbg.value(metadata i32 %4, i64 0, metadata !198, metadata !214), !dbg !528
  br label %7, !dbg !536

; <label>:5                                       ; preds = %0
  %6 = tail call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 1, i32 421, i8* getelementptr inbounds ([89 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([37 x i8]* @.str10, i64 0, i64 0), i8* %vn) #5, !dbg !537
  br label %7

; <label>:7                                       ; preds = %5, %3
  %retval.0 = phi i32 [ %4, %3 ], [ -1, %5 ]
  ret i32 %retval.0, !dbg !539
}

; Function Attrs: optsize
declare i32 @CCTK_VarIndex(i8*) #2

; Function Attrs: nounwind optsize ssp uwtable
define void @cartsymvn_(i32* nocapture %ierr, %struct.cGH* %GH, i8* %cctk_str1, i32 %cctk_strlen1) #1 {
  tail call void @llvm.dbg.value(metadata i32* %ierr, i64 0, metadata !202, metadata !214), !dbg !540
  tail call void @llvm.dbg.value(metadata %struct.cGH* %GH, i64 0, metadata !203, metadata !214), !dbg !541
  tail call void @llvm.dbg.value(metadata i8* %cctk_str1, i64 0, metadata !204, metadata !214), !dbg !542
  tail call void @llvm.dbg.value(metadata i32 %cctk_strlen1, i64 0, metadata !205, metadata !214), !dbg !542
  %1 = tail call i8* @Util_NullTerminateString(i8* %cctk_str1, i32 %cctk_strlen1) #5, !dbg !543
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !206, metadata !214), !dbg !543
  %2 = tail call i32 @CartSymVN(%struct.cGH* %GH, i8* %1) #6, !dbg !544
  store i32 %2, i32* %ierr, align 4, !dbg !545, !tbaa !278
  tail call void @free(i8* %1) #6, !dbg !546
  ret void, !dbg !547
}

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
!llvm.module.flags = !{!209, !210, !211}
!llvm.ident = !{!212}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !3, subprograms: !13, globals: !207, imports: !2)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/CartGrid3D/SymmetryWrappers.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{}
!3 = !{!4, !11}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64, align: 64)
!5 = !DIDerivedType(tag: DW_TAG_typedef, name: "SymmetryGHex", file: !6, line: 36, baseType: !7)
!6 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/CartGrid3D/../include/Symmetry.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!7 = !DICompositeType(tag: DW_TAG_structure_type, name: "Symmetry", file: !6, line: 27, size: 64, align: 64, elements: !8)
!8 = !{!9}
!9 = !DIDerivedType(tag: DW_TAG_member, name: "GFSym", scope: !7, file: !6, line: 34, baseType: !10, size: 64, align: 64)
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64, align: 64)
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64, align: 64)
!12 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!13 = !{!14, !20, !114, !121, !129, !140, !189, !194, !200}
!14 = !DISubprogram(name: "CCTKi_version_CactusBase_CartGrid3D_SymmetryWrappers_c", scope: !1, file: !1, line: 54, type: !15, isLocal: false, isDefinition: true, scopeLine: 54, flags: DIFlagPrototyped, isOptimized: true, function: i8* ()* @CCTKi_version_CactusBase_CartGrid3D_SymmetryWrappers_c, variables: !2)
!15 = !DISubroutineType(types: !16)
!16 = !{!17}
!17 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64, align: 64)
!18 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !19)
!19 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!20 = !DISubprogram(name: "CartSymGI", scope: !1, file: !1, line: 74, type: !21, isLocal: false, isDefinition: true, scopeLine: 75, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.cGH*, i32)* @CartSymGI, variables: !59)
!21 = !DISubroutineType(types: !22)
!22 = !{!12, !23, !12}
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
!59 = !{!60, !61, !62, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113}
!60 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "GH", arg: 1, scope: !20, file: !1, line: 74, type: !23)
!61 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "gi", arg: 2, scope: !20, file: !1, line: 74, type: !12)
!62 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "dx", scope: !20, file: !1, line: 76, type: !63)
!63 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !38)
!64 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "dxyz", scope: !20, file: !1, line: 76, type: !63)
!65 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "dy", scope: !20, file: !1, line: 76, type: !63)
!66 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "dz", scope: !20, file: !1, line: 76, type: !63)
!67 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "xmax", scope: !20, file: !1, line: 76, type: !63)
!68 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "xmin", scope: !20, file: !1, line: 76, type: !63)
!69 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "xyzmax", scope: !20, file: !1, line: 76, type: !63)
!70 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "xyzmin", scope: !20, file: !1, line: 76, type: !63)
!71 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ymax", scope: !20, file: !1, line: 76, type: !63)
!72 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ymin", scope: !20, file: !1, line: 76, type: !63)
!73 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "zmax", scope: !20, file: !1, line: 76, type: !63)
!74 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "zmin", scope: !20, file: !1, line: 76, type: !63)
!75 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "bitant_plane", scope: !20, file: !1, line: 76, type: !17)
!76 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "domain", scope: !20, file: !1, line: 76, type: !17)
!77 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "quadrant_direction", scope: !20, file: !1, line: 76, type: !17)
!78 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "type", scope: !20, file: !1, line: 76, type: !17)
!79 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "symmetry_xmax", scope: !20, file: !1, line: 76, type: !80)
!80 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !12)
!81 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "symmetry_xmin", scope: !20, file: !1, line: 76, type: !80)
!82 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "symmetry_ymax", scope: !20, file: !1, line: 76, type: !80)
!83 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "symmetry_ymin", scope: !20, file: !1, line: 76, type: !80)
!84 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "symmetry_zmax", scope: !20, file: !1, line: 76, type: !80)
!85 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "symmetry_zmin", scope: !20, file: !1, line: 76, type: !80)
!86 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "avoid_origin", scope: !20, file: !1, line: 76, type: !80)
!87 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "avoid_originx", scope: !20, file: !1, line: 76, type: !80)
!88 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "avoid_originy", scope: !20, file: !1, line: 76, type: !80)
!89 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "avoid_originz", scope: !20, file: !1, line: 76, type: !80)
!90 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "no_origin", scope: !20, file: !1, line: 76, type: !80)
!91 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "no_originx", scope: !20, file: !1, line: 76, type: !80)
!92 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "no_originy", scope: !20, file: !1, line: 76, type: !80)
!93 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "no_originz", scope: !20, file: !1, line: 76, type: !80)
!94 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "periodic", scope: !20, file: !1, line: 76, type: !80)
!95 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "periodic_x", scope: !20, file: !1, line: 76, type: !80)
!96 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "periodic_y", scope: !20, file: !1, line: 76, type: !80)
!97 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "periodic_z", scope: !20, file: !1, line: 76, type: !80)
!98 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cctk_pdummy_pointer", scope: !20, file: !1, line: 76, type: !99)
!99 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100, size: 64, align: 64)
!100 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!101 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "numvars", scope: !20, file: !1, line: 78, type: !12)
!102 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "vi", scope: !20, file: !1, line: 78, type: !12)
!103 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "first_vi", scope: !20, file: !1, line: 78, type: !12)
!104 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "idim", scope: !20, file: !1, line: 79, type: !12)
!105 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "gdim", scope: !20, file: !1, line: 79, type: !12)
!106 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "berr", scope: !20, file: !1, line: 80, type: !12)
!107 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ierr", scope: !20, file: !1, line: 80, type: !12)
!108 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "time", scope: !20, file: !1, line: 81, type: !12)
!109 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "doSym", scope: !20, file: !1, line: 82, type: !11)
!110 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "dstag", scope: !20, file: !1, line: 82, type: !11)
!111 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "lssh", scope: !20, file: !1, line: 82, type: !11)
!112 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cntstag", scope: !20, file: !1, line: 82, type: !11)
!113 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "sGHex", scope: !20, file: !1, line: 83, type: !4)
!114 = !DISubprogram(name: "cartsymgi_", scope: !1, file: !1, line: 200, type: !115, isLocal: false, isDefinition: true, scopeLine: 201, flags: DIFlagPrototyped, isOptimized: true, function: void (i32*, %struct.cGH*, i32*)* @cartsymgi_, variables: !117)
!115 = !DISubroutineType(types: !116)
!116 = !{null, !11, !23, !11}
!117 = !{!118, !119, !120}
!118 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ierr", arg: 1, scope: !114, file: !1, line: 200, type: !11)
!119 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "GH", arg: 2, scope: !114, file: !1, line: 200, type: !23)
!120 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "gi", arg: 3, scope: !114, file: !1, line: 200, type: !11)
!121 = !DISubprogram(name: "CartSymGN", scope: !1, file: !1, line: 223, type: !122, isLocal: false, isDefinition: true, scopeLine: 224, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.cGH*, i8*)* @CartSymGN, variables: !124)
!122 = !DISubroutineType(types: !123)
!123 = !{!12, !23, !17}
!124 = !{!125, !126, !127, !128}
!125 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "GH", arg: 1, scope: !121, file: !1, line: 223, type: !23)
!126 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "gn", arg: 2, scope: !121, file: !1, line: 223, type: !17)
!127 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "gi", scope: !121, file: !1, line: 225, type: !12)
!128 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "retval", scope: !121, file: !1, line: 226, type: !12)
!129 = !DISubprogram(name: "cartsymgn_", scope: !1, file: !1, line: 239, type: !130, isLocal: false, isDefinition: true, scopeLine: 241, flags: DIFlagPrototyped, isOptimized: true, function: void (i32*, %struct.cGH*, i8*, i32)* @cartsymgn_, variables: !134)
!130 = !DISubroutineType(types: !131)
!131 = !{null, !11, !23, !132, !133}
!132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64, align: 64)
!133 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!134 = !{!135, !136, !137, !138, !139}
!135 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ierr", arg: 1, scope: !129, file: !1, line: 240, type: !11)
!136 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "GH", arg: 2, scope: !129, file: !1, line: 240, type: !23)
!137 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "cctk_str1", arg: 3, scope: !129, file: !1, line: 240, type: !132)
!138 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "cctk_strlen1", arg: 4, scope: !129, file: !1, line: 240, type: !133)
!139 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "gn", scope: !129, file: !1, line: 242, type: !132)
!140 = !DISubprogram(name: "CartSymVI", scope: !1, file: !1, line: 264, type: !21, isLocal: false, isDefinition: true, scopeLine: 265, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.cGH*, i32)* @CartSymVI, variables: !141)
!141 = !{!142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188}
!142 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "GH", arg: 1, scope: !140, file: !1, line: 264, type: !23)
!143 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "vi", arg: 2, scope: !140, file: !1, line: 264, type: !12)
!144 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "dx", scope: !140, file: !1, line: 266, type: !63)
!145 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "dxyz", scope: !140, file: !1, line: 266, type: !63)
!146 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "dy", scope: !140, file: !1, line: 266, type: !63)
!147 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "dz", scope: !140, file: !1, line: 266, type: !63)
!148 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "xmax", scope: !140, file: !1, line: 266, type: !63)
!149 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "xmin", scope: !140, file: !1, line: 266, type: !63)
!150 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "xyzmax", scope: !140, file: !1, line: 266, type: !63)
!151 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "xyzmin", scope: !140, file: !1, line: 266, type: !63)
!152 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ymax", scope: !140, file: !1, line: 266, type: !63)
!153 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ymin", scope: !140, file: !1, line: 266, type: !63)
!154 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "zmax", scope: !140, file: !1, line: 266, type: !63)
!155 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "zmin", scope: !140, file: !1, line: 266, type: !63)
!156 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "bitant_plane", scope: !140, file: !1, line: 266, type: !17)
!157 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "domain", scope: !140, file: !1, line: 266, type: !17)
!158 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "quadrant_direction", scope: !140, file: !1, line: 266, type: !17)
!159 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "type", scope: !140, file: !1, line: 266, type: !17)
!160 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "symmetry_xmax", scope: !140, file: !1, line: 266, type: !80)
!161 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "symmetry_xmin", scope: !140, file: !1, line: 266, type: !80)
!162 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "symmetry_ymax", scope: !140, file: !1, line: 266, type: !80)
!163 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "symmetry_ymin", scope: !140, file: !1, line: 266, type: !80)
!164 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "symmetry_zmax", scope: !140, file: !1, line: 266, type: !80)
!165 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "symmetry_zmin", scope: !140, file: !1, line: 266, type: !80)
!166 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "avoid_origin", scope: !140, file: !1, line: 266, type: !80)
!167 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "avoid_originx", scope: !140, file: !1, line: 266, type: !80)
!168 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "avoid_originy", scope: !140, file: !1, line: 266, type: !80)
!169 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "avoid_originz", scope: !140, file: !1, line: 266, type: !80)
!170 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "no_origin", scope: !140, file: !1, line: 266, type: !80)
!171 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "no_originx", scope: !140, file: !1, line: 266, type: !80)
!172 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "no_originy", scope: !140, file: !1, line: 266, type: !80)
!173 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "no_originz", scope: !140, file: !1, line: 266, type: !80)
!174 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "periodic", scope: !140, file: !1, line: 266, type: !80)
!175 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "periodic_x", scope: !140, file: !1, line: 266, type: !80)
!176 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "periodic_y", scope: !140, file: !1, line: 266, type: !80)
!177 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "periodic_z", scope: !140, file: !1, line: 266, type: !80)
!178 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cctk_pdummy_pointer", scope: !140, file: !1, line: 266, type: !99)
!179 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "gi", scope: !140, file: !1, line: 268, type: !12)
!180 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "idim", scope: !140, file: !1, line: 269, type: !12)
!181 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "gdim", scope: !140, file: !1, line: 269, type: !12)
!182 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "berr", scope: !140, file: !1, line: 270, type: !12)
!183 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "time", scope: !140, file: !1, line: 271, type: !12)
!184 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "doSym", scope: !140, file: !1, line: 272, type: !11)
!185 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "dstag", scope: !140, file: !1, line: 272, type: !11)
!186 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "lssh", scope: !140, file: !1, line: 272, type: !11)
!187 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cntstag", scope: !140, file: !1, line: 272, type: !11)
!188 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "sGHex", scope: !140, file: !1, line: 273, type: !4)
!189 = !DISubprogram(name: "cartsymvi_", scope: !1, file: !1, line: 387, type: !115, isLocal: false, isDefinition: true, scopeLine: 388, flags: DIFlagPrototyped, isOptimized: true, function: void (i32*, %struct.cGH*, i32*)* @cartsymvi_, variables: !190)
!190 = !{!191, !192, !193}
!191 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ierr", arg: 1, scope: !189, file: !1, line: 387, type: !11)
!192 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "GH", arg: 2, scope: !189, file: !1, line: 387, type: !23)
!193 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "vi", arg: 3, scope: !189, file: !1, line: 387, type: !11)
!194 = !DISubprogram(name: "CartSymVN", scope: !1, file: !1, line: 410, type: !122, isLocal: false, isDefinition: true, scopeLine: 411, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.cGH*, i8*)* @CartSymVN, variables: !195)
!195 = !{!196, !197, !198, !199}
!196 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "GH", arg: 1, scope: !194, file: !1, line: 410, type: !23)
!197 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "vn", arg: 2, scope: !194, file: !1, line: 410, type: !17)
!198 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "retval", scope: !194, file: !1, line: 412, type: !12)
!199 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "vi", scope: !194, file: !1, line: 413, type: !12)
!200 = !DISubprogram(name: "cartsymvn_", scope: !1, file: !1, line: 427, type: !130, isLocal: false, isDefinition: true, scopeLine: 429, flags: DIFlagPrototyped, isOptimized: true, function: void (i32*, %struct.cGH*, i8*, i32)* @cartsymvn_, variables: !201)
!201 = !{!202, !203, !204, !205, !206}
!202 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ierr", arg: 1, scope: !200, file: !1, line: 428, type: !11)
!203 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "GH", arg: 2, scope: !200, file: !1, line: 428, type: !23)
!204 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "cctk_str1", arg: 3, scope: !200, file: !1, line: 428, type: !132)
!205 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "cctk_strlen1", arg: 4, scope: !200, file: !1, line: 428, type: !133)
!206 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "vn", scope: !200, file: !1, line: 430, type: !132)
!207 = !{!208}
!208 = !DIGlobalVariable(name: "rcsid", scope: !0, file: !1, line: 52, type: !17, isLocal: true, isDefinition: true)
!209 = !{i32 2, !"Dwarf Version", i32 2}
!210 = !{i32 2, !"Debug Info Version", i32 700000003}
!211 = !{i32 1, !"PIC Level", i32 2}
!212 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!213 = !DILocation(line: 54, column: 1, scope: !14)
!214 = !DIExpression()
!215 = !DILocation(line: 74, column: 20, scope: !20)
!216 = !DILocation(line: 74, column: 28, scope: !20)
!217 = !DILocation(line: 76, column: 3, scope: !20)
!218 = !{!219, !220, i64 0}
!219 = !{!"", !220, i64 0, !220, i64 4, !220, i64 8, !220, i64 12, !220, i64 16, !220, i64 20, !220, i64 24, !220, i64 28}
!220 = !{!"int", !221, i64 0}
!221 = !{!"omnipotent char", !222, i64 0}
!222 = !{!"Simple C/C++ TBAA"}
!223 = !{!219, !220, i64 4}
!224 = !{!219, !220, i64 8}
!225 = !{!219, !220, i64 12}
!226 = !{!219, !220, i64 16}
!227 = !{!219, !220, i64 20}
!228 = !{!219, !220, i64 24}
!229 = !{!219, !220, i64 28}
!230 = !DILocation(line: 80, column: 7, scope: !20)
!231 = !DILocation(line: 80, column: 15, scope: !20)
!232 = !DILocation(line: 89, column: 14, scope: !20)
!233 = !DILocation(line: 78, column: 20, scope: !20)
!234 = !DILocation(line: 90, column: 15, scope: !235)
!235 = distinct !DILexicalBlock(scope: !20, file: !1, line: 90, column: 7)
!236 = !DILocation(line: 90, column: 7, scope: !20)
!237 = !DILocation(line: 93, column: 51, scope: !238)
!238 = distinct !DILexicalBlock(scope: !235, file: !1, line: 91, column: 3)
!239 = !DILocation(line: 92, column: 5, scope: !238)
!240 = !DILocation(line: 94, column: 5, scope: !238)
!241 = !DILocation(line: 97, column: 14, scope: !20)
!242 = !DILocation(line: 78, column: 7, scope: !20)
!243 = !DILocation(line: 98, column: 14, scope: !20)
!244 = !DILocation(line: 79, column: 13, scope: !20)
!245 = !DILocation(line: 101, column: 42, scope: !20)
!246 = !DILocation(line: 101, column: 27, scope: !20)
!247 = !DILocation(line: 101, column: 31, scope: !20)
!248 = !{!249, !250, i64 136}
!249 = !{!"", !220, i64 0, !220, i64 4, !250, i64 8, !250, i64 16, !250, i64 24, !250, i64 32, !250, i64 40, !250, i64 48, !250, i64 56, !251, i64 64, !250, i64 72, !250, i64 80, !250, i64 88, !250, i64 96, !220, i64 104, !250, i64 112, !251, i64 120, !250, i64 128, !250, i64 136, !250, i64 144}
!250 = !{!"any pointer", !221, i64 0}
!251 = !{!"double", !221, i64 0}
!252 = !{!250, !250, i64 0}
!253 = !DILocation(line: 83, column: 17, scope: !20)
!254 = !DILocation(line: 102, column: 28, scope: !20)
!255 = !DILocation(line: 102, column: 26, scope: !20)
!256 = !DILocation(line: 102, column: 34, scope: !20)
!257 = !DILocation(line: 102, column: 19, scope: !20)
!258 = !DILocation(line: 102, column: 12, scope: !20)
!259 = !DILocation(line: 82, column: 8, scope: !20)
!260 = !DILocation(line: 103, column: 26, scope: !20)
!261 = !DILocation(line: 103, column: 30, scope: !20)
!262 = !DILocation(line: 103, column: 19, scope: !20)
!263 = !DILocation(line: 103, column: 12, scope: !20)
!264 = !DILocation(line: 82, column: 16, scope: !20)
!265 = !DILocation(line: 104, column: 19, scope: !20)
!266 = !DILocation(line: 104, column: 12, scope: !20)
!267 = !DILocation(line: 82, column: 24, scope: !20)
!268 = !DILocation(line: 105, column: 19, scope: !20)
!269 = !DILocation(line: 105, column: 12, scope: !20)
!270 = !DILocation(line: 82, column: 31, scope: !20)
!271 = !DILocation(line: 108, column: 12, scope: !20)
!272 = !DILocation(line: 113, column: 16, scope: !20)
!273 = !DILocation(line: 113, column: 29, scope: !20)
!274 = !DILocation(line: 113, column: 26, scope: !20)
!275 = !DILocation(line: 113, column: 43, scope: !20)
!276 = !DILocation(line: 113, column: 56, scope: !20)
!277 = !DILocation(line: 113, column: 14, scope: !20)
!278 = !{!220, !220, i64 0}
!279 = !DILocation(line: 114, column: 29, scope: !20)
!280 = !DILocation(line: 114, column: 26, scope: !20)
!281 = !DILocation(line: 114, column: 56, scope: !20)
!282 = !DILocation(line: 114, column: 3, scope: !20)
!283 = !DILocation(line: 114, column: 14, scope: !20)
!284 = !DILocation(line: 115, column: 29, scope: !20)
!285 = !DILocation(line: 115, column: 26, scope: !20)
!286 = !DILocation(line: 115, column: 56, scope: !20)
!287 = !DILocation(line: 115, column: 3, scope: !20)
!288 = !DILocation(line: 115, column: 14, scope: !20)
!289 = !DILocation(line: 81, column: 7, scope: !20)
!290 = !DILocation(line: 78, column: 16, scope: !20)
!291 = !DILocation(line: 124, column: 23, scope: !292)
!292 = distinct !DILexicalBlock(scope: !293, file: !1, line: 124, column: 3)
!293 = distinct !DILexicalBlock(scope: !20, file: !1, line: 124, column: 3)
!294 = !DILocation(line: 124, column: 3, scope: !293)
!295 = !DILocation(line: 124, column: 32, scope: !292)
!296 = !DILocation(line: 136, column: 22, scope: !297)
!297 = distinct !DILexicalBlock(scope: !298, file: !1, line: 136, column: 5)
!298 = distinct !DILexicalBlock(scope: !299, file: !1, line: 136, column: 5)
!299 = distinct !DILexicalBlock(scope: !292, file: !1, line: 125, column: 3)
!300 = !DILocation(line: 170, column: 12, scope: !301)
!301 = distinct !DILexicalBlock(scope: !299, file: !1, line: 165, column: 5)
!302 = !DILocation(line: 171, column: 15, scope: !301)
!303 = !DILocation(line: 172, column: 12, scope: !301)
!304 = !DILocation(line: 144, column: 29, scope: !305)
!305 = distinct !DILexicalBlock(scope: !297, file: !1, line: 137, column: 5)
!306 = !DILocation(line: 148, column: 25, scope: !305)
!307 = !DILocation(line: 136, column: 5, scope: !298)
!308 = !DILocation(line: 138, column: 19, scope: !309)
!309 = distinct !DILexicalBlock(scope: !305, file: !1, line: 138, column: 11)
!310 = !{!311, !250, i64 0}
!311 = !{!"Symmetry", !250, i64 0}
!312 = !DILocation(line: 138, column: 12, scope: !309)
!313 = !DILocation(line: 138, column: 33, scope: !309)
!314 = !DILocation(line: 138, column: 37, scope: !309)
!315 = !DILocation(line: 138, column: 11, scope: !305)
!316 = !DILocation(line: 141, column: 37, scope: !317)
!317 = distinct !DILexicalBlock(scope: !309, file: !1, line: 139, column: 7)
!318 = !DILocation(line: 140, column: 2, scope: !317)
!319 = !DILocation(line: 146, column: 35, scope: !305)
!320 = !DILocation(line: 146, column: 28, scope: !305)
!321 = !DILocation(line: 142, column: 7, scope: !317)
!322 = !DILocation(line: 144, column: 39, scope: !305)
!323 = !DILocation(line: 144, column: 25, scope: !305)
!324 = !{!249, !250, i64 40}
!325 = !DILocation(line: 144, column: 7, scope: !305)
!326 = !DILocation(line: 144, column: 23, scope: !305)
!327 = !DILocation(line: 146, column: 67, scope: !305)
!328 = !DILocation(line: 148, column: 15, scope: !305)
!329 = !{!249, !250, i64 88}
!330 = !DILocation(line: 148, column: 21, scope: !305)
!331 = !DILocation(line: 148, column: 42, scope: !305)
!332 = !DILocation(line: 148, column: 18, scope: !305)
!333 = !DILocation(line: 146, column: 7, scope: !305)
!334 = !DILocation(line: 146, column: 23, scope: !305)
!335 = !DILocation(line: 149, column: 19, scope: !305)
!336 = !DILocation(line: 149, column: 7, scope: !305)
!337 = !DILocation(line: 149, column: 23, scope: !305)
!338 = !DILocation(line: 164, column: 5, scope: !299)
!339 = !{!249, !250, i64 112}
!340 = !DILocation(line: 171, column: 8, scope: !301)
!341 = !{!249, !250, i64 128}
!342 = !DILocation(line: 172, column: 8, scope: !301)
!343 = !DILocation(line: 166, column: 20, scope: !301)
!344 = !DILocation(line: 172, column: 29, scope: !301)
!345 = !DILocation(line: 177, column: 12, scope: !301)
!346 = !DILocation(line: 178, column: 15, scope: !301)
!347 = !DILocation(line: 178, column: 8, scope: !301)
!348 = !DILocation(line: 179, column: 12, scope: !301)
!349 = !DILocation(line: 179, column: 8, scope: !301)
!350 = !DILocation(line: 173, column: 20, scope: !301)
!351 = !DILocation(line: 179, column: 29, scope: !301)
!352 = !DILocation(line: 184, column: 12, scope: !301)
!353 = !DILocation(line: 185, column: 15, scope: !301)
!354 = !DILocation(line: 185, column: 8, scope: !301)
!355 = !DILocation(line: 186, column: 12, scope: !301)
!356 = !DILocation(line: 186, column: 8, scope: !301)
!357 = !DILocation(line: 180, column: 20, scope: !301)
!358 = !DILocation(line: 186, column: 29, scope: !301)
!359 = !DILocation(line: 187, column: 25, scope: !301)
!360 = !DILocation(line: 188, column: 5, scope: !301)
!361 = !DILocation(line: 192, column: 3, scope: !20)
!362 = !DILocation(line: 193, column: 3, scope: !20)
!363 = !DILocation(line: 194, column: 3, scope: !20)
!364 = !DILocation(line: 195, column: 3, scope: !20)
!365 = !DILocation(line: 197, column: 26, scope: !20)
!366 = !DILocation(line: 198, column: 1, scope: !20)
!367 = !DILocation(line: 200, column: 33, scope: !114)
!368 = !DILocation(line: 200, column: 44, scope: !114)
!369 = !DILocation(line: 200, column: 53, scope: !114)
!370 = !DILocation(line: 202, column: 24, scope: !114)
!371 = !DILocation(line: 202, column: 11, scope: !114)
!372 = !DILocation(line: 202, column: 9, scope: !114)
!373 = !DILocation(line: 203, column: 3, scope: !114)
!374 = !DILocation(line: 223, column: 20, scope: !121)
!375 = !DILocation(line: 223, column: 36, scope: !121)
!376 = !DILocation(line: 225, column: 10, scope: !121)
!377 = !DILocation(line: 225, column: 7, scope: !121)
!378 = !DILocation(line: 226, column: 7, scope: !121)
!379 = !DILocation(line: 227, column: 9, scope: !380)
!380 = distinct !DILexicalBlock(scope: !121, file: !1, line: 227, column: 7)
!381 = !DILocation(line: 227, column: 7, scope: !121)
!382 = !DILocation(line: 229, column: 14, scope: !383)
!383 = distinct !DILexicalBlock(scope: !380, file: !1, line: 228, column: 3)
!384 = !DILocation(line: 230, column: 3, scope: !383)
!385 = !DILocation(line: 233, column: 5, scope: !386)
!386 = distinct !DILexicalBlock(scope: !380, file: !1, line: 232, column: 3)
!387 = !DILocation(line: 236, column: 3, scope: !121)
!388 = !DILocation(line: 240, column: 12, scope: !129)
!389 = !DILocation(line: 240, column: 23, scope: !129)
!390 = !DILocation(line: 240, column: 27, scope: !129)
!391 = !DILocation(line: 242, column: 3, scope: !129)
!392 = !DILocation(line: 243, column: 11, scope: !129)
!393 = !DILocation(line: 243, column: 9, scope: !129)
!394 = !DILocation(line: 244, column: 3, scope: !129)
!395 = !DILocation(line: 245, column: 3, scope: !129)
!396 = !DILocation(line: 264, column: 20, scope: !140)
!397 = !DILocation(line: 264, column: 28, scope: !140)
!398 = !DILocation(line: 266, column: 3, scope: !140)
!399 = !{!400, !250, i64 104}
!400 = !{!"", !251, i64 0, !251, i64 8, !251, i64 16, !251, i64 24, !251, i64 32, !251, i64 40, !251, i64 48, !251, i64 56, !251, i64 64, !251, i64 72, !251, i64 80, !251, i64 88, !250, i64 96, !250, i64 104, !250, i64 112, !250, i64 120, !220, i64 128, !220, i64 132, !220, i64 136, !220, i64 140, !220, i64 144, !220, i64 148}
!401 = !DILocation(line: 270, column: 7, scope: !140)
!402 = !DILocation(line: 277, column: 7, scope: !403)
!403 = distinct !DILexicalBlock(scope: !140, file: !1, line: 277, column: 7)
!404 = !DILocation(line: 277, column: 7, scope: !140)
!405 = !DILocation(line: 281, column: 12, scope: !140)
!406 = !DILocation(line: 268, column: 7, scope: !140)
!407 = !DILocation(line: 282, column: 9, scope: !408)
!408 = distinct !DILexicalBlock(scope: !140, file: !1, line: 282, column: 7)
!409 = !DILocation(line: 282, column: 7, scope: !140)
!410 = !DILocation(line: 286, column: 12, scope: !411)
!411 = distinct !DILexicalBlock(scope: !408, file: !1, line: 283, column: 3)
!412 = !DILocation(line: 284, column: 5, scope: !411)
!413 = !DILocation(line: 287, column: 5, scope: !411)
!414 = !DILocation(line: 290, column: 12, scope: !140)
!415 = !DILocation(line: 269, column: 13, scope: !140)
!416 = !DILocation(line: 292, column: 42, scope: !140)
!417 = !DILocation(line: 292, column: 27, scope: !140)
!418 = !DILocation(line: 292, column: 31, scope: !140)
!419 = !DILocation(line: 273, column: 17, scope: !140)
!420 = !DILocation(line: 293, column: 28, scope: !140)
!421 = !DILocation(line: 293, column: 26, scope: !140)
!422 = !DILocation(line: 293, column: 34, scope: !140)
!423 = !DILocation(line: 293, column: 19, scope: !140)
!424 = !DILocation(line: 293, column: 12, scope: !140)
!425 = !DILocation(line: 272, column: 8, scope: !140)
!426 = !DILocation(line: 294, column: 26, scope: !140)
!427 = !DILocation(line: 294, column: 30, scope: !140)
!428 = !DILocation(line: 294, column: 19, scope: !140)
!429 = !DILocation(line: 294, column: 12, scope: !140)
!430 = !DILocation(line: 272, column: 16, scope: !140)
!431 = !DILocation(line: 295, column: 19, scope: !140)
!432 = !DILocation(line: 295, column: 12, scope: !140)
!433 = !DILocation(line: 272, column: 24, scope: !140)
!434 = !DILocation(line: 296, column: 19, scope: !140)
!435 = !DILocation(line: 296, column: 12, scope: !140)
!436 = !DILocation(line: 272, column: 31, scope: !140)
!437 = !DILocation(line: 299, column: 12, scope: !140)
!438 = !DILocation(line: 302, column: 16, scope: !140)
!439 = !DILocation(line: 302, column: 29, scope: !140)
!440 = !DILocation(line: 302, column: 26, scope: !140)
!441 = !DILocation(line: 302, column: 43, scope: !140)
!442 = !DILocation(line: 302, column: 56, scope: !140)
!443 = !DILocation(line: 302, column: 14, scope: !140)
!444 = !DILocation(line: 303, column: 29, scope: !140)
!445 = !DILocation(line: 303, column: 26, scope: !140)
!446 = !DILocation(line: 303, column: 56, scope: !140)
!447 = !DILocation(line: 303, column: 3, scope: !140)
!448 = !DILocation(line: 303, column: 14, scope: !140)
!449 = !DILocation(line: 304, column: 29, scope: !140)
!450 = !DILocation(line: 304, column: 26, scope: !140)
!451 = !DILocation(line: 304, column: 56, scope: !140)
!452 = !DILocation(line: 304, column: 3, scope: !140)
!453 = !DILocation(line: 304, column: 14, scope: !140)
!454 = !DILocation(line: 271, column: 7, scope: !140)
!455 = !DILocation(line: 269, column: 7, scope: !140)
!456 = !DILocation(line: 324, column: 20, scope: !457)
!457 = distinct !DILexicalBlock(scope: !458, file: !1, line: 324, column: 3)
!458 = distinct !DILexicalBlock(scope: !140, file: !1, line: 324, column: 3)
!459 = !DILocation(line: 324, column: 3, scope: !458)
!460 = !DILocation(line: 326, column: 9, scope: !461)
!461 = distinct !DILexicalBlock(scope: !462, file: !1, line: 326, column: 9)
!462 = distinct !DILexicalBlock(scope: !457, file: !1, line: 325, column: 3)
!463 = !DILocation(line: 326, column: 16, scope: !461)
!464 = !DILocation(line: 332, column: 27, scope: !462)
!465 = !DILocation(line: 336, column: 30, scope: !462)
!466 = !DILocation(line: 326, column: 30, scope: !461)
!467 = !DILocation(line: 326, column: 33, scope: !461)
!468 = !DILocation(line: 326, column: 9, scope: !462)
!469 = !DILocation(line: 329, column: 39, scope: !470)
!470 = distinct !DILexicalBlock(scope: !461, file: !1, line: 327, column: 7)
!471 = !DILocation(line: 328, column: 2, scope: !470)
!472 = !DILocation(line: 334, column: 33, scope: !462)
!473 = !DILocation(line: 334, column: 26, scope: !462)
!474 = !DILocation(line: 330, column: 7, scope: !470)
!475 = !DILocation(line: 332, column: 37, scope: !462)
!476 = !DILocation(line: 332, column: 23, scope: !462)
!477 = !DILocation(line: 332, column: 5, scope: !462)
!478 = !DILocation(line: 332, column: 21, scope: !462)
!479 = !DILocation(line: 334, column: 66, scope: !462)
!480 = !DILocation(line: 336, column: 20, scope: !462)
!481 = !DILocation(line: 336, column: 26, scope: !462)
!482 = !DILocation(line: 336, column: 23, scope: !462)
!483 = !DILocation(line: 334, column: 5, scope: !462)
!484 = !DILocation(line: 334, column: 21, scope: !462)
!485 = !DILocation(line: 337, column: 17, scope: !462)
!486 = !DILocation(line: 337, column: 5, scope: !462)
!487 = !DILocation(line: 337, column: 21, scope: !462)
!488 = !DILocation(line: 353, column: 3, scope: !140)
!489 = !DILocation(line: 359, column: 10, scope: !490)
!490 = distinct !DILexicalBlock(scope: !140, file: !1, line: 354, column: 3)
!491 = !DILocation(line: 360, column: 6, scope: !490)
!492 = !DILocation(line: 360, column: 13, scope: !490)
!493 = !DILocation(line: 361, column: 10, scope: !490)
!494 = !DILocation(line: 361, column: 6, scope: !490)
!495 = !DILocation(line: 355, column: 18, scope: !490)
!496 = !DILocation(line: 361, column: 27, scope: !490)
!497 = !DILocation(line: 366, column: 10, scope: !490)
!498 = !DILocation(line: 367, column: 6, scope: !490)
!499 = !DILocation(line: 367, column: 13, scope: !490)
!500 = !DILocation(line: 368, column: 10, scope: !490)
!501 = !DILocation(line: 368, column: 6, scope: !490)
!502 = !DILocation(line: 362, column: 18, scope: !490)
!503 = !DILocation(line: 368, column: 27, scope: !490)
!504 = !DILocation(line: 373, column: 10, scope: !490)
!505 = !DILocation(line: 374, column: 6, scope: !490)
!506 = !DILocation(line: 374, column: 13, scope: !490)
!507 = !DILocation(line: 375, column: 10, scope: !490)
!508 = !DILocation(line: 375, column: 6, scope: !490)
!509 = !DILocation(line: 369, column: 18, scope: !490)
!510 = !DILocation(line: 375, column: 27, scope: !490)
!511 = !DILocation(line: 376, column: 23, scope: !490)
!512 = !DILocation(line: 377, column: 3, scope: !490)
!513 = !DILocation(line: 379, column: 3, scope: !140)
!514 = !DILocation(line: 380, column: 3, scope: !140)
!515 = !DILocation(line: 381, column: 3, scope: !140)
!516 = !DILocation(line: 382, column: 3, scope: !140)
!517 = !DILocation(line: 384, column: 26, scope: !140)
!518 = !DILocation(line: 385, column: 1, scope: !140)
!519 = !DILocation(line: 387, column: 33, scope: !189)
!520 = !DILocation(line: 387, column: 44, scope: !189)
!521 = !DILocation(line: 387, column: 53, scope: !189)
!522 = !DILocation(line: 389, column: 25, scope: !189)
!523 = !DILocation(line: 389, column: 11, scope: !189)
!524 = !DILocation(line: 389, column: 9, scope: !189)
!525 = !DILocation(line: 390, column: 3, scope: !189)
!526 = !DILocation(line: 410, column: 20, scope: !194)
!527 = !DILocation(line: 410, column: 36, scope: !194)
!528 = !DILocation(line: 412, column: 7, scope: !194)
!529 = !DILocation(line: 413, column: 10, scope: !194)
!530 = !DILocation(line: 413, column: 7, scope: !194)
!531 = !DILocation(line: 415, column: 9, scope: !532)
!532 = distinct !DILexicalBlock(scope: !194, file: !1, line: 415, column: 7)
!533 = !DILocation(line: 415, column: 7, scope: !194)
!534 = !DILocation(line: 417, column: 14, scope: !535)
!535 = distinct !DILexicalBlock(scope: !532, file: !1, line: 416, column: 3)
!536 = !DILocation(line: 418, column: 3, scope: !535)
!537 = !DILocation(line: 421, column: 5, scope: !538)
!538 = distinct !DILexicalBlock(scope: !532, file: !1, line: 420, column: 3)
!539 = !DILocation(line: 424, column: 3, scope: !194)
!540 = !DILocation(line: 428, column: 12, scope: !200)
!541 = !DILocation(line: 428, column: 23, scope: !200)
!542 = !DILocation(line: 428, column: 27, scope: !200)
!543 = !DILocation(line: 430, column: 3, scope: !200)
!544 = !DILocation(line: 431, column: 11, scope: !200)
!545 = !DILocation(line: 431, column: 9, scope: !200)
!546 = !DILocation(line: 432, column: 3, scope: !200)
!547 = !DILocation(line: 433, column: 3, scope: !200)
