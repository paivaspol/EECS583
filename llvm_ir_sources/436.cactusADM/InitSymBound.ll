; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/Einstein/InitSymBound.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

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
@.str53 = private unnamed_addr constant [98 x i8] c"$Header: /cactus/CactusEinstein/Einstein/src/InitSymBound.c,v 1.9 2002/01/04 10:01:40 allen Exp $\00", align 1

; Function Attrs: nounwind optsize readnone ssp uwtable
define i8* @CCTKi_version_CactusEinstein_Einstein_InitSymBound_c() #0 {
  ret i8* getelementptr inbounds ([98 x i8]* @.str53, i64 0, i64 0), !dbg !138
}

; Function Attrs: nounwind optsize ssp uwtable
define void @Einstein_InitSymBound(%struct.cGH* %cctkGH) #1 {
  %sym = alloca [3 x i32], align 4
  tail call void @llvm.dbg.value(metadata %struct.cGH* %cctkGH, i64 0, metadata !53, metadata !139), !dbg !140
  %1 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([15 x i8]* @.str, i64 0, i64 0)) #4, !dbg !141
  %2 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str1, i64 0, i64 0)) #4, !dbg !141
  %3 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str2, i64 0, i64 0)) #4, !dbg !141
  %4 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str3, i64 0, i64 0)) #4, !dbg !141
  %5 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str4, i64 0, i64 0)) #4, !dbg !141
  %6 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str5, i64 0, i64 0)) #4, !dbg !141
  %7 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str6, i64 0, i64 0)) #4, !dbg !141
  %8 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str7, i64 0, i64 0)) #4, !dbg !141
  %9 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str8, i64 0, i64 0)) #4, !dbg !141
  %10 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str9, i64 0, i64 0)) #4, !dbg !141
  %11 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str10, i64 0, i64 0)) #4, !dbg !141
  %12 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str11, i64 0, i64 0)) #4, !dbg !141
  %13 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str12, i64 0, i64 0)) #4, !dbg !141
  %14 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str13, i64 0, i64 0)) #4, !dbg !141
  %15 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([32 x i8]* @.str14, i64 0, i64 0)) #4, !dbg !141
  %16 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str15, i64 0, i64 0)) #4, !dbg !141
  %17 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([16 x i8]* @.str16, i64 0, i64 0)) #4, !dbg !141
  %18 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([16 x i8]* @.str17, i64 0, i64 0)) #4, !dbg !141
  %19 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([16 x i8]* @.str18, i64 0, i64 0)) #4, !dbg !141
  %20 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([16 x i8]* @.str19, i64 0, i64 0)) #4, !dbg !141
  %21 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([16 x i8]* @.str20, i64 0, i64 0)) #4, !dbg !141
  %22 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([16 x i8]* @.str21, i64 0, i64 0)) #4, !dbg !141
  %23 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([26 x i8]* @.str22, i64 0, i64 0)) #4, !dbg !141
  %24 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([23 x i8]* @.str23, i64 0, i64 0)) #4, !dbg !141
  %25 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([25 x i8]* @.str24, i64 0, i64 0)) #4, !dbg !141
  %26 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([16 x i8]* @.str25, i64 0, i64 0)) #4, !dbg !141
  %27 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str26, i64 0, i64 0)) #4, !dbg !141
  %28 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str27, i64 0, i64 0)) #4, !dbg !141
  %29 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str28, i64 0, i64 0)) #4, !dbg !141
  %30 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str29, i64 0, i64 0)) #4, !dbg !141
  %31 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str30, i64 0, i64 0)) #4, !dbg !141
  %32 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str31, i64 0, i64 0)) #4, !dbg !141
  %33 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str32, i64 0, i64 0)) #4, !dbg !141
  %34 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str33, i64 0, i64 0)) #4, !dbg !141
  %35 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str34, i64 0, i64 0)) #4, !dbg !141
  %36 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str35, i64 0, i64 0)) #4, !dbg !141
  %37 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str36, i64 0, i64 0)) #4, !dbg !141
  %38 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str37, i64 0, i64 0)) #4, !dbg !141
  %39 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str38, i64 0, i64 0)) #4, !dbg !141
  %40 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([15 x i8]* @.str39, i64 0, i64 0)) #4, !dbg !141
  %41 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([16 x i8]* @.str40, i64 0, i64 0)) #4, !dbg !141
  %42 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([16 x i8]* @.str41, i64 0, i64 0)) #4, !dbg !141
  %43 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([16 x i8]* @.str42, i64 0, i64 0)) #4, !dbg !141
  %44 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([15 x i8]* @.str43, i64 0, i64 0)) #4, !dbg !141
  %45 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([16 x i8]* @.str44, i64 0, i64 0)) #4, !dbg !141
  %46 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([16 x i8]* @.str45, i64 0, i64 0)) #4, !dbg !141
  %47 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([15 x i8]* @.str46, i64 0, i64 0)) #4, !dbg !141
  %48 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([16 x i8]* @.str47, i64 0, i64 0)) #4, !dbg !141
  %49 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([8 x i8]* @.str48, i64 0, i64 0)) #4, !dbg !141
  %50 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([22 x i8]* @.str49, i64 0, i64 0)) #4, !dbg !141
  %51 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([8 x i8]* @.str50, i64 0, i64 0)) #4, !dbg !141
  %52 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([8 x i8]* @.str51, i64 0, i64 0)) #4, !dbg !141
  %53 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([8 x i8]* @.str52, i64 0, i64 0)) #4, !dbg !141
  tail call void @llvm.dbg.declare(metadata [3 x i32]* %sym, metadata !128, metadata !139), !dbg !142
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !127, metadata !139), !dbg !143
  %54 = getelementptr inbounds [3 x i32]* %sym, i64 0, i64 0, !dbg !144
  store i32 1, i32* %54, align 4, !dbg !145, !tbaa !146
  %55 = getelementptr inbounds [3 x i32]* %sym, i64 0, i64 1, !dbg !150
  store i32 1, i32* %55, align 4, !dbg !151, !tbaa !146
  %56 = getelementptr inbounds [3 x i32]* %sym, i64 0, i64 2, !dbg !152
  store i32 1, i32* %56, align 4, !dbg !153, !tbaa !146
  %57 = call i32 @SetCartSymVN(%struct.cGH* %cctkGH, i32* %54, i8* getelementptr inbounds ([14 x i8]* @.str26, i64 0, i64 0)) #4, !dbg !154
  %58 = call i32 @SetCartSymVN(%struct.cGH* %cctkGH, i32* %54, i8* getelementptr inbounds ([14 x i8]* @.str29, i64 0, i64 0)) #4, !dbg !155
  %59 = call i32 @SetCartSymVN(%struct.cGH* %cctkGH, i32* %54, i8* getelementptr inbounds ([14 x i8]* @.str31, i64 0, i64 0)) #4, !dbg !156
  store i32 -1, i32* %54, align 4, !dbg !157, !tbaa !146
  store i32 -1, i32* %55, align 4, !dbg !158, !tbaa !146
  store i32 1, i32* %56, align 4, !dbg !159, !tbaa !146
  %60 = call i32 @SetCartSymVN(%struct.cGH* %cctkGH, i32* %54, i8* getelementptr inbounds ([14 x i8]* @.str27, i64 0, i64 0)) #4, !dbg !160
  store i32 -1, i32* %54, align 4, !dbg !161, !tbaa !146
  store i32 1, i32* %55, align 4, !dbg !162, !tbaa !146
  store i32 -1, i32* %56, align 4, !dbg !163, !tbaa !146
  %61 = call i32 @SetCartSymVN(%struct.cGH* %cctkGH, i32* %54, i8* getelementptr inbounds ([14 x i8]* @.str28, i64 0, i64 0)) #4, !dbg !164
  store i32 1, i32* %54, align 4, !dbg !165, !tbaa !146
  store i32 -1, i32* %55, align 4, !dbg !166, !tbaa !146
  store i32 -1, i32* %56, align 4, !dbg !167, !tbaa !146
  %62 = call i32 @SetCartSymVN(%struct.cGH* %cctkGH, i32* %54, i8* getelementptr inbounds ([14 x i8]* @.str30, i64 0, i64 0)) #4, !dbg !168
  store i32 1, i32* %54, align 4, !dbg !169, !tbaa !146
  store i32 1, i32* %55, align 4, !dbg !170, !tbaa !146
  store i32 1, i32* %56, align 4, !dbg !171, !tbaa !146
  %63 = call i32 @SetCartSymVN(%struct.cGH* %cctkGH, i32* %54, i8* getelementptr inbounds ([14 x i8]* @.str32, i64 0, i64 0)) #4, !dbg !172
  %64 = call i32 @SetCartSymVN(%struct.cGH* %cctkGH, i32* %54, i8* getelementptr inbounds ([14 x i8]* @.str35, i64 0, i64 0)) #4, !dbg !173
  %65 = call i32 @SetCartSymVN(%struct.cGH* %cctkGH, i32* %54, i8* getelementptr inbounds ([14 x i8]* @.str37, i64 0, i64 0)) #4, !dbg !174
  store i32 -1, i32* %54, align 4, !dbg !175, !tbaa !146
  store i32 -1, i32* %55, align 4, !dbg !176, !tbaa !146
  store i32 1, i32* %56, align 4, !dbg !177, !tbaa !146
  %66 = call i32 @SetCartSymVN(%struct.cGH* %cctkGH, i32* %54, i8* getelementptr inbounds ([14 x i8]* @.str33, i64 0, i64 0)) #4, !dbg !178
  store i32 -1, i32* %54, align 4, !dbg !179, !tbaa !146
  store i32 1, i32* %55, align 4, !dbg !180, !tbaa !146
  store i32 -1, i32* %56, align 4, !dbg !181, !tbaa !146
  %67 = call i32 @SetCartSymVN(%struct.cGH* %cctkGH, i32* %54, i8* getelementptr inbounds ([14 x i8]* @.str34, i64 0, i64 0)) #4, !dbg !182
  store i32 1, i32* %54, align 4, !dbg !183, !tbaa !146
  store i32 -1, i32* %55, align 4, !dbg !184, !tbaa !146
  store i32 -1, i32* %56, align 4, !dbg !185, !tbaa !146
  %68 = call i32 @SetCartSymVN(%struct.cGH* %cctkGH, i32* %54, i8* getelementptr inbounds ([14 x i8]* @.str36, i64 0, i64 0)) #4, !dbg !186
  store i32 1, i32* %54, align 4, !dbg !187, !tbaa !146
  store i32 1, i32* %55, align 4, !dbg !188, !tbaa !146
  store i32 1, i32* %56, align 4, !dbg !189, !tbaa !146
  %69 = call i32 @SetCartSymVN(%struct.cGH* %cctkGH, i32* %54, i8* getelementptr inbounds ([14 x i8]* @.str15, i64 0, i64 0)) #4, !dbg !190
  store i32 -1, i32* %54, align 4, !dbg !191, !tbaa !146
  store i32 1, i32* %55, align 4, !dbg !192, !tbaa !146
  store i32 1, i32* %56, align 4, !dbg !193, !tbaa !146
  %70 = call i32 @SetCartSymVN(%struct.cGH* %cctkGH, i32* %54, i8* getelementptr inbounds ([16 x i8]* @.str16, i64 0, i64 0)) #4, !dbg !194
  store i32 1, i32* %54, align 4, !dbg !195, !tbaa !146
  store i32 -1, i32* %55, align 4, !dbg !196, !tbaa !146
  store i32 1, i32* %56, align 4, !dbg !197, !tbaa !146
  %71 = call i32 @SetCartSymVN(%struct.cGH* %cctkGH, i32* %54, i8* getelementptr inbounds ([16 x i8]* @.str17, i64 0, i64 0)) #4, !dbg !198
  store i32 1, i32* %54, align 4, !dbg !199, !tbaa !146
  store i32 1, i32* %55, align 4, !dbg !200, !tbaa !146
  store i32 -1, i32* %56, align 4, !dbg !201, !tbaa !146
  %72 = call i32 @SetCartSymVN(%struct.cGH* %cctkGH, i32* %54, i8* getelementptr inbounds ([16 x i8]* @.str18, i64 0, i64 0)) #4, !dbg !202
  store i32 1, i32* %54, align 4, !dbg !203, !tbaa !146
  store i32 1, i32* %55, align 4, !dbg !204, !tbaa !146
  store i32 1, i32* %56, align 4, !dbg !205, !tbaa !146
  %73 = call i32 @SetCartSymVN(%struct.cGH* %cctkGH, i32* %54, i8* getelementptr inbounds ([16 x i8]* @.str25, i64 0, i64 0)) #4, !dbg !206
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !71, metadata !139), !dbg !141
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !71, metadata !139), !dbg !141
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !71, metadata !139), !dbg !141
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !71, metadata !139), !dbg !141
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !71, metadata !139), !dbg !141
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !71, metadata !139), !dbg !141
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !71, metadata !139), !dbg !141
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !71, metadata !139), !dbg !141
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !71, metadata !139), !dbg !141
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !71, metadata !139), !dbg !141
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !71, metadata !139), !dbg !141
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !71, metadata !139), !dbg !141
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !71, metadata !139), !dbg !141
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !71, metadata !139), !dbg !141
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !71, metadata !139), !dbg !141
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !71, metadata !139), !dbg !141
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !71, metadata !139), !dbg !141
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !71, metadata !139), !dbg !141
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !71, metadata !139), !dbg !141
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !71, metadata !139), !dbg !141
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !71, metadata !139), !dbg !141
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !71, metadata !139), !dbg !141
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !71, metadata !139), !dbg !141
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !71, metadata !139), !dbg !141
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !71, metadata !139), !dbg !141
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !71, metadata !139), !dbg !141
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !71, metadata !139), !dbg !141
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !71, metadata !139), !dbg !141
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !71, metadata !139), !dbg !141
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !71, metadata !139), !dbg !141
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !71, metadata !139), !dbg !141
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !71, metadata !139), !dbg !141
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !71, metadata !139), !dbg !141
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !71, metadata !139), !dbg !141
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !71, metadata !139), !dbg !141
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !71, metadata !139), !dbg !141
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !71, metadata !139), !dbg !141
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !71, metadata !139), !dbg !141
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !71, metadata !139), !dbg !141
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !71, metadata !139), !dbg !141
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !71, metadata !139), !dbg !141
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !71, metadata !139), !dbg !141
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !71, metadata !139), !dbg !141
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !71, metadata !139), !dbg !141
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !71, metadata !139), !dbg !141
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !71, metadata !139), !dbg !141
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !71, metadata !139), !dbg !141
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !71, metadata !139), !dbg !141
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !71, metadata !139), !dbg !141
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !71, metadata !139), !dbg !141
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !71, metadata !139), !dbg !141
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !71, metadata !139), !dbg !141
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !71, metadata !139), !dbg !141
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !71, metadata !139), !dbg !141
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !71, metadata !139), !dbg !141
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !71, metadata !139), !dbg !141
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !71, metadata !139), !dbg !141
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !71, metadata !139), !dbg !141
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !71, metadata !139), !dbg !141
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !71, metadata !139), !dbg !141
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !71, metadata !139), !dbg !141
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !71, metadata !139), !dbg !141
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !71, metadata !139), !dbg !141
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !71, metadata !139), !dbg !141
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !71, metadata !139), !dbg !141
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !71, metadata !139), !dbg !141
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !71, metadata !139), !dbg !141
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !71, metadata !139), !dbg !141
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !71, metadata !139), !dbg !141
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !71, metadata !139), !dbg !141
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !71, metadata !139), !dbg !141
  ret void, !dbg !207
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: optsize
declare i32 @CCTK_VarIndex(i8*) #3

; Function Attrs: optsize
declare i32 @SetCartSymVN(%struct.cGH*, i32*, i8*) #3

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #2

attributes #0 = { nounwind optsize readnone ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone }
attributes #3 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!134, !135, !136}
!llvm.ident = !{!137}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !3, subprograms: !8, globals: !132, imports: !2)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/Einstein/InitSymBound.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{}
!3 = !{!4, !6}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64, align: 64)
!5 = !DIBasicType(name: "double", size: 64, align: 64, encoding: DW_ATE_float)
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64, align: 64)
!7 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!8 = !{!9, !15}
!9 = !DISubprogram(name: "CCTKi_version_CactusEinstein_Einstein_InitSymBound_c", scope: !1, file: !1, line: 20, type: !10, isLocal: false, isDefinition: true, scopeLine: 20, flags: DIFlagPrototyped, isOptimized: true, function: i8* ()* @CCTKi_version_CactusEinstein_Einstein_InitSymBound_c, variables: !2)
!10 = !DISubroutineType(types: !11)
!11 = !{!12}
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64, align: 64)
!13 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !14)
!14 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!15 = !DISubprogram(name: "Einstein_InitSymBound", scope: !1, file: !1, line: 39, type: !16, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.cGH*)* @Einstein_InitSymBound, variables: !52)
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
!52 = !{!53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128}
!53 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "cctkGH", arg: 1, scope: !15, file: !1, line: 39, type: !18)
!54 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cctk_dim", scope: !15, file: !1, line: 42, type: !7)
!55 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cctk_gsh", scope: !15, file: !1, line: 42, type: !6)
!56 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cctk_lsh", scope: !15, file: !1, line: 42, type: !6)
!57 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cctk_lbnd", scope: !15, file: !1, line: 42, type: !6)
!58 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cctk_ubnd", scope: !15, file: !1, line: 42, type: !6)
!59 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cctk_lssh", scope: !15, file: !1, line: 42, type: !6)
!60 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cctk_from", scope: !15, file: !1, line: 42, type: !6)
!61 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cctk_to", scope: !15, file: !1, line: 42, type: !6)
!62 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cctk_bbox", scope: !15, file: !1, line: 42, type: !6)
!63 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cctk_delta_time", scope: !15, file: !1, line: 42, type: !5)
!64 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cctk_time", scope: !15, file: !1, line: 42, type: !5)
!65 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cctk_delta_space", scope: !15, file: !1, line: 42, type: !4)
!66 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cctk_origin_space", scope: !15, file: !1, line: 42, type: !4)
!67 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cctk_levfac", scope: !15, file: !1, line: 42, type: !6)
!68 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cctk_convlevel", scope: !15, file: !1, line: 42, type: !7)
!69 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cctk_nghostzones", scope: !15, file: !1, line: 42, type: !6)
!70 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cctk_iteration", scope: !15, file: !1, line: 42, type: !7)
!71 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cctk_dummy_pointer", scope: !15, file: !1, line: 42, type: !72)
!72 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !73, size: 64, align: 64)
!73 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!74 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "detg", scope: !15, file: !1, line: 42, type: !4)
!75 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "gpp", scope: !15, file: !1, line: 42, type: !4)
!76 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "gqp", scope: !15, file: !1, line: 42, type: !4)
!77 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "gqq", scope: !15, file: !1, line: 42, type: !4)
!78 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "grp", scope: !15, file: !1, line: 42, type: !4)
!79 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "grq", scope: !15, file: !1, line: 42, type: !4)
!80 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "grr", scope: !15, file: !1, line: 42, type: !4)
!81 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "kpp", scope: !15, file: !1, line: 42, type: !4)
!82 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "kqp", scope: !15, file: !1, line: 42, type: !4)
!83 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "kqq", scope: !15, file: !1, line: 42, type: !4)
!84 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "krp", scope: !15, file: !1, line: 42, type: !4)
!85 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "krq", scope: !15, file: !1, line: 42, type: !4)
!86 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "krr", scope: !15, file: !1, line: 42, type: !4)
!87 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "trK", scope: !15, file: !1, line: 42, type: !4)
!88 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "active_slicing_handle", scope: !15, file: !1, line: 42, type: !6)
!89 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "alp", scope: !15, file: !1, line: 42, type: !4)
!90 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "betax", scope: !15, file: !1, line: 42, type: !4)
!91 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "betay", scope: !15, file: !1, line: 42, type: !4)
!92 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "betaz", scope: !15, file: !1, line: 42, type: !4)
!93 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "coarse_dx", scope: !15, file: !1, line: 42, type: !4)
!94 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "coarse_dy", scope: !15, file: !1, line: 42, type: !4)
!95 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "coarse_dz", scope: !15, file: !1, line: 42, type: !4)
!96 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "conformal_state", scope: !15, file: !1, line: 42, type: !6)
!97 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "courant_min_time", scope: !15, file: !1, line: 42, type: !4)
!98 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "courant_wave_speed", scope: !15, file: !1, line: 42, type: !4)
!99 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "emask", scope: !15, file: !1, line: 42, type: !4)
!100 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "gxx", scope: !15, file: !1, line: 42, type: !4)
!101 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "gxy", scope: !15, file: !1, line: 42, type: !4)
!102 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "gxz", scope: !15, file: !1, line: 42, type: !4)
!103 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "gyy", scope: !15, file: !1, line: 42, type: !4)
!104 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "gyz", scope: !15, file: !1, line: 42, type: !4)
!105 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "gzz", scope: !15, file: !1, line: 42, type: !4)
!106 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "kxx", scope: !15, file: !1, line: 42, type: !4)
!107 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "kxy", scope: !15, file: !1, line: 42, type: !4)
!108 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "kxz", scope: !15, file: !1, line: 42, type: !4)
!109 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "kyy", scope: !15, file: !1, line: 42, type: !4)
!110 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "kyz", scope: !15, file: !1, line: 42, type: !4)
!111 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "kzz", scope: !15, file: !1, line: 42, type: !4)
!112 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "psi", scope: !15, file: !1, line: 42, type: !4)
!113 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "psix", scope: !15, file: !1, line: 42, type: !4)
!114 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "psixx", scope: !15, file: !1, line: 42, type: !4)
!115 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "psixy", scope: !15, file: !1, line: 42, type: !4)
!116 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "psixz", scope: !15, file: !1, line: 42, type: !4)
!117 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "psiy", scope: !15, file: !1, line: 42, type: !4)
!118 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "psiyy", scope: !15, file: !1, line: 42, type: !4)
!119 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "psiyz", scope: !15, file: !1, line: 42, type: !4)
!120 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "psiz", scope: !15, file: !1, line: 42, type: !4)
!121 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "psizz", scope: !15, file: !1, line: 42, type: !4)
!122 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "r", scope: !15, file: !1, line: 42, type: !4)
!123 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "shift_state", scope: !15, file: !1, line: 42, type: !6)
!124 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "x", scope: !15, file: !1, line: 42, type: !4)
!125 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "y", scope: !15, file: !1, line: 42, type: !4)
!126 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "z", scope: !15, file: !1, line: 42, type: !4)
!127 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "one", scope: !15, file: !1, line: 44, type: !7)
!128 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "sym", scope: !15, file: !1, line: 45, type: !129)
!129 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 96, align: 32, elements: !130)
!130 = !{!131}
!131 = !DISubrange(count: 3)
!132 = !{!133}
!133 = !DIGlobalVariable(name: "rcsid", scope: !0, file: !1, line: 18, type: !12, isLocal: true, isDefinition: true)
!134 = !{i32 2, !"Dwarf Version", i32 2}
!135 = !{i32 2, !"Debug Info Version", i32 700000003}
!136 = !{i32 1, !"PIC Level", i32 2}
!137 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!138 = !DILocation(line: 20, column: 1, scope: !9)
!139 = !DIExpression()
!140 = !DILocation(line: 39, column: 28, scope: !15)
!141 = !DILocation(line: 42, column: 3, scope: !15)
!142 = !DILocation(line: 45, column: 7, scope: !15)
!143 = !DILocation(line: 44, column: 7, scope: !15)
!144 = !DILocation(line: 49, column: 3, scope: !15)
!145 = !DILocation(line: 49, column: 10, scope: !15)
!146 = !{!147, !147, i64 0}
!147 = !{!"int", !148, i64 0}
!148 = !{!"omnipotent char", !149, i64 0}
!149 = !{!"Simple C/C++ TBAA"}
!150 = !DILocation(line: 50, column: 3, scope: !15)
!151 = !DILocation(line: 50, column: 10, scope: !15)
!152 = !DILocation(line: 51, column: 3, scope: !15)
!153 = !DILocation(line: 51, column: 10, scope: !15)
!154 = !DILocation(line: 52, column: 3, scope: !15)
!155 = !DILocation(line: 53, column: 3, scope: !15)
!156 = !DILocation(line: 54, column: 3, scope: !15)
!157 = !DILocation(line: 55, column: 10, scope: !15)
!158 = !DILocation(line: 56, column: 10, scope: !15)
!159 = !DILocation(line: 57, column: 10, scope: !15)
!160 = !DILocation(line: 58, column: 3, scope: !15)
!161 = !DILocation(line: 59, column: 10, scope: !15)
!162 = !DILocation(line: 60, column: 10, scope: !15)
!163 = !DILocation(line: 61, column: 10, scope: !15)
!164 = !DILocation(line: 62, column: 3, scope: !15)
!165 = !DILocation(line: 63, column: 10, scope: !15)
!166 = !DILocation(line: 64, column: 10, scope: !15)
!167 = !DILocation(line: 65, column: 10, scope: !15)
!168 = !DILocation(line: 66, column: 3, scope: !15)
!169 = !DILocation(line: 69, column: 10, scope: !15)
!170 = !DILocation(line: 70, column: 10, scope: !15)
!171 = !DILocation(line: 71, column: 10, scope: !15)
!172 = !DILocation(line: 72, column: 3, scope: !15)
!173 = !DILocation(line: 73, column: 3, scope: !15)
!174 = !DILocation(line: 74, column: 3, scope: !15)
!175 = !DILocation(line: 75, column: 10, scope: !15)
!176 = !DILocation(line: 76, column: 10, scope: !15)
!177 = !DILocation(line: 77, column: 10, scope: !15)
!178 = !DILocation(line: 78, column: 3, scope: !15)
!179 = !DILocation(line: 79, column: 10, scope: !15)
!180 = !DILocation(line: 80, column: 10, scope: !15)
!181 = !DILocation(line: 81, column: 10, scope: !15)
!182 = !DILocation(line: 82, column: 3, scope: !15)
!183 = !DILocation(line: 83, column: 10, scope: !15)
!184 = !DILocation(line: 84, column: 10, scope: !15)
!185 = !DILocation(line: 85, column: 10, scope: !15)
!186 = !DILocation(line: 86, column: 3, scope: !15)
!187 = !DILocation(line: 88, column: 10, scope: !15)
!188 = !DILocation(line: 89, column: 10, scope: !15)
!189 = !DILocation(line: 90, column: 10, scope: !15)
!190 = !DILocation(line: 91, column: 3, scope: !15)
!191 = !DILocation(line: 93, column: 10, scope: !15)
!192 = !DILocation(line: 94, column: 10, scope: !15)
!193 = !DILocation(line: 95, column: 10, scope: !15)
!194 = !DILocation(line: 96, column: 3, scope: !15)
!195 = !DILocation(line: 97, column: 10, scope: !15)
!196 = !DILocation(line: 98, column: 10, scope: !15)
!197 = !DILocation(line: 99, column: 10, scope: !15)
!198 = !DILocation(line: 100, column: 3, scope: !15)
!199 = !DILocation(line: 101, column: 10, scope: !15)
!200 = !DILocation(line: 102, column: 10, scope: !15)
!201 = !DILocation(line: 103, column: 10, scope: !15)
!202 = !DILocation(line: 104, column: 3, scope: !15)
!203 = !DILocation(line: 106, column: 10, scope: !15)
!204 = !DILocation(line: 107, column: 10, scope: !15)
!205 = !DILocation(line: 108, column: 10, scope: !15)
!206 = !DILocation(line: 109, column: 3, scope: !15)
!207 = !DILocation(line: 111, column: 25, scope: !15)
