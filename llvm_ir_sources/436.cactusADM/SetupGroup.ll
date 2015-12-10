; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/PUGH/SetupGroup.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.PGH = type { i8*, i32, i32, i32, i32, i32, i32, i8***, i32, i32*, i32, i32, double, double, double, double, i32, i32, i32, i32, i32, %struct.PGExtras**, %struct.PConnectivity**, i8* }
%struct.PGExtras = type { i32, i32*, double, i32**, i32**, i32*, i32*, i32, i32*, i32**, i32*, i32*, i32*, [4 x [2 x i32*]], [4 x [2 x i32**]], [4 x [2 x i32**]] }
%struct.PConnectivity = type { i32, i32*, i32**, i32* }
%struct.PComm = type { i32*, i8**, i8**, i32, i32*, i32, i32, i32 }
%struct.PGA = type { i8*, i32, i32, i8*, i8*, i32, i32, i8*, i32, i32, %struct.PGExtras*, %struct.PConnectivity*, %struct.PComm*, %struct.PComm*, i32, i32, %struct.PGA* }

@.str = private unnamed_addr constant [77 x i8] c"../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/PUGH/SetupGroup.c\00", align 1
@.str1 = private unnamed_addr constant [5 x i8] c"PUGH\00", align 1
@.str2 = private unnamed_addr constant [38 x i8] c"Unknown group type in PUGH_SetupGroup\00", align 1
@.str3 = private unnamed_addr constant [91 x i8] c"$Header: /cactus/CactusPUGH/PUGH/src/SetupGroup.c,v 1.45 2001/10/07 10:06:31 goodale Exp $\00", align 1
@.str4 = private unnamed_addr constant [49 x i8] c"Memory allocation error in PUGH_SetupScalarGroup\00", align 1
@.str5 = private unnamed_addr constant [45 x i8] c"Memory allocation error in PUGH_SetupGAGroup\00", align 1

; Function Attrs: nounwind optsize readnone ssp uwtable
define i8* @CCTKi_version_CactusPUGH_PUGH_SetupGroup_c() #0 {
  ret i8* getelementptr inbounds ([91 x i8]* @.str3, i64 0, i64 0), !dbg !220
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @PUGH_SetupGroup(%struct.PGH* %newGH, i32* %nsize, i32* %nghostsize, i32 %gtype, i32 %vtype, i32 %dim, i32 %n_variables, i32 %staggercode, i32 %n_timelevels, i32 %vectorgroup) #1 {
  tail call void @llvm.dbg.value(metadata %struct.PGH* %newGH, i64 0, metadata !88, metadata !221), !dbg !222
  tail call void @llvm.dbg.value(metadata i32* %nsize, i64 0, metadata !89, metadata !221), !dbg !223
  tail call void @llvm.dbg.value(metadata i32* %nghostsize, i64 0, metadata !90, metadata !221), !dbg !224
  tail call void @llvm.dbg.value(metadata i32 %gtype, i64 0, metadata !91, metadata !221), !dbg !225
  tail call void @llvm.dbg.value(metadata i32 %vtype, i64 0, metadata !92, metadata !221), !dbg !226
  tail call void @llvm.dbg.value(metadata i32 %dim, i64 0, metadata !93, metadata !221), !dbg !227
  tail call void @llvm.dbg.value(metadata i32 %n_variables, i64 0, metadata !94, metadata !221), !dbg !228
  tail call void @llvm.dbg.value(metadata i32 %staggercode, i64 0, metadata !95, metadata !221), !dbg !229
  tail call void @llvm.dbg.value(metadata i32 %n_timelevels, i64 0, metadata !96, metadata !221), !dbg !230
  tail call void @llvm.dbg.value(metadata i32 %vectorgroup, i64 0, metadata !97, metadata !221), !dbg !231
  %1 = icmp eq i32 %gtype, 1, !dbg !232
  br i1 %1, label %2, label %46, !dbg !234

; <label>:2                                       ; preds = %0
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !107, metadata !221) #5, !dbg !235
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !177, metadata !221) #5, !dbg !238
  %3 = getelementptr inbounds %struct.PGH* %newGH, i64 0, i32 7, !dbg !239
  %4 = bitcast i8**** %3 to i8**, !dbg !239
  %5 = load i8** %4, align 8, !dbg !239, !tbaa !240
  %6 = getelementptr inbounds %struct.PGH* %newGH, i64 0, i32 5, !dbg !247
  %7 = load i32* %6, align 4, !dbg !247, !tbaa !248
  %8 = add nsw i32 %7, %n_variables, !dbg !249
  %9 = sext i32 %8 to i64, !dbg !250
  %10 = shl nsw i64 %9, 3, !dbg !251
  %11 = tail call i8* @realloc(i8* %5, i64 %10) #6, !dbg !252
  tail call void @llvm.dbg.value(metadata i8* %11, i64 0, metadata !178, metadata !221) #5, !dbg !253
  %12 = icmp eq i8* %11, null, !dbg !254
  br i1 %12, label %.critedge.thread.i, label %13, !dbg !256

; <label>:13                                      ; preds = %2
  store i8* %11, i8** %4, align 8, !dbg !257, !tbaa !240
  %14 = tail call i32 @CCTK_VarTypeSize(i32 %vtype) #6, !dbg !259
  tail call void @llvm.dbg.value(metadata i32 %14, i64 0, metadata !176, metadata !221) #5, !dbg !260
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !174, metadata !221) #5, !dbg !261
  %15 = icmp sgt i32 %n_variables, 0, !dbg !262
  br i1 %15, label %.lr.ph10.i, label %._crit_edge, !dbg !265

._crit_edge:                                      ; preds = %13
  %.pre = load i32* %6, align 4, !dbg !266, !tbaa !248
  br label %.loopexit, !dbg !265

.lr.ph10.i:                                       ; preds = %13
  %16 = sext i32 %n_timelevels to i64, !dbg !269
  %17 = shl nsw i64 %16, 3, !dbg !271
  %18 = add nsw i32 %14, 1, !dbg !272
  %19 = sext i32 %18 to i64, !dbg !278
  %20 = icmp sgt i32 %n_timelevels, 0, !dbg !279
  %21 = sext i32 %14 to i64, !dbg !280
  br label %22, !dbg !265

; <label>:22                                      ; preds = %.loopexit.i, %.lr.ph10.i
  %variable.06.i = phi i32 [ 0, %.lr.ph10.i ], [ %41, %.loopexit.i ], !dbg !283
  %23 = tail call i8* @malloc(i64 %17) #6, !dbg !284
  tail call void @llvm.dbg.value(metadata i8* %23, i64 0, metadata !178, metadata !221) #5, !dbg !253
  %24 = icmp eq i8* %23, null, !dbg !285
  br i1 %24, label %.critedge.thread.i, label %25, !dbg !286

; <label>:25                                      ; preds = %22
  %26 = load i32* %6, align 4, !dbg !287, !tbaa !248
  %27 = add nsw i32 %26, %variable.06.i, !dbg !288
  %28 = sext i32 %27 to i64, !dbg !289
  %29 = load i8**** %3, align 8, !dbg !290, !tbaa !240
  %30 = getelementptr inbounds i8*** %29, i64 %28, !dbg !289
  %31 = bitcast i8*** %30 to i8**, !dbg !291
  store i8* %23, i8** %31, align 8, !dbg !291, !tbaa !292
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !175, metadata !221) #5, !dbg !293
  br i1 %20, label %.lr.ph.i, label %.loopexit.i, !dbg !294

.lr.ph.i:                                         ; preds = %25, %34
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %34 ], [ 0, %25 ], !dbg !283
  %32 = tail call i8* @malloc(i64 %19) #6, !dbg !295
  tail call void @llvm.dbg.value(metadata i8* %32, i64 0, metadata !178, metadata !221) #5, !dbg !253
  %33 = icmp eq i8* %32, null, !dbg !296
  br i1 %33, label %.critedge.thread.i, label %34, !dbg !297

; <label>:34                                      ; preds = %.lr.ph.i
  %35 = load i8**** %3, align 8, !dbg !298, !tbaa !240
  %36 = getelementptr inbounds i8*** %35, i64 %28, !dbg !299
  %37 = load i8*** %36, align 8, !dbg !299, !tbaa !292
  %38 = getelementptr inbounds i8** %37, i64 %indvars.iv.i, !dbg !299
  store i8* %32, i8** %38, align 8, !dbg !300, !tbaa !292
  %39 = getelementptr inbounds i8* %32, i64 %21, !dbg !280
  store i8 0, i8* %39, align 1, !dbg !301, !tbaa !302
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1, !dbg !294
  %40 = icmp slt i64 %indvars.iv.next.i, %16, !dbg !279
  br i1 %40, label %.lr.ph.i, label %.loopexit.i, !dbg !294

.loopexit.i:                                      ; preds = %34, %25
  %41 = add nuw nsw i32 %variable.06.i, 1, !dbg !303
  tail call void @llvm.dbg.value(metadata i32 %41, i64 0, metadata !174, metadata !221) #5, !dbg !261
  %42 = icmp slt i32 %41, %n_variables, !dbg !262
  br i1 %42, label %22, label %.loopexit, !dbg !265

.loopexit:                                        ; preds = %.loopexit.i, %._crit_edge
  %43 = phi i32 [ %.pre, %._crit_edge ], [ %26, %.loopexit.i ]
  %44 = add nsw i32 %43, %n_variables, !dbg !266
  store i32 %44, i32* %6, align 4, !dbg !266, !tbaa !248
  br label %PUGH_SetupScalarGroup.exit, !dbg !304

.critedge.thread.i:                               ; preds = %22, %.lr.ph.i, %2
  %45 = tail call i32 @CCTK_Warn(i32 1, i32 153, i8* getelementptr inbounds ([77 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([49 x i8]* @.str4, i64 0, i64 0)) #6, !dbg !305
  br label %PUGH_SetupScalarGroup.exit, !dbg !283

; <label>:46                                      ; preds = %0
  %47 = and i32 %gtype, -2, !dbg !307
  %48 = icmp eq i32 %47, 2, !dbg !307
  br i1 %48, label %49, label %176, !dbg !307

; <label>:49                                      ; preds = %46
  tail call void @llvm.dbg.value(metadata %struct.PGH* %newGH, i64 0, metadata !181, metadata !221) #5, !dbg !309
  tail call void @llvm.dbg.value(metadata i32* %nsize, i64 0, metadata !182, metadata !221) #5, !dbg !312
  tail call void @llvm.dbg.value(metadata i32* %nghostsize, i64 0, metadata !183, metadata !221) #5, !dbg !313
  tail call void @llvm.dbg.value(metadata i32 %gtype, i64 0, metadata !184, metadata !221) #5, !dbg !314
  tail call void @llvm.dbg.value(metadata i32 %vtype, i64 0, metadata !185, metadata !221) #5, !dbg !315
  tail call void @llvm.dbg.value(metadata i32 %dim, i64 0, metadata !186, metadata !221) #5, !dbg !316
  tail call void @llvm.dbg.value(metadata i32 %n_variables, i64 0, metadata !187, metadata !221) #5, !dbg !317
  tail call void @llvm.dbg.value(metadata i32 %staggercode, i64 0, metadata !188, metadata !221) #5, !dbg !318
  tail call void @llvm.dbg.value(metadata i32 %n_timelevels, i64 0, metadata !189, metadata !221) #5, !dbg !319
  tail call void @llvm.dbg.value(metadata i32 %vectorgroup, i64 0, metadata !190, metadata !221) #5, !dbg !320
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !194, metadata !221) #5, !dbg !321
  %50 = tail call i32 @CCTK_VarTypeSize(i32 %vtype) #6, !dbg !322
  tail call void @llvm.dbg.value(metadata i32 %50, i64 0, metadata !193, metadata !221) #5, !dbg !323
  %51 = icmp eq i32 %gtype, 3, !dbg !324
  br i1 %51, label %52, label %88, !dbg !326

; <label>:52                                      ; preds = %49
  %53 = sext i32 %dim to i64, !dbg !327
  %54 = tail call i8* @calloc(i64 %53, i64 4) #6, !dbg !329
  %55 = bitcast i8* %54 to i32*, !dbg !330
  tail call void @llvm.dbg.value(metadata i32* %55, i64 0, metadata !212, metadata !221) #5, !dbg !331
  %56 = tail call i8* @calloc(i64 %53, i64 4) #6, !dbg !332
  %57 = bitcast i8* %56 to i32*, !dbg !333
  tail call void @llvm.dbg.value(metadata i32* %57, i64 0, metadata !213, metadata !221) #5, !dbg !334
  %58 = icmp ne i8* %54, null, !dbg !335
  %59 = icmp ne i8* %56, null, !dbg !337
  %or.cond.i = and i1 %58, %59, !dbg !338
  br i1 %or.cond.i, label %.preheader5.i, label %60, !dbg !338

; <label>:60                                      ; preds = %52
  %61 = tail call i32 @CCTK_Warn(i32 0, i32 266, i8* getelementptr inbounds ([77 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([45 x i8]* @.str5, i64 0, i64 0)) #6, !dbg !339
  br label %.preheader5.i, !dbg !341

.preheader5.i:                                    ; preds = %60, %52
  %62 = icmp sgt i32 %dim, 0, !dbg !342
  br i1 %62, label %.lr.ph11.i, label %._crit_edge12.i, !dbg !345

.lr.ph11.i:                                       ; preds = %.preheader5.i
  %63 = add i32 %dim, -1, !dbg !345
  br label %64, !dbg !345

; <label>:64                                      ; preds = %78, %.lr.ph11.i
  %indvars.iv13.i = phi i64 [ 0, %.lr.ph11.i ], [ %indvars.iv.next14.i, %78 ], !dbg !346
  %65 = getelementptr inbounds i32* %57, i64 %indvars.iv13.i, !dbg !347
  %66 = load i32* %65, align 4, !dbg !347, !tbaa !350
  %67 = icmp eq i32 %66, 0, !dbg !347
  br i1 %67, label %68, label %78, !dbg !351

; <label>:68                                      ; preds = %64
  %69 = getelementptr inbounds i32* %nsize, i64 %indvars.iv13.i, !dbg !352
  %70 = load i32* %69, align 4, !dbg !352, !tbaa !350
  %ispos.i = icmp sgt i32 %70, -1, !dbg !353
  %neg.i = sub i32 0, %70, !dbg !353
  %71 = select i1 %ispos.i, i32 %70, i32 %neg.i, !dbg !353
  %72 = getelementptr inbounds i32* %nghostsize, i64 %indvars.iv13.i, !dbg !354
  %73 = load i32* %72, align 4, !dbg !354, !tbaa !350
  %74 = shl nsw i32 %73, 1, !dbg !355
  %75 = or i32 %74, 1, !dbg !356
  %76 = icmp sgt i32 %71, %75, !dbg !357
  br i1 %76, label %78, label %77, !dbg !358

; <label>:77                                      ; preds = %68
  store i32 1, i32* %65, align 4, !dbg !359, !tbaa !350
  br label %78, !dbg !361

; <label>:78                                      ; preds = %77, %68, %64
  %indvars.iv.next14.i = add nuw nsw i64 %indvars.iv13.i, 1, !dbg !345
  %lftr.wideiv9 = trunc i64 %indvars.iv13.i to i32, !dbg !345
  %exitcond10 = icmp eq i32 %lftr.wideiv9, %63, !dbg !345
  br i1 %exitcond10, label %._crit_edge12.i, label %64, !dbg !345

._crit_edge12.i:                                  ; preds = %78, %.preheader5.i
  %79 = getelementptr inbounds %struct.PGH* %newGH, i64 0, i32 2, !dbg !362
  %80 = load i32* %79, align 4, !dbg !362, !tbaa !363
  %81 = tail call %struct.PConnectivity* @PUGH_SetupConnectivity(i32 %dim, i32 %80, i32* %57, i32* %55) #6, !dbg !364
  tail call void @llvm.dbg.value(metadata %struct.PConnectivity* %81, i64 0, metadata !197, metadata !221) #5, !dbg !365
  %82 = load i32* %79, align 4, !dbg !366, !tbaa !363
  %83 = getelementptr inbounds %struct.PConnectivity* %81, i64 0, i32 1, !dbg !367
  %84 = load i32** %83, align 8, !dbg !367, !tbaa !368
  %85 = getelementptr inbounds %struct.PGH* %newGH, i64 0, i32 3, !dbg !370
  %86 = load i32* %85, align 4, !dbg !370, !tbaa !371
  %87 = tail call %struct.PGExtras* @PUGH_SetupPGExtras(i32 %dim, i32* %55, i32 %staggercode, i32* %nsize, i32* %nghostsize, i32 %82, i32* %84, i32 %86) #6, !dbg !372
  tail call void @llvm.dbg.value(metadata %struct.PGExtras* %87, i64 0, metadata !198, metadata !221) #5, !dbg !373
  tail call void @free(i8* %56) #6, !dbg !374
  tail call void @free(i8* %54) #6, !dbg !375
  br label %99, !dbg !376

; <label>:88                                      ; preds = %49
  %89 = add nsw i32 %dim, -1, !dbg !377
  %90 = sext i32 %89 to i64, !dbg !379
  %91 = getelementptr inbounds %struct.PGH* %newGH, i64 0, i32 22, !dbg !380
  %92 = load %struct.PConnectivity*** %91, align 8, !dbg !380, !tbaa !381
  %93 = getelementptr inbounds %struct.PConnectivity** %92, i64 %90, !dbg !379
  %94 = load %struct.PConnectivity** %93, align 8, !dbg !379, !tbaa !292
  tail call void @llvm.dbg.value(metadata %struct.PConnectivity* %94, i64 0, metadata !197, metadata !221) #5, !dbg !365
  %95 = getelementptr inbounds %struct.PGH* %newGH, i64 0, i32 21, !dbg !382
  %96 = load %struct.PGExtras*** %95, align 8, !dbg !382, !tbaa !383
  %97 = getelementptr inbounds %struct.PGExtras** %96, i64 %90, !dbg !384
  %98 = load %struct.PGExtras** %97, align 8, !dbg !384, !tbaa !292
  tail call void @llvm.dbg.value(metadata %struct.PGExtras* %98, i64 0, metadata !198, metadata !221) #5, !dbg !373
  br label %99, !dbg !346

; <label>:99                                      ; preds = %88, %._crit_edge12.i
  %connectivity.0.i = phi %struct.PConnectivity* [ %81, %._crit_edge12.i ], [ %94, %88 ], !dbg !346
  %extras.0.i = phi %struct.PGExtras* [ %87, %._crit_edge12.i ], [ %98, %88 ], !dbg !346
  %100 = getelementptr inbounds %struct.PGH* %newGH, i64 0, i32 4, !dbg !385
  %101 = load i32* %100, align 4, !dbg !385, !tbaa !387
  %102 = icmp eq i32 %101, 1, !dbg !388
  %103 = getelementptr inbounds %struct.PGH* %newGH, i64 0, i32 5, !dbg !389
  br i1 %102, label %104, label %._crit_edge19.i, !dbg !391

; <label>:104                                     ; preds = %99
  %105 = load i32* %103, align 4, !dbg !389, !tbaa !248
  %106 = tail call %struct.PComm* @PUGH_SetupGArrayGroupComm(%struct.PGH* %newGH, i32 %dim, i32 %105, i32 %n_variables, i32 0, i32 %vtype, %struct.PGExtras* %extras.0.i) #6, !dbg !392
  tail call void @llvm.dbg.value(metadata %struct.PComm* %106, i64 0, metadata !199, metadata !221) #5, !dbg !393
  br label %._crit_edge19.i, !dbg !394

._crit_edge19.i:                                  ; preds = %104, %99
  %groupcomm.0.i = phi %struct.PComm* [ %106, %104 ], [ null, %99 ], !dbg !346
  %107 = getelementptr inbounds %struct.PGH* %newGH, i64 0, i32 7, !dbg !395
  %108 = bitcast i8**** %107 to i8**, !dbg !395
  %109 = load i8** %108, align 8, !dbg !395, !tbaa !240
  %110 = load i32* %103, align 4, !dbg !396, !tbaa !248
  %111 = add nsw i32 %110, %n_variables, !dbg !397
  %112 = sext i32 %111 to i64, !dbg !398
  %113 = shl nsw i64 %112, 3, !dbg !399
  %114 = tail call i8* @realloc(i8* %109, i64 %113) #6, !dbg !400
  %115 = icmp eq i8* %114, null, !dbg !401
  br i1 %115, label %.loopexit.i5, label %116, !dbg !403

; <label>:116                                     ; preds = %._crit_edge19.i
  store i8* %114, i8** %108, align 8, !dbg !404, !tbaa !240
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !192, metadata !221) #5, !dbg !406
  %117 = icmp sgt i32 %n_variables, 0, !dbg !407
  br i1 %117, label %.lr.ph9.i, label %PUGH_SetupScalarGroup.exit, !dbg !410

.lr.ph9.i:                                        ; preds = %116
  %118 = bitcast i8* %114 to i8***
  %119 = bitcast i8* %114 to i8***, !dbg !346
  %120 = sext i32 %n_timelevels to i64, !dbg !411
  %121 = shl nsw i64 %120, 3, !dbg !413
  %122 = icmp sgt i32 %n_timelevels, 0, !dbg !414
  %123 = bitcast %struct.PGH* %newGH to i8*, !dbg !419
  %124 = getelementptr inbounds %struct.PGH* %newGH, i64 0, i32 6, !dbg !421
  %125 = icmp ne i32 %vectorgroup, 0, !dbg !422
  %126 = select i1 %125, i32 %n_variables, i32 1, !dbg !422
  %.pre.i = load i32* %103, align 4, !dbg !423, !tbaa !248
  %127 = tail call i8* @malloc(i64 %121) #6, !dbg !424
  %128 = sext i32 %.pre.i to i64, !dbg !425
  %129 = getelementptr inbounds i8*** %119, i64 %128, !dbg !425
  %130 = bitcast i8*** %129 to i8**, !dbg !426
  store i8* %127, i8** %130, align 8, !dbg !426, !tbaa !292
  %131 = getelementptr inbounds i8*** %118, i64 %128, !dbg !427
  %132 = load i8*** %131, align 8, !dbg !427, !tbaa !292
  %133 = icmp eq i8** %132, null, !dbg !427
  br i1 %133, label %.loopexit.i5, label %.preheader.i.lr.ph, !dbg !428

.preheader.i.lr.ph:                               ; preds = %.lr.ph9.i
  %134 = add i32 %n_timelevels, -1, !dbg !428
  br label %.preheader.i, !dbg !428

.preheader.i:                                     ; preds = %.preheader.i.lr.ph, %._crit_edge17.i
  %variable.07.i7 = phi i32 [ 0, %.preheader.i.lr.ph ], [ %165, %._crit_edge17.i ]
  %135 = phi i32 [ %.pre.i, %.preheader.i.lr.ph ], [ %164, %._crit_edge17.i ]
  br i1 %122, label %.lr.ph.i2, label %._crit_edge.i, !dbg !429

.lr.ph.i2:                                        ; preds = %.preheader.i
  %136 = icmp sgt i32 %variable.07.i7, 0, !dbg !430
  br label %137, !dbg !429

; <label>:137                                     ; preds = %150, %.lr.ph.i2
  %138 = phi i32 [ %135, %.lr.ph.i2 ], [ %154, %150 ], !dbg !346
  %indvars.iv.i3 = phi i64 [ 0, %.lr.ph.i2 ], [ %indvars.iv.next.i4, %150 ], !dbg !346
  %139 = tail call i8* @CCTK_VarName(i32 %138) #6, !dbg !431
  %140 = load i32* %103, align 4, !dbg !432, !tbaa !248
  %141 = load i32* %124, align 4, !dbg !421, !tbaa !433
  br i1 %136, label %142, label %150, !dbg !434

; <label>:142                                     ; preds = %137
  %143 = sub nsw i32 %140, %variable.07.i7, !dbg !435
  %144 = sext i32 %143 to i64, !dbg !436
  %145 = load i8**** %107, align 8, !dbg !437, !tbaa !240
  %146 = getelementptr inbounds i8*** %145, i64 %144, !dbg !436
  %147 = load i8*** %146, align 8, !dbg !436, !tbaa !292
  %148 = getelementptr inbounds i8** %147, i64 %indvars.iv.i3, !dbg !436
  %149 = load i8** %148, align 8, !dbg !436, !tbaa !292
  br label %150, !dbg !434

; <label>:150                                     ; preds = %142, %137
  %151 = phi i8* [ %149, %142 ], [ null, %137 ], !dbg !434
  %152 = bitcast i8* %151 to %struct.PGA*, !dbg !434
  %153 = tail call %struct.PGA* @PUGH_SetupGArray(i8* %123, %struct.PGExtras* %extras.0.i, %struct.PConnectivity* %connectivity.0.i, %struct.PComm* %groupcomm.0.i, i8* %139, i32 %140, i32 %141, i32 %50, i32 %vtype, i32 %staggercode, i32 %126, i32 %variable.07.i7, %struct.PGA* %152) #6, !dbg !438
  %154 = load i32* %103, align 4, !dbg !439, !tbaa !248
  %155 = sext i32 %154 to i64, !dbg !440
  %156 = load i8**** %107, align 8, !dbg !441, !tbaa !240
  %157 = getelementptr inbounds i8*** %156, i64 %155, !dbg !440
  %158 = load i8*** %157, align 8, !dbg !440, !tbaa !292
  %159 = getelementptr inbounds i8** %158, i64 %indvars.iv.i3, !dbg !440
  %160 = bitcast i8** %159 to %struct.PGA**, !dbg !442
  store %struct.PGA* %153, %struct.PGA** %160, align 8, !dbg !442, !tbaa !292
  %161 = load i32* %124, align 4, !dbg !443, !tbaa !433
  %162 = add nsw i32 %161, 1, !dbg !443
  store i32 %162, i32* %124, align 4, !dbg !443, !tbaa !433
  %indvars.iv.next.i4 = add nuw nsw i64 %indvars.iv.i3, 1, !dbg !429
  %lftr.wideiv = trunc i64 %indvars.iv.i3 to i32, !dbg !429
  %exitcond = icmp eq i32 %lftr.wideiv, %134, !dbg !429
  br i1 %exitcond, label %._crit_edge.i, label %137, !dbg !429

._crit_edge.i:                                    ; preds = %150, %.preheader.i
  %163 = phi i32 [ %135, %.preheader.i ], [ %154, %150 ], !dbg !444
  %164 = add nsw i32 %163, 1, !dbg !444
  store i32 %164, i32* %103, align 4, !dbg !444, !tbaa !248
  %165 = add nuw nsw i32 %variable.07.i7, 1, !dbg !445
  tail call void @llvm.dbg.value(metadata i32 %165, i64 0, metadata !192, metadata !221) #5, !dbg !406
  %166 = icmp slt i32 %165, %n_variables, !dbg !407
  br i1 %166, label %._crit_edge17.i, label %PUGH_SetupScalarGroup.exit, !dbg !410

._crit_edge17.i:                                  ; preds = %._crit_edge.i
  %.pre18.i = load i8**** %107, align 8, !dbg !446, !tbaa !240
  %167 = tail call i8* @malloc(i64 %121) #6, !dbg !424
  %168 = sext i32 %164 to i64, !dbg !425
  %169 = getelementptr inbounds i8*** %.pre18.i, i64 %168, !dbg !425
  %170 = bitcast i8*** %169 to i8**, !dbg !426
  store i8* %167, i8** %170, align 8, !dbg !426, !tbaa !292
  %171 = load i8**** %107, align 8, !dbg !447, !tbaa !240
  %172 = getelementptr inbounds i8*** %171, i64 %168, !dbg !427
  %173 = load i8*** %172, align 8, !dbg !427, !tbaa !292
  %174 = icmp eq i8** %173, null, !dbg !427
  br i1 %174, label %.loopexit.i5, label %.preheader.i, !dbg !428

.loopexit.i5:                                     ; preds = %._crit_edge17.i, %.lr.ph9.i, %._crit_edge19.i
  %175 = tail call i32 @CCTK_Warn(i32 1, i32 366, i8* getelementptr inbounds ([77 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([45 x i8]* @.str5, i64 0, i64 0)) #6, !dbg !448
  br label %PUGH_SetupScalarGroup.exit, !dbg !451

; <label>:176                                     ; preds = %46
  %177 = tail call i32 @CCTK_Warn(i32 0, i32 465, i8* getelementptr inbounds ([77 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([38 x i8]* @.str2, i64 0, i64 0)) #6, !dbg !452
  tail call void @llvm.dbg.value(metadata i32 -1, i64 0, metadata !98, metadata !221), !dbg !454
  br label %PUGH_SetupScalarGroup.exit

PUGH_SetupScalarGroup.exit:                       ; preds = %._crit_edge.i, %.loopexit.i5, %116, %.critedge.thread.i, %.loopexit, %176
  %retval.0 = phi i32 [ -1, %176 ], [ -2, %.critedge.thread.i ], [ 0, %.loopexit ], [ -2, %.loopexit.i5 ], [ 0, %116 ], [ 0, %._crit_edge.i ]
  ret i32 %retval.0, !dbg !455
}

; Function Attrs: optsize
declare i32 @CCTK_Warn(i32, i32, i8*, i8*, i8*) #2

; Function Attrs: nounwind optsize
declare noalias i8* @realloc(i8* nocapture, i64) #3

; Function Attrs: optsize
declare i32 @CCTK_VarTypeSize(i32) #2

; Function Attrs: nounwind optsize
declare noalias i8* @malloc(i64) #3

; Function Attrs: nounwind optsize
declare noalias i8* @calloc(i64, i64) #3

; Function Attrs: optsize
declare %struct.PConnectivity* @PUGH_SetupConnectivity(i32, i32, i32*, i32*) #2

; Function Attrs: optsize
declare %struct.PGExtras* @PUGH_SetupPGExtras(i32, i32*, i32, i32*, i32*, i32, i32*, i32) #2

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) #3

; Function Attrs: optsize
declare %struct.PComm* @PUGH_SetupGArrayGroupComm(%struct.PGH*, i32, i32, i32, i32, i32, %struct.PGExtras*) #2

; Function Attrs: optsize
declare %struct.PGA* @PUGH_SetupGArray(i8*, %struct.PGExtras*, %struct.PConnectivity*, %struct.PComm*, i8*, i32, i32, i32, i32, i32, i32, i32, %struct.PGA*) #2

; Function Attrs: optsize
declare i8* @CCTK_VarName(i32) #2

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #4

attributes #0 = { nounwind optsize readnone ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone }
attributes #5 = { nounwind }
attributes #6 = { nounwind optsize }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!216, !217, !218}
!llvm.ident = !{!219}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !3, subprograms: !11, globals: !214, imports: !2)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/PUGH/SetupGroup.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{}
!3 = !{!4, !5, !7, !9, !6}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64, align: 64)
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64, align: 64)
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!7 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64, align: 64)
!8 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!9 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64, align: 64)
!10 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!11 = !{!12, !17, !99, !179}
!12 = !DISubprogram(name: "CCTKi_version_CactusPUGH_PUGH_SetupGroup_c", scope: !1, file: !1, line: 23, type: !13, isLocal: false, isDefinition: true, scopeLine: 23, flags: DIFlagPrototyped, isOptimized: true, function: i8* ()* @CCTKi_version_CactusPUGH_PUGH_SetupGroup_c, variables: !2)
!13 = !DISubroutineType(types: !14)
!14 = !{!15}
!15 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64, align: 64)
!16 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !8)
!17 = !DISubprogram(name: "PUGH_SetupGroup", scope: !1, file: !1, line: 441, type: !18, isLocal: false, isDefinition: true, scopeLine: 451, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.PGH*, i32*, i32*, i32, i32, i32, i32, i32, i32, i32)* @PUGH_SetupGroup, variables: !87)
!18 = !DISubroutineType(types: !19)
!19 = !{!10, !20, !9, !9, !10, !10, !10, !10, !10, !10, !10}
!20 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64, align: 64)
!21 = !DIDerivedType(tag: DW_TAG_typedef, name: "pGH", file: !22, line: 81, baseType: !23)
!22 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/PUGH/../include/pGH.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!23 = !DICompositeType(tag: DW_TAG_structure_type, name: "PGH", file: !22, line: 13, size: 1152, align: 64, elements: !24)
!24 = !{!25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !39, !40, !41, !42, !43, !44, !45, !46, !47, !76, !86}
!25 = !DIDerivedType(tag: DW_TAG_member, name: "callerid", scope: !23, file: !22, line: 17, baseType: !6, size: 64, align: 64)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "dim", scope: !23, file: !22, line: 18, baseType: !10, size: 32, align: 32, offset: 64)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "nprocs", scope: !23, file: !22, line: 21, baseType: !10, size: 32, align: 32, offset: 96)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "myproc", scope: !23, file: !22, line: 22, baseType: !10, size: 32, align: 32, offset: 128)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "commmodel", scope: !23, file: !22, line: 23, baseType: !10, size: 32, align: 32, offset: 160)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "nvariables", scope: !23, file: !22, line: 27, baseType: !10, size: 32, align: 32, offset: 192)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "narrays", scope: !23, file: !22, line: 28, baseType: !10, size: 32, align: 32, offset: 224)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "variables", scope: !23, file: !22, line: 29, baseType: !4, size: 64, align: 64, offset: 256)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "timelevel", scope: !23, file: !22, line: 32, baseType: !10, size: 32, align: 32, offset: 320)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "perme", scope: !23, file: !22, line: 34, baseType: !9, size: 64, align: 64, offset: 384)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "periodic", scope: !23, file: !22, line: 35, baseType: !10, size: 32, align: 32, offset: 448)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "forceSync", scope: !23, file: !22, line: 37, baseType: !10, size: 32, align: 32, offset: 480)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "dx0", scope: !23, file: !22, line: 41, baseType: !38, size: 64, align: 64, offset: 512)
!38 = !DIBasicType(name: "double", size: 64, align: 64, encoding: DW_ATE_float)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "dy0", scope: !23, file: !22, line: 41, baseType: !38, size: 64, align: 64, offset: 576)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "dz0", scope: !23, file: !22, line: 41, baseType: !38, size: 64, align: 64, offset: 640)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "dt0", scope: !23, file: !22, line: 41, baseType: !38, size: 64, align: 64, offset: 704)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !23, file: !22, line: 44, baseType: !10, size: 32, align: 32, offset: 768)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "mglevel", scope: !23, file: !22, line: 45, baseType: !10, size: 32, align: 32, offset: 800)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "convlevel", scope: !23, file: !22, line: 46, baseType: !10, size: 32, align: 32, offset: 832)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !23, file: !22, line: 49, baseType: !10, size: 32, align: 32, offset: 864)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "comm_time", scope: !23, file: !22, line: 53, baseType: !10, size: 32, align: 32, offset: 896)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "GFExtras", scope: !23, file: !22, line: 76, baseType: !48, size: 64, align: 64, offset: 960)
!48 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !49, size: 64, align: 64)
!49 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64, align: 64)
!50 = !DIDerivedType(tag: DW_TAG_typedef, name: "pGExtras", file: !51, line: 72, baseType: !52)
!51 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/PUGH/../include/pGV.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!52 = !DICompositeType(tag: DW_TAG_structure_type, name: "PGExtras", file: !51, line: 37, size: 2368, align: 64, elements: !53)
!53 = !{!54, !55, !56, !57, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !73, !75}
!54 = !DIDerivedType(tag: DW_TAG_member, name: "dim", scope: !52, file: !51, line: 39, baseType: !10, size: 32, align: 32)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "nsize", scope: !52, file: !51, line: 41, baseType: !9, size: 64, align: 64, offset: 64)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "maxskew", scope: !52, file: !51, line: 44, baseType: !38, size: 64, align: 64, offset: 128)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "lb", scope: !52, file: !51, line: 45, baseType: !58, size: 64, align: 64, offset: 192)
!58 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64, align: 64)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "ub", scope: !52, file: !51, line: 46, baseType: !58, size: 64, align: 64, offset: 256)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "bbox", scope: !52, file: !51, line: 47, baseType: !9, size: 64, align: 64, offset: 320)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "lnsize", scope: !52, file: !51, line: 49, baseType: !9, size: 64, align: 64, offset: 384)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "npoints", scope: !52, file: !51, line: 50, baseType: !10, size: 32, align: 32, offset: 448)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "rnpoints", scope: !52, file: !51, line: 51, baseType: !9, size: 64, align: 64, offset: 512)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "rnsize", scope: !52, file: !51, line: 52, baseType: !58, size: 64, align: 64, offset: 576)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "iterator", scope: !52, file: !51, line: 55, baseType: !9, size: 64, align: 64, offset: 640)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "hyper_volume", scope: !52, file: !51, line: 56, baseType: !9, size: 64, align: 64, offset: 704)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "nghostzones", scope: !52, file: !51, line: 59, baseType: !9, size: 64, align: 64, offset: 768)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "ownership", scope: !52, file: !51, line: 60, baseType: !69, size: 512, align: 64, offset: 832)
!69 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 512, align: 64, elements: !70)
!70 = !{!71, !72}
!71 = !DISubrange(count: 4)
!72 = !DISubrange(count: 2)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "ghosts", scope: !52, file: !51, line: 64, baseType: !74, size: 512, align: 64, offset: 1344)
!74 = !DICompositeType(tag: DW_TAG_array_type, baseType: !58, size: 512, align: 64, elements: !70)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "overlap", scope: !52, file: !51, line: 68, baseType: !74, size: 512, align: 64, offset: 1856)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "Connectivity", scope: !23, file: !22, line: 77, baseType: !77, size: 64, align: 64, offset: 1024)
!77 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !78, size: 64, align: 64)
!78 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !79, size: 64, align: 64)
!79 = !DIDerivedType(tag: DW_TAG_typedef, name: "pConnectivity", file: !51, line: 29, baseType: !80)
!80 = !DICompositeType(tag: DW_TAG_structure_type, name: "PConnectivity", file: !51, line: 23, size: 256, align: 64, elements: !81)
!81 = !{!82, !83, !84, !85}
!82 = !DIDerivedType(tag: DW_TAG_member, name: "dim", scope: !80, file: !51, line: 25, baseType: !10, size: 32, align: 32)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "nprocs", scope: !80, file: !51, line: 26, baseType: !9, size: 64, align: 64, offset: 64)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "neighbours", scope: !80, file: !51, line: 27, baseType: !58, size: 64, align: 64, offset: 128)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "perme", scope: !80, file: !51, line: 28, baseType: !9, size: 64, align: 64, offset: 192)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "identity_string", scope: !23, file: !22, line: 79, baseType: !7, size: 64, align: 64, offset: 1088)
!87 = !{!88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98}
!88 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "newGH", arg: 1, scope: !17, file: !1, line: 441, type: !20)
!89 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "nsize", arg: 2, scope: !17, file: !1, line: 442, type: !9)
!90 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "nghostsize", arg: 3, scope: !17, file: !1, line: 443, type: !9)
!91 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "gtype", arg: 4, scope: !17, file: !1, line: 444, type: !10)
!92 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "vtype", arg: 5, scope: !17, file: !1, line: 445, type: !10)
!93 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "dim", arg: 6, scope: !17, file: !1, line: 446, type: !10)
!94 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "n_variables", arg: 7, scope: !17, file: !1, line: 447, type: !10)
!95 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "staggercode", arg: 8, scope: !17, file: !1, line: 448, type: !10)
!96 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "n_timelevels", arg: 9, scope: !17, file: !1, line: 449, type: !10)
!97 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "vectorgroup", arg: 10, scope: !17, file: !1, line: 450, type: !10)
!98 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "retval", scope: !17, file: !1, line: 452, type: !10)
!99 = !DISubprogram(name: "PUGH_SetupScalarGroup", scope: !1, file: !1, line: 92, type: !100, isLocal: true, isDefinition: true, scopeLine: 97, flags: DIFlagPrototyped, isOptimized: true, variables: !102)
!100 = !DISubroutineType(types: !101)
!101 = !{!10, !20, !10, !10, !10, !10}
!102 = !{!103, !104, !105, !106, !107, !108, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !168, !169, !170, !171, !174, !175, !176, !177, !178}
!103 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "newGH", arg: 1, scope: !99, file: !1, line: 92, type: !20)
!104 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "vtype", arg: 2, scope: !99, file: !1, line: 93, type: !10)
!105 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "n_variables", arg: 3, scope: !99, file: !1, line: 94, type: !10)
!106 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "n_timelevels", arg: 4, scope: !99, file: !1, line: 95, type: !10)
!107 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "vectorgroup", arg: 5, scope: !99, file: !1, line: 96, type: !10)
!108 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ghost_size", scope: !99, file: !1, line: 98, type: !109)
!109 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !10)
!110 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ghost_size_x", scope: !99, file: !1, line: 98, type: !109)
!111 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ghost_size_y", scope: !99, file: !1, line: 98, type: !109)
!112 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ghost_size_z", scope: !99, file: !1, line: 98, type: !109)
!113 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "global_nsize", scope: !99, file: !1, line: 98, type: !109)
!114 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "global_nx", scope: !99, file: !1, line: 98, type: !109)
!115 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "global_ny", scope: !99, file: !1, line: 98, type: !109)
!116 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "global_nz", scope: !99, file: !1, line: 98, type: !109)
!117 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "periodic", scope: !99, file: !1, line: 98, type: !109)
!118 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "periodic_x", scope: !99, file: !1, line: 98, type: !109)
!119 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "periodic_y", scope: !99, file: !1, line: 98, type: !109)
!120 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "periodic_z", scope: !99, file: !1, line: 98, type: !109)
!121 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "info", scope: !99, file: !1, line: 98, type: !15)
!122 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "initialize_memory", scope: !99, file: !1, line: 98, type: !15)
!123 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "partition", scope: !99, file: !1, line: 98, type: !15)
!124 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "partition_1d_x", scope: !99, file: !1, line: 98, type: !15)
!125 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "partition_2d_x", scope: !99, file: !1, line: 98, type: !15)
!126 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "partition_2d_y", scope: !99, file: !1, line: 98, type: !15)
!127 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "partition_3d_x", scope: !99, file: !1, line: 98, type: !15)
!128 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "partition_3d_y", scope: !99, file: !1, line: 98, type: !15)
!129 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "partition_3d_z", scope: !99, file: !1, line: 98, type: !15)
!130 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "processor_topology", scope: !99, file: !1, line: 98, type: !15)
!131 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "storage_verbose", scope: !99, file: !1, line: 98, type: !15)
!132 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cacheline_mult", scope: !99, file: !1, line: 98, type: !109)
!133 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "enable_all_storage", scope: !99, file: !1, line: 98, type: !109)
!134 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "local_nsize", scope: !99, file: !1, line: 98, type: !109)
!135 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "local_nx", scope: !99, file: !1, line: 98, type: !109)
!136 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "local_ny", scope: !99, file: !1, line: 98, type: !109)
!137 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "local_nz", scope: !99, file: !1, line: 98, type: !109)
!138 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "overloadabort", scope: !99, file: !1, line: 98, type: !109)
!139 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "overloadarraygroupsizeb", scope: !99, file: !1, line: 98, type: !109)
!140 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "overloadbarrier", scope: !99, file: !1, line: 98, type: !109)
!141 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "overloaddisablegroupcomm", scope: !99, file: !1, line: 98, type: !109)
!142 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "overloaddisablegroupstorage", scope: !99, file: !1, line: 98, type: !109)
!143 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "overloadenablegroupcomm", scope: !99, file: !1, line: 98, type: !109)
!144 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "overloadenablegroupstorage", scope: !99, file: !1, line: 98, type: !109)
!145 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "overloadevolve", scope: !99, file: !1, line: 98, type: !109)
!146 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "overloadexit", scope: !99, file: !1, line: 98, type: !109)
!147 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "overloadgroupdynamicdata", scope: !99, file: !1, line: 98, type: !109)
!148 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "overloadmyproc", scope: !99, file: !1, line: 98, type: !109)
!149 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "overloadnprocs", scope: !99, file: !1, line: 98, type: !109)
!150 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "overloadparallelinit", scope: !99, file: !1, line: 98, type: !109)
!151 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "overloadquerygroupstorageb", scope: !99, file: !1, line: 98, type: !109)
!152 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "overloadsyncgroup", scope: !99, file: !1, line: 98, type: !109)
!153 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "padding_active", scope: !99, file: !1, line: 98, type: !109)
!154 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "padding_address_spacing", scope: !99, file: !1, line: 98, type: !109)
!155 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "padding_cacheline_bits", scope: !99, file: !1, line: 98, type: !109)
!156 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "padding_size", scope: !99, file: !1, line: 98, type: !109)
!157 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "processor_topology_1d_x", scope: !99, file: !1, line: 98, type: !109)
!158 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "processor_topology_2d_x", scope: !99, file: !1, line: 98, type: !109)
!159 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "processor_topology_2d_y", scope: !99, file: !1, line: 98, type: !109)
!160 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "processor_topology_3d_x", scope: !99, file: !1, line: 98, type: !109)
!161 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "processor_topology_3d_y", scope: !99, file: !1, line: 98, type: !109)
!162 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "processor_topology_3d_z", scope: !99, file: !1, line: 98, type: !109)
!163 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "storage_report_every", scope: !99, file: !1, line: 98, type: !109)
!164 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "timer_output", scope: !99, file: !1, line: 98, type: !109)
!165 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "terminate", scope: !99, file: !1, line: 98, type: !15)
!166 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cctk_initial_time", scope: !99, file: !1, line: 98, type: !167)
!167 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !38)
!168 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cctk_final_time", scope: !99, file: !1, line: 98, type: !167)
!169 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cctk_itlast", scope: !99, file: !1, line: 98, type: !109)
!170 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "terminate_next", scope: !99, file: !1, line: 98, type: !109)
!171 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cctk_pdummy_pointer", scope: !99, file: !1, line: 98, type: !172)
!172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !173, size: 64, align: 64)
!173 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!174 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "variable", scope: !99, file: !1, line: 99, type: !10)
!175 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "level", scope: !99, file: !1, line: 99, type: !10)
!176 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "vtypesize", scope: !99, file: !1, line: 99, type: !10)
!177 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "retval", scope: !99, file: !1, line: 99, type: !10)
!178 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "temp", scope: !99, file: !1, line: 100, type: !6)
!179 = !DISubprogram(name: "PUGH_SetupGAGroup", scope: !1, file: !1, line: 231, type: !18, isLocal: true, isDefinition: true, scopeLine: 241, flags: DIFlagPrototyped, isOptimized: true, variables: !180)
!180 = !{!181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !212, !213}
!181 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "newGH", arg: 1, scope: !179, file: !1, line: 231, type: !20)
!182 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "nsize", arg: 2, scope: !179, file: !1, line: 232, type: !9)
!183 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ghostsize", arg: 3, scope: !179, file: !1, line: 233, type: !9)
!184 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "gtype", arg: 4, scope: !179, file: !1, line: 234, type: !10)
!185 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "vtype", arg: 5, scope: !179, file: !1, line: 235, type: !10)
!186 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "dim", arg: 6, scope: !179, file: !1, line: 236, type: !10)
!187 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "n_variables", arg: 7, scope: !179, file: !1, line: 237, type: !10)
!188 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "staggercode", arg: 8, scope: !179, file: !1, line: 238, type: !10)
!189 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "n_timelevels", arg: 9, scope: !179, file: !1, line: 239, type: !10)
!190 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "vectorgroup", arg: 10, scope: !179, file: !1, line: 240, type: !10)
!191 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !179, file: !1, line: 242, type: !10)
!192 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "variable", scope: !179, file: !1, line: 243, type: !10)
!193 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "var_size", scope: !179, file: !1, line: 244, type: !10)
!194 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "retval", scope: !179, file: !1, line: 245, type: !10)
!195 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "level", scope: !179, file: !1, line: 246, type: !10)
!196 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "temp", scope: !179, file: !1, line: 247, type: !4)
!197 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "connectivity", scope: !179, file: !1, line: 248, type: !78)
!198 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "extras", scope: !179, file: !1, line: 249, type: !49)
!199 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "groupcomm", scope: !179, file: !1, line: 250, type: !200)
!200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !201, size: 64, align: 64)
!201 = !DIDerivedType(tag: DW_TAG_typedef, name: "pComm", file: !51, line: 94, baseType: !202)
!202 = !DICompositeType(tag: DW_TAG_structure_type, name: "PComm", file: !51, line: 74, size: 448, align: 64, elements: !203)
!203 = !{!204, !205, !206, !207, !208, !209, !210, !211}
!204 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_sz", scope: !202, file: !51, line: 77, baseType: !9, size: 64, align: 64)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "send_buffer", scope: !202, file: !51, line: 78, baseType: !5, size: 64, align: 64, offset: 64)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "recv_buffer", scope: !202, file: !51, line: 79, baseType: !5, size: 64, align: 64, offset: 128)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "commflag", scope: !202, file: !51, line: 80, baseType: !10, size: 32, align: 32, offset: 192)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "docomm", scope: !202, file: !51, line: 82, baseType: !9, size: 64, align: 64, offset: 256)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "first_var", scope: !202, file: !51, line: 84, baseType: !10, size: 32, align: 32, offset: 320)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "n_vars", scope: !202, file: !51, line: 85, baseType: !10, size: 32, align: 32, offset: 352)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "sync_timelevel", scope: !202, file: !51, line: 86, baseType: !10, size: 32, align: 32, offset: 384)
!212 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "perme", scope: !179, file: !1, line: 251, type: !9)
!213 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "nprocs", scope: !179, file: !1, line: 252, type: !9)
!214 = !{!215}
!215 = !DIGlobalVariable(name: "rcsid", scope: !0, file: !1, line: 22, type: !15, isLocal: true, isDefinition: true)
!216 = !{i32 2, !"Dwarf Version", i32 2}
!217 = !{i32 2, !"Debug Info Version", i32 700000003}
!218 = !{i32 1, !"PIC Level", i32 2}
!219 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!220 = !DILocation(line: 23, column: 1, scope: !12)
!221 = !DIExpression()
!222 = !DILocation(line: 441, column: 27, scope: !17)
!223 = !DILocation(line: 442, column: 27, scope: !17)
!224 = !DILocation(line: 443, column: 27, scope: !17)
!225 = !DILocation(line: 444, column: 27, scope: !17)
!226 = !DILocation(line: 445, column: 27, scope: !17)
!227 = !DILocation(line: 446, column: 27, scope: !17)
!228 = !DILocation(line: 447, column: 27, scope: !17)
!229 = !DILocation(line: 448, column: 27, scope: !17)
!230 = !DILocation(line: 449, column: 27, scope: !17)
!231 = !DILocation(line: 450, column: 27, scope: !17)
!232 = !DILocation(line: 454, column: 13, scope: !233)
!233 = distinct !DILexicalBlock(scope: !17, file: !1, line: 454, column: 7)
!234 = !DILocation(line: 454, column: 7, scope: !17)
!235 = !DILocation(line: 96, column: 39, scope: !99, inlinedAt: !236)
!236 = distinct !DILocation(line: 456, column: 14, scope: !237)
!237 = distinct !DILexicalBlock(scope: !233, file: !1, line: 455, column: 3)
!238 = !DILocation(line: 99, column: 35, scope: !99, inlinedAt: !236)
!239 = !DILocation(line: 105, column: 26, scope: !99, inlinedAt: !236)
!240 = !{!241, !242, i64 32}
!241 = !{!"PGH", !242, i64 0, !245, i64 8, !245, i64 12, !245, i64 16, !245, i64 20, !245, i64 24, !245, i64 28, !242, i64 32, !245, i64 40, !242, i64 48, !245, i64 56, !245, i64 60, !246, i64 64, !246, i64 72, !246, i64 80, !246, i64 88, !245, i64 96, !245, i64 100, !245, i64 104, !245, i64 108, !245, i64 112, !242, i64 120, !242, i64 128, !242, i64 136}
!242 = !{!"any pointer", !243, i64 0}
!243 = !{!"omnipotent char", !244, i64 0}
!244 = !{!"Simple C/C++ TBAA"}
!245 = !{!"int", !243, i64 0}
!246 = !{!"double", !243, i64 0}
!247 = !DILocation(line: 106, column: 27, scope: !99, inlinedAt: !236)
!248 = !{!241, !245, i64 24}
!249 = !DILocation(line: 106, column: 38, scope: !99, inlinedAt: !236)
!250 = !DILocation(line: 106, column: 19, scope: !99, inlinedAt: !236)
!251 = !DILocation(line: 106, column: 53, scope: !99, inlinedAt: !236)
!252 = !DILocation(line: 105, column: 10, scope: !99, inlinedAt: !236)
!253 = !DILocation(line: 100, column: 9, scope: !99, inlinedAt: !236)
!254 = !DILocation(line: 107, column: 7, scope: !255, inlinedAt: !236)
!255 = distinct !DILexicalBlock(scope: !99, file: !1, line: 107, column: 7)
!256 = !DILocation(line: 107, column: 7, scope: !99, inlinedAt: !236)
!257 = !DILocation(line: 109, column: 22, scope: !258, inlinedAt: !236)
!258 = distinct !DILexicalBlock(scope: !255, file: !1, line: 108, column: 3)
!259 = !DILocation(line: 110, column: 17, scope: !258, inlinedAt: !236)
!260 = !DILocation(line: 99, column: 24, scope: !99, inlinedAt: !236)
!261 = !DILocation(line: 99, column: 7, scope: !99, inlinedAt: !236)
!262 = !DILocation(line: 112, column: 33, scope: !263, inlinedAt: !236)
!263 = distinct !DILexicalBlock(scope: !264, file: !1, line: 112, column: 5)
!264 = distinct !DILexicalBlock(scope: !258, file: !1, line: 112, column: 5)
!265 = !DILocation(line: 112, column: 47, scope: !263, inlinedAt: !236)
!266 = !DILocation(line: 149, column: 23, scope: !267, inlinedAt: !236)
!267 = distinct !DILexicalBlock(scope: !268, file: !1, line: 148, column: 3)
!268 = distinct !DILexicalBlock(scope: !99, file: !1, line: 147, column: 7)
!269 = !DILocation(line: 114, column: 22, scope: !270, inlinedAt: !236)
!270 = distinct !DILexicalBlock(scope: !263, file: !1, line: 113, column: 5)
!271 = !DILocation(line: 114, column: 35, scope: !270, inlinedAt: !236)
!272 = !DILocation(line: 121, column: 36, scope: !273, inlinedAt: !236)
!273 = distinct !DILexicalBlock(scope: !274, file: !1, line: 119, column: 9)
!274 = distinct !DILexicalBlock(scope: !275, file: !1, line: 118, column: 9)
!275 = distinct !DILexicalBlock(scope: !276, file: !1, line: 118, column: 9)
!276 = distinct !DILexicalBlock(scope: !277, file: !1, line: 116, column: 7)
!277 = distinct !DILexicalBlock(scope: !270, file: !1, line: 115, column: 11)
!278 = !DILocation(line: 121, column: 26, scope: !273, inlinedAt: !236)
!279 = !DILocation(line: 118, column: 31, scope: !274, inlinedAt: !236)
!280 = !DILocation(line: 127, column: 13, scope: !281, inlinedAt: !236)
!281 = distinct !DILexicalBlock(scope: !282, file: !1, line: 123, column: 11)
!282 = distinct !DILexicalBlock(scope: !273, file: !1, line: 122, column: 15)
!283 = !DILocation(line: 456, column: 14, scope: !237)
!284 = !DILocation(line: 114, column: 14, scope: !270, inlinedAt: !236)
!285 = !DILocation(line: 115, column: 11, scope: !277, inlinedAt: !236)
!286 = !DILocation(line: 115, column: 11, scope: !270, inlinedAt: !236)
!287 = !DILocation(line: 117, column: 33, scope: !276, inlinedAt: !236)
!288 = !DILocation(line: 117, column: 44, scope: !276, inlinedAt: !236)
!289 = !DILocation(line: 117, column: 9, scope: !276, inlinedAt: !236)
!290 = !DILocation(line: 117, column: 16, scope: !276, inlinedAt: !236)
!291 = !DILocation(line: 117, column: 56, scope: !276, inlinedAt: !236)
!292 = !{!242, !242, i64 0}
!293 = !DILocation(line: 99, column: 17, scope: !99, inlinedAt: !236)
!294 = !DILocation(line: 118, column: 9, scope: !275, inlinedAt: !236)
!295 = !DILocation(line: 121, column: 18, scope: !273, inlinedAt: !236)
!296 = !DILocation(line: 122, column: 15, scope: !282, inlinedAt: !236)
!297 = !DILocation(line: 122, column: 15, scope: !273, inlinedAt: !236)
!298 = !DILocation(line: 124, column: 20, scope: !281, inlinedAt: !236)
!299 = !DILocation(line: 124, column: 13, scope: !281, inlinedAt: !236)
!300 = !DILocation(line: 124, column: 67, scope: !281, inlinedAt: !236)
!301 = !DILocation(line: 127, column: 40, scope: !281, inlinedAt: !236)
!302 = !{!243, !243, i64 0}
!303 = !DILocation(line: 112, column: 71, scope: !263, inlinedAt: !236)
!304 = !DILocation(line: 150, column: 3, scope: !267, inlinedAt: !236)
!305 = !DILocation(line: 153, column: 5, scope: !306, inlinedAt: !236)
!306 = distinct !DILexicalBlock(scope: !268, file: !1, line: 152, column: 3)
!307 = !DILocation(line: 458, column: 32, scope: !308)
!308 = distinct !DILexicalBlock(scope: !233, file: !1, line: 458, column: 12)
!309 = !DILocation(line: 231, column: 36, scope: !179, inlinedAt: !310)
!310 = distinct !DILocation(line: 460, column: 14, scope: !311)
!311 = distinct !DILexicalBlock(scope: !308, file: !1, line: 459, column: 3)
!312 = !DILocation(line: 232, column: 36, scope: !179, inlinedAt: !310)
!313 = !DILocation(line: 233, column: 36, scope: !179, inlinedAt: !310)
!314 = !DILocation(line: 234, column: 36, scope: !179, inlinedAt: !310)
!315 = !DILocation(line: 235, column: 36, scope: !179, inlinedAt: !310)
!316 = !DILocation(line: 236, column: 36, scope: !179, inlinedAt: !310)
!317 = !DILocation(line: 237, column: 36, scope: !179, inlinedAt: !310)
!318 = !DILocation(line: 238, column: 36, scope: !179, inlinedAt: !310)
!319 = !DILocation(line: 239, column: 36, scope: !179, inlinedAt: !310)
!320 = !DILocation(line: 240, column: 36, scope: !179, inlinedAt: !310)
!321 = !DILocation(line: 245, column: 17, scope: !179, inlinedAt: !310)
!322 = !DILocation(line: 256, column: 14, scope: !179, inlinedAt: !310)
!323 = !DILocation(line: 244, column: 17, scope: !179, inlinedAt: !310)
!324 = !DILocation(line: 258, column: 13, scope: !325, inlinedAt: !310)
!325 = distinct !DILexicalBlock(scope: !179, file: !1, line: 258, column: 7)
!326 = !DILocation(line: 258, column: 7, scope: !179, inlinedAt: !310)
!327 = !DILocation(line: 262, column: 29, scope: !328, inlinedAt: !310)
!328 = distinct !DILexicalBlock(scope: !325, file: !1, line: 259, column: 3)
!329 = !DILocation(line: 262, column: 21, scope: !328, inlinedAt: !310)
!330 = !DILocation(line: 262, column: 13, scope: !328, inlinedAt: !310)
!331 = !DILocation(line: 251, column: 8, scope: !179, inlinedAt: !310)
!332 = !DILocation(line: 263, column: 22, scope: !328, inlinedAt: !310)
!333 = !DILocation(line: 263, column: 14, scope: !328, inlinedAt: !310)
!334 = !DILocation(line: 252, column: 8, scope: !179, inlinedAt: !310)
!335 = !DILocation(line: 264, column: 12, scope: !336, inlinedAt: !310)
!336 = distinct !DILexicalBlock(scope: !328, file: !1, line: 264, column: 9)
!337 = !DILocation(line: 264, column: 21, scope: !336, inlinedAt: !310)
!338 = !DILocation(line: 264, column: 18, scope: !336, inlinedAt: !310)
!339 = !DILocation(line: 266, column: 7, scope: !340, inlinedAt: !310)
!340 = distinct !DILexicalBlock(scope: !336, file: !1, line: 265, column: 5)
!341 = !DILocation(line: 267, column: 5, scope: !340, inlinedAt: !310)
!342 = !DILocation(line: 272, column: 20, scope: !343, inlinedAt: !310)
!343 = distinct !DILexicalBlock(scope: !344, file: !1, line: 272, column: 5)
!344 = distinct !DILexicalBlock(scope: !328, file: !1, line: 272, column: 5)
!345 = !DILocation(line: 272, column: 5, scope: !344, inlinedAt: !310)
!346 = !DILocation(line: 460, column: 14, scope: !311)
!347 = !DILocation(line: 274, column: 13, scope: !348, inlinedAt: !310)
!348 = distinct !DILexicalBlock(scope: !349, file: !1, line: 274, column: 11)
!349 = distinct !DILexicalBlock(scope: !343, file: !1, line: 273, column: 5)
!350 = !{!245, !245, i64 0}
!351 = !DILocation(line: 274, column: 23, scope: !348, inlinedAt: !310)
!352 = !DILocation(line: 274, column: 31, scope: !348, inlinedAt: !310)
!353 = !DILocation(line: 274, column: 26, scope: !348, inlinedAt: !310)
!354 = !DILocation(line: 274, column: 46, scope: !348, inlinedAt: !310)
!355 = !DILocation(line: 274, column: 45, scope: !348, inlinedAt: !310)
!356 = !DILocation(line: 274, column: 59, scope: !348, inlinedAt: !310)
!357 = !DILocation(line: 274, column: 41, scope: !348, inlinedAt: !310)
!358 = !DILocation(line: 274, column: 11, scope: !349, inlinedAt: !310)
!359 = !DILocation(line: 276, column: 19, scope: !360, inlinedAt: !310)
!360 = distinct !DILexicalBlock(scope: !348, file: !1, line: 275, column: 7)
!361 = !DILocation(line: 277, column: 7, scope: !360, inlinedAt: !310)
!362 = !DILocation(line: 280, column: 56, scope: !328, inlinedAt: !310)
!363 = !{!241, !245, i64 12}
!364 = !DILocation(line: 280, column: 20, scope: !328, inlinedAt: !310)
!365 = !DILocation(line: 248, column: 18, scope: !179, inlinedAt: !310)
!366 = !DILocation(line: 287, column: 41, scope: !328, inlinedAt: !310)
!367 = !DILocation(line: 288, column: 48, scope: !328, inlinedAt: !310)
!368 = !{!369, !242, i64 8}
!369 = !{!"PConnectivity", !245, i64 0, !242, i64 8, !242, i64 16, !242, i64 24}
!370 = !DILocation(line: 289, column: 41, scope: !328, inlinedAt: !310)
!371 = !{!241, !245, i64 16}
!372 = !DILocation(line: 282, column: 14, scope: !328, inlinedAt: !310)
!373 = !DILocation(line: 249, column: 18, scope: !179, inlinedAt: !310)
!374 = !DILocation(line: 291, column: 5, scope: !328, inlinedAt: !310)
!375 = !DILocation(line: 292, column: 5, scope: !328, inlinedAt: !310)
!376 = !DILocation(line: 293, column: 3, scope: !328, inlinedAt: !310)
!377 = !DILocation(line: 297, column: 43, scope: !378, inlinedAt: !310)
!378 = distinct !DILexicalBlock(scope: !325, file: !1, line: 295, column: 3)
!379 = !DILocation(line: 297, column: 20, scope: !378, inlinedAt: !310)
!380 = !DILocation(line: 297, column: 27, scope: !378, inlinedAt: !310)
!381 = !{!241, !242, i64 128}
!382 = !DILocation(line: 298, column: 21, scope: !378, inlinedAt: !310)
!383 = !{!241, !242, i64 120}
!384 = !DILocation(line: 298, column: 14, scope: !378, inlinedAt: !310)
!385 = !DILocation(line: 303, column: 13, scope: !386, inlinedAt: !310)
!386 = distinct !DILexicalBlock(scope: !179, file: !1, line: 303, column: 6)
!387 = !{!241, !245, i64 20}
!388 = !DILocation(line: 303, column: 23, scope: !386, inlinedAt: !310)
!389 = !DILocation(line: 307, column: 51, scope: !390, inlinedAt: !310)
!390 = distinct !DILexicalBlock(scope: !386, file: !1, line: 304, column: 3)
!391 = !DILocation(line: 303, column: 6, scope: !179, inlinedAt: !310)
!392 = !DILocation(line: 305, column: 17, scope: !390, inlinedAt: !310)
!393 = !DILocation(line: 250, column: 18, scope: !179, inlinedAt: !310)
!394 = !DILocation(line: 312, column: 3, scope: !390, inlinedAt: !310)
!395 = !DILocation(line: 318, column: 37, scope: !179, inlinedAt: !310)
!396 = !DILocation(line: 318, column: 56, scope: !179, inlinedAt: !310)
!397 = !DILocation(line: 318, column: 66, scope: !179, inlinedAt: !310)
!398 = !DILocation(line: 318, column: 48, scope: !179, inlinedAt: !310)
!399 = !DILocation(line: 318, column: 80, scope: !179, inlinedAt: !310)
!400 = !DILocation(line: 318, column: 21, scope: !179, inlinedAt: !310)
!401 = !DILocation(line: 321, column: 6, scope: !402, inlinedAt: !310)
!402 = distinct !DILexicalBlock(scope: !179, file: !1, line: 321, column: 6)
!403 = !DILocation(line: 321, column: 6, scope: !179, inlinedAt: !310)
!404 = !DILocation(line: 323, column: 22, scope: !405, inlinedAt: !310)
!405 = distinct !DILexicalBlock(scope: !402, file: !1, line: 322, column: 3)
!406 = !DILocation(line: 243, column: 17, scope: !179, inlinedAt: !310)
!407 = !DILocation(line: 325, column: 33, scope: !408, inlinedAt: !310)
!408 = distinct !DILexicalBlock(scope: !409, file: !1, line: 325, column: 5)
!409 = distinct !DILexicalBlock(scope: !405, file: !1, line: 325, column: 5)
!410 = !DILocation(line: 325, column: 5, scope: !409, inlinedAt: !310)
!411 = !DILocation(line: 327, column: 63, scope: !412, inlinedAt: !310)
!412 = distinct !DILexicalBlock(scope: !408, file: !1, line: 326, column: 5)
!413 = !DILocation(line: 327, column: 76, scope: !412, inlinedAt: !310)
!414 = !DILocation(line: 332, column: 31, scope: !415, inlinedAt: !310)
!415 = distinct !DILexicalBlock(scope: !416, file: !1, line: 332, column: 9)
!416 = distinct !DILexicalBlock(scope: !417, file: !1, line: 332, column: 9)
!417 = distinct !DILexicalBlock(scope: !418, file: !1, line: 331, column: 7)
!418 = distinct !DILexicalBlock(scope: !412, file: !1, line: 330, column: 11)
!419 = !DILocation(line: 335, column: 31, scope: !420, inlinedAt: !310)
!420 = distinct !DILexicalBlock(scope: !415, file: !1, line: 333, column: 9)
!421 = !DILocation(line: 341, column: 38, scope: !420, inlinedAt: !310)
!422 = !DILocation(line: 345, column: 31, scope: !420, inlinedAt: !310)
!423 = !DILocation(line: 327, column: 31, scope: !412, inlinedAt: !310)
!424 = !DILocation(line: 327, column: 55, scope: !412, inlinedAt: !310)
!425 = !DILocation(line: 327, column: 7, scope: !412, inlinedAt: !310)
!426 = !DILocation(line: 327, column: 43, scope: !412, inlinedAt: !310)
!427 = !DILocation(line: 330, column: 11, scope: !418, inlinedAt: !310)
!428 = !DILocation(line: 330, column: 11, scope: !412, inlinedAt: !310)
!429 = !DILocation(line: 332, column: 9, scope: !416, inlinedAt: !310)
!430 = !DILocation(line: 347, column: 40, scope: !420, inlinedAt: !310)
!431 = !DILocation(line: 339, column: 31, scope: !420, inlinedAt: !310)
!432 = !DILocation(line: 340, column: 38, scope: !420, inlinedAt: !310)
!433 = !{!241, !245, i64 28}
!434 = !DILocation(line: 347, column: 31, scope: !420, inlinedAt: !310)
!435 = !DILocation(line: 347, column: 80, scope: !420, inlinedAt: !310)
!436 = !DILocation(line: 347, column: 46, scope: !420, inlinedAt: !310)
!437 = !DILocation(line: 347, column: 53, scope: !420, inlinedAt: !310)
!438 = !DILocation(line: 335, column: 13, scope: !420, inlinedAt: !310)
!439 = !DILocation(line: 334, column: 35, scope: !420, inlinedAt: !310)
!440 = !DILocation(line: 334, column: 11, scope: !420, inlinedAt: !310)
!441 = !DILocation(line: 334, column: 18, scope: !420, inlinedAt: !310)
!442 = !DILocation(line: 334, column: 54, scope: !420, inlinedAt: !310)
!443 = !DILocation(line: 348, column: 25, scope: !420, inlinedAt: !310)
!444 = !DILocation(line: 350, column: 26, scope: !417, inlinedAt: !310)
!445 = !DILocation(line: 325, column: 56, scope: !408, inlinedAt: !310)
!446 = !DILocation(line: 327, column: 14, scope: !412, inlinedAt: !310)
!447 = !DILocation(line: 330, column: 18, scope: !418, inlinedAt: !310)
!448 = !DILocation(line: 366, column: 5, scope: !449, inlinedAt: !310)
!449 = distinct !DILexicalBlock(scope: !450, file: !1, line: 365, column: 3)
!450 = distinct !DILexicalBlock(scope: !179, file: !1, line: 364, column: 7)
!451 = !DILocation(line: 367, column: 3, scope: !449, inlinedAt: !310)
!452 = !DILocation(line: 465, column: 5, scope: !453)
!453 = distinct !DILexicalBlock(scope: !308, file: !1, line: 464, column: 3)
!454 = !DILocation(line: 452, column: 7, scope: !17)
!455 = !DILocation(line: 469, column: 3, scope: !17)
