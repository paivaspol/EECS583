; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/Einstein/InitialEinstein.c'
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
@.str53 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@.str54 = private unnamed_addr constant [5 x i8] c"zero\00", align 1
@.str55 = private unnamed_addr constant [103 x i8] c"$Header: /cactus/CactusEinstein/Einstein/src/InitialEinstein.c,v 1.8 2001/05/10 12:35:52 goodale Exp $\00", align 1

; Function Attrs: nounwind optsize readnone ssp uwtable
define i8* @CCTKi_version_CactusEinstein_Einstein_InitialEinstein_c() #0 {
  ret i8* getelementptr inbounds ([103 x i8]* @.str55, i64 0, i64 0), !dbg !168
}

; Function Attrs: nounwind optsize ssp uwtable
define void @InitialEinstein(%struct.cGH* nocapture readonly %cctkGH) #1 {
  tail call void @llvm.dbg.value(metadata %struct.cGH* %cctkGH, i64 0, metadata !53, metadata !169), !dbg !170
  %1 = getelementptr inbounds %struct.cGH* %cctkGH, i64 0, i32 3, !dbg !171
  %2 = load i32** %1, align 8, !dbg !171, !tbaa !172
  tail call void @llvm.dbg.value(metadata i32* %2, i64 0, metadata !56, metadata !169), !dbg !171
  %3 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([15 x i8]* @.str, i64 0, i64 0)) #4, !dbg !171
  %4 = getelementptr inbounds %struct.cGH* %cctkGH, i64 0, i32 17, !dbg !171
  %5 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str1, i64 0, i64 0)) #4, !dbg !171
  %6 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str2, i64 0, i64 0)) #4, !dbg !171
  %7 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str3, i64 0, i64 0)) #4, !dbg !171
  %8 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str4, i64 0, i64 0)) #4, !dbg !171
  %9 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str5, i64 0, i64 0)) #4, !dbg !171
  %10 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str6, i64 0, i64 0)) #4, !dbg !171
  %11 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str7, i64 0, i64 0)) #4, !dbg !171
  %12 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str8, i64 0, i64 0)) #4, !dbg !171
  %13 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str9, i64 0, i64 0)) #4, !dbg !171
  %14 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str10, i64 0, i64 0)) #4, !dbg !171
  %15 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str11, i64 0, i64 0)) #4, !dbg !171
  %16 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str12, i64 0, i64 0)) #4, !dbg !171
  %17 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str13, i64 0, i64 0)) #4, !dbg !171
  %18 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([32 x i8]* @.str14, i64 0, i64 0)) #4, !dbg !171
  %19 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str15, i64 0, i64 0)) #4, !dbg !171
  %20 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([16 x i8]* @.str16, i64 0, i64 0)) #4, !dbg !171
  %21 = sext i32 %20 to i64, !dbg !171
  %22 = load i8**** %4, align 8, !dbg !171, !tbaa !179
  %23 = getelementptr inbounds i8*** %22, i64 %21, !dbg !171
  %24 = bitcast i8*** %23 to double***, !dbg !171
  %25 = load double*** %24, align 8, !dbg !171, !tbaa !180
  %26 = load double** %25, align 8, !dbg !171, !tbaa !180
  tail call void @llvm.dbg.value(metadata double* %26, i64 0, metadata !90, metadata !169), !dbg !171
  %27 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([16 x i8]* @.str17, i64 0, i64 0)) #4, !dbg !171
  %28 = sext i32 %27 to i64, !dbg !171
  %29 = load i8**** %4, align 8, !dbg !171, !tbaa !179
  %30 = getelementptr inbounds i8*** %29, i64 %28, !dbg !171
  %31 = bitcast i8*** %30 to double***, !dbg !171
  %32 = load double*** %31, align 8, !dbg !171, !tbaa !180
  %33 = load double** %32, align 8, !dbg !171, !tbaa !180
  tail call void @llvm.dbg.value(metadata double* %33, i64 0, metadata !91, metadata !169), !dbg !171
  %34 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([16 x i8]* @.str18, i64 0, i64 0)) #4, !dbg !171
  %35 = sext i32 %34 to i64, !dbg !171
  %36 = load i8**** %4, align 8, !dbg !171, !tbaa !179
  %37 = getelementptr inbounds i8*** %36, i64 %35, !dbg !171
  %38 = bitcast i8*** %37 to double***, !dbg !171
  %39 = load double*** %38, align 8, !dbg !171, !tbaa !180
  %40 = load double** %39, align 8, !dbg !171, !tbaa !180
  tail call void @llvm.dbg.value(metadata double* %40, i64 0, metadata !92, metadata !169), !dbg !171
  %41 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([16 x i8]* @.str19, i64 0, i64 0)) #4, !dbg !171
  %42 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([16 x i8]* @.str20, i64 0, i64 0)) #4, !dbg !171
  %43 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([16 x i8]* @.str21, i64 0, i64 0)) #4, !dbg !171
  %44 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([26 x i8]* @.str22, i64 0, i64 0)) #4, !dbg !171
  %45 = sext i32 %44 to i64, !dbg !171
  %46 = load i8**** %4, align 8, !dbg !171, !tbaa !179
  %47 = getelementptr inbounds i8*** %46, i64 %45, !dbg !171
  %48 = bitcast i8*** %47 to i32***, !dbg !171
  %49 = load i32*** %48, align 8, !dbg !171, !tbaa !180
  %50 = load i32** %49, align 8, !dbg !171, !tbaa !180
  tail call void @llvm.dbg.value(metadata i32* %50, i64 0, metadata !96, metadata !169), !dbg !171
  %51 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([23 x i8]* @.str23, i64 0, i64 0)) #4, !dbg !171
  %52 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([25 x i8]* @.str24, i64 0, i64 0)) #4, !dbg !171
  %53 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([16 x i8]* @.str25, i64 0, i64 0)) #4, !dbg !171
  %54 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str26, i64 0, i64 0)) #4, !dbg !171
  %55 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str27, i64 0, i64 0)) #4, !dbg !171
  %56 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str28, i64 0, i64 0)) #4, !dbg !171
  %57 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str29, i64 0, i64 0)) #4, !dbg !171
  %58 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str30, i64 0, i64 0)) #4, !dbg !171
  %59 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str31, i64 0, i64 0)) #4, !dbg !171
  %60 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str32, i64 0, i64 0)) #4, !dbg !171
  %61 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str33, i64 0, i64 0)) #4, !dbg !171
  %62 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str34, i64 0, i64 0)) #4, !dbg !171
  %63 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str35, i64 0, i64 0)) #4, !dbg !171
  %64 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str36, i64 0, i64 0)) #4, !dbg !171
  %65 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str37, i64 0, i64 0)) #4, !dbg !171
  %66 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str38, i64 0, i64 0)) #4, !dbg !171
  %67 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([15 x i8]* @.str39, i64 0, i64 0)) #4, !dbg !171
  %68 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([16 x i8]* @.str40, i64 0, i64 0)) #4, !dbg !171
  %69 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([16 x i8]* @.str41, i64 0, i64 0)) #4, !dbg !171
  %70 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([16 x i8]* @.str42, i64 0, i64 0)) #4, !dbg !171
  %71 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([15 x i8]* @.str43, i64 0, i64 0)) #4, !dbg !171
  %72 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([16 x i8]* @.str44, i64 0, i64 0)) #4, !dbg !171
  %73 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([16 x i8]* @.str45, i64 0, i64 0)) #4, !dbg !171
  %74 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([15 x i8]* @.str46, i64 0, i64 0)) #4, !dbg !171
  %75 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([16 x i8]* @.str47, i64 0, i64 0)) #4, !dbg !171
  %76 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([8 x i8]* @.str48, i64 0, i64 0)) #4, !dbg !171
  %77 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([22 x i8]* @.str49, i64 0, i64 0)) #4, !dbg !171
  %78 = sext i32 %77 to i64, !dbg !171
  %79 = load i8**** %4, align 8, !dbg !171, !tbaa !179
  %80 = getelementptr inbounds i8*** %79, i64 %78, !dbg !171
  %81 = bitcast i8*** %80 to i32***, !dbg !171
  %82 = load i32*** %81, align 8, !dbg !171, !tbaa !180
  %83 = load i32** %82, align 8, !dbg !171, !tbaa !180
  tail call void @llvm.dbg.value(metadata i32* %83, i64 0, metadata !123, metadata !169), !dbg !171
  %84 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([8 x i8]* @.str50, i64 0, i64 0)) #4, !dbg !171
  %85 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([8 x i8]* @.str51, i64 0, i64 0)) #4, !dbg !171
  %86 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([8 x i8]* @.str52, i64 0, i64 0)) #4, !dbg !171
  %87 = load i8** getelementptr inbounds (%struct.anon* @einsteinrest_, i64 0, i32 11), align 8, !dbg !181, !tbaa !182
  tail call void @llvm.dbg.value(metadata i8* %87, i64 0, metadata !139, metadata !169), !dbg !181
  %88 = load i32* getelementptr inbounds (%struct.anon* @einsteinrest_, i64 0, i32 18), align 8, !dbg !181, !tbaa !184
  tail call void @llvm.dbg.value(metadata i32 %88, i64 0, metadata !147, metadata !169), !dbg !181
  %not. = icmp ne i32 %88, 0
  %. = zext i1 %not. to i32
  store i32 %., i32* %50, align 4, !dbg !185, !tbaa !188
  %89 = tail call i32 @CCTK_Equals(i8* %87, i8* getelementptr inbounds ([5 x i8]* @.str53, i64 0, i64 0)) #4, !dbg !189
  %90 = icmp eq i32 %89, 0, !dbg !189
  br i1 %90, label %91, label %121, !dbg !191

; <label>:91                                      ; preds = %0
  store i32 1, i32* %83, align 4, !dbg !192, !tbaa !188
  %92 = tail call i32 @CCTK_Equals(i8* %87, i8* getelementptr inbounds ([5 x i8]* @.str54, i64 0, i64 0)) #4, !dbg !194
  %93 = icmp eq i32 %92, 0, !dbg !194
  br i1 %93, label %.loopexit, label %.preheader2, !dbg !196

.preheader2:                                      ; preds = %91
  %94 = getelementptr inbounds i32* %2, i64 2, !dbg !197
  %95 = load i32* %94, align 4, !dbg !197, !tbaa !188
  %96 = icmp sgt i32 %95, 0, !dbg !201
  br i1 %96, label %.preheader1.lr.ph, label %.loopexit, !dbg !202

.preheader1.lr.ph:                                ; preds = %.preheader2
  %97 = getelementptr inbounds i32* %2, i64 1, !dbg !203
  %98 = load i32* %97, align 4, !dbg !203, !tbaa !188
  %99 = icmp sgt i32 %98, 0, !dbg !207
  br label %.preheader1, !dbg !202

.preheader1:                                      ; preds = %.preheader1.lr.ph, %._crit_edge5
  %k.06 = phi i32 [ 0, %.preheader1.lr.ph ], [ %119, %._crit_edge5 ]
  br i1 %99, label %.preheader.lr.ph, label %._crit_edge5, !dbg !208

.preheader.lr.ph:                                 ; preds = %.preheader1
  %100 = load i32* %2, align 4, !dbg !209, !tbaa !188
  %101 = icmp sgt i32 %100, 0, !dbg !213
  br label %.preheader, !dbg !208

.preheader:                                       ; preds = %.preheader.lr.ph, %._crit_edge
  %j.04 = phi i32 [ 0, %.preheader.lr.ph ], [ %117, %._crit_edge ]
  br i1 %101, label %.lr.ph, label %._crit_edge, !dbg !214

.lr.ph:                                           ; preds = %.preheader
  %102 = load i32** %1, align 8, !dbg !215, !tbaa !172
  %103 = load i32* %102, align 4, !dbg !215, !tbaa !188
  %104 = getelementptr inbounds i32* %102, i64 1, !dbg !215
  %105 = load i32* %104, align 4, !dbg !215, !tbaa !188
  %106 = mul nsw i32 %105, %k.06, !dbg !215
  %107 = add nsw i32 %106, %j.04, !dbg !215
  %108 = mul nsw i32 %107, %103, !dbg !215
  %109 = sext i32 %108 to i64, !dbg !214
  %110 = sext i32 %100 to i64, !dbg !214
  br label %111, !dbg !214

; <label>:111                                     ; preds = %.lr.ph, %111
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %111 ]
  %112 = add nsw i64 %109, %indvars.iv, !dbg !215
  %113 = getelementptr inbounds double* %26, i64 %112, !dbg !217
  store double 0.000000e+00, double* %113, align 8, !dbg !218, !tbaa !219
  %114 = getelementptr inbounds double* %33, i64 %112, !dbg !220
  store double 0.000000e+00, double* %114, align 8, !dbg !221, !tbaa !219
  %115 = getelementptr inbounds double* %40, i64 %112, !dbg !222
  store double 0.000000e+00, double* %115, align 8, !dbg !223, !tbaa !219
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !214
  %116 = icmp slt i64 %indvars.iv.next, %110, !dbg !213
  br i1 %116, label %111, label %._crit_edge, !dbg !214

._crit_edge:                                      ; preds = %111, %.preheader
  %117 = add nuw nsw i32 %j.04, 1, !dbg !224
  tail call void @llvm.dbg.value(metadata i32 %117, i64 0, metadata !159, metadata !169), !dbg !225
  %118 = icmp slt i32 %117, %98, !dbg !207
  br i1 %118, label %.preheader, label %._crit_edge5, !dbg !208

._crit_edge5:                                     ; preds = %._crit_edge, %.preheader1
  %119 = add nuw nsw i32 %k.06, 1, !dbg !226
  tail call void @llvm.dbg.value(metadata i32 %119, i64 0, metadata !160, metadata !169), !dbg !227
  %120 = icmp slt i32 %119, %95, !dbg !201
  br i1 %120, label %.preheader1, label %.loopexit, !dbg !202

; <label>:121                                     ; preds = %0
  store i32 0, i32* %83, align 4, !dbg !228, !tbaa !188
  br label %.loopexit

.loopexit:                                        ; preds = %._crit_edge5, %.preheader2, %91, %121
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !157, metadata !169), !dbg !181
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !157, metadata !169), !dbg !181
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !157, metadata !169), !dbg !181
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !157, metadata !169), !dbg !181
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !157, metadata !169), !dbg !181
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !157, metadata !169), !dbg !181
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !157, metadata !169), !dbg !181
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !157, metadata !169), !dbg !181
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !157, metadata !169), !dbg !181
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !157, metadata !169), !dbg !181
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !157, metadata !169), !dbg !181
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !157, metadata !169), !dbg !181
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !157, metadata !169), !dbg !181
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !157, metadata !169), !dbg !181
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !157, metadata !169), !dbg !181
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !157, metadata !169), !dbg !181
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !157, metadata !169), !dbg !181
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !157, metadata !169), !dbg !181
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !157, metadata !169), !dbg !181
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !157, metadata !169), !dbg !181
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !157, metadata !169), !dbg !181
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !157, metadata !169), !dbg !181
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !157, metadata !169), !dbg !181
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !157, metadata !169), !dbg !181
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !157, metadata !169), !dbg !181
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !157, metadata !169), !dbg !181
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !157, metadata !169), !dbg !181
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !157, metadata !169), !dbg !181
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !157, metadata !169), !dbg !181
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !71, metadata !169), !dbg !171
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !71, metadata !169), !dbg !171
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !71, metadata !169), !dbg !171
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !71, metadata !169), !dbg !171
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !71, metadata !169), !dbg !171
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !71, metadata !169), !dbg !171
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !71, metadata !169), !dbg !171
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !71, metadata !169), !dbg !171
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !71, metadata !169), !dbg !171
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !71, metadata !169), !dbg !171
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !71, metadata !169), !dbg !171
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !71, metadata !169), !dbg !171
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !71, metadata !169), !dbg !171
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !71, metadata !169), !dbg !171
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !71, metadata !169), !dbg !171
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !71, metadata !169), !dbg !171
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !71, metadata !169), !dbg !171
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !71, metadata !169), !dbg !171
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !71, metadata !169), !dbg !171
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !71, metadata !169), !dbg !171
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !71, metadata !169), !dbg !171
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !71, metadata !169), !dbg !171
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !71, metadata !169), !dbg !171
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !71, metadata !169), !dbg !171
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !71, metadata !169), !dbg !171
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !71, metadata !169), !dbg !171
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !71, metadata !169), !dbg !171
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !71, metadata !169), !dbg !171
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !71, metadata !169), !dbg !171
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !71, metadata !169), !dbg !171
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !71, metadata !169), !dbg !171
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !71, metadata !169), !dbg !171
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !71, metadata !169), !dbg !171
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !71, metadata !169), !dbg !171
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !71, metadata !169), !dbg !171
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !71, metadata !169), !dbg !171
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !71, metadata !169), !dbg !171
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !71, metadata !169), !dbg !171
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !71, metadata !169), !dbg !171
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !71, metadata !169), !dbg !171
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !71, metadata !169), !dbg !171
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !71, metadata !169), !dbg !171
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !71, metadata !169), !dbg !171
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !71, metadata !169), !dbg !171
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !71, metadata !169), !dbg !171
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !71, metadata !169), !dbg !171
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !71, metadata !169), !dbg !171
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !71, metadata !169), !dbg !171
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !71, metadata !169), !dbg !171
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !71, metadata !169), !dbg !171
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !71, metadata !169), !dbg !171
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !71, metadata !169), !dbg !171
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !71, metadata !169), !dbg !171
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !71, metadata !169), !dbg !171
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !71, metadata !169), !dbg !171
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !71, metadata !169), !dbg !171
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !71, metadata !169), !dbg !171
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !71, metadata !169), !dbg !171
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !71, metadata !169), !dbg !171
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !71, metadata !169), !dbg !171
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !71, metadata !169), !dbg !171
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !71, metadata !169), !dbg !171
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !71, metadata !169), !dbg !171
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !71, metadata !169), !dbg !171
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !71, metadata !169), !dbg !171
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !71, metadata !169), !dbg !171
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !71, metadata !169), !dbg !171
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !71, metadata !169), !dbg !171
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !71, metadata !169), !dbg !171
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !71, metadata !169), !dbg !171
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !71, metadata !169), !dbg !171
  ret void, !dbg !230
}

; Function Attrs: optsize
declare i32 @CCTK_VarIndex(i8*) #2

; Function Attrs: optsize
declare i32 @CCTK_Equals(i8*, i8*) #2

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #3

attributes #0 = { nounwind optsize readnone ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }
attributes #4 = { nounwind optsize }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!164, !165, !166}
!llvm.ident = !{!167}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !3, subprograms: !8, globals: !162, imports: !2)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/Einstein/InitialEinstein.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{}
!3 = !{!4, !6}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64, align: 64)
!5 = !DIBasicType(name: "double", size: 64, align: 64, encoding: DW_ATE_float)
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64, align: 64)
!7 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!8 = !{!9, !15}
!9 = !DISubprogram(name: "CCTKi_version_CactusEinstein_Einstein_InitialEinstein_c", scope: !1, file: !1, line: 12, type: !10, isLocal: false, isDefinition: true, scopeLine: 12, flags: DIFlagPrototyped, isOptimized: true, function: i8* ()* @CCTKi_version_CactusEinstein_Einstein_InitialEinstein_c, variables: !2)
!10 = !DISubroutineType(types: !11)
!11 = !{!12}
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64, align: 64)
!13 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !14)
!14 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!15 = !DISubprogram(name: "InitialEinstein", scope: !1, file: !1, line: 14, type: !16, isLocal: false, isDefinition: true, scopeLine: 15, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.cGH*)* @InitialEinstein, variables: !52)
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
!52 = !{!53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161}
!53 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "cctkGH", arg: 1, scope: !15, file: !1, line: 14, type: !18)
!54 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cctk_dim", scope: !15, file: !1, line: 17, type: !7)
!55 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cctk_gsh", scope: !15, file: !1, line: 17, type: !6)
!56 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cctk_lsh", scope: !15, file: !1, line: 17, type: !6)
!57 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cctk_lbnd", scope: !15, file: !1, line: 17, type: !6)
!58 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cctk_ubnd", scope: !15, file: !1, line: 17, type: !6)
!59 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cctk_lssh", scope: !15, file: !1, line: 17, type: !6)
!60 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cctk_from", scope: !15, file: !1, line: 17, type: !6)
!61 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cctk_to", scope: !15, file: !1, line: 17, type: !6)
!62 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cctk_bbox", scope: !15, file: !1, line: 17, type: !6)
!63 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cctk_delta_time", scope: !15, file: !1, line: 17, type: !5)
!64 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cctk_time", scope: !15, file: !1, line: 17, type: !5)
!65 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cctk_delta_space", scope: !15, file: !1, line: 17, type: !4)
!66 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cctk_origin_space", scope: !15, file: !1, line: 17, type: !4)
!67 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cctk_levfac", scope: !15, file: !1, line: 17, type: !6)
!68 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cctk_convlevel", scope: !15, file: !1, line: 17, type: !7)
!69 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cctk_nghostzones", scope: !15, file: !1, line: 17, type: !6)
!70 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cctk_iteration", scope: !15, file: !1, line: 17, type: !7)
!71 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cctk_dummy_pointer", scope: !15, file: !1, line: 17, type: !72)
!72 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !73, size: 64, align: 64)
!73 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!74 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "detg", scope: !15, file: !1, line: 17, type: !4)
!75 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "gpp", scope: !15, file: !1, line: 17, type: !4)
!76 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "gqp", scope: !15, file: !1, line: 17, type: !4)
!77 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "gqq", scope: !15, file: !1, line: 17, type: !4)
!78 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "grp", scope: !15, file: !1, line: 17, type: !4)
!79 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "grq", scope: !15, file: !1, line: 17, type: !4)
!80 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "grr", scope: !15, file: !1, line: 17, type: !4)
!81 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "kpp", scope: !15, file: !1, line: 17, type: !4)
!82 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "kqp", scope: !15, file: !1, line: 17, type: !4)
!83 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "kqq", scope: !15, file: !1, line: 17, type: !4)
!84 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "krp", scope: !15, file: !1, line: 17, type: !4)
!85 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "krq", scope: !15, file: !1, line: 17, type: !4)
!86 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "krr", scope: !15, file: !1, line: 17, type: !4)
!87 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "trK", scope: !15, file: !1, line: 17, type: !4)
!88 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "active_slicing_handle", scope: !15, file: !1, line: 17, type: !6)
!89 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "alp", scope: !15, file: !1, line: 17, type: !4)
!90 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "betax", scope: !15, file: !1, line: 17, type: !4)
!91 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "betay", scope: !15, file: !1, line: 17, type: !4)
!92 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "betaz", scope: !15, file: !1, line: 17, type: !4)
!93 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "coarse_dx", scope: !15, file: !1, line: 17, type: !4)
!94 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "coarse_dy", scope: !15, file: !1, line: 17, type: !4)
!95 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "coarse_dz", scope: !15, file: !1, line: 17, type: !4)
!96 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "conformal_state", scope: !15, file: !1, line: 17, type: !6)
!97 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "courant_min_time", scope: !15, file: !1, line: 17, type: !4)
!98 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "courant_wave_speed", scope: !15, file: !1, line: 17, type: !4)
!99 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "emask", scope: !15, file: !1, line: 17, type: !4)
!100 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "gxx", scope: !15, file: !1, line: 17, type: !4)
!101 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "gxy", scope: !15, file: !1, line: 17, type: !4)
!102 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "gxz", scope: !15, file: !1, line: 17, type: !4)
!103 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "gyy", scope: !15, file: !1, line: 17, type: !4)
!104 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "gyz", scope: !15, file: !1, line: 17, type: !4)
!105 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "gzz", scope: !15, file: !1, line: 17, type: !4)
!106 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "kxx", scope: !15, file: !1, line: 17, type: !4)
!107 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "kxy", scope: !15, file: !1, line: 17, type: !4)
!108 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "kxz", scope: !15, file: !1, line: 17, type: !4)
!109 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "kyy", scope: !15, file: !1, line: 17, type: !4)
!110 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "kyz", scope: !15, file: !1, line: 17, type: !4)
!111 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "kzz", scope: !15, file: !1, line: 17, type: !4)
!112 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "psi", scope: !15, file: !1, line: 17, type: !4)
!113 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "psix", scope: !15, file: !1, line: 17, type: !4)
!114 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "psixx", scope: !15, file: !1, line: 17, type: !4)
!115 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "psixy", scope: !15, file: !1, line: 17, type: !4)
!116 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "psixz", scope: !15, file: !1, line: 17, type: !4)
!117 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "psiy", scope: !15, file: !1, line: 17, type: !4)
!118 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "psiyy", scope: !15, file: !1, line: 17, type: !4)
!119 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "psiyz", scope: !15, file: !1, line: 17, type: !4)
!120 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "psiz", scope: !15, file: !1, line: 17, type: !4)
!121 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "psizz", scope: !15, file: !1, line: 17, type: !4)
!122 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "r", scope: !15, file: !1, line: 17, type: !4)
!123 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "shift_state", scope: !15, file: !1, line: 17, type: !6)
!124 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "x", scope: !15, file: !1, line: 17, type: !4)
!125 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "y", scope: !15, file: !1, line: 17, type: !4)
!126 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "z", scope: !15, file: !1, line: 17, type: !4)
!127 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "gaussian_amplitude", scope: !15, file: !1, line: 18, type: !128)
!128 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5)
!129 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "gaussian_sigma2", scope: !15, file: !1, line: 18, type: !128)
!130 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "psiminustwo_cut", scope: !15, file: !1, line: 18, type: !128)
!131 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "rot_shift_att_sigma", scope: !15, file: !1, line: 18, type: !128)
!132 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "rotation_omega", scope: !15, file: !1, line: 18, type: !128)
!133 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "advection", scope: !15, file: !1, line: 18, type: !12)
!134 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "evolution_system", scope: !15, file: !1, line: 18, type: !12)
!135 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "initial_data", scope: !15, file: !1, line: 18, type: !12)
!136 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "initial_lapse", scope: !15, file: !1, line: 18, type: !12)
!137 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "initial_shift", scope: !15, file: !1, line: 18, type: !12)
!138 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "mixed_slicing", scope: !15, file: !1, line: 18, type: !12)
!139 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "shift", scope: !15, file: !1, line: 18, type: !12)
!140 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "slicing", scope: !15, file: !1, line: 18, type: !12)
!141 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "slicing_verbose", scope: !15, file: !1, line: 18, type: !12)
!142 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "einstein_register_slicing", scope: !15, file: !1, line: 18, type: !143)
!143 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!144 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "rot_shift_att", scope: !15, file: !1, line: 18, type: !143)
!145 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "rot_shift_att_pow", scope: !15, file: !1, line: 18, type: !143)
!146 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "rotation_psipower", scope: !15, file: !1, line: 18, type: !143)
!147 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "use_conformal", scope: !15, file: !1, line: 18, type: !143)
!148 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "use_conformal_derivs", scope: !15, file: !1, line: 18, type: !143)
!149 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "use_mask", scope: !15, file: !1, line: 18, type: !143)
!150 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "dtfac", scope: !15, file: !1, line: 18, type: !128)
!151 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "gauge_speed", scope: !15, file: !1, line: 18, type: !128)
!152 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "wavecalc", scope: !15, file: !1, line: 18, type: !12)
!153 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "conformal_storage_all", scope: !15, file: !1, line: 18, type: !143)
!154 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "rsquared_in_sphm", scope: !15, file: !1, line: 18, type: !143)
!155 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "domain", scope: !15, file: !1, line: 18, type: !12)
!156 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "timestep_method", scope: !15, file: !1, line: 18, type: !12)
!157 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cctk_pdummy_pointer", scope: !15, file: !1, line: 18, type: !72)
!158 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !15, file: !1, line: 20, type: !7)
!159 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "j", scope: !15, file: !1, line: 20, type: !7)
!160 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "k", scope: !15, file: !1, line: 20, type: !7)
!161 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "index", scope: !15, file: !1, line: 20, type: !7)
!162 = !{!163}
!163 = !DIGlobalVariable(name: "rcsid", scope: !0, file: !1, line: 10, type: !12, isLocal: true, isDefinition: true)
!164 = !{i32 2, !"Dwarf Version", i32 2}
!165 = !{i32 2, !"Debug Info Version", i32 700000003}
!166 = !{i32 1, !"PIC Level", i32 2}
!167 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!168 = !DILocation(line: 12, column: 1, scope: !9)
!169 = !DIExpression()
!170 = !DILocation(line: 14, column: 22, scope: !15)
!171 = !DILocation(line: 17, column: 3, scope: !15)
!172 = !{!173, !177, i64 16}
!173 = !{!"", !174, i64 0, !174, i64 4, !177, i64 8, !177, i64 16, !177, i64 24, !177, i64 32, !177, i64 40, !177, i64 48, !177, i64 56, !178, i64 64, !177, i64 72, !177, i64 80, !177, i64 88, !177, i64 96, !174, i64 104, !177, i64 112, !178, i64 120, !177, i64 128, !177, i64 136, !177, i64 144}
!174 = !{!"int", !175, i64 0}
!175 = !{!"omnipotent char", !176, i64 0}
!176 = !{!"Simple C/C++ TBAA"}
!177 = !{!"any pointer", !175, i64 0}
!178 = !{!"double", !175, i64 0}
!179 = !{!173, !177, i64 128}
!180 = !{!177, !177, i64 0}
!181 = !DILocation(line: 18, column: 3, scope: !15)
!182 = !{!183, !177, i64 88}
!183 = !{!"", !178, i64 0, !178, i64 8, !178, i64 16, !178, i64 24, !178, i64 32, !177, i64 40, !177, i64 48, !177, i64 56, !177, i64 64, !177, i64 72, !177, i64 80, !177, i64 88, !177, i64 96, !177, i64 104, !174, i64 112, !174, i64 116, !174, i64 120, !174, i64 124, !174, i64 128, !174, i64 132, !174, i64 136}
!184 = !{!183, !174, i64 128}
!185 = !DILocation(line: 26, column: 22, scope: !186)
!186 = distinct !DILexicalBlock(scope: !187, file: !1, line: 25, column: 3)
!187 = distinct !DILexicalBlock(scope: !15, file: !1, line: 24, column: 7)
!188 = !{!174, !174, i64 0}
!189 = !DILocation(line: 35, column: 8, scope: !190)
!190 = distinct !DILexicalBlock(scope: !15, file: !1, line: 35, column: 7)
!191 = !DILocation(line: 35, column: 7, scope: !15)
!192 = !DILocation(line: 37, column: 18, scope: !193)
!193 = distinct !DILexicalBlock(scope: !190, file: !1, line: 36, column: 3)
!194 = !DILocation(line: 39, column: 9, scope: !195)
!195 = distinct !DILexicalBlock(scope: !193, file: !1, line: 39, column: 9)
!196 = !DILocation(line: 39, column: 9, scope: !193)
!197 = !DILocation(line: 41, column: 20, scope: !198)
!198 = distinct !DILexicalBlock(scope: !199, file: !1, line: 41, column: 7)
!199 = distinct !DILexicalBlock(scope: !200, file: !1, line: 41, column: 7)
!200 = distinct !DILexicalBlock(scope: !195, file: !1, line: 40, column: 5)
!201 = !DILocation(line: 41, column: 18, scope: !198)
!202 = !DILocation(line: 41, column: 7, scope: !199)
!203 = !DILocation(line: 43, column: 15, scope: !204)
!204 = distinct !DILexicalBlock(scope: !205, file: !1, line: 43, column: 2)
!205 = distinct !DILexicalBlock(scope: !206, file: !1, line: 43, column: 2)
!206 = distinct !DILexicalBlock(scope: !198, file: !1, line: 42, column: 7)
!207 = !DILocation(line: 43, column: 13, scope: !204)
!208 = !DILocation(line: 43, column: 2, scope: !205)
!209 = !DILocation(line: 45, column: 17, scope: !210)
!210 = distinct !DILexicalBlock(scope: !211, file: !1, line: 45, column: 4)
!211 = distinct !DILexicalBlock(scope: !212, file: !1, line: 45, column: 4)
!212 = distinct !DILexicalBlock(scope: !204, file: !1, line: 44, column: 2)
!213 = !DILocation(line: 45, column: 15, scope: !210)
!214 = !DILocation(line: 45, column: 4, scope: !211)
!215 = !DILocation(line: 48, column: 14, scope: !216)
!216 = distinct !DILexicalBlock(scope: !210, file: !1, line: 46, column: 4)
!217 = !DILocation(line: 50, column: 6, scope: !216)
!218 = !DILocation(line: 50, column: 19, scope: !216)
!219 = !{!178, !178, i64 0}
!220 = !DILocation(line: 51, column: 6, scope: !216)
!221 = !DILocation(line: 51, column: 19, scope: !216)
!222 = !DILocation(line: 52, column: 6, scope: !216)
!223 = !DILocation(line: 52, column: 19, scope: !216)
!224 = !DILocation(line: 43, column: 29, scope: !204)
!225 = !DILocation(line: 20, column: 9, scope: !15)
!226 = !DILocation(line: 41, column: 34, scope: !198)
!227 = !DILocation(line: 20, column: 11, scope: !15)
!228 = !DILocation(line: 62, column: 18, scope: !229)
!229 = distinct !DILexicalBlock(scope: !190, file: !1, line: 61, column: 3)
!230 = !DILocation(line: 68, column: 46, scope: !15)
