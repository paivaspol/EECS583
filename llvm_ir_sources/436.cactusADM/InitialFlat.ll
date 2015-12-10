; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/Einstein/InitialFlat.c'
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
@.str53 = private unnamed_addr constant [9 x i8] c"Einstein\00", align 1
@.str54 = private unnamed_addr constant [41 x i8] c"Setting flat Minkowski space in Einstein\00", align 1
@.str55 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@.str56 = private unnamed_addr constant [97 x i8] c"$Header: /cactus/CactusEinstein/Einstein/src/InitialFlat.c,v 1.8 2002/01/04 10:18:16 allen Exp $\00", align 1

; Function Attrs: nounwind optsize readnone ssp uwtable
define i8* @CCTKi_version_CactusEinstein_Einstein_InitialFlat_c() #0 {
  ret i8* getelementptr inbounds ([97 x i8]* @.str56, i64 0, i64 0), !dbg !171
}

; Function Attrs: nounwind optsize ssp uwtable
define void @InitialFlat(%struct.cGH* readonly %cctkGH) #1 {
  tail call void @llvm.dbg.value(metadata %struct.cGH* %cctkGH, i64 0, metadata !53, metadata !172), !dbg !173
  %1 = getelementptr inbounds %struct.cGH* %cctkGH, i64 0, i32 3, !dbg !174
  %2 = load i32** %1, align 8, !dbg !174, !tbaa !175
  tail call void @llvm.dbg.value(metadata i32* %2, i64 0, metadata !56, metadata !172), !dbg !174
  %3 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([15 x i8]* @.str, i64 0, i64 0)) #4, !dbg !174
  %4 = getelementptr inbounds %struct.cGH* %cctkGH, i64 0, i32 17, !dbg !174
  %5 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str1, i64 0, i64 0)) #4, !dbg !174
  %6 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str2, i64 0, i64 0)) #4, !dbg !174
  %7 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str3, i64 0, i64 0)) #4, !dbg !174
  %8 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str4, i64 0, i64 0)) #4, !dbg !174
  %9 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str5, i64 0, i64 0)) #4, !dbg !174
  %10 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str6, i64 0, i64 0)) #4, !dbg !174
  %11 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str7, i64 0, i64 0)) #4, !dbg !174
  %12 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str8, i64 0, i64 0)) #4, !dbg !174
  %13 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str9, i64 0, i64 0)) #4, !dbg !174
  %14 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str10, i64 0, i64 0)) #4, !dbg !174
  %15 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str11, i64 0, i64 0)) #4, !dbg !174
  %16 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str12, i64 0, i64 0)) #4, !dbg !174
  %17 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str13, i64 0, i64 0)) #4, !dbg !174
  %18 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([32 x i8]* @.str14, i64 0, i64 0)) #4, !dbg !174
  %19 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str15, i64 0, i64 0)) #4, !dbg !174
  %20 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([16 x i8]* @.str16, i64 0, i64 0)) #4, !dbg !174
  %21 = sext i32 %20 to i64, !dbg !174
  %22 = load i8**** %4, align 8, !dbg !174, !tbaa !182
  %23 = getelementptr inbounds i8*** %22, i64 %21, !dbg !174
  %24 = bitcast i8*** %23 to double***, !dbg !174
  %25 = load double*** %24, align 8, !dbg !174, !tbaa !183
  %26 = load double** %25, align 8, !dbg !174, !tbaa !183
  tail call void @llvm.dbg.value(metadata double* %26, i64 0, metadata !90, metadata !172), !dbg !174
  %27 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([16 x i8]* @.str17, i64 0, i64 0)) #4, !dbg !174
  %28 = sext i32 %27 to i64, !dbg !174
  %29 = load i8**** %4, align 8, !dbg !174, !tbaa !182
  %30 = getelementptr inbounds i8*** %29, i64 %28, !dbg !174
  %31 = bitcast i8*** %30 to double***, !dbg !174
  %32 = load double*** %31, align 8, !dbg !174, !tbaa !183
  %33 = load double** %32, align 8, !dbg !174, !tbaa !183
  tail call void @llvm.dbg.value(metadata double* %33, i64 0, metadata !91, metadata !172), !dbg !174
  %34 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([16 x i8]* @.str18, i64 0, i64 0)) #4, !dbg !174
  %35 = sext i32 %34 to i64, !dbg !174
  %36 = load i8**** %4, align 8, !dbg !174, !tbaa !182
  %37 = getelementptr inbounds i8*** %36, i64 %35, !dbg !174
  %38 = bitcast i8*** %37 to double***, !dbg !174
  %39 = load double*** %38, align 8, !dbg !174, !tbaa !183
  %40 = load double** %39, align 8, !dbg !174, !tbaa !183
  tail call void @llvm.dbg.value(metadata double* %40, i64 0, metadata !92, metadata !172), !dbg !174
  %41 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([16 x i8]* @.str19, i64 0, i64 0)) #4, !dbg !174
  %42 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([16 x i8]* @.str20, i64 0, i64 0)) #4, !dbg !174
  %43 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([16 x i8]* @.str21, i64 0, i64 0)) #4, !dbg !174
  %44 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([26 x i8]* @.str22, i64 0, i64 0)) #4, !dbg !174
  %45 = sext i32 %44 to i64, !dbg !174
  %46 = load i8**** %4, align 8, !dbg !174, !tbaa !182
  %47 = getelementptr inbounds i8*** %46, i64 %45, !dbg !174
  %48 = bitcast i8*** %47 to i32***, !dbg !174
  %49 = load i32*** %48, align 8, !dbg !174, !tbaa !183
  %50 = load i32** %49, align 8, !dbg !174, !tbaa !183
  tail call void @llvm.dbg.value(metadata i32* %50, i64 0, metadata !96, metadata !172), !dbg !174
  %51 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([23 x i8]* @.str23, i64 0, i64 0)) #4, !dbg !174
  %52 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([25 x i8]* @.str24, i64 0, i64 0)) #4, !dbg !174
  %53 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([16 x i8]* @.str25, i64 0, i64 0)) #4, !dbg !174
  %54 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str26, i64 0, i64 0)) #4, !dbg !174
  %55 = sext i32 %54 to i64, !dbg !174
  %56 = load i8**** %4, align 8, !dbg !174, !tbaa !182
  %57 = getelementptr inbounds i8*** %56, i64 %55, !dbg !174
  %58 = bitcast i8*** %57 to double***, !dbg !174
  %59 = load double*** %58, align 8, !dbg !174, !tbaa !183
  %60 = load double** %59, align 8, !dbg !174, !tbaa !183
  tail call void @llvm.dbg.value(metadata double* %60, i64 0, metadata !100, metadata !172), !dbg !174
  %61 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str27, i64 0, i64 0)) #4, !dbg !174
  %62 = sext i32 %61 to i64, !dbg !174
  %63 = load i8**** %4, align 8, !dbg !174, !tbaa !182
  %64 = getelementptr inbounds i8*** %63, i64 %62, !dbg !174
  %65 = bitcast i8*** %64 to double***, !dbg !174
  %66 = load double*** %65, align 8, !dbg !174, !tbaa !183
  %67 = load double** %66, align 8, !dbg !174, !tbaa !183
  tail call void @llvm.dbg.value(metadata double* %67, i64 0, metadata !101, metadata !172), !dbg !174
  %68 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str28, i64 0, i64 0)) #4, !dbg !174
  %69 = sext i32 %68 to i64, !dbg !174
  %70 = load i8**** %4, align 8, !dbg !174, !tbaa !182
  %71 = getelementptr inbounds i8*** %70, i64 %69, !dbg !174
  %72 = bitcast i8*** %71 to double***, !dbg !174
  %73 = load double*** %72, align 8, !dbg !174, !tbaa !183
  %74 = load double** %73, align 8, !dbg !174, !tbaa !183
  tail call void @llvm.dbg.value(metadata double* %74, i64 0, metadata !102, metadata !172), !dbg !174
  %75 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str29, i64 0, i64 0)) #4, !dbg !174
  %76 = sext i32 %75 to i64, !dbg !174
  %77 = load i8**** %4, align 8, !dbg !174, !tbaa !182
  %78 = getelementptr inbounds i8*** %77, i64 %76, !dbg !174
  %79 = bitcast i8*** %78 to double***, !dbg !174
  %80 = load double*** %79, align 8, !dbg !174, !tbaa !183
  %81 = load double** %80, align 8, !dbg !174, !tbaa !183
  tail call void @llvm.dbg.value(metadata double* %81, i64 0, metadata !103, metadata !172), !dbg !174
  %82 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str30, i64 0, i64 0)) #4, !dbg !174
  %83 = sext i32 %82 to i64, !dbg !174
  %84 = load i8**** %4, align 8, !dbg !174, !tbaa !182
  %85 = getelementptr inbounds i8*** %84, i64 %83, !dbg !174
  %86 = bitcast i8*** %85 to double***, !dbg !174
  %87 = load double*** %86, align 8, !dbg !174, !tbaa !183
  %88 = load double** %87, align 8, !dbg !174, !tbaa !183
  tail call void @llvm.dbg.value(metadata double* %88, i64 0, metadata !104, metadata !172), !dbg !174
  %89 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str31, i64 0, i64 0)) #4, !dbg !174
  %90 = sext i32 %89 to i64, !dbg !174
  %91 = load i8**** %4, align 8, !dbg !174, !tbaa !182
  %92 = getelementptr inbounds i8*** %91, i64 %90, !dbg !174
  %93 = bitcast i8*** %92 to double***, !dbg !174
  %94 = load double*** %93, align 8, !dbg !174, !tbaa !183
  %95 = load double** %94, align 8, !dbg !174, !tbaa !183
  tail call void @llvm.dbg.value(metadata double* %95, i64 0, metadata !105, metadata !172), !dbg !174
  %96 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str32, i64 0, i64 0)) #4, !dbg !174
  %97 = sext i32 %96 to i64, !dbg !174
  %98 = load i8**** %4, align 8, !dbg !174, !tbaa !182
  %99 = getelementptr inbounds i8*** %98, i64 %97, !dbg !174
  %100 = bitcast i8*** %99 to double***, !dbg !174
  %101 = load double*** %100, align 8, !dbg !174, !tbaa !183
  %102 = load double** %101, align 8, !dbg !174, !tbaa !183
  tail call void @llvm.dbg.value(metadata double* %102, i64 0, metadata !106, metadata !172), !dbg !174
  %103 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str33, i64 0, i64 0)) #4, !dbg !174
  %104 = sext i32 %103 to i64, !dbg !174
  %105 = load i8**** %4, align 8, !dbg !174, !tbaa !182
  %106 = getelementptr inbounds i8*** %105, i64 %104, !dbg !174
  %107 = bitcast i8*** %106 to double***, !dbg !174
  %108 = load double*** %107, align 8, !dbg !174, !tbaa !183
  %109 = load double** %108, align 8, !dbg !174, !tbaa !183
  tail call void @llvm.dbg.value(metadata double* %109, i64 0, metadata !107, metadata !172), !dbg !174
  %110 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str34, i64 0, i64 0)) #4, !dbg !174
  %111 = sext i32 %110 to i64, !dbg !174
  %112 = load i8**** %4, align 8, !dbg !174, !tbaa !182
  %113 = getelementptr inbounds i8*** %112, i64 %111, !dbg !174
  %114 = bitcast i8*** %113 to double***, !dbg !174
  %115 = load double*** %114, align 8, !dbg !174, !tbaa !183
  %116 = load double** %115, align 8, !dbg !174, !tbaa !183
  tail call void @llvm.dbg.value(metadata double* %116, i64 0, metadata !108, metadata !172), !dbg !174
  %117 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str35, i64 0, i64 0)) #4, !dbg !174
  %118 = sext i32 %117 to i64, !dbg !174
  %119 = load i8**** %4, align 8, !dbg !174, !tbaa !182
  %120 = getelementptr inbounds i8*** %119, i64 %118, !dbg !174
  %121 = bitcast i8*** %120 to double***, !dbg !174
  %122 = load double*** %121, align 8, !dbg !174, !tbaa !183
  %123 = load double** %122, align 8, !dbg !174, !tbaa !183
  tail call void @llvm.dbg.value(metadata double* %123, i64 0, metadata !109, metadata !172), !dbg !174
  %124 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str36, i64 0, i64 0)) #4, !dbg !174
  %125 = sext i32 %124 to i64, !dbg !174
  %126 = load i8**** %4, align 8, !dbg !174, !tbaa !182
  %127 = getelementptr inbounds i8*** %126, i64 %125, !dbg !174
  %128 = bitcast i8*** %127 to double***, !dbg !174
  %129 = load double*** %128, align 8, !dbg !174, !tbaa !183
  %130 = load double** %129, align 8, !dbg !174, !tbaa !183
  tail call void @llvm.dbg.value(metadata double* %130, i64 0, metadata !110, metadata !172), !dbg !174
  %131 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str37, i64 0, i64 0)) #4, !dbg !174
  %132 = sext i32 %131 to i64, !dbg !174
  %133 = load i8**** %4, align 8, !dbg !174, !tbaa !182
  %134 = getelementptr inbounds i8*** %133, i64 %132, !dbg !174
  %135 = bitcast i8*** %134 to double***, !dbg !174
  %136 = load double*** %135, align 8, !dbg !174, !tbaa !183
  %137 = load double** %136, align 8, !dbg !174, !tbaa !183
  tail call void @llvm.dbg.value(metadata double* %137, i64 0, metadata !111, metadata !172), !dbg !174
  %138 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str38, i64 0, i64 0)) #4, !dbg !174
  %139 = sext i32 %138 to i64, !dbg !174
  %140 = load i8**** %4, align 8, !dbg !174, !tbaa !182
  %141 = getelementptr inbounds i8*** %140, i64 %139, !dbg !174
  %142 = bitcast i8*** %141 to double***, !dbg !174
  %143 = load double*** %142, align 8, !dbg !174, !tbaa !183
  %144 = load double** %143, align 8, !dbg !174, !tbaa !183
  tail call void @llvm.dbg.value(metadata double* %144, i64 0, metadata !112, metadata !172), !dbg !174
  %145 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([15 x i8]* @.str39, i64 0, i64 0)) #4, !dbg !174
  %146 = sext i32 %145 to i64, !dbg !174
  %147 = load i8**** %4, align 8, !dbg !174, !tbaa !182
  %148 = getelementptr inbounds i8*** %147, i64 %146, !dbg !174
  %149 = bitcast i8*** %148 to double***, !dbg !174
  %150 = load double*** %149, align 8, !dbg !174, !tbaa !183
  %151 = load double** %150, align 8, !dbg !174, !tbaa !183
  tail call void @llvm.dbg.value(metadata double* %151, i64 0, metadata !113, metadata !172), !dbg !174
  %152 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([16 x i8]* @.str40, i64 0, i64 0)) #4, !dbg !174
  %153 = sext i32 %152 to i64, !dbg !174
  %154 = load i8**** %4, align 8, !dbg !174, !tbaa !182
  %155 = getelementptr inbounds i8*** %154, i64 %153, !dbg !174
  %156 = bitcast i8*** %155 to double***, !dbg !174
  %157 = load double*** %156, align 8, !dbg !174, !tbaa !183
  %158 = load double** %157, align 8, !dbg !174, !tbaa !183
  tail call void @llvm.dbg.value(metadata double* %158, i64 0, metadata !114, metadata !172), !dbg !174
  %159 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([16 x i8]* @.str41, i64 0, i64 0)) #4, !dbg !174
  %160 = sext i32 %159 to i64, !dbg !174
  %161 = load i8**** %4, align 8, !dbg !174, !tbaa !182
  %162 = getelementptr inbounds i8*** %161, i64 %160, !dbg !174
  %163 = bitcast i8*** %162 to double***, !dbg !174
  %164 = load double*** %163, align 8, !dbg !174, !tbaa !183
  %165 = load double** %164, align 8, !dbg !174, !tbaa !183
  tail call void @llvm.dbg.value(metadata double* %165, i64 0, metadata !115, metadata !172), !dbg !174
  %166 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([16 x i8]* @.str42, i64 0, i64 0)) #4, !dbg !174
  %167 = sext i32 %166 to i64, !dbg !174
  %168 = load i8**** %4, align 8, !dbg !174, !tbaa !182
  %169 = getelementptr inbounds i8*** %168, i64 %167, !dbg !174
  %170 = bitcast i8*** %169 to double***, !dbg !174
  %171 = load double*** %170, align 8, !dbg !174, !tbaa !183
  %172 = load double** %171, align 8, !dbg !174, !tbaa !183
  tail call void @llvm.dbg.value(metadata double* %172, i64 0, metadata !116, metadata !172), !dbg !174
  %173 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([15 x i8]* @.str43, i64 0, i64 0)) #4, !dbg !174
  %174 = sext i32 %173 to i64, !dbg !174
  %175 = load i8**** %4, align 8, !dbg !174, !tbaa !182
  %176 = getelementptr inbounds i8*** %175, i64 %174, !dbg !174
  %177 = bitcast i8*** %176 to double***, !dbg !174
  %178 = load double*** %177, align 8, !dbg !174, !tbaa !183
  %179 = load double** %178, align 8, !dbg !174, !tbaa !183
  tail call void @llvm.dbg.value(metadata double* %179, i64 0, metadata !117, metadata !172), !dbg !174
  %180 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([16 x i8]* @.str44, i64 0, i64 0)) #4, !dbg !174
  %181 = sext i32 %180 to i64, !dbg !174
  %182 = load i8**** %4, align 8, !dbg !174, !tbaa !182
  %183 = getelementptr inbounds i8*** %182, i64 %181, !dbg !174
  %184 = bitcast i8*** %183 to double***, !dbg !174
  %185 = load double*** %184, align 8, !dbg !174, !tbaa !183
  %186 = load double** %185, align 8, !dbg !174, !tbaa !183
  tail call void @llvm.dbg.value(metadata double* %186, i64 0, metadata !118, metadata !172), !dbg !174
  %187 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([16 x i8]* @.str45, i64 0, i64 0)) #4, !dbg !174
  %188 = sext i32 %187 to i64, !dbg !174
  %189 = load i8**** %4, align 8, !dbg !174, !tbaa !182
  %190 = getelementptr inbounds i8*** %189, i64 %188, !dbg !174
  %191 = bitcast i8*** %190 to double***, !dbg !174
  %192 = load double*** %191, align 8, !dbg !174, !tbaa !183
  %193 = load double** %192, align 8, !dbg !174, !tbaa !183
  tail call void @llvm.dbg.value(metadata double* %193, i64 0, metadata !119, metadata !172), !dbg !174
  %194 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([15 x i8]* @.str46, i64 0, i64 0)) #4, !dbg !174
  %195 = sext i32 %194 to i64, !dbg !174
  %196 = load i8**** %4, align 8, !dbg !174, !tbaa !182
  %197 = getelementptr inbounds i8*** %196, i64 %195, !dbg !174
  %198 = bitcast i8*** %197 to double***, !dbg !174
  %199 = load double*** %198, align 8, !dbg !174, !tbaa !183
  %200 = load double** %199, align 8, !dbg !174, !tbaa !183
  tail call void @llvm.dbg.value(metadata double* %200, i64 0, metadata !120, metadata !172), !dbg !174
  %201 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([16 x i8]* @.str47, i64 0, i64 0)) #4, !dbg !174
  %202 = sext i32 %201 to i64, !dbg !174
  %203 = load i8**** %4, align 8, !dbg !174, !tbaa !182
  %204 = getelementptr inbounds i8*** %203, i64 %202, !dbg !174
  %205 = bitcast i8*** %204 to double***, !dbg !174
  %206 = load double*** %205, align 8, !dbg !174, !tbaa !183
  %207 = load double** %206, align 8, !dbg !174, !tbaa !183
  tail call void @llvm.dbg.value(metadata double* %207, i64 0, metadata !121, metadata !172), !dbg !174
  %208 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([8 x i8]* @.str48, i64 0, i64 0)) #4, !dbg !174
  %209 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([22 x i8]* @.str49, i64 0, i64 0)) #4, !dbg !174
  %210 = sext i32 %209 to i64, !dbg !174
  %211 = load i8**** %4, align 8, !dbg !174, !tbaa !182
  %212 = getelementptr inbounds i8*** %211, i64 %210, !dbg !174
  %213 = bitcast i8*** %212 to i32***, !dbg !174
  %214 = load i32*** %213, align 8, !dbg !174, !tbaa !183
  %215 = load i32** %214, align 8, !dbg !174, !tbaa !183
  tail call void @llvm.dbg.value(metadata i32* %215, i64 0, metadata !123, metadata !172), !dbg !174
  %216 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([8 x i8]* @.str50, i64 0, i64 0)) #4, !dbg !174
  %217 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([8 x i8]* @.str51, i64 0, i64 0)) #4, !dbg !174
  %218 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([8 x i8]* @.str52, i64 0, i64 0)) #4, !dbg !174
  %219 = load i8** getelementptr inbounds (%struct.anon* @einsteinrest_, i64 0, i32 11), align 8, !dbg !184, !tbaa !185
  tail call void @llvm.dbg.value(metadata i8* %219, i64 0, metadata !139, metadata !172), !dbg !184
  %220 = load i32* getelementptr inbounds (%struct.anon* @einsteinrest_, i64 0, i32 18), align 8, !dbg !184, !tbaa !187
  tail call void @llvm.dbg.value(metadata i32 %220, i64 0, metadata !147, metadata !172), !dbg !184
  %221 = tail call i32 @CCTK_Info(i8* getelementptr inbounds ([9 x i8]* @.str53, i64 0, i64 0), i8* getelementptr inbounds ([41 x i8]* @.str54, i64 0, i64 0)) #4, !dbg !188
  %222 = load i32* %2, align 4, !dbg !189, !tbaa !190
  tail call void @llvm.dbg.value(metadata i32 %222, i64 0, metadata !162, metadata !172), !dbg !191
  %223 = getelementptr inbounds i32* %2, i64 1, !dbg !192
  %224 = load i32* %223, align 4, !dbg !192, !tbaa !190
  tail call void @llvm.dbg.value(metadata i32 %224, i64 0, metadata !163, metadata !172), !dbg !193
  %225 = getelementptr inbounds i32* %2, i64 2, !dbg !194
  %226 = load i32* %225, align 4, !dbg !194, !tbaa !190
  tail call void @llvm.dbg.value(metadata i32 %226, i64 0, metadata !164, metadata !172), !dbg !195
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !161, metadata !172), !dbg !196
  %227 = icmp sgt i32 %226, 0, !dbg !197
  br i1 %227, label %.preheader1.lr.ph, label %._crit_edge8, !dbg !200

.preheader1.lr.ph:                                ; preds = %0
  %228 = icmp sgt i32 %224, 0, !dbg !201
  %229 = icmp sgt i32 %222, 0, !dbg !205
  %230 = icmp eq i32 %220, 0, !dbg !209
  %231 = add i32 %222, -1, !dbg !200
  %232 = add i32 %224, -1, !dbg !200
  %233 = add i32 %226, -1, !dbg !200
  br label %.preheader1, !dbg !200

.preheader1:                                      ; preds = %._crit_edge5, %.preheader1.lr.ph
  %k.06 = phi i32 [ 0, %.preheader1.lr.ph ], [ %278, %._crit_edge5 ]
  br i1 %228, label %.preheader, label %._crit_edge5, !dbg !212

.preheader:                                       ; preds = %.preheader1, %._crit_edge
  %j.03 = phi i32 [ %277, %._crit_edge ], [ 0, %.preheader1 ]
  br i1 %229, label %.lr.ph, label %._crit_edge, !dbg !213

.lr.ph:                                           ; preds = %.preheader, %275
  %i.02 = phi i32 [ %276, %275 ], [ 0, %.preheader ]
  %234 = load i32** %1, align 8, !dbg !214, !tbaa !175
  %235 = load i32* %234, align 4, !dbg !214, !tbaa !190
  %236 = getelementptr inbounds i32* %234, i64 1, !dbg !214
  %237 = load i32* %236, align 4, !dbg !214, !tbaa !190
  %238 = mul nsw i32 %237, %k.06, !dbg !214
  %239 = add nsw i32 %238, %j.03, !dbg !214
  %240 = mul nsw i32 %239, %235, !dbg !214
  %241 = add nsw i32 %240, %i.02, !dbg !214
  tail call void @llvm.dbg.value(metadata i32 %241, i64 0, metadata !158, metadata !172), !dbg !215
  %242 = sext i32 %241 to i64, !dbg !216
  %243 = getelementptr inbounds double* %60, i64 %242, !dbg !216
  store double 1.000000e+00, double* %243, align 8, !dbg !217, !tbaa !218
  %244 = getelementptr inbounds double* %81, i64 %242, !dbg !219
  store double 1.000000e+00, double* %244, align 8, !dbg !220, !tbaa !218
  %245 = getelementptr inbounds double* %95, i64 %242, !dbg !221
  store double 1.000000e+00, double* %245, align 8, !dbg !222, !tbaa !218
  %246 = getelementptr inbounds double* %67, i64 %242, !dbg !223
  store double 0.000000e+00, double* %246, align 8, !dbg !224, !tbaa !218
  %247 = getelementptr inbounds double* %74, i64 %242, !dbg !225
  store double 0.000000e+00, double* %247, align 8, !dbg !226, !tbaa !218
  %248 = getelementptr inbounds double* %88, i64 %242, !dbg !227
  store double 0.000000e+00, double* %248, align 8, !dbg !228, !tbaa !218
  %249 = getelementptr inbounds double* %102, i64 %242, !dbg !229
  store double 0.000000e+00, double* %249, align 8, !dbg !230, !tbaa !218
  %250 = getelementptr inbounds double* %109, i64 %242, !dbg !231
  store double 0.000000e+00, double* %250, align 8, !dbg !232, !tbaa !218
  %251 = getelementptr inbounds double* %116, i64 %242, !dbg !233
  store double 0.000000e+00, double* %251, align 8, !dbg !234, !tbaa !218
  %252 = getelementptr inbounds double* %123, i64 %242, !dbg !235
  store double 0.000000e+00, double* %252, align 8, !dbg !236, !tbaa !218
  %253 = getelementptr inbounds double* %130, i64 %242, !dbg !237
  store double 0.000000e+00, double* %253, align 8, !dbg !238, !tbaa !218
  %254 = getelementptr inbounds double* %137, i64 %242, !dbg !239
  store double 0.000000e+00, double* %254, align 8, !dbg !240, !tbaa !218
  %255 = tail call i32 @CCTK_Equals(i8* %219, i8* getelementptr inbounds ([5 x i8]* @.str55, i64 0, i64 0)) #4, !dbg !241
  %256 = icmp eq i32 %255, 0, !dbg !243
  br i1 %256, label %257, label %261, !dbg !244

; <label>:257                                     ; preds = %.lr.ph
  store i32 1, i32* %215, align 4, !dbg !245, !tbaa !190
  %258 = getelementptr inbounds double* %26, i64 %242, !dbg !247
  store double 0.000000e+00, double* %258, align 8, !dbg !248, !tbaa !218
  %259 = getelementptr inbounds double* %33, i64 %242, !dbg !249
  store double 0.000000e+00, double* %259, align 8, !dbg !250, !tbaa !218
  %260 = getelementptr inbounds double* %40, i64 %242, !dbg !251
  store double 0.000000e+00, double* %260, align 8, !dbg !252, !tbaa !218
  br label %262, !dbg !253

; <label>:261                                     ; preds = %.lr.ph
  store i32 0, i32* %215, align 4, !dbg !254, !tbaa !190
  br label %262

; <label>:262                                     ; preds = %261, %257
  br i1 %230, label %274, label %263, !dbg !256

; <label>:263                                     ; preds = %262
  store i32 1, i32* %50, align 4, !dbg !257, !tbaa !190
  %264 = getelementptr inbounds double* %144, i64 %242, !dbg !259
  store double 1.000000e+00, double* %264, align 8, !dbg !260, !tbaa !218
  %265 = getelementptr inbounds double* %151, i64 %242, !dbg !261
  store double 0.000000e+00, double* %265, align 8, !dbg !262, !tbaa !218
  %266 = getelementptr inbounds double* %179, i64 %242, !dbg !263
  store double 0.000000e+00, double* %266, align 8, !dbg !264, !tbaa !218
  %267 = getelementptr inbounds double* %200, i64 %242, !dbg !265
  store double 0.000000e+00, double* %267, align 8, !dbg !266, !tbaa !218
  %268 = getelementptr inbounds double* %165, i64 %242, !dbg !267
  store double 0.000000e+00, double* %268, align 8, !dbg !268, !tbaa !218
  %269 = getelementptr inbounds double* %172, i64 %242, !dbg !269
  store double 0.000000e+00, double* %269, align 8, !dbg !270, !tbaa !218
  %270 = getelementptr inbounds double* %193, i64 %242, !dbg !271
  store double 0.000000e+00, double* %270, align 8, !dbg !272, !tbaa !218
  %271 = getelementptr inbounds double* %158, i64 %242, !dbg !273
  store double 0.000000e+00, double* %271, align 8, !dbg !274, !tbaa !218
  %272 = getelementptr inbounds double* %186, i64 %242, !dbg !275
  store double 0.000000e+00, double* %272, align 8, !dbg !276, !tbaa !218
  %273 = getelementptr inbounds double* %207, i64 %242, !dbg !277
  store double 0.000000e+00, double* %273, align 8, !dbg !278, !tbaa !218
  br label %275, !dbg !279

; <label>:274                                     ; preds = %262
  store i32 0, i32* %50, align 4, !dbg !280, !tbaa !190
  br label %275

; <label>:275                                     ; preds = %263, %274
  %276 = add nuw nsw i32 %i.02, 1, !dbg !282
  tail call void @llvm.dbg.value(metadata i32 %276, i64 0, metadata !159, metadata !172), !dbg !283
  %exitcond = icmp eq i32 %i.02, %231, !dbg !213
  br i1 %exitcond, label %._crit_edge, label %.lr.ph, !dbg !213

._crit_edge:                                      ; preds = %275, %.preheader
  %277 = add nuw nsw i32 %j.03, 1, !dbg !284
  tail call void @llvm.dbg.value(metadata i32 %277, i64 0, metadata !160, metadata !172), !dbg !285
  %exitcond9 = icmp eq i32 %j.03, %232, !dbg !212
  br i1 %exitcond9, label %._crit_edge5, label %.preheader, !dbg !212

._crit_edge5:                                     ; preds = %._crit_edge, %.preheader1
  %278 = add nuw nsw i32 %k.06, 1, !dbg !286
  tail call void @llvm.dbg.value(metadata i32 %278, i64 0, metadata !161, metadata !172), !dbg !196
  %exitcond10 = icmp eq i32 %k.06, %233, !dbg !200
  br i1 %exitcond10, label %._crit_edge8, label %.preheader1, !dbg !200

._crit_edge8:                                     ; preds = %._crit_edge5, %0
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !157, metadata !172), !dbg !184
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !157, metadata !172), !dbg !184
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !157, metadata !172), !dbg !184
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !157, metadata !172), !dbg !184
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !157, metadata !172), !dbg !184
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !157, metadata !172), !dbg !184
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !157, metadata !172), !dbg !184
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !157, metadata !172), !dbg !184
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !157, metadata !172), !dbg !184
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !157, metadata !172), !dbg !184
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !157, metadata !172), !dbg !184
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !157, metadata !172), !dbg !184
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !157, metadata !172), !dbg !184
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !157, metadata !172), !dbg !184
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !157, metadata !172), !dbg !184
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !157, metadata !172), !dbg !184
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !157, metadata !172), !dbg !184
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !157, metadata !172), !dbg !184
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !157, metadata !172), !dbg !184
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !157, metadata !172), !dbg !184
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !157, metadata !172), !dbg !184
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !157, metadata !172), !dbg !184
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !157, metadata !172), !dbg !184
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !157, metadata !172), !dbg !184
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !157, metadata !172), !dbg !184
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !157, metadata !172), !dbg !184
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !157, metadata !172), !dbg !184
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !157, metadata !172), !dbg !184
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !157, metadata !172), !dbg !184
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !71, metadata !172), !dbg !174
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !71, metadata !172), !dbg !174
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !71, metadata !172), !dbg !174
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !71, metadata !172), !dbg !174
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !71, metadata !172), !dbg !174
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !71, metadata !172), !dbg !174
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !71, metadata !172), !dbg !174
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !71, metadata !172), !dbg !174
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !71, metadata !172), !dbg !174
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !71, metadata !172), !dbg !174
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !71, metadata !172), !dbg !174
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !71, metadata !172), !dbg !174
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !71, metadata !172), !dbg !174
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !71, metadata !172), !dbg !174
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !71, metadata !172), !dbg !174
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !71, metadata !172), !dbg !174
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !71, metadata !172), !dbg !174
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !71, metadata !172), !dbg !174
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !71, metadata !172), !dbg !174
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !71, metadata !172), !dbg !174
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !71, metadata !172), !dbg !174
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !71, metadata !172), !dbg !174
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !71, metadata !172), !dbg !174
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !71, metadata !172), !dbg !174
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !71, metadata !172), !dbg !174
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !71, metadata !172), !dbg !174
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !71, metadata !172), !dbg !174
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !71, metadata !172), !dbg !174
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !71, metadata !172), !dbg !174
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !71, metadata !172), !dbg !174
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !71, metadata !172), !dbg !174
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !71, metadata !172), !dbg !174
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !71, metadata !172), !dbg !174
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !71, metadata !172), !dbg !174
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !71, metadata !172), !dbg !174
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !71, metadata !172), !dbg !174
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !71, metadata !172), !dbg !174
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !71, metadata !172), !dbg !174
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !71, metadata !172), !dbg !174
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !71, metadata !172), !dbg !174
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !71, metadata !172), !dbg !174
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !71, metadata !172), !dbg !174
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !71, metadata !172), !dbg !174
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !71, metadata !172), !dbg !174
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !71, metadata !172), !dbg !174
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !71, metadata !172), !dbg !174
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !71, metadata !172), !dbg !174
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !71, metadata !172), !dbg !174
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !71, metadata !172), !dbg !174
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !71, metadata !172), !dbg !174
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !71, metadata !172), !dbg !174
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !71, metadata !172), !dbg !174
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !71, metadata !172), !dbg !174
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !71, metadata !172), !dbg !174
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !71, metadata !172), !dbg !174
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !71, metadata !172), !dbg !174
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !71, metadata !172), !dbg !174
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !71, metadata !172), !dbg !174
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !71, metadata !172), !dbg !174
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !71, metadata !172), !dbg !174
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !71, metadata !172), !dbg !174
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !71, metadata !172), !dbg !174
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !71, metadata !172), !dbg !174
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !71, metadata !172), !dbg !174
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !71, metadata !172), !dbg !174
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !71, metadata !172), !dbg !174
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !71, metadata !172), !dbg !174
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !71, metadata !172), !dbg !174
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !71, metadata !172), !dbg !174
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !71, metadata !172), !dbg !174
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !71, metadata !172), !dbg !174
  ret void, !dbg !287
}

; Function Attrs: optsize
declare i32 @CCTK_VarIndex(i8*) #2

; Function Attrs: optsize
declare i32 @CCTK_Info(i8*, i8*) #2

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
!llvm.module.flags = !{!167, !168, !169}
!llvm.ident = !{!170}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !3, subprograms: !8, globals: !165, imports: !2)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/Einstein/InitialFlat.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{}
!3 = !{!4, !6}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64, align: 64)
!5 = !DIBasicType(name: "double", size: 64, align: 64, encoding: DW_ATE_float)
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64, align: 64)
!7 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!8 = !{!9, !15}
!9 = !DISubprogram(name: "CCTKi_version_CactusEinstein_Einstein_InitialFlat_c", scope: !1, file: !1, line: 12, type: !10, isLocal: false, isDefinition: true, scopeLine: 12, flags: DIFlagPrototyped, isOptimized: true, function: i8* ()* @CCTKi_version_CactusEinstein_Einstein_InitialFlat_c, variables: !2)
!10 = !DISubroutineType(types: !11)
!11 = !{!12}
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64, align: 64)
!13 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !14)
!14 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!15 = !DISubprogram(name: "InitialFlat", scope: !1, file: !1, line: 16, type: !16, isLocal: false, isDefinition: true, scopeLine: 17, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.cGH*)* @InitialFlat, variables: !52)
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
!52 = !{!53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164}
!53 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "cctkGH", arg: 1, scope: !15, file: !1, line: 16, type: !18)
!54 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cctk_dim", scope: !15, file: !1, line: 19, type: !7)
!55 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cctk_gsh", scope: !15, file: !1, line: 19, type: !6)
!56 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cctk_lsh", scope: !15, file: !1, line: 19, type: !6)
!57 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cctk_lbnd", scope: !15, file: !1, line: 19, type: !6)
!58 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cctk_ubnd", scope: !15, file: !1, line: 19, type: !6)
!59 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cctk_lssh", scope: !15, file: !1, line: 19, type: !6)
!60 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cctk_from", scope: !15, file: !1, line: 19, type: !6)
!61 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cctk_to", scope: !15, file: !1, line: 19, type: !6)
!62 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cctk_bbox", scope: !15, file: !1, line: 19, type: !6)
!63 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cctk_delta_time", scope: !15, file: !1, line: 19, type: !5)
!64 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cctk_time", scope: !15, file: !1, line: 19, type: !5)
!65 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cctk_delta_space", scope: !15, file: !1, line: 19, type: !4)
!66 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cctk_origin_space", scope: !15, file: !1, line: 19, type: !4)
!67 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cctk_levfac", scope: !15, file: !1, line: 19, type: !6)
!68 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cctk_convlevel", scope: !15, file: !1, line: 19, type: !7)
!69 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cctk_nghostzones", scope: !15, file: !1, line: 19, type: !6)
!70 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cctk_iteration", scope: !15, file: !1, line: 19, type: !7)
!71 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cctk_dummy_pointer", scope: !15, file: !1, line: 19, type: !72)
!72 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !73, size: 64, align: 64)
!73 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!74 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "detg", scope: !15, file: !1, line: 19, type: !4)
!75 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "gpp", scope: !15, file: !1, line: 19, type: !4)
!76 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "gqp", scope: !15, file: !1, line: 19, type: !4)
!77 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "gqq", scope: !15, file: !1, line: 19, type: !4)
!78 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "grp", scope: !15, file: !1, line: 19, type: !4)
!79 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "grq", scope: !15, file: !1, line: 19, type: !4)
!80 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "grr", scope: !15, file: !1, line: 19, type: !4)
!81 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "kpp", scope: !15, file: !1, line: 19, type: !4)
!82 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "kqp", scope: !15, file: !1, line: 19, type: !4)
!83 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "kqq", scope: !15, file: !1, line: 19, type: !4)
!84 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "krp", scope: !15, file: !1, line: 19, type: !4)
!85 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "krq", scope: !15, file: !1, line: 19, type: !4)
!86 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "krr", scope: !15, file: !1, line: 19, type: !4)
!87 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "trK", scope: !15, file: !1, line: 19, type: !4)
!88 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "active_slicing_handle", scope: !15, file: !1, line: 19, type: !6)
!89 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "alp", scope: !15, file: !1, line: 19, type: !4)
!90 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "betax", scope: !15, file: !1, line: 19, type: !4)
!91 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "betay", scope: !15, file: !1, line: 19, type: !4)
!92 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "betaz", scope: !15, file: !1, line: 19, type: !4)
!93 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "coarse_dx", scope: !15, file: !1, line: 19, type: !4)
!94 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "coarse_dy", scope: !15, file: !1, line: 19, type: !4)
!95 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "coarse_dz", scope: !15, file: !1, line: 19, type: !4)
!96 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "conformal_state", scope: !15, file: !1, line: 19, type: !6)
!97 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "courant_min_time", scope: !15, file: !1, line: 19, type: !4)
!98 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "courant_wave_speed", scope: !15, file: !1, line: 19, type: !4)
!99 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "emask", scope: !15, file: !1, line: 19, type: !4)
!100 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "gxx", scope: !15, file: !1, line: 19, type: !4)
!101 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "gxy", scope: !15, file: !1, line: 19, type: !4)
!102 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "gxz", scope: !15, file: !1, line: 19, type: !4)
!103 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "gyy", scope: !15, file: !1, line: 19, type: !4)
!104 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "gyz", scope: !15, file: !1, line: 19, type: !4)
!105 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "gzz", scope: !15, file: !1, line: 19, type: !4)
!106 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "kxx", scope: !15, file: !1, line: 19, type: !4)
!107 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "kxy", scope: !15, file: !1, line: 19, type: !4)
!108 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "kxz", scope: !15, file: !1, line: 19, type: !4)
!109 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "kyy", scope: !15, file: !1, line: 19, type: !4)
!110 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "kyz", scope: !15, file: !1, line: 19, type: !4)
!111 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "kzz", scope: !15, file: !1, line: 19, type: !4)
!112 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "psi", scope: !15, file: !1, line: 19, type: !4)
!113 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "psix", scope: !15, file: !1, line: 19, type: !4)
!114 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "psixx", scope: !15, file: !1, line: 19, type: !4)
!115 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "psixy", scope: !15, file: !1, line: 19, type: !4)
!116 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "psixz", scope: !15, file: !1, line: 19, type: !4)
!117 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "psiy", scope: !15, file: !1, line: 19, type: !4)
!118 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "psiyy", scope: !15, file: !1, line: 19, type: !4)
!119 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "psiyz", scope: !15, file: !1, line: 19, type: !4)
!120 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "psiz", scope: !15, file: !1, line: 19, type: !4)
!121 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "psizz", scope: !15, file: !1, line: 19, type: !4)
!122 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "r", scope: !15, file: !1, line: 19, type: !4)
!123 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "shift_state", scope: !15, file: !1, line: 19, type: !6)
!124 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "x", scope: !15, file: !1, line: 19, type: !4)
!125 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "y", scope: !15, file: !1, line: 19, type: !4)
!126 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "z", scope: !15, file: !1, line: 19, type: !4)
!127 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "gaussian_amplitude", scope: !15, file: !1, line: 20, type: !128)
!128 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5)
!129 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "gaussian_sigma2", scope: !15, file: !1, line: 20, type: !128)
!130 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "psiminustwo_cut", scope: !15, file: !1, line: 20, type: !128)
!131 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "rot_shift_att_sigma", scope: !15, file: !1, line: 20, type: !128)
!132 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "rotation_omega", scope: !15, file: !1, line: 20, type: !128)
!133 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "advection", scope: !15, file: !1, line: 20, type: !12)
!134 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "evolution_system", scope: !15, file: !1, line: 20, type: !12)
!135 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "initial_data", scope: !15, file: !1, line: 20, type: !12)
!136 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "initial_lapse", scope: !15, file: !1, line: 20, type: !12)
!137 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "initial_shift", scope: !15, file: !1, line: 20, type: !12)
!138 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "mixed_slicing", scope: !15, file: !1, line: 20, type: !12)
!139 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "shift", scope: !15, file: !1, line: 20, type: !12)
!140 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "slicing", scope: !15, file: !1, line: 20, type: !12)
!141 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "slicing_verbose", scope: !15, file: !1, line: 20, type: !12)
!142 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "einstein_register_slicing", scope: !15, file: !1, line: 20, type: !143)
!143 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!144 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "rot_shift_att", scope: !15, file: !1, line: 20, type: !143)
!145 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "rot_shift_att_pow", scope: !15, file: !1, line: 20, type: !143)
!146 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "rotation_psipower", scope: !15, file: !1, line: 20, type: !143)
!147 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "use_conformal", scope: !15, file: !1, line: 20, type: !143)
!148 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "use_conformal_derivs", scope: !15, file: !1, line: 20, type: !143)
!149 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "use_mask", scope: !15, file: !1, line: 20, type: !143)
!150 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "dtfac", scope: !15, file: !1, line: 20, type: !128)
!151 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "gauge_speed", scope: !15, file: !1, line: 20, type: !128)
!152 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "wavecalc", scope: !15, file: !1, line: 20, type: !12)
!153 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "conformal_storage_all", scope: !15, file: !1, line: 20, type: !143)
!154 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "rsquared_in_sphm", scope: !15, file: !1, line: 20, type: !143)
!155 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "domain", scope: !15, file: !1, line: 20, type: !12)
!156 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "timestep_method", scope: !15, file: !1, line: 20, type: !12)
!157 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cctk_pdummy_pointer", scope: !15, file: !1, line: 20, type: !72)
!158 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "index", scope: !15, file: !1, line: 22, type: !7)
!159 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !15, file: !1, line: 22, type: !7)
!160 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "j", scope: !15, file: !1, line: 22, type: !7)
!161 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "k", scope: !15, file: !1, line: 22, type: !7)
!162 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "nx", scope: !15, file: !1, line: 22, type: !7)
!163 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ny", scope: !15, file: !1, line: 22, type: !7)
!164 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "nz", scope: !15, file: !1, line: 22, type: !7)
!165 = !{!166}
!166 = !DIGlobalVariable(name: "rcsid", scope: !0, file: !1, line: 10, type: !12, isLocal: true, isDefinition: true)
!167 = !{i32 2, !"Dwarf Version", i32 2}
!168 = !{i32 2, !"Debug Info Version", i32 700000003}
!169 = !{i32 1, !"PIC Level", i32 2}
!170 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!171 = !DILocation(line: 12, column: 1, scope: !9)
!172 = !DIExpression()
!173 = !DILocation(line: 16, column: 18, scope: !15)
!174 = !DILocation(line: 19, column: 3, scope: !15)
!175 = !{!176, !180, i64 16}
!176 = !{!"", !177, i64 0, !177, i64 4, !180, i64 8, !180, i64 16, !180, i64 24, !180, i64 32, !180, i64 40, !180, i64 48, !180, i64 56, !181, i64 64, !180, i64 72, !180, i64 80, !180, i64 88, !180, i64 96, !177, i64 104, !180, i64 112, !181, i64 120, !180, i64 128, !180, i64 136, !180, i64 144}
!177 = !{!"int", !178, i64 0}
!178 = !{!"omnipotent char", !179, i64 0}
!179 = !{!"Simple C/C++ TBAA"}
!180 = !{!"any pointer", !178, i64 0}
!181 = !{!"double", !178, i64 0}
!182 = !{!176, !180, i64 128}
!183 = !{!180, !180, i64 0}
!184 = !DILocation(line: 20, column: 3, scope: !15)
!185 = !{!186, !180, i64 88}
!186 = !{!"", !181, i64 0, !181, i64 8, !181, i64 16, !181, i64 24, !181, i64 32, !180, i64 40, !180, i64 48, !180, i64 56, !180, i64 64, !180, i64 72, !180, i64 80, !180, i64 88, !180, i64 96, !180, i64 104, !177, i64 112, !177, i64 116, !177, i64 120, !177, i64 124, !177, i64 128, !177, i64 132, !177, i64 136}
!187 = !{!186, !177, i64 128}
!188 = !DILocation(line: 24, column: 3, scope: !15)
!189 = !DILocation(line: 26, column: 8, scope: !15)
!190 = !{!177, !177, i64 0}
!191 = !DILocation(line: 22, column: 19, scope: !15)
!192 = !DILocation(line: 27, column: 8, scope: !15)
!193 = !DILocation(line: 22, column: 22, scope: !15)
!194 = !DILocation(line: 28, column: 8, scope: !15)
!195 = !DILocation(line: 22, column: 25, scope: !15)
!196 = !DILocation(line: 22, column: 17, scope: !15)
!197 = !DILocation(line: 30, column: 14, scope: !198)
!198 = distinct !DILexicalBlock(scope: !199, file: !1, line: 30, column: 3)
!199 = distinct !DILexicalBlock(scope: !15, file: !1, line: 30, column: 3)
!200 = !DILocation(line: 30, column: 3, scope: !199)
!201 = !DILocation(line: 32, column: 16, scope: !202)
!202 = distinct !DILexicalBlock(scope: !203, file: !1, line: 32, column: 5)
!203 = distinct !DILexicalBlock(scope: !204, file: !1, line: 32, column: 5)
!204 = distinct !DILexicalBlock(scope: !198, file: !1, line: 31, column: 3)
!205 = !DILocation(line: 34, column: 18, scope: !206)
!206 = distinct !DILexicalBlock(scope: !207, file: !1, line: 34, column: 7)
!207 = distinct !DILexicalBlock(scope: !208, file: !1, line: 34, column: 7)
!208 = distinct !DILexicalBlock(scope: !202, file: !1, line: 33, column: 5)
!209 = !DILocation(line: 65, column: 6, scope: !210)
!210 = distinct !DILexicalBlock(scope: !211, file: !1, line: 65, column: 6)
!211 = distinct !DILexicalBlock(scope: !206, file: !1, line: 35, column: 7)
!212 = !DILocation(line: 32, column: 5, scope: !203)
!213 = !DILocation(line: 34, column: 7, scope: !207)
!214 = !DILocation(line: 37, column: 17, scope: !211)
!215 = !DILocation(line: 22, column: 7, scope: !15)
!216 = !DILocation(line: 39, column: 9, scope: !211)
!217 = !DILocation(line: 39, column: 20, scope: !211)
!218 = !{!181, !181, i64 0}
!219 = !DILocation(line: 40, column: 9, scope: !211)
!220 = !DILocation(line: 40, column: 20, scope: !211)
!221 = !DILocation(line: 41, column: 9, scope: !211)
!222 = !DILocation(line: 41, column: 20, scope: !211)
!223 = !DILocation(line: 42, column: 9, scope: !211)
!224 = !DILocation(line: 42, column: 20, scope: !211)
!225 = !DILocation(line: 43, column: 9, scope: !211)
!226 = !DILocation(line: 43, column: 20, scope: !211)
!227 = !DILocation(line: 44, column: 9, scope: !211)
!228 = !DILocation(line: 44, column: 20, scope: !211)
!229 = !DILocation(line: 46, column: 9, scope: !211)
!230 = !DILocation(line: 46, column: 20, scope: !211)
!231 = !DILocation(line: 47, column: 9, scope: !211)
!232 = !DILocation(line: 47, column: 20, scope: !211)
!233 = !DILocation(line: 48, column: 9, scope: !211)
!234 = !DILocation(line: 48, column: 20, scope: !211)
!235 = !DILocation(line: 49, column: 9, scope: !211)
!236 = !DILocation(line: 49, column: 20, scope: !211)
!237 = !DILocation(line: 50, column: 9, scope: !211)
!238 = !DILocation(line: 50, column: 20, scope: !211)
!239 = !DILocation(line: 51, column: 9, scope: !211)
!240 = !DILocation(line: 51, column: 20, scope: !211)
!241 = !DILocation(line: 53, column: 13, scope: !242)
!242 = distinct !DILexicalBlock(scope: !211, file: !1, line: 53, column: 13)
!243 = !DILocation(line: 53, column: 38, scope: !242)
!244 = !DILocation(line: 53, column: 13, scope: !211)
!245 = !DILocation(line: 55, column: 17, scope: !246)
!246 = distinct !DILexicalBlock(scope: !242, file: !1, line: 54, column: 2)
!247 = !DILocation(line: 56, column: 4, scope: !246)
!248 = !DILocation(line: 56, column: 17, scope: !246)
!249 = !DILocation(line: 57, column: 4, scope: !246)
!250 = !DILocation(line: 57, column: 17, scope: !246)
!251 = !DILocation(line: 58, column: 4, scope: !246)
!252 = !DILocation(line: 58, column: 17, scope: !246)
!253 = !DILocation(line: 59, column: 2, scope: !246)
!254 = !DILocation(line: 62, column: 24, scope: !255)
!255 = distinct !DILexicalBlock(scope: !242, file: !1, line: 61, column: 9)
!256 = !DILocation(line: 65, column: 6, scope: !211)
!257 = !DILocation(line: 67, column: 21, scope: !258)
!258 = distinct !DILexicalBlock(scope: !210, file: !1, line: 66, column: 2)
!259 = !DILocation(line: 68, column: 4, scope: !258)
!260 = !DILocation(line: 68, column: 17, scope: !258)
!261 = !DILocation(line: 69, column: 4, scope: !258)
!262 = !DILocation(line: 69, column: 17, scope: !258)
!263 = !DILocation(line: 70, column: 4, scope: !258)
!264 = !DILocation(line: 70, column: 17, scope: !258)
!265 = !DILocation(line: 71, column: 4, scope: !258)
!266 = !DILocation(line: 71, column: 17, scope: !258)
!267 = !DILocation(line: 72, column: 4, scope: !258)
!268 = !DILocation(line: 72, column: 17, scope: !258)
!269 = !DILocation(line: 73, column: 4, scope: !258)
!270 = !DILocation(line: 73, column: 17, scope: !258)
!271 = !DILocation(line: 74, column: 4, scope: !258)
!272 = !DILocation(line: 74, column: 17, scope: !258)
!273 = !DILocation(line: 75, column: 4, scope: !258)
!274 = !DILocation(line: 75, column: 17, scope: !258)
!275 = !DILocation(line: 76, column: 4, scope: !258)
!276 = !DILocation(line: 76, column: 17, scope: !258)
!277 = !DILocation(line: 77, column: 4, scope: !258)
!278 = !DILocation(line: 77, column: 17, scope: !258)
!279 = !DILocation(line: 78, column: 2, scope: !258)
!280 = !DILocation(line: 81, column: 21, scope: !281)
!281 = distinct !DILexicalBlock(scope: !210, file: !1, line: 80, column: 2)
!282 = !DILocation(line: 34, column: 25, scope: !206)
!283 = !DILocation(line: 22, column: 13, scope: !15)
!284 = !DILocation(line: 32, column: 23, scope: !202)
!285 = !DILocation(line: 22, column: 15, scope: !15)
!286 = !DILocation(line: 30, column: 21, scope: !198)
!287 = !DILocation(line: 90, column: 46, scope: !15)
