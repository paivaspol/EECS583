; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/PUGH/Evolve.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.cGH = type { i32, i32, i32*, i32*, i32*, i32*, i32*, i32*, i32*, double, double*, double*, i32*, i32*, i32, i32*, double, i8***, i8**, %struct.cGHGroupData* }
%struct.cGHGroupData = type { i8, i8 }
%struct.anon.1 = type { double, double, i8*, i32, i32 }
%struct.tFleshConfig = type { i8*, %struct.cGH**, i32 }
%struct.PGH = type { i8*, i32, i32, i32, i32, i32, i32, i8***, i32, i32*, i32, i32, double, double, double, double, i32, i32, i32, i32, i32, %struct.PGExtras**, %struct.PConnectivity**, i8* }
%struct.PGExtras = type { i32, i32*, double, i32**, i32**, i32*, i32*, i32, i32*, i32**, i32*, i32*, i32*, [4 x [2 x i32*]], [4 x [2 x i32**]], [4 x [2 x i32**]] }
%struct.PConnectivity = type { i32, i32*, i32**, i32* }

@CCTK_MainLoopIndex = external global i32 ()*
@.str = private unnamed_addr constant [14 x i8] c"CCTK_ANALYSIS\00", align 1
@CCTK_OutputGH = external global i32 (%struct.cGH*)*
@CCTK_SetMainLoopIndex = external global i32 (i32)*
@.str1 = private unnamed_addr constant [16 x i8] c"CCTK_CHECKPOINT\00", align 1
@.str2 = private unnamed_addr constant [86 x i8] c"$Header: /cactus/CactusPUGH/PUGH/src/Evolve.c,v 1.16 2001/10/31 12:04:59 tradke Exp $\00", align 1
@cactusrest_ = external global %struct.anon.1
@.str3 = private unnamed_addr constant [6 x i8] c"never\00", align 1
@.str4 = private unnamed_addr constant [10 x i8] c"iteration\00", align 1
@.str5 = private unnamed_addr constant [7 x i8] c"either\00", align 1
@.str6 = private unnamed_addr constant [5 x i8] c"both\00", align 1
@.str7 = private unnamed_addr constant [13 x i8] c"CCTK_PRESTEP\00", align 1
@.str8 = private unnamed_addr constant [10 x i8] c"CCTK_EVOL\00", align 1
@.str9 = private unnamed_addr constant [14 x i8] c"CCTK_POSTSTEP\00", align 1

; Function Attrs: nounwind optsize readnone ssp uwtable
define i8* @CCTKi_version_CactusPUGH_PUGH_Evolve_c() #0 {
  ret i8* getelementptr inbounds ([86 x i8]* @.str2, i64 0, i64 0), !dbg !240
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @PUGH_Evolve(%struct.tFleshConfig* nocapture readonly %config) #1 {
  tail call void @llvm.dbg.value(metadata %struct.tFleshConfig* %config, i64 0, metadata !63, metadata !241), !dbg !242
  %1 = load i32 ()** @CCTK_MainLoopIndex, align 8, !dbg !243, !tbaa !244
  %2 = tail call i32 %1() #4, !dbg !243
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !65, metadata !241), !dbg !248
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !66, metadata !241), !dbg !249
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !64, metadata !241), !dbg !250
  %3 = getelementptr inbounds %struct.tFleshConfig* %config, i64 0, i32 2, !dbg !251
  %4 = load i32* %3, align 4, !dbg !251, !tbaa !254
  %5 = icmp eq i32 %4, 0, !dbg !251
  %.pre40 = getelementptr inbounds %struct.tFleshConfig* %config, i64 0, i32 1, !dbg !257
  br i1 %5, label %.preheader7, label %.lr.ph32, !dbg !258

.preheader7:                                      ; preds = %22, %0
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !85, metadata !241) #5, !dbg !259
  %6 = load i64* bitcast (i32* getelementptr inbounds (%struct.anon.1* @cactusrest_, i64 0, i32 3) to i64*), align 8, !dbg !261
  %7 = icmp ult i64 %6, 4294967296, !dbg !262
  br i1 %7, label %.lr.ph28, label %DoneMainLoop.exit.thread5, !dbg !263

.lr.ph32:                                         ; preds = %0, %22
  %8 = phi i32 [ %23, %22 ], [ %4, %0 ]
  %factor.030 = phi i32 [ %24, %22 ], [ 1, %0 ]
  %convergence_level.029 = phi i32 [ %25, %22 ], [ 0, %0 ]
  %9 = urem i32 %2, %factor.030, !dbg !264
  %10 = icmp eq i32 %9, 0, !dbg !264
  br i1 %10, label %11, label %22, !dbg !267

; <label>:11                                      ; preds = %.lr.ph32
  %12 = zext i32 %convergence_level.029 to i64, !dbg !268
  %13 = load %struct.cGH*** %.pre40, align 8, !dbg !271, !tbaa !272
  %14 = getelementptr inbounds %struct.cGH** %13, i64 %12, !dbg !268
  %15 = load %struct.cGH** %14, align 8, !dbg !268, !tbaa !244
  %16 = tail call i32 @CCTK_Traverse(%struct.cGH* %15, i8* getelementptr inbounds ([14 x i8]* @.str, i64 0, i64 0)) #4, !dbg !273
  %17 = load i32 (%struct.cGH*)** @CCTK_OutputGH, align 8, !dbg !274, !tbaa !244
  %18 = load %struct.cGH*** %.pre40, align 8, !dbg !275, !tbaa !272
  %19 = getelementptr inbounds %struct.cGH** %18, i64 %12, !dbg !276
  %20 = load %struct.cGH** %19, align 8, !dbg !276, !tbaa !244
  %21 = tail call i32 %17(%struct.cGH* %20) #4, !dbg !274
  %.pre = load i32* %3, align 4, !dbg !251, !tbaa !254
  br label %22, !dbg !277

; <label>:22                                      ; preds = %11, %.lr.ph32
  %23 = phi i32 [ %.pre, %11 ], [ %8, %.lr.ph32 ], !dbg !278
  %24 = shl nsw i32 %factor.030, 1, !dbg !278
  tail call void @llvm.dbg.value(metadata i32 %24, i64 0, metadata !66, metadata !241), !dbg !249
  %25 = add nuw i32 %convergence_level.029, 1, !dbg !251
  tail call void @llvm.dbg.value(metadata i32 %25, i64 0, metadata !64, metadata !241), !dbg !250
  %26 = icmp ult i32 %25, %23, !dbg !251
  br i1 %26, label %.lr.ph32, label %.preheader7, !dbg !258

.loopexit:                                        ; preds = %179, %DoneMainLoop.exit.thread._crit_edge, %.preheader6, %.preheader
  tail call void @llvm.dbg.value(metadata i32 %122, i64 0, metadata !85, metadata !241) #5, !dbg !259
  %27 = load i64* bitcast (i32* getelementptr inbounds (%struct.anon.1* @cactusrest_, i64 0, i32 3) to i64*), align 8, !dbg !261
  %28 = icmp ult i64 %27, 4294967296, !dbg !262
  br i1 %28, label %.lr.ph28, label %DoneMainLoop.exit.thread5, !dbg !263

.lr.ph28:                                         ; preds = %.preheader7, %.loopexit
  %.in = phi i64 [ %27, %.loopexit ], [ %6, %.preheader7 ]
  %iteration.025 = phi i32 [ %122, %.loopexit ], [ %2, %.preheader7 ]
  %.pn.in = load %struct.cGH*** %.pre40, align 8, !dbg !257
  %.pn = load %struct.cGH** %.pn.in, align 8, !dbg !279
  %.in34 = getelementptr inbounds %struct.cGH* %.pn, i64 0, i32 16, !dbg !280
  %29 = load double* %.in34, align 8, !dbg !280
  %30 = load i8** getelementptr inbounds (%struct.anon.1* @cactusrest_, i64 0, i32 2), align 8, !dbg !261
  %31 = load double* getelementptr inbounds (%struct.anon.1* @cactusrest_, i64 0, i32 1), align 8, !dbg !261
  %32 = load double* getelementptr inbounds (%struct.anon.1* @cactusrest_, i64 0, i32 0), align 8, !dbg !261
  %33 = trunc i64 %.in to i32, !dbg !261
  %34 = tail call i32 @CCTK_TerminationReached(%struct.cGH* %.pn) #4, !dbg !281
  %35 = icmp ne i32 %34, 0, !dbg !263
  %36 = zext i1 %35 to i32, !dbg !263
  tail call void @llvm.dbg.value(metadata i32 %36, i64 0, metadata !86, metadata !241) #5, !dbg !282
  br i1 %35, label %DoneMainLoop.exit, label %37, !dbg !283

; <label>:37                                      ; preds = %.lr.ph28
  %38 = tail call i32 @CCTK_Equals(i8* %30, i8* getelementptr inbounds ([6 x i8]* @.str3, i64 0, i64 0)) #4, !dbg !284
  %39 = icmp eq i32 %38, 0, !dbg !284
  br i1 %39, label %40, label %DoneMainLoop.exit.thread.preheader, !dbg !288

; <label>:40                                      ; preds = %37
  %41 = tail call i32 @CCTK_Equals(i8* %30, i8* getelementptr inbounds ([10 x i8]* @.str4, i64 0, i64 0)) #4, !dbg !289
  %42 = icmp eq i32 %41, 0, !dbg !289
  br i1 %42, label %46, label %43, !dbg !291

; <label>:43                                      ; preds = %40
  %44 = icmp sle i32 %33, %iteration.025, !dbg !292
  %45 = zext i1 %44 to i32, !dbg !292
  tail call void @llvm.dbg.value(metadata i32 %45, i64 0, metadata !86, metadata !241) #5, !dbg !282
  br label %DoneMainLoop.exit, !dbg !294

; <label>:46                                      ; preds = %40
  %47 = fcmp olt double %31, %32, !dbg !295
  br i1 %47, label %48, label %50, !dbg !298

; <label>:48                                      ; preds = %46
  %49 = fcmp ole double %32, %29, !dbg !299
  tail call void @llvm.dbg.value(metadata i32 %60, i64 0, metadata !86, metadata !241) #5, !dbg !282
  br label %52, !dbg !301

; <label>:50                                      ; preds = %46
  %51 = fcmp oge double %32, %29, !dbg !302
  br label %52, !dbg !304

; <label>:52                                      ; preds = %50, %48
  %.sink.i = phi i1 [ %49, %48 ], [ %51, %50 ], !dbg !304
  %53 = tail call i32 @CCTK_Equals(i8* %30, i8* getelementptr inbounds ([7 x i8]* @.str5, i64 0, i64 0)) #4, !dbg !305
  %54 = icmp eq i32 %53, 0, !dbg !305
  br i1 %54, label %59, label %55, !dbg !307

; <label>:55                                      ; preds = %52
  %56 = icmp sle i32 %33, %iteration.025, !dbg !308
  %57 = or i1 %56, %.sink.i, !dbg !310
  %58 = zext i1 %57 to i32, !dbg !310
  tail call void @llvm.dbg.value(metadata i32 %58, i64 0, metadata !86, metadata !241) #5, !dbg !282
  br label %DoneMainLoop.exit, !dbg !311

; <label>:59                                      ; preds = %52
  %60 = zext i1 %.sink.i to i32, !dbg !299
  %61 = tail call i32 @CCTK_Equals(i8* %30, i8* getelementptr inbounds ([5 x i8]* @.str6, i64 0, i64 0)) #4, !dbg !312
  %62 = icmp eq i32 %61, 0, !dbg !312
  br i1 %62, label %DoneMainLoop.exit, label %63, !dbg !314

; <label>:63                                      ; preds = %59
  %64 = icmp sle i32 %33, %iteration.025, !dbg !315
  %65 = and i1 %64, %.sink.i, !dbg !317
  %66 = zext i1 %65 to i32, !dbg !317
  tail call void @llvm.dbg.value(metadata i32 %66, i64 0, metadata !86, metadata !241) #5, !dbg !282
  br label %DoneMainLoop.exit, !dbg !318

DoneMainLoop.exit:                                ; preds = %.lr.ph28, %43, %55, %59, %63
  %retval.1.i = phi i32 [ %36, %.lr.ph28 ], [ %45, %43 ], [ %58, %55 ], [ %66, %63 ], [ %60, %59 ], !dbg !304
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !150, metadata !241) #5, !dbg !261
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !150, metadata !241) #5, !dbg !261
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !150, metadata !241) #5, !dbg !261
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !150, metadata !241) #5, !dbg !261
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !150, metadata !241) #5, !dbg !261
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !150, metadata !241) #5, !dbg !261
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !150, metadata !241) #5, !dbg !261
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !150, metadata !241) #5, !dbg !261
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !150, metadata !241) #5, !dbg !261
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !150, metadata !241) #5, !dbg !261
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !150, metadata !241) #5, !dbg !261
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !150, metadata !241) #5, !dbg !261
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !150, metadata !241) #5, !dbg !261
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !150, metadata !241) #5, !dbg !261
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !150, metadata !241) #5, !dbg !261
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !150, metadata !241) #5, !dbg !261
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !150, metadata !241) #5, !dbg !261
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !150, metadata !241) #5, !dbg !261
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !150, metadata !241) #5, !dbg !261
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !150, metadata !241) #5, !dbg !261
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !150, metadata !241) #5, !dbg !261
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !150, metadata !241) #5, !dbg !261
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !150, metadata !241) #5, !dbg !261
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !150, metadata !241) #5, !dbg !261
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !150, metadata !241) #5, !dbg !261
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !150, metadata !241) #5, !dbg !261
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !150, metadata !241) #5, !dbg !261
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !150, metadata !241) #5, !dbg !261
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !150, metadata !241) #5, !dbg !261
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !150, metadata !241) #5, !dbg !261
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !150, metadata !241) #5, !dbg !261
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !150, metadata !241) #5, !dbg !261
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !150, metadata !241) #5, !dbg !261
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !150, metadata !241) #5, !dbg !261
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !150, metadata !241) #5, !dbg !261
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !150, metadata !241) #5, !dbg !261
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !150, metadata !241) #5, !dbg !261
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !150, metadata !241) #5, !dbg !261
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !150, metadata !241) #5, !dbg !261
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !150, metadata !241) #5, !dbg !261
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !150, metadata !241) #5, !dbg !261
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !150, metadata !241) #5, !dbg !261
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !150, metadata !241) #5, !dbg !261
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !150, metadata !241) #5, !dbg !261
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !150, metadata !241) #5, !dbg !261
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !150, metadata !241) #5, !dbg !261
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !150, metadata !241) #5, !dbg !261
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !150, metadata !241) #5, !dbg !261
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !150, metadata !241) #5, !dbg !261
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !150, metadata !241) #5, !dbg !261
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !150, metadata !241) #5, !dbg !261
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !150, metadata !241) #5, !dbg !261
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !150, metadata !241) #5, !dbg !261
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !150, metadata !241) #5, !dbg !261
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !150, metadata !241) #5, !dbg !261
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !150, metadata !241) #5, !dbg !261
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !150, metadata !241) #5, !dbg !261
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !150, metadata !241) #5, !dbg !261
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !150, metadata !241) #5, !dbg !261
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !150, metadata !241) #5, !dbg !261
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !150, metadata !241) #5, !dbg !261
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !150, metadata !241) #5, !dbg !261
  %67 = icmp eq i32 %retval.1.i, 0, !dbg !319
  br i1 %67, label %DoneMainLoop.exit.thread.preheader, label %DoneMainLoop.exit.thread5, !dbg !320

DoneMainLoop.exit.thread.preheader:               ; preds = %DoneMainLoop.exit, %37
  %68 = load i32* %3, align 4, !dbg !321, !tbaa !254
  %69 = icmp eq i32 %68, 0, !dbg !321
  br i1 %69, label %DoneMainLoop.exit.thread._crit_edge, label %.lr.ph, !dbg !324

.lr.ph:                                           ; preds = %DoneMainLoop.exit.thread.preheader, %RotateTimeLevelsGH.exit
  %factor1.014 = phi i32 [ %116, %RotateTimeLevelsGH.exit ], [ 1, %DoneMainLoop.exit.thread.preheader ]
  %convergence_level.113 = phi i32 [ %117, %RotateTimeLevelsGH.exit ], [ 0, %DoneMainLoop.exit.thread.preheader ]
  %70 = urem i32 %iteration.025, %factor1.014, !dbg !325
  %71 = icmp eq i32 %70, 0, !dbg !325
  br i1 %71, label %72, label %RotateTimeLevelsGH.exit, !dbg !328

; <label>:72                                      ; preds = %.lr.ph
  %73 = zext i32 %convergence_level.113 to i64, !dbg !329
  %74 = load %struct.cGH*** %.pre40, align 8, !dbg !332, !tbaa !272
  %75 = getelementptr inbounds %struct.cGH** %74, i64 %73, !dbg !329
  %76 = load %struct.cGH** %75, align 8, !dbg !329, !tbaa !244
  tail call void @llvm.dbg.value(metadata %struct.cGH* %76, i64 0, metadata !162, metadata !241) #5, !dbg !333
  %77 = tail call %struct.PGH* @PUGH_pGH(%struct.cGH* %76) #4, !dbg !335
  tail call void @llvm.dbg.value(metadata %struct.PGH* %77, i64 0, metadata !167, metadata !241) #5, !dbg !336
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !163, metadata !241) #5, !dbg !337
  %78 = getelementptr inbounds %struct.PGH* %77, i64 0, i32 5, !dbg !338
  %79 = load i32* %78, align 4, !dbg !338, !tbaa !341
  %80 = icmp sgt i32 %79, 0, !dbg !344
  br i1 %80, label %.lr.ph4.i, label %RotateTimeLevelsGH.exit, !dbg !345

.lr.ph4.i:                                        ; preds = %72
  %81 = getelementptr inbounds %struct.PGH* %77, i64 0, i32 7, !dbg !346
  br label %82, !dbg !345

; <label>:82                                      ; preds = %112, %.lr.ph4.i
  %indvars.iv6.i = phi i64 [ 0, %.lr.ph4.i ], [ %indvars.iv.next7.i, %112 ], !dbg !350
  %83 = trunc i64 %indvars.iv6.i to i32, !dbg !351
  %84 = tail call i32 @CCTK_NumTimeLevelsFromVarI(i32 %83) #4, !dbg !351
  tail call void @llvm.dbg.value(metadata i32 %84, i64 0, metadata !164, metadata !241) #5, !dbg !352
  %85 = icmp sgt i32 %84, 1, !dbg !353
  br i1 %85, label %.lr.ph.i, label %112, !dbg !354

.lr.ph.i:                                         ; preds = %82
  %86 = add nsw i32 %84, -1, !dbg !355
  %87 = sext i32 %86 to i64, !dbg !356
  %88 = load i8**** %81, align 8, !dbg !346, !tbaa !357
  %89 = getelementptr inbounds i8*** %88, i64 %indvars.iv6.i, !dbg !356
  %90 = load i8*** %89, align 8, !dbg !356, !tbaa !244
  %91 = getelementptr inbounds i8** %90, i64 %87, !dbg !356
  %92 = bitcast i8** %91 to i64*, !dbg !356
  %93 = load i64* %92, align 8, !dbg !356, !tbaa !244
  tail call void @llvm.dbg.value(metadata i32 %86, i64 0, metadata !165, metadata !241) #5, !dbg !358
  %94 = sext i32 %84 to i64, !dbg !350
  %indvars.iv.i8 = add nsw i64 %94, -1, !dbg !359
  %95 = add nsw i32 %84, -2, !dbg !361
  %96 = sext i32 %95 to i64, !dbg !364
  %97 = getelementptr inbounds i8** %90, i64 %96, !dbg !364
  %98 = bitcast i8** %97 to i64*, !dbg !364
  %99 = load i64* %98, align 8, !dbg !364, !tbaa !244
  %100 = getelementptr inbounds i8** %90, i64 %indvars.iv.i8, !dbg !365
  %101 = bitcast i8** %100 to i64*, !dbg !366
  store i64 %99, i64* %101, align 8, !dbg !366, !tbaa !244
  tail call void @llvm.dbg.value(metadata i32 %95, i64 0, metadata !165, metadata !241) #5, !dbg !358
  %102 = icmp sgt i64 %indvars.iv.i8, 1, !dbg !367
  %.pre.i9 = load i8**** %81, align 8, !dbg !368, !tbaa !357
  %.phi.trans.insert.i10 = getelementptr inbounds i8*** %.pre.i9, i64 %indvars.iv6.i, !dbg !350
  br i1 %102, label %._crit_edge9.i, label %._crit_edge, !dbg !359

._crit_edge9.i:                                   ; preds = %.lr.ph.i, %._crit_edge9.i
  %.phi.trans.insert.i12 = phi i8*** [ %.phi.trans.insert.i, %._crit_edge9.i ], [ %.phi.trans.insert.i10, %.lr.ph.i ]
  %103 = phi i32 [ %104, %._crit_edge9.i ], [ %95, %.lr.ph.i ]
  %indvars.iv.i11 = phi i64 [ %indvars.iv.i, %._crit_edge9.i ], [ %indvars.iv.i8, %.lr.ph.i ]
  %.pre10.i = load i8*** %.phi.trans.insert.i12, align 8, !dbg !364, !tbaa !244
  %indvars.iv.i = add nsw i64 %indvars.iv.i11, -1, !dbg !359
  %104 = add nsw i32 %103, -1, !dbg !361
  %105 = sext i32 %104 to i64, !dbg !364
  %106 = getelementptr inbounds i8** %.pre10.i, i64 %105, !dbg !364
  %107 = bitcast i8** %106 to i64*, !dbg !364
  %108 = load i64* %107, align 8, !dbg !364, !tbaa !244
  %109 = getelementptr inbounds i8** %.pre10.i, i64 %indvars.iv.i, !dbg !365
  %110 = bitcast i8** %109 to i64*, !dbg !366
  store i64 %108, i64* %110, align 8, !dbg !366, !tbaa !244
  tail call void @llvm.dbg.value(metadata i32 %104, i64 0, metadata !165, metadata !241) #5, !dbg !358
  %111 = icmp sgt i64 %indvars.iv.i, 1, !dbg !367
  %.pre.i = load i8**** %81, align 8, !dbg !368, !tbaa !357
  %.phi.trans.insert.i = getelementptr inbounds i8*** %.pre.i, i64 %indvars.iv6.i, !dbg !350
  br i1 %111, label %._crit_edge9.i, label %._crit_edge, !dbg !359

._crit_edge:                                      ; preds = %._crit_edge9.i, %.lr.ph.i
  %.phi.trans.insert.i.lcssa = phi i8*** [ %.phi.trans.insert.i10, %.lr.ph.i ], [ %.phi.trans.insert.i, %._crit_edge9.i ]
  %.phi.trans.insert13.i = bitcast i8*** %.phi.trans.insert.i.lcssa to i64**, !dbg !350
  %.pre14.i = load i64** %.phi.trans.insert13.i, align 8, !dbg !369, !tbaa !244
  store i64 %93, i64* %.pre14.i, align 8, !dbg !370, !tbaa !244
  br label %112, !dbg !371

; <label>:112                                     ; preds = %._crit_edge, %82
  %indvars.iv.next7.i = add nuw nsw i64 %indvars.iv6.i, 1, !dbg !345
  %113 = load i32* %78, align 4, !dbg !338, !tbaa !341
  %114 = sext i32 %113 to i64, !dbg !344
  %115 = icmp slt i64 %indvars.iv.next7.i, %114, !dbg !344
  br i1 %115, label %82, label %RotateTimeLevelsGH.exit, !dbg !345

RotateTimeLevelsGH.exit:                          ; preds = %112, %72, %.lr.ph
  %116 = shl nsw i32 %factor1.014, 1, !dbg !372
  tail call void @llvm.dbg.value(metadata i32 %116, i64 0, metadata !68, metadata !241), !dbg !373
  %117 = add nuw i32 %convergence_level.113, 1, !dbg !321
  tail call void @llvm.dbg.value(metadata i32 %117, i64 0, metadata !64, metadata !241), !dbg !250
  %118 = load i32* %3, align 4, !dbg !321, !tbaa !254
  %119 = icmp ult i32 %117, %118, !dbg !321
  br i1 %119, label %.lr.ph, label %DoneMainLoop.exit.thread._crit_edge, !dbg !324

DoneMainLoop.exit.thread._crit_edge:              ; preds = %RotateTimeLevelsGH.exit, %DoneMainLoop.exit.thread.preheader
  %120 = load i32 (i32)** @CCTK_SetMainLoopIndex, align 8, !dbg !374, !tbaa !244
  %121 = add i32 %iteration.025, 1, !dbg !375
  tail call void @llvm.dbg.value(metadata i32 %121, i64 0, metadata !65, metadata !241), !dbg !248
  %122 = tail call i32 %120(i32 %121) #4, !dbg !374
  tail call void @llvm.dbg.value(metadata i32 %122, i64 0, metadata !65, metadata !241), !dbg !248
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !71, metadata !241), !dbg !376
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !64, metadata !241), !dbg !250
  %123 = load i32* %3, align 4, !dbg !377, !tbaa !254
  %124 = icmp eq i32 %123, 0, !dbg !377
  br i1 %124, label %.loopexit, label %.lr.ph18, !dbg !380

.preheader6:                                      ; preds = %145
  %125 = icmp eq i32 %146, 0, !dbg !381
  br i1 %125, label %.loopexit, label %.lr.ph21, !dbg !384

.lr.ph18:                                         ; preds = %DoneMainLoop.exit.thread._crit_edge, %145
  %126 = phi i32 [ %146, %145 ], [ %123, %DoneMainLoop.exit.thread._crit_edge ]
  %factor2.016 = phi i32 [ %147, %145 ], [ 1, %DoneMainLoop.exit.thread._crit_edge ]
  %convergence_level.215 = phi i32 [ %148, %145 ], [ 0, %DoneMainLoop.exit.thread._crit_edge ]
  %127 = urem i32 %122, %factor2.016, !dbg !385
  %128 = icmp eq i32 %127, 0, !dbg !385
  br i1 %128, label %129, label %145, !dbg !388

; <label>:129                                     ; preds = %.lr.ph18
  %130 = zext i32 %convergence_level.215 to i64, !dbg !389
  %131 = load %struct.cGH*** %.pre40, align 8, !dbg !392, !tbaa !272
  %132 = getelementptr inbounds %struct.cGH** %131, i64 %130, !dbg !389
  %133 = load %struct.cGH** %132, align 8, !dbg !389, !tbaa !244
  %134 = getelementptr inbounds %struct.cGH* %133, i64 0, i32 16, !dbg !393
  %135 = load double* %134, align 8, !dbg !393, !tbaa !395
  %136 = getelementptr inbounds %struct.cGH* %133, i64 0, i32 9, !dbg !397
  %137 = load double* %136, align 8, !dbg !397, !tbaa !398
  %138 = fadd double %135, %137, !dbg !399
  store double %138, double* %134, align 8, !dbg !400, !tbaa !395
  %139 = getelementptr inbounds %struct.cGH* %133, i64 0, i32 1, !dbg !401
  %140 = load i32* %139, align 4, !dbg !402, !tbaa !403
  %141 = add nsw i32 %140, 1, !dbg !402
  store i32 %141, i32* %139, align 4, !dbg !402, !tbaa !403
  %142 = tail call i32 @CCTK_Traverse(%struct.cGH* %133, i8* getelementptr inbounds ([13 x i8]* @.str7, i64 0, i64 0)) #4, !dbg !404
  %143 = tail call i32 @CCTK_Traverse(%struct.cGH* %133, i8* getelementptr inbounds ([10 x i8]* @.str8, i64 0, i64 0)) #4, !dbg !405
  %144 = tail call i32 @CCTK_Traverse(%struct.cGH* %133, i8* getelementptr inbounds ([14 x i8]* @.str9, i64 0, i64 0)) #4, !dbg !406
  %.pre36 = load i32* %3, align 4, !dbg !377, !tbaa !254
  br label %145, !dbg !407

; <label>:145                                     ; preds = %129, %.lr.ph18
  %146 = phi i32 [ %.pre36, %129 ], [ %126, %.lr.ph18 ], !dbg !408
  %147 = shl nsw i32 %factor2.016, 1, !dbg !408
  tail call void @llvm.dbg.value(metadata i32 %147, i64 0, metadata !71, metadata !241), !dbg !376
  %148 = add nuw i32 %convergence_level.215, 1, !dbg !377
  tail call void @llvm.dbg.value(metadata i32 %148, i64 0, metadata !64, metadata !241), !dbg !250
  %149 = icmp ult i32 %148, %146, !dbg !377
  br i1 %149, label %.lr.ph18, label %.preheader6, !dbg !380

.preheader:                                       ; preds = %160
  %150 = icmp eq i32 %161, 0, !dbg !409
  br i1 %150, label %.loopexit, label %.lr.ph24, !dbg !412

.lr.ph21:                                         ; preds = %.preheader6, %160
  %151 = phi i32 [ %161, %160 ], [ %146, %.preheader6 ]
  %factor3.020 = phi i32 [ %162, %160 ], [ 1, %.preheader6 ]
  %convergence_level.319 = phi i32 [ %163, %160 ], [ 0, %.preheader6 ]
  %152 = urem i32 %122, %factor3.020, !dbg !413
  %153 = icmp eq i32 %152, 0, !dbg !413
  br i1 %153, label %154, label %160, !dbg !416

; <label>:154                                     ; preds = %.lr.ph21
  %155 = zext i32 %convergence_level.319 to i64, !dbg !417
  %156 = load %struct.cGH*** %.pre40, align 8, !dbg !420, !tbaa !272
  %157 = getelementptr inbounds %struct.cGH** %156, i64 %155, !dbg !417
  %158 = load %struct.cGH** %157, align 8, !dbg !417, !tbaa !244
  %159 = tail call i32 @CCTK_Traverse(%struct.cGH* %158, i8* getelementptr inbounds ([16 x i8]* @.str1, i64 0, i64 0)) #4, !dbg !421
  %.pre37 = load i32* %3, align 4, !dbg !381, !tbaa !254
  br label %160, !dbg !422

; <label>:160                                     ; preds = %154, %.lr.ph21
  %161 = phi i32 [ %.pre37, %154 ], [ %151, %.lr.ph21 ], !dbg !423
  %162 = shl nsw i32 %factor3.020, 1, !dbg !423
  tail call void @llvm.dbg.value(metadata i32 %162, i64 0, metadata !73, metadata !241), !dbg !424
  %163 = add nuw i32 %convergence_level.319, 1, !dbg !381
  tail call void @llvm.dbg.value(metadata i32 %163, i64 0, metadata !64, metadata !241), !dbg !250
  %164 = icmp ult i32 %163, %161, !dbg !381
  br i1 %164, label %.lr.ph21, label %.preheader, !dbg !384

.lr.ph24:                                         ; preds = %.preheader, %179
  %165 = phi i32 [ %180, %179 ], [ %161, %.preheader ]
  %factor4.023 = phi i32 [ %181, %179 ], [ 1, %.preheader ]
  %convergence_level.422 = phi i32 [ %182, %179 ], [ 0, %.preheader ]
  %166 = urem i32 %122, %factor4.023, !dbg !425
  %167 = icmp eq i32 %166, 0, !dbg !425
  br i1 %167, label %168, label %179, !dbg !428

; <label>:168                                     ; preds = %.lr.ph24
  %169 = zext i32 %convergence_level.422 to i64, !dbg !429
  %170 = load %struct.cGH*** %.pre40, align 8, !dbg !432, !tbaa !272
  %171 = getelementptr inbounds %struct.cGH** %170, i64 %169, !dbg !429
  %172 = load %struct.cGH** %171, align 8, !dbg !429, !tbaa !244
  %173 = tail call i32 @CCTK_Traverse(%struct.cGH* %172, i8* getelementptr inbounds ([14 x i8]* @.str, i64 0, i64 0)) #4, !dbg !433
  %174 = load i32 (%struct.cGH*)** @CCTK_OutputGH, align 8, !dbg !434, !tbaa !244
  %175 = load %struct.cGH*** %.pre40, align 8, !dbg !435, !tbaa !272
  %176 = getelementptr inbounds %struct.cGH** %175, i64 %169, !dbg !436
  %177 = load %struct.cGH** %176, align 8, !dbg !436, !tbaa !244
  %178 = tail call i32 %174(%struct.cGH* %177) #4, !dbg !434
  %.pre38 = load i32* %3, align 4, !dbg !409, !tbaa !254
  br label %179, !dbg !437

; <label>:179                                     ; preds = %168, %.lr.ph24
  %180 = phi i32 [ %.pre38, %168 ], [ %165, %.lr.ph24 ], !dbg !438
  %181 = shl nsw i32 %factor4.023, 1, !dbg !438
  tail call void @llvm.dbg.value(metadata i32 %181, i64 0, metadata !75, metadata !241), !dbg !439
  %182 = add nuw i32 %convergence_level.422, 1, !dbg !409
  tail call void @llvm.dbg.value(metadata i32 %182, i64 0, metadata !64, metadata !241), !dbg !250
  %183 = icmp ult i32 %182, %180, !dbg !409
  br i1 %183, label %.lr.ph24, label %.loopexit, !dbg !412

DoneMainLoop.exit.thread5:                        ; preds = %DoneMainLoop.exit, %.loopexit, %.preheader7
  ret i32 0, !dbg !440
}

; Function Attrs: optsize
declare i32 @CCTK_Traverse(%struct.cGH*, i8*) #2

; Function Attrs: optsize
declare i32 @CCTK_TerminationReached(%struct.cGH*) #2

; Function Attrs: optsize
declare i32 @CCTK_Equals(i8*, i8*) #2

; Function Attrs: optsize
declare %struct.PGH* @PUGH_pGH(%struct.cGH*) #2

; Function Attrs: optsize
declare i32 @CCTK_NumTimeLevelsFromVarI(i32) #2

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #3

attributes #0 = { nounwind optsize readnone ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }
attributes #4 = { nounwind optsize }
attributes #5 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!236, !237, !238}
!llvm.ident = !{!239}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !2, subprograms: !3, globals: !234, imports: !2)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/PUGH/Evolve.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{}
!3 = !{!4, !10, !77, !153, !158}
!4 = !DISubprogram(name: "CCTKi_version_CactusPUGH_PUGH_Evolve_c", scope: !1, file: !1, line: 28, type: !5, isLocal: false, isDefinition: true, scopeLine: 28, flags: DIFlagPrototyped, isOptimized: true, function: i8* ()* @CCTKi_version_CactusPUGH_PUGH_Evolve_c, variables: !2)
!5 = !DISubroutineType(types: !6)
!6 = !{!7}
!7 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64, align: 64)
!8 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !9)
!9 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!10 = !DISubprogram(name: "PUGH_Evolve", scope: !1, file: !1, line: 74, type: !11, isLocal: false, isDefinition: true, scopeLine: 75, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.tFleshConfig*)* @PUGH_Evolve, variables: !62)
!11 = !DISubroutineType(types: !12)
!12 = !{!13, !14}
!13 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64, align: 64)
!15 = !DIDerivedType(tag: DW_TAG_typedef, name: "tFleshConfig", file: !16, line: 28, baseType: !17)
!16 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/PUGH/../include/cctk_Flesh.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!17 = !DICompositeType(tag: DW_TAG_structure_type, file: !16, line: 19, size: 192, align: 64, elements: !18)
!18 = !{!19, !21, !60}
!19 = !DIDerivedType(tag: DW_TAG_member, name: "parameter_file_name", scope: !17, file: !16, line: 21, baseType: !20, size: 64, align: 64)
!20 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64, align: 64)
!21 = !DIDerivedType(tag: DW_TAG_member, name: "GH", scope: !17, file: !16, line: 24, baseType: !22, size: 64, align: 64, offset: 64)
!22 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64, align: 64)
!23 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 64, align: 64)
!24 = !DIDerivedType(tag: DW_TAG_typedef, name: "cGH", file: !25, line: 75, baseType: !26)
!25 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/PUGH/../include/cGH.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!26 = !DICompositeType(tag: DW_TAG_structure_type, file: !25, line: 24, size: 1216, align: 64, elements: !27)
!27 = !{!28, !29, !30, !32, !33, !34, !35, !36, !37, !38, !40, !42, !43, !44, !45, !46, !47, !48, !52, !53}
!28 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_dim", scope: !26, file: !25, line: 26, baseType: !13, size: 32, align: 32)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_iteration", scope: !26, file: !25, line: 27, baseType: !13, size: 32, align: 32, offset: 32)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_gsh", scope: !26, file: !25, line: 30, baseType: !31, size: 64, align: 64, offset: 64)
!31 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64, align: 64)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_lsh", scope: !26, file: !25, line: 31, baseType: !31, size: 64, align: 64, offset: 128)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_lbnd", scope: !26, file: !25, line: 32, baseType: !31, size: 64, align: 64, offset: 192)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_ubnd", scope: !26, file: !25, line: 33, baseType: !31, size: 64, align: 64, offset: 256)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_lssh", scope: !26, file: !25, line: 36, baseType: !31, size: 64, align: 64, offset: 320)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_to", scope: !26, file: !25, line: 39, baseType: !31, size: 64, align: 64, offset: 384)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_from", scope: !26, file: !25, line: 40, baseType: !31, size: 64, align: 64, offset: 448)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_delta_time", scope: !26, file: !25, line: 43, baseType: !39, size: 64, align: 64, offset: 512)
!39 = !DIBasicType(name: "double", size: 64, align: 64, encoding: DW_ATE_float)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_delta_space", scope: !26, file: !25, line: 44, baseType: !41, size: 64, align: 64, offset: 576)
!41 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 64, align: 64)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_origin_space", scope: !26, file: !25, line: 47, baseType: !41, size: 64, align: 64, offset: 640)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_bbox", scope: !26, file: !25, line: 51, baseType: !31, size: 64, align: 64, offset: 704)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_levfac", scope: !26, file: !25, line: 54, baseType: !31, size: 64, align: 64, offset: 768)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_convlevel", scope: !26, file: !25, line: 57, baseType: !13, size: 32, align: 32, offset: 832)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_nghostzones", scope: !26, file: !25, line: 60, baseType: !31, size: 64, align: 64, offset: 896)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_time", scope: !26, file: !25, line: 63, baseType: !39, size: 64, align: 64, offset: 960)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !26, file: !25, line: 67, baseType: !49, size: 64, align: 64, offset: 1024)
!49 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64, align: 64)
!50 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !51, size: 64, align: 64)
!51 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "extensions", scope: !26, file: !25, line: 70, baseType: !50, size: 64, align: 64, offset: 1088)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "GroupData", scope: !26, file: !25, line: 73, baseType: !54, size: 64, align: 64, offset: 1152)
!54 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !55, size: 64, align: 64)
!55 = !DIDerivedType(tag: DW_TAG_typedef, name: "cGHGroupData", file: !25, line: 22, baseType: !56)
!56 = !DICompositeType(tag: DW_TAG_structure_type, file: !25, line: 18, size: 16, align: 8, elements: !57)
!57 = !{!58, !59}
!58 = !DIDerivedType(tag: DW_TAG_member, name: "storage", scope: !56, file: !25, line: 20, baseType: !9, size: 8, align: 8)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !56, file: !25, line: 21, baseType: !9, size: 8, align: 8, offset: 8)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "nGHs", scope: !17, file: !16, line: 25, baseType: !61, size: 32, align: 32, offset: 128)
!61 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!62 = !{!63, !64, !65, !66, !68, !71, !73, !75}
!63 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "config", arg: 1, scope: !10, file: !1, line: 74, type: !14)
!64 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "convergence_level", scope: !10, file: !1, line: 76, type: !61)
!65 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "iteration", scope: !10, file: !1, line: 77, type: !61)
!66 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "factor", scope: !67, file: !1, line: 82, type: !13)
!67 = distinct !DILexicalBlock(scope: !10, file: !1, line: 82, column: 3)
!68 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "factor", scope: !69, file: !1, line: 92, type: !13)
!69 = distinct !DILexicalBlock(scope: !70, file: !1, line: 92, column: 5)
!70 = distinct !DILexicalBlock(scope: !10, file: !1, line: 90, column: 3)
!71 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "factor", scope: !72, file: !1, line: 106, type: !13)
!72 = distinct !DILexicalBlock(scope: !70, file: !1, line: 106, column: 5)
!73 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "factor", scope: !74, file: !1, line: 117, type: !13)
!74 = distinct !DILexicalBlock(scope: !70, file: !1, line: 117, column: 5)
!75 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "factor", scope: !76, file: !1, line: 128, type: !13)
!76 = distinct !DILexicalBlock(scope: !70, file: !1, line: 128, column: 5)
!77 = !DISubprogram(name: "DoneMainLoop", scope: !1, file: !1, line: 178, type: !78, isLocal: true, isDefinition: true, scopeLine: 179, flags: DIFlagPrototyped, isOptimized: true, variables: !82)
!78 = !DISubroutineType(types: !79)
!79 = !{!13, !80, !39, !13}
!80 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !81, size: 64, align: 64)
!81 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !24)
!82 = !{!83, !84, !85, !86, !87, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !147, !148, !149, !150}
!83 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "GH", arg: 1, scope: !77, file: !1, line: 178, type: !80)
!84 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "time", arg: 2, scope: !77, file: !1, line: 178, type: !39)
!85 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "iteration", arg: 3, scope: !77, file: !1, line: 178, type: !13)
!86 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "retval", scope: !77, file: !1, line: 180, type: !13)
!87 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ghost_size", scope: !77, file: !1, line: 181, type: !88)
!88 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !13)
!89 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ghost_size_x", scope: !77, file: !1, line: 181, type: !88)
!90 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ghost_size_y", scope: !77, file: !1, line: 181, type: !88)
!91 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ghost_size_z", scope: !77, file: !1, line: 181, type: !88)
!92 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "global_nsize", scope: !77, file: !1, line: 181, type: !88)
!93 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "global_nx", scope: !77, file: !1, line: 181, type: !88)
!94 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "global_ny", scope: !77, file: !1, line: 181, type: !88)
!95 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "global_nz", scope: !77, file: !1, line: 181, type: !88)
!96 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "periodic", scope: !77, file: !1, line: 181, type: !88)
!97 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "periodic_x", scope: !77, file: !1, line: 181, type: !88)
!98 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "periodic_y", scope: !77, file: !1, line: 181, type: !88)
!99 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "periodic_z", scope: !77, file: !1, line: 181, type: !88)
!100 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "info", scope: !77, file: !1, line: 181, type: !7)
!101 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "initialize_memory", scope: !77, file: !1, line: 181, type: !7)
!102 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "partition", scope: !77, file: !1, line: 181, type: !7)
!103 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "partition_1d_x", scope: !77, file: !1, line: 181, type: !7)
!104 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "partition_2d_x", scope: !77, file: !1, line: 181, type: !7)
!105 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "partition_2d_y", scope: !77, file: !1, line: 181, type: !7)
!106 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "partition_3d_x", scope: !77, file: !1, line: 181, type: !7)
!107 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "partition_3d_y", scope: !77, file: !1, line: 181, type: !7)
!108 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "partition_3d_z", scope: !77, file: !1, line: 181, type: !7)
!109 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "processor_topology", scope: !77, file: !1, line: 181, type: !7)
!110 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "storage_verbose", scope: !77, file: !1, line: 181, type: !7)
!111 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cacheline_mult", scope: !77, file: !1, line: 181, type: !88)
!112 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "enable_all_storage", scope: !77, file: !1, line: 181, type: !88)
!113 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "local_nsize", scope: !77, file: !1, line: 181, type: !88)
!114 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "local_nx", scope: !77, file: !1, line: 181, type: !88)
!115 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "local_ny", scope: !77, file: !1, line: 181, type: !88)
!116 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "local_nz", scope: !77, file: !1, line: 181, type: !88)
!117 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "overloadabort", scope: !77, file: !1, line: 181, type: !88)
!118 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "overloadarraygroupsizeb", scope: !77, file: !1, line: 181, type: !88)
!119 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "overloadbarrier", scope: !77, file: !1, line: 181, type: !88)
!120 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "overloaddisablegroupcomm", scope: !77, file: !1, line: 181, type: !88)
!121 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "overloaddisablegroupstorage", scope: !77, file: !1, line: 181, type: !88)
!122 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "overloadenablegroupcomm", scope: !77, file: !1, line: 181, type: !88)
!123 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "overloadenablegroupstorage", scope: !77, file: !1, line: 181, type: !88)
!124 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "overloadevolve", scope: !77, file: !1, line: 181, type: !88)
!125 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "overloadexit", scope: !77, file: !1, line: 181, type: !88)
!126 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "overloadgroupdynamicdata", scope: !77, file: !1, line: 181, type: !88)
!127 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "overloadmyproc", scope: !77, file: !1, line: 181, type: !88)
!128 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "overloadnprocs", scope: !77, file: !1, line: 181, type: !88)
!129 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "overloadparallelinit", scope: !77, file: !1, line: 181, type: !88)
!130 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "overloadquerygroupstorageb", scope: !77, file: !1, line: 181, type: !88)
!131 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "overloadsyncgroup", scope: !77, file: !1, line: 181, type: !88)
!132 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "padding_active", scope: !77, file: !1, line: 181, type: !88)
!133 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "padding_address_spacing", scope: !77, file: !1, line: 181, type: !88)
!134 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "padding_cacheline_bits", scope: !77, file: !1, line: 181, type: !88)
!135 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "padding_size", scope: !77, file: !1, line: 181, type: !88)
!136 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "processor_topology_1d_x", scope: !77, file: !1, line: 181, type: !88)
!137 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "processor_topology_2d_x", scope: !77, file: !1, line: 181, type: !88)
!138 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "processor_topology_2d_y", scope: !77, file: !1, line: 181, type: !88)
!139 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "processor_topology_3d_x", scope: !77, file: !1, line: 181, type: !88)
!140 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "processor_topology_3d_y", scope: !77, file: !1, line: 181, type: !88)
!141 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "processor_topology_3d_z", scope: !77, file: !1, line: 181, type: !88)
!142 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "storage_report_every", scope: !77, file: !1, line: 181, type: !88)
!143 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "timer_output", scope: !77, file: !1, line: 181, type: !88)
!144 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "terminate", scope: !77, file: !1, line: 181, type: !7)
!145 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cctk_initial_time", scope: !77, file: !1, line: 181, type: !146)
!146 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !39)
!147 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cctk_final_time", scope: !77, file: !1, line: 181, type: !146)
!148 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cctk_itlast", scope: !77, file: !1, line: 181, type: !88)
!149 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "terminate_next", scope: !77, file: !1, line: 181, type: !88)
!150 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cctk_pdummy_pointer", scope: !77, file: !1, line: 181, type: !151)
!151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !152, size: 64, align: 64)
!152 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!153 = !DISubprogram(name: "StepGH", scope: !1, file: !1, line: 234, type: !154, isLocal: true, isDefinition: true, scopeLine: 235, flags: DIFlagPrototyped, isOptimized: true, variables: !156)
!154 = !DISubroutineType(types: !155)
!155 = !{!13, !23}
!156 = !{!157}
!157 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "GH", arg: 1, scope: !153, file: !1, line: 234, type: !23)
!158 = !DISubprogram(name: "RotateTimeLevelsGH", scope: !1, file: !1, line: 263, type: !159, isLocal: true, isDefinition: true, scopeLine: 264, flags: DIFlagPrototyped, isOptimized: true, variables: !161)
!159 = !DISubroutineType(types: !160)
!160 = !{null, !23}
!161 = !{!162, !163, !164, !165, !166, !167}
!162 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "cgh", arg: 1, scope: !158, file: !1, line: 263, type: !23)
!163 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "var", scope: !158, file: !1, line: 265, type: !13)
!164 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "numtimelevels", scope: !158, file: !1, line: 266, type: !13)
!165 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !158, file: !1, line: 267, type: !13)
!166 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "temp", scope: !158, file: !1, line: 268, type: !51)
!167 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "pughGH", scope: !158, file: !1, line: 269, type: !168)
!168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !169, size: 64, align: 64)
!169 = !DIDerivedType(tag: DW_TAG_typedef, name: "pGH", file: !170, line: 81, baseType: !171)
!170 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/PUGH/../include/pGH.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!171 = !DICompositeType(tag: DW_TAG_structure_type, name: "PGH", file: !170, line: 13, size: 1152, align: 64, elements: !172)
!172 = !{!173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !223, !233}
!173 = !DIDerivedType(tag: DW_TAG_member, name: "callerid", scope: !171, file: !170, line: 17, baseType: !51, size: 64, align: 64)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "dim", scope: !171, file: !170, line: 18, baseType: !13, size: 32, align: 32, offset: 64)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "nprocs", scope: !171, file: !170, line: 21, baseType: !13, size: 32, align: 32, offset: 96)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "myproc", scope: !171, file: !170, line: 22, baseType: !13, size: 32, align: 32, offset: 128)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "commmodel", scope: !171, file: !170, line: 23, baseType: !13, size: 32, align: 32, offset: 160)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "nvariables", scope: !171, file: !170, line: 27, baseType: !13, size: 32, align: 32, offset: 192)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "narrays", scope: !171, file: !170, line: 28, baseType: !13, size: 32, align: 32, offset: 224)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "variables", scope: !171, file: !170, line: 29, baseType: !49, size: 64, align: 64, offset: 256)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "timelevel", scope: !171, file: !170, line: 32, baseType: !13, size: 32, align: 32, offset: 320)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "perme", scope: !171, file: !170, line: 34, baseType: !31, size: 64, align: 64, offset: 384)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "periodic", scope: !171, file: !170, line: 35, baseType: !13, size: 32, align: 32, offset: 448)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "forceSync", scope: !171, file: !170, line: 37, baseType: !13, size: 32, align: 32, offset: 480)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "dx0", scope: !171, file: !170, line: 41, baseType: !39, size: 64, align: 64, offset: 512)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "dy0", scope: !171, file: !170, line: 41, baseType: !39, size: 64, align: 64, offset: 576)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "dz0", scope: !171, file: !170, line: 41, baseType: !39, size: 64, align: 64, offset: 640)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "dt0", scope: !171, file: !170, line: 41, baseType: !39, size: 64, align: 64, offset: 704)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !171, file: !170, line: 44, baseType: !13, size: 32, align: 32, offset: 768)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "mglevel", scope: !171, file: !170, line: 45, baseType: !13, size: 32, align: 32, offset: 800)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "convlevel", scope: !171, file: !170, line: 46, baseType: !13, size: 32, align: 32, offset: 832)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !171, file: !170, line: 49, baseType: !13, size: 32, align: 32, offset: 864)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "comm_time", scope: !171, file: !170, line: 53, baseType: !13, size: 32, align: 32, offset: 896)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "GFExtras", scope: !171, file: !170, line: 76, baseType: !195, size: 64, align: 64, offset: 960)
!195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !196, size: 64, align: 64)
!196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !197, size: 64, align: 64)
!197 = !DIDerivedType(tag: DW_TAG_typedef, name: "pGExtras", file: !198, line: 72, baseType: !199)
!198 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/PUGH/../include/pGV.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!199 = !DICompositeType(tag: DW_TAG_structure_type, name: "PGExtras", file: !198, line: 37, size: 2368, align: 64, elements: !200)
!200 = !{!201, !202, !203, !204, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !220, !222}
!201 = !DIDerivedType(tag: DW_TAG_member, name: "dim", scope: !199, file: !198, line: 39, baseType: !13, size: 32, align: 32)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "nsize", scope: !199, file: !198, line: 41, baseType: !31, size: 64, align: 64, offset: 64)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "maxskew", scope: !199, file: !198, line: 44, baseType: !39, size: 64, align: 64, offset: 128)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "lb", scope: !199, file: !198, line: 45, baseType: !205, size: 64, align: 64, offset: 192)
!205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 64, align: 64)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "ub", scope: !199, file: !198, line: 46, baseType: !205, size: 64, align: 64, offset: 256)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "bbox", scope: !199, file: !198, line: 47, baseType: !31, size: 64, align: 64, offset: 320)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "lnsize", scope: !199, file: !198, line: 49, baseType: !31, size: 64, align: 64, offset: 384)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "npoints", scope: !199, file: !198, line: 50, baseType: !13, size: 32, align: 32, offset: 448)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "rnpoints", scope: !199, file: !198, line: 51, baseType: !31, size: 64, align: 64, offset: 512)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "rnsize", scope: !199, file: !198, line: 52, baseType: !205, size: 64, align: 64, offset: 576)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "iterator", scope: !199, file: !198, line: 55, baseType: !31, size: 64, align: 64, offset: 640)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "hyper_volume", scope: !199, file: !198, line: 56, baseType: !31, size: 64, align: 64, offset: 704)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "nghostzones", scope: !199, file: !198, line: 59, baseType: !31, size: 64, align: 64, offset: 768)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "ownership", scope: !199, file: !198, line: 60, baseType: !216, size: 512, align: 64, offset: 832)
!216 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 512, align: 64, elements: !217)
!217 = !{!218, !219}
!218 = !DISubrange(count: 4)
!219 = !DISubrange(count: 2)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "ghosts", scope: !199, file: !198, line: 64, baseType: !221, size: 512, align: 64, offset: 1344)
!221 = !DICompositeType(tag: DW_TAG_array_type, baseType: !205, size: 512, align: 64, elements: !217)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "overlap", scope: !199, file: !198, line: 68, baseType: !221, size: 512, align: 64, offset: 1856)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "Connectivity", scope: !171, file: !170, line: 77, baseType: !224, size: 64, align: 64, offset: 1024)
!224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !225, size: 64, align: 64)
!225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !226, size: 64, align: 64)
!226 = !DIDerivedType(tag: DW_TAG_typedef, name: "pConnectivity", file: !198, line: 29, baseType: !227)
!227 = !DICompositeType(tag: DW_TAG_structure_type, name: "PConnectivity", file: !198, line: 23, size: 256, align: 64, elements: !228)
!228 = !{!229, !230, !231, !232}
!229 = !DIDerivedType(tag: DW_TAG_member, name: "dim", scope: !227, file: !198, line: 25, baseType: !13, size: 32, align: 32)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "nprocs", scope: !227, file: !198, line: 26, baseType: !31, size: 64, align: 64, offset: 64)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "neighbours", scope: !227, file: !198, line: 27, baseType: !205, size: 64, align: 64, offset: 128)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "perme", scope: !227, file: !198, line: 28, baseType: !31, size: 64, align: 64, offset: 192)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "identity_string", scope: !171, file: !170, line: 79, baseType: !20, size: 64, align: 64, offset: 1088)
!234 = !{!235}
!235 = !DIGlobalVariable(name: "rcsid", scope: !0, file: !1, line: 26, type: !7, isLocal: true, isDefinition: true)
!236 = !{i32 2, !"Dwarf Version", i32 2}
!237 = !{i32 2, !"Debug Info Version", i32 700000003}
!238 = !{i32 1, !"PIC Level", i32 2}
!239 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!240 = !DILocation(line: 28, column: 1, scope: !4)
!241 = !DIExpression()
!242 = !DILocation(line: 74, column: 31, scope: !10)
!243 = !DILocation(line: 77, column: 26, scope: !10)
!244 = !{!245, !245, i64 0}
!245 = !{!"any pointer", !246, i64 0}
!246 = !{!"omnipotent char", !247, i64 0}
!247 = !{!"Simple C/C++ TBAA"}
!248 = !DILocation(line: 77, column: 16, scope: !10)
!249 = !DILocation(line: 82, column: 3, scope: !67)
!250 = !DILocation(line: 76, column: 16, scope: !10)
!251 = !DILocation(line: 82, column: 3, scope: !252)
!252 = distinct !DILexicalBlock(scope: !253, file: !1, line: 82, column: 3)
!253 = distinct !DILexicalBlock(scope: !67, file: !1, line: 82, column: 3)
!254 = !{!255, !256, i64 16}
!255 = !{!"", !245, i64 0, !245, i64 8, !256, i64 16}
!256 = !{!"int", !246, i64 0}
!257 = !DILocation(line: 89, column: 34, scope: !10)
!258 = !DILocation(line: 82, column: 3, scope: !253)
!259 = !DILocation(line: 178, column: 61, scope: !77, inlinedAt: !260)
!260 = distinct !DILocation(line: 89, column: 12, scope: !10)
!261 = !DILocation(line: 181, column: 3, scope: !77, inlinedAt: !260)
!262 = !DILocation(line: 184, column: 12, scope: !77, inlinedAt: !260)
!263 = !DILocation(line: 184, column: 27, scope: !77, inlinedAt: !260)
!264 = !DILocation(line: 82, column: 3, scope: !265)
!265 = distinct !DILexicalBlock(scope: !266, file: !1, line: 82, column: 3)
!266 = distinct !DILexicalBlock(scope: !252, file: !1, line: 82, column: 3)
!267 = !DILocation(line: 82, column: 3, scope: !266)
!268 = !DILocation(line: 84, column: 21, scope: !269)
!269 = distinct !DILexicalBlock(scope: !270, file: !1, line: 83, column: 3)
!270 = distinct !DILexicalBlock(scope: !265, file: !1, line: 82, column: 3)
!271 = !DILocation(line: 84, column: 29, scope: !269)
!272 = !{!255, !245, i64 8}
!273 = !DILocation(line: 84, column: 7, scope: !269)
!274 = !DILocation(line: 85, column: 7, scope: !269)
!275 = !DILocation(line: 85, column: 29, scope: !269)
!276 = !DILocation(line: 85, column: 21, scope: !269)
!277 = !DILocation(line: 87, column: 3, scope: !270)
!278 = !DILocation(line: 87, column: 3, scope: !266)
!279 = !DILocation(line: 89, column: 26, scope: !10)
!280 = !DILocation(line: 89, column: 55, scope: !10)
!281 = !DILocation(line: 184, column: 30, scope: !77, inlinedAt: !260)
!282 = !DILocation(line: 180, column: 7, scope: !77, inlinedAt: !260)
!283 = !DILocation(line: 185, column: 7, scope: !77, inlinedAt: !260)
!284 = !DILocation(line: 187, column: 9, scope: !285, inlinedAt: !260)
!285 = distinct !DILexicalBlock(scope: !286, file: !1, line: 187, column: 9)
!286 = distinct !DILexicalBlock(scope: !287, file: !1, line: 186, column: 3)
!287 = distinct !DILexicalBlock(scope: !77, file: !1, line: 185, column: 7)
!288 = !DILocation(line: 187, column: 9, scope: !286, inlinedAt: !260)
!289 = !DILocation(line: 191, column: 14, scope: !290, inlinedAt: !260)
!290 = distinct !DILexicalBlock(scope: !285, file: !1, line: 191, column: 14)
!291 = !DILocation(line: 191, column: 14, scope: !285, inlinedAt: !260)
!292 = !DILocation(line: 193, column: 26, scope: !293, inlinedAt: !260)
!293 = distinct !DILexicalBlock(scope: !290, file: !1, line: 192, column: 5)
!294 = !DILocation(line: 194, column: 5, scope: !293, inlinedAt: !260)
!295 = !DILocation(line: 197, column: 29, scope: !296, inlinedAt: !260)
!296 = distinct !DILexicalBlock(scope: !297, file: !1, line: 197, column: 11)
!297 = distinct !DILexicalBlock(scope: !290, file: !1, line: 196, column: 5)
!298 = !DILocation(line: 197, column: 11, scope: !297, inlinedAt: !260)
!299 = !DILocation(line: 199, column: 23, scope: !300, inlinedAt: !260)
!300 = distinct !DILexicalBlock(scope: !296, file: !1, line: 198, column: 7)
!301 = !DILocation(line: 200, column: 7, scope: !300, inlinedAt: !260)
!302 = !DILocation(line: 203, column: 23, scope: !303, inlinedAt: !260)
!303 = distinct !DILexicalBlock(scope: !296, file: !1, line: 202, column: 7)
!304 = !DILocation(line: 89, column: 12, scope: !10)
!305 = !DILocation(line: 206, column: 11, scope: !306, inlinedAt: !260)
!306 = distinct !DILexicalBlock(scope: !297, file: !1, line: 206, column: 11)
!307 = !DILocation(line: 206, column: 11, scope: !297, inlinedAt: !260)
!308 = !DILocation(line: 208, column: 29, scope: !309, inlinedAt: !260)
!309 = distinct !DILexicalBlock(scope: !306, file: !1, line: 207, column: 7)
!310 = !DILocation(line: 208, column: 16, scope: !309, inlinedAt: !260)
!311 = !DILocation(line: 209, column: 7, scope: !309, inlinedAt: !260)
!312 = !DILocation(line: 210, column: 16, scope: !313, inlinedAt: !260)
!313 = distinct !DILexicalBlock(scope: !306, file: !1, line: 210, column: 16)
!314 = !DILocation(line: 210, column: 16, scope: !306, inlinedAt: !260)
!315 = !DILocation(line: 212, column: 29, scope: !316, inlinedAt: !260)
!316 = distinct !DILexicalBlock(scope: !313, file: !1, line: 211, column: 7)
!317 = !DILocation(line: 212, column: 16, scope: !316, inlinedAt: !260)
!318 = !DILocation(line: 213, column: 7, scope: !316, inlinedAt: !260)
!319 = !DILocation(line: 89, column: 10, scope: !10)
!320 = !DILocation(line: 89, column: 3, scope: !10)
!321 = !DILocation(line: 92, column: 5, scope: !322)
!322 = distinct !DILexicalBlock(scope: !323, file: !1, line: 92, column: 5)
!323 = distinct !DILexicalBlock(scope: !69, file: !1, line: 92, column: 5)
!324 = !DILocation(line: 92, column: 5, scope: !323)
!325 = !DILocation(line: 92, column: 5, scope: !326)
!326 = distinct !DILexicalBlock(scope: !327, file: !1, line: 92, column: 5)
!327 = distinct !DILexicalBlock(scope: !322, file: !1, line: 92, column: 5)
!328 = !DILocation(line: 92, column: 5, scope: !327)
!329 = !DILocation(line: 95, column: 26, scope: !330)
!330 = distinct !DILexicalBlock(scope: !331, file: !1, line: 93, column: 5)
!331 = distinct !DILexicalBlock(scope: !326, file: !1, line: 92, column: 5)
!332 = !DILocation(line: 95, column: 34, scope: !330)
!333 = !DILocation(line: 263, column: 37, scope: !158, inlinedAt: !334)
!334 = distinct !DILocation(line: 95, column: 7, scope: !330)
!335 = !DILocation(line: 271, column: 12, scope: !158, inlinedAt: !334)
!336 = !DILocation(line: 269, column: 8, scope: !158, inlinedAt: !334)
!337 = !DILocation(line: 265, column: 7, scope: !158, inlinedAt: !334)
!338 = !DILocation(line: 273, column: 30, scope: !339, inlinedAt: !334)
!339 = distinct !DILexicalBlock(scope: !340, file: !1, line: 273, column: 3)
!340 = distinct !DILexicalBlock(scope: !158, file: !1, line: 273, column: 3)
!341 = !{!342, !256, i64 24}
!342 = !{!"PGH", !245, i64 0, !256, i64 8, !256, i64 12, !256, i64 16, !256, i64 20, !256, i64 24, !256, i64 28, !245, i64 32, !256, i64 40, !245, i64 48, !256, i64 56, !256, i64 60, !343, i64 64, !343, i64 72, !343, i64 80, !343, i64 88, !256, i64 96, !256, i64 100, !256, i64 104, !256, i64 108, !256, i64 112, !245, i64 120, !245, i64 128, !245, i64 136}
!343 = !{!"double", !246, i64 0}
!344 = !DILocation(line: 273, column: 20, scope: !339, inlinedAt: !334)
!345 = !DILocation(line: 273, column: 3, scope: !340, inlinedAt: !334)
!346 = !DILocation(line: 278, column: 20, scope: !347, inlinedAt: !334)
!347 = distinct !DILexicalBlock(scope: !348, file: !1, line: 277, column: 5)
!348 = distinct !DILexicalBlock(scope: !349, file: !1, line: 276, column: 8)
!349 = distinct !DILexicalBlock(scope: !339, file: !1, line: 274, column: 3)
!350 = !DILocation(line: 95, column: 7, scope: !330)
!351 = !DILocation(line: 275, column: 21, scope: !349, inlinedAt: !334)
!352 = !DILocation(line: 266, column: 7, scope: !158, inlinedAt: !334)
!353 = !DILocation(line: 276, column: 21, scope: !348, inlinedAt: !334)
!354 = !DILocation(line: 276, column: 8, scope: !349, inlinedAt: !334)
!355 = !DILocation(line: 278, column: 48, scope: !347, inlinedAt: !334)
!356 = !DILocation(line: 278, column: 12, scope: !347, inlinedAt: !334)
!357 = !{!342, !245, i64 32}
!358 = !DILocation(line: 267, column: 7, scope: !158, inlinedAt: !334)
!359 = !DILocation(line: 280, column: 7, scope: !360, inlinedAt: !334)
!360 = distinct !DILexicalBlock(scope: !347, file: !1, line: 280, column: 7)
!361 = !DILocation(line: 282, column: 59, scope: !362, inlinedAt: !334)
!362 = distinct !DILexicalBlock(scope: !363, file: !1, line: 281, column: 7)
!363 = distinct !DILexicalBlock(scope: !360, file: !1, line: 280, column: 7)
!364 = !DILocation(line: 282, column: 35, scope: !362, inlinedAt: !334)
!365 = !DILocation(line: 282, column: 9, scope: !362, inlinedAt: !334)
!366 = !DILocation(line: 282, column: 34, scope: !362, inlinedAt: !334)
!367 = !DILocation(line: 280, column: 33, scope: !363, inlinedAt: !334)
!368 = !DILocation(line: 282, column: 43, scope: !362, inlinedAt: !334)
!369 = !DILocation(line: 285, column: 7, scope: !347, inlinedAt: !334)
!370 = !DILocation(line: 285, column: 32, scope: !347, inlinedAt: !334)
!371 = !DILocation(line: 286, column: 5, scope: !347, inlinedAt: !334)
!372 = !DILocation(line: 100, column: 5, scope: !327)
!373 = !DILocation(line: 92, column: 5, scope: !69)
!374 = !DILocation(line: 102, column: 17, scope: !70)
!375 = !DILocation(line: 102, column: 39, scope: !70)
!376 = !DILocation(line: 106, column: 5, scope: !72)
!377 = !DILocation(line: 106, column: 5, scope: !378)
!378 = distinct !DILexicalBlock(scope: !379, file: !1, line: 106, column: 5)
!379 = distinct !DILexicalBlock(scope: !72, file: !1, line: 106, column: 5)
!380 = !DILocation(line: 106, column: 5, scope: !379)
!381 = !DILocation(line: 117, column: 5, scope: !382)
!382 = distinct !DILexicalBlock(scope: !383, file: !1, line: 117, column: 5)
!383 = distinct !DILexicalBlock(scope: !74, file: !1, line: 117, column: 5)
!384 = !DILocation(line: 117, column: 5, scope: !383)
!385 = !DILocation(line: 106, column: 5, scope: !386)
!386 = distinct !DILexicalBlock(scope: !387, file: !1, line: 106, column: 5)
!387 = distinct !DILexicalBlock(scope: !378, file: !1, line: 106, column: 5)
!388 = !DILocation(line: 106, column: 5, scope: !387)
!389 = !DILocation(line: 109, column: 14, scope: !390)
!390 = distinct !DILexicalBlock(scope: !391, file: !1, line: 107, column: 5)
!391 = distinct !DILexicalBlock(scope: !386, file: !1, line: 106, column: 5)
!392 = !DILocation(line: 109, column: 22, scope: !390)
!393 = !DILocation(line: 238, column: 23, scope: !153, inlinedAt: !394)
!394 = distinct !DILocation(line: 109, column: 7, scope: !390)
!395 = !{!396, !343, i64 120}
!396 = !{!"", !256, i64 0, !256, i64 4, !245, i64 8, !245, i64 16, !245, i64 24, !245, i64 32, !245, i64 40, !245, i64 48, !245, i64 56, !343, i64 64, !245, i64 72, !245, i64 80, !245, i64 88, !245, i64 96, !256, i64 104, !245, i64 112, !343, i64 120, !245, i64 128, !245, i64 136, !245, i64 144}
!397 = !DILocation(line: 238, column: 39, scope: !153, inlinedAt: !394)
!398 = !{!396, !343, i64 64}
!399 = !DILocation(line: 238, column: 33, scope: !153, inlinedAt: !394)
!400 = !DILocation(line: 238, column: 17, scope: !153, inlinedAt: !394)
!401 = !DILocation(line: 239, column: 7, scope: !153, inlinedAt: !394)
!402 = !DILocation(line: 239, column: 21, scope: !153, inlinedAt: !394)
!403 = !{!396, !256, i64 4}
!404 = !DILocation(line: 241, column: 3, scope: !153, inlinedAt: !394)
!405 = !DILocation(line: 242, column: 3, scope: !153, inlinedAt: !394)
!406 = !DILocation(line: 243, column: 3, scope: !153, inlinedAt: !394)
!407 = !DILocation(line: 114, column: 5, scope: !391)
!408 = !DILocation(line: 114, column: 5, scope: !387)
!409 = !DILocation(line: 128, column: 5, scope: !410)
!410 = distinct !DILexicalBlock(scope: !411, file: !1, line: 128, column: 5)
!411 = distinct !DILexicalBlock(scope: !76, file: !1, line: 128, column: 5)
!412 = !DILocation(line: 128, column: 5, scope: !411)
!413 = !DILocation(line: 117, column: 5, scope: !414)
!414 = distinct !DILexicalBlock(scope: !415, file: !1, line: 117, column: 5)
!415 = distinct !DILexicalBlock(scope: !382, file: !1, line: 117, column: 5)
!416 = !DILocation(line: 117, column: 5, scope: !415)
!417 = !DILocation(line: 119, column: 21, scope: !418)
!418 = distinct !DILexicalBlock(scope: !419, file: !1, line: 118, column: 5)
!419 = distinct !DILexicalBlock(scope: !414, file: !1, line: 117, column: 5)
!420 = !DILocation(line: 119, column: 29, scope: !418)
!421 = !DILocation(line: 119, column: 7, scope: !418)
!422 = !DILocation(line: 121, column: 5, scope: !419)
!423 = !DILocation(line: 121, column: 5, scope: !415)
!424 = !DILocation(line: 117, column: 5, scope: !74)
!425 = !DILocation(line: 128, column: 5, scope: !426)
!426 = distinct !DILexicalBlock(scope: !427, file: !1, line: 128, column: 5)
!427 = distinct !DILexicalBlock(scope: !410, file: !1, line: 128, column: 5)
!428 = !DILocation(line: 128, column: 5, scope: !427)
!429 = !DILocation(line: 130, column: 23, scope: !430)
!430 = distinct !DILexicalBlock(scope: !431, file: !1, line: 129, column: 5)
!431 = distinct !DILexicalBlock(scope: !426, file: !1, line: 128, column: 5)
!432 = !DILocation(line: 130, column: 31, scope: !430)
!433 = !DILocation(line: 130, column: 9, scope: !430)
!434 = !DILocation(line: 131, column: 9, scope: !430)
!435 = !DILocation(line: 131, column: 31, scope: !430)
!436 = !DILocation(line: 131, column: 23, scope: !430)
!437 = !DILocation(line: 133, column: 5, scope: !431)
!438 = !DILocation(line: 133, column: 5, scope: !427)
!439 = !DILocation(line: 128, column: 5, scope: !76)
!440 = !DILocation(line: 142, column: 3, scope: !10)
