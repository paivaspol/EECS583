; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/Einstein/LapseInits.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.anon = type { double, double, double, double, double, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32 }
%struct.cGH = type { i32, i32, i32*, i32*, i32*, i32*, i32*, i32*, i32*, double, double*, double*, i32*, i32*, i32, i32*, double, i8***, i8**, %struct.cGHGroupData* }
%struct.cGHGroupData = type { i8, i8 }

@.str = private unnamed_addr constant [15 x i8] c"Einstein::detg\00", align 1
@.str1 = private unnamed_addr constant [14 x i8] c"Einstein::gpp\00", align 1
@.str2 = private unnamed_addr constant [14 x i8] c"Einstein::gqp\00", align 1
@.str3 = private unnamed_addr constant [14 x i8] c"Einstein::gqq\00", align 1
@.str4 = private unnamed_addr constant [14 x i8] c"Einstein::grp\00", align 1
@.str5 = private unnamed_addr constant [14 x i8] c"Einstein::grq\00", align 1
@.str6 = private unnamed_addr constant [14 x i8] c"Einstein::grr\00", align 1
@.str7 = private unnamed_addr constant [14 x i8] c"Einstein::kpp\00", align 1
@.str8 = private unnamed_addr constant [14 x i8] c"Einstein::kqp\00", align 1
@.str9 = private unnamed_addr constant [14 x i8] c"Einstein::kqq\00", align 1
@.str10 = private unnamed_addr constant [14 x i8] c"Einstein::krp\00", align 1
@.str11 = private unnamed_addr constant [14 x i8] c"Einstein::krq\00", align 1
@.str12 = private unnamed_addr constant [14 x i8] c"Einstein::krr\00", align 1
@.str13 = private unnamed_addr constant [14 x i8] c"Einstein::trK\00", align 1
@.str14 = private unnamed_addr constant [32 x i8] c"einstein::active_slicing_handle\00", align 1
@.str15 = private unnamed_addr constant [14 x i8] c"einstein::alp\00", align 1
@.str16 = private unnamed_addr constant [16 x i8] c"einstein::betax\00", align 1
@.str17 = private unnamed_addr constant [16 x i8] c"einstein::betay\00", align 1
@.str18 = private unnamed_addr constant [16 x i8] c"einstein::betaz\00", align 1
@.str19 = private unnamed_addr constant [16 x i8] c"GRID::coarse_dx\00", align 1
@.str20 = private unnamed_addr constant [16 x i8] c"GRID::coarse_dy\00", align 1
@.str21 = private unnamed_addr constant [16 x i8] c"GRID::coarse_dz\00", align 1
@.str22 = private unnamed_addr constant [26 x i8] c"einstein::conformal_state\00", align 1
@.str23 = private unnamed_addr constant [23 x i8] c"TIME::courant_min_time\00", align 1
@.str24 = private unnamed_addr constant [25 x i8] c"TIME::courant_wave_speed\00", align 1
@.str25 = private unnamed_addr constant [16 x i8] c"einstein::emask\00", align 1
@.str26 = private unnamed_addr constant [14 x i8] c"einstein::gxx\00", align 1
@.str27 = private unnamed_addr constant [14 x i8] c"einstein::gxy\00", align 1
@.str28 = private unnamed_addr constant [14 x i8] c"einstein::gxz\00", align 1
@.str29 = private unnamed_addr constant [14 x i8] c"einstein::gyy\00", align 1
@.str30 = private unnamed_addr constant [14 x i8] c"einstein::gyz\00", align 1
@.str31 = private unnamed_addr constant [14 x i8] c"einstein::gzz\00", align 1
@.str32 = private unnamed_addr constant [14 x i8] c"einstein::kxx\00", align 1
@.str33 = private unnamed_addr constant [14 x i8] c"einstein::kxy\00", align 1
@.str34 = private unnamed_addr constant [14 x i8] c"einstein::kxz\00", align 1
@.str35 = private unnamed_addr constant [14 x i8] c"einstein::kyy\00", align 1
@.str36 = private unnamed_addr constant [14 x i8] c"einstein::kyz\00", align 1
@.str37 = private unnamed_addr constant [14 x i8] c"einstein::kzz\00", align 1
@.str38 = private unnamed_addr constant [14 x i8] c"einstein::psi\00", align 1
@.str39 = private unnamed_addr constant [15 x i8] c"einstein::psix\00", align 1
@.str40 = private unnamed_addr constant [16 x i8] c"einstein::psixx\00", align 1
@.str41 = private unnamed_addr constant [16 x i8] c"einstein::psixy\00", align 1
@.str42 = private unnamed_addr constant [16 x i8] c"einstein::psixz\00", align 1
@.str43 = private unnamed_addr constant [15 x i8] c"einstein::psiy\00", align 1
@.str44 = private unnamed_addr constant [16 x i8] c"einstein::psiyy\00", align 1
@.str45 = private unnamed_addr constant [16 x i8] c"einstein::psiyz\00", align 1
@.str46 = private unnamed_addr constant [15 x i8] c"einstein::psiz\00", align 1
@.str47 = private unnamed_addr constant [16 x i8] c"einstein::psizz\00", align 1
@.str48 = private unnamed_addr constant [8 x i8] c"GRID::r\00", align 1
@.str49 = private unnamed_addr constant [22 x i8] c"einstein::shift_state\00", align 1
@.str50 = private unnamed_addr constant [8 x i8] c"GRID::x\00", align 1
@.str51 = private unnamed_addr constant [8 x i8] c"GRID::y\00", align 1
@.str52 = private unnamed_addr constant [8 x i8] c"GRID::z\00", align 1
@einsteinrest_ = external global %struct.anon
@.str53 = private unnamed_addr constant [97 x i8] c"$Header: /cactus/CactusEinstein/Einstein/src/LapseInits.c,v 1.12 2002/01/04 10:18:17 allen Exp $\00", align 1
@.memset_pattern = internal unnamed_addr constant [2 x double] [double 1.000000e+00, double 1.000000e+00], align 16

; Function Attrs: nounwind optsize readnone ssp uwtable
define i8* @CCTKi_version_CactusEinstein_Einstein_LapseInits_c() #0 {
  ret i8* getelementptr inbounds ([97 x i8]* @.str53, i64 0, i64 0), !dbg !473
}

; Function Attrs: nounwind optsize ssp uwtable
define void @LapseOne(%struct.cGH* nocapture readonly %cctkGH) #1 {
  tail call void @llvm.dbg.value(metadata %struct.cGH* %cctkGH, i64 0, metadata !53, metadata !474), !dbg !475
  %1 = getelementptr inbounds %struct.cGH* %cctkGH, i64 0, i32 3, !dbg !476
  %2 = load i32** %1, align 8, !dbg !476, !tbaa !477
  tail call void @llvm.dbg.value(metadata i32* %2, i64 0, metadata !56, metadata !474), !dbg !476
  %3 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([15 x i8]* @.str, i64 0, i64 0)) #5, !dbg !476
  %4 = getelementptr inbounds %struct.cGH* %cctkGH, i64 0, i32 17, !dbg !476
  %5 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str1, i64 0, i64 0)) #5, !dbg !476
  %6 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str2, i64 0, i64 0)) #5, !dbg !476
  %7 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str3, i64 0, i64 0)) #5, !dbg !476
  %8 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str4, i64 0, i64 0)) #5, !dbg !476
  %9 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str5, i64 0, i64 0)) #5, !dbg !476
  %10 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str6, i64 0, i64 0)) #5, !dbg !476
  %11 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str7, i64 0, i64 0)) #5, !dbg !476
  %12 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str8, i64 0, i64 0)) #5, !dbg !476
  %13 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str9, i64 0, i64 0)) #5, !dbg !476
  %14 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str10, i64 0, i64 0)) #5, !dbg !476
  %15 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str11, i64 0, i64 0)) #5, !dbg !476
  %16 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str12, i64 0, i64 0)) #5, !dbg !476
  %17 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str13, i64 0, i64 0)) #5, !dbg !476
  %18 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([32 x i8]* @.str14, i64 0, i64 0)) #5, !dbg !476
  %19 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str15, i64 0, i64 0)) #5, !dbg !476
  %20 = sext i32 %19 to i64, !dbg !476
  %21 = load i8**** %4, align 8, !dbg !476, !tbaa !484
  %22 = getelementptr inbounds i8*** %21, i64 %20, !dbg !476
  %23 = bitcast i8*** %22 to double***, !dbg !476
  %24 = load double*** %23, align 8, !dbg !476, !tbaa !485
  %25 = load double** %24, align 8, !dbg !476, !tbaa !485
  tail call void @llvm.dbg.value(metadata double* %25, i64 0, metadata !89, metadata !474), !dbg !476
  %26 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([16 x i8]* @.str16, i64 0, i64 0)) #5, !dbg !476
  %27 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([16 x i8]* @.str17, i64 0, i64 0)) #5, !dbg !476
  %28 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([16 x i8]* @.str18, i64 0, i64 0)) #5, !dbg !476
  %29 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([16 x i8]* @.str19, i64 0, i64 0)) #5, !dbg !476
  %30 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([16 x i8]* @.str20, i64 0, i64 0)) #5, !dbg !476
  %31 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([16 x i8]* @.str21, i64 0, i64 0)) #5, !dbg !476
  %32 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([26 x i8]* @.str22, i64 0, i64 0)) #5, !dbg !476
  %33 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([23 x i8]* @.str23, i64 0, i64 0)) #5, !dbg !476
  %34 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([25 x i8]* @.str24, i64 0, i64 0)) #5, !dbg !476
  %35 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([16 x i8]* @.str25, i64 0, i64 0)) #5, !dbg !476
  %36 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str26, i64 0, i64 0)) #5, !dbg !476
  %37 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str27, i64 0, i64 0)) #5, !dbg !476
  %38 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str28, i64 0, i64 0)) #5, !dbg !476
  %39 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str29, i64 0, i64 0)) #5, !dbg !476
  %40 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str30, i64 0, i64 0)) #5, !dbg !476
  %41 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str31, i64 0, i64 0)) #5, !dbg !476
  %42 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str32, i64 0, i64 0)) #5, !dbg !476
  %43 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str33, i64 0, i64 0)) #5, !dbg !476
  %44 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str34, i64 0, i64 0)) #5, !dbg !476
  %45 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str35, i64 0, i64 0)) #5, !dbg !476
  %46 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str36, i64 0, i64 0)) #5, !dbg !476
  %47 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str37, i64 0, i64 0)) #5, !dbg !476
  %48 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str38, i64 0, i64 0)) #5, !dbg !476
  %49 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([15 x i8]* @.str39, i64 0, i64 0)) #5, !dbg !476
  %50 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([16 x i8]* @.str40, i64 0, i64 0)) #5, !dbg !476
  %51 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([16 x i8]* @.str41, i64 0, i64 0)) #5, !dbg !476
  %52 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([16 x i8]* @.str42, i64 0, i64 0)) #5, !dbg !476
  %53 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([15 x i8]* @.str43, i64 0, i64 0)) #5, !dbg !476
  %54 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([16 x i8]* @.str44, i64 0, i64 0)) #5, !dbg !476
  %55 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([16 x i8]* @.str45, i64 0, i64 0)) #5, !dbg !476
  %56 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([15 x i8]* @.str46, i64 0, i64 0)) #5, !dbg !476
  %57 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([16 x i8]* @.str47, i64 0, i64 0)) #5, !dbg !476
  %58 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([8 x i8]* @.str48, i64 0, i64 0)) #5, !dbg !476
  %59 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([22 x i8]* @.str49, i64 0, i64 0)) #5, !dbg !476
  %60 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([8 x i8]* @.str50, i64 0, i64 0)) #5, !dbg !476
  %61 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([8 x i8]* @.str51, i64 0, i64 0)) #5, !dbg !476
  %62 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([8 x i8]* @.str52, i64 0, i64 0)) #5, !dbg !476
  %63 = load i32* %2, align 4, !dbg !486, !tbaa !487
  tail call void @llvm.dbg.value(metadata i32 %63, i64 0, metadata !131, metadata !474), !dbg !488
  %64 = getelementptr inbounds i32* %2, i64 1, !dbg !489
  %65 = load i32* %64, align 4, !dbg !489, !tbaa !487
  tail call void @llvm.dbg.value(metadata i32 %65, i64 0, metadata !132, metadata !474), !dbg !490
  %66 = getelementptr inbounds i32* %2, i64 2, !dbg !491
  %67 = load i32* %66, align 4, !dbg !491, !tbaa !487
  tail call void @llvm.dbg.value(metadata i32 %67, i64 0, metadata !133, metadata !474), !dbg !492
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !130, metadata !474), !dbg !493
  %68 = icmp sgt i32 %67, 0, !dbg !494
  br i1 %68, label %.preheader1.lr.ph, label %._crit_edge7, !dbg !497

.preheader1.lr.ph:                                ; preds = %0
  %69 = icmp sgt i32 %65, 0, !dbg !498
  %70 = icmp sgt i32 %63, 0, !dbg !502
  %71 = add i32 %63, -1, !dbg !497
  %72 = zext i32 %71 to i64
  %73 = shl nuw nsw i64 %72, 3, !dbg !497
  %74 = add nuw nsw i64 %73, 8, !dbg !497
  %75 = add i32 %65, -1, !dbg !497
  %76 = add i32 %67, -1, !dbg !497
  br label %.preheader1, !dbg !497

.preheader1:                                      ; preds = %._crit_edge4, %.preheader1.lr.ph
  %k.05 = phi i32 [ 0, %.preheader1.lr.ph ], [ %87, %._crit_edge4 ]
  br i1 %69, label %.preheader, label %._crit_edge4, !dbg !506

.preheader:                                       ; preds = %.preheader1, %85
  %j.03 = phi i32 [ %86, %85 ], [ 0, %.preheader1 ]
  br i1 %70, label %.lr.ph, label %85, !dbg !507

.lr.ph:                                           ; preds = %.preheader
  %77 = load i32** %1, align 8, !dbg !508, !tbaa !477
  %78 = load i32* %77, align 4, !dbg !508, !tbaa !487
  %79 = getelementptr inbounds i32* %77, i64 1, !dbg !508
  %80 = load i32* %79, align 4, !dbg !508, !tbaa !487
  %81 = mul i32 %k.05, %80, !dbg !507
  %82 = add i32 %j.03, %81, !dbg !507
  %83 = mul i32 %78, %82, !dbg !507
  %84 = sext i32 %83 to i64
  %scevgep = getelementptr double* %25, i64 %84
  %scevgep8 = bitcast double* %scevgep to i8*
  call void @memset_pattern16(i8* %scevgep8, i8* bitcast ([2 x double]* @.memset_pattern to i8*), i64 %74) #6, !dbg !510
  br label %85, !dbg !507

; <label>:85                                      ; preds = %.lr.ph, %.preheader
  %86 = add nuw nsw i32 %j.03, 1, !dbg !511
  tail call void @llvm.dbg.value(metadata i32 %86, i64 0, metadata !129, metadata !474), !dbg !512
  %exitcond = icmp eq i32 %j.03, %75, !dbg !506
  br i1 %exitcond, label %._crit_edge4, label %.preheader, !dbg !506

._crit_edge4:                                     ; preds = %85, %.preheader1
  %87 = add nuw nsw i32 %k.05, 1, !dbg !513
  tail call void @llvm.dbg.value(metadata i32 %87, i64 0, metadata !130, metadata !474), !dbg !493
  %exitcond9 = icmp eq i32 %k.05, %76, !dbg !497
  br i1 %exitcond9, label %._crit_edge7, label %.preheader1, !dbg !497

._crit_edge7:                                     ; preds = %._crit_edge4, %0
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !71, metadata !474), !dbg !476
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !71, metadata !474), !dbg !476
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !71, metadata !474), !dbg !476
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !71, metadata !474), !dbg !476
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !71, metadata !474), !dbg !476
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !71, metadata !474), !dbg !476
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !71, metadata !474), !dbg !476
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !71, metadata !474), !dbg !476
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !71, metadata !474), !dbg !476
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !71, metadata !474), !dbg !476
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !71, metadata !474), !dbg !476
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !71, metadata !474), !dbg !476
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !71, metadata !474), !dbg !476
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !71, metadata !474), !dbg !476
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !71, metadata !474), !dbg !476
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !71, metadata !474), !dbg !476
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !71, metadata !474), !dbg !476
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !71, metadata !474), !dbg !476
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !71, metadata !474), !dbg !476
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !71, metadata !474), !dbg !476
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !71, metadata !474), !dbg !476
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !71, metadata !474), !dbg !476
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !71, metadata !474), !dbg !476
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !71, metadata !474), !dbg !476
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !71, metadata !474), !dbg !476
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !71, metadata !474), !dbg !476
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !71, metadata !474), !dbg !476
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !71, metadata !474), !dbg !476
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !71, metadata !474), !dbg !476
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !71, metadata !474), !dbg !476
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !71, metadata !474), !dbg !476
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !71, metadata !474), !dbg !476
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !71, metadata !474), !dbg !476
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !71, metadata !474), !dbg !476
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !71, metadata !474), !dbg !476
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !71, metadata !474), !dbg !476
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !71, metadata !474), !dbg !476
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !71, metadata !474), !dbg !476
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !71, metadata !474), !dbg !476
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !71, metadata !474), !dbg !476
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !71, metadata !474), !dbg !476
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !71, metadata !474), !dbg !476
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !71, metadata !474), !dbg !476
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !71, metadata !474), !dbg !476
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !71, metadata !474), !dbg !476
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !71, metadata !474), !dbg !476
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !71, metadata !474), !dbg !476
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !71, metadata !474), !dbg !476
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !71, metadata !474), !dbg !476
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !71, metadata !474), !dbg !476
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !71, metadata !474), !dbg !476
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !71, metadata !474), !dbg !476
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !71, metadata !474), !dbg !476
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !71, metadata !474), !dbg !476
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !71, metadata !474), !dbg !476
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !71, metadata !474), !dbg !476
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !71, metadata !474), !dbg !476
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !71, metadata !474), !dbg !476
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !71, metadata !474), !dbg !476
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !71, metadata !474), !dbg !476
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !71, metadata !474), !dbg !476
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !71, metadata !474), !dbg !476
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !71, metadata !474), !dbg !476
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !71, metadata !474), !dbg !476
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !71, metadata !474), !dbg !476
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !71, metadata !474), !dbg !476
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !71, metadata !474), !dbg !476
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !71, metadata !474), !dbg !476
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !71, metadata !474), !dbg !476
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !71, metadata !474), !dbg !476
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !71, metadata !474), !dbg !476
  ret void, !dbg !514
}

; Function Attrs: optsize
declare i32 @CCTK_VarIndex(i8*) #2

; Function Attrs: nounwind optsize ssp uwtable
define void @LapseGaussian(%struct.cGH* nocapture readonly %cctkGH) #1 {
  tail call void @llvm.dbg.value(metadata %struct.cGH* %cctkGH, i64 0, metadata !136, metadata !474), !dbg !515
  %1 = getelementptr inbounds %struct.cGH* %cctkGH, i64 0, i32 3, !dbg !516
  %2 = load i32** %1, align 8, !dbg !516, !tbaa !477
  tail call void @llvm.dbg.value(metadata i32* %2, i64 0, metadata !139, metadata !474), !dbg !516
  %3 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([15 x i8]* @.str, i64 0, i64 0)) #5, !dbg !516
  %4 = getelementptr inbounds %struct.cGH* %cctkGH, i64 0, i32 17, !dbg !516
  %5 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str1, i64 0, i64 0)) #5, !dbg !516
  %6 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str2, i64 0, i64 0)) #5, !dbg !516
  %7 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str3, i64 0, i64 0)) #5, !dbg !516
  %8 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str4, i64 0, i64 0)) #5, !dbg !516
  %9 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str5, i64 0, i64 0)) #5, !dbg !516
  %10 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str6, i64 0, i64 0)) #5, !dbg !516
  %11 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str7, i64 0, i64 0)) #5, !dbg !516
  %12 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str8, i64 0, i64 0)) #5, !dbg !516
  %13 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str9, i64 0, i64 0)) #5, !dbg !516
  %14 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str10, i64 0, i64 0)) #5, !dbg !516
  %15 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str11, i64 0, i64 0)) #5, !dbg !516
  %16 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str12, i64 0, i64 0)) #5, !dbg !516
  %17 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str13, i64 0, i64 0)) #5, !dbg !516
  %18 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([32 x i8]* @.str14, i64 0, i64 0)) #5, !dbg !516
  %19 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str15, i64 0, i64 0)) #5, !dbg !516
  %20 = sext i32 %19 to i64, !dbg !516
  %21 = load i8**** %4, align 8, !dbg !516, !tbaa !484
  %22 = getelementptr inbounds i8*** %21, i64 %20, !dbg !516
  %23 = bitcast i8*** %22 to double***, !dbg !516
  %24 = load double*** %23, align 8, !dbg !516, !tbaa !485
  %25 = load double** %24, align 8, !dbg !516, !tbaa !485
  tail call void @llvm.dbg.value(metadata double* %25, i64 0, metadata !170, metadata !474), !dbg !516
  %26 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([16 x i8]* @.str16, i64 0, i64 0)) #5, !dbg !516
  %27 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([16 x i8]* @.str17, i64 0, i64 0)) #5, !dbg !516
  %28 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([16 x i8]* @.str18, i64 0, i64 0)) #5, !dbg !516
  %29 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([16 x i8]* @.str19, i64 0, i64 0)) #5, !dbg !516
  %30 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([16 x i8]* @.str20, i64 0, i64 0)) #5, !dbg !516
  %31 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([16 x i8]* @.str21, i64 0, i64 0)) #5, !dbg !516
  %32 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([26 x i8]* @.str22, i64 0, i64 0)) #5, !dbg !516
  %33 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([23 x i8]* @.str23, i64 0, i64 0)) #5, !dbg !516
  %34 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([25 x i8]* @.str24, i64 0, i64 0)) #5, !dbg !516
  %35 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([16 x i8]* @.str25, i64 0, i64 0)) #5, !dbg !516
  %36 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str26, i64 0, i64 0)) #5, !dbg !516
  %37 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str27, i64 0, i64 0)) #5, !dbg !516
  %38 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str28, i64 0, i64 0)) #5, !dbg !516
  %39 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str29, i64 0, i64 0)) #5, !dbg !516
  %40 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str30, i64 0, i64 0)) #5, !dbg !516
  %41 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str31, i64 0, i64 0)) #5, !dbg !516
  %42 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str32, i64 0, i64 0)) #5, !dbg !516
  %43 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str33, i64 0, i64 0)) #5, !dbg !516
  %44 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str34, i64 0, i64 0)) #5, !dbg !516
  %45 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str35, i64 0, i64 0)) #5, !dbg !516
  %46 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str36, i64 0, i64 0)) #5, !dbg !516
  %47 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str37, i64 0, i64 0)) #5, !dbg !516
  %48 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str38, i64 0, i64 0)) #5, !dbg !516
  %49 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([15 x i8]* @.str39, i64 0, i64 0)) #5, !dbg !516
  %50 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([16 x i8]* @.str40, i64 0, i64 0)) #5, !dbg !516
  %51 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([16 x i8]* @.str41, i64 0, i64 0)) #5, !dbg !516
  %52 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([16 x i8]* @.str42, i64 0, i64 0)) #5, !dbg !516
  %53 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([15 x i8]* @.str43, i64 0, i64 0)) #5, !dbg !516
  %54 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([16 x i8]* @.str44, i64 0, i64 0)) #5, !dbg !516
  %55 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([16 x i8]* @.str45, i64 0, i64 0)) #5, !dbg !516
  %56 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([15 x i8]* @.str46, i64 0, i64 0)) #5, !dbg !516
  %57 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([16 x i8]* @.str47, i64 0, i64 0)) #5, !dbg !516
  %58 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([8 x i8]* @.str48, i64 0, i64 0)) #5, !dbg !516
  %59 = sext i32 %58 to i64, !dbg !516
  %60 = load i8**** %4, align 8, !dbg !516, !tbaa !484
  %61 = getelementptr inbounds i8*** %60, i64 %59, !dbg !516
  %62 = bitcast i8*** %61 to double***, !dbg !516
  %63 = load double*** %62, align 8, !dbg !516, !tbaa !485
  %64 = load double** %63, align 8, !dbg !516, !tbaa !485
  tail call void @llvm.dbg.value(metadata double* %64, i64 0, metadata !203, metadata !474), !dbg !516
  %65 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([22 x i8]* @.str49, i64 0, i64 0)) #5, !dbg !516
  %66 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([8 x i8]* @.str50, i64 0, i64 0)) #5, !dbg !516
  %67 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([8 x i8]* @.str51, i64 0, i64 0)) #5, !dbg !516
  %68 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([8 x i8]* @.str52, i64 0, i64 0)) #5, !dbg !516
  %69 = load double* getelementptr inbounds (%struct.anon* @einsteinrest_, i64 0, i32 0), align 8, !dbg !517, !tbaa !518
  tail call void @llvm.dbg.value(metadata double %69, i64 0, metadata !208, metadata !474), !dbg !517
  %70 = load double* getelementptr inbounds (%struct.anon* @einsteinrest_, i64 0, i32 1), align 8, !dbg !517, !tbaa !520
  tail call void @llvm.dbg.value(metadata double %70, i64 0, metadata !210, metadata !474), !dbg !517
  %71 = load i32* %2, align 4, !dbg !521, !tbaa !487
  tail call void @llvm.dbg.value(metadata i32 %71, i64 0, metadata !243, metadata !474), !dbg !522
  %72 = getelementptr inbounds i32* %2, i64 1, !dbg !523
  %73 = load i32* %72, align 4, !dbg !523, !tbaa !487
  tail call void @llvm.dbg.value(metadata i32 %73, i64 0, metadata !244, metadata !474), !dbg !524
  %74 = getelementptr inbounds i32* %2, i64 2, !dbg !525
  %75 = load i32* %74, align 4, !dbg !525, !tbaa !487
  tail call void @llvm.dbg.value(metadata i32 %75, i64 0, metadata !245, metadata !474), !dbg !526
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !242, metadata !474), !dbg !527
  %76 = icmp sgt i32 %75, 0, !dbg !528
  br i1 %76, label %.preheader1.lr.ph, label %._crit_edge7, !dbg !531

.preheader1.lr.ph:                                ; preds = %0
  %77 = icmp sgt i32 %73, 0, !dbg !532
  %78 = icmp sgt i32 %71, 0, !dbg !536
  %79 = add i32 %71, -1, !dbg !531
  %80 = add i32 %73, -1, !dbg !531
  %81 = add i32 %75, -1, !dbg !531
  br label %.preheader1, !dbg !531

.preheader1:                                      ; preds = %._crit_edge4, %.preheader1.lr.ph
  %k.05 = phi i32 [ 0, %.preheader1.lr.ph ], [ %102, %._crit_edge4 ]
  br i1 %77, label %.preheader, label %._crit_edge4, !dbg !540

.preheader:                                       ; preds = %.preheader1, %._crit_edge
  %j.03 = phi i32 [ %101, %._crit_edge ], [ 0, %.preheader1 ]
  br i1 %78, label %.lr.ph, label %._crit_edge, !dbg !541

.lr.ph:                                           ; preds = %.preheader
  %82 = load i32** %1, align 8, !dbg !542, !tbaa !477
  %83 = load i32* %82, align 4, !dbg !542, !tbaa !487
  %84 = getelementptr inbounds i32* %82, i64 1, !dbg !542
  %85 = load i32* %84, align 4, !dbg !542, !tbaa !487
  %86 = mul nsw i32 %85, %k.05, !dbg !542
  %87 = add nsw i32 %86, %j.03, !dbg !542
  %88 = mul nsw i32 %87, %83, !dbg !542
  %89 = sext i32 %88 to i64, !dbg !541
  br label %90, !dbg !541

; <label>:90                                      ; preds = %90, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %90 ]
  %91 = add nsw i64 %89, %indvars.iv, !dbg !542
  %92 = getelementptr inbounds double* %64, i64 %91, !dbg !544
  %93 = load double* %92, align 8, !dbg !544, !tbaa !545
  %94 = fmul double %93, %93, !dbg !546
  %95 = fsub double -0.000000e+00, %94, !dbg !546
  %96 = fdiv double %95, %70, !dbg !547
  %97 = tail call double @exp(double %96) #7, !dbg !548
  %98 = fmul double %69, %97, !dbg !549
  %99 = fadd double %98, 1.000000e+00, !dbg !550
  %100 = getelementptr inbounds double* %25, i64 %91, !dbg !551
  store double %99, double* %100, align 8, !dbg !552, !tbaa !545
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !541
  %lftr.wideiv = trunc i64 %indvars.iv to i32, !dbg !541
  %exitcond = icmp eq i32 %lftr.wideiv, %79, !dbg !541
  br i1 %exitcond, label %._crit_edge, label %90, !dbg !541

._crit_edge:                                      ; preds = %90, %.preheader
  %101 = add nuw nsw i32 %j.03, 1, !dbg !553
  tail call void @llvm.dbg.value(metadata i32 %101, i64 0, metadata !241, metadata !474), !dbg !554
  %exitcond8 = icmp eq i32 %j.03, %80, !dbg !540
  br i1 %exitcond8, label %._crit_edge4, label %.preheader, !dbg !540

._crit_edge4:                                     ; preds = %._crit_edge, %.preheader1
  %102 = add nuw nsw i32 %k.05, 1, !dbg !555
  tail call void @llvm.dbg.value(metadata i32 %102, i64 0, metadata !242, metadata !474), !dbg !527
  %exitcond9 = icmp eq i32 %k.05, %81, !dbg !531
  br i1 %exitcond9, label %._crit_edge7, label %.preheader1, !dbg !531

._crit_edge7:                                     ; preds = %._crit_edge4, %0
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !238, metadata !474), !dbg !517
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !238, metadata !474), !dbg !517
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !238, metadata !474), !dbg !517
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !238, metadata !474), !dbg !517
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !238, metadata !474), !dbg !517
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !238, metadata !474), !dbg !517
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !238, metadata !474), !dbg !517
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !238, metadata !474), !dbg !517
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !238, metadata !474), !dbg !517
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !238, metadata !474), !dbg !517
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !238, metadata !474), !dbg !517
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !238, metadata !474), !dbg !517
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !238, metadata !474), !dbg !517
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !238, metadata !474), !dbg !517
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !238, metadata !474), !dbg !517
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !238, metadata !474), !dbg !517
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !238, metadata !474), !dbg !517
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !238, metadata !474), !dbg !517
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !238, metadata !474), !dbg !517
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !238, metadata !474), !dbg !517
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !238, metadata !474), !dbg !517
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !238, metadata !474), !dbg !517
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !238, metadata !474), !dbg !517
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !238, metadata !474), !dbg !517
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !238, metadata !474), !dbg !517
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !238, metadata !474), !dbg !517
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !238, metadata !474), !dbg !517
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !238, metadata !474), !dbg !517
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !238, metadata !474), !dbg !517
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !154, metadata !474), !dbg !516
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !154, metadata !474), !dbg !516
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !154, metadata !474), !dbg !516
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !154, metadata !474), !dbg !516
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !154, metadata !474), !dbg !516
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !154, metadata !474), !dbg !516
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !154, metadata !474), !dbg !516
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !154, metadata !474), !dbg !516
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !154, metadata !474), !dbg !516
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !154, metadata !474), !dbg !516
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !154, metadata !474), !dbg !516
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !154, metadata !474), !dbg !516
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !154, metadata !474), !dbg !516
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !154, metadata !474), !dbg !516
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !154, metadata !474), !dbg !516
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !154, metadata !474), !dbg !516
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !154, metadata !474), !dbg !516
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !154, metadata !474), !dbg !516
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !154, metadata !474), !dbg !516
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !154, metadata !474), !dbg !516
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !154, metadata !474), !dbg !516
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !154, metadata !474), !dbg !516
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !154, metadata !474), !dbg !516
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !154, metadata !474), !dbg !516
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !154, metadata !474), !dbg !516
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !154, metadata !474), !dbg !516
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !154, metadata !474), !dbg !516
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !154, metadata !474), !dbg !516
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !154, metadata !474), !dbg !516
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !154, metadata !474), !dbg !516
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !154, metadata !474), !dbg !516
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !154, metadata !474), !dbg !516
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !154, metadata !474), !dbg !516
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !154, metadata !474), !dbg !516
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !154, metadata !474), !dbg !516
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !154, metadata !474), !dbg !516
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !154, metadata !474), !dbg !516
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !154, metadata !474), !dbg !516
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !154, metadata !474), !dbg !516
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !154, metadata !474), !dbg !516
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !154, metadata !474), !dbg !516
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !154, metadata !474), !dbg !516
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !154, metadata !474), !dbg !516
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !154, metadata !474), !dbg !516
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !154, metadata !474), !dbg !516
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !154, metadata !474), !dbg !516
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !154, metadata !474), !dbg !516
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !154, metadata !474), !dbg !516
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !154, metadata !474), !dbg !516
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !154, metadata !474), !dbg !516
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !154, metadata !474), !dbg !516
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !154, metadata !474), !dbg !516
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !154, metadata !474), !dbg !516
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !154, metadata !474), !dbg !516
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !154, metadata !474), !dbg !516
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !154, metadata !474), !dbg !516
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !154, metadata !474), !dbg !516
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !154, metadata !474), !dbg !516
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !154, metadata !474), !dbg !516
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !154, metadata !474), !dbg !516
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !154, metadata !474), !dbg !516
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !154, metadata !474), !dbg !516
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !154, metadata !474), !dbg !516
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !154, metadata !474), !dbg !516
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !154, metadata !474), !dbg !516
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !154, metadata !474), !dbg !516
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !154, metadata !474), !dbg !516
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !154, metadata !474), !dbg !516
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !154, metadata !474), !dbg !516
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !154, metadata !474), !dbg !516
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !154, metadata !474), !dbg !516
  ret void, !dbg !556
}

; Function Attrs: nounwind optsize readnone
declare double @exp(double) #3

; Function Attrs: nounwind optsize ssp uwtable
define void @LapsePsiMinusTwo(%struct.cGH* nocapture readonly %cctkGH) #1 {
  tail call void @llvm.dbg.value(metadata %struct.cGH* %cctkGH, i64 0, metadata !248, metadata !474), !dbg !557
  %1 = getelementptr inbounds %struct.cGH* %cctkGH, i64 0, i32 3, !dbg !558
  %2 = load i32** %1, align 8, !dbg !558, !tbaa !477
  tail call void @llvm.dbg.value(metadata i32* %2, i64 0, metadata !251, metadata !474), !dbg !558
  %3 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([15 x i8]* @.str, i64 0, i64 0)) #5, !dbg !558
  %4 = getelementptr inbounds %struct.cGH* %cctkGH, i64 0, i32 17, !dbg !558
  %5 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str1, i64 0, i64 0)) #5, !dbg !558
  %6 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str2, i64 0, i64 0)) #5, !dbg !558
  %7 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str3, i64 0, i64 0)) #5, !dbg !558
  %8 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str4, i64 0, i64 0)) #5, !dbg !558
  %9 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str5, i64 0, i64 0)) #5, !dbg !558
  %10 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str6, i64 0, i64 0)) #5, !dbg !558
  %11 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str7, i64 0, i64 0)) #5, !dbg !558
  %12 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str8, i64 0, i64 0)) #5, !dbg !558
  %13 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str9, i64 0, i64 0)) #5, !dbg !558
  %14 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str10, i64 0, i64 0)) #5, !dbg !558
  %15 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str11, i64 0, i64 0)) #5, !dbg !558
  %16 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str12, i64 0, i64 0)) #5, !dbg !558
  %17 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str13, i64 0, i64 0)) #5, !dbg !558
  %18 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([32 x i8]* @.str14, i64 0, i64 0)) #5, !dbg !558
  %19 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str15, i64 0, i64 0)) #5, !dbg !558
  %20 = sext i32 %19 to i64, !dbg !558
  %21 = load i8**** %4, align 8, !dbg !558, !tbaa !484
  %22 = getelementptr inbounds i8*** %21, i64 %20, !dbg !558
  %23 = bitcast i8*** %22 to double***, !dbg !558
  %24 = load double*** %23, align 8, !dbg !558, !tbaa !485
  %25 = load double** %24, align 8, !dbg !558, !tbaa !485
  tail call void @llvm.dbg.value(metadata double* %25, i64 0, metadata !282, metadata !474), !dbg !558
  %26 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([16 x i8]* @.str16, i64 0, i64 0)) #5, !dbg !558
  %27 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([16 x i8]* @.str17, i64 0, i64 0)) #5, !dbg !558
  %28 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([16 x i8]* @.str18, i64 0, i64 0)) #5, !dbg !558
  %29 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([16 x i8]* @.str19, i64 0, i64 0)) #5, !dbg !558
  %30 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([16 x i8]* @.str20, i64 0, i64 0)) #5, !dbg !558
  %31 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([16 x i8]* @.str21, i64 0, i64 0)) #5, !dbg !558
  %32 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([26 x i8]* @.str22, i64 0, i64 0)) #5, !dbg !558
  %33 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([23 x i8]* @.str23, i64 0, i64 0)) #5, !dbg !558
  %34 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([25 x i8]* @.str24, i64 0, i64 0)) #5, !dbg !558
  %35 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([16 x i8]* @.str25, i64 0, i64 0)) #5, !dbg !558
  %36 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str26, i64 0, i64 0)) #5, !dbg !558
  %37 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str27, i64 0, i64 0)) #5, !dbg !558
  %38 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str28, i64 0, i64 0)) #5, !dbg !558
  %39 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str29, i64 0, i64 0)) #5, !dbg !558
  %40 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str30, i64 0, i64 0)) #5, !dbg !558
  %41 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str31, i64 0, i64 0)) #5, !dbg !558
  %42 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str32, i64 0, i64 0)) #5, !dbg !558
  %43 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str33, i64 0, i64 0)) #5, !dbg !558
  %44 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str34, i64 0, i64 0)) #5, !dbg !558
  %45 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str35, i64 0, i64 0)) #5, !dbg !558
  %46 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str36, i64 0, i64 0)) #5, !dbg !558
  %47 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str37, i64 0, i64 0)) #5, !dbg !558
  %48 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str38, i64 0, i64 0)) #5, !dbg !558
  %49 = sext i32 %48 to i64, !dbg !558
  %50 = load i8**** %4, align 8, !dbg !558, !tbaa !484
  %51 = getelementptr inbounds i8*** %50, i64 %49, !dbg !558
  %52 = bitcast i8*** %51 to double***, !dbg !558
  %53 = load double*** %52, align 8, !dbg !558, !tbaa !485
  %54 = load double** %53, align 8, !dbg !558, !tbaa !485
  tail call void @llvm.dbg.value(metadata double* %54, i64 0, metadata !305, metadata !474), !dbg !558
  %55 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([15 x i8]* @.str39, i64 0, i64 0)) #5, !dbg !558
  %56 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([16 x i8]* @.str40, i64 0, i64 0)) #5, !dbg !558
  %57 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([16 x i8]* @.str41, i64 0, i64 0)) #5, !dbg !558
  %58 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([16 x i8]* @.str42, i64 0, i64 0)) #5, !dbg !558
  %59 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([15 x i8]* @.str43, i64 0, i64 0)) #5, !dbg !558
  %60 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([16 x i8]* @.str44, i64 0, i64 0)) #5, !dbg !558
  %61 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([16 x i8]* @.str45, i64 0, i64 0)) #5, !dbg !558
  %62 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([15 x i8]* @.str46, i64 0, i64 0)) #5, !dbg !558
  %63 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([16 x i8]* @.str47, i64 0, i64 0)) #5, !dbg !558
  %64 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([8 x i8]* @.str48, i64 0, i64 0)) #5, !dbg !558
  %65 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([22 x i8]* @.str49, i64 0, i64 0)) #5, !dbg !558
  %66 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([8 x i8]* @.str50, i64 0, i64 0)) #5, !dbg !558
  %67 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([8 x i8]* @.str51, i64 0, i64 0)) #5, !dbg !558
  %68 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([8 x i8]* @.str52, i64 0, i64 0)) #5, !dbg !558
  %69 = load double* getelementptr inbounds (%struct.anon* @einsteinrest_, i64 0, i32 2), align 8, !dbg !559, !tbaa !560
  tail call void @llvm.dbg.value(metadata double %69, i64 0, metadata !322, metadata !474), !dbg !559
  %70 = load i32* %2, align 4, !dbg !561, !tbaa !487
  tail call void @llvm.dbg.value(metadata i32 %70, i64 0, metadata !353, metadata !474), !dbg !562
  %71 = getelementptr inbounds i32* %2, i64 1, !dbg !563
  %72 = load i32* %71, align 4, !dbg !563, !tbaa !487
  tail call void @llvm.dbg.value(metadata i32 %72, i64 0, metadata !354, metadata !474), !dbg !564
  %73 = getelementptr inbounds i32* %2, i64 2, !dbg !565
  %74 = load i32* %73, align 4, !dbg !565, !tbaa !487
  tail call void @llvm.dbg.value(metadata i32 %74, i64 0, metadata !355, metadata !474), !dbg !566
  %75 = tail call double @sqrt(double %69) #7, !dbg !567
  tail call void @llvm.dbg.value(metadata double %75, i64 0, metadata !356, metadata !474), !dbg !568
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !352, metadata !474), !dbg !569
  %76 = icmp sgt i32 %74, 0, !dbg !570
  br i1 %76, label %.preheader1.lr.ph, label %._crit_edge7, !dbg !573

.preheader1.lr.ph:                                ; preds = %0
  %77 = icmp sgt i32 %72, 0, !dbg !574
  %78 = icmp sgt i32 %70, 0, !dbg !578
  %79 = fmul double %75, 2.000000e+00, !dbg !582
  %80 = fsub double 1.000000e+00, %79, !dbg !584
  %81 = add i32 %70, -1, !dbg !573
  %82 = add i32 %72, -1, !dbg !573
  %83 = add i32 %74, -1, !dbg !573
  br label %.preheader1, !dbg !573

.preheader1:                                      ; preds = %._crit_edge4, %.preheader1.lr.ph
  %k.05 = phi i32 [ 0, %.preheader1.lr.ph ], [ %102, %._crit_edge4 ]
  br i1 %77, label %.preheader, label %._crit_edge4, !dbg !585

.preheader:                                       ; preds = %.preheader1, %._crit_edge
  %j.03 = phi i32 [ %101, %._crit_edge ], [ 0, %.preheader1 ]
  br i1 %78, label %.lr.ph, label %._crit_edge, !dbg !586

.lr.ph:                                           ; preds = %.preheader
  %84 = load i32** %1, align 8, !dbg !587, !tbaa !477
  %85 = load i32* %84, align 4, !dbg !587, !tbaa !487
  %86 = getelementptr inbounds i32* %84, i64 1, !dbg !587
  %87 = load i32* %86, align 4, !dbg !587, !tbaa !487
  %88 = mul nsw i32 %87, %k.05, !dbg !587
  %89 = add nsw i32 %88, %j.03, !dbg !587
  %90 = mul nsw i32 %89, %85, !dbg !587
  %91 = sext i32 %90 to i64, !dbg !586
  br label %92, !dbg !586

; <label>:92                                      ; preds = %92, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %92 ]
  %93 = add nsw i64 %91, %indvars.iv, !dbg !587
  %94 = getelementptr inbounds double* %54, i64 %93, !dbg !588
  %95 = load double* %94, align 8, !dbg !588, !tbaa !545
  %96 = fmul double %75, %95, !dbg !589
  %97 = fadd double %80, %96, !dbg !590
  %98 = fsub double %95, %75, !dbg !591
  %99 = fdiv double %97, %98, !dbg !592
  %pow2 = fmul double %99, %99, !dbg !593
  %100 = getelementptr inbounds double* %25, i64 %93, !dbg !594
  store double %pow2, double* %100, align 8, !dbg !595, !tbaa !545
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !586
  %lftr.wideiv = trunc i64 %indvars.iv to i32, !dbg !586
  %exitcond = icmp eq i32 %lftr.wideiv, %81, !dbg !586
  br i1 %exitcond, label %._crit_edge, label %92, !dbg !586

._crit_edge:                                      ; preds = %92, %.preheader
  %101 = add nuw nsw i32 %j.03, 1, !dbg !596
  tail call void @llvm.dbg.value(metadata i32 %101, i64 0, metadata !351, metadata !474), !dbg !597
  %exitcond8 = icmp eq i32 %j.03, %82, !dbg !585
  br i1 %exitcond8, label %._crit_edge4, label %.preheader, !dbg !585

._crit_edge4:                                     ; preds = %._crit_edge, %.preheader1
  %102 = add nuw nsw i32 %k.05, 1, !dbg !598
  tail call void @llvm.dbg.value(metadata i32 %102, i64 0, metadata !352, metadata !474), !dbg !569
  %exitcond9 = icmp eq i32 %k.05, %83, !dbg !573
  br i1 %exitcond9, label %._crit_edge7, label %.preheader1, !dbg !573

._crit_edge7:                                     ; preds = %._crit_edge4, %0
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !348, metadata !474), !dbg !559
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !348, metadata !474), !dbg !559
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !348, metadata !474), !dbg !559
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !348, metadata !474), !dbg !559
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !348, metadata !474), !dbg !559
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !348, metadata !474), !dbg !559
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !348, metadata !474), !dbg !559
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !348, metadata !474), !dbg !559
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !348, metadata !474), !dbg !559
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !348, metadata !474), !dbg !559
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !348, metadata !474), !dbg !559
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !348, metadata !474), !dbg !559
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !348, metadata !474), !dbg !559
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !348, metadata !474), !dbg !559
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !348, metadata !474), !dbg !559
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !348, metadata !474), !dbg !559
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !348, metadata !474), !dbg !559
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !348, metadata !474), !dbg !559
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !348, metadata !474), !dbg !559
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !348, metadata !474), !dbg !559
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !348, metadata !474), !dbg !559
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !348, metadata !474), !dbg !559
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !348, metadata !474), !dbg !559
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !348, metadata !474), !dbg !559
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !348, metadata !474), !dbg !559
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !348, metadata !474), !dbg !559
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !348, metadata !474), !dbg !559
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !348, metadata !474), !dbg !559
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !348, metadata !474), !dbg !559
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !266, metadata !474), !dbg !558
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !266, metadata !474), !dbg !558
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !266, metadata !474), !dbg !558
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !266, metadata !474), !dbg !558
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !266, metadata !474), !dbg !558
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !266, metadata !474), !dbg !558
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !266, metadata !474), !dbg !558
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !266, metadata !474), !dbg !558
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !266, metadata !474), !dbg !558
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !266, metadata !474), !dbg !558
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !266, metadata !474), !dbg !558
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !266, metadata !474), !dbg !558
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !266, metadata !474), !dbg !558
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !266, metadata !474), !dbg !558
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !266, metadata !474), !dbg !558
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !266, metadata !474), !dbg !558
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !266, metadata !474), !dbg !558
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !266, metadata !474), !dbg !558
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !266, metadata !474), !dbg !558
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !266, metadata !474), !dbg !558
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !266, metadata !474), !dbg !558
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !266, metadata !474), !dbg !558
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !266, metadata !474), !dbg !558
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !266, metadata !474), !dbg !558
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !266, metadata !474), !dbg !558
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !266, metadata !474), !dbg !558
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !266, metadata !474), !dbg !558
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !266, metadata !474), !dbg !558
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !266, metadata !474), !dbg !558
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !266, metadata !474), !dbg !558
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !266, metadata !474), !dbg !558
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !266, metadata !474), !dbg !558
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !266, metadata !474), !dbg !558
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !266, metadata !474), !dbg !558
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !266, metadata !474), !dbg !558
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !266, metadata !474), !dbg !558
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !266, metadata !474), !dbg !558
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !266, metadata !474), !dbg !558
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !266, metadata !474), !dbg !558
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !266, metadata !474), !dbg !558
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !266, metadata !474), !dbg !558
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !266, metadata !474), !dbg !558
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !266, metadata !474), !dbg !558
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !266, metadata !474), !dbg !558
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !266, metadata !474), !dbg !558
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !266, metadata !474), !dbg !558
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !266, metadata !474), !dbg !558
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !266, metadata !474), !dbg !558
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !266, metadata !474), !dbg !558
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !266, metadata !474), !dbg !558
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !266, metadata !474), !dbg !558
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !266, metadata !474), !dbg !558
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !266, metadata !474), !dbg !558
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !266, metadata !474), !dbg !558
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !266, metadata !474), !dbg !558
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !266, metadata !474), !dbg !558
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !266, metadata !474), !dbg !558
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !266, metadata !474), !dbg !558
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !266, metadata !474), !dbg !558
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !266, metadata !474), !dbg !558
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !266, metadata !474), !dbg !558
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !266, metadata !474), !dbg !558
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !266, metadata !474), !dbg !558
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !266, metadata !474), !dbg !558
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !266, metadata !474), !dbg !558
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !266, metadata !474), !dbg !558
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !266, metadata !474), !dbg !558
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !266, metadata !474), !dbg !558
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !266, metadata !474), !dbg !558
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !266, metadata !474), !dbg !558
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !266, metadata !474), !dbg !558
  ret void, !dbg !599
}

; Function Attrs: nounwind optsize readnone
declare double @sqrt(double) #3

; Function Attrs: nounwind optsize ssp uwtable
define void @LapseIsotropic(%struct.cGH* nocapture readonly %cctkGH) #1 {
  tail call void @llvm.dbg.value(metadata %struct.cGH* %cctkGH, i64 0, metadata !359, metadata !474), !dbg !600
  %1 = getelementptr inbounds %struct.cGH* %cctkGH, i64 0, i32 3, !dbg !601
  %2 = load i32** %1, align 8, !dbg !601, !tbaa !477
  tail call void @llvm.dbg.value(metadata i32* %2, i64 0, metadata !362, metadata !474), !dbg !601
  %3 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([15 x i8]* @.str, i64 0, i64 0)) #5, !dbg !601
  %4 = getelementptr inbounds %struct.cGH* %cctkGH, i64 0, i32 17, !dbg !601
  %5 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str1, i64 0, i64 0)) #5, !dbg !601
  %6 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str2, i64 0, i64 0)) #5, !dbg !601
  %7 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str3, i64 0, i64 0)) #5, !dbg !601
  %8 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str4, i64 0, i64 0)) #5, !dbg !601
  %9 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str5, i64 0, i64 0)) #5, !dbg !601
  %10 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str6, i64 0, i64 0)) #5, !dbg !601
  %11 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str7, i64 0, i64 0)) #5, !dbg !601
  %12 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str8, i64 0, i64 0)) #5, !dbg !601
  %13 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str9, i64 0, i64 0)) #5, !dbg !601
  %14 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str10, i64 0, i64 0)) #5, !dbg !601
  %15 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str11, i64 0, i64 0)) #5, !dbg !601
  %16 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str12, i64 0, i64 0)) #5, !dbg !601
  %17 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str13, i64 0, i64 0)) #5, !dbg !601
  %18 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([32 x i8]* @.str14, i64 0, i64 0)) #5, !dbg !601
  %19 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str15, i64 0, i64 0)) #5, !dbg !601
  %20 = sext i32 %19 to i64, !dbg !601
  %21 = load i8**** %4, align 8, !dbg !601, !tbaa !484
  %22 = getelementptr inbounds i8*** %21, i64 %20, !dbg !601
  %23 = bitcast i8*** %22 to double***, !dbg !601
  %24 = load double*** %23, align 8, !dbg !601, !tbaa !485
  %25 = load double** %24, align 8, !dbg !601, !tbaa !485
  tail call void @llvm.dbg.value(metadata double* %25, i64 0, metadata !393, metadata !474), !dbg !601
  %26 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([16 x i8]* @.str16, i64 0, i64 0)) #5, !dbg !601
  %27 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([16 x i8]* @.str17, i64 0, i64 0)) #5, !dbg !601
  %28 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([16 x i8]* @.str18, i64 0, i64 0)) #5, !dbg !601
  %29 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([16 x i8]* @.str19, i64 0, i64 0)) #5, !dbg !601
  %30 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([16 x i8]* @.str20, i64 0, i64 0)) #5, !dbg !601
  %31 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([16 x i8]* @.str21, i64 0, i64 0)) #5, !dbg !601
  %32 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([26 x i8]* @.str22, i64 0, i64 0)) #5, !dbg !601
  %33 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([23 x i8]* @.str23, i64 0, i64 0)) #5, !dbg !601
  %34 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([25 x i8]* @.str24, i64 0, i64 0)) #5, !dbg !601
  %35 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([16 x i8]* @.str25, i64 0, i64 0)) #5, !dbg !601
  %36 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str26, i64 0, i64 0)) #5, !dbg !601
  %37 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str27, i64 0, i64 0)) #5, !dbg !601
  %38 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str28, i64 0, i64 0)) #5, !dbg !601
  %39 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str29, i64 0, i64 0)) #5, !dbg !601
  %40 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str30, i64 0, i64 0)) #5, !dbg !601
  %41 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str31, i64 0, i64 0)) #5, !dbg !601
  %42 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str32, i64 0, i64 0)) #5, !dbg !601
  %43 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str33, i64 0, i64 0)) #5, !dbg !601
  %44 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str34, i64 0, i64 0)) #5, !dbg !601
  %45 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str35, i64 0, i64 0)) #5, !dbg !601
  %46 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str36, i64 0, i64 0)) #5, !dbg !601
  %47 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str37, i64 0, i64 0)) #5, !dbg !601
  %48 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str38, i64 0, i64 0)) #5, !dbg !601
  %49 = sext i32 %48 to i64, !dbg !601
  %50 = load i8**** %4, align 8, !dbg !601, !tbaa !484
  %51 = getelementptr inbounds i8*** %50, i64 %49, !dbg !601
  %52 = bitcast i8*** %51 to double***, !dbg !601
  %53 = load double*** %52, align 8, !dbg !601, !tbaa !485
  %54 = load double** %53, align 8, !dbg !601, !tbaa !485
  tail call void @llvm.dbg.value(metadata double* %54, i64 0, metadata !416, metadata !474), !dbg !601
  %55 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([15 x i8]* @.str39, i64 0, i64 0)) #5, !dbg !601
  %56 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([16 x i8]* @.str40, i64 0, i64 0)) #5, !dbg !601
  %57 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([16 x i8]* @.str41, i64 0, i64 0)) #5, !dbg !601
  %58 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([16 x i8]* @.str42, i64 0, i64 0)) #5, !dbg !601
  %59 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([15 x i8]* @.str43, i64 0, i64 0)) #5, !dbg !601
  %60 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([16 x i8]* @.str44, i64 0, i64 0)) #5, !dbg !601
  %61 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([16 x i8]* @.str45, i64 0, i64 0)) #5, !dbg !601
  %62 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([15 x i8]* @.str46, i64 0, i64 0)) #5, !dbg !601
  %63 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([16 x i8]* @.str47, i64 0, i64 0)) #5, !dbg !601
  %64 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([8 x i8]* @.str48, i64 0, i64 0)) #5, !dbg !601
  %65 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([22 x i8]* @.str49, i64 0, i64 0)) #5, !dbg !601
  %66 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([8 x i8]* @.str50, i64 0, i64 0)) #5, !dbg !601
  %67 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([8 x i8]* @.str51, i64 0, i64 0)) #5, !dbg !601
  %68 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([8 x i8]* @.str52, i64 0, i64 0)) #5, !dbg !601
  %69 = load i32* %2, align 4, !dbg !602, !tbaa !487
  tail call void @llvm.dbg.value(metadata i32 %69, i64 0, metadata !464, metadata !474), !dbg !603
  %70 = getelementptr inbounds i32* %2, i64 1, !dbg !604
  %71 = load i32* %70, align 4, !dbg !604, !tbaa !487
  tail call void @llvm.dbg.value(metadata i32 %71, i64 0, metadata !465, metadata !474), !dbg !605
  %72 = getelementptr inbounds i32* %2, i64 2, !dbg !606
  %73 = load i32* %72, align 4, !dbg !606, !tbaa !487
  tail call void @llvm.dbg.value(metadata i32 %73, i64 0, metadata !466, metadata !474), !dbg !607
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !463, metadata !474), !dbg !608
  %74 = icmp sgt i32 %73, 0, !dbg !609
  br i1 %74, label %.preheader1.lr.ph, label %._crit_edge7, !dbg !612

.preheader1.lr.ph:                                ; preds = %0
  %75 = icmp sgt i32 %71, 0, !dbg !613
  %76 = icmp sgt i32 %69, 0, !dbg !617
  %77 = add i32 %69, -1, !dbg !612
  %78 = add i32 %71, -1, !dbg !612
  %79 = add i32 %73, -1, !dbg !612
  br label %.preheader1, !dbg !612

.preheader1:                                      ; preds = %._crit_edge4, %.preheader1.lr.ph
  %k.05 = phi i32 [ 0, %.preheader1.lr.ph ], [ %96, %._crit_edge4 ]
  br i1 %75, label %.preheader, label %._crit_edge4, !dbg !621

.preheader:                                       ; preds = %.preheader1, %._crit_edge
  %j.03 = phi i32 [ %95, %._crit_edge ], [ 0, %.preheader1 ]
  br i1 %76, label %.lr.ph, label %._crit_edge, !dbg !622

.lr.ph:                                           ; preds = %.preheader
  %80 = load i32** %1, align 8, !dbg !623, !tbaa !477
  %81 = load i32* %80, align 4, !dbg !623, !tbaa !487
  %82 = getelementptr inbounds i32* %80, i64 1, !dbg !623
  %83 = load i32* %82, align 4, !dbg !623, !tbaa !487
  %84 = mul nsw i32 %83, %k.05, !dbg !623
  %85 = add nsw i32 %84, %j.03, !dbg !623
  %86 = mul nsw i32 %85, %81, !dbg !623
  %87 = sext i32 %86 to i64, !dbg !622
  br label %88, !dbg !622

; <label>:88                                      ; preds = %88, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %88 ]
  %89 = add nsw i64 %87, %indvars.iv, !dbg !623
  %90 = getelementptr inbounds double* %54, i64 %89, !dbg !625
  %91 = load double* %90, align 8, !dbg !625, !tbaa !545
  %92 = fdiv double 2.000000e+00, %91, !dbg !626
  %93 = fadd double %92, -1.000000e+00, !dbg !627
  %94 = getelementptr inbounds double* %25, i64 %89, !dbg !628
  store double %93, double* %94, align 8, !dbg !629, !tbaa !545
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !622
  %lftr.wideiv = trunc i64 %indvars.iv to i32, !dbg !622
  %exitcond = icmp eq i32 %lftr.wideiv, %77, !dbg !622
  br i1 %exitcond, label %._crit_edge, label %88, !dbg !622

._crit_edge:                                      ; preds = %88, %.preheader
  %95 = add nuw nsw i32 %j.03, 1, !dbg !630
  tail call void @llvm.dbg.value(metadata i32 %95, i64 0, metadata !462, metadata !474), !dbg !631
  %exitcond8 = icmp eq i32 %j.03, %78, !dbg !621
  br i1 %exitcond8, label %._crit_edge4, label %.preheader, !dbg !621

._crit_edge4:                                     ; preds = %._crit_edge, %.preheader1
  %96 = add nuw nsw i32 %k.05, 1, !dbg !632
  tail call void @llvm.dbg.value(metadata i32 %96, i64 0, metadata !463, metadata !474), !dbg !608
  %exitcond9 = icmp eq i32 %k.05, %79, !dbg !612
  br i1 %exitcond9, label %._crit_edge7, label %.preheader1, !dbg !612

._crit_edge7:                                     ; preds = %._crit_edge4, %0
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !459, metadata !474), !dbg !633
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !459, metadata !474), !dbg !633
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !459, metadata !474), !dbg !633
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !459, metadata !474), !dbg !633
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !459, metadata !474), !dbg !633
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !459, metadata !474), !dbg !633
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !459, metadata !474), !dbg !633
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !459, metadata !474), !dbg !633
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !459, metadata !474), !dbg !633
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !459, metadata !474), !dbg !633
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !459, metadata !474), !dbg !633
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !459, metadata !474), !dbg !633
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !459, metadata !474), !dbg !633
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !459, metadata !474), !dbg !633
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !459, metadata !474), !dbg !633
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !459, metadata !474), !dbg !633
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !459, metadata !474), !dbg !633
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !459, metadata !474), !dbg !633
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !459, metadata !474), !dbg !633
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !459, metadata !474), !dbg !633
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !459, metadata !474), !dbg !633
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !459, metadata !474), !dbg !633
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !459, metadata !474), !dbg !633
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !459, metadata !474), !dbg !633
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !459, metadata !474), !dbg !633
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !459, metadata !474), !dbg !633
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !459, metadata !474), !dbg !633
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !459, metadata !474), !dbg !633
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !459, metadata !474), !dbg !633
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !377, metadata !474), !dbg !601
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !377, metadata !474), !dbg !601
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !377, metadata !474), !dbg !601
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !377, metadata !474), !dbg !601
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !377, metadata !474), !dbg !601
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !377, metadata !474), !dbg !601
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !377, metadata !474), !dbg !601
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !377, metadata !474), !dbg !601
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !377, metadata !474), !dbg !601
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !377, metadata !474), !dbg !601
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !377, metadata !474), !dbg !601
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !377, metadata !474), !dbg !601
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !377, metadata !474), !dbg !601
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !377, metadata !474), !dbg !601
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !377, metadata !474), !dbg !601
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !377, metadata !474), !dbg !601
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !377, metadata !474), !dbg !601
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !377, metadata !474), !dbg !601
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !377, metadata !474), !dbg !601
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !377, metadata !474), !dbg !601
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !377, metadata !474), !dbg !601
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !377, metadata !474), !dbg !601
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !377, metadata !474), !dbg !601
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !377, metadata !474), !dbg !601
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !377, metadata !474), !dbg !601
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !377, metadata !474), !dbg !601
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !377, metadata !474), !dbg !601
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !377, metadata !474), !dbg !601
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !377, metadata !474), !dbg !601
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !377, metadata !474), !dbg !601
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !377, metadata !474), !dbg !601
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !377, metadata !474), !dbg !601
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !377, metadata !474), !dbg !601
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !377, metadata !474), !dbg !601
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !377, metadata !474), !dbg !601
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !377, metadata !474), !dbg !601
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !377, metadata !474), !dbg !601
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !377, metadata !474), !dbg !601
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !377, metadata !474), !dbg !601
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !377, metadata !474), !dbg !601
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !377, metadata !474), !dbg !601
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !377, metadata !474), !dbg !601
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !377, metadata !474), !dbg !601
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !377, metadata !474), !dbg !601
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !377, metadata !474), !dbg !601
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !377, metadata !474), !dbg !601
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !377, metadata !474), !dbg !601
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !377, metadata !474), !dbg !601
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !377, metadata !474), !dbg !601
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !377, metadata !474), !dbg !601
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !377, metadata !474), !dbg !601
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !377, metadata !474), !dbg !601
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !377, metadata !474), !dbg !601
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !377, metadata !474), !dbg !601
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !377, metadata !474), !dbg !601
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !377, metadata !474), !dbg !601
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !377, metadata !474), !dbg !601
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !377, metadata !474), !dbg !601
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !377, metadata !474), !dbg !601
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !377, metadata !474), !dbg !601
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !377, metadata !474), !dbg !601
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !377, metadata !474), !dbg !601
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !377, metadata !474), !dbg !601
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !377, metadata !474), !dbg !601
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !377, metadata !474), !dbg !601
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !377, metadata !474), !dbg !601
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !377, metadata !474), !dbg !601
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !377, metadata !474), !dbg !601
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !377, metadata !474), !dbg !601
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !377, metadata !474), !dbg !601
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !377, metadata !474), !dbg !601
  ret void, !dbg !634
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #4

declare void @memset_pattern16(i8*, i8*, i64)

attributes #0 = { nounwind optsize readnone ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone }
attributes #5 = { nounwind optsize }
attributes #6 = { nounwind }
attributes #7 = { nounwind optsize readnone }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!469, !470, !471}
!llvm.ident = !{!472}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !3, subprograms: !8, globals: !467, imports: !2)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/Einstein/LapseInits.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{}
!3 = !{!4, !6}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64, align: 64)
!5 = !DIBasicType(name: "double", size: 64, align: 64, encoding: DW_ATE_float)
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64, align: 64)
!7 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!8 = !{!9, !15, !134, !246, !357}
!9 = !DISubprogram(name: "CCTKi_version_CactusEinstein_Einstein_LapseInits_c", scope: !1, file: !1, line: 23, type: !10, isLocal: false, isDefinition: true, scopeLine: 23, flags: DIFlagPrototyped, isOptimized: true, function: i8* ()* @CCTKi_version_CactusEinstein_Einstein_LapseInits_c, variables: !2)
!10 = !DISubroutineType(types: !11)
!11 = !{!12}
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64, align: 64)
!13 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !14)
!14 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!15 = !DISubprogram(name: "LapseOne", scope: !1, file: !1, line: 33, type: !16, isLocal: false, isDefinition: true, scopeLine: 34, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.cGH*)* @LapseOne, variables: !52)
!16 = !DISubroutineType(types: !17)
!17 = !{null, !18}
!18 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64, align: 64)
!19 = !DIDerivedType(tag: DW_TAG_typedef, name: "cGH", file: !20, line: 75, baseType: !21)
!20 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/Einstein/../include/cGH.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!21 = !DICompositeType(tag: DW_TAG_structure_type, file: !20, line: 24, size: 1216, align: 64, elements: !22)
!22 = !{!23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !44, !45}
!23 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_dim", scope: !21, file: !20, line: 26, baseType: !7, size: 32, align: 32)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_iteration", scope: !21, file: !20, line: 27, baseType: !7, size: 32, align: 32, offset: 32)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_gsh", scope: !21, file: !20, line: 30, baseType: !6, size: 64, align: 64, offset: 64)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_lsh", scope: !21, file: !20, line: 31, baseType: !6, size: 64, align: 64, offset: 128)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_lbnd", scope: !21, file: !20, line: 32, baseType: !6, size: 64, align: 64, offset: 192)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_ubnd", scope: !21, file: !20, line: 33, baseType: !6, size: 64, align: 64, offset: 256)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_lssh", scope: !21, file: !20, line: 36, baseType: !6, size: 64, align: 64, offset: 320)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_to", scope: !21, file: !20, line: 39, baseType: !6, size: 64, align: 64, offset: 384)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_from", scope: !21, file: !20, line: 40, baseType: !6, size: 64, align: 64, offset: 448)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_delta_time", scope: !21, file: !20, line: 43, baseType: !5, size: 64, align: 64, offset: 512)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_delta_space", scope: !21, file: !20, line: 44, baseType: !4, size: 64, align: 64, offset: 576)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_origin_space", scope: !21, file: !20, line: 47, baseType: !4, size: 64, align: 64, offset: 640)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_bbox", scope: !21, file: !20, line: 51, baseType: !6, size: 64, align: 64, offset: 704)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_levfac", scope: !21, file: !20, line: 54, baseType: !6, size: 64, align: 64, offset: 768)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_convlevel", scope: !21, file: !20, line: 57, baseType: !7, size: 32, align: 32, offset: 832)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_nghostzones", scope: !21, file: !20, line: 60, baseType: !6, size: 64, align: 64, offset: 896)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_time", scope: !21, file: !20, line: 63, baseType: !5, size: 64, align: 64, offset: 960)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !21, file: !20, line: 67, baseType: !41, size: 64, align: 64, offset: 1024)
!41 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64, align: 64)
!42 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !43, size: 64, align: 64)
!43 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "extensions", scope: !21, file: !20, line: 70, baseType: !42, size: 64, align: 64, offset: 1088)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "GroupData", scope: !21, file: !20, line: 73, baseType: !46, size: 64, align: 64, offset: 1152)
!46 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 64, align: 64)
!47 = !DIDerivedType(tag: DW_TAG_typedef, name: "cGHGroupData", file: !20, line: 22, baseType: !48)
!48 = !DICompositeType(tag: DW_TAG_structure_type, file: !20, line: 18, size: 16, align: 8, elements: !49)
!49 = !{!50, !51}
!50 = !DIDerivedType(tag: DW_TAG_member, name: "storage", scope: !48, file: !20, line: 20, baseType: !14, size: 8, align: 8)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !48, file: !20, line: 21, baseType: !14, size: 8, align: 8, offset: 8)
!52 = !{!53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133}
!53 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "cctkGH", arg: 1, scope: !15, file: !1, line: 33, type: !18)
!54 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cctk_dim", scope: !15, file: !1, line: 36, type: !7)
!55 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cctk_gsh", scope: !15, file: !1, line: 36, type: !6)
!56 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cctk_lsh", scope: !15, file: !1, line: 36, type: !6)
!57 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cctk_lbnd", scope: !15, file: !1, line: 36, type: !6)
!58 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cctk_ubnd", scope: !15, file: !1, line: 36, type: !6)
!59 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cctk_lssh", scope: !15, file: !1, line: 36, type: !6)
!60 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cctk_from", scope: !15, file: !1, line: 36, type: !6)
!61 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cctk_to", scope: !15, file: !1, line: 36, type: !6)
!62 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cctk_bbox", scope: !15, file: !1, line: 36, type: !6)
!63 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cctk_delta_time", scope: !15, file: !1, line: 36, type: !5)
!64 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cctk_time", scope: !15, file: !1, line: 36, type: !5)
!65 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cctk_delta_space", scope: !15, file: !1, line: 36, type: !4)
!66 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cctk_origin_space", scope: !15, file: !1, line: 36, type: !4)
!67 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cctk_levfac", scope: !15, file: !1, line: 36, type: !6)
!68 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cctk_convlevel", scope: !15, file: !1, line: 36, type: !7)
!69 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cctk_nghostzones", scope: !15, file: !1, line: 36, type: !6)
!70 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cctk_iteration", scope: !15, file: !1, line: 36, type: !7)
!71 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cctk_dummy_pointer", scope: !15, file: !1, line: 36, type: !72)
!72 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !73, size: 64, align: 64)
!73 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!74 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "detg", scope: !15, file: !1, line: 36, type: !4)
!75 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "gpp", scope: !15, file: !1, line: 36, type: !4)
!76 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "gqp", scope: !15, file: !1, line: 36, type: !4)
!77 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "gqq", scope: !15, file: !1, line: 36, type: !4)
!78 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "grp", scope: !15, file: !1, line: 36, type: !4)
!79 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "grq", scope: !15, file: !1, line: 36, type: !4)
!80 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "grr", scope: !15, file: !1, line: 36, type: !4)
!81 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "kpp", scope: !15, file: !1, line: 36, type: !4)
!82 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "kqp", scope: !15, file: !1, line: 36, type: !4)
!83 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "kqq", scope: !15, file: !1, line: 36, type: !4)
!84 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "krp", scope: !15, file: !1, line: 36, type: !4)
!85 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "krq", scope: !15, file: !1, line: 36, type: !4)
!86 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "krr", scope: !15, file: !1, line: 36, type: !4)
!87 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "trK", scope: !15, file: !1, line: 36, type: !4)
!88 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "active_slicing_handle", scope: !15, file: !1, line: 36, type: !6)
!89 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "alp", scope: !15, file: !1, line: 36, type: !4)
!90 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "betax", scope: !15, file: !1, line: 36, type: !4)
!91 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "betay", scope: !15, file: !1, line: 36, type: !4)
!92 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "betaz", scope: !15, file: !1, line: 36, type: !4)
!93 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "coarse_dx", scope: !15, file: !1, line: 36, type: !4)
!94 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "coarse_dy", scope: !15, file: !1, line: 36, type: !4)
!95 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "coarse_dz", scope: !15, file: !1, line: 36, type: !4)
!96 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "conformal_state", scope: !15, file: !1, line: 36, type: !6)
!97 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "courant_min_time", scope: !15, file: !1, line: 36, type: !4)
!98 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "courant_wave_speed", scope: !15, file: !1, line: 36, type: !4)
!99 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "emask", scope: !15, file: !1, line: 36, type: !4)
!100 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "gxx", scope: !15, file: !1, line: 36, type: !4)
!101 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "gxy", scope: !15, file: !1, line: 36, type: !4)
!102 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "gxz", scope: !15, file: !1, line: 36, type: !4)
!103 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "gyy", scope: !15, file: !1, line: 36, type: !4)
!104 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "gyz", scope: !15, file: !1, line: 36, type: !4)
!105 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "gzz", scope: !15, file: !1, line: 36, type: !4)
!106 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "kxx", scope: !15, file: !1, line: 36, type: !4)
!107 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "kxy", scope: !15, file: !1, line: 36, type: !4)
!108 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "kxz", scope: !15, file: !1, line: 36, type: !4)
!109 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "kyy", scope: !15, file: !1, line: 36, type: !4)
!110 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "kyz", scope: !15, file: !1, line: 36, type: !4)
!111 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "kzz", scope: !15, file: !1, line: 36, type: !4)
!112 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "psi", scope: !15, file: !1, line: 36, type: !4)
!113 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "psix", scope: !15, file: !1, line: 36, type: !4)
!114 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "psixx", scope: !15, file: !1, line: 36, type: !4)
!115 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "psixy", scope: !15, file: !1, line: 36, type: !4)
!116 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "psixz", scope: !15, file: !1, line: 36, type: !4)
!117 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "psiy", scope: !15, file: !1, line: 36, type: !4)
!118 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "psiyy", scope: !15, file: !1, line: 36, type: !4)
!119 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "psiyz", scope: !15, file: !1, line: 36, type: !4)
!120 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "psiz", scope: !15, file: !1, line: 36, type: !4)
!121 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "psizz", scope: !15, file: !1, line: 36, type: !4)
!122 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "r", scope: !15, file: !1, line: 36, type: !4)
!123 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "shift_state", scope: !15, file: !1, line: 36, type: !6)
!124 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "x", scope: !15, file: !1, line: 36, type: !4)
!125 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "y", scope: !15, file: !1, line: 36, type: !4)
!126 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "z", scope: !15, file: !1, line: 36, type: !4)
!127 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "index", scope: !15, file: !1, line: 38, type: !7)
!128 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !15, file: !1, line: 38, type: !7)
!129 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "j", scope: !15, file: !1, line: 38, type: !7)
!130 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "k", scope: !15, file: !1, line: 38, type: !7)
!131 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "nx", scope: !15, file: !1, line: 38, type: !7)
!132 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ny", scope: !15, file: !1, line: 38, type: !7)
!133 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "nz", scope: !15, file: !1, line: 38, type: !7)
!134 = !DISubprogram(name: "LapseGaussian", scope: !1, file: !1, line: 63, type: !16, isLocal: false, isDefinition: true, scopeLine: 64, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.cGH*)* @LapseGaussian, variables: !135)
!135 = !{!136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245}
!136 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "cctkGH", arg: 1, scope: !134, file: !1, line: 63, type: !18)
!137 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cctk_dim", scope: !134, file: !1, line: 66, type: !7)
!138 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cctk_gsh", scope: !134, file: !1, line: 66, type: !6)
!139 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cctk_lsh", scope: !134, file: !1, line: 66, type: !6)
!140 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cctk_lbnd", scope: !134, file: !1, line: 66, type: !6)
!141 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cctk_ubnd", scope: !134, file: !1, line: 66, type: !6)
!142 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cctk_lssh", scope: !134, file: !1, line: 66, type: !6)
!143 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cctk_from", scope: !134, file: !1, line: 66, type: !6)
!144 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cctk_to", scope: !134, file: !1, line: 66, type: !6)
!145 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cctk_bbox", scope: !134, file: !1, line: 66, type: !6)
!146 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cctk_delta_time", scope: !134, file: !1, line: 66, type: !5)
!147 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cctk_time", scope: !134, file: !1, line: 66, type: !5)
!148 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cctk_delta_space", scope: !134, file: !1, line: 66, type: !4)
!149 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cctk_origin_space", scope: !134, file: !1, line: 66, type: !4)
!150 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cctk_levfac", scope: !134, file: !1, line: 66, type: !6)
!151 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cctk_convlevel", scope: !134, file: !1, line: 66, type: !7)
!152 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cctk_nghostzones", scope: !134, file: !1, line: 66, type: !6)
!153 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cctk_iteration", scope: !134, file: !1, line: 66, type: !7)
!154 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cctk_dummy_pointer", scope: !134, file: !1, line: 66, type: !72)
!155 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "detg", scope: !134, file: !1, line: 66, type: !4)
!156 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "gpp", scope: !134, file: !1, line: 66, type: !4)
!157 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "gqp", scope: !134, file: !1, line: 66, type: !4)
!158 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "gqq", scope: !134, file: !1, line: 66, type: !4)
!159 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "grp", scope: !134, file: !1, line: 66, type: !4)
!160 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "grq", scope: !134, file: !1, line: 66, type: !4)
!161 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "grr", scope: !134, file: !1, line: 66, type: !4)
!162 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "kpp", scope: !134, file: !1, line: 66, type: !4)
!163 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "kqp", scope: !134, file: !1, line: 66, type: !4)
!164 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "kqq", scope: !134, file: !1, line: 66, type: !4)
!165 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "krp", scope: !134, file: !1, line: 66, type: !4)
!166 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "krq", scope: !134, file: !1, line: 66, type: !4)
!167 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "krr", scope: !134, file: !1, line: 66, type: !4)
!168 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "trK", scope: !134, file: !1, line: 66, type: !4)
!169 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "active_slicing_handle", scope: !134, file: !1, line: 66, type: !6)
!170 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "alp", scope: !134, file: !1, line: 66, type: !4)
!171 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "betax", scope: !134, file: !1, line: 66, type: !4)
!172 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "betay", scope: !134, file: !1, line: 66, type: !4)
!173 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "betaz", scope: !134, file: !1, line: 66, type: !4)
!174 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "coarse_dx", scope: !134, file: !1, line: 66, type: !4)
!175 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "coarse_dy", scope: !134, file: !1, line: 66, type: !4)
!176 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "coarse_dz", scope: !134, file: !1, line: 66, type: !4)
!177 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "conformal_state", scope: !134, file: !1, line: 66, type: !6)
!178 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "courant_min_time", scope: !134, file: !1, line: 66, type: !4)
!179 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "courant_wave_speed", scope: !134, file: !1, line: 66, type: !4)
!180 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "emask", scope: !134, file: !1, line: 66, type: !4)
!181 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "gxx", scope: !134, file: !1, line: 66, type: !4)
!182 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "gxy", scope: !134, file: !1, line: 66, type: !4)
!183 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "gxz", scope: !134, file: !1, line: 66, type: !4)
!184 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "gyy", scope: !134, file: !1, line: 66, type: !4)
!185 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "gyz", scope: !134, file: !1, line: 66, type: !4)
!186 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "gzz", scope: !134, file: !1, line: 66, type: !4)
!187 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "kxx", scope: !134, file: !1, line: 66, type: !4)
!188 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "kxy", scope: !134, file: !1, line: 66, type: !4)
!189 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "kxz", scope: !134, file: !1, line: 66, type: !4)
!190 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "kyy", scope: !134, file: !1, line: 66, type: !4)
!191 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "kyz", scope: !134, file: !1, line: 66, type: !4)
!192 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "kzz", scope: !134, file: !1, line: 66, type: !4)
!193 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "psi", scope: !134, file: !1, line: 66, type: !4)
!194 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "psix", scope: !134, file: !1, line: 66, type: !4)
!195 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "psixx", scope: !134, file: !1, line: 66, type: !4)
!196 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "psixy", scope: !134, file: !1, line: 66, type: !4)
!197 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "psixz", scope: !134, file: !1, line: 66, type: !4)
!198 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "psiy", scope: !134, file: !1, line: 66, type: !4)
!199 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "psiyy", scope: !134, file: !1, line: 66, type: !4)
!200 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "psiyz", scope: !134, file: !1, line: 66, type: !4)
!201 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "psiz", scope: !134, file: !1, line: 66, type: !4)
!202 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "psizz", scope: !134, file: !1, line: 66, type: !4)
!203 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "r", scope: !134, file: !1, line: 66, type: !4)
!204 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "shift_state", scope: !134, file: !1, line: 66, type: !6)
!205 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "x", scope: !134, file: !1, line: 66, type: !4)
!206 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "y", scope: !134, file: !1, line: 66, type: !4)
!207 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "z", scope: !134, file: !1, line: 66, type: !4)
!208 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "gaussian_amplitude", scope: !134, file: !1, line: 67, type: !209)
!209 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5)
!210 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "gaussian_sigma2", scope: !134, file: !1, line: 67, type: !209)
!211 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "psiminustwo_cut", scope: !134, file: !1, line: 67, type: !209)
!212 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "rot_shift_att_sigma", scope: !134, file: !1, line: 67, type: !209)
!213 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "rotation_omega", scope: !134, file: !1, line: 67, type: !209)
!214 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "advection", scope: !134, file: !1, line: 67, type: !12)
!215 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "evolution_system", scope: !134, file: !1, line: 67, type: !12)
!216 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "initial_data", scope: !134, file: !1, line: 67, type: !12)
!217 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "initial_lapse", scope: !134, file: !1, line: 67, type: !12)
!218 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "initial_shift", scope: !134, file: !1, line: 67, type: !12)
!219 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "mixed_slicing", scope: !134, file: !1, line: 67, type: !12)
!220 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "shift", scope: !134, file: !1, line: 67, type: !12)
!221 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "slicing", scope: !134, file: !1, line: 67, type: !12)
!222 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "slicing_verbose", scope: !134, file: !1, line: 67, type: !12)
!223 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "einstein_register_slicing", scope: !134, file: !1, line: 67, type: !224)
!224 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!225 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "rot_shift_att", scope: !134, file: !1, line: 67, type: !224)
!226 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "rot_shift_att_pow", scope: !134, file: !1, line: 67, type: !224)
!227 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "rotation_psipower", scope: !134, file: !1, line: 67, type: !224)
!228 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "use_conformal", scope: !134, file: !1, line: 67, type: !224)
!229 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "use_conformal_derivs", scope: !134, file: !1, line: 67, type: !224)
!230 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "use_mask", scope: !134, file: !1, line: 67, type: !224)
!231 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "dtfac", scope: !134, file: !1, line: 67, type: !209)
!232 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "gauge_speed", scope: !134, file: !1, line: 67, type: !209)
!233 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "wavecalc", scope: !134, file: !1, line: 67, type: !12)
!234 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "conformal_storage_all", scope: !134, file: !1, line: 67, type: !224)
!235 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "rsquared_in_sphm", scope: !134, file: !1, line: 67, type: !224)
!236 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "domain", scope: !134, file: !1, line: 67, type: !12)
!237 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "timestep_method", scope: !134, file: !1, line: 67, type: !12)
!238 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cctk_pdummy_pointer", scope: !134, file: !1, line: 67, type: !72)
!239 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "index", scope: !134, file: !1, line: 69, type: !7)
!240 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !134, file: !1, line: 69, type: !7)
!241 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "j", scope: !134, file: !1, line: 69, type: !7)
!242 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "k", scope: !134, file: !1, line: 69, type: !7)
!243 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "nx", scope: !134, file: !1, line: 69, type: !7)
!244 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ny", scope: !134, file: !1, line: 69, type: !7)
!245 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "nz", scope: !134, file: !1, line: 69, type: !7)
!246 = !DISubprogram(name: "LapsePsiMinusTwo", scope: !1, file: !1, line: 94, type: !16, isLocal: false, isDefinition: true, scopeLine: 95, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.cGH*)* @LapsePsiMinusTwo, variables: !247)
!247 = !{!248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356}
!248 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "cctkGH", arg: 1, scope: !246, file: !1, line: 94, type: !18)
!249 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cctk_dim", scope: !246, file: !1, line: 97, type: !7)
!250 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cctk_gsh", scope: !246, file: !1, line: 97, type: !6)
!251 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cctk_lsh", scope: !246, file: !1, line: 97, type: !6)
!252 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cctk_lbnd", scope: !246, file: !1, line: 97, type: !6)
!253 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cctk_ubnd", scope: !246, file: !1, line: 97, type: !6)
!254 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cctk_lssh", scope: !246, file: !1, line: 97, type: !6)
!255 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cctk_from", scope: !246, file: !1, line: 97, type: !6)
!256 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cctk_to", scope: !246, file: !1, line: 97, type: !6)
!257 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cctk_bbox", scope: !246, file: !1, line: 97, type: !6)
!258 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cctk_delta_time", scope: !246, file: !1, line: 97, type: !5)
!259 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cctk_time", scope: !246, file: !1, line: 97, type: !5)
!260 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cctk_delta_space", scope: !246, file: !1, line: 97, type: !4)
!261 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cctk_origin_space", scope: !246, file: !1, line: 97, type: !4)
!262 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cctk_levfac", scope: !246, file: !1, line: 97, type: !6)
!263 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cctk_convlevel", scope: !246, file: !1, line: 97, type: !7)
!264 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cctk_nghostzones", scope: !246, file: !1, line: 97, type: !6)
!265 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cctk_iteration", scope: !246, file: !1, line: 97, type: !7)
!266 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cctk_dummy_pointer", scope: !246, file: !1, line: 97, type: !72)
!267 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "detg", scope: !246, file: !1, line: 97, type: !4)
!268 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "gpp", scope: !246, file: !1, line: 97, type: !4)
!269 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "gqp", scope: !246, file: !1, line: 97, type: !4)
!270 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "gqq", scope: !246, file: !1, line: 97, type: !4)
!271 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "grp", scope: !246, file: !1, line: 97, type: !4)
!272 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "grq", scope: !246, file: !1, line: 97, type: !4)
!273 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "grr", scope: !246, file: !1, line: 97, type: !4)
!274 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "kpp", scope: !246, file: !1, line: 97, type: !4)
!275 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "kqp", scope: !246, file: !1, line: 97, type: !4)
!276 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "kqq", scope: !246, file: !1, line: 97, type: !4)
!277 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "krp", scope: !246, file: !1, line: 97, type: !4)
!278 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "krq", scope: !246, file: !1, line: 97, type: !4)
!279 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "krr", scope: !246, file: !1, line: 97, type: !4)
!280 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "trK", scope: !246, file: !1, line: 97, type: !4)
!281 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "active_slicing_handle", scope: !246, file: !1, line: 97, type: !6)
!282 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "alp", scope: !246, file: !1, line: 97, type: !4)
!283 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "betax", scope: !246, file: !1, line: 97, type: !4)
!284 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "betay", scope: !246, file: !1, line: 97, type: !4)
!285 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "betaz", scope: !246, file: !1, line: 97, type: !4)
!286 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "coarse_dx", scope: !246, file: !1, line: 97, type: !4)
!287 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "coarse_dy", scope: !246, file: !1, line: 97, type: !4)
!288 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "coarse_dz", scope: !246, file: !1, line: 97, type: !4)
!289 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "conformal_state", scope: !246, file: !1, line: 97, type: !6)
!290 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "courant_min_time", scope: !246, file: !1, line: 97, type: !4)
!291 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "courant_wave_speed", scope: !246, file: !1, line: 97, type: !4)
!292 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "emask", scope: !246, file: !1, line: 97, type: !4)
!293 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "gxx", scope: !246, file: !1, line: 97, type: !4)
!294 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "gxy", scope: !246, file: !1, line: 97, type: !4)
!295 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "gxz", scope: !246, file: !1, line: 97, type: !4)
!296 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "gyy", scope: !246, file: !1, line: 97, type: !4)
!297 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "gyz", scope: !246, file: !1, line: 97, type: !4)
!298 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "gzz", scope: !246, file: !1, line: 97, type: !4)
!299 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "kxx", scope: !246, file: !1, line: 97, type: !4)
!300 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "kxy", scope: !246, file: !1, line: 97, type: !4)
!301 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "kxz", scope: !246, file: !1, line: 97, type: !4)
!302 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "kyy", scope: !246, file: !1, line: 97, type: !4)
!303 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "kyz", scope: !246, file: !1, line: 97, type: !4)
!304 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "kzz", scope: !246, file: !1, line: 97, type: !4)
!305 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "psi", scope: !246, file: !1, line: 97, type: !4)
!306 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "psix", scope: !246, file: !1, line: 97, type: !4)
!307 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "psixx", scope: !246, file: !1, line: 97, type: !4)
!308 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "psixy", scope: !246, file: !1, line: 97, type: !4)
!309 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "psixz", scope: !246, file: !1, line: 97, type: !4)
!310 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "psiy", scope: !246, file: !1, line: 97, type: !4)
!311 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "psiyy", scope: !246, file: !1, line: 97, type: !4)
!312 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "psiyz", scope: !246, file: !1, line: 97, type: !4)
!313 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "psiz", scope: !246, file: !1, line: 97, type: !4)
!314 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "psizz", scope: !246, file: !1, line: 97, type: !4)
!315 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "r", scope: !246, file: !1, line: 97, type: !4)
!316 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "shift_state", scope: !246, file: !1, line: 97, type: !6)
!317 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "x", scope: !246, file: !1, line: 97, type: !4)
!318 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "y", scope: !246, file: !1, line: 97, type: !4)
!319 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "z", scope: !246, file: !1, line: 97, type: !4)
!320 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "gaussian_amplitude", scope: !246, file: !1, line: 98, type: !209)
!321 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "gaussian_sigma2", scope: !246, file: !1, line: 98, type: !209)
!322 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "psiminustwo_cut", scope: !246, file: !1, line: 98, type: !209)
!323 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "rot_shift_att_sigma", scope: !246, file: !1, line: 98, type: !209)
!324 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "rotation_omega", scope: !246, file: !1, line: 98, type: !209)
!325 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "advection", scope: !246, file: !1, line: 98, type: !12)
!326 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "evolution_system", scope: !246, file: !1, line: 98, type: !12)
!327 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "initial_data", scope: !246, file: !1, line: 98, type: !12)
!328 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "initial_lapse", scope: !246, file: !1, line: 98, type: !12)
!329 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "initial_shift", scope: !246, file: !1, line: 98, type: !12)
!330 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "mixed_slicing", scope: !246, file: !1, line: 98, type: !12)
!331 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "shift", scope: !246, file: !1, line: 98, type: !12)
!332 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "slicing", scope: !246, file: !1, line: 98, type: !12)
!333 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "slicing_verbose", scope: !246, file: !1, line: 98, type: !12)
!334 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "einstein_register_slicing", scope: !246, file: !1, line: 98, type: !224)
!335 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "rot_shift_att", scope: !246, file: !1, line: 98, type: !224)
!336 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "rot_shift_att_pow", scope: !246, file: !1, line: 98, type: !224)
!337 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "rotation_psipower", scope: !246, file: !1, line: 98, type: !224)
!338 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "use_conformal", scope: !246, file: !1, line: 98, type: !224)
!339 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "use_conformal_derivs", scope: !246, file: !1, line: 98, type: !224)
!340 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "use_mask", scope: !246, file: !1, line: 98, type: !224)
!341 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "dtfac", scope: !246, file: !1, line: 98, type: !209)
!342 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "gauge_speed", scope: !246, file: !1, line: 98, type: !209)
!343 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "wavecalc", scope: !246, file: !1, line: 98, type: !12)
!344 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "conformal_storage_all", scope: !246, file: !1, line: 98, type: !224)
!345 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "rsquared_in_sphm", scope: !246, file: !1, line: 98, type: !224)
!346 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "domain", scope: !246, file: !1, line: 98, type: !12)
!347 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "timestep_method", scope: !246, file: !1, line: 98, type: !12)
!348 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cctk_pdummy_pointer", scope: !246, file: !1, line: 98, type: !72)
!349 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "index", scope: !246, file: !1, line: 100, type: !7)
!350 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !246, file: !1, line: 100, type: !7)
!351 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "j", scope: !246, file: !1, line: 100, type: !7)
!352 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "k", scope: !246, file: !1, line: 100, type: !7)
!353 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "nx", scope: !246, file: !1, line: 100, type: !7)
!354 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ny", scope: !246, file: !1, line: 100, type: !7)
!355 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "nz", scope: !246, file: !1, line: 100, type: !7)
!356 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "scut", scope: !246, file: !1, line: 102, type: !5)
!357 = !DISubprogram(name: "LapseIsotropic", scope: !1, file: !1, line: 143, type: !16, isLocal: false, isDefinition: true, scopeLine: 144, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.cGH*)* @LapseIsotropic, variables: !358)
!358 = !{!359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466}
!359 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "cctkGH", arg: 1, scope: !357, file: !1, line: 143, type: !18)
!360 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cctk_dim", scope: !357, file: !1, line: 146, type: !7)
!361 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cctk_gsh", scope: !357, file: !1, line: 146, type: !6)
!362 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cctk_lsh", scope: !357, file: !1, line: 146, type: !6)
!363 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cctk_lbnd", scope: !357, file: !1, line: 146, type: !6)
!364 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cctk_ubnd", scope: !357, file: !1, line: 146, type: !6)
!365 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cctk_lssh", scope: !357, file: !1, line: 146, type: !6)
!366 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cctk_from", scope: !357, file: !1, line: 146, type: !6)
!367 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cctk_to", scope: !357, file: !1, line: 146, type: !6)
!368 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cctk_bbox", scope: !357, file: !1, line: 146, type: !6)
!369 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cctk_delta_time", scope: !357, file: !1, line: 146, type: !5)
!370 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cctk_time", scope: !357, file: !1, line: 146, type: !5)
!371 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cctk_delta_space", scope: !357, file: !1, line: 146, type: !4)
!372 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cctk_origin_space", scope: !357, file: !1, line: 146, type: !4)
!373 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cctk_levfac", scope: !357, file: !1, line: 146, type: !6)
!374 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cctk_convlevel", scope: !357, file: !1, line: 146, type: !7)
!375 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cctk_nghostzones", scope: !357, file: !1, line: 146, type: !6)
!376 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cctk_iteration", scope: !357, file: !1, line: 146, type: !7)
!377 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cctk_dummy_pointer", scope: !357, file: !1, line: 146, type: !72)
!378 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "detg", scope: !357, file: !1, line: 146, type: !4)
!379 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "gpp", scope: !357, file: !1, line: 146, type: !4)
!380 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "gqp", scope: !357, file: !1, line: 146, type: !4)
!381 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "gqq", scope: !357, file: !1, line: 146, type: !4)
!382 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "grp", scope: !357, file: !1, line: 146, type: !4)
!383 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "grq", scope: !357, file: !1, line: 146, type: !4)
!384 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "grr", scope: !357, file: !1, line: 146, type: !4)
!385 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "kpp", scope: !357, file: !1, line: 146, type: !4)
!386 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "kqp", scope: !357, file: !1, line: 146, type: !4)
!387 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "kqq", scope: !357, file: !1, line: 146, type: !4)
!388 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "krp", scope: !357, file: !1, line: 146, type: !4)
!389 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "krq", scope: !357, file: !1, line: 146, type: !4)
!390 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "krr", scope: !357, file: !1, line: 146, type: !4)
!391 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "trK", scope: !357, file: !1, line: 146, type: !4)
!392 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "active_slicing_handle", scope: !357, file: !1, line: 146, type: !6)
!393 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "alp", scope: !357, file: !1, line: 146, type: !4)
!394 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "betax", scope: !357, file: !1, line: 146, type: !4)
!395 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "betay", scope: !357, file: !1, line: 146, type: !4)
!396 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "betaz", scope: !357, file: !1, line: 146, type: !4)
!397 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "coarse_dx", scope: !357, file: !1, line: 146, type: !4)
!398 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "coarse_dy", scope: !357, file: !1, line: 146, type: !4)
!399 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "coarse_dz", scope: !357, file: !1, line: 146, type: !4)
!400 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "conformal_state", scope: !357, file: !1, line: 146, type: !6)
!401 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "courant_min_time", scope: !357, file: !1, line: 146, type: !4)
!402 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "courant_wave_speed", scope: !357, file: !1, line: 146, type: !4)
!403 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "emask", scope: !357, file: !1, line: 146, type: !4)
!404 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "gxx", scope: !357, file: !1, line: 146, type: !4)
!405 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "gxy", scope: !357, file: !1, line: 146, type: !4)
!406 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "gxz", scope: !357, file: !1, line: 146, type: !4)
!407 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "gyy", scope: !357, file: !1, line: 146, type: !4)
!408 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "gyz", scope: !357, file: !1, line: 146, type: !4)
!409 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "gzz", scope: !357, file: !1, line: 146, type: !4)
!410 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "kxx", scope: !357, file: !1, line: 146, type: !4)
!411 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "kxy", scope: !357, file: !1, line: 146, type: !4)
!412 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "kxz", scope: !357, file: !1, line: 146, type: !4)
!413 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "kyy", scope: !357, file: !1, line: 146, type: !4)
!414 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "kyz", scope: !357, file: !1, line: 146, type: !4)
!415 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "kzz", scope: !357, file: !1, line: 146, type: !4)
!416 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "psi", scope: !357, file: !1, line: 146, type: !4)
!417 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "psix", scope: !357, file: !1, line: 146, type: !4)
!418 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "psixx", scope: !357, file: !1, line: 146, type: !4)
!419 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "psixy", scope: !357, file: !1, line: 146, type: !4)
!420 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "psixz", scope: !357, file: !1, line: 146, type: !4)
!421 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "psiy", scope: !357, file: !1, line: 146, type: !4)
!422 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "psiyy", scope: !357, file: !1, line: 146, type: !4)
!423 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "psiyz", scope: !357, file: !1, line: 146, type: !4)
!424 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "psiz", scope: !357, file: !1, line: 146, type: !4)
!425 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "psizz", scope: !357, file: !1, line: 146, type: !4)
!426 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "r", scope: !357, file: !1, line: 146, type: !4)
!427 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "shift_state", scope: !357, file: !1, line: 146, type: !6)
!428 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "x", scope: !357, file: !1, line: 146, type: !4)
!429 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "y", scope: !357, file: !1, line: 146, type: !4)
!430 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "z", scope: !357, file: !1, line: 146, type: !4)
!431 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "gaussian_amplitude", scope: !357, file: !1, line: 147, type: !209)
!432 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "gaussian_sigma2", scope: !357, file: !1, line: 147, type: !209)
!433 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "psiminustwo_cut", scope: !357, file: !1, line: 147, type: !209)
!434 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "rot_shift_att_sigma", scope: !357, file: !1, line: 147, type: !209)
!435 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "rotation_omega", scope: !357, file: !1, line: 147, type: !209)
!436 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "advection", scope: !357, file: !1, line: 147, type: !12)
!437 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "evolution_system", scope: !357, file: !1, line: 147, type: !12)
!438 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "initial_data", scope: !357, file: !1, line: 147, type: !12)
!439 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "initial_lapse", scope: !357, file: !1, line: 147, type: !12)
!440 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "initial_shift", scope: !357, file: !1, line: 147, type: !12)
!441 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "mixed_slicing", scope: !357, file: !1, line: 147, type: !12)
!442 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "shift", scope: !357, file: !1, line: 147, type: !12)
!443 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "slicing", scope: !357, file: !1, line: 147, type: !12)
!444 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "slicing_verbose", scope: !357, file: !1, line: 147, type: !12)
!445 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "einstein_register_slicing", scope: !357, file: !1, line: 147, type: !224)
!446 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "rot_shift_att", scope: !357, file: !1, line: 147, type: !224)
!447 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "rot_shift_att_pow", scope: !357, file: !1, line: 147, type: !224)
!448 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "rotation_psipower", scope: !357, file: !1, line: 147, type: !224)
!449 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "use_conformal", scope: !357, file: !1, line: 147, type: !224)
!450 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "use_conformal_derivs", scope: !357, file: !1, line: 147, type: !224)
!451 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "use_mask", scope: !357, file: !1, line: 147, type: !224)
!452 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "dtfac", scope: !357, file: !1, line: 147, type: !209)
!453 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "gauge_speed", scope: !357, file: !1, line: 147, type: !209)
!454 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "wavecalc", scope: !357, file: !1, line: 147, type: !12)
!455 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "conformal_storage_all", scope: !357, file: !1, line: 147, type: !224)
!456 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "rsquared_in_sphm", scope: !357, file: !1, line: 147, type: !224)
!457 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "domain", scope: !357, file: !1, line: 147, type: !12)
!458 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "timestep_method", scope: !357, file: !1, line: 147, type: !12)
!459 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cctk_pdummy_pointer", scope: !357, file: !1, line: 147, type: !72)
!460 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "index", scope: !357, file: !1, line: 149, type: !7)
!461 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !357, file: !1, line: 149, type: !7)
!462 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "j", scope: !357, file: !1, line: 149, type: !7)
!463 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "k", scope: !357, file: !1, line: 149, type: !7)
!464 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "nx", scope: !357, file: !1, line: 149, type: !7)
!465 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ny", scope: !357, file: !1, line: 149, type: !7)
!466 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "nz", scope: !357, file: !1, line: 149, type: !7)
!467 = !{!468}
!468 = !DIGlobalVariable(name: "rcsid", scope: !0, file: !1, line: 21, type: !12, isLocal: true, isDefinition: true)
!469 = !{i32 2, !"Dwarf Version", i32 2}
!470 = !{i32 2, !"Debug Info Version", i32 700000003}
!471 = !{i32 1, !"PIC Level", i32 2}
!472 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!473 = !DILocation(line: 23, column: 1, scope: !9)
!474 = !DIExpression()
!475 = !DILocation(line: 33, column: 15, scope: !15)
!476 = !DILocation(line: 36, column: 3, scope: !15)
!477 = !{!478, !482, i64 16}
!478 = !{!"", !479, i64 0, !479, i64 4, !482, i64 8, !482, i64 16, !482, i64 24, !482, i64 32, !482, i64 40, !482, i64 48, !482, i64 56, !483, i64 64, !482, i64 72, !482, i64 80, !482, i64 88, !482, i64 96, !479, i64 104, !482, i64 112, !483, i64 120, !482, i64 128, !482, i64 136, !482, i64 144}
!479 = !{!"int", !480, i64 0}
!480 = !{!"omnipotent char", !481, i64 0}
!481 = !{!"Simple C/C++ TBAA"}
!482 = !{!"any pointer", !480, i64 0}
!483 = !{!"double", !480, i64 0}
!484 = !{!478, !482, i64 128}
!485 = !{!482, !482, i64 0}
!486 = !DILocation(line: 40, column: 8, scope: !15)
!487 = !{!479, !479, i64 0}
!488 = !DILocation(line: 38, column: 19, scope: !15)
!489 = !DILocation(line: 41, column: 8, scope: !15)
!490 = !DILocation(line: 38, column: 22, scope: !15)
!491 = !DILocation(line: 42, column: 8, scope: !15)
!492 = !DILocation(line: 38, column: 25, scope: !15)
!493 = !DILocation(line: 38, column: 17, scope: !15)
!494 = !DILocation(line: 44, column: 14, scope: !495)
!495 = distinct !DILexicalBlock(scope: !496, file: !1, line: 44, column: 3)
!496 = distinct !DILexicalBlock(scope: !15, file: !1, line: 44, column: 3)
!497 = !DILocation(line: 44, column: 3, scope: !496)
!498 = !DILocation(line: 46, column: 16, scope: !499)
!499 = distinct !DILexicalBlock(scope: !500, file: !1, line: 46, column: 5)
!500 = distinct !DILexicalBlock(scope: !501, file: !1, line: 46, column: 5)
!501 = distinct !DILexicalBlock(scope: !495, file: !1, line: 45, column: 3)
!502 = !DILocation(line: 48, column: 18, scope: !503)
!503 = distinct !DILexicalBlock(scope: !504, file: !1, line: 48, column: 7)
!504 = distinct !DILexicalBlock(scope: !505, file: !1, line: 48, column: 7)
!505 = distinct !DILexicalBlock(scope: !499, file: !1, line: 47, column: 5)
!506 = !DILocation(line: 46, column: 5, scope: !500)
!507 = !DILocation(line: 48, column: 7, scope: !504)
!508 = !DILocation(line: 51, column: 17, scope: !509)
!509 = distinct !DILexicalBlock(scope: !503, file: !1, line: 49, column: 7)
!510 = !DILocation(line: 52, column: 20, scope: !509)
!511 = !DILocation(line: 46, column: 23, scope: !499)
!512 = !DILocation(line: 38, column: 15, scope: !15)
!513 = !DILocation(line: 44, column: 21, scope: !495)
!514 = !DILocation(line: 58, column: 25, scope: !15)
!515 = !DILocation(line: 63, column: 20, scope: !134)
!516 = !DILocation(line: 66, column: 3, scope: !134)
!517 = !DILocation(line: 67, column: 3, scope: !134)
!518 = !{!519, !483, i64 0}
!519 = !{!"", !483, i64 0, !483, i64 8, !483, i64 16, !483, i64 24, !483, i64 32, !482, i64 40, !482, i64 48, !482, i64 56, !482, i64 64, !482, i64 72, !482, i64 80, !482, i64 88, !482, i64 96, !482, i64 104, !479, i64 112, !479, i64 116, !479, i64 120, !479, i64 124, !479, i64 128, !479, i64 132, !479, i64 136}
!520 = !{!519, !483, i64 8}
!521 = !DILocation(line: 71, column: 8, scope: !134)
!522 = !DILocation(line: 69, column: 19, scope: !134)
!523 = !DILocation(line: 72, column: 8, scope: !134)
!524 = !DILocation(line: 69, column: 22, scope: !134)
!525 = !DILocation(line: 73, column: 8, scope: !134)
!526 = !DILocation(line: 69, column: 25, scope: !134)
!527 = !DILocation(line: 69, column: 17, scope: !134)
!528 = !DILocation(line: 75, column: 14, scope: !529)
!529 = distinct !DILexicalBlock(scope: !530, file: !1, line: 75, column: 3)
!530 = distinct !DILexicalBlock(scope: !134, file: !1, line: 75, column: 3)
!531 = !DILocation(line: 75, column: 3, scope: !530)
!532 = !DILocation(line: 77, column: 16, scope: !533)
!533 = distinct !DILexicalBlock(scope: !534, file: !1, line: 77, column: 5)
!534 = distinct !DILexicalBlock(scope: !535, file: !1, line: 77, column: 5)
!535 = distinct !DILexicalBlock(scope: !529, file: !1, line: 76, column: 3)
!536 = !DILocation(line: 79, column: 18, scope: !537)
!537 = distinct !DILexicalBlock(scope: !538, file: !1, line: 79, column: 7)
!538 = distinct !DILexicalBlock(scope: !539, file: !1, line: 79, column: 7)
!539 = distinct !DILexicalBlock(scope: !533, file: !1, line: 78, column: 5)
!540 = !DILocation(line: 77, column: 5, scope: !534)
!541 = !DILocation(line: 79, column: 7, scope: !538)
!542 = !DILocation(line: 81, column: 17, scope: !543)
!543 = distinct !DILexicalBlock(scope: !537, file: !1, line: 80, column: 7)
!544 = !DILocation(line: 83, column: 9, scope: !543)
!545 = !{!483, !483, i64 0}
!546 = !DILocation(line: 83, column: 17, scope: !543)
!547 = !DILocation(line: 83, column: 26, scope: !543)
!548 = !DILocation(line: 83, column: 4, scope: !543)
!549 = !DILocation(line: 82, column: 46, scope: !543)
!550 = !DILocation(line: 82, column: 26, scope: !543)
!551 = !DILocation(line: 82, column: 9, scope: !543)
!552 = !DILocation(line: 82, column: 20, scope: !543)
!553 = !DILocation(line: 77, column: 23, scope: !533)
!554 = !DILocation(line: 69, column: 15, scope: !134)
!555 = !DILocation(line: 75, column: 21, scope: !529)
!556 = !DILocation(line: 88, column: 49, scope: !134)
!557 = !DILocation(line: 94, column: 23, scope: !246)
!558 = !DILocation(line: 97, column: 3, scope: !246)
!559 = !DILocation(line: 98, column: 3, scope: !246)
!560 = !{!519, !483, i64 16}
!561 = !DILocation(line: 104, column: 8, scope: !246)
!562 = !DILocation(line: 100, column: 19, scope: !246)
!563 = !DILocation(line: 105, column: 8, scope: !246)
!564 = !DILocation(line: 100, column: 22, scope: !246)
!565 = !DILocation(line: 106, column: 8, scope: !246)
!566 = !DILocation(line: 100, column: 25, scope: !246)
!567 = !DILocation(line: 122, column: 10, scope: !246)
!568 = !DILocation(line: 102, column: 13, scope: !246)
!569 = !DILocation(line: 100, column: 17, scope: !246)
!570 = !DILocation(line: 124, column: 14, scope: !571)
!571 = distinct !DILexicalBlock(scope: !572, file: !1, line: 124, column: 3)
!572 = distinct !DILexicalBlock(scope: !246, file: !1, line: 124, column: 3)
!573 = !DILocation(line: 124, column: 3, scope: !572)
!574 = !DILocation(line: 126, column: 16, scope: !575)
!575 = distinct !DILexicalBlock(scope: !576, file: !1, line: 126, column: 5)
!576 = distinct !DILexicalBlock(scope: !577, file: !1, line: 126, column: 5)
!577 = distinct !DILexicalBlock(scope: !571, file: !1, line: 125, column: 3)
!578 = !DILocation(line: 128, column: 18, scope: !579)
!579 = distinct !DILexicalBlock(scope: !580, file: !1, line: 128, column: 7)
!580 = distinct !DILexicalBlock(scope: !581, file: !1, line: 128, column: 7)
!581 = distinct !DILexicalBlock(scope: !575, file: !1, line: 127, column: 5)
!582 = !DILocation(line: 131, column: 36, scope: !583)
!583 = distinct !DILexicalBlock(scope: !579, file: !1, line: 129, column: 7)
!584 = !DILocation(line: 131, column: 31, scope: !583)
!585 = !DILocation(line: 126, column: 5, scope: !576)
!586 = !DILocation(line: 128, column: 7, scope: !580)
!587 = !DILocation(line: 130, column: 17, scope: !583)
!588 = !DILocation(line: 131, column: 49, scope: !583)
!589 = !DILocation(line: 131, column: 48, scope: !583)
!590 = !DILocation(line: 131, column: 42, scope: !583)
!591 = !DILocation(line: 132, column: 33, scope: !583)
!592 = !DILocation(line: 132, column: 20, scope: !583)
!593 = !DILocation(line: 131, column: 22, scope: !583)
!594 = !DILocation(line: 131, column: 9, scope: !583)
!595 = !DILocation(line: 131, column: 20, scope: !583)
!596 = !DILocation(line: 126, column: 23, scope: !575)
!597 = !DILocation(line: 100, column: 15, scope: !246)
!598 = !DILocation(line: 124, column: 21, scope: !571)
!599 = !DILocation(line: 137, column: 49, scope: !246)
!600 = !DILocation(line: 143, column: 21, scope: !357)
!601 = !DILocation(line: 146, column: 3, scope: !357)
!602 = !DILocation(line: 151, column: 8, scope: !357)
!603 = !DILocation(line: 149, column: 19, scope: !357)
!604 = !DILocation(line: 152, column: 8, scope: !357)
!605 = !DILocation(line: 149, column: 22, scope: !357)
!606 = !DILocation(line: 153, column: 8, scope: !357)
!607 = !DILocation(line: 149, column: 25, scope: !357)
!608 = !DILocation(line: 149, column: 17, scope: !357)
!609 = !DILocation(line: 166, column: 14, scope: !610)
!610 = distinct !DILexicalBlock(scope: !611, file: !1, line: 166, column: 3)
!611 = distinct !DILexicalBlock(scope: !357, file: !1, line: 166, column: 3)
!612 = !DILocation(line: 166, column: 3, scope: !611)
!613 = !DILocation(line: 168, column: 16, scope: !614)
!614 = distinct !DILexicalBlock(scope: !615, file: !1, line: 168, column: 5)
!615 = distinct !DILexicalBlock(scope: !616, file: !1, line: 168, column: 5)
!616 = distinct !DILexicalBlock(scope: !610, file: !1, line: 167, column: 3)
!617 = !DILocation(line: 170, column: 18, scope: !618)
!618 = distinct !DILexicalBlock(scope: !619, file: !1, line: 170, column: 7)
!619 = distinct !DILexicalBlock(scope: !620, file: !1, line: 170, column: 7)
!620 = distinct !DILexicalBlock(scope: !614, file: !1, line: 169, column: 5)
!621 = !DILocation(line: 168, column: 5, scope: !615)
!622 = !DILocation(line: 170, column: 7, scope: !619)
!623 = !DILocation(line: 172, column: 17, scope: !624)
!624 = distinct !DILexicalBlock(scope: !618, file: !1, line: 171, column: 7)
!625 = !DILocation(line: 173, column: 26, scope: !624)
!626 = !DILocation(line: 173, column: 25, scope: !624)
!627 = !DILocation(line: 173, column: 37, scope: !624)
!628 = !DILocation(line: 173, column: 9, scope: !624)
!629 = !DILocation(line: 173, column: 20, scope: !624)
!630 = !DILocation(line: 168, column: 23, scope: !614)
!631 = !DILocation(line: 149, column: 15, scope: !357)
!632 = !DILocation(line: 166, column: 21, scope: !610)
!633 = !DILocation(line: 147, column: 3, scope: !357)
!634 = !DILocation(line: 178, column: 49, scope: !357)
